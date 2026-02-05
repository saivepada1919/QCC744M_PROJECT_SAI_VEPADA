	.file	"qcc74x_sdio2.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_sdio2_isr,"ax",@progbits
	.align	1
	.type	qcc74x_sdio2_isr, @function
qcc74x_sdio2_isr:
.LFB14:
	.file 1 "./drivers/lhal/src/qcc74x_sdio2.c"
	.loc 1 364 1
	.cfi_startproc
.LVL0:
	.loc 1 365 5
	.loc 1 366 5
	.loc 1 367 5
	.loc 1 368 5
	.loc 1 370 5
	.loc 1 372 5
	.loc 1 364 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s1,52(sp)
	.cfi_offset 9, -12
	.loc 1 372 14
	lw	s1,4(a1)
.LVL1:
	.loc 1 373 5 is_stmt 1
	.loc 1 364 1 is_stmt 0
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 373 15
	lbu	a5,312(s1)
	.loc 1 374 14
	lbu	s4,296(s1)
	.loc 1 364 1
	mv	s3,a1
	.loc 1 373 15
	andi	s2,a5,0xff
.LVL2:
	.loc 1 374 5 is_stmt 1
	.loc 1 376 8 is_stmt 0
	andi	a5,a5,2
	.loc 1 374 14
	andi	s4,s4,0xff
.LVL3:
	.loc 1 376 5 is_stmt 1
	.loc 1 376 8 is_stmt 0
	bne	a5,zero,.L2
.LVL4:
.L5:
	.loc 1 409 5 is_stmt 1
	.loc 1 409 8 is_stmt 0
	andi	a5,s2,1
	andi	s4,s4,4
.LVL5:
	bne	a5,zero,.L3
	.loc 1 443 5 is_stmt 1
	.loc 1 443 8 is_stmt 0
	beq	s4,zero,.L16
.L8:
	.loc 1 444 9 is_stmt 1
	.loc 1 446 9
	.loc 1 446 32 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	.loc 1 446 12
	beq	a5,zero,.L16
	.loc 1 447 13 is_stmt 1
	lui	a4,%hi(.LANCHOR2)
	lw	a0,%lo(.LANCHOR2)(a4)
	li	a2,0
	li	a1,4
	jalr	a5
.LVL6:
	j	.L16
.LVL7:
.L2:
.LBB7:
	.loc 1 377 9
	.loc 1 380 9
	.loc 1 380 64 is_stmt 0
	li	a5,-3
	sb	a5,312(s1)
	.loc 1 383 9 is_stmt 1
	.loc 1 383 18 is_stmt 0
	lhu	s5,260(s1)
.LBB8:
	.loc 1 388 27
	lui	s0,%hi(.LANCHOR0)
.LBE8:
	.loc 1 383 18
	li	s9,16
	extu	s5,s5,15,0
.LVL8:
	.loc 1 385 9 is_stmt 1
	.loc 1 387 9
.LBB11:
	.loc 1 387 14
	.loc 1 387 29
	.loc 1 388 27 is_stmt 0
	addi	s0,s0,%lo(.LANCHOR0)
.LBB9:
	.loc 1 396 43
	li	s6,12
	.loc 1 401 40
	lui	s7,%hi(.LANCHOR1)
	.loc 1 402 21
	lui	s8,%hi(.LANCHOR2)
.LVL9:
.L7:
.LBE9:
	.loc 1 388 13 is_stmt 1
	.loc 1 388 27 is_stmt 0
	lw	a4,200(s0)
	.loc 1 388 61
	lw	a5,204(s0)
	.loc 1 388 16
	beq	a4,a5,.L5
	.loc 1 391 20 is_stmt 1
	.loc 1 391 65 is_stmt 0
	lw	a5,200(s0)
	.loc 1 391 86
	andi	a5,a5,15
	.loc 1 391 24
	sra	a5,s5,a5
	andi	a5,a5,1
	.loc 1 391 23
	bne	a5,zero,.L5
.LBB10:
	.loc 1 396 17 is_stmt 1
	.loc 1 396 103 is_stmt 0
	lw	a5,200(s0)
	.loc 1 396 43
	mv	a1,s0
	li	a2,12
	.loc 1 396 124
	andi	a5,a5,15
	.loc 1 396 43
	mula	a1,a5,s6
	addi	a0,sp,4
	addi	a1,a1,208
	call	memcpy
.LVL10:
	.loc 1 398 17 is_stmt 1
	.loc 1 398 48 is_stmt 0
	lw	a5,200(s0)
	addi	a5,a5,1
	sw	a5,200(s0)
	.loc 1 401 17 is_stmt 1
	.loc 1 401 40 is_stmt 0
	lw	a5,%lo(.LANCHOR1)(s7)
	.loc 1 401 20
	beq	a5,zero,.L6
	.loc 1 402 21 is_stmt 1
	lw	a0,%lo(.LANCHOR2)(s8)
	addi	a2,sp,4
	li	a1,3
	jalr	a5
.LVL11:
.L6:
.LBE10:
	.loc 1 387 37 discriminator 2
	.loc 1 387 29 discriminator 2
	.loc 1 387 9 is_stmt 0 discriminator 2
	addi	s9,s9,-1
.LVL12:
	andi	s9,s9,0xff
	bne	s9,zero,.L7
	j	.L5
.LVL13:
.L3:
.LBE11:
.LBE7:
	.loc 1 409 29 discriminator 1
	bne	s4,zero,.L8
.LBB12:
	.loc 1 411 9 is_stmt 1
	.loc 1 414 9
	.loc 1 414 64 is_stmt 0
	li	a5,-2
	sb	a5,312(s1)
	.loc 1 417 9 is_stmt 1
	.loc 1 417 18 is_stmt 0
	lhu	s4,262(s1)
.LBB13:
	.loc 1 422 27
	lui	s0,%hi(.LANCHOR0)
.LBE13:
	.loc 1 417 18
	li	s8,16
	extu	s4,s4,15,0
.LVL14:
	.loc 1 419 9 is_stmt 1
	.loc 1 421 9
.LBB16:
	.loc 1 421 14
	.loc 1 421 29
	.loc 1 422 27 is_stmt 0
	addi	s0,s0,%lo(.LANCHOR0)
.LBB14:
	.loc 1 430 43
	li	s5,12
	.loc 1 436 40
	lui	s6,%hi(.LANCHOR1)
	.loc 1 437 21
	lui	s7,%hi(.LANCHOR2)
.LVL15:
.L11:
.LBE14:
	.loc 1 422 13 is_stmt 1
	.loc 1 422 27 is_stmt 0
	lw	a4,0(s0)
	.loc 1 422 61
	lw	a5,4(s0)
	.loc 1 422 16
	beq	a4,a5,.L16
	.loc 1 425 20 is_stmt 1
	.loc 1 425 65 is_stmt 0
	lw	a5,0(s0)
	.loc 1 425 86
	andi	a5,a5,15
	.loc 1 425 24
	sra	a5,s4,a5
	andi	a5,a5,1
	.loc 1 425 23
	bne	a5,zero,.L16
.LBB15:
	.loc 1 430 17 is_stmt 1
	.loc 1 430 98 is_stmt 0
	lw	a5,0(s0)
	.loc 1 430 43
	mv	a1,s0
	li	a2,12
	.loc 1 430 119
	andi	a5,a5,15
	.loc 1 430 43
	mula	a1,a5,s5
	addi	a0,sp,4
	addi	a1,a1,8
	call	memcpy
