	.file	"bin_fmt_v1.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.core_bin_start_hook,"ax",@progbits
	.align	1
	.globl	core_bin_start_hook
	.type	core_bin_start_hook, @function
core_bin_start_hook:
.LFB0:
	.file 1 "./components/utils/coredump/bin_fmt_v1.c"
	.loc 1 17 1
	.cfi_startproc
.LVL0:
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 17 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	.loc 1 19 26
	lui	a1,%hi(.LANCHOR0)
.LVL1:
	.loc 1 17 1
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s1,a2
	mv	s2,a0
	.loc 1 19 26
	li	a2,12
.LVL2:
	addi	a1,a1,%lo(.LANCHOR0)
	addi	a0,sp,4
.LVL3:
	.loc 1 17 1
	sw	s0,56(sp)
	sw	s3,44(sp)
	sw	ra,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 18 9
	li	s0,0
	.loc 1 19 26
	call	memcpy
.LVL4:
	.loc 1 22 5 is_stmt 1
	.loc 1 24 5
.LBB2:
	.loc 1 24 10
	.loc 1 25 12 is_stmt 0
	li	s3,-3
.LVL5:
.L2:
	.loc 1 24 21 is_stmt 1 discriminator 1
	.loc 1 24 40 is_stmt 0 discriminator 1
	lw	a5,0(s1)
	.loc 1 25 9 is_stmt 1 discriminator 1
	.loc 1 31 34 is_stmt 0 discriminator 1
	lw	a0,0(s2)
	.loc 1 25 12 discriminator 1
	addi	a4,a5,-1
	bleu	a4,s3,.L4
.LBE2:
	.loc 1 34 5 is_stmt 1
	.loc 1 35 9 is_stmt 0
	li	a2,12
	addi	a1,sp,4
	.loc 1 34 26
	sw	s0,12(sp)
	.loc 1 35 5 is_stmt 1
	.loc 1 35 9 is_stmt 0
	call	coredump_xip_flash_write
.LVL6:
	.loc 1 35 7
	bne	a0,zero,.L1
	.loc 1 36 9 is_stmt 1
	.loc 1 36 14 is_stmt 0
	lw	a5,0(s2)
	.loc 1 36 42
	slli	s0,s0,4
.LVL7:
	.loc 1 36 14
	addi	a5,a5,12
	add	s0,a5,s0
	sw	s0,0(s2)
.L1:
	.loc 1 37 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
.LVL8:
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL9:
.L4:
	.cfi_restore_state
.LBB3:
	.loc 1 27 9 is_stmt 1
	.loc 1 27 32 is_stmt 0
	lw	a4,4(s1)
	.loc 1 27 12
	beq	a4,zero,.L3
	.loc 1 29 9 is_stmt 1
	.loc 1 29 25 is_stmt 0
	sw	a5,16(sp)
	.loc 1 31 9
	addi	a0,a0,12
	.loc 1 31 65
	slli	a5,s0,4
	.loc 1 31 9
	li	a2,16
	addi	a1,sp,16
	add	a0,a5,a0
	.loc 1 29 25
	sw	zero,20(sp)
	.loc 1 30 9 is_stmt 1
	.loc 1 30 27 is_stmt 0
	sw	a4,24(sp)
	sw	zero,28(sp)
	.loc 1 31 9 is_stmt 1
	.loc 1 32 16 is_stmt 0
	addi	s0,s0,1
.LVL10:
	.loc 1 31 9
	call	coredump_xip_flash_write
.LVL11:
	.loc 1 32 9 is_stmt 1
.L3:
	.loc 1 24 62 discriminator 2
	addi	s1,s1,8
	j	.L2
.LBE3:
	.cfi_endproc
.LFE0:
	.size	core_bin_start_hook, .-core_bin_start_hook
	.section	.text.core_bin_sections_hook,"ax",@progbits
	.align	1
	.globl	core_bin_sections_hook
	.type	core_bin_sections_hook, @function
core_bin_sections_hook:
.LFB1:
	.loc 1 40 1
	.cfi_startproc
.LVL12:
	.loc 1 41 5
	.loc 1 40 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 41 9
	lw	a0,0(a0)
.LVL13:
	.loc 1 40 1
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 40 1
	mv	s1,a2
	.loc 1 41 9
	call	coredump_xip_flash_write
.LVL14:
	.loc 1 41 7
	bne	a0,zero,.L10
	.loc 1 42 9 is_stmt 1
	.loc 1 42 14 is_stmt 0
	lw	a5,0(s0)
	add	a5,a5,s1
	sw	a5,0(s0)
.L10:
	.loc 1 43 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL15:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL16:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1:
	.size	core_bin_sections_hook, .-core_bin_sections_hook
	.section	.text.core_bin_end_hook,"ax",@progbits
	.align	1
	.globl	core_bin_end_hook
	.type	core_bin_end_hook, @function
core_bin_end_hook:
.LFB2:
	.loc 1 46 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 47 5
	.loc 1 46 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 47 13
	li	a5,1145262080
	addi	a5,a5,-1214
	.loc 1 49 5
	addi	a1,sp,12
	li	a2,4
	.loc 1 46 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 47 13
	sw	a5,12(sp)
	.loc 1 49 5 is_stmt 1
	call	coredump_xip_flash_write
