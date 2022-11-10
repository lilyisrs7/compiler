min_caml_print_char:
    sw      x4, -4(x0)
min_caml_print_int:
    sw      x4, -4(x0)
min_caml_read_int:
    ble     x30, x29, exec_read_int
    jal     x1, min_caml_read_int
exec_read_int:
    lui     x27, %hi(data)
    ori     x27, %lo(data)
    add     x27, x27, x30
    lw      x10, 0(x27)
    addi    x30, x30, 1
    jalr    x0, x1, 0
min_caml_read_float:
    ble     x30, x29, exec_read_float
    jal     x1, min_caml_read_float
exec_read_float:
    lui     x27, %hi(data)
    ori     x27, %lo(data)
    add     x27, x27, x30
    flw     f10, 0(x27)
    addi    x30, x30, 1
    jalr    x0, x1, 0
min_caml_sqrt:
	fsqrt	f10, f0