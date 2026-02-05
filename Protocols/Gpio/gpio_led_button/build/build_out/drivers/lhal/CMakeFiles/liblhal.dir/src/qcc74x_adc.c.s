	.file	"qcc74x_adc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_adc_deinit,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_deinit
	.type	qcc74x_adc_deinit, @function
qcc74x_adc_deinit:
.LFB7:
	.file 1 "./drivers/lhal/src/qcc74x_adc.c"
	.loc 1 299 1
	.cfi_startproc
.LVL0:
	.loc 1 300 5
	.loc 1 302 5
	.loc 1 302 14 is_stmt 0
	lw	a4,4(a0)
.LVL1:
	.loc 1 304 5 is_stmt 1
	.loc 1 304 49 is_stmt 0
	li	a5,4096
	addi	a3,a5,-1780
	.loc 1 304 60
	addi	a2,a5,-136
	srw	a2,a4,a3,0
	.loc 1 305 5 is_stmt 1
	.loc 1 305 60 is_stmt 0
	li	a3,786432
	.loc 1 305 49
	addi	a2,a5,-1776
	.loc 1 305 60
	addi	a3,a3,2
	srw	a3,a4,a2,0
	.loc 1 306 5 is_stmt 1
	.loc 1 306 60 is_stmt 0
	li	a3,102400
	.loc 1 306 49
	addi	a5,a5,-1772
	.loc 1 306 60
	addi	a3,a3,256
	srw	a3,a4,a5,0
	.loc 1 307 1
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_adc_deinit, .-qcc74x_adc_deinit
	.section	.text.qcc74x_adc_link_rxdma,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_link_rxdma
	.type	qcc74x_adc_link_rxdma, @function
qcc74x_adc_link_rxdma:
.LFB8:
	.loc 1 310 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 311 5
	.loc 1 313 5
	.loc 1 313 12 is_stmt 0
	li	a5,536879104
	lw	a4,0(a5)
.LVL3:
	.loc 1 314 5 is_stmt 1
	.loc 1 317 16 is_stmt 0
	andi	a5,a4,-2
	.loc 1 314 8
	beq	a1,zero,.L4
	.loc 1 315 9 is_stmt 1
	.loc 1 315 16 is_stmt 0
	ori	a5,a4,1
.LVL4:
.L4:
	.loc 1 319 5 is_stmt 1
	.loc 1 319 72 is_stmt 0
	li	a4,536879104
	sw	a5,0(a4)
	.loc 1 320 1
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_adc_link_rxdma, .-qcc74x_adc_link_rxdma
	.section	.text.qcc74x_adc_set_reference_channel,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_set_reference_channel
	.type	qcc74x_adc_set_reference_channel, @function
qcc74x_adc_set_reference_channel:
.LFB9:
	.loc 1 323 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 324 5
	.loc 1 324 27 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 325 5 is_stmt 1
	.loc 1 325 37 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	sw	a1,%lo(.LANCHOR1)(a5)
	.loc 1 326 1
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_adc_set_reference_channel, .-qcc74x_adc_set_reference_channel
	.section	.text.qcc74x_adc_channel_config,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_channel_config
	.type	qcc74x_adc_channel_config, @function
qcc74x_adc_channel_config:
.LFB10:
	.loc 1 329 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 330 5
	.loc 1 331 5
	.loc 1 332 5
	.loc 1 334 5
	.loc 1 335 5
	.loc 1 337 5
	.loc 1 337 14 is_stmt 0
	lw	a5,4(a0)
.LVL7:
	.loc 1 339 5 is_stmt 1
	.loc 1 339 55 is_stmt 0
	li	a4,4096
	addi	a3,a4,-1776
	.loc 1 339 12
	lrw	a0,a5,a3,0
.LVL8:
	.loc 1 339 67
	li	a6,33554432
	and	a0,a0,a6
	.loc 1 339 8
	bne	a0,zero,.L8
	.loc 1 340 9 is_stmt 1
	.loc 1 340 12 is_stmt 0
	li	a3,1
	.loc 1 341 20
	li	a0,-22
	.loc 1 340 12
	bgtu	a2,a3,.L7
	.loc 1 344 9 is_stmt 1
	.loc 1 344 62 is_stmt 0
	addi	a3,a4,-1780
	.loc 1 344 16
	lrw	a4,a5,a3,0
.LVL9:
	.loc 1 345 9 is_stmt 1
	.loc 1 346 9
	.loc 1 346 16 is_stmt 0
	li	a2,-8192
.LVL10:
	addi	a2,a2,7
	and	a2,a4,a2
.LVL11:
	.loc 1 347 9 is_stmt 1
	.loc 1 348 9
	.loc 1 347 24 is_stmt 0
	lbu	a4,0(a1)
	.loc 1 348 24
	lbu	a1,1(a1)
.LVL12:
	.loc 1 347 35
	slli	a4,a4,8
.LVL13:
	.loc 1 348 35
	slli	a1,a1,3
	.loc 1 348 16
	or	a4,a4,a1
	or	a4,a4,a2
.LVL14:
	.loc 1 349 9 is_stmt 1
	.loc 1 349 64 is_stmt 0
	srw	a4,a5,a3,0
.LVL15:
.L20:
	.loc 1 385 12
	li	a0,0
.L7:
	.loc 1 386 1
	ret
.LVL16:
.L8:
	.loc 1 351 9 is_stmt 1
	.loc 1 351 12 is_stmt 0
	li	a4,5
	bleu	a2,a4,.L17
	li	a4,0
	.loc 1 362 21
	li	a0,0
	.loc 1 361 20
	li	a6,0
.LBB32:
	.loc 1 364 51
	li	t6,5
	.loc 1 365 36
	addi	t5,a1,1
	.loc 1 363 13
	li	t4,6
.L11:
.LVL17:
	.loc 1 364 17 is_stmt 1 discriminator 3
	.loc 1 364 51 is_stmt 0 discriminator 3
	mul	t3,a4,t6
	.loc 1 364 35 discriminator 3
	lrbu	t1,a1,a4,1
	.loc 1 365 36 discriminator 3
	lrbu	a7,t5,a4,1
	.loc 1 363 13 discriminator 3
	addi	a4,a4,1
.LVL18:
	.loc 1 364 45 discriminator 3
	sll	t1,t1,t3
	.loc 1 365 46 discriminator 3
	sll	a7,a7,t3
	.loc 1 364 24 discriminator 3
	or	a6,a6,t1
.LVL19:
	.loc 1 365 17 is_stmt 1 discriminator 3
	.loc 1 365 25 is_stmt 0 discriminator 3
	or	a0,a0,a7
.LVL20:
	.loc 1 363 40 is_stmt 1 discriminator 3
	.loc 1 363 33 discriminator 3
	.loc 1 363 13 is_stmt 0 discriminator 3
	bne	a4,t4,.L11
.LBE32:
	.loc 1 367 13 is_stmt 1
	.loc 1 367 57 is_stmt 0
	li	a4,4096
	addi	a7,a4,-1768
	.loc 1 367 68
	srw	a6,a5,a7,0
	.loc 1 368 13 is_stmt 1
	.loc 1 368 57 is_stmt 0
	addi	a4,a4,-1760
	.loc 1 368 68
	srw	a0,a5,a4,0
	.loc 1 370 13 is_stmt 1
.LVL21:
	.loc 1 371 13
	.loc 1 372 13
.LBB33:
	.loc 1 372 18
.LBE33:
	.loc 1 370 20 is_stmt 0
	li	a6,0
.LBB34:
	.loc 1 372 26
	li	a4,0
.LBE34:
	.loc 1 371 21
	li	a0,0
.LBB35:
	.loc 1 372 47
	addi	t4,a2,-6
	.loc 1 373 55
	li	t5,5
.LVL22:
.L14:
	.loc 1 372 33 is_stmt 1 discriminator 1
	.loc 1 372 13 is_stmt 0 discriminator 1
	blt	a4,t4,.L15
.LBE35:
	.loc 1 376 13 is_stmt 1
	.loc 1 376 57 is_stmt 0
	li	a4,4096
.LVL23:
	addi	a1,a4,-1764
.LVL24:
	.loc 1 376 68
	srw	a6,a5,a1,0
	.loc 1 377 13 is_stmt 1
	.loc 1 377 57 is_stmt 0
	addi	a4,a4,-1756
	j	.L19
.LVL25:
.L12:
.LBB36:
	.loc 1 355 17 is_stmt 1 discriminator 3
	.loc 1 355 51 is_stmt 0 discriminator 3
	mul	t3,a4,t4
	.loc 1 355 35 discriminator 3
	lrbu	t1,a1,a4,1
	.loc 1 356 36 discriminator 3
	lrbu	a7,t5,a4,1
	addi	a4,a4,1
.LVL26:
	.loc 1 355 45 discriminator 3
	sll	t1,t1,t3
	.loc 1 356 46 discriminator 3
	sll	a7,a7,t3
	.loc 1 355 24 discriminator 3
	or	a6,a6,t1
.LVL27:
	.loc 1 356 17 is_stmt 1 discriminator 3
	.loc 1 356 25 is_stmt 0 discriminator 3
	or	a0,a0,a7
.LVL28:
	.loc 1 354 47 is_stmt 1 discriminator 3
.L10:
	.loc 1 354 33 discriminator 1
	.loc 1 354 13 is_stmt 0 discriminator 1
	andi	a7,a4,0xff
	bltu	a7,a2,.L12
.LBE36:
	.loc 1 358 13 is_stmt 1
	.loc 1 358 57 is_stmt 0
	li	a4,4096
.LVL29:
	addi	a1,a4,-1768
.LVL30:
	.loc 1 358 68
	srw	a6,a5,a1,0
	.loc 1 359 13 is_stmt 1
	.loc 1 359 57 is_stmt 0
	addi	a4,a4,-1760
.LVL31:
.L19:
	.loc 1 377 68
	srw	a0,a5,a4,0
	.loc 1 380 9 is_stmt 1
	.loc 1 380 16 is_stmt 0
	lrw	a4,a5,a3,0
.LVL32:
	.loc 1 381 9 is_stmt 1
	.loc 1 381 16 is_stmt 0
	li	a1,-31457280
	addi	a1,a1,-1
	.loc 1 382 30
	addi	a2,a2,-1
.LVL33:
	.loc 1 381 16
	and	a4,a4,a1
.LVL34:
	.loc 1 382 9 is_stmt 1
	.loc 1 382 35 is_stmt 0
	slli	a2,a2,21
	.loc 1 382 16
	or	a2,a2,a4
.LVL35:
	.loc 1 383 9 is_stmt 1
	.loc 1 383 64 is_stmt 0
	srw	a2,a5,a3,0
	j	.L20
.LVL36:
.L17:
	li	a4,0
	.loc 1 353 21
	li	a0,0
	.loc 1 352 20
	li	a6,0
.LBB37:
	.loc 1 355 51
	li	t4,5
	.loc 1 356 36
	addi	t5,a1,1
	j	.L10
.LVL37:
.L15:
.LBE37:
.LBB38:
	.loc 1 373 17 is_stmt 1 discriminator 3
	.loc 1 373 55 is_stmt 0 discriminator 3
	mul	t3,a4,t5
	.loc 1 373 32 discriminator 3
	addi	a7,a4,6
	addsl	t6, a1, a7, 1
	.loc 1 373 39 discriminator 3
	lrbu	t1,a1,a7,1
	.loc 1 374 40 discriminator 3
	lbu	a7,1(t6)
	.loc 1 372 54 discriminator 3
	addi	a4,a4,1
.LVL38:
	andi	a4,a4,0xff
	.loc 1 373 49 discriminator 3
	sll	t1,t1,t3
	.loc 1 374 50 discriminator 3
	sll	a7,a7,t3
	.loc 1 373 24 discriminator 3
	or	a6,a6,t1
.LVL39:
	.loc 1 374 17 is_stmt 1 discriminator 3
	.loc 1 374 25 is_stmt 0 discriminator 3
	or	a0,a0,a7
.LVL40:
	.loc 1 372 53 is_stmt 1 discriminator 3
	j	.L14
.LBE38:
	.cfi_endproc
.LFE10:
	.size	qcc74x_adc_channel_config, .-qcc74x_adc_channel_config
	.section	.text.qcc74x_adc_start_conversion,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_start_conversion
	.type	qcc74x_adc_start_conversion, @function
qcc74x_adc_start_conversion:
.LFB11:
	.loc 1 389 1
	.cfi_startproc
.LVL41:
	.loc 1 390 5
	.loc 1 391 5
	.loc 1 393 5
	.loc 1 395 5
	.loc 1 389 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 395 58
	lw	s1,4(a0)
	.loc 1 389 1
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 395 58
	li	s0,4096
	addi	s0,s0,-1780
	.loc 1 395 12
	lrw	a5,s1,s0,0
.LVL42:
	.loc 1 396 5 is_stmt 1
	.loc 1 389 1 is_stmt 0
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 399 5
	li	a0,100
.LVL43:
	.loc 1 396 12
	andi	a5,a5,-3
.LVL44:
	.loc 1 397 5 is_stmt 1
	.loc 1 397 60 is_stmt 0
	srw	a5,s1,s0,0
.LVL45:
	.loc 1 399 5 is_stmt 1
	call	qcc74x_mtimer_delay_us
.LVL46:
	.loc 1 401 5
	.loc 1 401 12 is_stmt 0
	lrw	a5,s1,s0,0
.LVL47:
	.loc 1 402 5 is_stmt 1
	.loc 1 404 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 402 12
	ori	a5,a5,2
.LVL48:
	.loc 1 403 5 is_stmt 1
	.loc 1 403 60 is_stmt 0
	srw	a5,s1,s0,0
	.loc 1 404 1
	lw	s0,8(sp)
	.cfi_restore 8
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	qcc74x_adc_start_conversion, .-qcc74x_adc_start_conversion
	.section	.text.qcc74x_adc_stop_conversion,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_stop_conversion
	.type	qcc74x_adc_stop_conversion, @function
qcc74x_adc_stop_conversion:
.LFB12:
	.loc 1 407 1 is_stmt 1
	.cfi_startproc
.LVL49:
	.loc 1 408 5
	.loc 1 409 5
	.loc 1 411 5
	.loc 1 412 5
	.loc 1 412 58 is_stmt 0
	lw	a3,4(a0)
	li	a5,4096
	addi	a5,a5,-1780
	.loc 1 412 12
	lrw	a4,a3,a5,0
.LVL50:
	.loc 1 413 5 is_stmt 1
	.loc 1 413 12 is_stmt 0
	andi	a4,a4,-3
.LVL51:
	.loc 1 414 5 is_stmt 1
	.loc 1 414 60 is_stmt 0
	srw	a4,a3,a5,0
.LVL52:
	.loc 1 415 1
	ret
	.cfi_endproc
.LFE12:
	.size	qcc74x_adc_stop_conversion, .-qcc74x_adc_stop_conversion
	.section	.text.qcc74x_update_adc_trim,"ax",@progbits
	.align	1
	.globl	qcc74x_update_adc_trim
	.type	qcc74x_update_adc_trim, @function
qcc74x_update_adc_trim:
.LFB6:
	.loc 1 169 1 is_stmt 1
	.cfi_startproc
.LVL53:
	.loc 1 170 5
	.loc 1 171 5
	.loc 1 172 5
	.loc 1 173 5
	.loc 1 175 5
	.loc 1 169 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	.loc 1 175 14
	lw	s0,4(a0)
.LVL54:
	.loc 1 177 5 is_stmt 1
	.loc 1 177 58 is_stmt 0
	li	a5,4096
	.loc 1 169 1
	sw	s4,24(sp)
	.cfi_offset 20, -24
	.loc 1 177 58
	addi	s4,a5,-1776
	.loc 1 177 12
	lrw	a4,s0,s4,0
.LVL55:
	.loc 1 178 5 is_stmt 1
	.loc 1 179 5
	li	a3,-33554432
	addi	a3,a3,-1
	and	a4,a4,a3
