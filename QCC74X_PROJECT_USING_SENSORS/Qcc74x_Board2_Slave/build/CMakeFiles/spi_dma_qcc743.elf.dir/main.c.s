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
	.string	"spi0"
	.align	2
.LC2:
	.string	"Slave: SPI Pins 5,6,7,8 Ready. Waiting for DHT11 data...\r\n"
	.align	2
.LC3:
	.string	"Slave: Received DHT11 Data -> Temperature: %d C, Humidity: %d %%\r\n"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB5:
	.file 1 "./examples/peripherals/spi/spi_slave/main.c"
	.loc 1 15 16
	.cfi_startproc
	.loc 1 16 5
	.loc 1 15 16 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 16 5
	call	board_init
.LVL0:
	.loc 1 17 5 is_stmt 1
	.loc 1 17 12 is_stmt 0
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	qcc74x_device_get_by_name
.LVL1:
	.loc 1 20 5
	li	s1,8192
	.loc 1 17 10
	lui	s0,%hi(.LANCHOR0)
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 20 5
	addi	a2,s1,-1279
	li	a1,5
	.loc 1 17 10
	sw	a0,0(s0)
	.loc 1 20 5 is_stmt 1
	call	qcc74x_gpio_init
.LVL2:
	.loc 1 21 5
	lw	a0,0(s0)
	addi	a2,s1,-1279
	li	a1,6
	call	qcc74x_gpio_init
.LVL3:
	.loc 1 22 5
	lw	a0,0(s0)
	addi	a2,s1,-1279
	li	a1,7
	call	qcc74x_gpio_init
.LVL4:
	.loc 1 23 5
	lw	a0,0(s0)
	addi	a2,s1,-1279
	li	a1,8
	call	qcc74x_gpio_init
.LVL5:
	.loc 1 25 5
	.loc 1 25 32 is_stmt 0
	li	a5,499712
	addi	a5,a5,288
	sw	a5,4(sp)
	.loc 1 26 12
	lui	a0,%hi(.LC1)
	.loc 1 25 32
	li	a5,65536
	addi	a5,a5,769
	.loc 1 26 12
	addi	a0,a0,%lo(.LC1)
	.loc 1 25 32
	sw	a5,8(sp)
	sw	zero,12(sp)
	.loc 1 26 5 is_stmt 1
	.loc 1 26 12 is_stmt 0
	call	qcc74x_device_get_by_name
.LVL6:
	.loc 1 26 10
	lui	s0,%hi(.LANCHOR1)
	.loc 1 27 5
	addi	a1,sp,4
	.loc 1 26 10
	sw	a0,%lo(.LANCHOR1)(s0)
	.loc 1 27 5 is_stmt 1
	call	qcc74x_spi_init
.LVL7:
	.loc 1 29 5
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	printf
.LVL8:
	addi	s0,s0,%lo(.LANCHOR1)
	.loc 1 36 9 is_stmt 0
	lui	s1,%hi(.LC3)
.L2:
	.loc 1 31 5 is_stmt 1 discriminator 1
	.loc 1 32 5 discriminator 1
	.loc 1 34 9 discriminator 1
	lw	a0,0(s0)
	mv	a2,sp
	li	a3,2
	li	a1,0
	call	qcc74x_spi_poll_exchange
.LVL9:
	.loc 1 36 9 discriminator 1
	lbu	a2,1(sp)
	lbu	a1,0(sp)
	addi	a0,s1,%lo(.LC3)
	call	printf
.LVL10:
	.loc 1 32 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.bss.gpio,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gpio, @object
	.size	gpio, 4
gpio:
	.zero	4
	.section	.bss.spi0,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	spi0, @object
	.size	spi0, 4
