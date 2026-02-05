	.file	"rv_hart.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.rv_hart_hang,"ax",@progbits
	.align	1
	.globl	rv_hart_hang
	.type	rv_hart_hang, @function
rv_hart_hang:
.LFB237:
	.file 1 "./drivers/lhal/include/arch/risc-v/t-head/rv_hart.c"
	.loc 1 14 1
	.cfi_startproc
.L2:
	.loc 1 15 5 discriminator 1
	.loc 1 16 9 discriminator 1
.LBB17:
.LBB18:
	.file 2 "./drivers/lhal/include/arch/risc-v/t-head/Core/Include/csi_rv32_gcc.h"
	.loc 2 1217 5 discriminator 1
 #APP
# 1217 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/Core/Include/csi_rv32_gcc.h" 1
	wfi
# 0 "" 2
 #NO_APP
	j	.L2
.LBE18:
.LBE17:
	.cfi_endproc
.LFE237:
	.size	rv_hart_hang, .-rv_hart_hang
	.section	.text.rv_hart_misa_ext_chk,"ax",@progbits
	.align	1
	.globl	rv_hart_misa_ext_chk
	.type	rv_hart_misa_ext_chk, @function
rv_hart_misa_ext_chk:
.LFB238:
	.loc 1 24 1
	.cfi_startproc
.LVL0:
	.loc 1 25 5
.LBB19:
	.loc 1 25 29
	.loc 1 25 48
 #APP
# 25 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_hart.c" 1
	csrr a4, misa
# 0 "" 2
.LVL1:
	.loc 1 25 94
 #NO_APP
.LBE19:
	.loc 1 27 5
	.loc 1 27 8 is_stmt 0
	beq	a4,zero,.L6
	.loc 1 28 9 is_stmt 1
	.loc 1 28 24 is_stmt 0
	addi	a5,a0,-65
	.loc 1 28 12
	andi	a2,a5,0xff
	li	a3,25
	bgtu	a2,a3,.L5
.LVL2:
.L8:
	.loc 1 33 13 is_stmt 1
	.loc 1 33 30 is_stmt 0
	li	a0,1
	sll	a0,a0,a5
	.loc 1 33 25
	and	a0,a0,a4
	ret
.LVL3:
.L5:
	.loc 1 32 9 is_stmt 1
	.loc 1 32 24 is_stmt 0
	addi	a5,a0,-97
	.loc 1 32 12
	andi	a2,a5,0xff
	.loc 1 39 12
	li	a0,0
.LVL4:
	.loc 1 32 12
	bleu	a2,a3,.L8
.L3:
	.loc 1 40 1
	ret
.LVL5:
.L6:
	.loc 1 39 12
	li	a0,0
.LVL6:
	j	.L3
	.cfi_endproc
.LFE238:
	.size	rv_hart_misa_ext_chk, .-rv_hart_misa_ext_chk
	.section	.text.rv_enterSupervisor,"ax",@progbits
	.align	1
	.globl	rv_enterSupervisor
	.type	rv_enterSupervisor, @function
rv_enterSupervisor:
.LFB239:
	.loc 1 43 1 is_stmt 1
	.cfi_startproc
	.loc 1 44 5
 #APP
# 44 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_hart.c" 1
	fence
	csrw mepc, ra
	li   t0, ~(3 << 11)
	li   t1, 1 << 11
	csrr t2, mstatus
	and  t0, t0, t2
	or   t0, t0, t1
	csrw mstatus, t0
	mret
	
# 0 "" 2
	.loc 1 57 1 is_stmt 0
 #NO_APP
	.cfi_endproc
.LFE239:
	.size	rv_enterSupervisor, .-rv_enterSupervisor
	.section	.text.rv_enterUser,"ax",@progbits
	.align	1
	.globl	rv_enterUser
	.type	rv_enterUser, @function
rv_enterUser:
.LFB240:
	.loc 1 60 1 is_stmt 1
	.cfi_startproc
	.loc 1 61 5
 #APP
# 61 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_hart.c" 1
	fence
	csrw mepc, ra
	li   t0, ~(3 << 11)
	csrr t2, mstatus
	and  t0, t0, t2
	csrw mstatus, t0
	mret
	
# 0 "" 2
	.loc 1 72 1 is_stmt 0
 #NO_APP
	.cfi_endproc
.LFE240:
	.size	rv_enterUser, .-rv_enterUser
	.section	.text.rv_hart_switch_mode_from_M,"ax",@progbits
	.align	1
	.globl	rv_hart_switch_mode_from_M
	.type	rv_hart_switch_mode_from_M, @function
rv_hart_switch_mode_from_M:
.LFB241:
	.loc 1 77 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 79 5
	.loc 1 84 5
	.loc 1 77 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 84 5
	li	a5,1
	.loc 1 77 1
	mv	s2,a0
	mv	s1,a2
	mv	s0,a3
	.loc 1 84 5
	beq	a3,a5,.L12
	li	a5,3
	beq	a3,a5,.L13
	bne	a3,zero,.L15
	.loc 1 96 18
	li	a0,85
