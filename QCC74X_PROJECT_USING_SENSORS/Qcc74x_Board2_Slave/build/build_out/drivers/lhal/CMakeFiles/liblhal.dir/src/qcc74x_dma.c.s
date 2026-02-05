	.file	"qcc74x_dma.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.dma0_isr,"ax",@progbits
	.align	1
	.globl	dma0_isr
	.type	dma0_isr, @function
dma0_isr:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_dma.c"
	.loc 1 31 1
	.cfi_startproc
.LVL0:
	.loc 1 32 5
	.loc 1 34 5
	.loc 1 31 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 34 12
	li	a5,536920064
	.loc 1 31 1
	sw	s2,16(sp)
	.cfi_offset 18, -16
	.loc 1 34 12
	lw	s2,4(a5)
.LVL1:
	.loc 1 35 5 is_stmt 1
	.loc 1 31 1 is_stmt 0
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	lui	s0,%hi(.LANCHOR0)
	.loc 1 35 61
	sw	s2,8(a5)
	.loc 1 37 5 is_stmt 1
.LBB7:
	.loc 1 37 10
.LVL2:
	.loc 1 37 25
	addi	s0,s0,%lo(.LANCHOR0)
.LBE7:
	.loc 1 35 61 is_stmt 0
	li	s1,0
.LBB8:
	.loc 1 38 25
	li	s4,1
	.loc 1 37 5
	li	s3,8
.LVL3:
.L3:
	.loc 1 38 9 is_stmt 1
	.loc 1 38 25 is_stmt 0
	sll	a5,s4,s1
	.loc 1 38 20
	and	a5,a5,s2
	.loc 1 38 12
	beq	a5,zero,.L2
	.loc 1 39 13 is_stmt 1
	lw	a5,0(s0)
	lw	a0,4(s0)
	jalr	a5
.LVL4:
.L2:
	.loc 1 37 32 discriminator 2
	.loc 1 37 25 discriminator 2
	.loc 1 37 5 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL5:
	addi	s0,s0,8
	bne	s1,s3,.L3
.LBE8:
	.loc 1 42 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
.LVL6:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	dma0_isr, .-dma0_isr
	.section	.text.qcc74x_dma_channel_init,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_init
	.type	qcc74x_dma_channel_init, @function
qcc74x_dma_channel_init:
.LFB6:
	.loc 1 75 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 76 5
	.loc 1 77 5
	.loc 1 78 5
	.loc 1 79 5
	.loc 1 80 5
	.loc 1 81 5
	.loc 1 86 5
	.loc 1 87 5
	.loc 1 89 5
	.loc 1 92 12 is_stmt 0
	li	a3,536920064
	lw	a5,48(a3)
	.loc 1 89 18
	lw	a4,4(a0)
.LVL8:
	.loc 1 92 5 is_stmt 1
	.loc 1 93 5
	.loc 1 93 12 is_stmt 0
	ori	a5,a5,1
.LVL9:
	.loc 1 94 5 is_stmt 1
	.loc 1 94 69 is_stmt 0
	sw	a5,48(a3)
	.loc 1 97 5 is_stmt 1
	.loc 1 97 12 is_stmt 0
	lw	a5,16(a4)
.LVL10:
	.loc 1 98 5 is_stmt 1
	.loc 1 105 12 is_stmt 0
	li	a3,58867712
	.loc 1 98 12
	andi	a5,a5,-2
.LVL11:
	.loc 1 99 5 is_stmt 1
	.loc 1 99 63 is_stmt 0
	sw	a5,16(a4)
	.loc 1 104 5 is_stmt 1
	.loc 1 104 12 is_stmt 0
	lw	a5,12(a4)
.LVL12:
	.loc 1 105 5 is_stmt 1
	.loc 1 105 12 is_stmt 0
	and	a3,a5,a3
.LVL13:
	.loc 1 108 5 is_stmt 1
	.loc 1 108 8 is_stmt 0
	lbu	a5,12(a1)
	beq	a5,zero,.L10
	.loc 1 109 9 is_stmt 1
	.loc 1 109 16 is_stmt 0
	li	a5,67108864
	or	a3,a3,a5
.LVL14:
.L10:
	.loc 1 111 5 is_stmt 1
	.loc 1 111 8 is_stmt 0
	lbu	a5,13(a1)
	beq	a5,zero,.L11
	.loc 1 112 9 is_stmt 1
	.loc 1 112 16 is_stmt 0
	li	a5,134217728
	or	a3,a3,a5
.LVL15:
.L11:
	.loc 1 115 5 is_stmt 1
	.loc 1 116 5
	.loc 1 117 5
	.loc 1 118 5
	.loc 1 115 22 is_stmt 0
	lbu	a5,16(a1)
	.loc 1 116 22
	lbu	a2,17(a1)
	.loc 1 115 34
	slli	a5,a5,18
	.loc 1 116 34
	slli	a2,a2,21
.LVL16:
	.loc 1 118 12
	or	a5,a5,a2
	.loc 1 117 22
	lbu	a2,14(a1)
.LVL17:
	.loc 1 117 40
	slli	a2,a2,12
.LVL18:
	.loc 1 118 12
	or	a5,a5,a2
	.loc 1 118 22
	lbu	a2,15(a1)
.LVL19:
	.loc 1 118 40
	slli	a2,a2,15
	.loc 1 118 12
	or	a5,a5,a2
	or	a5,a5,a3
.LVL20:
	.loc 1 119 5 is_stmt 1
	.loc 1 119 63 is_stmt 0
	sw	a5,12(a4)
	.loc 1 121 5 is_stmt 1
	.loc 1 121 12 is_stmt 0
	lw	a5,16(a4)
.LVL21:
	.loc 1 122 5 is_stmt 1
	.loc 1 123 5
	.loc 1 124 5
	.loc 1 125 5
	.loc 1 125 12 is_stmt 0
	li	a3,-1072709632
	addi	a3,a3,1
	.loc 1 127 32
	lw	a2,8(a1)
	.loc 1 125 12
	and	a3,a5,a3
.LVL22:
	.loc 1 126 5 is_stmt 1
	.loc 1 127 5
	.loc 1 128 5
	.loc 1 126 32 is_stmt 0
	lw	a5,4(a1)
	.loc 1 127 32
	slli	a2,a2,6
.LVL23:
	.loc 1 126 32
	slli	a5,a5,1
	.loc 1 128 12
	or	a5,a5,a2
	.loc 1 128 22
	lbu	a2,0(a1)
.LVL24:
	.loc 1 128 34
	slli	a2,a2,11
	.loc 1 128 12
	or	a5,a5,a2
	or	a5,a5,a3
.LVL25:
	.loc 1 129 5 is_stmt 1
	.loc 1 129 63 is_stmt 0
	sw	a5,16(a4)
	.loc 1 132 5 is_stmt 1
	.loc 1 132 12 is_stmt 0
	lw	a5,16(a4)
.LVL26:
	.loc 1 133 5 is_stmt 1
	.loc 1 133 12 is_stmt 0
	li	a3,49152
	or	a5,a5,a3
.LVL27:
	.loc 1 134 5 is_stmt 1
	.loc 1 134 63 is_stmt 0
	sw	a5,16(a4)
	.loc 1 136 5 is_stmt 1
	.loc 1 136 12 is_stmt 0
	lw	a5,12(a4)
.LVL28:
	.loc 1 137 5 is_stmt 1
	.loc 1 137 12 is_stmt 0
	li	a3,-2147483648
	xori	a3,a3,-1
	and	a5,a5,a3
.LVL29:
	.loc 1 138 5 is_stmt 1
	.loc 1 138 63 is_stmt 0
	sw	a5,12(a4)
	.loc 1 141 5 is_stmt 1
	.loc 1 141 79 is_stmt 0
	lbu	a4,10(a0)
.LVL30:
	.loc 1 141 73
	li	a5,1
.LVL31:
	sll	a5,a5,a4
	.loc 1 141 68
	li	a4,536920064
	sw	a5,8(a4)
	.loc 1 142 5 is_stmt 1
	.loc 1 142 69 is_stmt 0
	sw	a5,16(a4)
	.loc 1 144 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_dma_channel_init, .-qcc74x_dma_channel_init
	.section	.text.qcc74x_dma_channel_lli_reload,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_lli_reload
	.type	qcc74x_dma_channel_lli_reload, @function
qcc74x_dma_channel_lli_reload:
.LFB9:
	.loc 1 212 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 216 5
	.loc 1 217 5
	.loc 1 218 5
	.loc 1 219 5
	.loc 1 220 5
	.loc 1 221 5
	.loc 1 222 5
	.loc 1 224 5
	.loc 1 224 18 is_stmt 0
	lw	t0,4(a0)
