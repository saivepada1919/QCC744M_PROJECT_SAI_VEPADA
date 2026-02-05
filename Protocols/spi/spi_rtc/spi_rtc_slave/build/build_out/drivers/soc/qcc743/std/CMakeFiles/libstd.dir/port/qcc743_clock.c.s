	.file	"qcc743_clock.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.set_bit,"ax",@progbits
	.align	1
	.type	set_bit, @function
set_bit:
.LFB245:
	.file 1 "./drivers/soc/qcc743/std/port/qcc743_clock.c"
	.loc 1 151 1
	.cfi_startproc
.LVL0:
	.loc 1 152 5
	.loc 1 152 18 is_stmt 0
	li	a5,1
	sll	a5,a5,a1
	.loc 1 152 12
	lw	a1,0(a0)
.LVL1:
	or	a1,a1,a5
	sw	a1,0(a0)
	.loc 1 153 1
	ret
	.cfi_endproc
.LFE245:
	.size	set_bit, .-set_bit
	.section	.text.clear_bit,"ax",@progbits
	.align	1
	.type	clear_bit, @function
clear_bit:
.LFB246:
	.loc 1 156 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 157 5
	.loc 1 157 19 is_stmt 0
	li	a5,1
	sll	a5,a5,a1
	.loc 1 157 12
	lw	a1,0(a0)
.LVL3:
	.loc 1 157 15
	not	a5,a5
	.loc 1 157 12
	and	a5,a1,a5
	sw	a5,0(a0)
	.loc 1 158 1
	ret
	.cfi_endproc
.LFE246:
	.size	clear_bit, .-clear_bit
	.section	.text.qcc74x_clk_get_system_clock,"ax",@progbits
	.align	1
	.globl	qcc74x_clk_get_system_clock
	.type	qcc74x_clk_get_system_clock, @function
qcc74x_clk_get_system_clock:
.LFB242:
	.loc 1 6 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 7 5
	li	a4,2
	beq	a0,a4,.L4
	bgtu	a0,a4,.L5
	bne	a0,zero,.L11
.LVL5:
.L9:
	.loc 1 17 13
	.loc 1 17 20 is_stmt 0
	tail	Clock_System_Clock_Get
.LVL6:
.L5:
	.loc 1 7 5
	li	a4,3
	beq	a0,a4,.L8
	li	a4,4
	beq	a0,a4,.L9
	.loc 1 22 1
	li	a0,0
.LVL7:
	ret
.LVL8:
.L11:
	.loc 1 11 13 is_stmt 1
	.loc 1 11 20 is_stmt 0
	li	a0,1
.LVL9:
	j	.L9
.LVL10:
.L4:
	.loc 1 13 13 is_stmt 1
	.loc 1 13 20 is_stmt 0
	li	a0,3
.LVL11:
	j	.L9
.LVL12:
.L8:
	.loc 1 15 13 is_stmt 1
	.loc 1 15 20 is_stmt 0
	li	a0,5
.LVL13:
	j	.L9
	.cfi_endproc
.LFE242:
	.size	qcc74x_clk_get_system_clock, .-qcc74x_clk_get_system_clock
	.section	.text.qcc74x_clk_get_peripheral_clock,"ax",@progbits
	.align	1
	.globl	qcc74x_clk_get_peripheral_clock
	.type	qcc74x_clk_get_peripheral_clock, @function
qcc74x_clk_get_peripheral_clock:
.LFB243:
	.loc 1 25 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 26 5
	.loc 1 26 8 is_stmt 0
	bne	a0,zero,.L14
	.loc 1 27 9 is_stmt 1
	.loc 1 27 16 is_stmt 0
	li	a0,14
.LVL15:
.L27:
.LBB4:
.LBB5:
	.loc 1 51 16
	tail	Clock_Peripheral_Clock_Get
.LVL16:
.L14:
.LBE5:
.LBE4:
	.loc 1 28 12 is_stmt 1
	.loc 1 28 15 is_stmt 0
	li	a5,1
	bne	a0,a5,.L15
	.loc 1 29 9 is_stmt 1
	.loc 1 29 16 is_stmt 0
	li	a0,16
.LVL17:
	j	.L27
.LVL18:
.L15:
	.loc 1 30 12 is_stmt 1
	.loc 1 30 15 is_stmt 0
	li	a5,5
	bne	a0,a5,.L16
	.loc 1 31 9 is_stmt 1
	.loc 1 31 16 is_stmt 0
	li	a0,0
.LVL19:
	j	.L27
.LVL20:
.L16:
	.loc 1 32 12 is_stmt 1
	.loc 1 32 15 is_stmt 0
	li	a5,6
	bne	a0,a5,.L17
	.loc 1 33 9 is_stmt 1
	.loc 1 33 16 is_stmt 0
	li	a0,3
.LVL21:
	j	.L27
.LVL22:
.L17:
.LBB7:
.LBB6:
	.loc 1 34 12 is_stmt 1
	.loc 1 34 15 is_stmt 0
	li	a5,7
	bne	a0,a5,.L18
	.loc 1 35 9 is_stmt 1
	.loc 1 35 16 is_stmt 0
	li	a0,8
.LVL23:
	j	.L27
.LVL24:
.L18:
	.loc 1 36 12 is_stmt 1
	.loc 1 36 15 is_stmt 0
	li	a5,15
	bne	a0,a5,.L19
	.loc 1 37 9 is_stmt 1
	.loc 1 37 16 is_stmt 0
	li	a0,11
.LVL25:
	j	.L27
.LVL26:
.L19:
	.loc 1 38 12 is_stmt 1
	.loc 1 38 15 is_stmt 0
	li	a5,10
	bne	a0,a5,.L20
	.loc 1 39 9 is_stmt 1
	.loc 1 39 16 is_stmt 0
	li	a0,13
