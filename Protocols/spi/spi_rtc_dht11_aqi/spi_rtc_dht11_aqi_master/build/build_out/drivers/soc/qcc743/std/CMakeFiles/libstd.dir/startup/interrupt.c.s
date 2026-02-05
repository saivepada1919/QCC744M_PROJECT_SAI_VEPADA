	.file	"interrupt.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"Instruction address misaligned"
	.align	2
.LC1:
	.string	"Instruction access fault"
	.align	2
.LC2:
	.string	"Illegal instruction"
	.align	2
.LC3:
	.string	"Breakpoint"
	.align	2
.LC4:
	.string	"Load address misaligned"
	.align	2
.LC5:
	.string	"Load access fault"
	.align	2
.LC6:
	.string	"Store/AMO address misaligned"
	.align	2
.LC7:
	.string	"Store/AMO access fault"
	.align	2
.LC8:
	.string	"Environment call from U-mode"
	.align	2
.LC9:
	.string	"Environment call from S-mode"
	.align	2
.LC10:
	.string	"RSVD"
	.align	2
.LC11:
	.string	"Environment call from M-mode"
	.align	2
.LC12:
	.string	"Instruction page fault"
	.align	2
.LC13:
	.string	"Load page fault"
	.align	2
.LC14:
	.string	"Store/AMO page fault"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.exception_entry.str1.4,"aMS",@progbits,1
	.align	2
.LC16:
	.string	"exception_entry\r\n"
	.align	2
.LC17:
	.string	"mcause=%08x\r\n"
	.align	2
.LC18:
	.string	"mepc:%08x\r\n"
	.align	2
.LC19:
	.string	"mtval:%08x\r\n"
	.align	2
.LC21:
	.string	"%s\r\n"
	.section	.text.exception_entry,"ax",@progbits
	.align	1
	.globl	exception_entry
	.type	exception_entry, @function
exception_entry:
.LFB242:
	.file 1 "./drivers/soc/qcc743/std/startup/interrupt.c"
	.loc 1 98 1
	.cfi_startproc
.LVL0:
	.loc 1 99 5
	.loc 1 100 5
	.loc 1 101 5
	.loc 1 103 5
	lui	a0,%hi(.LC16)
.LVL1:
	.loc 1 98 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	.loc 1 103 5
	addi	a0,a0,%lo(.LC16)
	.loc 1 98 1
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 103 5
	call	printf
.LVL2:
	.loc 1 105 5 is_stmt 1
.LBB2:
	.loc 1 105 16
	.loc 1 105 35
 #APP
# 105 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/interrupt.c" 1
	csrr s0, 0x342
# 0 "" 2
.LVL3:
	.loc 1 105 82
 #NO_APP
.LBE2:
	.loc 1 106 5
	lui	a0,%hi(.LC17)
	mv	a1,s0
	addi	a0,a0,%lo(.LC17)
	call	printf
.LVL4:
	.loc 1 107 5
.LBB3:
	.loc 1 107 14
	.loc 1 107 33
 #APP
# 107 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/interrupt.c" 1
	csrr s1, 0x341
# 0 "" 2
.LVL5:
	.loc 1 107 80
 #NO_APP
.LBE3:
	.loc 1 108 5
	lui	a0,%hi(.LC18)
	mv	a1,s1
	addi	a0,a0,%lo(.LC18)
	call	printf
.LVL6:
	.loc 1 109 5
.LBB4:
	.loc 1 109 15
	.loc 1 109 34
 #APP
# 109 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/interrupt.c" 1
	csrr a1, 0x343
# 0 "" 2
.LVL7:
	.loc 1 109 81
 #NO_APP
.LBE4:
	.loc 1 110 5
	lui	a0,%hi(.LC19)
	addi	a0,a0,%lo(.LC19)
	call	printf
.LVL8:
	.loc 1 112 5
	.loc 1 115 17 is_stmt 0
	lui	a1,%hi(.LANCHOR0)
	li	a2,64
	addi	a1,a1,%lo(.LANCHOR0)
	mv	a0,sp
	call	memcpy
.LVL9:
	.loc 1 112 11
	andi	s2,s0,1023
.LVL10:
	.loc 1 115 5 is_stmt 1
	.loc 1 134 5
	.loc 1 134 39 is_stmt 0
	andi	s0,s0,15
.LVL11:
	.loc 1 134 5
	lrw	a1,sp,s0,2
	lui	a0,%hi(.LC21)
	addi	a0,a0,%lo(.LC21)
	call	printf
.LVL12:
	.loc 1 136 5 is_stmt 1
	.loc 1 136 8 is_stmt 0
	li	a5,8
	beq	s2,a5,.L2
	.loc 1 136 22 discriminator 1
	li	a5,11
	beq	s2,a5,.L2
.LBB5:
	.loc 1 146 13
	lui	s0,%hi(__freertos_irq_stack_top)
	addi	s0,s0,%lo(__freertos_irq_stack_top)
.L3:
.LBE5:
	.loc 1 140 9 is_stmt 1 discriminator 1
.LBB6:
	.loc 1 143 13 discriminator 1
	.loc 1 146 13 discriminator 1
 #APP
