	.file	"qcc74x_rtc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.clock_daysbeforemonth,"ax",@progbits
	.align	1
	.type	clock_daysbeforemonth, @function
clock_daysbeforemonth:
.LFB9:
	.file 1 "./drivers/lhal/src/qcc74x_rtc.c"
	.loc 1 130 1
	.cfi_startproc
.LVL0:
	.loc 1 131 5
	.loc 1 131 42 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	.loc 1 133 8
	li	a4,1
	.loc 1 131 9
	lrhu	a5,a5,a0,1
.LVL1:
	.loc 1 133 5 is_stmt 1
	.loc 1 133 8 is_stmt 0
	ble	a0,a4,.L1
	.loc 1 133 20 discriminator 1
	beq	a1,zero,.L1
	.loc 1 134 9 is_stmt 1
	.loc 1 134 15 is_stmt 0
	addi	a5,a5,1
.LVL2:
	.loc 1 137 5 is_stmt 1
.L1:
	.loc 1 138 1 is_stmt 0
	mv	a0,a5
.LVL3:
	ret
	.cfi_endproc
.LFE9:
	.size	clock_daysbeforemonth, .-clock_daysbeforemonth
	.section	.text.__mktime.constprop.0,"ax",@progbits
	.align	1
	.type	__mktime.constprop.0, @function
__mktime.constprop.0:
.LFB22:
	.loc 1 325 15 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 327 5
	.loc 1 328 5
	.loc 1 334 5
	.loc 1 325 15 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 334 34
	lui	s0,%hi(.LANCHOR1)
	addi	a4,s0,%lo(.LANCHOR1)
	lw	a5,20(a4)
	.loc 1 325 15
	sw	s2,16(sp)
	sw	s3,12(sp)
	.loc 1 334 11
	addi	a3,a5,1900
.LBB8:
.LBB9:
	.loc 1 249 18
	addi	a1,a5,-70
	.loc 1 253 19
	addi	a5,a5,-69
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 253 27
	srai	s2,a5,2
	srai	s3,a5,31
	.loc 1 253 10
	li	a5,400
	rem	a5,a3,a5
.LBE9:
.LBE8:
	.loc 1 334 11
	lw	a0,16(a4)
	.loc 1 325 15
	sw	s1,20(sp)
	.cfi_offset 9, -12
	.loc 1 334 11
	lw	s1,12(a4)
.LVL5:
.LBB17:
.LBB14:
	.loc 1 245 5 is_stmt 1
	.loc 1 249 5
	.loc 1 249 26 is_stmt 0
	li	a4,365
.LBE14:
.LBE17:
	.loc 1 325 15
	sw	ra,28(sp)
	.cfi_offset 1, -4
	addi	s0,s0,%lo(.LANCHOR1)
.LBB18:
.LBB15:
	.loc 1 249 26
	mul	a1,a1,a4
	.loc 1 249 10
	mv	a6,a1
	srai	a7,a1,31
.LVL6:
	.loc 1 253 5 is_stmt 1
	.loc 1 253 10 is_stmt 0
	add64	s2,s2,a6
.LVL7:
	.loc 1 257 5 is_stmt 1
.LBB10:
.LBB11:
	.loc 1 126 5
	.loc 1 126 69 is_stmt 0
	li	a1,1
	beq	a5,zero,.L7
.LVL8:
.LBB12:
.LBB13:
	.loc 1 126 34
	li	a1,100
	rem	a1,a3,a1
	.loc 1 126 69
	beq	a1,zero,.L7
	.loc 1 126 55
	andi	a1,a3,3
	.loc 1 126 64
	seqz	a1,a1
.LVL9:
.L7:
.LBE13:
.LBE12:
.LBE11:
.LBE10:
	.loc 1 257 21
	andi	a1,a1,0xff
	call	clock_daysbeforemonth
.LVL10:
	.loc 1 261 17
	addi	a1,s1,-1
	.loc 1 257 13
	mv	a2,a0
	srai	a3,a0,31
	.loc 1 257 10
	add64	a2,a2,s2
.LVL11:
	.loc 1 261 5 is_stmt 1
	.loc 1 265 5
.LBE15:
.LBE18:
	.loc 1 338 5
	.loc 1 340 5
.LBB19:
.LBB16:
	.loc 1 261 17 is_stmt 0
	mv	a4,a1
	srai	a5,a1,31
	.loc 1 261 10
	add64	a2,a4,a2
.LVL12:
.LBE16:
.LBE19:
	.loc 1 338 17
	li	a1,24
	mulr64	a4,a1,a2
	mula	a5,a1,a3
	.loc 1 338 26
	lw	a1,8(s0)
	.loc 1 338 46
	lw	a0,4(s0)
	.loc 1 341 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 338 26
	mv	a2,a1
	srai	a3,a1,31
	.loc 1 338 37
	li	a1,60
	.loc 1 341 1
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	.loc 1 338 22
	add64	a2,a4,a2
	.loc 1 338 37
	mulr64	a4,a1,a2
	mula	a5,a1,a3
	.loc 1 338 46
	mv	a2,a0
	srai	a3,a0,31
	.loc 1 338 42
	add64	a4,a4,a2
	.loc 1 338 56
	mulr64	a2,a1,a4
	mula	a3,a1,a5
	.loc 1 338 65
	lw	a1,0(s0)
	.loc 1 341 1
	lw	s0,24(sp)
	.cfi_restore 8
	.loc 1 338 65
	mv	a4,a1
	srai	a5,a1,31
	.loc 1 341 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	add64	a0,a2,a4
	jr	ra
	.cfi_endproc
.LFE22:
	.size	__mktime.constprop.0, .-__mktime.constprop.0
	.section	.text.qcc74x_rtc_disable,"ax",@progbits
	.align	1
	.globl	qcc74x_rtc_disable
	.type	qcc74x_rtc_disable, @function
qcc74x_rtc_disable:
.LFB5:
	.loc 1 13 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 20 5
	.loc 1 23 5
	.loc 1 23 12 is_stmt 0
	li	a4,536932352
	lw	a5,0(a4)
.LVL14:
	.loc 1 24 5 is_stmt 1
	.loc 1 24 12 is_stmt 0
	andi	a5,a5,-2
.LVL15:
	.loc 1 25 5 is_stmt 1
	.loc 1 25 58 is_stmt 0
	sw	a5,0(a4)
	.loc 1 27 1
	ret
	.cfi_endproc
.LFE5:
	.size	qcc74x_rtc_disable, .-qcc74x_rtc_disable
	.section	.text.qcc74x_rtc_set_time,"ax",@progbits
	.align	1
	.globl	qcc74x_rtc_set_time
	.type	qcc74x_rtc_set_time, @function
qcc74x_rtc_set_time:
.LFB6:
	.loc 1 30 1 is_stmt 1
	.cfi_startproc
.LVL16:
	.loc 1 34 5
	.loc 1 35 5
	.loc 1 36 5
	.loc 1 38 5
	.loc 1 41 5
	.loc 1 41 12 is_stmt 0
	li	a5,536932352
	lw	a4,0(a5)
.LVL17:
	.loc 1 42 5 is_stmt 1
	.loc 1 51 12 is_stmt 0
	li	a3,-2147483648
	.loc 1 30 1
	mv	a0,a1
.LVL18:
	.loc 1 42 12
	andi	a4,a4,-15
.LVL19:
	.loc 1 43 5 is_stmt 1
	.loc 1 43 58 is_stmt 0
	sw	a4,0(a5)
	.loc 1 45 5 is_stmt 1
