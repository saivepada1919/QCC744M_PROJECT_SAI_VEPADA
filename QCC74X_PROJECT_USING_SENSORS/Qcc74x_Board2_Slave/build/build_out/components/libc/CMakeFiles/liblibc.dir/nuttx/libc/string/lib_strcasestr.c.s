	.file	"lib_strcasestr.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.strcasestr,"ax",@progbits
	.align	1
	.globl	strcasestr
	.type	strcasestr, @function
strcasestr:
.LFB5:
	.file 1 "./components/libc/nuttx/libc/string/lib_strcasestr.c"
	.loc 1 59 1
	.cfi_startproc
.LVL0:
	.loc 1 60 3
	.loc 1 61 3
	.loc 1 62 3
	.loc 1 66 3
	.loc 1 59 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 66 9
	mv	a0,a1
.LVL1:
	.loc 1 59 1
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	mv	s2,a1
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 66 9
	call	strlen
.LVL2:
	.loc 1 67 3 is_stmt 1
	.loc 1 67 6 is_stmt 0
	lbu	a5,0(s2)
.LVL3:
	.loc 1 69 3 is_stmt 1
	.loc 1 69 6 is_stmt 0
	beq	a5,zero,.L13
.LBB6:
	.loc 1 81 47
	lui	a3,%hi(_ctype_+1)
	addi	a4,a3,%lo(_ctype_+1)
	.loc 1 81 99
	lrbu	a4,a4,a5,0
	li	a2,2
	mv	s3,a0
.LBE6:
	.loc 1 80 3 is_stmt 1
.LVL4:
	.loc 1 81 3
.LBB7:
	.loc 1 81 31
	.loc 1 81 17
	.loc 1 81 99 is_stmt 0
	andi	a4,a4,3
	addi	s4,a3,%lo(_ctype_+1)
	bne	a4,a2,.L3
	.loc 1 81 99 discriminator 1
	addi	a5,a5,-32
.LVL5:
.L3:
	andi	s1,a5,255
.LBE7:
.LBB8:
.LBB9:
.LBB10:
	.loc 1 44 99 discriminator 4
	li	s5,2
.LVL6:
.L9:
.LBE10:
.LBE9:
.LBE8:
	.loc 1 83 3 is_stmt 1
	.loc 1 89 7
.LBB14:
.LBB12:
	.loc 1 37 3
	.loc 1 39 3
	.loc 1 39 6 is_stmt 0
	bne	s0,zero,.L4
.LVL7:
.L8:
.LBE12:
.LBE14:
	.loc 1 97 17
	li	s0,0
.LVL8:
.L13:
	.loc 1 123 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL9:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL10:
.L7:
	.cfi_restore_state
.LBB15:
.LBB13:
	.loc 1 43 11 is_stmt 1
	.loc 1 44 11
.LBB11:
	.loc 1 44 31
	.loc 1 44 17
	.loc 1 44 99 is_stmt 0
	lrbu	a4,s4,a5,0
	andi	a4,a4,3
	bne	a4,s5,.L5
	addi	a5,a5,-32
.LVL11:
.L5:
.LBE11:
	.loc 1 44 14
	beq	s1,a5,.L6
	.loc 1 41 18 is_stmt 1
	.loc 1 41 19 is_stmt 0
	addi	s0,s0,1
.LVL12:
.L4:
	.loc 1 41 14 is_stmt 1
	lbu	a5,0(s0)
	.loc 1 41 7 is_stmt 0
	bne	a5,zero,.L7
	j	.L8
.L6:
.LVL13:
.LBE13:
.LBE15:
	.loc 1 90 7 is_stmt 1
	.loc 1 90 25 is_stmt 0
	mv	a0,s0
	call	strlen
.LVL14:
	.loc 1 90 22
	bltu	a0,s3,.L8
	.loc 1 104 7 is_stmt 1
	.loc 1 104 11 is_stmt 0
	mv	a2,s3
	mv	a1,s2
	mv	a0,s0
	call	strncasecmp
.LVL15:
	.loc 1 104 10
	beq	a0,zero,.L13
	.loc 1 115 7 is_stmt 1
	.loc 1 115 16 is_stmt 0
	addi	s0,s0,1
.LVL16:
	.loc 1 83 10 is_stmt 1
	.loc 1 89 17 is_stmt 0
	j	.L9
	.cfi_endproc
