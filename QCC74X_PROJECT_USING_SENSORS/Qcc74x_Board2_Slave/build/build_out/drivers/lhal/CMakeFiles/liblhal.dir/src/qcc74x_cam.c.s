	.file	"qcc74x_cam.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_cam_init,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_init
	.type	qcc74x_cam_init, @function
qcc74x_cam_init:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_cam.c"
	.loc 1 19 1
	.cfi_startproc
.LVL0:
	.loc 1 20 5
	.loc 1 21 5
	.loc 1 22 5
	.loc 1 23 5
	.loc 1 24 5
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 31 5
	.loc 1 32 5
	.loc 1 33 5
	.loc 1 35 5
	.loc 1 59 5
	.loc 1 19 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 60 67
	lw	a5,16(a1)
	lhu	a3,4(a1)
	.loc 1 19 1
	sw	s1,20(sp)
	.cfi_offset 9, -12
	.loc 1 59 14
	lw	s1,4(a0)
.LVL1:
	.loc 1 60 5 is_stmt 1
	.loc 1 19 1 is_stmt 0
	sw	s0,24(sp)
	.cfi_offset 8, -8
	lhu	s0,2(a1)
	sw	s2,16(sp)
	sw	ra,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 60 58
	sw	a5,4(s1)
	.loc 1 61 5 is_stmt 1
	slli	a5,a3,16
	or	a5,a5,s0
	.loc 1 61 59 is_stmt 0
	sw	a5,56(s1)
	.loc 1 63 5 is_stmt 1
	.loc 1 63 59 is_stmt 0
	sw	zero,240(s1)
	.loc 1 66 5 is_stmt 1
	.loc 1 66 12 is_stmt 0
	lw	a4,48(s1)
.LVL2:
	.loc 1 74 5 is_stmt 1
	.loc 1 61 68 is_stmt 0
	mv	s2,a3
	.loc 1 74 17
	extu	a5,a4,15,0
	.loc 1 74 8
	bgtu	a5,s0,.L2
	.loc 1 77 9 is_stmt 1
	.loc 1 77 52 is_stmt 0
	srli	s0,a4,16
	.loc 1 77 22
	sub	a4,a4,s0
.LVL3:
	extu	s0,a4,15,0
.LVL4:
.L2:
	.loc 1 80 5 is_stmt 1
	.loc 1 80 12 is_stmt 0
	lw	a5,52(s1)
.LVL5:
	.loc 1 81 5 is_stmt 1
	.loc 1 81 17 is_stmt 0
	extu	a4,a5,15,0
	.loc 1 81 8
	bgtu	a4,a3,.L3
	.loc 1 84 9 is_stmt 1
	.loc 1 84 52 is_stmt 0
	srli	a4,a5,16
	.loc 1 84 22
	sub	a5,a5,a4
.LVL6:
	extu	s2,a5,15,0
.LVL7:
.L3:
	sw	a1,12(sp)
.LVL8:
	.loc 1 88 5 is_stmt 1
	.loc 1 88 60 is_stmt 0
	li	a5,537198592
	sw	zero,8(a5)
	.loc 1 99 9 is_stmt 1
	.loc 1 99 18 is_stmt 0
	li	a0,2
.LVL9:
	call	qcc74x_clk_get_system_clock
.LVL10:
	.loc 1 100 9 is_stmt 1
	.loc 1 100 12 is_stmt 0
	li	a4,999424
	addi	a5,a4,575
	lw	a1,12(sp)
	.loc 1 101 20
	li	a2,80
	.loc 1 100 12
	bleu	a0,a5,.L4
	.loc 1 99 16
	addi	a4,a4,576
	divu	a2,a0,a4
.L4:
.LVL11:
	.loc 1 103 9 is_stmt 1
	.loc 1 103 115 is_stmt 0
	lw	a5,8(a1)
	li	a3,999424
	addi	a3,a3,576
	.loc 1 103 50
	lhu	a0,2(a1)
	.loc 1 103 28
	lhu	a4,6(a1)
	.loc 1 103 38
	addsl	a4, a4, a0, 2
	.loc 1 103 115
	divu	a5,a5,a3
	.loc 1 105 12
	li	a3,7
	.loc 1 103 92
	mul	a5,a5,a0
	slli	a5,a5,1
	.loc 1 103 126
	divu	a5,a5,a2
	.loc 1 103 65
	sub	a5,a4,a5
.LVL12:
	.loc 1 105 9 is_stmt 1
	.loc 1 106 23 is_stmt 0
	li	a4,2
	.loc 1 105 12
	bleu	a5,a3,.L5
	.loc 1 107 16 is_stmt 1
	.loc 1 107 19 is_stmt 0
	li	a3,4096
	addi	a3,a3,3
	.loc 1 108 23
	li	a4,1024
	.loc 1 107 19
	bgtu	a5,a3,.L5
	.loc 1 103 19
	srli	a4,a5,2
.LVL13:
.L5:
	.loc 1 111 9 is_stmt 1
	.loc 1 111 16 is_stmt 0
	li	a5,537198592
	.loc 1 121 31
	mul	s0,s0,s2
.LVL14:
	.loc 1 111 16
	lw	a3,0(a5)
.LVL15:
	.loc 1 112 9 is_stmt 1
	.loc 1 112 16 is_stmt 0
	li	a2,-134152192
	addi	a2,a2,-1
	and	a3,a3,a2
