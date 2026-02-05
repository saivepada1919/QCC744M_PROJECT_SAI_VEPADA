	.file	"utils_hex.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.char2hex,"ax",@progbits
	.align	1
	.type	char2hex, @function
char2hex:
.LFB1:
	.file 1 "./components/utils/math/src/utils_hex.c"
	.loc 1 18 1
	.cfi_startproc
.LVL0:
	.loc 1 19 2
	.loc 1 19 15 is_stmt 0
	addi	a4,a0,-48
	andi	a4,a4,0xff
	.loc 1 19 5
	li	a3,9
	.loc 1 18 1
	mv	a5,a0
	.loc 1 19 5
	bgtu	a4,a3,.L2
	.loc 1 20 3 is_stmt 1
	.loc 1 20 6 is_stmt 0
	sb	a4,0(a1)
.LVL1:
.L6:
.LBB4:
.LBB5:
	.loc 1 29 9
	li	a0,0
.L1:
.LBE5:
.LBE4:
	.loc 1 30 1
	ret
.LVL2:
.L2:
	.loc 1 21 9 is_stmt 1
	.loc 1 21 22 is_stmt 0
	addi	a4,a0,-97
	.loc 1 21 12
	andi	a4,a4,0xff
	li	a3,5
	bgtu	a4,a3,.L4
	.loc 1 22 3 is_stmt 1
	.loc 1 22 16 is_stmt 0
	addi	a5,a0,-87
.LVL3:
.L7:
.LBB7:
.LBB6:
	.loc 1 24 6
	sb	a5,0(a1)
	j	.L6
.LVL4:
.L4:
	.loc 1 23 9 is_stmt 1
	.loc 1 23 22 is_stmt 0
	addi	a4,a0,-65
	.loc 1 23 12
	andi	a4,a4,0xff
	.loc 1 26 10
	li	a0,-1
.LVL5:
	.loc 1 23 12
	bgtu	a4,a3,.L1
	.loc 1 24 3 is_stmt 1
	.loc 1 24 16 is_stmt 0
	addi	a5,a5,-55
	j	.L7
.LBE6:
.LBE7:
	.cfi_endproc
.LFE1:
	.size	char2hex, .-char2hex
	.section	.text.utils_bin2hex,"ax",@progbits
	.align	1
	.globl	utils_bin2hex
	.type	utils_bin2hex, @function
utils_bin2hex:
.LFB2:
	.loc 1 33 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 34 5
	.loc 1 36 5
.LBB10:
.LBB11:
	.loc 1 12 27 is_stmt 0
	lui	a4,%hi(.LANCHOR0)
.LBE11:
.LBE10:
	.loc 1 36 11
	li	a5,0
.LBB14:
.LBB12:
	.loc 1 12 27
	addi	a4,a4,%lo(.LANCHOR0)
	.loc 1 13 12
	addi	a6,a0,1
.LVL7:
.L9:
.LBE12:
.LBE14:
	.loc 1 36 11 is_stmt 1
	bne	a2,a5,.L10
	.loc 1 40 5
	.loc 1 41 1 is_stmt 0
	addsl	a0, a0, a2, 1
.LVL8:
	ret
.LVL9:
.L10:
	.loc 1 37 9 is_stmt 1
	.loc 1 37 15 is_stmt 0
	lrbu	a3,a1,a5,0
.LVL10:
.LBB15:
.LBB13:
	.loc 1 12 5 is_stmt 1
	.loc 1 12 44 is_stmt 0
	srli	a7,a3,4
	.loc 1 12 12
	lrbu	a7,a4,a7,0
	.loc 1 13 36
	andi	a3,a3,15
.LVL11:
	.loc 1 13 12
	lrbu	a3,a4,a3,0
	.loc 1 12 12
	srb	a7,a0,a5,1
.LVL12:
	.loc 1 13 5 is_stmt 1
	.loc 1 13 12 is_stmt 0
	srb	a3,a6,a5,1
	.loc 1 14 5 is_stmt 1
.LVL13:
	addi	a5,a5,1
.LVL14:
	j	.L9
.LBE13:
.LBE15:
	.cfi_endproc
.LFE2:
	.size	utils_bin2hex, .-utils_bin2hex
	.section	.text.utils_hex2bin,"ax",@progbits
	.align	1
	.globl	utils_hex2bin
	.type	utils_hex2bin, @function
utils_hex2bin:
.LFB3:
	.loc 1 44 1
	.cfi_startproc
.LVL15:
	.loc 1 45 2
	.loc 1 47 2
	.loc 1 44 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s4,24(sp)
	.cfi_offset 20, -24
	.loc 1 47 22
	srli	s4,a1,1
	.loc 1 47 35
	andi	a1,a1,1
