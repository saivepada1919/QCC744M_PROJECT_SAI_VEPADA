	.file	"qcc74x_dbi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_dbi_get_words_cnt_form_pixel.isra.0,"ax",@progbits
	.align	1
	.type	qcc74x_dbi_get_words_cnt_form_pixel.isra.0, @function
qcc74x_dbi_get_words_cnt_form_pixel.isra.0:
.LFB21:
	.file 1 "./drivers/lhal/src/qcc74x_dbi.c"
	.loc 1 294 41
	.cfi_startproc
.LVL0:
	.loc 1 296 5
	.loc 1 297 5
	.loc 1 298 5
	.loc 1 299 5
	.loc 1 301 5
	.loc 1 304 5
	.loc 1 304 12 is_stmt 0
	lw	a5,128(a0)
.LVL1:
	.loc 1 305 5 is_stmt 1
	.loc 1 307 5 is_stmt 0
	li	a4,5
	.loc 1 305 52
	srli	a5,a5,29
.LVL2:
	.loc 1 307 5 is_stmt 1
	bgtu	a5,a4,.L2
	li	a0,3
.LVL3:
	bleu	a5,a0,.L4
	.loc 1 319 13
	.loc 1 319 40 is_stmt 0
	addi	a1,a1,1
.LVL4:
	mul	a1,a1,a0
.LVL5:
	.loc 1 319 23
	srli	a1,a1,2
.LVL6:
	.loc 1 320 13 is_stmt 1
	j	.L4
.LVL7:
.L2:
	.loc 1 325 13
	.loc 1 325 36 is_stmt 0
	addi	a1,a1,1
.LVL8:
	.loc 1 325 23
	srli	a1,a1,1
.LVL9:
	.loc 1 326 13 is_stmt 1
.L4:
	.loc 1 333 5
	.loc 1 334 1 is_stmt 0
	mv	a0,a1
	ret
	.cfi_endproc
.LFE21:
	.size	qcc74x_dbi_get_words_cnt_form_pixel.isra.0, .-qcc74x_dbi_get_words_cnt_form_pixel.isra.0
	.section	.text.qcc74x_dbi_fill_fifo.isra.0,"ax",@progbits
	.align	1
	.type	qcc74x_dbi_fill_fifo.isra.0, @function
qcc74x_dbi_fill_fifo.isra.0:
.LFB20:
	.loc 1 267 37 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 269 5
	.loc 1 270 5
	.loc 1 271 5
	.loc 1 273 5
	.loc 1 275 5
.L7:
	.loc 1 275 12
	.loc 1 275 5 is_stmt 0
	bne	a1,zero,.L10
	.loc 1 292 1
	ret
.L10:
	.loc 1 277 9 is_stmt 1
	.loc 1 277 16 is_stmt 0
	lw	a5,132(a0)
.LVL11:
	.loc 1 278 9 is_stmt 1
	.loc 1 278 18 is_stmt 0
	andi	a5,a5,15
.LVL12:
	.loc 1 280 9 is_stmt 1
	.loc 1 280 12 is_stmt 0
	beq	a5,zero,.L7
	.loc 1 281 13 is_stmt 1
	.loc 1 281 22 is_stmt 0
	sgtu	a4,a5,a1
	mvnez	a5, a1, a4
.LVL13:
	.loc 1 282 13 is_stmt 1
	.loc 1 282 23 is_stmt 0
	sub	a1,a1,a5
.LVL14:
	.loc 1 288 9 is_stmt 1
	.loc 1 288 16
	.loc 1 282 23 is_stmt 0
	li	a4,0
.LVL15:
.L9:
	.loc 1 289 13 is_stmt 1
	.loc 1 289 70 is_stmt 0
	lrw	a3,a2,a4,2
	.loc 1 288 9
	addi	a4,a4,1
.LVL16:
	.loc 1 289 67
	sw	a3,136(a0)
	.loc 1 288 30 is_stmt 1
.LVL17:
	.loc 1 288 16
	.loc 1 288 9 is_stmt 0
	bne	a5,a4,.L9
	.loc 1 288 51
	addsl	a2, a2, a5, 2
	j	.L7
	.cfi_endproc
.LFE20:
	.size	qcc74x_dbi_fill_fifo.isra.0, .-qcc74x_dbi_fill_fifo.isra.0
	.section	.text.qcc74x_dbi_init,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_init
	.type	qcc74x_dbi_init, @function
qcc74x_dbi_init:
.LFB5:
	.loc 1 31 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 32 5
	.loc 1 33 5
	.loc 1 34 5
	.loc 1 35 5
	.loc 1 36 5
	.loc 1 37 5
	.loc 1 42 5
	.loc 1 43 5
	.loc 1 44 5
	.loc 1 46 5
	.loc 1 31 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 46 14
	lw	s0,4(a0)
.LVL19:
	.loc 1 48 5 is_stmt 1
	.loc 1 31 1 is_stmt 0
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 48 12
	lw	a5,0(s0)
.LVL20:
	.loc 1 51 5 is_stmt 1
	.loc 1 59 5 is_stmt 0
	li	a2,2
	.loc 1 31 1
	mv	s1,a1
	.loc 1 51 12
	andi	a4,a5,-2
.LVL21:
	.loc 1 52 5 is_stmt 1
	.loc 1 52 58 is_stmt 0
	sw	a4,0(s0)
	.loc 1 55 5 is_stmt 1
	.loc 1 56 21 is_stmt 0
	lbu	a3,0(a1)
	.loc 1 55 12
	andi	a4,a5,-8
.LVL22:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 32 is_stmt 0
	slli	a5,a3,1
	.loc 1 56 12
	or	a5,a5,a4
.LVL23:
	.loc 1 59 5 is_stmt 1
	.loc 1 59 19 is_stmt 0
	lbu	a4,3(a1)
	.loc 1 59 5
	beq	a4,a2,.L15
	bgtu	a4,a2,.L16
	bne	a4,zero,.L40
	.loc 1 62 13 is_stmt 1
	.loc 1 62 20 is_stmt 0
	li	a4,-65536
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL24:
	.loc 1 63 13 is_stmt 1
	.loc 1 63 20 is_stmt 0
	li	a4,131072
.LVL25:
.L42:
	.loc 1 78 20
	or	a5,a5,a4
.LVL26:
	.loc 1 79 13 is_stmt 1
	j	.L20
.L16:
	.loc 1 59 5 is_stmt 0
	li	a2,3
	beq	a4,a2,.L19
.L20:
	.loc 1 85 5 is_stmt 1
.LVL27:
	.loc 1 88 5
	.loc 1 92 5
	.loc 1 92 8 is_stmt 0
	li	a4,3
	bne	a3,a4,.L21
	.loc 1 94 9 is_stmt 1
	.loc 1 88 12 is_stmt 0
	li	a4,-786432
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL28:
	.loc 1 94 16
	li	a4,16777216
	or	a5,a5,a4
.LVL29:
.L22:
	.loc 1 103 5 is_stmt 1
	.loc 1 103 12 is_stmt 0
	ori	a5,a5,16
.LVL30:
	.loc 1 104 5 is_stmt 1
	.loc 1 104 58 is_stmt 0
	sw	a5,0(s0)
	.loc 1 108 5 is_stmt 1
	.loc 1 108 12 is_stmt 0
	lbu	a1,9(a0)
.LVL31:
	li	a0,36
.LVL32:
	call	qcc74x_clk_get_peripheral_clock
.LVL33:
	.loc 1 108 58
	li	a5,10
	mul	a0,a0,a5
	.loc 1 108 63
	lw	a4,4(s1)
	.loc 1 110 37
	li	a3,255
	.loc 1 108 63
	divu	a0,a0,a4
	.loc 1 110 37
	li	a4,511
	.loc 1 108 85
	addi	a0,a0,5
.LVL34:
	.loc 1 109 5 is_stmt 1
	.loc 1 108 9 is_stmt 0
	divu	a5,a0,a5
.LVL35:
	.loc 1 109 18
	addi	a5,a5,1
.LVL36:
	.loc 1 110 5 is_stmt 1
	.loc 1 110 37 is_stmt 0
	bgtu	a5,a4,.L23
	.loc 1 110 66 discriminator 1
	li	a4,1
	li	a3,0
	beq	a5,a4,.L23
	.loc 1 109 11 discriminator 3
	srli	a5,a5,1
.LVL37:
	.loc 1 110 66 discriminator 3
	addi	a3,a5,-1
.LVL38:
.L23:
	.loc 1 111 5 is_stmt 1 discriminator 8
	.loc 1 112 5 discriminator 8
	.loc 1 112 37 is_stmt 0 discriminator 8
	li	a5,4096
	addi	a5,a5,1023
	li	a4,255
	bgtu	a0,a5,.L24
	.loc 1 112 66 discriminator 1
	li	a5,19
	li	a4,0
	bleu	a0,a5,.L24
	.loc 1 111 11 discriminator 3
	li	a5,20
	divu	a0,a0,a5
.LVL39:
	.loc 1 112 66 discriminator 3
	addi	a4,a0,-1
.LVL40:
.L24:
	.loc 1 114 5 is_stmt 1 discriminator 8
	.loc 1 115 5 discriminator 8
	.loc 1 116 5 discriminator 8
	.loc 1 117 5 discriminator 8
	.loc 1 118 5 discriminator 8
	.loc 1 118 21 is_stmt 0 discriminator 8
	slli	a5,a3,16
	.loc 1 117 21 discriminator 8
	slli	a0,a4,8
	.loc 1 118 12 discriminator 8
	or	a5,a5,a3
	or	a5,a5,a0
.LVL41:
	.loc 1 119 5 is_stmt 1 discriminator 8
	.loc 1 119 21 is_stmt 0 discriminator 8
	slli	a0,a4,24
	.loc 1 119 12 discriminator 8
	or	a0,a0,a5
.LVL42:
	.loc 1 120 5 is_stmt 1 discriminator 8
	.loc 1 120 58 is_stmt 0 discriminator 8
	sw	a0,12(s0)
	.loc 1 123 5 is_stmt 1 discriminator 8
	.loc 1 124 8 is_stmt 0 discriminator 8
	lbu	a4,2(s1)
