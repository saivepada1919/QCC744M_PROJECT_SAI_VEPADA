	.file	"lib_strcmp.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.strcmp,"ax",@progbits
	.align	1
	.globl	strcmp
	.type	strcmp, @function
strcmp:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/string/lib_strcmp.c"
	.loc 1 35 1
	.cfi_startproc
.LVL0:
	.loc 1 35 1 is_stmt 0
	li	a4,0
.LVL1:
.L3:
	.loc 1 36 3 is_stmt 1
	.loc 1 37 3
	.loc 1 39 7
	.loc 1 39 21 is_stmt 0
	lrbu	a3,a0,a4,0
.LVL2:
	.loc 1 39 25
	lrbu	a5,a1,a4,0
	sub	a5,a3,a5
	.loc 1 39 19
	ext	a5,a5,7,0
.LVL3:
	.loc 1 39 10
	bne	a5,zero,.L2
.LVL4:
	.loc 1 39 39 discriminator 1
	addi	a4,a4,1
.LVL5:
	bne	a3,zero,.L3
.LVL6:
.L2:
	.loc 1 43 3 is_stmt 1
	.loc 1 44 1 is_stmt 0
	mv	a0,a5
	ret
	.cfi_endproc
.LFE4:
	.size	strcmp, .-strcmp
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbd
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF10
	.byte	0xc
	.4byte	.LASF11
	.4byte	.LASF12
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
	.4byte	.LASF13
	.byte	0x2
	.byte	0x24
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0x7
	.string	"cs"
	.byte	0x1
	.byte	0x22
	.byte	0x19
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x7
	.string	"ct"
	.byte	0x1
	.byte	0x22
	.byte	0x29
	.4byte	0x77
	.4byte	.LLST1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x24
	.byte	0x18
	.4byte	0x33
	.byte	0x1
	.byte	0x5f
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
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7e
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
.LASF14:
	.string	"result"
.LASF5:
	.string	"long int"
.LASF13:
	.string	"strcmp"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF3:
	.string	"short int"
.LASF11:
	.string	"./components/libc/nuttx/libc/string/lib_strcmp.c"
	.ident	"GCC: (GNU) 10.4.0"