# 146 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/interrupt.c" 1
	add sp, x0, s0
# 0 "" 2
	.loc 1 147 13 discriminator 1
	.loc 1 148 13 discriminator 1
 #NO_APP
	call	coredump_run
.LVL13:
.LBE6:
	.loc 1 140 15 discriminator 1
	j	.L3
.L2:
	.loc 1 137 9
.LVL14:
	.loc 1 138 9
	.loc 1 137 13 is_stmt 0
	addi	s1,s1,4
.LVL15:
	.loc 1 138 12
 #APP
# 138 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/interrupt.c" 1
	csrw 0x341, s1
# 0 "" 2
	.loc 1 152 1
 #NO_APP
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
.LVL16:
	lw	s2,64(sp)
	.cfi_restore 18
.LVL17:
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE242:
	.size	exception_entry, .-exception_entry
	.section	.text.interrupt_entry,"ax",@progbits
	.align	1
	.globl	interrupt_entry
	.type	interrupt_entry, @function
interrupt_entry:
.LFB243:
	.loc 1 155 1 is_stmt 1
	.cfi_startproc
	.loc 1 156 5
	.loc 1 157 5
	.loc 1 158 5
	.loc 1 155 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 158 23
	sw	zero,12(sp)
	.loc 1 159 5 is_stmt 1
	.loc 1 161 5
.LBB7:
	.loc 1 161 17
	.loc 1 161 36
 #APP
# 161 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/startup/interrupt.c" 1
	csrr a5, 0x342
# 0 "" 2
.LVL18:
	.loc 1 161 83
 #NO_APP
.LBE7:
	.loc 1 161 12 is_stmt 0
	sw	a5,12(sp)
	.loc 1 162 5 is_stmt 1
	.loc 1 162 22 is_stmt 0
	lw	a0,12(sp)
	.loc 1 164 8
	li	a5,79
.LVL19:
	.loc 1 162 13
	andi	a0,a0,1023
.LVL20:
	.loc 1 164 5 is_stmt 1
	.loc 1 164 8 is_stmt 0
	bgtu	a0,a5,.L7
	.loc 1 165 9 is_stmt 1
	.loc 1 165 17 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	lrw	a4,a5,a0,3
.LVL21:
	.loc 1 166 9 is_stmt 1
	.loc 1 167 9
	.loc 1 167 12 is_stmt 0
	beq	a4,zero,.L7
	.loc 1 168 13 is_stmt 1
	.loc 1 166 13 is_stmt 0
	addsl	a5, a5, a0, 3
	.loc 1 168 13
	lw	a1,4(a5)
	.loc 1 173 1
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
.LVL22:
	.loc 1 168 13
	jr	a4
.LVL23:
.L7:
	.cfi_restore_state
	.loc 1 173 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
.LVL24:
	jr	ra
	.cfi_endproc
.LFE243:
	.size	interrupt_entry, .-interrupt_entry
	.globl	g_irqvector
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC20:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC10
	.word	.LC14
	.section	.bss.g_irqvector,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_irqvector, @object
	.size	g_irqvector, 640