.LVL8:
	sw	a1,12(sp)
	.loc 1 96 13 is_stmt 1
	.loc 1 96 18 is_stmt 0
	call	rv_hart_misa_ext_chk
.LVL9:
	.loc 1 96 16
	lw	a1,12(sp)
	bne	a0,zero,.L13
.L18:
	.loc 1 15 5 is_stmt 1
	.loc 1 16 9
.LBB20:
.LBB21:
.LBB22:
	.loc 2 1217 5
 #APP
# 1217 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/Core/Include/csi_rv32_gcc.h" 1
	wfi
# 0 "" 2
 #NO_APP
	j	.L18
.LVL10:
.L12:
.LBE22:
.LBE21:
.LBE20:
	.loc 1 89 18 is_stmt 0
	li	a0,83
.LVL11:
	sw	a1,12(sp)
	.loc 1 89 13 is_stmt 1
	.loc 1 89 18 is_stmt 0
	call	rv_hart_misa_ext_chk
.LVL12:
	.loc 1 89 16
	lw	a1,12(sp)
	bne	a0,zero,.L13
.L16:
	.loc 1 15 5 is_stmt 1
	.loc 1 16 9
.LBB23:
.LBB24:
.LBB25:
	.loc 2 1217 5
 #APP
# 1217 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/Core/Include/csi_rv32_gcc.h" 1
	wfi
# 0 "" 2
 #NO_APP
	j	.L16
.LVL13:
.L15:
.LBE25:
.LBE24:
.LBE23:
	.loc 1 15 5
	.loc 1 16 9
.LBB26:
.LBB27:
.LBB28:
	.loc 2 1217 5
 #APP
# 1217 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/Core/Include/csi_rv32_gcc.h" 1
	wfi
# 0 "" 2
 #NO_APP
	j	.L15
.LVL14:
.L13:
.LBE28:
.LBE27:
.LBE26:
	.loc 1 106 5
.LBB29:
	.loc 1 106 14
	.loc 1 106 33
 #APP
# 106 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_hart.c" 1
	csrr a5, mstatus
# 0 "" 2
.LVL15:
	.loc 1 106 82
 #NO_APP
.LBE29:
	.loc 1 107 5
	.loc 1 107 19 is_stmt 0
	li	a4,-8192
	addi	a4,a4,2047
	and	a5,a5,a4
.LVL16:
	.loc 1 107 52
	slli	a4,s0,11
	.loc 1 107 9
	or	a5,a5,a4
.LVL17:
	.loc 1 108 5 is_stmt 1
	.loc 1 110 5
	.loc 1 108 9 is_stmt 0
	andi	a5,a5,-129
.LVL18:
	.loc 1 110 8
 #APP
# 110 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_hart.c" 1
	csrw mstatus, a5
# 0 "" 2
	.loc 1 111 5 is_stmt 1
	.loc 1 111 8 is_stmt 0
# 111 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_hart.c" 1
	csrw mepc, s1
# 0 "" 2
	.loc 1 113 5 is_stmt 1
	.loc 1 113 8 is_stmt 0
 #NO_APP
	li	a5,1
.LVL19:
	bne	s0,a5,.L19
	.loc 1 114 9 is_stmt 1
	.loc 1 114 12 is_stmt 0
 #APP
# 114 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_hart.c" 1
	csrw stvec, s1
# 0 "" 2
	.loc 1 115 9 is_stmt 1
	.loc 1 115 12 is_stmt 0
# 115 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_hart.c" 1
	csrw sscratch, 0
# 0 "" 2
	.loc 1 116 9 is_stmt 1
	.loc 1 116 12 is_stmt 0
# 116 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_hart.c" 1
	csrw sie, 0
# 0 "" 2
	.loc 1 117 9 is_stmt 1
	.loc 1 117 12 is_stmt 0
# 117 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_hart.c" 1
	csrw satp, 0
# 0 "" 2
 #NO_APP
.L19:
	.loc 1 124 5 is_stmt 1
	.loc 1 126 5
	.loc 1 126 28 is_stmt 0
	mv	a0,s2
	.loc 1 127 5 is_stmt 1
	.loc 1 128 5
 #APP
# 128 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_hart.c" 1
	mret
# 0 "" 2
	.loc 1 131 5
 #NO_APP
	.cfi_endproc
.LFE241:
	.size	rv_hart_switch_mode_from_M, .-rv_hart_switch_mode_from_M
	.text
