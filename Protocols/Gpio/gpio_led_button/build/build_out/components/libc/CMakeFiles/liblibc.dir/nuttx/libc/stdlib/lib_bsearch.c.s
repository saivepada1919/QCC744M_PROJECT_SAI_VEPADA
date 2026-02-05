	.file	"lib_bsearch.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.bsearch,"ax",@progbits
	.align	1
	.globl	bsearch
	.type	bsearch, @function
bsearch:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/stdlib/lib_bsearch.c"
	.loc 1 111 1
	.cfi_startproc
.LVL0:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	mv	s2,a0
	mv	s1,a1
	.loc 1 112 3
	.loc 1 113 3
	.loc 1 114 3
	.loc 1 115 3
	.loc 1 121 3
.LVL1:
.L2:
	.loc 1 121 47 discriminator 1
	.loc 1 121 3 is_stmt 0 discriminator 1
	bne	a2,zero,.L5
	.loc 1 140 9
	li	s0,0
.LVL2:
.L1:
	.loc 1 141 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL3:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL4:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L5:
	.cfi_restore_state
	.loc 1 123 7 is_stmt 1
	.loc 1 123 29 is_stmt 0
	srli	a5,a2,1
	.loc 1 123 14
	mv	s0,s1
	mula	s0,a5,a3
	.loc 1 124 14
	mv	a0,s2
	.loc 1 123 29
	sw	a2,12(sp)
	.loc 1 123 14
	sw	a3,8(sp)
.LVL6:
	.loc 1 124 7 is_stmt 1
	.loc 1 124 14 is_stmt 0
	sw	a4,4(sp)
	mv	a1,s0
	jalr	a4
.LVL7:
	.loc 1 126 7 is_stmt 1
	.loc 1 126 10 is_stmt 0
	beq	a0,zero,.L1
	.loc 1 131 7 is_stmt 1
	.loc 1 131 10 is_stmt 0
	lw	a4,4(sp)
	lw	a3,8(sp)
	lw	a2,12(sp)
	ble	a0,zero,.L4
	.loc 1 135 11 is_stmt 1
	.loc 1 135 17 is_stmt 0
	add	s1,s0,a3
.LVL8:
	.loc 1 136 11 is_stmt 1
	.loc 1 136 14 is_stmt 0
	addi	a2,a2,-1
.LVL9:
.L4:
	.loc 1 121 57 is_stmt 1 discriminator 2
	.loc 1 121 61 is_stmt 0 discriminator 2
	srli	a2,a2,1
.LVL10:
	j	.L2
	.cfi_endproc
.LFE4:
	.size	bsearch, .-bsearch
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x162
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
	.byte	0x2
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
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x6
	.4byte	0x79
	.byte	0x7
	.byte	0x4
	.4byte	0x80
	.byte	0x7
	.byte	0x4
	.4byte	0x91
	.byte	0x8
	.4byte	0x38
	.4byte	0xa5
	.byte	0x9
	.4byte	0xa5
	.byte	0x9
	.4byte	0xa5
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xab
	.byte	0xa
	.byte	0xb
	.4byte	.LASF19
	.byte	0x3
	.byte	0x55
	.byte	0x8
	.4byte	0x77
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0xc
	.string	"key"
	.byte	0x1
	.byte	0x6c
	.byte	0x1f
	.4byte	0xa5
	.4byte	.LLST0
	.byte	0xd
	.4byte	.LASF10
	.byte	0x1
	.byte	0x6c
	.byte	0x30
	.4byte	0xa5
	.4byte	.LLST1
	.byte	0xc
	.string	"nel"
	.byte	0x1
	.byte	0x6c
	.byte	0x3d
	.4byte	0x25
	.4byte	.LLST2
	.byte	0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0x6d
	.byte	0x1a
	.4byte	0x25
	.4byte	.LLST3
	.byte	0xd
	.4byte	.LASF12
	.byte	0x1
	.byte	0x6d
	.byte	0x27
	.4byte	0x8b
	.4byte	.LLST4
	.byte	0xe
	.4byte	.LASF13
	.byte	0x1
	.byte	0x70
	.byte	0xf
	.4byte	0xa5
	.byte	0x1
	.byte	0x58
	.byte	0xf
	.4byte	.LASF14
	.byte	0x1
	.byte	0x71
	.byte	0xf
	.4byte	0x85
	.4byte	.LLST5
	.byte	0x10
	.string	"lim"
	.byte	0x1
	.byte	0x72
	.byte	0xa
	.4byte	0x25
	.4byte	.LLST6
	.byte	0x11
	.string	"cmp"
	.byte	0x1
	.byte	0x73
	.byte	0x7
	.4byte	0x38
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LVL7
	.byte	0x3
	.byte	0x91
	.byte	0x64
	.byte	0x6
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x26
	.byte	0
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x93,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x62
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7-1
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL9
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
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
.LASF14:
	.string	"lower"
.LASF18:
	.string	"size_t"
.LASF19:
	.string	"bsearch"
.LASF15:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF12:
	.string	"compar"
.LASF16:
	.string	"./components/libc/nuttx/libc/stdlib/lib_bsearch.c"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF17:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/components/libc"
.LASF10:
	.string	"base"
.LASF2:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF5:
	.string	"long int"
.LASF13:
	.string	"middle"
.LASF11:
	.string	"width"
.LASF7:
	.string	"long long int"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF3:
	.string	"short int"
.LASF0:
	.string	"unsigned int"
	.ident	"GCC: (GNU) 10.4.0"
