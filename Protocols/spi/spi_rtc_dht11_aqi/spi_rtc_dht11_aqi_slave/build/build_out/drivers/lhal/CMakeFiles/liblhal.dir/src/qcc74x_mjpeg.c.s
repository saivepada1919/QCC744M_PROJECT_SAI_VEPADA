	.file	"qcc74x_mjpeg.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_mjpeg_set_framesize.isra.0,"ax",@progbits
	.align	1
	.type	qcc74x_mjpeg_set_framesize.isra.0, @function
qcc74x_mjpeg_set_framesize.isra.0:
.LFB33:
	.file 1 "./drivers/lhal/src/qcc74x_mjpeg.c"
	.loc 1 47 37
	.cfi_startproc
.LVL0:
	.loc 1 49 5
	.loc 1 50 5
	.loc 1 52 5
	.loc 1 54 5
	.loc 1 55 5
	.loc 1 56 5
	.loc 1 56 18 is_stmt 0
	slli	a2,a2,16
.LVL1:
	.loc 1 56 12
	or	a2,a2,a1
.LVL2:
	.loc 1 57 5 is_stmt 1
	.loc 1 57 59 is_stmt 0
	sw	a2,36(a0)
	.loc 1 58 1
	ret
	.cfi_endproc
.LFE33:
	.size	qcc74x_mjpeg_set_framesize.isra.0, .-qcc74x_mjpeg_set_framesize.isra.0
	.section	.text.qcc74x_mjpeg_start,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_start
	.type	qcc74x_mjpeg_start, @function
qcc74x_mjpeg_start:
.LFB8:
	.loc 1 239 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 243 5
	.loc 1 244 5
	.loc 1 246 5
	.loc 1 248 5
	.loc 1 248 16 is_stmt 0
	lw	a4,4(a0)
	.loc 1 248 12
	lw	a5,0(a4)
.LVL4:
	.loc 1 249 5 is_stmt 1
	.loc 1 249 12 is_stmt 0
	ori	a5,a5,1
.LVL5:
	.loc 1 250 5 is_stmt 1
	.loc 1 250 58 is_stmt 0
	sw	a5,0(a4)
.LVL6:
	.loc 1 252 1
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_mjpeg_start, .-qcc74x_mjpeg_start
	.section	.text.qcc74x_mjpeg_stop,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_stop
	.type	qcc74x_mjpeg_stop, @function
qcc74x_mjpeg_stop:
.LFB9:
	.loc 1 255 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 259 5
	.loc 1 260 5
	.loc 1 262 5
	.loc 1 264 5
	.loc 1 264 16 is_stmt 0
	lw	a4,4(a0)
	.loc 1 264 12
	lw	a5,0(a4)
.LVL8:
	.loc 1 265 5 is_stmt 1
	.loc 1 265 12 is_stmt 0
	andi	a5,a5,-2
.LVL9:
	.loc 1 266 5 is_stmt 1
	.loc 1 266 58 is_stmt 0
	sw	a5,0(a4)
.LVL10:
	.loc 1 268 1
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_mjpeg_stop, .-qcc74x_mjpeg_stop
	.section	.text.qcc74x_mjpeg_sw_run,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_sw_run
	.type	qcc74x_mjpeg_sw_run, @function
qcc74x_mjpeg_sw_run:
.LFB10:
	.loc 1 271 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 275 5
	.loc 1 276 5
	.loc 1 278 5
	.loc 1 280 5
	.loc 1 280 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 280 12
	lw	a4,4(a5)
.LVL12:
	.loc 1 281 5 is_stmt 1
	.loc 1 282 5
	.loc 1 282 12 is_stmt 0
	andi	a4,a4,-160
.LVL13:
	.loc 1 283 5 is_stmt 1
	.loc 1 283 12 is_stmt 0
	or	a1,a1,a4
.LVL14:
	.loc 1 284 5 is_stmt 1
	.loc 1 284 12 is_stmt 0
	ori	a1,a1,256
.LVL15:
	.loc 1 285 5 is_stmt 1
	.loc 1 285 58 is_stmt 0
	sw	a1,4(a5)
.LVL16:
	.loc 1 287 5 is_stmt 1
	.loc 1 287 12 is_stmt 0
	lw	a4,4(a5)
.LVL17:
	.loc 1 288 5 is_stmt 1
	.loc 1 288 12 is_stmt 0
	andi	a4,a4,-257
.LVL18:
	.loc 1 289 5 is_stmt 1
	.loc 1 289 58 is_stmt 0
	sw	a4,4(a5)
	.loc 1 291 5 is_stmt 1
	.loc 1 291 12 is_stmt 0
	lw	a4,4(a5)
.LVL19:
	.loc 1 292 5 is_stmt 1
	.loc 1 292 12 is_stmt 0
	ori	a4,a4,512
.LVL20:
	.loc 1 293 5 is_stmt 1
	.loc 1 293 58 is_stmt 0
	sw	a4,4(a5)
	.loc 1 295 5 is_stmt 1
	.loc 1 295 12 is_stmt 0
	lw	a4,4(a5)
.LVL21:
	.loc 1 296 5 is_stmt 1
	.loc 1 296 12 is_stmt 0
	andi	a4,a4,-513
.LVL22:
	.loc 1 297 5 is_stmt 1
	.loc 1 297 58 is_stmt 0
	sw	a4,4(a5)
	.loc 1 299 1
	ret
	.cfi_endproc
.LFE10:
	.size	qcc74x_mjpeg_sw_run, .-qcc74x_mjpeg_sw_run
	.section	.text.qcc74x_mjpeg_kick_run,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_kick_run
	.type	qcc74x_mjpeg_kick_run, @function
qcc74x_mjpeg_kick_run:
.LFB11:
	.loc 1 302 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 306 5
	.loc 1 307 5
	.loc 1 309 5
	.loc 1 309 14 is_stmt 0
	lw	a5,4(a0)
.LVL24:
	.loc 1 311 5 is_stmt 1
	.loc 1 325 12 is_stmt 0
	li	a3,-8192
	.loc 1 311 12
	lw	a4,4(a5)
.LVL25:
	.loc 1 312 5 is_stmt 1
	.loc 1 313 5
	andi	a4,a4,-32
.LVL26:
	.loc 1 313 12 is_stmt 0
	ori	a4,a4,128
.LVL27:
	.loc 1 314 5 is_stmt 1
	.loc 1 314 58 is_stmt 0
	sw	a4,4(a5)
	.loc 1 316 5 is_stmt 1
	.loc 1 316 12 is_stmt 0
	lw	a4,4(a5)
.LVL28:
	.loc 1 317 5 is_stmt 1
	.loc 1 317 12 is_stmt 0
	ori	a4,a4,256
.LVL29:
	.loc 1 318 5 is_stmt 1
	.loc 1 318 58 is_stmt 0
	sw	a4,4(a5)
	.loc 1 320 5 is_stmt 1
	.loc 1 320 12 is_stmt 0
	lw	a4,4(a5)
.LVL30:
	.loc 1 321 5 is_stmt 1
	.loc 1 321 12 is_stmt 0
	andi	a4,a4,-257
.LVL31:
	.loc 1 322 5 is_stmt 1
	.loc 1 322 58 is_stmt 0
	sw	a4,4(a5)
	.loc 1 324 5 is_stmt 1
	.loc 1 324 12 is_stmt 0
	lw	a4,56(a5)
.LVL32:
	.loc 1 325 5 is_stmt 1
	.loc 1 325 12 is_stmt 0
	and	a4,a4,a3
.LVL33:
	.loc 1 326 5 is_stmt 1
	.loc 1 326 12 is_stmt 0
	or	a1,a1,a4
.LVL34:
	.loc 1 327 5 is_stmt 1
	.loc 1 327 59 is_stmt 0
	sw	a1,56(a5)
	.loc 1 335 5 is_stmt 1
	.loc 1 335 12 is_stmt 0
	lw	a4,4(a5)
.LVL35:
	.loc 1 336 5 is_stmt 1
	.loc 1 336 12 is_stmt 0
	ori	a4,a4,512
.LVL36:
	.loc 1 337 5 is_stmt 1
	.loc 1 337 58 is_stmt 0
	sw	a4,4(a5)
	.loc 1 339 5 is_stmt 1
	.loc 1 339 12 is_stmt 0
	lw	a4,4(a5)
.LVL37:
	.loc 1 340 5 is_stmt 1
	.loc 1 340 12 is_stmt 0
	andi	a4,a4,-513
.LVL38:
	.loc 1 341 5 is_stmt 1
	.loc 1 341 58 is_stmt 0
	sw	a4,4(a5)
	.loc 1 343 1
	ret
	.cfi_endproc
.LFE11:
	.size	qcc74x_mjpeg_kick_run, .-qcc74x_mjpeg_kick_run
	.section	.text.qcc74x_mjpeg_kick_stop,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_kick_stop
	.type	qcc74x_mjpeg_kick_stop, @function
qcc74x_mjpeg_kick_stop:
.LFB12:
	.loc 1 346 1 is_stmt 1
	.cfi_startproc
.LVL39:
	.loc 1 350 5
	.loc 1 351 5
	.loc 1 353 5
	.loc 1 355 5
	.loc 1 355 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 355 12
	lw	a4,4(a5)
.LVL40:
	.loc 1 356 5 is_stmt 1
	.loc 1 357 5
	.loc 1 357 12 is_stmt 0
	andi	a4,a4,-160
.LVL41:
	.loc 1 358 5 is_stmt 1
	.loc 1 358 58 is_stmt 0
	sw	a4,4(a5)
.LVL42:
	.loc 1 360 5 is_stmt 1
	.loc 1 360 12 is_stmt 0
	lw	a4,4(a5)
.LVL43:
	.loc 1 361 5 is_stmt 1
	.loc 1 361 12 is_stmt 0
	ori	a4,a4,256
.LVL44:
	.loc 1 362 5 is_stmt 1
	.loc 1 362 58 is_stmt 0
	sw	a4,4(a5)
	.loc 1 364 5 is_stmt 1
	.loc 1 364 12 is_stmt 0
	lw	a4,4(a5)
.LVL45:
	.loc 1 365 5 is_stmt 1
	.loc 1 365 12 is_stmt 0
	andi	a4,a4,-257
.LVL46:
	.loc 1 366 5 is_stmt 1
	.loc 1 366 58 is_stmt 0
	sw	a4,4(a5)
	.loc 1 368 1
	ret
	.cfi_endproc
.LFE12:
	.size	qcc74x_mjpeg_kick_stop, .-qcc74x_mjpeg_kick_stop
	.section	.text.qcc74x_mjpeg_kick,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_kick
	.type	qcc74x_mjpeg_kick, @function
qcc74x_mjpeg_kick:
.LFB13:
	.loc 1 371 1 is_stmt 1
	.cfi_startproc
.LVL47:
	.loc 1 375 5
	.loc 1 376 5
	.loc 1 378 5
	.loc 1 380 5
	.loc 1 380 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 380 12
	lw	a5,4(a4)
.LVL48:
	.loc 1 381 5 is_stmt 1
	.loc 1 381 12 is_stmt 0
	ori	a5,a5,64
.LVL49:
	.loc 1 382 5 is_stmt 1
	.loc 1 382 58 is_stmt 0
	sw	a5,4(a4)
.LVL50:
	.loc 1 384 1
	ret
	.cfi_endproc
.LFE13:
	.size	qcc74x_mjpeg_kick, .-qcc74x_mjpeg_kick
	.section	.text.qcc74x_mjpeg_tcint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_tcint_mask
	.type	qcc74x_mjpeg_tcint_mask, @function
