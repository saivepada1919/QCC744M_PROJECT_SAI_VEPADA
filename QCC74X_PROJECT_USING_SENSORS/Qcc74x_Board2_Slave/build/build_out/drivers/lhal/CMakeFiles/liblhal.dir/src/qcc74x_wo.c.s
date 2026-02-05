	.file	"qcc74x_wo.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_wo_pin_init,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_pin_init
	.type	qcc74x_wo_pin_init, @function
qcc74x_wo_pin_init:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_wo.c"
	.loc 1 11 1
	.cfi_startproc
.LVL0:
	.loc 1 15 5
	.loc 1 16 5
	.loc 1 18 5
	.loc 1 18 14 is_stmt 0
	lw	a4,4(a0)
	li	a5,4096
	addi	a5,a5,-1852
	add	a4,a4,a5
.LVL1:
	.loc 1 19 5 is_stmt 1
	.loc 1 20 5
	.loc 1 21 5
	.loc 1 22 5
	.loc 1 23 5
	.loc 1 26 16 is_stmt 0
	li	a5,-1069543424
	.loc 1 23 8
	bne	a2,zero,.L4
	.loc 1 24 16
	li	a5,-2143285248
.L4:
	addi	a5,a5,-1202
.LVL2:
	.loc 1 28 5 is_stmt 1
	.loc 1 28 50 is_stmt 0
	srw	a5,a4,a1,2
	.loc 1 30 1
	ret
	.cfi_endproc
.LFE5:
	.size	qcc74x_wo_pin_init, .-qcc74x_wo_pin_init
	.section	.text.qcc74x_wo_init,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_init
	.type	qcc74x_wo_init, @function
qcc74x_wo_init:
.LFB6:
	.loc 1 33 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 37 5
	.loc 1 38 5
	.loc 1 40 5
	.loc 1 40 14 is_stmt 0
	lw	a3,4(a0)
.LVL4:
	.loc 1 42 5 is_stmt 1
	.loc 1 42 58 is_stmt 0
	li	a4,4096
	addi	a4,a4,-1284
	.loc 1 42 12
	lrw	a5,a3,a4,0
.LVL5:
	.loc 1 43 5 is_stmt 1
	.loc 1 43 12 is_stmt 0
	andi	a5,a5,-2
.LVL6:
	.loc 1 44 5 is_stmt 1
	.loc 1 44 60 is_stmt 0
	srw	a5,a3,a4,0
	.loc 1 55 5 is_stmt 1
	.loc 1 55 12 is_stmt 0
	lrw	a5,a3,a4,0
.LVL7:
	.loc 1 56 5 is_stmt 1
	.loc 1 57 5
	.loc 1 58 5
	.loc 1 60 19 is_stmt 0
	lbu	a0,2(a1)
.LVL8:
	.loc 1 58 12
	andi	a2,a5,127
.LVL9:
	.loc 1 59 5 is_stmt 1
	.loc 1 60 5
	.loc 1 61 5
	.loc 1 59 19 is_stmt 0
	lhu	a5,0(a1)
	.loc 1 60 37
	slli	a0,a0,16
.LVL10:
	.loc 1 59 36
	slli	a5,a5,7
	.loc 1 61 12
	or	a5,a5,a0
	.loc 1 61 19
	lbu	a0,3(a1)
.LVL11:
	.loc 1 61 37
	slli	a0,a0,24
	.loc 1 61 12
	or	a5,a5,a0
	.loc 1 62 8
	lbu	a0,4(a1)
	.loc 1 61 12
	or	a5,a5,a2
.LVL12:
	.loc 1 62 5 is_stmt 1
	.loc 1 65 16 is_stmt 0
	ori	a2,a5,2
	.loc 1 62 8
	beq	a0,zero,.L7
	.loc 1 63 9 is_stmt 1
	.loc 1 63 16 is_stmt 0
	andi	a2,a5,-3
.LVL13:
.L7:
	.loc 1 67 5 is_stmt 1
	.loc 1 67 8 is_stmt 0
	lbu	a0,5(a1)
	.loc 1 70 16
	ori	a5,a2,4
	.loc 1 67 8
	beq	a0,zero,.L9
	.loc 1 68 9 is_stmt 1
	.loc 1 68 16 is_stmt 0
	andi	a5,a2,-5
.LVL14:
.L9:
	.loc 1 72 5 is_stmt 1
	.loc 1 75 58 is_stmt 0
	li	a2,4096
	.loc 1 72 60
	srw	a5,a3,a4,0
	.loc 1 75 5 is_stmt 1
	.loc 1 75 58 is_stmt 0
	addi	a2,a2,-1280
	.loc 1 75 12
	lrw	a5,a3,a2,0
.LVL15:
	.loc 1 76 5 is_stmt 1
	.loc 1 76 12 is_stmt 0
	li	a0,-8323072
	addi	a0,a0,-1
	and	a0,a5,a0
.LVL16:
	.loc 1 77 5 is_stmt 1
	.loc 1 77 19 is_stmt 0
	lbu	a5,7(a1)
	.loc 1 78 8
	lbu	a6,6(a1)
	.loc 1 77 36
	slli	a5,a5,16
	.loc 1 77 12
	or	a5,a5,a0
.LVL17:
	.loc 1 78 5 is_stmt 1
	.loc 1 81 16 is_stmt 0
	andi	a0,a5,-129
	.loc 1 78 8
	beq	a6,zero,.L11
	.loc 1 79 9 is_stmt 1
	.loc 1 79 16 is_stmt 0
	ori	a0,a5,128
.LVL18:
.L11:
	.loc 1 83 5 is_stmt 1
	.loc 1 83 8 is_stmt 0
	lbu	a1,8(a1)
.LVL19:
	.loc 1 86 16
	ori	a5,a0,2
	.loc 1 83 8
	bne	a1,zero,.L13
	.loc 1 84 9 is_stmt 1
	.loc 1 84 16 is_stmt 0
	andi	a5,a0,-3
