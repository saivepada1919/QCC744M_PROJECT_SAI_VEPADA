	.file	"qcc74x_spi.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_spi_init,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_init
	.type	qcc74x_spi_init, @function
qcc74x_spi_init:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_spi.c"
	.loc 1 12 1
	.cfi_startproc
.LVL0:
	.loc 1 13 5
	.loc 1 14 5
	.loc 1 15 5
	.loc 1 16 5
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 20 5
	.loc 1 25 5
	.loc 1 26 5
	.loc 1 27 5
	.loc 1 30 5
	.loc 1 12 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 30 12
	li	a5,536870912
	.loc 1 31 8
	lbu	a4,4(a1)
	.loc 1 30 12
	lw	a5,1296(a5)
.LVL1:
	.loc 1 31 5 is_stmt 1
	.loc 1 12 1 is_stmt 0
	mv	s0,a1
	.loc 1 31 8
	bne	a4,zero,.L2
	.loc 1 32 9 is_stmt 1
	.loc 1 32 16 is_stmt 0
	li	a4,4096
	or	a5,a5,a4
.LVL2:
.L3:
	.loc 1 36 5 is_stmt 1
	.loc 1 36 52 is_stmt 0
	li	a4,536870912
	sw	a5,1296(a4)
	.loc 1 38 5 is_stmt 1
	.loc 1 40 12 is_stmt 0
	lbu	a1,9(a0)
.LVL3:
	.loc 1 38 14
	lw	s1,4(a0)
.LVL4:
	.loc 1 40 5 is_stmt 1
	.loc 1 40 12 is_stmt 0
	li	a0,6
.LVL5:
	call	qcc74x_clk_get_peripheral_clock
.LVL6:
	.loc 1 40 57
	srli	a4,a0,1
	.loc 1 40 61
	li	a3,10
	mul	a4,a4,a3
	.loc 1 40 66
	lw	a5,0(s0)
	.loc 1 41 29
	li	a2,9
	.loc 1 40 66
	divu	a4,a4,a5
	.loc 1 41 29
	li	a5,0
	.loc 1 40 81
	addi	a4,a4,5
.LVL7:
	.loc 1 41 5 is_stmt 1
	.loc 1 41 29 is_stmt 0
	bleu	a4,a2,.L4
	.loc 1 40 9 discriminator 1
	divu	a5,a4,a3
.LVL8:
	.loc 1 41 29 discriminator 1
	addi	a5,a5,-1
.LVL9:
.L4:
	.loc 1 42 5 is_stmt 1 discriminator 4
	.loc 1 42 9 is_stmt 0 discriminator 4
	li	a4,255
	bleu	a5,a4,.L5
	li	a5,255
.LVL10:
.L5:
	.loc 1 44 5 is_stmt 1 discriminator 4
	.loc 1 45 5 discriminator 4
	.loc 1 46 5 discriminator 4
	.loc 1 46 19 is_stmt 0 discriminator 4
	slli	a3,a5,24
	.loc 1 45 19 discriminator 4
	slli	a4,a5,16
.LVL11:
	.loc 1 46 12 discriminator 4
	or	a4,a4,a3
.LVL12:
	.loc 1 47 5 is_stmt 1 discriminator 4
	.loc 1 47 12 is_stmt 0 discriminator 4
	or	a4,a5,a4
.LVL13:
	.loc 1 48 5 is_stmt 1 discriminator 4
	.loc 1 48 19 is_stmt 0 discriminator 4
	slli	a3,a5,8
	.loc 1 48 12 discriminator 4
	or	a4,a3,a4
.LVL14:
	.loc 1 49 5 is_stmt 1 discriminator 4
	.loc 1 49 59 is_stmt 0 discriminator 4
	sw	a4,16(s1)
	.loc 1 51 5 is_stmt 1 discriminator 4
	.loc 1 51 12 is_stmt 0 discriminator 4
	lw	a4,20(s1)
.LVL15:
	.loc 1 52 5 is_stmt 1 discriminator 4
	.loc 1 52 12 is_stmt 0 discriminator 4
	andi	a4,a4,-256
.LVL16:
	.loc 1 53 5 is_stmt 1 discriminator 4
	.loc 1 53 12 is_stmt 0 discriminator 4
	or	a5,a5,a4
.LVL17:
	.loc 1 54 5 is_stmt 1 discriminator 4
	.loc 1 54 59 is_stmt 0 discriminator 4
	sw	a5,20(s1)
	.loc 1 57 5 is_stmt 1 discriminator 4
	.loc 1 64 8 is_stmt 0 discriminator 4
	lbu	a5,8(s0)
.LVL18:
	.loc 1 57 12 discriminator 4
	lw	a4,0(s1)
.LVL19:
	.loc 1 58 5 is_stmt 1 discriminator 4
	.loc 1 59 5 discriminator 4
	.loc 1 60 5 discriminator 4
	.loc 1 61 5 discriminator 4
	.loc 1 64 5 discriminator 4
	.loc 1 64 8 is_stmt 0 discriminator 4
	bne	a5,zero,.L6
	.loc 1 65 9 is_stmt 1
	.loc 1 65 16 is_stmt 0
	li	a5,-65536
	addi	a5,a5,1151
	and	a4,a4,a5
.LVL20:
.L7:
	.loc 1 69 5 is_stmt 1
	.loc 1 69 8 is_stmt 0
	lbu	a2,7(s0)
	li	a3,1
	.loc 1 72 16
	andi	a5,a4,-65
	.loc 1 69 8
	bne	a2,a3,.L9
	.loc 1 70 9 is_stmt 1
	.loc 1 70 16 is_stmt 0
	ori	a5,a4,64
.LVL21:
.L9:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 19 is_stmt 0
	lbu	a4,5(s0)
	.loc 1 76 5
	li	a3,2
	beq	a4,a3,.L10
	bgtu	a4,a3,.L11
	bne	a4,zero,.L19
	.loc 1 79 13 is_stmt 1
	.loc 1 79 20 is_stmt 0
	andi	a5,a5,-17
.LVL22:
	.loc 1 80 13 is_stmt 1
	.loc 1 80 20 is_stmt 0
	ori	a5,a5,32
.LVL23:
	.loc 1 81 13 is_stmt 1
	j	.L15
.LVL24:
.L2:
	.loc 1 34 9
	.loc 1 34 16 is_stmt 0
	li	a4,-4096
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL25:
	j	.L3
.LVL26:
.L6:
	.loc 1 67 9 is_stmt 1
	.loc 1 61 12 is_stmt 0
	li	a5,-65536
	addi	a5,a5,1279
	and	a4,a4,a5
.LVL27:
	.loc 1 67 16
	ori	a4,a4,128
.LVL28:
	j	.L7
.LVL29:
.L11:
	.loc 1 76 5
	li	a3,3
	beq	a4,a3,.L14
.L15:
	.loc 1 102 5 is_stmt 1
.LVL30:
	.loc 1 103 5
	.loc 1 103 22 is_stmt 0
	lbu	a4,6(s0)
	.loc 1 103 12
	andi	a5,a5,-16
.LVL31:
	.loc 1 117 12
	addi	a3,s1,128
	.loc 1 103 35
	addi	a4,a4,-1
	.loc 1 103 40
	slli	a4,a4,2
	.loc 1 111 5 is_stmt 1
	.loc 1 112 5
	.loc 1 112 12 is_stmt 0
	or	a5,a5,a4
.LVL32:
	.loc 1 114 5 is_stmt 1
	.loc 1 114 58 is_stmt 0
	sw	a5,0(s1)
	.loc 1 117 5 is_stmt 1
	.loc 1 117 12 is_stmt 0
	lw	a5,0(a3)
.LVL33:
	.loc 1 118 5 is_stmt 1
	.loc 1 119 5
	.loc 1 120 5
	.loc 1 121 5
	.loc 1 127 12 is_stmt 0
	li	a2,-522125312
	addi	a2,a2,-1
	andi	a5,a5,-4
.LVL34:
	.loc 1 121 12
	ori	a5,a5,12
.LVL35:
	.loc 1 122 5 is_stmt 1
	.loc 1 122 59 is_stmt 0
	sw	a5,0(a3)
	.loc 1 125 5 is_stmt 1
	.loc 1 125 12 is_stmt 0
	lw	a5,4(a3)
.LVL36:
	.loc 1 126 5 is_stmt 1
	.loc 1 127 5
	.loc 1 128 52 is_stmt 0
	li	a4,2031616
	.loc 1 129 52
	li	a1,520093696
	.loc 1 127 12
	and	a2,a5,a2
