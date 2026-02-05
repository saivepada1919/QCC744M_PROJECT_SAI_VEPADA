	.file	"qcc743_sec_dbg.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Sec_Dbg_Read_Chip_ID,"ax",@progbits
	.align	1
	.globl	Sec_Dbg_Read_Chip_ID
	.type	Sec_Dbg_Read_Chip_ID, @function
Sec_Dbg_Read_Chip_ID:
.LFB242:
	.file 1 "./drivers/soc/qcc743/std/src/qcc743_sec_dbg.c"
	.loc 1 54 1
	.cfi_startproc
.LVL0:
	.loc 1 55 5
	.loc 1 57 5
	.loc 1 57 11 is_stmt 0
	li	a4,536883200
	lw	a5,0(a4)
.LVL1:
	.loc 1 58 7 is_stmt 1
	.loc 1 58 44 is_stmt 0
	srli	a3,a5,8
	.loc 1 58 13
	sb	a5,0(a0)
	.loc 1 58 29 is_stmt 1
	.loc 1 58 35 is_stmt 0
	sb	a3,1(a0)
	.loc 1 58 58 is_stmt 1
	.loc 1 58 73 is_stmt 0
	srli	a3,a5,16
	.loc 1 58 103
	srli	a5,a5,24
.LVL2:
	.loc 1 58 64
	sb	a3,2(a0)
	.loc 1 58 88 is_stmt 1
	.loc 1 58 94 is_stmt 0
	sb	a5,3(a0)
	.loc 1 58 119 is_stmt 1
	.loc 1 60 5
	.loc 1 60 12 is_stmt 0
	lw	a5,4(a4)
.LVL3:
	.loc 1 61 7 is_stmt 1
	.loc 1 61 58 is_stmt 0
	srli	a4,a5,8
	.loc 1 61 19
	sb	a5,4(a0)
	.loc 1 61 36 is_stmt 1
	.loc 1 61 48 is_stmt 0
	sb	a4,5(a0)
	.loc 1 61 72 is_stmt 1
	.loc 1 61 94 is_stmt 0
	srli	a4,a5,16
	.loc 1 61 131
	srli	a5,a5,24
.LVL4:
	.loc 1 61 84
	sb	a4,6(a0)
	.loc 1 61 109 is_stmt 1
	.loc 1 61 121 is_stmt 0
	sb	a5,7(a0)
	.loc 1 61 147 is_stmt 1
	.loc 1 62 1 is_stmt 0
	ret
	.cfi_endproc
.LFE242:
	.size	Sec_Dbg_Read_Chip_ID, .-Sec_Dbg_Read_Chip_ID
	.section	.text.Sec_Dbg_Read_Dbg_State,"ax",@progbits
	.align	1
	.globl	Sec_Dbg_Read_Dbg_State
	.type	Sec_Dbg_Read_Dbg_State, @function
Sec_Dbg_Read_Dbg_State:
.LFB243:
	.loc 1 73 1 is_stmt 1
	.cfi_startproc
	.loc 1 74 5
	.loc 1 75 5
.LVL5:
	.loc 1 76 5
	.loc 1 78 5
	.loc 1 78 16 is_stmt 0
	li	a5,536883200
	lw	a0,24(a5)
	.loc 1 79 15
	lw	a5,24(a5)
	.loc 1 78 10
	extu	a0,a0,24+4-1,24
.LVL6:
	.loc 1 79 5 is_stmt 1
	.loc 1 81 5
	.loc 1 81 7 is_stmt 0
	beq	a0,zero,.L2
	.loc 1 83 11 is_stmt 1
	.loc 1 83 42 is_stmt 0
	addi	a3,a0,-1
	.loc 1 83 13
	li	a4,2
	.loc 1 90 13
	li	a0,2
.LVL7:
	.loc 1 83 13
	bgtu	a3,a4,.L2
	.loc 1 84 9 is_stmt 1
	.loc 1 79 117 is_stmt 0
	srli	a0,a5,28
.LVL8:
	.loc 1 84 11
	addi	a0,a0,-15
.LVL9:
	snez	a0,a0
.LVL10:
.L2:
	.loc 1 94 1
	ret
	.cfi_endproc
