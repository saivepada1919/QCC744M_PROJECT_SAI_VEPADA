	.file	"qcc743_ef_cfg.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.tcm_code../drivers/soc/qcc743/std/src/qcc743_ef_cfg.c261,"ax",@progbits
	.align	1
	.type	qcc74x_efuse_print_number, @function
qcc74x_efuse_print_number:
.LFB243:
	.file 1 "./drivers/soc/qcc743/std/src/qcc743_ef_cfg.c"
	.loc 1 262 1
	.cfi_startproc
.LVL0:
	.loc 1 263 5
	.loc 1 265 5
	.loc 1 269 12
	.loc 1 269 15 is_stmt 0
	li	a5,9
	bleu	a1,a5,.L2
	.loc 1 270 9 is_stmt 1
.LVL1:
	.loc 1 270 35 is_stmt 0
	li	a4,10
	divu	a5,a1,a4
	.loc 1 271 35
	remu	a1,a1,a4
.LVL2:
	.loc 1 270 35
	addi	a5,a5,48
	.loc 1 270 21
	sb	a5,0(a0)
	.loc 1 271 9 is_stmt 1
.LVL3:
	.loc 1 271 17 is_stmt 0
	li	a5,2
	.loc 1 271 35
	addi	a1,a1,48
	.loc 1 271 21
	sb	a1,1(a0)
.LVL4:
.L3:
	.loc 1 276 5 is_stmt 1
	.loc 1 277 1 is_stmt 0
	add	a0,a0,a5
.LVL5:
	ret
.LVL6:
.L2:
	.loc 1 273 9 is_stmt 1
	.loc 1 273 30 is_stmt 0
	addi	a1,a1,48
.LVL7:
	.loc 1 273 21
	sb	a1,0(a0)
	.loc 1 273 17
	li	a5,1
	j	.L3
	.cfi_endproc
.LFE243:
	.size	qcc74x_efuse_print_number, .-qcc74x_efuse_print_number
	.section	.text.qcc74x_ef_ctrl_get_common_trim_list,"ax",@progbits
	.align	1
	.globl	qcc74x_ef_ctrl_get_common_trim_list
	.type	qcc74x_ef_ctrl_get_common_trim_list, @function
qcc74x_ef_ctrl_get_common_trim_list:
.LFB242:
	.loc 1 256 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 257 5
	.loc 1 257 17 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	sw	a5,0(a0)
	.loc 1 258 5 is_stmt 1
	.loc 1 259 1 is_stmt 0
	li	a0,34
.LVL9:
	ret
	.cfi_endproc
.LFE242:
	.size	qcc74x_ef_ctrl_get_common_trim_list, .-qcc74x_ef_ctrl_get_common_trim_list
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"QFN40"
	.align	2
.LC1:
	.string	"QFN40M"
	.align	2
.LC2:
	.string	"QFN56"
	.align	2
.LC3:
	.string	"ERROR"
	.align	2
.LC4:
	.string	"NO"
	.align	2
.LC5:
	.string	"2MB"
	.align	2
.LC6:
	.string	"4MB"
	.align	2
.LC7:
	.string	"6MB"
	.align	2
.LC8:
	.string	"8MB"
	.align	2
.LC9:
	.string	"WB_4MB"
	.align	2
.LC10:
	.string	"WB_8MB"
	.align	2
.LC11:
	.string	"WB_16MB"
	.align	2
.LC12:
	.string	"SS"
	.align	2
.LC13:
	.string	"%TT+"
	.align	2
.LC14:
	.string	"%SS"
	.align	2
.LC15:
	.string	"TT"
	.align	2
.LC16:
	.string	"%FF"
	.align	2
.LC17:
	.string	"FF"
	.section	.tcm_code../drivers/soc/qcc743/std/src/qcc743_ef_cfg.c287,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_get_device_info
	.type	qcc74x_efuse_get_device_info, @function
qcc74x_efuse_get_device_info:
.LFB244:
	.loc 1 288 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 289 5
	.loc 1 290 5
	.loc 1 292 5
	.loc 1 288 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.loc 1 292 5
	li	a4,1
	.cfi_offset 8, -8
	.loc 1 288 1
	mv	s0,a0
	.loc 1 292 5
	li	a3,1
	addi	a2,sp,12
	li	a1,24
	li	a0,0
.LVL11:
	.loc 1 288 1
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 292 5
	call	qcc74x_ef_ctrl_read_direct
.LVL12:
	.loc 1 293 5 is_stmt 1
	.loc 1 293 36 is_stmt 0
	lw	a4,12(sp)
	.loc 1 293 43
	extu	a2,a4,22+2-1,22
	.loc 1 294 46
	extu	a5,a4,26+3-1,26
	.loc 1 295 46
	extu	a3,a4,24+2-1,24
	.loc 1 296 36
	srli	a4,a4,29
	.loc 1 296 26
	sb	a4,3(s0)
	.loc 1 293 26
	sb	a2,0(s0)
	.loc 1 294 5 is_stmt 1
	.loc 1 294 29 is_stmt 0
	sb	a5,1(s0)
	.loc 1 295 5 is_stmt 1
	.loc 1 295 29 is_stmt 0
	sb	a3,2(s0)
	.loc 1 296 5 is_stmt 1
	.loc 1 298 5
	li	a4,1
	beq	a2,a4,.L6
	li	a4,2
	beq	a2,a4,.L7
	bne	a2,zero,.L8
	.loc 1 300 13
	.loc 1 300 39 is_stmt 0
	lui	a4,%hi(.LC0)
	addi	a4,a4,%lo(.LC0)
.L28:
	.loc 1 309 39
	sw	a4,8(s0)
	.loc 1 310 13 is_stmt 1
	.loc 1 312 5
	li	a4,2
	beq	a5,a4,.L10
	bgtu	a5,a4,.L11
	beq	a5,zero,.L12
	li	a4,1
	beq	a5,a4,.L13
.L14:
	.loc 1 329 13
	.loc 1 329 42 is_stmt 0
	lui	a5,%hi(.LC3)
	addi	a5,a5,%lo(.LC3)
	j	.L29
.L6:
	.loc 1 303 13 is_stmt 1
	.loc 1 303 39 is_stmt 0
	lui	a4,%hi(.LC1)
	addi	a4,a4,%lo(.LC1)
	j	.L28
.L7:
	.loc 1 306 13 is_stmt 1
	.loc 1 306 39 is_stmt 0
	lui	a4,%hi(.LC2)
	addi	a4,a4,%lo(.LC2)
	j	.L28
.L8:
	.loc 1 309 13 is_stmt 1
	.loc 1 309 39 is_stmt 0
	lui	a4,%hi(.LC3)
	addi	a4,a4,%lo(.LC3)
	j	.L28
.L11:
	.loc 1 312 5
	li	a4,3
	beq	a5,a4,.L15
	li	a4,4
	bne	a5,a4,.L14
	.loc 1 326 13 is_stmt 1
	.loc 1 326 42 is_stmt 0
	lui	a5,%hi(.LC8)
	addi	a5,a5,%lo(.LC8)
	j	.L29
.L12:
	.loc 1 314 13 is_stmt 1
	.loc 1 314 42 is_stmt 0
	lui	a5,%hi(.LC4)
	addi	a5,a5,%lo(.LC4)
.L29:
	.loc 1 329 42
	sw	a5,12(s0)
	.loc 1 330 13 is_stmt 1
	.loc 1 332 5
	li	a5,2
	beq	a3,a5,.L18
	li	a5,3
	beq	a3,a5,.L19
	li	a5,1
	beq	a3,a5,.L20
	.loc 1 334 13
	.loc 1 334 42 is_stmt 0
	lui	a5,%hi(.LC4)
	addi	a5,a5,%lo(.LC4)
.L30:
	.loc 1 349 76
	li	s1,536870912
	addi	s1,s1,1664
	.loc 1 343 42
	sw	a5,16(s0)
	.loc 1 344 13 is_stmt 1
	.loc 1 349 5
	.loc 1 349 76 is_stmt 0
	li	a5,1025
	sw	a5,112(s1)
	.loc 1 350 5 is_stmt 1
	li	a0,110
	call	arch_delay_us
.LVL13:
	.loc 1 351 5
	.loc 1 351 76 is_stmt 0
	li	a5,1027
	sw	a5,112(s1)
	.loc 1 352 5 is_stmt 1
	li	a0,110
	call	arch_delay_us
.LVL14:
	.loc 1 353 5
	.loc 1 353 76 is_stmt 0
	li	a5,1043
	sw	a5,112(s1)
	.loc 1 354 5 is_stmt 1
	li	a0,110
	call	arch_delay_us
.LVL15:
	.loc 1 355 5
	.loc 1 355 76 is_stmt 0
	li	a5,1075
	sw	a5,112(s1)
	.loc 1 356 5 is_stmt 1
	li	a0,1100
	call	arch_delay_us
.LVL16:
	.loc 1 357 5
	.loc 1 357 15 is_stmt 0
	lw	a4,112(s1)
	.loc 1 358 5 is_stmt 1
	.loc 1 361 8 is_stmt 0
	li	a3,480
	.loc 1 360 9
	addi	a0,s0,20
	.loc 1 358 57
	extu	a5,a4,12+16-1,12
	.loc 1 358 12
	sw	a5,12(sp)
	.loc 1 359 5 is_stmt 1
	.loc 1 359 33 is_stmt 0
	sh	a5,4(s0)
	.loc 1 360 5 is_stmt 1
.LVL17:
	.loc 1 361 5
	.loc 1 361 8 is_stmt 0
	bgtu	a5,a3,.L22
	.loc 1 362 9 is_stmt 1
	lui	a1,%hi(.LC12)
	li	a2,3
	addi	a1,a1,%lo(.LC12)