.LVL37:
	.loc 1 128 5 is_stmt 1
	.loc 1 129 5
	.loc 1 128 22 is_stmt 0
	lbu	a5,9(s0)
	.loc 1 128 42
	slli	a5,a5,16
	.loc 1 128 52
	and	a5,a5,a4
	.loc 1 129 22
	lbu	a4,10(s0)
	.loc 1 129 42
	slli	a4,a4,24
	.loc 1 129 52
	and	a4,a4,a1
	.loc 1 129 12
	or	a5,a5,a4
	or	a5,a5,a2
.LVL38:
	.loc 1 130 5 is_stmt 1
	.loc 1 130 59 is_stmt 0
	sw	a5,4(a3)
	.loc 1 133 5 is_stmt 1
	.loc 1 134 8 is_stmt 0
	lbu	a4,4(s0)
	.loc 1 133 12
	lw	a5,0(s1)
.LVL39:
	.loc 1 134 5 is_stmt 1
	.loc 1 134 8 is_stmt 0
	bne	a4,zero,.L16
	.loc 1 135 9 is_stmt 1
.LVL40:
	.loc 1 136 9
	andi	a5,a5,-3
.LVL41:
	.loc 1 136 16 is_stmt 0
	ori	a5,a5,1
.LVL42:
.L17:
	.loc 1 141 5 is_stmt 1
	.loc 1 143 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL43:
	.loc 1 141 58
	sw	a5,0(s1)
	.loc 1 143 1
	lw	s1,4(sp)
	.cfi_restore 9
.LVL44:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL45:
.L19:
	.cfi_restore_state
	.loc 1 84 13 is_stmt 1
	.loc 1 85 13
	.loc 1 85 20 is_stmt 0
	andi	a5,a5,-49
.LVL46:
	.loc 1 86 13 is_stmt 1
	j	.L15
.L10:
	.loc 1 89 13
.LVL47:
	.loc 1 90 13
	.loc 1 90 20 is_stmt 0
	ori	a5,a5,48
.LVL48:
	.loc 1 91 13 is_stmt 1
	j	.L15
.L14:
	.loc 1 94 13
.LVL49:
	.loc 1 95 13
	andi	a5,a5,-33
.LVL50:
	.loc 1 95 20 is_stmt 0
	ori	a5,a5,16
.LVL51:
	.loc 1 96 13 is_stmt 1
	j	.L15
.L16:
	.loc 1 138 9
.LVL52:
	.loc 1 139 9
	andi	a5,a5,-2
.LVL53:
	.loc 1 139 16 is_stmt 0
	ori	a5,a5,2
.LVL54:
	j	.L17
	.cfi_endproc
.LFE5:
	.size	qcc74x_spi_init, .-qcc74x_spi_init
	.section	.text.qcc74x_spi_deinit,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_deinit
	.type	qcc74x_spi_deinit, @function
qcc74x_spi_deinit:
.LFB6:
	.loc 1 146 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 150 5
	.loc 1 152 5
	.loc 1 152 16 is_stmt 0
	lw	a4,4(a0)
	.loc 1 152 12
	lw	a5,0(a4)
.LVL56:
	.loc 1 153 5 is_stmt 1
	.loc 1 154 5
	.loc 1 154 12 is_stmt 0
	andi	a5,a5,-4
.LVL57:
	.loc 1 155 5 is_stmt 1
	.loc 1 155 63 is_stmt 0
	sw	a5,0(a4)
	.loc 1 157 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_spi_deinit, .-qcc74x_spi_deinit
	.section	.text.qcc74x_spi_link_txdma,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_link_txdma
	.type	qcc74x_spi_link_txdma, @function
qcc74x_spi_link_txdma:
.LFB7:
	.loc 1 160 1 is_stmt 1
	.cfi_startproc
.LVL58:
	.loc 1 164 5
	.loc 1 165 5
	.loc 1 167 5
	.loc 1 168 5
	.loc 1 168 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 168 12
	lw	a3,128(a5)
.LVL59:
	.loc 1 169 5 is_stmt 1
	.loc 1 172 16 is_stmt 0
	andi	a4,a3,-2
	.loc 1 169 8
	beq	a1,zero,.L24
	.loc 1 170 9 is_stmt 1
	.loc 1 170 16 is_stmt 0
	ori	a4,a3,1
.LVL60:
.L24:
	.loc 1 174 5 is_stmt 1
	.loc 1 174 59 is_stmt 0
	sw	a4,128(a5)
.LVL61:
	.loc 1 176 1
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_spi_link_txdma, .-qcc74x_spi_link_txdma
	.section	.text.qcc74x_spi_link_rxdma,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_link_rxdma
	.type	qcc74x_spi_link_rxdma, @function
qcc74x_spi_link_rxdma:
.LFB8:
	.loc 1 179 1 is_stmt 1
	.cfi_startproc
.LVL62:
	.loc 1 183 5
	.loc 1 184 5
	.loc 1 186 5
	.loc 1 187 5
	.loc 1 187 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 187 12
	lw	a3,128(a5)
.LVL63:
	.loc 1 188 5 is_stmt 1
	.loc 1 191 16 is_stmt 0
	andi	a4,a3,-3
	.loc 1 188 8
	beq	a1,zero,.L28
	.loc 1 189 9 is_stmt 1
	.loc 1 189 16 is_stmt 0
	ori	a4,a3,2
.LVL64:
.L28:
	.loc 1 193 5 is_stmt 1
	.loc 1 193 59 is_stmt 0
	sw	a4,128(a5)
.LVL65:
	.loc 1 195 1
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_spi_link_rxdma, .-qcc74x_spi_link_rxdma
	.section	.tcm_code../drivers/lhal/src/qcc74x_spi.c198,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_poll_send
	.type	qcc74x_spi_poll_send, @function
qcc74x_spi_poll_send:
.LFB9:
	.loc 1 199 1 is_stmt 1
	.cfi_startproc
.LVL66:
	.loc 1 203 5
	.loc 1 203 14 is_stmt 0
	lw	a4,4(a0)
.LVL67:
	.loc 1 204 5 is_stmt 1
	.loc 1 205 5
	.loc 1 235 5
	.loc 1 242 8 is_stmt 0
	li	a3,3
	.loc 1 235 59
	sw	a1,136(a4)
	.loc 1 240 5 is_stmt 1
	.loc 1 240 12 is_stmt 0
	lw	a5,0(a4)
.LVL68:
	.loc 1 241 5 is_stmt 1
	.loc 1 241 52 is_stmt 0
	extu	a5,a5,2+2-1,2
.LVL69:
	.loc 1 241 13
	addi	a5,a5,1
.LVL70:
	.loc 1 242 5 is_stmt 1
	.loc 1 242 8 is_stmt 0
	bne	a5,a3,.L32
	.loc 1 243 20
	li	a5,4
.LVL71:
.L32:
	.loc 1 247 5 is_stmt 1 discriminator 1
	.loc 1 248 9 discriminator 1
	.loc 1 248 16 is_stmt 0 discriminator 1
	lw	a3,132(a4)
.LVL72:
	.loc 1 249 9 is_stmt 1 discriminator 1
	.loc 1 250 13 discriminator 1
	.loc 1 250 5 is_stmt 0 discriminator 1
	extu	a3,a3,8+6-1,8
.LVL73:
	bltu	a3,a5,.L32
	.loc 1 260 5 is_stmt 1
	.loc 1 260 12 is_stmt 0
	lw	a0,140(a4)
.LVL74:
	.loc 1 262 5 is_stmt 1
	.loc 1 264 1 is_stmt 0
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_spi_poll_send, .-qcc74x_spi_poll_send
	.section	.tcm_code../drivers/lhal/src/qcc74x_spi.c267,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_poll_exchange
	.type	qcc74x_spi_poll_exchange, @function
qcc74x_spi_poll_exchange:
.LFB10:
	.loc 1 268 1 is_stmt 1
	.cfi_startproc
.LVL75:
	.loc 1 272 5
	.loc 1 273 5
	.loc 1 273 14 is_stmt 0
	lw	t1,4(a0)
.LVL76:
	.loc 1 274 5 is_stmt 1
	.loc 1 275 5
	.loc 1 278 5
	.loc 1 280 8 is_stmt 0
	li	a5,3
	.loc 1 278 12
	lw	a0,0(t1)
.LVL77:
	.loc 1 279 5 is_stmt 1
	.loc 1 279 44 is_stmt 0
	extu	a0,a0,2+2-1,2
.LVL78:
	.loc 1 279 16
	addi	a0,a0,1
.LVL79:
	.loc 1 280 5 is_stmt 1
	.loc 1 280 8 is_stmt 0
	bne	a0,a5,.L35
	.loc 1 281 20
	li	a0,4
