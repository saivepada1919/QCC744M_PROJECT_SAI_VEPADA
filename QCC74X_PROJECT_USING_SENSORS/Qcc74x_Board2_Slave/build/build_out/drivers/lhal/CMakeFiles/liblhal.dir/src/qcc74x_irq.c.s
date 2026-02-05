	.file	"qcc74x_irq.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.irq_unexpected_isr.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"irq :%d unregistered\r\n"
	.section	.text.irq_unexpected_isr,"ax",@progbits
	.align	1
	.type	irq_unexpected_isr, @function
irq_unexpected_isr:
.LFB242:
	.file 1 "./drivers/lhal/src/qcc74x_irq.c"
	.loc 1 17 1
	.cfi_startproc
.LVL0:
	.loc 1 18 5
	.loc 1 17 1 is_stmt 0
	mv	a1,a0
.LVL1:
	.loc 1 18 5
	lui	a0,%hi(.LC0)
.LVL2:
	addi	a0,a0,%lo(.LC0)
	tail	printf
.LVL3:
	.cfi_endproc
.LFE242:
	.size	irq_unexpected_isr, .-irq_unexpected_isr
	.section	.text.qcc74x_irq_initialize,"ax",@progbits
	.align	1
	.globl	qcc74x_irq_initialize
	.type	qcc74x_irq_initialize, @function
qcc74x_irq_initialize:
.LFB243:
	.loc 1 22 1 is_stmt 1
	.cfi_startproc
	.loc 1 24 5
	.loc 1 27 5
.LVL4:
	.loc 1 27 17
	lui	a5,%hi(g_irqvector)
	addi	a5,a5,%lo(g_irqvector)
	.loc 1 28 32 is_stmt 0
	lui	a4,%hi(irq_unexpected_isr)
	addi	a3,a5,640
	addi	a4,a4,%lo(irq_unexpected_isr)
.LVL5:
.L3:
	.loc 1 28 9 is_stmt 1 discriminator 3
	.loc 1 28 32 is_stmt 0 discriminator 3
	sw	a4,0(a5)
	.loc 1 29 9 is_stmt 1 discriminator 3
	.loc 1 29 28 is_stmt 0 discriminator 3
	sw	zero,4(a5)
	.loc 1 27 25 is_stmt 1 discriminator 3
	.loc 1 27 17 discriminator 3
	.loc 1 27 5 is_stmt 0 discriminator 3
	addi	a5,a5,8
	bne	a5,a3,.L3
	.loc 1 32 1
	ret
	.cfi_endproc
.LFE243:
	.size	qcc74x_irq_initialize, .-qcc74x_irq_initialize
	.section	.tcm_code../drivers/lhal/src/qcc74x_irq.c34,"ax",@progbits
	.align	1
	.globl	qcc74x_irq_save
	.type	qcc74x_irq_save, @function
qcc74x_irq_save:
.LFB244:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
	.loc 1 39 5
	.loc 1 43 5
	li	a0,8
 #APP
# 43 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_irq.c" 1
	csrrc a0, mstatus, a0
# 0 "" 2
.LVL6:
	.loc 1 46 5
	.loc 1 48 1 is_stmt 0
 #NO_APP
	ret
	.cfi_endproc
.LFE244:
	.size	qcc74x_irq_save, .-qcc74x_irq_save
	.section	.tcm_code../drivers/lhal/src/qcc74x_irq.c50,"ax",@progbits
	.align	1
	.globl	qcc74x_irq_restore
	.type	qcc74x_irq_restore, @function
qcc74x_irq_restore:
.LFB245:
	.loc 1 51 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 57 5
 #APP
# 57 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_irq.c" 1
	csrw mstatus, a0
# 0 "" 2
	.loc 1 61 1 is_stmt 0
 #NO_APP
	ret
	.cfi_endproc
