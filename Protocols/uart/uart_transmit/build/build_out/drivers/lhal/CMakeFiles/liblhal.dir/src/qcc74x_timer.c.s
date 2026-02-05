	.file	"qcc74x_timer.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_timer_deinit,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_deinit
	.type	qcc74x_timer_deinit, @function
qcc74x_timer_deinit:
.LFB243:
	.file 1 "./drivers/lhal/src/qcc74x_timer.c"
	.loc 1 113 1
	.cfi_startproc
.LVL0:
	.loc 1 117 5
	.loc 1 118 5
	.loc 1 120 5
	.loc 1 122 5
	.loc 1 123 26 is_stmt 0
	lbu	a5,9(a0)
	.loc 1 122 58
	lw	a3,4(a0)
	.loc 1 123 32
	addi	a4,a5,1
	.loc 1 122 12
	lw	a2,132(a3)
.LVL1:
	.loc 1 123 5 is_stmt 1
	.loc 1 123 19 is_stmt 0
	li	a5,1
	sll	a5,a5,a4
	.loc 1 123 15
	not	a5,a5
	.loc 1 123 12
	and	a5,a5,a2
.LVL2:
	.loc 1 124 5 is_stmt 1
	.loc 1 124 59 is_stmt 0
	sw	a5,132(a3)
.LVL3:
	.loc 1 126 1
	ret
	.cfi_endproc
.LFE243:
	.size	qcc74x_timer_deinit, .-qcc74x_timer_deinit
	.section	.text.qcc74x_timer_start,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_start
	.type	qcc74x_timer_start, @function
qcc74x_timer_start:
.LFB244:
	.loc 1 129 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 133 5
	.loc 1 134 5
	.loc 1 136 5
	.loc 1 138 5
	.loc 1 138 58 is_stmt 0
	lw	a3,4(a0)
	.loc 1 139 25
	lbu	a5,9(a0)
	.loc 1 138 12
	lw	a2,132(a3)
.LVL5:
	.loc 1 139 5 is_stmt 1
	.loc 1 139 31 is_stmt 0
	addi	a4,a5,1
	.loc 1 139 18
	li	a5,1
	sll	a5,a5,a4
	.loc 1 139 12
	or	a5,a5,a2
.LVL6:
	.loc 1 140 5 is_stmt 1
	.loc 1 140 59 is_stmt 0
	sw	a5,132(a3)
.LVL7:
	.loc 1 142 1
	ret
	.cfi_endproc
.LFE244:
	.size	qcc74x_timer_start, .-qcc74x_timer_start
	.section	.text.qcc74x_timer_stop,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_stop
	.type	qcc74x_timer_stop, @function
qcc74x_timer_stop:
.LFB256:
	.cfi_startproc
	tail	qcc74x_timer_deinit
	.cfi_endproc
.LFE256:
	.size	qcc74x_timer_stop, .-qcc74x_timer_stop
	.section	.text.qcc74x_timer_set_preloadvalue,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_set_preloadvalue
	.type	qcc74x_timer_set_preloadvalue, @function
qcc74x_timer_set_preloadvalue:
.LFB246:
	.loc 1 161 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 165 5
	.loc 1 167 5
	.loc 1 169 5
	.loc 1 169 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 169 67
	lbu	a4,9(a0)
	.loc 1 169 58
	addi	a5,a5,80
	.loc 1 169 74
	srw	a1,a5,a4,2
.LVL9:
	.loc 1 171 1
	ret
	.cfi_endproc
.LFE246:
	.size	qcc74x_timer_set_preloadvalue, .-qcc74x_timer_set_preloadvalue
	.section	.text.qcc74x_timer_set_compvalue,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_set_compvalue
	.type	qcc74x_timer_set_compvalue, @function
qcc74x_timer_set_compvalue:
.LFB247:
	.loc 1 174 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 178 5
	.loc 1 180 5
	.loc 1 182 5
	.loc 1 182 70 is_stmt 0
	lbu	a4,9(a0)
	.loc 1 182 65
	li	a3,12
	.loc 1 182 76
	lw	a5,4(a0)
	.loc 1 182 65
	mul	a4,a4,a3
	.loc 1 182 76
	addi	a5,a5,16
	addsl	a5, a5, a1, 2
	.loc 1 182 90
	srw	a2,a5,a4,0
.LVL11:
	.loc 1 184 1
	ret
	.cfi_endproc
.LFE247:
	.size	qcc74x_timer_set_compvalue, .-qcc74x_timer_set_compvalue
	.section	.text.qcc74x_timer_get_compvalue,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_get_compvalue
	.type	qcc74x_timer_get_compvalue, @function
qcc74x_timer_get_compvalue:
.LFB248:
	.loc 1 187 1 is_stmt 1
	.cfi_startproc
.LVL12:
	.loc 1 191 5
	.loc 1 193 5
	.loc 1 195 5
	.loc 1 195 77 is_stmt 0
	lbu	a4,9(a0)
	.loc 1 195 72
	li	a3,12
	.loc 1 195 83
	lw	a5,4(a0)
	.loc 1 195 72
	mul	a4,a4,a3
	.loc 1 195 83
	addi	a5,a5,16
	addsl	a5, a5, a1, 2
	.loc 1 195 13
	lrw	a0,a5,a4,0
.LVL13:
	.loc 1 197 1
	ret
	.cfi_endproc
.LFE248:
	.size	qcc74x_timer_get_compvalue, .-qcc74x_timer_get_compvalue
	.section	.text.qcc74x_timer_get_countervalue,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_get_countervalue
	.type	qcc74x_timer_get_countervalue, @function
qcc74x_timer_get_countervalue:
.LFB249:
	.loc 1 200 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 204 5
	.loc 1 206 5
	.loc 1 208 5
	.loc 1 208 65 is_stmt 0
	lw	a5,4(a0)
	.loc 1 208 74
	lbu	a4,9(a0)
	.loc 1 208 65
	addi	a5,a5,44
	.loc 1 208 13
	lrw	a0,a5,a4,2
