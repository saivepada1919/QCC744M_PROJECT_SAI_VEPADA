	.file	"qcc74x_audac.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_audac_init,"ax",@progbits
	.align	1
	.globl	qcc74x_audac_init
	.type	qcc74x_audac_init, @function
qcc74x_audac_init:
.LFB5:
	.file 1 "./drivers/lhal/src/qcc74x_audac.c"
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
	.loc 1 21 5
	.loc 1 22 5
	.loc 1 24 5
	.loc 1 24 14 is_stmt 0
	lw	a5,4(a0)
.LVL1:
	.loc 1 27 5 is_stmt 1
	li	a3,268435456
	addi	a3,a3,-1
	.loc 1 27 12 is_stmt 0
	lw	a4,0(a5)
.LVL2:
	.loc 1 28 5 is_stmt 1
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 33 5
	.loc 1 34 15 is_stmt 0
	lbu	a2,1(a1)
	and	a4,a4,a3
.LVL3:
	.loc 1 33 12
	li	a3,134217728
	addi	a3,a3,3
	or	a4,a4,a3
.LVL4:
	.loc 1 34 5 is_stmt 1
	.loc 1 35 26 is_stmt 0
	lbu	a3,0(a1)
	.loc 1 34 8
	beq	a2,zero,.L2
	.loc 1 35 9 is_stmt 1
	.loc 1 35 42 is_stmt 0
	addi	a3,a3,8
.L2:
	.loc 1 37 9 is_stmt 1
	.loc 1 37 41 is_stmt 0
	slli	a3,a3,28
	.loc 1 37 16
	or	a4,a3,a4
.LVL5:
	.loc 1 39 5 is_stmt 1
	.loc 1 39 60 is_stmt 0
	sw	a4,0(a5)
	.loc 1 41 5 is_stmt 1
	.loc 1 41 12 is_stmt 0
	lw	a4,20(a5)
.LVL6:
	.loc 1 43 5 is_stmt 1
	.loc 1 44 5
	.loc 1 45 5
	.loc 1 46 5
	.loc 1 49 5
	.loc 1 50 15 is_stmt 0
	lbu	a6,2(a1)
	.loc 1 50 8
	li	a3,3
	andi	a4,a4,-484
.LVL7:
	.loc 1 49 12
	ori	a4,a4,416
.LVL8:
	.loc 1 50 5 is_stmt 1
	.loc 1 50 8 is_stmt 0
	bne	a6,a3,.L4
	.loc 1 51 9 is_stmt 1
	.loc 1 51 38 is_stmt 0
	lbu	a3,3(a1)
	.loc 1 51 16
	or	a4,a4,a3
.LVL9:
.L4:
	.loc 1 53 5 is_stmt 1
	.loc 1 53 59 is_stmt 0
	sw	a4,20(a5)
	.loc 1 55 5 is_stmt 1
	.loc 1 55 12 is_stmt 0
	addi	a0,a5,128
.LVL10:
	lw	a3,12(a0)
.LVL11:
	.loc 1 57 5 is_stmt 1
	.loc 1 57 12 is_stmt 0
	li	a4,-50331648
	addi	a4,a4,-1
	and	a3,a3,a4
.LVL12:
	.loc 1 58 5 is_stmt 1
	.loc 1 58 21 is_stmt 0
	lbu	a4,4(a1)
	.loc 1 58 35
	slli	a4,a4,24
	.loc 1 58 12
	or	a4,a4,a3
.LVL13:
	.loc 1 61 5 is_stmt 1
	.loc 1 61 12 is_stmt 0
	li	a3,-2031616
	addi	a3,a3,-1
	and	a3,a4,a3
.LVL14:
	.loc 1 62 5 is_stmt 1
	.loc 1 62 22 is_stmt 0
	lbu	a4,5(a1)
	.loc 1 62 49
	li	a1,2031616
.LVL15:
	.loc 1 62 39
	slli	a4,a4,16
	.loc 1 62 49
	and	a4,a4,a1
	.loc 1 62 12
	or	a4,a4,a3
.LVL16:
	.loc 1 63 5 is_stmt 1
	.loc 1 66 5
	.loc 1 69 5
	.loc 1 70 5
	.loc 1 70 26 is_stmt 0
	lui	a3,%hi(.LANCHOR0)
	sw	a6,%lo(.LANCHOR0)(a3)
	.loc 1 73 5 is_stmt 1
.LVL17:
	.loc 1 74 5
	.loc 1 75 5
	.loc 1 78 5
	.loc 1 78 12 is_stmt 0
	li	a3,-49152
	addi	a3,a3,-800
	and	a4,a4,a3
.LVL18:
	.loc 1 79 5 is_stmt 1
	.loc 1 79 59 is_stmt 0
	sw	a4,12(a0)
	.loc 1 82 5 is_stmt 1
	.loc 1 82 12 is_stmt 0
	lw	a4,16(a5)
.LVL19:
	.loc 1 83 5 is_stmt 1
	.loc 1 84 5
	li	a3,-32768
	and	a4,a4,a3
.LVL20:
	.loc 1 85 5
	.loc 1 85 12 is_stmt 0
	li	a3,65536
	addi	a3,a3,512
	or	a4,a4,a3
.LVL21:
	.loc 1 86 5 is_stmt 1
	.loc 1 86 59 is_stmt 0
	sw	a4,16(a5)
	.loc 1 89 5 is_stmt 1
	.loc 1 89 12 is_stmt 0
	lw	a4,4(a5)
