	.file	"qcc74x_ef_ctrl.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c232,"ax",@progbits
	.align	1
	.type	qcc74x_ef_ctrl_program_efuse_r0.constprop.0, @function
qcc74x_ef_ctrl_program_efuse_r0.constprop.0:
.LFB21:
	.file 1 "./drivers/lhal/src/qcc74x_ef_ctrl.c"
	.loc 1 232 120
	.cfi_startproc
.LVL0:
	.loc 1 234 5
	.loc 1 237 5
	.loc 1 249 5
	.loc 1 232 120 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 249 74
	li	a5,2408448
	.loc 1 232 120
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 249 74
	li	s1,537227264
	addi	a5,a5,-256
	.loc 1 264 74
	li	s0,2473984
	.loc 1 249 74
	sw	a5,-2048(s1)
	.loc 1 252 5 is_stmt 1
.LVL1:
	.loc 1 264 5
	.loc 1 264 74 is_stmt 0
	addi	a5,s0,-248
	sw	a5,-2048(s1)
	.loc 1 267 5 is_stmt 1
	li	a0,4
	call	arch_delay_us
.LVL2:
	.loc 1 270 5
	.loc 1 282 5
	.loc 1 282 74 is_stmt 0
	addi	s0,s0,-232
	sw	s0,-2048(s1)
	.loc 1 283 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE21:
	.size	qcc74x_ef_ctrl_program_efuse_r0.constprop.0, .-qcc74x_ef_ctrl_program_efuse_r0.constprop.0
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c79,"ax",@progbits
	.align	1
	.globl	qcc74x_ef_ctrl_busy
	.type	qcc74x_ef_ctrl_busy, @function
qcc74x_ef_ctrl_busy:
.LFB6:
	.loc 1 80 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 84 5
	.loc 1 86 5
	.loc 1 86 13 is_stmt 0
	li	a5,537227264
	lw	a0,-2048(a5)
.LVL4:
	.loc 1 88 5 is_stmt 1
	.loc 1 94 1 is_stmt 0
	extu	a0,a0,2+1-1,2
.LVL5:
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_ef_ctrl_busy, .-qcc74x_ef_ctrl_busy
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c146,"ax",@progbits
	.align	1
	.type	qcc74x_ef_ctrl_switch_ahb_clk_r0, @function
