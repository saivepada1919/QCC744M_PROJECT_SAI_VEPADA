	.file	"qcc74x_auadc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_auadc_init,"ax",@progbits
	.align	1
	.globl	qcc74x_auadc_init
	.type	qcc74x_auadc_init, @function
qcc74x_auadc_init:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_auadc.c"
	.loc 1 5 1
	.cfi_startproc
.LVL0:
	.loc 1 6 5
	.loc 1 7 5
	.loc 1 8 5
	.loc 1 9 5
	.loc 1 10 5
	.loc 1 15 5
	.loc 1 16 5
	.loc 1 18 5
	.loc 1 18 14 is_stmt 0
	lw	a5,4(a0)
.LVL1:
	.loc 1 20 5 is_stmt 1
	.loc 1 25 21 is_stmt 0
	lbu	a4,0(a1)
	li	a0,268435456
.LVL2:
	.loc 1 20 12
	lw	a2,0(a5)
.LVL3:
	.loc 1 22 5 is_stmt 1
	.loc 1 24 5
	.loc 1 25 5
	addi	a0,a0,-1
	.loc 1 25 37 is_stmt 0
	slli	a3,a4,28
	and	a2,a2,a0
.LVL4:
	or	a3,a3,a2
	.loc 1 25 12
	ori	a3,a3,1
.LVL5:
	.loc 1 26 5 is_stmt 1
	.loc 1 26 59 is_stmt 0
	sw	a3,0(a5)
	.loc 1 29 5 is_stmt 1
	.loc 1 29 12 is_stmt 0
	lw	a3,4(a5)
.LVL6:
	.loc 1 30 5 is_stmt 1
	.loc 1 31 12 is_stmt 0
	li	a2,1073741824
	.loc 1 30 12
	andi	a3,a3,-2
.LVL7:
	.loc 1 31 5 is_stmt 1
	.loc 1 31 12 is_stmt 0
	or	a3,a3,a2
.LVL8:
	.loc 1 32 5 is_stmt 1
	.loc 1 32 59 is_stmt 0
	sw	a3,4(a5)
	.loc 1 35 5 is_stmt 1
	.loc 1 37 15 is_stmt 0
	lbu	a6,1(a1)
	.loc 1 35 12
	lw	a3,16(a5)
.LVL9:
	.loc 1 37 5 is_stmt 1
	.loc 1 37 8 is_stmt 0
	bne	a6,zero,.L2
	.loc 1 38 9 is_stmt 1
	.loc 1 38 16 is_stmt 0
	li	a2,-4096
	addi	a2,a2,-1
	and	a3,a3,a2
.LVL10:
.L3:
	.loc 1 45 5 is_stmt 1
	.loc 1 45 59 is_stmt 0
	sw	a3,16(a5)
	.loc 1 48 5 is_stmt 1
	.loc 1 48 12 is_stmt 0
	lw	a3,28(a5)
.LVL11:
	.loc 1 49 5 is_stmt 1
	.loc 1 49 33 is_stmt 0
	addi	a2,a6,-1
	andi	a2,a2,0xff
	.loc 1 49 8
	li	a7,1
	.loc 1 61 16
	andi	a0,a3,-2
	.loc 1 49 8
	bgtu	a2,a7,.L6
	.loc 1 51 9 is_stmt 1
.LVL12:
	.loc 1 53 9
	andi	a3,a3,-57
.LVL13:
	.loc 1 54 9
	.loc 1 57 20 is_stmt 0
	ori	a0,a3,9
	.loc 1 54 12
	bne	a6,a7,.L6
	.loc 1 53 16
	ori	a0,a3,1
.LVL14:
.L6:
	.loc 1 63 5 is_stmt 1
	.loc 1 63 59 is_stmt 0
	sw	a0,28(a5)
	.loc 1 65 5 is_stmt 1
	.loc 1 65 12 is_stmt 0
	lw	a3,104(a5)
.LVL15:
	.loc 1 67 5 is_stmt 1
	.loc 1 67 8 is_stmt 0
	li	a0,1
	bgtu	a2,a0,.L7
	.loc 1 68 37 discriminator 1
	addi	a4,a4,-3
	.loc 1 67 62 discriminator 1
	andi	a4,a4,0xff
	bgtu	a4,a0,.L7
	.loc 1 70 9 is_stmt 1
	.loc 1 70 16 is_stmt 0
	ori	a4,a3,64
