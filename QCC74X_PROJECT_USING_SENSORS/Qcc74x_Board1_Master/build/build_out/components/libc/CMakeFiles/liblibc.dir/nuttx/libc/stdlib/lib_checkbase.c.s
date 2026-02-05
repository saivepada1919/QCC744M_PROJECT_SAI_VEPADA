	.file	"lib_checkbase.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.lib_checkbase,"ax",@progbits
	.align	1
	.globl	lib_checkbase
	.type	lib_checkbase, @function
lib_checkbase:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/stdlib/lib_checkbase.c"
	.loc 1 53 1
	.cfi_startproc
.LVL0:
	.loc 1 54 3
	.loc 1 53 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.loc 1 54 15
	lw	s0,0(a1)
.LVL1:
	.loc 1 58 3 is_stmt 1
	.loc 1 53 1 is_stmt 0
	mv	s1,a1
	.loc 1 58 6
	bne	a0,zero,.L2
	.loc 1 62 7 is_stmt 1
.LVL2:
	.loc 1 68 7
	.loc 1 68 10 is_stmt 0
	lbu	a3,0(s0)
	li	a4,48
	.loc 1 62 12
	li	a5,10
	.loc 1 68 10
	bne	a3,a4,.L3
	.loc 1 72 11 is_stmt 1
.LVL3:
	.loc 1 73 11
	.loc 1 77 14 is_stmt 0
	lbu	a5,1(s0)
	li	a4,88
	.loc 1 73 14
	addi	s2,s0,1
.LVL4:
	.loc 1 77 11 is_stmt 1
	.loc 1 77 14 is_stmt 0
	andi	a5,a5,223
	bne	a5,a4,.L8
	.loc 1 78 15 discriminator 3
	lbu	a0,2(s0)
	li	a2,0
	li	a1,16
.LVL5:
	call	lib_isbasedigit
.LVL6:
	.loc 1 77 44 discriminator 3
	beq	a0,zero,.L8
	.loc 1 80 15 is_stmt 1
.LVL7:
	.loc 1 81 15
	.loc 1 81 18 is_stmt 0
	addi	s0,s0,2
.LVL8:
	.loc 1 80 20
	li	a5,16
.LVL9:
.L3:
	.loc 1 107 3 is_stmt 1
	.loc 1 107 9 is_stmt 0
	sw	s0,0(s1)
	.loc 1 108 3 is_stmt 1
	.loc 1 108 10 is_stmt 0
	mv	a0,a5
	j	.L1
.LVL10:
.L2:
	.loc 1 90 11
	li	a4,16
	mv	a5,a0
	.loc 1 90 8 is_stmt 1
	.loc 1 90 11 is_stmt 0
	bne	a0,a4,.L4
	.loc 1 92 7 is_stmt 1
	.loc 1 92 10 is_stmt 0
	lbu	a3,0(s0)
	li	a4,48
	bne	a3,a4,.L3
	.loc 1 92 25 discriminator 1
	lbu	a4,1(s0)
	li	a3,88
	andi	a4,a4,223
	bne	a4,a3,.L3
	.loc 1 94 11 is_stmt 1
	.loc 1 94 15 is_stmt 0
	addi	s0,s0,2
.LVL11:
	j	.L3
.L4:
	.loc 1 100 8 is_stmt 1
	.loc 1 100 21 is_stmt 0
	addi	a4,a0,-2
	.loc 1 100 11
	li	a3,24
	.loc 1 102 14
	li	a0,-1
.LVL12:
	.loc 1 100 11
	bleu	a4,a3,.L3
.L1:
	.loc 1 109 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL13:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL14:
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL15:
.L8:
	.cfi_restore_state
	.loc 1 73 14
	mv	s0,s2
	.loc 1 72 16
	li	a5,8
	j	.L3
	.cfi_endproc
.LFE4:
	.size	lib_checkbase, .-lib_checkbase
	.text
.Letext0:
	.file 2 "./components/libc/./nuttx/config.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xeb
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
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x4
	.4byte	0x6b
	.byte	0x5
	.byte	0x4
	.4byte	0x72
	.byte	0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x34
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xdc
	.byte	0x7
	.4byte	.LASF10
	.byte	0x1
	.byte	0x34
	.byte	0x17
	.4byte	0x2c
	.4byte	.LLST0
	.byte	0x7
	.4byte	.LASF11
	.byte	0x1
	.byte	0x34
	.byte	0x2a
	.4byte	0xdc
	.4byte	.LLST1
	.byte	0x8
	.string	"ptr"
	.byte	0x1
	.byte	0x36
	.byte	0xf
	.4byte	0x77
	.4byte	.LLST2
	.byte	0x9
	.4byte	.LVL6
	.4byte	0xe2
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x77
	.byte	0xb
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x2
	.byte	0x13
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x62
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"pptr"
.LASF12:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF15:
	.string	"lib_checkbase"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"base"
.LASF2:
	.string	"unsigned char"
.LASF13:
	.string	"./components/libc/nuttx/libc/stdlib/lib_checkbase.c"
.LASF9:
	.string	"char"
.LASF5:
	.string	"long int"
.LASF16:
	.string	"lib_isbasedigit"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF14:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/libc"
.LASF3:
	.string	"short int"
	.ident	"GCC: (GNU) 10.4.0"