.LVL80:
.L35:
	.loc 1 284 5 is_stmt 1
	.loc 1 315 12 is_stmt 0
	lw	a5,128(t1)
	.loc 1 284 12
	divu	a3,a3,a0
.LVL81:
	.loc 1 285 5 is_stmt 1
	.loc 1 315 5
	.loc 1 316 5
	.loc 1 317 5
	.loc 1 321 58 is_stmt 0
	addi	t3,t1,132
	.loc 1 317 12
	ori	a5,a5,12
.LVL82:
	.loc 1 318 5 is_stmt 1
	.loc 1 318 59 is_stmt 0
	sw	a5,128(t1)
	.loc 1 321 5 is_stmt 1
	.loc 1 321 12 is_stmt 0
	lw	a5,132(t1)
.LVL83:
	.loc 1 323 5 is_stmt 1
	.loc 1 329 5
	.loc 1 323 43 is_stmt 0
	andi	a5,a5,63
.LVL84:
	.loc 1 323 52
	divu	a5,a5,a0
	.loc 1 329 43
	sgtu	a4,a5,a3
	mvnez	a5, a3, a4
	.loc 1 329 14
	andi	a4,a5,0xff
.LVL85:
	.loc 1 330 5 is_stmt 1
	.loc 1 330 12 is_stmt 0
	sub	a5,a3,a5
.LVL86:
	.loc 1 331 5 is_stmt 1
	.loc 1 331 8 is_stmt 0
	beq	a1,zero,.L83
	.loc 1 334 13
	li	a6,2
	li	a7,4
	li	t4,1
.L37:
	.loc 1 333 16 is_stmt 1 discriminator 1
	.loc 1 333 9 is_stmt 0 discriminator 1
	bne	a4,zero,.L42
.L43:
	.loc 1 380 13
	li	t4,2
	.loc 1 408 83
	li	a7,-1
	.loc 1 380 13
	li	t5,4
	li	t6,1
	j	.L45
.L83:
	.loc 1 357 67
	li	a6,-1
.L38:
	.loc 1 356 16 is_stmt 1 discriminator 1
	.loc 1 356 9 is_stmt 0 discriminator 1
	beq	a4,zero,.L43
	.loc 1 357 13 is_stmt 1 discriminator 2
	.loc 1 356 38 is_stmt 0 discriminator 2
	addi	a4,a4,-1
.LVL87:
	.loc 1 357 67 discriminator 2
	sw	a6,136(t1)
	.loc 1 356 30 is_stmt 1 discriminator 2
	.loc 1 356 38 is_stmt 0 discriminator 2
	andi	a4,a4,0xff
.LVL88:
	j	.L38
.L42:
	.loc 1 334 13 is_stmt 1
	beq	a0,a6,.L39
	beq	a0,a7,.L40
	bne	a0,t4,.L41
	.loc 1 336 21
	.loc 1 336 28 is_stmt 0
	lbuia	t5,(a1),1,0
.LVL89:
	.loc 1 337 21 is_stmt 1
.L84:
	.loc 1 347 21
	.loc 1 347 75 is_stmt 0
	sw	t5,136(t1)
	.loc 1 348 21 is_stmt 1
.LVL90:
	.loc 1 349 21
.L41:
	.loc 1 333 30
	.loc 1 333 38 is_stmt 0
	addi	a4,a4,-1
.LVL91:
	andi	a4,a4,0xff
.LVL92:
	j	.L37
.L39:
	.loc 1 341 21 is_stmt 1
	.loc 1 341 28 is_stmt 0
	lhuia	t5,(a1),2,0
.LVL93:
	.loc 1 342 21 is_stmt 1
	j	.L84
.LVL94:
.L40:
	.loc 1 346 21
	.loc 1 346 28 is_stmt 0
	lwia	t5,(a1),4,0
.LVL95:
	j	.L84
.LVL96:
.L61:
	.loc 1 364 9 is_stmt 1
	.loc 1 364 16 is_stmt 0
	lw	a4,0(t3)
.LVL97:
	.loc 1 367 9 is_stmt 1
	.loc 1 367 47 is_stmt 0
	extu	a4,a4,8+6-1,8
.LVL98:
	.loc 1 371 9 is_stmt 1
	.loc 1 371 12 is_stmt 0
	bgtu	a0,a4,.L45
	.loc 1 372 13 is_stmt 1
	.loc 1 367 56 is_stmt 0
	divu	a4,a4,a0
.LVL99:
	.loc 1 372 51
	sgtu	a6,a4,a3
	mvnez	a4, a3, a6
.LVL100:
	.loc 1 372 22
	andi	a6,a4,0xff
.LVL101:
	.loc 1 373 13 is_stmt 1
	.loc 1 373 20 is_stmt 0
	sub	a3,a3,a4
.LVL102:
	.loc 1 378 16 is_stmt 1
.L59:
	.loc 1 379 13
	.loc 1 379 20 is_stmt 0
	lw	a4,140(t1)
.LVL103:
	.loc 1 380 13 is_stmt 1
	beq	a0,t4,.L47
	beq	a0,t5,.L48
	bne	a0,t6,.L49
	.loc 1 382 21
	.loc 1 382 24 is_stmt 0
	beq	a2,zero,.L50
	.loc 1 383 25 is_stmt 1
	.loc 1 383 50 is_stmt 0
	sbia	a4,(a2),1,0
.LVL104:
	.loc 1 384 25 is_stmt 1
.L50:
	.loc 1 386 21
	.loc 1 386 24 is_stmt 0
	beq	a5,zero,.L49
	.loc 1 387 25 is_stmt 1
	.loc 1 387 28 is_stmt 0
	beq	a1,zero,.L57
	.loc 1 388 29 is_stmt 1
	.loc 1 388 36 is_stmt 0
	lbuia	a4,(a1),1,0
.LVL105:
	.loc 1 389 29 is_stmt 1
.L85:
	.loc 1 421 29
	.loc 1 421 83 is_stmt 0
	sw	a4,136(t1)
	.loc 1 422 29 is_stmt 1
.LVL106:
.L58:
	.loc 1 426 25
	.loc 1 426 31 is_stmt 0
	addi	a5,a5,-1
.LVL107:
.L49:
	.loc 1 378 30 is_stmt 1
	.loc 1 378 38 is_stmt 0
	addi	a6,a6,-1
.LVL108:
	andi	a6,a6,0xff
.LVL109:
	.loc 1 378 16 is_stmt 1
	.loc 1 378 9 is_stmt 0
	bne	a6,zero,.L59
.LVL110:
.L45:
	.loc 1 362 12 is_stmt 1
	.loc 1 362 5 is_stmt 0
	bne	a3,zero,.L61
	.loc 1 434 5 is_stmt 1
	.loc 1 436 1 is_stmt 0
	li	a0,0
.LVL111:
	ret
.LVL112:
.L47:
	.loc 1 398 21 is_stmt 1
	.loc 1 398 24 is_stmt 0
	beq	a2,zero,.L53
	.loc 1 399 25 is_stmt 1
	.loc 1 399 51 is_stmt 0
	shia	a4,(a2),2,0
.LVL113:
	.loc 1 400 25 is_stmt 1
.L53:
	.loc 1 402 21
	.loc 1 402 24 is_stmt 0
	beq	a5,zero,.L49
	.loc 1 403 25 is_stmt 1
	.loc 1 403 28 is_stmt 0
	beq	a1,zero,.L57
	.loc 1 404 29 is_stmt 1
	.loc 1 404 36 is_stmt 0
	lhuia	a4,(a1),2,0
.LVL114:
	.loc 1 405 29 is_stmt 1
	j	.L85
.LVL115:
.L48:
	.loc 1 414 21
	.loc 1 414 24 is_stmt 0
	beq	a2,zero,.L56
	.loc 1 415 25 is_stmt 1
	.loc 1 415 49 is_stmt 0
	swia	a4,(a2),4,0
.LVL116:
	.loc 1 416 25 is_stmt 1
.L56:
	.loc 1 418 21
	.loc 1 418 24 is_stmt 0
	beq	a5,zero,.L49
	.loc 1 419 25 is_stmt 1
	.loc 1 419 28 is_stmt 0
	beq	a1,zero,.L57
	.loc 1 420 29 is_stmt 1
	.loc 1 420 36 is_stmt 0
	lwia	a4,(a1),4,0
.LVL117:
	j	.L85
.LVL118:
.L57:
	.loc 1 424 29 is_stmt 1
	.loc 1 424 83 is_stmt 0
	sw	a7,136(t1)
	j	.L58
	.cfi_endproc
.LFE10:
	.size	qcc74x_spi_poll_exchange, .-qcc74x_spi_poll_exchange
	.section	.text.qcc74x_spi_txint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_txint_mask
	.type	qcc74x_spi_txint_mask, @function
