	.file	"qcc74x_wdg.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_wdg_init,"ax",@progbits
	.align	1
	.globl	qcc74x_wdg_init
	.type	qcc74x_wdg_init, @function
qcc74x_wdg_init:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_wdg.c"
	.loc 1 6 1
	.cfi_startproc
.LVL0:
	.loc 1 7 5
	.loc 1 8 5
	.loc 1 9 5
	.loc 1 14 5
	.loc 1 15 5
	.loc 1 17 5
	.loc 1 17 14 is_stmt 0
	lw	a5,4(a0)
.LVL1:
	.loc 1 19 5 is_stmt 1
	.loc 1 19 59 is_stmt 0
	li	a4,-16384
	addi	a4,a4,-1350
	sh	a4,156(a5)
	.loc 1 20 5 is_stmt 1
	.loc 1 20 59 is_stmt 0
	li	a4,-4096
	addi	a4,a4,-1264
	sh	a4,160(a5)
	.loc 1 22 5 is_stmt 1
	.loc 1 24 8 is_stmt 0
	lbu	a3,4(a1)
	.loc 1 22 12
	lw	a4,100(a5)
.LVL2:
	.loc 1 23 5 is_stmt 1
	.loc 1 24 5
	.loc 1 24 8 is_stmt 0
	bne	a3,zero,.L2
	.loc 1 25 9 is_stmt 1
	.loc 1 25 16 is_stmt 0
	andi	a4,a4,-4
.LVL3:
.L3:
	.loc 1 29 5 is_stmt 1
	.loc 1 29 59 is_stmt 0
	sw	a4,100(a5)
	.loc 1 32 5 is_stmt 1
	.loc 1 32 12 is_stmt 0
	lw	a3,0(a5)
.LVL4:
	.loc 1 33 5 is_stmt 1
	.loc 1 33 12 is_stmt 0
	li	a4,-4096
	addi	a2,a4,255
	and	a2,a3,a2
.LVL5:
	.loc 1 34 5 is_stmt 1
	.loc 1 34 22 is_stmt 0
	lbu	a3,0(a1)
	.loc 1 39 12
	li	a0,16777216
.LVL6:
	addi	a0,a0,-1
	.loc 1 34 37
	slli	a3,a3,8
	.loc 1 34 12
	or	a3,a3,a2
.LVL7:
	.loc 1 35 5 is_stmt 1
	.loc 1 35 58 is_stmt 0
	sw	a3,0(a5)
	.loc 1 38 5 is_stmt 1
	.loc 1 38 12 is_stmt 0
	addi	a2,a5,128
	lw	a3,60(a2)
.LVL8:
	.loc 1 39 5 is_stmt 1
	.loc 1 44 59 is_stmt 0
	addi	a4,a4,-1264
	.loc 1 39 12
	and	a0,a3,a0
.LVL9:
	.loc 1 40 5 is_stmt 1
	.loc 1 40 22 is_stmt 0
	lbu	a3,1(a1)
	.loc 1 40 34
	slli	a3,a3,24
	.loc 1 40 12
	or	a3,a3,a0
.LVL10:
	.loc 1 41 5 is_stmt 1
	.loc 1 41 59 is_stmt 0
	sw	a3,60(a2)
	.loc 1 43 5 is_stmt 1
	.loc 1 43 59 is_stmt 0
	li	a3,-16384
.LVL11:
	addi	a3,a3,-1350
	sh	a3,156(a5)
.LVL12:
	.loc 1 44 5 is_stmt 1
	.loc 1 44 59 is_stmt 0
	sh	a4,160(a5)
	.loc 1 45 5 is_stmt 1
	.loc 1 45 12 is_stmt 0
	lw	a0,24(a2)
.LVL13:
	.loc 1 46 5 is_stmt 1
	.loc 1 46 12 is_stmt 0
	ori	a0,a0,1
