	.file	"rv_pmp.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.rvpmp_fill_entry,"ax",@progbits
	.align	1
	.globl	rvpmp_fill_entry
	.type	rvpmp_fill_entry, @function
rvpmp_fill_entry:
.LFB239:
	.file 1 "./drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c"
	.loc 1 256 1
	.cfi_startproc
.LVL0:
.LBB8:
.LBB9:
	.loc 1 203 5 is_stmt 0
	li	a5,11
.LBE9:
.LBE8:
	.loc 1 256 1
	mv	a6,a0
	.loc 1 257 5 is_stmt 1
.LVL1:
	.loc 1 258 5
	.loc 1 259 5
	.loc 1 260 5
	.loc 1 261 5
	.loc 1 264 5
.LBB12:
.LBB10:
	.loc 1 198 5
	.loc 1 199 5
	.loc 1 203 5
	bgtu	a1,a5,.L2
	li	a5,7
	bgtu	a1,a5,.L3
	li	a5,3
	bleu	a1,a5,.L4
	.loc 1 210 13
 #APP
# 210 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrr a4, pmpcfg1
# 0 "" 2
.LVL2:
	.loc 1 212 13
 #NO_APP
.L5:
	.loc 1 249 5
	.loc 1 250 5
	.loc 1 249 12 is_stmt 0
	andi	a5,a1,3
.LVL3:
	.loc 1 250 21
	slli	a3,a5,3
	.loc 1 250 9
	srl	a4,a4,a3
.LVL4:
	.loc 1 252 5 is_stmt 1
.LBE10:
.LBE12:
	.loc 1 265 5
	.loc 1 265 13 is_stmt 0
	andi	a0,a4,128
.LVL5:
	.loc 1 265 8
	bne	a0,zero,.L37
	.loc 1 267 12 is_stmt 1
	.loc 1 267 21 is_stmt 0
	andi	a4,a4,24
.LVL6:
	.loc 1 267 15
	beq	a4,zero,.L8
	.loc 1 267 33 discriminator 1
	beq	a2,zero,.L38
.L8:
.LVL7:
.LBB13:
.LBB14:
	.loc 1 271 5 is_stmt 1
	.loc 1 271 10 is_stmt 0
	lw	a5,8(a6)
.LVL8:
	.loc 1 272 5 is_stmt 1
	.loc 1 276 5 is_stmt 0
	li	a7,8
	.loc 1 272 8
	lw	a4,0(a6)
.LVL9:
	.loc 1 274 5 is_stmt 1
	.loc 1 274 8 is_stmt 0
	andi	a2,a5,24
.LVL10:
	.loc 1 276 5 is_stmt 1
	beq	a2,a7,.L47
	li	a7,24
	beq	a2,a7,.L10
	beq	a2,zero,.L11
	li	a0,4
	ret
.LVL11:
.L2:
.LBE14:
.LBE13:
.LBB19:
.LBB11:
	.loc 1 203 5 is_stmt 0
	addi	a5,a1,-12
	li	a3,3
	li	a4,0
	bgtu	a5,a3,.L5
	.loc 1 220 13 is_stmt 1
 #APP
# 220 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrr a4, pmpcfg3
# 0 "" 2
.LVL12:
	.loc 1 222 13
 #NO_APP
	j	.L5
.LVL13:
.L4:
	.loc 1 205 13
 #APP
# 205 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrr a4, pmpcfg0
# 0 "" 2
.LVL14:
	.loc 1 207 13
 #NO_APP
	j	.L5
.LVL15:
.L3:
	.loc 1 215 13
 #APP
# 215 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrr a4, pmpcfg2
# 0 "" 2
.LVL16:
	.loc 1 217 13
 #NO_APP
	j	.L5
.LVL17:
.L10:
.LBE11:
.LBE19:
.LBB20:
.LBB17:
	.loc 1 285 13
	.loc 1 285 46 is_stmt 0
	lw	a2,4(a6)
