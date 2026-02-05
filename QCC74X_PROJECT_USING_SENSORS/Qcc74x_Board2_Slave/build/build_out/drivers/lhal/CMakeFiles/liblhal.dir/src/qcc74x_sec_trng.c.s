	.file	"qcc74x_sec_trng.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_trng_read,"ax",@progbits
	.align	1
	.globl	qcc74x_trng_read
	.type	qcc74x_trng_read, @function
qcc74x_trng_read:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_sec_trng.c"
	.loc 1 21 1
	.cfi_startproc
.LVL0:
	.loc 1 25 5
	.loc 1 26 5
	.loc 1 27 5
	.loc 1 28 5
	.loc 1 33 12 is_stmt 0
	li	a5,536887296
	addi	a5,a5,512
	lw	a4,0(a5)
	.loc 1 21 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.loc 1 34 12
	ori	a4,a4,4
	.loc 1 35 60
	sw	a4,0(a5)
	.loc 1 37 12
	lw	a4,0(a5)
	.loc 1 21 1
	mv	s0,a1
.LVL1:
	.loc 1 30 5 is_stmt 1
	.loc 1 33 5
	.loc 1 34 5
	.loc 1 35 5
	.loc 1 37 5
	.loc 1 38 5
	.loc 1 38 12 is_stmt 0
	ori	a4,a4,512
.LVL2:
	.loc 1 39 5 is_stmt 1
	.loc 1 39 60 is_stmt 0
	sw	a4,0(a5)
	.loc 1 42 5 is_stmt 1
 #APP
# 42 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_sec_trng.c" 1
	nop
# 0 "" 2
	.loc 1 43 5
# 43 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_sec_trng.c" 1
	nop
# 0 "" 2
	.loc 1 44 5
# 44 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_sec_trng.c" 1
	nop
# 0 "" 2
	.loc 1 45 5
# 45 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_sec_trng.c" 1
	nop
# 0 "" 2
	.loc 1 47 5
	.loc 1 47 18 is_stmt 0
 #NO_APP
	call	qcc74x_mtimer_get_time_ms
.LVL3:
	mv	s2,a0
	mv	s3,a1
.LVL4:
	.loc 1 48 5 is_stmt 1
	.loc 1 48 13 is_stmt 0
	li	s1,536887296
	.loc 1 49 12
	li	s4,100
.L2:
	.loc 1 48 11 is_stmt 1
	.loc 1 48 13 is_stmt 0
	lw	a4,512(s1)
	addi	a5,s1,512
	.loc 1 48 68
	andi	a4,a4,1
	.loc 1 48 11
	bne	a4,zero,.L5
	.loc 1 54 5 is_stmt 1
	.loc 1 54 12 is_stmt 0
	lw	a4,0(a5)
.LVL5:
	.loc 1 55 5 is_stmt 1
	.loc 1 55 12 is_stmt 0
	ori	a4,a4,512
.LVL6:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 60 is_stmt 0
	sw	a4,0(a5)
	.loc 1 58 5 is_stmt 1
	.loc 1 58 12 is_stmt 0
	lw	a4,0(a5)
.LVL7:
	.loc 1 59 5 is_stmt 1
	.loc 1 59 12 is_stmt 0
	ori	a4,a4,2
.LVL8:
	.loc 1 60 5 is_stmt 1
	.loc 1 60 60 is_stmt 0
	sw	a4,0(a5)
	.loc 1 63 5 is_stmt 1
 #APP
# 63 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_sec_trng.c" 1
	nop
# 0 "" 2
	.loc 1 64 5
# 64 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_sec_trng.c" 1
	nop
# 0 "" 2
	.loc 1 65 5
# 65 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_sec_trng.c" 1
	nop
# 0 "" 2
	.loc 1 66 5
# 66 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_sec_trng.c" 1
	nop
# 0 "" 2
	.loc 1 68 5
	.loc 1 68 18 is_stmt 0
 #NO_APP
	call	qcc74x_mtimer_get_time_ms
