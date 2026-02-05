	.file	"qcc74x_block_pool.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_block_pool_create,"ax",@progbits
	.align	1
	.globl	qcc74x_block_pool_create
	.type	qcc74x_block_pool_create, @function
qcc74x_block_pool_create:
.LFB3:
	.file 1 "./components/utils/qcc74x_block_pool/qcc74x_block_pool.c"
	.loc 1 27 1
	.cfi_startproc
.LVL0:
	.loc 1 28 5
	.loc 1 29 5
	.loc 1 30 5
	.loc 1 33 5
	.loc 1 34 5
	.loc 1 35 5
	.loc 1 37 5
	.loc 1 37 30 is_stmt 0
	li	a7,1
	sll	a7,a7,a2
	.loc 1 37 44
	addi	t1,a7,-1
.LVL1:
	.loc 1 38 5 is_stmt 1
	.loc 1 39 5
	.loc 1 41 5
	.loc 1 41 18 is_stmt 0
	and	a5,t1,a1
	.loc 1 41 8
	beq	a5,zero,.L2
	.loc 1 42 9 is_stmt 1
	.loc 1 42 33 is_stmt 0
	neg	a5,a7
	.loc 1 42 30
	and	a1,a5,a1
.LVL2:
	.loc 1 42 18
	add	a1,a7,a1
.LVL3:
.L2:
	.loc 1 45 5 is_stmt 1
	.loc 1 45 45 is_stmt 0
	addi	t3,a1,4
	.loc 1 45 15
	divu	a6,a4,t3
.LVL4:
	.loc 1 47 5 is_stmt 1
	.loc 1 48 16 is_stmt 0
	li	a5,-1
	.loc 1 47 8
	bgtu	t3,a4,.L1
	.loc 1 52 5 is_stmt 1
	.loc 1 52 13 is_stmt 0
	addsl	a5, a3, a6, 2
.LVL5:
	.loc 1 55 5 is_stmt 1
	.loc 1 55 17 is_stmt 0
	and	t3,t1,a5
	.loc 1 55 8
	beq	t3,zero,.L4
	.loc 1 56 9 is_stmt 1
	.loc 1 56 31 is_stmt 0
	neg	t3,a7
	.loc 1 56 28
	and	a5,t3,a5
.LVL6:
	.loc 1 56 17
	add	a5,a7,a5
.LVL7:
.L4:
	.loc 1 60 5 is_stmt 1
	.loc 1 60 8 is_stmt 0
	mv	t3,a5
	.loc 1 60 68
	add	a4,a3,a4
.LVL8:
	.loc 1 60 8
	mula	t3,a1,a6
	bleu	t3,a4,.L5
	.loc 1 62 9 is_stmt 1
	.loc 1 62 19 is_stmt 0
	addi	a6,a6,-1
.LVL9:
	.loc 1 63 9 is_stmt 1
	.loc 1 48 16 is_stmt 0
	li	a5,-1
.LVL10:
	.loc 1 63 12
	beq	a6,zero,.L1
	.loc 1 68 9 is_stmt 1
	.loc 1 68 17 is_stmt 0
	addsl	a5, a3, a6, 2
.LVL11:
	.loc 1 71 9 is_stmt 1
	.loc 1 71 21 is_stmt 0
	and	t1,t1,a5
.LVL12:
	.loc 1 71 12
	beq	t1,zero,.L5
	.loc 1 72 13 is_stmt 1
	.loc 1 72 35 is_stmt 0
	neg	a4,a7
	.loc 1 72 32
	and	a5,a4,a5
.LVL13:
	.loc 1 72 21
	add	a5,a7,a5
.LVL14:
.L5:
	.loc 1 77 5 is_stmt 1
.LBB2:
	.loc 1 77 10
	addi	a4,a3,4
	.loc 1 77 19 is_stmt 0
	li	a7,0
.LVL15:
.L6:
	.loc 1 77 26 is_stmt 1 discriminator 1
	.loc 1 77 5 is_stmt 0 discriminator 1
	bne	a6,a7,.L7