qcc74x_mjpeg_tcint_mask:
.LFB14:
	.loc 1 387 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 391 5
	.loc 1 392 5
	.loc 1 394 5
	.loc 1 396 5
	.loc 1 396 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 396 12
	lw	a3,28(a5)
.LVL52:
	.loc 1 398 5 is_stmt 1
	.loc 1 401 16 is_stmt 0
	ori	a4,a3,1
	.loc 1 398 8
	beq	a1,zero,.L10
	.loc 1 399 9 is_stmt 1
	.loc 1 399 16 is_stmt 0
	andi	a4,a3,-2
.LVL53:
.L10:
	.loc 1 404 5 is_stmt 1
	.loc 1 404 59 is_stmt 0
	sw	a4,28(a5)
.LVL54:
	.loc 1 406 1
	ret
	.cfi_endproc
.LFE14:
	.size	qcc74x_mjpeg_tcint_mask, .-qcc74x_mjpeg_tcint_mask
	.section	.text.qcc74x_mjpeg_swapint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_swapint_mask
	.type	qcc74x_mjpeg_swapint_mask, @function
qcc74x_mjpeg_swapint_mask:
.LFB15:
	.loc 1 433 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 437 5
	.loc 1 438 5
	.loc 1 440 5
	.loc 1 442 5
	.loc 1 442 58 is_stmt 0
	lw	a3,4(a0)
	.loc 1 442 12
	lw	a5,28(a3)
.LVL56:
	.loc 1 444 5 is_stmt 1
	.loc 1 444 8 is_stmt 0
	beq	a1,zero,.L13
	.loc 1 445 9 is_stmt 1
	.loc 1 445 16 is_stmt 0
	li	a4,-536870912
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL57:
.L14:
	.loc 1 450 5 is_stmt 1
	.loc 1 450 59 is_stmt 0
	sw	a5,28(a3)
.LVL58:
	.loc 1 452 1
	ret
.L13:
	.loc 1 447 9 is_stmt 1
	.loc 1 447 16 is_stmt 0
	li	a4,536870912
	or	a5,a5,a4
.LVL59:
	j	.L14
	.cfi_endproc
.LFE15:
	.size	qcc74x_mjpeg_swapint_mask, .-qcc74x_mjpeg_swapint_mask
	.section	.text.qcc74x_mjpeg_errint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_errint_mask
	.type	qcc74x_mjpeg_errint_mask, @function
qcc74x_mjpeg_errint_mask:
.LFB16:
	.loc 1 455 1 is_stmt 1
	.cfi_startproc
.LVL60:
	.loc 1 459 5
	.loc 1 460 5
	.loc 1 462 5
	.loc 1 464 5
	.loc 1 464 58 is_stmt 0
	lw	a3,4(a0)
	.loc 1 464 12
	lw	a5,28(a3)
.LVL61:
	.loc 1 466 5 is_stmt 1
	.loc 1 466 8 is_stmt 0
	beq	a1,zero,.L16
	.loc 1 467 9 is_stmt 1
.LVL62:
	.loc 1 468 9
	.loc 1 469 9
	.loc 1 470 9
	.loc 1 471 9
	.loc 1 471 16 is_stmt 0
	li	a4,-538968064
	addi	a4,a4,-15
	and	a5,a5,a4
.LVL63:
.L17:
	.loc 1 480 5 is_stmt 1
	.loc 1 480 59 is_stmt 0
	sw	a5,28(a3)
.LVL64:
	.loc 1 482 1
	ret
.L16:
	.loc 1 473 9 is_stmt 1
.LVL65:
	.loc 1 474 9
	.loc 1 475 9
	.loc 1 476 9
	.loc 1 477 9
	.loc 1 477 16 is_stmt 0
	li	a4,538968064
	addi	a4,a4,14
	or	a5,a5,a4
.LVL66:
	j	.L17
	.cfi_endproc
.LFE16:
	.size	qcc74x_mjpeg_errint_mask, .-qcc74x_mjpeg_errint_mask
	.section	.text.qcc74x_mjpeg_get_intstatus,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_get_intstatus
	.type	qcc74x_mjpeg_get_intstatus, @function
qcc74x_mjpeg_get_intstatus:
.LFB17:
	.loc 1 485 1 is_stmt 1
	.cfi_startproc
.LVL67:
	.loc 1 489 5
	.loc 1 490 5
	.loc 1 492 5
	.loc 1 494 5
	.loc 1 494 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 494 12
	lw	a0,28(a5)
.LVL68:
	.loc 1 498 5 is_stmt 1
	.loc 1 501 5
	.loc 1 503 1 is_stmt 0
	li	a5,1073741824
.LVL69:
	addi	a5,a5,240
	and	a0,a0,a5
.LVL70:
	ret
	.cfi_endproc
.LFE17:
	.size	qcc74x_mjpeg_get_intstatus, .-qcc74x_mjpeg_get_intstatus
	.section	.text.qcc74x_mjpeg_int_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_int_clear
	.type	qcc74x_mjpeg_int_clear, @function
qcc74x_mjpeg_int_clear:
.LFB18:
	.loc 1 506 1 is_stmt 1
	.cfi_startproc
.LVL71:
	.loc 1 510 5
	.loc 1 511 5
	.loc 1 513 5
	.loc 1 523 5
	.loc 1 523 49 is_stmt 0
	lw	a5,4(a0)
	.loc 1 523 59
	sw	a1,32(a5)
.LVL72:
	.loc 1 525 1
	ret
	.cfi_endproc
.LFE18:
	.size	qcc74x_mjpeg_int_clear, .-qcc74x_mjpeg_int_clear
	.section	.text.qcc74x_mjpeg_get_frame_count,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_get_frame_count
	.type	qcc74x_mjpeg_get_frame_count, @function
qcc74x_mjpeg_get_frame_count:
.LFB19:
	.loc 1 528 1 is_stmt 1
	.cfi_startproc
.LVL73:
	.loc 1 532 5
	.loc 1 534 5
	.loc 1 536 5
	.loc 1 536 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 536 15
	lw	a0,28(a5)
.LVL74:
	.loc 1 538 1
	extu	a0,a0,24+5-1,24
	ret
	.cfi_endproc
.LFE19:
	.size	qcc74x_mjpeg_get_frame_count, .-qcc74x_mjpeg_get_frame_count
	.section	.text.qcc74x_mjpeg_pop_one_frame,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_pop_one_frame
	.type	qcc74x_mjpeg_pop_one_frame, @function
qcc74x_mjpeg_pop_one_frame:
.LFB20:
	.loc 1 541 1 is_stmt 1
	.cfi_startproc
.LVL75:
	.loc 1 545 5
	.loc 1 547 5
	.loc 1 549 5
	.loc 1 549 49 is_stmt 0
	lw	a5,4(a0)
	.loc 1 549 59
	li	a4,1
	sw	a4,32(a5)
.LVL76:
	.loc 1 551 1
	ret
	.cfi_endproc
.LFE20:
	.size	qcc74x_mjpeg_pop_one_frame, .-qcc74x_mjpeg_pop_one_frame
	.section	.text.qcc74x_mjpeg_pop_swap_block,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_pop_swap_block
	.type	qcc74x_mjpeg_pop_swap_block, @function
qcc74x_mjpeg_pop_swap_block:
.LFB21:
	.loc 1 554 1 is_stmt 1
	.cfi_startproc
.LVL77:
	.loc 1 558 5
	.loc 1 560 5
	.loc 1 562 5
	.loc 1 562 49 is_stmt 0
	lw	a5,4(a0)
	.loc 1 562 59
	li	a4,2
	sw	a4,32(a5)
.LVL78:
	.loc 1 564 1
	ret
	.cfi_endproc
.LFE21:
	.size	qcc74x_mjpeg_pop_swap_block, .-qcc74x_mjpeg_pop_swap_block
	.section	.text.qcc74x_mjpeg_get_swap_bit_count,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_get_swap_bit_count
	.type	qcc74x_mjpeg_get_swap_bit_count, @function
qcc74x_mjpeg_get_swap_bit_count:
.LFB22:
	.loc 1 567 1 is_stmt 1
	.cfi_startproc
.LVL79:
	.loc 1 571 5
	.loc 1 573 5
	.loc 1 575 5
	.loc 1 575 56 is_stmt 0
	lw	a5,4(a0)
	.loc 1 575 13
	lw	a0,52(a5)
.LVL80:
	.loc 1 577 1
	ret
	.cfi_endproc
.LFE22:
	.size	qcc74x_mjpeg_get_swap_bit_count, .-qcc74x_mjpeg_get_swap_bit_count
	.section	.text.qcc74x_mjpeg_get_frame_info,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_get_frame_info
	.type	qcc74x_mjpeg_get_frame_info, @function
qcc74x_mjpeg_get_frame_info:
.LFB23:
	.loc 1 580 1 is_stmt 1
	.cfi_startproc
.LVL81:
	.loc 1 584 5
	.loc 1 585 5
	.loc 1 587 5
	.loc 1 587 14 is_stmt 0
	lw	a5,4(a0)
.LVL82:
	.loc 1 589 5 is_stmt 1
	.loc 1 589 35 is_stmt 0
	lw	a4,128(a5)
	.loc 1 590 15
	lw	a0,132(a5)
.LVL83:
	.loc 1 589 10
	sw	a4,0(a1)
	.loc 1 590 5 is_stmt 1
.LVL84:
	.loc 1 592 5
	.loc 1 590 69 is_stmt 0
	addi	a0,a0,7
.LVL85:
	.loc 1 594 1
	srli	a0,a0,3
.LVL86:
	ret
	.cfi_endproc
.LFE23:
	.size	qcc74x_mjpeg_get_frame_info, .-qcc74x_mjpeg_get_frame_info
	.section	.text.qcc74x_mjpeg_get_swap_block_info,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_get_swap_block_info
	.type	qcc74x_mjpeg_get_swap_block_info, @function
qcc74x_mjpeg_get_swap_block_info:
.LFB24:
	.loc 1 597 1 is_stmt 1
	.cfi_startproc
.LVL87:
	.loc 1 601 5
	.loc 1 602 5
	.loc 1 604 5
	.loc 1 606 5
	.loc 1 606 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 606 12
	lw	a0,48(a5)
.LVL88:
	.loc 1 607 5 is_stmt 1
	.loc 1 607 8 is_stmt 0
	extu	a5,a0,10+1-1,10
.LVL89:
	sb	a5,0(a1)
.LVL90:
	.loc 1 612 5 is_stmt 1
	.loc 1 618 1 is_stmt 0
	extu	a0,a0,12+1-1,12
.LVL91:
	ret
	.cfi_endproc
.LFE24:
	.size	qcc74x_mjpeg_get_swap_block_info, .-qcc74x_mjpeg_get_swap_block_info
	.section	.text.qcc74x_mjpeg_swap_is_block_full,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_swap_is_block_full
	.type	qcc74x_mjpeg_swap_is_block_full, @function
qcc74x_mjpeg_swap_is_block_full:
.LFB25:
	.loc 1 621 1 is_stmt 1
	.cfi_startproc
.LVL92:
	.loc 1 625 5
	.loc 1 626 5
	.loc 1 628 5
	.loc 1 630 5
	.loc 1 630 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 630 12
	lw	a0,48(a5)
.LVL93:
	.loc 1 631 5 is_stmt 1
	.loc 1 631 8 is_stmt 0
	beq	a1,zero,.L27
	.loc 1 632 9 is_stmt 1
	.loc 1 633 20 is_stmt 0
	extu	a0,a0,9+1-1,9