.LVL16:
	.loc 1 113 9 is_stmt 1
	.loc 1 113 29 is_stmt 0
	slli	a4,a4,16
.LVL17:
	.loc 1 113 16
	or	a4,a4,a3
.LVL18:
	.loc 1 114 9 is_stmt 1
	.loc 1 114 64 is_stmt 0
	sw	a4,0(a5)
	.loc 1 121 5 is_stmt 1
	.loc 1 122 12 is_stmt 0
	lw	a4,0(s1)
.LVL19:
	.loc 1 123 8
	lbu	a2,12(a1)
	.loc 1 121 46
	slli	a3,s0,1
.LVL20:
	.loc 1 122 5 is_stmt 1
	.loc 1 123 5
	.loc 1 133 16 is_stmt 0
	ori	a5,a4,2
	.loc 1 123 8
	beq	a2,zero,.L7
	.loc 1 127 9 is_stmt 1
	.loc 1 127 16 is_stmt 0
	andi	a5,a4,-3
.LVL21:
.L7:
	.loc 1 140 5 is_stmt 1
	.loc 1 142 19 is_stmt 0
	lbu	a2,0(a1)
	.loc 1 140 12
	li	a4,-13578240
	addi	a4,a4,-1
	.loc 1 142 5
	li	a6,4
	.loc 1 140 12
	and	a4,a5,a4
.LVL22:
	.loc 1 142 5 is_stmt 1
	beq	a2,a6,.L8
	bgtu	a2,a6,.L9
	li	a0,1
	lbu	a5,14(a1)
	bleu	a2,a0,.L10
	.loc 1 257 13
	.loc 1 257 16 is_stmt 0
	bgtu	a5,a0,.L44
.L38:
	.loc 1 31 13
	li	a5,0
	j	.L11
.L9:
	.loc 1 142 5
	addi	a2,a2,-7
	andi	a2,a2,0xff
	li	a0,1
	li	a5,0
	bleu	a2,a0,.L45
.LVL23:
.L11:
	.loc 1 338 5 is_stmt 1
	.loc 1 340 25 is_stmt 0
	slli	a5,a5,16
.LVL24:
	.loc 1 338 59
	sw	a3,16(s1)
	.loc 1 340 5 is_stmt 1
	.loc 1 340 12 is_stmt 0
	or	a5,a5,a4
.LVL25:
	.loc 1 342 5 is_stmt 1
	.loc 1 342 58 is_stmt 0
	sw	a5,0(s1)
	.loc 1 345 5 is_stmt 1
	.loc 1 345 12 is_stmt 0
	lw	a5,0(s1)
.LVL26:
	.loc 1 346 5 is_stmt 1
	lw	a3,20(a1)
.LVL27:
	.loc 1 347 5 is_stmt 0
	li	a2,2
	.loc 1 346 12
	extu	a5,a5,4+3-1,4
.LVL28:
	.loc 1 347 5 is_stmt 1
	.loc 1 371 20 is_stmt 0
	srli	a4,a3,6
	.loc 1 347 5
	beq	a5,a2,.L29
	bgtu	a5,a2,.L23
	.loc 1 353 20
	srli	a4,a3,3
	.loc 1 347 5
	beq	a5,zero,.L29
	li	a2,1
	.loc 1 362 20
	srli	a4,a3,5
.L51:
	.loc 1 347 5
	beq	a5,a2,.L29
	.loc 1 380 13 is_stmt 1
	.loc 1 380 20 is_stmt 0
	srli	a4,a3,7
.LVL29:
	.loc 1 382 13 is_stmt 1
.L29:
	.loc 1 405 5
	.loc 1 405 58 is_stmt 0
	sw	a4,8(s1)
	.loc 1 440 5 is_stmt 1
	.loc 1 440 12 is_stmt 0
	li	a4,537198592
.LVL30:
	lw	a5,0(a4)
.LVL31:
	.loc 1 441 5 is_stmt 1
	.loc 1 446 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	.loc 1 441 12
	ori	a5,a5,1
.LVL32:
	.loc 1 442 5 is_stmt 1
	.loc 1 442 60 is_stmt 0
	sw	a5,0(a4)
	.loc 1 446 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL33:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL34:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL35:
	jr	ra
.LVL36:
.L10:
	.cfi_restore_state
	.loc 1 182 13 is_stmt 1
	.loc 1 182 16 is_stmt 0
	bleu	a5,a0,.L38
	.loc 1 185 20 is_stmt 1
	.loc 1 185 23 is_stmt 0
	li	a2,2
	bne	a5,a2,.L14
.LVL37:
.L49:
	.loc 1 272 17 is_stmt 1
	.loc 1 273 17
	.loc 1 273 28 is_stmt 0
	mv	a3,s0
.LVL38:
	.loc 1 272 27
	li	a5,4
	j	.L11
.LVL39:
.L14:
	.loc 1 191 20 is_stmt 1
	.loc 1 191 23 is_stmt 0
	li	a2,3
	bne	a5,a2,.L15
.L52:
	.loc 1 264 17 is_stmt 1
	.loc 1 264 24 is_stmt 0
	li	a5,524288
	or	a4,a4,a5