qcc74x_spi_txint_mask:
.LFB11:
	.loc 1 439 1 is_stmt 1
	.cfi_startproc
.LVL119:
	.loc 1 443 5
	.loc 1 444 5
	.loc 1 446 5
	.loc 1 446 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 446 12
	lw	a3,4(a5)
.LVL120:
	.loc 1 447 5 is_stmt 1
	.loc 1 450 16 is_stmt 0
	andi	a4,a3,-513
	.loc 1 447 8
	beq	a1,zero,.L88
	.loc 1 448 9 is_stmt 1
	.loc 1 448 16 is_stmt 0
	ori	a4,a3,512
.LVL121:
.L88:
	.loc 1 452 5 is_stmt 1
	.loc 1 452 58 is_stmt 0
	sw	a4,4(a5)
.LVL122:
	.loc 1 454 1
	ret
	.cfi_endproc
.LFE11:
	.size	qcc74x_spi_txint_mask, .-qcc74x_spi_txint_mask
	.section	.text.qcc74x_spi_rxint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_rxint_mask
	.type	qcc74x_spi_rxint_mask, @function
qcc74x_spi_rxint_mask:
.LFB12:
	.loc 1 457 1 is_stmt 1
	.cfi_startproc
.LVL123:
	.loc 1 461 5
	.loc 1 462 5
	.loc 1 464 5
	.loc 1 464 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 464 12
	lw	a3,4(a5)
.LVL124:
	.loc 1 465 5 is_stmt 1
	.loc 1 468 16 is_stmt 0
	andi	a4,a3,-1025
	.loc 1 465 8
	beq	a1,zero,.L92
	.loc 1 466 9 is_stmt 1
	.loc 1 466 16 is_stmt 0
	ori	a4,a3,1024
.LVL125:
.L92:
	.loc 1 470 5 is_stmt 1
	.loc 1 470 58 is_stmt 0
	sw	a4,4(a5)
.LVL126:
	.loc 1 472 1
	ret
	.cfi_endproc
.LFE12:
	.size	qcc74x_spi_rxint_mask, .-qcc74x_spi_rxint_mask
	.section	.text.qcc74x_spi_tcint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_tcint_mask
	.type	qcc74x_spi_tcint_mask, @function
qcc74x_spi_tcint_mask:
.LFB13:
	.loc 1 475 1 is_stmt 1
	.cfi_startproc
.LVL127:
	.loc 1 479 5
	.loc 1 480 5
	.loc 1 482 5
	.loc 1 482 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 482 12
	lw	a3,4(a5)
.LVL128:
	.loc 1 483 5 is_stmt 1
	.loc 1 486 16 is_stmt 0
	andi	a4,a3,-257
	.loc 1 483 8
	beq	a1,zero,.L96
	.loc 1 484 9 is_stmt 1
	.loc 1 484 16 is_stmt 0
	ori	a4,a3,256
.LVL129:
.L96:
	.loc 1 488 5 is_stmt 1
	.loc 1 488 58 is_stmt 0
	sw	a4,4(a5)
.LVL130:
	.loc 1 490 1
	ret
	.cfi_endproc
.LFE13:
	.size	qcc74x_spi_tcint_mask, .-qcc74x_spi_tcint_mask
	.section	.text.qcc74x_spi_errint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_errint_mask
	.type	qcc74x_spi_errint_mask, @function
qcc74x_spi_errint_mask:
.LFB14:
	.loc 1 493 1 is_stmt 1
	.cfi_startproc
.LVL131:
	.loc 1 497 5
	.loc 1 498 5
	.loc 1 500 5
	.loc 1 500 58 is_stmt 0
	lw	a3,4(a0)
	.loc 1 500 12
	lw	a5,4(a3)
.LVL132:
	.loc 1 501 5 is_stmt 1
	.loc 1 501 8 is_stmt 0
	beq	a1,zero,.L99
	.loc 1 502 9 is_stmt 1
.LVL133:
	.loc 1 503 9
	.loc 1 504 9
	.loc 1 504 16 is_stmt 0
	li	a4,16384
	addi	a4,a4,-2048
	or	a5,a5,a4
.LVL134:
.L100:
	.loc 1 510 5 is_stmt 1
	.loc 1 510 58 is_stmt 0
	sw	a5,4(a3)
.LVL135:
	.loc 1 512 1
	ret
.L99:
	.loc 1 506 9 is_stmt 1
.LVL136:
	.loc 1 507 9
	.loc 1 508 9
	.loc 1 508 16 is_stmt 0
	li	a4,-16384
	addi	a4,a4,2047
	and	a5,a5,a4
.LVL137:
	j	.L100
	.cfi_endproc
.LFE14:
	.size	qcc74x_spi_errint_mask, .-qcc74x_spi_errint_mask
	.section	.text.qcc74x_spi_get_intstatus,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_get_intstatus
	.type	qcc74x_spi_get_intstatus, @function
qcc74x_spi_get_intstatus:
.LFB15:
	.loc 1 515 1 is_stmt 1
	.cfi_startproc
.LVL138:
	.loc 1 519 5
	.loc 1 520 5
	.loc 1 521 5
	.loc 1 523 5
	.loc 1 524 5
	.loc 1 524 62 is_stmt 0
	lw	a5,4(a0)
	.loc 1 524 19
	lw	a4,4(a5)
.LVL139:
	.loc 1 525 5 is_stmt 1
	.loc 1 525 17 is_stmt 0
	lw	a0,4(a5)
.LVL140:
	.loc 1 526 5 is_stmt 1
	.loc 1 525 14 is_stmt 0
	extu	a0,a0,8+5-1,8
.LVL141:
	.loc 1 526 26
	not	a0,a0
	.loc 1 526 24
	and	a0,a0,a4
	.loc 1 528 1
	andi	a0,a0,31
	ret
	.cfi_endproc
.LFE15:
	.size	qcc74x_spi_get_intstatus, .-qcc74x_spi_get_intstatus
	.section	.text.qcc74x_spi_int_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_int_clear
	.type	qcc74x_spi_int_clear, @function
qcc74x_spi_int_clear:
.LFB16:
	.loc 1 531 1 is_stmt 1
	.cfi_startproc
.LVL142:
	.loc 1 535 5
	.loc 1 536 5
	.loc 1 538 5
	.loc 1 539 5
	.loc 1 539 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 539 12
	lw	a5,4(a4)
.LVL143:
	.loc 1 540 5 is_stmt 1
	.loc 1 540 12 is_stmt 0
	or	a5,a5,a1
.LVL144:
	.loc 1 541 5 is_stmt 1
	.loc 1 541 58 is_stmt 0
	sw	a5,4(a4)
.LVL145:
	.loc 1 543 1
	ret
	.cfi_endproc
.LFE16:
	.size	qcc74x_spi_int_clear, .-qcc74x_spi_int_clear
	.section	.text.qcc74x_spi_isbusy,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_isbusy
	.type	qcc74x_spi_isbusy, @function
qcc74x_spi_isbusy:
.LFB17:
	.loc 1 546 1 is_stmt 1
	.cfi_startproc
.LVL146:
	.loc 1 550 5
	.loc 1 551 5
	.loc 1 553 5
	.loc 1 553 14 is_stmt 0
	lw	a4,4(a0)
.LVL147:
	.loc 1 556 5 is_stmt 1
	.loc 1 556 12 is_stmt 0
	lw	a5,132(a4)
.LVL148:
	.loc 1 558 5 is_stmt 1
	.loc 1 558 43 is_stmt 0
	andi	a5,a5,32
.LVL149:
	.loc 1 558 8
	beq	a5,zero,.L105
	.loc 1 568 5 is_stmt 1
	.loc 1 568 12 is_stmt 0
	lw	a0,8(a4)
.LVL150:
	.loc 1 569 5 is_stmt 1
	.loc 1 569 8 is_stmt 0
	snez	a0,a0
.LVL151:
	ret
.LVL152:
.L105:
	.loc 1 559 15
	li	a0,1
.LVL153:
	.loc 1 575 1
	ret
	.cfi_endproc
.LFE17:
	.size	qcc74x_spi_isbusy, .-qcc74x_spi_isbusy
	.section	.text.qcc74x_spi_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_spi_feature_control
	.type	qcc74x_spi_feature_control, @function
qcc74x_spi_feature_control:
.LFB18:
	.loc 1 578 1 is_stmt 1
	.cfi_startproc
.LVL154:
	.loc 1 582 5
	.loc 1 583 5
	.loc 1 584 5
	.loc 1 585 5
	.loc 1 587 5
	.loc 1 578 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 589 5
	li	s2,10
	.loc 1 587 14
	lw	s0,4(a0)