.LVL16:
.L8:
	.loc 1 75 5 is_stmt 1
	.loc 1 75 59 is_stmt 0
	sw	a4,104(a5)
	.loc 1 78 5 is_stmt 1
	.loc 1 78 12 is_stmt 0
	addi	a2,a5,128
	lw	a3,0(a2)
.LVL17:
	.loc 1 80 5 is_stmt 1
	.loc 1 80 12 is_stmt 0
	li	a4,-50331648
	addi	a4,a4,-1
	and	a3,a3,a4
.LVL18:
	.loc 1 81 5 is_stmt 1
	.loc 1 81 21 is_stmt 0
	lbu	a4,2(a1)
	.loc 1 112 1
	li	a0,0
	.loc 1 81 35
	slli	a4,a4,24
	.loc 1 81 12
	or	a4,a4,a3
.LVL19:
	.loc 1 84 5 is_stmt 1
	.loc 1 84 12 is_stmt 0
	li	a3,-983040
	addi	a3,a3,-1
	and	a3,a4,a3
.LVL20:
	.loc 1 85 5 is_stmt 1
	.loc 1 86 5
	.loc 1 89 5
	.loc 1 92 5
	.loc 1 93 5
	.loc 1 96 5
	.loc 1 97 5
	.loc 1 98 5
	.loc 1 99 5
	.loc 1 85 21 is_stmt 0
	lbu	a4,3(a1)
	.loc 1 85 38
	slli	a4,a4,16
	.loc 1 85 12
	or	a4,a4,a3
	li	a3,-49152
.LVL21:
	addi	a3,a3,-383
	and	a4,a4,a3
.LVL22:
	.loc 1 102 5 is_stmt 1
	.loc 1 102 12 is_stmt 0
	ori	a4,a4,65
.LVL23:
	.loc 1 103 5 is_stmt 1
	.loc 1 103 59 is_stmt 0
	sw	a4,0(a2)
	.loc 1 106 5 is_stmt 1
	.loc 1 106 12 is_stmt 0
	lw	a4,4(a5)
.LVL24:
	.loc 1 107 5 is_stmt 1
	.loc 1 107 12 is_stmt 0
	ori	a4,a4,1
.LVL25:
	.loc 1 108 5 is_stmt 1
	.loc 1 108 59 is_stmt 0
	sw	a4,4(a5)
	.loc 1 110 5 is_stmt 1
	.loc 1 112 1 is_stmt 0
	ret
.LVL26:
.L2:
	.loc 1 40 9 is_stmt 1
	.loc 1 40 16 is_stmt 0
	li	a2,4096
	or	a3,a3,a2
.LVL27:
	j	.L3
.L7:
	.loc 1 73 9 is_stmt 1
	.loc 1 73 16 is_stmt 0
	andi	a4,a3,-65
.LVL28:
	j	.L8
	.cfi_endproc
.LFE5:
	.size	qcc74x_auadc_init, .-qcc74x_auadc_init
	.section	.text.qcc74x_auadc_adc_init,"ax",@progbits
	.align	1
	.globl	qcc74x_auadc_adc_init
	.type	qcc74x_auadc_adc_init, @function
qcc74x_auadc_adc_init:
.LFB6:
	.loc 1 116 1 is_stmt 1
	.cfi_startproc
.LVL29:
	.loc 1 117 5
	.loc 1 118 5
	.loc 1 119 5
	.loc 1 120 5
	.loc 1 121 5
	.loc 1 122 5
	.loc 1 123 5
	.loc 1 128 5
	.loc 1 129 5
	.loc 1 131 5
	.loc 1 133 5
	.loc 1 133 8 is_stmt 0
	lbu	a5,0(a1)
	.loc 1 135 62
	lw	a3,4(a0)
	.loc 1 133 8
	bne	a5,zero,.L10
	.loc 1 135 9 is_stmt 1
	.loc 1 135 16 is_stmt 0
	lw	a5,104(a3)
.LVL30:
	.loc 1 136 9 is_stmt 1
	.loc 1 137 9
	.loc 1 138 9
	.loc 1 138 16 is_stmt 0
	li	a4,-1660944384
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL31:
	.loc 1 139 9 is_stmt 1