.LVL94:
	ret
.LVL95:
.L27:
	.loc 1 638 9 is_stmt 1
	.loc 1 633 20 is_stmt 0
	extu	a0,a0,8+1-1,8
.LVL96:
	.loc 1 645 1
	ret
	.cfi_endproc
.LFE25:
	.size	qcc74x_mjpeg_swap_is_block_full, .-qcc74x_mjpeg_swap_is_block_full
	.section	.text.qcc74x_mjpeg_calculate_quantize_table,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_calculate_quantize_table
	.type	qcc74x_mjpeg_calculate_quantize_table, @function
qcc74x_mjpeg_calculate_quantize_table:
.LFB26:
	.loc 1 648 1 is_stmt 1
	.cfi_startproc
.LVL97:
	.loc 1 652 5
	.loc 1 654 5
	.loc 1 654 8 is_stmt 0
	beq	a0,zero,.L37
	.loc 1 656 12 is_stmt 1
	.loc 1 656 15 is_stmt 0
	li	a5,100
	bgtu	a0,a5,.L38
	.loc 1 660 5 is_stmt 1
	.loc 1 660 8 is_stmt 0
	li	a5,49
	bgtu	a0,a5,.L31
.LVL98:
.L30:
	.loc 1 661 9 is_stmt 1
	.loc 1 661 32 is_stmt 0
	li	a5,5001216
	addi	a5,a5,-1216
	div	a5,a5,a0
.LVL99:
.L32:
	.loc 1 666 5 is_stmt 1
	.loc 1 666 17
	.loc 1 669 12 is_stmt 0
	li	a3,98304
	.loc 1 667 58
	li	a0,49152
	.loc 1 669 12
	addi	t3,a3,1695
	.loc 1 666 12
	li	a4,0
	.loc 1 667 58
	addi	a0,a0,848
	.loc 1 667 67
	addi	a3,a3,1696
	.loc 1 671 19
	li	t4,25600000
	.loc 1 672 29
	li	t5,255
	.loc 1 670 29
	li	t6,1
	.loc 1 666 5
	li	t1,64
.LVL100:
.L36:
	.loc 1 667 9 is_stmt 1
	.loc 1 667 39 is_stmt 0
	lrhu	a6,a1,a4,1
	.loc 1 667 58
	mv	a7,a0
	mula	a7,a6,a5
	.loc 1 669 9 is_stmt 1
	.loc 1 669 12 is_stmt 0
	bgtu	a7,t3,.L33
	.loc 1 670 13 is_stmt 1
	.loc 1 670 29 is_stmt 0
	srh	t6,a2,a4,1
.L34:
	.loc 1 666 25 is_stmt 1 discriminator 2
	.loc 1 666 26 is_stmt 0 discriminator 2
	addi	a4,a4,1
.LVL101:
	.loc 1 666 17 is_stmt 1 discriminator 2
	.loc 1 666 5 is_stmt 0 discriminator 2
	bne	a4,t1,.L36
	.loc 1 676 1
	ret
.LVL102:
.L37:
	.loc 1 655 17
	li	a0,1
.LVL103:
	j	.L30
.LVL104:
.L38:
	.loc 1 657 17
	li	a0,100
.LVL105:
.L31:
	.loc 1 663 9 is_stmt 1
	.loc 1 663 31 is_stmt 0
	li	a5,200704
	li	a4,-2000
	addi	a5,a5,-704
	mula	a5,a0,a4
.LVL106:
	j	.L32
.LVL107:
.L33:
	.loc 1 667 67
	divu	a6,a7,a3
	.loc 1 667 25
	extu	a6,a6,15,0
	.loc 1 671 16 is_stmt 1
	.loc 1 671 19 is_stmt 0
	bgeu	a7,t4,.L35
	.loc 1 667 25
	srh	a6,a2,a4,1
	j	.L34
.L35:
	.loc 1 672 13 is_stmt 1
	.loc 1 672 29 is_stmt 0
	srh	t5,a2,a4,1
	j	.L34
	.cfi_endproc
.LFE26:
	.size	qcc74x_mjpeg_calculate_quantize_table, .-qcc74x_mjpeg_calculate_quantize_table
	.section	.text.qcc74x_mjpeg_fill_quantize_table,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_fill_quantize_table
	.type	qcc74x_mjpeg_fill_quantize_table, @function
qcc74x_mjpeg_fill_quantize_table:
.LFB27:
	.loc 1 679 1 is_stmt 1
	.cfi_startproc
.LVL108:
	.loc 1 686 5
	.loc 1 687 5
	.loc 1 688 5
	.loc 1 689 5
	.loc 1 690 5
	.loc 1 692 5
	.loc 1 692 14 is_stmt 0
	lw	a0,4(a0)
.LVL109:
	.loc 1 694 5 is_stmt 1
	.loc 1 694 17
	.loc 1 679 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 696 25
	li	t4,4096
	.loc 1 679 1
	sw	s0,12(sp)
	sw	s1,8(sp)
	.cfi_offset 8, -4
	.cfi_offset 9, -8
	addi	t5,a0,1024
	.loc 1 692 14
	li	t3,0
	.loc 1 696 25
	addi	t4,t4,-2048
	.loc 1 699 23
	li	t2,20480
	.loc 1 699 46
	li	s0,10
	.loc 1 699 16
	li	t6,4
	.loc 1 694 5
	li	s1,8
.LVL110:
.L41:
	.loc 1 695 21 is_stmt 1
	addsl	t1, a1, t3, 1
	.loc 1 679 1 is_stmt 0
	mv	t0,t5
	.loc 1 695 16
	li	a7,0
.LVL111:
.L44:
	.loc 1 696 13 is_stmt 1
	.loc 1 696 35 is_stmt 0
	lhu	a6,0(t1)
	.loc 1 697 35
	lhu	a3,16(t1)
	.loc 1 696 25
	div	a5,t4,a6
	.loc 1 699 23
	div	a6,t2,a6
	.loc 1 696 18
	extu	a4,a5,15,0
.LVL112:
	.loc 1 697 13 is_stmt 1
	.loc 1 699 46 is_stmt 0
	rem	a6,a6,s0
	.loc 1 697 25
	div	a5,t4,a3
	.loc 1 697 18
	extu	a5,a5,15,0
.LVL113:
	.loc 1 699 13 is_stmt 1
	.loc 1 699 16 is_stmt 0
	ble	a6,t6,.L42
	.loc 1 700 17 is_stmt 1
	.loc 1 700 21 is_stmt 0
	addi	a4,a4,1
.LVL114:
	extu	a4,a4,15,0
.LVL115:
.L42:
	.loc 1 703 13 is_stmt 1
	.loc 1 703 23 is_stmt 0
	div	a3,t2,a3
	.loc 1 703 50
	rem	a3,a3,s0
	.loc 1 703 16
	ble	a3,t6,.L43
	.loc 1 704 17 is_stmt 1
	.loc 1 704 21 is_stmt 0
	addi	a5,a5,1
.LVL116:
	extu	a5,a5,15,0
.LVL117:
.L43:
	.loc 1 707 13 is_stmt 1 discriminator 2
	.loc 1 707 101 is_stmt 0 discriminator 2
	slli	a5,a5,16
.LVL118:
	.loc 1 707 94 discriminator 2
	or	a5,a5,a4
	.loc 1 695 29 discriminator 2
	addi	a7,a7,1
.LVL119:
	.loc 1 707 86 discriminator 2
	swia	a5,(t0),4,0
	.loc 1 695 28 is_stmt 1 discriminator 2
	.loc 1 695 29 is_stmt 0 discriminator 2
	andi	a7,a7,0xff
.LVL120:
	.loc 1 695 21 is_stmt 1 discriminator 2
	.loc 1 695 9 is_stmt 0 discriminator 2
	addi	t1,t1,32
	bne	a7,t6,.L44
	.loc 1 694 24 is_stmt 1 discriminator 2
.LVL121:
	.loc 1 694 17 discriminator 2
	.loc 1 694 5 is_stmt 0 discriminator 2
	addi	t3,t3,1
.LVL122:
	addi	t5,t5,16
	bne	t3,s1,.L41
	.loc 1 713 25
	li	t3,4096
	addi	t4,a0,1152
	.loc 1 694 5
	li	t1,0
	.loc 1 713 25
	addi	t3,t3,-2048
	.loc 1 716 23
	li	t0,20480
	.loc 1 716 46
	li	t2,10
	.loc 1 716 16
	li	t5,4
	.loc 1 711 5
	li	s0,8
.LVL123:
.L45:
	.loc 1 712 21 is_stmt 1
	addsl	a7, a2, t1, 1
	.loc 1 692 14 is_stmt 0
	mv	t6,t4
	.loc 1 712 16
	li	a6,0
.LVL124:
.L48:
	.loc 1 713 13 is_stmt 1
	.loc 1 713 35 is_stmt 0
	lhu	a1,0(a7)
	.loc 1 714 35
	lhu	a3,16(a7)
	.loc 1 713 25
	div	a5,t3,a1
	.loc 1 716 23
	div	a1,t0,a1
	.loc 1 713 18
	extu	a4,a5,15,0
.LVL125:
	.loc 1 714 13 is_stmt 1
	.loc 1 716 46 is_stmt 0
	rem	a1,a1,t2
	.loc 1 714 25
	div	a5,t3,a3
	.loc 1 714 18
	extu	a5,a5,15,0
.LVL126:
	.loc 1 716 13 is_stmt 1
	.loc 1 716 16 is_stmt 0
	ble	a1,t5,.L46
	.loc 1 717 17 is_stmt 1
	.loc 1 717 21 is_stmt 0
	addi	a4,a4,1
.LVL127:
	extu	a4,a4,15,0
.LVL128:
.L46:
	.loc 1 720 13 is_stmt 1
	.loc 1 720 23 is_stmt 0
	div	a3,t0,a3
	.loc 1 720 50
	rem	a3,a3,t2
	.loc 1 720 16
	ble	a3,t5,.L47
	.loc 1 721 17 is_stmt 1
	.loc 1 721 21 is_stmt 0
	addi	a5,a5,1
.LVL129:
	extu	a5,a5,15,0
.LVL130:
.L47:
	.loc 1 724 13 is_stmt 1 discriminator 2
	.loc 1 724 101 is_stmt 0 discriminator 2
	slli	a5,a5,16
.LVL131:
	.loc 1 724 94 discriminator 2
	or	a5,a5,a4
	.loc 1 712 29 discriminator 2
	addi	a6,a6,1
.LVL132:
	.loc 1 724 86 discriminator 2
	swia	a5,(t6),4,0
	.loc 1 712 28 is_stmt 1 discriminator 2
	.loc 1 712 29 is_stmt 0 discriminator 2
	andi	a6,a6,0xff
.LVL133:
	.loc 1 712 21 is_stmt 1 discriminator 2
	.loc 1 712 9 is_stmt 0 discriminator 2
	addi	a7,a7,32
	bne	a6,t5,.L48
	.loc 1 711 24 is_stmt 1 discriminator 2
.LVL134:
	.loc 1 711 17 discriminator 2
	.loc 1 711 5 is_stmt 0 discriminator 2
	addi	t1,t1,1
.LVL135:
	addi	t4,t4,16
	bne	t1,s0,.L45
	.loc 1 728 5 is_stmt 1
	.loc 1 728 12 is_stmt 0
	lw	a5,256(a0)