.LVL155:
	.loc 1 589 5 is_stmt 1
	beq	a1,s2,.L107
	mv	s1,a1
	bgt	a1,s2,.L108
	li	a5,5
	beq	a1,a5,.L109
	bgt	a1,a5,.L110
	li	a5,3
	beq	a1,a5,.L111
	bgt	a1,a5,.L112
	li	a5,1
	beq	a1,a5,.L113
	li	a5,2
	beq	a1,a5,.L114
.L170:
	li	a0,-1
.LVL156:
.L106:
	.loc 1 853 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL157:
.L112:
	.cfi_restore_state
	.loc 1 589 5
	li	a5,4
	bne	a1,a5,.L170
	.loc 1 620 13 is_stmt 1
	.loc 1 620 20 is_stmt 0
	lw	a5,128(s0)
.LVL158:
	.loc 1 621 13 is_stmt 1
	.loc 1 621 20 is_stmt 0
	ori	a5,a5,8
.LVL159:
	j	.L172
.L110:
	.loc 1 589 5
	li	a5,8
	beq	a1,a5,.L117
	li	a5,9
	beq	a1,a5,.L118
	li	a5,6
	beq	a1,a5,.L119
	li	a5,7
	bne	a1,a5,.L170
	.loc 1 654 13 is_stmt 1
	.loc 1 654 20 is_stmt 0
	lw	a5,0(s0)
.LVL160:
	.loc 1 655 13 is_stmt 1
	li	a4,2
	beq	a2,a4,.L135
	bgtu	a2,a4,.L136
	bne	a2,zero,.L162
	.loc 1 658 21
	.loc 1 658 28 is_stmt 0
	andi	a5,a5,-17
.LVL161:
	.loc 1 659 21 is_stmt 1
	.loc 1 659 28 is_stmt 0
	ori	a5,a5,32
.LVL162:
	.loc 1 660 21 is_stmt 1
	j	.L154
.LVL163:
.L108:
	.loc 1 589 5 is_stmt 0
	li	a5,16
	beq	a1,a5,.L121
	bgt	a1,a5,.L122
	li	a5,14
	beq	a1,a5,.L123
	bgt	a1,a5,.L124
	li	a5,11
	beq	a1,a5,.L125
	li	a5,12
	bne	a1,a5,.L170
	.loc 1 736 13 is_stmt 1
	.loc 1 736 20 is_stmt 0
	lw	a0,0(s0)
.LVL164:
	.loc 1 737 13 is_stmt 1
	.loc 1 737 16 is_stmt 0
	extu	a0,a0,6+1-1,6
.LVL165:
	j	.L106
.LVL166:
.L124:
	.loc 1 589 5
	li	a5,15
	bne	a1,a5,.L170
	.loc 1 756 13 is_stmt 1
	.loc 1 756 20 is_stmt 0
	lw	a0,0(s0)
.LVL167:
	.loc 1 757 13 is_stmt 1
	.loc 1 757 16 is_stmt 0
	extu	a0,a0,7+1-1,7
.LVL168:
	j	.L106
.LVL169:
.L122:
	.loc 1 589 5
	li	a5,23
	beq	a1,a5,.L128
	bgt	a1,a5,.L129
	li	a5,17
	beq	a1,a5,.L130
	li	a5,22
	bne	a1,a5,.L170
	.loc 1 646 13 is_stmt 1
	.loc 1 646 20 is_stmt 0
	lw	a5,0(s0)
.LVL170:
	.loc 1 647 13 is_stmt 1
	.loc 1 647 20 is_stmt 0
	andi	a5,a5,-257
.LVL171:
	j	.L171
.L129:
	.loc 1 589 5
	li	a5,24
	bne	a1,a5,.L170
	.loc 1 838 13 is_stmt 1
	.loc 1 838 20 is_stmt 0
	lw	a0,0(s0)
.LVL172:
	.loc 1 839 13 is_stmt 1
	.loc 1 839 16 is_stmt 0
	not	a0,a0
.LVL173:
	andi	a0,a0,1
.LVL174:
	j	.L106
.LVL175:
.L113:
	.loc 1 592 13 is_stmt 1
	.loc 1 592 20 is_stmt 0
	lw	a5,128(s0)
.LVL176:
	.loc 1 593 13 is_stmt 1
	.loc 1 594 13
	.loc 1 599 28 is_stmt 0
	addi	a2,a2,-1
.LVL177:
	.loc 1 599 33
	slli	a2,a2,2
.LVL178:
	.loc 1 594 20
	ori	a5,a5,12
.LVL179:
	.loc 1 595 13 is_stmt 1
	.loc 1 595 67 is_stmt 0
	sw	a5,128(s0)
	.loc 1 597 13 is_stmt 1
	.loc 1 597 20 is_stmt 0
	lw	a5,0(s0)
.LVL180:
	.loc 1 598 13 is_stmt 1
	.loc 1 598 20 is_stmt 0
	andi	a5,a5,-13
.LVL181:
	.loc 1 599 13 is_stmt 1
	.loc 1 599 20 is_stmt 0
	or	a2,a2,a5
.LVL182:
	.loc 1 600 13 is_stmt 1
	.loc 1 600 66 is_stmt 0
	sw	a2,0(s0)
	.loc 1 601 13 is_stmt 1
.LVL183:
.L168:
	.loc 1 836 13
	.loc 1 582 9 is_stmt 0
	li	a0,0
	.loc 1 836 13
	j	.L106
.LVL184:
.L114:
	.loc 1 605 13 is_stmt 1
	.loc 1 605 20 is_stmt 0
	lw	a5,0(s0)
.LVL185:
	.loc 1 606 13 is_stmt 1
	.loc 1 607 13
	.loc 1 608 13
	.loc 1 607 20 is_stmt 0
	extu	a5,a5,2+2-1,2
.LVL186:
	.loc 1 608 30
	sw	a5,0(a2)
	.loc 1 609 13 is_stmt 1
	j	.L168
.L111:
	.loc 1 613 13
	.loc 1 613 20 is_stmt 0
	lw	a5,128(s0)
.LVL187:
	.loc 1 614 13 is_stmt 1
	.loc 1 614 20 is_stmt 0
	ori	a5,a5,4
.LVL188:
	.loc 1 615 13 is_stmt 1
.L172:
	.loc 1 622 13
	.loc 1 622 67 is_stmt 0
	sw	a5,128(s0)
	.loc 1 623 13 is_stmt 1
	j	.L168
.LVL189:
.L109:
	.loc 1 627 13
	.loc 1 627 20 is_stmt 0
	lw	a4,0(s0)
.LVL190:
	.loc 1 628 13 is_stmt 1
	.loc 1 631 24 is_stmt 0
	andi	a5,a4,-513
	.loc 1 628 16
	beq	a2,zero,.L154
	.loc 1 629 17 is_stmt 1
	.loc 1 629 24 is_stmt 0
	ori	a5,a4,512
.LVL191:
	.loc 1 633 13 is_stmt 1
.L154:
	.loc 1 835 13
	.loc 1 835 66 is_stmt 0
	sw	a5,0(s0)
	j	.L168
.LVL192:
.L119:
	.loc 1 638 13 is_stmt 1
	.loc 1 638 20 is_stmt 0
	lw	a5,0(s0)
.LVL193:
	.loc 1 639 13 is_stmt 1
	.loc 1 639 20 is_stmt 0
	ori	a5,a5,256
.LVL194:
	.loc 1 640 13 is_stmt 1
.L171:
	.loc 1 648 13
	.loc 1 648 67 is_stmt 0
	sw	a2,24(s0)
	.loc 1 649 13 is_stmt 1
	j	.L154
.L136:
	li	a4,3
	bne	a2,a4,.L154
	.loc 1 673 21
.LVL195:
	.loc 1 674 21
	andi	a5,a5,-33
.LVL196:
	.loc 1 674 28 is_stmt 0
	ori	a5,a5,16
.LVL197:
	.loc 1 675 21 is_stmt 1
	.loc 1 679 13
	.loc 1 675 21 is_stmt 0
	j	.L154
.L162:
	.loc 1 663 21 is_stmt 1
.LVL198:
	.loc 1 664 21
	.loc 1 664 28 is_stmt 0
	andi	a5,a5,-49
.LVL199:
	.loc 1 665 21 is_stmt 1
	j	.L154
.L135:
	.loc 1 668 21
.LVL200:
	.loc 1 669 21
	.loc 1 669 28 is_stmt 0
	ori	a5,a5,48
.LVL201:
	.loc 1 670 21 is_stmt 1
	j	.L154