.LVL22:
	.loc 1 90 5 is_stmt 1
	.loc 1 90 12 is_stmt 0
	li	a3,131072
	or	a4,a4,a3
.LVL23:
	.loc 1 91 5 is_stmt 1
	.loc 1 91 58 is_stmt 0
	sw	a4,4(a5)
	.loc 1 94 5 is_stmt 1
.LVL24:
	.loc 1 95 5
	.loc 1 95 8 is_stmt 0
	beq	a2,zero,.L6
	.loc 1 97 9 is_stmt 1
	.loc 1 97 16 is_stmt 0
	li	a5,536870912
	lw	a4,288(a5)
.LVL25:
	.loc 1 98 9 is_stmt 1
	.loc 1 99 9
	.loc 1 99 16 is_stmt 0
	lw	a5,288(a5)
.LVL26:
	.loc 1 100 9 is_stmt 1
	andi	a3,a2,1
	.loc 1 103 16 is_stmt 0
	li	a4,4096
	.loc 1 100 16
	andi	a5,a5,-257
.LVL27:
	.loc 1 103 9 is_stmt 1
	.loc 1 104 9
	.loc 1 104 12 is_stmt 0
	beq	a3,zero,.L21
	.loc 1 105 13 is_stmt 1
	.loc 1 105 20 is_stmt 0
	li	a4,12288
.L21:
	andi	a2,a2,2
	or	a5,a5,a4
.LVL28:
	.loc 1 107 9 is_stmt 1
	.loc 1 107 12 is_stmt 0
	beq	a2,zero,.L9
	.loc 1 108 13 is_stmt 1
	.loc 1 108 20 is_stmt 0
	li	a4,16384
.LVL29:
	or	a5,a5,a4
.LVL30:
.L9:
	.loc 1 110 9 is_stmt 1
	.loc 1 110 64 is_stmt 0
	li	a4,536870912
	sw	a5,288(a4)
	.loc 1 112 9 is_stmt 1
	.loc 1 112 12 is_stmt 0
	beq	a3,zero,.L10
	.loc 1 114 13 is_stmt 1
	.loc 1 114 20 is_stmt 0
	lw	a5,292(a4)
.LVL31:
	.loc 1 115 13 is_stmt 1
	.loc 1 115 20 is_stmt 0
	ori	a5,a5,3
.LVL32:
	.loc 1 116 13 is_stmt 1
	.loc 1 116 68 is_stmt 0
	sw	a5,292(a4)
.LVL33:
.L10:
	.loc 1 119 9 is_stmt 1
	.loc 1 119 12 is_stmt 0
	beq	a2,zero,.L6
	.loc 1 121 13 is_stmt 1
	.loc 1 121 20 is_stmt 0
	li	a4,536870912
	lw	a5,296(a4)
.LVL34:
	.loc 1 122 13 is_stmt 1
	.loc 1 122 20 is_stmt 0
	ori	a5,a5,3
.LVL35:
	.loc 1 123 13 is_stmt 1
	.loc 1 123 68 is_stmt 0
	sw	a5,296(a4)
.LVL36:
.L6:
	.loc 1 127 5 is_stmt 1
	.loc 1 128 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE5:
	.size	qcc74x_audac_init, .-qcc74x_audac_init
	.section	.text.qcc74x_audac_volume_init,"ax",@progbits
	.align	1
	.globl	qcc74x_audac_volume_init
	.type	qcc74x_audac_volume_init, @function
qcc74x_audac_volume_init:
.LFB6:
	.loc 1 131 1 is_stmt 1
	.cfi_startproc
.LVL37:
	.loc 1 132 5
	.loc 1 133 5
	.loc 1 134 5
	.loc 1 135 5
	.loc 1 137 5
	.loc 1 138 5
	.loc 1 140 5
	.loc 1 143 5
	.loc 1 143 58 is_stmt 0
	lw	a2,4(a0)
	.loc 1 146 8
	lbu	a5,0(a1)
	.loc 1 143 12
	lw	a4,8(a2)
.LVL38:
	.loc 1 144 5 is_stmt 1
	.loc 1 146 5
	.loc 1 146 8 is_stmt 0
	beq	a5,zero,.L23
	.loc 1 148 9 is_stmt 1
.LVL39:
	.loc 1 149 9
	.loc 1 150 9
	.loc 1 151 9
	.loc 1 152 9
	.loc 1 150 26 is_stmt 0
	lbu	a5,2(a1)
.LVL40:
	li	a3,-1006632960
	addi	a3,a3,-1
	.loc 1 150 48
	slli	a5,a5,26
.LVL41:
	and	a4,a4,a3
.LVL42:
	or	a4,a5,a4
	li	a5,-62914560
	addi	a5,a5,-1
	and	a4,a4,a5
	.loc 1 152 26
	lbu	a5,1(a1)
	.loc 1 152 46
	slli	a5,a5,22
	or	a4,a4,a5
	.loc 1 152 16
	li	a5,1073745920
.L28:
	.loc 1 156 16
	or	a4,a4,a5
.LVL43:
	.loc 1 159 5 is_stmt 1
	.loc 1 160 5
	.loc 1 160 16 is_stmt 0
	lbu	a5,3(a1)
	.loc 1 160 8
	li	a3,1
	bne	a5,a3,.L25
	.loc 1 162 9 is_stmt 1
.LVL44:
	.loc 1 163 9
	.loc 1 164 9
	.loc 1 164 26 is_stmt 0
	lbu	a5,4(a1)
	li	a3,-4096
	addi	a3,a3,963
	and	a4,a4,a3
