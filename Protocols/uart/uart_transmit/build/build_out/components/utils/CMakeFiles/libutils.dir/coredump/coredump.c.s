	.file	"coredump.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.coredump_xip_flash_write,"ax",@progbits
	.align	1
	.globl	coredump_xip_flash_write
	.type	coredump_xip_flash_write, @function
coredump_xip_flash_write:
.LFB8:
	.file 1 "./components/utils/coredump/coredump.c"
	.loc 1 94 1
	.cfi_startproc
.LVL0:
	.loc 1 95 5
	.loc 1 96 5
	.loc 1 97 5
	.loc 1 98 5
	.loc 1 100 5
	.loc 1 94 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	ra,60(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 94 1
	mv	s4,a0
	mv	s5,a1
	mv	s3,a2
	.loc 1 96 12
	mv	s0,a2
	.loc 1 101 17
	li	s6,32
.LVL1:
.L2:
	.loc 1 100 10 is_stmt 1
	bne	s0,zero,.L5
	li	a0,0
	.loc 1 109 5
.LVL2:
.L1:
	.loc 1 110 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL3:
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
.LVL4:
	lw	s4,40(sp)
	.cfi_restore 20
.LVL5:
	lw	s5,36(sp)
	.cfi_restore 21
.LVL6:
	lw	s6,32(sp)
	.cfi_restore 22
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L5:
	.cfi_restore_state
	.loc 1 101 9 is_stmt 1
	.loc 1 101 17 is_stmt 0
	mv	s1,s0
	bleu	s0,s6,.L3
	li	s1,32
.L3:
.LVL8:
	.loc 1 102 9 is_stmt 1
	.loc 1 102 42 is_stmt 0
	sub	s2,s3,s0
	.loc 1 102 9
	mv	a2,s1
	add	a1,s5,s2
	mv	a0,sp
	call	memcpy
.LVL9:
	.loc 1 103 9 is_stmt 1
	.loc 1 103 15 is_stmt 0
	mv	a2,s1
	mv	a1,sp
	add	a0,s2,s4
	call	qcc74x_flash_write
.LVL10:
	.loc 1 104 9 is_stmt 1
	.loc 1 104 11 is_stmt 0
	bne	a0,zero,.L1
	.loc 1 106 9 is_stmt 1
	.loc 1 106 14 is_stmt 0
	sub	s0,s0,s1
.LVL11:
	j	.L2
	.cfi_endproc
.LFE8:
	.size	coredump_xip_flash_write, .-coredump_xip_flash_write
	.section	.rodata.coredump_run.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"\r\ncheck build_id with `riscv64-unknown-elf-readelf -n *.elf` output \r\n"
	.align	2
.LC1:
	.string	"build_id: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x\r\n"
	.align	2
.LC2:
	.string	"predefined"
	.align	2
.LC3:
	.string	"\r\n-+-+-+- QCC74x COREDUMP END +-+-+-+\r\n"
	.section	.text.coredump_run,"ax",@progbits
	.align	1
	.globl	coredump_run
	.type	coredump_run, @function
coredump_run:
.LFB9:
	.loc 1 112 25 is_stmt 1
	.cfi_startproc
	.loc 1 113 4
.LVL12:
	.loc 1 114 5
	.loc 1 115 5
	.loc 1 116 5
	.loc 1 117 5
	.loc 1 119 5
	.loc 1 120 5
	.loc 1 121 5
	.loc 1 131 5
	.loc 1 139 9
	.loc 1 140 9
	.loc 1 143 5
	.loc 1 112 25 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s0,88(sp)
	.loc 1 143 5
	lui	a0,%hi(.LANCHOR0)
	.cfi_offset 8, -8
	lui	s0,%hi(elf_build_id)
	addi	a1,s0,%lo(elf_build_id)
	li	a2,20
	addi	a0,a0,%lo(.LANCHOR0)
	.loc 1 112 25
	sw	ra,92(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s1,84(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	.cfi_offset 1, -4
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 143 5
	call	memcpy
.LVL13:
	.loc 1 144 5 is_stmt 1
.LBB7:
.LBB8:
	.loc 1 23 5
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL14:
	.loc 1 24 5
	.loc 1 28 38 is_stmt 0
	addi	a2,s0,%lo(elf_build_id)
	.loc 1 24 5
	lbu	a5,19(a2)
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	sw	a5,48(sp)
	lbu	a5,18(a2)
.LBE8:
.LBE7:
.LBB11:
	.loc 1 148 12
	li	s4,-3
.LBB12:
.LBB13:
	.loc 1 40 104
	li	s5,1024
.LBE13:
.LBE12:
.LBE11:
.LBB18:
.LBB9:
	.loc 1 24 5
	sw	a5,44(sp)
	lbu	a5,17(a2)
.LBE9:
.LBE18:
.LBB19:
.LBB16:
.LBB14:
	.loc 1 40 9
	lui	s6,%hi(.LC2)
.LBE14:
.LBE16:
.LBE19:
.LBB20:
.LBB10:
	.loc 1 24 5
	sw	a5,40(sp)
	lbu	a5,16(a2)
	sw	a5,36(sp)
	lbu	a5,15(a2)
	sw	a5,32(sp)
	lbu	a5,14(a2)
	sw	a5,28(sp)
	lbu	a5,13(a2)
	sw	a5,24(sp)
	lbu	a5,12(a2)
	sw	a5,20(sp)
	lbu	a5,11(a2)
	sw	a5,16(sp)
	lbu	a5,10(a2)
	sw	a5,12(sp)
	lbu	a5,9(a2)
	sw	a5,8(sp)
	lbu	a5,8(a2)
	sw	a5,4(sp)
	lbu	a5,7(a2)
	sw	a5,0(sp)
	lbu	a7,6(a2)
	lbu	a6,5(a2)
	lbu	a5,4(a2)
	lbu	a4,3(a2)
	lbu	a3,2(a2)
	lbu	a2,1(a2)
	lbu	a1,%lo(elf_build_id)(s0)
	lui	s0,%hi(_dump_sections)
	addi	s0,s0,%lo(_dump_sections)
	call	printf
.LVL15:
.L8:
.LBE10:
.LBE20:
.LBB21:
	.loc 1 147 21 is_stmt 1 discriminator 1
	.loc 1 147 40 is_stmt 0 discriminator 1
	lw	s3,0(s0)
	.loc 1 148 9 is_stmt 1 discriminator 1
	.loc 1 148 12 is_stmt 0 discriminator 1
	addi	a5,s3,-1
	bleu	a5,s4,.L12
.LBE21:
	.loc 1 156 5 is_stmt 1
	.loc 1 166 5
	.loc 1 170 5
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL16:
	.loc 1 172 5
	.loc 1 173 5
	call	qcc74x_sys_reset_por
.LVL17:
.L13:
	.loc 1 174 5 discriminator 1
	.loc 1 175 9 discriminator 1
 #APP
# 175 "/home/sai/QCCSDK-QCC74x/components/utils/coredump/coredump.c" 1
	nop
# 0 "" 2
	.loc 1 174 11 discriminator 1
 #NO_APP
	j	.L13
.L12:
.LBB22:
	.loc 1 150 9
	.loc 1 150 32 is_stmt 0
	lw	s2,4(s0)
	.loc 1 150 12
	bne	s2,zero,.L14
.L11:
	.loc 1 147 62 is_stmt 1
	addi	s0,s0,8
	j	.L8
.L14:
	li	s1,0
.L9:
.LBB17:
.LBB15:
	.loc 1 39 9
.LVL18:
	.loc 1 40 9
	.loc 1 40 72 is_stmt 0
	sub	a2,s2,s1
	.loc 1 40 29
	add	a1,s3,s1
	.loc 1 40 104
	bleu	a2,s5,.L10
	li	a2,1024
.L10:
	.loc 1 40 9
	addi	a3,s6,%lo(.LC2)
	mv	a0,a1
	addi	s1,s1,1024
.LVL19:
	call	coredump_print
.LVL20:
	.loc 1 38 40 is_stmt 1
	.loc 1 38 18
	.loc 1 38 5 is_stmt 0
	bgtu	s2,s1,.L9
	j	.L11
.LBE15:
.LBE17:
.LBE22:
	.cfi_endproc
.LFE9:
	.size	coredump_run, .-coredump_run
	.globl	core_build_id
	.section	.bss.core_build_id,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	core_build_id, @object
	.size	core_build_id, 20
core_build_id:
	.zero	20
	.weak	_dump_sections
	.weak	elf_build_id
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./components/utils/coredump/coredump.h"
	.file 6 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 7 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.file 8 "./drivers/lhal/include/qcc74x_flash.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x482
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF46
	.byte	0xc
	.4byte	.LASF47
	.4byte	.LASF48
	.4byte	.Ldebug_ranges0+0x68
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
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x5
	.4byte	0x9b
	.byte	0x6
	.byte	0x4
	.4byte	0xa2
	.byte	0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x6e
	.byte	0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0x8f
	.byte	0x6
	.byte	0x4
	.4byte	0xad
	.byte	0x7
	.4byte	.LASF49
	.byte	0x8
	.byte	0x5
	.byte	0x6
	.byte	0x8
	.4byte	0xff
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x7
	.byte	0xe
	.4byte	0xb9
	.byte	0
	.byte	0x9
	.string	"len"
	.byte	0x5
	.byte	0x8
	.byte	0xe
	.4byte	0xb9
	.byte	0x4
	.byte	0
	.byte	0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0xa
	.byte	0x32
	.4byte	0xd7
	.byte	0xb
	.4byte	0xad
	.4byte	0x11b
	.byte	0xc
	.4byte	0x31
	.byte	0x13
	.byte	0
	.byte	0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0xd
	.byte	0x26
	.4byte	0x10b
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa
	.byte	0x9
	.4byte	0x10b
	.byte	0x5
	.byte	0x3
	.4byte	core_build_id
	.byte	0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x31
	.byte	0x11
	.4byte	0xb9
	.byte	0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x32
	.byte	0xf
	.4byte	0x25
	.byte	0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0x70
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e2
	.byte	0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x71
	.byte	0x9
	.4byte	0x2e2
	.byte	0x1
	.byte	0x11
	.string	"lma"
	.byte	0x1
	.byte	0x72
	.byte	0xe
	.4byte	0xb9
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x73
	.byte	0x19
	.4byte	0x2e9
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0x74
	.byte	0x1a
	.4byte	0x2f9
	.byte	0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x75
	.byte	0x1a
	.4byte	0x2f9
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x77
	.byte	0x9
	.4byte	0x38
	.byte	0x1
	.byte	0x10
	.4byte	.LASF28
	.byte	0x1
	.byte	0x78
	.byte	0x9
	.4byte	0x38
	.byte	0x1
	.byte	0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x79
	.byte	0x9
	.4byte	0x38
	.byte	0
	.byte	0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0xac
	.byte	0x9
	.4byte	0x38
	.byte	0x13
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x251
	.byte	0x11
	.string	"i"
	.byte	0x1
	.byte	0x93
	.byte	0xe
	.4byte	0x38
	.byte	0x14
	.4byte	0x3d9
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x99
	.byte	0xd
	.byte	0x15
	.4byte	0x40a
	.byte	0x15
	.4byte	0x3fe
	.byte	0x15
	.4byte	0x3f2
	.byte	0x15
	.4byte	0x3e6
	.byte	0x16
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x17
	.4byte	0x416
	.4byte	.LLST6
	.byte	0x18
	.4byte	0x422
	.byte	0x19
	.4byte	.LVL20
	.4byte	0x449
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x9
	.byte	0x79
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x400
	.byte	0x1c
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x9
	.byte	0x79
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0xa
	.2byte	0x400
	.byte	0x1c
	.byte	0x1a
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	0x261
	.byte	0x11
	.string	"i"
	.byte	0x1
	.byte	0x9d
	.byte	0x12
	.4byte	0x38
	.byte	0
	.byte	0x1c
	.4byte	0x42f
	.4byte	.LBB7
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x90
	.byte	0x5
	.4byte	0x2a5
	.byte	0x15
	.4byte	0x43c
	.byte	0x1d
	.4byte	.LVL14
	.4byte	0x455
	.4byte	0x291
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x19
	.4byte	.LVL15
	.4byte	0x455
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL13
	.4byte	0x461
	.4byte	0x2c1
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x1d
	.4byte	.LVL16
	.4byte	0x455
	.4byte	0x2d8
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x1e
	.4byte	.LVL17
	.4byte	0x46d
	.byte	0
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF30
	.byte	0xb
	.4byte	0xd7
	.4byte	0x2f9
	.byte	0xc
	.4byte	0x31
	.byte	0x4
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xd7
	.byte	0x1f
	.4byte	.LASF51
	.byte	0x1
	.byte	0x5d
	.byte	0x5
	.4byte	0x38
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x3c9
	.byte	0x20
	.string	"lma"
	.byte	0x1
	.byte	0x5d
	.byte	0x27
	.4byte	0xb9
	.4byte	.LLST0
	.byte	0x21
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5d
	.byte	0x35
	.4byte	0xd1
	.4byte	.LLST1
	.byte	0x20
	.string	"len"
	.byte	0x1
	.byte	0x5d
	.byte	0x45
	.4byte	0x25
	.4byte	.LLST2
	.byte	0x22
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5f
	.byte	0xd
	.4byte	0x3c9
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0x23
	.4byte	.LASF33
	.byte	0x1
	.byte	0x60
	.byte	0xc
	.4byte	0x25
	.4byte	.LLST3
	.byte	0x22
	.4byte	.LASF34
	.byte	0x1
	.byte	0x61
	.byte	0xc
	.4byte	0x25
	.byte	0x1
	.byte	0x59
	.byte	0x24
	.string	"ret"
	.byte	0x1
	.byte	0x62
	.byte	0x9
	.4byte	0x38
	.4byte	.LLST4
	.byte	0x1d
	.4byte	.LVL9
	.4byte	0x461
	.4byte	0x3a9
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x85
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL10
	.4byte	0x479
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x82
	.byte	0
	.byte	0x84
	.byte	0
	.byte	0x22
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	0xad
	.4byte	0x3d9
	.byte	0xc
	.4byte	0x31
	.byte	0x1f
	.byte	0
	.byte	0x25
	.4byte	.LASF38
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.byte	0x1
	.4byte	0x42f
	.byte	0x26
	.4byte	.LASF17
	.byte	0x1
	.byte	0x21
	.byte	0x2a
	.4byte	0xc5
	.byte	0x26
	.4byte	.LASF35
	.byte	0x1
	.byte	0x21
	.byte	0x3a
	.4byte	0xc5
	.byte	0x27
	.string	"len"
	.byte	0x1
	.byte	0x21
	.byte	0x4d
	.4byte	0xb9
	.byte	0x26
	.4byte	.LASF36
	.byte	0x1
	.byte	0x21
	.byte	0x5e
	.4byte	0xa7
	.byte	0xe
	.4byte	.LASF37
	.byte	0x1
	.byte	0x23
	.byte	0xe
	.4byte	0xb9
	.byte	0x11
	.string	"seg"
	.byte	0x1
	.byte	0x24
	.byte	0xe
	.4byte	0xb9
	.byte	0
	.byte	0x25
	.4byte	.LASF39
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.byte	0x1
	.4byte	0x449
	.byte	0x26
	.4byte	.LASF40
	.byte	0x1
	.byte	0x15
	.byte	0x29
	.4byte	0xd1
	.byte	0
	.byte	0x28
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0xf
	.byte	0x6
	.byte	0x28
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x6
	.byte	0xc8
	.byte	0x5
	.byte	0x28
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.byte	0x1f
	.byte	0x8
	.byte	0x28
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x1
	.byte	0xac
	.byte	0x9
	.byte	0x28
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x8
	.byte	0x83
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0x2e
	.byte	0
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
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x2
	.byte	0x17
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
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
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LFE9
	.2byte	0x4
	.byte	0x79
	.byte	0x80,0x78
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL7
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5a
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	.LBB22
	.4byte	.LBE22
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"elf_build_id"
.LASF46:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF28:
	.string	"enable_print"
.LASF3:
	.string	"__uint8_t"
.LASF29:
	.string	"enable_flash"
.LASF16:
	.string	"uintptr_t"
.LASF12:
	.string	"__uintptr_t"
.LASF37:
	.string	"printed_len"
.LASF33:
	.string	"rest"
.LASF23:
	.string	"only_task_stack"
.LASF6:
	.string	"short unsigned int"
.LASF36:
	.string	"desc"
.LASF20:
	.string	"core_build_id"
.LASF40:
	.string	"build_id"
.LASF21:
	.string	"coredump_flash_addr"
.LASF41:
	.string	"coredump_print"
.LASF24:
	.string	"dump_sections"
.LASF22:
	.string	"coredump_flash_size"
.LASF4:
	.string	"unsigned char"
.LASF48:
	.string	"./examples/peripherals/uart/uart_transmit/build/build_out/components/utils"
.LASF9:
	.string	"long unsigned int"
.LASF17:
	.string	"addr"
.LASF2:
	.string	"size_t"
.LASF49:
	.string	"dump_section"
.LASF34:
	.string	"buf_len"
.LASF35:
	.string	"lma_addr"
.LASF8:
	.string	"__uint32_t"
.LASF32:
	.string	"write_buf"
.LASF27:
	.string	"enable_coredump_config"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF50:
	.string	"coredump_run"
.LASF18:
	.string	"_dump_sections"
.LASF26:
	.string	"coredump_flash_disable"
.LASF51:
	.string	"coredump_xip_flash_write"
.LASF39:
	.string	"print_build_id_fmt"
.LASF10:
	.string	"long long int"
.LASF43:
	.string	"memcpy"
.LASF42:
	.string	"printf"
.LASF25:
	.string	"flash_dump_sections"
.LASF5:
	.string	"short int"
.LASF38:
	.string	"coredump_print_n_k"
.LASF45:
	.string	"qcc74x_flash_write"
.LASF31:
	.string	"lma_xip"
.LASF44:
	.string	"qcc74x_sys_reset_por"
.LASF15:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF1:
	.string	"signed char"
.LASF30:
	.string	"_Bool"
.LASF47:
	.string	"./components/utils/coredump/coredump.c"
	.ident	"GCC: (GNU) 10.4.0"
