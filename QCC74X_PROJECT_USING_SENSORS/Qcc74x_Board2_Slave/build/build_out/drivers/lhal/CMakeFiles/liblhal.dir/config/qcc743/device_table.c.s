	.file	"device_table.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_device_get_by_name,"ax",@progbits
	.align	1
	.globl	qcc74x_device_get_by_name
	.type	qcc74x_device_get_by_name, @function
qcc74x_device_get_by_name:
.LFB5:
	.file 1 "./drivers/lhal/config/qcc743/device_table.c"
	.loc 1 295 1
	.cfi_startproc
.LVL0:
	.loc 1 296 5
.LBB2:
	.loc 1 296 10
	.loc 1 296 25
.LBE2:
	.loc 1 295 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.cfi_offset 8, -8
.LBB3:
	.loc 1 297 13
	lui	s0,%hi(.LANCHOR0)
.LBE3:
	.loc 1 295 1
	sw	s1,20(sp)
	sw	s3,12(sp)
	sw	s4,8(sp)
	sw	ra,28(sp)
	sw	s2,16(sp)
	.cfi_offset 9, -12
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	.cfi_offset 1, -4
	.cfi_offset 18, -16
	.loc 1 295 1
	mv	s4,a0
	li	s1,0
.LBB4:
	.loc 1 297 13
	addi	s0,s0,%lo(.LANCHOR0)
	.loc 1 296 5
	li	s3,41
.LVL1:
.L4:
	.loc 1 297 9 is_stmt 1
	slli	s2,s1,4
	.loc 1 297 13 is_stmt 0
	lrw	a0,s0,s2,0
	mv	a1,s4
	call	strcmp
.LVL2:
	.loc 1 297 12
	bne	a0,zero,.L2
	.loc 1 298 13 is_stmt 1
	.loc 1 298 20 is_stmt 0
	add	a0,s0,s2
.LVL3:
.L1:
.LBE4:
	.loc 1 303 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	lw	s1,20(sp)
	.cfi_restore 9
	lw	s2,16(sp)
	.cfi_restore 18
	lw	s3,12(sp)
	.cfi_restore 19
	lw	s4,8(sp)
	.cfi_restore 20
.LVL4:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL5:
.L2:
	.cfi_restore_state
.LBB5:
	.loc 1 296 91 is_stmt 1 discriminator 2
	.loc 1 296 25 discriminator 2
	.loc 1 296 5 is_stmt 0 discriminator 2
	addi	s1,s1,1
.LVL6:
	bne	s1,s3,.L4
.LBE5:
	.loc 1 302 11
	li	a0,0
	j	.L1
	.cfi_endproc
.LFE5:
	.size	qcc74x_device_get_by_name, .-qcc74x_device_get_by_name
	.section	.text.qcc74x_device_set_userdata,"ax",@progbits
	.align	1
	.globl	qcc74x_device_set_userdata
	.type	qcc74x_device_set_userdata, @function
qcc74x_device_set_userdata:
.LFB6:
	.loc 1 306 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 307 5
	.loc 1 307 23 is_stmt 0
	sw	a1,12(a0)
	.loc 1 308 1
	ret
	.cfi_endproc
.LFE6:
	.size	qcc74x_device_set_userdata, .-qcc74x_device_set_userdata
	.globl	qcc743_device_table
	.section	.rodata.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"adc"
	.align	2
.LC1:
	.string	"dac"
	.align	2
.LC2:
	.string	"ef_ctrl"
	.align	2
.LC3:
	.string	"gpio"
	.align	2
.LC4:
	.string	"uart0"
	.align	2
.LC5:
	.string	"uart1"
	.align	2
.LC6:
	.string	"spi0"
	.align	2
.LC7:
	.string	"pwm_v2_0"
	.align	2
.LC8:
	.string	"dma0_ch0"
	.align	2
.LC9:
	.string	"dma0_ch1"
	.align	2
.LC10:
	.string	"dma0_ch2"
	.align	2
.LC11:
	.string	"dma0_ch3"
	.align	2
.LC12:
	.string	"i2c0"
	.align	2
.LC13:
	.string	"i2c1"
	.align	2
.LC14:
	.string	"i2s0"
	.align	2
.LC15:
	.string	"timer0"
	.align	2
.LC16:
	.string	"timer1"
	.align	2
.LC17:
	.string	"rtc"
	.align	2
.LC18:
	.string	"aes"
	.align	2
.LC19:
	.string	"sha"
	.align	2
.LC20:
	.string	"trng"
	.align	2
.LC21:
	.string	"pka"
	.align	2
.LC22:
	.string	"emac0"
	.align	2
.LC23:
	.string	"watchdog"
	.align	2
.LC24:
	.string	"cks"
	.align	2
.LC25:
	.string	"mjpeg"
	.align	2
.LC26:
	.string	"irrx"
	.align	2
.LC27:
	.string	"cam0"
	.align	2
