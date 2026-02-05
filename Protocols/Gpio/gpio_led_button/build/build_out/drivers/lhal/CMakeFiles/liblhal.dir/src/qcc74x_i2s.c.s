	.file	"qcc74x_i2s.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_i2s_init,"ax",@progbits
	.align	1
	.globl	qcc74x_i2s_init
	.type	qcc74x_i2s_init, @function
qcc74x_i2s_init:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_i2s.c"
	.loc 1 6 1
	.cfi_startproc
.LVL0:
	.loc 1 7 5
	.loc 1 8 5
	.loc 1 9 5
	.loc 1 10 5
	.loc 1 11 5
	.loc 1 12 5
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 21 5
	.loc 1 6 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	.loc 1 21 14
	lw	s0,4(a0)
.LVL1:
	.loc 1 23 5 is_stmt 1
	.loc 1 6 1 is_stmt 0
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 23 12
	lw	a4,0(s0)
.LVL2:
	.loc 1 25 5 is_stmt 1
	.loc 1 26 5
	.loc 1 27 5
	.loc 1 6 1 is_stmt 0
	mv	s1,a1
	.loc 1 27 12
	andi	a5,a4,-8
.LVL3:
	.loc 1 28 5 is_stmt 1
	.loc 1 29 5
	.loc 1 29 58 is_stmt 0
	sw	a5,0(s0)
	.loc 1 31 5 is_stmt 1
	.loc 1 31 15 is_stmt 0
	lbu	a5,6(a1)
.LVL4:
	.loc 1 31 8
	bne	a5,zero,.L2
	.loc 1 33 9 is_stmt 1
.LVL5:
	.loc 1 34 9
	andi	a4,a4,-392
	.loc 1 34 16 is_stmt 0
	ori	a4,a4,16
.LVL6:
.L3:
	.loc 1 42 5 is_stmt 1
	.loc 1 44 5
	.loc 1 44 15 is_stmt 0
	lbu	a3,5(s1)
	.loc 1 44 8
	li	a2,2
	.loc 1 48 16
	andi	a5,a4,-97
	.loc 1 44 8
	bne	a3,a2,.L5
	.loc 1 46 9 is_stmt 1
	.loc 1 42 12 is_stmt 0
	andi	a4,a4,-33
.LVL7:
	.loc 1 46 16
	ori	a5,a4,64
.LVL8:
.L5:
	.loc 1 52 5 is_stmt 1
	.loc 1 53 5
	.loc 1 53 12 is_stmt 0
	li	a4,-61440
	addi	a4,a4,-1
	and	a4,a5,a4
.LVL9:
	.loc 1 54 5 is_stmt 1
	.loc 1 55 5
	.loc 1 57 5
	.loc 1 55 21 is_stmt 0
	lbu	a2,8(s1)
	.loc 1 54 21
	lbu	a5,7(s1)
	.loc 1 55 34
	slli	a2,a2,14
	.loc 1 54 35
	slli	a5,a5,12
	.loc 1 55 12
	or	a5,a5,a2
	or	a5,a5,a4
	.loc 1 59 16
	li	a4,-196608
.LVL10:
	addi	a4,a4,-1
	and	a5,a5,a4
	.loc 1 57 8
	beq	a3,zero,.L6
	.loc 1 60 12 is_stmt 1
	.loc 1 60 15 is_stmt 0
	li	a4,1
	bne	a3,a4,.L7
	.loc 1 62 9 is_stmt 1
	.loc 1 63 9
	.loc 1 63 16 is_stmt 0
	li	a4,65536
.L19:
	.loc 1 67 16
	or	a5,a5,a4
.LVL11:
.L6:
	.loc 1 71 5 is_stmt 1
	.loc 1 71 15 is_stmt 0
	lbu	a4,9(s1)
	.loc 1 71 8
	beq	a4,zero,.L8
	.loc 1 72 9 is_stmt 1
.LVL12:
	.loc 1 73 9
	.loc 1 74 9
	.loc 1 74 45 is_stmt 0
	addi	a4,a4,-1
	.loc 1 74 60
	li	a3,32505856
	.loc 1 74 50
	slli	a4,a4,20
	.loc 1 74 60
	and	a4,a4,a3
	li	a3,-32505856
	addi	a3,a3,-1
	and	a5,a5,a3
.LVL13:
	or	a4,a4,a5
	.loc 1 74 16
	li	a5,33554432
	or	a5,a4,a5
.LVL14:
.L9:
	.loc 1 80 5 is_stmt 1
	.loc 1 82 5
	.loc 1 82 12 is_stmt 0
	li	a4,-786432
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL15:
	.loc 1 84 5 is_stmt 1
	.loc 1 84 58 is_stmt 0
	sw	a5,0(s0)
	.loc 1 87 5 is_stmt 1
	.loc 1 87 12 is_stmt 0
	lbu	a1,9(a0)