.LVL27:
	j	.L27
.LVL28:
.L20:
	.loc 1 40 12 is_stmt 1
	.loc 1 40 15 is_stmt 0
	li	a5,32
	bne	a0,a5,.L21
	.loc 1 41 9 is_stmt 1
	.loc 1 41 16 is_stmt 0
	li	a0,19
.LVL29:
	j	.L27
.LVL30:
.L21:
	.loc 1 42 12 is_stmt 1
	.loc 1 42 15 is_stmt 0
	li	a5,17
	bne	a0,a5,.L22
	.loc 1 43 9 is_stmt 1
	.loc 1 43 16 is_stmt 0
	li	a0,18
.LVL31:
	j	.L27
.LVL32:
.L22:
	.loc 1 44 12 is_stmt 1
	.loc 1 44 15 is_stmt 0
	li	a5,14
	bne	a0,a5,.L23
	.loc 1 45 9 is_stmt 1
	.loc 1 45 16 is_stmt 0
	li	a0,17
.LVL33:
	j	.L27
.LVL34:
.L23:
	.loc 1 46 12 is_stmt 1
	.loc 1 46 15 is_stmt 0
	li	a5,36
	bne	a0,a5,.L24
	.loc 1 47 9 is_stmt 1
	.loc 1 47 16 is_stmt 0
	li	a0,5
.LVL35:
	j	.L27
.LVL36:
.L24:
	.loc 1 48 12 is_stmt 1
	.loc 1 48 15 is_stmt 0
	li	a5,9
	bne	a0,a5,.L25
	.loc 1 49 9 is_stmt 1
	.loc 1 49 16 is_stmt 0
	li	a0,12
.LVL37:
	j	.L27
.LVL38:
.L25:
	.loc 1 50 12 is_stmt 1
	.loc 1 50 15 is_stmt 0
	li	a5,20
	bne	a0,a5,.L26
	.loc 1 51 9 is_stmt 1
	.loc 1 51 16 is_stmt 0
	li	a0,20
.LVL39:
	j	.L27
.LVL40:
.L26:
.LBE6:
.LBE7:
	.loc 1 55 1
	li	a0,0
.LVL41:
	ret
	.cfi_endproc
.LFE243:
	.size	qcc74x_clk_get_peripheral_clock, .-qcc74x_clk_get_peripheral_clock
	.section	.text.qcc74x_peripheral_clock_get_by_id,"ax",@progbits
	.align	1
	.globl	qcc74x_peripheral_clock_get_by_id
	.type	qcc74x_peripheral_clock_get_by_id, @function
qcc74x_peripheral_clock_get_by_id:
.LFB244:
	.loc 1 58 1 is_stmt 1
	.cfi_startproc
.LVL42:
	.loc 1 59 5
	.loc 1 60 5
	.loc 1 62 5
	li	a4,19
	.loc 1 58 1 is_stmt 0
	mv	a5,a0
	.loc 1 62 5
	beq	a0,a4,.L37
	bgtu	a0,a4,.L30
	li	a4,14
	beq	a0,a4,.L38
	bgtu	a0,a4,.L31
	li	a4,10
	beq	a0,a4,.L39
	bgtu	a0,a4,.L32
	li	a4,5
	beq	a0,a4,.L40
	li	a4,6
	li	a1,0
	li	a0,1
.LVL43:
.L59:
	beq	a5,a4,.L29
.L28:
	.loc 1 148 1
	li	a0,0
	ret
.LVL44:
.L32:
	.loc 1 62 5
	li	a4,12
	beq	a0,a4,.L42
	li	a4,13
	.loc 1 81 17
	li	a1,1
	.loc 1 80 22
	li	a0,5
.LVL45:
	j	.L59
.LVL46:
.L31:
	.loc 1 62 5
	li	a4,17
	beq	a0,a4,.L44
	li	a4,18
	.loc 1 101 17
	li	a1,0
	.loc 1 100 22
	li	a0,11
.LVL47:
	.loc 1 62 5
	beq	a5,a4,.L29
	li	a4,15
	beq	a5,a4,.L46
	li	a4,16
.L67:
	.loc 1 120 22
	li	a0,7
	j	.L59
.LVL48:
.L30:
	.loc 1 62 5
	li	a4,27
	beq	a0,a4,.L48
	bgtu	a0,a4,.L34
	li	a4,25
	beq	a0,a4,.L49
	bgtu	a0,a4,.L35
	li	a4,21
	beq	a0,a4,.L50
	li	a4,22
	.loc 1 113 17
	li	a1,1
	.loc 1 112 22
	li	a0,46
.LVL49:
	j	.L59
.LVL50:
.L35:
	.loc 1 62 5
	li	a4,26
	.loc 1 121 17
	li	a1,1
	j	.L67
.L34:
	.loc 1 62 5
	li	a4,36
	beq	a0,a4,.L53
	bgtu	a0,a4,.L36
	li	a4,28
	beq	a0,a4,.L54
	li	a4,35
	.loc 1 133 17
	li	a1,0
	.loc 1 132 22
	li	a0,14
.LVL51:
	j	.L59
.LVL52:
.L36:
	.loc 1 62 5
	li	a4,37
	bne	a0,a4,.L28
	.loc 1 137 17
	li	a1,0
	.loc 1 136 22
	li	a0,32
.LVL53:
.L29:
	.loc 1 147 5 is_stmt 1
	.loc 1 147 12 is_stmt 0
	tail	qcc74x_clk_get_peripheral_clock
.LVL54:
.L37:
	.loc 1 105 17
	li	a1,0
	.loc 1 104 22
	li	a0,10
.LVL55:
	j	.L29
.LVL56:
.L38:
	.loc 1 85 17
	li	a1,2
.L57:
	.loc 1 76 22
	li	a0,5
.LVL57:
	j	.L29
