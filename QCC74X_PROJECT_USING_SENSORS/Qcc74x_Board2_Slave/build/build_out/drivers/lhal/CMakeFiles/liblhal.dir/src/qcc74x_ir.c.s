	.file	"qcc74x_ir.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_ir_rx_init,"ax",@progbits
	.align	1
	.globl	qcc74x_ir_rx_init
	.type	qcc74x_ir_rx_init, @function
qcc74x_ir_rx_init:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_ir.c"
	.loc 1 504 1
	.cfi_startproc
.LVL0:
	.loc 1 508 5
	.loc 1 509 5
	.loc 1 510 5
	.loc 1 511 5
	.loc 1 513 5
	.loc 1 504 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	mv	s1,a0
	.loc 1 513 9
	li	a1,0
.LVL1:
	li	a0,10
.LVL2:
	.loc 1 504 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 513 9
	call	qcc74x_clk_get_peripheral_clock
.LVL3:
	.loc 1 513 8
	beq	a0,zero,.L10
	.loc 1 514 9 is_stmt 1
	.loc 1 514 20 is_stmt 0
	li	a1,0
	li	a0,10
	call	qcc74x_clk_get_peripheral_clock
.LVL4:
.L2:
	.loc 1 519 5 is_stmt 1
	.loc 1 519 14 is_stmt 0
	lw	a4,4(s1)
.LVL5:
	.loc 1 520 5 is_stmt 1
	.loc 1 522 22 is_stmt 0
	lbu	a1,0(s0)
	.loc 1 520 12
	lw	a3,64(a4)
.LVL6:
	.loc 1 521 5 is_stmt 1
	.loc 1 521 12 is_stmt 0
	andi	a5,a3,-13
.LVL7:
	.loc 1 522 5 is_stmt 1
	.loc 1 522 39 is_stmt 0
	slli	a3,a1,2
	andi	a3,a3,12
	.loc 1 522 12
	or	a3,a3,a5
.LVL8:
	.loc 1 523 5 is_stmt 1
	.loc 1 523 8 is_stmt 0
	lbu	a5,1(s0)
	.loc 1 526 16
	andi	a2,a3,-3
	.loc 1 523 8
	beq	a5,zero,.L4
	.loc 1 524 9 is_stmt 1
	.loc 1 524 16 is_stmt 0
	ori	a2,a3,2
.LVL9:
.L4:
	.loc 1 528 5 is_stmt 1
	.loc 1 528 8 is_stmt 0
	lbu	a5,2(s0)
	bne	a5,zero,.L5
	.loc 1 529 9 is_stmt 1
	.loc 1 529 16 is_stmt 0
	andi	a5,a2,-17
.LVL10:
.L6:
	.loc 1 535 5 is_stmt 1
	.loc 1 535 59 is_stmt 0
	sw	a5,64(a4)
	.loc 1 537 5 is_stmt 1
	.loc 1 537 8 is_stmt 0
	bne	a1,zero,.L7
	.loc 1 538 9 is_stmt 1
	.loc 1 538 36 is_stmt 0
	li	a5,588
.LVL11:
	divu	a5,a0,a5
	.loc 1 539 35
	li	a3,222
	.loc 1 538 24
	addi	a5,a5,-1
	extu	a5,a5,15,0
.LVL12:
	.loc 1 539 9 is_stmt 1
.L13:
	.loc 1 542 35 is_stmt 0
	divu	a0,a0,a3
.LVL13:
	.loc 1 542 23
	addi	a0,a0,-1
	extu	a0,a0,15,0
.LVL14:
.L8:
	.loc 1 547 5 is_stmt 1
	.loc 1 548 28 is_stmt 0
	slli	a0,a0,16
.LVL15:
	.loc 1 548 37
	or	a0,a0,a5
	.loc 1 547 12
	lw	a3,72(a4)
.LVL16:
	.loc 1 548 5 is_stmt 1
	.loc 1 549 5
	.loc 1 549 59 is_stmt 0
	sw	a0,72(a4)
	.loc 1 552 5 is_stmt 1
	.loc 1 552 12 is_stmt 0
	addi	a4,a4,128
.LVL17:
	lw	a5,4(a4)
