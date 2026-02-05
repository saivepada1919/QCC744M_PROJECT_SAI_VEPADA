	.file	"qcc743_common.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.tcm_code../drivers/soc/qcc743/std/src/qcc743_common.c66,"ax",@progbits
	.align	1
	.weak	ASM_Delay_Us
	.type	ASM_Delay_Us, @function
ASM_Delay_Us:
.LFB242:
	.file 1 "./drivers/soc/qcc743/std/src/qcc743_common.c"
	.loc 1 67 1
	.cfi_startproc
.LVL0:
	.loc 1 68 5
	.loc 1 67 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	.loc 1 68 23
	sw	a2,4(sp)
	.loc 1 69 5 is_stmt 1
	.loc 1 69 23 is_stmt 0
	sw	zero,8(sp)
	.loc 1 70 5 is_stmt 1
	.loc 1 76 8 is_stmt 0
	li	a3,999424
	.loc 1 70 23
	sw	zero,12(sp)
	.loc 1 76 5 is_stmt 1
	.loc 1 76 8 is_stmt 0
	addi	a3,a3,575
	bleu	a0,a3,.L2
	.loc 1 78 9 is_stmt 1
	.loc 1 78 22 is_stmt 0
	li	a3,98304
	addi	a3,a3,1696
	divu	a0,a0,a3
.LVL1:
	.loc 1 80 25
	li	a4,10
	.loc 1 78 15
	sw	a0,8(sp)
	.loc 1 79 9 is_stmt 1
	.loc 1 79 24 is_stmt 0
	lw	a5,8(sp)
	mul	a5,a5,a1
	.loc 1 79 16
	sw	a5,12(sp)
	.loc 1 80 9 is_stmt 1
	.loc 1 80 25 is_stmt 0
	lw	a5,12(sp)
	divu	a5,a5,a4
.L9:
	.loc 1 87 16
	sw	a5,12(sp)
	.loc 1 88 9 is_stmt 1
	.loc 1 88 25 is_stmt 0
	lw	a5,12(sp)
	lw	a4,4(sp)
	divu	a5,a5,a4
	.loc 1 88 16
	sw	a5,12(sp)
	.loc 1 92 5 is_stmt 1
	.loc 1 92 9 is_stmt 0
	lw	a5,12(sp)
	.loc 1 92 8
	beq	a5,zero,.L1
	.loc 1 96 5 is_stmt 1
	lw	a3,12(sp)
 #APP
# 96 "/home/sai/QCCSDK-QCC74x/drivers/soc/qcc743/std/src/qcc743_common.c" 1
	mv       a4,a3
	li       a5,0x0
	nop
	nop
	nop
	.align 4
	1  :
beq      a5,a4,2f
	addi     a5,a5,0x1
	j        1b
	nop
	nop
	2   :
	nop

# 0 "" 2
 #NO_APP
.L1:
	.loc 1 115 1 is_stmt 0
	addi	sp,sp,16
	.cfi_remember_state
	.cfi_def_cfa_offset 0
	jr	ra
.LVL2:
.L2:
	.cfi_restore_state
	.loc 1 85 9 is_stmt 1
	.loc 1 85 22 is_stmt 0
	li	a3,1000
	divu	a0,a0,a3
.LVL3:
	.loc 1 85 15
	sw	a0,8(sp)
	.loc 1 86 9 is_stmt 1
	.loc 1 86 24 is_stmt 0
	lw	a4,8(sp)
	mul	a4,a4,a1
	.loc 1 86 16
	sw	a4,12(sp)
	.loc 1 87 9 is_stmt 1
	.loc 1 87 25 is_stmt 0
	lw	a5,12(sp)
	divu	a5,a5,a3
	j	.L9
	.cfi_endproc
.LFE242:
	.size	ASM_Delay_Us, .-ASM_Delay_Us
	.section	.tcm_code../drivers/soc/qcc743/std/src/qcc743_common.c127,"ax",@progbits
	.align	1
	.weak	arch_delay_us
	.type	arch_delay_us, @function
arch_delay_us:
.LFB243:
	.loc 1 128 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 129 5
	.loc 1 130 5
	.loc 1 133 5
	.loc 1 134 5
	.loc 1 138 5
.LBB6:
.LBB7:
	.file 2 "./drivers/lhal/include/arch/risc-v/t-head/Core/Include/csi_rv32_gcc.h"
	.loc 2 183 5
	.loc 2 185 5
.LBE7:
.LBE6:
	.loc 1 128 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	.cfi_offset 1, -4
	.loc 1 128 1
	mv	a1,a0