g_irqvector:
	.zero	640
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_irq.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x34c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF25
	.byte	0xc
	.4byte	.LASF26
	.4byte	.LASF27
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x54
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
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x7c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x5
	.4byte	0x83
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x70
	.byte	0x6
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x7
	.4byte	0xa2
	.byte	0x8
	.byte	0x4
	.4byte	0xa9
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0xf
	.byte	0x10
	.4byte	0xc0
	.byte	0x8
	.byte	0x4
	.4byte	0xc6
	.byte	0x9
	.4byte	0xd6
	.byte	0xa
	.4byte	0x69
	.byte	0xa
	.4byte	0xa0
	.byte	0
	.byte	0xb
	.4byte	.LASF28
	.byte	0x8
	.byte	0x4
	.byte	0x1a
	.byte	0x8
	.4byte	0xfe
	.byte	0xc
	.4byte	.LASF15
	.byte	0x4
	.byte	0x1b
	.byte	0x12
	.4byte	0xb4
	.byte	0
	.byte	0xd
	.string	"arg"
	.byte	0x4
	.byte	0x1c
	.byte	0xb
	.4byte	0xa0
	.byte	0x4
	.byte	0
	.byte	0xe
	.4byte	0xd6
	.4byte	0x10e
	.byte	0xf
	.4byte	0x7c
	.byte	0x4f
	.byte	0
	.byte	0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0x7
	.byte	0x1a
	.4byte	0xfe
	.byte	0x5
	.byte	0x3
	.4byte	g_irqvector
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x9a
	.byte	0x6
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x1
	.byte	0x9c
	.4byte	0x190
	.byte	0x12
	.4byte	.LASF15
	.byte	0x1
	.byte	0x9c
	.byte	0x12
	.4byte	0xb4
	.4byte	.LLST7
	.byte	0x13
	.string	"arg"
	.byte	0x1
	.byte	0x9d
	.byte	0xb
	.4byte	0xa0
	.4byte	.LLST8
	.byte	0x14
	.4byte	.LASF16
	.byte	0x1
	.byte	0x9e
	.byte	0x17
	.4byte	0x8f
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0x12
	.4byte	.LASF17
	.byte	0x1
	.byte	0x9f
	.byte	0xe
	.4byte	0x83
	.4byte	.LLST9
	.byte	0x15
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.byte	0x13
	.string	"tmp"
	.byte	0x1
	.byte	0xa1
	.byte	0x1f
	.4byte	0x54
	.4byte	.LLST10
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0x61
	.byte	0x6
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0x316
	.byte	0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0x61
	.byte	0x21
	.4byte	0x316
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LASF18
	.byte	0x1
	.byte	0x63
	.byte	0x13
	.4byte	0x54
	.4byte	.LLST1
	.byte	0x13
	.string	"epc"
	.byte	0x1
	.byte	0x64
	.byte	0x13
	.4byte	0x54
	.4byte	.LLST2
	.byte	0x12
	.4byte	.LASF19
	.byte	0x1
	.byte	0x65
	.byte	0x13
	.4byte	0x54
	.4byte	.LLST3
	.byte	0x14
	.4byte	.LASF20
	.byte	0x1
	.byte	0x73
	.byte	0x11
	.4byte	0x31c
	.byte	0x3
	.byte	0x91
	.byte	0xb0,0x7f
	.byte	0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x214
	.byte	0x13
	.string	"tmp"
	.byte	0x1
	.byte	0x69
	.byte	0x1e
	.4byte	0x54
	.4byte	.LLST4
	.byte	0
	.byte	0x18
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x232
	.byte	0x13
	.string	"tmp"
	.byte	0x1
	.byte	0x6b
	.byte	0x1c
	.4byte	0x54
	.4byte	.LLST5
	.byte	0
	.byte	0x18
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x250
	.byte	0x13
	.string	"tmp"
	.byte	0x1
	.byte	0x6d
	.byte	0x1d
	.4byte	0x54
	.4byte	.LLST3
	.byte	0
	.byte	0x19
	.4byte	.Ldebug_ranges0+0
	.4byte	0x277
	.byte	0x1a
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8f
	.byte	0x1e
	.4byte	0x94
	.byte	0x1b
	.4byte	.LASF23
	.byte	0x1
	.byte	0x93
	.byte	0x12
	.byte	0x1c
	.4byte	.LVL13
	.4byte	0x32c
	.byte	0
	.byte	0x1d
	.4byte	.LVL2
	.4byte	0x338
	.4byte	0x28e
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC16
	.byte	0
	.byte	0x1d
	.4byte	.LVL4
	.4byte	0x338
	.4byte	0x2ab
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC17
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL6
	.4byte	0x338
	.4byte	0x2c8
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC18
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL8
	.4byte	0x338
	.4byte	0x2df
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0
	.byte	0x1d
	.4byte	.LVL9
	.4byte	0x344
	.4byte	0x302
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x1e
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1e
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x1f
	.4byte	.LVL12
	.4byte	0x338
	.byte	0x1e
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x94
	.byte	0xe
	.4byte	0xae
	.4byte	0x32c
	.byte	0xf
	.4byte	0x7c
	.byte	0xf
	.byte	0
	.byte	0x20
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x1
	.byte	0x93
	.byte	0x12
	.byte	0x20
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.byte	0x21
	.4byte	.LASF32
	.4byte	.LASF33
	.byte	0x6
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
	.byte	0x4
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
	.byte	0x5
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x1
	.byte	0x13
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0xe
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0xa
	.byte	0x7a
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	g_irqvector+4
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE243
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x91
	.byte	0x7c
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x72
	.byte	0x7c
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x91
	.byte	0x7c
	.4byte	.LVL24
	.4byte	.LFE243
	.2byte	0x2
	.byte	0x72
	.byte	0x7c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE242
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x79
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL5
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x79
	.byte	0x7c
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB243
	.4byte	.LFE243
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF25:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF29:
	.string	"interrupt_entry"
.LASF12:
	.string	"uintptr_t"
.LASF26:
	.string	"./drivers/soc/qcc743/std/startup/interrupt.c"
.LASF14:
	.string	"irq_callback"
.LASF30:
	.string	"exception_entry"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF16:
	.string	"mcause"
.LASF3:
	.string	"short unsigned int"
.LASF27:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/soc/qcc743/std"
.LASF8:
	.string	"__uint32_t"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"__uintptr_t"
.LASF7:
	.string	"long long unsigned int"
.LASF31:
	.string	"regs"
.LASF23:
	.string	"coredump_run"
.LASF33:
	.string	"__builtin_memcpy"
.LASF18:
	.string	"cause"
.LASF15:
	.string	"handler"
.LASF20:
	.string	"mcause_str"
.LASF6:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF24:
	.string	"printf"
.LASF32:
	.string	"memcpy"
.LASF22:
	.string	"__freertos_irq_stack_top"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF19:
	.string	"tval"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"irq_num"
.LASF21:
	.string	"g_irqvector"
.LASF28:
	.string	"qcc74x_irq_info_s"
	.ident	"GCC: (GNU) 10.4.0"
