	.file	"qcc74x_acomp.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_acomp_init,"ax",@progbits
	.align	1
	.globl	qcc74x_acomp_init
	.type	qcc74x_acomp_init, @function
qcc74x_acomp_init:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_acomp.c"
	.loc 1 15 1
	.cfi_startproc
.LVL0:
	.loc 1 19 5
	.loc 1 20 5
	.loc 1 22 5
	.loc 1 23 18 is_stmt 0
	li	a4,536936448
	.loc 1 22 8
	beq	a0,zero,.L5
	.loc 1 25 18
	addi	a4,a4,-1788
.L2:
.LVL1:
	.loc 1 29 5 is_stmt 1
	.loc 1 29 12 is_stmt 0
	lw	a5,0(a4)
.LVL2:
	.loc 1 30 5 is_stmt 1
	.loc 1 30 12 is_stmt 0
	andi	a3,a5,-2
.LVL3:
	.loc 1 31 5 is_stmt 1
	.loc 1 31 50 is_stmt 0
	sw	a3,0(a4)
	.loc 1 34 5 is_stmt 1
	.loc 1 34 8 is_stmt 0
	lbu	a2,0(a1)
	beq	a2,zero,.L3
	.loc 1 35 9 is_stmt 1
	.loc 1 35 16 is_stmt 0
	li	a5,67108864
	or	a5,a3,a5
.LVL4:
.L4:
	.loc 1 39 5 is_stmt 1
	.loc 1 39 12 is_stmt 0
	li	a3,-62914560
	addi	a3,a3,-1
	and	a5,a5,a3
.LVL5:
	.loc 1 40 5 is_stmt 1
	.loc 1 40 22 is_stmt 0
	lbu	a3,1(a1)
	.loc 1 40 37
	slli	a3,a3,22
	.loc 1 40 12
	or	a5,a3,a5
.LVL6:
	.loc 1 41 5 is_stmt 1
	.loc 1 41 12 is_stmt 0
	li	a3,-3932160
	addi	a3,a3,-1
	and	a5,a5,a3
.LVL7:
	.loc 1 42 5 is_stmt 1
	.loc 1 42 22 is_stmt 0
	lbu	a3,2(a1)
	.loc 1 42 37
	slli	a3,a3,18
	.loc 1 42 12
	or	a5,a3,a5
.LVL8:
	.loc 1 43 5 is_stmt 1
	.loc 1 43 12 is_stmt 0
	li	a3,-258048
	addi	a3,a3,-1
	and	a3,a5,a3
.LVL9:
	.loc 1 44 5 is_stmt 1
	.loc 1 44 22 is_stmt 0
	lbu	a5,4(a1)
	.loc 1 44 39
	slli	a5,a5,12
	.loc 1 44 12
	or	a5,a5,a3
.LVL10:
	.loc 1 45 5 is_stmt 1
	.loc 1 45 12 is_stmt 0
	li	a3,-4096
	addi	a3,a3,1023
	and	a3,a5,a3
.LVL11:
	.loc 1 46 5 is_stmt 1
	.loc 1 46 22 is_stmt 0
	lbu	a5,5(a1)
	.loc 1 46 34
	slli	a5,a5,10
	.loc 1 46 12
	or	a5,a5,a3
.LVL12:
	.loc 1 47 5 is_stmt 1
	.loc 1 48 5
	.loc 1 48 22 is_stmt 0
	lbu	a3,6(a1)
	.loc 1 48 12
	andi	a5,a5,-1010
.LVL13:
	.loc 1 48 44
	slli	a3,a3,7
	.loc 1 49 5 is_stmt 1
	.loc 1 49 12 is_stmt 0
	or	a5,a5,a3
.LVL14:
	.loc 1 50 5 is_stmt 1
	.loc 1 50 22 is_stmt 0
	lbu	a3,7(a1)
	.loc 1 50 44
	slli	a3,a3,4
	.loc 1 50 12
	or	a5,a3,a5
.LVL15:
	.loc 1 51 5 is_stmt 1
	.loc 1 51 50 is_stmt 0
	sw	a5,0(a4)
	.loc 1 53 5 is_stmt 1
.LVL16:
	.loc 1 54 5
	.loc 1 54 12 is_stmt 0
	li	a3,536936448
	lw	a5,-1784(a3)