.LVL16:
	li	a0,9
.LVL17:
	call	qcc74x_clk_get_peripheral_clock
.LVL18:
	.loc 1 87 57
	srli	a5,a0,1
	.loc 1 87 61
	li	a3,10
	mul	a5,a5,a3
	.loc 1 87 66
	lw	a0,0(s1)
	.loc 1 88 29
	li	a2,9
	li	a4,0
	.loc 1 87 66
	divu	a5,a5,a0
	.loc 1 87 89
	addi	a5,a5,5
.LVL19:
	.loc 1 88 5 is_stmt 1
	.loc 1 88 29 is_stmt 0
	bleu	a5,a2,.L10
	.loc 1 87 9 discriminator 1
	divu	a5,a5,a3
.LVL20:
	.loc 1 88 29 discriminator 1
	addi	a4,a5,-1
.LVL21:
.L10:
	.loc 1 90 5 is_stmt 1 discriminator 4
	.loc 1 92 5 discriminator 4
	.loc 1 92 9 is_stmt 0 discriminator 4
	mv	a5,a4
	li	a4,4096
.LVL22:
	bltu	a5,a4,.L11
	addi	a5,a4,-1
.LVL23:
.L11:
	.loc 1 95 5 is_stmt 1 discriminator 4
	.loc 1 95 12 is_stmt 0 discriminator 4
	lw	a4,16(s0)
.LVL24:
	.loc 1 96 5 is_stmt 1 discriminator 4
	.loc 1 97 5 discriminator 4
	.loc 1 97 12 is_stmt 0 discriminator 4
	li	a3,-268374016
	.loc 1 105 12 discriminator 4
	li	a2,-252641280
	.loc 1 97 12 discriminator 4
	and	a4,a4,a3
.LVL25:
	.loc 1 98 5 is_stmt 1 discriminator 4
	.loc 1 98 12 is_stmt 0 discriminator 4
	or	a4,a5,a4
.LVL26:
	.loc 1 99 5 is_stmt 1 discriminator 4
	.loc 1 99 19 is_stmt 0 discriminator 4
	slli	a5,a5,16
.LVL27:
	.loc 1 99 12 discriminator 4
	or	a5,a5,a4
.LVL28:
	.loc 1 100 5 is_stmt 1 discriminator 4
	.loc 1 100 59 is_stmt 0 discriminator 4
	sw	a5,16(s0)
	.loc 1 103 5 is_stmt 1 discriminator 4
	.loc 1 103 12 is_stmt 0 discriminator 4
	addi	a4,s0,128
	lw	a5,4(a4)
.LVL29:
	.loc 1 104 5 is_stmt 1 discriminator 4
	.loc 1 105 5 discriminator 4
	.loc 1 106 22 is_stmt 0 discriminator 4
	lbu	a3,10(s1)
	.loc 1 105 12 discriminator 4
	addi	a2,a2,-1
	and	a2,a5,a2
.LVL30:
	.loc 1 106 5 is_stmt 1 discriminator 4
	.loc 1 107 5 discriminator 4
	.loc 1 106 52 is_stmt 0 discriminator 4
	li	a1,983040
	.loc 1 106 42 discriminator 4
	slli	a5,a3,16
	.loc 1 106 52 discriminator 4
	and	a5,a5,a1
	.loc 1 107 42 discriminator 4
	slli	a3,a3,24
.LVL31:
	.loc 1 107 52 discriminator 4
	li	a1,251658240
	and	a3,a3,a1
	.loc 1 107 12 discriminator 4
	or	a5,a5,a3
	or	a5,a5,a2
.LVL32:
	.loc 1 108 5 is_stmt 1 discriminator 4
	.loc 1 108 59 is_stmt 0 discriminator 4
	sw	a5,4(a4)
	.loc 1 110 5 is_stmt 1 discriminator 4
	.loc 1 110 12 is_stmt 0 discriminator 4
	lw	a5,0(a4)
.LVL33:
	.loc 1 112 5 is_stmt 1 discriminator 4
	.loc 1 114 5 discriminator 4
	.loc 1 116 5 discriminator 4
	.loc 1 118 5 discriminator 4
	.loc 1 119 5 discriminator 4
	.loc 1 119 12 is_stmt 0 discriminator 4
	andi	a5,a5,-1796
.LVL34:
	.loc 1 121 5 is_stmt 1 discriminator 4
	.loc 1 122 5 discriminator 4
	.loc 1 122 12 is_stmt 0 discriminator 4
	ori	a5,a5,12