.LFE243:
	.size	Sec_Dbg_Read_Dbg_State, .-Sec_Dbg_Read_Dbg_State
	.section	.text.Sec_Dbg_Read_Dbg_Mode,"ax",@progbits
	.align	1
	.globl	Sec_Dbg_Read_Dbg_Mode
	.type	Sec_Dbg_Read_Dbg_Mode, @function
Sec_Dbg_Read_Dbg_Mode:
.LFB244:
	.loc 1 105 1 is_stmt 1
	.cfi_startproc
	.loc 1 106 5
	.loc 1 106 16 is_stmt 0
	li	a5,536883200
	lw	a0,24(a5)
	.loc 1 107 1
	extu	a0,a0,24+4-1,24
	ret
	.cfi_endproc
.LFE244:
	.size	Sec_Dbg_Read_Dbg_Mode, .-Sec_Dbg_Read_Dbg_Mode
	.section	.text.Sec_Dbg_Read_Dbg_Enable,"ax",@progbits
	.align	1
	.globl	Sec_Dbg_Read_Dbg_Enable
	.type	Sec_Dbg_Read_Dbg_Enable, @function
Sec_Dbg_Read_Dbg_Enable:
.LFB245:
	.loc 1 118 1 is_stmt 1
	.cfi_startproc
	.loc 1 119 5
	.loc 1 119 16 is_stmt 0
	li	a5,536883200
	lw	a0,24(a5)
	.loc 1 120 1
	srli	a0,a0,28
	ret
	.cfi_endproc
.LFE245:
	.size	Sec_Dbg_Read_Dbg_Enable, .-Sec_Dbg_Read_Dbg_Enable
	.section	.text.Sec_Dbg_Set_Dbg_Pwd,"ax",@progbits
	.align	1
	.globl	Sec_Dbg_Set_Dbg_Pwd
	.type	Sec_Dbg_Set_Dbg_Pwd, @function
Sec_Dbg_Set_Dbg_Pwd:
.LFB246:
	.loc 1 131 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 132 5
	.loc 1 132 80 is_stmt 0
	lw	a4,0(a0)
	.loc 1 132 74
	li	a5,536883200
	sw	a4,8(a5)
	.loc 1 133 5 is_stmt 1
	.loc 1 133 74 is_stmt 0
	lw	a4,4(a0)
	sw	a4,12(a5)
	.loc 1 134 5 is_stmt 1
	.loc 1 134 75 is_stmt 0
	lw	a4,8(a0)
	sw	a4,16(a5)
	.loc 1 135 5 is_stmt 1
	.loc 1 135 75 is_stmt 0
	lw	a4,12(a0)
	sw	a4,20(a5)
	.loc 1 136 1
	ret
	.cfi_endproc
.LFE246:
	.size	Sec_Dbg_Set_Dbg_Pwd, .-Sec_Dbg_Set_Dbg_Pwd
	.section	.text.Sec_Dbg_Set_Dbg_Trigger,"ax",@progbits
	.align	1
	.globl	Sec_Dbg_Set_Dbg_Trigger
	.type	Sec_Dbg_Set_Dbg_Trigger, @function
Sec_Dbg_Set_Dbg_Trigger:
.LFB247:
	.loc 1 147 1 is_stmt 1
	.cfi_startproc
	.loc 1 148 5
	.loc 1 149 5
	.loc 1 149 12 is_stmt 0
	li	a4,536883200
	lw	a5,24(a4)
.LVL12:
	.loc 1 150 5 is_stmt 1
	.loc 1 150 12 is_stmt 0
	ori	a5,a5,2
.LVL13:
	.loc 1 151 5 is_stmt 1
	.loc 1 151 75 is_stmt 0
	sw	a5,24(a4)
	.loc 1 152 1
	ret
	.cfi_endproc
.LFE247:
	.size	Sec_Dbg_Set_Dbg_Trigger, .-Sec_Dbg_Set_Dbg_Trigger
	.section	.text.Sec_Dbg_Wait_Ready,"ax",@progbits
	.align	1
	.globl	Sec_Dbg_Wait_Ready
	.type	Sec_Dbg_Wait_Ready, @function