.LVL9:
	mv	s2,a0
.LVL10:
	mv	s3,a1
.LVL11:
	.loc 1 69 5 is_stmt 1
	.loc 1 69 13 is_stmt 0
	li	s1,536887296
	.loc 1 70 12
	li	s4,100
.L6:
	.loc 1 69 11 is_stmt 1
	.loc 1 69 13 is_stmt 0
	lw	a4,512(s1)
	addi	a5,s1,512
	.loc 1 69 68
	andi	a4,a4,1
	.loc 1 69 11
	bne	a4,zero,.L9
	.loc 1 76 7 is_stmt 1
	.loc 1 76 15 is_stmt 0
	lw	a4,8(a5)
	.loc 1 114 12
	li	a0,0
	.loc 1 76 12
	sb	a4,0(s0)
	.loc 1 76 78 is_stmt 1
	.loc 1 76 87 is_stmt 0
	lw	a4,8(a5)
	.loc 1 76 142
	srli	a4,a4,8
	.loc 1 76 83
	sb	a4,1(s0)
	.loc 1 76 156 is_stmt 1
	.loc 1 76 165 is_stmt 0
	lw	a4,8(a5)
	.loc 1 76 220
	srli	a4,a4,16
	.loc 1 76 161
	sb	a4,2(s0)
	.loc 1 76 235 is_stmt 1
	.loc 1 76 244 is_stmt 0
	lw	a4,8(a5)
	.loc 1 76 299
	srli	a4,a4,24
	.loc 1 76 240
	sb	a4,3(s0)
	.loc 1 76 315 is_stmt 1
	.loc 1 77 5
.LVL12:
	.loc 1 78 7
	.loc 1 78 15 is_stmt 0
	lw	a4,12(a5)
	.loc 1 78 12
	sb	a4,4(s0)
	.loc 1 78 78 is_stmt 1
	.loc 1 78 87 is_stmt 0
	lw	a4,12(a5)
	.loc 1 78 142
	srli	a4,a4,8
	.loc 1 78 83
	sb	a4,5(s0)
	.loc 1 78 156 is_stmt 1
	.loc 1 78 165 is_stmt 0
	lw	a4,12(a5)
	.loc 1 78 220
	srli	a4,a4,16
	.loc 1 78 161
	sb	a4,6(s0)
	.loc 1 78 235 is_stmt 1
	.loc 1 78 244 is_stmt 0
	lw	a4,12(a5)
	.loc 1 78 299
	srli	a4,a4,24
	.loc 1 78 240
	sb	a4,7(s0)
	.loc 1 78 315 is_stmt 1
	.loc 1 79 5
.LVL13:
	.loc 1 80 7
	.loc 1 80 15 is_stmt 0
	lw	a4,16(a5)
	.loc 1 80 12
	sb	a4,8(s0)
	.loc 1 80 78 is_stmt 1
	.loc 1 80 87 is_stmt 0
	lw	a4,16(a5)
	.loc 1 80 142
	srli	a4,a4,8
	.loc 1 80 83
	sb	a4,9(s0)
	.loc 1 80 156 is_stmt 1
	.loc 1 80 165 is_stmt 0
	lw	a4,16(a5)
	.loc 1 80 220
	srli	a4,a4,16
	.loc 1 80 161
	sb	a4,10(s0)
	.loc 1 80 235 is_stmt 1
	.loc 1 80 244 is_stmt 0
	lw	a4,16(a5)
	.loc 1 80 299
	srli	a4,a4,24
	.loc 1 80 240
	sb	a4,11(s0)
	.loc 1 80 315 is_stmt 1
	.loc 1 81 5