.LVL35:
	.loc 1 123 5 is_stmt 1 discriminator 4
	.loc 1 123 59 is_stmt 0 discriminator 4
	sw	a5,0(a4)
	.loc 1 125 5 is_stmt 1 discriminator 4
	.loc 1 125 12 is_stmt 0 discriminator 4
	lw	a5,124(a4)
.LVL36:
	.loc 1 127 5 is_stmt 1 discriminator 4
	.loc 1 129 5 discriminator 4
	.loc 1 130 5 discriminator 4
	.loc 1 131 5 discriminator 4
	.loc 1 132 5 discriminator 4
	.loc 1 132 12 is_stmt 0 discriminator 4
	andi	a5,a5,-144
.LVL37:
	.loc 1 133 5 is_stmt 1 discriminator 4
	.loc 1 133 59 is_stmt 0 discriminator 4
	sw	a5,124(a4)
	.loc 1 136 5 is_stmt 1 discriminator 4
	.loc 1 136 12 is_stmt 0 discriminator 4
	lw	a4,0(s0)
.LVL38:
	.loc 1 137 5 is_stmt 1 discriminator 4
	.loc 1 137 8 is_stmt 0 discriminator 4
	lbu	a3,4(s1)
	.loc 1 140 16 discriminator 4
	ori	a5,a4,2
	.loc 1 137 8 discriminator 4
	bne	a3,zero,.L13
	.loc 1 138 9 is_stmt 1
	.loc 1 138 16 is_stmt 0
	ori	a5,a4,1
.LVL39:
.L13:
	.loc 1 142 5 is_stmt 1
	.loc 1 144 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	.loc 1 142 58
	sw	a5,0(s0)
	.loc 1 144 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL40:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL41:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL42:
.L2:
	.cfi_restore_state
	.loc 1 36 9 is_stmt 1
	.loc 1 37 9
	.loc 1 37 16 is_stmt 0
	andi	a3,a4,-408
.LVL43:
	.loc 1 38 9 is_stmt 1
	.loc 1 38 41 is_stmt 0
	addi	a4,a5,-1
	.loc 1 38 46
	slli	a4,a4,7
	.loc 1 38 16
	or	a4,a4,a3
.LVL44:
	j	.L3
.LVL45:
.L7:
	.loc 1 66 9 is_stmt 1
	.loc 1 67 9
	.loc 1 67 16 is_stmt 0
	li	a4,131072
	j	.L19
.LVL46:
.L8:
	.loc 1 76 9 is_stmt 1
	.loc 1 76 16 is_stmt 0
	li	a4,-33554432
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL47:
	j	.L9
	.cfi_endproc
.LFE5:
	.size	qcc74x_i2s_init, .-qcc74x_i2s_init
	.section	.text.qcc74x_i2s_deinit,"ax",@progbits
	.align	1
	.globl	qcc74x_i2s_deinit
	.type	qcc74x_i2s_deinit, @function
qcc74x_i2s_deinit:
.LFB6:
	.loc 1 147 1 is_stmt 1
	.cfi_startproc
.LVL48:
	.loc 1 151 5
	.loc 1 152 5
	.loc 1 154 5
	.loc 1 157 5
	.loc 1 157 16 is_stmt 0
	lw	a4,4(a0)
	.loc 1 157 12
	lw	a5,0(a4)
.LVL49:
	.loc 1 158 5 is_stmt 1
	.loc 1 159 5
	.loc 1 159 12 is_stmt 0
	andi	a5,a5,-4
.LVL50:
	.loc 1 160 5 is_stmt 1
	.loc 1 160 58 is_stmt 0
	sw	a5,0(a4)
.LVL51:
	.loc 1 162 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_i2s_deinit, .-qcc74x_i2s_deinit
	.section	.text.qcc74x_i2s_link_txdma,"ax",@progbits
	.align	1
	.globl	qcc74x_i2s_link_txdma
	.type	qcc74x_i2s_link_txdma, @function
qcc74x_i2s_link_txdma:
.LFB7:
	.loc 1 165 1 is_stmt 1
	.cfi_startproc
.LVL52:
	.loc 1 169 5
	.loc 1 170 5
	.loc 1 172 5
	.loc 1 173 5
	.loc 1 173 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 173 12
	lw	a3,128(a5)
.LVL53:
	.loc 1 174 5 is_stmt 1
	.loc 1 177 16 is_stmt 0
	andi	a4,a3,-2
	.loc 1 174 8
	beq	a1,zero,.L23
	.loc 1 175 9 is_stmt 1
	.loc 1 175 16 is_stmt 0
	ori	a4,a3,1
.LVL54:
.L23:
	.loc 1 179 5 is_stmt 1
	.loc 1 179 59 is_stmt 0
	sw	a4,128(a5)
