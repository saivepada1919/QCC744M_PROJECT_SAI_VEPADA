	.file	"qcc743_reset.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_peripheral_reset_by_id,"ax",@progbits
	.align	1
	.globl	qcc74x_peripheral_reset_by_id
	.type	qcc74x_peripheral_reset_by_id, @function
qcc74x_peripheral_reset_by_id:
.LFB242:
	.file 1 "./drivers/soc/qcc743/std/port/qcc743_reset.c"
	.loc 1 6 1
	.cfi_startproc
.LVL0:
	.loc 1 7 5
	.loc 1 9 5
	li	a4,22
	beq	a0,a4,.L13
	mv	a5,a0
	bgtu	a0,a4,.L3
	li	a4,12
	beq	a0,a4,.L14
	bgtu	a0,a4,.L4
	li	a4,7
	beq	a0,a4,.L15
	bgtu	a0,a4,.L5
	li	a0,-1
.LVL1:
	beq	a5,a4,.L48
	li	a4,4
	bgtu	a5,a4,.L17
	li	a4,1
	beq	a5,a4,.L18
	li	a4,3
	.loc 1 68 21 is_stmt 0
	li	a0,44
.L53:
	.loc 1 9 5
	beq	a5,a4,.L2
	li	a0,-1
	ret
.LVL2:
.L5:
	li	a4,10
	beq	a0,a4,.L20
	li	a4,11
	.loc 1 29 21
	li	a0,23
.LVL3:
	.loc 1 9 5
	beq	a5,a4,.L2
	li	a4,9
	.loc 1 62 21
	li	a0,39
	j	.L53
.LVL4:
.L4:
	.loc 1 9 5
	li	a4,18
	beq	a0,a4,.L23
	bgtu	a0,a4,.L7
	li	a4,16
	beq	a0,a4,.L24
	bgtu	a0,a4,.L8
	li	a4,13
	beq	a0,a4,.L25
	li	a4,15
	.loc 1 83 21
	li	a0,50
.LVL5:
	j	.L53
.LVL6:
.L8:
	.loc 1 9 5
	li	a4,17
	.loc 1 89 21
	li	a0,52
.LVL7:
	j	.L53
.LVL8:
.L7:
	.loc 1 9 5
	li	a4,20
	beq	a0,a4,.L28
	li	a4,21
	.loc 1 107 21
	li	a0,59
.LVL9:
	.loc 1 9 5
	beq	a5,a4,.L2
	li	a4,19
	.loc 1 95 21
	li	a0,54
	j	.L53
.LVL10:
.L3:
	.loc 1 9 5
	li	a4,32
	beq	a0,a4,.L31
	bgtu	a0,a4,.L9
	li	a4,27
	beq	a0,a4,.L32
	bgtu	a0,a4,.L10
	li	a4,25
	beq	a0,a4,.L33
	bgtu	a0,a4,.L11
	li	a4,23
	beq	a0,a4,.L34
	li	a4,24
	.loc 1 23 21
	li	a0,21
.LVL11:
	j	.L53
.LVL12:
.L11:
	.loc 1 9 5
	li	a4,26
	.loc 1 104 21
	li	a0,57
.LVL13:
	j	.L53
.LVL14:
.L10:
	.loc 1 9 5
	li	a4,30
	beq	a0,a4,.L37
	li	a4,31
	.loc 1 38 21
	li	a0,27
.LVL15:
	.loc 1 9 5
	beq	a5,a4,.L2
	li	a4,28
	.loc 1 110 21
	li	a0,60
	j	.L53
.LVL16:
.L9:
	.loc 1 9 5
	li	a4,39
	beq	a0,a4,.L40
	bgtu	a0,a4,.L12
	li	a4,34
	beq	a0,a4,.L41
	li	a4,38
	.loc 1 41 21
	li	a0,32
.LVL17:
	.loc 1 9 5
	beq	a5,a4,.L2
	li	a4,33
	.loc 1 32 21
	li	a0,25
	j	.L53