.LVL14:
	.loc 1 82 7
	.loc 1 82 15 is_stmt 0
	lw	a4,20(a5)
	.loc 1 82 12
	sb	a4,12(s0)
	.loc 1 82 78 is_stmt 1
	.loc 1 82 87 is_stmt 0
	lw	a4,20(a5)
	.loc 1 82 142
	srli	a4,a4,8
	.loc 1 82 83
	sb	a4,13(s0)
	.loc 1 82 156 is_stmt 1
	.loc 1 82 165 is_stmt 0
	lw	a4,20(a5)
	.loc 1 82 220
	srli	a4,a4,16
	.loc 1 82 161
	sb	a4,14(s0)
	.loc 1 82 235 is_stmt 1
	.loc 1 82 244 is_stmt 0
	lw	a4,20(a5)
	.loc 1 82 299
	srli	a4,a4,24
	.loc 1 82 240
	sb	a4,15(s0)
	.loc 1 82 315 is_stmt 1
	.loc 1 83 5
.LVL15:
	.loc 1 84 7
	.loc 1 84 15 is_stmt 0
	lw	a4,24(a5)
	.loc 1 84 12
	sb	a4,16(s0)
	.loc 1 84 78 is_stmt 1
	.loc 1 84 87 is_stmt 0
	lw	a4,24(a5)
	.loc 1 84 142
	srli	a4,a4,8
	.loc 1 84 83
	sb	a4,17(s0)
	.loc 1 84 156 is_stmt 1
	.loc 1 84 165 is_stmt 0
	lw	a4,24(a5)
	.loc 1 84 220
	srli	a4,a4,16
	.loc 1 84 161
	sb	a4,18(s0)
	.loc 1 84 235 is_stmt 1
	.loc 1 84 244 is_stmt 0
	lw	a4,24(a5)
	.loc 1 84 299
	srli	a4,a4,24
	.loc 1 84 240
	sb	a4,19(s0)
	.loc 1 84 315 is_stmt 1
	.loc 1 85 5
.LVL16:
	.loc 1 86 7
	.loc 1 86 15 is_stmt 0
	lw	a4,28(a5)
	.loc 1 86 12
	sb	a4,20(s0)
	.loc 1 86 78 is_stmt 1
	.loc 1 86 87 is_stmt 0
	lw	a4,28(a5)
	.loc 1 86 142
	srli	a4,a4,8
	.loc 1 86 83
	sb	a4,21(s0)
	.loc 1 86 156 is_stmt 1
	.loc 1 86 165 is_stmt 0
	lw	a4,28(a5)
	.loc 1 86 220
	srli	a4,a4,16
	.loc 1 86 161
	sb	a4,22(s0)
	.loc 1 86 235 is_stmt 1
	.loc 1 86 244 is_stmt 0
	lw	a4,28(a5)
	.loc 1 86 299
	srli	a4,a4,24
	.loc 1 86 240
	sb	a4,23(s0)
	.loc 1 86 315 is_stmt 1
	.loc 1 87 5
.LVL17:
	.loc 1 88 7
	.loc 1 88 15 is_stmt 0
	lw	a4,32(a5)
	.loc 1 88 12
	sb	a4,24(s0)
	.loc 1 88 78 is_stmt 1
	.loc 1 88 87 is_stmt 0
	lw	a4,32(a5)
	.loc 1 88 142
	srli	a4,a4,8
	.loc 1 88 83
	sb	a4,25(s0)
	.loc 1 88 156 is_stmt 1
	.loc 1 88 165 is_stmt 0
	lw	a4,32(a5)
	.loc 1 88 220
	srli	a4,a4,16
	.loc 1 88 161
	sb	a4,26(s0)
	.loc 1 88 235 is_stmt 1
	.loc 1 88 244 is_stmt 0
	lw	a4,32(a5)
	.loc 1 88 299
	srli	a4,a4,24
	.loc 1 88 240
	sb	a4,27(s0)
	.loc 1 88 315 is_stmt 1
	.loc 1 89 5