.L17:
	.loc 1 186 5
	.loc 1 186 59 is_stmt 0
	sw	a5,104(a3)
	.loc 1 188 5 is_stmt 1
	.loc 1 190 1 is_stmt 0
	li	a0,0
	ret
.LVL32:
.L10:
	.loc 1 144 5 is_stmt 1
	.loc 1 144 12 is_stmt 0
	lw	a0,104(a3)
.LVL33:
	.loc 1 145 5 is_stmt 1
	.loc 1 146 5
	.loc 1 147 5
	li	a4,-268435456
	addi	a4,a4,-1
	and	a4,a0,a4
	.loc 1 147 12 is_stmt 0
	li	a6,1610612736
	or	a4,a4,a6
.LVL34:
	.loc 1 148 5 is_stmt 1
	.loc 1 148 59 is_stmt 0
	sw	a4,104(a3)
	.loc 1 151 5 is_stmt 1
.LVL35:
	.loc 1 152 5
	.loc 1 153 5
	.loc 1 154 5
	.loc 1 157 5
	.loc 1 158 5
	.loc 1 153 29 is_stmt 0
	lbu	a5,3(a1)
	.loc 1 154 29
	lbu	a4,4(a1)
	.loc 1 158 29
	lbu	a2,2(a1)
.LVL36:
	.loc 1 161 5 is_stmt 1
	.loc 1 153 47 is_stmt 0
	slli	a5,a5,20
	.loc 1 154 47
	slli	a4,a4,16
	or	a5,a5,a4
	li	a4,-276234240
	addi	a4,a4,-1
	and	a0,a0,a4
.LVL37:
	li	a4,-12288
	or	a5,a5,a0
	addi	a4,a4,-1
	and	a5,a5,a4
	.loc 1 158 44
	slli	a4,a2,12
	or	a5,a5,a4
	li	a4,-4096
	addi	a4,a4,255
	and	a5,a5,a4
	.loc 1 162 45
	lbu	a4,5(a1)
	li	a0,3
	.loc 1 161 12
	or	a5,a5,a6
.LVL38:
	.loc 1 162 5 is_stmt 1
	.loc 1 162 45 is_stmt 0
	divu	a4,a4,a0
	.loc 1 165 8
	lbu	a0,1(a1)
	.loc 1 162 50
	slli	a4,a4,8
	.loc 1 162 12
	or	a5,a4,a5
.LVL39:
	.loc 1 165 5 is_stmt 1
	.loc 1 168 16 is_stmt 0
	ori	a4,a5,32
	.loc 1 165 8
	bne	a0,zero,.L13
	.loc 1 166 9 is_stmt 1
	.loc 1 166 16 is_stmt 0
	andi	a4,a5,-33
.LVL40:
.L13:
	.loc 1 172 5 is_stmt 1
	.loc 1 173 48 is_stmt 0
	lbu	a5,6(a1)
	.loc 1 172 12
	andi	a4,a4,-16
.LVL41:
	.loc 1 173 5 is_stmt 1
	.loc 1 177 8 is_stmt 0
	andi	a2,a2,253
	.loc 1 173 12
	or	a5,a5,a4
.LVL42:
	.loc 1 176 5 is_stmt 1
	.loc 1 176 12 is_stmt 0
	li	a4,-50331648
	addi	a4,a4,-1
	and	a5,a5,a4
.LVL43:
	.loc 1 177 5 is_stmt 1
	.loc 1 178 16 is_stmt 0
	li	a4,50331648
	.loc 1 177 8
	beq	a2,zero,.L16
	.loc 1 180 9 is_stmt 1
	.loc 1 180 16 is_stmt 0
	li	a4,33554432
.L16:
	or	a5,a5,a4
.LVL44:
	.loc 1 182 5 is_stmt 1
	.loc 1 185 12 is_stmt 0
	li	a4,268435456
	.loc 1 182 59
	sw	a5,104(a3)
	.loc 1 185 5 is_stmt 1
	.loc 1 185 12 is_stmt 0
	or	a5,a5,a4
.LVL45:
	j	.L17
	.cfi_endproc
.LFE6:
	.size	qcc74x_auadc_adc_init, .-qcc74x_auadc_adc_init
	.section	.text.qcc74x_auadc_link_rxdma,"ax",@progbits
	.align	1
	.globl	qcc74x_auadc_link_rxdma
	.type	qcc74x_auadc_link_rxdma, @function