.LVL18:
.L31:
	.loc 1 382 9 is_stmt 0
	call	arch_memcpy
.LVL19:
	.loc 1 384 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L13:
	.cfi_restore_state
	.loc 1 317 13 is_stmt 1
	.loc 1 317 42 is_stmt 0
	lui	a5,%hi(.LC5)
	addi	a5,a5,%lo(.LC5)
	j	.L29
.L10:
	.loc 1 320 13 is_stmt 1
	.loc 1 320 42 is_stmt 0
	lui	a5,%hi(.LC6)
	addi	a5,a5,%lo(.LC6)
	j	.L29
.L15:
	.loc 1 323 13 is_stmt 1
	.loc 1 323 42 is_stmt 0
	lui	a5,%hi(.LC7)
	addi	a5,a5,%lo(.LC7)
	j	.L29
.L20:
	.loc 1 337 13 is_stmt 1
	.loc 1 337 42 is_stmt 0
	lui	a5,%hi(.LC9)
	addi	a5,a5,%lo(.LC9)
	j	.L30
.L18:
	.loc 1 340 13 is_stmt 1
	.loc 1 340 42 is_stmt 0
	lui	a5,%hi(.LC10)
	addi	a5,a5,%lo(.LC10)
	j	.L30
.L19:
	.loc 1 343 13 is_stmt 1
	.loc 1 343 42 is_stmt 0
	lui	a5,%hi(.LC11)
	addi	a5,a5,%lo(.LC11)
	j	.L30
.LVL21:
.L22:
	.loc 1 363 12 is_stmt 1
	.loc 1 363 15 is_stmt 0
	li	a3,539
	bgtu	a5,a3,.L24
.LBB2:
	.loc 1 364 9 is_stmt 1
	.loc 1 365 9
	.loc 1 365 44 is_stmt 0
	addi	s0,a5,-480
.LVL22:
	.loc 1 365 51
	li	a5,100
	mul	s0,s0,a5
	.loc 1 365 63
	li	a1,60
	.loc 1 365 57
	addi	s0,s0,30
	.loc 1 365 63
	div	s0,s0,a1
.LVL23:
	.loc 1 366 9 is_stmt 1
	.loc 1 367 9
	.loc 1 367 15 is_stmt 0
	andi	a1,s0,0xff
	call	qcc74x_efuse_print_number
.LVL24:
	.loc 1 368 9
	lui	a1,%hi(.LC13)
	li	a2,5
	addi	a1,a1,%lo(.LC13)
	.loc 1 367 15
	mv	s1,a0
.LVL25:
	.loc 1 368 9 is_stmt 1
	call	arch_memcpy
.LVL26:
	.loc 1 369 9
	.loc 1 366 12 is_stmt 0
	li	a1,100
	sub	a1,a1,s0
	.loc 1 369 15
	andi	a1,a1,0xff
	addi	a0,s1,4
	call	qcc74x_efuse_print_number
.LVL27:
	.loc 1 370 9 is_stmt 1
	lui	a1,%hi(.LC14)
	li	a2,4
	addi	a1,a1,%lo(.LC14)
	j	.L31
.LVL28:
.L24:
.LBE2:
	.loc 1 371 12
	.loc 1 371 15 is_stmt 0
	li	a3,540
	bne	a5,a3,.L25
	.loc 1 372 9 is_stmt 1
	lui	a1,%hi(.LC15)
	li	a2,3
	addi	a1,a1,%lo(.LC15)
	j	.L31
.L25:
	.loc 1 373 12
	.loc 1 373 15 is_stmt 0
	li	a3,609
	bgtu	a5,a3,.L26
.LBB3:
	.loc 1 374 9 is_stmt 1
	.loc 1 375 9
	.loc 1 375 44 is_stmt 0
	addi	s0,a5,-540
.LVL29:
	.loc 1 375 51
	li	a5,100
	mul	s0,s0,a5
	.loc 1 375 63
	li	a5,70
	.loc 1 376 12
	li	a1,100
	.loc 1 375 57
	addi	s0,s0,35
	.loc 1 375 63
	div	s0,s0,a5
.LVL30:
	.loc 1 376 9 is_stmt 1
	.loc 1 377 9
	.loc 1 376 12 is_stmt 0
	sub	a1,a1,s0
	.loc 1 377 15
	andi	a1,a1,0xff
	call	qcc74x_efuse_print_number
.LVL31:
	.loc 1 378 9
	lui	a1,%hi(.LC13)
	li	a2,5
	addi	a1,a1,%lo(.LC13)
	.loc 1 377 15
	mv	s1,a0
.LVL32:
	.loc 1 378 9 is_stmt 1
	call	arch_memcpy
.LVL33:
	.loc 1 379 9
	.loc 1 379 15 is_stmt 0
	andi	a1,s0,0xff
	addi	a0,s1,4
	call	qcc74x_efuse_print_number
.LVL34:
	.loc 1 380 9 is_stmt 1
	lui	a1,%hi(.LC16)
	li	a2,4
	addi	a1,a1,%lo(.LC16)
	j	.L31
.LVL35:
.L26:
.LBE3:
	.loc 1 382 9
	lui	a1,%hi(.LC17)
	li	a2,3
	addi	a1,a1,%lo(.LC17)
	j	.L31
	.cfi_endproc
.LFE244:
	.size	qcc74x_efuse_get_device_info, .-qcc74x_efuse_get_device_info
	.section	.text.qcc74x_efuse_is_mac_address_slot_empty,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_is_mac_address_slot_empty
	.type	qcc74x_efuse_is_mac_address_slot_empty, @function
qcc74x_efuse_is_mac_address_slot_empty:
.LFB246:
	.loc 1 412 1
	.cfi_startproc
.LVL36:
	.loc 1 413 5
	.loc 1 412 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	.loc 1 413 14
	li	a5,-1
	.loc 1 412 1
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 413 14
	sw	a5,24(sp)
	.loc 1 413 33
	sw	a5,28(sp)
	.loc 1 414 5 is_stmt 1
.LVL37:
	.loc 1 416 5
	.loc 1 412 1 is_stmt 0
	mv	a4,a1
	.loc 1 416 8
	bne	a0,zero,.L33
	.loc 1 417 9 is_stmt 1
	sw	a1,12(sp)
	li	a3,1
	addi	a2,sp,24
	li	a1,20
.LVL38:
	call	qcc74x_ef_ctrl_read_direct
.LVL39:
	.loc 1 418 9
	lw	a4,12(sp)
	li	a3,1
	addi	a2,sp,28
	li	a1,24
.L40:
	.loc 1 424 9 is_stmt 0
	li	a0,0
	call	qcc74x_ef_ctrl_read_direct
.LVL40:
.L34:
	.loc 1 427 5 is_stmt 1
	.loc 1 427 19 is_stmt 0
	lw	a0,24(sp)
	li	a2,32
	li	a1,0
	call	qcc74x_ef_ctrl_is_all_bits_zero
.LVL41:
	mv	s0,a0
.LVL42:
	.loc 1 428 5 is_stmt 1
	.loc 1 428 19 is_stmt 0
	lw	a0,28(sp)
	li	a2,22
	li	a1,0
	call	qcc74x_ef_ctrl_is_all_bits_zero
.LVL43:
	.loc 1 430 5 is_stmt 1
	.loc 1 430 24 is_stmt 0
	li	a5,0
	beq	s0,zero,.L36
	.loc 1 430 24 discriminator 1
	snez	a5,a0
.L36:
	.loc 1 431 1 discriminator 6
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL44:
	mv	a0,a5
.LVL45:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL46:
.L33:
	.cfi_restore_state
	.loc 1 419 12 is_stmt 1
	.loc 1 419 15 is_stmt 0
	li	a5,1
	bne	a0,a5,.L35
	.loc 1 420 9 is_stmt 1
	sw	a1,12(sp)
	li	a3,1
	addi	a2,sp,24
	li	a1,100
.LVL47:
	li	a0,0
.LVL48:
	call	qcc74x_ef_ctrl_read_direct
.LVL49:
	.loc 1 421 9
	lw	a4,12(sp)
	li	a3,1
	addi	a2,sp,28
	li	a1,104
	j	.L40
.LVL50:
.L35:
	.loc 1 422 12
	.loc 1 422 15 is_stmt 0
	li	a5,2
	bne	a0,a5,.L34
	.loc 1 423 9 is_stmt 1
	sw	a1,12(sp)
	li	a3,1
	addi	a2,sp,24
	li	a1,112
.LVL51:
	li	a0,0
.LVL52:
	call	qcc74x_ef_ctrl_read_direct
.LVL53:
	.loc 1 424 9
	lw	a4,12(sp)
	li	a3,1
	addi	a2,sp,28
	li	a1,116
	j	.L40
	.cfi_endproc
.LFE246:
	.size	qcc74x_efuse_is_mac_address_slot_empty, .-qcc74x_efuse_is_mac_address_slot_empty
	.section	.text.qcc74x_efuse_write_mac_address_opt,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_write_mac_address_opt
	.type	qcc74x_efuse_write_mac_address_opt, @function
qcc74x_efuse_write_mac_address_opt:
.LFB247:
	.loc 1 444 1
	.cfi_startproc
.LVL54:
	.loc 1 445 5
	.loc 1 446 5
	.loc 1 447 5
	.loc 1 448 5
	.loc 1 450 5
	.loc 1 450 8 is_stmt 0
	li	a5,2
	bgtu	a0,a5,.L50
	.loc 1 444 1
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	addi	a3,a1,5
	.loc 1 455 12
	li	a5,0
	.loc 1 455 5
	li	a4,3