.LVL18:
	addi	a2,a2,-1
	.loc 1 285 20
	and	a6,a4,a2
.LVL19:
	.loc 1 285 16
	bne	a6,zero,.L39
.LVL20:
	.loc 1 287 13 is_stmt 1
	.loc 1 288 13
	.loc 1 289 13
	.loc 1 297 5
	.loc 1 287 48 is_stmt 0
	srli	a2,a2,1
.LVL21:
	.loc 1 287 16
	or	a4,a2,a4
.LVL22:
.L47:
	.loc 1 288 16
	srli	a4,a4,2
.L11:
.LVL23:
	.loc 1 298 9 is_stmt 1
.LBB15:
.LBB16:
	.loc 1 6 5
	.loc 1 7 5
	.loc 1 8 5
	.loc 1 10 5
	li	a2,8
	beq	a1,a2,.L12
	bgtu	a1,a2,.L13
	li	a2,4
	beq	a1,a2,.L14
	bgtu	a1,a2,.L15
	li	a2,2
	beq	a1,a2,.L16
	bgtu	a1,a2,.L17
	beq	a1,zero,.L18
	li	a2,1
	beq	a1,a2,.L19
	ret
.L17:
	li	a2,3
	beq	a1,a2,.L20
	ret
.L15:
	li	a2,6
	beq	a1,a2,.L21
	li	a2,7
	beq	a1,a2,.L22
	li	a2,5
	beq	a1,a2,.L23
	ret
.L13:
	li	a2,12
	beq	a1,a2,.L24
	bgtu	a1,a2,.L25
	li	a2,10
	beq	a1,a2,.L26
	li	a2,11
	beq	a1,a2,.L27
	li	a2,9
	beq	a1,a2,.L28
	ret
.L25:
	li	a2,14
	beq	a1,a2,.L29
	li	a2,15
	beq	a1,a2,.L30
	li	a2,13
	beq	a1,a2,.L31
	ret
.L18:
	.loc 1 12 13
 #APP
# 12 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr0, a4
# 0 "" 2
	.loc 1 15 13
 #NO_APP
.L32:
	.loc 1 113 5
	.loc 1 115 13
 #APP
# 115 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrr a2, pmpcfg0
# 0 "" 2
.LVL24:
	.loc 1 117 13
	.loc 1 118 13
	.loc 1 118 27 is_stmt 0
 #NO_APP
	li	a4,255
.LVL25:
	sll	a4,a4,a3
	.loc 1 118 20
	not	a4,a4
	.loc 1 118 17
	and	a4,a4,a2
.LVL26:
	.loc 1 119 13 is_stmt 1
	.loc 1 120 13
	.loc 1 119 25 is_stmt 0
	sll	a5,a5,a3
.LVL27:
	.loc 1 119 17
	or	a4,a5,a4
.LVL28:
	.loc 1 120 13
 #APP
# 120 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpcfg0, a4
# 0 "" 2
	.loc 1 123 13 is_stmt 1
 #NO_APP
	ret
.LVL29:
.L19:
	.loc 1 18 13
 #APP
# 18 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr1, a4
# 0 "" 2
	.loc 1 21 13
 #NO_APP
	j	.L32
.L16:
	.loc 1 24 13
 #APP
# 24 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr2, a4
# 0 "" 2
	.loc 1 27 13
 #NO_APP
	j	.L32
.L20:
	.loc 1 30 13
 #APP
# 30 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr3, a4
# 0 "" 2
	.loc 1 33 13
 #NO_APP
	j	.L32
.L14:
	.loc 1 36 13
 #APP
# 36 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr4, a4
# 0 "" 2
	.loc 1 39 13
 #NO_APP
.L33:
	.loc 1 113 5
	.loc 1 126 13
 #APP
# 126 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrr a2, pmpcfg1
# 0 "" 2
.LVL30:
	.loc 1 128 13
	.loc 1 129 13
	.loc 1 129 27 is_stmt 0
 #NO_APP
	li	a4,255
