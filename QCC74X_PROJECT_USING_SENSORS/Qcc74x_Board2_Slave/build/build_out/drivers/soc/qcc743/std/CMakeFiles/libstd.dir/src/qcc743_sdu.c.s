	.file	"qcc743_sdu.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.sdio_GEN_CARD2HOST_INT,"ax",@progbits
	.align	1
	.globl	sdio_GEN_CARD2HOST_INT
	.type	sdio_GEN_CARD2HOST_INT, @function
sdio_GEN_CARD2HOST_INT:
.LFB242:
	.file 1 "./drivers/soc/qcc743/std/src/qcc743_sdu.c"
	.loc 1 28 1
	.cfi_startproc
.LVL0:
	.loc 1 47 5
	.loc 1 47 16 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lrw	a5,a5,a0,2
	.loc 1 47 43
	sb	a1,48(a5)
	.loc 1 48 1
	ret
	.cfi_endproc
.LFE242:
	.size	sdio_GEN_CARD2HOST_INT, .-sdio_GEN_CARD2HOST_INT
	.section	.text.sdio_ioctl,"ax",@progbits
	.align	1
	.globl	sdio_ioctl
	.type	sdio_ioctl, @function
sdio_ioctl:
.LFB243:
	.loc 1 51 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 52 5
	li	a5,1
	bne	a1,a5,.L4
	.loc 1 56 9
	.loc 1 74 12 is_stmt 0
	li	a5,0
	.loc 1 56 12
	bne	a0,zero,.L2
.LBB2:
	.loc 1 58 13 is_stmt 1
	.loc 1 58 35 is_stmt 0
	li	a5,536924160
	lbu	a0,40(a5)
.LVL2:
	.loc 1 60 29
	lbu	a5,41(a5)
	.loc 1 58 35
	andi	a0,a0,0xff
.LVL3:
	.loc 1 60 13 is_stmt 1
	.loc 1 61 35 is_stmt 0
	slli	a5,a5,8
	andi	a5,a5,256
	.loc 1 60 23
	or	a5,a5,a0
.LVL4:
	.loc 1 63 13 is_stmt 1
	.loc 1 63 15 is_stmt 0
	bne	a5,zero,.L2
	.loc 1 65 27
	li	a5,512
.LVL5:
.L2:
.LBE2:
	.loc 1 75 1
	mv	a0,a5
	ret
.LVL6:
.L4:
	.loc 1 74 12
	li	a5,0
	j	.L2
	.cfi_endproc
.LFE243:
	.size	sdio_ioctl, .-sdio_ioctl
	.globl	flag_mport
	.globl	SdioFuncReg
	.section	.bss.flag_mport,"aw",@nobits
	.align	2
	.type	flag_mport, @object
	.size	flag_mport, 1
flag_mport:
	.zero	1
	.section	.data.SdioFuncReg,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	SdioFuncReg, @object
	.size	SdioFuncReg, 4