qcc74x_ef_ctrl_switch_ahb_clk_r0:
.LFB8:
	.loc 1 147 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 148 5
	.loc 1 149 5
	.loc 1 151 5
	.loc 1 147 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 151 11
	li	s0,159744
	.loc 1 147 1
	sw	s1,4(sp)
	sw	s2,0(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.loc 1 147 1
	mv	s2,a0
	.loc 1 151 11
	addi	s0,s0,256
	li	s1,1
.LVL7:
.L5:
	.loc 1 151 11 is_stmt 1
	.loc 1 151 12 is_stmt 0
	mv	a0,s2
	call	qcc74x_ef_ctrl_busy
.LVL8:
	.loc 1 151 11
	bne	a0,s1,.L6
	.loc 1 152 9 is_stmt 1
.LVL9:
	.loc 1 153 9
	.loc 1 153 12 is_stmt 0
	addi	s0,s0,-1
.LVL10:
	bne	s0,zero,.L5
.L6:
	.loc 1 158 5 is_stmt 1
.LVL11:
	.loc 1 170 5
	.loc 1 174 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
.LVL12:
	.loc 1 170 74
	li	a5,2408448
	.loc 1 174 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
.LVL13:
	.loc 1 170 74
	li	a4,537227264
	addi	a5,a5,-256
	sw	a5,-2048(a4)
	.loc 1 173 5 is_stmt 1
	.loc 1 174 1 is_stmt 0
	.loc 1 173 5
	li	a0,4
	.loc 1 174 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 173 5
	tail	arch_delay_us
.LVL14:
	.cfi_endproc
.LFE8:
	.size	qcc74x_ef_ctrl_switch_ahb_clk_r0, .-qcc74x_ef_ctrl_switch_ahb_clk_r0
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c412,"ax",@progbits
	.align	1
	.type	qcc74x_ef_ctrl_load_efuse_r0, @function
qcc74x_ef_ctrl_load_efuse_r0:
.LFB11:
	.loc 1 413 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 414 5
	.loc 1 415 5
	.loc 1 417 5
.LBB13:
.LBB14:
	.loc 1 368 5
	.loc 1 369 5
	.loc 1 372 5
.LBE14:
.LBE13:
	.loc 1 413 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB16:
.LBB15:
	.loc 1 372 5
	call	qcc74x_ef_ctrl_switch_ahb_clk_r0
.LVL16:
	.loc 1 375 5 is_stmt 1
	.loc 1 375 17
	.loc 1 372 5 is_stmt 0
	li	a5,537223168
	.loc 1 375 5
	addi	a4,a5,512
.LVL17:
.L13:
	.loc 1 376 9 is_stmt 1
	.loc 1 376 25 is_stmt 0
	swia	zero,(a5),4,0
	.loc 1 375 30 is_stmt 1
	.loc 1 375 17
	.loc 1 375 5 is_stmt 0
	bne	a5,a4,.L13
.LVL18:
.LBE15:
.LBE16:
	.loc 1 420 5 is_stmt 1
	.loc 1 432 5
	.loc 1 432 74 is_stmt 0
	li	a5,2408448
	addi	a3,a5,-256
	li	a4,537227264
	sw	a3,-2048(a4)
	.loc 1 434 5 is_stmt 1
.LVL19:
	.loc 1 446 5
	.loc 1 446 74 is_stmt 0
	addi	a5,a5,-240
	sw	a5,-2048(a4)
	.loc 1 448 5 is_stmt 1
	li	a0,10
	call	arch_delay_us
.LVL20:
	li	a5,159744
	addi	a5,a5,256
	.loc 1 452 17 is_stmt 0
	li	a2,537227264
	.loc 1 458 5
	li	a3,2
.LVL21:
.L15:
	.loc 1 451 5 is_stmt 1
	.loc 1 452 9
	.loc 1 452 17 is_stmt 0
	lw	a4,-2048(a2)
.LVL22:
	.loc 1 453 9 is_stmt 1
	.loc 1 455 9
	.loc 1 455 12 is_stmt 0
	addi	a5,a5,-1
.LVL23:
	beq	a5,zero,.L14
.LVL24:
	.loc 1 458 13 is_stmt 1
	.loc 1 458 55 is_stmt 0
	andi	a4,a4,6
.LVL25:
	.loc 1 458 5
	bne	a4,a3,.L15
.LVL26:
.L14:
	.loc 1 461 5 is_stmt 1
	.loc 1 473 5
	.loc 1 474 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 473 74
	li	a5,2408448
	li	a4,537227264
	addi	a5,a5,-256
	sw	a5,-2048(a4)
	.loc 1 474 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	qcc74x_ef_ctrl_load_efuse_r0, .-qcc74x_ef_ctrl_load_efuse_r0
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c567,"ax",@progbits
	.align	1
	.globl	qcc74x_ef_ctrl_autoload_done
	.type	qcc74x_ef_ctrl_autoload_done, @function
qcc74x_ef_ctrl_autoload_done:
.LFB12:
	.loc 1 568 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 572 5
	.loc 1 579 5
	.loc 1 568 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 579 5
	call	qcc74x_ef_ctrl_switch_ahb_clk_r0
.LVL28:
	.loc 1 581 5 is_stmt 1
	.loc 1 581 13 is_stmt 0
	li	a5,537227264
	lw	a0,-2048(a5)
.LVL29:
	.loc 1 583 5 is_stmt 1
	.loc 1 589 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	extu	a0,a0,1+1-1,1
.LVL30:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE12:
	.size	qcc74x_ef_ctrl_autoload_done, .-qcc74x_ef_ctrl_autoload_done
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c599,"ax",@progbits
	.align	1
	.globl	qcc74x_ef_ctrl_set_para
	.type	qcc74x_ef_ctrl_set_para, @function
qcc74x_ef_ctrl_set_para:
.LFB13:
	.loc 1 600 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 604 5
	.loc 1 607 5
	.loc 1 600 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 607 5
	li	a0,0
.LVL32:
	.loc 1 600 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 607 5
	call	qcc74x_ef_ctrl_switch_ahb_clk_r0
.LVL33:
	.loc 1 609 5 is_stmt 1
	.loc 1 610 21 is_stmt 0
	lhu	a5,8(s0)
	.loc 1 611 21
	lhu	a4,6(s0)
	.loc 1 619 21
	lhu	a3,16(s0)
	.loc 1 610 30
	slli	a5,a5,6
	.loc 1 611 30
	slli	a4,a4,12
	.loc 1 610 36
	or	a5,a5,a4
	.loc 1 609 30
	lhu	a4,10(s0)
	.loc 1 619 30
	slli	a3,a3,14
	.loc 1 632 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 610 36
	or	a5,a5,a4
	.loc 1 612 21
	lhu	a4,4(s0)
	.loc 1 632 1
	li	a0,0
	.loc 1 612 26
	slli	a4,a4,18
	.loc 1 611 37
	or	a5,a5,a4
	.loc 1 613 21
	lhu	a4,2(s0)
	.loc 1 613 31
	slli	a4,a4,24
	.loc 1 612 33
	or	a5,a5,a4
.LVL34:
	.loc 1 615 5 is_stmt 1
	.loc 1 615 74 is_stmt 0
	li	a4,537227264
	addi	a4,a4,-2048
	sw	a5,4(a4)
	.loc 1 617 5 is_stmt 1
	.loc 1 618 21 is_stmt 0
	lhu	a5,18(s0)
.LVL35:
	.loc 1 618 26
	slli	a5,a5,6
	.loc 1 618 32
	or	a5,a5,a3
	.loc 1 617 26
	lhu	a3,20(s0)
	.loc 1 618 32
	or	a5,a5,a3
	.loc 1 620 21
	lhu	a3,14(s0)
	.loc 1 620 29
	slli	a3,a3,20
	.loc 1 619 37
	or	a5,a5,a3
	.loc 1 621 21
	lhu	a3,12(s0)
	.loc 1 632 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL36:
	.loc 1 621 31
	slli	a3,a3,26
	.loc 1 620 36
	or	a5,a5,a3
.LVL37:
	.loc 1 623 5 is_stmt 1
	.loc 1 623 74 is_stmt 0
	sw	a5,8(a4)
	.loc 1 625 5 is_stmt 1
	.loc 1 625 13 is_stmt 0
	lw	a5,0(a4)
.LVL38:
	.loc 1 626 5 is_stmt 1
	.loc 1 627 5
	.loc 1 628 5
	.loc 1 628 74 is_stmt 0
	sw	a5,0(a4)
	.loc 1 630 5 is_stmt 1
	.loc 1 632 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE13:
	.size	qcc74x_ef_ctrl_set_para, .-qcc74x_ef_ctrl_set_para
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c646,"ax",@progbits
	.align	1
	.globl	qcc74x_ef_ctrl_write_direct
	.type	qcc74x_ef_ctrl_write_direct, @function
qcc74x_ef_ctrl_write_direct:
.LFB14:
	.loc 1 647 1 is_stmt 1
	.cfi_startproc
.LVL39:
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.loc 1 665 8 is_stmt 0
	li	a5,512
	.loc 1 647 1
	mv	s1,a0
	.loc 1 651 5 is_stmt 1
.LVL40:
	.loc 1 652 5
	.loc 1 653 5
	.loc 1 654 5
	.loc 1 655 5
	.loc 1 660 5
	.loc 1 663 5
	.loc 1 133 5
	.loc 1 665 5
	.loc 1 647 1 is_stmt 0
	mv	s3,a4
	.loc 1 665 8
	bgtu	a1,a5,.L27
	.loc 1 665 40 discriminator 1
	addsl	a4, a1, a3, 2
.LVL41:
	mv	s0,a1
	mv	s2,a3
	.loc 1 665 29 discriminator 1
	bgtu	a4,a5,.L27
	mv	s4,a2
	.loc 1 665 66 discriminator 2
	bne	a2,zero,.L28
.L27:
	.loc 1 666 9 is_stmt 1
	.loc 1 666 12 is_stmt 0
	beq	s3,zero,.L26
	.loc 1 667 13 is_stmt 1
	.loc 1 667 24 is_stmt 0
	call	qcc74x_irq_save
.LVL42:
	mv	s2,a0
.LVL43:
	.loc 1 672 13 is_stmt 1
	.loc 1 675 19 is_stmt 0
	li	s0,159744
	.loc 1 672 13
	mv	a0,s1
.LVL44:
	call	qcc74x_ef_ctrl_switch_ahb_clk_r0
.LVL45:
	.loc 1 673 13 is_stmt 1
	.loc 1 674 13
	.loc 1 675 19 is_stmt 0
	addi	s0,s0,256
	.loc 1 674 13
	call	qcc74x_ef_ctrl_program_efuse_r0.constprop.0
.LVL46:
	.loc 1 675 13 is_stmt 1
	.loc 1 675 19 is_stmt 0
	li	s3,1
.LVL47:
.L30:
	.loc 1 675 19 is_stmt 1
	.loc 1 675 20 is_stmt 0
	mv	a0,s1
	call	qcc74x_ef_ctrl_busy
.LVL48:
	.loc 1 675 19
	beq	a0,s3,.L32
.LVL49:
.L31:
	.loc 1 682 13 is_stmt 1
	.loc 1 683 13
	li	a0,100
	call	arch_delay_us
.LVL50:
	.loc 1 695 13
	mv	a0,s2
.LVL51:
.L51:
	.loc 1 764 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL52:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	.loc 1 762 5
	tail	qcc74x_irq_restore
.LVL53:
.L32:
	.cfi_restore_state
	.loc 1 676 17 is_stmt 1
	.loc 1 677 17
	.loc 1 677 20 is_stmt 0
	addi	s0,s0,-1
.LVL54:
	beq	s0,zero,.L31
.LVL55:
	.loc 1 680 17 is_stmt 1
	li	a0,10
	call	arch_delay_us
.LVL56:
	j	.L30
.LVL57:
.L28:
	.loc 1 700 5
	.loc 1 700 8 is_stmt 0
	bne	a1,a5,.L33
	.loc 1 652 14
	li	s2,0
.L33:
.LVL58:
	.loc 1 714 5 is_stmt 1
	.loc 1 716 5
	.loc 1 716 16 is_stmt 0
	call	qcc74x_irq_save
.LVL59:
	mv	s5,a0
.LVL60:
	.loc 1 720 5 is_stmt 1
	.loc 1 720 8 is_stmt 0
	beq	s2,zero,.L35
	.loc 1 722 9 is_stmt 1
	mv	a0,s1
.LVL61:
	call	qcc74x_ef_ctrl_switch_ahb_clk_r0
.LVL62:
	.loc 1 724 9
	li	a0,537223168
	mv	a2,s2
	mv	a1,s4
	add	a0,s0,a0
.LVL63:
	call	arch_memcpy4
.LVL64:
	.loc 1 725 9
	.loc 1 726 9
	.loc 1 728 9
	.loc 1 728 12 is_stmt 0
	beq	s3,zero,.L35
	.loc 1 729 13 is_stmt 1
	.loc 1 730 13
	.loc 1 731 19 is_stmt 0
	li	s0,159744
.LVL65:
	.loc 1 730 13
	call	qcc74x_ef_ctrl_program_efuse_r0.constprop.0
.LVL66:
	.loc 1 731 13 is_stmt 1
	.loc 1 731 19 is_stmt 0
	addi	s0,s0,256
	li	s2,1
.LVL67:
.L37:
	.loc 1 731 19 is_stmt 1
	.loc 1 731 20 is_stmt 0
	mv	a0,s1
	call	qcc74x_ef_ctrl_busy
.LVL68:
	.loc 1 731 19
	beq	a0,s2,.L39
.LVL69:
.L38:
	.loc 1 738 13 is_stmt 1
	.loc 1 739 13
	li	a0,100
	call	arch_delay_us
.LVL70:
.L35:
	.loc 1 762 5
	mv	a0,s5
	j	.L51
.LVL71:
.L39:
	.loc 1 732 17
	.loc 1 733 17
	.loc 1 733 20 is_stmt 0
	addi	s0,s0,-1
.LVL72:
	beq	s0,zero,.L38
.LVL73:
	.loc 1 736 17 is_stmt 1
	li	a0,10
	call	arch_delay_us
.LVL74:
	j	.L37
.LVL75:
.L26:
	.loc 1 764 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
.LVL76:
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	lw	s5,4(sp)
	.cfi_restore 21
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE14:
	.size	qcc74x_ef_ctrl_write_direct, .-qcc74x_ef_ctrl_write_direct
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c778,"ax",@progbits
	.align	1
	.globl	qcc74x_ef_ctrl_read_direct
	.type	qcc74x_ef_ctrl_read_direct, @function
qcc74x_ef_ctrl_read_direct:
.LFB15:
	.loc 1 779 1 is_stmt 1
	.cfi_startproc
.LVL77:
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s2,32(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s3,28(sp)
	sw	s4,24(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 796 8 is_stmt 0
	li	a5,512
	.loc 1 779 1
	mv	s2,a0
	.loc 1 783 5 is_stmt 1
.LVL78:
	.loc 1 784 5
	.loc 1 785 5
	.loc 1 786 5
	.loc 1 791 5
	.loc 1 794 5
	.loc 1 133 5
	.loc 1 796 5
	.loc 1 796 8 is_stmt 0
	bgtu	a1,a5,.L53
	mv	s1,a3
	.loc 1 796 40 discriminator 1
	addsl	a3, a1, a3, 2
.LVL79:
	mv	s0,a1
	.loc 1 796 29 discriminator 1
	bgtu	a3,a5,.L53
	mv	s3,a2
	.loc 1 796 66 discriminator 2
	bne	a2,zero,.L54
.LVL80:
.L53:
	.loc 1 797 9 is_stmt 1
	.loc 1 797 12 is_stmt 0
	beq	a4,zero,.L52
	.loc 1 798 13 is_stmt 1
	.loc 1 798 24 is_stmt 0
	call	qcc74x_irq_save
.LVL81:
	mv	s0,a0
.LVL82:
	.loc 1 802 13 is_stmt 1
	mv	a0,s2
	call	qcc74x_ef_ctrl_load_efuse_r0
.LVL83:
	.loc 1 809 13
	mv	a0,s0
.LVL84:
.L65:
	.loc 1 861 1 is_stmt 0
	lw	s0,40(sp)
	.cfi_remember_state
	.cfi_restore 8
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL85:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	.loc 1 859 5
	tail	qcc74x_irq_restore
.LVL86:
.L54:
	.cfi_restore_state
	.loc 1 814 5 is_stmt 1
	.loc 1 814 8 is_stmt 0
	bne	a1,a5,.L56
	.loc 1 784 14
	li	s1,0
.LVL87:
.L56:
	sw	a4,12(sp)
.LVL88:
	.loc 1 828 5 is_stmt 1
	.loc 1 830 5
	.loc 1 830 16 is_stmt 0
	call	qcc74x_irq_save
.LVL89:
	mv	s4,a0
.LVL90:
	.loc 1 834 5 is_stmt 1
	.loc 1 834 8 is_stmt 0
	beq	s1,zero,.L57
	.loc 1 835 9 is_stmt 1
	.loc 1 835 12 is_stmt 0
	lw	a4,12(sp)
	.loc 1 836 13
	mv	a0,s2
.LVL91:
	.loc 1 835 12
	beq	a4,zero,.L58
.LVL92:
	.loc 1 836 13 is_stmt 1
	call	qcc74x_ef_ctrl_load_efuse_r0
.LVL93:
.L59:
	.loc 1 840 9
	li	a1,537223168
	mv	a2,s1
	add	a1,s0,a1
	mv	a0,s3
	call	arch_memcpy4
.LVL94:
	.loc 1 841 9
	.loc 1 842 9
.L57:
	.loc 1 859 5
	mv	a0,s4
	j	.L65
.LVL95:
.L58:
	.loc 1 838 13
	call	qcc74x_ef_ctrl_switch_ahb_clk_r0
.LVL96:
	j	.L59
.LVL97:
.L52:
	.loc 1 861 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	qcc74x_ef_ctrl_read_direct, .-qcc74x_ef_ctrl_read_direct
	.globl	__ashldi3
	.globl	__lshrdi3
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c873,"ax",@progbits
	.align	1
	.globl	qcc74x_ef_ctrl_read_common_trim
	.type	qcc74x_ef_ctrl_read_common_trim, @function
qcc74x_ef_ctrl_read_common_trim:
.LFB16:
	.loc 1 874 1 is_stmt 1
	.cfi_startproc
.LVL98:
	.loc 1 878 5
	.loc 1 879 5
	.loc 1 880 5
	.loc 1 874 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s5,52(sp)
	sw	a3,12(sp)
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s4,56(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 20, -24
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.loc 1 874 1
	mv	s5,a0
	mv	s3,a1
	mv	s1,a2
	.loc 1 880 42
	sw	zero,28(sp)
	.loc 1 881 5 is_stmt 1
	.loc 1 882 5
	.loc 1 888 5
	.loc 1 888 16 is_stmt 0
	call	qcc74x_irq_save
.LVL99:
	.loc 1 895 8
	lw	a3,12(sp)
	.loc 1 888 16
	mv	s2,a0
.LVL100:
	.loc 1 890 5 is_stmt 1
	.loc 1 133 5
	.loc 1 895 5
	.loc 1 895 8 is_stmt 0
	beq	a3,zero,.L67
	.loc 1 897 9 is_stmt 1
	mv	a0,s5
.LVL101:
	call	qcc74x_ef_ctrl_load_efuse_r0
.LVL102:
.L67:
	.loc 1 903 5
	.loc 1 904 5
	.loc 1 905 5
	.loc 1 906 5
	.loc 1 903 14 is_stmt 0
	li	a5,65536
	sw	a5,0(s1)
	.loc 1 908 5 is_stmt 1
	.loc 1 908 21 is_stmt 0
	addi	a0,sp,28
	call	qcc74x_ef_ctrl_get_common_trim_list
.LVL103:
	mv	s6,a0
.LVL104:
	.loc 1 910 5 is_stmt 1
	.loc 1 910 12 is_stmt 0
	li	s0,0
	li	s7,12
.LVL105:
.L68:
	.loc 1 910 17 is_stmt 1 discriminator 1
	.loc 1 910 5 is_stmt 0 discriminator 1
	beq	s0,s6,.L78
	.loc 1 911 9 is_stmt 1
	mul	s4,s0,s7
	.loc 1 911 43 is_stmt 0
	lw	a5,28(sp)
.LBB20:
.LBB21:
	.loc 1 67 13
	mv	a2,s3
.LBE21:
.LBE20:
	.loc 1 911 43
	lrw	a1,a5,s4,0
.LVL106:
.LBB24:
.LBB22:
	.loc 1 66 5 is_stmt 1
	.loc 1 67 5
.L69:
	.loc 1 67 18
	.loc 1 67 5 is_stmt 0
	lbu	a5,0(a2)
	bne	a5,zero,.L70
	.loc 1 68 5 is_stmt 1
.LVL107:
.LBE22:
.LBE24:
	.loc 1 911 13 is_stmt 0
	sub	a2,a2,s3
	mv	a0,s3
	call	arch_memcmp
.LVL108:
	.loc 1 911 12
	bne	a0,zero,.L71
	.loc 1 913 13 is_stmt 1
	.loc 1 913 29 is_stmt 0
	lw	a5,28(sp)
	add	a5,a5,s4
	.loc 1 913 16
	lhu	a4,4(a5)
	li	a5,4096
	bgeu	a4,a5,.L72
	.loc 1 915 17 is_stmt 1
	mv	a0,s5
	call	qcc74x_ef_ctrl_switch_ahb_clk_r0
.LVL109:
.L72:
	.loc 1 923 13
	.loc 1 923 34 is_stmt 0
	lw	a4,28(sp)
	.loc 1 924 81
	li	a5,537223168
	.loc 1 923 34
	add	a4,a4,s4
	.loc 1 923 37
	lhu	a2,10(a4)
	.loc 1 923 23
	sb	a2,3(s1)
	.loc 1 924 13 is_stmt 1
	.loc 1 924 96 is_stmt 0
	lhu	a3,4(a4)
	.loc 1 924 105
	srli	a1,a3,5
	.loc 1 924 21
	lrw	a1,a5,a1,2
.LVL110:
	.loc 1 925 13 is_stmt 1
	.loc 1 925 30 is_stmt 0
	li	a5,1
	sll	a3,a5,a3
	.loc 1 925 25
	and	a3,a3,a1
	.loc 1 925 16
	beq	a3,zero,.L73
	.loc 1 926 17 is_stmt 1
	.loc 1 926 26 is_stmt 0
	sb	a5,0(s1)
.L73:
	.loc 1 928 13 is_stmt 1
	.loc 1 928 96 is_stmt 0
	lhu	a3,6(a4)
	.loc 1 928 81
	li	a5,537223168
	.loc 1 928 109
	srli	a1,a3,5
.LVL111:
	.loc 1 928 21
	lrw	a1,a5,a1,2
.LVL112:
	.loc 1 929 13 is_stmt 1
	.loc 1 929 30 is_stmt 0
	li	a5,1
	sll	a3,a5,a3
	.loc 1 929 25
	and	a3,a3,a1
	.loc 1 929 16
	beq	a3,zero,.L74
	.loc 1 930 17 is_stmt 1
	.loc 1 930 30 is_stmt 0
	sb	a5,1(s1)
.L74:
	.loc 1 933 13 is_stmt 1
	.loc 1 933 31 is_stmt 0
	lhu	a4,8(a4)
	.loc 1 933 16
	li	a5,32
.LBB25:
	.loc 1 934 105
	li	a3,537223168
.LBE25:
	.loc 1 933 43
	andi	s3,a4,31
.LVL113:
	.loc 1 933 49
	add	a1,s3,a2
.LVL114:
.LBB26:
	.loc 1 934 132
	srli	a4,a4,5
.LBE26:
	.loc 1 933 16
	ble	a1,a5,.L75
.LBB27:
	.loc 1 934 17 is_stmt 1
	.loc 1 934 48 is_stmt 0
	lrw	s5,a3,a4,2
.LVL115:
	.loc 1 935 17 is_stmt 1
	.loc 1 935 136 is_stmt 0
	addi	a3,a3,4
	.loc 1 935 42
	lrw	s4,a3,a4,2
.LVL116:
	.loc 1 936 17 is_stmt 1
	.loc 1 937 17
	.loc 1 937 67 is_stmt 0
	li	a0,1
	li	a1,0
	call	__ashldi3
.LVL117:
	.loc 1 937 94
	addi	s0,a0,-1
.LVL118:
	.loc 1 936 26
	mv	a2,s3
	mv	a0,s5
	mv	a1,s4
	call	__lshrdi3
.LVL119:
	.loc 1 937 31
	and	a0,s0,a0
.LVL120:
.L76:
.LBE27:
	.loc 1 944 31
	lhu	a5,0(s1)
	sw	a0,4(s1)
	.loc 1 944 13 is_stmt 1
	.loc 1 944 16 is_stmt 0
	or	a0,a5,a0
	bne	a0,zero,.L77
	.loc 1 945 17 is_stmt 1
	.loc 1 945 29 is_stmt 0
	li	a5,1
	sb	a5,2(s1)
.L78:
	.loc 1 956 5 is_stmt 1
	mv	a0,s2
	call	qcc74x_irq_restore
.LVL121:
	.loc 1 958 1 is_stmt 0
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	lw	s1,68(sp)
	.cfi_restore 9
.LVL122:
	lw	s2,64(sp)
	.cfi_restore 18
.LVL123:
	lw	s3,60(sp)
	.cfi_restore 19
	lw	s4,56(sp)
	.cfi_restore 20
	lw	s5,52(sp)
	.cfi_restore 21
	lw	s6,48(sp)
	.cfi_restore 22
.LVL124:
	lw	s7,44(sp)
	.cfi_restore 23
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL125:
.L70:
	.cfi_restore_state
.LBB28:
.LBB23:
	.loc 1 67 38 is_stmt 1
	.loc 1 67 31
	addi	a2,a2,1
.LVL126:
	j	.L69
.LVL127:
.L75:
.LBE23:
.LBE28:
	.loc 1 939 17
	.loc 1 939 25 is_stmt 0
	lrw	a4,a3,a4,2
.LVL128:
	.loc 1 940 17 is_stmt 1
	.loc 1 941 17
	.loc 1 941 45 is_stmt 0
	li	a5,1
	sll	a0,a5,a2
	.loc 1 941 72
	addi	a0,a0,-1
	.loc 1 940 25
	srl	a4,a4,s3
.LVL129:
	.loc 1 941 39
	and	a0,a0,a4
	j	.L76
.LVL130:
.L77:
	.loc 1 947 17 is_stmt 1
	.loc 1 947 29 is_stmt 0
	sb	zero,2(s1)
	j	.L78
.LVL131:
.L71:
	.loc 1 910 36 is_stmt 1 discriminator 2
	.loc 1 910 37 is_stmt 0 discriminator 2
	addi	s0,s0,1
.LVL132:
	j	.L68
	.cfi_endproc
.LFE16:
	.size	qcc74x_ef_ctrl_read_common_trim, .-qcc74x_ef_ctrl_read_common_trim
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c1077,"ax",@progbits
	.align	1
	.globl	qcc74x_ef_ctrl_is_all_bits_zero
	.type	qcc74x_ef_ctrl_is_all_bits_zero, @function
qcc74x_ef_ctrl_is_all_bits_zero:
.LFB18:
	.loc 1 1078 1 is_stmt 1
	.cfi_startproc
.LVL133:
	.loc 1 1082 5
	.loc 1 1084 5
	.loc 1 1086 8 is_stmt 0
	li	a5,31
	.loc 1 1084 9
	srl	a0,a0,a1
.LVL134:
	.loc 1 1086 5 is_stmt 1
	.loc 1 1086 8 is_stmt 0
	bgtu	a2,a5,.L92
	.loc 1 1089 9 is_stmt 1
	.loc 1 1089 19 is_stmt 0
	li	a5,1
	sll	a2,a5,a2
.LVL135:
	.loc 1 1089 27
	addi	a2,a2,-1
.LVL136:
.L91:
	.loc 1 1092 5 is_stmt 1
	.loc 1 1092 14 is_stmt 0
	and	a0,a2,a0
.LVL137:
	.loc 1 1098 1
	seqz	a0,a0
	ret
.LVL138:
.L92:
	.loc 1 1087 14
	li	a2,-1
.LVL139:
	j	.L91
	.cfi_endproc
.LFE18:
	.size	qcc74x_ef_ctrl_is_all_bits_zero, .-qcc74x_ef_ctrl_is_all_bits_zero
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c1108,"ax",@progbits
	.align	1
	.globl	qcc74x_ef_ctrl_get_byte_zero_cnt
	.type	qcc74x_ef_ctrl_get_byte_zero_cnt, @function
qcc74x_ef_ctrl_get_byte_zero_cnt:
.LFB19:
	.loc 1 1109 1 is_stmt 1
	.cfi_startproc
.LVL140:
	.loc 1 1113 5
	.loc 1 1114 5
	.loc 1 1116 5
	.loc 1 1116 17
	.loc 1 1116 12 is_stmt 0
	li	a5,0
	.loc 1 1113 14
	li	a4,0
	.loc 1 1116 5
	li	a2,8
.LVL141:
.L95:
	.loc 1 1117 9 is_stmt 1
	.loc 1 1117 30 is_stmt 0
	sra	a3,a0,a5
	andi	a3,a3,1
	.loc 1 1117 12
	bne	a3,zero,.L94
	.loc 1 1118 13 is_stmt 1
	.loc 1 1118 17 is_stmt 0
	addi	a4,a4,1
.LVL142:
.L94:
	.loc 1 1116 24 is_stmt 1 discriminator 2
	.loc 1 1116 25 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL143:
	.loc 1 1116 17 is_stmt 1 discriminator 2
	.loc 1 1116 5 is_stmt 0 discriminator 2
	bne	a5,a2,.L95
	.loc 1 1122 5 is_stmt 1
	.loc 1 1124 1 is_stmt 0
	mv	a0,a4
.LVL144:
	ret
	.cfi_endproc
.LFE19:
	.size	qcc74x_ef_ctrl_get_byte_zero_cnt, .-qcc74x_ef_ctrl_get_byte_zero_cnt
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c1135,"ax",@progbits
	.align	1
	.globl	qcc74x_ef_ctrl_get_trim_parity
	.type	qcc74x_ef_ctrl_get_trim_parity, @function
qcc74x_ef_ctrl_get_trim_parity:
.LFB20:
	.loc 1 1136 1 is_stmt 1
	.cfi_startproc
.LVL145:
	.loc 1 1140 5
	.loc 1 1141 5
	.loc 1 1143 5
	li	a4,0
	.loc 1 1140 13 is_stmt 0
	li	a5,0
	.loc 1 1144 22
	li	a2,1
.LVL146:
.L98:
	.loc 1 1143 17 is_stmt 1 discriminator 1
	.loc 1 1143 5 is_stmt 0 discriminator 1
	andi	a3,a4,0xff
	bgtu	a1,a3,.L100
	.loc 1 1149 5 is_stmt 1
	.loc 1 1151 1 is_stmt 0
	andi	a0,a5,1
.LVL147:
	ret
.LVL148:
.L100:
	.loc 1 1144 9 is_stmt 1
	.loc 1 1144 22 is_stmt 0
	sll	a3,a2,a4
	.loc 1 1144 17
	and	a3,a3,a0
	.loc 1 1144 12
	beq	a3,zero,.L99
	.loc 1 1145 13 is_stmt 1
	.loc 1 1145 16 is_stmt 0
	addi	a5,a5,1
.LVL149:
	andi	a5,a5,0xff
.LVL150:
.L99:
	.loc 1 1143 26 is_stmt 1 discriminator 2
	addi	a4,a4,1
.LVL151:
	j	.L98
	.cfi_endproc
.LFE20:
	.size	qcc74x_ef_ctrl_get_trim_parity, .-qcc74x_ef_ctrl_get_trim_parity
	.section	.tcm_code../drivers/lhal/src/qcc74x_ef_ctrl.c971,"ax",@progbits
	.align	1
	.globl	qcc74x_ef_ctrl_write_common_trim
	.type	qcc74x_ef_ctrl_write_common_trim, @function
qcc74x_ef_ctrl_write_common_trim:
.LFB17:
	.loc 1 972 1
	.cfi_startproc
.LVL152:
	.loc 1 976 5
	.loc 1 977 5
	.loc 1 978 5
	.loc 1 979 5
	.loc 1 972 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s1,52(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	.loc 1 988 21
	addi	a0,sp,12
.LVL153:
	.loc 1 972 1
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s8,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 24, -40
	mv	s6,a1
	mv	s5,a2
	mv	s3,a3
	sw	s7,28(sp)
	.cfi_offset 23, -36
	.loc 1 979 42
	sw	zero,12(sp)
	.loc 1 980 5 is_stmt 1
	.loc 1 981 5
	.loc 1 982 5
.LVL154:
	.loc 1 988 5
	.loc 1 988 21 is_stmt 0
	call	qcc74x_ef_ctrl_get_common_trim_list
.LVL155:
	mv	s0,a0
.LVL156:
	.loc 1 990 5 is_stmt 1
	.loc 1 990 16 is_stmt 0
	call	qcc74x_irq_save
.LVL157:
	mv	s2,a0
.LVL158:
	.loc 1 992 5 is_stmt 1
	.loc 1 133 5
	.loc 1 994 5
	.loc 1 994 12 is_stmt 0
	li	s4,0
	li	s8,12
.LVL159:
.L105:
	.loc 1 994 17 is_stmt 1 discriminator 1
	.loc 1 994 5 is_stmt 0 discriminator 1
	beq	s4,s0,.L114
	.loc 1 995 9 is_stmt 1
	mul	s7,s4,s8
	.loc 1 995 43 is_stmt 0
	lw	a5,12(sp)
.LBB31:
.LBB32:
	.loc 1 67 13
	mv	a2,s6
.LBE32:
.LBE31:
	.loc 1 995 43
	lrw	a1,a5,s7,0
.LVL160:
.LBB35:
.LBB33:
	.loc 1 66 5 is_stmt 1
	.loc 1 67 5
.L106:
	.loc 1 67 18
	.loc 1 67 5 is_stmt 0
	lbu	a5,0(a2)
	bne	a5,zero,.L107
	.loc 1 68 5 is_stmt 1
.LVL161:
.LBE33:
.LBE35:
	.loc 1 995 13 is_stmt 0
	sub	a2,a2,s6
	mv	a0,s6
	call	arch_memcmp
.LVL162:
	.loc 1 995 12
	bne	a0,zero,.L108
	.loc 1 1000 13 is_stmt 1
	.loc 1 1000 29 is_stmt 0
	lw	a5,12(sp)
	add	a5,a5,s7
	.loc 1 1000 16
	lhu	a4,4(a5)
	li	a5,4096
	bgeu	a4,a5,.L109
	.loc 1 1002 17 is_stmt 1
	mv	a0,s1
	call	qcc74x_ef_ctrl_switch_ahb_clk_r0
.LVL163:
.L109:
	.loc 1 1010 13
	.loc 1 1010 93 is_stmt 0
	lw	s0,12(sp)
.LVL164:
	.loc 1 1011 27
	li	s4,1
.LVL165:
	.loc 1 1014 22
	mv	a0,s5
	.loc 1 1010 93
	add	s0,s0,s7
	.loc 1 1010 96
	lhu	s8,4(s0)
	.loc 1 1010 81
	li	s7,537223168
	.loc 1 1014 72
	lhu	s6,10(s0)
.LVL166:
	.loc 1 1010 105
	srli	a4,s8,5
	.loc 1 1010 21
	lrw	a3,s7,a4,2
.LVL167:
	.loc 1 1011 13 is_stmt 1
	.loc 1 1011 27 is_stmt 0
	sll	a5,s4,s8
	.loc 1 1014 22
	andi	a1,s6,0xff
	.loc 1 1011 21
	or	a5,a5,a3
.LVL168:
	.loc 1 1012 13 is_stmt 1
	.loc 1 1012 106 is_stmt 0
	srw	a5,s7,a4,2
	.loc 1 1014 13 is_stmt 1
	.loc 1 1014 22 is_stmt 0
	call	qcc74x_ef_ctrl_get_trim_parity
.LVL169:
	.loc 1 1015 13 is_stmt 1
	.loc 1 1015 16 is_stmt 0
	beq	a0,zero,.L110
	.loc 1 1016 17 is_stmt 1
	.loc 1 1016 100 is_stmt 0
	lhu	a4,6(s0)
	.loc 1 1016 113
	srli	a5,a4,5
	.loc 1 1016 25
	lrw	a3,s7,a5,2
.LVL170:
	.loc 1 1017 17 is_stmt 1
	.loc 1 1017 31 is_stmt 0
	sll	s4,s4,a4
	.loc 1 1017 25
	or	s4,s4,a3
.LVL171:
	.loc 1 1018 17 is_stmt 1
	.loc 1 1018 114 is_stmt 0
	srw	s4,s7,a5,2
.LVL172:
.L110:
	.loc 1 1021 13 is_stmt 1
	.loc 1 1021 31 is_stmt 0
	lhu	a5,8(s0)
	.loc 1 1021 16
	li	a3,32
	.loc 1 1022 85
	li	a4,537223168
	.loc 1 1021 43
	andi	a1,a5,31
	.loc 1 1021 49
	add	s6,s6,a1
	.loc 1 1022 112
	srli	a5,a5,5
	.loc 1 1023 35
	sll	a0,s5,a1
.LVL173:
	.loc 1 1021 16
	ble	s6,a3,.L111
	.loc 1 1022 17 is_stmt 1
	.loc 1 1022 25 is_stmt 0
	lrw	a2,a4,a5,2
.LVL174:
	.loc 1 1023 17 is_stmt 1
	.loc 1 1027 42 is_stmt 0
	sub	a3,a3,a1
	.loc 1 1027 35
	srl	a3,s5,a3
	.loc 1 1023 25
	or	a2,a2,a0
.LVL175:
	.loc 1 1024 17 is_stmt 1
	.loc 1 1024 113 is_stmt 0
	srw	a2,a4,a5,2
	.loc 1 1026 17 is_stmt 1
	.loc 1 1026 28 is_stmt 0
	lrw	a2,a4,a5,2
.LVL176:
	.loc 1 1028 112
	addi	a4,a4,4
.LVL177:
	.loc 1 1026 25
	addi	a2,a2,4
.LVL178:
	.loc 1 1027 17 is_stmt 1
	.loc 1 1027 25 is_stmt 0
	or	a3,a3,a2
.LVL179:
	.loc 1 1028 17 is_stmt 1
.L127:
	.loc 1 1032 17
	.loc 1 1032 113 is_stmt 0
	srw	a3,a4,a5,2
	.loc 1 1035 13 is_stmt 1
	.loc 1 1035 16 is_stmt 0
	beq	s3,zero,.L114
	.loc 1 1037 17 is_stmt 1
	.loc 1 1037 20 is_stmt 0
	li	a5,4096
	bgeu	s8,a5,.L114
	.loc 1 1038 21 is_stmt 1
	.loc 1 1039 21
	.loc 1 1040 27 is_stmt 0
	li	s0,159744
	.loc 1 1039 21
	call	qcc74x_ef_ctrl_program_efuse_r0.constprop.0
.LVL180:
	.loc 1 1040 21 is_stmt 1
	.loc 1 1040 27 is_stmt 0
	addi	s0,s0,256
	li	s3,1
.LVL181:
.L116:
	.loc 1 1040 27 is_stmt 1
	.loc 1 1040 28 is_stmt 0
	mv	a0,s1
	call	qcc74x_ef_ctrl_busy
.LVL182:
	.loc 1 1040 27
	beq	a0,s3,.L118
.LVL183:
.L117:
	.loc 1 1047 21 is_stmt 1
	.loc 1 1048 21
	li	a0,100
	call	arch_delay_us
.LVL184:
.L114:
	.loc 1 1063 5
	mv	a0,s2
	call	qcc74x_irq_restore
.LVL185:
	.loc 1 1065 1 is_stmt 0
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
.LVL186:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL187:
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
.LVL188:
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL189:
.L107:
	.cfi_restore_state
.LBB36:
.LBB34:
	.loc 1 67 38 is_stmt 1
	.loc 1 67 31
	addi	a2,a2,1
.LVL190:
	j	.L106
.LVL191:
.L111:
.LBE34:
.LBE36:
	.loc 1 1030 17
	.loc 1 1030 25 is_stmt 0
	lrw	a3,a4,a5,2
.LVL192:
	.loc 1 1031 17 is_stmt 1
	.loc 1 1031 25 is_stmt 0
	or	a3,a3,a0
.LVL193:
	j	.L127
.LVL194:
.L118:
	.loc 1 1041 25 is_stmt 1
	.loc 1 1042 25
	.loc 1 1042 28 is_stmt 0
	addi	s0,s0,-1
.LVL195:
	beq	s0,zero,.L117
.LVL196:
	.loc 1 1045 25 is_stmt 1
	li	a0,10
	call	arch_delay_us
.LVL197:
	j	.L116
.LVL198:
.L108:
	.loc 1 994 36 discriminator 2
	.loc 1 994 37 is_stmt 0 discriminator 2
	addi	s4,s4,1
.LVL199:
	j	.L105
	.cfi_endproc
.LFE17:
	.size	qcc74x_ef_ctrl_write_common_trim, .-qcc74x_ef_ctrl_write_common_trim
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_ef_ctrl.h"
	.file 7 "./drivers/lhal/include/qcc74x_irq.h"
	.file 8 "./drivers/lhal/include/qcc74x_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd2e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF88
	.byte	0xc
	.4byte	.LASF89
	.4byte	.LASF90
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
	.byte	0x6
	.byte	0x4
	.4byte	0xf7
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.byte	0x7
	.4byte	0xf7
	.byte	0x6
	.byte	0x4
	.4byte	0xfe
	.byte	0x8
	.4byte	.LASF91
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x172
	.byte	0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0x103
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
	.byte	0xb
	.byte	0xc
	.byte	0x6
	.byte	0x1b
	.byte	0x9
	.4byte	0x1bd
	.byte	0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x1d
	.byte	0xb
	.4byte	0xf1
	.byte	0
	.byte	0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0x1e
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0x1f
	.byte	0xe
	.4byte	0xb3
	.byte	0x6
	.byte	0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0x20
	.byte	0xe
	.4byte	0xb3
	.byte	0x8
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0x21
	.byte	0xe
	.4byte	0xb3
	.byte	0xa
	.byte	0
	.byte	0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0x22
	.byte	0x3
	.4byte	0x172
	.byte	0x7
	.4byte	0x1bd
	.byte	0xb
	.byte	0x8
	.byte	0x6
	.byte	0x27
	.byte	0x9
	.4byte	0x218
	.byte	0xa
	.string	"en"
	.byte	0x6
	.byte	0x29
	.byte	0xd
	.4byte	0xa7
	.byte	0
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0x2a
	.byte	0xd
	.4byte	0xa7
	.byte	0x1
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0x2b
	.byte	0xd
	.4byte	0xa7
	.byte	0x2
	.byte	0xa
	.string	"len"
	.byte	0x6
	.byte	0x2c
	.byte	0xd
	.4byte	0xa7
	.byte	0x3
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0x2d
	.byte	0xe
	.4byte	0xbf
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0x2e
	.byte	0x3
	.4byte	0x1ce
	.byte	0xb
	.byte	0x16
	.byte	0x6
	.byte	0x33
	.byte	0x9
	.4byte	0x2ba
	.byte	0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0x35
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0x36
	.byte	0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0xa
	.string	"cs"
	.byte	0x6
	.byte	0x37
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0x38
	.byte	0xe
	.4byte	0xb3
	.byte	0x6
	.byte	0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0x39
	.byte	0xe
	.4byte	0xb3
	.byte	0x8
	.byte	0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0x3a
	.byte	0xe
	.4byte	0xb3
	.byte	0xa
	.byte	0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0x3b
	.byte	0xe
	.4byte	0xb3
	.byte	0xc
	.byte	0x9
	.4byte	.LASF42
	.byte	0x6
	.byte	0x3c
	.byte	0xe
	.4byte	0xb3
	.byte	0xe
	.byte	0x9
	.4byte	.LASF43
	.byte	0x6
	.byte	0x3d
	.byte	0xe
	.4byte	0xb3
	.byte	0x10
	.byte	0xa
	.string	"pp"
	.byte	0x6
	.byte	0x3e
	.byte	0xe
	.4byte	0xb3
	.byte	0x12
	.byte	0xa
	.string	"pi"
	.byte	0x6
	.byte	0x3f
	.byte	0xe
	.4byte	0xb3
	.byte	0x14
	.byte	0
	.byte	0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0x40
	.byte	0x3
	.4byte	0x224
	.byte	0xc
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x46f
	.byte	0x5d
	.4byte	0xa7
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x322
	.byte	0xd
	.string	"val"
	.byte	0x1
	.2byte	0x46f
	.byte	0x85
	.4byte	0xbf
	.4byte	.LLST49
	.byte	0xe
	.string	"len"
	.byte	0x1
	.2byte	0x46f
	.byte	0x92
	.4byte	0xa7
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.string	"cnt"
	.byte	0x1
	.2byte	0x474
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST50
	.byte	0xf
	.string	"i"
	.byte	0x1
	.2byte	0x475
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST51
	.byte	0
	.byte	0xc
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x454
	.byte	0x5e
	.4byte	0xbf
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x36f
	.byte	0xd
	.string	"val"
	.byte	0x1
	.2byte	0x454
	.byte	0x87
	.4byte	0xa7
	.4byte	.LLST46
	.byte	0xf
	.string	"cnt"
	.byte	0x1
	.2byte	0x459
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST47
	.byte	0xf
	.string	"i"
	.byte	0x1
	.2byte	0x45a
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST48
	.byte	0
	.byte	0xc
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x435
	.byte	0x5d
	.4byte	0xa7
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x3cd
	.byte	0xd
	.string	"val"
	.byte	0x1
	.2byte	0x435
	.byte	0x86
	.4byte	0xbf
	.4byte	.LLST43
	.byte	0x10
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x435
	.byte	0x93
	.4byte	0xa7
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.string	"len"
	.byte	0x1
	.2byte	0x435
	.byte	0xa2
	.4byte	0xa7
	.4byte	.LLST44
	.byte	0x11
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x43a
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST45
	.byte	0
	.byte	0x12
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x3cb
	.byte	0x59
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x58b
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x3cb
	.byte	0x92
	.4byte	0x58b
	.4byte	.LLST52
	.byte	0x13
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x3cb
	.byte	0x9d
	.4byte	0xf1
	.4byte	.LLST53
	.byte	0x13
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x3cb
	.byte	0xac
	.4byte	0xbf
	.4byte	.LLST54
	.byte	0x13
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x3cb
	.byte	0xbb
	.4byte	0xa7
	.4byte	.LLST55
	.byte	0x11
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x3d0
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST56
	.byte	0xf
	.string	"i"
	.byte	0x1
	.2byte	0x3d1
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST57
	.byte	0x11
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x3d2
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST58
	.byte	0x14
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x3d3
	.byte	0x2a
	.4byte	0x591
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x11
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x3d4
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST59
	.byte	0x11
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x3d5
	.byte	0xf
	.4byte	0xd7
	.4byte	.LLST60
	.byte	0x11
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x3d6
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST61
	.byte	0x15
	.4byte	0xc78
	.4byte	.LBB31
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.2byte	0x3e3
	.byte	0x32
	.4byte	0x4ca
	.byte	0x16
	.4byte	0xc89
	.4byte	.LLST62
	.byte	0x17
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x18
	.4byte	0xc93
	.4byte	.LLST63
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL155
	.4byte	0xcd7
	.4byte	0x4de
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x1b
	.4byte	.LVL157
	.4byte	0xce3
	.byte	0x19
	.4byte	.LVL162
	.4byte	0xcef
	.4byte	0x4fb
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL163
	.4byte	0xbb5
	.4byte	0x50f
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL169
	.4byte	0x2c6
	.4byte	0x529
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL180
	.4byte	0xc9f
	.4byte	0x53f
	.byte	0x1c
	.4byte	0xb9c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL182
	.4byte	0xc3d
	.4byte	0x553
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL184
	.4byte	0xcfb
	.4byte	0x567
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x19
	.4byte	.LVL185
	.4byte	0xd07
	.4byte	0x57b
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL197
	.4byte	0xcfb
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x109
	.byte	0x6
	.byte	0x4
	.4byte	0x1c9
	.byte	0x12
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x369
	.byte	0x59
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x705
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x369
	.byte	0x91
	.4byte	0x58b
	.4byte	.LLST33
	.byte	0x13
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x369
	.byte	0x9c
	.4byte	0xf1
	.4byte	.LLST34
	.byte	0x13
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x369
	.byte	0xbd
	.4byte	0x705
	.4byte	.LLST35
	.byte	0x13
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x369
	.byte	0xcb
	.4byte	0xa7
	.4byte	.LLST36
	.byte	0x11
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x36e
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST37
	.byte	0xf
	.string	"i"
	.byte	0x1
	.2byte	0x36f
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST38
	.byte	0x14
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x370
	.byte	0x2a
	.4byte	0x591
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x11
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x371
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST39
	.byte	0x11
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x372
	.byte	0xf
	.4byte	0xd7
	.4byte	.LLST40
	.byte	0x1e
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0x66d
	.byte	0x1f
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x3a6
	.byte	0x1a
	.4byte	0xcb
	.byte	0x1b
	.4byte	.LVL117
	.4byte	0xd13
	.byte	0x1b
	.4byte	.LVL119
	.4byte	0xd1c
	.byte	0
	.byte	0x15
	.4byte	0xc78
	.4byte	.LBB20
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x1
	.2byte	0x38f
	.byte	0x32
	.4byte	0x69b
	.byte	0x16
	.4byte	0xc89
	.4byte	.LLST41
	.byte	0x17
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x18
	.4byte	0xc93
	.4byte	.LLST42
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL99
	.4byte	0xce3
	.byte	0x19
	.4byte	.LVL102
	.4byte	0xab9
	.4byte	0x6b8
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL103
	.4byte	0xcd7
	.4byte	0x6cc
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0
	.byte	0x19
	.4byte	.LVL108
	.4byte	0xcef
	.4byte	0x6e0
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL109
	.4byte	0xbb5
	.4byte	0x6f4
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL121
	.4byte	0xd07
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x218
	.byte	0x12
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x30a
	.byte	0x59
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x83b
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x30a
	.byte	0x8c
	.4byte	0x58b
	.4byte	.LLST24
	.byte	0x13
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x30a
	.byte	0x9a
	.4byte	0xbf
	.4byte	.LLST25
	.byte	0x13
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x30a
	.byte	0xac
	.4byte	0x83b
	.4byte	.LLST26
	.byte	0x13
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x30a
	.byte	0xbc
	.4byte	0xbf
	.4byte	.LLST27
	.byte	0x13
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x30a
	.byte	0xcb
	.4byte	0xa7
	.4byte	.LLST28
	.byte	0x11
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x30f
	.byte	0xf
	.4byte	0x83b
	.4byte	.LLST29
	.byte	0x11
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x310
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST30
	.byte	0x11
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x310
	.byte	0x21
	.4byte	0xbf
	.4byte	.LLST30
	.byte	0x20
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x311
	.byte	0xe
	.4byte	0xbf
	.2byte	0x200
	.byte	0x11
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x312
	.byte	0xf
	.4byte	0xd7
	.4byte	.LLST32
	.byte	0x1b
	.4byte	.LVL81
	.4byte	0xce3
	.byte	0x19
	.4byte	.LVL83
	.4byte	0xab9
	.4byte	0x7e7
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LVL86
	.4byte	0xd07
	.byte	0x1b
	.4byte	.LVL89
	.4byte	0xce3
	.byte	0x19
	.4byte	.LVL93
	.4byte	0xab9
	.4byte	0x80d
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL94
	.4byte	0xd25
	.4byte	0x831
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x6
	.byte	0x78
	.byte	0x80,0xc0,0x95,0x80,0x2
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LVL96
	.4byte	0xbb5
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xbf
	.byte	0x12
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x286
	.byte	0x59
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xa17
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x286
	.byte	0x8d
	.4byte	0x58b
	.4byte	.LLST14
	.byte	0x13
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x286
	.byte	0x9b
	.4byte	0xbf
	.4byte	.LLST15
	.byte	0x13
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x286
	.byte	0xad
	.4byte	0x83b
	.4byte	.LLST16
	.byte	0x13
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x286
	.byte	0xbd
	.4byte	0xbf
	.4byte	.LLST17
	.byte	0x13
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x286
	.byte	0xcc
	.4byte	0xa7
	.4byte	.LLST18
	.byte	0x11
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x28b
	.byte	0xf
	.4byte	0x83b
	.4byte	.LLST19
	.byte	0x11
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x28c
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST20
	.byte	0x11
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x28c
	.byte	0x21
	.4byte	0xbf
	.4byte	.LLST20
	.byte	0x20
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x28d
	.byte	0xe
	.4byte	0xbf
	.2byte	0x200
	.byte	0x11
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x28e
	.byte	0xf
	.4byte	0xd7
	.4byte	.LLST22
	.byte	0x11
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x28f
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST23
	.byte	0x1b
	.4byte	.LVL42
	.4byte	0xce3
	.byte	0x19
	.4byte	.LVL45
	.4byte	0xbb5
	.4byte	0x92e
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL46
	.4byte	0xc9f
	.4byte	0x944
	.byte	0x1c
	.4byte	0xb9c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL48
	.4byte	0xc3d
	.4byte	0x958
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL50
	.4byte	0xcfb
	.4byte	0x96c
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x21
	.4byte	.LVL53
	.4byte	0xd07
	.byte	0x19
	.4byte	.LVL56
	.4byte	0xcfb
	.4byte	0x988
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x1b
	.4byte	.LVL59
	.4byte	0xce3
	.byte	0x19
	.4byte	.LVL62
	.4byte	0xbb5
	.4byte	0x9a5
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL64
	.4byte	0xd25
	.4byte	0x9c9
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x6
	.byte	0x78
	.byte	0x80,0xc0,0x95,0x80,0x2
	.byte	0x1a
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x1a
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL66
	.4byte	0xc9f
	.4byte	0x9df
	.byte	0x1c
	.4byte	0xb9c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL68
	.4byte	0xc3d
	.4byte	0x9f3
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL70
	.4byte	0xcfb
	.4byte	0xa07
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0x1d
	.4byte	.LVL74
	.4byte	0xcfb
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0xc
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x257
	.byte	0x58
	.4byte	0x8d
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xa64
	.byte	0x13
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x257
	.byte	0x87
	.4byte	0xa64
	.4byte	.LLST12
	.byte	0x11
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x25c
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST13
	.byte	0x1d
	.4byte	.LVL33
	.4byte	0xbb5
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x2ba
	.byte	0xc
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x237
	.byte	0x58
	.4byte	0x8d
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xab9
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x237
	.byte	0x8d
	.4byte	0x58b
	.4byte	.LLST10
	.byte	0x11
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x23c
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST11
	.byte	0x1d
	.4byte	.LVL28
	.4byte	0xbb5
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x19c
	.byte	0x78
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xb5b
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x19c
	.byte	0xad
	.4byte	0x58b
	.4byte	.LLST5
	.byte	0x11
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x19e
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST6
	.byte	0x11
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x19f
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST7
	.byte	0x15
	.4byte	0xb5b
	.4byte	.LBB13
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x1a1
	.byte	0x5
	.4byte	0xb4b
	.byte	0x16
	.4byte	0xb69
	.4byte	.LLST8
	.byte	0x17
	.4byte	.Ldebug_ranges0+0
	.byte	0x23
	.4byte	0xb76
	.4byte	0x20056000
	.byte	0x18
	.4byte	0xb83
	.4byte	.LLST9
	.byte	0x1d
	.4byte	.LVL16
	.4byte	0xbb5
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1d
	.4byte	.LVL20
	.4byte	0xcfb
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x16e
	.byte	0x60
	.byte	0x1
	.4byte	0xb8f
	.byte	0x25
	.string	"dev"
	.byte	0x1
	.2byte	0x16e
	.byte	0x97
	.4byte	0x58b
	.byte	0x1f
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x170
	.byte	0xf
	.4byte	0x83b
	.byte	0x26
	.string	"i"
	.byte	0x1
	.2byte	0x171
	.byte	0xe
	.4byte	0xbf
	.byte	0
	.byte	0x27
	.4byte	.LASF74
	.byte	0x1
	.byte	0xe8
	.byte	0x78
	.byte	0x1
	.4byte	0xbb5
	.byte	0x28
	.string	"dev"
	.byte	0x1
	.byte	0xe8
	.byte	0xb0
	.4byte	0x58b
	.byte	0x29
	.4byte	.LASF51
	.byte	0x1
	.byte	0xea
	.byte	0xe
	.4byte	0xbf
	.byte	0
	.byte	0x2a
	.4byte	.LASF76
	.byte	0x1
	.byte	0x92
	.byte	0x60
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xc1f
	.byte	0x2b
	.string	"dev"
	.byte	0x1
	.byte	0x92
	.byte	0x99
	.4byte	0x58b
	.4byte	.LLST3
	.byte	0x2c
	.4byte	.LASF51
	.byte	0x1
	.byte	0x94
	.byte	0xe
	.4byte	0xbf
	.4byte	0x24bf00
	.byte	0x2d
	.4byte	.LASF55
	.byte	0x1
	.byte	0x95
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST4
	.byte	0x19
	.4byte	.LVL8
	.4byte	0xc3d
	.4byte	0xc0f
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x2e
	.4byte	.LVL14
	.4byte	0xcfb
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF78
	.byte	0x1
	.byte	0x68
	.byte	0x77
	.4byte	0x8d
	.byte	0x1
	.4byte	0xc3d
	.byte	0x28
	.string	"dev"
	.byte	0x1
	.byte	0x68
	.byte	0xaa
	.4byte	0x58b
	.byte	0
	.byte	0x30
	.4byte	.LASF77
	.byte	0x1
	.byte	0x4f
	.byte	0x57
	.4byte	0x8d
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xc78
	.byte	0x2b
	.string	"dev"
	.byte	0x1
	.byte	0x4f
	.byte	0x83
	.4byte	0x58b
	.4byte	.LLST1
	.byte	0x2d
	.4byte	.LASF51
	.byte	0x1
	.byte	0x54
	.byte	0xe
	.4byte	0xbf
	.4byte	.LLST2
	.byte	0
	.byte	0x2f
	.4byte	.LASF79
	.byte	0x1
	.byte	0x40
	.byte	0x79
	.4byte	0xe3
	.byte	0x1
	.4byte	0xc9f
	.byte	0x28
	.string	"s"
	.byte	0x1
	.byte	0x40
	.byte	0x9b
	.4byte	0x103
	.byte	0x31
	.string	"sc"
	.byte	0x1
	.byte	0x42
	.byte	0x11
	.4byte	0x103
	.byte	0
	.byte	0x32
	.4byte	0xb8f
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xcd7
	.byte	0x18
	.4byte	0xba8
	.4byte	.LLST0
	.byte	0x33
	.4byte	0xb9c
	.byte	0x6
	.byte	0xfa
	.4byte	0xb9c
	.byte	0x9f
	.byte	0x1d
	.4byte	.LVL2
	.4byte	0xcfb
	.byte	0x1a
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x34
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x6
	.byte	0x48
	.byte	0xa
	.byte	0x34
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x7
	.byte	0x2e
	.byte	0xb
	.byte	0x34
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x8
	.byte	0x30
	.byte	0x5
	.byte	0x34
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x8
	.byte	0x55
	.byte	0x6
	.byte	0x34
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x7
	.byte	0x35
	.byte	0x6
	.byte	0x35
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x35
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x34
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x8
	.byte	0x3a
	.byte	0xb
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x2
	.byte	0x18
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
	.byte	0x17
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
	.byte	0x15
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x34
	.byte	0
	.byte	0x31
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
	.byte	0x1
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x95,0x42
	.byte	0x19
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0x6
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
	.byte	0x8
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
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x34
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
	.byte	0x35
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST49:
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL150
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL140
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL134
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0xa
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x7b
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL139
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL133
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL138
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL153
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL186
	.4byte	.LVL189
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL152
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL155-1
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL166
	.4byte	.LVL189
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL191
	.4byte	.LVL198
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL152
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL155-1
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL152
	.4byte	.LVL155-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL155-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL168
	.4byte	.LVL169-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x22
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x87
	.byte	0
	.byte	0x22
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL179
	.4byte	.LVL180-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL192
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL152
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL198
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL152
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LFE17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL156
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL198
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL159
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL189
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL154
	.4byte	.LVL181
	.2byte	0x6
	.byte	0xc
	.4byte	0x27100
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL189
	.4byte	.LVL194
	.2byte	0x6
	.byte	0xc
	.4byte	0x27100
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL196
	.4byte	.LVL198
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL198
	.4byte	.LFE17
	.2byte	0x6
	.byte	0xc
	.4byte	0x27100
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL189
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99-1
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL115
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL99-1
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL113
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL127
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL99-1
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL122
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL98
	.4byte	.LVL99-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL99-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL98
	.4byte	.LVL105
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL125
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL131
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL125
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL101
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL125
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL77
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81-1
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL89-1
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93-1
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL96-1
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL97
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL77
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL81-1
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL97
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL77
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL81-1
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL89-1
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL97
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL80
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL87
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL77
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL81-1
	.4byte	.LVL86
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL89-1
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL78
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL94
	.2byte	0x7
	.byte	0x78
	.byte	0x80,0xc0,0x95,0x80,0x2
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x7
	.byte	0x78
	.byte	0x80,0xc0,0x95,0x80,0x2
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL78
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL84
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL42-1
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL76
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42-1
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL42-1
	.4byte	.LVL51
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL59-1
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL75
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL39
	.4byte	.LVL42-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL42-1
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL59-1
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL41
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL40
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL63
	.2byte	0x7
	.byte	0x78
	.byte	0x80,0xc0,0x95,0x80,0x2
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL64-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL64-1
	.4byte	.LVL64
	.2byte	0x7
	.byte	0x78
	.byte	0x80,0xc0,0x95,0x80,0x2
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL40
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL51
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL40
	.4byte	.LVL47
	.2byte	0x6
	.byte	0xc
	.4byte	0x27100
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL67
	.2byte	0x6
	.byte	0xc
	.4byte	0x27100
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE14
	.2byte	0x6
	.byte	0xc
	.4byte	0x27100
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x2
	.byte	0x7e
	.byte	0x4
	.4byte	.LVL37
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x6
	.byte	0xc
	.4byte	0x24bf00
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xc
	.4byte	0x24bf10
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LFE11
	.2byte	0x6
	.byte	0xc
	.4byte	0x24bf00
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL21
	.2byte	0x6
	.byte	0xc
	.4byte	0x27100
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16-1
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL13
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0xc
	.4byte	0x27100
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x78
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x6
	.byte	0xc
	.4byte	0x24bf00
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0xc
	.4byte	0x25bf08
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE21
	.2byte	0x6
	.byte	0xc
	.4byte	0x25bf18
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x7c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
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
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB24
	.4byte	.LBE24
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	0
	.4byte	0
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	0
	.4byte	0
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB8
	.4byte	.LFE8
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
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB17
	.4byte	.LFE17
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
.LASF35:
	.string	"qcc74x_ef_ctrl_com_trim_t"
.LASF53:
	.string	"trim_list_len"
.LASF47:
	.string	"qcc74x_ef_ctrl_is_all_bits_zero"
.LASF17:
	.string	"uint64_t"
.LASF3:
	.string	"__uint8_t"
.LASF64:
	.string	"pefuse_start"
.LASF87:
	.string	"arch_memcpy4"
.LASF11:
	.string	"long long unsigned int"
.LASF81:
	.string	"qcc74x_irq_save"
.LASF66:
	.string	"region1_count"
.LASF24:
	.string	"sub_idx"
.LASF67:
	.string	"total_size"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF50:
	.string	"program"
.LASF83:
	.string	"arch_delay_us"
.LASF79:
	.string	"qcc74x_ef_ctrl_strlen"
.LASF39:
	.string	"rd_dat"
.LASF33:
	.string	"empty"
.LASF6:
	.string	"long int"
.LASF36:
	.string	"pd_1st"
.LASF86:
	.string	"__lshrdi3"
.LASF15:
	.string	"uint16_t"
.LASF76:
	.string	"qcc74x_ef_ctrl_switch_ahb_clk_r0"
.LASF32:
	.string	"parity"
.LASF28:
	.string	"parity_addr"
.LASF77:
	.string	"qcc74x_ef_ctrl_busy"
.LASF7:
	.string	"__uint32_t"
.LASF49:
	.string	"mask"
.LASF78:
	.string	"qcc74x_ef_ctrl_update_para"
.LASF34:
	.string	"value"
.LASF29:
	.string	"value_addr"
.LASF69:
	.string	"qcc74x_ef_ctrl_set_para"
.LASF13:
	.string	"unsigned int"
.LASF8:
	.string	"long unsigned int"
.LASF57:
	.string	"qcc74x_ef_ctrl_read_common_trim"
.LASF55:
	.string	"timeout"
.LASF21:
	.string	"name"
.LASF5:
	.string	"short unsigned int"
.LASF84:
	.string	"qcc74x_irq_restore"
.LASF46:
	.string	"qcc74x_ef_ctrl_get_byte_zero_cnt"
.LASF75:
	.string	"qcc74x_ef_ctrl_load_efuse_r0"
.LASF58:
	.string	"trim"
.LASF71:
	.string	"qcc74x_ef_ctrl_autoload_done"
.LASF59:
	.string	"reload"
.LASF54:
	.string	"irq_stat"
.LASF88:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF31:
	.string	"qcc74x_ef_ctrl_com_trim_cfg_t"
.LASF51:
	.string	"reg_val"
.LASF72:
	.string	"tmpval64"
.LASF22:
	.string	"reg_base"
.LASF42:
	.string	"ps_cs"
.LASF68:
	.string	"qcc74x_ef_ctrl_write_direct"
.LASF10:
	.string	"__uint64_t"
.LASF65:
	.string	"region0_count"
.LASF1:
	.string	"unsigned char"
.LASF30:
	.string	"value_len"
.LASF56:
	.string	"qcc74x_ef_ctrl_write_common_trim"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"__uintptr_t"
.LASF60:
	.string	"qcc74x_ef_ctrl_read_direct"
.LASF16:
	.string	"uint32_t"
.LASF23:
	.string	"irq_num"
.LASF73:
	.string	"qcc74x_ef_ctrl_clear_data_reg0"
.LASF20:
	.string	"char"
.LASF40:
	.string	"rd_dmy"
.LASF44:
	.string	"qcc74x_ef_ctrl_para_t"
.LASF4:
	.string	"__uint16_t"
.LASF74:
	.string	"qcc74x_ef_ctrl_program_efuse_r0"
.LASF63:
	.string	"count"
.LASF70:
	.string	"para"
.LASF61:
	.string	"offset"
.LASF25:
	.string	"dev_type"
.LASF43:
	.string	"wr_adr"
.LASF91:
	.string	"qcc74x_device_s"
.LASF41:
	.string	"pd_cs_h"
.LASF62:
	.string	"pword"
.LASF52:
	.string	"trim_list"
.LASF37:
	.string	"pd_cs_s"
.LASF82:
	.string	"arch_memcmp"
.LASF14:
	.string	"uint8_t"
.LASF45:
	.string	"qcc74x_ef_ctrl_get_trim_parity"
.LASF85:
	.string	"__ashldi3"
.LASF27:
	.string	"en_addr"
.LASF90:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/drivers/lhal"
.LASF89:
	.string	"./drivers/lhal/src/qcc74x_ef_ctrl.c"
.LASF48:
	.string	"start"
.LASF80:
	.string	"qcc74x_ef_ctrl_get_common_trim_list"
.LASF38:
	.string	"rd_adr"
	.ident	"GCC: (GNU) 10.4.0"
