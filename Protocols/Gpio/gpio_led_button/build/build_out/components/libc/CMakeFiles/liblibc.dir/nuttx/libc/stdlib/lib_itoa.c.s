	.file	"lib_itoa.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.itoa.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"0123456789abcdefghijklmnopqrstuvwxyz"
	.section	.text.itoa,"ax",@progbits
	.align	1
	.globl	itoa
	.type	itoa, @function
itoa:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/stdlib/lib_itoa.c"
	.loc 1 53 1
	.cfi_startproc
.LVL0:
	.loc 1 54 3
	.loc 1 55 3
	.loc 1 53 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	a1,12(sp)
	sw	a2,8(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 53 1
	mv	s0,a0
	.loc 1 55 16
	call	abs
.LVL1:
	.loc 1 56 3 is_stmt 1
	.loc 1 57 3
	.loc 1 58 3
	.loc 1 59 3
	.loc 1 60 3
	.loc 1 62 3
	.loc 1 62 17 is_stmt 0
	lw	a2,8(sp)
	lw	a1,12(sp)
	.loc 1 62 6
	li	a4,34
	.loc 1 62 17
	addi	a3,a2,-2
	mv	a5,a1
	.loc 1 62 6
	bgtu	a3,a4,.L2
	.loc 1 68 26
	lui	a4,%hi(.LC0)
	addi	a4,a4,%lo(.LC0)
.LVL2:
.L3:
	.loc 1 64 7 is_stmt 1 discriminator 1
	.loc 1 66 11 discriminator 1
	.loc 1 66 17 is_stmt 0 discriminator 1
	rem	a6,a0,a2
.LVL3:
	.loc 1 67 11 is_stmt 1 discriminator 1
	mv	a3,a5
	.loc 1 67 18 is_stmt 0 discriminator 1
	div	a0,a0,a2
.LVL4:
	.loc 1 68 11 is_stmt 1 discriminator 1
	.loc 1 68 18 is_stmt 0 discriminator 1
	lrbu	a6,a6,a4,0
.LVL5:
	sbia	a6,(a5),1,0
.LVL6:
	.loc 1 70 13 is_stmt 1 discriminator 1
	.loc 1 70 7 is_stmt 0 discriminator 1
	bgt	a0,zero,.L3
	.loc 1 72 7 is_stmt 1
	.loc 1 72 10 is_stmt 0
	bge	s0,zero,.L4
	.loc 1 74 11 is_stmt 1
.LVL7:
	.loc 1 74 18 is_stmt 0
	li	a4,45
	sb	a4,0(a5)
	.loc 1 74 15
	addi	a5,a3,2
.LVL8:
.L4:
	.loc 1 77 7 is_stmt 1
	.loc 1 77 48 is_stmt 0
	li	a4,2
	.loc 1 77 25
	sub	a2,a5,a1
.LVL9:
	.loc 1 77 48
	div	a2,a2,a4
.LVL10:
	mv	a3,a5
	.loc 1 77 16
	li	a4,0
.LVL11:
.L5:
	.loc 1 77 38 is_stmt 1 discriminator 1
	.loc 1 77 7 is_stmt 0 discriminator 1
	addi	a3,a3,-1
	bgt	a2,a4,.L6
.LVL12:
.L2:
	.loc 1 85 3 is_stmt 1
	.loc 1 85 8 is_stmt 0
	sb	zero,0(a5)
	.loc 1 87 3 is_stmt 1
	.loc 1 88 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL13:
	mv	a0,a1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL14:
	jr	ra
.LVL15:
.L6:
	.cfi_restore_state
	.loc 1 79 11 is_stmt 1 discriminator 3
	.loc 1 80 35 is_stmt 0 discriminator 3
	lrbu	a6,a1,a4,0
	.loc 1 79 16 discriminator 3
	lbu	a0,0(a3)
.LVL16:
	.loc 1 80 11 is_stmt 1 discriminator 3
	.loc 1 80 30 is_stmt 0 discriminator 3
	sb	a6,0(a3)
	.loc 1 81 11 is_stmt 1 discriminator 3
	.loc 1 81 20 is_stmt 0 discriminator 3
	srb	a0,a1,a4,0
	.loc 1 77 53 is_stmt 1 discriminator 3
	.loc 1 77 56 is_stmt 0 discriminator 3
	addi	a4,a4,1
.LVL17:
	j	.L5
	.cfi_endproc
.LFE4:
	.size	itoa, .-itoa
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdlib.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x158
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
	.4byte	.LASF18
	.byte	0x2
	.byte	0xe3
	.byte	0x8
	.4byte	0x6b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x14f
	.byte	0x7
	.string	"val"
	.byte	0x1
	.byte	0x34
	.byte	0x11
	.4byte	0x2c
	.4byte	.LLST0
	.byte	0x7
	.string	"str"
	.byte	0x1
	.byte	0x34
	.byte	0x1c
	.4byte	0x6b
	.4byte	.LLST1
	.byte	0x8
	.4byte	.LASF10
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.4byte	0x2c
	.4byte	.LLST2
	.byte	0x9
	.4byte	.LASF11
	.byte	0x1
	.byte	0x36
	.byte	0x16
	.4byte	0x7d
	.byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.byte	0xa
	.4byte	.LASF12
	.byte	0x1
	.byte	0x37
	.byte	0x7
	.4byte	0x2c
	.4byte	.LLST3
	.byte	0xa
	.4byte	.LASF13
	.byte	0x1
	.byte	0x38
	.byte	0x7
	.4byte	0x2c
	.4byte	.LLST4
	.byte	0xb
	.string	"pos"
	.byte	0x1
	.byte	0x39
	.byte	0x7
	.4byte	0x2c
	.4byte	.LLST5
	.byte	0xb
	.string	"len"
	.byte	0x1
	.byte	0x3a
	.byte	0x7
	.4byte	0x2c
	.4byte	.LLST6
	.byte	0xb
	.string	"buf"
	.byte	0x1
	.byte	0x3b
	.byte	0x9
	.4byte	0x6b
	.4byte	.LLST7
	.byte	0x9
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3c
	.byte	0x8
	.4byte	0x71
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	.LVL1
	.4byte	0x14f
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.string	"abs"
	.string	"abs"
	.byte	0x2
	.byte	0x46
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
	.byte	0x2e
	.byte	0
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0x6e
	.byte	0x8
	.byte	0x3
	.byte	0x8
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
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1-1
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE4
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7b
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x3
	.byte	0x7d
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5f
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
	.string	"swap"
.LASF0:
	.string	"unsigned int"
.LASF15:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
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
.LASF5:
	.string	"long int"
.LASF11:
	.string	"digits"
.LASF12:
	.string	"intval"
.LASF4:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF13:
	.string	"digit"
.LASF3:
	.string	"short int"
.LASF16:
	.string	"./components/libc/nuttx/libc/stdlib/lib_itoa.c"
.LASF18:
	.string	"itoa"
.LASF9:
	.string	"char"
	.ident	"GCC: (GNU) 10.4.0"