.LVL15:
	.loc 1 210 1
	ret
	.cfi_endproc
.LFE249:
	.size	qcc74x_timer_get_countervalue, .-qcc74x_timer_get_countervalue
	.section	.text.qcc74x_timer_compint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_compint_mask
	.type	qcc74x_timer_compint_mask, @function
qcc74x_timer_compint_mask:
.LFB250:
	.loc 1 213 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 217 5
	.loc 1 218 5
	.loc 1 220 5
	.loc 1 221 5
	.loc 1 221 67 is_stmt 0
	lw	a4,4(a0)
	.loc 1 221 76
	lbu	a3,9(a0)
	.loc 1 223 23
	li	a5,1
	.loc 1 221 67
	addi	a4,a4,68
	.loc 1 221 12
	lrw	a0,a4,a3,2
.LVL17:
	.loc 1 222 5 is_stmt 1
	.loc 1 223 23 is_stmt 0
	sll	a1,a5,a1
.LVL18:
	.loc 1 225 16
	or	a5,a1,a0
	.loc 1 222 8
	beq	a2,zero,.L10
	.loc 1 223 9 is_stmt 1
	.loc 1 223 19 is_stmt 0
	not	a1,a1
	.loc 1 223 16
	and	a5,a1,a0
.LVL19:
.L10:
	.loc 1 227 5 is_stmt 1
	.loc 1 227 74 is_stmt 0
	srw	a5,a4,a3,2
	.loc 1 229 1
	ret
	.cfi_endproc
.LFE250:
	.size	qcc74x_timer_compint_mask, .-qcc74x_timer_compint_mask
	.section	.text.qcc74x_timer_get_compint_status,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_get_compint_status
	.type	qcc74x_timer_get_compint_status, @function
qcc74x_timer_get_compint_status:
.LFB251:
	.loc 1 232 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 236 5
	.loc 1 237 5
	.loc 1 239 5
	.loc 1 240 5
	.loc 1 240 67 is_stmt 0
	lw	a5,4(a0)
	.loc 1 240 76
	lbu	a4,9(a0)
	.loc 1 242 21
	li	a0,1
.LVL21:
	.loc 1 240 67
	addi	a5,a5,56
.LVL22:
	.loc 1 240 12
	lrw	a5,a5,a4,2
.LVL23:
	.loc 1 242 5 is_stmt 1
	.loc 1 242 21 is_stmt 0
	sll	a0,a0,a1
	.loc 1 242 16
	and	a0,a0,a5
	.loc 1 248 1
	snez	a0,a0
	ret
	.cfi_endproc
.LFE251:
	.size	qcc74x_timer_get_compint_status, .-qcc74x_timer_get_compint_status
	.section	.text.qcc74x_timer_compint_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_compint_clear
	.type	qcc74x_timer_compint_clear, @function
qcc74x_timer_compint_clear:
.LFB252:
	.loc 1 251 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 255 5
	.loc 1 256 5
	.loc 1 258 5
	.loc 1 259 5
	.loc 1 259 67 is_stmt 0
	lw	a4,4(a0)
	.loc 1 259 76
	lbu	a3,9(a0)
	.loc 1 260 18
	li	a5,1
	.loc 1 259 67
	addi	a4,a4,120
	.loc 1 259 12
	lrw	a2,a4,a3,2
.LVL25:
	.loc 1 260 5 is_stmt 1
	.loc 1 260 18 is_stmt 0
	sll	a5,a5,a1
	.loc 1 260 12
	or	a5,a5,a2
.LVL26:
	.loc 1 261 5 is_stmt 1
	.loc 1 261 74 is_stmt 0
	srw	a5,a4,a3,2
.LVL27:
	.loc 1 263 1
	ret
	.cfi_endproc
.LFE252:
	.size	qcc74x_timer_compint_clear, .-qcc74x_timer_compint_clear
	.section	.text.qcc74x_timer_init,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_init
	.type	qcc74x_timer_init, @function
qcc74x_timer_init:
.LFB242:
	.loc 1 11 1 is_stmt 1
	.cfi_startproc
.LVL28:
	.loc 1 12 5
	.loc 1 13 5
	.loc 1 14 5
	.loc 1 15 5
	.loc 1 16 5
	.loc 1 18 5
	.loc 1 18 8 is_stmt 0
	lw	a4,4(a1)
	li	a5,1
	bleu	a4,a5,.L15
	.loc 1 18 37 discriminator 1
	lw	a4,8(a1)
	bleu	a4,a5,.L15
	.loc 1 19 37
	lw	a4,12(a1)
	bgtu	a4,a5,.L16
.L15:
	.loc 1 21 9 is_stmt 1
.LVL29:
.LBB4:
.LBB5:
	.file 2 "./drivers/lhal/include/qcc74x_common.h"
	.loc 2 160 5
 #APP
# 160 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/qcc74x_common.h" 1
	ebreak
# 0 "" 2
 #NO_APP
.L17:
	.loc 2 161 5
	.loc 2 162 9
	.loc 2 161 11
	j	.L17
.LVL30:
.L16:
.LBE5:
.LBE4:
	.loc 1 11 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 34 26
	lbu	a4,9(a0)
	.loc 1 30 14
	lw	s2,4(a0)
	mv	s1,a1
	.loc 1 27 5 is_stmt 1
	.loc 1 28 5
	.loc 1 30 5
.LVL31:
	.loc 1 33 5
	.loc 1 34 32 is_stmt 0
	addi	a4,a4,1
	.loc 1 33 12
	lw	a3,132(s2)