.LVL40:
	.loc 1 266 17 is_stmt 1
	.loc 1 267 17
	j	.L49
.LVL41:
.L15:
	.loc 1 199 20
	.loc 1 199 23 is_stmt 0
	bne	a5,a6,.L38
	.loc 1 203 17 is_stmt 1
	.loc 1 203 24 is_stmt 0
	li	a3,13107200
.LVL42:
.L47:
	.loc 1 283 72
	li	a2,537198592
	.loc 1 278 24
	or	a4,a4,a3
.LVL43:
	.loc 1 280 17 is_stmt 1
	.loc 1 281 17
	.loc 1 283 72 is_stmt 0
	sw	a0,8(a2)
	.loc 1 281 58
	srai	a3,s0,1
.LVL44:
	.loc 1 283 17 is_stmt 1
	j	.L11
.LVL45:
.L44:
	.loc 1 260 20
	.loc 1 260 23 is_stmt 0
	li	a2,2
	beq	a5,a2,.L52
	.loc 1 268 20 is_stmt 1
	.loc 1 268 23 is_stmt 0
	li	a2,3
	beq	a5,a2,.L49
	.loc 1 274 20 is_stmt 1
	.loc 1 274 23 is_stmt 0
	bne	a5,a6,.L38
	.loc 1 278 17 is_stmt 1
	.loc 1 278 24 is_stmt 0
	li	a3,4194304
.LVL46:
	j	.L47
.LVL47:
.L8:
	.loc 1 293 13 is_stmt 1
	.loc 1 293 16 is_stmt 0
	lbu	a5,14(a1)
	andi	a5,a5,253
	bne	a5,zero,.L38
	.loc 1 294 17 is_stmt 1
	.loc 1 295 17
	.loc 1 295 28 is_stmt 0
	mv	a3,s0
.LVL48:
	j	.L11
.LVL49:
.L45:
	.loc 1 311 13 is_stmt 1
	.loc 1 311 23 is_stmt 0
	lbu	a2,14(a1)
	.loc 1 311 16
	beq	a2,zero,.L18
	.loc 1 311 44 discriminator 1
	li	a5,6
	bne	a2,a5,.L19
.L18:
	.loc 1 312 17 is_stmt 1
.LVL50:
	.loc 1 313 17
	.loc 1 313 58 is_stmt 0
	li	a3,3
.LVL51:
	mul	a3,s0,a3
.LVL52:
	.loc 1 312 27
	li	a5,1
	.loc 1 313 28
	j	.L11
.LVL53:
.L19:
	.loc 1 315 20 is_stmt 1
	.loc 1 315 23 is_stmt 0
	li	a0,7
	bne	a2,a0,.L20
	.loc 1 316 17 is_stmt 1
.LVL54:
	.loc 1 317 17
	.loc 1 318 17
	.loc 1 318 71 is_stmt 0
	li	a5,1280
	sw	a5,32(s1)
.L48:
	.loc 1 320 27
	li	a5,2
	j	.L11
.LVL55:
.L20:
	.loc 1 319 20 is_stmt 1
	.loc 1 319 23 is_stmt 0
	li	a0,8
	bne	a2,a0,.L21
	.loc 1 320 17 is_stmt 1
.LVL56:
	.loc 1 321 17
	.loc 1 322 17
	.loc 1 322 71 is_stmt 0
	sw	zero,32(s1)
	j	.L48
.LVL57:
.L21:
	.loc 1 323 20 is_stmt 1
	.loc 1 323 23 is_stmt 0
	li	a0,9
	.loc 1 31 13
	li	a5,0
	.loc 1 323 23
	bne	a2,a0,.L11
	.loc 1 325 17 is_stmt 1
.LVL58:
	.loc 1 326 17
	.loc 1 326 58 is_stmt 0
	slli	a3,s0,2
.LVL59:
	.loc 1 325 27
	li	a5,3
	j	.L11
.LVL60:
.L23:
	.loc 1 347 5
	li	a2,5
	.loc 1 386 20
	srli	a4,a3,8
	.loc 1 347 5
	beq	a5,a2,.L29
	li	a2,6
	.loc 1 390 20
	srli	a4,a3,9
	j	.L51
	.cfi_endproc
.LFE5:
	.size	qcc74x_cam_init, .-qcc74x_cam_init
	.section	.text.qcc74x_cam_start,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_start
	.type	qcc74x_cam_start, @function
qcc74x_cam_start:
.LFB6:
	.loc 1 449 1 is_stmt 1
	.cfi_startproc
.LVL61:
	.loc 1 453 5
	.loc 1 454 5
	.loc 1 456 5
	.loc 1 457 5
	.loc 1 457 16 is_stmt 0
	lw	a4,4(a0)
	.loc 1 457 12
	lw	a5,0(a4)
.LVL62:
	.loc 1 458 5 is_stmt 1
	.loc 1 458 12 is_stmt 0
	ori	a5,a5,1
.LVL63:
	.loc 1 459 5 is_stmt 1
	.loc 1 459 58 is_stmt 0
	sw	a5,0(a4)
.LVL64:
	.loc 1 461 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_cam_start, .-qcc74x_cam_start
	.section	.text.qcc74x_cam_stop,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_stop
	.type	qcc74x_cam_stop, @function
qcc74x_cam_stop:
.LFB7:
	.loc 1 464 1 is_stmt 1
	.cfi_startproc