.LVL45:
	.loc 1 164 45
	slli	a5,a5,2
	or	a5,a5,a4
	.loc 1 164 16
	li	a4,4096
	addi	a4,a4,-2048
	or	a5,a5,a4
.LVL46:
.L26:
	.loc 1 171 5 is_stmt 1
	.loc 1 171 58 is_stmt 0
	sw	a5,8(a2)
.LVL47:
	.loc 1 173 5 is_stmt 1
	.loc 1 174 1 is_stmt 0
	li	a0,0
.LVL48:
	ret
.LVL49:
.L23:
	.loc 1 156 9 is_stmt 1
	li	a5,-1073741824
	addi	a5,a5,-1
	and	a4,a4,a5
.LVL50:
	.loc 1 156 16 is_stmt 0
	li	a5,4096
	j	.L28
.LVL51:
.L25:
	.loc 1 165 12 is_stmt 1
	.loc 1 165 15 is_stmt 0
	li	a3,2
	beq	a5,a3,.L27
	.loc 1 159 12
	li	a5,-4096
	addi	a5,a5,1023
	and	a5,a4,a5
	j	.L26
.L27:
	.loc 1 167 9 is_stmt 1
.LVL52:
	.loc 1 168 9
	.loc 1 169 9
	.loc 1 169 26 is_stmt 0
	lbu	a5,4(a1)
	li	a3,-4096
	addi	a3,a3,63
	.loc 1 169 45
	slli	a5,a5,6
	and	a4,a4,a3
.LVL53:
	or	a5,a5,a4
	.loc 1 169 16
	ori	a5,a5,1024
.LVL54:
	j	.L26
	.cfi_endproc
.LFE6:
	.size	qcc74x_audac_volume_init, .-qcc74x_audac_volume_init
	.section	.text.qcc74x_audac_link_rxdma,"ax",@progbits
	.align	1
	.globl	qcc74x_audac_link_rxdma
	.type	qcc74x_audac_link_rxdma, @function
qcc74x_audac_link_rxdma:
.LFB7:
	.loc 1 177 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 178 5
	.loc 1 179 5
	.loc 1 181 5
	.loc 1 183 5
	.loc 1 183 58 is_stmt 0
	lw	a5,4(a0)
	.loc 1 183 12
	lw	a3,140(a5)
.LVL56:
	.loc 1 184 5 is_stmt 1
	.loc 1 187 16 is_stmt 0
	andi	a4,a3,-17
	.loc 1 184 8
	beq	a1,zero,.L31
	.loc 1 185 9 is_stmt 1
	.loc 1 185 16 is_stmt 0
	ori	a4,a3,16
.LVL57:
.L31:
	.loc 1 189 5 is_stmt 1
	.loc 1 189 59 is_stmt 0
	sw	a4,140(a5)
.LVL58:
	.loc 1 191 5 is_stmt 1
	.loc 1 192 1 is_stmt 0
	li	a0,0
.LVL59:
	ret
	.cfi_endproc
.LFE7:
	.size	qcc74x_audac_link_rxdma, .-qcc74x_audac_link_rxdma
	.section	.text.qcc74x_audac_int_mask,"ax",@progbits
	.align	1
	.globl	qcc74x_audac_int_mask
	.type	qcc74x_audac_int_mask, @function
qcc74x_audac_int_mask:
.LFB8:
	.loc 1 195 1 is_stmt 1
	.cfi_startproc
.LVL60:
	.loc 1 196 5
	.loc 1 197 5
	.loc 1 199 5
	.loc 1 201 17 is_stmt 0
	andi	a4,a1,1
	.loc 1 199 14
	lw	a5,4(a0)
.LVL61:
	.loc 1 201 5 is_stmt 1
	.loc 1 201 8 is_stmt 0
	beq	a4,zero,.L34
	.loc 1 203 9 is_stmt 1
	.loc 1 203 16 is_stmt 0
	lw	a4,0(a5)
.LVL62:
	.loc 1 204 9 is_stmt 1
	.loc 1 204 16 is_stmt 0
	li	a3,-131072
	addi	a3,a3,-1
	and	a4,a4,a3
.LVL63:
	.loc 1 205 9 is_stmt 1
	.loc 1 205 64 is_stmt 0
	sw	a4,0(a5)
	.loc 1 207 9 is_stmt 1
	.loc 1 207 17 is_stmt 0
	andi	a1,a1,-2
.LVL64:
.L34:
	.loc 1 210 5 is_stmt 1
	.loc 1 210 8 is_stmt 0
	beq	a1,zero,.L35
	.loc 1 212 9 is_stmt 1
	.loc 1 212 16 is_stmt 0
	lw	a4,140(a5)
.LVL65:
	.loc 1 213 9 is_stmt 1
	.loc 1 213 19 is_stmt 0
	not	a1,a1
.LVL66:
	.loc 1 213 16
	and	a1,a1,a4
.LVL67:
	.loc 1 214 9 is_stmt 1
	.loc 1 214 63 is_stmt 0
	sw	a1,140(a5)
.LVL68:
.L35:
	.loc 1 217 5 is_stmt 1
	.loc 1 218 1 is_stmt 0
	li	a0,0
.LVL69:
	ret
	.cfi_endproc
.LFE8:
	.size	qcc74x_audac_int_mask, .-qcc74x_audac_int_mask
	.section	.text.qcc74x_audac_int_unmask,"ax",@progbits
	.align	1
	.globl	qcc74x_audac_int_unmask
	.type	qcc74x_audac_int_unmask, @function
