	.file	"utils_base64.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_base64encode,"ax",@progbits
	.align	1
	.globl	utils_base64encode
	.type	utils_base64encode, @function
utils_base64encode:
.LFB1:
	.file 1 "./components/utils/math/src/utils_base64.c"
	.loc 1 44 1
	.cfi_startproc
.LVL0:
	.loc 1 45 5
	.loc 1 46 5
	.loc 1 48 5
	.loc 1 48 8 is_stmt 0
	bne	a3,zero,.L2
.L4:
	.loc 1 50 16
	li	a0,0
.LVL1:
	ret
.LVL2:
.L2:
	.loc 1 53 5 is_stmt 1
	.loc 1 53 39 is_stmt 0
	addi	a5,a1,2
	.loc 1 53 44
	li	a6,3
	divu	a5,a5,a6
	.loc 1 53 23
	slli	a5,a5,2
	.loc 1 53 19
	sw	a5,0(a4)
	.loc 1 55 5 is_stmt 1
	.loc 1 55 8 is_stmt 0
	bgtu	a5,a2,.L4
.LBB2:
	.loc 1 67 43
	lui	a7,%hi(.LANCHOR0)
	mv	a6,a3
.LBE2:
	.loc 1 60 12
	li	a2,0
.LVL3:
.LBB3:
	.loc 1 67 43
	addi	a7,a7,%lo(.LANCHOR0)
.LVL4:
.L5:
.LBE3:
	.loc 1 60 24 is_stmt 1 discriminator 1
	.loc 1 60 5 is_stmt 0 discriminator 1
	bltu	a2,a1,.L7
	.loc 1 73 44
	li	a5,3
	remu	a1,a1,a5
.LVL5:
	.loc 1 73 31
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	.loc 1 73 12
	li	a2,0
.LVL6:
	.loc 1 74 44
	li	a0,61
.LVL7:
	.loc 1 73 31
	lrw	a1,a5,a1,2
.L8:
.LVL8:
	.loc 1 73 17 is_stmt 1 discriminator 1
	.loc 1 73 5 is_stmt 0 discriminator 1
	bne	a1,a2,.L9
	.loc 1 77 12
	li	a0,1
	.loc 1 78 1
	ret
.LVL9:
.L7:
.LBB4:
	.loc 1 61 9 is_stmt 1 discriminator 1
	.loc 1 61 62 is_stmt 0 discriminator 1
	addi	t1,a2,1
.LVL10:
	.loc 1 61 66 discriminator 1
	lrbu	a5,a0,a2,0
.LVL11:
	.loc 1 62 9 is_stmt 1 discriminator 1
	.loc 1 62 66 is_stmt 0 discriminator 1
	bleu	a1,t1,.L10
	.loc 1 62 62 discriminator 1
	addi	t4,a2,2
.LVL12:
	.loc 1 62 66 discriminator 1
	lrbu	t3,a0,t1,0
.LVL13:
	.loc 1 63 9 is_stmt 1 discriminator 1
	.loc 1 63 66 is_stmt 0 discriminator 1
	bleu	a1,t4,.L11
	.loc 1 63 62 discriminator 1
	addi	t1,a2,3
.LVL14:
	.loc 1 63 66 discriminator 1
	lrbu	a2,a0,t4,0
.LVL15:
.L6:
	.loc 1 65 9 is_stmt 1 discriminator 4
	.loc 1 65 56 is_stmt 0 discriminator 4
	slli	t3,t3,8
	.loc 1 65 36 discriminator 4
	slli	a5,a5,16
.LVL16:
	.loc 1 65 45 discriminator 4
	add	a5,a5,t3
	.loc 1 65 18 discriminator 4
	add	a2,a5,a2
.LVL17:
	.loc 1 67 9 is_stmt 1 discriminator 4
	.loc 1 67 52 is_stmt 0 discriminator 4
	srli	t3,a5,18
	.loc 1 68 62 discriminator 4
	extu	a5,a5,12+6-1,12
	.loc 1 68 26 discriminator 4
	lrbu	a5,a7,a5,0
	.loc 1 67 26 discriminator 4
	lrbu	t3,a7,t3,0
	addi	a6,a6,4