.LVL18:
	.loc 1 90 7
	.loc 1 90 15 is_stmt 0
	lw	a4,36(a5)
	.loc 1 90 12
	sb	a4,28(s0)
	.loc 1 90 78 is_stmt 1
	.loc 1 90 87 is_stmt 0
	lw	a4,36(a5)
	.loc 1 90 142
	srli	a4,a4,8
	.loc 1 90 83
	sb	a4,29(s0)
	.loc 1 90 156 is_stmt 1
	.loc 1 90 165 is_stmt 0
	lw	a4,36(a5)
	.loc 1 90 220
	srli	a4,a4,16
	.loc 1 90 161
	sb	a4,30(s0)
	.loc 1 90 235 is_stmt 1
	.loc 1 90 244 is_stmt 0
	lw	a4,36(a5)
	.loc 1 90 299
	srli	a4,a4,24
	.loc 1 90 240
	sb	a4,31(s0)
	.loc 1 90 315 is_stmt 1
	.loc 1 91 5
.LVL19:
	.loc 1 93 5
	.loc 1 93 12 is_stmt 0
	lw	a4,0(a5)
.LVL20:
	.loc 1 94 5 is_stmt 1
	.loc 1 94 12 is_stmt 0
	andi	a4,a4,-3
.LVL21:
	.loc 1 95 5 is_stmt 1
	.loc 1 95 60 is_stmt 0
	sw	a4,0(a5)
	.loc 1 97 5 is_stmt 1
	.loc 1 97 12 is_stmt 0
	lw	a4,0(a5)
.LVL22:
	.loc 1 98 5 is_stmt 1
	.loc 1 98 12 is_stmt 0
	ori	a4,a4,8
.LVL23:
	.loc 1 99 5 is_stmt 1
	.loc 1 99 60 is_stmt 0
	sw	a4,0(a5)
	.loc 1 101 5 is_stmt 1
	.loc 1 101 12 is_stmt 0
	lw	a4,0(a5)
.LVL24:
	.loc 1 102 5 is_stmt 1
	.loc 1 102 12 is_stmt 0
	andi	a4,a4,-9
.LVL25:
	.loc 1 103 5 is_stmt 1
	.loc 1 103 60 is_stmt 0
	sw	a4,0(a5)
	.loc 1 106 5 is_stmt 1
	.loc 1 106 12 is_stmt 0
	lw	a4,0(a5)
.LVL26:
	.loc 1 107 5 is_stmt 1
	.loc 1 107 12 is_stmt 0
	andi	a4,a4,-5
.LVL27:
	.loc 1 108 5 is_stmt 1
	.loc 1 108 60 is_stmt 0
	sw	a4,0(a5)
	.loc 1 110 5 is_stmt 1
	.loc 1 110 12 is_stmt 0
	lw	a4,0(a5)
.LVL28:
	.loc 1 111 5 is_stmt 1
	.loc 1 111 12 is_stmt 0
	ori	a4,a4,512
.LVL29:
	.loc 1 112 5 is_stmt 1
	.loc 1 112 60 is_stmt 0
	sw	a4,0(a5)
	.loc 1 114 5 is_stmt 1
	.loc 1 114 12 is_stmt 0
	j	.L1
.LVL30:
.L5:
	.loc 1 49 9 is_stmt 1
	.loc 1 49 14 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL31:
	.loc 1 49 42
	sub64	a0,a0,s2
	.loc 1 49 12
	bne	a1,zero,.L7
	bgeu	s4,a0,.L2
.L7:
	.loc 1 50 20
	li	a0,-116
.LVL32:
.L1:
	.loc 1 116 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL33:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL34:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL35:
.L9:
	.cfi_restore_state
	.loc 1 70 9 is_stmt 1
	.loc 1 70 14 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL36:
	.loc 1 70 42
	sub64	a0,a0,s2
	.loc 1 70 12
	bne	a1,zero,.L7
	bgeu	s4,a0,.L6
	j	.L7
	.cfi_endproc
.LFE5:
	.size	qcc74x_trng_read, .-qcc74x_trng_read
	.section	.text.qcc74x_trng_readlen,"ax",@progbits
	.align	1
	.globl	qcc74x_trng_readlen
	.type	qcc74x_trng_readlen, @function
