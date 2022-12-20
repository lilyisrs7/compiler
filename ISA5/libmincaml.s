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
