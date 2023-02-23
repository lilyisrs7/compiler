min_caml_print_char:
	addi	x29, x0, 0
	sw		x29, -1(x0)
	sw		x4, -2(x0)
	addi	x29, x0, 1
	sw		x29, -1(x0)
	jalr	x0, x1, 0
min_caml_print_int:
	addi	x29, x0, 2
	sw		x29, -1(x0)
	sw		x4, -1(x0)
	addi	x29, x0, 3
	sw		x29, -1(x0)
	jalr	x0, x1, 0
min_caml_read_int:
	addi	x29, x0, 4
	sw		x29, -1(x0)
	lw		x4, -1(x0)
	addi	x29, x0, 5
	sw		x29, -1(x0)
	jalr	x0, x1, 0
min_caml_read_float:
	addi	x29, x0, 6
	sw		x29, -1(x0)
	flw		f1, -1(x0)
	addi	x29, x0, 7
	sw		x29, -1(x0)
	jalr	x0, x1, 0
min_caml_create_array:
	addi	x29, x0, 8
	sw		x29, -1(x0)
	addi	x6, x4, 0
	addi	x29, x0, 9
	sw		x29, -1(x0)
	addi	x4, x3, 0
create_array_loop:
	addi	x29, x0, 10
	sw		x29, -1(x0)
	beq		x6, x0, create_array_exit
create_array_cont:
	addi	x29, x0, 11
	sw		x29, -1(x0)
	sw		x5, 0(x3)
	addi	x29, x0, 12
	sw		x29, -1(x0)
	addi	x6, x6, -1
	addi	x29, x0, 13
	sw		x29, -1(x0)
	addi	x3, x3, 4
	addi	x29, x0, 14
	sw		x29, -1(x0)
	jal		x0, create_array_loop
create_array_exit:
	addi	x29, x0, 15
	sw		x29, -1(x0)
	jalr	x0, x1, 0
min_caml_create_float_array:
	addi	x29, x0, 16
	sw		x29, -1(x0)
	addi	x5, x4, 0
	addi	x29, x0, 17
	sw		x29, -1(x0)
	addi	x4, x3, 0
create_float_array_loop:
	addi	x29, x0, 18
	sw		x29, -1(x0)
	beq		x5, x0, create_float_array_exit
create_float_array_cont:
	addi	x29, x0, 19
	sw		x29, -1(x0)
	fsw		f1, 0(x3)
	addi	x29, x0, 20
	sw		x29, -1(x0)
	addi	x5, x5, -1
	addi	x29, x0, 21
	sw		x29, -1(x0)
	addi	x3, x3, 4
	addi	x29, x0, 22
	sw		x29, -1(x0)
	jal		x0, create_float_array_loop
create_float_array_exit:
	addi	x29, x0, 23
	sw		x29, -1(x0)
	jalr	x0, x1, 0
min_caml_float_of_int:
	addi	x29, x0, 24
	sw		x29, -1(x0)
	ble		x0, x4, itof_pos
	addi	x29, x0, 25
	sw		x29, -1(x0)
	sub		x4, x0, x4
	addi	x29, x0, 26
	sw		x29, -1(x0)
	sw		x1, 0(x2)
	addi	x29, x0, 27
	sw		x29, -1(x0)
	addi	x2, x2, -4
	addi	x29, x0, 28
	sw		x29, -1(x0)
	jal		x1, min_caml_float_of_int
	addi	x29, x0, 29
	sw		x29, -1(x0)
	addi	x2, x2, 4
	addi	x29, x0, 30
	sw		x29, -1(x0)
	lw		x1, 0(x2)
	addi	x29, x0, 31
	sw		x29, -1(x0)
	fsub	f1, f0, f1
	addi	x29, x0, 32
	sw		x29, -1(x0)
	jalr	x0, x1, 0
itof_pos:
	addi	x29, x0, 33
	sw		x29, -1(x0)
	fadd	f1, f0, f0
	addi	x29, x0, 34
	sw		x29, -1(x0)
	lui		x5, 8388608
	addi	x29, x0, 35
	sw		x29, -1(x0)
	ori		x5, x0, 8388608
	addi	x29, x0, 36
	sw		x29, -1(x0)
	lui		x6, 1258291200
	addi	x29, x0, 37
	sw		x29, -1(x0)
	ori		x6, x0, 1258291200
	addi	x29, x0, 38
	sw		x29, -1(x0)
	ble		x5, x4, itof_g
