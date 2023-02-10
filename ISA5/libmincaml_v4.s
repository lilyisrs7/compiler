min_caml_print_char:
	sw		x4, -2(x0)
	jalr	x0, x1, 0
min_caml_print_int:
	sw		x4, -1(x0)
	jalr	x0, x1, 0
min_caml_read_int:
	lw		x4, -1(x0)
	jalr	x0, x1, 0
min_caml_read_float:
	flw		f1, -1(x0)
	jalr	x0, x1, 0
min_caml_create_array:
	addi	x6, x4, 0
	addi	x4, x3, 0
create_array_loop:
	beq		x6, x0, create_array_exit
create_array_cont:
	sw		x5, 0(x3)
	addi	x6, x6, -1
	addi	x3, x3, 4
	jal		x0, create_array_loop
create_array_exit:
	jalr	x0, x1, 0
min_caml_create_float_array:
	addi	x5, x4, 0
	addi	x4, x3, 0
create_float_array_loop:
	beq		x5, x0, create_float_array_exit
create_float_array_cont:
	fsw		f1, 0(x3)
	addi	x5, x5, -1
	addi	x3, x3, 4
	jal		x0, create_float_array_loop
create_float_array_exit:
	jalr	x0, x1, 0
min_caml_float_of_int:
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
	fadd	f1, f0, f0
	lui		x5, 8388608
	ori		x5, x0, 8388608
	lui		x6, 1258291200
	ori		x6, x0, 1258291200
	ble		x5, x4, itof_g
itof_l:
	add		x4, x4, x6
	sw		x4, 0(x2)
	flw		f1, 0(x2)
	fsub	f1, f1, f29
	jalr	x0, x1, 0
itof_g:
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
	addi	x4, x0, 0
	lui		x5, 1258291200
	ori		x5, x0, 1258291200
	fle		f29, f1, ftoi_g
ftoi_l:
	fadd	f1, f1, f29
	fsw		f1, 0(x2)
	lw		x4, 0(x2)
	sub		x4, x4, x5
	jalr	x0, x1, 0
ftoi_g:
	lui		x6, 8388608
	ori		x6, x0, 8388608
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
	fle		f29, f1, floor_ret
	fsub	f2, f0, f1
	fle		f29, f2, floor_ret
floor_l:
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
	jalr	x0, x1, 0