.LVL43:
	.loc 1 123 12 discriminator 8
	lw	a5,8(s0)
.LVL44:
	.loc 1 124 5 is_stmt 1 discriminator 8
	.loc 1 124 8 is_stmt 0 discriminator 8
	bne	a4,zero,.L25
	.loc 1 125 9 is_stmt 1
	.loc 1 125 16 is_stmt 0
	li	a4,-2147483648
	xori	a4,a4,-1
	and	a5,a5,a4
.LVL45:
.L26:
	.loc 1 129 5 is_stmt 1
	.loc 1 129 58 is_stmt 0
	sw	a5,8(s0)
	.loc 1 132 5 is_stmt 1
	.loc 1 132 12 is_stmt 0
	addi	a4,s0,128
	lw	a5,0(a4)
.LVL46:
	.loc 1 133 5 is_stmt 1
	.loc 1 133 12 is_stmt 0
	li	a3,536870912
.LVL47:
	addi	a3,a3,-1
	and	a3,a5,a3
.LVL48:
	.loc 1 134 5 is_stmt 1
	.loc 1 137 5
	.loc 1 140 5
	.loc 1 143 5
	.loc 1 134 21 is_stmt 0
	lbu	a5,1(s1)
	.loc 1 149 52
	li	a2,458752
	.loc 1 134 42
	slli	a5,a5,29
	.loc 1 134 12
	or	a5,a5,a3
	li	a3,-268435456
.LVL49:
	addi	a3,a3,-2
	and	a5,a5,a3
	.loc 1 143 12
	ori	a5,a5,4
.LVL50:
	.loc 1 144 5 is_stmt 1
	.loc 1 144 59 is_stmt 0
	sw	a5,0(a4)
	.loc 1 147 5 is_stmt 1
	.loc 1 147 12 is_stmt 0
	lw	a5,4(a4)
.LVL51:
	.loc 1 148 5 is_stmt 1
	.loc 1 148 12 is_stmt 0
	li	a3,-458752
	addi	a3,a3,-1
	and	a3,a5,a3
.LVL52:
	.loc 1 149 5 is_stmt 1
	.loc 1 149 22 is_stmt 0
	lbu	a5,8(s1)
	.loc 1 149 42
	slli	a5,a5,16
	.loc 1 149 52
	and	a5,a5,a2
	.loc 1 149 12
	or	a5,a5,a3
.LVL53:
	.loc 1 150 5 is_stmt 1
	.loc 1 150 59 is_stmt 0
	sw	a5,4(a4)
	.loc 1 153 5 is_stmt 1
	.loc 1 153 12 is_stmt 0
	lw	a5,4(s0)
.LVL54:
	.loc 1 156 5 is_stmt 1
	.loc 1 156 8 is_stmt 0
	lbu	a3,9(s1)
	.loc 1 159 16
	andi	a4,a5,-2
	.loc 1 156 8
	beq	a3,zero,.L28
	.loc 1 157 9 is_stmt 1
	.loc 1 157 16 is_stmt 0
	ori	a4,a5,1
.LVL55:
.L28:
	.loc 1 163 5 is_stmt 1
	.loc 1 163 8 is_stmt 0
	lbu	a3,10(s1)
	.loc 1 166 16
	andi	a5,a4,-3
	.loc 1 163 8
	beq	a3,zero,.L30
	.loc 1 164 9 is_stmt 1
	.loc 1 164 16 is_stmt 0
	ori	a5,a4,2
.LVL56:
.L30:
	.loc 1 170 5 is_stmt 1
	.loc 1 170 8 is_stmt 0
	lbu	a3,11(s1)
	.loc 1 173 16
	andi	a4,a5,-5
	.loc 1 170 8
	beq	a3,zero,.L32
	.loc 1 171 9 is_stmt 1
	.loc 1 171 16 is_stmt 0
	ori	a4,a5,4
.LVL57:
.L32:
	.loc 1 176 5 is_stmt 1
	.loc 1 176 58 is_stmt 0
	sw	a4,4(s0)
	.loc 1 181 5 is_stmt 1
.LVL58:
	.loc 1 182 5
	.loc 1 183 5
	.loc 1 184 5
	.loc 1 185 5
	.loc 1 186 5
	.loc 1 186 59 is_stmt 0
	li	a5,-1744437248
	sw	a5,96(s0)
	.loc 1 188 5 is_stmt 1
.LVL59:
	.loc 1 189 5
	.loc 1 190 5
	.loc 1 191 5
	.loc 1 192 5
	.loc 1 198 59 is_stmt 0
	li	a5,-838860800
	.loc 1 192 59
	sw	zero,100(s0)
	.loc 1 194 5 is_stmt 1
	.loc 1 195 5
.LVL60:
	.loc 1 196 5
	.loc 1 197 5
	.loc 1 198 5
	.loc 1 198 59 is_stmt 0
	addi	a5,a5,512
	sw	a5,104(s0)
	.loc 1 200 5 is_stmt 1
.LVL61:
	.loc 1 201 5
	.loc 1 202 5
	.loc 1 203 5
	.loc 1 204 5
	.loc 1 205 5
	.loc 1 205 59 is_stmt 0
	li	a5,793780224
	addi	a5,a5,2
	sw	a5,108(s0)
	.loc 1 207 5 is_stmt 1
.LVL62:
	.loc 1 208 5
	.loc 1 209 5
	.loc 1 210 5
	.loc 1 211 5
	.loc 1 211 59 is_stmt 0
	li	a5,951189504
	addi	a5,a5,233
	sw	a5,112(s0)
	.loc 1 213 5 is_stmt 1
.LVL63:
	.loc 1 214 5
	.loc 1 215 5
	.loc 1 218 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 215 59
	sw	zero,116(s0)
	.loc 1 218 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL64:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL65:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL66:
.L40:
	.cfi_restore_state
	.loc 1 67 13 is_stmt 1
	.loc 1 68 13
	.loc 1 68 20 is_stmt 0
	li	a4,-196608
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL67:
	.loc 1 69 13 is_stmt 1
	j	.L20
.L15:
	.loc 1 72 13
.LVL68:
	.loc 1 73 13
	.loc 1 73 20 is_stmt 0
	li	a4,196608
	j	.L42
.LVL69:
.L19:
	.loc 1 77 13 is_stmt 1
	.loc 1 78 13
	li	a4,-131072
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL70:
	.loc 1 78 20 is_stmt 0
	li	a4,65536
	j	.L42
.LVL71:
.L21:
	.loc 1 99 9 is_stmt 1
	.loc 1 99 16 is_stmt 0
	li	a4,-17563648
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL72:
	j	.L22
.LVL73:
.L25:
	.loc 1 127 9 is_stmt 1
	.loc 1 127 16 is_stmt 0
	li	a4,-2147483648
	or	a5,a5,a4
.LVL74:
	j	.L26
	.cfi_endproc
.LFE5:
	.size	qcc74x_dbi_init, .-qcc74x_dbi_init
	.section	.text.qcc74x_dbi_deinit,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_deinit
	.type	qcc74x_dbi_deinit, @function
qcc74x_dbi_deinit:
.LFB6:
	.loc 1 221 1 is_stmt 1
	.cfi_startproc
.LVL75:
	.loc 1 225 5
	.loc 1 226 5
	.loc 1 228 5
	.loc 1 228 14 is_stmt 0
	lw	a5,4(a0)
.LVL76:
	.loc 1 231 5 is_stmt 1
	.loc 1 231 12 is_stmt 0
	lw	a4,0(a5)
.LVL77:
	.loc 1 232 5 is_stmt 1
	.loc 1 232 12 is_stmt 0
	andi	a4,a4,-2
.LVL78:
	.loc 1 233 5 is_stmt 1
	.loc 1 233 58 is_stmt 0
	sw	a4,0(a5)
	.loc 1 236 5 is_stmt 1
	.loc 1 236 12 is_stmt 0
	lw	a4,128(a5)
.LVL79:
	.loc 1 237 5 is_stmt 1
	.loc 1 237 12 is_stmt 0
	ori	a4,a4,4
.LVL80:
	.loc 1 238 5 is_stmt 1
	.loc 1 238 59 is_stmt 0
	sw	a4,128(a5)
	.loc 1 240 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_dbi_deinit, .-qcc74x_dbi_deinit
	.section	.text.qcc74x_dbi_qspi_set_addr,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_qspi_set_addr
	.type	qcc74x_dbi_qspi_set_addr, @function
qcc74x_dbi_qspi_set_addr:
.LFB7:
	.loc 1 244 1 is_stmt 1
	.cfi_startproc
.LVL81:
	.loc 1 248 5
	.loc 1 249 5
	.loc 1 251 5
	.loc 1 251 14 is_stmt 0
	lw	a5,4(a0)
.LVL82:
	.loc 1 253 5 is_stmt 1
	.loc 1 253 20 is_stmt 0
	beq	a1,zero,.L45
	.loc 1 253 20 discriminator 1
	addi	a1,a1,-1
.LVL83:
	andi	a1,a1,0xff
.L45:
.LVL84:
	.loc 1 256 5 is_stmt 1 discriminator 4
	.loc 1 256 12 is_stmt 0 discriminator 4
	lw	a4,4(a5)
.LVL85:
	.loc 1 257 5 is_stmt 1 discriminator 4
	.loc 1 258 31 is_stmt 0 discriminator 4
	slli	a1,a1,4
.LVL86:
	.loc 1 258 40 discriminator 4
	andi	a1,a1,48
	.loc 1 257 12 discriminator 4
	andi	a4,a4,-49
.LVL87:
	.loc 1 258 5 is_stmt 1 discriminator 4
	.loc 1 258 12 is_stmt 0 discriminator 4
	or	a1,a1,a4
