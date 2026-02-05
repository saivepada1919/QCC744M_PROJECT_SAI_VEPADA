	.file	"ring_buffer.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Ring_Buffer_Write_Copy,"ax",@progbits
	.align	1
	.type	Ring_Buffer_Write_Copy, @function
Ring_Buffer_Write_Copy:
.LFB8:
	.file 1 "./components/utils/ring_buffer/ring_buffer.c"
	.loc 1 177 1
	.cfi_startproc
.LVL0:
	.loc 1 178 5
	.loc 1 177 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
.LVL1:
	.loc 1 180 5 is_stmt 1
	.loc 1 177 1 is_stmt 0
	mv	a0,a1
.LVL2:
	.loc 1 180 5
	lw	a1,0(s0)
.LVL3:
	.loc 1 177 1
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 177 1
	mv	s1,a2
	.loc 1 180 5
	call	arch_memcpy_fast
.LVL4:
	.loc 1 181 5 is_stmt 1
	.loc 1 181 10 is_stmt 0
	lw	a5,0(s0)
	.loc 1 182 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 181 10
	add	a5,a5,s1
	sw	a5,0(s0)
	.loc 1 182 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL5:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL6:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	Ring_Buffer_Write_Copy, .-Ring_Buffer_Write_Copy
	.section	.text.Ring_Buffer_Read_Copy,"ax",@progbits
	.align	1
	.type	Ring_Buffer_Read_Copy, @function
Ring_Buffer_Read_Copy:
.LFB14:
	.loc 1 412 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 413 5
	.loc 1 415 5
	.loc 1 412 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 415 5
	lw	a0,0(a0)
.LVL8:
	.loc 1 412 1
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 412 1
	mv	s1,a2
	.loc 1 415 5
	call	arch_memcpy_fast
.LVL9:
	.loc 1 416 5 is_stmt 1
	.loc 1 416 11 is_stmt 0
	lw	a5,0(s0)
	.loc 1 417 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 416 11
	add	a5,a5,s1
	sw	a5,0(s0)
	.loc 1 417 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL10:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL11:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	Ring_Buffer_Read_Copy, .-Ring_Buffer_Read_Copy
	.section	.text.Ring_Buffer_Init,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Init
	.type	Ring_Buffer_Init, @function
Ring_Buffer_Init:
.LFB5:
	.loc 1 64 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 66 5
	.loc 1 66 21 is_stmt 0
	sw	a1,0(a0)
	.loc 1 69 5 is_stmt 1
	.loc 1 69 24 is_stmt 0
	sb	zero,4(a0)
	.loc 1 70 5 is_stmt 1
	.loc 1 70 23 is_stmt 0
	sw	zero,8(a0)
	.loc 1 71 5 is_stmt 1
	.loc 1 71 25 is_stmt 0
	sb	zero,12(a0)
	.loc 1 72 5 is_stmt 1
	.loc 1 72 24 is_stmt 0
	sw	zero,16(a0)
	.loc 1 75 5 is_stmt 1
	.loc 1 75 18 is_stmt 0
	sw	a2,20(a0)
	.loc 1 78 5 is_stmt 1
	.loc 1 78 18 is_stmt 0
	sw	a3,24(a0)
	.loc 1 79 5 is_stmt 1
	.loc 1 79 20 is_stmt 0
	sw	a4,28(a0)
	.loc 1 80 1
	ret
	.cfi_endproc
.LFE5:
	.size	Ring_Buffer_Init, .-Ring_Buffer_Init
	.section	.text.Ring_Buffer_Reset,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Reset
	.type	Ring_Buffer_Reset, @function
Ring_Buffer_Reset:
.LFB6:
	.loc 1 91 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 92 5
	.loc 1 92 15 is_stmt 0
	lw	a5,24(a0)
	.loc 1 92 8
	beq	a5,zero,.L13
	.loc 1 91 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	sw	a0,12(sp)
	.loc 1 93 9 is_stmt 1
	jalr	a5
.LVL14:
	lw	a0,12(sp)
	.loc 1 97 5
	.loc 1 102 15 is_stmt 0
	lw	a5,28(a0)
	.loc 1 97 24
	sb	zero,4(a0)
	.loc 1 98 5 is_stmt 1
	.loc 1 98 23 is_stmt 0
	sw	zero,8(a0)
	.loc 1 99 5 is_stmt 1
	.loc 1 99 25 is_stmt 0
	sb	zero,12(a0)
	.loc 1 100 5 is_stmt 1
	.loc 1 100 24 is_stmt 0
	sw	zero,16(a0)
	.loc 1 102 5 is_stmt 1
	.loc 1 102 8 is_stmt 0
	beq	a5,zero,.L6
	.loc 1 103 9 is_stmt 1
	.loc 1 105 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL15:
.L18:
	.loc 1 103 9 is_stmt 1
	jr	a5
.LVL16:
.L6:
	.cfi_def_cfa_offset 32
	.cfi_offset 1, -4
	.loc 1 105 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL17:
	jr	ra
.LVL18:
.L13:
	.loc 1 97 5 is_stmt 1
	.loc 1 102 15 is_stmt 0
	lw	a5,28(a0)
	.loc 1 97 24
	sb	zero,4(a0)
	.loc 1 98 5 is_stmt 1
	.loc 1 98 23 is_stmt 0
	sw	zero,8(a0)
	.loc 1 99 5 is_stmt 1
	.loc 1 99 25 is_stmt 0
	sb	zero,12(a0)
	.loc 1 100 5 is_stmt 1
	.loc 1 100 24 is_stmt 0
	sw	zero,16(a0)
	.loc 1 102 5 is_stmt 1
	.loc 1 102 8 is_stmt 0
	bne	a5,zero,.L18
	ret
	.cfi_endproc
.LFE6:
	.size	Ring_Buffer_Reset, .-Ring_Buffer_Reset
	.section	.text.Ring_Buffer_Get_Length,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Get_Length
	.type	Ring_Buffer_Get_Length, @function
Ring_Buffer_Get_Length:
.LFB19:
	.loc 1 570 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 571 5
	.loc 1 572 5
	.loc 1 573 5
	.loc 1 574 5
	.loc 1 575 5
	.loc 1 577 5
	.loc 1 577 15 is_stmt 0
	lw	a5,24(a0)
	.loc 1 570 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 570 1
	mv	s0,a0
	.loc 1 577 8
	beq	a5,zero,.L20
	.loc 1 578 9 is_stmt 1
	jalr	a5
.LVL20:
.L20:
	.loc 1 581 5
	.loc 1 587 15 is_stmt 0
	lw	a5,28(s0)
	.loc 1 581 24
	lbu	s5,4(s0)
.LVL21:
	.loc 1 582 5 is_stmt 1
	.loc 1 582 25 is_stmt 0
	lbu	s4,12(s0)
.LVL22:
	.loc 1 583 5 is_stmt 1
	.loc 1 583 15 is_stmt 0
	lw	s1,8(s0)
.LVL23:
	.loc 1 584 5 is_stmt 1
	.loc 1 584 16 is_stmt 0
	lw	s2,16(s0)