.LVL18:
	.loc 1 553 5 is_stmt 1
	.loc 1 553 12 is_stmt 0
	li	a3,-1056964608
	addi	a3,a3,-1
	and	a3,a5,a3
.LVL19:
	.loc 1 554 5 is_stmt 1
	.loc 1 554 21 is_stmt 0
	lhu	a5,8(s0)
	.loc 1 558 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL20:
	.loc 1 554 38
	slli	a5,a5,24
	.loc 1 554 12
	or	a5,a5,a3
.LVL21:
	.loc 1 555 5 is_stmt 1
	.loc 1 555 59 is_stmt 0
	sw	a5,4(a4)
	.loc 1 558 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL22:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL23:
.L10:
	.cfi_restore_state
	.loc 1 516 18
	li	a0,1998848
	addi	a0,a0,1152
	j	.L2
.LVL24:
.L5:
	.loc 1 531 9 is_stmt 1
	.loc 1 532 9
	.loc 1 533 9
	.loc 1 533 25 is_stmt 0
	lbu	a5,3(s0)
	li	a3,-4096
	addi	a3,a3,255
	.loc 1 533 40
	slli	a5,a5,8
	and	a2,a2,a3
.LVL25:
	or	a5,a5,a2
	.loc 1 533 16
	ori	a5,a5,16
.LVL26:
	j	.L6
.L7:
	.loc 1 540 12 is_stmt 1
	.loc 1 540 15 is_stmt 0
	li	a5,1
.LVL27:
	bne	a1,a5,.L9
	.loc 1 541 9 is_stmt 1
	.loc 1 541 36 is_stmt 0
	li	a5,750
	divu	a5,a0,a5
	.loc 1 542 35
	li	a3,400
	.loc 1 541 24
	addi	a5,a5,-1
	extu	a5,a5,15,0
.LVL28:
	.loc 1 542 9 is_stmt 1
	j	.L13
.LVL29:
.L9:
	.loc 1 544 9
	.loc 1 544 24 is_stmt 0
	lhu	a5,4(s0)
.LVL30:
	.loc 1 545 9 is_stmt 1
	.loc 1 545 23 is_stmt 0
	lhu	a0,6(s0)
.LVL31:
	j	.L8
	.cfi_endproc
.LFE5:
	.size	qcc74x_ir_rx_init, .-qcc74x_ir_rx_init
	.section	.text.qcc74x_ir_rx_enable,"ax",@progbits
	.align	1
	.globl	qcc74x_ir_rx_enable
	.type	qcc74x_ir_rx_enable, @function
qcc74x_ir_rx_enable:
.LFB8:
	.loc 1 633 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 637 5
	.loc 1 638 5
	.loc 1 640 5
	.loc 1 641 5
	.loc 1 641 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 641 12
	lw	a3,64(a5)
.LVL33:
	.loc 1 642 5 is_stmt 1
	.loc 1 645 16 is_stmt 0
	andi	a4,a3,-2
	.loc 1 642 8
	beq	a1,zero,.L16
	.loc 1 643 9 is_stmt 1
	.loc 1 643 16 is_stmt 0
	ori	a4,a3,1
.LVL34:
.L16:
	.loc 1 647 5 is_stmt 1
	.loc 1 647 59 is_stmt 0
	sw	a4,64(a5)
.LVL35:
	.loc 1 649 1
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_ir_rx_enable, .-qcc74x_ir_rx_enable
	.section	.text.qcc74x_ir_rxint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_ir_rxint_mask
	.type	qcc74x_ir_rxint_mask, @function
qcc74x_ir_rxint_mask:
.LFB9:
	.loc 1 652 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 656 5
	.loc 1 657 5
	.loc 1 659 5
	.loc 1 660 5
	.loc 1 660 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 662 36
	slli	a1,a1,8
.LVL37:
	andi	a1,a1,1792
	.loc 1 660 12
	lw	a5,68(a4)
.LVL38:
	.loc 1 661 5 is_stmt 1
	.loc 1 661 8 is_stmt 0
	beq	a2,zero,.L19
	.loc 1 662 9 is_stmt 1
	.loc 1 662 16 is_stmt 0
	or	a1,a1,a5