.LVL58:
.L39:
	.loc 1 73 17
	li	a1,0
	.loc 1 72 22
	li	a0,15
.LVL59:
	j	.L29
.LVL60:
.L40:
	.loc 1 65 17
	li	a1,0
	.loc 1 64 22
	li	a0,0
.LVL61:
	j	.L29
.LVL62:
.L42:
	.loc 1 77 17
	li	a1,0
	j	.L57
.L44:
	.loc 1 97 17
	li	a1,0
	.loc 1 96 22
	li	a0,12
.LVL63:
	j	.L29
.L46:
	.loc 1 88 22
	li	a0,6
	j	.L29
.LVL64:
.L48:
	.loc 1 125 17
	li	a1,0
	.loc 1 124 22
	li	a0,36
.LVL65:
	j	.L29
.LVL66:
.L49:
	.loc 1 117 17
	li	a1,0
	.loc 1 116 22
	li	a0,17
.LVL67:
	j	.L29
.LVL68:
.L50:
	.loc 1 109 17
	li	a1,0
	.loc 1 108 22
	li	a0,9
.LVL69:
	j	.L29
.LVL70:
.L53:
	.loc 1 141 17
	li	a1,0
	.loc 1 140 22
	li	a0,20
.LVL71:
	j	.L29
.LVL72:
.L54:
	.loc 1 129 17
	li	a1,0
	.loc 1 128 22
	li	a0,2
.LVL73:
	j	.L29
	.cfi_endproc
.LFE244:
	.size	qcc74x_peripheral_clock_get_by_id, .-qcc74x_peripheral_clock_get_by_id
	.section	.text.qcc74x_peripheral_clock_control_by_id,"ax",@progbits
	.align	1
	.globl	qcc74x_peripheral_clock_control_by_id
	.type	qcc74x_peripheral_clock_control_by_id, @function
qcc74x_peripheral_clock_control_by_id:
.LFB247:
	.loc 1 161 1 is_stmt 1
	.cfi_startproc
.LVL74:
	.loc 1 162 5
	.loc 1 162 25 is_stmt 0
	li	a5,536870912
	lw	a4,1408(a5)
	.loc 1 161 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.loc 1 162 14
	sw	a4,4(sp)
	.loc 1 163 5 is_stmt 1
	.loc 1 163 25 is_stmt 0
	lw	a4,1412(a5)
	.loc 1 161 1
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 163 14
	sw	a4,8(sp)
	.loc 1 164 5 is_stmt 1
	.loc 1 164 25 is_stmt 0
	lw	a5,1416(a5)
	.loc 1 164 14
	sw	a5,12(sp)
	.loc 1 166 5 is_stmt 1
	.loc 1 166 54 is_stmt 0
	bne	a1,zero,.L105
	lui	s0,%hi(clear_bit)
	addi	s0,s0,%lo(clear_bit)
.L69:
.LVL75:
	.loc 1 168 5 is_stmt 1 discriminator 4
	li	a5,16
	beq	a0,a5,.L70
	.loc 1 168 5 is_stmt 0
	bgtu	a0,a5,.L71
	li	a5,8
	bgtu	a0,a5,.L72
	li	a5,6
	bgtu	a0,a5,.L73
	li	a5,3
	beq	a0,a5,.L74
	bgtu	a0,a5,.L75
	li	a5,1
	beq	a0,a5,.L76
	li	a5,2
	beq	a0,a5,.L77
	.loc 1 170 13
	li	a1,0
.LVL76:
	.loc 1 168 5
	beq	a0,zero,.L111
.L109:
	li	a0,-1
.LVL77:
.L68:
	.loc 1 271 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL78:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL79:
.L105:
	.cfi_restore_state
	.loc 1 166 54
	lui	s0,%hi(set_bit)
	addi	s0,s0,%lo(set_bit)
	j	.L69
.LVL80:
.L75:
	.loc 1 168 5
	li	a5,4
	.loc 1 191 13
	li	a1,2
.LVL81:
	.loc 1 168 5
	bne	a0,a5,.L110
	.loc 1 185 13 is_stmt 1
	li	a1,4
.L111:
	addi	a0,sp,4
.LVL82:
.L107:
	.loc 1 260 13 is_stmt 0
	jalr	s0
.LVL83:
	.loc 1 261 13 is_stmt 1
	.loc 1 266 5
	.loc 1 266 62 is_stmt 0
	lw	a4,4(sp)
	li	a5,536870912
	.loc 1 270 12
	li	a0,0
	.loc 1 266 62
	sw	a4,1408(a5)
	.loc 1 267 5 is_stmt 1
	.loc 1 267 62 is_stmt 0
	lw	a4,8(sp)
	sw	a4,1412(a5)
	.loc 1 268 5 is_stmt 1
	.loc 1 268 62 is_stmt 0
	lw	a4,12(sp)
	sw	a4,1416(a5)
	.loc 1 270 5 is_stmt 1
	.loc 1 270 12 is_stmt 0
	j	.L68
.LVL84:
.L72:
	.loc 1 168 5
	li	a5,12
	beq	a0,a5,.L82
	bgtu	a0,a5,.L83
	li	a5,10
	beq	a0,a5,.L84
	li	a5,11
	.loc 1 206 13
	li	a1,23
.LVL85:
	.loc 1 168 5
	beq	a0,a5,.L108
	li	a5,9
	.loc 1 200 13
	li	a1,7
	.loc 1 168 5
	bne	a0,a5,.L109
.LVL86:
.L110:
	.loc 1 257 13
	addi	a0,sp,8
	j	.L107
.LVL87:
.L83:
	.loc 1 168 5
	li	a5,13
	beq	a0,a5,.L87
	li	a5,15
	.loc 1 215 13
	li	a1,18
.LVL88:
	.loc 1 168 5
	beq	a0,a5,.L110
	j	.L109