.LVL32:
	.loc 1 34 5 is_stmt 1
	.loc 1 34 19 is_stmt 0
	sll	a5,a5,a4
	.loc 1 34 15
	not	a5,a5
	.loc 1 34 12
	and	a5,a5,a3
.LVL33:
	.loc 1 35 5 is_stmt 1
	.loc 1 35 59 is_stmt 0
	sw	a5,132(s2)
	.loc 1 38 5 is_stmt 1
	li	a1,0
.LVL34:
	mv	s0,a0
	call	qcc74x_timer_compint_clear
.LVL35:
	.loc 1 39 5
	li	a1,1
	mv	a0,s0
	call	qcc74x_timer_compint_clear
.LVL36:
	.loc 1 40 5
	li	a1,2
	mv	a0,s0
	call	qcc74x_timer_compint_clear
.LVL37:
	.loc 1 43 5
	.loc 1 44 12 is_stmt 0
	lbu	a3,9(s0)
	.loc 1 43 12
	lw	a4,0(s2)
.LVL38:
	.loc 1 44 5 is_stmt 1
	lbu	a5,1(s1)
	.loc 1 44 8 is_stmt 0
	bne	a3,zero,.L18
	.loc 1 45 9 is_stmt 1
	.loc 1 45 16 is_stmt 0
	andi	a4,a4,-16
.LVL39:
	.loc 1 46 9 is_stmt 1
.L29:
	.loc 1 49 16 is_stmt 0
	or	a5,a5,a4
.LVL40:
	.loc 1 51 5 is_stmt 1
	.loc 1 51 58 is_stmt 0
	sw	a5,0(s2)
	.loc 1 54 5 is_stmt 1
	.loc 1 55 35 is_stmt 0
	slli	a4,a3,3
	.loc 1 55 31
	addi	a2,a4,8
	.loc 1 54 12
	lw	a1,188(s2)
.LVL41:
	.loc 1 55 5 is_stmt 1
	.loc 1 56 22 is_stmt 0
	lbu	a4,2(s1)
	.loc 1 55 22
	li	a5,255
	sll	a5,a5,a2
	.loc 1 55 15
	not	a5,a5
	.loc 1 56 34
	sll	a4,a4,a2
	.loc 1 55 12
	and	a5,a5,a1
.LVL42:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 12 is_stmt 0
	or	a5,a4,a5
.LVL43:
	.loc 1 57 5 is_stmt 1
	.loc 1 57 59 is_stmt 0
	sw	a5,188(s2)
	.loc 1 60 5 is_stmt 1
	.loc 1 60 12 is_stmt 0
	lw	a1,136(s2)
.LVL44:
	.loc 1 61 5 is_stmt 1
	.loc 1 61 15 is_stmt 0
	lbu	a2,0(s1)
	.loc 1 62 29
	addi	a4,a3,1
	.loc 1 62 23
	li	a5,1
	sll	a5,a5,a4
	.loc 1 64 16
	or	a4,a5,a1
	.loc 1 61 8
	bne	a2,zero,.L21
	.loc 1 62 9 is_stmt 1
	.loc 1 62 19 is_stmt 0
	not	a5,a5
	.loc 1 62 16
	and	a4,a5,a1
.LVL45:
.L21:
	.loc 1 66 5 is_stmt 1
	.loc 1 66 59 is_stmt 0
	sw	a4,136(s2)
	.loc 1 69 5 is_stmt 1
	.loc 1 69 67 is_stmt 0
	addi	s2,s2,92
.LVL46:
	.loc 1 69 12
	lrw	a5,s2,a3,2
.LVL47:
	.loc 1 70 5 is_stmt 1
	.loc 1 71 15 is_stmt 0
	lbu	a4,3(s1)
	.loc 1 71 8
	li	a1,3
	.loc 1 70 12
	andi	a5,a5,-4
.LVL48:
	.loc 1 71 5 is_stmt 1
	.loc 1 71 8 is_stmt 0
	beq	a4,a1,.L22
	.loc 1 72 9 is_stmt 1
	.loc 1 72 50 is_stmt 0
	addi	a4,a4,1
	.loc 1 72 16
	or	a5,a5,a4
.LVL49:
.L22:
	.loc 1 74 5 is_stmt 1
	.loc 1 74 74 is_stmt 0
	srw	a5,s2,a3,2
	.loc 1 76 5 is_stmt 1
	.loc 1 76 8 is_stmt 0
	bne	a2,zero,.L23
	.loc 1 77 9 is_stmt 1
	lw	a1,16(s1)
	mv	a0,s0
	call	qcc74x_timer_set_preloadvalue
.LVL50:
.L23:
	.loc 1 80 5
	.loc 1 80 15 is_stmt 0
	lbu	a5,3(s1)
	.loc 1 80 8
	bne	a5,zero,.L24
	.loc 1 81 9 is_stmt 1
	li	a2,0
	li	a1,0
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL51:
	.loc 1 82 9
	li	a2,1
	li	a1,1
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL52:
	.loc 1 83 9
	li	a2,1
	li	a1,2
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL53:
	.loc 1 84 9
	lw	a2,4(s1)
	addi	a2,a2,-2
.L30:
	.loc 1 105 9 is_stmt 0
	li	a1,0
	mv	a0,s0
	call	qcc74x_timer_set_compvalue
.LVL54:
	.loc 1 106 9 is_stmt 1
	li	a2,-1
	j	.L32
.LVL55:
.L18:
	.loc 1 48 9
	.loc 1 48 16 is_stmt 0
	andi	a4,a4,-241
.LVL56:
	.loc 1 49 9 is_stmt 1
	.loc 1 49 41 is_stmt 0
	slli	a5,a5,4
	j	.L29
