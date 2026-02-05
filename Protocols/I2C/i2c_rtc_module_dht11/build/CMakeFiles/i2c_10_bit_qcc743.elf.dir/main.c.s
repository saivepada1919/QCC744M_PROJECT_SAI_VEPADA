	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.uart_send_string,"ax",@progbits
	.align	1
	.type	uart_send_string, @function
uart_send_string:
.LFB7:
	.file 1 "./examples/peripherals/i2c/i2c_rtc_module/main.c"
	.loc 1 37 1
	.cfi_startproc
.LVL0:
	.loc 1 38 5
	.loc 1 37 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 37 1
	mv	s0,a0
	.loc 1 39 9
	lui	s1,%hi(.LANCHOR0)
.LVL1:
.L2:
	.loc 1 38 11 is_stmt 1
	.loc 1 38 12 is_stmt 0
	lbu	a1,0(s0)
	.loc 1 38 11
	bne	a1,zero,.L3
	.loc 1 41 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL2:
	lw	s1,4(sp)
	.cfi_restore 9
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL3:
.L3:
	.cfi_restore_state
	.loc 1 39 9 is_stmt 1
	lw	a0,%lo(.LANCHOR0)(s1)
	.loc 1 39 38 is_stmt 0
	addi	s0,s0,1
.LVL4:
	.loc 1 39 9
	call	qcc74x_uart_putchar
.LVL5:
	j	.L2
	.cfi_endproc
.LFE7:
	.size	uart_send_string, .-uart_send_string
	.section	.text.dht11_read,"ax",@progbits
	.align	1
	.globl	dht11_read
	.type	dht11_read, @function
dht11_read:
.LFB12:
	.loc 1 122 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 123 5
	.loc 1 122 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	.loc 1 126 5
	lui	s0,%hi(.LANCHOR1)
	.loc 1 122 1
	sw	s1,36(sp)
	.cfi_offset 9, -12
	.loc 1 126 5
	addi	s1,s0,%lo(.LANCHOR1)
	.loc 1 122 1
	sw	s3,28(sp)
	.cfi_offset 19, -20
	mv	s3,a0
	.loc 1 126 5
	lw	a0,0(s1)
.LVL7:
	li	a2,64
	.loc 1 122 1
	sw	s4,24(sp)
	.cfi_offset 20, -24
	mv	s4,a1
	.loc 1 126 5
	li	a1,3