.LVL89:
.L71:
	li	a5,24
	beq	a0,a5,.L89
	bgtu	a0,a5,.L90
	li	a5,20
	beq	a0,a5,.L91
	bgtu	a0,a5,.L92
	li	a5,18
	beq	a0,a5,.L93
	li	a5,19
	.loc 1 230 13
	li	a1,22
.LVL90:
	.loc 1 168 5
	beq	a0,a5,.L110
	li	a5,17
	.loc 1 224 13
	li	a1,20
	.loc 1 168 5
	beq	a0,a5,.L110
	j	.L109
.LVL91:
.L92:
	li	a5,22
	beq	a0,a5,.L96
	li	a5,23
	beq	a0,a5,.L76
	li	a5,21
	.loc 1 236 13
	li	a1,27
.LVL92:
	.loc 1 168 5
	beq	a0,a5,.L110
	j	.L109
.LVL93:
.L90:
	li	a5,28
	beq	a0,a5,.L98
	bgtu	a0,a5,.L99
	li	a5,26
	beq	a0,a5,.L100
	li	a5,27
	.loc 1 251 13
	li	a1,24
.LVL94:
	.loc 1 168 5
	beq	a0,a5,.L110
	li	a5,25
	.loc 1 248 13
	li	a1,22
	.loc 1 168 5
	bne	a0,a5,.L109
.L108:
	.loc 1 260 13
	addi	a0,sp,12
.LVL95:
	j	.L107
.LVL96:
.L99:
	.loc 1 168 5
	li	a5,29
	beq	a0,a5,.L103
	li	a5,30
	.loc 1 260 13
	li	a1,16
.LVL97:
	.loc 1 168 5
	beq	a0,a5,.L108
	j	.L109
.LVL98:
.L77:
	.loc 1 176 13 is_stmt 1
	li	a1,2
.LVL99:
	addi	a0,sp,4
.LVL100:
	jalr	s0
.LVL101:
	.loc 1 177 13
	li	a1,3
	addi	a0,sp,8
	jalr	s0
.LVL102:
	.loc 1 178 13
	li	a1,4
	j	.L110
.LVL103:
.L74:
	.loc 1 181 13
	li	a1,3
.LVL104:
	addi	a0,sp,4
.LVL105:
	jalr	s0
.LVL106:
	.loc 1 182 13
	li	a1,12
	j	.L110
.LVL107:
.L73:
	.loc 1 197 13
	li	a1,5
.LVL108:
	j	.L110
.LVL109:
.L84:
	.loc 1 203 13
	li	a1,11
.LVL110:
	j	.L110
.LVL111:
.L82:
	.loc 1 209 13
	li	a1,16
.LVL112:
	j	.L110
.LVL113:
.L87:
	.loc 1 212 13
	li	a1,17
.LVL114:
	j	.L110
.LVL115:
.L70:
	.loc 1 218 13
	li	a1,19
.LVL116:
	j	.L110
.LVL117:
.L100:
	.loc 1 221 13
	li	a1,25
.LVL118:
	j	.L110
.LVL119:
.L93:
	.loc 1 227 13
	li	a1,21
.LVL120:
	j	.L110
.LVL121:
.L91:
	.loc 1 233 13
	li	a1,23
.LVL122:
	j	.L110
.LVL123:
.L96:
	.loc 1 239 13
	li	a1,18
.LVL124:
	j	.L108
.LVL125:
.L76:
	.loc 1 242 13
	li	a1,13
.LVL126:
	j	.L110
.LVL127:
.L89:
	.loc 1 245 13
	li	a1,21
.LVL128:
	j	.L108
.LVL129:
.L98:
	.loc 1 254 13
	li	a1,28
.LVL130:
	j	.L110
.LVL131:
.L103:
	.loc 1 257 13
	li	a1,0
.LVL132:
	j	.L110
	.cfi_endproc
.LFE247:
	.size	qcc74x_peripheral_clock_control_by_id, .-qcc74x_peripheral_clock_control_by_id
	.section	.text.qcc74x_peripheral_clock_status_get_by_id,"ax",@progbits
	.align	1
	.globl	qcc74x_peripheral_clock_status_get_by_id
	.type	qcc74x_peripheral_clock_status_get_by_id, @function
qcc74x_peripheral_clock_status_get_by_id:
.LFB248:
	.loc 1 274 1
	.cfi_startproc
.LVL133:
	.loc 1 275 5
	.loc 1 275 14 is_stmt 0
	li	a3,536870912
	lw	a5,1408(a3)
.LVL134:
	.loc 1 276 5 is_stmt 1
	.loc 1 276 14 is_stmt 0
	lw	a4,1412(a3)
.LVL135:
	.loc 1 277 5 is_stmt 1
	.loc 1 277 14 is_stmt 0
	lw	a3,1416(a3)
.LVL136:
	.loc 1 278 5 is_stmt 1
	.loc 1 280 5
	li	a2,16
	beq	a0,a2,.L113
	bgtu	a0,a2,.L114
	li	a2,8
	bgtu	a0,a2,.L115
	li	a3,6
.LVL137:
	bgtu	a0,a3,.L116
	li	a3,3
	beq	a0,a3,.L117
	bgtu	a0,a3,.L118
	li	a3,1
	beq	a0,a3,.L119
	li	a3,2
	beq	a0,a3,.L120
	.loc 1 282 20 is_stmt 0
	andi	a5,a5,1
.LVL138:
	.loc 1 280 5
	beq	a0,zero,.L124
.LVL139:
.L152:
	li	a0,-1
.LVL140:
	ret
.LVL141:
.L118:
	li	a3,4
	.loc 1 297 20
	extu	a5,a5,4+1-1,4