.LVL55:
	.loc 1 181 1
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_i2s_link_txdma, .-qcc74x_i2s_link_txdma
	.section	.text.qcc74x_i2s_link_rxdma,"ax",@progbits
	.align	1
	.globl	qcc74x_i2s_link_rxdma
	.type	qcc74x_i2s_link_rxdma, @function
qcc74x_i2s_link_rxdma:
.LFB8:
	.loc 1 184 1 is_stmt 1
	.cfi_startproc
.LVL56:
	.loc 1 188 5
	.loc 1 189 5
	.loc 1 191 5
	.loc 1 192 5
	.loc 1 192 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 192 12
	lw	a3,128(a5)
.LVL57:
	.loc 1 193 5 is_stmt 1
	.loc 1 196 16 is_stmt 0
	andi	a4,a3,-3
	.loc 1 193 8
	beq	a1,zero,.L27
	.loc 1 194 9 is_stmt 1
	.loc 1 194 16 is_stmt 0
	ori	a4,a3,2
.LVL58:
.L27:
	.loc 1 198 5 is_stmt 1
	.loc 1 198 59 is_stmt 0
	sw	a4,128(a5)
.LVL59:
	.loc 1 200 1
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_i2s_link_rxdma, .-qcc74x_i2s_link_rxdma
	.section	.text.qcc74x_i2s_txint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_i2s_txint_mask
	.type	qcc74x_i2s_txint_mask, @function
qcc74x_i2s_txint_mask:
.LFB9:
	.loc 1 203 1 is_stmt 1
	.cfi_startproc
.LVL60:
	.loc 1 207 5
	.loc 1 208 5
	.loc 1 210 5
	.loc 1 210 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 210 12
	lw	a3,4(a5)
.LVL61:
	.loc 1 211 5 is_stmt 1
	.loc 1 214 16 is_stmt 0
	andi	a4,a3,-257
	.loc 1 211 8
	beq	a1,zero,.L31
	.loc 1 212 9 is_stmt 1
	.loc 1 212 16 is_stmt 0
	ori	a4,a3,256
.LVL62:
.L31:
	.loc 1 216 5 is_stmt 1
	.loc 1 216 58 is_stmt 0
	sw	a4,4(a5)
.LVL63:
	.loc 1 218 1
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_i2s_txint_mask, .-qcc74x_i2s_txint_mask
	.section	.text.qcc74x_i2s_rxint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_i2s_rxint_mask
	.type	qcc74x_i2s_rxint_mask, @function
qcc74x_i2s_rxint_mask:
.LFB10:
	.loc 1 221 1 is_stmt 1
	.cfi_startproc
.LVL64:
	.loc 1 225 5
	.loc 1 226 5
	.loc 1 228 5
	.loc 1 228 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 228 12
	lw	a3,4(a5)
.LVL65:
	.loc 1 229 5 is_stmt 1
	.loc 1 232 16 is_stmt 0
	andi	a4,a3,-513
	.loc 1 229 8
	beq	a1,zero,.L35
	.loc 1 230 9 is_stmt 1
	.loc 1 230 16 is_stmt 0
	ori	a4,a3,512
.LVL66:
.L35:
	.loc 1 234 5 is_stmt 1
	.loc 1 234 58 is_stmt 0
	sw	a4,4(a5)
.LVL67:
	.loc 1 236 1
	ret
	.cfi_endproc
.LFE10:
	.size	qcc74x_i2s_rxint_mask, .-qcc74x_i2s_rxint_mask
	.section	.text.qcc74x_i2s_errint_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_i2s_errint_mask
	.type	qcc74x_i2s_errint_mask, @function
qcc74x_i2s_errint_mask:
.LFB11:
	.loc 1 239 1 is_stmt 1
	.cfi_startproc
.LVL68:
	.loc 1 243 5
	.loc 1 244 5
	.loc 1 246 5
	.loc 1 246 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 246 12
	lw	a3,4(a5)
.LVL69:
	.loc 1 247 5 is_stmt 1
	.loc 1 250 16 is_stmt 0
	andi	a4,a3,-1025
	.loc 1 247 8
	beq	a1,zero,.L39
	.loc 1 248 9 is_stmt 1
	.loc 1 248 16 is_stmt 0
	ori	a4,a3,1024
.LVL70:
.L39:
	.loc 1 252 5 is_stmt 1
	.loc 1 252 58 is_stmt 0
	sw	a4,4(a5)
.LVL71:
	.loc 1 254 1
	ret
	.cfi_endproc