.LVL65:
	.loc 1 468 5
	.loc 1 469 5
	.loc 1 471 5
	.loc 1 472 5
	.loc 1 472 16 is_stmt 0
	lw	a4,4(a0)
	.loc 1 472 12
	lw	a5,0(a4)
.LVL66:
	.loc 1 473 5 is_stmt 1
	.loc 1 473 12 is_stmt 0
	andi	a5,a5,-2
.LVL67:
	.loc 1 474 5 is_stmt 1
	.loc 1 474 58 is_stmt 0
	sw	a5,0(a4)
.LVL68:
	.loc 1 476 1
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_cam_stop, .-qcc74x_cam_stop
	.section	.text.qcc74x_cam_int_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_int_mask
	.type	qcc74x_cam_int_mask, @function
qcc74x_cam_int_mask:
.LFB8:
	.loc 1 479 1 is_stmt 1
	.cfi_startproc
.LVL69:
	.loc 1 483 5
	.loc 1 484 5
	.loc 1 486 5
	.loc 1 490 5
	.loc 1 490 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 490 12
	lw	a3,12(a5)
.LVL70:
	.loc 1 492 5 is_stmt 1
	.loc 1 495 16 is_stmt 0
	or	a4,a3,a1
	.loc 1 492 8
	beq	a2,zero,.L57
	.loc 1 493 9 is_stmt 1
	.loc 1 493 19 is_stmt 0
	not	a1,a1
.LVL71:
	.loc 1 493 16
	and	a4,a1,a3
.LVL72:
.L57:
	.loc 1 500 5 is_stmt 1
	.loc 1 500 58 is_stmt 0
	sw	a4,12(a5)
.LVL73:
	.loc 1 503 1
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_cam_int_mask, .-qcc74x_cam_int_mask
	.section	.text.qcc74x_cam_int_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_int_clear
	.type	qcc74x_cam_int_clear, @function
qcc74x_cam_int_clear:
.LFB9:
	.loc 1 506 1 is_stmt 1
	.cfi_startproc
.LVL74:
	.loc 1 510 5
	.loc 1 510 54 is_stmt 0
	lw	a5,4(a0)
	.loc 1 510 64
	sw	a1,20(a5)
	.loc 1 512 1
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_cam_int_clear, .-qcc74x_cam_int_clear
	.section	.text.qcc74x_cam_crop_vsync,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_crop_vsync
	.type	qcc74x_cam_crop_vsync, @function
qcc74x_cam_crop_vsync:
.LFB10:
	.loc 1 515 1 is_stmt 1
	.cfi_startproc
.LVL75:
	.loc 1 520 5
	.loc 1 520 54 is_stmt 0
	lw	a5,4(a0)
	.loc 1 520 78
	slli	a1,a1,16
.LVL76:
	.loc 1 520 84
	or	a1,a1,a2
	.loc 1 520 64
	sw	a1,52(a5)
	.loc 1 522 1
	ret
	.cfi_endproc
.LFE10:
	.size	qcc74x_cam_crop_vsync, .-qcc74x_cam_crop_vsync
	.section	.text.qcc74x_cam_crop_hsync,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_crop_hsync
	.type	qcc74x_cam_crop_hsync, @function
qcc74x_cam_crop_hsync:
.LFB11:
	.loc 1 525 1 is_stmt 1
	.cfi_startproc
.LVL77:
	.loc 1 534 5
	.loc 1 534 54 is_stmt 0
	lw	a5,4(a0)
	.loc 1 534 79
	slli	a1,a1,16
.LVL78:
	.loc 1 534 85
	or	a1,a1,a2
	.loc 1 534 64
	sw	a1,48(a5)
	.loc 1 536 1
	ret
	.cfi_endproc
.LFE11:
	.size	qcc74x_cam_crop_hsync, .-qcc74x_cam_crop_hsync
	.section	.text.qcc74x_cam_pop_one_frame,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_pop_one_frame
	.type	qcc74x_cam_pop_one_frame, @function
qcc74x_cam_pop_one_frame:
.LFB12:
	.loc 1 539 1 is_stmt 1
	.cfi_startproc
.LVL79:
	.loc 1 547 5
	.loc 1 547 54 is_stmt 0
	lw	a5,4(a0)
	.loc 1 547 64
	li	a4,1
	sw	a4,20(a5)
	.loc 1 551 1
	ret
	.cfi_endproc
.LFE12:
	.size	qcc74x_cam_pop_one_frame, .-qcc74x_cam_pop_one_frame
	.section	.text.qcc74x_cam_get_frame_count,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_get_frame_count
	.type	qcc74x_cam_get_frame_count, @function
qcc74x_cam_get_frame_count:
.LFB13:
	.loc 1 554 1 is_stmt 1
	.cfi_startproc
.LVL80:
	.loc 1 558 5
	.loc 1 559 5
	.loc 1 561 5
	.loc 1 562 5
	.loc 1 562 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 562 12
	lw	a0,12(a5)
.LVL81:
	.loc 1 566 5 is_stmt 1
	.loc 1 567 5
	.loc 1 570 1 is_stmt 0
	extu	a0,a0,16+5-1,16
.LVL82:
	ret
	.cfi_endproc
