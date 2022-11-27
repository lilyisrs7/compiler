min_caml_print_char:
	sw		x4, -2(x0)
	jalr	x0, x1, 0
min_caml_print_int:
	sw		x4, -1(x0)
	jalr	x0, x1, 0
min_caml_read_int:
	ble		x29, x30, min_caml_read_int
exec_read_int:
	lui		x27, %hi(data)
	ori		x27, x0, %lo(data)
	add		x27, x27, x30
	lw		x10, 0(x27)
	addi	x30, x30, 4
	jalr	x0, x1, 0
min_caml_read_float:
	ble		x29, x30, min_caml_read_float
exec_read_float:
	lui		x27, %hi(data)
	ori		x27, x0, %lo(data)
	add		x27, x27, x30
	flw		f10, 0(x27)
	addi	x30, x30, 4
	jalr	x0, x1, 0
min_caml_create_array:
	addi	x10, x3, 0
create_array_loop:
	beq		x4, x0, create_array_exit
create_array_cont:
	sw		x5, 0(x3)
	addi	x4, x4, -1
	addi	x3, x3, 4
	jal		x0, create_array_loop
create_array_exit:
	jalr	x0, x1, 0
min_caml_create_float_array:
	addi	x10, x3, 0
create_float_array_loop:
	beq		x4, x0, create_float_array_exit
create_float_array_cont:
	fsw		f0, 0(x3)
	addi	x4, x4, -1
	addi	x3, x3, 4
	jal		x0, create_float_array_loop
create_float_array_exit:
	jalr	x0, x1, 0
min_caml_sqrt:
	fsqrt	f10, f0
	jalr	x0, x1, 0
min_caml_float_of_int:
	ble		x0, x4, itof_pos
	sub		x4, x0, x4
	jal		x1, min_caml_float_of_int
	fsub	f31, f31, f31
	fadd	f31, f31, f10
	fsub	f10, f10, f10
	fsub	f10, f10, f31
	jalr	x0, x1, 0
itof_pos:
	lui		x5, 8388608
	ori		x5, x0, 8388608
	fsub	f10, f10, f10
	lui		x31, %hi(l.0)
	ori		x31, x0, %lo(l.0)
	flw		f31, 0(x31)
	ble		x5, x4, itof_g
itof_l:
	addi	x4, x4, 1258291200
	sw		x4, 0(x2)
	flw		f10, 0(x2)
	fsub	f10, f10, f31
	jalr	x0, x1, 0
itof_g:
	sub		x4, x4, x5
	fadd	f10, f10, f31
	ble		x5, x4, itof_g
	addi	x4, x4, 1258291200
	sw		x4, 0(x2)
	flw		f11, 0(x2)
	fsub	f11, f11, f31
	fadd	f10, f10, f11
	jalr	x0, x1, 0
min_caml_int_of_float:
	lui		x4, %hi(l.1)
	ori		x4, x0, %lo(l.1)
	flw		f1, 0(x4)
	fle		x31, f1, f0
	addi	x31, x31, -1
	beq		x31, x0, ftoi_pos
	sub		f0, f1, f0
	jal		x1, min_caml_int_of_float
	addi	x10, x0, x10
	jalr	x0, x1, 0
ftoi_pos:
	lui		x31, %hi(l.0)
	ori		x31, x0, %lo(l.0)
	flw		f31, 0(x31)
	lui		x5, 8388608
	ori		x5, x0, 8388608
	addi	x10, x0, 0
	fle		x31, f31, f0
	beq		x31, x0, ftoi_l
	jal		x0, itof_g
ftoi_l:
	fadd	f0, f0, f31
	fsw		f0, 0(x2)
	lw		x10, 0(x2)
	addi	x10, x10, -1258291200
	jalr	x0, x1, 0
ftoi_g:
	fsub	f0, f0, f31
	add		x10, x10, x5
	fle		x31, f31, f0
	addi	x31, x31, -1
	ble		x31, x0, ftoi_g
	fadd	f0, f0, f31
	fsw		f0, 0(x2)
	lw		x11, 0(x2)
	addi	x11, x11, -1258291200
	fadd	x10, x10, x11
	jalr	x0, x1, 0
