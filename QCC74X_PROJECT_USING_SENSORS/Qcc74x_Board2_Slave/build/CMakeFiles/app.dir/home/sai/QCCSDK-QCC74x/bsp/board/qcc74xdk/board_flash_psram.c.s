	.file	"board_flash_psram.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.qcc74x_show_flashinfo.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"======== flash cfg ========\r\n"
	.align	2
.LC1:
	.string	"flash size 0x%08X\r\n"
	.align	2
.LC2:
	.string	"jedec id     0x%06X\r\n"
	.align	2
.LC3:
	.string	"mid              0x%02X\r\n"
	.align	2
.LC4:
	.string	"iomode           0x%02X\r\n"
	.align	2
.LC5:
	.string	"clk delay        0x%02X\r\n"
	.align	2
.LC6:
	.string	"clk invert       0x%02X\r\n"
	.align	2
.LC7:
	.string	"read reg cmd0    0x%02X\r\n"
	.align	2
.LC8:
	.string	"read reg cmd1    0x%02X\r\n"
	.align	2
.LC9:
	.string	"write reg cmd0   0x%02X\r\n"
	.align	2
.LC10:
	.string	"write reg cmd1   0x%02X\r\n"
	.align	2
.LC11:
	.string	"qe write len     0x%02X\r\n"
	.align	2
.LC12:
	.string	"cread support    0x%02X\r\n"
	.align	2
.LC13:
	.string	"cread code       0x%02X\r\n"
	.align	2
.LC14:
	.string	"burst wrap cmd   0x%02X\r\n"
	.align	2
.LC15:
	.string	"===========================\r\n"
	.section	.text.qcc74x_show_flashinfo,"ax",@progbits
	.align	1
	.globl	qcc74x_show_flashinfo
	.type	qcc74x_show_flashinfo, @function