.LVL18:
	.loc 1 50 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE2:
	.size	core_bin_end_hook, .-core_bin_end_hook
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.ascii	"\377\377\377\377"
	.word	1
	.word	-1
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./components/utils/coredump/coredump.h"
	.file 6 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x303
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x38
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7a
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x94
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x6e
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x88
	.byte	0x5
	.4byte	.LASF17
	.byte	0x8
	.byte	0x5
	.byte	0x6
	.byte	0x8
	.4byte	0xe7
	.byte	0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x7
	.byte	0xe
	.4byte	0xa7
	.byte	0
	.byte	0x7
	.string	"len"
	.byte	0x5
	.byte	0x8
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0
	.byte	0x5
	.4byte	.LASF18
	.byte	0xc
	.byte	0x1
	.byte	0x5
	.byte	0x8
	.4byte	0x11c
	.byte	0x6
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6
	.byte	0xd
	.4byte	0x11c
	.byte	0
	.byte	0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0x6
	.4byte	.LASF21
	.byte	0x1
	.byte	0x8
	.byte	0xe
	.4byte	0xa7
	.byte	0x8
	.byte	0
	.byte	0x8
	.4byte	0x9b
	.4byte	0x12c
	.byte	0x9
	.4byte	0x38
	.byte	0x3
	.byte	0
	.byte	0x5
	.4byte	.LASF22
	.byte	0x10
	.byte	0x1
	.byte	0xb
	.byte	0x8
	.4byte	0x154
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0xc
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0x6
	.4byte	.LASF23
	.byte	0x1
	.byte	0xd
	.byte	0xe
	.4byte	0xb3
	.byte	0x8
	.byte	0
	.byte	0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2d
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a6
	.byte	0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2d
	.byte	0x21
	.4byte	0xa7
	.4byte	.LLST8
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2f
	.byte	0xd
	.4byte	0x11c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xd
	.4byte	.LVL18
	.4byte	0x2ef
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	.LASF25
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x204
	.byte	0xf
	.string	"lma"
	.byte	0x1
	.byte	0x27
	.byte	0x27
	.4byte	0x204
	.4byte	.LLST5
	.byte	0xb
	.4byte	.LASF27
	.byte	0x1
	.byte	0x27
	.byte	0x35
	.4byte	0x20a
	.4byte	.LLST6
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x27
	.byte	0x45
	.4byte	0x2c
	.4byte	.LLST7
	.byte	0xd
	.4byte	.LVL14
	.4byte	0x2ef
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xa7
	.byte	0x10
	.byte	0x4
	.4byte	0x9b
	.byte	0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e9
	.byte	0xf
	.string	"lma"
	.byte	0x1
	.byte	0x10
	.byte	0x24
	.4byte	0x204
	.4byte	.LLST0
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x10
	.byte	0x30
	.4byte	0x2c
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0x10
	.byte	0x4a
	.4byte	0x2e9
	.4byte	.LLST2
	.byte	0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.4byte	0x25
	.4byte	.LLST3
	.byte	0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x13
	.byte	0x1a
	.4byte	0xe7
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x16
	.byte	0x1c
	.4byte	0x12c
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x12
	.4byte	.Ldebug_ranges0+0
	.4byte	0x2b1
	.byte	0x13
	.string	"i"
	.byte	0x1
	.byte	0x18
	.byte	0xe
	.4byte	0x25
	.4byte	.LLST4
	.byte	0xd
	.4byte	.LVL11
	.4byte	0x2ef
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL4
	.4byte	0x2fb
	.4byte	0x2d3
	.byte	0xe
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0xd
	.4byte	.LVL6
	.4byte	0x2ef
	.byte	0xe
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0xe
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xbf
	.byte	0x15
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0x15
	.byte	0x5
	.byte	0x16
	.4byte	.LASF37
	.4byte	.LASF38
	.byte	0x6
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
	.byte	0x8
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
	.byte	0x5
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18-1
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL15
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14-1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL16
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE0
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
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF3:
	.string	"__uint8_t"
.LASF2:
	.string	"size_t"
.LASF21:
	.string	"segment_count"
.LASF32:
	.string	"seg_desc"
.LASF18:
	.string	"binfmt_header"
.LASF15:
	.string	"uint64_t"
.LASF24:
	.string	"core_bin_end_hook"
.LASF26:
	.string	"header_lma"
.LASF36:
	.string	"coredump_xip_flash_write"
.LASF16:
	.string	"addr"
.LASF29:
	.string	"dump_sections"
.LASF4:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF17:
	.string	"dump_section"
.LASF25:
	.string	"core_bin_sections_hook"
.LASF28:
	.string	"core_bin_start_hook"
.LASF8:
	.string	"__uint32_t"
.LASF20:
	.string	"version"
.LASF0:
	.string	"unsigned int"
.LASF12:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF38:
	.string	"__builtin_memcpy"
.LASF31:
	.string	"header"
.LASF10:
	.string	"long long int"
.LASF22:
	.string	"binfmt_seg_desc"
.LASF37:
	.string	"memcpy"
.LASF30:
	.string	"seg_cnt"
.LASF35:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/components/utils"
.LASF5:
	.string	"short int"
.LASF11:
	.string	"__uint64_t"
.LASF27:
	.string	"lma_xip"
.LASF14:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF19:
	.string	"magic"
.LASF23:
	.string	"length"
.LASF34:
	.string	"./components/utils/coredump/bin_fmt_v1.c"
	.ident	"GCC: (GNU) 10.4.0"
