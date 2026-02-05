	.file	"qcc74x_mtimer.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.systick_isr,"ax",@progbits
	.align	1
	.type	systick_isr, @function
systick_isr:
.LFB242:
	.file 1 "./drivers/lhal/src/qcc74x_mtimer.c"
	.loc 1 25 1
	.cfi_startproc
.LVL0:
	.loc 1 29 5
.LBB8:
.LBB9:
	.file 2 "./drivers/lhal/include/arch/risc-v/t-head/Core/Include/core_rv32.h"
	.loc 2 691 5
	.loc 2 691 40 is_stmt 0
	li	a1,-536854528
.LVL1:
	lw	a2,0(a1)
	lw	a3,4(a1)
	lui	a0,%hi(.LANCHOR0)
.LVL2:
	lw	a4,%lo(.LANCHOR0)(a0)
	.loc 2 691 8
	or	a2,a2,a3
	li	a5,0
	beq	a2,zero,.L2
	.loc 2 691 91
	lw	a2,0(a1)
	lw	a3,4(a1)
	.loc 2 691 57
	li	a0,-1
	bne	a2,a0,.L6
	beq	a2,a3,.L2
.L6:
	.loc 2 692 9 is_stmt 1
	.loc 2 692 82 is_stmt 0
	li	a1,-536854528
	lw	a2,0(a1)
	lw	a3,4(a1)
	.loc 2 692 93
	add64	a4,a2,a4
	.loc 2 692 50
	sw	a4,0(a1)
.LVL3:
	sw	a5,4(a1)
.L5:
	.loc 2 697 5 is_stmt 1
.LVL4:
.LBE9:
.LBE8:
	.loc 1 31 5
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	jr	a5
.LVL5:
.L2:
.LBB11:
.LBB10:
	.loc 2 694 9
	.loc 2 694 82 is_stmt 0
	li	a3,-536821760
	lw	a2,-8(a3)
	lw	a3,-4(a3)
	.loc 2 694 90
	add64	a4,a2,a4
	.loc 2 694 50
	li	a3,-536854528
	sw	a4,0(a3)
.LVL6:
	sw	a5,4(a3)
	j	.L5
.LBE10:
.LBE11:
	.cfi_endproc
.LFE242:
	.size	systick_isr, .-systick_isr
	.section	.text.qcc74x_mtimer_config,"ax",@progbits
	.align	1
	.globl	qcc74x_mtimer_config
	.type	qcc74x_mtimer_config, @function
qcc74x_mtimer_config:
.LFB243:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 36 5
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 36 5
	li	a0,7
.LVL8:
	.loc 1 35 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 35 1
	sw	a1,12(sp)
	sw	a2,8(sp)
	.loc 1 36 5
	call	qcc74x_irq_disable
.LVL9:
	.loc 1 38 5 is_stmt 1
	.loc 1 38 23 is_stmt 0
	lw	a1,12(sp)
	.loc 1 39 22
	lw	a2,8(sp)
	.loc 1 38 23
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	sw	s0,0(a5)
	sw	a1,4(a5)
	.loc 1 39 5 is_stmt 1
	.loc 1 39 22 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	a2,%lo(.LANCHOR1)(a5)
	.loc 1 43 5 is_stmt 1
.LVL10:
.LBB14:
.LBB15:
	.loc 2 714 5
	.loc 2 714 78 is_stmt 0
	li	a5,-536821760
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	.loc 2 714 86
	mv	a4,s0
	li	a5,0
	add64	a4,a4,a2
	.loc 2 714 46
	li	a3,-536854528
	sw	a4,0(a3)
.LBE15:
.LBE14:
	.loc 1 46 5
	lui	a1,%hi(systick_isr)
.LBB17:
.LBB16:
	.loc 2 714 46
	sw	a5,4(a3)
	.loc 2 716 5 is_stmt 1