.LVL55:
.L43:
	.loc 1 456 9 is_stmt 1 discriminator 3
	.loc 1 457 21 is_stmt 0 discriminator 3
	lbu	a7,0(a3)
	.loc 1 456 21 discriminator 3
	lrbu	a6,a1,a5,0
	.loc 1 457 9 is_stmt 1 discriminator 3
	.loc 1 457 16 is_stmt 0 discriminator 3
	srb	a7,a1,a5,0
	.loc 1 458 9 is_stmt 1 discriminator 3
	.loc 1 458 20 is_stmt 0 discriminator 3
	sbia	a6,(a3),-1,0
	.loc 1 455 24 is_stmt 1 discriminator 3
	.loc 1 455 25 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL56:
	.loc 1 455 17 is_stmt 1 discriminator 3
	.loc 1 455 5 is_stmt 0 discriminator 3
	bne	a5,a4,.L43
	.loc 1 462 12
	lbu	a3,1(a1)
	lbu	a5,0(a1)
.LVL57:
	mv	a4,a2
	slli	a3,a3,8
	or	a3,a3,a5
	lbu	a5,2(a1)
	mv	s0,a1
	mv	s1,a0
	.loc 1 462 5 is_stmt 1
	.loc 1 462 12 is_stmt 0
	slli	a5,a5,16
	or	a3,a5,a3
	lbu	a5,3(a1)
	slli	a5,a5,24
	or	a5,a5,a3
	sw	a5,28(sp)
	.loc 1 464 5 is_stmt 1
	.loc 1 464 8 is_stmt 0
	bne	a0,zero,.L44
.LVL58:
	.loc 1 465 9 is_stmt 1
	sw	a2,12(sp)
	li	a3,1
	addi	a2,sp,28
.LVL59:
	li	a1,20
.L57:
	.loc 1 469 9 is_stmt 0
	li	a0,0
.LVL60:
	call	qcc74x_ef_ctrl_write_direct
.LVL61:
	.loc 1 473 35
	lbu	a5,5(s0)
	.loc 1 473 21
	lbu	a3,4(s0)
	.loc 1 469 9
	lw	a4,12(sp)
	.loc 1 473 5 is_stmt 1
	.loc 1 473 39 is_stmt 0
	slli	a5,a5,8
	.loc 1 473 25
	add	a5,a5,a3
	.loc 1 473 12
	sw	a5,28(sp)
	.loc 1 474 5 is_stmt 1
.LVL62:
	.loc 1 476 5
	.loc 1 476 17
	.loc 1 474 9 is_stmt 0
	li	s2,0
	.loc 1 476 12
	li	s3,0
	.loc 1 476 5
	li	s4,6
.LVL63:
.L47:
	.loc 1 477 16 discriminator 3
	lrbu	a0,s0,s3,0
	sw	a4,12(sp)
.LVL64:
	.loc 1 477 9 is_stmt 1 discriminator 3
	.loc 1 476 25 is_stmt 0 discriminator 3
	addi	s3,s3,1
.LVL65:
	.loc 1 477 16 discriminator 3
	call	qcc74x_ef_ctrl_get_byte_zero_cnt
.LVL66:
	.loc 1 476 5 discriminator 3
	lw	a4,12(sp)
	.loc 1 477 13 discriminator 3
	add	s2,s2,a0
.LVL67:
	.loc 1 476 24 is_stmt 1 discriminator 3
	.loc 1 476 17 discriminator 3
	.loc 1 476 5 is_stmt 0 discriminator 3
	bne	s3,s4,.L47
	.loc 1 480 5 is_stmt 1
	.loc 1 480 29 is_stmt 0
	li	a5,4128768
	slli	s2,s2,16
.LVL68:
	and	s2,s2,a5
	.loc 1 480 12
	lw	a5,28(sp)
	or	s2,a5,s2
	sw	s2,28(sp)
	.loc 1 482 5 is_stmt 1
	.loc 1 482 8 is_stmt 0
	bne	s1,zero,.L48
	.loc 1 483 9 is_stmt 1
	li	a3,1
	addi	a2,sp,28
	li	a1,24
.L58:
	.loc 1 487 9 is_stmt 0
	li	a0,0
	call	qcc74x_ef_ctrl_write_direct
.LVL69:
	.loc 1 491 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL70:
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
.LVL71:
	lw	s4,40(sp)
	.cfi_restore 20
	.loc 1 490 12
	li	a0,0
	.loc 1 491 1
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL72:
.L44:
	.cfi_restore_state
	.loc 1 466 12 is_stmt 1
	.loc 1 467 9 is_stmt 0
	sw	a2,12(sp)
	.loc 1 466 15
	li	a5,1
	.loc 1 467 9
	li	a3,1
	addi	a2,sp,28
.LVL73:
	li	a1,100
	.loc 1 466 15
	beq	a0,a5,.L57
	.loc 1 468 12 is_stmt 1
	.loc 1 469 9
	li	a1,112
	j	.L57
.LVL74:
.L48:
	.loc 1 484 12
	.loc 1 484 15 is_stmt 0
	li	a5,1
	.loc 1 485 9
	li	a3,1
	addi	a2,sp,28
	li	a1,104
	.loc 1 484 15
	beq	s1,a5,.L58
	.loc 1 486 12 is_stmt 1
	.loc 1 487 9
	li	a1,116
	j	.L58
.LVL75:
.L50:
	.cfi_def_cfa_offset 0
	.cfi_restore 1
	.cfi_restore 8
	.cfi_restore 9
	.cfi_restore 18
	.cfi_restore 19
	.cfi_restore 20
	.loc 1 451 16 is_stmt 0
	li	a0,-1
.LVL76:
	.loc 1 491 1
	ret
	.cfi_endproc
.LFE247:
	.size	qcc74x_efuse_write_mac_address_opt, .-qcc74x_efuse_write_mac_address_opt
	.section	.text.qcc74x_efuse_read_mac_address_opt,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_read_mac_address_opt
	.type	qcc74x_efuse_read_mac_address_opt, @function
qcc74x_efuse_read_mac_address_opt:
.LFB248:
	.loc 1 504 1 is_stmt 1
	.cfi_startproc
