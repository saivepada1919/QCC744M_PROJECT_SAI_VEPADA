	.file	"sdk_version.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"SW image:gpio_input_output_qcc74xdk"
	.align	2
.LC1:
	.string	"compile_time:Feb  5 2026 15:11:00"
	.align	2
.LC2:
	.string	"component_version_sdk_2.0.97"
	.section	.version.sdk,"aw"
	.align	2
	.type	version_sdk, @object
	.size	version_sdk, 4
version_sdk:
	.word	.LC2
	.section	.version.sdk.10,"aw"
	.align	2
	.type	sw_image, @object
	.size	sw_image, 4
sw_image:
	.word	.LC0
	.section	.version.sdk.9,"aw"
	.align	2
	.type	compile_time, @object
	.size	compile_time, 4
compile_time:
	.word	.LC1
	.text
.Letext0:
	.file 1 "./bsp/sdk_version.c"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x62
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF3
	.byte	0xc
	.4byte	.LASF4
	.4byte	.LASF5
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x1
	.byte	0x8
	.byte	0x14
	.4byte	0x2f
	.byte	0x5
	.byte	0x3
	.4byte	version_sdk
	.byte	0x3
	.byte	0x4
	.4byte	0x3c
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.byte	0x5
	.4byte	0x35
	.byte	0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x9
	.byte	0x14
	.4byte	0x2f
	.byte	0x5
	.byte	0x3
	.4byte	compile_time
	.byte	0x2
	.4byte	.LASF2
	.byte	0x1
	.byte	0xa
	.byte	0x14
	.4byte	0x2f
	.byte	0x5
	.byte	0x3
	.4byte	sw_image
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
	.byte	0x10
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2
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
	.byte	0x3
	.byte	0xf
	.byte	0
	.byte	0xb
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x14
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF1:
	.string	"compile_time"
.LASF0:
	.string	"version_sdk"
.LASF2:
	.string	"sw_image"
.LASF3:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF4:
	.string	"./bsp/sdk_version.c"
.LASF5:
	.string	"./examples/peripherals/gpio/gpio_input_output/build"
.LASF6:
	.string	"char"
	.ident	"GCC: (GNU) 10.4.0"
