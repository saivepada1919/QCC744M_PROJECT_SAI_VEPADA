	.file	"qcc74x_dac.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_dac_init,"ax",@progbits
	.align	1
	.globl	qcc74x_dac_init
	.type	qcc74x_dac_init, @function
qcc74x_dac_init:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_dac.c"
	.loc 1 11 1
	.cfi_startproc
.LVL0:
	.loc 1 12 5
	.loc 1 13 5
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 21 5
	.loc 1 24 5
	.loc 1 24 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 24 12
	addi	a5,a5,256
	lw	a4,32(a5)
.LVL1:
	.loc 1 25 5 is_stmt 1
	.loc 1 25 12 is_stmt 0
	andi	a4,a4,-2
.LVL2:
	.loc 1 26 5 is_stmt 1
	.loc 1 26 60 is_stmt 0
	sw	a4,32(a5)
.LVL3:
	.loc 1 28 5 is_stmt 1
 #APP
# 28 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_dac.c" 1
	nop
# 0 "" 2
	.loc 1 29 5
# 29 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_dac.c" 1
	nop
# 0 "" 2
	.loc 1 30 5
# 30 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_dac.c" 1
	nop
# 0 "" 2
	.loc 1 31 5
# 31 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_dac.c" 1
	nop
# 0 "" 2
	.loc 1 33 5
	.loc 1 33 12 is_stmt 0
 #NO_APP
	lw	a4,32(a5)
.LVL4:
	.loc 1 34 5 is_stmt 1
	.loc 1 34 12 is_stmt 0
	andi	a4,a4,-3
.LVL5:
	.loc 1 35 5 is_stmt 1
	.loc 1 35 60 is_stmt 0
	sw	a4,32(a5)
	.loc 1 37 5 is_stmt 1
 #APP
# 37 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_dac.c" 1
	nop
# 0 "" 2
	.loc 1 38 5
# 38 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_dac.c" 1
	nop
# 0 "" 2
	.loc 1 39 5
# 39 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_dac.c" 1
	nop
# 0 "" 2
	.loc 1 40 5
# 40 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_dac.c" 1
	nop
# 0 "" 2
	.loc 1 42 5
	.loc 1 42 12 is_stmt 0
 #NO_APP
	lw	a4,32(a5)
.LVL6:
	.loc 1 43 5 is_stmt 1
	.loc 1 55 24 is_stmt 0
	slli	a1,a1,8
.LVL7:
	.loc 1 55 12
	ori	a1,a1,1
	.loc 1 43 12
	ori	a4,a4,3
.LVL8:
	.loc 1 44 5 is_stmt 1
	.loc 1 44 60 is_stmt 0
	sw	a4,32(a5)
	.loc 1 46 5 is_stmt 1
	.loc 1 46 12 is_stmt 0
	lw	a4,32(a5)
.LVL9:
	.loc 1 47 5 is_stmt 1
	.loc 1 47 12 is_stmt 0
	andi	a4,a4,-257
.LVL10:
	.loc 1 48 5 is_stmt 1
	.loc 1 48 60 is_stmt 0
	sw	a4,32(a5)
	.loc 1 50 5 is_stmt 1
.LVL11:
	.loc 1 51 5
	.loc 1 55 5
	.loc 1 56 5
	.loc 1 56 73 is_stmt 0
	li	a5,536879104
.LVL12:
	sw	a1,64(a5)
	.loc 1 58 5 is_stmt 1
	.loc 1 58 12 is_stmt 0
	lw	a4,68(a5)
.LVL13:
	.loc 1 59 5 is_stmt 1
	.loc 1 59 12 is_stmt 0
	andi	a4,a4,-2
.LVL14:
	.loc 1 60 5 is_stmt 1
	.loc 1 60 73 is_stmt 0
	sw	a4,68(a5)
	.loc 1 62 1
	ret
	.cfi_endproc
.LFE5:
	.size	qcc74x_dac_init, .-qcc74x_dac_init
	.section	.text.qcc74x_dac_channel_enable,"ax",@progbits
	.align	1
	.globl	qcc74x_dac_channel_enable
	.type	qcc74x_dac_channel_enable, @function
qcc74x_dac_channel_enable:
.LFB6:
	.loc 1 65 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 69 5
	.loc 1 70 5
	.loc 1 72 5
	.loc 1 74 8 is_stmt 0
	andi	a4,a1,1
	.loc 1 72 14
	lw	a5,4(a0)