.LVL20:
	.loc 1 46 5
	.loc 1 46 12 is_stmt 0
	ori	a4,a4,18
.LVL21:
	.loc 1 47 5 is_stmt 1
	.loc 1 47 58 is_stmt 0
	sw	a4,0(a5)
	.loc 1 50 5 is_stmt 1
	.loc 1 50 12 is_stmt 0
	lw	a4,16(a5)
.LVL22:
	.loc 1 51 5 is_stmt 1
	.loc 1 30 1 is_stmt 0
	mv	a1,a2
.LVL23:
	.loc 1 51 12
	or	a2,a4,a3
.LVL24:
	.loc 1 52 5 is_stmt 1
	xori	a3,a3,-1
	.loc 1 52 59 is_stmt 0
	sw	a2,16(a5)
	.loc 1 53 5 is_stmt 1
	and	a4,a4,a3
.LVL25:
	.loc 1 54 5
	.loc 1 54 59 is_stmt 0
	sw	a4,16(a5)
	.loc 1 62 5 is_stmt 1
	.loc 1 62 16 is_stmt 0
	lw	a4,16(a5)
.LVL26:
	.loc 1 63 5 is_stmt 1
	.loc 1 64 5
	.loc 1 64 17 is_stmt 0
	lw	a6,12(a5)
	.loc 1 64 13
	andi	a3,a4,0xff
	mv	a2,a6
.LVL27:
	.loc 1 68 5 is_stmt 1
	.loc 1 68 13 is_stmt 0
	add64	a2,a2,a0
.LVL28:
	.loc 1 75 5 is_stmt 1
	.loc 1 75 58 is_stmt 0
	sw	a2,4(a5)
.LVL29:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 87 is_stmt 0
	andi	a4,a3,255
	.loc 1 76 58
	sw	a4,8(a5)
	.loc 1 80 5 is_stmt 1
	.loc 1 80 12 is_stmt 0
	lw	a4,0(a5)
.LVL30:
	.loc 1 81 5 is_stmt 1
	.loc 1 81 12 is_stmt 0
	ori	a4,a4,1
.LVL31:
	.loc 1 82 5 is_stmt 1
	.loc 1 82 58 is_stmt 0
	sw	a4,0(a5)
	.loc 1 84 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_rtc_set_time, .-qcc74x_rtc_set_time
	.section	.text.qcc74x_rtc_get_time,"ax",@progbits
	.align	1
	.globl	qcc74x_rtc_get_time
	.type	qcc74x_rtc_get_time, @function
qcc74x_rtc_get_time:
.LFB7:
	.loc 1 87 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 91 5
	.loc 1 92 5
	.loc 1 93 5
	.loc 1 94 5
	.loc 1 96 5
	.loc 1 99 5
	.loc 1 99 12 is_stmt 0
	li	a5,536932352
	lw	a4,16(a5)
.LVL33:
	.loc 1 100 5 is_stmt 1
	.loc 1 100 12 is_stmt 0
	li	a3,-2147483648
	or	a2,a4,a3
.LVL34:
	.loc 1 101 5 is_stmt 1
	xori	a3,a3,-1
	.loc 1 101 59 is_stmt 0
	sw	a2,16(a5)
	.loc 1 102 5 is_stmt 1
	and	a4,a4,a3
.LVL35:
	.loc 1 103 5
	.loc 1 103 59 is_stmt 0
	sw	a4,16(a5)
	.loc 1 110 5 is_stmt 1
	.loc 1 110 15 is_stmt 0
	lw	a0,12(a5)
.LVL36:
	.loc 1 111 5 is_stmt 1
	.loc 1 111 15 is_stmt 0
	lw	a1,16(a5)
.LVL37:
	.loc 1 114 5 is_stmt 1
	.loc 1 116 1 is_stmt 0
	andi	a1,a1,0xff
.LVL38:
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_rtc_get_time, .-qcc74x_rtc_get_time
	.section	.text.qcc74x_rtc_get_delta_counter,"ax",@progbits
	.align	1
	.globl	qcc74x_rtc_get_delta_counter
	.type	qcc74x_rtc_get_delta_counter, @function
qcc74x_rtc_get_delta_counter:
.LFB15:
	.loc 1 347 1 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 348 5
	.loc 1 350 5
	.loc 1 347 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	mv	s1,a0
	.loc 1 350 11
	li	a0,0
.LVL40:
	.loc 1 347 1
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 347 1
	mv	s0,a1
	.loc 1 350 11
	call	qcc74x_rtc_get_time
.LVL41:
	.loc 1 351 5 is_stmt 1
	.loc 1 351 13 is_stmt 0
	andi	a5,s0,255
	mv	a4,s1
.LVL42:
	.loc 1 353 5 is_stmt 1
	.loc 1 353 8 is_stmt 0
	bgtu	a5,a1,.L20
	bne	a5,a1,.L18
	bgeu	a0,s1,.L18
.L20:
	.loc 1 354 9 is_stmt 1
	.loc 1 354 13 is_stmt 0
	li	a2,0
	li	a3,256
	add64	a0,a0,a2
.LVL43:
.L18:
	.loc 1 357 5 is_stmt 1
	.loc 1 358 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	sub64	a0,a0,a4
.LVL44:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	qcc74x_rtc_get_delta_counter, .-qcc74x_rtc_get_delta_counter
	.section	.text.qcc74x_rtc_get_delta_time_ms,"ax",@progbits
	.align	1
	.globl	qcc74x_rtc_get_delta_time_ms
	.type	qcc74x_rtc_get_delta_time_ms, @function
qcc74x_rtc_get_delta_time_ms:
.LFB16:
	.loc 1 361 1 is_stmt 1
	.cfi_startproc
.LVL45:
	.loc 1 362 5
	.loc 1 364 5
	.loc 1 361 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 364 11
	call	qcc74x_rtc_get_delta_counter
.LVL46:
	.loc 1 366 5 is_stmt 1
	.loc 1 366 29 is_stmt 0
	li	a3,1000
	mulr64	a4,a3,a0
	mula	a5,a3,a1
	.loc 1 367 1
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	wexti	a0,a4,15
.LVL47:
	srli	a1,a5,15
	jr	ra
	.cfi_endproc
.LFE16:
	.size	qcc74x_rtc_get_delta_time_ms, .-qcc74x_rtc_get_delta_time_ms
	.section	.text.qcc74x_rtc_set_utc_time,"ax",@progbits
	.align	1
	.globl	qcc74x_rtc_set_utc_time
	.type	qcc74x_rtc_set_utc_time, @function
qcc74x_rtc_set_utc_time:
.LFB17:
	.loc 1 373 1 is_stmt 1
	.cfi_startproc
.LVL48:
	.loc 1 374 5
	.loc 1 373 1 is_stmt 0
	mv	a1,a0
	.loc 1 374 5
	lui	a0,%hi(.LANCHOR1)
.LVL49:
	.loc 1 373 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 374 5
	li	a2,32
	addi	a0,a0,%lo(.LANCHOR1)
	.loc 1 373 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 374 5
	call	arch_memcpy
.LVL50:
	.loc 1 375 5 is_stmt 1
	.loc 1 375 21 is_stmt 0
	li	a0,0
	call	qcc74x_rtc_get_time
