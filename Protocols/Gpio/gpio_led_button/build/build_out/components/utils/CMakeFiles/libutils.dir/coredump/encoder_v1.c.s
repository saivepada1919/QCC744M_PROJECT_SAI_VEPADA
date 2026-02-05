	.file	"encoder_v1.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.cd_base64_write_block.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\r\n"
	.section	.text.cd_base64_write_block,"ax",@progbits
	.align	1
	.type	cd_base64_write_block, @function
cd_base64_write_block:
.LFB4:
	.file 1 "./components/utils/coredump/encoder_v1.c"
	.loc 1 28 71
	.cfi_startproc
.LVL0:
	.loc 1 29 5
	.loc 1 28 71 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 28 71
	mv	s0,a0
	.loc 1 30 5
	lbu	a0,0(a0)
.LVL1:
	.loc 1 28 71
	mv	s1,a1
.LVL2:
	.loc 1 30 5 is_stmt 1
	call	putchar
.LVL3:
	.loc 1 31 5
	lbu	a0,1(s0)
	call	putchar
.LVL4:
	.loc 1 32 5
	lbu	a0,2(s0)
	call	putchar
.LVL5:
	.loc 1 33 5
	lbu	a0,3(s0)
	call	putchar
.LVL6:
	.loc 1 34 5
	.loc 1 34 9 is_stmt 0
	lw	a5,0(s1)
	.loc 1 34 8
	li	a4,25
	.loc 1 34 9
	addi	a5,a5,1
	.loc 1 34 8
	sw	a5,0(s1)
	ble	a5,a4,.L1
	.loc 1 35 9 is_stmt 1
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	puts
.LVL7:
	.loc 1 36 9
	.loc 1 36 20 is_stmt 0
	sw	zero,0(s1)
.L1:
	.loc 1 38 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL8:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL9:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE4:
	.size	cd_base64_write_block, .-cd_base64_write_block
	.section	.text.read_word_cb,"ax",@progbits
	.align	1
	.type	read_word_cb, @function
read_word_cb:
.LFB5:
	.loc 1 52 54 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 53 5
	.loc 1 54 5
	.loc 1 56 5
	.loc 1 56 12 is_stmt 0
	lw	a4,8(a1)
	.loc 1 56 8
	lw	a5,12(a1)
	bgeu	a4,a5,.L7
	.loc 1 57 9 is_stmt 1
	.loc 1 58 12 is_stmt 0
	lw	a3,4(a1)
	.loc 1 52 54
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 57 14
	andi	a5,a4,-4
.LVL11:
	.loc 1 58 9 is_stmt 1
	.loc 1 58 12 is_stmt 0
	beq	a3,a5,.L6
	.loc 1 59 13 is_stmt 1
	.loc 1 59 28 is_stmt 0
	sw	a5,4(a1)
	.loc 1 60 13 is_stmt 1
	.loc 1 60 37 is_stmt 0
	lw	a5,0(a5)
.LVL12:
	.loc 1 60 35
	sw	a5,16(a1)
.LVL13:
.L6:
	.loc 1 63 41
	andi	a4,a4,3
.LVL14:
	.loc 1 63 25
	add	a4,a1,a4
	lbu	a4,16(a4)
	mv	a5,a1
	.loc 1 63 9 is_stmt 1
	.loc 1 63 15 is_stmt 0
	sb	a4,0(a0)
.LVL15:
	.loc 1 64 9 is_stmt 1
	.loc 1 64 23 is_stmt 0
	lw	a4,8(a1)
	addi	a4,a4,1
	sw	a4,8(a1)
	.loc 1 67 9 is_stmt 1
	lbu	a1,0(a0)
.LVL16:
	lw	a0,20(a5)
.LVL17:
	call	utils_crc32_stream_feed
.LVL18:
	.loc 1 69 9
	.loc 1 73 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 69 16
	li	a0,0
	.loc 1 73 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL19:
.L7:
	.loc 1 71 16
	li	a0,1
.LVL20:
	.loc 1 73 1
	ret
	.cfi_endproc
.LFE5:
	.size	read_word_cb, .-read_word_cb
	.section	.rodata.coredump_print.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"\r\n-+-+-+- QCC74x COREDUMP v0.0.1 +-+-+-+\r\n"
	.align	2