.LBE2:
	.loc 1 82 5 is_stmt 1
	.loc 1 82 25 is_stmt 0
	addsl	a4, a3, a6, 2
	.loc 1 82 41
	sw	zero,-4(a4)
	.loc 1 85 5 is_stmt 1
	.loc 1 91 24 is_stmt 0
	sw	a5,8(a0)
	.loc 1 85 25
	sw	a3,0(a0)
	.loc 1 88 5 is_stmt 1
	.loc 1 88 25 is_stmt 0
	sw	a3,4(a0)
	.loc 1 91 5 is_stmt 1
	.loc 1 94 5
	.loc 1 94 24 is_stmt 0
	sw	a1,12(a0)
	.loc 1 96 5 is_stmt 1
	.loc 1 96 25 is_stmt 0
	sw	a2,16(a0)
	.loc 1 98 5 is_stmt 1
	.loc 1 98 25 is_stmt 0
	sw	a6,20(a0)
	.loc 1 100 5 is_stmt 1
	.loc 1 100 24 is_stmt 0
	sw	a6,24(a0)
	.loc 1 102 5 is_stmt 1
	.loc 1 102 23 is_stmt 0
	sw	zero,28(a0)
	.loc 1 103 5 is_stmt 1
	.loc 1 103 23 is_stmt 0
	sw	zero,32(a0)
	.loc 1 104 5 is_stmt 1
	.loc 1 104 23 is_stmt 0
	sw	zero,36(a0)
	.loc 1 105 5 is_stmt 1
	.loc 1 105 23 is_stmt 0
	sw	zero,40(a0)
	.loc 1 107 5 is_stmt 1
	.loc 1 107 12 is_stmt 0
	li	a5,0
.LVL16:
.L1:
	.loc 1 108 1
	mv	a0,a5
.LVL17:
	ret
.LVL18:
.L7:
.LBB3:
	.loc 1 78 9 is_stmt 1 discriminator 3
	.loc 1 78 33 is_stmt 0 discriminator 3
	sw	a4,-4(a4)
	.loc 1 77 41 is_stmt 1 discriminator 3
	.loc 1 78 56 is_stmt 0 discriminator 3
	addi	a7,a7,1
.LVL19:
	addi	a4,a4,4
	j	.L6
.LBE3:
	.cfi_endproc
.LFE3:
	.size	qcc74x_block_pool_create, .-qcc74x_block_pool_create
	.section	.text.qcc74x_block_pool_delete,"ax",@progbits
	.align	1
	.globl	qcc74x_block_pool_delete
	.type	qcc74x_block_pool_delete, @function
qcc74x_block_pool_delete:
.LFB4:
	.loc 1 116 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 117 5
	.loc 1 119 5
	.loc 1 119 8 is_stmt 0
	lw	a4,20(a0)
	lw	a5,24(a0)
	bne	a4,a5,.L21
	.loc 1 123 5 is_stmt 1
	.loc 1 123 25 is_stmt 0
	sw	zero,0(a0)
	.loc 1 124 5 is_stmt 1
	.loc 1 124 25 is_stmt 0
	sw	zero,4(a0)
	.loc 1 125 5 is_stmt 1
	.loc 1 125 24 is_stmt 0
	sw	zero,8(a0)
	.loc 1 126 5 is_stmt 1
	.loc 1 126 24 is_stmt 0
	sw	zero,12(a0)
	.loc 1 127 5 is_stmt 1
	.loc 1 127 25 is_stmt 0
	sw	zero,16(a0)
	.loc 1 128 5 is_stmt 1
	.loc 1 128 25 is_stmt 0
	sw	zero,20(a0)
	.loc 1 129 5 is_stmt 1
	.loc 1 129 24 is_stmt 0
	sw	zero,24(a0)
	.loc 1 130 5 is_stmt 1
	.loc 1 130 23 is_stmt 0
	sw	zero,28(a0)
	.loc 1 131 5 is_stmt 1
	.loc 1 131 23 is_stmt 0
	sw	zero,32(a0)
	.loc 1 132 5 is_stmt 1
	.loc 1 132 23 is_stmt 0
	sw	zero,36(a0)
	.loc 1 133 5 is_stmt 1
	.loc 1 133 23 is_stmt 0
	sw	zero,40(a0)
	.loc 1 135 5 is_stmt 1
	.loc 1 135 12 is_stmt 0
	li	a0,0