.LVL51:
	.loc 1 376 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 375 19
	lui	a5,%hi(.LANCHOR2)
	sw	a0,%lo(.LANCHOR2)(a5)
	sw	a1,%lo(.LANCHOR2+4)(a5)
	.loc 1 376 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE17:
	.size	qcc74x_rtc_set_utc_time, .-qcc74x_rtc_set_utc_time
	.globl	__udivdi3
	.globl	__divdi3
	.section	.text.qcc74x_rtc_get_utc_time,"ax",@progbits
	.align	1
	.globl	qcc74x_rtc_get_utc_time
	.type	qcc74x_rtc_get_utc_time, @function
qcc74x_rtc_get_utc_time:
.LFB18:
	.loc 1 379 1 is_stmt 1
	.cfi_startproc
.LVL52:
	.loc 1 380 5
	.loc 1 382 5
	.loc 1 379 1 is_stmt 0
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	.loc 1 382 21
	lui	a5,%hi(.LANCHOR2)
	.loc 1 379 1
	sw	s8,40(sp)
	.cfi_offset 24, -40
	mv	s8,a0
	.loc 1 382 21
	lw	a0,%lo(.LANCHOR2)(a5)
.LVL53:
	lw	a1,%lo(.LANCHOR2+4)(a5)
	.loc 1 379 1
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	sw	s2,64(sp)
	sw	s3,60(sp)
	sw	s4,56(sp)
	sw	s5,52(sp)
	sw	s6,48(sp)
	sw	s7,44(sp)
	sw	s9,36(sp)
	sw	s10,32(sp)
	sw	s11,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 382 21
	call	qcc74x_rtc_get_delta_time_ms
.LVL54:
	mv	s2,a0
	mv	s3,a1
	.loc 1 383 5 is_stmt 1
.LVL55:
	.loc 1 384 5
	.loc 1 384 22 is_stmt 0
	call	__mktime.constprop.0
.LVL56:
	mv	s6,a0
	mv	s7,a1
.LVL57:
	.loc 1 385 5 is_stmt 1
.LBB30:
.LBB31:
	.loc 1 284 5
	.loc 1 285 5
	.loc 1 286 5
	.loc 1 287 5
	.loc 1 288 5
	.loc 1 289 5
	.loc 1 290 5
	.loc 1 291 5
	.loc 1 295 5
.LBE31:
.LBE30:
	.loc 1 383 35 is_stmt 0
	li	a2,1000
	li	a3,0
	mv	a0,s2
	mv	a1,s3
	call	__udivdi3
.LVL58:
	.loc 1 384 19
	add64	s6,a0,s6
.LVL59:
.LBB75:
.LBB68:
	.loc 1 299 5 is_stmt 1
	.loc 1 299 9 is_stmt 0
	li	a2,86016
	addi	a2,a2,384
	li	a3,0
	mv	a0,s6
	mv	a1,s7
	call	__divdi3
.LVL60:
	.loc 1 300 57
	li	s2,-86016
	addi	s2,s2,-384
	neg	a5,a0
	mula	a5,s2,a1
	mulr64	s2,a0,s2
	.loc 1 302 18
	li	a2,4096
	.loc 1 299 9
	mv	s0,a0
	mv	s1,a1
.LVL61:
	.loc 1 300 5 is_stmt 1
	.loc 1 302 18 is_stmt 0
	addi	a2,a2,-496
	li	a3,0
	.loc 1 300 57
	add	s3,a5,s3
	.loc 1 300 11
	add64	s2,s2,s6
.LVL62:
	.loc 1 302 5 is_stmt 1
	.loc 1 302 18 is_stmt 0
	mv	a0,s2
	mv	a1,s3
	call	__divdi3
.LVL63:
	.loc 1 303 11
	li	a5,-4096
	addi	a5,a5,496
	smar64	s2,a0,a5
.LVL64:
	.loc 1 305 17
	li	a2,60
	li	a3,0
	mv	a1,s3
	.loc 1 302 18
	mv	s5,a0
.LVL65:
	.loc 1 303 5 is_stmt 1
	.loc 1 305 5
	.loc 1 305 17 is_stmt 0
	mv	a0,s2
.LVL66:
	call	__divdi3
.LVL67:
	.loc 1 306 11
	li	a5,-60
.LBB32:
.LBB33:
	.loc 1 147 22
	li	a2,126230528
.LBE33:
.LBE32:
	.loc 1 306 11
	smar64	s2,a0,a5
.LVL68:
.LBB49:
.LBB44:
	.loc 1 147 22
	addi	a2,a2,-128
	li	a3,0
.LBE44:
.LBE49:
	.loc 1 305 17
	mv	s4,a0
.LVL69:
	.loc 1 306 5 is_stmt 1
	.loc 1 308 5
	.loc 1 311 5
.LBB50:
.LBB45:
	.loc 1 147 5
	.loc 1 147 22 is_stmt 0
	mv	a1,s7
	mv	a0,s6
.LVL70:
	call	__divdi3
.LVL71:
	.loc 1 148 5 is_stmt 1
	.loc 1 148 19 is_stmt 0
	li	a5,1461
	mul	a5,a0,a5
	.loc 1 149 11
	slli	a0,a0,2
.LVL72:
	addi	s6,a0,1970
.LBB34:
.LBB35:
.LBB36:
.LBB37:
	.loc 1 126 34
	li	a0,100
.LBE37:
.LBE36:
.LBE35:
.LBE34:
	.loc 1 148 19
	mv	a2,a5
	srai	a3,a5,31
	.loc 1 148 10
	sub64	s0,s0,a2
.LVL73:
	.loc 1 149 5 is_stmt 1
	.loc 1 158 20 is_stmt 0
	li	a2,400
.L30:
.LVL74:
	.loc 1 152 5 is_stmt 1
	.loc 1 153 5
	.loc 1 155 5
	.loc 1 158 9
.LBB42:
.LBB40:
	.loc 1 126 5
.LBE40:
.LBE42:
	.loc 1 158 20 is_stmt 0
	rem	a5,s6,a2
.LBB43:
.LBB41:
	.loc 1 126 69
	li	a1,1
	beq	a5,zero,.L27
.LVL75:
.LBB39:
.LBB38:
	.loc 1 126 34
	rem	a1,s6,a0
	.loc 1 126 69
	beq	a1,zero,.L27
	.loc 1 126 55
	andi	a1,s6,3
	.loc 1 126 64
	seqz	a1,a1
.LVL76:
.L27:
.LBE38:
.LBE39:
.LBE41:
.LBE43:
	.loc 1 162 9 is_stmt 1
	.loc 1 166 9
	.loc 1 162 31 is_stmt 0
	addi	a5,a1,365
.LVL77:
	.loc 1 166 18
	mv	s10,a5
	srai	a5,a5,31
.LVL78:
	mv	s11,a5
	.loc 1 166 12
	addi	a3,s6,1
	bgt	a5,s1,.L28
	bne	a5,s1,.L40
	bltu	s0,s10,.L28
.L40:
	.loc 1 169 13 is_stmt 1
.LVL79:
	.loc 1 170 13
	.loc 1 170 18 is_stmt 0
	sub64	s0,s0,s10
.LVL80:
	.loc 1 155 11 is_stmt 1
	.loc 1 158 18 is_stmt 0
	mv	s6,a3
	j	.L30
.LVL81:
.L28:
	andi	a1,a1,0xff
	.loc 1 184 9
	li	a5,11
	.loc 1 183 9
	li	s7,0
	.loc 1 201 12
	mv	s9,s1
	.loc 1 208 16
	mv	s11,s0