qcc74x_auadc_link_rxdma:
.LFB7:
	.loc 1 194 1 is_stmt 1
	.cfi_startproc
.LVL46:
	.loc 1 198 5
	.loc 1 199 5
	.loc 1 201 5
	.loc 1 203 5
	.loc 1 203 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 203 12
	lw	a3,128(a5)
.LVL47:
	.loc 1 204 5 is_stmt 1
	.loc 1 207 16 is_stmt 0
	andi	a4,a3,-17
	.loc 1 204 8
	beq	a1,zero,.L20
	.loc 1 205 9 is_stmt 1
	.loc 1 205 16 is_stmt 0
	ori	a4,a3,16
.LVL48:
.L20:
	.loc 1 209 5 is_stmt 1
	.loc 1 209 59 is_stmt 0
	sw	a4,128(a5)
.LVL49:
	.loc 1 210 5 is_stmt 1
	.loc 1 212 1 is_stmt 0
	li	a0,0
.LVL50:
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_auadc_link_rxdma, .-qcc74x_auadc_link_rxdma
	.section	.text.qcc74x_auadc_int_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_auadc_int_mask
	.type	qcc74x_auadc_int_mask, @function
qcc74x_auadc_int_mask:
.LFB8:
	.loc 1 215 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 219 5
	.loc 1 220 5
	.loc 1 222 5
	.loc 1 225 5
	.loc 1 225 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 226 15
	not	a1,a1
.LVL52:
	.loc 1 230 1
	li	a0,0
.LVL53:
	.loc 1 225 12
	lw	a4,128(a5)
.LVL54:
	.loc 1 226 5 is_stmt 1
	.loc 1 226 12 is_stmt 0
	and	a1,a1,a4
.LVL55:
	.loc 1 227 5 is_stmt 1
	.loc 1 227 59 is_stmt 0
	sw	a1,128(a5)
	.loc 1 228 5 is_stmt 1
	.loc 1 230 1 is_stmt 0
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_auadc_int_mask, .-qcc74x_auadc_int_mask
	.section	.text.qcc74x_auadc_int_unmask,"ax",@progbits
	.align	1
	.globl	qcc74x_auadc_int_unmask
	.type	qcc74x_auadc_int_unmask, @function
qcc74x_auadc_int_unmask:
.LFB9:
	.loc 1 233 1 is_stmt 1
	.cfi_startproc
.LVL56:
	.loc 1 237 5
	.loc 1 238 5
	.loc 1 240 5
	.loc 1 243 5
	.loc 1 243 58 is_stmt 0
	lw	a4,4(a0)
	.loc 1 248 1
	li	a0,0
.LVL57:
	.loc 1 243 12
	lw	a5,128(a4)
.LVL58:
	.loc 1 244 5 is_stmt 1
	.loc 1 244 12 is_stmt 0
	or	a5,a5,a1
.LVL59:
	.loc 1 245 5 is_stmt 1
	.loc 1 245 59 is_stmt 0
	sw	a5,128(a4)
	.loc 1 246 5 is_stmt 1
	.loc 1 248 1 is_stmt 0
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_auadc_int_unmask, .-qcc74x_auadc_int_unmask
	.section	.text.qcc74x_auadc_get_intstatus,"ax",@progbits
	.align	1
	.globl	qcc74x_auadc_get_intstatus
	.type	qcc74x_auadc_get_intstatus, @function
qcc74x_auadc_get_intstatus:
.LFB10:
	.loc 1 251 1 is_stmt 1
	.cfi_startproc
.LVL60:
	.loc 1 255 5
	.loc 1 256 5
	.loc 1 257 5
	.loc 1 259 5
	.loc 1 260 5
	.loc 1 262 5
	.loc 1 262 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 262 12
	lw	a5,132(a5)
.LVL61:
	.loc 1 263 5 is_stmt 1
	.loc 1 266 16 is_stmt 0
	andi	a4,a5,4
	.loc 1 264 17
	andi	a0,a5,2
.LVL62:
	.loc 1 266 5 is_stmt 1
	.loc 1 266 8 is_stmt 0
	beq	a4,zero,.L26
	.loc 1 267 9 is_stmt 1
	.loc 1 267 17 is_stmt 0
	ori	a0,a0,4