.LVL11:
.LBE16:
.LBE17:
	.loc 1 46 5
	li	a2,0
	addi	a1,a1,%lo(systick_isr)
	li	a0,7
	call	qcc74x_irq_attach
.LVL12:
	.loc 1 47 5
	.loc 1 48 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 47 5
	li	a0,7
	.loc 1 48 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL13:
	.loc 1 47 5
	tail	qcc74x_irq_enable
.LVL14:
	.cfi_endproc
.LFE243:
	.size	qcc74x_mtimer_config, .-qcc74x_mtimer_config
	.section	.tcm_code../drivers/lhal/src/qcc74x_mtimer.c50,"ax",@progbits
	.align	1
	.weak	qcc74x_mtimer_get_freq
	.type	qcc74x_mtimer_get_freq, @function
qcc74x_mtimer_get_freq:
.LFB244:
	.loc 1 51 1 is_stmt 1
	.cfi_startproc
	.loc 1 52 5
	.loc 1 53 1 is_stmt 0
	li	a0,999424
	addi	a0,a0,576
	ret
	.cfi_endproc
.LFE244:
	.size	qcc74x_mtimer_get_freq, .-qcc74x_mtimer_get_freq
	.section	.tcm_code../drivers/lhal/src/qcc74x_mtimer.c55,"ax",@progbits
	.align	1
	.globl	qcc74x_mtimer_get_time_us
	.type	qcc74x_mtimer_get_time_us, @function
qcc74x_mtimer_get_time_us:
.LFB245:
	.loc 1 56 1 is_stmt 1
	.cfi_startproc
	.loc 1 57 5
	.loc 1 56 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,60(sp)
	.cfi_offset 8, -4
	.loc 1 57 23
	sw	zero,12(sp)
.LBB26:
.LBB27:
	.loc 2 752 43
	li	a5,-536821760
.LBE27:
.LBE26:
	.loc 1 76 12
	li	s0,1000
.L19:
	.loc 1 61 5 is_stmt 1
	.loc 1 63 5
	.loc 1 70 9
.LBB29:
.LBB28:
	.loc 2 752 5
	.loc 2 752 43 is_stmt 0
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	.loc 2 752 51
	li	t6,0
	li	t2,0
.LBE28:
.LBE29:
	.loc 1 70 18
	sw	a3,24(sp)
	sw	t6,28(sp)
	.loc 1 71 9 is_stmt 1
.LBB30:
.LBB31:
	.loc 2 743 5
	.loc 2 743 42 is_stmt 0
	lw	a2,-8(a5)
	lw	a3,-4(a5)
	li	a7,0
.LBE31:
.LBE30:
	.loc 1 71 17
	sw	a2,16(sp)
	sw	t2,20(sp)
	.loc 1 72 9 is_stmt 1
.LBB32:
.LBB33:
	.loc 2 743 5
	.loc 2 743 42 is_stmt 0
	lw	a2,-8(a5)
	lw	a3,-4(a5)
.LBE33:
.LBE32:
.LBB34:
.LBB35:
	.loc 2 752 51
	li	t4,0
.LBE35:
.LBE34:
	.loc 1 72 18
	sw	a2,32(sp)
	sw	a7,36(sp)
	.loc 1 73 9 is_stmt 1
.LBB37:
.LBB36:
	.loc 2 752 5
	.loc 2 752 43 is_stmt 0
	lw	a2,-8(a5)
	lw	a3,-4(a5)
.LBE36:
.LBE37:
	.loc 1 73 19
	sw	a3,40(sp)
	sw	t4,44(sp)
	.loc 1 75 9 is_stmt 1
	.loc 1 75 16 is_stmt 0
	lw	a4,12(sp)
	addi	a4,a4,1
	sw	a4,12(sp)
	.loc 1 76 9 is_stmt 1
	.loc 1 76 21 is_stmt 0
	lw	a4,12(sp)
	.loc 1 76 12
	beq	a4,s0,.L17
	.loc 1 79 13 is_stmt 1
	.loc 1 79 22 is_stmt 0
	lw	a2,16(sp)
	lw	a3,20(sp)
	lw	a0,32(sp)
	lw	a1,36(sp)
	.loc 1 79 5
	bgtu	a3,a1,.L19
	bne	a3,a1,.L18
	bltu	a0,a2,.L19