.LC2:
	.string	"\r\n------ DATA BEGIN "
	.align	2
.LC3:
	.string	" ------\r\n"
	.align	2
.LC4:
	.string	"\r\n------ END "
	.section	.text.coredump_print,"ax",@progbits
	.align	1
	.globl	coredump_print
	.type	coredump_print, @function
coredump_print:
.LFB7:
	.loc 1 88 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 89 5
	.loc 1 90 5
	.loc 1 88 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s1,68(sp)
	.cfi_offset 9, -12
	.loc 1 90 14
	lui	s1,%hi(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR0)
	.loc 1 90 8
	lw	a5,0(s1)
	.loc 1 88 1
	sw	s0,72(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	ra,76(sp)
	sw	s5,52(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 21, -28
	.loc 1 88 1
	mv	s2,a0
	mv	s3,a1
	mv	s0,a2
	mv	s4,a3
	.loc 1 90 8
	bne	a5,zero,.L13
	.loc 1 91 9 is_stmt 1
	lui	a0,%hi(.LC1)
.LVL22:
	addi	a0,a0,%lo(.LC1)
	call	puts
.LVL23:
	.loc 1 92 9
	.loc 1 92 14 is_stmt 0
	li	a5,1
	sw	a5,0(s1)
.L13:
	.loc 1 94 5 is_stmt 1
	.loc 1 95 5
	.loc 1 97 5
	.loc 1 98 5
	.loc 1 101 5 is_stmt 0
	lui	a0,%hi(.LC2)
	rev	s2, s2
.LVL24:
	addi	a0,a0,%lo(.LC2)
	.loc 1 98 10
	sw	zero,16(sp)
	sw	zero,20(sp)
	.loc 1 101 5 is_stmt 1
	call	puts
.LVL25:
	.loc 1 104 5
	.loc 1 104 9 is_stmt 0
	sw	s2,12(sp)
	.loc 1 105 5 is_stmt 1
	addi	s2,sp,12
	li	a2,4
	mv	a1,s2
	addi	a0,sp,16
	call	utils_bin2hex
.LVL26:
	.loc 1 106 5
.LBB8:
	.loc 1 106 9
	.loc 1 106 18
	.loc 1 106 13 is_stmt 0
	li	s1,0
	.loc 1 106 5
	li	s5,8
.LVL27:
.L14:
	.loc 1 107 9 is_stmt 1 discriminator 3
	addi	a5,sp,16
	lrbu	a0,a5,s1,0
	.loc 1 106 41 is_stmt 0 discriminator 3
	addi	s1,s1,1
.LVL28:
	.loc 1 107 9 discriminator 3
	call	putchar
.LVL29:
	.loc 1 106 40 is_stmt 1 discriminator 3
	.loc 1 106 18 discriminator 3
	.loc 1 106 5 is_stmt 0 discriminator 3
	bne	s1,s5,.L14
.LBE8:
	.loc 1 109 5 is_stmt 1
	li	a0,64
	call	putchar
.LVL30:
	.loc 1 111 5
	rev	a5, s0
	.loc 1 112 5 is_stmt 0
	li	a2,4
	mv	a1,s2
	addi	a0,sp,16
	.loc 1 111 9
	sw	a5,12(sp)
	.loc 1 112 5 is_stmt 1
.LBB9:
	.loc 1 113 13 is_stmt 0
	li	s1,0
.LVL31:
.LBE9:
	.loc 1 112 5
	call	utils_bin2hex
.LVL32:
	.loc 1 113 5 is_stmt 1
.LBB10:
	.loc 1 113 9
	.loc 1 113 18
	.loc 1 113 5 is_stmt 0
	li	s5,8
.LVL33:
.L15:
	.loc 1 114 9 is_stmt 1 discriminator 3
	addi	a5,sp,16
	lrbu	a0,a5,s1,0
	.loc 1 113 41 is_stmt 0 discriminator 3
	addi	s1,s1,1
.LVL34:
	.loc 1 114 9 discriminator 3
	call	putchar
.LVL35:
	.loc 1 113 40 is_stmt 1 discriminator 3
	.loc 1 113 18 discriminator 3
	.loc 1 113 5 is_stmt 0 discriminator 3
	bne	s1,s5,.L15
.LBE10:
	.loc 1 116 5 is_stmt 1
	.loc 1 116 8 is_stmt 0
	beq	s4,zero,.L16
	.loc 1 117 9 is_stmt 1
	li	a0,64
	call	putchar
.LVL36:
	.loc 1 118 9
	mv	a0,s4
	call	puts
.LVL37:
.L16:
	.loc 1 121 5
	lui	s1,%hi(.LC3)
.LVL38:
	addi	a0,s1,%lo(.LC3)
	call	puts
.LVL39:
	.loc 1 124 5
	addi	a0,sp,4
	call	utils_crc32_stream_init
.LVL40:
	.loc 1 127 5
.LBB11:
.LBB12:
	.loc 1 76 5
	.loc 1 78 44 is_stmt 0
	andi	a5,s3,-4
	.loc 1 78 19
	sw	a5,28(sp)
	.loc 1 80 34
	add	s0,s0,a5
.LVL41:
	.loc 1 81 26
	lw	a5,0(a5)
	.loc 1 79 19
	sw	s3,32(sp)
	.loc 1 80 18
	sw	s0,36(sp)
	.loc 1 84 5
	lui	s3,%hi(cd_base64_write_block)
.LVL42:
	lui	s0,%hi(read_word_cb)
	addi	a2,sp,24
	addi	a1,s3,%lo(cd_base64_write_block)
	.loc 1 81 26
	sw	a5,40(sp)
	.loc 1 84 5
	addi	a0,s0,%lo(read_word_cb)
	.loc 1 82 17
	addi	a5,sp,4
.LVL43:
	sw	a5,44(sp)
	.loc 1 76 28
	sw	zero,24(sp)
	.loc 1 78 5 is_stmt 1
	.loc 1 79 5
	.loc 1 80 5
	.loc 1 81 5
	.loc 1 82 5
	.loc 1 84 5
	call	utils_base64_encode_stream
.LVL44:
.LBE12:
.LBE11:
	.loc 1 130 5
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	puts
.LVL45:
	.loc 1 132 5
	.loc 1 132 11 is_stmt 0
	addi	a0,sp,4
	call	utils_crc32_stream_results
.LVL46:
.LBB13:
.LBB14:
	.loc 1 78 19
	addi	a5,sp,8
.LBE14:
.LBE13:
	.loc 1 132 9
	sw	a0,8(sp)
	.loc 1 134 5 is_stmt 1
.LVL47:
.LBB16:
.LBB15:
	.loc 1 76 5
	.loc 1 78 19 is_stmt 0
	sw	a5,28(sp)
	.loc 1 79 19
	sw	a5,32(sp)
	.loc 1 81 26
	sw	a0,40(sp)
	.loc 1 82 17
	addi	a5,sp,4
.LVL48:
	.loc 1 84 5
	addi	a2,sp,24
	addi	a1,s3,%lo(cd_base64_write_block)
	addi	a0,s0,%lo(read_word_cb)
	.loc 1 80 18
	sw	s2,36(sp)
	.loc 1 82 17
	sw	a5,44(sp)
	.loc 1 76 28
	sw	zero,24(sp)
	.loc 1 78 5 is_stmt 1
	.loc 1 79 5
	.loc 1 80 5
	.loc 1 81 5
	.loc 1 82 5
	.loc 1 84 5
	call	utils_base64_encode_stream
.LVL49:
.LBE15:
.LBE16:
	.loc 1 136 5
	addi	a0,s1,%lo(.LC3)
	call	puts
.LVL50:
	.loc 1 137 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
.LVL51:
	lw	s5,52(sp)
	.cfi_restore 21
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	coredump_print, .-coredump_print
	.section	.bss.init.0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	init.0, @object
	.size	init.0, 4
init.0:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 6 "./components/libc/./sys/types.h"
	.file 7 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 8 "./components/utils/math/include/utils_base64.h"
	.file 9 "./components/utils/math/include/utils_hex.h"
	.file 10 "./components/utils/math/include/utils_crc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x5da
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF39
	.byte	0xc
	.4byte	.LASF40
	.4byte	.LASF41
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
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
	.byte	0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7a
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe8
	.byte	0x16
	.4byte	0x31
	.byte	0x2
	.4byte	.LASF13
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x38
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0x6
	.4byte	0xa9
	.byte	0x7
	.byte	0x4
	.4byte	0xb0
	.byte	0x8
	.4byte	0xa9
	.4byte	0xcb
	.byte	0x9
	.4byte	0x31
	.byte	0x7
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xd1
	.byte	0xa
	.byte	0x2
	.4byte	.LASF15
	.byte	0x5
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x6
	.4byte	0xd2
	.byte	0x2
	.4byte	.LASF16
	.byte	0x5
	.byte	0x30
	.byte	0x14
	.4byte	0x6e
	.byte	0x2
	.4byte	.LASF17
	.byte	0x5
	.byte	0x52
	.byte	0x15
	.4byte	0x8f
	.byte	0x2
	.4byte	.LASF18
	.byte	0x6
	.byte	0xb8
	.byte	0x12
	.4byte	0x9b
	.byte	0xb
	.4byte	.LASF42
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x8
	.4byte	0x122
	.byte	0xc
	.string	"crc"
	.byte	0xa
	.byte	0x7
	.byte	0xe
	.4byte	0xe3
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF43
	.byte	0x18
	.byte	0x4
	.byte	0x1
	.byte	0x28
	.byte	0x8
	.4byte	0x180
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2a
	.byte	0x9
	.4byte	0x38
	.byte	0
	.byte	0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x2d
	.byte	0xf
	.4byte	0xef
	.byte	0x4
	.byte	0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x2e
	.byte	0xf
	.4byte	0xef
	.byte	0x8
	.byte	0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x2f
	.byte	0xf
	.4byte	0xef
	.byte	0xc
	.byte	0xf
	.string	"buf"
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0x180
	.byte	0x4
	.byte	0x10
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x31
	.byte	0x1e
	.4byte	0x190
	.byte	0x14
	.byte	0
	.byte	0x8
	.4byte	0xd2
	.4byte	0x190
	.byte	0x9
	.4byte	0x31
	.byte	0x3
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x107
	.byte	0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0x57
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x451
	.byte	0x11
	.4byte	.LASF24
	.byte	0x1
	.byte	0x57
	.byte	0x1f
	.4byte	0xef
	.4byte	.LLST7
	.byte	0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x57
	.byte	0x2f
	.4byte	0xef
	.4byte	.LLST8
	.byte	0x12
	.string	"len"
	.byte	0x1
	.byte	0x57
	.byte	0x40
	.4byte	0x25
	.4byte	.LLST9
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x57
	.byte	0x51
	.4byte	0xb5
	.4byte	.LLST10
	.byte	0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x59
	.byte	0x10
	.4byte	0x38
	.byte	0x5
	.byte	0x3
	.4byte	init.0
	.byte	0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0x5e
	.byte	0x1d
	.4byte	0x107
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x14
	.string	"crc"
	.byte	0x1
	.byte	0x5f
	.byte	0xe
	.4byte	0xe3
	.byte	0x3
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x14
	.string	"tmp"
	.byte	0x1
	.byte	0x61
	.byte	0xf
	.4byte	0xef
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x13
	.4byte	.LASF28
	.byte	0x1
	.byte	0x62
	.byte	0xa
	.4byte	0xbb
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x15
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x262
	.byte	0x16
	.string	"i"
	.byte	0x1
	.byte	0x6a
	.byte	0xd
	.4byte	0x38
	.4byte	.LLST11
	.byte	0x17
	.4byte	.LVL29
	.4byte	0x589
	.byte	0
	.byte	0x18
	.4byte	.Ldebug_ranges0+0
	.4byte	0x283
	.byte	0x16
	.string	"i"
	.byte	0x1
	.byte	0x71
	.byte	0xd
	.4byte	0x38
	.4byte	.LLST12
	.byte	0x17
	.4byte	.LVL35
	.4byte	0x589
	.byte	0
	.byte	0x19
	.4byte	0x451
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.byte	0x1
	.byte	0x7f
	.byte	0x5
	.4byte	0x2dd
	.byte	0x1a
	.4byte	0x476
	.4byte	.LLST13
	.byte	0x1a
	.4byte	0x46a
	.4byte	.LLST14
	.byte	0x1a
	.4byte	0x45e
	.4byte	.LLST15
	.byte	0x1b
	.4byte	0x482
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x1c
	.4byte	.LVL44
	.4byte	0x595
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	read_word_cb
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	cd_base64_write_block
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	0x451
	.4byte	.LBB13
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x86
	.byte	0x5
	.4byte	0x33d
	.byte	0x1a
	.4byte	0x476
	.4byte	.LLST16
	.byte	0x1a
	.4byte	0x46a
	.4byte	.LLST17
	.byte	0x1a
	.4byte	0x45e
	.4byte	.LLST18
	.byte	0x1f
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1b
	.4byte	0x482
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0x1c
	.4byte	.LVL49
	.4byte	0x595
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	read_word_cb
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	cd_base64_write_block
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x48
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL23
	.4byte	0x5a1
	.4byte	0x354
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x20
	.4byte	.LVL25
	.4byte	0x5a1
	.4byte	0x36b
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x20
	.4byte	.LVL26
	.4byte	0x5ad
	.4byte	0x38a
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x20
	.4byte	.LVL30
	.4byte	0x589
	.4byte	0x39e
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x20
	.4byte	.LVL32
	.4byte	0x5ad
	.4byte	0x3bd
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x1d
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x1d
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0x20
	.4byte	.LVL36
	.4byte	0x589
	.4byte	0x3d1
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x20
	.4byte	.LVL37
	.4byte	0x5a1
	.4byte	0x3e5
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LVL39
	.4byte	0x5a1
	.4byte	0x3fc
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x20
	.4byte	.LVL40
	.4byte	0x5b9
	.4byte	0x411
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x20
	.4byte	.LVL45
	.4byte	0x5a1
	.4byte	0x428
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x20
	.4byte	.LVL46
	.4byte	0x5c5
	.4byte	0x43d
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0
	.byte	0x1c
	.4byte	.LVL50
	.4byte	0x5a1
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF45
	.byte	0x1
	.byte	0x4b
	.byte	0xd
	.byte	0x1
	.4byte	0x48f
	.byte	0x22
	.4byte	.LASF29
	.byte	0x1
	.byte	0x4b
	.byte	0x2a
	.4byte	0xcb
	.byte	0x23
	.string	"len"
	.byte	0x1
	.byte	0x4b
	.byte	0x38
	.4byte	0xfb
	.byte	0x22
	.4byte	.LASF23
	.byte	0x1
	.byte	0x4b
	.byte	0x56
	.4byte	0x190
	.byte	0x24
	.string	"ctx"
	.byte	0x1
	.byte	0x4c
	.byte	0x1c
	.4byte	0x122
	.byte	0
	.byte	0x25
	.4byte	.LASF46
	.byte	0x1
	.byte	0x34
	.byte	0xc
	.4byte	0x38
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f3
	.byte	0x11
	.4byte	.LASF29
	.byte	0x1
	.byte	0x34
	.byte	0x22
	.4byte	0x4f3
	.4byte	.LLST3
	.byte	0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x34
	.byte	0x2e
	.4byte	0xa7
	.4byte	.LLST4
	.byte	0x16
	.string	"ctx"
	.byte	0x1
	.byte	0x35
	.byte	0x1d
	.4byte	0x4f9
	.4byte	.LLST5
	.byte	0x26
	.4byte	.LASF31
	.byte	0x1
	.byte	0x36
	.byte	0xf
	.4byte	0xef
	.4byte	.LLST6
	.byte	0x17
	.4byte	.LVL18
	.4byte	0x5d1
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xd2
	.byte	0x7
	.byte	0x4
	.4byte	0x122
	.byte	0x27
	.4byte	.LASF47
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x57d
	.byte	0x12
	.string	"buf"
	.byte	0x1
	.byte	0x1c
	.byte	0x31
	.4byte	0x57d
	.4byte	.LLST0
	.byte	0x11
	.4byte	.LASF30
	.byte	0x1
	.byte	0x1c
	.byte	0x3f
	.4byte	0xa7
	.4byte	.LLST1
	.byte	0x26
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1d
	.byte	0xa
	.4byte	0x583
	.4byte	.LLST2
	.byte	0x17
	.4byte	.LVL3
	.4byte	0x589
	.byte	0x17
	.4byte	.LVL4
	.4byte	0x589
	.byte	0x17
	.4byte	.LVL5
	.4byte	0x589
	.byte	0x17
	.4byte	.LVL6
	.4byte	0x589
	.byte	0x1c
	.4byte	.LVL7
	.4byte	0x5a1
	.byte	0x1d
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xde
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x28
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x7
	.byte	0xdc
	.byte	0x5
	.byte	0x28
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x8
	.byte	0x1a
	.byte	0x6
	.byte	0x28
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x7
	.byte	0xdd
	.byte	0x5
	.byte	0x28
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x9
	.byte	0x3
	.byte	0x7
	.byte	0x28
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0xa
	.byte	0xa
	.byte	0x6
	.byte	0x28
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0xa
	.byte	0xd
	.byte	0xa
	.byte	0x28
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0xa
	.byte	0xb
	.byte	0x6
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x88,0x1
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x88,0x1
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x1a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL24
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23-1
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL42
	.4byte	.LVL44-1
	.2byte	0x2
	.byte	0x91
	.byte	0x50
	.4byte	.LVL44-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL23-1
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL23-1
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL51
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL44-1
	.4byte	.LVL44
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL42
	.4byte	.LVL44-1
	.2byte	0x2
	.byte	0x91
	.byte	0x50
	.4byte	.LVL44-1
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL49-1
	.4byte	.LVL49
	.2byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	.LVL49-1
	.4byte	.LVL49
	.2byte	0x4
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL10
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18-1
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18-1
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x7b
	.byte	0x4
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x7
	.byte	0x7b
	.byte	0x8
	.byte	0x6
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL8
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
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL9
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF39:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF3:
	.string	"__uint8_t"
.LASF17:
	.string	"uintptr_t"
.LASF12:
	.string	"__uintptr_t"
.LASF37:
	.string	"utils_crc32_stream_results"
.LASF7:
	.string	"long int"
.LASF6:
	.string	"short unsigned int"
.LASF27:
	.string	"init"
.LASF18:
	.string	"ssize_t"
.LASF44:
	.string	"coredump_print"
.LASF26:
	.string	"desc"
.LASF29:
	.string	"data"
.LASF4:
	.string	"unsigned char"
.LASF42:
	.string	"crc32_stream_ctx"
.LASF19:
	.string	"line_wrap"
.LASF46:
	.string	"read_word_cb"
.LASF45:
	.string	"dump_base64_word"
.LASF24:
	.string	"addr"
.LASF2:
	.string	"size_t"
.LASF22:
	.string	"addr_end"
.LASF32:
	.string	"putchar"
.LASF20:
	.string	"addr_base"
.LASF25:
	.string	"lma_addr"
.LASF36:
	.string	"utils_crc32_stream_init"
.LASF9:
	.string	"long unsigned int"
.LASF40:
	.string	"./components/utils/coredump/encoder_v1.c"
.LASF8:
	.string	"__uint32_t"
.LASF35:
	.string	"utils_bin2hex"
.LASF31:
	.string	"base"
.LASF0:
	.string	"unsigned int"
.LASF47:
	.string	"cd_base64_write_block"
.LASF11:
	.string	"long long unsigned int"
.LASF15:
	.string	"uint8_t"
.LASF33:
	.string	"utils_base64_encode_stream"
.LASF41:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/components/utils"
.LASF23:
	.string	"crc_ctx"
.LASF10:
	.string	"long long int"
.LASF14:
	.string	"char"
.LASF30:
	.string	"opaque"
.LASF5:
	.string	"short int"
.LASF21:
	.string	"addr_curr"
.LASF38:
	.string	"utils_crc32_stream_feed"
.LASF16:
	.string	"uint32_t"
.LASF28:
	.string	"tmp_buf"
.LASF34:
	.string	"puts"
.LASF1:
	.string	"signed char"
.LASF43:
	.string	"base64_word_ctx"
.LASF13:
	.string	"_ssize_t"
	.ident	"GCC: (GNU) 10.4.0"