.LFE13:
	.size	qcc74x_cam_get_frame_count, .-qcc74x_cam_get_frame_count
	.section	.text.qcc74x_cam_get_frame_info,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_get_frame_info
	.type	qcc74x_cam_get_frame_info, @function
qcc74x_cam_get_frame_info:
.LFB14:
	.loc 1 573 1 is_stmt 1
	.cfi_startproc
.LVL83:
	.loc 1 577 5
	.loc 1 579 5
	.loc 1 579 14 is_stmt 0
	lw	a5,4(a0)
.LVL84:
	.loc 1 580 5 is_stmt 1
	.loc 1 580 35 is_stmt 0
	lw	a4,64(a5)
	.loc 1 588 14
	lw	a0,16(a5)
.LVL85:
	.loc 1 580 10
	sw	a4,0(a1)
	.loc 1 588 5 is_stmt 1
	.loc 1 592 1 is_stmt 0
	ret
	.cfi_endproc
.LFE14:
	.size	qcc74x_cam_get_frame_info, .-qcc74x_cam_get_frame_info
	.section	.text.qcc74x_cam_get_intstatus,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_get_intstatus
	.type	qcc74x_cam_get_intstatus, @function
qcc74x_cam_get_intstatus:
.LFB15:
	.loc 1 595 1 is_stmt 1
	.cfi_startproc
.LVL86:
	.loc 1 599 5
	.loc 1 599 62 is_stmt 0
	lw	a5,4(a0)
	.loc 1 599 14
	lw	a0,12(a5)
.LVL87:
	.loc 1 601 1
	ret
	.cfi_endproc
.LFE15:
	.size	qcc74x_cam_get_intstatus, .-qcc74x_cam_get_intstatus
	.section	.text.qcc74x_cam_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_cam_feature_control
	.type	qcc74x_cam_feature_control, @function
qcc74x_cam_feature_control:
.LFB16:
	.loc 1 604 1 is_stmt 1
	.cfi_startproc
.LVL88:
	.loc 1 608 5
	.loc 1 609 5
	.loc 1 610 5
	.loc 1 612 5
	.loc 1 614 5 is_stmt 0
	li	a5,7
	.loc 1 612 14
	lw	a3,4(a0)
.LVL89:
	.loc 1 614 5 is_stmt 1
	beq	a1,a5,.L67
	bgt	a1,a5,.L68
	li	a5,4
	beq	a1,a5,.L69
	bgt	a1,a5,.L70
	li	a5,2
	beq	a1,a5,.L71
	li	a5,3
	beq	a1,a5,.L72
	li	a5,1
	beq	a1,a5,.L73
.L103:
	li	a0,-1
.LVL90:
	ret
.LVL91:
.L70:
	li	a5,5
	bne	a1,a5,.L100
	.loc 1 657 13
	.loc 1 657 33 is_stmt 0
	lw	a5,96(a3)
	.loc 1 657 30
	sh	a5,0(a2)
	.loc 1 658 13 is_stmt 1
	j	.L102
.L68:
	.loc 1 614 5 is_stmt 0
	li	a5,10
	beq	a1,a5,.L77
	bgt	a1,a5,.L78
	li	a5,8
	beq	a1,a5,.L79
	li	a5,9
	bne	a1,a5,.L103
	.loc 1 708 13 is_stmt 1
	.loc 1 708 20 is_stmt 0
	li	a5,537198592
	lw	a4,0(a5)
.LVL92:
	.loc 1 709 13 is_stmt 1
	.loc 1 712 24 is_stmt 0
	andi	a5,a4,-5
	.loc 1 709 16
	beq	a2,zero,.L94
	.loc 1 710 17 is_stmt 1
	.loc 1 710 24 is_stmt 0
	ori	a5,a4,4
.LVL93:
	.loc 1 714 13 is_stmt 1
.L94:
	.loc 1 745 13
	.loc 1 745 68 is_stmt 0
	li	a4,537198592
	sw	a5,0(a4)
	.loc 1 747 13 is_stmt 1
	j	.L102
.LVL94:
.L78:
	.loc 1 614 5 is_stmt 0
	li	a5,11
	beq	a1,a5,.L81
	li	a5,12
	bne	a1,a5,.L103
.LBB2:
	.loc 1 752 13 is_stmt 1
.LVL95:
	.loc 1 754 13
	.loc 1 754 76 is_stmt 0
	lw	a5,0(a2)
	.loc 1 754 67
	sw	a5,28(a3)
	.loc 1 755 13 is_stmt 1
	.loc 1 755 76 is_stmt 0
	lw	a5,4(a2)
	.loc 1 755 67
	sw	a5,24(a3)
	j	.L102
.LVL96:
.L73:
.LBE2:
	.loc 1 617 13 is_stmt 1
	.loc 1 617 20 is_stmt 0
	lw	a4,0(a3)
.LVL97:
	.loc 1 618 13 is_stmt 1
	.loc 1 621 24 is_stmt 0
	andi	a5,a4,-5
	.loc 1 618 16
	beq	a2,zero,.L88
	.loc 1 619 17 is_stmt 1
	.loc 1 619 24 is_stmt 0
	ori	a5,a4,4
.LVL98:
	.loc 1 623 13 is_stmt 1
.L88:
	.loc 1 678 13
	.loc 1 678 66 is_stmt 0
	sw	a5,0(a3)
	.loc 1 679 13 is_stmt 1
	j	.L102