.LVL31:
	sll	a4,a4,a3
	.loc 1 129 20
	not	a4,a4
	.loc 1 129 17
	and	a4,a4,a2
.LVL32:
	.loc 1 130 13 is_stmt 1
	.loc 1 131 13
	.loc 1 130 25 is_stmt 0
	sll	a5,a5,a3
.LVL33:
	.loc 1 130 17
	or	a4,a5,a4
.LVL34:
	.loc 1 131 13
 #APP
# 131 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpcfg1, a4
# 0 "" 2
	.loc 1 134 13 is_stmt 1
 #NO_APP
	ret
.LVL35:
.L23:
	.loc 1 42 13
 #APP
# 42 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr5, a4
# 0 "" 2
	.loc 1 45 13
 #NO_APP
	j	.L33
.L21:
	.loc 1 48 13
 #APP
# 48 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr6, a4
# 0 "" 2
	.loc 1 51 13
 #NO_APP
	j	.L33
.L22:
	.loc 1 54 13
 #APP
# 54 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr7, a4
# 0 "" 2
	.loc 1 57 13
 #NO_APP
	j	.L33
.L12:
	.loc 1 60 13
 #APP
# 60 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr8, a4
# 0 "" 2
	.loc 1 63 13
 #NO_APP
.L34:
	.loc 1 113 5
	.loc 1 137 13
 #APP
# 137 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrr a2, pmpcfg2
# 0 "" 2
.LVL36:
	.loc 1 139 13
	.loc 1 140 13
	.loc 1 140 27 is_stmt 0
 #NO_APP
	li	a4,255
.LVL37:
	sll	a4,a4,a3
	.loc 1 140 20
	not	a4,a4
	.loc 1 140 17
	and	a4,a4,a2
.LVL38:
	.loc 1 141 13 is_stmt 1
	.loc 1 142 13
	.loc 1 141 25 is_stmt 0
	sll	a5,a5,a3
.LVL39:
	.loc 1 141 17
	or	a4,a5,a4
.LVL40:
	.loc 1 142 13
 #APP
# 142 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpcfg2, a4
# 0 "" 2
	.loc 1 145 13 is_stmt 1
 #NO_APP
	ret
.LVL41:
.L28:
	.loc 1 66 13
 #APP
# 66 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr9, a4
# 0 "" 2
	.loc 1 69 13
 #NO_APP
	j	.L34
.L26:
	.loc 1 72 13
 #APP
# 72 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr10, a4
# 0 "" 2
	.loc 1 75 13
 #NO_APP
	j	.L34
.L27:
	.loc 1 78 13
 #APP
# 78 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr11, a4
# 0 "" 2
	.loc 1 81 13
 #NO_APP
	j	.L34
.L24:
	.loc 1 84 13
 #APP
# 84 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr12, a4
# 0 "" 2
	.loc 1 87 13
 #NO_APP
.L35:
	.loc 1 113 5
	.loc 1 148 13
 #APP
# 148 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrr a2, pmpcfg3
# 0 "" 2
.LVL42:
	.loc 1 150 13
	.loc 1 151 13
	.loc 1 151 27 is_stmt 0
 #NO_APP
	li	a4,255
.LVL43:
	sll	a4,a4,a3
	.loc 1 151 20
	not	a4,a4
	.loc 1 151 17
	and	a4,a4,a2
.LVL44:
	.loc 1 152 13 is_stmt 1
	.loc 1 153 13
	.loc 1 152 25 is_stmt 0
	sll	a5,a5,a3
.LVL45:
	.loc 1 152 17
	or	a5,a5,a4
	.loc 1 153 13
 #APP
# 153 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpcfg3, a5
# 0 "" 2
	.loc 1 156 13 is_stmt 1
 #NO_APP
	ret
.LVL46:
.L31:
	.loc 1 90 13
 #APP