.LVL142:
	.loc 1 280 5
	beq	a0,a3,.L124
	.loc 1 303 13 is_stmt 1
	.loc 1 303 20 is_stmt 0
	extu	a5,a4,2+1-1,2
.LVL143:
	.loc 1 304 13 is_stmt 1
.L124:
	.loc 1 378 5
	.loc 1 378 12 is_stmt 0
	mv	a0,a5
	.loc 1 379 1
	ret
.LVL144:
.L115:
	.loc 1 280 5
	li	a5,12
.LVL145:
	beq	a0,a5,.L125
	bgtu	a0,a5,.L126
	li	a5,10
	beq	a0,a5,.L127
	li	a2,11
	.loc 1 318 20
	extu	a5,a3,23+1-1,23
	.loc 1 280 5
	beq	a0,a2,.L124
	li	a3,9
.LVL146:
	.loc 1 312 20
	extu	a5,a4,7+1-1,7
.L154:
	.loc 1 280 5
	beq	a0,a3,.L124
	j	.L152
.LVL147:
.L126:
	li	a5,13
	beq	a0,a5,.L130
	li	a3,15
.LVL148:
	.loc 1 327 20
	extu	a5,a4,18+1-1,18
	j	.L154
.LVL149:
.L114:
	.loc 1 280 5
	li	a5,24
.LVL150:
	beq	a0,a5,.L132
	bgtu	a0,a5,.L133
	li	a5,20
	beq	a0,a5,.L134
	bgtu	a0,a5,.L135
	li	a5,18
	beq	a0,a5,.L136
	li	a3,19
.LVL151:
	.loc 1 342 20
	extu	a5,a4,22+1-1,22
	.loc 1 280 5
	beq	a0,a3,.L124
	li	a3,17
	.loc 1 336 20
	extu	a5,a4,20+1-1,20
	j	.L154
.LVL152:
.L135:
	.loc 1 280 5
	li	a5,22
	beq	a0,a5,.L139
	li	a3,23
.LVL153:
	.loc 1 354 20
	extu	a5,a4,13+1-1,13
	.loc 1 280 5
	beq	a0,a3,.L124
	li	a3,21
	.loc 1 348 20
	extu	a5,a4,27+1-1,27
	j	.L154
.LVL154:
.L133:
	.loc 1 280 5
	li	a5,28
	beq	a0,a5,.L142
	bgtu	a0,a5,.L143
	li	a5,26
	beq	a0,a5,.L144
	li	a2,27
	.loc 1 363 20
	extu	a5,a4,24+1-1,24
	.loc 1 280 5
	beq	a0,a2,.L124
	li	a4,25
.LVL155:
	.loc 1 360 20
	extu	a5,a3,22+1-1,22
.L156:
	.loc 1 280 5
	beq	a0,a4,.L124
	j	.L152
.LVL156:
.L143:
	li	a5,29
	beq	a0,a5,.L147
	li	a4,30
.LVL157:
	.loc 1 372 20
	extu	a5,a3,16+1-1,16
	j	.L156
.LVL158:
.L119:
	.loc 1 285 13 is_stmt 1
	.loc 1 285 20 is_stmt 0
	extu	a5,a4,13+1-1,13
.LVL159:
	.loc 1 286 13 is_stmt 1
	j	.L124
.LVL160:
.L120:
	.loc 1 288 13
	.loc 1 289 13
	.loc 1 290 13
	.loc 1 290 32 is_stmt 0
	srli	a0,a4,4
.LVL161:
	.loc 1 288 31
	srli	a5,a5,2
.LVL162:
	.loc 1 290 20
	and	a5,a5,a0
	.loc 1 289 32
	srli	a4,a4,3
.LVL163:
.L150:
	.loc 1 294 20
	and	a5,a5,a4
	andi	a5,a5,1
.LVL164:
	.loc 1 295 13 is_stmt 1
	j	.L124
.LVL165:
.L117:
	.loc 1 293 13
	.loc 1 294 13
	.loc 1 293 31 is_stmt 0
	srli	a5,a5,3
.LVL166:
	.loc 1 294 32
	srli	a4,a4,12
.LVL167:
	j	.L150
.LVL168:
.L116:
	.loc 1 309 13 is_stmt 1
	.loc 1 309 20 is_stmt 0
	extu	a5,a4,5+1-1,5
.LVL169:
	.loc 1 310 13 is_stmt 1
	j	.L124
.LVL170:
.L127:
	.loc 1 315 13
	.loc 1 315 20 is_stmt 0
	extu	a5,a4,11+1-1,11
.LVL171:
	.loc 1 316 13 is_stmt 1
	j	.L124
.LVL172:
.L125:
	.loc 1 321 13
	.loc 1 321 20 is_stmt 0
	extu	a5,a4,16+1-1,16
.LVL173:
	.loc 1 322 13 is_stmt 1
	j	.L124
.LVL174:
.L130:
	.loc 1 324 13
	.loc 1 324 20 is_stmt 0
	extu	a5,a4,17+1-1,17
.LVL175:
	.loc 1 325 13 is_stmt 1
	j	.L124
.LVL176:
.L113:
	.loc 1 330 13
	.loc 1 330 20 is_stmt 0
	extu	a5,a4,19+1-1,19
.LVL177:
	.loc 1 331 13 is_stmt 1
	j	.L124
.LVL178:
.L144:
	.loc 1 333 13
	.loc 1 333 20 is_stmt 0
	extu	a5,a4,25+1-1,25
.LVL179:
	.loc 1 334 13 is_stmt 1
	j	.L124
.LVL180:
.L136:
	.loc 1 339 13
	.loc 1 339 20 is_stmt 0
	extu	a5,a4,21+1-1,21
.LVL181:
	.loc 1 340 13 is_stmt 1
	j	.L124
.LVL182:
.L134:
	.loc 1 345 13
	.loc 1 345 20 is_stmt 0
	extu	a5,a4,23+1-1,23