qcc74x_audac_int_unmask:
.LFB9:
	.loc 1 221 1 is_stmt 1
	.cfi_startproc
.LVL70:
	.loc 1 222 5
	.loc 1 223 5
	.loc 1 225 5
	.loc 1 227 17 is_stmt 0
	andi	a4,a1,1
	.loc 1 225 14
	lw	a5,4(a0)
.LVL71:
	.loc 1 227 5 is_stmt 1
	.loc 1 227 8 is_stmt 0
	beq	a4,zero,.L43
	.loc 1 229 9 is_stmt 1
	.loc 1 229 16 is_stmt 0
	lw	a4,0(a5)
.LVL72:
	.loc 1 230 9 is_stmt 1
	.loc 1 230 16 is_stmt 0
	li	a3,131072
	.loc 1 233 17
	andi	a1,a1,-2
.LVL73:
	.loc 1 230 16
	or	a4,a4,a3
.LVL74:
	.loc 1 231 9 is_stmt 1
	.loc 1 231 64 is_stmt 0
	sw	a4,0(a5)
	.loc 1 233 9 is_stmt 1
.LVL75:
.L43:
	.loc 1 236 5
	.loc 1 236 8 is_stmt 0
	beq	a1,zero,.L44
	.loc 1 238 9 is_stmt 1
	.loc 1 238 16 is_stmt 0
	lw	a4,140(a5)
.LVL76:
	.loc 1 239 9 is_stmt 1
	.loc 1 239 16 is_stmt 0
	or	a1,a1,a4
.LVL77:
	.loc 1 240 9 is_stmt 1
	.loc 1 240 63 is_stmt 0
	sw	a1,140(a5)
.LVL78:
.L44:
	.loc 1 243 5 is_stmt 1
	.loc 1 244 1 is_stmt 0
	li	a0,0
.LVL79:
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_audac_int_unmask, .-qcc74x_audac_int_unmask
	.section	.text.qcc74x_audac_get_intstatus,"ax",@progbits
	.align	1
	.globl	qcc74x_audac_get_intstatus
	.type	qcc74x_audac_get_intstatus, @function
qcc74x_audac_get_intstatus:
.LFB10:
	.loc 1 247 1 is_stmt 1
	.cfi_startproc
.LVL80:
	.loc 1 248 5
	.loc 1 249 5
	.loc 1 250 5
	.loc 1 252 5
	.loc 1 252 14 is_stmt 0
	lw	a5,4(a0)
.LVL81:
	.loc 1 253 5 is_stmt 1
	.loc 1 256 5
	.loc 1 256 12 is_stmt 0
	lw	a0,0(a5)
.LVL82:
	.loc 1 257 5 is_stmt 1
	.loc 1 262 12 is_stmt 0
	lw	a5,144(a5)
.LVL83:
	.loc 1 257 8
	extu	a0,a0,17+1-1,17
.LVL84:
	.loc 1 262 5 is_stmt 1
	.loc 1 263 5
	.loc 1 263 16 is_stmt 0
	andi	a4,a5,2
	.loc 1 263 8
	beq	a4,zero,.L52
	.loc 1 264 9 is_stmt 1
	.loc 1 264 17 is_stmt 0
	ori	a0,a0,2
.LVL85:
.L52:
	.loc 1 266 5 is_stmt 1
	.loc 1 266 16 is_stmt 0
	andi	a4,a5,4
	.loc 1 266 8
	beq	a4,zero,.L53
	.loc 1 267 9 is_stmt 1
	.loc 1 267 17 is_stmt 0
	ori	a0,a0,4
.LVL86:
.L53:
	.loc 1 269 5 is_stmt 1
	.loc 1 269 16 is_stmt 0
	andi	a5,a5,16
.LVL87:
	.loc 1 269 8
	beq	a5,zero,.L51
	.loc 1 270 9 is_stmt 1
	.loc 1 270 17 is_stmt 0
	ori	a0,a0,8
.LVL88:
	.loc 1 273 5 is_stmt 1
.L51:
	.loc 1 274 1 is_stmt 0
	ret
	.cfi_endproc
.LFE10:
	.size	qcc74x_audac_get_intstatus, .-qcc74x_audac_get_intstatus
	.section	.text.qcc74x_audac_int_clear,"ax",@progbits
	.align	1
	.globl	qcc74x_audac_int_clear
	.type	qcc74x_audac_int_clear, @function
qcc74x_audac_int_clear:
.LFB11:
	.loc 1 277 1 is_stmt 1
	.cfi_startproc
.LVL89:
	.loc 1 278 5
	.loc 1 279 5
	.loc 1 280 5
	.loc 1 282 5
	.loc 1 284 5
	.loc 1 284 19 is_stmt 0
	andi	a1,a1,1
.LVL90:
	.loc 1 284 8
	beq	a1,zero,.L65
	.loc 1 286 9 is_stmt 1
	.loc 1 286 20 is_stmt 0
	lw	a3,4(a0)
	.loc 1 294 16
	li	a4,131072
	.loc 1 286 16
	lw	a2,0(a3)
.LVL91:
	.loc 1 288 9 is_stmt 1
	.loc 1 294 9
	.loc 1 294 16 is_stmt 0
	or	a5,a2,a4
.LVL92:
	.loc 1 295 9 is_stmt 1
	.loc 1 295 64 is_stmt 0
	sw	a5,0(a3)