.LVL14:
	.loc 1 47 5 is_stmt 1
	.loc 1 47 59 is_stmt 0
	sw	a0,24(a2)
	.loc 1 49 5 is_stmt 1
	.loc 1 49 59 is_stmt 0
	sh	a3,156(a5)
	.loc 1 50 5 is_stmt 1
	.loc 1 50 59 is_stmt 0
	sh	a4,160(a5)
	.loc 1 51 5 is_stmt 1
	.loc 1 51 68 is_stmt 0
	lhu	a4,2(a1)
	.loc 1 51 59
	sh	a4,104(a5)
	.loc 1 53 1
	ret
.LVL15:
.L2:
	.loc 1 27 9 is_stmt 1
	.loc 1 23 12 is_stmt 0
	andi	a4,a4,-2
.LVL16:
	.loc 1 27 16
	ori	a4,a4,2
.LVL17:
	j	.L3
	.cfi_endproc
.LFE5:
	.size	qcc74x_wdg_init, .-qcc74x_wdg_init
	.section	.text.qcc74x_wdg_start,"ax",@progbits
	.align	1
	.globl	qcc74x_wdg_start
	.type	qcc74x_wdg_start, @function
qcc74x_wdg_start:
.LFB6:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 60 5
	.loc 1 61 5
	.loc 1 63 5
	.loc 1 63 14 is_stmt 0
	lw	a5,4(a0)
.LVL19:
	.loc 1 65 5 is_stmt 1
	.loc 1 65 59 is_stmt 0
	li	a4,-16384
	addi	a4,a4,-1350
	sh	a4,156(a5)
	.loc 1 66 5 is_stmt 1
	.loc 1 66 59 is_stmt 0
	li	a4,-4096
	addi	a4,a4,-1264
	sh	a4,160(a5)
	.loc 1 68 5 is_stmt 1
	.loc 1 68 12 is_stmt 0
	lw	a4,100(a5)
.LVL20:
	.loc 1 69 5 is_stmt 1
	.loc 1 69 12 is_stmt 0
	ori	a4,a4,1
.LVL21:
	.loc 1 70 5 is_stmt 1
	.loc 1 70 59 is_stmt 0
	sw	a4,100(a5)
	.loc 1 72 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_wdg_start, .-qcc74x_wdg_start
	.section	.text.qcc74x_wdg_stop,"ax",@progbits
	.align	1
	.globl	qcc74x_wdg_stop
	.type	qcc74x_wdg_stop, @function
qcc74x_wdg_stop:
.LFB7:
	.loc 1 75 1 is_stmt 1
	.cfi_startproc
.LVL22:
	.loc 1 79 5
	.loc 1 80 5
	.loc 1 82 5
	.loc 1 82 14 is_stmt 0
	lw	a5,4(a0)
.LVL23:
	.loc 1 84 5 is_stmt 1
	.loc 1 84 59 is_stmt 0
	li	a4,-16384
	addi	a4,a4,-1350
	sh	a4,156(a5)
	.loc 1 85 5 is_stmt 1
	.loc 1 85 59 is_stmt 0
	li	a4,-4096
	addi	a4,a4,-1264
	sh	a4,160(a5)
	.loc 1 87 5 is_stmt 1
	.loc 1 87 12 is_stmt 0
	lw	a4,100(a5)
.LVL24:
	.loc 1 88 5 is_stmt 1
	.loc 1 88 12 is_stmt 0
	andi	a4,a4,-2
.LVL25:
	.loc 1 89 5 is_stmt 1
	.loc 1 89 59 is_stmt 0
	sw	a4,100(a5)
	.loc 1 91 1
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_wdg_stop, .-qcc74x_wdg_stop
	.section	.text.qcc74x_wdg_get_countervalue,"ax",@progbits
	.align	1
	.globl	qcc74x_wdg_get_countervalue
	.type	qcc74x_wdg_get_countervalue, @function
qcc74x_wdg_get_countervalue:
.LFB8:
	.loc 1 94 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 98 5
	.loc 1 100 5
	.loc 1 102 5
	.loc 1 102 56 is_stmt 0
	lw	a5,4(a0)
	.loc 1 102 13
	lhu	a0,108(a5)
.LVL27:
	.loc 1 104 1
	extu	a0,a0,15,0
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_wdg_get_countervalue, .-qcc74x_wdg_get_countervalue
	.section	.text.qcc74x_wdg_set_countervalue,"ax",@progbits
	.align	1
	.globl	qcc74x_wdg_set_countervalue
	.type	qcc74x_wdg_set_countervalue, @function