.LVL82:
.L35:
	.loc 1 186 5 is_stmt 1
	.loc 1 189 9
	.loc 1 189 22 is_stmt 0
	add	s10,s7,a5
	.loc 1 189 15
	srai	s10,s10,1
.LVL83:
	.loc 1 195 9 is_stmt 1
	.loc 1 195 15 is_stmt 0
	addi	a4,s10,1
	mv	a0,a4
	sw	a1,8(sp)
	.loc 1 189 22
	sw	a5,12(sp)
	.loc 1 195 15
	sw	a4,4(sp)
	call	clock_daysbeforemonth
.LVL84:
	.loc 1 201 9 is_stmt 1
	.loc 1 201 17 is_stmt 0
	srai	a3,a0,31
	.loc 1 201 12
	lw	a1,8(sp)
	bgt	a3,s9,.L41
	lw	a4,4(sp)
	lw	a5,12(sp)
	bne	a3,s9,.L38
	bleu	a0,s11,.L38
.L41:
	.loc 1 206 13 is_stmt 1
	.loc 1 206 19 is_stmt 0
	mv	a0,s10
.LVL85:
	sw	a1,4(sp)
	call	clock_daysbeforemonth
.LVL86:
	.loc 1 208 13 is_stmt 1
	.loc 1 208 21 is_stmt 0
	srai	a5,a0,31
	.loc 1 208 16
	lw	a1,4(sp)
	bgt	a5,s9,.L42
	bne	a5,s9,.L39
	bleu	a0,s11,.L39
.L42:
	.loc 1 211 17 is_stmt 1
	.loc 1 211 21 is_stmt 0
	addi	a5,s10,-1
.LVL87:
.L31:
	.loc 1 227 9 is_stmt 1
	.loc 1 228 13
	.loc 1 228 5 is_stmt 0
	blt	s7,a5,.L35
.LVL88:
.L33:
	.loc 1 233 5 is_stmt 1
	.loc 1 233 13 is_stmt 0
	mv	a0,s7
.LVL89:
	call	clock_daysbeforemonth
.LVL90:
	.loc 1 239 5 is_stmt 1
	.loc 1 240 5
	.loc 1 233 13 is_stmt 0
	mv	a4,a0
	srai	a5,a0,31
.LBE45:
.LBE50:
	.loc 1 316 20
	sw	s7,16(s8)
.LBB51:
.LBB46:
	.loc 1 239 20
	addi	s7,s7,1
.LVL91:
	.loc 1 233 10
	sub64	s0,s0,a4
.LVL92:
.LBE46:
.LBE51:
	.loc 1 318 23
	andi	s7,s7,0xff
.LVL93:
	.loc 1 315 33
	addi	a5,s6,-1900
.LBB52:
.LBB47:
	.loc 1 240 17
	addi	s0,s0,1
.LVL94:
.LBE47:
.LBE52:
	.loc 1 315 5 is_stmt 1
	.loc 1 315 21 is_stmt 0
	sw	a5,20(s8)
	.loc 1 316 5 is_stmt 1
	.loc 1 317 5
.LBB53:
.LBB54:
	.loc 1 272 16 is_stmt 0
	addi	a5,s7,-1
.LBE54:
.LBE53:
	.loc 1 317 21
	sw	s0,12(s8)
	.loc 1 318 5 is_stmt 1
.LBB61:
.LBB55:
	.loc 1 272 8 is_stmt 0
	andi	a5,a5,0xff
	li	a4,1
.LBE55:
.LBE61:
	.loc 1 318 23
	extu	s6,s6,15,0
.LVL95:
.LBB62:
.LBB56:
	.loc 1 270 5 is_stmt 1
	.loc 1 272 5
	.loc 1 272 8 is_stmt 0
	bgtu	a5,a4,.L36
	.loc 1 273 9 is_stmt 1
	.loc 1 273 11 is_stmt 0
	addi	s7,s7,12
.LVL96:
	.loc 1 274 11
	addi	s6,s6,-1
.LVL97:
	.loc 1 273 11
	andi	s7,s7,0xff
.LVL98:
	.loc 1 274 9 is_stmt 1
	.loc 1 274 11 is_stmt 0
	extu	s6,s6,15,0
.LVL99:
.L36:
	.loc 1 277 5 is_stmt 1
	.loc 1 279 5
	.loc 1 277 15 is_stmt 0
	andi	s0,s0,255
.LVL100:
	addsl	s0, s0, s7, 1
	.loc 1 277 27
	li	a5,3
	.loc 1 277 32
	addi	s7,s7,1
	.loc 1 277 27
	mul	a5,s7,a5
	.loc 1 277 37
	li	s7,5
	.loc 1 277 49
	srli	a4,s6,2
.LBE56:
.LBE62:
.LBE68:
.LBE75:
	.loc 1 386 1
	lw	ra,76(sp)
	.cfi_remember_state
	.cfi_restore 1
.LBB76:
.LBB69:
	.loc 1 319 21
	sw	s5,8(s8)
	.loc 1 320 20
	sw	s4,4(s8)
	.loc 1 321 20
	sw	s2,0(s8)
.LBE69:
.LBE76:
	.loc 1 386 1
	lw	s1,68(sp)
	.cfi_restore 9
	lw	s2,64(sp)
	.cfi_restore 18
.LVL101:
	lw	s3,60(sp)
	.cfi_restore 19
.LBB77:
.LBB70:
.LBB63:
.LBB57:
	.loc 1 277 37
	div	a5,a5,s7
.LBE57:
.LBE63:
.LBE70:
.LBE77:
	.loc 1 386 1
	lw	s4,56(sp)
	.cfi_restore 20
.LVL102:
	lw	s5,52(sp)
	.cfi_restore 21
.LVL103:
	lw	s7,44(sp)
	.cfi_restore 23
	lw	s9,36(sp)
	.cfi_restore 25
	lw	s10,32(sp)
	.cfi_restore 26
	lw	s11,28(sp)
	.cfi_restore 27
.LBB78:
.LBB71:
.LBB64:
.LBB58:
	.loc 1 277 23
	add	a5,s0,a5
	.loc 1 277 41
	add	a5,a5,s6
	.loc 1 277 45
	add	a5,a5,a4
	.loc 1 277 57
	li	a4,100
	divu	a4,s6,a4
.LBE58:
.LBE64:
.LBE71:
.LBE78:
	.loc 1 386 1
	lw	s0,72(sp)
	.cfi_restore 8
.LBB79:
.LBB72:
.LBB65:
.LBB59:
	.loc 1 277 53
	sub	a5,a5,a4
	.loc 1 277 67
	li	a4,400
	divu	s6,s6,a4
	.loc 1 277 10
	li	a4,7
	.loc 1 277 63
	add	a5,a5,s6
	.loc 1 277 10
	rem	a5,a5,a4
.LBE59:
.LBE65:
.LBE72:
.LBE79:
	.loc 1 386 1
	lw	s6,48(sp)
	.cfi_restore 22
.LBB80:
.LBB73:
.LBB66:
.LBB60:
	.loc 1 279 17
	addi	a5,a5,1
.LBE60:
.LBE66:
	.loc 1 318 21
	sw	a5,24(s8)
	.loc 1 319 5 is_stmt 1
	.loc 1 320 5
	.loc 1 321 5
	.loc 1 322 5
.LVL104:
.LBE73:
.LBE80:
	.loc 1 386 1 is_stmt 0
	lw	s8,40(sp)
	.cfi_restore 24