.LVL183:
	.loc 1 346 13 is_stmt 1
	j	.L124
.LVL184:
.L139:
	.loc 1 351 13
	.loc 1 351 20 is_stmt 0
	extu	a5,a3,18+1-1,18
.LVL185:
	.loc 1 352 13 is_stmt 1
	j	.L124
.LVL186:
.L132:
	.loc 1 357 13
	.loc 1 357 20 is_stmt 0
	extu	a5,a3,21+1-1,21
.LVL187:
	.loc 1 358 13 is_stmt 1
	j	.L124
.LVL188:
.L142:
	.loc 1 366 13
	.loc 1 366 20 is_stmt 0
	extu	a5,a4,28+1-1,28
.LVL189:
	.loc 1 367 13 is_stmt 1
	j	.L124
.LVL190:
.L147:
	.loc 1 369 13
	.loc 1 369 20 is_stmt 0
	andi	a5,a4,1
.LVL191:
	.loc 1 370 13 is_stmt 1
	j	.L124
	.cfi_endproc
.LFE248:
	.size	qcc74x_peripheral_clock_status_get_by_id, .-qcc74x_peripheral_clock_status_get_by_id
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/soc/qcc743/std/include/qcc743_clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x456
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
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF5
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
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF4
	.byte	0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x60
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x88
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x7c
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0xf9
	.byte	0x6
	.4byte	.LASF16
	.byte	0
	.byte	0x6
	.4byte	.LASF17
	.byte	0x1
	.byte	0x6
	.4byte	.LASF18
	.byte	0x2
	.byte	0x6
	.4byte	.LASF19
	.byte	0x3
	.byte	0x6
	.4byte	.LASF20
	.byte	0x4
	.byte	0x6
	.4byte	.LASF21
	.byte	0x5
	.byte	0x6
	.4byte	.LASF22
	.byte	0x6
	.byte	0x6
	.4byte	.LASF23
	.byte	0x7
	.byte	0
	.byte	0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x4
	.byte	0x47
	.byte	0xe
	.4byte	0x18c
	.byte	0x6
	.4byte	.LASF24
	.byte	0
	.byte	0x6
	.4byte	.LASF25
	.byte	0x1
	.byte	0x6
	.4byte	.LASF26
	.byte	0x2
	.byte	0x6
	.4byte	.LASF27
	.byte	0x3
	.byte	0x6
	.4byte	.LASF28
	.byte	0x4
	.byte	0x6
	.4byte	.LASF29
	.byte	0x5
	.byte	0x6
	.4byte	.LASF30
	.byte	0x6
	.byte	0x6
	.4byte	.LASF31
	.byte	0x7
	.byte	0x6
	.4byte	.LASF32
	.byte	0x8
	.byte	0x6
	.4byte	.LASF33
	.byte	0x9
	.byte	0x6
	.4byte	.LASF34
	.byte	0xa
	.byte	0x6
	.4byte	.LASF35
	.byte	0xb
	.byte	0x6
	.4byte	.LASF36
	.byte	0xc
	.byte	0x6
	.4byte	.LASF37
	.byte	0xd
	.byte	0x6
	.4byte	.LASF38
	.byte	0xe
	.byte	0x6
	.4byte	.LASF39
	.byte	0xf
	.byte	0x6
	.4byte	.LASF40
	.byte	0x10
	.byte	0x6
	.4byte	.LASF41
	.byte	0x11
	.byte	0x6
	.4byte	.LASF42
	.byte	0x12
	.byte	0x6
	.4byte	.LASF43
	.byte	0x13
	.byte	0x6
	.4byte	.LASF44
	.byte	0x14
	.byte	0x6
	.4byte	.LASF45
	.byte	0x15
	.byte	0
	.byte	0x7
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x111
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.byte	0x1
	.byte	0x9c
	.4byte	0x1fd
	.byte	0x8
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x111
	.byte	0x36
	.4byte	0x8f
	.4byte	.LLST13
	.byte	0x9
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x113
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST14
	.byte	0x9
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x114
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST15
	.byte	0x9
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x115
	.byte	0xe
	.4byte	0x9b
	.4byte	.LLST16
	.byte	0x9
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x116
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST17
	.byte	0
	.byte	0xa
	.4byte	.LASF51
	.byte	0x1
	.byte	0xa0
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.byte	0x1
	.byte	0x9c
	.4byte	0x2b0
	.byte	0xb
	.4byte	.LASF52
	.byte	0x1
	.byte	0xa0
	.byte	0x33
	.4byte	0x8f
	.4byte	.LLST10
	.byte	0xb
	.4byte	.LASF53
	.byte	0x1
	.byte	0xa0
	.byte	0x3d
	.4byte	0x2b0
	.4byte	.LLST11
	.byte	0xc
	.4byte	.LASF46
	.byte	0x1
	.byte	0xa2
	.byte	0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0xc
	.4byte	.LASF47
	.byte	0x1
	.byte	0xa3
	.byte	0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xc
	.4byte	.LASF48
	.byte	0x1
	.byte	0xa4
	.byte	0xe
	.4byte	0x9b
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0xd
	.4byte	.LASF54
	.byte	0x1
	.byte	0xa6
	.byte	0xc
	.4byte	0x2cd
	.4byte	.LLST12
	.byte	0xe
	.4byte	.LVL101
	.4byte	0x289
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0xe
	.4byte	.LVL102
	.4byte	0x29e
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x10
	.4byte	.LVL106
	.byte	0xf
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0xf
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF55
	.byte	0x11
	.4byte	0x2c7
	.byte	0x12
	.4byte	0x2c7
	.byte	0x12
	.4byte	0x75
	.byte	0
	.byte	0x13
	.byte	0x4
	.4byte	0x9b
	.byte	0x13
	.byte	0x4
	.4byte	0x2b7
	.byte	0x14
	.4byte	.LASF57
	.byte	0x1
	.byte	0x9b
	.byte	0xd
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.byte	0x1
	.byte	0x9c
	.4byte	0x308
	.byte	0x15
	.4byte	.LASF56
	.byte	0x1
	.byte	0x9b
	.byte	0x21
	.4byte	0x2c7
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.string	"bit"
	.byte	0x1
	.byte	0x9b
	.byte	0x2c
	.4byte	0x75
	.4byte	.LLST1
	.byte	0
	.byte	0x14
	.4byte	.LASF58
	.byte	0x1
	.byte	0x96
	.byte	0xd
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.byte	0x1
	.byte	0x9c
	.4byte	0x33d
	.byte	0x15
	.4byte	.LASF56
	.byte	0x1
	.byte	0x96
	.byte	0x1f
	.4byte	0x2c7
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.string	"bit"
	.byte	0x1
	.byte	0x96
	.byte	0x2a
	.4byte	0x75
	.4byte	.LLST0
	.byte	0
	.byte	0x17
	.4byte	.LASF59
	.byte	0x1
	.byte	0x39
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.byte	0x1
	.byte	0x9c
	.4byte	0x391
	.byte	0xb
	.4byte	.LASF52
	.byte	0x1
	.byte	0x39
	.byte	0x34
	.4byte	0x8f
	.4byte	.LLST7
	.byte	0xd
	.4byte	.LASF60
	.byte	0x1
	.byte	0x3b
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST8
	.byte	0x18
	.string	"idx"
	.byte	0x1
	.byte	0x3c
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST9
	.byte	0x19
	.4byte	.LVL54
	.4byte	0x391
	.byte	0
	.byte	0x1a
	.4byte	.LASF68
	.byte	0x1
	.byte	0x18
	.byte	0xa
	.4byte	0x9b
	.byte	0x1
	.4byte	0x3bb
	.byte	0x1b
	.4byte	.LASF61
	.byte	0x1
	.byte	0x18
	.byte	0x32
	.4byte	0x8f
	.byte	0x1c
	.string	"idx"
	.byte	0x1
	.byte	0x18
	.byte	0x40
	.4byte	0x8f
	.byte	0
	.byte	0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0x5
	.byte	0xa
	.4byte	0x9b
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ef
	.byte	0xb
	.4byte	.LASF61
	.byte	0x1
	.byte	0x5
	.byte	0x2e
	.4byte	0x8f
	.4byte	.LLST2
	.byte	0x19
	.4byte	.LVL6
	.4byte	0x441
	.byte	0
	.byte	0x1d
	.4byte	0x391
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x1
	.byte	0x9c
	.4byte	0x441
	.byte	0x1e
	.4byte	0x3a2
	.4byte	.LLST3
	.byte	0x1e
	.4byte	0x3ae
	.4byte	.LLST4
	.byte	0x1f
	.4byte	0x391
	.4byte	.LBB4
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x18
	.byte	0xa
	.byte	0x1e
	.4byte	0x3ae
	.4byte	.LLST5
	.byte	0x1e
	.4byte	0x3a2
	.4byte	.LLST6
	.byte	0x19
	.4byte	.LVL16
	.4byte	0x44d
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF63
	.4byte	.LASF63
	.byte	0x4
	.byte	0x85
	.byte	0xa
	.byte	0x20
	.4byte	.LASF64
	.4byte	.LASF64
	.byte	0x4
	.byte	0x86
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
	.byte	0x4
	.byte	0x1
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
	.byte	0x6
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0x96,0x42
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x16
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
	.byte	0x18
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
	.byte	0x19
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
	.byte	0x49
	.byte	0x13
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
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
	.byte	0x1e
	.byte	0x5
	.byte	0
	.byte	0x31
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
	.byte	0
	.byte	0
	.byte	0x20
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
.LLST13:
	.4byte	.LVL133
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL161
	.4byte	.LVL165
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LFE248
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL134
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL135
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL141
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL144
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL156
	.4byte	.LVL157
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL158
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL168
	.4byte	.LFE248
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL144
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL154
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL170
	.4byte	.LFE248
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL136
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL144
	.4byte	.LVL159
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL160
	.4byte	.LVL162
	.2byte	0xc
	.byte	0x7f
	.byte	0
	.byte	0x32
	.byte	0x25
	.byte	0x7e
	.byte	0
	.byte	0x33
	.byte	0x25
	.byte	0x1a
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL165
	.4byte	.LVL166
	.2byte	0x7
	.byte	0x7f
	.byte	0
	.byte	0x33
	.byte	0x25
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL169
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL172
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL172
	.4byte	.LVL173
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL173
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LVL176
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL176
	.4byte	.LVL177
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL177
	.4byte	.LVL178
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL178
	.4byte	.LVL179
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL179
	.4byte	.LVL180
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL180
	.4byte	.LVL181
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL181
	.4byte	.LVL182
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL182
	.4byte	.LVL183
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL183
	.4byte	.LVL184
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL184
	.4byte	.LVL185
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL185
	.4byte	.LVL186
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL186
	.4byte	.LVL187
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL187
	.4byte	.LVL188
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL188
	.4byte	.LVL189
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL189
	.4byte	.LVL190
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL190
	.4byte	.LVL191
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL191
	.4byte	.LFE248
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL74
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL100
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL103
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
	.4byte	.LFE247
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL74
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL76
	.4byte	.LVL79
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL81
	.4byte	.LVL84
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL85
	.4byte	.LVL87
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL88
	.4byte	.LVL89
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL96
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL97
	.4byte	.LVL98
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL99
	.4byte	.LVL103
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL104
	.4byte	.LVL107
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL107
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL112
	.4byte	.LVL113
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL120
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
	.4byte	.LVL123
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL125
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL128
	.4byte	.LVL129
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL129
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
	.4byte	.LVL132
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL132
	.4byte	.LFE247
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL75
	.4byte	.LVL78
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LFE247
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3
	.4byte	.LFE246
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LFE245
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL60
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
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL67
	.4byte	.LVL68
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL68
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
	.4byte	.LVL72
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL73
	.4byte	.LFE244
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL42
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LFE244
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL42
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL54
	.4byte	.LFE244
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
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
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL13
	.4byte	.LFE242
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL30
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
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LFE243
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LFE243
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL22
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL30
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
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.4byte	.LFB246
	.4byte	.LFE246-.LFB246
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.4byte	.LFB247
	.4byte	.LFE247-.LFB247
	.4byte	.LFB248
	.4byte	.LFE248-.LFB248
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LFB245
	.4byte	.LFE245
	.4byte	.LFB246
	.4byte	.LFE246
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB243
	.4byte	.LFE243
	.4byte	.LFB244
	.4byte	.LFE244
	.4byte	.LFB247
	.4byte	.LFE247
	.4byte	.LFB248
	.4byte	.LFE248
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF40:
	.string	"QCC74x_PERIPHERAL_CLOCK_GPDAC"