.LVL16:
	.loc 1 74 5 is_stmt 1
	.loc 1 74 8 is_stmt 0
	beq	a4,zero,.L3
	.loc 1 75 9 is_stmt 1
	.loc 1 75 16 is_stmt 0
	lw	a4,292(a5)
.LVL17:
	.loc 1 76 9 is_stmt 1
	.loc 1 76 16 is_stmt 0
	ori	a4,a4,3
.LVL18:
	.loc 1 77 9 is_stmt 1
	.loc 1 77 64 is_stmt 0
	sw	a4,292(a5)
.LVL19:
.L3:
	.loc 1 80 5 is_stmt 1
	.loc 1 80 8 is_stmt 0
	andi	a1,a1,2
.LVL20:
	beq	a1,zero,.L2
	.loc 1 81 9 is_stmt 1
	.loc 1 81 16 is_stmt 0
	lw	a4,296(a5)
.LVL21:
	.loc 1 82 9 is_stmt 1
	.loc 1 82 16 is_stmt 0
	ori	a4,a4,3
.LVL22:
	.loc 1 83 9 is_stmt 1
	.loc 1 83 64 is_stmt 0
	sw	a4,296(a5)
.LVL23:
.L2:
	.loc 1 91 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_dac_channel_enable, .-qcc74x_dac_channel_enable
	.section	.text.qcc74x_dac_channel_disable,"ax",@progbits
	.align	1
	.globl	qcc74x_dac_channel_disable
	.type	qcc74x_dac_channel_disable, @function
qcc74x_dac_channel_disable:
.LFB7:
	.loc 1 94 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 98 5
	.loc 1 99 5
	.loc 1 101 5
	.loc 1 103 8 is_stmt 0
	andi	a4,a1,1
	.loc 1 101 14
	lw	a5,4(a0)
.LVL25:
	.loc 1 103 5 is_stmt 1
	.loc 1 103 8 is_stmt 0
	beq	a4,zero,.L12
	.loc 1 104 9 is_stmt 1
	.loc 1 104 16 is_stmt 0
	lw	a4,292(a5)
.LVL26:
	.loc 1 105 9 is_stmt 1
	.loc 1 105 16 is_stmt 0
	andi	a4,a4,-4
.LVL27:
	.loc 1 106 9 is_stmt 1
	.loc 1 106 64 is_stmt 0
	sw	a4,292(a5)
.LVL28:
.L12:
	.loc 1 109 5 is_stmt 1
	.loc 1 109 8 is_stmt 0
	andi	a1,a1,2
.LVL29:
	beq	a1,zero,.L11
	.loc 1 110 9 is_stmt 1
	.loc 1 110 16 is_stmt 0
	lw	a4,296(a5)
.LVL30:
	.loc 1 111 9 is_stmt 1
	.loc 1 111 16 is_stmt 0
	andi	a4,a4,-4
.LVL31:
	.loc 1 112 9 is_stmt 1
	.loc 1 112 64 is_stmt 0
	sw	a4,296(a5)
.LVL32:
.L11:
	.loc 1 115 1
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_dac_channel_disable, .-qcc74x_dac_channel_disable
	.section	.text.qcc74x_dac_link_txdma,"ax",@progbits
	.align	1
	.globl	qcc74x_dac_link_txdma
	.type	qcc74x_dac_link_txdma, @function
qcc74x_dac_link_txdma:
.LFB8:
	.loc 1 118 1 is_stmt 1
	.cfi_startproc
.LVL33:
	.loc 1 122 5
	.loc 1 123 5
	.loc 1 124 5
	.loc 1 125 5
	.loc 1 127 5
	.loc 1 129 5
	.loc 1 129 13 is_stmt 0
	li	a3,536879104
	lw	a5,64(a3)
.LVL34:
	.loc 1 130 5 is_stmt 1
	.loc 1 131 5
	.loc 1 133 13 is_stmt 0
	lw	a6,68(a3)
	.loc 1 131 13
	li	a4,-16711680
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL35:
	.loc 1 133 5 is_stmt 1
	.loc 1 134 5
	.loc 1 135 5
	.loc 1 153 17 is_stmt 0
	andi	a4,a6,-50
	.loc 1 135 8
	beq	a1,zero,.L25
	.loc 1 127 14
	lw	a4,4(a0)
	.loc 1 136 9 is_stmt 1
	.loc 1 125 13 is_stmt 0
	li	a3,0
	.loc 1 136 14
	lw	a2,292(a4)
	.loc 1 136 69
	andi	a2,a2,3
	.loc 1 136 12
	beq	a2,zero,.L22
	.loc 1 137 13 is_stmt 1
	.loc 1 137 21 is_stmt 0
	li	a3,65536
	or	a5,a5,a3
