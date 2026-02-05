	.file	"vprintf.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.vprintf,"ax",@progbits
	.align	1
	.globl	vprintf
	.type	vprintf, @function
vprintf:
.LFB5:
	.file 1 "./components/libc/vprintf.c"
	.loc 1 35 1
	.cfi_startproc
.LVL0:
	.loc 1 36 5
	.loc 1 38 5
	.loc 1 38 17 is_stmt 0
	lui	a5,%hi(console)
	.loc 1 38 8
	lw	a5,%lo(console)(a5)
	beq	a5,zero,.L2
	.loc 1 42 5 is_stmt 1
	.loc 1 42 11 is_stmt 0
	tail	console_vsnprintf
.LVL1:
.L2:
	.loc 1 45 1
	li	a0,0
.LVL2:
	ret
	.cfi_endproc
.LFE5:
	.size	vprintf, .-vprintf
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stdarg.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 6 "./drivers/lhal/include/qcc74x_core.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1b6
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
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	.LASF26
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x7
	.4byte	0xa3
	.byte	0x8
	.byte	0x4
	.4byte	0xaa
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x28
	.byte	0x1b
	.4byte	0x9d
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x2e
	.byte	0x18
	.4byte	0xb5
	.byte	0x9
	.4byte	.LASF27
	.byte	0x10
	.byte	0x6
	.byte	0x67
	.byte	0x8
	.4byte	0x136
	.byte	0xa
	.4byte	.LASF16
	.byte	0x6
	.byte	0x68
	.byte	0x11
	.4byte	0xaf
	.byte	0
	.byte	0xa
	.4byte	.LASF17
	.byte	0x6
	.byte	0x69
	.byte	0xe
	.4byte	0x8f
	.byte	0x4
	.byte	0xa
	.4byte	.LASF18
	.byte	0x6
	.byte	0x6a
	.byte	0xd
	.4byte	0x83
	.byte	0x8
	.byte	0xb
	.string	"idx"
	.byte	0x6
	.byte	0x6b
	.byte	0xd
	.4byte	0x83
	.byte	0x9
	.byte	0xa
	.4byte	.LASF19
	.byte	0x6
	.byte	0x6c
	.byte	0xd
	.4byte	0x83
	.byte	0xa
	.byte	0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0x6d
	.byte	0xd
	.4byte	0x83
	.byte	0xb
	.byte	0xa
	.4byte	.LASF21
	.byte	0x6
	.byte	0x6e
	.byte	0xb
	.4byte	0x9b
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF22
	.byte	0xc
	.4byte	.LASF28
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.4byte	0x149
	.byte	0x8
	.byte	0x4
	.4byte	0xcd
	.byte	0xd
	.4byte	.LASF29
	.byte	0x5
	.byte	0xd0
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ad
	.byte	0xe
	.string	"fmt"
	.byte	0x1
	.byte	0x22
	.byte	0x19
	.4byte	0xaf
	.4byte	.LLST0
	.byte	0xe
	.string	"ap"
	.byte	0x1
	.byte	0x22
	.byte	0x26
	.4byte	0xc1
	.4byte	.LLST1
	.byte	0xf
	.string	"len"
	.byte	0x1
	.byte	0x24
	.byte	0x9
	.4byte	0x75
	.byte	0x10
	.4byte	.LVL1
	.4byte	0x1ad
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF30
	.4byte	.LASF30
	.byte	0x1
	.byte	0x21
	.byte	0xc
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xd
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
	.byte	0xe
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
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LVL1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1-1
	.4byte	.LVL1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
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
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"__uint8_t"
.LASF26:
	.string	"__builtin_va_list"
.LASF29:
	.string	"vprintf"
.LASF15:
	.string	"va_list"
.LASF21:
	.string	"user_data"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF20:
	.string	"dev_type"
.LASF19:
	.string	"sub_idx"
.LASF25:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/components/libc"
.LASF28:
	.string	"console"
.LASF6:
	.string	"__uint32_t"
.LASF14:
	.string	"__gnuc_va_list"
.LASF27:
	.string	"qcc74x_device_s"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF17:
	.string	"reg_base"
.LASF8:
	.string	"long long int"
.LASF16:
	.string	"name"
.LASF24:
	.string	"./components/libc/vprintf.c"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"irq_num"
.LASF22:
	.string	"_Bool"
.LASF30:
	.string	"console_vsnprintf"
	.ident	"GCC: (GNU) 10.4.0"