# 90 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr13, a4
# 0 "" 2
	.loc 1 93 13
 #NO_APP
	j	.L35
.L29:
	.loc 1 96 13
 #APP
# 96 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr14, a4
# 0 "" 2
	.loc 1 99 13
 #NO_APP
	j	.L35
.L30:
	.loc 1 102 13
 #APP
# 102 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	csrw pmpaddr15, a4
# 0 "" 2
	.loc 1 105 13
 #NO_APP
	j	.L35
.LVL47:
.L37:
.LBE16:
.LBE15:
.LBE17:
.LBE20:
	.loc 1 266 16 is_stmt 0
	li	a0,2
	ret
.LVL48:
.L38:
	.loc 1 268 16
	li	a0,1
	ret
.LVL49:
.L39:
.LBB21:
.LBB18:
	.loc 1 286 21
	li	a0,3
.LVL50:
.LBE18:
.LBE21:
	.loc 1 301 1
	ret
	.cfi_endproc
.LFE239:
	.size	rvpmp_fill_entry, .-rvpmp_fill_entry
	.section	.text.rvpmp_init,"ax",@progbits
	.align	1
	.globl	rvpmp_init
	.type	rvpmp_init, @function
rvpmp_init:
.LFB240:
	.loc 1 304 1 is_stmt 1
	.cfi_startproc
.LVL51:
	.loc 1 305 5
	.loc 1 306 5
	.loc 1 308 5
	.loc 1 304 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s3,12(sp)
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 19, -20
	.loc 1 304 1
	mv	s2,a0
	mv	s1,a1
	.loc 1 308 5
 #APP
# 308 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	fence
# 0 "" 2
	.loc 1 310 5 is_stmt 1
	.loc 1 305 15 is_stmt 0
 #NO_APP
	li	s0,0
	.loc 1 311 15
	li	s3,12
.LVL52:
.L49:
	.loc 1 310 12 is_stmt 1 discriminator 1
	.loc 1 310 5 is_stmt 0 discriminator 1
	bne	s0,s1,.L51
	li	a0,0
.LVL53:
.L50:
	.loc 1 316 5 is_stmt 1
 #APP
# 316 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c" 1
	fence
# 0 "" 2
	.loc 1 318 5
	.loc 1 319 1 is_stmt 0
 #NO_APP
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL54:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL55:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL56:
	lw	s3,12(sp)
	.cfi_restore 19
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL57:
.L51:
	.cfi_restore_state
	.loc 1 311 9 is_stmt 1
	.loc 1 311 15 is_stmt 0
	mv	a0,s2
	mula	a0,s0,s3
	li	a2,0
	mv	a1,s0
	call	rvpmp_fill_entry
.LVL58:
	.loc 1 312 9 is_stmt 1
	.loc 1 312 12 is_stmt 0
	bne	a0,zero,.L50
	.loc 1 310 19 is_stmt 1
	.loc 1 310 20 is_stmt 0
	addi	s0,s0,1
.LVL59:
	j	.L49
	.cfi_endproc