qcc74x_wdg_set_countervalue:
.LFB9:
	.loc 1 107 1 is_stmt 1
	.cfi_startproc
.LVL28:
	.loc 1 111 5
	.loc 1 113 5
	.loc 1 113 14 is_stmt 0
	lw	a5,4(a0)
.LVL29:
	.loc 1 115 5 is_stmt 1
	.loc 1 115 59 is_stmt 0
	li	a4,-16384
	addi	a4,a4,-1350
	sh	a4,156(a5)
	.loc 1 116 5 is_stmt 1
	.loc 1 116 59 is_stmt 0
	li	a4,-4096
	addi	a4,a4,-1264
	sh	a4,160(a5)
	.loc 1 117 5 is_stmt 1
	.loc 1 117 59 is_stmt 0
	sh	a1,104(a5)
	.loc 1 119 1
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_wdg_set_countervalue, .-qcc74x_wdg_set_countervalue
	.section	.text.qcc74x_wdg_reset_countervalue,"ax",@progbits
	.align	1
	.globl	qcc74x_wdg_reset_countervalue
	.type	qcc74x_wdg_reset_countervalue, @function
qcc74x_wdg_reset_countervalue:
.LFB10:
	.loc 1 122 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 126 5
	.loc 1 127 5
	.loc 1 129 5
	.loc 1 129 14 is_stmt 0
	lw	a5,4(a0)
.LVL31:
	.loc 1 131 5 is_stmt 1
	.loc 1 131 59 is_stmt 0
	li	a4,-16384
	addi	a4,a4,-1350
	sh	a4,156(a5)
	.loc 1 132 5 is_stmt 1
	.loc 1 132 59 is_stmt 0
	li	a4,-4096
	addi	a4,a4,-1264
	sh	a4,160(a5)
	.loc 1 134 5 is_stmt 1
	.loc 1 134 12 is_stmt 0
	lw	a4,152(a5)
.LVL32:
	.loc 1 135 5 is_stmt 1
	.loc 1 135 12 is_stmt 0
	ori	a4,a4,1
.LVL33:
	.loc 1 136 5 is_stmt 1
	.loc 1 136 59 is_stmt 0
	sw	a4,152(a5)
	.loc 1 138 1
	ret
	.cfi_endproc
.LFE10:
	.size	qcc74x_wdg_reset_countervalue, .-qcc74x_wdg_reset_countervalue
	.section	.text.qcc74x_wdg_compint_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_wdg_compint_clear
	.type	qcc74x_wdg_compint_clear, @function
qcc74x_wdg_compint_clear:
.LFB11:
	.loc 1 141 1 is_stmt 1
	.cfi_startproc
.LVL34:
	.loc 1 145 5
	.loc 1 146 5
	.loc 1 148 5
	.loc 1 148 14 is_stmt 0
	lw	a5,4(a0)
.LVL35:
	.loc 1 150 5 is_stmt 1
	.loc 1 150 59 is_stmt 0
	li	a4,-16384
	addi	a4,a4,-1350
	sh	a4,156(a5)
	.loc 1 151 5 is_stmt 1
	.loc 1 151 59 is_stmt 0
	li	a4,-4096
	addi	a4,a4,-1264
	sh	a4,160(a5)
	.loc 1 153 5 is_stmt 1
	.loc 1 153 12 is_stmt 0
	lw	a4,128(a5)
.LVL36:
	.loc 1 154 5 is_stmt 1
	.loc 1 154 12 is_stmt 0
	ori	a4,a4,1
.LVL37:
	.loc 1 155 5 is_stmt 1
	.loc 1 155 59 is_stmt 0
	sw	a4,128(a5)
	.loc 1 157 1
	ret
	.cfi_endproc