.LFE245:
	.size	qcc74x_irq_restore, .-qcc74x_irq_restore
	.section	.text.qcc74x_irq_attach,"ax",@progbits
	.align	1
	.globl	qcc74x_irq_attach
	.type	qcc74x_irq_attach, @function
qcc74x_irq_attach:
.LFB246:
	.loc 1 90 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 91 5
	.loc 1 91 8 is_stmt 0
	li	a5,79
	bgt	a0,a5,.L9
	.loc 1 101 5 is_stmt 1
	.loc 1 101 30 is_stmt 0
	lui	a5,%hi(g_irqvector)
	addi	a5,a5,%lo(g_irqvector)
	srw	a1,a5,a0,3
	.loc 1 102 5 is_stmt 1
	.loc 1 102 26 is_stmt 0
	addsl	a5, a5, a0, 3
	sw	a2,4(a5)
	.loc 1 107 5 is_stmt 1
	.loc 1 107 12 is_stmt 0
	li	a0,0
.LVL9:
	ret
.LVL10:
.L9:
	.loc 1 92 16
	li	a0,-22
.LVL11:
	.loc 1 108 1
	ret
	.cfi_endproc
.LFE246:
	.size	qcc74x_irq_attach, .-qcc74x_irq_attach
	.section	.text.qcc74x_irq_detach,"ax",@progbits
	.align	1
	.globl	qcc74x_irq_detach
	.type	qcc74x_irq_detach, @function
qcc74x_irq_detach:
.LFB247:
	.loc 1 111 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 112 5
	.loc 1 112 8 is_stmt 0
	li	a5,79
	bgt	a0,a5,.L12
	.loc 1 116 5 is_stmt 1
	.loc 1 116 30 is_stmt 0
	lui	a5,%hi(g_irqvector)
	lui	a4,%hi(irq_unexpected_isr)
	addi	a5,a5,%lo(g_irqvector)
	addi	a4,a4,%lo(irq_unexpected_isr)
	srw	a4,a5,a0,3
	.loc 1 117 5 is_stmt 1
	.loc 1 117 26 is_stmt 0
	addsl	a5, a5, a0, 3
	sw	zero,4(a5)
	.loc 1 119 5 is_stmt 1
	.loc 1 119 12 is_stmt 0
	li	a0,0
.LVL13:
	ret
.LVL14:
.L12:
	.loc 1 113 16
	li	a0,-22
.LVL15:
	.loc 1 120 1
	ret
	.cfi_endproc
.LFE247:
	.size	qcc74x_irq_detach, .-qcc74x_irq_detach
	.section	.text.qcc74x_irq_enable,"ax",@progbits
	.align	1
	.globl	qcc74x_irq_enable
	.type	qcc74x_irq_enable, @function
qcc74x_irq_enable:
.LFB248:
	.loc 1 123 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 142 5
.LBB4:
.LBB5:
	.file 2 "./drivers/lhal/include/arch/risc-v/t-head/Core/Include/core_rv32.h"
	.loc 2 470 5
	li	a5,-528482304
	addsl	a0, a5, a0, 2
.LVL17:
	.loc 2 470 53 is_stmt 0
	li	a5,4096
	add	a0,a0,a5
	lbu	a5,1(a0)
	andi	a5,a5,0xff
	ori	a5,a5,1
	sb	a5,1(a0)
.LVL18:
.LBE5:
.LBE4:
	.loc 1 146 1
	ret
	.cfi_endproc
.LFE248:
	.size	qcc74x_irq_enable, .-qcc74x_irq_enable
	.section	.text.qcc74x_irq_disable,"ax",@progbits
	.align	1
	.globl	qcc74x_irq_disable
	.type	qcc74x_irq_disable, @function
qcc74x_irq_disable:
.LFB249:
	.loc 1 149 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 163 5
.LBB8:
.LBB9:
	.loc 2 480 5
	li	a5,-528482304
	addsl	a0, a5, a0, 2
