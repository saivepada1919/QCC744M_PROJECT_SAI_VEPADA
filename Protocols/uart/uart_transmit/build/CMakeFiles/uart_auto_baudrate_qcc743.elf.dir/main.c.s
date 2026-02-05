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
	.string	"Hello\r\n"
	.align	2
.LC1:
	.string	"uart0"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB6:
	.file 1 "./examples/peripherals/uart/uart_transmit/main.c"
	.loc 1 15 1
	.cfi_startproc
	.loc 1 16 5
	.loc 1 15 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 16 5
	call	board_init
.LVL0:
	.loc 1 17 5 is_stmt 1
	call	board_uartx_gpio_init
.LVL1:
	.loc 1 19 5
	.loc 1 19 13 is_stmt 0
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	qcc74x_device_get_by_name
.LVL2:
	.loc 1 19 11
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 20 5 is_stmt 1
	.loc 1 20 8 is_stmt 0
	bne	a0,zero,.L2
.L3:
	.loc 1 21 9 is_stmt 1 discriminator 1
	.loc 1 21 18 discriminator 1
	.loc 1 21 15 discriminator 1
	j	.L3
.L2:
	addi	s0,a5,%lo(.LANCHOR0)
	.loc 1 24 5
	.loc 1 24 33 is_stmt 0
	li	a5,114688
	addi	a5,a5,512
	sw	a5,4(sp)
	li	a5,65536
	addi	a5,a5,768
	.loc 1 35 5
	addi	a1,sp,4
	.loc 1 24 33
	sw	a5,8(sp)
	sw	zero,12(sp)
	.loc 1 35 5 is_stmt 1
	.loc 1 15 1 is_stmt 0
	lui	s2,%hi(.LC0)
	.loc 1 35 5
	call	qcc74x_uart_init
.LVL3:
.L6:
	.loc 1 37 5 is_stmt 1 discriminator 1
	.loc 1 38 9 discriminator 1
	.loc 1 15 1 is_stmt 0 discriminator 1
	addi	s1,s2,%lo(.LC0)
.LVL4:
.L4:
.LBB4:
.LBB5:
	.loc 1 9 11 is_stmt 1
	.loc 1 9 12 is_stmt 0
	lbu	a1,0(s1)
	.loc 1 9 11
	bne	a1,zero,.L5
.LVL5:
.LBE5:
.LBE4:
	.loc 1 39 9 is_stmt 1 discriminator 1
	li	a0,1000
	call	qcc74x_mtimer_delay_ms
.LVL6:
	.loc 1 37 11 discriminator 1
	j	.L6
.LVL7:
.L5:
.LBB7:
.LBB6:
	.loc 1 10 9
	lw	a0,0(s0)
	.loc 1 10 40 is_stmt 0
	addi	s1,s1,1
.LVL8:
	.loc 1 10 9
	call	qcc74x_uart_putchar
.LVL9:
	j	.L4
.LBE6:
.LBE7:
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.globl	uart0
	.section	.bss.uart0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	uart0, @object
	.size	uart0, 4