.LVL16:
	.loc 1 431 17 is_stmt 1
	.loc 1 431 87 is_stmt 0
	lw	a5,4(s3)
	.loc 1 431 40
	lbu	a5,353(a5)
	andi	a5,a5,0xff
	.loc 1 431 37
	slli	a5,a5,6
	sh	a5,6(sp)
	.loc 1 433 17 is_stmt 1
	.loc 1 433 48 is_stmt 0
	lw	a5,0(s0)
	addi	a5,a5,1
	sw	a5,0(s0)
	.loc 1 436 17 is_stmt 1
	.loc 1 436 40 is_stmt 0
	lw	a5,%lo(.LANCHOR1)(s6)
	.loc 1 436 20
	beq	a5,zero,.L10
	.loc 1 437 21 is_stmt 1
	lw	a0,%lo(.LANCHOR2)(s7)
	addi	a2,sp,4
	li	a1,2
	jalr	a5
.LVL17:
.L10:
.LBE15:
	.loc 1 421 37 discriminator 2
	.loc 1 421 29 discriminator 2
	.loc 1 421 9 is_stmt 0 discriminator 2
	addi	s8,s8,-1
.LVL18:
	andi	s8,s8,0xff
	bne	s8,zero,.L11
.LVL19:
.L16:
.LBE16:
.LBE12:
	.loc 1 451 5 is_stmt 1
	.loc 1 451 8 is_stmt 0
	andi	s2,s2,4
.LVL20:
	beq	s2,zero,.L1
	.loc 1 452 9 is_stmt 1
	.loc 1 454 9
	.loc 1 454 64 is_stmt 0
	li	a5,-5
	sb	a5,312(s1)
	.loc 1 456 9 is_stmt 1
	.loc 1 456 32 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	.loc 1 456 12
	beq	a5,zero,.L1
	.loc 1 457 13 is_stmt 1
	.loc 1 460 1 is_stmt 0
	lw	s0,56(sp)
	.cfi_remember_state
	.cfi_restore 8
	.loc 1 457 13
	lui	a4,%hi(.LANCHOR2)
	.loc 1 460 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s1,52(sp)
	.cfi_restore 9
.LVL21:
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
.LVL22:
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	lw	s9,20(sp)
	.cfi_restore 25
	.loc 1 457 13
	lw	a0,%lo(.LANCHOR2)(a4)
	li	a2,0
	.loc 1 460 1
	.loc 1 457 13
	li	a1,5
	.loc 1 460 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	.loc 1 457 13
	jr	a5
.LVL23:
.L1:
	.cfi_restore_state
	.loc 1 460 1
	lw	ra,60(sp)
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
.LVL24:
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
.LVL25:
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	lw	s9,20(sp)
	.cfi_restore 25
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	qcc74x_sdio2_isr, .-qcc74x_sdio2_isr
	.section	.text.qcc74x_sdio2_reset_isr,"ax",@progbits
	.align	1
	.type	qcc74x_sdio2_reset_isr, @function
qcc74x_sdio2_reset_isr:
.LFB15:
	.loc 1 465 1 is_stmt 1
	.cfi_startproc
.LVL26:
	.loc 1 466 5
	.loc 1 465 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 466 5
	li	a0,19
.LVL27:
	.loc 1 465 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 466 5
	call	qcc74x_irq_clear_pending
.LVL28:
	.loc 1 468 5 is_stmt 1
	.loc 1 468 28 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lw	a5,%lo(.LANCHOR1)(a5)
	.loc 1 468 8
	beq	a5,zero,.L36
	.loc 1 469 9 is_stmt 1
	lui	a4,%hi(.LANCHOR2)
	.loc 1 471 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 469 9
	lw	a0,%lo(.LANCHOR2)(a4)
	li	a2,0
	.loc 1 471 1
	.loc 1 469 9
	li	a1,1
	.loc 1 471 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 469 9
	jr	a5
.LVL29:
.L36:
	.cfi_restore_state
	.loc 1 471 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	qcc74x_sdio2_reset_isr, .-qcc74x_sdio2_reset_isr
	.section	.text.qcc74x_sdio2_init,"ax",@progbits
	.align	1
	.globl	qcc74x_sdio2_init
	.type	qcc74x_sdio2_init, @function
qcc74x_sdio2_init:
.LFB5:
	.loc 1 35 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 36 5
	.loc 1 35 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 36 14
	lw	a5,4(a0)
.LVL31:
	.loc 1 37 5 is_stmt 1
	.loc 1 38 5
	.loc 1 40 5
	.loc 1 35 1 is_stmt 0
	mv	s0,a0
	.loc 1 40 8
	beq	a1,zero,.L42
	.loc 1 41 9 is_stmt 1
	.loc 1 41 12 is_stmt 0
	li	a4,16384
	addi	a4,a4,-64
	.loc 1 43 20
	li	a0,-1
.LVL32:
	.loc 1 41 12
	bgtu	a1,a4,.L39
	.loc 1 45 13 is_stmt 1
	.loc 1 45 22 is_stmt 0
	andi	a1,a1,-64
.LVL33:
.L40:
	.loc 1 52 5 is_stmt 1
	.loc 1 52 61 is_stmt 0
	sh	zero,260(a5)
	.loc 1 53 5 is_stmt 1
	.loc 1 53 61 is_stmt 0
	sh	zero,262(a5)
	.loc 1 56 5 is_stmt 1
	.loc 1 56 15 is_stmt 0
	lbu	a4,364(a5)
	.loc 1 74 60
	extu	a1,a1,6+8-1,6
.LVL34:
	.loc 1 76 5
	mv	a2,s0
	.loc 1 56 15
	andi	a4,a4,0xff
.LVL35:
	.loc 1 57 5 is_stmt 1
	ori	a4,a4,16
.LVL36:
	.loc 1 58 5
	.loc 1 58 60 is_stmt 0
	sb	a4,364(a5)
	.loc 1 61 5 is_stmt 1
	.loc 1 61 60 is_stmt 0
	li	a4,7
.LVL37:
	sb	a4,308(a5)
.LVL38:
	.loc 1 64 5 is_stmt 1
	.loc 1 64 15 is_stmt 0
	lbu	a4,354(a5)
	andi	a4,a4,0xff
.LVL39:
	.loc 1 65 5 is_stmt 1
	.loc 1 69 5
	ori	a4,a4,96
.LVL40:
	.loc 1 71 5
	.loc 1 71 60 is_stmt 0
	sb	a4,354(a5)
	.loc 1 74 5 is_stmt 1
	.loc 1 74 60 is_stmt 0
	sb	a1,353(a5)
	.loc 1 76 5 is_stmt 1
	lbu	a0,8(s0)
	lui	a1,%hi(qcc74x_sdio2_isr)
	addi	a1,a1,%lo(qcc74x_sdio2_isr)
	call	qcc74x_irq_attach
.LVL41:
	.loc 1 77 5
	lbu	a0,8(s0)
	call	qcc74x_irq_enable
.LVL42:
	.loc 1 80 5
	lui	a1,%hi(qcc74x_sdio2_reset_isr)
	mv	a2,s0
	addi	a1,a1,%lo(qcc74x_sdio2_reset_isr)
	li	a0,19
	call	qcc74x_irq_attach
.LVL43:
	.loc 1 81 5
	li	a0,19
	call	qcc74x_irq_enable
.LVL44:
	.loc 1 84 5
	.loc 1 84 12 is_stmt 0
	li	a0,0
.L39:
	.loc 1 85 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL45:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL46:
.L42:
	.cfi_restore_state
	.loc 1 48 18
	li	a1,4096
.LVL47:
	addi	a1,a1,-2048
	j	.L40
	.cfi_endproc
.LFE5:
	.size	qcc74x_sdio2_init, .-qcc74x_sdio2_init
	.section	.text.qcc74x_sdio2_deinit,"ax",@progbits
	.align	1
	.globl	qcc74x_sdio2_deinit
	.type	qcc74x_sdio2_deinit, @function