.LVL202:
.L117:
	.loc 1 684 13
	.loc 1 684 20 is_stmt 0
	lw	a0,0(s0)
.LVL203:
	.loc 1 685 13 is_stmt 1
	.loc 1 685 24 is_stmt 0
	andi	a5,a0,16
	.loc 1 685 16
	beq	a5,zero,.L141
	.loc 1 686 17 is_stmt 1
	.loc 1 686 28 is_stmt 0
	andi	a0,a0,32
.LVL204:
	.loc 1 689 25
	seqz	a0,a0
	addi	a0,a0,2
	j	.L106
.LVL205:
.L141:
	.loc 1 692 17 is_stmt 1
	.loc 1 692 20 is_stmt 0
	xori	a0,a0,32
.LVL206:
	extu	a0,a0,5+1-1,5
.LVL207:
	j	.L106
.LVL208:
.L118:
	.loc 1 703 20
	lbu	a1,9(a0)
	li	a0,6
.LVL209:
	sw	a2,12(sp)
	.loc 1 703 13 is_stmt 1
	.loc 1 703 20 is_stmt 0
	call	qcc74x_clk_get_peripheral_clock
.LVL210:
	.loc 1 703 65
	srli	a5,a0,1
	.loc 1 703 69
	mul	a5,a5,s2
	.loc 1 703 74
	lw	a2,12(sp)
	divu	a5,a5,a2
	.loc 1 704 37
	li	a2,0
	.loc 1 703 80
	addi	a5,a5,5
.LVL211:
	.loc 1 704 13 is_stmt 1
	.loc 1 704 37 is_stmt 0
	bleu	a5,s1,.L142
	.loc 1 703 17 discriminator 1
	divu	a2,a5,s2
	.loc 1 704 37 discriminator 1
	addi	a2,a2,-1
.L142:
.LVL212:
	.loc 1 705 13 is_stmt 1 discriminator 4
	.loc 1 705 17 is_stmt 0 discriminator 4
	li	a5,255
	bleu	a2,a5,.L143
	li	a2,255
.LVL213:
.L143:
	.loc 1 707 13 is_stmt 1 discriminator 4
	.loc 1 708 13 discriminator 4
	.loc 1 709 13 discriminator 4
	.loc 1 708 27 is_stmt 0 discriminator 4
	slli	a5,a2,16
.LVL214:
	.loc 1 709 27 discriminator 4
	slli	a4,a2,24
	.loc 1 709 20 discriminator 4
	or	a5,a5,a4
.LVL215:
	.loc 1 710 13 is_stmt 1 discriminator 4
	.loc 1 710 20 is_stmt 0 discriminator 4
	or	a5,a2,a5
.LVL216:
	.loc 1 711 13 is_stmt 1 discriminator 4
	.loc 1 711 27 is_stmt 0 discriminator 4
	slli	a2,a2,8
.LVL217:
	.loc 1 711 20 discriminator 4
	or	a2,a2,a5
.LVL218:
	.loc 1 712 13 is_stmt 1 discriminator 4
	.loc 1 712 67 is_stmt 0 discriminator 4
	sw	a2,16(s0)
	.loc 1 713 13 is_stmt 1 discriminator 4
	j	.L168
.LVL219:
.L107:
	.loc 1 717 13
	.loc 1 717 20 is_stmt 0
	lw	a5,16(s0)
.LVL220:
	.loc 1 718 13 is_stmt 1
	.loc 1 721 19 is_stmt 0
	lbu	a1,9(a0)
.LVL221:
	li	a0,6
.LVL222:
	.loc 1 718 17
	extu	s0,a5,16+8-1,16
.LVL223:
	.loc 1 719 13 is_stmt 1
	.loc 1 719 47 is_stmt 0
	srli	a5,a5,24
.LVL224:
	.loc 1 719 17
	add	s0,a5,s0
.LVL225:
	.loc 1 721 13 is_stmt 1
	.loc 1 721 19 is_stmt 0
	call	qcc74x_clk_get_peripheral_clock
.LVL226:
	.loc 1 721 64
	divu	a0,a0,s0
.LVL227:
	.loc 1 722 13 is_stmt 1
	j	.L106
.LVL228:
.L125:
	.loc 1 726 13
	.loc 1 726 20 is_stmt 0
	lw	a4,0(s0)
.LVL229:
	.loc 1 727 13 is_stmt 1
	.loc 1 727 16 is_stmt 0
	li	a3,1
	.loc 1 730 24
	andi	a5,a4,-65
	.loc 1 727 16
	bne	a2,a3,.L154
	.loc 1 728 17 is_stmt 1
	.loc 1 728 24 is_stmt 0
	ori	a5,a4,64
.LVL230:
	.loc 1 732 13 is_stmt 1
	j	.L154
.LVL231:
.L123:
	.loc 1 746 13
	.loc 1 746 20 is_stmt 0
	lw	a4,0(s0)
.LVL232:
	.loc 1 747 13 is_stmt 1
	.loc 1 750 24 is_stmt 0
	ori	a5,a4,128
	.loc 1 747 16
	bne	a2,zero,.L154
	.loc 1 748 17 is_stmt 1
	.loc 1 748 24 is_stmt 0
	andi	a5,a4,-129
.LVL233:
	.loc 1 752 13 is_stmt 1
	j	.L154
.LVL234:
.L121:
	.loc 1 766 13
	.loc 1 766 20 is_stmt 0
	lw	a5,0(s0)
.LVL235:
	.loc 1 767 13 is_stmt 1
	.loc 1 768 13
	.loc 1 768 20 is_stmt 0
	li	a4,-65536
	addi	a4,a4,2047
	and	a5,a5,a4
.LVL236:
	.loc 1 769 13 is_stmt 1
	.loc 1 769 16 is_stmt 0
	beq	a2,zero,.L154
	.loc 1 770 17 is_stmt 1
	.loc 1 770 42 is_stmt 0
	li	a4,61440
	.loc 1 770 32
	slli	a2,a2,12
.LVL237:
	.loc 1 770 42
	and	a2,a2,a4
	.loc 1 771 24
	li	a4,4096
	.loc 1 770 24
	or	a5,a2,a5
.LVL238:
	.loc 1 771 17 is_stmt 1
	.loc 1 771 24 is_stmt 0
	addi	a4,a4,-2048
	or	a5,a5,a4
.LVL239:
	.loc 1 773 13 is_stmt 1
	j	.L154
.LVL240:
.L130:
	.loc 1 778 13
	.loc 1 778 20 is_stmt 0
	lw	a4,0(s0)
.LVL241:
	.loc 1 779 13 is_stmt 1
	.loc 1 782 24 is_stmt 0
	andi	a5,a4,-1025
	.loc 1 779 16
	beq	a2,zero,.L154
	.loc 1 780 17 is_stmt 1
	.loc 1 780 24 is_stmt 0
	ori	a5,a4,1024
.LVL242:
	.loc 1 784 13 is_stmt 1
	j	.L154
.LVL243:
.L128:
	.loc 1 818 13
	.loc 1 818 20 is_stmt 0
	li	a5,536870912
	lw	a5,1296(a5)
.LVL244:
	.loc 1 819 13 is_stmt 1
	.loc 1 819 16 is_stmt 0
	bne	a2,zero,.L151
	.loc 1 820 17 is_stmt 1
	.loc 1 820 24 is_stmt 0
	li	a4,4096
	or	a5,a5,a4
.LVL245:
.L152:
	.loc 1 824 13 is_stmt 1
	.loc 1 824 60 is_stmt 0
	li	a4,536870912
	sw	a5,1296(a4)
	.loc 1 827 13 is_stmt 1
	.loc 1 827 20 is_stmt 0
	lw	a5,0(s0)
.LVL246:
	.loc 1 828 13 is_stmt 1
	.loc 1 828 16 is_stmt 0
	bne	a2,zero,.L153
	.loc 1 829 17 is_stmt 1
.LVL247:
	.loc 1 830 17
	andi	a5,a5,-3
.LVL248:
	.loc 1 830 24 is_stmt 0
	ori	a5,a5,1
.LVL249:
	j	.L154
.L151:
	.loc 1 822 17 is_stmt 1
	.loc 1 822 24 is_stmt 0
	li	a4,-4096
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL250:
	j	.L152
.L153:
	.loc 1 832 17 is_stmt 1
.LVL251:
	.loc 1 833 17
	andi	a5,a5,-2
.LVL252:
	.loc 1 833 24 is_stmt 0
	ori	a5,a5,2
.LVL253:
	j	.L154
	.cfi_endproc