.LVL36:
	.loc 1 138 13 is_stmt 1
	.loc 1 138 17 is_stmt 0
	li	a3,1
.LVL37:
.L22:
	.loc 1 141 9 is_stmt 1
	.loc 1 141 14 is_stmt 0
	lw	a2,296(a4)
	.loc 1 141 69
	andi	a2,a2,3
	.loc 1 141 12
	beq	a2,zero,.L23
	.loc 1 142 13 is_stmt 1
	.loc 1 142 21 is_stmt 0
	li	a4,1048576
	.loc 1 143 17
	addi	a3,a3,1
	.loc 1 142 21
	or	a5,a5,a4
.LVL38:
	.loc 1 143 13 is_stmt 1
	.loc 1 143 17 is_stmt 0
	andi	a3,a3,0xff
.LVL39:
.L23:
	.loc 1 146 12
	li	a2,1
	.loc 1 134 13
	andi	a4,a6,-49
	.loc 1 146 9 is_stmt 1
	.loc 1 146 12 is_stmt 0
	beq	a3,a2,.L24
	.loc 1 149 13 is_stmt 1
	.loc 1 149 21 is_stmt 0
	ori	a4,a4,16
.LVL40:
.L24:
	.loc 1 151 9 is_stmt 1
	.loc 1 151 17 is_stmt 0
	ori	a4,a4,1
.LVL41:
.L25:
	.loc 1 155 5 is_stmt 1
	.loc 1 155 73 is_stmt 0
	li	a3,536879104
	sw	a4,68(a3)
.LVL42:
	.loc 1 156 5 is_stmt 1
	.loc 1 156 73 is_stmt 0
	sw	a5,64(a3)
	.loc 1 158 1
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_dac_link_txdma, .-qcc74x_dac_link_txdma
	.section	.text.qcc74x_dac_set_dma_format,"ax",@progbits
	.align	1
	.globl	qcc74x_dac_set_dma_format
	.type	qcc74x_dac_set_dma_format, @function
qcc74x_dac_set_dma_format:
.LFB9:
	.loc 1 161 1 is_stmt 1
	.cfi_startproc
.LVL43:
	.loc 1 165 5
	.loc 1 167 5
	.loc 1 167 12 is_stmt 0
	li	a4,536879104
	lw	a5,68(a4)
.LVL44:
	.loc 1 168 5 is_stmt 1
	.loc 1 169 23 is_stmt 0
	slli	a1,a1,4
.LVL45:
	.loc 1 168 12
	andi	a5,a5,-49
.LVL46:
	.loc 1 169 5 is_stmt 1
	.loc 1 169 12 is_stmt 0
	or	a1,a1,a5
.LVL47:
	.loc 1 170 5 is_stmt 1
	.loc 1 170 73 is_stmt 0
	sw	a1,68(a4)
	.loc 1 172 1
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_dac_set_dma_format, .-qcc74x_dac_set_dma_format
	.section	.text.qcc74x_dac_set_value,"ax",@progbits
	.align	1
	.globl	qcc74x_dac_set_value
	.type	qcc74x_dac_set_value, @function
qcc74x_dac_set_value:
.LFB10:
	.loc 1 175 1 is_stmt 1
	.cfi_startproc
.LVL48:
	.loc 1 179 5
	.loc 1 180 5
	.loc 1 182 5
	.loc 1 184 5
	.loc 1 184 58 is_stmt 0
	lw	a3,4(a0)
	.loc 1 186 8
	andi	a4,a1,1
	.loc 1 184 12
	lw	a5,300(a3)
.LVL49:
	.loc 1 186 5 is_stmt 1
	.loc 1 186 8 is_stmt 0
	beq	a4,zero,.L34
	.loc 1 187 9 is_stmt 1
	.loc 1 187 16 is_stmt 0
	li	a4,-536805376
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL50:
	.loc 1 188 9 is_stmt 1
	.loc 1 188 26 is_stmt 0
	slli	a4,a2,16
	.loc 1 188 16
	or	a5,a4,a5
.LVL51:
.L34:
	.loc 1 191 5 is_stmt 1
	.loc 1 191 8 is_stmt 0
	andi	a1,a1,2
.LVL52:
	beq	a1,zero,.L35
	.loc 1 192 9 is_stmt 1
	.loc 1 192 16 is_stmt 0
	li	a4,-8192
	and	a5,a5,a4
.LVL53:
	.loc 1 193 9 is_stmt 1
	.loc 1 193 16 is_stmt 0
	or	a5,a2,a5