.LVL17:
	.loc 1 55 5 is_stmt 1
	.loc 1 55 12 is_stmt 0
	li	a4,-1056964608
	addi	a4,a4,-1
	and	a4,a5,a4
.LVL18:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 22 is_stmt 0
	lbu	a5,3(a1)
	.loc 1 56 32
	slli	a5,a5,24
	.loc 1 56 12
	or	a5,a5,a4
.LVL19:
	.loc 1 57 5 is_stmt 1
	.loc 1 57 50 is_stmt 0
	sw	a5,-1784(a3)
	.loc 1 59 1
	ret
.LVL20:
.L5:
	.loc 1 23 18
	addi	a4,a4,-1792
	j	.L2
.LVL21:
.L3:
	.loc 1 37 9 is_stmt 1
	.loc 1 37 16 is_stmt 0
	li	a3,-67108864
.LVL22:
	addi	a3,a3,-2
	and	a5,a5,a3
.LVL23:
	j	.L4
	.cfi_endproc
.LFE5:
	.size	qcc74x_acomp_init, .-qcc74x_acomp_init
	.section	.text.qcc74x_acomp_enable,"ax",@progbits
	.align	1
	.globl	qcc74x_acomp_enable
	.type	qcc74x_acomp_enable, @function
qcc74x_acomp_enable:
.LFB6:
	.loc 1 62 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 66 5
	.loc 1 67 5
	.loc 1 69 5
	.loc 1 70 18 is_stmt 0
	li	a5,536936448
	.loc 1 69 8
	beq	a0,zero,.L8
	.loc 1 72 18
	addi	a5,a5,-1788
.L7:
.LVL25:
	.loc 1 75 5 is_stmt 1
	.loc 1 75 12 is_stmt 0
	lw	a4,0(a5)
.LVL26:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 12 is_stmt 0
	ori	a4,a4,1
.LVL27:
	.loc 1 77 5 is_stmt 1
	.loc 1 77 50 is_stmt 0
	sw	a4,0(a5)
	.loc 1 79 1
	ret
.LVL28:
.L8:
	.loc 1 70 18
	addi	a5,a5,-1792
	j	.L7
	.cfi_endproc
.LFE6:
	.size	qcc74x_acomp_enable, .-qcc74x_acomp_enable
	.section	.text.qcc74x_acomp_disable,"ax",@progbits
	.align	1
	.globl	qcc74x_acomp_disable
	.type	qcc74x_acomp_disable, @function
qcc74x_acomp_disable:
.LFB7:
	.loc 1 82 1 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 86 5
	.loc 1 87 5
	.loc 1 89 5
	.loc 1 90 18 is_stmt 0
	li	a5,536936448
	.loc 1 89 8
	beq	a0,zero,.L11
	.loc 1 92 18
	addi	a5,a5,-1788
.L10:
.LVL30:
	.loc 1 96 5 is_stmt 1
	.loc 1 96 12 is_stmt 0
	lw	a4,0(a5)
.LVL31:
	.loc 1 97 5 is_stmt 1
	.loc 1 97 12 is_stmt 0
	andi	a4,a4,-2
.LVL32:
	.loc 1 98 5 is_stmt 1
	.loc 1 98 50 is_stmt 0
	sw	a4,0(a5)
	.loc 1 100 1
	ret
.LVL33:
.L11:
	.loc 1 90 18
	addi	a5,a5,-1792
	j	.L10
	.cfi_endproc
.LFE7:
	.size	qcc74x_acomp_disable, .-qcc74x_acomp_disable
	.section	.text.qcc74x_acomp_get_result,"ax",@progbits
	.align	1
	.globl	qcc74x_acomp_get_result
	.type	qcc74x_acomp_get_result, @function
qcc74x_acomp_get_result:
.LFB8:
	.loc 1 103 1 is_stmt 1
	.cfi_startproc
.LVL34:
	.loc 1 107 5
	.loc 1 108 5
	.loc 1 110 5
	.loc 1 111 5
	.loc 1 111 12 is_stmt 0
	li	a5,536936448
	lw	a5,-1784(a5)
.LVL35:
	.loc 1 113 5 is_stmt 1
	.loc 1 113 8 is_stmt 0
	bne	a0,zero,.L13
	.loc 1 114 9 is_stmt 1
	.loc 1 114 42 is_stmt 0
	extu	a0,a5,19+1-1,19
.LVL36:
	ret