.LVL18:
.L12:
	.loc 1 9 5
	li	a4,41
	beq	a0,a4,.L44
	li	a4,42
	.loc 1 74 21
	li	a0,46
.LVL19:
	.loc 1 9 5
	beq	a5,a4,.L2
	li	a4,40
	li	a0,-1
	bne	a5,a4,.L48
	.loc 1 53 21
	li	a0,35
.L2:
.LVL20:
	.loc 1 116 5 is_stmt 1
	.loc 1 6 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 116 12
	call	GLB_AHB_MCU_Software_Reset
.LVL21:
	.loc 1 117 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL22:
.L13:
	.loc 1 17 21
	li	a0,18
.LVL23:
	j	.L2
.LVL24:
.L14:
	.loc 1 77 21
	li	a0,48
.LVL25:
	j	.L2
.LVL26:
.L15:
	.loc 1 59 21
	li	a0,37
.LVL27:
	j	.L2
.L17:
	.loc 1 47 21
	li	a0,34
	j	.L2
.L18:
	.loc 1 71 21
	li	a0,45
	j	.L2
.LVL28:
.L20:
	.loc 1 65 21
	li	a0,43
.LVL29:
	j	.L2
.LVL30:
.L23:
	.loc 1 92 21
	li	a0,53
.LVL31:
	j	.L2
.LVL32:
.L24:
	.loc 1 86 21
	li	a0,51
.LVL33:
	j	.L2
.LVL34:
.L25:
	.loc 1 80 21
	li	a0,49
.LVL35:
	j	.L2
.LVL36:
.L28:
	.loc 1 98 21
	li	a0,55
.LVL37:
	j	.L2
.LVL38:
.L31:
	.loc 1 35 21
	li	a0,26
.LVL39:
	j	.L2
.LVL40:
.L32:
	.loc 1 101 21
	li	a0,56
.LVL41:
	j	.L2
.LVL42:
.L33:
	.loc 1 26 21
	li	a0,22
.LVL43:
	j	.L2
.LVL44:
.L34:
	.loc 1 20 21
	li	a0,19
.LVL45:
	j	.L2
.LVL46:
.L37:
	.loc 1 9 5
	li	a0,17
.LVL47:
	j	.L2
.LVL48:
.L40:
	.loc 1 56 21
	li	a0,36
.LVL49:
	j	.L2
.LVL50:
.L41:
	.loc 1 11 21
	li	a0,16
.LVL51:
	j	.L2
.LVL52:
.L44:
	.loc 1 44 21
	li	a0,33
.LVL53:
	j	.L2
.L48:
	.loc 1 117 1
	ret
	.cfi_endproc
.LFE242:
	.size	qcc74x_peripheral_reset_by_id, .-qcc74x_peripheral_reset_by_id
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/soc/qcc743/std/include/qcc743_glb.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF12
	.byte	0xc
	.4byte	.LASF13
	.4byte	.LASF14
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF9
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
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x5
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0xce
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x5
	.byte	0x2b
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x7
	.4byte	.LASF17
	.byte	0x1
	.byte	0x7
	.byte	0xd
	.4byte	0x77
	.4byte	.LLST1
	.byte	0x8
	.4byte	.LVL21
	.4byte	0xce
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x694
	.byte	0x11
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
	.byte	0x8
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
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
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LFE242
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF8:
	.string	"unsigned int"
.LASF12:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"long unsigned int"
.LASF18:
	.string	"GLB_AHB_MCU_Software_Reset"
.LASF7:
	.string	"long long unsigned int"
.LASF9:
	.string	"__uint8_t"
.LASF13:
	.string	"./drivers/soc/qcc743/std/port/qcc743_reset.c"
.LASF10:
	.string	"uint8_t"
.LASF1:
	.string	"unsigned char"
.LASF11:
	.string	"char"
.LASF4:
	.string	"long int"
.LASF16:
	.string	"peri"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"rst_num"
.LASF15:
	.string	"qcc74x_peripheral_reset_by_id"
.LASF14:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/drivers/soc/qcc743/std"
.LASF2:
	.string	"short int"
	.ident	"GCC: (GNU) 10.4.0"