.LVL54:
.L35:
	.loc 1 196 5 is_stmt 1
	.loc 1 196 60 is_stmt 0
	sw	a5,300(a3)
.LVL55:
	.loc 1 198 1
	ret
	.cfi_endproc
.LFE10:
	.size	qcc74x_dac_set_value, .-qcc74x_dac_set_value
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x35f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
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
	.4byte	.LASF41
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
	.byte	0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0xae
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a8
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0xae
	.byte	0x33
	.4byte	0x1a8
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.string	"ch"
	.byte	0x1
	.byte	0xae
	.byte	0x40
	.4byte	0x9b
	.4byte	.LLST13
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0xae
	.byte	0x4d
	.4byte	0xa7
	.byte	0x1
	.byte	0x5c
	.byte	0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0xb3
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0xb4
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST14
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xdf
	.byte	0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0xa0
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f3
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0xa0
	.byte	0x38
	.4byte	0x1a8
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0xa0
	.byte	0x45
	.4byte	0x9b
	.4byte	.LLST11
	.byte	0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa5
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST12
	.byte	0
	.byte	0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x75
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x266
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0x75
	.byte	0x34
	.4byte	0x1a8
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x75
	.byte	0x3d
	.4byte	0x266
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7a
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST7
	.byte	0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7b
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST8
	.byte	0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0x7c
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST9
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x7d
	.byte	0xd
	.4byte	0x9b
	.4byte	.LLST10
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF34
	.byte	0xb
	.4byte	.LASF35
	.byte	0x1
	.byte	0x5d
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x2bf
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0x5d
	.byte	0x39
	.4byte	0x1a8
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.string	"ch"
	.byte	0x1
	.byte	0x5d
	.byte	0x46
	.4byte	0x9b
	.4byte	.LLST5
	.byte	0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x62
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST6
	.byte	0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x63
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xb
	.4byte	.LASF36
	.byte	0x1
	.byte	0x40
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x311
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0x40
	.byte	0x38
	.4byte	0x1a8
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.string	"ch"
	.byte	0x1
	.byte	0x40
	.byte	0x45
	.4byte	0x9b
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0xf
	.4byte	.LASF19
	.byte	0x1
	.byte	0x46
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x12
	.4byte	.LASF42
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0xa
	.byte	0x2e
	.4byte	0x1a8
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	.LASF37
	.byte	0x1
	.byte	0xa
	.byte	0x3b
	.4byte	0x9b
	.4byte	.LLST0
	.byte	0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x12
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LASF19
	.byte	0x1
	.byte	0x13
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST2
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST13:
	.4byte	.LVL48
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL55
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0x43
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL35
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x9
	.byte	0xcf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL3
	.4byte	.LVL12
	.2byte	0x4
	.byte	0x7f
	.byte	0x80,0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF3:
	.string	"__uint8_t"
.LASF26:
	.string	"qcc74x_dac_set_value"
.LASF16:
	.string	"uintptr_t"
.LASF11:
	.string	"__uintptr_t"
.LASF29:
	.string	"qcc74x_dac_link_txdma"
.LASF42:
	.string	"qcc74x_dac_init"
.LASF30:
	.string	"enable"
.LASF39:
	.string	"./drivers/lhal/src/qcc74x_dac.c"
.LASF31:
	.string	"regval1"
.LASF32:
	.string	"regval2"
.LASF23:
	.string	"user_data"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"qcc74x_device_s"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF35:
	.string	"qcc74x_dac_channel_disable"
.LASF22:
	.string	"dev_type"
.LASF21:
	.string	"sub_idx"
.LASF4:
	.string	"__uint16_t"
.LASF7:
	.string	"__uint32_t"
.LASF36:
	.string	"qcc74x_dac_channel_enable"
.LASF28:
	.string	"format"
.LASF33:
	.string	"flag"
.LASF12:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF37:
	.string	"clk_div"
.LASF40:
	.string	"./examples/peripherals/uart/uart_transmit/build/build_out/drivers/lhal"
.LASF25:
	.string	"regval"
.LASF9:
	.string	"long long int"
.LASF18:
	.string	"name"
.LASF24:
	.string	"value"
.LASF2:
	.string	"short int"
.LASF19:
	.string	"reg_base"
.LASF14:
	.string	"uint16_t"
.LASF15:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF17:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF20:
	.string	"irq_num"
.LASF34:
	.string	"_Bool"
.LASF27:
	.string	"qcc74x_dac_set_dma_format"
	.ident	"GCC: (GNU) 10.4.0"
