	.file	"lib_strrchr.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.strrchr,"ax",@progbits
	.align	1
	.globl	strrchr
	.type	strrchr, @function
strrchr:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/string/lib_strrchr.c"
	.loc 1 38 1
	.cfi_startproc
.LVL0:
	.loc 1 39 3
	.loc 1 39 6 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 51 9
	li	a0,0
.LVL1:
	.loc 1 52 1
	ret
.LVL2:
.L2:
	.loc 1 38 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	sw	ra,12(sp)
	.cfi_offset 1, -4
	mv	s1,a1
.LBB2:
	.loc 1 41 7 is_stmt 1
	.loc 1 41 26 is_stmt 0
	call	strlen
.LVL3:
	.loc 1 41 19
	add	a0,s0,a0
.LVL4:
	.loc 1 42 7 is_stmt 1
.L4:
	.loc 1 42 14 discriminator 1
	.loc 1 42 7 is_stmt 0 discriminator 1
	bgeu	a0,s0,.L5
.LBE2:
	.loc 1 51 9
	li	a0,0
.LVL5:
.L1:
	.loc 1 52 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL6:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL7:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL8:
.L5:
	.cfi_restore_state
.LBB3:
	.loc 1 44 11 is_stmt 1
	.loc 1 44 15 is_stmt 0
	lbu	a5,0(a0)
	.loc 1 44 14
	beq	a5,s1,.L1
	.loc 1 42 22 is_stmt 1
	.loc 1 42 23 is_stmt 0
	addi	a0,a0,-1
.LVL9:
	j	.L4
.LBE3:
	.cfi_endproc
.LFE4:
	.size	strrchr, .-strrchr
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF10
	.byte	0xc
	.4byte	.LASF11
	.4byte	.LASF12
	.4byte	.Ldebug_ranges0+0x18
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
	.4byte	.LASF13
	.byte	0x2
	.byte	0x2e
	.byte	0x7
	.4byte	0x6b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xde
	.byte	0x7
	.string	"s"
	.byte	0x1
	.byte	0x25
	.byte	0x1d
	.4byte	0x7d
	.4byte	.LLST0
	.byte	0x7
	.string	"c"
	.byte	0x1
	.byte	0x25
	.byte	0x24
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0x8
	.4byte	.Ldebug_ranges0+0
	.byte	0x9
	.string	"p"
	.byte	0x1
	.byte	0x29
	.byte	0x13
	.4byte	0x7d
	.4byte	.LLST2
	.byte	0xa
	.4byte	.LVL3
	.4byte	0xde
	.byte	0xb
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF14
	.4byte	.LASF14
	.byte	0x2
	.byte	0x29
	.byte	0x8
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
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
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
.LASF10:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF12:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/components/libc"
.LASF2:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF5:
	.string	"long int"
.LASF13:
	.string	"strrchr"
.LASF11:
	.string	"./components/libc/nuttx/libc/string/lib_strrchr.c"
.LASF14:
	.string	"strlen"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF3:
	.string	"short int"
	.ident	"GCC: (GNU) 10.4.0"