qcc74x_sdio2_deinit:
.LFB6:
	.loc 1 88 1 is_stmt 1
	.cfi_startproc
.LVL48:
	.loc 1 89 5
	.loc 1 88 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 89 5
	lbu	a0,8(a0)
.LVL49:
	call	qcc74x_irq_disable
.LVL50:
	.loc 1 92 5 is_stmt 1
	li	a0,19
	call	qcc74x_irq_disable
.LVL51:
	.loc 1 96 5
	lui	a0,%hi(.LANCHOR0)
	li	a2,400
	li	a1,0
	addi	a0,a0,%lo(.LANCHOR0)
	call	arch_memset
.LVL52:
	.loc 1 97 5
	.loc 1 98 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	qcc74x_sdio2_deinit, .-qcc74x_sdio2_deinit
	.section	.text.qcc74x_sdio2_trig_host_int,"ax",@progbits
	.align	1
	.globl	qcc74x_sdio2_trig_host_int
	.type	qcc74x_sdio2_trig_host_int, @function
qcc74x_sdio2_trig_host_int:
.LFB7:
	.loc 1 101 1 is_stmt 1
	.cfi_startproc
.LVL53:
	.loc 1 102 5
	.loc 1 105 5
	.loc 1 105 48 is_stmt 0
	lw	a5,4(a0)
	.loc 1 105 60
	andi	a1,a1,0xff
.LVL54:
	.loc 1 108 1
	li	a0,0
.LVL55:
	.loc 1 105 60
	sb	a1,304(a5)
	.loc 1 107 5 is_stmt 1
	.loc 1 108 1 is_stmt 0
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_sdio2_trig_host_int, .-qcc74x_sdio2_trig_host_int
	.section	.text.qcc74x_sdio2_dnld_port_pop,"ax",@progbits
	.align	1
	.globl	qcc74x_sdio2_dnld_port_pop
	.type	qcc74x_sdio2_dnld_port_pop, @function
qcc74x_sdio2_dnld_port_pop:
.LFB10:
	.loc 1 233 1 is_stmt 1
	.cfi_startproc
.LVL56:
	.loc 1 234 5
	.loc 1 235 5
	.loc 1 233 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	.cfi_offset 18, -16
	mv	s2,a1
	.loc 1 235 5
	li	a2,12
	li	a1,0
.LVL57:
	mv	a0,s2
.LVL58:
	.loc 1 233 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.loc 1 239 19
	lui	s0,%hi(.LANCHOR0)
	.loc 1 235 5
	call	arch_memset
.LVL59:
	.loc 1 238 5 is_stmt 1
	.loc 1 238 22 is_stmt 0
	call	qcc74x_irq_save
.LVL60:
	.loc 1 239 19
	addi	s0,s0,%lo(.LANCHOR0)
	lw	a4,4(s0)
	.loc 1 239 52
	lw	a5,0(s0)
	.loc 1 238 22
	mv	s3,a0
.LVL61:
	.loc 1 239 5 is_stmt 1
	li	s1,1
	.loc 1 239 8 is_stmt 0
	beq	a4,a5,.L49
	.loc 1 240 9 is_stmt 1
	.loc 1 240 65 is_stmt 0
	lw	a5,0(s0)
	.loc 1 240 21
	li	a4,12
	mv	a1,s0
	.loc 1 240 86
	andi	a5,a5,15
	.loc 1 240 21
	mula	a1,a5,a4
	li	a2,12
	mv	a0,s2
.LVL62:
	.loc 1 234 9
	li	s1,0
	.loc 1 240 21
	addi	a1,a1,8
	call	memcpy
.LVL63:
	.loc 1 241 9 is_stmt 1
	.loc 1 241 19 is_stmt 0
	lw	a5,0(s0)
	.loc 1 241 39
	addi	a5,a5,1
	sw	a5,0(s0)
.L49:
.LVL64:
	.loc 1 246 5 is_stmt 1
	mv	a0,s3
	call	qcc74x_irq_restore
.LVL65:
	.loc 1 248 5
	.loc 1 249 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s2,16(sp)
	.cfi_restore 18
.LVL66:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL67:
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL68:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	qcc74x_sdio2_dnld_port_pop, .-qcc74x_sdio2_dnld_port_pop
	.section	.text.qcc74x_sdio2_upld_port_pop,"ax",@progbits
	.align	1
	.globl	qcc74x_sdio2_upld_port_pop
	.type	qcc74x_sdio2_upld_port_pop, @function
qcc74x_sdio2_upld_port_pop:
.LFB11:
	.loc 1 253 1 is_stmt 1
	.cfi_startproc
.LVL69:
	.loc 1 254 5
	.loc 1 255 5
	.loc 1 253 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	.cfi_offset 18, -16
	mv	s2,a1
	.loc 1 255 5
	li	a2,12
	li	a1,0
.LVL70:
	mv	a0,s2
.LVL71:
	.loc 1 253 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.loc 1 259 19
	lui	s0,%hi(.LANCHOR0)
	.loc 1 255 5
	call	arch_memset
.LVL72:
	.loc 1 258 5 is_stmt 1
	.loc 1 258 22 is_stmt 0
	call	qcc74x_irq_save
.LVL73:
	.loc 1 259 19
	addi	s0,s0,%lo(.LANCHOR0)
	lw	a4,204(s0)
	.loc 1 259 52
	lw	a5,200(s0)
	.loc 1 258 22
	mv	s3,a0
.LVL74:
	.loc 1 259 5 is_stmt 1
	li	s1,1
	.loc 1 259 8 is_stmt 0
	beq	a4,a5,.L54
	.loc 1 260 9 is_stmt 1
	.loc 1 260 65 is_stmt 0
	lw	a5,200(s0)
	.loc 1 260 21
	li	a4,12
	mv	a1,s0
	.loc 1 260 86
	andi	a5,a5,15
	.loc 1 260 21
	mula	a1,a5,a4
	li	a2,12
	mv	a0,s2
.LVL75:
	.loc 1 254 9
	li	s1,0
	.loc 1 260 21
	addi	a1,a1,208
	call	memcpy
.LVL76:
	.loc 1 261 9 is_stmt 1
	.loc 1 261 19 is_stmt 0
	lw	a5,200(s0)
	.loc 1 261 39
	addi	a5,a5,1
	sw	a5,200(s0)
.L54:
.LVL77:
	.loc 1 266 5 is_stmt 1
	mv	a0,s3
	call	qcc74x_irq_restore
.LVL78:
	.loc 1 268 5
	.loc 1 269 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s2,16(sp)
	.cfi_restore 18
.LVL79:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL80:
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL81:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	qcc74x_sdio2_upld_port_pop, .-qcc74x_sdio2_upld_port_pop
	.section	.text.qcc74x_sdio2_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_sdio2_feature_control
	.type	qcc74x_sdio2_feature_control, @function
qcc74x_sdio2_feature_control:
.LFB12:
	.loc 1 273 1 is_stmt 1
	.cfi_startproc
.LVL82:
	.loc 1 274 5
	.loc 1 275 5
	.loc 1 278 5 is_stmt 0
	li	a5,5
	.loc 1 275 14
	lw	a4,4(a0)
.LVL83:
	.loc 1 276 5 is_stmt 1
	.loc 1 278 5
	beq	a1,a5,.L59
	bgt	a1,a5,.L60
	li	a5,3
	beq	a1,a5,.L61
	li	a5,4
	beq	a1,a5,.L62
	li	a5,1
	beq	a1,a5,.L63
	li	a5,2
	beq	a1,a5,.L64
.L79:
	li	a1,-1
.LVL84:
.L65:
	.loc 1 351 5
	.loc 1 352 1 is_stmt 0
	mv	a0,a1
	ret