.LVL39:
.L20:
	.loc 1 666 5 is_stmt 1
	.loc 1 666 59 is_stmt 0
	sw	a1,68(a4)
.LVL40:
	.loc 1 668 1
	ret
.LVL41:
.L19:
	.loc 1 664 9 is_stmt 1
	.loc 1 664 19 is_stmt 0
	not	a1,a1
	.loc 1 664 16
	and	a1,a1,a5
.LVL42:
	j	.L20
	.cfi_endproc
.LFE9:
	.size	qcc74x_ir_rxint_mask, .-qcc74x_ir_rxint_mask
	.section	.text.qcc74x_ir_rxint_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_ir_rxint_clear
	.type	qcc74x_ir_rxint_clear, @function
qcc74x_ir_rxint_clear:
.LFB10:
	.loc 1 671 1 is_stmt 1
	.cfi_startproc
.LVL43:
	.loc 1 675 5
	.loc 1 676 5
	.loc 1 678 5
	.loc 1 679 5
	.loc 1 679 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 680 12
	li	a3,65536
	.loc 1 679 12
	lw	a5,68(a4)
.LVL44:
	.loc 1 680 5 is_stmt 1
	.loc 1 680 12 is_stmt 0
	or	a5,a5,a3
.LVL45:
	.loc 1 681 5 is_stmt 1
	.loc 1 681 59 is_stmt 0
	sw	a5,68(a4)
.LVL46:
	.loc 1 683 1
	ret
	.cfi_endproc
.LFE10:
	.size	qcc74x_ir_rxint_clear, .-qcc74x_ir_rxint_clear
	.section	.text.qcc74x_ir_get_rxint_status,"ax",@progbits
	.align	1
	.globl	qcc74x_ir_get_rxint_status
	.type	qcc74x_ir_get_rxint_status, @function
qcc74x_ir_get_rxint_status:
.LFB11:
	.loc 1 686 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 1 690 5
	.loc 1 692 5
	.loc 1 693 5
	.loc 1 693 57 is_stmt 0
	lw	a5,4(a0)
	.loc 1 693 68
	lw	a0,68(a5)
.LVL48:
	.loc 1 695 1
	andi	a0,a0,7
	ret
	.cfi_endproc
.LFE11:
	.size	qcc74x_ir_get_rxint_status, .-qcc74x_ir_get_rxint_status
	.section	.text.qcc74x_ir_receive,"ax",@progbits
	.align	1
	.globl	qcc74x_ir_receive
	.type	qcc74x_ir_receive, @function
qcc74x_ir_receive:
.LFB6:
	.loc 1 561 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 565 5
	.loc 1 566 5
	.loc 1 568 5
	.loc 1 561 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s2,16(sp)
	.cfi_offset 18, -16
	mv	s2,a0
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 561 1
	mv	s3,a1
	.loc 1 568 5
	call	qcc74x_ir_rxint_clear
.LVL50:
	.loc 1 570 5 is_stmt 1
	.loc 1 570 14 is_stmt 0
	lw	s0,4(s2)
.LVL51:
	.loc 1 571 5 is_stmt 1
	.loc 1 571 12 is_stmt 0
	lw	s1,64(s0)
.LVL52:
	.loc 1 572 5 is_stmt 1
	.loc 1 572 12 is_stmt 0
	ori	a5,s1,1
.LVL53:
	.loc 1 573 5 is_stmt 1
	.loc 1 573 59 is_stmt 0
	sw	a5,64(s0)
	.loc 1 575 5 is_stmt 1
.LVL54:
.L24:
	.loc 1 577 5 discriminator 1
	.loc 1 575 11 discriminator 1
	.loc 1 575 13 is_stmt 0 discriminator 1
	mv	a0,s2
	call	qcc74x_ir_get_rxint_status
.LVL55:
	.loc 1 575 45 discriminator 1
	andi	a0,a0,1
	.loc 1 575 11 discriminator 1
	beq	a0,zero,.L24
	.loc 1 579 5 is_stmt 1
	andi	s1,s1,-2