.LVL105:
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
.LVL106:
.L38:
	.cfi_restore_state
.LBB81:
.LBB74:
.LBB67:
.LBB48:
	.loc 1 220 17
	mv	s7,a4
.LVL107:
	j	.L31
.LVL108:
.L39:
	.loc 1 189 15
	mv	s7,s10
.LVL109:
	j	.L33
.LBE48:
.LBE67:
.LBE74:
.LBE81:
	.cfi_endproc
.LFE18:
	.size	qcc74x_rtc_get_utc_time, .-qcc74x_rtc_get_utc_time
	.section	.text.qcc74x_rtc_get_utc_timestamp,"ax",@progbits
	.align	1
	.globl	qcc74x_rtc_get_utc_timestamp
	.type	qcc74x_rtc_get_utc_timestamp, @function
qcc74x_rtc_get_utc_timestamp:
.LFB19:
	.loc 1 389 1 is_stmt 1
	.cfi_startproc
	.loc 1 390 5
	.loc 1 392 5
	.loc 1 392 21 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	lw	a0,%lo(.LANCHOR2)(a5)
	lw	a1,%lo(.LANCHOR2+4)(a5)
	.loc 1 389 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 392 21
	call	qcc74x_rtc_get_delta_time_ms
.LVL110:
	.loc 1 393 5 is_stmt 1
	.loc 1 393 19 is_stmt 0
	li	a2,1000
	li	a3,0
	call	__udivdi3
.LVL111:
	mv	s0,a0
	mv	s1,a1
.LVL112:
	.loc 1 394 5 is_stmt 1
	.loc 1 394 22 is_stmt 0
	call	__mktime.constprop.0
.LVL113:
	.loc 1 396 5 is_stmt 1
	.loc 1 397 1 is_stmt 0
	add64	a0,a0,s0
.LVL114:
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
.LFE19:
	.size	qcc74x_rtc_get_utc_timestamp, .-qcc74x_rtc_get_utc_timestamp
	.section	.bss.g_rtc_tm,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_rtc_tm, @object
	.size	g_rtc_tm, 32
g_rtc_tm:
	.zero	32
	.section	.bss.s_rtc_ref_cnt,"aw",@nobits
	.align	3
	.set	.LANCHOR2,. + 0
	.type	s_rtc_ref_cnt, @object
	.size	s_rtc_ref_cnt, 8
s_rtc_ref_cnt:
	.zero	8
	.section	.rodata.g_noleap_daysbeforemonth,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_noleap_daysbeforemonth, @object
	.size	g_noleap_daysbeforemonth, 26