.LVL88:
	.loc 1 259 5 is_stmt 1 discriminator 4
	.loc 1 259 58 is_stmt 0 discriminator 4
	sw	a1,4(a5)
	.loc 1 262 5 is_stmt 1 discriminator 4
	.loc 1 262 59 is_stmt 0 discriminator 4
	sw	a2,20(a5)
	.loc 1 264 1 discriminator 4
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_dbi_qspi_set_addr, .-qcc74x_dbi_qspi_set_addr
	.section	.text.qcc74x_dbi_send_cmd_data,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_send_cmd_data
	.type	qcc74x_dbi_send_cmd_data, @function
qcc74x_dbi_send_cmd_data:
.LFB10:
	.loc 1 337 1 is_stmt 1
	.cfi_startproc
.LVL89:
	.loc 1 341 5
	.loc 1 342 5
	.loc 1 344 5
	.loc 1 337 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s0,a2
	sw	ra,44(sp)
	sw	s3,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.loc 1 344 14
	lw	s1,4(a0)
.LVL90:
	.loc 1 347 5 is_stmt 1
	.loc 1 337 1 is_stmt 0
	mv	s2,a0
	mv	a2,a3
.LVL91:
	.loc 1 347 8
	beq	s0,zero,.L50
	.loc 1 347 18 discriminator 1
	beq	a3,zero,.L51
.L50:
	.loc 1 352 5 is_stmt 1
	.loc 1 352 12 is_stmt 0
	lw	a5,0(s1)
.LVL92:
	.loc 1 353 5 is_stmt 1
	.loc 1 353 12 is_stmt 0
	andi	a4,a5,-2
.LVL93:
	.loc 1 354 5 is_stmt 1
	.loc 1 354 58 is_stmt 0
	sw	a4,0(s1)
	.loc 1 356 5 is_stmt 1
	.loc 1 356 18 is_stmt 0
	andi	a4,a5,16
.LVL94:
	.loc 1 356 8
	bne	a4,zero,.L52
	.loc 1 356 37 discriminator 1
	bne	s0,zero,.L54
.LVL95:
.L51:
	.loc 1 427 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL96:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL97:
	lw	s3,28(sp)
	.cfi_restore 19
	li	a0,0
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL98:
.L52:
	.cfi_restore_state
	.loc 1 362 5 is_stmt 1
	.loc 1 365 5
	.loc 1 368 5
	.loc 1 368 8 is_stmt 0
	beq	s0,zero,.L55
.LVL99:
.L54:
	.loc 1 369 9 is_stmt 1
	.loc 1 370 9
	.loc 1 371 9
	li	a3,-65536
	.loc 1 371 30 is_stmt 0
	addi	a4,s0,-1
	addi	a3,a3,126
	.loc 1 371 35
	slli	a4,a4,8
	and	a5,a5,a3
.LVL100:
	or	a5,a4,a5
	.loc 1 371 16
	ori	a5,a5,96
.LVL101:
.L56:
	.loc 1 375 5 is_stmt 1
	.loc 1 375 58 is_stmt 0
	sw	a5,0(s1)
	.loc 1 378 5 is_stmt 1
	.loc 1 378 16 is_stmt 0
	andi	a5,a5,16
.LVL102:
	.loc 1 378 8
	beq	a5,zero,.L57
	.loc 1 379 9 is_stmt 1
	.loc 1 379 16 is_stmt 0
	lw	a5,16(s1)
.LVL103:
	.loc 1 380 9 is_stmt 1
	.loc 1 380 16 is_stmt 0
	andi	a5,a5,-256
.LVL104:
	.loc 1 381 9 is_stmt 1
	.loc 1 381 16 is_stmt 0
	or	a1,a1,a5
.LVL105:
	.loc 1 382 9 is_stmt 1
	.loc 1 382 63 is_stmt 0
	sw	a1,16(s1)
.LVL106:
.L57:
	.loc 1 386 5 is_stmt 1
	.loc 1 386 12 is_stmt 0
	addi	a4,s1,128
	lw	a5,0(a4)
.LVL107:
	.loc 1 387 5 is_stmt 1
	.loc 1 391 58 is_stmt 0
	addi	s3,s1,48
	.loc 1 387 12
	ori	a5,a5,4
.LVL108:
	.loc 1 388 5 is_stmt 1
	.loc 1 388 59 is_stmt 0
	sw	a5,0(a4)
	.loc 1 391 5 is_stmt 1
	.loc 1 391 12 is_stmt 0
	lw	a5,48(s1)
.LVL109:
	.loc 1 392 5 is_stmt 1
	.loc 1 392 12 is_stmt 0
	li	a4,65536
	or	a5,a5,a4
.LVL110:
	.loc 1 393 5 is_stmt 1
	.loc 1 393 59 is_stmt 0
	sw	a5,48(s1)
	.loc 1 396 5 is_stmt 1
	.loc 1 396 8 is_stmt 0
	beq	s0,zero,.L58
	.loc 1 397 9 is_stmt 1
	.loc 1 397 12 is_stmt 0
	li	a5,32
.LVL111:
	lw	a0,4(s2)
.LVL112:
	bgtu	s0,a5,.L59
	.loc 1 398 13 is_stmt 1
	.loc 1 398 49 is_stmt 0
	addi	a1,s0,3
	.loc 1 398 13
	extu	a1,a1,2+6-1,2
	sw	a2,12(sp)
	.loc 1 399 22
	li	s0,0
	.loc 1 398 13
	call	qcc74x_dbi_fill_fifo.isra.0
.LVL113:
	.loc 1 399 13 is_stmt 1
.L80:
	.loc 1 402 22 is_stmt 0
	lw	a2,12(sp)
.LVL114:
.L58:
	.loc 1 407 5 is_stmt 1
	.loc 1 407 12 is_stmt 0
	lw	a5,0(s1)
.LVL115:
	.loc 1 408 5 is_stmt 1
	.loc 1 408 12 is_stmt 0
	ori	a5,a5,1
.LVL116:
	.loc 1 409 5 is_stmt 1
	.loc 1 409 58 is_stmt 0
	sw	a5,0(s1)
	.loc 1 412 5 is_stmt 1
	.loc 1 412 8 is_stmt 0
	beq	s0,zero,.L61
	.loc 1 413 9 is_stmt 1
	lw	a0,4(s2)
	.loc 1 413 45 is_stmt 0
	addi	a1,s0,3
	.loc 1 413 9
	extu	a1,a1,2+6-1,2
	call	qcc74x_dbi_fill_fifo.isra.0
.LVL117:
.L61:
	.loc 1 417 5 is_stmt 1 discriminator 1
	.loc 1 418 9 discriminator 1
	.loc 1 418 16 is_stmt 0 discriminator 1
	lw	a5,0(s3)
.LVL118:
	.loc 1 419 13 is_stmt 1 discriminator 1
	.loc 1 419 22 is_stmt 0 discriminator 1
	andi	a4,a5,1
	.loc 1 419 5 discriminator 1
	beq	a4,zero,.L61
	.loc 1 422 5 is_stmt 1
	.loc 1 422 12 is_stmt 0
	li	a4,65536
	or	a5,a5,a4
.LVL119:
	.loc 1 423 5 is_stmt 1
	.loc 1 423 59 is_stmt 0
	sw	a5,48(s1)
	.loc 1 425 5 is_stmt 1
	.loc 1 425 12 is_stmt 0
	j	.L51
.LVL120:
.L55:
	.loc 1 373 9 is_stmt 1
	andi	a5,a5,-162
.LVL121:
	.loc 1 373 16 is_stmt 0
	ori	a5,a5,64
.LVL122:
	j	.L56
.LVL123:
.L59:
	.loc 1 401 13 is_stmt 1
	li	a1,8
	.loc 1 402 22 is_stmt 0
	addi	s0,s0,-32
	.loc 1 401 13
	sw	a2,12(sp)
	.loc 1 402 22
	andi	s0,s0,0xff
	.loc 1 401 13
	call	qcc74x_dbi_fill_fifo.isra.0
.LVL124:
	.loc 1 402 13 is_stmt 1
	j	.L80
	.cfi_endproc
.LFE10:
	.size	qcc74x_dbi_send_cmd_data, .-qcc74x_dbi_send_cmd_data
	.section	.text.qcc74x_dbi_send_cmd_read_data,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_send_cmd_read_data
	.type	qcc74x_dbi_send_cmd_read_data, @function
qcc74x_dbi_send_cmd_read_data:
.LFB11:
	.loc 1 430 1
	.cfi_startproc
.LVL125:
	.loc 1 434 5
	.loc 1 435 5
	.loc 1 437 5
	.loc 1 437 14 is_stmt 0
	lw	a5,4(a0)
.LVL126:
	.loc 1 440 5 is_stmt 1
	.loc 1 440 12 is_stmt 0
	lw	a0,0(a5)
.LVL127:
	.loc 1 441 5 is_stmt 1
	.loc 1 441 12 is_stmt 0
	andi	a4,a0,-2
.LVL128:
	.loc 1 442 5 is_stmt 1
	.loc 1 442 58 is_stmt 0
	sw	a4,0(a5)
	.loc 1 444 5 is_stmt 1
	.loc 1 444 18 is_stmt 0
	andi	a4,a0,16
.LVL129:
	.loc 1 444 8
	bne	a4,zero,.L82
	.loc 1 444 37 discriminator 1
	bne	a2,zero,.L83
.LVL130:
.L98:
	.loc 1 518 1
	li	a0,0
	ret
.LVL131:
.L82:
	.loc 1 450 5 is_stmt 1
	.loc 1 453 5
	.loc 1 456 5
	.loc 1 461 16 is_stmt 0
	andi	a4,a0,-226
	.loc 1 456 8
	beq	a2,zero,.L85
.LVL132:
.L83:
	.loc 1 457 9 is_stmt 1
	.loc 1 458 9
	.loc 1 459 9
	li	a6,-65536
	.loc 1 459 30 is_stmt 0
	addi	a4,a2,-1
	addi	a6,a6,62
	.loc 1 459 35
	slli	a4,a4,8
	and	a0,a0,a6
.LVL133:
	or	a4,a4,a0
	.loc 1 459 16
	ori	a4,a4,32