.LVL21:
	ret
.LVL22:
.L21:
	.loc 1 120 16
	li	a0,-1
.LVL23:
	.loc 1 136 1
	ret
	.cfi_endproc
.LFE4:
	.size	qcc74x_block_pool_delete, .-qcc74x_block_pool_delete
	.section	.text.qcc74x_block_pool_add_mtx,"ax",@progbits
	.align	1
	.globl	qcc74x_block_pool_add_mtx
	.type	qcc74x_block_pool_add_mtx, @function
qcc74x_block_pool_add_mtx:
.LFB5:
	.loc 1 146 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 147 5
	.loc 1 149 5
	.loc 1 149 8 is_stmt 0
	beq	a1,zero,.L23
	.loc 1 149 22 discriminator 1
	bne	a2,zero,.L24
.L23:
	.loc 1 150 9 is_stmt 1
	.loc 1 150 27 is_stmt 0
	sw	zero,28(a0)
	.loc 1 151 9 is_stmt 1
	.loc 1 151 27 is_stmt 0
	sw	zero,32(a0)
.L25:
	.loc 1 157 5 is_stmt 1
	.loc 1 158 1 is_stmt 0
	li	a0,0
.LVL25:
	ret
.LVL26:
.L24:
	.loc 1 153 9 is_stmt 1
	.loc 1 153 27 is_stmt 0
	sw	a1,28(a0)
	.loc 1 154 9 is_stmt 1
	.loc 1 154 27 is_stmt 0
	sw	a2,32(a0)
	j	.L25
	.cfi_endproc
.LFE5:
	.size	qcc74x_block_pool_add_mtx, .-qcc74x_block_pool_add_mtx
	.section	.text.qcc74x_block_pool_add_sem,"ax",@progbits
	.align	1
	.globl	qcc74x_block_pool_add_sem
	.type	qcc74x_block_pool_add_sem, @function
qcc74x_block_pool_add_sem:
.LFB6:
	.loc 1 168 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 169 5
	.loc 1 171 5
	.loc 1 171 8 is_stmt 0
	beq	a1,zero,.L30
	.loc 1 171 22 discriminator 1
	bne	a2,zero,.L31
.L30:
	.loc 1 172 9 is_stmt 1
	.loc 1 172 27 is_stmt 0
	sw	zero,36(a0)
	.loc 1 173 9 is_stmt 1
	.loc 1 173 27 is_stmt 0
	sw	zero,40(a0)
.L32:
	.loc 1 179 5 is_stmt 1
	.loc 1 180 1 is_stmt 0
	li	a0,0
.LVL28:
	ret
.LVL29:
.L31:
	.loc 1 175 9 is_stmt 1
	.loc 1 175 27 is_stmt 0
	sw	a1,36(a0)
	.loc 1 176 9 is_stmt 1
	.loc 1 176 27 is_stmt 0
	sw	a2,40(a0)
	j	.L32
	.cfi_endproc
.LFE6:
	.size	qcc74x_block_pool_add_sem, .-qcc74x_block_pool_add_sem
	.section	.text.qcc74x_block_pool_alloc,"ax",@progbits
	.align	1
	.globl	qcc74x_block_pool_alloc
	.type	qcc74x_block_pool_alloc, @function
qcc74x_block_pool_alloc:
.LFB7:
	.loc 1 190 1 is_stmt 1
	.cfi_startproc