g_noleap_daysbeforemonth:
	.half	0
	.half	31
	.half	59
	.half	90
	.half	120
	.half	151
	.half	181
	.half	212
	.half	243
	.half	273
	.half	304
	.half	334
	.half	365
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_timeval.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_rtc.h"
	.file 7 "./drivers/lhal/include/qcc74x_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x9f9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF74
	.byte	0xc
	.4byte	.LASF75
	.4byte	.LASF76
	.4byte	.Ldebug_ranges0+0x120
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
	.4byte	0x25
	.byte	0x4
	.4byte	.LASF13
	.byte	0x2
	.byte	0xc8
	.byte	0x17
	.4byte	0x88
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
	.byte	0x5
	.4byte	0xbf
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
	.byte	0x6
	.4byte	0xdc
	.byte	0x4
	.4byte	.LASF19
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0xa7
	.byte	0x7
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF20
	.byte	0x5
	.4byte	0xfb
	.byte	0x8
	.byte	0x4
	.4byte	0x102
	.byte	0x4
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2a
	.byte	0x19
	.4byte	0x9b
	.byte	0x5
	.4byte	0x10d
	.byte	0x9
	.4byte	.LASF28
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x187
	.byte	0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0x107
	.byte	0
	.byte	0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xd0
	.byte	0x4
	.byte	0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0xb
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0xb3
	.byte	0x9
	.byte	0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0xb3
	.byte	0xa
	.byte	0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0xb3
	.byte	0xb
	.byte	0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0xf9
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x20
	.byte	0x6
	.byte	0x12
	.byte	0x8
	.4byte	0x1fd
	.byte	0xa
	.4byte	.LASF30
	.byte	0x6
	.byte	0x13
	.byte	0x9
	.4byte	0x33
	.byte	0
	.byte	0xa
	.4byte	.LASF31
	.byte	0x6
	.byte	0x14
	.byte	0x9
	.4byte	0x33
	.byte	0x4
	.byte	0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0x15
	.byte	0x9
	.4byte	0x33
	.byte	0x8
	.byte	0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0x16
	.byte	0x9
	.4byte	0x33
	.byte	0xc
	.byte	0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0x17
	.byte	0x9
	.4byte	0x33
	.byte	0x10
	.byte	0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x18
	.byte	0x9
	.4byte	0x33
	.byte	0x14
	.byte	0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0x19
	.byte	0x9
	.4byte	0x33
	.byte	0x18
	.byte	0xa
	.4byte	.LASF37
	.byte	0x6
	.byte	0x1a
	.byte	0x9
	.4byte	0x33
	.byte	0x1c
	.byte	0
	.byte	0x6
	.4byte	0x187
	.byte	0x5
	.4byte	0x187
	.byte	0xc
	.4byte	0xcb
	.4byte	0x217
	.byte	0xd
	.4byte	0x2c
	.byte	0xc
	.byte	0
	.byte	0x5
	.4byte	0x207
	.byte	0xe
	.4byte	.LASF38
	.byte	0x1
	.byte	0x7a
	.byte	0x17
	.4byte	0x217
	.byte	0x5
	.byte	0x3
	.4byte	g_noleap_daysbeforemonth
	.byte	0xf
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x171
	.byte	0x22
	.4byte	0x1fd
	.byte	0x5
	.byte	0x3
	.4byte	g_rtc_tm
	.byte	0xf
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x172
	.byte	0x1a
	.4byte	0xe8
	.byte	0x5
	.byte	0x3
	.4byte	s_rtc_ref_cnt
	.byte	0x10
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x184
	.byte	0xa
	.4byte	0xdc
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a8
	.byte	0x11
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x186
	.byte	0xe
	.4byte	0xdc
	.4byte	.LLST44
	.byte	0x12
	.4byte	.LVL110
	.4byte	0x534
	.byte	0x12
	.4byte	.LVL111
	.4byte	0x9de
	.byte	0x13
	.4byte	.LVL113
	.4byte	0x932
	.byte	0x14
	.4byte	0x5e9
	.byte	0x5
	.byte	0x3
	.4byte	g_rtc_tm
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x17a
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x4cc
	.byte	0x16
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x17a
	.byte	0x30
	.4byte	0x4cc
	.4byte	.LLST20
	.byte	0x11
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x17c
	.byte	0xe
	.4byte	0xdc
	.4byte	.LLST21
	.byte	0x17
	.4byte	0x610
	.4byte	.LBB30
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1
	.2byte	0x181
	.byte	0x5
	.4byte	0x4a0
	.byte	0x18
	.4byte	0x62f
	.4byte	.LLST22
	.byte	0x18
	.4byte	0x622
	.4byte	.LLST23
	.byte	0x19
	.4byte	.Ldebug_ranges0+0x28
	.byte	0x1a
	.4byte	0x63c
	.4byte	.LLST24
	.byte	0x1a
	.4byte	0x649
	.4byte	.LLST25
	.byte	0x1b
	.4byte	0x656
	.byte	0x1a
	.4byte	0x663
	.4byte	.LLST26
	.byte	0x1a
	.4byte	0x670
	.4byte	.LLST27
	.byte	0x1a
	.4byte	0x67d
	.4byte	.LLST28
	.byte	0x1a
	.4byte	0x68a
	.4byte	.LLST29
	.byte	0x1a
	.4byte	0x697
	.4byte	.LLST30
	.byte	0x17
	.4byte	0x72e
	.4byte	.LBB32
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1
	.2byte	0x137
	.byte	0x5
	.4byte	0x447
	.byte	0x18
	.4byte	0x75f
	.4byte	.LLST31
	.byte	0x18
	.4byte	0x753
	.4byte	.LLST32
	.byte	0x18
	.4byte	0x747
	.4byte	.LLST33
	.byte	0x18
	.4byte	0x73b
	.4byte	.LLST34
	.byte	0x19
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x1a
	.4byte	0x76b
	.4byte	.LLST35
	.byte	0x1b
	.4byte	0x777
	.byte	0x1a
	.4byte	0x783
	.4byte	.LLST36
	.byte	0x1a
	.4byte	0x78f
	.4byte	.LLST37
	.byte	0x1a
	.4byte	0x79b
	.4byte	.LLST38
	.byte	0x1c
	.4byte	0x7f5
	.4byte	.LBB34
	.4byte	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0x9e
	.byte	0x14
	.4byte	0x3f0
	.byte	0x18
	.4byte	0x806
	.4byte	.LLST39
	.byte	0x1d
	.4byte	0x7f5
	.4byte	.LBB36
	.4byte	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0x7c
	.byte	0x13
	.byte	0x18
	.4byte	0x806
	.4byte	.LLST40
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL71
	.4byte	0x9e7
	.byte	0x1e
	.4byte	.LVL84
	.4byte	0x7ae
	.4byte	0x418
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x6
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x91
	.byte	0xb8,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x1e
	.4byte	.LVL86
	.4byte	0x7ae
	.4byte	0x435
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8a
	.byte	0
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x91
	.byte	0xb4,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x13
	.4byte	.LVL90
	.4byte	0x7ae
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	0x6ab
	.4byte	.LBB53
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.2byte	0x13e
	.byte	0x17
	.4byte	0x483
	.byte	0x18
	.4byte	0x6d3
	.4byte	.LLST41
	.byte	0x18
	.4byte	0x6c8
	.4byte	.LLST42
	.byte	0x18
	.4byte	0x6bd
	.4byte	.LLST43
	.byte	0x19
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1b
	.4byte	0x6de
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL60
	.4byte	0x9e7
	.byte	0x12
	.4byte	.LVL63
	.4byte	0x9e7
	.byte	0x12
	.4byte	.LVL67
	.4byte	0x9e7
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL54
	.4byte	0x534
	.byte	0x1e
	.4byte	.LVL56
	.4byte	0x932
	.4byte	0x4c2
	.byte	0x14
	.4byte	0x5e9
	.byte	0x5
	.byte	0x3
	.4byte	g_rtc_tm
	.byte	0
	.byte	0x12
	.4byte	.LVL58
	.4byte	0x9de
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x187
	.byte	0x15
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x174
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x52e
	.byte	0x16
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x174
	.byte	0x36
	.4byte	0x52e
	.4byte	.LLST19
	.byte	0x1e
	.4byte	.LVL50
	.4byte	0x9f0
	.4byte	0x51e
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x1f
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1f
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x13
	.4byte	.LVL51
	.4byte	0x813
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x202
	.byte	0x10
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x168
	.byte	0xa
	.4byte	0xdc
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x58a
	.byte	0x16
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x168
	.byte	0x30
	.4byte	0xdc
	.4byte	.LLST17
	.byte	0x20
	.string	"cnt"
	.byte	0x1
	.2byte	0x16a
	.byte	0xe
	.4byte	0xdc
	.4byte	.LLST18
	.byte	0x13
	.4byte	.LVL46
	.4byte	0x58a
	.byte	0x1f
	.byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.byte	0x5
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0
	.byte	0
	.byte	0x10
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x15a
	.byte	0xa
	.4byte	0xdc
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x5d7
	.byte	0x16
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x15a
	.byte	0x30
	.4byte	0xdc
	.4byte	.LLST15
	.byte	0x20
	.string	"cnt"
	.byte	0x1
	.2byte	0x15c
	.byte	0xe
	.4byte	0xdc
	.4byte	.LLST16
	.byte	0x13
	.4byte	.LVL41
	.4byte	0x813
	.byte	0x1f
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x21
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x145
	.byte	0xf
	.4byte	0x10d
	.byte	0x1
	.4byte	0x610
	.byte	0x22
	.string	"tp"
	.byte	0x1
	.2byte	0x145
	.byte	0x2a
	.4byte	0x4cc
	.byte	0x23
	.string	"ret"
	.byte	0x1
	.2byte	0x147
	.byte	0xc
	.4byte	0x10d
	.byte	0x23
	.string	"jdn"
	.byte	0x1
	.2byte	0x148
	.byte	0xc
	.4byte	0x10d
	.byte	0
	.byte	0x21
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x11a
	.byte	0x1a
	.4byte	0x4cc
	.byte	0x1
	.4byte	0x6a5
	.byte	0x24
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x11a
	.byte	0x33
	.4byte	0x6a5
	.byte	0x24
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x11a
	.byte	0x4c
	.4byte	0x4cc
	.byte	0x25
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x11c
	.byte	0xc
	.4byte	0x10d
	.byte	0x23
	.string	"jdn"
	.byte	0x1
	.2byte	0x11d
	.byte	0xc
	.4byte	0x10d
	.byte	0x25
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x11e
	.byte	0x9
	.4byte	0x33
	.byte	0x25
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x11f
	.byte	0x9
	.4byte	0x33
	.byte	0x23
	.string	"day"
	.byte	0x1
	.2byte	0x120
	.byte	0x9
	.4byte	0x33
	.byte	0x25
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x121
	.byte	0x9
	.4byte	0x33
	.byte	0x23
	.string	"min"
	.byte	0x1
	.2byte	0x122
	.byte	0x9
	.4byte	0x33
	.byte	0x23
	.string	"sec"
	.byte	0x1
	.2byte	0x123
	.byte	0x9
	.4byte	0x33
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x119
	.byte	0x21
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x10c
	.byte	0xc
	.4byte	0x33
	.byte	0x1
	.4byte	0x6ec
	.byte	0x22
	.string	"y"
	.byte	0x1
	.2byte	0x10c
	.byte	0x22
	.4byte	0xbf
	.byte	0x22
	.string	"m"
	.byte	0x1
	.2byte	0x10c
	.byte	0x2d
	.4byte	0xb3
	.byte	0x22
	.string	"d"
	.byte	0x1
	.2byte	0x10c
	.byte	0x38
	.4byte	0xb3
	.byte	0x25
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x10e
	.byte	0x9
	.4byte	0x33
	.byte	0
	.byte	0x26
	.4byte	.LASF59
	.byte	0x1
	.byte	0xf3
	.byte	0xf
	.4byte	0x10d
	.byte	0x1
	.4byte	0x72e
	.byte	0x27
	.4byte	.LASF54
	.byte	0x1
	.byte	0xf3
	.byte	0x28
	.4byte	0x33
	.byte	0x27
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf3
	.byte	0x32
	.4byte	0x33
	.byte	0x28
	.string	"day"
	.byte	0x1
	.byte	0xf3
	.byte	0x3d
	.4byte	0x33
	.byte	0x29
	.4byte	.LASF60
	.byte	0x1
	.byte	0xf5
	.byte	0xc
	.4byte	0x10d
	.byte	0
	.byte	0x2a
	.4byte	.LASF77
	.byte	0x1
	.byte	0x8c
	.byte	0xd
	.byte	0x1
	.4byte	0x7a8
	.byte	0x27
	.4byte	.LASF60
	.byte	0x1
	.byte	0x8c
	.byte	0x27
	.4byte	0x10d
	.byte	0x27
	.4byte	.LASF54
	.byte	0x1
	.byte	0x8c
	.byte	0x32
	.4byte	0x7a8
	.byte	0x27
	.4byte	.LASF55
	.byte	0x1
	.byte	0x8c
	.byte	0x3d
	.4byte	0x7a8
	.byte	0x28
	.string	"day"
	.byte	0x1
	.byte	0x8d
	.byte	0x25
	.4byte	0x7a8
	.byte	0x29
	.4byte	.LASF61
	.byte	0x1
	.byte	0x93
	.byte	0x9
	.4byte	0x33
	.byte	0x29
	.4byte	.LASF62
	.byte	0x1
	.byte	0x98
	.byte	0xd
	.4byte	0xb3
	.byte	0x2b
	.string	"tmp"
	.byte	0x1
	.byte	0x99
	.byte	0x9
	.4byte	0x33
	.byte	0x2b
	.string	"min"
	.byte	0x1
	.byte	0xb7
	.byte	0x9
	.4byte	0x33
	.byte	0x2b
	.string	"max"
	.byte	0x1
	.byte	0xb8
	.byte	0x9
	.4byte	0x33
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x33
	.byte	0x2c
	.4byte	.LASF78
	.byte	0x1
	.byte	0x81
	.byte	0xc
	.4byte	0x33
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x7f5
	.byte	0x2d
	.4byte	.LASF55
	.byte	0x1
	.byte	0x81
	.byte	0x26
	.4byte	0x33
	.4byte	.LLST0
	.byte	0x2e
	.4byte	.LASF62
	.byte	0x1
	.byte	0x81
	.byte	0x35
	.4byte	0xb3
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.4byte	.LASF63
	.byte	0x1
	.byte	0x83
	.byte	0x9
	.4byte	0x33
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x26
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7c
	.byte	0x13
	.4byte	0x33
	.byte	0x3
	.4byte	0x813
	.byte	0x27
	.4byte	.LASF54
	.byte	0x1
	.byte	0x7c
	.byte	0x28
	.4byte	0x33
	.byte	0
	.byte	0x2f
	.4byte	.LASF65
	.byte	0x1
	.byte	0x56
	.byte	0xa
	.4byte	0xdc
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x882
	.byte	0x30
	.string	"dev"
	.byte	0x1
	.byte	0x56
	.byte	0x36
	.4byte	0x882
	.4byte	.LLST12
	.byte	0x31
	.4byte	.LASF23
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.4byte	0xd0
	.4byte	0x2000f000
	.byte	0x32
	.4byte	.LASF66
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.4byte	0xd0
	.4byte	.LLST13
	.byte	0xe
	.4byte	.LASF67
	.byte	0x1
	.byte	0x5d
	.byte	0xe
	.4byte	0xdc
	.byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.byte	0x32
	.4byte	.LASF68
	.byte	0x1
	.byte	0x5e
	.byte	0xe
	.4byte	0xdc
	.4byte	.LLST14
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x11e
	.byte	0x33
	.4byte	.LASF69
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x8ef
	.byte	0x30
	.string	"dev"
	.byte	0x1
	.byte	0x1d
	.byte	0x32
	.4byte	0x882
	.4byte	.LLST8
	.byte	0x2d
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1d
	.byte	0x40
	.4byte	0xdc
	.4byte	.LLST9
	.byte	0x31
	.4byte	.LASF23
	.byte	0x1
	.byte	0x22
	.byte	0xe
	.4byte	0xd0
	.4byte	0x2000f000
	.byte	0x32
	.4byte	.LASF66
	.byte	0x1
	.byte	0x23
	.byte	0xe
	.4byte	0xd0
	.4byte	.LLST10
	.byte	0x32
	.4byte	.LASF70
	.byte	0x1
	.byte	0x24
	.byte	0xe
	.4byte	0xdc
	.4byte	.LLST11
	.byte	0
	.byte	0x33
	.4byte	.LASF71
	.byte	0x1
	.byte	0xc
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x932
	.byte	0x34
	.string	"dev"
	.byte	0x1
	.byte	0xc
	.byte	0x31
	.4byte	0x882
	.byte	0x1
	.byte	0x5a
	.byte	0x31
	.4byte	.LASF23
	.byte	0x1
	.byte	0x11
	.byte	0xe
	.4byte	0xd0
	.4byte	0x2000f000
	.byte	0xe
	.4byte	.LASF66
	.byte	0x1
	.byte	0x12
	.byte	0xe
	.4byte	0xd0
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x35
	.4byte	0x5d7
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x9de
	.byte	0x1b
	.4byte	0x5f5
	.byte	0x1a
	.4byte	0x602
	.4byte	.LLST1
	.byte	0x36
	.4byte	0x5e9
	.byte	0x6
	.byte	0x3
	.4byte	g_rtc_tm
	.byte	0x9f
	.byte	0x37
	.4byte	0x6ec
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x14e
	.byte	0xb
	.byte	0x18
	.4byte	0x715
	.4byte	.LLST2
	.byte	0x18
	.4byte	0x709
	.4byte	.LLST3
	.byte	0x18
	.4byte	0x6fd
	.4byte	.LLST4
	.byte	0x19
	.4byte	.Ldebug_ranges0+0
	.byte	0x1a
	.4byte	0x721
	.4byte	.LLST5
	.byte	0x38
	.4byte	0x7f5
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.2byte	0x101
	.byte	0x32
	.4byte	0x9d2
	.byte	0x18
	.4byte	0x806
	.4byte	.LLST6
	.byte	0x39
	.4byte	0x7f5
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.byte	0x7c
	.byte	0x13
	.byte	0x18
	.4byte	0x806
	.4byte	.LLST7
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LVL10
	.4byte	0x7ae
	.byte	0
	.byte	0
	.byte	0
	.byte	0x3a
	.4byte	.LASF72
	.4byte	.LASF72
	.byte	0x3a
	.4byte	.LASF73
	.4byte	.LASF73
	.byte	0x3b
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x7
	.byte	0x1c
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x35
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x31
	.byte	0x13
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
	.byte	0x18
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
	.byte	0x32
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
	.byte	0x33
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
	.byte	0x34
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
	.byte	0x35
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
	.byte	0x36
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x37
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
	.byte	0x38
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x39
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
	.byte	0
	.byte	0
	.byte	0x3a
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
	.byte	0x3b
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
.LLST44:
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.byte	0x4
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x8
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0xf5
	.byte	0x8
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LFE19
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0xa
	.byte	0xf5
	.byte	0x12
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL59
	.2byte	0xe
	.byte	0xf5
	.byte	0x12
	.byte	0x25
	.byte	0xa
	.2byte	0x3e8
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf5
	.byte	0x16
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL57
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL57
	.4byte	.LVL104
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+720
	.byte	0
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+720
	.byte	0
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x6
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x17
	.byte	0x78
	.byte	0
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.8byte	0xfffeae80
	.byte	0x1e
	.byte	0xf5
	.byte	0x16
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL68
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2a
	.byte	0x85
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.8byte	0xfffffffffffff1f0
	.byte	0x1e
	.byte	0x78
	.byte	0
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0xf4
	.byte	0x25
	.byte	0x8
	.8byte	0xfffeae80
	.byte	0x1e
	.byte	0xf5
	.byte	0x16
	.byte	0x25
	.byte	0x22
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL61
	.4byte	.LVL73
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.byte	0x4
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x3
	.byte	0x87
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL93
	.4byte	.LVL104
	.2byte	0x6
	.byte	0x88
	.byte	0x10
	.byte	0x6
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL94
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL100
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x88
	.byte	0xc
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x88
	.byte	0x8
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL70
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x88
	.byte	0x4
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL69
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x2
	.byte	0x88
	.byte	0
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL69
	.4byte	.LVL94
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+813
	.byte	0
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+813
	.byte	0
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL69
	.4byte	.LVL94
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+804
	.byte	0
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+804
	.byte	0
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL69
	.4byte	.LVL94
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+799
	.byte	0
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x6
	.byte	0xf2
	.4byte	.Ldebug_info0+799
	.byte	0
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL69
	.4byte	.LVL90
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.byte	0x4
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0xb
	.byte	0xf5
	.byte	0x8
	.byte	0x25
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x6
	.byte	0x58
	.byte	0x93
	.byte	0x4
	.byte	0x59
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL79
	.2byte	0x4
	.byte	0x86
	.byte	0xce,0x70
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x4
	.byte	0x7d
	.byte	0xce,0x70
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x4
	.byte	0x86
	.byte	0xce,0x70
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL87
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x88
	.byte	0x10
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x6a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x4
	.byte	0x7b
	.byte	0xed,0x2
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL106
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL82
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL82
	.4byte	.LVL84-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL84-1
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL106
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL108
	.4byte	.LFE18
	.2byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL95
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x3
	.byte	0x87
	.byte	0x74
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x3
	.byte	0x86
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL50-1
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL46-1
	.4byte	.LFE16
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xa
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE15
	.2byte	0x6
	.byte	0x5e
	.byte	0x93
	.byte	0x4
	.byte	0x5f
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL41
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x5a
	.byte	0x93
	.byte	0x4
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0xa
	.byte	0x7b
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0xf7
	.byte	0x2c
	.byte	0xf7
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x5b
	.byte	0x93
	.byte	0x4
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.4byte	.LVL23
	.4byte	.LFE6
	.2byte	0x6
	.byte	0xf3
	.byte	0x3
	.byte	0xf5
	.byte	0xb
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x7f
	.byte	0x10
	.4byte	.LVL30
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LFE6
	.2byte	0x6
	.byte	0x5c
	.byte	0x93
	.byte	0x4
	.byte	0x5d
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0xb
	.byte	0x79
	.byte	0x7f
	.byte	0xf7
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0xf5
	.byte	0xc
	.byte	0x25
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x60
	.byte	0x93
	.byte	0x4
	.byte	0x61
	.byte	0x93
	.byte	0x4
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x6
	.byte	0x62
	.byte	0x93
	.byte	0x4
	.byte	0x63
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5d
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
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	.LBB81
	.4byte	.LBE81
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	.LBB51
	.4byte	.LBE51
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	0
	.4byte	0
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.string	"user_data"
.LASF32:
	.string	"tm_hour"