.LFE240:
	.size	rvpmp_init, .-rvpmp_init
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/lhal/include/arch/risc-v/t-head/rv_pmp.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x3cc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF30
	.byte	0xc
	.4byte	.LASF31
	.4byte	.LASF32
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
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
	.4byte	.LASF8
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x54
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x7c
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0x3
	.4byte	.LASF11
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x70
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x5
	.4byte	.LASF33
	.byte	0x7
	.byte	0x4
	.4byte	0x7c
	.byte	0x4
	.byte	0x32
	.byte	0xe
	.4byte	0xdc
	.byte	0x6
	.4byte	.LASF14
	.byte	0
	.byte	0x6
	.4byte	.LASF15
	.byte	0x1
	.byte	0x6
	.4byte	.LASF16
	.byte	0x2
	.byte	0x6
	.4byte	.LASF17
	.byte	0x3
	.byte	0x6
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.4byte	0x7fffffff
	.byte	0
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x39
	.byte	0x3
	.4byte	0xa2
	.byte	0x8
	.4byte	.LASF34
	.byte	0xc
	.byte	0x4
	.byte	0x42
	.byte	0x10
	.4byte	0x11d
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x43
	.byte	0xf
	.4byte	0x8f
	.byte	0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x44
	.byte	0xf
	.4byte	0x8f
	.byte	0x4
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x45
	.byte	0xf
	.4byte	0x8f
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0x46
	.byte	0x3
	.4byte	0xe8
	.byte	0xa
	.4byte	0x11d
	.byte	0xb
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x12f
	.byte	0x13
	.4byte	0xdc
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ab
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x12f
	.byte	0x38
	.4byte	0x1ab
	.4byte	.LLST19
	.byte	0xd
	.string	"n"
	.byte	0x1
	.2byte	0x12f
	.byte	0x49
	.4byte	0x8f
	.4byte	.LLST20
	.byte	0xe
	.string	"i"
	.byte	0x1
	.2byte	0x131
	.byte	0xf
	.4byte	0x8f
	.4byte	.LLST21
	.byte	0xe
	.string	"ret"
	.byte	0x1
	.2byte	0x132
	.byte	0x17
	.4byte	0xdc
	.4byte	.LLST22
	.byte	0xf
	.4byte	.LVL58
	.4byte	0x1b1
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x8
	.byte	0x78
	.byte	0
	.byte	0x83
	.byte	0
	.byte	0x1e
	.byte	0x82
	.byte	0
	.byte	0x22
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x4
	.4byte	0x129
	.byte	0x12
	.4byte	.LASF36
	.byte	0x1
	.byte	0xff
	.byte	0x13
	.4byte	0xdc
	.byte	0x1
	.4byte	0x224
	.byte	0x13
	.4byte	.LASF25
	.byte	0x1
	.byte	0xff
	.byte	0x3e
	.4byte	0x1ab
	.byte	0x14
	.string	"i"
	.byte	0x1
	.byte	0xff
	.byte	0x4f
	.4byte	0x8f
	.byte	0x13
	.4byte	.LASF26
	.byte	0x1
	.byte	0xff
	.byte	0x5c
	.4byte	0x8f
	.byte	0x15
	.string	"am"
	.byte	0x1
	.2byte	0x101
	.byte	0xf
	.4byte	0x8f
	.byte	0x16
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x102
	.byte	0xf
	.4byte	0x8f
	.byte	0x15
	.string	"pa"
	.byte	0x1
	.2byte	0x103
	.byte	0xf
	.4byte	0x8f
	.byte	0x15
	.string	"ret"
	.byte	0x1
	.2byte	0x104
	.byte	0x17
	.4byte	0xdc
	.byte	0x15
	.string	"cfg"
	.byte	0x1
	.2byte	0x105
	.byte	0xe
	.4byte	0x83
	.byte	0
	.byte	0x17
	.4byte	.LASF37
	.byte	0x1
	.byte	0xc4
	.byte	0x11
	.4byte	0x83
	.byte	0x1
	.4byte	0x258
	.byte	0x14
	.string	"e"
	.byte	0x1
	.byte	0xc4
	.byte	0x2a
	.4byte	0x8f
	.byte	0x18
	.string	"cfg"
	.byte	0x1
	.byte	0xc6
	.byte	0xf
	.4byte	0x8f
	.byte	0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0xc7
	.byte	0xe
	.4byte	0x83
	.byte	0
	.byte	0x1a
	.4byte	.LASF38
	.byte	0x1
	.byte	0x4
	.byte	0xd
	.byte	0x1
	.4byte	0x2ab
	.byte	0x14
	.string	"i"
	.byte	0x1
	.byte	0x4
	.byte	0x27
	.4byte	0x8f
	.byte	0x13
	.4byte	.LASF27
	.byte	0x1
	.byte	0x4
	.byte	0x34
	.4byte	0x8f
	.byte	0x14
	.string	"pa"
	.byte	0x1
	.byte	0x4
	.byte	0x44
	.4byte	0x8f
	.byte	0x18
	.string	"cfg"
	.byte	0x1
	.byte	0x6
	.byte	0x18
	.4byte	0x8f
	.byte	0x19
	.4byte	.LASF28
	.byte	0x1
	.byte	0x7
	.byte	0xf
	.4byte	0x8f
	.byte	0x19
	.4byte	.LASF29
	.byte	0x1
	.byte	0x8
	.byte	0xf
	.4byte	0x8f
	.byte	0
	.byte	0x1b
	.4byte	0x1b1
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.byte	0x1
	.byte	0x9c
	.byte	0x1c
	.4byte	0x1c2
	.4byte	.LLST0
	.byte	0x1d
	.4byte	0x1ce
	.byte	0x1
	.byte	0x5b
	.byte	0x1c
	.4byte	0x1d8
	.4byte	.LLST1
	.byte	0x1e
	.4byte	0x1e4
	.byte	0
	.byte	0x1e
	.4byte	0x1f0
	.byte	0
	.byte	0x1e
	.4byte	0x1fd
	.byte	0
	.byte	0x1e
	.4byte	0x209
	.byte	0
	.byte	0x1f
	.4byte	0x216
	.4byte	.LLST2
	.byte	0x20
	.4byte	0x224
	.4byte	.LBB8
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.2byte	0x108
	.byte	0xb
	.4byte	0x32b
	.byte	0x1c
	.4byte	0x235
	.4byte	.LLST3
	.byte	0x21
	.4byte	.Ldebug_ranges0+0
	.byte	0x1f
	.4byte	0x23f
	.4byte	.LLST4
	.byte	0x1f
	.4byte	0x24b
	.4byte	.LLST5
	.byte	0
	.byte	0
	.byte	0x22
	.4byte	0x1b1
	.4byte	.LBB13
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xff
	.byte	0x13
	.byte	0x1c
	.4byte	0x1d8
	.4byte	.LLST6
	.byte	0x1c
	.4byte	0x1ce
	.4byte	.LLST7
	.byte	0x1c
	.4byte	0x1c2
	.4byte	.LLST8
	.byte	0x21
	.4byte	.Ldebug_ranges0+0x20
	.byte	0x1f
	.4byte	0x1e4
	.4byte	.LLST9
	.byte	0x1f
	.4byte	0x1f0
	.4byte	.LLST10
	.byte	0x1f
	.4byte	0x1fd
	.4byte	.LLST11
	.byte	0x1f
	.4byte	0x209
	.4byte	.LLST12
	.byte	0x23
	.4byte	0x216
	.byte	0x24
	.4byte	0x258
	.4byte	.LBB15
	.4byte	.LBE15-.LBB15
	.byte	0x1
	.2byte	0x12a
	.byte	0x9
	.byte	0x1c
	.4byte	0x27b
	.4byte	.LLST13
	.byte	0x1c
	.4byte	0x26f
	.4byte	.LLST14
	.byte	0x1c
	.4byte	0x265
	.4byte	.LLST15
	.byte	0x1f
	.4byte	0x286
	.4byte	.LLST16
	.byte	0x1f
	.4byte	0x292
	.4byte	.LLST17
	.byte	0x1f
	.4byte	0x29e
	.4byte	.LLST18
	.byte	0
	.byte	0
	.byte	0
	.byte	0
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
	.byte	0x3
	.byte	0xe
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
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0x6
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x10
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x15
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
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
	.byte	0
	.byte	0
	.byte	0x1c
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1d
	.byte	0x5
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x1f
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x21
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x22
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
	.byte	0x23
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x24
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
	.byte	0x5
	.byte	0x57
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST19:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL52
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL56
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE240
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LFE240
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL57
	.4byte	.LFE240
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST22:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LFE240
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL19
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL49
	.4byte	.LFE239
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL17
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL49
	.4byte	.LFE239
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x6
	.byte	0x7e
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x5
	.byte	0x7b
	.byte	0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL19
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL18
	.4byte	.LVL27
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x48
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x48
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x48
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x48
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x9
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.byte	0x48
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x48
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x48
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL17
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0xa
	.byte	0x7c
	.byte	0
	.byte	0x31
	.byte	0x25
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x8
	.byte	0x7e
	.byte	0
	.byte	0x7c
	.byte	0
	.byte	0x21
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL41
	.4byte	.LVL43
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL23
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.4byte	.LVL29
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL33
	.4byte	.LVL35
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL39
	.4byte	.LVL41
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.4byte	.LVL41
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x5
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0xd
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x17
	.byte	0x8
	.byte	0xff
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x20
	.byte	0x7c
	.byte	0
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0xd
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x17
	.byte	0x8
	.byte	0xff
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x20
	.byte	0x7c
	.byte	0
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0xd
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x17
	.byte	0x8
	.byte	0xff
	.byte	0x7d
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x20
	.byte	0x7c
	.byte	0
	.byte	0x1a
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x24
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0xd
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x23
	.byte	0x8
	.byte	0x6
	.byte	0x7d
	.byte	0
	.byte	0x24
	.byte	0x7e
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL29
	.2byte	0x5
	.byte	0x7b
	.byte	0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL35
	.2byte	0x5
	.byte	0x7b
	.byte	0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL41
	.2byte	0x5
	.byte	0x7b
	.byte	0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL46
	.2byte	0x5
	.byte	0x7b
	.byte	0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL23
	.4byte	.LVL47
	.2byte	0x3
	.byte	0x8
	.byte	0xff
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
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB19
	.4byte	.LBE19
	.4byte	0
	.4byte	0
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB20
	.4byte	.LBE20
	.4byte	.LBB21
	.4byte	.LBE21
	.4byte	0
	.4byte	0
	.4byte	.LFB239
	.4byte	.LFE239
	.4byte	.LFB240
	.4byte	.LFE240
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF16:
	.string	"PMP_STATUS_DENIED"