.LVL30:
	.loc 1 191 5
	.loc 1 192 5
	.loc 1 194 5
	.loc 1 195 5
	.loc 1 197 5
	.loc 1 197 17 is_stmt 0
	lw	a5,36(a0)
	.loc 1 190 1
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	sw	s1,4(sp)
	sw	ra,12(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 190 1
	mv	s0,a0
	mv	s1,a1
	.loc 1 197 8
	bne	a5,zero,.L37
.LVL31:
.L40:
	.loc 1 205 5 is_stmt 1
	.loc 1 205 8 is_stmt 0
	lw	a5,24(s0)
	bne	a5,zero,.L56
.L58:
	.loc 1 213 13 is_stmt 1
	.loc 1 213 20 is_stmt 0
	li	a0,-1
.L36:
	.loc 1 238 1
	lw	ra,12(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL32:
	lw	s1,4(sp)
	.cfi_restore 9
.LVL33:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
.LVL34:
.L37:
	.cfi_restore_state
	.loc 1 199 9 is_stmt 1
	.loc 1 199 13 is_stmt 0
	mv	a0,a2
	jalr	a5
.LVL35:
	.loc 1 199 12
	beq	a0,zero,.L40
	j	.L58
.L56:
	.loc 1 210 5 is_stmt 1
	.loc 1 210 17 is_stmt 0
	lw	a5,28(s0)
	.loc 1 210 8
	beq	a5,zero,.L42
	.loc 1 211 9 is_stmt 1
	.loc 1 211 13 is_stmt 0
	li	a0,100
	jalr	a5
.LVL36:
	.loc 1 211 12
	beq	a0,zero,.L42
	.loc 1 212 13 is_stmt 1
	lw	a5,40(s0)
	jalr	a5
.LVL37:
	j	.L58
.L42:
	.loc 1 218 5
	.loc 1 218 10 is_stmt 0
	lw	a5,0(s0)
.LVL38:
	.loc 1 221 5 is_stmt 1
	.loc 1 227 63 is_stmt 0
	lw	a3,12(s0)
	.loc 1 237 12
	li	a0,0
	.loc 1 221 27
	lw	a4,0(a5)
	.loc 1 221 25
	sw	a4,0(s0)
	.loc 1 224 5 is_stmt 1
.LVL39:
	.loc 1 227 5
	.loc 1 224 30 is_stmt 0
	lw	a4,4(s0)
	sub	a5,a5,a4
.LVL40:
	.loc 1 227 54
	lw	a4,8(s0)
	.loc 1 224 11
	srli	a5,a5,2
.LVL41:
	.loc 1 227 54
	mula	a4,a5,a3
	.loc 1 230 24
	lw	a5,24(s0)
.LVL42:
	addi	a5,a5,-1
	.loc 1 227 11
	sw	a4,0(s1)
	.loc 1 230 5 is_stmt 1
	.loc 1 230 24 is_stmt 0
	sw	a5,24(s0)
	.loc 1 233 5 is_stmt 1
	.loc 1 233 17 is_stmt 0
	lw	a5,32(s0)
	.loc 1 233 8
	beq	a5,zero,.L36
	.loc 1 234 9 is_stmt 1
	jalr	a5
.LVL43:
	.loc 1 237 12 is_stmt 0
	li	a0,0
	j	.L36
	.cfi_endproc
.LFE7:
	.size	qcc74x_block_pool_alloc, .-qcc74x_block_pool_alloc
	.section	.text.qcc74x_block_pool_free,"ax",@progbits
	.align	1
	.globl	qcc74x_block_pool_free
	.type	qcc74x_block_pool_free, @function
qcc74x_block_pool_free:
.LFB8:
	.loc 1 247 1 is_stmt 1
	.cfi_startproc
.LVL44:
	.loc 1 248 5
	.loc 1 249 5
	.loc 1 251 5
	.loc 1 252 5
	.loc 1 254 5
	.loc 1 254 17 is_stmt 0
	lw	a5,28(a0)
	.loc 1 247 1
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.loc 1 247 1
	mv	s0,a0
	.loc 1 254 8
	bne	a5,zero,.L60
.LVL45:
.L63:
	.loc 1 261 5 is_stmt 1
	.loc 1 261 17 is_stmt 0
	lw	a4,20(s0)
	.loc 1 261 40
	lw	a5,24(s0)
	.loc 1 261 8
	bne	a4,a5,.L73
.L61:
	.loc 1 256 20
	li	a0,-1
.L59:
	.loc 1 295 1
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL46:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL47:
.L60:
	.cfi_restore_state
	.loc 1 255 13
	li	a0,100
	sw	a1,12(sp)
	.loc 1 255 9 is_stmt 1
	.loc 1 255 13 is_stmt 0
	jalr	a5
.LVL48:
	.loc 1 255 12
	lw	a1,12(sp)
	beq	a0,zero,.L63
	j	.L61
.LVL49:
.L73:
	.loc 1 267 5 is_stmt 1
	.loc 1 267 30 is_stmt 0
	lw	a3,8(s0)
	sub	a1,a1,a3
	.loc 1 267 11
	lw	a3,12(s0)
	divu	a1,a1,a3
.LVL50:
	.loc 1 270 5 is_stmt 1
	.loc 1 270 8 is_stmt 0
	bltu	a4,a1,.L61
	.loc 1 275 5 is_stmt 1
	.loc 1 275 54 is_stmt 0
	lw	a4,4(s0)
	.loc 1 278 32
	lw	a2,0(s0)
	.loc 1 284 24
	addi	a5,a5,1
	.loc 1 275 54
	addsl	a3, a4, a1, 2
.LVL51:
	.loc 1 278 5 is_stmt 1
	.loc 1 278 22 is_stmt 0
	srw	a2,a4,a1,2
	.loc 1 281 5 is_stmt 1
	.loc 1 284 24 is_stmt 0
	sw	a5,24(s0)
	.loc 1 286 17
	lw	a5,32(s0)
	.loc 1 281 25
	sw	a3,0(s0)
	.loc 1 284 5 is_stmt 1
	.loc 1 286 5
	.loc 1 286 8 is_stmt 0
	beq	a5,zero,.L65
	.loc 1 287 9 is_stmt 1
	jalr	a5
.LVL52:
.L65:
	.loc 1 290 5
	.loc 1 290 17 is_stmt 0
	lw	a5,40(s0)
	.loc 1 294 12
	li	a0,0
	.loc 1 290 8
	beq	a5,zero,.L59
	.loc 1 291 9 is_stmt 1
	jalr	a5
.LVL53:
	.loc 1 294 12 is_stmt 0
	li	a0,0
	j	.L59
	.cfi_endproc
.LFE8:
	.size	qcc74x_block_pool_free, .-qcc74x_block_pool_free
	.section	.text.qcc74x_block_pool_info_get,"ax",@progbits
	.align	1
	.globl	qcc74x_block_pool_info_get
	.type	qcc74x_block_pool_info_get, @function
qcc74x_block_pool_info_get:
.LFB9:
	.loc 1 305 1 is_stmt 1
	.cfi_startproc
.LVL54:
	.loc 1 306 5
	.loc 1 308 5
	.loc 1 308 8 is_stmt 0
	beq	a1,zero,.L76
	.loc 1 309 9 is_stmt 1
	.loc 1 309 30 is_stmt 0
	lw	a5,20(a0)
	.loc 1 309 20
	sw	a5,0(a1)
.L76:
	.loc 1 312 5 is_stmt 1
	.loc 1 312 8 is_stmt 0
	beq	a2,zero,.L75
	.loc 1 313 9 is_stmt 1
	.loc 1 313 29 is_stmt 0
	lw	a5,24(a0)
	.loc 1 313 19
	sw	a5,0(a2)
.L75:
	.loc 1 315 1
	ret
	.cfi_endproc
.LFE9:
	.size	qcc74x_block_pool_info_get, .-qcc74x_block_pool_info_get
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./components/utils/qcc74x_block_pool/qcc74x_block_pool.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x406
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0x18
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
	.byte	0x5
	.byte	0x4
	.byte	0x6
	.byte	0x4
	.4byte	0xa3
	.byte	0x7
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x8
	.byte	0x2c
	.byte	0x4
	.byte	0x13
	.byte	0x9
	.4byte	0x144
	.byte	0x9
	.4byte	.LASF14
	.byte	0x4
	.byte	0x14
	.byte	0xb
	.4byte	0x9b
	.byte	0
	.byte	0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0x15
	.byte	0xb
	.4byte	0x9b
	.byte	0x4
	.byte	0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x16
	.byte	0xb
	.4byte	0x9b
	.byte	0x8
	.byte	0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x17
	.byte	0xe
	.4byte	0x83
	.byte	0xc
	.byte	0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0x18
	.byte	0xe
	.4byte	0x83
	.byte	0x10
	.byte	0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0x19
	.byte	0xe
	.4byte	0x83
	.byte	0x14
	.byte	0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0x1a
	.byte	0xe
	.4byte	0x83
	.byte	0x18
	.byte	0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0x1c
	.byte	0xb
	.4byte	0x153
	.byte	0x1c
	.byte	0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0x1d
	.byte	0xc
	.4byte	0x9d
	.byte	0x20
	.byte	0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0x1e
	.byte	0xb
	.4byte	0x153
	.byte	0x24
	.byte	0x9
	.4byte	.LASF24
	.byte	0x4
	.byte	0x1f
	.byte	0xc
	.4byte	0x9d
	.byte	0x28
	.byte	0
	.byte	0xa
	.4byte	0x69
	.4byte	0x153
	.byte	0xb
	.4byte	0x83
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x144
	.byte	0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0x20
	.byte	0x3
	.4byte	0xab
	.byte	0xc
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x130
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1aa
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x130
	.byte	0x36
	.4byte	0x1aa
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x130
	.byte	0x4a
	.4byte	0x1b0
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x130
	.byte	0x5f
	.4byte	0x1b0
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x159
	.byte	0x6
	.byte	0x4
	.4byte	0x83
	.byte	0xe
	.4byte	.LASF32
	.byte	0x1
	.byte	0xf6
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x21d
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0xf6
	.byte	0x31
	.4byte	0x1aa
	.4byte	.LLST14
	.byte	0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0xf6
	.byte	0x41
	.4byte	0x9b
	.4byte	.LLST15
	.byte	0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0xfb
	.byte	0xb
	.4byte	0x9b
	.4byte	.LLST16
	.byte	0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xfc
	.byte	0xe
	.4byte	0x83
	.4byte	.LLST17
	.byte	0x11
	.4byte	.LVL48
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LASF33
	.byte	0x1
	.byte	0xbd
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a5
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0xbd
	.byte	0x32
	.4byte	0x1aa
	.4byte	.LLST9
	.byte	0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0xbd
	.byte	0x43
	.4byte	0x2a5
	.4byte	.LLST10
	.byte	0xf
	.4byte	.LASF34
	.byte	0x1
	.byte	0xbd
	.byte	0x52
	.4byte	0x83
	.4byte	.LLST11
	.byte	0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0xc2
	.byte	0xb
	.4byte	0x9b
	.4byte	.LLST12
	.byte	0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xc3
	.byte	0xe
	.4byte	0x83
	.4byte	.LLST13
	.byte	0x13
	.4byte	.LVL35
	.4byte	0x298
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x11
	.4byte	.LVL36
	.byte	0x12
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x8
	.byte	0x64
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x9b
	.byte	0x14
	.4byte	.LASF35
	.byte	0x1
	.byte	0xa7
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x2f2
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0xa7
	.byte	0x34
	.4byte	0x1aa
	.4byte	.LLST8
	.byte	0x15
	.string	"get"
	.byte	0x1
	.byte	0xa7
	.byte	0x44
	.4byte	0x153
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.string	"put"
	.byte	0x1
	.byte	0xa7
	.byte	0x60
	.4byte	0x9d
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x14
	.4byte	.LASF36
	.byte	0x1
	.byte	0x91
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x339
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x91
	.byte	0x34
	.4byte	0x1aa
	.4byte	.LLST7
	.byte	0x15
	.string	"get"
	.byte	0x1
	.byte	0x91
	.byte	0x44
	.4byte	0x153
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.string	"put"
	.byte	0x1
	.byte	0x91
	.byte	0x60
	.4byte	0x9d
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x14
	.4byte	.LASF37
	.byte	0x1
	.byte	0x73
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x364
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x73
	.byte	0x33
	.4byte	0x1aa
	.4byte	.LLST6
	.byte	0
	.byte	0x16
	.4byte	.LASF39
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.4byte	0x69
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x1
	.byte	0x9c
	.byte	0xf
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1a
	.byte	0x33
	.4byte	0x1aa
	.4byte	.LLST0
	.byte	0xf
	.4byte	.LASF17
	.byte	0x1
	.byte	0x1a
	.byte	0x46
	.4byte	0x83
	.4byte	.LLST1
	.byte	0x17
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1a
	.byte	0x59
	.4byte	0x83
	.byte	0x1
	.byte	0x5c
	.byte	0x17
	.4byte	.LASF15
	.byte	0x1
	.byte	0x1a
	.byte	0x6a
	.4byte	0x9b
	.byte	0x1
	.byte	0x5d
	.byte	0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x1a
	.byte	0x7e
	.4byte	0x83
	.4byte	.LLST2
	.byte	0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x25
	.byte	0xe
	.4byte	0x83
	.4byte	.LLST3
	.byte	0x18
	.4byte	.LASF42
	.byte	0x1
	.byte	0x26
	.byte	0xe
	.4byte	0x83
	.byte	0x1
	.byte	0x60
	.byte	0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x27
	.byte	0xf
	.4byte	0x8f
	.4byte	.LLST4
	.byte	0x19
	.4byte	.Ldebug_ranges0+0
	.byte	0x1a
	.string	"i"
	.byte	0x1
	.byte	0x4d
	.byte	0x13
	.4byte	0x83
	.4byte	.LLST5
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
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0xb
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xc
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
	.byte	0xd
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
	.byte	0x96,0x42
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
	.byte	0x11
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x1
	.byte	0x13
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x16
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x18
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
	.byte	0x19
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST14:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45
	.4byte	.LVL47
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL48-1
	.4byte	.LVL49
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL49
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL51
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL50
	.4byte	.LVL52-1
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE7
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL35-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL38
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL39
	.4byte	.LVL40
	.2byte	0x9
	.byte	0x7f
	.byte	0
	.byte	0x78
	.byte	0x4
	.byte	0x6
	.byte	0x1c
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST7:
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
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST6:
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
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
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
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL8
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x81
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LFE3
	.2byte	0xa
	.byte	0x31
	.byte	0x7c
	.byte	0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x32
	.byte	0x24
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL18
	.4byte	.LFE3
	.2byte	0x1
	.byte	0x61
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
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
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
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
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
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF42:
	.string	"blk_count"
.LASF44:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF32:
	.string	"qcc74x_block_pool_free"
.LASF39:
	.string	"qcc74x_block_pool_create"
.LASF23:
	.string	"sem_get"
.LASF37:
	.string	"qcc74x_block_pool_delete"
.LASF12:
	.string	"uintptr_t"
.LASF9:
	.string	"__uintptr_t"
.LASF3:
	.string	"short unsigned int"
.LASF38:
	.string	"qcc74x_block_pool_info_get"
.LASF15:
	.string	"pool_addr"
.LASF26:
	.string	"blk_pool"
.LASF21:
	.string	"mtx_get"
.LASF40:
	.string	"pool_size"
.LASF1:
	.string	"unsigned char"
.LASF43:
	.string	"address"
.LASF5:
	.string	"long unsigned int"
.LASF29:
	.string	"addr"
.LASF25:
	.string	"qcc74x_block_pool_t"
.LASF11:
	.string	"uint32_t"
.LASF24:
	.string	"sem_put"
.LASF45:
	.string	"./components/utils/qcc74x_block_pool/qcc74x_block_pool.c"
.LASF16:
	.string	"blk_addr"
.LASF8:
	.string	"__uint32_t"
.LASF46:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/utils"
.LASF34:
	.string	"wait"
.LASF17:
	.string	"blk_size"
.LASF10:
	.string	"unsigned int"
.LASF22:
	.string	"mtx_put"
.LASF7:
	.string	"long long unsigned int"
.LASF14:
	.string	"free_list"
.LASF36:
	.string	"qcc74x_block_pool_add_mtx"
.LASF6:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF31:
	.string	"index"
.LASF35:
	.string	"qcc74x_block_pool_add_sem"
.LASF41:
	.string	"bitmask"
.LASF2:
	.string	"short int"
.LASF20:
	.string	"blk_free"
.LASF30:
	.string	"node"
.LASF28:
	.string	"free_blk"
.LASF4:
	.string	"long int"
.LASF19:
	.string	"blk_total"
.LASF33:
	.string	"qcc74x_block_pool_alloc"
.LASF0:
	.string	"signed char"
.LASF27:
	.string	"total_blk"
.LASF18:
	.string	"blk_align"
	.ident	"GCC: (GNU) 10.4.0"