Sec_Dbg_Wait_Ready:
.LFB248:
	.loc 1 163 1 is_stmt 1
	.cfi_startproc
	.loc 1 164 5
.LVL14:
	.loc 1 163 1 is_stmt 0
	li	a5,1025
	.loc 1 168 20
	li	a4,536883200
.LVL15:
.L14:
	.loc 1 165 5 is_stmt 1 discriminator 2
	.loc 1 167 5 discriminator 2
	.loc 1 168 9 discriminator 2
	.loc 1 168 20 is_stmt 0 discriminator 2
	lw	a0,24(a4)
	.loc 1 168 14 discriminator 2
	andi	a0,a0,1
.LVL16:
	.loc 1 169 11 is_stmt 1 discriminator 2
	.loc 1 169 5 is_stmt 0 discriminator 2
	beq	a0,zero,.L12
.LVL17:
	.loc 1 169 19 discriminator 1
	addi	a5,a5,-1
.LVL18:
	bne	a5,zero,.L14
.LVL19:
.L12:
	.loc 1 172 1
	ret
	.cfi_endproc
.LFE248:
	.size	Sec_Dbg_Wait_Ready, .-Sec_Dbg_Wait_Ready
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x204
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x25
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
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x88
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x5
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x7c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x6
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa2
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.byte	0x1
	.byte	0x9c
	.4byte	0xf8
	.byte	0x7
	.string	"cnt"
	.byte	0x1
	.byte	0xa4
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST4
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0xa5
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x92
	.byte	0x6
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.byte	0x1
	.byte	0x9c
	.4byte	0x11d
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x94
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x9
	.4byte	.LASF19
	.byte	0x1
	.byte	0x82
	.byte	0x6
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.byte	0x1
	.byte	0x9c
	.4byte	0x142
	.byte	0xa
	.string	"pwd"
	.byte	0x1
	.byte	0x82
	.byte	0x29
	.4byte	0x142
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0xa7
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x75
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.byte	0x1
	.byte	0x9c
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x68
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.byte	0x1
	.byte	0x9c
	.byte	0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0x48
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bd
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.byte	0x4a
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x4b
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST2
	.byte	0x7
	.string	"ena"
	.byte	0x1
	.byte	0x4c
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST3
	.byte	0
	.byte	0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x35
	.byte	0x6
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0x201
	.byte	0xa
	.string	"id"
	.byte	0x1
	.byte	0x35
	.byte	0x23
	.4byte	0x201
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x37
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x37
	.byte	0x15
	.4byte	0x9b
	.4byte	.LLST1
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x8f
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xa
	.2byte	0x400
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x7f
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x4c
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x7a
	.byte	0xf
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE243
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x4c
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5f
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF28:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"__uint8_t"
.LASF19:
	.string	"Sec_Dbg_Set_Dbg_Pwd"
.LASF10:
	.string	"__uintptr_t"
.LASF0:
	.string	"unsigned char"
.LASF23:
	.string	"Sec_Dbg_Read_Dbg_State"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF29:
	.string	"./drivers/soc/qcc743/std/src/qcc743_sec_dbg.c"
.LASF14:
	.string	"uintptr_t"
.LASF17:
	.string	"tmpVal"
.LASF6:
	.string	"__uint32_t"
.LASF16:
	.string	"busy"
.LASF2:
	.string	"short int"
.LASF27:
	.string	"idHigh"
.LASF11:
	.string	"unsigned int"
.LASF26:
	.string	"idLow"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF30:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/soc/qcc743/std"
.LASF18:
	.string	"Sec_Dbg_Set_Dbg_Trigger"
.LASF24:
	.string	"mode"
.LASF25:
	.string	"Sec_Dbg_Read_Chip_ID"
.LASF15:
	.string	"char"
.LASF22:
	.string	"Sec_Dbg_Wait_Ready"
.LASF13:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF21:
	.string	"Sec_Dbg_Read_Dbg_Mode"
.LASF20:
	.string	"Sec_Dbg_Read_Dbg_Enable"
	.ident	"GCC: (GNU) 10.4.0"
