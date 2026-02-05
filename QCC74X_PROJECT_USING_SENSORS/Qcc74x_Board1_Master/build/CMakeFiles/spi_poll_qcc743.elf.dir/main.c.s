	.file	"main.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata.system_init.str1.4,"aMS",@progbits,1
	.align	2
.LC2:
	.string	"gpio"
	.section	.text.system_init,"ax",@progbits
	.align	1
	.globl	system_init
	.type	system_init, @function
system_init:
.LFB8:
	.file 1 "./examples/peripherals/spi/spi_master/main.c"
	.loc 1 34 24
	.cfi_startproc
	.loc 1 35 5
	.loc 1 35 12 is_stmt 0
	lui	a0,%hi(.LC2)
	.loc 1 34 24
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 35 12
	addi	a0,a0,%lo(.LC2)
	.loc 1 34 24
	sw	ra,12(sp)
	sw	s0,8(sp)
	sw	s1,4(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 35 10
	lui	s0,%hi(.LANCHOR0)
	.loc 1 38 5
	li	s1,8192
	.loc 1 35 12
	call	qcc74x_device_get_by_name
.LVL0:
	.loc 1 35 10
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 38 5
	addi	a2,s1,-1279
	li	a1,13
	.loc 1 35 10
	sw	a0,0(s0)
	.loc 1 38 5 is_stmt 1
	call	qcc74x_gpio_init
.LVL1:
	.loc 1 39 5
	lw	a0,0(s0)
	addi	a2,s1,-1279
	li	a1,14
	call	qcc74x_gpio_init
.LVL2:
	.loc 1 40 5
	lw	a0,0(s0)
	addi	a2,s1,-1279
	li	a1,15
	call	qcc74x_gpio_init
.LVL3:
	.loc 1 41 5
	lw	a0,0(s0)
	addi	a2,s1,-1472
	li	a1,12
	call	qcc74x_gpio_init
.LVL4:
	.loc 1 42 5
	lw	a0,0(s0)
	li	a1,12
	call	qcc74x_gpio_set
.LVL5:
	.loc 1 45 5
	lw	a0,0(s0)
	addi	a2,s1,-1275
	li	a1,10
	call	qcc74x_gpio_init
.LVL6:
	.loc 1 46 5
	lw	a0,0(s0)
	addi	a2,s1,-1275
	li	a1,11
	call	qcc74x_gpio_init
.LVL7:
	.loc 1 49 5
	lw	a0,0(s0)
	addi	a2,s1,-1472
	li	a1,3
	call	qcc74x_gpio_init
.LVL8:
	.loc 1 50 5
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_set
.LVL9:
	.loc 1 53 5
	lw	a0,0(s0)
	.loc 1 54 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_restore 8
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	.loc 1 53 5
	li	a2,4096
	.loc 1 54 1
	.loc 1 53 5
	addi	a2,a2,-1920
	li	a1,2
	.loc 1 54 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 53 5
	tail	qcc74x_gpio_init
.LVL10:
	.cfi_endproc
.LFE8:
	.size	system_init, .-system_init
	.section	.rodata.spi_init.str1.4,"aMS",@progbits,1
	.align	2
.LC3:
	.string	"spi0"
	.section	.text.spi_init,"ax",@progbits
	.align	1
	.globl	spi_init
	.type	spi_init, @function
spi_init:
.LFB9:
	.loc 1 56 21 is_stmt 1
	.cfi_startproc
	.loc 1 57 5
	.loc 1 56 21 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 57 32
	lui	a1,%hi(.LANCHOR1)
	li	a2,12
	addi	a1,a1,%lo(.LANCHOR1)
	addi	a0,sp,4
	.loc 1 56 21
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 57 32
	call	memcpy
.LVL11:
	.loc 1 62 5 is_stmt 1
	.loc 1 62 12 is_stmt 0
	lui	a0,%hi(.LC3)
	addi	a0,a0,%lo(.LC3)
	call	qcc74x_device_get_by_name
.LVL12:
	.loc 1 62 10
	lui	a5,%hi(.LANCHOR2)
	.loc 1 63 5
	addi	a1,sp,4
	.loc 1 62 10
	sw	a0,%lo(.LANCHOR2)(a5)
	.loc 1 63 5 is_stmt 1
	call	qcc74x_spi_init
.LVL13:
	.loc 1 64 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE9:
	.size	spi_init, .-spi_init
	.section	.rodata.adc_init_mq135.str1.4,"aMS",@progbits,1
	.align	2
.LC4:
	.string	"adc"
	.section	.text.adc_init_mq135,"ax",@progbits
	.align	1
	.globl	adc_init_mq135
	.type	adc_init_mq135, @function
adc_init_mq135:
.LFB10:
	.loc 1 66 27 is_stmt 1
	.cfi_startproc
	.loc 1 67 5
	.loc 1 67 11 is_stmt 0
	lui	a0,%hi(.LC4)
	.loc 1 66 27
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 67 11
	addi	a0,a0,%lo(.LC4)
	.loc 1 66 27
	sw	ra,28(sp)
	sw	s0,24(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.loc 1 67 11
	call	qcc74x_device_get_by_name
.LVL14:
	.loc 1 68 32
	lui	a5,%hi(.LANCHOR1)
	addi	a5,a5,%lo(.LANCHOR1)
	lw	a4,12(a5)
	lhu	a5,16(a5)
	.loc 1 67 9
	lui	s0,%hi(.LANCHOR3)
	addi	s0,s0,%lo(.LANCHOR3)
	.loc 1 68 32
	sh	a5,12(sp)
	.loc 1 72 33
	li	a5,4096
	addi	a5,a5,1794
	.loc 1 73 5
	addi	a1,sp,8
	.loc 1 67 9
	sw	a0,0(s0)
	.loc 1 68 5 is_stmt 1
	.loc 1 72 5
	.loc 1 68 32 is_stmt 0
	sw	a4,8(sp)
	.loc 1 72 33
	sh	a5,4(sp)
	.loc 1 73 5 is_stmt 1
	call	qcc74x_adc_init
.LVL15:
	.loc 1 74 5
	lw	a0,0(s0)
	addi	a1,sp,4
	li	a2,1
	call	qcc74x_adc_channel_config
.LVL16:
	.loc 1 75 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE10:
	.size	adc_init_mq135, .-adc_init_mq135
	.section	.rodata.ds1307_force_start.str1.4,"aMS",@progbits,1
	.align	2
.LC5:
	.string	">> OSCILLATOR KICKSTARTED! <<\r\n"
	.section	.text.ds1307_force_start,"ax",@progbits
	.align	1
	.globl	ds1307_force_start
	.type	ds1307_force_start, @function
ds1307_force_start:
.LFB11:
	.loc 1 78 31 is_stmt 1
	.cfi_startproc
	.loc 1 79 5
	.loc 1 80 5
	.loc 1 81 5
.LVL17:
	.loc 1 30 40
	.loc 1 82 5
	.loc 1 30 40
	.loc 1 83 5
	.loc 1 30 40
	.loc 1 78 31 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	.loc 1 80 13
	li	a5,355467264
	sw	a5,0(sp)
	.loc 1 85 5 is_stmt 1
	.loc 1 86 5
	.loc 1 87 5
	.loc 1 86 14 is_stmt 0
	li	a5,104
	sw	a5,4(sp)
	.loc 1 88 5 is_stmt 1
	.loc 1 89 16 is_stmt 0
	li	a5,4
	sh	a5,12(sp)
	.loc 1 91 5
	lui	a5,%hi(.LANCHOR4)
	lw	a0,%lo(.LANCHOR4)(a5)
	addi	a1,sp,4
	li	a2,1
	.loc 1 78 31
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 88 16
	sw	sp,8(sp)
	.loc 1 89 5 is_stmt 1
	.loc 1 91 5
	call	qcc74x_i2c_transfer
.LVL18:
	.loc 1 92 5
	lui	a0,%hi(.LC5)
	addi	a0,a0,%lo(.LC5)
	call	printf
.LVL19:
	.loc 1 93 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE11:
	.size	ds1307_force_start, .-ds1307_force_start
	.section	.text.dht11_read,"ax",@progbits
	.align	1
	.globl	dht11_read
	.type	dht11_read, @function
dht11_read:
.LFB12:
	.loc 1 96 45 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 97 5
	.loc 1 96 45 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	.cfi_offset 8, -8
	.loc 1 99 5
	lui	s0,%hi(.LANCHOR0)
	.loc 1 96 45
	sw	s1,36(sp)
	.cfi_offset 9, -12
	.loc 1 99 5
	addi	s1,s0,%lo(.LANCHOR0)
	.loc 1 96 45
	sw	s3,28(sp)
	.cfi_offset 19, -20
	mv	s3,a0
	.loc 1 99 5
	lw	a0,0(s1)
.LVL21:
	li	a2,64
	.loc 1 96 45
	sw	s4,24(sp)
	.cfi_offset 20, -24
	mv	s4,a1
	.loc 1 99 5
	li	a1,3
.LVL22:
	.loc 1 96 45
	sw	ra,44(sp)
	sw	s2,32(sp)
	sw	s5,20(sp)
	sw	s6,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.loc 1 97 13
	sw	zero,8(sp)
	sb	zero,12(sp)
	.loc 1 98 5 is_stmt 1
	.loc 1 99 5
	call	qcc74x_gpio_init
.LVL23:
	.loc 1 100 5
	lw	a0,0(s1)
	li	a1,3
	.loc 1 106 13 is_stmt 0
	li	s2,500
	.loc 1 100 5
	call	qcc74x_gpio_reset
.LVL24:
	.loc 1 101 5 is_stmt 1
	li	a0,20
	call	qcc74x_mtimer_delay_ms
.LVL25:
	.loc 1 102 5
	lw	a0,0(s1)
	li	a1,3
	addi	s0,s0,%lo(.LANCHOR0)
	call	qcc74x_gpio_set
.LVL26:
	.loc 1 103 5
.LBB23:
.LBB24:
	.loc 1 31 37
	li	a0,40
	call	qcc74x_mtimer_delay_us
.LVL27:
.LBE24:
.LBE23:
	.loc 1 104 5
	lw	a0,0(s1)
	li	a2,32
	li	a1,3
	call	qcc74x_gpio_init
.LVL28:
	.loc 1 106 5
	.loc 1 106 20
	.loc 1 106 53 is_stmt 0
	li	s1,-1
.LVL29:
.L10:
	.loc 1 106 26 is_stmt 1 discriminator 1
	.loc 1 106 27 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL30:
	.loc 1 106 26 discriminator 1
	beq	a0,zero,.L11
	.loc 1 106 63 discriminator 3
	addi	s2,s2,-1
.LVL31:
	.loc 1 106 53 discriminator 3
	bne	s2,s1,.L12
	li	s1,500
.L13:
	.loc 1 108 54 discriminator 1
	li	s2,-1
.LVL32:
	j	.L15
.LVL33:
.L12:
	.loc 1 106 67 is_stmt 1
.LBB25:
.LBB26:
	.loc 1 31 37
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL34:
	.loc 1 31 65 is_stmt 0
	j	.L10
.LVL35:
.L11:
.LBE26:
.LBE25:
	.loc 1 107 5 is_stmt 1
	li	s1,500
	.loc 1 107 8 is_stmt 0
	bne	s2,zero,.L13
.LVL36:
.L19:
	.loc 1 107 26
	li	a0,-1
.L9:
	.loc 1 122 1
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
.LVL37:
	lw	s4,24(sp)
	.cfi_restore 20
.LVL38:
	lw	s5,20(sp)
	.cfi_restore 21
	lw	s6,16(sp)
	.cfi_restore 22
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
	jr	ra
.LVL39:
.L17:
	.cfi_restore_state
	.loc 1 108 68 is_stmt 1
.LBB27:
.LBB28:
	.loc 1 31 37
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL40:
.L15:
.LBE28:
.LBE27:
	.loc 1 108 26 discriminator 1
	.loc 1 108 28 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL41:
	.loc 1 108 26 discriminator 1
	bne	a0,zero,.L16
	.loc 1 108 64 discriminator 3
	addi	s1,s1,-1
.LVL42:
	.loc 1 108 54 discriminator 3
	bne	s1,s2,.L17
.L48:
	li	s1,500
.LVL43:
	.loc 1 110 53
	li	s2,-1
.L20:
.LVL44:
	.loc 1 110 26 is_stmt 1 discriminator 1
	.loc 1 110 27 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL45:
	.loc 1 110 26 discriminator 1
	beq	a0,zero,.L21
	.loc 1 110 63 discriminator 3
	addi	s1,s1,-1
.LVL46:
	.loc 1 110 53 discriminator 3
	bne	s1,s2,.L22
.L49:
	li	s1,0
.LVL47:
	li	s2,500
.LBB29:
	.loc 1 113 5
	li	s5,40
.L24:
.LVL48:
	.loc 1 114 30 is_stmt 1 discriminator 1
	.loc 1 114 32 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL49:
	.loc 1 114 30 discriminator 1
	bne	a0,zero,.L25
	.loc 1 114 68 discriminator 3
	addi	s6,s2,-1
.LVL50:
	.loc 1 114 58 discriminator 3
	bne	s2,zero,.L26
.LVL51:
.L25:
	.loc 1 115 9 is_stmt 1
.LBB30:
.LBB31:
	.loc 1 31 37
	li	a0,50
	call	qcc74x_mtimer_delay_us
.LVL52:
.LBE31:
.LBE30:
	.loc 1 116 9
	.loc 1 116 13 is_stmt 0
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL53:
	.loc 1 116 12
	beq	a0,zero,.L27
	.loc 1 116 40 is_stmt 1 discriminator 1
	.loc 1 116 58 is_stmt 0 discriminator 1
	not	a5,s1
	andi	a3,a5,7
	li	a5,1
	.loc 1 116 47 discriminator 1
	srai	a4,s1,3
	.loc 1 116 58 discriminator 1
	sll	a5,a5,a3
	.loc 1 116 52 discriminator 1
	addi	a3,sp,8
	lrbu	a3,a3,a4,0
	or	a5,a5,a3
	addi	a3,sp,8
	srb	a5,a3,a4,0
.L27:
.LBE29:
	li	s2,501
.L28:
.LVL54:
.LBB36:
	.loc 1 117 30 is_stmt 1 discriminator 1
	.loc 1 117 31 is_stmt 0 discriminator 1
	lw	a0,0(s0)
	li	a1,3
	call	qcc74x_gpio_read
.LVL55:
	.loc 1 117 30 discriminator 1
	beq	a0,zero,.L29
.LVL56:
	.loc 1 117 57 discriminator 3
	addi	s2,s2,-1
.LVL57:
	bne	s2,zero,.L30
.LVL58:
.L29:
	.loc 1 113 29 is_stmt 1 discriminator 2
	.loc 1 113 30 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL59:
	.loc 1 113 21 is_stmt 1 discriminator 2
	.loc 1 113 5 is_stmt 0 discriminator 2
	bne	s1,s5,.L33
.LBE36:
	.loc 1 119 5 is_stmt 1
	.loc 1 119 14 is_stmt 0
	lbu	a3,8(sp)
	.loc 1 119 24
	lbu	a5,9(sp)
	.loc 1 119 34
	lbu	a4,10(sp)
	.loc 1 119 44
	lbu	a2,11(sp)
	.loc 1 119 18
	add	a5,a5,a3
	.loc 1 119 28
	add	a5,a5,a4
	.loc 1 119 38
	add	a5,a5,a2
	.loc 1 119 56
	lbu	a2,12(sp)
	.loc 1 119 68
	li	a0,-2
	.loc 1 119 8
	bne	a5,a2,.L9
	.loc 1 120 5 is_stmt 1
	.loc 1 120 10 is_stmt 0
	sb	a3,0(s4)
	.loc 1 120 21 is_stmt 1
	.loc 1 120 27 is_stmt 0
	sb	a4,0(s3)
	.loc 1 121 5 is_stmt 1
	.loc 1 121 12 is_stmt 0
	li	a0,0
	j	.L9
.LVL60:
.L16:
	.loc 1 109 5 is_stmt 1
	.loc 1 109 8 is_stmt 0
	bne	s1,zero,.L48
	j	.L19
.L22:
	.loc 1 110 67 is_stmt 1
.LVL61:
.LBB37:
.LBB38:
	.loc 1 31 37
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL62:
	.loc 1 31 65 is_stmt 0
	j	.L20
.LVL63:
.L21:
.LBE38:
.LBE37:
	.loc 1 111 5 is_stmt 1
	.loc 1 111 8 is_stmt 0
	bne	s1,zero,.L49
	j	.L19
.LVL64:
.L26:
.LBB39:
	.loc 1 114 72 is_stmt 1
.LBB32:
.LBB33:
	.loc 1 31 37
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL65:
	.loc 1 31 65 is_stmt 0
	mv	s2,s6
	j	.L24
.LVL66:
.L33:
.LBE33:
.LBE32:
	.loc 1 114 17
	li	s2,500
	j	.L24
.LVL67:
.L30:
	.loc 1 117 71 is_stmt 1
.LBB34:
.LBB35:
	.loc 1 31 37
	li	a0,1
	call	qcc74x_mtimer_delay_us
.LVL68:
	.loc 1 31 65 is_stmt 0
	j	.L28
.LBE35:
.LBE34:
.LBE39:
	.cfi_endproc
.LFE12:
	.size	dht11_read, .-dht11_read
	.section	.rodata.main.str1.4,"aMS",@progbits,1
	.align	2
.LC6:
	.string	"i2c0"
	.align	2
.LC7:
	.string	">> DETECTED STUCK CLOCK! KICKING... <<\r\n"
	.align	2
.LC8:
	.string	"HYDERABAD MONITOR | Time: %02d:%02d:%02d | T:%d H:%d AQI:%d\r\n"
	.section	.text.startup.main,"ax",@progbits
	.align	1
	.globl	main
	.type	main, @function
main:
.LFB13:
	.loc 1 125 16 is_stmt 1
	.cfi_startproc
	.loc 1 126 5
	.loc 1 125 16 is_stmt 0
	addi	sp,sp,-144
	.cfi_def_cfa_offset 144
	sw	ra,140(sp)
	sw	s0,136(sp)
	sw	s1,132(sp)
	sw	s2,128(sp)
	sw	s3,124(sp)
	sw	s5,116(sp)
	sw	s6,112(sp)
	sw	s7,108(sp)
	sw	s8,104(sp)
	sw	s9,100(sp)
	sw	s10,96(sp)
	sw	s11,92(sp)
	sw	s4,120(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 21, -28
	.cfi_offset 22, -32
	.cfi_offset 23, -36
	.cfi_offset 24, -40
	.cfi_offset 25, -44
	.cfi_offset 26, -48
	.cfi_offset 27, -52
	.cfi_offset 20, -24
	.loc 1 126 5
	call	board_init
.LVL69:
	.loc 1 127 5 is_stmt 1
	call	system_init
.LVL70:
	.loc 1 128 5
	.loc 1 128 12 is_stmt 0
	lui	a0,%hi(.LC6)
	addi	a0,a0,%lo(.LC6)
	call	qcc74x_device_get_by_name
.LVL71:
	.loc 1 129 5
	li	a1,98304
	addi	a1,a1,1696
	.loc 1 128 10
	lui	s5,%hi(.LANCHOR4)
	sw	a0,%lo(.LANCHOR4)(s5)
	.loc 1 129 5 is_stmt 1
	call	qcc74x_i2c_init
.LVL72:
	.loc 1 130 5
	call	adc_init_mq135
.LVL73:
	.loc 1 131 5
	call	spi_init
.LVL74:
	.loc 1 134 5
	call	ds1307_force_start
.LVL75:
	.loc 1 135 5
	li	a0,100
.LBB47:
	.loc 1 146 21 is_stmt 0
	li	s6,4194304
	.loc 1 147 21
	li	s7,65536
.LBE47:
	.loc 1 135 5
	call	qcc74x_mtimer_delay_ms
.LVL76:
	.loc 1 137 5 is_stmt 1
	.loc 1 142 9 is_stmt 0
	li	s3,0
	.loc 1 137 28
	sb	zero,17(sp)
	.loc 1 137 33
	sb	zero,18(sp)
	.loc 1 138 5 is_stmt 1
	.loc 1 139 5
	.loc 1 140 5
	.loc 1 141 5
	.loc 1 141 13 is_stmt 0
	sb	zero,19(sp)
	.loc 1 142 5 is_stmt 1
.LVL77:
	.loc 1 137 23 is_stmt 0
	li	s2,0
	.loc 1 137 18
	li	s1,0
	.loc 1 137 13
	li	s0,0
	addi	s5,s5,%lo(.LANCHOR4)
.LBB66:
	.loc 1 146 21
	addi	s6,s6,104
	.loc 1 146 66
	addi	s10,sp,19
	.loc 1 147 21
	addi	s7,s7,104
	.loc 1 160 17
	lui	s11,%hi(.LC7)
	.loc 1 172 9
	lui	s8,%hi(.LANCHOR3)
	.loc 1 186 9
	lui	s9,%hi(.LANCHOR0)
.LVL78:
.L54:
.LBE66:
	.loc 1 144 5 is_stmt 1
.LBB67:
	.loc 1 146 9
	.loc 1 146 29
	.loc 1 146 88 is_stmt 0
	li	a5,1
	.loc 1 149 13
	lw	a0,0(s5)
	.loc 1 146 88
	sh	a5,64(sp)
	.loc 1 147 66
	addi	a5,sp,20
	sw	a5,72(sp)
	.loc 1 149 13
	li	a2,2
	.loc 1 147 91
	li	a5,3
	.loc 1 149 13
	addi	a1,sp,56
	.loc 1 146 21
	sw	s6,56(sp)
	.loc 1 146 52 is_stmt 1
	.loc 1 146 66 is_stmt 0
	sw	s10,60(sp)
	.loc 1 146 74 is_stmt 1
	.loc 1 147 9
	.loc 1 147 29
	.loc 1 147 21 is_stmt 0
	sw	s7,68(sp)
	.loc 1 147 52 is_stmt 1
	.loc 1 147 77
	.loc 1 147 91 is_stmt 0
	sh	a5,76(sp)
	.loc 1 149 9 is_stmt 1
	.loc 1 149 13 is_stmt 0
	call	qcc74x_i2c_transfer
.LVL79:
	.loc 1 149 12
	bne	a0,zero,.L51
	.loc 1 150 13 is_stmt 1
	.loc 1 150 35 is_stmt 0
	lbu	s2,20(sp)
.LVL80:
.LBB48:
.LBB49:
	.loc 1 29 40 is_stmt 1
.LBE49:
.LBE48:
	.loc 1 151 17 is_stmt 0
	lbu	s1,21(sp)
.LVL81:
	.loc 1 152 35
	lbu	s0,22(sp)
.LVL82:
.LBB52:
.LBB50:
	.loc 1 29 63
	extu	a4,s2,4+3-1,4
	li	a5,10
	.loc 1 29 68
	andi	s2,s2,15
.LVL83:
	.loc 1 29 63
	mula	s2,a4,a5
.LBE50:
.LBE52:
.LBB53:
.LBB54:
	srli	a4,s1,4
	.loc 1 29 68
	andi	s1,s1,15
	.loc 1 29 63
	mula	s1,a4,a5
.LBE54:
.LBE53:
.LBB57:
.LBB58:
	extu	a4,s0,4+2-1,4
	.loc 1 29 68
	andi	s0,s0,15
.LBE58:
.LBE57:
.LBB61:
.LBB51:
	.loc 1 29 63
	andi	s2,s2,0xff
.LVL84:
.LBE51:
.LBE61:
	.loc 1 151 13 is_stmt 1
.LBB62:
.LBB55:
	.loc 1 29 40
.LBE55:
.LBE62:
.LBB63:
.LBB59:
	.loc 1 29 63 is_stmt 0
	mula	s0,a4,a5
.LBE59:
.LBE63:
.LBB64:
.LBB56:
	andi	s1,s1,0xff
.LVL85:
.LBE56:
.LBE64:
	.loc 1 152 13 is_stmt 1
.LBB65:
.LBB60:
	.loc 1 29 40
	.loc 1 29 63 is_stmt 0
	andi	s0,s0,0xff
.LVL86:
.L51:
.LBE60:
.LBE65:
	.loc 1 157 9 is_stmt 1
	.loc 1 157 12 is_stmt 0
	or	a5,s0,s1
	or	a5,s2,a5
	bne	a5,zero,.L55
	.loc 1 158 13 is_stmt 1
	.loc 1 158 26 is_stmt 0
	addi	s3,s3,1
.LVL87:
	.loc 1 159 13 is_stmt 1
	.loc 1 159 15 is_stmt 0
	li	a5,5
	ble	s3,a5,.L52
	.loc 1 160 17 is_stmt 1
	addi	a0,s11,%lo(.LC7)
	call	printf
.LVL88:
	.loc 1 161 17
	call	ds1307_force_start
.LVL89:
	.loc 1 162 17
.L55:
	.loc 1 165 27 is_stmt 0
	li	s3,0
.L52:
.LVL90:
	.loc 1 169 9 is_stmt 1
	.loc 1 169 12 is_stmt 0
	addi	a1,sp,18
	addi	a0,sp,17
	call	dht11_read
.LVL91:
	.loc 1 169 41 is_stmt 1
	.loc 1 172 9
	lw	a0,%lo(.LANCHOR3)(s8)
	addi	s4,s8,%lo(.LANCHOR3)
	call	qcc74x_adc_start_conversion
.LVL92:
	.loc 1 173 9
.L53:
	.loc 1 173 47 discriminator 1
	.loc 1 173 15 discriminator 1
	.loc 1 173 16 is_stmt 0 discriminator 1
	lw	a0,0(s4)
	call	qcc74x_adc_get_count
.LVL93:
	.loc 1 173 15 discriminator 1
	beq	a0,zero,.L53
	.loc 1 174 9 is_stmt 1
	.loc 1 174 24 is_stmt 0
	lw	a0,0(s4)
	call	qcc74x_adc_read_raw
.LVL94:
	.loc 1 174 18
	sw	a0,24(sp)
	.loc 1 175 9 is_stmt 1
	lw	a0,0(s4)
	addi	a2,sp,44
	li	a3,1
	addi	a1,sp,24
	call	qcc74x_adc_parse_result
.LVL95:
	.loc 1 176 9
	lw	a0,0(s4)
	.loc 1 186 9 is_stmt 0
	addi	s4,s9,%lo(.LANCHOR0)
	.loc 1 176 9
	call	qcc74x_adc_stop_conversion
.LVL96:
	.loc 1 177 9 is_stmt 1
	.loc 1 180 19 is_stmt 0
	li	a4,-86
	sb	a4,28(sp)
	.loc 1 181 19
	lbu	a4,17(sp)
	lhu	a5,52(sp)
	.loc 1 177 34
	lw	a6,52(sp)
	.loc 1 186 9
	lw	a0,0(s4)
	.loc 1 181 19
	sb	a4,29(sp)
	.loc 1 181 34
	lbu	a4,18(sp)
	swap8	a5,a5
	.loc 1 186 9
	li	a1,12
	.loc 1 177 34
	sw	a6,12(sp)
.LVL97:
	.loc 1 180 9 is_stmt 1
	.loc 1 181 9
	.loc 1 181 24
	.loc 1 181 34 is_stmt 0
	sb	a4,30(sp)
	.loc 1 182 9 is_stmt 1
	.loc 1 183 19 is_stmt 0
	sh	a5,34(sp)
	.loc 1 182 19
	sb	s0,31(sp)
	.loc 1 182 24 is_stmt 1
	.loc 1 182 34 is_stmt 0
	sb	s1,32(sp)
	.loc 1 182 39 is_stmt 1
	.loc 1 182 49 is_stmt 0
	sb	s2,33(sp)
	.loc 1 183 9 is_stmt 1
	.loc 1 184 9
	.loc 1 186 9
	call	qcc74x_gpio_reset
.LVL98:
	.loc 1 187 9
	lui	a5,%hi(.LANCHOR2)
	lw	a0,%lo(.LANCHOR2)(a5)
	addi	a2,sp,36
	li	a3,8
	addi	a1,sp,28
	call	qcc74x_spi_poll_exchange
.LVL99:
	.loc 1 188 9
	lw	a0,0(s4)
	li	a1,12
	call	qcc74x_gpio_set
.LVL100:
	.loc 1 190 9
	lw	a6,12(sp)
	lbu	a5,18(sp)
	lbu	a4,17(sp)
	lui	a0,%hi(.LC8)
	extu	a6,a6,15,0
	mv	a3,s2
	mv	a2,s1
	mv	a1,s0
	addi	a0,a0,%lo(.LC8)
	call	printf
.LVL101:
	.loc 1 191 9
	li	a0,1000
	call	qcc74x_mtimer_delay_ms
.LVL102:
.LBE67:
	.loc 1 144 11
	.loc 1 144 15 is_stmt 0
	j	.L54
	.cfi_endproc
.LFE13:
	.size	main, .-main
	.section	.rodata
	.align	2
	.set	.LANCHOR1,. + 0
.LC0:
	.word	500000
	.byte	0
	.byte	3
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.zero	1
.LC1:
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
	.set	.LANCHOR0,. + 0
	.type	gpio, @object
	.size	gpio, 4
gpio:
	.zero	4
	.section	.bss.i2c0,"aw",@nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	i2c0, @object
	.size	i2c0, 4
i2c0:
	.zero	4
	.section	.bss.spi0,"aw",@nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	spi0, @object
	.size	spi0, 4
spi0:
	.zero	4
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./drivers/lhal/include/qcc74x_i2c.h"
	.file 6 "./drivers/lhal/include/qcc74x_spi.h"
	.file 7 "./drivers/lhal/include/qcc74x_adc.h"
	.file 8 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 9 "./drivers/lhal/include/qcc74x_gpio.h"
	.file 10 "./drivers/lhal/include/qcc74x_mtimer.h"
	.file 11 "./bsp/board/qcc74xdk/./board.h"
	.file 12 "<built-in>"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xc9a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF95
	.byte	0xc
	.4byte	.LASF96
	.4byte	.LASF97
	.4byte	.Ldebug_ranges0+0xa0
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
	.byte	0x8
	.4byte	.LASF32
	.byte	0xc
	.byte	0x6
	.byte	0xb5
	.byte	0x8
	.4byte	0x21e
	.byte	0x9
	.4byte	.LASF33
	.byte	0x6
	.byte	0xb6
	.byte	0xe
	.4byte	0xd7
	.byte	0
	.byte	0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0xb7
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0xb8
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0x9
	.4byte	.LASF36
	.byte	0x6
	.byte	0xb9
	.byte	0xd
	.4byte	0xb3
	.byte	0x6
	.byte	0x9
	.4byte	.LASF37
	.byte	0x6
	.byte	0xba
	.byte	0xd
	.4byte	0xb3
	.byte	0x7
	.byte	0x9
	.4byte	.LASF38
	.byte	0x6
	.byte	0xbb
	.byte	0xd
	.4byte	0xb3
	.byte	0x8
	.byte	0x9
	.4byte	.LASF39
	.byte	0x6
	.byte	0xbc
	.byte	0xd
	.4byte	0xb3
	.byte	0x9
	.byte	0x9
	.4byte	.LASF40
	.byte	0x6
	.byte	0xbd
	.byte	0xd
	.4byte	0xb3
	.byte	0xa
	.byte	0
	.byte	0x8
	.4byte	.LASF41
	.byte	0x6
	.byte	0x7
	.byte	0x8d
	.byte	0x8
	.4byte	0x27a
	.byte	0x9
	.4byte	.LASF42
	.byte	0x7
	.byte	0x8e
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x9
	.4byte	.LASF43
	.byte	0x7
	.byte	0x8f
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0x9
	.4byte	.LASF44
	.byte	0x7
	.byte	0x90
	.byte	0xd
	.4byte	0xb3
	.byte	0x2
	.byte	0x9
	.4byte	.LASF45
	.byte	0x7
	.byte	0x91
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0x9
	.4byte	.LASF46
	.byte	0x7
	.byte	0x92
	.byte	0xd
	.4byte	0xb3
	.byte	0x4
	.byte	0x9
	.4byte	.LASF47
	.byte	0x7
	.byte	0x93
	.byte	0xd
	.4byte	0xb3
	.byte	0x5
	.byte	0
	.byte	0x8
	.4byte	.LASF48
	.byte	0x2
	.byte	0x7
	.byte	0x9c
	.byte	0x8
	.4byte	0x2a2
	.byte	0x9
	.4byte	.LASF49
	.byte	0x7
	.byte	0x9d
	.byte	0xd
	.4byte	0xb3
	.byte	0
	.byte	0x9
	.4byte	.LASF50
	.byte	0x7
	.byte	0x9e
	.byte	0xd
	.4byte	0xb3
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	.LASF51
	.byte	0xc
	.byte	0x7
	.byte	0xa9
	.byte	0x8
	.4byte	0x2e4
	.byte	0x9
	.4byte	.LASF49
	.byte	0x7
	.byte	0xaa
	.byte	0xc
	.4byte	0xa7
	.byte	0
	.byte	0x9
	.4byte	.LASF50
	.byte	0x7
	.byte	0xab
	.byte	0xc
	.4byte	0xa7
	.byte	0x1
	.byte	0x9
	.4byte	.LASF52
	.byte	0x7
	.byte	0xac
	.byte	0xd
	.4byte	0xcb
	.byte	0x4
	.byte	0x9
	.4byte	.LASF53
	.byte	0x7
	.byte	0xad
	.byte	0xd
	.4byte	0xcb
	.byte	0x8
	.byte	0
	.byte	0xb
	.4byte	.LASF54
	.byte	0x1
	.byte	0x17
	.byte	0x20
	.4byte	0x2f6
	.byte	0x5
	.byte	0x3
	.4byte	spi0
	.byte	0x7
	.byte	0x4
	.4byte	0xf7
	.byte	0xb
	.4byte	.LASF55
	.byte	0x1
	.byte	0x18
	.byte	0x20
	.4byte	0x2f6
	.byte	0x5
	.byte	0x3
	.4byte	gpio
	.byte	0xb
	.4byte	.LASF56
	.byte	0x1
	.byte	0x19
	.byte	0x20
	.4byte	0x2f6
	.byte	0x5
	.byte	0x3
	.4byte	i2c0
	.byte	0xc
	.string	"adc"
	.byte	0x1
	.byte	0x1a
	.byte	0x20
	.4byte	0x2f6
	.byte	0x5
	.byte	0x3
	.4byte	adc
	.byte	0xd
	.4byte	.LASF62
	.byte	0x1
	.byte	0x7d
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x615
	.byte	0xe
	.string	"h"
	.byte	0x1
	.byte	0x89
	.byte	0xd
	.4byte	0xb3
	.4byte	.LLST10
	.byte	0xe
	.string	"m"
	.byte	0x1
	.byte	0x89
	.byte	0x12
	.4byte	0xb3
	.4byte	.LLST11
	.byte	0xe
	.string	"s"
	.byte	0x1
	.byte	0x89
	.byte	0x17
	.4byte	0xb3
	.4byte	.LLST12
	.byte	0xc
	.string	"t"
	.byte	0x1
	.byte	0x89
	.byte	0x1c
	.4byte	0xb3
	.byte	0x3
	.byte	0x91
	.byte	0x81,0x7f
	.byte	0xc
	.string	"hum"
	.byte	0x1
	.byte	0x89
	.byte	0x21
	.4byte	0xb3
	.byte	0x3
	.byte	0x91
	.byte	0x82,0x7f
	.byte	0xc
	.string	"res"
	.byte	0x1
	.byte	0x8a
	.byte	0x20
	.4byte	0x2a2
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0xb
	.4byte	.LASF57
	.byte	0x1
	.byte	0x8b
	.byte	0xd
	.4byte	0x615
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0xb
	.4byte	.LASF58
	.byte	0x1
	.byte	0x8b
	.byte	0x18
	.4byte	0x615
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0xc
	.string	"msg"
	.byte	0x1
	.byte	0x8c
	.byte	0x1d
	.4byte	0x625
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0xc
	.string	"reg"
	.byte	0x1
	.byte	0x8d
	.byte	0xd
	.4byte	0xb3
	.byte	0x3
	.byte	0x91
	.byte	0x83,0x7f
	.byte	0xb
	.4byte	.LASF59
	.byte	0x1
	.byte	0x8d
	.byte	0x19
	.4byte	0x635
	.byte	0x3
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0xf
	.4byte	.LASF60
	.byte	0x1
	.byte	0x8e
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST13
	.byte	0x10
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x5a9
	.byte	0xc
	.string	"raw"
	.byte	0x1
	.byte	0xae
	.byte	0x12
	.4byte	0xd7
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0xb
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb1
	.byte	0x12
	.4byte	0xbf
	.byte	0x3
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0x11
	.4byte	0xb80
	.4byte	.LBB48
	.4byte	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0x96
	.byte	0x11
	.4byte	0x44b
	.byte	0x12
	.4byte	0xb91
	.4byte	.LLST14
	.byte	0
	.byte	0x11
	.4byte	0xb80
	.4byte	.LBB53
	.4byte	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x97
	.byte	0x11
	.4byte	0x465
	.byte	0x13
	.4byte	0xb91
	.byte	0
	.byte	0x11
	.4byte	0xb80
	.4byte	.LBB57
	.4byte	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x98
	.byte	0x11
	.4byte	0x47f
	.byte	0x13
	.4byte	0xb91
	.byte	0
	.byte	0x14
	.4byte	.LVL79
	.4byte	0xb9c
	.4byte	0x499
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0xa8,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0x14
	.4byte	.LVL88
	.4byte	0xba8
	.4byte	0x4b0
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.byte	0x16
	.4byte	.LVL89
	.4byte	0x8d6
	.byte	0x14
	.4byte	.LVL91
	.4byte	0x645
	.4byte	0x4d5
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x81,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x82,0x7f
	.byte	0
	.byte	0x16
	.4byte	.LVL92
	.4byte	0xbb4
	.byte	0x16
	.4byte	.LVL93
	.4byte	0xbc0
	.byte	0x16
	.4byte	.LVL94
	.4byte	0xbcc
	.byte	0x14
	.4byte	.LVL95
	.4byte	0xbd9
	.4byte	0x511
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x88,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x9c,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x16
	.4byte	.LVL96
	.4byte	0xbe6
	.byte	0x14
	.4byte	.LVL98
	.4byte	0xbf2
	.4byte	0x52d
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x14
	.4byte	.LVL99
	.4byte	0xbff
	.4byte	0x54e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x8c,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x94,0x7f
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0x14
	.4byte	.LVL100
	.4byte	0xc0b
	.4byte	0x561
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x14
	.4byte	.LVL101
	.4byte	0xba8
	.4byte	0x597
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x5d
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x15
	.byte	0x1
	.byte	0x60
	.byte	0x9
	.byte	0x91
	.byte	0xfc,0x7e
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.2byte	0xffff
	.byte	0x1a
	.byte	0
	.byte	0x17
	.4byte	.LVL102
	.4byte	0xc18
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LVL69
	.4byte	0xc24
	.byte	0x16
	.4byte	.LVL70
	.4byte	0xa2b
	.byte	0x14
	.4byte	.LVL71
	.4byte	0xc30
	.4byte	0x5d2
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0x14
	.4byte	.LVL72
	.4byte	0xc3c
	.4byte	0x5e9
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0xc
	.4byte	0x186a0
	.byte	0
	.byte	0x16
	.4byte	.LVL73
	.4byte	0x947
	.byte	0x16
	.4byte	.LVL74
	.4byte	0x9bc
	.byte	0x16
	.4byte	.LVL75
	.4byte	0x8d6
	.byte	0x17
	.4byte	.LVL76
	.4byte	0xc18
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	0xb3
	.4byte	0x625
	.byte	0x19
	.4byte	0xa0
	.byte	0x7
	.byte	0
	.byte	0x18
	.4byte	0x160
	.4byte	0x635
	.byte	0x19
	.4byte	0xa0
	.byte	0x1
	.byte	0
	.byte	0x18
	.4byte	0xb3
	.4byte	0x645
	.byte	0x19
	.4byte	0xa0
	.byte	0x2
	.byte	0
	.byte	0xd
	.4byte	.LASF63
	.byte	0x1
	.byte	0x60
	.byte	0x5
	.4byte	0x99
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x8c6
	.byte	0x1a
	.4byte	.LASF64
	.byte	0x1
	.byte	0x60
	.byte	0x19
	.4byte	0x1a2
	.4byte	.LLST0
	.byte	0x1b
	.string	"hum"
	.byte	0x1
	.byte	0x60
	.byte	0x28
	.4byte	0x1a2
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF65
	.byte	0x1
	.byte	0x61
	.byte	0xd
	.4byte	0x8c6
	.byte	0x2
	.byte	0x91
	.byte	0x58
	.byte	0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0x62
	.byte	0xe
	.4byte	0xd7
	.4byte	.LLST2
	.byte	0x10
	.4byte	.Ldebug_ranges0+0
	.4byte	0x770
	.byte	0xe
	.string	"i"
	.byte	0x1
	.byte	0x71
	.byte	0xe
	.4byte	0x99
	.4byte	.LLST6
	.byte	0x1c
	.4byte	0xb4b
	.4byte	.LBB30
	.4byte	.LBE30-.LBB30
	.byte	0x1
	.byte	0x73
	.byte	0x9
	.4byte	0x6e3
	.byte	0x12
	.4byte	0xb58
	.4byte	.LLST7
	.byte	0x17
	.4byte	.LVL52
	.4byte	0xc48
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0xb4b
	.4byte	.LBB32
	.4byte	.LBE32-.LBB32
	.byte	0x1
	.byte	0x72
	.byte	0x48
	.4byte	0x710
	.byte	0x12
	.4byte	0xb58
	.4byte	.LLST8
	.byte	0x17
	.4byte	.LVL65
	.4byte	0xc48
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0xb4b
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x75
	.byte	0x47
	.4byte	0x73a
	.byte	0x1d
	.4byte	0xb58
	.byte	0x1
	.byte	0x17
	.4byte	.LVL68
	.4byte	0xc48
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL49
	.4byte	0xc54
	.4byte	0x74d
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x14
	.4byte	.LVL53
	.4byte	0xc54
	.4byte	0x760
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x17
	.4byte	.LVL55
	.4byte	0xc54
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0xb4b
	.4byte	.LBB23
	.4byte	.LBE23-.LBB23
	.byte	0x1
	.byte	0x67
	.byte	0x5
	.4byte	0x79e
	.byte	0x12
	.4byte	0xb58
	.4byte	.LLST3
	.byte	0x17
	.4byte	.LVL27
	.4byte	0xc48
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0xb4b
	.4byte	.LBB25
	.4byte	.LBE25-.LBB25
	.byte	0x1
	.byte	0x6a
	.byte	0x43
	.4byte	0x7cb
	.byte	0x12
	.4byte	0xb58
	.4byte	.LLST4
	.byte	0x17
	.4byte	.LVL34
	.4byte	0xc48
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0xb4b
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x6c
	.byte	0x44
	.4byte	0x7f8
	.byte	0x12
	.4byte	0xb58
	.4byte	.LLST5
	.byte	0x17
	.4byte	.LVL40
	.4byte	0xc48
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1c
	.4byte	0xb4b
	.4byte	.LBB37
	.4byte	.LBE37-.LBB37
	.byte	0x1
	.byte	0x6e
	.byte	0x43
	.4byte	0x825
	.byte	0x12
	.4byte	0xb58
	.4byte	.LLST9
	.byte	0x17
	.4byte	.LVL62
	.4byte	0xc48
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x14
	.4byte	.LVL23
	.4byte	0xc61
	.4byte	0x83e
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x40
	.byte	0
	.byte	0x14
	.4byte	.LVL24
	.4byte	0xbf2
	.4byte	0x851
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x14
	.4byte	.LVL25
	.4byte	0xc18
	.4byte	0x864
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x44
	.byte	0
	.byte	0x14
	.4byte	.LVL26
	.4byte	0xc0b
	.4byte	0x877
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x14
	.4byte	.LVL28
	.4byte	0xc61
	.4byte	0x890
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0x14
	.4byte	.LVL30
	.4byte	0xc54
	.4byte	0x8a3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x14
	.4byte	.LVL41
	.4byte	0xc54
	.4byte	0x8b6
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x17
	.4byte	.LVL45
	.4byte	0xc54
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	0xb3
	.4byte	0x8d6
	.byte	0x19
	.4byte	0xa0
	.byte	0x4
	.byte	0
	.byte	0x1e
	.4byte	.LASF67
	.byte	0x1
	.byte	0x4e
	.byte	0x6
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x937
	.byte	0xb
	.4byte	.LASF65
	.byte	0x1
	.byte	0x4f
	.byte	0xd
	.4byte	0x937
	.byte	0x2
	.byte	0x91
	.byte	0x60
	.byte	0xc
	.string	"msg"
	.byte	0x1
	.byte	0x55
	.byte	0x1d
	.4byte	0x160
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x14
	.4byte	.LVL18
	.4byte	0xb9c
	.4byte	0x923
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x17
	.4byte	.LVL19
	.4byte	0xba8
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	0xb3
	.4byte	0x947
	.byte	0x19
	.4byte	0xa0
	.byte	0x3
	.byte	0
	.byte	0x1e
	.4byte	.LASF68
	.byte	0x1
	.byte	0x42
	.byte	0x6
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x9bc
	.byte	0xc
	.string	"cfg"
	.byte	0x1
	.byte	0x44
	.byte	0x20
	.4byte	0x21e
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0xb
	.4byte	.LASF69
	.byte	0x1
	.byte	0x48
	.byte	0x21
	.4byte	0x27a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x14
	.4byte	.LVL14
	.4byte	0xc30
	.4byte	0x992
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0x14
	.4byte	.LVL15
	.4byte	0xc6e
	.4byte	0x9a6
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x68
	.byte	0
	.byte	0x17
	.4byte	.LVL16
	.4byte	0xc7a
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF70
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0xa2b
	.byte	0xb
	.4byte	.LASF71
	.byte	0x1
	.byte	0x39
	.byte	0x20
	.4byte	0x1a8
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x14
	.4byte	.LVL11
	.4byte	0xc86
	.4byte	0xa03
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x14
	.4byte	.LVL12
	.4byte	0xc30
	.4byte	0xa1a
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0x17
	.4byte	.LVL13
	.4byte	0xc91
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x91
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x1e
	.4byte	.LASF72
	.byte	0x1
	.byte	0x22
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xb4b
	.byte	0x14
	.4byte	.LVL0
	.4byte	0xc30
	.4byte	0xa58
	.byte	0x15
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0x14
	.4byte	.LVL1
	.4byte	0xc61
	.4byte	0xa72
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3d
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0x14
	.4byte	.LVL2
	.4byte	0xc61
	.4byte	0xa8c
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3e
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0x14
	.4byte	.LVL3
	.4byte	0xc61
	.4byte	0xaa6
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3f
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x81,0x76
	.byte	0
	.byte	0x14
	.4byte	.LVL4
	.4byte	0xc61
	.4byte	0xac0
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0xc0,0x74
	.byte	0
	.byte	0x14
	.4byte	.LVL5
	.4byte	0xc0b
	.4byte	0xad3
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3c
	.byte	0
	.byte	0x14
	.4byte	.LVL6
	.4byte	0xc61
	.4byte	0xaed
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3a
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x85,0x76
	.byte	0
	.byte	0x14
	.4byte	.LVL7
	.4byte	0xc61
	.4byte	0xb07
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x3b
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0x85,0x76
	.byte	0
	.byte	0x14
	.4byte	.LVL8
	.4byte	0xc61
	.4byte	0xb21
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x79
	.byte	0xc0,0x74
	.byte	0
	.byte	0x14
	.4byte	.LVL9
	.4byte	0xc0b
	.4byte	0xb34
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x33
	.byte	0
	.byte	0x1f
	.4byte	.LVL10
	.4byte	0xc61
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x32
	.byte	0x15
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xa
	.2byte	0x880
	.byte	0
	.byte	0
	.byte	0x20
	.4byte	.LASF98
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.byte	0x1
	.4byte	0xb64
	.byte	0x21
	.string	"us"
	.byte	0x1
	.byte	0x1f
	.byte	0x1f
	.4byte	0xd7
	.byte	0
	.byte	0x22
	.4byte	.LASF73
	.byte	0x1
	.byte	0x1e
	.byte	0x10
	.4byte	0xb3
	.byte	0x1
	.4byte	0xb80
	.byte	0x21
	.string	"v"
	.byte	0x1
	.byte	0x1e
	.byte	0x23
	.4byte	0xb3
	.byte	0
	.byte	0x22
	.4byte	.LASF74
	.byte	0x1
	.byte	0x1d
	.byte	0x10
	.4byte	0xb3
	.byte	0x1
	.4byte	0xb9c
	.byte	0x21
	.string	"v"
	.byte	0x1
	.byte	0x1d
	.byte	0x23
	.4byte	0xb3
	.byte	0
	.byte	0x23
	.4byte	.LASF75
	.4byte	.LASF75
	.byte	0x5
	.byte	0xcc
	.byte	0x5
	.byte	0x23
	.4byte	.LASF76
	.4byte	.LASF76
	.byte	0x8
	.byte	0xc8
	.byte	0x5
	.byte	0x23
	.4byte	.LASF77
	.4byte	.LASF77
	.byte	0x7
	.byte	0xea
	.byte	0x6
	.byte	0x23
	.4byte	.LASF78
	.4byte	.LASF78
	.byte	0x7
	.byte	0xf9
	.byte	0x9
	.byte	0x24
	.4byte	.LASF79
	.4byte	.LASF79
	.byte	0x7
	.2byte	0x101
	.byte	0xa
	.byte	0x24
	.4byte	.LASF80
	.4byte	.LASF80
	.byte	0x7
	.2byte	0x12c
	.byte	0x6
	.byte	0x23
	.4byte	.LASF81
	.4byte	.LASF81
	.byte	0x7
	.byte	0xf1
	.byte	0x6
	.byte	0x24
	.4byte	.LASF82
	.4byte	.LASF82
	.byte	0x9
	.2byte	0x1d5
	.byte	0x6
	.byte	0x23
	.4byte	.LASF83
	.4byte	.LASF83
	.byte	0x6
	.byte	0xf5
	.byte	0x5
	.byte	0x24
	.4byte	.LASF84
	.4byte	.LASF84
	.byte	0x9
	.2byte	0x1bb
	.byte	0x6
	.byte	0x23
	.4byte	.LASF85
	.4byte	.LASF85
	.byte	0xa
	.byte	0x27
	.byte	0x6
	.byte	0x23
	.4byte	.LASF86
	.4byte	.LASF86
	.byte	0xb
	.byte	0x4
	.byte	0x6
	.byte	0x23
	.4byte	.LASF87
	.4byte	.LASF87
	.byte	0x4
	.byte	0x7b
	.byte	0x19
	.byte	0x23
	.4byte	.LASF88
	.4byte	.LASF88
	.byte	0x5
	.byte	0xab
	.byte	0x6
	.byte	0x23
	.4byte	.LASF89
	.4byte	.LASF89
	.byte	0xa
	.byte	0x2e
	.byte	0x6
	.byte	0x24
	.4byte	.LASF90
	.4byte	.LASF90
	.byte	0x9
	.2byte	0x1f0
	.byte	0x5
	.byte	0x24
	.4byte	.LASF91
	.4byte	.LASF91
	.byte	0x9
	.2byte	0x199
	.byte	0x6
	.byte	0x23
	.4byte	.LASF92
	.4byte	.LASF92
	.byte	0x7
	.byte	0xba
	.byte	0x6
	.byte	0x23
	.4byte	.LASF93
	.4byte	.LASF93
	.byte	0x7
	.byte	0xe3
	.byte	0x5
	.byte	0x25
	.4byte	.LASF99
	.4byte	.LASF100
	.byte	0xc
	.byte	0
	.byte	0x23
	.4byte	.LASF94
	.4byte	.LASF94
	.byte	0x6
	.byte	0xca
	.byte	0x6
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
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
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
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
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
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1b
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
	.byte	0x1c
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
	.byte	0x1d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1e
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
	.byte	0x1f
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
	.byte	0x20
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
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST10:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL85
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL76
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL84
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL90
	.4byte	.LFE13
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL80
	.4byte	.LVL83
	.2byte	0x6
	.byte	0x82
	.byte	0
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL84
	.2byte	0x9
	.byte	0x91
	.byte	0x84,0x7f
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LFE12
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xa
	.2byte	0x1f4
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL39
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL44
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL50
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x82
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x3
	.byte	0x82
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x66
	.4byte	.LVL67
	.4byte	.LFE12
	.2byte	0x3
	.byte	0x82
	.byte	0x7e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL66
	.4byte	.LVL67
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x3
	.byte	0x8
	.byte	0x32
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x8
	.byte	0x28
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x44
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
	.4byte	.LBB29
	.4byte	.LBE29
	.4byte	.LBB36
	.4byte	.LBE36
	.4byte	.LBB39
	.4byte	.LBE39
	.4byte	0
	.4byte	0
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	.LBB66
	.4byte	.LBE66
	.4byte	.LBB67
	.4byte	.LBE67
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB52
	.4byte	.LBE52
	.4byte	.LBB61
	.4byte	.LBE61
	.4byte	0
	.4byte	0
	.4byte	.LBB53
	.4byte	.LBE53
	.4byte	.LBB62
	.4byte	.LBE62
	.4byte	.LBB64
	.4byte	.LBE64
	.4byte	0
	.4byte	0
	.4byte	.LBB57
	.4byte	.LBE57
	.4byte	.LBB63
	.4byte	.LBE63
	.4byte	.LBB65
	.4byte	.LBE65
	.4byte	0
	.4byte	0
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
.LASF100:
	.string	"__builtin_memcpy"
.LASF28:
	.string	"addr"
.LASF21:
	.string	"reg_base"
.LASF42:
	.string	"clk_div"
.LASF14:
	.string	"int8_t"
.LASF74:
	.string	"bcd_to_dec"
.LASF73:
	.string	"dec_to_bcd"
.LASF27:
	.string	"qcc74x_i2c_msg_s"
.LASF4:
	.string	"short int"
.LASF34:
	.string	"role"
.LASF23:
	.string	"sub_idx"
.LASF62:
	.string	"main"
.LASF58:
	.string	"rx_dummy"
.LASF35:
	.string	"mode"
.LASF93:
	.string	"qcc74x_adc_channel_config"
.LASF5:
	.string	"__uint16_t"
.LASF99:
	.string	"memcpy"
.LASF52:
	.string	"value"
.LASF24:
	.string	"dev_type"
.LASF51:
	.string	"qcc74x_adc_result_s"
.LASF85:
	.string	"qcc74x_mtimer_delay_ms"
.LASF15:
	.string	"uint8_t"
.LASF67:
	.string	"ds1307_force_start"
.LASF71:
	.string	"spi_cfg"
.LASF38:
	.string	"byte_order"
.LASF59:
	.string	"i2c_buf"
.LASF57:
	.string	"tx_buf"
.LASF25:
	.string	"user_data"
.LASF33:
	.string	"freq"
.LASF64:
	.string	"temp"
.LASF11:
	.string	"long long int"
.LASF32:
	.string	"qcc74x_spi_config_s"
.LASF77:
	.string	"qcc74x_adc_start_conversion"
.LASF91:
	.string	"qcc74x_gpio_init"
.LASF19:
	.string	"char"
.LASF45:
	.string	"differential_mode"
.LASF83:
	.string	"qcc74x_spi_poll_exchange"
.LASF61:
	.string	"voltage_mv"
.LASF49:
	.string	"pos_chan"
.LASF76:
	.string	"printf"
.LASF17:
	.string	"int32_t"
.LASF88:
	.string	"qcc74x_i2c_init"
.LASF1:
	.string	"__uint8_t"
.LASF3:
	.string	"unsigned char"
.LASF44:
	.string	"continuous_conv_mode"
.LASF81:
	.string	"qcc74x_adc_stop_conversion"
.LASF43:
	.string	"scan_conv_mode"
.LASF31:
	.string	"length"
.LASF72:
	.string	"system_init"
.LASF26:
	.string	"qcc74x_device_s"
.LASF78:
	.string	"qcc74x_adc_get_count"
.LASF53:
	.string	"millivolt"
.LASF86:
	.string	"board_init"
.LASF90:
	.string	"qcc74x_gpio_read"
.LASF29:
	.string	"flags"
.LASF12:
	.string	"long long unsigned int"
.LASF70:
	.string	"spi_init"
.LASF18:
	.string	"uint32_t"
.LASF13:
	.string	"unsigned int"
.LASF16:
	.string	"uint16_t"
.LASF54:
	.string	"spi0"
.LASF97:
	.string	"./examples/peripherals/spi/spi_master/build"
.LASF87:
	.string	"qcc74x_device_get_by_name"
.LASF6:
	.string	"short unsigned int"
.LASF2:
	.string	"signed char"
.LASF0:
	.string	"__int8_t"
.LASF69:
	.string	"chan"
.LASF8:
	.string	"long int"
.LASF96:
	.string	"./examples/peripherals/spi/spi_master/main.c"
.LASF46:
	.string	"resolution"
.LASF80:
	.string	"qcc74x_adc_parse_result"
.LASF84:
	.string	"qcc74x_gpio_set"
.LASF56:
	.string	"i2c0"
.LASF65:
	.string	"data"
.LASF60:
	.string	"stuck_counter"
.LASF63:
	.string	"dht11_read"
.LASF39:
	.string	"tx_fifo_threshold"
.LASF30:
	.string	"buffer"
.LASF95:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF75:
	.string	"qcc74x_i2c_transfer"
.LASF10:
	.string	"long unsigned int"
.LASF92:
	.string	"qcc74x_adc_init"
.LASF48:
	.string	"qcc74x_adc_channel_s"
.LASF79:
	.string	"qcc74x_adc_read_raw"
.LASF9:
	.string	"__uint32_t"
.LASF37:
	.string	"bit_order"
.LASF7:
	.string	"__int32_t"
.LASF50:
	.string	"neg_chan"
.LASF68:
	.string	"adc_init_mq135"
.LASF20:
	.string	"name"
.LASF22:
	.string	"irq_num"
.LASF55:
	.string	"gpio"
.LASF82:
	.string	"qcc74x_gpio_reset"
.LASF94:
	.string	"qcc74x_spi_init"
.LASF47:
	.string	"vref"
.LASF89:
	.string	"qcc74x_mtimer_delay_us"
.LASF98:
	.string	"delay_us"
.LASF36:
	.string	"data_width"
.LASF66:
	.string	"timeout"
.LASF41:
	.string	"qcc74x_adc_config_s"
.LASF40:
	.string	"rx_fifo_threshold"
	.ident	"GCC: (GNU) 10.4.0"