.LVL134:
.L85:
	.loc 1 463 5 is_stmt 1
	.loc 1 463 58 is_stmt 0
	sw	a4,0(a5)
	.loc 1 466 5 is_stmt 1
	.loc 1 466 16 is_stmt 0
	andi	a4,a4,16
.LVL135:
	.loc 1 466 8
	beq	a4,zero,.L86
	.loc 1 467 9 is_stmt 1
	.loc 1 467 16 is_stmt 0
	lw	a4,16(a5)
.LVL136:
	.loc 1 468 9 is_stmt 1
	.loc 1 468 16 is_stmt 0
	andi	a4,a4,-256
.LVL137:
	.loc 1 469 9 is_stmt 1
	.loc 1 469 16 is_stmt 0
	or	a1,a1,a4
.LVL138:
	.loc 1 470 9 is_stmt 1
	.loc 1 470 63 is_stmt 0
	sw	a1,16(a5)
.LVL139:
.L86:
	.loc 1 474 5 is_stmt 1
	.loc 1 474 12 is_stmt 0
	addi	a1,a5,128
	lw	a4,0(a1)
.LVL140:
	.loc 1 475 5 is_stmt 1
	.loc 1 479 58 is_stmt 0
	addi	a0,a5,48
	.loc 1 475 12
	ori	a4,a4,4
.LVL141:
	.loc 1 476 5 is_stmt 1
	.loc 1 476 59 is_stmt 0
	sw	a4,0(a1)
	.loc 1 479 5 is_stmt 1
	.loc 1 479 12 is_stmt 0
	lw	a4,48(a5)
.LVL142:
	.loc 1 480 5 is_stmt 1
	.loc 1 480 12 is_stmt 0
	li	a1,65536
	or	a4,a4,a1
.LVL143:
	.loc 1 481 5 is_stmt 1
	.loc 1 481 59 is_stmt 0
	sw	a4,48(a5)
	.loc 1 484 5 is_stmt 1
	.loc 1 484 12 is_stmt 0
	lw	a4,0(a5)
.LVL144:
	.loc 1 485 5 is_stmt 1
	.loc 1 485 12 is_stmt 0
	ori	a4,a4,1
.LVL145:
	.loc 1 486 5 is_stmt 1
	.loc 1 486 58 is_stmt 0
	sw	a4,0(a5)
.L87:
	.loc 1 489 5 is_stmt 1 discriminator 1
	.loc 1 490 9 discriminator 1
	.loc 1 490 16 is_stmt 0 discriminator 1
	lw	a4,0(a0)
.LVL146:
	.loc 1 491 13 is_stmt 1 discriminator 1
	.loc 1 491 22 is_stmt 0 discriminator 1
	andi	a1,a4,1
	.loc 1 491 5 discriminator 1
	beq	a1,zero,.L87
	.loc 1 494 5 is_stmt 1
	.loc 1 494 12 is_stmt 0
	li	a1,65536
	or	a4,a4,a1
.LVL147:
	.loc 1 495 5 is_stmt 1
	.loc 1 495 59 is_stmt 0
	sw	a4,48(a5)
	.loc 1 498 5 is_stmt 1
	.loc 1 498 8 is_stmt 0
	beq	a3,zero,.L98
	.loc 1 503 5 is_stmt 1
	.loc 1 503 12 is_stmt 0
	lw	a1,24(a5)
.LVL148:
	.loc 1 504 5 is_stmt 1
.LBB2:
	.loc 1 504 10
	addi	a4,a2,-4
	andi	a4,a4,0xff
.LVL149:
.L89:
	.loc 1 504 25 discriminator 1
	.loc 1 504 5 is_stmt 0 discriminator 1
	beq	a2,zero,.L90
	.loc 1 504 40 discriminator 3
	bne	a2,a4,.L91
.L90:
.LBE2:
	.loc 1 509 5 is_stmt 1
	.loc 1 509 12 is_stmt 0
	lw	a4,28(a5)
.LVL150:
	.loc 1 510 5 is_stmt 1
.LBB3:
	.loc 1 510 10
	.loc 1 510 40 is_stmt 0
	li	a1,4
	.loc 1 510 5
	li	a5,0
.LVL151:
.L92:
	.loc 1 510 25 is_stmt 1 discriminator 1
	.loc 1 510 5 is_stmt 0 discriminator 1
	beq	a5,a2,.L98
	.loc 1 510 40 discriminator 3
	beq	a5,a1,.L98
	.loc 1 511 9 is_stmt 1 discriminator 4
	.loc 1 511 22 is_stmt 0 discriminator 4
	srb	a4,a3,a5,0
	.loc 1 512 9 is_stmt 1 discriminator 4
.LVL152:
	.loc 1 513 9 discriminator 4
	.loc 1 513 16 is_stmt 0 discriminator 4
	srli	a4,a4,8
.LVL153:
	.loc 1 510 52 is_stmt 1 discriminator 4
	addi	a5,a5,1
.LVL154:
	j	.L92
.LVL155:
.L91:
.LBE3:
.LBB4:
	.loc 1 505 9 discriminator 4
	.loc 1 504 65 is_stmt 0 discriminator 4
	addi	a2,a2,-1
	.loc 1 505 22 discriminator 4
	sbia	a1,(a3),1,0
.LVL156:
	.loc 1 506 9 is_stmt 1 discriminator 4
	.loc 1 507 9 discriminator 4
	.loc 1 504 65 is_stmt 0 discriminator 4
	andi	a2,a2,0xff
	.loc 1 507 16 discriminator 4
	srli	a1,a1,8
.LVL157:
	.loc 1 504 52 is_stmt 1 discriminator 4
	j	.L89
.LBE4:
	.cfi_endproc
.LFE11:
	.size	qcc74x_dbi_send_cmd_read_data, .-qcc74x_dbi_send_cmd_read_data
	.section	.text.qcc74x_dbi_send_cmd_pixel,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_send_cmd_pixel
	.type	qcc74x_dbi_send_cmd_pixel, @function
qcc74x_dbi_send_cmd_pixel:
.LFB12:
	.loc 1 521 1
	.cfi_startproc
.LVL158:
	.loc 1 525 5
	.loc 1 526 5
	.loc 1 528 5
	.loc 1 521 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
	.loc 1 528 14
	lw	s0,4(a0)
.LVL159:
	.loc 1 531 5 is_stmt 1
	.loc 1 521 1 is_stmt 0
	sw	ra,28(sp)
	sw	s1,20(sp)
	.loc 1 531 12
	lw	a5,0(s0)
.LVL160:
	.loc 1 532 5 is_stmt 1
	.loc 1 521 1 is_stmt 0
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 521 1
	mv	a4,a2
	.loc 1 532 12
	andi	a6,a5,-2
.LVL161:
	.loc 1 533 5 is_stmt 1
	.loc 1 533 58 is_stmt 0
	sw	a6,0(s0)
	.loc 1 535 5 is_stmt 1
	.loc 1 535 18 is_stmt 0
	andi	a2,a5,16
.LVL162:
	.loc 1 535 8
	bne	a2,zero,.L108
	.loc 1 535 37 discriminator 1
	bne	a4,zero,.L109
.LVL163:
.L110:
	.loc 1 604 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL164:
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	li	a0,0
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL165:
.L108:
	.cfi_restore_state
	.loc 1 541 5 is_stmt 1
	.loc 1 544 5
	.loc 1 547 5
	.loc 1 547 8 is_stmt 0
	beq	a4,zero,.L111
.LVL166:
.L109:
	.loc 1 548 9 is_stmt 1
	.loc 1 548 16 is_stmt 0
	ori	a5,a6,224
.LVL167:
.L112:
	.loc 1 552 5 is_stmt 1
	.loc 1 552 58 is_stmt 0
	sw	a5,0(s0)
	.loc 1 555 5 is_stmt 1
	.loc 1 555 8 is_stmt 0
	beq	a2,zero,.L113
	.loc 1 556 9 is_stmt 1
	.loc 1 556 16 is_stmt 0
	lw	a5,16(s0)
.LVL168:
	.loc 1 557 9 is_stmt 1
	.loc 1 557 16 is_stmt 0
	andi	a5,a5,-256
.LVL169:
	.loc 1 558 9 is_stmt 1
	.loc 1 558 16 is_stmt 0
	or	a1,a1,a5
.LVL170:
	.loc 1 559 9 is_stmt 1
	.loc 1 559 63 is_stmt 0
	sw	a1,16(s0)
.LVL171:
.L113:
	.loc 1 563 5 is_stmt 1
	.loc 1 563 8 is_stmt 0
	beq	a4,zero,.L114
	.loc 1 564 9 is_stmt 1
	.loc 1 564 16 is_stmt 0
	lw	a5,8(s0)
.LVL172:
	.loc 1 565 9 is_stmt 1
	.loc 1 565 16 is_stmt 0
	li	a2,-16777216
	.loc 1 566 45
	li	a1,16777216
	.loc 1 565 16
	and	a2,a5,a2
.LVL173:
	.loc 1 566 9 is_stmt 1
	.loc 1 566 45 is_stmt 0
	addi	a1,a1,-1
	.loc 1 566 36
	addi	a5,a4,-1
	.loc 1 566 45
	and	a5,a5,a1
	.loc 1 566 16
	or	a5,a5,a2
.LVL174:
	.loc 1 567 9 is_stmt 1
	.loc 1 567 62 is_stmt 0
	sw	a5,8(s0)
.LVL175:
.L114:
	.loc 1 571 5 is_stmt 1
	.loc 1 571 12 is_stmt 0
	addi	a2,s0,128
	lw	a5,0(a2)
.LVL176:
	.loc 1 572 5 is_stmt 1
	.loc 1 576 58 is_stmt 0
	addi	s2,s0,48
	.loc 1 572 12
	ori	a5,a5,4
.LVL177:
	.loc 1 573 5 is_stmt 1
	.loc 1 573 59 is_stmt 0
	sw	a5,0(a2)
	.loc 1 576 5 is_stmt 1
	.loc 1 576 12 is_stmt 0
	lw	a5,48(s0)