.LFE11:
	.size	qcc74x_i2s_errint_mask, .-qcc74x_i2s_errint_mask
	.section	.text.qcc74x_i2s_get_intstatus,"ax",@progbits
	.align	1
	.globl	qcc74x_i2s_get_intstatus
	.type	qcc74x_i2s_get_intstatus, @function
qcc74x_i2s_get_intstatus:
.LFB12:
	.loc 1 257 1 is_stmt 1
	.cfi_startproc
.LVL72:
	.loc 1 261 5
	.loc 1 262 5
	.loc 1 263 5
	.loc 1 265 5
	.loc 1 267 5
	.loc 1 267 62 is_stmt 0
	lw	a5,4(a0)
	.loc 1 267 19
	lw	a4,4(a5)
.LVL73:
	.loc 1 269 5 is_stmt 1
	.loc 1 269 18 is_stmt 0
	lw	a0,4(a5)
.LVL74:
	.loc 1 271 5 is_stmt 1
	.loc 1 269 14 is_stmt 0
	extu	a0,a0,8+5-1,8
.LVL75:
	.loc 1 271 26
	not	a0,a0
	.loc 1 271 24
	and	a0,a0,a4
	.loc 1 273 1
	andi	a0,a0,31
	ret
	.cfi_endproc
.LFE12:
	.size	qcc74x_i2s_get_intstatus, .-qcc74x_i2s_get_intstatus
	.section	.text.qcc74x_i2s_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_i2s_feature_control
	.type	qcc74x_i2s_feature_control, @function
qcc74x_i2s_feature_control:
.LFB13:
	.loc 1 276 1 is_stmt 1
	.cfi_startproc
.LVL76:
	.loc 1 280 5
	.loc 1 281 5
	.loc 1 282 5
	.loc 1 284 5
	.loc 1 286 5 is_stmt 0
	li	a4,6
	.loc 1 284 14
	lw	a5,4(a0)
.LVL77:
	.loc 1 286 5 is_stmt 1
	beq	a1,a4,.L43
	bgt	a1,a4,.L44
	li	a4,3
	beq	a1,a4,.L45
	bgt	a1,a4,.L46
	li	a4,1
	beq	a1,a4,.L47
	li	a4,2
	beq	a1,a4,.L48
.L81:
	li	a0,-1
.LVL78:
	ret
.LVL79:
.L46:
	li	a4,4
	bne	a1,a4,.L78
	.loc 1 309 13
	.loc 1 309 20 is_stmt 0
	lw	a0,132(a5)
.LVL80:
	.loc 1 310 13 is_stmt 1
	.loc 1 310 17 is_stmt 0
	extu	a0,a0,8+5-1,8
.LVL81:
	.loc 1 311 13 is_stmt 1
	ret
.LVL82:
.L44:
	.loc 1 286 5 is_stmt 0
	li	a4,9
	beq	a1,a4,.L56
	bgt	a1,a4,.L53
	li	a4,7
	beq	a1,a4,.L54
	li	a4,8
	bne	a1,a4,.L81
	.loc 1 361 13 is_stmt 1
	.loc 1 361 20 is_stmt 0
	lw	a3,128(a5)
.LVL83:
	.loc 1 362 13 is_stmt 1
	.loc 1 365 24 is_stmt 0
	andi	a4,a3,-513
	.loc 1 362 16
	beq	a2,zero,.L66
	.loc 1 363 17 is_stmt 1
	.loc 1 363 24 is_stmt 0
	ori	a4,a3,512
.LVL84:
	j	.L66
.LVL85:
.L53:
	.loc 1 286 5
	li	a4,10
	bne	a1,a4,.L81
.L56:
	.loc 1 383 13 is_stmt 1
	.loc 1 383 20 is_stmt 0
	lw	a3,0(a5)
.LVL86:
	.loc 1 384 13 is_stmt 1
	.loc 1 387 24 is_stmt 0
	andi	a4,a3,-33
	.loc 1 384 16
	beq	a2,zero,.L70
	.loc 1 385 17 is_stmt 1
	.loc 1 385 24 is_stmt 0
	ori	a4,a3,32
.LVL87:
.L70:
	.loc 1 389 13 is_stmt 1
	.loc 1 389 66 is_stmt 0
	sw	a4,0(a5)
	j	.L80
.LVL88:
.L47:
	.loc 1 289 13 is_stmt 1
	.loc 1 289 20 is_stmt 0
	lw	a4,128(a5)
.LVL89:
	.loc 1 290 13 is_stmt 1
	.loc 1 290 20 is_stmt 0
	ori	a4,a4,4
.LVL90:
	.loc 1 291 13 is_stmt 1
.L66:
	.loc 1 367 13
	.loc 1 367 67 is_stmt 0
	sw	a4,128(a5)
	.loc 1 368 13 is_stmt 1
	j	.L80