.LVL63:
.L26:
	.loc 1 269 5 is_stmt 1
	.loc 1 269 16 is_stmt 0
	andi	a5,a5,16
.LVL64:
	.loc 1 269 8
	beq	a5,zero,.L24
	.loc 1 270 9 is_stmt 1
	.loc 1 270 17 is_stmt 0
	ori	a0,a0,16
.LVL65:
	.loc 1 273 5 is_stmt 1
.L24:
	.loc 1 275 1 is_stmt 0
	ret
	.cfi_endproc
.LFE10:
	.size	qcc74x_auadc_get_intstatus, .-qcc74x_auadc_get_intstatus
	.section	.text.qcc74x_auadc_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_auadc_feature_control
	.type	qcc74x_auadc_feature_control, @function
qcc74x_auadc_feature_control:
.LFB11:
	.loc 1 278 1 is_stmt 1
	.cfi_startproc
.LVL66:
	.loc 1 282 5
	.loc 1 283 5
	.loc 1 284 5
	.loc 1 285 5
	.loc 1 287 5
	.loc 1 289 5 is_stmt 0
	li	a5,4
	.loc 1 287 14
	lw	a4,4(a0)
.LVL67:
	.loc 1 289 5 is_stmt 1
	beq	a1,a5,.L36
	bgt	a1,a5,.L37
	li	a5,2
	beq	a1,a5,.L38
	li	a5,3
	beq	a1,a5,.L39
	li	a5,1
	beq	a1,a5,.L40
.LVL68:
.L45:
	.loc 1 329 13
	.loc 1 282 9 is_stmt 0
	li	a0,0
.LVL69:
	.loc 1 329 13
	ret
.LVL70:
.L37:
	.loc 1 289 5
	li	a5,5
	beq	a1,a5,.L42
	li	a5,6
	bne	a1,a5,.L45
	.loc 1 333 13 is_stmt 1
	.loc 1 333 20 is_stmt 0
	lw	a0,132(a4)
.LVL71:
	.loc 1 334 13 is_stmt 1
	.loc 1 334 17 is_stmt 0
	extu	a0,a0,16+4-1,16
.LVL72:
	.loc 1 337 5 is_stmt 1
	.loc 1 339 1 is_stmt 0
	ret
.LVL73:
.L40:
	.loc 1 292 13 is_stmt 1
	.loc 1 292 20 is_stmt 0
	lw	a5,128(a4)
.LVL74:
	.loc 1 293 13 is_stmt 1
	.loc 1 293 20 is_stmt 0
	ori	a5,a5,256
.LVL75:
	.loc 1 294 13 is_stmt 1
.L46:
	.loc 1 328 13
	.loc 1 328 67 is_stmt 0
	sw	a5,128(a4)
	j	.L45
.LVL76:
.L38:
	.loc 1 299 13 is_stmt 1
	.loc 1 299 20 is_stmt 0
	lw	a5,128(a4)
.LVL77:
	.loc 1 300 13 is_stmt 1
	.loc 1 300 20 is_stmt 0
	andi	a5,a5,-257
.LVL78:
	.loc 1 301 13 is_stmt 1
	j	.L46
.LVL79:
.L39:
	.loc 1 306 13
	.loc 1 307 13
	.loc 1 307 20 is_stmt 0
	lw	a5,56(a4)
.LVL80:
	.loc 1 308 13 is_stmt 1
	.loc 1 306 26 is_stmt 0
	slli	a2,a2,1
.LVL81:
	.loc 1 309 44
	andi	a2,a2,510
	.loc 1 308 20
	andi	a5,a5,-512
.LVL82:
	.loc 1 309 13 is_stmt 1
	.loc 1 309 20 is_stmt 0
	or	a2,a2,a5
.LVL83:
	.loc 1 310 13 is_stmt 1
	.loc 1 310 67 is_stmt 0
	sw	a2,56(a4)
	.loc 1 311 13 is_stmt 1
	j	.L45
.LVL84:
.L36:
	.loc 1 316 13
	.loc 1 317 13
	.loc 1 317 20 is_stmt 0
	lw	a5,104(a4)