.LFE11:
	.size	qcc74x_wdg_compint_clear, .-qcc74x_wdg_compint_clear
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./drivers/lhal/include/qcc74x_wdg.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x36b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
	.4byte	.LASF41
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
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
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
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
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x94
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x88
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x6
	.4byte	0xcd
	.byte	0x7
	.byte	0x4
	.4byte	0xd4
	.byte	0x8
	.4byte	.LASF24
	.byte	0x10
	.byte	0x4
	.byte	0x67
	.byte	0x8
	.4byte	0x148
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xd9
	.byte	0
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x69
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x9b
	.byte	0x9
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x9b
	.byte	0xa
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0x9b
	.byte	0xb
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x6e
	.byte	0xb
	.4byte	0xcb
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF25
	.byte	0x6
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x18a
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x35
	.byte	0xd
	.4byte	0x9b
	.byte	0
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x36
	.byte	0xd
	.4byte	0x9b
	.byte	0x1
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x37
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x38
	.byte	0xd
	.4byte	0x9b
	.byte	0x4
	.byte	0
	.byte	0x6
	.4byte	0x148
	.byte	0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x8c
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x1d0
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0x8c
	.byte	0x37
	.4byte	0x1d0
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x91
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x92
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xdf
	.byte	0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x79
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x217
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0x79
	.byte	0x3c
	.4byte	0x1d0
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x7e
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x7f
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xb
	.4byte	.LASF33
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x258
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0x6a
	.byte	0x3a
	.4byte	0x1d0
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x6a
	.byte	0x48
	.4byte	0xa7
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6f
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xf
	.4byte	.LASF42
	.byte	0x1
	.byte	0x5d
	.byte	0xa
	.4byte	0xa7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x293
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.byte	0x5d
	.byte	0x3e
	.4byte	0x1d0
	.4byte	.LLST2
	.byte	0x11
	.4byte	.LASF19
	.byte	0x1
	.byte	0x62
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST3
	.byte	0
	.byte	0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d4
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0x4a
	.byte	0x2e
	.4byte	0x1d0
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x4f
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x50
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x315
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0x37
	.byte	0x2f
	.4byte	0x1d0
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	.LASF30
	.byte	0x1
	.byte	0x3c
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3d
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x368
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.byte	0x5
	.byte	0x2e
	.4byte	0x1d0
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF38
	.byte	0x1
	.byte	0x5
	.byte	0x55
	.4byte	0x368
	.byte	0x1
	.byte	0x5b
	.byte	0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0xe
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST1
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x18a
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL27
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0xfe
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x7c
	.byte	0x3c
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0xfe
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF3:
	.string	"__uint8_t"
.LASF27:
	.string	"clock_div"
.LASF16:
	.string	"uintptr_t"
.LASF11:
	.string	"__uintptr_t"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"user_data"
.LASF1:
	.string	"unsigned char"
.LASF33:
	.string	"qcc74x_wdg_set_countervalue"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"dev_type"
.LASF21:
	.string	"sub_idx"
.LASF38:
	.string	"config"
.LASF37:
	.string	"qcc74x_wdg_init"
.LASF7:
	.string	"__uint32_t"
.LASF31:
	.string	"qcc74x_wdg_compint_clear"
.LASF28:
	.string	"comp_val"
.LASF24:
	.string	"qcc74x_device_s"
.LASF12:
	.string	"unsigned int"
.LASF42:
	.string	"qcc74x_wdg_get_countervalue"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF32:
	.string	"qcc74x_wdg_reset_countervalue"
.LASF29:
	.string	"mode"
.LASF41:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/lhal"
.LASF19:
	.string	"reg_base"
.LASF26:
	.string	"clock_source"
.LASF30:
	.string	"regval"
.LASF9:
	.string	"long long int"
.LASF18:
	.string	"name"
.LASF36:
	.string	"qcc74x_wdg_start"
.LASF34:
	.string	"value"
.LASF35:
	.string	"qcc74x_wdg_stop"
.LASF25:
	.string	"qcc74x_wdg_config_s"
.LASF4:
	.string	"__uint16_t"
.LASF14:
	.string	"uint16_t"
.LASF15:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF17:
	.string	"char"
.LASF40:
	.string	"./drivers/lhal/src/qcc74x_wdg.c"
.LASF0:
	.string	"signed char"
.LASF20:
	.string	"irq_num"
	.ident	"GCC: (GNU) 10.4.0"