.LVL37:
.L13:
	.loc 1 116 9 is_stmt 1
	.loc 1 116 42 is_stmt 0
	extu	a0,a5,17+1-1,17
.LVL38:
	.loc 1 119 1
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_acomp_get_result, .-qcc74x_acomp_get_result
	.section	.text.qcc74x_acomp_get_postive_input,"ax",@progbits
	.align	1
	.globl	qcc74x_acomp_get_postive_input
	.type	qcc74x_acomp_get_postive_input, @function
qcc74x_acomp_get_postive_input:
.LFB9:
	.loc 1 122 1 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 123 5
	.loc 1 124 5
	.loc 1 126 5
	.loc 1 127 18 is_stmt 0
	li	a5,536936448
	.loc 1 126 8
	beq	a0,zero,.L17
	.loc 1 129 18
	addi	a5,a5,-1788
.L16:
.LVL40:
	.loc 1 132 5 is_stmt 1
	.loc 1 132 12 is_stmt 0
	lw	a0,0(a5)
.LVL41:
	.loc 1 134 5 is_stmt 1
	.loc 1 135 1 is_stmt 0
	extu	a0,a0,22+4-1,22
.LVL42:
	ret
.LVL43:
.L17:
	.loc 1 127 18
	addi	a5,a5,-1792
	j	.L16
	.cfi_endproc
.LFE9:
	.size	qcc74x_acomp_get_postive_input, .-qcc74x_acomp_get_postive_input
	.section	.text.qcc74x_acomp_gpio_2_chanid,"ax",@progbits
	.align	1
	.globl	qcc74x_acomp_gpio_2_chanid
	.type	qcc74x_acomp_gpio_2_chanid, @function
qcc74x_acomp_gpio_2_chanid:
.LFB10:
	.loc 1 138 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 203 5
	.loc 1 203 8 is_stmt 0
	li	a4,20
	.loc 1 138 1
	mv	a5,a0
	.loc 1 203 8
	bne	a0,a4,.L19
	.loc 1 204 9 is_stmt 1
	.loc 1 204 18 is_stmt 0
	sw	zero,0(a1)
.LVL45:
.L28:
	.loc 1 245 12
	li	a0,0
.L18:
	.loc 1 247 1
	ret
.LVL46:
.L19:
	.loc 1 205 12 is_stmt 1
	.loc 1 205 15 is_stmt 0
	li	a4,19
	bne	a0,a4,.L21
	.loc 1 206 9 is_stmt 1
	.loc 1 206 18 is_stmt 0
	li	a5,1
.LVL47:
.L29:
	.loc 1 218 18
	sw	a5,0(a1)
	j	.L28
.LVL48:
.L21:
	.loc 1 207 12 is_stmt 1
	.loc 1 207 15 is_stmt 0
	li	a4,2
	beq	a0,a4,.L29
	.loc 1 209 12 is_stmt 1
	.loc 1 209 15 is_stmt 0
	li	a4,3
	beq	a0,a4,.L29
	.loc 1 211 12 is_stmt 1
	.loc 1 211 15 is_stmt 0
	li	a4,14
	bne	a0,a4,.L24
	.loc 1 212 9 is_stmt 1
	.loc 1 212 18 is_stmt 0
	li	a5,4
	j	.L29
.L24:
	.loc 1 213 12 is_stmt 1
	.loc 1 213 15 is_stmt 0
	li	a4,13
	bne	a0,a4,.L25
	.loc 1 214 9 is_stmt 1
	.loc 1 214 18 is_stmt 0
	li	a5,5
	j	.L29
.L25:
	.loc 1 215 12 is_stmt 1
	.loc 1 215 15 is_stmt 0
	li	a4,12
	bne	a0,a4,.L26
	.loc 1 216 9 is_stmt 1
	.loc 1 216 18 is_stmt 0
	li	a5,6
	j	.L29
.L26:
	.loc 1 217 12 is_stmt 1
	.loc 1 217 15 is_stmt 0
	li	a4,10
	.loc 1 220 16
	li	a0,-1
.LVL49:
	.loc 1 217 15
	bne	a5,a4,.L18
	.loc 1 218 9 is_stmt 1
	.loc 1 218 18 is_stmt 0
	li	a5,7
.LVL50:
	j	.L29
	.cfi_endproc