.LVL56:
	.loc 1 169 1 is_stmt 0
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	ra,44(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.loc 1 179 12
	ori	a4,a4,2
.LVL57:
	.loc 1 180 5 is_stmt 1
	.loc 1 180 60 is_stmt 0
	srw	a4,s0,s4,0
	.loc 1 182 5 is_stmt 1
	.loc 1 182 58 is_stmt 0
	addi	s3,a5,-1772
	.loc 1 182 12
	lrw	a4,s0,s3,0
.LVL58:
	.loc 1 183 5 is_stmt 1
	.loc 1 184 5
	.loc 1 187 58 is_stmt 0
	addi	s2,a5,-1780
	.loc 1 190 12
	li	a3,-16384
	.loc 1 184 12
	ori	a4,a4,20
.LVL59:
	.loc 1 185 5 is_stmt 1
	.loc 1 185 60 is_stmt 0
	srw	a4,s0,s3,0
	.loc 1 187 5 is_stmt 1
	.loc 1 187 12 is_stmt 0
	lrw	a4,s0,s2,0
.LVL60:
	.loc 1 188 5 is_stmt 1
	.loc 1 189 5
	.loc 1 190 5
	.loc 1 190 12 is_stmt 0
	addi	a3,a3,7
	.loc 1 192 12
	addi	a5,a5,656
	.loc 1 190 12
	and	a4,a4,a3
.LVL61:
	.loc 1 191 5 is_stmt 1
	.loc 1 192 5
	.loc 1 192 12 is_stmt 0
	or	a5,a4,a5
.LVL62:
	.loc 1 193 5 is_stmt 1
	.loc 1 193 60 is_stmt 0
	srw	a5,s0,s2,0
	.loc 1 195 5 is_stmt 1
	.loc 1 169 1 is_stmt 0
	mv	s6,a0
	mv	s5,a1
	.loc 1 195 5
	call	qcc74x_adc_start_conversion
.LVL63:
	.loc 1 197 5 is_stmt 1
.LBB39:
	.loc 1 197 10
	.loc 1 197 26
.LBB40:
.LBB41:
	.loc 1 424 80 is_stmt 0
	li	a1,67108864
.LBE41:
.LBE40:
	.loc 1 210 31
	li	a0,65536
	.loc 1 197 19
	li	a5,0
.LBE39:
	.loc 1 173 13
	li	s7,0
	.loc 1 172 14
	li	s1,0
.LBB50:
	.loc 1 198 16
	li	a3,536879104
	.loc 1 204 12
	li	a7,4
.LBB45:
.LBB42:
	.loc 1 424 80
	addi	a1,a1,-1
.LBE42:
.LBE45:
	.loc 1 205 24
	li	t1,32768
	.loc 1 210 31
	addi	a0,a0,-1
	.loc 1 197 5
	li	a6,10
.LVL64:
.L28:
	.loc 1 198 9 is_stmt 1
	.loc 1 198 16 is_stmt 0
	lw	a4,0(a3)
.LVL65:
	.loc 1 199 9 is_stmt 1
	.loc 1 199 16 is_stmt 0
	ori	a4,a4,2
.LVL66:
	.loc 1 200 9 is_stmt 1
	.loc 1 200 76 is_stmt 0
	sw	a4,0(a3)
	.loc 1 202 9 is_stmt 1
.LVL67:
.L25:
	.loc 1 202 49 discriminator 1
	.loc 1 202 15 discriminator 1
.LBB46:
.LBB47:
	.loc 1 419 5 discriminator 1
	.loc 1 419 15 is_stmt 0 discriminator 1
	lw	a4,0(a3)
.LVL68:
.LBE47:
.LBE46:
	.loc 1 202 15 discriminator 1
	extu	a4,a4,16+6-1,16
	beq	a4,zero,.L25
	.loc 1 203 9 is_stmt 1
.LVL69:
.LBB48:
.LBB43:
	.loc 1 424 5
	.loc 1 424 80 is_stmt 0
	lw	a2,4(a3)
.LVL70:
.LBE43:
.LBE48:
	.loc 1 204 9 is_stmt 1
	.loc 1 204 12 is_stmt 0
	bleu	a5,a7,.L26
.LBB49:
.LBB44:
	.loc 1 424 80
	and	a4,a2,a1
.LBE44:
.LBE49:
	.loc 1 205 13 is_stmt 1
	.loc 1 205 24 is_stmt 0
	and	a2,a2,t1
.LVL71:
	.loc 1 205 16
	beq	a2,zero,.L27
	.loc 1 206 17 is_stmt 1
	.loc 1 207 17
	.loc 1 207 24 is_stmt 0
	neg	a4,a4
.LVL72:
	.loc 1 208 17 is_stmt 1
	.loc 1 208 21 is_stmt 0
	li	s7,1
.LVL73:
.L27:
	.loc 1 210 13 is_stmt 1
	.loc 1 210 31 is_stmt 0
	and	a4,a4,a0
.LVL74:
	.loc 1 210 20
	add	s1,s1,a4
.LVL75:
.L26:
	.loc 1 197 34 is_stmt 1 discriminator 2
	.loc 1 197 35 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL76:
	extu	a5,a5,15,0
.LVL77:
	.loc 1 197 26 is_stmt 1 discriminator 2
	.loc 1 197 5 is_stmt 0 discriminator 2
	bne	a5,a6,.L28
.LBE50:
	.loc 1 214 5 is_stmt 1
	mv	a0,s6
	call	qcc74x_adc_stop_conversion
.LVL78:
	.loc 1 215 5
	li	a0,10
	call	qcc74x_mtimer_delay_ms
.LVL79:
	.loc 1 217 5
	.loc 1 218 23 is_stmt 0
	li	a5,5
	divu	s1,s1,a5
.LVL80:
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	.loc 1 217 8
	beq	s7,zero,.L29
	.loc 1 218 9 is_stmt 1
	.loc 1 218 32 is_stmt 0
	li	a4,-2
	mul	s1,s1,a4
.L58:
	.loc 1 222 15
	lui	a4,%hi(.LANCHOR3)
	.loc 1 220 13
	sw	s1,0(a5)
	.loc 1 222 5 is_stmt 1
	.loc 1 222 15 is_stmt 0
	addi	a4,a4,%lo(.LANCHOR3)
	flw	fa5,0(a4)
	.loc 1 222 21
	lw	a5,0(a5)
	.loc 1 241 5
	mv	a0,s6
	.loc 1 224 12
	li	s1,0
	.loc 1 222 21
	fcvt.s.w	fa4,a5
	lui	a5,%hi(.LC0)
	flw	fa3,%lo(.LC0)(a5)
	fdiv.s	fa4,fa4,fa3
	.loc 1 222 15
	fsub.s	fa5,fa5,fa4
	.loc 1 222 9
	fsw	fa5,0(a4)
	.loc 1 224 5 is_stmt 1
.LVL81:
	.loc 1 225 5
	.loc 1 225 12 is_stmt 0
	lrw	a5,s0,s2,0
.LVL82:
	.loc 1 226 5 is_stmt 1
	.loc 1 226 12 is_stmt 0
	li	a4,8192
	or	a5,a5,a4
.LVL83:
	.loc 1 227 5 is_stmt 1
	.loc 1 227 60 is_stmt 0
	srw	a5,s0,s2,0
	.loc 1 229 5 is_stmt 1
	.loc 1 229 12 is_stmt 0
	lrw	a5,s0,s3,0
.LVL84:
	.loc 1 230 5 is_stmt 1
	.loc 1 231 5
	.loc 1 236 12 is_stmt 0
	li	a4,-8192
	addi	a4,a4,7
	.loc 1 231 12
	andi	a5,a5,-21
.LVL85:
	.loc 1 232 5 is_stmt 1
	.loc 1 232 60 is_stmt 0
	srw	a5,s0,s3,0
	.loc 1 234 5 is_stmt 1
	.loc 1 234 12 is_stmt 0
	lrw	a5,s0,s2,0
.LVL86:
	.loc 1 235 5 is_stmt 1
	.loc 1 236 5
	.loc 1 236 12 is_stmt 0
	and	a5,a5,a4
.LVL87:
	.loc 1 237 5 is_stmt 1
	.loc 1 238 5
	.loc 1 238 12 is_stmt 0
	li	a4,4096
	addi	a4,a4,1976
	or	a5,a5,a4
.LVL88:
	.loc 1 239 5 is_stmt 1
	.loc 1 239 60 is_stmt 0
	srw	a5,s0,s2,0
	.loc 1 241 5 is_stmt 1
	call	qcc74x_adc_start_conversion
.LVL89:
	.loc 1 243 5
.LBB51:
	.loc 1 243 10
	.loc 1 243 26
	.loc 1 252 31 is_stmt 0
	li	a3,65536
	.loc 1 243 19
	li	a5,0
	.loc 1 244 16
	li	a4,536879104
	.loc 1 251 12
	li	a0,4
	.loc 1 252 31
	addi	a3,a3,-1
	.loc 1 243 5
	li	a1,10
.LVL90:
.L33:
	.loc 1 244 9 is_stmt 1
	.loc 1 244 16 is_stmt 0
	lw	a2,0(a4)
.LVL91:
	.loc 1 245 9 is_stmt 1
	.loc 1 245 16 is_stmt 0
	ori	a2,a2,2
.LVL92:
	.loc 1 246 9 is_stmt 1
	.loc 1 246 76 is_stmt 0
	sw	a2,0(a4)
	.loc 1 248 9 is_stmt 1
.LVL93:
.L31:
	.loc 1 248 49 discriminator 1
	.loc 1 248 15 discriminator 1
.LBB52:
.LBB53:
	.loc 1 419 5 discriminator 1
	.loc 1 419 15 is_stmt 0 discriminator 1
	lw	a2,0(a4)
.LVL94:
.LBE53:
.LBE52:
	.loc 1 248 15 discriminator 1
	extu	a2,a2,16+6-1,16
	beq	a2,zero,.L31
	.loc 1 249 9 is_stmt 1
.LVL95:
.LBB54:
.LBB55:
	.loc 1 424 5
	.loc 1 424 80 is_stmt 0
	lw	a2,4(a4)
.LVL96:
.LBE55:
.LBE54:
	.loc 1 251 9 is_stmt 1
	.loc 1 251 12 is_stmt 0
	bleu	a5,a0,.L32
	.loc 1 252 13 is_stmt 1
	.loc 1 252 31 is_stmt 0
	and	a2,a2,a3
.LVL97:
	.loc 1 252 20
	add	s1,s1,a2
.LVL98:
.L32:
	.loc 1 243 34 is_stmt 1 discriminator 2
	.loc 1 243 35 is_stmt 0 discriminator 2
	addi	a5,a5,1
.LVL99:
	extu	a5,a5,15,0
.LVL100:
	.loc 1 243 26 is_stmt 1 discriminator 2
	.loc 1 243 5 is_stmt 0 discriminator 2
	bne	a5,a1,.L33
.LBE51:
	.loc 1 256 5 is_stmt 1
	mv	a0,s6
	call	qcc74x_adc_stop_conversion
.LVL101:
	.loc 1 257 5
	li	a0,10
	call	qcc74x_mtimer_delay_ms
.LVL102:
	.loc 1 259 5
	lui	a5,%hi(.LANCHOR4)
	addi	a5,a5,%lo(.LANCHOR4)
	.loc 1 259 8 is_stmt 0
	beq	s1,zero,.L34
	.loc 1 260 9 is_stmt 1
	.loc 1 260 22 is_stmt 0
	li	a4,5
	divu	s1,s1,a4
.LVL103:
	.loc 1 260 13
	sw	s1,0(a5)
.L35:
	.loc 1 266 5 is_stmt 1
	.loc 1 266 12 is_stmt 0
	lrw	a4,s0,s4,0
.LVL104:
	.loc 1 267 5 is_stmt 1
	.loc 1 267 8 is_stmt 0
	lbu	a3,2(s5)
	.loc 1 270 16
	andi	a5,a4,-3
	.loc 1 267 8
	beq	a3,zero,.L37
	.loc 1 268 9 is_stmt 1
	.loc 1 268 16 is_stmt 0
	ori	a5,a4,2
.LVL105:
.L37:
	.loc 1 272 5 is_stmt 1
	.loc 1 272 8 is_stmt 0
	lbu	a4,1(s5)
	beq	a4,zero,.L38
	.loc 1 273 9 is_stmt 1
	.loc 1 273 16 is_stmt 0
	li	a4,33554432
	or	a5,a5,a4
.LVL106:
.L38:
	.loc 1 275 5 is_stmt 1
	.loc 1 275 60 is_stmt 0
	srw	a5,s0,s4,0
	.loc 1 277 5 is_stmt 1
	.loc 1 277 12 is_stmt 0
	lrw	a3,s0,s3,0
.LVL107:
	.loc 1 278 5 is_stmt 1
	.loc 1 278 15 is_stmt 0
	lbu	a4,3(s5)
	.loc 1 281 16
	andi	a5,a3,-5
	.loc 1 278 8
	beq	a4,zero,.L40
	.loc 1 279 9 is_stmt 1
	.loc 1 279 16 is_stmt 0
	ori	a5,a3,4
.LVL108:
.L40:
	.loc 1 283 5 is_stmt 1
	.loc 1 283 60 is_stmt 0
	srw	a5,s0,s3,0
	.loc 1 285 5 is_stmt 1
	.loc 1 285 12 is_stmt 0
	lrw	a5,s0,s2,0
.LVL109:
	.loc 1 286 5 is_stmt 1
	.loc 1 286 8 is_stmt 0
	beq	a4,zero,.L41
	.loc 1 287 9 is_stmt 1
	.loc 1 287 16 is_stmt 0
	li	a4,-8192
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL110:
.L42:
	.loc 1 291 5 is_stmt 1
	.loc 1 291 60 is_stmt 0
	srw	a5,s0,s2,0
	.loc 1 293 5 is_stmt 1
	.loc 1 293 12 is_stmt 0
	li	a4,536879104
	lw	a5,0(a4)
.LVL111:
	.loc 1 294 5 is_stmt 1
	.loc 1 296 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL112:
	.loc 1 294 12
	ori	a5,a5,2
.LVL113:
	.loc 1 295 5 is_stmt 1
	.loc 1 295 72 is_stmt 0
	sw	a5,0(a4)
	.loc 1 296 1
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
.LVL114:
	lw	s6,16(sp)
	.cfi_restore 22
.LVL115:
	lw	s7,12(sp)
	.cfi_restore 23
.LVL116:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL117:
.L29:
	.cfi_restore_state
	.loc 1 220 9 is_stmt 1
	.loc 1 220 28 is_stmt 0
	slli	s1,s1,1
	j	.L58
.LVL118:
.L34:
	.loc 1 262 9 is_stmt 1
	.loc 1 262 13 is_stmt 0
	sw	zero,0(a5)
	j	.L35
.LVL119:
.L41:
	.loc 1 289 9 is_stmt 1
	.loc 1 289 16 is_stmt 0
	li	a4,8192
	or	a5,a5,a4
.LVL120:
	j	.L42
	.cfi_endproc
.LFE6:
	.size	qcc74x_update_adc_trim, .-qcc74x_update_adc_trim
	.section	.text.qcc74x_adc_init,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_init
	.type	qcc74x_adc_init, @function
qcc74x_adc_init:
.LFB5:
	.loc 1 20 1 is_stmt 1
	.cfi_startproc
.LVL121:
	.loc 1 21 5
	.loc 1 22 5
	.loc 1 24 5
	.loc 1 25 5
	.loc 1 26 5
	.loc 1 27 5
	.loc 1 29 5
	.loc 1 29 14 is_stmt 0
	lw	a5,4(a0)
.LVL122:
	.loc 1 32 5 is_stmt 1
	.loc 1 32 58 is_stmt 0
	li	a4,4096
	addi	a4,a4,-1780
	.loc 1 32 12
	lrw	a3,a5,a4,0
.LVL123:
	.loc 1 33 5 is_stmt 1
	.loc 1 20 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 33 12
	andi	a3,a3,-2
.LVL124:
	.loc 1 34 5 is_stmt 1
	.loc 1 34 60 is_stmt 0
	srw	a3,a5,a4,0
	.loc 1 36 5 is_stmt 1
	.loc 1 36 12 is_stmt 0
	lrw	a3,a5,a4,0
.LVL125:
	.loc 1 37 5 is_stmt 1
	.loc 1 37 12 is_stmt 0
	ori	a3,a3,1
.LVL126:
	.loc 1 38 5 is_stmt 1
	.loc 1 38 60 is_stmt 0
	srw	a3,a5,a4,0
	.loc 1 41 5 is_stmt 1
	.loc 1 41 12 is_stmt 0
	lrw	a3,a5,a4,0
.LVL127:
	.loc 1 42 5 is_stmt 1
	.loc 1 42 12 is_stmt 0
	ori	a3,a3,4
.LVL128:
	.loc 1 43 5 is_stmt 1
	.loc 1 43 60 is_stmt 0
	srw	a3,a5,a4,0
	.loc 1 45 5 is_stmt 1
 #APP
# 45 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 46 5
# 46 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 47 5
# 47 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 48 5
# 48 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 49 5
# 49 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 50 5
# 50 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 51 5
# 51 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 52 5
# 52 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 54 5
	.loc 1 54 12 is_stmt 0
 #NO_APP
	lrw	a3,a5,a4,0
.LVL129:
	.loc 1 55 5 is_stmt 1
	.loc 1 55 12 is_stmt 0
	andi	a3,a3,-5
.LVL130:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 60 is_stmt 0
	srw	a3,a5,a4,0
	.loc 1 58 5 is_stmt 1
.LVL131:
	.loc 1 59 5
	.loc 1 60 5
	.loc 1 61 5
	.loc 1 62 5
	.loc 1 61 22 is_stmt 0
	lbu	a3,0(a1)
	.loc 1 62 22
	lbu	a2,4(a1)
	.loc 1 61 32
	slli	a3,a3,18
	.loc 1 62 35
	slli	a2,a2,2
	or	a3,a3,a2
.LVL132:
	.loc 1 68 5 is_stmt 1
	.loc 1 68 8 is_stmt 0
	lbu	a2,1(a1)
	bne	a2,zero,.L60
	.loc 1 62 12
	li	a2,1207959552
.LVL133:
.L76:
	.loc 1 70 16
	or	a3,a3,a2
.LVL134:
	.loc 1 72 5 is_stmt 1
	.loc 1 72 8 is_stmt 0
	lbu	a2,2(a1)
	beq	a2,zero,.L62
	.loc 1 73 9 is_stmt 1
	.loc 1 73 16 is_stmt 0
	ori	a3,a3,2
.LVL135:
.L62:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 49 is_stmt 0
	li	a2,4096
	addi	a2,a2,-1776
	.loc 1 76 60
	srw	a3,a5,a2,0
	.loc 1 78 5 is_stmt 1
 #APP
# 78 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 79 5
# 79 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 80 5
# 80 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 81 5
# 81 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 82 5
# 82 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 83 5
# 83 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 84 5
# 84 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 85 5
# 85 "/home/sai/QCCSDK-QCC74x/drivers/lhal/src/qcc74x_adc.c" 1
	nop
# 0 "" 2
	.loc 1 97 5
.LVL136:
	.loc 1 98 5
	.loc 1 99 5
	.loc 1 100 5
	.loc 1 104 5
	.loc 1 106 5
	.loc 1 107 5
	.loc 1 108 5
	.loc 1 110 5
	.loc 1 110 8 is_stmt 0
 #NO_APP
	lbu	a2,5(a1)
	li	a3,1
	bne	a2,a3,.L68
	.loc 1 111 16
	li	a3,574697472
	addi	a3,a3,136
.L63:
.LVL137:
	.loc 1 114 5 is_stmt 1
	.loc 1 114 15 is_stmt 0
	lbu	a6,3(a1)
	.loc 1 114 8
	beq	a6,zero,.L64
	.loc 1 115 9 is_stmt 1
	.loc 1 115 16 is_stmt 0
	ori	a3,a3,4
.LVL138:
.L64:
	.loc 1 118 5 is_stmt 1
	.loc 1 118 49 is_stmt 0
	li	a2,4096
	addi	a2,a2,-1772
	.loc 1 118 60
	srw	a3,a5,a2,0
	.loc 1 120 5 is_stmt 1
	.loc 1 120 12 is_stmt 0
	lrw	a3,a5,a4,0
.LVL139:
	.loc 1 121 5 is_stmt 1
	.loc 1 122 5
	.loc 1 125 16 is_stmt 0
	li	a2,532480
	.loc 1 122 8
	beq	a6,zero,.L77
	.loc 1 123 9 is_stmt 1
	li	a2,-8192
	addi	a2,a2,-1
	and	a3,a3,a2
.LVL140:
	.loc 1 123 16 is_stmt 0
	li	a2,524288
.L77:
	.loc 1 125 16
	or	a3,a3,a2
.LVL141:
	.loc 1 127 5 is_stmt 1
	.loc 1 127 60 is_stmt 0
	srw	a3,a5,a4,0
	.loc 1 130 5 is_stmt 1
	.loc 1 130 58 is_stmt 0
	li	a4,4096
	addi	a2,a4,-1736
	.loc 1 130 12
	lrw	a3,a5,a2,0
.LVL142:
	.loc 1 131 5 is_stmt 1
	.loc 1 131 12 is_stmt 0
	li	a6,-65536
	.loc 1 154 58
	addi	a4,a4,-1748
	.loc 1 131 12
	and	a3,a3,a6
.LVL143:
	.loc 1 132 5 is_stmt 1
	.loc 1 132 60 is_stmt 0
	srw	a3,a5,a2,0
	.loc 1 135 5 is_stmt 1
	.loc 1 135 12 is_stmt 0
	li	a2,536879104
	lw	a3,0(a2)
.LVL144:
	.loc 1 136 5 is_stmt 1
	.loc 1 142 5
	.loc 1 143 5
	.loc 1 144 5
	li	a6,-12582912
	addi	a6,a6,-2
	and	a3,a3,a6
.LVL145:
	.loc 1 144 12 is_stmt 0
	li	a6,28672
	addi	a6,a6,1794
	or	a3,a3,a6
.LVL146:
	.loc 1 145 5 is_stmt 1
	.loc 1 145 72 is_stmt 0
	sw	a3,0(a2)
	.loc 1 147 5 is_stmt 1
	.loc 1 147 12 is_stmt 0
	lw	a3,0(a2)
.LVL147:
	.loc 1 148 5 is_stmt 1
	.loc 1 160 27 is_stmt 0
	lui	s0,%hi(.LANCHOR5)
	addi	s0,s0,%lo(.LANCHOR5)
	.loc 1 148 12
	andi	a3,a3,-1795
.LVL148:
	.loc 1 152 5 is_stmt 1
	.loc 1 152 72 is_stmt 0
	sw	a3,0(a2)
	.loc 1 154 5 is_stmt 1
	.loc 1 154 12 is_stmt 0
	lrw	a3,a5,a4,0
.LVL149:
	.loc 1 155 5 is_stmt 1
	.loc 1 156 5
	.loc 1 156 12 is_stmt 0
	ori	a3,a3,768
.LVL150:
	.loc 1 157 5 is_stmt 1
	.loc 1 157 60 is_stmt 0
	srw	a3,a5,a4,0
	.loc 1 160 5 is_stmt 1
	.loc 1 160 27 is_stmt 0
	lw	a5,0(s0)
.LVL151:
	.loc 1 160 8
	bne	a5,zero,.L59
	sw	a1,12(sp)
	sw	a0,8(sp)
	.loc 1 161 9 is_stmt 1
	.loc 1 161 15 is_stmt 0
	call	qcc74x_efuse_get_adc_trim
.LVL152:
	.loc 1 162 9
	lw	a1,12(sp)
	lw	a0,8(sp)
	.loc 1 161 13
	lui	a5,%hi(.LANCHOR3)
	fsw	fa0,%lo(.LANCHOR3)(a5)
	.loc 1 162 9 is_stmt 1
	call	qcc74x_update_adc_trim
.LVL153:
	.loc 1 163 9
	.loc 1 163 23 is_stmt 0
	call	qcc74x_efuse_get_adc_tsen_trim
.LVL154:
	.loc 1 163 21
	lui	a5,%hi(.LANCHOR6)
	sw	a0,%lo(.LANCHOR6)(a5)
	.loc 1 164 9 is_stmt 1
	.loc 1 164 27 is_stmt 0
	li	a5,1
	sw	a5,0(s0)
.LVL155:
.L59:
	.loc 1 166 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL156:
.L60:
	.cfi_restore_state
	.loc 1 69 9 is_stmt 1
	.loc 1 70 9
	.loc 1 70 16 is_stmt 0
	li	a2,1241645056
	j	.L76
.LVL157:
.L68:
	.loc 1 108 12
	li	a3,574697472
	addi	a3,a3,128
	j	.L63
	.cfi_endproc
.LFE5:
	.size	qcc74x_adc_init, .-qcc74x_adc_init
	.section	.text.qcc74x_adc_get_count,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_get_count
	.type	qcc74x_adc_get_count, @function
qcc74x_adc_get_count:
.LFB13:
	.loc 1 418 1 is_stmt 1
	.cfi_startproc
.LVL158:
	.loc 1 419 5
	.loc 1 419 15 is_stmt 0
	li	a5,536879104
	lw	a0,0(a5)
.LVL159:
	.loc 1 420 1
	extu	a0,a0,16+6-1,16
	ret
	.cfi_endproc
.LFE13:
	.size	qcc74x_adc_get_count, .-qcc74x_adc_get_count
	.section	.text.qcc74x_adc_read_raw,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_read_raw
	.type	qcc74x_adc_read_raw, @function
qcc74x_adc_read_raw:
.LFB14:
	.loc 1 423 1 is_stmt 1
	.cfi_startproc
.LVL160:
	.loc 1 424 5
	.loc 1 424 80 is_stmt 0
	li	a5,536879104
	lw	a0,4(a5)
.LVL161:
	.loc 1 425 1
	li	a5,67108864
	addi	a5,a5,-1
	and	a0,a0,a5
	ret
	.cfi_endproc
.LFE14:
	.size	qcc74x_adc_read_raw, .-qcc74x_adc_read_raw
	.section	.text.qcc74x_adc_rxint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_rxint_mask
	.type	qcc74x_adc_rxint_mask, @function
qcc74x_adc_rxint_mask:
.LFB15:
	.loc 1 428 1 is_stmt 1
	.cfi_startproc
.LVL162:
	.loc 1 429 5
	.loc 1 431 5
	.loc 1 431 12 is_stmt 0
	li	a5,536879104
	lw	a5,0(a5)
.LVL163:
	.loc 1 432 5 is_stmt 1
	.loc 1 432 8 is_stmt 0
	beq	a1,zero,.L81
	.loc 1 433 9 is_stmt 1
	.loc 1 433 16 is_stmt 0
	li	a4,4096
	or	a5,a5,a4
.LVL164:
.L82:
	.loc 1 437 5 is_stmt 1
	.loc 1 437 72 is_stmt 0
	li	a4,536879104
	sw	a5,0(a4)
	.loc 1 438 1
	ret
.L81:
	.loc 1 435 9 is_stmt 1
	.loc 1 435 16 is_stmt 0
	li	a4,-4096
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL165:
	j	.L82
	.cfi_endproc
.LFE15:
	.size	qcc74x_adc_rxint_mask, .-qcc74x_adc_rxint_mask
	.section	.text.qcc74x_adc_errint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_errint_mask
	.type	qcc74x_adc_errint_mask, @function
qcc74x_adc_errint_mask:
.LFB16:
	.loc 1 441 1 is_stmt 1
	.cfi_startproc
.LVL166:
	.loc 1 442 5
	.loc 1 443 5
	.loc 1 444 5
	.loc 1 446 5
	.loc 1 448 5
	.loc 1 448 58 is_stmt 0
	lw	a0,4(a0)
.LVL167:
	li	a3,4096
	addi	a3,a3,-1748
	.loc 1 449 13
	li	a5,536879104
	.loc 1 448 12
	lrw	a4,a0,a3,0
.LVL168:
	.loc 1 449 5 is_stmt 1
	.loc 1 449 13 is_stmt 0
	lw	a5,0(a5)
.LVL169:
	.loc 1 451 5 is_stmt 1
	.loc 1 451 8 is_stmt 0
	beq	a1,zero,.L84
	.loc 1 452 9 is_stmt 1
.LVL170:
	.loc 1 453 9
	.loc 1 455 17 is_stmt 0
	li	a2,24576
	.loc 1 453 16
	ori	a4,a4,768
.LVL171:
	.loc 1 454 9 is_stmt 1
	.loc 1 455 9
	.loc 1 455 17 is_stmt 0
	or	a5,a5,a2
.LVL172:
.L85:
	.loc 1 462 5 is_stmt 1
	.loc 1 462 60 is_stmt 0
	srw	a4,a0,a3,0
	.loc 1 463 5 is_stmt 1
	.loc 1 463 72 is_stmt 0
	li	a4,536879104
.LVL173:
	sw	a5,0(a4)
.LVL174:
	.loc 1 464 1
	ret
.LVL175:
.L84:
	.loc 1 457 9 is_stmt 1
	.loc 1 458 9
	.loc 1 460 17 is_stmt 0
	li	a2,-24576
	addi	a2,a2,-1
	.loc 1 458 16
	andi	a4,a4,-769
.LVL176:
	.loc 1 459 9 is_stmt 1
	.loc 1 460 9
	.loc 1 460 17 is_stmt 0
	and	a5,a5,a2
.LVL177:
	j	.L85
	.cfi_endproc
.LFE16:
	.size	qcc74x_adc_errint_mask, .-qcc74x_adc_errint_mask
	.section	.text.qcc74x_adc_get_intstatus,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_get_intstatus
	.type	qcc74x_adc_get_intstatus, @function
qcc74x_adc_get_intstatus:
.LFB17:
	.loc 1 467 1 is_stmt 1
	.cfi_startproc
.LVL178:
	.loc 1 468 5
	.loc 1 469 5
	.loc 1 471 5
	.loc 1 473 5
	.loc 1 473 53 is_stmt 0
	lw	a4,4(a0)
	li	a5,4096
	addi	a5,a5,-1748
	.loc 1 473 10
	lrw	a0,a4,a5,0
.LVL179:
	.loc 1 476 10
	lrw	a5,a4,a5,0
	.loc 1 473 65
	andi	a0,a0,1
.LVL180:
	.loc 1 476 5 is_stmt 1
	.loc 1 476 65 is_stmt 0
	andi	a5,a5,2
	.loc 1 476 8
	beq	a5,zero,.L87
	.loc 1 477 9 is_stmt 1
	.loc 1 477 16 is_stmt 0
	ori	a0,a0,2
.LVL181:
.L87:
	.loc 1 479 5 is_stmt 1
	.loc 1 479 10 is_stmt 0
	li	a5,536879104
	lw	a5,0(a5)
	.loc 1 479 77
	andi	a5,a5,64
	.loc 1 479 8
	beq	a5,zero,.L88
	.loc 1 480 9 is_stmt 1
	.loc 1 480 16 is_stmt 0
	ori	a0,a0,4
.LVL182:
.L88:
	.loc 1 482 5 is_stmt 1
	.loc 1 482 10 is_stmt 0
	li	a5,536879104
	lw	a5,0(a5)
	.loc 1 482 77
	andi	a5,a5,32
	.loc 1 482 8
	beq	a5,zero,.L89
	.loc 1 483 9 is_stmt 1
	.loc 1 483 16 is_stmt 0
	ori	a0,a0,8
.LVL183:
.L89:
	.loc 1 485 5 is_stmt 1
	.loc 1 485 10 is_stmt 0
	li	a5,536879104
	lw	a5,0(a5)
	.loc 1 485 77
	andi	a5,a5,16
	.loc 1 485 8
	beq	a5,zero,.L86
	.loc 1 486 9 is_stmt 1
	.loc 1 486 16 is_stmt 0
	ori	a0,a0,16
.LVL184:
	.loc 1 488 5 is_stmt 1
.L86:
	.loc 1 489 1 is_stmt 0
	ret
	.cfi_endproc
.LFE17:
	.size	qcc74x_adc_get_intstatus, .-qcc74x_adc_get_intstatus
	.section	.text.qcc74x_adc_int_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_int_clear
	.type	qcc74x_adc_int_clear, @function
qcc74x_adc_int_clear:
.LFB18:
	.loc 1 492 1 is_stmt 1
	.cfi_startproc
.LVL185:
	.loc 1 493 5
	.loc 1 494 5
	.loc 1 496 5
	.loc 1 498 19 is_stmt 0
	andi	a4,a1,1
	.loc 1 496 14
	lw	a5,4(a0)
.LVL186:
	.loc 1 498 5 is_stmt 1
	.loc 1 498 8 is_stmt 0
	beq	a4,zero,.L104
	.loc 1 499 9 is_stmt 1
	.loc 1 499 62 is_stmt 0
	li	a4,4096
	addi	a4,a4,-1748
	.loc 1 499 16
	lrw	a3,a5,a4,0
.LVL187:
	.loc 1 500 9 is_stmt 1
	.loc 1 500 16 is_stmt 0
	andi	a3,a3,-17
.LVL188:
	.loc 1 501 9 is_stmt 1
	.loc 1 501 64 is_stmt 0
	srw	a3,a5,a4,0
	.loc 1 503 9 is_stmt 1
	.loc 1 503 16 is_stmt 0
	lrw	a3,a5,a4,0
.LVL189:
	.loc 1 504 9 is_stmt 1
	.loc 1 504 16 is_stmt 0
	ori	a3,a3,16
.LVL190:
	.loc 1 505 9 is_stmt 1
	.loc 1 505 64 is_stmt 0
	srw	a3,a5,a4,0
	.loc 1 507 9 is_stmt 1
	.loc 1 507 16 is_stmt 0
	lrw	a3,a5,a4,0
.LVL191:
	.loc 1 508 9 is_stmt 1
	.loc 1 508 16 is_stmt 0
	andi	a3,a3,-17
.LVL192:
	.loc 1 509 9 is_stmt 1
	.loc 1 509 64 is_stmt 0
	srw	a3,a5,a4,0
.LVL193:
.L104:
	.loc 1 511 5 is_stmt 1
	.loc 1 511 19 is_stmt 0
	andi	a4,a1,2
	.loc 1 511 8
	beq	a4,zero,.L105
	.loc 1 512 9 is_stmt 1
	.loc 1 512 62 is_stmt 0
	li	a4,4096
	addi	a4,a4,-1748
	.loc 1 512 16
	lrw	a3,a5,a4,0
.LVL194:
	.loc 1 513 9 is_stmt 1
	.loc 1 513 16 is_stmt 0
	andi	a3,a3,-33
.LVL195:
	.loc 1 514 9 is_stmt 1
	.loc 1 514 64 is_stmt 0
	srw	a3,a5,a4,0
	.loc 1 516 9 is_stmt 1
	.loc 1 516 16 is_stmt 0
	lrw	a3,a5,a4,0
.LVL196:
	.loc 1 517 9 is_stmt 1
	.loc 1 517 16 is_stmt 0
	ori	a3,a3,32
.LVL197:
	.loc 1 518 9 is_stmt 1
	.loc 1 518 64 is_stmt 0
	srw	a3,a5,a4,0
	.loc 1 520 9 is_stmt 1
	.loc 1 520 16 is_stmt 0
	lrw	a3,a5,a4,0
.LVL198:
	.loc 1 521 9 is_stmt 1
	.loc 1 521 16 is_stmt 0
	andi	a3,a3,-33
.LVL199:
	.loc 1 522 9 is_stmt 1
	.loc 1 522 64 is_stmt 0
	srw	a3,a5,a4,0
.LVL200:
.L105:
	.loc 1 524 5 is_stmt 1
	.loc 1 524 19 is_stmt 0
	andi	a5,a1,4
.LVL201:
	.loc 1 524 8
	beq	a5,zero,.L106
	.loc 1 525 9 is_stmt 1
	.loc 1 525 16 is_stmt 0
	li	a5,536879104
	lw	a4,0(a5)
.LVL202:
	.loc 1 526 9 is_stmt 1
	.loc 1 526 16 is_stmt 0
	andi	a4,a4,-1025
.LVL203:
	.loc 1 527 9 is_stmt 1
	.loc 1 527 76 is_stmt 0
	sw	a4,0(a5)
	.loc 1 529 9 is_stmt 1
	.loc 1 529 16 is_stmt 0
	lw	a4,0(a5)
.LVL204:
	.loc 1 530 9 is_stmt 1
	.loc 1 530 16 is_stmt 0
	ori	a4,a4,1024
.LVL205:
	.loc 1 531 9 is_stmt 1
	.loc 1 531 76 is_stmt 0
	sw	a4,0(a5)
	.loc 1 533 9 is_stmt 1
	.loc 1 533 16 is_stmt 0
	lw	a4,0(a5)
.LVL206:
	.loc 1 534 9 is_stmt 1
	.loc 1 534 16 is_stmt 0
	andi	a4,a4,-1025
.LVL207:
	.loc 1 535 9 is_stmt 1
	.loc 1 535 76 is_stmt 0
	sw	a4,0(a5)
.LVL208:
.L106:
	.loc 1 537 5 is_stmt 1
	.loc 1 537 19 is_stmt 0
	andi	a5,a1,8
	.loc 1 537 8
	beq	a5,zero,.L107
	.loc 1 538 9 is_stmt 1
	.loc 1 538 16 is_stmt 0
	li	a5,536879104
	lw	a4,0(a5)
.LVL209:
	.loc 1 539 9 is_stmt 1
	.loc 1 539 16 is_stmt 0
	andi	a4,a4,-513
.LVL210:
	.loc 1 540 9 is_stmt 1
	.loc 1 540 76 is_stmt 0
	sw	a4,0(a5)
	.loc 1 542 9 is_stmt 1
	.loc 1 542 16 is_stmt 0
	lw	a4,0(a5)
.LVL211:
	.loc 1 543 9 is_stmt 1
	.loc 1 543 16 is_stmt 0
	ori	a4,a4,512
.LVL212:
	.loc 1 544 9 is_stmt 1
	.loc 1 544 76 is_stmt 0
	sw	a4,0(a5)
	.loc 1 546 9 is_stmt 1
	.loc 1 546 16 is_stmt 0
	lw	a4,0(a5)
.LVL213:
	.loc 1 547 9 is_stmt 1
	.loc 1 547 16 is_stmt 0
	andi	a4,a4,-513
.LVL214:
	.loc 1 548 9 is_stmt 1
	.loc 1 548 76 is_stmt 0
	sw	a4,0(a5)
.LVL215:
.L107:
	.loc 1 550 5 is_stmt 1
	.loc 1 550 19 is_stmt 0
	andi	a1,a1,16
.LVL216:
	.loc 1 550 8
	beq	a1,zero,.L103
	.loc 1 551 9 is_stmt 1
	.loc 1 551 16 is_stmt 0
	li	a5,536879104
	lw	a4,0(a5)
.LVL217:
	.loc 1 552 9 is_stmt 1
	.loc 1 552 16 is_stmt 0
	andi	a4,a4,-257
.LVL218:
	.loc 1 553 9 is_stmt 1
	.loc 1 553 76 is_stmt 0
	sw	a4,0(a5)
	.loc 1 555 9 is_stmt 1
	.loc 1 555 16 is_stmt 0
	lw	a4,0(a5)
.LVL219:
	.loc 1 556 9 is_stmt 1
	.loc 1 556 16 is_stmt 0
	ori	a4,a4,256
.LVL220:
	.loc 1 557 9 is_stmt 1
	.loc 1 557 76 is_stmt 0
	sw	a4,0(a5)
	.loc 1 559 9 is_stmt 1
	.loc 1 559 16 is_stmt 0
	lw	a4,0(a5)
.LVL221:
	.loc 1 560 9 is_stmt 1
	.loc 1 560 16 is_stmt 0
	andi	a4,a4,-257
.LVL222:
	.loc 1 561 9 is_stmt 1
	.loc 1 561 76 is_stmt 0
	sw	a4,0(a5)
.LVL223:
.L103:
	.loc 1 563 1
	ret
	.cfi_endproc
.LFE18:
	.size	qcc74x_adc_int_clear, .-qcc74x_adc_int_clear
	.globl	__floatunsidf
	.globl	__muldf3
	.globl	__ltdf2
	.globl	__floatsidf
	.globl	__subdf3
	.globl	__gedf2
	.section	.text.qcc74x_adc_parse_result,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_parse_result
	.type	qcc74x_adc_parse_result, @function
qcc74x_adc_parse_result:
.LFB20:
	.loc 1 592 1 is_stmt 1
	.cfi_startproc
.LVL224:
	.loc 1 593 5
	.loc 1 594 5
	.loc 1 595 5
	.loc 1 596 5
	.loc 1 597 5
	.loc 1 598 5
	.loc 1 599 5
	.loc 1 600 5
	.loc 1 601 5
	.loc 1 603 5
	.loc 1 592 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	.loc 1 603 14
	lw	a4,4(a0)
.LVL225:
	.loc 1 605 5 is_stmt 1
	.loc 1 592 1 is_stmt 0
	sw	s1,84(sp)
	.cfi_offset 9, -12
	.loc 1 605 63
	li	s1,4096
	.loc 1 606 62
	addi	a0,s1,-1772
.LVL226:
	.loc 1 605 63
	addi	a5,s1,-1776
	.loc 1 605 20
	lrw	a5,a4,a5,0
	.loc 1 606 19
	lrw	a6,a4,a0,0
	.loc 1 607 14
	lrw	a4,a4,a0,0
.LVL227:
	.loc 1 592 1
	sw	s8,56(sp)
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	s4,72(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s9,52(sp)
	sw	s10,48(sp)
	sw	s11,44(sp)
	.cfi_offset 24, -40
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 609 8
	extu	a4,a4,3+1-1,3
	.loc 1 605 16
	extu	s8,a5,2+3-1,2
.LVL228:
	.loc 1 606 5 is_stmt 1
	.loc 1 606 15 is_stmt 0
	extu	a6,a6,2+1-1,2
.LVL229:
	.loc 1 607 5 is_stmt 1
	.loc 1 609 5
	addi	s1,s1,-896
	.loc 1 609 8 is_stmt 0
	beq	a4,zero,.L125
	.loc 1 610 13
	li	s1,2000
.L125:
.LVL230:
	.loc 1 615 5 is_stmt 1
	li	a0,0
	.loc 1 615 8 is_stmt 0
	beq	a6,zero,.L163
.LBB61:
	.loc 1 682 21
	li	a7,32768
	.loc 1 703 47
	li	t3,65536
	.loc 1 696 58
	li	t4,16384
	.loc 1 700 33
	li	t0,8192
	.loc 1 689 58
	li	t5,4096
.LBE61:
	.loc 1 599 13
	li	t6,0
.LBB62:
	.loc 1 695 23
	li	t2,2
	.loc 1 702 23
	li	s0,4
	.loc 1 703 57
	lui	t1,%hi(.LANCHOR3)
	.loc 1 703 47
	addi	t3,t3,-1
	.loc 1 707 33
	addi	s2,a7,-1
	.loc 1 696 58
	addi	t4,t4,-1
	.loc 1 700 33
	addi	s3,t0,-1
	.loc 1 689 58
	addi	t5,t5,-1
	.loc 1 693 33
	li	s4,2047
.LVL231:
.L127:
	.loc 1 676 30 is_stmt 1 discriminator 1
	.loc 1 676 9 is_stmt 0 discriminator 1
	extu	a4,a0,15,0
	bleu	a3,a4,.L124
	.loc 1 677 13 is_stmt 1
	.loc 1 677 40 is_stmt 0
	lrw	a4,a1,a0,2
	.loc 1 677 44
	srli	s5,a4,21
	.loc 1 677 32
	sb	s5,0(a2)
	.loc 1 678 13 is_stmt 1
	.loc 1 678 52 is_stmt 0
	extu	s5,a4,16+5-1,16
	.loc 1 678 32
	sb	s5,1(a2)
	.loc 1 680 13 is_stmt 1
.LVL232:
	.loc 1 682 13
	.loc 1 682 21 is_stmt 0
	and	s5,a4,a7
	.loc 1 682 16
	beq	s5,zero,.L152
	.loc 1 683 17 is_stmt 1
.LVL233:
	.loc 1 684 17
	.loc 1 684 21 is_stmt 0
	neg	a4,a4
.LVL234:
	.loc 1 685 17 is_stmt 1
	.loc 1 685 21 is_stmt 0
	mv	t6,a6
.LVL235:
.L152:
	.loc 1 688 13 is_stmt 1
	.loc 1 688 16 is_stmt 0
	bne	s8,zero,.L153
	.loc 1 689 17 is_stmt 1
	.loc 1 689 58 is_stmt 0
	srli	a4,a4,4
.LVL236:
	and	a4,a4,t5
	.loc 1 689 64
	addi	s5,t1,%lo(.LANCHOR3)
	fcvt.s.w	fa5,a4
	flw	fa4,0(s5)
	fdiv.s	fa5,fa5,fa4
	.loc 1 689 29
	fcvt.wu.s a4,fa5,rtz
	.loc 1 690 17 is_stmt 1
	.loc 1 693 17
	.loc 1 693 33 is_stmt 0
	bleu	a4,s4,.L154
	li	a4,2047
.L154:
	sw	a4,4(a2)
	.loc 1 694 17 is_stmt 1
	.loc 1 694 64 is_stmt 0
	mul	a4,s1,a4
	.loc 1 694 70
	srai	a4,a4,11
.L180:
	.loc 1 708 37
	sw	a4,8(a2)
.L155:
	.loc 1 710 13 is_stmt 1
	.loc 1 712 13
	.loc 1 712 16 is_stmt 0
	beq	t6,zero,.L159
	.loc 1 713 17 is_stmt 1
	.loc 1 713 35 is_stmt 0
	lw	a4,4(a2)
	neg	a4,a4
	.loc 1 713 33
	sw	a4,4(a2)
	.loc 1 714 17 is_stmt 1
	.loc 1 714 39 is_stmt 0
	lw	a4,8(a2)
	neg	a4,a4
	.loc 1 714 37
	sw	a4,8(a2)
.L159:
	.loc 1 676 41 is_stmt 1 discriminator 2
.LVL237:
	addi	a0,a0,1
.LVL238:
	addi	a2,a2,12
	j	.L127
.LVL239:
.L131:
.LBE62:
.LBB63:
	.loc 1 617 13
	.loc 1 617 24 is_stmt 0
	lrw	a4,a1,a0,2
	.loc 1 617 35
	addi	t0,t4,%lo(.LANCHOR0)
	lw	t0,0(t0)
	.loc 1 617 28
	srli	t2,a4,21
	.loc 1 617 16
	bne	t2,t0,.L128
	.loc 1 618 17 is_stmt 1
	.loc 1 618 20 is_stmt 0
	bne	s8,zero,.L129
	.loc 1 619 21 is_stmt 1
.LVL240:
	.loc 1 620 21
	.loc 1 623 21
	.loc 1 619 35 is_stmt 0
	srli	t3,a4,4
	.loc 1 619 33
	and	t3,t3,t1
	.loc 1 623 54
	mul	t3,t3,s1
	.loc 1 623 31
	srai	s10,t3,12
.LVL241:
.L128:
	.loc 1 637 17 is_stmt 1 discriminator 2
	.loc 1 616 41 discriminator 2
	addi	a0,a0,1
.LVL242:
.L126:
	.loc 1 616 30 discriminator 1
	.loc 1 616 9 is_stmt 0 discriminator 1
	extu	a4,a0,15,0
	bgtu	a3,a4,.L131
.LBE63:
.LBB64:
.LBB65:
.LBB66:
	.loc 1 570 23
	lui	a4,%hi(.LC1)
	lw	a5,%lo(.LC1+4)(a4)
	lw	a4,%lo(.LC1)(a4)
	sw	a3,28(sp)
	mv	s4,a1
	mv	s0,a2
.LBE66:
.LBE65:
.LBE64:
.LBB73:
	.loc 1 616 9
	li	s9,0
.LBE73:
.LBB74:
	.loc 1 645 25
	li	s11,65536
.LBB70:
.LBB67:
	.loc 1 570 23
	sw	a4,16(sp)
	sw	a5,20(sp)
.LBE67:
.LBE70:
	.loc 1 655 20
	li	s2,16384
	.loc 1 649 20
	li	s3,4096
.LVL243:
.L132:
	.loc 1 641 30 is_stmt 1 discriminator 1
	.loc 1 641 9 is_stmt 0 discriminator 1
	lw	a5,28(sp)
	extu	a4,s9,15,0
	bgtu	a5,a4,.L151
.LVL244:
.L124:
.LBE74:
	.loc 1 718 1
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	lw	s1,84(sp)
	.cfi_restore 9
.LVL245:
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
	lw	s4,72(sp)
	.cfi_restore 20
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
.LVL246:
	lw	s9,52(sp)
	.cfi_restore 25
	lw	s10,48(sp)
	.cfi_restore 26
	lw	s11,44(sp)
	.cfi_restore 27
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.LVL247:
.L129:
	.cfi_restore_state
.LBB75:
	.loc 1 624 24 is_stmt 1
	.loc 1 624 27 is_stmt 0
	bne	s8,t5,.L130
	.loc 1 625 21 is_stmt 1
.LVL248:
	.loc 1 626 21
	.loc 1 629 21
	.loc 1 625 35 is_stmt 0
	srli	t3,a4,2
	.loc 1 625 33
	and	t3,t3,a7
	.loc 1 629 54
	mul	t3,t3,s1
	.loc 1 629 31
	srai	s10,t3,14
.LVL249:
	j	.L128
.LVL250:
.L130:
	.loc 1 630 24 is_stmt 1
	.loc 1 630 27 is_stmt 0
	bne	s8,t6,.L128
	.loc 1 631 21 is_stmt 1
.LVL251:
	.loc 1 632 21
	.loc 1 635 21
	.loc 1 631 33 is_stmt 0
	and	t3,a4,a6
	.loc 1 635 54
	mul	t3,t3,s1
	.loc 1 635 31
	srai	s10,t3,16
.LVL252:
	j	.L128
.LVL253:
.L163:
	.loc 1 631 33
	li	a6,65536
.LVL254:
	.loc 1 625 33
	li	a7,16384
	.loc 1 619 33
	li	t1,4096
.LBE75:
	.loc 1 601 13
	li	s10,0
.LBB76:
	.loc 1 617 35
	lui	t4,%hi(.LANCHOR0)
	.loc 1 624 27
	li	t5,2
	.loc 1 630 27
	li	t6,4
	.loc 1 631 33
	addi	a6,a6,-1
	.loc 1 625 33
	addi	a7,a7,-1
	.loc 1 619 33
	addi	t1,t1,-1
	j	.L126
.LVL255:
.L151:
.LBE76:
.LBB77:
	.loc 1 642 13 is_stmt 1
	.loc 1 642 40 is_stmt 0
	lrw	a4,s4,s9,2
	.loc 1 643 32
	li	a5,-1
	sb	a5,1(s0)
	.loc 1 645 25
	li	a5,65536
	addi	a5,a5,-1
	.loc 1 642 44
	srli	a3,a4,21
	.loc 1 645 25
	and	s5,a4,a5
	.loc 1 646 31
	lui	a5,%hi(.LANCHOR4)
	.loc 1 642 32
	sb	a3,0(s0)
	.loc 1 643 13 is_stmt 1
	.loc 1 645 13
.LVL256:
	.loc 1 646 13
	.loc 1 646 31 is_stmt 0
	addi	a3,a5,%lo(.LANCHOR4)
	lui	a5,%hi(.LANCHOR2)
	lw	s6,0(a3)
	addi	a3,a5,%lo(.LANCHOR2)
	lw	s7,0(a3)
.LVL257:
.LBB71:
.LBB68:
	.loc 1 567 5 is_stmt 1
	.loc 1 569 5
	lui	a5,%hi(.LANCHOR3)
	addi	t5,a5,%lo(.LANCHOR3)
	.loc 1 569 8 is_stmt 0
	bge	s7,zero,.L133
	.loc 1 570 9 is_stmt 1
	.loc 1 570 17 is_stmt 0
	mv	a0,s5
	call	__floatunsidf
.LVL258:
	sw	a0,0(sp)
	.loc 1 570 23
	mv	a0,s6
	.loc 1 570 17
	sw	a1,4(sp)
	.loc 1 570 23
	call	__floatunsidf
.LVL259:
	lw	a2,16(sp)
	lw	a3,20(sp)
	call	__muldf3
.LVL260:
	sw	a0,8(sp)
	sw	a1,12(sp)
	.loc 1 570 12
	mv	a2,a0
	mv	a3,a1
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__ltdf2
.LVL261:
	lui	a5,%hi(.LANCHOR3)
	addi	t5,a5,%lo(.LANCHOR3)
	bge	a0,zero,.L174
	.loc 1 571 13 is_stmt 1
	.loc 1 571 36 is_stmt 0
	flw	fa4,0(t5)
.L181:
	.loc 1 579 13 is_stmt 1
	.loc 1 579 29 is_stmt 0
	sub	a3,s5,s6
	.loc 1 579 36
	fcvt.s.wu	fa5,a3
	j	.L178
.L174:
	.loc 1 572 16 is_stmt 1
	.loc 1 572 38 is_stmt 0
	mv	a0,s7
	call	__floatsidf
.LVL262:
	mv	a2,a0
	mv	a3,a1
	lw	a0,8(sp)
	lw	a1,12(sp)
	call	__subdf3
.LVL263:
	mv	a2,a0
	mv	a3,a1
	.loc 1 572 19
	lw	a0,0(sp)
	lw	a1,4(sp)
	call	__gedf2
.LVL264:
	lui	a5,%hi(.LANCHOR3)
	addi	t5,a5,%lo(.LANCHOR3)
	.loc 1 573 36
	flw	fa4,0(t5)
	.loc 1 572 19
	blt	a0,zero,.L175
.L139:
	.loc 1 581 13 is_stmt 1
	.loc 1 581 29 is_stmt 0
	sub	a6,s5,s7
	.loc 1 581 36
	fcvt.s.wu	fa5,a6
	j	.L178
.L175:
	.loc 1 575 13 is_stmt 1
	.loc 1 575 28 is_stmt 0
	fcvt.s.w	fa5,s5
.L178:
	.loc 1 581 36
	fdiv.s	fa5,fa5,fa4
	.loc 1 581 22
	fcvt.w.s a3,fa5,rtz
.LVL265:
	.loc 1 584 5 is_stmt 1
	.loc 1 584 8 is_stmt 0
	bleu	s6,s5,.L140
	li	a3,0
.LVL266:
.L140:
.LBE68:
.LBE71:
	.loc 1 646 29
	sw	a3,4(s0)
	.loc 1 647 13 is_stmt 1
	.loc 1 647 16 is_stmt 0
	bne	s8,zero,.L141
	.loc 1 648 17 is_stmt 1
	.loc 1 648 33 is_stmt 0
	srai	a3,a3,4
	.loc 1 649 17 is_stmt 1
	.loc 1 648 33 is_stmt 0
	li	a5,4096
	slt	a4,a3,s3
	addi	a5,a5,-1
	mveqz	a3, a5, a4
	.loc 1 652 64
	mul	a4,s1,a3
	.loc 1 648 33
	sw	a3,4(s0)
	.loc 1 652 17 is_stmt 1
	.loc 1 652 70 is_stmt 0
	div	a4,a4,s3
.L179:
	.loc 1 663 37
	sw	a4,8(s0)
.L144:
	.loc 1 665 13 is_stmt 1
	.loc 1 667 13
	.loc 1 667 40 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a4,a5,%lo(.LANCHOR0)
	lw	a3,0(a4)
	.loc 1 667 16
	li	a5,-1
	beq	a3,a5,.L149
	.loc 1 667 69 discriminator 1
	lw	a3,0(a4)
	.loc 1 667 62 discriminator 1
	lrw	a4,s4,s9,2
	srli	a4,a4,21
	.loc 1 667 47 discriminator 1
	beq	a4,a3,.L149
	.loc 1 668 17 is_stmt 1
	.loc 1 668 20 is_stmt 0
	beq	s10,zero,.L150
	.loc 1 669 21 is_stmt 1
	.loc 1 669 63 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	addi	a4,a5,%lo(.LANCHOR1)
	lw	a4,0(a4)
	lw	a3,8(s0)
	mul	a4,a4,a3
	.loc 1 669 97
	div	a4,a4,s10
	.loc 1 669 41
	sw	a4,8(s0)
.L149:
	.loc 1 641 41 is_stmt 1 discriminator 2
.LVL267:
	addi	s9,s9,1
.LVL268:
	addi	s0,s0,12
	j	.L132
.LVL269:
.L133:
.LBB72:
.LBB69:
	.loc 1 577 12
	.loc 1 578 9
	.loc 1 579 36 is_stmt 0
	flw	fa4,0(t5)
	.loc 1 578 24
	add	a3,s6,s7
	.loc 1 578 12
	bgeu	s5,a3,.L139
	j	.L181
.LVL270:
.L141:
.LBE69:
.LBE72:
	.loc 1 653 20 is_stmt 1
	.loc 1 653 23 is_stmt 0
	li	a5,2
	bne	s8,a5,.L145
	.loc 1 654 17 is_stmt 1
	.loc 1 654 33 is_stmt 0
	srai	a3,a3,2
	.loc 1 655 17 is_stmt 1
	.loc 1 654 33 is_stmt 0
	li	a5,16384
	slt	a4,a3,s2
	addi	a5,a5,-1
	mveqz	a3, a5, a4
	.loc 1 658 64
	mul	a4,s1,a3
	.loc 1 654 33
	sw	a3,4(s0)
	.loc 1 658 17 is_stmt 1
	.loc 1 658 70 is_stmt 0
	div	a4,a4,s2
	j	.L179
.L145:
	.loc 1 659 20 is_stmt 1
	.loc 1 659 23 is_stmt 0
	li	a5,4
	bne	s8,a5,.L144
	.loc 1 660 17 is_stmt 1
	.loc 1 660 20 is_stmt 0
	blt	a3,s11,.L148
	.loc 1 661 21 is_stmt 1
	.loc 1 661 37 is_stmt 0
	li	a5,65536
	addi	a5,a5,-1
	sw	a5,4(s0)
.L148:
	.loc 1 663 17 is_stmt 1
	.loc 1 663 64 is_stmt 0
	lw	a4,4(s0)
	mul	a4,s1,a4
	.loc 1 663 70
	div	a4,a4,s11
	j	.L179
.L150:
	.loc 1 671 21 is_stmt 1
	.loc 1 671 41 is_stmt 0
	sw	zero,8(s0)
	j	.L149
.LVL271:
.L153:
.LBE77:
.LBB78:
	.loc 1 695 20 is_stmt 1
	.loc 1 695 23 is_stmt 0
	bne	s8,t2,.L156
	.loc 1 696 17 is_stmt 1
	.loc 1 696 58 is_stmt 0
	srli	a4,a4,2
.LVL272:
	.loc 1 696 64
	addi	s5,t1,%lo(.LANCHOR3)
	.loc 1 696 58
	and	a4,a4,t4
	.loc 1 696 64
	flw	fa4,0(s5)
	fcvt.s.w	fa5,a4
	fdiv.s	fa5,fa5,fa4
	.loc 1 696 29
	fcvt.wu.s a4,fa5,rtz
	.loc 1 697 17 is_stmt 1
	.loc 1 700 17
	.loc 1 700 33 is_stmt 0
	sltu	s5,a4,t0
	mveqz	a4, s3, s5
	sw	a4,4(a2)
	.loc 1 701 17 is_stmt 1
	.loc 1 701 64 is_stmt 0
	mul	a4,s1,a4
	.loc 1 701 70
	srai	a4,a4,13
	j	.L180
.LVL273:
.L156:
	.loc 1 702 20 is_stmt 1
	.loc 1 702 23 is_stmt 0
	bne	s8,s0,.L155
	.loc 1 703 17 is_stmt 1
	.loc 1 703 57 is_stmt 0
	addi	s5,t1,%lo(.LANCHOR3)
	.loc 1 703 47
	and	a4,a4,t3
.LVL274:
	.loc 1 703 57
	flw	fa4,0(s5)
	fcvt.s.w	fa5,a4
	fdiv.s	fa5,fa5,fa4
	.loc 1 703 29
	fcvt.wu.s a4,fa5,rtz
	.loc 1 704 17 is_stmt 1
	.loc 1 707 17
	.loc 1 707 33 is_stmt 0
	sltu	s5,a4,a7
	mveqz	a4, s2, s5
	sw	a4,4(a2)
	.loc 1 708 17 is_stmt 1
	.loc 1 708 64 is_stmt 0
	mul	a4,s1,a4
	.loc 1 708 70
	srai	a4,a4,15
	j	.L180
.LBE78:
	.cfi_endproc
.LFE20:
	.size	qcc74x_adc_parse_result, .-qcc74x_adc_parse_result
	.section	.text.qcc74x_adc_tsen_init,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_tsen_init
	.type	qcc74x_adc_tsen_init, @function
qcc74x_adc_tsen_init:
.LFB21:
	.loc 1 721 1 is_stmt 1
	.cfi_startproc
.LVL275:
	.loc 1 722 5
	.loc 1 723 5
	.loc 1 724 5
	.loc 1 724 14 is_stmt 0
	lw	a4,4(a0)
.LVL276:
	.loc 1 726 5 is_stmt 1
	.loc 1 726 58 is_stmt 0
	li	a3,4096
	addi	a2,a3,-1780
	.loc 1 726 12
	lrw	a5,a4,a2,0
.LVL277:
	.loc 1 727 5 is_stmt 1
	.loc 1 728 5
	.loc 1 729 5
	.loc 1 730 5
	.loc 1 730 12 is_stmt 0
	li	a0,2013003776
.LVL278:
	addi	a0,a0,-1
	and	a5,a5,a0
.LVL279:
	.loc 1 731 5 is_stmt 1
	.loc 1 731 60 is_stmt 0
	srw	a5,a4,a2,0
	.loc 1 733 5 is_stmt 1
	.loc 1 733 58 is_stmt 0
	addi	a3,a3,-1772
	.loc 1 733 12
	lrw	a5,a4,a3,0
.LVL280:
	.loc 1 734 5 is_stmt 1
	.loc 1 735 5
	.loc 1 736 5
	.loc 1 737 5
	.loc 1 738 5
	.loc 1 739 5
	.loc 1 740 5
	.loc 1 741 5
	.loc 1 742 5
	.loc 1 742 8 is_stmt 0
	beq	a1,zero,.L183
	.loc 1 743 9 is_stmt 1
	.loc 1 738 12 is_stmt 0
	li	a1,2143436800
.LVL281:
	addi	a1,a1,-1
	and	a5,a5,a1
.LVL282:
	.loc 1 743 16
	li	a1,536903680
	addi	a1,a1,96
.L185:
	.loc 1 745 16
	or	a5,a5,a1
.LVL283:
	.loc 1 747 5 is_stmt 1
	.loc 1 747 12 is_stmt 0
	ori	a5,a5,128
.LVL284:
	.loc 1 748 5 is_stmt 1
	.loc 1 749 5
	.loc 1 749 60 is_stmt 0
	srw	a5,a4,a3,0
	.loc 1 751 5 is_stmt 1
	.loc 1 751 58 is_stmt 0
	li	a5,4096
.LVL285:
	addi	a5,a5,-1776
	.loc 1 751 12
	lrw	a3,a4,a5,0
.LVL286:
	.loc 1 752 5 is_stmt 1
	.loc 1 752 12 is_stmt 0
	li	a1,-67108864
	addi	a1,a1,-1
	and	a3,a3,a1
.LVL287:
	.loc 1 753 5 is_stmt 1
	.loc 1 753 60 is_stmt 0
	srw	a3,a4,a5,0
	.loc 1 755 5 is_stmt 1
	.loc 1 755 12 is_stmt 0
	lrw	a5,a4,a2,0
.LVL288:
	.loc 1 756 5 is_stmt 1
	.loc 1 756 12 is_stmt 0
	li	a3,524288
	or	a5,a5,a3
.LVL289:
	.loc 1 757 5 is_stmt 1
	.loc 1 757 60 is_stmt 0
	srw	a5,a4,a2,0
	.loc 1 758 1
	ret
.LVL290:
.L183:
	.loc 1 745 9 is_stmt 1
	li	a1,2143436800
.LVL291:
	addi	a1,a1,-33
	and	a5,a5,a1
.LVL292:
	.loc 1 745 16 is_stmt 0
	li	a1,536903680
	addi	a1,a1,64
	j	.L185
	.cfi_endproc
.LFE21:
	.size	qcc74x_adc_tsen_init, .-qcc74x_adc_tsen_init
	.section	.text.qcc74x_adc_tsen_get_temp,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_tsen_get_temp
	.type	qcc74x_adc_tsen_get_temp, @function
qcc74x_adc_tsen_get_temp:
.LFB22:
	.loc 1 761 1 is_stmt 1
	.cfi_startproc
.LVL293:
	.loc 1 762 5
	.loc 1 763 5
	.loc 1 764 5
	.loc 1 765 5
	.loc 1 766 5
	.loc 1 767 5
	.loc 1 768 5
	.loc 1 770 5
	.loc 1 772 12 is_stmt 0
	li	a4,536879104
	lw	a5,0(a4)
	.loc 1 761 1
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s3,28(sp)
	.cfi_offset 19, -20
	.loc 1 770 14
	lw	s3,4(a0)
.LVL294:
	.loc 1 772 5 is_stmt 1
	.loc 1 773 5
	.loc 1 774 5
	.loc 1 761 1 is_stmt 0
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s4,24(sp)
	sw	s5,20(sp)
	sw	ra,44(sp)
	sw	s6,16(sp)
	sw	s7,12(sp)
	sw	s8,8(sp)
	sw	s9,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 1, -4
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 774 12
	ori	a5,a5,2
.LVL295:
	.loc 1 775 5 is_stmt 1
	.loc 1 777 58 is_stmt 0
	li	s0,4096
	.loc 1 775 72
	sw	a5,0(a4)
	.loc 1 777 5 is_stmt 1
	.loc 1 777 58 is_stmt 0
	addi	s0,s0,-1772
	.loc 1 777 12
	lrw	a5,s3,s0,0
.LVL296:
	.loc 1 778 5 is_stmt 1
	.loc 1 778 12 is_stmt 0
	li	a4,-2147483648
	xori	a4,a4,-1
	and	a5,a5,a4
.LVL297:
	.loc 1 779 5 is_stmt 1
	.loc 1 779 60 is_stmt 0
	srw	a5,s3,s0,0
	.loc 1 781 5 is_stmt 1
.LVL298:
	.loc 1 782 5
	.loc 1 761 1 is_stmt 0
	mv	s2,a0
	.loc 1 782 5
	li	s1,8
	call	qcc74x_adc_start_conversion
.LVL299:
	.loc 1 783 5 is_stmt 1
.LBB79:
	.loc 1 783 10
	.loc 1 783 26
.LBB80:
.LBB81:
	.loc 1 419 15 is_stmt 0
	li	s4,536879104
.LBE81:
.LBE80:
	.loc 1 786 16
	li	s5,100
.LVL300:
.L191:
	.loc 1 784 9 is_stmt 1
	.loc 1 784 22 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL301:
	mv	s6,a0
	mv	s7,a1
.LVL302:
	.loc 1 785 9 is_stmt 1
.L187:
	.loc 1 785 15
.LBB83:
.LBB82:
	.loc 1 419 5
	.loc 1 419 15 is_stmt 0
	lw	a5,0(s4)
.LVL303:
.LBE82:
.LBE83:
	.loc 1 785 15
	extu	a5,a5,16+6-1,16
	beq	a5,zero,.L190
	.loc 1 790 9 is_stmt 1
.LVL304:
.LBB84:
.LBB85:
	.loc 1 424 5
	.loc 1 424 80 is_stmt 0
	lw	a5,4(s4)
.LVL305:
.LBE85:
.LBE84:
	.loc 1 783 33 is_stmt 1
	.loc 1 783 26
	.loc 1 783 5 is_stmt 0
	addi	s1,s1,-1
.LVL306:
	bne	s1,zero,.L191
.LBE79:
.LBB86:
	.loc 1 800 26
	li	s5,65536
.LBE86:
.LBB93:
	li	s7,16
.LBE93:
.LBB94:
.LBB87:
.LBB88:
	.loc 1 419 15
	li	s4,536879104
.LBE88:
.LBE87:
	.loc 1 795 16
	li	s6,100
.LVL307:
	.loc 1 800 26
	addi	s5,s5,-1
.LVL308:
.L196:
	.loc 1 793 9 is_stmt 1
	.loc 1 793 22 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL309:
	mv	s8,a0
	mv	s9,a1
.LVL310:
	.loc 1 794 9 is_stmt 1
.L192:
	.loc 1 794 15
.LBB90:
.LBB89:
	.loc 1 419 5
	.loc 1 419 15 is_stmt 0
	lw	a5,0(s4)
.LVL311:
.LBE89:
.LBE90:
	.loc 1 794 15
	extu	a5,a5,16+6-1,16
	beq	a5,zero,.L195
	.loc 1 799 9 is_stmt 1
.LVL312:
.LBB91:
.LBB92:
	.loc 1 424 5
	.loc 1 424 80 is_stmt 0
	lw	a5,4(s4)
.LVL313:
.LBE92:
.LBE91:
	.loc 1 800 9 is_stmt 1
	.loc 1 792 5 is_stmt 0
	addi	s7,s7,-1
.LVL314:
	.loc 1 800 26
	and	a5,a5,s5
.LVL315:
	.loc 1 800 13
	add	s1,s1,a5
.LVL316:
	.loc 1 792 34 is_stmt 1
	.loc 1 792 26
	.loc 1 792 5 is_stmt 0
	bne	s7,zero,.L196
.LBE94:
	.loc 1 802 5 is_stmt 1
	mv	a0,s2
	call	qcc74x_adc_stop_conversion
.LVL317:
	.loc 1 803 5
	.loc 1 805 5
	.loc 1 805 12 is_stmt 0
	lw	a5,0(s4)
.LVL318:
	.loc 1 806 5 is_stmt 1
	.loc 1 810 12 is_stmt 0
	li	a4,-2147483648
	.loc 1 814 5
	mv	a0,s2
	.loc 1 806 12
	ori	a5,a5,2
.LVL319:
	.loc 1 807 5 is_stmt 1
	.loc 1 807 72 is_stmt 0
	sw	a5,0(s4)
	.loc 1 809 5 is_stmt 1
	.loc 1 809 12 is_stmt 0
	lrw	a5,s3,s0,0
.LVL320:
	.loc 1 810 5 is_stmt 1
.LBB95:
	.loc 1 818 16 is_stmt 0
	li	s6,100
.LBE95:
	.loc 1 810 12
	or	a5,a5,a4
.LVL321:
	.loc 1 811 5 is_stmt 1
	.loc 1 811 60 is_stmt 0
	srw	a5,s3,s0,0
	.loc 1 813 5 is_stmt 1
.LVL322:
	.loc 1 814 5
	call	qcc74x_adc_start_conversion
.LVL323:
	.loc 1 815 5
.LBB102:
	.loc 1 815 10
	.loc 1 815 26
.LBE102:
	.loc 1 814 5 is_stmt 0
	li	s0,8
.LBB103:
.LBB96:
.LBB97:
	.loc 1 419 15
	li	s3,536879104
.LVL324:
.L200:
.LBE97:
.LBE96:
	.loc 1 816 9 is_stmt 1
	.loc 1 816 22 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL325:
	mv	s4,a0
	mv	s5,a1
.LVL326:
	.loc 1 817 9 is_stmt 1
.L197:
	.loc 1 817 15
.LBB99:
.LBB98:
	.loc 1 419 5
	.loc 1 419 15 is_stmt 0
	lw	a5,0(s3)
.LVL327:
.LBE98:
.LBE99:
	.loc 1 817 15
	extu	a5,a5,16+6-1,16
	beq	a5,zero,.L199
	.loc 1 822 9 is_stmt 1
.LVL328:
.LBB100:
.LBB101:
	.loc 1 424 5
	.loc 1 424 80 is_stmt 0
	lw	a5,4(s3)
.LVL329:
.LBE101:
.LBE100:
	.loc 1 815 33 is_stmt 1
	.loc 1 815 26
	.loc 1 815 5 is_stmt 0
	addi	s0,s0,-1
.LVL330:
	bne	s0,zero,.L200
.LBE103:
.LBB104:
	.loc 1 832 26
	li	s3,65536
.LBE104:
.LBB111:
	li	s6,16
.LBE111:
.LBB112:
.LBB105:
.LBB106:
	.loc 1 419 15
	li	s4,536879104
.LVL331:
.LBE106:
.LBE105:
	.loc 1 827 16
	li	s5,100
	.loc 1 832 26
	addi	s3,s3,-1
.LVL332:
.L204:
	.loc 1 825 9 is_stmt 1
	.loc 1 825 22 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL333:
	mv	s8,a0
	mv	s9,a1
.LVL334:
	.loc 1 826 9 is_stmt 1
.L201:
	.loc 1 826 15
.LBB108:
.LBB107:
	.loc 1 419 5
	.loc 1 419 15 is_stmt 0
	lw	a5,0(s4)
.LVL335:
.LBE107:
.LBE108:
	.loc 1 826 15
	extu	a5,a5,16+6-1,16
	beq	a5,zero,.L203
	.loc 1 831 9 is_stmt 1
.LVL336:
.LBB109:
.LBB110:
	.loc 1 424 5
	.loc 1 424 80 is_stmt 0
	lw	a5,4(s4)
.LVL337:
.LBE110:
.LBE109:
	.loc 1 832 9 is_stmt 1
	.loc 1 824 5 is_stmt 0
	addi	s6,s6,-1
.LVL338:
	.loc 1 832 26
	and	a5,a5,s3
.LVL339:
	.loc 1 832 13
	add	s0,s0,a5
.LVL340:
	.loc 1 824 34 is_stmt 1
	.loc 1 824 26
	.loc 1 824 5 is_stmt 0
	bne	s6,zero,.L204
.LBE112:
	.loc 1 834 5
	mv	a0,s2
	call	qcc74x_adc_stop_conversion
.LVL341:
	lui	a5,%hi(.LANCHOR6)
	addi	a5,a5,%lo(.LANCHOR6)
	.loc 1 803 15
	addi	s1,s1,8
.LVL342:
	.loc 1 835 15
	addi	s0,s0,8
.LVL343:
	.loc 1 838 43
	lw	a5,0(a5)
	.loc 1 803 8
	srli	s1,s1,4
.LVL344:
	.loc 1 834 5 is_stmt 1
	.loc 1 835 5
	.loc 1 835 8 is_stmt 0
	srli	s0,s0,4
.LVL345:
	.loc 1 837 5 is_stmt 1
	fcvt.s.w	fa5,s1
	fcvt.s.w	fa0,s0
	lui	a4,%hi(.LC3)
	.loc 1 837 8 is_stmt 0
	bleu	s1,s0,.L205
	.loc 1 838 9 is_stmt 1
	.loc 1 838 28 is_stmt 0
	fsub.s	fa0,fa5,fa0
	.loc 1 838 43
	fcvt.s.wu	fa5,a5
	.loc 1 838 41
	fsub.s	fa5,fa0,fa5
	.loc 1 838 14
	flw	fa0,%lo(.LC3)(a4)
	fdiv.s	fa0,fa5,fa0
.LVL346:
	j	.L186
.LVL347:
.L190:
.LBB113:
	.loc 1 786 13 is_stmt 1
	.loc 1 786 18 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL348:
	.loc 1 786 46
	sub64	a0,a0,s6
	.loc 1 786 16
	bne	a1,zero,.L193
	bgeu	s5,a0,.L187
.LVL349:
.L193:
	.loc 1 787 24
	lui	a5,%hi(.LC2)
	flw	fa0,%lo(.LC2)(a5)
.LVL350:
.L186:
.LBE113:
	.loc 1 844 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL351:
	lw	s3,28(sp)
	.cfi_restore 19
	lw	s4,24(sp)
	.cfi_restore 20
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	lw	s7,12(sp)
	.cfi_restore 23
	lw	s8,8(sp)
	.cfi_restore 24
	lw	s9,4(sp)
	.cfi_restore 25
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL352:
.L195:
	.cfi_restore_state
.LBB114:
	.loc 1 795 13 is_stmt 1
	.loc 1 795 18 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL353:
	.loc 1 795 46
	sub64	a0,a0,s8
	.loc 1 795 16
	bne	a1,zero,.L193
	bgeu	s6,a0,.L192
	j	.L193
.LVL354:
.L199:
.LBE114:
.LBB115:
	.loc 1 818 13 is_stmt 1
	.loc 1 818 18 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL355:
	.loc 1 818 46
	sub64	a0,a0,s4
	.loc 1 818 16
	bne	a1,zero,.L193
	bgeu	s6,a0,.L197
	j	.L193
.LVL356:
.L203:
.LBE115:
.LBB116:
	.loc 1 827 13 is_stmt 1
	.loc 1 827 18 is_stmt 0
	call	qcc74x_mtimer_get_time_ms
.LVL357:
	.loc 1 827 46
	sub64	a0,a0,s8
	.loc 1 827 16
	bne	a1,zero,.L193
	bgeu	s5,a0,.L201
	j	.L193
.LVL358:
.L205:
.LBE116:
	.loc 1 840 9 is_stmt 1
	.loc 1 840 28 is_stmt 0
	fsub.s	fa0,fa0,fa5
	.loc 1 840 43
	fcvt.s.wu	fa5,a5
	.loc 1 840 41
	fsub.s	fa0,fa0,fa5
	.loc 1 840 14
	flw	fa5,%lo(.LC3)(a4)
	fdiv.s	fa0,fa0,fa5
.LVL359:
	j	.L186
	.cfi_endproc
.LFE22:
	.size	qcc74x_adc_tsen_get_temp, .-qcc74x_adc_tsen_get_temp
	.section	.text.qcc74x_adc_vbat_enable,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_vbat_enable
	.type	qcc74x_adc_vbat_enable, @function
qcc74x_adc_vbat_enable:
.LFB23:
	.loc 1 847 1 is_stmt 1
	.cfi_startproc
.LVL360:
	.loc 1 848 5
	.loc 1 849 5
	.loc 1 851 5
	.loc 1 853 5
	.loc 1 853 58 is_stmt 0
	lw	a3,4(a0)
	li	a5,4096
	addi	a5,a5,-1772
	.loc 1 853 12
	lrw	a4,a3,a5,0
.LVL361:
	.loc 1 854 5 is_stmt 1
	.loc 1 854 12 is_stmt 0
	ori	a4,a4,16
.LVL362:
	.loc 1 855 5 is_stmt 1
	.loc 1 855 60 is_stmt 0
	srw	a4,a3,a5,0
.LVL363:
	.loc 1 856 1
	ret
	.cfi_endproc
.LFE23:
	.size	qcc74x_adc_vbat_enable, .-qcc74x_adc_vbat_enable
	.section	.text.qcc74x_adc_vbat_disable,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_vbat_disable
	.type	qcc74x_adc_vbat_disable, @function
qcc74x_adc_vbat_disable:
.LFB24:
	.loc 1 859 1 is_stmt 1
	.cfi_startproc
.LVL364:
	.loc 1 860 5
	.loc 1 861 5
	.loc 1 863 5
	.loc 1 865 5
	.loc 1 865 58 is_stmt 0
	lw	a3,4(a0)
	li	a5,4096
	addi	a5,a5,-1772
	.loc 1 865 12
	lrw	a4,a3,a5,0
.LVL365:
	.loc 1 866 5 is_stmt 1
	.loc 1 866 12 is_stmt 0
	andi	a4,a4,-17
.LVL366:
	.loc 1 867 5 is_stmt 1
	.loc 1 867 60 is_stmt 0
	srw	a4,a3,a5,0
.LVL367:
	.loc 1 868 1
	ret
	.cfi_endproc
.LFE24:
	.size	qcc74x_adc_vbat_disable, .-qcc74x_adc_vbat_disable
	.section	.text.qcc74x_adc_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_adc_feature_control
	.type	qcc74x_adc_feature_control, @function
qcc74x_adc_feature_control:
.LFB25:
	.loc 1 871 1 is_stmt 1
	.cfi_startproc
.LVL368:
	.loc 1 875 5
	.loc 1 876 5
	.loc 1 877 5
	.loc 1 878 4
	.loc 1 880 5
	.loc 1 882 5
	beq	a1,zero,.L214
	li	a5,1
	beq	a1,a5,.L215
.LVL369:
.L222:
	.loc 1 917 17 is_stmt 0
	li	a1,-1
.LVL370:
	j	.L216
.LVL371:
.L214:
	.loc 1 885 13 is_stmt 1
	.loc 1 885 20 is_stmt 0
	li	a5,536879104
	lw	a4,0(a5)
.LVL372:
	.loc 1 886 13 is_stmt 1
	.loc 1 891 13
	.loc 1 891 20 is_stmt 0
	andi	a3,a4,-2
.LVL373:
	.loc 1 892 13 is_stmt 1
	.loc 1 892 80 is_stmt 0
	sw	a3,0(a5)
.LVL374:
	.loc 1 894 13 is_stmt 1
	.loc 1 894 20 is_stmt 0
	lw	a3,0(a5)
.LVL375:
	.loc 1 895 13 is_stmt 1
	.loc 1 900 16 is_stmt 0
	andi	a4,a4,1
.LVL376:
	.loc 1 895 20
	ori	a3,a3,2
.LVL377:
	.loc 1 896 13 is_stmt 1
	.loc 1 896 80 is_stmt 0
	sw	a3,0(a5)
	.loc 1 899 13 is_stmt 1
	.loc 1 899 20 is_stmt 0
	lw	a5,0(a5)
.LVL378:
	.loc 1 900 13 is_stmt 1
	.loc 1 900 16 is_stmt 0
	beq	a4,zero,.L217
	.loc 1 901 17 is_stmt 1
	.loc 1 901 24 is_stmt 0
	ori	a5,a5,1
.LVL379:
.L217:
	.loc 1 903 13 is_stmt 1
	.loc 1 903 80 is_stmt 0
	li	a4,536879104
	sw	a5,0(a4)
	.loc 1 904 13 is_stmt 1
.LVL380:
.L216:
	.loc 1 920 5
	.loc 1 922 1 is_stmt 0
	mv	a0,a1
.LVL381:
	ret
.LVL382:
.L215:
	.loc 1 907 13 is_stmt 1
	.loc 1 908 70 is_stmt 0
	lw	a4,4(a0)
	li	a5,4096
	addi	a5,a5,-1772
	.loc 1 908 24
	lrw	a3,a4,a5,0
	.loc 1 907 16
	beq	a2,zero,.L218
	.loc 1 908 17 is_stmt 1
.LVL383:
	.loc 1 909 17
	.loc 1 909 24 is_stmt 0
	ori	a3,a3,16
.LVL384:
	.loc 1 910 17 is_stmt 1
.L223:
	.loc 1 914 17
	.loc 1 914 72 is_stmt 0
	srw	a3,a4,a5,0
.LVL385:
	j	.L222
.LVL386:
.L218:
	.loc 1 912 17 is_stmt 1
	.loc 1 913 17
	.loc 1 913 24 is_stmt 0
	andi	a3,a3,-17
.LVL387:
	j	.L223
	.cfi_endproc
.LFE25:
	.size	qcc74x_adc_feature_control, .-qcc74x_adc_feature_control
	.globl	adc_cali_complete
	.globl	adc_reference_channel_millivolt
	.globl	adc_reference_channel
	.globl	tsen_offset
	.globl	os2
	.globl	os1
	.globl	coe
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC0:
	.word	1193279488
	.section	.rodata.cst8,"aM",@progbits,8
	.align	3
.LC1:
	.word	0
	.word	1073217536
	.section	.rodata.cst4
	.align	2
.LC2:
	.word	-1024983040
	.align	2
.LC3:
	.word	1090001043
	.section	.bss.adc_cali_complete,"aw",@nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	adc_cali_complete, @object
	.size	adc_cali_complete, 4
adc_cali_complete:
	.zero	4
	.section	.bss.os1,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	os1, @object
	.size	os1, 4
os1:
	.zero	4
	.section	.bss.os2,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	os2, @object
	.size	os2, 4
os2:
	.zero	4
	.section	.bss.tsen_offset,"aw",@nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	tsen_offset, @object
	.size	tsen_offset, 4
tsen_offset:
	.zero	4
	.section	.data.adc_reference_channel,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	adc_reference_channel, @object
	.size	adc_reference_channel, 4
adc_reference_channel:
	.word	-1
	.section	.data.adc_reference_channel_millivolt,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	adc_reference_channel_millivolt, @object
	.size	adc_reference_channel_millivolt, 4
adc_reference_channel_millivolt:
	.word	-1
	.section	.data.coe,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	coe, @object
	.size	coe, 4
coe:
	.word	1065353216
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_adc.h"
	.file 7 "./drivers/lhal/include/qcc74x_mtimer.h"
	.file 8 "./drivers/lhal/include/qcc74x_efuse.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xfaf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF104
	.byte	0xc
	.4byte	.LASF105
	.4byte	.LASF106
	.4byte	.Ldebug_ranges0+0x200
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF0
	.byte	0x2
	.byte	0x29
	.byte	0x15
	.4byte	0x31
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF2
	.byte	0x2
	.4byte	.LASF1
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x44
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x5e
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x71
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x84
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF12
	.byte	0x2
	.byte	0x69
	.byte	0x20
	.4byte	0x9e
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x5
	.4byte	0xa5
	.byte	0x2
	.4byte	.LASF14
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0xbd
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.byte	0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x38
	.byte	0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x52
	.byte	0x2
	.4byte	.LASF19
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x65
	.byte	0x5
	.4byte	0xe8
	.byte	0x2
	.4byte	.LASF20
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x78
	.byte	0x5
	.4byte	0xf9
	.byte	0x2
	.4byte	.LASF21
	.byte	0x3
	.byte	0x3c
	.byte	0x14
	.4byte	0x92
	.byte	0x2
	.4byte	.LASF22
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0xb1
	.byte	0x2
	.4byte	.LASF23
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0xbd
	.byte	0x6
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.byte	0x7
	.4byte	0x130
	.byte	0x8
	.byte	0x4
	.4byte	0x137
	.byte	0x9
	.4byte	.LASF31
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x1ab
	.byte	0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0x13c
	.byte	0
	.byte	0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xf9
	.byte	0x4
	.byte	0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0xd0
	.byte	0x8
	.byte	0xb
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0xd0
	.byte	0x9
	.byte	0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0xd0
	.byte	0xa
	.byte	0xa
	.4byte	.LASF29
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0xd0
	.byte	0xb
	.byte	0xa
	.4byte	.LASF30
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0x12e
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0x6
	.byte	0x8d
	.byte	0x8
	.4byte	0x207
	.byte	0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0x8e
	.byte	0xd
	.4byte	0xd0
	.byte	0
	.byte	0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0x8f
	.byte	0xd
	.4byte	0xd0
	.byte	0x1
	.byte	0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0x90
	.byte	0xd
	.4byte	0xd0
	.byte	0x2
	.byte	0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0x91
	.byte	0xd
	.4byte	0xd0
	.byte	0x3
	.byte	0xa
	.4byte	.LASF37
	.byte	0x6
	.byte	0x92
	.byte	0xd
	.4byte	0xd0
	.byte	0x4
	.byte	0xa
	.4byte	.LASF38
	.byte	0x6
	.byte	0x93
	.byte	0xd
	.4byte	0xd0
	.byte	0x5
	.byte	0
	.byte	0x7
	.4byte	0x1ab
	.byte	0x9
	.4byte	.LASF39
	.byte	0x2
	.byte	0x6
	.byte	0x9c
	.byte	0x8
	.4byte	0x234
	.byte	0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0x9d
	.byte	0xd
	.4byte	0xd0
	.byte	0
	.byte	0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0x9e
	.byte	0xd
	.4byte	0xd0
	.byte	0x1
	.byte	0
	.byte	0x9
	.4byte	.LASF42
	.byte	0xc
	.byte	0x6
	.byte	0xa9
	.byte	0x8
	.4byte	0x276
	.byte	0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0xaa
	.byte	0xc
	.4byte	0xc4
	.byte	0
	.byte	0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0xab
	.byte	0xc
	.4byte	0xc4
	.byte	0x1
	.byte	0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0xac
	.byte	0xd
	.4byte	0xe8
	.byte	0x4
	.byte	0xa
	.4byte	.LASF44
	.byte	0x6
	.byte	0xad
	.byte	0xd
	.4byte	0xe8
	.byte	0x8
	.byte	0
	.byte	0xc
	.string	"coe"
	.byte	0x1
	.byte	0xb
	.byte	0x10
	.4byte	0x28f
	.byte	0x5
	.byte	0x3
	.4byte	coe
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF45
	.byte	0x5
	.4byte	0x288
	.byte	0xc
	.string	"os1"
	.byte	0x1
	.byte	0xc
	.byte	0x13
	.4byte	0x105
	.byte	0x5
	.byte	0x3
	.4byte	os1
	.byte	0xc
	.string	"os2"
	.byte	0x1
	.byte	0xd
	.byte	0xe
	.4byte	0xac
	.byte	0x5
	.byte	0x3
	.4byte	os2
	.byte	0xd
	.4byte	.LASF46
	.byte	0x1
	.byte	0xe
	.byte	0x13
	.4byte	0x105
	.byte	0x5
	.byte	0x3
	.4byte	tsen_offset
	.byte	0xd
	.4byte	.LASF47
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0xac
	.byte	0x5
	.byte	0x3
	.4byte	adc_reference_channel
	.byte	0xd
	.4byte	.LASF48
	.byte	0x1
	.byte	0x10
	.byte	0x12
	.4byte	0xf4
	.byte	0x5
	.byte	0x3
	.4byte	adc_reference_channel_millivolt
	.byte	0xd
	.4byte	.LASF49
	.byte	0x1
	.byte	0x11
	.byte	0xe
	.4byte	0xac
	.byte	0x5
	.byte	0x3
	.4byte	adc_cali_complete
	.byte	0xe
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x366
	.byte	0x5
	.4byte	0xa5
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x391
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x366
	.byte	0x38
	.4byte	0x391
	.4byte	.LLST86
	.byte	0xf
	.string	"cmd"
	.byte	0x1
	.2byte	0x366
	.byte	0x41
	.4byte	0xa5
	.4byte	.LLST87
	.byte	0x10
	.string	"arg"
	.byte	0x1
	.2byte	0x366
	.byte	0x4d
	.4byte	0x122
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.2byte	0x36b
	.byte	0x9
	.4byte	0xa5
	.4byte	.LLST88
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x36c
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST89
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x36d
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST90
	.byte	0x12
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x36e
	.byte	0x9
	.4byte	0x397
	.4byte	.LLST91
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x142
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF52
	.byte	0x13
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x35a
	.byte	0x6
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x3e5
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x35a
	.byte	0x36
	.4byte	0x391
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x35c
	.byte	0xe
	.4byte	0xf9
	.byte	0x1
	.byte	0x5e
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x35d
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST85
	.byte	0
	.byte	0x13
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x34e
	.byte	0x6
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x42c
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x34e
	.byte	0x35
	.4byte	0x391
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x350
	.byte	0xe
	.4byte	0xf9
	.byte	0x1
	.byte	0x5e
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x351
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST84
	.byte	0
	.byte	0xe
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x2f8
	.byte	0x7
	.4byte	0x288
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x6cf
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x2f8
	.byte	0x38
	.4byte	0x391
	.4byte	.LLST63
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x2fa
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST64
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x2fb
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST65
	.byte	0x11
	.string	"v0"
	.byte	0x1
	.2byte	0x2fc
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST66
	.byte	0x11
	.string	"v1"
	.byte	0x1
	.2byte	0x2fc
	.byte	0x16
	.4byte	0xf9
	.4byte	.LLST67
	.byte	0x12
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x2fd
	.byte	0xb
	.4byte	0x288
	.4byte	.LLST68
	.byte	0x12
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x2fe
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST69
	.byte	0x12
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x2ff
	.byte	0xe
	.4byte	0x10a
	.4byte	.LLST70
	.byte	0x11
	.string	"sum"
	.byte	0x1
	.2byte	0x300
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST71
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x110
	.4byte	0x547
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x30f
	.byte	0x13
	.4byte	0xf9
	.4byte	.LLST72
	.byte	0x16
	.4byte	0xaa8
	.4byte	.LBB80
	.4byte	.Ldebug_ranges0+0x130
	.byte	0x1
	.2byte	0x311
	.byte	0x10
	.4byte	0x515
	.byte	0x17
	.4byte	0xaba
	.4byte	.LLST73
	.byte	0
	.byte	0x18
	.4byte	0xa88
	.4byte	.LBB84
	.4byte	.LBE84-.LBB84
	.byte	0x1
	.2byte	0x316
	.byte	0x9
	.4byte	0x534
	.byte	0x17
	.4byte	0xa9a
	.4byte	.LLST74
	.byte	0
	.byte	0x19
	.4byte	.LVL301
	.4byte	0xf40
	.byte	0x19
	.4byte	.LVL348
	.4byte	0xf40
	.byte	0
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x148
	.4byte	0x5b0
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x318
	.byte	0x13
	.4byte	0xf9
	.4byte	.LLST75
	.byte	0x16
	.4byte	0xaa8
	.4byte	.LBB87
	.4byte	.Ldebug_ranges0+0x168
	.byte	0x1
	.2byte	0x31a
	.byte	0x10
	.4byte	0x57e
	.byte	0x17
	.4byte	0xaba
	.4byte	.LLST76
	.byte	0
	.byte	0x18
	.4byte	0xa88
	.4byte	.LBB91
	.4byte	.LBE91-.LBB91
	.byte	0x1
	.2byte	0x31f
	.byte	0x14
	.4byte	0x59d
	.byte	0x17
	.4byte	0xa9a
	.4byte	.LLST77
	.byte	0
	.byte	0x19
	.4byte	.LVL309
	.4byte	0xf40
	.byte	0x19
	.4byte	.LVL353
	.4byte	0xf40
	.byte	0
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x180
	.4byte	0x619
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x32f
	.byte	0x13
	.4byte	0xf9
	.4byte	.LLST78
	.byte	0x16
	.4byte	0xaa8
	.4byte	.LBB96
	.4byte	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.2byte	0x331
	.byte	0x10
	.4byte	0x5e7
	.byte	0x17
	.4byte	0xaba
	.4byte	.LLST79
	.byte	0
	.byte	0x18
	.4byte	0xa88
	.4byte	.LBB100
	.4byte	.LBE100-.LBB100
	.byte	0x1
	.2byte	0x336
	.byte	0x9
	.4byte	0x606
	.byte	0x17
	.4byte	0xa9a
	.4byte	.LLST80
	.byte	0
	.byte	0x19
	.4byte	.LVL325
	.4byte	0xf40
	.byte	0x19
	.4byte	.LVL355
	.4byte	0xf40
	.byte	0
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x1c8
	.4byte	0x682
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x338
	.byte	0x13
	.4byte	0xf9
	.4byte	.LLST81
	.byte	0x16
	.4byte	0xaa8
	.4byte	.LBB105
	.4byte	.Ldebug_ranges0+0x1e8
	.byte	0x1
	.2byte	0x33a
	.byte	0x10
	.4byte	0x650
	.byte	0x17
	.4byte	0xaba
	.4byte	.LLST82
	.byte	0
	.byte	0x18
	.4byte	0xa88
	.4byte	.LBB109
	.4byte	.LBE109-.LBB109
	.byte	0x1
	.2byte	0x33f
	.byte	0x14
	.4byte	0x66f
	.byte	0x17
	.4byte	0xa9a
	.4byte	.LLST83
	.byte	0
	.byte	0x19
	.4byte	.LVL333
	.4byte	0xf40
	.byte	0x19
	.4byte	.LVL357
	.4byte	0xf40
	.byte	0
	.byte	0x1a
	.4byte	.LVL299
	.4byte	0xb0f
	.4byte	0x696
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL317
	.4byte	0xac8
	.4byte	0x6aa
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL323
	.4byte	0xb0f
	.4byte	0x6be
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL341
	.4byte	0xac8
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x2d0
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x729
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x2d0
	.byte	0x33
	.4byte	0x391
	.4byte	.LLST60
	.byte	0x1d
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x2d0
	.byte	0x40
	.4byte	0xd0
	.4byte	.LLST61
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x2d2
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST62
	.byte	0x14
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x2d3
	.byte	0xe
	.4byte	0xf9
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x13
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x24f
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x8dc
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x24f
	.byte	0x36
	.4byte	0x391
	.4byte	.LLST41
	.byte	0x1d
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x24f
	.byte	0x45
	.4byte	0x8dc
	.4byte	.LLST42
	.byte	0x1d
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x24f
	.byte	0x69
	.4byte	0x8e2
	.4byte	.LLST43
	.byte	0x1d
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x24f
	.byte	0x7a
	.4byte	0xdc
	.4byte	.LLST44
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x251
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST45
	.byte	0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x252
	.byte	0xd
	.4byte	0xd0
	.4byte	.LLST46
	.byte	0x12
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x253
	.byte	0xd
	.4byte	0xd0
	.4byte	.LLST47
	.byte	0x1e
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x254
	.byte	0xd
	.4byte	0xd0
	.byte	0x12
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x255
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST48
	.byte	0x11
	.string	"ref"
	.byte	0x1
	.2byte	0x256
	.byte	0xe
	.4byte	0xdc
	.4byte	.LLST49
	.byte	0x11
	.string	"neg"
	.byte	0x1
	.2byte	0x257
	.byte	0xd
	.4byte	0xd0
	.4byte	.LLST50
	.byte	0x11
	.string	"tmp"
	.byte	0x1
	.2byte	0x258
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST51
	.byte	0x12
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x259
	.byte	0xd
	.4byte	0xe8
	.4byte	.LLST52
	.byte	0x15
	.4byte	.Ldebug_ranges0+0xa0
	.4byte	0x832
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x268
	.byte	0x17
	.4byte	0xdc
	.4byte	.LLST54
	.byte	0
	.byte	0x15
	.4byte	.Ldebug_ranges0+0xc8
	.4byte	0x8c6
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x281
	.byte	0x17
	.4byte	0xdc
	.4byte	.LLST55
	.byte	0x1f
	.4byte	0x8e8
	.4byte	.LBB65
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x1
	.2byte	0x286
	.byte	0x1f
	.byte	0x17
	.4byte	0x914
	.4byte	.LLST56
	.byte	0x17
	.4byte	0x907
	.4byte	.LLST57
	.byte	0x17
	.4byte	0x8fa
	.4byte	.LLST58
	.byte	0x20
	.4byte	.Ldebug_ranges0+0xe8
	.byte	0x21
	.4byte	0x921
	.4byte	.LLST59
	.byte	0x19
	.4byte	.LVL258
	.4byte	0xf4c
	.byte	0x19
	.4byte	.LVL259
	.4byte	0xf4c
	.byte	0x19
	.4byte	.LVL260
	.4byte	0xf55
	.byte	0x19
	.4byte	.LVL261
	.4byte	0xf5e
	.byte	0x19
	.4byte	.LVL262
	.4byte	0xf67
	.byte	0x19
	.4byte	.LVL263
	.4byte	0xf70
	.byte	0x19
	.4byte	.LVL264
	.4byte	0xf79
	.byte	0
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x2a4
	.byte	0x17
	.4byte	0xdc
	.4byte	.LLST53
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0xf9
	.byte	0x8
	.byte	0x4
	.4byte	0x234
	.byte	0x22
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x235
	.byte	0x11
	.4byte	0xf9
	.byte	0x1
	.4byte	0x92f
	.byte	0x23
	.string	"os1"
	.byte	0x1
	.2byte	0x235
	.byte	0x30
	.4byte	0xf9
	.byte	0x23
	.string	"os2"
	.byte	0x1
	.2byte	0x235
	.byte	0x39
	.4byte	0xa5
	.byte	0x23
	.string	"val"
	.byte	0x1
	.2byte	0x235
	.byte	0x47
	.4byte	0xf9
	.byte	0x1e
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x237
	.byte	0x9
	.4byte	0xa5
	.byte	0
	.byte	0x13
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1eb
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x989
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x1eb
	.byte	0x33
	.4byte	0x391
	.byte	0x1
	.byte	0x5a
	.byte	0x1d
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1eb
	.byte	0x41
	.4byte	0xf9
	.4byte	.LLST38
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1ed
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST39
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x1ee
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST40
	.byte	0
	.byte	0xe
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1d2
	.byte	0xa
	.4byte	0xf9
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x9d8
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x1d2
	.byte	0x3b
	.4byte	0x391
	.4byte	.LLST35
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x1d4
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST36
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1d5
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST37
	.byte	0
	.byte	0x13
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1b8
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0xa43
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x1b8
	.byte	0x35
	.4byte	0x391
	.4byte	.LLST31
	.byte	0x24
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1b8
	.byte	0x3e
	.4byte	0x397
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1ba
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST32
	.byte	0x12
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1bb
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST33
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x1bc
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST34
	.byte	0
	.byte	0x13
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1ab
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0xa88
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x1ab
	.byte	0x34
	.4byte	0x391
	.byte	0x1
	.byte	0x5a
	.byte	0x24
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1ab
	.byte	0x3d
	.4byte	0x397
	.byte	0x1
	.byte	0x5b
	.byte	0x14
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1ad
	.byte	0xe
	.4byte	0xf9
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x25
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1a6
	.byte	0xa
	.4byte	0xf9
	.byte	0x1
	.4byte	0xaa8
	.byte	0x23
	.string	"dev"
	.byte	0x1
	.2byte	0x1a6
	.byte	0x36
	.4byte	0x391
	.byte	0
	.byte	0x25
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1a1
	.byte	0x9
	.4byte	0xd0
	.byte	0x1
	.4byte	0xac8
	.byte	0x23
	.string	"dev"
	.byte	0x1
	.2byte	0x1a1
	.byte	0x36
	.4byte	0x391
	.byte	0
	.byte	0x13
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x196
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xb0f
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x196
	.byte	0x39
	.4byte	0x391
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x198
	.byte	0xe
	.4byte	0xf9
	.byte	0x1
	.byte	0x5e
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x199
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST12
	.byte	0
	.byte	0x13
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x184
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0xb6a
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x184
	.byte	0x3a
	.4byte	0x391
	.4byte	.LLST9
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x186
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST10
	.byte	0x12
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x187
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST11
	.byte	0x1c
	.4byte	.LVL46
	.4byte	0xf82
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x148
	.byte	0x5
	.4byte	0xa5
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xc35
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x148
	.byte	0x37
	.4byte	0x391
	.4byte	.LLST1
	.byte	0x1d
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x148
	.byte	0x59
	.4byte	0xc35
	.4byte	.LLST2
	.byte	0x1d
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x148
	.byte	0x67
	.4byte	0xd0
	.4byte	.LLST3
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x14a
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x14b
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x14c
	.byte	0xe
	.4byte	0xf9
	.byte	0x1
	.byte	0x5f
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0xc02
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x162
	.byte	0x1a
	.4byte	0xd0
	.4byte	.LLST8
	.byte	0
	.byte	0x26
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.4byte	0xc1f
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x16b
	.byte	0x1a
	.4byte	0xd0
	.4byte	.LLST6
	.byte	0
	.byte	0x20
	.4byte	.Ldebug_ranges0+0
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x174
	.byte	0x1a
	.4byte	0xd0
	.4byte	.LLST7
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x20c
	.byte	0x13
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x142
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xc71
	.byte	0x24
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x142
	.byte	0x2b
	.4byte	0xa5
	.byte	0x1
	.byte	0x5a
	.byte	0x24
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x142
	.byte	0x3c
	.4byte	0xe8
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x13
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x135
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xcb8
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x135
	.byte	0x34
	.4byte	0x391
	.byte	0x1
	.byte	0x5a
	.byte	0x24
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x135
	.byte	0x3d
	.4byte	0x397
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x137
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST0
	.byte	0
	.byte	0x13
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x12a
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xcee
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x12a
	.byte	0x30
	.4byte	0x391
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x12c
	.byte	0xe
	.4byte	0xf9
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x27
	.4byte	.LASF89
	.byte	0x1
	.byte	0xa8
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xe7b
	.byte	0x28
	.string	"dev"
	.byte	0x1
	.byte	0xa8
	.byte	0x35
	.4byte	0x391
	.4byte	.LLST13
	.byte	0x29
	.4byte	.LASF90
	.byte	0x1
	.byte	0xa8
	.byte	0x5c
	.4byte	0xe7b
	.4byte	.LLST14
	.byte	0x2a
	.4byte	.LASF50
	.byte	0x1
	.byte	0xaa
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST15
	.byte	0x2a
	.4byte	.LASF26
	.byte	0x1
	.byte	0xab
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST16
	.byte	0x2a
	.4byte	.LASF91
	.byte	0x1
	.byte	0xac
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST17
	.byte	0x2b
	.string	"neg"
	.byte	0x1
	.byte	0xad
	.byte	0xd
	.4byte	0xd0
	.4byte	.LLST18
	.byte	0x15
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0xdb4
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.byte	0xc5
	.byte	0x13
	.4byte	0xdc
	.4byte	.LLST19
	.byte	0x2c
	.4byte	0xa88
	.4byte	.LBB40
	.4byte	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0xcb
	.byte	0x12
	.4byte	0xd99
	.byte	0x17
	.4byte	0xa9a
	.4byte	.LLST20
	.byte	0
	.byte	0x2d
	.4byte	0xaa8
	.4byte	.LBB46
	.4byte	.LBE46-.LBB46
	.byte	0x1
	.byte	0xca
	.byte	0x10
	.byte	0x17
	.4byte	0xaba
	.4byte	.LLST21
	.byte	0
	.byte	0
	.byte	0x26
	.4byte	.LBB51
	.4byte	.LBE51-.LBB51
	.4byte	0xe08
	.byte	0x2b
	.string	"i"
	.byte	0x1
	.byte	0xf3
	.byte	0x13
	.4byte	0xdc
	.4byte	.LLST22
	.byte	0x2e
	.4byte	0xaa8
	.4byte	.LBB52
	.4byte	.LBE52-.LBB52
	.byte	0x1
	.byte	0xf8
	.byte	0x10
	.4byte	0xded
	.byte	0x17
	.4byte	0xaba
	.4byte	.LLST23
	.byte	0
	.byte	0x2d
	.4byte	0xa88
	.4byte	.LBB54
	.4byte	.LBE54-.LBB54
	.byte	0x1
	.byte	0xf9
	.byte	0x12
	.byte	0x17
	.4byte	0xa9a
	.4byte	.LLST24
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL63
	.4byte	0xb0f
	.4byte	0xe1c
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL78
	.4byte	0xac8
	.4byte	0xe30
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL79
	.4byte	0xf8e
	.4byte	0xe43
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0x1a
	.4byte	.LVL89
	.4byte	0xb0f
	.4byte	0xe57
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL101
	.4byte	0xac8
	.4byte	0xe6b
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x86
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	.LVL102
	.4byte	0xf8e
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x207
	.byte	0x27
	.4byte	.LASF92
	.byte	0x1
	.byte	0x13
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xf06
	.byte	0x28
	.string	"dev"
	.byte	0x1
	.byte	0x13
	.byte	0x2e
	.4byte	0x391
	.4byte	.LLST25
	.byte	0x29
	.4byte	.LASF90
	.byte	0x1
	.byte	0x13
	.byte	0x55
	.4byte	0xe7b
	.4byte	.LLST26
	.byte	0x2a
	.4byte	.LASF50
	.byte	0x1
	.byte	0x15
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST27
	.byte	0x2a
	.4byte	.LASF26
	.byte	0x1
	.byte	0x16
	.byte	0xe
	.4byte	0xf9
	.4byte	.LLST28
	.byte	0x19
	.4byte	.LVL152
	.4byte	0xf9a
	.byte	0x1a
	.4byte	.LVL153
	.4byte	0xcee
	.4byte	0xefc
	.byte	0x1b
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x68
	.byte	0x6
	.byte	0x1b
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x19
	.4byte	.LVL154
	.4byte	0xfa6
	.byte	0
	.byte	0x2f
	.4byte	0xaa8
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0xf23
	.byte	0x17
	.4byte	0xaba
	.4byte	.LLST29
	.byte	0
	.byte	0x2f
	.4byte	0xa88
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0xf40
	.byte	0x17
	.4byte	0xa9a
	.4byte	.LLST30
	.byte	0
	.byte	0x30
	.4byte	.LASF99
	.4byte	.LASF99
	.byte	0x7
	.byte	0x3c
	.byte	0xa
	.byte	0x31
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x31
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x31
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0x31
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0x31
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x31
	.4byte	.LASF98
	.4byte	.LASF98
	.byte	0x30
	.4byte	.LASF100
	.4byte	.LASF100
	.byte	0x7
	.byte	0x2e
	.byte	0x6
	.byte	0x30
	.4byte	.LASF101
	.4byte	.LASF101
	.byte	0x7
	.byte	0x27
	.byte	0x6
	.byte	0x30
	.4byte	.LASF102
	.4byte	.LASF102
	.byte	0x8
	.byte	0x69
	.byte	0x7
	.byte	0x30
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x8
	.byte	0x73
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
	.byte	0x3
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
	.byte	0x35
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x3f
	.byte	0x19
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x5
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x2
	.byte	0x17
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x2f
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
	.byte	0x30
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
	.byte	0x31
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
.LLST86:
	.4byte	.LVL368
	.4byte	.LVL381
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL381
	.4byte	.LVL382
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL382
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST87:
	.4byte	.LVL368
	.4byte	.LVL370
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL370
	.4byte	.LVL371
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL371
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL380
	.4byte	.LVL382
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL382
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL368
	.4byte	.LVL380
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL380
	.4byte	.LVL382
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL382
	.4byte	.LFE25
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL372
	.4byte	.LVL373
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL373
	.4byte	.LVL378
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL378
	.4byte	.LVL380
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL383
	.4byte	.LVL387
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL368
	.4byte	.LVL369
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL371
	.4byte	.LVL374
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL382
	.4byte	.LVL385
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL386
	.4byte	.LFE25
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST91:
	.4byte	.LVL372
	.4byte	.LVL376
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL364
	.4byte	.LVL367
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL367
	.4byte	.LFE24
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL360
	.4byte	.LVL363
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL363
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL293
	.4byte	.LVL299-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL299-1
	.4byte	.LVL351
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL351
	.4byte	.LVL352
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL352
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL294
	.4byte	.LVL299-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL318
	.4byte	.LVL323-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL294
	.4byte	.LVL324
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL347
	.4byte	.LVL349
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL352
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL293
	.4byte	.LVL317
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL317
	.4byte	.LVL342
	.2byte	0x5
	.byte	0x79
	.byte	0x8
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL342
	.4byte	.LVL344
	.2byte	0x5
	.byte	0x79
	.byte	0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL347
	.4byte	.LVL349
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL352
	.4byte	.LVL354
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL354
	.4byte	.LVL358
	.2byte	0x5
	.byte	0x79
	.byte	0x8
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL293
	.4byte	.LVL345
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL345
	.4byte	.LVL347
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL347
	.4byte	.LVL350
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL352
	.4byte	.LVL358
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL358
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL293
	.4byte	.LVL346
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL346
	.4byte	.LVL347
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL347
	.4byte	.LVL350
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	.LVL352
	.4byte	.LVL359
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL313
	.4byte	.LVL315
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL337
	.4byte	.LVL339
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL302
	.4byte	.LVL307
	.2byte	0x6
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	.LVL310
	.4byte	.LVL324
	.2byte	0x6
	.byte	0x68
	.byte	0x93
	.byte	0x4
	.byte	0x69
	.byte	0x93
	.byte	0x4
	.4byte	.LVL326
	.4byte	.LVL331
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	.LVL334
	.4byte	.LVL347
	.2byte	0x6
	.byte	0x68
	.byte	0x93
	.byte	0x4
	.byte	0x69
	.byte	0x93
	.byte	0x4
	.4byte	.LVL347
	.4byte	.LVL349
	.2byte	0x6
	.byte	0x66
	.byte	0x93
	.byte	0x4
	.byte	0x67
	.byte	0x93
	.byte	0x4
	.4byte	.LVL352
	.4byte	.LVL354
	.2byte	0x6
	.byte	0x68
	.byte	0x93
	.byte	0x4
	.byte	0x69
	.byte	0x93
	.byte	0x4
	.4byte	.LVL354
	.4byte	.LVL356
	.2byte	0x6
	.byte	0x64
	.byte	0x93
	.byte	0x4
	.byte	0x65
	.byte	0x93
	.byte	0x4
	.4byte	.LVL356
	.4byte	.LFE22
	.2byte	0x6
	.byte	0x68
	.byte	0x93
	.byte	0x4
	.byte	0x69
	.byte	0x93
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL298
	.4byte	.LVL308
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL308
	.4byte	.LVL322
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL322
	.4byte	.LVL332
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL332
	.4byte	.LVL343
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL343
	.4byte	.LVL345
	.2byte	0x3
	.byte	0x78
	.byte	0x78
	.byte	0x9f
	.4byte	.LVL347
	.4byte	.LVL349
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL352
	.4byte	.LVL354
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL354
	.4byte	.LVL356
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL356
	.4byte	.LVL358
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL299
	.4byte	.LVL300
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL300
	.4byte	.LVL305
	.2byte	0x5
	.byte	0x38
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL305
	.4byte	.LVL306
	.2byte	0x5
	.byte	0x39
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL306
	.4byte	.LVL308
	.2byte	0x5
	.byte	0x38
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL347
	.4byte	.LVL349
	.2byte	0x5
	.byte	0x38
	.byte	0x79
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL302
	.4byte	.LVL303
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL304
	.4byte	.LVL305
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL308
	.4byte	.LVL314
	.2byte	0x5
	.byte	0x40
	.byte	0x87
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL314
	.4byte	.LVL316
	.2byte	0x5
	.byte	0x3f
	.byte	0x87
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL352
	.4byte	.LVL354
	.2byte	0x5
	.byte	0x40
	.byte	0x87
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL310
	.4byte	.LVL311
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL312
	.4byte	.LVL313
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL323
	.4byte	.LVL324
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL324
	.4byte	.LVL329
	.2byte	0x5
	.byte	0x38
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL329
	.4byte	.LVL330
	.2byte	0x5
	.byte	0x39
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL330
	.4byte	.LVL332
	.2byte	0x5
	.byte	0x38
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL354
	.4byte	.LVL356
	.2byte	0x5
	.byte	0x38
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL326
	.4byte	.LVL327
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL328
	.4byte	.LVL329
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL332
	.4byte	.LVL338
	.2byte	0x5
	.byte	0x40
	.byte	0x86
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL338
	.4byte	.LVL340
	.2byte	0x5
	.byte	0x3f
	.byte	0x86
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL356
	.4byte	.LVL358
	.2byte	0x5
	.byte	0x40
	.byte	0x86
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL334
	.4byte	.LVL335
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL336
	.4byte	.LVL337
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL275
	.4byte	.LVL278
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL278
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL275
	.4byte	.LVL281
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL281
	.4byte	.LVL290
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL290
	.4byte	.LVL291
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL291
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL277
	.4byte	.LVL279
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0xc
	.4byte	0x77ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL279
	.4byte	.LVL280
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL280
	.4byte	.LVL282
	.2byte	0xf
	.byte	0x7f
	.byte	0
	.byte	0xc
	.4byte	0x7fc23fff
	.byte	0x1a
	.byte	0xc
	.4byte	0x20008040
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL283
	.4byte	.LVL285
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL285
	.4byte	.LVL286
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.4byte	.LVL286
	.4byte	.LVL288
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL288
	.4byte	.LVL290
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL290
	.4byte	.LVL292
	.2byte	0xf
	.byte	0x7f
	.byte	0
	.byte	0xc
	.4byte	0x7fc23fff
	.byte	0x1a
	.byte	0xc
	.4byte	0x20008040
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL224
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL226
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL224
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL244
	.4byte	.LVL247
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL255
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL271
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL224
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL231
	.4byte	.LVL239
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL239
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL243
	.4byte	.LVL247
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL255
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL224
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL243
	.4byte	.LVL247
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL255
	.4byte	.LVL271
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL271
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL225
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL227
	.4byte	.LVL231
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	.LVL239
	.4byte	.LVL243
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	.LVL247
	.4byte	.LVL255
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL228
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL247
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL229
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL271
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL224
	.4byte	.LVL231
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL240
	.4byte	.LVL241
	.2byte	0x9
	.byte	0x7e
	.byte	0
	.byte	0x34
	.byte	0x25
	.byte	0xa
	.2byte	0xfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LVL250
	.2byte	0x9
	.byte	0x7e
	.byte	0
	.byte	0x32
	.byte	0x25
	.byte	0xa
	.2byte	0x3fff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL253
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LVL255
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL256
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL224
	.4byte	.LVL230
	.2byte	0x4
	.byte	0xa
	.2byte	0xc80
	.byte	0x9f
	.4byte	.LVL230
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL247
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL224
	.4byte	.LVL231
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL235
	.4byte	.LVL239
	.2byte	0x1
	.byte	0x6f
	.4byte	.LVL239
	.4byte	.LVL244
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL247
	.4byte	.LVL271
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL271
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL233
	.4byte	.LVL234
	.2byte	0x4
	.byte	0x7e
	.byte	0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL234
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL271
	.4byte	.LVL272
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL273
	.4byte	.LVL274
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL224
	.4byte	.LVL239
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL239
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL247
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL253
	.4byte	.LVL255
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL255
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x6a
	.4byte	.LVL271
	.4byte	.LFE20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL239
	.4byte	.LVL241
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x3
	.byte	0x7a
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL247
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL243
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL255
	.4byte	.LVL267
	.2byte	0x1
	.byte	0x69
	.4byte	.LVL267
	.4byte	.LVL268
	.2byte	0x3
	.byte	0x89
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL269
	.4byte	.LVL271
	.2byte	0x1
	.byte	0x69
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL257
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL257
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL257
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL257
	.4byte	.LVL265
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL265
	.4byte	.LVL266
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL269
	.4byte	.LVL270
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL231
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x3
	.byte	0x7a
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL271
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL185
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL216
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL187
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL194
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL202
	.4byte	.LVL208
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL209
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL217
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL186
	.4byte	.LVL201
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL179
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL179
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL178
	.4byte	.LVL180
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL167
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0x200
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xb
	.2byte	0xfdff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL169
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x4000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL172
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xbfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL167
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL49
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL52
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL42
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x3
	.byte	0x8e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xb
	.2byte	0xe0ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0xd
	.byte	0x7b
	.byte	0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0xb
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0xe
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x38
	.byte	0x24
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL40
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL53
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63-1
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL53
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL63-1
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL114
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x32
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x34
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xb
	.2byte	0xc0ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0x1200
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xfb
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xe0ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x1700
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL91
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x7e
	.byte	0
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0xc
	.4byte	0x3ffffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL108
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL119
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL54
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL117
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL53
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL81
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL53
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x67
	.4byte	.LVL117
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x67
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL77
	.4byte	.LVL78-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL100
	.4byte	.LVL101-1
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL121
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL152-1
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL121
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL152-1
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL123
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0xe
	.byte	0x7b
	.byte	0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x42
	.byte	0x24
	.byte	0x42
	.byte	0x4a
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x7
	.byte	0x7d
	.byte	0
	.byte	0x42
	.byte	0x4a
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x6
	.byte	0xc
	.4byte	0x22413080
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0x7
	.byte	0x7d
	.byte	0
	.byte	0x40
	.byte	0x3f
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0xd
	.byte	0x7d
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x79
	.byte	0x1a
	.byte	0xa
	.2byte	0x7702
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL146
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x7
	.byte	0x7d
	.byte	0
	.byte	0xa
	.2byte	0x100
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL152-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0x94
	.byte	0x47
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LFE5
	.2byte	0x6
	.byte	0xc
	.4byte	0x22413080
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL122
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL156
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL159
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xb4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB34
	.4byte	.LBE34
	.4byte	.LBB35
	.4byte	.LBE35
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	0
	.4byte	0
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	0
	.4byte	0
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB50
	.4byte	.LBE50
	.4byte	0
	.4byte	0
	.4byte	.LBB40
	.4byte	.LBE40
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB78
	.4byte	.LBE78
	.4byte	0
	.4byte	0
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	.LBB75
	.4byte	.LBE75
	.4byte	.LBB76
	.4byte	.LBE76
	.4byte	0
	.4byte	0
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	.LBB74
	.4byte	.LBE74
	.4byte	.LBB77
	.4byte	.LBE77
	.4byte	0
	.4byte	0
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	.LBB70
	.4byte	.LBE70
	.4byte	.LBB71
	.4byte	.LBE71
	.4byte	.LBB72
	.4byte	.LBE72
	.4byte	0
	.4byte	0
	.4byte	.LBB79
	.4byte	.LBE79
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	.LBB113
	.4byte	.LBE113
	.4byte	0
	.4byte	0
	.4byte	.LBB80
	.4byte	.LBE80
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	0
	.4byte	0
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB114
	.4byte	.LBE114
	.4byte	0
	.4byte	0
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	0
	.4byte	0
	.4byte	.LBB95
	.4byte	.LBE95
	.4byte	.LBB102
	.4byte	.LBE102
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	.LBB111
	.4byte	.LBE111
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	0
	.4byte	0
	.4byte	.LBB96
	.4byte	.LBE96
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	0
	.4byte	0
	.4byte	.LBB104
	.4byte	.LBE104
	.4byte	.LBB112
	.4byte	.LBE112
	.4byte	.LBB116
	.4byte	.LBE116
	.4byte	0
	.4byte	0
	.4byte	.LBB105
	.4byte	.LBE105
	.4byte	.LBB108
	.4byte	.LBE108
	.4byte	0
	.4byte	0
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
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
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
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF55:
	.string	"qcc74x_adc_feature_control"
.LASF31:
	.string	"qcc74x_device_s"
.LASF64:
	.string	"result"
.LASF48:
	.string	"adc_reference_channel_millivolt"
.LASF26:
	.string	"reg_base"
.LASF93:
	.string	"__floatunsidf"
.LASF33:
	.string	"clk_div"
.LASF16:
	.string	"int8_t"
.LASF21:
	.string	"uint64_t"
.LASF57:
	.string	"temp"
.LASF4:
	.string	"short int"
.LASF23:
	.string	"size_t"
.LASF85:
	.string	"channel"
.LASF28:
	.string	"sub_idx"
.LASF89:
	.string	"qcc74x_update_adc_trim"
.LASF61:
	.string	"tsen_mod"
.LASF9:
	.string	"__uint32_t"
.LASF74:
	.string	"mask"
.LASF46:
	.string	"tsen_offset"
.LASF81:
	.string	"qcc74x_adc_channel_config"
.LASF76:
	.string	"qcc74x_adc_rxint_mask"
.LASF5:
	.string	"__uint16_t"
.LASF83:
	.string	"channels"
.LASF95:
	.string	"__ltdf2"
.LASF43:
	.string	"value"
.LASF29:
	.string	"dev_type"
.LASF42:
	.string	"qcc74x_adc_result_s"
.LASF101:
	.string	"qcc74x_mtimer_delay_ms"
.LASF50:
	.string	"regval"
.LASF87:
	.string	"enable"
.LASF22:
	.string	"uintptr_t"
.LASF90:
	.string	"config"
.LASF2:
	.string	"signed char"
.LASF30:
	.string	"user_data"
.LASF45:
	.string	"float"
.LASF11:
	.string	"long long int"
.LASF69:
	.string	"conv_val"
.LASF71:
	.string	"int_clear"
.LASF80:
	.string	"qcc74x_adc_start_conversion"
.LASF100:
	.string	"qcc74x_mtimer_delay_us"
.LASF36:
	.string	"differential_mode"
.LASF8:
	.string	"long int"
.LASF40:
	.string	"pos_chan"
.LASF27:
	.string	"irq_num"
.LASF72:
	.string	"qcc74x_adc_get_intstatus"
.LASF96:
	.string	"__floatsidf"
.LASF1:
	.string	"__uint8_t"
.LASF35:
	.string	"continuous_conv_mode"
.LASF79:
	.string	"qcc74x_adc_stop_conversion"
.LASF34:
	.string	"scan_conv_mode"
.LASF97:
	.string	"__subdf3"
.LASF103:
	.string	"qcc74x_efuse_get_adc_tsen_trim"
.LASF3:
	.string	"unsigned char"
.LASF78:
	.string	"qcc74x_adc_get_count"
.LASF44:
	.string	"millivolt"
.LASF58:
	.string	"raw_data"
.LASF13:
	.string	"long long unsigned int"
.LASF20:
	.string	"uint32_t"
.LASF51:
	.string	"dma_en"
.LASF70:
	.string	"qcc74x_adc_int_clear"
.LASF15:
	.string	"unsigned int"
.LASF18:
	.string	"uint16_t"
.LASF99:
	.string	"qcc74x_mtimer_get_time_ms"
.LASF60:
	.string	"qcc74x_adc_tsen_init"
.LASF6:
	.string	"short unsigned int"
.LASF0:
	.string	"__int8_t"
.LASF82:
	.string	"chan"
.LASF24:
	.string	"char"
.LASF49:
	.string	"adc_cali_complete"
.LASF106:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/drivers/lhal"
.LASF47:
	.string	"adc_reference_channel"
.LASF19:
	.string	"int32_t"
.LASF37:
	.string	"resolution"
.LASF62:
	.string	"qcc74x_adc_parse_result"
.LASF105:
	.string	"./drivers/lhal/src/qcc74x_adc.c"
.LASF91:
	.string	"os_val"
.LASF52:
	.string	"_Bool"
.LASF59:
	.string	"start_time"
.LASF107:
	.string	"qcc74x_get_conv_value"
.LASF12:
	.string	"__uint64_t"
.LASF63:
	.string	"buffer"
.LASF104:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF66:
	.string	"diff_mode"
.LASF10:
	.string	"long unsigned int"
.LASF14:
	.string	"__uintptr_t"
.LASF92:
	.string	"qcc74x_adc_init"
.LASF102:
	.string	"qcc74x_efuse_get_adc_trim"
.LASF39:
	.string	"qcc74x_adc_channel_s"
.LASF77:
	.string	"qcc74x_adc_read_raw"
.LASF73:
	.string	"qcc74x_adc_errint_mask"
.LASF98:
	.string	"__gedf2"
.LASF65:
	.string	"count"
.LASF7:
	.string	"__int32_t"
.LASF41:
	.string	"neg_chan"
.LASF17:
	.string	"uint8_t"
.LASF68:
	.string	"chan_vref"
.LASF25:
	.string	"name"
.LASF88:
	.string	"qcc74x_adc_deinit"
.LASF54:
	.string	"qcc74x_adc_vbat_enable"
.LASF67:
	.string	"conv_result"
.LASF84:
	.string	"qcc74x_adc_set_reference_channel"
.LASF38:
	.string	"vref"
.LASF53:
	.string	"qcc74x_adc_vbat_disable"
.LASF75:
	.string	"regval2"
.LASF56:
	.string	"qcc74x_adc_tsen_get_temp"
.LASF32:
	.string	"qcc74x_adc_config_s"
.LASF86:
	.string	"qcc74x_adc_link_rxdma"
.LASF94:
	.string	"__muldf3"
	.ident	"GCC: (GNU) 10.4.0"
