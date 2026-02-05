	.file	"qcc74x_clock.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_peripheral_clock_get,"ax",@progbits
	.align	1
	.globl	qcc74x_peripheral_clock_get
	.type	qcc74x_peripheral_clock_get, @function
qcc74x_peripheral_clock_get:
.LFB242:
	.file 1 "./drivers/lhal/src/qcc74x_clock.c"
	.loc 1 27 1
	.cfi_startproc
.LVL0:
	.loc 1 28 5
	.loc 1 28 12 is_stmt 0
	tail	qcc74x_peripheral_clock_get_by_id
.LVL1:
	.cfi_endproc
.LFE242:
	.size	qcc74x_peripheral_clock_get, .-qcc74x_peripheral_clock_get
	.section	.sclock_rlt_code../drivers/lhal/src/qcc74x_clock.c40,"ax",@progbits
	.align	1
	.globl	qcc74x_peripheral_clock_control
	.type	qcc74x_peripheral_clock_control, @function
qcc74x_peripheral_clock_control:
.LFB243:
	.loc 1 41 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 42 5
	.loc 1 42 12 is_stmt 0
	tail	qcc74x_peripheral_clock_control_by_id
.LVL3:
	.cfi_endproc
.LFE243:
	.size	qcc74x_peripheral_clock_control, .-qcc74x_peripheral_clock_control
	.section	.sclock_rlt_code../drivers/lhal/src/qcc74x_clock.c53,"ax",@progbits
	.align	1
	.globl	qcc74x_peripheral_clock_status_get
	.type	qcc74x_peripheral_clock_status_get, @function
qcc74x_peripheral_clock_status_get:
.LFB244:
	.loc 1 54 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 55 5
	.loc 1 55 12 is_stmt 0
	tail	qcc74x_peripheral_clock_status_get_by_id
.LVL5:
	.cfi_endproc
.LFE244:
	.size	qcc74x_peripheral_clock_status_get, .-qcc74x_peripheral_clock_status_get
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/soc/qcc743/std/include/qcc743_clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x176
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF23
	.byte	0xc
	.4byte	.LASF24
	.4byte	.LASF25
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
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
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0x35
	.byte	0x5c
	.4byte	0x75
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.byte	0x1
	.byte	0x9c
	.4byte	0xd6
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x35
	.byte	0x87
	.4byte	0x83
	.4byte	.LLST3
	.byte	0x7
	.4byte	.LVL5
	.4byte	0x155
	.byte	0
	.byte	0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0x28
	.byte	0x5c
	.4byte	0x75
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x1
	.byte	0x9c
	.4byte	0x11a
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x28
	.byte	0x84
	.4byte	0x83
	.4byte	.LLST1
	.byte	0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x28
	.byte	0x4a
	.4byte	0x11a
	.4byte	.LLST2
	.byte	0x7
	.4byte	.LVL3
	.4byte	0x161
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF18
	.byte	0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1a
	.byte	0xa
	.4byte	0x8f
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0x155
	.byte	0x6
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1a
	.byte	0x2e
	.4byte	0x83
	.4byte	.LLST0
	.byte	0x7
	.4byte	.LVL1
	.4byte	0x16d
	.byte	0
	.byte	0x8
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x4
	.byte	0x9f
	.byte	0x5
	.byte	0x8
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x4
	.byte	0x9e
	.byte	0x5
	.byte	0x8
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x4
	.byte	0x9d
	.byte	0xa
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
	.byte	0x6
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
	.byte	0x7
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5-1
	.4byte	.LFE244
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
	.4byte	.LFE243
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE243
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE242
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
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB243
	.4byte	.LFE243
	.4byte	.LFB244
	.4byte	.LFE244
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF8:
	.string	"long long int"
.LASF10:
	.string	"unsigned int"
.LASF17:
	.string	"enable"
.LASF6:
	.string	"__uint32_t"
.LASF11:
	.string	"uint8_t"
.LASF23:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF7:
	.string	"long unsigned int"
.LASF16:
	.string	"peri"
.LASF9:
	.string	"long long unsigned int"
.LASF24:
	.string	"./drivers/lhal/src/qcc74x_clock.c"
.LASF20:
	.string	"qcc74x_peripheral_clock_status_get_by_id"
.LASF19:
	.string	"qcc74x_peripheral_clock_get"
.LASF1:
	.string	"unsigned char"
.LASF5:
	.string	"__uint8_t"
.LASF13:
	.string	"char"
.LASF12:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF18:
	.string	"_Bool"
.LASF14:
	.string	"qcc74x_peripheral_clock_status_get"
.LASF3:
	.string	"short unsigned int"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"qcc74x_peripheral_clock_control_by_id"
.LASF22:
	.string	"qcc74x_peripheral_clock_get_by_id"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/lhal"
.LASF15:
	.string	"qcc74x_peripheral_clock_control"
	.ident	"GCC: (GNU) 10.4.0"