.LVL85:
	.loc 1 318 13 is_stmt 1
	.loc 1 318 20 is_stmt 0
	li	a3,-4096
	addi	a3,a3,255
	and	a3,a5,a3
.LVL86:
	.loc 1 319 13 is_stmt 1
	.loc 1 316 30 is_stmt 0
	li	a5,3
	divu	a5,a2,a5
	.loc 1 319 44
	li	a2,4096
.LVL87:
	addi	a2,a2,-256
	.loc 1 319 35
	ext	a5,a5,15,0
	slli	a5,a5,8
	.loc 1 319 44
	and	a5,a5,a2
	.loc 1 319 20
	or	a5,a5,a3
.LVL88:
	.loc 1 320 13 is_stmt 1
	.loc 1 320 67 is_stmt 0
	sw	a5,104(a4)
	.loc 1 321 13 is_stmt 1
	j	.L45
.LVL89:
.L42:
	.loc 1 326 13
	.loc 1 326 20 is_stmt 0
	lw	a5,128(a4)
.LVL90:
	.loc 1 327 13 is_stmt 1
	.loc 1 327 20 is_stmt 0
	ori	a5,a5,1
.LVL91:
	j	.L46
	.cfi_endproc
.LFE11:
	.size	qcc74x_auadc_feature_control, .-qcc74x_auadc_feature_control
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_auadc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x4f6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF57
	.byte	0xc
	.4byte	.LASF58
	.4byte	.LASF59
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
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x3f
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x52
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x65
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x78
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x8b
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF12
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x59
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x6c
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x7f
	.byte	0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x25
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.byte	0x6
	.4byte	0x109
	.byte	0x7
	.byte	0x4
	.4byte	0x110
	.byte	0x8
	.4byte	.LASF29
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x184
	.byte	0x9
	.4byte	.LASF23
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0x115
	.byte	0
	.byte	0x9
	.4byte	.LASF24
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xe3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF25
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0xb3
	.byte	0x9
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0xb3
	.byte	0xa
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0xb3
	.byte	0xb
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0x107
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF30
	.byte	0x4
	.byte	0x6
	.byte	0xc4
	.byte	0x8
	.4byte	0x1c6
	.byte	0x9
	.4byte	.LASF31
	.byte	0x6
	.byte	0xc5
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x9
	.4byte	.LASF32
	.byte	0x6
	.byte	0xc6
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xc7
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0xc8
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0
	.byte	0x6
	.4byte	0x184
	.byte	0x8
	.4byte	.LASF35
	.byte	0x7
	.byte	0x6
	.byte	0xd7
	.byte	0x8
	.4byte	0x234
	.byte	0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0xd8
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0xd9
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0xda
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0xdb
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0xdc
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0xdd
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0x9
	.4byte	.LASF42
	.byte	0x6
	.byte	0xde
	.byte	0xd
	.4byte	0xb3
	.byte	0x6
	.byte	0
	.byte	0x6
	.4byte	0x1cb
	.byte	0xb
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x115
	.byte	0x5
	.4byte	0xa0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x2c8
	.byte	0xc
	.string	"dev"
	.byte	0x1
	.2byte	0x115
	.byte	0x3a
	.4byte	0x2c8
	.4byte	.LLST18
	.byte	0xd
	.string	"cmd"
	.byte	0x1
	.2byte	0x115
	.byte	0x43
	.4byte	0xa0
	.byte	0x1
	.byte	0x5b
	.byte	0xc
	.string	"arg"
	.byte	0x1
	.2byte	0x115
	.byte	0x4f
	.4byte	0xfb
	.4byte	.LLST19
	.byte	0xe
	.string	"ret"
	.byte	0x1
	.2byte	0x11a
	.byte	0x9
	.4byte	0xa0
	.4byte	.LLST20
	.byte	0xf
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x11b
	.byte	0xe
	.4byte	0xe3
	.byte	0x1
	.byte	0x5e
	.byte	0x10
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x11c
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST21
	.byte	0x10
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x11d
	.byte	0xd
	.4byte	0xbf
	.4byte	.LLST22
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x11b
	.byte	0x11
	.4byte	.LASF46
	.byte	0x1
	.byte	0xfa
	.byte	0x5
	.4byte	0xa0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x32b
	.byte	0x12
	.string	"dev"
	.byte	0x1
	.byte	0xfa
	.byte	0x38
	.4byte	0x2c8
	.4byte	.LLST14
	.byte	0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0xff
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST15
	.byte	0x10
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x100
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST16
	.byte	0x10
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x101
	.byte	0xd
	.4byte	0xd7
	.4byte	.LLST17
	.byte	0
	.byte	0x11
	.4byte	.LASF48
	.byte	0x1
	.byte	0xe8
	.byte	0x5
	.4byte	0xa0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x382
	.byte	0x12
	.string	"dev"
	.byte	0x1
	.byte	0xe8
	.byte	0x35
	.4byte	0x2c8
	.4byte	.LLST12
	.byte	0x14
	.4byte	.LASF47
	.byte	0x1
	.byte	0xe8
	.byte	0x43
	.4byte	0xe3
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0xed
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST13
	.byte	0x15
	.4byte	.LASF43
	.byte	0x1
	.byte	0xee
	.byte	0xe
	.4byte	0xe3
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0x11
	.4byte	.LASF49
	.byte	0x1
	.byte	0xd6
	.byte	0x5
	.4byte	0xa0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x3dd
	.byte	0x12
	.string	"dev"
	.byte	0x1
	.byte	0xd6
	.byte	0x33
	.4byte	0x2c8
	.4byte	.LLST8
	.byte	0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0xd6
	.byte	0x41
	.4byte	0xe3
	.4byte	.LLST9
	.byte	0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0xdb
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST10
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0xdc
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST11
	.byte	0
	.byte	0x11
	.4byte	.LASF50
	.byte	0x1
	.byte	0xc1
	.byte	0x5
	.4byte	0xa0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x436
	.byte	0x12
	.string	"dev"
	.byte	0x1
	.byte	0xc1
	.byte	0x35
	.4byte	0x2c8
	.4byte	.LLST5
	.byte	0x14
	.4byte	.LASF51
	.byte	0x1
	.byte	0xc1
	.byte	0x3e
	.4byte	0x436
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0xc6
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST6
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0xc7
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST7
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF52
	.byte	0x11
	.4byte	.LASF53
	.byte	0x1
	.byte	0x73
	.byte	0x5
	.4byte	0xa0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x496
	.byte	0x12
	.string	"dev"
	.byte	0x1
	.byte	0x73
	.byte	0x33
	.4byte	0x2c8
	.4byte	.LLST2
	.byte	0x14
	.4byte	.LASF54
	.byte	0x1
	.byte	0x73
	.byte	0x65
	.4byte	0x496
	.byte	0x1
	.byte	0x5b
	.byte	0x13
	.4byte	.LASF24
	.byte	0x1
	.byte	0x80
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST3
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x81
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST4
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x234
	.byte	0x11
	.4byte	.LASF55
	.byte	0x1
	.byte	0x4
	.byte	0x5
	.4byte	0xa0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x4f3
	.byte	0x12
	.string	"dev"
	.byte	0x1
	.byte	0x4
	.byte	0x2f
	.4byte	0x2c8
	.4byte	.LLST0
	.byte	0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0x4
	.byte	0x5d
	.4byte	0x4f3
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.4byte	.LASF24
	.byte	0x1
	.byte	0xf
	.byte	0xe
	.4byte	0xe3
	.byte	0x1
	.byte	0x5f
	.byte	0x13
	.4byte	.LASF43
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST1
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0x1c6
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
	.byte	0x18
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
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
	.byte	0x12
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
	.byte	0x15
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
	.byte	0x16
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST18:
	.4byte	.LVL66
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL68
	.4byte	.LVL70
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LFE11
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL66
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LFE11
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x5
	.byte	0x7c
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0xb
	.byte	0x7c
	.byte	0
	.byte	0xf7
	.byte	0x25
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0xc
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0xf7
	.byte	0x25
	.byte	0x33
	.byte	0xf7
	.byte	0x25
	.byte	0x1b
	.byte	0xf7
	.byte	0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL62
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL62
	.4byte	.LFE10
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL61
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL60
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL57
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x4
	.byte	0x7b
	.byte	0
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL55
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL53
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL55
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL50
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL49
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL48
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL31
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0xa
	.byte	0x7f
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0xff,0x79
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x7
	.byte	0x7a
	.byte	0
	.byte	0x48
	.byte	0x4a
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x26
	.byte	0x7a
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xa3,0xfc,0x7e
	.byte	0x1a
	.byte	0x7b
	.byte	0x3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x44
	.byte	0x24
	.byte	0x21
	.byte	0x7b
	.byte	0x4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0xb
	.2byte	0xcfff
	.byte	0x1a
	.byte	0x48
	.byte	0x4a
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x2e
	.byte	0x7a
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xa3,0xfc,0x7e
	.byte	0x1a
	.byte	0x7b
	.byte	0x3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x44
	.byte	0x24
	.byte	0x21
	.byte	0x7b
	.byte	0x4
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x21
	.byte	0xb
	.2byte	0xcfff
	.byte	0x1a
	.byte	0x7c
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3c
	.byte	0x24
	.byte	0x21
	.byte	0x48
	.byte	0x4a
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL45
	.4byte	.LFE6
	.2byte	0x3
	.byte	0x7d
	.byte	0xe8,0
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0xb
	.byte	0x7c
	.byte	0
	.byte	0xc
	.4byte	0xfffffff
	.byte	0x1a
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x5
	.byte	0x7d
	.byte	0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x15
	.byte	0x7b
	.byte	0x3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x21
	.byte	0x11
	.byte	0x83,0xfd,0x7c
	.byte	0x1a
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0x40
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL28
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x4c
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"user_data"
.LASF33:
	.string	"data_format"