.LASF67:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/soc/qcc743/std"
.LASF42:
	.string	"QCC74x_PERIPHERAL_CLOCK_SDH"
.LASF17:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_CLK"
.LASF30:
	.string	"QCC74x_PERIPHERAL_CLOCK_EMI"
.LASF38:
	.string	"QCC74x_PERIPHERAL_CLOCK_ADC"
.LASF63:
	.string	"Clock_System_Clock_Get"
.LASF62:
	.string	"qcc74x_clk_get_system_clock"
.LASF61:
	.string	"type"
.LASF51:
	.string	"qcc74x_peripheral_clock_control_by_id"
.LASF23:
	.string	"QCC74x_SYSTEM_CLOCK_MAX"
.LASF21:
	.string	"QCC74x_SYSTEM_CLOCK_XCLK"
.LASF39:
	.string	"QCC74x_PERIPHERAL_CLOCK_GPADC"
.LASF6:
	.string	"__uint32_t"
.LASF58:
	.string	"set_bit"
.LASF57:
	.string	"clear_bit"
.LASF2:
	.string	"short int"
.LASF43:
	.string	"QCC74x_PERIPHERAL_CLOCK_PKA"
.LASF31:
	.string	"QCC74x_PERIPHERAL_CLOCK_ISP"
.LASF56:
	.string	"value"