.LC28:
	.string	"cam1"
	.align	2
.LC29:
	.string	"auadc"
	.align	2
.LC30:
	.string	"audac"
	.align	2
.LC31:
	.string	"sdio2"
	.align	2
.LC32:
	.string	"sdh"
	.align	2
.LC33:
	.string	"dbi"
	.align	2
.LC34:
	.string	"plfm_dma_ch0"
	.align	2
.LC35:
	.string	"plfm_dma_ch1"
	.align	2
.LC36:
	.string	"plfm_dma_ch2"
	.align	2
.LC37:
	.string	"plfm_dma_ch3"
	.align	2
.LC38:
	.string	"plfm_dma_ch4"
	.align	2
.LC39:
	.string	"wo"
	.align	2
.LC40:
	.string	"usb_v2"
	.section	.data.qcc743_device_table,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	qcc743_device_table, @object
	.size	qcc743_device_table, 656
qcc743_device_table:
	.word	.LC0
	.word	536932352
	.byte	41
	.byte	0
	.byte	0
	.byte	0
	.word	0
	.word	.LC1
	.word	536870912
	.byte	-1
	.byte	0
	.byte	0
	.byte	1
	.word	0
	.word	.LC2
	.word	537223168
	.byte	-1
	.byte	0
	.byte	0
	.byte	38
	.word	0
	.word	.LC3
	.word	536870912
	.byte	60
	.byte	0
	.byte	0
	.byte	4
	.word	0
	.word	.LC4
	.word	536911872
	.byte	44
	.byte	0
	.zero	1
	.byte	5
	.word	0
	.word	.LC5
	.word	536912128
	.byte	45
	.byte	1
	.zero	1
	.byte	5
	.word	0
	.word	.LC6
	.word	536912384
	.byte	43
	.byte	0
	.zero	1
	.byte	6
	.word	0
	.word	.LC7
	.word	536912896
	.byte	49
	.byte	0
	.byte	0
	.byte	12
	.word	0
	.word	.LC8
	.word	536920320
	.byte	31
	.byte	0
	.byte	0
	.byte	8
	.word	0
	.word	.LC9
	.word	536920576
	.byte	31
	.byte	0
	.byte	1
	.byte	8
	.word	0
	.word	.LC10
	.word	536920832
	.byte	31
	.byte	0
	.byte	2
	.byte	8
	.word	0
	.word	.LC11
	.word	536921088
	.byte	31
	.byte	0
	.byte	3
	.byte	8
	.word	0
	.word	.LC12
	.word	536912640
	.byte	48
	.byte	0
	.byte	0
	.byte	7
	.word	0
	.word	.LC13
	.word	536914176
	.byte	55
	.byte	1
	.byte	0
	.byte	7
	.word	0
	.word	.LC14
	.word	536914688
	.byte	56
	.byte	0
	.byte	0
	.byte	9
	.word	0
	.word	.LC15
	.word	536913152
	.byte	52
	.byte	0
	.byte	0
	.byte	11
	.word	0
	.word	.LC16
	.word	536913152
	.byte	53
	.byte	1
	.byte	0
	.byte	11
	.word	0
	.word	.LC17
	.word	536932352
	.byte	67
	.byte	0
	.byte	0
	.byte	20
	.word	0
	.word	.LC18
	.word	536887296
	.byte	-1
	.byte	0
	.byte	0
	.byte	28
	.word	0
	.word	.LC19
	.word	536887296
	.byte	-1
	.byte	0
	.byte	0
	.byte	29
	.word	0
	.word	.LC20
	.word	536887296
	.byte	-1
	.byte	0
	.byte	0
	.byte	31
	.word	0
	.word	.LC21
	.word	536887296
	.byte	-1
	.byte	0
	.byte	0
	.byte	32
	.word	0
	.word	.LC22
	.word	537329664
	.byte	40
	.byte	0
	.byte	0
	.byte	19
	.word	0
	.word	.LC23
	.word	536913152
	.byte	54
	.byte	0
	.byte	0
	.byte	11
	.word	0
	.word	.LC24
	.word	536913664
	.byte	0
	.byte	0
	.byte	0
	.byte	33
	.word	0
	.word	.LC25
	.word	537235456
	.byte	39
	.byte	0
	.byte	0
	.byte	34
	.word	0
	.word	.LC26
	.word	536913408
	.byte	36
	.byte	0
	.byte	0
	.byte	10
	.word	0
	.word	.LC27
	.word	537227264
	.byte	32
	.byte	0
	.byte	0
	.byte	14
	.word	0
	.word	.LC28
	.word	537231360
	.byte	34
	.byte	0
	.byte	0
	.byte	14
	.word	0
	.word	.LC29
	.word	536914944
	.byte	38
	.byte	0
	.byte	0
	.byte	2
	.word	0
	.word	.LC30
	.word	537219072
	.byte	20
	.byte	0
	.byte	0
	.byte	3
	.word	0
	.word	.LC31
	.word	536924160
	.byte	23
	.byte	0
	.byte	0
	.byte	39
	.word	0
	.word	.LC32
	.word	537264128
	.byte	33
	.byte	0
	.byte	0
	.byte	17
	.word	0
	.word	.LC33
	.word	536913920
	.byte	18
	.byte	0
	.byte	0
	.byte	36
	.word	0
	.word	.LC34
	.word	614465536
	.byte	0
	.byte	0
	.byte	0
	.byte	41
	.word	0
	.word	.LC35
	.word	614465536
	.byte	0
	.byte	1
	.byte	0
	.byte	41
	.word	0
	.word	.LC36
	.word	614465536
	.byte	0
	.byte	2
	.byte	0
	.byte	41
	.word	0
	.word	.LC37
	.word	614465536
	.byte	0
	.byte	3
	.byte	0
	.byte	41
	.word	0
	.word	.LC38
	.word	614465536
	.byte	0
	.byte	4
	.byte	0
	.byte	41
	.word	0
	.word	.LC39
	.word	536870912
	.byte	47
	.byte	0
	.byte	0
	.byte	42
	.word	0
	.word	.LC40
	.word	537337856
	.byte	37
	.byte	0
	.byte	0
	.byte	27
	.word	0
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/qcc74x_core.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1d1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF21
	.byte	0xc
	.4byte	.LASF22
	.4byte	.LASF23
	.4byte	.Ldebug_ranges0+0x28
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x54
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x6
	.4byte	0x9d
	.byte	0x7
	.byte	0x4
	.4byte	0xa4
	.byte	0x8
	.4byte	.LASF24
	.byte	0x10
	.byte	0x4
	.byte	0x67
	.byte	0x8
	.4byte	0x118
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x68
	.byte	0x11
	.4byte	0xa9
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x69
	.byte	0xe
	.4byte	0x8f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6a
	.byte	0xd
	.4byte	0x83
	.byte	0x8
	.byte	0xa
	.string	"idx"
	.byte	0x4
	.byte	0x6b
	.byte	0xd
	.4byte	0x83
	.byte	0x9
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x6c
	.byte	0xd
	.4byte	0x83
	.byte	0xa
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x6d
	.byte	0xd
	.4byte	0x83
	.byte	0xb
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x6e
	.byte	0xb
	.4byte	0x9b
	.byte	0xc
	.byte	0
	.byte	0xb
	.4byte	0xaf
	.4byte	0x128
	.byte	0xc
	.4byte	0x7c
	.byte	0x28
	.byte	0
	.byte	0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0x7
	.byte	0x18
	.4byte	0x118
	.byte	0x5
	.byte	0x3
	.4byte	qcc743_device_table
	.byte	0xe
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x131
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x170
	.byte	0xf
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x131
	.byte	0x39
	.4byte	0x170
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x131
	.byte	0x47
	.4byte	0x9b
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x7
	.byte	0x4
	.4byte	0xaf
	.byte	0x10
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x126
	.byte	0x19
	.4byte	0x170
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x1c8
	.byte	0x11
	.4byte	.LASF14
	.byte	0x1
	.2byte	0x126
	.byte	0x3f
	.4byte	0xa9
	.4byte	.LLST0
	.byte	0x12
	.4byte	.Ldebug_ranges0+0
	.byte	0x13
	.string	"i"
	.byte	0x1
	.2byte	0x128
	.byte	0x12
	.4byte	0x83
	.4byte	.LLST1
	.byte	0x14
	.4byte	.LVL2
	.4byte	0x1c8
	.byte	0x15
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x84
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF28
	.4byte	.LASF28
	.byte	0x5
	.byte	0x24
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
	.byte	0xf
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
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x3
	.byte	0x79
	.byte	0x1
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x24
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF21:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"__uint8_t"
.LASF25:
	.string	"qcc743_device_table"
.LASF27:
	.string	"qcc74x_device_get_by_name"
.LASF22:
	.string	"./drivers/lhal/config/qcc743/device_table.c"
.LASF19:
	.string	"user_data"
.LASF1:
	.string	"unsigned char"
.LASF7:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF18:
	.string	"dev_type"
.LASF17:
	.string	"sub_idx"
.LASF6:
	.string	"__uint32_t"
.LASF23:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/lhal"
.LASF24:
	.string	"qcc74x_device_s"
.LASF10:
	.string	"unsigned int"
.LASF26:
	.string	"qcc74x_device_set_userdata"
.LASF9:
	.string	"long long unsigned int"
.LASF11:
	.string	"uint8_t"
.LASF15:
	.string	"reg_base"
.LASF28:
	.string	"strcmp"
.LASF8:
	.string	"long long int"
.LASF14:
	.string	"name"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF20:
	.string	"device"
.LASF0:
	.string	"signed char"
.LASF16:
	.string	"irq_num"
	.ident	"GCC: (GNU) 10.4.0"