qcc74x_show_flashinfo:
.LFB242:
	.file 1 "./bsp/board/qcc74xdk/board_flash_psram.c"
	.loc 1 17 1
	.cfi_startproc
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 17 1 is_stmt 0
	addi	sp,sp,-112
	.cfi_def_cfa_offset 112
	sw	ra,108(sp)
	sw	s0,104(sp)
	sw	s1,100(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 19 14
	sw	zero,4(sp)
	.loc 1 20 5 is_stmt 1
.LVL0:
	.loc 1 21 5
	.loc 1 21 14 is_stmt 0
	sw	zero,8(sp)
	.loc 1 22 5 is_stmt 1
.LVL1:
	.loc 1 24 5
	.loc 1 24 20 is_stmt 0
	call	qcc74x_flash_get_jedec_id
.LVL2:
	mv	s0,a0
.LVL3:
	.loc 1 25 5 is_stmt 1
	.loc 1 25 17 is_stmt 0
	call	qcc74x_flash_get_size
.LVL4:
	mv	s1,a0
.LVL5:
	.loc 1 26 5 is_stmt 1
	addi	a1,sp,8
	addi	a0,sp,4
	call	qcc74x_flash_get_cfg
.LVL6:
	.loc 1 27 5
	lw	a2,8(sp)
	lw	a1,4(sp)
	addi	a0,sp,12
	call	arch_memcpy
.LVL7:
	.loc 1 28 5
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL8:
	.loc 1 29 5
	lui	a0,%hi(.LC1)
	mv	a1,s1
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL9:
	.loc 1 30 5
	lui	a0,%hi(.LC2)
	mv	a1,s0
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL10:
	.loc 1 31 5
	lbu	a1,25(sp)
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	printf
.LVL11:
	.loc 1 32 5
	lbu	a1,12(sp)
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL12:
	.loc 1 33 5
	lbu	a1,14(sp)
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL13:
	.loc 1 34 5
	lbu	a1,15(sp)
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL14:
	.loc 1 35 5
	lbu	a1,64(sp)
	lui	a0,%hi(.LC7)
	addi	a0,a0,%lo(.LC7)
	call	printf
.LVL15:
	.loc 1 36 5
	lbu	a1,65(sp)
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL16:
	.loc 1 37 5
	lbu	a1,68(sp)
	lui	a0,%hi(.LC9)
	addi	a0,a0,%lo(.LC9)
	call	printf
.LVL17:
	.loc 1 38 5
	lbu	a1,69(sp)
	lui	a0,%hi(.LC10)
	addi	a0,a0,%lo(.LC10)
	call	printf
.LVL18:
	.loc 1 39 5
	lbu	a1,60(sp)
	lui	a0,%hi(.LC11)
	addi	a0,a0,%lo(.LC11)
	call	printf
.LVL19:
	.loc 1 40 5
	lbu	a1,13(sp)
	lui	a0,%hi(.LC12)
	addi	a0,a0,%lo(.LC12)
	call	printf
.LVL20:
	.loc 1 41 5
	lbu	a1,74(sp)
	lui	a0,%hi(.LC13)
	addi	a0,a0,%lo(.LC13)
	call	printf
.LVL21:
	.loc 1 42 5
	lbu	a1,76(sp)
	lui	a0,%hi(.LC14)
	addi	a0,a0,%lo(.LC14)
	call	printf
.LVL22:
	.loc 1 43 5
	lui	a0,%hi(.LC15)
	addi	a0,a0,%lo(.LC15)
	call	printf
.LVL23:
	.loc 1 44 1 is_stmt 0
	lw	ra,108(sp)
	.cfi_restore 1
	lw	s0,104(sp)
	.cfi_restore 8
.LVL24:
	lw	s1,100(sp)
	.cfi_restore 9
.LVL25:
	addi	sp,sp,112
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE242:
	.size	qcc74x_show_flashinfo, .-qcc74x_show_flashinfo
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/src/flash/qcc74x_sflash.h"
	.file 5 "./drivers/lhal/include/qcc74x_flash.h"
	.file 6 "./drivers/soc/qcc743/std/include/qcc743_common.h"
	.file 7 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x6e9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF98
	.byte	0xc
	.4byte	.LASF99
	.4byte	.LASF100
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x4
	.4byte	0x8f
	.byte	0x6
	.byte	0x54
	.byte	0x4
	.byte	0x11
	.byte	0x9
	.4byte	0x472
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x13
	.byte	0xd
	.4byte	0x8f
	.byte	0
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x14
	.byte	0xd
	.4byte	0x8f
	.byte	0x1
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x15
	.byte	0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x16
	.byte	0xd
	.4byte	0x8f
	.byte	0x3
	.byte	0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x17
	.byte	0xd
	.4byte	0x8f
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x18
	.byte	0xd
	.4byte	0x8f
	.byte	0x5
	.byte	0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x19
	.byte	0xd
	.4byte	0x8f
	.byte	0x6
	.byte	0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1a
	.byte	0xd
	.4byte	0x8f
	.byte	0x7
	.byte	0x7
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1b
	.byte	0xd
	.4byte	0x8f
	.byte	0x8
	.byte	0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0x1c
	.byte	0xd
	.4byte	0x8f
	.byte	0x9
	.byte	0x7
	.4byte	.LASF26
	.byte	0x4
	.byte	0x21
	.byte	0xd
	.4byte	0x8f
	.byte	0xa
	.byte	0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x22
	.byte	0xd
	.4byte	0x8f
	.byte	0xb
	.byte	0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0x24
	.byte	0xd
	.4byte	0x8f
	.byte	0xc
	.byte	0x8
	.string	"mid"
	.byte	0x4
	.byte	0x25
	.byte	0xd
	.4byte	0x8f
	.byte	0xd
	.byte	0x7
	.4byte	.LASF29
	.byte	0x4
	.byte	0x26
	.byte	0xe
	.4byte	0x9b
	.byte	0xe
	.byte	0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x27
	.byte	0xd
	.4byte	0x8f
	.byte	0x10
	.byte	0x7
	.4byte	.LASF31
	.byte	0x4
	.byte	0x28
	.byte	0xd
	.4byte	0x8f
	.byte	0x11
	.byte	0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x29
	.byte	0xd
	.4byte	0x8f
	.byte	0x12
	.byte	0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x2a
	.byte	0xd
	.4byte	0x8f
	.byte	0x13
	.byte	0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x2b
	.byte	0xd
	.4byte	0x8f
	.byte	0x14
	.byte	0x7
	.4byte	.LASF35
	.byte	0x4
	.byte	0x2c
	.byte	0xd
	.4byte	0x8f
	.byte	0x15
	.byte	0x7
	.4byte	.LASF36
	.byte	0x4
	.byte	0x2d
	.byte	0xd
	.4byte	0x8f
	.byte	0x16
	.byte	0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x2e
	.byte	0xd
	.4byte	0x8f
	.byte	0x17
	.byte	0x7
	.4byte	.LASF38
	.byte	0x4
	.byte	0x2f
	.byte	0xd
	.4byte	0x8f
	.byte	0x18
	.byte	0x7
	.4byte	.LASF39
	.byte	0x4
	.byte	0x30
	.byte	0xd
	.4byte	0x8f
	.byte	0x19
	.byte	0x7
	.4byte	.LASF40
	.byte	0x4
	.byte	0x31
	.byte	0xd
	.4byte	0x8f
	.byte	0x1a
	.byte	0x7
	.4byte	.LASF41
	.byte	0x4
	.byte	0x32
	.byte	0xd
	.4byte	0x8f
	.byte	0x1b
	.byte	0x7
	.4byte	.LASF42
	.byte	0x4
	.byte	0x33
	.byte	0xd
	.4byte	0x8f
	.byte	0x1c
	.byte	0x7
	.4byte	.LASF43
	.byte	0x4
	.byte	0x34
	.byte	0xd
	.4byte	0x8f
	.byte	0x1d
	.byte	0x7
	.4byte	.LASF44
	.byte	0x4
	.byte	0x35
	.byte	0xd
	.4byte	0x8f
	.byte	0x1e
	.byte	0x7
	.4byte	.LASF45
	.byte	0x4
	.byte	0x36
	.byte	0xd
	.4byte	0x8f
	.byte	0x1f
	.byte	0x7
	.4byte	.LASF46
	.byte	0x4
	.byte	0x37
	.byte	0xd
	.4byte	0x8f
	.byte	0x20
	.byte	0x7
	.4byte	.LASF47
	.byte	0x4
	.byte	0x38
	.byte	0xd
	.4byte	0x8f
	.byte	0x21
	.byte	0x7
	.4byte	.LASF48
	.byte	0x4
	.byte	0x39
	.byte	0xd
	.4byte	0x8f
	.byte	0x22
	.byte	0x7
	.4byte	.LASF49
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0x8f
	.byte	0x23
	.byte	0x7
	.4byte	.LASF50
	.byte	0x4
	.byte	0x3b
	.byte	0xd
	.4byte	0x8f
	.byte	0x24
	.byte	0x7
	.4byte	.LASF51
	.byte	0x4
	.byte	0x3c
	.byte	0xd
	.4byte	0x8f
	.byte	0x25
	.byte	0x7
	.4byte	.LASF52
	.byte	0x4
	.byte	0x3d
	.byte	0xd
	.4byte	0x8f
	.byte	0x26
	.byte	0x7
	.4byte	.LASF53
	.byte	0x4
	.byte	0x3e
	.byte	0xd
	.4byte	0x8f
	.byte	0x27
	.byte	0x7
	.4byte	.LASF54
	.byte	0x4
	.byte	0x3f
	.byte	0xd
	.4byte	0x8f
	.byte	0x28
	.byte	0x7
	.4byte	.LASF55
	.byte	0x4
	.byte	0x40
	.byte	0xd
	.4byte	0x8f
	.byte	0x29
	.byte	0x7
	.4byte	.LASF56
	.byte	0x4
	.byte	0x41
	.byte	0xd
	.4byte	0x8f
	.byte	0x2a
	.byte	0x7
	.4byte	.LASF57
	.byte	0x4
	.byte	0x42
	.byte	0xd
	.4byte	0x8f
	.byte	0x2b
	.byte	0x7
	.4byte	.LASF58
	.byte	0x4
	.byte	0x43
	.byte	0xd
	.4byte	0x8f
	.byte	0x2c
	.byte	0x7
	.4byte	.LASF59
	.byte	0x4
	.byte	0x44
	.byte	0xd
	.4byte	0x8f
	.byte	0x2d
	.byte	0x7
	.4byte	.LASF60
	.byte	0x4
	.byte	0x45
	.byte	0xd
	.4byte	0x8f
	.byte	0x2e
	.byte	0x7
	.4byte	.LASF61
	.byte	0x4
	.byte	0x46
	.byte	0xd
	.4byte	0x8f
	.byte	0x2f
	.byte	0x7
	.4byte	.LASF62
	.byte	0x4
	.byte	0x47
	.byte	0xd
	.4byte	0x8f
	.byte	0x30
	.byte	0x7
	.4byte	.LASF63
	.byte	0x4
	.byte	0x48
	.byte	0xd
	.4byte	0x8f
	.byte	0x31
	.byte	0x7
	.4byte	.LASF64
	.byte	0x4
	.byte	0x49
	.byte	0xd
	.4byte	0x8f
	.byte	0x32
	.byte	0x7
	.4byte	.LASF65
	.byte	0x4
	.byte	0x4a
	.byte	0xd
	.4byte	0x8f
	.byte	0x33
	.byte	0x7
	.4byte	.LASF66
	.byte	0x4
	.byte	0x4b
	.byte	0xd
	.4byte	0x472
	.byte	0x34
	.byte	0x7
	.4byte	.LASF67
	.byte	0x4
	.byte	0x4c
	.byte	0xd
	.4byte	0x472
	.byte	0x38
	.byte	0x7
	.4byte	.LASF68
	.byte	0x4
	.byte	0x4d
	.byte	0xd
	.4byte	0x8f
	.byte	0x3c
	.byte	0x7
	.4byte	.LASF69
	.byte	0x4
	.byte	0x4e
	.byte	0xd
	.4byte	0x8f
	.byte	0x3d
	.byte	0x7
	.4byte	.LASF70
	.byte	0x4
	.byte	0x4f
	.byte	0xd
	.4byte	0x8f
	.byte	0x3e
	.byte	0x7
	.4byte	.LASF71
	.byte	0x4
	.byte	0x50
	.byte	0xd
	.4byte	0x8f
	.byte	0x3f
	.byte	0x7
	.4byte	.LASF72
	.byte	0x4
	.byte	0x51
	.byte	0xd
	.4byte	0x8f
	.byte	0x40
	.byte	0x7
	.4byte	.LASF73
	.byte	0x4
	.byte	0x52
	.byte	0xd
	.4byte	0x8f
	.byte	0x41
	.byte	0x7
	.4byte	.LASF74
	.byte	0x4
	.byte	0x53
	.byte	0xd
	.4byte	0x8f
	.byte	0x42
	.byte	0x7
	.4byte	.LASF75
	.byte	0x4
	.byte	0x54
	.byte	0xd
	.4byte	0x8f
	.byte	0x43
	.byte	0x7
	.4byte	.LASF76
	.byte	0x4
	.byte	0x55
	.byte	0xd
	.4byte	0x8f
	.byte	0x44
	.byte	0x7
	.4byte	.LASF77
	.byte	0x4
	.byte	0x56
	.byte	0xd
	.4byte	0x8f
	.byte	0x45
	.byte	0x7
	.4byte	.LASF78
	.byte	0x4
	.byte	0x57
	.byte	0xd
	.4byte	0x8f
	.byte	0x46
	.byte	0x7
	.4byte	.LASF79
	.byte	0x4
	.byte	0x58
	.byte	0xd
	.4byte	0x8f
	.byte	0x47
	.byte	0x7
	.4byte	.LASF80
	.byte	0x4
	.byte	0x59
	.byte	0xe
	.4byte	0x9b
	.byte	0x48
	.byte	0x7
	.4byte	.LASF81
	.byte	0x4
	.byte	0x5a
	.byte	0xe
	.4byte	0x9b
	.byte	0x4a
	.byte	0x7
	.4byte	.LASF82
	.byte	0x4
	.byte	0x5b
	.byte	0xe
	.4byte	0x9b
	.byte	0x4c
	.byte	0x7
	.4byte	.LASF83
	.byte	0x4
	.byte	0x5c
	.byte	0xe
	.4byte	0x9b
	.byte	0x4e
	.byte	0x7
	.4byte	.LASF84
	.byte	0x4
	.byte	0x5d
	.byte	0xe
	.4byte	0x9b
	.byte	0x50
	.byte	0x7
	.4byte	.LASF85
	.byte	0x4
	.byte	0x5e
	.byte	0xd
	.4byte	0x8f
	.byte	0x52
	.byte	0x7
	.4byte	.LASF86
	.byte	0x4
	.byte	0x5f
	.byte	0xd
	.4byte	0x8f
	.byte	0x53
	.byte	0
	.byte	0x9
	.4byte	0x8f
	.4byte	0x482
	.byte	0xa
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF87
	.byte	0x4
	.byte	0x60
	.byte	0x1b
	.4byte	0xc0
	.byte	0xb
	.4byte	.LASF101
	.byte	0x1
	.byte	0x10
	.byte	0x6
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0x6b0
	.byte	0xc
	.4byte	.LASF88
	.byte	0x1
	.byte	0x12
	.byte	0x18
	.4byte	0x482
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0xc
	.4byte	.LASF89
	.byte	0x1
	.byte	0x13
	.byte	0xe
	.4byte	0xba
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0xd
	.4byte	.LASF90
	.byte	0x1
	.byte	0x14
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LASF91
	.byte	0x1
	.byte	0x15
	.byte	0xe
	.4byte	0xa7
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0xd
	.4byte	.LASF92
	.byte	0x1
	.byte	0x16
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LVL2
	.4byte	0x6b0
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x6bc
	.byte	0xf
	.4byte	.LVL6
	.4byte	0x6c8
	.4byte	0x522
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x98,0x7f
	.byte	0
	.byte	0xf
	.4byte	.LVL7
	.4byte	0x6d4
	.4byte	0x537
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0
	.byte	0xf
	.4byte	.LVL8
	.4byte	0x6e0
	.4byte	0x54e
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xf
	.4byte	.LVL9
	.4byte	0x6e0
	.4byte	0x56b
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL10
	.4byte	0x6e0
	.4byte	0x588
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL11
	.4byte	0x6e0
	.4byte	0x59f
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0xf
	.4byte	.LVL12
	.4byte	0x6e0
	.4byte	0x5b6
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0xf
	.4byte	.LVL13
	.4byte	0x6e0
	.4byte	0x5cd
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0xf
	.4byte	.LVL14
	.4byte	0x6e0
	.4byte	0x5e4
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0xf
	.4byte	.LVL15
	.4byte	0x6e0
	.4byte	0x5fb
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0xf
	.4byte	.LVL16
	.4byte	0x6e0
	.4byte	0x612
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0xf
	.4byte	.LVL17
	.4byte	0x6e0
	.4byte	0x629
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0xf
	.4byte	.LVL18
	.4byte	0x6e0
	.4byte	0x640
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0xf
	.4byte	.LVL19
	.4byte	0x6e0
	.4byte	0x657
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0xf
	.4byte	.LVL20
	.4byte	0x6e0
	.4byte	0x66e
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.byte	0xf
	.4byte	.LVL21
	.4byte	0x6e0
	.4byte	0x685
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0
	.byte	0xf
	.4byte	.LVL22
	.4byte	0x6e0
	.4byte	0x69c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC14
	.byte	0
	.byte	0x11
	.4byte	.LVL23
	.4byte	0x6e0
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC15
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x5
	.byte	0x4a
	.byte	0xa
	.byte	0x12
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x5
	.byte	0x51
	.byte	0xa
	.byte	0x12
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x5
	.byte	0x62
	.byte	0x6
	.byte	0x12
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x6
	.byte	0xb2
	.byte	0x7
	.byte	0x12
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x7
	.byte	0xc8
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x8
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF41:
	.string	"qpi_fr_dmy_clk"
.LASF56:
	.string	"busy_index"
.LASF16:
	.string	"io_mode"
.LASF100:
	.string	"./examples/peripherals/spi/spi_slave/build"
.LASF90:
	.string	"flashSize"
.LASF83:
	.string	"time_page_pgm"
.LASF57:
	.string	"wr_enable_bit"
.LASF98:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF94:
	.string	"qcc74x_flash_get_size"
.LASF30:
	.string	"chip_erase_cmd"
.LASF101:
	.string	"qcc74x_show_flashinfo"
.LASF37:
	.string	"qpp_addr_mode"
.LASF29:
	.string	"page_size"
.LASF43:
	.string	"fr_do_dmy_clk"
.LASF38:
	.string	"fast_read_cmd"
.LASF74:
	.string	"burst_wrap_data_mode"
.LASF48:
	.string	"fast_read_qio_cmd"
.LASF25:
	.string	"jedec_id_cmd_dmy_clk"
.LASF49:
	.string	"fr_qio_dmy_clk"
.LASF7:
	.string	"__uint32_t"
.LASF4:
	.string	"__uint16_t"
.LASF34:
	.string	"write_enable_cmd"
.LASF20:
	.string	"reset_en_cmd"
.LASF88:
	.string	"flashCfg"
.LASF91:
	.string	"flashCfgLen"
.LASF62:
	.string	"qe_write_reg_len"
.LASF75:
	.string	"burst_wrap_data"
.LASF58:
	.string	"qe_bit"
.LASF12:
	.string	"uint8_t"
.LASF32:
	.string	"blk32_erase_cmd"
.LASF96:
	.string	"arch_memcpy"
.LASF59:
	.string	"busy_bit"
.LASF27:
	.string	"exit_32bits_addr_cmd"
.LASF26:
	.string	"enter_32bits_addr_cmd"
.LASF2:
	.string	"short int"
.LASF70:
	.string	"c_read_mode"
.LASF33:
	.string	"blk64_erase_cmd"
.LASF19:
	.string	"clk_invert"
.LASF9:
	.string	"long long int"
.LASF71:
	.string	"c_rexit"
.LASF93:
	.string	"qcc74x_flash_get_jedec_id"
.LASF15:
	.string	"char"
.LASF22:
	.string	"reset_c_read_cmd"
.LASF6:
	.string	"long int"
.LASF23:
	.string	"reset_c_read_cmd_size"
.LASF63:
	.string	"qe_read_reg_len"
.LASF97:
	.string	"printf"
.LASF36:
	.string	"qpage_program_cmd"
.LASF3:
	.string	"__uint8_t"
.LASF61:
	.string	"wr_enable_read_reg_len"
.LASF28:
	.string	"sector_size"
.LASF67:
	.string	"write_reg_cmd"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"fr_dio_dmy_clk"
.LASF0:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF35:
	.string	"page_program_cmd"
.LASF52:
	.string	"qpi_page_program_cmd"
.LASF46:
	.string	"fast_read_qo_cmd"
.LASF13:
	.string	"uint16_t"
.LASF66:
	.string	"read_reg_cmd"
.LASF64:
	.string	"release_powerdown"
.LASF40:
	.string	"qpi_fast_read_cmd"
.LASF76:
	.string	"de_burst_wrap_cmd"
.LASF81:
	.string	"time_e_32k"
.LASF77:
	.string	"de_burst_wrap_cmd_dmy_clk"
.LASF5:
	.string	"short unsigned int"
.LASF47:
	.string	"fr_qo_dmy_clk"
.LASF44:
	.string	"fast_read_dio_cmd"
.LASF68:
	.string	"enter_qpi"
.LASF54:
	.string	"wr_enable_index"
.LASF73:
	.string	"burst_wrap_cmd_dmy_clk"
.LASF60:
	.string	"wr_enable_write_reg_len"
.LASF65:
	.string	"busy_read_reg_len"
.LASF99:
	.string	"./bsp/board/qcc74xdk/board_flash_psram.c"
.LASF24:
	.string	"jedec_id_cmd"
.LASF79:
	.string	"de_burst_wrap_data"
.LASF53:
	.string	"write_vreg_enable_cmd"
.LASF50:
	.string	"qpi_fast_read_qio_cmd"
.LASF8:
	.string	"long unsigned int"
.LASF89:
	.string	"pFlashCfg"
.LASF82:
	.string	"time_e_64k"
.LASF39:
	.string	"fr_dmy_clk"
.LASF92:
	.string	"flashJedecId"
.LASF17:
	.string	"c_read_support"
.LASF69:
	.string	"exit_qpi"
.LASF18:
	.string	"clk_delay"
.LASF87:
	.string	"spi_flash_cfg_type"
.LASF42:
	.string	"fast_read_do_cmd"
.LASF80:
	.string	"time_e_sector"
.LASF78:
	.string	"de_burst_wrap_data_mode"
.LASF72:
	.string	"burst_wrap_cmd"
.LASF55:
	.string	"qe_index"
.LASF85:
	.string	"pd_delay"
.LASF31:
	.string	"sector_erase_cmd"
.LASF51:
	.string	"qpi_fr_qio_dmy_clk"
.LASF95:
	.string	"qcc74x_flash_get_cfg"
.LASF11:
	.string	"unsigned int"
.LASF21:
	.string	"reset_cmd"
.LASF84:
	.string	"time_ce"
.LASF86:
	.string	"qe_data"
	.ident	"GCC: (GNU) 10.4.0"