.LVL91:
.L48:
	.loc 1 296 13
	.loc 1 296 20 is_stmt 0
	lw	a4,128(a5)
.LVL92:
	.loc 1 297 13 is_stmt 1
	.loc 1 297 20 is_stmt 0
	ori	a4,a4,8
.LVL93:
	.loc 1 298 13 is_stmt 1
	j	.L66
.LVL94:
.L45:
	.loc 1 303 13
	.loc 1 303 20 is_stmt 0
	lw	a0,132(a5)
.LVL95:
	.loc 1 304 13 is_stmt 1
	.loc 1 304 17 is_stmt 0
	andi	a0,a0,31
.LVL96:
	.loc 1 305 13 is_stmt 1
	ret
.LVL97:
.L78:
	.loc 1 315 13
	.loc 1 315 20 is_stmt 0
	lw	a4,252(a5)
.LVL98:
	.loc 1 316 13 is_stmt 1
	.loc 1 321 24 is_stmt 0
	andi	a3,a4,-129
	.loc 1 316 16
	beq	a2,zero,.L58
	.loc 1 317 17 is_stmt 1
.LVL99:
	.loc 1 318 17
	.loc 1 319 17
	.loc 1 319 32 is_stmt 0
	slli	a2,a2,4
.LVL100:
	.loc 1 319 41
	andi	a2,a2,112
	andi	a4,a4,-113
.LVL101:
	or	a2,a2,a4
	.loc 1 319 24
	ori	a3,a2,128
.LVL102:
.L58:
	.loc 1 323 13 is_stmt 1
	.loc 1 323 67 is_stmt 0
	sw	a3,252(a5)
	.loc 1 324 13 is_stmt 1
.LVL103:
.L80:
	.loc 1 390 13
	.loc 1 280 9 is_stmt 0
	li	a0,0
.LVL104:
	.loc 1 397 5 is_stmt 1
	.loc 1 399 1 is_stmt 0
	ret
.LVL105:
.L43:
	.loc 1 328 13 is_stmt 1
	.loc 1 328 20 is_stmt 0
	lw	a1,0(a5)
.LVL106:
	.loc 1 330 13 is_stmt 1
	.loc 1 330 21 is_stmt 0
	andi	a3,a2,2
	.loc 1 333 24
	andi	a4,a1,-5
	.loc 1 330 16
	beq	a3,zero,.L60
	.loc 1 331 17 is_stmt 1
	.loc 1 331 24 is_stmt 0
	ori	a4,a1,4
.LVL107:
.L60:
	.loc 1 336 13 is_stmt 1
	.loc 1 336 21 is_stmt 0
	andi	a2,a2,4
.LVL108:
	.loc 1 339 24
	andi	a3,a4,-9
	.loc 1 336 16
	beq	a2,zero,.L62
	.loc 1 337 17 is_stmt 1
	.loc 1 337 24 is_stmt 0
	ori	a3,a4,8
.LVL109:
.L62:
	.loc 1 341 13 is_stmt 1
	.loc 1 341 66 is_stmt 0
	sw	a3,0(a5)
	.loc 1 342 13 is_stmt 1
	j	.L80
.LVL110:
.L54:
	.loc 1 348 13
	.loc 1 348 20 is_stmt 0
	lw	a3,128(a5)
.LVL111:
	.loc 1 349 13 is_stmt 1
	.loc 1 352 24 is_stmt 0
	andi	a4,a3,-257
	.loc 1 349 16
	beq	a2,zero,.L66
	.loc 1 350 17 is_stmt 1
	.loc 1 350 24 is_stmt 0
	ori	a4,a3,256
.LVL112:
	.loc 1 354 13 is_stmt 1
	j	.L66
	.cfi_endproc