.LVL20:
.L13:
	.loc 1 89 5 is_stmt 1
	.loc 1 90 5
	.loc 1 90 12 is_stmt 0
	ori	a5,a5,12
.LVL21:
	.loc 1 92 5 is_stmt 1
	.loc 1 92 60 is_stmt 0
	srw	a5,a3,a2,0
	.loc 1 95 5 is_stmt 1
	.loc 1 95 12 is_stmt 0
	lrw	a5,a3,a4,0
.LVL22:
	.loc 1 96 5 is_stmt 1
	.loc 1 96 12 is_stmt 0
	ori	a5,a5,1
.LVL23:
	.loc 1 97 5 is_stmt 1
	.loc 1 97 60 is_stmt 0
	srw	a5,a3,a4,0
	.loc 1 99 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_wo_init, .-qcc74x_wo_init
	.section	.text.qcc74x_wo_enable,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_enable
	.type	qcc74x_wo_enable, @function
qcc74x_wo_enable:
.LFB7:
	.loc 1 102 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 106 5
	.loc 1 107 5
	.loc 1 109 5
	.loc 1 110 5
	.loc 1 110 58 is_stmt 0
	lw	a3,4(a0)
	li	a5,4096
	addi	a5,a5,-1284
	.loc 1 110 12
	lrw	a4,a3,a5,0
.LVL25:
	.loc 1 111 5 is_stmt 1
	.loc 1 111 12 is_stmt 0
	ori	a4,a4,1
.LVL26:
	.loc 1 112 5 is_stmt 1
	.loc 1 112 60 is_stmt 0
	srw	a4,a3,a5,0
.LVL27:
	.loc 1 114 1
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_wo_enable, .-qcc74x_wo_enable
	.section	.text.qcc74x_wo_disable,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_disable
	.type	qcc74x_wo_disable, @function
qcc74x_wo_disable:
.LFB8:
	.loc 1 117 1 is_stmt 1
	.cfi_startproc
.LVL28:
	.loc 1 121 5
	.loc 1 122 5
	.loc 1 124 5
	.loc 1 125 5
	.loc 1 125 58 is_stmt 0
	lw	a3,4(a0)
	li	a5,4096
	addi	a5,a5,-1284
	.loc 1 125 12
	lrw	a4,a3,a5,0
.LVL29:
	.loc 1 126 5 is_stmt 1
	.loc 1 126 12 is_stmt 0
	andi	a4,a4,-2
.LVL30:
	.loc 1 127 5 is_stmt 1
	.loc 1 127 60 is_stmt 0
	srw	a4,a3,a5,0
.LVL31:
	.loc 1 129 1
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_wo_disable, .-qcc74x_wo_disable
	.section	.text.qcc74x_wo_get_fifo_available_cnt,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_get_fifo_available_cnt
	.type	qcc74x_wo_get_fifo_available_cnt, @function
qcc74x_wo_get_fifo_available_cnt:
.LFB9:
	.loc 1 132 1 is_stmt 1
	.cfi_startproc
.LVL32:
	.loc 1 136 5
	.loc 1 138 5
	.loc 1 138 63 is_stmt 0
	lw	a4,4(a0)
	li	a5,4096
	addi	a5,a5,-1280
	.loc 1 138 12
	lrw	a0,a4,a5,0
.LVL33:
	.loc 1 139 5 is_stmt 1
	.loc 1 140 5
	.loc 1 141 5
	.loc 1 143 1 is_stmt 0
	extu	a0,a0,8+8-1,8
.LVL34:
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_wo_get_fifo_available_cnt, .-qcc74x_wo_get_fifo_available_cnt
	.section	.text.qcc74x_wo_push_fifo,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_push_fifo
	.type	qcc74x_wo_push_fifo, @function
qcc74x_wo_push_fifo:
.LFB10:
	.loc 1 146 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 150 5
	.loc 1 151 5
	.loc 1 146 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s4,8(sp)
	.cfi_offset 20, -24
	mv	s4,a0
	.loc 1 151 21
	li	a0,1