.LVL24:
	.loc 1 585 5 is_stmt 1
	.loc 1 585 10 is_stmt 0
	lw	s3,20(s0)
.LVL25:
	.loc 1 587 5 is_stmt 1
	.loc 1 587 8 is_stmt 0
	beq	a5,zero,.L21
	.loc 1 588 9 is_stmt 1
	jalr	a5
.LVL26:
.L21:
	.loc 1 591 5
	.loc 1 592 27 is_stmt 0
	sub	a0,s2,s1
	.loc 1 591 8
	beq	s5,s4,.L19
	.loc 1 594 9 is_stmt 1
	.loc 1 594 21 is_stmt 0
	add	a0,s2,s3
	sub	a0,a0,s1
.L19:
	.loc 1 596 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL27:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL28:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL29:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL30:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL31:
	lw	s5,4(sp)
	.cfi_restore 21
.LVL32:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE19:
	.size	Ring_Buffer_Get_Length, .-Ring_Buffer_Get_Length
	.section	.text.Ring_Buffer_Read_Callback,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Read_Callback
	.type	Ring_Buffer_Read_Callback, @function
Ring_Buffer_Read_Callback:
.LFB13:
	.loc 1 354 1 is_stmt 1
	.cfi_startproc
.LVL33:
	.loc 1 355 5
	.loc 1 354 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s3,12(sp)
	.cfi_offset 19, -20
	mv	s3,a2
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.loc 1 354 1
	mv	s0,a0
	mv	s2,a1
	mv	s4,a3
	.loc 1 355 21
	call	Ring_Buffer_Get_Length
.LVL34:
	.loc 1 357 5 is_stmt 1
	.loc 1 357 8 is_stmt 0
	bne	s3,zero,.L32
.LVL35:
.L36:
	.loc 1 358 16
	li	s1,0
.LVL36:
.L31:
	.loc 1 399 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL37:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL38:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL39:
	lw	s5,4(sp)
	.cfi_restore 21
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL40:
.L32:
	.cfi_restore_state
	.loc 1 361 15
	lw	a5,24(s0)
	mv	s1,a0
	.loc 1 361 5 is_stmt 1
	.loc 1 361 8 is_stmt 0
	beq	a5,zero,.L34
.LVL41:
	.loc 1 362 9 is_stmt 1
	jalr	a5
.LVL42:
.L34:
	.loc 1 366 5
	.loc 1 366 8 is_stmt 0
	bne	s1,zero,.L35
	.loc 1 367 9 is_stmt 1
	.loc 1 367 19 is_stmt 0
	lw	a5,28(s0)
	.loc 1 367 12
	beq	a5,zero,.L36
.LVL43:
.L50:
	.loc 1 395 9 is_stmt 1
	jalr	a5
.LVL44:
	j	.L31
.LVL45:
.L35:
	.loc 1 375 5
	sgtu	a5,s1,s2
	.loc 1 380 18 is_stmt 0
	lw	s5,20(s0)
	mvnez	s1, s2, a5
.LVL46:
	.loc 1 380 5 is_stmt 1
	.loc 1 380 33 is_stmt 0
	lw	s2,8(s0)
	.loc 1 384 9
	lw	a1,0(s0)
	.loc 1 380 10
	sub	a2,s5,s2
.LVL47:
	.loc 1 382 5 is_stmt 1
	.loc 1 384 9 is_stmt 0
	add	a1,a1,s2
	.loc 1 382 8
	bgeu	s1,a2,.L38
	.loc 1 384 9 is_stmt 1
	mv	a2,s1
.LVL48:
	mv	a0,s4
	jalr	s3
.LVL49:
	.loc 1 385 9
	.loc 1 385 27 is_stmt 0
	lw	a5,8(s0)
	add	a5,a5,s1
	sw	a5,8(s0)
.LVL50:
.L39:
	.loc 1 394 5 is_stmt 1
	.loc 1 394 15 is_stmt 0
	lw	a5,28(s0)
	.loc 1 394 8
	bne	a5,zero,.L50
	j	.L31
.LVL51:
.L38:
	.loc 1 388 9 is_stmt 1
	mv	a0,s4
	jalr	s3
.LVL52:
	.loc 1 389 9
	lw	a1,0(s0)
	sub	s2,s2,s5
.LVL53:
	add	s2,s2,s1
	mv	a2,s2
	mv	a0,s4
	jalr	s3
.LVL54:
	.loc 1 390 9
	.loc 1 391 28 is_stmt 0
	lbu	a5,4(s0)
	.loc 1 390 27
	sw	s2,8(s0)
	.loc 1 391 9 is_stmt 1
	.loc 1 391 28 is_stmt 0
	not	a5,a5
	sb	a5,4(s0)
	j	.L39
	.cfi_endproc
.LFE13:
	.size	Ring_Buffer_Read_Callback, .-Ring_Buffer_Read_Callback
	.section	.text.Ring_Buffer_Read,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Read
	.type	Ring_Buffer_Read, @function
Ring_Buffer_Read:
.LFB15:
	.loc 1 430 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 431 5
	.loc 1 430 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a1,12(sp)
	mv	a1,a2
.LVL56:
	.loc 1 431 12
	lui	a2,%hi(Ring_Buffer_Read_Copy)
.LVL57:
	addi	a3,sp,12
.LVL58:
	addi	a2,a2,%lo(Ring_Buffer_Read_Copy)
	.loc 1 430 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 431 12
	call	Ring_Buffer_Read_Callback
.LVL59:
	.loc 1 432 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	Ring_Buffer_Read, .-Ring_Buffer_Read
	.section	.text.Ring_Buffer_Read_Byte,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Read_Byte
	.type	Ring_Buffer_Read_Byte, @function
Ring_Buffer_Read_Byte:
.LFB16:
	.loc 1 444 1 is_stmt 1
	.cfi_startproc
.LVL60:
	.loc 1 445 5
	.loc 1 445 15 is_stmt 0
	lw	a5,24(a0)
	.loc 1 444 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 444 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 445 8
	beq	a5,zero,.L54
	.loc 1 446 9 is_stmt 1
	jalr	a5
.LVL61:
.L54:
	.loc 1 450 5
	.loc 1 450 10 is_stmt 0
	mv	a0,s0
	call	Ring_Buffer_Get_Length
.LVL62:
	.loc 1 450 8
	bne	a0,zero,.L55
	.loc 1 451 9 is_stmt 1
	.loc 1 451 19 is_stmt 0
	lw	a5,28(s0)
	.loc 1 451 12
	beq	a5,zero,.L53
	sw	a0,12(sp)
	.loc 1 452 13 is_stmt 1
	jalr	a5
.LVL63:
	lw	a0,12(sp)
.L53:
	.loc 1 474 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL64:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL65:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL66:
.L55:
	.cfi_restore_state
	.loc 1 459 5 is_stmt 1
	.loc 1 459 28 is_stmt 0
	lw	a4,0(s0)
	lw	a5,8(s0)
	lrbu	a5,a4,a5,0
	.loc 1 459 11
	sb	a5,0(s1)
	.loc 1 462 5 is_stmt 1
	.loc 1 462 43 is_stmt 0
	lw	a4,20(s0)
	.loc 1 462 15
	lw	a5,8(s0)
	.loc 1 462 43
	addi	a4,a4,-1
	.loc 1 462 8
	bne	a5,a4,.L57
	.loc 1 463 9 is_stmt 1
	.loc 1 464 28 is_stmt 0
	lbu	a5,4(s0)
	.loc 1 463 27
	sw	zero,8(s0)
	.loc 1 464 9 is_stmt 1
	.loc 1 464 28 is_stmt 0
	not	a5,a5
	sb	a5,4(s0)
.L58:
	.loc 1 469 5 is_stmt 1
	.loc 1 469 15 is_stmt 0
	lw	a5,28(s0)
	.loc 1 473 12
	li	a0,1
	.loc 1 469 8
	beq	a5,zero,.L53
	.loc 1 470 9 is_stmt 1
	jalr	a5
.LVL67:
	.loc 1 473 12 is_stmt 0
	li	a0,1
	j	.L53
.L57:
	.loc 1 466 9 is_stmt 1
	.loc 1 466 26 is_stmt 0
	addi	a5,a5,1
	sw	a5,8(s0)
	j	.L58
	.cfi_endproc
.LFE16:
	.size	Ring_Buffer_Read_Byte, .-Ring_Buffer_Read_Byte
	.section	.text.Ring_Buffer_Peek,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Peek
	.type	Ring_Buffer_Peek, @function
Ring_Buffer_Peek:
.LFB17:
	.loc 1 487 1 is_stmt 1
	.cfi_startproc
.LVL68:
	.loc 1 488 5
	.loc 1 487 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	mv	s1,a0
	sw	ra,28(sp)
	sw	s3,12(sp)
	sw	s5,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.loc 1 487 1
	mv	s4,a1
	mv	s2,a2
	.loc 1 488 21
	call	Ring_Buffer_Get_Length
.LVL69:
	.loc 1 490 15
	lw	a5,24(s1)
	.loc 1 488 21
	mv	s0,a0
.LVL70:
	.loc 1 490 5 is_stmt 1
	.loc 1 490 8 is_stmt 0
	beq	a5,zero,.L68
	.loc 1 491 9 is_stmt 1
	jalr	a5
.LVL71:
.L68:
	.loc 1 495 5
	.loc 1 495 8 is_stmt 0
	bne	s0,zero,.L69
.LVL72:
.L87:
	.loc 1 520 5 is_stmt 1
	.loc 1 520 15 is_stmt 0
	lw	a5,28(s1)
	.loc 1 520 8
	beq	a5,zero,.L67
	.loc 1 521 9 is_stmt 1
	jalr	a5
.LVL73:
.L67:
	.loc 1 525 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	mv	a0,s0
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL74:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
.LVL75:
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL76:
.L69:
	.cfi_restore_state
	.loc 1 504 5 is_stmt 1
	sgtu	a5,s0,s2
	.loc 1 509 18 is_stmt 0
	lw	s5,20(s1)
	mvnez	s0, s2, a5
.LVL77:
	.loc 1 509 5 is_stmt 1
	.loc 1 509 33 is_stmt 0
	lw	s2,8(s1)
	.loc 1 513 32
	lw	a1,0(s1)
	.loc 1 509 10
	sub	s3,s5,s2
.LVL78:
	.loc 1 511 5 is_stmt 1
	.loc 1 513 32 is_stmt 0
	add	a1,a1,s2
	.loc 1 511 8
	bgeu	s0,s3,.L72
	.loc 1 513 9 is_stmt 1
	mv	a2,s0
	mv	a0,s4
.L84:
	.loc 1 517 9 is_stmt 0
	call	arch_memcpy_fast
.LVL79:
	j	.L87
.L72:
	.loc 1 516 9 is_stmt 1
	mv	a2,s3
	mv	a0,s4
	call	arch_memcpy_fast
.LVL80:
	.loc 1 517 9
	sub	a2,s2,s5
	lw	a1,0(s1)
	add	a2,a2,s0
	add	a0,s4,s3
	j	.L84
	.cfi_endproc
.LFE17:
	.size	Ring_Buffer_Peek, .-Ring_Buffer_Peek
	.section	.text.Ring_Buffer_Peek_Byte,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Peek_Byte
	.type	Ring_Buffer_Peek_Byte, @function
Ring_Buffer_Peek_Byte:
.LFB18:
	.loc 1 537 1
	.cfi_startproc
.LVL81:
	.loc 1 538 5
	.loc 1 538 15 is_stmt 0
	lw	a5,24(a0)
	.loc 1 537 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 537 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 538 8
	beq	a5,zero,.L89
	.loc 1 539 9 is_stmt 1
	jalr	a5
.LVL82:
.L89:
	.loc 1 543 5
	.loc 1 543 10 is_stmt 0
	mv	a0,s0
	call	Ring_Buffer_Get_Length
.LVL83:
	.loc 1 543 8
	bne	a0,zero,.L90
	.loc 1 544 9 is_stmt 1
	.loc 1 544 19 is_stmt 0
	lw	a5,28(s0)
	.loc 1 544 12
	beq	a5,zero,.L88
	sw	a0,12(sp)
	.loc 1 545 13 is_stmt 1
	jalr	a5
.LVL84:
	lw	a0,12(sp)
.L88:
	.loc 1 559 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL85:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL86:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL87:
.L90:
	.cfi_restore_state
	.loc 1 552 5 is_stmt 1
	.loc 1 552 28 is_stmt 0
	lw	a4,0(s0)
	lw	a5,8(s0)
	.loc 1 558 12
	li	a0,1
	.loc 1 552 28
	lrbu	a5,a4,a5,0
	.loc 1 552 11
	sb	a5,0(s1)
	.loc 1 554 5 is_stmt 1
	.loc 1 554 15 is_stmt 0
	lw	a5,28(s0)
	.loc 1 554 8
	beq	a5,zero,.L88
	.loc 1 555 9 is_stmt 1
	jalr	a5
.LVL88:
	.loc 1 558 12 is_stmt 0
	li	a0,1
	j	.L88
	.cfi_endproc
.LFE18:
	.size	Ring_Buffer_Peek_Byte, .-Ring_Buffer_Peek_Byte
	.section	.text.Ring_Buffer_Get_Empty_Length,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Get_Empty_Length
	.type	Ring_Buffer_Get_Empty_Length, @function
Ring_Buffer_Get_Empty_Length:
.LFB20:
	.loc 1 607 1 is_stmt 1
	.cfi_startproc
.LVL89:
	.loc 1 608 5
	.loc 1 607 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 608 19
	lw	s0,20(a0)
	.loc 1 607 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 608 28
	call	Ring_Buffer_Get_Length
