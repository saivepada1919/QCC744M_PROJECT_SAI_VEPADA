	.file	"lib_strstr.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.strstr,"ax",@progbits
	.align	1
	.globl	strstr
	.type	strstr, @function
strstr:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/string/lib_strstr.c"
	.loc 1 34 1
	.cfi_startproc
.LVL0:
	.loc 1 35 3
	.loc 1 36 3
	.loc 1 37 3
	.loc 1 41 3
	.loc 1 34 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	mv	s1,a1
	.loc 1 41 9
	mv	a0,a1
.LVL1:
	.loc 1 34 1
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.loc 1 41 9
	call	strlen
.LVL2:
	.loc 1 42 3 is_stmt 1
	.loc 1 42 6 is_stmt 0
	lbu	s3,0(s1)
.LVL3:
	.loc 1 44 3 is_stmt 1
	.loc 1 44 6 is_stmt 0
	beq	s3,zero,.L2
	mv	s2,a0
.LVL4:
.L5:
	.loc 1 56 3 is_stmt 1
	.loc 1 62 7
	.loc 1 62 19 is_stmt 0
	mv	a0,s0
	mv	a1,s3
	call	strchr
.LVL5:
	mv	s0,a0
.LVL6:
	.loc 1 63 7 is_stmt 1
	.loc 1 63 10 is_stmt 0
	bne	a0,zero,.L3
.L4:
	.loc 1 70 17
	li	s0,0
.LVL7:
.L2:
	.loc 1 90 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL8:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL9:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L3:
	.cfi_restore_state
	.loc 1 63 25 discriminator 1
	call	strlen
.LVL11:
	.loc 1 63 22 discriminator 1
	bltu	a0,s2,.L4
	.loc 1 75 7 is_stmt 1
	.loc 1 75 11 is_stmt 0
	mv	a2,s2
	mv	a1,s1
	mv	a0,s0
	call	strncmp
.LVL12:
	.loc 1 75 10
	beq	a0,zero,.L2
	.loc 1 82 7 is_stmt 1
	.loc 1 82 16 is_stmt 0
	addi	s0,s0,1
.LVL13:
	.loc 1 56 10 is_stmt 1
	.loc 1 62 17 is_stmt 0
	j	.L5
	.cfi_endproc
.LFE4:
	.size	strstr, .-strstr
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.file 3 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x16d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF15
	.byte	0xc
	.4byte	.LASF16
	.4byte	.LASF17
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF8
	.byte	0x5
	.byte	0x4
	.4byte	0x7d
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x6
	.4byte	0x7d
	.byte	0x5
	.byte	0x4
	.4byte	0x84
	.byte	0x7
	.4byte	.LASF19
	.byte	0x2
	.byte	0x30
	.byte	0x7
	.4byte	0x77
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x14c
	.byte	0x8
	.string	"str"
	.byte	0x1
	.byte	0x21
	.byte	0x1c
	.4byte	0x89
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF10
	.byte	0x1
	.byte	0x21
	.byte	0x2d
	.4byte	0x89
	.4byte	.LLST1
	.byte	0xa
	.4byte	.LASF11
	.byte	0x1
	.byte	0x23
	.byte	0xf
	.4byte	0x89
	.4byte	.LLST2
	.byte	0xb
	.string	"ch"
	.byte	0x1
	.byte	0x24
	.byte	0x8
	.4byte	0x7d
	.4byte	.LLST3
	.byte	0xb
	.string	"len"
	.byte	0x1
	.byte	0x25
	.byte	0xa
	.4byte	0x25
	.4byte	.LLST4
	.byte	0xc
	.4byte	.LVL2
	.4byte	0x14c
	.4byte	0x10c
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LVL5
	.4byte	0x158
	.4byte	0x126
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL11
	.4byte	0x14c
	.byte	0xf
	.4byte	.LVL12
	.4byte	0x164
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xd
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF12
	.4byte	.LASF12
	.byte	0x2
	.byte	0x29
	.byte	0x8
	.byte	0x10
	.4byte	.LASF13
	.4byte	.LASF13
	.byte	0x2
	.byte	0x23
	.byte	0x7
	.byte	0x10
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x2
	.byte	0x2b
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
	.byte	0x3
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
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
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL10
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL10
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
.LASF18:
	.string	"size_t"
.LASF13:
	.string	"strchr"
.LASF15:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"substr"
.LASF9:
	.string	"char"
.LASF2:
	.string	"unsigned char"
.LASF5:
	.string	"long int"
.LASF3:
	.string	"short int"
.LASF17:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/libc"
.LASF12:
	.string	"strlen"
.LASF4:
	.string	"short unsigned int"
.LASF19:
	.string	"strstr"
.LASF14:
	.string	"strncmp"
.LASF16:
	.string	"./components/libc/nuttx/libc/string/lib_strstr.c"
.LASF11:
	.string	"candidate"
.LASF0:
	.string	"unsigned int"
.LASF1:
	.string	"signed char"
	.ident	"GCC: (GNU) 10.4.0"
