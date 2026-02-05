	.file	"qcc74x_flash_secreg_port.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.tcm_code../drivers/lhal/src/flash/qcc74x_flash_secreg_port.c198,"ax",@progbits
	.align	1
	.type	sflash_general_get_lock, @function
sflash_general_get_lock:
.LFB8:
	.file 1 "./drivers/lhal/src/flash/qcc74x_flash_secreg_port.c"
	.loc 1 199 1
	.cfi_startproc
.LVL0:
	.loc 1 203 5
	.loc 1 204 5
	.loc 1 208 33 is_stmt 0
	lbu	a5,11(a0)
	.loc 1 199 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.loc 1 208 33
	addi	a5,a5,-1
	.loc 1 199 1
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 204 14
	sw	zero,12(sp)
	.loc 1 205 5 is_stmt 1
.LVL1:
	.loc 1 206 5
	.loc 1 208 5
	.loc 1 208 8 is_stmt 0
	andi	a5,a5,0xff
	li	a4,2
	bgtu	a5,a4,.L6
	mv	s2,a1
	mv	s0,a0
	.loc 1 212 12
	li	s1,0
.LVL2:
.L3:
	.loc 1 212 17 is_stmt 1 discriminator 1
	.loc 1 212 26 is_stmt 0 discriminator 1
	lbu	a1,11(s0)
	.loc 1 213 20 discriminator 1
	lbu	a3,10(s0)
	.loc 1 212 5 discriminator 1
	bgtu	a1,s1,.L4
	.loc 1 219 5 is_stmt 1
	.loc 1 221 28 is_stmt 0
	mul	a3,a3,a1
	.loc 1 219 30
	lbu	a4,0(s0)
	.loc 1 219 22
	li	a5,255
	.loc 1 221 8
	li	a1,1
	.loc 1 219 22
	sll	a5,a5,a4
	.loc 1 219 13
	not	a5,a5
	.loc 1 222 26
	lw	a4,12(sp)
	.loc 1 222 35
	lbu	a2,4(s0)
	.loc 1 219 13
	andi	a5,a5,0xff
.LVL3:
	.loc 1 221 5 is_stmt 1
	.loc 1 221 8 is_stmt 0
	bne	a3,a1,.L5
	.loc 1 222 9 is_stmt 1
	.loc 1 222 47 is_stmt 0
	andi	a2,a2,7
.L5:
	.loc 1 224 9 is_stmt 1
	.loc 1 224 26 is_stmt 0
	srl	a4,a4,a2
	.loc 1 224 47
	and	a5,a5,a4
.LVL4:
	.loc 1 224 13
	sb	a5,0(s2)
.LVL5:
	.loc 1 227 12
	li	a0,0
.LVL6:
.L1:
	.loc 1 229 1
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
.LVL7:
.L4:
	.cfi_restore_state
	.loc 1 213 9 is_stmt 1
	.loc 1 213 20 is_stmt 0
	add	a5,s0,s1
	lbu	a1,7(a5)
	addi	a4,sp,12
	add	a2,a4,s1
	li	a0,0
	call	qcc74x_sflash_read_reg_with_cmd
.LVL8:
	.loc 1 213 12
	bne	a0,zero,.L1
	.loc 1 212 42 is_stmt 1 discriminator 2
	.loc 1 212 43 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL9:
	andi	s1,s1,0xff
.LVL10:
	j	.L3
.LVL11:
.L6:
	.loc 1 209 16
	li	a0,-1
.LVL12:
	j	.L1
	.cfi_endproc
.LFE8:
	.size	sflash_general_get_lock, .-sflash_general_get_lock
	.section	.tcm_code../drivers/lhal/src/flash/qcc74x_flash_secreg_port.c231,"ax",@progbits
	.align	1
	.type	sflash_general_set_lock, @function
sflash_general_set_lock:
.LFB9:
	.loc 1 233 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 237 5
	.loc 1 238 5
	.loc 1 233 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	mv	s0,a1
	sw	s2,32(sp)
	.loc 1 244 16
	addi	a1,sp,11
.LVL14:
	.cfi_offset 18, -16
	.loc 1 233 1
	mv	s2,a0
	.loc 1 244 16
	mv	a0,s0
.LVL15:
	.loc 1 233 1
	sw	s1,36(sp)
	sw	ra,44(sp)
	sw	s3,28(sp)
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.cfi_offset 19, -20
	.loc 1 233 1
	mv	s1,a2
	.loc 1 238 13
	sb	zero,11(sp)
	.loc 1 239 5 is_stmt 1
.LVL16:
	.loc 1 240 5
	.loc 1 240 14 is_stmt 0
	sw	zero,12(sp)
	.loc 1 241 5 is_stmt 1
.LVL17:
	.loc 1 242 5
	.loc 1 244 5
	.loc 1 244 16 is_stmt 0
	call	sflash_general_get_lock
.LVL18:
	.loc 1 244 8
	bne	a0,zero,.L8
	.loc 1 248 5 is_stmt 1
	.loc 1 248 13 is_stmt 0
	lbu	a5,11(sp)
.LVL19:
	.loc 1 251 5 is_stmt 1
	.loc 1 255 12 is_stmt 0
	li	s3,0
	.loc 1 251 21
	or	a4,s1,a5
	.loc 1 251 19
	xor	a0,a4,a5
.LVL20:
	.loc 1 251 8
	bne	a4,a5,.L10
.LVL21:
.L8:
	.loc 1 294 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL22:
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
.LVL23:
	lw	s3,28(sp)
	.cfi_restore 19
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL24:
.L11:
	.cfi_restore_state
	.loc 1 256 9 is_stmt 1
	.loc 1 256 21 is_stmt 0
	add	a5,s0,s3
	lbu	a3,10(s0)
	lbu	a1,7(a5)
	addi	a4,sp,12
	add	a2,a4,s3
	mv	a0,s2
	call	qcc74x_sflash_read_reg_with_cmd
.LVL25:
	.loc 1 256 12
	bne	a0,zero,.L8
	.loc 1 255 42 is_stmt 1 discriminator 2
	.loc 1 255 43 is_stmt 0 discriminator 2
	addi	s3,s3,1
.LVL26:
	andi	s3,s3,0xff
.LVL27:
.L10:
	.loc 1 255 17 is_stmt 1 discriminator 1
	.loc 1 255 5 is_stmt 0 discriminator 1
	lbu	a5,11(s0)
	bgtu	a5,s3,.L11
	.loc 1 263 5 is_stmt 1
	.loc 1 263 8 is_stmt 0
	lbu	a2,6(s0)
	li	a3,1
	.loc 1 264 28
	lbu	a5,4(s0)
	.loc 1 264 13
	lw	a4,12(sp)
	.loc 1 263 8
	bne	a2,a3,.L12
	.loc 1 264 9 is_stmt 1
	.loc 1 264 40 is_stmt 0
	andi	a5,a5,7
.L12:
	.loc 1 266 9 is_stmt 1
	.loc 1 266 19 is_stmt 0
	sll	a5,s1,a5
	.loc 1 266 13
	or	a5,a5,a4
	.loc 1 269 16
	mv	a0,s2
	sw	a5,12(sp)
	.loc 1 269 5 is_stmt 1
	.loc 1 269 16 is_stmt 0
	call	qcc74x_sflash_write_enable
.LVL28:
	.loc 1 269 8
	bne	a0,zero,.L8
	.loc 1 273 5 is_stmt 1
	.loc 1 273 36 is_stmt 0
	lbu	a5,11(s0)
	lbu	a2,10(s0)
	.loc 1 273 65
	lbu	a3,6(s0)
.LVL29:
	.loc 1 274 5 is_stmt 1
	.loc 1 274 16 is_stmt 0
	lbu	a1,5(s0)
	.loc 1 273 36
	mul	a2,a2,a5
	.loc 1 274 16
	addi	a5,sp,12
	mv	a0,s2
.LVL30:
	.loc 1 273 15
	sub	a2,a2,a3
	.loc 1 274 16
	andi	a2,a2,0xff
	add	a2,a5,a2
	call	qcc74x_sflash_write_reg_with_cmd
.LVL31:
	.loc 1 274 8
	bne	a0,zero,.L8
	.loc 1 280 5 is_stmt 1
	.loc 1 280 16 is_stmt 0
	addi	a1,sp,11
	mv	a0,s0
.LVL32:
	call	sflash_general_get_lock
.LVL33:
	.loc 1 280 8
	bne	a0,zero,.L8
	.loc 1 284 5 is_stmt 1
	.loc 1 284 13 is_stmt 0
	lbu	a5,11(sp)