.LFE13:
	.size	qcc74x_i2s_feature_control, .-qcc74x_i2s_feature_control
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_i2s.h"
	.file 7 "./drivers/lhal/include/qcc74x_clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x51d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF50
	.byte	0xc
	.4byte	.LASF51
	.4byte	.LASF52
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
	.byte	0x7d
	.byte	0x8
	.4byte	0x1bf
	.byte	0x9
	.4byte	.LASF25
	.byte	0x6
	.byte	0x7e
	.byte	0xe
	.4byte	0x9b
	.byte	0
	.byte	0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0x7f
	.byte	0xd
	.4byte	0x8f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF27
	.byte	0x6
	.byte	0x80
	.byte	0xd
	.4byte	0x8f
	.byte	0x5
	.byte	0x9
	.4byte	.LASF28
	.byte	0x6
	.byte	0x81
	.byte	0xd
	.4byte	0x8f
	.byte	0x6
	.byte	0x9
	.4byte	.LASF29
	.byte	0x6
	.byte	0x82
	.byte	0xd
	.4byte	0x8f
	.byte	0x7
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0x83
	.byte	0xd
	.4byte	0x8f
	.byte	0x8
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0x84
	.byte	0xd
	.4byte	0x8f
	.byte	0x9
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0x86
	.byte	0xd
	.4byte	0x8f
	.byte	0xa
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0x87
	.byte	0xd
	.4byte	0x8f
	.byte	0xb
	.byte	0
	.byte	0x6
	.4byte	0x13c
	.byte	0xb
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x113
	.byte	0x5
	.4byte	0x7c
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x244
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x113
	.byte	0x38
	.4byte	0x244
	.4byte	.LLST20
	.byte	0xc
	.string	"cmd"
	.byte	0x1
	.2byte	0x113
	.byte	0x41
	.4byte	0x7c
	.4byte	.LLST21
	.byte	0xc
	.string	"arg"
	.byte	0x1
	.2byte	0x113
	.byte	0x4d
	.4byte	0xb3
	.4byte	.LLST22
	.byte	0xd
	.string	"ret"
	.byte	0x1
	.2byte	0x118
	.byte	0x9
	.4byte	0x7c
	.4byte	.LLST23
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x119
	.byte	0xe
	.4byte	0x9b
	.byte	0x1
	.byte	0x5f
	.byte	0xf
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x11a
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST24
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xd3
	.byte	0xb
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x100
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ac
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x100
	.byte	0x3b
	.4byte	0x244
	.4byte	.LLST17
	.byte	0xf
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x105
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST18
	.byte	0xe
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x106
	.byte	0xe
	.4byte	0x9b
	.byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x4f
	.byte	0x1a
	.byte	0x9f
	.byte	0xf
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x107
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST19
	.byte	0
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0xee
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x2ff
	.byte	0x11
	.string	"dev"
	.byte	0x1
	.byte	0xee
	.byte	0x35
	.4byte	0x244
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0xee
	.byte	0x3e
	.4byte	0x2ff
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xf3
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST15
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0xf4
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST16
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF40
	.byte	0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0xdc
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x359
	.byte	0x11
	.string	"dev"
	.byte	0x1
	.byte	0xdc
	.byte	0x34
	.4byte	0x244
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0xdc
	.byte	0x3d
	.4byte	0x2ff
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xe1
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST13
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0xe2
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST14
	.byte	0
	.byte	0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0xca
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ac
	.byte	0x11
	.string	"dev"
	.byte	0x1
	.byte	0xca
	.byte	0x34
	.4byte	0x244
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LASF39
	.byte	0x1
	.byte	0xca
	.byte	0x3d
	.4byte	0x2ff
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xcf
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST11
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0xd0
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST12
	.byte	0
	.byte	0x10
	.4byte	.LASF44
	.byte	0x1
	.byte	0xb7
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ff
	.byte	0x11
	.string	"dev"
	.byte	0x1
	.byte	0xb7
	.byte	0x34
	.4byte	0x244
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0xb7
	.byte	0x3d
	.4byte	0x2ff
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0xbc
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST9
	.byte	0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xbd
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST10
	.byte	0
	.byte	0x10
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa4
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x452
	.byte	0x11
	.string	"dev"
	.byte	0x1
	.byte	0xa4
	.byte	0x34
	.4byte	0x244
	.byte	0x1
	.byte	0x5a
	.byte	0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0xa4
	.byte	0x3d
	.4byte	0x2ff
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0xa9
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST7
	.byte	0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0xaa
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST8
	.byte	0
	.byte	0x10
	.4byte	.LASF47
	.byte	0x1
	.byte	0x92
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x497
	.byte	0x11
	.string	"dev"
	.byte	0x1
	.byte	0x92
	.byte	0x30
	.4byte	0x244
	.byte	0x1
	.byte	0x5a
	.byte	0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x97
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST5
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0x98
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST6
	.byte	0
	.byte	0x10
	.4byte	.LASF48
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x50d
	.byte	0x14
	.string	"dev"
	.byte	0x1
	.byte	0x5
	.byte	0x2e
	.4byte	0x244
	.4byte	.LLST0
	.byte	0x15
	.4byte	.LASF49
	.byte	0x1
	.byte	0x5
	.byte	0x55
	.4byte	0x50d
	.4byte	.LLST1
	.byte	0x13
	.4byte	.LASF18
	.byte	0x1
	.byte	0x11
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST2
	.byte	0x13
	.4byte	.LASF34
	.byte	0x1
	.byte	0x12
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST3
	.byte	0x16
	.string	"div"
	.byte	0x1
	.byte	0x13
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST4
	.byte	0x17
	.4byte	.LVL18
	.4byte	0x513
	.byte	0x18
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x39
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1bf
	.byte	0x19
	.4byte	.LASF53
	.4byte	.LASF53
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
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
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
.LLST20:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL76
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL106
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL76
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL100
	.4byte	.LVL105
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL108
	.4byte	.LVL110
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL110
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL76
	.4byte	.LVL81
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL81
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL97
	.4byte	.LFE13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL92
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL99
	.4byte	.LVL101
	.2byte	0x9
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0x8f
	.byte	0x1a
	.byte	0x8
	.byte	0x80
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL107
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL112
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL74
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL74
	.4byte	.LVL75
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
.LLST15:
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL70
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL71
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL66
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL64
	.4byte	.LVL67
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL67
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL62
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL60
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL63
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL56
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL59
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL58
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL55
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL54
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x9
	.byte	0xfd
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL51
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0xfc
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x78
	.byte	0
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x78
	.byte	0
	.byte	0x6
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0xdf
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xcfff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x17
	.byte	0x7b
	.byte	0x7
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3c
	.byte	0x24
	.byte	0x7b
	.byte	0x8
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3e
	.byte	0x24
	.byte	0x21
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0xd
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xbf,0x70
	.byte	0x1a
	.byte	0x40
	.byte	0x45
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0x5f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xb
	.2byte	0xf000
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0x43
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0xc
	.byte	0x7d
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x4e
	.byte	0x3f
	.byte	0x24
	.byte	0x1a
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x11
	.byte	0x79
	.byte	0xa
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x4e
	.byte	0x3f
	.byte	0x24
	.byte	0x1a
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xf8fe
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x34
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xb
	.2byte	0xff71
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x9
	.byte	0xe8
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL46
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL19
	.4byte	.LVL20
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
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x5c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF51:
	.string	"./drivers/lhal/src/qcc74x_i2s.c"