uart0:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./drivers/lhal/include/qcc74x_uart.h"
	.file 6 "./bsp/board/qcc74xdk/./board.h"
	.file 7 "./drivers/lhal/include/qcc74x_mtimer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2b9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
	.4byte	.Ldebug_ranges0+0x18
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
	.4byte	.LASF21
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
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF20
	.byte	0x8
	.4byte	.LASF22
	.byte	0xc
	.byte	0x5
	.byte	0xe5
	.byte	0x8
	.4byte	0x1a2
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0xe6
	.byte	0xe
	.4byte	0x8f
	.byte	0
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0xe7
	.byte	0xd
	.4byte	0x83
	.byte	0x4
	.byte	0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0xe8
	.byte	0xd
	.4byte	0x83
	.byte	0x5
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0xe9
	.byte	0xd
	.4byte	0x83
	.byte	0x6
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0xea
	.byte	0xd
	.4byte	0x83
	.byte	0x7
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0xeb
	.byte	0xd
	.4byte	0x83
	.byte	0x8
	.byte	0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0xec
	.byte	0xd
	.4byte	0x83
	.byte	0x9
	.byte	0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0xed
	.byte	0xd
	.4byte	0x83
	.byte	0xa
	.byte	0x9
	.4byte	.LASF31
	.byte	0x5
	.byte	0xee
	.byte	0xd
	.4byte	0x83
	.byte	0xb
	.byte	0
	.byte	0xb
	.4byte	.LASF41
	.byte	0x1
	.byte	0x5
	.byte	0x19
	.4byte	0x1b4
	.byte	0x5
	.byte	0x3
	.4byte	uart0
	.byte	0x7
	.byte	0x4
	.4byte	0xaf
	.byte	0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0xe
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x259
	.byte	0xd
	.string	"cfg"
	.byte	0x1
	.byte	0x18
	.byte	0x21
	.4byte	0x11f
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0xe
	.4byte	0x259
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x26
	.byte	0x9
	.4byte	0x20a
	.byte	0xf
	.4byte	0x266
	.4byte	.LLST0
	.byte	0x10
	.4byte	.LVL9
	.4byte	0x273
	.byte	0
	.byte	0x10
	.4byte	.LVL0
	.4byte	0x280
	.byte	0x10
	.4byte	.LVL1
	.4byte	0x28c
	.byte	0x11
	.4byte	.LVL2
	.4byte	0x298
	.4byte	0x233
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x11
	.4byte	.LVL3
	.4byte	0x2a4
	.4byte	0x247
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0x13
	.4byte	.LVL6
	.4byte	0x2b0
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LASF43
	.byte	0x1
	.byte	0x7
	.byte	0xd
	.byte	0x1
	.4byte	0x273
	.byte	0x15
	.string	"str"
	.byte	0x1
	.byte	0x7
	.byte	0x2a
	.4byte	0xa9
	.byte	0
	.byte	0x16
	.4byte	.LASF32
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x129
	.byte	0x5
	.byte	0x17
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x6
	.byte	0x4
	.byte	0x6
	.byte	0x17
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0x6
	.byte	0x6
	.byte	0x17
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.byte	0x17
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x5
	.byte	0xfb
	.byte	0x6
	.byte	0x17
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x27
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
	.byte	0xe
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
	.byte	0xf
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x6
	.byte	0x3
	.4byte	.LC0
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
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
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"bit_order"
.LASF38:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"__uint8_t"
.LASF26:
	.string	"stop_bits"
.LASF32:
	.string	"qcc74x_uart_putchar"
.LASF20:
	.string	"_Bool"
.LASF24:
	.string	"direction"
.LASF34:
	.string	"board_uartx_gpio_init"
.LASF37:
	.string	"qcc74x_mtimer_delay_ms"
.LASF43:
	.string	"uart_send_string"
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
.LASF31:
	.string	"rx_fifo_threshold"
.LASF6:
	.string	"__uint32_t"
.LASF25:
	.string	"data_bits"
.LASF21:
	.string	"qcc74x_device_s"
.LASF42:
	.string	"main"
.LASF10:
	.string	"unsigned int"
.LASF29:
	.string	"flow_ctrl"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF22:
	.string	"qcc74x_uart_config_s"
.LASF15:
	.string	"reg_base"
.LASF16:
	.string	"irq_num"
.LASF36:
	.string	"qcc74x_uart_init"
.LASF8:
	.string	"long long int"
.LASF39:
	.string	"./examples/peripherals/uart/uart_transmit/main.c"
.LASF23:
	.string	"baudrate"
.LASF33:
	.string	"board_init"
.LASF40:
	.string	"./examples/peripherals/uart/uart_transmit/build"
.LASF2:
	.string	"short int"
.LASF30:
	.string	"tx_fifo_threshold"
.LASF12:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF35:
	.string	"qcc74x_device_get_by_name"
.LASF27:
	.string	"parity"
.LASF14:
	.string	"name"
.LASF41:
	.string	"uart0"
	.ident	"GCC: (GNU) 10.4.0"