.LVL77:
	.loc 1 505 5
	.loc 1 506 5
	.loc 1 507 5
	.loc 1 504 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s2,48(sp)
	sw	s3,44(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 507 14
	sw	zero,28(sp)
	.loc 1 508 5 is_stmt 1
.LVL78:
	.loc 1 509 5
	.loc 1 511 5
	.loc 1 511 8 is_stmt 0
	li	a5,2
	bgtu	a0,a5,.L60
	mv	s1,a0
	mv	a4,a2
	mv	s0,a1
	.loc 1 515 5 is_stmt 1
	.loc 1 515 8 is_stmt 0
	bne	a0,zero,.L61
	.loc 1 516 9 is_stmt 1
	sw	a2,12(sp)
	li	a3,1
	addi	a2,sp,28
.LVL79:
	li	a1,20
.LVL80:
.L73:
	.loc 1 520 9 is_stmt 0
	call	qcc74x_ef_ctrl_read_direct
.LVL81:
	.loc 1 523 17
	lw	a5,28(sp)
	.loc 1 520 9
	lw	a4,12(sp)
	.loc 1 523 7 is_stmt 1
	.loc 1 523 54 is_stmt 0
	srli	a3,a5,8
	.loc 1 523 17
	sb	a5,0(s0)
	.loc 1 523 34 is_stmt 1
	.loc 1 523 44 is_stmt 0
	sb	a3,1(s0)
	.loc 1 523 68 is_stmt 1
	.loc 1 523 88 is_stmt 0
	srli	a3,a5,16
	.loc 1 523 123
	srli	a5,a5,24
	.loc 1 523 78
	sb	a3,2(s0)
	.loc 1 523 103 is_stmt 1
	.loc 1 523 113 is_stmt 0
	sb	a5,3(s0)
	.loc 1 523 139 is_stmt 1
	.loc 1 525 5
	.loc 1 525 8 is_stmt 0
	bne	s1,zero,.L64
	.loc 1 526 9 is_stmt 1
	li	a3,1
	addi	a2,sp,28
	li	a1,24
.L75:
	.loc 1 530 9 is_stmt 0
	li	a0,0
	call	qcc74x_ef_ctrl_read_direct
.LVL82:
	.loc 1 533 5 is_stmt 1
	.loc 1 533 16 is_stmt 0
	lw	a5,28(sp)
	.loc 1 509 14
	li	s2,0
	.loc 1 537 12
	li	s1,0
	.loc 1 533 16
	sb	a5,4(s0)
	.loc 1 534 5 is_stmt 1
	.loc 1 534 26 is_stmt 0
	srli	a5,a5,8
	.loc 1 534 16
	sb	a5,5(s0)
	.loc 1 537 5 is_stmt 1
	.loc 1 537 17
	.loc 1 537 5 is_stmt 0
	li	s3,6
.LVL83:
.L67:
	.loc 1 538 9 is_stmt 1 discriminator 3
	.loc 1 538 16 is_stmt 0 discriminator 3
	lrbu	a0,s0,s1,0
	.loc 1 537 25 discriminator 3
	addi	s1,s1,1
.LVL84:
	.loc 1 538 16 discriminator 3
	call	qcc74x_ef_ctrl_get_byte_zero_cnt
.LVL85:
	.loc 1 538 13 discriminator 3
	add	s2,s2,a0
.LVL86:
	.loc 1 537 24 is_stmt 1 discriminator 3
	.loc 1 537 17 discriminator 3
	.loc 1 537 5 is_stmt 0 discriminator 3
	bne	s1,s3,.L67
	.loc 1 541 5 is_stmt 1
	.loc 1 541 34 is_stmt 0
	lhu	a5,30(sp)
	.loc 1 541 22
	xor	a5,a5,s2
	andi	a5,a5,63
	.loc 1 541 8
	bne	a5,zero,.L60
	addi	a4,s0,5
	.loc 1 543 9
	li	a3,3
.LVL87:
.L68:
	.loc 1 544 13 is_stmt 1 discriminator 3
	.loc 1 545 25 is_stmt 0 discriminator 3
	lbu	a1,0(a4)
	.loc 1 544 25 discriminator 3
	lrbu	a2,s0,a5,0
	.loc 1 545 13 is_stmt 1 discriminator 3
	.loc 1 545 20 is_stmt 0 discriminator 3
	srb	a1,s0,a5,0
	.loc 1 546 13 is_stmt 1 discriminator 3
	.loc 1 546 24 is_stmt 0 discriminator 3
	sbia	a2,(a4),-1,0
	.loc 1 543 28 is_stmt 1 discriminator 3
	.loc 1 543 29 is_stmt 0 discriminator 3
	addi	a5,a5,1
.LVL88:
	.loc 1 543 21 is_stmt 1 discriminator 3
	.loc 1 543 9 is_stmt 0 discriminator 3
	bne	a5,a3,.L68
	.loc 1 548 16
	li	a0,0
.LVL89:
.L59:
	.loc 1 552 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
	lw	s3,44(sp)
	.cfi_restore 19
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL90:
.L61:
	.cfi_restore_state
	.loc 1 517 12 is_stmt 1
	.loc 1 518 9 is_stmt 0
	sw	a2,12(sp)
	.loc 1 517 15
	li	a5,1
	.loc 1 518 9
	li	a3,1
	addi	a2,sp,28
.LVL91:
	li	a1,100
	.loc 1 517 15
	beq	a0,a5,.L74
	.loc 1 519 12 is_stmt 1
	.loc 1 520 9
	li	a1,112
.L74:
	li	a0,0
.LVL92:
	j	.L73
.L64:
	.loc 1 527 12
	.loc 1 527 15 is_stmt 0
	li	a5,1
	.loc 1 528 9
	li	a3,1
	addi	a2,sp,28
	li	a1,104
	.loc 1 527 15
	beq	s1,a5,.L75
	.loc 1 529 12 is_stmt 1
	.loc 1 530 9
	li	a1,116
	j	.L75
.LVL93:
.L60:
	.loc 1 512 16 is_stmt 0
	li	a0,-1
	j	.L59
	.cfi_endproc
.LFE248:
	.size	qcc74x_efuse_read_mac_address_opt, .-qcc74x_efuse_read_mac_address_opt
	.section	.text.qcc74x_efuse_get_chipid,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_get_chipid
	.type	qcc74x_efuse_get_chipid, @function
qcc74x_efuse_get_chipid:
.LFB245:
	.loc 1 395 1 is_stmt 1
	.cfi_startproc
.LVL94:
	.loc 1 396 5
	.loc 1 395 1 is_stmt 0
	mv	a1,a0
	.loc 1 396 15
	sb	zero,6(a0)
	.loc 1 397 5 is_stmt 1
	.loc 1 397 15 is_stmt 0
	sb	zero,7(a0)
	.loc 1 399 5 is_stmt 1
	.loc 1 399 12 is_stmt 0
	li	a2,1
	li	a0,0
.LVL95:
	tail	qcc74x_efuse_read_mac_address_opt
.LVL96:
	.cfi_endproc
.LFE245:
	.size	qcc74x_efuse_get_chipid, .-qcc74x_efuse_get_chipid
	.section	.rodata.qcc74x_efuse_get_adc_trim.str1.4,"aMS",@progbits,1
	.align	2
.LC19:
	.string	"gpadc_gain"
	.section	.text.qcc74x_efuse_get_adc_trim,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_get_adc_trim
	.type	qcc74x_efuse_get_adc_trim, @function
qcc74x_efuse_get_adc_trim:
.LFB249:
	.loc 1 555 1 is_stmt 1
	.cfi_startproc
	.loc 1 556 5
	.loc 1 557 5
	.loc 1 559 5
.LVL97:
	.loc 1 561 5
	.loc 1 555 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 561 5
	lui	a1,%hi(.LC19)
	li	a3,1
	addi	a2,sp,8
	addi	a1,a1,%lo(.LC19)
	li	a0,0
	.loc 1 555 1
	sw	s0,24(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 561 5
	call	qcc74x_ef_ctrl_read_common_trim
.LVL98:
	.loc 1 563 5 is_stmt 1
	.loc 1 563 8 is_stmt 0
	lbu	a5,8(sp)
	lui	s0,%hi(.LC18)
	bne	a5,zero,.L78
.L80:
	.loc 1 559 11
	flw	fa0,%lo(.LC18)(s0)
.LVL99:
.L77:
	.loc 1 579 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL100:
.L78:
	.cfi_restore_state
	.loc 1 564 9 is_stmt 1
	.loc 1 564 28 is_stmt 0
	lbu	a1,11(sp)
	lw	a0,12(sp)
	.loc 1 564 17
	lbu	s1,9(sp)
	.loc 1 564 28
	call	qcc74x_ef_ctrl_get_trim_parity
.LVL101:
	.loc 1 564 12
	bne	s1,a0,.L80
	.loc 1 565 13 is_stmt 1
	.loc 1 565 17 is_stmt 0
	lw	a5,12(sp)
.LVL102:
	.loc 1 567 13 is_stmt 1
	.loc 1 567 21 is_stmt 0
	li	a4,4096
	addi	a3,a4,-2048
	and	a3,a5,a3
	lui	a2,%hi(.LC20)
	.loc 1 567 16
	beq	a3,zero,.L81
	.loc 1 568 17 is_stmt 1
.LVL103:
	.loc 1 569 17
	.loc 1 569 21 is_stmt 0
	neg	a5,a5
.LVL104:
	.loc 1 570 17 is_stmt 1
	.loc 1 571 17
	.loc 1 570 21 is_stmt 0
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL105:
	.loc 1 571 32
	fcvt.s.w	fa0,a5
	.loc 1 571 21
	flw	fa4,%lo(.LC20)(a2)
	flw	fa5,%lo(.LC18)(s0)
	fmadd.s	fa0,fa0,fa4,fa5
.LVL106:
	j	.L77
.LVL107:
.L81:
	.loc 1 573 17 is_stmt 1
	.loc 1 573 32 is_stmt 0
	fcvt.s.wu	fa0,a5
	.loc 1 573 21
	flw	fa4,%lo(.LC20)(a2)
	flw	fa5,%lo(.LC18)(s0)
	fnmsub.s	fa0,fa0,fa4,fa5
.LVL108:
	.loc 1 578 5 is_stmt 1
	.loc 1 578 12 is_stmt 0
	j	.L77
	.cfi_endproc
.LFE249:
	.size	qcc74x_efuse_get_adc_trim, .-qcc74x_efuse_get_adc_trim
	.section	.rodata.qcc74x_efuse_get_adc_tsen_trim.str1.4,"aMS",@progbits,1
	.align	2
.LC21:
	.string	"tsen"
	.section	.text.qcc74x_efuse_get_adc_tsen_trim,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_get_adc_tsen_trim
	.type	qcc74x_efuse_get_adc_tsen_trim, @function
qcc74x_efuse_get_adc_tsen_trim:
.LFB250:
	.loc 1 582 1 is_stmt 1
	.cfi_startproc
	.loc 1 583 5
	.loc 1 585 5
	.loc 1 582 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 585 5
	lui	a1,%hi(.LC21)
	li	a3,1
	addi	a2,sp,8
	addi	a1,a1,%lo(.LC21)
	li	a0,0
	.loc 1 582 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 585 5
	call	qcc74x_ef_ctrl_read_common_trim
.LVL109:
	.loc 1 586 5 is_stmt 1
	.loc 1 586 8 is_stmt 0
	lbu	a5,8(sp)
	bne	a5,zero,.L84
.L86:
	.loc 1 592 12
	li	a0,2042
.L83:
	.loc 1 593 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.L84:
	.cfi_restore_state
	.loc 1 587 9 is_stmt 1
	.loc 1 587 28 is_stmt 0
	lbu	a1,11(sp)
	lw	a0,12(sp)
	.loc 1 587 17
	lbu	s0,9(sp)
	.loc 1 587 28
	call	qcc74x_ef_ctrl_get_trim_parity
.LVL110:
	.loc 1 587 12
	bne	s0,a0,.L86
	.loc 1 588 13 is_stmt 1
	.loc 1 588 24 is_stmt 0
	lw	a0,12(sp)
	j	.L83
	.cfi_endproc
.LFE250:
	.size	qcc74x_efuse_get_adc_tsen_trim, .-qcc74x_efuse_get_adc_tsen_trim
	.section	.text.qcc74x_efuse_read_secure_boot,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_read_secure_boot
	.type	qcc74x_efuse_read_secure_boot, @function
qcc74x_efuse_read_secure_boot:
.LFB251:
	.loc 1 596 1 is_stmt 1
	.cfi_startproc
.LVL111:
	.loc 1 597 5
	.loc 1 596 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	mv	s0,a1
	mv	s1,a0
	.loc 1 599 5
	li	a4,1
	addi	a2,sp,12
	li	a3,1
	li	a1,0
.LVL112:
	li	a0,0
.LVL113:
	.loc 1 596 1
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 597 14
	sw	zero,12(sp)
	.loc 1 599 5 is_stmt 1
	call	qcc74x_ef_ctrl_read_direct
.LVL114:
	.loc 1 600 5
	.loc 1 600 54 is_stmt 0
	lw	a5,12(sp)
	.loc 1 602 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 600 63
	extu	a4,a5,7+1-1,7
	.loc 1 600 11
	sb	a4,0(s1)
	.loc 1 601 5 is_stmt 1
	.loc 1 601 47 is_stmt 0
	andi	a5,a5,3
	.loc 1 601 10
	sb	a5,0(s0)
	.loc 1 602 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL115:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL116:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE251:
	.size	qcc74x_efuse_read_secure_boot, .-qcc74x_efuse_read_secure_boot
	.section	.text.qcc74x_efuse_enable_aes,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_enable_aes
	.type	qcc74x_efuse_enable_aes, @function
qcc74x_efuse_enable_aes:
.LFB252:
	.loc 1 605 1 is_stmt 1
	.cfi_startproc
.LVL117:
	.loc 1 606 5
	.loc 1 608 5
	.loc 1 605 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 608 7
	bne	a1,zero,.L91
	.loc 1 606 14
	sw	a0,12(sp)
.LVL118:
.L92:
	.loc 1 612 5 is_stmt 1
	addi	a2,sp,12
	li	a0,0
.LVL119:
	li	a4,1
	li	a3,1
	li	a1,0
	call	qcc74x_ef_ctrl_write_direct
.LVL120:
	.loc 1 614 5
	.loc 1 615 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL121:
.L91:
	.cfi_restore_state
	.loc 1 609 9 is_stmt 1
	.loc 1 609 28 is_stmt 0
	slli	a1,a1,2
.LVL122:
	.loc 1 609 16
	or	a1,a1,a0
	sw	a1,12(sp)
	j	.L92
	.cfi_endproc
.LFE252:
	.size	qcc74x_efuse_enable_aes, .-qcc74x_efuse_enable_aes
	.section	.text.qcc74x_efuse_rw_lock_aes_key,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_rw_lock_aes_key
	.type	qcc74x_efuse_rw_lock_aes_key, @function
qcc74x_efuse_rw_lock_aes_key:
.LFB253:
	.loc 1 618 1 is_stmt 1
	.cfi_startproc
.LVL123:
	.loc 1 619 5
	.loc 1 618 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 619 14
	sw	zero,12(sp)
	.loc 1 621 5 is_stmt 1
	.loc 1 621 7 is_stmt 0
	bne	a0,zero,.L95
	.loc 1 622 9 is_stmt 1
	.loc 1 622 11 is_stmt 0
	beq	a2,zero,.L96
	.loc 1 623 13 is_stmt 1
	.loc 1 623 20 is_stmt 0
	li	a5,524288
	sw	a5,12(sp)
.L96:
	.loc 1 625 9 is_stmt 1
	.loc 1 625 11 is_stmt 0
	beq	a1,zero,.L98
	.loc 1 626 13 is_stmt 1
	.loc 1 626 20 is_stmt 0
	li	a4,536870912
.L128:
	lw	a5,12(sp)
	or	a5,a5,a4
	sw	a5,12(sp)
.L98:
	.loc 1 628 9 is_stmt 1
	li	a4,1
	li	a3,1
	addi	a2,sp,12
.LVL124:
	li	a1,124
.LVL125:
.L130:
	.loc 1 644 9 is_stmt 0
	li	a0,0
.LVL126:
	call	qcc74x_ef_ctrl_write_direct
.LVL127:
.L99:
	.loc 1 655 5 is_stmt 1
	.loc 1 656 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL128:
.L95:
	.cfi_restore_state
	.loc 1 629 11 is_stmt 1
	.loc 1 629 13 is_stmt 0
	li	a5,1
	bne	a0,a5,.L100
	.loc 1 630 9 is_stmt 1
	.loc 1 630 11 is_stmt 0
	beq	a2,zero,.L101
	.loc 1 631 13 is_stmt 1
	.loc 1 631 20 is_stmt 0
	li	a5,1048576
	sw	a5,12(sp)
.L101:
	.loc 1 633 9 is_stmt 1
	.loc 1 634 20 is_stmt 0
	li	a4,1073741824
	.loc 1 633 11
	bne	a1,zero,.L128
	j	.L98
.L100:
	.loc 1 637 11 is_stmt 1
	.loc 1 637 13 is_stmt 0
	li	a5,2
	bne	a0,a5,.L103
	.loc 1 638 9 is_stmt 1
	.loc 1 638 11 is_stmt 0
	beq	a2,zero,.L104
	.loc 1 639 13 is_stmt 1
	.loc 1 639 20 is_stmt 0
	li	a5,32768
	sw	a5,12(sp)
.L104:
	.loc 1 641 9 is_stmt 1
	.loc 1 641 11 is_stmt 0
	beq	a1,zero,.L106
	.loc 1 642 13 is_stmt 1
	.loc 1 642 20 is_stmt 0
	li	a4,33554432
.L129:
	lw	a5,12(sp)
	or	a5,a5,a4
	sw	a5,12(sp)
.L106:
	.loc 1 644 9 is_stmt 1
	li	a4,1
	li	a3,1
	addi	a2,sp,12
.LVL129:
	li	a1,252
.LVL130:
	j	.L130
.LVL131:
.L103:
	.loc 1 645 11
	.loc 1 645 13 is_stmt 0
	li	a5,3
	bne	a0,a5,.L99
	.loc 1 646 9 is_stmt 1
	.loc 1 646 11 is_stmt 0
	beq	a2,zero,.L107
	.loc 1 647 13 is_stmt 1
	.loc 1 647 20 is_stmt 0
	li	a5,65536
	sw	a5,12(sp)
.L107:
	.loc 1 649 9 is_stmt 1
	.loc 1 650 20 is_stmt 0
	li	a4,67108864
	.loc 1 649 11
	bne	a1,zero,.L129
	j	.L106
	.cfi_endproc
.LFE253:
	.size	qcc74x_efuse_rw_lock_aes_key, .-qcc74x_efuse_rw_lock_aes_key
	.section	.text.qcc74x_efuse_rw_lock_dbg_key,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_rw_lock_dbg_key
	.type	qcc74x_efuse_rw_lock_dbg_key, @function
qcc74x_efuse_rw_lock_dbg_key:
.LFB254:
	.loc 1 659 1 is_stmt 1
	.cfi_startproc
.LVL132:
	.loc 1 660 5
	.loc 1 662 5
	.loc 1 659 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 662 7
	bne	a1,zero,.L132
	.loc 1 660 14
	sw	zero,12(sp)
.L133:
	.loc 1 666 5 is_stmt 1
	.loc 1 666 7 is_stmt 0
	beq	a0,zero,.L134
	.loc 1 667 9 is_stmt 1
	.loc 1 667 16 is_stmt 0
	lw	a5,12(sp)
	li	a4,67108864
	or	a5,a5,a4
	sw	a5,12(sp)
.L134:
	.loc 1 670 5 is_stmt 1
	addi	a2,sp,12
	li	a0,0
.LVL133:
	li	a4,1
	li	a3,1
	li	a1,124
.LVL134:
	call	qcc74x_ef_ctrl_write_direct
.LVL135:
	.loc 1 672 5
	.loc 1 673 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL136:
.L132:
	.cfi_restore_state
	.loc 1 663 9 is_stmt 1
	.loc 1 663 16 is_stmt 0
	li	a5,32768
	sw	a5,12(sp)
	j	.L133
	.cfi_endproc
.LFE254:
	.size	qcc74x_efuse_rw_lock_dbg_key, .-qcc74x_efuse_rw_lock_dbg_key
	.section	.text.qcc74x_efuse_write_lock_pk_hash,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_write_lock_pk_hash
	.type	qcc74x_efuse_write_lock_pk_hash, @function
qcc74x_efuse_write_lock_pk_hash:
.LFB255:
	.loc 1 676 1 is_stmt 1
	.cfi_startproc
.LVL137:
	.loc 1 677 5
	.loc 1 679 5
	.loc 1 676 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 679 7
	li	a4,256
	.loc 1 682 15
	li	a5,131072
	.loc 1 679 7
	bne	a0,a4,.L140
	li	a5,393216
.L140:
	.loc 1 685 5
	addi	a2,sp,12
	li	a0,0
.LVL138:
	li	a4,1
	li	a3,1
	li	a1,124
	sw	a5,12(sp)
	.loc 1 685 5 is_stmt 1
	call	qcc74x_ef_ctrl_write_direct
.LVL139:
	.loc 1 687 5
	.loc 1 688 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE255:
	.size	qcc74x_efuse_write_lock_pk_hash, .-qcc74x_efuse_write_lock_pk_hash
	.section	.text.qcc74x_efuse_write_lock_usb_pid_vid,"ax",@progbits
	.align	1
	.globl	qcc74x_efuse_write_lock_usb_pid_vid
	.type	qcc74x_efuse_write_lock_usb_pid_vid, @function
qcc74x_efuse_write_lock_usb_pid_vid:
.LFB256:
	.loc 1 691 1 is_stmt 1
	.cfi_startproc
	.loc 1 692 5
	.loc 1 693 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE256:
	.size	qcc74x_efuse_write_lock_usb_pid_vid, .-qcc74x_efuse_write_lock_usb_pid_vid
	.section	.rodata.str1.4
	.align	2
.LC22:
	.string	"ldo15"
	.align	2
.LC23:
	.string	"iptat"
	.align	2
.LC24:
	.string	"icx"
	.align	2
.LC25:
	.string	"dcdc_trim"
	.align	2
.LC26:
	.string	"ldo18_sel"
	.align	2
.LC27:
	.string	"ldo18_trim"
	.align	2
.LC28:
	.string	"ldo33_trim"
	.align	2
.LC29:
	.string	"ldo11_tirm"
	.align	2
.LC30:
	.string	"rc32m"
	.align	2
.LC31:
	.string	"hp_poffset0"
	.align	2
.LC32:
	.string	"hp_poffset1"
	.align	2
.LC33:
	.string	"hp_poffset2"
	.align	2
.LC34:
	.string	"lp_poffset0"
	.align	2
.LC35:
	.string	"lp_poffset1"
	.align	2
.LC36:
	.string	"lp_poffset2"
	.align	2
.LC37:
	.string	"bz_poffset0"
	.align	2
.LC38:
	.string	"bz_poffset1"
	.align	2
.LC39:
	.string	"bz_poffset2"
	.align	2
.LC40:
	.string	"tmp_mp0"
	.align	2
.LC41:
	.string	"tmp_mp1"
	.align	2
.LC42:
	.string	"tmp_mp2"
	.align	2
.LC43:
	.string	"auadc_gain"
	.align	2
.LC44:
	.string	"auadc_offset"
	.align	2
.LC45:
	.string	"psram_trim"
	.align	2
.LC46:
	.string	"rc32k"
	.align	2
.LC47:
	.string	"xtal0"
	.align	2
.LC48:
	.string	"xtal1"
	.align	2
.LC49:
	.string	"xtal2"
	.align	2
.LC50:
	.string	"dcdc_dis"
	.align	2
.LC51:
	.string	"dcdc_vout"
	.align	2
.LC52:
	.string	"ldo18_bypass"
	.align	2
.LC53:
	.string	"usb20"
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC18:
	.word	1065353216
	.align	2
.LC20:
	.word	973078528
	.section	.rodata.trim_list,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	trim_list, @object
	.size	trim_list, 408
trim_list:
	.word	.LC22
	.half	863
	.half	862
	.half	859
	.half	3
	.word	.LC23
	.half	959
	.half	958
	.half	854
	.half	5
	.word	.LC24
	.half	957
	.half	956
	.half	950
	.half	6
	.word	.LC25
	.half	991
	.half	990
	.half	986
	.half	4
	.word	.LC26
	.half	985
	.half	984
	.half	980
	.half	4
	.word	.LC27
	.half	979
	.half	978
	.half	974
	.half	4
	.word	.LC28
	.half	973
	.half	972
	.half	968
	.half	4
	.word	.LC29
	.half	967
	.half	966
	.half	962
	.half	4
	.word	.LC30
	.half	961
	.half	960
	.half	996
	.half	8
	.word	.LC31
	.half	1658
	.half	1551
	.half	1536
	.half	15
	.word	.LC32
	.half	1659
	.half	1567
	.half	1552
	.half	15
	.word	.LC33
	.half	1660
	.half	1583
	.half	1568
	.half	15
	.word	.LC34
	.half	1661
	.half	1599
	.half	1584
	.half	15
	.word	.LC35
	.half	1662
	.half	1615
	.half	1600
	.half	15
	.word	.LC36
	.half	1663
	.half	1631
	.half	1616
	.half	15
	.word	.LC37
	.half	1690
	.half	1657
	.half	1632
	.half	25
	.word	.LC38
	.half	1691
	.half	1689
	.half	1664
	.half	25
	.word	.LC39
	.half	1692
	.half	1721
	.half	1696
	.half	25
	.word	.LC40
	.half	1737
	.half	1736
	.half	1728
	.half	8
	.word	.LC41
	.half	1747
	.half	1746
	.half	1738
	.half	8
	.word	.LC42
	.half	1757
	.half	1756
	.half	1748
	.half	8
	.word	.LC43
	.half	1785
	.half	1784
	.half	1760
	.half	24
	.word	.LC44
	.half	1817
	.half	1816
	.half	1792
	.half	24
	.word	.LC45
	.half	1868
	.half	1867
	.half	1856
	.half	11
	.word	.LC46
	.half	1907
	.half	1906
	.half	1896
	.half	10
	.word	.LC47
	.half	1895
	.half	1894
	.half	1888
	.half	6
	.word	.LC48
	.half	1951
	.half	1950
	.half	1978
	.half	6
	.word	.LC49
	.half	1949
	.half	1948
	.half	1972
	.half	6
	.word	.LC19
	.half	1947
	.half	1946
	.half	1934
	.half	12
	.word	.LC21
	.half	1933
	.half	1932
	.half	1920
	.half	12
	.word	.LC50
	.half	1971
	.half	1970
	.half	1969
	.half	1
	.word	.LC51
	.half	1968
	.half	1967
	.half	1962
	.half	5
	.word	.LC52
	.half	1961
	.half	1960
	.half	1956
	.half	1
	.word	.LC53
	.half	1999
	.half	1998
	.half	1992
	.half	6
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_ef_ctrl.h"
	.file 5 "./drivers/lhal/include/qcc74x_efuse.h"
	.file 6 "./drivers/soc/qcc743/std/include/qcc743_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xb16
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF84
	.byte	0xc
	.4byte	.LASF85
	.4byte	.LASF86
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
	.4byte	0xd1
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x6
	.4byte	0xd1
	.byte	0x5
	.byte	0x4
	.4byte	0xd8
	.byte	0x7
	.byte	0xc
	.byte	0x4
	.byte	0x1b
	.byte	0x9
	.4byte	0x12e
	.byte	0x8
	.4byte	.LASF18
	.byte	0x4
	.byte	0x1d
	.byte	0xb
	.4byte	0xcb
	.byte	0
	.byte	0x8
	.4byte	.LASF19
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0x8
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1f
	.byte	0xe
	.4byte	0xa7
	.byte	0x6
	.byte	0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x20
	.byte	0xe
	.4byte	0xa7
	.byte	0x8
	.byte	0x8
	.4byte	.LASF22
	.byte	0x4
	.byte	0x21
	.byte	0xe
	.4byte	0xa7
	.byte	0xa
	.byte	0
	.byte	0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x22
	.byte	0x3
	.4byte	0xe3
	.byte	0x6
	.4byte	0x12e
	.byte	0x7
	.byte	0x8
	.byte	0x4
	.byte	0x27
	.byte	0x9
	.4byte	0x189
	.byte	0x9
	.string	"en"
	.byte	0x4
	.byte	0x29
	.byte	0xd
	.4byte	0x9b
	.byte	0
	.byte	0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x2a
	.byte	0xd
	.4byte	0x9b
	.byte	0x1
	.byte	0x8
	.4byte	.LASF25
	.byte	0x4
	.byte	0x2b
	.byte	0xd
	.4byte	0x9b
	.byte	0x2
	.byte	0x9
	.string	"len"
	.byte	0x4
	.byte	0x2c
	.byte	0xd
	.4byte	0x9b
	.byte	0x3
	.byte	0x8
	.4byte	.LASF26
	.byte	0x4
	.byte	0x2d
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF27
	.byte	0x4
	.byte	0x2e
	.byte	0x3
	.4byte	0x13f
	.byte	0x7
	.byte	0x24
	.byte	0x5
	.byte	0xa
	.byte	0x9
	.4byte	0x214
	.byte	0x8
	.4byte	.LASF28
	.byte	0x5
	.byte	0xc
	.byte	0xd
	.4byte	0x9b
	.byte	0
	.byte	0x8
	.4byte	.LASF29
	.byte	0x5
	.byte	0xd
	.byte	0xd
	.4byte	0x9b
	.byte	0x1
	.byte	0x8
	.4byte	.LASF30
	.byte	0x5
	.byte	0x12
	.byte	0xd
	.4byte	0x9b
	.byte	0x2
	.byte	0x8
	.4byte	.LASF31
	.byte	0x5
	.byte	0x17
	.byte	0xd
	.4byte	0x9b
	.byte	0x3
	.byte	0x8
	.4byte	.LASF32
	.byte	0x5
	.byte	0x1a
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0x8
	.4byte	.LASF33
	.byte	0x5
	.byte	0x1c
	.byte	0x11
	.4byte	0xdd
	.byte	0x8
	.byte	0x8
	.4byte	.LASF34
	.byte	0x5
	.byte	0x1d
	.byte	0x11
	.4byte	0xdd
	.byte	0xc
	.byte	0x8
	.4byte	.LASF35
	.byte	0x5
	.byte	0x20
	.byte	0x11
	.4byte	0xdd
	.byte	0x10
	.byte	0x8
	.4byte	.LASF36
	.byte	0x5
	.byte	0x23
	.byte	0xa
	.4byte	0x214
	.byte	0x14
	.byte	0
	.byte	0xa
	.4byte	0xd1
	.4byte	0x224
	.byte	0xb
	.4byte	0x94
	.byte	0xf
	.byte	0
	.byte	0x3
	.4byte	.LASF37
	.byte	0x5
	.byte	0x25
	.byte	0x3
	.4byte	0x195
	.byte	0xa
	.4byte	0x13a
	.4byte	0x240
	.byte	0xb
	.4byte	0x94
	.byte	0x21
	.byte	0
	.byte	0x6
	.4byte	0x230
	.byte	0xc
	.4byte	.LASF38
	.byte	0x1
	.byte	0x6
	.byte	0x2c
	.4byte	0x240
	.byte	0x5
	.byte	0x3
	.4byte	trim_list
	.byte	0xd
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x2b2
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB256
	.4byte	.LFE256-.LFB256
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x2a3
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB255
	.4byte	.LFE255-.LFB255
	.byte	0x1
	.byte	0x9c
	.4byte	0x2d0
	.byte	0xf
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x2a3
	.byte	0x2e
	.4byte	0xb3
	.4byte	.LLST40
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x2a5
	.byte	0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.4byte	.LVL139
	.4byte	0xab9
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x7c
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x292
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB254
	.4byte	.LFE254-.LFB254
	.byte	0x1
	.byte	0x9c
	.4byte	0x343
	.byte	0xf
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x292
	.byte	0x2a
	.4byte	0x9b
	.4byte	.LLST38
	.byte	0xf
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x292
	.byte	0x3b
	.4byte	0x9b
	.4byte	.LLST39
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x294
	.byte	0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.4byte	.LVL135
	.4byte	0xab9
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x7c
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x269
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.byte	0x1
	.byte	0x9c
	.4byte	0x3b1
	.byte	0xf
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x269
	.byte	0x2a
	.4byte	0x9b
	.4byte	.LLST35
	.byte	0xf
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x269
	.byte	0x3d
	.4byte	0x9b
	.4byte	.LLST36
	.byte	0xf
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x269
	.byte	0x4e
	.4byte	0x9b
	.4byte	.LLST37
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x26b
	.byte	0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.4byte	.LVL127
	.4byte	0xab9
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x25c
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.byte	0x1
	.byte	0x9c
	.4byte	0x423
	.byte	0xf
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x25c
	.byte	0x25
	.4byte	0x9b
	.4byte	.LLST33
	.byte	0xf
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x25c
	.byte	0x37
	.4byte	0x9b
	.4byte	.LLST34
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x25e
	.byte	0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.4byte	.LVL120
	.4byte	0xab9
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x253
	.byte	0x6
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.byte	0x1
	.byte	0x9c
	.4byte	0x491
	.byte	0xf
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x253
	.byte	0x2d
	.4byte	0x491
	.4byte	.LLST31
	.byte	0x14
	.string	"aes"
	.byte	0x1
	.2byte	0x253
	.byte	0x3c
	.4byte	0x491
	.4byte	.LLST32
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x255
	.byte	0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x11
	.4byte	.LVL114
	.4byte	0xac5
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x9b
	.byte	0xe
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x245
	.byte	0xa
	.4byte	0xb3
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f3
	.byte	0x10
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x247
	.byte	0x1f
	.4byte	0x189
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x15
	.4byte	.LVL109
	.4byte	0xad1
	.4byte	0x4e9
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC21
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x16
	.4byte	.LVL110
	.4byte	0xadd
	.byte	0
	.byte	0xe
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x22a
	.byte	0x7
	.4byte	0x571
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.byte	0x1
	.byte	0x9c
	.4byte	0x571
	.byte	0x10
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x22c
	.byte	0x1f
	.4byte	0x189
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x17
	.string	"tmp"
	.byte	0x1
	.2byte	0x22d
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST29
	.byte	0x17
	.string	"coe"
	.byte	0x1
	.2byte	0x22f
	.byte	0xb
	.4byte	0x571
	.4byte	.LLST30
	.byte	0x15
	.4byte	.LVL98
	.4byte	0xad1
	.4byte	0x567
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC19
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x16
	.4byte	.LVL101
	.4byte	0xadd
	.byte	0
	.byte	0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF54
	.byte	0xe
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1f7
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.byte	0x1
	.byte	0x9c
	.4byte	0x63e
	.byte	0xf
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1f7
	.byte	0x2f
	.4byte	0x9b
	.4byte	.LLST21
	.byte	0x14
	.string	"mac"
	.byte	0x1
	.2byte	0x1f7
	.byte	0x3d
	.4byte	0x491
	.4byte	.LLST22
	.byte	0xf
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x1f7
	.byte	0x4d
	.4byte	0x9b
	.4byte	.LLST23
	.byte	0x18
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1f9
	.byte	0xe
	.4byte	0x491
	.4byte	.LLST24
	.byte	0x18
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1fa
	.byte	0xe
	.4byte	0x491
	.4byte	.LLST25
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1fb
	.byte	0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"i"
	.byte	0x1
	.2byte	0x1fc
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST26
	.byte	0x17
	.string	"cnt"
	.byte	0x1
	.2byte	0x1fd
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST27
	.byte	0x16
	.4byte	.LVL81
	.4byte	0xac5
	.byte	0x15
	.4byte	.LVL82
	.4byte	0xac5
	.4byte	0x634
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x16
	.4byte	.LVL85
	.4byte	0xae9
	.byte	0
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1bb
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.byte	0x1
	.byte	0x9c
	.4byte	0x70a
	.byte	0xf
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x1bb
	.byte	0x30
	.4byte	0x9b
	.4byte	.LLST14
	.byte	0x14
	.string	"mac"
	.byte	0x1
	.2byte	0x1bb
	.byte	0x3e
	.4byte	0x491
	.4byte	.LLST15
	.byte	0xf
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1bb
	.byte	0x4e
	.4byte	0x9b
	.4byte	.LLST16
	.byte	0x18
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x1bd
	.byte	0xe
	.4byte	0x491
	.4byte	.LLST17
	.byte	0x18
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1be
	.byte	0xe
	.4byte	0x491
	.4byte	.LLST18
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x1bf
	.byte	0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x17
	.string	"i"
	.byte	0x1
	.2byte	0x1c0
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST19
	.byte	0x17
	.string	"cnt"
	.byte	0x1
	.2byte	0x1c0
	.byte	0x15
	.4byte	0xb3
	.4byte	.LLST20
	.byte	0x15
	.4byte	.LVL61
	.4byte	0xab9
	.4byte	0x6f1
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x16
	.4byte	.LVL66
	.4byte	0xae9
	.byte	0x11
	.4byte	.LVL69
	.4byte	0xab9
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x19b
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.byte	0x1
	.byte	0x9c
	.4byte	0x838
	.byte	0xf
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x19b
	.byte	0x38
	.4byte	0x9b
	.4byte	.LLST10
	.byte	0xf
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x19b
	.byte	0x46
	.4byte	0x9b
	.4byte	.LLST11
	.byte	0x10
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x19d
	.byte	0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x10
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x19d
	.byte	0x21
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x18
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x19e
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST12
	.byte	0x18
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x19e
	.byte	0x1e
	.4byte	0xb3
	.4byte	.LLST13
	.byte	0x15
	.4byte	.LVL39
	.4byte	0xac5
	.4byte	0x7af
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x44
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x4
	.byte	0x91
	.byte	0x5c
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x15
	.4byte	.LVL40
	.4byte	0xac5
	.4byte	0x7c2
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x15
	.4byte	.LVL41
	.4byte	0xaf5
	.4byte	0x7db
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x15
	.4byte	.LVL43
	.4byte	0xaf5
	.4byte	0x7f3
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x46
	.byte	0
	.byte	0x15
	.4byte	.LVL49
	.4byte	0xac5
	.4byte	0x817
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x11
	.4byte	.LVL53
	.4byte	0xac5
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x70
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x18a
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.byte	0x1
	.byte	0x9c
	.4byte	0x880
	.byte	0xf
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x18a
	.byte	0x25
	.4byte	0x491
	.4byte	.LLST28
	.byte	0x19
	.4byte	.LVL96
	.4byte	0x578
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x11f
	.byte	0x62
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.byte	0x1
	.byte	0x9c
	.4byte	0xa2f
	.byte	0xf
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x11f
	.byte	0x9e
	.4byte	0xa2f
	.4byte	.LLST4
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x121
	.byte	0xe
	.4byte	0xb3
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x17
	.string	"idx"
	.byte	0x1
	.2byte	0x122
	.byte	0xb
	.4byte	0xcb
	.4byte	.LLST5
	.byte	0x1a
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x93d
	.byte	0x17
	.string	"ss"
	.byte	0x1
	.2byte	0x16c
	.byte	0x12
	.4byte	0xa7
	.4byte	.LLST6
	.byte	0x17
	.string	"tt"
	.byte	0x1
	.2byte	0x16c
	.byte	0x16
	.4byte	0xa7
	.4byte	.LLST7
	.byte	0x15
	.4byte	.LVL24
	.4byte	0xa35
	.4byte	0x90a
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL26
	.4byte	0xb01
	.4byte	0x92c
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x11
	.4byte	.LVL27
	.4byte	0xa35
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x4
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x9ac
	.byte	0x17
	.string	"tt"
	.byte	0x1
	.2byte	0x176
	.byte	0x12
	.4byte	0xa7
	.4byte	.LLST8
	.byte	0x17
	.string	"ff"
	.byte	0x1
	.2byte	0x176
	.byte	0x16
	.4byte	0xa7
	.4byte	.LLST9
	.byte	0x16
	.4byte	.LVL31
	.4byte	0xa35
	.byte	0x15
	.4byte	.LVL33
	.4byte	0xb01
	.4byte	0x995
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC13
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x11
	.4byte	.LVL34
	.4byte	0xa35
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0x4
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x15
	.4byte	.LVL12
	.4byte	0xac5
	.4byte	0x9d4
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x12
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x48
	.byte	0x12
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x12
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0x12
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x15
	.4byte	.LVL13
	.4byte	0xb0d
	.4byte	0x9e8
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x6e
	.byte	0
	.byte	0x15
	.4byte	.LVL14
	.4byte	0xb0d
	.4byte	0x9fc
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x6e
	.byte	0
	.byte	0x15
	.4byte	.LVL15
	.4byte	0xb0d
	.4byte	0xa10
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x6e
	.byte	0
	.byte	0x15
	.4byte	.LVL16
	.4byte	0xb0d
	.4byte	0xa25
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x44c
	.byte	0
	.byte	0x16
	.4byte	.LVL19
	.4byte	0xb01
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0x224
	.byte	0x1b
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x105
	.byte	0x6b
	.4byte	0xcb
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x1
	.byte	0x9c
	.4byte	0xa82
	.byte	0xf
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x105
	.byte	0x8b
	.4byte	0xcb
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x105
	.byte	0x9b
	.4byte	0x9b
	.4byte	.LLST1
	.byte	0x17
	.string	"i"
	.byte	0x1
	.2byte	0x107
	.byte	0xd
	.4byte	0x9b
	.4byte	.LLST2
	.byte	0
	.byte	0x1c
	.4byte	.LASF74
	.byte	0x1
	.byte	0xff
	.byte	0xa
	.4byte	0xb3
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0xaad
	.byte	0x1d
	.4byte	.LASF75
	.byte	0x1
	.byte	0xff
	.byte	0x54
	.4byte	0xaad
	.4byte	.LLST3
	.byte	0
	.byte	0x5
	.byte	0x4
	.4byte	0xab3
	.byte	0x5
	.byte	0x4
	.4byte	0x13a
	.byte	0x1e
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x4
	.byte	0x63
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x4
	.byte	0x6e
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x4
	.byte	0x78
	.byte	0x6
	.byte	0x1e
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x4
	.byte	0x9d
	.byte	0x9
	.byte	0x1e
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x4
	.byte	0x94
	.byte	0xa
	.byte	0x1e
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x4
	.byte	0x8c
	.byte	0x9
	.byte	0x1e
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x6
	.byte	0xb2
	.byte	0x7
	.byte	0x1e
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x6
	.byte	0xaf
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
	.byte	0x49
	.byte	0x13
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x2e
	.byte	0
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
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST40:
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL138
	.4byte	.LFE255
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL133
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LFE254
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL132
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LFE254
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL123
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LFE253
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL123
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL125
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE253
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL124
	.4byte	.LVL128
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LFE253
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LFE252
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL118
	.4byte	.LVL121
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL122
	.4byte	.LFE252
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL116
	.4byte	.LFE251
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL115
	.4byte	.LFE251
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x4
	.byte	0x7f
	.byte	0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x9
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x1f
	.byte	0xa
	.2byte	0xfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LFE249
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL97
	.4byte	.LVL99
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x3f800000
	.4byte	.LVL100
	.4byte	.LVL106
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x3f800000
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x3f800000
	.4byte	.LVL108
	.4byte	.LFE249
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL92
	.4byte	.LFE248
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL80
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93
	.4byte	.LFE248
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL79
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL91
	.4byte	.LFE248
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL80
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93
	.4byte	.LFE248
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x7b
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL89
	.2byte	0x3
	.byte	0x78
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x3
	.byte	0x78
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LFE248
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL78
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL78
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL76
	.4byte	.LFE247
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL58
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LFE247
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL54
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL59
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE247
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL58
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL75
	.4byte	.LFE247
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x7b
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL70
	.2byte	0x3
	.byte	0x78
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x3
	.byte	0x78
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LFE247
	.2byte	0x3
	.byte	0x7b
	.byte	0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x3
	.byte	0x83
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL75
	.4byte	.LFE247
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL36
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39-1
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LFE246
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38
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
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL51
	.4byte	.LFE246
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x78
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE246
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE246
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL96-1
	.4byte	.LFE245
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL24-1
	.2byte	0x3
	.byte	0x7a
	.byte	0x6c
	.byte	0x9f
	.4byte	.LVL24-1
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0x3
	.byte	0x7a
	.byte	0x6c
	.byte	0x9f
	.4byte	.LVL31-1
	.4byte	.LVL35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LFE244
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24-1
	.4byte	.LVL25
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x14
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL27
	.4byte	.LVL31-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31-1
	.4byte	.LVL32
	.2byte	0x6
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x14
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LFE244
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL28
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x6
	.byte	0x8
	.byte	0x64
	.byte	0x78
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE243
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL7
	.4byte	.LFE243
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6
	.4byte	.LFE243
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LFE242
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x8c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.4byte	.LFB249
	.4byte	.LFE249-.LFB249
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.4byte	.LFB252
	.4byte	.LFE252-.LFB252
	.4byte	.LFB253
	.4byte	.LFE253-.LFB253
	.4byte	.LFB254
	.4byte	.LFE254-.LFB254
	.4byte	.LFB255
	.4byte	.LFE255-.LFB255
	.4byte	.LFB256
	.4byte	.LFE256-.LFB256
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB243
	.4byte	.LFE243
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB244
	.4byte	.LFE244
	.4byte	.LFB246
	.4byte	.LFE246
	.4byte	.LFB247
	.4byte	.LFE247
	.4byte	.LFB248
	.4byte	.LFE248
	.4byte	.LFB245
	.4byte	.LFE245
	.4byte	.LFB249
	.4byte	.LFE249
	.4byte	.LFB250
	.4byte	.LFE250
	.4byte	.LFB251
	.4byte	.LFE251
	.4byte	.LFB252
	.4byte	.LFE252
	.4byte	.LFB253
	.4byte	.LFE253
	.4byte	.LFB254
	.4byte	.LFE254
	.4byte	.LFB255
	.4byte	.LFE255
	.4byte	.LFB256
	.4byte	.LFE256
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF38:
	.string	"trim_list"
.LASF86:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/soc/qcc743/std"
.LASF52:
	.string	"trim"
.LASF83:
	.string	"arch_delay_us"
.LASF31:
	.string	"version"
.LASF21:
	.string	"value_addr"
.LASF77:
	.string	"qcc74x_ef_ctrl_read_direct"
.LASF45:
	.string	"qcc74x_efuse_rw_lock_aes_key"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"parity_addr"
.LASF78:
	.string	"qcc74x_ef_ctrl_read_common_trim"
.LASF42:
	.string	"pkhash_len"
.LASF41:
	.string	"qcc74x_efuse_rw_lock_dbg_key"
.LASF7:
	.string	"__uint32_t"
.LASF79:
	.string	"qcc74x_ef_ctrl_get_trim_parity"
.LASF4:
	.string	"__uint16_t"
.LASF74:
	.string	"qcc74x_ef_ctrl_get_common_trim_list"
.LASF26:
	.string	"value"
.LASF47:
	.string	"qcc74x_efuse_enable_aes"
.LASF28:
	.string	"package"
.LASF27:
	.string	"qcc74x_ef_ctrl_com_trim_t"
.LASF34:
	.string	"flash_info_name"
.LASF82:
	.string	"arch_memcpy"
.LASF61:
	.string	"program"
.LASF68:
	.string	"chipid"
.LASF16:
	.string	"uintptr_t"
.LASF54:
	.string	"float"
.LASF55:
	.string	"qcc74x_efuse_read_mac_address_opt"
.LASF9:
	.string	"long long int"
.LASF10:
	.string	"long long unsigned int"
.LASF40:
	.string	"qcc74x_efuse_write_lock_pk_hash"
.LASF46:
	.string	"key_index"
.LASF6:
	.string	"long int"
.LASF43:
	.string	"rd_lock"
.LASF53:
	.string	"qcc74x_efuse_get_adc_trim"
.LASF76:
	.string	"qcc74x_ef_ctrl_write_direct"
.LASF3:
	.string	"__uint8_t"
.LASF24:
	.string	"parity"
.LASF22:
	.string	"value_len"
.LASF25:
	.string	"empty"
.LASF18:
	.string	"name"
.LASF36:
	.string	"process_corner_name"
.LASF33:
	.string	"package_name"
.LASF1:
	.string	"unsigned char"
.LASF0:
	.string	"signed char"
.LASF67:
	.string	"qcc74x_efuse_get_chipid"
.LASF15:
	.string	"uint32_t"
.LASF51:
	.string	"qcc74x_efuse_get_adc_tsen_trim"
.LASF14:
	.string	"uint16_t"
.LASF29:
	.string	"flash_info"
.LASF56:
	.string	"slot"
.LASF19:
	.string	"en_addr"
.LASF80:
	.string	"qcc74x_ef_ctrl_get_byte_zero_cnt"
.LASF75:
	.string	"ptrim_list"
.LASF58:
	.string	"maclow"
.LASF44:
	.string	"wr_lock"
.LASF5:
	.string	"short unsigned int"
.LASF60:
	.string	"qcc74x_efuse_write_mac_address_opt"
.LASF17:
	.string	"char"
.LASF69:
	.string	"qcc74x_efuse_read_secure_boot"
.LASF32:
	.string	"process_corner"
.LASF35:
	.string	"psram_info_name"
.LASF48:
	.string	"aes_type"
.LASF85:
	.string	"./drivers/soc/qcc743/std/src/qcc743_ef_cfg.c"
.LASF62:
	.string	"qcc74x_efuse_is_mac_address_slot_empty"
.LASF63:
	.string	"tmp1"
.LASF64:
	.string	"tmp2"
.LASF72:
	.string	"buffer"
.LASF84:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF8:
	.string	"long unsigned int"
.LASF50:
	.string	"sign"
.LASF11:
	.string	"__uintptr_t"
.LASF70:
	.string	"qcc74x_efuse_get_device_info"
.LASF87:
	.string	"qcc74x_efuse_write_lock_usb_pid_vid"
.LASF23:
	.string	"qcc74x_ef_ctrl_com_trim_cfg_t"
.LASF13:
	.string	"uint8_t"
.LASF71:
	.string	"device_info"
.LASF30:
	.string	"psram_info"
.LASF49:
	.string	"xts_mode"
.LASF81:
	.string	"qcc74x_ef_ctrl_is_all_bits_zero"
.LASF57:
	.string	"reload"
.LASF37:
	.string	"qcc74x_efuse_device_info_type"
.LASF59:
	.string	"machigh"
.LASF65:
	.string	"part1Empty"
.LASF73:
	.string	"number"
.LASF12:
	.string	"unsigned int"
.LASF39:
	.string	"tmpval"
.LASF66:
	.string	"part2Empty"
.LASF88:
	.string	"qcc74x_efuse_print_number"
	.ident	"GCC: (GNU) 10.4.0"