.LASF30:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF12:
	.string	"uintptr_t"
.LASF9:
	.string	"__uintptr_t"
.LASF31:
	.string	"./drivers/lhal/include/arch/risc-v/t-head/rv_pmp.c"
.LASF3:
	.string	"short unsigned int"
.LASF18:
	.string	"PMP_STATUS_UNSUPPORTED"
.LASF2:
	.string	"short int"
.LASF25:
	.string	"entry"
.LASF14:
	.string	"PMP_STATUS_OK"
.LASF19:
	.string	"PMP_STATUS_MAX"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"rvpmp_init"
.LASF27:
	.string	"attr"
.LASF36:
	.string	"rvpmp_fill_entry"
.LASF15:
	.string	"PMP_STATUS_BUSY"
.LASF33:
	.string	"_pmp_status_type_"
.LASF5:
	.string	"long unsigned int"
.LASF8:
	.string	"__uint32_t"
.LASF17:
	.string	"PMP_STATUS_INVALID"
.LASF20:
	.string	"pmp_status_type_e"
.LASF10:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF32:
	.string	"./examples/peripherals/i2c/i2c_rtc_module/build/build_out/drivers/lhal"
.LASF38:
	.string	"rvpmp_reg_write"
.LASF23:
	.string	"entry_flag"
.LASF26:
	.string	"force"
.LASF6:
	.string	"long long int"
.LASF29:
	.string	"mask"
.LASF21:
	.string	"entry_pa_base"
.LASF28:
	.string	"offset"
.LASF34:
	.string	"_pmp_config_entry"
.LASF24:
	.string	"pmp_config_entry_t"
.LASF37:
	.string	"pmp_get_config"
.LASF11:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF0:
	.string	"signed char"
.LASF22:
	.string	"entry_pa_length"
	.ident	"GCC: (GNU) 10.4.0"
