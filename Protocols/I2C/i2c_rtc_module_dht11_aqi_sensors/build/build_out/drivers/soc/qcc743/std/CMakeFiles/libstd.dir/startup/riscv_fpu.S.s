# 1 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/riscv_fpu.S"
# 1 "/home/sai/QCCSDK-QCC74x/examples/peripherals/i2c/i2c_rtc_module/build/build_out/drivers/soc/qcc743/std//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/riscv_fpu.S"
# 11 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/riscv_fpu.S"
# 1 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/irq_ctx.h" 1
# 12 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/riscv_fpu.S" 2
# 22 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/riscv_fpu.S"
 .globl riscv_fpuconfig
 .globl riscv_savefpu
 .globl riscv_savefpu_force
 .globl riscv_restorefpu

 .file "riscv_fpu.S"
# 71 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/riscv_fpu.S"
 .type riscv_fpuconfig, function

riscv_fpuconfig:
 li a0, 0x2000
 csrs mstatus, a0
 csrwi fcsr, 0
 ret
# 98 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/riscv_fpu.S"
 .type riscv_savefpu, function

riscv_savefpu:
 lw t0, (4 * 32)(a0)
 li t1, 0x6000
 and t2, t0, t1
 li t1, 0x6000
 bne t2, t1, 1f
 li t1, ~0x6000
 and t0, t0, t1
 li t1, 0x4000
 or t0, t0, t1
 sw t0, (4 * 32)(a0)


riscv_savefpu_force:

 fsw f0, (4 * (33 + 1 * 0))(a0)
 fsw f1, (4 * (33 + 1 * 1))(a0)
 fsw f2, (4 * (33 + 1 * 2))(a0)
 fsw f3, (4 * (33 + 1 * 3))(a0)
 fsw f4, (4 * (33 + 1 * 4))(a0)
 fsw f5, (4 * (33 + 1 * 5))(a0)
 fsw f6, (4 * (33 + 1 * 6))(a0)
 fsw f7, (4 * (33 + 1 * 7))(a0)
 fsw f8, (4 * (33 + 1 * 8))(a0)
 fsw f9, (4 * (33 + 1 * 9))(a0)
 fsw f10, (4 * (33 + 1 * 10))(a0)
 fsw f11, (4 * (33 + 1 * 11))(a0)
 fsw f12, (4 * (33 + 1 * 12))(a0)
 fsw f13, (4 * (33 + 1 * 13))(a0)
 fsw f14, (4 * (33 + 1 * 14))(a0)
 fsw f15, (4 * (33 + 1 * 15))(a0)
 fsw f16, (4 * (33 + 1 * 16))(a0)
 fsw f17, (4 * (33 + 1 * 17))(a0)
 fsw f18, (4 * (33 + 1 * 18))(a0)
 fsw f19, (4 * (33 + 1 * 19))(a0)
 fsw f20, (4 * (33 + 1 * 20))(a0)
 fsw f21, (4 * (33 + 1 * 21))(a0)
 fsw f22, (4 * (33 + 1 * 22))(a0)
 fsw f23, (4 * (33 + 1 * 23))(a0)
 fsw f24, (4 * (33 + 1 * 24))(a0)
 fsw f25, (4 * (33 + 1 * 25))(a0)
 fsw f26, (4 * (33 + 1 * 26))(a0)
 fsw f27, (4 * (33 + 1 * 27))(a0)
 fsw f28, (4 * (33 + 1 * 28))(a0)
 fsw f29, (4 * (33 + 1 * 29))(a0)
 fsw f30, (4 * (33 + 1 * 30))(a0)
 fsw f31, (4 * (33 + 1 * 31))(a0)

 frcsr t0
 sw t0, (4 * (33 + 1 * 32))(a0)

1:
 ret
# 174 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/riscv_fpu.S"
 .type riscv_restorefpu, function

riscv_restorefpu:
 lw t0, (4 * 32)(a0)
 li t1, 0x6000
 and t2, t0, t1
 li t1, 0x2000
 ble t2, t1, 1f



 flw f0, (4 * (33 + 1 * 0))(a0)
 flw f1, (4 * (33 + 1 * 1))(a0)
 flw f2, (4 * (33 + 1 * 2))(a0)
 flw f3, (4 * (33 + 1 * 3))(a0)
 flw f4, (4 * (33 + 1 * 4))(a0)
 flw f5, (4 * (33 + 1 * 5))(a0)
 flw f6, (4 * (33 + 1 * 6))(a0)
 flw f7, (4 * (33 + 1 * 7))(a0)
 flw f8, (4 * (33 + 1 * 8))(a0)
 flw f9, (4 * (33 + 1 * 9))(a0)
 flw f10, (4 * (33 + 1 * 10))(a0)
 flw f11, (4 * (33 + 1 * 11))(a0)
 flw f12, (4 * (33 + 1 * 12))(a0)
 flw f13, (4 * (33 + 1 * 13))(a0)
 flw f14, (4 * (33 + 1 * 14))(a0)
 flw f15, (4 * (33 + 1 * 15))(a0)
 flw f16, (4 * (33 + 1 * 16))(a0)
 flw f17, (4 * (33 + 1 * 17))(a0)
 flw f18, (4 * (33 + 1 * 18))(a0)
 flw f19, (4 * (33 + 1 * 19))(a0)
 flw f20, (4 * (33 + 1 * 20))(a0)
 flw f21, (4 * (33 + 1 * 21))(a0)
 flw f22, (4 * (33 + 1 * 22))(a0)
 flw f23, (4 * (33 + 1 * 23))(a0)
 flw f24, (4 * (33 + 1 * 24))(a0)
 flw f25, (4 * (33 + 1 * 25))(a0)
 flw f26, (4 * (33 + 1 * 26))(a0)
 flw f27, (4 * (33 + 1 * 27))(a0)
 flw f28, (4 * (33 + 1 * 28))(a0)
 flw f29, (4 * (33 + 1 * 29))(a0)
 flw f30, (4 * (33 + 1 * 30))(a0)
 flw f31, (4 * (33 + 1 * 31))(a0)



 lw t0, (4 * (33 + 1 * 32))(a0)
 fscsr t0

1:
 ret