.LVL18:
	.loc 1 68 26 discriminator 4
	sb	a5,-3(a6)
	.loc 1 69 62 discriminator 4
	extu	a5,a2,6+6-1,6
	.loc 1 69 26 discriminator 4
	lrbu	a5,a7,a5,0
	.loc 1 70 62 discriminator 4
	andi	a2,a2,63
.LVL19:
	.loc 1 67 26 discriminator 4
	sb	t3,-4(a6)
	.loc 1 68 9 is_stmt 1 discriminator 4
.LVL20:
	.loc 1 69 9 discriminator 4
	.loc 1 69 26 is_stmt 0 discriminator 4
	sb	a5,-2(a6)
	.loc 1 70 9 is_stmt 1 discriminator 4
	.loc 1 70 26 is_stmt 0 discriminator 4
	lrbu	a5,a7,a2,0
	mv	a2,t1
	sb	a5,-1(a6)
	j	.L5
.LVL21:
.L10:
	.loc 1 62 66
	li	t3,0
.L12:
	.loc 1 63 66
	li	a2,0
	j	.L6
.LVL22:
.L11:
	mv	t1,t4
	j	.L12
.LVL23:
.L9:
.LBE4:
	.loc 1 74 9 is_stmt 1 discriminator 3
	.loc 1 74 39 is_stmt 0 discriminator 3
	lw	a5,0(a4)
	addi	a5,a5,-1
	sub	a5,a5,a2
	.loc 1 74 44 discriminator 3
	srb	a0,a3,a5,0
	.loc 1 73 50 is_stmt 1 discriminator 3
	.loc 1 73 51 is_stmt 0 discriminator 3
	addi	a2,a2,1
.LVL24:
	j	.L8
	.cfi_endproc
.LFE1:
	.size	utils_base64encode, .-utils_base64encode
	.section	.text.utils_base64_encode_stream,"ax",@progbits
	.align	1
	.globl	utils_base64_encode_stream
	.type	utils_base64_encode_stream, @function
utils_base64_encode_stream:
.LFB2:
	.loc 1 89 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 90 3
	.loc 1 91 3
	.loc 1 93 3
	.loc 1 93 9
	.loc 1 89 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s2,48(sp)
	.cfi_offset 18, -16
.LBB5:
	.loc 1 104 37
	lui	s2,%hi(.LANCHOR0)