.LASF60:
	.string	"dev_type"
.LASF29:
	.string	"QCC74x_PERIPHERAL_CLOCK_DBI"
.LASF27:
	.string	"QCC74x_PERIPHERAL_CLOCK_SPI"
.LASF22:
	.string	"QCC74x_SYSTEM_CLOCK_XTAL"
.LASF53:
	.string	"enable"
.LASF14:
	.string	"uintptr_t"
.LASF54:
	.string	"bitop"
.LASF68:
	.string	"qcc74x_clk_get_peripheral_clock"
.LASF8:
	.string	"long long int"
.LASF64:
	.string	"Clock_Peripheral_Clock_Get"
.LASF59:
	.string	"qcc74x_peripheral_clock_get_by_id"
.LASF4:
	.string	"long int"
.LASF20:
	.string	"QCC74x_SYSTEM_CLOCK_F32K"
.LASF44:
	.string	"QCC74x_PERIPHERAL_CLOCK_RTC"
.LASF18:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_BCLK"
.LASF5:
	.string	"__uint8_t"
.LASF24:
	.string	"QCC74x_PERIPHERAL_CLOCK_UART0"
.LASF50:
	.string	"qcc74x_peripheral_clock_status_get_by_id"
.LASF26:
	.string	"QCC74x_PERIPHERAL_CLOCK_UART2"
.LASF1:
	.string	"unsigned char"
.LASF37:
	.string	"QCC74x_PERIPHERAL_CLOCK_IR"
.LASF0:
	.string	"signed char"
.LASF9:
	.string	"long long unsigned int"
.LASF13:
	.string	"uint32_t"
.LASF11:
	.string	"unsigned int"
.LASF32:
	.string	"QCC74x_PERIPHERAL_CLOCK_I2C0"
.LASF33:
	.string	"QCC74x_PERIPHERAL_CLOCK_I2C1"
.LASF3:
	.string	"short unsigned int"
.LASF28:
	.string	"QCC74x_PERIPHERAL_CLOCK_RESERVED"
.LASF15:
	.string	"char"
.LASF46:
	.string	"regval0"
.LASF47:
	.string	"regval1"
.LASF48:
	.string	"regval2"
.LASF55:
	.string	"_Bool"
.LASF41:
	.string	"QCC74x_PERIPHERAL_CLOCK_CAM"
.LASF66:
	.string	"./drivers/soc/qcc743/std/port/qcc743_clock.c"
.LASF25:
	.string	"QCC74x_PERIPHERAL_CLOCK_UART1"
.LASF65:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF7:
	.string	"long unsigned int"
.LASF10:
	.string	"__uintptr_t"
.LASF34:
	.string	"QCC74x_PERIPHERAL_CLOCK_PSRAMB"
.LASF35:
	.string	"QCC74x_PERIPHERAL_CLOCK_FLASH"
.LASF12:
	.string	"uint8_t"
.LASF52:
	.string	"peri"
.LASF36:
	.string	"QCC74x_PERIPHERAL_CLOCK_I2S"
.LASF49:
	.string	"tmpval"
.LASF16:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_ROOT_CLK"
.LASF45:
	.string	"QCC74x_PERIPHERAL_CLOCK_MAX"
.LASF19:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_PBCLK"
	.ident	"GCC: (GNU) 10.4.0"