SdioFuncReg:
	.word	536924416
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/soc/qcc743/std/include/qcc743_sdu.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x465
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF64
	.byte	0xc
	.4byte	.LASF65
	.4byte	.LASF66
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x25
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
	.4byte	0x33
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
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x6
	.byte	0x7b
	.byte	0x4
	.byte	0x1d
	.byte	0x9
	.4byte	0x2ce
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x1f
	.byte	0xd
	.4byte	0x8f
	.byte	0
	.byte	0x7
	.4byte	.LASF17
	.byte	0x4
	.byte	0x20
	.byte	0xd
	.4byte	0x8f
	.byte	0x1
	.byte	0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x21
	.byte	0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0x7
	.4byte	.LASF19
	.byte	0x4
	.byte	0x22
	.byte	0xd
	.4byte	0x8f
	.byte	0x3
	.byte	0x7
	.4byte	.LASF20
	.byte	0x4
	.byte	0x23
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x7
	.4byte	.LASF21
	.byte	0x4
	.byte	0x24
	.byte	0xe
	.4byte	0x9b
	.byte	0x6
	.byte	0x7
	.4byte	.LASF22
	.byte	0x4
	.byte	0x25
	.byte	0xe
	.4byte	0x2ce
	.byte	0x8
	.byte	0x7
	.4byte	.LASF23
	.byte	0x4
	.byte	0x26
	.byte	0xd
	.4byte	0x8f
	.byte	0x28
	.byte	0x7
	.4byte	.LASF24
	.byte	0x4
	.byte	0x27
	.byte	0xd
	.4byte	0x2de
	.byte	0x29
	.byte	0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0x28
	.byte	0xd
	.4byte	0x8f
	.byte	0x30
	.byte	0x7
	.4byte	.LASF26
	.byte	0x4
	.byte	0x29
	.byte	0xd
	.4byte	0x2ee
	.byte	0x31
	.byte	0x7
	.4byte	.LASF27
	.byte	0x4
	.byte	0x2a
	.byte	0xd
	.4byte	0x8f
	.byte	0x34
	.byte	0x7
	.4byte	.LASF28
	.byte	0x4
	.byte	0x2b
	.byte	0xd
	.4byte	0x2ee
	.byte	0x35
	.byte	0x7
	.4byte	.LASF29
	.byte	0x4
	.byte	0x2c
	.byte	0xd
	.4byte	0x8f
	.byte	0x38
	.byte	0x7
	.4byte	.LASF30
	.byte	0x4
	.byte	0x2d
	.byte	0xd
	.4byte	0x2ee
	.byte	0x39
	.byte	0x7
	.4byte	.LASF31
	.byte	0x4
	.byte	0x2e
	.byte	0xd
	.4byte	0x8f
	.byte	0x3c
	.byte	0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x2f
	.byte	0xd
	.4byte	0x2ee
	.byte	0x3d
	.byte	0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x30
	.byte	0xe
	.4byte	0xa7
	.byte	0x40
	.byte	0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x31
	.byte	0xe
	.4byte	0xa7
	.byte	0x44
	.byte	0x7
	.4byte	.LASF35
	.byte	0x4
	.byte	0x32
	.byte	0xd
	.4byte	0x8f
	.byte	0x48
	.byte	0x7
	.4byte	.LASF36
	.byte	0x4
	.byte	0x33
	.byte	0xd
	.4byte	0x8f
	.byte	0x49
	.byte	0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x34
	.byte	0xd
	.4byte	0x8f
	.byte	0x4a
	.byte	0x7
	.4byte	.LASF38
	.byte	0x4
	.byte	0x35
	.byte	0xd
	.4byte	0x8f
	.byte	0x4b
	.byte	0x7
	.4byte	.LASF39
	.byte	0x4
	.byte	0x36
	.byte	0xd
	.4byte	0x2fe
	.byte	0x4c
	.byte	0x7
	.4byte	.LASF40
	.byte	0x4
	.byte	0x37
	.byte	0xd
	.4byte	0x2fe
	.byte	0x54
	.byte	0x7
	.4byte	.LASF41
	.byte	0x4
	.byte	0x38
	.byte	0xd
	.4byte	0x8f
	.byte	0x5c
	.byte	0x7
	.4byte	.LASF42
	.byte	0x4
	.byte	0x39
	.byte	0xd
	.4byte	0x8f
	.byte	0x5d
	.byte	0x7
	.4byte	.LASF43
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0x8f
	.byte	0x5e
	.byte	0x7
	.4byte	.LASF44
	.byte	0x4
	.byte	0x3b
	.byte	0xd
	.4byte	0x8f
	.byte	0x5f
	.byte	0x7
	.4byte	.LASF45
	.byte	0x4
	.byte	0x3c
	.byte	0xd
	.4byte	0x30e
	.byte	0x60
	.byte	0x7
	.4byte	.LASF46
	.byte	0x4
	.byte	0x3d
	.byte	0xe
	.4byte	0x9b
	.byte	0x64
	.byte	0x7
	.4byte	.LASF47
	.byte	0x4
	.byte	0x3e
	.byte	0xe
	.4byte	0x9b
	.byte	0x66
	.byte	0x7
	.4byte	.LASF48
	.byte	0x4
	.byte	0x3f
	.byte	0xd
	.4byte	0x8f
	.byte	0x68
	.byte	0x7
	.4byte	.LASF49
	.byte	0x4
	.byte	0x40
	.byte	0xd
	.4byte	0x8f
	.byte	0x69
	.byte	0x7
	.4byte	.LASF50
	.byte	0x4
	.byte	0x41
	.byte	0xd
	.4byte	0x8f
	.byte	0x6a
	.byte	0x7
	.4byte	.LASF51
	.byte	0x4
	.byte	0x42
	.byte	0xd
	.4byte	0x8f
	.byte	0x6b
	.byte	0x7
	.4byte	.LASF52
	.byte	0x4
	.byte	0x43
	.byte	0xe
	.4byte	0xa7
	.byte	0x6c
	.byte	0x7
	.4byte	.LASF53
	.byte	0x4
	.byte	0x44
	.byte	0xe
	.4byte	0xa7
	.byte	0x70
	.byte	0x7
	.4byte	.LASF54
	.byte	0x4
	.byte	0x45
	.byte	0xe
	.4byte	0xa7
	.byte	0x74
	.byte	0x7
	.4byte	.LASF55
	.byte	0x4
	.byte	0x46
	.byte	0xd
	.4byte	0x2ee
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x9b
	.4byte	0x2de
	.byte	0x9
	.4byte	0x88
	.byte	0xf
	.byte	0
	.byte	0x8
	.4byte	0x8f
	.4byte	0x2ee
	.byte	0x9
	.4byte	0x88
	.byte	0x6
	.byte	0
	.byte	0x8
	.4byte	0x8f
	.4byte	0x2fe
	.byte	0x9
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x8f
	.4byte	0x30e
	.byte	0x9
	.4byte	0x88
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x8f
	.4byte	0x31e
	.byte	0x9
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF56
	.byte	0x4
	.byte	0x47
	.byte	0x2e
	.4byte	0x32f
	.byte	0xa
	.4byte	0x31e
	.byte	0xb
	.byte	0x4
	.4byte	0xbc
	.byte	0xc
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x4
	.byte	0xa6
	.byte	0x1
	.4byte	0x350
	.byte	0xd
	.4byte	.LASF57
	.byte	0
	.byte	0xd
	.4byte	.LASF58
	.byte	0x1
	.byte	0
	.byte	0x3
	.4byte	.LASF59
	.byte	0x4
	.byte	0xac
	.byte	0x3
	.4byte	0x335
	.byte	0x8
	.4byte	0x32a
	.4byte	0x367
	.byte	0xe
	.byte	0
	.byte	0xa
	.4byte	0x35c
	.byte	0xf
	.4byte	.LASF60
	.byte	0x4
	.byte	0xb7
	.byte	0x23
	.4byte	0x367
	.byte	0x8
	.4byte	0x8f
	.4byte	0x383
	.byte	0xe
	.byte	0
	.byte	0xf
	.4byte	.LASF61
	.byte	0x4
	.byte	0xb8
	.byte	0x10
	.4byte	0x378
	.byte	0x8
	.4byte	0x32a
	.4byte	0x39f
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0xa
	.4byte	0x38f
	.byte	0x10
	.4byte	0x36c
	.byte	0x1
	.byte	0x3
	.byte	0x1c
	.4byte	0x39f
	.byte	0x5
	.byte	0x3
	.4byte	SdioFuncReg
	.byte	0x8
	.4byte	0x8f
	.4byte	0x3c6
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	0x383
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x3b6
	.byte	0x5
	.byte	0x3
	.4byte	flag_mport
	.byte	0x11
	.4byte	.LASF67
	.byte	0x1
	.byte	0x32
	.byte	0xa
	.4byte	0xa7
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x1
	.byte	0x9c
	.4byte	0x439
	.byte	0x12
	.4byte	.LASF62
	.byte	0x1
	.byte	0x32
	.byte	0x1e
	.4byte	0xa7
	.4byte	.LLST0
	.byte	0x13
	.string	"cmd"
	.byte	0x1
	.byte	0x32
	.byte	0x35
	.4byte	0x350
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.string	"arg"
	.byte	0x1
	.byte	0x32
	.byte	0x40
	.4byte	0xb3
	.byte	0x1
	.byte	0x5c
	.byte	0x14
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x15
	.4byte	.LASF68
	.byte	0x1
	.byte	0x3a
	.byte	0x16
	.4byte	0xa7
	.4byte	.LLST1
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF69
	.byte	0x1
	.byte	0x1b
	.byte	0x6
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.byte	0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0x1b
	.byte	0x26
	.4byte	0xa7
	.byte	0x1
	.byte	0x5a
	.byte	0x17
	.4byte	.LASF63
	.byte	0x1
	.byte	0x1b
	.byte	0x38
	.4byte	0x9b
	.byte	0x1
	.byte	0x5b
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0xd
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE243
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB243
	.4byte	.LFE243
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.string	"SqReadBase"
.LASF37:
	.string	"DnldQueueWrPtr"