.LVL56:
	.loc 1 580 5
	.loc 1 582 5 is_stmt 0
	mv	a0,s2
	.loc 1 580 59
	sw	s1,64(s0)
	.loc 1 582 5 is_stmt 1
	call	qcc74x_ir_rxint_clear
.LVL57:
	.loc 1 584 5
	.loc 1 584 15 is_stmt 0
	lw	a0,80(s0)
	.loc 1 586 18
	lw	a4,84(s0)
	.loc 1 585 8
	li	a5,32
	.loc 1 584 12
	andi	a0,a0,127
.LVL58:
	.loc 1 585 5 is_stmt 1
	.loc 1 585 8 is_stmt 0
	bgtu	a0,a5,.L25
	.loc 1 586 9 is_stmt 1
	.loc 1 586 18 is_stmt 0
	li	a5,0
.L26:
	.loc 1 593 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL59:
	sw	a4,0(s3)
	sw	a5,4(s3)
	.loc 1 591 5 is_stmt 1
	.loc 1 593 1 is_stmt 0
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL60:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL61:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL62:
.L25:
	.cfi_restore_state
	.loc 1 588 9 is_stmt 1
	.loc 1 588 85 is_stmt 0
	lw	a5,88(s0)
	j	.L26
	.cfi_endproc
.LFE6:
	.size	qcc74x_ir_receive, .-qcc74x_ir_receive
	.section	.text.qcc74x_ir_get_rxfifo_cnt,"ax",@progbits
	.align	1
	.globl	qcc74x_ir_get_rxfifo_cnt
	.type	qcc74x_ir_get_rxfifo_cnt, @function
qcc74x_ir_get_rxfifo_cnt:
.LFB12:
	.loc 1 698 1 is_stmt 1
	.cfi_startproc
.LVL63:
	.loc 1 702 5
	.loc 1 704 5
	.loc 1 708 5
	.loc 1 708 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 708 15
	lw	a0,132(a5)
.LVL64:
	.loc 1 711 1
	extu	a0,a0,8+7-1,8
	ret
	.cfi_endproc
.LFE12:
	.size	qcc74x_ir_get_rxfifo_cnt, .-qcc74x_ir_get_rxfifo_cnt
	.section	.text.qcc74x_ir_swm_receive,"ax",@progbits
	.align	1
	.globl	qcc74x_ir_swm_receive
	.type	qcc74x_ir_swm_receive, @function
qcc74x_ir_swm_receive:
.LFB7:
	.loc 1 596 1 is_stmt 1
	.cfi_startproc
.LVL65:
	.loc 1 600 5
	.loc 1 601 5
	.loc 1 602 5
	.loc 1 604 5
	.loc 1 596 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.loc 1 596 1
	mv	s3,a1
	mv	s4,a2
	.loc 1 604 5
	call	qcc74x_ir_rxint_clear
.LVL66:
	.loc 1 606 5 is_stmt 1
	.loc 1 606 14 is_stmt 0
	lw	s0,4(s1)
.LVL67:
	.loc 1 607 5 is_stmt 1
	.loc 1 602 14 is_stmt 0
	li	s2,0
	.loc 1 607 12
	lw	a5,64(s0)
.LVL68:
	.loc 1 608 5 is_stmt 1
	.loc 1 608 12 is_stmt 0
	ori	a5,a5,1
.LVL69:
	.loc 1 609 5 is_stmt 1
	.loc 1 609 59 is_stmt 0
	sw	a5,64(s0)
	.loc 1 611 5 is_stmt 1
.LVL70:
.L32:
	.loc 1 611 11
	.loc 1 611 13 is_stmt 0
	mv	a0,s1
	call	qcc74x_ir_get_rxint_status
.LVL71:
	.loc 1 611 45
	andi	a0,a0,1
	.loc 1 611 11
	beq	a0,zero,.L34
	.loc 1 622 5 is_stmt 1
	.loc 1 622 12 is_stmt 0
	lw	a5,64(s0)
.LVL72:
	.loc 1 623 5 is_stmt 1
	.loc 1 626 5 is_stmt 0
	mv	a0,s1
	.loc 1 623 12
	andi	a5,a5,-2
