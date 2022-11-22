min_caml_print_char:
	sw		x4, -2(x0)
	jalr	x0, x1, 0
min_caml_print_int:
	sw		x4, -1(x0)
	jalr	x0, x1, 0
min_caml_read_int:
	ble		x29, x30, min_caml_read_int
	jal		x0, exec_read_int
exec_read_int:
	lui		x27, %hi(data)
	ori		x27, x0, %lo(data)
	add		x27, x27, x30
	lw		x10, 0(x27)
	addi	x30, x30, 4
	jalr	x0, x1, 0
min_caml_read_float:
	ble		x29, x30, min_caml_read_float
	jal		x0, exec_read_float
exec_read_float:
	lui		x27, %hi(data)
	ori		x27, x0, %lo(data)
	add		x27, x27, x30
	flw		f10, 0(x27)
	addi	x30, x30, 4
	jalr	x0, x1, 0
min_caml_create_array:
	addi	x10, x3, 0
	jal		x0, create_array_loop
create_array_loop:
	beq		x4, x0, create_array_exit
	jal		x0, create_array_cont
create_array_exit:
	jalr	x0, x1, 0
create_array_cont:
	sw		x5, 0(x3)
	addi	x4, x4, -1
	addi	x3, x3, 4
	jal		x0, create_array_loop
min_caml_create_float_array:
	addi	x10, x3, 0
	jal		x0, create_float_array_loop
create_float_array_loop:
	beq		x4, x0, create_float_array_exit
	jal		x0, create_float_array_cont
create_float_array_exit:
	jalr	x0, x1, 0
create_float_array_cont:
	sw		x5, 0(x3)
	addi	x4, x4, -1
	addi	x3, x3, 4
	jal		x0, create_float_array_loop
min_caml_sqrt:
	fsqrt	f10, f0
	jalr	x0, x1, 0