.LVL90:
	.loc 1 609 1
	lw	ra,12(sp)
	.cfi_restore 1
	sub	a0,s0,a0
	lw	s0,8(sp)
	.cfi_restore 8
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE20:
	.size	Ring_Buffer_Get_Empty_Length, .-Ring_Buffer_Get_Empty_Length
	.section	.text.Ring_Buffer_Write_Callback,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Callback
	.type	Ring_Buffer_Write_Callback, @function
Ring_Buffer_Write_Callback:
.LFB7:
	.loc 1 119 1 is_stmt 1
	.cfi_startproc
.LVL91:
	.loc 1 120 5
	.loc 1 119 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s3,12(sp)
	.cfi_offset 19, -20
	mv	s3,a2
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s5,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 21, -28
	.loc 1 119 1
	mv	s0,a0
	mv	s2,a1
	mv	s4,a3
	.loc 1 120 29
	call	Ring_Buffer_Get_Empty_Length
.LVL92:
	.loc 1 122 5 is_stmt 1
	.loc 1 122 8 is_stmt 0
	bne	s3,zero,.L103
.LVL93:
.L107:
	.loc 1 123 16
	li	s1,0
.LVL94:
.L102:
	.loc 1 164 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL95:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL96:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL97:
	lw	s5,4(sp)
	.cfi_restore 21
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL98:
.L103:
	.cfi_restore_state
	.loc 1 126 15
	lw	a5,24(s0)
	mv	s1,a0
	.loc 1 126 5 is_stmt 1
	.loc 1 126 8 is_stmt 0
	beq	a5,zero,.L105
.LVL99:
	.loc 1 127 9 is_stmt 1
	jalr	a5
.LVL100:
.L105:
	.loc 1 131 5
	.loc 1 131 8 is_stmt 0
	bne	s1,zero,.L106
	.loc 1 132 9 is_stmt 1
	.loc 1 132 19 is_stmt 0
	lw	a5,28(s0)
	.loc 1 132 12
	beq	a5,zero,.L107
.LVL101:
.L121:
	.loc 1 160 9 is_stmt 1
	jalr	a5
.LVL102:
	j	.L102
.LVL103:
.L106:
	.loc 1 140 5
	sgtu	a5,s1,s2
	.loc 1 145 26 is_stmt 0
	lw	s5,20(s0)
	mvnez	s1, s2, a5
.LVL104:
	.loc 1 145 5 is_stmt 1
	.loc 1 145 41 is_stmt 0
	lw	s2,16(s0)
	.loc 1 149 9
	lw	a1,0(s0)
	.loc 1 145 18
	sub	a2,s5,s2
.LVL105:
	.loc 1 147 5 is_stmt 1
	.loc 1 149 9 is_stmt 0
	add	a1,a1,s2
	.loc 1 147 8
	bgeu	s1,a2,.L109
	.loc 1 149 9 is_stmt 1
	mv	a2,s1
.LVL106:
	mv	a0,s4
	jalr	s3
.LVL107:
	.loc 1 150 9
	.loc 1 150 28 is_stmt 0
	lw	a5,16(s0)
	add	a5,a5,s1
	sw	a5,16(s0)
.LVL108:
.L110:
	.loc 1 159 5 is_stmt 1
	.loc 1 159 15 is_stmt 0
	lw	a5,28(s0)
	.loc 1 159 8
	bne	a5,zero,.L121
	j	.L102
.LVL109:
.L109:
	.loc 1 153 9 is_stmt 1
	mv	a0,s4
	jalr	s3
.LVL110:
	.loc 1 154 9
	lw	a1,0(s0)
	sub	s2,s2,s5
.LVL111:
	add	s2,s2,s1
	mv	a2,s2
	mv	a0,s4
	jalr	s3
.LVL112:
	.loc 1 155 9
	.loc 1 156 29 is_stmt 0
	lbu	a5,12(s0)
	.loc 1 155 28
	sw	s2,16(s0)
	.loc 1 156 9 is_stmt 1
	.loc 1 156 29 is_stmt 0
	not	a5,a5
	sb	a5,12(s0)
	j	.L110
	.cfi_endproc
.LFE7:
	.size	Ring_Buffer_Write_Callback, .-Ring_Buffer_Write_Callback
	.section	.text.Ring_Buffer_Write,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write
	.type	Ring_Buffer_Write, @function
Ring_Buffer_Write:
.LFB9:
	.loc 1 195 1 is_stmt 1
	.cfi_startproc
.LVL113:
	.loc 1 196 5
	.loc 1 195 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	a1,12(sp)
	mv	a1,a2
.LVL114:
	.loc 1 196 12
	lui	a2,%hi(Ring_Buffer_Write_Copy)
.LVL115:
	addi	a3,sp,12
.LVL116:
	addi	a2,a2,%lo(Ring_Buffer_Write_Copy)
	.loc 1 195 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 196 12
	call	Ring_Buffer_Write_Callback
.LVL117:
	.loc 1 197 1
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	Ring_Buffer_Write, .-Ring_Buffer_Write
	.section	.text.Ring_Buffer_Write_Byte,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Byte
	.type	Ring_Buffer_Write_Byte, @function
Ring_Buffer_Write_Byte:
.LFB10:
	.loc 1 209 1 is_stmt 1
	.cfi_startproc
.LVL118:
	.loc 1 210 5
	.loc 1 210 15 is_stmt 0
	lw	a5,24(a0)
	.loc 1 209 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 209 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 210 8
	beq	a5,zero,.L125
	.loc 1 211 9 is_stmt 1
	jalr	a5
.LVL119:
.L125:
	.loc 1 215 5
	.loc 1 215 10 is_stmt 0
	mv	a0,s0
	call	Ring_Buffer_Get_Empty_Length
.LVL120:
	.loc 1 215 8
	bne	a0,zero,.L126
	.loc 1 216 9 is_stmt 1
	.loc 1 216 19 is_stmt 0
	lw	a5,28(s0)
	.loc 1 216 12
	beq	a5,zero,.L124
	sw	a0,12(sp)
	.loc 1 217 13 is_stmt 1
	jalr	a5
.LVL121:
	lw	a0,12(sp)
.L124:
	.loc 1 238 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL122:
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL123:
.L126:
	.cfi_restore_state
	.loc 1 223 5 is_stmt 1
	.loc 1 223 41 is_stmt 0
	lw	a4,0(s0)
	lw	a5,16(s0)
	srb	s1,a4,a5,0
	.loc 1 226 5 is_stmt 1
	.loc 1 226 45 is_stmt 0
	lw	a4,20(s0)
	.loc 1 226 15
	lw	a5,16(s0)
	.loc 1 226 45
	addi	a4,a4,-1
	.loc 1 226 8
	beq	a5,a4,.L128
	.loc 1 227 9 is_stmt 1
	.loc 1 227 27 is_stmt 0
	addi	a5,a5,1
	sw	a5,16(s0)
.L129:
	.loc 1 233 5 is_stmt 1
	.loc 1 233 15 is_stmt 0
	lw	a5,28(s0)
	.loc 1 237 12
	li	a0,1
	.loc 1 233 8
	beq	a5,zero,.L124
	.loc 1 234 9 is_stmt 1
	jalr	a5
.LVL124:
	.loc 1 237 12 is_stmt 0
	li	a0,1
	j	.L124