.LVL57:
.L24:
	.loc 1 87 12 is_stmt 1
	.loc 1 87 15 is_stmt 0
	li	a4,1
	bne	a5,a4,.L25
	.loc 1 88 9 is_stmt 1
	li	a2,0
	li	a1,0
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL58:
	.loc 1 89 9
	li	a2,0
	li	a1,1
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL59:
	.loc 1 90 9
	li	a2,1
	li	a1,2
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL60:
	.loc 1 91 9
	lw	a2,4(s1)
	li	a1,0
	mv	a0,s0
	addi	a2,a2,-2
	call	qcc74x_timer_set_compvalue
.LVL61:
	.loc 1 92 9
	lw	a2,8(s1)
	addi	a2,a2,-2
.L32:
	.loc 1 106 9 is_stmt 0
	li	a1,1
	mv	a0,s0
	call	qcc74x_timer_set_compvalue
.LVL62:
	.loc 1 107 9 is_stmt 1
	li	a2,-1
	j	.L31
.L25:
	.loc 1 94 12
	.loc 1 94 15 is_stmt 0
	li	a4,2
	bne	a5,a4,.L26
	.loc 1 95 9 is_stmt 1
	li	a2,0
	li	a1,0
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL63:
	.loc 1 96 9
	li	a2,0
	li	a1,1
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL64:
	.loc 1 97 9
	li	a2,0
	li	a1,2
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL65:
	.loc 1 98 9
	lw	a2,4(s1)
	li	a1,0
	mv	a0,s0
	addi	a2,a2,-2
	call	qcc74x_timer_set_compvalue
.LVL66:
	.loc 1 99 9
	lw	a2,8(s1)
	li	a1,1
	mv	a0,s0
	addi	a2,a2,-2
	call	qcc74x_timer_set_compvalue
.LVL67:
	.loc 1 100 9
	lw	a2,12(s1)
	addi	a2,a2,-2
.L31:
	.loc 1 107 9 is_stmt 0
	mv	a0,s0
	.loc 1 110 1
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL68:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL69:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL70:
	.loc 1 107 9
	li	a1,2
	.loc 1 110 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 107 9
	tail	qcc74x_timer_set_compvalue
.LVL71:
.L26:
	.cfi_restore_state
	.loc 1 102 9 is_stmt 1
	li	a2,1
	li	a1,0
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL72:
	.loc 1 103 9
	li	a2,1
	li	a1,1
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL73:
	.loc 1 104 9
	li	a2,1
	li	a1,2
	mv	a0,s0
	call	qcc74x_timer_compint_mask
.LVL74:
	.loc 1 105 9
	li	a2,-1
	j	.L30
	.cfi_endproc
.LFE242:
	.size	qcc74x_timer_init, .-qcc74x_timer_init
	.section	.text.qcc74x_timer_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_feature_control
	.type	qcc74x_timer_feature_control, @function
qcc74x_timer_feature_control:
.LFB253:
	.loc 1 266 1
	.cfi_startproc
.LVL75:
	.loc 1 270 5
	.loc 1 278 5
	.loc 1 411 13
	.loc 1 412 13
	.loc 1 415 5
	.loc 1 417 1 is_stmt 0
	li	a0,-1
.LVL76:
	ret
	.cfi_endproc
.LFE253:
	.size	qcc74x_timer_feature_control, .-qcc74x_timer_feature_control
	.section	.rodata.qcc74x_timer_capture_init.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"gpio"
	.section	.text.qcc74x_timer_capture_init,"ax",@progbits
	.align	1
	.globl	qcc74x_timer_capture_init
	.type	qcc74x_timer_capture_init, @function
qcc74x_timer_capture_init:
.LFB254:
	.loc 1 571 1 is_stmt 1
	.cfi_startproc
.LVL77:
	.loc 1 575 5
	.loc 1 576 5
	.loc 1 577 5
	.loc 1 579 5
	.loc 1 571 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 579 14
	lw	s1,4(a0)
.LVL78:
	.loc 1 580 5 is_stmt 1
	.loc 1 571 1 is_stmt 0
	mv	s2,a0
	.loc 1 580 5
	lbu	a0,0(a1)
.LVL79:
	.loc 1 571 1
	mv	s0,a1
	.loc 1 580 5
	call	GLB_Sel_MCU_TMR_GPIO_Clock
.LVL80:
	.loc 1 581 5 is_stmt 1
	.loc 1 581 12 is_stmt 0
	lui	a0,%hi(.LC0)
	addi	a0,a0,%lo(.LC0)
	call	qcc74x_device_get_by_name
.LVL81:
	.loc 1 582 5 is_stmt 1
	lbu	a1,0(s0)
	li	a2,8192
	addi	a2,a2,-1761
	call	qcc74x_gpio_init
.LVL82:
	.loc 1 584 5
	lbu	a3,9(s2)
	.loc 1 586 8 is_stmt 0
	lbu	a2,1(s0)
	.loc 1 584 12
	lw	a5,192(s1)
.LVL83:
	.loc 1 586 5 is_stmt 1
	.loc 1 586 8 is_stmt 0
	li	a4,1
	.loc 1 587 28
	addi	a3,a3,5
	.loc 1 586 8
	bne	a2,a4,.L35
	.loc 1 587 9 is_stmt 1
	.loc 1 587 22 is_stmt 0
	sll	a3,a2,a3
	.loc 1 587 16
	or	a5,a3,a5
.LVL84:
.L36:
	.loc 1 591 5 is_stmt 1
	.loc 1 594 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL85:
	.loc 1 591 12
	ori	a5,a5,2
.LVL86:
	.loc 1 592 5 is_stmt 1
	.loc 1 592 59 is_stmt 0
	sw	a5,192(s1)
	.loc 1 594 1
	lw	s2,0(sp)
	.cfi_restore 18
.LVL87:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL88:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL89:
.L35:
	.cfi_restore_state
	.loc 1 589 9 is_stmt 1
	.loc 1 589 23 is_stmt 0
	sll	a4,a4,a3
	.loc 1 589 19
	not	a4,a4
	.loc 1 589 16
	and	a5,a4,a5