.LASF19:
	.string	"uintptr_t"
.LASF18:
	.string	"uint64_t"
.LASF47:
	.string	"ref_cnt"
.LASF5:
	.string	"__uint8_t"
.LASF60:
	.string	"days"
.LASF50:
	.string	"__gmtime_r"
.LASF0:
	.string	"long long unsigned int"
.LASF25:
	.string	"sub_idx"
.LASF13:
	.string	"__int_least64_t"
.LASF11:
	.string	"long long int"
.LASF2:
	.string	"signed char"
.LASF48:
	.string	"qcc74x_rtc_get_delta_counter"
.LASF54:
	.string	"year"
.LASF8:
	.string	"long int"
.LASF70:
	.string	"rtc_cnt"
.LASF75:
	.string	"./drivers/lhal/src/qcc74x_rtc.c"
.LASF63:
	.string	"retval"
.LASF16:
	.string	"uint16_t"
.LASF78:
	.string	"clock_daysbeforemonth"
.LASF9:
	.string	"__uint32_t"
.LASF34:
	.string	"tm_mon"
.LASF79:
	.string	"arch_memcpy"
.LASF61:
	.string	"value"
.LASF35:
	.string	"tm_year"
.LASF55:
	.string	"month"
.LASF1:
	.string	"unsigned int"