.LFE10:
	.size	qcc74x_acomp_gpio_2_chanid, .-qcc74x_acomp_gpio_2_chanid
	.section	.text.qcc74x_acomp_chanid_2_gpio,"ax",@progbits
	.align	1
	.globl	qcc74x_acomp_chanid_2_gpio
	.type	qcc74x_acomp_chanid_2_gpio, @function
qcc74x_acomp_chanid_2_gpio:
.LFB11:
	.loc 1 250 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 315 5
	.loc 1 250 1 is_stmt 0
	mv	a5,a0
	.loc 1 315 8
	bne	a0,zero,.L31
	.loc 1 316 9 is_stmt 1
	.loc 1 316 14 is_stmt 0
	li	a5,20
.LVL52:
.L40:
	.loc 1 330 14
	sw	a5,0(a1)
	.loc 1 357 12
	li	a0,0
.L30:
	.loc 1 359 1
	ret
.LVL53:
.L31:
	.loc 1 317 12 is_stmt 1
	.loc 1 317 15 is_stmt 0
	li	a4,1
	bne	a0,a4,.L33
	.loc 1 318 9 is_stmt 1
	.loc 1 318 14 is_stmt 0
	li	a5,19
	j	.L40
.L33:
	.loc 1 319 12 is_stmt 1
	.loc 1 319 15 is_stmt 0
	li	a4,2
	beq	a0,a4,.L40
	.loc 1 321 12 is_stmt 1
	.loc 1 321 15 is_stmt 0
	li	a4,3
	beq	a0,a4,.L40
	.loc 1 323 12 is_stmt 1
	.loc 1 323 15 is_stmt 0
	li	a4,4
	bne	a0,a4,.L36
	.loc 1 324 9 is_stmt 1
	.loc 1 324 14 is_stmt 0
	li	a5,14
	j	.L40
.L36:
	.loc 1 325 12 is_stmt 1
	.loc 1 325 15 is_stmt 0
	li	a4,5
	bne	a0,a4,.L37
	.loc 1 326 9 is_stmt 1
	.loc 1 326 14 is_stmt 0
	li	a5,13
	j	.L40
.L37:
	.loc 1 327 12 is_stmt 1
	.loc 1 327 15 is_stmt 0
	li	a4,6
	bne	a0,a4,.L38
	.loc 1 328 9 is_stmt 1
	.loc 1 328 14 is_stmt 0
	li	a5,12
	j	.L40
.L38:
	.loc 1 329 12 is_stmt 1
	.loc 1 329 15 is_stmt 0
	li	a4,7
	.loc 1 332 16
	li	a0,-1
.LVL54:
	.loc 1 329 15
	bne	a5,a4,.L30
	.loc 1 330 9 is_stmt 1
	.loc 1 330 14 is_stmt 0
	li	a5,10
.LVL55:
	j	.L40
	.cfi_endproc