.LVL136:
	.loc 1 729 5 is_stmt 1
	.loc 1 732 1 is_stmt 0
	lw	s0,12(sp)
	.cfi_restore 8
	.loc 1 729 12
	li	a4,16777216
.LVL137:
	or	a5,a5,a4
.LVL138:
	.loc 1 730 5 is_stmt 1
	.loc 1 730 60 is_stmt 0
	sw	a5,256(a0)
	.loc 1 732 1
	lw	s1,8(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE27:
	.size	qcc74x_mjpeg_fill_quantize_table, .-qcc74x_mjpeg_fill_quantize_table
	.section	.text.qcc74x_mjpeg_init,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_init
	.type	qcc74x_mjpeg_init, @function
qcc74x_mjpeg_init:
.LFB7:
	.loc 1 61 1 is_stmt 1
	.cfi_startproc
.LVL139:
	.loc 1 62 5
	.loc 1 63 5
	.loc 1 64 5
	.loc 1 65 5
	.loc 1 66 5
	.loc 1 67 5
	.loc 1 68 5
	.loc 1 69 5
	.loc 1 74 5
	.loc 1 75 5
	.loc 1 76 5
	.loc 1 78 5
	.loc 1 61 1 is_stmt 0
	addi	sp,sp,-288
	.cfi_def_cfa_offset 288
	sw	s2,272(sp)
	.cfi_offset 18, -16
	.loc 1 78 14
	lw	s2,4(a0)
.LVL140:
	.loc 1 80 5 is_stmt 1
	.loc 1 61 1 is_stmt 0
	sw	s1,276(sp)
	sw	s3,268(sp)
	.loc 1 80 12
	lw	a5,0(s2)
.LVL141:
	.loc 1 81 5 is_stmt 1
	.loc 1 61 1 is_stmt 0
	sw	ra,284(sp)
	sw	s0,280(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 81 12
	andi	a5,a5,-2
.LVL142:
	.loc 1 82 5 is_stmt 1
	.loc 1 82 58 is_stmt 0
	sw	a5,0(s2)
	.loc 1 84 5 is_stmt 1
.LVL143:
	.loc 1 85 5
	.loc 1 86 5
	.loc 1 87 5
	.loc 1 89 5
	.loc 1 89 19 is_stmt 0
	lbu	a5,0(a1)
	.loc 1 89 5
	li	a4,4
	.loc 1 61 1
	mv	s3,a0
	mv	s1,a1
	.loc 1 89 5
	beq	a5,a4,.L55
	bgtu	a5,a4,.L56
	li	a4,2
	beq	a5,a4,.L57
	li	a4,3
	beq	a5,a4,.L58
	beq	a5,zero,.L59
	li	a4,1
	beq	a5,a4,.L60
.L91:
	li	s0,898
.LVL144:
.L61:
	.loc 1 156 5 is_stmt 1
	.loc 1 156 58 is_stmt 0
	sw	s0,0(s2)
	.loc 1 158 5 is_stmt 1
	.loc 1 158 12 is_stmt 0
	lw	a5,4(s2)
.LVL145:
	.loc 1 159 5 is_stmt 1
	.loc 1 160 5
	.loc 1 161 5
	li	a4,65536
	addi	a4,a4,-257
	and	a5,a5,a4
.LVL146:
	.loc 1 161 12 is_stmt 0
	li	a4,16777216
	or	a5,a5,a4
.LVL147:
	.loc 1 162 5 is_stmt 1
	.loc 1 162 58 is_stmt 0
	sw	a5,4(s2)
	.loc 1 164 5 is_stmt 1
	.loc 1 164 12 is_stmt 0
	lw	a5,48(s2)
.LVL148:
	.loc 1 165 5 is_stmt 1
	.loc 1 173 5 is_stmt 0
	li	a2,7
	.loc 1 165 12
	andi	a5,a5,-2
.LVL149:
	.loc 1 166 5 is_stmt 1
	.loc 1 166 59 is_stmt 0
	sw	a5,48(s2)
	.loc 1 168 5 is_stmt 1
	.loc 1 168 68 is_stmt 0
	lw	a5,8(s1)
.LVL150:
	.loc 1 168 59
	sw	a5,8(s2)
.LVL151:
	.loc 1 169 5 is_stmt 1
	.loc 1 169 68 is_stmt 0
	lw	a5,12(s1)
	.loc 1 169 59
	sw	a5,12(s2)
	.loc 1 171 5 is_stmt 1
	.loc 1 173 19 is_stmt 0
	lbu	a3,0(s1)
	.loc 1 171 20
	lhu	a5,2(s1)
	.loc 1 171 12
	srli	a4,a5,3
.LVL152:
	.loc 1 173 5 is_stmt 1
	bgtu	a3,a2,.L71
	li	a2,5
	bgtu	a3,a2,.L72
	li	a5,3
	bleu	a3,a5,.L75
	.loc 1 182 13
	.loc 1 182 78 is_stmt 0
	slli	a5,a4,16
.L93:
	.loc 1 186 91
	add	a5,a5,a4
	.loc 1 186 67
	sw	a5,16(s2)
	.loc 1 187 13 is_stmt 1
	j	.L74
.LVL153:
.L56:
	.loc 1 89 5 is_stmt 0
	li	a4,7
	beq	a5,a4,.L62
	bgtu	a5,a4,.L63
	li	a4,5
	beq	a5,a4,.L64
	li	a4,6
	bne	a5,a4,.L91
	.loc 1 120 13 is_stmt 1
	.loc 1 121 13
.LVL154:
	.loc 1 123 13
	.loc 1 123 23 is_stmt 0
	lhu	a1,4(a1)
	.loc 1 121 20
	li	s0,902
	.loc 1 123 16
	andi	a5,a1,15
	beq	a5,zero,.L68
	.loc 1 124 24
	li	s0,918
.LVL155:
	.loc 1 127 13 is_stmt 1
.L68:
	.loc 1 136 13
	.loc 1 136 86 is_stmt 0
	lhu	a2,6(s1)
	.loc 1 136 67
	addi	a1,a1,15
	.loc 1 136 13
	srli	a1,a1,4
	.loc 1 136 101
	addi	a2,a2,15
	.loc 1 136 13
	srli	a2,a2,4
.L90:
	.loc 1 149 13
	lw	a0,4(s3)
.LVL156:
	call	qcc74x_mjpeg_set_framesize.isra.0
.LVL157:
	.loc 1 150 13 is_stmt 1
	j	.L61
.LVL158:
.L63:
	.loc 1 89 5 is_stmt 0
	li	a4,8
	bne	a5,a4,.L91
	.loc 1 139 13 is_stmt 1
.LVL159:
	.loc 1 141 13
	.loc 1 141 23 is_stmt 0
	lhu	a1,4(a1)
	.loc 1 142 24
	li	s0,4096
	.loc 1 141 16
	andi	a5,a1,15
	beq	a5,zero,.L82
	.loc 1 142 24
	addi	s0,s0,914
.L69:
.LVL160:
	.loc 1 145 13 is_stmt 1
	.loc 1 145 23 is_stmt 0
	lhu	a2,6(s1)
	.loc 1 145 16
	andi	a5,a2,15
	beq	a5,zero,.L70
	.loc 1 146 17 is_stmt 1
	.loc 1 146 24 is_stmt 0
	ori	s0,s0,32
.LVL161:
.L70:
	.loc 1 149 13 is_stmt 1
	.loc 1 149 100 is_stmt 0
	addi	a2,a2,7
	.loc 1 149 67
	addi	a1,a1,7
	.loc 1 149 13
	srli	a2,a2,3
	srli	a1,a1,3
	j	.L90
.LVL162:
.L59:
	.loc 1 91 13 is_stmt 1
	.loc 1 92 13
.LBB10:
.LBB11:
	.loc 1 28 5
	.loc 1 29 5
	.loc 1 31 5
	.loc 1 33 5
	.loc 1 33 58 is_stmt 0
	lw	a3,4(a0)
	.loc 1 37 12
	li	a4,16777216
	addi	a4,a4,-1
	.loc 1 33 12
	lw	a5,40(a3)
.LVL163:
	.loc 1 34 5 is_stmt 1
	.loc 1 35 5
	.loc 1 36 5
	.loc 1 37 5
	.loc 1 37 12 is_stmt 0
	and	a5,a5,a4
.LVL164:
	.loc 1 39 5 is_stmt 1
	.loc 1 40 5
	.loc 1 41 5
	.loc 1 42 5
	.loc 1 42 12 is_stmt 0
	li	a4,-469762048
.LVL165:
.L89:
.LBE11:
.LBE10:
	.loc 1 98 86
	lhu	a2,6(s1)
	.loc 1 98 52
	lhu	a1,4(s1)
.LBB12:
.LBB13:
	.loc 1 42 12
	or	a5,a5,a4
.LVL166:
	.loc 1 44 5 is_stmt 1
	.loc 1 44 59 is_stmt 0
	sw	a5,40(a3)
.LVL167:
.LBE13:
.LBE12:
	.loc 1 98 13 is_stmt 1
	lw	a0,4(s3)
.LVL168:
	.loc 1 98 101 is_stmt 0
	addi	a2,a2,7
	.loc 1 98 67
	addi	a1,a1,15
	.loc 1 98 13
	srli	a2,a2,3
	srli	a1,a1,4
	call	qcc74x_mjpeg_set_framesize.isra.0
.LVL169:
	.loc 1 99 13 is_stmt 1
	.loc 1 96 20 is_stmt 0
	li	s0,12288
.LVL170:
.L92:
	addi	s0,s0,898
	.loc 1 99 13
	j	.L61
.LVL171:
.L60:
	.loc 1 96 13 is_stmt 1
	.loc 1 97 13
.LBB15:
.LBB14:
	.loc 1 28 5
	.loc 1 29 5
	.loc 1 31 5
	.loc 1 33 5
	.loc 1 33 58 is_stmt 0
	lw	a3,4(a0)
	.loc 1 37 12
	li	a4,16777216
	addi	a4,a4,-1
	.loc 1 33 12
	lw	a5,40(a3)
.LVL172:
	.loc 1 34 5 is_stmt 1
	.loc 1 35 5
	.loc 1 36 5
	.loc 1 37 5
	.loc 1 37 12 is_stmt 0
	and	a5,a5,a4
.LVL173:
	.loc 1 39 5 is_stmt 1
	.loc 1 40 5
	.loc 1 41 5
	.loc 1 42 5
	.loc 1 42 12 is_stmt 0
	li	a4,1811939328
	j	.L89
.LVL174:
.L57:
.LBE14:
.LBE15:
	.loc 1 101 13 is_stmt 1
	.loc 1 102 13
.LBB16:
.LBB17:
	.loc 1 28 5
	.loc 1 29 5
	.loc 1 31 5
	.loc 1 33 5
	.loc 1 33 58 is_stmt 0
	lw	a3,4(a0)
	.loc 1 37 12
	li	a4,16777216
	addi	a4,a4,-1
	.loc 1 33 12
	lw	a5,40(a3)
.LVL175:
	.loc 1 34 5 is_stmt 1
	.loc 1 35 5
	.loc 1 36 5
	.loc 1 37 5
	.loc 1 37 12 is_stmt 0
	and	a5,a5,a4
.LVL176:
	.loc 1 39 5 is_stmt 1
	.loc 1 40 5
	.loc 1 41 5
	.loc 1 42 5
	.loc 1 42 12 is_stmt 0
	li	a4,-1325400064
	j	.L89
.LVL177:
.L58:
.LBE17:
.LBE16:
	.loc 1 106 13 is_stmt 1
	.loc 1 107 13
.LBB18:
.LBB19:
	.loc 1 28 5
	.loc 1 29 5
	.loc 1 31 5
	.loc 1 33 5
	.loc 1 33 58 is_stmt 0
	lw	a3,4(a0)
	.loc 1 37 12
	li	a4,16777216
	addi	a4,a4,-1
	.loc 1 33 12
	lw	a5,40(a3)
.LVL178:
	.loc 1 34 5 is_stmt 1
	.loc 1 35 5
	.loc 1 36 5
	.loc 1 37 5
	.loc 1 37 12 is_stmt 0
	and	a5,a5,a4
.LVL179:
	.loc 1 39 5 is_stmt 1
	.loc 1 40 5
	.loc 1 41 5
	.loc 1 41 12 is_stmt 0
	li	a4,956301312
	j	.L89
.LVL180:
.L55:
.LBE19:
.LBE18:
	.loc 1 111 13 is_stmt 1
	.loc 1 112 13
	.loc 1 113 13
	.loc 1 113 86 is_stmt 0
	lhu	a2,6(a1)
	.loc 1 113 52
	lhu	a1,4(a1)
	.loc 1 113 13
	lw	a0,4(a0)
.LVL181:
	.loc 1 113 101
	addi	a2,a2,7
	.loc 1 113 67
	addi	a1,a1,15
	.loc 1 113 13
	srli	a2,a2,3
	srli	a1,a1,4
	.loc 1 112 20
	li	s0,8192
	.loc 1 113 13
	call	qcc74x_mjpeg_set_framesize.isra.0
.LVL182:
	.loc 1 114 13 is_stmt 1
	.loc 1 112 20 is_stmt 0
	addi	s0,s0,902
	.loc 1 114 13
	j	.L61
.LVL183:
.L64:
	.loc 1 116 13 is_stmt 1
	.loc 1 117 13
	.loc 1 117 86 is_stmt 0
	lhu	a2,6(a1)
	.loc 1 117 52
	lhu	a1,4(a1)
	.loc 1 117 13
	lw	a0,4(a0)
.LVL184:
	.loc 1 117 101
	addi	a2,a2,7
	.loc 1 117 67
	addi	a1,a1,15
	.loc 1 117 13
	srli	a2,a2,3
	srli	a1,a1,4
	call	qcc74x_mjpeg_set_framesize.isra.0
.LVL185:
	.loc 1 118 13 is_stmt 1
	.loc 1 116 20 is_stmt 0
	li	s0,8192
	j	.L92
.LVL186:
.L62:
	.loc 1 130 13 is_stmt 1
	.loc 1 132 13
	.loc 1 132 23 is_stmt 0
	lhu	a1,4(a1)
	.loc 1 130 20
	li	s0,898
	.loc 1 132 16
	andi	a5,a1,15
	beq	a5,zero,.L68
	.loc 1 133 24
	li	s0,914
	j	.L68
.LVL187:
.L82:
	.loc 1 139 20
	addi	s0,s0,898
	j	.L69
.LVL188:
.L71:
	.loc 1 173 5
	li	a5,8
	beq	a3,a5,.L75
.L74:
	.loc 1 196 5 is_stmt 1
	.loc 1 196 68 is_stmt 0
	lw	a5,16(s1)
	.loc 1 206 12
	li	a4,-540999680
.LVL189:
	addi	a4,a4,-16
	.loc 1 196 59
	sw	a5,20(s2)
	.loc 1 197 5 is_stmt 1
	.loc 1 197 85 is_stmt 0
	lw	a5,20(s1)
	.loc 1 221 5
	li	a2,128
	li	a1,0
	.loc 1 197 85
	srli	a5,a5,7
	.loc 1 197 59
	sw	a5,24(s2)
	.loc 1 199 5 is_stmt 1
	.loc 1 199 12 is_stmt 0
	lw	a5,28(s2)
.LVL190:
	.loc 1 200 5 is_stmt 1
	.loc 1 201 5
	.loc 1 202 5
	.loc 1 203 5
	.loc 1 204 5
	.loc 1 205 5
	.loc 1 206 5
	.loc 1 221 5 is_stmt 0
	mv	a0,sp
	.loc 1 206 12
	and	a5,a5,a4
.LVL191:
	.loc 1 207 5 is_stmt 1
	.loc 1 207 12 is_stmt 0
	li	a4,65536
	or	a5,a5,a4
.LVL192:
	.loc 1 208 5 is_stmt 1
	.loc 1 208 59 is_stmt 0
	sw	a5,28(s2)
	.loc 1 210 5 is_stmt 1
	.loc 1 210 12 is_stmt 0
	lw	a5,40(s2)
.LVL193:
	.loc 1 211 5 is_stmt 1
	.loc 1 212 5
	.loc 1 212 12 is_stmt 0
	li	a4,-69632
	and	a5,a5,a4
.LVL194:
	.loc 1 213 5 is_stmt 1
	.loc 1 213 59 is_stmt 0
	sw	a5,40(s2)
	.loc 1 216 5 is_stmt 1
	.loc 1 216 59 is_stmt 0
	li	a5,16384
.LVL195:
	addi	a5,a5,-256
	sw	a5,32(s2)
.LVL196:
	.loc 1 218 5 is_stmt 1
	.loc 1 219 5
	.loc 1 221 5
	call	arch_memset
.LVL197:
	.loc 1 222 5
	li	a2,128
	li	a1,0
	addi	a0,sp,128
	call	arch_memset
.LVL198:
	.loc 1 223 5
	.loc 1 223 15 is_stmt 0
	lw	a1,24(s1)
	lbu	a0,1(s1)
	.loc 1 224 9
	mv	a2,sp
	.loc 1 223 8
	beq	a1,zero,.L76
.L94:
	.loc 1 226 9
	call	qcc74x_mjpeg_calculate_quantize_table
.LVL199:
	.loc 1 228 5 is_stmt 1
	.loc 1 228 15 is_stmt 0
	lw	a1,28(s1)
	.loc 1 229 9
	lbu	a0,1(s1)
	addi	a2,sp,128
	.loc 1 228 8
	beq	a1,zero,.L78
.L95:
	.loc 1 231 9
	call	qcc74x_mjpeg_calculate_quantize_table
.LVL200:
	.loc 1 234 5 is_stmt 1
	addi	a2,sp,128
	mv	a1,sp
	mv	a0,s3
	call	qcc74x_mjpeg_fill_quantize_table
.LVL201:
	.loc 1 236 1 is_stmt 0
	lw	ra,284(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,280(sp)
	.cfi_restore 8
	lw	s1,276(sp)
	.cfi_restore 9
.LVL202:
	lw	s2,272(sp)
	.cfi_restore 18
.LVL203:
	lw	s3,268(sp)
	.cfi_restore 19
.LVL204:
	addi	sp,sp,288
	.cfi_def_cfa_offset 0
	jr	ra
.LVL205:
.L72:
	.cfi_restore_state
	.loc 1 186 13 is_stmt 1
	.loc 1 186 79 is_stmt 0
	srli	a5,a5,4
	.loc 1 186 84
	slli	a5,a5,16
	j	.L93
.L75:
	.loc 1 189 13 is_stmt 1
	.loc 1 189 67 is_stmt 0
	sw	a4,16(s2)
	.loc 1 190 13 is_stmt 1
	j	.L74
.LVL206:
.L76:
	.loc 1 226 9
	lui	a1,%hi(.LANCHOR0)
	addi	a1,a1,%lo(.LANCHOR0)
	j	.L94
.L78:
	.loc 1 231 9
	lui	a1,%hi(.LANCHOR1)
	addi	a1,a1,%lo(.LANCHOR1)
	j	.L95
	.cfi_endproc
.LFE7:
	.size	qcc74x_mjpeg_init, .-qcc74x_mjpeg_init
	.section	.text.qcc74x_mjpeg_fill_jpeg_header_tail,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_fill_jpeg_header_tail
	.type	qcc74x_mjpeg_fill_jpeg_header_tail, @function
qcc74x_mjpeg_fill_jpeg_header_tail:
.LFB28:
	.loc 1 735 1
	.cfi_startproc
.LVL207:
	.loc 1 739 5
	.loc 1 740 5
	.loc 1 742 5
	.loc 1 735 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s1,4(sp)
	.cfi_offset 9, -12
	.loc 1 742 14
	lw	s1,4(a0)
.LVL208:
	.loc 1 744 5 is_stmt 1
	li	a0,4096
.LVL209:
	addi	a0,a0,-2048
	add	a0,s1,a0
	.loc 1 735 1 is_stmt 0
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 735 1
	mv	s0,a2
	.loc 1 744 5
	call	arch_memcpy_fast
.LVL210:
	.loc 1 746 5 is_stmt 1
	.loc 1 746 12 is_stmt 0
	lw	a2,40(s1)
.LVL211:
	.loc 1 747 5 is_stmt 1
	.loc 1 747 12 is_stmt 0
	li	a5,-4096
	.loc 1 752 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 747 12
	and	a2,a2,a5
.LVL212:
	.loc 1 748 5 is_stmt 1
	.loc 1 748 12 is_stmt 0
	or	s0,s0,a2
.LVL213:
	.loc 1 749 5 is_stmt 1
	.loc 1 749 12 is_stmt 0
	li	a2,65536
	or	s0,s0,a2
.LVL214:
	.loc 1 750 5 is_stmt 1
	.loc 1 750 59 is_stmt 0
	sw	s0,40(s1)
	.loc 1 752 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL215:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL216:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE28:
	.size	qcc74x_mjpeg_fill_jpeg_header_tail, .-qcc74x_mjpeg_fill_jpeg_header_tail
	.section	.text.qcc74x_mjpeg_set_yuv420sp_cam_input,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_set_yuv420sp_cam_input
	.type	qcc74x_mjpeg_set_yuv420sp_cam_input, @function
qcc74x_mjpeg_set_yuv420sp_cam_input:
.LFB29:
	.loc 1 755 1 is_stmt 1
	.cfi_startproc
.LVL217:
	.loc 1 759 5
	.loc 1 760 5
	.loc 1 762 5
	.loc 1 764 5
	.loc 1 764 58 is_stmt 0
	lw	a3,4(a0)
	.loc 1 766 12
	li	a4,-65536
	addi	a4,a4,1023
	.loc 1 764 12
	lw	a5,4(a3)
.LVL218:
	.loc 1 765 5 is_stmt 1
	.loc 1 766 5
	.loc 1 767 19 is_stmt 0
	slli	a1,a1,10
.LVL219:
	.loc 1 768 19
	slli	a2,a2,13
.LVL220:
	.loc 1 766 12
	and	a5,a5,a4
.LVL221:
	.loc 1 767 5 is_stmt 1
	.loc 1 768 5
	.loc 1 768 12 is_stmt 0
	or	a1,a1,a2
	or	a1,a1,a5
.LVL222:
	.loc 1 769 5 is_stmt 1
	.loc 1 769 58 is_stmt 0
	sw	a1,4(a3)
.LVL223:
	.loc 1 771 1
	ret
	.cfi_endproc
.LFE29:
	.size	qcc74x_mjpeg_set_yuv420sp_cam_input, .-qcc74x_mjpeg_set_yuv420sp_cam_input
	.section	.text.qcc74x_mjpeg_update_input_output_buff,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_update_input_output_buff
	.type	qcc74x_mjpeg_update_input_output_buff, @function
qcc74x_mjpeg_update_input_output_buff:
.LFB30:
	.loc 1 774 1 is_stmt 1
	.cfi_startproc
.LVL224:
	.loc 1 778 5
	.loc 1 780 5
	.loc 1 780 14 is_stmt 0
	lw	a5,4(a0)
.LVL225:
	.loc 1 782 5 is_stmt 1
	.loc 1 782 8 is_stmt 0
	beq	a1,zero,.L100
	.loc 1 783 9 is_stmt 1
	.loc 1 783 63 is_stmt 0
	sw	a1,8(a5)
.L100:
	.loc 1 786 5 is_stmt 1
	.loc 1 786 8 is_stmt 0
	beq	a2,zero,.L101
	.loc 1 787 9 is_stmt 1
	.loc 1 787 63 is_stmt 0
	sw	a2,12(a5)
.L101:
	.loc 1 790 5 is_stmt 1
	.loc 1 790 8 is_stmt 0
	beq	a3,zero,.L99
	.loc 1 791 9 is_stmt 1
	.loc 1 791 63 is_stmt 0
	sw	a3,20(a5)
	.loc 1 792 9 is_stmt 1
	.loc 1 792 93 is_stmt 0
	srli	a4,a4,7
.LVL226:
	.loc 1 792 63
	sw	a4,24(a5)
.L99:
	.loc 1 795 1
	ret
	.cfi_endproc
.LFE30:
	.size	qcc74x_mjpeg_update_input_output_buff, .-qcc74x_mjpeg_update_input_output_buff
	.section	.text.qcc74x_mjpeg_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_mjpeg_feature_control
	.type	qcc74x_mjpeg_feature_control, @function
qcc74x_mjpeg_feature_control:
.LFB31:
	.loc 1 798 1 is_stmt 1
	.cfi_startproc
.LVL227:
	.loc 1 802 5
	.loc 1 803 5
	.loc 1 804 5
	.loc 1 806 5
	.loc 1 808 5 is_stmt 0
	li	a4,1
	.loc 1 806 14
	lw	a5,4(a0)
.LVL228:
	.loc 1 808 5 is_stmt 1
	beq	a1,a4,.L113
	li	a4,7
	beq	a1,a4,.L114
	bne	a1,zero,.L118
	.loc 1 810 13
	.loc 1 810 67 is_stmt 0
	sw	a2,8(a5)
	.loc 1 811 13 is_stmt 1
.LVL229:
.L115:
	.loc 1 856 5
	.loc 1 858 1 is_stmt 0
	mv	a0,a1
.LVL230:
	ret
.LVL231:
.L113:
	.loc 1 813 13 is_stmt 1
	.loc 1 813 67 is_stmt 0
	sw	a2,12(a5)
	.loc 1 814 13 is_stmt 1
.L120:
	.loc 1 850 13
	.loc 1 802 9 is_stmt 0
	li	a1,0
.LVL232:
	.loc 1 850 13
	j	.L115
.LVL233:
.L114:
	.loc 1 843 13 is_stmt 1
	.loc 1 843 20 is_stmt 0
	lw	a3,48(a5)
.LVL234:
	.loc 1 844 13 is_stmt 1
	.loc 1 847 24 is_stmt 0
	andi	a4,a3,-2
	.loc 1 844 16
	beq	a2,zero,.L117
	.loc 1 845 17 is_stmt 1
	.loc 1 845 24 is_stmt 0
	ori	a4,a3,1
.LVL235:
.L117:
	.loc 1 849 13 is_stmt 1
	.loc 1 849 67 is_stmt 0
	sw	a4,48(a5)
	j	.L120
.LVL236:
.L118:
	.loc 1 808 5
	li	a1,-1
.LVL237:
	j	.L115
	.cfi_endproc
.LFE31:
	.size	qcc74x_mjpeg_feature_control, .-qcc74x_mjpeg_feature_control
	.section	.rodata.q_table_50_uv,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	q_table_50_uv, @object
	.size	q_table_50_uv, 128
q_table_50_uv:
	.half	17
	.half	18
	.half	24
	.half	47
	.half	99
	.half	99
	.half	99
	.half	99
	.half	18
	.half	21
	.half	26
	.half	66
	.half	99
	.half	99
	.half	99
	.half	99
	.half	24
	.half	26
	.half	56
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	47
	.half	66
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.half	99
	.section	.rodata.q_table_50_y,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	q_table_50_y, @object
	.size	q_table_50_y, 128
q_table_50_y:
	.half	16
	.half	11
	.half	10
	.half	16
	.half	24
	.half	40
	.half	51
	.half	61
	.half	12
	.half	12
	.half	14
	.half	19
	.half	26
	.half	58
	.half	60
	.half	55
	.half	14
	.half	13
	.half	16
	.half	24
	.half	40
	.half	57
	.half	69
	.half	56
	.half	14
	.half	17
	.half	22
	.half	29
	.half	51
	.half	87
	.half	80
	.half	62
	.half	18
	.half	22
	.half	37
	.half	56
	.half	68
	.half	109
	.half	103
	.half	77
	.half	24
	.half	35
	.half	55
	.half	64
	.half	81
	.half	104
	.half	113
	.half	92
	.half	49
	.half	64
	.half	78
	.half	87
	.half	103
	.half	121
	.half	120
	.half	101
	.half	72
	.half	92
	.half	95
	.half	98
	.half	112
	.half	100
	.half	103
	.half	99
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_mjpeg.h"
	.file 7 "./drivers/lhal/include/qcc74x_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xe89
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF93
	.byte	0xc
	.4byte	.LASF94
	.4byte	.LASF95
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x5
	.4byte	0xa7
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
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x94
	.byte	0x6
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0x5
	.4byte	0xde
	.byte	0x7
	.byte	0x4
	.4byte	0xe5
	.byte	0x8
	.4byte	.LASF25
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x159
	.byte	0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0xea
	.byte	0
	.byte	0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xb8
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
	.4byte	0xdc
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF26
	.byte	0x20
	.byte	0x6
	.byte	0x60
	.byte	0x8
	.4byte	0x1f6
	.byte	0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0x61
	.byte	0xd
	.4byte	0x9b
	.byte	0
	.byte	0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0x62
	.byte	0xd
	.4byte	0x9b
	.byte	0x1
	.byte	0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0x63
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0x64
	.byte	0xe
	.4byte	0xa7
	.byte	0x4
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0x65
	.byte	0xe
	.4byte	0xa7
	.byte	0x6
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0x66
	.byte	0xe
	.4byte	0xb8
	.byte	0x8
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0x67
	.byte	0xe
	.4byte	0xb8
	.byte	0xc
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0x68
	.byte	0xe
	.4byte	0xb8
	.byte	0x10
	.byte	0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0x69
	.byte	0xe
	.4byte	0xb8
	.byte	0x14
	.byte	0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0x6a
	.byte	0xf
	.4byte	0x1fb
	.byte	0x18
	.byte	0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0x6b
	.byte	0xf
	.4byte	0x1fb
	.byte	0x1c
	.byte	0
	.byte	0x5
	.4byte	0x159
	.byte	0x7
	.byte	0x4
	.4byte	0xa7
	.byte	0xb
	.4byte	0xb3
	.4byte	0x211
	.byte	0xc
	.4byte	0x94
	.byte	0x3f
	.byte	0
	.byte	0x5
	.4byte	0x201
	.byte	0xd
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4
	.byte	0x2f
	.4byte	0x211
	.byte	0x5
	.byte	0x3
	.4byte	q_table_50_y
	.byte	0xd
	.4byte	.LASF39
	.byte	0x1
	.byte	0xf
	.byte	0x2f
	.4byte	0x211
	.byte	0x5
	.byte	0x3
	.4byte	q_table_50_uv
	.byte	0xe
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x31d
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b8
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x31d
	.byte	0x3a
	.4byte	0x2b8
	.4byte	.LLST87
	.byte	0xf
	.string	"cmd"
	.byte	0x1
	.2byte	0x31d
	.byte	0x43
	.4byte	0x81
	.4byte	.LLST88
	.byte	0x10
	.string	"arg"
	.byte	0x1
	.2byte	0x31d
	.byte	0x4f
	.4byte	0xd0
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.string	"ret"
	.byte	0x1
	.2byte	0x322
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST89
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x323
	.byte	0x26
	.4byte	0xb8
	.4byte	.LLST90
	.byte	0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x324
	.byte	0xe
	.4byte	0xb8
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf0
	.byte	0x14
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x305
	.byte	0x6
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x332
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x305
	.byte	0x44
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x305
	.byte	0x4f
	.4byte	0xdc
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x305
	.byte	0x61
	.4byte	0xdc
	.byte	0x1
	.byte	0x5c
	.byte	0x15
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x305
	.byte	0x73
	.4byte	0xdc
	.byte	0x1
	.byte	0x5d
	.byte	0x16
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x305
	.byte	0x87
	.4byte	0xd0
	.4byte	.LLST86
	.byte	0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x30a
	.byte	0xe
	.4byte	0xb8
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x14
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x2f2
	.byte	0x6
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x39b
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x2f2
	.byte	0x42
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.string	"yy"
	.byte	0x1
	.2byte	0x2f2
	.byte	0x4f
	.4byte	0x9b
	.4byte	.LLST82
	.byte	0xf
	.string	"uv"
	.byte	0x1
	.2byte	0x2f2
	.byte	0x5b
	.4byte	0x9b
	.4byte	.LLST83
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x2f7
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST84
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x2f8
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST85
	.byte	0
	.byte	0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x2de
	.byte	0x6
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x1
	.byte	0x9c
	.4byte	0x426
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x2de
	.byte	0x41
	.4byte	0x2b8
	.4byte	.LLST77
	.byte	0x16
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x2de
	.byte	0x4f
	.4byte	0x426
	.4byte	.LLST78
	.byte	0x16
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x2de
	.byte	0x60
	.4byte	0xb8
	.4byte	.LLST79
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x2e3
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST80
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x2e4
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST81
	.byte	0x17
	.4byte	.LVL210
	.4byte	0xe74
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x79
	.byte	0x80,0x10
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x9b
	.byte	0x14
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x2a6
	.byte	0x6
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d3
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x2a6
	.byte	0x3f
	.4byte	0x2b8
	.4byte	.LLST38
	.byte	0x16
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x2a6
	.byte	0x4e
	.4byte	0x1fb
	.4byte	.LLST39
	.byte	0x15
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x2a6
	.byte	0x62
	.4byte	0x1fb
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x2ae
	.byte	0xd
	.4byte	0x9b
	.4byte	.LLST40
	.byte	0x11
	.string	"j"
	.byte	0x1
	.2byte	0x2ae
	.byte	0x10
	.4byte	0x9b
	.4byte	.LLST41
	.byte	0x12
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x2af
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST42
	.byte	0x12
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x2b0
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST43
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x2b1
	.byte	0xe
	.4byte	0xb8
	.byte	0x1
	.byte	0x5f
	.byte	0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x2b2
	.byte	0xe
	.4byte	0xb8
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x14
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x287
	.byte	0x6
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.4byte	0x53a
	.byte	0x16
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x287
	.byte	0x34
	.4byte	0x9b
	.4byte	.LLST35
	.byte	0x15
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x287
	.byte	0x47
	.4byte	0x1fb
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x287
	.byte	0x5e
	.4byte	0x1fb
	.byte	0x1
	.byte	0x5c
	.byte	0x12
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x28c
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST36
	.byte	0x11
	.string	"i"
	.byte	0x1
	.2byte	0x28c
	.byte	0x1c
	.4byte	0xb8
	.4byte	.LLST37
	.byte	0
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x26c
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x598
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x26c
	.byte	0x41
	.4byte	0x2b8
	.4byte	.LLST32
	.byte	0x10
	.string	"idx"
	.byte	0x1
	.2byte	0x26c
	.byte	0x4e
	.4byte	0x9b
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x271
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST33
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x272
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST34
	.byte	0
	.byte	0xe
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x254
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x5f6
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x254
	.byte	0x42
	.4byte	0x2b8
	.4byte	.LLST29
	.byte	0x10
	.string	"idx"
	.byte	0x1
	.2byte	0x254
	.byte	0x50
	.4byte	0x426
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x259
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST30
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x25a
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST31
	.byte	0
	.byte	0xe
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x243
	.byte	0xa
	.4byte	0xb8
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x652
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x243
	.byte	0x3e
	.4byte	0x2b8
	.4byte	.LLST27
	.byte	0x10
	.string	"pic"
	.byte	0x1
	.2byte	0x243
	.byte	0x4d
	.4byte	0x652
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x248
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST28
	.byte	0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x249
	.byte	0xe
	.4byte	0xb8
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x426
	.byte	0xe
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x236
	.byte	0xa
	.4byte	0xb8
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x696
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x236
	.byte	0x42
	.4byte	0x2b8
	.4byte	.LLST25
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x23b
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST26
	.byte	0
	.byte	0x14
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x229
	.byte	0x6
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x6ce
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x229
	.byte	0x3a
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x22e
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST24
	.byte	0
	.byte	0x14
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x21c
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x706
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x21c
	.byte	0x39
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x221
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST23
	.byte	0
	.byte	0xe
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x20f
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x744
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x20f
	.byte	0x3e
	.4byte	0x2b8
	.4byte	.LLST21
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x214
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST22
	.byte	0
	.byte	0x14
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1f9
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x798
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x1f9
	.byte	0x35
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1f9
	.byte	0x43
	.4byte	0xb8
	.byte	0x1
	.byte	0x5b
	.byte	0x19
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1fe
	.byte	0x26
	.4byte	0xb8
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1ff
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST20
	.byte	0
	.byte	0xe
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1e4
	.byte	0xa
	.4byte	0xb8
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x7e7
	.byte	0xf
	.string	"dev"
	.byte	0x1
	.2byte	0x1e4
	.byte	0x3d
	.4byte	0x2b8
	.4byte	.LLST17
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1e9
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST18
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1ea
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST19
	.byte	0
	.byte	0x14
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1c6
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x83f
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x1c6
	.byte	0x37
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1c6
	.byte	0x40
	.4byte	0x83f
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1cb
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST15
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1cc
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST16
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF73
	.byte	0x14
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1b0
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x89c
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x1b0
	.byte	0x38
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1b0
	.byte	0x41
	.4byte	0x83f
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x1b5
	.byte	0xe
	.4byte	0xb8
	.byte	0x1
	.byte	0x5f
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1b6
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST14
	.byte	0
	.byte	0x14
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x182
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x8f4
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x182
	.byte	0x36
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x15
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x182
	.byte	0x3f
	.4byte	0x83f
	.byte	0x1
	.byte	0x5b
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x187
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST12
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x188
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST13
	.byte	0
	.byte	0x14
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x172
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x93b
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x172
	.byte	0x30
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x177
	.byte	0xe
	.4byte	0xb8
	.byte	0x1
	.byte	0x5f
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x178
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST11
	.byte	0
	.byte	0x14
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x159
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x984
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x159
	.byte	0x35
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x15e
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST9
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x15f
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST10
	.byte	0
	.byte	0x14
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x12d
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x9dc
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x12d
	.byte	0x34
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x12d
	.byte	0x42
	.4byte	0xa7
	.4byte	.LLST7
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x132
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST8
	.byte	0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x133
	.byte	0xe
	.4byte	0xb8
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x14
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x10e
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xa36
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x10e
	.byte	0x32
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x10e
	.byte	0x3f
	.4byte	0x9b
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x113
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST5
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x114
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST6
	.byte	0
	.byte	0x1a
	.4byte	.LASF82
	.byte	0x1
	.byte	0xfe
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xa7b
	.byte	0x1b
	.string	"dev"
	.byte	0x1
	.byte	0xfe
	.byte	0x30
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x103
	.byte	0xe
	.4byte	0xb8
	.byte	0x1
	.byte	0x5f
	.byte	0x12
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x104
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST3
	.byte	0
	.byte	0x1a
	.4byte	.LASF83
	.byte	0x1
	.byte	0xee
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xabe
	.byte	0x1b
	.string	"dev"
	.byte	0x1
	.byte	0xee
	.byte	0x31
	.4byte	0x2b8
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	.LASF40
	.byte	0x1
	.byte	0xf3
	.byte	0xe
	.4byte	0xb8
	.byte	0x1
	.byte	0x5f
	.byte	0x1c
	.4byte	.LASF20
	.byte	0x1
	.byte	0xf4
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST2
	.byte	0
	.byte	0x1a
	.4byte	.LASF84
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xd75
	.byte	0x1d
	.string	"dev"
	.byte	0x1
	.byte	0x3c
	.byte	0x30
	.4byte	0x2b8
	.4byte	.LLST44
	.byte	0x1e
	.4byte	.LASF85
	.byte	0x1
	.byte	0x3c
	.byte	0x59
	.4byte	0xd75
	.4byte	.LLST45
	.byte	0x1c
	.4byte	.LASF40
	.byte	0x1
	.byte	0x4a
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST46
	.byte	0x1c
	.4byte	.LASF20
	.byte	0x1
	.byte	0x4b
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST47
	.byte	0x1c
	.4byte	.LASF86
	.byte	0x1
	.byte	0x4c
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST48
	.byte	0xd
	.4byte	.LASF87
	.byte	0x1
	.byte	0xda
	.byte	0xe
	.4byte	0xd7b
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7d
	.byte	0xd
	.4byte	.LASF88
	.byte	0x1
	.byte	0xdb
	.byte	0xe
	.4byte	0xd7b
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x1f
	.4byte	0xdd1
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x5c
	.byte	0xd
	.4byte	0xb9d
	.byte	0x20
	.4byte	0xdde
	.byte	0x21
	.4byte	0xdde
	.4byte	.LLST49
	.byte	0x21
	.4byte	0xe0b
	.4byte	.LLST50
	.byte	0x21
	.4byte	0xe00
	.4byte	.LLST51
	.byte	0x21
	.4byte	0xdf5
	.4byte	.LLST52
	.byte	0x21
	.4byte	0xdea
	.4byte	.LLST53
	.byte	0x22
	.4byte	0xe16
	.4byte	.LLST54
	.byte	0x22
	.4byte	0xe22
	.4byte	.LLST55
	.byte	0
	.byte	0x23
	.4byte	0xdd1
	.4byte	.LBB12
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x61
	.byte	0xd
	.4byte	0xbfc
	.byte	0x20
	.4byte	0xdde
	.byte	0x21
	.4byte	0xdde
	.4byte	.LLST56
	.byte	0x21
	.4byte	0xe0b
	.4byte	.LLST57
	.byte	0x21
	.4byte	0xe00
	.4byte	.LLST58
	.byte	0x21
	.4byte	0xdf5
	.4byte	.LLST59
	.byte	0x21
	.4byte	0xdea
	.4byte	.LLST60
	.byte	0x24
	.4byte	.Ldebug_ranges0+0
	.byte	0x22
	.4byte	0xe16
	.4byte	.LLST61
	.byte	0x22
	.4byte	0xe22
	.4byte	.LLST62
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	0xdd1
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x66
	.byte	0xd
	.4byte	0xc55
	.byte	0x20
	.4byte	0xdde
	.byte	0x21
	.4byte	0xdde
	.4byte	.LLST63
	.byte	0x21
	.4byte	0xe0b
	.4byte	.LLST64
	.byte	0x21
	.4byte	0xe00
	.4byte	.LLST65
	.byte	0x21
	.4byte	0xdf5
	.4byte	.LLST66
	.byte	0x21
	.4byte	0xdea
	.4byte	.LLST67
	.byte	0x22
	.4byte	0xe16
	.4byte	.LLST68
	.byte	0x22
	.4byte	0xe22
	.4byte	.LLST69
	.byte	0
	.byte	0x1f
	.4byte	0xdd1
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x1
	.byte	0x6b
	.byte	0xd
	.4byte	0xcae
	.byte	0x20
	.4byte	0xdde
	.byte	0x21
	.4byte	0xdde
	.4byte	.LLST70
	.byte	0x21
	.4byte	0xe0b
	.4byte	.LLST71
	.byte	0x21
	.4byte	0xe00
	.4byte	.LLST72
	.byte	0x21
	.4byte	0xdf5
	.4byte	.LLST73
	.byte	0x21
	.4byte	0xdea
	.4byte	.LLST74
	.byte	0x22
	.4byte	0xe16
	.4byte	.LLST75
	.byte	0x22
	.4byte	0xe22
	.4byte	.LLST76
	.byte	0
	.byte	0x25
	.4byte	.LVL157
	.4byte	0xe2f
	.4byte	0xcc4
	.byte	0x26
	.4byte	0xd98
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL169
	.4byte	0xe2f
	.4byte	0xcda
	.byte	0x26
	.4byte	0xd98
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL182
	.4byte	0xe2f
	.4byte	0xcf0
	.byte	0x26
	.4byte	0xd98
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL185
	.4byte	0xe2f
	.4byte	0xd06
	.byte	0x26
	.4byte	0xd98
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x25
	.4byte	.LVL197
	.4byte	0xe80
	.4byte	0xd25
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x25
	.4byte	.LVL198
	.4byte	0xe80
	.4byte	0xd45
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x27
	.4byte	.LVL199
	.4byte	0x4d3
	.byte	0x27
	.4byte	.LVL200
	.4byte	0x4d3
	.byte	0x17
	.4byte	.LVL201
	.4byte	0x42c
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x72
	.byte	0
	.byte	0x18
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0xe0,0x7e
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1f6
	.byte	0xb
	.4byte	0xa7
	.4byte	0xd8b
	.byte	0xc
	.4byte	0x94
	.byte	0x3f
	.byte	0
	.byte	0x28
	.4byte	.LASF89
	.byte	0x1
	.byte	0x2f
	.byte	0x25
	.byte	0x1
	.4byte	0xdd1
	.byte	0x29
	.string	"dev"
	.byte	0x1
	.byte	0x2f
	.byte	0x58
	.4byte	0x2b8
	.byte	0x29
	.string	"x"
	.byte	0x1
	.byte	0x2f
	.byte	0x66
	.4byte	0xa7
	.byte	0x29
	.string	"y"
	.byte	0x1
	.byte	0x2f
	.byte	0x72
	.4byte	0xa7
	.byte	0x2a
	.4byte	.LASF40
	.byte	0x1
	.byte	0x31
	.byte	0xe
	.4byte	0xb8
	.byte	0x2a
	.4byte	.LASF20
	.byte	0x1
	.byte	0x32
	.byte	0xe
	.4byte	0xb8
	.byte	0
	.byte	0x28
	.4byte	.LASF90
	.byte	0x1
	.byte	0x1a
	.byte	0x25
	.byte	0x1
	.4byte	0xe2f
	.byte	0x29
	.string	"dev"
	.byte	0x1
	.byte	0x1a
	.byte	0x66
	.4byte	0x2b8
	.byte	0x29
	.string	"y0"
	.byte	0x1
	.byte	0x1a
	.byte	0x73
	.4byte	0x9b
	.byte	0x29
	.string	"u0"
	.byte	0x1
	.byte	0x1a
	.byte	0x7f
	.4byte	0x9b
	.byte	0x29
	.string	"y1"
	.byte	0x1
	.byte	0x1a
	.byte	0x8b
	.4byte	0x9b
	.byte	0x29
	.string	"v0"
	.byte	0x1
	.byte	0x1a
	.byte	0x97
	.4byte	0x9b
	.byte	0x2a
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1c
	.byte	0xe
	.4byte	0xb8
	.byte	0x2a
	.4byte	.LASF20
	.byte	0x1
	.byte	0x1d
	.byte	0xe
	.4byte	0xb8
	.byte	0
	.byte	0x2b
	.4byte	0xd8b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0xe74
	.byte	0x2c
	.4byte	0xda4
	.byte	0x1
	.byte	0x5b
	.byte	0x21
	.4byte	0xdae
	.4byte	.LLST0
	.byte	0x22
	.4byte	0xdb8
	.4byte	.LLST1
	.byte	0x2d
	.4byte	0xdc4
	.byte	0x1
	.byte	0x5a
	.byte	0x2c
	.4byte	0xd98
	.byte	0x6
	.byte	0xfa
	.4byte	0xd98
	.byte	0x9f
	.byte	0x20
	.4byte	0xd98
	.byte	0
	.byte	0x2e
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x7
	.byte	0x44
	.byte	0x7
	.byte	0x2e
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x7
	.byte	0x26
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x20
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x23
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
	.byte	0x24
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x25
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
	.byte	0x26
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x27
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x2b
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
	.byte	0x2c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2d
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x2e
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
.LLST87:
	.4byte	.LVL227
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LFE31
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST88:
	.4byte	.LVL227
	.4byte	.LVL229
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL229
	.4byte	.LVL231
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL233
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL237
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST89:
	.4byte	.LVL227
	.4byte	.LVL229
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL229
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL231
	.4byte	.LFE31
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST90:
	.4byte	.LVL234
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST86:
	.4byte	.LVL224
	.4byte	.LVL226
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL226
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST82:
	.4byte	.LVL217
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL219
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST83:
	.4byte	.LVL217
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL220
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST84:
	.4byte	.LVL218
	.4byte	.LVL221
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xe3ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL222
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST85:
	.4byte	.LVL217
	.4byte	.LVL223
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL223
	.4byte	.LFE29
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST77:
	.4byte	.LVL207
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL209
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST78:
	.4byte	.LVL207
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL210-1
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST79:
	.4byte	.LVL207
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL210-1
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL213
	.4byte	.LFE28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST80:
	.4byte	.LVL211
	.4byte	.LVL213
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL213
	.4byte	.LVL215
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL215
	.4byte	.LVL216
	.2byte	0x2
	.byte	0x79
	.byte	0x28
	.4byte	0
	.4byte	0
.LLST81:
	.4byte	.LVL208
	.4byte	.LVL216
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL108
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL123
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x8c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x3
	.byte	0x76
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL133
	.4byte	.LFE27
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL128
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL113
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL99
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL106
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL107
	.4byte	.LFE26
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL93
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL93
	.4byte	.LFE25
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL88
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x5
	.byte	0x7a
	.byte	0x7
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x5
	.byte	0x7a
	.byte	0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LFE23
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LFE22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL80
	.4byte	.LFE22
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL78
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL75
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL76
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL74
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL72
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL68
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x9
	.byte	0x7a
	.byte	0
	.byte	0xc
	.4byte	0x400000f0
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL69
	.4byte	.LFE17
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xf1,0xff,0xff,0x7e
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0xc
	.4byte	0x20000e
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL64
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL58
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL53
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL54
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL50
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xb
	.2byte	0xff7f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL42
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0x80
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL35
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xb
	.2byte	0xff7f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL16
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL10
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL6
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL139
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL144
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL158
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL168
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL171
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL184
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL186
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL188
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL204
	.4byte	.LVL205
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL139
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL144
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL202
	.4byte	.LVL205
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xa
	.2byte	0x382
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0xb
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x40
	.byte	0x44
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x82
	.byte	0x30
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xa
	.2byte	0x382
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x4
	.byte	0xa
	.2byte	0x386
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x4
	.byte	0xa
	.2byte	0x382
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x4
	.byte	0xa
	.2byte	0x1382
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL162
	.4byte	.LVL170
	.2byte	0x4
	.byte	0xa
	.2byte	0x3382
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xa
	.2byte	0x3382
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LVL183
	.2byte	0x4
	.byte	0xa
	.2byte	0x2386
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LVL186
	.2byte	0x4
	.byte	0xa
	.2byte	0x2382
	.byte	0x9f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x4
	.byte	0xa
	.2byte	0x382
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x4
	.byte	0xa
	.2byte	0x1382
	.byte	0x9f
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xf0,0xff,0xff,0xfe,0x7d
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LVL193
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL193
	.4byte	.LVL194
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xf000
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x82
	.byte	0x28
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL140
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL205
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL189
	.4byte	.LVL197-1
	.2byte	0x7
	.byte	0x79
	.byte	0x2
	.byte	0x94
	.byte	0x2
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL162
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL162
	.4byte	.LVL165
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL162
	.4byte	.LVL165
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL162
	.4byte	.LVL165
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL162
	.4byte	.LVL165
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x87,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x42
	.byte	0x49
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL162
	.4byte	.LVL165
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL171
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL171
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL171
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL171
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL171
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST61:
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x87,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x46
	.byte	0x49
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL171
	.4byte	.LVL174
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST66:
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x87,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0xc4
	.byte	0x46
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL177
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL177
	.4byte	.LVL180
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL177
	.4byte	.LVL180
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL177
	.4byte	.LVL180
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST74:
	.4byte	.LVL177
	.4byte	.LVL180
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST75:
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x87,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x42
	.byte	0x47
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST76:
	.4byte	.LVL177
	.4byte	.LVL180
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL1
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x7
	.byte	0x7b
	.byte	0
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE33
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0xe4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
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
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LFB33
	.4byte	.LFE33
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
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF94:
	.string	"./drivers/lhal/src/qcc74x_mjpeg.c"
.LASF25:
	.string	"qcc74x_device_s"
.LASF84:
	.string	"qcc74x_mjpeg_init"
.LASF20:
	.string	"reg_base"
.LASF81:
	.string	"frame_count"
.LASF89:
	.string	"qcc74x_mjpeg_set_framesize"
.LASF91:
	.string	"arch_memcpy_fast"
.LASF75:
	.string	"qcc74x_mjpeg_tcint_mask"
.LASF55:
	.string	"qcc74x_mjpeg_calculate_quantize_table"
.LASF29:
	.string	"rows"
.LASF51:
	.string	"input_yy"
.LASF22:
	.string	"sub_idx"
.LASF9:
	.string	"long long int"
.LASF7:
	.string	"__uint32_t"
.LASF60:
	.string	"qcc74x_mjpeg_swap_is_block_full"
.LASF33:
	.string	"input_bufaddr1"
.LASF4:
	.string	"__uint16_t"
.LASF48:
	.string	"header"
.LASF2:
	.string	"short int"
.LASF85:
	.string	"config"
.LASF23:
	.string	"dev_type"
.LASF24:
	.string	"user_data"
.LASF13:
	.string	"uint8_t"
.LASF66:
	.string	"qcc74x_mjpeg_pop_one_frame"
.LASF16:
	.string	"uintptr_t"
.LASF59:
	.string	"qcc74x_mjpeg_feature_control"
.LASF95:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/lhal"
.LASF39:
	.string	"q_table_50_uv"
.LASF0:
	.string	"signed char"
.LASF64:
	.string	"qcc74x_mjpeg_get_swap_bit_count"
.LASF28:
	.string	"quality"
.LASF27:
	.string	"format"
.LASF69:
	.string	"int_clear"
.LASF74:
	.string	"qcc74x_mjpeg_swapint_mask"
.LASF77:
	.string	"qcc74x_mjpeg_kick_stop"
.LASF6:
	.string	"long int"
.LASF58:
	.string	"scale_factor"
.LASF45:
	.string	"qcc74x_mjpeg_update_input_output_buff"
.LASF3:
	.string	"__uint8_t"
.LASF71:
	.string	"qcc74x_mjpeg_errint_mask"
.LASF70:
	.string	"qcc74x_mjpeg_get_intstatus"
.LASF40:
	.string	"regval"
.LASF92:
	.string	"arch_memset"
.LASF19:
	.string	"name"
.LASF38:
	.string	"q_table_50_y"
.LASF36:
	.string	"input_yy_table"
.LASF76:
	.string	"qcc74x_mjpeg_kick"
.LASF68:
	.string	"qcc74x_mjpeg_int_clear"
.LASF1:
	.string	"unsigned char"
.LASF82:
	.string	"qcc74x_mjpeg_stop"
.LASF26:
	.string	"qcc74x_mjpeg_config_s"
.LASF31:
	.string	"resolution_y"
.LASF10:
	.string	"long long unsigned int"
.LASF49:
	.string	"header_len"
.LASF15:
	.string	"uint32_t"
.LASF86:
	.string	"blocks"
.LASF12:
	.string	"unsigned int"
.LASF14:
	.string	"uint16_t"
.LASF43:
	.string	"output_buff"
.LASF5:
	.string	"short unsigned int"
.LASF32:
	.string	"input_bufaddr0"
.LASF50:
	.string	"qcc74x_mjpeg_fill_quantize_table"
.LASF42:
	.string	"input_buf1"
.LASF18:
	.string	"char"
.LASF47:
	.string	"qcc74x_mjpeg_fill_jpeg_header_tail"
.LASF61:
	.string	"qcc74x_mjpeg_get_swap_block_info"
.LASF83:
	.string	"qcc74x_mjpeg_start"
.LASF62:
	.string	"qcc74x_mjpeg_get_frame_info"
.LASF17:
	.string	"size_t"
.LASF73:
	.string	"_Bool"
.LASF88:
	.string	"tmp_table_uv"
.LASF21:
	.string	"irq_num"
.LASF53:
	.string	"tmp1"
.LASF54:
	.string	"tmp2"
.LASF79:
	.string	"kick_count"
.LASF93:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF8:
	.string	"long unsigned int"
.LASF63:
	.string	"bytes"
.LASF11:
	.string	"__uintptr_t"
.LASF30:
	.string	"resolution_x"
.LASF72:
	.string	"mask"
.LASF57:
	.string	"output_table"
.LASF90:
	.string	"qcc74x_mjpeg_set_yuv422_interleave_order"
.LASF87:
	.string	"tmp_table_y"
.LASF78:
	.string	"qcc74x_mjpeg_kick_run"
.LASF35:
	.string	"output_bufsize"
.LASF80:
	.string	"qcc74x_mjpeg_sw_run"
.LASF65:
	.string	"qcc74x_mjpeg_pop_swap_block"
.LASF46:
	.string	"qcc74x_mjpeg_set_yuv420sp_cam_input"
.LASF56:
	.string	"input_table"
.LASF44:
	.string	"output_buff_size"
.LASF52:
	.string	"input_uv"
.LASF34:
	.string	"output_bufaddr"
.LASF67:
	.string	"qcc74x_mjpeg_get_frame_count"
.LASF41:
	.string	"input_buf0"
.LASF37:
	.string	"input_uv_table"
	.ident	"GCC: (GNU) 10.4.0"
