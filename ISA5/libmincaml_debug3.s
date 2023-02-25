min_caml_print_char:
	addi	x0, x0, 0
	sw		x4, -2(x0)
	jalr	x0, x1, 0
min_caml_print_int:
	addi	x0, x0, 0
	sw		x4, -1(x0)
	jalr	x0, x1, 0
min_caml_read_int:
	addi	x0, x0, 0
	lw		x4, -1(x0)
	jalr	x0, x1, 0
min_caml_read_float:
	addi	x0, x0, 0
	flw		f1, -1(x0)
	jalr	x0, x1, 0
min_caml_create_array:
	addi	x0, x0, 0
	addi	x6, x4, 0
	addi	x4, x3, 0
create_array_loop:
	addi	x0, x0, 0
	beq		x6, x0, create_array_exit
create_array_cont:
	addi	x0, x0, 0
	sw		x5, 0(x3)
	addi	x6, x6, -1
	addi	x3, x3, 4
	jal		x0, create_array_loop
create_array_exit:
	addi	x0, x0, 0
	jalr	x0, x1, 0
min_caml_create_float_array:
	addi	x0, x0, 0
	addi	x5, x4, 0
	addi	x4, x3, 0
create_float_array_loop:
	addi	x0, x0, 0
	beq		x5, x0, create_float_array_exit
create_float_array_cont:
	addi	x0, x0, 0
	fsw		f1, 0(x3)
	addi	x5, x5, -1
	addi	x3, x3, 4
	jal		x0, create_float_array_loop
create_float_array_exit:
	addi	x0, x0, 0
	jalr	x0, x1, 0
min_caml_float_of_int:
	addi	x0, x0, 0
	ble		x0, x4, itof_pos
	sub		x4, x0, x4
	sw		x1, 0(x2)
	addi	x2, x2, -4
	jal		x1, min_caml_float_of_int
	addi	x2, x2, 4
	lw		x1, 0(x2)
	fsub	f1, f0, f1
	jalr	x0, x1, 0
itof_pos:
	addi	x0, x0, 0
	fadd	f1, f0, f0
	lui		x5, 8388608
	ori		x5, x5, 8388608
	lui		x6, 1258291200
	ori		x6, x6, 1258291200
	ble		x5, x4, itof_g
itof_l:
	addi	x0, x0, 0
	add		x4, x4, x6
	sw		x4, 0(x2)
	flw		f1, 0(x2)
	fsub	f1, f1, f29
	jalr	x0, x1, 0
itof_g:
	addi	x0, x0, 0
	sub		x4, x4, x5
	fadd	f1, f1, f29
	ble		x5, x4, itof_g
	add		x4, x4, x6
	sw		x4, 0(x2)
	flw		f2, 0(x2)
	fsub	f2, f2, f29
	fadd	f1, f1, f2
	jalr	x0, x1, 0
min_caml_int_of_float:
	addi	x0, x0, 0
	fle		f0, f1, ftoi_pos
	fsub	f1, f0, f1
	sw		x1, 0(x2)
	addi	x2, x2, -4
	jal		x1, min_caml_int_of_float
	addi	x2, x2, 4
	lw		x1, 0(x2)
	sub		x4, x0, x4
	jalr	x0, x1, 0
ftoi_pos:
	addi	x0, x0, 0
	addi	x4, x0, 0
	lui		x5, 1258291200
	ori		x5, x5, 1258291200
	fle		f29, f1, ftoi_g
ftoi_l:
	addi	x0, x0, 0
	fadd	f1, f1, f29
	fsw		f1, 0(x2)
	lw		x4, 0(x2)
	sub		x4, x4, x5
	jalr	x0, x1, 0
ftoi_g:
	addi	x0, x0, 0
	lui		x6, 8388608
	ori		x6, x6, 8388608
	fsub	f1, f1, f29
	add		x4, x4, x6
	fle		f29, f1, ftoi_g
	fadd	f1, f1, f29
	fsw		f1, 0(x2)
	lw		x7, 0(x2)
	sub		x7, x7, x5
	add		x4, x4, x7
	jalr	x0, x1, 0
min_caml_floor:
	addi	x0, x0, 0
	fle		f29, f1, floor_ret
	fsub	f2, f0, f1
	fle		f29, f2, floor_ret
floor_l:
	addi	x0, x0, 0
	fsw		f1, 0(x2)
	sw		x1, -4(x2)
	addi	x2, x2, -8
	jal		x1, min_caml_int_of_float
	addi	x2, x2, 8
	lw		x1, -4(x2)
	sw		x1, -4(x2)
	addi	x2, x2, -8
	jal		x1, min_caml_float_of_int
	addi	x2, x2, 8
	lw		x1, -4(x2)
	flw		f2, 0(x2)
	fle		f1, f2, floor_ret
	fsub	f1, f1, f30
floor_ret:
	addi	x0, x0, 0
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