.LVL34:
	.loc 1 287 5 is_stmt 1
	.loc 1 287 21 is_stmt 0
	or	a0,s1,a5
.LVL35:
	.loc 1 287 19
	xor	a0,a0,a5
	.loc 1 287 8
	snez	a0,a0
	neg	a0,a0
	j	.L8
	.cfi_endproc
.LFE9:
	.size	sflash_general_set_lock, .-sflash_general_set_lock
	.section	.tcm_code../drivers/lhal/src/flash/qcc74x_flash_secreg_port.c147,"ax",@progbits
	.align	1
	.type	sflash_general_erase, @function
sflash_general_erase:
.LFB7:
	.loc 1 148 1 is_stmt 1
	.cfi_startproc
.LVL36:
	.loc 1 152 5
	.loc 1 153 5
	.loc 1 154 5
	.loc 1 155 5
	.loc 1 157 5
	.loc 1 148 1 is_stmt 0
	addi	sp,sp,-64
	.cfi_def_cfa_offset 64
	sw	s0,56(sp)
	sw	ra,60(sp)
	sw	s1,52(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 148 1
	sw	a0,12(sp)
	mv	s0,a1
	.loc 1 157 16
	call	qcc74x_sflash_write_enable
.LVL37:
	.loc 1 157 8
	bne	a0,zero,.L18
	.loc 1 161 5 is_stmt 1
	li	a2,5
	li	a1,0
	addi	a0,sp,28
.LVL38:
	call	arch_memset4
.LVL39:
	.loc 1 163 5
	.loc 1 164 25 is_stmt 0
	li	a5,3
	sb	a5,31(sp)
	.loc 1 165 32
	lw	a5,12(sp)
	.loc 1 163 23
	sb	zero,28(sp)
	.loc 1 164 5 is_stmt 1
	.loc 1 165 5
.LVL40:
	.loc 1 167 5
	.loc 1 165 20 is_stmt 0
	lbu	a5,0(a5)
.LVL41:
	.loc 1 167 8
	andi	a5,a5,32
	beq	a5,zero,.L20
	.loc 1 169 9 is_stmt 1
	li	a1,1
	addi	a0,sp,12
.LVL42:
	call	qcc74x_sflash_set_32bits_addr_mode
.LVL43:
	.loc 1 170 9
	.loc 1 170 28 is_stmt 0
	lbu	a5,31(sp)
	.loc 1 171 45
	li	a4,1140850688
	.loc 1 170 28
	addi	a5,a5,1
	sb	a5,31(sp)
	.loc 1 171 9 is_stmt 1
	.loc 1 171 56 is_stmt 0
	srli	a5,s0,8
	.loc 1 171 45
	or	a5,a5,a4
	.loc 1 172 41
	slli	s0,s0,24
.LVL44:
	.loc 1 171 30
	sw	a5,40(sp)
	.loc 1 172 9 is_stmt 1
	.loc 1 172 30 is_stmt 0
	sw	s0,44(sp)
.L21:
	.loc 1 182 5 is_stmt 1
	addi	a0,sp,28
	call	qcc74x_sf_ctrl_sendcmd
.LVL45:
	.loc 1 184 5
	.loc 1 185 5
	.loc 1 184 13 is_stmt 0
	li	s0,0
	.loc 1 189 48
	li	s1,3
.LVL46:
.L22:
	.loc 1 185 11 is_stmt 1
	.loc 1 185 12 is_stmt 0
	lw	a0,12(sp)
	call	qcc74x_sflash_busy
.LVL47:
	.loc 1 185 11
	bne	a0,zero,.L23
.LVL48:
.L18:
	.loc 1 196 1
	lw	ra,60(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,56(sp)
	.cfi_restore 8
	lw	s1,52(sp)
	.cfi_restore 9
	addi	sp,sp,64
	.cfi_def_cfa_offset 0
	jr	ra
.LVL49:
.L20:
	.cfi_restore_state
	.loc 1 179 9 is_stmt 1
	.loc 1 179 45 is_stmt 0
	li	a5,1140850688
	or	s0,s0,a5
.LVL50:
	.loc 1 179 30
	sw	s0,40(sp)
.LVL51:
	j	.L21
.LVL52:
.L23:
	.loc 1 186 9 is_stmt 1
	li	a0,500
	call	arch_delay_us
.LVL53:
	.loc 1 187 9
	.loc 1 189 32 is_stmt 0
	lw	a4,12(sp)
	.loc 1 187 16
	addi	s0,s0,1
.LVL54:
	.loc 1 189 9 is_stmt 1
	.loc 1 189 32 is_stmt 0
	lbu	a5,73(a4)
	lbu	a3,72(a4)
	slli	a5,a5,8
	or	a5,a5,a3
	.loc 1 189 48
	mul	a5,a5,s1
	.loc 1 189 12
	bgeu	a5,s0,.L22
	.loc 1 190 20
	li	a0,-1
	j	.L18
	.cfi_endproc
.LFE7:
	.size	sflash_general_erase, .-sflash_general_erase
	.section	.tcm_code../drivers/lhal/src/flash/qcc74x_flash_secreg_port.c78,"ax",@progbits
	.align	1
	.type	sflash_general_write, @function
sflash_general_write:
.LFB6:
	.loc 1 79 1 is_stmt 1
	.cfi_startproc
.LVL55:
	.loc 1 83 5
	.loc 1 84 5
	.loc 1 85 5
	.loc 1 86 5
	.loc 1 87 5
	.loc 1 88 5
	.loc 1 90 5
	.loc 1 79 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s1,84(sp)
	sw	s4,72(sp)
	sw	a0,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	mv	s1,a1
	mv	s4,a2
	.loc 1 90 5
	li	a1,0
.LVL56:
	li	a2,5
.LVL57:
	addi	a0,sp,28
.LVL58:
	.loc 1 79 1
	sw	s2,80(sp)
	sw	s3,76(sp)
	sw	ra,92(sp)
	sw	s0,88(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.loc 1 79 1
	mv	s2,a3
	.loc 1 90 5
	call	arch_memset4
.LVL59:
	.loc 1 92 5 is_stmt 1
	.loc 1 92 23 is_stmt 0
	li	a5,1
	sb	a5,28(sp)
	.loc 1 93 5 is_stmt 1
	.loc 1 93 25 is_stmt 0
	li	a5,3
	sb	a5,31(sp)
	.loc 1 94 5 is_stmt 1
	.loc 1 94 32 is_stmt 0
	lw	a5,12(sp)
	.loc 1 94 20
	lbu	s3,0(a5)
	andi	s3,s3,32
.LVL60:
	.loc 1 95 5 is_stmt 1
	.loc 1 95 8 is_stmt 0
	beq	s3,zero,.L27
	.loc 1 97 9 is_stmt 1
	li	a1,1
	addi	a0,sp,12
	call	qcc74x_sflash_set_32bits_addr_mode
.LVL61:
	.loc 1 98 9
	.loc 1 98 28 is_stmt 0
	lbu	a5,31(sp)
	addi	a5,a5,1
	sb	a5,31(sp)
.L27:
	.loc 1 116 9
	li	s5,536915968
	.loc 1 110 16
	li	s7,256
	.loc 1 116 9
	addi	s5,s5,1536
	.loc 1 122 49
	li	s6,1107296256
	.loc 1 137 52
	li	s8,20
	j	.L34
.L35:
	.loc 1 106 9 is_stmt 1
	.loc 1 106 20 is_stmt 0
	lw	a0,12(sp)
	call	qcc74x_sflash_write_enable
.LVL62:
	.loc 1 106 12
	bne	a0,zero,.L26
	.loc 1 110 9 is_stmt 1
	.loc 1 110 32 is_stmt 0
	andi	s0,s1,255
	.loc 1 110 16
	sub	s0,s7,s0
.LVL63:
	.loc 1 112 9 is_stmt 1
	sgtu	a5,s2,s0
	mveqz	s0, s2, a5
.LVL64:
	.loc 1 116 9
	mv	a2,s0
	mv	a1,s4
	mv	a0,s5
.LVL65:
	call	arch_memcpy_fast
.LVL66:
	.loc 1 118 9
	.loc 1 118 12 is_stmt 0
	beq	s3,zero,.L30
	.loc 1 119 13 is_stmt 1
	.loc 1 119 60 is_stmt 0
	srli	a5,s1,8
	.loc 1 119 49
	or	a5,a5,s6
	.loc 1 119 34
	sw	a5,40(sp)
	.loc 1 120 13 is_stmt 1
	.loc 1 120 45 is_stmt 0
	slli	a5,s1,24
	.loc 1 120 34
	sw	a5,44(sp)
.L31:
	.loc 1 124 9 is_stmt 1
	.loc 1 126 9 is_stmt 0
	addi	a0,sp,28
	.loc 1 124 27
	sw	s0,36(sp)
	.loc 1 126 9 is_stmt 1
	.loc 1 128 13 is_stmt 0
	sub	s2,s2,s0
.LVL67:
	.loc 1 129 14
	add	s4,s4,s0
.LVL68:
	.loc 1 130 17
	add	s1,s1,s0
.LVL69:
	.loc 1 126 9
	call	qcc74x_sf_ctrl_sendcmd
.LVL70:
	.loc 1 128 9 is_stmt 1
	.loc 1 129 9
	.loc 1 130 9
	.loc 1 132 9
	.loc 1 133 9
	.loc 1 132 17 is_stmt 0
	li	s0,0
.LVL71:
.L32:
	.loc 1 133 15 is_stmt 1
	.loc 1 133 16 is_stmt 0
	lw	a0,12(sp)
	call	qcc74x_sflash_busy
.LVL72:
	.loc 1 133 15
	bne	a0,zero,.L33
.LVL73:
.L34:
	.loc 1 105 11 is_stmt 1
	bne	s2,zero,.L35
	.loc 1 143 12 is_stmt 0
	li	a0,0
.L26:
	.loc 1 145 1
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
	lw	s1,84(sp)
	.cfi_restore 9
.LVL74:
	lw	s2,80(sp)
	.cfi_restore 18
.LVL75:
	lw	s3,76(sp)
	.cfi_restore 19
.LVL76:
	lw	s4,72(sp)
	.cfi_restore 20
.LVL77:
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.LVL78:
.L30:
	.cfi_restore_state
	.loc 1 122 13 is_stmt 1
	.loc 1 122 49 is_stmt 0
	or	a5,s1,s6
	.loc 1 122 34
	sw	a5,40(sp)
	j	.L31
.LVL79:
.L33:
	.loc 1 134 13 is_stmt 1
	li	a0,100
	call	arch_delay_us
.LVL80:
	.loc 1 135 13
	.loc 1 137 36 is_stmt 0
	lw	a4,12(sp)
	.loc 1 135 20
	addi	s0,s0,1
.LVL81:
	.loc 1 137 13 is_stmt 1
	.loc 1 137 36 is_stmt 0
	lbu	a5,79(a4)
	lbu	a3,78(a4)
	slli	a5,a5,8
	or	a5,a5,a3
	.loc 1 137 52
	mul	a5,a5,s8
	.loc 1 137 16
	bgeu	a5,s0,.L32
	.loc 1 138 24
	li	a0,-1
	j	.L26
	.cfi_endproc
.LFE6:
	.size	sflash_general_write, .-sflash_general_write
	.section	.tcm_code../drivers/lhal/src/flash/qcc74x_flash_secreg_port.c12,"ax",@progbits
	.align	1
	.type	sflash_general_read, @function
sflash_general_read:
.LFB5:
	.loc 1 13 1 is_stmt 1
	.cfi_startproc
.LVL82:
	.loc 1 17 5
	.loc 1 18 5
	.loc 1 19 5
	.loc 1 20 5
	.loc 1 21 5
	.loc 1 23 5
	.loc 1 13 1 is_stmt 0
	addi	sp,sp,-96
	.cfi_def_cfa_offset 96
	sw	s1,84(sp)
	sw	s4,72(sp)
	sw	a0,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 20, -24
	mv	s1,a1
	mv	s4,a2
	.loc 1 23 5
	li	a1,0
.LVL83:
	li	a2,5
.LVL84:
	addi	a0,sp,28
.LVL85:
	.loc 1 13 1
	sw	s0,88(sp)
	sw	s3,76(sp)
	sw	ra,92(sp)
	sw	s2,80(sp)
	sw	s5,68(sp)
	sw	s6,64(sp)
	sw	s7,60(sp)
	sw	s8,56(sp)
	sw	s9,52(sp)
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.loc 1 13 1
	mv	s0,a3
	.loc 1 23 5
	call	arch_memset4
.LVL86:
	.loc 1 25 5 is_stmt 1
	.loc 1 26 25 is_stmt 0
	li	a5,3
	sb	a5,31(sp)
	.loc 1 27 26
	li	a5,1
	sb	a5,32(sp)
	.loc 1 28 32
	lw	a5,12(sp)
	.loc 1 25 23
	sb	zero,28(sp)
	.loc 1 26 5 is_stmt 1
	.loc 1 27 5
	.loc 1 28 5
	.loc 1 28 20 is_stmt 0
	lbu	s3,0(a5)
	andi	s3,s3,32
.LVL87:
	.loc 1 29 5 is_stmt 1
	.loc 1 29 8 is_stmt 0
	beq	s3,zero,.L42
	.loc 1 31 9 is_stmt 1
	li	a1,1
	addi	a0,sp,12
	call	qcc74x_sflash_set_32bits_addr_mode
.LVL88:
	.loc 1 32 9
	.loc 1 32 28 is_stmt 0
	lbu	a5,31(sp)
	addi	a5,a5,1
	sb	a5,31(sp)
.L42:
	.loc 1 67 9
	li	s5,536915968
	.loc 1 44 49
	li	s7,1207959552
	.loc 1 47 12
	li	s8,255
	.loc 1 59 15
	li	s9,1601536
	.loc 1 67 9
	addi	s5,s5,1536
.L43:
	.loc 1 39 11 is_stmt 1
	bne	s0,zero,.L50
	.loc 1 74 12 is_stmt 0
	li	a0,0
.L41:
	.loc 1 76 1
	lw	ra,92(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,88(sp)
	.cfi_restore 8
.LVL89:
	lw	s1,84(sp)
	.cfi_restore 9
.LVL90:
	lw	s2,80(sp)
	.cfi_restore 18
	lw	s3,76(sp)
	.cfi_restore 19
.LVL91:
	lw	s4,72(sp)
	.cfi_restore 20
.LVL92:
	lw	s5,68(sp)
	.cfi_restore 21
	lw	s6,64(sp)
	.cfi_restore 22
	lw	s7,60(sp)
	.cfi_restore 23
	lw	s8,56(sp)
	.cfi_restore 24
	lw	s9,52(sp)
	.cfi_restore 25
	addi	sp,sp,96
	.cfi_def_cfa_offset 0
	jr	ra
.LVL93:
.L50:
	.cfi_restore_state
	.loc 1 40 9 is_stmt 1
	.loc 1 40 12 is_stmt 0
	beq	s3,zero,.L44
	.loc 1 41 13 is_stmt 1
	.loc 1 41 60 is_stmt 0
	srli	a5,s1,8
	.loc 1 41 49
	or	a5,a5,s7
	.loc 1 41 34
	sw	a5,40(sp)
	.loc 1 42 13 is_stmt 1
	.loc 1 42 45 is_stmt 0
	slli	a5,s1,24
	.loc 1 42 34
	sw	a5,44(sp)
.L45:
	.loc 1 47 9 is_stmt 1
	.loc 1 47 12 is_stmt 0
	bgtu	s0,s8,.L51
	.loc 1 51 13 is_stmt 1
.LVL94:
	.loc 1 52 13
	.loc 1 52 38 is_stmt 0
	addi	a5,s0,3
	.loc 1 52 43
	andi	a5,a5,-4
	mv	s2,s0
.LVL95:
.L46:
	.loc 1 55 9
	addi	a0,sp,28
	sw	a5,36(sp)
.LVL96:
	.loc 1 55 9 is_stmt 1
	.loc 1 59 15 is_stmt 0
	addi	s6,s9,-1536
	.loc 1 55 9
	call	qcc74x_sf_ctrl_sendcmd
.LVL97:
	.loc 1 57 9 is_stmt 1
	.loc 1 59 9
.L47:
	.loc 1 59 15
	.loc 1 59 16 is_stmt 0
	call	qcc74x_sf_ctrl_get_busy_state
.LVL98:
	.loc 1 59 15
	bne	a0,zero,.L49
	.loc 1 67 9 is_stmt 1
	mv	a0,s4
	mv	a2,s2
	mv	a1,s5
	call	arch_memcpy_fast
.LVL99:
	.loc 1 69 9
	.loc 1 69 13 is_stmt 0
	sub	s0,s0,s2
.LVL100:
	.loc 1 70 9 is_stmt 1
	.loc 1 70 14 is_stmt 0
	add	s4,s4,s2
.LVL101:
	.loc 1 71 9 is_stmt 1
	.loc 1 71 17 is_stmt 0
	add	s1,s1,s2
.LVL102:
	j	.L43
.LVL103:
.L44:
	.loc 1 44 13 is_stmt 1
	.loc 1 44 49 is_stmt 0
	or	a5,s1,s7
	.loc 1 44 34
	sw	a5,40(sp)
	j	.L45
.L51:
	.loc 1 49 31
	li	a5,256
	.loc 1 48 20
	li	s2,256
	j	.L46
.LVL104:
.L49:
	.loc 1 60 13 is_stmt 1
	.loc 1 62 13
	.loc 1 62 16 is_stmt 0
	addi	s6,s6,-1
.LVL105:
	bne	s6,zero,.L47
	.loc 1 63 24
	li	a0,-1
	j	.L41
	.cfi_endproc
.LFE5:
	.size	sflash_general_read, .-sflash_general_read
	.globl	flash_secreg_apis
	.section	.tcm_code../drivers/lhal/src/flash/qcc74x_flash_secreg_port.c300,"a"
	.align	2
	.type	flash_secreg_apis, @object
	.size	flash_secreg_apis, 60
flash_secreg_apis:
	.word	sflash_general_read
	.word	sflash_general_write
	.word	sflash_general_erase
	.word	sflash_general_get_lock
	.word	sflash_general_set_lock
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/src/flash/qcc74x_sf_ctrl.h"
	.file 5 "./drivers/lhal/src/flash/qcc74x_sflash.h"
	.file 6 "./drivers/lhal/src/flash/qcc74x_flash_secreg.h"
	.file 7 "./drivers/lhal/src/flash/qcc74x_flash_secreg_port.h"
	.file 8 "./drivers/lhal/include/qcc74x_common.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd39
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF148
	.byte	0xc
	.4byte	.LASF149
	.4byte	.LASF150
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x24
	.byte	0x14
	.4byte	0x46
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x60
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF15
	.byte	0x6
	.byte	0x4
	.4byte	0xc2
	.byte	0x7
	.byte	0x8
	.4byte	.LASF112
	.byte	0x14
	.byte	0x4
	.2byte	0x132
	.byte	0x8
	.4byte	0x15e
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x133
	.byte	0xd
	.4byte	0x8f
	.byte	0
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x134
	.byte	0xd
	.4byte	0x8f
	.byte	0x1
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x135
	.byte	0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x136
	.byte	0xd
	.4byte	0x8f
	.byte	0x3
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x137
	.byte	0xd
	.4byte	0x8f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x138
	.byte	0xd
	.4byte	0x8f
	.byte	0x5
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x139
	.byte	0xd
	.4byte	0x8f
	.byte	0x6
	.byte	0xa
	.string	"rsv"
	.byte	0x4
	.2byte	0x13a
	.byte	0xd
	.4byte	0x15e
	.byte	0x7
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x13b
	.byte	0xe
	.4byte	0xa7
	.byte	0x8
	.byte	0x9
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x13c
	.byte	0xe
	.4byte	0x16e
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	0x8f
	.4byte	0x16e
	.byte	0xc
	.4byte	0x88
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	0xa7
	.4byte	0x17e
	.byte	0xc
	.4byte	0x88
	.byte	0x1
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x8f
	.byte	0xd
	.4byte	0x17e
	.byte	0xb
	.4byte	0x8f
	.4byte	0x199
	.byte	0xc
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0xe
	.byte	0x54
	.byte	0x5
	.byte	0x11
	.byte	0x9
	.4byte	0x54b
	.byte	0xf
	.4byte	.LASF25
	.byte	0x5
	.byte	0x13
	.byte	0xd
	.4byte	0x8f
	.byte	0
	.byte	0xf
	.4byte	.LASF26
	.byte	0x5
	.byte	0x14
	.byte	0xd
	.4byte	0x8f
	.byte	0x1
	.byte	0xf
	.4byte	.LASF27
	.byte	0x5
	.byte	0x15
	.byte	0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0xf
	.4byte	.LASF28
	.byte	0x5
	.byte	0x16
	.byte	0xd
	.4byte	0x8f
	.byte	0x3
	.byte	0xf
	.4byte	.LASF29
	.byte	0x5
	.byte	0x17
	.byte	0xd
	.4byte	0x8f
	.byte	0x4
	.byte	0xf
	.4byte	.LASF30
	.byte	0x5
	.byte	0x18
	.byte	0xd
	.4byte	0x8f
	.byte	0x5
	.byte	0xf
	.4byte	.LASF31
	.byte	0x5
	.byte	0x19
	.byte	0xd
	.4byte	0x8f
	.byte	0x6
	.byte	0xf
	.4byte	.LASF32
	.byte	0x5
	.byte	0x1a
	.byte	0xd
	.4byte	0x8f
	.byte	0x7
	.byte	0xf
	.4byte	.LASF33
	.byte	0x5
	.byte	0x1b
	.byte	0xd
	.4byte	0x8f
	.byte	0x8
	.byte	0xf
	.4byte	.LASF34
	.byte	0x5
	.byte	0x1c
	.byte	0xd
	.4byte	0x8f
	.byte	0x9
	.byte	0xf
	.4byte	.LASF35
	.byte	0x5
	.byte	0x21
	.byte	0xd
	.4byte	0x8f
	.byte	0xa
	.byte	0xf
	.4byte	.LASF36
	.byte	0x5
	.byte	0x22
	.byte	0xd
	.4byte	0x8f
	.byte	0xb
	.byte	0xf
	.4byte	.LASF37
	.byte	0x5
	.byte	0x24
	.byte	0xd
	.4byte	0x8f
	.byte	0xc
	.byte	0x10
	.string	"mid"
	.byte	0x5
	.byte	0x25
	.byte	0xd
	.4byte	0x8f
	.byte	0xd
	.byte	0xf
	.4byte	.LASF38
	.byte	0x5
	.byte	0x26
	.byte	0xe
	.4byte	0x9b
	.byte	0xe
	.byte	0xf
	.4byte	.LASF39
	.byte	0x5
	.byte	0x27
	.byte	0xd
	.4byte	0x8f
	.byte	0x10
	.byte	0xf
	.4byte	.LASF40
	.byte	0x5
	.byte	0x28
	.byte	0xd
	.4byte	0x8f
	.byte	0x11
	.byte	0xf
	.4byte	.LASF41
	.byte	0x5
	.byte	0x29
	.byte	0xd
	.4byte	0x8f
	.byte	0x12
	.byte	0xf
	.4byte	.LASF42
	.byte	0x5
	.byte	0x2a
	.byte	0xd
	.4byte	0x8f
	.byte	0x13
	.byte	0xf
	.4byte	.LASF43
	.byte	0x5
	.byte	0x2b
	.byte	0xd
	.4byte	0x8f
	.byte	0x14
	.byte	0xf
	.4byte	.LASF44
	.byte	0x5
	.byte	0x2c
	.byte	0xd
	.4byte	0x8f
	.byte	0x15
	.byte	0xf
	.4byte	.LASF45
	.byte	0x5
	.byte	0x2d
	.byte	0xd
	.4byte	0x8f
	.byte	0x16
	.byte	0xf
	.4byte	.LASF46
	.byte	0x5
	.byte	0x2e
	.byte	0xd
	.4byte	0x8f
	.byte	0x17
	.byte	0xf
	.4byte	.LASF47
	.byte	0x5
	.byte	0x2f
	.byte	0xd
	.4byte	0x8f
	.byte	0x18
	.byte	0xf
	.4byte	.LASF48
	.byte	0x5
	.byte	0x30
	.byte	0xd
	.4byte	0x8f
	.byte	0x19
	.byte	0xf
	.4byte	.LASF49
	.byte	0x5
	.byte	0x31
	.byte	0xd
	.4byte	0x8f
	.byte	0x1a
	.byte	0xf
	.4byte	.LASF50
	.byte	0x5
	.byte	0x32
	.byte	0xd
	.4byte	0x8f
	.byte	0x1b
	.byte	0xf
	.4byte	.LASF51
	.byte	0x5
	.byte	0x33
	.byte	0xd
	.4byte	0x8f
	.byte	0x1c
	.byte	0xf
	.4byte	.LASF52
	.byte	0x5
	.byte	0x34
	.byte	0xd
	.4byte	0x8f
	.byte	0x1d
	.byte	0xf
	.4byte	.LASF53
	.byte	0x5
	.byte	0x35
	.byte	0xd
	.4byte	0x8f
	.byte	0x1e
	.byte	0xf
	.4byte	.LASF54
	.byte	0x5
	.byte	0x36
	.byte	0xd
	.4byte	0x8f
	.byte	0x1f
	.byte	0xf
	.4byte	.LASF55
	.byte	0x5
	.byte	0x37
	.byte	0xd
	.4byte	0x8f
	.byte	0x20
	.byte	0xf
	.4byte	.LASF56
	.byte	0x5
	.byte	0x38
	.byte	0xd
	.4byte	0x8f
	.byte	0x21
	.byte	0xf
	.4byte	.LASF57
	.byte	0x5
	.byte	0x39
	.byte	0xd
	.4byte	0x8f
	.byte	0x22
	.byte	0xf
	.4byte	.LASF58
	.byte	0x5
	.byte	0x3a
	.byte	0xd
	.4byte	0x8f
	.byte	0x23
	.byte	0xf
	.4byte	.LASF59
	.byte	0x5
	.byte	0x3b
	.byte	0xd
	.4byte	0x8f
	.byte	0x24
	.byte	0xf
	.4byte	.LASF60
	.byte	0x5
	.byte	0x3c
	.byte	0xd
	.4byte	0x8f
	.byte	0x25
	.byte	0xf
	.4byte	.LASF61
	.byte	0x5
	.byte	0x3d
	.byte	0xd
	.4byte	0x8f
	.byte	0x26
	.byte	0xf
	.4byte	.LASF62
	.byte	0x5
	.byte	0x3e
	.byte	0xd
	.4byte	0x8f
	.byte	0x27
	.byte	0xf
	.4byte	.LASF63
	.byte	0x5
	.byte	0x3f
	.byte	0xd
	.4byte	0x8f
	.byte	0x28
	.byte	0xf
	.4byte	.LASF64
	.byte	0x5
	.byte	0x40
	.byte	0xd
	.4byte	0x8f
	.byte	0x29
	.byte	0xf
	.4byte	.LASF65
	.byte	0x5
	.byte	0x41
	.byte	0xd
	.4byte	0x8f
	.byte	0x2a
	.byte	0xf
	.4byte	.LASF66
	.byte	0x5
	.byte	0x42
	.byte	0xd
	.4byte	0x8f
	.byte	0x2b
	.byte	0xf
	.4byte	.LASF67
	.byte	0x5
	.byte	0x43
	.byte	0xd
	.4byte	0x8f
	.byte	0x2c
	.byte	0xf
	.4byte	.LASF68
	.byte	0x5
	.byte	0x44
	.byte	0xd
	.4byte	0x8f
	.byte	0x2d
	.byte	0xf
	.4byte	.LASF69
	.byte	0x5
	.byte	0x45
	.byte	0xd
	.4byte	0x8f
	.byte	0x2e
	.byte	0xf
	.4byte	.LASF70
	.byte	0x5
	.byte	0x46
	.byte	0xd
	.4byte	0x8f
	.byte	0x2f
	.byte	0xf
	.4byte	.LASF71
	.byte	0x5
	.byte	0x47
	.byte	0xd
	.4byte	0x8f
	.byte	0x30
	.byte	0xf
	.4byte	.LASF72
	.byte	0x5
	.byte	0x48
	.byte	0xd
	.4byte	0x8f
	.byte	0x31
	.byte	0xf
	.4byte	.LASF73
	.byte	0x5
	.byte	0x49
	.byte	0xd
	.4byte	0x8f
	.byte	0x32
	.byte	0xf
	.4byte	.LASF74
	.byte	0x5
	.byte	0x4a
	.byte	0xd
	.4byte	0x8f
	.byte	0x33
	.byte	0xf
	.4byte	.LASF75
	.byte	0x5
	.byte	0x4b
	.byte	0xd
	.4byte	0x54b
	.byte	0x34
	.byte	0xf
	.4byte	.LASF76
	.byte	0x5
	.byte	0x4c
	.byte	0xd
	.4byte	0x54b
	.byte	0x38
	.byte	0xf
	.4byte	.LASF77
	.byte	0x5
	.byte	0x4d
	.byte	0xd
	.4byte	0x8f
	.byte	0x3c
	.byte	0xf
	.4byte	.LASF78
	.byte	0x5
	.byte	0x4e
	.byte	0xd
	.4byte	0x8f
	.byte	0x3d
	.byte	0xf
	.4byte	.LASF79
	.byte	0x5
	.byte	0x4f
	.byte	0xd
	.4byte	0x8f
	.byte	0x3e
	.byte	0xf
	.4byte	.LASF80
	.byte	0x5
	.byte	0x50
	.byte	0xd
	.4byte	0x8f
	.byte	0x3f
	.byte	0xf
	.4byte	.LASF81
	.byte	0x5
	.byte	0x51
	.byte	0xd
	.4byte	0x8f
	.byte	0x40
	.byte	0xf
	.4byte	.LASF82
	.byte	0x5
	.byte	0x52
	.byte	0xd
	.4byte	0x8f
	.byte	0x41
	.byte	0xf
	.4byte	.LASF83
	.byte	0x5
	.byte	0x53
	.byte	0xd
	.4byte	0x8f
	.byte	0x42
	.byte	0xf
	.4byte	.LASF84
	.byte	0x5
	.byte	0x54
	.byte	0xd
	.4byte	0x8f
	.byte	0x43
	.byte	0xf
	.4byte	.LASF85
	.byte	0x5
	.byte	0x55
	.byte	0xd
	.4byte	0x8f
	.byte	0x44
	.byte	0xf
	.4byte	.LASF86
	.byte	0x5
	.byte	0x56
	.byte	0xd
	.4byte	0x8f
	.byte	0x45
	.byte	0xf
	.4byte	.LASF87
	.byte	0x5
	.byte	0x57
	.byte	0xd
	.4byte	0x8f
	.byte	0x46
	.byte	0xf
	.4byte	.LASF88
	.byte	0x5
	.byte	0x58
	.byte	0xd
	.4byte	0x8f
	.byte	0x47
	.byte	0xf
	.4byte	.LASF89
	.byte	0x5
	.byte	0x59
	.byte	0xe
	.4byte	0x9b
	.byte	0x48
	.byte	0xf
	.4byte	.LASF90
	.byte	0x5
	.byte	0x5a
	.byte	0xe
	.4byte	0x9b
	.byte	0x4a
	.byte	0xf
	.4byte	.LASF91
	.byte	0x5
	.byte	0x5b
	.byte	0xe
	.4byte	0x9b
	.byte	0x4c
	.byte	0xf
	.4byte	.LASF92
	.byte	0x5
	.byte	0x5c
	.byte	0xe
	.4byte	0x9b
	.byte	0x4e
	.byte	0xf
	.4byte	.LASF93
	.byte	0x5
	.byte	0x5d
	.byte	0xe
	.4byte	0x9b
	.byte	0x50
	.byte	0xf
	.4byte	.LASF94
	.byte	0x5
	.byte	0x5e
	.byte	0xd
	.4byte	0x8f
	.byte	0x52
	.byte	0xf
	.4byte	.LASF95
	.byte	0x5
	.byte	0x5f
	.byte	0xd
	.4byte	0x8f
	.byte	0x53
	.byte	0
	.byte	0xb
	.4byte	0x8f
	.4byte	0x55b
	.byte	0xc
	.4byte	0x88
	.byte	0x3
	.byte	0
	.byte	0x3
	.4byte	.LASF96
	.byte	0x5
	.byte	0x60
	.byte	0x1b
	.4byte	0x199
	.byte	0xd
	.4byte	0x55b
	.byte	0xe
	.byte	0xc
	.byte	0x6
	.byte	0x19
	.byte	0x5
	.4byte	0x634
	.byte	0x11
	.4byte	.LASF97
	.byte	0x6
	.byte	0x1a
	.byte	0x12
	.4byte	0xa7
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0
	.byte	0x11
	.4byte	.LASF98
	.byte	0x6
	.byte	0x1b
	.byte	0x12
	.4byte	0xa7
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0
	.byte	0x11
	.4byte	.LASF99
	.byte	0x6
	.byte	0x1c
	.byte	0x12
	.4byte	0xa7
	.byte	0x4
	.byte	0x6
	.byte	0xe
	.byte	0
	.byte	0x11
	.4byte	.LASF100
	.byte	0x6
	.byte	0x1d
	.byte	0x12
	.4byte	0xa7
	.byte	0x4
	.byte	0x6
	.byte	0x8
	.byte	0
	.byte	0x11
	.4byte	.LASF101
	.byte	0x6
	.byte	0x1e
	.byte	0x12
	.4byte	0xa7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x11
	.4byte	.LASF102
	.byte	0x6
	.byte	0x1f
	.byte	0x12
	.4byte	0xa7
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0
	.byte	0x11
	.4byte	.LASF103
	.byte	0x6
	.byte	0x20
	.byte	0x12
	.4byte	0xa7
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF104
	.byte	0x6
	.byte	0x21
	.byte	0x11
	.4byte	0x8f
	.byte	0x4
	.byte	0xf
	.4byte	.LASF105
	.byte	0x6
	.byte	0x22
	.byte	0x11
	.4byte	0x8f
	.byte	0x5
	.byte	0xf
	.4byte	.LASF106
	.byte	0x6
	.byte	0x23
	.byte	0x11
	.4byte	0x8f
	.byte	0x6
	.byte	0xf
	.4byte	.LASF107
	.byte	0x6
	.byte	0x24
	.byte	0x11
	.4byte	0x189
	.byte	0x7
	.byte	0xf
	.4byte	.LASF108
	.byte	0x6
	.byte	0x25
	.byte	0x11
	.4byte	0x8f
	.byte	0xa
	.byte	0xf
	.4byte	.LASF109
	.byte	0x6
	.byte	0x26
	.byte	0x11
	.4byte	0x8f
	.byte	0xb
	.byte	0
	.byte	0x12
	.byte	0xc
	.byte	0x6
	.byte	0x17
	.byte	0x9
	.4byte	0x64f
	.byte	0x13
	.string	"raw"
	.byte	0x6
	.byte	0x18
	.byte	0xd
	.4byte	0x64f
	.byte	0x14
	.4byte	0x56c
	.byte	0
	.byte	0xb
	.4byte	0x8f
	.4byte	0x65f
	.byte	0xc
	.4byte	0x88
	.byte	0xb
	.byte	0
	.byte	0x3
	.4byte	.LASF110
	.byte	0x6
	.byte	0x28
	.byte	0x3
	.4byte	0x634
	.byte	0xd
	.4byte	0x65f
	.byte	0x6
	.byte	0x4
	.4byte	0x567
	.byte	0x6
	.byte	0x4
	.4byte	0x66b
	.byte	0x2
	.byte	0x1
	.byte	0x2
	.4byte	.LASF111
	.byte	0x15
	.4byte	.LASF113
	.byte	0x14
	.byte	0x7
	.byte	0x24
	.byte	0x8
	.4byte	0x6d2
	.byte	0xf
	.4byte	.LASF114
	.byte	0x7
	.byte	0x25
	.byte	0xb
	.4byte	0x6f5
	.byte	0
	.byte	0xf
	.4byte	.LASF115
	.byte	0x7
	.byte	0x26
	.byte	0xb
	.4byte	0x719
	.byte	0x4
	.byte	0xf
	.4byte	.LASF116
	.byte	0x7
	.byte	0x27
	.byte	0xb
	.4byte	0x733
	.byte	0x8
	.byte	0xf
	.4byte	.LASF117
	.byte	0x7
	.byte	0x28
	.byte	0xb
	.4byte	0x74d
	.byte	0xc
	.byte	0xf
	.4byte	.LASF118
	.byte	0x7
	.byte	0x29
	.byte	0xb
	.4byte	0x76c
	.byte	0x10
	.byte	0
	.byte	0xd
	.4byte	0x683
	.byte	0x16
	.4byte	0x81
	.4byte	0x6f5
	.byte	0x17
	.4byte	0x670
	.byte	0x17
	.4byte	0xa7
	.byte	0x17
	.4byte	0xb3
	.byte	0x17
	.4byte	0xa7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6d7
	.byte	0x16
	.4byte	0x81
	.4byte	0x719
	.byte	0x17
	.4byte	0x670
	.byte	0x17
	.4byte	0xa7
	.byte	0x17
	.4byte	0xbc
	.byte	0x17
	.4byte	0xa7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x6fb
	.byte	0x16
	.4byte	0x81
	.4byte	0x733
	.byte	0x17
	.4byte	0x670
	.byte	0x17
	.4byte	0xa7
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x71f
	.byte	0x16
	.4byte	0x81
	.4byte	0x74d
	.byte	0x17
	.4byte	0x676
	.byte	0x17
	.4byte	0x17e
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x739
	.byte	0x16
	.4byte	0x81
	.4byte	0x76c
	.byte	0x17
	.4byte	0x670
	.byte	0x17
	.4byte	0x676
	.byte	0x17
	.4byte	0x8f
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x753
	.byte	0xb
	.4byte	0x6d2
	.4byte	0x77d
	.byte	0x18
	.byte	0
	.byte	0xd
	.4byte	0x772
	.byte	0x19
	.4byte	.LASF151
	.byte	0x7
	.byte	0x2c
	.byte	0x26
	.4byte	0x77d
	.byte	0xb
	.4byte	0x6d2
	.4byte	0x79e
	.byte	0xc
	.4byte	0x88
	.byte	0x2
	.byte	0
	.byte	0xd
	.4byte	0x78e
	.byte	0x1a
	.4byte	0x782
	.byte	0x1
	.2byte	0x12c
	.byte	0x82
	.4byte	0x79e
	.byte	0x5
	.byte	0x3
	.4byte	flash_secreg_apis
	.byte	0x1b
	.4byte	.LASF124
	.byte	0x1
	.byte	0xe7
	.byte	0x6f
	.4byte	0x81
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x8d4
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0xe7
	.byte	0xa1
	.4byte	0x670
	.4byte	.LLST5
	.byte	0x1c
	.4byte	.LASF120
	.byte	0x1
	.byte	0xe8
	.byte	0x58
	.4byte	0x676
	.4byte	.LLST6
	.byte	0x1d
	.string	"lb"
	.byte	0x1
	.byte	0xe8
	.byte	0x67
	.4byte	0x8f
	.4byte	.LLST7
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xed
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST8
	.byte	0x1f
	.4byte	.LASF121
	.byte	0x1
	.byte	0xee
	.byte	0xd
	.4byte	0x8f
	.byte	0x2
	.byte	0x91
	.byte	0x5b
	.byte	0x20
	.4byte	.LASF122
	.byte	0x1
	.byte	0xef
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST9
	.byte	0x21
	.string	"reg"
	.byte	0x1
	.byte	0xf0
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x1e
	.string	"i"
	.byte	0x1
	.byte	0xf1
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST10
	.byte	0x20
	.4byte	.LASF123
	.byte	0x1
	.byte	0xf2
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST11
	.byte	0x22
	.4byte	.LVL18
	.4byte	0x8d4
	.4byte	0x875
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5b
	.byte	0
	.byte	0x22
	.4byte	.LVL25
	.4byte	0xcc2
	.4byte	0x895
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x5c
	.byte	0x8
	.byte	0x91
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x22
	.byte	0x8
	.byte	0x24
	.byte	0x1c
	.byte	0
	.byte	0x22
	.4byte	.LVL28
	.4byte	0xcce
	.4byte	0x8a9
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL31
	.4byte	0xcda
	.4byte	0x8bd
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0x24
	.4byte	.LVL33
	.4byte	0x8d4
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF125
	.byte	0x1
	.byte	0xc6
	.byte	0x6f
	.4byte	0x81
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x965
	.byte	0x1c
	.4byte	.LASF120
	.byte	0x1
	.byte	0xc6
	.byte	0xaa
	.4byte	0x676
	.4byte	.LLST0
	.byte	0x1d
	.string	"lb"
	.byte	0x1
	.byte	0xc6
	.byte	0xba
	.4byte	0x17e
	.4byte	.LLST1
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0xcb
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST2
	.byte	0x1f
	.4byte	.LASF126
	.byte	0x1
	.byte	0xcc
	.byte	0xe
	.4byte	0xa7
	.byte	0x2
	.byte	0x91
	.byte	0x6c
	.byte	0x20
	.4byte	.LASF127
	.byte	0x1
	.byte	0xcd
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST3
	.byte	0x1e
	.string	"i"
	.byte	0x1
	.byte	0xce
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST4
	.byte	0x24
	.4byte	.LVL8
	.4byte	0xcc2
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x30
	.byte	0x23
	.byte	0x1
	.byte	0x5c
	.byte	0x7
	.byte	0x91
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x22
	.byte	0x44
	.byte	0x1c
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF128
	.byte	0x1
	.byte	0x93
	.byte	0x6f
	.4byte	0x81
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xa59
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0x93
	.byte	0x9e
	.4byte	0x670
	.4byte	.LLST12
	.byte	0x1c
	.4byte	.LASF129
	.byte	0x1
	.byte	0x93
	.byte	0xb2
	.4byte	0xa7
	.4byte	.LLST13
	.byte	0x1f
	.4byte	.LASF130
	.byte	0x1
	.byte	0x98
	.byte	0x3d
	.4byte	0xc3
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x20
	.4byte	.LASF131
	.byte	0x1
	.byte	0x99
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST14
	.byte	0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0x9a
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST15
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x9b
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST16
	.byte	0x22
	.4byte	.LVL37
	.4byte	0xcce
	.4byte	0x9f3
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x22
	.4byte	.LVL39
	.4byte	0xce6
	.4byte	0xa11
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0x23
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x23
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x22
	.4byte	.LVL43
	.4byte	0xcf2
	.4byte	0xa2a
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x4c
	.byte	0x23
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x22
	.4byte	.LVL45
	.4byte	0xcfe
	.4byte	0xa3e
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x5c
	.byte	0
	.byte	0x25
	.4byte	.LVL47
	.4byte	0xd0b
	.byte	0x24
	.4byte	.LVL53
	.4byte	0xd17
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF133
	.byte	0x1
	.byte	0x4e
	.byte	0x6e
	.4byte	0x81
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xba4
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0x4e
	.byte	0x9d
	.4byte	0x670
	.4byte	.LLST17
	.byte	0x1c
	.4byte	.LASF129
	.byte	0x1
	.byte	0x4e
	.byte	0xb1
	.4byte	0xa7
	.4byte	.LLST18
	.byte	0x1c
	.4byte	.LASF134
	.byte	0x1
	.byte	0x4e
	.byte	0xc6
	.4byte	0xbc
	.4byte	.LLST19
	.byte	0x1d
	.string	"len"
	.byte	0x1
	.byte	0x4e
	.byte	0xd5
	.4byte	0xa7
	.4byte	.LLST20
	.byte	0x26
	.4byte	.LASF135
	.byte	0x1
	.byte	0x53
	.byte	0x14
	.4byte	0x184
	.4byte	0x2000b600
	.byte	0x1f
	.4byte	.LASF130
	.byte	0x1
	.byte	0x54
	.byte	0x3d
	.4byte	0xc3
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x20
	.4byte	.LASF131
	.byte	0x1
	.byte	0x55
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST21
	.byte	0x20
	.4byte	.LASF136
	.byte	0x1
	.byte	0x56
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST22
	.byte	0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0x57
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST23
	.byte	0x1e
	.string	"ret"
	.byte	0x1
	.byte	0x58
	.byte	0x9
	.4byte	0x81
	.4byte	.LLST24
	.byte	0x22
	.4byte	.LVL59
	.4byte	0xce6
	.4byte	0xb32
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x23
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x23
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x22
	.4byte	.LVL61
	.4byte	0xcf2
	.4byte	0xb4c
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x23
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x25
	.4byte	.LVL62
	.4byte	0xcce
	.byte	0x22
	.4byte	.LVL66
	.4byte	0xd23
	.4byte	0xb75
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	.LVL70
	.4byte	0xcfe
	.4byte	0xb8a
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x25
	.4byte	.LVL72
	.4byte	0xd0b
	.byte	0x24
	.4byte	.LVL80
	.4byte	0xd17
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	.LASF137
	.byte	0x1
	.byte	0xc
	.byte	0x6e
	.4byte	0x81
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xcc2
	.byte	0x1c
	.4byte	.LASF119
	.byte	0x1
	.byte	0xc
	.byte	0x9c
	.4byte	0x670
	.4byte	.LLST25
	.byte	0x1c
	.4byte	.LASF129
	.byte	0x1
	.byte	0xc
	.byte	0xb0
	.4byte	0xa7
	.4byte	.LLST26
	.byte	0x1c
	.4byte	.LASF134
	.byte	0x1
	.byte	0xc
	.byte	0xbf
	.4byte	0xb3
	.4byte	.LLST27
	.byte	0x1d
	.string	"len"
	.byte	0x1
	.byte	0xc
	.byte	0xce
	.4byte	0xa7
	.4byte	.LLST28
	.byte	0x26
	.4byte	.LASF135
	.byte	0x1
	.byte	0x11
	.byte	0x14
	.4byte	0x184
	.4byte	0x2000b600
	.byte	0x1f
	.4byte	.LASF130
	.byte	0x1
	.byte	0x12
	.byte	0x3d
	.4byte	0xc3
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x20
	.4byte	.LASF131
	.byte	0x1
	.byte	0x13
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST29
	.byte	0x20
	.4byte	.LASF136
	.byte	0x1
	.byte	0x14
	.byte	0xe
	.4byte	0xa7
	.4byte	.LLST30
	.byte	0x20
	.4byte	.LASF132
	.byte	0x1
	.byte	0x15
	.byte	0xd
	.4byte	0x8f
	.4byte	.LLST31
	.byte	0x22
	.4byte	.LVL86
	.4byte	0xce6
	.4byte	0xc6d
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0x23
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x23
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x35
	.byte	0
	.byte	0x22
	.4byte	.LVL88
	.4byte	0xcf2
	.4byte	0xc87
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.byte	0x23
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x22
	.4byte	.LVL97
	.4byte	0xcfe
	.4byte	0xc9c
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xbc,0x7f
	.byte	0
	.byte	0x25
	.4byte	.LVL98
	.4byte	0xd2f
	.byte	0x24
	.4byte	.LVL99
	.4byte	0xd23
	.byte	0x23
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0x23
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0
	.byte	0x27
	.4byte	.LASF138
	.4byte	.LASF138
	.byte	0x5
	.byte	0x92
	.byte	0x5
	.byte	0x27
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x5
	.byte	0x97
	.byte	0x5
	.byte	0x27
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x5
	.byte	0x94
	.byte	0x5
	.byte	0x27
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x8
	.byte	0x4e
	.byte	0xb
	.byte	0x27
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x5
	.byte	0xa9
	.byte	0x5
	.byte	0x28
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x4
	.2byte	0x1dc
	.byte	0x6
	.byte	0x27
	.4byte	.LASF144
	.4byte	.LASF144
	.byte	0x5
	.byte	0x96
	.byte	0x5
	.byte	0x27
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0x8
	.byte	0x55
	.byte	0x6
	.byte	0x27
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0x8
	.byte	0x44
	.byte	0x7
	.byte	0x28
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0x4
	.2byte	0x1e6
	.byte	0x9
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
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x7
	.byte	0x26
	.byte	0
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x5
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0x1
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
	.byte	0xf
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
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x12
	.byte	0x17
	.byte	0x1
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
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0xd
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x16
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
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x21
	.byte	0
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x1a
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
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
	.byte	0x1c
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
	.byte	0x1f
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
	.byte	0x22
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
	.byte	0x23
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x24
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
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
	.byte	0x1c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL18
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE9
	.2byte	0x6
	.byte	0x7f
	.byte	0
	.byte	0x79
	.byte	0
	.byte	0x27
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL27
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31-1
	.2byte	0xd
	.byte	0x78
	.byte	0xa
	.byte	0x94
	.byte	0x1
	.byte	0x78
	.byte	0xb
	.byte	0x94
	.byte	0x1
	.byte	0x1e
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL11
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0xc
	.byte	0x8
	.byte	0xff
	.byte	0x78
	.byte	0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x20
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LFE8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL37-1
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL44
	.4byte	.LVL49
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL50
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL52
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL36
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x8
	.byte	0x7f
	.byte	0
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x9
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x9
	.byte	0x7a
	.byte	0
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x9
	.byte	0x91
	.byte	0x4c
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL58
	.4byte	.LVL59-1
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL56
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL78
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL57
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL78
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL55
	.4byte	.LVL59-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL59-1
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL78
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL71
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL79
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL63
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL55
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL78
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL62
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL82
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL85
	.4byte	.LVL86-1
	.2byte	0x3
	.byte	0x91
	.byte	0xac,0x7f
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL83
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL93
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST27:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL84
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL93
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST28:
	.4byte	.LVL82
	.4byte	.LVL86-1
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL86-1
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL93
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST29:
	.4byte	.LVL97
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL104
	.4byte	.LVL105
	.2byte	0x3
	.byte	0x86
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x66
	.4byte	0
	.4byte	0
.LLST30:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL96
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL104
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST31:
	.4byte	.LVL82
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL93
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF88:
	.string	"de_burst_wrap_data"
.LASF40:
	.string	"sector_erase_cmd"
.LASF31:
	.string	"reset_c_read_cmd"
.LASF71:
	.string	"qe_write_reg_len"
.LASF75:
	.string	"read_reg_cmd"
.LASF76:
	.string	"write_reg_cmd"
.LASF43:
	.string	"write_enable_cmd"
.LASF65:
	.string	"busy_index"
.LASF105:
	.string	"lb_write_cmd"
.LASF49:
	.string	"qpi_fast_read_cmd"
.LASF11:
	.string	"unsigned int"
.LASF77:
	.string	"enter_qpi"
.LASF122:
	.string	"lb_diff"
.LASF39:
	.string	"chip_erase_cmd"
.LASF106:
	.string	"lb_write_len"
.LASF41:
	.string	"blk32_erase_cmd"
.LASF94:
	.string	"pd_delay"
.LASF61:
	.string	"qpi_page_program_cmd"
.LASF29:
	.string	"reset_en_cmd"
.LASF124:
	.string	"sflash_general_set_lock"
.LASF20:
	.string	"dummy_clks"
.LASF16:
	.string	"rw_flag"
.LASF140:
	.string	"qcc74x_sflash_write_reg_with_cmd"
.LASF52:
	.string	"fr_do_dmy_clk"
.LASF14:
	.string	"uint32_t"
.LASF53:
	.string	"fast_read_dio_cmd"
.LASF119:
	.string	"flash_cfg"
.LASF74:
	.string	"busy_read_reg_len"
.LASF37:
	.string	"sector_size"
.LASF17:
	.string	"cmd_mode"
.LASF10:
	.string	"long long unsigned int"
.LASF56:
	.string	"fr_qo_dmy_clk"
.LASF138:
	.string	"qcc74x_sflash_read_reg_with_cmd"
.LASF130:
	.string	"flash_cmd"
.LASF109:
	.string	"lb_read_loop"
.LASF116:
	.string	"erase"
.LASF78:
	.string	"exit_qpi"
.LASF4:
	.string	"__uint16_t"
.LASF117:
	.string	"get_lock"
.LASF146:
	.string	"arch_memcpy_fast"
.LASF141:
	.string	"arch_memset4"
.LASF93:
	.string	"time_ce"
.LASF36:
	.string	"exit_32bits_addr_cmd"
.LASF50:
	.string	"qpi_fr_dmy_clk"
.LASF89:
	.string	"time_e_sector"
.LASF24:
	.string	"cmd_buf"
.LASF80:
	.string	"c_rexit"
.LASF34:
	.string	"jedec_id_cmd_dmy_clk"
.LASF111:
	.string	"_Bool"
.LASF144:
	.string	"qcc74x_sflash_busy"
.LASF143:
	.string	"qcc74x_sf_ctrl_sendcmd"
.LASF99:
	.string	"secreg_size"
.LASF73:
	.string	"release_powerdown"
.LASF26:
	.string	"c_read_support"
.LASF142:
	.string	"qcc74x_sflash_set_32bits_addr_mode"
.LASF68:
	.string	"busy_bit"
.LASF95:
	.string	"qe_data"
.LASF84:
	.string	"burst_wrap_data"
.LASF45:
	.string	"qpage_program_cmd"
.LASF139:
	.string	"qcc74x_sflash_write_enable"
.LASF15:
	.string	"char"
.LASF72:
	.string	"qe_read_reg_len"
.LASF127:
	.string	"lb_mask"
.LASF133:
	.string	"sflash_general_write"
.LASF104:
	.string	"lb_offset"
.LASF57:
	.string	"fast_read_qio_cmd"
.LASF67:
	.string	"qe_bit"
.LASF134:
	.string	"data"
.LASF12:
	.string	"uint8_t"
.LASF60:
	.string	"qpi_fr_qio_dmy_clk"
.LASF128:
	.string	"sflash_general_erase"
.LASF18:
	.string	"addr_mode"
.LASF145:
	.string	"arch_delay_us"
.LASF32:
	.string	"reset_c_read_cmd_size"
.LASF107:
	.string	"lb_read_cmd"
.LASF47:
	.string	"fast_read_cmd"
.LASF150:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/drivers/lhal"
.LASF9:
	.string	"long long int"
.LASF115:
	.string	"write"
.LASF48:
	.string	"fr_dmy_clk"
.LASF129:
	.string	"address"
.LASF132:
	.string	"is_32bits_addr"
.LASF98:
	.string	"region_size"
.LASF108:
	.string	"lb_read_len"
.LASF28:
	.string	"clk_invert"
.LASF90:
	.string	"time_e_32k"
.LASF33:
	.string	"jedec_id_cmd"
.LASF55:
	.string	"fast_read_qo_cmd"
.LASF35:
	.string	"enter_32bits_addr_cmd"
.LASF27:
	.string	"clk_delay"
.LASF120:
	.string	"param"
.LASF87:
	.string	"de_burst_wrap_data_mode"
.LASF70:
	.string	"wr_enable_read_reg_len"
.LASF121:
	.string	"lb_cur"
.LASF96:
	.string	"spi_flash_cfg_type"
.LASF64:
	.string	"qe_index"
.LASF82:
	.string	"burst_wrap_cmd_dmy_clk"
.LASF69:
	.string	"wr_enable_write_reg_len"
.LASF135:
	.string	"flash_ctrl_buf"
.LASF30:
	.string	"reset_cmd"
.LASF13:
	.string	"uint16_t"
.LASF147:
	.string	"qcc74x_sf_ctrl_get_busy_state"
.LASF112:
	.string	"sf_ctrl_cmd_cfg_type"
.LASF110:
	.string	"qcc74x_flash_secreg_param_t"
.LASF21:
	.string	"dummy_mode"
.LASF51:
	.string	"fast_read_do_cmd"
.LASF2:
	.string	"short int"
.LASF149:
	.string	"./drivers/lhal/src/flash/qcc74x_flash_secreg_port.c"
.LASF6:
	.string	"long int"
.LASF103:
	.string	"rsvd"
.LASF97:
	.string	"region_count"
.LASF79:
	.string	"c_read_mode"
.LASF58:
	.string	"fr_qio_dmy_clk"
.LASF86:
	.string	"de_burst_wrap_cmd_dmy_clk"
.LASF83:
	.string	"burst_wrap_data_mode"
.LASF151:
	.string	"flash_secreg_apis"
.LASF25:
	.string	"io_mode"
.LASF3:
	.string	"__uint8_t"
.LASF101:
	.string	"region_offset"
.LASF114:
	.string	"read"
.LASF123:
	.string	"write_pos"
.LASF59:
	.string	"qpi_fast_read_qio_cmd"
.LASF81:
	.string	"burst_wrap_cmd"
.LASF137:
	.string	"sflash_general_read"
.LASF8:
	.string	"long unsigned int"
.LASF126:
	.string	"reg_value"
.LASF22:
	.string	"data_mode"
.LASF92:
	.string	"time_page_pgm"
.LASF113:
	.string	"flash_secreg_api"
.LASF63:
	.string	"wr_enable_index"
.LASF85:
	.string	"de_burst_wrap_cmd"
.LASF42:
	.string	"blk64_erase_cmd"
.LASF1:
	.string	"unsigned char"
.LASF102:
	.string	"lb_share"
.LASF7:
	.string	"__uint32_t"
.LASF131:
	.string	"timeout"
.LASF148:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF91:
	.string	"time_e_64k"
.LASF125:
	.string	"sflash_general_get_lock"
.LASF23:
	.string	"nb_data"
.LASF0:
	.string	"signed char"
.LASF5:
	.string	"short unsigned int"
.LASF44:
	.string	"page_program_cmd"
.LASF118:
	.string	"set_lock"
.LASF100:
	.string	"api_type"
.LASF54:
	.string	"fr_dio_dmy_clk"
.LASF46:
	.string	"qpp_addr_mode"
.LASF66:
	.string	"wr_enable_bit"
.LASF62:
	.string	"write_vreg_enable_cmd"
.LASF38:
	.string	"page_size"
.LASF19:
	.string	"addr_size"
.LASF136:
	.string	"curlen"
	.ident	"GCC: (GNU) 10.4.0"
