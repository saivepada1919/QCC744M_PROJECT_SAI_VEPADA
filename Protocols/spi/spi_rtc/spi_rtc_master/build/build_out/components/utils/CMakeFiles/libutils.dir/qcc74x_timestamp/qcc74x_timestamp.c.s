	.file	"qcc74x_timestamp.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.check_leap_year,"ax",@progbits
	.align	1
	.type	check_leap_year, @function
check_leap_year:
.LFB0:
	.file 1 "./components/utils/qcc74x_timestamp/qcc74x_timestamp.c"
	.loc 1 18 1
	.cfi_startproc
.LVL0:
	.loc 1 19 5
	.loc 1 19 8 is_stmt 0
	andi	a4,a0,3
	.loc 1 18 1
	mv	a5,a0
	.loc 1 19 8
	bne	a4,zero,.L3
.LVL1:
.LBB4:
.LBB5:
	.loc 1 22 9 is_stmt 1
	.loc 1 22 12 is_stmt 0
	li	a4,100
	remu	a4,a0,a4
	.loc 1 25 20
	li	a0,1
.LVL2:
	.loc 1 22 12
	bne	a4,zero,.L2
	.loc 1 22 31
	li	a0,400
	remu	a5,a5,a0
.LBE5:
.LBE4:
	.loc 1 20 16
	seqz	a0,a5
.LBB7:
.LBB6:
	ret
.LVL3:
.L3:
.LBE6:
.LBE7:
	li	a0,0
.LVL4:
.L2:
	.loc 1 28 1
	ret
	.cfi_endproc
.LFE0:
	.size	check_leap_year, .-check_leap_year
	.section	.text.qcc74x_timestamp_utc2time,"ax",@progbits
	.align	1
	.globl	qcc74x_timestamp_utc2time
	.type	qcc74x_timestamp_utc2time, @function
qcc74x_timestamp_utc2time:
.LFB2:
	.loc 1 59 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 69 5
	.loc 1 70 5
	.loc 1 72 5
	.loc 1 74 5
	.loc 1 76 5
	.loc 1 78 5
	.loc 1 78 19 is_stmt 0
	li	a5,86016
	.loc 1 59 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 78 19
	addi	a5,a5,384
	.loc 1 59 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 78 19
	divu	s0,a0,a5