itof_l:
	addi	x29, x0, 39
	sw		x29, -1(x0)
	add		x4, x4, x6
	addi	x29, x0, 40
	sw		x29, -1(x0)
	sw		x4, 0(x2)
	addi	x29, x0, 41
	sw		x29, -1(x0)
	flw		f1, 0(x2)
	addi	x29, x0, 42
	sw		x29, -1(x0)
	fsub	f1, f1, f29
	addi	x29, x0, 43
	sw		x29, -1(x0)
	jalr	x0, x1, 0
itof_g:
	addi	x29, x0, 44
	sw		x29, -1(x0)
	sub		x4, x4, x5
	addi	x29, x0, 45
	sw		x29, -1(x0)
	fadd	f1, f1, f29
	addi	x29, x0, 46
	sw		x29, -1(x0)
	ble		x5, x4, itof_g
	addi	x29, x0, 47
	sw		x29, -1(x0)
	add		x4, x4, x6
	addi	x29, x0, 48
	sw		x29, -1(x0)
	sw		x4, 0(x2)
	addi	x29, x0, 49
	sw		x29, -1(x0)
	flw		f2, 0(x2)
	addi	x29, x0, 50
	sw		x29, -1(x0)
	fsub	f2, f2, f29
	addi	x29, x0, 51
	sw		x29, -1(x0)
	fadd	f1, f1, f2
	addi	x29, x0, 52
	sw		x29, -1(x0)
	jalr	x0, x1, 0
min_caml_int_of_float:
	addi	x29, x0, 53
	sw		x29, -1(x0)
	fle		f0, f1, ftoi_pos
	addi	x29, x0, 54
	sw		x29, -1(x0)
	fsub	f1, f0, f1
	addi	x29, x0, 55
	sw		x29, -1(x0)
	sw		x1, 0(x2)
	addi	x29, x0, 56
	sw		x29, -1(x0)
	addi	x2, x2, -4
	addi	x29, x0, 57
	sw		x29, -1(x0)
	jal		x1, min_caml_int_of_float
	addi	x29, x0, 58
	sw		x29, -1(x0)
	addi	x2, x2, 4
	addi	x29, x0, 59
	sw		x29, -1(x0)
	lw		x1, 0(x2)
	addi	x29, x0, 60
	sw		x29, -1(x0)
	sub		x4, x0, x4
	addi	x29, x0, 61
	sw		x29, -1(x0)
	jalr	x0, x1, 0
ftoi_pos:
	addi	x29, x0, 62
	sw		x29, -1(x0)
	addi	x4, x0, 0
	addi	x29, x0, 63
	sw		x29, -1(x0)
	lui		x5, 1258291200
	addi	x29, x0, 64
	sw		x29, -1(x0)
	ori		x5, x0, 1258291200
	addi	x29, x0, 65
	sw		x29, -1(x0)
	fle		f29, f1, ftoi_g
ftoi_l:
	addi	x29, x0, 66
	sw		x29, -1(x0)
	fadd	f1, f1, f29
	addi	x29, x0, 67
	sw		x29, -1(x0)
	fsw		f1, 0(x2)
	addi	x29, x0, 68
	sw		x29, -1(x0)
	lw		x4, 0(x2)
	addi	x29, x0, 69
	sw		x29, -1(x0)
	sub		x4, x4, x5
	addi	x29, x0, 70
	sw		x29, -1(x0)
	jalr	x0, x1, 0