.LASF21:
	.string	"size_t"
.LASF20:
	.string	"uintptr_t"
.LASF3:
	.string	"__uint8_t"
.LASF46:
	.string	"qcc74x_auadc_get_intstatus"
.LASF13:
	.string	"long long unsigned int"
.LASF40:
	.string	"adc_pga_nega_ch"
.LASF42:
	.string	"adc_measure_rate"
.LASF26:
	.string	"sub_idx"
.LASF16:
	.string	"int16_t"
.LASF12:
	.string	"long long int"
.LASF1:
	.string	"signed char"
.LASF55:
	.string	"qcc74x_auadc_init"
.LASF9:
	.string	"long int"
.LASF59:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/lhal"
.LASF17:
	.string	"uint16_t"
.LASF45:
	.string	"qcc74x_auadc_feature_control"
.LASF10:
	.string	"__uint32_t"
.LASF4:
	.string	"__int16_t"
.LASF53:
	.string	"qcc74x_auadc_adc_init"
.LASF32:
	.string	"input_mode"
.LASF44:
	.string	"volume_val"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"long unsigned int"
.LASF23:
	.string	"name"
.LASF7:
	.string	"short unsigned int"
.LASF30:
	.string	"qcc74x_auadc_init_config_s"
.LASF49:
	.string	"qcc74x_auadc_int_mask"
