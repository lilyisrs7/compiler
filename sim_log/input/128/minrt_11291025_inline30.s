l.0:	# 8388608.000000
	.word	8388608.000000
l.1:	# 0.000000
	.word	0.000000
l.2:	# 1.000000
	.word	1.000000
l.13545:	# 0.785398
	.word	0.785398
l.13543:	# 1.570796
	.word	1.570796
l.13541:	# 6.283185
	.word	6.283185
l.13539:	# 3.141593
	.word	3.141593
l.13454:	# 128.000000
	.word	128.000000
l.13094:	# 0.900000
	.word	0.900000
l.12525:	# 150.000000
	.word	150.000000
l.12520:	# -150.000000
	.word	-150.000000
l.12450:	# 0.100000
	.word	0.100000
l.12418:	# -2.000000
	.word	-2.000000
l.12377:	# 0.003906
	.word	0.003906
l.12266:	# 100000000.000000
	.word	100000000.000000
l.12254:	# 1000000000.000000
	.word	1000000000.000000
l.12211:	# 20.000000
	.word	20.000000
l.12208:	# 0.050000
	.word	0.050000
l.12183:	# 0.250000
	.word	0.250000
l.12162:	# 10.000000
	.word	10.000000
l.12145:	# 0.300000
	.word	0.300000
l.12143:	# 255.000000
	.word	255.000000
l.12137:	# 0.150000
	.word	0.150000
l.12118:	# 3.141593
	.word	3.141593
l.12116:	# 30.000000
	.word	30.000000
l.12113:	# 15.000000
	.word	15.000000
l.12111:	# 0.000100
	.word	0.000100
l.11768:	# -0.100000
	.word	-0.100000
l.11718:	# 0.010000
	.word	0.010000
l.11716:	# -0.200000
	.word	-0.200000
l.10825:	# 2.000000
	.word	2.000000
l.10655:	# -200.000000
	.word	-200.000000
l.10650:	# 200.000000
	.word	200.000000
l.10621:	# 0.017453
	.word	0.017453
l.10483:	# -1.000000
	.word	-1.000000
l.10468:	# 0.089764
	.word	0.089764
l.10466:	# 0.111111
	.word	0.111111
l.10464:	# 0.142857
	.word	0.142857
l.10462:	# 0.200000
	.word	0.200000
l.10460:	# 0.333333
	.word	0.333333
l.10458:	# 0.437500
	.word	0.437500
l.10455:	# 2.437500
	.word	2.437500
l.10403:	# 0.001370
	.word	0.001370
l.10401:	# 0.041664
	.word	0.041664
l.10399:	# 0.500000
	.word	0.500000
l.10396:	# 0.000196
	.word	0.000196
l.10394:	# 0.008333
	.word	0.008333
l.10392:	# 0.166667
	.word	0.166667
l.10376:	# 1.000000
	.word	1.000000
l.10373:	# 0.000000
	.word	0.000000
int_of_float.2487:
	lui		x4, %hi(l.10373)	# 10
	ori		x4, x0, %lo(l.10373)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.16534	# 10
	lui		x4, %hi(l.10376)	# 11
	ori		x4, x0, %lo(l.10376)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.16535	# 11
	lui		x4, %hi(l.10376)	# 11
	ori		x4, x0, %lo(l.10376)	# 11
	flw		f1, 0(x4)	# 11
	fsub	f0, f0, f1	# 11
	lui		x4, %hi(l.10373)	# 10
	ori		x4, x0, %lo(l.10373)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.16537	# 10
	lui		x4, %hi(l.10376)	# 11
	ori		x4, x0, %lo(l.10376)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.16539	# 11
	lui		x4, %hi(l.10376)	# 11
	ori		x4, x0, %lo(l.10376)	# 11
	flw		f1, 0(x4)	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, 0(x2)	# 11
	addi	x2, x2, -4	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 4	# 11
	lw		x1, 0(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.16538	# 11
fle_else.16539:
	addi	x4, x0, 0	# 11
fle_cont.16538:
	jal		x0, fle_cont.16536	# 10
fle_else.16537:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, 0(x2)	# 12
	addi	x2, x2, -4	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 4	# 12
	lw		x1, 0(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.16536:
	addi	x4, x4, 1	# 11
	jalr	x0, x1, 0	# 11
fle_else.16535:
	addi	x4, x0, 0	# 11
	jalr	x0, x1, 0	# 11
fle_else.16534:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	lui		x4, %hi(l.10373)	# 10
	ori		x4, x0, %lo(l.10373)	# 10
	flw		f1, 0(x4)	# 10
	fle		x31, f1, f0	# 10
	beq		x31, x0, fle_else.16541	# 10
	lui		x4, %hi(l.10376)	# 11
	ori		x4, x0, %lo(l.10376)	# 11
	flw		f1, 0(x4)	# 11
	fle		x31, f1, f0	# 11
	beq		x31, x0, fle_else.16543	# 11
	lui		x4, %hi(l.10376)	# 11
	ori		x4, x0, %lo(l.10376)	# 11
	flw		f1, 0(x4)	# 11
	fsub	f0, f0, f1	# 11
	sw		x1, 0(x2)	# 11
	addi	x2, x2, -4	# 11
	jal		x1, int_of_float.2487	# 11
	addi	x2, x2, 4	# 11
	lw		x1, 0(x2)	# 11
	addi	x4, x4, 1	# 11
	jal		x0, fle_cont.16542	# 11
fle_else.16543:
	addi	x4, x0, 0	# 11
fle_cont.16542:
	jal		x0, fle_cont.16540	# 10
fle_else.16541:
	fsub	x31, x31, x31	# 12
	fsub	f0, x31, f0	# 12
	sw		x1, 0(x2)	# 12
	addi	x2, x2, -4	# 12
	jal		x1, int_of_float.2487	# 12
	addi	x2, x2, 4	# 12
	lw		x1, 0(x2)	# 12
	sub		x4, x0, x4	# 12
fle_cont.16540:
	sub		x4, x0, x4	# 12
	jalr	x0, x1, 0	# 12
float_of_int.2489:
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.16544	# 14
	sub		x4, x0, x4	# 16
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.16546	# 14
	sub		x4, x0, x4	# 16
	sw		x1, 0(x2)	# 16
	addi	x2, x2, -4	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 4	# 16
	lw		x1, 0(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.16545	# 14
ble.16546:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.16548	# 15
	lui		x4, %hi(l.10373)	# 15
	ori		x4, x0, %lo(l.10373)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.16547	# 15
ble.16548:
	ori		x5, x0, 1	# 15
	sub		x4, x4, x5	# 15
	sw		x1, 0(x2)	# 15
	addi	x2, x2, -4	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 4	# 15
	lw		x1, 0(x2)	# 15
	lui		x4, %hi(l.10376)	# 15
	ori		x4, x0, %lo(l.10376)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.16547:
ble_cont.16545:
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jalr	x0, x1, 0	# 16
ble.16544:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.16549	# 15
	lui		x4, %hi(l.10373)	# 15
	ori		x4, x0, %lo(l.10373)	# 15
	flw		f0, 0(x4)	# 15
	jalr	x0, x1, 0	# 15
ble.16549:
	ori		x5, x0, 1	# 15
	sub		x4, x4, x5	# 15
	addi	x5, x0, 0	# 14
	ble		x5, x4, ble.16551	# 14
	sub		x4, x0, x4	# 16
	sw		x1, 0(x2)	# 16
	addi	x2, x2, -4	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 4	# 16
	lw		x1, 0(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.16550	# 14
ble.16551:
	ori		x5, x0, 1	# 15
	ble		x5, x4, ble.16553	# 15
	lui		x4, %hi(l.10373)	# 15
	ori		x4, x0, %lo(l.10373)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.16552	# 15
ble.16553:
	ori		x5, x0, 1	# 15
	sub		x4, x4, x5	# 15
	sw		x1, 0(x2)	# 15
	addi	x2, x2, -4	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 4	# 15
	lw		x1, 0(x2)	# 15
	lui		x4, %hi(l.10376)	# 15
	ori		x4, x0, %lo(l.10376)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.16552:
ble_cont.16550:
	lui		x4, %hi(l.10376)	# 15
	ori		x4, x0, %lo(l.10376)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
	jalr	x0, x1, 0	# 15
sin.2501:
	flw		f1, 16(x27)	# 46
	flw		f2, 12(x27)	# 46
	flw		f3, 8(x27)	# 46
	flw		f4, 4(x27)	# 46
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f5, 0(x4)	# 46
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.16554	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.16555	# 47
	fsub	f0, f0, f3	# 47
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f5, 0(x4)	# 46
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.16556	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.16557	# 47
	fsub	f0, f0, f3	# 47
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.16557:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.16558	# 48
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
fle_else.16558:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.16559	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.16560	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.16560:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
	jalr	x0, x1, 0	# 38
fle_else.16559:
	fsub	f0, f4, f0	# 49
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.16556:
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
fle_else.16555:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.16561	# 48
	fsub	f0, f0, f4	# 48
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f5, 0(x4)	# 46
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.16563	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.16565	# 47
	fsub	f0, f0, f3	# 47
	sw		x1, 0(x2)	# 47
	addi	x2, x2, -4	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 4	# 47
	lw		x1, 0(x2)	# 47
	jal		x0, fle_cont.16564	# 47
fle_else.16565:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.16567	# 48
	fsub	f0, f0, f4	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.16566	# 48
fle_else.16567:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.16569	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.16571	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jal		x0, fle_cont.16570	# 50
fle_else.16571:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
fle_cont.16570:
	jal		x0, fle_cont.16568	# 49
fle_else.16569:
	fsub	f0, f4, f0	# 49
	sw		x1, 0(x2)	# 49
	addi	x2, x2, -4	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 4	# 49
	lw		x1, 0(x2)	# 49
fle_cont.16568:
fle_cont.16566:
fle_cont.16564:
	jal		x0, fle_cont.16562	# 46
fle_else.16563:
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
fle_cont.16562:
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jalr	x0, x1, 0	# 48
fle_else.16561:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.16572	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.16573	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.16573:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
	jalr	x0, x1, 0	# 38
fle_else.16572:
	fsub	f0, f4, f0	# 49
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f5, 0(x4)	# 46
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.16574	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.16575	# 47
	fsub	f0, f0, f3	# 47
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.16575:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.16576	# 48
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
fle_else.16576:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.16577	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.16578	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.16578:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
	jalr	x0, x1, 0	# 38
fle_else.16577:
	fsub	f0, f4, f0	# 49
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.16574:
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
fle_else.16554:
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f5, 0(x4)	# 46
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.16580	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.16582	# 47
	fsub	f0, f0, f3	# 47
	sw		x1, 0(x2)	# 47
	addi	x2, x2, -4	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 4	# 47
	lw		x1, 0(x2)	# 47
	jal		x0, fle_cont.16581	# 47
fle_else.16582:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.16584	# 48
	fsub	f0, f0, f4	# 48
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.16583	# 48
fle_else.16584:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.16586	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.16588	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jal		x0, fle_cont.16587	# 50
fle_else.16588:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
fle_cont.16587:
	jal		x0, fle_cont.16585	# 49
fle_else.16586:
	fsub	f0, f4, f0	# 49
	sw		x1, 0(x2)	# 49
	addi	x2, x2, -4	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 4	# 49
	lw		x1, 0(x2)	# 49
fle_cont.16585:
fle_cont.16583:
fle_cont.16581:
	jal		x0, fle_cont.16579	# 46
fle_else.16580:
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
fle_cont.16579:
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	jalr	x0, x1, 0	# 46
cos.2503:
	lw		x4, 20(x27)	# 54
	flw		f1, 16(x27)	# 54
	flw		f2, 12(x27)	# 54
	flw		f3, 8(x27)	# 54
	flw		f4, 4(x27)	# 54
	lui		x5, %hi(l.10373)	# 54
	ori		x5, x0, %lo(l.10373)	# 54
	flw		f5, 0(x5)	# 54
	fle		x31, f5, f0	# 54
	beq		x31, x0, fle_else.16589	# 54
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.16590	# 55
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.16590:
	fsub	f0, f2, f0	# 55
	lui		x5, %hi(l.10373)	# 46
	ori		x5, x0, %lo(l.10373)	# 46
	flw		f5, 0(x5)	# 46
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.16591	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.16592	# 47
	fsub	f0, f0, f3	# 47
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 47
	jalr	x0, x31, 0	# 47
fle_else.16592:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.16593	# 48
	fsub	f0, f0, f4	# 48
	addi	x27, x4, 0
	sw		x1, 0(x2)	# 48
	addi	x2, x2, -4	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 4	# 48
	lw		x1, 0(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jalr	x0, x1, 0	# 48
fle_else.16593:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.16594	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.16595	# 50
	fsub	f0, f2, f0	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.16595:
	fmul	f1, f0, f0	# 36
	fmul	f2, f0, f1	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f2	# 38
	fsub	f0, f0, f3	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f3, f3, f2	# 38
	fadd	f0, f0, f3	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f1	# 38
	fmul	f1, f3, f1	# 38
	fmul	f1, f1, f2	# 38
	fsub	f0, f0, f1	# 38
	jalr	x0, x1, 0	# 38
fle_else.16594:
	fsub	f0, f4, f0	# 49
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 49
	jalr	x0, x31, 0	# 49
fle_else.16591:
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	addi	x27, x4, 0
	sw		x1, 0(x2)	# 46
	addi	x2, x2, -4	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 4	# 46
	lw		x1, 0(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
	jalr	x0, x1, 0	# 46
fle_else.16589:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lui		x5, %hi(l.10373)	# 54
	ori		x5, x0, %lo(l.10373)	# 54
	flw		f3, 0(x5)	# 54
	fle		x31, f3, f0	# 54
	beq		x31, x0, fle_else.16596	# 54
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.16597	# 55
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jalr	x0, x1, 0	# 43
fle_else.16597:
	fsub	f0, f2, f0	# 55
	addi	x27, x4, 0
	lw		x31, 0(x27)	# 55
	jalr	x0, x31, 0	# 55
fle_else.16596:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lw		x31, 0(x27)	# 54
	jalr	x0, x31, 0	# 54
atan.2505:
	flw		f1, 8(x27)	# 59
	flw		f2, 4(x27)	# 59
	lui		x4, %hi(l.10373)	# 59
	ori		x4, x0, %lo(l.10373)	# 59
	flw		f3, 0(x4)	# 59
	fle		x31, f3, f0	# 59
	beq		x31, x0, fle_else.16598	# 59
	lui		x4, %hi(l.10455)	# 60
	ori		x4, x0, %lo(l.10455)	# 60
	flw		f3, 0(x4)	# 60
	fle		x31, f0, f3	# 60
	beq		x31, x0, fle_else.16599	# 60
	lui		x4, %hi(l.10458)	# 61
	ori		x4, x0, %lo(l.10458)	# 61
	flw		f2, 0(x4)	# 61
	fle		x31, f2, f0	# 61
	beq		x31, x0, fle_else.16600	# 61
	lui		x4, %hi(l.10376)	# 61
	ori		x4, x0, %lo(l.10376)	# 61
	flw		f2, 0(x4)	# 61
	fsub	f2, f0, f2	# 61
	lui		x4, %hi(l.10376)	# 61
	ori		x4, x0, %lo(l.10376)	# 61
	flw		f3, 0(x4)	# 61
	fadd	f0, f0, f3	# 61
	fdiv	f0, f2, f0	# 61
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
fle_else.16600:
	fmul	f1, f0, f0	# 63
	fmul	f2, f0, f1	# 64
	fmul	f3, f1, f1	# 65
	lui		x4, %hi(l.10460)	# 66
	ori		x4, x0, %lo(l.10460)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f2	# 66
	fsub	f0, f0, f4	# 66
	lui		x4, %hi(l.10462)	# 66
	ori		x4, x0, %lo(l.10462)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f1	# 66
	fmul	f4, f4, f2	# 66
	fadd	f0, f0, f4	# 66
	lui		x4, %hi(l.10464)	# 66
	ori		x4, x0, %lo(l.10464)	# 66
	flw		f4, 0(x4)	# 66
	fmul	f4, f4, f3	# 66
	fmul	f4, f4, f2	# 66
	fsub	f0, f0, f4	# 66
	lui		x4, %hi(l.10466)	# 67
	ori		x4, x0, %lo(l.10466)	# 67
	flw		f4, 0(x4)	# 67
	fmul	f1, f4, f1	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f2	# 67
	fadd	f0, f0, f1	# 66
	lui		x4, %hi(l.10468)	# 67
	ori		x4, x0, %lo(l.10468)	# 67
	flw		f1, 0(x4)	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f3	# 67
	fmul	f1, f1, f2	# 67
	fsub	f0, f0, f1	# 66
	jalr	x0, x1, 0	# 66
fle_else.16599:
	lui		x4, %hi(l.10376)	# 60
	ori		x4, x0, %lo(l.10376)	# 60
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
fle_else.16598:
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
	addi	x6, x0, 0	# 283
	ori		x7, x0, 4	# 283
	mul		x6, x6, x7	# 283
	add		x6, x4, x6	# 283
	flw		f0, 0(x6)	# 283
	fmul	f0, f0, f0	# 8
	ori		x6, x0, 1	# 283
	ori		x7, x0, 4	# 283
	mul		x6, x6, x7	# 283
	add		x6, x4, x6	# 283
	flw		f1, 0(x6)	# 283
	fmul	f1, f1, f1	# 8
	fadd	f0, f0, f1	# 283
	ori		x6, x0, 2	# 283
	ori		x7, x0, 4	# 283
	mul		x6, x6, x7	# 283
	add		x6, x4, x6	# 283
	flw		f1, 0(x6)	# 283
	fmul	f1, f1, f1	# 8
	fadd	f0, f0, f1	# 283
	sw		x4, 0(x2)	# 283
	sw		x5, -4(x2)	# 283
	sw		x1, -8(x2)	# 283
	addi	x2, x2, -12	# 283
	jal		x1, min_caml_sqrt	# 283
	addi	x2, x2, 12	# 283
	lw		x1, -8(x2)	# 283
	lui		x4, %hi(l.10373)	# 1
	ori		x4, x0, %lo(l.10373)	# 1
	flw		f1, 0(x4)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16602	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.16601	# 1
feq_else.16602:
	addi	x4, x0, 0	# 1
feq_cont.16601:
	addi	x5, x0, 0	# 284
	beq		x4, x5, beq.16604	# 284
	lui		x4, %hi(l.10376)	# 284
	ori		x4, x0, %lo(l.10376)	# 284
	flw		f0, 0(x4)	# 284
	jal		x0, beq_cont.16603	# 284
beq.16604:
	addi	x4, x0, 0	# 284
	lw		x5, -4(x2)	# 284
	beq		x5, x4, beq.16606	# 284
	lui		x4, %hi(l.10483)	# 284
	ori		x4, x0, %lo(l.10483)	# 284
	flw		f1, 0(x4)	# 284
	fdiv	f0, f1, f0	# 284
	jal		x0, beq_cont.16605	# 284
beq.16606:
	lui		x4, %hi(l.10376)	# 284
	ori		x4, x0, %lo(l.10376)	# 284
	flw		f1, 0(x4)	# 284
	fdiv	f0, f1, f0	# 284
beq_cont.16605:
beq_cont.16603:
	addi	x4, x0, 0	# 285
	addi	x5, x0, 0	# 285
	ori		x6, x0, 4	# 285
	mul		x5, x5, x6	# 285
	lw		x6, 0(x2)	# 285
	add		x5, x6, x5	# 285
	flw		f1, 0(x5)	# 285
	fmul	f1, f1, f0	# 285
	ori		x5, x0, 4	# 285
	mul		x4, x4, x5	# 285
	add		x4, x6, x4	# 285
	fsw		f1, 0(x4)	# 285
	ori		x4, x0, 1	# 286
	ori		x5, x0, 1	# 286
	ori		x7, x0, 4	# 286
	mul		x5, x5, x7	# 286
	add		x5, x6, x5	# 286
	flw		f1, 0(x5)	# 286
	fmul	f1, f1, f0	# 286
	ori		x5, x0, 4	# 286
	mul		x4, x4, x5	# 286
	add		x4, x6, x4	# 286
	fsw		f1, 0(x4)	# 286
	ori		x4, x0, 2	# 287
	ori		x5, x0, 2	# 287
	ori		x7, x0, 4	# 287
	mul		x5, x5, x7	# 287
	add		x5, x6, x5	# 287
	flw		f1, 0(x5)	# 287
	fmul	f0, f1, f0	# 287
	ori		x5, x0, 4	# 287
	mul		x4, x4, x5	# 287
	add		x4, x6, x4	# 287
	fsw		f0, 0(x4)	# 287
	jalr	x0, x1, 0	# 287
veciprod.2568:
	addi	x6, x0, 0	# 292
	ori		x7, x0, 4	# 292
	mul		x6, x6, x7	# 292
	add		x6, x4, x6	# 292
	flw		f0, 0(x6)	# 292
	addi	x6, x0, 0	# 292
	ori		x7, x0, 4	# 292
	mul		x6, x6, x7	# 292
	add		x6, x5, x6	# 292
	flw		f1, 0(x6)	# 292
	fmul	f0, f0, f1	# 292
	ori		x6, x0, 1	# 292
	ori		x7, x0, 4	# 292
	mul		x6, x6, x7	# 292
	add		x6, x4, x6	# 292
	flw		f1, 0(x6)	# 292
	ori		x6, x0, 1	# 292
	ori		x7, x0, 4	# 292
	mul		x6, x6, x7	# 292
	add		x6, x5, x6	# 292
	flw		f2, 0(x6)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	ori		x6, x0, 2	# 292
	ori		x7, x0, 4	# 292
	mul		x6, x6, x7	# 292
	add		x4, x4, x6	# 292
	flw		f1, 0(x4)	# 292
	ori		x4, x0, 2	# 292
	ori		x6, x0, 4	# 292
	mul		x4, x4, x6	# 292
	add		x4, x5, x4	# 292
	flw		f2, 0(x4)	# 292
	fmul	f1, f1, f2	# 292
	fadd	f0, f0, f1	# 292
	jalr	x0, x1, 0	# 292
vecaccum.2576:
	addi	x6, x0, 0	# 302
	addi	x7, x0, 0	# 302
	ori		x8, x0, 4	# 302
	mul		x7, x7, x8	# 302
	add		x7, x4, x7	# 302
	flw		f1, 0(x7)	# 302
	addi	x7, x0, 0	# 302
	ori		x8, x0, 4	# 302
	mul		x7, x7, x8	# 302
	add		x7, x5, x7	# 302
	flw		f2, 0(x7)	# 302
	fmul	f2, f0, f2	# 302
	fadd	f1, f1, f2	# 302
	ori		x7, x0, 4	# 302
	mul		x6, x6, x7	# 302
	add		x6, x4, x6	# 302
	fsw		f1, 0(x6)	# 302
	ori		x6, x0, 1	# 303
	ori		x7, x0, 1	# 303
	ori		x8, x0, 4	# 303
	mul		x7, x7, x8	# 303
	add		x7, x4, x7	# 303
	flw		f1, 0(x7)	# 303
	ori		x7, x0, 1	# 303
	ori		x8, x0, 4	# 303
	mul		x7, x7, x8	# 303
	add		x7, x5, x7	# 303
	flw		f2, 0(x7)	# 303
	fmul	f2, f0, f2	# 303
	fadd	f1, f1, f2	# 303
	ori		x7, x0, 4	# 303
	mul		x6, x6, x7	# 303
	add		x6, x4, x6	# 303
	fsw		f1, 0(x6)	# 303
	ori		x6, x0, 2	# 304
	ori		x7, x0, 2	# 304
	ori		x8, x0, 4	# 304
	mul		x7, x7, x8	# 304
	add		x7, x4, x7	# 304
	flw		f1, 0(x7)	# 304
	ori		x7, x0, 2	# 304
	ori		x8, x0, 4	# 304
	mul		x7, x7, x8	# 304
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
	addi	x6, x0, 0	# 309
	addi	x7, x0, 0	# 309
	ori		x8, x0, 4	# 309
	mul		x7, x7, x8	# 309
	add		x7, x4, x7	# 309
	flw		f0, 0(x7)	# 309
	addi	x7, x0, 0	# 309
	ori		x8, x0, 4	# 309
	mul		x7, x7, x8	# 309
	add		x7, x5, x7	# 309
	flw		f1, 0(x7)	# 309
	fadd	f0, f0, f1	# 309
	ori		x7, x0, 4	# 309
	mul		x6, x6, x7	# 309
	add		x6, x4, x6	# 309
	fsw		f0, 0(x6)	# 309
	ori		x6, x0, 1	# 310
	ori		x7, x0, 1	# 310
	ori		x8, x0, 4	# 310
	mul		x7, x7, x8	# 310
	add		x7, x4, x7	# 310
	flw		f0, 0(x7)	# 310
	ori		x7, x0, 1	# 310
	ori		x8, x0, 4	# 310
	mul		x7, x7, x8	# 310
	add		x7, x5, x7	# 310
	flw		f1, 0(x7)	# 310
	fadd	f0, f0, f1	# 310
	ori		x7, x0, 4	# 310
	mul		x6, x6, x7	# 310
	add		x6, x4, x6	# 310
	fsw		f0, 0(x6)	# 310
	ori		x6, x0, 2	# 311
	ori		x7, x0, 2	# 311
	ori		x8, x0, 4	# 311
	mul		x7, x7, x8	# 311
	add		x7, x4, x7	# 311
	flw		f0, 0(x7)	# 311
	ori		x7, x0, 2	# 311
	ori		x8, x0, 4	# 311
	mul		x7, x7, x8	# 311
	add		x5, x5, x7	# 311
	flw		f1, 0(x5)	# 311
	fadd	f0, f0, f1	# 311
	ori		x5, x0, 4	# 311
	mul		x5, x6, x5	# 311
	add		x4, x4, x5	# 311
	fsw		f0, 0(x4)	# 311
	jalr	x0, x1, 0	# 311
vecaccumv.2586:
	addi	x7, x0, 0	# 332
	addi	x8, x0, 0	# 332
	ori		x9, x0, 4	# 332
	mul		x8, x8, x9	# 332
	add		x8, x4, x8	# 332
	flw		f0, 0(x8)	# 332
	addi	x8, x0, 0	# 332
	ori		x9, x0, 4	# 332
	mul		x8, x8, x9	# 332
	add		x8, x5, x8	# 332
	flw		f1, 0(x8)	# 332
	addi	x8, x0, 0	# 332
	ori		x9, x0, 4	# 332
	mul		x8, x8, x9	# 332
	add		x8, x6, x8	# 332
	flw		f2, 0(x8)	# 332
	fmul	f1, f1, f2	# 332
	fadd	f0, f0, f1	# 332
	ori		x8, x0, 4	# 332
	mul		x7, x7, x8	# 332
	add		x7, x4, x7	# 332
	fsw		f0, 0(x7)	# 332
	ori		x7, x0, 1	# 333
	ori		x8, x0, 1	# 333
	ori		x9, x0, 4	# 333
	mul		x8, x8, x9	# 333
	add		x8, x4, x8	# 333
	flw		f0, 0(x8)	# 333
	ori		x8, x0, 1	# 333
	ori		x9, x0, 4	# 333
	mul		x8, x8, x9	# 333
	add		x8, x5, x8	# 333
	flw		f1, 0(x8)	# 333
	ori		x8, x0, 1	# 333
	ori		x9, x0, 4	# 333
	mul		x8, x8, x9	# 333
	add		x8, x6, x8	# 333
	flw		f2, 0(x8)	# 333
	fmul	f1, f1, f2	# 333
	fadd	f0, f0, f1	# 333
	ori		x8, x0, 4	# 333
	mul		x7, x7, x8	# 333
	add		x7, x4, x7	# 333
	fsw		f0, 0(x7)	# 333
	ori		x7, x0, 2	# 334
	ori		x8, x0, 2	# 334
	ori		x9, x0, 4	# 334
	mul		x8, x8, x9	# 334
	add		x8, x4, x8	# 334
	flw		f0, 0(x8)	# 334
	ori		x8, x0, 2	# 334
	ori		x9, x0, 4	# 334
	mul		x8, x8, x9	# 334
	add		x5, x5, x8	# 334
	flw		f1, 0(x5)	# 334
	ori		x5, x0, 2	# 334
	ori		x8, x0, 4	# 334
	mul		x5, x5, x8	# 334
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
	lw		x4, 44(x27)	# 684
	lw		x5, 40(x27)	# 684
	lw		x6, 36(x27)	# 684
	lw		x7, 32(x27)	# 684
	lw		x8, 28(x27)	# 684
	lw		x9, 24(x27)	# 684
	flw		f0, 20(x27)	# 684
	flw		f1, 16(x27)	# 684
	flw		f2, 12(x27)	# 684
	flw		f3, 8(x27)	# 684
	lw		x10, 4(x27)	# 684
	addi	x11, x0, 0	# 684
	sw		x4, 0(x2)	# 684
	sw		x7, -4(x2)	# 684
	sw		x8, -8(x2)	# 684
	sw		x6, -12(x2)	# 684
	fsw		f3, -16(x2)	# 684
	fsw		f2, -24(x2)	# 684
	sw		x10, -32(x2)	# 684
	sw		x5, -36(x2)	# 684
	fsw		f1, -40(x2)	# 684
	fsw		f0, -48(x2)	# 684
	sw		x9, -56(x2)	# 684
	sw		x11, -60(x2)	# 684
	sw		x1, -64(x2)	# 684
	addi	x2, x2, -68	# 684
	jal		x1, min_caml_read_float	# 684
	addi	x2, x2, 68	# 684
	lw		x1, -64(x2)	# 684
	ori		x4, x0, 4	# 684
	lw		x5, -60(x2)	# 684
	mul		x4, x5, x4	# 684
	lw		x5, -56(x2)	# 684
	add		x4, x5, x4	# 684
	fsw		f0, 0(x4)	# 684
	ori		x4, x0, 1	# 685
	sw		x4, -64(x2)	# 685
	sw		x1, -68(x2)	# 685
	addi	x2, x2, -72	# 685
	jal		x1, min_caml_read_float	# 685
	addi	x2, x2, 72	# 685
	lw		x1, -68(x2)	# 685
	ori		x4, x0, 4	# 685
	lw		x5, -64(x2)	# 685
	mul		x4, x5, x4	# 685
	lw		x5, -56(x2)	# 685
	add		x4, x5, x4	# 685
	fsw		f0, 0(x4)	# 685
	ori		x4, x0, 2	# 686
	sw		x4, -68(x2)	# 686
	sw		x1, -72(x2)	# 686
	addi	x2, x2, -76	# 686
	jal		x1, min_caml_read_float	# 686
	addi	x2, x2, 76	# 686
	lw		x1, -72(x2)	# 686
	ori		x4, x0, 4	# 686
	lw		x5, -68(x2)	# 686
	mul		x4, x5, x4	# 686
	lw		x5, -56(x2)	# 686
	add		x4, x5, x4	# 686
	fsw		f0, 0(x4)	# 686
	sw		x1, -72(x2)	# 688
	addi	x2, x2, -76	# 688
	jal		x1, min_caml_read_float	# 688
	addi	x2, x2, 76	# 688
	lw		x1, -72(x2)	# 688
	lui		x4, %hi(l.10621)	# 677
	ori		x4, x0, %lo(l.10621)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	lui		x4, %hi(l.10373)	# 54
	ori		x4, x0, %lo(l.10373)	# 54
	flw		f1, 0(x4)	# 54
	fsw		f0, -72(x2)	# 54
	fle		x31, f1, f0	# 54
	beq		x31, x0, fle_else.16612	# 54
	flw		f1, -48(x2)	# 55
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.16614	# 55
	fmul	f2, f0, f0	# 41
	fmul	f3, f2, f2	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f4, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f2	# 43
	fsub	f4, f4, f5	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f3	# 43
	fadd	f4, f4, f5	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f2, f5, f2	# 43
	fmul	f2, f2, f3	# 43
	fsub	f0, f4, f2	# 43
	jal		x0, fle_cont.16613	# 55
fle_else.16614:
	flw		f2, -40(x2)	# 55
	fsub	f3, f2, f0	# 55
	lw		x27, -36(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -80(x2)	# 55
	addi	x2, x2, -84	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 84	# 55
	lw		x1, -80(x2)	# 55
fle_cont.16613:
	jal		x0, fle_cont.16611	# 54
fle_else.16612:
	fsub	f1, f1, f1	# 54
	fsub	f1, f1, f0	# 54
	lw		x27, -32(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 54
	addi	x2, x2, -84	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 84	# 54
	lw		x1, -80(x2)	# 54
fle_cont.16611:
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f1, 0(x4)	# 46
	flw		f2, -72(x2)	# 46
	fsw		f0, -80(x2)	# 46
	fle		x31, f1, f2	# 46
	beq		x31, x0, fle_else.16616	# 46
	flw		f1, -24(x2)	# 47
	fle		x31, f1, f2	# 47
	beq		x31, x0, fle_else.16618	# 47
	fsub	f2, f2, f1	# 47
	lw		x27, -36(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -88(x2)	# 47
	addi	x2, x2, -92	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 92	# 47
	lw		x1, -88(x2)	# 47
	jal		x0, fle_cont.16617	# 47
fle_else.16618:
	flw		f3, -16(x2)	# 48
	fle		x31, f3, f2	# 48
	beq		x31, x0, fle_else.16620	# 48
	fsub	f2, f2, f3	# 48
	lw		x27, -36(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -88(x2)	# 48
	addi	x2, x2, -92	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 92	# 48
	lw		x1, -88(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.16619	# 48
fle_else.16620:
	flw		f4, -40(x2)	# 49
	fle		x31, f2, f4	# 49
	beq		x31, x0, fle_else.16622	# 49
	flw		f5, -48(x2)	# 50
	fle		x31, f5, f2	# 50
	beq		x31, x0, fle_else.16624	# 50
	fsub	f2, f4, f2	# 50
	fmul	f2, f2, f2	# 41
	fmul	f6, f2, f2	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f7, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f2	# 43
	fsub	f7, f7, f8	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f6	# 43
	fadd	f7, f7, f8	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f2, f8, f2	# 43
	fmul	f2, f2, f6	# 43
	fsub	f0, f7, f2	# 43
	jal		x0, fle_cont.16623	# 50
fle_else.16624:
	fmul	f6, f2, f2	# 36
	fmul	f7, f2, f6	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f7	# 38
	fsub	f2, f2, f8	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f6	# 38
	fmul	f8, f8, f7	# 38
	fadd	f2, f2, f8	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f6	# 38
	fmul	f6, f8, f6	# 38
	fmul	f6, f6, f7	# 38
	fsub	f0, f2, f6	# 38
fle_cont.16623:
	jal		x0, fle_cont.16621	# 49
fle_else.16622:
	fsub	f2, f3, f2	# 49
	lw		x27, -36(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -88(x2)	# 49
	addi	x2, x2, -92	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 92	# 49
	lw		x1, -88(x2)	# 49
fle_cont.16621:
fle_cont.16619:
fle_cont.16617:
	jal		x0, fle_cont.16615	# 46
fle_else.16616:
	fsub	f1, f1, f1	# 46
	fsub	f1, f1, f2	# 46
	lw		x27, -36(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 46
	addi	x2, x2, -92	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 92	# 46
	lw		x1, -88(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.16615:
	fsw		f0, -88(x2)	# 691
	sw		x1, -96(x2)	# 691
	addi	x2, x2, -100	# 691
	jal		x1, min_caml_read_float	# 691
	addi	x2, x2, 100	# 691
	lw		x1, -96(x2)	# 691
	lui		x4, %hi(l.10621)	# 677
	ori		x4, x0, %lo(l.10621)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	lui		x4, %hi(l.10373)	# 54
	ori		x4, x0, %lo(l.10373)	# 54
	flw		f1, 0(x4)	# 54
	fsw		f0, -96(x2)	# 54
	fle		x31, f1, f0	# 54
	beq		x31, x0, fle_else.16626	# 54
	flw		f1, -48(x2)	# 55
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.16628	# 55
	fmul	f2, f0, f0	# 41
	fmul	f3, f2, f2	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f4, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f2	# 43
	fsub	f4, f4, f5	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f3	# 43
	fadd	f4, f4, f5	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f2, f5, f2	# 43
	fmul	f2, f2, f3	# 43
	fsub	f0, f4, f2	# 43
	jal		x0, fle_cont.16627	# 55
fle_else.16628:
	flw		f2, -40(x2)	# 55
	fsub	f3, f2, f0	# 55
	lw		x27, -36(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -104(x2)	# 55
	addi	x2, x2, -108	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 108	# 55
	lw		x1, -104(x2)	# 55
fle_cont.16627:
	jal		x0, fle_cont.16625	# 54
fle_else.16626:
	fsub	f1, f1, f1	# 54
	fsub	f1, f1, f0	# 54
	lw		x27, -32(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -104(x2)	# 54
	addi	x2, x2, -108	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 108	# 54
	lw		x1, -104(x2)	# 54
fle_cont.16625:
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f1, 0(x4)	# 46
	flw		f2, -96(x2)	# 46
	fsw		f0, -104(x2)	# 46
	fle		x31, f1, f2	# 46
	beq		x31, x0, fle_else.16630	# 46
	flw		f1, -24(x2)	# 47
	fle		x31, f1, f2	# 47
	beq		x31, x0, fle_else.16632	# 47
	fsub	f1, f2, f1	# 47
	lw		x27, -36(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -112(x2)	# 47
	addi	x2, x2, -116	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 116	# 47
	lw		x1, -112(x2)	# 47
	jal		x0, fle_cont.16631	# 47
fle_else.16632:
	flw		f1, -16(x2)	# 48
	fle		x31, f1, f2	# 48
	beq		x31, x0, fle_else.16634	# 48
	fsub	f1, f2, f1	# 48
	lw		x27, -36(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -112(x2)	# 48
	addi	x2, x2, -116	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 116	# 48
	lw		x1, -112(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.16633	# 48
fle_else.16634:
	flw		f3, -40(x2)	# 49
	fle		x31, f2, f3	# 49
	beq		x31, x0, fle_else.16636	# 49
	flw		f1, -48(x2)	# 50
	fle		x31, f1, f2	# 50
	beq		x31, x0, fle_else.16638	# 50
	fsub	f1, f3, f2	# 50
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f3, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f0, f3, f1	# 43
	jal		x0, fle_cont.16637	# 50
fle_else.16638:
	fmul	f1, f2, f2	# 36
	fmul	f3, f2, f1	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f3	# 38
	fsub	f2, f2, f4	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f1	# 38
	fmul	f4, f4, f3	# 38
	fadd	f2, f2, f4	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f1	# 38
	fmul	f1, f4, f1	# 38
	fmul	f1, f1, f3	# 38
	fsub	f0, f2, f1	# 38
fle_cont.16637:
	jal		x0, fle_cont.16635	# 49
fle_else.16636:
	fsub	f1, f1, f2	# 49
	lw		x27, -36(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -112(x2)	# 49
	addi	x2, x2, -116	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 116	# 49
	lw		x1, -112(x2)	# 49
fle_cont.16635:
fle_cont.16633:
fle_cont.16631:
	jal		x0, fle_cont.16629	# 46
fle_else.16630:
	fsub	f1, f1, f1	# 46
	fsub	f1, f1, f2	# 46
	lw		x27, -36(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -112(x2)	# 46
	addi	x2, x2, -116	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 116	# 46
	lw		x1, -112(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.16629:
	addi	x4, x0, 0	# 695
	flw		f1, -80(x2)	# 695
	fmul	f2, f1, f0	# 695
	lui		x5, %hi(l.10650)	# 695
	ori		x5, x0, %lo(l.10650)	# 695
	flw		f3, 0(x5)	# 695
	fmul	f2, f2, f3	# 695
	ori		x5, x0, 4	# 695
	mul		x4, x4, x5	# 695
	lw		x5, -12(x2)	# 695
	add		x4, x5, x4	# 695
	fsw		f2, 0(x4)	# 695
	ori		x4, x0, 1	# 696
	lui		x6, %hi(l.10655)	# 696
	ori		x6, x0, %lo(l.10655)	# 696
	flw		f2, 0(x6)	# 696
	flw		f3, -88(x2)	# 696
	fmul	f2, f3, f2	# 696
	ori		x6, x0, 4	# 696
	mul		x4, x4, x6	# 696
	add		x4, x5, x4	# 696
	fsw		f2, 0(x4)	# 696
	ori		x4, x0, 2	# 697
	flw		f2, -104(x2)	# 697
	fmul	f4, f1, f2	# 697
	lui		x6, %hi(l.10650)	# 697
	ori		x6, x0, %lo(l.10650)	# 697
	flw		f5, 0(x6)	# 697
	fmul	f4, f4, f5	# 697
	ori		x6, x0, 4	# 697
	mul		x4, x4, x6	# 697
	add		x4, x5, x4	# 697
	fsw		f4, 0(x4)	# 697
	addi	x4, x0, 0	# 699
	ori		x6, x0, 4	# 699
	mul		x4, x4, x6	# 699
	lw		x6, -8(x2)	# 699
	add		x4, x6, x4	# 699
	fsw		f2, 0(x4)	# 699
	ori		x4, x0, 1	# 700
	lui		x7, %hi(l.10373)	# 700
	ori		x7, x0, %lo(l.10373)	# 700
	flw		f4, 0(x7)	# 700
	ori		x7, x0, 4	# 700
	mul		x4, x4, x7	# 700
	add		x4, x6, x4	# 700
	fsw		f4, 0(x4)	# 700
	ori		x4, x0, 2	# 701
	fsub	f4, f4, f4	# 4
	fsub	f4, f4, f0	# 4
	ori		x7, x0, 4	# 701
	mul		x4, x4, x7	# 701
	add		x4, x6, x4	# 701
	fsw		f4, 0(x4)	# 701
	addi	x4, x0, 0	# 703
	fsub	f4, f4, f4	# 4
	fsub	f4, f4, f3	# 4
	fmul	f0, f4, f0	# 703
	ori		x6, x0, 4	# 703
	mul		x4, x4, x6	# 703
	lw		x6, -4(x2)	# 703
	add		x4, x6, x4	# 703
	fsw		f0, 0(x4)	# 703
	ori		x4, x0, 1	# 704
	fsub	f0, f0, f0	# 4
	fsub	f0, f0, f1	# 4
	ori		x7, x0, 4	# 704
	mul		x4, x4, x7	# 704
	add		x4, x6, x4	# 704
	fsw		f0, 0(x4)	# 704
	ori		x4, x0, 2	# 705
	fsub	f0, f0, f0	# 4
	fsub	f0, f0, f3	# 4
	fmul	f0, f0, f2	# 705
	ori		x7, x0, 4	# 705
	mul		x4, x4, x7	# 705
	add		x4, x6, x4	# 705
	fsw		f0, 0(x4)	# 705
	addi	x4, x0, 0	# 707
	addi	x6, x0, 0	# 707
	ori		x7, x0, 4	# 707
	mul		x6, x6, x7	# 707
	lw		x7, -56(x2)	# 707
	add		x6, x7, x6	# 707
	flw		f0, 0(x6)	# 707
	addi	x6, x0, 0	# 707
	ori		x8, x0, 4	# 707
	mul		x6, x6, x8	# 707
	add		x6, x5, x6	# 707
	flw		f1, 0(x6)	# 707
	fsub	f0, f0, f1	# 707
	ori		x6, x0, 4	# 707
	mul		x4, x4, x6	# 707
	lw		x6, 0(x2)	# 707
	add		x4, x6, x4	# 707
	fsw		f0, 0(x4)	# 707
	ori		x4, x0, 1	# 708
	ori		x8, x0, 1	# 708
	ori		x9, x0, 4	# 708
	mul		x8, x8, x9	# 708
	add		x8, x7, x8	# 708
	flw		f0, 0(x8)	# 708
	ori		x8, x0, 1	# 708
	ori		x9, x0, 4	# 708
	mul		x8, x8, x9	# 708
	add		x8, x5, x8	# 708
	flw		f1, 0(x8)	# 708
	fsub	f0, f0, f1	# 708
	ori		x8, x0, 4	# 708
	mul		x4, x4, x8	# 708
	add		x4, x6, x4	# 708
	fsw		f0, 0(x4)	# 708
	ori		x4, x0, 2	# 709
	ori		x8, x0, 2	# 709
	ori		x9, x0, 4	# 709
	mul		x8, x8, x9	# 709
	add		x7, x7, x8	# 709
	flw		f0, 0(x7)	# 709
	ori		x7, x0, 2	# 709
	ori		x8, x0, 4	# 709
	mul		x7, x7, x8	# 709
	add		x5, x5, x7	# 709
	flw		f1, 0(x5)	# 709
	fsub	f0, f0, f1	# 709
	ori		x5, x0, 4	# 709
	mul		x4, x4, x5	# 709
	add		x4, x6, x4	# 709
	fsw		f0, 0(x4)	# 709
	jalr	x0, x1, 0	# 709
read_light.2665:
	lw		x4, 32(x27)	# 716
	flw		f0, 28(x27)	# 716
	flw		f1, 24(x27)	# 716
	flw		f2, 20(x27)	# 716
	flw		f3, 16(x27)	# 716
	lw		x5, 12(x27)	# 716
	lw		x6, 8(x27)	# 716
	lw		x7, 4(x27)	# 716
	sw		x7, 0(x2)	# 716
	sw		x6, -4(x2)	# 716
	sw		x5, -8(x2)	# 716
	fsw		f0, -16(x2)	# 716
	fsw		f1, -24(x2)	# 716
	fsw		f3, -32(x2)	# 716
	sw		x4, -40(x2)	# 716
	fsw		f2, -48(x2)	# 716
	sw		x1, -56(x2)	# 716
	addi	x2, x2, -60	# 716
	jal		x1, min_caml_read_int	# 716
	addi	x2, x2, 60	# 716
	lw		x1, -56(x2)	# 716
	sw		x1, -56(x2)	# 719
	addi	x2, x2, -60	# 719
	jal		x1, min_caml_read_float	# 719
	addi	x2, x2, 60	# 719
	lw		x1, -56(x2)	# 719
	lui		x4, %hi(l.10621)	# 677
	ori		x4, x0, %lo(l.10621)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f1, 0(x4)	# 46
	fsw		f0, -56(x2)	# 46
	fle		x31, f1, f0	# 46
	beq		x31, x0, fle_else.16643	# 46
	flw		f1, -48(x2)	# 47
	fle		x31, f1, f0	# 47
	beq		x31, x0, fle_else.16645	# 47
	fsub	f2, f0, f1	# 47
	lw		x27, -40(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -64(x2)	# 47
	addi	x2, x2, -68	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 68	# 47
	lw		x1, -64(x2)	# 47
	jal		x0, fle_cont.16644	# 47
fle_else.16645:
	flw		f2, -32(x2)	# 48
	fle		x31, f2, f0	# 48
	beq		x31, x0, fle_else.16647	# 48
	fsub	f3, f0, f2	# 48
	lw		x27, -40(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -64(x2)	# 48
	addi	x2, x2, -68	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 68	# 48
	lw		x1, -64(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.16646	# 48
fle_else.16647:
	flw		f3, -24(x2)	# 49
	fle		x31, f0, f3	# 49
	beq		x31, x0, fle_else.16649	# 49
	flw		f4, -16(x2)	# 50
	fle		x31, f4, f0	# 50
	beq		x31, x0, fle_else.16651	# 50
	fsub	f5, f3, f0	# 50
	fmul	f5, f5, f5	# 41
	fmul	f6, f5, f5	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f7, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f5	# 43
	fsub	f7, f7, f8	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f6	# 43
	fadd	f7, f7, f8	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f5, f8, f5	# 43
	fmul	f5, f5, f6	# 43
	fsub	f0, f7, f5	# 43
	jal		x0, fle_cont.16650	# 50
fle_else.16651:
	fmul	f5, f0, f0	# 36
	fmul	f6, f0, f5	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f7, 0(x4)	# 38
	fmul	f7, f7, f6	# 38
	fsub	f7, f0, f7	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f5	# 38
	fmul	f8, f8, f6	# 38
	fadd	f7, f7, f8	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f5	# 38
	fmul	f5, f8, f5	# 38
	fmul	f5, f5, f6	# 38
	fsub	f0, f7, f5	# 38
fle_cont.16650:
	jal		x0, fle_cont.16648	# 49
fle_else.16649:
	fsub	f4, f2, f0	# 49
	lw		x27, -40(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -64(x2)	# 49
	addi	x2, x2, -68	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 68	# 49
	lw		x1, -64(x2)	# 49
fle_cont.16648:
fle_cont.16646:
fle_cont.16644:
	jal		x0, fle_cont.16642	# 46
fle_else.16643:
	fsub	f1, f1, f1	# 46
	fsub	f1, f1, f0	# 46
	lw		x27, -40(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -64(x2)	# 46
	addi	x2, x2, -68	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 68	# 46
	lw		x1, -64(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.16642:
	ori		x4, x0, 1	# 721
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x5, x0, 4	# 721
	mul		x4, x4, x5	# 721
	lw		x5, -8(x2)	# 721
	add		x4, x5, x4	# 721
	fsw		f0, 0(x4)	# 721
	sw		x1, -64(x2)	# 722
	addi	x2, x2, -68	# 722
	jal		x1, min_caml_read_float	# 722
	addi	x2, x2, 68	# 722
	lw		x1, -64(x2)	# 722
	lui		x4, %hi(l.10621)	# 677
	ori		x4, x0, %lo(l.10621)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	lui		x4, %hi(l.10373)	# 54
	ori		x4, x0, %lo(l.10373)	# 54
	flw		f1, 0(x4)	# 54
	flw		f2, -56(x2)	# 54
	fsw		f0, -64(x2)	# 54
	fle		x31, f1, f2	# 54
	beq		x31, x0, fle_else.16653	# 54
	flw		f1, -16(x2)	# 55
	fle		x31, f2, f1	# 55
	beq		x31, x0, fle_else.16655	# 55
	fmul	f2, f2, f2	# 41
	fmul	f3, f2, f2	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f4, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f2	# 43
	fsub	f4, f4, f5	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f3	# 43
	fadd	f4, f4, f5	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f2, f5, f2	# 43
	fmul	f2, f2, f3	# 43
	fsub	f0, f4, f2	# 43
	jal		x0, fle_cont.16654	# 55
fle_else.16655:
	flw		f3, -24(x2)	# 55
	fsub	f2, f3, f2	# 55
	lw		x27, -40(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -72(x2)	# 55
	addi	x2, x2, -76	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 76	# 55
	lw		x1, -72(x2)	# 55
fle_cont.16654:
	jal		x0, fle_cont.16652	# 54
fle_else.16653:
	fsub	f1, f1, f1	# 54
	fsub	f1, f1, f2	# 54
	lw		x27, -4(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 54
	addi	x2, x2, -76	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 76	# 54
	lw		x1, -72(x2)	# 54
fle_cont.16652:
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f1, 0(x4)	# 46
	flw		f2, -64(x2)	# 46
	fsw		f0, -72(x2)	# 46
	fle		x31, f1, f2	# 46
	beq		x31, x0, fle_else.16657	# 46
	flw		f1, -48(x2)	# 47
	fle		x31, f1, f2	# 47
	beq		x31, x0, fle_else.16659	# 47
	fsub	f1, f2, f1	# 47
	lw		x27, -40(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 47
	addi	x2, x2, -84	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 84	# 47
	lw		x1, -80(x2)	# 47
	jal		x0, fle_cont.16658	# 47
fle_else.16659:
	flw		f1, -32(x2)	# 48
	fle		x31, f1, f2	# 48
	beq		x31, x0, fle_else.16661	# 48
	fsub	f1, f2, f1	# 48
	lw		x27, -40(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 48
	addi	x2, x2, -84	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 84	# 48
	lw		x1, -80(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.16660	# 48
fle_else.16661:
	flw		f3, -24(x2)	# 49
	fle		x31, f2, f3	# 49
	beq		x31, x0, fle_else.16663	# 49
	flw		f1, -16(x2)	# 50
	fle		x31, f1, f2	# 50
	beq		x31, x0, fle_else.16665	# 50
	fsub	f4, f3, f2	# 50
	fmul	f4, f4, f4	# 41
	fmul	f5, f4, f4	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f6, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f7, 0(x4)	# 43
	fmul	f7, f7, f4	# 43
	fsub	f6, f6, f7	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f7, 0(x4)	# 43
	fmul	f7, f7, f5	# 43
	fadd	f6, f6, f7	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f7, 0(x4)	# 43
	fmul	f4, f7, f4	# 43
	fmul	f4, f4, f5	# 43
	fsub	f0, f6, f4	# 43
	jal		x0, fle_cont.16664	# 50
fle_else.16665:
	fmul	f4, f2, f2	# 36
	fmul	f5, f2, f4	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f6, 0(x4)	# 38
	fmul	f6, f6, f5	# 38
	fsub	f6, f2, f6	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f7, 0(x4)	# 38
	fmul	f7, f7, f4	# 38
	fmul	f7, f7, f5	# 38
	fadd	f6, f6, f7	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f7, 0(x4)	# 38
	fmul	f7, f7, f4	# 38
	fmul	f4, f7, f4	# 38
	fmul	f4, f4, f5	# 38
	fsub	f0, f6, f4	# 38
fle_cont.16664:
	jal		x0, fle_cont.16662	# 49
fle_else.16663:
	fsub	f1, f1, f2	# 49
	lw		x27, -40(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 49
	addi	x2, x2, -84	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 84	# 49
	lw		x1, -80(x2)	# 49
fle_cont.16662:
fle_cont.16660:
fle_cont.16658:
	jal		x0, fle_cont.16656	# 46
fle_else.16657:
	fsub	f1, f1, f1	# 46
	fsub	f1, f1, f2	# 46
	lw		x27, -40(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 46
	addi	x2, x2, -84	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 84	# 46
	lw		x1, -80(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.16656:
	addi	x4, x0, 0	# 725
	flw		f1, -72(x2)	# 725
	fmul	f0, f1, f0	# 725
	ori		x5, x0, 4	# 725
	mul		x4, x4, x5	# 725
	lw		x5, -8(x2)	# 725
	add		x4, x5, x4	# 725
	fsw		f0, 0(x4)	# 725
	lui		x4, %hi(l.10373)	# 54
	ori		x4, x0, %lo(l.10373)	# 54
	flw		f0, 0(x4)	# 54
	flw		f2, -64(x2)	# 54
	fle		x31, f0, f2	# 54
	beq		x31, x0, fle_else.16667	# 54
	flw		f0, -16(x2)	# 55
	fle		x31, f2, f0	# 55
	beq		x31, x0, fle_else.16669	# 55
	fmul	f0, f2, f2	# 41
	fmul	f2, f0, f0	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f3, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f0	# 43
	fsub	f3, f3, f4	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f0, f4, f0	# 43
	fmul	f0, f0, f2	# 43
	fsub	f0, f3, f0	# 43
	jal		x0, fle_cont.16668	# 55
fle_else.16669:
	flw		f0, -24(x2)	# 55
	fsub	f0, f0, f2	# 55
	lw		x27, -40(x2)	# 55
	sw		x1, -80(x2)	# 55
	addi	x2, x2, -84	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 84	# 55
	lw		x1, -80(x2)	# 55
fle_cont.16668:
	jal		x0, fle_cont.16666	# 54
fle_else.16667:
	fsub	f0, f0, f0	# 54
	fsub	f0, f0, f2	# 54
	lw		x27, -4(x2)	# 54
	sw		x1, -80(x2)	# 54
	addi	x2, x2, -84	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 84	# 54
	lw		x1, -80(x2)	# 54
fle_cont.16666:
	ori		x4, x0, 2	# 727
	flw		f1, -72(x2)	# 727
	fmul	f0, f1, f0	# 727
	ori		x5, x0, 4	# 727
	mul		x4, x4, x5	# 727
	lw		x5, -8(x2)	# 727
	add		x4, x5, x4	# 727
	fsw		f0, 0(x4)	# 727
	addi	x4, x0, 0	# 728
	sw		x4, -80(x2)	# 728
	sw		x1, -84(x2)	# 728
	addi	x2, x2, -88	# 728
	jal		x1, min_caml_read_float	# 728
	addi	x2, x2, 88	# 728
	lw		x1, -84(x2)	# 728
	ori		x4, x0, 4	# 728
	lw		x5, -80(x2)	# 728
	mul		x4, x5, x4	# 728
	lw		x5, 0(x2)	# 728
	add		x4, x5, x4	# 728
	fsw		f0, 0(x4)	# 728
	jalr	x0, x1, 0	# 728
rotate_quadratic_matrix.2667:
	lw		x6, 24(x27)	# 738
	flw		f0, 20(x27)	# 738
	flw		f1, 16(x27)	# 738
	flw		f2, 12(x27)	# 738
	flw		f3, 8(x27)	# 738
	lw		x27, 4(x27)	# 738
	addi	x7, x0, 0	# 738
	ori		x8, x0, 4	# 738
	mul		x7, x7, x8	# 738
	add		x7, x5, x7	# 738
	flw		f4, 0(x7)	# 738
	lui		x7, %hi(l.10373)	# 54
	ori		x7, x0, %lo(l.10373)	# 54
	flw		f5, 0(x7)	# 54
	sw		x4, 0(x2)	# 54
	sw		x27, -4(x2)	# 54
	fsw		f0, -8(x2)	# 54
	fsw		f1, -16(x2)	# 54
	fsw		f3, -24(x2)	# 54
	sw		x6, -32(x2)	# 54
	fsw		f2, -40(x2)	# 54
	sw		x5, -48(x2)	# 54
	fle		x31, f5, f4	# 54
	beq		x31, x0, fle_else.16673	# 54
	fle		x31, f4, f0	# 55
	beq		x31, x0, fle_else.16675	# 55
	fmul	f4, f4, f4	# 41
	fmul	f5, f4, f4	# 42
	lui		x7, %hi(l.10376)	# 43
	ori		x7, x0, %lo(l.10376)	# 43
	flw		f6, 0(x7)	# 43
	lui		x7, %hi(l.10399)	# 43
	ori		x7, x0, %lo(l.10399)	# 43
	flw		f7, 0(x7)	# 43
	fmul	f7, f7, f4	# 43
	fsub	f6, f6, f7	# 43
	lui		x7, %hi(l.10401)	# 43
	ori		x7, x0, %lo(l.10401)	# 43
	flw		f7, 0(x7)	# 43
	fmul	f7, f7, f5	# 43
	fadd	f6, f6, f7	# 43
	lui		x7, %hi(l.10403)	# 43
	ori		x7, x0, %lo(l.10403)	# 43
	flw		f7, 0(x7)	# 43
	fmul	f4, f7, f4	# 43
	fmul	f4, f4, f5	# 43
	fsub	f0, f6, f4	# 43
	jal		x0, fle_cont.16674	# 55
fle_else.16675:
	fsub	f4, f1, f4	# 55
	addi	x27, x6, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -52(x2)	# 55
	addi	x2, x2, -56	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 56	# 55
	lw		x1, -52(x2)	# 55
fle_cont.16674:
	jal		x0, fle_cont.16672	# 54
fle_else.16673:
	fsub	x31, x31, x31	# 54
	fsub	f4, x31, f4	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f4
	sw		x1, -52(x2)	# 54
	addi	x2, x2, -56	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 56	# 54
	lw		x1, -52(x2)	# 54
fle_cont.16672:
	addi	x4, x0, 0	# 739
	ori		x5, x0, 4	# 739
	mul		x4, x4, x5	# 739
	lw		x5, -48(x2)	# 739
	add		x4, x5, x4	# 739
	flw		f1, 0(x4)	# 739
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f2, 0(x4)	# 46
	fsw		f0, -56(x2)	# 46
	fle		x31, f2, f1	# 46
	beq		x31, x0, fle_else.16678	# 46
	flw		f2, -40(x2)	# 47
	fle		x31, f2, f1	# 47
	beq		x31, x0, fle_else.16680	# 47
	fsub	f1, f1, f2	# 47
	lw		x27, -32(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -64(x2)	# 47
	addi	x2, x2, -68	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 68	# 47
	lw		x1, -64(x2)	# 47
	jal		x0, fle_cont.16679	# 47
fle_else.16680:
	flw		f3, -24(x2)	# 48
	fle		x31, f3, f1	# 48
	beq		x31, x0, fle_else.16682	# 48
	fsub	f1, f1, f3	# 48
	lw		x27, -32(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -64(x2)	# 48
	addi	x2, x2, -68	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 68	# 48
	lw		x1, -64(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.16681	# 48
fle_else.16682:
	flw		f4, -16(x2)	# 49
	fle		x31, f1, f4	# 49
	beq		x31, x0, fle_else.16684	# 49
	flw		f5, -8(x2)	# 50
	fle		x31, f5, f1	# 50
	beq		x31, x0, fle_else.16686	# 50
	fsub	f1, f4, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f6, f1, f1	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f7, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f1	# 43
	fsub	f7, f7, f8	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f6	# 43
	fadd	f7, f7, f8	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f1, f8, f1	# 43
	fmul	f1, f1, f6	# 43
	fsub	f0, f7, f1	# 43
	jal		x0, fle_cont.16685	# 50
fle_else.16686:
	fmul	f6, f1, f1	# 36
	fmul	f7, f1, f6	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f7	# 38
	fsub	f1, f1, f8	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f6	# 38
	fmul	f8, f8, f7	# 38
	fadd	f1, f1, f8	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f6	# 38
	fmul	f6, f8, f6	# 38
	fmul	f6, f6, f7	# 38
	fsub	f0, f1, f6	# 38
fle_cont.16685:
	jal		x0, fle_cont.16683	# 49
fle_else.16684:
	fsub	f1, f3, f1	# 49
	lw		x27, -32(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -64(x2)	# 49
	addi	x2, x2, -68	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 68	# 49
	lw		x1, -64(x2)	# 49
fle_cont.16683:
fle_cont.16681:
fle_cont.16679:
	jal		x0, fle_cont.16677	# 46
fle_else.16678:
	fsub	x31, x31, x31	# 46
	fsub	f1, x31, f1	# 46
	lw		x27, -32(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -64(x2)	# 46
	addi	x2, x2, -68	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 68	# 46
	lw		x1, -64(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.16677:
	ori		x4, x0, 1	# 740
	ori		x5, x0, 4	# 740
	mul		x4, x4, x5	# 740
	lw		x5, -48(x2)	# 740
	add		x4, x5, x4	# 740
	flw		f1, 0(x4)	# 740
	lui		x4, %hi(l.10373)	# 54
	ori		x4, x0, %lo(l.10373)	# 54
	flw		f2, 0(x4)	# 54
	fsw		f0, -64(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.16688	# 54
	flw		f2, -8(x2)	# 55
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.16690	# 55
	fmul	f1, f1, f1	# 41
	fmul	f3, f1, f1	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f4, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f1	# 43
	fsub	f4, f4, f5	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f3	# 43
	fadd	f4, f4, f5	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f1, f5, f1	# 43
	fmul	f1, f1, f3	# 43
	fsub	f0, f4, f1	# 43
	jal		x0, fle_cont.16689	# 55
fle_else.16690:
	flw		f3, -16(x2)	# 55
	fsub	f1, f3, f1	# 55
	lw		x27, -32(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 55
	addi	x2, x2, -76	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 76	# 55
	lw		x1, -72(x2)	# 55
fle_cont.16689:
	jal		x0, fle_cont.16687	# 54
fle_else.16688:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -4(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -72(x2)	# 54
	addi	x2, x2, -76	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 76	# 54
	lw		x1, -72(x2)	# 54
fle_cont.16687:
	ori		x4, x0, 1	# 741
	ori		x5, x0, 4	# 741
	mul		x4, x4, x5	# 741
	lw		x5, -48(x2)	# 741
	add		x4, x5, x4	# 741
	flw		f1, 0(x4)	# 741
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f2, 0(x4)	# 46
	fsw		f0, -72(x2)	# 46
	fle		x31, f2, f1	# 46
	beq		x31, x0, fle_else.16692	# 46
	flw		f2, -40(x2)	# 47
	fle		x31, f2, f1	# 47
	beq		x31, x0, fle_else.16694	# 47
	fsub	f1, f1, f2	# 47
	lw		x27, -32(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 47
	addi	x2, x2, -84	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 84	# 47
	lw		x1, -80(x2)	# 47
	jal		x0, fle_cont.16693	# 47
fle_else.16694:
	flw		f3, -24(x2)	# 48
	fle		x31, f3, f1	# 48
	beq		x31, x0, fle_else.16696	# 48
	fsub	f1, f1, f3	# 48
	lw		x27, -32(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 48
	addi	x2, x2, -84	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 84	# 48
	lw		x1, -80(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.16695	# 48
fle_else.16696:
	flw		f4, -16(x2)	# 49
	fle		x31, f1, f4	# 49
	beq		x31, x0, fle_else.16698	# 49
	flw		f5, -8(x2)	# 50
	fle		x31, f5, f1	# 50
	beq		x31, x0, fle_else.16700	# 50
	fsub	f1, f4, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f6, f1, f1	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f7, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f1	# 43
	fsub	f7, f7, f8	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f8, f8, f6	# 43
	fadd	f7, f7, f8	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f8, 0(x4)	# 43
	fmul	f1, f8, f1	# 43
	fmul	f1, f1, f6	# 43
	fsub	f0, f7, f1	# 43
	jal		x0, fle_cont.16699	# 50
fle_else.16700:
	fmul	f6, f1, f1	# 36
	fmul	f7, f1, f6	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f7	# 38
	fsub	f1, f1, f8	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f6	# 38
	fmul	f8, f8, f7	# 38
	fadd	f1, f1, f8	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f8, 0(x4)	# 38
	fmul	f8, f8, f6	# 38
	fmul	f6, f8, f6	# 38
	fmul	f6, f6, f7	# 38
	fsub	f0, f1, f6	# 38
fle_cont.16699:
	jal		x0, fle_cont.16697	# 49
fle_else.16698:
	fsub	f1, f3, f1	# 49
	lw		x27, -32(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 49
	addi	x2, x2, -84	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 84	# 49
	lw		x1, -80(x2)	# 49
fle_cont.16697:
fle_cont.16695:
fle_cont.16693:
	jal		x0, fle_cont.16691	# 46
fle_else.16692:
	fsub	x31, x31, x31	# 46
	fsub	f1, x31, f1	# 46
	lw		x27, -32(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 46
	addi	x2, x2, -84	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 84	# 46
	lw		x1, -80(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.16691:
	ori		x4, x0, 2	# 742
	ori		x5, x0, 4	# 742
	mul		x4, x4, x5	# 742
	lw		x5, -48(x2)	# 742
	add		x4, x5, x4	# 742
	flw		f1, 0(x4)	# 742
	lui		x4, %hi(l.10373)	# 54
	ori		x4, x0, %lo(l.10373)	# 54
	flw		f2, 0(x4)	# 54
	fsw		f0, -80(x2)	# 54
	fle		x31, f2, f1	# 54
	beq		x31, x0, fle_else.16702	# 54
	flw		f2, -8(x2)	# 55
	fle		x31, f1, f2	# 55
	beq		x31, x0, fle_else.16704	# 55
	fmul	f1, f1, f1	# 41
	fmul	f3, f1, f1	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f4, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f1	# 43
	fsub	f4, f4, f5	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f5, f5, f3	# 43
	fadd	f4, f4, f5	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f5, 0(x4)	# 43
	fmul	f1, f5, f1	# 43
	fmul	f1, f1, f3	# 43
	fsub	f0, f4, f1	# 43
	jal		x0, fle_cont.16703	# 55
fle_else.16704:
	flw		f3, -16(x2)	# 55
	fsub	f1, f3, f1	# 55
	lw		x27, -32(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 55
	addi	x2, x2, -92	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 92	# 55
	lw		x1, -88(x2)	# 55
fle_cont.16703:
	jal		x0, fle_cont.16701	# 54
fle_else.16702:
	fsub	x31, x31, x31	# 54
	fsub	f1, x31, f1	# 54
	lw		x27, -4(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -88(x2)	# 54
	addi	x2, x2, -92	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 92	# 54
	lw		x1, -88(x2)	# 54
fle_cont.16701:
	ori		x4, x0, 2	# 743
	ori		x5, x0, 4	# 743
	mul		x4, x4, x5	# 743
	lw		x5, -48(x2)	# 743
	add		x4, x5, x4	# 743
	flw		f1, 0(x4)	# 743
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f2, 0(x4)	# 46
	fsw		f0, -88(x2)	# 46
	fle		x31, f2, f1	# 46
	beq		x31, x0, fle_else.16706	# 46
	flw		f2, -40(x2)	# 47
	fle		x31, f2, f1	# 47
	beq		x31, x0, fle_else.16708	# 47
	fsub	f1, f1, f2	# 47
	lw		x27, -32(x2)	# 47
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 47
	addi	x2, x2, -100	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 100	# 47
	lw		x1, -96(x2)	# 47
	jal		x0, fle_cont.16707	# 47
fle_else.16708:
	flw		f2, -24(x2)	# 48
	fle		x31, f2, f1	# 48
	beq		x31, x0, fle_else.16710	# 48
	fsub	f1, f1, f2	# 48
	lw		x27, -32(x2)	# 48
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 48
	addi	x2, x2, -100	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 100	# 48
	lw		x1, -96(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.16709	# 48
fle_else.16710:
	flw		f3, -16(x2)	# 49
	fle		x31, f1, f3	# 49
	beq		x31, x0, fle_else.16712	# 49
	flw		f2, -8(x2)	# 50
	fle		x31, f2, f1	# 50
	beq		x31, x0, fle_else.16714	# 50
	fsub	f1, f3, f1	# 50
	fmul	f1, f1, f1	# 41
	fmul	f2, f1, f1	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f3, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f0, f3, f1	# 43
	jal		x0, fle_cont.16713	# 50
fle_else.16714:
	fmul	f2, f1, f1	# 36
	fmul	f3, f1, f2	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f3	# 38
	fsub	f1, f1, f4	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f2	# 38
	fmul	f4, f4, f3	# 38
	fadd	f1, f1, f4	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f4, 0(x4)	# 38
	fmul	f4, f4, f2	# 38
	fmul	f2, f4, f2	# 38
	fmul	f2, f2, f3	# 38
	fsub	f0, f1, f2	# 38
fle_cont.16713:
	jal		x0, fle_cont.16711	# 49
fle_else.16712:
	fsub	f1, f2, f1	# 49
	lw		x27, -32(x2)	# 49
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 49
	addi	x2, x2, -100	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 100	# 49
	lw		x1, -96(x2)	# 49
fle_cont.16711:
fle_cont.16709:
fle_cont.16707:
	jal		x0, fle_cont.16705	# 46
fle_else.16706:
	fsub	x31, x31, x31	# 46
	fsub	f1, x31, f1	# 46
	lw		x27, -32(x2)	# 46
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -96(x2)	# 46
	addi	x2, x2, -100	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 100	# 46
	lw		x1, -96(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.16705:
	flw		f1, -88(x2)	# 745
	flw		f2, -72(x2)	# 745
	fmul	f3, f2, f1	# 745
	flw		f4, -80(x2)	# 746
	flw		f5, -64(x2)	# 746
	fmul	f6, f5, f4	# 746
	fmul	f6, f6, f1	# 746
	flw		f7, -56(x2)	# 746
	fmul	f8, f7, f0	# 746
	fsub	f6, f6, f8	# 746
	fmul	f8, f7, f4	# 747
	fmul	f8, f8, f1	# 747
	fmul	f9, f5, f0	# 747
	fadd	f8, f8, f9	# 747
	fmul	f9, f2, f0	# 749
	fmul	f10, f5, f4	# 750
	fmul	f10, f10, f0	# 750
	fmul	f11, f7, f1	# 750
	fadd	f10, f10, f11	# 750
	fmul	f11, f7, f4	# 751
	fmul	f0, f11, f0	# 751
	fmul	f1, f5, f1	# 751
	fsub	f0, f0, f1	# 751
	fsub	f1, f1, f1	# 4
	fsub	f1, f1, f4	# 4
	fmul	f4, f5, f2	# 754
	fmul	f2, f7, f2	# 755
	addi	x4, x0, 0	# 758
	ori		x5, x0, 4	# 758
	mul		x4, x4, x5	# 758
	lw		x5, 0(x2)	# 758
	add		x4, x5, x4	# 758
	flw		f5, 0(x4)	# 758
	ori		x4, x0, 1	# 759
	ori		x6, x0, 4	# 759
	mul		x4, x4, x6	# 759
	add		x4, x5, x4	# 759
	flw		f7, 0(x4)	# 759
	ori		x4, x0, 2	# 760
	ori		x6, x0, 4	# 760
	mul		x4, x4, x6	# 760
	add		x4, x5, x4	# 760
	flw		f11, 0(x4)	# 760
	addi	x4, x0, 0	# 765
	fmul	f12, f3, f3	# 8
	fmul	f12, f5, f12	# 765
	fmul	f13, f9, f9	# 8
	fmul	f13, f7, f13	# 765
	fadd	f12, f12, f13	# 765
	fmul	f13, f1, f1	# 8
	fmul	f13, f11, f13	# 765
	fadd	f12, f12, f13	# 765
	ori		x6, x0, 4	# 765
	mul		x4, x4, x6	# 765
	add		x4, x5, x4	# 765
	fsw		f12, 0(x4)	# 765
	ori		x4, x0, 1	# 766
	fmul	f12, f6, f6	# 8
	fmul	f12, f5, f12	# 766
	fmul	f13, f10, f10	# 8
	fmul	f13, f7, f13	# 766
	fadd	f12, f12, f13	# 766
	fmul	f13, f4, f4	# 8
	fmul	f13, f11, f13	# 766
	fadd	f12, f12, f13	# 766
	ori		x6, x0, 4	# 766
	mul		x4, x4, x6	# 766
	add		x4, x5, x4	# 766
	fsw		f12, 0(x4)	# 766
	ori		x4, x0, 2	# 767
	fmul	f12, f8, f8	# 8
	fmul	f12, f5, f12	# 767
	fmul	f13, f0, f0	# 8
	fmul	f13, f7, f13	# 767
	fadd	f12, f12, f13	# 767
	fmul	f13, f2, f2	# 8
	fmul	f13, f11, f13	# 767
	fadd	f12, f12, f13	# 767
	ori		x6, x0, 4	# 767
	mul		x4, x4, x6	# 767
	add		x4, x5, x4	# 767
	fsw		f12, 0(x4)	# 767
	addi	x4, x0, 0	# 770
	lui		x5, %hi(l.10825)	# 770
	ori		x5, x0, %lo(l.10825)	# 770
	flw		f12, 0(x5)	# 770
	fmul	f13, f5, f6	# 770
	fmul	f13, f13, f8	# 770
	fmul	f14, f7, f10	# 770
	fmul	f14, f14, f0	# 770
	fadd	f13, f13, f14	# 770
	fmul	f14, f11, f4	# 770
	fmul	f14, f14, f2	# 770
	fadd	f13, f13, f14	# 770
	fmul	f12, f12, f13	# 770
	ori		x5, x0, 4	# 770
	mul		x4, x4, x5	# 770
	lw		x5, -48(x2)	# 770
	add		x4, x5, x4	# 770
	fsw		f12, 0(x4)	# 770
	ori		x4, x0, 1	# 771
	lui		x6, %hi(l.10825)	# 771
	ori		x6, x0, %lo(l.10825)	# 771
	flw		f12, 0(x6)	# 771
	fmul	f13, f5, f3	# 771
	fmul	f8, f13, f8	# 771
	fmul	f13, f7, f9	# 771
	fmul	f0, f13, f0	# 771
	fadd	f0, f8, f0	# 771
	fmul	f8, f11, f1	# 771
	fmul	f2, f8, f2	# 771
	fadd	f0, f0, f2	# 771
	fmul	f0, f12, f0	# 771
	ori		x6, x0, 4	# 771
	mul		x4, x4, x6	# 771
	add		x4, x5, x4	# 771
	fsw		f0, 0(x4)	# 771
	ori		x4, x0, 2	# 772
	lui		x6, %hi(l.10825)	# 772
	ori		x6, x0, %lo(l.10825)	# 772
	flw		f0, 0(x6)	# 772
	fmul	f2, f5, f3	# 772
	fmul	f2, f2, f6	# 772
	fmul	f3, f7, f9	# 772
	fmul	f3, f3, f10	# 772
	fadd	f2, f2, f3	# 772
	fmul	f1, f11, f1	# 772
	fmul	f1, f1, f4	# 772
	fadd	f1, f2, f1	# 772
	fmul	f0, f0, f1	# 772
	ori		x6, x0, 4	# 772
	mul		x4, x4, x6	# 772
	add		x4, x5, x4	# 772
	fsw		f0, 0(x4)	# 772
	jalr	x0, x1, 0	# 772
read_nth_object.2670:
	lw		x5, 8(x27)	# 779
	lw		x6, 4(x27)	# 779
	sw		x5, 0(x2)	# 779
	sw		x6, -4(x2)	# 779
	sw		x4, -8(x2)	# 779
	sw		x1, -12(x2)	# 779
	addi	x2, x2, -16	# 779
	jal		x1, min_caml_read_int	# 779
	addi	x2, x2, 16	# 779
	lw		x1, -12(x2)	# 779
	lui		x5, -1	# 780
	ori		x5, x0, -1	# 780
	beq		x4, x5, beq.16716	# 780
	sw		x4, -12(x2)	# 782
	sw		x1, -16(x2)	# 782
	addi	x2, x2, -20	# 782
	jal		x1, min_caml_read_int	# 782
	addi	x2, x2, 20	# 782
	lw		x1, -16(x2)	# 782
	sw		x4, -16(x2)	# 783
	sw		x1, -20(x2)	# 783
	addi	x2, x2, -24	# 783
	jal		x1, min_caml_read_int	# 783
	addi	x2, x2, 24	# 783
	lw		x1, -20(x2)	# 783
	sw		x4, -20(x2)	# 784
	sw		x1, -24(x2)	# 784
	addi	x2, x2, -28	# 784
	jal		x1, min_caml_read_int	# 784
	addi	x2, x2, 28	# 784
	lw		x1, -24(x2)	# 784
	ori		x5, x0, 3	# 786
	lui		x6, %hi(l.10373)	# 786
	ori		x6, x0, %lo(l.10373)	# 786
	flw		f0, 0(x6)	# 786
	sw		x4, -24(x2)	# 786
	addi	x4, x5, 0
	sw		x1, -28(x2)	# 786
	addi	x2, x2, -32	# 786
	jal		x1, min_caml_create_float_array	# 786
	addi	x2, x2, 32	# 786
	lw		x1, -28(x2)	# 786
	addi	x5, x0, 0	# 787
	sw		x4, -28(x2)	# 787
	sw		x5, -32(x2)	# 787
	sw		x1, -36(x2)	# 787
	addi	x2, x2, -40	# 787
	jal		x1, min_caml_read_float	# 787
	addi	x2, x2, 40	# 787
	lw		x1, -36(x2)	# 787
	ori		x4, x0, 4	# 787
	lw		x5, -32(x2)	# 787
	mul		x4, x5, x4	# 787
	lw		x5, -28(x2)	# 787
	add		x4, x5, x4	# 787
	fsw		f0, 0(x4)	# 787
	ori		x4, x0, 1	# 788
	sw		x4, -36(x2)	# 788
	sw		x1, -40(x2)	# 788
	addi	x2, x2, -44	# 788
	jal		x1, min_caml_read_float	# 788
	addi	x2, x2, 44	# 788
	lw		x1, -40(x2)	# 788
	ori		x4, x0, 4	# 788
	lw		x5, -36(x2)	# 788
	mul		x4, x5, x4	# 788
	lw		x5, -28(x2)	# 788
	add		x4, x5, x4	# 788
	fsw		f0, 0(x4)	# 788
	ori		x4, x0, 2	# 789
	sw		x4, -40(x2)	# 789
	sw		x1, -44(x2)	# 789
	addi	x2, x2, -48	# 789
	jal		x1, min_caml_read_float	# 789
	addi	x2, x2, 48	# 789
	lw		x1, -44(x2)	# 789
	ori		x4, x0, 4	# 789
	lw		x5, -40(x2)	# 789
	mul		x4, x5, x4	# 789
	lw		x5, -28(x2)	# 789
	add		x4, x5, x4	# 789
	fsw		f0, 0(x4)	# 789
	ori		x4, x0, 3	# 791
	lui		x6, %hi(l.10373)	# 791
	ori		x6, x0, %lo(l.10373)	# 791
	flw		f0, 0(x6)	# 791
	sw		x1, -44(x2)	# 791
	addi	x2, x2, -48	# 791
	jal		x1, min_caml_create_float_array	# 791
	addi	x2, x2, 48	# 791
	lw		x1, -44(x2)	# 791
	addi	x5, x0, 0	# 792
	sw		x4, -44(x2)	# 792
	sw		x5, -48(x2)	# 792
	sw		x1, -52(x2)	# 792
	addi	x2, x2, -56	# 792
	jal		x1, min_caml_read_float	# 792
	addi	x2, x2, 56	# 792
	lw		x1, -52(x2)	# 792
	ori		x4, x0, 4	# 792
	lw		x5, -48(x2)	# 792
	mul		x4, x5, x4	# 792
	lw		x5, -44(x2)	# 792
	add		x4, x5, x4	# 792
	fsw		f0, 0(x4)	# 792
	ori		x4, x0, 1	# 793
	sw		x4, -52(x2)	# 793
	sw		x1, -56(x2)	# 793
	addi	x2, x2, -60	# 793
	jal		x1, min_caml_read_float	# 793
	addi	x2, x2, 60	# 793
	lw		x1, -56(x2)	# 793
	ori		x4, x0, 4	# 793
	lw		x5, -52(x2)	# 793
	mul		x4, x5, x4	# 793
	lw		x5, -44(x2)	# 793
	add		x4, x5, x4	# 793
	fsw		f0, 0(x4)	# 793
	ori		x4, x0, 2	# 794
	sw		x4, -56(x2)	# 794
	sw		x1, -60(x2)	# 794
	addi	x2, x2, -64	# 794
	jal		x1, min_caml_read_float	# 794
	addi	x2, x2, 64	# 794
	lw		x1, -60(x2)	# 794
	ori		x4, x0, 4	# 794
	lw		x5, -56(x2)	# 794
	mul		x4, x5, x4	# 794
	lw		x5, -44(x2)	# 794
	add		x4, x5, x4	# 794
	fsw		f0, 0(x4)	# 794
	sw		x1, -60(x2)	# 796
	addi	x2, x2, -64	# 796
	jal		x1, min_caml_read_float	# 796
	addi	x2, x2, 64	# 796
	lw		x1, -60(x2)	# 796
	lui		x4, %hi(l.10373)	# 3
	ori		x4, x0, %lo(l.10373)	# 3
	flw		f1, 0(x4)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.16718	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.16717	# 3
fle_else.16718:
	ori		x4, x0, 1	# 3
fle_cont.16717:
	ori		x5, x0, 2	# 798
	lui		x6, %hi(l.10373)	# 798
	ori		x6, x0, %lo(l.10373)	# 798
	flw		f0, 0(x6)	# 798
	sw		x4, -60(x2)	# 798
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 798
	addi	x2, x2, -68	# 798
	jal		x1, min_caml_create_float_array	# 798
	addi	x2, x2, 68	# 798
	lw		x1, -64(x2)	# 798
	addi	x5, x0, 0	# 799
	sw		x4, -64(x2)	# 799
	sw		x5, -68(x2)	# 799
	sw		x1, -72(x2)	# 799
	addi	x2, x2, -76	# 799
	jal		x1, min_caml_read_float	# 799
	addi	x2, x2, 76	# 799
	lw		x1, -72(x2)	# 799
	ori		x4, x0, 4	# 799
	lw		x5, -68(x2)	# 799
	mul		x4, x5, x4	# 799
	lw		x5, -64(x2)	# 799
	add		x4, x5, x4	# 799
	fsw		f0, 0(x4)	# 799
	ori		x4, x0, 1	# 800
	sw		x4, -72(x2)	# 800
	sw		x1, -76(x2)	# 800
	addi	x2, x2, -80	# 800
	jal		x1, min_caml_read_float	# 800
	addi	x2, x2, 80	# 800
	lw		x1, -76(x2)	# 800
	ori		x4, x0, 4	# 800
	lw		x5, -72(x2)	# 800
	mul		x4, x5, x4	# 800
	lw		x5, -64(x2)	# 800
	add		x4, x5, x4	# 800
	fsw		f0, 0(x4)	# 800
	ori		x4, x0, 3	# 802
	lui		x6, %hi(l.10373)	# 802
	ori		x6, x0, %lo(l.10373)	# 802
	flw		f0, 0(x6)	# 802
	sw		x1, -76(x2)	# 802
	addi	x2, x2, -80	# 802
	jal		x1, min_caml_create_float_array	# 802
	addi	x2, x2, 80	# 802
	lw		x1, -76(x2)	# 802
	addi	x5, x0, 0	# 803
	sw		x4, -76(x2)	# 803
	sw		x5, -80(x2)	# 803
	sw		x1, -84(x2)	# 803
	addi	x2, x2, -88	# 803
	jal		x1, min_caml_read_float	# 803
	addi	x2, x2, 88	# 803
	lw		x1, -84(x2)	# 803
	ori		x4, x0, 4	# 803
	lw		x5, -80(x2)	# 803
	mul		x4, x5, x4	# 803
	lw		x5, -76(x2)	# 803
	add		x4, x5, x4	# 803
	fsw		f0, 0(x4)	# 803
	ori		x4, x0, 1	# 804
	sw		x4, -84(x2)	# 804
	sw		x1, -88(x2)	# 804
	addi	x2, x2, -92	# 804
	jal		x1, min_caml_read_float	# 804
	addi	x2, x2, 92	# 804
	lw		x1, -88(x2)	# 804
	ori		x4, x0, 4	# 804
	lw		x5, -84(x2)	# 804
	mul		x4, x5, x4	# 804
	lw		x5, -76(x2)	# 804
	add		x4, x5, x4	# 804
	fsw		f0, 0(x4)	# 804
	ori		x4, x0, 2	# 805
	sw		x4, -88(x2)	# 805
	sw		x1, -92(x2)	# 805
	addi	x2, x2, -96	# 805
	jal		x1, min_caml_read_float	# 805
	addi	x2, x2, 96	# 805
	lw		x1, -92(x2)	# 805
	ori		x4, x0, 4	# 805
	lw		x5, -88(x2)	# 805
	mul		x4, x5, x4	# 805
	lw		x5, -76(x2)	# 805
	add		x4, x5, x4	# 805
	fsw		f0, 0(x4)	# 805
	ori		x4, x0, 3	# 807
	lui		x6, %hi(l.10373)	# 807
	ori		x6, x0, %lo(l.10373)	# 807
	flw		f0, 0(x6)	# 807
	sw		x1, -92(x2)	# 807
	addi	x2, x2, -96	# 807
	jal		x1, min_caml_create_float_array	# 807
	addi	x2, x2, 96	# 807
	lw		x1, -92(x2)	# 807
	addi	x5, x0, 0	# 808
	lw		x6, -24(x2)	# 808
	sw		x4, -92(x2)	# 808
	beq		x6, x5, beq.16720	# 808
	addi	x5, x0, 0	# 810
	sw		x5, -96(x2)	# 810
	sw		x1, -100(x2)	# 810
	addi	x2, x2, -104	# 810
	jal		x1, min_caml_read_float	# 810
	addi	x2, x2, 104	# 810
	lw		x1, -100(x2)	# 810
	lui		x4, %hi(l.10621)	# 677
	ori		x4, x0, %lo(l.10621)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	ori		x4, x0, 4	# 810
	lw		x5, -96(x2)	# 810
	mul		x4, x5, x4	# 810
	lw		x5, -92(x2)	# 810
	add		x4, x5, x4	# 810
	fsw		f0, 0(x4)	# 810
	ori		x4, x0, 1	# 811
	sw		x4, -100(x2)	# 811
	sw		x1, -104(x2)	# 811
	addi	x2, x2, -108	# 811
	jal		x1, min_caml_read_float	# 811
	addi	x2, x2, 108	# 811
	lw		x1, -104(x2)	# 811
	lui		x4, %hi(l.10621)	# 677
	ori		x4, x0, %lo(l.10621)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	ori		x4, x0, 4	# 811
	lw		x5, -100(x2)	# 811
	mul		x4, x5, x4	# 811
	lw		x5, -92(x2)	# 811
	add		x4, x5, x4	# 811
	fsw		f0, 0(x4)	# 811
	ori		x4, x0, 2	# 812
	sw		x4, -104(x2)	# 812
	sw		x1, -108(x2)	# 812
	addi	x2, x2, -112	# 812
	jal		x1, min_caml_read_float	# 812
	addi	x2, x2, 112	# 812
	lw		x1, -108(x2)	# 812
	lui		x4, %hi(l.10621)	# 677
	ori		x4, x0, %lo(l.10621)	# 677
	flw		f1, 0(x4)	# 677
	fmul	f0, f0, f1	# 677
	ori		x4, x0, 4	# 812
	lw		x5, -104(x2)	# 812
	mul		x4, x5, x4	# 812
	lw		x5, -92(x2)	# 812
	add		x4, x5, x4	# 812
	fsw		f0, 0(x4)	# 812
	jal		x0, beq_cont.16719	# 808
beq.16720:
beq_cont.16719:
	ori		x4, x0, 2	# 819
	lw		x5, -16(x2)	# 819
	beq		x5, x4, beq.16722	# 819
	lw		x4, -60(x2)	# 819
	jal		x0, beq_cont.16721	# 819
beq.16722:
	ori		x4, x0, 1	# 819
beq_cont.16721:
	ori		x6, x0, 4	# 820
	lui		x7, %hi(l.10373)	# 820
	ori		x7, x0, %lo(l.10373)	# 820
	flw		f0, 0(x7)	# 820
	sw		x4, -108(x2)	# 820
	addi	x4, x6, 0
	sw		x1, -112(x2)	# 820
	addi	x2, x2, -116	# 820
	jal		x1, min_caml_create_float_array	# 820
	addi	x2, x2, 116	# 820
	lw		x1, -112(x2)	# 820
	addi	x5, x3, 0	# 823
	addi	x3, x3, 44	# 823
	sw		x4, 40(x5)	# 823
	lw		x4, -92(x2)	# 823
	sw		x4, 36(x5)	# 823
	lw		x6, -76(x2)	# 823
	sw		x6, 32(x5)	# 823
	lw		x6, -64(x2)	# 823
	sw		x6, 28(x5)	# 823
	lw		x6, -108(x2)	# 823
	sw		x6, 24(x5)	# 823
	lw		x6, -44(x2)	# 823
	sw		x6, 20(x5)	# 823
	lw		x6, -28(x2)	# 823
	sw		x6, 16(x5)	# 823
	lw		x7, -24(x2)	# 823
	sw		x7, 12(x5)	# 823
	lw		x8, -20(x2)	# 823
	sw		x8, 8(x5)	# 823
	lw		x8, -16(x2)	# 823
	sw		x8, 4(x5)	# 823
	lw		x9, -12(x2)	# 823
	sw		x9, 0(x5)	# 823
	ori		x9, x0, 4	# 831
	lw		x10, -8(x2)	# 831
	mul		x9, x10, x9	# 831
	lw		x10, -4(x2)	# 831
	add		x9, x10, x9	# 831
	sw		x5, 0(x9)	# 831
	ori		x5, x0, 3	# 833
	beq		x8, x5, beq.16724	# 833
	ori		x5, x0, 2	# 843
	beq		x8, x5, beq.16726	# 843
	jal		x0, beq_cont.16725	# 843
beq.16726:
	addi	x5, x0, 0	# 845
	lw		x8, -60(x2)	# 845
	beq		x8, x5, beq.16728	# 845
	addi	x5, x0, 0	# 845
	jal		x0, beq_cont.16727	# 845
beq.16728:
	ori		x5, x0, 1	# 845
beq_cont.16727:
	addi	x4, x6, 0
	sw		x1, -112(x2)	# 845
	addi	x2, x2, -116	# 845
	jal		x1, vecunit_sgn.2565	# 845
	addi	x2, x2, 116	# 845
	lw		x1, -112(x2)	# 845
beq_cont.16725:
	jal		x0, beq_cont.16723	# 833
beq.16724:
	addi	x5, x0, 0	# 836
	ori		x8, x0, 4	# 836
	mul		x5, x5, x8	# 836
	add		x5, x6, x5	# 836
	flw		f0, 0(x5)	# 836
	addi	x5, x0, 0	# 837
	lui		x8, %hi(l.10373)	# 1
	ori		x8, x0, %lo(l.10373)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16730	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.16729	# 1
feq_else.16730:
	addi	x8, x0, 0	# 1
feq_cont.16729:
	addi	x9, x0, 0	# 837
	beq		x8, x9, beq.16732	# 837
	lui		x8, %hi(l.10373)	# 837
	ori		x8, x0, %lo(l.10373)	# 837
	flw		f0, 0(x8)	# 837
	jal		x0, beq_cont.16731	# 837
beq.16732:
	lui		x8, %hi(l.10373)	# 1
	ori		x8, x0, %lo(l.10373)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16734	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.16733	# 1
feq_else.16734:
	addi	x8, x0, 0	# 1
feq_cont.16733:
	addi	x9, x0, 0	# 212
	beq		x8, x9, beq.16736	# 212
	lui		x8, %hi(l.10373)	# 212
	ori		x8, x0, %lo(l.10373)	# 212
	flw		f1, 0(x8)	# 212
	jal		x0, beq_cont.16735	# 212
beq.16736:
	lui		x8, %hi(l.10373)	# 2
	ori		x8, x0, %lo(l.10373)	# 2
	flw		f1, 0(x8)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.16738	# 2
	addi	x8, x0, 0	# 2
	jal		x0, fle_cont.16737	# 2
fle_else.16738:
	ori		x8, x0, 1	# 2
fle_cont.16737:
	addi	x9, x0, 0	# 213
	beq		x8, x9, beq.16740	# 213
	lui		x8, %hi(l.10376)	# 213
	ori		x8, x0, %lo(l.10376)	# 213
	flw		f1, 0(x8)	# 213
	jal		x0, beq_cont.16739	# 213
beq.16740:
	lui		x8, %hi(l.10483)	# 214
	ori		x8, x0, %lo(l.10483)	# 214
	flw		f1, 0(x8)	# 214
beq_cont.16739:
beq_cont.16735:
	fmul	f0, f0, f0	# 8
	fdiv	f0, f1, f0	# 837
beq_cont.16731:
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
	lui		x8, %hi(l.10373)	# 1
	ori		x8, x0, %lo(l.10373)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16742	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.16741	# 1
feq_else.16742:
	addi	x8, x0, 0	# 1
feq_cont.16741:
	addi	x9, x0, 0	# 839
	beq		x8, x9, beq.16744	# 839
	lui		x8, %hi(l.10373)	# 839
	ori		x8, x0, %lo(l.10373)	# 839
	flw		f0, 0(x8)	# 839
	jal		x0, beq_cont.16743	# 839
beq.16744:
	lui		x8, %hi(l.10373)	# 1
	ori		x8, x0, %lo(l.10373)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16746	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.16745	# 1
feq_else.16746:
	addi	x8, x0, 0	# 1
feq_cont.16745:
	addi	x9, x0, 0	# 212
	beq		x8, x9, beq.16748	# 212
	lui		x8, %hi(l.10373)	# 212
	ori		x8, x0, %lo(l.10373)	# 212
	flw		f1, 0(x8)	# 212
	jal		x0, beq_cont.16747	# 212
beq.16748:
	lui		x8, %hi(l.10373)	# 2
	ori		x8, x0, %lo(l.10373)	# 2
	flw		f1, 0(x8)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.16750	# 2
	addi	x8, x0, 0	# 2
	jal		x0, fle_cont.16749	# 2
fle_else.16750:
	ori		x8, x0, 1	# 2
fle_cont.16749:
	addi	x9, x0, 0	# 213
	beq		x8, x9, beq.16752	# 213
	lui		x8, %hi(l.10376)	# 213
	ori		x8, x0, %lo(l.10376)	# 213
	flw		f1, 0(x8)	# 213
	jal		x0, beq_cont.16751	# 213
beq.16752:
	lui		x8, %hi(l.10483)	# 214
	ori		x8, x0, %lo(l.10483)	# 214
	flw		f1, 0(x8)	# 214
beq_cont.16751:
beq_cont.16747:
	fmul	f0, f0, f0	# 8
	fdiv	f0, f1, f0	# 839
beq_cont.16743:
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
	lui		x8, %hi(l.10373)	# 1
	ori		x8, x0, %lo(l.10373)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16754	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.16753	# 1
feq_else.16754:
	addi	x8, x0, 0	# 1
feq_cont.16753:
	addi	x9, x0, 0	# 841
	beq		x8, x9, beq.16756	# 841
	lui		x8, %hi(l.10373)	# 841
	ori		x8, x0, %lo(l.10373)	# 841
	flw		f0, 0(x8)	# 841
	jal		x0, beq_cont.16755	# 841
beq.16756:
	lui		x8, %hi(l.10373)	# 1
	ori		x8, x0, %lo(l.10373)	# 1
	flw		f1, 0(x8)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16758	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.16757	# 1
feq_else.16758:
	addi	x8, x0, 0	# 1
feq_cont.16757:
	addi	x9, x0, 0	# 212
	beq		x8, x9, beq.16760	# 212
	lui		x8, %hi(l.10373)	# 212
	ori		x8, x0, %lo(l.10373)	# 212
	flw		f1, 0(x8)	# 212
	jal		x0, beq_cont.16759	# 212
beq.16760:
	lui		x8, %hi(l.10373)	# 2
	ori		x8, x0, %lo(l.10373)	# 2
	flw		f1, 0(x8)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.16762	# 2
	addi	x8, x0, 0	# 2
	jal		x0, fle_cont.16761	# 2
fle_else.16762:
	ori		x8, x0, 1	# 2
fle_cont.16761:
	addi	x9, x0, 0	# 213
	beq		x8, x9, beq.16764	# 213
	lui		x8, %hi(l.10376)	# 213
	ori		x8, x0, %lo(l.10376)	# 213
	flw		f1, 0(x8)	# 213
	jal		x0, beq_cont.16763	# 213
beq.16764:
	lui		x8, %hi(l.10483)	# 214
	ori		x8, x0, %lo(l.10483)	# 214
	flw		f1, 0(x8)	# 214
beq_cont.16763:
beq_cont.16759:
	fmul	f0, f0, f0	# 8
	fdiv	f0, f1, f0	# 841
beq_cont.16755:
	ori		x8, x0, 4	# 841
	mul		x5, x5, x8	# 841
	add		x5, x6, x5	# 841
	fsw		f0, 0(x5)	# 841
beq_cont.16723:
	addi	x4, x0, 0	# 849
	lw		x5, -24(x2)	# 849
	beq		x5, x4, beq.16766	# 849
	lw		x4, -28(x2)	# 850
	lw		x5, -92(x2)	# 850
	lw		x27, 0(x2)	# 850
	sw		x1, -112(x2)	# 850
	addi	x2, x2, -116	# 850
	lw		x31, 0(x27)	# 850
	jalr	x1, x31, 0	# 850
	addi	x2, x2, 116	# 850
	lw		x1, -112(x2)	# 850
	jal		x0, beq_cont.16765	# 849
beq.16766:
beq_cont.16765:
	ori		x4, x0, 1	# 853
	jalr	x0, x1, 0	# 853
beq.16716:
	addi	x4, x0, 0	# 856
	jalr	x0, x1, 0	# 856
read_object.2672:
	lw		x5, 8(x27)	# 861
	lw		x6, 4(x27)	# 861
	ori		x7, x0, 60	# 861
	ble		x7, x4, ble.16767	# 861
	sw		x27, 0(x2)	# 862
	sw		x5, -4(x2)	# 862
	sw		x4, -8(x2)	# 862
	sw		x6, -12(x2)	# 862
	addi	x27, x5, 0
	sw		x1, -16(x2)	# 862
	addi	x2, x2, -20	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 20	# 862
	lw		x1, -16(x2)	# 862
	addi	x5, x0, 0	# 862
	beq		x4, x5, beq.16768	# 862
	lw		x4, -8(x2)	# 863
	addi	x4, x4, 1	# 863
	ori		x5, x0, 60	# 861
	ble		x5, x4, ble.16769	# 861
	lw		x27, -4(x2)	# 862
	sw		x4, -16(x2)	# 862
	sw		x1, -20(x2)	# 862
	addi	x2, x2, -24	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 24	# 862
	lw		x1, -20(x2)	# 862
	addi	x5, x0, 0	# 862
	beq		x4, x5, beq.16770	# 862
	lw		x4, -16(x2)	# 863
	addi	x4, x4, 1	# 863
	lw		x27, 0(x2)	# 863
	lw		x31, 0(x27)	# 863
	jalr	x0, x31, 0	# 863
beq.16770:
	addi	x4, x0, 0	# 865
	ori		x5, x0, 4	# 865
	mul		x4, x4, x5	# 865
	lw		x5, -12(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -16(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.16769:
	jalr	x0, x1, 0	# 866
beq.16768:
	addi	x4, x0, 0	# 865
	ori		x5, x0, 4	# 865
	mul		x4, x4, x5	# 865
	lw		x5, -12(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x5, -8(x2)	# 865
	sw		x5, 0(x4)	# 865
	jalr	x0, x1, 0	# 865
ble.16767:
	jalr	x0, x1, 0	# 866
read_net_item.2676:
	sw		x4, 0(x2)	# 877
	sw		x1, -4(x2)	# 877
	addi	x2, x2, -8	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 8	# 877
	lw		x1, -4(x2)	# 877
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	beq		x4, x5, beq.16775	# 878
	lw		x5, 0(x2)	# 880
	addi	x6, x5, 1	# 880
	sw		x4, -4(x2)	# 877
	sw		x6, -8(x2)	# 877
	sw		x1, -12(x2)	# 877
	addi	x2, x2, -16	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 16	# 877
	lw		x1, -12(x2)	# 877
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	beq		x4, x5, beq.16777	# 878
	lw		x5, -8(x2)	# 880
	addi	x6, x5, 1	# 880
	sw		x4, -12(x2)	# 880
	addi	x4, x6, 0
	sw		x1, -16(x2)	# 880
	addi	x2, x2, -20	# 880
	jal		x1, read_net_item.2676	# 880
	addi	x2, x2, 20	# 880
	lw		x1, -16(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -8(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -12(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.16776	# 878
beq.16777:
	lw		x4, -8(x2)	# 878
	addi	x4, x4, 1	# 878
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	sw		x1, -16(x2)	# 878
	addi	x2, x2, -20	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 20	# 878
	lw		x1, -16(x2)	# 878
beq_cont.16776:
	ori		x5, x0, 4	# 881
	lw		x6, 0(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -4(x2)	# 881
	sw		x6, 0(x5)	# 881
	jalr	x0, x1, 0	# 881
beq.16775:
	lw		x4, 0(x2)	# 878
	addi	x4, x4, 1	# 878
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	jal		x0, min_caml_create_array	# 878
read_or_network.2678:
	addi	x5, x0, 0	# 885
	sw		x4, 0(x2)	# 877
	sw		x5, -4(x2)	# 877
	sw		x1, -8(x2)	# 877
	addi	x2, x2, -12	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 12	# 877
	lw		x1, -8(x2)	# 877
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	beq		x4, x5, beq.16779	# 878
	ori		x5, x0, 1	# 880
	sw		x4, -8(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -12(x2)	# 880
	addi	x2, x2, -16	# 880
	jal		x1, read_net_item.2676	# 880
	addi	x2, x2, 16	# 880
	lw		x1, -12(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -4(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -8(x2)	# 881
	sw		x6, 0(x5)	# 881
	addi	x5, x4, 0	# 881
	jal		x0, beq_cont.16778	# 878
beq.16779:
	ori		x4, x0, 1	# 878
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	sw		x1, -12(x2)	# 878
	addi	x2, x2, -16	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 16	# 878
	lw		x1, -12(x2)	# 878
	addi	x5, x4, 0	# 878
beq_cont.16778:
	addi	x4, x0, 0	# 886
	ori		x6, x0, 4	# 886
	mul		x4, x4, x6	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lui		x6, -1	# 886
	ori		x6, x0, -1	# 886
	beq		x4, x6, beq.16780	# 886
	lw		x4, 0(x2)	# 889
	addi	x6, x4, 1	# 889
	addi	x7, x0, 0	# 885
	sw		x5, -12(x2)	# 885
	sw		x6, -16(x2)	# 885
	addi	x4, x7, 0
	sw		x1, -20(x2)	# 885
	addi	x2, x2, -24	# 885
	jal		x1, read_net_item.2676	# 885
	addi	x2, x2, 24	# 885
	lw		x1, -20(x2)	# 885
	addi	x5, x4, 0	# 885
	addi	x4, x0, 0	# 886
	ori		x6, x0, 4	# 886
	mul		x4, x4, x6	# 886
	add		x4, x5, x4	# 886
	lw		x4, 0(x4)	# 886
	lui		x6, -1	# 886
	ori		x6, x0, -1	# 886
	beq		x4, x6, beq.16782	# 886
	lw		x4, -16(x2)	# 889
	addi	x6, x4, 1	# 889
	sw		x5, -20(x2)	# 889
	addi	x4, x6, 0
	sw		x1, -24(x2)	# 889
	addi	x2, x2, -28	# 889
	jal		x1, read_or_network.2678	# 889
	addi	x2, x2, 28	# 889
	lw		x1, -24(x2)	# 889
	ori		x5, x0, 4	# 890
	lw		x6, -16(x2)	# 890
	mul		x5, x6, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -20(x2)	# 890
	sw		x6, 0(x5)	# 890
	jal		x0, beq_cont.16781	# 886
beq.16782:
	lw		x4, -16(x2)	# 887
	addi	x4, x4, 1	# 887
	sw		x1, -24(x2)	# 887
	addi	x2, x2, -28	# 887
	jal		x1, min_caml_create_array	# 887
	addi	x2, x2, 28	# 887
	lw		x1, -24(x2)	# 887
beq_cont.16781:
	ori		x5, x0, 4	# 890
	lw		x6, 0(x2)	# 890
	mul		x5, x6, x5	# 890
	add		x5, x4, x5	# 890
	lw		x6, -12(x2)	# 890
	sw		x6, 0(x5)	# 890
	jalr	x0, x1, 0	# 890
beq.16780:
	lw		x4, 0(x2)	# 887
	addi	x4, x4, 1	# 887
	jal		x0, min_caml_create_array	# 887
read_and_network.2680:
	lw		x5, 4(x27)	# 894
	addi	x6, x0, 0	# 894
	sw		x27, 0(x2)	# 877
	sw		x5, -4(x2)	# 877
	sw		x4, -8(x2)	# 877
	sw		x6, -12(x2)	# 877
	sw		x1, -16(x2)	# 877
	addi	x2, x2, -20	# 877
	jal		x1, min_caml_read_int	# 877
	addi	x2, x2, 20	# 877
	lw		x1, -16(x2)	# 877
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	beq		x4, x5, beq.16784	# 878
	ori		x5, x0, 1	# 880
	sw		x4, -16(x2)	# 880
	addi	x4, x5, 0
	sw		x1, -20(x2)	# 880
	addi	x2, x2, -24	# 880
	jal		x1, read_net_item.2676	# 880
	addi	x2, x2, 24	# 880
	lw		x1, -20(x2)	# 880
	ori		x5, x0, 4	# 881
	lw		x6, -12(x2)	# 881
	mul		x5, x6, x5	# 881
	add		x5, x4, x5	# 881
	lw		x6, -16(x2)	# 881
	sw		x6, 0(x5)	# 881
	jal		x0, beq_cont.16783	# 878
beq.16784:
	ori		x4, x0, 1	# 878
	lui		x5, -1	# 878
	ori		x5, x0, -1	# 878
	sw		x1, -20(x2)	# 878
	addi	x2, x2, -24	# 878
	jal		x1, min_caml_create_array	# 878
	addi	x2, x2, 24	# 878
	lw		x1, -20(x2)	# 878
beq_cont.16783:
	addi	x5, x0, 0	# 895
	ori		x6, x0, 4	# 895
	mul		x5, x5, x6	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lui		x6, -1	# 895
	ori		x6, x0, -1	# 895
	beq		x5, x6, beq.16785	# 895
	ori		x5, x0, 4	# 897
	lw		x6, -8(x2)	# 897
	mul		x5, x6, x5	# 897
	lw		x7, -4(x2)	# 897
	add		x5, x7, x5	# 897
	sw		x4, 0(x5)	# 897
	addi	x4, x6, 1	# 898
	addi	x5, x0, 0	# 894
	sw		x4, -20(x2)	# 894
	addi	x4, x5, 0
	sw		x1, -24(x2)	# 894
	addi	x2, x2, -28	# 894
	jal		x1, read_net_item.2676	# 894
	addi	x2, x2, 28	# 894
	lw		x1, -24(x2)	# 894
	addi	x5, x0, 0	# 895
	ori		x6, x0, 4	# 895
	mul		x5, x5, x6	# 895
	add		x5, x4, x5	# 895
	lw		x5, 0(x5)	# 895
	lui		x6, -1	# 895
	ori		x6, x0, -1	# 895
	beq		x5, x6, beq.16786	# 895
	ori		x5, x0, 4	# 897
	lw		x6, -20(x2)	# 897
	mul		x5, x6, x5	# 897
	lw		x7, -4(x2)	# 897
	add		x5, x7, x5	# 897
	sw		x4, 0(x5)	# 897
	addi	x4, x6, 1	# 898
	lw		x27, 0(x2)	# 898
	lw		x31, 0(x27)	# 898
	jalr	x0, x31, 0	# 898
beq.16786:
	jalr	x0, x1, 0	# 895
beq.16785:
	jalr	x0, x1, 0	# 895
solver_rect_surface.2684:
	lw		x9, 4(x27)	# 928
	ori		x10, x0, 4	# 928
	mul		x10, x6, x10	# 928
	add		x10, x5, x10	# 928
	flw		f3, 0(x10)	# 928
	lui		x10, %hi(l.10373)	# 1
	ori		x10, x0, %lo(l.10373)	# 1
	flw		f4, 0(x10)	# 1
	feq		x31, f3, f4	# 1
	beq		x31, x0, feq_else.16790	# 1
	ori		x10, x0, 1	# 1
	jal		x0, feq_cont.16789	# 1
feq_else.16790:
	addi	x10, x0, 0	# 1
feq_cont.16789:
	addi	x11, x0, 0	# 928
	beq		x10, x11, beq.16791	# 928
	addi	x4, x0, 0	# 928
	jalr	x0, x1, 0	# 928
beq.16791:
	lw		x10, 16(x4)	# 421
	lw		x4, 24(x4)	# 373
	ori		x11, x0, 4	# 930
	mul		x11, x6, x11	# 930
	add		x11, x5, x11	# 930
	flw		f3, 0(x11)	# 930
	lui		x11, %hi(l.10373)	# 3
	ori		x11, x0, %lo(l.10373)	# 3
	flw		f4, 0(x11)	# 3
	fle		x31, f4, f3	# 3
	beq		x31, x0, fle_else.16793	# 3
	addi	x11, x0, 0	# 3
	jal		x0, fle_cont.16792	# 3
fle_else.16793:
	ori		x11, x0, 1	# 3
fle_cont.16792:
	addi	x12, x0, 0	# 204
	beq		x4, x12, beq.16795	# 204
	addi	x4, x0, 0	# 204
	beq		x11, x4, beq.16797	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.16796	# 204
beq.16797:
	ori		x4, x0, 1	# 204
beq_cont.16796:
	jal		x0, beq_cont.16794	# 204
beq.16795:
	addi	x4, x11, 0	# 204
beq_cont.16794:
	ori		x11, x0, 4	# 930
	mul		x11, x6, x11	# 930
	add		x11, x10, x11	# 930
	flw		f3, 0(x11)	# 930
	addi	x11, x0, 0	# 219
	beq		x4, x11, beq.16799	# 219
	jal		x0, beq_cont.16798	# 219
beq.16799:
	fsub	x31, x31, x31	# 4
	fsub	f3, x31, f3	# 4
beq_cont.16798:
	fsub	f0, f3, f0	# 932
	ori		x4, x0, 4	# 932
	mul		x4, x6, x4	# 932
	add		x4, x5, x4	# 932
	flw		f3, 0(x4)	# 932
	fdiv	f0, f0, f3	# 932
	ori		x4, x0, 4	# 933
	mul		x4, x7, x4	# 933
	add		x4, x5, x4	# 933
	flw		f3, 0(x4)	# 933
	fmul	f3, f0, f3	# 933
	fadd	f1, f3, f1	# 933
	lui		x4, %hi(l.10373)	# 5
	ori		x4, x0, %lo(l.10373)	# 5
	flw		f3, 0(x4)	# 5
	fle		x31, f1, f3	# 5
	beq		x31, x0, fle_else.16801	# 5
	fsub	x31, x31, x31	# 5
	fsub	f1, x31, f1	# 5
	jal		x0, fle_cont.16800	# 5
fle_else.16801:
fle_cont.16800:
	ori		x4, x0, 4	# 933
	mul		x4, x7, x4	# 933
	add		x4, x10, x4	# 933
	flw		f3, 0(x4)	# 933
	fle		x31, f3, f1	# 6
	beq		x31, x0, fle_else.16803	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.16802	# 6
fle_else.16803:
	ori		x4, x0, 1	# 6
fle_cont.16802:
	addi	x6, x0, 0	# 933
	beq		x4, x6, beq.16804	# 933
	ori		x4, x0, 4	# 934
	mul		x4, x8, x4	# 934
	add		x4, x5, x4	# 934
	flw		f1, 0(x4)	# 934
	fmul	f1, f0, f1	# 934
	fadd	f1, f1, f2	# 934
	lui		x4, %hi(l.10373)	# 5
	ori		x4, x0, %lo(l.10373)	# 5
	flw		f2, 0(x4)	# 5
	fle		x31, f1, f2	# 5
	beq		x31, x0, fle_else.16806	# 5
	fsub	x31, x31, x31	# 5
	fsub	f1, x31, f1	# 5
	jal		x0, fle_cont.16805	# 5
fle_else.16806:
fle_cont.16805:
	ori		x4, x0, 4	# 934
	mul		x4, x8, x4	# 934
	add		x4, x10, x4	# 934
	flw		f2, 0(x4)	# 934
	fle		x31, f2, f1	# 6
	beq		x31, x0, fle_else.16808	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.16807	# 6
fle_else.16808:
	ori		x4, x0, 1	# 6
fle_cont.16807:
	addi	x5, x0, 0	# 934
	beq		x4, x5, beq.16809	# 934
	addi	x4, x0, 0	# 935
	ori		x5, x0, 4	# 935
	mul		x4, x4, x5	# 935
	add		x4, x9, x4	# 935
	fsw		f0, 0(x4)	# 935
	ori		x4, x0, 1	# 935
	jalr	x0, x1, 0	# 935
beq.16809:
	addi	x4, x0, 0	# 936
	jalr	x0, x1, 0	# 936
beq.16804:
	addi	x4, x0, 0	# 937
	jalr	x0, x1, 0	# 937
solver_rect.2693:
	lw		x27, 4(x27)	# 943
	addi	x6, x0, 0	# 943
	ori		x7, x0, 1	# 943
	ori		x8, x0, 2	# 943
	fsw		f0, 0(x2)	# 943
	fsw		f2, -8(x2)	# 943
	fsw		f1, -16(x2)	# 943
	sw		x5, -24(x2)	# 943
	sw		x4, -28(x2)	# 943
	sw		x27, -32(x2)	# 943
	sw		x1, -36(x2)	# 943
	addi	x2, x2, -40	# 943
	lw		x31, 0(x27)	# 943
	jalr	x1, x31, 0	# 943
	addi	x2, x2, 40	# 943
	lw		x1, -36(x2)	# 943
	addi	x5, x0, 0	# 943
	beq		x4, x5, beq.16810	# 943
	ori		x4, x0, 1	# 943
	jalr	x0, x1, 0	# 943
beq.16810:
	ori		x6, x0, 1	# 944
	ori		x7, x0, 2	# 944
	addi	x8, x0, 0	# 944
	flw		f0, -16(x2)	# 944
	flw		f1, -8(x2)	# 944
	flw		f2, 0(x2)	# 944
	lw		x4, -28(x2)	# 944
	lw		x5, -24(x2)	# 944
	lw		x27, -32(x2)	# 944
	sw		x1, -36(x2)	# 944
	addi	x2, x2, -40	# 944
	lw		x31, 0(x27)	# 944
	jalr	x1, x31, 0	# 944
	addi	x2, x2, 40	# 944
	lw		x1, -36(x2)	# 944
	addi	x5, x0, 0	# 944
	beq		x4, x5, beq.16811	# 944
	ori		x4, x0, 2	# 944
	jalr	x0, x1, 0	# 944
beq.16811:
	ori		x6, x0, 2	# 945
	addi	x7, x0, 0	# 945
	ori		x8, x0, 1	# 945
	flw		f0, -8(x2)	# 945
	flw		f1, 0(x2)	# 945
	flw		f2, -16(x2)	# 945
	lw		x4, -28(x2)	# 945
	lw		x5, -24(x2)	# 945
	lw		x27, -32(x2)	# 945
	sw		x1, -36(x2)	# 945
	addi	x2, x2, -40	# 945
	lw		x31, 0(x27)	# 945
	jalr	x1, x31, 0	# 945
	addi	x2, x2, 40	# 945
	lw		x1, -36(x2)	# 945
	addi	x5, x0, 0	# 945
	beq		x4, x5, beq.16812	# 945
	ori		x4, x0, 3	# 945
	jalr	x0, x1, 0	# 945
beq.16812:
	addi	x4, x0, 0	# 946
	jalr	x0, x1, 0	# 946
quadratic.2705:
	fmul	f3, f0, f0	# 8
	lw		x5, 16(x4)	# 391
	addi	x6, x0, 0	# 396
	ori		x7, x0, 4	# 396
	mul		x6, x6, x7	# 396
	add		x5, x5, x6	# 396
	flw		f4, 0(x5)	# 396
	fmul	f3, f3, f4	# 967
	fmul	f4, f1, f1	# 8
	lw		x5, 16(x4)	# 401
	ori		x6, x0, 1	# 406
	ori		x7, x0, 4	# 406
	mul		x6, x6, x7	# 406
	add		x5, x5, x6	# 406
	flw		f5, 0(x5)	# 406
	fmul	f4, f4, f5	# 967
	fadd	f3, f3, f4	# 967
	fmul	f4, f2, f2	# 8
	lw		x5, 16(x4)	# 411
	ori		x6, x0, 2	# 416
	ori		x7, x0, 4	# 416
	mul		x6, x6, x7	# 416
	add		x5, x5, x6	# 416
	flw		f5, 0(x5)	# 416
	fmul	f4, f4, f5	# 967
	fadd	f3, f3, f4	# 967
	lw		x5, 12(x4)	# 382
	addi	x6, x0, 0	# 969
	beq		x5, x6, beq.16813	# 969
	fmul	f4, f1, f2	# 973
	lw		x5, 36(x4)	# 511
	addi	x6, x0, 0	# 516
	ori		x7, x0, 4	# 516
	mul		x6, x6, x7	# 516
	add		x5, x5, x6	# 516
	flw		f5, 0(x5)	# 516
	fmul	f4, f4, f5	# 973
	fadd	f3, f3, f4	# 972
	fmul	f2, f2, f0	# 974
	lw		x5, 36(x4)	# 521
	ori		x6, x0, 1	# 526
	ori		x7, x0, 4	# 526
	mul		x6, x6, x7	# 526
	add		x5, x5, x6	# 526
	flw		f4, 0(x5)	# 526
	fmul	f2, f2, f4	# 974
	fadd	f2, f3, f2	# 972
	fmul	f0, f0, f1	# 975
	lw		x4, 36(x4)	# 531
	ori		x5, x0, 2	# 536
	ori		x6, x0, 4	# 536
	mul		x5, x5, x6	# 536
	add		x4, x4, x5	# 536
	flw		f1, 0(x4)	# 536
	fmul	f0, f0, f1	# 975
	fadd	f0, f2, f0	# 972
	jalr	x0, x1, 0	# 972
beq.16813:
	fsub	f0, f0, f0	# 970
	fadd	f0, f0, f3	# 970
	jalr	x0, x1, 0	# 970
bilinear.2710:
	fmul	f6, f0, f3	# 981
	lw		x5, 16(x4)	# 391
	addi	x6, x0, 0	# 396
	ori		x7, x0, 4	# 396
	mul		x6, x6, x7	# 396
	add		x5, x5, x6	# 396
	flw		f7, 0(x5)	# 396
	fmul	f6, f6, f7	# 981
	fmul	f7, f1, f4	# 982
	lw		x5, 16(x4)	# 401
	ori		x6, x0, 1	# 406
	ori		x7, x0, 4	# 406
	mul		x6, x6, x7	# 406
	add		x5, x5, x6	# 406
	flw		f8, 0(x5)	# 406
	fmul	f7, f7, f8	# 982
	fadd	f6, f6, f7	# 981
	fmul	f7, f2, f5	# 983
	lw		x5, 16(x4)	# 411
	ori		x6, x0, 2	# 416
	ori		x7, x0, 4	# 416
	mul		x6, x6, x7	# 416
	add		x5, x5, x6	# 416
	flw		f8, 0(x5)	# 416
	fmul	f7, f7, f8	# 983
	fadd	f6, f6, f7	# 981
	lw		x5, 12(x4)	# 382
	addi	x6, x0, 0	# 985
	beq		x5, x6, beq.16814	# 985
	fmul	f7, f2, f4	# 989
	fmul	f8, f1, f5	# 989
	fadd	f7, f7, f8	# 989
	lw		x5, 36(x4)	# 511
	addi	x6, x0, 0	# 516
	ori		x7, x0, 4	# 516
	mul		x6, x6, x7	# 516
	add		x5, x5, x6	# 516
	flw		f8, 0(x5)	# 516
	fmul	f7, f7, f8	# 989
	fmul	f5, f0, f5	# 990
	fmul	f2, f2, f3	# 990
	fadd	f2, f5, f2	# 990
	lw		x5, 36(x4)	# 521
	ori		x6, x0, 1	# 526
	ori		x7, x0, 4	# 526
	mul		x6, x6, x7	# 526
	add		x5, x5, x6	# 526
	flw		f5, 0(x5)	# 526
	fmul	f2, f2, f5	# 990
	fadd	f2, f7, f2	# 989
	fmul	f0, f0, f4	# 991
	fmul	f1, f1, f3	# 991
	fadd	f0, f0, f1	# 991
	lw		x4, 36(x4)	# 531
	ori		x5, x0, 2	# 536
	ori		x6, x0, 4	# 536
	mul		x5, x5, x6	# 536
	add		x4, x4, x5	# 536
	flw		f1, 0(x4)	# 536
	fmul	f0, f0, f1	# 991
	fadd	f0, f2, f0	# 989
	lui		x4, %hi(l.10399)	# 7
	ori		x4, x0, %lo(l.10399)	# 7
	flw		f1, 0(x4)	# 7
	fmul	f0, f0, f1	# 7
	fadd	f0, f6, f0	# 988
	jalr	x0, x1, 0	# 988
beq.16814:
	fsub	f0, f0, f0	# 986
	fadd	f0, f0, f6	# 986
	jalr	x0, x1, 0	# 986
solver_second.2718:
	lw		x6, 4(x27)	# 1006
	addi	x7, x0, 0	# 1006
	ori		x8, x0, 4	# 1006
	mul		x7, x7, x8	# 1006
	add		x7, x5, x7	# 1006
	flw		f3, 0(x7)	# 1006
	ori		x7, x0, 1	# 1006
	ori		x8, x0, 4	# 1006
	mul		x7, x7, x8	# 1006
	add		x7, x5, x7	# 1006
	flw		f4, 0(x7)	# 1006
	ori		x7, x0, 2	# 1006
	ori		x8, x0, 4	# 1006
	mul		x7, x7, x8	# 1006
	add		x7, x5, x7	# 1006
	flw		f5, 0(x7)	# 1006
	sw		x6, 0(x2)	# 1006
	fsw		f2, -8(x2)	# 1006
	fsw		f1, -16(x2)	# 1006
	fsw		f0, -24(x2)	# 1006
	sw		x4, -32(x2)	# 1006
	sw		x5, -36(x2)	# 1006
	fsub	f2, f2, f2
	fadd	f2, f2, f5
	fsub	f1, f1, f1
	fadd	f1, f1, f4
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -40(x2)	# 1006
	addi	x2, x2, -44	# 1006
	jal		x1, quadratic.2705	# 1006
	addi	x2, x2, 44	# 1006
	lw		x1, -40(x2)	# 1006
	lui		x4, %hi(l.10373)	# 1
	ori		x4, x0, %lo(l.10373)	# 1
	flw		f1, 0(x4)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16817	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.16816	# 1
feq_else.16817:
	addi	x4, x0, 0	# 1
feq_cont.16816:
	addi	x5, x0, 0	# 1008
	beq		x4, x5, beq.16818	# 1008
	addi	x4, x0, 0	# 1009
	jalr	x0, x1, 0	# 1009
beq.16818:
	addi	x4, x0, 0	# 1013
	ori		x5, x0, 4	# 1013
	mul		x4, x4, x5	# 1013
	lw		x5, -36(x2)	# 1013
	add		x4, x5, x4	# 1013
	flw		f1, 0(x4)	# 1013
	ori		x4, x0, 1	# 1013
	ori		x6, x0, 4	# 1013
	mul		x4, x4, x6	# 1013
	add		x4, x5, x4	# 1013
	flw		f2, 0(x4)	# 1013
	ori		x4, x0, 2	# 1013
	ori		x6, x0, 4	# 1013
	mul		x4, x4, x6	# 1013
	add		x4, x5, x4	# 1013
	flw		f3, 0(x4)	# 1013
	flw		f4, -24(x2)	# 1013
	flw		f5, -16(x2)	# 1013
	flw		f6, -8(x2)	# 1013
	lw		x4, -32(x2)	# 1013
	fsw		f0, -40(x2)	# 1013
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	fsub	f3, f3, f3
	fadd	f3, f3, f4
	fsub	f4, f4, f4
	fadd	f4, f4, f5
	fsub	f5, f5, f5
	fadd	f5, f5, f6
	sw		x1, -48(x2)	# 1013
	addi	x2, x2, -52	# 1013
	jal		x1, bilinear.2710	# 1013
	addi	x2, x2, 52	# 1013
	lw		x1, -48(x2)	# 1013
	flw		f1, -24(x2)	# 1015
	flw		f2, -16(x2)	# 1015
	flw		f3, -8(x2)	# 1015
	lw		x4, -32(x2)	# 1015
	fsw		f0, -48(x2)	# 1015
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -56(x2)	# 1015
	addi	x2, x2, -60	# 1015
	jal		x1, quadratic.2705	# 1015
	addi	x2, x2, 60	# 1015
	lw		x1, -56(x2)	# 1015
	lw		x4, -32(x2)	# 353
	lw		x5, 4(x4)	# 353
	ori		x6, x0, 3	# 1016
	beq		x5, x6, beq.16820	# 1016
	jal		x0, beq_cont.16819	# 1016
beq.16820:
	lui		x5, %hi(l.10376)	# 1016
	ori		x5, x0, %lo(l.10376)	# 1016
	flw		f1, 0(x5)	# 1016
	fsub	f0, f0, f1	# 1016
beq_cont.16819:
	flw		f1, -48(x2)	# 8
	fmul	f2, f1, f1	# 8
	flw		f3, -40(x2)	# 1018
	fmul	f0, f3, f0	# 1018
	fsub	f0, f2, f0	# 1018
	lui		x5, %hi(l.10373)	# 2
	ori		x5, x0, %lo(l.10373)	# 2
	flw		f2, 0(x5)	# 2
	fle		x31, f0, f2	# 2
	beq		x31, x0, fle_else.16822	# 2
	addi	x5, x0, 0	# 2
	jal		x0, fle_cont.16821	# 2
fle_else.16822:
	ori		x5, x0, 1	# 2
fle_cont.16821:
	addi	x6, x0, 0	# 1020
	beq		x5, x6, beq.16823	# 1020
	sw		x1, -56(x2)	# 1021
	addi	x2, x2, -60	# 1021
	jal		x1, min_caml_sqrt	# 1021
	addi	x2, x2, 60	# 1021
	lw		x1, -56(x2)	# 1021
	lw		x4, -32(x2)	# 373
	lw		x4, 24(x4)	# 373
	addi	x5, x0, 0	# 1022
	beq		x4, x5, beq.16825	# 1022
	jal		x0, beq_cont.16824	# 1022
beq.16825:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.16824:
	addi	x4, x0, 0	# 1023
	flw		f1, -48(x2)	# 1023
	fsub	f0, f0, f1	# 1023
	flw		f1, -40(x2)	# 1023
	fdiv	f0, f0, f1	# 1023
	ori		x5, x0, 4	# 1023
	mul		x4, x4, x5	# 1023
	lw		x5, 0(x2)	# 1023
	add		x4, x5, x4	# 1023
	fsw		f0, 0(x4)	# 1023
	ori		x4, x0, 1	# 1023
	jalr	x0, x1, 0	# 1023
beq.16823:
	addi	x4, x0, 0	# 1026
	jalr	x0, x1, 0	# 1026
solver.2724:
	lw		x7, 16(x27)	# 1032
	lw		x8, 12(x27)	# 1032
	lw		x9, 8(x27)	# 1032
	lw		x10, 4(x27)	# 1032
	ori		x11, x0, 4	# 1032
	mul		x4, x4, x11	# 1032
	add		x4, x10, x4	# 1032
	lw		x4, 0(x4)	# 1032
	addi	x10, x0, 0	# 1034
	ori		x11, x0, 4	# 1034
	mul		x10, x10, x11	# 1034
	add		x10, x6, x10	# 1034
	flw		f0, 0(x10)	# 1034
	lw		x10, 20(x4)	# 431
	addi	x11, x0, 0	# 436
	ori		x12, x0, 4	# 436
	mul		x11, x11, x12	# 436
	add		x10, x10, x11	# 436
	flw		f1, 0(x10)	# 436
	fsub	f0, f0, f1	# 1034
	ori		x10, x0, 1	# 1035
	ori		x11, x0, 4	# 1035
	mul		x10, x10, x11	# 1035
	add		x10, x6, x10	# 1035
	flw		f1, 0(x10)	# 1035
	lw		x10, 20(x4)	# 441
	ori		x11, x0, 1	# 446
	ori		x12, x0, 4	# 446
	mul		x11, x11, x12	# 446
	add		x10, x10, x11	# 446
	flw		f2, 0(x10)	# 446
	fsub	f1, f1, f2	# 1035
	ori		x10, x0, 2	# 1036
	ori		x11, x0, 4	# 1036
	mul		x10, x10, x11	# 1036
	add		x6, x6, x10	# 1036
	flw		f2, 0(x6)	# 1036
	lw		x6, 20(x4)	# 451
	ori		x10, x0, 2	# 456
	ori		x11, x0, 4	# 456
	mul		x10, x10, x11	# 456
	add		x6, x6, x10	# 456
	flw		f3, 0(x6)	# 456
	fsub	f2, f2, f3	# 1036
	lw		x6, 4(x4)	# 353
	ori		x10, x0, 1	# 1039
	beq		x6, x10, beq.16826	# 1039
	ori		x8, x0, 2	# 1040
	beq		x6, x8, beq.16827	# 1040
	addi	x27, x7, 0
	lw		x31, 0(x27)	# 1041
	jalr	x0, x31, 0	# 1041
beq.16827:
	lw		x4, 16(x4)	# 421
	sw		x9, 0(x2)	# 955
	fsw		f2, -8(x2)	# 955
	fsw		f1, -16(x2)	# 955
	fsw		f0, -24(x2)	# 955
	sw		x4, -32(x2)	# 955
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -36(x2)	# 955
	addi	x2, x2, -40	# 955
	jal		x1, veciprod.2568	# 955
	addi	x2, x2, 40	# 955
	lw		x1, -36(x2)	# 955
	lui		x4, %hi(l.10373)	# 2
	ori		x4, x0, %lo(l.10373)	# 2
	flw		f1, 0(x4)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.16830	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.16829	# 2
fle_else.16830:
	ori		x4, x0, 1	# 2
fle_cont.16829:
	addi	x5, x0, 0	# 956
	beq		x4, x5, beq.16831	# 956
	addi	x4, x0, 0	# 957
	addi	x5, x0, 0	# 297
	ori		x6, x0, 4	# 297
	mul		x5, x5, x6	# 297
	lw		x6, -32(x2)	# 297
	add		x5, x6, x5	# 297
	flw		f1, 0(x5)	# 297
	flw		f2, -24(x2)	# 297
	fmul	f1, f1, f2	# 297
	ori		x5, x0, 1	# 297
	ori		x7, x0, 4	# 297
	mul		x5, x5, x7	# 297
	add		x5, x6, x5	# 297
	flw		f2, 0(x5)	# 297
	flw		f3, -16(x2)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	ori		x5, x0, 2	# 297
	ori		x7, x0, 4	# 297
	mul		x5, x5, x7	# 297
	add		x5, x6, x5	# 297
	flw		f2, 0(x5)	# 297
	flw		f3, -8(x2)	# 297
	fmul	f2, f2, f3	# 297
	fadd	f1, f1, f2	# 297
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	fdiv	f0, f1, f0	# 957
	ori		x5, x0, 4	# 957
	mul		x4, x4, x5	# 957
	lw		x5, 0(x2)	# 957
	add		x4, x5, x4	# 957
	fsw		f0, 0(x4)	# 957
	ori		x4, x0, 1	# 958
	jalr	x0, x1, 0	# 958
beq.16831:
	addi	x4, x0, 0	# 959
	jalr	x0, x1, 0	# 959
beq.16826:
	addi	x27, x8, 0
	lw		x31, 0(x27)	# 1039
	jalr	x0, x31, 0	# 1039
solver_rect_fast.2728:
	lw		x7, 4(x27)	# 1064
	addi	x8, x0, 0	# 1064
	ori		x9, x0, 4	# 1064
	mul		x8, x8, x9	# 1064
	add		x8, x6, x8	# 1064
	flw		f3, 0(x8)	# 1064
	fsub	f3, f3, f0	# 1064
	ori		x8, x0, 1	# 1064
	ori		x9, x0, 4	# 1064
	mul		x8, x8, x9	# 1064
	add		x8, x6, x8	# 1064
	flw		f4, 0(x8)	# 1064
	fmul	f3, f3, f4	# 1064
	ori		x8, x0, 1	# 1066
	ori		x9, x0, 4	# 1066
	mul		x8, x8, x9	# 1066
	add		x8, x5, x8	# 1066
	flw		f4, 0(x8)	# 1066
	fmul	f4, f3, f4	# 1066
	fadd	f4, f4, f1	# 1066
	lui		x8, %hi(l.10373)	# 5
	ori		x8, x0, %lo(l.10373)	# 5
	flw		f5, 0(x8)	# 5
	fle		x31, f4, f5	# 5
	beq		x31, x0, fle_else.16833	# 5
	fsub	x31, x31, x31	# 5
	fsub	f4, x31, f4	# 5
	jal		x0, fle_cont.16832	# 5
fle_else.16833:
fle_cont.16832:
	lw		x8, 16(x4)	# 401
	ori		x9, x0, 1	# 406
	ori		x10, x0, 4	# 406
	mul		x9, x9, x10	# 406
	add		x8, x8, x9	# 406
	flw		f5, 0(x8)	# 406
	fle		x31, f5, f4	# 6
	beq		x31, x0, fle_else.16835	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.16834	# 6
fle_else.16835:
	ori		x8, x0, 1	# 6
fle_cont.16834:
	addi	x9, x0, 0	# 1066
	beq		x8, x9, beq.16837	# 1066
	ori		x8, x0, 2	# 1067
	ori		x9, x0, 4	# 1067
	mul		x8, x8, x9	# 1067
	add		x8, x5, x8	# 1067
	flw		f4, 0(x8)	# 1067
	fmul	f4, f3, f4	# 1067
	fadd	f4, f4, f2	# 1067
	lui		x8, %hi(l.10373)	# 5
	ori		x8, x0, %lo(l.10373)	# 5
	flw		f5, 0(x8)	# 5
	fle		x31, f4, f5	# 5
	beq		x31, x0, fle_else.16839	# 5
	fsub	x31, x31, x31	# 5
	fsub	f4, x31, f4	# 5
	jal		x0, fle_cont.16838	# 5
fle_else.16839:
fle_cont.16838:
	lw		x8, 16(x4)	# 411
	ori		x9, x0, 2	# 416
	ori		x10, x0, 4	# 416
	mul		x9, x9, x10	# 416
	add		x8, x8, x9	# 416
	flw		f5, 0(x8)	# 416
	fle		x31, f5, f4	# 6
	beq		x31, x0, fle_else.16841	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.16840	# 6
fle_else.16841:
	ori		x8, x0, 1	# 6
fle_cont.16840:
	addi	x9, x0, 0	# 1067
	beq		x8, x9, beq.16843	# 1067
	ori		x8, x0, 1	# 1068
	ori		x9, x0, 4	# 1068
	mul		x8, x8, x9	# 1068
	add		x8, x6, x8	# 1068
	flw		f4, 0(x8)	# 1068
	lui		x8, %hi(l.10373)	# 1
	ori		x8, x0, %lo(l.10373)	# 1
	flw		f5, 0(x8)	# 1
	feq		x31, f4, f5	# 1
	beq		x31, x0, feq_else.16845	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.16844	# 1
feq_else.16845:
	addi	x8, x0, 0	# 1
feq_cont.16844:
	addi	x9, x0, 0	# 1068
	beq		x8, x9, beq.16847	# 1068
	addi	x8, x0, 0	# 1068
	jal		x0, beq_cont.16846	# 1068
beq.16847:
	ori		x8, x0, 1	# 1068
beq_cont.16846:
	jal		x0, beq_cont.16842	# 1067
beq.16843:
	addi	x8, x0, 0	# 1069
beq_cont.16842:
	jal		x0, beq_cont.16836	# 1066
beq.16837:
	addi	x8, x0, 0	# 1070
beq_cont.16836:
	addi	x9, x0, 0	# 1065
	beq		x8, x9, beq.16848	# 1065
	addi	x4, x0, 0	# 1072
	ori		x5, x0, 4	# 1072
	mul		x4, x4, x5	# 1072
	add		x4, x7, x4	# 1072
	fsw		f3, 0(x4)	# 1072
	ori		x4, x0, 1	# 1072
	jalr	x0, x1, 0	# 1072
beq.16848:
	ori		x8, x0, 2	# 1073
	ori		x9, x0, 4	# 1073
	mul		x8, x8, x9	# 1073
	add		x8, x6, x8	# 1073
	flw		f3, 0(x8)	# 1073
	fsub	f3, f3, f1	# 1073
	ori		x8, x0, 3	# 1073
	ori		x9, x0, 4	# 1073
	mul		x8, x8, x9	# 1073
	add		x8, x6, x8	# 1073
	flw		f4, 0(x8)	# 1073
	fmul	f3, f3, f4	# 1073
	addi	x8, x0, 0	# 1075
	ori		x9, x0, 4	# 1075
	mul		x8, x8, x9	# 1075
	add		x8, x5, x8	# 1075
	flw		f4, 0(x8)	# 1075
	fmul	f4, f3, f4	# 1075
	fadd	f4, f4, f0	# 1075
	lui		x8, %hi(l.10373)	# 5
	ori		x8, x0, %lo(l.10373)	# 5
	flw		f5, 0(x8)	# 5
	fle		x31, f4, f5	# 5
	beq		x31, x0, fle_else.16850	# 5
	fsub	x31, x31, x31	# 5
	fsub	f4, x31, f4	# 5
	jal		x0, fle_cont.16849	# 5
fle_else.16850:
fle_cont.16849:
	lw		x8, 16(x4)	# 391
	addi	x9, x0, 0	# 396
	ori		x10, x0, 4	# 396
	mul		x9, x9, x10	# 396
	add		x8, x8, x9	# 396
	flw		f5, 0(x8)	# 396
	fle		x31, f5, f4	# 6
	beq		x31, x0, fle_else.16852	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.16851	# 6
fle_else.16852:
	ori		x8, x0, 1	# 6
fle_cont.16851:
	addi	x9, x0, 0	# 1075
	beq		x8, x9, beq.16854	# 1075
	ori		x8, x0, 2	# 1076
	ori		x9, x0, 4	# 1076
	mul		x8, x8, x9	# 1076
	add		x8, x5, x8	# 1076
	flw		f4, 0(x8)	# 1076
	fmul	f4, f3, f4	# 1076
	fadd	f4, f4, f2	# 1076
	lui		x8, %hi(l.10373)	# 5
	ori		x8, x0, %lo(l.10373)	# 5
	flw		f5, 0(x8)	# 5
	fle		x31, f4, f5	# 5
	beq		x31, x0, fle_else.16856	# 5
	fsub	x31, x31, x31	# 5
	fsub	f4, x31, f4	# 5
	jal		x0, fle_cont.16855	# 5
fle_else.16856:
fle_cont.16855:
	lw		x8, 16(x4)	# 411
	ori		x9, x0, 2	# 416
	ori		x10, x0, 4	# 416
	mul		x9, x9, x10	# 416
	add		x8, x8, x9	# 416
	flw		f5, 0(x8)	# 416
	fle		x31, f5, f4	# 6
	beq		x31, x0, fle_else.16858	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.16857	# 6
fle_else.16858:
	ori		x8, x0, 1	# 6
fle_cont.16857:
	addi	x9, x0, 0	# 1076
	beq		x8, x9, beq.16860	# 1076
	ori		x8, x0, 3	# 1077
	ori		x9, x0, 4	# 1077
	mul		x8, x8, x9	# 1077
	add		x8, x6, x8	# 1077
	flw		f4, 0(x8)	# 1077
	lui		x8, %hi(l.10373)	# 1
	ori		x8, x0, %lo(l.10373)	# 1
	flw		f5, 0(x8)	# 1
	feq		x31, f4, f5	# 1
	beq		x31, x0, feq_else.16862	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.16861	# 1
feq_else.16862:
	addi	x8, x0, 0	# 1
feq_cont.16861:
	addi	x9, x0, 0	# 1077
	beq		x8, x9, beq.16864	# 1077
	addi	x8, x0, 0	# 1077
	jal		x0, beq_cont.16863	# 1077
beq.16864:
	ori		x8, x0, 1	# 1077
beq_cont.16863:
	jal		x0, beq_cont.16859	# 1076
beq.16860:
	addi	x8, x0, 0	# 1078
beq_cont.16859:
	jal		x0, beq_cont.16853	# 1075
beq.16854:
	addi	x8, x0, 0	# 1079
beq_cont.16853:
	addi	x9, x0, 0	# 1074
	beq		x8, x9, beq.16865	# 1074
	addi	x4, x0, 0	# 1081
	ori		x5, x0, 4	# 1081
	mul		x4, x4, x5	# 1081
	add		x4, x7, x4	# 1081
	fsw		f3, 0(x4)	# 1081
	ori		x4, x0, 2	# 1081
	jalr	x0, x1, 0	# 1081
beq.16865:
	ori		x8, x0, 4	# 1082
	ori		x9, x0, 4	# 1082
	mul		x8, x8, x9	# 1082
	add		x8, x6, x8	# 1082
	flw		f3, 0(x8)	# 1082
	fsub	f2, f3, f2	# 1082
	ori		x8, x0, 5	# 1082
	ori		x9, x0, 4	# 1082
	mul		x8, x8, x9	# 1082
	add		x8, x6, x8	# 1082
	flw		f3, 0(x8)	# 1082
	fmul	f2, f2, f3	# 1082
	addi	x8, x0, 0	# 1084
	ori		x9, x0, 4	# 1084
	mul		x8, x8, x9	# 1084
	add		x8, x5, x8	# 1084
	flw		f3, 0(x8)	# 1084
	fmul	f3, f2, f3	# 1084
	fadd	f0, f3, f0	# 1084
	lui		x8, %hi(l.10373)	# 5
	ori		x8, x0, %lo(l.10373)	# 5
	flw		f3, 0(x8)	# 5
	fle		x31, f0, f3	# 5
	beq		x31, x0, fle_else.16867	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.16866	# 5
fle_else.16867:
fle_cont.16866:
	lw		x8, 16(x4)	# 391
	addi	x9, x0, 0	# 396
	ori		x10, x0, 4	# 396
	mul		x9, x9, x10	# 396
	add		x8, x8, x9	# 396
	flw		f3, 0(x8)	# 396
	fle		x31, f3, f0	# 6
	beq		x31, x0, fle_else.16869	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.16868	# 6
fle_else.16869:
	ori		x8, x0, 1	# 6
fle_cont.16868:
	addi	x9, x0, 0	# 1084
	beq		x8, x9, beq.16871	# 1084
	ori		x8, x0, 1	# 1085
	ori		x9, x0, 4	# 1085
	mul		x8, x8, x9	# 1085
	add		x5, x5, x8	# 1085
	flw		f0, 0(x5)	# 1085
	fmul	f0, f2, f0	# 1085
	fadd	f0, f0, f1	# 1085
	lui		x5, %hi(l.10373)	# 5
	ori		x5, x0, %lo(l.10373)	# 5
	flw		f1, 0(x5)	# 5
	fle		x31, f0, f1	# 5
	beq		x31, x0, fle_else.16873	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.16872	# 5
fle_else.16873:
fle_cont.16872:
	lw		x4, 16(x4)	# 401
	ori		x5, x0, 1	# 406
	ori		x8, x0, 4	# 406
	mul		x5, x5, x8	# 406
	add		x4, x4, x5	# 406
	flw		f1, 0(x4)	# 406
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.16875	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.16874	# 6
fle_else.16875:
	ori		x4, x0, 1	# 6
fle_cont.16874:
	addi	x5, x0, 0	# 1085
	beq		x4, x5, beq.16877	# 1085
	ori		x4, x0, 5	# 1086
	ori		x5, x0, 4	# 1086
	mul		x4, x4, x5	# 1086
	add		x4, x6, x4	# 1086
	flw		f0, 0(x4)	# 1086
	lui		x4, %hi(l.10373)	# 1
	ori		x4, x0, %lo(l.10373)	# 1
	flw		f1, 0(x4)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16879	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.16878	# 1
feq_else.16879:
	addi	x4, x0, 0	# 1
feq_cont.16878:
	addi	x5, x0, 0	# 1086
	beq		x4, x5, beq.16881	# 1086
	addi	x4, x0, 0	# 1086
	jal		x0, beq_cont.16880	# 1086
beq.16881:
	ori		x4, x0, 1	# 1086
beq_cont.16880:
	jal		x0, beq_cont.16876	# 1085
beq.16877:
	addi	x4, x0, 0	# 1087
beq_cont.16876:
	jal		x0, beq_cont.16870	# 1084
beq.16871:
	addi	x4, x0, 0	# 1088
beq_cont.16870:
	addi	x5, x0, 0	# 1083
	beq		x4, x5, beq.16882	# 1083
	addi	x4, x0, 0	# 1090
	ori		x5, x0, 4	# 1090
	mul		x4, x4, x5	# 1090
	add		x4, x7, x4	# 1090
	fsw		f2, 0(x4)	# 1090
	ori		x4, x0, 3	# 1090
	jalr	x0, x1, 0	# 1090
beq.16882:
	addi	x4, x0, 0	# 1092
	jalr	x0, x1, 0	# 1092
solver_surface_fast.2735:
	lw		x4, 4(x27)	# 1097
	addi	x6, x0, 0	# 1097
	ori		x7, x0, 4	# 1097
	mul		x6, x6, x7	# 1097
	add		x6, x5, x6	# 1097
	flw		f3, 0(x6)	# 1097
	lui		x6, %hi(l.10373)	# 3
	ori		x6, x0, %lo(l.10373)	# 3
	flw		f4, 0(x6)	# 3
	fle		x31, f4, f3	# 3
	beq		x31, x0, fle_else.16884	# 3
	addi	x6, x0, 0	# 3
	jal		x0, fle_cont.16883	# 3
fle_else.16884:
	ori		x6, x0, 1	# 3
fle_cont.16883:
	addi	x7, x0, 0	# 1097
	beq		x6, x7, beq.16885	# 1097
	addi	x6, x0, 0	# 1098
	ori		x7, x0, 1	# 1099
	ori		x8, x0, 4	# 1099
	mul		x7, x7, x8	# 1099
	add		x7, x5, x7	# 1099
	flw		f3, 0(x7)	# 1099
	fmul	f0, f3, f0	# 1099
	ori		x7, x0, 2	# 1099
	ori		x8, x0, 4	# 1099
	mul		x7, x7, x8	# 1099
	add		x7, x5, x7	# 1099
	flw		f3, 0(x7)	# 1099
	fmul	f1, f3, f1	# 1099
	fadd	f0, f0, f1	# 1099
	ori		x7, x0, 3	# 1099
	ori		x8, x0, 4	# 1099
	mul		x7, x7, x8	# 1099
	add		x5, x5, x7	# 1099
	flw		f1, 0(x5)	# 1099
	fmul	f1, f1, f2	# 1099
	fadd	f0, f0, f1	# 1099
	ori		x5, x0, 4	# 1098
	mul		x5, x6, x5	# 1098
	add		x4, x4, x5	# 1098
	fsw		f0, 0(x4)	# 1098
	ori		x4, x0, 1	# 1100
	jalr	x0, x1, 0	# 1100
beq.16885:
	addi	x4, x0, 0	# 1101
	jalr	x0, x1, 0	# 1101
solver_second_fast.2741:
	lw		x6, 4(x27)	# 1107
	addi	x7, x0, 0	# 1107
	ori		x8, x0, 4	# 1107
	mul		x7, x7, x8	# 1107
	add		x7, x5, x7	# 1107
	flw		f3, 0(x7)	# 1107
	lui		x7, %hi(l.10373)	# 1
	ori		x7, x0, %lo(l.10373)	# 1
	flw		f4, 0(x7)	# 1
	feq		x31, f3, f4	# 1
	beq		x31, x0, feq_else.16887	# 1
	ori		x7, x0, 1	# 1
	jal		x0, feq_cont.16886	# 1
feq_else.16887:
	addi	x7, x0, 0	# 1
feq_cont.16886:
	addi	x8, x0, 0	# 1108
	beq		x7, x8, beq.16888	# 1108
	addi	x4, x0, 0	# 1109
	jalr	x0, x1, 0	# 1109
beq.16888:
	ori		x7, x0, 1	# 1111
	ori		x8, x0, 4	# 1111
	mul		x7, x7, x8	# 1111
	add		x7, x5, x7	# 1111
	flw		f4, 0(x7)	# 1111
	fmul	f4, f4, f0	# 1111
	ori		x7, x0, 2	# 1111
	ori		x8, x0, 4	# 1111
	mul		x7, x7, x8	# 1111
	add		x7, x5, x7	# 1111
	flw		f5, 0(x7)	# 1111
	fmul	f5, f5, f1	# 1111
	fadd	f4, f4, f5	# 1111
	ori		x7, x0, 3	# 1111
	ori		x8, x0, 4	# 1111
	mul		x7, x7, x8	# 1111
	add		x7, x5, x7	# 1111
	flw		f5, 0(x7)	# 1111
	fmul	f5, f5, f2	# 1111
	fadd	f4, f4, f5	# 1111
	sw		x6, 0(x2)	# 1112
	sw		x5, -4(x2)	# 1112
	fsw		f3, -8(x2)	# 1112
	fsw		f4, -16(x2)	# 1112
	sw		x4, -24(x2)	# 1112
	sw		x1, -28(x2)	# 1112
	addi	x2, x2, -32	# 1112
	jal		x1, quadratic.2705	# 1112
	addi	x2, x2, 32	# 1112
	lw		x1, -28(x2)	# 1112
	lw		x4, -24(x2)	# 353
	lw		x5, 4(x4)	# 353
	ori		x6, x0, 3	# 1113
	beq		x5, x6, beq.16890	# 1113
	jal		x0, beq_cont.16889	# 1113
beq.16890:
	lui		x5, %hi(l.10376)	# 1113
	ori		x5, x0, %lo(l.10376)	# 1113
	flw		f1, 0(x5)	# 1113
	fsub	f0, f0, f1	# 1113
beq_cont.16889:
	flw		f1, -16(x2)	# 8
	fmul	f2, f1, f1	# 8
	flw		f3, -8(x2)	# 1114
	fmul	f0, f3, f0	# 1114
	fsub	f0, f2, f0	# 1114
	lui		x5, %hi(l.10373)	# 2
	ori		x5, x0, %lo(l.10373)	# 2
	flw		f2, 0(x5)	# 2
	fle		x31, f0, f2	# 2
	beq		x31, x0, fle_else.16892	# 2
	addi	x5, x0, 0	# 2
	jal		x0, fle_cont.16891	# 2
fle_else.16892:
	ori		x5, x0, 1	# 2
fle_cont.16891:
	addi	x6, x0, 0	# 1115
	beq		x5, x6, beq.16893	# 1115
	lw		x4, 24(x4)	# 373
	addi	x5, x0, 0	# 1116
	beq		x4, x5, beq.16895	# 1116
	addi	x4, x0, 0	# 1117
	sw		x4, -28(x2)	# 1117
	sw		x1, -32(x2)	# 1117
	addi	x2, x2, -36	# 1117
	jal		x1, min_caml_sqrt	# 1117
	addi	x2, x2, 36	# 1117
	lw		x1, -32(x2)	# 1117
	flw		f1, -16(x2)	# 1117
	fadd	f0, f1, f0	# 1117
	ori		x4, x0, 4	# 1117
	ori		x5, x0, 4	# 1117
	mul		x4, x4, x5	# 1117
	lw		x5, -4(x2)	# 1117
	add		x4, x5, x4	# 1117
	flw		f1, 0(x4)	# 1117
	fmul	f0, f0, f1	# 1117
	ori		x4, x0, 4	# 1117
	lw		x5, -28(x2)	# 1117
	mul		x4, x5, x4	# 1117
	lw		x5, 0(x2)	# 1117
	add		x4, x5, x4	# 1117
	fsw		f0, 0(x4)	# 1117
	jal		x0, beq_cont.16894	# 1116
beq.16895:
	addi	x4, x0, 0	# 1119
	sw		x4, -32(x2)	# 1119
	sw		x1, -36(x2)	# 1119
	addi	x2, x2, -40	# 1119
	jal		x1, min_caml_sqrt	# 1119
	addi	x2, x2, 40	# 1119
	lw		x1, -36(x2)	# 1119
	flw		f1, -16(x2)	# 1119
	fsub	f0, f1, f0	# 1119
	ori		x4, x0, 4	# 1119
	ori		x5, x0, 4	# 1119
	mul		x4, x4, x5	# 1119
	lw		x5, -4(x2)	# 1119
	add		x4, x5, x4	# 1119
	flw		f1, 0(x4)	# 1119
	fmul	f0, f0, f1	# 1119
	ori		x4, x0, 4	# 1119
	lw		x5, -32(x2)	# 1119
	mul		x4, x5, x4	# 1119
	lw		x5, 0(x2)	# 1119
	add		x4, x5, x4	# 1119
	fsw		f0, 0(x4)	# 1119
beq_cont.16894:
	ori		x4, x0, 1	# 1120
	jalr	x0, x1, 0	# 1120
beq.16893:
	addi	x4, x0, 0	# 1121
	jalr	x0, x1, 0	# 1121
solver_fast.2747:
	lw		x7, 16(x27)	# 1126
	lw		x8, 12(x27)	# 1126
	lw		x9, 8(x27)	# 1126
	lw		x10, 4(x27)	# 1126
	ori		x11, x0, 4	# 1126
	mul		x11, x4, x11	# 1126
	add		x10, x10, x11	# 1126
	lw		x10, 0(x10)	# 1126
	addi	x11, x0, 0	# 1127
	ori		x12, x0, 4	# 1127
	mul		x11, x11, x12	# 1127
	add		x11, x6, x11	# 1127
	flw		f0, 0(x11)	# 1127
	lw		x11, 20(x10)	# 431
	addi	x12, x0, 0	# 436
	ori		x13, x0, 4	# 436
	mul		x12, x12, x13	# 436
	add		x11, x11, x12	# 436
	flw		f1, 0(x11)	# 436
	fsub	f0, f0, f1	# 1127
	ori		x11, x0, 1	# 1128
	ori		x12, x0, 4	# 1128
	mul		x11, x11, x12	# 1128
	add		x11, x6, x11	# 1128
	flw		f1, 0(x11)	# 1128
	lw		x11, 20(x10)	# 441
	ori		x12, x0, 1	# 446
	ori		x13, x0, 4	# 446
	mul		x12, x12, x13	# 446
	add		x11, x11, x12	# 446
	flw		f2, 0(x11)	# 446
	fsub	f1, f1, f2	# 1128
	ori		x11, x0, 2	# 1129
	ori		x12, x0, 4	# 1129
	mul		x11, x11, x12	# 1129
	add		x6, x6, x11	# 1129
	flw		f2, 0(x6)	# 1129
	lw		x6, 20(x10)	# 451
	ori		x11, x0, 2	# 456
	ori		x12, x0, 4	# 456
	mul		x11, x11, x12	# 456
	add		x6, x6, x11	# 456
	flw		f3, 0(x6)	# 456
	fsub	f2, f2, f3	# 1129
	lw		x6, 4(x5)	# 645
	ori		x11, x0, 4	# 1131
	mul		x4, x4, x11	# 1131
	add		x4, x6, x4	# 1131
	lw		x6, 0(x4)	# 1131
	lw		x4, 4(x10)	# 353
	ori		x11, x0, 1	# 1133
	beq		x4, x11, beq.16896	# 1133
	ori		x5, x0, 2	# 1135
	beq		x4, x5, beq.16897	# 1135
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x27, x8, 0
	lw		x31, 0(x27)	# 1138
	jalr	x0, x31, 0	# 1138
beq.16897:
	addi	x5, x6, 0
	addi	x4, x10, 0
	addi	x27, x7, 0
	lw		x31, 0(x27)	# 1136
	jalr	x0, x31, 0	# 1136
beq.16896:
	lw		x5, 0(x5)	# 639
	addi	x4, x10, 0
	addi	x27, x9, 0
	lw		x31, 0(x27)	# 1134
	jalr	x0, x31, 0	# 1134
solver_second_fast2.2758:
	lw		x7, 4(x27)	# 1155
	addi	x8, x0, 0	# 1155
	ori		x9, x0, 4	# 1155
	mul		x8, x8, x9	# 1155
	add		x8, x5, x8	# 1155
	flw		f3, 0(x8)	# 1155
	lui		x8, %hi(l.10373)	# 1
	ori		x8, x0, %lo(l.10373)	# 1
	flw		f4, 0(x8)	# 1
	feq		x31, f3, f4	# 1
	beq		x31, x0, feq_else.16899	# 1
	ori		x8, x0, 1	# 1
	jal		x0, feq_cont.16898	# 1
feq_else.16899:
	addi	x8, x0, 0	# 1
feq_cont.16898:
	addi	x9, x0, 0	# 1156
	beq		x8, x9, beq.16900	# 1156
	addi	x4, x0, 0	# 1157
	jalr	x0, x1, 0	# 1157
beq.16900:
	ori		x8, x0, 1	# 1159
	ori		x9, x0, 4	# 1159
	mul		x8, x8, x9	# 1159
	add		x8, x5, x8	# 1159
	flw		f4, 0(x8)	# 1159
	fmul	f0, f4, f0	# 1159
	ori		x8, x0, 2	# 1159
	ori		x9, x0, 4	# 1159
	mul		x8, x8, x9	# 1159
	add		x8, x5, x8	# 1159
	flw		f4, 0(x8)	# 1159
	fmul	f1, f4, f1	# 1159
	fadd	f0, f0, f1	# 1159
	ori		x8, x0, 3	# 1159
	ori		x9, x0, 4	# 1159
	mul		x8, x8, x9	# 1159
	add		x8, x5, x8	# 1159
	flw		f1, 0(x8)	# 1159
	fmul	f1, f1, f2	# 1159
	fadd	f0, f0, f1	# 1159
	ori		x8, x0, 3	# 1160
	ori		x9, x0, 4	# 1160
	mul		x8, x8, x9	# 1160
	add		x6, x6, x8	# 1160
	flw		f1, 0(x6)	# 1160
	fmul	f2, f0, f0	# 8
	fmul	f1, f3, f1	# 1161
	fsub	f1, f2, f1	# 1161
	lui		x6, %hi(l.10373)	# 2
	ori		x6, x0, %lo(l.10373)	# 2
	flw		f2, 0(x6)	# 2
	fle		x31, f1, f2	# 2
	beq		x31, x0, fle_else.16902	# 2
	addi	x6, x0, 0	# 2
	jal		x0, fle_cont.16901	# 2
fle_else.16902:
	ori		x6, x0, 1	# 2
fle_cont.16901:
	addi	x8, x0, 0	# 1162
	beq		x6, x8, beq.16903	# 1162
	lw		x4, 24(x4)	# 373
	addi	x6, x0, 0	# 1163
	beq		x4, x6, beq.16905	# 1163
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
	jal		x0, beq_cont.16904	# 1163
beq.16905:
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
beq_cont.16904:
	ori		x4, x0, 1	# 1167
	jalr	x0, x1, 0	# 1167
beq.16903:
	addi	x4, x0, 0	# 1168
	jalr	x0, x1, 0	# 1168
solver_fast2.2765:
	lw		x6, 16(x27)	# 1173
	lw		x7, 12(x27)	# 1173
	lw		x8, 8(x27)	# 1173
	lw		x9, 4(x27)	# 1173
	ori		x10, x0, 4	# 1173
	mul		x10, x4, x10	# 1173
	add		x9, x9, x10	# 1173
	lw		x9, 0(x9)	# 1173
	lw		x10, 40(x9)	# 548
	addi	x11, x0, 0	# 1175
	ori		x12, x0, 4	# 1175
	mul		x11, x11, x12	# 1175
	add		x11, x10, x11	# 1175
	flw		f0, 0(x11)	# 1175
	ori		x11, x0, 1	# 1176
	ori		x12, x0, 4	# 1176
	mul		x11, x11, x12	# 1176
	add		x11, x10, x11	# 1176
	flw		f1, 0(x11)	# 1176
	ori		x11, x0, 2	# 1177
	ori		x12, x0, 4	# 1177
	mul		x11, x11, x12	# 1177
	add		x11, x10, x11	# 1177
	flw		f2, 0(x11)	# 1177
	lw		x11, 4(x5)	# 645
	ori		x12, x0, 4	# 1179
	mul		x4, x4, x12	# 1179
	add		x4, x11, x4	# 1179
	lw		x4, 0(x4)	# 1179
	lw		x11, 4(x9)	# 353
	ori		x12, x0, 1	# 1181
	beq		x11, x12, beq.16907	# 1181
	ori		x5, x0, 2	# 1183
	beq		x11, x5, beq.16908	# 1183
	addi	x5, x4, 0
	addi	x27, x6, 0
	addi	x6, x10, 0
	addi	x4, x9, 0
	lw		x31, 0(x27)	# 1186
	jalr	x0, x31, 0	# 1186
beq.16908:
	addi	x5, x0, 0	# 1146
	ori		x6, x0, 4	# 1146
	mul		x5, x5, x6	# 1146
	add		x5, x4, x5	# 1146
	flw		f0, 0(x5)	# 1146
	lui		x5, %hi(l.10373)	# 3
	ori		x5, x0, %lo(l.10373)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.16910	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.16909	# 3
fle_else.16910:
	ori		x5, x0, 1	# 3
fle_cont.16909:
	addi	x6, x0, 0	# 1146
	beq		x5, x6, beq.16911	# 1146
	addi	x5, x0, 0	# 1147
	addi	x6, x0, 0	# 1147
	ori		x7, x0, 4	# 1147
	mul		x6, x6, x7	# 1147
	add		x4, x4, x6	# 1147
	flw		f0, 0(x4)	# 1147
	ori		x4, x0, 3	# 1147
	ori		x6, x0, 4	# 1147
	mul		x4, x4, x6	# 1147
	add		x4, x10, x4	# 1147
	flw		f1, 0(x4)	# 1147
	fmul	f0, f0, f1	# 1147
	ori		x4, x0, 4	# 1147
	mul		x4, x5, x4	# 1147
	add		x4, x8, x4	# 1147
	fsw		f0, 0(x4)	# 1147
	ori		x4, x0, 1	# 1148
	jalr	x0, x1, 0	# 1148
beq.16911:
	addi	x4, x0, 0	# 1149
	jalr	x0, x1, 0	# 1149
beq.16907:
	lw		x5, 0(x5)	# 639
	addi	x6, x4, 0
	addi	x27, x7, 0
	addi	x4, x9, 0
	lw		x31, 0(x27)	# 1182
	jalr	x0, x31, 0	# 1182
setup_rect_table.2768:
	ori		x6, x0, 6	# 1195
	lui		x7, %hi(l.10373)	# 1195
	ori		x7, x0, %lo(l.10373)	# 1195
	flw		f0, 0(x7)	# 1195
	sw		x5, 0(x2)	# 1195
	sw		x4, -4(x2)	# 1195
	addi	x4, x6, 0
	sw		x1, -8(x2)	# 1195
	addi	x2, x2, -12	# 1195
	jal		x1, min_caml_create_float_array	# 1195
	addi	x2, x2, 12	# 1195
	lw		x1, -8(x2)	# 1195
	addi	x5, x0, 0	# 1197
	ori		x6, x0, 4	# 1197
	mul		x5, x5, x6	# 1197
	lw		x6, -4(x2)	# 1197
	add		x5, x6, x5	# 1197
	flw		f0, 0(x5)	# 1197
	lui		x5, %hi(l.10373)	# 1
	ori		x5, x0, %lo(l.10373)	# 1
	flw		f1, 0(x5)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16913	# 1
	ori		x5, x0, 1	# 1
	jal		x0, feq_cont.16912	# 1
feq_else.16913:
	addi	x5, x0, 0	# 1
feq_cont.16912:
	addi	x7, x0, 0	# 1197
	beq		x5, x7, beq.16915	# 1197
	ori		x5, x0, 1	# 1198
	lui		x7, %hi(l.10373)	# 1198
	ori		x7, x0, %lo(l.10373)	# 1198
	flw		f0, 0(x7)	# 1198
	ori		x7, x0, 4	# 1198
	mul		x5, x5, x7	# 1198
	add		x5, x4, x5	# 1198
	fsw		f0, 0(x5)	# 1198
	jal		x0, beq_cont.16914	# 1197
beq.16915:
	addi	x5, x0, 0	# 1201
	lw		x7, 0(x2)	# 373
	lw		x8, 24(x7)	# 373
	addi	x9, x0, 0	# 1201
	ori		x10, x0, 4	# 1201
	mul		x9, x9, x10	# 1201
	add		x9, x6, x9	# 1201
	flw		f0, 0(x9)	# 1201
	lui		x9, %hi(l.10373)	# 3
	ori		x9, x0, %lo(l.10373)	# 3
	flw		f1, 0(x9)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.16917	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.16916	# 3
fle_else.16917:
	ori		x9, x0, 1	# 3
fle_cont.16916:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.16919	# 204
	addi	x8, x0, 0	# 204
	beq		x9, x8, beq.16921	# 204
	addi	x8, x0, 0	# 204
	jal		x0, beq_cont.16920	# 204
beq.16921:
	ori		x8, x0, 1	# 204
beq_cont.16920:
	jal		x0, beq_cont.16918	# 204
beq.16919:
	addi	x8, x9, 0	# 204
beq_cont.16918:
	lw		x9, 16(x7)	# 391
	addi	x10, x0, 0	# 396
	ori		x11, x0, 4	# 396
	mul		x10, x10, x11	# 396
	add		x9, x9, x10	# 396
	flw		f0, 0(x9)	# 396
	addi	x9, x0, 0	# 219
	beq		x8, x9, beq.16923	# 219
	jal		x0, beq_cont.16922	# 219
beq.16923:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.16922:
	ori		x8, x0, 4	# 1201
	mul		x5, x5, x8	# 1201
	add		x5, x4, x5	# 1201
	fsw		f0, 0(x5)	# 1201
	ori		x5, x0, 1	# 1203
	lui		x8, %hi(l.10376)	# 1203
	ori		x8, x0, %lo(l.10376)	# 1203
	flw		f0, 0(x8)	# 1203
	addi	x8, x0, 0	# 1203
	ori		x9, x0, 4	# 1203
	mul		x8, x8, x9	# 1203
	add		x8, x6, x8	# 1203
	flw		f1, 0(x8)	# 1203
	fdiv	f0, f0, f1	# 1203
	ori		x8, x0, 4	# 1203
	mul		x5, x5, x8	# 1203
	add		x5, x4, x5	# 1203
	fsw		f0, 0(x5)	# 1203
beq_cont.16914:
	ori		x5, x0, 1	# 1205
	ori		x7, x0, 4	# 1205
	mul		x5, x5, x7	# 1205
	add		x5, x6, x5	# 1205
	flw		f0, 0(x5)	# 1205
	lui		x5, %hi(l.10373)	# 1
	ori		x5, x0, %lo(l.10373)	# 1
	flw		f1, 0(x5)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16925	# 1
	ori		x5, x0, 1	# 1
	jal		x0, feq_cont.16924	# 1
feq_else.16925:
	addi	x5, x0, 0	# 1
feq_cont.16924:
	addi	x7, x0, 0	# 1205
	beq		x5, x7, beq.16927	# 1205
	ori		x5, x0, 3	# 1206
	lui		x7, %hi(l.10373)	# 1206
	ori		x7, x0, %lo(l.10373)	# 1206
	flw		f0, 0(x7)	# 1206
	ori		x7, x0, 4	# 1206
	mul		x5, x5, x7	# 1206
	add		x5, x4, x5	# 1206
	fsw		f0, 0(x5)	# 1206
	jal		x0, beq_cont.16926	# 1205
beq.16927:
	ori		x5, x0, 2	# 1208
	lw		x7, 0(x2)	# 373
	lw		x8, 24(x7)	# 373
	ori		x9, x0, 1	# 1208
	ori		x10, x0, 4	# 1208
	mul		x9, x9, x10	# 1208
	add		x9, x6, x9	# 1208
	flw		f0, 0(x9)	# 1208
	lui		x9, %hi(l.10373)	# 3
	ori		x9, x0, %lo(l.10373)	# 3
	flw		f1, 0(x9)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.16929	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.16928	# 3
fle_else.16929:
	ori		x9, x0, 1	# 3
fle_cont.16928:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.16931	# 204
	addi	x8, x0, 0	# 204
	beq		x9, x8, beq.16933	# 204
	addi	x8, x0, 0	# 204
	jal		x0, beq_cont.16932	# 204
beq.16933:
	ori		x8, x0, 1	# 204
beq_cont.16932:
	jal		x0, beq_cont.16930	# 204
beq.16931:
	addi	x8, x9, 0	# 204
beq_cont.16930:
	lw		x9, 16(x7)	# 401
	ori		x10, x0, 1	# 406
	ori		x11, x0, 4	# 406
	mul		x10, x10, x11	# 406
	add		x9, x9, x10	# 406
	flw		f0, 0(x9)	# 406
	addi	x9, x0, 0	# 219
	beq		x8, x9, beq.16935	# 219
	jal		x0, beq_cont.16934	# 219
beq.16935:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.16934:
	ori		x8, x0, 4	# 1208
	mul		x5, x5, x8	# 1208
	add		x5, x4, x5	# 1208
	fsw		f0, 0(x5)	# 1208
	ori		x5, x0, 3	# 1209
	lui		x8, %hi(l.10376)	# 1209
	ori		x8, x0, %lo(l.10376)	# 1209
	flw		f0, 0(x8)	# 1209
	ori		x8, x0, 1	# 1209
	ori		x9, x0, 4	# 1209
	mul		x8, x8, x9	# 1209
	add		x8, x6, x8	# 1209
	flw		f1, 0(x8)	# 1209
	fdiv	f0, f0, f1	# 1209
	ori		x8, x0, 4	# 1209
	mul		x5, x5, x8	# 1209
	add		x5, x4, x5	# 1209
	fsw		f0, 0(x5)	# 1209
beq_cont.16926:
	ori		x5, x0, 2	# 1211
	ori		x7, x0, 4	# 1211
	mul		x5, x5, x7	# 1211
	add		x5, x6, x5	# 1211
	flw		f0, 0(x5)	# 1211
	lui		x5, %hi(l.10373)	# 1
	ori		x5, x0, %lo(l.10373)	# 1
	flw		f1, 0(x5)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16937	# 1
	ori		x5, x0, 1	# 1
	jal		x0, feq_cont.16936	# 1
feq_else.16937:
	addi	x5, x0, 0	# 1
feq_cont.16936:
	addi	x7, x0, 0	# 1211
	beq		x5, x7, beq.16939	# 1211
	ori		x5, x0, 5	# 1212
	lui		x6, %hi(l.10373)	# 1212
	ori		x6, x0, %lo(l.10373)	# 1212
	flw		f0, 0(x6)	# 1212
	ori		x6, x0, 4	# 1212
	mul		x5, x5, x6	# 1212
	add		x5, x4, x5	# 1212
	fsw		f0, 0(x5)	# 1212
	jal		x0, beq_cont.16938	# 1211
beq.16939:
	ori		x5, x0, 4	# 1214
	lw		x7, 0(x2)	# 373
	lw		x8, 24(x7)	# 373
	ori		x9, x0, 2	# 1214
	ori		x10, x0, 4	# 1214
	mul		x9, x9, x10	# 1214
	add		x9, x6, x9	# 1214
	flw		f0, 0(x9)	# 1214
	lui		x9, %hi(l.10373)	# 3
	ori		x9, x0, %lo(l.10373)	# 3
	flw		f1, 0(x9)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.16941	# 3
	addi	x9, x0, 0	# 3
	jal		x0, fle_cont.16940	# 3
fle_else.16941:
	ori		x9, x0, 1	# 3
fle_cont.16940:
	addi	x10, x0, 0	# 204
	beq		x8, x10, beq.16943	# 204
	addi	x8, x0, 0	# 204
	beq		x9, x8, beq.16945	# 204
	addi	x8, x0, 0	# 204
	jal		x0, beq_cont.16944	# 204
beq.16945:
	ori		x8, x0, 1	# 204
beq_cont.16944:
	jal		x0, beq_cont.16942	# 204
beq.16943:
	addi	x8, x9, 0	# 204
beq_cont.16942:
	lw		x7, 16(x7)	# 411
	ori		x9, x0, 2	# 416
	ori		x10, x0, 4	# 416
	mul		x9, x9, x10	# 416
	add		x7, x7, x9	# 416
	flw		f0, 0(x7)	# 416
	addi	x7, x0, 0	# 219
	beq		x8, x7, beq.16947	# 219
	jal		x0, beq_cont.16946	# 219
beq.16947:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
beq_cont.16946:
	ori		x7, x0, 4	# 1214
	mul		x5, x5, x7	# 1214
	add		x5, x4, x5	# 1214
	fsw		f0, 0(x5)	# 1214
	ori		x5, x0, 5	# 1215
	lui		x7, %hi(l.10376)	# 1215
	ori		x7, x0, %lo(l.10376)	# 1215
	flw		f0, 0(x7)	# 1215
	ori		x7, x0, 2	# 1215
	ori		x8, x0, 4	# 1215
	mul		x7, x7, x8	# 1215
	add		x6, x6, x7	# 1215
	flw		f1, 0(x6)	# 1215
	fdiv	f0, f0, f1	# 1215
	ori		x6, x0, 4	# 1215
	mul		x5, x5, x6	# 1215
	add		x5, x4, x5	# 1215
	fsw		f0, 0(x5)	# 1215
beq_cont.16938:
	jalr	x0, x1, 0	# 1217
setup_surface_table.2771:
	ori		x6, x0, 4	# 1222
	lui		x7, %hi(l.10373)	# 1222
	ori		x7, x0, %lo(l.10373)	# 1222
	flw		f0, 0(x7)	# 1222
	sw		x5, 0(x2)	# 1222
	sw		x4, -4(x2)	# 1222
	addi	x4, x6, 0
	sw		x1, -8(x2)	# 1222
	addi	x2, x2, -12	# 1222
	jal		x1, min_caml_create_float_array	# 1222
	addi	x2, x2, 12	# 1222
	lw		x1, -8(x2)	# 1222
	addi	x5, x0, 0	# 1224
	ori		x6, x0, 4	# 1224
	mul		x5, x5, x6	# 1224
	lw		x6, -4(x2)	# 1224
	add		x5, x6, x5	# 1224
	flw		f0, 0(x5)	# 1224
	lw		x5, 0(x2)	# 391
	lw		x7, 16(x5)	# 391
	addi	x8, x0, 0	# 396
	ori		x9, x0, 4	# 396
	mul		x8, x8, x9	# 396
	add		x7, x7, x8	# 396
	flw		f1, 0(x7)	# 396
	fmul	f0, f0, f1	# 1224
	ori		x7, x0, 1	# 1224
	ori		x8, x0, 4	# 1224
	mul		x7, x7, x8	# 1224
	add		x7, x6, x7	# 1224
	flw		f1, 0(x7)	# 1224
	lw		x7, 16(x5)	# 401
	ori		x8, x0, 1	# 406
	ori		x9, x0, 4	# 406
	mul		x8, x8, x9	# 406
	add		x7, x7, x8	# 406
	flw		f2, 0(x7)	# 406
	fmul	f1, f1, f2	# 1224
	fadd	f0, f0, f1	# 1224
	ori		x7, x0, 2	# 1224
	ori		x8, x0, 4	# 1224
	mul		x7, x7, x8	# 1224
	add		x6, x6, x7	# 1224
	flw		f1, 0(x6)	# 1224
	lw		x6, 16(x5)	# 411
	ori		x7, x0, 2	# 416
	ori		x8, x0, 4	# 416
	mul		x7, x7, x8	# 416
	add		x6, x6, x7	# 416
	flw		f2, 0(x6)	# 416
	fmul	f1, f1, f2	# 1224
	fadd	f0, f0, f1	# 1224
	lui		x6, %hi(l.10373)	# 2
	ori		x6, x0, %lo(l.10373)	# 2
	flw		f1, 0(x6)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.16949	# 2
	addi	x6, x0, 0	# 2
	jal		x0, fle_cont.16948	# 2
fle_else.16949:
	ori		x6, x0, 1	# 2
fle_cont.16948:
	addi	x7, x0, 0	# 1226
	beq		x6, x7, beq.16951	# 1226
	addi	x6, x0, 0	# 1228
	lui		x7, %hi(l.10483)	# 1228
	ori		x7, x0, %lo(l.10483)	# 1228
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
	jal		x0, beq_cont.16950	# 1226
beq.16951:
	addi	x5, x0, 0	# 1234
	lui		x6, %hi(l.10373)	# 1234
	ori		x6, x0, %lo(l.10373)	# 1234
	flw		f0, 0(x6)	# 1234
	ori		x6, x0, 4	# 1234
	mul		x5, x5, x6	# 1234
	add		x5, x4, x5	# 1234
	fsw		f0, 0(x5)	# 1234
beq_cont.16950:
	jalr	x0, x1, 0	# 1235
setup_second_table.2774:
	ori		x6, x0, 5	# 1241
	lui		x7, %hi(l.10373)	# 1241
	ori		x7, x0, %lo(l.10373)	# 1241
	flw		f0, 0(x7)	# 1241
	sw		x5, 0(x2)	# 1241
	sw		x4, -4(x2)	# 1241
	addi	x4, x6, 0
	sw		x1, -8(x2)	# 1241
	addi	x2, x2, -12	# 1241
	jal		x1, min_caml_create_float_array	# 1241
	addi	x2, x2, 12	# 1241
	lw		x1, -8(x2)	# 1241
	addi	x5, x0, 0	# 1243
	ori		x6, x0, 4	# 1243
	mul		x5, x5, x6	# 1243
	lw		x6, -4(x2)	# 1243
	add		x5, x6, x5	# 1243
	flw		f0, 0(x5)	# 1243
	ori		x5, x0, 1	# 1243
	ori		x7, x0, 4	# 1243
	mul		x5, x5, x7	# 1243
	add		x5, x6, x5	# 1243
	flw		f1, 0(x5)	# 1243
	ori		x5, x0, 2	# 1243
	ori		x7, x0, 4	# 1243
	mul		x5, x5, x7	# 1243
	add		x5, x6, x5	# 1243
	flw		f2, 0(x5)	# 1243
	lw		x5, 0(x2)	# 1243
	sw		x4, -8(x2)	# 1243
	addi	x4, x5, 0
	sw		x1, -12(x2)	# 1243
	addi	x2, x2, -16	# 1243
	jal		x1, quadratic.2705	# 1243
	addi	x2, x2, 16	# 1243
	lw		x1, -12(x2)	# 1243
	addi	x4, x0, 0	# 1244
	ori		x5, x0, 4	# 1244
	mul		x4, x4, x5	# 1244
	lw		x5, -4(x2)	# 1244
	add		x4, x5, x4	# 1244
	flw		f1, 0(x4)	# 1244
	lw		x4, 0(x2)	# 391
	lw		x6, 16(x4)	# 391
	addi	x7, x0, 0	# 396
	ori		x8, x0, 4	# 396
	mul		x7, x7, x8	# 396
	add		x6, x6, x7	# 396
	flw		f2, 0(x6)	# 396
	fmul	f1, f1, f2	# 1244
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	ori		x6, x0, 1	# 1245
	ori		x7, x0, 4	# 1245
	mul		x6, x6, x7	# 1245
	add		x6, x5, x6	# 1245
	flw		f2, 0(x6)	# 1245
	lw		x6, 16(x4)	# 401
	ori		x7, x0, 1	# 406
	ori		x8, x0, 4	# 406
	mul		x7, x7, x8	# 406
	add		x6, x6, x7	# 406
	flw		f3, 0(x6)	# 406
	fmul	f2, f2, f3	# 1245
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	ori		x6, x0, 2	# 1246
	ori		x7, x0, 4	# 1246
	mul		x6, x6, x7	# 1246
	add		x6, x5, x6	# 1246
	flw		f3, 0(x6)	# 1246
	lw		x6, 16(x4)	# 411
	ori		x7, x0, 2	# 416
	ori		x8, x0, 4	# 416
	mul		x7, x7, x8	# 416
	add		x6, x6, x7	# 416
	flw		f4, 0(x6)	# 416
	fmul	f3, f3, f4	# 1246
	fsub	x31, x31, x31	# 4
	fsub	f3, x31, f3	# 4
	addi	x6, x0, 0	# 1248
	ori		x7, x0, 4	# 1248
	mul		x6, x6, x7	# 1248
	lw		x7, -8(x2)	# 1248
	add		x6, x7, x6	# 1248
	fsw		f0, 0(x6)	# 1248
	lw		x6, 12(x4)	# 382
	addi	x8, x0, 0	# 1252
	beq		x6, x8, beq.16953	# 1252
	ori		x6, x0, 1	# 1253
	ori		x8, x0, 2	# 1253
	ori		x9, x0, 4	# 1253
	mul		x8, x8, x9	# 1253
	add		x8, x5, x8	# 1253
	flw		f4, 0(x8)	# 1253
	lw		x8, 36(x4)	# 521
	ori		x9, x0, 1	# 526
	ori		x10, x0, 4	# 526
	mul		x9, x9, x10	# 526
	add		x8, x8, x9	# 526
	flw		f5, 0(x8)	# 526
	fmul	f4, f4, f5	# 1253
	ori		x8, x0, 1	# 1253
	ori		x9, x0, 4	# 1253
	mul		x8, x8, x9	# 1253
	add		x8, x5, x8	# 1253
	flw		f5, 0(x8)	# 1253
	lw		x8, 36(x4)	# 531
	ori		x9, x0, 2	# 536
	ori		x10, x0, 4	# 536
	mul		x9, x9, x10	# 536
	add		x8, x8, x9	# 536
	flw		f6, 0(x8)	# 536
	fmul	f5, f5, f6	# 1253
	fadd	f4, f4, f5	# 1253
	lui		x8, %hi(l.10399)	# 7
	ori		x8, x0, %lo(l.10399)	# 7
	flw		f5, 0(x8)	# 7
	fmul	f4, f4, f5	# 7
	fsub	f1, f1, f4	# 1253
	ori		x8, x0, 4	# 1253
	mul		x6, x6, x8	# 1253
	add		x6, x7, x6	# 1253
	fsw		f1, 0(x6)	# 1253
	ori		x6, x0, 2	# 1254
	ori		x8, x0, 2	# 1254
	ori		x9, x0, 4	# 1254
	mul		x8, x8, x9	# 1254
	add		x8, x5, x8	# 1254
	flw		f1, 0(x8)	# 1254
	lw		x8, 36(x4)	# 511
	addi	x9, x0, 0	# 516
	ori		x10, x0, 4	# 516
	mul		x9, x9, x10	# 516
	add		x8, x8, x9	# 516
	flw		f4, 0(x8)	# 516
	fmul	f1, f1, f4	# 1254
	addi	x8, x0, 0	# 1254
	ori		x9, x0, 4	# 1254
	mul		x8, x8, x9	# 1254
	add		x8, x5, x8	# 1254
	flw		f4, 0(x8)	# 1254
	lw		x8, 36(x4)	# 531
	ori		x9, x0, 2	# 536
	ori		x10, x0, 4	# 536
	mul		x9, x9, x10	# 536
	add		x8, x8, x9	# 536
	flw		f5, 0(x8)	# 536
	fmul	f4, f4, f5	# 1254
	fadd	f1, f1, f4	# 1254
	lui		x8, %hi(l.10399)	# 7
	ori		x8, x0, %lo(l.10399)	# 7
	flw		f4, 0(x8)	# 7
	fmul	f1, f1, f4	# 7
	fsub	f1, f2, f1	# 1254
	ori		x8, x0, 4	# 1254
	mul		x6, x6, x8	# 1254
	add		x6, x7, x6	# 1254
	fsw		f1, 0(x6)	# 1254
	ori		x6, x0, 3	# 1255
	ori		x8, x0, 1	# 1255
	ori		x9, x0, 4	# 1255
	mul		x8, x8, x9	# 1255
	add		x8, x5, x8	# 1255
	flw		f1, 0(x8)	# 1255
	lw		x8, 36(x4)	# 511
	addi	x9, x0, 0	# 516
	ori		x10, x0, 4	# 516
	mul		x9, x9, x10	# 516
	add		x8, x8, x9	# 516
	flw		f2, 0(x8)	# 516
	fmul	f1, f1, f2	# 1255
	addi	x8, x0, 0	# 1255
	ori		x9, x0, 4	# 1255
	mul		x8, x8, x9	# 1255
	add		x5, x5, x8	# 1255
	flw		f2, 0(x5)	# 1255
	lw		x4, 36(x4)	# 521
	ori		x5, x0, 1	# 526
	ori		x8, x0, 4	# 526
	mul		x5, x5, x8	# 526
	add		x4, x4, x5	# 526
	flw		f4, 0(x4)	# 526
	fmul	f2, f2, f4	# 1255
	fadd	f1, f1, f2	# 1255
	lui		x4, %hi(l.10399)	# 7
	ori		x4, x0, %lo(l.10399)	# 7
	flw		f2, 0(x4)	# 7
	fmul	f1, f1, f2	# 7
	fsub	f1, f3, f1	# 1255
	ori		x4, x0, 4	# 1255
	mul		x4, x6, x4	# 1255
	add		x4, x7, x4	# 1255
	fsw		f1, 0(x4)	# 1255
	jal		x0, beq_cont.16952	# 1252
beq.16953:
	ori		x4, x0, 1	# 1257
	ori		x5, x0, 4	# 1257
	mul		x4, x4, x5	# 1257
	add		x4, x7, x4	# 1257
	fsw		f1, 0(x4)	# 1257
	ori		x4, x0, 2	# 1258
	ori		x5, x0, 4	# 1258
	mul		x4, x4, x5	# 1258
	add		x4, x7, x4	# 1258
	fsw		f2, 0(x4)	# 1258
	ori		x4, x0, 3	# 1259
	ori		x5, x0, 4	# 1259
	mul		x4, x4, x5	# 1259
	add		x4, x7, x4	# 1259
	fsw		f3, 0(x4)	# 1259
beq_cont.16952:
	lui		x4, %hi(l.10373)	# 1
	ori		x4, x0, %lo(l.10373)	# 1
	flw		f1, 0(x4)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.16955	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.16954	# 1
feq_else.16955:
	addi	x4, x0, 0	# 1
feq_cont.16954:
	addi	x5, x0, 0	# 1261
	beq		x4, x5, beq.16957	# 1261
	jal		x0, beq_cont.16956	# 1261
beq.16957:
	ori		x4, x0, 4	# 1262
	lui		x5, %hi(l.10376)	# 1262
	ori		x5, x0, %lo(l.10376)	# 1262
	flw		f1, 0(x5)	# 1262
	fdiv	f0, f1, f0	# 1262
	ori		x5, x0, 4	# 1262
	mul		x4, x4, x5	# 1262
	add		x4, x7, x4	# 1262
	fsw		f0, 0(x4)	# 1262
beq_cont.16956:
	addi	x4, x7, 0	# 1264
	jalr	x0, x1, 0	# 1264
iter_setup_dirvec_constants.2777:
	lw		x6, 4(x27)	# 1270
	addi	x7, x0, 0	# 1270
	ble		x7, x5, ble.16958	# 1270
	jalr	x0, x1, 0	# 1283
ble.16958:
	ori		x7, x0, 4	# 1271
	mul		x7, x5, x7	# 1271
	add		x7, x6, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x8, 4(x4)	# 645
	lw		x9, 0(x4)	# 639
	lw		x10, 4(x7)	# 353
	ori		x11, x0, 1	# 1275
	sw		x27, 0(x2)	# 1275
	sw		x4, -4(x2)	# 1275
	sw		x6, -8(x2)	# 1275
	beq		x10, x11, beq.16961	# 1275
	ori		x11, x0, 2	# 1277
	beq		x10, x11, beq.16963	# 1277
	sw		x8, -12(x2)	# 1280
	sw		x5, -16(x2)	# 1280
	addi	x5, x7, 0
	addi	x4, x9, 0
	sw		x1, -20(x2)	# 1280
	addi	x2, x2, -24	# 1280
	jal		x1, setup_second_table.2774	# 1280
	addi	x2, x2, 24	# 1280
	lw		x1, -20(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -16(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -12(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.16962	# 1277
beq.16963:
	sw		x8, -12(x2)	# 1278
	sw		x5, -16(x2)	# 1278
	addi	x5, x7, 0
	addi	x4, x9, 0
	sw		x1, -20(x2)	# 1278
	addi	x2, x2, -24	# 1278
	jal		x1, setup_surface_table.2771	# 1278
	addi	x2, x2, 24	# 1278
	lw		x1, -20(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -16(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -12(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.16962:
	jal		x0, beq_cont.16960	# 1275
beq.16961:
	sw		x8, -12(x2)	# 1276
	sw		x5, -16(x2)	# 1276
	addi	x5, x7, 0
	addi	x4, x9, 0
	sw		x1, -20(x2)	# 1276
	addi	x2, x2, -24	# 1276
	jal		x1, setup_rect_table.2768	# 1276
	addi	x2, x2, 24	# 1276
	lw		x1, -20(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -16(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -12(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.16960:
	ori		x4, x0, 1	# 1282
	sub		x4, x6, x4	# 1282
	addi	x5, x0, 0	# 1270
	ble		x5, x4, ble.16964	# 1270
	jalr	x0, x1, 0	# 1283
ble.16964:
	ori		x5, x0, 4	# 1271
	mul		x5, x4, x5	# 1271
	lw		x6, -8(x2)	# 1271
	add		x5, x6, x5	# 1271
	lw		x5, 0(x5)	# 1271
	lw		x6, -4(x2)	# 645
	lw		x7, 4(x6)	# 645
	lw		x8, 0(x6)	# 639
	lw		x9, 4(x5)	# 353
	ori		x10, x0, 1	# 1275
	beq		x9, x10, beq.16967	# 1275
	ori		x10, x0, 2	# 1277
	beq		x9, x10, beq.16969	# 1277
	sw		x7, -20(x2)	# 1280
	sw		x4, -24(x2)	# 1280
	addi	x4, x8, 0
	sw		x1, -28(x2)	# 1280
	addi	x2, x2, -32	# 1280
	jal		x1, setup_second_table.2774	# 1280
	addi	x2, x2, 32	# 1280
	lw		x1, -28(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -24(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -20(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.16968	# 1277
beq.16969:
	sw		x7, -20(x2)	# 1278
	sw		x4, -24(x2)	# 1278
	addi	x4, x8, 0
	sw		x1, -28(x2)	# 1278
	addi	x2, x2, -32	# 1278
	jal		x1, setup_surface_table.2771	# 1278
	addi	x2, x2, 32	# 1278
	lw		x1, -28(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -24(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -20(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.16968:
	jal		x0, beq_cont.16966	# 1275
beq.16967:
	sw		x7, -20(x2)	# 1276
	sw		x4, -24(x2)	# 1276
	addi	x4, x8, 0
	sw		x1, -28(x2)	# 1276
	addi	x2, x2, -32	# 1276
	jal		x1, setup_rect_table.2768	# 1276
	addi	x2, x2, 32	# 1276
	lw		x1, -28(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -24(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -20(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.16966:
	ori		x4, x0, 1	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -4(x2)	# 1282
	lw		x27, 0(x2)	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x0, x31, 0	# 1282
setup_startp_constants.2782:
	lw		x6, 4(x27)	# 1295
	addi	x7, x0, 0	# 1295
	ble		x7, x5, ble.16970	# 1295
	jalr	x0, x1, 0	# 1310
ble.16970:
	ori		x7, x0, 4	# 1296
	mul		x7, x5, x7	# 1296
	add		x6, x6, x7	# 1296
	lw		x6, 0(x6)	# 1296
	lw		x7, 40(x6)	# 548
	lw		x8, 4(x6)	# 353
	addi	x9, x0, 0	# 1299
	addi	x10, x0, 0	# 1299
	ori		x11, x0, 4	# 1299
	mul		x10, x10, x11	# 1299
	add		x10, x4, x10	# 1299
	flw		f0, 0(x10)	# 1299
	lw		x10, 20(x6)	# 431
	addi	x11, x0, 0	# 436
	ori		x12, x0, 4	# 436
	mul		x11, x11, x12	# 436
	add		x10, x10, x11	# 436
	flw		f1, 0(x10)	# 436
	fsub	f0, f0, f1	# 1299
	ori		x10, x0, 4	# 1299
	mul		x9, x9, x10	# 1299
	add		x9, x7, x9	# 1299
	fsw		f0, 0(x9)	# 1299
	ori		x9, x0, 1	# 1300
	ori		x10, x0, 1	# 1300
	ori		x11, x0, 4	# 1300
	mul		x10, x10, x11	# 1300
	add		x10, x4, x10	# 1300
	flw		f0, 0(x10)	# 1300
	lw		x10, 20(x6)	# 441
	ori		x11, x0, 1	# 446
	ori		x12, x0, 4	# 446
	mul		x11, x11, x12	# 446
	add		x10, x10, x11	# 446
	flw		f1, 0(x10)	# 446
	fsub	f0, f0, f1	# 1300
	ori		x10, x0, 4	# 1300
	mul		x9, x9, x10	# 1300
	add		x9, x7, x9	# 1300
	fsw		f0, 0(x9)	# 1300
	ori		x9, x0, 2	# 1301
	ori		x10, x0, 2	# 1301
	ori		x11, x0, 4	# 1301
	mul		x10, x10, x11	# 1301
	add		x10, x4, x10	# 1301
	flw		f0, 0(x10)	# 1301
	lw		x10, 20(x6)	# 451
	ori		x11, x0, 2	# 456
	ori		x12, x0, 4	# 456
	mul		x11, x11, x12	# 456
	add		x10, x10, x11	# 456
	flw		f1, 0(x10)	# 456
	fsub	f0, f0, f1	# 1301
	ori		x10, x0, 4	# 1301
	mul		x9, x9, x10	# 1301
	add		x9, x7, x9	# 1301
	fsw		f0, 0(x9)	# 1301
	ori		x9, x0, 2	# 1302
	sw		x4, 0(x2)	# 1302
	sw		x27, -4(x2)	# 1302
	sw		x5, -8(x2)	# 1302
	beq		x8, x9, beq.16973	# 1302
	ori		x9, x0, 2	# 1305
	ble		x8, x9, ble.16975	# 1305
	addi	x9, x0, 0	# 1306
	ori		x10, x0, 4	# 1306
	mul		x9, x9, x10	# 1306
	add		x9, x7, x9	# 1306
	flw		f0, 0(x9)	# 1306
	ori		x9, x0, 1	# 1306
	ori		x10, x0, 4	# 1306
	mul		x9, x9, x10	# 1306
	add		x9, x7, x9	# 1306
	flw		f1, 0(x9)	# 1306
	ori		x9, x0, 2	# 1306
	ori		x10, x0, 4	# 1306
	mul		x9, x9, x10	# 1306
	add		x9, x7, x9	# 1306
	flw		f2, 0(x9)	# 1306
	sw		x7, -12(x2)	# 1306
	sw		x8, -16(x2)	# 1306
	addi	x4, x6, 0
	sw		x1, -20(x2)	# 1306
	addi	x2, x2, -24	# 1306
	jal		x1, quadratic.2705	# 1306
	addi	x2, x2, 24	# 1306
	lw		x1, -20(x2)	# 1306
	ori		x4, x0, 3	# 1307
	ori		x5, x0, 3	# 1307
	lw		x6, -16(x2)	# 1307
	beq		x6, x5, beq.16977	# 1307
	jal		x0, beq_cont.16976	# 1307
beq.16977:
	lui		x5, %hi(l.10376)	# 1307
	ori		x5, x0, %lo(l.10376)	# 1307
	flw		f1, 0(x5)	# 1307
	fsub	f0, f0, f1	# 1307
beq_cont.16976:
	ori		x5, x0, 4	# 1307
	mul		x4, x4, x5	# 1307
	lw		x5, -12(x2)	# 1307
	add		x4, x5, x4	# 1307
	fsw		f0, 0(x4)	# 1307
	jal		x0, ble_cont.16974	# 1305
ble.16975:
ble_cont.16974:
	jal		x0, beq_cont.16972	# 1302
beq.16973:
	ori		x8, x0, 3	# 1303
	lw		x6, 16(x6)	# 421
	addi	x9, x0, 0	# 1304
	ori		x10, x0, 4	# 1304
	mul		x9, x9, x10	# 1304
	add		x9, x7, x9	# 1304
	flw		f0, 0(x9)	# 1304
	ori		x9, x0, 1	# 1304
	ori		x10, x0, 4	# 1304
	mul		x9, x9, x10	# 1304
	add		x9, x7, x9	# 1304
	flw		f1, 0(x9)	# 1304
	ori		x9, x0, 2	# 1304
	ori		x10, x0, 4	# 1304
	mul		x9, x9, x10	# 1304
	add		x9, x7, x9	# 1304
	flw		f2, 0(x9)	# 1304
	addi	x9, x0, 0	# 297
	ori		x10, x0, 4	# 297
	mul		x9, x9, x10	# 297
	add		x9, x6, x9	# 297
	flw		f3, 0(x9)	# 297
	fmul	f0, f3, f0	# 297
	ori		x9, x0, 1	# 297
	ori		x10, x0, 4	# 297
	mul		x9, x9, x10	# 297
	add		x9, x6, x9	# 297
	flw		f3, 0(x9)	# 297
	fmul	f1, f3, f1	# 297
	fadd	f0, f0, f1	# 297
	ori		x9, x0, 2	# 297
	ori		x10, x0, 4	# 297
	mul		x9, x9, x10	# 297
	add		x6, x6, x9	# 297
	flw		f1, 0(x6)	# 297
	fmul	f1, f1, f2	# 297
	fadd	f0, f0, f1	# 297
	ori		x6, x0, 4	# 1303
	mul		x6, x8, x6	# 1303
	add		x6, x7, x6	# 1303
	fsw		f0, 0(x6)	# 1303
beq_cont.16972:
	ori		x4, x0, 1	# 1309
	lw		x5, -8(x2)	# 1309
	sub		x5, x5, x4	# 1309
	lw		x4, 0(x2)	# 1309
	lw		x27, -4(x2)	# 1309
	lw		x31, 0(x27)	# 1309
	jalr	x0, x31, 0	# 1309
setup_startp.2785:
	lw		x5, 12(x27)	# 259
	lw		x6, 8(x27)	# 259
	lw		x7, 4(x27)	# 259
	addi	x8, x0, 0	# 259
	addi	x9, x0, 0	# 259
	ori		x10, x0, 4	# 259
	mul		x9, x9, x10	# 259
	add		x9, x4, x9	# 259
	flw		f0, 0(x9)	# 259
	ori		x9, x0, 4	# 259
	mul		x8, x8, x9	# 259
	add		x8, x5, x8	# 259
	fsw		f0, 0(x8)	# 259
	ori		x8, x0, 1	# 260
	ori		x9, x0, 1	# 260
	ori		x10, x0, 4	# 260
	mul		x9, x9, x10	# 260
	add		x9, x4, x9	# 260
	flw		f0, 0(x9)	# 260
	ori		x9, x0, 4	# 260
	mul		x8, x8, x9	# 260
	add		x8, x5, x8	# 260
	fsw		f0, 0(x8)	# 260
	ori		x8, x0, 2	# 261
	ori		x9, x0, 2	# 261
	ori		x10, x0, 4	# 261
	mul		x9, x9, x10	# 261
	add		x9, x4, x9	# 261
	flw		f0, 0(x9)	# 261
	ori		x9, x0, 4	# 261
	mul		x8, x8, x9	# 261
	add		x5, x5, x8	# 261
	fsw		f0, 0(x5)	# 261
	addi	x5, x0, 0	# 1315
	ori		x8, x0, 4	# 1315
	mul		x5, x5, x8	# 1315
	add		x5, x7, x5	# 1315
	lw		x5, 0(x5)	# 1315
	ori		x7, x0, 1	# 1315
	sub		x5, x5, x7	# 1315
	addi	x27, x6, 0
	lw		x31, 0(x27)	# 1315
	jalr	x0, x31, 0	# 1315
is_rect_outside.2787:
	lui		x5, %hi(l.10373)	# 5
	ori		x5, x0, %lo(l.10373)	# 5
	flw		f3, 0(x5)	# 5
	fle		x31, f0, f3	# 5
	beq		x31, x0, fle_else.16979	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.16978	# 5
fle_else.16979:
fle_cont.16978:
	lw		x5, 16(x4)	# 391
	addi	x6, x0, 0	# 396
	ori		x7, x0, 4	# 396
	mul		x6, x6, x7	# 396
	add		x5, x5, x6	# 396
	flw		f3, 0(x5)	# 396
	fle		x31, f3, f0	# 6
	beq		x31, x0, fle_else.16981	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.16980	# 6
fle_else.16981:
	ori		x5, x0, 1	# 6
fle_cont.16980:
	addi	x6, x0, 0	# 1327
	beq		x5, x6, beq.16983	# 1327
	lui		x5, %hi(l.10373)	# 5
	ori		x5, x0, %lo(l.10373)	# 5
	flw		f0, 0(x5)	# 5
	fle		x31, f1, f0	# 5
	beq		x31, x0, fle_else.16985	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f1	# 5
	jal		x0, fle_cont.16984	# 5
fle_else.16985:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f1	# 5
fle_cont.16984:
	lw		x5, 16(x4)	# 401
	ori		x6, x0, 1	# 406
	ori		x7, x0, 4	# 406
	mul		x6, x6, x7	# 406
	add		x5, x5, x6	# 406
	flw		f1, 0(x5)	# 406
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.16987	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.16986	# 6
fle_else.16987:
	ori		x5, x0, 1	# 6
fle_cont.16986:
	addi	x6, x0, 0	# 1328
	beq		x5, x6, beq.16989	# 1328
	lui		x5, %hi(l.10373)	# 5
	ori		x5, x0, %lo(l.10373)	# 5
	flw		f0, 0(x5)	# 5
	fle		x31, f2, f0	# 5
	beq		x31, x0, fle_else.16991	# 5
	fsub	f0, f0, f0	# 5
	fsub	f0, f0, f2	# 5
	jal		x0, fle_cont.16990	# 5
fle_else.16991:
	fsub	f0, f0, f0	# 5
	fadd	f0, f0, f2	# 5
fle_cont.16990:
	lw		x5, 16(x4)	# 411
	ori		x6, x0, 2	# 416
	ori		x7, x0, 4	# 416
	mul		x6, x6, x7	# 416
	add		x5, x5, x6	# 416
	flw		f1, 0(x5)	# 416
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.16993	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.16992	# 6
fle_else.16993:
	ori		x5, x0, 1	# 6
fle_cont.16992:
	jal		x0, beq_cont.16988	# 1328
beq.16989:
	addi	x5, x0, 0	# 1330
beq_cont.16988:
	jal		x0, beq_cont.16982	# 1327
beq.16983:
	addi	x5, x0, 0	# 1331
beq_cont.16982:
	addi	x6, x0, 0	# 1326
	beq		x5, x6, beq.16994	# 1326
	lw		x4, 24(x4)	# 373
	jalr	x0, x1, 0	# 377
beq.16994:
	lw		x4, 24(x4)	# 373
	addi	x5, x0, 0	# 1332
	beq		x4, x5, beq.16995	# 1332
	addi	x4, x0, 0	# 1332
	jalr	x0, x1, 0	# 1332
beq.16995:
	ori		x4, x0, 1	# 1332
	jalr	x0, x1, 0	# 1332
is_plane_outside.2792:
	lw		x5, 16(x4)	# 421
	addi	x6, x0, 0	# 297
	ori		x7, x0, 4	# 297
	mul		x6, x6, x7	# 297
	add		x6, x5, x6	# 297
	flw		f3, 0(x6)	# 297
	fmul	f0, f3, f0	# 297
	ori		x6, x0, 1	# 297
	ori		x7, x0, 4	# 297
	mul		x6, x6, x7	# 297
	add		x6, x5, x6	# 297
	flw		f3, 0(x6)	# 297
	fmul	f1, f3, f1	# 297
	fadd	f0, f0, f1	# 297
	ori		x6, x0, 2	# 297
	ori		x7, x0, 4	# 297
	mul		x6, x6, x7	# 297
	add		x5, x5, x6	# 297
	flw		f1, 0(x5)	# 297
	fmul	f1, f1, f2	# 297
	fadd	f0, f0, f1	# 297
	lw		x4, 24(x4)	# 373
	lui		x5, %hi(l.10373)	# 3
	ori		x5, x0, %lo(l.10373)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.16997	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.16996	# 3
fle_else.16997:
	ori		x5, x0, 1	# 3
fle_cont.16996:
	addi	x6, x0, 0	# 204
	beq		x4, x6, beq.16999	# 204
	addi	x4, x0, 0	# 204
	beq		x5, x4, beq.17001	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.17000	# 204
beq.17001:
	ori		x4, x0, 1	# 204
beq_cont.17000:
	jal		x0, beq_cont.16998	# 204
beq.16999:
	addi	x4, x5, 0	# 204
beq_cont.16998:
	addi	x5, x0, 0	# 1338
	beq		x4, x5, beq.17002	# 1338
	addi	x4, x0, 0	# 1338
	jalr	x0, x1, 0	# 1338
beq.17002:
	ori		x4, x0, 1	# 1338
	jalr	x0, x1, 0	# 1338
is_second_outside.2797:
	sw		x4, 0(x2)	# 1343
	sw		x1, -4(x2)	# 1343
	addi	x2, x2, -8	# 1343
	jal		x1, quadratic.2705	# 1343
	addi	x2, x2, 8	# 1343
	lw		x1, -4(x2)	# 1343
	lw		x4, 0(x2)	# 353
	lw		x5, 4(x4)	# 353
	ori		x6, x0, 3	# 1344
	beq		x5, x6, beq.17004	# 1344
	jal		x0, beq_cont.17003	# 1344
beq.17004:
	lui		x5, %hi(l.10376)	# 1344
	ori		x5, x0, %lo(l.10376)	# 1344
	flw		f1, 0(x5)	# 1344
	fsub	f0, f0, f1	# 1344
beq_cont.17003:
	lw		x4, 24(x4)	# 373
	lui		x5, %hi(l.10373)	# 3
	ori		x5, x0, %lo(l.10373)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.17006	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.17005	# 3
fle_else.17006:
	ori		x5, x0, 1	# 3
fle_cont.17005:
	addi	x6, x0, 0	# 204
	beq		x4, x6, beq.17008	# 204
	addi	x4, x0, 0	# 204
	beq		x5, x4, beq.17010	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.17009	# 204
beq.17010:
	ori		x4, x0, 1	# 204
beq_cont.17009:
	jal		x0, beq_cont.17007	# 204
beq.17008:
	addi	x4, x5, 0	# 204
beq_cont.17007:
	addi	x5, x0, 0	# 1345
	beq		x4, x5, beq.17011	# 1345
	addi	x4, x0, 0	# 1345
	jalr	x0, x1, 0	# 1345
beq.17011:
	ori		x4, x0, 1	# 1345
	jalr	x0, x1, 0	# 1345
is_outside.2802:
	lw		x5, 20(x4)	# 431
	addi	x6, x0, 0	# 436
	ori		x7, x0, 4	# 436
	mul		x6, x6, x7	# 436
	add		x5, x5, x6	# 436
	flw		f3, 0(x5)	# 436
	fsub	f0, f0, f3	# 1350
	lw		x5, 20(x4)	# 441
	ori		x6, x0, 1	# 446
	ori		x7, x0, 4	# 446
	mul		x6, x6, x7	# 446
	add		x5, x5, x6	# 446
	flw		f3, 0(x5)	# 446
	fsub	f1, f1, f3	# 1351
	lw		x5, 20(x4)	# 451
	ori		x6, x0, 2	# 456
	ori		x7, x0, 4	# 456
	mul		x6, x6, x7	# 456
	add		x5, x5, x6	# 456
	flw		f3, 0(x5)	# 456
	fsub	f2, f2, f3	# 1352
	lw		x5, 4(x4)	# 353
	ori		x6, x0, 1	# 1354
	beq		x5, x6, beq.17012	# 1354
	ori		x6, x0, 2	# 1356
	beq		x5, x6, beq.17013	# 1356
	sw		x4, 0(x2)	# 1343
	sw		x1, -4(x2)	# 1343
	addi	x2, x2, -8	# 1343
	jal		x1, quadratic.2705	# 1343
	addi	x2, x2, 8	# 1343
	lw		x1, -4(x2)	# 1343
	lw		x4, 0(x2)	# 353
	lw		x5, 4(x4)	# 353
	ori		x6, x0, 3	# 1344
	beq		x5, x6, beq.17015	# 1344
	jal		x0, beq_cont.17014	# 1344
beq.17015:
	lui		x5, %hi(l.10376)	# 1344
	ori		x5, x0, %lo(l.10376)	# 1344
	flw		f1, 0(x5)	# 1344
	fsub	f0, f0, f1	# 1344
beq_cont.17014:
	lw		x4, 24(x4)	# 373
	lui		x5, %hi(l.10373)	# 3
	ori		x5, x0, %lo(l.10373)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.17017	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.17016	# 3
fle_else.17017:
	ori		x5, x0, 1	# 3
fle_cont.17016:
	addi	x6, x0, 0	# 204
	beq		x4, x6, beq.17019	# 204
	addi	x4, x0, 0	# 204
	beq		x5, x4, beq.17021	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.17020	# 204
beq.17021:
	ori		x4, x0, 1	# 204
beq_cont.17020:
	jal		x0, beq_cont.17018	# 204
beq.17019:
	addi	x4, x5, 0	# 204
beq_cont.17018:
	addi	x5, x0, 0	# 1345
	beq		x4, x5, beq.17022	# 1345
	addi	x4, x0, 0	# 1345
	jalr	x0, x1, 0	# 1345
beq.17022:
	ori		x4, x0, 1	# 1345
	jalr	x0, x1, 0	# 1345
beq.17013:
	lw		x5, 16(x4)	# 421
	addi	x6, x0, 0	# 297
	ori		x7, x0, 4	# 297
	mul		x6, x6, x7	# 297
	add		x6, x5, x6	# 297
	flw		f3, 0(x6)	# 297
	fmul	f0, f3, f0	# 297
	ori		x6, x0, 1	# 297
	ori		x7, x0, 4	# 297
	mul		x6, x6, x7	# 297
	add		x6, x5, x6	# 297
	flw		f3, 0(x6)	# 297
	fmul	f1, f3, f1	# 297
	fadd	f0, f0, f1	# 297
	ori		x6, x0, 2	# 297
	ori		x7, x0, 4	# 297
	mul		x6, x6, x7	# 297
	add		x5, x5, x6	# 297
	flw		f1, 0(x5)	# 297
	fmul	f1, f1, f2	# 297
	fadd	f0, f0, f1	# 297
	lw		x4, 24(x4)	# 373
	lui		x5, %hi(l.10373)	# 3
	ori		x5, x0, %lo(l.10373)	# 3
	flw		f1, 0(x5)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.17024	# 3
	addi	x5, x0, 0	# 3
	jal		x0, fle_cont.17023	# 3
fle_else.17024:
	ori		x5, x0, 1	# 3
fle_cont.17023:
	addi	x6, x0, 0	# 204
	beq		x4, x6, beq.17026	# 204
	addi	x4, x0, 0	# 204
	beq		x5, x4, beq.17028	# 204
	addi	x4, x0, 0	# 204
	jal		x0, beq_cont.17027	# 204
beq.17028:
	ori		x4, x0, 1	# 204
beq_cont.17027:
	jal		x0, beq_cont.17025	# 204
beq.17026:
	addi	x4, x5, 0	# 204
beq_cont.17025:
	addi	x5, x0, 0	# 1338
	beq		x4, x5, beq.17029	# 1338
	addi	x4, x0, 0	# 1338
	jalr	x0, x1, 0	# 1338
beq.17029:
	ori		x4, x0, 1	# 1338
	jalr	x0, x1, 0	# 1338
beq.17012:
	jal		x0, is_rect_outside.2787	# 1355
check_all_inside.2807:
	lw		x6, 4(x27)	# 1364
	ori		x7, x0, 4	# 1364
	mul		x7, x4, x7	# 1364
	add		x7, x5, x7	# 1364
	lw		x7, 0(x7)	# 1364
	lui		x8, -1	# 1365
	ori		x8, x0, -1	# 1365
	beq		x7, x8, beq.17030	# 1365
	ori		x8, x0, 4	# 1368
	mul		x7, x7, x8	# 1368
	add		x7, x6, x7	# 1368
	lw		x7, 0(x7)	# 1368
	lw		x8, 20(x7)	# 431
	addi	x9, x0, 0	# 436
	ori		x10, x0, 4	# 436
	mul		x9, x9, x10	# 436
	add		x8, x8, x9	# 436
	flw		f3, 0(x8)	# 436
	fsub	f3, f0, f3	# 1350
	lw		x8, 20(x7)	# 441
	ori		x9, x0, 1	# 446
	ori		x10, x0, 4	# 446
	mul		x9, x9, x10	# 446
	add		x8, x8, x9	# 446
	flw		f4, 0(x8)	# 446
	fsub	f4, f1, f4	# 1351
	lw		x8, 20(x7)	# 451
	ori		x9, x0, 2	# 456
	ori		x10, x0, 4	# 456
	mul		x9, x9, x10	# 456
	add		x8, x8, x9	# 456
	flw		f5, 0(x8)	# 456
	fsub	f5, f2, f5	# 1352
	lw		x8, 4(x7)	# 353
	ori		x9, x0, 1	# 1354
	sw		x27, 0(x2)	# 1354
	fsw		f2, -8(x2)	# 1354
	fsw		f1, -16(x2)	# 1354
	fsw		f0, -24(x2)	# 1354
	sw		x6, -32(x2)	# 1354
	sw		x5, -36(x2)	# 1354
	sw		x4, -40(x2)	# 1354
	beq		x8, x9, beq.17033	# 1354
	ori		x9, x0, 2	# 1356
	beq		x8, x9, beq.17035	# 1356
	addi	x4, x7, 0
	fsub	f2, f2, f2
	fadd	f2, f2, f5
	fsub	f1, f1, f1
	fadd	f1, f1, f4
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -44(x2)	# 1359
	addi	x2, x2, -48	# 1359
	jal		x1, is_second_outside.2797	# 1359
	addi	x2, x2, 48	# 1359
	lw		x1, -44(x2)	# 1359
	jal		x0, beq_cont.17034	# 1356
beq.17035:
	addi	x4, x7, 0
	fsub	f2, f2, f2
	fadd	f2, f2, f5
	fsub	f1, f1, f1
	fadd	f1, f1, f4
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -44(x2)	# 1357
	addi	x2, x2, -48	# 1357
	jal		x1, is_plane_outside.2792	# 1357
	addi	x2, x2, 48	# 1357
	lw		x1, -44(x2)	# 1357
beq_cont.17034:
	jal		x0, beq_cont.17032	# 1354
beq.17033:
	addi	x4, x7, 0
	fsub	f2, f2, f2
	fadd	f2, f2, f5
	fsub	f1, f1, f1
	fadd	f1, f1, f4
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -44(x2)	# 1355
	addi	x2, x2, -48	# 1355
	jal		x1, is_rect_outside.2787	# 1355
	addi	x2, x2, 48	# 1355
	lw		x1, -44(x2)	# 1355
beq_cont.17032:
	addi	x5, x0, 0	# 1368
	beq		x4, x5, beq.17036	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.17036:
	lw		x4, -40(x2)	# 1371
	addi	x4, x4, 1	# 1371
	ori		x5, x0, 4	# 1364
	mul		x5, x4, x5	# 1364
	lw		x6, -36(x2)	# 1364
	add		x5, x6, x5	# 1364
	lw		x5, 0(x5)	# 1364
	lui		x7, -1	# 1365
	ori		x7, x0, -1	# 1365
	beq		x5, x7, beq.17037	# 1365
	ori		x7, x0, 4	# 1368
	mul		x5, x5, x7	# 1368
	lw		x7, -32(x2)	# 1368
	add		x5, x7, x5	# 1368
	lw		x5, 0(x5)	# 1368
	flw		f0, -24(x2)	# 1368
	flw		f1, -16(x2)	# 1368
	flw		f2, -8(x2)	# 1368
	sw		x4, -44(x2)	# 1368
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 1368
	addi	x2, x2, -52	# 1368
	jal		x1, is_outside.2802	# 1368
	addi	x2, x2, 52	# 1368
	lw		x1, -48(x2)	# 1368
	addi	x5, x0, 0	# 1368
	beq		x4, x5, beq.17038	# 1368
	addi	x4, x0, 0	# 1369
	jalr	x0, x1, 0	# 1369
beq.17038:
	lw		x4, -44(x2)	# 1371
	addi	x4, x4, 1	# 1371
	flw		f0, -24(x2)	# 1371
	flw		f1, -16(x2)	# 1371
	flw		f2, -8(x2)	# 1371
	lw		x5, -36(x2)	# 1371
	lw		x27, 0(x2)	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x0, x31, 0	# 1371
beq.17037:
	ori		x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
beq.17030:
	ori		x4, x0, 1	# 1366
	jalr	x0, x1, 0	# 1366
shadow_check_and_group.2813:
	lw		x6, 28(x27)	# 1384
	lw		x7, 24(x27)	# 1384
	lw		x8, 20(x27)	# 1384
	lw		x9, 16(x27)	# 1384
	lw		x10, 12(x27)	# 1384
	lw		x11, 8(x27)	# 1384
	lw		x12, 4(x27)	# 1384
	ori		x13, x0, 4	# 1384
	mul		x13, x4, x13	# 1384
	add		x13, x5, x13	# 1384
	lw		x13, 0(x13)	# 1384
	lui		x14, -1	# 1384
	ori		x14, x0, -1	# 1384
	beq		x13, x14, beq.17039	# 1384
	ori		x13, x0, 4	# 1387
	mul		x13, x4, x13	# 1387
	add		x13, x5, x13	# 1387
	lw		x13, 0(x13)	# 1387
	sw		x12, 0(x2)	# 1388
	sw		x11, -4(x2)	# 1388
	sw		x10, -8(x2)	# 1388
	sw		x5, -12(x2)	# 1388
	sw		x27, -16(x2)	# 1388
	sw		x4, -20(x2)	# 1388
	sw		x8, -24(x2)	# 1388
	sw		x13, -28(x2)	# 1388
	sw		x7, -32(x2)	# 1388
	addi	x5, x9, 0
	addi	x4, x13, 0
	addi	x27, x6, 0
	addi	x6, x11, 0
	sw		x1, -36(x2)	# 1388
	addi	x2, x2, -40	# 1388
	lw		x31, 0(x27)	# 1388
	jalr	x1, x31, 0	# 1388
	addi	x2, x2, 40	# 1388
	lw		x1, -36(x2)	# 1388
	addi	x5, x0, 0	# 1389
	ori		x6, x0, 4	# 1389
	mul		x5, x5, x6	# 1389
	lw		x6, -32(x2)	# 1389
	add		x5, x6, x5	# 1389
	flw		f0, 0(x5)	# 1389
	addi	x5, x0, 0	# 1390
	beq		x4, x5, beq.17041	# 1390
	lui		x4, %hi(l.11716)	# 1390
	ori		x4, x0, %lo(l.11716)	# 1390
	flw		f1, 0(x4)	# 1390
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17043	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17042	# 6
fle_else.17043:
	ori		x4, x0, 1	# 6
fle_cont.17042:
	jal		x0, beq_cont.17040	# 1390
beq.17041:
	addi	x4, x0, 0	# 1390
beq_cont.17040:
	addi	x5, x0, 0	# 1390
	beq		x4, x5, beq.17044	# 1390
	lui		x4, %hi(l.11718)	# 1393
	ori		x4, x0, %lo(l.11718)	# 1393
	flw		f1, 0(x4)	# 1393
	fadd	f0, f0, f1	# 1393
	addi	x4, x0, 0	# 1394
	ori		x5, x0, 4	# 1394
	mul		x4, x4, x5	# 1394
	lw		x5, -8(x2)	# 1394
	add		x4, x5, x4	# 1394
	flw		f1, 0(x4)	# 1394
	fmul	f1, f1, f0	# 1394
	addi	x4, x0, 0	# 1394
	ori		x6, x0, 4	# 1394
	mul		x4, x4, x6	# 1394
	lw		x6, -4(x2)	# 1394
	add		x4, x6, x4	# 1394
	flw		f2, 0(x4)	# 1394
	fadd	f1, f1, f2	# 1394
	ori		x4, x0, 1	# 1395
	ori		x7, x0, 4	# 1395
	mul		x4, x4, x7	# 1395
	add		x4, x5, x4	# 1395
	flw		f2, 0(x4)	# 1395
	fmul	f2, f2, f0	# 1395
	ori		x4, x0, 1	# 1395
	ori		x7, x0, 4	# 1395
	mul		x4, x4, x7	# 1395
	add		x4, x6, x4	# 1395
	flw		f3, 0(x4)	# 1395
	fadd	f2, f2, f3	# 1395
	ori		x4, x0, 2	# 1396
	ori		x7, x0, 4	# 1396
	mul		x4, x4, x7	# 1396
	add		x4, x5, x4	# 1396
	flw		f3, 0(x4)	# 1396
	fmul	f0, f3, f0	# 1396
	ori		x4, x0, 2	# 1396
	ori		x5, x0, 4	# 1396
	mul		x4, x4, x5	# 1396
	add		x4, x6, x4	# 1396
	flw		f3, 0(x4)	# 1396
	fadd	f0, f0, f3	# 1396
	addi	x4, x0, 0	# 1397
	ori		x5, x0, 4	# 1364
	mul		x4, x4, x5	# 1364
	lw		x5, -12(x2)	# 1364
	add		x4, x5, x4	# 1364
	lw		x4, 0(x4)	# 1364
	lui		x6, -1	# 1365
	ori		x6, x0, -1	# 1365
	beq		x4, x6, beq.17046	# 1365
	ori		x6, x0, 4	# 1368
	mul		x4, x4, x6	# 1368
	lw		x6, -24(x2)	# 1368
	add		x4, x6, x4	# 1368
	lw		x4, 0(x4)	# 1368
	fsw		f0, -40(x2)	# 1368
	fsw		f2, -48(x2)	# 1368
	fsw		f1, -56(x2)	# 1368
	fsub	f31, f31, f31
	fadd	f31, f31, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f31
	sw		x1, -64(x2)	# 1368
	addi	x2, x2, -68	# 1368
	jal		x1, is_outside.2802	# 1368
	addi	x2, x2, 68	# 1368
	lw		x1, -64(x2)	# 1368
	addi	x5, x0, 0	# 1368
	beq		x4, x5, beq.17049	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.17048	# 1368
beq.17049:
	ori		x4, x0, 1	# 1371
	flw		f0, -56(x2)	# 1371
	flw		f1, -48(x2)	# 1371
	flw		f2, -40(x2)	# 1371
	lw		x5, -12(x2)	# 1371
	lw		x27, 0(x2)	# 1371
	sw		x1, -64(x2)	# 1371
	addi	x2, x2, -68	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 68	# 1371
	lw		x1, -64(x2)	# 1371
beq_cont.17048:
	jal		x0, beq_cont.17045	# 1365
beq.17046:
	ori		x4, x0, 1	# 1366
beq_cont.17045:
	addi	x5, x0, 0	# 1397
	beq		x4, x5, beq.17050	# 1397
	ori		x4, x0, 1	# 1398
	jalr	x0, x1, 0	# 1398
beq.17050:
	lw		x4, -20(x2)	# 1400
	addi	x4, x4, 1	# 1400
	lw		x5, -12(x2)	# 1400
	lw		x27, -16(x2)	# 1400
	lw		x31, 0(x27)	# 1400
	jalr	x0, x31, 0	# 1400
beq.17044:
	ori		x4, x0, 4	# 1406
	lw		x5, -28(x2)	# 1406
	mul		x4, x5, x4	# 1406
	lw		x5, -24(x2)	# 1406
	add		x4, x5, x4	# 1406
	lw		x4, 0(x4)	# 1406
	lw		x4, 24(x4)	# 373
	addi	x5, x0, 0	# 1406
	beq		x4, x5, beq.17051	# 1406
	lw		x4, -20(x2)	# 1407
	addi	x4, x4, 1	# 1407
	lw		x5, -12(x2)	# 1407
	lw		x27, -16(x2)	# 1407
	lw		x31, 0(x27)	# 1407
	jalr	x0, x31, 0	# 1407
beq.17051:
	addi	x4, x0, 0	# 1409
	jalr	x0, x1, 0	# 1409
beq.17039:
	addi	x4, x0, 0	# 1385
	jalr	x0, x1, 0	# 1385
shadow_check_one_or_group.2816:
	lw		x6, 8(x27)	# 1414
	lw		x7, 4(x27)	# 1414
	ori		x8, x0, 4	# 1414
	mul		x8, x4, x8	# 1414
	add		x8, x5, x8	# 1414
	lw		x8, 0(x8)	# 1414
	lui		x9, -1	# 1415
	ori		x9, x0, -1	# 1415
	beq		x8, x9, beq.17052	# 1415
	ori		x9, x0, 4	# 1418
	mul		x8, x8, x9	# 1418
	add		x8, x7, x8	# 1418
	lw		x8, 0(x8)	# 1418
	addi	x9, x0, 0	# 1419
	sw		x27, 0(x2)	# 1419
	sw		x6, -4(x2)	# 1419
	sw		x7, -8(x2)	# 1419
	sw		x5, -12(x2)	# 1419
	sw		x4, -16(x2)	# 1419
	addi	x5, x8, 0
	addi	x4, x9, 0
	addi	x27, x6, 0
	sw		x1, -20(x2)	# 1419
	addi	x2, x2, -24	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 24	# 1419
	lw		x1, -20(x2)	# 1419
	addi	x5, x0, 0	# 1420
	beq		x4, x5, beq.17053	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.17053:
	lw		x4, -16(x2)	# 1423
	addi	x4, x4, 1	# 1423
	ori		x5, x0, 4	# 1414
	mul		x5, x4, x5	# 1414
	lw		x6, -12(x2)	# 1414
	add		x5, x6, x5	# 1414
	lw		x5, 0(x5)	# 1414
	lui		x7, -1	# 1415
	ori		x7, x0, -1	# 1415
	beq		x5, x7, beq.17054	# 1415
	ori		x7, x0, 4	# 1418
	mul		x5, x5, x7	# 1418
	lw		x7, -8(x2)	# 1418
	add		x5, x7, x5	# 1418
	lw		x5, 0(x5)	# 1418
	addi	x7, x0, 0	# 1419
	lw		x27, -4(x2)	# 1419
	sw		x4, -20(x2)	# 1419
	addi	x4, x7, 0
	sw		x1, -24(x2)	# 1419
	addi	x2, x2, -28	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 28	# 1419
	lw		x1, -24(x2)	# 1419
	addi	x5, x0, 0	# 1420
	beq		x4, x5, beq.17055	# 1420
	ori		x4, x0, 1	# 1421
	jalr	x0, x1, 0	# 1421
beq.17055:
	lw		x4, -20(x2)	# 1423
	addi	x4, x4, 1	# 1423
	lw		x5, -12(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x0, x31, 0	# 1423
beq.17054:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
beq.17052:
	addi	x4, x0, 0	# 1416
	jalr	x0, x1, 0	# 1416
shadow_check_one_or_matrix.2819:
	lw		x6, 28(x27)	# 1429
	lw		x7, 24(x27)	# 1429
	lw		x8, 20(x27)	# 1429
	lw		x9, 16(x27)	# 1429
	lw		x10, 12(x27)	# 1429
	lw		x11, 8(x27)	# 1429
	lw		x12, 4(x27)	# 1429
	ori		x13, x0, 4	# 1429
	mul		x13, x4, x13	# 1429
	add		x13, x5, x13	# 1429
	lw		x13, 0(x13)	# 1429
	addi	x14, x0, 0	# 1430
	ori		x15, x0, 4	# 1430
	mul		x14, x14, x15	# 1430
	add		x14, x13, x14	# 1430
	lw		x14, 0(x14)	# 1430
	lui		x15, -1	# 1431
	ori		x15, x0, -1	# 1431
	beq		x14, x15, beq.17056	# 1431
	ori		x15, x0, 99	# 1435
	sw		x8, 0(x2)	# 1435
	sw		x9, -4(x2)	# 1435
	sw		x12, -8(x2)	# 1435
	sw		x13, -12(x2)	# 1435
	sw		x5, -16(x2)	# 1435
	sw		x27, -20(x2)	# 1435
	sw		x4, -24(x2)	# 1435
	beq		x14, x15, beq.17058	# 1435
	sw		x7, -28(x2)	# 1438
	addi	x5, x10, 0
	addi	x4, x14, 0
	addi	x27, x6, 0
	addi	x6, x11, 0
	sw		x1, -32(x2)	# 1438
	addi	x2, x2, -36	# 1438
	lw		x31, 0(x27)	# 1438
	jalr	x1, x31, 0	# 1438
	addi	x2, x2, 36	# 1438
	lw		x1, -32(x2)	# 1438
	addi	x5, x0, 0	# 1441
	beq		x4, x5, beq.17060	# 1441
	addi	x4, x0, 0	# 1442
	ori		x5, x0, 4	# 1442
	mul		x4, x4, x5	# 1442
	lw		x5, -28(x2)	# 1442
	add		x4, x5, x4	# 1442
	flw		f0, 0(x4)	# 1442
	lui		x4, %hi(l.11768)	# 1442
	ori		x4, x0, %lo(l.11768)	# 1442
	flw		f1, 0(x4)	# 1442
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17062	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17061	# 6
fle_else.17062:
	ori		x4, x0, 1	# 6
fle_cont.17061:
	addi	x5, x0, 0	# 1442
	beq		x4, x5, beq.17064	# 1442
	ori		x4, x0, 1	# 1443
	ori		x5, x0, 4	# 1414
	mul		x4, x4, x5	# 1414
	lw		x5, -12(x2)	# 1414
	add		x4, x5, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lui		x6, -1	# 1415
	ori		x6, x0, -1	# 1415
	beq		x4, x6, beq.17066	# 1415
	ori		x6, x0, 4	# 1418
	mul		x4, x4, x6	# 1418
	lw		x6, -8(x2)	# 1418
	add		x4, x6, x4	# 1418
	lw		x4, 0(x4)	# 1418
	addi	x7, x0, 0	# 1419
	lw		x27, -4(x2)	# 1419
	addi	x5, x4, 0
	addi	x4, x7, 0
	sw		x1, -32(x2)	# 1419
	addi	x2, x2, -36	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 36	# 1419
	lw		x1, -32(x2)	# 1419
	addi	x5, x0, 0	# 1420
	beq		x4, x5, beq.17068	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.17067	# 1420
beq.17068:
	ori		x4, x0, 2	# 1423
	lw		x5, -12(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	sw		x1, -32(x2)	# 1423
	addi	x2, x2, -36	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x1, x31, 0	# 1423
	addi	x2, x2, 36	# 1423
	lw		x1, -32(x2)	# 1423
beq_cont.17067:
	jal		x0, beq_cont.17065	# 1415
beq.17066:
	addi	x4, x0, 0	# 1416
beq_cont.17065:
	addi	x5, x0, 0	# 1443
	beq		x4, x5, beq.17070	# 1443
	ori		x4, x0, 1	# 1444
	jal		x0, beq_cont.17069	# 1443
beq.17070:
	addi	x4, x0, 0	# 1445
beq_cont.17069:
	jal		x0, beq_cont.17063	# 1442
beq.17064:
	addi	x4, x0, 0	# 1446
beq_cont.17063:
	jal		x0, beq_cont.17059	# 1441
beq.17060:
	addi	x4, x0, 0	# 1447
beq_cont.17059:
	jal		x0, beq_cont.17057	# 1435
beq.17058:
	ori		x4, x0, 1	# 1436
beq_cont.17057:
	addi	x5, x0, 0	# 1434
	beq		x4, x5, beq.17071	# 1434
	ori		x4, x0, 1	# 1449
	ori		x5, x0, 4	# 1414
	mul		x4, x4, x5	# 1414
	lw		x5, -12(x2)	# 1414
	add		x4, x5, x4	# 1414
	lw		x4, 0(x4)	# 1414
	lui		x6, -1	# 1415
	ori		x6, x0, -1	# 1415
	beq		x4, x6, beq.17073	# 1415
	ori		x6, x0, 4	# 1418
	mul		x4, x4, x6	# 1418
	lw		x6, -8(x2)	# 1418
	add		x4, x6, x4	# 1418
	lw		x4, 0(x4)	# 1418
	addi	x6, x0, 0	# 1419
	lw		x27, -4(x2)	# 1419
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 1419
	addi	x2, x2, -36	# 1419
	lw		x31, 0(x27)	# 1419
	jalr	x1, x31, 0	# 1419
	addi	x2, x2, 36	# 1419
	lw		x1, -32(x2)	# 1419
	addi	x5, x0, 0	# 1420
	beq		x4, x5, beq.17075	# 1420
	ori		x4, x0, 1	# 1421
	jal		x0, beq_cont.17074	# 1420
beq.17075:
	ori		x4, x0, 2	# 1423
	lw		x5, -12(x2)	# 1423
	lw		x27, 0(x2)	# 1423
	sw		x1, -32(x2)	# 1423
	addi	x2, x2, -36	# 1423
	lw		x31, 0(x27)	# 1423
	jalr	x1, x31, 0	# 1423
	addi	x2, x2, 36	# 1423
	lw		x1, -32(x2)	# 1423
beq_cont.17074:
	jal		x0, beq_cont.17072	# 1415
beq.17073:
	addi	x4, x0, 0	# 1416
beq_cont.17072:
	addi	x5, x0, 0	# 1449
	beq		x4, x5, beq.17076	# 1449
	ori		x4, x0, 1	# 1450
	jalr	x0, x1, 0	# 1450
beq.17076:
	lw		x4, -24(x2)	# 1452
	addi	x4, x4, 1	# 1452
	lw		x5, -16(x2)	# 1452
	lw		x27, -20(x2)	# 1452
	lw		x31, 0(x27)	# 1452
	jalr	x0, x31, 0	# 1452
beq.17071:
	lw		x4, -24(x2)	# 1454
	addi	x4, x4, 1	# 1454
	lw		x5, -16(x2)	# 1454
	lw		x27, -20(x2)	# 1454
	lw		x31, 0(x27)	# 1454
	jalr	x0, x31, 0	# 1454
beq.17056:
	addi	x4, x0, 0	# 1432
	jalr	x0, x1, 0	# 1432
solve_each_element.2822:
	lw		x7, 36(x27)	# 1465
	lw		x8, 32(x27)	# 1465
	lw		x9, 28(x27)	# 1465
	lw		x10, 24(x27)	# 1465
	lw		x11, 20(x27)	# 1465
	lw		x12, 16(x27)	# 1465
	lw		x13, 12(x27)	# 1465
	lw		x14, 8(x27)	# 1465
	lw		x15, 4(x27)	# 1465
	ori		x16, x0, 4	# 1465
	mul		x16, x4, x16	# 1465
	add		x16, x5, x16	# 1465
	lw		x16, 0(x16)	# 1465
	lui		x17, -1	# 1466
	ori		x17, x0, -1	# 1466
	beq		x16, x17, beq.17077	# 1466
	sw		x12, 0(x2)	# 1468
	sw		x14, -4(x2)	# 1468
	sw		x13, -8(x2)	# 1468
	sw		x15, -12(x2)	# 1468
	sw		x8, -16(x2)	# 1468
	sw		x7, -20(x2)	# 1468
	sw		x9, -24(x2)	# 1468
	sw		x6, -28(x2)	# 1468
	sw		x5, -32(x2)	# 1468
	sw		x27, -36(x2)	# 1468
	sw		x4, -40(x2)	# 1468
	sw		x11, -44(x2)	# 1468
	sw		x16, -48(x2)	# 1468
	addi	x5, x6, 0
	addi	x4, x16, 0
	addi	x27, x10, 0
	addi	x6, x8, 0
	sw		x1, -52(x2)	# 1468
	addi	x2, x2, -56	# 1468
	lw		x31, 0(x27)	# 1468
	jalr	x1, x31, 0	# 1468
	addi	x2, x2, 56	# 1468
	lw		x1, -52(x2)	# 1468
	addi	x5, x0, 0	# 1469
	beq		x4, x5, beq.17078	# 1469
	addi	x5, x0, 0	# 1473
	ori		x6, x0, 4	# 1473
	mul		x5, x5, x6	# 1473
	lw		x6, -24(x2)	# 1473
	add		x5, x6, x5	# 1473
	flw		f0, 0(x5)	# 1473
	lui		x5, %hi(l.10373)	# 1475
	ori		x5, x0, %lo(l.10373)	# 1475
	flw		f1, 0(x5)	# 1475
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.17080	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.17079	# 6
fle_else.17080:
	ori		x5, x0, 1	# 6
fle_cont.17079:
	addi	x6, x0, 0	# 1475
	beq		x5, x6, beq.17082	# 1475
	addi	x5, x0, 0	# 1476
	ori		x6, x0, 4	# 1476
	mul		x5, x5, x6	# 1476
	lw		x6, -20(x2)	# 1476
	add		x5, x6, x5	# 1476
	flw		f1, 0(x5)	# 1476
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17084	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.17083	# 6
fle_else.17084:
	ori		x5, x0, 1	# 6
fle_cont.17083:
	addi	x7, x0, 0	# 1476
	beq		x5, x7, beq.17086	# 1476
	lui		x5, %hi(l.11718)	# 1478
	ori		x5, x0, %lo(l.11718)	# 1478
	flw		f1, 0(x5)	# 1478
	fadd	f0, f0, f1	# 1478
	addi	x5, x0, 0	# 1479
	ori		x7, x0, 4	# 1479
	mul		x5, x5, x7	# 1479
	lw		x7, -28(x2)	# 1479
	add		x5, x7, x5	# 1479
	flw		f1, 0(x5)	# 1479
	fmul	f1, f1, f0	# 1479
	addi	x5, x0, 0	# 1479
	ori		x8, x0, 4	# 1479
	mul		x5, x5, x8	# 1479
	lw		x8, -16(x2)	# 1479
	add		x5, x8, x5	# 1479
	flw		f2, 0(x5)	# 1479
	fadd	f1, f1, f2	# 1479
	ori		x5, x0, 1	# 1480
	ori		x9, x0, 4	# 1480
	mul		x5, x5, x9	# 1480
	add		x5, x7, x5	# 1480
	flw		f2, 0(x5)	# 1480
	fmul	f2, f2, f0	# 1480
	ori		x5, x0, 1	# 1480
	ori		x9, x0, 4	# 1480
	mul		x5, x5, x9	# 1480
	add		x5, x8, x5	# 1480
	flw		f3, 0(x5)	# 1480
	fadd	f2, f2, f3	# 1480
	ori		x5, x0, 2	# 1481
	ori		x9, x0, 4	# 1481
	mul		x5, x5, x9	# 1481
	add		x5, x7, x5	# 1481
	flw		f3, 0(x5)	# 1481
	fmul	f3, f3, f0	# 1481
	ori		x5, x0, 2	# 1481
	ori		x9, x0, 4	# 1481
	mul		x5, x5, x9	# 1481
	add		x5, x8, x5	# 1481
	flw		f4, 0(x5)	# 1481
	fadd	f3, f3, f4	# 1481
	addi	x5, x0, 0	# 1482
	ori		x8, x0, 4	# 1364
	mul		x5, x5, x8	# 1364
	lw		x8, -32(x2)	# 1364
	add		x5, x8, x5	# 1364
	lw		x5, 0(x5)	# 1364
	lui		x9, -1	# 1365
	ori		x9, x0, -1	# 1365
	sw		x4, -52(x2)	# 1365
	fsw		f3, -56(x2)	# 1365
	fsw		f2, -64(x2)	# 1365
	fsw		f1, -72(x2)	# 1365
	fsw		f0, -80(x2)	# 1365
	beq		x5, x9, beq.17088	# 1365
	ori		x9, x0, 4	# 1368
	mul		x5, x5, x9	# 1368
	lw		x9, -44(x2)	# 1368
	add		x5, x9, x5	# 1368
	lw		x5, 0(x5)	# 1368
	addi	x4, x5, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -88(x2)	# 1368
	addi	x2, x2, -92	# 1368
	jal		x1, is_outside.2802	# 1368
	addi	x2, x2, 92	# 1368
	lw		x1, -88(x2)	# 1368
	addi	x5, x0, 0	# 1368
	beq		x4, x5, beq.17090	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.17089	# 1368
beq.17090:
	ori		x4, x0, 1	# 1371
	flw		f0, -72(x2)	# 1371
	flw		f1, -64(x2)	# 1371
	flw		f2, -56(x2)	# 1371
	lw		x5, -32(x2)	# 1371
	lw		x27, -12(x2)	# 1371
	sw		x1, -88(x2)	# 1371
	addi	x2, x2, -92	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 92	# 1371
	lw		x1, -88(x2)	# 1371
beq_cont.17089:
	jal		x0, beq_cont.17087	# 1365
beq.17088:
	ori		x4, x0, 1	# 1366
beq_cont.17087:
	addi	x5, x0, 0	# 1482
	beq		x4, x5, beq.17092	# 1482
	addi	x4, x0, 0	# 1484
	ori		x5, x0, 4	# 1484
	mul		x4, x4, x5	# 1484
	lw		x5, -20(x2)	# 1484
	add		x4, x5, x4	# 1484
	flw		f0, -80(x2)	# 1484
	fsw		f0, 0(x4)	# 1484
	addi	x4, x0, 0	# 240
	ori		x5, x0, 4	# 240
	mul		x4, x4, x5	# 240
	lw		x5, -8(x2)	# 240
	add		x4, x5, x4	# 240
	flw		f0, -72(x2)	# 240
	fsw		f0, 0(x4)	# 240
	ori		x4, x0, 1	# 241
	ori		x6, x0, 4	# 241
	mul		x4, x4, x6	# 241
	add		x4, x5, x4	# 241
	flw		f0, -64(x2)	# 241
	fsw		f0, 0(x4)	# 241
	ori		x4, x0, 2	# 242
	ori		x6, x0, 4	# 242
	mul		x4, x4, x6	# 242
	add		x4, x5, x4	# 242
	flw		f0, -56(x2)	# 242
	fsw		f0, 0(x4)	# 242
	addi	x4, x0, 0	# 1486
	ori		x5, x0, 4	# 1486
	mul		x4, x4, x5	# 1486
	lw		x5, -4(x2)	# 1486
	add		x4, x5, x4	# 1486
	lw		x5, -48(x2)	# 1486
	sw		x5, 0(x4)	# 1486
	addi	x4, x0, 0	# 1487
	ori		x5, x0, 4	# 1487
	mul		x4, x4, x5	# 1487
	lw		x5, 0(x2)	# 1487
	add		x4, x5, x4	# 1487
	lw		x5, -52(x2)	# 1487
	sw		x5, 0(x4)	# 1487
	jal		x0, beq_cont.17091	# 1482
beq.17092:
beq_cont.17091:
	jal		x0, beq_cont.17085	# 1476
beq.17086:
beq_cont.17085:
	jal		x0, beq_cont.17081	# 1475
beq.17082:
beq_cont.17081:
	lw		x4, -40(x2)	# 1493
	addi	x4, x4, 1	# 1493
	lw		x5, -32(x2)	# 1493
	lw		x6, -28(x2)	# 1493
	lw		x27, -36(x2)	# 1493
	lw		x31, 0(x27)	# 1493
	jalr	x0, x31, 0	# 1493
beq.17078:
	ori		x4, x0, 4	# 1497
	lw		x5, -48(x2)	# 1497
	mul		x4, x5, x4	# 1497
	lw		x5, -44(x2)	# 1497
	add		x4, x5, x4	# 1497
	lw		x4, 0(x4)	# 1497
	lw		x4, 24(x4)	# 373
	addi	x5, x0, 0	# 1497
	beq		x4, x5, beq.17093	# 1497
	lw		x4, -40(x2)	# 1498
	addi	x4, x4, 1	# 1498
	lw		x5, -32(x2)	# 1498
	lw		x6, -28(x2)	# 1498
	lw		x27, -36(x2)	# 1498
	lw		x31, 0(x27)	# 1498
	jalr	x0, x31, 0	# 1498
beq.17093:
	jalr	x0, x1, 0	# 1499
beq.17077:
	jalr	x0, x1, 0	# 1466
solve_one_or_network.2826:
	lw		x7, 8(x27)	# 1506
	lw		x8, 4(x27)	# 1506
	ori		x9, x0, 4	# 1506
	mul		x9, x4, x9	# 1506
	add		x9, x5, x9	# 1506
	lw		x9, 0(x9)	# 1506
	lui		x10, -1	# 1507
	ori		x10, x0, -1	# 1507
	beq		x9, x10, beq.17096	# 1507
	ori		x10, x0, 4	# 1508
	mul		x9, x9, x10	# 1508
	add		x9, x8, x9	# 1508
	lw		x9, 0(x9)	# 1508
	addi	x10, x0, 0	# 1509
	sw		x27, 0(x2)	# 1509
	sw		x6, -4(x2)	# 1509
	sw		x7, -8(x2)	# 1509
	sw		x8, -12(x2)	# 1509
	sw		x5, -16(x2)	# 1509
	sw		x4, -20(x2)	# 1509
	addi	x5, x9, 0
	addi	x4, x10, 0
	addi	x27, x7, 0
	sw		x1, -24(x2)	# 1509
	addi	x2, x2, -28	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 28	# 1509
	lw		x1, -24(x2)	# 1509
	lw		x4, -20(x2)	# 1510
	addi	x4, x4, 1	# 1510
	ori		x5, x0, 4	# 1506
	mul		x5, x4, x5	# 1506
	lw		x6, -16(x2)	# 1506
	add		x5, x6, x5	# 1506
	lw		x5, 0(x5)	# 1506
	lui		x7, -1	# 1507
	ori		x7, x0, -1	# 1507
	beq		x5, x7, beq.17097	# 1507
	ori		x7, x0, 4	# 1508
	mul		x5, x5, x7	# 1508
	lw		x7, -12(x2)	# 1508
	add		x5, x7, x5	# 1508
	lw		x5, 0(x5)	# 1508
	addi	x7, x0, 0	# 1509
	lw		x8, -4(x2)	# 1509
	lw		x27, -8(x2)	# 1509
	sw		x4, -24(x2)	# 1509
	addi	x6, x8, 0
	addi	x4, x7, 0
	sw		x1, -28(x2)	# 1509
	addi	x2, x2, -32	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 32	# 1509
	lw		x1, -28(x2)	# 1509
	lw		x4, -24(x2)	# 1510
	addi	x4, x4, 1	# 1510
	lw		x5, -16(x2)	# 1510
	lw		x6, -4(x2)	# 1510
	lw		x27, 0(x2)	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x0, x31, 0	# 1510
beq.17097:
	jalr	x0, x1, 0	# 1511
beq.17096:
	jalr	x0, x1, 0	# 1511
trace_or_matrix.2830:
	lw		x7, 28(x27)	# 1516
	lw		x8, 24(x27)	# 1516
	lw		x9, 20(x27)	# 1516
	lw		x10, 16(x27)	# 1516
	lw		x11, 12(x27)	# 1516
	lw		x12, 8(x27)	# 1516
	lw		x13, 4(x27)	# 1516
	ori		x14, x0, 4	# 1516
	mul		x14, x4, x14	# 1516
	add		x14, x5, x14	# 1516
	lw		x14, 0(x14)	# 1516
	addi	x15, x0, 0	# 1517
	ori		x16, x0, 4	# 1517
	mul		x15, x15, x16	# 1517
	add		x15, x14, x15	# 1517
	lw		x15, 0(x15)	# 1517
	lui		x16, -1	# 1518
	ori		x16, x0, -1	# 1518
	beq		x15, x16, beq.17100	# 1518
	ori		x16, x0, 99	# 1521
	sw		x6, 0(x2)	# 1521
	sw		x5, -4(x2)	# 1521
	sw		x27, -8(x2)	# 1521
	sw		x4, -12(x2)	# 1521
	beq		x15, x16, beq.17102	# 1521
	sw		x11, -16(x2)	# 1526
	sw		x12, -20(x2)	# 1526
	sw		x13, -24(x2)	# 1526
	sw		x14, -28(x2)	# 1526
	sw		x7, -32(x2)	# 1526
	sw		x9, -36(x2)	# 1526
	addi	x5, x6, 0
	addi	x4, x15, 0
	addi	x27, x10, 0
	addi	x6, x8, 0
	sw		x1, -40(x2)	# 1526
	addi	x2, x2, -44	# 1526
	lw		x31, 0(x27)	# 1526
	jalr	x1, x31, 0	# 1526
	addi	x2, x2, 44	# 1526
	lw		x1, -40(x2)	# 1526
	addi	x5, x0, 0	# 1527
	beq		x4, x5, beq.17104	# 1527
	addi	x4, x0, 0	# 1528
	ori		x5, x0, 4	# 1528
	mul		x4, x4, x5	# 1528
	lw		x5, -36(x2)	# 1528
	add		x4, x5, x4	# 1528
	flw		f0, 0(x4)	# 1528
	addi	x4, x0, 0	# 1529
	ori		x5, x0, 4	# 1529
	mul		x4, x4, x5	# 1529
	lw		x5, -32(x2)	# 1529
	add		x4, x5, x4	# 1529
	flw		f1, 0(x4)	# 1529
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17106	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17105	# 6
fle_else.17106:
	ori		x4, x0, 1	# 6
fle_cont.17105:
	addi	x5, x0, 0	# 1529
	beq		x4, x5, beq.17108	# 1529
	ori		x4, x0, 1	# 1530
	ori		x5, x0, 4	# 1506
	mul		x4, x4, x5	# 1506
	lw		x5, -28(x2)	# 1506
	add		x4, x5, x4	# 1506
	lw		x4, 0(x4)	# 1506
	lui		x6, -1	# 1507
	ori		x6, x0, -1	# 1507
	beq		x4, x6, beq.17110	# 1507
	ori		x6, x0, 4	# 1508
	mul		x4, x4, x6	# 1508
	lw		x6, -24(x2)	# 1508
	add		x4, x6, x4	# 1508
	lw		x4, 0(x4)	# 1508
	addi	x6, x0, 0	# 1509
	lw		x7, 0(x2)	# 1509
	lw		x27, -20(x2)	# 1509
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -40(x2)	# 1509
	addi	x2, x2, -44	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 44	# 1509
	lw		x1, -40(x2)	# 1509
	ori		x4, x0, 2	# 1510
	lw		x5, -28(x2)	# 1510
	lw		x6, 0(x2)	# 1510
	lw		x27, -16(x2)	# 1510
	sw		x1, -40(x2)	# 1510
	addi	x2, x2, -44	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x1, x31, 0	# 1510
	addi	x2, x2, 44	# 1510
	lw		x1, -40(x2)	# 1510
	jal		x0, beq_cont.17109	# 1507
beq.17110:
beq_cont.17109:
	jal		x0, beq_cont.17107	# 1529
beq.17108:
beq_cont.17107:
	jal		x0, beq_cont.17103	# 1527
beq.17104:
beq_cont.17103:
	jal		x0, beq_cont.17101	# 1521
beq.17102:
	ori		x7, x0, 1	# 1522
	ori		x8, x0, 4	# 1506
	mul		x7, x7, x8	# 1506
	add		x7, x14, x7	# 1506
	lw		x7, 0(x7)	# 1506
	lui		x8, -1	# 1507
	ori		x8, x0, -1	# 1507
	beq		x7, x8, beq.17112	# 1507
	ori		x8, x0, 4	# 1508
	mul		x7, x7, x8	# 1508
	add		x7, x13, x7	# 1508
	lw		x7, 0(x7)	# 1508
	addi	x8, x0, 0	# 1509
	sw		x14, -28(x2)	# 1509
	sw		x11, -16(x2)	# 1509
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x27, x12, 0
	sw		x1, -40(x2)	# 1509
	addi	x2, x2, -44	# 1509
	lw		x31, 0(x27)	# 1509
	jalr	x1, x31, 0	# 1509
	addi	x2, x2, 44	# 1509
	lw		x1, -40(x2)	# 1509
	ori		x4, x0, 2	# 1510
	lw		x5, -28(x2)	# 1510
	lw		x6, 0(x2)	# 1510
	lw		x27, -16(x2)	# 1510
	sw		x1, -40(x2)	# 1510
	addi	x2, x2, -44	# 1510
	lw		x31, 0(x27)	# 1510
	jalr	x1, x31, 0	# 1510
	addi	x2, x2, 44	# 1510
	lw		x1, -40(x2)	# 1510
	jal		x0, beq_cont.17111	# 1507
beq.17112:
beq_cont.17111:
beq_cont.17101:
	lw		x4, -12(x2)	# 1534
	addi	x4, x4, 1	# 1534
	lw		x5, -4(x2)	# 1534
	lw		x6, 0(x2)	# 1534
	lw		x27, -8(x2)	# 1534
	lw		x31, 0(x27)	# 1534
	jalr	x0, x31, 0	# 1534
beq.17100:
	jalr	x0, x1, 0	# 1519
solve_each_element_fast.2836:
	lw		x7, 36(x27)	# 639
	lw		x8, 32(x27)	# 639
	lw		x9, 28(x27)	# 639
	lw		x10, 24(x27)	# 639
	lw		x11, 20(x27)	# 639
	lw		x12, 16(x27)	# 639
	lw		x13, 12(x27)	# 639
	lw		x14, 8(x27)	# 639
	lw		x15, 4(x27)	# 639
	lw		x16, 0(x6)	# 639
	ori		x17, x0, 4	# 1559
	mul		x17, x4, x17	# 1559
	add		x17, x5, x17	# 1559
	lw		x17, 0(x17)	# 1559
	lui		x18, -1	# 1560
	ori		x18, x0, -1	# 1560
	beq		x17, x18, beq.17114	# 1560
	sw		x12, 0(x2)	# 1562
	sw		x14, -4(x2)	# 1562
	sw		x13, -8(x2)	# 1562
	sw		x15, -12(x2)	# 1562
	sw		x8, -16(x2)	# 1562
	sw		x16, -20(x2)	# 1562
	sw		x7, -24(x2)	# 1562
	sw		x10, -28(x2)	# 1562
	sw		x6, -32(x2)	# 1562
	sw		x5, -36(x2)	# 1562
	sw		x27, -40(x2)	# 1562
	sw		x4, -44(x2)	# 1562
	sw		x11, -48(x2)	# 1562
	sw		x17, -52(x2)	# 1562
	addi	x5, x6, 0
	addi	x4, x17, 0
	addi	x27, x9, 0
	sw		x1, -56(x2)	# 1562
	addi	x2, x2, -60	# 1562
	lw		x31, 0(x27)	# 1562
	jalr	x1, x31, 0	# 1562
	addi	x2, x2, 60	# 1562
	lw		x1, -56(x2)	# 1562
	addi	x5, x0, 0	# 1563
	beq		x4, x5, beq.17115	# 1563
	addi	x5, x0, 0	# 1567
	ori		x6, x0, 4	# 1567
	mul		x5, x5, x6	# 1567
	lw		x6, -28(x2)	# 1567
	add		x5, x6, x5	# 1567
	flw		f0, 0(x5)	# 1567
	lui		x5, %hi(l.10373)	# 1569
	ori		x5, x0, %lo(l.10373)	# 1569
	flw		f1, 0(x5)	# 1569
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.17117	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.17116	# 6
fle_else.17117:
	ori		x5, x0, 1	# 6
fle_cont.17116:
	addi	x6, x0, 0	# 1569
	beq		x5, x6, beq.17119	# 1569
	addi	x5, x0, 0	# 1570
	ori		x6, x0, 4	# 1570
	mul		x5, x5, x6	# 1570
	lw		x6, -24(x2)	# 1570
	add		x5, x6, x5	# 1570
	flw		f1, 0(x5)	# 1570
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17121	# 6
	addi	x5, x0, 0	# 6
	jal		x0, fle_cont.17120	# 6
fle_else.17121:
	ori		x5, x0, 1	# 6
fle_cont.17120:
	addi	x7, x0, 0	# 1570
	beq		x5, x7, beq.17123	# 1570
	lui		x5, %hi(l.11718)	# 1572
	ori		x5, x0, %lo(l.11718)	# 1572
	flw		f1, 0(x5)	# 1572
	fadd	f0, f0, f1	# 1572
	addi	x5, x0, 0	# 1573
	ori		x7, x0, 4	# 1573
	mul		x5, x5, x7	# 1573
	lw		x7, -20(x2)	# 1573
	add		x5, x7, x5	# 1573
	flw		f1, 0(x5)	# 1573
	fmul	f1, f1, f0	# 1573
	addi	x5, x0, 0	# 1573
	ori		x8, x0, 4	# 1573
	mul		x5, x5, x8	# 1573
	lw		x8, -16(x2)	# 1573
	add		x5, x8, x5	# 1573
	flw		f2, 0(x5)	# 1573
	fadd	f1, f1, f2	# 1573
	ori		x5, x0, 1	# 1574
	ori		x9, x0, 4	# 1574
	mul		x5, x5, x9	# 1574
	add		x5, x7, x5	# 1574
	flw		f2, 0(x5)	# 1574
	fmul	f2, f2, f0	# 1574
	ori		x5, x0, 1	# 1574
	ori		x9, x0, 4	# 1574
	mul		x5, x5, x9	# 1574
	add		x5, x8, x5	# 1574
	flw		f3, 0(x5)	# 1574
	fadd	f2, f2, f3	# 1574
	ori		x5, x0, 2	# 1575
	ori		x9, x0, 4	# 1575
	mul		x5, x5, x9	# 1575
	add		x5, x7, x5	# 1575
	flw		f3, 0(x5)	# 1575
	fmul	f3, f3, f0	# 1575
	ori		x5, x0, 2	# 1575
	ori		x7, x0, 4	# 1575
	mul		x5, x5, x7	# 1575
	add		x5, x8, x5	# 1575
	flw		f4, 0(x5)	# 1575
	fadd	f3, f3, f4	# 1575
	addi	x5, x0, 0	# 1576
	ori		x7, x0, 4	# 1364
	mul		x5, x5, x7	# 1364
	lw		x7, -36(x2)	# 1364
	add		x5, x7, x5	# 1364
	lw		x5, 0(x5)	# 1364
	lui		x8, -1	# 1365
	ori		x8, x0, -1	# 1365
	sw		x4, -56(x2)	# 1365
	fsw		f3, -64(x2)	# 1365
	fsw		f2, -72(x2)	# 1365
	fsw		f1, -80(x2)	# 1365
	fsw		f0, -88(x2)	# 1365
	beq		x5, x8, beq.17126	# 1365
	ori		x8, x0, 4	# 1368
	mul		x5, x5, x8	# 1368
	lw		x8, -48(x2)	# 1368
	add		x5, x8, x5	# 1368
	lw		x5, 0(x5)	# 1368
	addi	x4, x5, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	fsub	f1, f1, f1
	fadd	f1, f1, f2
	fsub	f2, f2, f2
	fadd	f2, f2, f3
	sw		x1, -96(x2)	# 1368
	addi	x2, x2, -100	# 1368
	jal		x1, is_outside.2802	# 1368
	addi	x2, x2, 100	# 1368
	lw		x1, -96(x2)	# 1368
	addi	x5, x0, 0	# 1368
	beq		x4, x5, beq.17128	# 1368
	addi	x4, x0, 0	# 1369
	jal		x0, beq_cont.17127	# 1368
beq.17128:
	ori		x4, x0, 1	# 1371
	flw		f0, -80(x2)	# 1371
	flw		f1, -72(x2)	# 1371
	flw		f2, -64(x2)	# 1371
	lw		x5, -36(x2)	# 1371
	lw		x27, -12(x2)	# 1371
	sw		x1, -96(x2)	# 1371
	addi	x2, x2, -100	# 1371
	lw		x31, 0(x27)	# 1371
	jalr	x1, x31, 0	# 1371
	addi	x2, x2, 100	# 1371
	lw		x1, -96(x2)	# 1371
beq_cont.17127:
	jal		x0, beq_cont.17125	# 1365
beq.17126:
	ori		x4, x0, 1	# 1366
beq_cont.17125:
	addi	x5, x0, 0	# 1576
	beq		x4, x5, beq.17130	# 1576
	addi	x4, x0, 0	# 1578
	ori		x5, x0, 4	# 1578
	mul		x4, x4, x5	# 1578
	lw		x5, -24(x2)	# 1578
	add		x4, x5, x4	# 1578
	flw		f0, -88(x2)	# 1578
	fsw		f0, 0(x4)	# 1578
	addi	x4, x0, 0	# 240
	ori		x5, x0, 4	# 240
	mul		x4, x4, x5	# 240
	lw		x5, -8(x2)	# 240
	add		x4, x5, x4	# 240
	flw		f0, -80(x2)	# 240
	fsw		f0, 0(x4)	# 240
	ori		x4, x0, 1	# 241
	ori		x6, x0, 4	# 241
	mul		x4, x4, x6	# 241
	add		x4, x5, x4	# 241
	flw		f0, -72(x2)	# 241
	fsw		f0, 0(x4)	# 241
	ori		x4, x0, 2	# 242
	ori		x6, x0, 4	# 242
	mul		x4, x4, x6	# 242
	add		x4, x5, x4	# 242
	flw		f0, -64(x2)	# 242
	fsw		f0, 0(x4)	# 242
	addi	x4, x0, 0	# 1580
	ori		x5, x0, 4	# 1580
	mul		x4, x4, x5	# 1580
	lw		x5, -4(x2)	# 1580
	add		x4, x5, x4	# 1580
	lw		x5, -52(x2)	# 1580
	sw		x5, 0(x4)	# 1580
	addi	x4, x0, 0	# 1581
	ori		x5, x0, 4	# 1581
	mul		x4, x4, x5	# 1581
	lw		x5, 0(x2)	# 1581
	add		x4, x5, x4	# 1581
	lw		x5, -56(x2)	# 1581
	sw		x5, 0(x4)	# 1581
	jal		x0, beq_cont.17129	# 1576
beq.17130:
beq_cont.17129:
	jal		x0, beq_cont.17122	# 1570
beq.17123:
beq_cont.17122:
	jal		x0, beq_cont.17118	# 1569
beq.17119:
beq_cont.17118:
	lw		x4, -44(x2)	# 1587
	addi	x4, x4, 1	# 1587
	lw		x5, -36(x2)	# 1587
	lw		x6, -32(x2)	# 1587
	lw		x27, -40(x2)	# 1587
	lw		x31, 0(x27)	# 1587
	jalr	x0, x31, 0	# 1587
beq.17115:
	ori		x4, x0, 4	# 1591
	lw		x5, -52(x2)	# 1591
	mul		x4, x5, x4	# 1591
	lw		x5, -48(x2)	# 1591
	add		x4, x5, x4	# 1591
	lw		x4, 0(x4)	# 1591
	lw		x4, 24(x4)	# 373
	addi	x5, x0, 0	# 1591
	beq		x4, x5, beq.17131	# 1591
	lw		x4, -44(x2)	# 1592
	addi	x4, x4, 1	# 1592
	lw		x5, -36(x2)	# 1592
	lw		x6, -32(x2)	# 1592
	lw		x27, -40(x2)	# 1592
	lw		x31, 0(x27)	# 1592
	jalr	x0, x31, 0	# 1592
beq.17131:
	jalr	x0, x1, 0	# 1593
beq.17114:
	jalr	x0, x1, 0	# 1560
solve_one_or_network_fast.2840:
	lw		x7, 8(x27)	# 1599
	lw		x8, 4(x27)	# 1599
	ori		x9, x0, 4	# 1599
	mul		x9, x4, x9	# 1599
	add		x9, x5, x9	# 1599
	lw		x9, 0(x9)	# 1599
	lui		x10, -1	# 1600
	ori		x10, x0, -1	# 1600
	beq		x9, x10, beq.17134	# 1600
	ori		x10, x0, 4	# 1601
	mul		x9, x9, x10	# 1601
	add		x9, x8, x9	# 1601
	lw		x9, 0(x9)	# 1601
	addi	x10, x0, 0	# 1602
	sw		x27, 0(x2)	# 1602
	sw		x6, -4(x2)	# 1602
	sw		x7, -8(x2)	# 1602
	sw		x8, -12(x2)	# 1602
	sw		x5, -16(x2)	# 1602
	sw		x4, -20(x2)	# 1602
	addi	x5, x9, 0
	addi	x4, x10, 0
	addi	x27, x7, 0
	sw		x1, -24(x2)	# 1602
	addi	x2, x2, -28	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 28	# 1602
	lw		x1, -24(x2)	# 1602
	lw		x4, -20(x2)	# 1603
	addi	x4, x4, 1	# 1603
	ori		x5, x0, 4	# 1599
	mul		x5, x4, x5	# 1599
	lw		x6, -16(x2)	# 1599
	add		x5, x6, x5	# 1599
	lw		x5, 0(x5)	# 1599
	lui		x7, -1	# 1600
	ori		x7, x0, -1	# 1600
	beq		x5, x7, beq.17135	# 1600
	ori		x7, x0, 4	# 1601
	mul		x5, x5, x7	# 1601
	lw		x7, -12(x2)	# 1601
	add		x5, x7, x5	# 1601
	lw		x5, 0(x5)	# 1601
	addi	x7, x0, 0	# 1602
	lw		x8, -4(x2)	# 1602
	lw		x27, -8(x2)	# 1602
	sw		x4, -24(x2)	# 1602
	addi	x6, x8, 0
	addi	x4, x7, 0
	sw		x1, -28(x2)	# 1602
	addi	x2, x2, -32	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 32	# 1602
	lw		x1, -28(x2)	# 1602
	lw		x4, -24(x2)	# 1603
	addi	x4, x4, 1	# 1603
	lw		x5, -16(x2)	# 1603
	lw		x6, -4(x2)	# 1603
	lw		x27, 0(x2)	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x0, x31, 0	# 1603
beq.17135:
	jalr	x0, x1, 0	# 1604
beq.17134:
	jalr	x0, x1, 0	# 1604
trace_or_matrix_fast.2844:
	lw		x7, 24(x27)	# 1609
	lw		x8, 20(x27)	# 1609
	lw		x9, 16(x27)	# 1609
	lw		x10, 12(x27)	# 1609
	lw		x11, 8(x27)	# 1609
	lw		x12, 4(x27)	# 1609
	ori		x13, x0, 4	# 1609
	mul		x13, x4, x13	# 1609
	add		x13, x5, x13	# 1609
	lw		x13, 0(x13)	# 1609
	addi	x14, x0, 0	# 1610
	ori		x15, x0, 4	# 1610
	mul		x14, x14, x15	# 1610
	add		x14, x13, x14	# 1610
	lw		x14, 0(x14)	# 1610
	lui		x15, -1	# 1611
	ori		x15, x0, -1	# 1611
	beq		x14, x15, beq.17138	# 1611
	ori		x15, x0, 99	# 1614
	sw		x6, 0(x2)	# 1614
	sw		x5, -4(x2)	# 1614
	sw		x27, -8(x2)	# 1614
	sw		x4, -12(x2)	# 1614
	beq		x14, x15, beq.17140	# 1614
	sw		x10, -16(x2)	# 1619
	sw		x11, -20(x2)	# 1619
	sw		x12, -24(x2)	# 1619
	sw		x13, -28(x2)	# 1619
	sw		x7, -32(x2)	# 1619
	sw		x9, -36(x2)	# 1619
	addi	x5, x6, 0
	addi	x4, x14, 0
	addi	x27, x8, 0
	sw		x1, -40(x2)	# 1619
	addi	x2, x2, -44	# 1619
	lw		x31, 0(x27)	# 1619
	jalr	x1, x31, 0	# 1619
	addi	x2, x2, 44	# 1619
	lw		x1, -40(x2)	# 1619
	addi	x5, x0, 0	# 1620
	beq		x4, x5, beq.17142	# 1620
	addi	x4, x0, 0	# 1621
	ori		x5, x0, 4	# 1621
	mul		x4, x4, x5	# 1621
	lw		x5, -36(x2)	# 1621
	add		x4, x5, x4	# 1621
	flw		f0, 0(x4)	# 1621
	addi	x4, x0, 0	# 1622
	ori		x5, x0, 4	# 1622
	mul		x4, x4, x5	# 1622
	lw		x5, -32(x2)	# 1622
	add		x4, x5, x4	# 1622
	flw		f1, 0(x4)	# 1622
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17144	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17143	# 6
fle_else.17144:
	ori		x4, x0, 1	# 6
fle_cont.17143:
	addi	x5, x0, 0	# 1622
	beq		x4, x5, beq.17146	# 1622
	ori		x4, x0, 1	# 1623
	ori		x5, x0, 4	# 1599
	mul		x4, x4, x5	# 1599
	lw		x5, -28(x2)	# 1599
	add		x4, x5, x4	# 1599
	lw		x4, 0(x4)	# 1599
	lui		x6, -1	# 1600
	ori		x6, x0, -1	# 1600
	beq		x4, x6, beq.17148	# 1600
	ori		x6, x0, 4	# 1601
	mul		x4, x4, x6	# 1601
	lw		x6, -24(x2)	# 1601
	add		x4, x6, x4	# 1601
	lw		x4, 0(x4)	# 1601
	addi	x6, x0, 0	# 1602
	lw		x7, 0(x2)	# 1602
	lw		x27, -20(x2)	# 1602
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -40(x2)	# 1602
	addi	x2, x2, -44	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 44	# 1602
	lw		x1, -40(x2)	# 1602
	ori		x4, x0, 2	# 1603
	lw		x5, -28(x2)	# 1603
	lw		x6, 0(x2)	# 1603
	lw		x27, -16(x2)	# 1603
	sw		x1, -40(x2)	# 1603
	addi	x2, x2, -44	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 44	# 1603
	lw		x1, -40(x2)	# 1603
	jal		x0, beq_cont.17147	# 1600
beq.17148:
beq_cont.17147:
	jal		x0, beq_cont.17145	# 1622
beq.17146:
beq_cont.17145:
	jal		x0, beq_cont.17141	# 1620
beq.17142:
beq_cont.17141:
	jal		x0, beq_cont.17139	# 1614
beq.17140:
	ori		x7, x0, 1	# 1615
	ori		x8, x0, 4	# 1599
	mul		x7, x7, x8	# 1599
	add		x7, x13, x7	# 1599
	lw		x7, 0(x7)	# 1599
	lui		x8, -1	# 1600
	ori		x8, x0, -1	# 1600
	beq		x7, x8, beq.17150	# 1600
	ori		x8, x0, 4	# 1601
	mul		x7, x7, x8	# 1601
	add		x7, x12, x7	# 1601
	lw		x7, 0(x7)	# 1601
	addi	x8, x0, 0	# 1602
	sw		x13, -28(x2)	# 1602
	sw		x10, -16(x2)	# 1602
	addi	x5, x7, 0
	addi	x4, x8, 0
	addi	x27, x11, 0
	sw		x1, -40(x2)	# 1602
	addi	x2, x2, -44	# 1602
	lw		x31, 0(x27)	# 1602
	jalr	x1, x31, 0	# 1602
	addi	x2, x2, 44	# 1602
	lw		x1, -40(x2)	# 1602
	ori		x4, x0, 2	# 1603
	lw		x5, -28(x2)	# 1603
	lw		x6, 0(x2)	# 1603
	lw		x27, -16(x2)	# 1603
	sw		x1, -40(x2)	# 1603
	addi	x2, x2, -44	# 1603
	lw		x31, 0(x27)	# 1603
	jalr	x1, x31, 0	# 1603
	addi	x2, x2, 44	# 1603
	lw		x1, -40(x2)	# 1603
	jal		x0, beq_cont.17149	# 1600
beq.17150:
beq_cont.17149:
beq_cont.17139:
	lw		x4, -12(x2)	# 1627
	addi	x4, x4, 1	# 1627
	lw		x5, -4(x2)	# 1627
	lw		x6, 0(x2)	# 1627
	lw		x27, -8(x2)	# 1627
	lw		x31, 0(x27)	# 1627
	jalr	x0, x31, 0	# 1627
beq.17138:
	jalr	x0, x1, 0	# 1612
get_nvector_rect.2850:
	lw		x5, 8(x27)	# 1654
	lw		x6, 4(x27)	# 1654
	addi	x7, x0, 0	# 1654
	ori		x8, x0, 4	# 1654
	mul		x7, x7, x8	# 1654
	add		x6, x6, x7	# 1654
	lw		x6, 0(x6)	# 1654
	lui		x7, %hi(l.10373)	# 254
	ori		x7, x0, %lo(l.10373)	# 254
	flw		f0, 0(x7)	# 254
	addi	x7, x0, 0	# 247
	ori		x8, x0, 4	# 247
	mul		x7, x7, x8	# 247
	add		x7, x5, x7	# 247
	fsw		f0, 0(x7)	# 247
	ori		x7, x0, 1	# 248
	ori		x8, x0, 4	# 248
	mul		x7, x7, x8	# 248
	add		x7, x5, x7	# 248
	fsw		f0, 0(x7)	# 248
	ori		x7, x0, 2	# 249
	ori		x8, x0, 4	# 249
	mul		x7, x7, x8	# 249
	add		x7, x5, x7	# 249
	fsw		f0, 0(x7)	# 249
	ori		x7, x0, 1	# 1657
	sub		x7, x6, x7	# 1657
	ori		x8, x0, 1	# 1657
	sub		x6, x6, x8	# 1657
	ori		x8, x0, 4	# 1657
	mul		x6, x6, x8	# 1657
	add		x4, x4, x6	# 1657
	flw		f0, 0(x4)	# 1657
	lui		x4, %hi(l.10373)	# 1
	ori		x4, x0, %lo(l.10373)	# 1
	flw		f1, 0(x4)	# 1
	feq		x31, f0, f1	# 1
	beq		x31, x0, feq_else.17153	# 1
	ori		x4, x0, 1	# 1
	jal		x0, feq_cont.17152	# 1
feq_else.17153:
	addi	x4, x0, 0	# 1
feq_cont.17152:
	addi	x6, x0, 0	# 212
	beq		x4, x6, beq.17155	# 212
	lui		x4, %hi(l.10373)	# 212
	ori		x4, x0, %lo(l.10373)	# 212
	flw		f0, 0(x4)	# 212
	jal		x0, beq_cont.17154	# 212
beq.17155:
	lui		x4, %hi(l.10373)	# 2
	ori		x4, x0, %lo(l.10373)	# 2
	flw		f1, 0(x4)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.17157	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.17156	# 2
fle_else.17157:
	ori		x4, x0, 1	# 2
fle_cont.17156:
	addi	x6, x0, 0	# 213
	beq		x4, x6, beq.17159	# 213
	lui		x4, %hi(l.10376)	# 213
	ori		x4, x0, %lo(l.10376)	# 213
	flw		f0, 0(x4)	# 213
	jal		x0, beq_cont.17158	# 213
beq.17159:
	lui		x4, %hi(l.10483)	# 214
	ori		x4, x0, %lo(l.10483)	# 214
	flw		f0, 0(x4)	# 214
beq_cont.17158:
beq_cont.17154:
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x4, x0, 4	# 1657
	mul		x4, x7, x4	# 1657
	add		x4, x5, x4	# 1657
	fsw		f0, 0(x4)	# 1657
	jalr	x0, x1, 0	# 1657
get_nvector_plane.2852:
	lw		x5, 4(x27)	# 1663
	addi	x6, x0, 0	# 1663
	lw		x7, 16(x4)	# 391
	addi	x8, x0, 0	# 396
	ori		x9, x0, 4	# 396
	mul		x8, x8, x9	# 396
	add		x7, x7, x8	# 396
	flw		f0, 0(x7)	# 396
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x7, x0, 4	# 1663
	mul		x6, x6, x7	# 1663
	add		x6, x5, x6	# 1663
	fsw		f0, 0(x6)	# 1663
	ori		x6, x0, 1	# 1664
	lw		x7, 16(x4)	# 401
	ori		x8, x0, 1	# 406
	ori		x9, x0, 4	# 406
	mul		x8, x8, x9	# 406
	add		x7, x7, x8	# 406
	flw		f0, 0(x7)	# 406
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x7, x0, 4	# 1664
	mul		x6, x6, x7	# 1664
	add		x6, x5, x6	# 1664
	fsw		f0, 0(x6)	# 1664
	ori		x6, x0, 2	# 1665
	lw		x4, 16(x4)	# 411
	ori		x7, x0, 2	# 416
	ori		x8, x0, 4	# 416
	mul		x7, x7, x8	# 416
	add		x4, x4, x7	# 416
	flw		f0, 0(x4)	# 416
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	ori		x4, x0, 4	# 1665
	mul		x4, x6, x4	# 1665
	add		x4, x5, x4	# 1665
	fsw		f0, 0(x4)	# 1665
	jalr	x0, x1, 0	# 1665
get_nvector_second.2854:
	lw		x5, 8(x27)	# 1670
	lw		x6, 4(x27)	# 1670
	addi	x7, x0, 0	# 1670
	ori		x8, x0, 4	# 1670
	mul		x7, x7, x8	# 1670
	add		x7, x6, x7	# 1670
	flw		f0, 0(x7)	# 1670
	lw		x7, 20(x4)	# 431
	addi	x8, x0, 0	# 436
	ori		x9, x0, 4	# 436
	mul		x8, x8, x9	# 436
	add		x7, x7, x8	# 436
	flw		f1, 0(x7)	# 436
	fsub	f0, f0, f1	# 1670
	ori		x7, x0, 1	# 1671
	ori		x8, x0, 4	# 1671
	mul		x7, x7, x8	# 1671
	add		x7, x6, x7	# 1671
	flw		f1, 0(x7)	# 1671
	lw		x7, 20(x4)	# 441
	ori		x8, x0, 1	# 446
	ori		x9, x0, 4	# 446
	mul		x8, x8, x9	# 446
	add		x7, x7, x8	# 446
	flw		f2, 0(x7)	# 446
	fsub	f1, f1, f2	# 1671
	ori		x7, x0, 2	# 1672
	ori		x8, x0, 4	# 1672
	mul		x7, x7, x8	# 1672
	add		x6, x6, x7	# 1672
	flw		f2, 0(x6)	# 1672
	lw		x6, 20(x4)	# 451
	ori		x7, x0, 2	# 456
	ori		x8, x0, 4	# 456
	mul		x7, x7, x8	# 456
	add		x6, x6, x7	# 456
	flw		f3, 0(x6)	# 456
	fsub	f2, f2, f3	# 1672
	lw		x6, 16(x4)	# 391
	addi	x7, x0, 0	# 396
	ori		x8, x0, 4	# 396
	mul		x7, x7, x8	# 396
	add		x6, x6, x7	# 396
	flw		f3, 0(x6)	# 396
	fmul	f3, f0, f3	# 1674
	lw		x6, 16(x4)	# 401
	ori		x7, x0, 1	# 406
	ori		x8, x0, 4	# 406
	mul		x7, x7, x8	# 406
	add		x6, x6, x7	# 406
	flw		f4, 0(x6)	# 406
	fmul	f4, f1, f4	# 1675
	lw		x6, 16(x4)	# 411
	ori		x7, x0, 2	# 416
	ori		x8, x0, 4	# 416
	mul		x7, x7, x8	# 416
	add		x6, x6, x7	# 416
	flw		f5, 0(x6)	# 416
	fmul	f5, f2, f5	# 1676
	lw		x6, 12(x4)	# 382
	addi	x7, x0, 0	# 1678
	beq		x6, x7, beq.17163	# 1678
	addi	x6, x0, 0	# 1683
	lw		x7, 36(x4)	# 531
	ori		x8, x0, 2	# 536
	ori		x9, x0, 4	# 536
	mul		x8, x8, x9	# 536
	add		x7, x7, x8	# 536
	flw		f6, 0(x7)	# 536
	fmul	f6, f1, f6	# 1683
	lw		x7, 36(x4)	# 521
	ori		x8, x0, 1	# 526
	ori		x9, x0, 4	# 526
	mul		x8, x8, x9	# 526
	add		x7, x7, x8	# 526
	flw		f7, 0(x7)	# 526
	fmul	f7, f2, f7	# 1683
	fadd	f6, f6, f7	# 1683
	lui		x7, %hi(l.10399)	# 7
	ori		x7, x0, %lo(l.10399)	# 7
	flw		f7, 0(x7)	# 7
	fmul	f6, f6, f7	# 7
	fadd	f3, f3, f6	# 1683
	ori		x7, x0, 4	# 1683
	mul		x6, x6, x7	# 1683
	add		x6, x5, x6	# 1683
	fsw		f3, 0(x6)	# 1683
	ori		x6, x0, 1	# 1684
	lw		x7, 36(x4)	# 531
	ori		x8, x0, 2	# 536
	ori		x9, x0, 4	# 536
	mul		x8, x8, x9	# 536
	add		x7, x7, x8	# 536
	flw		f3, 0(x7)	# 536
	fmul	f3, f0, f3	# 1684
	lw		x7, 36(x4)	# 511
	addi	x8, x0, 0	# 516
	ori		x9, x0, 4	# 516
	mul		x8, x8, x9	# 516
	add		x7, x7, x8	# 516
	flw		f6, 0(x7)	# 516
	fmul	f2, f2, f6	# 1684
	fadd	f2, f3, f2	# 1684
	lui		x7, %hi(l.10399)	# 7
	ori		x7, x0, %lo(l.10399)	# 7
	flw		f3, 0(x7)	# 7
	fmul	f2, f2, f3	# 7
	fadd	f2, f4, f2	# 1684
	ori		x7, x0, 4	# 1684
	mul		x6, x6, x7	# 1684
	add		x6, x5, x6	# 1684
	fsw		f2, 0(x6)	# 1684
	ori		x6, x0, 2	# 1685
	lw		x7, 36(x4)	# 521
	ori		x8, x0, 1	# 526
	ori		x9, x0, 4	# 526
	mul		x8, x8, x9	# 526
	add		x7, x7, x8	# 526
	flw		f2, 0(x7)	# 526
	fmul	f0, f0, f2	# 1685
	lw		x7, 36(x4)	# 511
	addi	x8, x0, 0	# 516
	ori		x9, x0, 4	# 516
	mul		x8, x8, x9	# 516
	add		x7, x7, x8	# 516
	flw		f2, 0(x7)	# 516
	fmul	f1, f1, f2	# 1685
	fadd	f0, f0, f1	# 1685
	lui		x7, %hi(l.10399)	# 7
	ori		x7, x0, %lo(l.10399)	# 7
	flw		f1, 0(x7)	# 7
	fmul	f0, f0, f1	# 7
	fadd	f0, f5, f0	# 1685
	ori		x7, x0, 4	# 1685
	mul		x6, x6, x7	# 1685
	add		x6, x5, x6	# 1685
	fsw		f0, 0(x6)	# 1685
	jal		x0, beq_cont.17162	# 1678
beq.17163:
	addi	x6, x0, 0	# 1679
	ori		x7, x0, 4	# 1679
	mul		x6, x6, x7	# 1679
	add		x6, x5, x6	# 1679
	fsw		f3, 0(x6)	# 1679
	ori		x6, x0, 1	# 1680
	ori		x7, x0, 4	# 1680
	mul		x6, x6, x7	# 1680
	add		x6, x5, x6	# 1680
	fsw		f4, 0(x6)	# 1680
	ori		x6, x0, 2	# 1681
	ori		x7, x0, 4	# 1681
	mul		x6, x6, x7	# 1681
	add		x6, x5, x6	# 1681
	fsw		f5, 0(x6)	# 1681
beq_cont.17162:
	lw		x4, 24(x4)	# 373
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	jal		x0, vecunit_sgn.2565	# 1687
utexture.2859:
	lw		x6, 32(x27)	# 343
	lw		x7, 28(x27)	# 343
	flw		f0, 24(x27)	# 343
	flw		f1, 20(x27)	# 343
	flw		f2, 16(x27)	# 343
	flw		f3, 12(x27)	# 343
	lw		x8, 8(x27)	# 343
	lw		x9, 4(x27)	# 343
	lw		x10, 0(x4)	# 343
	addi	x11, x0, 0	# 1710
	lw		x12, 32(x4)	# 481
	addi	x13, x0, 0	# 486
	ori		x14, x0, 4	# 486
	mul		x13, x13, x14	# 486
	add		x12, x12, x13	# 486
	flw		f4, 0(x12)	# 486
	ori		x12, x0, 4	# 1710
	mul		x11, x11, x12	# 1710
	add		x11, x6, x11	# 1710
	fsw		f4, 0(x11)	# 1710
	ori		x11, x0, 1	# 1711
	lw		x12, 32(x4)	# 491
	ori		x13, x0, 1	# 496
	ori		x14, x0, 4	# 496
	mul		x13, x13, x14	# 496
	add		x12, x12, x13	# 496
	flw		f4, 0(x12)	# 496
	ori		x12, x0, 4	# 1711
	mul		x11, x11, x12	# 1711
	add		x11, x6, x11	# 1711
	fsw		f4, 0(x11)	# 1711
	ori		x11, x0, 2	# 1712
	lw		x12, 32(x4)	# 501
	ori		x13, x0, 2	# 506
	ori		x14, x0, 4	# 506
	mul		x13, x13, x14	# 506
	add		x12, x12, x13	# 506
	flw		f4, 0(x12)	# 506
	ori		x12, x0, 4	# 1712
	mul		x11, x11, x12	# 1712
	add		x11, x6, x11	# 1712
	fsw		f4, 0(x11)	# 1712
	ori		x11, x0, 1	# 1713
	beq		x10, x11, beq.17164	# 1713
	ori		x11, x0, 2	# 1731
	beq		x10, x11, beq.17165	# 1731
	ori		x11, x0, 3	# 1738
	beq		x10, x11, beq.17166	# 1738
	ori		x7, x0, 4	# 1749
	beq		x10, x7, beq.17167	# 1749
	jalr	x0, x1, 0	# 1777
beq.17167:
	addi	x7, x0, 0	# 1751
	ori		x8, x0, 4	# 1751
	mul		x7, x7, x8	# 1751
	add		x7, x5, x7	# 1751
	flw		f0, 0(x7)	# 1751
	lw		x7, 20(x4)	# 431
	addi	x8, x0, 0	# 436
	ori		x10, x0, 4	# 436
	mul		x8, x8, x10	# 436
	add		x7, x7, x8	# 436
	flw		f1, 0(x7)	# 436
	fsub	f0, f0, f1	# 1751
	lw		x7, 16(x4)	# 391
	addi	x8, x0, 0	# 396
	ori		x10, x0, 4	# 396
	mul		x8, x8, x10	# 396
	add		x7, x7, x8	# 396
	flw		f1, 0(x7)	# 396
	sw		x6, 0(x2)	# 1751
	sw		x9, -4(x2)	# 1751
	sw		x4, -8(x2)	# 1751
	sw		x5, -12(x2)	# 1751
	fsw		f0, -16(x2)	# 1751
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -24(x2)	# 1751
	addi	x2, x2, -28	# 1751
	jal		x1, min_caml_sqrt	# 1751
	addi	x2, x2, 28	# 1751
	lw		x1, -24(x2)	# 1751
	flw		f1, -16(x2)	# 1751
	fmul	f0, f1, f0	# 1751
	ori		x4, x0, 2	# 1752
	ori		x5, x0, 4	# 1752
	mul		x4, x4, x5	# 1752
	lw		x5, -12(x2)	# 1752
	add		x4, x5, x4	# 1752
	flw		f1, 0(x4)	# 1752
	lw		x4, -8(x2)	# 451
	lw		x6, 20(x4)	# 451
	ori		x7, x0, 2	# 456
	ori		x8, x0, 4	# 456
	mul		x7, x7, x8	# 456
	add		x6, x6, x7	# 456
	flw		f2, 0(x6)	# 456
	fsub	f1, f1, f2	# 1752
	lw		x6, 16(x4)	# 411
	ori		x7, x0, 2	# 416
	ori		x8, x0, 4	# 416
	mul		x7, x7, x8	# 416
	add		x6, x6, x7	# 416
	flw		f2, 0(x6)	# 416
	fsw		f0, -24(x2)	# 1752
	fsw		f1, -32(x2)	# 1752
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -40(x2)	# 1752
	addi	x2, x2, -44	# 1752
	jal		x1, min_caml_sqrt	# 1752
	addi	x2, x2, 44	# 1752
	lw		x1, -40(x2)	# 1752
	flw		f1, -32(x2)	# 1752
	fmul	f0, f1, f0	# 1752
	flw		f1, -24(x2)	# 8
	fmul	f2, f1, f1	# 8
	fmul	f3, f0, f0	# 8
	fadd	f2, f2, f3	# 1753
	lui		x4, %hi(l.10373)	# 5
	ori		x4, x0, %lo(l.10373)	# 5
	flw		f3, 0(x4)	# 5
	fle		x31, f1, f3	# 5
	beq		x31, x0, fle_else.17170	# 5
	fsub	f3, f3, f3	# 5
	fsub	f3, f3, f1	# 5
	jal		x0, fle_cont.17169	# 5
fle_else.17170:
	fsub	f3, f3, f3	# 5
	fadd	f3, f3, f1	# 5
fle_cont.17169:
	lui		x4, %hi(l.12111)	# 1755
	ori		x4, x0, %lo(l.12111)	# 1755
	flw		f4, 0(x4)	# 1755
	fle		x31, f4, f3	# 6
	beq		x31, x0, fle_else.17172	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17171	# 6
fle_else.17172:
	ori		x4, x0, 1	# 6
fle_cont.17171:
	addi	x5, x0, 0	# 1755
	fsw		f2, -40(x2)	# 1755
	beq		x4, x5, beq.17174	# 1755
	lui		x4, %hi(l.12113)	# 1756
	ori		x4, x0, %lo(l.12113)	# 1756
	flw		f0, 0(x4)	# 1756
	jal		x0, beq_cont.17173	# 1755
beq.17174:
	fdiv	f0, f0, f1	# 1758
	lui		x4, %hi(l.10373)	# 5
	ori		x4, x0, %lo(l.10373)	# 5
	flw		f1, 0(x4)	# 5
	fle		x31, f0, f1	# 5
	beq		x31, x0, fle_else.17176	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.17175	# 5
fle_else.17176:
fle_cont.17175:
	lw		x27, -4(x2)	# 1760
	sw		x1, -48(x2)	# 1760
	addi	x2, x2, -52	# 1760
	lw		x31, 0(x27)	# 1760
	jalr	x1, x31, 0	# 1760
	addi	x2, x2, 52	# 1760
	lw		x1, -48(x2)	# 1760
	lui		x4, %hi(l.12116)	# 1760
	ori		x4, x0, %lo(l.12116)	# 1760
	flw		f1, 0(x4)	# 1760
	fmul	f0, f0, f1	# 1760
	lui		x4, %hi(l.12118)	# 1760
	ori		x4, x0, %lo(l.12118)	# 1760
	flw		f1, 0(x4)	# 1760
	fdiv	f0, f0, f1	# 1760
beq_cont.17173:
	lui		x4, %hi(l.10373)	# 18
	ori		x4, x0, %lo(l.10373)	# 18
	flw		f1, 0(x4)	# 18
	fsw		f0, -48(x2)	# 18
	fle		x31, f1, f0	# 18
	beq		x31, x0, fle_else.17178	# 18
	sw		x1, -56(x2)	# 18
	addi	x2, x2, -60	# 18
	jal		x1, int_of_float.2487	# 18
	addi	x2, x2, 60	# 18
	lw		x1, -56(x2)	# 18
	sw		x1, -56(x2)	# 18
	addi	x2, x2, -60	# 18
	jal		x1, float_of_int.2489	# 18
	addi	x2, x2, 60	# 18
	lw		x1, -56(x2)	# 18
	jal		x0, fle_cont.17177	# 18
fle_else.17178:
	sw		x1, -56(x2)	# 19
	addi	x2, x2, -60	# 19
	jal		x1, int_of_float.2487	# 19
	addi	x2, x2, 60	# 19
	lw		x1, -56(x2)	# 19
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -56(x2)	# 19
	addi	x2, x2, -60	# 19
	jal		x1, float_of_int.2489	# 19
	addi	x2, x2, 60	# 19
	lw		x1, -56(x2)	# 19
fle_cont.17177:
	flw		f1, -48(x2)	# 1762
	fsub	f0, f1, f0	# 1762
	ori		x4, x0, 1	# 1764
	ori		x5, x0, 4	# 1764
	mul		x4, x4, x5	# 1764
	lw		x5, -12(x2)	# 1764
	add		x4, x5, x4	# 1764
	flw		f1, 0(x4)	# 1764
	lw		x4, -8(x2)	# 441
	lw		x5, 20(x4)	# 441
	ori		x6, x0, 1	# 446
	ori		x7, x0, 4	# 446
	mul		x6, x6, x7	# 446
	add		x5, x5, x6	# 446
	flw		f2, 0(x5)	# 446
	fsub	f1, f1, f2	# 1764
	lw		x4, 16(x4)	# 401
	ori		x5, x0, 1	# 406
	ori		x6, x0, 4	# 406
	mul		x5, x5, x6	# 406
	add		x4, x4, x5	# 406
	flw		f2, 0(x4)	# 406
	fsw		f0, -56(x2)	# 1764
	fsw		f1, -64(x2)	# 1764
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -72(x2)	# 1764
	addi	x2, x2, -76	# 1764
	jal		x1, min_caml_sqrt	# 1764
	addi	x2, x2, 76	# 1764
	lw		x1, -72(x2)	# 1764
	flw		f1, -64(x2)	# 1764
	fmul	f0, f1, f0	# 1764
	lui		x4, %hi(l.10373)	# 5
	ori		x4, x0, %lo(l.10373)	# 5
	flw		f1, 0(x4)	# 5
	flw		f2, -40(x2)	# 5
	fle		x31, f2, f1	# 5
	beq		x31, x0, fle_else.17180	# 5
	fsub	f1, f1, f1	# 5
	fsub	f1, f1, f2	# 5
	jal		x0, fle_cont.17179	# 5
fle_else.17180:
	fsub	f1, f1, f1	# 5
	fadd	f1, f1, f2	# 5
fle_cont.17179:
	lui		x4, %hi(l.12111)	# 1766
	ori		x4, x0, %lo(l.12111)	# 1766
	flw		f3, 0(x4)	# 1766
	fle		x31, f3, f1	# 6
	beq		x31, x0, fle_else.17182	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17181	# 6
fle_else.17182:
	ori		x4, x0, 1	# 6
fle_cont.17181:
	addi	x5, x0, 0	# 1766
	beq		x4, x5, beq.17184	# 1766
	lui		x4, %hi(l.12113)	# 1767
	ori		x4, x0, %lo(l.12113)	# 1767
	flw		f0, 0(x4)	# 1767
	jal		x0, beq_cont.17183	# 1766
beq.17184:
	fdiv	f0, f0, f2	# 1769
	lui		x4, %hi(l.10373)	# 5
	ori		x4, x0, %lo(l.10373)	# 5
	flw		f1, 0(x4)	# 5
	fle		x31, f0, f1	# 5
	beq		x31, x0, fle_else.17186	# 5
	fsub	x31, x31, x31	# 5
	fsub	f0, x31, f0	# 5
	jal		x0, fle_cont.17185	# 5
fle_else.17186:
fle_cont.17185:
	lw		x27, -4(x2)	# 1770
	sw		x1, -72(x2)	# 1770
	addi	x2, x2, -76	# 1770
	lw		x31, 0(x27)	# 1770
	jalr	x1, x31, 0	# 1770
	addi	x2, x2, 76	# 1770
	lw		x1, -72(x2)	# 1770
	lui		x4, %hi(l.12116)	# 1770
	ori		x4, x0, %lo(l.12116)	# 1770
	flw		f1, 0(x4)	# 1770
	fmul	f0, f0, f1	# 1770
	lui		x4, %hi(l.12118)	# 1770
	ori		x4, x0, %lo(l.12118)	# 1770
	flw		f1, 0(x4)	# 1770
	fdiv	f0, f0, f1	# 1770
beq_cont.17183:
	lui		x4, %hi(l.10373)	# 18
	ori		x4, x0, %lo(l.10373)	# 18
	flw		f1, 0(x4)	# 18
	fsw		f0, -72(x2)	# 18
	fle		x31, f1, f0	# 18
	beq		x31, x0, fle_else.17188	# 18
	sw		x1, -80(x2)	# 18
	addi	x2, x2, -84	# 18
	jal		x1, int_of_float.2487	# 18
	addi	x2, x2, 84	# 18
	lw		x1, -80(x2)	# 18
	sw		x1, -80(x2)	# 18
	addi	x2, x2, -84	# 18
	jal		x1, float_of_int.2489	# 18
	addi	x2, x2, 84	# 18
	lw		x1, -80(x2)	# 18
	jal		x0, fle_cont.17187	# 18
fle_else.17188:
	sw		x1, -80(x2)	# 19
	addi	x2, x2, -84	# 19
	jal		x1, int_of_float.2487	# 19
	addi	x2, x2, 84	# 19
	lw		x1, -80(x2)	# 19
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -80(x2)	# 19
	addi	x2, x2, -84	# 19
	jal		x1, float_of_int.2489	# 19
	addi	x2, x2, 84	# 19
	lw		x1, -80(x2)	# 19
fle_cont.17187:
	flw		f1, -72(x2)	# 1772
	fsub	f0, f1, f0	# 1772
	lui		x4, %hi(l.12137)	# 1773
	ori		x4, x0, %lo(l.12137)	# 1773
	flw		f1, 0(x4)	# 1773
	lui		x4, %hi(l.10399)	# 1773
	ori		x4, x0, %lo(l.10399)	# 1773
	flw		f2, 0(x4)	# 1773
	flw		f3, -56(x2)	# 1773
	fsub	f2, f2, f3	# 1773
	fmul	f2, f2, f2	# 8
	fsub	f1, f1, f2	# 1773
	lui		x4, %hi(l.10399)	# 1773
	ori		x4, x0, %lo(l.10399)	# 1773
	flw		f2, 0(x4)	# 1773
	fsub	f0, f2, f0	# 1773
	fmul	f0, f0, f0	# 8
	fsub	f0, f1, f0	# 1773
	lui		x4, %hi(l.10373)	# 3
	ori		x4, x0, %lo(l.10373)	# 3
	flw		f1, 0(x4)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.17190	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.17189	# 3
fle_else.17190:
	ori		x4, x0, 1	# 3
fle_cont.17189:
	addi	x5, x0, 0	# 1774
	beq		x4, x5, beq.17192	# 1774
	lui		x4, %hi(l.10373)	# 1774
	ori		x4, x0, %lo(l.10373)	# 1774
	flw		f0, 0(x4)	# 1774
	jal		x0, beq_cont.17191	# 1774
beq.17192:
beq_cont.17191:
	ori		x4, x0, 2	# 1775
	lui		x5, %hi(l.12143)	# 1775
	ori		x5, x0, %lo(l.12143)	# 1775
	flw		f1, 0(x5)	# 1775
	fmul	f0, f1, f0	# 1775
	lui		x5, %hi(l.12145)	# 1775
	ori		x5, x0, %lo(l.12145)	# 1775
	flw		f1, 0(x5)	# 1775
	fdiv	f0, f0, f1	# 1775
	ori		x5, x0, 4	# 1775
	mul		x4, x4, x5	# 1775
	lw		x5, 0(x2)	# 1775
	add		x4, x5, x4	# 1775
	fsw		f0, 0(x4)	# 1775
	jalr	x0, x1, 0	# 1775
beq.17166:
	addi	x9, x0, 0	# 1741
	ori		x10, x0, 4	# 1741
	mul		x9, x9, x10	# 1741
	add		x9, x5, x9	# 1741
	flw		f2, 0(x9)	# 1741
	lw		x9, 20(x4)	# 431
	addi	x10, x0, 0	# 436
	ori		x11, x0, 4	# 436
	mul		x10, x10, x11	# 436
	add		x9, x9, x10	# 436
	flw		f3, 0(x9)	# 436
	fsub	f2, f2, f3	# 1741
	ori		x9, x0, 2	# 1742
	ori		x10, x0, 4	# 1742
	mul		x9, x9, x10	# 1742
	add		x5, x5, x9	# 1742
	flw		f3, 0(x5)	# 1742
	lw		x4, 20(x4)	# 451
	ori		x5, x0, 2	# 456
	ori		x9, x0, 4	# 456
	mul		x5, x5, x9	# 456
	add		x4, x4, x5	# 456
	flw		f4, 0(x4)	# 456
	fsub	f3, f3, f4	# 1742
	fmul	f2, f2, f2	# 8
	fmul	f3, f3, f3	# 8
	fadd	f2, f2, f3	# 1743
	sw		x6, 0(x2)	# 1743
	sw		x8, -80(x2)	# 1743
	sw		x7, -84(x2)	# 1743
	fsw		f1, -88(x2)	# 1743
	fsw		f0, -96(x2)	# 1743
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 1743
	addi	x2, x2, -108	# 1743
	jal		x1, min_caml_sqrt	# 1743
	addi	x2, x2, 108	# 1743
	lw		x1, -104(x2)	# 1743
	lui		x4, %hi(l.12162)	# 1743
	ori		x4, x0, %lo(l.12162)	# 1743
	flw		f1, 0(x4)	# 1743
	fdiv	f0, f0, f1	# 1743
	lui		x4, %hi(l.10373)	# 18
	ori		x4, x0, %lo(l.10373)	# 18
	flw		f1, 0(x4)	# 18
	fsw		f0, -104(x2)	# 18
	fle		x31, f1, f0	# 18
	beq		x31, x0, fle_else.17195	# 18
	sw		x1, -112(x2)	# 18
	addi	x2, x2, -116	# 18
	jal		x1, int_of_float.2487	# 18
	addi	x2, x2, 116	# 18
	lw		x1, -112(x2)	# 18
	sw		x1, -112(x2)	# 18
	addi	x2, x2, -116	# 18
	jal		x1, float_of_int.2489	# 18
	addi	x2, x2, 116	# 18
	lw		x1, -112(x2)	# 18
	jal		x0, fle_cont.17194	# 18
fle_else.17195:
	sw		x1, -112(x2)	# 19
	addi	x2, x2, -116	# 19
	jal		x1, int_of_float.2487	# 19
	addi	x2, x2, 116	# 19
	lw		x1, -112(x2)	# 19
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -112(x2)	# 19
	addi	x2, x2, -116	# 19
	jal		x1, float_of_int.2489	# 19
	addi	x2, x2, 116	# 19
	lw		x1, -112(x2)	# 19
fle_cont.17194:
	flw		f1, -104(x2)	# 1744
	fsub	f0, f1, f0	# 1744
	lui		x4, %hi(l.12118)	# 1744
	ori		x4, x0, %lo(l.12118)	# 1744
	flw		f1, 0(x4)	# 1744
	fmul	f0, f0, f1	# 1744
	lui		x4, %hi(l.10373)	# 54
	ori		x4, x0, %lo(l.10373)	# 54
	flw		f1, 0(x4)	# 54
	fle		x31, f1, f0	# 54
	beq		x31, x0, fle_else.17197	# 54
	flw		f1, -96(x2)	# 55
	fle		x31, f0, f1	# 55
	beq		x31, x0, fle_else.17199	# 55
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jal		x0, fle_cont.17198	# 55
fle_else.17199:
	flw		f1, -88(x2)	# 55
	fsub	f0, f1, f0	# 55
	lw		x27, -84(x2)	# 55
	sw		x1, -112(x2)	# 55
	addi	x2, x2, -116	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 116	# 55
	lw		x1, -112(x2)	# 55
fle_cont.17198:
	jal		x0, fle_cont.17196	# 54
fle_else.17197:
	fsub	x31, x31, x31	# 54
	fsub	f0, x31, f0	# 54
	lw		x27, -80(x2)	# 54
	sw		x1, -112(x2)	# 54
	addi	x2, x2, -116	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 116	# 54
	lw		x1, -112(x2)	# 54
fle_cont.17196:
	fmul	f0, f0, f0	# 8
	ori		x4, x0, 1	# 1746
	lui		x5, %hi(l.12143)	# 1746
	ori		x5, x0, %lo(l.12143)	# 1746
	flw		f1, 0(x5)	# 1746
	fmul	f1, f0, f1	# 1746
	ori		x5, x0, 4	# 1746
	mul		x4, x4, x5	# 1746
	lw		x5, 0(x2)	# 1746
	add		x4, x5, x4	# 1746
	fsw		f1, 0(x4)	# 1746
	ori		x4, x0, 2	# 1747
	lui		x6, %hi(l.10376)	# 1747
	ori		x6, x0, %lo(l.10376)	# 1747
	flw		f1, 0(x6)	# 1747
	fsub	f0, f1, f0	# 1747
	lui		x6, %hi(l.12143)	# 1747
	ori		x6, x0, %lo(l.12143)	# 1747
	flw		f1, 0(x6)	# 1747
	fmul	f0, f0, f1	# 1747
	ori		x6, x0, 4	# 1747
	mul		x4, x4, x6	# 1747
	add		x4, x5, x4	# 1747
	fsw		f0, 0(x4)	# 1747
	jalr	x0, x1, 0	# 1747
beq.17165:
	ori		x4, x0, 1	# 1734
	ori		x8, x0, 4	# 1734
	mul		x4, x4, x8	# 1734
	add		x4, x5, x4	# 1734
	flw		f4, 0(x4)	# 1734
	lui		x4, %hi(l.12183)	# 1734
	ori		x4, x0, %lo(l.12183)	# 1734
	flw		f5, 0(x4)	# 1734
	fmul	f4, f4, f5	# 1734
	lui		x4, %hi(l.10373)	# 46
	ori		x4, x0, %lo(l.10373)	# 46
	flw		f5, 0(x4)	# 46
	sw		x6, 0(x2)	# 46
	fle		x31, f5, f4	# 46
	beq		x31, x0, fle_else.17202	# 46
	fle		x31, f2, f4	# 47
	beq		x31, x0, fle_else.17204	# 47
	fsub	f0, f4, f2	# 47
	addi	x27, x7, 0
	sw		x1, -112(x2)	# 47
	addi	x2, x2, -116	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 116	# 47
	lw		x1, -112(x2)	# 47
	jal		x0, fle_cont.17203	# 47
fle_else.17204:
	fle		x31, f3, f4	# 48
	beq		x31, x0, fle_else.17206	# 48
	fsub	f0, f4, f3	# 48
	addi	x27, x7, 0
	sw		x1, -112(x2)	# 48
	addi	x2, x2, -116	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 116	# 48
	lw		x1, -112(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.17205	# 48
fle_else.17206:
	fle		x31, f4, f1	# 49
	beq		x31, x0, fle_else.17208	# 49
	fle		x31, f0, f4	# 50
	beq		x31, x0, fle_else.17210	# 50
	fsub	f0, f1, f4	# 50
	fmul	f0, f0, f0	# 41
	fmul	f1, f0, f0	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f2, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f0	# 43
	fsub	f2, f2, f3	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f3, f3, f1	# 43
	fadd	f2, f2, f3	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f3, 0(x4)	# 43
	fmul	f0, f3, f0	# 43
	fmul	f0, f0, f1	# 43
	fsub	f0, f2, f0	# 43
	jal		x0, fle_cont.17209	# 50
fle_else.17210:
	fmul	f0, f4, f4	# 36
	fmul	f1, f4, f0	# 37
	lui		x4, %hi(l.10392)	# 38
	ori		x4, x0, %lo(l.10392)	# 38
	flw		f2, 0(x4)	# 38
	fmul	f2, f2, f1	# 38
	fsub	f2, f4, f2	# 38
	lui		x4, %hi(l.10394)	# 38
	ori		x4, x0, %lo(l.10394)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f0	# 38
	fmul	f3, f3, f1	# 38
	fadd	f2, f2, f3	# 38
	lui		x4, %hi(l.10396)	# 38
	ori		x4, x0, %lo(l.10396)	# 38
	flw		f3, 0(x4)	# 38
	fmul	f3, f3, f0	# 38
	fmul	f0, f3, f0	# 38
	fmul	f0, f0, f1	# 38
	fsub	f0, f2, f0	# 38
fle_cont.17209:
	jal		x0, fle_cont.17207	# 49
fle_else.17208:
	fsub	f0, f3, f4	# 49
	addi	x27, x7, 0
	sw		x1, -112(x2)	# 49
	addi	x2, x2, -116	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 116	# 49
	lw		x1, -112(x2)	# 49
fle_cont.17207:
fle_cont.17205:
fle_cont.17203:
	jal		x0, fle_cont.17201	# 46
fle_else.17202:
	fsub	f0, f0, f0	# 46
	fsub	f0, f0, f4	# 46
	addi	x27, x7, 0
	sw		x1, -112(x2)	# 46
	addi	x2, x2, -116	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 116	# 46
	lw		x1, -112(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.17201:
	fmul	f0, f0, f0	# 8
	addi	x4, x0, 0	# 1735
	lui		x5, %hi(l.12143)	# 1735
	ori		x5, x0, %lo(l.12143)	# 1735
	flw		f1, 0(x5)	# 1735
	fmul	f1, f1, f0	# 1735
	ori		x5, x0, 4	# 1735
	mul		x4, x4, x5	# 1735
	lw		x5, 0(x2)	# 1735
	add		x4, x5, x4	# 1735
	fsw		f1, 0(x4)	# 1735
	ori		x4, x0, 1	# 1736
	lui		x6, %hi(l.12143)	# 1736
	ori		x6, x0, %lo(l.12143)	# 1736
	flw		f1, 0(x6)	# 1736
	lui		x6, %hi(l.10376)	# 1736
	ori		x6, x0, %lo(l.10376)	# 1736
	flw		f2, 0(x6)	# 1736
	fsub	f0, f2, f0	# 1736
	fmul	f0, f1, f0	# 1736
	ori		x6, x0, 4	# 1736
	mul		x4, x4, x6	# 1736
	add		x4, x5, x4	# 1736
	fsw		f0, 0(x4)	# 1736
	jalr	x0, x1, 0	# 1736
beq.17164:
	addi	x7, x0, 0	# 1716
	ori		x8, x0, 4	# 1716
	mul		x7, x7, x8	# 1716
	add		x7, x5, x7	# 1716
	flw		f0, 0(x7)	# 1716
	lw		x7, 20(x4)	# 431
	addi	x8, x0, 0	# 436
	ori		x9, x0, 4	# 436
	mul		x8, x8, x9	# 436
	add		x7, x7, x8	# 436
	flw		f1, 0(x7)	# 436
	fsub	f0, f0, f1	# 1716
	lui		x7, %hi(l.12208)	# 1718
	ori		x7, x0, %lo(l.12208)	# 1718
	flw		f1, 0(x7)	# 1718
	fmul	f1, f0, f1	# 1718
	lui		x7, %hi(l.10373)	# 18
	ori		x7, x0, %lo(l.10373)	# 18
	flw		f2, 0(x7)	# 18
	sw		x6, 0(x2)	# 18
	sw		x4, -8(x2)	# 18
	sw		x5, -12(x2)	# 18
	fsw		f0, -112(x2)	# 18
	fle		x31, f2, f1	# 18
	beq		x31, x0, fle_else.17213	# 18
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -120(x2)	# 18
	addi	x2, x2, -124	# 18
	jal		x1, int_of_float.2487	# 18
	addi	x2, x2, 124	# 18
	lw		x1, -120(x2)	# 18
	sw		x1, -120(x2)	# 18
	addi	x2, x2, -124	# 18
	jal		x1, float_of_int.2489	# 18
	addi	x2, x2, 124	# 18
	lw		x1, -120(x2)	# 18
	jal		x0, fle_cont.17212	# 18
fle_else.17213:
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -120(x2)	# 19
	addi	x2, x2, -124	# 19
	jal		x1, int_of_float.2487	# 19
	addi	x2, x2, 124	# 19
	lw		x1, -120(x2)	# 19
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -120(x2)	# 19
	addi	x2, x2, -124	# 19
	jal		x1, float_of_int.2489	# 19
	addi	x2, x2, 124	# 19
	lw		x1, -120(x2)	# 19
fle_cont.17212:
	lui		x4, %hi(l.12211)	# 1718
	ori		x4, x0, %lo(l.12211)	# 1718
	flw		f1, 0(x4)	# 1718
	fmul	f0, f0, f1	# 1718
	flw		f1, -112(x2)	# 1719
	fsub	f0, f1, f0	# 1719
	lui		x4, %hi(l.12162)	# 1719
	ori		x4, x0, %lo(l.12162)	# 1719
	flw		f1, 0(x4)	# 1719
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17215	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17214	# 6
fle_else.17215:
	ori		x4, x0, 1	# 6
fle_cont.17214:
	ori		x5, x0, 2	# 1721
	ori		x6, x0, 4	# 1721
	mul		x5, x5, x6	# 1721
	lw		x6, -12(x2)	# 1721
	add		x5, x6, x5	# 1721
	flw		f0, 0(x5)	# 1721
	lw		x5, -8(x2)	# 451
	lw		x5, 20(x5)	# 451
	ori		x6, x0, 2	# 456
	ori		x7, x0, 4	# 456
	mul		x6, x6, x7	# 456
	add		x5, x5, x6	# 456
	flw		f1, 0(x5)	# 456
	fsub	f0, f0, f1	# 1721
	lui		x5, %hi(l.12208)	# 1723
	ori		x5, x0, %lo(l.12208)	# 1723
	flw		f1, 0(x5)	# 1723
	fmul	f1, f0, f1	# 1723
	lui		x5, %hi(l.10373)	# 18
	ori		x5, x0, %lo(l.10373)	# 18
	flw		f2, 0(x5)	# 18
	sw		x4, -120(x2)	# 18
	fsw		f0, -128(x2)	# 18
	fle		x31, f2, f1	# 18
	beq		x31, x0, fle_else.17218	# 18
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -136(x2)	# 18
	addi	x2, x2, -140	# 18
	jal		x1, int_of_float.2487	# 18
	addi	x2, x2, 140	# 18
	lw		x1, -136(x2)	# 18
	sw		x1, -136(x2)	# 18
	addi	x2, x2, -140	# 18
	jal		x1, float_of_int.2489	# 18
	addi	x2, x2, 140	# 18
	lw		x1, -136(x2)	# 18
	jal		x0, fle_cont.17217	# 18
fle_else.17218:
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -136(x2)	# 19
	addi	x2, x2, -140	# 19
	jal		x1, int_of_float.2487	# 19
	addi	x2, x2, 140	# 19
	lw		x1, -136(x2)	# 19
	ori		x5, x0, 1	# 19
	sub		x4, x4, x5	# 19
	sw		x1, -136(x2)	# 19
	addi	x2, x2, -140	# 19
	jal		x1, float_of_int.2489	# 19
	addi	x2, x2, 140	# 19
	lw		x1, -136(x2)	# 19
fle_cont.17217:
	lui		x4, %hi(l.12211)	# 1723
	ori		x4, x0, %lo(l.12211)	# 1723
	flw		f1, 0(x4)	# 1723
	fmul	f0, f0, f1	# 1723
	flw		f1, -128(x2)	# 1724
	fsub	f0, f1, f0	# 1724
	lui		x4, %hi(l.12162)	# 1724
	ori		x4, x0, %lo(l.12162)	# 1724
	flw		f1, 0(x4)	# 1724
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17220	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17219	# 6
fle_else.17220:
	ori		x4, x0, 1	# 6
fle_cont.17219:
	ori		x5, x0, 1	# 1726
	addi	x6, x0, 0	# 1727
	lw		x7, -120(x2)	# 1727
	beq		x7, x6, beq.17222	# 1727
	addi	x6, x0, 0	# 1728
	beq		x4, x6, beq.17224	# 1728
	lui		x4, %hi(l.12143)	# 1728
	ori		x4, x0, %lo(l.12143)	# 1728
	flw		f0, 0(x4)	# 1728
	jal		x0, beq_cont.17223	# 1728
beq.17224:
	lui		x4, %hi(l.10373)	# 1728
	ori		x4, x0, %lo(l.10373)	# 1728
	flw		f0, 0(x4)	# 1728
beq_cont.17223:
	jal		x0, beq_cont.17221	# 1727
beq.17222:
	addi	x6, x0, 0	# 1729
	beq		x4, x6, beq.17226	# 1729
	lui		x4, %hi(l.10373)	# 1729
	ori		x4, x0, %lo(l.10373)	# 1729
	flw		f0, 0(x4)	# 1729
	jal		x0, beq_cont.17225	# 1729
beq.17226:
	lui		x4, %hi(l.12143)	# 1729
	ori		x4, x0, %lo(l.12143)	# 1729
	flw		f0, 0(x4)	# 1729
beq_cont.17225:
beq_cont.17221:
	ori		x4, x0, 4	# 1726
	mul		x4, x5, x4	# 1726
	lw		x5, 0(x2)	# 1726
	add		x4, x5, x4	# 1726
	fsw		f0, 0(x4)	# 1726
	jalr	x0, x1, 0	# 1726
add_light.2862:
	lw		x5, 8(x27)	# 2
	lw		x4, 4(x27)	# 2
	lui		x6, %hi(l.10373)	# 2
	ori		x6, x0, %lo(l.10373)	# 2
	flw		f3, 0(x6)	# 2
	fle		x31, f0, f3	# 2
	beq		x31, x0, fle_else.17229	# 2
	addi	x6, x0, 0	# 2
	jal		x0, fle_cont.17228	# 2
fle_else.17229:
	ori		x6, x0, 1	# 2
fle_cont.17228:
	addi	x7, x0, 0	# 1788
	sw		x4, 0(x2)	# 1788
	fsw		f2, -8(x2)	# 1788
	fsw		f1, -16(x2)	# 1788
	beq		x6, x7, beq.17232	# 1788
	sw		x1, -24(x2)	# 1789
	addi	x2, x2, -28	# 1789
	jal		x1, vecaccum.2576	# 1789
	addi	x2, x2, 28	# 1789
	lw		x1, -24(x2)	# 1789
	jal		x0, beq_cont.17231	# 1788
beq.17232:
beq_cont.17231:
	lui		x4, %hi(l.10373)	# 2
	ori		x4, x0, %lo(l.10373)	# 2
	flw		f0, 0(x4)	# 2
	flw		f1, -16(x2)	# 2
	fle		x31, f1, f0	# 2
	beq		x31, x0, fle_else.17234	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.17233	# 2
fle_else.17234:
	ori		x4, x0, 1	# 2
fle_cont.17233:
	addi	x5, x0, 0	# 1793
	beq		x4, x5, beq.17235	# 1793
	fmul	f0, f1, f1	# 8
	fmul	f0, f0, f0	# 8
	flw		f1, -8(x2)	# 1794
	fmul	f0, f0, f1	# 1794
	addi	x4, x0, 0	# 1795
	addi	x5, x0, 0	# 1795
	ori		x6, x0, 4	# 1795
	mul		x5, x5, x6	# 1795
	lw		x6, 0(x2)	# 1795
	add		x5, x6, x5	# 1795
	flw		f1, 0(x5)	# 1795
	fadd	f1, f1, f0	# 1795
	ori		x5, x0, 4	# 1795
	mul		x4, x4, x5	# 1795
	add		x4, x6, x4	# 1795
	fsw		f1, 0(x4)	# 1795
	ori		x4, x0, 1	# 1796
	ori		x5, x0, 1	# 1796
	ori		x7, x0, 4	# 1796
	mul		x5, x5, x7	# 1796
	add		x5, x6, x5	# 1796
	flw		f1, 0(x5)	# 1796
	fadd	f1, f1, f0	# 1796
	ori		x5, x0, 4	# 1796
	mul		x4, x4, x5	# 1796
	add		x4, x6, x4	# 1796
	fsw		f1, 0(x4)	# 1796
	ori		x4, x0, 2	# 1797
	ori		x5, x0, 2	# 1797
	ori		x7, x0, 4	# 1797
	mul		x5, x5, x7	# 1797
	add		x5, x6, x5	# 1797
	flw		f1, 0(x5)	# 1797
	fadd	f0, f1, f0	# 1797
	ori		x5, x0, 4	# 1797
	mul		x4, x4, x5	# 1797
	add		x4, x6, x4	# 1797
	fsw		f0, 0(x4)	# 1797
	jalr	x0, x1, 0	# 1797
beq.17235:
	jalr	x0, x1, 0	# 1798
trace_reflections.2866:
	lw		x6, 36(x27)	# 1804
	lw		x7, 32(x27)	# 1804
	lw		x8, 28(x27)	# 1804
	lw		x9, 24(x27)	# 1804
	lw		x10, 20(x27)	# 1804
	lw		x11, 16(x27)	# 1804
	lw		x12, 12(x27)	# 1804
	lw		x13, 8(x27)	# 1804
	lw		x14, 4(x27)	# 1804
	addi	x15, x0, 0	# 1804
	ble		x15, x4, ble.17238	# 1804
	jalr	x0, x1, 0	# 1824
ble.17238:
	ori		x15, x0, 4	# 1805
	mul		x15, x4, x15	# 1805
	add		x9, x9, x15	# 1805
	lw		x9, 0(x9)	# 1805
	lw		x15, 4(x9)	# 661
	addi	x16, x0, 0	# 1634
	lui		x17, %hi(l.12254)	# 1634
	ori		x17, x0, %lo(l.12254)	# 1634
	flw		f2, 0(x17)	# 1634
	ori		x17, x0, 4	# 1634
	mul		x16, x16, x17	# 1634
	add		x16, x7, x16	# 1634
	fsw		f2, 0(x16)	# 1634
	addi	x16, x0, 0	# 1635
	addi	x17, x0, 0	# 1635
	ori		x18, x0, 4	# 1635
	mul		x17, x17, x18	# 1635
	add		x17, x10, x17	# 1635
	lw		x17, 0(x17)	# 1635
	sw		x27, 0(x2)	# 1635
	sw		x4, -4(x2)	# 1635
	fsw		f1, -8(x2)	# 1635
	sw		x14, -16(x2)	# 1635
	sw		x5, -20(x2)	# 1635
	fsw		f0, -24(x2)	# 1635
	sw		x11, -32(x2)	# 1635
	sw		x15, -36(x2)	# 1635
	sw		x8, -40(x2)	# 1635
	sw		x10, -44(x2)	# 1635
	sw		x9, -48(x2)	# 1635
	sw		x12, -52(x2)	# 1635
	sw		x13, -56(x2)	# 1635
	sw		x7, -60(x2)	# 1635
	addi	x5, x17, 0
	addi	x4, x16, 0
	addi	x27, x6, 0
	addi	x6, x15, 0
	sw		x1, -64(x2)	# 1635
	addi	x2, x2, -68	# 1635
	lw		x31, 0(x27)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 68	# 1635
	lw		x1, -64(x2)	# 1635
	addi	x4, x0, 0	# 1636
	ori		x5, x0, 4	# 1636
	mul		x4, x4, x5	# 1636
	lw		x5, -60(x2)	# 1636
	add		x4, x5, x4	# 1636
	flw		f0, 0(x4)	# 1636
	lui		x4, %hi(l.11768)	# 1638
	ori		x4, x0, %lo(l.11768)	# 1638
	flw		f1, 0(x4)	# 1638
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.17241	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17240	# 6
fle_else.17241:
	ori		x4, x0, 1	# 6
fle_cont.17240:
	addi	x5, x0, 0	# 1638
	beq		x4, x5, beq.17243	# 1638
	lui		x4, %hi(l.12266)	# 1639
	ori		x4, x0, %lo(l.12266)	# 1639
	flw		f1, 0(x4)	# 1639
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17245	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17244	# 6
fle_else.17245:
	ori		x4, x0, 1	# 6
fle_cont.17244:
	jal		x0, beq_cont.17242	# 1638
beq.17243:
	addi	x4, x0, 0	# 1640
beq_cont.17242:
	addi	x5, x0, 0	# 1809
	beq		x4, x5, beq.17247	# 1809
	addi	x4, x0, 0	# 1810
	ori		x5, x0, 4	# 1810
	mul		x4, x4, x5	# 1810
	lw		x5, -56(x2)	# 1810
	add		x4, x5, x4	# 1810
	lw		x4, 0(x4)	# 1810
	ori		x5, x0, 4	# 1810
	mul		x4, x4, x5	# 1810
	addi	x5, x0, 0	# 1810
	ori		x6, x0, 4	# 1810
	mul		x5, x5, x6	# 1810
	lw		x6, -52(x2)	# 1810
	add		x5, x6, x5	# 1810
	lw		x5, 0(x5)	# 1810
	add		x4, x4, x5	# 1810
	lw		x5, -48(x2)	# 655
	lw		x6, 0(x5)	# 655
	beq		x4, x6, beq.17249	# 1811
	jal		x0, beq_cont.17248	# 1811
beq.17249:
	addi	x4, x0, 0	# 1813
	addi	x6, x0, 0	# 1813
	ori		x7, x0, 4	# 1813
	mul		x6, x6, x7	# 1813
	lw		x7, -44(x2)	# 1813
	add		x6, x7, x6	# 1813
	lw		x6, 0(x6)	# 1813
	lw		x27, -40(x2)	# 1813
	addi	x5, x6, 0
	sw		x1, -64(x2)	# 1813
	addi	x2, x2, -68	# 1813
	lw		x31, 0(x27)	# 1813
	jalr	x1, x31, 0	# 1813
	addi	x2, x2, 68	# 1813
	lw		x1, -64(x2)	# 1813
	addi	x5, x0, 0	# 1813
	beq		x4, x5, beq.17251	# 1813
	jal		x0, beq_cont.17250	# 1813
beq.17251:
	lw		x4, -36(x2)	# 639
	lw		x5, 0(x4)	# 639
	lw		x6, -32(x2)	# 1815
	addi	x4, x6, 0
	sw		x1, -64(x2)	# 1815
	addi	x2, x2, -68	# 1815
	jal		x1, veciprod.2568	# 1815
	addi	x2, x2, 68	# 1815
	lw		x1, -64(x2)	# 1815
	lw		x4, -48(x2)	# 1817
	flw		f1, 8(x4)	# 1817
	flw		f2, -24(x2)	# 1817
	fmul	f3, f1, f2	# 1817
	fmul	f0, f3, f0	# 1817
	lw		x4, -36(x2)	# 639
	lw		x5, 0(x4)	# 639
	lw		x4, -20(x2)	# 1818
	fsw		f0, -64(x2)	# 1818
	fsw		f1, -72(x2)	# 1818
	sw		x1, -80(x2)	# 1818
	addi	x2, x2, -84	# 1818
	jal		x1, veciprod.2568	# 1818
	addi	x2, x2, 84	# 1818
	lw		x1, -80(x2)	# 1818
	flw		f1, -72(x2)	# 1818
	fmul	f1, f1, f0	# 1818
	flw		f0, -64(x2)	# 1819
	flw		f2, -8(x2)	# 1819
	lw		x27, -16(x2)	# 1819
	sw		x1, -80(x2)	# 1819
	addi	x2, x2, -84	# 1819
	lw		x31, 0(x27)	# 1819
	jalr	x1, x31, 0	# 1819
	addi	x2, x2, 84	# 1819
	lw		x1, -80(x2)	# 1819
beq_cont.17250:
beq_cont.17248:
	jal		x0, beq_cont.17246	# 1809
beq.17247:
beq_cont.17246:
	ori		x4, x0, 1	# 1823
	lw		x5, -4(x2)	# 1823
	sub		x4, x5, x4	# 1823
	flw		f0, -24(x2)	# 1823
	flw		f1, -8(x2)	# 1823
	lw		x5, -20(x2)	# 1823
	lw		x27, 0(x2)	# 1823
	lw		x31, 0(x27)	# 1823
	jalr	x0, x31, 0	# 1823
trace_ray.2871:
	lw		x7, 96(x27)	# 1832
	lw		x8, 92(x27)	# 1832
	lw		x9, 88(x27)	# 1832
	lw		x10, 84(x27)	# 1832
	lw		x11, 80(x27)	# 1832
	lw		x12, 76(x27)	# 1832
	lw		x13, 72(x27)	# 1832
	lw		x14, 68(x27)	# 1832
	lw		x15, 64(x27)	# 1832
	lw		x16, 60(x27)	# 1832
	lw		x17, 56(x27)	# 1832
	lw		x18, 52(x27)	# 1832
	lw		x19, 48(x27)	# 1832
	lw		x20, 44(x27)	# 1832
	lw		x21, 40(x27)	# 1832
	lw		x22, 36(x27)	# 1832
	lw		x23, 32(x27)	# 1832
	lw		x24, 28(x27)	# 1832
	lw		x25, 24(x27)	# 1832
	lw		x26, 20(x27)	# 1832
	lw		x31, 16(x27)	# 1832
	sw		x8, 0(x2)	# 1832
	lw		x8, 12(x27)	# 1832
	sw		x20, -4(x2)	# 1832
	lw		x20, 8(x27)	# 1832
	sw		x27, -8(x2)	# 1832
	lw		x27, 4(x27)	# 1832
	sw		x15, -12(x2)	# 1832
	ori		x15, x0, 4	# 1832
	ble		x4, x15, ble.17252	# 1832
	jalr	x0, x1, 0	# 1913
ble.17252:
	lw		x15, 8(x6)	# 577
	sw		x21, -16(x2)	# 1543
	addi	x21, x0, 0	# 1543
	sw		x12, -20(x2)	# 1543
	lui		x12, %hi(l.12254)	# 1543
	ori		x12, x0, %lo(l.12254)	# 1543
	flw		f2, 0(x12)	# 1543
	ori		x12, x0, 4	# 1543
	mul		x12, x21, x12	# 1543
	add		x12, x10, x12	# 1543
	fsw		f2, 0(x12)	# 1543
	addi	x12, x0, 0	# 1544
	addi	x21, x0, 0	# 1544
	sw		x27, -24(x2)	# 1544
	ori		x27, x0, 4	# 1544
	mul		x21, x21, x27	# 1544
	add		x21, x17, x21	# 1544
	lw		x21, 0(x21)	# 1544
	fsw		f1, -32(x2)	# 1544
	sw		x14, -40(x2)	# 1544
	sw		x17, -44(x2)	# 1544
	sw		x19, -48(x2)	# 1544
	sw		x11, -52(x2)	# 1544
	sw		x6, -56(x2)	# 1544
	sw		x23, -60(x2)	# 1544
	sw		x7, -64(x2)	# 1544
	sw		x13, -68(x2)	# 1544
	sw		x24, -72(x2)	# 1544
	sw		x26, -76(x2)	# 1544
	sw		x8, -80(x2)	# 1544
	sw		x31, -84(x2)	# 1544
	sw		x18, -88(x2)	# 1544
	sw		x25, -92(x2)	# 1544
	sw		x16, -96(x2)	# 1544
	sw		x20, -100(x2)	# 1544
	fsw		f0, -104(x2)	# 1544
	sw		x22, -112(x2)	# 1544
	sw		x5, -116(x2)	# 1544
	sw		x15, -120(x2)	# 1544
	sw		x4, -124(x2)	# 1544
	sw		x10, -128(x2)	# 1544
	addi	x6, x5, 0
	addi	x4, x12, 0
	addi	x27, x9, 0
	addi	x5, x21, 0
	sw		x1, -132(x2)	# 1544
	addi	x2, x2, -136	# 1544
	lw		x31, 0(x27)	# 1544
	jalr	x1, x31, 0	# 1544
	addi	x2, x2, 136	# 1544
	lw		x1, -132(x2)	# 1544
	addi	x4, x0, 0	# 1545
	ori		x5, x0, 4	# 1545
	mul		x4, x4, x5	# 1545
	lw		x5, -128(x2)	# 1545
	add		x4, x5, x4	# 1545
	flw		f0, 0(x4)	# 1545
	lui		x4, %hi(l.11768)	# 1547
	ori		x4, x0, %lo(l.11768)	# 1547
	flw		f1, 0(x4)	# 1547
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.17256	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17255	# 6
fle_else.17256:
	ori		x4, x0, 1	# 6
fle_cont.17255:
	addi	x6, x0, 0	# 1547
	beq		x4, x6, beq.17258	# 1547
	lui		x4, %hi(l.12266)	# 1548
	ori		x4, x0, %lo(l.12266)	# 1548
	flw		f1, 0(x4)	# 1548
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17260	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17259	# 6
fle_else.17260:
	ori		x4, x0, 1	# 6
fle_cont.17259:
	jal		x0, beq_cont.17257	# 1547
beq.17258:
	addi	x4, x0, 0	# 1549
beq_cont.17257:
	addi	x6, x0, 0	# 1834
	beq		x4, x6, beq.17261	# 1834
	addi	x4, x0, 0	# 1836
	ori		x6, x0, 4	# 1836
	mul		x4, x4, x6	# 1836
	lw		x6, -92(x2)	# 1836
	add		x4, x6, x4	# 1836
	lw		x4, 0(x4)	# 1836
	ori		x6, x0, 4	# 1837
	mul		x6, x4, x6	# 1837
	lw		x7, -88(x2)	# 1837
	add		x6, x7, x6	# 1837
	lw		x6, 0(x6)	# 1837
	lw		x7, 8(x6)	# 363
	lw		x8, 28(x6)	# 461
	addi	x9, x0, 0	# 466
	ori		x10, x0, 4	# 466
	mul		x9, x9, x10	# 466
	add		x8, x8, x9	# 466
	flw		f0, 0(x8)	# 466
	flw		f1, -104(x2)	# 1839
	fmul	f0, f0, f1	# 1839
	lw		x8, 4(x6)	# 353
	ori		x9, x0, 1	# 1693
	sw		x7, -132(x2)	# 1693
	fsw		f0, -136(x2)	# 1693
	sw		x4, -144(x2)	# 1693
	sw		x6, -148(x2)	# 1693
	beq		x8, x9, beq.17263	# 1693
	ori		x9, x0, 2	# 1695
	beq		x8, x9, beq.17265	# 1695
	lw		x27, -76(x2)	# 1698
	addi	x4, x6, 0
	sw		x1, -152(x2)	# 1698
	addi	x2, x2, -156	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 156	# 1698
	lw		x1, -152(x2)	# 1698
	jal		x0, beq_cont.17264	# 1695
beq.17265:
	lw		x27, -80(x2)	# 1696
	addi	x4, x6, 0
	sw		x1, -152(x2)	# 1696
	addi	x2, x2, -156	# 1696
	lw		x31, 0(x27)	# 1696
	jalr	x1, x31, 0	# 1696
	addi	x2, x2, 156	# 1696
	lw		x1, -152(x2)	# 1696
beq_cont.17264:
	jal		x0, beq_cont.17262	# 1693
beq.17263:
	lw		x8, -116(x2)	# 1694
	lw		x27, -84(x2)	# 1694
	addi	x4, x8, 0
	sw		x1, -152(x2)	# 1694
	addi	x2, x2, -156	# 1694
	lw		x31, 0(x27)	# 1694
	jalr	x1, x31, 0	# 1694
	addi	x2, x2, 156	# 1694
	lw		x1, -152(x2)	# 1694
beq_cont.17262:
	addi	x4, x0, 0	# 259
	addi	x5, x0, 0	# 259
	ori		x6, x0, 4	# 259
	mul		x5, x5, x6	# 259
	lw		x6, -72(x2)	# 259
	add		x5, x6, x5	# 259
	flw		f0, 0(x5)	# 259
	ori		x5, x0, 4	# 259
	mul		x4, x4, x5	# 259
	lw		x5, -68(x2)	# 259
	add		x4, x5, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 1	# 260
	ori		x7, x0, 1	# 260
	ori		x8, x0, 4	# 260
	mul		x7, x7, x8	# 260
	add		x7, x6, x7	# 260
	flw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 260
	mul		x4, x4, x7	# 260
	add		x4, x5, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 2	# 261
	ori		x7, x0, 2	# 261
	ori		x8, x0, 4	# 261
	mul		x7, x7, x8	# 261
	add		x7, x6, x7	# 261
	flw		f0, 0(x7)	# 261
	ori		x7, x0, 4	# 261
	mul		x4, x4, x7	# 261
	add		x4, x5, x4	# 261
	fsw		f0, 0(x4)	# 261
	lw		x4, -148(x2)	# 1843
	lw		x27, -64(x2)	# 1843
	addi	x5, x6, 0
	sw		x1, -152(x2)	# 1843
	addi	x2, x2, -156	# 1843
	lw		x31, 0(x27)	# 1843
	jalr	x1, x31, 0	# 1843
	addi	x2, x2, 156	# 1843
	lw		x1, -152(x2)	# 1843
	ori		x4, x0, 4	# 1846
	lw		x5, -144(x2)	# 1846
	mul		x4, x5, x4	# 1846
	addi	x5, x0, 0	# 1846
	ori		x6, x0, 4	# 1846
	mul		x5, x5, x6	# 1846
	lw		x6, -60(x2)	# 1846
	add		x5, x6, x5	# 1846
	lw		x5, 0(x5)	# 1846
	add		x4, x4, x5	# 1846
	ori		x5, x0, 4	# 1846
	lw		x6, -124(x2)	# 1846
	mul		x5, x6, x5	# 1846
	lw		x7, -120(x2)	# 1846
	add		x5, x7, x5	# 1846
	sw		x4, 0(x5)	# 1846
	lw		x4, -56(x2)	# 569
	lw		x5, 4(x4)	# 569
	ori		x8, x0, 4	# 1848
	mul		x8, x6, x8	# 1848
	add		x5, x5, x8	# 1848
	lw		x5, 0(x5)	# 1848
	addi	x8, x0, 0	# 259
	addi	x9, x0, 0	# 259
	ori		x10, x0, 4	# 259
	mul		x9, x9, x10	# 259
	lw		x10, -72(x2)	# 259
	add		x9, x10, x9	# 259
	flw		f0, 0(x9)	# 259
	ori		x9, x0, 4	# 259
	mul		x8, x8, x9	# 259
	add		x8, x5, x8	# 259
	fsw		f0, 0(x8)	# 259
	ori		x8, x0, 1	# 260
	ori		x9, x0, 1	# 260
	ori		x11, x0, 4	# 260
	mul		x9, x9, x11	# 260
	add		x9, x10, x9	# 260
	flw		f0, 0(x9)	# 260
	ori		x9, x0, 4	# 260
	mul		x8, x8, x9	# 260
	add		x8, x5, x8	# 260
	fsw		f0, 0(x8)	# 260
	ori		x8, x0, 2	# 261
	ori		x9, x0, 2	# 261
	ori		x11, x0, 4	# 261
	mul		x9, x9, x11	# 261
	add		x9, x10, x9	# 261
	flw		f0, 0(x9)	# 261
	ori		x9, x0, 4	# 261
	mul		x8, x8, x9	# 261
	add		x5, x5, x8	# 261
	fsw		f0, 0(x5)	# 261
	lw		x5, 12(x4)	# 584
	lw		x8, -148(x2)	# 461
	lw		x9, 28(x8)	# 461
	addi	x11, x0, 0	# 466
	ori		x12, x0, 4	# 466
	mul		x11, x11, x12	# 466
	add		x9, x9, x11	# 466
	flw		f0, 0(x9)	# 466
	lui		x9, %hi(l.10399)	# 1852
	ori		x9, x0, %lo(l.10399)	# 1852
	flw		f1, 0(x9)	# 1852
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17267	# 6
	addi	x9, x0, 0	# 6
	jal		x0, fle_cont.17266	# 6
fle_else.17267:
	ori		x9, x0, 1	# 6
fle_cont.17266:
	addi	x11, x0, 0	# 1852
	beq		x9, x11, beq.17269	# 1852
	addi	x9, x0, 0	# 1853
	ori		x11, x0, 4	# 1853
	mul		x11, x6, x11	# 1853
	add		x5, x5, x11	# 1853
	sw		x9, 0(x5)	# 1853
	jal		x0, beq_cont.17268	# 1852
beq.17269:
	ori		x9, x0, 1	# 1855
	ori		x11, x0, 4	# 1855
	mul		x11, x6, x11	# 1855
	add		x5, x5, x11	# 1855
	sw		x9, 0(x5)	# 1855
	lw		x5, 16(x4)	# 591
	ori		x9, x0, 4	# 1857
	mul		x9, x6, x9	# 1857
	add		x9, x5, x9	# 1857
	lw		x9, 0(x9)	# 1857
	addi	x11, x0, 0	# 259
	addi	x12, x0, 0	# 259
	ori		x13, x0, 4	# 259
	mul		x12, x12, x13	# 259
	lw		x13, -52(x2)	# 259
	add		x12, x13, x12	# 259
	flw		f0, 0(x12)	# 259
	ori		x12, x0, 4	# 259
	mul		x11, x11, x12	# 259
	add		x11, x9, x11	# 259
	fsw		f0, 0(x11)	# 259
	ori		x11, x0, 1	# 260
	ori		x12, x0, 1	# 260
	ori		x14, x0, 4	# 260
	mul		x12, x12, x14	# 260
	add		x12, x13, x12	# 260
	flw		f0, 0(x12)	# 260
	ori		x12, x0, 4	# 260
	mul		x11, x11, x12	# 260
	add		x11, x9, x11	# 260
	fsw		f0, 0(x11)	# 260
	ori		x11, x0, 2	# 261
	ori		x12, x0, 2	# 261
	ori		x14, x0, 4	# 261
	mul		x12, x12, x14	# 261
	add		x12, x13, x12	# 261
	flw		f0, 0(x12)	# 261
	ori		x12, x0, 4	# 261
	mul		x11, x11, x12	# 261
	add		x9, x9, x11	# 261
	fsw		f0, 0(x9)	# 261
	ori		x9, x0, 4	# 1858
	mul		x9, x6, x9	# 1858
	add		x5, x5, x9	# 1858
	lw		x5, 0(x5)	# 1858
	lui		x9, %hi(l.12377)	# 1858
	ori		x9, x0, %lo(l.12377)	# 1858
	flw		f0, 0(x9)	# 1858
	flw		f1, -136(x2)	# 1858
	fmul	f0, f0, f1	# 1858
	addi	x9, x0, 0	# 325
	addi	x11, x0, 0	# 325
	ori		x12, x0, 4	# 325
	mul		x11, x11, x12	# 325
	add		x11, x5, x11	# 325
	flw		f2, 0(x11)	# 325
	fmul	f2, f2, f0	# 325
	ori		x11, x0, 4	# 325
	mul		x9, x9, x11	# 325
	add		x9, x5, x9	# 325
	fsw		f2, 0(x9)	# 325
	ori		x9, x0, 1	# 326
	ori		x11, x0, 1	# 326
	ori		x12, x0, 4	# 326
	mul		x11, x11, x12	# 326
	add		x11, x5, x11	# 326
	flw		f2, 0(x11)	# 326
	fmul	f2, f2, f0	# 326
	ori		x11, x0, 4	# 326
	mul		x9, x9, x11	# 326
	add		x9, x5, x9	# 326
	fsw		f2, 0(x9)	# 326
	ori		x9, x0, 2	# 327
	ori		x11, x0, 2	# 327
	ori		x12, x0, 4	# 327
	mul		x11, x11, x12	# 327
	add		x11, x5, x11	# 327
	flw		f2, 0(x11)	# 327
	fmul	f0, f2, f0	# 327
	ori		x11, x0, 4	# 327
	mul		x9, x9, x11	# 327
	add		x5, x5, x9	# 327
	fsw		f0, 0(x5)	# 327
	lw		x5, 28(x4)	# 628
	ori		x9, x0, 4	# 1860
	mul		x9, x6, x9	# 1860
	add		x5, x5, x9	# 1860
	lw		x5, 0(x5)	# 1860
	addi	x9, x0, 0	# 259
	addi	x11, x0, 0	# 259
	ori		x12, x0, 4	# 259
	mul		x11, x11, x12	# 259
	lw		x12, -48(x2)	# 259
	add		x11, x12, x11	# 259
	flw		f0, 0(x11)	# 259
	ori		x11, x0, 4	# 259
	mul		x9, x9, x11	# 259
	add		x9, x5, x9	# 259
	fsw		f0, 0(x9)	# 259
	ori		x9, x0, 1	# 260
	ori		x11, x0, 1	# 260
	ori		x13, x0, 4	# 260
	mul		x11, x11, x13	# 260
	add		x11, x12, x11	# 260
	flw		f0, 0(x11)	# 260
	ori		x11, x0, 4	# 260
	mul		x9, x9, x11	# 260
	add		x9, x5, x9	# 260
	fsw		f0, 0(x9)	# 260
	ori		x9, x0, 2	# 261
	ori		x11, x0, 2	# 261
	ori		x13, x0, 4	# 261
	mul		x11, x11, x13	# 261
	add		x11, x12, x11	# 261
	flw		f0, 0(x11)	# 261
	ori		x11, x0, 4	# 261
	mul		x9, x9, x11	# 261
	add		x5, x5, x9	# 261
	fsw		f0, 0(x5)	# 261
beq_cont.17268:
	lui		x5, %hi(l.12418)	# 1863
	ori		x5, x0, %lo(l.12418)	# 1863
	flw		f0, 0(x5)	# 1863
	lw		x5, -116(x2)	# 1863
	lw		x9, -48(x2)	# 1863
	fsw		f0, -152(x2)	# 1863
	addi	x4, x5, 0
	addi	x5, x9, 0
	sw		x1, -160(x2)	# 1863
	addi	x2, x2, -164	# 1863
	jal		x1, veciprod.2568	# 1863
	addi	x2, x2, 164	# 1863
	lw		x1, -160(x2)	# 1863
	flw		f1, -152(x2)	# 1863
	fmul	f0, f1, f0	# 1863
	lw		x4, -116(x2)	# 1865
	lw		x5, -48(x2)	# 1865
	sw		x1, -160(x2)	# 1865
	addi	x2, x2, -164	# 1865
	jal		x1, vecaccum.2576	# 1865
	addi	x2, x2, 164	# 1865
	lw		x1, -160(x2)	# 1865
	lw		x4, -148(x2)	# 471
	lw		x5, 28(x4)	# 471
	ori		x6, x0, 1	# 476
	ori		x7, x0, 4	# 476
	mul		x6, x6, x7	# 476
	add		x5, x5, x6	# 476
	flw		f0, 0(x5)	# 476
	flw		f1, -104(x2)	# 1867
	fmul	f0, f1, f0	# 1867
	addi	x5, x0, 0	# 1870
	addi	x6, x0, 0	# 1870
	ori		x7, x0, 4	# 1870
	mul		x6, x6, x7	# 1870
	lw		x7, -44(x2)	# 1870
	add		x6, x7, x6	# 1870
	lw		x6, 0(x6)	# 1870
	lw		x27, -40(x2)	# 1870
	fsw		f0, -160(x2)	# 1870
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -168(x2)	# 1870
	addi	x2, x2, -172	# 1870
	lw		x31, 0(x27)	# 1870
	jalr	x1, x31, 0	# 1870
	addi	x2, x2, 172	# 1870
	lw		x1, -168(x2)	# 1870
	addi	x5, x0, 0	# 1870
	beq		x4, x5, beq.17271	# 1870
	jal		x0, beq_cont.17270	# 1870
beq.17271:
	lw		x4, -48(x2)	# 1871
	lw		x5, -112(x2)	# 1871
	sw		x1, -168(x2)	# 1871
	addi	x2, x2, -172	# 1871
	jal		x1, veciprod.2568	# 1871
	addi	x2, x2, 172	# 1871
	lw		x1, -168(x2)	# 1871
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	flw		f1, -136(x2)	# 1871
	fmul	f0, f0, f1	# 1871
	lw		x4, -116(x2)	# 1872
	lw		x5, -112(x2)	# 1872
	fsw		f0, -168(x2)	# 1872
	sw		x1, -176(x2)	# 1872
	addi	x2, x2, -180	# 1872
	jal		x1, veciprod.2568	# 1872
	addi	x2, x2, 180	# 1872
	lw		x1, -176(x2)	# 1872
	fsub	f1, f1, f1	# 4
	fsub	f1, f1, f0	# 4
	flw		f0, -168(x2)	# 1873
	flw		f2, -160(x2)	# 1873
	lw		x27, -24(x2)	# 1873
	sw		x1, -176(x2)	# 1873
	addi	x2, x2, -180	# 1873
	lw		x31, 0(x27)	# 1873
	jalr	x1, x31, 0	# 1873
	addi	x2, x2, 180	# 1873
	lw		x1, -176(x2)	# 1873
beq_cont.17270:
	addi	x4, x0, 0	# 259
	addi	x5, x0, 0	# 259
	ori		x6, x0, 4	# 259
	mul		x5, x5, x6	# 259
	lw		x6, -72(x2)	# 259
	add		x5, x6, x5	# 259
	flw		f0, 0(x5)	# 259
	ori		x5, x0, 4	# 259
	mul		x4, x4, x5	# 259
	lw		x5, -20(x2)	# 259
	add		x4, x5, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 1	# 260
	ori		x7, x0, 1	# 260
	ori		x8, x0, 4	# 260
	mul		x7, x7, x8	# 260
	add		x7, x6, x7	# 260
	flw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 260
	mul		x4, x4, x7	# 260
	add		x4, x5, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 2	# 261
	ori		x7, x0, 2	# 261
	ori		x8, x0, 4	# 261
	mul		x7, x7, x8	# 261
	add		x7, x6, x7	# 261
	flw		f0, 0(x7)	# 261
	ori		x7, x0, 4	# 261
	mul		x4, x4, x7	# 261
	add		x4, x5, x4	# 261
	fsw		f0, 0(x4)	# 261
	addi	x4, x0, 0	# 1315
	ori		x5, x0, 4	# 1315
	mul		x4, x4, x5	# 1315
	lw		x5, -16(x2)	# 1315
	add		x4, x5, x4	# 1315
	lw		x4, 0(x4)	# 1315
	ori		x5, x0, 1	# 1315
	sub		x5, x4, x5	# 1315
	lw		x27, -12(x2)	# 1315
	addi	x4, x6, 0
	sw		x1, -176(x2)	# 1315
	addi	x2, x2, -180	# 1315
	lw		x31, 0(x27)	# 1315
	jalr	x1, x31, 0	# 1315
	addi	x2, x2, 180	# 1315
	lw		x1, -176(x2)	# 1315
	addi	x4, x0, 0	# 1878
	ori		x5, x0, 4	# 1878
	mul		x4, x4, x5	# 1878
	lw		x5, -4(x2)	# 1878
	add		x4, x5, x4	# 1878
	lw		x4, 0(x4)	# 1878
	ori		x5, x0, 1	# 1878
	sub		x4, x4, x5	# 1878
	flw		f0, -136(x2)	# 1878
	flw		f1, -160(x2)	# 1878
	lw		x5, -116(x2)	# 1878
	lw		x27, 0(x2)	# 1878
	sw		x1, -176(x2)	# 1878
	addi	x2, x2, -180	# 1878
	lw		x31, 0(x27)	# 1878
	jalr	x1, x31, 0	# 1878
	addi	x2, x2, 180	# 1878
	lw		x1, -176(x2)	# 1878
	lui		x4, %hi(l.12450)	# 1881
	ori		x4, x0, %lo(l.12450)	# 1881
	flw		f0, 0(x4)	# 1881
	flw		f1, -104(x2)	# 6
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17273	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17272	# 6
fle_else.17273:
	ori		x4, x0, 1	# 6
fle_cont.17272:
	addi	x5, x0, 0	# 1881
	beq		x4, x5, beq.17274	# 1881
	ori		x4, x0, 4	# 1883
	lw		x5, -124(x2)	# 1883
	ble		x4, x5, ble.17276	# 1883
	addi	x4, x5, 1	# 1884
	lui		x6, -1	# 1884
	ori		x6, x0, -1	# 1884
	ori		x7, x0, 4	# 1884
	mul		x4, x4, x7	# 1884
	lw		x7, -120(x2)	# 1884
	add		x4, x7, x4	# 1884
	sw		x6, 0(x4)	# 1884
	jal		x0, ble_cont.17275	# 1883
ble.17276:
ble_cont.17275:
	ori		x4, x0, 2	# 1887
	lw		x6, -132(x2)	# 1887
	beq		x6, x4, beq.17277	# 1887
	jalr	x0, x1, 0	# 1890
beq.17277:
	lui		x4, %hi(l.10376)	# 1888
	ori		x4, x0, %lo(l.10376)	# 1888
	flw		f0, 0(x4)	# 1888
	lw		x4, -148(x2)	# 461
	lw		x4, 28(x4)	# 461
	addi	x6, x0, 0	# 466
	ori		x7, x0, 4	# 466
	mul		x6, x6, x7	# 466
	add		x4, x4, x6	# 466
	flw		f2, 0(x4)	# 466
	fsub	f0, f0, f2	# 1888
	fmul	f0, f1, f0	# 1888
	addi	x4, x5, 1	# 1889
	addi	x5, x0, 0	# 1889
	ori		x6, x0, 4	# 1889
	mul		x5, x5, x6	# 1889
	lw		x6, -128(x2)	# 1889
	add		x5, x6, x5	# 1889
	flw		f1, 0(x5)	# 1889
	flw		f2, -32(x2)	# 1889
	fadd	f1, f2, f1	# 1889
	lw		x5, -116(x2)	# 1889
	lw		x6, -56(x2)	# 1889
	lw		x27, -8(x2)	# 1889
	lw		x31, 0(x27)	# 1889
	jalr	x0, x31, 0	# 1889
beq.17274:
	jalr	x0, x1, 0	# 1892
beq.17261:
	lui		x4, -1	# 1897
	ori		x4, x0, -1	# 1897
	ori		x5, x0, 4	# 1897
	lw		x6, -124(x2)	# 1897
	mul		x5, x6, x5	# 1897
	lw		x7, -120(x2)	# 1897
	add		x5, x7, x5	# 1897
	sw		x4, 0(x5)	# 1897
	addi	x4, x0, 0	# 1899
	beq		x6, x4, beq.17280	# 1899
	lw		x4, -116(x2)	# 1900
	lw		x5, -112(x2)	# 1900
	sw		x1, -176(x2)	# 1900
	addi	x2, x2, -180	# 1900
	jal		x1, veciprod.2568	# 1900
	addi	x2, x2, 180	# 1900
	lw		x1, -176(x2)	# 1900
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	lui		x4, %hi(l.10373)	# 2
	ori		x4, x0, %lo(l.10373)	# 2
	flw		f1, 0(x4)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.17282	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.17281	# 2
fle_else.17282:
	ori		x4, x0, 1	# 2
fle_cont.17281:
	addi	x5, x0, 0	# 1902
	beq		x4, x5, beq.17283	# 1902
	fmul	f1, f0, f0	# 8
	fmul	f0, f1, f0	# 1905
	flw		f1, -104(x2)	# 1905
	fmul	f0, f0, f1	# 1905
	addi	x4, x0, 0	# 1905
	ori		x5, x0, 4	# 1905
	mul		x4, x4, x5	# 1905
	lw		x5, -100(x2)	# 1905
	add		x4, x5, x4	# 1905
	flw		f1, 0(x4)	# 1905
	fmul	f0, f0, f1	# 1905
	addi	x4, x0, 0	# 1906
	addi	x5, x0, 0	# 1906
	ori		x6, x0, 4	# 1906
	mul		x5, x5, x6	# 1906
	lw		x6, -96(x2)	# 1906
	add		x5, x6, x5	# 1906
	flw		f1, 0(x5)	# 1906
	fadd	f1, f1, f0	# 1906
	ori		x5, x0, 4	# 1906
	mul		x4, x4, x5	# 1906
	add		x4, x6, x4	# 1906
	fsw		f1, 0(x4)	# 1906
	ori		x4, x0, 1	# 1907
	ori		x5, x0, 1	# 1907
	ori		x7, x0, 4	# 1907
	mul		x5, x5, x7	# 1907
	add		x5, x6, x5	# 1907
	flw		f1, 0(x5)	# 1907
	fadd	f1, f1, f0	# 1907
	ori		x5, x0, 4	# 1907
	mul		x4, x4, x5	# 1907
	add		x4, x6, x4	# 1907
	fsw		f1, 0(x4)	# 1907
	ori		x4, x0, 2	# 1908
	ori		x5, x0, 2	# 1908
	ori		x7, x0, 4	# 1908
	mul		x5, x5, x7	# 1908
	add		x5, x6, x5	# 1908
	flw		f1, 0(x5)	# 1908
	fadd	f0, f1, f0	# 1908
	ori		x5, x0, 4	# 1908
	mul		x4, x4, x5	# 1908
	add		x4, x6, x4	# 1908
	fsw		f0, 0(x4)	# 1908
	jalr	x0, x1, 0	# 1908
beq.17283:
	jalr	x0, x1, 0	# 1910
beq.17280:
	jalr	x0, x1, 0	# 1911
trace_diffuse_ray.2877:
	lw		x5, 60(x27)	# 1634
	lw		x6, 56(x27)	# 1634
	lw		x7, 52(x27)	# 1634
	lw		x8, 48(x27)	# 1634
	lw		x9, 44(x27)	# 1634
	lw		x10, 40(x27)	# 1634
	lw		x11, 36(x27)	# 1634
	lw		x12, 32(x27)	# 1634
	lw		x13, 28(x27)	# 1634
	lw		x14, 24(x27)	# 1634
	lw		x15, 20(x27)	# 1634
	lw		x16, 16(x27)	# 1634
	lw		x17, 12(x27)	# 1634
	lw		x18, 8(x27)	# 1634
	lw		x19, 4(x27)	# 1634
	addi	x20, x0, 0	# 1634
	lui		x21, %hi(l.12254)	# 1634
	ori		x21, x0, %lo(l.12254)	# 1634
	flw		f1, 0(x21)	# 1634
	ori		x21, x0, 4	# 1634
	mul		x20, x20, x21	# 1634
	add		x20, x7, x20	# 1634
	fsw		f1, 0(x20)	# 1634
	addi	x20, x0, 0	# 1635
	addi	x21, x0, 0	# 1635
	ori		x22, x0, 4	# 1635
	mul		x21, x21, x22	# 1635
	add		x21, x10, x21	# 1635
	lw		x21, 0(x21)	# 1635
	sw		x8, 0(x2)	# 1635
	sw		x19, -4(x2)	# 1635
	fsw		f0, -8(x2)	# 1635
	sw		x13, -16(x2)	# 1635
	sw		x12, -20(x2)	# 1635
	sw		x9, -24(x2)	# 1635
	sw		x10, -28(x2)	# 1635
	sw		x14, -32(x2)	# 1635
	sw		x5, -36(x2)	# 1635
	sw		x16, -40(x2)	# 1635
	sw		x18, -44(x2)	# 1635
	sw		x17, -48(x2)	# 1635
	sw		x4, -52(x2)	# 1635
	sw		x11, -56(x2)	# 1635
	sw		x15, -60(x2)	# 1635
	sw		x7, -64(x2)	# 1635
	addi	x5, x21, 0
	addi	x27, x6, 0
	addi	x6, x4, 0
	addi	x4, x20, 0
	sw		x1, -68(x2)	# 1635
	addi	x2, x2, -72	# 1635
	lw		x31, 0(x27)	# 1635
	jalr	x1, x31, 0	# 1635
	addi	x2, x2, 72	# 1635
	lw		x1, -68(x2)	# 1635
	addi	x4, x0, 0	# 1636
	ori		x5, x0, 4	# 1636
	mul		x4, x4, x5	# 1636
	lw		x5, -64(x2)	# 1636
	add		x4, x5, x4	# 1636
	flw		f0, 0(x4)	# 1636
	lui		x4, %hi(l.11768)	# 1638
	ori		x4, x0, %lo(l.11768)	# 1638
	flw		f1, 0(x4)	# 1638
	fle		x31, f0, f1	# 6
	beq		x31, x0, fle_else.17288	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17287	# 6
fle_else.17288:
	ori		x4, x0, 1	# 6
fle_cont.17287:
	addi	x5, x0, 0	# 1638
	beq		x4, x5, beq.17290	# 1638
	lui		x4, %hi(l.12266)	# 1639
	ori		x4, x0, %lo(l.12266)	# 1639
	flw		f1, 0(x4)	# 1639
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17292	# 6
	addi	x4, x0, 0	# 6
	jal		x0, fle_cont.17291	# 6
fle_else.17292:
	ori		x4, x0, 1	# 6
fle_cont.17291:
	jal		x0, beq_cont.17289	# 1638
beq.17290:
	addi	x4, x0, 0	# 1640
beq_cont.17289:
	addi	x5, x0, 0	# 1927
	beq		x4, x5, beq.17293	# 1927
	addi	x4, x0, 0	# 1928
	ori		x5, x0, 4	# 1928
	mul		x4, x4, x5	# 1928
	lw		x5, -60(x2)	# 1928
	add		x4, x5, x4	# 1928
	lw		x4, 0(x4)	# 1928
	ori		x5, x0, 4	# 1928
	mul		x4, x4, x5	# 1928
	lw		x5, -56(x2)	# 1928
	add		x4, x5, x4	# 1928
	lw		x4, 0(x4)	# 1928
	lw		x5, -52(x2)	# 639
	lw		x5, 0(x5)	# 639
	lw		x6, 4(x4)	# 353
	ori		x7, x0, 1	# 1693
	sw		x4, -68(x2)	# 1693
	beq		x6, x7, beq.17295	# 1693
	ori		x5, x0, 2	# 1695
	beq		x6, x5, beq.17297	# 1695
	lw		x27, -40(x2)	# 1698
	sw		x1, -72(x2)	# 1698
	addi	x2, x2, -76	# 1698
	lw		x31, 0(x27)	# 1698
	jalr	x1, x31, 0	# 1698
	addi	x2, x2, 76	# 1698
	lw		x1, -72(x2)	# 1698
	jal		x0, beq_cont.17296	# 1695
beq.17297:
	lw		x27, -44(x2)	# 1696
	sw		x1, -72(x2)	# 1696
	addi	x2, x2, -76	# 1696
	lw		x31, 0(x27)	# 1696
	jalr	x1, x31, 0	# 1696
	addi	x2, x2, 76	# 1696
	lw		x1, -72(x2)	# 1696
beq_cont.17296:
	jal		x0, beq_cont.17294	# 1693
beq.17295:
	lw		x27, -48(x2)	# 1694
	addi	x4, x5, 0
	sw		x1, -72(x2)	# 1694
	addi	x2, x2, -76	# 1694
	lw		x31, 0(x27)	# 1694
	jalr	x1, x31, 0	# 1694
	addi	x2, x2, 76	# 1694
	lw		x1, -72(x2)	# 1694
beq_cont.17294:
	lw		x4, -68(x2)	# 1930
	lw		x5, -32(x2)	# 1930
	lw		x27, -36(x2)	# 1930
	sw		x1, -72(x2)	# 1930
	addi	x2, x2, -76	# 1930
	lw		x31, 0(x27)	# 1930
	jalr	x1, x31, 0	# 1930
	addi	x2, x2, 76	# 1930
	lw		x1, -72(x2)	# 1930
	addi	x4, x0, 0	# 1933
	addi	x5, x0, 0	# 1933
	ori		x6, x0, 4	# 1933
	mul		x5, x5, x6	# 1933
	lw		x6, -28(x2)	# 1933
	add		x5, x6, x5	# 1933
	lw		x5, 0(x5)	# 1933
	lw		x27, -24(x2)	# 1933
	sw		x1, -72(x2)	# 1933
	addi	x2, x2, -76	# 1933
	lw		x31, 0(x27)	# 1933
	jalr	x1, x31, 0	# 1933
	addi	x2, x2, 76	# 1933
	lw		x1, -72(x2)	# 1933
	addi	x5, x0, 0	# 1933
	beq		x4, x5, beq.17298	# 1933
	jalr	x0, x1, 0	# 1937
beq.17298:
	lw		x4, -20(x2)	# 1934
	lw		x5, -16(x2)	# 1934
	sw		x1, -72(x2)	# 1934
	addi	x2, x2, -76	# 1934
	jal		x1, veciprod.2568	# 1934
	addi	x2, x2, 76	# 1934
	lw		x1, -72(x2)	# 1934
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	lui		x4, %hi(l.10373)	# 2
	ori		x4, x0, %lo(l.10373)	# 2
	flw		f1, 0(x4)	# 2
	fle		x31, f0, f1	# 2
	beq		x31, x0, fle_else.17301	# 2
	addi	x4, x0, 0	# 2
	jal		x0, fle_cont.17300	# 2
fle_else.17301:
	ori		x4, x0, 1	# 2
fle_cont.17300:
	addi	x5, x0, 0	# 1935
	beq		x4, x5, beq.17303	# 1935
	jal		x0, beq_cont.17302	# 1935
beq.17303:
	lui		x4, %hi(l.10373)	# 1935
	ori		x4, x0, %lo(l.10373)	# 1935
	flw		f0, 0(x4)	# 1935
beq_cont.17302:
	flw		f1, -8(x2)	# 1936
	fmul	f0, f1, f0	# 1936
	lw		x4, -68(x2)	# 461
	lw		x4, 28(x4)	# 461
	addi	x5, x0, 0	# 466
	ori		x6, x0, 4	# 466
	mul		x5, x5, x6	# 466
	add		x4, x4, x5	# 466
	flw		f1, 0(x4)	# 466
	fmul	f0, f0, f1	# 1936
	lw		x4, -4(x2)	# 1936
	lw		x5, 0(x2)	# 1936
	jal		x0, vecaccum.2576	# 1936
beq.17293:
	jalr	x0, x1, 0	# 1938
iter_trace_diffuse_rays.2880:
	lw		x8, 4(x27)	# 1944
	addi	x9, x0, 0	# 1944
	ble		x9, x7, ble.17305	# 1944
	jalr	x0, x1, 0	# 1955
ble.17305:
	ori		x9, x0, 4	# 1945
	mul		x9, x7, x9	# 1945
	add		x9, x4, x9	# 1945
	lw		x9, 0(x9)	# 1945
	lw		x9, 0(x9)	# 639
	sw		x6, 0(x2)	# 1945
	sw		x5, -4(x2)	# 1945
	sw		x27, -8(x2)	# 1945
	sw		x8, -12(x2)	# 1945
	sw		x4, -16(x2)	# 1945
	sw		x7, -20(x2)	# 1945
	addi	x4, x9, 0
	sw		x1, -24(x2)	# 1945
	addi	x2, x2, -28	# 1945
	jal		x1, veciprod.2568	# 1945
	addi	x2, x2, 28	# 1945
	lw		x1, -24(x2)	# 1945
	lui		x4, %hi(l.10373)	# 3
	ori		x4, x0, %lo(l.10373)	# 3
	flw		f1, 0(x4)	# 3
	fle		x31, f1, f0	# 3
	beq		x31, x0, fle_else.17308	# 3
	addi	x4, x0, 0	# 3
	jal		x0, fle_cont.17307	# 3
fle_else.17308:
	ori		x4, x0, 1	# 3
fle_cont.17307:
	addi	x5, x0, 0	# 1949
	beq		x4, x5, beq.17310	# 1949
	lw		x4, -20(x2)	# 1950
	addi	x5, x4, 1	# 1950
	ori		x6, x0, 4	# 1950
	mul		x5, x5, x6	# 1950
	lw		x6, -16(x2)	# 1950
	add		x5, x6, x5	# 1950
	lw		x5, 0(x5)	# 1950
	lui		x7, %hi(l.12520)	# 1950
	ori		x7, x0, %lo(l.12520)	# 1950
	flw		f1, 0(x7)	# 1950
	fdiv	f0, f0, f1	# 1950
	lw		x27, -12(x2)	# 1950
	addi	x4, x5, 0
	sw		x1, -24(x2)	# 1950
	addi	x2, x2, -28	# 1950
	lw		x31, 0(x27)	# 1950
	jalr	x1, x31, 0	# 1950
	addi	x2, x2, 28	# 1950
	lw		x1, -24(x2)	# 1950
	jal		x0, beq_cont.17309	# 1949
beq.17310:
	ori		x4, x0, 4	# 1952
	lw		x5, -20(x2)	# 1952
	mul		x4, x5, x4	# 1952
	lw		x6, -16(x2)	# 1952
	add		x4, x6, x4	# 1952
	lw		x4, 0(x4)	# 1952
	lui		x7, %hi(l.12525)	# 1952
	ori		x7, x0, %lo(l.12525)	# 1952
	flw		f1, 0(x7)	# 1952
	fdiv	f0, f0, f1	# 1952
	lw		x27, -12(x2)	# 1952
	sw		x1, -24(x2)	# 1952
	addi	x2, x2, -28	# 1952
	lw		x31, 0(x27)	# 1952
	jalr	x1, x31, 0	# 1952
	addi	x2, x2, 28	# 1952
	lw		x1, -24(x2)	# 1952
beq_cont.17309:
	ori		x4, x0, 2	# 1954
	lw		x5, -20(x2)	# 1954
	sub		x7, x5, x4	# 1954
	lw		x4, -16(x2)	# 1954
	lw		x5, -4(x2)	# 1954
	lw		x6, 0(x2)	# 1954
	lw		x27, -8(x2)	# 1954
	lw		x31, 0(x27)	# 1954
	jalr	x0, x31, 0	# 1954
trace_diffuse_ray_80percent.2889:
	lw		x7, 12(x27)	# 1971
	lw		x8, 8(x27)	# 1971
	lw		x9, 4(x27)	# 1971
	addi	x10, x0, 0	# 1971
	sw		x5, 0(x2)	# 1971
	sw		x8, -4(x2)	# 1971
	sw		x6, -8(x2)	# 1971
	sw		x7, -12(x2)	# 1971
	sw		x9, -16(x2)	# 1971
	sw		x4, -20(x2)	# 1971
	beq		x4, x10, beq.17312	# 1971
	addi	x10, x0, 0	# 1972
	ori		x11, x0, 4	# 1972
	mul		x10, x10, x11	# 1972
	add		x10, x9, x10	# 1972
	lw		x10, 0(x10)	# 1972
	sw		x10, -24(x2)	# 1960
	addi	x4, x6, 0
	addi	x27, x7, 0
	sw		x1, -28(x2)	# 1960
	addi	x2, x2, -32	# 1960
	lw		x31, 0(x27)	# 1960
	jalr	x1, x31, 0	# 1960
	addi	x2, x2, 32	# 1960
	lw		x1, -28(x2)	# 1960
	ori		x7, x0, 118	# 1964
	lw		x4, -24(x2)	# 1964
	lw		x5, 0(x2)	# 1964
	lw		x6, -8(x2)	# 1964
	lw		x27, -4(x2)	# 1964
	sw		x1, -28(x2)	# 1964
	addi	x2, x2, -32	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 32	# 1964
	lw		x1, -28(x2)	# 1964
	jal		x0, beq_cont.17311	# 1971
beq.17312:
beq_cont.17311:
	ori		x4, x0, 1	# 1975
	lw		x5, -20(x2)	# 1975
	beq		x5, x4, beq.17314	# 1975
	ori		x4, x0, 1	# 1976
	ori		x6, x0, 4	# 1976
	mul		x4, x4, x6	# 1976
	lw		x6, -16(x2)	# 1976
	add		x4, x6, x4	# 1976
	lw		x4, 0(x4)	# 1976
	lw		x7, -8(x2)	# 1960
	lw		x27, -12(x2)	# 1960
	sw		x4, -28(x2)	# 1960
	addi	x4, x7, 0
	sw		x1, -32(x2)	# 1960
	addi	x2, x2, -36	# 1960
	lw		x31, 0(x27)	# 1960
	jalr	x1, x31, 0	# 1960
	addi	x2, x2, 36	# 1960
	lw		x1, -32(x2)	# 1960
	ori		x7, x0, 118	# 1964
	lw		x4, -28(x2)	# 1964
	lw		x5, 0(x2)	# 1964
	lw		x6, -8(x2)	# 1964
	lw		x27, -4(x2)	# 1964
	sw		x1, -32(x2)	# 1964
	addi	x2, x2, -36	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 36	# 1964
	lw		x1, -32(x2)	# 1964
	jal		x0, beq_cont.17313	# 1975
beq.17314:
beq_cont.17313:
	ori		x4, x0, 2	# 1979
	lw		x5, -20(x2)	# 1979
	beq		x5, x4, beq.17316	# 1979
	ori		x4, x0, 2	# 1980
	ori		x6, x0, 4	# 1980
	mul		x4, x4, x6	# 1980
	lw		x6, -16(x2)	# 1980
	add		x4, x6, x4	# 1980
	lw		x4, 0(x4)	# 1980
	lw		x7, -8(x2)	# 1960
	lw		x27, -12(x2)	# 1960
	sw		x4, -32(x2)	# 1960
	addi	x4, x7, 0
	sw		x1, -36(x2)	# 1960
	addi	x2, x2, -40	# 1960
	lw		x31, 0(x27)	# 1960
	jalr	x1, x31, 0	# 1960
	addi	x2, x2, 40	# 1960
	lw		x1, -36(x2)	# 1960
	ori		x7, x0, 118	# 1964
	lw		x4, -32(x2)	# 1964
	lw		x5, 0(x2)	# 1964
	lw		x6, -8(x2)	# 1964
	lw		x27, -4(x2)	# 1964
	sw		x1, -36(x2)	# 1964
	addi	x2, x2, -40	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 40	# 1964
	lw		x1, -36(x2)	# 1964
	jal		x0, beq_cont.17315	# 1979
beq.17316:
beq_cont.17315:
	ori		x4, x0, 3	# 1983
	lw		x5, -20(x2)	# 1983
	beq		x5, x4, beq.17318	# 1983
	ori		x4, x0, 3	# 1984
	ori		x6, x0, 4	# 1984
	mul		x4, x4, x6	# 1984
	lw		x6, -16(x2)	# 1984
	add		x4, x6, x4	# 1984
	lw		x4, 0(x4)	# 1984
	lw		x7, -8(x2)	# 1960
	lw		x27, -12(x2)	# 1960
	sw		x4, -36(x2)	# 1960
	addi	x4, x7, 0
	sw		x1, -40(x2)	# 1960
	addi	x2, x2, -44	# 1960
	lw		x31, 0(x27)	# 1960
	jalr	x1, x31, 0	# 1960
	addi	x2, x2, 44	# 1960
	lw		x1, -40(x2)	# 1960
	ori		x7, x0, 118	# 1964
	lw		x4, -36(x2)	# 1964
	lw		x5, 0(x2)	# 1964
	lw		x6, -8(x2)	# 1964
	lw		x27, -4(x2)	# 1964
	sw		x1, -40(x2)	# 1964
	addi	x2, x2, -44	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x1, x31, 0	# 1964
	addi	x2, x2, 44	# 1964
	lw		x1, -40(x2)	# 1964
	jal		x0, beq_cont.17317	# 1983
beq.17318:
beq_cont.17317:
	ori		x4, x0, 4	# 1987
	lw		x5, -20(x2)	# 1987
	beq		x5, x4, beq.17319	# 1987
	ori		x4, x0, 4	# 1988
	ori		x5, x0, 4	# 1988
	mul		x4, x4, x5	# 1988
	lw		x5, -16(x2)	# 1988
	add		x4, x5, x4	# 1988
	lw		x4, 0(x4)	# 1988
	lw		x5, -8(x2)	# 1960
	lw		x27, -12(x2)	# 1960
	sw		x4, -40(x2)	# 1960
	addi	x4, x5, 0
	sw		x1, -44(x2)	# 1960
	addi	x2, x2, -48	# 1960
	lw		x31, 0(x27)	# 1960
	jalr	x1, x31, 0	# 1960
	addi	x2, x2, 48	# 1960
	lw		x1, -44(x2)	# 1960
	ori		x7, x0, 118	# 1964
	lw		x4, -40(x2)	# 1964
	lw		x5, 0(x2)	# 1964
	lw		x6, -8(x2)	# 1964
	lw		x27, -4(x2)	# 1964
	lw		x31, 0(x27)	# 1964
	jalr	x0, x31, 0	# 1964
beq.17319:
	jalr	x0, x1, 0	# 1989
calc_diffuse_using_1point.2893:
	lw		x6, 12(x27)	# 598
	lw		x7, 8(x27)	# 598
	lw		x8, 4(x27)	# 598
	lw		x9, 20(x4)	# 598
	lw		x10, 28(x4)	# 628
	lw		x11, 4(x4)	# 569
	lw		x12, 16(x4)	# 591
	ori		x13, x0, 4	# 2002
	mul		x13, x5, x13	# 2002
	add		x9, x9, x13	# 2002
	lw		x9, 0(x9)	# 2002
	addi	x13, x0, 0	# 259
	addi	x14, x0, 0	# 259
	ori		x15, x0, 4	# 259
	mul		x14, x14, x15	# 259
	add		x14, x9, x14	# 259
	flw		f0, 0(x14)	# 259
	ori		x14, x0, 4	# 259
	mul		x13, x13, x14	# 259
	add		x13, x8, x13	# 259
	fsw		f0, 0(x13)	# 259
	ori		x13, x0, 1	# 260
	ori		x14, x0, 1	# 260
	ori		x15, x0, 4	# 260
	mul		x14, x14, x15	# 260
	add		x14, x9, x14	# 260
	flw		f0, 0(x14)	# 260
	ori		x14, x0, 4	# 260
	mul		x13, x13, x14	# 260
	add		x13, x8, x13	# 260
	fsw		f0, 0(x13)	# 260
	ori		x13, x0, 2	# 261
	ori		x14, x0, 2	# 261
	ori		x15, x0, 4	# 261
	mul		x14, x14, x15	# 261
	add		x9, x9, x14	# 261
	flw		f0, 0(x9)	# 261
	ori		x9, x0, 4	# 261
	mul		x9, x13, x9	# 261
	add		x9, x8, x9	# 261
	fsw		f0, 0(x9)	# 261
	lw		x4, 24(x4)	# 614
	addi	x9, x0, 0	# 616
	ori		x13, x0, 4	# 616
	mul		x9, x9, x13	# 616
	add		x4, x4, x9	# 616
	lw		x4, 0(x4)	# 616
	ori		x9, x0, 4	# 2005
	mul		x9, x5, x9	# 2005
	add		x9, x10, x9	# 2005
	lw		x9, 0(x9)	# 2005
	ori		x10, x0, 4	# 2006
	mul		x10, x5, x10	# 2006
	add		x10, x11, x10	# 2006
	lw		x10, 0(x10)	# 2006
	sw		x8, 0(x2)	# 2003
	sw		x7, -4(x2)	# 2003
	sw		x12, -8(x2)	# 2003
	sw		x5, -12(x2)	# 2003
	addi	x5, x9, 0
	addi	x27, x6, 0
	addi	x6, x10, 0
	sw		x1, -16(x2)	# 2003
	addi	x2, x2, -20	# 2003
	lw		x31, 0(x27)	# 2003
	jalr	x1, x31, 0	# 2003
	addi	x2, x2, 20	# 2003
	lw		x1, -16(x2)	# 2003
	ori		x4, x0, 4	# 2007
	lw		x5, -12(x2)	# 2007
	mul		x4, x5, x4	# 2007
	lw		x5, -8(x2)	# 2007
	add		x4, x5, x4	# 2007
	lw		x5, 0(x4)	# 2007
	lw		x4, -4(x2)	# 2007
	lw		x6, 0(x2)	# 2007
	jal		x0, vecaccumv.2586	# 2007
calc_diffuse_using_5points.2896:
	lw		x9, 8(x27)	# 2016
	lw		x10, 4(x27)	# 2016
	ori		x11, x0, 4	# 2016
	mul		x11, x4, x11	# 2016
	add		x5, x5, x11	# 2016
	lw		x5, 0(x5)	# 2016
	lw		x5, 20(x5)	# 598
	ori		x11, x0, 1	# 2017
	sub		x11, x4, x11	# 2017
	ori		x12, x0, 4	# 2017
	mul		x11, x11, x12	# 2017
	add		x11, x6, x11	# 2017
	lw		x11, 0(x11)	# 2017
	lw		x11, 20(x11)	# 598
	ori		x12, x0, 4	# 2018
	mul		x12, x4, x12	# 2018
	add		x12, x6, x12	# 2018
	lw		x12, 0(x12)	# 2018
	lw		x12, 20(x12)	# 598
	addi	x13, x4, 1	# 2019
	ori		x14, x0, 4	# 2019
	mul		x13, x13, x14	# 2019
	add		x13, x6, x13	# 2019
	lw		x13, 0(x13)	# 2019
	lw		x13, 20(x13)	# 598
	ori		x14, x0, 4	# 2020
	mul		x14, x4, x14	# 2020
	add		x7, x7, x14	# 2020
	lw		x7, 0(x7)	# 2020
	lw		x7, 20(x7)	# 598
	ori		x14, x0, 4	# 2022
	mul		x14, x8, x14	# 2022
	add		x5, x5, x14	# 2022
	lw		x5, 0(x5)	# 2022
	addi	x14, x0, 0	# 259
	addi	x15, x0, 0	# 259
	ori		x16, x0, 4	# 259
	mul		x15, x15, x16	# 259
	add		x15, x5, x15	# 259
	flw		f0, 0(x15)	# 259
	ori		x15, x0, 4	# 259
	mul		x14, x14, x15	# 259
	add		x14, x10, x14	# 259
	fsw		f0, 0(x14)	# 259
	ori		x14, x0, 1	# 260
	ori		x15, x0, 1	# 260
	ori		x16, x0, 4	# 260
	mul		x15, x15, x16	# 260
	add		x15, x5, x15	# 260
	flw		f0, 0(x15)	# 260
	ori		x15, x0, 4	# 260
	mul		x14, x14, x15	# 260
	add		x14, x10, x14	# 260
	fsw		f0, 0(x14)	# 260
	ori		x14, x0, 2	# 261
	ori		x15, x0, 2	# 261
	ori		x16, x0, 4	# 261
	mul		x15, x15, x16	# 261
	add		x5, x5, x15	# 261
	flw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 261
	mul		x5, x14, x5	# 261
	add		x5, x10, x5	# 261
	fsw		f0, 0(x5)	# 261
	ori		x5, x0, 4	# 2023
	mul		x5, x8, x5	# 2023
	add		x5, x11, x5	# 2023
	lw		x5, 0(x5)	# 2023
	sw		x9, 0(x2)	# 2023
	sw		x6, -4(x2)	# 2023
	sw		x4, -8(x2)	# 2023
	sw		x7, -12(x2)	# 2023
	sw		x13, -16(x2)	# 2023
	sw		x10, -20(x2)	# 2023
	sw		x12, -24(x2)	# 2023
	sw		x8, -28(x2)	# 2023
	addi	x4, x10, 0
	sw		x1, -32(x2)	# 2023
	addi	x2, x2, -36	# 2023
	jal		x1, vecadd.2580	# 2023
	addi	x2, x2, 36	# 2023
	lw		x1, -32(x2)	# 2023
	ori		x4, x0, 4	# 2024
	lw		x5, -28(x2)	# 2024
	mul		x4, x5, x4	# 2024
	lw		x6, -24(x2)	# 2024
	add		x4, x6, x4	# 2024
	lw		x4, 0(x4)	# 2024
	lw		x6, -20(x2)	# 2024
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 2024
	addi	x2, x2, -36	# 2024
	jal		x1, vecadd.2580	# 2024
	addi	x2, x2, 36	# 2024
	lw		x1, -32(x2)	# 2024
	ori		x4, x0, 4	# 2025
	lw		x5, -28(x2)	# 2025
	mul		x4, x5, x4	# 2025
	lw		x6, -16(x2)	# 2025
	add		x4, x6, x4	# 2025
	lw		x4, 0(x4)	# 2025
	lw		x6, -20(x2)	# 2025
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 2025
	addi	x2, x2, -36	# 2025
	jal		x1, vecadd.2580	# 2025
	addi	x2, x2, 36	# 2025
	lw		x1, -32(x2)	# 2025
	ori		x4, x0, 4	# 2026
	lw		x5, -28(x2)	# 2026
	mul		x4, x5, x4	# 2026
	lw		x6, -12(x2)	# 2026
	add		x4, x6, x4	# 2026
	lw		x4, 0(x4)	# 2026
	lw		x6, -20(x2)	# 2026
	addi	x5, x4, 0
	addi	x4, x6, 0
	sw		x1, -32(x2)	# 2026
	addi	x2, x2, -36	# 2026
	jal		x1, vecadd.2580	# 2026
	addi	x2, x2, 36	# 2026
	lw		x1, -32(x2)	# 2026
	ori		x4, x0, 4	# 2028
	lw		x5, -8(x2)	# 2028
	mul		x4, x5, x4	# 2028
	lw		x5, -4(x2)	# 2028
	add		x4, x5, x4	# 2028
	lw		x4, 0(x4)	# 2028
	lw		x4, 16(x4)	# 591
	ori		x5, x0, 4	# 2029
	lw		x6, -28(x2)	# 2029
	mul		x5, x6, x5	# 2029
	add		x4, x4, x5	# 2029
	lw		x5, 0(x4)	# 2029
	lw		x4, 0(x2)	# 2029
	lw		x6, -20(x2)	# 2029
	jal		x0, vecaccumv.2586	# 2029
do_without_neighbors.2902:
	lw		x6, 16(x27)	# 2035
	lw		x7, 12(x27)	# 2035
	lw		x8, 8(x27)	# 2035
	lw		x9, 4(x27)	# 2035
	ori		x10, x0, 4	# 2035
	ble		x5, x10, ble.17321	# 2035
	jalr	x0, x1, 0	# 2045
ble.17321:
	lw		x10, 8(x4)	# 577
	addi	x11, x0, 0	# 2038
	ori		x12, x0, 4	# 2038
	mul		x12, x5, x12	# 2038
	add		x10, x10, x12	# 2038
	lw		x10, 0(x10)	# 2038
	ble		x11, x10, ble.17323	# 2038
	jalr	x0, x1, 0	# 2044
ble.17323:
	lw		x10, 12(x4)	# 584
	ori		x11, x0, 4	# 2040
	mul		x11, x5, x11	# 2040
	add		x10, x10, x11	# 2040
	lw		x10, 0(x10)	# 2040
	addi	x11, x0, 0	# 2040
	sw		x27, 0(x2)	# 2040
	sw		x9, -4(x2)	# 2040
	sw		x4, -8(x2)	# 2040
	sw		x5, -12(x2)	# 2040
	beq		x10, x11, beq.17326	# 2040
	lw		x10, 20(x4)	# 598
	lw		x11, 28(x4)	# 628
	lw		x12, 4(x4)	# 569
	lw		x13, 16(x4)	# 591
	ori		x14, x0, 4	# 2002
	mul		x14, x5, x14	# 2002
	add		x10, x10, x14	# 2002
	lw		x10, 0(x10)	# 2002
	addi	x14, x0, 0	# 259
	addi	x15, x0, 0	# 259
	ori		x16, x0, 4	# 259
	mul		x15, x15, x16	# 259
	add		x15, x10, x15	# 259
	flw		f0, 0(x15)	# 259
	ori		x15, x0, 4	# 259
	mul		x14, x14, x15	# 259
	add		x14, x8, x14	# 259
	fsw		f0, 0(x14)	# 259
	ori		x14, x0, 1	# 260
	ori		x15, x0, 1	# 260
	ori		x16, x0, 4	# 260
	mul		x15, x15, x16	# 260
	add		x15, x10, x15	# 260
	flw		f0, 0(x15)	# 260
	ori		x15, x0, 4	# 260
	mul		x14, x14, x15	# 260
	add		x14, x8, x14	# 260
	fsw		f0, 0(x14)	# 260
	ori		x14, x0, 2	# 261
	ori		x15, x0, 2	# 261
	ori		x16, x0, 4	# 261
	mul		x15, x15, x16	# 261
	add		x10, x10, x15	# 261
	flw		f0, 0(x10)	# 261
	ori		x10, x0, 4	# 261
	mul		x10, x14, x10	# 261
	add		x10, x8, x10	# 261
	fsw		f0, 0(x10)	# 261
	lw		x10, 24(x4)	# 614
	addi	x14, x0, 0	# 616
	ori		x15, x0, 4	# 616
	mul		x14, x14, x15	# 616
	add		x10, x10, x14	# 616
	lw		x10, 0(x10)	# 616
	ori		x14, x0, 4	# 2005
	mul		x14, x5, x14	# 2005
	add		x11, x11, x14	# 2005
	lw		x11, 0(x11)	# 2005
	ori		x14, x0, 4	# 2006
	mul		x14, x5, x14	# 2006
	add		x12, x12, x14	# 2006
	lw		x12, 0(x12)	# 2006
	sw		x8, -16(x2)	# 2003
	sw		x7, -20(x2)	# 2003
	sw		x13, -24(x2)	# 2003
	addi	x5, x11, 0
	addi	x4, x10, 0
	addi	x27, x6, 0
	addi	x6, x12, 0
	sw		x1, -28(x2)	# 2003
	addi	x2, x2, -32	# 2003
	lw		x31, 0(x27)	# 2003
	jalr	x1, x31, 0	# 2003
	addi	x2, x2, 32	# 2003
	lw		x1, -28(x2)	# 2003
	ori		x4, x0, 4	# 2007
	lw		x5, -12(x2)	# 2007
	mul		x4, x5, x4	# 2007
	lw		x6, -24(x2)	# 2007
	add		x4, x6, x4	# 2007
	lw		x4, 0(x4)	# 2007
	lw		x6, -20(x2)	# 2007
	lw		x7, -16(x2)	# 2007
	addi	x5, x4, 0
	addi	x4, x6, 0
	addi	x6, x7, 0
	sw		x1, -28(x2)	# 2007
	addi	x2, x2, -32	# 2007
	jal		x1, vecaccumv.2586	# 2007
	addi	x2, x2, 32	# 2007
	lw		x1, -28(x2)	# 2007
	jal		x0, beq_cont.17325	# 2040
beq.17326:
beq_cont.17325:
	lw		x4, -12(x2)	# 2043
	addi	x5, x4, 1	# 2043
	ori		x4, x0, 4	# 2035
	ble		x5, x4, ble.17327	# 2035
	jalr	x0, x1, 0	# 2045
ble.17327:
	lw		x4, -8(x2)	# 577
	lw		x6, 8(x4)	# 577
	addi	x7, x0, 0	# 2038
	ori		x8, x0, 4	# 2038
	mul		x8, x5, x8	# 2038
	add		x6, x6, x8	# 2038
	lw		x6, 0(x6)	# 2038
	ble		x7, x6, ble.17329	# 2038
	jalr	x0, x1, 0	# 2044
ble.17329:
	lw		x6, 12(x4)	# 584
	ori		x7, x0, 4	# 2040
	mul		x7, x5, x7	# 2040
	add		x6, x6, x7	# 2040
	lw		x6, 0(x6)	# 2040
	addi	x7, x0, 0	# 2040
	sw		x5, -28(x2)	# 2040
	beq		x6, x7, beq.17332	# 2040
	lw		x27, -4(x2)	# 2041
	sw		x1, -32(x2)	# 2041
	addi	x2, x2, -36	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 36	# 2041
	lw		x1, -32(x2)	# 2041
	jal		x0, beq_cont.17331	# 2040
beq.17332:
beq_cont.17331:
	lw		x4, -28(x2)	# 2043
	addi	x5, x4, 1	# 2043
	lw		x4, -8(x2)	# 2043
	lw		x27, 0(x2)	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x0, x31, 0	# 2043
neighbors_are_available.2912:
	ori		x9, x0, 4	# 2069
	mul		x9, x4, x9	# 2069
	add		x9, x6, x9	# 2069
	lw		x9, 0(x9)	# 2069
	lw		x9, 8(x9)	# 577
	ori		x10, x0, 4	# 2063
	mul		x10, x8, x10	# 2063
	add		x9, x9, x10	# 2063
	lw		x9, 0(x9)	# 2063
	ori		x10, x0, 4	# 2071
	mul		x10, x4, x10	# 2071
	add		x5, x5, x10	# 2071
	lw		x5, 0(x5)	# 2071
	lw		x5, 8(x5)	# 577
	ori		x10, x0, 4	# 2063
	mul		x10, x8, x10	# 2063
	add		x5, x5, x10	# 2063
	lw		x5, 0(x5)	# 2063
	beq		x5, x9, beq.17333	# 2071
	addi	x4, x0, 0	# 2079
	jalr	x0, x1, 0	# 2079
beq.17333:
	ori		x5, x0, 4	# 2072
	mul		x5, x4, x5	# 2072
	add		x5, x7, x5	# 2072
	lw		x5, 0(x5)	# 2072
	lw		x5, 8(x5)	# 577
	ori		x7, x0, 4	# 2063
	mul		x7, x8, x7	# 2063
	add		x5, x5, x7	# 2063
	lw		x5, 0(x5)	# 2063
	beq		x5, x9, beq.17334	# 2072
	addi	x4, x0, 0	# 2078
	jalr	x0, x1, 0	# 2078
beq.17334:
	ori		x5, x0, 1	# 2073
	sub		x5, x4, x5	# 2073
	ori		x7, x0, 4	# 2073
	mul		x5, x5, x7	# 2073
	add		x5, x6, x5	# 2073
	lw		x5, 0(x5)	# 2073
	lw		x5, 8(x5)	# 577
	ori		x7, x0, 4	# 2063
	mul		x7, x8, x7	# 2063
	add		x5, x5, x7	# 2063
	lw		x5, 0(x5)	# 2063
	beq		x5, x9, beq.17335	# 2073
	addi	x4, x0, 0	# 2077
	jalr	x0, x1, 0	# 2077
beq.17335:
	addi	x4, x4, 1	# 2074
	ori		x5, x0, 4	# 2074
	mul		x4, x4, x5	# 2074
	add		x4, x6, x4	# 2074
	lw		x4, 0(x4)	# 2074
	lw		x4, 8(x4)	# 577
	ori		x5, x0, 4	# 2063
	mul		x5, x8, x5	# 2063
	add		x4, x4, x5	# 2063
	lw		x4, 0(x4)	# 2063
	beq		x4, x9, beq.17336	# 2074
	addi	x4, x0, 0	# 2076
	jalr	x0, x1, 0	# 2076
beq.17336:
	ori		x4, x0, 1	# 2075
	jalr	x0, x1, 0	# 2075
try_exploit_neighbors.2918:
	lw		x10, 12(x27)	# 2087
	lw		x11, 8(x27)	# 2087
	lw		x12, 4(x27)	# 2087
	ori		x13, x0, 4	# 2087
	mul		x13, x4, x13	# 2087
	add		x13, x7, x13	# 2087
	lw		x13, 0(x13)	# 2087
	ori		x14, x0, 4	# 2088
	ble		x9, x14, ble.17337	# 2088
	jalr	x0, x1, 0	# 2107
ble.17337:
	addi	x14, x0, 0	# 2091
	lw		x15, 8(x13)	# 577
	ori		x16, x0, 4	# 2063
	mul		x16, x9, x16	# 2063
	add		x15, x15, x16	# 2063
	lw		x15, 0(x15)	# 2063
	ble		x14, x15, ble.17339	# 2091
	jalr	x0, x1, 0	# 2106
ble.17339:
	sw		x5, 0(x2)	# 2093
	sw		x27, -4(x2)	# 2093
	sw		x8, -8(x2)	# 2093
	sw		x6, -12(x2)	# 2093
	sw		x11, -16(x2)	# 2093
	sw		x13, -20(x2)	# 2093
	sw		x10, -24(x2)	# 2093
	sw		x12, -28(x2)	# 2093
	sw		x9, -32(x2)	# 2093
	sw		x7, -36(x2)	# 2093
	sw		x4, -40(x2)	# 2093
	addi	x5, x6, 0
	addi	x6, x7, 0
	addi	x7, x8, 0
	addi	x8, x9, 0
	sw		x1, -44(x2)	# 2093
	addi	x2, x2, -48	# 2093
	jal		x1, neighbors_are_available.2912	# 2093
	addi	x2, x2, 48	# 2093
	lw		x1, -44(x2)	# 2093
	addi	x5, x0, 0	# 2093
	beq		x4, x5, beq.17341	# 2093
	lw		x4, -20(x2)	# 584
	lw		x4, 12(x4)	# 584
	ori		x5, x0, 4	# 2097
	lw		x8, -32(x2)	# 2097
	mul		x5, x8, x5	# 2097
	add		x4, x4, x5	# 2097
	lw		x4, 0(x4)	# 2097
	addi	x5, x0, 0	# 2097
	beq		x4, x5, beq.17343	# 2097
	lw		x4, -40(x2)	# 2098
	lw		x5, -12(x2)	# 2098
	lw		x6, -36(x2)	# 2098
	lw		x7, -8(x2)	# 2098
	lw		x27, -16(x2)	# 2098
	sw		x1, -44(x2)	# 2098
	addi	x2, x2, -48	# 2098
	lw		x31, 0(x27)	# 2098
	jalr	x1, x31, 0	# 2098
	addi	x2, x2, 48	# 2098
	lw		x1, -44(x2)	# 2098
	jal		x0, beq_cont.17342	# 2097
beq.17343:
beq_cont.17342:
	lw		x4, -32(x2)	# 2102
	addi	x9, x4, 1	# 2102
	lw		x4, -40(x2)	# 2102
	lw		x5, 0(x2)	# 2102
	lw		x6, -12(x2)	# 2102
	lw		x7, -36(x2)	# 2102
	lw		x8, -8(x2)	# 2102
	lw		x27, -4(x2)	# 2102
	lw		x31, 0(x27)	# 2102
	jalr	x0, x31, 0	# 2102
beq.17341:
	ori		x4, x0, 4	# 2105
	lw		x5, -40(x2)	# 2105
	mul		x4, x5, x4	# 2105
	lw		x5, -36(x2)	# 2105
	add		x4, x5, x4	# 2105
	lw		x4, 0(x4)	# 2105
	ori		x5, x0, 4	# 2035
	lw		x6, -32(x2)	# 2035
	ble		x6, x5, ble.17344	# 2035
	jalr	x0, x1, 0	# 2045
ble.17344:
	lw		x5, 8(x4)	# 577
	addi	x7, x0, 0	# 2038
	ori		x8, x0, 4	# 2038
	mul		x8, x6, x8	# 2038
	add		x5, x5, x8	# 2038
	lw		x5, 0(x5)	# 2038
	ble		x7, x5, ble.17346	# 2038
	jalr	x0, x1, 0	# 2044
ble.17346:
	lw		x5, 12(x4)	# 584
	ori		x7, x0, 4	# 2040
	mul		x7, x6, x7	# 2040
	add		x5, x5, x7	# 2040
	lw		x5, 0(x5)	# 2040
	addi	x7, x0, 0	# 2040
	sw		x4, -44(x2)	# 2040
	beq		x5, x7, beq.17349	# 2040
	lw		x27, -28(x2)	# 2041
	addi	x5, x6, 0
	sw		x1, -48(x2)	# 2041
	addi	x2, x2, -52	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 52	# 2041
	lw		x1, -48(x2)	# 2041
	jal		x0, beq_cont.17348	# 2040
beq.17349:
beq_cont.17348:
	lw		x4, -32(x2)	# 2043
	addi	x5, x4, 1	# 2043
	lw		x4, -44(x2)	# 2043
	lw		x27, -24(x2)	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x0, x31, 0	# 2043
write_ppm_header.2925:
	lw		x5, 4(x27)	# 2115
	ori		x6, x0, 80	# 2115
	sw		x5, 0(x2)	# 2115
	sw		x4, -4(x2)	# 2115
	addi	x4, x6, 0
	sw		x1, -8(x2)	# 2115
	addi	x2, x2, -12	# 2115
	jal		x1, min_caml_print_char	# 2115
	addi	x2, x2, 12	# 2115
	lw		x1, -8(x2)	# 2115
	lw		x4, -4(x2)	# 2116
	addi	x4, x4, 48	# 2116
	sw		x1, -8(x2)	# 2116
	addi	x2, x2, -12	# 2116
	jal		x1, min_caml_print_char	# 2116
	addi	x2, x2, 12	# 2116
	lw		x1, -8(x2)	# 2116
	ori		x4, x0, 10	# 2117
	sw		x1, -8(x2)	# 2117
	addi	x2, x2, -12	# 2117
	jal		x1, min_caml_print_char	# 2117
	addi	x2, x2, 12	# 2117
	lw		x1, -8(x2)	# 2117
	addi	x4, x0, 0	# 2118
	ori		x5, x0, 4	# 2118
	mul		x4, x4, x5	# 2118
	lw		x5, 0(x2)	# 2118
	add		x4, x5, x4	# 2118
	lw		x4, 0(x4)	# 2118
	sw		x1, -8(x2)	# 2118
	addi	x2, x2, -12	# 2118
	jal		x1, min_caml_print_int	# 2118
	addi	x2, x2, 12	# 2118
	lw		x1, -8(x2)	# 2118
	ori		x4, x0, 32	# 2119
	sw		x1, -8(x2)	# 2119
	addi	x2, x2, -12	# 2119
	jal		x1, min_caml_print_char	# 2119
	addi	x2, x2, 12	# 2119
	lw		x1, -8(x2)	# 2119
	ori		x4, x0, 1	# 2120
	ori		x5, x0, 4	# 2120
	mul		x4, x4, x5	# 2120
	lw		x5, 0(x2)	# 2120
	add		x4, x5, x4	# 2120
	lw		x4, 0(x4)	# 2120
	sw		x1, -8(x2)	# 2120
	addi	x2, x2, -12	# 2120
	jal		x1, min_caml_print_int	# 2120
	addi	x2, x2, 12	# 2120
	lw		x1, -8(x2)	# 2120
	ori		x4, x0, 32	# 2121
	sw		x1, -8(x2)	# 2121
	addi	x2, x2, -12	# 2121
	jal		x1, min_caml_print_char	# 2121
	addi	x2, x2, 12	# 2121
	lw		x1, -8(x2)	# 2121
	ori		x4, x0, 255	# 2122
	sw		x1, -8(x2)	# 2122
	addi	x2, x2, -12	# 2122
	jal		x1, min_caml_print_int	# 2122
	addi	x2, x2, 12	# 2122
	lw		x1, -8(x2)	# 2122
	ori		x4, x0, 10	# 2123
	jal		x0, min_caml_print_char	# 2123
write_rgb.2931:
	lw		x5, 4(x27)	# 2140
	ori		x6, x0, 3	# 2140
	beq		x4, x6, beq.17350	# 2140
	addi	x4, x0, 0	# 2148
	ori		x6, x0, 4	# 2148
	mul		x4, x4, x6	# 2148
	add		x4, x5, x4	# 2148
	flw		f0, 0(x4)	# 2148
	sw		x5, 0(x2)	# 2134
	sw		x1, -4(x2)	# 2134
	addi	x2, x2, -8	# 2134
	jal		x1, int_of_float.2487	# 2134
	addi	x2, x2, 8	# 2134
	lw		x1, -4(x2)	# 2134
	ori		x5, x0, 255	# 2135
	ble		x4, x5, ble.17352	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.17351	# 2135
ble.17352:
	addi	x5, x0, 0	# 2135
	ble		x5, x4, ble.17354	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.17353	# 2135
ble.17354:
ble_cont.17353:
ble_cont.17351:
	sw		x1, -4(x2)	# 2136
	addi	x2, x2, -8	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 8	# 2136
	lw		x1, -4(x2)	# 2136
	ori		x4, x0, 1	# 2149
	ori		x5, x0, 4	# 2149
	mul		x4, x4, x5	# 2149
	lw		x5, 0(x2)	# 2149
	add		x4, x5, x4	# 2149
	flw		f0, 0(x4)	# 2149
	sw		x1, -4(x2)	# 2134
	addi	x2, x2, -8	# 2134
	jal		x1, int_of_float.2487	# 2134
	addi	x2, x2, 8	# 2134
	lw		x1, -4(x2)	# 2134
	ori		x5, x0, 255	# 2135
	ble		x4, x5, ble.17356	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.17355	# 2135
ble.17356:
	addi	x5, x0, 0	# 2135
	ble		x5, x4, ble.17358	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.17357	# 2135
ble.17358:
ble_cont.17357:
ble_cont.17355:
	sw		x1, -4(x2)	# 2136
	addi	x2, x2, -8	# 2136
	jal		x1, min_caml_print_char	# 2136
	addi	x2, x2, 8	# 2136
	lw		x1, -4(x2)	# 2136
	ori		x4, x0, 2	# 2150
	ori		x5, x0, 4	# 2150
	mul		x4, x4, x5	# 2150
	lw		x5, 0(x2)	# 2150
	add		x4, x5, x4	# 2150
	flw		f0, 0(x4)	# 2150
	sw		x1, -4(x2)	# 2134
	addi	x2, x2, -8	# 2134
	jal		x1, int_of_float.2487	# 2134
	addi	x2, x2, 8	# 2134
	lw		x1, -4(x2)	# 2134
	ori		x5, x0, 255	# 2135
	ble		x4, x5, ble.17360	# 2135
	ori		x4, x0, 255	# 2135
	jal		x0, ble_cont.17359	# 2135
ble.17360:
	addi	x5, x0, 0	# 2135
	ble		x5, x4, ble.17362	# 2135
	addi	x4, x0, 0	# 2135
	jal		x0, ble_cont.17361	# 2135
ble.17362:
ble_cont.17361:
ble_cont.17359:
	jal		x0, min_caml_print_char	# 2136
beq.17350:
	addi	x4, x0, 0	# 2141
	ori		x6, x0, 4	# 2141
	mul		x4, x4, x6	# 2141
	add		x4, x5, x4	# 2141
	flw		f0, 0(x4)	# 2141
	sw		x5, 0(x2)	# 2128
	sw		x1, -4(x2)	# 2128
	addi	x2, x2, -8	# 2128
	jal		x1, int_of_float.2487	# 2128
	addi	x2, x2, 8	# 2128
	lw		x1, -4(x2)	# 2128
	ori		x5, x0, 255	# 2129
	ble		x4, x5, ble.17364	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.17363	# 2129
ble.17364:
	addi	x5, x0, 0	# 2129
	ble		x5, x4, ble.17366	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.17365	# 2129
ble.17366:
ble_cont.17365:
ble_cont.17363:
	sw		x1, -4(x2)	# 2130
	addi	x2, x2, -8	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 8	# 2130
	lw		x1, -4(x2)	# 2130
	ori		x4, x0, 32	# 2142
	sw		x1, -4(x2)	# 2142
	addi	x2, x2, -8	# 2142
	jal		x1, min_caml_print_char	# 2142
	addi	x2, x2, 8	# 2142
	lw		x1, -4(x2)	# 2142
	ori		x4, x0, 1	# 2143
	ori		x5, x0, 4	# 2143
	mul		x4, x4, x5	# 2143
	lw		x5, 0(x2)	# 2143
	add		x4, x5, x4	# 2143
	flw		f0, 0(x4)	# 2143
	sw		x1, -4(x2)	# 2128
	addi	x2, x2, -8	# 2128
	jal		x1, int_of_float.2487	# 2128
	addi	x2, x2, 8	# 2128
	lw		x1, -4(x2)	# 2128
	ori		x5, x0, 255	# 2129
	ble		x4, x5, ble.17368	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.17367	# 2129
ble.17368:
	addi	x5, x0, 0	# 2129
	ble		x5, x4, ble.17370	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.17369	# 2129
ble.17370:
ble_cont.17369:
ble_cont.17367:
	sw		x1, -4(x2)	# 2130
	addi	x2, x2, -8	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 8	# 2130
	lw		x1, -4(x2)	# 2130
	ori		x4, x0, 32	# 2144
	sw		x1, -4(x2)	# 2144
	addi	x2, x2, -8	# 2144
	jal		x1, min_caml_print_char	# 2144
	addi	x2, x2, 8	# 2144
	lw		x1, -4(x2)	# 2144
	ori		x4, x0, 2	# 2145
	ori		x5, x0, 4	# 2145
	mul		x4, x4, x5	# 2145
	lw		x5, 0(x2)	# 2145
	add		x4, x5, x4	# 2145
	flw		f0, 0(x4)	# 2145
	sw		x1, -4(x2)	# 2128
	addi	x2, x2, -8	# 2128
	jal		x1, int_of_float.2487	# 2128
	addi	x2, x2, 8	# 2128
	lw		x1, -4(x2)	# 2128
	ori		x5, x0, 255	# 2129
	ble		x4, x5, ble.17372	# 2129
	ori		x4, x0, 255	# 2129
	jal		x0, ble_cont.17371	# 2129
ble.17372:
	addi	x5, x0, 0	# 2129
	ble		x5, x4, ble.17374	# 2129
	addi	x4, x0, 0	# 2129
	jal		x0, ble_cont.17373	# 2129
ble.17374:
ble_cont.17373:
ble_cont.17371:
	sw		x1, -4(x2)	# 2130
	addi	x2, x2, -8	# 2130
	jal		x1, min_caml_print_int	# 2130
	addi	x2, x2, 8	# 2130
	lw		x1, -4(x2)	# 2130
	ori		x4, x0, 10	# 2146
	jal		x0, min_caml_print_char	# 2146
pretrace_diffuse_rays.2933:
	lw		x6, 16(x27)	# 2163
	lw		x7, 12(x27)	# 2163
	lw		x8, 8(x27)	# 2163
	lw		x9, 4(x27)	# 2163
	ori		x10, x0, 4	# 2163
	ble		x5, x10, ble.17375	# 2163
	jalr	x0, x1, 0	# 2187
ble.17375:
	lw		x10, 8(x4)	# 577
	ori		x11, x0, 4	# 2063
	mul		x11, x5, x11	# 2063
	add		x10, x10, x11	# 2063
	lw		x10, 0(x10)	# 2063
	addi	x11, x0, 0	# 2167
	ble		x11, x10, ble.17377	# 2167
	jalr	x0, x1, 0	# 2186
ble.17377:
	lw		x10, 12(x4)	# 584
	ori		x11, x0, 4	# 2170
	mul		x11, x5, x11	# 2170
	add		x10, x10, x11	# 2170
	lw		x10, 0(x10)	# 2170
	addi	x11, x0, 0	# 2170
	sw		x27, 0(x2)	# 2170
	sw		x5, -4(x2)	# 2170
	beq		x10, x11, beq.17380	# 2170
	lw		x10, 24(x4)	# 614
	addi	x11, x0, 0	# 616
	ori		x12, x0, 4	# 616
	mul		x11, x11, x12	# 616
	add		x10, x10, x11	# 616
	lw		x10, 0(x10)	# 616
	lui		x11, %hi(l.10373)	# 254
	ori		x11, x0, %lo(l.10373)	# 254
	flw		f0, 0(x11)	# 254
	addi	x11, x0, 0	# 247
	ori		x12, x0, 4	# 247
	mul		x11, x11, x12	# 247
	add		x11, x9, x11	# 247
	fsw		f0, 0(x11)	# 247
	ori		x11, x0, 1	# 248
	ori		x12, x0, 4	# 248
	mul		x11, x11, x12	# 248
	add		x11, x9, x11	# 248
	fsw		f0, 0(x11)	# 248
	ori		x11, x0, 2	# 249
	ori		x12, x0, 4	# 249
	mul		x11, x11, x12	# 249
	add		x11, x9, x11	# 249
	fsw		f0, 0(x11)	# 249
	lw		x11, 28(x4)	# 628
	lw		x12, 4(x4)	# 569
	ori		x13, x0, 4	# 2179
	mul		x10, x10, x13	# 2179
	add		x8, x8, x10	# 2179
	lw		x8, 0(x8)	# 2179
	ori		x10, x0, 4	# 2180
	mul		x10, x5, x10	# 2180
	add		x10, x11, x10	# 2180
	lw		x10, 0(x10)	# 2180
	ori		x11, x0, 4	# 2181
	mul		x11, x5, x11	# 2181
	add		x11, x12, x11	# 2181
	lw		x11, 0(x11)	# 2181
	sw		x9, -8(x2)	# 1960
	sw		x4, -12(x2)	# 1960
	sw		x11, -16(x2)	# 1960
	sw		x10, -20(x2)	# 1960
	sw		x8, -24(x2)	# 1960
	sw		x7, -28(x2)	# 1960
	addi	x4, x11, 0
	addi	x27, x6, 0
	sw		x1, -32(x2)	# 1960
	addi	x2, x2, -36	# 1960
	lw		x31, 0(x27)	# 1960
	jalr	x1, x31, 0	# 1960
	addi	x2, x2, 36	# 1960
	lw		x1, -32(x2)	# 1960
	ori		x7, x0, 118	# 1964
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
	ori		x6, x0, 4	# 2183
	lw		x7, -4(x2)	# 2183
	mul		x6, x7, x6	# 2183
	add		x5, x5, x6	# 2183
	lw		x5, 0(x5)	# 2183
	addi	x6, x0, 0	# 259
	addi	x8, x0, 0	# 259
	ori		x9, x0, 4	# 259
	mul		x8, x8, x9	# 259
	lw		x9, -8(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 259
	mul		x6, x6, x8	# 259
	add		x6, x5, x6	# 259
	fsw		f0, 0(x6)	# 259
	ori		x6, x0, 1	# 260
	ori		x8, x0, 1	# 260
	ori		x10, x0, 4	# 260
	mul		x8, x8, x10	# 260
	add		x8, x9, x8	# 260
	flw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 260
	mul		x6, x6, x8	# 260
	add		x6, x5, x6	# 260
	fsw		f0, 0(x6)	# 260
	ori		x6, x0, 2	# 261
	ori		x8, x0, 2	# 261
	ori		x10, x0, 4	# 261
	mul		x8, x8, x10	# 261
	add		x8, x9, x8	# 261
	flw		f0, 0(x8)	# 261
	ori		x8, x0, 4	# 261
	mul		x6, x6, x8	# 261
	add		x5, x5, x6	# 261
	fsw		f0, 0(x5)	# 261
	jal		x0, beq_cont.17379	# 2170
beq.17380:
beq_cont.17379:
	lw		x5, -4(x2)	# 2185
	addi	x5, x5, 1	# 2185
	lw		x27, 0(x2)	# 2185
	lw		x31, 0(x27)	# 2185
	jalr	x0, x31, 0	# 2185
pretrace_pixels.2936:
	lw		x7, 36(x27)	# 2193
	lw		x8, 32(x27)	# 2193
	lw		x9, 28(x27)	# 2193
	lw		x10, 24(x27)	# 2193
	lw		x11, 20(x27)	# 2193
	lw		x12, 16(x27)	# 2193
	lw		x13, 12(x27)	# 2193
	lw		x14, 8(x27)	# 2193
	lw		x15, 4(x27)	# 2193
	addi	x16, x0, 0	# 2193
	ble		x16, x5, ble.17381	# 2193
	jalr	x0, x1, 0	# 2213
ble.17381:
	addi	x16, x0, 0	# 2195
	ori		x17, x0, 4	# 2195
	mul		x16, x16, x17	# 2195
	add		x11, x11, x16	# 2195
	flw		f3, 0(x11)	# 2195
	addi	x11, x0, 0	# 2195
	ori		x16, x0, 4	# 2195
	mul		x11, x11, x16	# 2195
	add		x11, x15, x11	# 2195
	lw		x11, 0(x11)	# 2195
	sub		x11, x5, x11	# 2195
	addi	x15, x0, 0	# 14
	sw		x27, 0(x2)	# 14
	sw		x14, -4(x2)	# 14
	sw		x6, -8(x2)	# 14
	sw		x8, -12(x2)	# 14
	sw		x4, -16(x2)	# 14
	sw		x5, -20(x2)	# 14
	sw		x9, -24(x2)	# 14
	sw		x7, -28(x2)	# 14
	sw		x12, -32(x2)	# 14
	fsw		f2, -40(x2)	# 14
	fsw		f1, -48(x2)	# 14
	sw		x13, -56(x2)	# 14
	fsw		f0, -64(x2)	# 14
	sw		x10, -72(x2)	# 14
	fsw		f3, -80(x2)	# 14
	ble		x15, x11, ble.17387	# 14
	sub		x11, x0, x11	# 16
	addi	x4, x11, 0
	sw		x1, -88(x2)	# 16
	addi	x2, x2, -92	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 92	# 16
	lw		x1, -88(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.17386	# 14
ble.17387:
	ori		x15, x0, 1	# 15
	ble		x15, x11, ble.17389	# 15
	lui		x11, %hi(l.10373)	# 15
	ori		x11, x0, %lo(l.10373)	# 15
	flw		f0, 0(x11)	# 15
	jal		x0, ble_cont.17388	# 15
ble.17389:
	ori		x15, x0, 1	# 15
	sub		x11, x11, x15	# 15
	addi	x4, x11, 0
	sw		x1, -88(x2)	# 15
	addi	x2, x2, -92	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 92	# 15
	lw		x1, -88(x2)	# 15
	lui		x4, %hi(l.10376)	# 15
	ori		x4, x0, %lo(l.10376)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.17388:
ble_cont.17386:
	flw		f1, -80(x2)	# 2195
	fmul	f0, f1, f0	# 2195
	addi	x4, x0, 0	# 2196
	addi	x5, x0, 0	# 2196
	ori		x6, x0, 4	# 2196
	mul		x5, x5, x6	# 2196
	lw		x6, -72(x2)	# 2196
	add		x5, x6, x5	# 2196
	flw		f1, 0(x5)	# 2196
	fmul	f1, f0, f1	# 2196
	flw		f2, -64(x2)	# 2196
	fadd	f1, f1, f2	# 2196
	ori		x5, x0, 4	# 2196
	mul		x4, x4, x5	# 2196
	lw		x5, -56(x2)	# 2196
	add		x4, x5, x4	# 2196
	fsw		f1, 0(x4)	# 2196
	ori		x4, x0, 1	# 2197
	ori		x7, x0, 1	# 2197
	ori		x8, x0, 4	# 2197
	mul		x7, x7, x8	# 2197
	add		x7, x6, x7	# 2197
	flw		f1, 0(x7)	# 2197
	fmul	f1, f0, f1	# 2197
	flw		f3, -48(x2)	# 2197
	fadd	f1, f1, f3	# 2197
	ori		x7, x0, 4	# 2197
	mul		x4, x4, x7	# 2197
	add		x4, x5, x4	# 2197
	fsw		f1, 0(x4)	# 2197
	ori		x4, x0, 2	# 2198
	ori		x7, x0, 2	# 2198
	ori		x8, x0, 4	# 2198
	mul		x7, x7, x8	# 2198
	add		x6, x6, x7	# 2198
	flw		f1, 0(x6)	# 2198
	fmul	f0, f0, f1	# 2198
	flw		f1, -40(x2)	# 2198
	fadd	f0, f0, f1	# 2198
	ori		x6, x0, 4	# 2198
	mul		x4, x4, x6	# 2198
	add		x4, x5, x4	# 2198
	fsw		f0, 0(x4)	# 2198
	addi	x4, x0, 0	# 2199
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -88(x2)	# 2199
	addi	x2, x2, -92	# 2199
	jal		x1, vecunit_sgn.2565	# 2199
	addi	x2, x2, 92	# 2199
	lw		x1, -88(x2)	# 2199
	lui		x4, %hi(l.10373)	# 254
	ori		x4, x0, %lo(l.10373)	# 254
	flw		f0, 0(x4)	# 254
	addi	x4, x0, 0	# 247
	ori		x5, x0, 4	# 247
	mul		x4, x4, x5	# 247
	lw		x5, -32(x2)	# 247
	add		x4, x5, x4	# 247
	fsw		f0, 0(x4)	# 247
	ori		x4, x0, 1	# 248
	ori		x6, x0, 4	# 248
	mul		x4, x4, x6	# 248
	add		x4, x5, x4	# 248
	fsw		f0, 0(x4)	# 248
	ori		x4, x0, 2	# 249
	ori		x6, x0, 4	# 249
	mul		x4, x4, x6	# 249
	add		x4, x5, x4	# 249
	fsw		f0, 0(x4)	# 249
	addi	x4, x0, 0	# 259
	addi	x6, x0, 0	# 259
	ori		x7, x0, 4	# 259
	mul		x6, x6, x7	# 259
	lw		x7, -28(x2)	# 259
	add		x6, x7, x6	# 259
	flw		f0, 0(x6)	# 259
	ori		x6, x0, 4	# 259
	mul		x4, x4, x6	# 259
	lw		x6, -24(x2)	# 259
	add		x4, x6, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 1	# 260
	ori		x8, x0, 1	# 260
	ori		x9, x0, 4	# 260
	mul		x8, x8, x9	# 260
	add		x8, x7, x8	# 260
	flw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 260
	mul		x4, x4, x8	# 260
	add		x4, x6, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 2	# 261
	ori		x8, x0, 2	# 261
	ori		x9, x0, 4	# 261
	mul		x8, x8, x9	# 261
	add		x7, x7, x8	# 261
	flw		f0, 0(x7)	# 261
	ori		x7, x0, 4	# 261
	mul		x4, x4, x7	# 261
	add		x4, x6, x4	# 261
	fsw		f0, 0(x4)	# 261
	addi	x4, x0, 0	# 2204
	lui		x6, %hi(l.10376)	# 2204
	ori		x6, x0, %lo(l.10376)	# 2204
	flw		f0, 0(x6)	# 2204
	ori		x6, x0, 4	# 2204
	lw		x7, -20(x2)	# 2204
	mul		x6, x7, x6	# 2204
	lw		x8, -16(x2)	# 2204
	add		x6, x8, x6	# 2204
	lw		x6, 0(x6)	# 2204
	lui		x9, %hi(l.10373)	# 2204
	ori		x9, x0, %lo(l.10373)	# 2204
	flw		f1, 0(x9)	# 2204
	lw		x9, -56(x2)	# 2204
	lw		x27, -12(x2)	# 2204
	addi	x5, x9, 0
	sw		x1, -88(x2)	# 2204
	addi	x2, x2, -92	# 2204
	lw		x31, 0(x27)	# 2204
	jalr	x1, x31, 0	# 2204
	addi	x2, x2, 92	# 2204
	lw		x1, -88(x2)	# 2204
	ori		x4, x0, 4	# 2205
	lw		x5, -20(x2)	# 2205
	mul		x4, x5, x4	# 2205
	lw		x6, -16(x2)	# 2205
	add		x4, x6, x4	# 2205
	lw		x4, 0(x4)	# 2205
	lw		x4, 0(x4)	# 562
	addi	x7, x0, 0	# 259
	addi	x8, x0, 0	# 259
	ori		x9, x0, 4	# 259
	mul		x8, x8, x9	# 259
	lw		x9, -32(x2)	# 259
	add		x8, x9, x8	# 259
	flw		f0, 0(x8)	# 259
	ori		x8, x0, 4	# 259
	mul		x7, x7, x8	# 259
	add		x7, x4, x7	# 259
	fsw		f0, 0(x7)	# 259
	ori		x7, x0, 1	# 260
	ori		x8, x0, 1	# 260
	ori		x10, x0, 4	# 260
	mul		x8, x8, x10	# 260
	add		x8, x9, x8	# 260
	flw		f0, 0(x8)	# 260
	ori		x8, x0, 4	# 260
	mul		x7, x7, x8	# 260
	add		x7, x4, x7	# 260
	fsw		f0, 0(x7)	# 260
	ori		x7, x0, 2	# 261
	ori		x8, x0, 2	# 261
	ori		x10, x0, 4	# 261
	mul		x8, x8, x10	# 261
	add		x8, x9, x8	# 261
	flw		f0, 0(x8)	# 261
	ori		x8, x0, 4	# 261
	mul		x7, x7, x8	# 261
	add		x4, x4, x7	# 261
	fsw		f0, 0(x4)	# 261
	ori		x4, x0, 4	# 2206
	mul		x4, x5, x4	# 2206
	add		x4, x6, x4	# 2206
	lw		x4, 0(x4)	# 2206
	lw		x4, 24(x4)	# 621
	addi	x7, x0, 0	# 623
	ori		x8, x0, 4	# 623
	mul		x7, x7, x8	# 623
	add		x4, x4, x7	# 623
	lw		x7, -8(x2)	# 623
	sw		x7, 0(x4)	# 623
	ori		x4, x0, 4	# 2209
	mul		x4, x5, x4	# 2209
	add		x4, x6, x4	# 2209
	lw		x4, 0(x4)	# 2209
	addi	x8, x0, 0	# 2209
	lw		x27, -4(x2)	# 2209
	addi	x5, x8, 0
	sw		x1, -88(x2)	# 2209
	addi	x2, x2, -92	# 2209
	lw		x31, 0(x27)	# 2209
	jalr	x1, x31, 0	# 2209
	addi	x2, x2, 92	# 2209
	lw		x1, -88(x2)	# 2209
	ori		x4, x0, 1	# 2211
	lw		x5, -20(x2)	# 2211
	sub		x5, x5, x4	# 2211
	lw		x4, -8(x2)	# 224
	addi	x4, x4, 1	# 224
	ori		x6, x0, 5	# 225
	ble		x6, x4, ble.17391	# 225
	addi	x6, x4, 0	# 225
	jal		x0, ble_cont.17390	# 225
ble.17391:
	ori		x6, x0, 5	# 225
	sub		x6, x4, x6	# 225
ble_cont.17390:
	flw		f0, -64(x2)	# 2211
	flw		f1, -48(x2)	# 2211
	flw		f2, -40(x2)	# 2211
	lw		x4, -16(x2)	# 2211
	lw		x27, 0(x2)	# 2211
	lw		x31, 0(x27)	# 2211
	jalr	x0, x31, 0	# 2211
pretrace_line.2943:
	lw		x7, 24(x27)	# 2218
	lw		x8, 20(x27)	# 2218
	lw		x9, 16(x27)	# 2218
	lw		x10, 12(x27)	# 2218
	lw		x11, 8(x27)	# 2218
	lw		x12, 4(x27)	# 2218
	addi	x13, x0, 0	# 2218
	ori		x14, x0, 4	# 2218
	mul		x13, x13, x14	# 2218
	add		x9, x9, x13	# 2218
	flw		f0, 0(x9)	# 2218
	ori		x9, x0, 1	# 2218
	ori		x13, x0, 4	# 2218
	mul		x9, x9, x13	# 2218
	add		x9, x12, x9	# 2218
	lw		x9, 0(x9)	# 2218
	sub		x5, x5, x9	# 2218
	addi	x9, x0, 0	# 14
	sw		x6, 0(x2)	# 14
	sw		x4, -4(x2)	# 14
	sw		x10, -8(x2)	# 14
	sw		x11, -12(x2)	# 14
	sw		x7, -16(x2)	# 14
	sw		x8, -20(x2)	# 14
	fsw		f0, -24(x2)	# 14
	ble		x9, x5, ble.17393	# 14
	sub		x5, x0, x5	# 16
	addi	x4, x5, 0
	sw		x1, -32(x2)	# 16
	addi	x2, x2, -36	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 36	# 16
	lw		x1, -32(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.17392	# 14
ble.17393:
	ori		x9, x0, 1	# 15
	ble		x9, x5, ble.17395	# 15
	lui		x5, %hi(l.10373)	# 15
	ori		x5, x0, %lo(l.10373)	# 15
	flw		f0, 0(x5)	# 15
	jal		x0, ble_cont.17394	# 15
ble.17395:
	ori		x9, x0, 1	# 15
	sub		x5, x5, x9	# 15
	addi	x4, x5, 0
	sw		x1, -32(x2)	# 15
	addi	x2, x2, -36	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 36	# 15
	lw		x1, -32(x2)	# 15
	lui		x4, %hi(l.10376)	# 15
	ori		x4, x0, %lo(l.10376)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.17394:
ble_cont.17392:
	flw		f1, -24(x2)	# 2218
	fmul	f0, f1, f0	# 2218
	addi	x4, x0, 0	# 2221
	ori		x5, x0, 4	# 2221
	mul		x4, x4, x5	# 2221
	lw		x5, -20(x2)	# 2221
	add		x4, x5, x4	# 2221
	flw		f1, 0(x4)	# 2221
	fmul	f1, f0, f1	# 2221
	addi	x4, x0, 0	# 2221
	ori		x6, x0, 4	# 2221
	mul		x4, x4, x6	# 2221
	lw		x6, -16(x2)	# 2221
	add		x4, x6, x4	# 2221
	flw		f2, 0(x4)	# 2221
	fadd	f1, f1, f2	# 2221
	ori		x4, x0, 1	# 2222
	ori		x7, x0, 4	# 2222
	mul		x4, x4, x7	# 2222
	add		x4, x5, x4	# 2222
	flw		f2, 0(x4)	# 2222
	fmul	f2, f0, f2	# 2222
	ori		x4, x0, 1	# 2222
	ori		x7, x0, 4	# 2222
	mul		x4, x4, x7	# 2222
	add		x4, x6, x4	# 2222
	flw		f3, 0(x4)	# 2222
	fadd	f2, f2, f3	# 2222
	ori		x4, x0, 2	# 2223
	ori		x7, x0, 4	# 2223
	mul		x4, x4, x7	# 2223
	add		x4, x5, x4	# 2223
	flw		f3, 0(x4)	# 2223
	fmul	f0, f0, f3	# 2223
	ori		x4, x0, 2	# 2223
	ori		x5, x0, 4	# 2223
	mul		x4, x4, x5	# 2223
	add		x4, x6, x4	# 2223
	flw		f3, 0(x4)	# 2223
	fadd	f0, f0, f3	# 2223
	addi	x4, x0, 0	# 2224
	ori		x5, x0, 4	# 2224
	mul		x4, x4, x5	# 2224
	lw		x5, -12(x2)	# 2224
	add		x4, x5, x4	# 2224
	lw		x4, 0(x4)	# 2224
	ori		x5, x0, 1	# 2224
	sub		x5, x4, x5	# 2224
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
	lw		x10, 24(x27)	# 2234
	lw		x11, 20(x27)	# 2234
	lw		x12, 16(x27)	# 2234
	lw		x13, 12(x27)	# 2234
	lw		x14, 8(x27)	# 2234
	lw		x15, 4(x27)	# 2234
	addi	x16, x0, 0	# 2234
	ori		x17, x0, 4	# 2234
	mul		x16, x16, x17	# 2234
	add		x16, x13, x16	# 2234
	lw		x16, 0(x16)	# 2234
	ble		x16, x4, ble.17396	# 2234
	ori		x16, x0, 4	# 2237
	mul		x16, x4, x16	# 2237
	add		x16, x7, x16	# 2237
	lw		x16, 0(x16)	# 2237
	lw		x16, 0(x16)	# 562
	addi	x17, x0, 0	# 259
	addi	x18, x0, 0	# 259
	ori		x19, x0, 4	# 259
	mul		x18, x18, x19	# 259
	add		x18, x16, x18	# 259
	flw		f0, 0(x18)	# 259
	ori		x18, x0, 4	# 259
	mul		x17, x17, x18	# 259
	add		x17, x12, x17	# 259
	fsw		f0, 0(x17)	# 259
	ori		x17, x0, 1	# 260
	ori		x18, x0, 1	# 260
	ori		x19, x0, 4	# 260
	mul		x18, x18, x19	# 260
	add		x18, x16, x18	# 260
	flw		f0, 0(x18)	# 260
	ori		x18, x0, 4	# 260
	mul		x17, x17, x18	# 260
	add		x17, x12, x17	# 260
	fsw		f0, 0(x17)	# 260
	ori		x17, x0, 2	# 261
	ori		x18, x0, 2	# 261
	ori		x19, x0, 4	# 261
	mul		x18, x18, x19	# 261
	add		x16, x16, x18	# 261
	flw		f0, 0(x16)	# 261
	ori		x16, x0, 4	# 261
	mul		x16, x17, x16	# 261
	add		x12, x12, x16	# 261
	fsw		f0, 0(x12)	# 261
	ori		x12, x0, 1	# 2050
	ori		x16, x0, 4	# 2050
	mul		x12, x12, x16	# 2050
	add		x12, x13, x12	# 2050
	lw		x12, 0(x12)	# 2050
	addi	x16, x5, 1	# 2050
	ble		x12, x16, ble.17398	# 2050
	addi	x12, x0, 0	# 2051
	ble		x5, x12, ble.17400	# 2051
	addi	x12, x0, 0	# 2052
	ori		x16, x0, 4	# 2052
	mul		x12, x12, x16	# 2052
	add		x12, x13, x12	# 2052
	lw		x12, 0(x12)	# 2052
	addi	x13, x4, 1	# 2052
	ble		x12, x13, ble.17402	# 2052
	addi	x12, x0, 0	# 2053
	ble		x4, x12, ble.17404	# 2053
	ori		x12, x0, 1	# 2054
	jal		x0, ble_cont.17403	# 2053
ble.17404:
	addi	x12, x0, 0	# 2055
ble_cont.17403:
	jal		x0, ble_cont.17401	# 2052
ble.17402:
	addi	x12, x0, 0	# 2056
ble_cont.17401:
	jal		x0, ble_cont.17399	# 2051
ble.17400:
	addi	x12, x0, 0	# 2057
ble_cont.17399:
	jal		x0, ble_cont.17397	# 2050
ble.17398:
	addi	x12, x0, 0	# 2058
ble_cont.17397:
	addi	x13, x0, 0	# 2240
	sw		x8, 0(x2)	# 2240
	sw		x7, -4(x2)	# 2240
	sw		x6, -8(x2)	# 2240
	sw		x5, -12(x2)	# 2240
	sw		x27, -16(x2)	# 2240
	sw		x4, -20(x2)	# 2240
	sw		x9, -24(x2)	# 2240
	sw		x10, -28(x2)	# 2240
	beq		x12, x13, beq.17406	# 2240
	addi	x12, x0, 0	# 2241
	addi	x9, x12, 0
	addi	x27, x11, 0
	sw		x1, -32(x2)	# 2241
	addi	x2, x2, -36	# 2241
	lw		x31, 0(x27)	# 2241
	jalr	x1, x31, 0	# 2241
	addi	x2, x2, 36	# 2241
	lw		x1, -32(x2)	# 2241
	jal		x0, beq_cont.17405	# 2240
beq.17406:
	ori		x11, x0, 4	# 2243
	mul		x11, x4, x11	# 2243
	add		x11, x7, x11	# 2243
	lw		x11, 0(x11)	# 2243
	addi	x12, x0, 0	# 2243
	lw		x13, 8(x11)	# 577
	addi	x16, x0, 0	# 2038
	ori		x17, x0, 4	# 2038
	mul		x17, x12, x17	# 2038
	add		x13, x13, x17	# 2038
	lw		x13, 0(x13)	# 2038
	ble		x16, x13, ble.17408	# 2038
	jal		x0, ble_cont.17407	# 2038
ble.17408:
	lw		x13, 12(x11)	# 584
	ori		x16, x0, 4	# 2040
	mul		x16, x12, x16	# 2040
	add		x13, x13, x16	# 2040
	lw		x13, 0(x13)	# 2040
	addi	x16, x0, 0	# 2040
	sw		x11, -32(x2)	# 2040
	sw		x14, -36(x2)	# 2040
	beq		x13, x16, beq.17410	# 2040
	addi	x5, x12, 0
	addi	x4, x11, 0
	addi	x27, x15, 0
	sw		x1, -40(x2)	# 2041
	addi	x2, x2, -44	# 2041
	lw		x31, 0(x27)	# 2041
	jalr	x1, x31, 0	# 2041
	addi	x2, x2, 44	# 2041
	lw		x1, -40(x2)	# 2041
	jal		x0, beq_cont.17409	# 2040
beq.17410:
beq_cont.17409:
	ori		x5, x0, 1	# 2043
	lw		x4, -32(x2)	# 2043
	lw		x27, -36(x2)	# 2043
	sw		x1, -40(x2)	# 2043
	addi	x2, x2, -44	# 2043
	lw		x31, 0(x27)	# 2043
	jalr	x1, x31, 0	# 2043
	addi	x2, x2, 44	# 2043
	lw		x1, -40(x2)	# 2043
ble_cont.17407:
beq_cont.17405:
	lw		x4, -24(x2)	# 2246
	lw		x27, -28(x2)	# 2246
	sw		x1, -40(x2)	# 2246
	addi	x2, x2, -44	# 2246
	lw		x31, 0(x27)	# 2246
	jalr	x1, x31, 0	# 2246
	addi	x2, x2, 44	# 2246
	lw		x1, -40(x2)	# 2246
	lw		x4, -20(x2)	# 2248
	addi	x4, x4, 1	# 2248
	lw		x5, -12(x2)	# 2248
	lw		x6, -8(x2)	# 2248
	lw		x7, -4(x2)	# 2248
	lw		x8, 0(x2)	# 2248
	lw		x9, -24(x2)	# 2248
	lw		x27, -16(x2)	# 2248
	lw		x31, 0(x27)	# 2248
	jalr	x0, x31, 0	# 2248
ble.17396:
	jalr	x0, x1, 0	# 2249
scan_line.2954:
	lw		x10, 12(x27)	# 2255
	lw		x11, 8(x27)	# 2255
	lw		x12, 4(x27)	# 2255
	ori		x13, x0, 1	# 2255
	ori		x14, x0, 4	# 2255
	mul		x13, x13, x14	# 2255
	add		x13, x12, x13	# 2255
	lw		x13, 0(x13)	# 2255
	ble		x13, x4, ble.17412	# 2255
	ori		x13, x0, 1	# 2257
	ori		x14, x0, 4	# 2257
	mul		x13, x13, x14	# 2257
	add		x12, x12, x13	# 2257
	lw		x12, 0(x12)	# 2257
	ori		x13, x0, 1	# 2257
	sub		x12, x12, x13	# 2257
	sw		x27, 0(x2)	# 2257
	sw		x8, -4(x2)	# 2257
	sw		x9, -8(x2)	# 2257
	sw		x7, -12(x2)	# 2257
	sw		x6, -16(x2)	# 2257
	sw		x5, -20(x2)	# 2257
	sw		x4, -24(x2)	# 2257
	sw		x10, -28(x2)	# 2257
	ble		x12, x4, ble.17414	# 2257
	addi	x12, x4, 1	# 2258
	addi	x6, x8, 0
	addi	x5, x12, 0
	addi	x4, x7, 0
	addi	x27, x11, 0
	sw		x1, -32(x2)	# 2258
	addi	x2, x2, -36	# 2258
	lw		x31, 0(x27)	# 2258
	jalr	x1, x31, 0	# 2258
	addi	x2, x2, 36	# 2258
	lw		x1, -32(x2)	# 2258
	jal		x0, ble_cont.17413	# 2257
ble.17414:
ble_cont.17413:
	addi	x4, x0, 0	# 2260
	lw		x5, -24(x2)	# 2260
	lw		x6, -20(x2)	# 2260
	lw		x7, -16(x2)	# 2260
	lw		x8, -12(x2)	# 2260
	lw		x9, -8(x2)	# 2260
	lw		x27, -28(x2)	# 2260
	sw		x1, -32(x2)	# 2260
	addi	x2, x2, -36	# 2260
	lw		x31, 0(x27)	# 2260
	jalr	x1, x31, 0	# 2260
	addi	x2, x2, 36	# 2260
	lw		x1, -32(x2)	# 2260
	lw		x4, -24(x2)	# 2261
	addi	x4, x4, 1	# 2261
	lw		x5, -4(x2)	# 224
	addi	x5, x5, 2	# 224
	ori		x6, x0, 5	# 225
	ble		x6, x5, ble.17416	# 225
	addi	x8, x5, 0	# 225
	jal		x0, ble_cont.17415	# 225
ble.17416:
	ori		x6, x0, 5	# 225
	sub		x8, x5, x6	# 225
ble_cont.17415:
	lw		x5, -16(x2)	# 2261
	lw		x6, -12(x2)	# 2261
	lw		x7, -20(x2)	# 2261
	lw		x9, -8(x2)	# 2261
	lw		x27, 0(x2)	# 2261
	lw		x31, 0(x27)	# 2261
	jalr	x0, x31, 0	# 2261
ble.17412:
	jalr	x0, x1, 0	# 2262
create_float5x3array.2961:
	ori		x4, x0, 3	# 2272
	lui		x5, %hi(l.10373)	# 2272
	ori		x5, x0, %lo(l.10373)	# 2272
	flw		f0, 0(x5)	# 2272
	sw		x1, 0(x2)	# 2272
	addi	x2, x2, -4	# 2272
	jal		x1, min_caml_create_float_array	# 2272
	addi	x2, x2, 4	# 2272
	lw		x1, 0(x2)	# 2272
	addi	x5, x4, 0	# 2272
	ori		x4, x0, 5	# 2273
	sw		x1, 0(x2)	# 2273
	addi	x2, x2, -4	# 2273
	jal		x1, min_caml_create_array	# 2273
	addi	x2, x2, 4	# 2273
	lw		x1, 0(x2)	# 2273
	ori		x5, x0, 1	# 2274
	ori		x6, x0, 3	# 2274
	lui		x7, %hi(l.10373)	# 2274
	ori		x7, x0, %lo(l.10373)	# 2274
	flw		f0, 0(x7)	# 2274
	sw		x4, 0(x2)	# 2274
	sw		x5, -4(x2)	# 2274
	addi	x4, x6, 0
	sw		x1, -8(x2)	# 2274
	addi	x2, x2, -12	# 2274
	jal		x1, min_caml_create_float_array	# 2274
	addi	x2, x2, 12	# 2274
	lw		x1, -8(x2)	# 2274
	ori		x5, x0, 4	# 2274
	lw		x6, -4(x2)	# 2274
	mul		x5, x6, x5	# 2274
	lw		x6, 0(x2)	# 2274
	add		x5, x6, x5	# 2274
	sw		x4, 0(x5)	# 2274
	ori		x4, x0, 2	# 2275
	ori		x5, x0, 3	# 2275
	lui		x7, %hi(l.10373)	# 2275
	ori		x7, x0, %lo(l.10373)	# 2275
	flw		f0, 0(x7)	# 2275
	sw		x4, -8(x2)	# 2275
	addi	x4, x5, 0
	sw		x1, -12(x2)	# 2275
	addi	x2, x2, -16	# 2275
	jal		x1, min_caml_create_float_array	# 2275
	addi	x2, x2, 16	# 2275
	lw		x1, -12(x2)	# 2275
	ori		x5, x0, 4	# 2275
	lw		x6, -8(x2)	# 2275
	mul		x5, x6, x5	# 2275
	lw		x6, 0(x2)	# 2275
	add		x5, x6, x5	# 2275
	sw		x4, 0(x5)	# 2275
	ori		x4, x0, 3	# 2276
	ori		x5, x0, 3	# 2276
	lui		x7, %hi(l.10373)	# 2276
	ori		x7, x0, %lo(l.10373)	# 2276
	flw		f0, 0(x7)	# 2276
	sw		x4, -12(x2)	# 2276
	addi	x4, x5, 0
	sw		x1, -16(x2)	# 2276
	addi	x2, x2, -20	# 2276
	jal		x1, min_caml_create_float_array	# 2276
	addi	x2, x2, 20	# 2276
	lw		x1, -16(x2)	# 2276
	ori		x5, x0, 4	# 2276
	lw		x6, -12(x2)	# 2276
	mul		x5, x6, x5	# 2276
	lw		x6, 0(x2)	# 2276
	add		x5, x6, x5	# 2276
	sw		x4, 0(x5)	# 2276
	ori		x4, x0, 4	# 2277
	ori		x5, x0, 3	# 2277
	lui		x7, %hi(l.10373)	# 2277
	ori		x7, x0, %lo(l.10373)	# 2277
	flw		f0, 0(x7)	# 2277
	sw		x4, -16(x2)	# 2277
	addi	x4, x5, 0
	sw		x1, -20(x2)	# 2277
	addi	x2, x2, -24	# 2277
	jal		x1, min_caml_create_float_array	# 2277
	addi	x2, x2, 24	# 2277
	lw		x1, -20(x2)	# 2277
	ori		x5, x0, 4	# 2277
	lw		x6, -16(x2)	# 2277
	mul		x5, x6, x5	# 2277
	lw		x6, 0(x2)	# 2277
	add		x5, x6, x5	# 2277
	sw		x4, 0(x5)	# 2277
	addi	x4, x6, 0	# 2278
	jalr	x0, x1, 0	# 2278
create_pixel.2963:
	ori		x4, x0, 3	# 2284
	lui		x5, %hi(l.10373)	# 2284
	ori		x5, x0, %lo(l.10373)	# 2284
	flw		f0, 0(x5)	# 2284
	sw		x1, 0(x2)	# 2284
	addi	x2, x2, -4	# 2284
	jal		x1, min_caml_create_float_array	# 2284
	addi	x2, x2, 4	# 2284
	lw		x1, 0(x2)	# 2284
	sw		x4, 0(x2)	# 2285
	sw		x1, -4(x2)	# 2285
	addi	x2, x2, -8	# 2285
	jal		x1, create_float5x3array.2961	# 2285
	addi	x2, x2, 8	# 2285
	lw		x1, -4(x2)	# 2285
	ori		x5, x0, 5	# 2286
	addi	x6, x0, 0	# 2286
	sw		x4, -4(x2)	# 2286
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -8(x2)	# 2286
	addi	x2, x2, -12	# 2286
	jal		x1, min_caml_create_array	# 2286
	addi	x2, x2, 12	# 2286
	lw		x1, -8(x2)	# 2286
	ori		x5, x0, 5	# 2287
	addi	x6, x0, 0	# 2287
	sw		x4, -8(x2)	# 2287
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -12(x2)	# 2287
	addi	x2, x2, -16	# 2287
	jal		x1, min_caml_create_array	# 2287
	addi	x2, x2, 16	# 2287
	lw		x1, -12(x2)	# 2287
	sw		x4, -12(x2)	# 2288
	sw		x1, -16(x2)	# 2288
	addi	x2, x2, -20	# 2288
	jal		x1, create_float5x3array.2961	# 2288
	addi	x2, x2, 20	# 2288
	lw		x1, -16(x2)	# 2288
	sw		x4, -16(x2)	# 2289
	sw		x1, -20(x2)	# 2289
	addi	x2, x2, -24	# 2289
	jal		x1, create_float5x3array.2961	# 2289
	addi	x2, x2, 24	# 2289
	lw		x1, -20(x2)	# 2289
	ori		x5, x0, 1	# 2290
	addi	x6, x0, 0	# 2290
	sw		x4, -20(x2)	# 2290
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -24(x2)	# 2290
	addi	x2, x2, -28	# 2290
	jal		x1, min_caml_create_array	# 2290
	addi	x2, x2, 28	# 2290
	lw		x1, -24(x2)	# 2290
	sw		x4, -24(x2)	# 2291
	sw		x1, -28(x2)	# 2291
	addi	x2, x2, -32	# 2291
	jal		x1, create_float5x3array.2961	# 2291
	addi	x2, x2, 32	# 2291
	lw		x1, -28(x2)	# 2291
	addi	x5, x3, 0	# 2292
	addi	x3, x3, 32	# 2292
	sw		x4, 28(x5)	# 2292
	lw		x4, -24(x2)	# 2292
	sw		x4, 24(x5)	# 2292
	lw		x4, -20(x2)	# 2292
	sw		x4, 20(x5)	# 2292
	lw		x4, -16(x2)	# 2292
	sw		x4, 16(x5)	# 2292
	lw		x4, -12(x2)	# 2292
	sw		x4, 12(x5)	# 2292
	lw		x4, -8(x2)	# 2292
	sw		x4, 8(x5)	# 2292
	lw		x4, -4(x2)	# 2292
	sw		x4, 4(x5)	# 2292
	lw		x4, 0(x2)	# 2292
	sw		x4, 0(x5)	# 2292
	addi	x4, x5, 0	# 2292
	jalr	x0, x1, 0	# 2292
init_line_elements.2965:
	addi	x6, x0, 0	# 2297
	ble		x6, x5, ble.17418	# 2297
	jalr	x0, x1, 0	# 2301
ble.17418:
	sw		x4, 0(x2)	# 2298
	sw		x5, -4(x2)	# 2298
	sw		x1, -8(x2)	# 2298
	addi	x2, x2, -12	# 2298
	jal		x1, create_pixel.2963	# 2298
	addi	x2, x2, 12	# 2298
	lw		x1, -8(x2)	# 2298
	ori		x5, x0, 4	# 2298
	lw		x6, -4(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, 0(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	ori		x4, x0, 1	# 2299
	sub		x4, x6, x4	# 2299
	addi	x5, x0, 0	# 2297
	ble		x5, x4, ble.17419	# 2297
	addi	x4, x7, 0	# 2301
	jalr	x0, x1, 0	# 2301
ble.17419:
	sw		x4, -8(x2)	# 2298
	sw		x1, -12(x2)	# 2298
	addi	x2, x2, -16	# 2298
	jal		x1, create_pixel.2963	# 2298
	addi	x2, x2, 16	# 2298
	lw		x1, -12(x2)	# 2298
	ori		x5, x0, 4	# 2298
	lw		x6, -8(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, 0(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	ori		x4, x0, 1	# 2299
	sub		x4, x6, x4	# 2299
	addi	x5, x0, 0	# 2297
	ble		x5, x4, ble.17420	# 2297
	addi	x4, x7, 0	# 2301
	jalr	x0, x1, 0	# 2301
ble.17420:
	sw		x4, -12(x2)	# 2298
	sw		x1, -16(x2)	# 2298
	addi	x2, x2, -20	# 2298
	jal		x1, create_pixel.2963	# 2298
	addi	x2, x2, 20	# 2298
	lw		x1, -16(x2)	# 2298
	ori		x5, x0, 4	# 2298
	lw		x6, -12(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, 0(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	ori		x4, x0, 1	# 2299
	sub		x4, x6, x4	# 2299
	addi	x5, x0, 0	# 2297
	ble		x5, x4, ble.17421	# 2297
	addi	x4, x7, 0	# 2301
	jalr	x0, x1, 0	# 2301
ble.17421:
	sw		x4, -16(x2)	# 2298
	sw		x1, -20(x2)	# 2298
	addi	x2, x2, -24	# 2298
	jal		x1, create_pixel.2963	# 2298
	addi	x2, x2, 24	# 2298
	lw		x1, -20(x2)	# 2298
	ori		x5, x0, 4	# 2298
	lw		x6, -16(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, 0(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	ori		x4, x0, 1	# 2299
	sub		x5, x6, x4	# 2299
	addi	x4, x7, 0
	jal		x0, init_line_elements.2965	# 2299
tan.2970:
	lw		x4, 24(x27)	# 46
	flw		f1, 20(x27)	# 46
	flw		f2, 16(x27)	# 46
	flw		f3, 12(x27)	# 46
	flw		f4, 8(x27)	# 46
	lw		x27, 4(x27)	# 46
	lui		x5, %hi(l.10373)	# 46
	ori		x5, x0, %lo(l.10373)	# 46
	flw		f5, 0(x5)	# 46
	sw		x27, 0(x2)	# 46
	sw		x4, -4(x2)	# 46
	fsw		f2, -8(x2)	# 46
	fsw		f1, -16(x2)	# 46
	fsw		f0, -24(x2)	# 46
	fle		x31, f5, f0	# 46
	beq		x31, x0, fle_else.17423	# 46
	fle		x31, f3, f0	# 47
	beq		x31, x0, fle_else.17425	# 47
	fsub	f3, f0, f3	# 47
	addi	x27, x4, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -32(x2)	# 47
	addi	x2, x2, -36	# 47
	lw		x31, 0(x27)	# 47
	jalr	x1, x31, 0	# 47
	addi	x2, x2, 36	# 47
	lw		x1, -32(x2)	# 47
	jal		x0, fle_cont.17424	# 47
fle_else.17425:
	fle		x31, f4, f0	# 48
	beq		x31, x0, fle_else.17427	# 48
	fsub	f3, f0, f4	# 48
	addi	x27, x4, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -32(x2)	# 48
	addi	x2, x2, -36	# 48
	lw		x31, 0(x27)	# 48
	jalr	x1, x31, 0	# 48
	addi	x2, x2, 36	# 48
	lw		x1, -32(x2)	# 48
	fsub	x31, x31, x31	# 48
	fsub	f0, x31, f0	# 48
	jal		x0, fle_cont.17426	# 48
fle_else.17427:
	fle		x31, f0, f2	# 49
	beq		x31, x0, fle_else.17429	# 49
	fle		x31, f1, f0	# 50
	beq		x31, x0, fle_else.17431	# 50
	fsub	f3, f2, f0	# 50
	fmul	f3, f3, f3	# 41
	fmul	f4, f3, f3	# 42
	lui		x5, %hi(l.10376)	# 43
	ori		x5, x0, %lo(l.10376)	# 43
	flw		f5, 0(x5)	# 43
	lui		x5, %hi(l.10399)	# 43
	ori		x5, x0, %lo(l.10399)	# 43
	flw		f6, 0(x5)	# 43
	fmul	f6, f6, f3	# 43
	fsub	f5, f5, f6	# 43
	lui		x5, %hi(l.10401)	# 43
	ori		x5, x0, %lo(l.10401)	# 43
	flw		f6, 0(x5)	# 43
	fmul	f6, f6, f4	# 43
	fadd	f5, f5, f6	# 43
	lui		x5, %hi(l.10403)	# 43
	ori		x5, x0, %lo(l.10403)	# 43
	flw		f6, 0(x5)	# 43
	fmul	f3, f6, f3	# 43
	fmul	f3, f3, f4	# 43
	fsub	f0, f5, f3	# 43
	jal		x0, fle_cont.17430	# 50
fle_else.17431:
	fmul	f3, f0, f0	# 36
	fmul	f4, f0, f3	# 37
	lui		x5, %hi(l.10392)	# 38
	ori		x5, x0, %lo(l.10392)	# 38
	flw		f5, 0(x5)	# 38
	fmul	f5, f5, f4	# 38
	fsub	f5, f0, f5	# 38
	lui		x5, %hi(l.10394)	# 38
	ori		x5, x0, %lo(l.10394)	# 38
	flw		f6, 0(x5)	# 38
	fmul	f6, f6, f3	# 38
	fmul	f6, f6, f4	# 38
	fadd	f5, f5, f6	# 38
	lui		x5, %hi(l.10396)	# 38
	ori		x5, x0, %lo(l.10396)	# 38
	flw		f6, 0(x5)	# 38
	fmul	f6, f6, f3	# 38
	fmul	f3, f6, f3	# 38
	fmul	f3, f3, f4	# 38
	fsub	f0, f5, f3	# 38
fle_cont.17430:
	jal		x0, fle_cont.17428	# 49
fle_else.17429:
	fsub	f3, f4, f0	# 49
	addi	x27, x4, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -32(x2)	# 49
	addi	x2, x2, -36	# 49
	lw		x31, 0(x27)	# 49
	jalr	x1, x31, 0	# 49
	addi	x2, x2, 36	# 49
	lw		x1, -32(x2)	# 49
fle_cont.17428:
fle_cont.17426:
fle_cont.17424:
	jal		x0, fle_cont.17422	# 46
fle_else.17423:
	fsub	f3, f3, f3	# 46
	fsub	f3, f3, f0	# 46
	addi	x27, x4, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -32(x2)	# 46
	addi	x2, x2, -36	# 46
	lw		x31, 0(x27)	# 46
	jalr	x1, x31, 0	# 46
	addi	x2, x2, 36	# 46
	lw		x1, -32(x2)	# 46
	fsub	x31, x31, x31	# 46
	fsub	f0, x31, f0	# 46
fle_cont.17422:
	lui		x4, %hi(l.10373)	# 54
	ori		x4, x0, %lo(l.10373)	# 54
	flw		f1, 0(x4)	# 54
	flw		f2, -24(x2)	# 54
	fsw		f0, -32(x2)	# 54
	fle		x31, f1, f2	# 54
	beq		x31, x0, fle_else.17433	# 54
	flw		f1, -16(x2)	# 55
	fle		x31, f2, f1	# 55
	beq		x31, x0, fle_else.17435	# 55
	fmul	f1, f2, f2	# 41
	fmul	f2, f1, f1	# 42
	lui		x4, %hi(l.10376)	# 43
	ori		x4, x0, %lo(l.10376)	# 43
	flw		f3, 0(x4)	# 43
	lui		x4, %hi(l.10399)	# 43
	ori		x4, x0, %lo(l.10399)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f1	# 43
	fsub	f3, f3, f4	# 43
	lui		x4, %hi(l.10401)	# 43
	ori		x4, x0, %lo(l.10401)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f4, f4, f2	# 43
	fadd	f3, f3, f4	# 43
	lui		x4, %hi(l.10403)	# 43
	ori		x4, x0, %lo(l.10403)	# 43
	flw		f4, 0(x4)	# 43
	fmul	f1, f4, f1	# 43
	fmul	f1, f1, f2	# 43
	fsub	f0, f3, f1	# 43
	jal		x0, fle_cont.17434	# 55
fle_else.17435:
	flw		f1, -8(x2)	# 55
	fsub	f1, f1, f2	# 55
	lw		x27, -4(x2)	# 55
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -40(x2)	# 55
	addi	x2, x2, -44	# 55
	lw		x31, 0(x27)	# 55
	jalr	x1, x31, 0	# 55
	addi	x2, x2, 44	# 55
	lw		x1, -40(x2)	# 55
fle_cont.17434:
	jal		x0, fle_cont.17432	# 54
fle_else.17433:
	fsub	f1, f1, f1	# 54
	fsub	f1, f1, f2	# 54
	lw		x27, 0(x2)	# 54
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -40(x2)	# 54
	addi	x2, x2, -44	# 54
	lw		x31, 0(x27)	# 54
	jalr	x1, x31, 0	# 54
	addi	x2, x2, 44	# 54
	lw		x1, -40(x2)	# 54
fle_cont.17432:
	flw		f1, -32(x2)	# 2320
	fdiv	f0, f1, f0	# 2320
	jalr	x0, x1, 0	# 2320
calc_dirvec.2975:
	lw		x7, 12(x27)	# 2334
	lw		x8, 8(x27)	# 2334
	lw		x9, 4(x27)	# 2334
	ori		x10, x0, 5	# 2334
	ble		x10, x4, ble.17436	# 2334
	fmul	f0, f1, f1	# 2325
	lui		x8, %hi(l.12450)	# 2325
	ori		x8, x0, %lo(l.12450)	# 2325
	flw		f1, 0(x8)	# 2325
	fadd	f0, f0, f1	# 2325
	sw		x6, 0(x2)	# 2325
	sw		x5, -4(x2)	# 2325
	sw		x27, -8(x2)	# 2325
	fsw		f3, -16(x2)	# 2325
	sw		x4, -24(x2)	# 2325
	sw		x7, -28(x2)	# 2325
	fsw		f2, -32(x2)	# 2325
	sw		x9, -40(x2)	# 2325
	sw		x1, -44(x2)	# 2325
	addi	x2, x2, -48	# 2325
	jal		x1, min_caml_sqrt	# 2325
	addi	x2, x2, 48	# 2325
	lw		x1, -44(x2)	# 2325
	lui		x4, %hi(l.10376)	# 2326
	ori		x4, x0, %lo(l.10376)	# 2326
	flw		f1, 0(x4)	# 2326
	fdiv	f1, f1, f0	# 2326
	lw		x27, -40(x2)	# 2327
	fsw		f0, -48(x2)	# 2327
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -56(x2)	# 2327
	addi	x2, x2, -60	# 2327
	lw		x31, 0(x27)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 60	# 2327
	lw		x1, -56(x2)	# 2327
	flw		f1, -32(x2)	# 2328
	fmul	f0, f0, f1	# 2328
	lw		x27, -28(x2)	# 2328
	sw		x1, -56(x2)	# 2328
	addi	x2, x2, -60	# 2328
	lw		x31, 0(x27)	# 2328
	jalr	x1, x31, 0	# 2328
	addi	x2, x2, 60	# 2328
	lw		x1, -56(x2)	# 2328
	flw		f1, -48(x2)	# 2329
	fmul	f0, f0, f1	# 2329
	lw		x4, -24(x2)	# 2350
	addi	x4, x4, 1	# 2350
	fmul	f1, f0, f0	# 2325
	lui		x5, %hi(l.12450)	# 2325
	ori		x5, x0, %lo(l.12450)	# 2325
	flw		f2, 0(x5)	# 2325
	fadd	f1, f1, f2	# 2325
	fsw		f0, -56(x2)	# 2325
	sw		x4, -64(x2)	# 2325
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -68(x2)	# 2325
	addi	x2, x2, -72	# 2325
	jal		x1, min_caml_sqrt	# 2325
	addi	x2, x2, 72	# 2325
	lw		x1, -68(x2)	# 2325
	lui		x4, %hi(l.10376)	# 2326
	ori		x4, x0, %lo(l.10376)	# 2326
	flw		f1, 0(x4)	# 2326
	fdiv	f1, f1, f0	# 2326
	lw		x27, -40(x2)	# 2327
	fsw		f0, -72(x2)	# 2327
	fsub	f0, f0, f0
	fadd	f0, f0, f1
	sw		x1, -80(x2)	# 2327
	addi	x2, x2, -84	# 2327
	lw		x31, 0(x27)	# 2327
	jalr	x1, x31, 0	# 2327
	addi	x2, x2, 84	# 2327
	lw		x1, -80(x2)	# 2327
	flw		f1, -16(x2)	# 2328
	fmul	f0, f0, f1	# 2328
	lw		x27, -28(x2)	# 2328
	sw		x1, -80(x2)	# 2328
	addi	x2, x2, -84	# 2328
	lw		x31, 0(x27)	# 2328
	jalr	x1, x31, 0	# 2328
	addi	x2, x2, 84	# 2328
	lw		x1, -80(x2)	# 2328
	flw		f1, -72(x2)	# 2329
	fmul	f1, f0, f1	# 2329
	flw		f0, -56(x2)	# 2350
	flw		f2, -32(x2)	# 2350
	flw		f3, -16(x2)	# 2350
	lw		x4, -64(x2)	# 2350
	lw		x5, -4(x2)	# 2350
	lw		x6, 0(x2)	# 2350
	lw		x27, -8(x2)	# 2350
	lw		x31, 0(x27)	# 2350
	jalr	x0, x31, 0	# 2350
ble.17436:
	fmul	f2, f0, f0	# 8
	fmul	f3, f1, f1	# 8
	fadd	f2, f2, f3	# 2335
	lui		x4, %hi(l.10376)	# 2335
	ori		x4, x0, %lo(l.10376)	# 2335
	flw		f3, 0(x4)	# 2335
	fadd	f2, f2, f3	# 2335
	sw		x6, 0(x2)	# 2335
	sw		x8, -80(x2)	# 2335
	sw		x5, -4(x2)	# 2335
	fsw		f1, -88(x2)	# 2335
	fsw		f0, -96(x2)	# 2335
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -104(x2)	# 2335
	addi	x2, x2, -108	# 2335
	jal		x1, min_caml_sqrt	# 2335
	addi	x2, x2, 108	# 2335
	lw		x1, -104(x2)	# 2335
	flw		f1, -96(x2)	# 2336
	fdiv	f1, f1, f0	# 2336
	flw		f2, -88(x2)	# 2337
	fdiv	f2, f2, f0	# 2337
	lui		x4, %hi(l.10376)	# 2338
	ori		x4, x0, %lo(l.10376)	# 2338
	flw		f3, 0(x4)	# 2338
	fdiv	f0, f3, f0	# 2338
	ori		x4, x0, 4	# 2341
	lw		x5, -4(x2)	# 2341
	mul		x4, x5, x4	# 2341
	lw		x5, -80(x2)	# 2341
	add		x4, x5, x4	# 2341
	lw		x4, 0(x4)	# 2341
	ori		x5, x0, 4	# 2342
	lw		x6, 0(x2)	# 2342
	mul		x5, x6, x5	# 2342
	add		x5, x4, x5	# 2342
	lw		x5, 0(x5)	# 2342
	lw		x5, 0(x5)	# 639
	addi	x7, x0, 0	# 240
	ori		x8, x0, 4	# 240
	mul		x7, x7, x8	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	ori		x7, x0, 1	# 241
	ori		x8, x0, 4	# 241
	mul		x7, x7, x8	# 241
	add		x7, x5, x7	# 241
	fsw		f2, 0(x7)	# 241
	ori		x7, x0, 2	# 242
	ori		x8, x0, 4	# 242
	mul		x7, x7, x8	# 242
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
	addi	x7, x0, 0	# 240
	ori		x8, x0, 4	# 240
	mul		x7, x7, x8	# 240
	add		x7, x5, x7	# 240
	fsw		f1, 0(x7)	# 240
	ori		x7, x0, 1	# 241
	ori		x8, x0, 4	# 241
	mul		x7, x7, x8	# 241
	add		x7, x5, x7	# 241
	fsw		f0, 0(x7)	# 241
	ori		x7, x0, 2	# 242
	ori		x8, x0, 4	# 242
	mul		x7, x7, x8	# 242
	add		x5, x5, x7	# 242
	fsw		f3, 0(x5)	# 242
	addi	x5, x6, 80	# 2344
	ori		x7, x0, 4	# 2344
	mul		x5, x5, x7	# 2344
	add		x5, x4, x5	# 2344
	lw		x5, 0(x5)	# 2344
	lw		x5, 0(x5)	# 639
	fsub	f3, f3, f3	# 4
	fsub	f3, f3, f1	# 4
	fsub	f4, f4, f4	# 4
	fsub	f4, f4, f2	# 4
	addi	x7, x0, 0	# 240
	ori		x8, x0, 4	# 240
	mul		x7, x7, x8	# 240
	add		x7, x5, x7	# 240
	fsw		f0, 0(x7)	# 240
	ori		x7, x0, 1	# 241
	ori		x8, x0, 4	# 241
	mul		x7, x7, x8	# 241
	add		x7, x5, x7	# 241
	fsw		f3, 0(x7)	# 241
	ori		x7, x0, 2	# 242
	ori		x8, x0, 4	# 242
	mul		x7, x7, x8	# 242
	add		x5, x5, x7	# 242
	fsw		f4, 0(x5)	# 242
	addi	x5, x6, 1	# 2345
	ori		x7, x0, 4	# 2345
	mul		x5, x5, x7	# 2345
	add		x5, x4, x5	# 2345
	lw		x5, 0(x5)	# 2345
	lw		x5, 0(x5)	# 639
	fsub	f3, f3, f3	# 4
	fsub	f3, f3, f1	# 4
	fsub	f4, f4, f4	# 4
	fsub	f4, f4, f2	# 4
	fsub	f5, f5, f5	# 4
	fsub	f5, f5, f0	# 4
	addi	x7, x0, 0	# 240
	ori		x8, x0, 4	# 240
	mul		x7, x7, x8	# 240
	add		x7, x5, x7	# 240
	fsw		f3, 0(x7)	# 240
	ori		x7, x0, 1	# 241
	ori		x8, x0, 4	# 241
	mul		x7, x7, x8	# 241
	add		x7, x5, x7	# 241
	fsw		f4, 0(x7)	# 241
	ori		x7, x0, 2	# 242
	ori		x8, x0, 4	# 242
	mul		x7, x7, x8	# 242
	add		x5, x5, x7	# 242
	fsw		f5, 0(x5)	# 242
	addi	x5, x6, 41	# 2346
	ori		x7, x0, 4	# 2346
	mul		x5, x5, x7	# 2346
	add		x5, x4, x5	# 2346
	lw		x5, 0(x5)	# 2346
	lw		x5, 0(x5)	# 639
	fsub	f3, f3, f3	# 4
	fsub	f3, f3, f1	# 4
	fsub	f4, f4, f4	# 4
	fsub	f4, f4, f0	# 4
	addi	x7, x0, 0	# 240
	ori		x8, x0, 4	# 240
	mul		x7, x7, x8	# 240
	add		x7, x5, x7	# 240
	fsw		f3, 0(x7)	# 240
	ori		x7, x0, 1	# 241
	ori		x8, x0, 4	# 241
	mul		x7, x7, x8	# 241
	add		x7, x5, x7	# 241
	fsw		f4, 0(x7)	# 241
	ori		x7, x0, 2	# 242
	ori		x8, x0, 4	# 242
	mul		x7, x7, x8	# 242
	add		x5, x5, x7	# 242
	fsw		f2, 0(x5)	# 242
	addi	x5, x6, 81	# 2347
	ori		x6, x0, 4	# 2347
	mul		x5, x5, x6	# 2347
	add		x4, x4, x5	# 2347
	lw		x4, 0(x4)	# 2347
	lw		x4, 0(x4)	# 639
	fsub	x31, x31, x31	# 4
	fsub	f0, x31, f0	# 4
	addi	x5, x0, 0	# 240
	ori		x6, x0, 4	# 240
	mul		x5, x5, x6	# 240
	add		x5, x4, x5	# 240
	fsw		f0, 0(x5)	# 240
	ori		x5, x0, 1	# 241
	ori		x6, x0, 4	# 241
	mul		x5, x5, x6	# 241
	add		x5, x4, x5	# 241
	fsw		f1, 0(x5)	# 241
	ori		x5, x0, 2	# 242
	ori		x6, x0, 4	# 242
	mul		x5, x5, x6	# 242
	add		x4, x4, x5	# 242
	fsw		f2, 0(x4)	# 242
	jalr	x0, x1, 0	# 242
calc_dirvecs.2983:
	lw		x7, 4(x27)	# 2355
	addi	x8, x0, 0	# 2355
	ble		x8, x4, ble.17442	# 2355
	jalr	x0, x1, 0	# 2364
ble.17442:
	addi	x8, x0, 0	# 14
	sw		x27, 0(x2)	# 14
	sw		x4, -4(x2)	# 14
	fsw		f0, -8(x2)	# 14
	sw		x6, -16(x2)	# 14
	sw		x5, -20(x2)	# 14
	sw		x7, -24(x2)	# 14
	ble		x8, x4, ble.17445	# 14
	sub		x8, x0, x4	# 16
	addi	x4, x8, 0
	sw		x1, -28(x2)	# 16
	addi	x2, x2, -32	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 32	# 16
	lw		x1, -28(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.17444	# 14
ble.17445:
	ori		x8, x0, 1	# 15
	ble		x8, x4, ble.17447	# 15
	lui		x8, %hi(l.10373)	# 15
	ori		x8, x0, %lo(l.10373)	# 15
	flw		f0, 0(x8)	# 15
	jal		x0, ble_cont.17446	# 15
ble.17447:
	ori		x8, x0, 1	# 15
	sub		x8, x4, x8	# 15
	addi	x4, x8, 0
	sw		x1, -28(x2)	# 15
	addi	x2, x2, -32	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 32	# 15
	lw		x1, -28(x2)	# 15
	lui		x4, %hi(l.10376)	# 15
	ori		x4, x0, %lo(l.10376)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.17446:
ble_cont.17444:
	lui		x4, %hi(l.10462)	# 2357
	ori		x4, x0, %lo(l.10462)	# 2357
	flw		f1, 0(x4)	# 2357
	fmul	f0, f0, f1	# 2357
	lui		x4, %hi(l.13094)	# 2357
	ori		x4, x0, %lo(l.13094)	# 2357
	flw		f1, 0(x4)	# 2357
	fsub	f2, f0, f1	# 2357
	addi	x4, x0, 0	# 2358
	lui		x5, %hi(l.10373)	# 2358
	ori		x5, x0, %lo(l.10373)	# 2358
	flw		f0, 0(x5)	# 2358
	lui		x5, %hi(l.10373)	# 2358
	ori		x5, x0, %lo(l.10373)	# 2358
	flw		f1, 0(x5)	# 2358
	flw		f3, -8(x2)	# 2358
	lw		x5, -20(x2)	# 2358
	lw		x6, -16(x2)	# 2358
	lw		x27, -24(x2)	# 2358
	sw		x1, -28(x2)	# 2358
	addi	x2, x2, -32	# 2358
	lw		x31, 0(x27)	# 2358
	jalr	x1, x31, 0	# 2358
	addi	x2, x2, 32	# 2358
	lw		x1, -28(x2)	# 2358
	addi	x4, x0, 0	# 14
	lw		x5, -4(x2)	# 14
	ble		x4, x5, ble.17449	# 14
	sub		x4, x0, x5	# 16
	sw		x1, -28(x2)	# 16
	addi	x2, x2, -32	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 32	# 16
	lw		x1, -28(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.17448	# 14
ble.17449:
	ori		x4, x0, 1	# 15
	ble		x4, x5, ble.17451	# 15
	lui		x4, %hi(l.10373)	# 15
	ori		x4, x0, %lo(l.10373)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.17450	# 15
ble.17451:
	ori		x4, x0, 1	# 15
	sub		x4, x5, x4	# 15
	sw		x1, -28(x2)	# 15
	addi	x2, x2, -32	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 32	# 15
	lw		x1, -28(x2)	# 15
	lui		x4, %hi(l.10376)	# 15
	ori		x4, x0, %lo(l.10376)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.17450:
ble_cont.17448:
	lui		x4, %hi(l.10462)	# 2360
	ori		x4, x0, %lo(l.10462)	# 2360
	flw		f1, 0(x4)	# 2360
	fmul	f0, f0, f1	# 2360
	lui		x4, %hi(l.12450)	# 2360
	ori		x4, x0, %lo(l.12450)	# 2360
	flw		f1, 0(x4)	# 2360
	fadd	f2, f0, f1	# 2360
	addi	x4, x0, 0	# 2361
	lui		x5, %hi(l.10373)	# 2361
	ori		x5, x0, %lo(l.10373)	# 2361
	flw		f0, 0(x5)	# 2361
	lui		x5, %hi(l.10373)	# 2361
	ori		x5, x0, %lo(l.10373)	# 2361
	flw		f1, 0(x5)	# 2361
	lw		x5, -16(x2)	# 2361
	addi	x6, x5, 2	# 2361
	flw		f3, -8(x2)	# 2361
	lw		x7, -20(x2)	# 2361
	lw		x27, -24(x2)	# 2361
	addi	x5, x7, 0
	sw		x1, -28(x2)	# 2361
	addi	x2, x2, -32	# 2361
	lw		x31, 0(x27)	# 2361
	jalr	x1, x31, 0	# 2361
	addi	x2, x2, 32	# 2361
	lw		x1, -28(x2)	# 2361
	ori		x4, x0, 1	# 2363
	lw		x5, -4(x2)	# 2363
	sub		x4, x5, x4	# 2363
	lw		x5, -20(x2)	# 224
	addi	x5, x5, 1	# 224
	ori		x6, x0, 5	# 225
	ble		x6, x5, ble.17453	# 225
	jal		x0, ble_cont.17452	# 225
ble.17453:
	ori		x6, x0, 5	# 225
	sub		x5, x5, x6	# 225
ble_cont.17452:
	flw		f0, -8(x2)	# 2363
	lw		x6, -16(x2)	# 2363
	lw		x27, 0(x2)	# 2363
	lw		x31, 0(x27)	# 2363
	jalr	x0, x31, 0	# 2363
calc_dirvec_rows.2988:
	lw		x7, 4(x27)	# 2369
	addi	x8, x0, 0	# 2369
	ble		x8, x4, ble.17454	# 2369
	jalr	x0, x1, 0	# 2373
ble.17454:
	addi	x8, x0, 0	# 14
	sw		x27, 0(x2)	# 14
	sw		x4, -4(x2)	# 14
	sw		x6, -8(x2)	# 14
	sw		x5, -12(x2)	# 14
	sw		x7, -16(x2)	# 14
	ble		x8, x4, ble.17457	# 14
	sub		x8, x0, x4	# 16
	addi	x4, x8, 0
	sw		x1, -20(x2)	# 16
	addi	x2, x2, -24	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 24	# 16
	lw		x1, -20(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.17456	# 14
ble.17457:
	ori		x8, x0, 1	# 15
	ble		x8, x4, ble.17459	# 15
	lui		x8, %hi(l.10373)	# 15
	ori		x8, x0, %lo(l.10373)	# 15
	flw		f0, 0(x8)	# 15
	jal		x0, ble_cont.17458	# 15
ble.17459:
	ori		x8, x0, 1	# 15
	sub		x8, x4, x8	# 15
	addi	x4, x8, 0
	sw		x1, -20(x2)	# 15
	addi	x2, x2, -24	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 24	# 15
	lw		x1, -20(x2)	# 15
	lui		x4, %hi(l.10376)	# 15
	ori		x4, x0, %lo(l.10376)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.17458:
ble_cont.17456:
	lui		x4, %hi(l.10462)	# 2370
	ori		x4, x0, %lo(l.10462)	# 2370
	flw		f1, 0(x4)	# 2370
	fmul	f0, f0, f1	# 2370
	lui		x4, %hi(l.13094)	# 2370
	ori		x4, x0, %lo(l.13094)	# 2370
	flw		f1, 0(x4)	# 2370
	fsub	f0, f0, f1	# 2370
	ori		x4, x0, 4	# 2371
	lw		x5, -12(x2)	# 2371
	lw		x6, -8(x2)	# 2371
	lw		x27, -16(x2)	# 2371
	sw		x1, -20(x2)	# 2371
	addi	x2, x2, -24	# 2371
	lw		x31, 0(x27)	# 2371
	jalr	x1, x31, 0	# 2371
	addi	x2, x2, 24	# 2371
	lw		x1, -20(x2)	# 2371
	ori		x4, x0, 1	# 2372
	lw		x5, -4(x2)	# 2372
	sub		x4, x5, x4	# 2372
	lw		x5, -12(x2)	# 224
	addi	x5, x5, 2	# 224
	ori		x6, x0, 5	# 225
	ble		x6, x5, ble.17461	# 225
	jal		x0, ble_cont.17460	# 225
ble.17461:
	ori		x6, x0, 5	# 225
	sub		x5, x5, x6	# 225
ble_cont.17460:
	lw		x6, -8(x2)	# 2372
	addi	x6, x6, 4	# 2372
	lw		x27, 0(x2)	# 2372
	lw		x31, 0(x27)	# 2372
	jalr	x0, x31, 0	# 2372
create_dirvec_elements.2994:
	lw		x6, 4(x27)	# 2388
	addi	x7, x0, 0	# 2388
	ble		x7, x5, ble.17462	# 2388
	jalr	x0, x1, 0	# 2391
ble.17462:
	ori		x7, x0, 3	# 2382
	lui		x8, %hi(l.10373)	# 2382
	ori		x8, x0, %lo(l.10373)	# 2382
	flw		f0, 0(x8)	# 2382
	sw		x27, 0(x2)	# 2382
	sw		x4, -4(x2)	# 2382
	sw		x5, -8(x2)	# 2382
	sw		x6, -12(x2)	# 2382
	addi	x4, x7, 0
	sw		x1, -16(x2)	# 2382
	addi	x2, x2, -20	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 20	# 2382
	lw		x1, -16(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x0, 0	# 2383
	ori		x6, x0, 4	# 2383
	mul		x4, x4, x6	# 2383
	lw		x6, -12(x2)	# 2383
	add		x4, x6, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -16(x2)	# 2383
	sw		x1, -20(x2)	# 2383
	addi	x2, x2, -24	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 24	# 2383
	lw		x1, -20(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x4, -16(x2)	# 2384
	sw		x4, 0(x5)	# 2384
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -8(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -4(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	ori		x4, x0, 1	# 2390
	sub		x4, x6, x4	# 2390
	addi	x5, x0, 0	# 2388
	ble		x5, x4, ble.17464	# 2388
	jalr	x0, x1, 0	# 2391
ble.17464:
	ori		x5, x0, 3	# 2382
	lui		x6, %hi(l.10373)	# 2382
	ori		x6, x0, %lo(l.10373)	# 2382
	flw		f0, 0(x6)	# 2382
	sw		x4, -20(x2)	# 2382
	addi	x4, x5, 0
	sw		x1, -24(x2)	# 2382
	addi	x2, x2, -28	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 28	# 2382
	lw		x1, -24(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x0, 0	# 2383
	ori		x6, x0, 4	# 2383
	mul		x4, x4, x6	# 2383
	lw		x6, -12(x2)	# 2383
	add		x4, x6, x4	# 2383
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
	addi	x4, x5, 0	# 2384
	ori		x5, x0, 4	# 2389
	lw		x6, -20(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x7, -4(x2)	# 2389
	add		x5, x7, x5	# 2389
	sw		x4, 0(x5)	# 2389
	ori		x4, x0, 1	# 2390
	sub		x5, x6, x4	# 2390
	lw		x27, 0(x2)	# 2390
	addi	x4, x7, 0
	lw		x31, 0(x27)	# 2390
	jalr	x0, x31, 0	# 2390
create_dirvecs.2997:
	lw		x5, 12(x27)	# 2395
	lw		x6, 8(x27)	# 2395
	lw		x7, 4(x27)	# 2395
	addi	x8, x0, 0	# 2395
	ble		x8, x4, ble.17466	# 2395
	jalr	x0, x1, 0	# 2399
ble.17466:
	ori		x8, x0, 120	# 2396
	ori		x9, x0, 3	# 2382
	lui		x10, %hi(l.10373)	# 2382
	ori		x10, x0, %lo(l.10373)	# 2382
	flw		f0, 0(x10)	# 2382
	sw		x27, 0(x2)	# 2382
	sw		x7, -4(x2)	# 2382
	sw		x6, -8(x2)	# 2382
	sw		x4, -12(x2)	# 2382
	sw		x8, -16(x2)	# 2382
	sw		x5, -20(x2)	# 2382
	addi	x4, x9, 0
	sw		x1, -24(x2)	# 2382
	addi	x2, x2, -28	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 28	# 2382
	lw		x1, -24(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x0, 0	# 2383
	ori		x6, x0, 4	# 2383
	mul		x4, x4, x6	# 2383
	lw		x6, -20(x2)	# 2383
	add		x4, x6, x4	# 2383
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
	ori		x5, x0, 4	# 2396
	lw		x6, -12(x2)	# 2396
	mul		x5, x6, x5	# 2396
	lw		x7, -8(x2)	# 2396
	add		x5, x7, x5	# 2396
	sw		x4, 0(x5)	# 2396
	ori		x4, x0, 4	# 2397
	mul		x4, x6, x4	# 2397
	add		x4, x7, x4	# 2397
	lw		x4, 0(x4)	# 2397
	ori		x5, x0, 118	# 2397
	ori		x8, x0, 3	# 2382
	lui		x9, %hi(l.10373)	# 2382
	ori		x9, x0, %lo(l.10373)	# 2382
	flw		f0, 0(x9)	# 2382
	sw		x4, -28(x2)	# 2382
	sw		x5, -32(x2)	# 2382
	addi	x4, x8, 0
	sw		x1, -36(x2)	# 2382
	addi	x2, x2, -40	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 40	# 2382
	lw		x1, -36(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x0, 0	# 2383
	ori		x6, x0, 4	# 2383
	mul		x4, x4, x6	# 2383
	lw		x6, -20(x2)	# 2383
	add		x4, x6, x4	# 2383
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
	ori		x5, x0, 4	# 2389
	lw		x6, -32(x2)	# 2389
	mul		x5, x6, x5	# 2389
	lw		x6, -28(x2)	# 2389
	add		x5, x6, x5	# 2389
	sw		x4, 0(x5)	# 2389
	ori		x5, x0, 117	# 2390
	lw		x27, -4(x2)	# 2390
	addi	x4, x6, 0
	sw		x1, -40(x2)	# 2390
	addi	x2, x2, -44	# 2390
	lw		x31, 0(x27)	# 2390
	jalr	x1, x31, 0	# 2390
	addi	x2, x2, 44	# 2390
	lw		x1, -40(x2)	# 2390
	ori		x4, x0, 1	# 2398
	lw		x5, -12(x2)	# 2398
	sub		x4, x5, x4	# 2398
	addi	x5, x0, 0	# 2395
	ble		x5, x4, ble.17468	# 2395
	jalr	x0, x1, 0	# 2399
ble.17468:
	ori		x5, x0, 120	# 2396
	ori		x6, x0, 3	# 2382
	lui		x7, %hi(l.10373)	# 2382
	ori		x7, x0, %lo(l.10373)	# 2382
	flw		f0, 0(x7)	# 2382
	sw		x4, -40(x2)	# 2382
	sw		x5, -44(x2)	# 2382
	addi	x4, x6, 0
	sw		x1, -48(x2)	# 2382
	addi	x2, x2, -52	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 52	# 2382
	lw		x1, -48(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x0, 0	# 2383
	ori		x6, x0, 4	# 2383
	mul		x4, x4, x6	# 2383
	lw		x6, -20(x2)	# 2383
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
	lw		x4, -44(x2)	# 2396
	sw		x1, -52(x2)	# 2396
	addi	x2, x2, -56	# 2396
	jal		x1, min_caml_create_array	# 2396
	addi	x2, x2, 56	# 2396
	lw		x1, -52(x2)	# 2396
	ori		x5, x0, 4	# 2396
	lw		x6, -40(x2)	# 2396
	mul		x5, x6, x5	# 2396
	lw		x7, -8(x2)	# 2396
	add		x5, x7, x5	# 2396
	sw		x4, 0(x5)	# 2396
	ori		x4, x0, 4	# 2397
	mul		x4, x6, x4	# 2397
	add		x4, x7, x4	# 2397
	lw		x4, 0(x4)	# 2397
	ori		x5, x0, 118	# 2397
	lw		x27, -4(x2)	# 2397
	sw		x1, -52(x2)	# 2397
	addi	x2, x2, -56	# 2397
	lw		x31, 0(x27)	# 2397
	jalr	x1, x31, 0	# 2397
	addi	x2, x2, 56	# 2397
	lw		x1, -52(x2)	# 2397
	ori		x4, x0, 1	# 2398
	lw		x5, -40(x2)	# 2398
	sub		x4, x5, x4	# 2398
	lw		x27, 0(x2)	# 2398
	lw		x31, 0(x27)	# 2398
	jalr	x0, x31, 0	# 2398
init_dirvec_constants.2999:
	lw		x6, 12(x27)	# 2407
	lw		x7, 8(x27)	# 2407
	lw		x8, 4(x27)	# 2407
	addi	x9, x0, 0	# 2407
	ble		x9, x5, ble.17470	# 2407
	jalr	x0, x1, 0	# 2410
ble.17470:
	ori		x9, x0, 4	# 2408
	mul		x9, x5, x9	# 2408
	add		x9, x4, x9	# 2408
	lw		x9, 0(x9)	# 2408
	addi	x10, x0, 0	# 1287
	ori		x11, x0, 4	# 1287
	mul		x10, x10, x11	# 1287
	add		x10, x7, x10	# 1287
	lw		x10, 0(x10)	# 1287
	ori		x11, x0, 1	# 1287
	sub		x10, x10, x11	# 1287
	addi	x11, x0, 0	# 1270
	sw		x27, 0(x2)	# 1270
	sw		x8, -4(x2)	# 1270
	sw		x6, -8(x2)	# 1270
	sw		x7, -12(x2)	# 1270
	sw		x4, -16(x2)	# 1270
	sw		x5, -20(x2)	# 1270
	ble		x11, x10, ble.17473	# 1270
	jal		x0, ble_cont.17472	# 1270
ble.17473:
	ori		x11, x0, 4	# 1271
	mul		x11, x10, x11	# 1271
	add		x11, x6, x11	# 1271
	lw		x11, 0(x11)	# 1271
	lw		x12, 4(x9)	# 645
	lw		x13, 0(x9)	# 639
	lw		x14, 4(x11)	# 353
	ori		x15, x0, 1	# 1275
	sw		x9, -24(x2)	# 1275
	beq		x14, x15, beq.17475	# 1275
	ori		x15, x0, 2	# 1277
	beq		x14, x15, beq.17477	# 1277
	sw		x12, -28(x2)	# 1280
	sw		x10, -32(x2)	# 1280
	addi	x5, x11, 0
	addi	x4, x13, 0
	sw		x1, -36(x2)	# 1280
	addi	x2, x2, -40	# 1280
	jal		x1, setup_second_table.2774	# 1280
	addi	x2, x2, 40	# 1280
	lw		x1, -36(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -32(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -28(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.17476	# 1277
beq.17477:
	sw		x12, -28(x2)	# 1278
	sw		x10, -32(x2)	# 1278
	addi	x5, x11, 0
	addi	x4, x13, 0
	sw		x1, -36(x2)	# 1278
	addi	x2, x2, -40	# 1278
	jal		x1, setup_surface_table.2771	# 1278
	addi	x2, x2, 40	# 1278
	lw		x1, -36(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -32(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -28(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.17476:
	jal		x0, beq_cont.17474	# 1275
beq.17475:
	sw		x12, -28(x2)	# 1276
	sw		x10, -32(x2)	# 1276
	addi	x5, x11, 0
	addi	x4, x13, 0
	sw		x1, -36(x2)	# 1276
	addi	x2, x2, -40	# 1276
	jal		x1, setup_rect_table.2768	# 1276
	addi	x2, x2, 40	# 1276
	lw		x1, -36(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -32(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -28(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.17474:
	ori		x4, x0, 1	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -24(x2)	# 1282
	lw		x27, -4(x2)	# 1282
	sw		x1, -36(x2)	# 1282
	addi	x2, x2, -40	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 40	# 1282
	lw		x1, -36(x2)	# 1282
ble_cont.17472:
	ori		x4, x0, 1	# 2409
	lw		x5, -20(x2)	# 2409
	sub		x4, x5, x4	# 2409
	addi	x5, x0, 0	# 2407
	ble		x5, x4, ble.17478	# 2407
	jalr	x0, x1, 0	# 2410
ble.17478:
	ori		x5, x0, 4	# 2408
	mul		x5, x4, x5	# 2408
	lw		x6, -16(x2)	# 2408
	add		x5, x6, x5	# 2408
	lw		x5, 0(x5)	# 2408
	addi	x7, x0, 0	# 1287
	ori		x8, x0, 4	# 1287
	mul		x7, x7, x8	# 1287
	lw		x8, -12(x2)	# 1287
	add		x7, x8, x7	# 1287
	lw		x7, 0(x7)	# 1287
	ori		x8, x0, 1	# 1287
	sub		x7, x7, x8	# 1287
	addi	x8, x0, 0	# 1270
	sw		x4, -36(x2)	# 1270
	ble		x8, x7, ble.17481	# 1270
	jal		x0, ble_cont.17480	# 1270
ble.17481:
	ori		x8, x0, 4	# 1271
	mul		x8, x7, x8	# 1271
	lw		x9, -8(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x9, 4(x5)	# 645
	lw		x10, 0(x5)	# 639
	lw		x11, 4(x8)	# 353
	ori		x12, x0, 1	# 1275
	sw		x5, -40(x2)	# 1275
	beq		x11, x12, beq.17483	# 1275
	ori		x12, x0, 2	# 1277
	beq		x11, x12, beq.17485	# 1277
	sw		x9, -44(x2)	# 1280
	sw		x7, -48(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -52(x2)	# 1280
	addi	x2, x2, -56	# 1280
	jal		x1, setup_second_table.2774	# 1280
	addi	x2, x2, 56	# 1280
	lw		x1, -52(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -48(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -44(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.17484	# 1277
beq.17485:
	sw		x9, -44(x2)	# 1278
	sw		x7, -48(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -52(x2)	# 1278
	addi	x2, x2, -56	# 1278
	jal		x1, setup_surface_table.2771	# 1278
	addi	x2, x2, 56	# 1278
	lw		x1, -52(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -48(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -44(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.17484:
	jal		x0, beq_cont.17482	# 1275
beq.17483:
	sw		x9, -44(x2)	# 1276
	sw		x7, -48(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x10, 0
	sw		x1, -52(x2)	# 1276
	addi	x2, x2, -56	# 1276
	jal		x1, setup_rect_table.2768	# 1276
	addi	x2, x2, 56	# 1276
	lw		x1, -52(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -48(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -44(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.17482:
	ori		x4, x0, 1	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -40(x2)	# 1282
	lw		x27, -4(x2)	# 1282
	sw		x1, -52(x2)	# 1282
	addi	x2, x2, -56	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 56	# 1282
	lw		x1, -52(x2)	# 1282
ble_cont.17480:
	ori		x4, x0, 1	# 2409
	lw		x5, -36(x2)	# 2409
	sub		x5, x5, x4	# 2409
	lw		x4, -16(x2)	# 2409
	lw		x27, 0(x2)	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x0, x31, 0	# 2409
init_vecset_constants.3002:
	lw		x5, 20(x27)	# 2414
	lw		x6, 16(x27)	# 2414
	lw		x7, 12(x27)	# 2414
	lw		x8, 8(x27)	# 2414
	lw		x9, 4(x27)	# 2414
	addi	x10, x0, 0	# 2414
	ble		x10, x4, ble.17486	# 2414
	jalr	x0, x1, 0	# 2417
ble.17486:
	ori		x10, x0, 4	# 2415
	mul		x10, x4, x10	# 2415
	add		x10, x9, x10	# 2415
	lw		x10, 0(x10)	# 2415
	ori		x11, x0, 119	# 2415
	ori		x12, x0, 4	# 2408
	mul		x11, x11, x12	# 2408
	add		x11, x10, x11	# 2408
	lw		x11, 0(x11)	# 2408
	addi	x12, x0, 0	# 1287
	ori		x13, x0, 4	# 1287
	mul		x12, x12, x13	# 1287
	add		x6, x6, x12	# 1287
	lw		x6, 0(x6)	# 1287
	ori		x12, x0, 1	# 1287
	sub		x6, x6, x12	# 1287
	addi	x12, x0, 0	# 1270
	sw		x27, 0(x2)	# 1270
	sw		x9, -4(x2)	# 1270
	sw		x4, -8(x2)	# 1270
	sw		x10, -12(x2)	# 1270
	sw		x8, -16(x2)	# 1270
	ble		x12, x6, ble.17489	# 1270
	jal		x0, ble_cont.17488	# 1270
ble.17489:
	ori		x12, x0, 4	# 1271
	mul		x12, x6, x12	# 1271
	add		x5, x5, x12	# 1271
	lw		x5, 0(x5)	# 1271
	lw		x12, 4(x11)	# 645
	lw		x13, 0(x11)	# 639
	lw		x14, 4(x5)	# 353
	ori		x15, x0, 1	# 1275
	sw		x11, -20(x2)	# 1275
	sw		x7, -24(x2)	# 1275
	beq		x14, x15, beq.17491	# 1275
	ori		x15, x0, 2	# 1277
	beq		x14, x15, beq.17493	# 1277
	sw		x12, -28(x2)	# 1280
	sw		x6, -32(x2)	# 1280
	addi	x4, x13, 0
	sw		x1, -36(x2)	# 1280
	addi	x2, x2, -40	# 1280
	jal		x1, setup_second_table.2774	# 1280
	addi	x2, x2, 40	# 1280
	lw		x1, -36(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -32(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -28(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.17492	# 1277
beq.17493:
	sw		x12, -28(x2)	# 1278
	sw		x6, -32(x2)	# 1278
	addi	x4, x13, 0
	sw		x1, -36(x2)	# 1278
	addi	x2, x2, -40	# 1278
	jal		x1, setup_surface_table.2771	# 1278
	addi	x2, x2, 40	# 1278
	lw		x1, -36(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -32(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -28(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.17492:
	jal		x0, beq_cont.17490	# 1275
beq.17491:
	sw		x12, -28(x2)	# 1276
	sw		x6, -32(x2)	# 1276
	addi	x4, x13, 0
	sw		x1, -36(x2)	# 1276
	addi	x2, x2, -40	# 1276
	jal		x1, setup_rect_table.2768	# 1276
	addi	x2, x2, 40	# 1276
	lw		x1, -36(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -32(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -28(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.17490:
	ori		x4, x0, 1	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -20(x2)	# 1282
	lw		x27, -24(x2)	# 1282
	sw		x1, -36(x2)	# 1282
	addi	x2, x2, -40	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 40	# 1282
	lw		x1, -36(x2)	# 1282
ble_cont.17488:
	ori		x5, x0, 118	# 2409
	lw		x4, -12(x2)	# 2409
	lw		x27, -16(x2)	# 2409
	sw		x1, -36(x2)	# 2409
	addi	x2, x2, -40	# 2409
	lw		x31, 0(x27)	# 2409
	jalr	x1, x31, 0	# 2409
	addi	x2, x2, 40	# 2409
	lw		x1, -36(x2)	# 2409
	ori		x4, x0, 1	# 2416
	lw		x5, -8(x2)	# 2416
	sub		x4, x5, x4	# 2416
	addi	x5, x0, 0	# 2414
	ble		x5, x4, ble.17494	# 2414
	jalr	x0, x1, 0	# 2417
ble.17494:
	ori		x5, x0, 4	# 2415
	mul		x5, x4, x5	# 2415
	lw		x6, -4(x2)	# 2415
	add		x5, x6, x5	# 2415
	lw		x5, 0(x5)	# 2415
	ori		x6, x0, 119	# 2415
	lw		x27, -16(x2)	# 2415
	sw		x4, -36(x2)	# 2415
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -40(x2)	# 2415
	addi	x2, x2, -44	# 2415
	lw		x31, 0(x27)	# 2415
	jalr	x1, x31, 0	# 2415
	addi	x2, x2, 44	# 2415
	lw		x1, -40(x2)	# 2415
	ori		x4, x0, 1	# 2416
	lw		x5, -36(x2)	# 2416
	sub		x4, x5, x4	# 2416
	lw		x27, 0(x2)	# 2416
	lw		x31, 0(x27)	# 2416
	jalr	x0, x31, 0	# 2416
setup_rect_reflection.3013:
	lw		x6, 24(x27)	# 2441
	lw		x7, 20(x27)	# 2441
	lw		x8, 16(x27)	# 2441
	lw		x9, 12(x27)	# 2441
	lw		x10, 8(x27)	# 2441
	lw		x11, 4(x27)	# 2441
	ori		x12, x0, 4	# 2441
	mul		x4, x4, x12	# 2441
	addi	x12, x0, 0	# 2442
	ori		x13, x0, 4	# 2442
	mul		x12, x12, x13	# 2442
	add		x12, x8, x12	# 2442
	lw		x12, 0(x12)	# 2442
	lui		x13, %hi(l.10376)	# 2443
	ori		x13, x0, %lo(l.10376)	# 2443
	flw		f0, 0(x13)	# 2443
	lw		x5, 28(x5)	# 461
	addi	x13, x0, 0	# 466
	ori		x14, x0, 4	# 466
	mul		x13, x13, x14	# 466
	add		x5, x5, x13	# 466
	flw		f1, 0(x5)	# 466
	fsub	f0, f0, f1	# 2443
	addi	x5, x0, 0	# 2444
	ori		x13, x0, 4	# 2444
	mul		x5, x5, x13	# 2444
	add		x5, x10, x5	# 2444
	flw		f1, 0(x5)	# 2444
	fsub	x31, x31, x31	# 4
	fsub	f1, x31, f1	# 4
	ori		x5, x0, 1	# 2445
	ori		x13, x0, 4	# 2445
	mul		x5, x5, x13	# 2445
	add		x5, x10, x5	# 2445
	flw		f2, 0(x5)	# 2445
	fsub	x31, x31, x31	# 4
	fsub	f2, x31, f2	# 4
	ori		x5, x0, 2	# 2446
	ori		x13, x0, 4	# 2446
	mul		x5, x5, x13	# 2446
	add		x5, x10, x5	# 2446
	flw		f3, 0(x5)	# 2446
	fsub	x31, x31, x31	# 4
	fsub	f3, x31, f3	# 4
	addi	x5, x4, 1	# 2447
	addi	x13, x0, 0	# 2447
	ori		x14, x0, 4	# 2447
	mul		x13, x13, x14	# 2447
	add		x13, x10, x13	# 2447
	flw		f4, 0(x13)	# 2447
	ori		x13, x0, 3	# 2382
	lui		x14, %hi(l.10373)	# 2382
	ori		x14, x0, %lo(l.10373)	# 2382
	flw		f5, 0(x14)	# 2382
	sw		x8, 0(x2)	# 2382
	fsw		f1, -8(x2)	# 2382
	sw		x10, -16(x2)	# 2382
	sw		x4, -20(x2)	# 2382
	sw		x6, -24(x2)	# 2382
	sw		x12, -28(x2)	# 2382
	sw		x5, -32(x2)	# 2382
	fsw		f0, -40(x2)	# 2382
	sw		x11, -48(x2)	# 2382
	sw		x7, -52(x2)	# 2382
	fsw		f3, -56(x2)	# 2382
	fsw		f2, -64(x2)	# 2382
	fsw		f4, -72(x2)	# 2382
	sw		x9, -80(x2)	# 2382
	addi	x4, x13, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f5
	sw		x1, -84(x2)	# 2382
	addi	x2, x2, -88	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 88	# 2382
	lw		x1, -84(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x0, 0	# 2383
	ori		x6, x0, 4	# 2383
	mul		x4, x4, x6	# 2383
	lw		x6, -80(x2)	# 2383
	add		x4, x6, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -84(x2)	# 2383
	sw		x1, -88(x2)	# 2383
	addi	x2, x2, -92	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 92	# 2383
	lw		x1, -88(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -84(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	addi	x7, x0, 0	# 240
	ori		x8, x0, 4	# 240
	mul		x7, x7, x8	# 240
	add		x7, x6, x7	# 240
	flw		f0, -72(x2)	# 240
	fsw		f0, 0(x7)	# 240
	ori		x7, x0, 1	# 241
	ori		x8, x0, 4	# 241
	mul		x7, x7, x8	# 241
	add		x7, x6, x7	# 241
	flw		f0, -64(x2)	# 241
	fsw		f0, 0(x7)	# 241
	ori		x7, x0, 2	# 242
	ori		x8, x0, 4	# 242
	mul		x7, x7, x8	# 242
	add		x7, x6, x7	# 242
	flw		f1, -56(x2)	# 242
	fsw		f1, 0(x7)	# 242
	addi	x7, x0, 0	# 1287
	ori		x8, x0, 4	# 1287
	mul		x7, x7, x8	# 1287
	lw		x8, -80(x2)	# 1287
	add		x7, x8, x7	# 1287
	lw		x7, 0(x7)	# 1287
	ori		x9, x0, 1	# 1287
	sub		x7, x7, x9	# 1287
	addi	x9, x0, 0	# 1270
	sw		x5, -88(x2)	# 1270
	ble		x9, x7, ble.17499	# 1270
	jal		x0, ble_cont.17498	# 1270
ble.17499:
	ori		x9, x0, 4	# 1271
	mul		x9, x7, x9	# 1271
	lw		x10, -52(x2)	# 1271
	add		x9, x10, x9	# 1271
	lw		x9, 0(x9)	# 1271
	lw		x11, 4(x9)	# 353
	ori		x12, x0, 1	# 1275
	beq		x11, x12, beq.17501	# 1275
	ori		x12, x0, 2	# 1277
	beq		x11, x12, beq.17503	# 1277
	sw		x4, -92(x2)	# 1280
	sw		x7, -96(x2)	# 1280
	addi	x5, x9, 0
	addi	x4, x6, 0
	sw		x1, -100(x2)	# 1280
	addi	x2, x2, -104	# 1280
	jal		x1, setup_second_table.2774	# 1280
	addi	x2, x2, 104	# 1280
	lw		x1, -100(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -96(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -92(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.17502	# 1277
beq.17503:
	sw		x4, -92(x2)	# 1278
	sw		x7, -96(x2)	# 1278
	addi	x5, x9, 0
	addi	x4, x6, 0
	sw		x1, -100(x2)	# 1278
	addi	x2, x2, -104	# 1278
	jal		x1, setup_surface_table.2771	# 1278
	addi	x2, x2, 104	# 1278
	lw		x1, -100(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -96(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -92(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.17502:
	jal		x0, beq_cont.17500	# 1275
beq.17501:
	sw		x4, -92(x2)	# 1276
	sw		x7, -96(x2)	# 1276
	addi	x5, x9, 0
	addi	x4, x6, 0
	sw		x1, -100(x2)	# 1276
	addi	x2, x2, -104	# 1276
	jal		x1, setup_rect_table.2768	# 1276
	addi	x2, x2, 104	# 1276
	lw		x1, -100(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -96(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -92(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.17500:
	ori		x4, x0, 1	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -88(x2)	# 1282
	lw		x27, -48(x2)	# 1282
	sw		x1, -100(x2)	# 1282
	addi	x2, x2, -104	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 104	# 1282
	lw		x1, -100(x2)	# 1282
ble_cont.17498:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -40(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -88(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -32(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -28(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x7, -24(x2)	# 2436
	add		x5, x7, x5	# 2436
	sw		x4, 0(x5)	# 2436
	addi	x4, x6, 1	# 2448
	lw		x5, -20(x2)	# 2448
	addi	x8, x5, 2	# 2448
	ori		x9, x0, 1	# 2448
	ori		x10, x0, 4	# 2448
	mul		x9, x9, x10	# 2448
	lw		x10, -16(x2)	# 2448
	add		x9, x10, x9	# 2448
	flw		f1, 0(x9)	# 2448
	ori		x9, x0, 3	# 2382
	lui		x11, %hi(l.10373)	# 2382
	ori		x11, x0, %lo(l.10373)	# 2382
	flw		f2, 0(x11)	# 2382
	sw		x4, -100(x2)	# 2382
	sw		x8, -104(x2)	# 2382
	fsw		f1, -112(x2)	# 2382
	addi	x4, x9, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -120(x2)	# 2382
	addi	x2, x2, -124	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 124	# 2382
	lw		x1, -120(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x0, 0	# 2383
	ori		x6, x0, 4	# 2383
	mul		x4, x4, x6	# 2383
	lw		x6, -80(x2)	# 2383
	add		x4, x6, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -120(x2)	# 2383
	sw		x1, -124(x2)	# 2383
	addi	x2, x2, -128	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 128	# 2383
	lw		x1, -124(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -120(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	addi	x7, x0, 0	# 240
	ori		x8, x0, 4	# 240
	mul		x7, x7, x8	# 240
	add		x7, x6, x7	# 240
	flw		f0, -8(x2)	# 240
	fsw		f0, 0(x7)	# 240
	ori		x7, x0, 1	# 241
	ori		x8, x0, 4	# 241
	mul		x7, x7, x8	# 241
	add		x7, x6, x7	# 241
	flw		f1, -112(x2)	# 241
	fsw		f1, 0(x7)	# 241
	ori		x7, x0, 2	# 242
	ori		x8, x0, 4	# 242
	mul		x7, x7, x8	# 242
	add		x7, x6, x7	# 242
	flw		f1, -56(x2)	# 242
	fsw		f1, 0(x7)	# 242
	addi	x7, x0, 0	# 1287
	ori		x8, x0, 4	# 1287
	mul		x7, x7, x8	# 1287
	lw		x8, -80(x2)	# 1287
	add		x7, x8, x7	# 1287
	lw		x7, 0(x7)	# 1287
	ori		x9, x0, 1	# 1287
	sub		x7, x7, x9	# 1287
	addi	x9, x0, 0	# 1270
	sw		x5, -124(x2)	# 1270
	ble		x9, x7, ble.17506	# 1270
	jal		x0, ble_cont.17505	# 1270
ble.17506:
	ori		x9, x0, 4	# 1271
	mul		x9, x7, x9	# 1271
	lw		x10, -52(x2)	# 1271
	add		x9, x10, x9	# 1271
	lw		x9, 0(x9)	# 1271
	lw		x11, 4(x9)	# 353
	ori		x12, x0, 1	# 1275
	beq		x11, x12, beq.17508	# 1275
	ori		x12, x0, 2	# 1277
	beq		x11, x12, beq.17510	# 1277
	sw		x4, -128(x2)	# 1280
	sw		x7, -132(x2)	# 1280
	addi	x5, x9, 0
	addi	x4, x6, 0
	sw		x1, -136(x2)	# 1280
	addi	x2, x2, -140	# 1280
	jal		x1, setup_second_table.2774	# 1280
	addi	x2, x2, 140	# 1280
	lw		x1, -136(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -132(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -128(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.17509	# 1277
beq.17510:
	sw		x4, -128(x2)	# 1278
	sw		x7, -132(x2)	# 1278
	addi	x5, x9, 0
	addi	x4, x6, 0
	sw		x1, -136(x2)	# 1278
	addi	x2, x2, -140	# 1278
	jal		x1, setup_surface_table.2771	# 1278
	addi	x2, x2, 140	# 1278
	lw		x1, -136(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -132(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -128(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.17509:
	jal		x0, beq_cont.17507	# 1275
beq.17508:
	sw		x4, -128(x2)	# 1276
	sw		x7, -132(x2)	# 1276
	addi	x5, x9, 0
	addi	x4, x6, 0
	sw		x1, -136(x2)	# 1276
	addi	x2, x2, -140	# 1276
	jal		x1, setup_rect_table.2768	# 1276
	addi	x2, x2, 140	# 1276
	lw		x1, -136(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -132(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -128(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.17507:
	ori		x4, x0, 1	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -124(x2)	# 1282
	lw		x27, -48(x2)	# 1282
	sw		x1, -136(x2)	# 1282
	addi	x2, x2, -140	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 140	# 1282
	lw		x1, -136(x2)	# 1282
ble_cont.17505:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -40(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -124(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -104(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -100(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x6, -24(x2)	# 2436
	add		x5, x6, x5	# 2436
	sw		x4, 0(x5)	# 2436
	lw		x4, -28(x2)	# 2449
	addi	x5, x4, 2	# 2449
	lw		x7, -20(x2)	# 2449
	addi	x7, x7, 3	# 2449
	ori		x8, x0, 2	# 2449
	ori		x9, x0, 4	# 2449
	mul		x8, x8, x9	# 2449
	lw		x9, -16(x2)	# 2449
	add		x8, x9, x8	# 2449
	flw		f1, 0(x8)	# 2449
	ori		x8, x0, 3	# 2382
	lui		x9, %hi(l.10373)	# 2382
	ori		x9, x0, %lo(l.10373)	# 2382
	flw		f2, 0(x9)	# 2382
	sw		x5, -136(x2)	# 2382
	sw		x7, -140(x2)	# 2382
	fsw		f1, -144(x2)	# 2382
	addi	x4, x8, 0
	fsub	f0, f0, f0
	fadd	f0, f0, f2
	sw		x1, -152(x2)	# 2382
	addi	x2, x2, -156	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 156	# 2382
	lw		x1, -152(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x0, 0	# 2383
	ori		x6, x0, 4	# 2383
	mul		x4, x4, x6	# 2383
	lw		x6, -80(x2)	# 2383
	add		x4, x6, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -152(x2)	# 2383
	sw		x1, -156(x2)	# 2383
	addi	x2, x2, -160	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 160	# 2383
	lw		x1, -156(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -152(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	addi	x7, x0, 0	# 240
	ori		x8, x0, 4	# 240
	mul		x7, x7, x8	# 240
	add		x7, x6, x7	# 240
	flw		f0, -8(x2)	# 240
	fsw		f0, 0(x7)	# 240
	ori		x7, x0, 1	# 241
	ori		x8, x0, 4	# 241
	mul		x7, x7, x8	# 241
	add		x7, x6, x7	# 241
	flw		f0, -64(x2)	# 241
	fsw		f0, 0(x7)	# 241
	ori		x7, x0, 2	# 242
	ori		x8, x0, 4	# 242
	mul		x7, x7, x8	# 242
	add		x7, x6, x7	# 242
	flw		f0, -144(x2)	# 242
	fsw		f0, 0(x7)	# 242
	addi	x7, x0, 0	# 1287
	ori		x8, x0, 4	# 1287
	mul		x7, x7, x8	# 1287
	lw		x8, -80(x2)	# 1287
	add		x7, x8, x7	# 1287
	lw		x7, 0(x7)	# 1287
	ori		x8, x0, 1	# 1287
	sub		x7, x7, x8	# 1287
	addi	x8, x0, 0	# 1270
	sw		x5, -156(x2)	# 1270
	ble		x8, x7, ble.17512	# 1270
	jal		x0, ble_cont.17511	# 1270
ble.17512:
	ori		x8, x0, 4	# 1271
	mul		x8, x7, x8	# 1271
	lw		x9, -52(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x9, 4(x8)	# 353
	ori		x10, x0, 1	# 1275
	beq		x9, x10, beq.17514	# 1275
	ori		x10, x0, 2	# 1277
	beq		x9, x10, beq.17516	# 1277
	sw		x4, -160(x2)	# 1280
	sw		x7, -164(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -168(x2)	# 1280
	addi	x2, x2, -172	# 1280
	jal		x1, setup_second_table.2774	# 1280
	addi	x2, x2, 172	# 1280
	lw		x1, -168(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -164(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -160(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.17515	# 1277
beq.17516:
	sw		x4, -160(x2)	# 1278
	sw		x7, -164(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -168(x2)	# 1278
	addi	x2, x2, -172	# 1278
	jal		x1, setup_surface_table.2771	# 1278
	addi	x2, x2, 172	# 1278
	lw		x1, -168(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -164(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -160(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.17515:
	jal		x0, beq_cont.17513	# 1275
beq.17514:
	sw		x4, -160(x2)	# 1276
	sw		x7, -164(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -168(x2)	# 1276
	addi	x2, x2, -172	# 1276
	jal		x1, setup_rect_table.2768	# 1276
	addi	x2, x2, 172	# 1276
	lw		x1, -168(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -164(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -160(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.17513:
	ori		x4, x0, 1	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -156(x2)	# 1282
	lw		x27, -48(x2)	# 1282
	sw		x1, -168(x2)	# 1282
	addi	x2, x2, -172	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 172	# 1282
	lw		x1, -168(x2)	# 1282
ble_cont.17511:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -40(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -156(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -140(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -136(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x6, -24(x2)	# 2436
	add		x5, x6, x5	# 2436
	sw		x4, 0(x5)	# 2436
	addi	x4, x0, 0	# 2450
	lw		x5, -28(x2)	# 2450
	addi	x5, x5, 3	# 2450
	ori		x6, x0, 4	# 2450
	mul		x4, x4, x6	# 2450
	lw		x6, 0(x2)	# 2450
	add		x4, x6, x4	# 2450
	sw		x5, 0(x4)	# 2450
	jalr	x0, x1, 0	# 2450
setup_surface_reflection.3016:
	lw		x6, 24(x27)	# 2455
	lw		x7, 20(x27)	# 2455
	lw		x8, 16(x27)	# 2455
	lw		x9, 12(x27)	# 2455
	lw		x10, 8(x27)	# 2455
	lw		x11, 4(x27)	# 2455
	ori		x12, x0, 4	# 2455
	mul		x4, x4, x12	# 2455
	addi	x4, x4, 1	# 2455
	addi	x12, x0, 0	# 2456
	ori		x13, x0, 4	# 2456
	mul		x12, x12, x13	# 2456
	add		x12, x8, x12	# 2456
	lw		x12, 0(x12)	# 2456
	lui		x13, %hi(l.10376)	# 2457
	ori		x13, x0, %lo(l.10376)	# 2457
	flw		f0, 0(x13)	# 2457
	lw		x13, 28(x5)	# 461
	addi	x14, x0, 0	# 466
	ori		x15, x0, 4	# 466
	mul		x14, x14, x15	# 466
	add		x13, x13, x14	# 466
	flw		f1, 0(x13)	# 466
	fsub	f0, f0, f1	# 2457
	lw		x13, 16(x5)	# 421
	sw		x8, 0(x2)	# 2458
	sw		x6, -4(x2)	# 2458
	sw		x12, -8(x2)	# 2458
	sw		x4, -12(x2)	# 2458
	fsw		f0, -16(x2)	# 2458
	sw		x11, -24(x2)	# 2458
	sw		x7, -28(x2)	# 2458
	sw		x9, -32(x2)	# 2458
	sw		x10, -36(x2)	# 2458
	sw		x5, -40(x2)	# 2458
	addi	x5, x13, 0
	addi	x4, x10, 0
	sw		x1, -44(x2)	# 2458
	addi	x2, x2, -48	# 2458
	jal		x1, veciprod.2568	# 2458
	addi	x2, x2, 48	# 2458
	lw		x1, -44(x2)	# 2458
	lui		x4, %hi(l.10825)	# 2461
	ori		x4, x0, %lo(l.10825)	# 2461
	flw		f1, 0(x4)	# 2461
	lw		x4, -40(x2)	# 391
	lw		x5, 16(x4)	# 391
	addi	x6, x0, 0	# 396
	ori		x7, x0, 4	# 396
	mul		x6, x6, x7	# 396
	add		x5, x5, x6	# 396
	flw		f2, 0(x5)	# 396
	fmul	f1, f1, f2	# 2461
	fmul	f1, f1, f0	# 2461
	addi	x5, x0, 0	# 2461
	ori		x6, x0, 4	# 2461
	mul		x5, x5, x6	# 2461
	lw		x6, -36(x2)	# 2461
	add		x5, x6, x5	# 2461
	flw		f2, 0(x5)	# 2461
	fsub	f1, f1, f2	# 2461
	lui		x5, %hi(l.10825)	# 2462
	ori		x5, x0, %lo(l.10825)	# 2462
	flw		f2, 0(x5)	# 2462
	lw		x5, 16(x4)	# 401
	ori		x7, x0, 1	# 406
	ori		x8, x0, 4	# 406
	mul		x7, x7, x8	# 406
	add		x5, x5, x7	# 406
	flw		f3, 0(x5)	# 406
	fmul	f2, f2, f3	# 2462
	fmul	f2, f2, f0	# 2462
	ori		x5, x0, 1	# 2462
	ori		x7, x0, 4	# 2462
	mul		x5, x5, x7	# 2462
	add		x5, x6, x5	# 2462
	flw		f3, 0(x5)	# 2462
	fsub	f2, f2, f3	# 2462
	lui		x5, %hi(l.10825)	# 2463
	ori		x5, x0, %lo(l.10825)	# 2463
	flw		f3, 0(x5)	# 2463
	lw		x4, 16(x4)	# 411
	ori		x5, x0, 2	# 416
	ori		x7, x0, 4	# 416
	mul		x5, x5, x7	# 416
	add		x4, x4, x5	# 416
	flw		f4, 0(x4)	# 416
	fmul	f3, f3, f4	# 2463
	fmul	f0, f3, f0	# 2463
	ori		x4, x0, 2	# 2463
	ori		x5, x0, 4	# 2463
	mul		x4, x4, x5	# 2463
	add		x4, x6, x4	# 2463
	flw		f3, 0(x4)	# 2463
	fsub	f0, f0, f3	# 2463
	ori		x4, x0, 3	# 2382
	lui		x5, %hi(l.10373)	# 2382
	ori		x5, x0, %lo(l.10373)	# 2382
	flw		f3, 0(x5)	# 2382
	fsw		f0, -48(x2)	# 2382
	fsw		f2, -56(x2)	# 2382
	fsw		f1, -64(x2)	# 2382
	fsub	f0, f0, f0
	fadd	f0, f0, f3
	sw		x1, -72(x2)	# 2382
	addi	x2, x2, -76	# 2382
	jal		x1, min_caml_create_float_array	# 2382
	addi	x2, x2, 76	# 2382
	lw		x1, -72(x2)	# 2382
	addi	x5, x4, 0	# 2382
	addi	x4, x0, 0	# 2383
	ori		x6, x0, 4	# 2383
	mul		x4, x4, x6	# 2383
	lw		x6, -32(x2)	# 2383
	add		x4, x6, x4	# 2383
	lw		x4, 0(x4)	# 2383
	sw		x5, -72(x2)	# 2383
	sw		x1, -76(x2)	# 2383
	addi	x2, x2, -80	# 2383
	jal		x1, min_caml_create_array	# 2383
	addi	x2, x2, 80	# 2383
	lw		x1, -76(x2)	# 2383
	addi	x5, x3, 0	# 2384
	addi	x3, x3, 8	# 2384
	sw		x4, 4(x5)	# 2384
	lw		x6, -72(x2)	# 2384
	sw		x6, 0(x5)	# 2384
	addi	x7, x0, 0	# 240
	ori		x8, x0, 4	# 240
	mul		x7, x7, x8	# 240
	add		x7, x6, x7	# 240
	flw		f0, -64(x2)	# 240
	fsw		f0, 0(x7)	# 240
	ori		x7, x0, 1	# 241
	ori		x8, x0, 4	# 241
	mul		x7, x7, x8	# 241
	add		x7, x6, x7	# 241
	flw		f0, -56(x2)	# 241
	fsw		f0, 0(x7)	# 241
	ori		x7, x0, 2	# 242
	ori		x8, x0, 4	# 242
	mul		x7, x7, x8	# 242
	add		x7, x6, x7	# 242
	flw		f0, -48(x2)	# 242
	fsw		f0, 0(x7)	# 242
	addi	x7, x0, 0	# 1287
	ori		x8, x0, 4	# 1287
	mul		x7, x7, x8	# 1287
	lw		x8, -32(x2)	# 1287
	add		x7, x8, x7	# 1287
	lw		x7, 0(x7)	# 1287
	ori		x8, x0, 1	# 1287
	sub		x7, x7, x8	# 1287
	addi	x8, x0, 0	# 1270
	sw		x5, -76(x2)	# 1270
	ble		x8, x7, ble.17520	# 1270
	jal		x0, ble_cont.17519	# 1270
ble.17520:
	ori		x8, x0, 4	# 1271
	mul		x8, x7, x8	# 1271
	lw		x9, -28(x2)	# 1271
	add		x8, x9, x8	# 1271
	lw		x8, 0(x8)	# 1271
	lw		x9, 4(x8)	# 353
	ori		x10, x0, 1	# 1275
	beq		x9, x10, beq.17522	# 1275
	ori		x10, x0, 2	# 1277
	beq		x9, x10, beq.17524	# 1277
	sw		x4, -80(x2)	# 1280
	sw		x7, -84(x2)	# 1280
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -88(x2)	# 1280
	addi	x2, x2, -92	# 1280
	jal		x1, setup_second_table.2774	# 1280
	addi	x2, x2, 92	# 1280
	lw		x1, -88(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -84(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -80(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.17523	# 1277
beq.17524:
	sw		x4, -80(x2)	# 1278
	sw		x7, -84(x2)	# 1278
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -88(x2)	# 1278
	addi	x2, x2, -92	# 1278
	jal		x1, setup_surface_table.2771	# 1278
	addi	x2, x2, 92	# 1278
	lw		x1, -88(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -84(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -80(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.17523:
	jal		x0, beq_cont.17521	# 1275
beq.17522:
	sw		x4, -80(x2)	# 1276
	sw		x7, -84(x2)	# 1276
	addi	x5, x8, 0
	addi	x4, x6, 0
	sw		x1, -88(x2)	# 1276
	addi	x2, x2, -92	# 1276
	jal		x1, setup_rect_table.2768	# 1276
	addi	x2, x2, 92	# 1276
	lw		x1, -88(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -84(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -80(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.17521:
	ori		x4, x0, 1	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -76(x2)	# 1282
	lw		x27, -24(x2)	# 1282
	sw		x1, -88(x2)	# 1282
	addi	x2, x2, -92	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 92	# 1282
	lw		x1, -88(x2)	# 1282
ble_cont.17519:
	addi	x4, x3, 0	# 2436
	addi	x3, x3, 12	# 2436
	flw		f0, -16(x2)	# 2436
	fsw		f0, 8(x4)	# 2436
	lw		x5, -76(x2)	# 2436
	sw		x5, 4(x4)	# 2436
	lw		x5, -12(x2)	# 2436
	sw		x5, 0(x4)	# 2436
	ori		x5, x0, 4	# 2436
	lw		x6, -8(x2)	# 2436
	mul		x5, x6, x5	# 2436
	lw		x7, -4(x2)	# 2436
	add		x5, x7, x5	# 2436
	sw		x4, 0(x5)	# 2436
	addi	x4, x0, 0	# 2464
	addi	x5, x6, 1	# 2464
	ori		x6, x0, 4	# 2464
	mul		x4, x4, x6	# 2464
	lw		x6, 0(x2)	# 2464
	add		x4, x6, x4	# 2464
	sw		x5, 0(x4)	# 2464
	jalr	x0, x1, 0	# 2464
setup_reflections.3019:
	lw		x5, 12(x27)	# 2470
	lw		x6, 8(x27)	# 2470
	lw		x7, 4(x27)	# 2470
	addi	x8, x0, 0	# 2470
	ble		x8, x4, ble.17526	# 2470
	jalr	x0, x1, 0	# 2483
ble.17526:
	ori		x8, x0, 4	# 2471
	mul		x8, x4, x8	# 2471
	add		x7, x7, x8	# 2471
	lw		x7, 0(x7)	# 2471
	lw		x8, 8(x7)	# 363
	ori		x9, x0, 2	# 2472
	beq		x8, x9, beq.17528	# 2472
	jalr	x0, x1, 0	# 2482
beq.17528:
	lw		x8, 28(x7)	# 461
	addi	x9, x0, 0	# 466
	ori		x10, x0, 4	# 466
	mul		x9, x9, x10	# 466
	add		x8, x8, x9	# 466
	flw		f0, 0(x8)	# 466
	lui		x8, %hi(l.10376)	# 2473
	ori		x8, x0, %lo(l.10376)	# 2473
	flw		f1, 0(x8)	# 2473
	fle		x31, f1, f0	# 6
	beq		x31, x0, fle_else.17531	# 6
	addi	x8, x0, 0	# 6
	jal		x0, fle_cont.17530	# 6
fle_else.17531:
	ori		x8, x0, 1	# 6
fle_cont.17530:
	addi	x9, x0, 0	# 2473
	beq		x8, x9, beq.17532	# 2473
	lw		x8, 4(x7)	# 353
	ori		x9, x0, 1	# 2476
	beq		x8, x9, beq.17533	# 2476
	ori		x6, x0, 2	# 2478
	beq		x8, x6, beq.17534	# 2478
	jalr	x0, x1, 0	# 2480
beq.17534:
	addi	x27, x5, 0
	addi	x5, x7, 0
	lw		x31, 0(x27)	# 2479
	jalr	x0, x31, 0	# 2479
beq.17533:
	addi	x5, x7, 0
	addi	x27, x6, 0
	lw		x31, 0(x27)	# 2477
	jalr	x0, x31, 0	# 2477
beq.17532:
	jalr	x0, x1, 0	# 2481
rt.3021:
	lw		x7, 92(x27)	# 2492
	lw		x8, 88(x27)	# 2492
	lw		x9, 84(x27)	# 2492
	lw		x10, 80(x27)	# 2492
	lw		x11, 76(x27)	# 2492
	lw		x12, 72(x27)	# 2492
	lw		x13, 68(x27)	# 2492
	lw		x14, 64(x27)	# 2492
	lw		x15, 60(x27)	# 2492
	lw		x16, 56(x27)	# 2492
	lw		x17, 52(x27)	# 2492
	lw		x18, 48(x27)	# 2492
	lw		x19, 44(x27)	# 2492
	lw		x20, 40(x27)	# 2492
	lw		x21, 36(x27)	# 2492
	lw		x22, 32(x27)	# 2492
	lw		x23, 28(x27)	# 2492
	lw		x24, 24(x27)	# 2492
	lw		x25, 20(x27)	# 2492
	lw		x26, 16(x27)	# 2492
	lw		x31, 12(x27)	# 2492
	sw		x11, 0(x2)	# 2492
	lw		x11, 8(x27)	# 2492
	lw		x27, 4(x27)	# 2492
	sw		x17, -4(x2)	# 2492
	addi	x17, x0, 0	# 2492
	sw		x9, -8(x2)	# 2492
	ori		x9, x0, 4	# 2492
	mul		x9, x17, x9	# 2492
	add		x9, x25, x9	# 2492
	sw		x4, 0(x9)	# 2492
	ori		x9, x0, 1	# 2493
	ori		x17, x0, 4	# 2493
	mul		x9, x9, x17	# 2493
	add		x9, x25, x9	# 2493
	sw		x5, 0(x9)	# 2493
	addi	x9, x0, 0	# 2494
	ori		x17, x0, 2	# 2494
	div		x17, x4, x17	# 2494
	sw		x21, -12(x2)	# 2494
	ori		x21, x0, 4	# 2494
	mul		x9, x9, x21	# 2494
	add		x9, x26, x9	# 2494
	sw		x17, 0(x9)	# 2494
	ori		x9, x0, 1	# 2495
	ori		x17, x0, 2	# 2495
	div		x5, x5, x17	# 2495
	ori		x17, x0, 4	# 2495
	mul		x9, x9, x17	# 2495
	add		x9, x26, x9	# 2495
	sw		x5, 0(x9)	# 2495
	addi	x5, x0, 0	# 2496
	lui		x9, %hi(l.13454)	# 2496
	ori		x9, x0, %lo(l.13454)	# 2496
	flw		f0, 0(x9)	# 2496
	addi	x9, x0, 0	# 14
	sw		x23, -16(x2)	# 14
	sw		x11, -20(x2)	# 14
	sw		x19, -24(x2)	# 14
	sw		x8, -28(x2)	# 14
	sw		x22, -32(x2)	# 14
	sw		x24, -36(x2)	# 14
	sw		x27, -40(x2)	# 14
	sw		x31, -44(x2)	# 14
	sw		x6, -48(x2)	# 14
	sw		x7, -52(x2)	# 14
	sw		x18, -56(x2)	# 14
	sw		x16, -60(x2)	# 14
	sw		x13, -64(x2)	# 14
	sw		x20, -68(x2)	# 14
	sw		x14, -72(x2)	# 14
	sw		x15, -76(x2)	# 14
	sw		x12, -80(x2)	# 14
	sw		x25, -84(x2)	# 14
	sw		x10, -88(x2)	# 14
	sw		x5, -92(x2)	# 14
	fsw		f0, -96(x2)	# 14
	ble		x9, x4, ble.17538	# 14
	sub		x4, x0, x4	# 16
	sw		x1, -104(x2)	# 16
	addi	x2, x2, -108	# 16
	jal		x1, float_of_int.2489	# 16
	addi	x2, x2, 108	# 16
	lw		x1, -104(x2)	# 16
	fsub	x31, x31, x31	# 16
	fsub	f0, x31, f0	# 16
	jal		x0, ble_cont.17537	# 14
ble.17538:
	ori		x9, x0, 1	# 15
	ble		x9, x4, ble.17540	# 15
	lui		x4, %hi(l.10373)	# 15
	ori		x4, x0, %lo(l.10373)	# 15
	flw		f0, 0(x4)	# 15
	jal		x0, ble_cont.17539	# 15
ble.17540:
	ori		x9, x0, 1	# 15
	sub		x4, x4, x9	# 15
	sw		x1, -104(x2)	# 15
	addi	x2, x2, -108	# 15
	jal		x1, float_of_int.2489	# 15
	addi	x2, x2, 108	# 15
	lw		x1, -104(x2)	# 15
	lui		x4, %hi(l.10376)	# 15
	ori		x4, x0, %lo(l.10376)	# 15
	flw		f1, 0(x4)	# 15
	fadd	f0, f0, f1	# 15
ble_cont.17539:
ble_cont.17537:
	flw		f1, -96(x2)	# 2496
	fdiv	f0, f1, f0	# 2496
	ori		x4, x0, 4	# 2496
	lw		x5, -92(x2)	# 2496
	mul		x4, x5, x4	# 2496
	lw		x5, -88(x2)	# 2496
	add		x4, x5, x4	# 2496
	fsw		f0, 0(x4)	# 2496
	addi	x4, x0, 0	# 2306
	ori		x5, x0, 4	# 2306
	mul		x4, x4, x5	# 2306
	lw		x5, -84(x2)	# 2306
	add		x4, x5, x4	# 2306
	lw		x4, 0(x4)	# 2306
	sw		x4, -104(x2)	# 2306
	sw		x1, -108(x2)	# 2306
	addi	x2, x2, -112	# 2306
	jal		x1, create_pixel.2963	# 2306
	addi	x2, x2, 112	# 2306
	lw		x1, -108(x2)	# 2306
	addi	x5, x4, 0	# 2306
	lw		x4, -104(x2)	# 2306
	sw		x1, -108(x2)	# 2306
	addi	x2, x2, -112	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 112	# 2306
	lw		x1, -108(x2)	# 2306
	addi	x5, x0, 0	# 2307
	ori		x6, x0, 4	# 2307
	mul		x5, x5, x6	# 2307
	lw		x6, -84(x2)	# 2307
	add		x5, x6, x5	# 2307
	lw		x5, 0(x5)	# 2307
	ori		x7, x0, 2	# 2307
	sub		x5, x5, x7	# 2307
	addi	x7, x0, 0	# 2297
	ble		x7, x5, ble.17542	# 2297
	jal		x0, ble_cont.17541	# 2297
ble.17542:
	sw		x4, -108(x2)	# 2298
	sw		x5, -112(x2)	# 2298
	sw		x1, -116(x2)	# 2298
	addi	x2, x2, -120	# 2298
	jal		x1, create_pixel.2963	# 2298
	addi	x2, x2, 120	# 2298
	lw		x1, -116(x2)	# 2298
	ori		x5, x0, 4	# 2298
	lw		x6, -112(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -108(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	ori		x4, x0, 1	# 2299
	sub		x4, x6, x4	# 2299
	addi	x5, x0, 0	# 2297
	ble		x5, x4, ble.17544	# 2297
	addi	x4, x7, 0	# 2301
	jal		x0, ble_cont.17543	# 2297
ble.17544:
	sw		x4, -116(x2)	# 2298
	sw		x1, -120(x2)	# 2298
	addi	x2, x2, -124	# 2298
	jal		x1, create_pixel.2963	# 2298
	addi	x2, x2, 124	# 2298
	lw		x1, -120(x2)	# 2298
	ori		x5, x0, 4	# 2298
	lw		x6, -116(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -108(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	ori		x4, x0, 1	# 2299
	sub		x5, x6, x4	# 2299
	addi	x4, x7, 0
	sw		x1, -120(x2)	# 2299
	addi	x2, x2, -124	# 2299
	jal		x1, init_line_elements.2965	# 2299
	addi	x2, x2, 124	# 2299
	lw		x1, -120(x2)	# 2299
ble_cont.17543:
ble_cont.17541:
	addi	x5, x0, 0	# 2306
	ori		x6, x0, 4	# 2306
	mul		x5, x5, x6	# 2306
	lw		x6, -84(x2)	# 2306
	add		x5, x6, x5	# 2306
	lw		x5, 0(x5)	# 2306
	sw		x4, -120(x2)	# 2306
	sw		x5, -124(x2)	# 2306
	sw		x1, -128(x2)	# 2306
	addi	x2, x2, -132	# 2306
	jal		x1, create_pixel.2963	# 2306
	addi	x2, x2, 132	# 2306
	lw		x1, -128(x2)	# 2306
	addi	x5, x4, 0	# 2306
	lw		x4, -124(x2)	# 2306
	sw		x1, -128(x2)	# 2306
	addi	x2, x2, -132	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 132	# 2306
	lw		x1, -128(x2)	# 2306
	addi	x5, x0, 0	# 2307
	ori		x6, x0, 4	# 2307
	mul		x5, x5, x6	# 2307
	lw		x6, -84(x2)	# 2307
	add		x5, x6, x5	# 2307
	lw		x5, 0(x5)	# 2307
	ori		x7, x0, 2	# 2307
	sub		x5, x5, x7	# 2307
	addi	x7, x0, 0	# 2297
	ble		x7, x5, ble.17546	# 2297
	jal		x0, ble_cont.17545	# 2297
ble.17546:
	sw		x4, -128(x2)	# 2298
	sw		x5, -132(x2)	# 2298
	sw		x1, -136(x2)	# 2298
	addi	x2, x2, -140	# 2298
	jal		x1, create_pixel.2963	# 2298
	addi	x2, x2, 140	# 2298
	lw		x1, -136(x2)	# 2298
	ori		x5, x0, 4	# 2298
	lw		x6, -132(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -128(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	ori		x4, x0, 1	# 2299
	sub		x4, x6, x4	# 2299
	addi	x5, x0, 0	# 2297
	ble		x5, x4, ble.17548	# 2297
	addi	x4, x7, 0	# 2301
	jal		x0, ble_cont.17547	# 2297
ble.17548:
	sw		x4, -136(x2)	# 2298
	sw		x1, -140(x2)	# 2298
	addi	x2, x2, -144	# 2298
	jal		x1, create_pixel.2963	# 2298
	addi	x2, x2, 144	# 2298
	lw		x1, -140(x2)	# 2298
	ori		x5, x0, 4	# 2298
	lw		x6, -136(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -128(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	ori		x4, x0, 1	# 2299
	sub		x5, x6, x4	# 2299
	addi	x4, x7, 0
	sw		x1, -140(x2)	# 2299
	addi	x2, x2, -144	# 2299
	jal		x1, init_line_elements.2965	# 2299
	addi	x2, x2, 144	# 2299
	lw		x1, -140(x2)	# 2299
ble_cont.17547:
ble_cont.17545:
	addi	x5, x0, 0	# 2306
	ori		x6, x0, 4	# 2306
	mul		x5, x5, x6	# 2306
	lw		x6, -84(x2)	# 2306
	add		x5, x6, x5	# 2306
	lw		x5, 0(x5)	# 2306
	sw		x4, -140(x2)	# 2306
	sw		x5, -144(x2)	# 2306
	sw		x1, -148(x2)	# 2306
	addi	x2, x2, -152	# 2306
	jal		x1, create_pixel.2963	# 2306
	addi	x2, x2, 152	# 2306
	lw		x1, -148(x2)	# 2306
	addi	x5, x4, 0	# 2306
	lw		x4, -144(x2)	# 2306
	sw		x1, -148(x2)	# 2306
	addi	x2, x2, -152	# 2306
	jal		x1, min_caml_create_array	# 2306
	addi	x2, x2, 152	# 2306
	lw		x1, -148(x2)	# 2306
	addi	x5, x0, 0	# 2307
	ori		x6, x0, 4	# 2307
	mul		x5, x5, x6	# 2307
	lw		x6, -84(x2)	# 2307
	add		x5, x6, x5	# 2307
	lw		x5, 0(x5)	# 2307
	ori		x6, x0, 2	# 2307
	sub		x5, x5, x6	# 2307
	addi	x6, x0, 0	# 2297
	ble		x6, x5, ble.17550	# 2297
	jal		x0, ble_cont.17549	# 2297
ble.17550:
	sw		x4, -148(x2)	# 2298
	sw		x5, -152(x2)	# 2298
	sw		x1, -156(x2)	# 2298
	addi	x2, x2, -160	# 2298
	jal		x1, create_pixel.2963	# 2298
	addi	x2, x2, 160	# 2298
	lw		x1, -156(x2)	# 2298
	ori		x5, x0, 4	# 2298
	lw		x6, -152(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -148(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	ori		x4, x0, 1	# 2299
	sub		x4, x6, x4	# 2299
	addi	x5, x0, 0	# 2297
	ble		x5, x4, ble.17552	# 2297
	addi	x4, x7, 0	# 2301
	jal		x0, ble_cont.17551	# 2297
ble.17552:
	sw		x4, -156(x2)	# 2298
	sw		x1, -160(x2)	# 2298
	addi	x2, x2, -164	# 2298
	jal		x1, create_pixel.2963	# 2298
	addi	x2, x2, 164	# 2298
	lw		x1, -160(x2)	# 2298
	ori		x5, x0, 4	# 2298
	lw		x6, -156(x2)	# 2298
	mul		x5, x6, x5	# 2298
	lw		x7, -148(x2)	# 2298
	add		x5, x7, x5	# 2298
	sw		x4, 0(x5)	# 2298
	ori		x4, x0, 1	# 2299
	sub		x5, x6, x4	# 2299
	addi	x4, x7, 0
	sw		x1, -160(x2)	# 2299
	addi	x2, x2, -164	# 2299
	jal		x1, init_line_elements.2965	# 2299
	addi	x2, x2, 164	# 2299
	lw		x1, -160(x2)	# 2299
ble_cont.17551:
ble_cont.17549:
	lw		x27, -80(x2)	# 904
	sw		x4, -160(x2)	# 904
	sw		x1, -164(x2)	# 904
	addi	x2, x2, -168	# 904
	lw		x31, 0(x27)	# 904
	jalr	x1, x31, 0	# 904
	addi	x2, x2, 168	# 904
	lw		x1, -164(x2)	# 904
	lw		x27, -76(x2)	# 905
	sw		x1, -164(x2)	# 905
	addi	x2, x2, -168	# 905
	lw		x31, 0(x27)	# 905
	jalr	x1, x31, 0	# 905
	addi	x2, x2, 168	# 905
	lw		x1, -164(x2)	# 905
	addi	x4, x0, 0	# 870
	lw		x27, -72(x2)	# 862
	sw		x4, -164(x2)	# 862
	sw		x1, -168(x2)	# 862
	addi	x2, x2, -172	# 862
	lw		x31, 0(x27)	# 862
	jalr	x1, x31, 0	# 862
	addi	x2, x2, 172	# 862
	lw		x1, -168(x2)	# 862
	addi	x5, x0, 0	# 862
	beq		x4, x5, beq.17554	# 862
	ori		x4, x0, 1	# 863
	lw		x27, -64(x2)	# 863
	sw		x1, -168(x2)	# 863
	addi	x2, x2, -172	# 863
	lw		x31, 0(x27)	# 863
	jalr	x1, x31, 0	# 863
	addi	x2, x2, 172	# 863
	lw		x1, -168(x2)	# 863
	jal		x0, beq_cont.17553	# 862
beq.17554:
	addi	x4, x0, 0	# 865
	ori		x5, x0, 4	# 865
	mul		x4, x4, x5	# 865
	lw		x5, -68(x2)	# 865
	add		x4, x5, x4	# 865
	lw		x6, -164(x2)	# 865
	sw		x6, 0(x4)	# 865
beq_cont.17553:
	addi	x4, x0, 0	# 907
	lw		x27, -60(x2)	# 907
	sw		x1, -168(x2)	# 907
	addi	x2, x2, -172	# 907
	lw		x31, 0(x27)	# 907
	jalr	x1, x31, 0	# 907
	addi	x2, x2, 172	# 907
	lw		x1, -168(x2)	# 907
	addi	x4, x0, 0	# 908
	addi	x5, x0, 0	# 908
	sw		x4, -168(x2)	# 908
	addi	x4, x5, 0
	sw		x1, -172(x2)	# 908
	addi	x2, x2, -176	# 908
	jal		x1, read_or_network.2678	# 908
	addi	x2, x2, 176	# 908
	lw		x1, -172(x2)	# 908
	ori		x5, x0, 4	# 908
	lw		x6, -168(x2)	# 908
	mul		x5, x6, x5	# 908
	lw		x6, -56(x2)	# 908
	add		x5, x6, x5	# 908
	sw		x4, 0(x5)	# 908
	lw		x4, -48(x2)	# 2501
	lw		x27, -52(x2)	# 2501
	sw		x1, -172(x2)	# 2501
	addi	x2, x2, -176	# 2501
	lw		x31, 0(x27)	# 2501
	jalr	x1, x31, 0	# 2501
	addi	x2, x2, 176	# 2501
	lw		x1, -172(x2)	# 2501
	ori		x4, x0, 4	# 2421
	lw		x27, -44(x2)	# 2421
	sw		x1, -172(x2)	# 2421
	addi	x2, x2, -176	# 2421
	lw		x31, 0(x27)	# 2421
	jalr	x1, x31, 0	# 2421
	addi	x2, x2, 176	# 2421
	lw		x1, -172(x2)	# 2421
	ori		x4, x0, 9	# 2422
	addi	x5, x0, 0	# 2422
	addi	x6, x0, 0	# 2422
	lw		x27, -40(x2)	# 2422
	sw		x1, -172(x2)	# 2422
	addi	x2, x2, -176	# 2422
	lw		x31, 0(x27)	# 2422
	jalr	x1, x31, 0	# 2422
	addi	x2, x2, 176	# 2422
	lw		x1, -172(x2)	# 2422
	ori		x4, x0, 4	# 2423
	lw		x27, -36(x2)	# 2423
	sw		x1, -172(x2)	# 2423
	addi	x2, x2, -176	# 2423
	lw		x31, 0(x27)	# 2423
	jalr	x1, x31, 0	# 2423
	addi	x2, x2, 176	# 2423
	lw		x1, -172(x2)	# 2423
	addi	x4, x0, 0	# 259
	addi	x5, x0, 0	# 259
	ori		x6, x0, 4	# 259
	mul		x5, x5, x6	# 259
	lw		x6, -32(x2)	# 259
	add		x5, x6, x5	# 259
	flw		f0, 0(x5)	# 259
	ori		x5, x0, 4	# 259
	mul		x4, x4, x5	# 259
	lw		x5, -28(x2)	# 259
	add		x4, x5, x4	# 259
	fsw		f0, 0(x4)	# 259
	ori		x4, x0, 1	# 260
	ori		x7, x0, 1	# 260
	ori		x8, x0, 4	# 260
	mul		x7, x7, x8	# 260
	add		x7, x6, x7	# 260
	flw		f0, 0(x7)	# 260
	ori		x7, x0, 4	# 260
	mul		x4, x4, x7	# 260
	add		x4, x5, x4	# 260
	fsw		f0, 0(x4)	# 260
	ori		x4, x0, 2	# 261
	ori		x7, x0, 2	# 261
	ori		x8, x0, 4	# 261
	mul		x7, x7, x8	# 261
	add		x6, x6, x7	# 261
	flw		f0, 0(x6)	# 261
	ori		x6, x0, 4	# 261
	mul		x4, x4, x6	# 261
	add		x4, x5, x4	# 261
	fsw		f0, 0(x4)	# 261
	addi	x4, x0, 0	# 1287
	ori		x6, x0, 4	# 1287
	mul		x4, x4, x6	# 1287
	lw		x6, -68(x2)	# 1287
	add		x4, x6, x4	# 1287
	lw		x4, 0(x4)	# 1287
	ori		x7, x0, 1	# 1287
	sub		x4, x4, x7	# 1287
	addi	x7, x0, 0	# 1270
	ble		x7, x4, ble.17556	# 1270
	jal		x0, ble_cont.17555	# 1270
ble.17556:
	ori		x7, x0, 4	# 1271
	mul		x7, x4, x7	# 1271
	lw		x8, -24(x2)	# 1271
	add		x7, x8, x7	# 1271
	lw		x7, 0(x7)	# 1271
	lw		x8, 4(x7)	# 353
	ori		x9, x0, 1	# 1275
	beq		x8, x9, beq.17558	# 1275
	ori		x9, x0, 2	# 1277
	beq		x8, x9, beq.17560	# 1277
	sw		x4, -172(x2)	# 1280
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -176(x2)	# 1280
	addi	x2, x2, -180	# 1280
	jal		x1, setup_second_table.2774	# 1280
	addi	x2, x2, 180	# 1280
	lw		x1, -176(x2)	# 1280
	ori		x5, x0, 4	# 1280
	lw		x6, -172(x2)	# 1280
	mul		x5, x6, x5	# 1280
	lw		x7, -20(x2)	# 1280
	add		x5, x7, x5	# 1280
	sw		x4, 0(x5)	# 1280
	jal		x0, beq_cont.17559	# 1277
beq.17560:
	sw		x4, -172(x2)	# 1278
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -176(x2)	# 1278
	addi	x2, x2, -180	# 1278
	jal		x1, setup_surface_table.2771	# 1278
	addi	x2, x2, 180	# 1278
	lw		x1, -176(x2)	# 1278
	ori		x5, x0, 4	# 1278
	lw		x6, -172(x2)	# 1278
	mul		x5, x6, x5	# 1278
	lw		x7, -20(x2)	# 1278
	add		x5, x7, x5	# 1278
	sw		x4, 0(x5)	# 1278
beq_cont.17559:
	jal		x0, beq_cont.17557	# 1275
beq.17558:
	sw		x4, -172(x2)	# 1276
	addi	x4, x5, 0
	addi	x5, x7, 0
	sw		x1, -176(x2)	# 1276
	addi	x2, x2, -180	# 1276
	jal		x1, setup_rect_table.2768	# 1276
	addi	x2, x2, 180	# 1276
	lw		x1, -176(x2)	# 1276
	ori		x5, x0, 4	# 1276
	lw		x6, -172(x2)	# 1276
	mul		x5, x6, x5	# 1276
	lw		x7, -20(x2)	# 1276
	add		x5, x7, x5	# 1276
	sw		x4, 0(x5)	# 1276
beq_cont.17557:
	ori		x4, x0, 1	# 1282
	sub		x5, x6, x4	# 1282
	lw		x4, -12(x2)	# 1282
	lw		x27, -16(x2)	# 1282
	sw		x1, -176(x2)	# 1282
	addi	x2, x2, -180	# 1282
	lw		x31, 0(x27)	# 1282
	jalr	x1, x31, 0	# 1282
	addi	x2, x2, 180	# 1282
	lw		x1, -176(x2)	# 1282
ble_cont.17555:
	addi	x4, x0, 0	# 2505
	ori		x5, x0, 4	# 2505
	mul		x4, x4, x5	# 2505
	lw		x5, -68(x2)	# 2505
	add		x4, x5, x4	# 2505
	lw		x4, 0(x4)	# 2505
	ori		x5, x0, 1	# 2505
	sub		x4, x4, x5	# 2505
	lw		x27, -8(x2)	# 2505
	sw		x1, -176(x2)	# 2505
	addi	x2, x2, -180	# 2505
	lw		x31, 0(x27)	# 2505
	jalr	x1, x31, 0	# 2505
	addi	x2, x2, 180	# 2505
	lw		x1, -176(x2)	# 2505
	addi	x5, x0, 0	# 2506
	addi	x6, x0, 0	# 2506
	lw		x4, -140(x2)	# 2506
	lw		x27, -4(x2)	# 2506
	sw		x1, -176(x2)	# 2506
	addi	x2, x2, -180	# 2506
	lw		x31, 0(x27)	# 2506
	jalr	x1, x31, 0	# 2506
	addi	x2, x2, 180	# 2506
	lw		x1, -176(x2)	# 2506
	addi	x4, x0, 0	# 2507
	ori		x8, x0, 2	# 2507
	lw		x5, -120(x2)	# 2507
	lw		x6, -140(x2)	# 2507
	lw		x7, -160(x2)	# 2507
	lw		x9, -48(x2)	# 2507
	lw		x27, 0(x2)	# 2507
	lw		x31, 0(x27)	# 2507
	jalr	x0, x31, 0	# 2507
min_caml_start:
	addi	x2, x2, -4
	addi	x30, x0, 0
	lui		x4, %hi(l.13539)	# 20
	ori		x4, x0, %lo(l.13539)	# 20
	flw		f0, 0(x4)	# 20
	lui		x4, %hi(l.13541)	# 21
	ori		x4, x0, %lo(l.13541)	# 21
	flw		f1, 0(x4)	# 21
	lui		x4, %hi(l.13543)	# 22
	ori		x4, x0, %lo(l.13543)	# 22
	flw		f2, 0(x4)	# 22
	lui		x4, %hi(l.13545)	# 23
	ori		x4, x0, %lo(l.13545)	# 23
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
	addi	x3, x3, 24	# 53
	lui		x6, %hi(cos.2503)	# 53
	ori		x6, x0, %lo(cos.2503)	# 53
	sw		x6, 0(x5)	# 58
	sw		x4, 20(x5)	# 58
	fsw		f3, 16(x5)	# 58
	fsw		f2, 12(x5)	# 58
	fsw		f1, 8(x5)	# 58
	fsw		f0, 4(x5)	# 58
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
	fsw		f0, -8(x2)	# 76
	fsw		f1, -16(x2)	# 76
	fsw		f2, -24(x2)	# 76
	fsw		f3, -32(x2)	# 76
	sw		x4, -40(x2)	# 76
	addi	x5, x8, 0
	addi	x4, x7, 0
	sw		x1, -44(x2)	# 76
	addi	x2, x2, -48	# 76
	jal		x1, min_caml_create_array	# 76
	addi	x2, x2, 48	# 76
	lw		x1, -44(x2)	# 76
	addi	x5, x0, 0	# 81
	lui		x6, %hi(l.10373)	# 81
	ori		x6, x0, %lo(l.10373)	# 81
	flw		f0, 0(x6)	# 81
	sw		x4, -44(x2)	# 81
	addi	x4, x5, 0
	sw		x1, -48(x2)	# 81
	addi	x2, x2, -52	# 81
	jal		x1, min_caml_create_float_array	# 81
	addi	x2, x2, 52	# 81
	lw		x1, -48(x2)	# 81
	ori		x5, x0, 60	# 82
	addi	x6, x0, 0	# 82
	addi	x7, x0, 0	# 82
	addi	x8, x0, 0	# 82
	addi	x9, x0, 0	# 82
	addi	x10, x0, 0	# 82
	addi	x11, x3, 0	# 82
	addi	x3, x3, 44	# 82
	sw		x4, 40(x11)	# 82
	sw		x4, 36(x11)	# 82
	sw		x4, 32(x11)	# 82
	sw		x4, 28(x11)	# 82
	sw		x10, 24(x11)	# 82
	sw		x4, 20(x11)	# 82
	sw		x4, 16(x11)	# 82
	sw		x9, 12(x11)	# 82
	sw		x8, 8(x11)	# 82
	sw		x7, 4(x11)	# 82
	sw		x6, 0(x11)	# 82
	addi	x4, x11, 0	# 82
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -48(x2)	# 82
	addi	x2, x2, -52	# 82
	jal		x1, min_caml_create_array	# 82
	addi	x2, x2, 52	# 82
	lw		x1, -48(x2)	# 82
	ori		x5, x0, 3	# 86
	lui		x6, %hi(l.10373)	# 86
	ori		x6, x0, %lo(l.10373)	# 86
	flw		f0, 0(x6)	# 86
	sw		x4, -48(x2)	# 86
	addi	x4, x5, 0
	sw		x1, -52(x2)	# 86
	addi	x2, x2, -56	# 86
	jal		x1, min_caml_create_float_array	# 86
	addi	x2, x2, 56	# 86
	lw		x1, -52(x2)	# 86
	ori		x5, x0, 3	# 89
	lui		x6, %hi(l.10373)	# 89
	ori		x6, x0, %lo(l.10373)	# 89
	flw		f0, 0(x6)	# 89
	sw		x4, -52(x2)	# 89
	addi	x4, x5, 0
	sw		x1, -56(x2)	# 89
	addi	x2, x2, -60	# 89
	jal		x1, min_caml_create_float_array	# 89
	addi	x2, x2, 60	# 89
	lw		x1, -56(x2)	# 89
	ori		x5, x0, 3	# 92
	lui		x6, %hi(l.10373)	# 92
	ori		x6, x0, %lo(l.10373)	# 92
	flw		f0, 0(x6)	# 92
	sw		x4, -56(x2)	# 92
	addi	x4, x5, 0
	sw		x1, -60(x2)	# 92
	addi	x2, x2, -64	# 92
	jal		x1, min_caml_create_float_array	# 92
	addi	x2, x2, 64	# 92
	lw		x1, -60(x2)	# 92
	ori		x5, x0, 1	# 95
	lui		x6, %hi(l.12143)	# 95
	ori		x6, x0, %lo(l.12143)	# 95
	flw		f0, 0(x6)	# 95
	sw		x4, -60(x2)	# 95
	addi	x4, x5, 0
	sw		x1, -64(x2)	# 95
	addi	x2, x2, -68	# 95
	jal		x1, min_caml_create_float_array	# 95
	addi	x2, x2, 68	# 95
	lw		x1, -64(x2)	# 95
	ori		x5, x0, 50	# 98
	ori		x6, x0, 1	# 98
	lui		x7, -1	# 98
	ori		x7, x0, -1	# 98
	sw		x4, -64(x2)	# 98
	sw		x5, -68(x2)	# 98
	addi	x5, x7, 0
	addi	x4, x6, 0
	sw		x1, -72(x2)	# 98
	addi	x2, x2, -76	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 76	# 98
	lw		x1, -72(x2)	# 98
	addi	x5, x4, 0	# 98
	lw		x4, -68(x2)	# 98
	sw		x1, -72(x2)	# 98
	addi	x2, x2, -76	# 98
	jal		x1, min_caml_create_array	# 98
	addi	x2, x2, 76	# 98
	lw		x1, -72(x2)	# 98
	ori		x5, x0, 1	# 101
	ori		x6, x0, 1	# 101
	addi	x7, x0, 0	# 101
	ori		x8, x0, 4	# 101
	mul		x7, x7, x8	# 101
	add		x7, x4, x7	# 101
	lw		x7, 0(x7)	# 101
	sw		x4, -72(x2)	# 101
	sw		x5, -76(x2)	# 101
	addi	x5, x7, 0
	addi	x4, x6, 0
	sw		x1, -80(x2)	# 101
	addi	x2, x2, -84	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 84	# 101
	lw		x1, -80(x2)	# 101
	addi	x5, x4, 0	# 101
	lw		x4, -76(x2)	# 101
	sw		x1, -80(x2)	# 101
	addi	x2, x2, -84	# 101
	jal		x1, min_caml_create_array	# 101
	addi	x2, x2, 84	# 101
	lw		x1, -80(x2)	# 101
	ori		x5, x0, 1	# 106
	lui		x6, %hi(l.10373)	# 106
	ori		x6, x0, %lo(l.10373)	# 106
	flw		f0, 0(x6)	# 106
	sw		x4, -80(x2)	# 106
	addi	x4, x5, 0
	sw		x1, -84(x2)	# 106
	addi	x2, x2, -88	# 106
	jal		x1, min_caml_create_float_array	# 106
	addi	x2, x2, 88	# 106
	lw		x1, -84(x2)	# 106
	ori		x5, x0, 1	# 109
	addi	x6, x0, 0	# 109
	sw		x4, -84(x2)	# 109
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -88(x2)	# 109
	addi	x2, x2, -92	# 109
	jal		x1, min_caml_create_array	# 109
	addi	x2, x2, 92	# 109
	lw		x1, -88(x2)	# 109
	ori		x5, x0, 1	# 112
	lui		x6, %hi(l.12254)	# 112
	ori		x6, x0, %lo(l.12254)	# 112
	flw		f0, 0(x6)	# 112
	sw		x4, -88(x2)	# 112
	addi	x4, x5, 0
	sw		x1, -92(x2)	# 112
	addi	x2, x2, -96	# 112
	jal		x1, min_caml_create_float_array	# 112
	addi	x2, x2, 96	# 112
	lw		x1, -92(x2)	# 112
	ori		x5, x0, 3	# 115
	lui		x6, %hi(l.10373)	# 115
	ori		x6, x0, %lo(l.10373)	# 115
	flw		f0, 0(x6)	# 115
	sw		x4, -92(x2)	# 115
	addi	x4, x5, 0
	sw		x1, -96(x2)	# 115
	addi	x2, x2, -100	# 115
	jal		x1, min_caml_create_float_array	# 115
	addi	x2, x2, 100	# 115
	lw		x1, -96(x2)	# 115
	ori		x5, x0, 1	# 118
	addi	x6, x0, 0	# 118
	sw		x4, -96(x2)	# 118
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -100(x2)	# 118
	addi	x2, x2, -104	# 118
	jal		x1, min_caml_create_array	# 118
	addi	x2, x2, 104	# 118
	lw		x1, -100(x2)	# 118
	ori		x5, x0, 3	# 121
	lui		x6, %hi(l.10373)	# 121
	ori		x6, x0, %lo(l.10373)	# 121
	flw		f0, 0(x6)	# 121
	sw		x4, -100(x2)	# 121
	addi	x4, x5, 0
	sw		x1, -104(x2)	# 121
	addi	x2, x2, -108	# 121
	jal		x1, min_caml_create_float_array	# 121
	addi	x2, x2, 108	# 121
	lw		x1, -104(x2)	# 121
	ori		x5, x0, 3	# 124
	lui		x6, %hi(l.10373)	# 124
	ori		x6, x0, %lo(l.10373)	# 124
	flw		f0, 0(x6)	# 124
	sw		x4, -104(x2)	# 124
	addi	x4, x5, 0
	sw		x1, -108(x2)	# 124
	addi	x2, x2, -112	# 124
	jal		x1, min_caml_create_float_array	# 124
	addi	x2, x2, 112	# 124
	lw		x1, -108(x2)	# 124
	ori		x5, x0, 3	# 128
	lui		x6, %hi(l.10373)	# 128
	ori		x6, x0, %lo(l.10373)	# 128
	flw		f0, 0(x6)	# 128
	sw		x4, -108(x2)	# 128
	addi	x4, x5, 0
	sw		x1, -112(x2)	# 128
	addi	x2, x2, -116	# 128
	jal		x1, min_caml_create_float_array	# 128
	addi	x2, x2, 116	# 128
	lw		x1, -112(x2)	# 128
	ori		x5, x0, 3	# 131
	lui		x6, %hi(l.10373)	# 131
	ori		x6, x0, %lo(l.10373)	# 131
	flw		f0, 0(x6)	# 131
	sw		x4, -112(x2)	# 131
	addi	x4, x5, 0
	sw		x1, -116(x2)	# 131
	addi	x2, x2, -120	# 131
	jal		x1, min_caml_create_float_array	# 131
	addi	x2, x2, 120	# 131
	lw		x1, -116(x2)	# 131
	ori		x5, x0, 2	# 135
	addi	x6, x0, 0	# 135
	sw		x4, -116(x2)	# 135
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -120(x2)	# 135
	addi	x2, x2, -124	# 135
	jal		x1, min_caml_create_array	# 135
	addi	x2, x2, 124	# 135
	lw		x1, -120(x2)	# 135
	ori		x5, x0, 2	# 138
	addi	x6, x0, 0	# 138
	sw		x4, -120(x2)	# 138
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -124(x2)	# 138
	addi	x2, x2, -128	# 138
	jal		x1, min_caml_create_array	# 138
	addi	x2, x2, 128	# 138
	lw		x1, -124(x2)	# 138
	ori		x5, x0, 1	# 141
	lui		x6, %hi(l.10373)	# 141
	ori		x6, x0, %lo(l.10373)	# 141
	flw		f0, 0(x6)	# 141
	sw		x4, -124(x2)	# 141
	addi	x4, x5, 0
	sw		x1, -128(x2)	# 141
	addi	x2, x2, -132	# 141
	jal		x1, min_caml_create_float_array	# 141
	addi	x2, x2, 132	# 141
	lw		x1, -128(x2)	# 141
	ori		x5, x0, 3	# 145
	lui		x6, %hi(l.10373)	# 145
	ori		x6, x0, %lo(l.10373)	# 145
	flw		f0, 0(x6)	# 145
	sw		x4, -128(x2)	# 145
	addi	x4, x5, 0
	sw		x1, -132(x2)	# 145
	addi	x2, x2, -136	# 145
	jal		x1, min_caml_create_float_array	# 145
	addi	x2, x2, 136	# 145
	lw		x1, -132(x2)	# 145
	ori		x5, x0, 3	# 148
	lui		x6, %hi(l.10373)	# 148
	ori		x6, x0, %lo(l.10373)	# 148
	flw		f0, 0(x6)	# 148
	sw		x4, -132(x2)	# 148
	addi	x4, x5, 0
	sw		x1, -136(x2)	# 148
	addi	x2, x2, -140	# 148
	jal		x1, min_caml_create_float_array	# 148
	addi	x2, x2, 140	# 148
	lw		x1, -136(x2)	# 148
	ori		x5, x0, 3	# 152
	lui		x6, %hi(l.10373)	# 152
	ori		x6, x0, %lo(l.10373)	# 152
	flw		f0, 0(x6)	# 152
	sw		x4, -136(x2)	# 152
	addi	x4, x5, 0
	sw		x1, -140(x2)	# 152
	addi	x2, x2, -144	# 152
	jal		x1, min_caml_create_float_array	# 152
	addi	x2, x2, 144	# 152
	lw		x1, -140(x2)	# 152
	ori		x5, x0, 3	# 154
	lui		x6, %hi(l.10373)	# 154
	ori		x6, x0, %lo(l.10373)	# 154
	flw		f0, 0(x6)	# 154
	sw		x4, -140(x2)	# 154
	addi	x4, x5, 0
	sw		x1, -144(x2)	# 154
	addi	x2, x2, -148	# 154
	jal		x1, min_caml_create_float_array	# 154
	addi	x2, x2, 148	# 154
	lw		x1, -144(x2)	# 154
	ori		x5, x0, 3	# 156
	lui		x6, %hi(l.10373)	# 156
	ori		x6, x0, %lo(l.10373)	# 156
	flw		f0, 0(x6)	# 156
	sw		x4, -144(x2)	# 156
	addi	x4, x5, 0
	sw		x1, -148(x2)	# 156
	addi	x2, x2, -152	# 156
	jal		x1, min_caml_create_float_array	# 156
	addi	x2, x2, 152	# 156
	lw		x1, -148(x2)	# 156
	ori		x5, x0, 3	# 160
	lui		x6, %hi(l.10373)	# 160
	ori		x6, x0, %lo(l.10373)	# 160
	flw		f0, 0(x6)	# 160
	sw		x4, -148(x2)	# 160
	addi	x4, x5, 0
	sw		x1, -152(x2)	# 160
	addi	x2, x2, -156	# 160
	jal		x1, min_caml_create_float_array	# 160
	addi	x2, x2, 156	# 160
	lw		x1, -152(x2)	# 160
	addi	x5, x0, 0	# 165
	lui		x6, %hi(l.10373)	# 165
	ori		x6, x0, %lo(l.10373)	# 165
	flw		f0, 0(x6)	# 165
	sw		x4, -152(x2)	# 165
	addi	x4, x5, 0
	sw		x1, -156(x2)	# 165
	addi	x2, x2, -160	# 165
	jal		x1, min_caml_create_float_array	# 165
	addi	x2, x2, 160	# 165
	lw		x1, -156(x2)	# 165
	addi	x5, x4, 0	# 165
	addi	x4, x0, 0	# 166
	sw		x5, -156(x2)	# 166
	sw		x1, -160(x2)	# 166
	addi	x2, x2, -164	# 166
	jal		x1, min_caml_create_array	# 166
	addi	x2, x2, 164	# 166
	lw		x1, -160(x2)	# 166
	addi	x5, x0, 0	# 167
	addi	x6, x3, 0	# 167
	addi	x3, x3, 8	# 167
	sw		x4, 4(x6)	# 167
	lw		x4, -156(x2)	# 167
	sw		x4, 0(x6)	# 167
	addi	x4, x6, 0	# 167
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -160(x2)	# 167
	addi	x2, x2, -164	# 167
	jal		x1, min_caml_create_array	# 167
	addi	x2, x2, 164	# 167
	lw		x1, -160(x2)	# 167
	addi	x5, x4, 0	# 167
	ori		x4, x0, 5	# 168
	sw		x1, -160(x2)	# 168
	addi	x2, x2, -164	# 168
	jal		x1, min_caml_create_array	# 168
	addi	x2, x2, 164	# 168
	lw		x1, -160(x2)	# 168
	addi	x5, x0, 0	# 173
	lui		x6, %hi(l.10373)	# 173
	ori		x6, x0, %lo(l.10373)	# 173
	flw		f0, 0(x6)	# 173
	sw		x4, -160(x2)	# 173
	addi	x4, x5, 0
	sw		x1, -164(x2)	# 173
	addi	x2, x2, -168	# 173
	jal		x1, min_caml_create_float_array	# 173
	addi	x2, x2, 168	# 173
	lw		x1, -164(x2)	# 173
	ori		x5, x0, 3	# 174
	lui		x6, %hi(l.10373)	# 174
	ori		x6, x0, %lo(l.10373)	# 174
	flw		f0, 0(x6)	# 174
	sw		x4, -164(x2)	# 174
	addi	x4, x5, 0
	sw		x1, -168(x2)	# 174
	addi	x2, x2, -172	# 174
	jal		x1, min_caml_create_float_array	# 174
	addi	x2, x2, 172	# 174
	lw		x1, -168(x2)	# 174
	ori		x5, x0, 60	# 175
	lw		x6, -164(x2)	# 175
	sw		x4, -168(x2)	# 175
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -172(x2)	# 175
	addi	x2, x2, -176	# 175
	jal		x1, min_caml_create_array	# 175
	addi	x2, x2, 176	# 175
	lw		x1, -172(x2)	# 175
	addi	x5, x3, 0	# 176
	addi	x3, x3, 8	# 176
	sw		x4, 4(x5)	# 176
	lw		x6, -168(x2)	# 176
	sw		x6, 0(x5)	# 176
	addi	x7, x0, 0	# 181
	lui		x8, %hi(l.10373)	# 181
	ori		x8, x0, %lo(l.10373)	# 181
	flw		f0, 0(x8)	# 181
	sw		x4, -172(x2)	# 181
	sw		x5, -176(x2)	# 181
	addi	x4, x7, 0
	sw		x1, -180(x2)	# 181
	addi	x2, x2, -184	# 181
	jal		x1, min_caml_create_float_array	# 181
	addi	x2, x2, 184	# 181
	lw		x1, -180(x2)	# 181
	addi	x5, x4, 0	# 181
	addi	x4, x0, 0	# 182
	sw		x5, -180(x2)	# 182
	sw		x1, -184(x2)	# 182
	addi	x2, x2, -188	# 182
	jal		x1, min_caml_create_array	# 182
	addi	x2, x2, 188	# 182
	lw		x1, -184(x2)	# 182
	addi	x5, x3, 0	# 183
	addi	x3, x3, 8	# 183
	sw		x4, 4(x5)	# 183
	lw		x4, -180(x2)	# 183
	sw		x4, 0(x5)	# 183
	addi	x4, x5, 0	# 183
	ori		x5, x0, 180	# 184
	addi	x6, x0, 0	# 184
	lui		x7, %hi(l.10373)	# 184
	ori		x7, x0, %lo(l.10373)	# 184
	flw		f0, 0(x7)	# 184
	addi	x7, x3, 0	# 184
	addi	x3, x3, 12	# 184
	fsw		f0, 8(x7)	# 184
	sw		x4, 4(x7)	# 184
	sw		x6, 0(x7)	# 184
	addi	x4, x7, 0	# 184
	addi	x31, x5, 0
	addi	x5, x4, 0
	addi	x4, x31, 0
	sw		x1, -184(x2)	# 184
	addi	x2, x2, -188	# 184
	jal		x1, min_caml_create_array	# 184
	addi	x2, x2, 188	# 184
	lw		x1, -184(x2)	# 184
	ori		x5, x0, 1	# 188
	addi	x6, x0, 0	# 188
	sw		x4, -184(x2)	# 188
	addi	x4, x5, 0
	addi	x5, x6, 0
	sw		x1, -188(x2)	# 188
	addi	x2, x2, -192	# 188
	jal		x1, min_caml_create_array	# 188
	addi	x2, x2, 192	# 188
	lw		x1, -188(x2)	# 188
	addi	x5, x3, 0	# 681
	addi	x3, x3, 48	# 681
	lui		x6, %hi(read_screen_settings.2663)	# 681
	ori		x6, x0, %lo(read_screen_settings.2663)	# 681
	sw		x6, 0(x5)	# 714
	lw		x6, -56(x2)	# 714
	sw		x6, 44(x5)	# 714
	lw		x7, -40(x2)	# 714
	sw		x7, 40(x5)	# 714
	lw		x8, -148(x2)	# 714
	sw		x8, 36(x5)	# 714
	lw		x9, -144(x2)	# 714
	sw		x9, 32(x5)	# 714
	lw		x10, -140(x2)	# 714
	sw		x10, 28(x5)	# 714
	lw		x11, -52(x2)	# 714
	sw		x11, 24(x5)	# 714
	flw		f0, -32(x2)	# 714
	fsw		f0, 20(x5)	# 714
	flw		f1, -24(x2)	# 714
	fsw		f1, 16(x5)	# 714
	flw		f2, -16(x2)	# 714
	fsw		f2, 12(x5)	# 714
	flw		f3, -8(x2)	# 714
	fsw		f3, 8(x5)	# 714
	lw		x11, -4(x2)	# 714
	sw		x11, 4(x5)	# 714
	addi	x12, x3, 0	# 714
	addi	x3, x3, 36	# 714
	lui		x13, %hi(read_light.2665)	# 714
	ori		x13, x0, %lo(read_light.2665)	# 714
	sw		x13, 0(x12)	# 736
	sw		x7, 32(x12)	# 736
	fsw		f0, 28(x12)	# 736
	fsw		f1, 24(x12)	# 736
	fsw		f2, 20(x12)	# 736
	fsw		f3, 16(x12)	# 736
	lw		x13, -60(x2)	# 736
	sw		x13, 12(x12)	# 736
	sw		x11, 8(x12)	# 736
	lw		x14, -64(x2)	# 736
	sw		x14, 4(x12)	# 736
	addi	x15, x3, 0	# 736
	addi	x3, x3, 28	# 736
	lui		x16, %hi(rotate_quadratic_matrix.2667)	# 736
	ori		x16, x0, %lo(rotate_quadratic_matrix.2667)	# 736
	sw		x16, 0(x15)	# 777
	sw		x7, 24(x15)	# 777
	fsw		f0, 20(x15)	# 777
	fsw		f1, 16(x15)	# 777
	fsw		f2, 12(x15)	# 777
	fsw		f3, 8(x15)	# 777
	sw		x11, 4(x15)	# 777
	addi	x16, x3, 0	# 777
	addi	x3, x3, 12	# 777
	lui		x17, %hi(read_nth_object.2670)	# 777
	ori		x17, x0, %lo(read_nth_object.2670)	# 777
	sw		x17, 0(x16)	# 860
	sw		x15, 8(x16)	# 860
	lw		x15, -48(x2)	# 860
	sw		x15, 4(x16)	# 860
	addi	x17, x3, 0	# 860
	addi	x3, x3, 12	# 860
	lui		x18, %hi(read_object.2672)	# 860
	ori		x18, x0, %lo(read_object.2672)	# 860
	sw		x18, 0(x17)	# 893
	sw		x16, 8(x17)	# 893
	lw		x18, -44(x2)	# 893
	sw		x18, 4(x17)	# 893
	addi	x19, x3, 0	# 893
	addi	x3, x3, 8	# 893
	lui		x20, %hi(read_and_network.2680)	# 893
	ori		x20, x0, %lo(read_and_network.2680)	# 893
	sw		x20, 0(x19)	# 927
	lw		x20, -72(x2)	# 927
	sw		x20, 4(x19)	# 927
	addi	x21, x3, 0	# 927
	addi	x3, x3, 8	# 927
	lui		x22, %hi(solver_rect_surface.2684)	# 927
	ori		x22, x0, %lo(solver_rect_surface.2684)	# 927
	sw		x22, 0(x21)	# 942
	lw		x22, -84(x2)	# 942
	sw		x22, 4(x21)	# 942
	addi	x23, x3, 0	# 942
	addi	x3, x3, 8	# 942
	lui		x24, %hi(solver_rect.2693)	# 942
	ori		x24, x0, %lo(solver_rect.2693)	# 942
	sw		x24, 0(x23)	# 1002
	sw		x21, 4(x23)	# 1002
	addi	x21, x3, 0	# 1002
	addi	x3, x3, 8	# 1002
	lui		x24, %hi(solver_second.2718)	# 1002
	ori		x24, x0, %lo(solver_second.2718)	# 1002
	sw		x24, 0(x21)	# 1031
	sw		x22, 4(x21)	# 1031
	addi	x24, x3, 0	# 1031
	addi	x3, x3, 20	# 1031
	lui		x25, %hi(solver.2724)	# 1031
	ori		x25, x0, %lo(solver.2724)	# 1031
	sw		x25, 0(x24)	# 1063
	sw		x21, 16(x24)	# 1063
	sw		x23, 12(x24)	# 1063
	sw		x22, 8(x24)	# 1063
	sw		x15, 4(x24)	# 1063
	addi	x21, x3, 0	# 1063
	addi	x3, x3, 8	# 1063
	lui		x23, %hi(solver_rect_fast.2728)	# 1063
	ori		x23, x0, %lo(solver_rect_fast.2728)	# 1063
	sw		x23, 0(x21)	# 1096
	sw		x22, 4(x21)	# 1096
	addi	x23, x3, 0	# 1096
	addi	x3, x3, 8	# 1096
	lui		x25, %hi(solver_surface_fast.2735)	# 1096
	ori		x25, x0, %lo(solver_surface_fast.2735)	# 1096
	sw		x25, 0(x23)	# 1105
	sw		x22, 4(x23)	# 1105
	addi	x25, x3, 0	# 1105
	addi	x3, x3, 8	# 1105
	lui		x26, %hi(solver_second_fast.2741)	# 1105
	ori		x26, x0, %lo(solver_second_fast.2741)	# 1105
	sw		x26, 0(x25)	# 1125
	sw		x22, 4(x25)	# 1125
	addi	x26, x3, 0	# 1125
	addi	x3, x3, 20	# 1125
	lui		x27, %hi(solver_fast.2747)	# 1125
	ori		x27, x0, %lo(solver_fast.2747)	# 1125
	sw		x27, 0(x26)	# 1153
	sw		x23, 16(x26)	# 1153
	sw		x25, 12(x26)	# 1153
	sw		x21, 8(x26)	# 1153
	sw		x15, 4(x26)	# 1153
	addi	x23, x3, 0	# 1153
	addi	x3, x3, 8	# 1153
	lui		x25, %hi(solver_second_fast2.2758)	# 1153
	ori		x25, x0, %lo(solver_second_fast2.2758)	# 1153
	sw		x25, 0(x23)	# 1172
	sw		x22, 4(x23)	# 1172
	addi	x25, x3, 0	# 1172
	addi	x3, x3, 20	# 1172
	lui		x27, %hi(solver_fast2.2765)	# 1172
	ori		x27, x0, %lo(solver_fast2.2765)	# 1172
	sw		x27, 0(x25)	# 1269
	sw		x23, 16(x25)	# 1269
	sw		x21, 12(x25)	# 1269
	sw		x22, 8(x25)	# 1269
	sw		x15, 4(x25)	# 1269
	addi	x21, x3, 0	# 1269
	addi	x3, x3, 8	# 1269
	lui		x23, %hi(iter_setup_dirvec_constants.2777)	# 1269
	ori		x23, x0, %lo(iter_setup_dirvec_constants.2777)	# 1269
	sw		x23, 0(x21)	# 1294
	sw		x15, 4(x21)	# 1294
	addi	x23, x3, 0	# 1294
	addi	x3, x3, 8	# 1294
	lui		x27, %hi(setup_startp_constants.2782)	# 1294
	ori		x27, x0, %lo(setup_startp_constants.2782)	# 1294
	sw		x27, 0(x23)	# 1313
	sw		x15, 4(x23)	# 1313
	addi	x27, x3, 0	# 1313
	addi	x3, x3, 16	# 1313
	lui		x31, %hi(setup_startp.2785)	# 1313
	ori		x31, x0, %lo(setup_startp.2785)	# 1313
	sw		x31, 0(x27)	# 1363
	lw		x31, -136(x2)	# 1363
	sw		x31, 12(x27)	# 1363
	sw		x23, 8(x27)	# 1363
	sw		x18, 4(x27)	# 1363
	sw		x19, -188(x2)	# 1363
	addi	x19, x3, 0	# 1363
	addi	x3, x3, 8	# 1363
	sw		x12, -192(x2)	# 1363
	lui		x12, %hi(check_all_inside.2807)	# 1363
	ori		x12, x0, %lo(check_all_inside.2807)	# 1363
	sw		x12, 0(x19)	# 1383
	sw		x15, 4(x19)	# 1383
	addi	x12, x3, 0	# 1383
	addi	x3, x3, 32	# 1383
	sw		x16, -196(x2)	# 1383
	lui		x16, %hi(shadow_check_and_group.2813)	# 1383
	ori		x16, x0, %lo(shadow_check_and_group.2813)	# 1383
	sw		x16, 0(x12)	# 1413
	sw		x26, 28(x12)	# 1413
	sw		x22, 24(x12)	# 1413
	sw		x15, 20(x12)	# 1413
	lw		x16, -176(x2)	# 1413
	sw		x16, 16(x12)	# 1413
	sw		x13, 12(x12)	# 1413
	sw		x17, -200(x2)	# 1413
	lw		x17, -96(x2)	# 1413
	sw		x17, 8(x12)	# 1413
	sw		x19, 4(x12)	# 1413
	sw		x5, -204(x2)	# 1413
	addi	x5, x3, 0	# 1413
	addi	x3, x3, 12	# 1413
	sw		x21, -208(x2)	# 1413
	lui		x21, %hi(shadow_check_one_or_group.2816)	# 1413
	ori		x21, x0, %lo(shadow_check_one_or_group.2816)	# 1413
	sw		x21, 0(x5)	# 1428
	sw		x12, 8(x5)	# 1428
	sw		x20, 4(x5)	# 1428
	addi	x21, x3, 0	# 1428
	addi	x3, x3, 32	# 1428
	lui		x9, %hi(shadow_check_one_or_matrix.2819)	# 1428
	ori		x9, x0, %lo(shadow_check_one_or_matrix.2819)	# 1428
	sw		x9, 0(x21)	# 1464
	sw		x26, 28(x21)	# 1464
	sw		x22, 24(x21)	# 1464
	sw		x5, 20(x21)	# 1464
	sw		x12, 16(x21)	# 1464
	sw		x16, 12(x21)	# 1464
	sw		x17, 8(x21)	# 1464
	sw		x20, 4(x21)	# 1464
	addi	x5, x3, 0	# 1464
	addi	x3, x3, 40	# 1464
	lui		x9, %hi(solve_each_element.2822)	# 1464
	ori		x9, x0, %lo(solve_each_element.2822)	# 1464
	sw		x9, 0(x5)	# 1505
	lw		x9, -92(x2)	# 1505
	sw		x9, 36(x5)	# 1505
	lw		x12, -132(x2)	# 1505
	sw		x12, 32(x5)	# 1505
	sw		x22, 28(x5)	# 1505
	sw		x24, 24(x5)	# 1505
	sw		x15, 20(x5)	# 1505
	lw		x26, -88(x2)	# 1505
	sw		x26, 16(x5)	# 1505
	sw		x17, 12(x5)	# 1505
	lw		x16, -100(x2)	# 1505
	sw		x16, 8(x5)	# 1505
	sw		x19, 4(x5)	# 1505
	addi	x8, x3, 0	# 1505
	addi	x3, x3, 12	# 1505
	lui		x10, %hi(solve_one_or_network.2826)	# 1505
	ori		x10, x0, %lo(solve_one_or_network.2826)	# 1505
	sw		x10, 0(x8)	# 1515
	sw		x5, 8(x8)	# 1515
	sw		x20, 4(x8)	# 1515
	addi	x10, x3, 0	# 1515
	addi	x3, x3, 32	# 1515
	lui		x6, %hi(trace_or_matrix.2830)	# 1515
	ori		x6, x0, %lo(trace_or_matrix.2830)	# 1515
	sw		x6, 0(x10)	# 1557
	sw		x9, 28(x10)	# 1557
	sw		x12, 24(x10)	# 1557
	sw		x22, 20(x10)	# 1557
	sw		x24, 16(x10)	# 1557
	sw		x8, 12(x10)	# 1557
	sw		x5, 8(x10)	# 1557
	sw		x20, 4(x10)	# 1557
	addi	x5, x3, 0	# 1557
	addi	x3, x3, 40	# 1557
	lui		x6, %hi(solve_each_element_fast.2836)	# 1557
	ori		x6, x0, %lo(solve_each_element_fast.2836)	# 1557
	sw		x6, 0(x5)	# 1598
	sw		x9, 36(x5)	# 1598
	sw		x31, 32(x5)	# 1598
	sw		x25, 28(x5)	# 1598
	sw		x22, 24(x5)	# 1598
	sw		x15, 20(x5)	# 1598
	sw		x26, 16(x5)	# 1598
	sw		x17, 12(x5)	# 1598
	sw		x16, 8(x5)	# 1598
	sw		x19, 4(x5)	# 1598
	addi	x6, x3, 0	# 1598
	addi	x3, x3, 12	# 1598
	lui		x8, %hi(solve_one_or_network_fast.2840)	# 1598
	ori		x8, x0, %lo(solve_one_or_network_fast.2840)	# 1598
	sw		x8, 0(x6)	# 1608
	sw		x5, 8(x6)	# 1608
	sw		x20, 4(x6)	# 1608
	addi	x8, x3, 0	# 1608
	addi	x3, x3, 28	# 1608
	lui		x19, %hi(trace_or_matrix_fast.2844)	# 1608
	ori		x19, x0, %lo(trace_or_matrix_fast.2844)	# 1608
	sw		x19, 0(x8)	# 1653
	sw		x9, 24(x8)	# 1653
	sw		x25, 20(x8)	# 1653
	sw		x22, 16(x8)	# 1653
	sw		x6, 12(x8)	# 1653
	sw		x5, 8(x8)	# 1653
	sw		x20, 4(x8)	# 1653
	addi	x5, x3, 0	# 1653
	addi	x3, x3, 12	# 1653
	lui		x6, %hi(get_nvector_rect.2850)	# 1653
	ori		x6, x0, %lo(get_nvector_rect.2850)	# 1653
	sw		x6, 0(x5)	# 1661
	lw		x6, -104(x2)	# 1661
	sw		x6, 8(x5)	# 1661
	sw		x26, 4(x5)	# 1661
	addi	x19, x3, 0	# 1661
	addi	x3, x3, 8	# 1661
	lui		x20, %hi(get_nvector_plane.2852)	# 1661
	ori		x20, x0, %lo(get_nvector_plane.2852)	# 1661
	sw		x20, 0(x19)	# 1669
	sw		x6, 4(x19)	# 1669
	addi	x20, x3, 0	# 1669
	addi	x3, x3, 12	# 1669
	lui		x22, %hi(get_nvector_second.2854)	# 1669
	ori		x22, x0, %lo(get_nvector_second.2854)	# 1669
	sw		x22, 0(x20)	# 1707
	sw		x6, 8(x20)	# 1707
	sw		x17, 4(x20)	# 1707
	addi	x22, x3, 0	# 1707
	addi	x3, x3, 36	# 1707
	lui		x24, %hi(utexture.2859)	# 1707
	ori		x24, x0, %lo(utexture.2859)	# 1707
	sw		x24, 0(x22)	# 1785
	lw		x24, -108(x2)	# 1785
	sw		x24, 32(x22)	# 1785
	sw		x7, 28(x22)	# 1785
	fsw		f0, 24(x22)	# 1785
	fsw		f1, 20(x22)	# 1785
	fsw		f2, 16(x22)	# 1785
	fsw		f3, 12(x22)	# 1785
	sw		x11, 8(x22)	# 1785
	lw		x25, 0(x2)	# 1785
	sw		x25, 4(x22)	# 1785
	addi	x25, x3, 0	# 1785
	addi	x3, x3, 12	# 1785
	lui		x11, %hi(add_light.2862)	# 1785
	ori		x11, x0, %lo(add_light.2862)	# 1785
	sw		x11, 0(x25)	# 1802
	sw		x24, 8(x25)	# 1802
	lw		x11, -116(x2)	# 1802
	sw		x11, 4(x25)	# 1802
	addi	x7, x3, 0	# 1802
	addi	x3, x3, 40	# 1802
	sw		x27, -212(x2)	# 1802
	lui		x27, %hi(trace_reflections.2866)	# 1802
	ori		x27, x0, %lo(trace_reflections.2866)	# 1802
	sw		x27, 0(x7)	# 1831
	sw		x8, 36(x7)	# 1831
	sw		x9, 32(x7)	# 1831
	sw		x21, 28(x7)	# 1831
	lw		x27, -184(x2)	# 1831
	sw		x27, 24(x7)	# 1831
	lw		x27, -80(x2)	# 1831
	sw		x27, 20(x7)	# 1831
	sw		x6, 16(x7)	# 1831
	sw		x26, 12(x7)	# 1831
	sw		x16, 8(x7)	# 1831
	sw		x25, 4(x7)	# 1831
	sw		x8, -216(x2)	# 1831
	addi	x8, x3, 0	# 1831
	addi	x3, x3, 100	# 1831
	sw		x25, -220(x2)	# 1831
	lui		x25, %hi(trace_ray.2871)	# 1831
	ori		x25, x0, %lo(trace_ray.2871)	# 1831
	sw		x25, 0(x8)	# 1924
	sw		x22, 96(x8)	# 1924
	sw		x7, 92(x8)	# 1924
	sw		x10, 88(x8)	# 1924
	sw		x9, 84(x8)	# 1924
	sw		x24, 80(x8)	# 1924
	sw		x31, 76(x8)	# 1924
	sw		x12, 72(x8)	# 1924
	sw		x21, 68(x8)	# 1924
	sw		x23, 64(x8)	# 1924
	sw		x11, 60(x8)	# 1924
	sw		x27, 56(x8)	# 1924
	sw		x15, 52(x8)	# 1924
	sw		x6, 48(x8)	# 1924
	sw		x4, 44(x8)	# 1924
	sw		x18, 40(x8)	# 1924
	sw		x13, 36(x8)	# 1924
	sw		x26, 32(x8)	# 1924
	sw		x17, 28(x8)	# 1924
	sw		x16, 24(x8)	# 1924
	sw		x20, 20(x8)	# 1924
	sw		x5, 16(x8)	# 1924
	sw		x19, 12(x8)	# 1924
	sw		x14, 8(x8)	# 1924
	lw		x7, -220(x2)	# 1924
	sw		x7, 4(x8)	# 1924
	addi	x7, x3, 0	# 1924
	addi	x3, x3, 64	# 1924
	lui		x10, %hi(trace_diffuse_ray.2877)	# 1924
	ori		x10, x0, %lo(trace_diffuse_ray.2877)	# 1924
	sw		x10, 0(x7)	# 1943
	sw		x22, 60(x7)	# 1943
	lw		x10, -216(x2)	# 1943
	sw		x10, 56(x7)	# 1943
	sw		x9, 52(x7)	# 1943
	sw		x24, 48(x7)	# 1943
	sw		x21, 44(x7)	# 1943
	sw		x27, 40(x7)	# 1943
	sw		x15, 36(x7)	# 1943
	sw		x6, 32(x7)	# 1943
	sw		x13, 28(x7)	# 1943
	sw		x17, 24(x7)	# 1943
	sw		x16, 20(x7)	# 1943
	sw		x20, 16(x7)	# 1943
	sw		x5, 12(x7)	# 1943
	sw		x19, 8(x7)	# 1943
	lw		x5, -112(x2)	# 1943
	sw		x5, 4(x7)	# 1943
	addi	x6, x3, 0	# 1943
	addi	x3, x3, 8	# 1943
	lui		x9, %hi(iter_trace_diffuse_rays.2880)	# 1943
	ori		x9, x0, %lo(iter_trace_diffuse_rays.2880)	# 1943
	sw		x9, 0(x6)	# 1969
	sw		x7, 4(x6)	# 1969
	addi	x7, x3, 0	# 1969
	addi	x3, x3, 16	# 1969
	lui		x9, %hi(trace_diffuse_ray_80percent.2889)	# 1969
	ori		x9, x0, %lo(trace_diffuse_ray_80percent.2889)	# 1969
	sw		x9, 0(x7)	# 1995
	lw		x9, -212(x2)	# 1995
	sw		x9, 12(x7)	# 1995
	sw		x6, 8(x7)	# 1995
	lw		x10, -160(x2)	# 1995
	sw		x10, 4(x7)	# 1995
	addi	x14, x3, 0	# 1995
	addi	x3, x3, 16	# 1995
	lui		x16, %hi(calc_diffuse_using_1point.2893)	# 1995
	ori		x16, x0, %lo(calc_diffuse_using_1point.2893)	# 1995
	sw		x16, 0(x14)	# 2014
	sw		x7, 12(x14)	# 2014
	sw		x11, 8(x14)	# 2014
	sw		x5, 4(x14)	# 2014
	addi	x16, x3, 0	# 2014
	addi	x3, x3, 12	# 2014
	lui		x17, %hi(calc_diffuse_using_5points.2896)	# 2014
	ori		x17, x0, %lo(calc_diffuse_using_5points.2896)	# 2014
	sw		x17, 0(x16)	# 2034
	sw		x11, 8(x16)	# 2034
	sw		x5, 4(x16)	# 2034
	addi	x17, x3, 0	# 2034
	addi	x3, x3, 20	# 2034
	lui		x19, %hi(do_without_neighbors.2902)	# 2034
	ori		x19, x0, %lo(do_without_neighbors.2902)	# 2034
	sw		x19, 0(x17)	# 2086
	sw		x7, 16(x17)	# 2086
	sw		x11, 12(x17)	# 2086
	sw		x5, 8(x17)	# 2086
	sw		x14, 4(x17)	# 2086
	addi	x7, x3, 0	# 2086
	addi	x3, x3, 16	# 2086
	lui		x19, %hi(try_exploit_neighbors.2918)	# 2086
	ori		x19, x0, %lo(try_exploit_neighbors.2918)	# 2086
	sw		x19, 0(x7)	# 2113
	sw		x17, 12(x7)	# 2113
	sw		x16, 8(x7)	# 2113
	sw		x14, 4(x7)	# 2113
	addi	x16, x3, 0	# 2113
	addi	x3, x3, 8	# 2113
	lui		x19, %hi(write_ppm_header.2925)	# 2113
	ori		x19, x0, %lo(write_ppm_header.2925)	# 2113
	sw		x19, 0(x16)	# 2139
	lw		x19, -120(x2)	# 2139
	sw		x19, 4(x16)	# 2139
	addi	x20, x3, 0	# 2139
	addi	x3, x3, 8	# 2139
	lui		x21, %hi(write_rgb.2931)	# 2139
	ori		x21, x0, %lo(write_rgb.2931)	# 2139
	sw		x21, 0(x20)	# 2162
	sw		x11, 4(x20)	# 2162
	addi	x21, x3, 0	# 2162
	addi	x3, x3, 20	# 2162
	lui		x22, %hi(pretrace_diffuse_rays.2933)	# 2162
	ori		x22, x0, %lo(pretrace_diffuse_rays.2933)	# 2162
	sw		x22, 0(x21)	# 2192
	sw		x9, 16(x21)	# 2192
	sw		x6, 12(x21)	# 2192
	sw		x10, 8(x21)	# 2192
	sw		x5, 4(x21)	# 2192
	addi	x5, x3, 0	# 2192
	addi	x3, x3, 40	# 2192
	lui		x6, %hi(pretrace_pixels.2936)	# 2192
	ori		x6, x0, %lo(pretrace_pixels.2936)	# 2192
	sw		x6, 0(x5)	# 2217
	lw		x6, -56(x2)	# 2217
	sw		x6, 36(x5)	# 2217
	sw		x8, 32(x5)	# 2217
	sw		x12, 28(x5)	# 2217
	lw		x6, -140(x2)	# 2217
	sw		x6, 24(x5)	# 2217
	lw		x6, -128(x2)	# 2217
	sw		x6, 20(x5)	# 2217
	sw		x11, 16(x5)	# 2217
	lw		x8, -152(x2)	# 2217
	sw		x8, 12(x5)	# 2217
	sw		x21, 8(x5)	# 2217
	lw		x8, -124(x2)	# 2217
	sw		x8, 4(x5)	# 2217
	addi	x9, x3, 0	# 2217
	addi	x3, x3, 28	# 2217
	lui		x12, %hi(pretrace_line.2943)	# 2217
	ori		x12, x0, %lo(pretrace_line.2943)	# 2217
	sw		x12, 0(x9)	# 2233
	lw		x12, -148(x2)	# 2233
	sw		x12, 24(x9)	# 2233
	lw		x12, -144(x2)	# 2233
	sw		x12, 20(x9)	# 2233
	sw		x6, 16(x9)	# 2233
	sw		x5, 12(x9)	# 2233
	sw		x19, 8(x9)	# 2233
	sw		x8, 4(x9)	# 2233
	addi	x5, x3, 0	# 2233
	addi	x3, x3, 28	# 2233
	lui		x12, %hi(scan_pixel.2947)	# 2233
	ori		x12, x0, %lo(scan_pixel.2947)	# 2233
	sw		x12, 0(x5)	# 2253
	sw		x20, 24(x5)	# 2253
	sw		x7, 20(x5)	# 2253
	sw		x11, 16(x5)	# 2253
	sw		x19, 12(x5)	# 2253
	sw		x17, 8(x5)	# 2253
	sw		x14, 4(x5)	# 2253
	addi	x7, x3, 0	# 2253
	addi	x3, x3, 16	# 2253
	lui		x11, %hi(scan_line.2954)	# 2253
	ori		x11, x0, %lo(scan_line.2954)	# 2253
	sw		x11, 0(x7)	# 2319
	sw		x5, 12(x7)	# 2319
	sw		x9, 8(x7)	# 2319
	sw		x19, 4(x7)	# 2319
	addi	x5, x3, 0	# 2319
	addi	x3, x3, 28	# 2319
	lui		x11, %hi(tan.2970)	# 2319
	ori		x11, x0, %lo(tan.2970)	# 2319
	sw		x11, 0(x5)	# 2333
	lw		x11, -40(x2)	# 2333
	sw		x11, 24(x5)	# 2333
	fsw		f0, 20(x5)	# 2333
	fsw		f1, 16(x5)	# 2333
	fsw		f2, 12(x5)	# 2333
	fsw		f3, 8(x5)	# 2333
	lw		x11, -4(x2)	# 2333
	sw		x11, 4(x5)	# 2333
	addi	x11, x3, 0	# 2333
	addi	x3, x3, 16	# 2333
	lui		x12, %hi(calc_dirvec.2975)	# 2333
	ori		x12, x0, %lo(calc_dirvec.2975)	# 2333
	sw		x12, 0(x11)	# 2354
	sw		x5, 12(x11)	# 2354
	sw		x10, 8(x11)	# 2354
	lw		x5, 0(x2)	# 2354
	sw		x5, 4(x11)	# 2354
	addi	x5, x3, 0	# 2354
	addi	x3, x3, 8	# 2354
	lui		x12, %hi(calc_dirvecs.2983)	# 2354
	ori		x12, x0, %lo(calc_dirvecs.2983)	# 2354
	sw		x12, 0(x5)	# 2368
	sw		x11, 4(x5)	# 2368
	addi	x11, x3, 0	# 2368
	addi	x3, x3, 8	# 2368
	lui		x12, %hi(calc_dirvec_rows.2988)	# 2368
	ori		x12, x0, %lo(calc_dirvec_rows.2988)	# 2368
	sw		x12, 0(x11)	# 2387
	sw		x5, 4(x11)	# 2387
	addi	x5, x3, 0	# 2387
	addi	x3, x3, 8	# 2387
	lui		x12, %hi(create_dirvec_elements.2994)	# 2387
	ori		x12, x0, %lo(create_dirvec_elements.2994)	# 2387
	sw		x12, 0(x5)	# 2394
	sw		x18, 4(x5)	# 2394
	addi	x12, x3, 0	# 2394
	addi	x3, x3, 16	# 2394
	lui		x14, %hi(create_dirvecs.2997)	# 2394
	ori		x14, x0, %lo(create_dirvecs.2997)	# 2394
	sw		x14, 0(x12)	# 2406
	sw		x18, 12(x12)	# 2406
	sw		x10, 8(x12)	# 2406
	sw		x5, 4(x12)	# 2406
	addi	x5, x3, 0	# 2406
	addi	x3, x3, 16	# 2406
	lui		x14, %hi(init_dirvec_constants.2999)	# 2406
	ori		x14, x0, %lo(init_dirvec_constants.2999)	# 2406
	sw		x14, 0(x5)	# 2413
	sw		x15, 12(x5)	# 2413
	sw		x18, 8(x5)	# 2413
	lw		x14, -208(x2)	# 2413
	sw		x14, 4(x5)	# 2413
	addi	x17, x3, 0	# 2413
	addi	x3, x3, 24	# 2413
	lui		x20, %hi(init_vecset_constants.3002)	# 2413
	ori		x20, x0, %lo(init_vecset_constants.3002)	# 2413
	sw		x20, 0(x17)	# 2440
	sw		x15, 20(x17)	# 2440
	sw		x18, 16(x17)	# 2440
	sw		x14, 12(x17)	# 2440
	sw		x5, 8(x17)	# 2440
	sw		x10, 4(x17)	# 2440
	addi	x5, x3, 0	# 2440
	addi	x3, x3, 28	# 2440
	lui		x10, %hi(setup_rect_reflection.3013)	# 2440
	ori		x10, x0, %lo(setup_rect_reflection.3013)	# 2440
	sw		x10, 0(x5)	# 2454
	lw		x10, -184(x2)	# 2454
	sw		x10, 24(x5)	# 2454
	sw		x15, 20(x5)	# 2454
	sw		x4, 16(x5)	# 2454
	sw		x18, 12(x5)	# 2454
	sw		x13, 8(x5)	# 2454
	sw		x14, 4(x5)	# 2454
	addi	x20, x3, 0	# 2454
	addi	x3, x3, 28	# 2454
	lui		x21, %hi(setup_surface_reflection.3016)	# 2454
	ori		x21, x0, %lo(setup_surface_reflection.3016)	# 2454
	sw		x21, 0(x20)	# 2469
	sw		x10, 24(x20)	# 2469
	sw		x15, 20(x20)	# 2469
	sw		x4, 16(x20)	# 2469
	sw		x18, 12(x20)	# 2469
	sw		x13, 8(x20)	# 2469
	sw		x14, 4(x20)	# 2469
	addi	x4, x3, 0	# 2469
	addi	x3, x3, 16	# 2469
	lui		x10, %hi(setup_reflections.3019)	# 2469
	ori		x10, x0, %lo(setup_reflections.3019)	# 2469
	sw		x10, 0(x4)	# 2491
	sw		x20, 12(x4)	# 2491
	sw		x5, 8(x4)	# 2491
	sw		x15, 4(x4)	# 2491
	addi	x5, x3, 0	# 2491
	addi	x3, x3, 96	# 2491
	lui		x10, %hi(rt.3021)	# 2491
	ori		x10, x0, %lo(rt.3021)	# 2491
	sw		x10, 0(x5)	# 2512
	sw		x16, 92(x5)	# 2512
	lw		x10, -168(x2)	# 2512
	sw		x10, 88(x5)	# 2512
	sw		x4, 84(x5)	# 2512
	sw		x6, 80(x5)	# 2512
	sw		x7, 76(x5)	# 2512
	lw		x4, -204(x2)	# 2512
	sw		x4, 72(x5)	# 2512
	lw		x4, -200(x2)	# 2512
	sw		x4, 68(x5)	# 2512
	lw		x4, -196(x2)	# 2512
	sw		x4, 64(x5)	# 2512
	lw		x4, -192(x2)	# 2512
	sw		x4, 60(x5)	# 2512
	lw		x4, -188(x2)	# 2512
	sw		x4, 56(x5)	# 2512
	sw		x9, 52(x5)	# 2512
	sw		x27, 48(x5)	# 2512
	sw		x15, 44(x5)	# 2512
	sw		x18, 40(x5)	# 2512
	lw		x4, -176(x2)	# 2512
	sw		x4, 36(x5)	# 2512
	sw		x13, 32(x5)	# 2512
	sw		x14, 28(x5)	# 2512
	sw		x17, 24(x5)	# 2512
	sw		x19, 20(x5)	# 2512
	sw		x8, 16(x5)	# 2512
	sw		x12, 12(x5)	# 2512
	lw		x4, -172(x2)	# 2512
	sw		x4, 8(x5)	# 2512
	sw		x11, 4(x5)	# 2512
	ori		x4, x0, 128	# 2512
	ori		x6, x0, 128	# 2512
	ori		x7, x0, 3	# 2512
	addi	x27, x5, 0
	addi	x5, x6, 0
	addi	x6, x7, 0
	sw		x1, -224(x2)	# 2512
	addi	x2, x2, -228	# 2512
	lw		x31, 0(x27)	# 2512
	jalr	x1, x31, 0	# 2512
	addi	x2, x2, 228	# 2512
	lw		x1, -224(x2)	# 2512
	EXIT	
