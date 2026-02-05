# 1 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/vector.S"
# 1 "/home/sai/QCCSDK-QCC74x/examples/peripherals/i2c/i2c_rtc_module/build/build_out/drivers/soc/qcc743/std//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/vector.S"
# 12 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/vector.S"
# 1 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/irq_ctx.h" 1
# 13 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/vector.S" 2




.section .bss.g_trap_stack

    .align 4
    .global g_trap_sp_base
    .global g_trap_sp
g_trap_sp_base:

    .space 1024



g_trap_sp:
# 44 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/vector.S"
    .section .text.vectors.default_interrupt_handler, "ax", %progbits
    .align 6
    .global default_interrupt_handler
    .weak default_interrupt_handler

    .type default_interrupt_handler, %function
default_interrupt_handler:

    addi sp, sp, -80


    sw x5, 4(sp)
    sw x6, 8(sp)
    csrr t0, mepc
    csrr t1, mcause
    sw t1, 64(sp)
    sw t0, 68(sp)
    csrr t0, mscratch
    sw t0, 72(sp)

    sw x1, 0(sp)
    sw x7, 12(sp)
    sw x10, 16(sp)
    sw x11, 20(sp)
    sw x12, 24(sp)
    sw x13, 28(sp)
    sw x14, 32(sp)
    sw x15, 36(sp)
    sw x16, 40(sp)
    sw x17, 44(sp)
    sw x28, 48(sp)
    sw x29, 52(sp)
    sw x30, 56(sp)
    sw x31, 60(sp)
# 104 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/vector.S"
    csrs mstatus, 8


    addi sp, sp, -96


    csrr t1, mstatus
    sw t1, 84(sp)
    srli t2, t1, 13
    andi t2, t2, 0x3
    li t0, 0x3
    bne t2, t0, .F_RegNotSave1

    fsw ft0, 0(sp)
    fsw ft1, 4(sp)
    fsw ft2, 8(sp)
    fsw ft3, 12(sp)
    fsw ft4, 16(sp)
    fsw ft5, 20(sp)
    fsw ft6, 24(sp)
    fsw ft7, 28(sp)
    fsw fa0, 32(sp)
    fsw fa1, 36(sp)
    fsw fa2, 40(sp)
    fsw fa3, 44(sp)
    fsw fa4, 48(sp)
    fsw fa5, 52(sp)
    fsw fa6, 56(sp)
    fsw fa7, 60(sp)
    fsw ft8, 64(sp)
    fsw ft9, 68(sp)
    fsw ft10,72(sp)
    fsw ft11,76(sp)
.F_RegNotSave1:

    csrr a0, mcause
    andi t1, a0, 0x3FF

    la t2, interrupt_entry
    jalr t2

    lw t1, 84(sp)
    srli t2, t1, 13
    andi t2, t2, 0x3
    li t0, 0x3
    bne t2, t0, .F_RegNotLoad

    flw ft0, 0(sp)
    flw ft1, 4(sp)
    flw ft2, 8(sp)
    flw ft3, 12(sp)
    flw ft4, 16(sp)
    flw ft5, 20(sp)
    flw ft6, 24(sp)
    flw ft7, 28(sp)
    flw fa0, 32(sp)
    flw fa1, 36(sp)
    flw fa2, 40(sp)
    flw fa3, 44(sp)
    flw fa4, 48(sp)
    flw fa5, 52(sp)
    flw fa6, 56(sp)
    flw fa7, 60(sp)
    flw ft8, 64(sp)
    flw ft9, 68(sp)
    flw ft10,72(sp)
    flw ft11,76(sp)

.F_RegNotLoad:
    addi sp, sp, 96



    csrc mstatus, 8

    lw t0, 68(sp)
    csrw mepc, t0
    lw t0, 64(sp)
    csrw mcause, t0
    lw t0, 72(sp)
    csrw mscratch, t0

    lw x1, 0(sp)
    lw x5, 4(sp)
    lw x6, 8(sp)
    lw x7, 12(sp)
    lw x10, 16(sp)
    lw x11, 20(sp)
    lw x12, 24(sp)
    lw x13, 28(sp)
    lw x14, 32(sp)
    lw x15, 36(sp)
    lw x16, 40(sp)
    lw x17, 44(sp)
    lw x28, 48(sp)
    lw x29, 52(sp)
    lw x30, 56(sp)
    lw x31, 60(sp)

    addi sp, sp, 80
    ret

    .size default_interrupt_handler, . - default_interrupt_handler






    .section .text.vectors.default_trap_handler, "ax", %progbits
    .align 6
    .global trap
    .type trap, %function
    .weak default_trap_handler
    .global default_trap_handler
    .type default_trap_handler, %function