.LASF39:
	.string	"g_rtc_tm"
.LASF10:
	.string	"long unsigned int"
.LASF22:
	.string	"name"
.LASF40:
	.string	"s_rtc_ref_cnt"
.LASF7:
	.string	"short unsigned int"
.LASF64:
	.string	"clock_isleapyear"
.LASF43:
	.string	"qcc74x_rtc_set_utc_time"
.LASF74:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF57:
	.string	"get_week_day"
.LASF31:
	.string	"tm_min"
.LASF45:
	.string	"qcc74x_rtc_get_utc_timestamp"
.LASF37:
	.string	"tm_yday"
.LASF23:
	.string	"reg_base"
.LASF44:
	.string	"time"
.LASF56:
	.string	"hour"
.LASF21:
	.string	"time_t"
.LASF68:
	.string	"time_h"
.LASF12:
	.string	"__uint64_t"
.LASF67:
	.string	"time_l"
.LASF3:
	.string	"unsigned char"
.LASF66:
	.string	"regval"
.LASF4:
	.string	"short int"
.LASF42:
	.string	"qcc74x_rtc_get_utc_time"
.LASF14:
	.string	"__uintptr_t"
.LASF41:
	.string	"time_stamp_ms"
.LASF72:
	.string	"__udivdi3"
.LASF59:
	.string	"__clock_calendar2utc"
.LASF17:
	.string	"uint32_t"
.LASF24:
	.string	"irq_num"
.LASF71:
	.string	"qcc74x_rtc_disable"
.LASF20:
	.string	"char"
.LASF53:
	.string	"epoch"
.LASF73:
	.string	"__divdi3"
.LASF6:
	.string	"__uint16_t"
.LASF36:
	.string	"tm_wday"
.LASF26:
	.string	"dev_type"
.LASF62:
	.string	"leapyear"
.LASF29:
	.string	"qcc74x_tm"
.LASF33:
	.string	"tm_mday"
.LASF46:
	.string	"qcc74x_rtc_get_delta_time_ms"
.LASF28:
	.string	"qcc74x_device_s"
.LASF30:
	.string	"tm_sec"
.LASF77:
	.string	"clock_utc2calendar"
.LASF15:
	.string	"uint8_t"
.LASF38:
	.string	"g_noleap_daysbeforemonth"
.LASF51:
	.string	"timer"
.LASF58:
	.string	"week"
.LASF69:
	.string	"qcc74x_rtc_set_time"
.LASF76:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/drivers/lhal"
.LASF65:
	.string	"qcc74x_rtc_get_time"
.LASF49:
	.string	"__mktime"
.LASF52:
	.string	"result"
	.ident	"GCC: (GNU) 10.4.0"