.LVL73:
	.loc 1 624 5 is_stmt 1
	.loc 1 624 59 is_stmt 0
	sw	a5,64(s0)
	.loc 1 626 5 is_stmt 1
	call	qcc74x_ir_rxint_clear
.LVL74:
	.loc 1 628 5
	.loc 1 628 14 is_stmt 0
	lw	a0,80(s0)
	.loc 1 630 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL75:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL76:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL77:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL78:
	lw	s4,8(sp)
	.cfi_restore 20
	andi	a0,a0,127
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL79:
.L34:
	.cfi_restore_state
	.loc 1 612 9 is_stmt 1
	.loc 1 612 13 is_stmt 0
	mv	a0,s1
	call	qcc74x_ir_get_rxfifo_cnt
.LVL80:
	.loc 1 612 12
	beq	a0,zero,.L32
	.loc 1 612 48 discriminator 1
	bleu	s4,s2,.L32
	.loc 1 616 13 is_stmt 1
	.loc 1 616 24 is_stmt 0
	lw	a5,140(s0)
	.loc 1 616 21
	srh	a5,s3,s2,1
	.loc 1 618 13 is_stmt 1
	.loc 1 618 14 is_stmt 0
	addi	s2,s2,1
.LVL81:
	j	.L32
	.cfi_endproc
.LFE7:
	.size	qcc74x_ir_swm_receive, .-qcc74x_ir_swm_receive
	.section	.text.qcc74x_ir_rxfifo_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_ir_rxfifo_clear
	.type	qcc74x_ir_rxfifo_clear, @function
qcc74x_ir_rxfifo_clear:
.LFB13:
	.loc 1 714 1 is_stmt 1
	.cfi_startproc
.LVL82:
	.loc 1 718 5
	.loc 1 719 5
	.loc 1 721 5
	.loc 1 727 5
	.loc 1 727 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 727 12
	lw	a5,128(a4)
.LVL83:
	.loc 1 728 5 is_stmt 1
	.loc 1 728 12 is_stmt 0
	ori	a5,a5,8
.LVL84:
	.loc 1 729 5 is_stmt 1
	.loc 1 729 59 is_stmt 0
	sw	a5,128(a4)
.LVL85:
	.loc 1 732 1
	ret
	.cfi_endproc
.LFE13:
	.size	qcc74x_ir_rxfifo_clear, .-qcc74x_ir_rxfifo_clear
	.section	.text.qcc74x_ir_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_ir_feature_control
	.type	qcc74x_ir_feature_control, @function
qcc74x_ir_feature_control:
.LFB14:
	.loc 1 736 1 is_stmt 1
	.cfi_startproc
.LVL86:
	.loc 1 740 5
	.loc 1 745 5
	li	a5,3
	bne	a1,a5,.L42
	.loc 1 763 13
	.loc 1 763 68 is_stmt 0
	lw	a5,4(a0)
	.loc 1 763 20
	lw	a0,140(a5)
.LVL87:
	.loc 1 764 13 is_stmt 1
	ret
.LVL88:
.L42:
	.loc 1 768 17 is_stmt 0
	li	a0,-1
.LVL89:
	.loc 1 771 5 is_stmt 1
	.loc 1 773 1 is_stmt 0
	ret
	.cfi_endproc