.LVL93:
	.loc 1 297 9 is_stmt 1
	.loc 1 288 20 is_stmt 0
	and	a4,a2,a4
	.loc 1 297 12
	bne	a4,zero,.L66
.LVL94:
	.loc 1 298 13 is_stmt 1
	li	a5,-131072
.LVL95:
	addi	a5,a5,-1
.LVL96:
	and	a5,a2,a5
.LVL97:
.L66:
	.loc 1 300 9
	.loc 1 300 64 is_stmt 0
	sw	a5,0(a3)
.LVL98:
.L65:
	.loc 1 303 5 is_stmt 1
	.loc 1 304 1 is_stmt 0
	li	a0,0
.LVL99:
	ret
	.cfi_endproc
.LFE11:
	.size	qcc74x_audac_int_clear, .-qcc74x_audac_int_clear
	.section	.text.qcc74x_audac_feature_control,"ax",@progbits
	.align	1
	.globl	qcc74x_audac_feature_control
	.type	qcc74x_audac_feature_control, @function
qcc74x_audac_feature_control:
.LFB12:
	.loc 1 307 1 is_stmt 1
	.cfi_startproc
.LVL100:
	.loc 1 308 5
	.loc 1 309 5
	.loc 1 310 5
	.loc 1 311 5
	.loc 1 313 5
	.loc 1 315 5 is_stmt 0
	li	a4,4
	.loc 1 313 14
	lw	a5,4(a0)
.LVL101:
	.loc 1 315 5 is_stmt 1
	beq	a1,a4,.L71
	bgt	a1,a4,.L72
	li	a4,2
	beq	a1,a4,.L73
	li	a4,3
	beq	a1,a4,.L74
	li	a4,1
	beq	a1,a4,.L75
.LVL102:
.L83:
	.loc 1 360 13
	.loc 1 308 9 is_stmt 0
	li	a0,0
.LVL103:
	.loc 1 360 13
	ret
.LVL104:
.L72:
	.loc 1 315 5
	li	a4,5
	beq	a1,a4,.L77
	li	a4,6
	bne	a1,a4,.L83
	.loc 1 364 13 is_stmt 1
	.loc 1 364 20 is_stmt 0
	lw	a0,144(a5)
.LVL105:
	.loc 1 365 13 is_stmt 1
	.loc 1 365 17 is_stmt 0
	extu	a0,a0,16+5-1,16
.LVL106:
	.loc 1 366 13 is_stmt 1
	.loc 1 372 5
	.loc 1 373 1 is_stmt 0
	ret
.LVL107:
.L75:
	.loc 1 318 13 is_stmt 1
	.loc 1 318 20 is_stmt 0
	lw	a4,140(a5)
.LVL108:
	.loc 1 319 13 is_stmt 1
	.loc 1 320 44 is_stmt 0
	lui	a3,%hi(.LANCHOR0)
	addi	a3,a3,%lo(.LANCHOR0)
	.loc 1 319 20
	andi	a2,a4,-769
.LVL109:
	.loc 1 320 13 is_stmt 1
	.loc 1 320 44 is_stmt 0
	lw	a4,0(a3)
	slli	a4,a4,8
	.loc 1 320 20
	or	a4,a4,a2
.LVL110:
	.loc 1 321 13 is_stmt 1
	.loc 1 321 67 is_stmt 0
	sw	a4,140(a5)
	.loc 1 322 13 is_stmt 1
	.loc 1 322 34 is_stmt 0
	sw	zero,0(a3)
	.loc 1 323 13 is_stmt 1
	j	.L83
.LVL111:
.L73:
	.loc 1 327 13
	.loc 1 328 38 is_stmt 0
	lui	a3,%hi(.LANCHOR0)
	addi	a3,a3,%lo(.LANCHOR0)
	.loc 1 327 20
	lw	a4,140(a5)
.LVL112:
	.loc 1 328 13 is_stmt 1
	.loc 1 328 38 is_stmt 0
	lw	a2,0(a3)
.LVL113:
	.loc 1 328 16
	bne	a2,zero,.L79
	.loc 1 329 17 is_stmt 1
	.loc 1 329 65 is_stmt 0
	extu	a2,a4,8+2-1,8
	.loc 1 329 38
	sw	a2,0(a3)
.L79:
	.loc 1 331 13 is_stmt 1
	.loc 1 331 20 is_stmt 0
	andi	a4,a4,-769
.LVL114:
	.loc 1 332 13 is_stmt 1
.L84:
	.loc 1 359 13
	.loc 1 359 67 is_stmt 0
	sw	a4,140(a5)
	j	.L83
.LVL115:
.L74:
	.loc 1 337 13 is_stmt 1
	.loc 1 337 20 is_stmt 0
	lw	a4,8(a5)
.LVL116:
	.loc 1 338 13 is_stmt 1
	.loc 1 339 24 is_stmt 0
	li	a3,-2147483648
	.loc 1 338 16
	beq	a2,zero,.L80
	.loc 1 339 17 is_stmt 1
	.loc 1 339 24 is_stmt 0
	or	a4,a4,a3
.LVL117:
.L81:
	.loc 1 343 13 is_stmt 1
	.loc 1 343 66 is_stmt 0
	sw	a4,8(a5)
	.loc 1 344 13 is_stmt 1
	j	.L83
.L80:
	.loc 1 341 17
	.loc 1 341 24 is_stmt 0
	xori	a3,a3,-1
	and	a4,a4,a3
.LVL118:
	j	.L81
.LVL119:
.L71:
	.loc 1 348 13 is_stmt 1
	.loc 1 349 13
	.loc 1 349 20 is_stmt 0
	lw	a4,8(a5)