.LVL99:
.L71:
	.loc 1 628 13
	.loc 1 628 20 is_stmt 0
	lw	a4,0(a3)
.LVL100:
	.loc 1 629 13 is_stmt 1
	.loc 1 632 24 is_stmt 0
	andi	a5,a4,-9
	.loc 1 629 16
	beq	a2,zero,.L88
	.loc 1 630 17 is_stmt 1
	.loc 1 630 24 is_stmt 0
	ori	a5,a4,8
.LVL101:
	.loc 1 634 13 is_stmt 1
	j	.L88
.LVL102:
.L72:
	.loc 1 639 13
	.loc 1 639 20 is_stmt 0
	lw	a5,0(a3)
.LVL103:
	.loc 1 640 13 is_stmt 1
	.loc 1 641 28 is_stmt 0
	slli	a2,a2,4
.LVL104:
	.loc 1 641 37
	andi	a2,a2,112
	.loc 1 640 20
	andi	a5,a5,-113
.LVL105:
	.loc 1 641 13 is_stmt 1
	.loc 1 641 20 is_stmt 0
	or	a2,a2,a5
.LVL106:
	.loc 1 642 13 is_stmt 1
	.loc 1 642 66 is_stmt 0
	sw	a2,0(a3)
	.loc 1 643 13 is_stmt 1
.LVL107:
.L102:
	.loc 1 756 11
	.loc 1 608 9 is_stmt 0
	li	a0,0
.LVL108:
	.loc 1 769 5 is_stmt 1
	.loc 1 771 1 is_stmt 0
	ret
.LVL109:
.L69:
	.loc 1 648 13 is_stmt 1
	.loc 1 648 20 is_stmt 0
	lw	a5,32(a3)
.LVL110:
	.loc 1 649 13 is_stmt 1
	.loc 1 650 27 is_stmt 0
	andi	a2,a2,255
.LVL111:
	.loc 1 649 20
	andi	a5,a5,-256
.LVL112:
	.loc 1 650 13 is_stmt 1
	.loc 1 650 20 is_stmt 0
	or	a2,a2,a5
.LVL113:
	.loc 1 651 13 is_stmt 1
	.loc 1 651 67 is_stmt 0
	sw	a2,32(a3)
	.loc 1 652 13 is_stmt 1
	j	.L102
.LVL114:
.L100:
	.loc 1 664 13
	.loc 1 664 20 is_stmt 0
	lw	a5,0(a3)
.LVL115:
	.loc 1 665 13 is_stmt 1
	.loc 1 665 16 is_stmt 0
	beq	a2,zero,.L87
	.loc 1 669 17 is_stmt 1
	.loc 1 669 24 is_stmt 0
	li	a4,4096
	addi	a4,a4,-2048
	or	a5,a5,a4
.LVL116:
	j	.L88
.L87:
	.loc 1 675 17 is_stmt 1
	.loc 1 675 24 is_stmt 0
	li	a4,-4096
	addi	a4,a4,2047
	and	a5,a5,a4
.LVL117:
	j	.L88
.LVL118:
.L67:
	.loc 1 689 13 is_stmt 1
	.loc 1 689 20 is_stmt 0
	lw	a5,12(a3)
.LVL119:
	.loc 1 690 13 is_stmt 1
	.loc 1 691 27 is_stmt 0
	andi	a2,a2,31
.LVL120:
	.loc 1 690 20
	andi	a5,a5,-32
.LVL121:
	.loc 1 691 13 is_stmt 1
	.loc 1 691 20 is_stmt 0
	or	a2,a2,a5
.LVL122:
	.loc 1 692 13 is_stmt 1
	.loc 1 692 66 is_stmt 0
	sw	a2,12(a3)
	.loc 1 694 13 is_stmt 1
	j	.L102
.LVL123:
.L79:
	.loc 1 700 13
	.loc 1 700 20 is_stmt 0
	li	a4,537198592
	lw	a5,20(a4)
.LVL124:
	.loc 1 701 13 is_stmt 1
	.loc 1 701 20 is_stmt 0
	ori	a5,a5,1
.LVL125:
	.loc 1 702 13 is_stmt 1
	.loc 1 702 69 is_stmt 0
	sw	a5,20(a4)
	.loc 1 703 13 is_stmt 1
	j	.L102
.LVL126:
.L77:
	.loc 1 719 13
	.loc 1 719 20 is_stmt 0
	li	a5,537198592
	lw	a4,0(a5)
.LVL127:
	.loc 1 720 13 is_stmt 1
	.loc 1 723 24 is_stmt 0
	andi	a5,a4,-3
	.loc 1 720 16
	beq	a2,zero,.L94
	.loc 1 721 17 is_stmt 1
	.loc 1 721 24 is_stmt 0
	ori	a5,a4,2
.LVL128:
	.loc 1 725 13 is_stmt 1
	j	.L94
.LVL129:
.L81:
	.loc 1 739 13
	.loc 1 739 20 is_stmt 0
	li	a5,537198592
	lw	a4,0(a5)
.LVL130:
	.loc 1 740 13 is_stmt 1
	.loc 1 743 24 is_stmt 0
	andi	a5,a4,-9
	.loc 1 740 16
	beq	a2,zero,.L94
	.loc 1 741 17 is_stmt 1
	.loc 1 741 24 is_stmt 0
	ori	a5,a4,8