.LVL16:
	.loc 1 44 1
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.loc 1 47 26
	add	s3,s4,a1
	.loc 1 47 5
	bleu	s3,a3,.L12
.LVL17:
.L15:
	.loc 1 48 10
	li	s3,0
.L11:
	.loc 1 75 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	mv	a0,s3
	lw	s3,28(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL18:
.L12:
	.cfi_restore_state
	mv	s1,a0
	mv	s2,a2
	.loc 1 52 2 is_stmt 1
	.loc 1 52 5 is_stmt 0
	beq	a1,zero,.L14
.LVL19:
	.loc 1 53 3 is_stmt 1
	.loc 1 53 7 is_stmt 0
	lbu	a0,0(a0)
	addi	a1,sp,15
	call	char2hex
.LVL20:
	.loc 1 53 6
	blt	a0,zero,.L15
	.loc 1 56 3 is_stmt 1
	.loc 1 56 10 is_stmt 0
	lbu	a5,15(sp)
	.loc 1 57 6
	addi	s1,s1,1
.LVL21:
	.loc 1 56 10
	sbia	a5,(s2),1,0
.LVL22:
	.loc 1 57 3 is_stmt 1
	.loc 1 58 3
.L14:
	.loc 1 62 2
.LBB16:
	.loc 1 62 7
	.loc 1 62 14 is_stmt 0
	li	s0,0
	.loc 1 68 7
	addi	s5,s1,1
.LVL23:
.L16:
	.loc 1 62 21 is_stmt 1 discriminator 1
	.loc 1 62 2 is_stmt 0 discriminator 1
	beq	s4,s0,.L11
	.loc 1 63 3 is_stmt 1
	.loc 1 63 7 is_stmt 0
	lrbu	a0,s1,s0,1
	addi	a1,sp,15
	call	char2hex
.LVL24:
	.loc 1 63 6
	blt	a0,zero,.L15
	.loc 1 66 3 is_stmt 1
	.loc 1 66 16 is_stmt 0
	lbu	a5,15(sp)
	.loc 1 68 7
	addi	a1,sp,15
	.loc 1 66 16
	slli	a5,a5,4
	.loc 1 66 10
	srb	a5,s2,s0,0
	.loc 1 68 3 is_stmt 1
	.loc 1 68 7 is_stmt 0
	lrbu	a0,s5,s0,1
	call	char2hex
.LVL25:
	.loc 1 68 6
	blt	a0,zero,.L15
	.loc 1 71 3 is_stmt 1 discriminator 2
	.loc 1 71 10 is_stmt 0 discriminator 2
	lrbu	a5,s2,s0,0
	lbu	a4,15(sp)
	add	a5,a5,a4
	srb	a5,s2,s0,0
	.loc 1 62 37 is_stmt 1 discriminator 2
	.loc 1 62 38 is_stmt 0 discriminator 2
	addi	s0,s0,1
.LVL26:
	j	.L16
.LBE16:
	.cfi_endproc
.LFE3:
	.size	utils_hex2bin, .-utils_hex2bin
	.globl	hex_asc_upper
	.globl	hex_asc
	.section	.rodata.hex_asc,"a"
	.align	2
	.type	hex_asc, @object
	.size	hex_asc, 17
hex_asc:
	.string	"0123456789abcdef"
	.section	.rodata.hex_asc_upper,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	hex_asc_upper, @object
	.size	hex_asc_upper, 17
hex_asc_upper:
	.string	"0123456789ABCDEF"
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2bc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF24
	.byte	0xc
	.4byte	.LASF25
	.4byte	.LASF26
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x4
	.4byte	0x38
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x75
	.byte	0x6
	.4byte	0xb0
	.4byte	0xa4
	.byte	0x7
	.4byte	0x75
	.byte	0x10
	.byte	0
	.byte	0x4
	.4byte	0x94
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x4
	.4byte	0xa9
	.byte	0x8
	.4byte	.LASF13
	.byte	0x1
	.byte	0x5
	.byte	0xc
	.4byte	0xa4
	.byte	0x5
	.byte	0x3
	.4byte	hex_asc
	.byte	0x8
	.4byte	.LASF14
	.byte	0x1
	.byte	0x6
	.byte	0xc
	.4byte	0xa4
	.byte	0x5
	.byte	0x3
	.4byte	hex_asc_upper
	.byte	0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2b
	.byte	0x8
	.4byte	0x88
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x193
	.byte	0xa
	.string	"hex"
	.byte	0x1
	.byte	0x2b
	.byte	0x22
	.4byte	0x193
	.4byte	.LLST7
	.byte	0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x2b
	.byte	0x2e
	.4byte	0x88
	.4byte	.LLST8
	.byte	0xa
	.string	"buf"
	.byte	0x1
	.byte	0x2b
	.byte	0x3f
	.4byte	0x199
	.4byte	.LLST9
	.byte	0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x2b
	.byte	0x4b
	.4byte	0x88
	.4byte	.LLST10
	.byte	0xc
	.string	"dec"
	.byte	0x1
	.byte	0x2d
	.byte	0xa
	.4byte	0x7c
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0xd
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.4byte	0x182
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x3e
	.byte	0xe
	.4byte	0x88
	.4byte	.LLST11
	.byte	0xf
	.4byte	.LVL24
	.4byte	0x22e
	.4byte	0x171
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0
	.byte	0x11
	.4byte	.LVL25
	.4byte	0x22e
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL20
	.4byte	0x22e
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x4
	.4byte	0xb0
	.byte	0x12
	.byte	0x4
	.4byte	0x7c
	.byte	0x9
	.4byte	.LASF18
	.byte	0x1
	.byte	0x20
	.byte	0x7
	.4byte	0x21b
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x21b
	.byte	0xa
	.string	"dst"
	.byte	0x1
	.byte	0x20
	.byte	0x1b
	.4byte	0x21b
	.4byte	.LLST2
	.byte	0x13
	.string	"src"
	.byte	0x1
	.byte	0x20
	.byte	0x2c
	.4byte	0x221
	.byte	0x1
	.byte	0x5b
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x20
	.byte	0x38
	.4byte	0x88
	.4byte	.LLST3
	.byte	0x14
	.4byte	.LASF20
	.byte	0x1
	.byte	0x22
	.byte	0x1a
	.4byte	0x228
	.4byte	.LLST4
	.byte	0x15
	.4byte	0x254
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x25
	.byte	0xf
	.byte	0x16
	.4byte	0x271
	.4byte	.LLST5
	.byte	0x16
	.4byte	0x265
	.4byte	.LLST6
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x4
	.4byte	0xa9
	.byte	0x12
	.byte	0x4
	.4byte	0x227
	.byte	0x17
	.byte	0x12
	.byte	0x4
	.4byte	0x3f
	.byte	0x18
	.4byte	.LASF21
	.byte	0x1
	.byte	0x11
	.byte	0xc
	.4byte	0x6e
	.byte	0x1
	.4byte	0x254
	.byte	0x19
	.string	"c"
	.byte	0x1
	.byte	0x11
	.byte	0x1a
	.4byte	0xa9
	.byte	0x19
	.string	"x"
	.byte	0x1
	.byte	0x11
	.byte	0x26
	.4byte	0x199
	.byte	0
	.byte	0x18
	.4byte	.LASF22
	.byte	0x1
	.byte	0xa
	.byte	0x15
	.4byte	0x21b
	.byte	0x3
	.4byte	0x27e
	.byte	0x19
	.string	"buf"
	.byte	0x1
	.byte	0xa
	.byte	0x29
	.4byte	0x21b
	.byte	0x1a
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa
	.byte	0x36
	.4byte	0x7c
	.byte	0
	.byte	0x1b
	.4byte	0x22e
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.byte	0x16
	.4byte	0x23f
	.4byte	.LLST0
	.byte	0x1c
	.4byte	0x249
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.4byte	0x22e
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x11
	.byte	0xc
	.byte	0x1c
	.4byte	0x249
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.4byte	0x23f
	.4byte	.LLST1
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
	.byte	0x4
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x1
	.byte	0x13
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x52
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x58
	.byte	0xb
	.byte	0x59
	.byte	0xb
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x2e
	.byte	0x1
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20-1
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL20-1
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x80
	.byte	0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL13
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0xa
	.byte	0x7f
	.byte	0x7f
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7
	.4byte	.LVL14
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x20
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL14
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LFE2
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x5
	.byte	0x7b
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x2
	.byte	0x9f
	.4byte	0
	.4byte	0
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF9:
	.string	"__uint8_t"
.LASF11:
	.string	"size_t"
.LASF21:
	.string	"char2hex"
.LASF23:
	.string	"byte"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF20:
	.string	"_src"
.LASF26:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/utils"
.LASF18:
	.string	"utils_bin2hex"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF10:
	.string	"uint8_t"
.LASF15:
	.string	"hexlen"
.LASF14:
	.string	"hex_asc_upper"
.LASF17:
	.string	"utils_hex2bin"
.LASF6:
	.string	"long long int"
.LASF12:
	.string	"char"
.LASF19:
	.string	"count"
.LASF2:
	.string	"short int"
.LASF13:
	.string	"hex_asc"
.LASF16:
	.string	"buflen"
.LASF4:
	.string	"long int"
.LASF25:
	.string	"./components/utils/math/src/utils_hex.c"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"hex_byte_pack"
	.ident	"GCC: (GNU) 10.4.0"