.LVL120:
	.loc 1 350 13 is_stmt 1
	.loc 1 350 20 is_stmt 0
	li	a3,-4186112
	addi	a3,a3,-1
	.loc 1 351 35
	ext	a2,a2,15+0-1,0
.LVL121:
	.loc 1 350 20
	and	a4,a4,a3
.LVL122:
	.loc 1 351 13 is_stmt 1
	.loc 1 351 35 is_stmt 0
	slli	a2,a2,14
	.loc 1 351 45
	li	a3,4186112
	and	a2,a2,a3
	.loc 1 351 20
	or	a2,a2,a4
.LVL123:
	.loc 1 352 13 is_stmt 1
	.loc 1 352 66 is_stmt 0
	sw	a2,8(a5)
	.loc 1 353 13 is_stmt 1
	j	.L83
.LVL124:
.L77:
	.loc 1 357 13
	.loc 1 357 20 is_stmt 0
	lw	a4,140(a5)
.LVL125:
	.loc 1 358 13 is_stmt 1
	.loc 1 358 20 is_stmt 0
	ori	a4,a4,1
.LVL126:
	j	.L84
	.cfi_endproc
.LFE12:
	.size	qcc74x_audac_feature_control, .-qcc74x_audac_feature_control
	.section	.bss.g_audac_channel_mode,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_audac_channel_mode, @object
	.size	g_audac_channel_mode, 4