.LASF50:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF37:
	.string	"int_status"
.LASF6:
	.string	"__uint8_t"
.LASF15:
	.string	"size_t"
.LASF14:
	.string	"uintptr_t"
.LASF11:
	.string	"__uintptr_t"
.LASF41:
	.string	"qcc74x_i2s_errint_mask"
.LASF45:
	.string	"enable"
.LASF36:
	.string	"qcc74x_i2s_get_intstatus"
.LASF31:
	.string	"fs_offset_cycle"
.LASF26:
	.string	"role"
.LASF22:
	.string	"user_data"
.LASF2:
	.string	"unsigned char"
.LASF24:
	.string	"qcc74x_i2s_config_s"
.LASF46:
	.string	"qcc74x_i2s_link_txdma"
.LASF8:
	.string	"long unsigned int"
.LASF4:
	.string	"short unsigned int"
.LASF7:
	.string	"__uint32_t"
.LASF20:
	.string	"sub_idx"
.LASF49:
	.string	"config"
.LASF33:
	.string	"rx_fifo_threshold"
.LASF27:
	.string	"format_mode"
.LASF38:
	.string	"int_mask"
.LASF35:
	.string	"qcc74x_i2s_feature_control"
.LASF48:
	.string	"qcc74x_i2s_init"
.LASF23:
	.string	"qcc74x_device_s"
.LASF0:
	.string	"unsigned int"
.LASF10:
	.string	"long long unsigned int"
.LASF12:
	.string	"uint8_t"
.LASF43:
	.string	"qcc74x_i2s_txint_mask"
.LASF52:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/drivers/lhal"
.LASF25:
	.string	"bclk_freq_hz"
.LASF18:
	.string	"reg_base"
.LASF47:
	.string	"qcc74x_i2s_deinit"
.LASF34:
	.string	"regval"
.LASF9:
	.string	"long long int"
.LASF39:
	.string	"mask"
.LASF21:
	.string	"dev_type"
.LASF28:
	.string	"channel_mode"
.LASF42:
	.string	"qcc74x_i2s_rxint_mask"
.LASF3:
	.string	"short int"
.LASF32:
	.string	"tx_fifo_threshold"
.LASF44:
	.string	"qcc74x_i2s_link_rxdma"
.LASF13:
	.string	"uint32_t"
.LASF5:
	.string	"long int"
.LASF16:
	.string	"char"
.LASF30:
	.string	"data_width"
.LASF53:
	.string	"qcc74x_clk_get_peripheral_clock"
.LASF1:
	.string	"signed char"
.LASF19:
	.string	"irq_num"
.LASF40:
	.string	"_Bool"
.LASF29:
	.string	"frame_width"
.LASF17:
	.string	"name"
	.ident	"GCC: (GNU) 10.4.0"