.LASF60:
	.string	"SdioFuncReg"
.LASF19:
	.string	"HostIntStatus"
.LASF55:
	.string	"IoPort"
.LASF66:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/soc/qcc743/std"
.LASF17:
	.string	"HostIntCause"
.LASF22:
	.string	"RdLen"
.LASF2:
	.string	"short int"
.LASF54:
	.string	"DmaAddr"
.LASF68:
	.string	"blockSize"
.LASF9:
	.string	"long long int"
.LASF52:
	.string	"Config2"
.LASF18:
	.string	"HostIntMask"
.LASF4:
	.string	"__uint16_t"
.LASF67:
	.string	"sdio_ioctl"
.LASF47:
	.string	"Scratch1"
.LASF46:
	.string	"Scratch2"
.LASF69:
	.string	"sdio_GEN_CARD2HOST_INT"
.LASF12:
	.string	"uint8_t"
.LASF40:
	.string	"UpldQueue"
.LASF21:
	.string	"WrBitMap"
.LASF48:
	.string	"Ocr0"
.LASF49:
	.string	"Ocr1"
.LASF57:
	.string	"IOCTL_GET_CONFIG"
.LASF23:
	.string	"HostTransferStatus"
.LASF53:
	.string	"Debug"
.LASF24:
	.string	"reserved1"