.LVL20:
	.loc 2 480 53 is_stmt 0
	li	a5,4096
	add	a0,a0,a5
	lbu	a5,1(a0)
	andi	a5,a5,254
	sb	a5,1(a0)
.LVL21:
.LBE9:
.LBE8:
	.loc 1 167 1
	ret
	.cfi_endproc
.LFE249:
	.size	qcc74x_irq_disable, .-qcc74x_irq_disable
	.section	.text.qcc74x_irq_set_pending,"ax",@progbits
	.align	1
	.globl	qcc74x_irq_set_pending
	.type	qcc74x_irq_set_pending, @function
qcc74x_irq_set_pending:
.LFB250:
	.loc 1 170 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 184 5
.LBB12:
.LBB13:
	.loc 2 534 5
	li	a5,-528482304
	addsl	a0, a5, a0, 2
.LVL23:
	.loc 2 534 53 is_stmt 0
	li	a4,4096
	lrbu	a5,a0,a4,0
	andi	a5,a5,0xff
	ori	a5,a5,1
	srb	a5,a0,a4,0
.LVL24:
.LBE13:
.LBE12:
	.loc 1 188 1
	ret
	.cfi_endproc
.LFE250:
	.size	qcc74x_irq_set_pending, .-qcc74x_irq_set_pending
	.section	.text.qcc74x_irq_clear_pending,"ax",@progbits
	.align	1
	.globl	qcc74x_irq_clear_pending
	.type	qcc74x_irq_clear_pending, @function
qcc74x_irq_clear_pending:
.LFB251:
	.loc 1 191 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 205 5
.LBB16:
.LBB17:
	.loc 2 544 5
	li	a5,-528482304
	addsl	a0, a5, a0, 2
.LVL26:
	.loc 2 544 53 is_stmt 0
	li	a4,4096
	lrbu	a5,a0,a4,0
	andi	a5,a5,254
	srb	a5,a0,a4,0
.LVL27:
.LBE17:
.LBE16:
	.loc 1 209 1
	ret
	.cfi_endproc
.LFE251:
	.size	qcc74x_irq_clear_pending, .-qcc74x_irq_clear_pending
	.section	.text.qcc74x_irq_set_nlbits,"ax",@progbits
	.align	1
	.globl	qcc74x_irq_set_nlbits
	.type	qcc74x_irq_set_nlbits, @function
qcc74x_irq_set_nlbits:
.LFB252:
	.loc 1 212 1 is_stmt 1
	.cfi_startproc
.LVL28:
	.loc 1 221 5
	.loc 1 221 44 is_stmt 0
	li	a5,-528482304
	lbu	a4,0(a5)
	.loc 1 221 62
	slli	a0,a0,1
.LVL29:
	andi	a0,a0,30
	.loc 1 221 68
	ori	a0,a0,1
	.loc 1 221 44
	insb	a4,a0,0
	sb	a4,0(a5)
	.loc 1 225 1
	ret
	.cfi_endproc
.LFE252:
	.size	qcc74x_irq_set_nlbits, .-qcc74x_irq_set_nlbits
	.section	.text.qcc74x_irq_set_priority,"ax",@progbits
	.align	1
	.globl	qcc74x_irq_set_priority
	.type	qcc74x_irq_set_priority, @function
qcc74x_irq_set_priority:
.LFB253:
	.loc 1 228 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 229 5
	.loc 1 229 8 is_stmt 0
	li	a5,79
	bgt	a0,a5,.L18
	.loc 1 247 5 is_stmt 1
.LVL31:
.LBB20:
.LBB21:
	.loc 2 556 5
	.loc 2 556 52 is_stmt 0
	li	a5,-528482304
	lw	a3,4(a5)
.LVL32:
	.loc 2 557 5 is_stmt 1
	addsl	a5, a5, a0, 2
	.loc 2 557 101 is_stmt 0
	li	a0,4096
.LVL33:
	add	a5,a5,a0
	lbu	a4,3(a5)
	.loc 2 557 144
	extu	a2,a3,21+4-1,21