.LVL85:
.L60:
	.loc 1 278 5
	li	a5,8
	beq	a1,a5,.L66
	bgt	a1,a5,.L67
	li	a5,6
	beq	a1,a5,.L68
	li	a5,7
	bne	a1,a5,.L79
	.loc 1 335 13 is_stmt 1
	.loc 1 335 68 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a1,0(a5)
.LVL86:
	.loc 1 335 35
	lw	a0,4(a5)
.LVL87:
.L78:
	.loc 1 343 22
	addi	a1,a1,16
	j	.L77
.LVL88:
.L67:
	.loc 1 278 5
	li	a5,9
	bne	a1,a5,.L79
	.loc 1 343 13 is_stmt 1
	.loc 1 343 68 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a1,200(a5)
.LVL89:
	.loc 1 343 35
	lw	a0,204(a5)
.LVL90:
	j	.L78
.LVL91:
.L63:
	.loc 1 281 13 is_stmt 1
	.loc 1 281 23 is_stmt 0
	lbu	a5,7(a4)
.LVL92:
	.loc 1 282 13 is_stmt 1
	.loc 1 282 16 is_stmt 0
	andi	a5,a5,2
.LVL93:
	beq	a5,zero,.L65
	.loc 1 283 21
	li	a1,4
.LVL94:
	j	.L65
.LVL95:
.L64:
	.loc 1 291 13 is_stmt 1
	.loc 1 291 23 is_stmt 0
	lbu	a1,352(a4)
.LVL96:
	andi	a1,a1,0xff
.LVL97:
	.loc 1 292 13 is_stmt 1
	.loc 1 292 16 is_stmt 0
	snez	a1,a1
.LVL98:
	j	.L65
.LVL99:
.L61:
	.loc 1 301 13 is_stmt 1
	.loc 1 301 23 is_stmt 0
	lbu	a5,40(a4)
	.loc 1 306 21
	li	a1,512
.LVL100:
	.loc 1 301 23
	andi	a3,a5,0xff
.LVL101:
	.loc 1 302 13 is_stmt 1
	.loc 1 302 26 is_stmt 0
	lbu	a5,41(a4)
	.loc 1 302 89
	slli	a5,a5,8
	andi	a5,a5,256
	.loc 1 302 20
	or	a5,a5,a3
.LVL102:
	.loc 1 303 13 is_stmt 1
	.loc 1 304 21 is_stmt 0
	mvnez	a1, a5, a5
	j	.L65
.LVL103:
.L62:
	.loc 1 312 13 is_stmt 1
	.loc 1 312 23 is_stmt 0
	lbu	a5,353(a4)
.L81:
	.loc 1 322 23
	andi	a5,a5,0xff
.LVL104:
	.loc 1 323 13 is_stmt 1
	.loc 1 316 21 is_stmt 0
	li	a1,-1
.LVL105:
	.loc 1 323 16
	beq	a5,zero,.L65
	.loc 1 324 17 is_stmt 1
	.loc 1 324 30 is_stmt 0
	slli	a1,a5,6
.LVL106:
	j	.L65
.LVL107:
.L59:
	.loc 1 322 13 is_stmt 1
	.loc 1 322 23 is_stmt 0
	lbu	a5,352(a4)
	j	.L81
.L68:
	.loc 1 331 13 is_stmt 1
	.loc 1 331 29 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a1,4(a5)
.LVL108:
	.loc 1 331 62
	lw	a0,0(a5)
.LVL109:
.L77:
	.loc 1 343 22
	sub	a1,a1,a0
.LVL110:
	.loc 1 344 13 is_stmt 1
	j	.L65
.LVL111:
.L66:
	.loc 1 339 13
	.loc 1 339 29 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	lw	a1,204(a5)
.LVL112:
	.loc 1 339 62
	lw	a0,200(a5)
.LVL113:
	j	.L77
	.cfi_endproc
.LFE12:
	.size	qcc74x_sdio2_feature_control, .-qcc74x_sdio2_feature_control
	.section	.text.qcc74x_sdio2_dnld_port_push,"ax",@progbits
	.align	1
	.globl	qcc74x_sdio2_dnld_port_push
	.type	qcc74x_sdio2_dnld_port_push, @function
qcc74x_sdio2_dnld_port_push:
.LFB8:
	.loc 1 111 1 is_stmt 1
	.cfi_startproc
.LVL114:
	.loc 1 112 5
	.loc 1 111 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 116 19
	lhu	s0,0(a1)
	.loc 1 111 1
	sw	s3,12(sp)
	.loc 1 116 32
	li	a2,0
	.cfi_offset 19, -20
	.loc 1 111 1
	mv	s3,a1
	.loc 1 116 32
	li	a1,4
