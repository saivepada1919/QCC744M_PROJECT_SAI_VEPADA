	.file	"qcc74x_pwm_v2.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_pwm_v2_init,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_init
	.type	qcc74x_pwm_v2_init, @function
qcc74x_pwm_v2_init:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_pwm_v2.c"
	.loc 1 6 1
	.cfi_startproc
.LVL0:
	.loc 1 7 5
	.loc 1 8 5
	.loc 1 9 5
	.loc 1 14 5
	.loc 1 15 5
	.loc 1 16 5
	.loc 1 18 5
	.loc 1 6 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	.loc 1 18 14
	lw	s0,4(a0)
.LVL1:
	.loc 1 20 5 is_stmt 1
	.loc 1 21 12 is_stmt 0
	li	a4,134217728
	.loc 1 6 1
	sw	s1,36(sp)
	.loc 1 20 12
	lw	a5,64(s0)
.LVL2:
	.loc 1 21 5 is_stmt 1
	.loc 1 6 1 is_stmt 0
	sw	s3,28(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	ra,44(sp)
	sw	s2,32(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.loc 1 21 12
	or	a5,a5,a4
.LVL3:
	.loc 1 22 5 is_stmt 1
	.loc 1 22 59 is_stmt 0
	sw	a5,64(s0)
	.loc 1 24 5 is_stmt 1
	.loc 1 6 1 is_stmt 0
	mv	s1,a1
	.loc 1 24 18
	call	qcc74x_mtimer_get_time_ms
.LVL4:
	.loc 1 20 58
	addi	s3,s0,64
	.loc 1 24 18
	mv	s4,a0
	mv	s5,a1
.LVL5:
	.loc 1 27 16
	li	s6,536870912
	.loc 1 28 12
	li	s7,100
.L4:
	.loc 1 25 5 is_stmt 1
	.loc 1 26 9
	.loc 1 26 16 is_stmt 0
	lw	s2,0(s3)
.LVL6:
	.loc 1 27 9 is_stmt 1
	.loc 1 28 14 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL7:
	.loc 1 28 42
	sub64	a0,a0,s4
	.loc 1 27 16
	and	s2,s2,s6
.LVL8:
	.loc 1 28 9 is_stmt 1
	.loc 1 28 12 is_stmt 0
	bne	a1,zero,.L1
	bltu	s7,a0,.L1
	.loc 1 31 13 is_stmt 1
	.loc 1 31 5 is_stmt 0
	beq	s2,zero,.L4
	.loc 1 34 5 is_stmt 1
	.loc 1 34 12 is_stmt 0
	lw	a5,64(s0)
.LVL9:
	.loc 1 35 5 is_stmt 1
	.loc 1 35 12 is_stmt 0
	li	a3,1073741824
	addi	a4,a3,-1
	and	a5,a5,a4
.LVL10:
	.loc 1 36 5 is_stmt 1
	.loc 1 36 15 is_stmt 0
	lbu	a4,0(s1)
	.loc 1 36 8
	li	a2,3
	beq	a4,a2,.L5
	.loc 1 38 12 is_stmt 1
	.loc 1 38 15 is_stmt 0
	li	a2,2
	bne	a4,a2,.L6
	.loc 1 39 9 is_stmt 1
	.loc 1 39 16 is_stmt 0
	or	a5,a5,a3
.LVL11:
.L5:
	.loc 1 43 5 is_stmt 1
	.loc 1 53 5
	.loc 1 54 41 is_stmt 0
	lhu	a3,2(s1)
	.loc 1 53 12
	li	a4,-65536
	and	a5,a5,a4
.LVL12:
	.loc 1 54 5 is_stmt 1
	.loc 1 54 12 is_stmt 0
	or	a5,a3,a5
.LVL13:
	.loc 1 55 5 is_stmt 1
	.loc 1 55 59 is_stmt 0
	sw	a5,64(s0)
	.loc 1 58 5 is_stmt 1
	.loc 1 58 12 is_stmt 0
	lw	a5,72(s0)
.LVL14:
	.loc 1 59 5 is_stmt 1
	.loc 1 59 12 is_stmt 0
	and	a4,a5,a4
.LVL15:
	.loc 1 60 5 is_stmt 1
	.loc 1 60 40 is_stmt 0
	lhu	a5,4(s1)
	.loc 1 60 12
	or	a5,a5,a4
.LVL16:
	.loc 1 61 5 is_stmt 1
	.loc 1 61 59 is_stmt 0
	sw	a5,72(s0)
.LVL17:
.L1:
	.loc 1 63 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL18:
	lw	s1,36(sp)
	.cfi_restore 9
.LVL19:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL20:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL21:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL22:
.L6:
	.cfi_restore_state
	.loc 1 40 12 is_stmt 1
	.loc 1 40 15 is_stmt 0
	li	a3,4
	bne	a4,a3,.L5
	.loc 1 41 9 is_stmt 1
	.loc 1 41 16 is_stmt 0
	li	a4,-2147483648
	or	a5,a5,a4
.LVL23:
	j	.L5
	.cfi_endproc
.LFE5:
	.size	qcc74x_pwm_v2_init, .-qcc74x_pwm_v2_init
	.section	.text.qcc74x_pwm_v2_deinit,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_deinit
	.type	qcc74x_pwm_v2_deinit, @function
qcc74x_pwm_v2_deinit:
.LFB6:
	.loc 1 66 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 70 5
	.loc 1 71 5
	.loc 1 72 5
	.loc 1 74 5
	.loc 1 66 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 74 14
	lw	s0,4(a0)
.LVL25:
	.loc 1 76 5 is_stmt 1
	.loc 1 77 12 is_stmt 0
	li	a4,134217728
	.loc 1 66 1
	sw	s2,16(sp)
	.loc 1 76 12
	lw	a5,64(s0)
.LVL26:
	.loc 1 77 5 is_stmt 1
	.loc 1 66 1 is_stmt 0
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 77 12
	or	a5,a5,a4
.LVL27:
	.loc 1 78 5 is_stmt 1
	.loc 1 78 59 is_stmt 0
	sw	a5,64(s0)
	.loc 1 80 5 is_stmt 1
	.loc 1 80 18 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL28:
	.loc 1 76 58
	addi	s2,s0,64
	.loc 1 80 18
	mv	s4,a0
	mv	s5,a1
.LVL29:
	.loc 1 83 16
	li	s3,536870912
	.loc 1 84 12
	li	s6,100
.L14:
	.loc 1 81 5 is_stmt 1
	.loc 1 82 9
	.loc 1 82 16 is_stmt 0
	lw	s1,0(s2)
.LVL30:
	.loc 1 83 9 is_stmt 1
	.loc 1 84 14 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL31:
	.loc 1 84 42
	sub64	a0,a0,s4
	.loc 1 83 16
	and	s1,s1,s3
.LVL32:
	.loc 1 84 9 is_stmt 1
	.loc 1 84 12 is_stmt 0
	bne	a1,zero,.L11
	bltu	s6,a0,.L11
	.loc 1 87 13 is_stmt 1
	.loc 1 87 5 is_stmt 0
	beq	s1,zero,.L14
	.loc 1 90 5 is_stmt 1
.LVL33:
	.loc 1 91 5
	.loc 1 91 59 is_stmt 0
	li	a5,955252736
	sw	a5,64(s0)
	.loc 1 94 5 is_stmt 1
.LVL34:
	.loc 1 95 5
	.loc 1 96 5
	.loc 1 97 5
	.loc 1 97 59 is_stmt 0
	li	a5,16748544
	addi	a5,a5,-1912
	sw	a5,68(s0)
	.loc 1 100 5 is_stmt 1
	.loc 1 100 59 is_stmt 0
	sw	zero,72(s0)
	.loc 1 103 5 is_stmt 1
	.loc 1 103 59 is_stmt 0
	sw	zero,76(s0)
	.loc 1 106 5 is_stmt 1
	.loc 1 106 59 is_stmt 0
	sw	zero,80(s0)
	.loc 1 107 5 is_stmt 1
	.loc 1 107 59 is_stmt 0
	li	a5,1
	sw	a5,84(s0)
	.loc 1 108 5 is_stmt 1
	.loc 1 108 59 is_stmt 0
	li	a5,2
	sw	a5,88(s0)
	.loc 1 109 5 is_stmt 1
	.loc 1 109 59 is_stmt 0
	li	a5,3
	sw	a5,92(s0)
	.loc 1 112 5 is_stmt 1
	.loc 1 112 59 is_stmt 0
	li	a5,-1
	sw	a5,100(s0)
	.loc 1 114 5 is_stmt 1
	.loc 1 114 59 is_stmt 0
	sw	a5,104(s0)
	.loc 1 116 5 is_stmt 1
	.loc 1 116 59 is_stmt 0
	sw	a5,108(s0)
.LVL35:
.L11:
	.loc 1 118 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL36:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL37:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
.LVL38:
	lw	s5,4(sp)
	.cfi_restore 21
	lw	s6,0(sp)
	.cfi_restore 22
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	qcc74x_pwm_v2_deinit, .-qcc74x_pwm_v2_deinit
	.section	.text.qcc74x_pwm_v2_set_period,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_set_period
	.type	qcc74x_pwm_v2_set_period, @function
qcc74x_pwm_v2_set_period:
.LFB7:
	.loc 1 121 1 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 125 5
	.loc 1 126 5
	.loc 1 128 5
	.loc 1 129 5
	.loc 1 129 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 130 12
	li	a3,-65536
	.loc 1 129 12
	lw	a5,72(a4)
.LVL40:
	.loc 1 130 5 is_stmt 1
	.loc 1 130 12 is_stmt 0
	and	a5,a5,a3
.LVL41:
	.loc 1 131 5 is_stmt 1
	.loc 1 131 12 is_stmt 0
	or	a1,a1,a5
.LVL42:
	.loc 1 132 5 is_stmt 1
	.loc 1 132 59 is_stmt 0
	sw	a1,72(a4)
.LVL43:
	.loc 1 134 1
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_pwm_v2_set_period, .-qcc74x_pwm_v2_set_period
	.section	.text.qcc74x_pwm_v2_start,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_start
	.type	qcc74x_pwm_v2_start, @function
qcc74x_pwm_v2_start:
.LFB8:
	.loc 1 137 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 141 5
	.loc 1 142 5
	.loc 1 143 5
	.loc 1 145 5
	.loc 1 146 5
	.loc 1 146 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 147 12
	li	a3,-134217728
	.loc 1 137 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 146 12
	lw	a4,64(a5)
.LVL45:
	.loc 1 147 5 is_stmt 1
	.loc 1 147 12 is_stmt 0
	addi	a3,a3,-1
	.loc 1 137 1
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 147 12
	and	a4,a4,a3
.LVL46:
	.loc 1 148 5 is_stmt 1
	.loc 1 148 59 is_stmt 0
	sw	a4,64(a5)
.LVL47:
	.loc 1 150 5 is_stmt 1
	.loc 1 146 58 is_stmt 0
	addi	s1,a5,64
	.loc 1 150 18
	call	qcc74x_mtimer_get_time_ms
.LVL48:
	mv	s2,a0
	mv	s3,a1
.LVL49:
	.loc 1 153 16
	li	s4,536870912
	.loc 1 154 12
	li	s5,100
.L23:
	.loc 1 151 5 is_stmt 1
	.loc 1 152 9
	.loc 1 152 16 is_stmt 0
	lw	s0,0(s1)
.LVL50:
	.loc 1 153 9 is_stmt 1
	.loc 1 154 14 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL51:
	.loc 1 154 42
	sub64	a0,a0,s2
	.loc 1 153 16
	and	s0,s0,s4
.LVL52:
	.loc 1 154 9 is_stmt 1
	.loc 1 154 12 is_stmt 0
	bne	a1,zero,.L20
	bltu	s5,a0,.L20
	.loc 1 157 13 is_stmt 1
	.loc 1 157 5 is_stmt 0
	bne	s0,zero,.L23
.L20:
	.loc 1 159 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL53:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL54:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL55:
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
.LFE8:
	.size	qcc74x_pwm_v2_start, .-qcc74x_pwm_v2_start
	.section	.text.qcc74x_pwm_v2_stop,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_stop
	.type	qcc74x_pwm_v2_stop, @function
qcc74x_pwm_v2_stop:
.LFB9:
	.loc 1 162 1 is_stmt 1
	.cfi_startproc
.LVL56:
	.loc 1 166 5
	.loc 1 167 5
	.loc 1 168 5
	.loc 1 170 5
	.loc 1 171 5
	.loc 1 171 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 162 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 172 12
	li	a3,134217728
	.loc 1 171 12
	lw	a4,64(a5)
.LVL57:
	.loc 1 172 5 is_stmt 1
	.loc 1 162 1 is_stmt 0
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	s5,4(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 172 12
	or	a4,a4,a3
.LVL58:
	.loc 1 173 5 is_stmt 1
	.loc 1 173 59 is_stmt 0
	sw	a4,64(a5)
.LVL59:
	.loc 1 175 5 is_stmt 1
	.loc 1 171 58 is_stmt 0
	addi	s1,a5,64
	.loc 1 175 18
	call	qcc74x_mtimer_get_time_ms
.LVL60:
	mv	s2,a0
	mv	s3,a1
.LVL61:
	.loc 1 178 16
	li	s4,536870912
	.loc 1 179 12
	li	s5,100
.L30:
	.loc 1 176 5 is_stmt 1
	.loc 1 177 9
	.loc 1 177 16 is_stmt 0
	lw	s0,0(s1)
.LVL62:
	.loc 1 178 9 is_stmt 1
	.loc 1 179 14 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL63:
	.loc 1 179 42
	sub64	a0,a0,s2
	.loc 1 178 16
	and	s0,s0,s4
.LVL64:
	.loc 1 179 9 is_stmt 1
	.loc 1 179 12 is_stmt 0
	bne	a1,zero,.L27
	bltu	s5,a0,.L27
	.loc 1 182 13 is_stmt 1
	.loc 1 182 5 is_stmt 0
	beq	s0,zero,.L30
.L27:
	.loc 1 184 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL65:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL66:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL67:
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
.LFE9:
	.size	qcc74x_pwm_v2_stop, .-qcc74x_pwm_v2_stop
	.section	.text.qcc74x_pwm_v2_get_frequency,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_get_frequency
	.type	qcc74x_pwm_v2_get_frequency, @function
qcc74x_pwm_v2_get_frequency:
.LFB10:
	.loc 1 187 1 is_stmt 1
	.cfi_startproc
.LVL68:
	.loc 1 191 5
	.loc 1 192 5
	.loc 1 193 5
	.loc 1 194 5
	.loc 1 196 5
	.loc 1 187 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 196 14
	lw	s1,4(a0)
.LVL69:
	.loc 1 197 5 is_stmt 1
	.loc 1 187 1 is_stmt 0
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 197 12
	lw	s0,64(s1)
.LVL70:
	.loc 1 199 5 is_stmt 1
	.loc 1 202 26 is_stmt 0
	li	a0,3
.LVL71:
	.loc 1 199 9
	srli	a5,s0,30
.LVL72:
	.loc 1 200 5 is_stmt 1
	beq	a5,zero,.L44
	li	a4,1
	.loc 1 205 26 is_stmt 0
	li	a0,2
	.loc 1 200 5
	beq	a5,a4,.L44
	.loc 1 208 13 is_stmt 1
	.loc 1 208 26 is_stmt 0
	li	a0,4
.L44:
	call	qcc74x_clk_get_system_clock
.LVL73:
	.loc 1 212 9
	extu	s0,s0,15,0
.LVL74:
	.loc 1 208 17
	fcvt.s.wu	fa0,a0
.LVL75:
	.loc 1 209 13 is_stmt 1
	.loc 1 212 5
	.loc 1 213 5
	.loc 1 213 28 is_stmt 0
	beq	s0,zero,.L41
	.loc 1 213 28 discriminator 1
	fcvt.s.w	fa5,s0
.L40:
.LVL76:
	.loc 1 215 5 is_stmt 1 discriminator 4
	.loc 1 219 17 is_stmt 0 discriminator 4
	fdiv.s	fa0,fa0,fa5
.LVL77:
	.loc 1 215 12 discriminator 4
	lw	a5,72(s1)
.LVL78:
	.loc 1 216 5 is_stmt 1 discriminator 4
	.loc 1 217 5 discriminator 4
	.loc 1 219 5 discriminator 4
	.loc 1 221 1 is_stmt 0 discriminator 4
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	.loc 1 216 9 discriminator 4
	extu	a5,a5,15,0
.LVL79:
	.loc 1 217 12 discriminator 4
	fcvt.s.w	fa5,a5
.LVL80:
	.loc 1 221 1 discriminator 4
	lw	s1,4(sp)
	.cfi_restore 9
.LVL81:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	fdiv.s	fa0,fa0,fa5
	jr	ra
.LVL82:
.L41:
	.cfi_restore_state
	.loc 1 213 28
	lui	a5,%hi(.LC0)
	flw	fa5,%lo(.LC0)(a5)
	j	.L40
	.cfi_endproc
.LFE10:
	.size	qcc74x_pwm_v2_get_frequency, .-qcc74x_pwm_v2_get_frequency
	.section	.text.qcc74x_pwm_v2_channel_init,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_channel_init
	.type	qcc74x_pwm_v2_channel_init, @function
qcc74x_pwm_v2_channel_init:
.LFB11:
	.loc 1 224 1 is_stmt 1
	.cfi_startproc
.LVL83:
	.loc 1 228 5
	.loc 1 229 5
	.loc 1 231 5
	.loc 1 231 14 is_stmt 0
	lw	a6,4(a0)
.LVL84:
	.loc 1 232 5 is_stmt 1
	.loc 1 233 8 is_stmt 0
	lbu	a0,0(a2)
.LVL85:
	.loc 1 234 38
	slli	a7,a1,1
	.loc 1 232 12
	lw	a4,68(a6)
.LVL86:
	.loc 1 233 5 is_stmt 1
	.loc 1 234 32 is_stmt 0
	li	a3,65536
	sll	a3,a3,a7
	.loc 1 236 16
	or	a5,a3,a4
	.loc 1 233 8
	bne	a0,zero,.L47
	.loc 1 234 9 is_stmt 1
	.loc 1 234 19 is_stmt 0
	not	a3,a3
	.loc 1 234 16
	and	a5,a3,a4
.LVL87:
.L47:
	.loc 1 238 5 is_stmt 1
	.loc 1 238 8 is_stmt 0
	lbu	a0,1(a2)
	.loc 1 239 32
	li	a3,131072
	sll	a3,a3,a7
	.loc 1 241 16
	or	a4,a3,a5
	.loc 1 238 8
	bne	a0,zero,.L49
	.loc 1 239 9 is_stmt 1
	.loc 1 239 19 is_stmt 0
	not	a4,a3
	.loc 1 239 16
	and	a4,a4,a5
.LVL88:
.L49:
	.loc 1 243 5 is_stmt 1
	.loc 1 243 8 is_stmt 0
	lbu	t1,2(a2)
	.loc 1 244 36
	slli	a5,a1,2
	.loc 1 244 30
	li	a0,2
	.loc 1 243 8
	li	a3,1
	.loc 1 244 30
	sll	a0,a0,a5
	.loc 1 243 8
	bne	t1,a3,.L50
	.loc 1 244 9 is_stmt 1
	.loc 1 244 16 is_stmt 0
	or	a4,a0,a4
.LVL89:
.L51:
	.loc 1 248 5 is_stmt 1
	.loc 1 248 8 is_stmt 0
	lbu	a0,3(a2)
	.loc 1 249 31
	li	a3,8
	sll	a3,a3,a5
	.loc 1 251 16
	or	a5,a3,a4
	.loc 1 248 8
	bne	a0,zero,.L53
	.loc 1 249 9 is_stmt 1
	.loc 1 249 19 is_stmt 0
	not	a5,a3
	.loc 1 249 16
	and	a5,a5,a4
.LVL90:
.L53:
	.loc 1 253 5 is_stmt 1
	.loc 1 253 8 is_stmt 0
	lbu	a0,4(a2)
	.loc 1 254 31
	li	a3,16777216
	.loc 1 253 8
	li	a4,1
	.loc 1 254 31
	sll	a3,a3,a7
	.loc 1 253 8
	bne	a0,a4,.L54
	.loc 1 254 9 is_stmt 1
	.loc 1 254 16 is_stmt 0
	or	a5,a3,a5
.LVL91:
.L55:
	.loc 1 258 5 is_stmt 1
	.loc 1 258 8 is_stmt 0
	lbu	a0,5(a2)
	.loc 1 259 31
	li	a4,33554432
	.loc 1 258 8
	li	a3,1
	.loc 1 259 31
	sll	a4,a4,a7
	.loc 1 258 8
	bne	a0,a3,.L56
	.loc 1 259 9 is_stmt 1
	.loc 1 259 16 is_stmt 0
	or	a5,a4,a5
.LVL92:
.L57:
	.loc 1 263 5 is_stmt 1
	.loc 1 263 59 is_stmt 0
	sw	a5,68(a6)
	.loc 1 264 5 is_stmt 1
	.loc 1 264 12 is_stmt 0
	lw	a4,76(a6)
.LVL93:
	.loc 1 265 5 is_stmt 1
	.loc 1 265 38 is_stmt 0
	slli	a1,a1,3
.LVL94:
	.loc 1 265 32
	li	a5,255
	sll	a5,a5,a1
	.loc 1 265 15
	not	a5,a5
	.loc 1 265 12
	and	a5,a5,a4
.LVL95:
	.loc 1 266 5 is_stmt 1
	.loc 1 266 16 is_stmt 0
	lbu	a4,6(a2)
	.loc 1 266 44
	sll	a1,a4,a1
	.loc 1 266 12
	or	a5,a1,a5
.LVL96:
	.loc 1 267 5 is_stmt 1
	.loc 1 267 59 is_stmt 0
	sw	a5,76(a6)
	.loc 1 269 1
	ret
.LVL97:
.L50:
	.loc 1 246 9 is_stmt 1
	.loc 1 246 19 is_stmt 0
	not	a0,a0
	.loc 1 246 16
	and	a4,a0,a4
.LVL98:
	j	.L51
.LVL99:
.L54:
	.loc 1 256 9 is_stmt 1
	.loc 1 256 19 is_stmt 0
	not	a3,a3
	.loc 1 256 16
	and	a5,a3,a5
.LVL100:
	j	.L55
.L56:
	.loc 1 261 9 is_stmt 1
	.loc 1 261 19 is_stmt 0
	not	a4,a4
	.loc 1 261 16
	and	a5,a4,a5
.LVL101:
	j	.L57
	.cfi_endproc
.LFE11:
	.size	qcc74x_pwm_v2_channel_init, .-qcc74x_pwm_v2_channel_init
	.section	.text.qcc74x_pwm_v2_channel_set_threshold,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_channel_set_threshold
	.type	qcc74x_pwm_v2_channel_set_threshold, @function
qcc74x_pwm_v2_channel_set_threshold:
.LFB12:
	.loc 1 272 1 is_stmt 1
	.cfi_startproc
.LVL102:
	.loc 1 276 5
	.loc 1 278 5
	.loc 1 279 63 is_stmt 0
	lw	a5,4(a0)
	.loc 1 278 39
	slli	a3,a3,16
.LVL103:
	.loc 1 278 12
	or	a3,a3,a2
.LVL104:
	.loc 1 279 5 is_stmt 1
	.loc 1 279 63 is_stmt 0
	addi	a5,a5,80
	.loc 1 279 73
	srw	a3,a5,a1,2
	.loc 1 281 1
	ret
	.cfi_endproc
.LFE12:
	.size	qcc74x_pwm_v2_channel_set_threshold, .-qcc74x_pwm_v2_channel_set_threshold
	.section	.text.qcc74x_pwm_v2_channel_positive_start,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_channel_positive_start
	.type	qcc74x_pwm_v2_channel_positive_start, @function
qcc74x_pwm_v2_channel_positive_start:
.LFB13:
	.loc 1 284 1 is_stmt 1
	.cfi_startproc
.LVL105:
	.loc 1 288 5
	.loc 1 289 5
	.loc 1 291 5
	.loc 1 292 5
	.loc 1 292 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 293 31
	slli	a5,a1,2
	.loc 1 293 26
	li	a1,1
.LVL106:
	.loc 1 292 12
	lw	a3,68(a4)
.LVL107:
	.loc 1 293 5 is_stmt 1
	.loc 1 293 26 is_stmt 0
	sll	a1,a1,a5
	.loc 1 293 12
	or	a1,a1,a3
.LVL108:
	.loc 1 294 5 is_stmt 1
	.loc 1 294 59 is_stmt 0
	sw	a1,68(a4)
.LVL109:
	.loc 1 296 1
	ret
	.cfi_endproc
.LFE13:
	.size	qcc74x_pwm_v2_channel_positive_start, .-qcc74x_pwm_v2_channel_positive_start
	.section	.text.qcc74x_pwm_v2_channel_negative_start,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_channel_negative_start
	.type	qcc74x_pwm_v2_channel_negative_start, @function
qcc74x_pwm_v2_channel_negative_start:
.LFB14:
	.loc 1 299 1 is_stmt 1
	.cfi_startproc
.LVL110:
	.loc 1 303 5
	.loc 1 304 5
	.loc 1 306 5
	.loc 1 307 5
	.loc 1 307 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 308 31
	slli	a5,a1,2
	.loc 1 308 26
	li	a1,4
.LVL111:
	.loc 1 307 12
	lw	a3,68(a4)
.LVL112:
	.loc 1 308 5 is_stmt 1
	.loc 1 308 26 is_stmt 0
	sll	a1,a1,a5
	.loc 1 308 12
	or	a1,a1,a3
.LVL113:
	.loc 1 309 5 is_stmt 1
	.loc 1 309 59 is_stmt 0
	sw	a1,68(a4)
.LVL114:
	.loc 1 311 1
	ret
	.cfi_endproc
.LFE14:
	.size	qcc74x_pwm_v2_channel_negative_start, .-qcc74x_pwm_v2_channel_negative_start
	.section	.text.qcc74x_pwm_v2_channel_positive_stop,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_channel_positive_stop
	.type	qcc74x_pwm_v2_channel_positive_stop, @function
qcc74x_pwm_v2_channel_positive_stop:
.LFB15:
	.loc 1 314 1 is_stmt 1
	.cfi_startproc
.LVL115:
	.loc 1 318 5
	.loc 1 319 5
	.loc 1 321 5
	.loc 1 322 5
	.loc 1 322 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 323 32
	slli	a1,a1,2
.LVL116:
	.loc 1 323 27
	li	a5,1
	.loc 1 322 12
	lw	a3,68(a4)
.LVL117:
	.loc 1 323 5 is_stmt 1
	.loc 1 323 27 is_stmt 0
	sll	a5,a5,a1
	.loc 1 323 15
	not	a5,a5
	.loc 1 323 12
	and	a5,a5,a3
.LVL118:
	.loc 1 324 5 is_stmt 1
	.loc 1 324 59 is_stmt 0
	sw	a5,68(a4)
.LVL119:
	.loc 1 326 1
	ret
	.cfi_endproc
.LFE15:
	.size	qcc74x_pwm_v2_channel_positive_stop, .-qcc74x_pwm_v2_channel_positive_stop
	.section	.text.qcc74x_pwm_v2_channel_negative_stop,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_channel_negative_stop
	.type	qcc74x_pwm_v2_channel_negative_stop, @function
qcc74x_pwm_v2_channel_negative_stop:
.LFB16:
	.loc 1 329 1 is_stmt 1
	.cfi_startproc
.LVL120:
	.loc 1 333 5
	.loc 1 334 5
	.loc 1 336 5
	.loc 1 337 5
	.loc 1 337 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 338 32
	slli	a1,a1,2
.LVL121:
	.loc 1 338 27
	li	a5,4
	.loc 1 337 12
	lw	a3,68(a4)
.LVL122:
	.loc 1 338 5 is_stmt 1
	.loc 1 338 27 is_stmt 0
	sll	a5,a5,a1
	.loc 1 338 15
	not	a5,a5
	.loc 1 338 12
	and	a5,a5,a3
.LVL123:
	.loc 1 339 5 is_stmt 1
	.loc 1 339 59 is_stmt 0
	sw	a5,68(a4)
.LVL124:
	.loc 1 341 1
	ret
	.cfi_endproc
.LFE16:
	.size	qcc74x_pwm_v2_channel_negative_stop, .-qcc74x_pwm_v2_channel_negative_stop
	.section	.text.qcc74x_pwm_v2_int_enable,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_int_enable
	.type	qcc74x_pwm_v2_int_enable, @function
qcc74x_pwm_v2_int_enable:
.LFB17:
	.loc 1 344 1 is_stmt 1
	.cfi_startproc
.LVL125:
	.loc 1 348 5
	.loc 1 349 5
	.loc 1 351 5
	.loc 1 351 14 is_stmt 0
	lw	a3,4(a0)
.LVL126:
	.loc 1 352 5 is_stmt 1
	.loc 1 355 24 is_stmt 0
	not	a0,a1
.LVL127:
	.loc 1 352 17
	lw	a4,100(a3)
.LVL128:
	.loc 1 353 5 is_stmt 1
	.loc 1 353 15 is_stmt 0
	lw	a5,108(a3)
.LVL129:
	.loc 1 354 5 is_stmt 1
	.loc 1 354 8 is_stmt 0
	beq	a2,zero,.L64
	.loc 1 355 9 is_stmt 1
	.loc 1 355 21 is_stmt 0
	and	a4,a4,a0
.LVL130:
	.loc 1 356 9 is_stmt 1
	.loc 1 356 19 is_stmt 0
	or	a5,a5,a1
.LVL131:
.L65:
	.loc 1 361 5 is_stmt 1
	.loc 1 361 59 is_stmt 0
	sw	a4,100(a3)
	.loc 1 362 5 is_stmt 1
	.loc 1 362 59 is_stmt 0
	sw	a5,108(a3)
	.loc 1 364 1
	ret
.L64:
	.loc 1 358 9 is_stmt 1
	.loc 1 358 21 is_stmt 0
	or	a4,a4,a1
.LVL132:
	.loc 1 359 9 is_stmt 1
	.loc 1 359 19 is_stmt 0
	and	a5,a5,a0
.LVL133:
	j	.L65
	.cfi_endproc
.LFE17:
	.size	qcc74x_pwm_v2_int_enable, .-qcc74x_pwm_v2_int_enable
	.section	.text.qcc74x_pwm_v2_int_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_int_clear
	.type	qcc74x_pwm_v2_int_clear, @function
qcc74x_pwm_v2_int_clear:
.LFB18:
	.loc 1 367 1 is_stmt 1
	.cfi_startproc
.LVL134:
	.loc 1 371 5
	.loc 1 371 54 is_stmt 0
	lw	a5,4(a0)
	.loc 1 371 64
	sw	a1,104(a5)
	.loc 1 373 1
	ret
	.cfi_endproc
.LFE18:
	.size	qcc74x_pwm_v2_int_clear, .-qcc74x_pwm_v2_int_clear
	.section	.text.qcc74x_pwm_v2_get_intstatus,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_get_intstatus
	.type	qcc74x_pwm_v2_get_intstatus, @function
qcc74x_pwm_v2_get_intstatus:
.LFB19:
	.loc 1 376 1 is_stmt 1
	.cfi_startproc
.LVL135:
	.loc 1 380 5
	.loc 1 381 5
	.loc 1 383 5
	.loc 1 383 14 is_stmt 0
	lw	a4,4(a0)
.LVL136:
	.loc 1 384 5 is_stmt 1
	.loc 1 384 16 is_stmt 0
	lw	a5,96(a4)
.LVL137:
	.loc 1 385 5 is_stmt 1
	.loc 1 385 17 is_stmt 0
	lw	a0,100(a4)
.LVL138:
	.loc 1 386 5 is_stmt 1
	.loc 1 386 15 is_stmt 0
	lw	a4,108(a4)
.LVL139:
	.loc 1 387 5 is_stmt 1
	.loc 1 387 26 is_stmt 0
	not	a0,a0
.LVL140:
	.loc 1 387 39
	and	a5,a5,a4
.LVL141:
	.loc 1 389 1
	and	a0,a0,a5
.LVL142:
	ret
	.cfi_endproc
.LFE19:
	.size	qcc74x_pwm_v2_get_intstatus, .-qcc74x_pwm_v2_get_intstatus
	.section	.text.qcc74x_pwm_v2_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_pwm_v2_feature_control
	.type	qcc74x_pwm_v2_feature_control, @function
qcc74x_pwm_v2_feature_control:
.LFB20:
	.loc 1 392 1 is_stmt 1
	.cfi_startproc
.LVL143:
	.loc 1 396 5
	.loc 1 397 5
	.loc 1 398 5
	.loc 1 400 5
	.loc 1 401 5 is_stmt 0
	li	a4,4
	.loc 1 400 14
	lw	a5,4(a0)
.LVL144:
	.loc 1 401 5 is_stmt 1
	beq	a1,a4,.L69
	bgt	a1,a4,.L70
	li	a4,2
	beq	a1,a4,.L71
	li	a4,3
	beq	a1,a4,.L72
	li	a4,1
	beq	a1,a4,.L73
.L85:
	li	a0,-1
.LVL145:
	ret
.LVL146:
.L70:
	li	a4,5
	beq	a1,a4,.L75
	li	a4,6
	bne	a1,a4,.L85
	.loc 1 443 13
	.loc 1 443 20 is_stmt 0
	lw	a4,72(a5)
.LVL147:
	.loc 1 444 13 is_stmt 1
	.loc 1 445 13
	.loc 1 445 20 is_stmt 0
	pkbb16	a2,a2,a4
.LVL148:
	.loc 1 446 13 is_stmt 1
	.loc 1 446 67 is_stmt 0
	sw	a2,72(a5)
	.loc 1 447 13 is_stmt 1
	j	.L86
.LVL149:
.L71:
	.loc 1 403 13
	.loc 1 403 20 is_stmt 0
	lw	a4,64(a5)
.LVL150:
	.loc 1 404 13 is_stmt 1
	.loc 1 404 16 is_stmt 0
	li	a3,1
	bne	a2,a3,.L77
	.loc 1 405 17 is_stmt 1
	.loc 1 405 24 is_stmt 0
	li	a3,67108864
.L88:
	.loc 1 435 24
	or	a4,a4,a3
.LVL151:
.L84:
	.loc 1 439 13 is_stmt 1
	.loc 1 439 67 is_stmt 0
	sw	a4,64(a5)
	.loc 1 440 13 is_stmt 1
.LVL152:
.L86:
	.loc 1 454 13
	.loc 1 396 9 is_stmt 0
	li	a0,0
.LVL153:
	.loc 1 497 5 is_stmt 1
	.loc 1 499 1 is_stmt 0
	ret
.LVL154:
.L77:
	.loc 1 407 17 is_stmt 1
	.loc 1 407 24 is_stmt 0
	li	a3,-67108864
.L87:
	.loc 1 437 24
	addi	a3,a3,-1
	and	a4,a4,a3
.LVL155:
	j	.L84
.LVL156:
.L72:
	.loc 1 413 13 is_stmt 1
	.loc 1 413 20 is_stmt 0
	lw	a4,64(a5)
.LVL157:
	.loc 1 414 13 is_stmt 1
	.loc 1 414 16 is_stmt 0
	li	a3,1
	bne	a2,a3,.L79
	.loc 1 415 17 is_stmt 1
	.loc 1 415 24 is_stmt 0
	li	a3,33554432
	j	.L88
.L79:
	.loc 1 417 17 is_stmt 1
	.loc 1 417 24 is_stmt 0
	li	a3,-33554432
	j	.L87
.LVL158:
.L69:
	.loc 1 423 13 is_stmt 1
	.loc 1 423 20 is_stmt 0
	lw	a4,64(a5)
.LVL159:
	.loc 1 424 13 is_stmt 1
	.loc 1 424 16 is_stmt 0
	li	a3,1
	bne	a2,a3,.L81
	.loc 1 425 17 is_stmt 1
	.loc 1 425 24 is_stmt 0
	li	a3,16777216
	j	.L88
.L81:
	.loc 1 427 17 is_stmt 1
	.loc 1 427 24 is_stmt 0
	li	a3,-16777216
	j	.L87
.LVL160:
.L75:
	.loc 1 433 13 is_stmt 1
	.loc 1 433 20 is_stmt 0
	lw	a4,64(a5)
.LVL161:
	.loc 1 434 13 is_stmt 1
	.loc 1 434 16 is_stmt 0
	li	a3,1
	bne	a2,a3,.L83
	.loc 1 435 17 is_stmt 1
	.loc 1 435 24 is_stmt 0
	li	a3,524288
	j	.L88
.L83:
	.loc 1 437 17 is_stmt 1
	.loc 1 437 24 is_stmt 0
	li	a3,-524288
	j	.L87
.LVL162:
.L73:
	.loc 1 450 13 is_stmt 1
	.loc 1 450 20 is_stmt 0
	lw	a4,64(a5)
.LVL163:
	.loc 1 451 13 is_stmt 1
	.loc 1 451 20 is_stmt 0
	li	a3,-15728640
	addi	a3,a3,-1
	and	a4,a4,a3
.LVL164:
	.loc 1 452 13 is_stmt 1
	.loc 1 452 28 is_stmt 0
	slli	a2,a2,20
.LVL165:
	.loc 1 452 20
	or	a2,a2,a4
.LVL166:
	.loc 1 453 13 is_stmt 1
	.loc 1 453 67 is_stmt 0
	sw	a2,64(a5)
	j	.L86
	.cfi_endproc
.LFE20:
	.size	qcc74x_pwm_v2_feature_control, .-qcc74x_pwm_v2_feature_control
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	1065353216
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_pwm_v2.h"
	.file 7 "./drivers/lhal/include/qcc74x_clock.h"
	.file 8 "./drivers/lhal/include/qcc74x_mtimer.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x8a0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF71
	.byte	0xc
	.4byte	.LASF72
	.4byte	.LASF73
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x4
	.4byte	.LASF5
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x4d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x4
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x67
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x81
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x4
	.4byte	.LASF12
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x9b
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.4byte	.LASF14
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x2c
	.byte	0x4
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x41
	.byte	0x4
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x5b
	.byte	0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x75
	.byte	0x4
	.4byte	.LASF18
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x8f
	.byte	0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0xa2
	.byte	0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x2c
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.byte	0x6
	.4byte	0xf8
	.byte	0x7
	.byte	0x4
	.4byte	0xff
	.byte	0x8
	.4byte	.LASF28
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x173
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0x104
	.byte	0
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xc6
	.byte	0x4
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0xae
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0xae
	.byte	0x9
	.byte	0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0xae
	.byte	0xa
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0xae
	.byte	0xb
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0xf6
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF29
	.byte	0x7
	.byte	0x6
	.byte	0xae
	.byte	0x8
	.4byte	0x1dc
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0xaf
	.byte	0xd
	.4byte	0xae
	.byte	0
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xb0
	.byte	0xd
	.4byte	0xae
	.byte	0x1
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0xb1
	.byte	0xd
	.4byte	0xae
	.byte	0x2
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xb2
	.byte	0xd
	.4byte	0xae
	.byte	0x3
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0xb3
	.byte	0xd
	.4byte	0xae
	.byte	0x4
	.byte	0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0xb4
	.byte	0xd
	.4byte	0xae
	.byte	0x5
	.byte	0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0xb5
	.byte	0xd
	.4byte	0xae
	.byte	0x6
	.byte	0
	.byte	0x8
	.4byte	.LASF37
	.byte	0x6
	.byte	0x6
	.byte	0xbf
	.byte	0x8
	.4byte	0x211
	.byte	0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0xc3
	.byte	0xd
	.4byte	0xae
	.byte	0
	.byte	0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0xc4
	.byte	0xe
	.4byte	0xba
	.byte	0x2
	.byte	0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0xc5
	.byte	0xe
	.4byte	0xba
	.byte	0x4
	.byte	0
	.byte	0x6
	.4byte	0x1dc
	.byte	0xb
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x187
	.byte	0x5
	.4byte	0x33
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x291
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x187
	.byte	0x3b
	.4byte	0x291
	.4byte	.LLST48
	.byte	0xd
	.string	"cmd"
	.byte	0x1
	.2byte	0x187
	.byte	0x44
	.4byte	0x33
	.byte	0x1
	.byte	0x5b
	.byte	0xc
	.string	"arg"
	.byte	0x1
	.2byte	0x187
	.byte	0x50
	.4byte	0xea
	.4byte	.LLST49
	.byte	0xe
	.string	"ret"
	.byte	0x1
	.2byte	0x18c
	.byte	0x9
	.4byte	0x33
	.byte	0
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x18d
	.byte	0xe
	.4byte	0xc6
	.byte	0x1
	.byte	0x5f
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x18e
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST50
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x10a
	.byte	0xb
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x177
	.byte	0xa
	.4byte	0xc6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x306
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x177
	.byte	0x3e
	.4byte	0x291
	.4byte	.LLST44
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x17c
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST45
	.byte	0x10
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x17d
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST46
	.byte	0x10
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x17d
	.byte	0x1a
	.4byte	0xc6
	.4byte	.LLST47
	.byte	0xf
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x17d
	.byte	0x27
	.4byte	0xc6
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x16e
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x33c
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x16e
	.byte	0x36
	.4byte	0x291
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x16e
	.byte	0x44
	.4byte	0xc6
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x11
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x157
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b0
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x157
	.byte	0x37
	.4byte	0x291
	.4byte	.LLST43
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x157
	.byte	0x45
	.4byte	0xc6
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x157
	.byte	0x51
	.4byte	0x3b0
	.byte	0x1
	.byte	0x5c
	.byte	0xf
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x15c
	.byte	0xe
	.4byte	0xc6
	.byte	0x1
	.byte	0x5d
	.byte	0xf
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x15d
	.byte	0xe
	.4byte	0xc6
	.byte	0x1
	.byte	0x5e
	.byte	0xf
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x15d
	.byte	0x1b
	.4byte	0xc6
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF52
	.byte	0x11
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x148
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x410
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x148
	.byte	0x42
	.4byte	0x291
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.string	"ch"
	.byte	0x1
	.2byte	0x148
	.byte	0x4f
	.4byte	0xae
	.4byte	.LLST40
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x14d
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST41
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x14e
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST42
	.byte	0
	.byte	0x11
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x139
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x469
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x139
	.byte	0x42
	.4byte	0x291
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.string	"ch"
	.byte	0x1
	.2byte	0x139
	.byte	0x4f
	.4byte	0xae
	.4byte	.LLST37
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x13e
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST38
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x13f
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST39
	.byte	0
	.byte	0x11
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x12a
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x4c2
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x12a
	.byte	0x43
	.4byte	0x291
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.string	"ch"
	.byte	0x1
	.2byte	0x12a
	.byte	0x50
	.4byte	0xae
	.4byte	.LLST34
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x12f
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST35
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x130
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST36
	.byte	0
	.byte	0x11
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x11b
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x51b
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x11b
	.byte	0x43
	.4byte	0x291
	.byte	0x1
	.byte	0x5a
	.byte	0xc
	.string	"ch"
	.byte	0x1
	.2byte	0x11b
	.byte	0x50
	.4byte	0xae
	.4byte	.LLST31
	.byte	0x10
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x120
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST32
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x121
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST33
	.byte	0
	.byte	0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x10f
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x57f
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x10f
	.byte	0x42
	.4byte	0x291
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.string	"ch"
	.byte	0x1
	.2byte	0x10f
	.byte	0x4f
	.4byte	0xae
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x10f
	.byte	0x5c
	.4byte	0xba
	.byte	0x1
	.byte	0x5c
	.byte	0x13
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x10f
	.byte	0x73
	.4byte	0xba
	.4byte	.LLST30
	.byte	0xf
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x114
	.byte	0xe
	.4byte	0xc6
	.byte	0x1
	.byte	0x5d
	.byte	0
	.byte	0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0xdf
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x5e1
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0xdf
	.byte	0x39
	.4byte	0x291
	.4byte	.LLST27
	.byte	0x15
	.string	"ch"
	.byte	0x1
	.byte	0xdf
	.byte	0x46
	.4byte	0xae
	.4byte	.LLST28
	.byte	0x16
	.4byte	.LASF61
	.byte	0x1
	.byte	0xdf
	.byte	0x71
	.4byte	0x5e1
	.byte	0x1
	.byte	0x5c
	.byte	0x17
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe4
	.byte	0xe
	.4byte	0xc6
	.byte	0x1
	.byte	0x60
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xe5
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST29
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x173
	.byte	0x19
	.4byte	.LASF62
	.byte	0x1
	.byte	0xba
	.byte	0x7
	.4byte	0x25
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x67b
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0xba
	.byte	0x3b
	.4byte	0x291
	.4byte	.LLST20
	.byte	0x18
	.4byte	.LASF23
	.byte	0x1
	.byte	0xbf
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST21
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xc0
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST22
	.byte	0x1a
	.string	"tmp"
	.byte	0x1
	.byte	0xc1
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST23
	.byte	0x1a
	.string	"src"
	.byte	0x1
	.byte	0xc2
	.byte	0xb
	.4byte	0x25
	.4byte	.LLST24
	.byte	0x1a
	.string	"div"
	.byte	0x1
	.byte	0xc2
	.byte	0x10
	.4byte	0x25
	.4byte	.LLST25
	.byte	0x18
	.4byte	.LASF40
	.byte	0x1
	.byte	0xc2
	.byte	0x15
	.4byte	0x25
	.4byte	.LLST26
	.byte	0x1b
	.4byte	.LVL73
	.4byte	0x88a
	.byte	0
	.byte	0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0xa1
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x6e4
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0xa1
	.byte	0x31
	.4byte	0x291
	.4byte	.LLST16
	.byte	0x18
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa6
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST17
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa7
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST18
	.byte	0x18
	.4byte	.LASF64
	.byte	0x1
	.byte	0xa8
	.byte	0xe
	.4byte	0xd2
	.4byte	.LLST19
	.byte	0x1b
	.4byte	.LVL60
	.4byte	0x897
	.byte	0x1b
	.4byte	.LVL63
	.4byte	0x897
	.byte	0
	.byte	0x14
	.4byte	.LASF65
	.byte	0x1
	.byte	0x88
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x74d
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0x88
	.byte	0x32
	.4byte	0x291
	.4byte	.LLST12
	.byte	0x18
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8d
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST13
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x8e
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST14
	.byte	0x18
	.4byte	.LASF64
	.byte	0x1
	.byte	0x8f
	.byte	0xe
	.4byte	0xd2
	.4byte	.LLST15
	.byte	0x1b
	.4byte	.LVL48
	.4byte	0x897
	.byte	0x1b
	.4byte	.LVL51
	.4byte	0x897
	.byte	0
	.byte	0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0x78
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x7a2
	.byte	0x1c
	.string	"dev"
	.byte	0x1
	.byte	0x78
	.byte	0x37
	.4byte	0x291
	.byte	0x1
	.byte	0x5a
	.byte	0x1d
	.4byte	.LASF40
	.byte	0x1
	.byte	0x78
	.byte	0x45
	.4byte	0xba
	.4byte	.LLST9
	.byte	0x18
	.4byte	.LASF23
	.byte	0x1
	.byte	0x7d
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST10
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x7e
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST11
	.byte	0
	.byte	0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x41
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x80b
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0x41
	.byte	0x33
	.4byte	0x291
	.4byte	.LLST5
	.byte	0x18
	.4byte	.LASF23
	.byte	0x1
	.byte	0x46
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST6
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0x47
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST7
	.byte	0x18
	.4byte	.LASF64
	.byte	0x1
	.byte	0x48
	.byte	0xe
	.4byte	0xd2
	.4byte	.LLST8
	.byte	0x1b
	.4byte	.LVL28
	.4byte	0x897
	.byte	0x1b
	.4byte	.LVL31
	.4byte	0x897
	.byte	0
	.byte	0x14
	.4byte	.LASF68
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x884
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0x5
	.byte	0x31
	.4byte	0x291
	.4byte	.LLST0
	.byte	0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0x5
	.byte	0x5b
	.4byte	0x884
	.4byte	.LLST1
	.byte	0x18
	.4byte	.LASF23
	.byte	0x1
	.byte	0xe
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST2
	.byte	0x18
	.4byte	.LASF41
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0xc6
	.4byte	.LLST3
	.byte	0x18
	.4byte	.LASF64
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.4byte	0xd2
	.4byte	.LLST4
	.byte	0x1b
	.4byte	.LVL4
	.4byte	0x897
	.byte	0x1b
	.4byte	.LVL7
	.4byte	0x897
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x211
	.byte	0x1e
	.4byte	.LASF69
	.4byte	.LASF69
	.byte	0x7
	.2byte	0x136
	.byte	0xa
	.byte	0x1f
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x8
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
	.byte	0x4
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
	.byte	0x18
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x18
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST48:
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL143
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL165
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL163
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL166
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL135
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL136
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL139
	.4byte	.LFE19
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL137
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140
	.4byte	.LVL142
	.2byte	0x4
	.byte	0x7a
	.byte	0
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL121
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL120
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL124
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL123
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL116
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL119
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL118
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL111
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL110
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL114
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL113
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL106
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL105
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL109
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL108
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL103
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL83
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL99
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL69
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL82
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL72
	.4byte	.LVL73-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL73-1
	.4byte	.LVL74
	.2byte	0x5
	.byte	0x78
	.byte	0
	.byte	0x4e
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL77
	.4byte	.LVL82
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL76
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x90
	.byte	0x2f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0xb
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0xf7
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL56
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL60-1
	.4byte	.LVL66
	.2byte	0x3
	.byte	0x79
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL57
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL61
	.4byte	.LVL67
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL44
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL48-1
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x79
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL45
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL49
	.4byte	.LVL55
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL42
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL43
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL42
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL24
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x82
	.byte	0x40
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL26
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0xc
	.4byte	0x38f00000
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x6
	.byte	0xc
	.4byte	0xff8888
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL29
	.4byte	.LVL38
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4-1
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
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x83
	.byte	0x40
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL9
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	.LVL22
	.4byte	.LFE5
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
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
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
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
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF36:
	.string	"dead_time"
.LASF27:
	.string	"user_data"
.LASF58:
	.string	"low_threhold"
.LASF20:
	.string	"size_t"
.LASF19:
	.string	"uintptr_t"
.LASF18:
	.string	"uint64_t"
.LASF5:
	.string	"__uint8_t"
.LASF37:
	.string	"qcc74x_pwm_v2_config_s"
.LASF40:
	.string	"period"
.LASF13:
	.string	"long long unsigned int"
.LASF68:
	.string	"qcc74x_pwm_v2_init"
.LASF46:
	.string	"regval_en"
.LASF25:
	.string	"sub_idx"
.LASF56:
	.string	"qcc74x_pwm_v2_channel_positive_start"
.LASF59:
	.string	"high_threhold"
.LASF11:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF69:
	.string	"qcc74x_clk_get_system_clock"
.LASF8:
	.string	"long int"
.LASF73:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/lhal"
.LASF16:
	.string	"uint16_t"
.LASF67:
	.string	"qcc74x_pwm_v2_deinit"
.LASF35:
	.string	"negative_brake_state"
.LASF9:
	.string	"__uint32_t"
.LASF57:
	.string	"qcc74x_pwm_v2_channel_set_threshold"
.LASF60:
	.string	"qcc74x_pwm_v2_channel_init"
.LASF32:
	.string	"positive_stop_state"
.LASF1:
	.string	"unsigned int"
.LASF10:
	.string	"long unsigned int"
.LASF22:
	.string	"name"
.LASF7:
	.string	"short unsigned int"
.LASF71:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF70:
	.string	"qcc74x_mtimer_get_time_ms"
.LASF30:
	.string	"positive_polarity"
.LASF45:
	.string	"regval_mask"
.LASF51:
	.string	"enable"
.LASF23:
	.string	"reg_base"
.LASF50:
	.string	"int_en"
.LASF12:
	.string	"__uint64_t"
.LASF0:
	.string	"float"
.LASF33:
	.string	"negative_stop_state"
.LASF55:
	.string	"qcc74x_pwm_v2_channel_negative_start"
.LASF44:
	.string	"regval_sts"
.LASF52:
	.string	"_Bool"
.LASF3:
	.string	"unsigned char"
.LASF49:
	.string	"qcc74x_pwm_v2_int_enable"
.LASF41:
	.string	"regval"
.LASF4:
	.string	"short int"
.LASF14:
	.string	"__uintptr_t"
.LASF63:
	.string	"qcc74x_pwm_v2_stop"
.LASF43:
	.string	"qcc74x_pwm_v2_get_intstatus"
.LASF17:
	.string	"uint32_t"
.LASF34:
	.string	"positive_brake_state"
.LASF24:
	.string	"irq_num"
.LASF21:
	.string	"char"
.LASF61:
	.string	"config"
.LASF6:
	.string	"__uint16_t"
.LASF42:
	.string	"qcc74x_pwm_v2_feature_control"
.LASF39:
	.string	"clk_div"
.LASF72:
	.string	"./drivers/lhal/src/qcc74x_pwm_v2.c"
.LASF26:
	.string	"dev_type"
.LASF54:
	.string	"qcc74x_pwm_v2_channel_positive_stop"
.LASF64:
	.string	"start_time"
.LASF28:
	.string	"qcc74x_device_s"
.LASF47:
	.string	"int_clear"
.LASF65:
	.string	"qcc74x_pwm_v2_start"
.LASF48:
	.string	"qcc74x_pwm_v2_int_clear"
.LASF66:
	.string	"qcc74x_pwm_v2_set_period"
.LASF15:
	.string	"uint8_t"
.LASF53:
	.string	"qcc74x_pwm_v2_channel_negative_stop"
.LASF38:
	.string	"clk_source"
.LASF62:
	.string	"qcc74x_pwm_v2_get_frequency"
.LASF29:
	.string	"qcc74x_pwm_v2_channel_config_s"
.LASF31:
	.string	"negative_polarity"
	.ident	"GCC: (GNU) 10.4.0"
