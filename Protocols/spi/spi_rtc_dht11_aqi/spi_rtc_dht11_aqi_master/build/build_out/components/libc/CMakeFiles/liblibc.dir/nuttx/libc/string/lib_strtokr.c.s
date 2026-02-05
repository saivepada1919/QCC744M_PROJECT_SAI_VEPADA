	.file	"lib_strtokr.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.strtok_r,"ax",@progbits
	.align	1
	.globl	strtok_r
	.type	strtok_r, @function
strtok_r:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/string/lib_strtokr.c"
	.loc 1 81 1
	.cfi_startproc
.LVL0:
	.loc 1 82 3
	.loc 1 83 3
	.loc 1 89 3
	.loc 1 81 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 81 1
	mv	s3,a1
	mv	s2,a2
	.loc 1 89 6
	bne	a0,zero,.L2
	.loc 1 93 8 is_stmt 1
	.loc 1 93 11 is_stmt 0
	bne	a2,zero,.L3
.LVL1:
.L5:
	.loc 1 99 13
	li	s0,0
.LVL2:
.L1:
	.loc 1 144 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL3:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL4:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L3:
	.cfi_restore_state
	.loc 1 93 23 discriminator 1
	lw	a0,0(a2)
.LVL6:
	.loc 1 93 20 discriminator 1
	beq	a0,zero,.L5
.L2:
	.loc 1 81 1
	mv	s0,a0
.LVL7:
.L6:
	.loc 1 105 8 is_stmt 1
	lbu	a1,0(s0)
	.loc 1 104 3 is_stmt 0
	beq	a1,zero,.L5
	.loc 1 105 19
	mv	a0,s3
	call	strchr
.LVL8:
	.loc 1 105 16
	bne	a0,zero,.L7
	.loc 1 112 3 is_stmt 1
	.loc 1 112 6 is_stmt 0
	lbu	a5,0(s0)
	.loc 1 119 13
	addi	s1,s0,1
	.loc 1 112 6
	beq	a5,zero,.L5
.LVL9:
.L8:
	.loc 1 120 8 is_stmt 1 discriminator 1
	lbu	a1,0(s1)
	.loc 1 119 3 is_stmt 0 discriminator 1
	beq	a1,zero,.L9
	.loc 1 120 17
	mv	a0,s3
	call	strchr
.LVL10:
	.loc 1 120 14
	beq	a0,zero,.L10
	.loc 1 127 3 is_stmt 1
	.loc 1 127 6 is_stmt 0
	lbu	a5,0(s1)
	beq	a5,zero,.L9
	.loc 1 131 7 is_stmt 1
.LVL11:
	.loc 1 131 15 is_stmt 0
	sbia	zero,(s1),1,0
.LVL12:
.L9:
	.loc 1 138 3 is_stmt 1
	.loc 1 138 6 is_stmt 0
	beq	s2,zero,.L1
	.loc 1 140 7 is_stmt 1
	.loc 1 140 16 is_stmt 0
	sw	s1,0(s2)
	j	.L1
.LVL13:
.L7:
	.loc 1 106 17 is_stmt 1
	.loc 1 106 8
	.loc 1 106 14 is_stmt 0
	addi	s0,s0,1
.LVL14:
	j	.L6
.LVL15:
.L10:
	.loc 1 121 15 is_stmt 1
	.loc 1 121 8
	.loc 1 121 12 is_stmt 0
	addi	s1,s1,1
.LVL16:
	j	.L8
	.cfi_endproc
.LFE4:
	.size	strtok_r, .-strtok_r
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF14
	.byte	0xc
	.4byte	.LASF15
	.4byte	.LASF16
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
	.byte	0x4
	.byte	0x4
	.4byte	0x71
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x71
	.byte	0x4
	.byte	0x4
	.4byte	0x78
	.byte	0x6
	.4byte	.LASF17
	.byte	0x2
	.byte	0x3c
	.byte	0x7
	.4byte	0x6b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x110
	.byte	0x7
	.string	"str"
	.byte	0x1
	.byte	0x50
	.byte	0x18
	.4byte	0x6b
	.4byte	.LLST0
	.byte	0x8
	.4byte	.LASF10
	.byte	0x1
	.byte	0x50
	.byte	0x29
	.4byte	0x7d
	.4byte	.LLST1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x1
	.byte	0x50
	.byte	0x37
	.4byte	0x110
	.4byte	.LLST2
	.byte	0x9
	.4byte	.LASF12
	.byte	0x1
	.byte	0x52
	.byte	0x9
	.4byte	0x6b
	.byte	0x1
	.byte	0x58
	.byte	0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x53
	.byte	0x9
	.4byte	0x6b
	.4byte	.LLST3
	.byte	0xb
	.4byte	.LVL8
	.4byte	0x116
	.4byte	0xff
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LVL10
	.4byte	0x116
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x4
	.byte	0x4
	.4byte	0x6b
	.byte	0xe
	.4byte	.LASF18
	.4byte	.LASF18
	.byte	0x2
	.byte	0x23
	.byte	0x7
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
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
	.4byte	.LFE4
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
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
.LASF18:
	.string	"strchr"
.LASF14:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"delim"
.LASF2:
	.string	"unsigned char"
.LASF5:
	.string	"long int"
.LASF12:
	.string	"pbegin"
.LASF15:
	.string	"./components/libc/nuttx/libc/string/lib_strtokr.c"
.LASF17:
	.string	"strtok_r"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF16:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/libc"
.LASF13:
	.string	"pend"
.LASF3:
	.string	"short int"
.LASF9:
	.string	"char"
.LASF11:
	.string	"saveptr"
	.ident	"GCC: (GNU) 10.4.0"