.LVL115:
	.loc 1 111 1
	sw	s2,16(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s5,4(sp)
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.loc 1 112 14
	lw	s2,4(a0)
.LVL116:
	.loc 1 113 5 is_stmt 1
	.loc 1 114 5
	.loc 1 116 5
	.loc 1 111 1 is_stmt 0
	mv	s4,a0
	.loc 1 116 32
	call	qcc74x_sdio2_feature_control
.LVL117:
	.loc 1 116 8
	blt	s0,a0,.L84
	.loc 1 122 5 is_stmt 1
	.loc 1 122 19 is_stmt 0
	lui	s1,%hi(.LANCHOR0)
	addi	s1,s1,%lo(.LANCHOR0)
	lw	a5,4(s1)
	.loc 1 122 52
	lw	a4,0(s1)
	.loc 1 124 16
	li	a0,-1
	.loc 1 122 40
	sub	a5,a5,a4
	.loc 1 122 8
	li	a4,15
	bgtu	a5,a4,.L82
	.loc 1 126 5 is_stmt 1
	.loc 1 126 27 is_stmt 0
	lw	s0,4(s1)
	.loc 1 128 48
	li	a5,12
	mv	s5,s1
	.loc 1 126 15
	andi	s0,s0,15
.LVL118:
	.loc 1 128 5 is_stmt 1
	.loc 1 128 48 is_stmt 0
	mula	s5,s0,a5
	li	a2,12
	mv	a1,s3
	addi	a0,s5,8
	call	memcpy
.LVL119:
	.loc 1 129 5 is_stmt 1
	.loc 1 129 57 is_stmt 0
	sh	zero,210(s5)
	.loc 1 132 5 is_stmt 1
	.loc 1 132 12 is_stmt 0
	call	qcc74x_irq_save
.LVL120:
	.loc 1 135 5 is_stmt 1
	.loc 1 135 60 is_stmt 0
	sb	s0,329(s2)
	.loc 1 136 5 is_stmt 1
	.loc 1 136 64 is_stmt 0
	lw	a5,4(s3)
	.loc 1 139 66
	li	a4,1
	sll	s0,a4,s0
.LVL121:
	.loc 1 136 61
	sw	a5,324(s2)
.LVL122:
	.loc 1 139 5 is_stmt 1
	.loc 1 139 61 is_stmt 0
	extu	s0,s0,15,0
	sh	s0,262(s2)
	.loc 1 142 5 is_stmt 1
	.loc 1 142 36 is_stmt 0
	lw	a5,4(s1)
	addi	a5,a5,1
	sw	a5,4(s1)
	.loc 1 145 5 is_stmt 1
.LVL123:
.LBB17:
.LBB18:
	.loc 1 102 5
	.loc 1 105 5
	.loc 1 105 48 is_stmt 0
	lw	a5,4(s4)
	.loc 1 105 60
	sb	a4,304(a5)
.LVL124:
	.loc 1 107 5 is_stmt 1
.LBE18:
.LBE17:
	.loc 1 148 5
	call	qcc74x_irq_restore
.LVL125:
	.loc 1 150 5
	.loc 1 152 5
	.loc 1 152 12 is_stmt 0
	li	a0,0
.L82:
	.loc 1 153 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL126:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL127:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL128:
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL129:
.L84:
	.cfi_restore_state
	.loc 1 118 16
	li	a0,-2
	j	.L82
	.cfi_endproc
.LFE8:
	.size	qcc74x_sdio2_dnld_port_push, .-qcc74x_sdio2_dnld_port_push
	.section	.text.qcc74x_sdio2_upld_port_push,"ax",@progbits
	.align	1
	.globl	qcc74x_sdio2_upld_port_push
	.type	qcc74x_sdio2_upld_port_push, @function
qcc74x_sdio2_upld_port_push:
.LFB9:
	.loc 1 156 1 is_stmt 1
	.cfi_startproc
.LVL130:
	.loc 1 157 5
	.loc 1 163 19 is_stmt 0
	lhu	a5,2(a1)
	.loc 1 156 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s3,12(sp)
	sw	s5,4(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.loc 1 163 8
	li	a4,512
	.loc 1 157 14
	lw	s1,4(a0)
.LVL131:
	.loc 1 158 5 is_stmt 1
	.loc 1 159 5
	.loc 1 160 5
	.loc 1 163 5
	.loc 1 156 1 is_stmt 0
	mv	s2,a0
	mv	s4,a1
	.loc 1 163 8
	bleu	a5,a4,.L88
.LBB19:
	.loc 1 165 9 is_stmt 1
	.loc 1 165 41 is_stmt 0
	li	a2,0
	li	a1,3
.LVL132:
	call	qcc74x_sdio2_feature_control
.LVL133:
	.loc 1 166 19
	lhu	a5,2(s4)
	.loc 1 165 18
	extu	a0,a0,15,0
.LVL134:
	.loc 1 166 9 is_stmt 1
	.loc 1 166 19 is_stmt 0
	addi	a5,a5,-1
	add	a5,a0,a5
	extu	a5,a5,15,0
.LVL135:
	.loc 1 167 9 is_stmt 1
	.loc 1 167 19 is_stmt 0
	remu	a0,a5,a0
.LVL136:
	sub	a5,a5,a0
.LVL137:
	extu	a5,a5,15,0
.LVL138:
.L88:
.LBE19:
	.loc 1 172 5 is_stmt 1
	.loc 1 172 8 is_stmt 0
	lhu	a4,0(s4)
	.loc 1 173 16
	li	a0,-1
	.loc 1 172 8
	bltu	a4,a5,.L87
	.loc 1 172 42 discriminator 1
	lhu	a5,2(s4)
.LVL139:
	beq	a5,zero,.L87
	.loc 1 177 5 is_stmt 1
	.loc 1 177 19 is_stmt 0
	lui	s3,%hi(.LANCHOR0)
	addi	a4,s3,%lo(.LANCHOR0)
	lw	a5,204(a4)
	.loc 1 177 52
	lw	a4,200(a4)
	addi	s3,s3,%lo(.LANCHOR0)
	.loc 1 179 16
	li	a0,-2
	.loc 1 177 40
	sub	a5,a5,a4
	.loc 1 177 8
	li	a4,15
	bgtu	a5,a4,.L87
	.loc 1 181 5 is_stmt 1
	.loc 1 181 27 is_stmt 0
	lw	s5,204(s3)
	.loc 1 183 48
	li	a5,12
	mv	a0,s3
	.loc 1 181 15
	andi	s5,s5,15
.LVL140:
	.loc 1 183 5 is_stmt 1
	.loc 1 183 48 is_stmt 0
	mula	a0,s5,a5
	li	a2,12
	mv	a1,s4
	addi	a0,a0,208
	call	memcpy
.LVL141:
	.loc 1 186 5 is_stmt 1
	.loc 1 187 5
	.loc 1 187 26 is_stmt 0
	li	a2,0
	li	a1,3
	mv	a0,s2
	call	qcc74x_sdio2_feature_control
.LVL142:
	.loc 1 187 14
	extu	a0,a0,15,0
.LVL143:
	.loc 1 188 5 is_stmt 1
	lhu	a5,2(s4)
	.loc 1 188 8 is_stmt 0
	beq	a0,zero,.L90
	.loc 1 188 19 discriminator 1
	remu	a4,a5,a0
	beq	a4,zero,.L91
.L90:
	.loc 1 190 9 is_stmt 1
	.loc 1 190 12 is_stmt 0
	li	a4,63
	slli	s0,a5,2
	bgtu	a5,a4,.L92
.L102:
	.loc 1 205 12
	call	qcc74x_irq_save
.LVL144:
	.loc 1 208 61
	addi	a5,s5,-124
	andi	a5,a5,0xff
	.loc 1 200 23
	extu	s0,s0,15,0
.LVL145:
	.loc 1 205 5 is_stmt 1
	.loc 1 208 5
	.loc 1 208 79 is_stmt 0
	srh	s0,s1,a5,1
	.loc 1 211 5 is_stmt 1
	.loc 1 211 60 is_stmt 0
	sb	s5,328(s1)
	.loc 1 212 5 is_stmt 1
	.loc 1 212 64 is_stmt 0
	lw	a5,4(s4)
.LBB20:
.LBB21:
	.loc 1 105 60
	li	a4,2
.LBE21:
.LBE20:
	.loc 1 212 61
	sw	a5,320(s1)
	.loc 1 215 5 is_stmt 1
	.loc 1 215 66 is_stmt 0
	li	a5,1
	sll	s5,a5,s5
.LVL146:
	.loc 1 215 61
	extu	s5,s5,15,0
	sh	s5,260(s1)
	.loc 1 218 5 is_stmt 1
	.loc 1 218 36 is_stmt 0
	lw	a5,204(s3)
	addi	a5,a5,1
	sw	a5,204(s3)
	.loc 1 221 5 is_stmt 1
.LVL147:
.LBB23:
.LBB22:
	.loc 1 102 5
	.loc 1 105 5
	.loc 1 105 48 is_stmt 0
	lw	a5,4(s2)
	.loc 1 105 60
	sb	a4,304(a5)
.LVL148:
	.loc 1 107 5 is_stmt 1
.LBE22:
.LBE23:
	.loc 1 224 5
	call	qcc74x_irq_restore
.LVL149:
	.loc 1 226 5
	.loc 1 228 5
	.loc 1 228 12 is_stmt 0
	li	a0,0
.LVL150:
.L87:
	.loc 1 229 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL151:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL152:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
.LVL153:
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL154:
.L92:
	.cfi_restore_state
	.loc 1 193 13 is_stmt 1
	.loc 1 193 53 is_stmt 0
	ori	s0,s0,1
	j	.L102
.L91:
	.loc 1 197 9 is_stmt 1
	.loc 1 197 45 is_stmt 0
	divu	a5,a5,a0
	.loc 1 197 12
	li	a4,63
	.loc 1 198 60
	slli	s0,a5,2
	.loc 1 198 66
	ext	s0,s0,15,0
	.loc 1 197 12
	bgtu	a5,a4,.L94
	.loc 1 198 13 is_stmt 1
	.loc 1 198 66 is_stmt 0
	ori	s0,s0,2
	j	.L102
.L94:
	.loc 1 200 13 is_stmt 1
	.loc 1 200 66 is_stmt 0
	ori	s0,s0,3
	j	.L102
	.cfi_endproc
.LFE9:
	.size	qcc74x_sdio2_upld_port_push, .-qcc74x_sdio2_upld_port_push
	.section	.text.qcc74x_sdio2_irq_attach,"ax",@progbits
	.align	1
	.globl	qcc74x_sdio2_irq_attach
	.type	qcc74x_sdio2_irq_attach, @function
qcc74x_sdio2_irq_attach:
.LFB13:
	.loc 1 356 1 is_stmt 1
	.cfi_startproc
.LVL155:
	.loc 1 357 5
	.loc 1 357 24 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	a1,%lo(.LANCHOR1)(a5)
	.loc 1 358 5 is_stmt 1
	.loc 1 358 19 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	sw	a2,%lo(.LANCHOR2)(a5)
	.loc 1 360 5 is_stmt 1
	.loc 1 361 1 is_stmt 0
	li	a0,0
.LVL156:
	ret
	.cfi_endproc
.LFE13:
	.size	qcc74x_sdio2_irq_attach, .-qcc74x_sdio2_irq_attach
	.section	.bss.sdio2_ctrl,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sdio2_ctrl, @object
	.size	sdio2_ctrl, 400
sdio2_ctrl:
	.zero	400
	.section	.bss.sdio2_irq_arg,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	sdio2_irq_arg, @object
	.size	sdio2_irq_arg, 4
sdio2_irq_arg:
	.zero	4
	.section	.bss.sdio2_irq_event_cb,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	sdio2_irq_event_cb, @object
	.size	sdio2_irq_event_cb, 4
sdio2_irq_event_cb:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./drivers/lhal/include/qcc74x_sdio2.h"
	.file 6 "./drivers/lhal/include/qcc74x_irq.h"
	.file 7 "./drivers/lhal/include/qcc74x_common.h"
	.file 8 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xaa9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF74
	.byte	0xc
	.4byte	.LASF75
	.4byte	.LASF76
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
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
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x6c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF11
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x94
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x88
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x6
	.4byte	0xcd
	.byte	0x7
	.byte	0x4
	.4byte	0xd4
	.byte	0x8
	.4byte	.LASF30
	.byte	0x10
	.byte	0x4
	.byte	0x67
	.byte	0x8
	.4byte	0x148
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xd9
	.byte	0
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x69
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x9b
	.byte	0x9
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x9b
	.byte	0xa
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0x9b
	.byte	0xb
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x6e
	.byte	0xb
	.4byte	0xcb
	.byte	0xc
	.byte	0
	.byte	0xb
	.byte	0xc
	.byte	0x5
	.byte	0x5f
	.byte	0x9
	.4byte	0x186
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x61
	.byte	0xe
	.4byte	0xa7
	.byte	0
	.byte	0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x62
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x63
	.byte	0xb
	.4byte	0xcb
	.byte	0x4
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x64
	.byte	0xb
	.4byte	0xcb
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF28
	.byte	0x5
	.byte	0x65
	.byte	0x3
	.4byte	0x148
	.byte	0x3
	.4byte	.LASF29
	.byte	0x5
	.byte	0x67
	.byte	0x10
	.4byte	0x19e
	.byte	0x7
	.byte	0x4
	.4byte	0x1a4
	.byte	0xc
	.4byte	0x1b9
	.byte	0xd
	.4byte	0xcb
	.byte	0xd
	.4byte	0xb3
	.byte	0xd
	.4byte	0x1b9
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x186
	.byte	0xe
	.4byte	.LASF31
	.2byte	0x190
	.byte	0x1
	.byte	0x11
	.byte	0x8
	.4byte	0x21c
	.byte	0x9
	.4byte	.LASF32
	.byte	0x1
	.byte	0x12
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0x9
	.4byte	.LASF33
	.byte	0x1
	.byte	0x13
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF34
	.byte	0x1
	.byte	0x14
	.byte	0x1f
	.4byte	0x221
	.byte	0x8
	.byte	0x9
	.4byte	.LASF35
	.byte	0x1
	.byte	0x16
	.byte	0xe
	.4byte	0xb3
	.byte	0xc8
	.byte	0x9
	.4byte	.LASF36
	.byte	0x1
	.byte	0x17
	.byte	0xe
	.4byte	0xb3
	.byte	0xcc
	.byte	0x9
	.4byte	.LASF37
	.byte	0x1
	.byte	0x18
	.byte	0x1f
	.4byte	0x221
	.byte	0xd0
	.byte	0
	.byte	0xf
	.4byte	0x1bf
	.byte	0x10
	.4byte	0x186
	.4byte	0x231
	.byte	0x11
	.4byte	0x94
	.byte	0xf
	.byte	0
	.byte	0x12
	.4byte	.LASF38
	.byte	0x1
	.byte	0x1c
	.byte	0xe
	.4byte	0xcb
	.byte	0x5
	.byte	0x3
	.4byte	sdio2_irq_arg
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0x1d
	.byte	0x1e
	.4byte	0x192
	.byte	0x5
	.byte	0x3
	.4byte	sdio2_irq_event_cb
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0x20
	.byte	0x32
	.4byte	0x21c
	.byte	0x5
	.byte	0x3
	.4byte	sdio2_ctrl
	.byte	0x13
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1d0
	.byte	0xd
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c4
	.byte	0x14
	.string	"irq"
	.byte	0x1
	.2byte	0x1d0
	.byte	0x28
	.4byte	0x81
	.4byte	.LLST10
	.byte	0x14
	.string	"arg"
	.byte	0x1
	.2byte	0x1d0
	.byte	0x33
	.4byte	0xcb
	.4byte	.LLST11
	.byte	0x15
	.4byte	.LVL28
	.4byte	0xa4d
	.4byte	0x2b3
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x43
	.byte	0
	.byte	0x17
	.4byte	.LVL29
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x16b
	.byte	0xd
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x450
	.byte	0x14
	.string	"irq"
	.byte	0x1
	.2byte	0x16b
	.byte	0x22
	.4byte	0x81
	.4byte	.LLST0
	.byte	0x14
	.string	"arg"
	.byte	0x1
	.2byte	0x16b
	.byte	0x2d
	.4byte	0xcb
	.4byte	.LLST1
	.byte	0x18
	.string	"dev"
	.byte	0x1
	.2byte	0x16d
	.byte	0x1d
	.4byte	0x450
	.4byte	.LLST2
	.byte	0x19
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x16e
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST3
	.byte	0x19
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x16f
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0x19
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x170
	.byte	0xd
	.4byte	0x9b
	.4byte	.LLST5
	.byte	0x1a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x3b6
	.byte	0x19
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x17f
	.byte	0x12
	.4byte	0xa7
	.4byte	.LLST6
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0
	.byte	0x18
	.string	"i"
	.byte	0x1
	.2byte	0x183
	.byte	0x16
	.4byte	0x9b
	.4byte	.LLST7
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1c
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x18c
	.byte	0x2b
	.4byte	0x186
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x15
	.4byte	.LVL10
	.4byte	0xa59
	.4byte	0x3a2
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL11
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0x42b
	.byte	0x19
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1a1
	.byte	0x12
	.4byte	0xa7
	.4byte	.LLST8
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x30
	.byte	0x18
	.string	"i"
	.byte	0x1
	.2byte	0x1a5
	.byte	0x16
	.4byte	0x9b
	.4byte	.LLST9
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x48
	.byte	0x1c
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1ae
	.byte	0x2b
	.4byte	0x186
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x15
	.4byte	.LVL16
	.4byte	0xa59
	.4byte	0x417
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL17
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x44
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LVL6
	.4byte	0x43f
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x17
	.4byte	.LVL23
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x35
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xdf
	.byte	0x1f
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x163
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x4a1
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x163
	.byte	0x35
	.4byte	0x450
	.4byte	.LLST53
	.byte	0x20
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x163
	.byte	0x50
	.4byte	0x192
	.byte	0x1
	.byte	0x5b
	.byte	0x21
	.string	"arg"
	.byte	0x1
	.2byte	0x163
	.byte	0x64
	.4byte	0xcb
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1f
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x110
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x51f
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.2byte	0x110
	.byte	0x3a
	.4byte	0x450
	.4byte	.LLST29
	.byte	0x14
	.string	"cmd"
	.byte	0x1
	.2byte	0x110
	.byte	0x43
	.4byte	0x81
	.4byte	.LLST30
	.byte	0x21
	.string	"arg"
	.byte	0x1
	.2byte	0x110
	.byte	0x52
	.4byte	0xbf
	.byte	0x1
	.byte	0x5c
	.byte	0x18
	.string	"ret"
	.byte	0x1
	.2byte	0x112
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST31
	.byte	0x1c
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x113
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0x19
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x114
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST32
	.byte	0
	.byte	0x22
	.4byte	.LASF52
	.byte	0x1
	.byte	0xfc
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x5cb
	.byte	0x23
	.string	"dev"
	.byte	0x1
	.byte	0xfc
	.byte	0x38
	.4byte	0x450
	.4byte	.LLST25
	.byte	0x24
	.4byte	.LASF48
	.byte	0x1
	.byte	0xfc
	.byte	0x58
	.4byte	0x1b9
	.4byte	.LLST26
	.byte	0x25
	.string	"ret"
	.byte	0x1
	.byte	0xfe
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST27
	.byte	0x19
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x102
	.byte	0xf
	.4byte	0xbf
	.4byte	.LLST28
	.byte	0x15
	.4byte	.LVL72
	.4byte	0xa64
	.4byte	0x598
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x26
	.4byte	.LVL73
	.4byte	0xa70
	.byte	0x15
	.4byte	.LVL76
	.4byte	0xa59
	.4byte	0x5ba
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x27
	.4byte	.LVL78
	.4byte	0xa7c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF54
	.byte	0x1
	.byte	0xe8
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x676
	.byte	0x23
	.string	"dev"
	.byte	0x1
	.byte	0xe8
	.byte	0x38
	.4byte	0x450
	.4byte	.LLST21
	.byte	0x24
	.4byte	.LASF48
	.byte	0x1
	.byte	0xe8
	.byte	0x58
	.4byte	0x1b9
	.4byte	.LLST22
	.byte	0x25
	.string	"ret"
	.byte	0x1
	.byte	0xea
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST23
	.byte	0x28
	.4byte	.LASF53
	.byte	0x1
	.byte	0xee
	.byte	0xf
	.4byte	0xbf
	.4byte	.LLST24
	.byte	0x15
	.4byte	.LVL59
	.4byte	0xa64
	.4byte	0x643
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x26
	.4byte	.LVL60
	.4byte	0xa70
	.byte	0x15
	.4byte	.LVL63
	.4byte	0xa59
	.4byte	0x665
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x27
	.4byte	.LVL65
	.4byte	0xa7c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF55
	.byte	0x1
	.byte	0x9b
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x7d6
	.byte	0x23
	.string	"dev"
	.byte	0x1
	.byte	0x9b
	.byte	0x39
	.4byte	0x450
	.4byte	.LLST41
	.byte	0x24
	.4byte	.LASF48
	.byte	0x1
	.byte	0x9b
	.byte	0x59
	.4byte	0x1b9
	.4byte	.LLST42
	.byte	0x28
	.4byte	.LASF19
	.byte	0x1
	.byte	0x9d
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST43
	.byte	0x28
	.4byte	.LASF56
	.byte	0x1
	.byte	0x9e
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST44
	.byte	0x28
	.4byte	.LASF57
	.byte	0x1
	.byte	0x9f
	.byte	0xd
	.4byte	0x9b
	.4byte	.LLST45
	.byte	0x28
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa0
	.byte	0xf
	.4byte	0xbf
	.4byte	.LLST46
	.byte	0x28
	.4byte	.LASF58
	.byte	0x1
	.byte	0xba
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST47
	.byte	0x28
	.4byte	.LASF59
	.byte	0x1
	.byte	0xba
	.byte	0x18
	.4byte	0xa7
	.4byte	.LLST48
	.byte	0x1a
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.4byte	0x748
	.byte	0x28
	.4byte	.LASF60
	.byte	0x1
	.byte	0xa5
	.byte	0x12
	.4byte	0xa7
	.4byte	.LLST49
	.byte	0x27
	.4byte	.LVL133
	.4byte	0x4a1
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	0x8c0
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xdd
	.byte	0x5
	.4byte	0x77e
	.byte	0x2a
	.4byte	0x8dd
	.4byte	.LLST50
	.byte	0x2a
	.4byte	0x8d1
	.4byte	.LLST51
	.byte	0x1b
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x2b
	.4byte	0x8e9
	.4byte	.LLST52
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL141
	.4byte	0xa59
	.4byte	0x7a5
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.byte	0x85
	.byte	0
	.byte	0x3c
	.byte	0x1e
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0xd0,0x1
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x15
	.4byte	.LVL142
	.4byte	0x4a1
	.4byte	0x7c3
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x26
	.4byte	.LVL144
	.4byte	0xa70
	.byte	0x26
	.4byte	.LVL149
	.4byte	0xa7c
	.byte	0
	.byte	0x22
	.4byte	.LASF61
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x8c0
	.byte	0x23
	.string	"dev"
	.byte	0x1
	.byte	0x6e
	.byte	0x39
	.4byte	0x450
	.4byte	.LLST33
	.byte	0x24
	.4byte	.LASF48
	.byte	0x1
	.byte	0x6e
	.byte	0x59
	.4byte	0x1b9
	.4byte	.LLST34
	.byte	0x28
	.4byte	.LASF19
	.byte	0x1
	.byte	0x70
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST35
	.byte	0x28
	.4byte	.LASF57
	.byte	0x1
	.byte	0x71
	.byte	0xd
	.4byte	0x9b
	.4byte	.LLST36
	.byte	0x28
	.4byte	.LASF53
	.byte	0x1
	.byte	0x72
	.byte	0xf
	.4byte	0xbf
	.4byte	.LLST37
	.byte	0x2c
	.4byte	0x8c0
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x91
	.byte	0x5
	.4byte	0x870
	.byte	0x2a
	.4byte	0x8dd
	.4byte	.LLST38
	.byte	0x2a
	.4byte	0x8d1
	.4byte	.LLST39
	.byte	0x2b
	.4byte	0x8e9
	.4byte	.LLST40
	.byte	0
	.byte	0x15
	.4byte	.LVL117
	.4byte	0x4a1
	.4byte	0x88e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x34
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x15
	.4byte	.LVL119
	.4byte	0xa59
	.4byte	0x8ad
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0x8
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x26
	.4byte	.LVL120
	.4byte	0xa70
	.byte	0x26
	.4byte	.LVL125
	.4byte	0xa7c
	.byte	0
	.byte	0x2d
	.4byte	.LASF77
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.4byte	0x81
	.byte	0x1
	.4byte	0x8f6
	.byte	0x2e
	.string	"dev"
	.byte	0x1
	.byte	0x64
	.byte	0x38
	.4byte	0x450
	.byte	0x2f
	.4byte	.LASF62
	.byte	0x1
	.byte	0x64
	.byte	0x46
	.4byte	0xb3
	.byte	0x30
	.4byte	.LASF19
	.byte	0x1
	.byte	0x66
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0x22
	.4byte	.LASF63
	.byte	0x1
	.byte	0x57
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x95c
	.byte	0x23
	.string	"dev"
	.byte	0x1
	.byte	0x57
	.byte	0x31
	.4byte	0x450
	.4byte	.LLST17
	.byte	0x26
	.4byte	.LVL50
	.4byte	0xa88
	.byte	0x15
	.4byte	.LVL51
	.4byte	0xa88
	.4byte	0x93c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x43
	.byte	0
	.byte	0x27
	.4byte	.LVL52
	.4byte	0xa64
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x190
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF64
	.byte	0x1
	.byte	0x22
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xa1e
	.byte	0x23
	.string	"dev"
	.byte	0x1
	.byte	0x22
	.byte	0x2f
	.4byte	0x450
	.4byte	.LLST12
	.byte	0x24
	.4byte	.LASF65
	.byte	0x1
	.byte	0x22
	.byte	0x3d
	.4byte	0xb3
	.4byte	.LLST13
	.byte	0x28
	.4byte	.LASF19
	.byte	0x1
	.byte	0x24
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST14
	.byte	0x28
	.4byte	.LASF43
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST15
	.byte	0x28
	.4byte	.LASF66
	.byte	0x1
	.byte	0x26
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST16
	.byte	0x15
	.4byte	.LVL41
	.4byte	0xa94
	.4byte	0x9e3
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	qcc74x_sdio2_isr
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LVL42
	.4byte	0xaa0
	.byte	0x15
	.4byte	.LVL43
	.4byte	0xa94
	.4byte	0xa0e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x43
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	qcc74x_sdio2_reset_isr
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LVL44
	.4byte	0xaa0
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x43
	.byte	0
	.byte	0
	.byte	0x31
	.4byte	0x8c0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xa4d
	.byte	0x2a
	.4byte	0x8d1
	.4byte	.LLST18
	.byte	0x2a
	.4byte	0x8dd
	.4byte	.LLST19
	.byte	0x2b
	.4byte	0x8e9
	.4byte	.LLST20
	.byte	0
	.byte	0x32
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x6
	.byte	0x63
	.byte	0x6
	.byte	0x33
	.4byte	.LASF78
	.4byte	.LASF79
	.byte	0x8
	.byte	0
	.byte	0x32
	.4byte	.LASF68
	.4byte	.LASF68
	.byte	0x7
	.byte	0x26
	.byte	0x7
	.byte	0x32
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x6
	.byte	0x2e
	.byte	0xb
	.byte	0x32
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x6
	.byte	0x35
	.byte	0x6
	.byte	0x32
	.4byte	.LASF71
	.4byte	.LASF71
	.byte	0x6
	.byte	0x55
	.byte	0x6
	.byte	0x32
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x6
	.byte	0x3f
	.byte	0x5
	.byte	0x32
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x6
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
	.byte	0xc
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x2e
	.byte	0x1
	.byte	0x3f
	.byte	0x19
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
	.byte	0x20
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x5
	.byte	0
	.byte	0x3
	.byte	0x8
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0
	.byte	0
	.byte	0x31
	.byte	0x2e
	.byte	0x1
	.byte	0x31
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST10:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL25
	.4byte	.LFE14
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
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL25
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL20
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x5
	.byte	0x40
	.byte	0x89
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x5
	.byte	0x41
	.byte	0x89
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x5
	.byte	0x40
	.byte	0x88
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x5
	.byte	0x41
	.byte	0x88
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL96
	.4byte	.LVL99
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL112
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL111
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL70
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL79
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL69
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL75
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL57
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL66
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL56
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL68
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL130
	.4byte	.LVL133-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL133-1
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL132
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL131
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL154
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL135
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL140
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL154
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL145
	.4byte	.LVL149-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL154
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL145
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x82
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL114
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117-1
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL115
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL116
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL129
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x82
	.byte	0xc9,0x2
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL120
	.4byte	.LVL125-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x84
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL33
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL47
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL41-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL46
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x9
	.byte	0x7f
	.byte	0xec,0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x9
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41-1
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL55
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x6c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
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
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	0
	.4byte	0
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"user_data"
.LASF66:
	.string	"dnld_max"
.LASF63:
	.string	"qcc74x_sdio2_deinit"
.LASF45:
	.string	"upld_bitmap"
.LASF16:
	.string	"uintptr_t"
.LASF3:
	.string	"__uint8_t"
.LASF31:
	.string	"qcc74x_sdio2_queue_ctrl_s"
.LASF39:
	.string	"sdio2_irq_event_cb"
.LASF10:
	.string	"long long unsigned int"
.LASF69:
	.string	"qcc74x_irq_save"
.LASF21:
	.string	"sub_idx"
.LASF64:
	.string	"qcc74x_sdio2_init"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF26:
	.string	"buff"
.LASF67:
	.string	"qcc74x_irq_clear_pending"
.LASF36:
	.string	"sdio_upld_port_tail"
.LASF6:
	.string	"long int"
.LASF33:
	.string	"sdio_dnld_port_tail"
.LASF34:
	.string	"sdio_dnld_port_table"
.LASF78:
	.string	"memcpy"
.LASF76:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/lhal"
.LASF42:
	.string	"qcc74x_sdio2_isr"
.LASF14:
	.string	"uint16_t"
.LASF54:
	.string	"qcc74x_sdio2_dnld_port_pop"
.LASF41:
	.string	"qcc74x_sdio2_reset_isr"
.LASF70:
	.string	"qcc74x_irq_restore"
.LASF7:
	.string	"__uint32_t"
.LASF50:
	.string	"qcc74x_sdio2_irq_attach"
.LASF27:
	.string	"user_arg"
.LASF12:
	.string	"unsigned int"
.LASF60:
	.string	"block_size"
.LASF8:
	.string	"long unsigned int"
.LASF18:
	.string	"name"
.LASF75:
	.string	"./drivers/lhal/src/qcc74x_sdio2.c"
.LASF51:
	.string	"qcc74x_sdio2_feature_control"
.LASF62:
	.string	"event"
.LASF5:
	.string	"short unsigned int"
.LASF79:
	.string	"__builtin_memcpy"
.LASF74:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF37:
	.string	"sdio_upld_port_table"
.LASF56:
	.string	"trans_len"
.LASF57:
	.string	"port_tail"
.LASF65:
	.string	"dnld_size_max"
.LASF59:
	.string	"upld_elem"
.LASF19:
	.string	"reg_base"
.LASF38:
	.string	"sdio2_irq_arg"
.LASF29:
	.string	"qcc74x_sdio2_irq_cb_t"
.LASF48:
	.string	"trans_desc"
.LASF72:
	.string	"qcc74x_irq_attach"
.LASF1:
	.string	"unsigned char"
.LASF43:
	.string	"regval"
.LASF2:
	.string	"short int"
.LASF53:
	.string	"flag"
.LASF11:
	.string	"__uintptr_t"
.LASF25:
	.string	"data_len"
.LASF35:
	.string	"sdio_upld_port_head"
.LASF61:
	.string	"qcc74x_sdio2_dnld_port_push"
.LASF28:
	.string	"qcc74x_sdio2_trans_desc_t"
.LASF32:
	.string	"sdio_dnld_port_head"
.LASF73:
	.string	"qcc74x_irq_enable"
.LASF15:
	.string	"uint32_t"
.LASF20:
	.string	"irq_num"
.LASF17:
	.string	"char"
.LASF4:
	.string	"__uint16_t"
.LASF58:
	.string	"blk_size"
.LASF46:
	.string	"upld_trans_desc"
.LASF22:
	.string	"dev_type"
.LASF24:
	.string	"buff_len"
.LASF44:
	.string	"crcerror"
.LASF49:
	.string	"irq_event_cb"
.LASF30:
	.string	"qcc74x_device_s"
.LASF47:
	.string	"dnld_bitmap"
.LASF13:
	.string	"uint8_t"
.LASF77:
	.string	"qcc74x_sdio2_trig_host_int"
.LASF40:
	.string	"sdio2_ctrl"
.LASF55:
	.string	"qcc74x_sdio2_upld_port_push"
.LASF68:
	.string	"arch_memset"
.LASF71:
	.string	"qcc74x_irq_disable"
.LASF52:
	.string	"qcc74x_sdio2_upld_port_pop"
	.ident	"GCC: (GNU) 10.4.0"