.LFE18:
	.size	qcc74x_spi_feature_control, .-qcc74x_spi_feature_control
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_spi.h"
	.file 7 "./drivers/lhal/include/qcc74x_clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x786
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF64
	.byte	0xc
	.4byte	.LASF65
	.4byte	.LASF66
	.4byte	.Ldebug_ranges0+0
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
	.4byte	.LASF4
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
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x59
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x73
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF12
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x4d
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x67
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF18
	.byte	0x6
	.4byte	0xd9
	.byte	0x7
	.byte	0x4
	.4byte	0xe0
	.byte	0x7
	.byte	0x4
	.4byte	0xf1
	.byte	0x8
	.byte	0x9
	.4byte	.LASF25
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x15b
	.byte	0xa
	.4byte	.LASF19
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0xe5
	.byte	0
	.byte	0xa
	.4byte	.LASF20
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0xa
	.4byte	.LASF21
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0xb
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0x9b
	.byte	0x9
	.byte	0xa
	.4byte	.LASF22
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0x9b
	.byte	0xa
	.byte	0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0x9b
	.byte	0xb
	.byte	0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0xd7
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	.LASF26
	.byte	0xc
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x1d1
	.byte	0xa
	.4byte	.LASF27
	.byte	0x6
	.byte	0xb6
	.byte	0xe
	.4byte	0xb3
	.byte	0
	.byte	0xa
	.4byte	.LASF28
	.byte	0x6
	.byte	0xb7
	.byte	0xd
	.4byte	0x9b
	.byte	0x4
	.byte	0xa
	.4byte	.LASF29
	.byte	0x6
	.byte	0xb8
	.byte	0xd
	.4byte	0x9b
	.byte	0x5
	.byte	0xa
	.4byte	.LASF30
	.byte	0x6
	.byte	0xb9
	.byte	0xd
	.4byte	0x9b
	.byte	0x6
	.byte	0xa
	.4byte	.LASF31
	.byte	0x6
	.byte	0xba
	.byte	0xd
	.4byte	0x9b
	.byte	0x7
	.byte	0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0xbb
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0xbc
	.byte	0xd
	.4byte	0x9b
	.byte	0x9
	.byte	0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0xbd
	.byte	0xd
	.4byte	0x9b
	.byte	0xa
	.byte	0
	.byte	0x6
	.4byte	0x15b
	.byte	0xc
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x241
	.byte	0x5
	.4byte	0x88
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x28b
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x241
	.byte	0x38
	.4byte	0x28b
	.4byte	.LLST35
	.byte	0xd
	.string	"cmd"
	.byte	0x1
	.2byte	0x241
	.byte	0x41
	.4byte	0x88
	.4byte	.LLST36
	.byte	0xd
	.string	"arg"
	.byte	0x1
	.2byte	0x241
	.byte	0x4d
	.4byte	0xcb
	.4byte	.LLST37
	.byte	0xe
	.string	"ret"
	.byte	0x1
	.2byte	0x246
	.byte	0x9
	.4byte	0x88
	.4byte	.LLST38
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x247
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST39
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x248
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST40
	.byte	0xe
	.string	"div"
	.byte	0x1
	.2byte	0x249
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST41
	.byte	0x10
	.4byte	.LVL210
	.4byte	0x77c
	.4byte	0x27b
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0x12
	.4byte	.LVL226
	.4byte	0x77c
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xf2
	.byte	0xc
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x221
	.byte	0x5
	.4byte	0x2de
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x2de
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x221
	.byte	0x2f
	.4byte	0x28b
	.4byte	.LLST33
	.byte	0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x226
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x227
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST34
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF38
	.byte	0x14
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x212
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x33b
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.2byte	0x212
	.byte	0x33
	.4byte	0x28b
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x212
	.byte	0x41
	.4byte	0xb3
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x217
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST32
	.byte	0x13
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x218
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xc
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x202
	.byte	0xa
	.4byte	0xb3
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x39d
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x202
	.byte	0x3b
	.4byte	0x28b
	.4byte	.LLST29
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x207
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST30
	.byte	0x13
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x208
	.byte	0xe
	.4byte	0xb3
	.byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0xf
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x209
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST31
	.byte	0
	.byte	0x14
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1ec
	.byte	0x6
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f5
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.2byte	0x1ec
	.byte	0x35
	.4byte	0x28b
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1ec
	.byte	0x3e
	.4byte	0x2de
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1f1
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST27
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1f2
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST28
	.byte	0
	.byte	0x14
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x1da
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x44d
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.2byte	0x1da
	.byte	0x34
	.4byte	0x28b
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1da
	.byte	0x3d
	.4byte	0x2de
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1df
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST25
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1e0
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST26
	.byte	0
	.byte	0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x1c8
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x4a5
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.2byte	0x1c8
	.byte	0x34
	.4byte	0x28b
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1c8
	.byte	0x3d
	.4byte	0x2de
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1cd
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST23
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1ce
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST24
	.byte	0
	.byte	0x14
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x1b6
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x4fd
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.2byte	0x1b6
	.byte	0x34
	.4byte	0x28b
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x1b6
	.byte	0x3d
	.4byte	0x2de
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1bb
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST21
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x1bc
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST22
	.byte	0
	.byte	0xc
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x10b
	.byte	0x54
	.4byte	0x88
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x5b0
	.byte	0xd
	.string	"dev"
	.byte	0x1
	.2byte	0x10b
	.byte	0x85
	.4byte	0x28b
	.4byte	.LLST13
	.byte	0x17
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x10b
	.byte	0x96
	.4byte	0xeb
	.4byte	.LLST14
	.byte	0x17
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x10b
	.byte	0xa6
	.4byte	0xd7
	.4byte	.LLST15
	.byte	0x17
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x10b
	.byte	0xb7
	.4byte	0xcb
	.4byte	.LLST16
	.byte	0xf
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x110
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST17
	.byte	0x13
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x111
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x56
	.byte	0xf
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x112
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST18
	.byte	0xf
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x113
	.byte	0xd
	.4byte	0x9b
	.4byte	.LLST19
	.byte	0xf
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x113
	.byte	0x17
	.4byte	0x9b
	.4byte	.LLST20
	.byte	0
	.byte	0x18
	.4byte	.LASF56
	.byte	0x1
	.byte	0xc6
	.byte	0x59
	.4byte	0xb3
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x625
	.byte	0x19
	.string	"dev"
	.byte	0x1
	.byte	0xc6
	.byte	0x86
	.4byte	0x28b
	.4byte	.LLST10
	.byte	0x1a
	.4byte	.LASF57
	.byte	0x1
	.byte	0xc6
	.byte	0x94
	.4byte	0xb3
	.byte	0x1
	.byte	0x5b
	.byte	0x1b
	.4byte	.LASF20
	.byte	0x1
	.byte	0xcb
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0x1c
	.4byte	.LASF35
	.byte	0x1
	.byte	0xcc
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST11
	.byte	0x1c
	.4byte	.LASF54
	.byte	0x1
	.byte	0xcd
	.byte	0xd
	.4byte	0x9b
	.4byte	.LLST12
	.byte	0x1b
	.4byte	.LASF55
	.byte	0x1
	.byte	0xf1
	.byte	0xd
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x1d
	.4byte	.LASF58
	.byte	0x1
	.byte	0xb2
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x678
	.byte	0x1e
	.string	"dev"
	.byte	0x1
	.byte	0xb2
	.byte	0x34
	.4byte	0x28b
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0xb2
	.byte	0x3d
	.4byte	0x2de
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb7
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST8
	.byte	0x1c
	.4byte	.LASF35
	.byte	0x1
	.byte	0xb8
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST9
	.byte	0
	.byte	0x1d
	.4byte	.LASF60
	.byte	0x1
	.byte	0x9f
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x6cb
	.byte	0x1e
	.string	"dev"
	.byte	0x1
	.byte	0x9f
	.byte	0x34
	.4byte	0x28b
	.byte	0x1
	.byte	0x5a
	.byte	0x1a
	.4byte	.LASF59
	.byte	0x1
	.byte	0x9f
	.byte	0x3d
	.4byte	0x2de
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa4
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST6
	.byte	0x1c
	.4byte	.LASF35
	.byte	0x1
	.byte	0xa5
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST7
	.byte	0
	.byte	0x1d
	.4byte	.LASF61
	.byte	0x1
	.byte	0x91
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x700
	.byte	0x1e
	.string	"dev"
	.byte	0x1
	.byte	0x91
	.byte	0x30
	.4byte	0x28b
	.byte	0x1
	.byte	0x5a
	.byte	0x1c
	.4byte	.LASF35
	.byte	0x1
	.byte	0x96
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST5
	.byte	0
	.byte	0x1d
	.4byte	.LASF62
	.byte	0x1
	.byte	0xb
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x776
	.byte	0x19
	.string	"dev"
	.byte	0x1
	.byte	0xb
	.byte	0x2e
	.4byte	0x28b
	.4byte	.LLST0
	.byte	0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0xb
	.byte	0x55
	.4byte	0x776
	.4byte	.LLST1
	.byte	0x1c
	.4byte	.LASF20
	.byte	0x1
	.byte	0x19
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST2
	.byte	0x1c
	.4byte	.LASF35
	.byte	0x1
	.byte	0x1a
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST3
	.byte	0x20
	.string	"div"
	.byte	0x1
	.byte	0x1b
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0x12
	.4byte	.LVL6
	.4byte	0x77c
	.byte	0x11
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x36
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1d1
	.byte	0x21
	.4byte	.LASF67
	.4byte	.LASF67
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
	.byte	0x26
	.byte	0
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
	.byte	0x17
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
	.byte	0x2
	.byte	0x17
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
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x18
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
	.byte	0x1b
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
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x21
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
.LLST35:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL164
	.4byte	.LVL166
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL166
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL167
	.4byte	.LVL169
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL172
	.4byte	.LVL175
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL203
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL203
	.4byte	.LVL208
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL208
	.4byte	.LVL209
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL209
	.4byte	.LVL219
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL219
	.4byte	.LVL222
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL222
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL219
	.4byte	.LVL221
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL221
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x3
	.byte	0x7c
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL178
	.4byte	.LVL184
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL184
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL192
	.4byte	.LVL210-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL210-1
	.4byte	.LVL219
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL219
	.4byte	.LVL226-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL226-1
	.4byte	.LVL228
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL228
	.4byte	.LVL237
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL237
	.4byte	.LVL240
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL240
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST38:
	.4byte	.LVL154
	.4byte	.LVL156
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL227
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL227
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL228
	.4byte	.LFE18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST39:
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL157
	.4byte	.LVL223
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL223
	.4byte	.LVL226-1
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	.LVL228
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST40:
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL160
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x4
	.byte	0x7a
	.byte	0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LVL179
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x34
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL189
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL191
	.4byte	.LVL192
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL193
	.4byte	.LVL195
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL195
	.4byte	.LVL196
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL197
	.4byte	.LVL198
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL198
	.4byte	.LVL199
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xef
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL199
	.4byte	.LVL200
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL201
	.4byte	.LVL202
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL203
	.4byte	.LVL204
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL205
	.4byte	.LVL206
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL206
	.4byte	.LVL207
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x8
	.byte	0x20
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL213
	.4byte	.LVL214
	.2byte	0x5
	.byte	0x7c
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL214
	.4byte	.LVL218
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL218
	.4byte	.LVL219
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL220
	.4byte	.LVL224
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL229
	.4byte	.LVL230
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL230
	.4byte	.LVL231
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL232
	.4byte	.LVL233
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL233
	.4byte	.LVL234
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL235
	.4byte	.LVL236
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0x9f,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL236
	.4byte	.LVL240
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL241
	.4byte	.LVL242
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL242
	.4byte	.LVL243
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL244
	.4byte	.LVL247
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL247
	.4byte	.LVL248
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL249
	.4byte	.LVL251
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL251
	.4byte	.LVL252
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL253
	.4byte	.LFE18
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST41:
	.4byte	.LVL211
	.4byte	.LVL212
	.2byte	0xb
	.byte	0x7f
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
	.4byte	.LVL212
	.4byte	.LVL217
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL223
	.4byte	.LVL228
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL146
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL150
	.4byte	.LVL152
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL153
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST34:
	.4byte	.LVL148
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL142
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL145
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL138
	.4byte	.LVL140
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL140
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x38
	.byte	0x25
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x1800
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xe7ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL131
	.4byte	.LVL135
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL135
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL129
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL127
	.4byte	.LVL130
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL130
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL125
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL123
	.4byte	.LVL126
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL126
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL121
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL119
	.4byte	.LVL122
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL122
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL75
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL90
	.4byte	.LVL93
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x3
	.byte	0x7b
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x3
	.byte	0x7b
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL106
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x3
	.byte	0x7b
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x3
	.byte	0x7b
	.byte	0x7c
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL75
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL104
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL75
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL81
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x34
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x6e
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL103
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL112
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL118
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL81
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL86
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0xf
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0xf7
	.byte	0x25
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL92
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0xc
	.byte	0x7e
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x7a
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL101
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL112
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL79
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL112
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL66
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL74
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x8
	.byte	0x7d
	.byte	0
	.byte	0x38
	.byte	0x25
	.byte	0x8
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL65
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL64
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL61
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL60
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xfd
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
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
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL43
	.4byte	.LVL45
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL26
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x4
	.byte	0x7d
	.byte	0x80,0x7f
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x79
	.byte	0x14
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xff,0x89,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL21
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xff,0x89,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xf3
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xfe
	.byte	0x1a
	.byte	0x3c
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0x83,0x7f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x11
	.byte	0x78
	.byte	0x9
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x4f
	.byte	0x40
	.byte	0x24
	.byte	0x1a
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xcf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x8
	.byte	0x30
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0xb
	.byte	0x7e
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
	.4byte	.LVL8
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x84
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF24:
	.string	"user_data"
