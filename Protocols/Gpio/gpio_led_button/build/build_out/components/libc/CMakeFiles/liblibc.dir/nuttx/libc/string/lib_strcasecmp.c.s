	.file	"lib_strcasecmp.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.strcasecmp,"ax",@progbits
	.align	1
	.globl	strcasecmp
	.type	strcasecmp, @function
strcasecmp:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/string/lib_strcasecmp.c"
	.loc 1 36 1
	.cfi_startproc
.LVL0:
.LBB2:
	.loc 1 40 58 is_stmt 0
	lui	a2,%hi(_ctype_+1)
.LBE2:
	.loc 1 36 1
	mv	t3,a0
	li	a3,0
.LBB3:
	.loc 1 40 58
	addi	a2,a2,%lo(_ctype_+1)
	.loc 1 40 110
	li	t1,2
.LVL1:
.L5:
.LBE3:
	.loc 1 37 3 is_stmt 1
	.loc 1 38 3
	.loc 1 40 7
.LBB4:
	.loc 1 40 42
	.loc 1 40 27 is_stmt 0
	lrbu	a4,t3,a3,0
.LVL2:
	.loc 1 40 28 is_stmt 1
	.loc 1 40 110 is_stmt 0
	lrbu	a5,a4,a2,0
	.loc 1 40 88
	mv	a6,a4
	.loc 1 40 110
	andi	a5,a5,3
	bne	a5,t1,.L2
	.loc 1 40 110 discriminator 1
	addi	a6,a4,-32
.L2:
.LBE4:
.LBB5:
	.loc 1 40 62 is_stmt 1 discriminator 4
	.loc 1 40 47 is_stmt 0 discriminator 4
	lrbu	a5,a1,a3,0
	.loc 1 40 48 is_stmt 1 discriminator 4
	.loc 1 40 130 is_stmt 0 discriminator 4
	lrbu	a7,a2,a5,0
	andi	a7,a7,3
	bne	a7,t1,.L3
	.loc 1 40 130 discriminator 5
	addi	a5,a5,-32
.L3:
.LBE5:
	.loc 1 40 19 discriminator 8
	sub	a0,a6,a5
.LVL3:
	.loc 1 40 10 discriminator 8
	bne	a6,a5,.L1
	.loc 1 40 64 discriminator 9
	addi	a3,a3,1
.LVL4:
	bne	a4,zero,.L5
.LVL5:
.L1:
	.loc 1 50 1
	ret
	.cfi_endproc
.LFE4:
	.size	strcasecmp, .-strcasecmp
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/ctype.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/strings.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x107
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF11
	.byte	0xc
	.4byte	.LASF12
	.4byte	.LASF13
	.4byte	.Ldebug_ranges0+0x20
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
	.4byte	0x72
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x4
	.4byte	0x7d
	.byte	0x8
	.4byte	.LASF14
	.byte	0x2
	.byte	0xae
	.byte	0x13
	.4byte	0x88
	.byte	0x9
	.4byte	.LASF15
	.byte	0x3
	.byte	0x43
	.byte	0x5
	.4byte	0x2c
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.string	"cs"
	.byte	0x1
	.byte	0x23
	.byte	0x1d
	.4byte	0x77
	.4byte	.LLST0
	.byte	0xa
	.string	"ct"
	.byte	0x1
	.byte	0x23
	.byte	0x2d
	.4byte	0x77
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF10
	.byte	0x1
	.byte	0x25
	.byte	0x7
	.4byte	0x2c
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.Ldebug_ranges0+0
	.4byte	0xf3
	.byte	0xd
	.string	"__x"
	.byte	0x1
	.byte	0x28
	.byte	0x1b
	.4byte	0x72
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0xe
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.byte	0xf
	.string	"__x"
	.byte	0x1
	.byte	0x28
	.byte	0x2f
	.4byte	0x72
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x21
	.byte	0
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0x17
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x8c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
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
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
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
.LASF2:
	.string	"unsigned char"
.LASF15:
	.string	"strcasecmp"
.LASF11:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF13:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/components/libc"
.LASF12:
	.string	"./components/libc/nuttx/libc/string/lib_strcasecmp.c"
.LASF9:
	.string	"char"
.LASF10:
	.string	"result"
.LASF5:
	.string	"long int"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF14:
	.string	"_ctype_"
.LASF3:
	.string	"short int"
	.ident	"GCC: (GNU) 10.4.0"