.LFE14:
	.size	qcc74x_ir_feature_control, .-qcc74x_ir_feature_control
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_ir.h"
	.file 7 "./drivers/lhal/include/qcc74x_clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x649
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF55
	.byte	0xc
	.4byte	.LASF56
	.4byte	.LASF57
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x86
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
	.4byte	0xa0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x7a
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x94
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0xa0
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.byte	0x6
	.4byte	0xf1
	.byte	0x7
	.byte	0x4
	.4byte	0xf8
	.byte	0x8
	.4byte	.LASF27
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x16c
	.byte	0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0xfd
	.byte	0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xbf
	.byte	0x4
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0xa7
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0xa7
	.byte	0x9
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0xa7
	.byte	0xa
	.byte	0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0xa7
	.byte	0xb
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0xef
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF28
	.byte	0xa
	.byte	0x6
	.byte	0xb8
	.byte	0x8
	.4byte	0x1d5
	.byte	0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0xb9
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0xba
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xbb
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0xbc
	.byte	0xd
	.4byte	0xa7
	.byte	0x3
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xbd
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0xbe
	.byte	0xe
	.4byte	0xb3
	.byte	0x6
	.byte	0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0xbf
	.byte	0xe
	.4byte	0xb3
	.byte	0x8
	.byte	0
	.byte	0x6
	.4byte	0x16c
	.byte	0xb
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x2df
	.byte	0x5
	.4byte	0x8d
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x236
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x2df
	.byte	0x37
	.4byte	0x236
	.4byte	.LLST28
	.byte	0xd
	.string	"cmd"
	.byte	0x1
	.2byte	0x2df
	.byte	0x40
	.4byte	0x8d
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.string	"arg"
	.byte	0x1
	.2byte	0x2df
	.byte	0x4c
	.4byte	0xe3
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.string	"ret"
	.byte	0x1
	.2byte	0x2e4
	.byte	0x9
	.4byte	0x8d
	.4byte	.LLST29
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x103
	.byte	0xf
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x2c9
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x283
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x2c9
	.byte	0x35
	.4byte	0x236
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x2ce
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST27
	.byte	0x11
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x2cf
	.byte	0xe
	.4byte	0xbf
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xb
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x2b9
	.byte	0x9
	.4byte	0xa7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c1
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x2b9
	.byte	0x3a
	.4byte	0x236
	.4byte	.LLST19
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x2be
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST20
	.byte	0
	.byte	0xb
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x2ad
	.byte	0xa
	.4byte	0xbf
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ff
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x2ad
	.byte	0x3d
	.4byte	0x236
	.4byte	.LLST13
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x2b2
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST14
	.byte	0
	.byte	0xf
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x29e
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x346
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x29e
	.byte	0x34
	.4byte	0x236
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x2a3
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST12
	.byte	0x11
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x2a4
	.byte	0xe
	.4byte	0xbf
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xf
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x28b
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x3af
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x28b
	.byte	0x33
	.4byte	0x236
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x28b
	.byte	0x40
	.4byte	0xa7
	.4byte	.LLST9
	.byte	0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x28b
	.byte	0x4e
	.4byte	0x3af
	.byte	0x1
	.byte	0x5c
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x290
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST10
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x291
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST11
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF45
	.byte	0xf
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x278
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x40e
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x278
	.byte	0x32
	.4byte	0x236
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x278
	.byte	0x3b
	.4byte	0x3af
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x27d
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST7
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x27e
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST8
	.byte	0
	.byte	0xb
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x253
	.byte	0xa
	.4byte	0xb3
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x4da
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x253
	.byte	0x38
	.4byte	0x236
	.4byte	.LLST21
	.byte	0x12
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x253
	.byte	0x47
	.4byte	0x4da
	.4byte	.LLST22
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x253
	.byte	0x56
	.4byte	0xb3
	.4byte	.LLST23
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x258
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST24
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x259
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST25
	.byte	0xe
	.string	"i"
	.byte	0x1
	.2byte	0x25a
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST26
	.byte	0x14
	.4byte	.LVL66
	.4byte	0x2ff
	.4byte	0x4a1
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL71
	.4byte	0x2c1
	.4byte	0x4b5
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL74
	.4byte	0x2ff
	.4byte	0x4c9
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL80
	.4byte	0x283
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xb3
	.byte	0xb
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x230
	.byte	0xa
	.4byte	0xb3
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x578
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x230
	.byte	0x34
	.4byte	0x236
	.4byte	.LLST15
	.byte	0x12
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x230
	.byte	0x43
	.4byte	0x578
	.4byte	.LLST16
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x235
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST17
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x236
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST18
	.byte	0x14
	.4byte	.LVL50
	.4byte	0x2ff
	.4byte	0x553
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL55
	.4byte	0x2c1
	.4byte	0x567
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL57
	.4byte	0x2ff
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xcb
	.byte	0xf
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1f7
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x639
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x1f7
	.byte	0x30
	.4byte	0x236
	.4byte	.LLST0
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x1f7
	.byte	0x59
	.4byte	0x639
	.4byte	.LLST1
	.byte	0x10
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1fc
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1fd
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST3
	.byte	0x10
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1fe
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST4
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1ff
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST5
	.byte	0x10
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1ff
	.byte	0x1e
	.4byte	0xb3
	.4byte	.LLST6
	.byte	0x14
	.4byte	.LVL3
	.4byte	0x63f
	.4byte	0x624
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x16
	.4byte	.LVL4
	.4byte	0x63f
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1d5
	.byte	0x17
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x7
	.2byte	0x13f
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
	.byte	0x2
	.byte	0x17
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
	.byte	0x14
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
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST28:
	.4byte	.LVL86
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
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE14
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL85
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL64
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL48
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL43
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL46
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL40
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL42
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL35
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL34
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66-1
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66-1
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL65
	.4byte	.LVL66-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL66-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL67
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL79
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL72
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL65
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL79
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50-1
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50-1
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL51
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL58
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL20
	.4byte	.LVL23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL17
	.4byte	.LVL23
	.2byte	0x4
	.byte	0x7e
	.byte	0x80,0x7f
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x7e
	.byte	0xc0,0
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0xb
	.2byte	0xf0ff
	.byte	0x1a
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LFE5
	.2byte	0x3
	.byte	0x7e
	.byte	0xc0,0
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL30
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x64
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF26:
	.string	"user_data"