.LBB9:
.LBB8:
	.loc 2 185 5
 #APP
# 185 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/Core/Include/csi_rv32_gcc.h" 1
	csrr a5, 0x7c1
# 0 "" 2
.LVL5:
	.loc 2 187 5 is_stmt 1
 #NO_APP
.LBE8:
.LBE9:
	.loc 1 139 5
.LBB10:
.LBB11:
	.loc 2 183 5
	.loc 2 185 5
 #APP
# 185 "/home/sai/QCCSDK-QCC74x/drivers/lhal/include/arch/risc-v/t-head/Core/Include/csi_rv32_gcc.h" 1
	csrr a2, 0x7c1
# 0 "" 2
.LVL6:
	.loc 2 187 5
 #NO_APP
.LBE11:
.LBE10:
	.loc 1 138 14 is_stmt 0
	andi	a4,a5,1
.LVL7:
	.loc 1 139 47
	srli	a2,a2,1
.LVL8:
	.loc 1 141 5 is_stmt 1
	.loc 1 141 7 is_stmt 0
	beq	a4,zero,.L11
	.loc 1 139 14 discriminator 1
	andi	a2,a2,1
.LVL9:
	.loc 1 141 17 discriminator 1
	li	a5,4
	sub	a2,a5,a2
.LVL10:
.L12:
	.loc 1 159 24
	li	a0,1
.LVL11:
	sw	a1,12(sp)
	sw	a2,8(sp)
.LVL12:
	.loc 1 149 5 is_stmt 1
	.loc 1 159 13
	.loc 1 159 24 is_stmt 0
	call	Clock_System_Clock_Get
.LVL13:
	.loc 1 168 5 is_stmt 1
	.loc 1 168 36 is_stmt 0
	lw	a2,8(sp)
	lw	a1,12(sp)
	bne	a0,zero,.L13
	li	a0,32002048
.LVL14:
	addi	a0,a0,-2048
.L13:
.LVL15:
	.loc 1 170 5 is_stmt 1 discriminator 4
	.loc 1 171 1 is_stmt 0 discriminator 4
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL16:
	.loc 1 170 5 discriminator 4
	tail	ASM_Delay_Us
.LVL17:
.L11:
	.cfi_restore_state
	.loc 1 145 11 is_stmt 1
	.loc 1 145 24 is_stmt 0
	or	a2,a2,a5
.LVL18:
	andi	a5,a2,1
	.loc 1 130 14
	li	a2,3
	.loc 1 145 13
	bne	a5,zero,.L12
	.loc 1 146 18
	li	a2,24
	j	.L12
	.cfi_endproc
.LFE243:
	.size	arch_delay_us, .-arch_delay_us
	.section	.tcm_code../drivers/soc/qcc743/std/src/qcc743_common.c182,"ax",@progbits
	.align	1
	.weak	arch_delay_ms
	.type	arch_delay_ms, @function