.L18:
	.loc 1 79 45 discriminator 1
	lw	a2,24(sp)
	lw	a3,28(sp)
	lw	a0,40(sp)
	lw	a1,44(sp)
	.loc 1 79 33 discriminator 1
	bne	a0,a2,.L19
	bne	a1,a3,.L19
	.loc 1 83 5 is_stmt 1
	.loc 1 83 35 is_stmt 0
	lw	a2,40(sp)
	lw	a3,44(sp)
	.loc 1 83 12
	lw	a4,32(sp)
	lw	a5,36(sp)
	.loc 1 83 35
	li	a0,0
	mv	a1,a2
	.loc 1 83 12
	add64	a0,a0,a4
.L13:
	.loc 1 86 1
	lw	s0,60(sp)
	.cfi_remember_state
	.cfi_restore 8
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.L17:
	.cfi_restore_state
	.loc 1 77 20
	li	a0,0
	li	a1,0
	j	.L13
	.cfi_endproc
.LFE245:
	.size	qcc74x_mtimer_get_time_us, .-qcc74x_mtimer_get_time_us
	.section	.tcm_code../drivers/lhal/src/qcc74x_mtimer.c88,"ax",@progbits
	.align	1
	.weak	__div64_32
	.type	__div64_32, @function
__div64_32:
.LFB246:
	.loc 1 89 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 90 5
	.loc 1 90 14 is_stmt 0
	lw	a3,4(a0)
	lw	a2,0(a0)
.LVL16:
	.loc 1 91 5 is_stmt 1
	.loc 1 91 14 is_stmt 0
	mv	a4,a1
	li	a5,0
.LVL17:
	.loc 1 92 5 is_stmt 1
	.loc 1 93 5
	.loc 1 95 5
	.loc 1 96 5
	.loc 1 95 9 is_stmt 0
	li	t1,0
	li	t2,0
	.loc 1 96 8
	bgtu	a1,a3,.L22
	.loc 1 97 9 is_stmt 1
	.loc 1 97 14 is_stmt 0
	divu	t3,a3,a1
.LVL18:
	.loc 1 98 9 is_stmt 1
	.loc 1 99 40 is_stmt 0
	li	a6,0
	mul	a7,a1,t3
	.loc 1 98 13
	mv	t2,t3
.LVL19:
	.loc 1 99 9 is_stmt 1
	.loc 1 99 13 is_stmt 0
	sub64	a2,a2,a6
.LVL20:
.L22:
	.loc 1 95 9
	li	a6,1
	li	a7,0
	.loc 1 101 27
	mv	a1,a3
.LVL21:
	mv	t4,a2
	j	.L23
.LVL22:
.L26:
	.loc 1 102 9 is_stmt 1
	.loc 1 102 11 is_stmt 0
	wexti	a5,a4,31
	.loc 1 103 11
	wexti	a7,a6,31
	.loc 1 102 11
	slli	a4,a4,1
.LVL23:
	.loc 1 103 9 is_stmt 1
	.loc 1 103 11 is_stmt 0
	slli	a6,a6,1
.LVL24:
.L23:
	.loc 1 101 11 is_stmt 1
	bgt	a5,zero,.L31
	bne	a5,zero,.L33
	beq	a4,zero,.L33
.L31:
	.loc 1 101 27 is_stmt 0 discriminator 1
	bgtu	a1,a5,.L26
	bne	a1,a5,.L33
	bgtu	t4,a4,.L26
.L33:
	.loc 1 106 5 is_stmt 1
	.loc 1 107 9
	.loc 1 107 12 is_stmt 0
	bgtu	a5,a3,.L28
	bne	a5,a3,.L32
	bltu	a2,a4,.L28