.LVL34:
	li	a3,8
.LVL35:
	sub	a3,a3,a2
	.loc 2 557 138
	sll	a1,a1,a3
.LVL36:
	.loc 2 557 106
	andi	a4,a4,15
	.loc 2 557 126
	or	a1,a1,a4
	andi	a1,a1,0xff
	.loc 2 557 54
	sb	a1,3(a5)
.LVL37:
.L18:
.LBE21:
.LBE20:
	.loc 1 251 1
	ret
	.cfi_endproc
.LFE253:
	.size	qcc74x_irq_set_priority, .-qcc74x_irq_set_priority
	.text
.Letext0:
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./drivers/lhal/include/qcc74x_irq.h"
	.file 6 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x58d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF50
	.byte	0xc
	.4byte	.LASF51
	.4byte	.LASF52
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
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
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x59
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0xe8
	.byte	0x16
	.4byte	0x94
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x5
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x5
	.4byte	0xb8
	.byte	0x6
	.4byte	0xc4
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0x88
	.byte	0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0xf
	.byte	0x10
	.4byte	0xe6
	.byte	0x7
	.byte	0x4
	.4byte	0xec
	.byte	0x8
	.4byte	0xfc
	.byte	0x9
	.4byte	0x81
	.byte	0x9
	.4byte	0xfc
	.byte	0
	.byte	0xa
	.byte	0x4
	.byte	0xb
	.4byte	.LASF53
	.byte	0x8
	.byte	0x5
	.byte	0x1a
	.byte	0x8
	.4byte	0x126
	.byte	0xc
	.4byte	.LASF18
	.byte	0x5
	.byte	0x1b
	.byte	0x12
	.4byte	0xda
	.byte	0
	.byte	0xd
	.string	"arg"
	.byte	0x5
	.byte	0x1c
	.byte	0xb
	.4byte	0xfc
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.byte	0xe
	.byte	0x4
	.byte	0x2
	.byte	0x89
	.byte	0x9
	.4byte	0x169
	.byte	0xd
	.string	"IP"
	.byte	0x2
	.byte	0x8b
	.byte	0x16
	.4byte	0xa7
	.byte	0
	.byte	0xd
	.string	"IE"
	.byte	0x2
	.byte	0x8c
	.byte	0x16
	.4byte	0xa7
	.byte	0x1
	.byte	0xc
	.4byte	.LASF20
	.byte	0x2
	.byte	0x8d
	.byte	0x16
	.4byte	0xa7
	.byte	0x2
	.byte	0xd
	.string	"CTL"
	.byte	0x2
	.byte	0x8e
	.byte	0x16
	.4byte	0xa7
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x2
	.byte	0x8f
	.byte	0x3
	.4byte	0x12d
	.byte	0xf
	.2byte	0x5000
	.byte	0x2
	.byte	0x91
	.byte	0x9
	.4byte	0x1c5
	.byte	0x10
	.4byte	.LASF54
	.byte	0x2
	.byte	0x93
	.byte	0x17
	.4byte	0xc4
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0
	.byte	0xc
	.4byte	.LASF22
	.byte	0x2
	.byte	0x94
	.byte	0x1d
	.4byte	0xc9
	.byte	0x4
	.byte	0xc
	.4byte	.LASF23
	.byte	0x2
	.byte	0x95
	.byte	0x17
	.4byte	0xc4
	.byte	0x8
	.byte	0xc
	.4byte	.LASF24
	.byte	0x2
	.byte	0x96
	.byte	0xe
	.4byte	0x1c5
	.byte	0xc
	.byte	0x11
	.4byte	.LASF25
	.byte	0x2
	.byte	0x97
	.byte	0x16
	.4byte	0x1d6
	.2byte	0x1000
	.byte	0
	.byte	0x12
	.4byte	0xb8
	.4byte	0x1d6
	.byte	0x13
	.4byte	0x94
	.2byte	0x3fc
	.byte	0
	.byte	0x12
	.4byte	0x169
	.4byte	0x1e7
	.byte	0x13
	.4byte	0x94
	.2byte	0xfff
	.byte	0
	.byte	0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0x98
	.byte	0x3
	.4byte	0x175
	.byte	0x12
	.4byte	0xfe
	.4byte	0x1fe
	.byte	0x14
	.byte	0
	.byte	0x15
	.4byte	.LASF55
	.byte	0x1
	.byte	0xe
	.byte	0x21
	.4byte	0x1f3
	.byte	0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0xe3
	.byte	0x6
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.byte	0x1
	.byte	0x9c
	.4byte	0x27d
	.byte	0x17
	.string	"irq"
	.byte	0x1
	.byte	0xe3
	.byte	0x22
	.4byte	0x81
	.4byte	.LLST14
	.byte	0x18
	.4byte	.LASF27
	.byte	0x1
	.byte	0xe3
	.byte	0x2f
	.4byte	0x9b
	.4byte	.LLST15
	.byte	0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0xe3
	.byte	0x44
	.4byte	0x9b
	.4byte	.LLST16
	.byte	0x19
	.4byte	0x4de
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x1
	.byte	0xf7
	.byte	0x5
	.byte	0x1a
	.4byte	0x4f9
	.4byte	.LLST17
	.byte	0x1a
	.4byte	0x4ec
	.4byte	.LLST18
	.byte	0x1b
	.4byte	0x506
	.4byte	.LLST19
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF30
	.byte	0x1
	.byte	0xd3
	.byte	0x6
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a4
	.byte	0x18
	.4byte	.LASF31
	.byte	0x1
	.byte	0xd3
	.byte	0x24
	.4byte	0x9b
	.4byte	.LLST13
	.byte	0
	.byte	0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0xbe
	.byte	0x6
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e5
	.byte	0x17
	.string	"irq"
	.byte	0x1
	.byte	0xbe
	.byte	0x23
	.4byte	0x81
	.4byte	.LLST11
	.byte	0x19
	.4byte	0x514
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0xcd
	.byte	0x5
	.byte	0x1a
	.4byte	0x522
	.4byte	.LLST12
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa9
	.byte	0x6
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.byte	0x1
	.byte	0x9c
	.4byte	0x326
	.byte	0x17
	.string	"irq"
	.byte	0x1
	.byte	0xa9
	.byte	0x21
	.4byte	0x81
	.4byte	.LLST9
	.byte	0x19
	.4byte	0x530
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0xb8
	.byte	0x5
	.byte	0x1a
	.4byte	0x53e
	.4byte	.LLST10
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF34
	.byte	0x1
	.byte	0x94
	.byte	0x6
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.byte	0x1
	.byte	0x9c
	.4byte	0x367
	.byte	0x17
	.string	"irq"
	.byte	0x1
	.byte	0x94
	.byte	0x1d
	.4byte	0x81
	.4byte	.LLST7
	.byte	0x19
	.4byte	0x54c
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0xa3
	.byte	0x5
	.byte	0x1a
	.4byte	0x55a
	.4byte	.LLST8
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7a
	.byte	0x6
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a8
	.byte	0x17
	.string	"irq"
	.byte	0x1
	.byte	0x7a
	.byte	0x1c
	.4byte	0x81
	.4byte	.LLST5
	.byte	0x19
	.4byte	0x568
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x8e
	.byte	0x5
	.byte	0x1a
	.4byte	0x576
	.4byte	.LLST6
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF36
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d3
	.byte	0x17
	.string	"irq"
	.byte	0x1
	.byte	0x6e
	.byte	0x1b
	.4byte	0x81
	.4byte	.LLST4
	.byte	0
	.byte	0x1c
	.4byte	.LASF37
	.byte	0x1
	.byte	0x59
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.byte	0x1
	.byte	0x9c
	.4byte	0x41a
	.byte	0x17
	.string	"irq"
	.byte	0x1
	.byte	0x59
	.byte	0x1b
	.4byte	0x81
	.4byte	.LLST3
	.byte	0x1d
	.string	"isr"
	.byte	0x1
	.byte	0x59
	.byte	0x2d
	.4byte	0xda
	.byte	0x1
	.byte	0x5b
	.byte	0x1d
	.string	"arg"
	.byte	0x1
	.byte	0x59
	.byte	0x38
	.4byte	0xfc
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x16
	.4byte	.LASF38
	.byte	0x1
	.byte	0x32
	.byte	0x54
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.byte	0x1
	.byte	0x9c
	.4byte	0x43f
	.byte	0x1e
	.4byte	.LASF39
	.byte	0x1
	.byte	0x32
	.byte	0x71
	.4byte	0xce
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x1c
	.4byte	.LASF40
	.byte	0x1
	.byte	0x22
	.byte	0x59
	.4byte	0xce
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.byte	0x1
	.byte	0x9c
	.4byte	0x468
	.byte	0x1f
	.4byte	.LASF42
	.byte	0x1
	.byte	0x27
	.byte	0xf
	.4byte	0xce
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x16
	.4byte	.LASF41
	.byte	0x1
	.byte	0x15
	.byte	0x6
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x1
	.byte	0x9c
	.4byte	0x48d
	.byte	0x20
	.string	"i"
	.byte	0x1
	.byte	0x18
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST2
	.byte	0
	.byte	0x21
	.4byte	.LASF56
	.byte	0x1
	.byte	0x10
	.byte	0xd
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0x4de
	.byte	0x17
	.string	"irq"
	.byte	0x1
	.byte	0x10
	.byte	0x24
	.4byte	0x81
	.4byte	.LLST0
	.byte	0x17
	.string	"arg"
	.byte	0x1
	.byte	0x10
	.byte	0x2f
	.4byte	0xfc
	.4byte	.LLST1
	.byte	0x22
	.4byte	.LVL3
	.4byte	0x584
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x23
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF45
	.byte	0x2
	.2byte	0x22a
	.byte	0x14
	.byte	0x3
	.4byte	0x514
	.byte	0x25
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x22a
	.byte	0x2d
	.4byte	0xac
	.byte	0x25
	.4byte	.LASF44
	.byte	0x2
	.2byte	0x22a
	.byte	0x3c
	.4byte	0xb8
	.byte	0x26
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x22c
	.byte	0xd
	.4byte	0x9b
	.byte	0
	.byte	0x24
	.4byte	.LASF46
	.byte	0x2
	.2byte	0x21e
	.byte	0x14
	.byte	0x3
	.4byte	0x530
	.byte	0x25
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x21e
	.byte	0x36
	.4byte	0xac
	.byte	0
	.byte	0x24
	.4byte	.LASF47
	.byte	0x2
	.2byte	0x214
	.byte	0x14
	.byte	0x3
	.4byte	0x54c
	.byte	0x25
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x214
	.byte	0x34
	.4byte	0xac
	.byte	0
	.byte	0x24
	.4byte	.LASF48
	.byte	0x2
	.2byte	0x1de
	.byte	0x14
	.byte	0x3
	.4byte	0x568
	.byte	0x25
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x1de
	.byte	0x30
	.4byte	0xac
	.byte	0
	.byte	0x24
	.4byte	.LASF49
	.byte	0x2
	.2byte	0x1d4
	.byte	0x14
	.byte	0x3
	.4byte	0x584
	.byte	0x25
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x1d4
	.byte	0x2f
	.4byte	0xac
	.byte	0
	.byte	0x27
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x6
	.byte	0xc8
	.byte	0x5
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x13
	.byte	0x1
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
	.byte	0xf
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0x5
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
	.byte	0x10
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x21
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
	.byte	0x2e
	.byte	0x1
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
	.byte	0x22
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x2e
	.byte	0x1
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST14:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE253
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LFE253
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL30
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34
	.4byte	.LFE253
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x7
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x7
	.byte	0x7d
	.byte	0
	.byte	0x45
	.byte	0x25
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LFE252
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LFE251
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE250
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE249
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE248
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE247
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LFE246
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE242
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LFE242
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
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
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB243
	.4byte	.LFE243
	.4byte	.LFB244
	.4byte	.LFE244
	.4byte	.LFB245
	.4byte	.LFE245
	.4byte	.LFB246
	.4byte	.LFE246
	.4byte	.LFB247
	.4byte	.LFE247
	.4byte	.LFB248
	.4byte	.LFE248
	.4byte	.LFB249
	.4byte	.LFE249
	.4byte	.LFB250
	.4byte	.LFE250
	.4byte	.LFB251
	.4byte	.LFE251
	.4byte	.LFB252
	.4byte	.LFE252
	.4byte	.LFB253
	.4byte	.LFE253
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"qcc74x_irq_save"
.LASF23:
	.string	"MINTTHRESH"