arch_delay_ms:
.LFB244:
	.loc 1 183 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 184 5
	.loc 1 185 5
	.loc 1 187 5
	.loc 1 183 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	ra,12(sp)
	sw	s1,4(sp)
	sw	s2,0(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.loc 1 187 8
	li	a5,1023
	.loc 1 183 1
	mv	s0,a0
	.loc 1 187 8
	bleu	a0,a5,.L17
	.loc 1 189 30
	srli	s2,a0,10
	.loc 1 189 16
	li	s1,0
.LVL20:
.L18:
	.loc 1 190 13 is_stmt 1 discriminator 3
	li	a0,1024000
	.loc 1 189 40 is_stmt 0 discriminator 3
	addi	s1,s1,1
.LVL21:
	.loc 1 190 13 discriminator 3
	call	arch_delay_us
.LVL22:
	.loc 1 189 39 is_stmt 1 discriminator 3
	.loc 1 189 21 discriminator 3
	.loc 1 189 9 is_stmt 0 discriminator 3
	bne	s2,s1,.L18
.LVL23:
.L17:
	.loc 1 194 5 is_stmt 1
	.loc 1 194 11 is_stmt 0
	andi	s0,s0,1023
.LVL24:
	.loc 1 196 5 is_stmt 1
	.loc 1 196 8 is_stmt 0
	beq	s0,zero,.L16
	.loc 1 198 9 is_stmt 1
	li	a0,1000
	mul	a0,s0,a0
	.loc 1 200 1 is_stmt 0
	lw	s0,8(sp)
	.cfi_remember_state
	.cfi_restore 8
.LVL25:
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	.loc 1 198 9
	tail	arch_delay_us
.LVL26:
.L16:
	.cfi_restore_state
	.loc 1 200 1
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL27:
	lw	s1,4(sp)
	.cfi_restore 9
	lw	s2,0(sp)
	.cfi_restore 18
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE244:
	.size	arch_delay_ms, .-arch_delay_ms
	.text
.Letext0:
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./drivers/soc/qcc743/std/include/qcc743_clock.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x296
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF33
	.byte	0xc
	.4byte	.LASF34
	.4byte	.LASF35
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.byte	0x2
	.byte	0x1
	.byte	0x6
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
	.4byte	.LASF9
	.byte	0x3
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x5
	.4byte	0x77
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x5
	.byte	0x1e
	.byte	0xe
	.4byte	0xce
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.byte	0x7
	.4byte	.LASF13
	.byte	0x1
	.byte	0x7
	.4byte	.LASF14
	.byte	0x2
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0x7
	.4byte	.LASF16
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x7
	.4byte	.LASF18
	.byte	0x6
	.byte	0x7
	.4byte	.LASF19
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	.LASF21
	.byte	0x1
	.byte	0xb6
	.byte	0x62
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.byte	0x1
	.byte	0x9c
	.4byte	0x142
	.byte	0x9
	.string	"cnt"
	.byte	0x1
	.byte	0xb6
	.byte	0x79
	.4byte	0x77
	.4byte	.LLST6
	.byte	0xa
	.string	"i"
	.byte	0x1
	.byte	0xb8
	.byte	0xe
	.4byte	0x77
	.4byte	.LLST7
	.byte	0xb
	.4byte	.LASF20
	.byte	0x1
	.byte	0xb9
	.byte	0xe
	.4byte	0x77
	.4byte	.LLST8
	.byte	0xc
	.4byte	.LVL22
	.4byte	0x142
	.4byte	0x128
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x4
	.byte	0x8
	.byte	0xfa
	.byte	0x3c
	.byte	0x24
	.byte	0
	.byte	0xe
	.4byte	.LVL26
	.4byte	0x142
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0xb
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0x3ff
	.byte	0x1a
	.byte	0xa
	.2byte	0x3e8
	.byte	0x1e
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	.LASF22
	.byte	0x1
	.byte	0x7f
	.byte	0x62
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x1
	.byte	0x9c
	.4byte	0x1ff
	.byte	0x9
	.string	"cnt"
	.byte	0x1
	.byte	0x7f
	.byte	0x79
	.4byte	0x77
	.4byte	.LLST1
	.byte	0xb
	.4byte	.LASF23
	.byte	0x1
	.byte	0x81
	.byte	0xe
	.4byte	0x77
	.4byte	.LLST2
	.byte	0xb
	.4byte	.LASF24
	.byte	0x1
	.byte	0x82
	.byte	0xe
	.4byte	0x77
	.4byte	.LLST3
	.byte	0xb
	.4byte	.LASF25
	.byte	0x1
	.byte	0x85
	.byte	0xe
	.4byte	0x77
	.4byte	.LLST4
	.byte	0xb
	.4byte	.LASF26
	.byte	0x1
	.byte	0x86
	.byte	0xe
	.4byte	0x77
	.4byte	.LLST5
	.byte	0xf
	.4byte	0x26f
	.4byte	.LBB6
	.4byte	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x8a
	.byte	0x11
	.4byte	0x1c8
	.byte	0x10
	.4byte	.Ldebug_ranges0+0
	.byte	0x11
	.4byte	0x280
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	0x26f
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x1
	.byte	0x8b
	.byte	0x11
	.4byte	0x1e2
	.byte	0x11
	.4byte	0x280
	.byte	0
	.byte	0xc
	.4byte	.LVL13
	.4byte	0x28d
	.4byte	0x1f5
	.byte	0xd
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0x13
	.4byte	.LVL17
	.4byte	0x1ff
	.byte	0
	.byte	0x8
	.4byte	.LASF27
	.byte	0x1
	.byte	0x42
	.byte	0x61
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0x26f
	.byte	0x14
	.4byte	.LASF28
	.byte	0x1
	.byte	0x42
	.byte	0x77
	.4byte	0x77
	.4byte	.LLST0
	.byte	0x15
	.string	"cnt"
	.byte	0x1
	.byte	0x42
	.byte	0x86
	.4byte	0x77
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.4byte	.LASF29
	.byte	0x1
	.byte	0x42
	.byte	0x94
	.4byte	0x77
	.byte	0x1
	.byte	0x5c
	.byte	0x17
	.4byte	.LASF30
	.byte	0x1
	.byte	0x44
	.byte	0x17
	.4byte	0x83
	.byte	0x2
	.byte	0x91
	.byte	0x74
	.byte	0x17
	.4byte	.LASF31
	.byte	0x1
	.byte	0x45
	.byte	0x17
	.4byte	0x83
	.byte	0x2
	.byte	0x91
	.byte	0x78
	.byte	0x17
	.4byte	.LASF32
	.byte	0x1
	.byte	0x46
	.byte	0x17
	.4byte	0x83
	.byte	0x2
	.byte	0x91
	.byte	0x7c
	.byte	0
	.byte	0x18
	.4byte	.LASF36
	.byte	0x2
	.byte	0xb5
	.byte	0x37
	.4byte	0x77
	.byte	0x3
	.4byte	0x28d
	.byte	0x19
	.4byte	.LASF37
	.byte	0x2
	.byte	0xb7
	.byte	0xe
	.4byte	0x77
	.byte	0
	.byte	0x1a
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x5
	.byte	0x85
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
	.byte	0x35
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x6
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
	.byte	0x7
	.byte	0x28
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x1c
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
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
	.byte	0xf
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
	.byte	0x10
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x11
	.byte	0x34
	.byte	0
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
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
	.byte	0x13
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
	.byte	0x17
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x17
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
	.byte	0x18
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
.LLST6:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL24
	.4byte	.LFE244
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x3
	.byte	0x79
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL19
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x8
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0x3ff
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL27
	.4byte	.LFE244
	.2byte	0x8
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xa
	.2byte	0x3ff
	.byte	0x1a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL4
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL13-1
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	.LVL17
	.4byte	.LFE243
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL13-1
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x91
	.byte	0x68
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x2
	.byte	0x72
	.byte	0x68
	.4byte	.LVL17
	.4byte	.LFE243
	.2byte	0x2
	.byte	0x33
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL7
	.2byte	0x5
	.byte	0x7f
	.byte	0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL17
	.4byte	.LFE243
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x5
	.byte	0x7c
	.byte	0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x5
	.byte	0x7c
	.byte	0
	.byte	0x31
	.byte	0x1a
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
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LFE242
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB243
	.4byte	.LFE243
	.4byte	.LFB244
	.4byte	.LFE244
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF33:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF18:
	.string	"QCC74x_SYSTEM_CLOCK_XTAL"
.LASF12:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_ROOT_CLK"
.LASF20:
	.string	"count"
.LASF19:
	.string	"QCC74x_SYSTEM_CLOCK_MAX"
.LASF13:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_CLK"
.LASF15:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_PBCLK"
.LASF7:
	.string	"long long unsigned int"
.LASF30:
	.string	"divVal"
.LASF0:
	.string	"unsigned char"
.LASF5:
	.string	"long unsigned int"
.LASF3:
	.string	"short unsigned int"
.LASF14:
	.string	"QCC74x_SYSTEM_CLOCK_MCU_BCLK"
.LASF38:
	.string	"Clock_System_Clock_Get"
.LASF9:
	.string	"__uint32_t"
.LASF35:
	.string	"./examples/peripherals/gpio/gpio_dht11_module/build/build_out/drivers/soc/qcc743/std"
.LASF21:
	.string	"arch_delay_ms"
.LASF8:
	.string	"unsigned int"
.LASF32:
	.string	"cycNum"
.LASF24:
	.string	"loopTick"
.LASF37:
	.string	"result"
.LASF26:
	.string	"dCacheEn"
.LASF36:
	.string	"__get_MHCR"
.LASF31:
	.string	"speed"
.LASF6:
	.string	"long long int"
.LASF29:
	.string	"loopT"
.LASF27:
	.string	"ASM_Delay_Us"
.LASF22:
	.string	"arch_delay_us"
.LASF25:
	.string	"iCacheEn"
.LASF23:
	.string	"coreFreq"
.LASF2:
	.string	"short int"
.LASF16:
	.string	"QCC74x_SYSTEM_CLOCK_F32K"
.LASF10:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF11:
	.string	"char"
.LASF28:
	.string	"core"
.LASF1:
	.string	"signed char"
.LASF17:
	.string	"QCC74x_SYSTEM_CLOCK_XCLK"
.LASF34:
	.string	"./drivers/soc/qcc743/std/src/qcc743_common.c"
	.ident	"GCC: (GNU) 10.4.0"