.L32:
	.loc 1 108 13 is_stmt 1
	.loc 1 108 17 is_stmt 0
	sub64	a2,a2,a4
.LVL25:
	.loc 1 109 13 is_stmt 1
	.loc 1 109 17 is_stmt 0
	add64	t1,t1,a6
.LVL26:
.L28:
	.loc 1 111 9 is_stmt 1
	.loc 1 112 11 is_stmt 0
	wexti	a6,a6,1
.LVL27:
	srli	a7,a7,1
	.loc 1 113 5
	or	a1,a6,a7
	.loc 1 111 11
	wexti	a4,a4,1
.LVL28:
	srli	a5,a5,1
.LVL29:
	.loc 1 112 9 is_stmt 1
	.loc 1 113 13
	.loc 1 113 5 is_stmt 0
	bne	a1,zero,.L33
	.loc 1 115 5 is_stmt 1
	.loc 1 115 8 is_stmt 0
	sw	t1,0(a0)
	sw	t2,4(a0)
	.loc 1 116 5 is_stmt 1
	.loc 1 117 1 is_stmt 0
	mv	a0,a2
.LVL30:
	ret
	.cfi_endproc
.LFE246:
	.size	__div64_32, .-__div64_32
	.globl	__udivdi3
	.section	.tcm_code../drivers/lhal/src/qcc74x_mtimer.c119,"ax",@progbits
	.align	1
	.globl	qcc74x_mtimer_get_time_ms
	.type	qcc74x_mtimer_get_time_ms, @function
qcc74x_mtimer_get_time_ms:
.LFB247:
	.loc 1 120 1 is_stmt 1
	.cfi_startproc
	.loc 1 129 5
	.loc 1 120 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 129 12
	call	qcc74x_mtimer_get_time_us
.LVL31:
	.loc 1 129 40
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL32:
	.loc 1 132 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE247:
	.size	qcc74x_mtimer_get_time_ms, .-qcc74x_mtimer_get_time_ms
	.section	.tcm_code../drivers/lhal/src/qcc74x_mtimer.c134,"ax",@progbits
	.align	1
	.globl	qcc74x_mtimer_delay_us
	.type	qcc74x_mtimer_delay_us, @function
qcc74x_mtimer_delay_us:
.LFB248:
	.loc 1 135 1 is_stmt 1
	.cfi_startproc
