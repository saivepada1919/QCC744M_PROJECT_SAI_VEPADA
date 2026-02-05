	.file	"lib_memccpy.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.memccpy,"ax",@progbits
	.align	1
	.globl	memccpy
	.type	memccpy, @function
memccpy:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/string/lib_memccpy.c"
	.loc 1 50 1
	.cfi_startproc
.LVL0:
	.loc 1 51 3
	.loc 1 52 3
	.loc 1 56 3
	.loc 1 56 9 is_stmt 0
	li	a5,0
	.loc 1 64 10
	andi	a2,a2,0xff
.LVL1:
.L2:
	.loc 1 56 9 is_stmt 1
	bne	a3,a5,.L4
	.loc 1 74 9 is_stmt 0
	li	a0,0
.LVL2:
	j	.L1
.LVL3:
.L4:
	.loc 1 60 7 is_stmt 1
	.loc 1 60 15 is_stmt 0
	lrbu	a4,a1,a5,0
	.loc 1 64 10
	addi	a5,a5,1
.LVL4:
	.loc 1 60 13
	sbia	a4,(a0),1,0
.LVL5:
	.loc 1 64 7 is_stmt 1
	.loc 1 64 10 is_stmt 0
	bne	a4,a2,.L2
.LVL6:
.L1:
	.loc 1 75 1
	ret
	.cfi_endproc
.LFE4:
	.size	memccpy, .-memccpy
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xf9
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
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0x46
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0x6
	.byte	0x4
	.4byte	0x8c
	.byte	0x7
	.byte	0x8
	.4byte	.LASF15
	.byte	0x3
	.byte	0x43
	.byte	0x8
	.4byte	0x77
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0x9
	.string	"s1"
	.byte	0x1
	.byte	0x31
	.byte	0x17
	.4byte	0x77
	.4byte	.LLST0
	.byte	0xa
	.string	"s2"
	.byte	0x1
	.byte	0x31
	.byte	0x27
	.4byte	0x86
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.string	"c"
	.byte	0x1
	.byte	0x31
	.byte	0x2f
	.4byte	0x38
	.4byte	.LLST1
	.byte	0x9
	.string	"n"
	.byte	0x1
	.byte	0x31
	.byte	0x39
	.4byte	0x25
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF10
	.byte	0x1
	.byte	0x33
	.byte	0x12
	.4byte	0x79
	.4byte	.LLST3
	.byte	0xc
	.string	"pin"
	.byte	0x1
	.byte	0x34
	.byte	0x12
	.4byte	0x79
	.4byte	.LLST4
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xc
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
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
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x20
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
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
.LASF12:
	.string	"./components/libc/nuttx/libc/string/lib_memccpy.c"
.LASF14:
	.string	"size_t"
.LASF13:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/components/libc"
.LASF11:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF2:
	.string	"unsigned char"
.LASF9:
	.string	"char"
.LASF5:
	.string	"long int"
.LASF10:
	.string	"pout"
.LASF15:
	.string	"memccpy"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF3:
	.string	"short int"
.LASF0:
	.string	"unsigned int"
	.ident	"GCC: (GNU) 10.4.0"