qcc74x_trng_readlen:
.LFB6:
	.loc 1 119 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 123 5
	.loc 1 124 5
	.loc 1 125 5
	.loc 1 127 5
	.loc 1 119 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	ra,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 119 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 124 14
	li	s0,0
	li	s3,32
.LVL38:
.L12:
	.loc 1 127 11 is_stmt 1
	bltu	s0,s1,.L16
	.loc 1 145 12 is_stmt 0
	li	a0,0
.L11:
	.loc 1 147 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL39:
	lw	s1,52(sp)
	.cfi_restore 9
.LVL40:
	lw	s2,48(sp)
	.cfi_restore 18
.LVL41:
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL42:
.L16:
	.cfi_restore_state
	.loc 1 128 9 is_stmt 1
	.loc 1 128 13 is_stmt 0
	mv	a1,sp
	li	a0,0
	call	qcc74x_trng_read
.LVL43:
	.loc 1 128 12
	bne	a0,zero,.L17
	.loc 1 132 9 is_stmt 1
	.loc 1 132 13 is_stmt 0
	sub	a4,s1,s0
	.loc 1 134 9 is_stmt 1
	bleu	a4,s3,.L14
	li	a4,32
.L14:
.LVL44:
	.loc 1 138 9
	.loc 1 138 21
	.loc 1 138 16 is_stmt 0
	li	a5,0
	.loc 1 139 31
	add	a3,s2,s0
.LVL45:
.L15:
	.loc 1 139 13 is_stmt 1 discriminator 3
	.loc 1 139 31 is_stmt 0 discriminator 3
	lrbu	a2,sp,a5,0
	srb	a2,a3,a5,0
	.loc 1 138 30 is_stmt 1 discriminator 3
	.loc 1 138 31 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL46:
	.loc 1 138 21 is_stmt 1 discriminator 3
	.loc 1 138 9 is_stmt 0 discriminator 3
	bne	a4,a5,.L15
	.loc 1 142 9 is_stmt 1
	.loc 1 142 17 is_stmt 0
	add	s0,s0,a4
.LVL47:
	j	.L12
.LVL48:
.L17:
	.loc 1 129 20
	li	a0,-116
	j	.L11
	.cfi_endproc
.LFE6:
	.size	qcc74x_trng_readlen, .-qcc74x_trng_readlen
	.section	.text.random,"ax",@progbits
	.align	1
	.weak	random
	.type	random, @function
random:
.LFB7:
	.loc 1 150 1 is_stmt 1
	.cfi_startproc
	.loc 1 154 5
	.loc 1 155 5
	.loc 1 157 5
	.loc 1 150 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 157 12
	call	qcc74x_irq_save
.LVL49:
	mv	s0,a0
.LVL50:
	.loc 1 158 5 is_stmt 1
	mv	a1,sp
	li	a0,0
	call	qcc74x_trng_read
.LVL51:
	.loc 1 159 5
	mv	a0,s0
	call	qcc74x_irq_restore
.LVL52:
	.loc 1 161 5
	.loc 1 163 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL53:
	lw	a0,0(sp)
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	random, .-random
	.section	.text.qcc74x_group0_request_trng_access,"ax",@progbits
	.align	1
	.globl	qcc74x_group0_request_trng_access
	.type	qcc74x_group0_request_trng_access, @function
qcc74x_group0_request_trng_access:
.LFB8:
	.loc 1 166 1 is_stmt 1
	.cfi_startproc
.LVL54:
	.loc 1 170 5
	.loc 1 171 5
	.loc 1 173 5
	.loc 1 175 5
	.loc 1 175 12 is_stmt 0
	li	a4,536891392
	lw	a5,-256(a4)
.LVL55:
	.loc 1 176 5 is_stmt 1
	.loc 1 176 8 is_stmt 0
	li	a3,3
	.loc 1 176 24
	extu	a5,a5,4+2-1,4