g_audac_channel_mode:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./drivers/lhal/include/qcc74x_core.h"
	.file 6 "./drivers/lhal/include/qcc74x_audac.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x58d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF62
	.byte	0xc
	.4byte	.LASF63
	.4byte	.LASF64
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x37
	.byte	0x13
	.4byte	0x4b
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x5e
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x71
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x84
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0xac
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0x3
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF16
	.byte	0x3
	.byte	0x20
	.byte	0x13
	.4byte	0x3f
	.byte	0x3
	.4byte	.LASF17
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x52
	.byte	0x3
	.4byte	.LASF18
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x65
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x78
	.byte	0x5
	.4byte	0xe3
	.byte	0x3
	.4byte	.LASF20
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0xa0
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0xac
	.byte	0x6
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.byte	0x7
	.4byte	0x10e
	.byte	0x8
	.byte	0x4
	.4byte	0x115
	.byte	0x9
	.4byte	.LASF29
	.byte	0x10
	.byte	0x5
	.byte	0x67
	.byte	0x8
	.4byte	0x189
	.byte	0xa
	.4byte	.LASF23
	.byte	0x5
	.byte	0x68
	.byte	0x11
	.4byte	0x11a
	.byte	0
	.byte	0xa
	.4byte	.LASF24
	.byte	0x5
	.byte	0x69
	.byte	0xe
	.4byte	0xe3
	.byte	0x4
	.byte	0xa
	.4byte	.LASF25
	.byte	0x5
	.byte	0x6a
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0xb
	.string	"idx"
	.byte	0x5
	.byte	0x6b
	.byte	0xd
	.4byte	0xb3
	.byte	0x9
	.byte	0xa
	.4byte	.LASF26
	.byte	0x5
	.byte	0x6c
	.byte	0xd
	.4byte	0xb3
	.byte	0xa
	.byte	0xa
	.4byte	.LASF27
	.byte	0x5
	.byte	0x6d
	.byte	0xd
	.4byte	0xb3
	.byte	0xb
	.byte	0xa
	.4byte	.LASF28
	.byte	0x5
	.byte	0x6e
	.byte	0xb
	.4byte	0x10c
	.byte	0xc
	.byte	0
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0x6
	.byte	0xb1
	.byte	0x8
	.4byte	0x1e5
	.byte	0xa
	.4byte	.LASF31
	.byte	0x6
	.byte	0xb2
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0xa
	.4byte	.LASF32
	.byte	0x6
	.byte	0xb3
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0xa
	.4byte	.LASF33
	.byte	0x6
	.byte	0xb4
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0xa
	.4byte	.LASF34
	.byte	0x6
	.byte	0xb5
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0xa
	.4byte	.LASF35
	.byte	0x6
	.byte	0xb6
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0xa
	.4byte	.LASF36
	.byte	0x6
	.byte	0xb7
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0
	.byte	0x7
	.4byte	0x189
	.byte	0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0x6
	.byte	0xc4
	.byte	0x8
	.4byte	0x246
	.byte	0xa
	.4byte	.LASF38
	.byte	0x6
	.byte	0xc5
	.byte	0x9
	.4byte	0x24b
	.byte	0
	.byte	0xa
	.4byte	.LASF39
	.byte	0x6
	.byte	0xc6
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0xa
	.4byte	.LASF40
	.byte	0x6
	.byte	0xc7
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0xa
	.4byte	.LASF41
	.byte	0x6
	.byte	0xc8
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0xa
	.4byte	.LASF42
	.byte	0x6
	.byte	0xc9
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0xa
	.4byte	.LASF43
	.byte	0x6
	.byte	0xca
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0
	.byte	0x7
	.4byte	0x1ea
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.byte	0x1
	.byte	0x9
	.byte	0x1a
	.4byte	0xef
	.byte	0x5
	.byte	0x3
	.4byte	g_audac_channel_mode
	.byte	0xd
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x132
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f3
	.byte	0xe
	.string	"dev"
	.byte	0x1
	.2byte	0x132
	.byte	0x3a
	.4byte	0x2f3
	.4byte	.LLST25
	.byte	0xf
	.string	"cmd"
	.byte	0x1
	.2byte	0x132
	.byte	0x43
	.4byte	0x99
	.byte	0x1
	.byte	0x5b
	.byte	0xe
	.string	"arg"
	.byte	0x1
	.2byte	0x132
	.byte	0x4f
	.4byte	0x100
	.4byte	.LLST26
	.byte	0x10
	.string	"ret"
	.byte	0x1
	.2byte	0x134
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST27
	.byte	0x11
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x135
	.byte	0xe
	.4byte	0xe3
	.byte	0x1
	.byte	0x5f
	.byte	0x12
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x136
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST28
	.byte	0x12
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x137
	.byte	0xd
	.4byte	0xbf
	.4byte	.LLST29
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x120
	.byte	0xd
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x114
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x36a
	.byte	0xe
	.string	"dev"
	.byte	0x1
	.2byte	0x114
	.byte	0x34
	.4byte	0x2f3
	.4byte	.LLST20
	.byte	0x13
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x114
	.byte	0x42
	.4byte	0xe3
	.4byte	.LLST21
	.byte	0x12
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x116
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST22
	.byte	0x12
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x117
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST23
	.byte	0x12
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x118
	.byte	0xd
	.4byte	0xb3
	.4byte	.LLST24
	.byte	0
	.byte	0x14
	.4byte	.LASF52
	.byte	0x1
	.byte	0xf6
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x3c5
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0xf6
	.byte	0x38
	.4byte	0x2f3
	.4byte	.LLST16
	.byte	0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0xf8
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST17
	.byte	0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0xf9
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST18
	.byte	0x16
	.4byte	.LASF53
	.byte	0x1
	.byte	0xfa
	.byte	0xd
	.4byte	0xd7
	.4byte	.LLST19
	.byte	0
	.byte	0x14
	.4byte	.LASF54
	.byte	0x1
	.byte	0xdc
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x41e
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0xdc
	.byte	0x35
	.4byte	0x2f3
	.4byte	.LLST13
	.byte	0x17
	.4byte	.LASF53
	.byte	0x1
	.byte	0xdc
	.byte	0x43
	.4byte	0xe3
	.4byte	.LLST14
	.byte	0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0xde
	.byte	0xe
	.4byte	0xe3
	.byte	0x1
	.byte	0x5f
	.byte	0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0xdf
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST15
	.byte	0
	.byte	0x14
	.4byte	.LASF55
	.byte	0x1
	.byte	0xc2
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x477
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0xc2
	.byte	0x33
	.4byte	0x2f3
	.4byte	.LLST10
	.byte	0x17
	.4byte	.LASF53
	.byte	0x1
	.byte	0xc2
	.byte	0x41
	.4byte	0xe3
	.4byte	.LLST11
	.byte	0xc
	.4byte	.LASF24
	.byte	0x1
	.byte	0xc4
	.byte	0xe
	.4byte	0xe3
	.byte	0x1
	.byte	0x5f
	.byte	0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0xc5
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST12
	.byte	0
	.byte	0x14
	.4byte	.LASF56
	.byte	0x1
	.byte	0xb0
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x4d0
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0xb0
	.byte	0x35
	.4byte	0x2f3
	.4byte	.LLST7
	.byte	0x18
	.4byte	.LASF57
	.byte	0x1
	.byte	0xb0
	.byte	0x3e
	.4byte	0x24b
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0xb2
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST8
	.byte	0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0xb3
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST9
	.byte	0
	.byte	0x14
	.4byte	.LASF58
	.byte	0x1
	.byte	0x82
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x529
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0x82
	.byte	0x36
	.4byte	0x2f3
	.4byte	.LLST4
	.byte	0x18
	.4byte	.LASF59
	.byte	0x1
	.byte	0x82
	.byte	0x66
	.4byte	0x529
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0x89
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST5
	.byte	0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x8a
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST6
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x246
	.byte	0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0xb
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x58a
	.byte	0x15
	.string	"dev"
	.byte	0x1
	.byte	0xb
	.byte	0x2f
	.4byte	0x2f3
	.4byte	.LLST0
	.byte	0x17
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb
	.byte	0x5d
	.4byte	0x58a
	.4byte	.LLST1
	.byte	0x16
	.4byte	.LASF24
	.byte	0x1
	.byte	0x15
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST2
	.byte	0x16
	.4byte	.LASF46
	.byte	0x1
	.byte	0x16
	.byte	0xe
	.4byte	0xe3
	.4byte	.LLST3
	.byte	0
	.byte	0x8
	.byte	0x4
	.4byte	0x1e5
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
	.byte	0xe
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x15
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
	.byte	0x2
	.byte	0x17
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST25:
	.4byte	.LVL100
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
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL104
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL109
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL113
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL121
	.4byte	.LVL124
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL100
	.4byte	.LVL106
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL107
	.4byte	.LFE12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL112
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL116
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL120
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL119
	.4byte	.LVL121
	.2byte	0x5
	.byte	0x7c
	.byte	0
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL89
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL99
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL90
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL89
	.4byte	.LVL93
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL93
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL92
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL91
	.4byte	.LVL94
	.2byte	0x9
	.byte	0x7c
	.byte	0
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.4byte	.LVL94
	.4byte	.LVL97
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LFE10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL83
	.4byte	.LFE10
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x4
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL84
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL70
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL70
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL73
	.4byte	.LVL75
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL72
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL60
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL69
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x4
	.byte	0x7b
	.byte	0
	.byte	0x20
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL65
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL55
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL58
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL57
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL37
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL37
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x7a
	.byte	0x4
	.4byte	.LVL47
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0x1000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x20
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x9f,0x7c
	.byte	0x1a
	.byte	0x7b
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4a
	.byte	0x24
	.byte	0x21
	.byte	0x11
	.byte	0xff,0xff,0xff,0x61
	.byte	0x1a
	.byte	0xc
	.4byte	0x40001000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1b
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x9f,0x7c
	.byte	0x1a
	.byte	0x7f
	.byte	0
	.byte	0x4a
	.byte	0x24
	.byte	0x21
	.byte	0x11
	.byte	0xff,0xff,0xff,0x61
	.byte	0x1a
	.byte	0xc
	.4byte	0x40001000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x20
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xff,0xff,0xff,0x9f,0x7c
	.byte	0x1a
	.byte	0x7b
	.byte	0x2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4a
	.byte	0x24
	.byte	0x21
	.byte	0x11
	.byte	0xff,0xff,0xff,0x61
	.byte	0x1a
	.byte	0xc
	.4byte	0x40001000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xb
	.2byte	0xf3ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0xb
	.byte	0x7e
	.byte	0
	.byte	0xb
	.2byte	0xf3c3
	.byte	0x1a
	.byte	0xa
	.2byte	0x800
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xa
	.2byte	0x1000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0xb
	.2byte	0xf3ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0xb
	.byte	0x7e
	.byte	0
	.byte	0xb
	.2byte	0xf03f
	.byte	0x1a
	.byte	0xa
	.2byte	0x400
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
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
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL15
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
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL24
	.4byte	.LFE5
	.2byte	0x4
	.byte	0x40
	.byte	0x49
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x9
	.byte	0x7e
	.byte	0
	.byte	0xc
	.4byte	0x8000003
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0xb
	.byte	0x7e
	.byte	0
	.byte	0xb
	.2byte	0xfe1f
	.byte	0x1a
	.byte	0xa
	.2byte	0x1a0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xef,0xf9,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x11
	.byte	0xe1,0xf9,0x7c
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x1000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0xa
	.2byte	0x4000
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x54
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF28:
	.string	"user_data"