ftoi_g:
	addi	x29, x0, 71
	sw		x29, -1(x0)
	lui		x6, 8388608
	addi	x29, x0, 72
	sw		x29, -1(x0)
	ori		x6, x0, 8388608
	addi	x29, x0, 73
	sw		x29, -1(x0)
	fsub	f1, f1, f29
	addi	x29, x0, 74
	sw		x29, -1(x0)
	add		x4, x4, x6
	addi	x29, x0, 75
	sw		x29, -1(x0)
	fle		f29, f1, ftoi_g
	addi	x29, x0, 76
	sw		x29, -1(x0)
	fadd	f1, f1, f29
	addi	x29, x0, 77
	sw		x29, -1(x0)
	fsw		f1, 0(x2)
	addi	x29, x0, 78
	sw		x29, -1(x0)
	lw		x7, 0(x2)
	addi	x29, x0, 79
	sw		x29, -1(x0)
	sub		x7, x7, x5
	addi	x29, x0, 80
	sw		x29, -1(x0)
	add		x4, x4, x7
	addi	x29, x0, 81
	sw		x29, -1(x0)
	jalr	x0, x1, 0
min_caml_floor:
	addi	x29, x0, 81
	sw		x29, -1(x0)
	fle		f29, f1, floor_ret
	addi	x29, x0, 82
	sw		x29, -1(x0)
	fsub	f2, f0, f1
	addi	x29, x0, 83
	sw		x29, -1(x0)
	fle		f29, f2, floor_ret
floor_l:
	addi	x29, x0, 84
	sw		x29, -1(x0)
	fsw		f1, 0(x2)
	addi	x29, x0, 85
	sw		x29, -1(x0)
	sw		x1, -4(x2)
	addi	x29, x0, 86
	sw		x29, -1(x0)
	addi	x2, x2, -8
	addi	x29, x0, 87
	sw		x29, -1(x0)
	jal		x1, min_caml_int_of_float
	addi	x29, x0, 88
	sw		x29, -1(x0)
	addi	x2, x2, 8
	addi	x29, x0, 89
	sw		x29, -1(x0)
	lw		x1, -4(x2)
	addi	x29, x0, 90
	sw		x29, -1(x0)
	sw		x1, -4(x2)
	addi	x29, x0, 91
	sw		x29, -1(x0)
	addi	x2, x2, -8
	addi	x29, x0, 92
	sw		x29, -1(x0)
	jal		x1, min_caml_float_of_int
	addi	x29, x0, 93
	sw		x29, -1(x0)
	addi	x2, x2, 8
	addi	x29, x0, 94
	sw		x29, -1(x0)
	lw		x1, -4(x2)
	addi	x29, x0, 95
	sw		x29, -1(x0)
	flw		f2, 0(x2)
	addi	x29, x0, 96
	sw		x29, -1(x0)
	fle		f1, f2, floor_ret
	addi	x29, x0, 97
	sw		x29, -1(x0)
	fsub	f1, f1, f30
floor_ret:
	addi	x29, x0, 98
	sw		x29, -1(x0)
	jalr	x0, x1, 0
print_reg:
	sw		x0, -1(x0)
	sw		x1, -1(x0)
	sw		x2, -1(x0)
	sw		x3, -1(x0)
	sw		x4, -1(x0)
	sw		x5, -1(x0)
	sw		x6, -1(x0)
	sw		x7, -1(x0)
	sw		x8, -1(x0)
	sw		x9, -1(x0)
	sw		x10, -1(x0)
	sw		x11, -1(x0)
	sw		x12, -1(x0)
	sw		x13, -1(x0)
	sw		x14, -1(x0)
	sw		x15, -1(x0)
	sw		x16, -1(x0)
	sw		x17, -1(x0)
	sw		x18, -1(x0)
	sw		x19, -1(x0)
	sw		x20, -1(x0)
	sw		x21, -1(x0)
	sw		x22, -1(x0)
	sw		x23, -1(x0)
	sw		x24, -1(x0)
	sw		x25, -1(x0)
	sw		x26, -1(x0)
	sw		x27, -1(x0)
	sw		x28, -1(x0)
	sw		x29, -1(x0)
	sw		x30, -1(x0)
	sw		x31, -1(x0)
	fsw		f0, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f1, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f2, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f3, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f4, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f5, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f6, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f7, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f8, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f9, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f10, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f11, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f12, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f13, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f14, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f15, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f16, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f17, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f18, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f19, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f20, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f21, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f22, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f23, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f24, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f25, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f26, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f27, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f28, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f29, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f30, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	fsw		f31, 0(x2)
	lw		x29, 0(x2)
	sw		x29, -1(x0)
	jalr	x0, x1, 0