.LVL90:
	j	.L36
	.cfi_endproc
.LFE254:
	.size	qcc74x_timer_capture_init, .-qcc74x_timer_capture_init
	.text
.Letext0:
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 6 "./drivers/lhal/include/qcc74x_core.h"
	.file 7 "./drivers/lhal/include/qcc74x_timer.h"
	.file 8 "./drivers/soc/qcc743/std/include/qcc743_glb.h"
	.file 9 "./drivers/lhal/include/qcc74x_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x996
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
	.byte	0x3
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
	.byte	0x3
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
	.byte	0x3
	.byte	0xe8
	.byte	0x16
	.4byte	0x88
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0x7c
	.byte	0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0xd1
	.byte	0x16
	.4byte	0x88
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.byte	0x6
	.4byte	0xc1
	.byte	0x7
	.byte	0x4
	.4byte	0xc8
	.byte	0x8
	.4byte	.LASF23
	.byte	0x10
	.byte	0x6
	.byte	0x67
	.byte	0x8
	.4byte	0x13c
	.byte	0x9
	.4byte	.LASF17
	.byte	0x6
	.byte	0x68
	.byte	0x11
	.4byte	0xcd
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x6
	.byte	0x69
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF19
	.byte	0x6
	.byte	0x6a
	.byte	0xd
	.4byte	0x8f
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x6
	.byte	0x6b
	.byte	0xd
	.4byte	0x8f
	.byte	0x9
	.byte	0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x6c
	.byte	0xd
	.4byte	0x8f
	.byte	0xa
	.byte	0x9
	.4byte	.LASF21
	.byte	0x6
	.byte	0x6d
	.byte	0xd
	.4byte	0x8f
	.byte	0xb
	.byte	0x9
	.4byte	.LASF22
	.byte	0x6
	.byte	0x6e
	.byte	0xb
	.4byte	0xbf
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF24
	.byte	0x14
	.byte	0x7
	.byte	0x93
	.byte	0x8
	.4byte	0x1b2
	.byte	0x9
	.4byte	.LASF25
	.byte	0x7
	.byte	0x94
	.byte	0xd
	.4byte	0x8f
	.byte	0
	.byte	0x9
	.4byte	.LASF26
	.byte	0x7
	.byte	0x95
	.byte	0xd
	.4byte	0x8f
	.byte	0x1
	.byte	0x9
	.4byte	.LASF27
	.byte	0x7
	.byte	0x96
	.byte	0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0x9
	.4byte	.LASF28
	.byte	0x7
	.byte	0x97
	.byte	0xd
	.4byte	0x8f
	.byte	0x3
	.byte	0x9
	.4byte	.LASF29
	.byte	0x7
	.byte	0x98
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF30
	.byte	0x7
	.byte	0x99
	.byte	0xe
	.4byte	0x9b
	.byte	0x8
	.byte	0x9
	.4byte	.LASF31
	.byte	0x7
	.byte	0x9a
	.byte	0xe
	.4byte	0x9b
	.byte	0xc
	.byte	0x9
	.4byte	.LASF32
	.byte	0x7
	.byte	0x9b
	.byte	0xe
	.4byte	0x9b
	.byte	0x10
	.byte	0
	.byte	0x6
	.4byte	0x13c
	.byte	0x8
	.4byte	.LASF33
	.byte	0x2
	.byte	0x7
	.byte	0xc1
	.byte	0x8
	.4byte	0x1df
	.byte	0xa
	.string	"pin"
	.byte	0x7
	.byte	0xc2
	.byte	0xd
	.4byte	0x8f
	.byte	0
	.byte	0x9
	.4byte	.LASF34
	.byte	0x7
	.byte	0xc3
	.byte	0xd
	.4byte	0x8f
	.byte	0x1
	.byte	0
	.byte	0x6
	.4byte	0x1b7
	.byte	0xb
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x23a
	.byte	0x6
	.4byte	.LFB254
	.4byte	.LFE254-.LFB254
	.byte	0x1
	.byte	0x9c
	.4byte	0x280
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x23a
	.byte	0x38
	.4byte	0x280
	.4byte	.LLST27
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x23a
	.byte	0x69
	.4byte	0x286
	.4byte	.LLST28
	.byte	0xe
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x23f
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0xf
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x240
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST29
	.byte	0xf
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x241
	.byte	0x1d
	.4byte	0x280
	.4byte	.LLST30
	.byte	0x10
	.4byte	.LVL80
	.4byte	0x91f
	.byte	0x11
	.4byte	.LVL81
	.4byte	0x92c
	.4byte	0x26e
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0x13
	.4byte	.LVL82
	.4byte	0x938
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x191f
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xd3
	.byte	0x7
	.byte	0x4
	.4byte	0x1df
	.byte	0x14
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x109
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.byte	0x1
	.byte	0x9c
	.4byte	0x2e5
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x109
	.byte	0x3a
	.4byte	0x280
	.4byte	.LLST26
	.byte	0x15
	.string	"cmd"
	.byte	0x1
	.2byte	0x109
	.byte	0x43
	.4byte	0x75
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.string	"arg"
	.byte	0x1
	.2byte	0x109
	.byte	0x4f
	.4byte	0xb3
	.byte	0x1
	.byte	0x5c
	.byte	0x16
	.string	"ret"
	.byte	0x1
	.2byte	0x10e
	.byte	0x9
	.4byte	0x75
	.byte	0x7f
	.byte	0
	.byte	0x17
	.4byte	.LASF39
	.byte	0x1
	.byte	0xfa
	.byte	0x6
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.byte	0x1
	.byte	0x9c
	.4byte	0x339
	.byte	0x18
	.string	"dev"
	.byte	0x1
	.byte	0xfa
	.byte	0x39
	.4byte	0x280
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0xfa
	.byte	0x46
	.4byte	0x8f
	.byte	0x1
	.byte	0x5b
	.byte	0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0xff
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST16
	.byte	0xf
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x100
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST17
	.byte	0
	.byte	0x1b
	.4byte	.LASF42
	.byte	0x1
	.byte	0xe7
	.byte	0x5
	.4byte	0x390
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.byte	0x1
	.byte	0x9c
	.4byte	0x390
	.byte	0x1c
	.string	"dev"
	.byte	0x1
	.byte	0xe7
	.byte	0x3d
	.4byte	0x280
	.4byte	.LLST14
	.byte	0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0xe7
	.byte	0x4a
	.4byte	0x8f
	.byte	0x1
	.byte	0x5b
	.byte	0x1d
	.4byte	.LASF36
	.byte	0x1
	.byte	0xec
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x1
	.byte	0xed
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST15
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF43
	.byte	0x17
	.4byte	.LASF44
	.byte	0x1
	.byte	0xd4
	.byte	0x6
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.byte	0x1
	.byte	0x9c
	.4byte	0x3fc
	.byte	0x1c
	.string	"dev"
	.byte	0x1
	.byte	0xd4
	.byte	0x38
	.4byte	0x280
	.4byte	.LLST10
	.byte	0x1e
	.4byte	.LASF40
	.byte	0x1
	.byte	0xd4
	.byte	0x45
	.4byte	0x8f
	.4byte	.LLST11
	.byte	0x19
	.4byte	.LASF45
	.byte	0x1
	.byte	0xd4
	.byte	0x51
	.4byte	0x390
	.byte	0x1
	.byte	0x5c
	.byte	0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0xd9
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST12
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x1
	.byte	0xda
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST13
	.byte	0
	.byte	0x1b
	.4byte	.LASF46
	.byte	0x1
	.byte	0xc7
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.byte	0x1
	.byte	0x9c
	.4byte	0x437
	.byte	0x1c
	.string	"dev"
	.byte	0x1
	.byte	0xc7
	.byte	0x40
	.4byte	0x280
	.4byte	.LLST8
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x1
	.byte	0xcc
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST9
	.byte	0
	.byte	0x1b
	.4byte	.LASF47
	.byte	0x1
	.byte	0xba
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.byte	0x1
	.byte	0x9c
	.4byte	0x480
	.byte	0x1c
	.string	"dev"
	.byte	0x1
	.byte	0xba
	.byte	0x3d
	.4byte	0x280
	.4byte	.LLST6
	.byte	0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0xba
	.byte	0x4a
	.4byte	0x8f
	.byte	0x1
	.byte	0x5b
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x1
	.byte	0xbf
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST7
	.byte	0
	.byte	0x17
	.4byte	.LASF48
	.byte	0x1
	.byte	0xad
	.byte	0x6
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d1
	.byte	0x18
	.string	"dev"
	.byte	0x1
	.byte	0xad
	.byte	0x39
	.4byte	0x280
	.byte	0x1
	.byte	0x5a
	.byte	0x19
	.4byte	.LASF40
	.byte	0x1
	.byte	0xad
	.byte	0x46
	.4byte	0x8f
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.string	"val"
	.byte	0x1
	.byte	0xad
	.byte	0x57
	.4byte	0x9b
	.byte	0x1
	.byte	0x5c
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x1
	.byte	0xb2
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST5
	.byte	0
	.byte	0x17
	.4byte	.LASF49
	.byte	0x1
	.byte	0xa0
	.byte	0x6
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.byte	0x1
	.byte	0x9c
	.4byte	0x514
	.byte	0x18
	.string	"dev"
	.byte	0x1
	.byte	0xa0
	.byte	0x3c
	.4byte	0x280
	.byte	0x1
	.byte	0x5a
	.byte	0x18
	.string	"val"
	.byte	0x1
	.byte	0xa0
	.byte	0x4a
	.4byte	0x9b
	.byte	0x1
	.byte	0x5b
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x1
	.byte	0xa5
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST4
	.byte	0
	.byte	0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0x90
	.byte	0x6
	.4byte	0x545
	.byte	0x20
	.string	"dev"
	.byte	0x1
	.byte	0x90
	.byte	0x30
	.4byte	0x280
	.byte	0x21
	.4byte	.LASF36
	.byte	0x1
	.byte	0x95
	.byte	0xe
	.4byte	0x9b
	.byte	0x21
	.4byte	.LASF18
	.byte	0x1
	.byte	0x96
	.byte	0xe
	.4byte	0x9b
	.byte	0
	.byte	0x17
	.4byte	.LASF50
	.byte	0x1
	.byte	0x80
	.byte	0x6
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.byte	0x1
	.byte	0x9c
	.4byte	0x58a
	.byte	0x18
	.string	"dev"
	.byte	0x1
	.byte	0x80
	.byte	0x31
	.4byte	0x280
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0x85
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST2
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x1
	.byte	0x86
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST3
	.byte	0
	.byte	0x17
	.4byte	.LASF51
	.byte	0x1
	.byte	0x70
	.byte	0x6
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x1
	.byte	0x9c
	.4byte	0x5cf
	.byte	0x18
	.string	"dev"
	.byte	0x1
	.byte	0x70
	.byte	0x32
	.4byte	0x280
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0x75
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST0
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x1
	.byte	0x76
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST1
	.byte	0
	.byte	0x17
	.4byte	.LASF52
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0x8c6
	.byte	0x1c
	.string	"dev"
	.byte	0x1
	.byte	0xa
	.byte	0x30
	.4byte	0x280
	.4byte	.LLST18
	.byte	0x1e
	.4byte	.LASF35
	.byte	0x1
	.byte	0xa
	.byte	0x59
	.4byte	0x8c6
	.4byte	.LLST19
	.byte	0x22
	.4byte	.LASF64
	.4byte	0x8dc
	.4byte	.LASF52
	.byte	0x1a
	.4byte	.LASF36
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST20
	.byte	0x1a
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1c
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST21
	.byte	0x23
	.4byte	0x8e1
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x1
	.byte	0x15
	.byte	0x9
	.4byte	0x66b
	.byte	0x24
	.4byte	0x912
	.4byte	.LLST22
	.byte	0x24
	.4byte	0x906
	.4byte	.LLST23
	.byte	0x24
	.4byte	0x8fa
	.4byte	.LLST24
	.byte	0x24
	.4byte	0x8ee
	.4byte	.LLST25
	.byte	0
	.byte	0x11
	.4byte	.LVL35
	.4byte	0x2e5
	.4byte	0x684
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL36
	.4byte	0x2e5
	.4byte	0x69d
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x11
	.4byte	.LVL37
	.4byte	0x2e5
	.4byte	0x6b6
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x11
	.4byte	.LVL50
	.4byte	0x4d1
	.4byte	0x6ca
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL51
	.4byte	0x397
	.4byte	0x6e8
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL52
	.4byte	0x397
	.4byte	0x706
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x11
	.4byte	.LVL53
	.4byte	0x397
	.4byte	0x724
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x11
	.4byte	.LVL54
	.4byte	0x480
	.4byte	0x73d
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL58
	.4byte	0x397
	.4byte	0x75b
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL59
	.4byte	0x397
	.4byte	0x779
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL60
	.4byte	0x397
	.4byte	0x797
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x11
	.4byte	.LVL61
	.4byte	0x480
	.4byte	0x7b0
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL62
	.4byte	0x480
	.4byte	0x7c9
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x11
	.4byte	.LVL63
	.4byte	0x397
	.4byte	0x7e7
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL64
	.4byte	0x397
	.4byte	0x805
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL65
	.4byte	0x397
	.4byte	0x823
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL66
	.4byte	0x480
	.4byte	0x83c
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x11
	.4byte	.LVL67
	.4byte	0x480
	.4byte	0x855
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x25
	.4byte	.LVL71
	.4byte	0x480
	.4byte	0x86f
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
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x11
	.4byte	.LVL72
	.4byte	0x397
	.4byte	0x88d
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x11
	.4byte	.LVL73
	.4byte	0x397
	.4byte	0x8ab
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x13
	.4byte	.LVL74
	.4byte	0x397
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1b2
	.byte	0x26
	.4byte	0xc8
	.4byte	0x8dc
	.byte	0x27
	.4byte	0x88
	.byte	0x11
	.byte	0
	.byte	0x6
	.4byte	0x8cc
	.byte	0x28
	.4byte	.LASF65
	.byte	0x2
	.byte	0x9d
	.byte	0x33
	.byte	0x3
	.4byte	0x91f
	.byte	0x29
	.4byte	.LASF53
	.byte	0x2
	.byte	0x9d
	.byte	0x57
	.4byte	0xcd
	.byte	0x29
	.4byte	.LASF54
	.byte	0x2
	.byte	0x9d
	.byte	0x66
	.4byte	0x9b
	.byte	0x29
	.4byte	.LASF55
	.byte	0x2
	.byte	0x9d
	.byte	0x78
	.4byte	0xcd
	.byte	0x29
	.4byte	.LASF56
	.byte	0x2
	.byte	0x9d
	.byte	0x8e
	.4byte	0xcd
	.byte	0
	.byte	0x2a
	.4byte	.LASF57
	.4byte	.LASF57
	.byte	0x8
	.2byte	0x670
	.byte	0x11
	.byte	0x2b
	.4byte	.LASF58
	.4byte	.LASF58
	.byte	0x6
	.byte	0x7b
	.byte	0x19
	.byte	0x2a
	.4byte	.LASF59
	.4byte	.LASF59
	.byte	0x9
	.2byte	0x199
	.byte	0x6
	.byte	0x2c
	.byte	0x16
	.byte	0x9e
	.byte	0x14
	.byte	0x63
	.byte	0x6f
	.byte	0x6d
	.byte	0x70
	.byte	0x20
	.byte	0x76
	.byte	0x61
	.byte	0x6c
	.byte	0x75
	.byte	0x65
	.byte	0x20
	.byte	0x69
	.byte	0x73
	.byte	0x20
	.byte	0x65
	.byte	0x72
	.byte	0x72
	.byte	0x6f
	.byte	0x72
	.byte	0
	.byte	0x2c
	.byte	0x14
	.byte	0x9e
	.byte	0x12
	.byte	0x71
	.byte	0x63
	.byte	0x63
	.byte	0x37
	.byte	0x34
	.byte	0x78
	.byte	0x5f
	.byte	0x74
	.byte	0x69
	.byte	0x6d
	.byte	0x65
	.byte	0x72
	.byte	0x5f
	.byte	0x69
	.byte	0x6e
	.byte	0x69
	.byte	0x74
	.byte	0
	.byte	0x2c
	.byte	0x24
	.byte	0x9e
	.byte	0x22
	.byte	0x2e
	.byte	0x2f
	.byte	0x64
	.byte	0x72
	.byte	0x69
	.byte	0x76
	.byte	0x65
	.byte	0x72
	.byte	0x73
	.byte	0x2f
	.byte	0x6c
	.byte	0x68
	.byte	0x61
	.byte	0x6c
	.byte	0x2f
	.byte	0x73
	.byte	0x72
	.byte	0x63
	.byte	0x2f
	.byte	0x71
	.byte	0x63
	.byte	0x63
	.byte	0x37
	.byte	0x34
	.byte	0x78
	.byte	0x5f
	.byte	0x74
	.byte	0x69
	.byte	0x6d
	.byte	0x65
	.byte	0x72
	.byte	0x2e
	.byte	0x63
	.byte	0
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
	.byte	0xe
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0xd
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0x19
	.byte	0x1c
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x28
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
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x36
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST27:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE254
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL77
	.4byte	.LVL80-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL80-1
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL85
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE254
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL78
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL89
	.4byte	.LFE254
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL81
	.4byte	.LVL82-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LFE253
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26
	.4byte	.LFE252
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL27
	.4byte	.LFE252
	.2byte	0x4
	.byte	0x7e
	.byte	0x88,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE251
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x7f
	.byte	0x48
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LFE251
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LFE250
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL18
	.4byte	.LFE250
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE250
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL17
	.4byte	.LFE250
	.2byte	0x4
	.byte	0x7e
	.byte	0xbc,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LFE249
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL15
	.4byte	.LFE249
	.2byte	0x3
	.byte	0x7f
	.byte	0x54
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE248
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL13
	.4byte	.LFE248
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL9
	.4byte	.LFE246
	.2byte	0x4
	.byte	0x7f
	.byte	0xb0,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL6
	.4byte	.LFE244
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL7
	.4byte	.LFE244
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2
	.4byte	.LFE243
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL3
	.4byte	.LFE243
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL28
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35-1
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL68
	.4byte	.LVL71-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71-1
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE242
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL28
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE242
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL47
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL31
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL46
	.4byte	.LVL55
	.2byte	0x4
	.byte	0x82
	.byte	0xa4,0x7f
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL57
	.4byte	.LVL70
	.2byte	0x4
	.byte	0x82
	.byte	0xa4,0x7f
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LFE242
	.2byte	0x4
	.byte	0x82
	.byte	0xa4,0x7f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2373
	.byte	0
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2397
	.byte	0
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x45
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+2419
	.byte	0
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
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.4byte	.LFB254
	.4byte	.LFE254-.LFB254
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB243
	.4byte	.LFE243
	.4byte	.LFB244
	.4byte	.LFE244
	.4byte	.LFB246
	.4byte	.LFE246
	.4byte	.LFB247
	.4byte	.LFE247
	.4byte	.LFB248
	.4byte	.LFE248
	.4byte	.LFB249
	.4byte	.LFE249
	.4byte	.LFB250
	.4byte	.LFE250
	.4byte	.LFB251
	.4byte	.LFE251
	.4byte	.LFB252
	.4byte	.LFE252
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB253
	.4byte	.LFE253
	.4byte	.LFB254
	.4byte	.LFE254
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"qcc74x_timer_get_compint_status"
.LASF23:
	.string	"qcc74x_device_s"