.LBE5:
	.loc 1 89 1
	sw	s1,52(sp)
	sw	s3,44(sp)
	sw	s4,40(sp)
	sw	s5,36(sp)
	sw	s6,32(sp)
	sw	s7,28(sp)
	sw	ra,60(sp)
	sw	s0,56(sp)
	sw	s8,24(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 24, -40
	.loc 1 89 1
	mv	s4,a0
	mv	s5,a1
	mv	s3,a2
	.loc 1 91 16
	li	s1,-1
.LBB6:
	.loc 1 95 97
	li	s6,-1
	.loc 1 104 37
	addi	s2,s2,%lo(.LANCHOR0)
	addi	s7,sp,12
.LVL26:
.L25:
	.loc 1 94 5 is_stmt 1
	.loc 1 94 31 is_stmt 0
	mv	a1,s3
	addi	a0,sp,11
	jalr	s4
.LVL27:
	.loc 1 94 106
	beq	a0,zero,.L14
	.loc 1 94 67 discriminator 1
	bge	s1,zero,.L15
	li	s1,0
.L15:
.LVL28:
	.loc 1 94 106 discriminator 1
	li	s0,0
.LVL29:
.L16:
	.loc 1 95 5 is_stmt 1 discriminator 4
	.loc 1 95 31 is_stmt 0 discriminator 4
	mv	a1,s3
	addi	a0,sp,11
.LVL30:
	jalr	s4
.LVL31:
	.loc 1 95 106 discriminator 4
	beq	a0,zero,.L17
	.loc 1 95 106 discriminator 1
	li	s8,0
	.loc 1 95 97 discriminator 1
	bne	s1,s6,.L18
	.loc 1 95 97
	li	s1,1
.LVL32:
.L18:
	.loc 1 96 5 is_stmt 1 discriminator 8
	.loc 1 96 31 is_stmt 0 discriminator 8
	mv	a1,s3
	addi	a0,sp,11
.LVL33:
	jalr	s4
.LVL34:
	.loc 1 96 106 discriminator 8
	beq	a0,zero,.L19
	.loc 1 96 106 discriminator 1
	li	a4,0
	.loc 1 96 97 discriminator 1
	bne	s1,s6,.L20
	.loc 1 96 97
	li	s1,2
.LVL35:
.L20:
	.loc 1 98 5 is_stmt 1 discriminator 8
	.loc 1 98 32 is_stmt 0 discriminator 8
	slli	a5,s0,16
	.loc 1 98 52 discriminator 8
	slli	s8,s8,8
.LVL36:
	.loc 1 98 41 discriminator 8
	add	a5,a5,s8
	.loc 1 98 14 discriminator 8
	add	a5,a5,a4
.LVL37:
	.loc 1 100 5 is_stmt 1 discriminator 8
	.loc 1 100 8 is_stmt 0 discriminator 8
	beq	a0,zero,.L21
	.loc 1 100 13 discriminator 1
	beq	s1,zero,.L13
.L21:
.LVL38:
	.loc 1 104 5 is_stmt 1
	.loc 1 104 46 is_stmt 0
	srli	a4,a5,18
	.loc 1 104 20
	lrbu	a4,s2,a4,0
	sb	a4,12(sp)
	.loc 1 105 5 is_stmt 1
	.loc 1 105 56 is_stmt 0
	extu	a4,a5,12+6-1,12
	.loc 1 105 20
	lrbu	a4,s2,a4,0
	sb	a4,13(sp)
	.loc 1 106 5 is_stmt 1
	.loc 1 106 56 is_stmt 0
	extu	a4,a5,6+6-1,6
	.loc 1 107 56
	andi	a5,a5,63
	.loc 1 106 20
	lrbu	a4,s2,a4,0
	.loc 1 107 20
	lrbu	a5,s2,a5,0
	.loc 1 106 20
	sb	a4,14(sp)
	.loc 1 107 5 is_stmt 1
	.loc 1 107 20 is_stmt 0
	sb	a5,15(sp)
	.loc 1 109 5 is_stmt 1
	.loc 1 109 8 is_stmt 0
	beq	a0,zero,.L23
.LBE6:
	.loc 1 114 29
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	lrw	a4,a5,s1,2
	.loc 1 115 24
	li	a2,61
	.loc 1 114 29
	mv	a5,s7
.LVL39:
.L24:
	.loc 1 114 15 is_stmt 1 discriminator 1
	.loc 1 114 3 is_stmt 0 discriminator 1
	sub	a3,s7,a5
	blt	a3,a4,.L26
	.loc 1 118 3 is_stmt 1
	mv	a1,s3
	mv	a0,s7
	jalr	s5
.LVL40:
	.loc 1 120 3
.L13:
	.loc 1 121 1 is_stmt 0
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
	lw	s3,44(sp)
	.cfi_restore 19
.LVL42:
	lw	s4,40(sp)
	.cfi_restore 20
.LVL43:
	lw	s5,36(sp)
	.cfi_restore 21
.LVL44:
	lw	s6,32(sp)
	.cfi_restore 22
	lw	s7,28(sp)
	.cfi_restore 23
	lw	s8,24(sp)
	.cfi_restore 24
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL45:
.L14:
	.cfi_restore_state
.LBB7:
	.loc 1 94 106 discriminator 2
	lbu	s0,11(sp)
	j	.L16
.LVL46:
.L17:
	.loc 1 95 106 discriminator 2
	lbu	s8,11(sp)
	j	.L18
.LVL47:
.L19:
	.loc 1 96 106 discriminator 2
	lbu	a4,11(sp)
	j	.L20
.LVL48:
.L23:
	.loc 1 110 7 is_stmt 1
	mv	a1,s3
	mv	a0,s7
.LVL49:
	jalr	s5
.LVL50:
.LBE7:
	.loc 1 93 9
	j	.L25
.LVL51:
.L26:
	.loc 1 115 5 discriminator 3
	.loc 1 115 24 is_stmt 0 discriminator 3
	sb	a2,3(a5)
	.loc 1 114 42 is_stmt 1 discriminator 3
.LVL52:
	addi	a5,a5,-1
.LVL53:
	j	.L24
	.cfi_endproc
.LFE2:
	.size	utils_base64_encode_stream, .-utils_base64_encode_stream
	.section	.text.utils_base64decode,"ax",@progbits
	.align	1
	.globl	utils_base64decode
	.type	utils_base64decode, @function
utils_base64decode:
.LFB3:
	.loc 1 125 1
	.cfi_startproc
.LVL54:
	.loc 1 126 5
	.loc 1 127 5
	.loc 1 129 5
.LBB10:
.LBB11:
	.loc 1 27 5
	.loc 1 28 5
	.loc 1 30 5
	.loc 1 30 16 is_stmt 0
	lui	a6,%hi(.LANCHOR2)
	lw	a5,%lo(.LANCHOR2)(a6)
	addi	a6,a6,%lo(.LANCHOR2)
	.loc 1 30 8
	bne	a5,zero,.L37
	.loc 1 35 55
	lui	a7,%hi(.LANCHOR3)
	.loc 1 35 50
	lui	t1,%hi(.LANCHOR0)
	.loc 1 35 55
	addi	a7,a7,%lo(.LANCHOR3)
	.loc 1 35 50
	addi	t1,t1,%lo(.LANCHOR0)
	.loc 1 34 5
	li	t3,64
.LVL55:
.L38:
	.loc 1 35 9 is_stmt 1
	.loc 1 35 25 is_stmt 0
	lrbu	t4,a5,t1,0
	.loc 1 35 55
	srb	a5,a7,t4,0
	.loc 1 34 25 is_stmt 1
	.loc 1 34 26 is_stmt 0
	addi	a5,a5,1
.LVL56:
	.loc 1 34 17 is_stmt 1
	.loc 1 34 5 is_stmt 0
	bne	a5,t3,.L38
	.loc 1 38 5 is_stmt 1
	.loc 1 38 12 is_stmt 0
	li	a5,1
.LVL57:
	sw	a5,0(a6)
	.loc 1 39 5 is_stmt 1
.L37:
.LBE11:
.LBE10:
	.loc 1 131 5
	.loc 1 131 21 is_stmt 0
	andi	a5,a1,3
	.loc 1 131 8
	beq	a5,zero,.L39
.L43:
	.loc 1 133 16
	li	a0,0
.LVL58:
	ret
.LVL59:
.L39:
	.loc 1 136 5 is_stmt 1
	.loc 1 136 37 is_stmt 0
	li	a6,3
	.loc 1 136 33
	srli	a5,a1,2
	.loc 1 136 37
	mul	a5,a5,a6
	.loc 1 139 13
	add	a6,a0,a1
	.loc 1 139 8
	li	a7,61
	.loc 1 136 19
	sw	a5,0(a4)
	.loc 1 139 5 is_stmt 1
	.loc 1 139 8 is_stmt 0
	lbu	t1,-1(a6)
	bne	t1,a7,.L41
	.loc 1 140 9 is_stmt 1
	.loc 1 140 24 is_stmt 0
	addi	a5,a5,-1
	sw	a5,0(a4)
.L41:
	.loc 1 143 5 is_stmt 1
	.loc 1 143 8 is_stmt 0
	lbu	a6,-2(a6)
	li	a5,61
	bne	a6,a5,.L42
	.loc 1 144 9 is_stmt 1
	.loc 1 144 24 is_stmt 0
	lw	a5,0(a4)
	addi	a5,a5,-1
	sw	a5,0(a4)
.L42:
	.loc 1 147 5 is_stmt 1
	.loc 1 147 8 is_stmt 0
	lw	a5,0(a4)
	bgtu	a5,a2,.L43
	.loc 1 159 62
	lui	t1,%hi(.LANCHOR3)
	.loc 1 147 8
	mv	a6,a0
	.loc 1 158 19
	li	a7,0
	.loc 1 159 45
	li	t4,61
	.loc 1 159 62
	addi	t1,t1,%lo(.LANCHOR3)
.LVL60:
.L44:
	.loc 1 158 24 is_stmt 1 discriminator 1
	.loc 1 158 5 is_stmt 0 discriminator 1
	sub	a5,a6,a0
	bltu	a5,a1,.L51
	.loc 1 179 12
	li	a0,1
.LVL61:
	.loc 1 180 1
	ret
.LVL62:
.L51:
	.loc 1 159 9 is_stmt 1
	.loc 1 159 24 is_stmt 0
	lbu	a5,0(a6)
	.loc 1 159 45
	li	a2,0
	beq	a5,t4,.L45
.LVL63:
	.loc 1 159 45 discriminator 2
	lrb	a2,t1,a5,0
.LVL64:
.L45:
	.loc 1 160 9 is_stmt 1 discriminator 4
	.loc 1 160 24 is_stmt 0 discriminator 4
	lbu	t3,1(a6)
	.loc 1 160 45 discriminator 4
	li	a5,0
	beq	t3,t4,.L46
.LVL65:
	.loc 1 160 45 discriminator 2
	lrb	a5,t1,t3,0
.LVL66:
.L46:
	.loc 1 161 9 is_stmt 1 discriminator 4
	.loc 1 161 24 is_stmt 0 discriminator 4
	lbu	t5,2(a6)
	.loc 1 161 45 discriminator 4
	li	t3,0
	beq	t5,t4,.L47
.LVL67:
	.loc 1 161 45 discriminator 2
	lrb	t3,t1,t5,0
.LVL68:
.L47:
	.loc 1 162 9 is_stmt 1 discriminator 4
	.loc 1 162 24 is_stmt 0 discriminator 4
	lbu	t6,3(a6)
	.loc 1 162 45 discriminator 4
	li	t5,0
	beq	t6,t4,.L48
.LVL69:
	.loc 1 162 45 discriminator 2
	lrb	t5,t1,t6,0
.LVL70:
.L48:
	.loc 1 164 9 is_stmt 1 discriminator 4
	.loc 1 166 9 discriminator 4
	.loc 1 166 12 is_stmt 0 discriminator 4
	lw	t6,0(a4)
	bleu	t6,a7,.L56
	.loc 1 164 28
	slli	a2,a2,18
.LVL71:
	.loc 1 164 50
	slli	a5,a5,12
.LVL72:
	.loc 1 164 38
	add	a5,a2,a5
.LVL73:
	.loc 1 164 72
	slli	t3,t3,6
.LVL74:
	.loc 1 164 60
	add	a5,a5,t3
	.loc 1 164 16
	add	a5,a5,t5
	.loc 1 167 13 is_stmt 1
	.loc 1 167 40 is_stmt 0
	srli	a2,a5,16
	.loc 1 167 30
	srb	a2,a3,a7,0
	.loc 1 170 12
	lw	a2,0(a4)
	.loc 1 167 26
	addi	t3,a7,1
.LVL75:
	.loc 1 170 9 is_stmt 1
	.loc 1 170 12 is_stmt 0
	bleu	a2,t3,.L49
	.loc 1 171 13 is_stmt 1
	.loc 1 171 40 is_stmt 0
	srli	t5,a5,8
.LVL76:
	.loc 1 171 30
	srb	t5,a3,t3,0
	.loc 1 174 12
	lw	t3,0(a4)
.LVL77:
	.loc 1 171 26
	addi	a2,a7,2
.LVL78:
	.loc 1 174 9 is_stmt 1
	.loc 1 174 12 is_stmt 0
	bleu	t3,a2,.L50
	.loc 1 175 13 is_stmt 1
.LVL79:
	.loc 1 175 30 is_stmt 0
	srb	a5,a3,a2,0
	.loc 1 175 26
	addi	a2,a7,3
.LVL80:
.L50:
	addi	a6,a6,4
.LVL81:
	.loc 1 175 26 discriminator 1
	mv	a7,a2
	j	.L44
.LVL82:
.L56:
	mv	t3,a7
.LVL83:
.L49:
	.loc 1 174 9 is_stmt 1
	.loc 1 162 45 is_stmt 0
	mv	a2,t3
	j	.L50
	.cfi_endproc
.LFE3:
	.size	utils_base64decode, .-utils_base64decode
	.section	.bss.g_decodingTable,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	g_decodingTable, @object
	.size	g_decodingTable, 256
g_decodingTable:
	.zero	256
	.section	.bss.signal.0,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	signal.0, @object
	.size	signal.0, 4
signal.0:
	.zero	4
	.section	.rodata.g_encodingTable,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_encodingTable, @object
	.size	g_encodingTable, 64
g_encodingTable:
	.ascii	"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz01234567"
	.ascii	"89+/"
	.section	.rodata.g_modTable,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	g_modTable, @object
	.size	g_modTable, 12
g_modTable:
	.word	0
	.word	2
	.word	1
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./components/utils/math/include/utils_base64.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4d0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF45
	.byte	0xc
	.4byte	.LASF46
	.4byte	.LASF47
	.4byte	.Ldebug_ranges0+0x40
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
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x65
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x78
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0x2
	.4byte	.LASF13
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x38
	.byte	0x5
	.4byte	0xa7
	.byte	0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x59
	.byte	0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x6c
	.byte	0x6
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x7
	.4byte	.LASF48
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x4
	.byte	0xf
	.byte	0xe
	.4byte	0xf8
	.byte	0x8
	.4byte	.LASF18
	.byte	0
	.byte	0x8
	.4byte	.LASF19
	.byte	0x1
	.byte	0
	.byte	0x2
	.4byte	.LASF20
	.byte	0x4
	.byte	0x13
	.byte	0x2
	.4byte	0xd9
	.byte	0x9
	.4byte	0x9b
	.4byte	0x114
	.byte	0xa
	.4byte	0x94
	.byte	0x3f
	.byte	0
	.byte	0xb
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc
	.byte	0xf
	.4byte	0x104
	.byte	0x5
	.byte	0x3
	.4byte	g_encodingTable
	.byte	0x9
	.4byte	0x9b
	.4byte	0x136
	.byte	0xa
	.4byte	0x94
	.byte	0xff
	.byte	0
	.byte	0xb
	.4byte	.LASF22
	.byte	0x1
	.byte	0x16
	.byte	0xf
	.4byte	0x126
	.byte	0x5
	.byte	0x3
	.4byte	g_decodingTable
	.byte	0x9
	.4byte	0xb8
	.4byte	0x158
	.byte	0xa
	.4byte	0x94
	.byte	0x2
	.byte	0
	.byte	0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x17
	.byte	0x10
	.4byte	0x148
	.byte	0x5
	.byte	0x3
	.4byte	g_modTable
	.byte	0xc
	.4byte	.LASF41
	.byte	0x1
	.byte	0x7b
	.byte	0xc
	.4byte	0xf8
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.4byte	0x255
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x7b
	.byte	0x2e
	.4byte	0x255
	.4byte	.LLST18
	.byte	0xe
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7b
	.byte	0x3d
	.4byte	0xc4
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x7b
	.byte	0x53
	.4byte	0xc4
	.4byte	.LLST19
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0x7c
	.byte	0x28
	.4byte	0x25b
	.byte	0x1
	.byte	0x5d
	.byte	0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x7c
	.byte	0x3f
	.4byte	0x261
	.byte	0x1
	.byte	0x5e
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x7e
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST20
	.byte	0xf
	.string	"j"
	.byte	0x1
	.byte	0x7f
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST21
	.byte	0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x98
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST22
	.byte	0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0x99
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST23
	.byte	0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x9a
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST24
	.byte	0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x9b
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST25
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x9c
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST26
	.byte	0x11
	.4byte	0x4ad
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x81
	.byte	0x5
	.byte	0x12
	.4byte	0x4c8
	.4byte	.LLST27
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0xb3
	.byte	0x13
	.byte	0x4
	.4byte	0xa7
	.byte	0x13
	.byte	0x4
	.4byte	0xc4
	.byte	0x14
	.4byte	.LASF49
	.byte	0x1
	.byte	0x58
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x1
	.byte	0x9c
	.4byte	0x3a4
	.byte	0xd
	.4byte	.LASF34
	.byte	0x1
	.byte	0x58
	.byte	0x27
	.4byte	0x3b8
	.4byte	.LLST9
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x58
	.byte	0x57
	.4byte	0x3ce
	.4byte	.LLST10
	.byte	0xd
	.4byte	.LASF36
	.byte	0x1
	.byte	0x58
	.byte	0x8f
	.4byte	0xd0
	.4byte	.LLST11
	.byte	0xb
	.4byte	.LASF37
	.byte	0x1
	.byte	0x5a
	.byte	0xb
	.4byte	0x3d4
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x15
	.string	"c"
	.byte	0x1
	.byte	0x5a
	.byte	0x1b
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x4b
	.byte	0xf
	.string	"end"
	.byte	0x1
	.byte	0x5b
	.byte	0x7
	.4byte	0x8d
	.4byte	.LLST12
	.byte	0x10
	.4byte	.LASF38
	.byte	0x1
	.byte	0x5b
	.byte	0x10
	.4byte	0x8d
	.4byte	.LLST13
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x5b
	.byte	0x20
	.4byte	0x8d
	.4byte	.LLST14
	.byte	0x16
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x391
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x5e
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST15
	.byte	0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0x5f
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST16
	.byte	0x17
	.4byte	.LASF43
	.byte	0x1
	.byte	0x60
	.byte	0xe
	.4byte	0xc4
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x62
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST17
	.byte	0x18
	.4byte	.LVL27
	.4byte	0x352
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4b
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL31
	.4byte	0x368
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4b
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL34
	.4byte	0x37e
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4b
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL50
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LVL40
	.byte	0x19
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x19
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	0x8d
	.4byte	0x3b8
	.byte	0x1c
	.4byte	0x25b
	.byte	0x1c
	.4byte	0xd0
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0x3a4
	.byte	0x1d
	.4byte	0x3ce
	.byte	0x1c
	.4byte	0x255
	.byte	0x1c
	.4byte	0xd0
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0x3be
	.byte	0x9
	.4byte	0xa7
	.4byte	0x3e4
	.byte	0xa
	.4byte	0x94
	.byte	0x3
	.byte	0
	.byte	0xc
	.4byte	.LASF42
	.byte	0x1
	.byte	0x2a
	.byte	0xc
	.4byte	0xf8
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x1
	.byte	0x9c
	.4byte	0x4ad
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x2a
	.byte	0x2e
	.4byte	0x255
	.4byte	.LLST0
	.byte	0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x2a
	.byte	0x3d
	.4byte	0xc4
	.4byte	.LLST1
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x2a
	.byte	0x53
	.4byte	0xc4
	.4byte	.LLST2
	.byte	0xe
	.4byte	.LASF37
	.byte	0x1
	.byte	0x2b
	.byte	0x28
	.4byte	0x25b
	.byte	0x1
	.byte	0x5d
	.byte	0xe
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2b
	.byte	0x3f
	.4byte	0x261
	.byte	0x1
	.byte	0x5e
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x2d
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST3
	.byte	0xf
	.string	"j"
	.byte	0x1
	.byte	0x2e
	.byte	0xe
	.4byte	0xc4
	.4byte	.LLST4
	.byte	0x1e
	.4byte	.Ldebug_ranges0+0
	.byte	0x10
	.4byte	.LASF39
	.byte	0x1
	.byte	0x3d
	.byte	0x12
	.4byte	0xc4
	.4byte	.LLST5
	.byte	0x10
	.4byte	.LASF40
	.byte	0x1
	.byte	0x3e
	.byte	0x12
	.4byte	0xc4
	.4byte	.LLST6
	.byte	0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x3f
	.byte	0x12
	.4byte	0xc4
	.4byte	.LLST7
	.byte	0x10
	.4byte	.LASF33
	.byte	0x1
	.byte	0x41
	.byte	0x12
	.4byte	0xc4
	.4byte	.LLST8
	.byte	0
	.byte	0
	.byte	0x1f
	.4byte	.LASF50
	.byte	0x1
	.byte	0x19
	.byte	0xd
	.byte	0x1
	.byte	0xb
	.4byte	.LASF44
	.byte	0x1
	.byte	0x1b
	.byte	0x14
	.4byte	0xb8
	.byte	0x5
	.byte	0x3
	.4byte	signal.0
	.byte	0x20
	.string	"i"
	.byte	0x1
	.byte	0x1c
	.byte	0xd
	.4byte	0xb8
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
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0x3e
	.byte	0xb
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xd
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1f
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
	.byte	0x20
	.byte	0xb
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST18:
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL60
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x7
	.byte	0x80
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x2
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL81
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LFE3
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7a
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x4
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL54
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x3
	.byte	0x81
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x3
	.byte	0x81
	.byte	0x3
	.byte	0x9f
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL83
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL64
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL66
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL68
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL70
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL82
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x6e
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x12
	.byte	0x7c
	.byte	0
	.byte	0x42
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x8c
	.byte	0
	.byte	0x36
	.byte	0x24
	.byte	0x22
	.byte	0x8e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x10
	.byte	0x7f
	.byte	0
	.byte	0x3c
	.byte	0x24
	.byte	0x8c
	.byte	0
	.byte	0x36
	.byte	0x24
	.byte	0x22
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x8e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0xe
	.byte	0x8c
	.byte	0
	.byte	0x36
	.byte	0x24
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x8e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x12
	.byte	0x7c
	.byte	0
	.byte	0x42
	.byte	0x24
	.byte	0x7f
	.byte	0
	.byte	0x3c
	.byte	0x24
	.byte	0x22
	.byte	0x8c
	.byte	0
	.byte	0x36
	.byte	0x24
	.byte	0x22
	.byte	0x8e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL34
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x9
	.byte	0x91
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x8
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x9
	.byte	0x91
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x8
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x9
	.byte	0x91
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x8
	.byte	0x33
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE2
	.2byte	0x9
	.byte	0x91
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1c
	.byte	0x8
	.byte	0x34
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL29
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LFE2
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x68
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x68
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL23
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x6d
	.4byte	.LVL23
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x33
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE1
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x6c
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x2c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF45:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF0:
	.string	"__int8_t"
.LASF1:
	.string	"__uint8_t"
.LASF50:
	.string	"build_decoding_table"
.LASF39:
	.string	"octet_a"
.LASF40:
	.string	"octet_b"
.LASF43:
	.string	"octet_c"
.LASF44:
	.string	"signal"
.LASF6:
	.string	"__int32_t"
.LASF46:
	.string	"./components/utils/math/src/utils_base64.c"
.LASF49:
	.string	"utils_base64_encode_stream"
.LASF13:
	.string	"int8_t"
.LASF24:
	.string	"data"
.LASF19:
	.string	"SUCCESS_RETURN"
.LASF3:
	.string	"unsigned char"
.LASF9:
	.string	"long unsigned int"
.LASF5:
	.string	"short unsigned int"
.LASF35:
	.string	"write_data"
.LASF37:
	.string	"encodedData"
.LASF28:
	.string	"outputLength"
.LASF29:
	.string	"sextet_a"
.LASF30:
	.string	"sextet_b"
.LASF8:
	.string	"__uint32_t"
.LASF32:
	.string	"sextet_d"
.LASF22:
	.string	"g_decodingTable"
.LASF42:
	.string	"utils_base64encode"
.LASF33:
	.string	"triple"
.LASF23:
	.string	"g_modTable"
.LASF12:
	.string	"unsigned int"
.LASF26:
	.string	"outputLenMax"
.LASF11:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF21:
	.string	"g_encodingTable"
.LASF48:
	.string	"iotx_err"
.LASF15:
	.string	"int32_t"
.LASF25:
	.string	"inputLength"
.LASF10:
	.string	"long long int"
.LASF17:
	.string	"char"
.LASF47:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/components/utils"
.LASF36:
	.string	"opaque"
.LASF4:
	.string	"short int"
.LASF16:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF38:
	.string	"remainder"
.LASF18:
	.string	"FAIL_RETURN"
.LASF2:
	.string	"signed char"
.LASF27:
	.string	"decodedData"
.LASF31:
	.string	"sextet_c"
.LASF41:
	.string	"utils_base64decode"
.LASF20:
	.string	"iotx_err_t"
.LASF34:
	.string	"read_data"
	.ident	"GCC: (GNU) 10.4.0"