.LVL56:
	.loc 1 176 8
	bne	a5,a3,.L22
	.loc 1 177 9 is_stmt 1
	.loc 1 177 64 is_stmt 0
	li	a5,536887296
	li	a3,2
	sw	a3,764(a5)
	.loc 1 179 9 is_stmt 1
	.loc 1 179 16 is_stmt 0
	lw	a5,-256(a4)
	.loc 1 180 9 is_stmt 1
	.loc 1 181 9
.L22:
	.loc 1 184 1 is_stmt 0
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_group0_request_trng_access, .-qcc74x_group0_request_trng_access
	.section	.text.qcc74x_group0_release_trng_access,"ax",@progbits
	.align	1
	.globl	qcc74x_group0_release_trng_access
	.type	qcc74x_group0_release_trng_access, @function
qcc74x_group0_release_trng_access:
.LFB9:
	.loc 1 187 1 is_stmt 1
	.cfi_startproc
.LVL57:
	.loc 1 191 5
	.loc 1 193 5
	.loc 1 195 5
	.loc 1 195 60 is_stmt 0
	li	a5,536887296
	li	a4,6
	sw	a4,764(a5)
	.loc 1 197 1
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_group0_release_trng_access, .-qcc74x_group0_release_trng_access
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdlib.h"
	.file 6 "./drivers/lhal/include/qcc74x_irq.h"
	.file 7 "./drivers/lhal/include/qcc74x_mtimer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3a6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF38
	.byte	0xc
	.4byte	.LASF39
	.4byte	.LASF40
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
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x7a
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
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x6e
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
	.4byte	.LASF41
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
	.4byte	0xa7
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
	.4byte	.LASF24
	.byte	0x1
	.byte	0xba
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x17d
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0xba
	.byte	0x40
	.4byte	0x17d
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0xbf
	.byte	0xe
	.4byte	0xa7
	.4byte	0x20004000
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xdf
	.byte	0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa5
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c8
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.byte	0xa5
	.byte	0x40
	.4byte	0x17d
	.byte	0x1
	.byte	0x5a
	.byte	0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0xaa
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST11
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0xab
	.byte	0xe
	.4byte	0xa7
	.4byte	0x20004000
	.byte	0
	.byte	0xf
	.4byte	.LASF29
	.byte	0x5
	.2byte	0x102
	.byte	0x6
	.4byte	0x4d
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x235
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x9a
	.byte	0xe
	.4byte	0x235
	.byte	0x2
	.byte	0x91
	.byte	0x50
	.byte	0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x9b
	.byte	0xf
	.4byte	0xbf
	.4byte	.LLST10
	.byte	0x11
	.4byte	.LVL49
	.4byte	0x385
	.byte	0x12
	.4byte	.LVL51
	.4byte	0x2e8
	.4byte	0x224
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL52
	.4byte	0x391
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	0xa7
	.4byte	0x245
	.byte	0x16
	.4byte	0x94
	.byte	0x7
	.byte	0
	.byte	0x17
	.4byte	.LASF30
	.byte	0x1
	.byte	0x76
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d2
	.byte	0x18
	.4byte	.LASF27
	.byte	0x1
	.byte	0x76
	.byte	0x22
	.4byte	0x2d2
	.4byte	.LLST5
	.byte	0x19
	.string	"len"
	.byte	0x1
	.byte	0x76
	.byte	0x31
	.4byte	0xa7
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x7b
	.byte	0xd
	.4byte	0x2d8
	.byte	0x2
	.byte	0x91
	.byte	0x40
	.byte	0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7c
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST7
	.byte	0x1a
	.string	"i"
	.byte	0x1
	.byte	0x7d
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST8
	.byte	0x1a
	.string	"cnt"
	.byte	0x1
	.byte	0x7d
	.byte	0x15
	.4byte	0xa7
	.4byte	.LLST9
	.byte	0x14
	.4byte	.LVL43
	.4byte	0x2e8
	.byte	0x13
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x13
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x9b
	.byte	0x15
	.4byte	0x9b
	.4byte	0x2e8
	.byte	0x16
	.4byte	0x94
	.byte	0x1f
	.byte	0
	.byte	0x17
	.4byte	.LASF33
	.byte	0x1
	.byte	0x14
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x385
	.byte	0x19
	.string	"dev"
	.byte	0x1
	.byte	0x14
	.byte	0x2e
	.4byte	0x17d
	.4byte	.LLST0
	.byte	0x18
	.4byte	.LASF27
	.byte	0x1
	.byte	0x14
	.byte	0x3b
	.4byte	0x2d2
	.4byte	.LLST1
	.byte	0xe
	.4byte	.LASF26
	.byte	0x1
	.byte	0x19
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST2
	.byte	0xd
	.4byte	.LASF19
	.byte	0x1
	.byte	0x1a
	.byte	0xe
	.4byte	0xa7
	.4byte	0x20004000
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST3
	.byte	0x1a
	.string	"p"
	.byte	0x1
	.byte	0x1c
	.byte	0xe
	.4byte	0x2d2
	.4byte	.LLST4
	.byte	0x11
	.4byte	.LVL3
	.4byte	0x39d
	.byte	0x11
	.4byte	.LVL9
	.4byte	0x39d
	.byte	0x11
	.4byte	.LVL31
	.4byte	0x39d
	.byte	0x11
	.4byte	.LVL36
	.4byte	0x39d
	.byte	0
	.byte	0x1b
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x6
	.byte	0x2e
	.byte	0xb
	.byte	0x1b
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x35
	.byte	0x6
	.byte	0x1b
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x3c
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
	.byte	0x18
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
	.byte	0x1c
	.byte	0x6
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
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
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x2
	.byte	0x17
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST11:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3-1
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
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL5
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL20
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL10
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	.LVL11
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	.LVL35
	.4byte	.LFE5
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x78
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x3
	.byte	0x78
	.byte	0x8
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x78
	.byte	0xc
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x3
	.byte	0x78
	.byte	0x10
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x3
	.byte	0x78
	.byte	0x14
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x78
	.byte	0x18
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x78
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x78
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL35
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF34:
	.string	"start_time"