spi0:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./drivers/lhal/include/qcc74x_spi.h"
	.file 6 "./bsp/board/qcc74xdk/./board.h"
	.file 7 "./drivers/lhal/include/qcc74x_gpio.h"
	.file 8 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x342
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF40
	.byte	0xc
	.4byte	.LASF41
	.4byte	.LASF42
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
	.4byte	.LASF20
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
	.byte	0x8
	.4byte	.LASF21
	.byte	0xc
	.byte	0x5
	.byte	0xb5
	.byte	0x8
	.4byte	0x18e
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0xb6
	.byte	0xe
	.4byte	0x8f
	.byte	0
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0xb7
	.byte	0xd
	.4byte	0x83
	.byte	0x4
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0xb8
	.byte	0xd
	.4byte	0x83
	.byte	0x5
	.byte	0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0xb9
	.byte	0xd
	.4byte	0x83
	.byte	0x6
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0xba
	.byte	0xd
	.4byte	0x83
	.byte	0x7
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0xbb
	.byte	0xd
	.4byte	0x83
	.byte	0x8
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0xbc
	.byte	0xd
	.4byte	0x83
	.byte	0x9
	.byte	0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0xbd
	.byte	0xd
	.4byte	0x83
	.byte	0xa
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc
	.byte	0x20
	.4byte	0x1a0
	.byte	0x5
	.byte	0x3
	.4byte	spi0
	.byte	0x7
	.byte	0x4
	.4byte	0xaf
	.byte	0xb
	.4byte	.LASF31
	.byte	0x1
	.byte	0xd
	.byte	0x20
	.4byte	0x1a0
	.byte	0x5
	.byte	0x3
	.4byte	gpio
	.byte	0xc
	.4byte	.LASF43
	.byte	0x1
	.byte	0xf
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ec
	.byte	0xb
	.4byte	.LASF32
	.byte	0x1
	.byte	0x19
	.byte	0x20
	.4byte	0x118
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0xb
	.4byte	.LASF33
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x2ec
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0xd
	.4byte	.LVL0
	.4byte	0x2fc
	.byte	0xe
	.4byte	.LVL1
	.4byte	0x308
	.4byte	0x210
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0xe
	.4byte	.LVL2
	.4byte	0x314
	.4byte	0x22a
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0xe
	.4byte	.LVL3
	.4byte	0x314
	.4byte	0x244
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x36
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0xe
	.4byte	.LVL4
	.4byte	0x314
	.4byte	0x25e
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x37
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0xe
	.4byte	.LVL5
	.4byte	0x314
	.4byte	0x278
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x38
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0xe
	.4byte	.LVL6
	.4byte	0x308
	.4byte	0x28f
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0xe
	.4byte	.LVL7
	.4byte	0x321
	.4byte	0x2a3
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0xe
	.4byte	.LVL8
	.4byte	0x32d
	.4byte	0x2ba
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0xe
	.4byte	.LVL9
	.4byte	0x339
	.4byte	0x2d8
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0xf
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0xf
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x10
	.4byte	.LVL10
	.4byte	0x32d
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0x83
	.4byte	0x2fc
	.byte	0x12
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.byte	0x13
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x6
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.byte	0x14
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x7
	.2byte	0x199
	.byte	0x6
	.byte	0x13
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x5
	.byte	0xca
	.byte	0x6
	.byte	0x13
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x8
	.byte	0xc8
	.byte	0x5
	.byte	0x13
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x5
	.byte	0xf5
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
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
.LASF40:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"__uint8_t"
.LASF36:
	.string	"qcc74x_gpio_init"
.LASF33:
	.string	"rx_data"
.LASF21:
	.string	"qcc74x_spi_config_s"
.LASF2:
	.string	"short int"
.LASF35:
	.string	"qcc74x_device_get_by_name"
.LASF26:
	.string	"bit_order"
.LASF19:
	.string	"user_data"
.LASF1:
	.string	"unsigned char"
.LASF30:
	.string	"spi0"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF42:
	.string	"./examples/peripherals/spi/spi_slave/build"
.LASF18:
	.string	"dev_type"
.LASF17:
	.string	"sub_idx"
.LASF32:
	.string	"spi_cfg"
.LASF29:
	.string	"rx_fifo_threshold"
.LASF6:
	.string	"__uint32_t"
.LASF20:
	.string	"qcc74x_device_s"
.LASF43:
	.string	"main"
.LASF10:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF24:
	.string	"mode"
.LASF15:
	.string	"reg_base"
.LASF41:
	.string	"./examples/peripherals/spi/spi_slave/main.c"
.LASF8:
	.string	"long long int"
.LASF14:
	.string	"name"
.LASF34:
	.string	"board_init"
.LASF38:
	.string	"printf"
.LASF23:
	.string	"role"
.LASF22:
	.string	"freq"
.LASF28:
	.string	"tx_fifo_threshold"
.LASF27:
	.string	"byte_order"
.LASF39:
	.string	"qcc74x_spi_poll_exchange"
.LASF37:
	.string	"qcc74x_spi_init"
.LASF12:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF25:
	.string	"data_width"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"irq_num"
	.ident	"GCC: (GNU) 10.4.0"