default_trap_handler:
trap:

    sw t0, -4(sp)
    csrr t0, mcause


    blt t0, x0, .Lirq

    la t0, g_trap_sp
    addi t0, t0, -(4 * (33 + (1 * 33)))
    sw x1, (4 * 1)(t0)
    sw x2, (4 * 2)(t0)
    sw x3, (4 * 3)(t0)
    sw x4, (4 * 4)(t0)
    sw x6, (4 * 6)(t0)
    sw x7, (4 * 7)(t0)
    sw x8, (4 * 8)(t0)
    sw x9, (4 * 9)(t0)
    sw x10, (4 * 10)(t0)
    sw x11, (4 * 11)(t0)
    sw x12, (4 * 12)(t0)
    sw x13, (4 * 13)(t0)
    sw x14, (4 * 14)(t0)
    sw x15, (4 * 15)(t0)
    sw x16, (4 * 16)(t0)
    sw x17, (4 * 17)(t0)
    sw x18, (4 * 18)(t0)
    sw x19, (4 * 19)(t0)
    sw x20, (4 * 20)(t0)
    sw x21, (4 * 21)(t0)
    sw x22, (4 * 22)(t0)
    sw x23, (4 * 23)(t0)
    sw x24, (4 * 24)(t0)
    sw x25, (4 * 25)(t0)
    sw x26, (4 * 26)(t0)
    sw x27, (4 * 27)(t0)
    sw x28, (4 * 28)(t0)
    sw x29, (4 * 29)(t0)
    sw x30, (4 * 30)(t0)
    sw x31, (4 * 31)(t0)
    csrr a0, mepc
    sw a0, (4 * 0)(t0)
    csrr a0, mstatus
    sw a0, (4 * 32)(t0)

    mv a0, t0
    lw t0, -4(sp)
    mv sp, a0
    sw t0, (4 * 5)(sp)

    jal exception_entry

    lw t0, (4 * 32)(sp)
    csrw mstatus, t0
    lw t0, (4 * 0)(sp)
    csrw mepc, t0

    lw x31, (4 * 31)(sp)
    lw x30, (4 * 30)(sp)
    lw x29, (4 * 29)(sp)
    lw x28, (4 * 28)(sp)
    lw x27, (4 * 27)(sp)
    lw x26, (4 * 26)(sp)
    lw x25, (4 * 25)(sp)
    lw x24, (4 * 24)(sp)
    lw x23, (4 * 23)(sp)
    lw x22, (4 * 22)(sp)
    lw x21, (4 * 21)(sp)
    lw x20, (4 * 20)(sp)
    lw x19, (4 * 19)(sp)
    lw x18, (4 * 18)(sp)
    lw x17, (4 * 17)(sp)
    lw x16, (4 * 16)(sp)
    lw x15, (4 * 15)(sp)
    lw x14, (4 * 14)(sp)
    lw x13, (4 * 13)(sp)
    lw x12, (4 * 12)(sp)
    lw x11, (4 * 11)(sp)
    lw x10, (4 * 10)(sp)
    lw x9, (4 * 9)(sp)
    lw x8, (4 * 8)(sp)
    lw x7, (4 * 7)(sp)
    lw x6, (4 * 6)(sp)
    lw x5, (4 * 5)(sp)
    lw x4, (4 * 4)(sp)
    lw x3, (4 * 3)(sp)
    lw x1, (4 * 1)(sp)
    lw x2, (4 * 2)(sp)

    mret

.Lirq:
    lw t0, -4(sp)




    addi sp, sp, -16
    sw ra, 0(sp)
    call default_interrupt_handler
    lw ra, 0(sp)
    addi sp, sp, 16
    mret

    .size default_trap_handler, . - default_trap_handler