.LFE11:
	.size	qcc74x_acomp_chanid_2_gpio, .-qcc74x_acomp_chanid_2_gpio
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_acomp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x321
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF36
	.byte	0xc
	.4byte	.LASF37
	.4byte	.LASF38
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
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x88
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x7c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x5
	.4byte	.LASF39
	.byte	0x8
	.byte	0x4
	.byte	0x60
	.byte	0x8
	.4byte	0x130
	.byte	0x6
	.4byte	.LASF16
	.byte	0x4
	.byte	0x61
	.byte	0xd
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.4byte	.LASF17
	.byte	0x4
	.byte	0x62
	.byte	0xd
	.4byte	0x8f
	.byte	0x1
	.byte	0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x63
	.byte	0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0x6
	.4byte	.LASF19
	.byte	0x4
	.byte	0x64
	.byte	0xd
	.4byte	0x8f
	.byte	0x3
	.byte	0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x65
	.byte	0xd
	.4byte	0x8f
	.byte	0x4
	.byte	0x6
	.4byte	.LASF21
	.byte	0x4
	.byte	0x66
	.byte	0xd
	.4byte	0x8f
	.byte	0x5
	.byte	0x6
	.4byte	.LASF22
	.byte	0x4
	.byte	0x67
	.byte	0xd
	.4byte	0x8f
	.byte	0x6
	.byte	0x6
	.4byte	.LASF23
	.byte	0x4
	.byte	0x68
	.byte	0xd
	.4byte	0x8f
	.byte	0x7
	.byte	0
	.byte	0x7
	.4byte	0xba
	.byte	0x8
	.4byte	.LASF25
	.byte	0x1
	.byte	0xf9
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x16e
	.byte	0x9
	.4byte	.LASF24
	.byte	0x1
	.byte	0xf9
	.byte	0x29
	.4byte	0x9b
	.4byte	.LLST11
	.byte	0xa
	.string	"pin"
	.byte	0x1
	.byte	0xf9
	.byte	0x3c
	.4byte	0x16e
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x9b
	.byte	0x8
	.4byte	.LASF26
	.byte	0x1
	.byte	0x89
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ad
	.byte	0xc
	.string	"pin"
	.byte	0x1
	.byte	0x89
	.byte	0x29
	.4byte	0x9b
	.4byte	.LLST10
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x89
	.byte	0x38
	.4byte	0x16e
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x8
	.4byte	.LASF27
	.byte	0x1
	.byte	0x79
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1f8
	.byte	0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x79
	.byte	0x31
	.4byte	0x8f
	.4byte	.LLST7
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x7b
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST8
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x7c
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST9
	.byte	0
	.byte	0x8
	.4byte	.LASF31
	.byte	0x1
	.byte	0x66
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x241
	.byte	0x9
	.4byte	.LASF28
	.byte	0x1
	.byte	0x66
	.byte	0x2a
	.4byte	0x8f
	.4byte	.LLST6
	.byte	0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x6b
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x6c
	.byte	0xe
	.4byte	0x9b
	.4byte	0x2000f908
	.byte	0
	.byte	0x11
	.4byte	.LASF32
	.byte	0x1
	.byte	0x51
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x286
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x51
	.byte	0x23
	.4byte	0x8f
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x56
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST4
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x57
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST5
	.byte	0
	.byte	0x11
	.4byte	.LASF33
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x2cb
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0x3d
	.byte	0x22
	.4byte	0x8f
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x42
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST2
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x43
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST3
	.byte	0
	.byte	0x11
	.4byte	.LASF34
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x31e
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0xe
	.byte	0x20
	.4byte	0x8f
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0xe
	.byte	0x4e
	.4byte	0x31e
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.4byte	.LASF29
	.byte	0x1
	.byte	0x13
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF30
	.byte	0x1
	.byte	0x14
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST1
	.byte	0
	.byte	0xb
	.byte	0x4
	.4byte	0x130
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
	.byte	0x6
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
	.byte	0x7
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0x17
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x1c
	.byte	0x6
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST11:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL55
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL50
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xfc7e
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	.LVL23
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x6
	.byte	0xc
	.4byte	0x2000f908
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
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
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF19:
	.string	"vio_sel"
.LASF5:
	.string	"__uint8_t"
.LASF24:
	.string	"channel"
.LASF31:
	.string	"qcc74x_acomp_get_result"
.LASF14:
	.string	"uintptr_t"
.LASF10:
	.string	"__uintptr_t"
.LASF32:
	.string	"qcc74x_acomp_disable"
.LASF38:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/drivers/lhal"
.LASF39:
	.string	"qcc74x_acomp_config_s"
.LASF26:
	.string	"qcc74x_acomp_gpio_2_chanid"
.LASF33:
	.string	"qcc74x_acomp_enable"
.LASF1:
	.string	"unsigned char"
.LASF37:
	.string	"./drivers/lhal/src/qcc74x_acomp.c"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF23:
	.string	"hysteresis_neg_volt"
.LASF35:
	.string	"config"
.LASF18:
	.string	"neg_chan_sel"
.LASF6:
	.string	"__uint32_t"
.LASF28:
	.string	"acomp_id"
.LASF25:
	.string	"qcc74x_acomp_chanid_2_gpio"
.LASF17:
	.string	"pos_chan_sel"
.LASF11:
	.string	"unsigned int"
.LASF9:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF22:
	.string	"hysteresis_pos_volt"
.LASF21:
	.string	"bias_prog"
.LASF30:
	.string	"reg_base"
.LASF27:
	.string	"qcc74x_acomp_get_postive_input"
.LASF16:
	.string	"mux_en"
.LASF8:
	.string	"long long int"
.LASF15:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF29:
	.string	"regval"
.LASF13:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF34:
	.string	"qcc74x_acomp_init"
.LASF20:
	.string	"scaling_factor"
	.ident	"GCC: (GNU) 10.4.0"