.LASF5:
	.string	"__uint8_t"
.LASF33:
	.string	"qcc74x_trng_read"
.LASF30:
	.string	"qcc74x_trng_readlen"
.LASF16:
	.string	"uintptr_t"
.LASF11:
	.string	"__uintptr_t"
.LASF4:
	.string	"long int"
.LASF36:
	.string	"qcc74x_irq_restore"
.LASF15:
	.string	"uint64_t"
.LASF29:
	.string	"random"
.LASF27:
	.string	"data"
.LASF23:
	.string	"user_data"
.LASF1:
	.string	"unsigned char"
.LASF41:
	.string	"qcc74x_device_s"
.LASF39:
	.string	"./drivers/lhal/src/qcc74x_sec_trng.c"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF24:
	.string	"qcc74x_group0_release_trng_access"
.LASF22:
	.string	"dev_type"
.LASF21:
	.string	"sub_idx"
.LASF6:
	.string	"__uint32_t"
.LASF40:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/lhal"
.LASF28:
	.string	"flag"
.LASF12:
	.string	"unsigned int"
.LASF32:
	.string	"readlen"
.LASF10:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint8_t"
.LASF19:
	.string	"reg_base"
.LASF25:
	.string	"qcc74x_group0_request_trng_access"
.LASF8:
	.string	"long long int"
.LASF35:
	.string	"qcc74x_irq_save"
.LASF37:
	.string	"qcc74x_mtimer_get_time_ms"
.LASF18:
	.string	"name"
.LASF2:
	.string	"short int"
.LASF9:
	.string	"__uint64_t"
.LASF26:
	.string	"regval"
.LASF14:
	.string	"uint32_t"
.LASF31:
	.string	"tmp_buf"
.LASF17:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF20:
	.string	"irq_num"
	.ident	"GCC: (GNU) 10.4.0"