.LASF19:
	.string	"size_t"
.LASF18:
	.string	"uintptr_t"
.LASF17:
	.string	"uint64_t"
.LASF3:
	.string	"__uint8_t"
.LASF11:
	.string	"long long unsigned int"
.LASF24:
	.string	"sub_idx"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF57:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/lhal"
.LASF6:
	.string	"long int"
.LASF58:
	.string	"qcc74x_clk_get_peripheral_clock"
.LASF15:
	.string	"uint16_t"
.LASF7:
	.string	"__uint32_t"
.LASF44:
	.string	"mask"
.LASF30:
	.string	"input_inverse"
.LASF41:
	.string	"qcc74x_ir_rxint_clear"
.LASF13:
	.string	"unsigned int"
.LASF40:
	.string	"qcc74x_ir_rxfifo_clear"
.LASF51:
	.string	"qcc74x_ir_receive"
.LASF8:
	.string	"long unsigned int"
.LASF21:
	.string	"name"
.LASF49:
	.string	"data"
.LASF5:
	.string	"short unsigned int"
.LASF33:
	.string	"data_threshold"
.LASF55:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF37:
	.string	"qcc74x_ir_feature_control"
.LASF47:
	.string	"enable"
.LASF22:
	.string	"reg_base"
.LASF10:
	.string	"__uint64_t"
.LASF45:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF36:
	.string	"regval"
.LASF2:
	.string	"short int"
.LASF48:
	.string	"qcc74x_ir_swm_receive"
.LASF12:
	.string	"__uintptr_t"
.LASF43:
	.string	"int_type"
.LASF56:
	.string	"./drivers/lhal/src/qcc74x_ir.c"
.LASF29:
	.string	"rx_mode"
.LASF16:
	.string	"uint32_t"
.LASF23:
	.string	"irq_num"
.LASF38:
	.string	"qcc74x_ir_get_rxfifo_cnt"
.LASF50:
	.string	"length"
.LASF20:
	.string	"char"
.LASF53:
	.string	"config"
.LASF31:
	.string	"deglitch_enable"
.LASF4:
	.string	"__uint16_t"
.LASF42:
	.string	"qcc74x_ir_rxint_mask"
.LASF25:
	.string	"dev_type"
.LASF27:
	.string	"qcc74x_device_s"
.LASF39:
	.string	"qcc74x_ir_get_rxint_status"
.LASF34:
	.string	"end_threshold"
.LASF54:
	.string	"ir_clock"
.LASF46:
	.string	"qcc74x_ir_rx_enable"
.LASF14:
	.string	"uint8_t"
.LASF28:
	.string	"qcc74x_ir_rx_config_s"
.LASF52:
	.string	"qcc74x_ir_rx_init"
.LASF35:
	.string	"fifo_threshold"
.LASF32:
	.string	"deglitch_cnt"
	.ident	"GCC: (GNU) 10.4.0"