.LASF38:
	.string	"mute_ramp_en"
.LASF37:
	.string	"qcc74x_audac_volume_config_s"
.LASF35:
	.string	"data_format"
.LASF21:
	.string	"size_t"
.LASF20:
	.string	"uintptr_t"
.LASF32:
	.string	"output_mode"
.LASF2:
	.string	"__uint8_t"
.LASF50:
	.string	"int_clear"
.LASF54:
	.string	"qcc74x_audac_int_unmask"
.LASF12:
	.string	"long long unsigned int"
.LASF45:
	.string	"g_audac_channel_mode"
.LASF26:
	.string	"sub_idx"
.LASF16:
	.string	"int16_t"
.LASF11:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long int"
.LASF17:
	.string	"uint16_t"
.LASF9:
	.string	"__uint32_t"
.LASF3:
	.string	"__int16_t"
.LASF30:
	.string	"qcc74x_audac_init_config_s"
.LASF47:
	.string	"volume_val"
.LASF14:
	.string	"unsigned int"
.LASF10:
	.string	"long unsigned int"
.LASF34:
	.string	"mixer_mode"
.LASF23:
	.string	"name"
.LASF6:
	.string	"short unsigned int"
.LASF51:
	.string	"ramp_int_en"
.LASF62:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF41:
	.string	"volume_update_mode"
.LASF56:
	.string	"qcc74x_audac_link_rxdma"
.LASF33:
	.string	"source_channels_num"
.LASF57:
	.string	"enable"
.LASF42:
	.string	"volume_ramp_rate"
.LASF24:
	.string	"reg_base"
.LASF55:
	.string	"qcc74x_audac_int_mask"
.LASF44:
	.string	"_Bool"
.LASF18:
	.string	"int32_t"
.LASF1:
	.string	"unsigned char"
.LASF46:
	.string	"regval"
.LASF52:
	.string	"qcc74x_audac_get_intstatus"
.LASF4:
	.string	"short int"
.LASF53:
	.string	"int_sts"
.LASF13:
	.string	"__uintptr_t"
.LASF48:
	.string	"qcc74x_audac_feature_control"
.LASF60:
	.string	"qcc74x_audac_init"
.LASF19:
	.string	"uint32_t"
.LASF25:
	.string	"irq_num"
.LASF49:
	.string	"qcc74x_audac_int_clear"
.LASF22:
	.string	"char"
.LASF61:
	.string	"config"
.LASF5:
	.string	"__uint16_t"
.LASF58:
	.string	"qcc74x_audac_volume_init"
.LASF7:
	.string	"__int32_t"
.LASF27:
	.string	"dev_type"
.LASF29:
	.string	"qcc74x_device_s"
.LASF39:
	.string	"mute_up_ramp_rate"
.LASF15:
	.string	"uint8_t"
.LASF40:
	.string	"mute_down_ramp_rate"
.LASF59:
	.string	"vol_cfg"
.LASF63:
	.string	"./drivers/lhal/src/qcc74x_audac.c"
.LASF43:
	.string	"volume_zero_cross_timeout"
.LASF64:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/drivers/lhal"
.LASF36:
	.string	"fifo_threshold"
.LASF31:
	.string	"sampling_rate"
	.ident	"GCC: (GNU) 10.4.0"