.LFE5:
	.size	strcasestr, .-strcasestr
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/strings.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/ctype.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x211
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF14
	.byte	0xc
	.4byte	.LASF15
	.4byte	.LASF16
	.4byte	.Ldebug_ranges0+0x50
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF17
	.byte	0x4
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
	.4byte	0x84
	.4byte	0x9a
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0x8f
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0xae
	.byte	0x13
	.4byte	0x9a
	.byte	0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x3a
	.byte	0x8
	.4byte	0x77
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1bc
	.byte	0xb
	.string	"str"
	.byte	0x1
	.byte	0x3a
	.byte	0x20
	.4byte	0x89
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LASF10
	.byte	0x1
	.byte	0x3a
	.byte	0x31
	.4byte	0x89
	.4byte	.LLST1
	.byte	0xd
	.4byte	.LASF11
	.byte	0x1
	.byte	0x3c
	.byte	0xf
	.4byte	0x89
	.4byte	.LLST2
	.byte	0xe
	.string	"ch"
	.byte	0x1
	.byte	0x3d
	.byte	0x8
	.4byte	0x7d
	.4byte	.LLST3
	.byte	0xe
	.string	"len"
	.byte	0x1
	.byte	0x3e
	.byte	0xa
	.4byte	0x25
	.4byte	.LLST4
	.byte	0xf
	.4byte	.Ldebug_ranges0+0
	.4byte	0x12e
	.byte	0xe
	.string	"__x"
	.byte	0x1
	.byte	0x51
	.byte	0x10
	.4byte	0x7d
	.4byte	.LLST5
	.byte	0
	.byte	0x10
	.4byte	0x1bc
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x59
	.byte	0x13
	.4byte	0x177
	.byte	0x11
	.4byte	0x1d7
	.4byte	.LLST6
	.byte	0x11
	.4byte	0x1cd
	.4byte	.LLST7
	.byte	0x12
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x13
	.4byte	0x1e2
	.4byte	.LLST8
	.byte	0x14
	.4byte	0x1ed
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x13
	.4byte	0x1ee
	.4byte	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL2
	.4byte	0x1fc
	.4byte	0x18b
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL14
	.4byte	0x1fc
	.4byte	0x19f
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL15
	.4byte	0x208
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF20
	.byte	0x1
	.byte	0x23
	.byte	0xe
	.4byte	0x77
	.byte	0x1
	.4byte	0x1fc
	.byte	0x19
	.string	"s"
	.byte	0x1
	.byte	0x23
	.byte	0x26
	.4byte	0x89
	.byte	0x19
	.string	"uc"
	.byte	0x1
	.byte	0x23
	.byte	0x2d
	.4byte	0x38
	.byte	0x1a
	.string	"ch"
	.byte	0x1
	.byte	0x25
	.byte	0x11
	.4byte	0x7d
	.byte	0x1b
	.byte	0x1a
	.string	"__x"
	.byte	0x1
	.byte	0x2c
	.byte	0x10
	.4byte	0x7d
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF12
	.4byte	.LASF12
	.byte	0x2
	.byte	0x29
	.byte	0x8
	.byte	0x1c
	.4byte	.LASF13
	.4byte	.LASF13
	.byte	0x3
	.byte	0x44
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x21
	.byte	0
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1c
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
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LFE5
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
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL10
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x82
	.byte	0
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL11
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF7:
	.string	"long long int"
.LASF4:
	.string	"short unsigned int"
.LASF17:
	.string	"size_t"
.LASF16:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/components/libc"
.LASF14:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF13:
	.string	"strncasecmp"
.LASF6:
	.string	"long unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF10:
	.string	"substr"
.LASF19:
	.string	"strcasestr"
.LASF15:
	.string	"./components/libc/nuttx/libc/string/lib_strcasestr.c"
.LASF2:
	.string	"unsigned char"
.LASF5:
	.string	"long int"
.LASF3:
	.string	"short int"
.LASF12:
	.string	"strlen"
.LASF20:
	.string	"strcasechr"
.LASF1:
	.string	"signed char"
.LASF18:
	.string	"_ctype_"
.LASF11:
	.string	"candidate"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"char"
	.ident	"GCC: (GNU) 10.4.0"