.Letext0:
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x261
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	.LASF9
	.byte	0x3
	.byte	0xe8
	.byte	0x16
	.4byte	0x70
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF10
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0x64
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bc
	.byte	0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0x4b
	.byte	0x26
	.4byte	0x77
	.4byte	.LLST1
	.byte	0x6
	.4byte	.LASF13
	.byte	0x1
	.byte	0x4b
	.byte	0x36
	.4byte	0x77
	.4byte	.LLST2
	.byte	0x6
	.4byte	.LASF14
	.byte	0x1
	.byte	0x4c
	.byte	0x26
	.4byte	0x77
	.4byte	.LLST3
	.byte	0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x4c
	.byte	0x3b
	.4byte	0x77
	.4byte	.LLST4
	.byte	0x7
	.string	"val"
	.byte	0x1
	.byte	0x4f
	.byte	0x13
	.4byte	0x48
	.4byte	.LLST5
	.byte	0x8
	.string	"a0"
	.byte	0x1
	.byte	0x7e
	.byte	0x1c
	.4byte	0x48
	.byte	0x1
	.byte	0x5a
	.byte	0x8
	.string	"a1"
	.byte	0x1
	.byte	0x7f
	.byte	0x1c
	.4byte	0x48
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.4byte	0x128
	.byte	0x7
	.string	"tmp"
	.byte	0x1
	.byte	0x6a
	.byte	0x1c
	.4byte	0x48
	.4byte	.LLST6
	.byte	0
	.byte	0xa
	.4byte	0x231
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0x61
	.byte	0x11
	.4byte	0x14d
	.byte	0xb
	.4byte	0x23a
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.byte	0
	.byte	0xa
	.4byte	0x231
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	0x172
	.byte	0xb
	.4byte	0x23a
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.byte	0
	.byte	0xa
	.4byte	0x231
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x67
	.byte	0xd
	.4byte	0x197
	.byte	0xb
	.4byte	0x23a
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.byte	0
	.byte	0xc
	.4byte	.LVL9
	.4byte	0x1e0
	.4byte	0x1ab
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x55
	.byte	0
	.byte	0xe
	.4byte	.LVL12
	.4byte	0x1e0
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x53
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3b
	.byte	0x6
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.byte	0x1
	.byte	0x9c
	.byte	0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0x17
	.byte	0x5
	.4byte	0x5d
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.byte	0x1
	.byte	0x9c
	.4byte	0x231
	.byte	0x11
	.string	"ext"
	.byte	0x1
	.byte	0x17
	.byte	0x1f
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.byte	0x19
	.byte	0x13
	.4byte	0x48
	.byte	0x1
	.byte	0x5e
	.byte	0x13
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x8
	.string	"tmp"
	.byte	0x1
	.byte	0x19
	.byte	0x2b
	.4byte	0x48
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF24
	.byte	0x1
	.byte	0xd
	.byte	0x20
	.byte	0x1
	.byte	0x15
	.4byte	.LASF25
	.byte	0x2
	.2byte	0x4bf
	.byte	0x33
	.byte	0x3
	.byte	0x16
	.4byte	0x231
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.byte	0x1
	.byte	0x9c
	.byte	0xb
	.4byte	0x23a
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x10
	.byte	0x9
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.byte	0x13
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0x1b
	.byte	0xe
	.byte	0x55
	.byte	0x17
	.byte	0x11
	.byte	0x1
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x3
	.byte	0x24
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3e
	.byte	0xb
	.byte	0x3
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x87,0x1
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x1d
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x87,0x1
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x2e
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x2e
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x97,0x42
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST1:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE241
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LFE241
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9-1
	.4byte	.LFE241
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9-1
	.4byte	.LFE241
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xff7f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE238
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB237
	.4byte	.LFE237
	.4byte	.LFB238
	.4byte	.LFE238
	.4byte	.LFB239
	.4byte	.LFE239
	.4byte	.LFB240
	.4byte	.LFE240
	.4byte	.LFB241
	.4byte	.LFE241
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF20:
	.string	"misa"
.LASF10:
	.string	"uintptr_t"
.LASF9:
	.string	"__uintptr_t"
.LASF12:
	.string	"arg0"
.LASF13:
	.string	"arg1"
.LASF22:
	.string	"./drivers/lhal/include/arch/risc-v/t-head/rv_hart.c"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF23:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/lhal"
.LASF8:
	.string	"unsigned int"
.LASF24:
	.string	"rv_hart_hang"
.LASF7:
	.string	"long long unsigned int"
.LASF16:
	.string	"rv_enterUser"
.LASF14:
	.string	"next_addr"
.LASF19:
	.string	"rv_hart_misa_ext_chk"
.LASF17:
	.string	"rv_enterSupervisor"
.LASF6:
	.string	"long long int"
.LASF11:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF18:
	.string	"rv_hart_switch_mode_from_M"
.LASF4:
	.string	"long int"
.LASF15:
	.string	"next_mode"
.LASF25:
	.string	"__WFI"
.LASF0:
	.string	"signed char"
	.ident	"GCC: (GNU) 10.4.0"