.LVL178:
	.loc 1 577 5 is_stmt 1
	.loc 1 577 12 is_stmt 0
	li	a2,65536
	or	a5,a5,a2
.LVL179:
	.loc 1 578 5 is_stmt 1
	.loc 1 578 59 is_stmt 0
	sw	a5,48(s0)
	.loc 1 581 5 is_stmt 1
	.loc 1 581 12 is_stmt 0
	lw	a5,0(s0)
.LVL180:
	.loc 1 582 5 is_stmt 1
	.loc 1 582 12 is_stmt 0
	ori	a5,a5,1
.LVL181:
	.loc 1 583 5 is_stmt 1
	.loc 1 583 58 is_stmt 0
	sw	a5,0(s0)
	.loc 1 586 5 is_stmt 1
	.loc 1 586 8 is_stmt 0
	beq	a3,zero,.L110
	mv	s1,a0
	.loc 1 591 5 is_stmt 1
	lw	a0,4(a0)
.LVL182:
	mv	a1,a4
	sw	a3,12(sp)
	call	qcc74x_dbi_get_words_cnt_form_pixel.isra.0
.LVL183:
	mv	a1,a0
	lw	a2,12(sp)
	lw	a0,4(s1)
	call	qcc74x_dbi_fill_fifo.isra.0
.LVL184:
.L116:
	.loc 1 594 5 discriminator 1
	.loc 1 595 9 discriminator 1
	.loc 1 595 16 is_stmt 0 discriminator 1
	lw	a5,0(s2)
.LVL185:
	.loc 1 596 13 is_stmt 1 discriminator 1
	.loc 1 596 22 is_stmt 0 discriminator 1
	andi	a4,a5,1
	.loc 1 596 5 discriminator 1
	beq	a4,zero,.L116
	.loc 1 599 5 is_stmt 1
	.loc 1 599 12 is_stmt 0
	li	a4,65536
	or	a5,a5,a4
.LVL186:
	.loc 1 600 5 is_stmt 1
	.loc 1 600 59 is_stmt 0
	sw	a5,48(s0)
	.loc 1 602 5 is_stmt 1
	.loc 1 602 12 is_stmt 0
	j	.L110
.LVL187:
.L111:
	.loc 1 550 9 is_stmt 1
	andi	a5,a5,-34
	.loc 1 550 16 is_stmt 0
	ori	a5,a5,192
.LVL188:
	j	.L112
	.cfi_endproc
.LFE12:
	.size	qcc74x_dbi_send_cmd_pixel, .-qcc74x_dbi_send_cmd_pixel
	.section	.text.qcc74x_dbi_link_txdma,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_link_txdma
	.type	qcc74x_dbi_link_txdma, @function
qcc74x_dbi_link_txdma:
.LFB13:
	.loc 1 607 1 is_stmt 1
	.cfi_startproc
.LVL189:
	.loc 1 611 5
	.loc 1 612 5
	.loc 1 614 5
	.loc 1 616 5
	.loc 1 616 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 616 12
	lw	a3,128(a5)
.LVL190:
	.loc 1 617 5 is_stmt 1
	.loc 1 620 16 is_stmt 0
	andi	a4,a3,-2
	.loc 1 617 8
	beq	a1,zero,.L131
	.loc 1 618 9 is_stmt 1
	.loc 1 618 16 is_stmt 0
	ori	a4,a3,1
.LVL191:
.L131:
	.loc 1 622 5 is_stmt 1
	.loc 1 622 59 is_stmt 0
	sw	a4,128(a5)
.LVL192:
	.loc 1 624 1
	ret
	.cfi_endproc
.LFE13:
	.size	qcc74x_dbi_link_txdma, .-qcc74x_dbi_link_txdma
	.section	.text.qcc74x_dbi_txint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_txint_mask
	.type	qcc74x_dbi_txint_mask, @function
qcc74x_dbi_txint_mask:
.LFB14:
	.loc 1 627 1 is_stmt 1
	.cfi_startproc
.LVL193:
	.loc 1 631 5
	.loc 1 632 5
	.loc 1 634 5
	.loc 1 636 5
	.loc 1 636 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 636 12
	lw	a3,48(a5)
.LVL194:
	.loc 1 637 5 is_stmt 1
	.loc 1 640 16 is_stmt 0
	andi	a4,a3,-513
	.loc 1 637 8
	beq	a1,zero,.L135
	.loc 1 638 9 is_stmt 1
	.loc 1 638 16 is_stmt 0
	ori	a4,a3,512
.LVL195:
.L135:
	.loc 1 642 5 is_stmt 1
	.loc 1 642 59 is_stmt 0
	sw	a4,48(a5)
.LVL196:
	.loc 1 644 1
	ret
	.cfi_endproc
.LFE14:
	.size	qcc74x_dbi_txint_mask, .-qcc74x_dbi_txint_mask
	.section	.text.qcc74x_dbi_tcint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_tcint_mask
	.type	qcc74x_dbi_tcint_mask, @function
qcc74x_dbi_tcint_mask:
.LFB15:
	.loc 1 647 1 is_stmt 1
	.cfi_startproc
.LVL197:
	.loc 1 651 5
	.loc 1 652 5
	.loc 1 654 5
	.loc 1 656 5
	.loc 1 656 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 656 12
	lw	a3,48(a5)
.LVL198:
	.loc 1 657 5 is_stmt 1
	.loc 1 660 16 is_stmt 0
	andi	a4,a3,-257
	.loc 1 657 8
	beq	a1,zero,.L139
	.loc 1 658 9 is_stmt 1
	.loc 1 658 16 is_stmt 0
	ori	a4,a3,256
.LVL199:
.L139:
	.loc 1 662 5 is_stmt 1
	.loc 1 662 59 is_stmt 0
	sw	a4,48(a5)
.LVL200:
	.loc 1 664 1
	ret
	.cfi_endproc
.LFE15:
	.size	qcc74x_dbi_tcint_mask, .-qcc74x_dbi_tcint_mask
	.section	.text.qcc74x_dbi_errint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_errint_mask
	.type	qcc74x_dbi_errint_mask, @function
qcc74x_dbi_errint_mask:
.LFB16:
	.loc 1 667 1 is_stmt 1
	.cfi_startproc
.LVL201:
	.loc 1 671 5
	.loc 1 672 5
	.loc 1 674 5
	.loc 1 676 5
	.loc 1 676 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 676 12
	lw	a3,48(a5)
.LVL202:
	.loc 1 677 5 is_stmt 1
	.loc 1 680 16 is_stmt 0
	andi	a4,a3,-1025
	.loc 1 677 8
	beq	a1,zero,.L143
	.loc 1 678 9 is_stmt 1
	.loc 1 678 16 is_stmt 0
	ori	a4,a3,1024
.LVL203:
.L143:
	.loc 1 682 5 is_stmt 1
	.loc 1 682 59 is_stmt 0
	sw	a4,48(a5)
.LVL204:
	.loc 1 684 1
	ret
	.cfi_endproc
.LFE16:
	.size	qcc74x_dbi_errint_mask, .-qcc74x_dbi_errint_mask
	.section	.text.qcc74x_dbi_get_intstatus,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_get_intstatus
	.type	qcc74x_dbi_get_intstatus, @function
qcc74x_dbi_get_intstatus:
.LFB17:
	.loc 1 687 1 is_stmt 1
	.cfi_startproc
.LVL205:
	.loc 1 691 5
	.loc 1 692 5
	.loc 1 693 5
	.loc 1 695 5
	.loc 1 696 5
	.loc 1 698 5
	.loc 1 698 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 698 12
	lw	a5,48(a5)
.LVL206:
	.loc 1 701 5 is_stmt 1
	.loc 1 706 16 is_stmt 0
	andi	a4,a5,2
	.loc 1 701 16
	andi	a0,a5,1
.LVL207:
	.loc 1 706 5 is_stmt 1
	.loc 1 706 8 is_stmt 0
	beq	a4,zero,.L146
	.loc 1 707 9 is_stmt 1
	.loc 1 707 17 is_stmt 0
	ori	a0,a0,2
.LVL208:
.L146:
	.loc 1 711 5 is_stmt 1
	.loc 1 711 16 is_stmt 0
	andi	a5,a5,4
.LVL209:
	.loc 1 711 8
	beq	a5,zero,.L145
	.loc 1 712 9 is_stmt 1
	.loc 1 712 17 is_stmt 0
	ori	a0,a0,4
.LVL210:
	.loc 1 715 5 is_stmt 1
.L145:
	.loc 1 717 1 is_stmt 0
	ret
	.cfi_endproc
.LFE17:
	.size	qcc74x_dbi_get_intstatus, .-qcc74x_dbi_get_intstatus
	.section	.text.qcc74x_dbi_int_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_int_clear
	.type	qcc74x_dbi_int_clear, @function
qcc74x_dbi_int_clear:
.LFB18:
	.loc 1 720 1 is_stmt 1
	.cfi_startproc
.LVL211:
	.loc 1 724 5
	.loc 1 725 5
	.loc 1 727 5
	.loc 1 729 5
	.loc 1 729 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 732 19
	andi	a1,a1,1
.LVL212:
	.loc 1 729 12
	lw	a5,48(a4)
.LVL213:
	.loc 1 732 5 is_stmt 1
	.loc 1 732 8 is_stmt 0
	beq	a1,zero,.L155
	.loc 1 733 9 is_stmt 1
	.loc 1 733 16 is_stmt 0
	li	a3,65536
	or	a5,a5,a3
.LVL214:
.L155:
	.loc 1 736 5 is_stmt 1
	.loc 1 736 59 is_stmt 0
	sw	a5,48(a4)
.LVL215:
	.loc 1 738 1
	ret
	.cfi_endproc
.LFE18:
	.size	qcc74x_dbi_int_clear, .-qcc74x_dbi_int_clear
	.section	.text.qcc74x_dbi_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_dbi_feature_control
	.type	qcc74x_dbi_feature_control, @function
