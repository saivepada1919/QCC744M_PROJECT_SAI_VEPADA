	.file	"qcc74x_cks.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_cks_reset,"ax",@progbits
	.align	1
	.globl	qcc74x_cks_reset
	.type	qcc74x_cks_reset, @function
qcc74x_cks_reset:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_cks.c"
	.loc 1 5 1
	.cfi_startproc
.LVL0:
	.loc 1 9 5
	.loc 1 10 5
	.loc 1 12 5
	.loc 1 13 5
	.loc 1 13 16 is_stmt 0
	lw	a4,4(a0)
	.loc 1 13 12
	lw	a5,0(a4)
.LVL1:
	.loc 1 14 5 is_stmt 1
	.loc 1 14 12 is_stmt 0
	ori	a5,a5,1
.LVL2:
	.loc 1 15 5 is_stmt 1
	.loc 1 15 58 is_stmt 0
	sw	a5,0(a4)
.LVL3:
	.loc 1 17 1
	ret
	.cfi_endproc
.LFE5:
	.size	qcc74x_cks_reset, .-qcc74x_cks_reset
	.section	.text.qcc74x_cks_set_endian,"ax",@progbits
	.align	1
	.globl	qcc74x_cks_set_endian
	.type	qcc74x_cks_set_endian, @function
qcc74x_cks_set_endian:
.LFB6:
	.loc 1 20 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 24 5
	.loc 1 26 5
	.loc 1 27 5
	.loc 1 27 7 is_stmt 0
	lw	a5,4(a0)
	.loc 1 27 68
	slli	a1,a1,1
.LVL5:
	.loc 1 27 58
	sw	a1,0(a5)
.LVL6:
	.loc 1 29 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_cks_set_endian, .-qcc74x_cks_set_endian
	.section	.text.qcc74x_cks_compute,"ax",@progbits
	.align	1
	.globl	qcc74x_cks_compute
	.type	qcc74x_cks_compute, @function
qcc74x_cks_compute:
.LFB7:
	.loc 1 32 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 36 5
	.loc 1 37 5
	.loc 1 39 5
	.loc 1 39 14 is_stmt 0
	lw	a4,4(a0)
.LVL8:
	.loc 1 40 5 is_stmt 1
	.loc 1 40 12 is_stmt 0
	li	a5,0
.LVL9:
.L4:
	.loc 1 40 17 is_stmt 1 discriminator 1
	.loc 1 40 5 is_stmt 0 discriminator 1
	bne	a5,a2,.L5
	.loc 1 44 5 is_stmt 1
	.loc 1 44 25 is_stmt 0
	lw	a0,8(a4)
.LVL10:
	.loc 1 46 1
	extu	a0,a0,15,0
	ret
.LVL11:
.L5:
	.loc 1 41 9 is_stmt 1 discriminator 3
	.loc 1 41 69 is_stmt 0 discriminator 3
	lrbu	a3,a1,a5,0
	.loc 1 40 30 discriminator 3
	addi	a5,a5,1
.LVL12:
	.loc 1 41 62 discriminator 3
	sw	a3,4(a4)
	.loc 1 40 29 is_stmt 1 discriminator 3
.LVL13:
	j	.L4
	.cfi_endproc
.LFE7:
	.size	qcc74x_cks_compute, .-qcc74x_cks_compute
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x238
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
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
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x94
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x88
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x6
	.4byte	0xcd
	.byte	0x7
	.byte	0x4
	.4byte	0xd4
	.byte	0x8
	.4byte	.LASF31
	.byte	0x10
	.byte	0x4
	.byte	0x67
	.byte	0x8
	.4byte	0x148
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xd9
	.byte	0
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x69
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x9b
	.byte	0x9
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x9b
	.byte	0xa
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0x9b
	.byte	0xb
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x6e
	.byte	0xb
	.4byte	0xcb
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x1f
	.byte	0xa
	.4byte	0xa7
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ab
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0x1f
	.byte	0x35
	.4byte	0x1ab
	.4byte	.LLST3
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x1f
	.byte	0x43
	.4byte	0x1b1
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1f
	.byte	0x52
	.4byte	0xb3
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.4byte	.LASF19
	.byte	0x1
	.byte	0x24
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xdf
	.byte	0x7
	.byte	0x4
	.4byte	0x9b
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fc
	.byte	0x11
	.string	"dev"
	.byte	0x1
	.byte	0x13
	.byte	0x34
	.4byte	0x1ab
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.byte	0x13
	.byte	0x41
	.4byte	0x9b
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0x18
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST2
	.byte	0
	.byte	0x14
	.4byte	.LASF34
	.byte	0x1
	.byte	0x4
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.string	"dev"
	.byte	0x1
	.byte	0x4
	.byte	0x2f
	.4byte	0x1ab
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0x13
	.4byte	.LASF19
	.byte	0x1
	.byte	0xa
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST0
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x2
	.byte	0x17
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
	.byte	0x14
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL6
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL3
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
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
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF3:
	.string	"__uint8_t"
.LASF16:
	.string	"uintptr_t"
.LASF11:
	.string	"__uintptr_t"
.LASF24:
	.string	"data"
.LASF23:
	.string	"user_data"
.LASF1:
	.string	"unsigned char"
.LASF34:
	.string	"qcc74x_cks_reset"
.LASF8:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF22:
	.string	"dev_type"
.LASF21:
	.string	"sub_idx"
.LASF4:
	.string	"__uint16_t"
.LASF32:
	.string	"qcc74x_cks_compute"
.LASF7:
	.string	"__uint32_t"
.LASF26:
	.string	"endian"
.LASF31:
	.string	"qcc74x_device_s"
.LASF12:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF30:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/lhal"
.LASF19:
	.string	"reg_base"
.LASF29:
	.string	"./drivers/lhal/src/qcc74x_cks.c"
.LASF27:
	.string	"regval"
.LASF9:
	.string	"long long int"
.LASF18:
	.string	"name"
.LASF33:
	.string	"qcc74x_cks_set_endian"
.LASF2:
	.string	"short int"
.LASF14:
	.string	"uint16_t"
.LASF15:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF17:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF20:
	.string	"irq_num"
.LASF25:
	.string	"length"
	.ident	"GCC: (GNU) 10.4.0"