.LASF48:
	.string	"qcc74x_timer_set_compvalue"
.LASF18:
	.string	"reg_base"
.LASF65:
	.string	"qcc74x_lhal_assert_func"
.LASF38:
	.string	"qcc74x_timer_capture_init"
.LASF25:
	.string	"counter_mode"
.LASF2:
	.string	"short int"
.LASF15:
	.string	"size_t"
.LASF20:
	.string	"sub_idx"
.LASF6:
	.string	"__uint32_t"
.LASF30:
	.string	"comp1_val"
.LASF52:
	.string	"qcc74x_timer_init"
.LASF53:
	.string	"file"
.LASF41:
	.string	"qcc74x_timer_feature_control"
.LASF40:
	.string	"cmp_no"
.LASF35:
	.string	"config"
.LASF21:
	.string	"dev_type"
.LASF22:
	.string	"user_data"
.LASF12:
	.string	"uint8_t"
.LASF14:
	.string	"uintptr_t"
.LASF54:
	.string	"line"
.LASF49:
	.string	"qcc74x_timer_set_preloadvalue"
.LASF26:
	.string	"clock_source"
.LASF8:
	.string	"long long int"
.LASF46:
	.string	"qcc74x_timer_get_countervalue"
.LASF59:
	.string	"qcc74x_gpio_init"
