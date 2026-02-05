	.file	"printf.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.putchar,"ax",@progbits
	.align	1
	.globl	putchar
	.type	putchar, @function
putchar:
.LFB5:
	.file 1 "./components/libc/printf.c"
	.loc 1 14 1
	.cfi_startproc
.LVL0:
	.loc 1 15 5
	.loc 1 14 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 15 17
	lui	a5,%hi(.LANCHOR0)
	.loc 1 14 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 15 17
	lw	a0,%lo(.LANCHOR0)(a5)
.LVL1:
	.loc 1 14 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 15 8
	beq	a0,zero,.L3
	.loc 1 22 5 is_stmt 1
	andi	a1,s0,0xff
	call	qcc74x_uart_putchar
.LVL2:
	.loc 1 25 5
.L2:
	.loc 1 26 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL3:
.L3:
	.cfi_restore_state
	.loc 1 16 15
	li	s0,-1
.LVL4:
	j	.L2
	.cfi_endproc
.LFE5:
	.size	putchar, .-putchar
	.section	.text.puts,"ax",@progbits
	.align	1
	.globl	puts
	.type	puts, @function
puts:
.LFB6:
	.loc 1 29 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 30 5
	.loc 1 32 5
	.loc 1 29 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 32 8
	bne	a0,zero,.L6
.LVL6:
.L8:
	.loc 1 33 16
	li	s0,0
.L5:
	.loc 1 49 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL7:
.L6:
	.cfi_restore_state
	sw	a0,12(sp)
	.loc 1 36 5 is_stmt 1
	.loc 1 36 11 is_stmt 0
	call	strlen
.LVL8:
	.loc 1 38 17
	lui	a5,%hi(.LANCHOR0)
	.loc 1 36 11
	mv	s0,a0
.LVL9:
	.loc 1 38 5 is_stmt 1
	.loc 1 38 17 is_stmt 0
	lw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 38 8
	beq	a0,zero,.L8
	.loc 1 45 5 is_stmt 1
	lw	a1,12(sp)
	mv	a2,s0
	call	qcc74x_uart_put
.LVL10:
	.loc 1 48 5
	.loc 1 48 12 is_stmt 0
	j	.L5
	.cfi_endproc
.LFE6:
	.size	puts, .-puts
	.section	.text.putstring,"ax",@progbits
	.align	1
	.globl	putstring
	.type	putstring, @function
putstring:
.LFB14:
	.cfi_startproc
	tail	puts
	.cfi_endproc
.LFE14:
	.size	putstring, .-putstring
	.section	.text.printf,"ax",@progbits
	.align	1
	.globl	printf
	.type	printf, @function
printf:
.LFB8:
	.loc 1 108 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 109 5
	.loc 1 110 5
	.loc 1 112 5
	.loc 1 108 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	a5,52(sp)
	.loc 1 112 8
	lui	a5,%hi(.LANCHOR0)
	lw	a5,%lo(.LANCHOR0)(a5)
	.loc 1 108 1
	sw	ra,28(sp)
	.cfi_offset 1, -36
	.loc 1 108 1
	sw	a1,36(sp)
	sw	a2,40(sp)
	sw	a3,44(sp)
	sw	a4,48(sp)
	sw	a6,56(sp)
	sw	a7,60(sp)
	.loc 1 112 8
	beq	a5,zero,.L16
	.loc 1 116 4 is_stmt 1
	addi	a1,sp,36
	sw	a1,12(sp)
	.loc 1 124 5
	.loc 1 124 11 is_stmt 0
	call	console_vsnprintf
.LVL12:
	.loc 1 125 4 is_stmt 1
	.loc 1 127 5
.L14:
	.loc 1 128 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL13:
.L16:
	.cfi_restore_state
	.loc 1 113 16
	li	a0,0
.LVL14:
	j	.L14
	.cfi_endproc
.LFE8:
	.size	printf, .-printf
	.section	.rodata.qcc74x_hexdump.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"%08X:"
	.align	2
.LC1:
	.string	"  "
	.align	2
.LC2:
	.string	"%02X "
	.align	2
.LC3:
	.string	"   "
	.align	2
