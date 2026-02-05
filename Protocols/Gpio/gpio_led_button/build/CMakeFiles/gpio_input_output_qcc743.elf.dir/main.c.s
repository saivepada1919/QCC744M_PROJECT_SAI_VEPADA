	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"gpio"
	.align	2
.LC1:
	.string	"gpio output\r\n"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB5:
	.file 1 "./examples/peripherals/gpio/gpio_input_output/main.c"
	.loc 1 7 1
	.cfi_startproc
	.loc 1 8 5
	.loc 1 7 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 8 5
	call	board_init
.LVL0:
	.loc 1 10 5 is_stmt 1
	.loc 1 10 12 is_stmt 0
	lui	a0,%hi(.LC0)
	.loc 1 10 10
	lui	s0,%hi(.LANCHOR0)
	.loc 1 10 12
	addi	a0,a0,%lo(.LC0)
	call	qcc74x_device_get_by_name
.LVL1:
	.loc 1 10 10
	addi	s1,s0,%lo(.LANCHOR0)
	sw	a0,0(s1)
	.loc 1 11 5 is_stmt 1
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL2:
	.loc 1 12 5
	lw	a0,0(s1)
	li	a2,4096
	addi	a2,a2,-1472
	li	a1,0
	call	qcc74x_gpio_init
.LVL3:
	addi	s0,s0,%lo(.LANCHOR0)
.L2:
	.loc 1 14 5 discriminator 1
	.loc 1 15 9 discriminator 1
	lw	a0,0(s0)
	li	a1,0
	call	qcc74x_gpio_set
.LVL4:
	.loc 1 16 9 discriminator 1
	li	a0,2000
	call	qcc74x_mtimer_delay_ms
.LVL5:
	.loc 1 18 9 discriminator 1
	lw	a0,0(s0)
	li	a1,0
	call	qcc74x_gpio_reset
.LVL6:
	.loc 1 19 9 discriminator 1
	li	a0,2000
	call	qcc74x_mtimer_delay_ms
.LVL7:
	.loc 1 14 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.globl	gpio
	.section	.bss.gpio,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gpio, @object
	.size	gpio, 4
gpio:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./bsp/board/qcc74xdk/./board.h"
	.file 6 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 7 "./drivers/lhal/include/qcc74x_gpio.h"
	.file 8 "./drivers/lhal/include/qcc74x_mtimer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x23c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x6
	.4byte	0x9d
	.byte	0x7
	.byte	0x4
	.4byte	0xa4
	.byte	0x8
	.4byte	.LASF30
	.byte	0x10
	.byte	0x4
	.byte	0x67
	.byte	0x8
	.4byte	0x118
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xa9
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x69
	.byte	0xe
	.4byte	0x8f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x83
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x83
	.byte	0x9
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x83
	.byte	0xa
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0x83
	.byte	0xb
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x6e
	.byte	0xb
	.4byte	0x9b
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0x4
	.byte	0x19
	.4byte	0x12a
	.byte	0x5
	.byte	0x3
	.4byte	gpio
	.byte	0x7
	.byte	0x4
	.4byte	0xaf
	.byte	0xc
	.4byte	.LASF32
	.byte	0x1
	.byte	0x6
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e8
	.byte	0xd
	.4byte	.LVL0
	.4byte	0x1e8
	.byte	0xe
	.4byte	.LVL1
	.4byte	0x1f4
	.4byte	0x16a
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xe
	.4byte	.LVL2
	.4byte	0x200
	.4byte	0x181
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0xe
	.4byte	.LVL3
	.4byte	0x20c
	.4byte	0x19b
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0xa40
	.byte	0
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x219
	.4byte	0x1ae
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0xe
	.4byte	.LVL5
	.4byte	0x226
	.4byte	0x1c3
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0xe
	.4byte	.LVL6
	.4byte	0x232
	.4byte	0x1d6
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x10
	.4byte	.LVL7
	.4byte	0x226
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x7d0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF20
	.4byte	.LASF20
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x11
	.4byte	.LASF21
	.4byte	.LASF21
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.byte	0x11
	.4byte	.LASF22
	.4byte	.LASF22
	.byte	0x6
	.byte	0xc8
	.byte	0x5
	.byte	0x12
	.4byte	.LASF23
	.4byte	.LASF23
	.byte	0x7
	.2byte	0x199
	.byte	0x6
	.byte	0x12
	.4byte	.LASF24
	.4byte	.LASF24
	.byte	0x7
	.2byte	0x1bb
	.byte	0x6
	.byte	0x11
	.4byte	.LASF25
	.4byte	.LASF25
	.byte	0x8
	.byte	0x27
	.byte	0x6
	.byte	0x12
	.4byte	.LASF26
	.4byte	.LASF26
	.byte	0x7
	.2byte	0x1d5
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
	.byte	0xd
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
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
.LASF31:
	.string	"gpio"
.LASF27:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"__uint8_t"
.LASF23:
	.string	"qcc74x_gpio_init"
.LASF29:
	.string	"./examples/peripherals/gpio/gpio_input_output/build"
.LASF25:
	.string	"qcc74x_mtimer_delay_ms"
.LASF19:
	.string	"user_data"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF18:
	.string	"dev_type"
.LASF17:
	.string	"sub_idx"
.LASF26:
	.string	"qcc74x_gpio_reset"
.LASF24:
	.string	"qcc74x_gpio_set"
.LASF6:
	.string	"__uint32_t"
.LASF30:
	.string	"qcc74x_device_s"
.LASF32:
	.string	"main"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF15:
	.string	"reg_base"
.LASF16:
	.string	"irq_num"
.LASF8:
	.string	"long long int"
.LASF14:
	.string	"name"
.LASF20:
	.string	"board_init"
.LASF22:
	.string	"printf"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF28:
	.string	"./examples/peripherals/gpio/gpio_input_output/main.c"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"qcc74x_device_get_by_name"
	.ident	"GCC: (GNU) 10.4.0"