.LASF21:
	.string	"CLIC_INT_Control"
.LASF44:
	.string	"priority"
.LASF35:
	.string	"qcc74x_irq_enable"
.LASF2:
	.string	"short int"
.LASF31:
	.string	"nlbits"
.LASF32:
	.string	"qcc74x_irq_clear_pending"
.LASF43:
	.string	"IRQn"
.LASF49:
	.string	"csi_vic_enable_irq"
.LASF26:
	.string	"CLIC_Type"
.LASF18:
	.string	"handler"
.LASF56:
	.string	"irq_unexpected_isr"
.LASF30:
	.string	"qcc74x_irq_set_nlbits"
.LASF13:
	.string	"uint8_t"
.LASF16:
	.string	"uintptr_t"
.LASF0:
	.string	"signed char"
.LASF48:
	.string	"csi_vic_disable_irq"
.LASF27:
	.string	"preemptprio"
.LASF33:
	.string	"qcc74x_irq_set_pending"
.LASF9:
	.string	"long long int"
.LASF22:
	.string	"CLICINFO"
.LASF6:
	.string	"long int"
.LASF53:
	.string	"qcc74x_irq_info_s"
.LASF57:
	.string	"printf"
.LASF4:
	.string	"__uint8_t"
.LASF45:
	.string	"csi_vic_set_prio"