.LVL6:
	.loc 1 79 5 is_stmt 1
	.loc 1 59 1 is_stmt 0
	sw	s2,0(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 59 1
	mv	s2,a1
	.loc 1 79 21
	remu	a0,a0,a5
.LVL7:
	.loc 1 81 5 is_stmt 1
	.loc 1 81 34 is_stmt 0
	li	a5,4096
	addi	a5,a5,-496
	divu	a4,a0,a5
	.loc 1 82 34
	remu	a0,a0,a5
.LVL8:
	.loc 1 82 47
	li	a5,60
	.loc 1 81 16
	andi	a4,a4,0xff
	.loc 1 82 5 is_stmt 1
	.loc 1 82 47 is_stmt 0
	divu	a3,a0,a5
	.loc 1 83 47
	remu	a0,a0,a5
	.loc 1 85 16
	addi	a5,a4,8
	.loc 1 82 15
	sb	a3,1(a1)
	.loc 1 83 5 is_stmt 1
	.loc 1 85 16 is_stmt 0
	andi	a5,a5,0xff
	.loc 1 87 8
	li	a3,23
	.loc 1 83 15
	sb	a0,0(a1)
	.loc 1 85 5 is_stmt 1
	.loc 1 87 5
	.loc 1 87 8 is_stmt 0
	bgtu	a5,a3,.L6
	.loc 1 85 16
	sb	a5,2(a1)
.L7:
	.loc 1 92 5 is_stmt 1
	.loc 1 92 40 is_stmt 0
	li	a5,1461
	divu	a0,s0,a5
	.loc 1 93 16
	remu	s0,s0,a5
.LVL9:
	.loc 1 92 23
	slli	a0,a0,2
	addi	a0,a0,1970
	extu	a0,a0,15,0
	.loc 1 92 16
	sh	a0,6(s2)
	.loc 1 93 5 is_stmt 1
.LVL10:
	.loc 1 95 5
.L20:
	.loc 1 99 9
	.loc 1 99 21 is_stmt 0
	call	check_leap_year
.LVL11:
	.loc 1 99 19
	snez	a5,a0
	addi	a5,a5,365
.LVL12:
	.loc 1 96 11 is_stmt 1
	.loc 1 97 13 is_stmt 0
	lhu	s1,6(s2)
	.loc 1 96 11
	bgeu	s0,a5,.L11
	.loc 1 102 5 is_stmt 1
	.loc 1 102 9 is_stmt 0
	mv	a0,s1
	call	check_leap_year
.LVL13:
	.loc 1 102 54
	bne	a0,zero,.L18
	lui	a3,%hi(.LANCHOR1)
	addi	a3,a3,%lo(.LANCHOR1)
.L12:
.LVL14:
	.loc 1 103 5 is_stmt 1 discriminator 4
	.loc 1 103 15 is_stmt 0 discriminator 4
	addi	s0,s0,1
.LVL15:
	extu	a5,s0,15,0
.LVL16:
	.loc 1 104 5 is_stmt 1 discriminator 4
	.loc 1 104 15 is_stmt 0 discriminator 4
	sb	zero,4(s2)
	.loc 1 105 5 is_stmt 1 discriminator 4
.L13:
	.loc 1 105 11
	.loc 1 105 35 is_stmt 0
	lbu	a4,4(s2)
	.loc 1 105 25
	lrbu	a2,a3,a4,0
	.loc 1 107 18
	addi	a4,a4,1
	andi	a4,a4,0xff
	.loc 1 105 11
	bltu	a2,a5,.L14
	.loc 1 110 5 is_stmt 1
	.loc 1 110 14 is_stmt 0
	sb	a4,4(s2)
	.loc 1 111 5 is_stmt 1
	.loc 1 111 16 is_stmt 0
	sb	a5,3(s2)
	.loc 1 113 5 is_stmt 1
	.loc 1 116 5
.LVL17:
.LBB10:
.LBB11:
	.loc 1 37 5
	.loc 1 39 5
	.loc 1 43 18 is_stmt 0
	addi	a2,a4,-1
	.loc 1 43 8
	li	a3,1
.LVL18:
	.loc 1 39 7
	mv	a0,s1
.LVL19:
	.loc 1 40 5 is_stmt 1
	.loc 1 41 5
	.loc 1 43 5
	.loc 1 43 8 is_stmt 0
	bgtu	a2,a3,.L15
.LVL20:
	.loc 1 44 9 is_stmt 1
	.loc 1 44 11 is_stmt 0
	addi	a4,a4,12
.LVL21:
	.loc 1 45 9 is_stmt 1
	.loc 1 45 10 is_stmt 0
	addi	a0,s1,-1
.LVL22:
.L15:
	.loc 1 48 5 is_stmt 1
	.loc 1 50 5
	.loc 1 48 70 is_stmt 0
	addi	a5,a5,1
.LVL23:
	extu	a5,a5,15,0
	add	a5,a5,a0
	.loc 1 48 46
	srli	a3,a0,2
	.loc 1 48 70
	addsl	a5, a5, a4, 1
	add	a5,a5,a3
	.loc 1 48 64
	li	a3,400
	divu	a3,a0,a3
	.loc 1 48 24
	addi	a4,a4,1
.LVL24:
.LBE11:
.LBE10:
	.loc 1 117 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
.LBB13:
.LBB12:
	.loc 1 48 70
	add	a5,a5,a3
	.loc 1 48 54
	li	a3,100
	divu	a0,a0,a3
.LVL25:
	.loc 1 48 24
	li	a3,3
	mul	a4,a4,a3
.LVL26:
	.loc 1 48 34
	li	a3,5
	.loc 1 48 70
	sub	a5,a5,a0
	.loc 1 48 34
	divu	a4,a4,a3
	.loc 1 48 70
	add	a5,a5,a4
	.loc 1 48 7
	li	a4,7
	remu	a5,a5,a4
	.loc 1 50 18
	sb	a5,8(s2)
.LVL27:
.LBE12:
.LBE13:
	.loc 1 117 1
	lw	s2,0(sp)
	.cfi_restore 18
.LVL28:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL29:
.L6:
	.cfi_restore_state
	.loc 1 88 9 is_stmt 1
	.loc 1 88 20 is_stmt 0
	addi	a4,a4,-16
	sb	a4,2(a1)
	.loc 1 89 9 is_stmt 1
	.loc 1 89 22 is_stmt 0
	addi	s0,s0,1
.LVL30:
	j	.L7
.LVL31:
.L11:
	.loc 1 97 9 is_stmt 1
	.loc 1 97 19 is_stmt 0
	addi	a0,s1,1
	extu	a0,a0,15,0
	.loc 1 98 20
	sub	s0,s0,a5
.LVL32:
	.loc 1 97 19
	sh	a0,6(s2)
	.loc 1 98 9 is_stmt 1
	.loc 1 98 20 is_stmt 0
	extu	s0,s0,15,0
	j	.L20
.LVL33:
.L18:
	.loc 1 102 54
	lui	a3,%hi(.LANCHOR0)
	addi	a3,a3,%lo(.LANCHOR0)
	j	.L12
.LVL34:
.L14:
	.loc 1 106 9 is_stmt 1
	.loc 1 106 20 is_stmt 0
	sub	a5,a5,a2
.LVL35:
	extu	a5,a5,15,0
.LVL36:
	.loc 1 107 9 is_stmt 1
	.loc 1 107 18 is_stmt 0
	sb	a4,4(s2)
	j	.L13
	.cfi_endproc
.LFE2:
	.size	qcc74x_timestamp_utc2time, .-qcc74x_timestamp_utc2time
	.section	.rodata.leap_month_day,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	leap_month_day, @object
	.size	leap_month_day, 12
leap_month_day:
	.ascii	"\037\035\037\036\037\036\037\037\036\037\036\037"
	.section	.rodata.month_day,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	month_day, @object
	.size	month_day, 12
month_day:
	.ascii	"\037\034\037\036\037\036\037\037\036\037\036\037"
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./components/utils/qcc74x_timestamp/qcc74x_timestamp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2eb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x59
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x5
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x67
	.byte	0x6
	.byte	0xa
	.byte	0x4
	.byte	0x6
	.byte	0x9
	.4byte	0x11d
	.byte	0x7
	.string	"sec"
	.byte	0x4
	.byte	0x8
	.byte	0xd
	.4byte	0x8f
	.byte	0
	.byte	0x7
	.string	"min"
	.byte	0x4
	.byte	0x9
	.byte	0xd
	.4byte	0x8f
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa
	.byte	0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0x8
	.4byte	.LASF16
	.byte	0x4
	.byte	0xb
	.byte	0xd
	.4byte	0x8f
	.byte	0x3
	.byte	0x7
	.string	"mon"
	.byte	0x4
	.byte	0xc
	.byte	0xd
	.4byte	0x8f
	.byte	0x4
	.byte	0x8
	.4byte	.LASF17
	.byte	0x4
	.byte	0xd
	.byte	0xe
	.4byte	0xa0
	.byte	0x6
	.byte	0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0xe
	.byte	0xd
	.4byte	0x8f
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xf
	.byte	0x3
	.4byte	0xb8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.byte	0x9
	.4byte	0x9b
	.4byte	0x140
	.byte	0xa
	.4byte	0x25
	.byte	0xb
	.byte	0
	.byte	0x5
	.4byte	0x130
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4
	.byte	0x16
	.4byte	0x140
	.byte	0x5
	.byte	0x3
	.4byte	month_day
	.byte	0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x8
	.byte	0x16
	.4byte	0x140
	.byte	0x5
	.byte	0x3
	.4byte	leap_month_day
	.byte	0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x24f
	.byte	0xd
	.string	"utc"
	.byte	0x1
	.byte	0x3a
	.byte	0x29
	.4byte	0xac
	.4byte	.LLST2
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3a
	.byte	0x42
	.4byte	0x24f
	.4byte	.LLST3
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.byte	0x45
	.byte	0xe
	.4byte	0xac
	.4byte	.LLST4
	.byte	0xf
	.4byte	.LASF25
	.byte	0x1
	.byte	0x46
	.byte	0xe
	.4byte	0xac
	.4byte	.LLST5
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x48
	.byte	0xe
	.4byte	0xa0
	.4byte	.LLST6
	.byte	0xf
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4a
	.byte	0xe
	.4byte	0xa0
	.4byte	.LLST7
	.byte	0x10
	.string	"p"
	.byte	0x1
	.byte	0x4c
	.byte	0x14
	.4byte	0x255
	.4byte	.LLST8
	.byte	0x11
	.4byte	0x25b
	.4byte	.LBB10
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x74
	.byte	0x5
	.4byte	0x235
	.byte	0x12
	.4byte	0x268
	.4byte	.LLST9
	.byte	0x13
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x14
	.4byte	0x274
	.4byte	.LLST10
	.byte	0x14
	.4byte	0x27e
	.4byte	.LLST11
	.byte	0x14
	.4byte	0x288
	.4byte	.LLST12
	.byte	0x14
	.4byte	0x292
	.4byte	.LLST13
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL11
	.4byte	0x29d
	.byte	0x16
	.4byte	.LVL13
	.4byte	0x29d
	.byte	0x17
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x4
	.4byte	0x11d
	.byte	0x18
	.byte	0x4
	.4byte	0x9b
	.byte	0x19
	.4byte	.LASF32
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.byte	0x1
	.4byte	0x29d
	.byte	0x1a
	.4byte	.LASF23
	.byte	0x1
	.byte	0x23
	.byte	0x2d
	.4byte	0x24f
	.byte	0x1b
	.string	"y"
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0xac
	.byte	0x1b
	.string	"m"
	.byte	0x1
	.byte	0x25
	.byte	0x11
	.4byte	0xac
	.byte	0x1b
	.string	"d"
	.byte	0x1
	.byte	0x25
	.byte	0x14
	.4byte	0xac
	.byte	0x1b
	.string	"w"
	.byte	0x1
	.byte	0x25
	.byte	0x17
	.4byte	0xac
	.byte	0
	.byte	0x1c
	.4byte	.LASF33
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.4byte	0x8f
	.byte	0x1
	.4byte	0x2bb
	.byte	0x1a
	.4byte	.LASF17
	.byte	0x1
	.byte	0x11
	.byte	0x29
	.4byte	0xa0
	.byte	0
	.byte	0x1d
	.4byte	0x29d
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.byte	0x12
	.4byte	0x2ae
	.4byte	.LLST0
	.byte	0x1e
	.4byte	0x29d
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x11
	.byte	0x10
	.byte	0x12
	.4byte	0x2ae
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
	.byte	0x13
	.byte	0x1
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
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE2
	.2byte	0xa
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.4byte	0x15180
	.byte	0x1d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL36
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL5
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL29
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL17
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3c
	.byte	0x7e
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x8
	.byte	0x64
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x1c
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0xa
	.2byte	0x190
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x22
	.byte	0x7e
	.byte	0x1
	.byte	0x33
	.byte	0x1e
	.byte	0xf7
	.byte	0x25
	.byte	0x35
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x22
	.byte	0x7a
	.byte	0
	.byte	0x32
	.byte	0x25
	.byte	0x22
	.byte	0x7f
	.byte	0x1
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x22
	.byte	0x7a
	.byte	0
	.byte	0x22
	.byte	0x37
	.byte	0x1d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
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
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF4:
	.string	"__uint8_t"
.LASF25:
	.string	"current_sec_num"
.LASF17:
	.string	"year"
.LASF29:
	.string	"./components/utils/qcc74x_timestamp/qcc74x_timestamp.c"
.LASF24:
	.string	"total_day_num"
.LASF2:
	.string	"unsigned char"
.LASF31:
	.string	"qcc74x_timestamp_utc2time"
.LASF9:
	.string	"long unsigned int"
.LASF6:
	.string	"short unsigned int"
.LASF16:
	.string	"mday"
.LASF23:
	.string	"time"
.LASF5:
	.string	"__uint16_t"
.LASF8:
	.string	"__uint32_t"
.LASF30:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/utils"
.LASF33:
	.string	"check_leap_year"
.LASF0:
	.string	"unsigned int"
.LASF22:
	.string	"leap_month_day"
.LASF11:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF15:
	.string	"hour"
.LASF18:
	.string	"wday"
.LASF21:
	.string	"month_day"
.LASF32:
	.string	"cal_weekday"
.LASF10:
	.string	"long long int"
.LASF20:
	.string	"char"
.LASF26:
	.string	"remain_day"
.LASF3:
	.string	"short int"
.LASF13:
	.string	"uint16_t"
.LASF14:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF1:
	.string	"signed char"
.LASF27:
	.string	"temp_year"
.LASF19:
	.string	"qcc74x_timestamp_t"
	.ident	"GCC: (GNU) 10.4.0"
