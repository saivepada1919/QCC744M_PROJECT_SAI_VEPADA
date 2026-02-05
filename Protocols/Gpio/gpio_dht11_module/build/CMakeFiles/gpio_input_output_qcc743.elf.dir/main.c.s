	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.dht11_read,"ax",@progbits
	.align	1
	.globl	dht11_read
	.type	dht11_read, @function
dht11_read:
.LFB6:
	.file 1 "./examples/peripherals/gpio/gpio_dht11_module/main.c"
	.loc 1 16 1
	.cfi_startproc
.LVL0:
	.loc 1 17 5
	.loc 1 16 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	.loc 1 21 5
	lui	s0,%hi(.LANCHOR0)
	.loc 1 16 1
	sw	s1,36(sp)
	.cfi_offset 9, -12
	.loc 1 21 5
	addi	s1,s0,%lo(.LANCHOR0)
	.loc 1 16 1
	sw	s3,28(sp)
	.cfi_offset 19, -20
	mv	s3,a0
	.loc 1 21 5
	lw	a0,0(s1)
.LVL1:
	li	a2,64
	.loc 1 16 1
	sw	s4,24(sp)
	.cfi_offset 20, -24
	mv	s4,a1
	.loc 1 21 5
	li	a1,3
.LVL2:
	.loc 1 16 1
	sw	ra,44(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 17 13
	sw	zero,8(sp)
	sb	zero,12(sp)
	.loc 1 18 5 is_stmt 1
	.loc 1 21 5
	call	qcc74x_gpio_init
.LVL3:
	.loc 1 22 5
	lw	a0,0(s1)
	li	a1,3
	.loc 1 31 13 is_stmt 0
	li	s2,300
	.loc 1 22 5
	call	qcc74x_gpio_reset
.LVL4:
	.loc 1 23 5 is_stmt 1
	li	a0,20
	call	qcc74x_mtimer_delay_ms
.LVL5:
	.loc 1 25 5
	lw	a0,0(s1)
	li	a1,3
	addi	s0,s0,%lo(.LANCHOR0)
	call	qcc74x_gpio_set
.LVL6:
	.loc 1 26 5
.LBB17:
.LBB18:
	.loc 1 12 5
	li	a0,40
	call	qcc74x_mtimer_delay_us
.LVL7:
.LBE18:
.LBE17:
	.loc 1 28 5
	lw	a0,0(s1)
	li	a2,32
	li	a1,3
	call	qcc74x_gpio_init
.LVL8:
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 32 38 is_stmt 0
	li	s1,-1
.LVL9:
.L2:
	.loc 1 32 11 is_stmt 1 discriminator 1
	.loc 1 32 12 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL10:
	.loc 1 32 11 discriminator 1
	beq	a0,zero,.L3
	.loc 1 32 48 discriminator 2
	addi	s2,s2,-1
.LVL11:
	.loc 1 32 38 discriminator 2
	bne	s2,s1,.L4
	li	s1,300
.L5:
	.loc 1 36 39 discriminator 1
	li	s2,-1
.LVL12:
	j	.L7
.LVL13:
.L4:
	.loc 1 32 52 is_stmt 1
.LBB19:
.LBB20:
	.loc 1 12 5
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL14:
	.loc 1 13 1 is_stmt 0
	j	.L2
.LVL15:
.L3:
.LBE20:
.LBE19:
	.loc 1 33 5 is_stmt 1
	li	s1,300
	.loc 1 33 8 is_stmt 0
	bne	s2,zero,.L5
.LVL16:
.L11:
	.loc 1 33 26
	li	a0,-1
.L1:
	.loc 1 64 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL17:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL18:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL19:
.L9:
	.cfi_restore_state
	.loc 1 36 53 is_stmt 1
.LBB21:
.LBB22:
	.loc 1 12 5
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL20:
.L7:
.LBE22:
.LBE21:
	.loc 1 36 11 discriminator 1
	.loc 1 36 13 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL21:
	.loc 1 36 11 discriminator 1
	bne	a0,zero,.L8
	.loc 1 36 49 discriminator 2
	addi	s1,s1,-1
.LVL22:
	.loc 1 36 39 discriminator 2
	bne	s1,s2,.L9
.L39:
	li	s1,300
.LVL23:
	.loc 1 40 38
	li	s2,-1
.L12:
.LVL24:
	.loc 1 40 11 is_stmt 1 discriminator 1
	.loc 1 40 12 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL25:
	.loc 1 40 11 discriminator 1
	beq	a0,zero,.L13
	.loc 1 40 48 discriminator 2
	addi	s1,s1,-1
.LVL26:
	.loc 1 40 38 discriminator 2
	bne	s1,s2,.L14
.L40:
	li	s1,0
.LVL27:
	li	s2,300
.LBB23:
	.loc 1 44 5
	li	s5,40
.L16:
.LVL28:
	.loc 1 47 15 is_stmt 1 discriminator 1
	.loc 1 47 17 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL29:
	.loc 1 47 15 discriminator 1
	bne	a0,zero,.L17
	.loc 1 47 53 discriminator 2
	addi	s6,s2,-1
.LVL30:
	.loc 1 47 43 discriminator 2
	bne	s2,zero,.L18
.LVL31:
.L17:
	.loc 1 49 9 is_stmt 1
.LBB24:
.LBB25:
	.loc 1 12 5
	li	a0,50
	call	qcc74x_mtimer_delay_us
.LVL32:
.LBE25:
.LBE24:
	.loc 1 51 9
	.loc 1 51 13 is_stmt 0
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL33:
	.loc 1 51 12
	beq	a0,zero,.L19
	.loc 1 52 13 is_stmt 1
	.loc 1 52 31 is_stmt 0
	not	a5,s1
	andi	a3,a5,7
	li	a5,1
	.loc 1 52 20
	srai	a4,s1,3
	.loc 1 52 31
	sll	a5,a5,a3
	.loc 1 52 25
	addi	a3,sp,8
	lrbu	a3,a3,a4,0
	or	a5,a5,a3
	addi	a3,sp,8
	srb	a5,a3,a4,0
.L19:
.LBE23:
	li	s2,301
.L20:
.LVL34:
.LBB30:
	.loc 1 55 15 is_stmt 1 discriminator 1
	.loc 1 55 16 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL35:
	.loc 1 55 15 discriminator 1
	beq	a0,zero,.L21
.LVL36:
	.loc 1 55 42 discriminator 2
	addi	s2,s2,-1
.LVL37:
	bne	s2,zero,.L22
.LVL38:
.L21:
	.loc 1 44 29 is_stmt 1 discriminator 2
	.loc 1 44 30 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL39:
	.loc 1 44 21 is_stmt 1 discriminator 2
	.loc 1 44 5 is_stmt 0 discriminator 2
	bne	s1,s5,.L25
.LBE30:
	.loc 1 58 5 is_stmt 1
	.loc 1 58 14 is_stmt 0
	lbu	a3,8(sp)
	.loc 1 58 24
	lbu	a5,9(sp)
	.loc 1 58 34
	lbu	a4,10(sp)
	.loc 1 58 44
	lbu	a2,11(sp)
	.loc 1 58 18
	add	a5,a5,a3
	.loc 1 58 28
	add	a5,a5,a4
	.loc 1 58 38
	add	a5,a5,a2
	.loc 1 58 56
	lbu	a2,12(sp)
	.loc 1 58 8
	bne	a5,a2,.L11
	.loc 1 61 5 is_stmt 1
	.loc 1 61 10 is_stmt 0
	sb	a3,0(s4)
	.loc 1 62 5 is_stmt 1
	.loc 1 62 11 is_stmt 0
	sb	a4,0(s3)
	.loc 1 63 5 is_stmt 1
	.loc 1 63 12 is_stmt 0
	li	a0,0
	j	.L1
.LVL40:
.L8:
	.loc 1 37 5 is_stmt 1
	.loc 1 37 8 is_stmt 0
	bne	s1,zero,.L39
	j	.L11
.L14:
	.loc 1 40 52 is_stmt 1
.LVL41:
.LBB31:
.LBB32:
	.loc 1 12 5
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL42:
	.loc 1 13 1 is_stmt 0
	j	.L12
.LVL43:
.L13:
.LBE32:
.LBE31:
	.loc 1 41 5 is_stmt 1
	.loc 1 41 8 is_stmt 0
	bne	s1,zero,.L40
	j	.L11
.LVL44:
.L18:
.LBB33:
	.loc 1 47 57 is_stmt 1
.LBB26:
.LBB27:
	.loc 1 12 5
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL45:
	.loc 1 13 1 is_stmt 0
	mv	s2,s6
	j	.L16
.LVL46:
.L25:
.LBE27:
.LBE26:
	.loc 1 46 17
	li	s2,300
	j	.L16
.LVL47:
.L22:
	.loc 1 55 56 is_stmt 1
.LBB28:
.LBB29:
	.loc 1 12 5
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL48:
	.loc 1 13 1 is_stmt 0
	j	.L20
.LBE29:
.LBE28:
.LBE33:
	.cfi_endproc
.LFE6:
	.size	dht11_read, .-dht11_read
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"gpio"
	.align	2
.LC1:
	.string	"DHT11 MODULE TEST\r\n"
	.align	2
.LC2:
	.string	"TEMP=%d C  HUM=%d %%\r\n"
	.align	2
.LC3:
	.string	"DHT11 ERROR\r\n"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB7:
	.loc 1 67 1 is_stmt 1
	.cfi_startproc
	.loc 1 68 5
	.loc 1 70 5
	.loc 1 67 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 70 5
	call	board_init
.LVL49:
	.loc 1 71 5 is_stmt 1
	.loc 1 71 12 is_stmt 0
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	qcc74x_device_get_by_name
.LVL50:
	.loc 1 71 10
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 73 5 is_stmt 1
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	printf
.LVL51:
	.loc 1 74 5
	.loc 1 74 23 is_stmt 0
	lui	s0,%hi(_impure_ptr)
	lw	a5,%lo(_impure_ptr)(s0)
	.loc 1 84 9
	li	s1,4096
	.loc 1 81 13
	lui	s2,%hi(.LC3)
	.loc 1 74 5
	lw	a0,8(a5)
	.loc 1 79 13
	lui	s3,%hi(.LC2)
	.loc 1 84 9
	addi	s1,s1,-1096
	.loc 1 74 5
	call	fflush
.LVL52:
.L44:
	.loc 1 76 5 is_stmt 1
	.loc 1 78 9
	.loc 1 78 13 is_stmt 0
	addi	a1,sp,15
	addi	a0,sp,14
	call	dht11_read
.LVL53:
	.loc 1 78 12
	bne	a0,zero,.L42
	.loc 1 79 13 is_stmt 1
	lbu	a2,15(sp)
	lbu	a1,14(sp)
	addi	a0,s3,%lo(.LC2)
	call	printf
.LVL54:
.L43:
	.loc 1 83 9
	.loc 1 83 27 is_stmt 0
	lw	a5,%lo(_impure_ptr)(s0)
	.loc 1 83 9
	lw	a0,8(a5)
	call	fflush
.LVL55:
	.loc 1 84 9 is_stmt 1
	mv	a0,s1
	call	qcc74x_mtimer_delay_ms
.LVL56:
	.loc 1 76 11
	.loc 1 78 12 is_stmt 0
	j	.L44
.L42:
	.loc 1 81 13 is_stmt 1
	addi	a0,s2,%lo(.LC3)
	call	printf
.LVL57:
	j	.L43
	.cfi_endproc
.LFE7:
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
	.file 3 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/reent.h"
	.file 6 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/lock.h"
	.file 7 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 8 "./drivers/lhal/include/qcc74x_core.h"
	.file 9 "./bsp/board/qcc74xdk/./board.h"
	.file 10 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 11 "./drivers/lhal/include/qcc74x_mtimer.h"
	.file 12 "./drivers/lhal/include/qcc74x_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xdb7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF147
	.byte	0xc
	.4byte	.LASF148
	.4byte	.LASF149
	.4byte	.Ldebug_ranges0+0x20
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
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.2byte	0x15e
	.byte	0x16
	.4byte	0x7c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x74
	.byte	0xe
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x93
	.byte	0x14
	.4byte	0x75
	.byte	0x6
	.byte	0x4
	.byte	0x4
	.byte	0xa5
	.byte	0x3
	.4byte	0xd6
	.byte	0x7
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa7
	.byte	0xc
	.4byte	0x83
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0xa8
	.byte	0x13
	.4byte	0xd6
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0xe6
	.byte	0x9
	.4byte	0x7c
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa2
	.byte	0x9
	.4byte	0x10a
	.byte	0xb
	.4byte	.LASF17
	.byte	0x4
	.byte	0xa4
	.byte	0x7
	.4byte	0x75
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x4
	.byte	0xa9
	.byte	0x5
	.4byte	0xb4
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xaa
	.byte	0x3
	.4byte	0xe6
	.byte	0xc
	.byte	0x4
	.byte	0x3
	.4byte	.LASF20
	.byte	0x5
	.byte	0x16
	.byte	0x17
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF21
	.byte	0x6
	.byte	0x22
	.byte	0x19
	.4byte	0x130
	.byte	0xd
	.byte	0x4
	.4byte	0x136
	.byte	0xe
	.4byte	.LASF119
	.byte	0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x23
	.byte	0x11
	.4byte	0x124
	.byte	0xf
	.4byte	.LASF27
	.byte	0x18
	.byte	0x5
	.byte	0x34
	.byte	0x8
	.4byte	0x1a1
	.byte	0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x36
	.byte	0x13
	.4byte	0x1a1
	.byte	0
	.byte	0x10
	.string	"_k"
	.byte	0x5
	.byte	0x37
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.byte	0xb
	.4byte	.LASF24
	.byte	0x5
	.byte	0x37
	.byte	0xb
	.4byte	0x75
	.byte	0x8
	.byte	0xb
	.4byte	.LASF25
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x75
	.byte	0xc
	.byte	0xb
	.4byte	.LASF26
	.byte	0x5
	.byte	0x37
	.byte	0x1b
	.4byte	0x75
	.byte	0x10
	.byte	0x10
	.string	"_x"
	.byte	0x5
	.byte	0x38
	.byte	0xb
	.4byte	0x1a7
	.byte	0x14
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x147
	.byte	0x8
	.4byte	0x118
	.4byte	0x1b7
	.byte	0x9
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF28
	.byte	0x24
	.byte	0x5
	.byte	0x3c
	.byte	0x8
	.4byte	0x23a
	.byte	0xb
	.4byte	.LASF29
	.byte	0x5
	.byte	0x3e
	.byte	0x7
	.4byte	0x75
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x5
	.byte	0x3f
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.byte	0xb
	.4byte	.LASF31
	.byte	0x5
	.byte	0x40
	.byte	0x7
	.4byte	0x75
	.byte	0x8
	.byte	0xb
	.4byte	.LASF32
	.byte	0x5
	.byte	0x41
	.byte	0x7
	.4byte	0x75
	.byte	0xc
	.byte	0xb
	.4byte	.LASF33
	.byte	0x5
	.byte	0x42
	.byte	0x7
	.4byte	0x75
	.byte	0x10
	.byte	0xb
	.4byte	.LASF34
	.byte	0x5
	.byte	0x43
	.byte	0x7
	.4byte	0x75
	.byte	0x14
	.byte	0xb
	.4byte	.LASF35
	.byte	0x5
	.byte	0x44
	.byte	0x7
	.4byte	0x75
	.byte	0x18
	.byte	0xb
	.4byte	.LASF36
	.byte	0x5
	.byte	0x45
	.byte	0x7
	.4byte	0x75
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF37
	.byte	0x5
	.byte	0x46
	.byte	0x7
	.4byte	0x75
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x5
	.byte	0x4f
	.byte	0x8
	.4byte	0x27f
	.byte	0xb
	.4byte	.LASF39
	.byte	0x5
	.byte	0x50
	.byte	0x9
	.4byte	0x27f
	.byte	0
	.byte	0xb
	.4byte	.LASF40
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x27f
	.byte	0x80
	.byte	0x12
	.4byte	.LASF41
	.byte	0x5
	.byte	0x53
	.byte	0xa
	.4byte	0x118
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF42
	.byte	0x5
	.byte	0x56
	.byte	0xa
	.4byte	0x118
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x116
	.4byte	0x28f
	.byte	0x9
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF43
	.2byte	0x190
	.byte	0x5
	.byte	0x62
	.byte	0x8
	.4byte	0x2d2
	.byte	0xb
	.4byte	.LASF23
	.byte	0x5
	.byte	0x63
	.byte	0x12
	.4byte	0x2d2
	.byte	0
	.byte	0xb
	.4byte	.LASF44
	.byte	0x5
	.byte	0x64
	.byte	0x6
	.4byte	0x75
	.byte	0x4
	.byte	0xb
	.4byte	.LASF45
	.byte	0x5
	.byte	0x66
	.byte	0x9
	.4byte	0x2d8
	.byte	0x8
	.byte	0xb
	.4byte	.LASF38
	.byte	0x5
	.byte	0x67
	.byte	0x1e
	.4byte	0x23a
	.byte	0x88
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x28f
	.byte	0x8
	.4byte	0x2e8
	.4byte	0x2e8
	.byte	0x9
	.4byte	0x7c
	.byte	0x1f
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x2ee
	.byte	0x13
	.byte	0xf
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5
	.byte	0x7a
	.byte	0x8
	.4byte	0x317
	.byte	0xb
	.4byte	.LASF47
	.byte	0x5
	.byte	0x7b
	.byte	0x11
	.4byte	0x317
	.byte	0
	.byte	0xb
	.4byte	.LASF48
	.byte	0x5
	.byte	0x7c
	.byte	0x6
	.4byte	0x75
	.byte	0x4
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x38
	.byte	0xf
	.4byte	.LASF49
	.byte	0x68
	.byte	0x5
	.byte	0xba
	.byte	0x8
	.4byte	0x460
	.byte	0x10
	.string	"_p"
	.byte	0x5
	.byte	0xbb
	.byte	0x12
	.4byte	0x317
	.byte	0
	.byte	0x10
	.string	"_r"
	.byte	0x5
	.byte	0xbc
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.byte	0x10
	.string	"_w"
	.byte	0x5
	.byte	0xbd
	.byte	0x7
	.4byte	0x75
	.byte	0x8
	.byte	0xb
	.4byte	.LASF50
	.byte	0x5
	.byte	0xbe
	.byte	0x9
	.4byte	0x3f
	.byte	0xc
	.byte	0xb
	.4byte	.LASF51
	.byte	0x5
	.byte	0xbf
	.byte	0x9
	.4byte	0x3f
	.byte	0xe
	.byte	0x10
	.string	"_bf"
	.byte	0x5
	.byte	0xc0
	.byte	0x11
	.4byte	0x2ef
	.byte	0x10
	.byte	0xb
	.4byte	.LASF52
	.byte	0x5
	.byte	0xc1
	.byte	0x7
	.4byte	0x75
	.byte	0x18
	.byte	0xb
	.4byte	.LASF53
	.byte	0x5
	.byte	0xc8
	.byte	0xa
	.4byte	0x116
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF54
	.byte	0x5
	.byte	0xca
	.byte	0xe
	.4byte	0x5df
	.byte	0x20
	.byte	0xb
	.4byte	.LASF55
	.byte	0x5
	.byte	0xcc
	.byte	0xe
	.4byte	0x609
	.byte	0x24
	.byte	0xb
	.4byte	.LASF56
	.byte	0x5
	.byte	0xcf
	.byte	0xd
	.4byte	0x62d
	.byte	0x28
	.byte	0xb
	.4byte	.LASF57
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0x647
	.byte	0x2c
	.byte	0x10
	.string	"_ub"
	.byte	0x5
	.byte	0xd3
	.byte	0x11
	.4byte	0x2ef
	.byte	0x30
	.byte	0x10
	.string	"_up"
	.byte	0x5
	.byte	0xd4
	.byte	0x12
	.4byte	0x317
	.byte	0x38
	.byte	0x10
	.string	"_ur"
	.byte	0x5
	.byte	0xd5
	.byte	0x7
	.4byte	0x75
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF58
	.byte	0x5
	.byte	0xd8
	.byte	0x11
	.4byte	0x64d
	.byte	0x40
	.byte	0xb
	.4byte	.LASF59
	.byte	0x5
	.byte	0xd9
	.byte	0x11
	.4byte	0x65d
	.byte	0x43
	.byte	0x10
	.string	"_lb"
	.byte	0x5
	.byte	0xdc
	.byte	0x11
	.4byte	0x2ef
	.byte	0x44
	.byte	0xb
	.4byte	.LASF60
	.byte	0x5
	.byte	0xdf
	.byte	0x7
	.4byte	0x75
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF61
	.byte	0x5
	.byte	0xe0
	.byte	0xa
	.4byte	0x90
	.byte	0x50
	.byte	0xb
	.4byte	.LASF62
	.byte	0x5
	.byte	0xe3
	.byte	0x12
	.4byte	0x47e
	.byte	0x54
	.byte	0xb
	.4byte	.LASF63
	.byte	0x5
	.byte	0xe7
	.byte	0xc
	.4byte	0x13b
	.byte	0x58
	.byte	0xb
	.4byte	.LASF64
	.byte	0x5
	.byte	0xe9
	.byte	0xe
	.4byte	0x10a
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF65
	.byte	0x5
	.byte	0xea
	.byte	0x7
	.4byte	0x75
	.byte	0x64
	.byte	0
	.byte	0x14
	.4byte	0xa8
	.4byte	0x47e
	.byte	0x15
	.4byte	0x47e
	.byte	0x15
	.4byte	0x116
	.byte	0x15
	.4byte	0x5cd
	.byte	0x15
	.4byte	0x75
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x484
	.byte	0x16
	.4byte	.LASF66
	.2byte	0x428
	.byte	0x5
	.2byte	0x265
	.byte	0x8
	.4byte	0x5cd
	.byte	0x17
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x267
	.byte	0x7
	.4byte	0x75
	.byte	0
	.byte	0x17
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6b9
	.byte	0x4
	.byte	0x17
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6b9
	.byte	0x8
	.byte	0x17
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6b9
	.byte	0xc
	.byte	0x17
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x26e
	.byte	0x7
	.4byte	0x75
	.byte	0x10
	.byte	0x17
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8b9
	.byte	0x14
	.byte	0x17
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x272
	.byte	0x7
	.4byte	0x75
	.byte	0x30
	.byte	0x17
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x273
	.byte	0x16
	.4byte	0x8ce
	.byte	0x34
	.byte	0x17
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x275
	.byte	0x7
	.4byte	0x75
	.byte	0x38
	.byte	0x17
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x277
	.byte	0xa
	.4byte	0x8df
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1a1
	.byte	0x40
	.byte	0x17
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x27b
	.byte	0x7
	.4byte	0x75
	.byte	0x44
	.byte	0x17
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1a1
	.byte	0x48
	.byte	0x17
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8e5
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x280
	.byte	0x7
	.4byte	0x75
	.byte	0x50
	.byte	0x17
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x281
	.byte	0x9
	.4byte	0x5cd
	.byte	0x54
	.byte	0x17
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x894
	.byte	0x58
	.byte	0x18
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2d2
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x28f
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8f6
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x67a
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x902
	.2byte	0x2ec
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x5d3
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF88
	.byte	0x19
	.4byte	0x5d3
	.byte	0xd
	.byte	0x4
	.4byte	0x460
	.byte	0x14
	.4byte	0xa8
	.4byte	0x603
	.byte	0x15
	.4byte	0x47e
	.byte	0x15
	.4byte	0x116
	.byte	0x15
	.4byte	0x603
	.byte	0x15
	.4byte	0x75
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x5da
	.byte	0xd
	.byte	0x4
	.4byte	0x5e5
	.byte	0x14
	.4byte	0x9c
	.4byte	0x62d
	.byte	0x15
	.4byte	0x47e
	.byte	0x15
	.4byte	0x116
	.byte	0x15
	.4byte	0x9c
	.byte	0x15
	.4byte	0x75
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x60f
	.byte	0x14
	.4byte	0x75
	.4byte	0x647
	.byte	0x15
	.4byte	0x47e
	.byte	0x15
	.4byte	0x116
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x633
	.byte	0x8
	.4byte	0x38
	.4byte	0x65d
	.byte	0x9
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x38
	.4byte	0x66d
	.byte	0x9
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x124
	.byte	0x18
	.4byte	0x31d
	.byte	0x1a
	.4byte	.LASF90
	.byte	0xc
	.byte	0x5
	.2byte	0x128
	.byte	0x8
	.4byte	0x6b3
	.byte	0x17
	.4byte	.LASF23
	.byte	0x5
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6b3
	.byte	0
	.byte	0x17
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x12b
	.byte	0x7
	.4byte	0x75
	.byte	0x4
	.byte	0x17
	.4byte	.LASF92
	.byte	0x5
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6b9
	.byte	0x8
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x67a
	.byte	0xd
	.byte	0x4
	.4byte	0x66d
	.byte	0x1a
	.4byte	.LASF93
	.byte	0xe
	.byte	0x5
	.2byte	0x144
	.byte	0x8
	.4byte	0x6f8
	.byte	0x17
	.4byte	.LASF94
	.byte	0x5
	.2byte	0x145
	.byte	0x12
	.4byte	0x6f8
	.byte	0
	.byte	0x17
	.4byte	.LASF95
	.byte	0x5
	.2byte	0x146
	.byte	0x12
	.4byte	0x6f8
	.byte	0x6
	.byte	0x17
	.4byte	.LASF96
	.byte	0x5
	.2byte	0x147
	.byte	0x12
	.4byte	0x46
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x46
	.4byte	0x708
	.byte	0x9
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x5
	.2byte	0x285
	.byte	0x7
	.4byte	0x81d
	.byte	0x17
	.4byte	.LASF97
	.byte	0x5
	.2byte	0x287
	.byte	0x18
	.4byte	0x7c
	.byte	0
	.byte	0x17
	.4byte	.LASF98
	.byte	0x5
	.2byte	0x288
	.byte	0x12
	.4byte	0x5cd
	.byte	0x4
	.byte	0x17
	.4byte	.LASF99
	.byte	0x5
	.2byte	0x289
	.byte	0x10
	.4byte	0x81d
	.byte	0x8
	.byte	0x17
	.4byte	.LASF100
	.byte	0x5
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1b7
	.byte	0x24
	.byte	0x17
	.4byte	.LASF101
	.byte	0x5
	.2byte	0x28b
	.byte	0xf
	.4byte	0x75
	.byte	0x48
	.byte	0x17
	.4byte	.LASF102
	.byte	0x5
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x6e
	.byte	0x50
	.byte	0x17
	.4byte	.LASF103
	.byte	0x5
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6bf
	.byte	0x58
	.byte	0x17
	.4byte	.LASF104
	.byte	0x5
	.2byte	0x28e
	.byte	0x16
	.4byte	0x10a
	.byte	0x68
	.byte	0x17
	.4byte	.LASF105
	.byte	0x5
	.2byte	0x28f
	.byte	0x16
	.4byte	0x10a
	.byte	0x70
	.byte	0x17
	.4byte	.LASF106
	.byte	0x5
	.2byte	0x290
	.byte	0x16
	.4byte	0x10a
	.byte	0x78
	.byte	0x17
	.4byte	.LASF107
	.byte	0x5
	.2byte	0x291
	.byte	0x10
	.4byte	0x82d
	.byte	0x80
	.byte	0x17
	.4byte	.LASF108
	.byte	0x5
	.2byte	0x292
	.byte	0x10
	.4byte	0x83d
	.byte	0x88
	.byte	0x17
	.4byte	.LASF109
	.byte	0x5
	.2byte	0x293
	.byte	0xf
	.4byte	0x75
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF110
	.byte	0x5
	.2byte	0x294
	.byte	0x16
	.4byte	0x10a
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF111
	.byte	0x5
	.2byte	0x295
	.byte	0x16
	.4byte	0x10a
	.byte	0xac
	.byte	0x17
	.4byte	.LASF112
	.byte	0x5
	.2byte	0x296
	.byte	0x16
	.4byte	0x10a
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF113
	.byte	0x5
	.2byte	0x297
	.byte	0x16
	.4byte	0x10a
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF114
	.byte	0x5
	.2byte	0x298
	.byte	0x16
	.4byte	0x10a
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF115
	.byte	0x5
	.2byte	0x299
	.byte	0x8
	.4byte	0x75
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5d3
	.4byte	0x82d
	.byte	0x9
	.4byte	0x7c
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5d3
	.4byte	0x83d
	.byte	0x9
	.4byte	0x7c
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5d3
	.4byte	0x84d
	.byte	0x9
	.4byte	0x7c
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x5
	.2byte	0x29e
	.byte	0x7
	.4byte	0x874
	.byte	0x17
	.4byte	.LASF116
	.byte	0x5
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x874
	.byte	0
	.byte	0x17
	.4byte	.LASF117
	.byte	0x5
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x884
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x317
	.4byte	0x884
	.byte	0x9
	.4byte	0x7c
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x7c
	.4byte	0x894
	.byte	0x9
	.4byte	0x7c
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0x5
	.2byte	0x283
	.byte	0x3
	.4byte	0x8b9
	.byte	0x1d
	.4byte	.LASF66
	.byte	0x5
	.2byte	0x29a
	.byte	0xb
	.4byte	0x708
	.byte	0x1d
	.4byte	.LASF118
	.byte	0x5
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x84d
	.byte	0
	.byte	0x8
	.4byte	0x5d3
	.4byte	0x8c9
	.byte	0x9
	.4byte	0x7c
	.byte	0x18
	.byte	0
	.byte	0xe
	.4byte	.LASF120
	.byte	0xd
	.byte	0x4
	.4byte	0x8c9
	.byte	0x1e
	.4byte	0x8df
	.byte	0x15
	.4byte	0x47e
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x8d4
	.byte	0xd
	.byte	0x4
	.4byte	0x1a1
	.byte	0x1e
	.4byte	0x8f6
	.byte	0x15
	.4byte	0x75
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x8fc
	.byte	0xd
	.byte	0x4
	.4byte	0x8eb
	.byte	0x8
	.4byte	0x66d
	.4byte	0x912
	.byte	0x9
	.4byte	0x7c
	.byte	0x2
	.byte	0
	.byte	0x1f
	.4byte	.LASF130
	.byte	0x5
	.2byte	0x333
	.byte	0x17
	.4byte	0x47e
	.byte	0x3
	.4byte	.LASF121
	.byte	0x7
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF122
	.byte	0x7
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0xf
	.4byte	.LASF123
	.byte	0x10
	.byte	0x8
	.byte	0x67
	.byte	0x8
	.4byte	0x9a0
	.byte	0xb
	.4byte	.LASF124
	.byte	0x8
	.byte	0x68
	.byte	0x11
	.4byte	0x603
	.byte	0
	.byte	0xb
	.4byte	.LASF125
	.byte	0x8
	.byte	0x69
	.byte	0xe
	.4byte	0x92b
	.byte	0x4
	.byte	0xb
	.4byte	.LASF126
	.byte	0x8
	.byte	0x6a
	.byte	0xd
	.4byte	0x91f
	.byte	0x8
	.byte	0x10
	.string	"idx"
	.byte	0x8
	.byte	0x6b
	.byte	0xd
	.4byte	0x91f
	.byte	0x9
	.byte	0xb
	.4byte	.LASF127
	.byte	0x8
	.byte	0x6c
	.byte	0xd
	.4byte	0x91f
	.byte	0xa
	.byte	0xb
	.4byte	.LASF128
	.byte	0x8
	.byte	0x6d
	.byte	0xd
	.4byte	0x91f
	.byte	0xb
	.byte	0xb
	.4byte	.LASF129
	.byte	0x8
	.byte	0x6e
	.byte	0xb
	.4byte	0x116
	.byte	0xc
	.byte	0
	.byte	0x20
	.4byte	.LASF131
	.byte	0x1
	.byte	0x8
	.byte	0x19
	.4byte	0x9b2
	.byte	0x5
	.byte	0x3
	.4byte	gpio
	.byte	0xd
	.byte	0x4
	.4byte	0x937
	.byte	0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x42
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xa8e
	.byte	0x22
	.string	"t"
	.byte	0x1
	.byte	0x44
	.byte	0xd
	.4byte	0x91f
	.byte	0x2
	.byte	0x91
	.byte	0x5e
	.byte	0x22
	.string	"h"
	.byte	0x1
	.byte	0x44
	.byte	0x10
	.4byte	0x91f
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0x23
	.4byte	.LVL49
	.4byte	0xd3e
	.byte	0x24
	.4byte	.LVL50
	.4byte	0xd4a
	.4byte	0xa0c
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x24
	.4byte	.LVL51
	.4byte	0xd56
	.4byte	0xa23
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x23
	.4byte	.LVL52
	.4byte	0xd62
	.byte	0x24
	.4byte	.LVL53
	.4byte	0xa8e
	.4byte	0xa46
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x5e
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5f
	.byte	0
	.byte	0x24
	.4byte	.LVL54
	.4byte	0xd56
	.4byte	0xa5d
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x23
	.4byte	.LVL55
	.4byte	0xd62
	.byte	0x24
	.4byte	.LVL56
	.4byte	0xd6e
	.4byte	0xa7a
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL57
	.4byte	0xd56
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF133
	.byte	0x1
	.byte	0xf
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xd0f
	.byte	0x27
	.4byte	.LASF134
	.byte	0x1
	.byte	0xf
	.byte	0x19
	.4byte	0xd0f
	.4byte	.LLST0
	.byte	0x28
	.string	"hum"
	.byte	0x1
	.byte	0xf
	.byte	0x28
	.4byte	0xd0f
	.4byte	.LLST1
	.byte	0x29
	.4byte	.LASF135
	.byte	0x1
	.byte	0x11
	.byte	0xd
	.4byte	0xd15
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x2a
	.4byte	.LASF136
	.byte	0x1
	.byte	0x12
	.byte	0xe
	.4byte	0x92b
	.4byte	.LLST2
	.byte	0x2b
	.4byte	.Ldebug_ranges0+0
	.4byte	0xbb9
	.byte	0x2c
	.string	"i"
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.4byte	0x75
	.4byte	.LLST6
	.byte	0x2d
	.4byte	0xd25
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x31
	.byte	0x9
	.4byte	0xb2c
	.byte	0x2e
	.4byte	0xd32
	.4byte	.LLST7
	.byte	0x26
	.4byte	.LVL32
	.4byte	0xd7a
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	0xd25
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x2f
	.byte	0x39
	.4byte	0xb59
	.byte	0x2e
	.4byte	0xd32
	.4byte	.LLST8
	.byte	0x26
	.4byte	.LVL45
	.4byte	0xd7a
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	0xd25
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x37
	.byte	0x38
	.4byte	0xb83
	.byte	0x2f
	.4byte	0xd32
	.byte	0x1
	.byte	0x26
	.4byte	.LVL48
	.4byte	0xd7a
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL29
	.4byte	0xd86
	.4byte	0xb96
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x24
	.4byte	.LVL33
	.4byte	0xd86
	.4byte	0xba9
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x26
	.4byte	.LVL35
	.4byte	0xd86
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	0xd25
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.4byte	0xbe7
	.byte	0x2e
	.4byte	0xd32
	.4byte	.LLST3
	.byte	0x26
	.4byte	.LVL7
	.4byte	0xd7a
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	0xd25
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x1
	.byte	0x20
	.byte	0x34
	.4byte	0xc14
	.byte	0x2e
	.4byte	0xd32
	.4byte	.LLST4
	.byte	0x26
	.4byte	.LVL14
	.4byte	0xd7a
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	0xd25
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x24
	.byte	0x35
	.4byte	0xc41
	.byte	0x2e
	.4byte	0xd32
	.4byte	.LLST5
	.byte	0x26
	.4byte	.LVL20
	.4byte	0xd7a
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x2d
	.4byte	0xd25
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0x28
	.byte	0x34
	.4byte	0xc6e
	.byte	0x2e
	.4byte	0xd32
	.4byte	.LLST9
	.byte	0x26
	.4byte	.LVL42
	.4byte	0xd7a
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL3
	.4byte	0xd93
	.4byte	0xc87
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x24
	.4byte	.LVL4
	.4byte	0xda0
	.4byte	0xc9a
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x24
	.4byte	.LVL5
	.4byte	0xd6e
	.4byte	0xcad
	.byte	0x25
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x24
	.4byte	.LVL6
	.4byte	0xdad
	.4byte	0xcc0
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x24
	.4byte	.LVL8
	.4byte	0xd93
	.4byte	0xcd9
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x25
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x24
	.4byte	.LVL10
	.4byte	0xd86
	.4byte	0xcec
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x24
	.4byte	.LVL21
	.4byte	0xd86
	.4byte	0xcff
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x26
	.4byte	.LVL25
	.4byte	0xd86
	.byte	0x25
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x91f
	.byte	0x8
	.4byte	0x91f
	.4byte	0xd25
	.byte	0x9
	.4byte	0x7c
	.byte	0x4
	.byte	0
	.byte	0x30
	.4byte	.LASF150
	.byte	0x1
	.byte	0xa
	.byte	0xd
	.byte	0x1
	.4byte	0xd3e
	.byte	0x31
	.string	"us"
	.byte	0x1
	.byte	0xa
	.byte	0x1f
	.4byte	0x92b
	.byte	0
	.byte	0x32
	.4byte	.LASF137
	.4byte	.LASF137
	.byte	0x9
	.byte	0x4
	.byte	0x6
	.byte	0x32
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x8
	.byte	0x7b
	.byte	0x19
	.byte	0x32
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0xa
	.byte	0xc8
	.byte	0x5
	.byte	0x32
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0xa
	.byte	0xc0
	.byte	0x5
	.byte	0x32
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xb
	.byte	0x27
	.byte	0x6
	.byte	0x32
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xb
	.byte	0x2e
	.byte	0x6
	.byte	0x33
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0xc
	.2byte	0x1f0
	.byte	0x5
	.byte	0x33
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0xc
	.2byte	0x199
	.byte	0x6
	.byte	0x33
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xc
	.2byte	0x1d5
	.byte	0x6
	.byte	0x33
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xc
	.2byte	0x1bb
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
	.byte	0x16
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x17
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
	.byte	0xb
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
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x12
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x17
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0xd
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x2d
	.byte	0x1d
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x2e
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xa
	.2byte	0x12c
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x82
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL47
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x82
	.byte	0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x8
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"_dso_handle"
.LASF129:
	.string	"user_data"
.LASF48:
	.string	"_size"
.LASF93:
	.string	"_rand48"
.LASF72:
	.string	"_emergency"
.LASF5:
	.string	"__uint8_t"
.LASF62:
	.string	"_data"
.LASF113:
	.string	"_wcrtomb_state"
.LASF114:
	.string	"_wcsrtombs_state"
.LASF139:
	.string	"printf"
.LASF9:
	.string	"long long unsigned int"
.LASF52:
	.string	"_lbfsize"
.LASF120:
	.string	"__locale_t"
.LASF127:
	.string	"sub_idx"
.LASF111:
	.string	"_mbrtowc_state"
.LASF29:
	.string	"__tm_sec"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF58:
	.string	"_ubuf"
.LASF47:
	.string	"_base"
.LASF149:
	.string	"./examples/peripherals/gpio/gpio_dht11_module/build"
.LASF87:
	.string	"__sf"
.LASF38:
	.string	"_on_exit_args"
.LASF53:
	.string	"_cookie"
.LASF86:
	.string	"__sglue"
.LASF134:
	.string	"temp"
.LASF4:
	.string	"long int"
.LASF50:
	.string	"_flags"
.LASF42:
	.string	"_is_cxa"
.LASF68:
	.string	"_stdin"
.LASF60:
	.string	"_blksize"
.LASF125:
	.string	"reg_base"
.LASF82:
	.string	"_cvtbuf"
.LASF61:
	.string	"_offset"
.LASF112:
	.string	"_mbsrtowcs_state"
.LASF110:
	.string	"_mbrlen_state"
.LASF39:
	.string	"_fnargs"
.LASF45:
	.string	"_fns"
.LASF6:
	.string	"__uint32_t"
.LASF141:
	.string	"qcc74x_mtimer_delay_ms"
.LASF25:
	.string	"_sign"
.LASF22:
	.string	"_flock_t"
.LASF70:
	.string	"_stderr"
.LASF27:
	.string	"_Bigint"
.LASF101:
	.string	"_gamma_signgam"
.LASF54:
	.string	"_read"
.LASF78:
	.string	"_result_k"
.LASF28:
	.string	"__tm"
.LASF10:
	.string	"unsigned int"
.LASF16:
	.string	"__wchb"
.LASF69:
	.string	"_stdout"
.LASF81:
	.string	"_cvtlen"
.LASF7:
	.string	"long unsigned int"
.LASF51:
	.string	"_file"
.LASF136:
	.string	"timeout"
.LASF124:
	.string	"name"
.LASF91:
	.string	"_niobs"
.LASF135:
	.string	"data"
.LASF144:
	.string	"qcc74x_gpio_init"
.LASF3:
	.string	"short unsigned int"
.LASF142:
	.string	"qcc74x_mtimer_delay_us"
.LASF84:
	.string	"_atexit0"
.LASF108:
	.string	"_signal_buf"
.LASF99:
	.string	"_asctime_buf"
.LASF77:
	.string	"_result"
.LASF15:
	.string	"__wch"
.LASF21:
	.string	"_LOCK_T"
.LASF11:
	.string	"wint_t"
.LASF63:
	.string	"_lock"
.LASF65:
	.string	"_flags2"
.LASF147:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF55:
	.string	"_write"
.LASF34:
	.string	"__tm_year"
.LASF117:
	.string	"_nmalloc"
.LASF116:
	.string	"_nextf"
.LASF33:
	.string	"__tm_mon"
.LASF43:
	.string	"_atexit"
.LASF75:
	.string	"__sdidinit"
.LASF12:
	.string	"_off_t"
.LASF146:
	.string	"qcc74x_gpio_set"
.LASF80:
	.string	"_freelist"
.LASF140:
	.string	"fflush"
.LASF133:
	.string	"dht11_read"
.LASF106:
	.string	"_wctomb_state"
.LASF137:
	.string	"board_init"
.LASF1:
	.string	"unsigned char"
.LASF83:
	.string	"_new"
.LASF115:
	.string	"_h_errno"
.LASF2:
	.string	"short int"
.LASF36:
	.string	"__tm_yday"
.LASF46:
	.string	"__sbuf"
.LASF92:
	.string	"_iobs"
.LASF89:
	.string	"__FILE"
.LASF19:
	.string	"_mbstate_t"
.LASF49:
	.string	"__sFILE"
.LASF64:
	.string	"_mbstate"
.LASF102:
	.string	"_rand_next"
.LASF104:
	.string	"_mblen_state"
.LASF71:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF148:
	.string	"./examples/peripherals/gpio/gpio_dht11_module/main.c"
.LASF74:
	.string	"_locale"
.LASF76:
	.string	"__cleanup"
.LASF73:
	.string	"_unspecified_locale_info"
.LASF24:
	.string	"_maxwds"
.LASF66:
	.string	"_reent"
.LASF94:
	.string	"_seed"
.LASF138:
	.string	"qcc74x_device_get_by_name"
.LASF17:
	.string	"__count"
.LASF119:
	.string	"__lock"
.LASF18:
	.string	"__value"
.LASF31:
	.string	"__tm_hour"
.LASF56:
	.string	"_seek"
.LASF126:
	.string	"irq_num"
.LASF130:
	.string	"_impure_ptr"
.LASF13:
	.string	"_fpos_t"
.LASF67:
	.string	"_errno"
.LASF88:
	.string	"char"
.LASF30:
	.string	"__tm_min"
.LASF150:
	.string	"delay_us"
.LASF145:
	.string	"qcc74x_gpio_reset"
.LASF121:
	.string	"uint8_t"
.LASF95:
	.string	"_mult"
.LASF23:
	.string	"_next"
.LASF98:
	.string	"_strtok_last"
.LASF128:
	.string	"dev_type"
.LASF41:
	.string	"_fntypes"
.LASF96:
	.string	"_add"
.LASF20:
	.string	"__ULong"
.LASF109:
	.string	"_getdate_err"
.LASF123:
	.string	"qcc74x_device_s"
.LASF143:
	.string	"qcc74x_gpio_read"
.LASF122:
	.string	"uint32_t"
.LASF97:
	.string	"_unused_rand"
.LASF26:
	.string	"_wds"
.LASF35:
	.string	"__tm_wday"
.LASF90:
	.string	"_glue"
.LASF14:
	.string	"_ssize_t"
.LASF107:
	.string	"_l64a_buf"
.LASF85:
	.string	"_sig_func"
.LASF131:
	.string	"gpio"
.LASF59:
	.string	"_nbuf"
.LASF118:
	.string	"_unused"
.LASF37:
	.string	"__tm_isdst"
.LASF100:
	.string	"_localtime_buf"
.LASF57:
	.string	"_close"
.LASF103:
	.string	"_r48"
.LASF105:
	.string	"_mbtowc_state"
.LASF79:
	.string	"_p5s"
.LASF132:
	.string	"main"
.LASF32:
	.string	"__tm_mday"
	.ident	"GCC: (GNU) 10.4.0"