.LC4:
	.string	" "
	.align	2
.LC5:
	.string	"%c"
	.align	2
.LC6:
	.string	"\n"
	.section	.text.qcc74x_hexdump,"ax",@progbits
	.align	1
	.globl	qcc74x_hexdump
	.type	qcc74x_hexdump, @function
qcc74x_hexdump:
.LFB9:
	.loc 1 133 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 134 5
	.loc 1 133 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	ra,44(sp)
	sw	s1,36(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 133 1
	mv	s3,a0
.LVL16:
	.loc 1 135 5 is_stmt 1
	.loc 1 137 5
	.loc 1 133 1 is_stmt 0
	mv	s2,a1
	.loc 1 137 12
	li	s0,0
	.loc 1 148 17
	lui	s4,%hi(.LC3)
	.loc 1 146 17
	lui	s5,%hi(.LC2)
	.loc 1 143 21
	lui	s6,%hi(.LC1)
	.loc 1 153 17
	lui	s7,%hi(.LC5)
.LVL17:
.L19:
	.loc 1 137 17 is_stmt 1 discriminator 1
	.loc 1 137 5 is_stmt 0 discriminator 1
	bgtu	s2,s0,.L27
	.loc 1 156 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL18:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL19:
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L27:
	.cfi_restore_state
	.loc 1 138 9 is_stmt 1
	lui	a0,%hi(.LC0)
	mv	a1,s0
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL21:
	.loc 1 140 9
	.loc 1 140 21
	.loc 1 140 16 is_stmt 0
	li	s1,0
	.loc 1 146 36
	add	s9,s3,s0
	.loc 1 140 9
	li	s8,16
.LVL22:
.L23:
	.loc 1 141 13 is_stmt 1
	.loc 1 141 16 is_stmt 0
	add	a5,s1,s0
	bleu	s2,a5,.L20
	.loc 1 142 17 is_stmt 1
	.loc 1 142 29 is_stmt 0
	andi	a5,s1,7
	.loc 1 142 20
	bne	a5,zero,.L21
	.loc 1 143 21 is_stmt 1
	addi	a0,s6,%lo(.LC1)
	call	printf
.LVL23:
.L21:
	.loc 1 146 17
	lrbu	a1,s9,s1,0
	addi	a0,s5,%lo(.LC2)
	call	printf
.LVL24:
.L22:
	.loc 1 140 29 discriminator 2
	.loc 1 140 30 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL25:
	.loc 1 140 21 is_stmt 1 discriminator 2
	.loc 1 140 9 is_stmt 0 discriminator 2
	bne	s1,s8,.L23
	.loc 1 149 9 is_stmt 1
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	printf
.LVL26:
	.loc 1 151 9
	.loc 1 151 21
	.loc 1 153 17 is_stmt 0
	li	s8,94
	.loc 1 151 9
	addi	s1,s0,16
.LVL27:
.L26:
	.loc 1 152 13 is_stmt 1
	.loc 1 152 16 is_stmt 0
	bgeu	s0,s2,.L24
	.loc 1 153 17 is_stmt 1
	.loc 1 153 50 is_stmt 0
	lrbu	a1,s3,s0,0
	.loc 1 153 59
	addi	a5,a1,-32
	.loc 1 153 17
	bleu	a5,s8,.L25
	li	a1,46
.L25:
	.loc 1 153 17 discriminator 4
	addi	a0,s7,%lo(.LC5)
	call	printf
.LVL28:
.L24:
	.loc 1 151 29 is_stmt 1 discriminator 2
	.loc 1 151 21 discriminator 2
	.loc 1 151 9 is_stmt 0 discriminator 2
	addi	s0,s0,1
	bne	s0,s1,.L26
	.loc 1 154 9 is_stmt 1 discriminator 2
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	printf
.LVL29:
	.loc 1 137 29 discriminator 2
	j	.L19
.LVL30:
.L20:
	.loc 1 148 17
	addi	a0,s4,%lo(.LC3)
	call	printf
.LVL31:
	j	.L22
	.cfi_endproc
.LFE9:
	.size	qcc74x_hexdump, .-qcc74x_hexdump
	.section	.rodata.qcc74x_dump.str1.4,"aMS",@progbits,1
	.align	2
.LC7:
	.string	"\r\n"
	.align	2
.LC8:
	.string	"%02x "
	.section	.text.qcc74x_dump,"ax",@progbits
	.align	1
	.globl	qcc74x_dump
	.type	qcc74x_dump, @function
qcc74x_dump:
.LFB10:
	.loc 1 159 1
	.cfi_startproc
.LVL32:
	.loc 1 160 5
	.loc 1 162 5
	.loc 1 159 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.loc 1 159 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 162 12
	li	s0,0
	.loc 1 164 13
	lui	s3,%hi(.LC7)
	.loc 1 167 9
	lui	s4,%hi(.LC8)
.LVL33:
.L33:
	.loc 1 162 17 is_stmt 1 discriminator 1
	.loc 1 162 5 is_stmt 0 discriminator 1
	bne	s0,s1,.L35
	.loc 1 170 5 is_stmt 1
	.loc 1 171 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL34:
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL35:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL36:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	.loc 1 170 5
	lui	a0,%hi(.LC7)
	.loc 1 171 1
	.loc 1 170 5
	addi	a0,a0,%lo(.LC7)
	.loc 1 171 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 170 5
	tail	printf
.LVL37:
.L35:
	.cfi_restore_state
	.loc 1 163 9 is_stmt 1
	.loc 1 163 15 is_stmt 0
	andi	a5,s0,15
	.loc 1 163 12
	bne	a5,zero,.L34
	.loc 1 164 13 is_stmt 1
	addi	a0,s3,%lo(.LC7)
	call	printf
.LVL38:
.L34:
	.loc 1 167 9 discriminator 2
	lrbu	a1,s2,s0,0
	addi	a0,s4,%lo(.LC8)
	.loc 1 162 27 is_stmt 0 discriminator 2
	addi	s0,s0,1
.LVL39:
	.loc 1 167 9 discriminator 2
	call	printf
.LVL40:
	.loc 1 162 26 is_stmt 1 discriminator 2
	j	.L33
	.cfi_endproc
.LFE10:
	.size	qcc74x_dump, .-qcc74x_dump
	.section	.rodata.qcc74x_regdump.str1.4,"aMS",@progbits,1
	.align	2
.LC9:
	.string	"%08lx[31:0]=%08lx\r\n"
	.section	.text.qcc74x_regdump,"ax",@progbits
	.align	1
	.globl	qcc74x_regdump
	.type	qcc74x_regdump, @function
qcc74x_regdump:
.LFB11:
	.loc 1 174 1
	.cfi_startproc
.LVL41:
	.loc 1 175 5
	lw	a2,0(a0)
	.loc 1 174 1 is_stmt 0
	mv	a1,a0
	.loc 1 175 5
	lui	a0,%hi(.LC9)
.LVL42:
	addi	a0,a0,%lo(.LC9)
	tail	printf
.LVL43:
	.cfi_endproc
.LFE11:
	.size	qcc74x_regdump, .-qcc74x_regdump
	.section	.text.qcc74x_uart_set_console,"ax",@progbits
	.align	1
	.globl	qcc74x_uart_set_console
	.type	qcc74x_uart_set_console, @function
qcc74x_uart_set_console:
.LFB12:
	.loc 1 183 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 184 5
	.loc 1 184 13 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 185 1
	ret
	.cfi_endproc
.LFE12:
	.size	qcc74x_uart_set_console, .-qcc74x_uart_set_console
	.globl	console
	.section	.bss.console,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	console, @object
	.size	console, 4
console:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stdarg.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 6 "./drivers/lhal/include/qcc74x_core.h"
	.file 7 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.file 8 "./drivers/lhal/include/qcc74x_uart.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4ac
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF37
	.byte	0xc
	.4byte	.LASF38
	.4byte	.LASF39
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
	.4byte	.LASF40
	.byte	0x7
	.byte	0x4
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x8
	.4byte	0xa9
	.byte	0x7
	.byte	0x4
	.4byte	0xb0
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
	.4byte	0xbb
	.byte	0x7
	.byte	0x4
	.4byte	0xd9
	.byte	0x9
	.byte	0xa
	.4byte	.LASF41
	.byte	0x10
	.byte	0x6
	.byte	0x67
	.byte	0x8
	.4byte	0x143
	.byte	0xb
	.4byte	.LASF16
	.byte	0x6
	.byte	0x68
	.byte	0x11
	.4byte	0xb5
	.byte	0
	.byte	0xb
	.4byte	.LASF17
	.byte	0x6
	.byte	0x69
	.byte	0xe
	.4byte	0x8f
	.byte	0x4
	.byte	0xb
	.4byte	.LASF18
	.byte	0x6
	.byte	0x6a
	.byte	0xd
	.4byte	0x83
	.byte	0x8
	.byte	0xc
	.string	"idx"
	.byte	0x6
	.byte	0x6b
	.byte	0xd
	.4byte	0x83
	.byte	0x9
	.byte	0xb
	.4byte	.LASF19
	.byte	0x6
	.byte	0x6c
	.byte	0xd
	.4byte	0x83
	.byte	0xa
	.byte	0xb
	.4byte	.LASF20
	.byte	0x6
	.byte	0x6d
	.byte	0xd
	.4byte	0x83
	.byte	0xb
	.byte	0xb
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
	.byte	0xd
	.4byte	.LASF42
	.byte	0x1
	.byte	0xb
	.byte	0x19
	.4byte	0x15c
	.byte	0x5
	.byte	0x3
	.4byte	console
	.byte	0x7
	.byte	0x4
	.4byte	0xda
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xb5
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x187
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.byte	0xb5
	.byte	0x36
	.4byte	0x15c
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0xe
	.4byte	.LASF24
	.byte	0x1
	.byte	0xad
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c8
	.byte	0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0xad
	.byte	0x1e
	.4byte	0x8f
	.4byte	.LLST11
	.byte	0x11
	.4byte	.LVL43
	.4byte	0x35a
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x9e
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x24e
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9e
	.byte	0x1b
	.4byte	0x24e
	.4byte	.LLST8
	.byte	0x13
	.string	"len"
	.byte	0x1
	.byte	0x9e
	.byte	0x2a
	.4byte	0x8f
	.4byte	.LLST9
	.byte	0x14
	.string	"i"
	.byte	0x1
	.byte	0xa0
	.byte	0xe
	.4byte	0x8f
	.4byte	.LLST10
	.byte	0x15
	.4byte	.LVL37
	.4byte	0x35a
	.4byte	0x223
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x16
	.4byte	.LVL38
	.4byte	0x35a
	.4byte	0x23a
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x17
	.4byte	.LVL40
	.4byte	0x35a
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x83
	.byte	0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x84
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x35a
	.byte	0x13
	.string	"ptr"
	.byte	0x1
	.byte	0x84
	.byte	0x21
	.4byte	0xd3
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x84
	.byte	0x2f
	.4byte	0x8f
	.4byte	.LLST4
	.byte	0x14
	.string	"buf"
	.byte	0x1
	.byte	0x86
	.byte	0x14
	.4byte	0xa3
	.4byte	.LLST5
	.byte	0x14
	.string	"i"
	.byte	0x1
	.byte	0x87
	.byte	0x9
	.4byte	0x75
	.4byte	.LLST6
	.byte	0x14
	.string	"j"
	.byte	0x1
	.byte	0x87
	.byte	0xc
	.4byte	0x75
	.4byte	.LLST7
	.byte	0x16
	.4byte	.LVL21
	.4byte	0x35a
	.4byte	0x2d3
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL23
	.4byte	0x35a
	.4byte	0x2ea
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x16
	.4byte	.LVL24
	.4byte	0x35a
	.4byte	0x301
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x16
	.4byte	.LVL26
	.4byte	0x35a
	.4byte	0x318
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x16
	.4byte	.LVL28
	.4byte	0x35a
	.4byte	0x32f
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x16
	.4byte	.LVL29
	.4byte	0x35a
	.4byte	0x346
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x17
	.4byte	.LVL31
	.4byte	0x35a
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF30
	.byte	0x5
	.byte	0xc8
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b7
	.byte	0x13
	.string	"fmt"
	.byte	0x1
	.byte	0x6b
	.byte	0x18
	.4byte	0xb5
	.4byte	.LLST2
	.byte	0x19
	.byte	0x1a
	.string	"len"
	.byte	0x1
	.byte	0x6d
	.byte	0x9
	.4byte	0x75
	.byte	0x1b
	.string	"ap"
	.byte	0x1
	.byte	0x6e
	.byte	0xd
	.4byte	0xc7
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x17
	.4byte	.LVL12
	.4byte	0x47d
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF43
	.byte	0x1
	.byte	0x33
	.byte	0x5
	.4byte	0x75
	.4byte	0x3de
	.byte	0x1d
	.string	"c"
	.byte	0x1
	.byte	0x33
	.byte	0x1b
	.4byte	0xb5
	.byte	0x1a
	.string	"len"
	.byte	0x1
	.byte	0x35
	.byte	0x9
	.4byte	0x75
	.byte	0
	.byte	0x18
	.4byte	.LASF31
	.byte	0x5
	.byte	0xdd
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x441
	.byte	0x13
	.string	"c"
	.byte	0x1
	.byte	0x1c
	.byte	0x16
	.4byte	0xb5
	.4byte	.LLST1
	.byte	0x1b
	.string	"len"
	.byte	0x1
	.byte	0x1e
	.byte	0x9
	.4byte	0x75
	.byte	0x1
	.byte	0x58
	.byte	0x16
	.4byte	.LVL8
	.4byte	0x489
	.4byte	0x429
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x17
	.4byte	.LVL10
	.4byte	0x495
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF32
	.byte	0x5
	.byte	0xdc
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x47d
	.byte	0x13
	.string	"c"
	.byte	0x1
	.byte	0xd
	.byte	0x11
	.4byte	0x75
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LVL2
	.4byte	0x4a2
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x1
	.byte	0x6a
	.byte	0xc
	.byte	0x1e
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x7
	.byte	0x29
	.byte	0x8
	.byte	0x1f
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x8
	.2byte	0x13b
	.byte	0x5
	.byte	0x1f
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x8
	.2byte	0x129
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x3
	.byte	0xe
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x26
	.byte	0
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
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
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL43-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL11
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12-1
	.4byte	.LVL13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8-1
	.4byte	.LFE6
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL4
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF37:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"__uint8_t"
.LASF38:
	.string	"./components/libc/printf.c"
.LASF35:
	.string	"qcc74x_uart_put"
.LASF40:
	.string	"__builtin_va_list"
.LASF3:
	.string	"short unsigned int"
.LASF39:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/libc"
.LASF36:
	.string	"qcc74x_uart_putchar"
.LASF34:
	.string	"strlen"
.LASF27:
	.string	"data"
.LASF15:
	.string	"va_list"
.LASF21:
	.string	"user_data"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"qcc74x_device_s"
.LASF43:
	.string	"putstring"
.LASF7:
	.string	"long unsigned int"
.LASF25:
	.string	"addr"
.LASF12:
	.string	"uint32_t"
.LASF32:
	.string	"putchar"
.LASF20:
	.string	"dev_type"
.LASF19:
	.string	"sub_idx"
.LASF42:
	.string	"console"
.LASF6:
	.string	"__uint32_t"
.LASF14:
	.string	"__gnuc_va_list"
.LASF10:
	.string	"unsigned int"
.LASF26:
	.string	"qcc74x_dump"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF28:
	.string	"qcc74x_hexdump"
.LASF17:
	.string	"reg_base"
.LASF24:
	.string	"qcc74x_regdump"
.LASF8:
	.string	"long long int"
.LASF16:
	.string	"name"
.LASF30:
	.string	"printf"
.LASF2:
	.string	"short int"
.LASF23:
	.string	"qcc74x_uart_set_console"
.LASF29:
	.string	"buflen"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF31:
	.string	"puts"
.LASF0:
	.string	"signed char"
.LASF18:
	.string	"irq_num"
.LASF22:
	.string	"_Bool"
.LASF33:
	.string	"console_vsnprintf"
	.ident	"GCC: (GNU) 10.4.0"