.L128:
	.loc 1 229 9 is_stmt 1
	.loc 1 230 29 is_stmt 0
	lbu	a5,12(s0)
	.loc 1 229 28
	sw	zero,16(s0)
	.loc 1 230 9 is_stmt 1
	.loc 1 230 29 is_stmt 0
	not	a5,a5
	sb	a5,12(s0)
	j	.L129
	.cfi_endproc
.LFE10:
	.size	Ring_Buffer_Write_Byte, .-Ring_Buffer_Write_Byte
	.section	.text.Ring_Buffer_Write_Force,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Force
	.type	Ring_Buffer_Write_Force, @function
Ring_Buffer_Write_Force:
.LFB11:
	.loc 1 252 1 is_stmt 1
	.cfi_startproc
.LVL125:
	.loc 1 253 5
	.loc 1 252 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	sw	ra,28(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.loc 1 252 1
	mv	s3,a1
	mv	s1,a2
	.loc 1 253 29
	call	Ring_Buffer_Get_Empty_Length
.LVL126:
	.loc 1 256 15
	lw	a5,24(s0)
	.loc 1 254 36
	lw	s6,20(s0)
	.loc 1 254 51
	lw	s2,16(s0)
	.loc 1 253 29
	mv	s4,a0
.LVL127:
	.loc 1 254 5 is_stmt 1
	.loc 1 254 14 is_stmt 0
	sub	s5,s6,s2
.LVL128:
	.loc 1 256 5 is_stmt 1
	.loc 1 256 8 is_stmt 0
	beq	a5,zero,.L139
	.loc 1 257 9 is_stmt 1
	jalr	a5
.LVL129:
.L139:
	.loc 1 261 5
	.loc 1 261 24 is_stmt 0
	lw	a5,20(s0)
	.loc 1 261 8
	bgeu	a5,s1,.L140
	.loc 1 262 9 is_stmt 1
	.loc 1 262 29 is_stmt 0
	sub	s1,s1,a5
.LVL130:
	.loc 1 262 14
	add	s3,s3,s1
.LVL131:
	.loc 1 263 9 is_stmt 1
	.loc 1 262 14 is_stmt 0
	mv	s1,a5
.LVL132:
.L140:
	.loc 1 266 5 is_stmt 1
	.loc 1 268 26 is_stmt 0
	lw	a0,0(s0)
	lw	a5,16(s0)
	add	a0,a0,a5
	.loc 1 266 8
	bgeu	s1,s5,.L141
	.loc 1 268 9 is_stmt 1
	mv	a2,s1
	mv	a1,s3
	call	arch_memcpy_fast
.LVL133:
	.loc 1 269 9
	.loc 1 269 28 is_stmt 0
	lw	a5,16(s0)
	add	a5,s1,a5
	sw	a5,16(s0)
	.loc 1 272 9 is_stmt 1
	.loc 1 272 12 is_stmt 0
	bleu	s1,s4,.L143
	.loc 1 273 13 is_stmt 1
	.loc 1 273 31 is_stmt 0
	sw	a5,8(s0)
.L143:
	.loc 1 289 5 is_stmt 1
	.loc 1 289 15 is_stmt 0
	lw	a5,28(s0)
	.loc 1 289 8
	beq	a5,zero,.L145
	.loc 1 290 9 is_stmt 1
	jalr	a5
.LVL134:
.L145:
	.loc 1 293 5
	.loc 1 294 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL135:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
.LVL136:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL137:
	lw	s5,4(sp)
	.cfi_restore 21
.LVL138:
	lw	s6,0(sp)
	.cfi_restore 22
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL139:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL140:
.L141:
	.cfi_restore_state
	.loc 1 277 9 is_stmt 1
	mv	a2,s5
	mv	a1,s3
	call	arch_memcpy_fast
.LVL141:
	.loc 1 278 9
	lw	a0,0(s0)
	sub	s2,s2,s6
	add	s2,s2,s1
	mv	a2,s2
	add	a1,s3,s5
	call	arch_memcpy_fast
.LVL142:
	.loc 1 279 9
	.loc 1 280 29 is_stmt 0
	lbu	a5,12(s0)
	.loc 1 279 28
	sw	s2,16(s0)
	.loc 1 280 9 is_stmt 1
	.loc 1 280 29 is_stmt 0
	not	a5,a5
	sb	a5,12(s0)
	.loc 1 283 9 is_stmt 1
	.loc 1 283 12 is_stmt 0
	bleu	s1,s4,.L143
	.loc 1 284 13 is_stmt 1
	.loc 1 285 32 is_stmt 0
	lbu	a5,4(s0)
	.loc 1 284 31
	sw	s2,8(s0)
	.loc 1 285 13 is_stmt 1
	.loc 1 285 32 is_stmt 0
	not	a5,a5
	sb	a5,4(s0)
	j	.L143
	.cfi_endproc
.LFE11:
	.size	Ring_Buffer_Write_Force, .-Ring_Buffer_Write_Force
	.section	.text.Ring_Buffer_Get_Status,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Get_Status
	.type	Ring_Buffer_Get_Status, @function
Ring_Buffer_Get_Status:
.LFB21:
	.loc 1 620 1 is_stmt 1
	.cfi_startproc
.LVL143:
	.loc 1 621 5
	.loc 1 621 15 is_stmt 0
	lw	a5,24(a0)
	.loc 1 620 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 621 8
	beq	a5,zero,.L154
	sw	a0,12(sp)
	.loc 1 622 9 is_stmt 1
	jalr	a5
.LVL144:
	lw	a0,12(sp)
.LVL145:
.L154:
	.loc 1 626 5
	.loc 1 626 8 is_stmt 0
	lw	a3,8(a0)
	lw	a4,16(a0)
.LBB4:
.LBB5:
	.loc 1 628 23
	lw	a5,28(a0)
.LBE5:
.LBE4:
	.loc 1 626 8
	bne	a3,a4,.L155
.LVL146:
.LBB8:
.LBB6:
	.loc 1 627 9 is_stmt 1
	.loc 1 627 12 is_stmt 0
	lbu	a3,4(a0)
	lbu	a4,12(a0)
	bne	a3,a4,.L156
	.loc 1 628 13 is_stmt 1
	.loc 1 632 20 is_stmt 0
	li	a0,0
.LVL147:
	.loc 1 628 16
	beq	a5,zero,.L157
	.loc 1 629 17 is_stmt 1
	jalr	a5
.LVL148:
	.loc 1 632 20 is_stmt 0
	li	a0,0
.L157:
.LBE6:
.LBE8:
	.loc 1 647 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL149:
.L156:
	.cfi_restore_state
.LBB9:
.LBB7:
	.loc 1 634 13 is_stmt 1
	.loc 1 638 20 is_stmt 0
	li	a0,2
.LVL150:
	.loc 1 634 16
	beq	a5,zero,.L157
	.loc 1 635 17 is_stmt 1
	jalr	a5
.LVL151:
	.loc 1 638 20 is_stmt 0
	li	a0,2
	j	.L157
.L155:
.LBE7:
.LBE9:
	.loc 1 642 5 is_stmt 1
	.loc 1 646 12 is_stmt 0
	li	a0,1
	.loc 1 642 8
	beq	a5,zero,.L157
	.loc 1 643 9 is_stmt 1
	jalr	a5
.LVL152:
	.loc 1 646 12 is_stmt 0
	li	a0,1
	j	.L157
	.cfi_endproc
.LFE21:
	.size	Ring_Buffer_Get_Status, .-Ring_Buffer_Get_Status
	.section	.text.Ring_Buffer_Write_Byte_Force,"ax",@progbits
	.align	1
	.globl	Ring_Buffer_Write_Byte_Force
	.type	Ring_Buffer_Write_Byte_Force, @function
Ring_Buffer_Write_Byte_Force:
.LFB12:
	.loc 1 307 1 is_stmt 1
	.cfi_startproc
.LVL153:
	.loc 1 308 5
	.loc 1 307 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a0
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 307 1
	mv	s1,a1
	.loc 1 308 38
	call	Ring_Buffer_Get_Status
.LVL154:
	.loc 1 310 5 is_stmt 1
	.loc 1 310 15 is_stmt 0
	lw	a5,24(s0)
	.loc 1 310 8
	beq	a5,zero,.L166
	sw	a0,12(sp)
	.loc 1 311 9 is_stmt 1
	jalr	a5
.LVL155:
	lw	a0,12(sp)
.L166:
	.loc 1 314 5
	.loc 1 314 41 is_stmt 0
	lw	a4,0(s0)
	lw	a5,16(s0)
	srb	s1,a4,a5,0
	.loc 1 317 5 is_stmt 1
	.loc 1 317 44 is_stmt 0
	lw	a4,20(s0)
	.loc 1 317 15
	lw	a5,16(s0)
	.loc 1 317 44
	addi	a4,a4,-1
	.loc 1 317 8
	bne	a5,a4,.L167
	.loc 1 318 9 is_stmt 1
	.loc 1 319 29 is_stmt 0
	lbu	a5,12(s0)
	.loc 1 318 28
	sw	zero,16(s0)
	.loc 1 319 9 is_stmt 1
	.loc 1 319 29 is_stmt 0
	not	a5,a5
	sb	a5,12(s0)
	.loc 1 322 9 is_stmt 1
	.loc 1 322 12 is_stmt 0
	li	a5,2
	bne	a0,a5,.L169
	.loc 1 323 13 is_stmt 1
	.loc 1 324 32 is_stmt 0
	lbu	a5,4(s0)
	.loc 1 323 31
	sw	zero,8(s0)
	.loc 1 324 13 is_stmt 1
	.loc 1 324 32 is_stmt 0
	not	a5,a5
	sb	a5,4(s0)
.L169:
	.loc 1 335 5 is_stmt 1
	.loc 1 335 15 is_stmt 0
	lw	a5,28(s0)
	.loc 1 335 8
	beq	a5,zero,.L171
	.loc 1 336 9 is_stmt 1
	jalr	a5
.LVL156:
.L171:
	.loc 1 339 5
	.loc 1 340 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL157:
	lw	s1,20(sp)
	.cfi_restore 9
	li	a0,1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL158:
.L167:
	.cfi_restore_state
	.loc 1 327 9 is_stmt 1
	.loc 1 327 27 is_stmt 0
	addi	a5,a5,1
	sw	a5,16(s0)
	.loc 1 330 9 is_stmt 1
	.loc 1 330 12 is_stmt 0
	li	a4,2
	bne	a0,a4,.L169
	.loc 1 331 13 is_stmt 1
	.loc 1 331 31 is_stmt 0
	sw	a5,8(s0)
	j	.L169
	.cfi_endproc
.LFE12:
	.size	Ring_Buffer_Write_Byte_Force, .-Ring_Buffer_Write_Byte_Force
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./components/utils/ring_buffer/ring_buffer.h"
	.file 5 "./drivers/lhal/include/qcc74x_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x945
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF57
	.byte	0xc
	.4byte	.LASF58
	.4byte	.LASF59
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
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x5
	.4byte	0x83
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x6
	.byte	0x4
	.byte	0x7
	.byte	0x4
	.4byte	0xa8
	.byte	0x8
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x9
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x4
	.byte	0x15
	.byte	0xe
	.4byte	0xd1
	.byte	0xa
	.4byte	.LASF14
	.byte	0
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0xa
	.4byte	.LASF16
	.byte	0x2
	.byte	0
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x19
	.byte	0x3
	.4byte	0xb0
	.byte	0xb
	.byte	0x20
	.byte	0x4
	.byte	0x1e
	.byte	0x9
	.4byte	0x14f
	.byte	0xc
	.4byte	.LASF18
	.byte	0x4
	.byte	0x20
	.byte	0xe
	.4byte	0x14f
	.byte	0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x4
	.byte	0x21
	.byte	0xd
	.4byte	0x83
	.byte	0x4
	.byte	0xc
	.4byte	.LASF20
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x94
	.byte	0x8
	.byte	0xc
	.4byte	.LASF21
	.byte	0x4
	.byte	0x23
	.byte	0xd
	.4byte	0x83
	.byte	0xc
	.byte	0xc
	.4byte	.LASF22
	.byte	0x4
	.byte	0x24
	.byte	0xe
	.4byte	0x94
	.byte	0x10
	.byte	0xc
	.4byte	.LASF23
	.byte	0x4
	.byte	0x25
	.byte	0xe
	.4byte	0x94
	.byte	0x14
	.byte	0xc
	.4byte	.LASF24
	.byte	0x4
	.byte	0x26
	.byte	0xc
	.4byte	0xa2
	.byte	0x18
	.byte	0xc
	.4byte	.LASF25
	.byte	0x4
	.byte	0x27
	.byte	0xc
	.4byte	0xa2
	.byte	0x1c
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x83
	.byte	0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0x28
	.byte	0x3
	.4byte	0xdd
	.byte	0x3
	.4byte	.LASF27
	.byte	0x4
	.byte	0x3c
	.byte	0xe
	.4byte	0xa8
	.byte	0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0x3d
	.byte	0xe
	.4byte	0x179
	.byte	0xd
	.4byte	0x18e
	.byte	0xe
	.4byte	0xa0
	.byte	0xe
	.4byte	0x14f
	.byte	0xe
	.4byte	0x94
	.byte	0
	.byte	0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x3e
	.byte	0xe
	.4byte	0x179
	.byte	0xf
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x26b
	.byte	0x19
	.4byte	0xd1
	.byte	0x1
	.4byte	0x1ba
	.byte	0x10
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x26b
	.byte	0x42
	.4byte	0x1ba
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x155
	.byte	0x11
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x25e
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fe
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x25e
	.byte	0x39
	.4byte	0x1ba
	.4byte	.LLST31
	.byte	0x13
	.4byte	.LVL90
	.4byte	0x1fe
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x239
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x280
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x239
	.byte	0x33
	.4byte	0x1ba
	.4byte	.LLST9
	.byte	0x16
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x23b
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST10
	.byte	0x16
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x23c
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST11
	.byte	0x16
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x23d
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST12
	.byte	0x16
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x23e
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST13
	.byte	0x16
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x23f
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST14
	.byte	0
	.byte	0x15
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x218
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ce
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x218
	.byte	0x32
	.4byte	0x1ba
	.4byte	.LLST29
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x218
	.byte	0x43
	.4byte	0x14f
	.4byte	.LLST30
	.byte	0x13
	.4byte	.LVL83
	.4byte	0x1fe
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1e6
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x361
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1e6
	.byte	0x2d
	.4byte	0x1ba
	.4byte	.LLST25
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1e6
	.byte	0x3e
	.4byte	0x14f
	.4byte	.LLST26
	.byte	0x12
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1e6
	.byte	0x4d
	.4byte	0x94
	.4byte	.LLST27
	.byte	0x16
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x1e8
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST28
	.byte	0x17
	.4byte	.LVL69
	.4byte	0x1fe
	.4byte	0x341
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL79
	.4byte	0x93c
	.byte	0x13
	.4byte	.LVL80
	.4byte	0x93c
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x1bb
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x3af
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1bb
	.byte	0x32
	.4byte	0x1ba
	.4byte	.LLST23
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1bb
	.byte	0x43
	.4byte	0x14f
	.4byte	.LLST24
	.byte	0x13
	.4byte	.LVL62
	.4byte	0x1fe
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x1ad
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x425
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1ad
	.byte	0x2d
	.4byte	0x1ba
	.4byte	.LLST20
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1ad
	.byte	0x3e
	.4byte	0x14f
	.4byte	.LLST21
	.byte	0x12
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1ad
	.byte	0x4d
	.4byte	0x94
	.4byte	.LLST22
	.byte	0x13
	.4byte	.LVL59
	.4byte	0x49e
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	Ring_Buffer_Read_Copy
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x19b
	.byte	0xd
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x498
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x19b
	.byte	0x29
	.4byte	0xa0
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x19b
	.byte	0x3d
	.4byte	0x14f
	.4byte	.LLST5
	.byte	0x12
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x19b
	.byte	0x4c
	.4byte	0x94
	.4byte	.LLST6
	.byte	0x16
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x19d
	.byte	0xf
	.4byte	0x498
	.4byte	.LLST7
	.byte	0x13
	.4byte	.LVL9
	.4byte	0x93c
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x14f
	.byte	0x15
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x161
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x55b
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x161
	.byte	0x36
	.4byte	0x1ba
	.4byte	.LLST15
	.byte	0x12
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x161
	.byte	0x47
	.4byte	0x94
	.4byte	.LLST16
	.byte	0x12
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x161
	.byte	0x69
	.4byte	0x55b
	.4byte	.LLST17
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x161
	.byte	0x77
	.4byte	0xa0
	.4byte	.LLST18
	.byte	0x16
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x163
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST19
	.byte	0x17
	.4byte	.LVL34
	.4byte	0x1fe
	.4byte	0x522
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL49
	.4byte	0x538
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL52
	.4byte	0x548
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL54
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x16d
	.byte	0x15
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x132
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x5c0
	.byte	0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x132
	.byte	0x39
	.4byte	0x1ba
	.4byte	.LLST49
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x132
	.byte	0x4f
	.4byte	0x8f
	.4byte	.LLST50
	.byte	0x16
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x134
	.byte	0x1d
	.4byte	0xd1
	.4byte	.LLST51
	.byte	0x13
	.4byte	.LVL154
	.4byte	0x19a
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF45
	.byte	0x1
	.byte	0xfb
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x68c
	.byte	0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0xfb
	.byte	0x34
	.4byte	0x1ba
	.4byte	.LLST42
	.byte	0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0xfb
	.byte	0x4b
	.4byte	0x68c
	.4byte	.LLST43
	.byte	0x1d
	.4byte	.LASF36
	.byte	0x1
	.byte	0xfb
	.byte	0x5a
	.4byte	0x94
	.4byte	.LLST44
	.byte	0x1e
	.4byte	.LASF46
	.byte	0x1
	.byte	0xfd
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST45
	.byte	0x1e
	.4byte	.LASF47
	.byte	0x1
	.byte	0xfe
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST46
	.byte	0x17
	.4byte	.LVL126
	.4byte	0x1c0
	.4byte	0x63e
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL133
	.4byte	0x93c
	.4byte	0x658
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL141
	.4byte	0x93c
	.4byte	0x672
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LVL142
	.4byte	0x93c
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x83
	.byte	0
	.byte	0x85
	.byte	0
	.byte	0x22
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x8f
	.byte	0x1c
	.4byte	.LASF48
	.byte	0x1
	.byte	0xd0
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x6dd
	.byte	0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0xd0
	.byte	0x33
	.4byte	0x1ba
	.4byte	.LLST40
	.byte	0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0xd0
	.byte	0x49
	.4byte	0x8f
	.4byte	.LLST41
	.byte	0x13
	.4byte	.LVL120
	.4byte	0x1c0
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF49
	.byte	0x1
	.byte	0xc2
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x74f
	.byte	0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0xc2
	.byte	0x2e
	.4byte	0x1ba
	.4byte	.LLST37
	.byte	0x1d
	.4byte	.LASF34
	.byte	0x1
	.byte	0xc2
	.byte	0x45
	.4byte	0x68c
	.4byte	.LLST38
	.byte	0x1d
	.4byte	.LASF36
	.byte	0x1
	.byte	0xc2
	.byte	0x54
	.4byte	0x94
	.4byte	.LLST39
	.byte	0x13
	.4byte	.LVL117
	.4byte	0x7bd
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	Ring_Buffer_Write_Copy
	.byte	0x14
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF51
	.byte	0x1
	.byte	0xb0
	.byte	0xd
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x7bd
	.byte	0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0xb0
	.byte	0x2a
	.4byte	0xa0
	.4byte	.LLST0
	.byte	0x1d
	.4byte	.LASF40
	.byte	0x1
	.byte	0xb0
	.byte	0x3e
	.4byte	0x14f
	.4byte	.LLST1
	.byte	0x1d
	.4byte	.LASF36
	.byte	0x1
	.byte	0xb0
	.byte	0x4d
	.4byte	0x94
	.4byte	.LLST2
	.byte	0x21
	.string	"src"
	.byte	0x1
	.byte	0xb2
	.byte	0xf
	.4byte	0x498
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LVL4
	.4byte	0x93c
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LASF52
	.byte	0x1
	.byte	0x76
	.byte	0xa
	.4byte	0x94
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x874
	.byte	0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0x76
	.byte	0x37
	.4byte	0x1ba
	.4byte	.LLST32
	.byte	0x1d
	.4byte	.LASF36
	.byte	0x1
	.byte	0x76
	.byte	0x48
	.4byte	0x94
	.4byte	.LLST33
	.byte	0x1d
	.4byte	.LASF53
	.byte	0x1
	.byte	0x76
	.byte	0x6b
	.4byte	0x874
	.4byte	.LLST34
	.byte	0x1d
	.4byte	.LASF39
	.byte	0x1
	.byte	0x76
	.byte	0x7a
	.4byte	0xa0
	.4byte	.LLST35
	.byte	0x1e
	.4byte	.LASF46
	.byte	0x1
	.byte	0x78
	.byte	0xe
	.4byte	0x94
	.4byte	.LLST36
	.byte	0x17
	.4byte	.LVL92
	.4byte	0x1c0
	.4byte	0x83b
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL107
	.4byte	0x851
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL110
	.4byte	0x861
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL112
	.byte	0x14
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x18e
	.byte	0x22
	.4byte	.LASF61
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x8a1
	.byte	0x1d
	.4byte	.LASF32
	.byte	0x1
	.byte	0x5a
	.byte	0x2a
	.4byte	0x1ba
	.4byte	.LLST8
	.byte	0
	.byte	0x23
	.4byte	.LASF62
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x8fe
	.byte	0x24
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3f
	.byte	0x29
	.4byte	0x1ba
	.byte	0x1
	.byte	0x5a
	.byte	0x24
	.4byte	.LASF54
	.byte	0x1
	.byte	0x3f
	.byte	0x3a
	.4byte	0x14f
	.byte	0x1
	.byte	0x5b
	.byte	0x24
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3f
	.byte	0x4b
	.4byte	0x94
	.byte	0x1
	.byte	0x5c
	.byte	0x24
	.4byte	.LASF55
	.byte	0x1
	.byte	0x3f
	.byte	0x6b
	.4byte	0x8fe
	.byte	0x1
	.byte	0x5d
	.byte	0x24
	.4byte	.LASF56
	.byte	0x1
	.byte	0x3f
	.byte	0x8d
	.4byte	0x8fe
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x161
	.byte	0x25
	.4byte	0x19a
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x93c
	.byte	0x26
	.4byte	0x1ac
	.4byte	.LLST47
	.byte	0x27
	.4byte	0x19a
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x26b
	.byte	0x19
	.byte	0x26
	.4byte	0x1ac
	.4byte	.LLST48
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x5
	.byte	0x44
	.byte	0x7
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x4
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
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
	.byte	0xd
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x12
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
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
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
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
	.byte	0x40
	.byte	0x18
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x20
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
	.byte	0x97,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
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
	.byte	0x23
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x28
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
.LLST31:
	.4byte	.LVL89
	.4byte	.LVL90-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90-1
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20-1
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL32
	.2byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x84
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL19
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL19
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82-1
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL82-1
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69-1
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL69-1
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL76
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL68
	.4byte	.LVL69-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL69-1
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL77
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61-1
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL60
	.4byte	.LVL61-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL61-1
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL55
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL57
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL59-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL9-1
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL10
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34-1
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL37
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34-1
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL46
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34-1
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL34-1
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52-1
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL153
	.4byte	.LVL154-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL154-1
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL153
	.4byte	.LVL154-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL154-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL154
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126-1
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL135
	.4byte	.LVL140
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL140
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL126-1
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL140
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL126-1
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL132
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL127
	.4byte	.LVL129-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL129-1
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL140
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL128
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL140
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL118
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119-1
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL118
	.4byte	.LVL119-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL119-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL113
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL117-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL114
	.4byte	.LVL116
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL116
	.4byte	.LVL117-1
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL115
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL117-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL4-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92-1
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL92-1
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL98
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL104
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL92-1
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL91
	.4byte	.LVL92-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL92-1
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL110-1
	.4byte	.LVL111
	.2byte	0x6
	.byte	0x85
	.byte	0
	.byte	0x82
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL18
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL143
	.4byte	.LVL144-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144-1
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL145
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x9c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF35:
	.string	"Ring_Buffer_Peek"
.LASF5:
	.string	"__uint8_t"
.LASF55:
	.string	"lockCb"
.LASF48:
	.string	"Ring_Buffer_Write_Byte"
.LASF51:
	.string	"Ring_Buffer_Write_Copy"
.LASF9:
	.string	"long long unsigned int"
.LASF27:
	.string	"ringBuffer_Lock_Callback"
.LASF33:
	.string	"Ring_Buffer_Peek_Byte"
.LASF18:
	.string	"pointer"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF4:
	.string	"long int"
.LASF41:
	.string	"Ring_Buffer_Read_Callback"
.LASF28:
	.string	"ringBuffer_Read_Callback"
.LASF17:
	.string	"Ring_Buffer_Status_Type"
.LASF54:
	.string	"buffer"
.LASF38:
	.string	"Ring_Buffer_Read"
.LASF31:
	.string	"Ring_Buffer_Get_Length"
.LASF59:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/utils"
.LASF6:
	.string	"__uint32_t"
.LASF32:
	.string	"rbType"
.LASF21:
	.string	"writeMirror"
.LASF56:
	.string	"unlockCb"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long unsigned int"
.LASF60:
	.string	"Ring_Buffer_Get_Status"
.LASF34:
	.string	"data"
.LASF23:
	.string	"size"
.LASF3:
	.string	"short unsigned int"
.LASF26:
	.string	"Ring_Buffer_Type"
.LASF63:
	.string	"arch_memcpy_fast"
.LASF14:
	.string	"RING_BUFFER_EMPTY"
.LASF30:
	.string	"Ring_Buffer_Get_Empty_Length"
.LASF57:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF40:
	.string	"dest"
.LASF37:
	.string	"Ring_Buffer_Read_Byte"
.LASF42:
	.string	"readCb"
.LASF61:
	.string	"Ring_Buffer_Reset"
.LASF1:
	.string	"unsigned char"
.LASF45:
	.string	"Ring_Buffer_Write_Force"
.LASF2:
	.string	"short int"
.LASF58:
	.string	"./components/utils/ring_buffer/ring_buffer.c"
.LASF43:
	.string	"Ring_Buffer_Write_Byte_Force"
.LASF62:
	.string	"Ring_Buffer_Init"
.LASF15:
	.string	"RING_BUFFER_PARTIAL"
.LASF12:
	.string	"uint32_t"
.LASF36:
	.string	"length"
.LASF16:
	.string	"RING_BUFFER_FULL"
.LASF13:
	.string	"char"
.LASF50:
	.string	"Ring_Buffer_Read_Copy"
.LASF29:
	.string	"ringBuffer_Write_Callback"
.LASF20:
	.string	"readIndex"
.LASF39:
	.string	"parameter"
.LASF22:
	.string	"writeIndex"
.LASF46:
	.string	"sizeRemained"
.LASF19:
	.string	"readMirror"
.LASF52:
	.string	"Ring_Buffer_Write_Callback"
.LASF44:
	.string	"status"
.LASF11:
	.string	"uint8_t"
.LASF53:
	.string	"writeCb"
.LASF47:
	.string	"indexRemained"
.LASF25:
	.string	"unlock"
.LASF24:
	.string	"lock"
.LASF49:
	.string	"Ring_Buffer_Write"
	.ident	"GCC: (GNU) 10.4.0"