.LASF17:
	.string	"size_t"
.LASF16:
	.string	"uintptr_t"
.LASF4:
	.string	"__uint8_t"
.LASF39:
	.string	"int_clear"
.LASF34:
	.string	"rx_fifo_threshold"
.LASF11:
	.string	"long long unsigned int"
.LASF61:
	.string	"qcc74x_spi_deinit"
.LASF51:
	.string	"rxbuffer"
.LASF22:
	.string	"sub_idx"
.LASF26:
	.string	"qcc74x_spi_config_s"
.LASF10:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF27:
	.string	"freq"
.LASF43:
	.string	"qcc74x_spi_int_clear"
.LASF66:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/lhal"
.LASF7:
	.string	"long int"
.LASF67:
	.string	"qcc74x_clk_get_peripheral_clock"
.LASF42:
	.string	"int_mask"
.LASF65:
	.string	"./drivers/lhal/src/qcc74x_spi.c"
.LASF41:
	.string	"int_status"
.LASF14:
	.string	"uint16_t"
.LASF44:
	.string	"qcc74x_spi_errint_mask"
.LASF8:
	.string	"__uint32_t"
.LASF45:
	.string	"mask"
.LASF0:
	.string	"unsigned int"
.LASF9:
	.string	"long unsigned int"
.LASF19:
	.string	"name"
.LASF57:
	.string	"data"
.LASF6:
	.string	"short unsigned int"
.LASF46:
	.string	"qcc74x_spi_tcint_mask"
.LASF64:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF59:
	.string	"enable"
.LASF62:
	.string	"qcc74x_spi_init"
.LASF20:
	.string	"reg_base"
.LASF58:
	.string	"qcc74x_spi_link_rxdma"
.LASF28:
	.string	"role"
.LASF48:
	.string	"qcc74x_spi_txint_mask"
.LASF52:
	.string	"nbytes"
.LASF38:
	.string	"_Bool"
.LASF2:
	.string	"unsigned char"
.LASF36:
	.string	"qcc74x_spi_feature_control"
.LASF35:
	.string	"regval"
.LASF3:
	.string	"short int"
.LASF55:
	.string	"frame_size"
.LASF12:
	.string	"__uintptr_t"
.LASF33:
	.string	"tx_fifo_threshold"
.LASF15:
	.string	"uint32_t"
.LASF21:
	.string	"irq_num"
.LASF32:
	.string	"byte_order"
.LASF18:
	.string	"char"
.LASF29:
	.string	"mode"
.LASF63:
	.string	"config"
.LASF5:
	.string	"__uint16_t"
.LASF30:
	.string	"data_width"
.LASF50:
	.string	"txbuffer"
.LASF49:
	.string	"qcc74x_spi_poll_exchange"
.LASF23:
	.string	"dev_type"
.LASF31:
	.string	"bit_order"
.LASF60:
	.string	"qcc74x_spi_link_txdma"
.LASF25:
	.string	"qcc74x_device_s"
.LASF40:
	.string	"qcc74x_spi_get_intstatus"
.LASF47:
	.string	"qcc74x_spi_rxint_mask"
.LASF53:
	.string	"tx_cnt"
.LASF13:
	.string	"uint8_t"
.LASF54:
	.string	"fifo_cnt"
.LASF37:
	.string	"qcc74x_spi_isbusy"
.LASF56:
	.string	"qcc74x_spi_poll_send"
	.ident	"GCC: (GNU) 10.4.0"
