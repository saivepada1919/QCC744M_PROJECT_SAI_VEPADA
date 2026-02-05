	.file	"lib_strdup.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.strdup,"ax",@progbits
	.align	1
	.globl	strdup
	.type	strdup, @function
strdup:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/string/lib_strdup.c"
	.loc 1 34 1
	.cfi_startproc
.LVL0:
	.loc 1 35 3
	.loc 1 36 3
	.loc 1 34 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	sw	ra,12(sp)
	sw	s0,8(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 35 9
	li	s1,0
	.loc 1 36 6
	beq	a0,zero,.L1
	mv	s0,a0
	.loc 1 38 7 is_stmt 1
	.loc 1 38 31 is_stmt 0
	call	strlen
.LVL1:
	.loc 1 38 23
	li	a1,0
	addi	a0,a0,1
	call	kmalloc
.LVL2:
	mv	s1,a0
.LVL3:
	.loc 1 39 7 is_stmt 1
	.loc 1 39 10 is_stmt 0
	beq	a0,zero,.L1
	.loc 1 41 11 is_stmt 1
	mv	a1,s0
	call	strcpy
.LVL4:
.L1:
	.loc 1 46 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	strdup, .-strdup
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.file 3 "./components/mm/./mem.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x11b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF13
	.byte	0xc
	.4byte	.LASF14
	.4byte	.LASF15
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
	.4byte	.LASF16
	.byte	0x2
	.byte	0x54
	.byte	0x7
	.4byte	0x6b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xfa
	.byte	0x7
	.string	"s"
	.byte	0x1
	.byte	0x21
	.byte	0x1c
	.4byte	0x7d
	.4byte	.LLST0
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.byte	0x23
	.byte	0x9
	.4byte	0x6b
	.4byte	.LLST1
	.byte	0x9
	.4byte	.LVL1
	.4byte	0xfa
	.4byte	0xcf
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x9
	.4byte	.LVL2
	.4byte	0x106
	.4byte	0xe3
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LVL4
	.4byte	0x112
	.byte	0xa
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0xa
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF10
	.4byte	.LASF10
	.byte	0x2
	.byte	0x29
	.byte	0x8
	.byte	0xc
	.4byte	.LASF11
	.4byte	.LASF11
	.byte	0x3
	.byte	0x82
	.byte	0x7
	.byte	0xc
	.4byte	.LASF12
	.4byte	.LASF12
	.byte	0x2
	.byte	0x26
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
	.byte	0x9
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
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
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
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
.LASF12:
	.string	"strcpy"
.LASF13:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF15:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/components/libc"
.LASF2:
	.string	"unsigned char"
.LASF14:
	.string	"./components/libc/nuttx/libc/string/lib_strdup.c"
.LASF9:
	.string	"char"
.LASF5:
	.string	"long int"
.LASF11:
	.string	"kmalloc"
.LASF10:
	.string	"strlen"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF17:
	.string	"news"
.LASF3:
	.string	"short int"
.LASF16:
	.string	"strdup"
	.ident	"GCC: (GNU) 10.4.0"