.LASF41:
	.string	"qcc74x_irq_initialize"
.LASF29:
	.string	"qcc74x_irq_set_priority"
.LASF1:
	.string	"unsigned char"
.LASF47:
	.string	"csi_vic_set_pending_irq"
.LASF51:
	.string	"./drivers/lhal/src/qcc74x_irq.c"
.LASF38:
	.string	"qcc74x_irq_restore"
.LASF25:
	.string	"CLICINT"
.LASF39:
	.string	"flags"
.LASF10:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint32_t"
.LASF20:
	.string	"ATTR"
.LASF12:
	.string	"unsigned int"
.LASF36:
	.string	"qcc74x_irq_detach"
.LASF46:
	.string	"csi_vic_clear_pending_irq"
.LASF19:
	.string	"char"
.LASF54:
	.string	"CLICCFG"
.LASF14:
	.string	"int32_t"
.LASF3:
	.string	"short unsigned int"
.LASF50:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF8:
	.string	"long unsigned int"
.LASF11:
	.string	"__uintptr_t"
.LASF28:
	.string	"subprio"
.LASF55:
	.string	"g_irqvector"
.LASF7:
	.string	"__uint32_t"
.LASF42:
	.string	"oldstat"
.LASF5:
	.string	"__int32_t"
.LASF34:
	.string	"qcc74x_irq_disable"
.LASF37:
	.string	"qcc74x_irq_attach"
.LASF24:
	.string	"RESERVED"
.LASF17:
	.string	"irq_callback"
.LASF52:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/lhal"
	.ident	"GCC: (GNU) 10.4.0"