.LVL36:
	.loc 1 146 1
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	sw	s5,4(sp)
	sw	s6,0(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 146 1
	mv	s5,a2
	mv	s6,a1
	.loc 1 151 21
	call	qcc74x_clk_get_system_clock
.LVL37:
	mv	s0,a0
.LVL38:
	.loc 1 152 5 is_stmt 1
	.loc 1 152 21 is_stmt 0
	li	a0,3
	call	qcc74x_clk_get_system_clock
.LVL39:
	.loc 1 153 5 is_stmt 1
	.loc 1 153 28 is_stmt 0
	divu	s0,s0,a0
.LVL40:
	.loc 1 158 62
	li	s3,4096
	.loc 1 150 14
	li	s1,0
	.loc 1 158 62
	addi	s3,s3,-1276
	.loc 1 153 14
	slli	s0,s0,9
.LVL41:
	.loc 1 154 5 is_stmt 1
	.loc 1 156 5
	.loc 1 154 14 is_stmt 0
	mv	s2,s0
.LVL42:
.L21:
	.loc 1 156 11 is_stmt 1
	bgeu	s1,s5,.L20
	.loc 1 157 9
	.loc 1 157 13 is_stmt 0
	mv	a0,s4
	call	qcc74x_wo_get_fifo_available_cnt
.LVL43:
	.loc 1 157 12
	beq	a0,zero,.L22
	.loc 1 158 13 is_stmt 1
.LVL44:
	.loc 1 158 76 is_stmt 0
	lrhu	a4,s6,s1,1
	.loc 1 158 62
	lw	a5,4(s4)
	.loc 1 159 16
	mv	s2,s0
.LVL45:
	.loc 1 158 94
	addi	s1,s1,1
.LVL46:
	.loc 1 158 73
	srw	a4,a5,s3,0
	.loc 1 159 13 is_stmt 1
.LVL47:
	j	.L21
.L22:
	.loc 1 161 13
	.loc 1 161 15 is_stmt 0
	addi	s2,s2,-1
.LVL48:
	.loc 1 162 13 is_stmt 1
	.loc 1 162 16 is_stmt 0
	bne	s2,zero,.L21
.L20:
	.loc 1 169 1
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL49:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL50:
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
.LVL51:
	lw	s5,4(sp)
	.cfi_restore 21
.LVL52:
	lw	s6,0(sp)
	.cfi_restore 22
.LVL53:
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL54:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	qcc74x_wo_push_fifo, .-qcc74x_wo_push_fifo
	.section	.text.qcc74x_wo_clear_fifo,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_clear_fifo
	.type	qcc74x_wo_clear_fifo, @function
qcc74x_wo_clear_fifo:
.LFB11:
	.loc 1 172 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 176 5
	.loc 1 177 5
	.loc 1 179 5
	.loc 1 180 5
	.loc 1 180 58 is_stmt 0
	lw	a3,4(a0)
	li	a5,4096
	addi	a5,a5,-1280
	.loc 1 180 12
	lrw	a4,a3,a5,0
.LVL56:
	.loc 1 181 5 is_stmt 1
	.loc 1 181 12 is_stmt 0
	ori	a4,a4,4
.LVL57:
	.loc 1 182 5 is_stmt 1
	.loc 1 182 60 is_stmt 0
	srw	a4,a3,a5,0
.LVL58:
	.loc 1 184 1
	ret
	.cfi_endproc
.LFE11:
	.size	qcc74x_wo_clear_fifo, .-qcc74x_wo_clear_fifo
	.section	.text.qcc74x_wo_enable_dma,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_enable_dma
	.type	qcc74x_wo_enable_dma, @function
qcc74x_wo_enable_dma:
.LFB12:
	.loc 1 187 1 is_stmt 1
	.cfi_startproc
.LVL59:
	.loc 1 191 5
	.loc 1 192 5
	.loc 1 194 5
	.loc 1 195 5
	.loc 1 195 58 is_stmt 0
	lw	a3,4(a0)
	li	a5,4096
	addi	a5,a5,-1280
	.loc 1 195 12
	lrw	a4,a3,a5,0
.LVL60:
	.loc 1 196 5 is_stmt 1
	.loc 1 196 12 is_stmt 0
	ori	a4,a4,1
.LVL61:
	.loc 1 197 5 is_stmt 1
	.loc 1 197 60 is_stmt 0
	srw	a4,a3,a5,0
.LVL62:
	.loc 1 199 1
	ret
	.cfi_endproc
.LFE12:
	.size	qcc74x_wo_enable_dma, .-qcc74x_wo_enable_dma
	.section	.text.qcc74x_wo_disable_dma,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_disable_dma
	.type	qcc74x_wo_disable_dma, @function
qcc74x_wo_disable_dma:
.LFB13:
	.loc 1 202 1 is_stmt 1
	.cfi_startproc
.LVL63:
	.loc 1 206 5
	.loc 1 207 5
	.loc 1 209 5
	.loc 1 210 5
	.loc 1 210 58 is_stmt 0
	lw	a3,4(a0)
	li	a5,4096
	addi	a5,a5,-1280
	.loc 1 210 12
	lrw	a4,a3,a5,0
.LVL64:
	.loc 1 211 5 is_stmt 1
	.loc 1 211 12 is_stmt 0
	andi	a4,a4,-2
.LVL65:
	.loc 1 212 5 is_stmt 1
	.loc 1 212 60 is_stmt 0
	srw	a4,a3,a5,0
.LVL66:
	.loc 1 214 1
	ret
	.cfi_endproc
.LFE13:
	.size	qcc74x_wo_disable_dma, .-qcc74x_wo_disable_dma
	.section	.text.qcc74x_wo_get_int_status,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_get_int_status
	.type	qcc74x_wo_get_int_status, @function
qcc74x_wo_get_int_status:
.LFB14:
	.loc 1 217 1 is_stmt 1
	.cfi_startproc
.LVL67:
	.loc 1 221 5
	.loc 1 222 5
	.loc 1 224 5
	.loc 1 224 63 is_stmt 0
	lw	a4,4(a0)
	li	a5,4096
	addi	a5,a5,-1280
	.loc 1 224 12
	lrw	a5,a4,a5,0
.LVL68:
	.loc 1 225 5 is_stmt 1
	.loc 1 228 16 is_stmt 0
	li	a4,134217728
	and	a4,a5,a4
	.loc 1 225 8
	extu	a0,a5,26+1-1,26
.LVL69:
	.loc 1 228 5 is_stmt 1
	.loc 1 228 8 is_stmt 0
	beq	a4,zero,.L31
	.loc 1 229 9 is_stmt 1
	.loc 1 229 13 is_stmt 0
	ori	a0,a0,2
.LVL70:
.L31:
	.loc 1 231 5 is_stmt 1
	.loc 1 231 16 is_stmt 0
	li	a4,268435456
	and	a5,a5,a4
.LVL71:
	.loc 1 231 8
	beq	a5,zero,.L30
	.loc 1 232 9 is_stmt 1
	.loc 1 232 13 is_stmt 0
	ori	a0,a0,4
.LVL72:
	.loc 1 234 5 is_stmt 1
.L30:
	.loc 1 236 1 is_stmt 0
	ret
	.cfi_endproc
.LFE14:
	.size	qcc74x_wo_get_int_status, .-qcc74x_wo_get_int_status
	.section	.text.qcc74x_wo_int_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_int_mask
	.type	qcc74x_wo_int_mask, @function
qcc74x_wo_int_mask:
.LFB15:
	.loc 1 239 1 is_stmt 1
	.cfi_startproc
.LVL73:
	.loc 1 243 5
	.loc 1 244 5
	.loc 1 246 5
	.loc 1 247 5
	.loc 1 247 58 is_stmt 0
	lw	a3,4(a0)
	li	a4,4096
	addi	a4,a4,-1280
	.loc 1 247 12
	lrw	a5,a3,a4,0
.LVL74:
	.loc 1 248 5 is_stmt 1
	.loc 1 248 18 is_stmt 0
	andi	a2,a1,1
	.loc 1 248 8
	beq	a2,zero,.L40
	.loc 1 249 9 is_stmt 1
	.loc 1 249 16 is_stmt 0
	li	a2,8388608
	or	a5,a5,a2
.LVL75:
.L40:
	.loc 1 251 5 is_stmt 1
	.loc 1 251 18 is_stmt 0
	andi	a2,a1,2
	.loc 1 251 8
	beq	a2,zero,.L41
	.loc 1 252 9 is_stmt 1
	.loc 1 252 16 is_stmt 0
	li	a2,16777216
	or	a5,a5,a2
.LVL76:
.L41:
	.loc 1 254 5 is_stmt 1
	.loc 1 254 18 is_stmt 0
	andi	a1,a1,4
.LVL77:
	.loc 1 254 8
	beq	a1,zero,.L42
	.loc 1 255 9 is_stmt 1
	.loc 1 255 16 is_stmt 0
	li	a2,33554432
	or	a5,a5,a2
.LVL78:
.L42:
	.loc 1 257 5 is_stmt 1
	.loc 1 257 60 is_stmt 0
	srw	a5,a3,a4,0
.LVL79:
	.loc 1 259 1
	ret
	.cfi_endproc
.LFE15:
	.size	qcc74x_wo_int_mask, .-qcc74x_wo_int_mask
	.section	.text.qcc74x_wo_int_unmask,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_int_unmask
	.type	qcc74x_wo_int_unmask, @function
qcc74x_wo_int_unmask:
.LFB16:
	.loc 1 262 1 is_stmt 1
	.cfi_startproc
.LVL80:
	.loc 1 266 5
	.loc 1 267 5
	.loc 1 269 5
	.loc 1 270 5
	.loc 1 270 58 is_stmt 0
	lw	a2,4(a0)
	li	a4,4096
	addi	a4,a4,-1280
	.loc 1 270 12
	lrw	a5,a2,a4,0
.LVL81:
	.loc 1 271 5 is_stmt 1
	.loc 1 271 18 is_stmt 0
	andi	a3,a1,1
	.loc 1 271 8
	beq	a3,zero,.L53
	.loc 1 272 9 is_stmt 1
	.loc 1 272 16 is_stmt 0
	li	a3,-8388608
	addi	a3,a3,-1
	and	a5,a5,a3
.LVL82:
.L53:
	.loc 1 274 5 is_stmt 1
	.loc 1 274 18 is_stmt 0
	andi	a3,a1,2
	.loc 1 274 8
	beq	a3,zero,.L54
	.loc 1 275 9 is_stmt 1
	.loc 1 275 16 is_stmt 0
	li	a3,-16777216
	addi	a3,a3,-1
	and	a5,a5,a3
.LVL83:
.L54:
	.loc 1 277 5 is_stmt 1
	.loc 1 277 18 is_stmt 0
	andi	a1,a1,4
.LVL84:
	.loc 1 277 8
	beq	a1,zero,.L55
	.loc 1 278 9 is_stmt 1
	.loc 1 278 16 is_stmt 0
	li	a3,-33554432
	addi	a3,a3,-1
	and	a5,a5,a3
.LVL85:
.L55:
	.loc 1 280 5 is_stmt 1
	.loc 1 280 60 is_stmt 0
	srw	a5,a2,a4,0
.LVL86:
	.loc 1 282 1
	ret
	.cfi_endproc
.LFE16:
	.size	qcc74x_wo_int_unmask, .-qcc74x_wo_int_unmask
	.section	.text.qcc74x_wo_int_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_int_clear
	.type	qcc74x_wo_int_clear, @function
qcc74x_wo_int_clear:
.LFB17:
	.loc 1 285 1 is_stmt 1
	.cfi_startproc
.LVL87:
	.loc 1 289 5
	.loc 1 290 5
	.loc 1 292 5
	.loc 1 293 5
	.loc 1 293 58 is_stmt 0
	lw	a3,4(a0)
	li	a4,4096
	addi	a4,a4,-1280
	.loc 1 293 12
	lrw	a5,a3,a4,0
.LVL88:
	.loc 1 294 5 is_stmt 1
	.loc 1 294 18 is_stmt 0
	andi	a2,a1,1
	.loc 1 294 8
	beq	a2,zero,.L66
	.loc 1 295 9 is_stmt 1
	.loc 1 295 16 is_stmt 0
	ori	a5,a5,8
.LVL89:
.L66:
	.loc 1 297 5 is_stmt 1
	.loc 1 298 5
	.loc 1 299 5
	.loc 1 299 18 is_stmt 0
	andi	a1,a1,4
.LVL90:
	.loc 1 299 8
	beq	a1,zero,.L67
	.loc 1 300 9 is_stmt 1
	.loc 1 300 16 is_stmt 0
	ori	a5,a5,4
.LVL91:
.L67:
	.loc 1 302 5 is_stmt 1
	.loc 1 302 60 is_stmt 0
	srw	a5,a3,a4,0
.LVL92:
	.loc 1 304 1
	ret
	.cfi_endproc
.LFE17:
	.size	qcc74x_wo_int_clear, .-qcc74x_wo_int_clear
	.section	.text.qcc74x_wo_uart_init,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_uart_init
	.type	qcc74x_wo_uart_init, @function
qcc74x_wo_uart_init:
.LFB18:
	.loc 1 307 1 is_stmt 1
	.cfi_startproc
.LVL93:
	.loc 1 308 5
	.loc 1 313 5
	.loc 1 307 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	sw	s0,40(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 307 1
	mv	s3,a0
	mv	s2,a2
	mv	s1,a1
	.loc 1 313 8
	bne	a1,zero,.L75
	.loc 1 314 18
	li	s1,1998848
	addi	s1,s1,1152
.L75:
.LVL94:
	.loc 1 316 5 is_stmt 1
	.loc 1 316 16 is_stmt 0
	li	a0,3
.LVL95:
	call	qcc74x_clk_get_system_clock
.LVL96:
	.loc 1 316 14
	divu	s1,a0,s1
.LVL97:
	.loc 1 317 5 is_stmt 1
	.loc 1 320 27 is_stmt 0
	li	a5,1073807360
	addi	a5,a5,257
	.loc 1 328 14
	li	s0,1
	.loc 1 329 5
	li	a2,1
	mv	a1,s2
	mv	a0,s3
	.loc 1 320 27
	sw	a5,8(sp)
	.loc 1 328 14
	sb	s0,12(sp)
	.loc 1 318 25
	sb	zero,6(sp)
	.loc 1 317 24
	sh	s1,4(sp)
	.loc 1 319 25
	sb	s1,7(sp)
	.loc 1 320 5 is_stmt 1
	.loc 1 321 5
	.loc 1 322 5
	.loc 1 326 5
	.loc 1 328 5
	.loc 1 329 5
	call	qcc74x_wo_pin_init
.LVL98:
	.loc 1 330 5
	addi	a1,sp,4
	mv	a0,s3
	call	qcc74x_wo_init
.LVL99:
	.loc 1 331 5
	.loc 1 332 5
	.loc 1 332 43 is_stmt 0
	andi	a2,s2,7
	.loc 1 332 27
	sll	a2,s0,a2
	.loc 1 332 22
	extu	a2,a2,15,0
	lui	a5,%hi(.LANCHOR0)
	.loc 1 333 41
	slli	a4,a2,8
	.loc 1 332 22
	sh	a2,%lo(.LANCHOR0)(a5)
	.loc 1 333 5 is_stmt 1
	.loc 1 333 41 is_stmt 0
	extu	a4,a4,15,0
	.loc 1 333 21
	lui	a5,%hi(.LANCHOR1)
	.loc 1 336 1
	lw	ra,44(sp)
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	.loc 1 333 21
	sh	a4,%lo(.LANCHOR1)(a5)
	.loc 1 334 5 is_stmt 1
	.loc 1 334 23 is_stmt 0
	lui	a5,%hi(.LANCHOR2)
	addi	a5,a5,%lo(.LANCHOR2)
	sh	a4,0(a5)
	.loc 1 335 5 is_stmt 1
	.loc 1 335 23 is_stmt 0
	sh	a2,18(a5)
	.loc 1 336 1
	lw	s1,36(sp)
	.cfi_restore 9
.LVL100:
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL101:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE18:
	.size	qcc74x_wo_uart_init, .-qcc74x_wo_uart_init
	.section	.text.qcc74x_wo_uart_putchar,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_uart_putchar
	.type	qcc74x_wo_uart_putchar, @function
qcc74x_wo_uart_putchar:
.LFB19:
	.loc 1 339 1 is_stmt 1
	.cfi_startproc
.LVL102:
	.loc 1 340 5
.LBB2:
	.loc 1 340 10
	.loc 1 340 25
	.loc 1 344 35 is_stmt 0
	lui	a5,%hi(.LANCHOR1)
	lhu	t1,%lo(.LANCHOR1)(a5)
	.loc 1 342 35
	lui	a5,%hi(.LANCHOR0)
	lhu	a7,%lo(.LANCHOR0)(a5)
	lui	a5,%hi(.LANCHOR2)
	addi	a3,a5,%lo(.LANCHOR2)
	li	a4,0
	.loc 1 340 5
	li	a6,8
.LVL103:
.L81:
	.loc 1 341 9 is_stmt 1
	.loc 1 341 17 is_stmt 0
	sra	a2,a1,a4
	.loc 1 341 23
	andi	a2,a2,1
	.loc 1 341 12
	beq	a2,zero,.L79
	.loc 1 342 13 is_stmt 1
	.loc 1 342 35 is_stmt 0
	sh	a7,2(a3)
.L80:
	.loc 1 340 32 is_stmt 1 discriminator 2
.LVL104:
	.loc 1 340 25 discriminator 2
	.loc 1 340 5 is_stmt 0 discriminator 2
	addi	a4,a4,1
.LVL105:
	addi	a3,a3,2
	bne	a4,a6,.L81
.LBE2:
	.loc 1 347 5 is_stmt 1
	li	a2,10
	addi	a1,a5,%lo(.LANCHOR2)
.LVL106:
	tail	qcc74x_wo_push_fifo
.LVL107:
.L79:
.LBB3:
	.loc 1 344 13
	.loc 1 344 35 is_stmt 0
	sh	t1,2(a3)
	j	.L80
.LBE3:
	.cfi_endproc
.LFE19:
	.size	qcc74x_wo_uart_putchar, .-qcc74x_wo_uart_putchar
	.section	.text.qcc74x_wo_uart_put,"ax",@progbits
	.align	1
	.globl	qcc74x_wo_uart_put
	.type	qcc74x_wo_uart_put, @function
qcc74x_wo_uart_put:
.LFB20:
	.loc 1 351 1 is_stmt 1
	.cfi_startproc
.LVL108:
	.loc 1 352 5
.LBB4:
	.loc 1 352 10
.LBE4:
	.loc 1 351 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	mv	s0,a1
	add	s1,a1,a2
.LVL109:
.L84:
.LBB5:
	.loc 1 352 26 is_stmt 1 discriminator 1
	.loc 1 352 5 is_stmt 0 discriminator 1
	bne	s0,s1,.L85
.LBE5:
	.loc 1 355 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL110:
	lw	s1,20(sp)
	.cfi_restore 9
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL111:
.L85:
	.cfi_restore_state
.LBB6:
	.loc 1 353 9 is_stmt 1 discriminator 3
	lbuia	a1,(s0),1,0
.LVL112:
	sw	a0,12(sp)
	call	qcc74x_wo_uart_putchar
.LVL113:
	lw	a0,12(sp)
	.loc 1 352 35 discriminator 3
.LVL114:
	j	.L84
.LBE6:
	.cfi_endproc
.LFE20:
	.size	qcc74x_wo_uart_put, .-qcc74x_wo_uart_put
	.section	.bss.wo_uart_buff16,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	wo_uart_buff16, @object
	.size	wo_uart_buff16, 20
wo_uart_buff16:
	.zero	20
	.section	.bss.wo_uart_pin_high,"aw",@nobits
	.align	1
	.set	.LANCHOR0,. + 0
	.type	wo_uart_pin_high, @object
	.size	wo_uart_pin_high, 2
wo_uart_pin_high:
	.zero	2
	.section	.bss.wo_uart_pin_low,"aw",@nobits
	.align	1
	.set	.LANCHOR1,. + 0
	.type	wo_uart_pin_low, @object
	.size	wo_uart_pin_low, 2
wo_uart_pin_low:
	.zero	2
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./drivers/lhal/include/qcc74x_wo.h"
	.file 6 "./drivers/lhal/include/qcc74x_clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x814
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF60
	.byte	0xc
	.4byte	.LASF61
	.4byte	.LASF62
	.4byte	.Ldebug_ranges0+0x38
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
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0x6
	.4byte	0xcd
	.byte	0x7
	.byte	0x4
	.4byte	0xd4
	.byte	0x8
	.4byte	.LASF24
	.byte	0x10
	.byte	0x4
	.byte	0x67
	.byte	0x8
	.4byte	0x148
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xd9
	.byte	0
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x69
	.byte	0xe
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x9b
	.byte	0x9
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x9b
	.byte	0xa
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0x9b
	.byte	0xb
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x6e
	.byte	0xb
	.4byte	0xcb
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF25
	.byte	0xa
	.byte	0x5
	.byte	0x2d
	.byte	0x8
	.4byte	0x1be
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x31
	.byte	0xe
	.4byte	0xa7
	.byte	0
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x32
	.byte	0xd
	.4byte	0x9b
	.byte	0x2
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x33
	.byte	0xd
	.4byte	0x9b
	.byte	0x3
	.byte	0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x34
	.byte	0xd
	.4byte	0x9b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0x35
	.byte	0xd
	.4byte	0x9b
	.byte	0x5
	.byte	0x9
	.4byte	.LASF31
	.byte	0x5
	.byte	0x36
	.byte	0xd
	.4byte	0x9b
	.byte	0x6
	.byte	0x9
	.4byte	.LASF32
	.byte	0x5
	.byte	0x37
	.byte	0xd
	.4byte	0x9b
	.byte	0x7
	.byte	0x9
	.4byte	.LASF33
	.byte	0x5
	.byte	0x38
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.byte	0
	.byte	0xb
	.4byte	.LASF63
	.byte	0x1
	.byte	0x5
	.byte	0x10
	.4byte	0x9b
	.byte	0xc
	.4byte	.LASF34
	.byte	0x1
	.byte	0x6
	.byte	0x11
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	wo_uart_pin_high
	.byte	0xc
	.4byte	.LASF35
	.byte	0x1
	.byte	0x7
	.byte	0x11
	.4byte	0xa7
	.byte	0x5
	.byte	0x3
	.4byte	wo_uart_pin_low
	.byte	0xd
	.4byte	0xa7
	.4byte	0x1fe
	.byte	0xe
	.4byte	0x94
	.byte	0x9
	.byte	0
	.byte	0xc
	.4byte	.LASF36
	.byte	0x1
	.byte	0x8
	.byte	0x11
	.4byte	0x1ee
	.byte	0x5
	.byte	0x3
	.4byte	wo_uart_buff16
	.byte	0xf
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x15e
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x1
	.byte	0x9c
	.4byte	0x281
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x15e
	.byte	0x31
	.4byte	0x281
	.4byte	.LLST34
	.byte	0x11
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x15e
	.byte	0x3f
	.4byte	0x287
	.4byte	.LLST35
	.byte	0x10
	.string	"len"
	.byte	0x1
	.2byte	0x15e
	.byte	0x4e
	.4byte	0xb3
	.4byte	.LLST36
	.byte	0x12
	.4byte	.Ldebug_ranges0+0x18
	.byte	0x13
	.string	"i"
	.byte	0x1
	.2byte	0x160
	.byte	0x13
	.4byte	0xb3
	.4byte	.LLST37
	.byte	0x14
	.4byte	.LVL113
	.4byte	0x28d
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xdf
	.byte	0x7
	.byte	0x4
	.4byte	0x9b
	.byte	0xf
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x152
	.byte	0x6
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f7
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x152
	.byte	0x35
	.4byte	0x281
	.4byte	.LLST31
	.byte	0x10
	.string	"ch"
	.byte	0x1
	.2byte	0x152
	.byte	0x42
	.4byte	0x9b
	.4byte	.LLST32
	.byte	0x16
	.4byte	.Ldebug_ranges0+0
	.4byte	0x2de
	.byte	0x13
	.string	"i"
	.byte	0x1
	.2byte	0x154
	.byte	0x12
	.4byte	0x9b
	.4byte	.LLST33
	.byte	0
	.byte	0x17
	.4byte	.LVL107
	.4byte	0x5b2
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x132
	.byte	0x6
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x1
	.byte	0x9c
	.4byte	0x39b
	.byte	0x10
	.string	"dev"
	.byte	0x1
	.2byte	0x132
	.byte	0x32
	.4byte	0x281
	.4byte	.LLST28
	.byte	0x11
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x132
	.byte	0x40
	.4byte	0xb3
	.4byte	.LLST29
	.byte	0x10
	.string	"pin"
	.byte	0x1
	.2byte	0x132
	.byte	0x52
	.4byte	0x9b
	.4byte	.LLST30
	.byte	0x18
	.string	"cfg"
	.byte	0x1
	.2byte	0x134
	.byte	0x1c
	.4byte	0x148
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0x19
	.4byte	.LVL96
	.4byte	0x80a
	.4byte	0x364
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x19
	.4byte	.LVL98
	.4byte	0x7a4
	.4byte	0x384
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL99
	.4byte	0x749
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x54
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x11c
	.byte	0x6
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.4byte	0x3f3
	.byte	0x1a
	.string	"dev"
	.byte	0x1
	.2byte	0x11c
	.byte	0x32
	.4byte	0x281
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x11c
	.byte	0x40
	.4byte	0xb3
	.4byte	.LLST26
	.byte	0x1b
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x121
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST27
	.byte	0x1c
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x122
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0xf
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x105
	.byte	0x6
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.4byte	0x44b
	.byte	0x1a
	.string	"dev"
	.byte	0x1
	.2byte	0x105
	.byte	0x33
	.4byte	0x281
	.byte	0x1
	.byte	0x5a
	.byte	0x11
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x105
	.byte	0x41
	.4byte	0xb3
	.4byte	.LLST24
	.byte	0x1b
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x10a
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST25
	.byte	0x1c
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x10b
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x1d
	.4byte	.LASF46
	.byte	0x1
	.byte	0xee
	.byte	0x6
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x1
	.byte	0x9c
	.4byte	0x49e
	.byte	0x1e
	.string	"dev"
	.byte	0x1
	.byte	0xee
	.byte	0x31
	.4byte	0x281
	.byte	0x1
	.byte	0x5a
	.byte	0x1f
	.4byte	.LASF43
	.byte	0x1
	.byte	0xee
	.byte	0x3f
	.4byte	0xb3
	.4byte	.LLST22
	.byte	0x20
	.4byte	.LASF19
	.byte	0x1
	.byte	0xf3
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST23
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0xf4
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x21
	.4byte	.LASF50
	.byte	0x1
	.byte	0xd8
	.byte	0xa
	.4byte	0xb3
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e9
	.byte	0x22
	.string	"dev"
	.byte	0x1
	.byte	0xd8
	.byte	0x3b
	.4byte	0x281
	.4byte	.LLST19
	.byte	0x20
	.4byte	.LASF44
	.byte	0x1
	.byte	0xdd
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST20
	.byte	0x23
	.string	"sts"
	.byte	0x1
	.byte	0xde
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST21
	.byte	0
	.byte	0x1d
	.4byte	.LASF47
	.byte	0x1
	.byte	0xc9
	.byte	0x6
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x52c
	.byte	0x1e
	.string	"dev"
	.byte	0x1
	.byte	0xc9
	.byte	0x34
	.4byte	0x281
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.4byte	.LASF19
	.byte	0x1
	.byte	0xce
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST18
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0xcf
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x1d
	.4byte	.LASF48
	.byte	0x1
	.byte	0xba
	.byte	0x6
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x56f
	.byte	0x1e
	.string	"dev"
	.byte	0x1
	.byte	0xba
	.byte	0x33
	.4byte	0x281
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.4byte	.LASF19
	.byte	0x1
	.byte	0xbf
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST17
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0xc0
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x1d
	.4byte	.LASF49
	.byte	0x1
	.byte	0xab
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x5b2
	.byte	0x1e
	.string	"dev"
	.byte	0x1
	.byte	0xab
	.byte	0x33
	.4byte	0x281
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.4byte	.LASF19
	.byte	0x1
	.byte	0xb0
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST16
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0xb1
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x21
	.4byte	.LASF51
	.byte	0x1
	.byte	0x91
	.byte	0xa
	.4byte	0xb3
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x682
	.byte	0x22
	.string	"dev"
	.byte	0x1
	.byte	0x91
	.byte	0x36
	.4byte	0x281
	.4byte	.LLST8
	.byte	0x1f
	.4byte	.LASF37
	.byte	0x1
	.byte	0x91
	.byte	0x45
	.4byte	0x682
	.4byte	.LLST9
	.byte	0x22
	.string	"len"
	.byte	0x1
	.byte	0x91
	.byte	0x54
	.4byte	0xb3
	.4byte	.LLST10
	.byte	0x23
	.string	"idx"
	.byte	0x1
	.byte	0x96
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST11
	.byte	0x20
	.4byte	.LASF52
	.byte	0x1
	.byte	0x97
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST12
	.byte	0x20
	.4byte	.LASF53
	.byte	0x1
	.byte	0x98
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST13
	.byte	0x20
	.4byte	.LASF54
	.byte	0x1
	.byte	0x99
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST14
	.byte	0x23
	.string	"to"
	.byte	0x1
	.byte	0x9a
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST15
	.byte	0x19
	.4byte	.LVL37
	.4byte	0x80a
	.4byte	0x65e
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x19
	.4byte	.LVL39
	.4byte	0x80a
	.4byte	0x671
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x14
	.4byte	.LVL43
	.4byte	0x688
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xa7
	.byte	0x21
	.4byte	.LASF55
	.byte	0x1
	.byte	0x83
	.byte	0xa
	.4byte	0xb3
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x6c3
	.byte	0x22
	.string	"dev"
	.byte	0x1
	.byte	0x83
	.byte	0x43
	.4byte	0x281
	.4byte	.LLST6
	.byte	0x20
	.4byte	.LASF44
	.byte	0x1
	.byte	0x88
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST7
	.byte	0
	.byte	0x1d
	.4byte	.LASF56
	.byte	0x1
	.byte	0x74
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x706
	.byte	0x1e
	.string	"dev"
	.byte	0x1
	.byte	0x74
	.byte	0x30
	.4byte	0x281
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.4byte	.LASF19
	.byte	0x1
	.byte	0x79
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST5
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0x7a
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x1d
	.4byte	.LASF57
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x749
	.byte	0x1e
	.string	"dev"
	.byte	0x1
	.byte	0x65
	.byte	0x2f
	.4byte	0x281
	.byte	0x1
	.byte	0x5a
	.byte	0x20
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6a
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST4
	.byte	0xc
	.4byte	.LASF44
	.byte	0x1
	.byte	0x6b
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5e
	.byte	0
	.byte	0x1d
	.4byte	.LASF58
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x79e
	.byte	0x22
	.string	"dev"
	.byte	0x1
	.byte	0x20
	.byte	0x2d
	.4byte	0x281
	.4byte	.LLST1
	.byte	0x22
	.string	"cfg"
	.byte	0x1
	.byte	0x20
	.byte	0x4a
	.4byte	0x79e
	.4byte	.LLST2
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0xb3
	.byte	0x1
	.byte	0x5d
	.byte	0x20
	.4byte	.LASF44
	.byte	0x1
	.byte	0x26
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST3
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x148
	.byte	0x1d
	.4byte	.LASF59
	.byte	0x1
	.byte	0xa
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x80a
	.byte	0x1e
	.string	"dev"
	.byte	0x1
	.byte	0xa
	.byte	0x31
	.4byte	0x281
	.byte	0x1
	.byte	0x5a
	.byte	0x1e
	.string	"pin"
	.byte	0x1
	.byte	0xa
	.byte	0x3e
	.4byte	0x9b
	.byte	0x1
	.byte	0x5b
	.byte	0x24
	.4byte	.LASF33
	.byte	0x1
	.byte	0xa
	.byte	0x4b
	.4byte	0x9b
	.byte	0x1
	.byte	0x5c
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0xb3
	.byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.byte	0x20
	.4byte	.LASF44
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.4byte	0xb3
	.4byte	.LLST0
	.byte	0
	.byte	0x25
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x6
	.2byte	0x136
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
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
	.byte	0x14
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
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
	.byte	0x18
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
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
.LLST34:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL109
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST35:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL109
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST36:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL109
	.4byte	.LFE20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST37:
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x7
	.byte	0x78
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x7
	.byte	0x78
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x8
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x20
	.byte	0x78
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL114
	.4byte	.LFE20
	.2byte	0x7
	.byte	0x78
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL102
	.4byte	.LVL107-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107-1
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST32:
	.4byte	.LVL102
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST33:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LFE19
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL101
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL94
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL93
	.4byte	.LVL96-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL96-1
	.4byte	.LFE18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL87
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL90
	.4byte	.LFE17
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL87
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL92
	.4byte	.LFE17
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL80
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL84
	.4byte	.LFE16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL80
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL86
	.4byte	.LFE16
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL73
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL77
	.4byte	.LFE15
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL73
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL79
	.4byte	.LFE15
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL68
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL67
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE14
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL63
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL66
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL62
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL58
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL51
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37-1
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL53
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL35
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL37-1
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL52
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL54
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL41
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL47
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x38
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL28
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL31
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL27
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL27
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL19
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0x80,0x80,0x78
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x18
	.byte	0x7b
	.byte	0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x37
	.byte	0x24
	.byte	0x7b
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x11
	.byte	0x7b
	.byte	0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x37
	.byte	0x24
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x7a
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x18
	.byte	0x7b
	.byte	0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0x37
	.byte	0x24
	.byte	0x7b
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x38
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0xc
	.4byte	0x400b4e
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5f
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
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
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
.LASF23:
	.string	"user_data"
.LASF53:
	.string	"xclk"
.LASF16:
	.string	"uintptr_t"
.LASF3:
	.string	"__uint8_t"
.LASF50:
	.string	"qcc74x_wo_get_int_status"
.LASF10:
	.string	"long long unsigned int"
.LASF21:
	.string	"sub_idx"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF58:
	.string	"qcc74x_wo_init"
.LASF41:
	.string	"baudrate"
.LASF64:
	.string	"qcc74x_clk_get_system_clock"
.LASF26:
	.string	"code_total_cnt"
.LASF30:
	.string	"code1_first_level"
.LASF62:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/lhal"
.LASF6:
	.string	"long int"
.LASF38:
	.string	"qcc74x_wo_uart_put"
.LASF14:
	.string	"uint16_t"
.LASF45:
	.string	"qcc74x_wo_int_unmask"
.LASF7:
	.string	"__uint32_t"
.LASF51:
	.string	"qcc74x_wo_push_fifo"
.LASF12:
	.string	"unsigned int"
.LASF56:
	.string	"qcc74x_wo_disable"
.LASF57:
	.string	"qcc74x_wo_enable"
.LASF8:
	.string	"long unsigned int"
.LASF18:
	.string	"name"
.LASF28:
	.string	"code1_first_cnt"
.LASF37:
	.string	"data"
.LASF5:
	.string	"short unsigned int"
.LASF48:
	.string	"qcc74x_wo_enable_dma"
.LASF36:
	.string	"wo_uart_buff16"
.LASF60:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF25:
	.string	"qcc74x_wo_cfg_s"
.LASF46:
	.string	"qcc74x_wo_int_mask"
.LASF55:
	.string	"qcc74x_wo_get_fifo_available_cnt"
.LASF42:
	.string	"qcc74x_wo_int_clear"
.LASF40:
	.string	"qcc74x_wo_uart_init"
.LASF34:
	.string	"wo_uart_pin_high"
.LASF59:
	.string	"qcc74x_wo_pin_init"
.LASF19:
	.string	"reg_base"
.LASF1:
	.string	"unsigned char"
.LASF44:
	.string	"regval"
.LASF2:
	.string	"short int"
.LASF11:
	.string	"__uintptr_t"
.LASF43:
	.string	"int_type"
.LASF29:
	.string	"code0_first_level"
.LASF47:
	.string	"qcc74x_wo_disable_dma"
.LASF49:
	.string	"qcc74x_wo_clear_fifo"
.LASF61:
	.string	"./drivers/lhal/src/qcc74x_wo.c"
.LASF54:
	.string	"to_max"
.LASF15:
	.string	"uint32_t"
.LASF31:
	.string	"idle_level"
.LASF20:
	.string	"irq_num"
.LASF35:
	.string	"wo_uart_pin_low"
.LASF17:
	.string	"char"
.LASF33:
	.string	"mode"
.LASF52:
	.string	"fclk"
.LASF4:
	.string	"__uint16_t"
.LASF22:
	.string	"dev_type"
.LASF24:
	.string	"qcc74x_device_s"
.LASF13:
	.string	"uint8_t"
.LASF39:
	.string	"qcc74x_wo_uart_putchar"
.LASF27:
	.string	"code0_first_cnt"
.LASF63:
	.string	"wo_uart_pin"
.LASF32:
	.string	"fifo_threshold"
	.ident	"GCC: (GNU) 10.4.0"