.LVL131:
	j	.L94
	.cfi_endproc
.LFE16:
	.size	qcc74x_cam_feature_control, .-qcc74x_cam_feature_control
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_cam.h"
	.file 7 "./drivers/lhal/include/qcc74x_clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x635
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF64
	.byte	0xc
	.4byte	.LASF65
	.4byte	.LASF66
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x59
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x67
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0x6
	.4byte	0xd9
	.byte	0x7
	.byte	0x4
	.4byte	0xe0
	.byte	0x8
	.4byte	.LASF25
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x154
	.byte	0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0xe5
	.byte	0
	.byte	0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0x9b
	.byte	0x9
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0x9b
	.byte	0xa
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0x9b
	.byte	0xb
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0xd7
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF26
	.byte	0x18
	.byte	0x6
	.byte	0xd4
	.byte	0x8
	.4byte	0x1e4
	.byte	0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0xd5
	.byte	0xd
	.4byte	0x9b
	.byte	0
	.byte	0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0xd6
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0xd7
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0xd8
	.byte	0xe
	.4byte	0xa7
	.byte	0x6
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xd9
	.byte	0xe
	.4byte	0xb3
	.byte	0x8
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0xda
	.byte	0x9
	.4byte	0x1e9
	.byte	0xc
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xdb
	.byte	0xd
	.4byte	0x9b
	.byte	0xd
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0xdc
	.byte	0xd
	.4byte	0x9b
	.byte	0xe
	.byte	0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0xdd
	.byte	0xe
	.4byte	0xb3
	.byte	0x10
	.byte	0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0xde
	.byte	0xe
	.4byte	0xb3
	.byte	0x14
	.byte	0
	.byte	0x6
	.4byte	0x154
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF37
	.byte	0x8
	.4byte	.LASF38
	.byte	0x8
	.byte	0x6
	.byte	0xe1
	.byte	0x8
	.4byte	0x218
	.byte	0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0xe2
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0xe3
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0
	.byte	0xb
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x25b
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ae
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x25b
	.byte	0x38
	.4byte	0x2ae
	.4byte	.LLST21
	.byte	0xd
	.string	"cmd"
	.byte	0x1
	.2byte	0x25b
	.byte	0x41
	.4byte	0x88
	.byte	0x1
	.byte	0x5b
	.byte	0xc
	.string	"arg"
	.byte	0x1
	.2byte	0x25b
	.byte	0x4d
	.4byte	0xcb
	.4byte	.LLST22
	.byte	0xe
	.string	"ret"
	.byte	0x1
	.2byte	0x260
	.byte	0x9
	.4byte	0x88
	.byte	0
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x261
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5d
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x262
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST23
	.byte	0x11
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x2f0
	.byte	0x36
	.4byte	0x2b4
	.4byte	.LLST24
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xeb
	.byte	0x7
	.byte	0x4
	.4byte	0x1f0
	.byte	0xb
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x252
	.byte	0xa
	.4byte	0xb3
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e7
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x252
	.byte	0x3b
	.4byte	0x2ae
	.4byte	.LLST20
	.byte	0
	.byte	0xb
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x23c
	.byte	0xa
	.4byte	0xb3
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x332
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x23c
	.byte	0x3c
	.4byte	0x2ae
	.4byte	.LLST19
	.byte	0xd
	.string	"pic"
	.byte	0x1
	.2byte	0x23c
	.byte	0x4b
	.4byte	0x332
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x241
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x338
	.byte	0x7
	.byte	0x4
	.4byte	0x9b
	.byte	0xb
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x229
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x38d
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x229
	.byte	0x3c
	.4byte	0x2ae
	.4byte	.LLST16
	.byte	0x10
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x22e
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST17
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x22f
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST18
	.byte	0
	.byte	0x12
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x21a
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b4
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x21a
	.byte	0x37
	.4byte	0x2ae
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x12
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x20c
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x3fb
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x20c
	.byte	0x34
	.4byte	0x2ae
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x20c
	.byte	0x42
	.4byte	0xa7
	.4byte	.LLST15
	.byte	0x14
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x20c
	.byte	0x58
	.4byte	0xa7
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x12
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x202
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x442
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x202
	.byte	0x34
	.4byte	0x2ae
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x202
	.byte	0x42
	.4byte	0xa7
	.4byte	.LLST14
	.byte	0x14
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x202
	.byte	0x57
	.4byte	0xa7
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x12
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1f9
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x478
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x1f9
	.byte	0x33
	.4byte	0x2ae
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1f9
	.byte	0x41
	.4byte	0xb3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x12
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1de
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e1
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x1de
	.byte	0x32
	.4byte	0x2ae
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1de
	.byte	0x40
	.4byte	0xb3
	.4byte	.LLST11
	.byte	0x14
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x1de
	.byte	0x4e
	.4byte	0x1e9
	.byte	0x1
	.byte	0x5c
	.byte	0x10
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1e3
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST12
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1e4
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST13
	.byte	0
	.byte	0x12
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1cf
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x528
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x1cf
	.byte	0x2e
	.4byte	0x2ae
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1d4
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST10
	.byte	0xf
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1d5
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x12
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1c0
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x56f
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x1c0
	.byte	0x2f
	.4byte	0x2ae
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1c5
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST9
	.byte	0xf
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1c6
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x625
	.byte	0x16
	.string	"dev"
	.byte	0x1
	.byte	0x12
	.byte	0x2e
	.4byte	0x2ae
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LASF42
	.byte	0x1
	.byte	0x12
	.byte	0x55
	.4byte	0x625
	.4byte	.LLST1
	.byte	0x18
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1d
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST2
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x1e
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST3
	.byte	0x18
	.4byte	.LASF61
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x9b
	.4byte	.LLST4
	.byte	0x18
	.4byte	.LASF28
	.byte	0x1
	.byte	0x20
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST5
	.byte	0x18
	.4byte	.LASF29
	.byte	0x1
	.byte	0x20
	.byte	0x1c
	.4byte	0xa7
	.4byte	.LLST6
	.byte	0x18
	.4byte	.LASF62
	.byte	0x1
	.byte	0x21
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST7
	.byte	0x18
	.4byte	.LASF63
	.byte	0x1
	.byte	0x23
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST8
	.byte	0x19
	.4byte	.LVL10
	.4byte	0x62b
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1e4
	.byte	0x1b
	.4byte	.LASF67
	.4byte	.LASF67
	.byte	0x7
	.2byte	0x136
	.byte	0xa
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
	.byte	0xc
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0x1c
	.byte	0xb
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x18
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
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1b
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
.LLST21:
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
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL88
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL104
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL111
	.4byte	.LVL114
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL115
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL131
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL87
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL81
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x4f
	.byte	0x40
	.byte	0x24
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL78
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL76
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x4
	.byte	0x7b
	.byte	0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL73
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL72
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL68
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL64
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
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
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10-1
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL36
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL36
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0xf
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0xc
	.4byte	0xf4240
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x79
	.byte	0x8
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL36
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL60
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL4
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL36
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
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
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
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
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"user_data"
.LASF17:
	.string	"size_t"