.LASF4:
	.string	"long int"
.LASF56:
	.string	"string"
.LASF19:
	.string	"irq_num"
.LASF5:
	.string	"__uint8_t"
.LASF61:
	.string	"./drivers/lhal/src/qcc74x_timer.c"
.LASF51:
	.string	"qcc74x_timer_deinit"
.LASF17:
	.string	"name"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"clock_div"
.LASF34:
	.string	"polarity"
.LASF31:
	.string	"comp2_val"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF24:
	.string	"qcc74x_timer_config_s"
.LASF58:
	.string	"qcc74x_device_get_by_name"
.LASF39:
	.string	"qcc74x_timer_compint_clear"
.LASF3:
	.string	"short unsigned int"
.LASF44:
	.string	"qcc74x_timer_compint_mask"
.LASF16:
	.string	"char"
.LASF55:
	.string	"function"
.LASF63:
	.string	"qcc74x_timer_stop"
.LASF43:
	.string	"_Bool"
.LASF64:
	.string	"__func__"
.LASF60:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF7:
	.string	"long unsigned int"
.LASF10:
	.string	"__uintptr_t"
.LASF32:
	.string	"preload_val"
.LASF28:
	.string	"trigger_comp_id"
.LASF45:
	.string	"mask"
.LASF29:
	.string	"comp0_val"
.LASF36:
	.string	"regval"
.LASF33:
	.string	"qcc74x_timer_capture_config_s"
.LASF47:
	.string	"qcc74x_timer_get_compvalue"
.LASF62:
	.string	"./examples/peripherals/uart/uart_transmit/build/build_out/drivers/lhal"
.LASF37:
	.string	"gpio"
.LASF57:
	.string	"GLB_Sel_MCU_TMR_GPIO_Clock"
.LASF50:
	.string	"qcc74x_timer_start"
	.ident	"GCC: (GNU) 10.4.0"