.LVL8:
	.loc 1 122 1
	sw	ra,44(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 123 13
	sw	zero,8(sp)
	sb	zero,12(sp)
	.loc 1 124 5 is_stmt 1
	.loc 1 126 5
	call	qcc74x_gpio_init
.LVL9:
	.loc 1 127 5
	lw	a0,0(s1)
	li	a1,3
	.loc 1 135 13 is_stmt 0
	li	s2,300
	.loc 1 127 5
	call	qcc74x_gpio_reset
.LVL10:
	.loc 1 128 5 is_stmt 1
	li	a0,20
	call	qcc74x_mtimer_delay_ms
.LVL11:
	.loc 1 130 5
	lw	a0,0(s1)
	li	a1,3
	addi	s0,s0,%lo(.LANCHOR1)
	call	qcc74x_gpio_set
.LVL12:
	.loc 1 131 5
.LBB17:
.LBB18:
	.loc 1 118 5
	li	a0,40
	call	qcc74x_mtimer_delay_us
.LVL13:
.LBE18:
.LBE17:
	.loc 1 133 5
	lw	a0,0(s1)
	li	a2,32
	li	a1,3
	call	qcc74x_gpio_init
.LVL14:
	.loc 1 135 5
	.loc 1 136 5
	.loc 1 136 38 is_stmt 0
	li	s1,-1
.LVL15:
.L6:
	.loc 1 136 11 is_stmt 1 discriminator 1
	.loc 1 136 12 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL16:
	.loc 1 136 11 discriminator 1
	beq	a0,zero,.L7
	.loc 1 136 48 discriminator 2
	addi	s2,s2,-1
.LVL17:
	.loc 1 136 38 discriminator 2
	bne	s2,s1,.L8
	li	s1,300
.L9:
	.loc 1 140 39 discriminator 1
	li	s2,-1
.LVL18:
	j	.L11
.LVL19:
.L8:
	.loc 1 136 52 is_stmt 1
.LBB19:
.LBB20:
	.loc 1 118 5
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL20:
	.loc 1 119 1 is_stmt 0
	j	.L6
.LVL21:
.L7:
.LBE20:
.LBE19:
	.loc 1 137 5 is_stmt 1
	li	s1,300
	.loc 1 137 8 is_stmt 0
	bne	s2,zero,.L9
.LVL22:
.L15:
	.loc 1 137 26
	li	a0,-1
.L5:
	.loc 1 165 1
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
	lw	s2,32(sp)
	.cfi_restore 18
	lw	s3,28(sp)
	.cfi_restore 19
.LVL23:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL24:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL25:
.L13:
	.cfi_restore_state
	.loc 1 140 53 is_stmt 1
.LBB21:
.LBB22:
	.loc 1 118 5
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL26:
.L11:
.LBE22:
.LBE21:
	.loc 1 140 11 discriminator 1
	.loc 1 140 13 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL27:
	.loc 1 140 11 discriminator 1
	bne	a0,zero,.L12
	.loc 1 140 49 discriminator 2
	addi	s1,s1,-1
.LVL28:
	.loc 1 140 39 discriminator 2
	bne	s1,s2,.L13
.L43:
	li	s1,300
.LVL29:
	.loc 1 144 38
	li	s2,-1
.L16:
.LVL30:
	.loc 1 144 11 is_stmt 1 discriminator 1
	.loc 1 144 12 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL31:
	.loc 1 144 11 discriminator 1
	beq	a0,zero,.L17
	.loc 1 144 48 discriminator 2
	addi	s1,s1,-1
.LVL32:
	.loc 1 144 38 discriminator 2
	bne	s1,s2,.L18
.L44:
	li	s1,0
.LVL33:
	li	s2,300
.LBB23:
	.loc 1 147 5
	li	s5,40
.L20:
.LVL34:
	.loc 1 149 15 is_stmt 1 discriminator 1
	.loc 1 149 17 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL35:
	.loc 1 149 15 discriminator 1
	bne	a0,zero,.L21
	.loc 1 149 53 discriminator 2
	addi	s6,s2,-1
.LVL36:
	.loc 1 149 43 discriminator 2
	bne	s2,zero,.L22
.LVL37:
.L21:
	.loc 1 151 9 is_stmt 1
.LBB24:
.LBB25:
	.loc 1 118 5
	li	a0,50
	call	qcc74x_mtimer_delay_us
.LVL38:
.LBE25:
.LBE24:
	.loc 1 152 9
	.loc 1 152 13 is_stmt 0
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL39:
	.loc 1 152 12
	beq	a0,zero,.L23
	.loc 1 153 13 is_stmt 1
	.loc 1 153 31 is_stmt 0
	not	a5,s1
	andi	a3,a5,7
	li	a5,1
	.loc 1 153 20
	srai	a4,s1,3
	.loc 1 153 31
	sll	a5,a5,a3
	.loc 1 153 25
	addi	a3,sp,8
	lrbu	a3,a3,a4,0
	or	a5,a5,a3
	addi	a3,sp,8
	srb	a5,a3,a4,0
.L23:
.LBE23:
	li	s2,301
.L24:
.LVL40:
.LBB30:
	.loc 1 156 15 is_stmt 1 discriminator 1
	.loc 1 156 16 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL41:
	.loc 1 156 15 discriminator 1
	beq	a0,zero,.L25
.LVL42:
	.loc 1 156 42 discriminator 2
	addi	s2,s2,-1
.LVL43:
	bne	s2,zero,.L26
.LVL44:
.L25:
	.loc 1 147 29 is_stmt 1 discriminator 2
	.loc 1 147 30 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL45:
	.loc 1 147 21 is_stmt 1 discriminator 2
	.loc 1 147 5 is_stmt 0 discriminator 2
	bne	s1,s5,.L29
.LBE30:
	.loc 1 159 5 is_stmt 1
	.loc 1 159 14 is_stmt 0
	lbu	a3,8(sp)
	.loc 1 159 24
	lbu	a5,9(sp)
	.loc 1 159 34
	lbu	a4,10(sp)
	.loc 1 159 44
	lbu	a2,11(sp)
	.loc 1 159 18
	add	a5,a5,a3
	.loc 1 159 28
	add	a5,a5,a4
	.loc 1 159 38
	add	a5,a5,a2
	.loc 1 159 56
	lbu	a2,12(sp)
	.loc 1 159 8
	bne	a5,a2,.L15
	.loc 1 162 5 is_stmt 1
	.loc 1 162 10 is_stmt 0
	sb	a3,0(s4)
	.loc 1 163 5 is_stmt 1
	.loc 1 163 11 is_stmt 0
	sb	a4,0(s3)
	.loc 1 164 5 is_stmt 1
	.loc 1 164 12 is_stmt 0
	li	a0,0
	j	.L5
.LVL46:
.L12:
	.loc 1 141 5 is_stmt 1
	.loc 1 141 8 is_stmt 0
	bne	s1,zero,.L43
	j	.L15
.L18:
	.loc 1 144 52 is_stmt 1
.LVL47:
.LBB31:
.LBB32:
	.loc 1 118 5
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL48:
	.loc 1 119 1 is_stmt 0
	j	.L16
.LVL49:
.L17:
.LBE32:
.LBE31:
	.loc 1 145 5 is_stmt 1
	.loc 1 145 8 is_stmt 0
	bne	s1,zero,.L44
	j	.L15
.LVL50:
.L22:
.LBB33:
	.loc 1 149 57 is_stmt 1
.LBB26:
.LBB27:
	.loc 1 118 5
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL51:
	.loc 1 119 1 is_stmt 0
	mv	s2,s6
	j	.L20
.LVL52:
.L29:
.LBE27:
.LBE26:
	.loc 1 148 17
	li	s2,300
	j	.L20
.LVL53:
.L26:
	.loc 1 156 56 is_stmt 1
.LBB28:
.LBB29:
	.loc 1 118 5
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL54:
	.loc 1 119 1 is_stmt 0
	j	.L24
.LBE29:
.LBE28:
.LBE33:
	.cfi_endproc
.LFE12:
	.size	dht11_read, .-dht11_read
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC1:
	.string	"uart1"
	.align	2
.LC2:
	.string	"i2c0"
	.align	2
.LC3:
	.string	"gpio"
	.align	2
.LC4:
	.string	"adc"
	.align	2
.LC5:
	.string	"CITY : HYDERABAD (INDIA)\r\n"
	.align	2
.LC6:
	.string	"RTC + DHT11 + MQ135 STARTED\r\n"
	.align	2
.LC7:
	.string	"--------------------------------\r\n"
	.align	2
.LC8:
	.string	"Warming MQ135 (10s)...\r\n"
	.align	2
.LC9:
	.string	"TIME %02d:%02d:%02d  DATE %02d/%02d/20%02d\r\n"
	.align	2
.LC10:
	.string	"TEMP=%d C  HUM=%d %%\r\n"
	.align	2
.LC11:
	.string	"DHT11 ERROR\r\n"
	.globl	__extendsfdf2
	.align	2
.LC14:
	.string	"AQI %.2f V | CLEAN\r\n"
	.align	2
.LC16:
	.string	"AQI %.2f V | MODERATE\r\n"
	.align	2
.LC18:
	.string	"AQI %.2f V | POOR\r\n"
	.align	2
.LC19:
	.string	"AQI %.2f V | VERY POOR\r\n"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB14:
	.loc 1 192 1 is_stmt 1
	.cfi_startproc
	.loc 1 193 5
	.loc 1 194 5
	.loc 1 195 5
	.loc 1 197 5
	.loc 1 192 1 is_stmt 0
	addi	sp,sp,-256
	.cfi_def_cfa_offset 256
	sw	ra,252(sp)
	sw	s0,248(sp)
	sw	s1,244(sp)
	sw	s2,240(sp)
	sw	s3,236(sp)
	sw	s4,232(sp)
	sw	s5,228(sp)
	sw	s6,224(sp)
	sw	s7,220(sp)
	sw	s8,216(sp)
	fsw	fs0,204(sp)
	fsw	fs1,200(sp)
	fsw	fs2,196(sp)
	fsw	fs3,192(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 40, -52
	.cfi_offset 41, -56
	.cfi_offset 50, -60
	.cfi_offset 51, -64
	.loc 1 197 5
	call	board_init
.LVL55:
	.loc 1 198 5 is_stmt 1
.LBB69:
.LBB70:
	.loc 1 46 5
	call	board_uartx_gpio_init
.LVL56:
	.loc 1 47 5
	.loc 1 47 13 is_stmt 0
	lui	a0,%hi(.LC1)
	addi	a0,a0,%lo(.LC1)
	call	qcc74x_device_get_by_name
.LVL57:
	.loc 1 47 11
	lui	a5,%hi(.LANCHOR0)
	sw	a0,%lo(.LANCHOR0)(a5)
	.loc 1 49 5 is_stmt 1
	.loc 1 49 33 is_stmt 0
	li	a5,114688
	addi	a5,a5,512
	li	s4,65536
	.loc 1 60 5
	addi	a1,sp,64
	.loc 1 49 33
	sw	a5,64(sp)
	addi	a5,s4,768
	sw	a5,68(sp)
	sw	zero,72(sp)
	.loc 1 60 5 is_stmt 1
	call	qcc74x_uart_init
.LVL58:
.LBE70:
.LBE69:
	.loc 1 200 5
	call	board_i2c0_gpio_init
.LVL59:
	.loc 1 201 5
	.loc 1 201 12 is_stmt 0
	lui	a0,%hi(.LC2)
	addi	a0,a0,%lo(.LC2)
	call	qcc74x_device_get_by_name
.LVL60:
	.loc 1 201 10
	lui	s5,%hi(.LANCHOR2)
	.loc 1 202 5
	li	a1,98304
	addi	a1,a1,1696
	.loc 1 201 10
	addi	s8,s5,%lo(.LANCHOR2)
	sw	a0,0(s8)
	.loc 1 202 5 is_stmt 1
	call	qcc74x_i2c_init
.LVL61:
	.loc 1 204 5
	.loc 1 204 12 is_stmt 0
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	qcc74x_device_get_by_name
.LVL62:
	.loc 1 204 10
	lui	a5,%hi(.LANCHOR1)
	sw	a0,%lo(.LANCHOR1)(a5)
	.loc 1 205 5 is_stmt 1
.LBB71:
.LBB72:
	.loc 1 170 5
	.loc 1 170 11 is_stmt 0
	lui	a0,%hi(.LC4)
	addi	a0,a0,%lo(.LC4)
	call	qcc74x_device_get_by_name
.LVL63:
	.loc 1 172 32
	lui	a5,%hi(.LANCHOR4)
	addi	a5,a5,%lo(.LANCHOR4)
	lw	a4,0(a5)
	lhu	a5,4(a5)
	.loc 1 170 9
	lui	s0,%hi(.LANCHOR3)
	addi	s1,s0,%lo(.LANCHOR3)
	.loc 1 172 32
	sh	a5,68(sp)
	.loc 1 181 33
	li	a5,4096
	addi	a5,a5,1794
	.loc 1 186 5
	addi	a1,sp,64
	.loc 1 172 32
	sw	a4,64(sp)
	.loc 1 181 33
	sh	a5,40(sp)
	.loc 1 170 9
	sw	a0,0(s1)
	.loc 1 172 5 is_stmt 1
	.loc 1 181 5
	.loc 1 186 5
	call	qcc74x_adc_init
.LVL64:
	.loc 1 187 5
	lw	a0,0(s1)
	addi	s2,sp,40
	li	a2,1
	mv	a1,s2
	call	qcc74x_adc_channel_config
.LVL65:
.LBE72:
.LBE71:
	.loc 1 207 5
	lui	s6,%hi(.LC5)
	addi	a0,s6,%lo(.LC5)
	call	uart_send_string
.LVL66:
	.loc 1 208 5
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	uart_send_string
.LVL67:
	.loc 1 209 5
	lui	s1,%hi(.LC7)
	addi	a0,s1,%lo(.LC7)
	call	uart_send_string
.LVL68:
	.loc 1 212 5
.LBB73:
.LBB74:
	.loc 1 90 5
	.loc 1 92 5
.LBE74:
.LBE73:
	.loc 1 28 5
.LBB82:
.LBB75:
	.loc 1 93 5
.LBE75:
.LBE82:
	.loc 1 28 5
.LBB83:
.LBB76:
	.loc 1 94 5
.LBE76:
.LBE83:
	.loc 1 28 5
.LBB84:
.LBB77:
	.loc 1 95 5
.LBE77:
.LBE84:
	.loc 1 28 5
.LBB85:
.LBB78:
	.loc 1 96 5
.LBE78:
.LBE85:
	.loc 1 28 5
.LBB86:
.LBB79:
	.loc 1 97 5
.LBE79:
.LBE86:
	.loc 1 28 5
.LBB87:
.LBB80:
	.loc 1 98 5
.LBE80:
.LBE87:
	.loc 1 28 5
.LBB88:
.LBB81:
	.loc 1 92 13 is_stmt 0
	li	a5,17829888
	addi	a5,a5,1328
	sw	a5,40(sp)
	.loc 1 96 13
	li	a5,516
	sh	a5,44(sp)
	.loc 1 98 13
	li	a5,38
	sb	a5,46(sp)
	.loc 1 100 5 is_stmt 1
	.loc 1 102 5
	.loc 1 103 5
	.loc 1 112 5 is_stmt 0
	lw	a0,0(s8)
	.loc 1 105 19
	li	a5,1
	sh	a5,72(sp)
	.loc 1 102 17
	li	s3,4194304
	.loc 1 107 17
	li	a5,104
	.loc 1 112 5
	li	a2,2
	addi	a1,sp,64
	.loc 1 107 17
	sw	a5,76(sp)
	.loc 1 102 17
	addi	s3,s3,104
	.loc 1 110 19
	li	a5,7
	.loc 1 104 19
	addi	s7,sp,28
	.loc 1 110 19
	sh	a5,84(sp)
	.loc 1 102 17
	sw	s3,64(sp)
	.loc 1 104 5 is_stmt 1
	.loc 1 104 32 is_stmt 0
	sb	zero,28(sp)
	.loc 1 104 19
	sw	s7,68(sp)
	.loc 1 105 5 is_stmt 1
	.loc 1 107 5
	.loc 1 108 5
	.loc 1 109 5
	.loc 1 109 19 is_stmt 0
	sw	s2,80(sp)
	.loc 1 110 5 is_stmt 1
	.loc 1 112 5
	call	qcc74x_i2c_transfer
.LVL69:
.LBE81:
.LBE88:
	.loc 1 222 5
	lui	a0,%hi(.LC8)
	addi	a0,a0,%lo(.LC8)
	call	uart_send_string
.LVL70:
	.loc 1 223 5
	li	a0,8192
	addi	a0,a0,1808
	call	qcc74x_mtimer_delay_ms
.LVL71:
.LBB89:
	.loc 1 254 15 is_stmt 0
	lui	a5,%hi(.LC12)
	flw	fs0,%lo(.LC12)(a5)
	.loc 1 255 12
	lui	a5,%hi(.LC13)
	flw	fs1,%lo(.LC13)(a5)
	.loc 1 257 17
	lui	a5,%hi(.LC15)
	flw	fs2,%lo(.LC15)(a5)
	.loc 1 259 17
	lui	a5,%hi(.LC17)
	flw	fs3,%lo(.LC17)(a5)
	addi	s5,s5,%lo(.LANCHOR2)
	addi	s0,s0,%lo(.LANCHOR3)
.LBB90:
.LBB91:
	.loc 1 73 17
	addi	s4,s4,104
.L56:
.LBE91:
.LBE90:
.LBE89:
	.loc 1 225 5 is_stmt 1
.LBB130:
	.loc 1 227 9
	addi	a0,s6,%lo(.LC5)
	call	uart_send_string
.LVL72:
	.loc 1 230 9
.LBB93:
.LBB92:
	.loc 1 70 19 is_stmt 0
	addi	a5,sp,19
	sw	a5,44(sp)
	.loc 1 78 5
	lw	a0,0(s5)
	.loc 1 71 19
	li	a5,1
	sh	a5,48(sp)
	.loc 1 75 19
	addi	a5,sp,20
.LVL73:
	sw	a5,56(sp)
	.loc 1 78 5
	li	a2,2
	.loc 1 76 19
	li	a5,7
.LVL74:
	.loc 1 78 5
	mv	a1,s2
	.loc 1 76 19
	sh	a5,60(sp)
	sb	zero,19(sp)
.LVL75:
	.loc 1 66 5 is_stmt 1
	.loc 1 68 5
	.loc 1 69 5
	.loc 1 68 17 is_stmt 0
	sw	s3,40(sp)
	.loc 1 70 5 is_stmt 1
	.loc 1 71 5
	.loc 1 73 5
	.loc 1 74 5
	.loc 1 73 17 is_stmt 0
	sw	s4,52(sp)
	.loc 1 75 5 is_stmt 1
	.loc 1 76 5
	.loc 1 78 5
	call	qcc74x_i2c_transfer
.LVL76:
.LBE92:
.LBE93:
	.loc 1 231 9
	.loc 1 237 17 is_stmt 0
	lbu	a7,26(sp)
	.loc 1 236 17
	lbu	a6,25(sp)
	.loc 1 235 17
	lbu	a5,24(sp)
.LBB94:
.LBB95:
	.loc 1 33 28
	li	a1,10
.LBE95:
.LBE94:
	.loc 1 234 31
	lbu	a4,20(sp)
.LBB98:
.LBB96:
	.loc 1 33 28
	srli	a0,a7,4
	.loc 1 33 33
	andi	a7,a7,15
	.loc 1 33 28
	mula	a7,a0,a1
.LBE96:
.LBE98:
	.loc 1 233 17
	lbu	a3,21(sp)
.LBB99:
.LBB100:
	.loc 1 33 28
	srli	a0,a6,4
	.loc 1 33 33
	andi	a6,a6,15
.LBE100:
.LBE99:
	.loc 1 232 31
	lbu	a2,22(sp)
.LVL77:
.LBB103:
.LBB104:
	.loc 1 33 5 is_stmt 1
.LBE104:
.LBE103:
.LBB107:
.LBB108:
	.loc 1 33 5
.LBE108:
.LBE107:
.LBB111:
.LBB112:
	.loc 1 33 5
.LBE112:
.LBE111:
.LBB115:
.LBB116:
	.loc 1 33 5
.LBE116:
.LBE115:
.LBB119:
.LBB101:
	.loc 1 33 5
.LBE101:
.LBE119:
.LBB120:
.LBB97:
	.loc 1 33 5
.LBE97:
.LBE120:
.LBB121:
.LBB102:
	.loc 1 33 28 is_stmt 0
	mula	a6,a0,a1
.LBE102:
.LBE121:
.LBB122:
.LBB117:
	srli	a0,a5,4
	.loc 1 33 33
	andi	a5,a5,15
.LBE117:
.LBE122:
	.loc 1 231 9
	andi	a7,a7,0xff
.LBB123:
.LBB118:
	.loc 1 33 28
	mula	a5,a0,a1
.LBE118:
.LBE123:
.LBB124:
.LBB113:
	extu	a0,a4,4+3-1,4
	.loc 1 33 33
	andi	a4,a4,15
.LBE113:
.LBE124:
	.loc 1 231 9
	andi	a6,a6,0xff
.LBB125:
.LBB114:
	.loc 1 33 28
	mula	a4,a0,a1
.LBE114:
.LBE125:
.LBB126:
.LBB109:
	srli	a0,a3,4
	.loc 1 33 33
	andi	a3,a3,15
.LBE109:
.LBE126:
	.loc 1 231 9
	andi	a5,a5,0xff
.LBB127:
.LBB110:
	.loc 1 33 28
	mula	a3,a0,a1
.LBE110:
.LBE127:
.LBB128:
.LBB105:
	extu	a0,a2,4+2-1,4
	.loc 1 33 33
	andi	a2,a2,15
.LBE105:
.LBE128:
	.loc 1 231 9
	andi	a4,a4,0xff
.LBB129:
.LBB106:
	.loc 1 33 28
	mula	a2,a0,a1
.LBE106:
.LBE129:
	.loc 1 231 9
	lui	a1,%hi(.LC9)
	addi	a1,a1,%lo(.LC9)
	andi	a3,a3,0xff
	addi	a0,sp,64
	andi	a2,a2,0xff
	call	sprintf
.LVL78:
	.loc 1 238 9 is_stmt 1
	addi	a0,sp,64
	call	uart_send_string
.LVL79:
	.loc 1 241 9
	.loc 1 241 13 is_stmt 0
	addi	a1,sp,18
	addi	a0,sp,17
	call	dht11_read
.LVL80:
	.loc 1 241 12
	bne	a0,zero,.L46
	.loc 1 242 13 is_stmt 1
	lbu	a3,18(sp)
	lbu	a2,17(sp)
	lui	a1,%hi(.LC10)
	addi	a1,a1,%lo(.LC10)
	addi	a0,sp,64
	call	sprintf
.LVL81:
.L47:
	.loc 1 245 9
	addi	a0,sp,64
	call	uart_send_string
.LVL82:
	.loc 1 248 9
	lw	a0,0(s0)
	call	qcc74x_adc_start_conversion
.LVL83:
	.loc 1 249 9
.L48:
	.loc 1 249 47 discriminator 1
	.loc 1 249 15 discriminator 1
	.loc 1 249 16 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	call	qcc74x_adc_get_count
.LVL84:
	.loc 1 249 15 discriminator 1
	beq	a0,zero,.L48
	.loc 1 250 9 is_stmt 1
	.loc 1 250 24 is_stmt 0
	lw	a0,0(s0)
	call	qcc74x_adc_read_raw
.LVL85:
	.loc 1 250 18
	sw	a0,40(sp)
	.loc 1 251 9 is_stmt 1
	lw	a0,0(s0)
	li	a3,1
	mv	a2,s7
	mv	a1,s2
	call	qcc74x_adc_parse_result
.LVL86:
	.loc 1 252 9
	lw	a0,0(s0)
	call	qcc74x_adc_stop_conversion
.LVL87:
	.loc 1 254 9
	.loc 1 254 33 is_stmt 0
	lw	a5,36(sp)
	fcvt.s.w	fa0,a5
	.loc 1 254 15
	fdiv.s	fa0,fa0,fs0
.LVL88:
	.loc 1 255 9 is_stmt 1
	.loc 1 255 12 is_stmt 0
	flt.s	a5,fa0,fs1
	beq	a5,zero,.L62
	.loc 1 256 13 is_stmt 1
	call	__extendsfdf2
.LVL89:
	mv	a3,a1
	lui	a1,%hi(.LC14)
	mv	a2,a0
	addi	a1,a1,%lo(.LC14)
.L66:
	.loc 1 262 13 is_stmt 0
	addi	a0,sp,64
	call	sprintf
.LVL90:
	.loc 1 264 9 is_stmt 1
	addi	a0,sp,64
	call	uart_send_string
.LVL91:
	.loc 1 265 9
	addi	a0,s1,%lo(.LC7)
	call	uart_send_string
.LVL92:
	.loc 1 267 9
	li	a0,1000
	call	qcc74x_mtimer_delay_ms
.LVL93:
.LBE130:
	.loc 1 225 11
	.loc 1 226 5 is_stmt 0
	j	.L56
.L46:
.LBB131:
	.loc 1 244 13 is_stmt 1
	lui	a1,%hi(.LC11)
	addi	a1,a1,%lo(.LC11)
	addi	a0,sp,64
	call	sprintf
.LVL94:
	j	.L47
.LVL95:
.L62:
	.loc 1 257 14
	.loc 1 256 13 is_stmt 0
	fsw	fa0,12(sp)
	call	__extendsfdf2
.LVL96:
	.loc 1 257 17
	flw	fa0,12(sp)
	.loc 1 256 13
	mv	a2,a0
	mv	a3,a1
	.loc 1 257 17
	flt.s	a5,fa0,fs2
	beq	a5,zero,.L63
.LVL97:
	.loc 1 258 13 is_stmt 1
	lui	a1,%hi(.LC16)
	addi	a1,a1,%lo(.LC16)
	j	.L66
.L63:
	.loc 1 259 14
	.loc 1 259 17 is_stmt 0
	flt.s	a5,fa0,fs3
	beq	a5,zero,.L64
	.loc 1 260 13 is_stmt 1
	lui	a1,%hi(.LC18)
	addi	a1,a1,%lo(.LC18)
	j	.L66
.L64:
	.loc 1 262 13
	lui	a1,%hi(.LC19)
	addi	a1,a1,%lo(.LC19)
	j	.L66
.LBE131:
	.cfi_endproc
.LFE14:
	.size	main, .-main
	.globl	uart0
	.section	.rodata.cst4,"aM",@progbits,4
	.align	2
.LC12:
	.word	1148846080
	.align	2
.LC13:
	.word	1065353216
	.align	2
.LC15:
	.word	1073741824
	.align	2
.LC17:
	.word	1077097267
	.section	.rodata
	.align	2
	.set	.LANCHOR4,. + 0
.LC0:
	.byte	7
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.section	.bss.adc,"aw",@nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	adc, @object
	.size	adc, 4
adc:
	.zero	4
	.section	.bss.gpio,"aw",@nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	gpio, @object
	.size	gpio, 4
gpio:
	.zero	4
	.section	.bss.i2c0,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	i2c0, @object
	.size	i2c0, 4
i2c0:
	.zero	4
	.section	.bss.uart0,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	uart0, @object
	.size	uart0, 4
uart0:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./drivers/lhal/include/qcc74x_i2c.h"
	.file 6 "./drivers/lhal/include/qcc74x_uart.h"
	.file 7 "./drivers/lhal/include/qcc74x_adc.h"
	.file 8 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 9 "./drivers/lhal/include/qcc74x_mtimer.h"
	.file 10 "./bsp/board/qcc74xdk/./board.h"
	.file 11 "./drivers/lhal/include/qcc74x_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xd78
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF98
	.byte	0xc
	.4byte	.LASF99
	.4byte	.LASF100
	.4byte	.Ldebug_ranges0+0x160
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
	.byte	0x2
	.4byte	.LASF5
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x5e
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x2
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4d
	.byte	0x12
	.4byte	0x71
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x2
	.4byte	.LASF9
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x84
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0x2
	.4byte	.LASF14
	.byte	0x3
	.byte	0x14
	.byte	0x12
	.4byte	0x25
	.byte	0x2
	.4byte	.LASF15
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x38
	.byte	0x2
	.4byte	.LASF16
	.byte	0x3
	.byte	0x24
	.byte	0x14
	.4byte	0x52
	.byte	0x2
	.4byte	.LASF17
	.byte	0x3
	.byte	0x2c
	.byte	0x13
	.4byte	0x65
	.byte	0x2
	.4byte	.LASF18
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x78
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF19
	.byte	0x6
	.4byte	0xe5
	.byte	0x7
	.byte	0x4
	.4byte	0xec
	.byte	0x8
	.4byte	.LASF26
	.byte	0x10
	.byte	0x4
	.byte	0x67
	.byte	0x8
	.4byte	0x160
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xf1
	.byte	0
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x69
	.byte	0xe
	.4byte	0xd7
	.byte	0x4
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0xb3
	.byte	0x9
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0xb3
	.byte	0xa
	.byte	0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0xb3
	.byte	0xb
	.byte	0x9
	.4byte	.LASF25
	.byte	0x4
	.byte	0x6e
	.byte	0xb
	.4byte	0xe3
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF27
	.byte	0xc
	.byte	0x5
	.byte	0x7b
	.byte	0x8
	.4byte	0x1a2
	.byte	0x9
	.4byte	.LASF28
	.byte	0x5
	.byte	0x7c
	.byte	0xe
	.4byte	0xbf
	.byte	0
	.byte	0x9
	.4byte	.LASF29
	.byte	0x5
	.byte	0x7d
	.byte	0xe
	.4byte	0xbf
	.byte	0x2
	.byte	0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0x7e
	.byte	0xe
	.4byte	0x1a2
	.byte	0x4
	.byte	0x9
	.4byte	.LASF31
	.byte	0x5
	.byte	0x7f
	.byte	0xe
	.4byte	0xbf
	.byte	0x8
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xb3
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.4byte	.LASF32
	.byte	0x8
	.4byte	.LASF33
	.byte	0xc
	.byte	0x6
	.byte	0xe5
	.byte	0x8
	.4byte	0x232
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0xe6
	.byte	0xe
	.4byte	0xd7
	.byte	0
	.byte	0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0xe7
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0xe8
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0xe9
	.byte	0xd
	.4byte	0xb3
	.byte	0x6
	.byte	0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0xea
	.byte	0xd
	.4byte	0xb3
	.byte	0x7
	.byte	0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0xeb
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0xec
	.byte	0xd
	.4byte	0xb3
	.byte	0x9
	.byte	0x9
	.4byte	.LASF41
	.byte	0x6
	.byte	0xed
	.byte	0xd
	.4byte	0xb3
	.byte	0xa
	.byte	0x9
	.4byte	.LASF42
	.byte	0x6
	.byte	0xee
	.byte	0xd
	.4byte	0xb3
	.byte	0xb
	.byte	0
	.byte	0x8
	.4byte	.LASF43
	.byte	0x6
	.byte	0x7
	.byte	0x8d
	.byte	0x8
	.4byte	0x28e
	.byte	0x9
	.4byte	.LASF44
	.byte	0x7
	.byte	0x8e
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x9
	.4byte	.LASF45
	.byte	0x7
	.byte	0x8f
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x9
	.4byte	.LASF46
	.byte	0x7
	.byte	0x90
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0x9
	.4byte	.LASF47
	.byte	0x7
	.byte	0x91
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0x9
	.4byte	.LASF48
	.byte	0x7
	.byte	0x92
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF49
	.byte	0x7
	.byte	0x93
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0
	.byte	0x8
	.4byte	.LASF50
	.byte	0x2
	.byte	0x7
	.byte	0x9c
	.byte	0x8
	.4byte	0x2b6
	.byte	0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0x9d
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x9
	.4byte	.LASF52
	.byte	0x7
	.byte	0x9e
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	.LASF53
	.byte	0xc
	.byte	0x7
	.byte	0xa9
	.byte	0x8
	.4byte	0x2f8
	.byte	0x9
	.4byte	.LASF51
	.byte	0x7
	.byte	0xaa
	.byte	0xc
	.4byte	0xa7
	.byte	0
	.byte	0x9
	.4byte	.LASF52
	.byte	0x7
	.byte	0xab
	.byte	0xc
	.4byte	0xa7
	.byte	0x1
	.byte	0x9
	.4byte	.LASF54
	.byte	0x7
	.byte	0xac
	.byte	0xd
	.4byte	0xcb
	.byte	0x4
	.byte	0x9
	.4byte	.LASF55
	.byte	0x7
	.byte	0xad
	.byte	0xd
	.4byte	0xcb
	.byte	0x8
	.byte	0
	.byte	0xb
	.4byte	.LASF101
	.byte	0x1
	.byte	0x14
	.byte	0x19
	.4byte	0x30a
	.byte	0x5
	.byte	0x3
	.4byte	uart0
	.byte	0x7
	.byte	0x4
	.4byte	0xf7
	.byte	0xc
	.4byte	.LASF56
	.byte	0x1
	.byte	0x15
	.byte	0x20
	.4byte	0x30a
	.byte	0x5
	.byte	0x3
	.4byte	i2c0
	.byte	0xc
	.4byte	.LASF57
	.byte	0x1
	.byte	0x16
	.byte	0x20
	.4byte	0x30a
	.byte	0x5
	.byte	0x3
	.4byte	gpio
	.byte	0xd
	.string	"adc"
	.byte	0x1
	.byte	0x17
	.byte	0x20
	.4byte	0x30a
	.byte	0x5
	.byte	0x3
	.4byte	adc
	.byte	0xe
	.4byte	.LASF60
	.byte	0x1
	.byte	0xbf
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x824
	.byte	0xd
	.string	"rtc"
	.byte	0x1
	.byte	0xc1
	.byte	0xd
	.4byte	0x824
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7e
	.byte	0xd
	.string	"t"
	.byte	0x1
	.byte	0xc1
	.byte	0x15
	.4byte	0xb3
	.byte	0x3
	.byte	0x91
	.byte	0x91,0x7e
	.byte	0xd
	.string	"h"
	.byte	0x1
	.byte	0xc1
	.byte	0x18
	.4byte	0xb3
	.byte	0x3
	.byte	0x91
	.byte	0x92,0x7e
	.byte	0xd
	.string	"msg"
	.byte	0x1
	.byte	0xc2
	.byte	0xa
	.4byte	0x834
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0xd
	.string	"res"
	.byte	0x1
	.byte	0xc3
	.byte	0x20
	.4byte	0x2b6
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7e
	.byte	0xf
	.4byte	.Ldebug_ranges0+0x68
	.4byte	0x626
	.byte	0xd
	.string	"raw"
	.byte	0x1
	.byte	0xfa
	.byte	0x12
	.4byte	0xd7
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7e
	.byte	0x10
	.string	"v"
	.byte	0x1
	.byte	0xfe
	.byte	0xf
	.4byte	0x844
	.4byte	.LLST18
	.byte	0x11
	.4byte	0xba5
	.4byte	.LBB90
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0xe6
	.byte	0x9
	.4byte	0x427
	.byte	0x12
	.4byte	0xbb2
	.4byte	.LLST19
	.byte	0x12
	.4byte	0xbca
	.4byte	.LLST20
	.byte	0x12
	.4byte	0xbbe
	.4byte	.LLST21
	.byte	0x13
	.4byte	.Ldebug_ranges0+0x88
	.byte	0x14
	.4byte	0xbd6
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7e
	.byte	0x15
	.4byte	.LVL76
	.4byte	0xc63
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0xc2b
	.4byte	.LBB94
	.4byte	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xed
	.byte	0x11
	.4byte	0x441
	.byte	0x17
	.4byte	0xc3c
	.byte	0
	.byte	0x11
	.4byte	0xc2b
	.4byte	.LBB99
	.4byte	.Ldebug_ranges0+0xc0
	.byte	0x1
	.byte	0xec
	.byte	0x11
	.4byte	0x45b
	.byte	0x17
	.4byte	0xc3c
	.byte	0
	.byte	0x11
	.4byte	0xc2b
	.4byte	.LBB103
	.4byte	.Ldebug_ranges0+0xe0
	.byte	0x1
	.byte	0xe8
	.byte	0x11
	.4byte	0x475
	.byte	0x17
	.4byte	0xc3c
	.byte	0
	.byte	0x11
	.4byte	0xc2b
	.4byte	.LBB107
	.4byte	.Ldebug_ranges0+0x100
	.byte	0x1
	.byte	0xe9
	.byte	0x11
	.4byte	0x48f
	.byte	0x17
	.4byte	0xc3c
	.byte	0
	.byte	0x11
	.4byte	0xc2b
	.4byte	.LBB111
	.4byte	.Ldebug_ranges0+0x120
	.byte	0x1
	.byte	0xea
	.byte	0x11
	.4byte	0x4a9
	.byte	0x17
	.4byte	0xc3c
	.byte	0
	.byte	0x11
	.4byte	0xc2b
	.4byte	.LBB115
	.4byte	.Ldebug_ranges0+0x140
	.byte	0x1
	.byte	0xeb
	.byte	0x11
	.4byte	0x4c3
	.byte	0x17
	.4byte	0xc3c
	.byte	0
	.byte	0x18
	.4byte	.LVL72
	.4byte	0xbfd
	.4byte	0x4da
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x18
	.4byte	.LVL78
	.4byte	0xc6f
	.4byte	0x4f8
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0x18
	.4byte	.LVL79
	.4byte	0xbfd
	.4byte	0x50d
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0
	.byte	0x18
	.4byte	.LVL80
	.4byte	0x871
	.4byte	0x529
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x91,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x92,0x7e
	.byte	0
	.byte	0x18
	.4byte	.LVL81
	.4byte	0xc6f
	.4byte	0x547
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.byte	0x18
	.4byte	.LVL82
	.4byte	0xbfd
	.4byte	0x55c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0
	.byte	0x19
	.4byte	.LVL83
	.4byte	0xc7b
	.byte	0x19
	.4byte	.LVL84
	.4byte	0xc87
	.byte	0x19
	.4byte	.LVL85
	.4byte	0xc93
	.byte	0x18
	.4byte	.LVL86
	.4byte	0xca0
	.4byte	0x596
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x87
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x19
	.4byte	.LVL87
	.4byte	0xcad
	.byte	0x19
	.4byte	.LVL89
	.4byte	0xcb9
	.byte	0x18
	.4byte	.LVL90
	.4byte	0xc6f
	.4byte	0x5bd
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0
	.byte	0x18
	.4byte	.LVL91
	.4byte	0xbfd
	.4byte	0x5d2
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0
	.byte	0x18
	.4byte	.LVL92
	.4byte	0xbfd
	.4byte	0x5e9
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x18
	.4byte	.LVL93
	.4byte	0xcc2
	.4byte	0x5fe
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0x18
	.4byte	.LVL94
	.4byte	0xc6f
	.4byte	0x61c
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.byte	0x19
	.4byte	.LVL96
	.4byte	0xcb9
	.byte	0
	.byte	0x1a
	.4byte	0xbe3
	.4byte	.LBB69
	.4byte	.LBE69-.LBB69
	.byte	0x1
	.byte	0xc6
	.byte	0x5
	.4byte	0x675
	.byte	0x14
	.4byte	0xbf0
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x19
	.4byte	.LVL56
	.4byte	0xcce
	.byte	0x18
	.4byte	.LVL57
	.4byte	0xcda
	.4byte	0x663
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0x15
	.4byte	.LVL58
	.4byte	0xce6
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	0x84b
	.4byte	.LBB71
	.4byte	.LBE71-.LBB71
	.byte	0x1
	.byte	0xcd
	.byte	0x5
	.4byte	0x6dd
	.byte	0x14
	.4byte	0x858
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x14
	.4byte	0x864
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7e
	.byte	0x18
	.4byte	.LVL63
	.4byte	0xcda
	.4byte	0x6b2
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x18
	.4byte	.LVL64
	.4byte	0xcf2
	.4byte	0x6c7
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0
	.byte	0x15
	.4byte	.LVL65
	.4byte	0xcfe
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	0xb1b
	.4byte	.LBB73
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xd4
	.byte	0x5
	.4byte	0x75f
	.byte	0x12
	.4byte	0xb28
	.4byte	.LLST11
	.byte	0x12
	.4byte	0xb34
	.4byte	.LLST12
	.byte	0x12
	.4byte	0xb40
	.4byte	.LLST13
	.byte	0x12
	.4byte	0xb4c
	.4byte	.LLST14
	.byte	0x12
	.4byte	0xb58
	.4byte	.LLST15
	.byte	0x12
	.4byte	0xb64
	.4byte	.LLST16
	.byte	0x12
	.4byte	0xb70
	.4byte	.LLST17
	.byte	0x13
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x14
	.4byte	0xb7c
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7e
	.byte	0x14
	.4byte	0xb88
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x15
	.4byte	.LVL69
	.4byte	0xc63
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xc0,0x7e
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0
	.byte	0x19
	.4byte	.LVL55
	.4byte	0xd0a
	.byte	0x19
	.4byte	.LVL59
	.4byte	0xd16
	.byte	0x18
	.4byte	.LVL60
	.4byte	0xcda
	.4byte	0x788
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x18
	.4byte	.LVL61
	.4byte	0xd22
	.4byte	0x79f
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0xc
	.4byte	0x186a0
	.byte	0
	.byte	0x18
	.4byte	.LVL62
	.4byte	0xcda
	.4byte	0x7b6
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x18
	.4byte	.LVL66
	.4byte	0xbfd
	.4byte	0x7cd
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0x18
	.4byte	.LVL67
	.4byte	0xbfd
	.4byte	0x7e4
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x18
	.4byte	.LVL68
	.4byte	0xbfd
	.4byte	0x7fb
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x18
	.4byte	.LVL70
	.4byte	0xbfd
	.4byte	0x812
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.byte	0x15
	.4byte	.LVL71
	.4byte	0xcc2
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x2710
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	0xb3
	.4byte	0x834
	.byte	0x1c
	.4byte	0xa0
	.byte	0x6
	.byte	0
	.byte	0x1b
	.4byte	0xe5
	.4byte	0x844
	.byte	0x1c
	.4byte	0xa0
	.byte	0x7f
	.byte	0
	.byte	0x3
	.byte	0x4
	.byte	0x4
	.4byte	.LASF58
	.byte	0x1d
	.4byte	.LASF65
	.byte	0x1
	.byte	0xa8
	.byte	0xd
	.byte	0x1
	.4byte	0x871
	.byte	0x1e
	.string	"cfg"
	.byte	0x1
	.byte	0xac
	.byte	0x20
	.4byte	0x232
	.byte	0x1f
	.4byte	.LASF59
	.byte	0x1
	.byte	0xb5
	.byte	0x21
	.4byte	0x28e
	.byte	0
	.byte	0xe
	.4byte	.LASF61
	.byte	0x1
	.byte	0x79
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0xaf2
	.byte	0x20
	.4byte	.LASF62
	.byte	0x1
	.byte	0x79
	.byte	0x19
	.4byte	0x1a2
	.4byte	.LLST1
	.byte	0x21
	.string	"hum"
	.byte	0x1
	.byte	0x79
	.byte	0x28
	.4byte	0x1a2
	.4byte	.LLST2
	.byte	0xc
	.4byte	.LASF63
	.byte	0x1
	.byte	0x7b
	.byte	0xd
	.4byte	0xaf2
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0x22
	.4byte	.LASF64
	.byte	0x1
	.byte	0x7c
	.byte	0xe
	.4byte	0xd7
	.4byte	.LLST3
	.byte	0xf
	.4byte	.Ldebug_ranges0+0
	.4byte	0x99c
	.byte	0x10
	.string	"i"
	.byte	0x1
	.byte	0x93
	.byte	0xe
	.4byte	0x99
	.4byte	.LLST7
	.byte	0x1a
	.4byte	0xb02
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.byte	0x1
	.byte	0x97
	.byte	0x9
	.4byte	0x90f
	.byte	0x12
	.4byte	0xb0f
	.4byte	.LLST8
	.byte	0x15
	.4byte	.LVL38
	.4byte	0xd2e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	0xb02
	.4byte	.LBB26
	.4byte	.LBE26-.LBB26
	.byte	0x1
	.byte	0x95
	.byte	0x39
	.4byte	0x93c
	.byte	0x12
	.4byte	0xb0f
	.4byte	.LLST9
	.byte	0x15
	.4byte	.LVL51
	.4byte	0xd2e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	0xb02
	.4byte	.LBB28
	.4byte	.LBE28-.LBB28
	.byte	0x1
	.byte	0x9c
	.byte	0x38
	.4byte	0x966
	.byte	0x23
	.4byte	0xb0f
	.byte	0x1
	.byte	0x15
	.4byte	.LVL54
	.4byte	0xd2e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL35
	.4byte	0xd3a
	.4byte	0x979
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x18
	.4byte	.LVL39
	.4byte	0xd3a
	.4byte	0x98c
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x15
	.4byte	.LVL41
	.4byte	0xd3a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	0xb02
	.4byte	.LBB17
	.4byte	.LBE17-.LBB17
	.byte	0x1
	.byte	0x83
	.byte	0x5
	.4byte	0x9ca
	.byte	0x12
	.4byte	0xb0f
	.4byte	.LLST4
	.byte	0x15
	.4byte	.LVL13
	.4byte	0xd2e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	0xb02
	.4byte	.LBB19
	.4byte	.LBE19-.LBB19
	.byte	0x1
	.byte	0x88
	.byte	0x34
	.4byte	0x9f7
	.byte	0x12
	.4byte	0xb0f
	.4byte	.LLST5
	.byte	0x15
	.4byte	.LVL20
	.4byte	0xd2e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	0xb02
	.4byte	.LBB21
	.4byte	.LBE21-.LBB21
	.byte	0x1
	.byte	0x8c
	.byte	0x35
	.4byte	0xa24
	.byte	0x12
	.4byte	0xb0f
	.4byte	.LLST6
	.byte	0x15
	.4byte	.LVL26
	.4byte	0xd2e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1a
	.4byte	0xb02
	.4byte	.LBB31
	.4byte	.LBE31-.LBB31
	.byte	0x1
	.byte	0x90
	.byte	0x34
	.4byte	0xa51
	.byte	0x12
	.4byte	0xb0f
	.4byte	.LLST10
	.byte	0x15
	.4byte	.LVL48
	.4byte	0xd2e
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LVL9
	.4byte	0xd47
	.4byte	0xa6a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x18
	.4byte	.LVL10
	.4byte	0xd54
	.4byte	0xa7d
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x18
	.4byte	.LVL11
	.4byte	0xcc2
	.4byte	0xa90
	.byte	0x16
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x18
	.4byte	.LVL12
	.4byte	0xd61
	.4byte	0xaa3
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x18
	.4byte	.LVL14
	.4byte	0xd47
	.4byte	0xabc
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x16
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x18
	.4byte	.LVL16
	.4byte	0xd3a
	.4byte	0xacf
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x18
	.4byte	.LVL27
	.4byte	0xd3a
	.4byte	0xae2
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x15
	.4byte	.LVL31
	.4byte	0xd3a
	.byte	0x16
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x1b
	.4byte	0xb3
	.4byte	0xb02
	.byte	0x1c
	.4byte	0xa0
	.byte	0x4
	.byte	0
	.byte	0x1d
	.4byte	.LASF66
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.byte	0x1
	.4byte	0xb1b
	.byte	0x24
	.string	"us"
	.byte	0x1
	.byte	0x74
	.byte	0x1f
	.4byte	0xd7
	.byte	0
	.byte	0x1d
	.4byte	.LASF67
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.byte	0x1
	.4byte	0xb95
	.byte	0x24
	.string	"sec"
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.4byte	0xb3
	.byte	0x24
	.string	"min"
	.byte	0x1
	.byte	0x53
	.byte	0xd
	.4byte	0xb3
	.byte	0x25
	.4byte	.LASF68
	.byte	0x1
	.byte	0x54
	.byte	0xd
	.4byte	0xb3
	.byte	0x24
	.string	"day"
	.byte	0x1
	.byte	0x55
	.byte	0xd
	.4byte	0xb3
	.byte	0x25
	.4byte	.LASF69
	.byte	0x1
	.byte	0x56
	.byte	0xd
	.4byte	0xb3
	.byte	0x25
	.4byte	.LASF70
	.byte	0x1
	.byte	0x57
	.byte	0xd
	.4byte	0xb3
	.byte	0x25
	.4byte	.LASF71
	.byte	0x1
	.byte	0x58
	.byte	0xd
	.4byte	0xb3
	.byte	0x1f
	.4byte	.LASF63
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	0x824
	.byte	0x1e
	.string	"msg"
	.byte	0x1
	.byte	0x64
	.byte	0x1d
	.4byte	0xb95
	.byte	0
	.byte	0x1b
	.4byte	0x160
	.4byte	0xba5
	.byte	0x1c
	.4byte	0xa0
	.byte	0x1
	.byte	0
	.byte	0x1d
	.4byte	.LASF72
	.byte	0x1
	.byte	0x40
	.byte	0xd
	.byte	0x1
	.4byte	0xbe3
	.byte	0x24
	.string	"reg"
	.byte	0x1
	.byte	0x40
	.byte	0x21
	.4byte	0xb3
	.byte	0x24
	.string	"buf"
	.byte	0x1
	.byte	0x40
	.byte	0x2f
	.4byte	0x1a2
	.byte	0x24
	.string	"len"
	.byte	0x1
	.byte	0x40
	.byte	0x3c
	.4byte	0xb3
	.byte	0x1e
	.string	"msg"
	.byte	0x1
	.byte	0x42
	.byte	0x1d
	.4byte	0xb95
	.byte	0
	.byte	0x1d
	.4byte	.LASF73
	.byte	0x1
	.byte	0x2c
	.byte	0xd
	.byte	0x1
	.4byte	0xbfd
	.byte	0x1e
	.string	"cfg"
	.byte	0x1
	.byte	0x31
	.byte	0x21
	.4byte	0x1af
	.byte	0
	.byte	0x26
	.4byte	.LASF102
	.byte	0x1
	.byte	0x24
	.byte	0xd
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xc2b
	.byte	0x21
	.string	"s"
	.byte	0x1
	.byte	0x24
	.byte	0x2a
	.4byte	0xf1
	.4byte	.LLST0
	.byte	0x19
	.4byte	.LVL5
	.4byte	0xd6e
	.byte	0
	.byte	0x27
	.4byte	.LASF74
	.byte	0x1
	.byte	0x1f
	.byte	0x10
	.4byte	0xb3
	.byte	0x1
	.4byte	0xc47
	.byte	0x24
	.string	"v"
	.byte	0x1
	.byte	0x1f
	.byte	0x23
	.4byte	0xb3
	.byte	0
	.byte	0x27
	.4byte	.LASF75
	.byte	0x1
	.byte	0x1a
	.byte	0x10
	.4byte	0xb3
	.byte	0x1
	.4byte	0xc63
	.byte	0x24
	.string	"v"
	.byte	0x1
	.byte	0x1a
	.byte	0x23
	.4byte	0xb3
	.byte	0
	.byte	0x28
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x5
	.byte	0xcc
	.byte	0x5
	.byte	0x28
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x8
	.byte	0xf4
	.byte	0x5
	.byte	0x28
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x7
	.byte	0xea
	.byte	0x6
	.byte	0x28
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x7
	.byte	0xf9
	.byte	0x9
	.byte	0x29
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x101
	.byte	0xa
	.byte	0x29
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x7
	.2byte	0x12c
	.byte	0x6
	.byte	0x28
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x7
	.byte	0xf1
	.byte	0x6
	.byte	0x2a
	.4byte	.LASF103
	.4byte	.LASF103
	.byte	0x28
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x9
	.byte	0x27
	.byte	0x6
	.byte	0x28
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0xa
	.byte	0x6
	.byte	0x6
	.byte	0x28
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.byte	0x28
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0x6
	.byte	0xfb
	.byte	0x6
	.byte	0x28
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x7
	.byte	0xba
	.byte	0x6
	.byte	0x28
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x7
	.byte	0xe3
	.byte	0x5
	.byte	0x28
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xa
	.byte	0x4
	.byte	0x6
	.byte	0x28
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0xa
	.byte	0x7
	.byte	0x6
	.byte	0x28
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x5
	.byte	0xab
	.byte	0x6
	.byte	0x28
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x9
	.byte	0x2e
	.byte	0x6
	.byte	0x29
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0xb
	.2byte	0x1f0
	.byte	0x5
	.byte	0x29
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x199
	.byte	0x6
	.byte	0x29
	.4byte	.LASF95
	.4byte	.LASF95
	.byte	0xb
	.2byte	0x1d5
	.byte	0x6
	.byte	0x29
	.4byte	.LASF96
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x1bb
	.byte	0x6
	.byte	0x29
	.4byte	.LASF97
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x129
	.byte	0x5
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
	.byte	0x3f
	.byte	0x19
	.byte	0x2
	.byte	0x18
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
	.byte	0xe
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
	.byte	0xf
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x15
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1b
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1d
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
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x25
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
	.byte	0x26
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
	.byte	0x27
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
	.byte	0x20
	.byte	0xb
	.byte	0x1
	.byte	0x13
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x29
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
	.byte	0x2a
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST18:
	.4byte	.LVL88
	.4byte	.LVL89-1
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL95
	.4byte	.LVL96-1
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	.LVL96-1
	.4byte	.LVL97
	.2byte	0x3
	.byte	0x91
	.byte	0x8c,0x7e
	.4byte	.LVL97
	.4byte	.LFE14
	.2byte	0x2
	.byte	0x90
	.byte	0x2a
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL75
	.4byte	.LVL76-1
	.2byte	0x4
	.byte	0x91
	.byte	0xac,0x7e
	.byte	0x6
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL72
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x37
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x4
	.byte	0x91
	.byte	0x94,0x7e
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL74
	.4byte	.LVL76-1
	.2byte	0x3
	.byte	0x91
	.byte	0xb8,0x7e
	.4byte	.LVL76-1
	.4byte	.LVL76
	.2byte	0x4
	.byte	0x91
	.byte	0x94,0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x4e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x3f
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x34
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x4a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL25
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x4
	.byte	0xa
	.2byte	0x12c
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL25
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x82
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL53
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x82
	.byte	0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x8
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL3
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
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
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB23
	.4byte	.LBE23
	.4byte	.LBB30
	.4byte	.LBE30
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	0
	.4byte	0
	.4byte	.LBB73
	.4byte	.LBE73
	.4byte	.LBB82
	.4byte	.LBE82
	.4byte	.LBB83
	.4byte	.LBE83
	.4byte	.LBB84
	.4byte	.LBE84
	.4byte	.LBB85
	.4byte	.LBE85
	.4byte	.LBB86
	.4byte	.LBE86
	.4byte	.LBB87
	.4byte	.LBE87
	.4byte	.LBB88
	.4byte	.LBE88
	.4byte	0
	.4byte	0
	.4byte	.LBB89
	.4byte	.LBE89
	.4byte	.LBB130
	.4byte	.LBE130
	.4byte	.LBB131
	.4byte	.LBE131
	.4byte	0
	.4byte	0
	.4byte	.LBB90
	.4byte	.LBE90
	.4byte	.LBB93
	.4byte	.LBE93
	.4byte	0
	.4byte	0
	.4byte	.LBB94
	.4byte	.LBE94
	.4byte	.LBB98
	.4byte	.LBE98
	.4byte	.LBB120
	.4byte	.LBE120
	.4byte	0
	.4byte	0
	.4byte	.LBB99
	.4byte	.LBE99
	.4byte	.LBB119
	.4byte	.LBE119
	.4byte	.LBB121
	.4byte	.LBE121
	.4byte	0
	.4byte	0
	.4byte	.LBB103
	.4byte	.LBE103
	.4byte	.LBB128
	.4byte	.LBE128
	.4byte	.LBB129
	.4byte	.LBE129
	.4byte	0
	.4byte	0
	.4byte	.LBB107
	.4byte	.LBE107
	.4byte	.LBB126
	.4byte	.LBE126
	.4byte	.LBB127
	.4byte	.LBE127
	.4byte	0
	.4byte	0
	.4byte	.LBB111
	.4byte	.LBE111
	.4byte	.LBB124
	.4byte	.LBE124
	.4byte	.LBB125
	.4byte	.LBE125
	.4byte	0
	.4byte	0
	.4byte	.LBB115
	.4byte	.LBE115
	.4byte	.LBB122
	.4byte	.LBE122
	.4byte	.LBB123
	.4byte	.LBE123
	.4byte	0
	.4byte	0
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.string	"reg_base"
.LASF44:
	.string	"clk_div"
.LASF14:
	.string	"int8_t"
.LASF74:
	.string	"bcd_to_dec"
.LASF75:
	.string	"dec_to_bcd"
.LASF27:
	.string	"qcc74x_i2c_msg_s"
.LASF4:
	.string	"short int"
.LASF49:
	.string	"vref"
.LASF23:
	.string	"sub_idx"
.LASF20:
	.string	"name"
.LASF31:
	.string	"length"
.LASF35:
	.string	"direction"
.LASF60:
	.string	"main"
.LASF9:
	.string	"__uint32_t"
.LASF88:
	.string	"qcc74x_adc_channel_config"
.LASF5:
	.string	"__uint16_t"
.LASF71:
	.string	"year"
.LASF86:
	.string	"qcc74x_uart_init"
.LASF54:
	.string	"value"
.LASF24:
	.string	"dev_type"
.LASF53:
	.string	"qcc74x_adc_result_s"
.LASF83:
	.string	"qcc74x_mtimer_delay_ms"
.LASF40:
	.string	"flow_ctrl"
.LASF15:
	.string	"uint8_t"
.LASF73:
	.string	"uart0_init"
.LASF41:
	.string	"tx_fifo_threshold"
.LASF25:
	.string	"user_data"
.LASF58:
	.string	"float"
.LASF62:
	.string	"temp"
.LASF11:
	.string	"long long int"
.LASF78:
	.string	"qcc74x_adc_start_conversion"
.LASF94:
	.string	"qcc74x_gpio_init"
.LASF19:
	.string	"char"
.LASF47:
	.string	"differential_mode"
.LASF8:
	.string	"long int"
.LASF51:
	.string	"pos_chan"
.LASF28:
	.string	"addr"
.LASF3:
	.string	"unsigned char"
.LASF17:
	.string	"int32_t"
.LASF84:
	.string	"board_uartx_gpio_init"
.LASF1:
	.string	"__uint8_t"
.LASF38:
	.string	"parity"
.LASF46:
	.string	"continuous_conv_mode"
.LASF82:
	.string	"qcc74x_adc_stop_conversion"
.LASF34:
	.string	"baudrate"
.LASF45:
	.string	"scan_conv_mode"
.LASF68:
	.string	"hour"
.LASF77:
	.string	"sprintf"
.LASF67:
	.string	"ds1307_set_time"
.LASF26:
	.string	"qcc74x_device_s"
.LASF100:
	.string	"./examples/peripherals/i2c/i2c_rtc_module/build"
.LASF91:
	.string	"qcc74x_i2c_init"
.LASF79:
	.string	"qcc74x_adc_get_count"
.LASF55:
	.string	"millivolt"
.LASF89:
	.string	"board_init"
.LASF93:
	.string	"qcc74x_gpio_read"
.LASF29:
	.string	"flags"
.LASF12:
	.string	"long long unsigned int"
.LASF18:
	.string	"uint32_t"
.LASF13:
	.string	"unsigned int"
.LASF37:
	.string	"stop_bits"
.LASF16:
	.string	"uint16_t"
.LASF66:
	.string	"delay_us"
.LASF72:
	.string	"ds1307_read"
.LASF85:
	.string	"qcc74x_device_get_by_name"
.LASF97:
	.string	"qcc74x_uart_putchar"
.LASF6:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF0:
	.string	"__int8_t"
.LASF59:
	.string	"chan"
.LASF69:
	.string	"date"
.LASF48:
	.string	"resolution"
.LASF81:
	.string	"qcc74x_adc_parse_result"
.LASF70:
	.string	"month"
.LASF32:
	.string	"_Bool"
.LASF56:
	.string	"i2c0"
.LASF63:
	.string	"data"
.LASF61:
	.string	"dht11_read"
.LASF30:
	.string	"buffer"
.LASF98:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF103:
	.string	"__extendsfdf2"
.LASF76:
	.string	"qcc74x_i2c_transfer"
.LASF90:
	.string	"board_i2c0_gpio_init"
.LASF10:
	.string	"long unsigned int"
.LASF87:
	.string	"qcc74x_adc_init"
.LASF50:
	.string	"qcc74x_adc_channel_s"
.LASF80:
	.string	"qcc74x_adc_read_raw"
.LASF36:
	.string	"data_bits"
.LASF39:
	.string	"bit_order"
.LASF7:
	.string	"__int32_t"
.LASF52:
	.string	"neg_chan"
.LASF65:
	.string	"adc_init_mq135"
.LASF102:
	.string	"uart_send_string"
.LASF33:
	.string	"qcc74x_uart_config_s"
.LASF22:
	.string	"irq_num"
.LASF57:
	.string	"gpio"
.LASF95:
	.string	"qcc74x_gpio_reset"
.LASF101:
	.string	"uart0"
.LASF99:
	.string	"./examples/peripherals/i2c/i2c_rtc_module/main.c"
.LASF96:
	.string	"qcc74x_gpio_set"
.LASF92:
	.string	"qcc74x_mtimer_delay_us"
.LASF64:
	.string	"timeout"
.LASF43:
	.string	"qcc74x_adc_config_s"
.LASF42:
	.string	"rx_fifo_threshold"
	.ident	"GCC: (GNU) 10.4.0"