.LASF16:
	.string	"uintptr_t"
.LASF4:
	.string	"__uint8_t"
.LASF65:
	.string	"./drivers/lhal/src/qcc74x_cam.c"
.LASF11:
	.string	"long long unsigned int"
.LASF22:
	.string	"sub_idx"
.LASF61:
	.string	"data_mode"
.LASF34:
	.string	"output_format"
.LASF38:
	.string	"qcc74x_cam_frame_filter_config_s"
.LASF10:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF56:
	.string	"qcc74x_cam_int_mask"
.LASF51:
	.string	"qcc74x_cam_crop_vsync"
.LASF67:
	.string	"qcc74x_clk_get_system_clock"
.LASF66:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/lhal"
.LASF7:
	.string	"long int"
.LASF54:
	.string	"qcc74x_cam_int_clear"
.LASF59:
	.string	"qcc74x_cam_start"
.LASF14:
	.string	"uint16_t"
.LASF31:
	.string	"pixel_clock"
.LASF8:
	.string	"__uint32_t"
.LASF26:
	.string	"qcc74x_cam_config_s"
.LASF0:
	.string	"unsigned int"
.LASF48:
	.string	"qcc74x_cam_crop_hsync"
.LASF9:
	.string	"long unsigned int"
.LASF19:
	.string	"name"
.LASF6:
	.string	"short unsigned int"
.LASF58:
	.string	"qcc74x_cam_stop"
.LASF49:
	.string	"start_pixel"
.LASF64:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF36:
	.string	"output_bufsize"
.LASF35:
	.string	"output_bufaddr"
.LASF39:
	.string	"frame_count"
.LASF50:
	.string	"end_pixel"
.LASF45:
	.string	"qcc74x_cam_get_frame_info"
.LASF44:
	.string	"qcc74x_cam_get_intstatus"
.LASF20:
	.string	"reg_base"
.LASF63:
	.string	"threshold"
.LASF32:
	.string	"with_mjpeg"
.LASF46:
	.string	"qcc74x_cam_get_frame_count"
.LASF37:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF33:
	.string	"input_source"
.LASF41:
	.string	"regval"
.LASF30:
	.string	"h_blank"
.LASF3:
	.string	"short int"
.LASF62:
	.string	"frame_size"
.LASF12:
	.string	"__uintptr_t"
.LASF55:
	.string	"int_type"
.LASF43:
	.string	"qcc74x_cam_feature_control"
.LASF15:
	.string	"uint32_t"
.LASF21:
	.string	"irq_num"
.LASF18:
	.string	"char"
.LASF42:
	.string	"config"
.LASF5:
	.string	"__uint16_t"
.LASF28:
	.string	"resolution_x"
.LASF29:
	.string	"resolution_y"
.LASF23:
	.string	"dev_type"
.LASF52:
	.string	"start_line"
.LASF60:
	.string	"qcc74x_cam_init"
.LASF25:
	.string	"qcc74x_device_s"
.LASF27:
	.string	"input_format"
.LASF57:
	.string	"mask"
.LASF13:
	.string	"uint8_t"
.LASF40:
	.string	"frame_valid"
.LASF47:
	.string	"qcc74x_cam_pop_one_frame"
.LASF53:
	.string	"end_line"
	.ident	"GCC: (GNU) 10.4.0"