.LVL33:
	.loc 1 226 5 is_stmt 1
	.loc 1 212 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s2,48(sp)
	.loc 1 226 53
	lw	t3,12(t0)
	.loc 1 228 5 is_stmt 1
	.loc 1 212 1 is_stmt 0
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s1,52(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	s8,24(sp)
	sw	s9,20(sp)
	sw	s10,16(sp)
	sw	s11,12(sp)
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.loc 1 228 30
	extu	t3,t3,18+2-1,18
	li	a5,3
	li	s2,0
	beq	t3,a5,.L19
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	lrhu	s2,a5,t3,1
.L19:
.LVL34:
	.loc 1 242 5 is_stmt 1
.LBB13:
	.loc 1 242 10
	.loc 1 264 49 is_stmt 0
	li	t5,4096
.LBB14:
.LBB15:
.LBB16:
	.loc 1 198 44
	li	s3,-2147479552
.LBE16:
.LBE15:
.LBE14:
	.loc 1 242 17
	li	t2,0
.LBE13:
	.loc 1 221 14
	li	s0,0
	.loc 1 218 14
	li	a5,0
.LBB31:
	.loc 1 243 9
	li	s6,1
	.loc 1 264 49
	addi	t5,t5,-32
.LBB26:
.LBB21:
	.loc 1 180 36
	li	s7,2147479552
.LBB17:
	.loc 1 193 13
	li	s8,134217728
	.loc 1 198 44
	li	s9,-2147483648
	addi	s3,s3,-1
.LVL35:
.L20:
.LBE17:
.LBE21:
.LBE26:
	.loc 1 242 24 is_stmt 1 discriminator 1
	.loc 1 242 5 is_stmt 0 discriminator 1
	bne	t2,a4,.L32
.LBE31:
	.loc 1 284 77
	lw	a5,0(a1)
.LVL36:
	mv	a0,a1
.LVL37:
	.loc 1 284 5 is_stmt 1
	.loc 1 284 63 is_stmt 0
	sw	a5,0(t0)
	.loc 1 285 5 is_stmt 1
	.loc 1 285 77 is_stmt 0
	lw	a5,4(a1)
	.loc 1 285 63
	sw	a5,4(t0)
	.loc 1 286 5 is_stmt 1
	.loc 1 286 77 is_stmt 0
	lw	a5,8(a1)
	.loc 1 286 63
	sw	a5,8(t0)
	.loc 1 287 5 is_stmt 1
	.loc 1 287 85 is_stmt 0
	lw	a5,12(a1)
	.loc 1 290 5
	slli	a1,s0,4
.LVL38:
	.loc 1 287 63
	sw	a5,12(t0)
	.loc 1 290 5 is_stmt 1
	call	qcc74x_l1c_dcache_clean_range
.LVL39:
	.loc 1 292 5
	.loc 1 292 12 is_stmt 0
	mv	a0,s0
.LVL40:
.L18:
	.loc 1 294 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL41:
	lw	s1,52(sp)
	.cfi_restore 9
	lw	s2,48(sp)
	.cfi_restore 18
.LVL42:
	lw	s3,44(sp)
	.cfi_restore 19
	lw	s4,40(sp)
	.cfi_restore 20
	lw	s5,36(sp)
	.cfi_restore 21
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	lw	s9,20(sp)
	.cfi_restore 25
	lw	s10,16(sp)
	.cfi_restore 26
	lw	s11,12(sp)
	.cfi_restore 27
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL43:
.L32:
	.cfi_restore_state
.LBB32:
	.loc 1 243 9 is_stmt 1
	beq	t3,s6,.L21
	li	s1,2
	beq	t3,s1,.L22
	bne	t3,zero,.L23
	.loc 1 245 17
	.loc 1 245 37 is_stmt 0
	lw	a5,8(a3)
.LVL44:
	.loc 1 246 17 is_stmt 1
.L23:
	.loc 1 264 9
	.loc 1 264 49 is_stmt 0
	divu	a6,a5,t5
.LVL45:
	.loc 1 264 27
	addi	s1,a6,1
.LVL46:
	.loc 1 265 9 is_stmt 1
	.loc 1 265 27 is_stmt 0
	remu	t1,a5,t5
.LVL47:
	.loc 1 268 9 is_stmt 1
	.loc 1 268 12 is_stmt 0
	beq	s1,s6,.L25
	.loc 1 268 35 discriminator 1
	li	a7,30
	bgtu	t1,a7,.L25
	.loc 1 269 13 is_stmt 1
.LVL48:
	.loc 1 270 13
	.loc 1 270 31 is_stmt 0
	add	t1,t1,t5
.LVL49:
	mv	s1,a6
.LVL50:
.L25:
	.loc 1 273 9 is_stmt 1
.LBB27:
.LBB22:
	.loc 1 178 100 is_stmt 0
	lw	a6,4(a0)
.LBE22:
.LBE27:
	.loc 1 273 45
	slli	t4,s0,4
	.loc 1 273 9
	lw	s4,0(a3)
.LBB28:
.LBB23:
	.loc 1 178 53
	lw	a6,12(a6)
.LVL51:
.LBE23:
.LBE28:
	.loc 1 273 9
	lw	s5,4(a3)
.LVL52:
.LBB29:
.LBB24:
	.loc 1 173 5 is_stmt 1
	.loc 1 174 5
	.loc 1 176 5
	.loc 1 178 5
	.loc 1 180 5
	.loc 1 181 5
.LBE24:
.LBE29:
	.loc 1 273 9 is_stmt 0
	add	t4,a1,t4
.LBB30:
.LBB25:
	.loc 1 180 36
	and	a6,a6,s7
.LVL53:
.LBB18:
	.loc 1 198 44
	or	t1,t1,s9
.LVL54:
.LBE18:
	.loc 1 180 36
	or	a6,a6,t5
	.loc 1 184 5 is_stmt 1
.LBB19:
	.loc 1 184 10
.LVL55:
	.loc 1 184 26
.LBE19:
	.loc 1 180 36 is_stmt 0
	mv	a7,t4
.LBB20:
	.loc 1 184 19
	li	t6,0
	.loc 1 197 28
	addi	s10,s1,-1
	.loc 1 198 44
	and	t1,t1,s3
.LVL56:
.L30:
	.loc 1 185 9 is_stmt 1
	.loc 1 189 13 is_stmt 0
	li	s11,67108864
	.loc 1 185 30
	sw	s4,0(a7)
	.loc 1 186 9 is_stmt 1
	.loc 1 186 30 is_stmt 0
	sw	s5,4(a7)
	.loc 1 187 9 is_stmt 1
	.loc 1 187 29 is_stmt 0
	sw	zero,8(a7)
	.loc 1 189 9 is_stmt 1
	.loc 1 189 13 is_stmt 0
	and	s11,a6,s11
	.loc 1 189 12
	beq	s11,zero,.L26
	.loc 1 190 13 is_stmt 1
	.loc 1 190 22 is_stmt 0
	add	s4,s4,s2
.LVL57:
.L26:
	.loc 1 193 9 is_stmt 1
	.loc 1 193 13 is_stmt 0
	and	s11,a6,s8
	.loc 1 193 12
	beq	s11,zero,.L27
	.loc 1 194 13 is_stmt 1
	.loc 1 194 22 is_stmt 0
	add	s5,s5,s2
.LVL58:
.L27:
	.loc 1 197 9 is_stmt 1
	.loc 1 197 12 is_stmt 0
	bne	s10,t6,.L28
	.loc 1 198 13 is_stmt 1
	.loc 1 199 13
	.loc 1 198 44 is_stmt 0
	and	a6,a6,s7
.LVL59:
	or	a6,a6,t1
.LVL60:
.L28:
	.loc 1 202 9 is_stmt 1
	.loc 1 202 12 is_stmt 0
	beq	t6,zero,.L29
	.loc 1 203 13 is_stmt 1
	.loc 1 203 37 is_stmt 0
	sw	a7,-8(a7)
.L29:
	.loc 1 206 9 is_stmt 1
	.loc 1 206 29 is_stmt 0
	sw	a6,12(a7)
	.loc 1 184 41 is_stmt 1
	.loc 1 184 42 is_stmt 0
	addi	t6,t6,1
.LVL61:
	.loc 1 184 26 is_stmt 1
	.loc 1 184 5 is_stmt 0
	addi	a7,a7,16
	bne	s1,t6,.L30
.LVL62:
.LBE20:
.LBE25:
.LBE30:
	.loc 1 274 9 is_stmt 1
	.loc 1 274 12 is_stmt 0
	beq	t2,zero,.L31
	.loc 1 275 13 is_stmt 1
	.loc 1 275 57 is_stmt 0
	sw	t4,-8(t4)
.L31:
	.loc 1 277 9 is_stmt 1
	.loc 1 277 31 is_stmt 0
	add	s0,s0,t6
.LVL63:
	.loc 1 279 9 is_stmt 1
	.loc 1 279 12 is_stmt 0
	addi	a3,a3,12
	bgtu	s0,a2,.L36
	.loc 1 242 35 is_stmt 1 discriminator 2
	.loc 1 242 36 is_stmt 0 discriminator 2
	addi	t2,t2,1
.LVL64:
	j	.L20
.LVL65:
.L21:
	.loc 1 248 17 is_stmt 1
	.loc 1 248 32 is_stmt 0
	lw	a5,8(a3)
.LVL66:
	.loc 1 248 40
	andi	a6,a5,1
.LVL67:
	.loc 1 248 20
	bne	a6,zero,.L35
	.loc 1 251 17 is_stmt 1
	.loc 1 251 37 is_stmt 0
	srli	a5,a5,1
.LVL68:
	.loc 1 252 17 is_stmt 1
	j	.L23
.LVL69:
.L22:
	.loc 1 254 17
	.loc 1 254 32 is_stmt 0
	lw	a5,8(a3)
.LVL70:
	.loc 1 254 40
	andi	a6,a5,3
.LVL71:
	.loc 1 254 20
	bne	a6,zero,.L35
	.loc 1 257 17 is_stmt 1
	.loc 1 257 37 is_stmt 0
	srli	a5,a5,2
.LVL72:
	.loc 1 258 17 is_stmt 1
	j	.L23
.LVL73:
.L35:
	.loc 1 249 28 is_stmt 0
	li	a0,-1
.LVL74:
	j	.L18
.LVL75:
.L36:
	.loc 1 280 20
	li	a0,-12
.LVL76:
	j	.L18
.LBE32:
	.cfi_endproc
.LFE9:
	.size	qcc74x_dma_channel_lli_reload, .-qcc74x_dma_channel_lli_reload
	.section	.text.qcc74x_dma_channel_lli_link_head,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_lli_link_head
	.type	qcc74x_dma_channel_lli_link_head, @function
qcc74x_dma_channel_lli_link_head:
.LFB10:
	.loc 1 402 1 is_stmt 1
	.cfi_startproc
.LVL77:
	.loc 1 406 5
	.loc 1 408 5
	.loc 1 402 1 is_stmt 0
	mv	a5,a1
	.loc 1 410 13
	slli	a1,a2,4
.LVL78:
	addi	a1,a1,-16
	.loc 1 410 42
	add	a3,a5,a1
	.loc 1 408 18
	lw	a4,4(a0)
.LVL79:
	.loc 1 410 5 is_stmt 1
	.loc 1 410 42 is_stmt 0
	sw	a5,8(a3)
	.loc 1 412 5 is_stmt 1
	.loc 1 412 77 is_stmt 0
	lw	a3,8(a5)
	.loc 1 415 5
	addi	a1,a1,16
	mv	a0,a5
.LVL80:
	.loc 1 412 63
	sw	a3,8(a4)
	.loc 1 415 5 is_stmt 1
	tail	qcc74x_l1c_dcache_clean_range
.LVL81:
	.cfi_endproc
.LFE10:
	.size	qcc74x_dma_channel_lli_link_head, .-qcc74x_dma_channel_lli_link_head
	.section	.text.qcc74x_dma_channel_start,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_start
	.type	qcc74x_dma_channel_start, @function
qcc74x_dma_channel_start:
.LFB11:
	.loc 1 421 1
	.cfi_startproc
.LVL82:
	.loc 1 425 5
	.loc 1 426 5
	.loc 1 428 5
	.loc 1 431 5
	.loc 1 431 62 is_stmt 0
	lw	a4,4(a0)
	.loc 1 431 12
	lw	a5,16(a4)
.LVL83:
	.loc 1 432 5 is_stmt 1
	.loc 1 432 12 is_stmt 0
	ori	a5,a5,1
.LVL84:
	.loc 1 433 5 is_stmt 1
	.loc 1 433 63 is_stmt 0
	sw	a5,16(a4)
.LVL85:
	.loc 1 435 1
	ret
	.cfi_endproc
.LFE11:
	.size	qcc74x_dma_channel_start, .-qcc74x_dma_channel_start
	.section	.text.qcc74x_dma_channel_stop,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_stop
	.type	qcc74x_dma_channel_stop, @function
qcc74x_dma_channel_stop:
.LFB12:
	.loc 1 438 1 is_stmt 1
	.cfi_startproc
.LVL86:
	.loc 1 442 5
	.loc 1 443 5
	.loc 1 445 5
	.loc 1 448 5
	.loc 1 448 62 is_stmt 0
	lw	a4,4(a0)
	.loc 1 448 12
	lw	a5,16(a4)
.LVL87:
	.loc 1 449 5 is_stmt 1
	.loc 1 449 12 is_stmt 0
	andi	a5,a5,-2
.LVL88:
	.loc 1 450 5 is_stmt 1
	.loc 1 450 63 is_stmt 0
	sw	a5,16(a4)
.LVL89:
	.loc 1 452 1
	ret
	.cfi_endproc
.LFE12:
	.size	qcc74x_dma_channel_stop, .-qcc74x_dma_channel_stop
	.section	.text.qcc74x_dma_channel_isbusy,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_isbusy
	.type	qcc74x_dma_channel_isbusy, @function
qcc74x_dma_channel_isbusy:
.LFB13:
	.loc 1 455 1 is_stmt 1
	.cfi_startproc
.LVL90:
	.loc 1 459 5
	.loc 1 460 5
	.loc 1 462 5
	.loc 1 464 5
	.loc 1 464 62 is_stmt 0
	lw	a5,4(a0)
	.loc 1 464 12
	lw	a0,16(a5)
.LVL91:
	.loc 1 465 5 is_stmt 1
	.loc 1 471 1 is_stmt 0
	andi	a0,a0,1
.LVL92:
	ret
	.cfi_endproc
.LFE13:
	.size	qcc74x_dma_channel_isbusy, .-qcc74x_dma_channel_isbusy
	.section	.text.qcc74x_dma_channel_tcint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_tcint_mask
	.type	qcc74x_dma_channel_tcint_mask, @function
qcc74x_dma_channel_tcint_mask:
.LFB14:
	.loc 1 474 1 is_stmt 1
	.cfi_startproc
.LVL93:
	.loc 1 478 5
	.loc 1 479 5
	.loc 1 481 5
	.loc 1 483 5
	.loc 1 484 66 is_stmt 0
	lw	a5,4(a0)
	.loc 1 484 16
	lw	a4,16(a5)
	.loc 1 483 8
	beq	a1,zero,.L57
	.loc 1 484 9 is_stmt 1
.LVL94:
	.loc 1 485 9
	.loc 1 485 16 is_stmt 0
	li	a3,32768
	or	a4,a4,a3
.LVL95:
	.loc 1 486 9 is_stmt 1
.L59:
	.loc 1 490 9
	.loc 1 490 67 is_stmt 0
	sw	a4,16(a5)
.LVL96:
	.loc 1 493 1
	ret
.LVL97:
.L57:
	.loc 1 488 9 is_stmt 1
	.loc 1 489 9
	.loc 1 489 16 is_stmt 0
	li	a3,-32768
	addi	a3,a3,-1
	and	a4,a4,a3
.LVL98:
	j	.L59
	.cfi_endproc
.LFE14:
	.size	qcc74x_dma_channel_tcint_mask, .-qcc74x_dma_channel_tcint_mask
	.section	.text.qcc74x_dma_channel_deinit,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_deinit
	.type	qcc74x_dma_channel_deinit, @function
qcc74x_dma_channel_deinit:
.LFB7:
	.loc 1 147 1 is_stmt 1
	.cfi_startproc
.LVL99:
	.loc 1 151 5
	.loc 1 147 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 147 1
	sw	a0,12(sp)
	.loc 1 151 5
	call	qcc74x_dma_channel_stop
.LVL100:
	.loc 1 152 5 is_stmt 1
	lw	a0,12(sp)
	.loc 1 154 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 152 5
	li	a1,1
	.loc 1 154 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL101:
	.loc 1 152 5
	tail	qcc74x_dma_channel_tcint_mask
.LVL102:
	.cfi_endproc
.LFE7:
	.size	qcc74x_dma_channel_deinit, .-qcc74x_dma_channel_deinit
	.section	.text.qcc74x_dma_channel_irq_attach,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_irq_attach
	.type	qcc74x_dma_channel_irq_attach, @function
qcc74x_dma_channel_irq_attach:
.LFB15:
	.loc 1 496 1 is_stmt 1
	.cfi_startproc
.LVL103:
	.loc 1 497 5
	.loc 1 496 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 497 21
	lbu	a3,9(a0)
	.loc 1 497 31
	lbu	a4,10(a0)
	.loc 1 497 50
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	addsl	a4, a4, a3, 2
	srw	a1,a5,a4,3
	.loc 1 498 5 is_stmt 1
	.loc 1 498 46 is_stmt 0
	addsl	a5, a5, a4, 3
	sw	a2,4(a5)
	.loc 1 500 5 is_stmt 1
	li	a1,0
.LVL104:
	.loc 1 496 1 is_stmt 0
	mv	s0,a0
	.loc 1 500 5
	call	qcc74x_dma_channel_tcint_mask
.LVL105:
	.loc 1 502 5 is_stmt 1
	.loc 1 502 8 is_stmt 0
	lbu	a5,9(s0)
	bne	a5,zero,.L62
	.loc 1 503 9 is_stmt 1
	lbu	a0,8(s0)
	lui	a1,%hi(dma0_isr)
	li	a2,0
	addi	a1,a1,%lo(dma0_isr)
	call	qcc74x_irq_attach
.LVL106:
	.loc 1 504 9
	lbu	a0,8(s0)
	.loc 1 518 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL107:
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 504 9
	tail	qcc74x_irq_enable
.LVL108:
.L62:
	.cfi_restore_state
	.loc 1 518 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL109:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE15:
	.size	qcc74x_dma_channel_irq_attach, .-qcc74x_dma_channel_irq_attach
	.section	.text.qcc74x_dma_channel_irq_detach,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_irq_detach
	.type	qcc74x_dma_channel_irq_detach, @function
qcc74x_dma_channel_irq_detach:
.LFB16:
	.loc 1 521 1 is_stmt 1
	.cfi_startproc
.LVL110:
	.loc 1 522 5
	.loc 1 522 21 is_stmt 0
	lbu	a3,9(a0)
	.loc 1 522 31
	lbu	a4,10(a0)
	.loc 1 522 50
	lui	a5,%hi(.LANCHOR0)
	addi	a5,a5,%lo(.LANCHOR0)
	addsl	a4, a4, a3, 2
	srw	zero,a5,a4,3
	.loc 1 523 5 is_stmt 1
	.loc 1 523 46 is_stmt 0
	addsl	a5, a5, a4, 3
	sw	zero,4(a5)
	.loc 1 525 5 is_stmt 1
	li	a1,1
	tail	qcc74x_dma_channel_tcint_mask
.LVL111:
	.cfi_endproc
.LFE16:
	.size	qcc74x_dma_channel_irq_detach, .-qcc74x_dma_channel_irq_detach
	.section	.text.qcc74x_dma_channel_get_tcint_status,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_get_tcint_status
	.type	qcc74x_dma_channel_get_tcint_status, @function
qcc74x_dma_channel_get_tcint_status:
.LFB17:
	.loc 1 529 1
	.cfi_startproc
.LVL112:
	.loc 1 533 5
	.loc 1 535 5
	.loc 1 536 27 is_stmt 0
	lbu	a4,10(a0)
	.loc 1 535 12
	li	a5,536920064
	lw	a5,4(a5)
.LVL113:
	.loc 1 536 5 is_stmt 1
	.loc 1 536 21 is_stmt 0
	li	a0,1
.LVL114:
	sll	a0,a0,a4
	.loc 1 536 16
	and	a0,a0,a5
	.loc 1 542 1
	snez	a0,a0
	ret
	.cfi_endproc
.LFE17:
	.size	qcc74x_dma_channel_get_tcint_status, .-qcc74x_dma_channel_get_tcint_status
	.section	.text.qcc74x_dma_channel_tcint_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_channel_tcint_clear
	.type	qcc74x_dma_channel_tcint_clear, @function
qcc74x_dma_channel_tcint_clear:
.LFB18:
	.loc 1 545 1 is_stmt 1
	.cfi_startproc
.LVL115:
	.loc 1 549 5
	.loc 1 549 79 is_stmt 0
	lbu	a4,10(a0)
	.loc 1 549 73
	li	a5,1
	sll	a5,a5,a4
	.loc 1 549 68
	li	a4,536920064
	sw	a5,8(a4)
	.loc 1 551 1
	ret
	.cfi_endproc
.LFE18:
	.size	qcc74x_dma_channel_tcint_clear, .-qcc74x_dma_channel_tcint_clear
	.section	.text.qcc74x_rx_cycle_dma_init,"ax",@progbits
	.align	1
	.globl	qcc74x_rx_cycle_dma_init
	.type	qcc74x_rx_cycle_dma_init, @function
qcc74x_rx_cycle_dma_init:
.LFB19:
	.loc 1 561 1 is_stmt 1
	.cfi_startproc
.LVL116:
	.loc 1 572 5
	.loc 1 574 5
	.loc 1 561 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	ra,60(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 561 1
	mv	s0,a1
	.loc 1 575 26
	sw	a6,12(a0)
	.loc 1 583 43
	srli	a6,a6,1
.LVL117:
	.loc 1 561 1
	mv	a1,a2
.LVL118:
	.loc 1 574 21
	sw	a5,8(a0)
	.loc 1 575 5 is_stmt 1
	.loc 1 576 5
	.loc 1 577 22 is_stmt 0
	sw	a5,16(a0)
	.loc 1 561 1
	mv	a2,a3
.LVL119:
	.loc 1 576 32
	sw	zero,20(a0)
	.loc 1 577 5 is_stmt 1
	.loc 1 578 5
	.loc 1 578 20 is_stmt 0
	sw	s0,0(a0)
	.loc 1 579 5 is_stmt 1
	.loc 1 579 18 is_stmt 0
	sw	a7,24(a0)
	.loc 1 581 5 is_stmt 1
	.loc 1 581 30 is_stmt 0
	sw	a4,24(sp)
	.loc 1 582 5 is_stmt 1
	.loc 1 582 30 is_stmt 0
	sw	a5,28(sp)
	.loc 1 583 5 is_stmt 1
	.loc 1 585 30 is_stmt 0
	sw	a4,36(sp)
	.loc 1 586 61
	add	a5,a5,a6
.LVL120:
	.loc 1 589 22
	li	a4,2
.LVL121:
	addi	a3,sp,24
.LVL122:
	mv	a0,s0
.LVL123:
	.loc 1 583 28
	sw	a6,32(sp)
	.loc 1 585 5 is_stmt 1
	.loc 1 586 5
	.loc 1 586 30 is_stmt 0
	sw	a5,40(sp)
	.loc 1 587 5 is_stmt 1
	.loc 1 587 28 is_stmt 0
	sw	a6,44(sp)
	.loc 1 589 5 is_stmt 1
	.loc 1 589 22 is_stmt 0
	sw	a1,12(sp)
	call	qcc74x_dma_channel_lli_reload
.LVL124:
	.loc 1 591 5 is_stmt 1
	.loc 1 591 8 is_stmt 0
	blt	a0,zero,.L70
	.loc 1 595 5
	lw	a1,12(sp)
	mv	a2,a0
	.loc 1 595 5 is_stmt 1
	mv	a0,s0
.LVL125:
	call	qcc74x_dma_channel_lli_link_head
.LVL126:
	.loc 1 596 5
	.loc 1 596 12 is_stmt 0
	li	a0,0
.L68:
	.loc 1 598 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
.LVL127:
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
.LVL128:
	jr	ra
.LVL129:
.L70:
	.cfi_restore_state
	.loc 1 592 16
	li	a0,-1
.LVL130:
	j	.L68
	.cfi_endproc
.LFE19:
	.size	qcc74x_rx_cycle_dma_init, .-qcc74x_rx_cycle_dma_init
	.section	.text.qcc74x_rx_cycle_dma_process,"ax",@progbits
	.align	1
	.globl	qcc74x_rx_cycle_dma_process
	.type	qcc74x_rx_cycle_dma_process, @function
qcc74x_rx_cycle_dma_process:
.LFB20:
	.loc 1 601 1 is_stmt 1
	.cfi_startproc
.LVL131:
	.loc 1 605 5
	.loc 1 606 5
	.loc 1 607 5
	.loc 1 609 5
.LBB33:
.LBB34:
	.loc 1 650 5
	.loc 1 651 5
	.loc 1 652 5
	.loc 1 654 5
	.loc 1 654 18 is_stmt 0
	lw	a5,0(a0)
.LBE34:
.LBE33:
	.loc 1 601 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
.LBB37:
.LBB35:
	.loc 1 654 18
	lw	a5,4(a5)
.LVL132:
	.loc 1 656 5 is_stmt 1
	.loc 1 706 13
.LBE35:
.LBE37:
	.loc 1 601 1 is_stmt 0
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
.LBB38:
.LBB36:
	.loc 1 706 21
	lw	s1,4(a5)
.LVL133:
.LBE36:
.LBE38:
	.loc 1 610 5 is_stmt 1
.LBB39:
.LBB40:
	.loc 1 650 5
	.loc 1 651 5
	.loc 1 652 5
	.loc 1 654 5
	.loc 1 656 5
	.loc 1 710 13
.LBE40:
.LBE39:
	.loc 1 601 1 is_stmt 0
	mv	s0,a0
.LBB43:
.LBB41:
	.loc 1 710 22
	lw	s2,16(a5)
.LVL134:
.LBE41:
.LBE43:
	.loc 1 612 27
	lw	a0,16(a0)
.LVL135:
	.loc 1 601 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
.LBB44:
.LBB42:
	.loc 1 710 100
	extu	s2,s2,20+10-1,20
.LVL136:
.LBE42:
.LBE44:
	.loc 1 612 5 is_stmt 1
	.loc 1 612 8 is_stmt 0
	bgeu	a0,s1,.L73
	.loc 1 613 9 is_stmt 1
.LVL137:
	.loc 1 615 9
	lw	a5,24(s0)
	.loc 1 613 28 is_stmt 0
	sub	a1,s1,a0
.LVL138:
	.loc 1 615 9
	extu	a1,a1,15,0
.LVL139:
.L77:
	.loc 1 629 13
	jalr	a5
.LVL140:
	.loc 1 630 13 is_stmt 1
.L74:
	.loc 1 640 5
	.loc 1 640 22 is_stmt 0
	sw	s1,16(s0)
	.loc 1 641 5 is_stmt 1
	.loc 1 641 32 is_stmt 0
	sw	s2,20(s0)
	.loc 1 643 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL141:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL142:
	lw	s2,0(sp)
	.cfi_restore 18
.LVL143:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL144:
.L73:
	.cfi_restore_state
	.loc 1 623 9 is_stmt 1
	.loc 1 623 12 is_stmt 0
	bne	a0,s1,.L75
	.loc 1 623 45 discriminator 1
	lw	a5,20(s0)
	beq	a5,s2,.L74
.L75:
	.loc 1 625 13 is_stmt 1
.LVL145:
	.loc 1 626 13
	.loc 1 625 38 is_stmt 0
	lw	a5,12(s0)
	lw	a1,8(s0)
.LVL146:
	add	a1,a1,a5
	.loc 1 626 13
	lw	a5,24(s0)
	.loc 1 625 61
	sub	a1,a1,a0
	.loc 1 626 13
	extu	a1,a1,15,0
	jalr	a5
.LVL147:
	.loc 1 629 13 is_stmt 1
	lw	a0,8(s0)
	lw	a5,24(s0)
	sub	a1,s1,a0
	j	.L77
	.cfi_endproc
.LFE20:
	.size	qcc74x_rx_cycle_dma_process, .-qcc74x_rx_cycle_dma_process
	.section	.text.qcc74x_dma_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_dma_feature_control
	.type	qcc74x_dma_feature_control, @function
qcc74x_dma_feature_control:
.LFB21:
	.loc 1 646 1
	.cfi_startproc
.LVL148:
	.loc 1 650 5
	.loc 1 651 5
	.loc 1 652 5
	.loc 1 654 5
	.loc 1 656 5 is_stmt 0
	li	a5,6
	.loc 1 654 18
	lw	a0,4(a0)
.LVL149:
	.loc 1 656 5 is_stmt 1
	beq	a1,a5,.L79
	bgt	a1,a5,.L80
	li	a5,3
	beq	a1,a5,.L81
	bgt	a1,a5,.L82
	li	a5,1
	beq	a1,a5,.L83
	li	a5,2
	beq	a1,a5,.L84
.L106:
	li	a0,-1
.LVL150:
	ret
.LVL151:
.L82:
	li	a5,4
	bne	a1,a5,.L101
	.loc 1 689 13
	.loc 1 689 20 is_stmt 0
	lw	a5,12(a0)
.LVL152:
	.loc 1 690 13 is_stmt 1
	.loc 1 690 16 is_stmt 0
	beq	a2,zero,.L99
	.loc 1 691 17 is_stmt 1
.LVL153:
	.loc 1 692 17
	.loc 1 693 17
	li	a4,-58720256
	.loc 1 693 39 is_stmt 0
	slli	a2,a2,23
.LVL154:
	li	a1,58720256
.LVL155:
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL156:
	and	a2,a2,a1
	or	a2,a2,a5
	.loc 1 693 24
	li	a5,16384
	or	a2,a2,a5
.LVL157:
.L100:
	.loc 1 697 13 is_stmt 1
	.loc 1 697 71 is_stmt 0
	sw	a2,12(a0)
	j	.L107
.LVL158:
.L80:
	.loc 1 656 5
	li	a5,9
	beq	a1,a5,.L88
	bgt	a1,a5,.L89
	li	a5,7
	beq	a1,a5,.L90
	li	a5,8
	bne	a1,a5,.L106
	.loc 1 708 13 is_stmt 1
	.loc 1 708 21 is_stmt 0
	lw	a0,12(a0)
.LVL159:
	ret
.LVL160:
.L89:
	.loc 1 656 5
	li	a5,15
	bne	a1,a5,.L106
	.loc 1 712 13 is_stmt 1
	.loc 1 712 22 is_stmt 0
	lw	a0,12(a0)
.LVL161:
	.loc 1 712 99
	li	a5,4096
	addi	a5,a5,-1
	and	a0,a0,a5
.LVL162:
	.loc 1 764 1
	ret
.LVL163:
.L83:
	.loc 1 658 13 is_stmt 1
	.loc 1 658 20 is_stmt 0
	lw	a5,12(a0)
.LVL164:
	.loc 1 659 13 is_stmt 1
	.loc 1 660 24 is_stmt 0
	li	a4,67108864
	.loc 1 659 16
	bne	a2,zero,.L109
	.loc 1 662 17 is_stmt 1
	.loc 1 662 24 is_stmt 0
	li	a4,-67108864
.L108:
	.loc 1 683 24
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL165:
	j	.L98
.LVL166:
.L84:
	.loc 1 668 13 is_stmt 1
	.loc 1 668 20 is_stmt 0
	lw	a5,12(a0)
.LVL167:
	.loc 1 669 13 is_stmt 1
	.loc 1 670 24 is_stmt 0
	li	a4,134217728
	.loc 1 669 16
	bne	a2,zero,.L109
	.loc 1 672 17 is_stmt 1
	.loc 1 672 24 is_stmt 0
	li	a4,-134217728
	j	.L108
.LVL168:
.L81:
	.loc 1 679 13 is_stmt 1
	.loc 1 679 20 is_stmt 0
	lw	a5,12(a0)
.LVL169:
	.loc 1 680 13 is_stmt 1
	.loc 1 680 16 is_stmt 0
	beq	a2,zero,.L97
	.loc 1 681 17 is_stmt 1
	.loc 1 681 24 is_stmt 0
	li	a4,131072
.L109:
	or	a5,a5,a4
.LVL170:
.L98:
	.loc 1 685 13 is_stmt 1
	.loc 1 685 71 is_stmt 0
	sw	a5,12(a0)
	.loc 1 686 13 is_stmt 1
.LVL171:
.L107:
	.loc 1 698 13
	.loc 1 650 9 is_stmt 0
	li	a0,0
.LVL172:
	.loc 1 698 13
	ret
.LVL173:
.L97:
	.loc 1 683 17 is_stmt 1
	.loc 1 683 24 is_stmt 0
	li	a4,-131072
	j	.L108
.L99:
	.loc 1 695 17 is_stmt 1
	.loc 1 695 24 is_stmt 0
	li	a2,-16384
.LVL174:
	addi	a2,a2,-1
	and	a2,a5,a2
.LVL175:
	j	.L100
.LVL176:
.L101:
	.loc 1 646 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a1,a2
.LVL177:
	.loc 1 701 13 is_stmt 1
	li	a2,4
.LVL178:
	.loc 1 646 1 is_stmt 0
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 701 13
	call	arch_memcpy4
.LVL179:
	.loc 1 702 13 is_stmt 1
	.loc 1 764 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 650 9
	li	a0,0
	.loc 1 764 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL180:
.L79:
	.loc 1 704 13 is_stmt 1
	.loc 1 704 21 is_stmt 0
	lw	a0,0(a0)
.LVL181:
	ret
.LVL182:
.L90:
	.loc 1 706 13 is_stmt 1
	.loc 1 706 21 is_stmt 0
	lw	a0,4(a0)
.LVL183:
	ret
.LVL184:
.L88:
	.loc 1 710 13 is_stmt 1
	.loc 1 710 22 is_stmt 0
	lw	a0,16(a0)
.LVL185:
	.loc 1 710 100
	extu	a0,a0,20+10-1,20
	ret
	.cfi_endproc
.LFE21:
	.size	qcc74x_dma_feature_control, .-qcc74x_dma_feature_control
	.globl	dma_callback
	.globl	dma_base
	.section	.bss.dma_callback,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	dma_callback, @object
	.size	dma_callback, 32
dma_callback:
	.zero	32
	.section	.rodata.CSWTCH.13,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	CSWTCH.13, @object
	.size	CSWTCH.13, 6
CSWTCH.13:
	.half	4064
	.half	8128
	.half	16256
	.section	.rodata.dma_base,"a"
	.align	2
	.type	dma_base, @object
	.size	dma_base, 4
dma_base:
	.word	536920064
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_dma.h"
	.file 7 "./drivers/lhal/include/qcc74x_irq.h"
	.file 8 "./drivers/lhal/include/qcc74x_l1c.h"
	.file 9 "./drivers/lhal/include/qcc74x_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xda9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF114
	.byte	0xc
	.4byte	.LASF115
	.4byte	.LASF116
	.4byte	.Ldebug_ranges0+0xe0
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
	.byte	0x5
	.4byte	0xb3
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
	.4byte	.LASF38
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
	.4byte	0xb3
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
	.byte	0xb
	.byte	0x4
	.byte	0x6
	.2byte	0x1f0
	.byte	0x5
	.4byte	0x24e
	.byte	0xc
	.4byte	.LASF25
	.byte	0x6
	.2byte	0x1f2
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0
	.byte	0xc
	.4byte	.LASF26
	.byte	0x6
	.2byte	0x1f3
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0
	.byte	0xc
	.4byte	.LASF27
	.byte	0x6
	.2byte	0x1f4
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0
	.byte	0xc
	.4byte	.LASF28
	.byte	0x6
	.2byte	0x1f5
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x2
	.byte	0xf
	.byte	0
	.byte	0xc
	.4byte	.LASF29
	.byte	0x6
	.2byte	0x1f6
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0
	.byte	0xc
	.4byte	.LASF30
	.byte	0x6
	.2byte	0x1f7
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0
	.byte	0xc
	.4byte	.LASF31
	.byte	0x6
	.2byte	0x1f8
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0
	.byte	0xc
	.4byte	.LASF32
	.byte	0x6
	.2byte	0x1f9
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0
	.byte	0xc
	.4byte	.LASF33
	.byte	0x6
	.2byte	0x1fa
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.byte	0
	.byte	0xc
	.4byte	.LASF34
	.byte	0x6
	.2byte	0x1fb
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0
	.byte	0xd
	.string	"SI"
	.byte	0x6
	.2byte	0x1fc
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0
	.byte	0xd
	.string	"DI"
	.byte	0x6
	.2byte	0x1fd
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0
	.byte	0xc
	.4byte	.LASF35
	.byte	0x6
	.2byte	0x1fe
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0
	.byte	0xd
	.string	"I"
	.byte	0x6
	.2byte	0x1ff
	.byte	0x12
	.4byte	0xb3
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF117
	.byte	0x4
	.byte	0x6
	.2byte	0x1ef
	.byte	0x7
	.4byte	0x277
	.byte	0xf
	.4byte	.LASF36
	.byte	0x6
	.2byte	0x200
	.byte	0x7
	.4byte	0x159
	.byte	0xf
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x201
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0x10
	.4byte	.LASF39
	.byte	0x10
	.byte	0x6
	.2byte	0x20c
	.byte	0x8
	.4byte	0x2be
	.byte	0x11
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x20d
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0x11
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x20e
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x11
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x20f
	.byte	0xe
	.4byte	0xb3
	.byte	0x8
	.byte	0x11
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x210
	.byte	0x24
	.4byte	0x24e
	.byte	0xc
	.byte	0
	.byte	0x10
	.4byte	.LASF44
	.byte	0xc
	.byte	0x6
	.2byte	0x21a
	.byte	0x8
	.4byte	0x2f7
	.byte	0x11
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x21b
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0x11
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x21c
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x11
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x21d
	.byte	0xe
	.4byte	0xb3
	.byte	0x8
	.byte	0
	.byte	0x10
	.4byte	.LASF46
	.byte	0x14
	.byte	0x6
	.2byte	0x22d
	.byte	0x8
	.4byte	0x384
	.byte	0x11
	.4byte	.LASF47
	.byte	0x6
	.2byte	0x22e
	.byte	0xd
	.4byte	0x9b
	.byte	0
	.byte	0x11
	.4byte	.LASF48
	.byte	0x6
	.2byte	0x22f
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x11
	.4byte	.LASF49
	.byte	0x6
	.2byte	0x230
	.byte	0xe
	.4byte	0xb3
	.byte	0x8
	.byte	0x11
	.4byte	.LASF50
	.byte	0x6
	.2byte	0x231
	.byte	0xd
	.4byte	0x9b
	.byte	0xc
	.byte	0x11
	.4byte	.LASF51
	.byte	0x6
	.2byte	0x232
	.byte	0xd
	.4byte	0x9b
	.byte	0xd
	.byte	0x11
	.4byte	.LASF52
	.byte	0x6
	.2byte	0x233
	.byte	0xd
	.4byte	0x9b
	.byte	0xe
	.byte	0x11
	.4byte	.LASF53
	.byte	0x6
	.2byte	0x234
	.byte	0xd
	.4byte	0x9b
	.byte	0xf
	.byte	0x11
	.4byte	.LASF54
	.byte	0x6
	.2byte	0x235
	.byte	0xd
	.4byte	0x9b
	.byte	0x10
	.byte	0x11
	.4byte	.LASF55
	.byte	0x6
	.2byte	0x236
	.byte	0xd
	.4byte	0x9b
	.byte	0x11
	.byte	0
	.byte	0x5
	.4byte	0x2f7
	.byte	0x10
	.4byte	.LASF56
	.byte	0x1c
	.byte	0x6
	.2byte	0x239
	.byte	0x8
	.4byte	0x3fa
	.byte	0x11
	.4byte	.LASF57
	.byte	0x6
	.2byte	0x23a
	.byte	0x1d
	.4byte	0x3fa
	.byte	0
	.byte	0x11
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x23b
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x11
	.4byte	.LASF58
	.byte	0x6
	.2byte	0x23c
	.byte	0xe
	.4byte	0x400
	.byte	0x8
	.byte	0x11
	.4byte	.LASF59
	.byte	0x6
	.2byte	0x23d
	.byte	0xe
	.4byte	0xb3
	.byte	0xc
	.byte	0x11
	.4byte	.LASF60
	.byte	0x6
	.2byte	0x23e
	.byte	0xe
	.4byte	0x400
	.byte	0x10
	.byte	0x11
	.4byte	.LASF61
	.byte	0x6
	.2byte	0x23f
	.byte	0xe
	.4byte	0xb3
	.byte	0x14
	.byte	0x11
	.4byte	.LASF62
	.byte	0x6
	.2byte	0x240
	.byte	0xc
	.4byte	0x416
	.byte	0x18
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf0
	.byte	0x7
	.byte	0x4
	.4byte	0x9b
	.byte	0x12
	.4byte	0x416
	.byte	0x13
	.4byte	0x400
	.byte	0x13
	.4byte	0xb3
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x406
	.byte	0x8
	.4byte	.LASF63
	.byte	0x8
	.byte	0x1
	.byte	0x5
	.byte	0x8
	.4byte	0x444
	.byte	0x9
	.4byte	.LASF64
	.byte	0x1
	.byte	0x6
	.byte	0xc
	.4byte	0x44f
	.byte	0
	.byte	0xa
	.string	"arg"
	.byte	0x1
	.byte	0x7
	.byte	0xb
	.4byte	0xdc
	.byte	0x4
	.byte	0
	.byte	0x12
	.4byte	0x44f
	.byte	0x13
	.4byte	0xdc
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x444
	.byte	0x14
	.4byte	0xbf
	.4byte	0x465
	.byte	0x15
	.4byte	0x94
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	0x455
	.byte	0x16
	.4byte	.LASF65
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.4byte	0x465
	.byte	0x5
	.byte	0x3
	.4byte	dma_base
	.byte	0x14
	.4byte	0x41c
	.4byte	0x492
	.byte	0x15
	.4byte	0x94
	.byte	0
	.byte	0x15
	.4byte	0x94
	.byte	0x3
	.byte	0
	.byte	0x16
	.4byte	.LASF66
	.byte	0x1
	.byte	0xf
	.byte	0x20
	.4byte	0x47c
	.byte	0x5
	.byte	0x3
	.4byte	dma_callback
	.byte	0x17
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x285
	.byte	0x5
	.4byte	0x81
	.byte	0x1
	.4byte	0x505
	.byte	0x18
	.string	"dev"
	.byte	0x1
	.2byte	0x285
	.byte	0x38
	.4byte	0x3fa
	.byte	0x18
	.string	"cmd"
	.byte	0x1
	.2byte	0x285
	.byte	0x41
	.4byte	0x81
	.byte	0x18
	.string	"arg"
	.byte	0x1
	.2byte	0x285
	.byte	0x4d
	.4byte	0xd0
	.byte	0x19
	.string	"ret"
	.byte	0x1
	.2byte	0x28a
	.byte	0x9
	.4byte	0x81
	.byte	0x1a
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x28b
	.byte	0xe
	.4byte	0xb3
	.byte	0x1a
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x28c
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0x1b
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x258
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x60a
	.byte	0x1c
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x258
	.byte	0x3e
	.4byte	0x60a
	.4byte	.LLST53
	.byte	0x1c
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x258
	.byte	0x4a
	.4byte	0x610
	.4byte	.LLST54
	.byte	0x1d
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x25d
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST55
	.byte	0x1d
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x25e
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST56
	.byte	0x1d
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x25f
	.byte	0xe
	.4byte	0x400
	.4byte	.LLST57
	.byte	0x1e
	.4byte	0x4a4
	.4byte	.LBB33
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.2byte	0x261
	.byte	0x27
	.4byte	0x5bf
	.byte	0x1f
	.4byte	0x4d0
	.4byte	.LLST58
	.byte	0x1f
	.4byte	0x4c3
	.4byte	.LLST59
	.byte	0x1f
	.4byte	0x4b6
	.4byte	.LLST60
	.byte	0x20
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x21
	.4byte	0x4dd
	.4byte	.LLST58
	.byte	0x22
	.4byte	0x4ea
	.byte	0x21
	.4byte	0x4f7
	.4byte	.LLST62
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	0x4a4
	.4byte	.LBB39
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.2byte	0x262
	.byte	0x15
	.byte	0x1f
	.4byte	0x4d0
	.4byte	.LLST63
	.byte	0x1f
	.4byte	0x4c3
	.4byte	.LLST64
	.byte	0x1f
	.4byte	0x4b6
	.4byte	.LLST65
	.byte	0x20
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x21
	.4byte	0x4dd
	.4byte	.LLST63
	.byte	0x22
	.4byte	0x4ea
	.byte	0x21
	.4byte	0x4f7
	.4byte	.LLST67
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x389
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF74
	.byte	0x24
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x229
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x719
	.byte	0x1c
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x229
	.byte	0x3a
	.4byte	0x60a
	.4byte	.LLST44
	.byte	0x1c
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x22a
	.byte	0x34
	.4byte	0x3fa
	.4byte	.LLST45
	.byte	0x1c
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x22b
	.byte	0x42
	.4byte	0x719
	.4byte	.LLST46
	.byte	0x1c
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x22c
	.byte	0x24
	.4byte	0x9b
	.4byte	.LLST47
	.byte	0x1c
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x22d
	.byte	0x25
	.4byte	0xb3
	.4byte	.LLST48
	.byte	0x1c
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x22e
	.byte	0x25
	.4byte	0x400
	.4byte	.LLST49
	.byte	0x1c
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x22f
	.byte	0x25
	.4byte	0xb3
	.4byte	.LLST50
	.byte	0x1c
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x230
	.byte	0x23
	.4byte	0x416
	.4byte	.LLST51
	.byte	0x25
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x23c
	.byte	0x2e
	.4byte	0x71f
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x1d
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x24d
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST52
	.byte	0x26
	.4byte	.LVL124
	.4byte	0xa05
	.4byte	0x701
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0x27
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x27
	.byte	0x1
	.byte	0x5e
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x28
	.4byte	.LVL126
	.4byte	0x98f
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x277
	.byte	0x14
	.4byte	0x2be
	.4byte	0x72f
	.byte	0x15
	.4byte	0x94
	.byte	0x1
	.byte	0
	.byte	0x29
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x220
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x756
	.byte	0x2a
	.string	"dev"
	.byte	0x1
	.2byte	0x220
	.byte	0x3d
	.4byte	0x3fa
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x24
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x210
	.byte	0x5
	.4byte	0x610
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x792
	.byte	0x2b
	.string	"dev"
	.byte	0x1
	.2byte	0x210
	.byte	0x41
	.4byte	0x3fa
	.4byte	.LLST43
	.byte	0x25
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x215
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x29
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x208
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x7d1
	.byte	0x2b
	.string	"dev"
	.byte	0x1
	.2byte	0x208
	.byte	0x3c
	.4byte	0x3fa
	.4byte	.LLST42
	.byte	0x2c
	.4byte	.LVL111
	.4byte	0x85a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x29
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1ef
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x85a
	.byte	0x2b
	.string	"dev"
	.byte	0x1
	.2byte	0x1ef
	.byte	0x3c
	.4byte	0x3fa
	.4byte	.LLST39
	.byte	0x1c
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1ef
	.byte	0x48
	.4byte	0x44f
	.4byte	.LLST40
	.byte	0x2b
	.string	"arg"
	.byte	0x1
	.2byte	0x1ef
	.byte	0x64
	.4byte	0xdc
	.4byte	.LLST41
	.byte	0x26
	.4byte	.LVL105
	.4byte	0x85a
	.4byte	0x834
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x26
	.4byte	.LVL106
	.4byte	0xd7c
	.4byte	0x850
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	dma0_isr
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0x2d
	.4byte	.LVL108
	.4byte	0xd88
	.byte	0
	.byte	0x29
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1d9
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x8b2
	.byte	0x2a
	.string	"dev"
	.byte	0x1
	.2byte	0x1d9
	.byte	0x3c
	.4byte	0x3fa
	.byte	0x1
	.byte	0x5a
	.byte	0x2e
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1d9
	.byte	0x45
	.4byte	0x610
	.byte	0x1
	.byte	0x5b
	.byte	0x1d
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1de
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST36
	.byte	0x1d
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1df
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST37
	.byte	0
	.byte	0x24
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1c6
	.byte	0x5
	.4byte	0x610
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x901
	.byte	0x2b
	.string	"dev"
	.byte	0x1
	.2byte	0x1c6
	.byte	0x37
	.4byte	0x3fa
	.4byte	.LLST33
	.byte	0x1d
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1cb
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST34
	.byte	0x1d
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1cc
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST35
	.byte	0
	.byte	0x29
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1b5
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x948
	.byte	0x2a
	.string	"dev"
	.byte	0x1
	.2byte	0x1b5
	.byte	0x36
	.4byte	0x3fa
	.byte	0x1
	.byte	0x5a
	.byte	0x25
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1ba
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0x1d
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1bb
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST32
	.byte	0
	.byte	0x29
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1a4
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x98f
	.byte	0x2a
	.string	"dev"
	.byte	0x1
	.2byte	0x1a4
	.byte	0x37
	.4byte	0x3fa
	.byte	0x1
	.byte	0x5a
	.byte	0x25
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1a9
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0x1d
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1aa
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST31
	.byte	0
	.byte	0x29
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x18f
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0xa05
	.byte	0x2b
	.string	"dev"
	.byte	0x1
	.2byte	0x18f
	.byte	0x3f
	.4byte	0x3fa
	.4byte	.LLST27
	.byte	0x1c
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x190
	.byte	0x4b
	.4byte	0x719
	.4byte	.LLST28
	.byte	0x1c
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x191
	.byte	0x2e
	.4byte	0xb3
	.4byte	.LLST29
	.byte	0x1d
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x196
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST30
	.byte	0x2c
	.4byte	.LVL81
	.4byte	0xd94
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x34
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0x2f
	.4byte	.LASF94
	.byte	0x1
	.byte	0xd3
	.byte	0x5
	.4byte	0x81
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xb8a
	.byte	0x30
	.string	"dev"
	.byte	0x1
	.byte	0xd3
	.byte	0x3b
	.4byte	0x3fa
	.4byte	.LLST6
	.byte	0x31
	.4byte	.LASF92
	.byte	0x1
	.byte	0xd3
	.byte	0x66
	.4byte	0x719
	.4byte	.LLST7
	.byte	0x31
	.4byte	.LASF95
	.byte	0x1
	.byte	0xd3
	.byte	0x79
	.4byte	0xb3
	.4byte	.LLST8
	.byte	0x31
	.4byte	.LASF96
	.byte	0x1
	.byte	0xd3
	.byte	0xb2
	.4byte	0xb8a
	.4byte	.LLST9
	.byte	0x31
	.4byte	.LASF97
	.byte	0x1
	.byte	0xd3
	.byte	0xc5
	.4byte	0xb3
	.4byte	.LLST10
	.byte	0x32
	.4byte	.LASF68
	.byte	0x1
	.byte	0xd8
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST11
	.byte	0x32
	.4byte	.LASF98
	.byte	0x1
	.byte	0xd9
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST12
	.byte	0x32
	.4byte	.LASF99
	.byte	0x1
	.byte	0xda
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST13
	.byte	0x32
	.4byte	.LASF100
	.byte	0x1
	.byte	0xdb
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST14
	.byte	0x32
	.4byte	.LASF101
	.byte	0x1
	.byte	0xdc
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST15
	.byte	0x32
	.4byte	.LASF102
	.byte	0x1
	.byte	0xdd
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST16
	.byte	0x33
	.4byte	.LASF103
	.byte	0x1
	.byte	0xde
	.byte	0x24
	.4byte	0x24e
	.byte	0x34
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xb70
	.byte	0x35
	.string	"i"
	.byte	0x1
	.byte	0xf2
	.byte	0x11
	.4byte	0xd0
	.4byte	.LLST17
	.byte	0x23
	.4byte	0xb90
	.4byte	.LBB14
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x1
	.2byte	0x111
	.byte	0x9
	.byte	0x36
	.4byte	0xb9d
	.byte	0x1f
	.4byte	0xb9d
	.4byte	.LLST18
	.byte	0x1f
	.4byte	0xbe5
	.4byte	.LLST19
	.byte	0x1f
	.4byte	0xbd9
	.4byte	.LLST20
	.byte	0x1f
	.4byte	0xbcd
	.4byte	.LLST21
	.byte	0x1f
	.4byte	0xbc1
	.4byte	.LLST22
	.byte	0x1f
	.4byte	0xbb5
	.4byte	.LLST23
	.byte	0x36
	.4byte	0xba9
	.byte	0x20
	.4byte	.Ldebug_ranges0+0x38
	.byte	0x21
	.4byte	0xbf1
	.4byte	.LLST24
	.byte	0x21
	.4byte	0xbfd
	.4byte	.LLST25
	.byte	0x37
	.4byte	0xc09
	.4byte	.Ldebug_ranges0+0x70
	.byte	0x21
	.4byte	0xc0a
	.4byte	.LLST26
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x28
	.4byte	.LVL39
	.4byte	0xd94
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x4
	.byte	0x78
	.byte	0
	.byte	0x34
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x2be
	.byte	0x38
	.4byte	.LASF119
	.byte	0x1
	.byte	0x9c
	.byte	0x25
	.byte	0x1
	.4byte	0xc16
	.byte	0x39
	.string	"dev"
	.byte	0x1
	.byte	0x9c
	.byte	0x53
	.4byte	0x3fa
	.byte	0x3a
	.4byte	.LASF92
	.byte	0x1
	.byte	0x9d
	.byte	0x40
	.4byte	0x719
	.byte	0x3a
	.4byte	.LASF104
	.byte	0x1
	.byte	0x9e
	.byte	0x23
	.4byte	0xb3
	.byte	0x3a
	.4byte	.LASF40
	.byte	0x1
	.byte	0x9f
	.byte	0x23
	.4byte	0xb3
	.byte	0x3a
	.4byte	.LASF41
	.byte	0x1
	.byte	0xa0
	.byte	0x23
	.4byte	0xb3
	.byte	0x3a
	.4byte	.LASF105
	.byte	0x1
	.byte	0xa1
	.byte	0x23
	.4byte	0xb3
	.byte	0x3a
	.4byte	.LASF100
	.byte	0x1
	.byte	0xa2
	.byte	0x23
	.4byte	0xb3
	.byte	0x33
	.4byte	.LASF68
	.byte	0x1
	.byte	0xad
	.byte	0xe
	.4byte	0xb3
	.byte	0x33
	.4byte	.LASF103
	.byte	0x1
	.byte	0xae
	.byte	0x24
	.4byte	0x24e
	.byte	0x3b
	.byte	0x3c
	.string	"i"
	.byte	0x1
	.byte	0xb8
	.byte	0x13
	.4byte	0xb3
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LASF106
	.byte	0x1
	.byte	0x92
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xc68
	.byte	0x30
	.string	"dev"
	.byte	0x1
	.byte	0x92
	.byte	0x38
	.4byte	0x3fa
	.4byte	.LLST38
	.byte	0x26
	.4byte	.LVL100
	.4byte	0x901
	.4byte	0xc51
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x2c
	.4byte	.LVL102
	.4byte	0x85a
	.byte	0x27
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x72
	.byte	0x6c
	.byte	0x6
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x3d
	.4byte	.LASF107
	.byte	0x1
	.byte	0x4a
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xcbb
	.byte	0x3e
	.string	"dev"
	.byte	0x1
	.byte	0x4a
	.byte	0x36
	.4byte	0x3fa
	.byte	0x1
	.byte	0x5a
	.byte	0x3f
	.4byte	.LASF108
	.byte	0x1
	.byte	0x4a
	.byte	0x65
	.4byte	0xcbb
	.byte	0x1
	.byte	0x5b
	.byte	0x32
	.4byte	.LASF67
	.byte	0x1
	.byte	0x56
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0x32
	.4byte	.LASF68
	.byte	0x1
	.byte	0x57
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST5
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x384
	.byte	0x40
	.4byte	.LASF109
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xd1c
	.byte	0x30
	.string	"irq"
	.byte	0x1
	.byte	0x1e
	.byte	0x13
	.4byte	0x81
	.4byte	.LLST0
	.byte	0x30
	.string	"arg"
	.byte	0x1
	.byte	0x1e
	.byte	0x1e
	.4byte	0xdc
	.4byte	.LLST1
	.byte	0x32
	.4byte	.LASF67
	.byte	0x1
	.byte	0x20
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST2
	.byte	0x20
	.4byte	.Ldebug_ranges0+0
	.byte	0x35
	.string	"i"
	.byte	0x1
	.byte	0x25
	.byte	0x12
	.4byte	0x9b
	.4byte	.LLST3
	.byte	0
	.byte	0
	.byte	0x41
	.4byte	0x4a4
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0xd7c
	.byte	0x1f
	.4byte	0x4b6
	.4byte	.LLST68
	.byte	0x1f
	.4byte	0x4c3
	.4byte	.LLST69
	.byte	0x1f
	.4byte	0x4d0
	.4byte	.LLST70
	.byte	0x21
	.4byte	0x4dd
	.4byte	.LLST71
	.byte	0x21
	.4byte	0x4ea
	.4byte	.LLST72
	.byte	0x21
	.4byte	0x4f7
	.4byte	.LLST73
	.byte	0x28
	.4byte	.LVL179
	.4byte	0xda0
	.byte	0x27
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x27
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0x42
	.4byte	.LASF110
	.4byte	.LASF110
	.byte	0x7
	.byte	0x3f
	.byte	0x5
	.byte	0x42
	.4byte	.LASF111
	.4byte	.LASF111
	.byte	0x7
	.byte	0x4e
	.byte	0x6
	.byte	0x42
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0x8
	.byte	0x4c
	.byte	0x6
	.byte	0x42
	.4byte	.LASF113
	.4byte	.LASF113
	.byte	0x9
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
	.byte	0x13
	.byte	0x1
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xd
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
	.byte	0xb
	.byte	0xb
	.byte	0xd
	.byte	0xb
	.byte	0xc
	.byte	0xb
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x17
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xd
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
	.byte	0x10
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0xb
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xd
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
	.byte	0x38
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
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
	.byte	0x1f
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
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
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x27
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x28
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0x2b
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
	.byte	0x2c
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
	.byte	0x2d
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
	.byte	0x2e
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
	.byte	0x34
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x35
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
	.byte	0x36
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x37
	.byte	0xb
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x38
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
	.byte	0x39
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
	.byte	0x3a
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
	.byte	0x3b
	.byte	0xb
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x3c
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
	.byte	0x3d
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
	.byte	0x3e
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
	.byte	0x3f
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
	.byte	0x40
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x41
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
	.byte	0x42
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
.LLST53:
	.4byte	.LVL131
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL135
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL141
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL131
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL138
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL146
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL137
	.4byte	.LVL139
	.2byte	0x6
	.byte	0x79
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL147-1
	.2byte	0xb
	.byte	0x78
	.byte	0x8
	.byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x78
	.byte	0xc
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST56:
	.4byte	.LVL136
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x14
	.4byte	.LVL144
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST57:
	.4byte	.LVL133
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL142
	.4byte	.LVL144
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x10
	.4byte	.LVL144
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST58:
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST59:
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST60:
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.4byte	0
	.4byte	0
.LLST62:
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST63:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST64:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x39
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST65:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x7a
	.byte	0
	.4byte	0
	.4byte	0
.LLST67:
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL116
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL116
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL118
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL129
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL116
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL119
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL124-1
	.4byte	.LVL128
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x2
	.byte	0x72
	.byte	0x4c
	.4byte	.LVL129
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x91
	.byte	0x4c
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL116
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL122
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL116
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x91
	.byte	0x58
	.4byte	.LVL122
	.4byte	.LVL124-1
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	.LVL124-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL116
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x7a
	.byte	0x8
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL124-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST50:
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL117
	.4byte	.LVL123
	.2byte	0x2
	.byte	0x7a
	.byte	0xc
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0xc
	.4byte	.LVL124-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x60
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL116
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL124-1
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x61
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL125
	.4byte	.LVL126-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL114
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL110
	.4byte	.LVL111-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL111-1
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL103
	.4byte	.LVL105-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL105-1
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL109
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL104
	.4byte	.LVL105-1
	.2byte	0xa
	.byte	0x7e
	.byte	0
	.byte	0x33
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x22
	.4byte	.LVL105-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL103
	.4byte	.LVL105-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL105-1
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL94
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL93
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL96
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL91
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL89
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL85
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL77
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL78
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL81-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL77
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL81-1
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL79
	.4byte	.LVL81-1
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL43
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
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL32
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39-1
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL32
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL39-1
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL35
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL39-1
	.4byte	.LVL43
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL43
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL75
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL50
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL75
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL43
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL52
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL52
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL52
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL52
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL52
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL35
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL40
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL60
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL75
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x6f
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL99
	.4byte	.LVL100-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100-1
	.4byte	.LVL101
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL101
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x21
	.byte	0x7b
	.byte	0x10
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x42
	.byte	0x24
	.byte	0x7b
	.byte	0x11
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x45
	.byte	0x24
	.byte	0x21
	.byte	0x7b
	.byte	0xe
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3c
	.byte	0x24
	.byte	0x21
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1a
	.byte	0x7b
	.byte	0x10
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x42
	.byte	0x24
	.byte	0x7b
	.byte	0xe
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3c
	.byte	0x24
	.byte	0x21
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x21
	.byte	0x7b
	.byte	0x10
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x42
	.byte	0x24
	.byte	0x7b
	.byte	0x11
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x45
	.byte	0x24
	.byte	0x21
	.byte	0x7b
	.byte	0xe
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3c
	.byte	0x24
	.byte	0x21
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1a
	.byte	0x7b
	.byte	0x10
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x42
	.byte	0x24
	.byte	0x7b
	.byte	0x11
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x45
	.byte	0x24
	.byte	0x21
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x21
	.byte	0x7b
	.byte	0x10
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x42
	.byte	0x24
	.byte	0x7b
	.byte	0x11
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x45
	.byte	0x24
	.byte	0x21
	.byte	0x7b
	.byte	0xe
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3c
	.byte	0x24
	.byte	0x21
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xc001
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0xe
	.byte	0x7b
	.byte	0x4
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x7c
	.byte	0
	.byte	0x36
	.byte	0x24
	.byte	0x21
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0xc
	.byte	0x7b
	.byte	0x4
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0xf
	.byte	0x7b
	.byte	0x4
	.byte	0x6
	.byte	0x31
	.byte	0x24
	.byte	0x7b
	.byte	0x8
	.byte	0x6
	.byte	0x36
	.byte	0x24
	.byte	0x21
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
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
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST68:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL149
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST69:
	.4byte	.LVL148
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL155
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL177
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST70:
	.4byte	.LVL148
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL154
	.4byte	.LVL158
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL158
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL178
	.4byte	.LVL179-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL179-1
	.4byte	.LVL180
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL180
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST71:
	.4byte	.LVL148
	.4byte	.LVL162
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL163
	.4byte	.LFE21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST72:
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL153
	.4byte	.LVL156
	.2byte	0xd
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x63
	.byte	0x1a
	.byte	0xa
	.2byte	0x4000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL169
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST73:
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	.LVL151
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	.LVL163
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL173
	.4byte	.LVL179-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL185
	.4byte	.LFE21
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
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
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB27
	.4byte	.LBE27
	.4byte	.LBB28
	.4byte	.LBE28
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	0
	.4byte	0
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	.LBB18
	.4byte	.LBE18
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB37
	.4byte	.LBE37
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	0
	.4byte	0
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
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
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF47:
	.string	"direction"
.LASF20:
	.string	"reg_base"
.LASF66:
	.string	"dma_callback"
.LASF50:
	.string	"src_addr_inc"
.LASF29:
	.string	"dst_add_mode"
.LASF94:
	.string	"qcc74x_dma_channel_lli_reload"
.LASF116:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/lhal"
.LASF43:
	.string	"control"
.LASF12:
	.string	"unsigned int"
.LASF73:
	.string	"write_ptr"
.LASF64:
	.string	"handler"
.LASF25:
	.string	"TransferSize"
.LASF52:
	.string	"src_burst_count"
.LASF107:
	.string	"qcc74x_dma_channel_init"
.LASF88:
	.string	"qcc74x_dma_channel_isbusy"
.LASF96:
	.string	"transfer"
.LASF82:
	.string	"qcc74x_dma_channel_get_tcint_status"
.LASF55:
	.string	"dst_width"
.LASF62:
	.string	"copy"
.LASF112:
	.string	"qcc74x_l1c_dcache_clean_range"
.LASF15:
	.string	"uint32_t"
.LASF31:
	.string	"reserved_20"
.LASF105:
	.string	"transfer_offset"
.LASF98:
	.string	"actual_transfer_offset"
.LASF101:
	.string	"current_lli_count"
.LASF78:
	.string	"used_count"
.LASF97:
	.string	"count"
.LASF49:
	.string	"dst_req"
.LASF86:
	.string	"qcc74x_dma_channel_tcint_mask"
.LASF27:
	.string	"dst_min_mode"
.LASF10:
	.string	"long long unsigned int"
.LASF93:
	.string	"used_lli_count"
.LASF70:
	.string	"in_dma_isr"
.LASF91:
	.string	"qcc74x_dma_channel_lli_link_head"
.LASF4:
	.string	"__uint16_t"
.LASF75:
	.string	"rx_llipool"
.LASF41:
	.string	"dst_addr"
.LASF17:
	.string	"size_t"
.LASF57:
	.string	"dma_ch"
.LASF79:
	.string	"qcc74x_rx_cycle_dma_process"
.LASF32:
	.string	"DWidth"
.LASF28:
	.string	"DBSize"
.LASF74:
	.string	"_Bool"
.LASF117:
	.string	"qcc74x_dma_lli_control_s"
.LASF44:
	.string	"qcc74x_dma_channel_lli_transfer_s"
.LASF46:
	.string	"qcc74x_dma_channel_config_s"
.LASF69:
	.string	"rx_dma"
.LASF30:
	.string	"SWidth"
.LASF26:
	.string	"SBSize"
.LASF92:
	.string	"lli_pool"
.LASF61:
	.string	"dma_last_lli_count"
.LASF22:
	.string	"sub_idx"
.LASF53:
	.string	"dst_burst_count"
.LASF18:
	.string	"char"
.LASF13:
	.string	"uint8_t"
.LASF36:
	.string	"bits"
.LASF24:
	.string	"user_data"
.LASF9:
	.string	"long long int"
.LASF81:
	.string	"qcc74x_rx_cycle_dma_init"
.LASF72:
	.string	"dma_lli_count"
.LASF118:
	.string	"qcc74x_dma_feature_control"
.LASF38:
	.string	"qcc74x_device_s"
.LASF115:
	.string	"./drivers/lhal/src/qcc74x_dma.c"
.LASF103:
	.string	"dma_ctrl_cfg"
.LASF33:
	.string	"fix_cnt"
.LASF37:
	.string	"WORD"
.LASF104:
	.string	"lli_count"
.LASF45:
	.string	"nbytes"
.LASF95:
	.string	"max_lli_count"
.LASF111:
	.string	"qcc74x_irq_enable"
.LASF87:
	.string	"mask"
.LASF80:
	.string	"qcc74x_dma_channel_tcint_clear"
.LASF54:
	.string	"src_width"
.LASF51:
	.string	"dst_addr_inc"
.LASF102:
	.string	"lli_count_used_offset"
.LASF14:
	.string	"uint16_t"
.LASF63:
	.string	"qcc74x_dma_irq_callback"
.LASF84:
	.string	"qcc74x_dma_channel_irq_attach"
.LASF11:
	.string	"__uintptr_t"
.LASF106:
	.string	"qcc74x_dma_channel_deinit"
.LASF108:
	.string	"config"
.LASF119:
	.string	"qcc74x_dma_lli_config"
.LASF83:
	.string	"qcc74x_dma_channel_irq_detach"
.LASF2:
	.string	"short int"
.LASF89:
	.string	"qcc74x_dma_channel_stop"
.LASF6:
	.string	"long int"
.LASF68:
	.string	"channel_base"
.LASF71:
	.string	"length"
.LASF77:
	.string	"rx_transfers"
.LASF59:
	.string	"dst_buf_size"
.LASF109:
	.string	"dma0_isr"
.LASF3:
	.string	"__uint8_t"
.LASF19:
	.string	"name"
.LASF23:
	.string	"dev_type"
.LASF113:
	.string	"arch_memcpy4"
.LASF16:
	.string	"uintptr_t"
.LASF65:
	.string	"dma_base"
.LASF8:
	.string	"long unsigned int"
.LASF42:
	.string	"nextlli"
.LASF39:
	.string	"qcc74x_dma_channel_lli_pool_s"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"__uint32_t"
.LASF114:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF48:
	.string	"src_req"
.LASF85:
	.string	"callback"
.LASF0:
	.string	"signed char"
.LASF21:
	.string	"irq_num"
.LASF5:
	.string	"short unsigned int"
.LASF58:
	.string	"dst_buf"
.LASF100:
	.string	"last_transfer_len"
.LASF40:
	.string	"src_addr"
.LASF34:
	.string	"SLargerD"
.LASF76:
	.string	"rx_llipool_size"
.LASF60:
	.string	"read_ptr"
.LASF90:
	.string	"qcc74x_dma_channel_start"
.LASF67:
	.string	"regval"
.LASF35:
	.string	"Prot"
.LASF56:
	.string	"qcc74x_rx_cycle_dma"
.LASF110:
	.string	"qcc74x_irq_attach"
.LASF99:
	.string	"actual_transfer_len"
	.ident	"GCC: (GNU) 10.4.0"