.LASF36:
	.string	"auadc_analog_en"
.LASF57:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF54:
	.string	"adc_analog_cfg"
.LASF35:
	.string	"qcc74x_auadc_adc_init_config_s"
.LASF51:
	.string	"enable"
.LASF24:
	.string	"reg_base"
.LASF48:
	.string	"qcc74x_auadc_int_unmask"
.LASF41:
	.string	"adc_pga_gain"
.LASF52:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF2:
	.string	"unsigned char"
.LASF43:
	.string	"regval"
.LASF5:
	.string	"short int"
.LASF47:
	.string	"int_sts"
.LASF14:
	.string	"__uintptr_t"
.LASF58:
	.string	"./drivers/lhal/src/qcc74x_auadc.c"
.LASF38:
	.string	"adc_pga_mode"
.LASF19:
	.string	"uint32_t"
.LASF25:
	.string	"irq_num"
.LASF22:
	.string	"char"
.LASF56:
	.string	"config"
.LASF37:
	.string	"adc_mode"
.LASF6:
	.string	"__uint16_t"
.LASF8:
	.string	"__int32_t"
.LASF27:
	.string	"dev_type"
.LASF29:
	.string	"qcc74x_device_s"
.LASF15:
	.string	"uint8_t"
.LASF39:
	.string	"adc_pga_posi_ch"
.LASF34:
	.string	"fifo_threshold"
.LASF50:
	.string	"qcc74x_auadc_link_rxdma"
.LASF31:
	.string	"sampling_rate"
	.ident	"GCC: (GNU) 10.4.0"
