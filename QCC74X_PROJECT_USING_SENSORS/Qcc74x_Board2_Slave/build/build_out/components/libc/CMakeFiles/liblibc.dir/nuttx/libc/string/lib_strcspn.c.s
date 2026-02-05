	.file	"lib_strcspn.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.strcspn,"ax",@progbits
	.align	1
	.globl	strcspn
	.type	strcspn, @function
strcspn:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/string/lib_strcspn.c"
	.loc 1 43 1
	.cfi_startproc
.LVL0:
	.loc 1 44 3
	.loc 1 45 3
	.loc 1 43 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 43 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 45 10
	li	s0,0
.LVL1:
.L2:
	.loc 1 45 15 is_stmt 1 discriminator 1
	.loc 1 45 16 is_stmt 0 discriminator 1
	lrbu	a1,s2,s0,0
	.loc 1 45 3 discriminator 1
	beq	a1,zero,.L1
	.loc 1 45 23 discriminator 3
	mv	a0,s1
	call	strchr
.LVL2:
	.loc 1 45 20 discriminator 3
	beq	a0,zero,.L4
.L1:
	.loc 1 47 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL3:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL4:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL5:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL6:
.L4:
	.cfi_restore_state
	.loc 1 45 56 is_stmt 1 discriminator 4
	.loc 1 45 52 discriminator 4
	.loc 1 45 53 is_stmt 0 discriminator 4
	addi	s0,s0,1
.LVL7:
	j	.L2
	.cfi_endproc
.LFE4:
	.size	strcspn, .-strcspn
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF11
	.byte	0xc
	.4byte	.LASF12
	.4byte	.LASF13
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF14
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
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x5
	.4byte	0x77
	.byte	0x6
	.byte	0x4
	.4byte	0x7e
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x27
	.byte	0x8
	.4byte	0x25
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xe0
	.byte	0x8
	.string	"s"
	.byte	0x1
	.byte	0x2a
	.byte	0x1c
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x9
	.4byte	.LASF10
	.byte	0x1
	.byte	0x2a
	.byte	0x2b
	.4byte	0x83
	.4byte	.LLST1
	.byte	0xa
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.byte	0xa
	.4byte	0x25
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LVL2
	.4byte	0xe0
	.byte	0xc
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF16
	.4byte	.LASF16
	.byte	0x3
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
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
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
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
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
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
.LASF14:
	.string	"size_t"
.LASF16:
	.string	"strchr"
.LASF13:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/components/libc"
.LASF11:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"reject"
.LASF2:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF12:
	.string	"./components/libc/nuttx/libc/string/lib_strcspn.c"
.LASF5:
	.string	"long int"
.LASF15:
	.string	"strcspn"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF3:
	.string	"short int"
.LASF0:
	.string	"unsigned int"
	.ident	"GCC: (GNU) 10.4.0"