qcc74x_dbi_feature_control:
.LFB19:
	.loc 1 741 1 is_stmt 1
	.cfi_startproc
.LVL216:
	.loc 1 745 5
	.loc 1 746 5
	.loc 1 747 5
	.loc 1 749 5
	.loc 1 751 5 is_stmt 0
	li	a4,5
	.loc 1 749 14
	lw	a5,4(a0)
.LVL217:
	.loc 1 751 5 is_stmt 1
	beq	a1,a4,.L160
	bgt	a1,a4,.L161
	li	a4,3
	beq	a1,a4,.L162
	li	a4,4
	beq	a1,a4,.L163
	li	a4,1
	beq	a1,a4,.L164
	li	a4,2
	beq	a1,a4,.L165
.L189:
	li	a0,-1
.LVL218:
	ret
.LVL219:
.L161:
	li	a4,8
	beq	a1,a4,.L167
	bgt	a1,a4,.L168
	li	a4,6
	beq	a1,a4,.L169
	li	a4,7
	bne	a1,a4,.L189
	.loc 1 825 13
	.loc 1 825 20 is_stmt 0
	lw	a1,128(a5)
.LVL220:
	.loc 1 826 13 is_stmt 1
	.loc 1 826 20 is_stmt 0
	li	a4,536870912
	addi	a4,a4,-1
	and	a1,a1,a4
.LVL221:
	.loc 1 827 13 is_stmt 1
	.loc 1 827 28 is_stmt 0
	slli	a2,a2,29
.LVL222:
	.loc 1 827 20
	or	a2,a2,a1
.LVL223:
	.loc 1 828 13 is_stmt 1
	.loc 1 828 67 is_stmt 0
	sw	a2,128(a5)
	.loc 1 829 13 is_stmt 1
	j	.L190
.LVL224:
.L168:
	.loc 1 751 5 is_stmt 0
	li	a4,16
	bne	a1,a4,.L189
	.loc 1 845 13 is_stmt 1
	.loc 1 845 20 is_stmt 0
	lw	a4,128(a5)
.LVL225:
	.loc 1 846 13 is_stmt 1
	.loc 1 846 16 is_stmt 0
	beq	a2,zero,.L180
	.loc 1 847 17 is_stmt 1
	.loc 1 847 24 is_stmt 0
	li	a3,268435456
	or	a4,a4,a3
.LVL226:
	j	.L181
.LVL227:
.L164:
	.loc 1 754 13 is_stmt 1
	.loc 1 754 20 is_stmt 0
	lw	a4,128(a5)
.LVL228:
	.loc 1 755 13 is_stmt 1
	.loc 1 755 20 is_stmt 0
	ori	a4,a4,4
.LVL229:
	.loc 1 756 13 is_stmt 1
.L181:
	.loc 1 851 13
	.loc 1 851 67 is_stmt 0
	sw	a4,128(a5)
	j	.L190
.LVL230:
.L165:
	.loc 1 761 13 is_stmt 1
	.loc 1 761 20 is_stmt 0
	lw	a0,132(a5)
.LVL231:
	.loc 1 762 13 is_stmt 1
	.loc 1 762 17 is_stmt 0
	andi	a0,a0,15
.LVL232:
	.loc 1 763 13 is_stmt 1
	ret
.LVL233:
.L162:
	.loc 1 770 13
	.loc 1 770 20 is_stmt 0
	lw	a4,0(a5)
.LVL234:
	.loc 1 773 13 is_stmt 1
	.loc 1 745 9 is_stmt 0
	li	a0,0
.LVL235:
	.loc 1 773 42
	extu	a3,a4,1+2-1,1
	.loc 1 773 16
	beq	a3,a1,.L186
	.loc 1 777 13 is_stmt 1
	.loc 1 780 24 is_stmt 0
	ori	a3,a4,16
	.loc 1 777 16
	beq	a2,zero,.L173
	.loc 1 778 17 is_stmt 1
	.loc 1 778 24 is_stmt 0
	andi	a3,a4,-17
.LVL236:
.L173:
	.loc 1 782 13 is_stmt 1
	.loc 1 782 66 is_stmt 0
	sw	a3,0(a5)
	.loc 1 783 13 is_stmt 1
.LVL237:
.L190:
	.loc 1 852 13
	.loc 1 745 9 is_stmt 0
	li	a0,0
	.loc 1 852 13
	ret
.LVL238:
.L163:
	.loc 1 787 13 is_stmt 1
	.loc 1 787 20 is_stmt 0
	lw	a4,0(a5)
.LVL239:
	.loc 1 788 13 is_stmt 1
	.loc 1 788 16 is_stmt 0
	beq	a2,zero,.L174
	.loc 1 789 17 is_stmt 1
	.loc 1 789 24 is_stmt 0
	li	a3,262144
	or	a4,a4,a3
.LVL240:
.L175:
	.loc 1 793 13 is_stmt 1
	.loc 1 793 66 is_stmt 0
	sw	a4,0(a5)
	.loc 1 794 13 is_stmt 1
	j	.L190
.L174:
	.loc 1 791 17
	.loc 1 791 24 is_stmt 0
	li	a3,-262144
	addi	a3,a3,-1
	and	a4,a4,a3
.LVL241:
	j	.L175
.LVL242:
.L160:
	.loc 1 801 13 is_stmt 1
	.loc 1 801 20 is_stmt 0
	lw	a4,0(a5)
.LVL243:
	.loc 1 804 13 is_stmt 1
	.loc 1 804 16 is_stmt 0
	li	a3,3
	.loc 1 745 9
	li	a0,0
.LVL244:
	.loc 1 804 42
	extu	a1,a4,1+2-1,1
.LVL245:
	.loc 1 804 16
	beq	a1,a3,.L186
	.loc 1 808 13 is_stmt 1
	.loc 1 808 16 is_stmt 0
	beq	a2,zero,.L176
	.loc 1 809 17 is_stmt 1
.LVL246:
	.loc 1 810 17
	.loc 1 811 17
	.loc 1 811 33 is_stmt 0
	addi	a2,a2,-1
.LVL247:
	.loc 1 811 48
	li	a3,15728640
	.loc 1 811 38
	slli	a2,a2,20
.LVL248:
	.loc 1 811 48
	and	a2,a2,a3
	li	a3,-15728640
	addi	a3,a3,-1
	and	a4,a4,a3
.LVL249:
	or	a2,a2,a4
	.loc 1 811 24
	li	a4,524288
	or	a2,a2,a4
.LVL250:
.L177:
	.loc 1 815 13 is_stmt 1
	.loc 1 815 66 is_stmt 0
	sw	a2,0(a5)
	.loc 1 816 13 is_stmt 1
	j	.L190
.LVL251:
.L176:
	.loc 1 813 17
	.loc 1 813 24 is_stmt 0
	li	a2,-524288
.LVL252:
	addi	a2,a2,-1
	and	a2,a4,a2
.LVL253:
	j	.L177
.LVL254:
.L169:
	.loc 1 741 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	mv	a1,a2
.LVL255:
	.loc 1 820 13 is_stmt 1
	.loc 1 820 19 is_stmt 0
	mv	a0,a5
.LVL256:
	.loc 1 741 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 820 19
	call	qcc74x_dbi_get_words_cnt_form_pixel.isra.0
.LVL257:
	.loc 1 862 1
	lw	ra,12(sp)
	.cfi_restore 1
	.loc 1 820 65
	slli	a0,a0,2
.LVL258:
	.loc 1 821 13 is_stmt 1
	.loc 1 862 1 is_stmt 0
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL259:
.L167:
	.loc 1 833 13 is_stmt 1
	.loc 1 833 20 is_stmt 0
	lw	a4,8(a5)
.LVL260:
	.loc 1 834 13 is_stmt 1
	.loc 1 834 16 is_stmt 0
	bne	a2,zero,.L178
	.loc 1 835 17 is_stmt 1
	.loc 1 835 24 is_stmt 0
	li	a3,-2147483648
	xori	a3,a3,-1
	and	a4,a4,a3
.LVL261:
.L179:
	.loc 1 839 13 is_stmt 1
	.loc 1 839 66 is_stmt 0
	sw	a4,8(a5)
	.loc 1 840 13 is_stmt 1
	j	.L190
.L178:
	.loc 1 836 20
	.loc 1 836 23 is_stmt 0
	li	a3,1
	bne	a2,a3,.L179
	.loc 1 837 17 is_stmt 1
	.loc 1 837 24 is_stmt 0
	li	a3,-2147483648
	or	a4,a4,a3
.LVL262:
	j	.L179
.L180:
	.loc 1 849 17 is_stmt 1
	.loc 1 849 24 is_stmt 0
	li	a3,-268435456
	addi	a3,a3,-1
	and	a4,a4,a3
.LVL263:
	j	.L181
.LVL264:
.L186:
	.loc 1 862 1
	ret
	.cfi_endproc