.LVL33:
	.loc 1 139 5
	.loc 1 135 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s2,4(sp)
	sw	s3,0(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -12
	.cfi_offset 19, -16
	.cfi_offset 1, -4
	.loc 1 135 1
	mv	s0,a0
	.loc 1 139 27
	call	qcc74x_mtimer_get_time_us
.LVL34:
	mv	s2,a0
	mv	s3,a1
.LVL35:
	.loc 1 141 5 is_stmt 1
.L38:
	.loc 1 142 5 discriminator 1
	.loc 1 141 11 discriminator 1
	.loc 1 141 12 is_stmt 0 discriminator 1
	call	qcc74x_mtimer_get_time_us
.LVL36:
	.loc 1 141 40 discriminator 1
	sub64	a0,a0,s2
	.loc 1 141 11 discriminator 1
	bne	a1,zero,.L37
	bgtu	s0,a0,.L38
.L37:
	.loc 1 144 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL37:
	lw	s2,4(sp)
	.cfi_restore 18
.LVL38:
	lw	s3,0(sp)
	.cfi_restore 19
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE248:
	.size	qcc74x_mtimer_delay_us, .-qcc74x_mtimer_delay_us
	.section	.tcm_code../drivers/lhal/src/qcc74x_mtimer.c146,"ax",@progbits
	.align	1
	.globl	qcc74x_mtimer_delay_ms
	.type	qcc74x_mtimer_delay_ms, @function
qcc74x_mtimer_delay_ms:
.LFB249:
	.loc 1 147 1 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 151 5
	.loc 1 147 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 151 27
	call	qcc74x_mtimer_get_time_us
.LVL40:
	mv	s2,a0
	.loc 1 153 71
	li	a0,1000
	.loc 1 151 27
	mv	s3,a1
.LVL41:
	.loc 1 153 5 is_stmt 1
	.loc 1 153 71 is_stmt 0
	mulr64	a0,s0,a0
	.loc 1 153 11
	mv	s1,a1
	mv	s0,a0
.LVL42:
.L45:
	.loc 1 154 5 is_stmt 1 discriminator 1
	.loc 1 153 11 discriminator 1
	.loc 1 153 12 is_stmt 0 discriminator 1
	call	qcc74x_mtimer_get_time_us
.LVL43:
	.loc 1 153 40 discriminator 1
	sub64	a0,a0,s2
	.loc 1 153 11 discriminator 1
	bgtu	s1,a1,.L45
	bne	s1,a1,.L42
	bgtu	s0,a0,.L45
.L42:
	.loc 1 156 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL44:
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE249:
	.size	qcc74x_mtimer_delay_ms, .-qcc74x_mtimer_delay_ms
	.section	.bss.current_set_ticks,"aw",@nobits
	.align	3
	.set	.LANCHOR0,. + 0
	.type	current_set_ticks, @object
	.size	current_set_ticks, 8
current_set_ticks:
	.zero	8
	.section	.bss.systick_callback,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	systick_callback, @object
	.size	systick_callback, 4
systick_callback:
	.zero	4
	.text
.Letext0:
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./drivers/lhal/include/qcc74x_irq.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x50c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF49
	.byte	0xc
	.4byte	.LASF50
	.4byte	.LASF51
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x3
	.byte	0x4d
	.byte	0x12
	.4byte	0x5b
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6e
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x67
	.byte	0x17
	.4byte	0x81
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x69
	.byte	0x20
	.4byte	0x25
	.byte	0x4
	.4byte	0x25
	.byte	0x5
	.4byte	0x94
	.byte	0x6
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2c
	.byte	0x13
	.4byte	0x4f
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x62
	.byte	0x4
	.4byte	0xb1
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x38
	.byte	0x13
	.4byte	0x75
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3c
	.byte	0x14
	.4byte	0x88
	.byte	0x4
	.4byte	0xce
	.byte	0x7
	.byte	0x4
	.byte	0x8
	.byte	0x4
	.4byte	0xe7
	.byte	0x9
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0xa
	.2byte	0x8000
	.byte	0x2
	.2byte	0x159
	.byte	0x9
	.4byte	0x126
	.byte	0xb
	.4byte	.LASF18
	.byte	0x2
	.2byte	0x15b
	.byte	0x21
	.4byte	0x94
	.byte	0
	.byte	0xb
	.4byte	.LASF19
	.byte	0x2
	.2byte	0x15c
	.byte	0xe
	.4byte	0x126
	.byte	0x8
	.byte	0xc
	.4byte	.LASF20
	.byte	0x2
	.2byte	0x15d
	.byte	0x27
	.4byte	0x99
	.2byte	0x7ff8
	.byte	0
	.byte	0xd
	.4byte	0xb1
	.4byte	0x137
	.byte	0xe
	.4byte	0x2c
	.2byte	0x1ffa
	.byte	0
	.byte	0xf
	.4byte	.LASF21
	.byte	0x2
	.2byte	0x15e
	.byte	0x3
	.4byte	0xef
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x15
	.byte	0xf
	.4byte	0xe1
	.byte	0x5
	.byte	0x3
	.4byte	systick_callback
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x16
	.byte	0x11
	.4byte	0xce
	.byte	0x5
	.byte	0x3
	.4byte	current_set_ticks
	.byte	0x11
	.4byte	.LASF25
	.byte	0x1
	.byte	0x92
	.byte	0x58
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.byte	0x1
	.byte	0x9c
	.4byte	0x1b1
	.byte	0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x92
	.byte	0x78
	.4byte	0xb1
	.4byte	.LLST16
	.byte	0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0x97
	.byte	0xe
	.4byte	0xce
	.4byte	.LLST17
	.byte	0x14
	.4byte	.LVL40
	.4byte	0x2b5
	.byte	0x14
	.4byte	.LVL43
	.4byte	0x2b5
	.byte	0
	.byte	0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x86
	.byte	0x58
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fa
	.byte	0x12
	.4byte	.LASF27
	.byte	0x1
	.byte	0x86
	.byte	0x78
	.4byte	0xb1
	.4byte	.LLST14
	.byte	0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0x8b
	.byte	0xe
	.4byte	0xce
	.4byte	.LLST15
	.byte	0x14
	.4byte	.LVL34
	.4byte	0x2b5
	.byte	0x14
	.4byte	.LVL36
	.4byte	0x2b5
	.byte	0
	.byte	0x15
	.4byte	.LASF28
	.byte	0x1
	.byte	0x77
	.byte	0x5c
	.4byte	0xce
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.byte	0x1
	.byte	0x9c
	.4byte	0x227
	.byte	0x14
	.4byte	.LVL31
	.4byte	0x2b5
	.byte	0x14
	.4byte	.LVL32
	.4byte	0x4e2
	.byte	0
	.byte	0x15
	.4byte	.LASF29
	.byte	0x1
	.byte	0x58
	.byte	0x71
	.4byte	0xb1
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.byte	0x1
	.byte	0x9c
	.4byte	0x2af
	.byte	0x16
	.string	"n"
	.byte	0x1
	.byte	0x58
	.byte	0x86
	.4byte	0x2af
	.4byte	.LLST8
	.byte	0x12
	.4byte	.LASF30
	.byte	0x1
	.byte	0x58
	.byte	0x92
	.4byte	0xb1
	.4byte	.LLST9
	.byte	0x17
	.string	"rem"
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	0xce
	.byte	0x6
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.byte	0x5d
	.byte	0x93
	.byte	0x4
	.byte	0x18
	.string	"b"
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.4byte	0xce
	.4byte	.LLST10
	.byte	0x18
	.string	"res"
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.4byte	0xce
	.4byte	.LLST11
	.byte	0x18
	.string	"d"
	.byte	0x1
	.byte	0x5c
	.byte	0x13
	.4byte	0xce
	.4byte	.LLST12
	.byte	0x13
	.4byte	.LASF31
	.byte	0x1
	.byte	0x5d
	.byte	0xe
	.4byte	0xb1
	.4byte	.LLST13
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xce
	.byte	0x15
	.4byte	.LASF32
	.byte	0x1
	.byte	0x37
	.byte	0x5b
	.4byte	0xce
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.byte	0x1
	.byte	0x9c
	.4byte	0x35b
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x39
	.byte	0x17
	.4byte	0xbd
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x3d
	.byte	0x17
	.4byte	0xda
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0x10
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3d
	.byte	0x20
	.4byte	0xda
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3d
	.byte	0x2a
	.4byte	0xda
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3d
	.byte	0x34
	.4byte	0xda
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x19
	.4byte	0x46c
	.4byte	.LBB26
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x46
	.byte	0x1e
	.byte	0x1a
	.4byte	0x47a
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x47
	.byte	0x1d
	.byte	0x1a
	.4byte	0x47a
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0x48
	.byte	0x1e
	.byte	0x19
	.4byte	0x46c
	.4byte	.LBB34
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0x49
	.byte	0x1f
	.byte	0
	.byte	0x1b
	.4byte	.LASF52
	.byte	0x1
	.byte	0x32
	.byte	0x71
	.4byte	0xb1
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.byte	0x1
	.byte	0x9c
	.byte	0x11
	.4byte	.LASF38
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x1
	.byte	0x9c
	.4byte	0x412
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x22
	.byte	0x24
	.4byte	0xce
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0x22
	.byte	0x32
	.4byte	0xe1
	.4byte	.LLST5
	.byte	0x1c
	.4byte	0x488
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x2b
	.byte	0x5
	.4byte	0x3ce
	.byte	0x1d
	.4byte	0x4a7
	.4byte	.LLST6
	.byte	0x1d
	.4byte	0x49a
	.4byte	.LLST7
	.byte	0
	.byte	0x1e
	.4byte	.LVL9
	.4byte	0x4eb
	.4byte	0x3e1
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0x1e
	.4byte	.LVL12
	.4byte	0x4f7
	.4byte	0x402
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	systick_isr
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x20
	.4byte	.LVL14
	.4byte	0x503
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x37
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF53
	.byte	0x1
	.byte	0x18
	.byte	0xd
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0x46c
	.byte	0x16
	.string	"irq"
	.byte	0x1
	.byte	0x18
	.byte	0x1d
	.4byte	0x9e
	.4byte	.LLST0
	.byte	0x16
	.string	"arg"
	.byte	0x1
	.byte	0x18
	.byte	0x28
	.4byte	0xdf
	.4byte	.LLST1
	.byte	0x22
	.4byte	0x4b5
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x1d
	.byte	0x5
	.byte	0x1d
	.4byte	0x4d4
	.4byte	.LLST2
	.byte	0x1d
	.4byte	0x4c7
	.4byte	.LLST3
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x2ee
	.byte	0x18
	.4byte	0xb1
	.byte	0x3
	.byte	0x23
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x2e5
	.byte	0x18
	.4byte	0xb1
	.byte	0x3
	.byte	0x24
	.4byte	.LASF44
	.byte	0x2
	.2byte	0x2c8
	.byte	0x18
	.4byte	0xb1
	.byte	0x3
	.4byte	0x4b5
	.byte	0x25
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x2c8
	.byte	0x36
	.4byte	0xb1
	.byte	0x25
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x2c8
	.byte	0x45
	.4byte	0xa5
	.byte	0
	.byte	0x24
	.4byte	.LASF45
	.byte	0x2
	.2byte	0x2b1
	.byte	0x18
	.4byte	0xb1
	.byte	0x3
	.4byte	0x4e2
	.byte	0x25
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x2b1
	.byte	0x32
	.4byte	0xb1
	.byte	0x25
	.4byte	.LASF43
	.byte	0x2
	.2byte	0x2b1
	.byte	0x41
	.4byte	0xa5
	.byte	0
	.byte	0x26
	.4byte	.LASF54
	.4byte	.LASF54
	.byte	0x27
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x5
	.byte	0x55
	.byte	0x6
	.byte	0x27
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0x3f
	.byte	0x5
	.byte	0x27
	.4byte	.LASF48
	.4byte	.LASF48
	.byte	0x5
	.byte	0x4e
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
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x13
	.byte	0x1
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
	.byte	0xb
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
	.byte	0xc
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
	.byte	0xd
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
	.byte	0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x1d
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0
	.byte	0
	.byte	0x23
	.byte	0x2e
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x2e
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x5
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
	.byte	0x26
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
	.byte	0
	.byte	0
	.byte	0x27
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
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40-1
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LFE249
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34-1
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LFE248
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL30
	.4byte	.LFE246
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22
	.4byte	.LFE246
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.byte	0x4
	.byte	0x5f
	.byte	0x93
	.byte	0x4
	.4byte	.LVL29
	.4byte	.LFE246
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.byte	0x4
	.byte	0x5f
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.byte	0x4
	.byte	0x57
	.byte	0x93
	.byte	0x4
	.4byte	.LVL22
	.4byte	.LFE246
	.2byte	0x6
	.byte	0x56
	.byte	0x93
	.byte	0x4
	.byte	0x57
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL22
	.2byte	0xa
	.byte	0x9e
	.byte	0x8
	.8byte	0x1
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x6
	.byte	0x60
	.byte	0x93
	.byte	0x4
	.byte	0x61
	.byte	0x93
	.byte	0x4
	.4byte	.LVL29
	.4byte	.LFE246
	.2byte	0x6
	.byte	0x60
	.byte	0x93
	.byte	0x4
	.byte	0x61
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL8
	.4byte	.LFE243
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9-1
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL13
	.4byte	.LFE243
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE242
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LFE242
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE242
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0xd
	.byte	0x3
	.4byte	current_set_ticks
	.byte	0xf6
	.byte	0x8
	.byte	0x25
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0xd
	.byte	0x3
	.4byte	current_set_ticks
	.byte	0xf6
	.byte	0x8
	.byte	0x25
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB243
	.4byte	.LFE243
	.4byte	.LFB244
	.4byte	.LFE244
	.4byte	.LFB245
	.4byte	.LFE245
	.4byte	.LFB246
	.4byte	.LFE246
	.4byte	.LFB247
	.4byte	.LFE247
	.4byte	.LFB248
	.4byte	.LFE248
	.4byte	.LFB249
	.4byte	.LFE249
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"int64_t"
.LASF39:
	.string	"ticks"
.LASF41:
	.string	"csi_coret_get_valueh"
.LASF31:
	.string	"high"
.LASF7:
	.string	"__int32_t"
.LASF38:
	.string	"qcc74x_mtimer_config"
.LASF45:
	.string	"csi_coret_config"
.LASF44:
	.string	"csi_coret_config_use"
.LASF48:
	.string	"qcc74x_irq_enable"
.LASF16:
	.string	"uint64_t"
.LASF29:
	.string	"__div64_32"
.LASF40:
	.string	"interruptfun"
.LASF2:
	.string	"signed char"
.LASF34:
	.string	"tmp_low"
.LASF49:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF36:
	.string	"tmp_low1"
.LASF30:
	.string	"base"
.LASF5:
	.string	"short unsigned int"
.LASF18:
	.string	"MTIMECMP"
.LASF6:
	.string	"long int"
.LASF8:
	.string	"__uint32_t"
.LASF3:
	.string	"unsigned char"
.LASF10:
	.string	"__int64_t"
.LASF35:
	.string	"tmp_high"
.LASF24:
	.string	"start_time"
.LASF19:
	.string	"RESERVED"
.LASF20:
	.string	"MTIME"
.LASF33:
	.string	"timeout"
.LASF46:
	.string	"qcc74x_irq_disable"
.LASF1:
	.string	"unsigned int"
.LASF22:
	.string	"systick_callback"
.LASF0:
	.string	"long long unsigned int"
.LASF52:
	.string	"qcc74x_mtimer_get_freq"
.LASF51:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/lhal"
.LASF37:
	.string	"tmp_high1"
.LASF27:
	.string	"time"
.LASF47:
	.string	"qcc74x_irq_attach"
.LASF26:
	.string	"qcc74x_mtimer_delay_us"
.LASF13:
	.string	"int32_t"
.LASF42:
	.string	"csi_coret_get_value"
.LASF11:
	.string	"long long int"
.LASF54:
	.string	"__udivdi3"
.LASF28:
	.string	"qcc74x_mtimer_get_time_ms"
.LASF17:
	.string	"char"
.LASF9:
	.string	"long unsigned int"
.LASF4:
	.string	"short int"
.LASF12:
	.string	"__uint64_t"
.LASF53:
	.string	"systick_isr"
.LASF14:
	.string	"uint32_t"
.LASF25:
	.string	"qcc74x_mtimer_delay_ms"
.LASF50:
	.string	"./drivers/lhal/src/qcc74x_mtimer.c"
.LASF21:
	.string	"CORET_Type"
.LASF32:
	.string	"qcc74x_mtimer_get_time_us"
.LASF43:
	.string	"IRQn"
.LASF23:
	.string	"current_set_ticks"
	.ident	"GCC: (GNU) 10.4.0"