.LASF26:
	.string	"reserved2"
.LASF28:
	.string	"reserved3"
.LASF30:
	.string	"reserved4"
.LASF32:
	.string	"reserved5"
.LASF42:
	.string	"reserved6"
.LASF45:
	.string	"reserved7"
.LASF3:
	.string	"__uint8_t"
.LASF51:
	.string	"Config"
.LASF35:
	.string	"RdIdx"
.LASF61:
	.string	"flag_mport"
.LASF44:
	.string	"IPRev1"
.LASF0:
	.string	"unsigned char"
.LASF27:
	.string	"CardIntMask"
.LASF62:
	.string	"port_id"
.LASF1:
	.string	"signed char"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint32_t"
.LASF50:
	.string	"Ocr2"
.LASF11:
	.string	"unsigned int"
.LASF13:
	.string	"uint16_t"
.LASF38:
	.string	"UpldQueueWrPtr"
.LASF65:
	.string	"./drivers/soc/qcc743/std/src/qcc743_sdu.c"
.LASF5:
	.string	"short unsigned int"
.LASF43:
	.string	"IPRev0"
.LASF15:
	.string	"char"
.LASF6:
	.string	"long int"
.LASF63:
	.string	"value"
.LASF16:
	.string	"HostToCardEvent"
.LASF64:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF8:
	.string	"long unsigned int"
.LASF25:
	.string	"CardToHostEvent"
.LASF7:
	.string	"__uint32_t"
.LASF36:
	.string	"WrIdx"
.LASF31:
	.string	"CardIntMode"
.LASF29:
	.string	"CardIntStatus"
.LASF34:
	.string	"SqWriteBase"
.LASF58:
	.string	"IOCTL_HID_GET_BLOCK_SIZE"
.LASF41:
	.string	"ChipRev"
.LASF56:
	.string	"pHidSdio_RegMap_t"
.LASF39:
	.string	"DnldQueue"
.LASF20:
	.string	"RdBitMap"
.LASF59:
	.string	"SDIO_CMD_TYPE"
	.ident	"GCC: (GNU) 10.4.0"