.LFE19:
	.size	qcc74x_dbi_feature_control, .-qcc74x_dbi_feature_control
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_dbi.h"
	.file 7 "./drivers/lhal/include/qcc74x_clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x980
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF65
	.byte	0xc
	.4byte	.LASF66
	.4byte	.LASF67
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x67
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
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x5b
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x83
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x25
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
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x13c
	.byte	0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0xcd
	.byte	0
	.byte	0x9
	.4byte	.LASF18
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF19
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0x8f
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0x8f
	.byte	0x9
	.byte	0x9
	.4byte	.LASF20
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0x8f
	.byte	0xa
	.byte	0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0x8f
	.byte	0xb
	.byte	0x9
	.4byte	.LASF22
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0xbf
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF24
	.byte	0xc
	.byte	0x6
	.byte	0xa8
	.byte	0x8
	.4byte	0x1bf
	.byte	0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0xa9
	.byte	0xd
	.4byte	0x8f
	.byte	0
	.byte	0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0xaa
	.byte	0xd
	.4byte	0x8f
	.byte	0x1
	.byte	0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0xab
	.byte	0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0xac
	.byte	0xd
	.4byte	0x8f
	.byte	0x3
	.byte	0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0xad
	.byte	0xe
	.4byte	0x9b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0xae
	.byte	0xd
	.4byte	0x8f
	.byte	0x8
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xb0
	.byte	0xd
	.4byte	0x8f
	.byte	0x9
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0xb1
	.byte	0xd
	.4byte	0x8f
	.byte	0xa
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xb2
	.byte	0xd
	.4byte	0x8f
	.byte	0xb
	.byte	0
	.byte	0x6
	.4byte	0x13c
	.byte	0xb
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x2e4
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x260
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x2e4
	.byte	0x38
	.4byte	0x260
	.4byte	.LLST50
	.byte	0xc
	.string	"cmd"
	.byte	0x1
	.2byte	0x2e4
	.byte	0x41
	.4byte	0x7c
	.4byte	.LLST51
	.byte	0xc
	.string	"arg"
	.byte	0x1
	.2byte	0x2e4
	.byte	0x4d
	.4byte	0xb3
	.4byte	.LLST52
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.2byte	0x2e9
	.byte	0x9
	.4byte	0x7c
	.4byte	.LLST53
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x2ea
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST54
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x2eb
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST55
	.byte	0xf
	.4byte	.LVL257
	.4byte	0x8d6
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.4byte	0x6e5
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xd3
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x2cf
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x2be
	.byte	0x13
	.string	"dev"
	.byte	0x1
	.2byte	0x2cf
	.byte	0x33
	.4byte	0x260
	.byte	0x1
	.byte	0x5a
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x2cf
	.byte	0x41
	.4byte	0x9b
	.4byte	.LLST48
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x2d4
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST49
	.byte	0x15
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x2d5
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xb
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x2ae
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x31e
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x2ae
	.byte	0x3b
	.4byte	0x260
	.4byte	.LLST44
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x2b3
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST45
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x2b4
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST46
	.byte	0xe
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x2b5
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST47
	.byte	0
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x29a
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x376
	.byte	0x13
	.string	"dev"
	.byte	0x1
	.2byte	0x29a
	.byte	0x35
	.4byte	0x260
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x29a
	.byte	0x3e
	.4byte	0x376
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x29f
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST42
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x2a0
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST43
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF42
	.byte	0x12
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x286
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x3d5
	.byte	0x13
	.string	"dev"
	.byte	0x1
	.2byte	0x286
	.byte	0x34
	.4byte	0x260
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x286
	.byte	0x3d
	.4byte	0x376
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x28b
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST40
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x28c
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST41
	.byte	0
	.byte	0x12
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x272
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x42d
	.byte	0x13
	.string	"dev"
	.byte	0x1
	.2byte	0x272
	.byte	0x34
	.4byte	0x260
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x272
	.byte	0x3d
	.4byte	0x376
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x277
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST38
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x278
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST39
	.byte	0
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x25e
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x485
	.byte	0x13
	.string	"dev"
	.byte	0x1
	.2byte	0x25e
	.byte	0x34
	.4byte	0x260
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x25e
	.byte	0x3d
	.4byte	0x376
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x263
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST36
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x264
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST37
	.byte	0
	.byte	0xb
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x208
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x53d
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x208
	.byte	0x37
	.4byte	0x260
	.4byte	.LLST30
	.byte	0xc
	.string	"cmd"
	.byte	0x1
	.2byte	0x208
	.byte	0x44
	.4byte	0x8f
	.4byte	.LLST31
	.byte	0x14
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x208
	.byte	0x52
	.4byte	0x9b
	.4byte	.LLST32
	.byte	0x14
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x208
	.byte	0x63
	.4byte	0xbf
	.4byte	.LLST33
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x20d
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST34
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x20e
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST35
	.byte	0x17
	.4byte	.LVL183
	.4byte	0x8d6
	.4byte	0x523
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.4byte	0x6e5
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL184
	.4byte	0x926
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0x11
	.4byte	0x742
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1ad
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x5ee
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x1ad
	.byte	0x3b
	.4byte	0x260
	.4byte	.LLST23
	.byte	0xc
	.string	"cmd"
	.byte	0x1
	.2byte	0x1ad
	.byte	0x48
	.4byte	0x8f
	.4byte	.LLST24
	.byte	0x14
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x1ad
	.byte	0x55
	.4byte	0x8f
	.4byte	.LLST25
	.byte	0x14
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1ad
	.byte	0x68
	.4byte	0x5ee
	.4byte	.LLST26
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x1b2
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST27
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x1b3
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST28
	.byte	0x18
	.4byte	.Ldebug_ranges0+0
	.4byte	0x5d4
	.byte	0x19
	.string	"i"
	.byte	0x1
	.2byte	0x1f8
	.byte	0x12
	.4byte	0x8f
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.byte	0xd
	.string	"i"
	.byte	0x1
	.2byte	0x1fe
	.byte	0x12
	.4byte	0x8f
	.4byte	.LLST29
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x8f
	.byte	0xb
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x150
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x6d3
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x150
	.byte	0x36
	.4byte	0x260
	.4byte	.LLST17
	.byte	0xc
	.string	"cmd"
	.byte	0x1
	.2byte	0x150
	.byte	0x43
	.4byte	0x8f
	.4byte	.LLST18
	.byte	0x14
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x150
	.byte	0x50
	.4byte	0x8f
	.4byte	.LLST19
	.byte	0x14
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x150
	.byte	0x63
	.4byte	0x5ee
	.4byte	.LLST20
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x155
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST21
	.byte	0xe
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x156
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST22
	.byte	0x17
	.4byte	.LVL113
	.4byte	0x926
	.4byte	0x692
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0x11
	.4byte	0x742
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x17
	.4byte	.LVL117
	.4byte	0x926
	.4byte	0x6b4
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x8
	.byte	0x78
	.byte	0x3
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x9
	.byte	0xfe
	.byte	0x25
	.byte	0x11
	.4byte	0x742
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL124
	.4byte	0x926
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x38
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0x11
	.4byte	0x742
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x126
	.byte	0x29
	.4byte	0x9b
	.byte	0x1
	.4byte	0x734
	.byte	0x1c
	.string	"dev"
	.byte	0x1
	.2byte	0x126
	.byte	0x65
	.4byte	0x260
	.byte	0x1d
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x126
	.byte	0x73
	.4byte	0x9b
	.byte	0x1e
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x128
	.byte	0xe
	.4byte	0x9b
	.byte	0x1e
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x129
	.byte	0xe
	.4byte	0x9b
	.byte	0x1e
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x12a
	.byte	0xe
	.4byte	0x9b
	.byte	0x1e
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x12b
	.byte	0xd
	.4byte	0x8f
	.byte	0
	.byte	0x1f
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x10b
	.byte	0x25
	.byte	0x1
	.4byte	0x791
	.byte	0x1c
	.string	"dev"
	.byte	0x1
	.2byte	0x10b
	.byte	0x52
	.4byte	0x260
	.byte	0x1d
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x10b
	.byte	0x60
	.4byte	0x9b
	.byte	0x1d
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x10b
	.byte	0x75
	.4byte	0x791
	.byte	0x1e
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x10d
	.byte	0xe
	.4byte	0x9b
	.byte	0x1e
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x10e
	.byte	0xe
	.4byte	0x9b
	.byte	0x1e
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x10f
	.byte	0xe
	.4byte	0x9b
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x9b
	.byte	0x20
	.4byte	.LASF57
	.byte	0x1
	.byte	0xf3
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x7f8
	.byte	0x21
	.string	"dev"
	.byte	0x1
	.byte	0xf3
	.byte	0x37
	.4byte	0x260
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.4byte	.LASF58
	.byte	0x1
	.byte	0xf3
	.byte	0x44
	.4byte	0x8f
	.4byte	.LLST15
	.byte	0x23
	.4byte	.LASF59
	.byte	0x1
	.byte	0xf3
	.byte	0x5d
	.4byte	0x9b
	.byte	0x1
	.byte	0x5c
	.byte	0x24
	.4byte	.LASF18
	.byte	0x1
	.byte	0xf8
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0x25
	.4byte	.LASF34
	.byte	0x1
	.byte	0xf9
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST16
	.byte	0
	.byte	0x20
	.4byte	.LASF60
	.byte	0x1
	.byte	0xdc
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x839
	.byte	0x21
	.string	"dev"
	.byte	0x1
	.byte	0xdc
	.byte	0x30
	.4byte	0x260
	.byte	0x1
	.byte	0x5a
	.byte	0x24
	.4byte	.LASF18
	.byte	0x1
	.byte	0xe1
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0x24
	.4byte	.LASF34
	.byte	0x1
	.byte	0xe2
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x20
	.4byte	.LASF61
	.byte	0x1
	.byte	0x1e
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x8d0
	.byte	0x26
	.string	"dev"
	.byte	0x1
	.byte	0x1e
	.byte	0x2e
	.4byte	0x260
	.4byte	.LLST8
	.byte	0x22
	.4byte	.LASF62
	.byte	0x1
	.byte	0x1e
	.byte	0x55
	.4byte	0x8d0
	.4byte	.LLST9
	.byte	0x25
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2a
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST10
	.byte	0x25
	.4byte	.LASF34
	.byte	0x1
	.byte	0x2b
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST11
	.byte	0x27
	.string	"div"
	.byte	0x1
	.byte	0x2c
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST12
	.byte	0x25
	.4byte	.LASF63
	.byte	0x1
	.byte	0x2c
	.byte	0x13
	.4byte	0x9b
	.4byte	.LLST13
	.byte	0x25
	.4byte	.LASF64
	.byte	0x1
	.byte	0x2c
	.byte	0x1a
	.4byte	0x9b
	.4byte	.LLST14
	.byte	0xf
	.4byte	.LVL33
	.4byte	0x976
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x24
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1bf
	.byte	0x28
	.4byte	0x6d3
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x1
	.byte	0x9c
	.4byte	0x926
	.byte	0x29
	.4byte	0x6f2
	.4byte	.LLST0
	.byte	0x2a
	.4byte	0x6ff
	.4byte	.LLST1
	.byte	0x2a
	.4byte	0x70c
	.4byte	.LLST2
	.byte	0x2a
	.4byte	0x719
	.4byte	.LLST3
	.byte	0x2b
	.4byte	0x726
	.byte	0x1
	.byte	0x5f
	.byte	0x2c
	.4byte	0x6e5
	.byte	0x6
	.byte	0xfa
	.4byte	0x6e5
	.byte	0x9f
	.byte	0x2d
	.4byte	0x6e5
	.byte	0
	.byte	0x28
	.4byte	0x734
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x976
	.byte	0x29
	.4byte	0x74f
	.4byte	.LLST4
	.byte	0x29
	.4byte	0x75c
	.4byte	.LLST5
	.byte	0x2b
	.4byte	0x769
	.byte	0x1
	.byte	0x5a
	.byte	0x2a
	.4byte	0x776
	.4byte	.LLST6
	.byte	0x2a
	.4byte	0x783
	.4byte	.LLST7
	.byte	0x2c
	.4byte	0x742
	.byte	0x6
	.byte	0xfa
	.4byte	0x742
	.byte	0x9f
	.byte	0x2d
	.4byte	0x742
	.byte	0
	.byte	0x2e
	.4byte	.LASF70
	.4byte	.LASF70
	.byte	0x7
	.2byte	0x13f
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x91,0x42
	.byte	0x18
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
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
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0xb
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x12
	.byte	0x6
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
	.byte	0x20
	.byte	0xb
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
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
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x28
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
	.byte	0x29
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2a
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x2b
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
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
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST50:
	.4byte	.LVL216
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL231
	.4byte	.LVL233
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL233
	.4byte	.LVL235
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL235
	.4byte	.LVL238
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL244
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL244
	.4byte	.LVL254
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LVL256
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL256
	.4byte	.LVL259
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL259
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL264
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST51:
	.4byte	.LVL216
	.4byte	.LVL220
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL220
	.4byte	.LVL224
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL224
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL245
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL245
	.4byte	.LVL254
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LVL255
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL255
	.4byte	.LVL259
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL259
	.4byte	.LVL264
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL264
	.4byte	.LFE19
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST52:
	.4byte	.LVL216
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL222
	.4byte	.LVL224
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL224
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL237
	.4byte	.LVL238
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL238
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x3
	.byte	0x7c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL248
	.4byte	.LVL251
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL252
	.4byte	.LVL254
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL254
	.4byte	.LVL257-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL257-1
	.4byte	.LVL259
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL259
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST53:
	.4byte	.LVL216
	.4byte	.LVL232
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL233
	.4byte	.LVL258
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL258
	.4byte	.LVL259
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL259
	.4byte	.LFE19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST54:
	.4byte	.LVL217
	.4byte	.LVL257-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL259
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST55:
	.4byte	.LVL220
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL223
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL225
	.4byte	.LVL227
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL228
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL231
	.4byte	.LVL232
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL234
	.4byte	.LVL236
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL236
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL239
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL243
	.4byte	.LVL246
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL246
	.4byte	.LVL249
	.2byte	0xd
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xbf,0x78
	.byte	0x1a
	.byte	0x40
	.byte	0x3f
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL250
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL251
	.4byte	.LVL253
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL253
	.4byte	.LVL254
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL260
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST48:
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL212
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST49:
	.4byte	.LVL211
	.4byte	.LVL215
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL215
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST44:
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL207
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST45:
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL207
	.4byte	.LFE17
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST46:
	.4byte	.LVL206
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST47:
	.4byte	.LVL205
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL207
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST42:
	.4byte	.LVL201
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL204
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST43:
	.4byte	.LVL202
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL203
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL197
	.4byte	.LVL200
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL200
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL199
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL193
	.4byte	.LVL196
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL196
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL194
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL195
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL189
	.4byte	.LVL192
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL192
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL191
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL158
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL182
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL187
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL158
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL170
	.4byte	.LVL187
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL158
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL183-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL183-1
	.4byte	.LVL187
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL158
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL163
	.4byte	.LVL165
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL183-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL183-1
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL187
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL159
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL165
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL161
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x8
	.byte	0xc0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL176
	.4byte	.LVL183-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL185
	.4byte	.LVL187
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x6
	.byte	0x80
	.byte	0
	.byte	0x8
	.byte	0xc0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL188
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL125
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL127
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL125
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
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL138
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL125
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL131
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL125
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL131
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL154
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL126
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL131
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL151
	.4byte	.LVL155
	.2byte	0x3
	.byte	0x7a
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL155
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0xb
	.2byte	0xff3e
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0x11
	.byte	0xbe,0x80,0x7c
	.byte	0x1a
	.byte	0x8
	.byte	0x20
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x7f
	.byte	0
	.4byte	.LVL136
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL138
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL140
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL150
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL155
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL151
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL89
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL123
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL89
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL105
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL123
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL120
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL89
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL95
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL113-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL113-1
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL114
	.4byte	.LVL120
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5d
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LVL124-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL124-1
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL90
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL98
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x79
	.byte	0
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xff7e
	.byte	0x1a
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0xb
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xfe,0x80,0x7c
	.byte	0x1a
	.byte	0x8
	.byte	0x60
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL101
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x79
	.byte	0
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL111
	.4byte	.LVL113-1
	.2byte	0x2
	.byte	0x83
	.byte	0
	.4byte	.LVL115
	.4byte	.LVL117-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xff7e
	.byte	0x1a
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL123
	.4byte	.LVL124-1
	.2byte	0x2
	.byte	0x83
	.byte	0
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL85
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL88
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL32
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL18
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL19
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL66
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL21
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL33-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x38
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x16
	.byte	0x79
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4d
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x11
	.byte	0xff,0xff,0xff,0xff,0x7e
	.byte	0x1a
	.byte	0x34
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL53
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0x98060000
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x6
	.byte	0x9e
	.byte	0x4
	.4byte	0xce000200
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x6
	.byte	0xc
	.4byte	0x2f502002
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x6
	.byte	0xc
	.4byte	0x38b200e9
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0x7b
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x3a
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x7f
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x3a
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL38
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL73
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0xb
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x44
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL40
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x7b
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x7b
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LFE21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9
	.4byte	.LFE21
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LFE20
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL10
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x8
	.byte	0x7e
	.byte	0x7f
	.byte	0x32
	.byte	0x24
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x23
	.byte	0x1
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
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"user_data"
.LASF64:
	.string	"div_1"
.LASF15:
	.string	"size_t"
.LASF14:
	.string	"uintptr_t"
.LASF40:
	.string	"qcc74x_dbi_errint_mask"
.LASF59:
	.string	"addr_val"
.LASF45:
	.string	"qcc74x_dbi_link_txdma"
.LASF6:
	.string	"__uint8_t"
.LASF35:
	.string	"int_clear"
.LASF26:
	.string	"pixel_input_format"
.LASF24:
	.string	"qcc74x_dbi_config_s"
.LASF10:
	.string	"long long unsigned int"
.LASF44:
	.string	"qcc74x_dbi_txint_mask"
.LASF20:
	.string	"sub_idx"
.LASF9:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF25:
	.string	"dbi_mode"
.LASF67:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/lhal"
.LASF5:
	.string	"long int"
.LASF70:
	.string	"qcc74x_clk_get_peripheral_clock"
.LASF46:
	.string	"enable"
.LASF69:
	.string	"qcc74x_dbi_fill_fifo"
.LASF61:
	.string	"qcc74x_dbi_init"
.LASF7:
	.string	"__uint32_t"
.LASF41:
	.string	"mask"
.LASF60:
	.string	"qcc74x_dbi_deinit"
.LASF55:
	.string	"words_cnt"
.LASF66:
	.string	"./drivers/lhal/src/qcc74x_dbi.c"
.LASF68:
	.string	"qcc74x_dbi_get_words_cnt_form_pixel"
.LASF50:
	.string	"qcc74x_dbi_send_cmd_read_data"
.LASF0:
	.string	"unsigned int"
.LASF8:
	.string	"long unsigned int"
.LASF58:
	.string	"addr_byte_size"
.LASF29:
	.string	"clk_freq_hz"
.LASF17:
	.string	"name"
.LASF32:
	.string	"addr_wire_mode"
.LASF33:
	.string	"data_wire_mode"
.LASF4:
	.string	"short unsigned int"
.LASF49:
	.string	"pixel_buff"
.LASF65:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF28:
	.string	"clk_mode"
.LASF63:
	.string	"div_0"
.LASF52:
	.string	"data_buff"
.LASF18:
	.string	"reg_base"
.LASF53:
	.string	"qcc74x_dbi_send_cmd_data"
.LASF42:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF34:
	.string	"regval"
.LASF27:
	.string	"pixel_output_format"
.LASF3:
	.string	"short int"
.LASF31:
	.string	"cmd_wire_mode"
.LASF38:
	.string	"int_sts"
.LASF11:
	.string	"__uintptr_t"
.LASF37:
	.string	"qcc74x_dbi_get_intstatus"
.LASF30:
	.string	"tx_fifo_threshold"
.LASF39:
	.string	"qcc74x_dbi_int_clear"
.LASF13:
	.string	"uint32_t"
.LASF19:
	.string	"irq_num"
.LASF16:
	.string	"char"
.LASF62:
	.string	"config"
.LASF57:
	.string	"qcc74x_dbi_qspi_set_addr"
.LASF51:
	.string	"data_len"
.LASF21:
	.string	"dev_type"
.LASF36:
	.string	"qcc74x_dbi_feature_control"
.LASF23:
	.string	"qcc74x_device_s"
.LASF48:
	.string	"pixel_cnt"
.LASF12:
	.string	"uint8_t"
.LASF56:
	.string	"fifo_cnt"
.LASF54:
	.string	"pixle_cnt"
.LASF47:
	.string	"qcc74x_dbi_send_cmd_pixel"
.LASF43:
	.string	"qcc74x_dbi_tcint_mask"
	.ident	"GCC: (GNU) 10.4.0"
