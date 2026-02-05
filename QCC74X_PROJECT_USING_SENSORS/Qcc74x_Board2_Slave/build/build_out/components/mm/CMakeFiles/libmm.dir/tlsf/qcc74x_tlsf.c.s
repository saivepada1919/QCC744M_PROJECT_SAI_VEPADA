	.file	"qcc74x_tlsf.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.update_historical_min_free,"ax",@progbits
	.align	1
	.type	update_historical_min_free, @function
update_historical_min_free:
.LFB4:
	.file 1 "./components/mm/tlsf/qcc74x_tlsf.c"
	.loc 1 56 1
	.cfi_startproc
.LVL0:
	.loc 1 57 5
	.loc 1 57 36 is_stmt 0
	lw	a5,12(a0)
	.loc 1 57 8
	lw	a4,16(a0)
	bleu	a4,a5,.L1
	.loc 1 58 9 is_stmt 1
	.loc 1 58 30 is_stmt 0
	sw	a5,16(a0)
.L1:
	.loc 1 60 1
	ret
	.cfi_endproc
.LFE4:
	.size	update_historical_min_free, .-update_historical_min_free
	.section	.text.qcc74x_mem_init,"ax",@progbits
	.align	1
	.globl	qcc74x_mem_init
	.type	qcc74x_mem_init, @function
qcc74x_mem_init:
.LFB5:
	.loc 1 63 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 64 5
	.loc 1 63 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.loc 1 63 1
	mv	s0,a0
	mv	s1,a1
	sw	a2,12(sp)
	.loc 1 64 35
	call	tlsf_size
.LVL2:
	.loc 1 64 33
	add	a0,s1,a0
	.loc 1 64 21
	sw	a0,4(s0)
	.loc 1 65 5 is_stmt 1
	.loc 1 65 33 is_stmt 0
	call	tlsf_size
.LVL3:
	.loc 1 65 31
	lw	a2,12(sp)
	sub	a0,a2,a0
	.loc 1 65 20
	sw	a0,8(s0)
	.loc 1 66 5 is_stmt 1
	.loc 1 66 18 is_stmt 0
	mv	a1,a2
	mv	a0,s1
	call	tlsf_create_with_pool
.LVL4:
	.loc 1 67 28
	lw	a5,8(s0)
	.loc 1 69 1
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 66 16
	sw	a0,0(s0)
	.loc 1 67 5 is_stmt 1
	.loc 1 67 22 is_stmt 0
	sw	a5,12(s0)
	.loc 1 68 5 is_stmt 1
	.loc 1 68 26 is_stmt 0
	sw	a5,16(s0)
	.loc 1 69 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL5:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL6:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL7:
	jr	ra
	.cfi_endproc
.LFE5:
	.size	qcc74x_mem_init, .-qcc74x_mem_init
	.section	.rodata.qcc74x_malloc.str1.4,"aMS",@progbits,1
	.align	2
.LC0:
	.string	"tlsf malloc %d bytes failed at function %s using heap base:%p\r\n"
	.section	.text.qcc74x_malloc,"ax",@progbits
	.align	1
	.globl	qcc74x_malloc
	.type	qcc74x_malloc, @function
qcc74x_malloc:
.LFB6:
	.loc 1 72 1 is_stmt 1
	.cfi_startproc
.LVL8:
	.loc 1 73 5
	.loc 1 74 5
	.loc 1 80 5
	.loc 1 72 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	sw	s3,12(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 72 1
	mv	s2,a1
	mv	s0,a0
	.loc 1 80 12
	call	qcc74x_irq_save
.LVL9:
	mv	s3,a0
.LVL10:
	.loc 1 83 5 is_stmt 1
	.loc 1 83 11 is_stmt 0
	lw	a0,0(s0)
.LVL11:
	mv	a2,s2
	li	a1,32
	call	tlsf_memalign
.LVL12:
	mv	s1,a0
.LVL13:
	.loc 1 84 7 is_stmt 1
	.loc 1 84 10 is_stmt 0
	bne	a0,zero,.L6
	.loc 1 84 9 is_stmt 1 discriminator 1
	lw	a3,4(s0)
	lui	a2,%hi(.LANCHOR0)
	lui	a0,%hi(.LC0)
	addi	a2,a2,%lo(.LANCHOR0)
	mv	a1,s2
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL14:
	.loc 1 84 128 discriminator 1
	.loc 1 85 5 discriminator 1
.L7:
	.loc 1 95 5
	mv	a0,s3
	call	qcc74x_irq_restore
.LVL15:
	.loc 1 98 5
	.loc 1 99 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL16:
	lw	s2,16(sp)
	.cfi_restore 18
.LVL17:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL18:
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL19:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL20:
.L6:
	.cfi_restore_state
	.loc 1 84 128 is_stmt 1
	.loc 1 85 5
	.loc 1 86 9
	.loc 1 86 29 is_stmt 0
	call	tlsf_block_size
.LVL21:
	.loc 1 86 26
	lw	a5,12(s0)
	sub	a5,a5,a0
	sw	a5,12(s0)
	.loc 1 87 9 is_stmt 1
	.loc 1 87 29 is_stmt 0
	call	tlsf_alloc_overhead
.LVL22:
	.loc 1 87 26
	lw	a5,12(s0)
	sub	a5,a5,a0
	sw	a5,12(s0)
	.loc 1 88 9 is_stmt 1
	mv	a0,s0
	call	update_historical_min_free
.LVL23:
	j	.L7
	.cfi_endproc
.LFE6:
	.size	qcc74x_malloc, .-qcc74x_malloc
	.section	.text.qcc74x_free,"ax",@progbits
	.align	1
	.globl	qcc74x_free
	.type	qcc74x_free, @function
qcc74x_free:
.LFB7:
	.loc 1 102 1
	.cfi_startproc
.LVL24:
	.loc 1 103 5
	.loc 1 109 5
	.loc 1 102 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	a1,12(sp)
	sw	ra,28(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 1, -4
	.loc 1 102 1
	mv	s0,a0
	.loc 1 109 12
	call	qcc74x_irq_save
.LVL25:
	.loc 1 112 8
	lw	a1,12(sp)
	.loc 1 109 12
	mv	s1,a0
.LVL26:
	.loc 1 112 5 is_stmt 1
	.loc 1 112 8 is_stmt 0
	beq	a1,zero,.L11
	.loc 1 113 9 is_stmt 1
	.loc 1 113 29 is_stmt 0
	mv	a0,a1
	call	tlsf_block_size
.LVL27:
	.loc 1 113 26
	lw	a5,12(s0)
	add	a5,a5,a0
	sw	a5,12(s0)
	.loc 1 114 9 is_stmt 1
	.loc 1 114 29 is_stmt 0
	call	tlsf_alloc_overhead
.LVL28:
	.loc 1 114 26
	lw	a5,12(s0)
	add	a5,a5,a0
	sw	a5,12(s0)
	.loc 1 115 9 is_stmt 1
	mv	a0,s0
	call	update_historical_min_free
.LVL29:
	lw	a1,12(sp)
.L11:
	.loc 1 118 5
	lw	a0,0(s0)
	call	tlsf_free
.LVL30:
	.loc 1 124 5
	.loc 1 126 1 is_stmt 0
	lw	s0,24(sp)
	.cfi_restore 8
.LVL31:
	lw	ra,28(sp)
	.cfi_restore 1
	.loc 1 124 5
	mv	a0,s1
	.loc 1 126 1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL32:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL33:
	.loc 1 124 5
	tail	qcc74x_irq_restore
.LVL34:
	.cfi_endproc
.LFE7:
	.size	qcc74x_free, .-qcc74x_free
	.section	.text.qcc74x_realloc,"ax",@progbits
	.align	1
	.globl	qcc74x_realloc
	.type	qcc74x_realloc, @function
qcc74x_realloc:
.LFB8:
	.loc 1 129 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 130 5
	.loc 1 131 5
	.loc 1 137 5
	.loc 1 129 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	ra,28(sp)
	sw	s0,24(sp)
	sw	s1,20(sp)
	sw	s2,16(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	mv	s1,a1
	sw	s3,12(sp)
	sw	s4,8(sp)
	.cfi_offset 19, -20
	.cfi_offset 20, -24
	mv	s3,a2
	sw	s5,4(sp)
	.cfi_offset 21, -28
	.loc 1 129 1
	mv	s0,a0
	.loc 1 137 12
	call	qcc74x_irq_save
.LVL36:
	mv	s5,a0
.LVL37:
	.loc 1 140 5 is_stmt 1
	.loc 1 140 34 is_stmt 0
	mv	a0,s1
.LVL38:
	call	tlsf_block_size
.LVL39:
	mv	s4,a0
.LVL40:
	.loc 1 142 5 is_stmt 1
	.loc 1 142 11 is_stmt 0
	lw	a0,0(s0)
.LVL41:
	mv	a2,s3
	mv	a1,s1
	call	tlsf_realloc
.LVL42:
	mv	s2,a0
.LVL43:
	.loc 1 143 7 is_stmt 1
	.loc 1 143 10 is_stmt 0
	bne	a0,zero,.L17
	.loc 1 143 9 is_stmt 1 discriminator 1
	lw	a3,4(s0)
	lui	a2,%hi(.LANCHOR1)
	lui	a0,%hi(.LC0)
.LVL44:
	addi	a2,a2,%lo(.LANCHOR1)
	mv	a1,s3
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL45:
	.loc 1 143 128 discriminator 1
	.loc 1 144 5 discriminator 1
.L18:
	.loc 1 154 5
	mv	a0,s5
	call	qcc74x_irq_restore
.LVL46:
	.loc 1 157 5
	.loc 1 158 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
.LVL47:
	lw	s1,20(sp)
	.cfi_restore 9
.LVL48:
	lw	s3,12(sp)
	.cfi_restore 19
.LVL49:
	lw	s4,8(sp)
	.cfi_restore 20
.LVL50:
	lw	s5,4(sp)
	.cfi_restore 21
.LVL51:
	mv	a0,s2
	lw	s2,16(sp)
	.cfi_restore 18
.LVL52:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
.LVL53:
.L17:
	.cfi_restore_state
	.loc 1 143 128 is_stmt 1
	.loc 1 144 5
	.loc 1 145 9
	.loc 1 145 26 is_stmt 0
	lw	a0,12(s0)
.LVL54:
	add	a0,a0,s4
	sw	a0,12(s0)
	.loc 1 146 9 is_stmt 1
	.loc 1 146 29 is_stmt 0
	mv	a0,s1
	call	tlsf_block_size
.LVL55:
	.loc 1 146 26
	lw	a5,12(s0)
	sub	a5,a5,a0
	sw	a5,12(s0)
	.loc 1 147 9 is_stmt 1
	mv	a0,s0
	call	update_historical_min_free
.LVL56:
	j	.L18
	.cfi_endproc
.LFE8:
	.size	qcc74x_realloc, .-qcc74x_realloc
	.section	.text.qcc74x_calloc,"ax",@progbits
	.align	1
	.globl	qcc74x_calloc
	.type	qcc74x_calloc, @function
qcc74x_calloc:
.LFB9:
	.loc 1 161 1
	.cfi_startproc
.LVL57:
	.loc 1 162 5
	.loc 1 163 5
	.loc 1 161 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	sw	ra,44(sp)
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.cfi_offset 1, -4
	.loc 1 161 1
	mv	s1,a0
	mv	s0,a1
.LVL58:
	.loc 1 164 5 is_stmt 1
	.loc 1 170 5
	.loc 1 161 1 is_stmt 0
	sw	a2,12(sp)
.LVL59:
	.loc 1 170 12
	call	qcc74x_irq_save
.LVL60:
	mv	s3,a0
.LVL61:
	.loc 1 173 5 is_stmt 1
	.loc 1 162 11 is_stmt 0
	li	s2,0
	.loc 1 173 8
	beq	s0,zero,.L22
	.loc 1 173 19 discriminator 1
	lw	a2,12(sp)
	beq	a2,zero,.L22
	.loc 1 174 9 is_stmt 1
	mulhu	a5,s0,a2
	.loc 1 162 11 is_stmt 0
	li	s2,0
	bne	a5,zero,.L22
	.loc 1 163 12
	mul	s0,s0,a2
.LVL62:
	.loc 1 175 13 is_stmt 1
	.loc 1 175 19 is_stmt 0
	lw	a0,0(s1)
.LVL63:
	li	a1,32
	mv	a2,s0
	call	tlsf_memalign
.LVL64:
	mv	s2,a0
.LVL65:
	.loc 1 176 15 is_stmt 1
	.loc 1 176 18 is_stmt 0
	bne	a0,zero,.L25
	.loc 1 176 17 is_stmt 1 discriminator 1
	lw	a3,4(s1)
	lui	a2,%hi(.LANCHOR2)
	lui	a0,%hi(.LC0)
.LVL66:
	addi	a2,a2,%lo(.LANCHOR2)
	mv	a1,s0
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL67:
	.loc 1 176 135 discriminator 1
	.loc 1 177 13 discriminator 1
	.loc 1 183 13 discriminator 1
.L22:
	.loc 1 193 5
	mv	a0,s3
	call	qcc74x_irq_restore
.LVL68:
	.loc 1 196 5
	.loc 1 197 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
	lw	s1,36(sp)
	.cfi_restore 9
.LVL69:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL70:
	mv	a0,s2
	lw	s2,32(sp)
	.cfi_restore 18
.LVL71:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL72:
	jr	ra
.LVL73:
.L25:
	.cfi_restore_state
	.loc 1 176 135 is_stmt 1
	.loc 1 177 13
	.loc 1 178 17
	.loc 1 178 37 is_stmt 0
	call	tlsf_block_size
.LVL74:
	.loc 1 178 34
	lw	a5,12(s1)
	sub	a5,a5,a0
	sw	a5,12(s1)
	.loc 1 179 17 is_stmt 1
	.loc 1 179 37 is_stmt 0
	call	tlsf_alloc_overhead
.LVL75:
	.loc 1 179 34
	lw	a5,12(s1)
	sub	a5,a5,a0
	sw	a5,12(s1)
	.loc 1 180 17 is_stmt 1
	mv	a0,s1
	call	update_historical_min_free
.LVL76:
	.loc 1 183 13
	.loc 1 184 17
	mv	a2,s0
	li	a1,0
	mv	a0,s2
	call	memset
.LVL77:
	j	.L22
	.cfi_endproc
.LFE9:
	.size	qcc74x_calloc, .-qcc74x_calloc
	.section	.text.qcc74x_malloc_align,"ax",@progbits
	.align	1
	.globl	qcc74x_malloc_align
	.type	qcc74x_malloc_align, @function
qcc74x_malloc_align:
.LFB10:
	.loc 1 200 1
	.cfi_startproc
.LVL78:
	.loc 1 201 5
	.loc 1 202 5
	.loc 1 208 5
	.loc 1 200 1 is_stmt 0
	addi	sp,sp,-48
	.cfi_def_cfa_offset 48
	sw	ra,44(sp)
	sw	s0,40(sp)
	sw	s1,36(sp)
	sw	s2,32(sp)
	sw	s3,28(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	.cfi_offset 18, -16
	.cfi_offset 19, -20
	.loc 1 200 1
	mv	s0,a0
	sw	a1,12(sp)
	mv	s2,a2
	.loc 1 208 12
	call	qcc74x_irq_save
.LVL79:
	.loc 1 211 11
	lw	a1,12(sp)
	.loc 1 208 12
	mv	s3,a0
.LVL80:
	.loc 1 211 5 is_stmt 1
	.loc 1 211 11 is_stmt 0
	lw	a0,0(s0)
.LVL81:
	mv	a2,s2
	call	tlsf_memalign
.LVL82:
	mv	s1,a0
.LVL83:
	.loc 1 212 7 is_stmt 1
	.loc 1 212 10 is_stmt 0
	bne	a0,zero,.L35
	.loc 1 212 9 is_stmt 1 discriminator 1
	lw	a3,4(s0)
	lui	a2,%hi(.LANCHOR3)
	lui	a0,%hi(.LC0)
	addi	a2,a2,%lo(.LANCHOR3)
	mv	a1,s2
	addi	a0,a0,%lo(.LC0)
	call	printf
.LVL84:
	.loc 1 212 126 discriminator 1
	.loc 1 213 5 discriminator 1
.L36:
	.loc 1 223 5
	mv	a0,s3
	call	qcc74x_irq_restore
.LVL85:
	.loc 1 226 5
	.loc 1 227 1 is_stmt 0
	lw	ra,44(sp)
	.cfi_remember_state
	.cfi_restore 1
	lw	s0,40(sp)
	.cfi_restore 8
.LVL86:
	lw	s2,32(sp)
	.cfi_restore 18
.LVL87:
	lw	s3,28(sp)
	.cfi_restore 19
.LVL88:
	mv	a0,s1
	lw	s1,36(sp)
	.cfi_restore 9
.LVL89:
	addi	sp,sp,48
	.cfi_def_cfa_offset 0
.LVL90:
	jr	ra
.LVL91:
.L35:
	.cfi_restore_state
	.loc 1 212 126 is_stmt 1
	.loc 1 213 5
	.loc 1 214 9
	.loc 1 214 29 is_stmt 0
	call	tlsf_block_size
.LVL92:
	.loc 1 214 26
	lw	a5,12(s0)
	sub	a5,a5,a0
	sw	a5,12(s0)
	.loc 1 215 9 is_stmt 1
	.loc 1 215 29 is_stmt 0
	call	tlsf_alloc_overhead
.LVL93:
	.loc 1 215 26
	lw	a5,12(s0)
	sub	a5,a5,a0
	sw	a5,12(s0)
	.loc 1 216 9 is_stmt 1
	mv	a0,s0
	call	update_historical_min_free
.LVL94:
	j	.L36
	.cfi_endproc
.LFE10:
	.size	qcc74x_malloc_align, .-qcc74x_malloc_align
	.section	.rodata.__FUNCTION__.0,"a"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	__FUNCTION__.0, @object
	.size	__FUNCTION__.0, 20
__FUNCTION__.0:
	.string	"qcc74x_malloc_align"
	.section	.rodata.__FUNCTION__.1,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	__FUNCTION__.1, @object
	.size	__FUNCTION__.1, 14
__FUNCTION__.1:
	.string	"qcc74x_calloc"
	.section	.rodata.__FUNCTION__.2,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	__FUNCTION__.2, @object
	.size	__FUNCTION__.2, 15
__FUNCTION__.2:
	.string	"qcc74x_realloc"
	.section	.rodata.__FUNCTION__.3,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	__FUNCTION__.3, @object
	.size	__FUNCTION__.3, 14
__FUNCTION__.3:
	.string	"qcc74x_malloc"
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./components/mm/./mem.h"
	.file 6 "./drivers/lhal/include/qcc74x_irq.h"
	.file 7 "./components/mm/tlsf/tlsf.h"
	.file 8 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/stdio.h"
	.file 9 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x705
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF44
	.byte	0xc
	.4byte	.LASF45
	.4byte	.LASF46
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0xe8
	.byte	0x16
	.4byte	0x70
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x4
	.4byte	.LASF10
	.byte	0x3
	.byte	0x52
	.byte	0x15
	.4byte	0x64
	.byte	0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0xd1
	.byte	0x16
	.4byte	0x70
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0x6
	.4byte	0x91
	.byte	0x7
	.4byte	.LASF47
	.byte	0x14
	.byte	0x5
	.byte	0x51
	.byte	0x8
	.4byte	0xec
	.byte	0x8
	.4byte	.LASF13
	.byte	0x5
	.byte	0x52
	.byte	0xb
	.4byte	0x8f
	.byte	0
	.byte	0x8
	.4byte	.LASF14
	.byte	0x5
	.byte	0x53
	.byte	0xb
	.4byte	0x8f
	.byte	0x4
	.byte	0x8
	.4byte	.LASF15
	.byte	0x5
	.byte	0x54
	.byte	0xc
	.4byte	0x83
	.byte	0x8
	.byte	0x8
	.4byte	.LASF16
	.byte	0x5
	.byte	0x55
	.byte	0xc
	.4byte	0x83
	.byte	0xc
	.byte	0x8
	.4byte	.LASF17
	.byte	0x5
	.byte	0x56
	.byte	0xc
	.4byte	0x83
	.byte	0x10
	.byte	0
	.byte	0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0xc7
	.byte	0x7
	.4byte	0x8f
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x1
	.byte	0x9c
	.4byte	0x1e6
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0xc7
	.byte	0x2e
	.4byte	0x1e6
	.4byte	.LLST22
	.byte	0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0xc7
	.byte	0x3b
	.4byte	0x83
	.4byte	.LLST23
	.byte	0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0xc7
	.byte	0x49
	.4byte	0x83
	.4byte	.LLST24
	.byte	0xb
	.string	"ret"
	.byte	0x1
	.byte	0xc9
	.byte	0xb
	.4byte	0x8f
	.4byte	.LLST25
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0xca
	.byte	0xf
	.4byte	0x77
	.4byte	.LLST26
	.byte	0xd
	.4byte	.LASF26
	.4byte	0x1fc
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.0
	.byte	0xe
	.4byte	.LVL79
	.4byte	0x684
	.byte	0xf
	.4byte	.LVL82
	.4byte	0x690
	.4byte	0x189
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL84
	.4byte	0x69c
	.4byte	0x1af
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.byte	0xf
	.4byte	.LVL85
	.4byte	0x6a8
	.4byte	0x1c3
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL92
	.4byte	0x6b4
	.byte	0xe
	.4byte	.LVL93
	.4byte	0x6c0
	.byte	0x11
	.4byte	.LVL94
	.4byte	0x65f
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0x4
	.4byte	0x9d
	.byte	0x13
	.4byte	0x98
	.4byte	0x1fc
	.byte	0x14
	.4byte	0x70
	.byte	0x13
	.byte	0
	.byte	0x6
	.4byte	0x1ec
	.byte	0x9
	.4byte	.LASF23
	.byte	0x1
	.byte	0xa0
	.byte	0x7
	.4byte	0x8f
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x329
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0xa0
	.byte	0x28
	.4byte	0x1e6
	.4byte	.LLST16
	.byte	0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0xa0
	.byte	0x35
	.4byte	0x83
	.4byte	.LLST17
	.byte	0xa
	.4byte	.LASF20
	.byte	0x1
	.byte	0xa0
	.byte	0x43
	.4byte	0x83
	.4byte	.LLST18
	.byte	0xb
	.string	"ptr"
	.byte	0x1
	.byte	0xa2
	.byte	0xb
	.4byte	0x8f
	.4byte	.LLST19
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0xa3
	.byte	0xc
	.4byte	0x83
	.4byte	.LLST20
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0xa4
	.byte	0xf
	.4byte	0x77
	.4byte	.LLST21
	.byte	0xd
	.4byte	.LASF26
	.4byte	0x339
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.1
	.byte	0xe
	.4byte	.LVL60
	.4byte	0x684
	.byte	0xf
	.4byte	.LVL64
	.4byte	0x690
	.4byte	0x2ad
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL67
	.4byte	0x69c
	.4byte	0x2d3
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.byte	0
	.byte	0xf
	.4byte	.LVL68
	.4byte	0x6a8
	.4byte	0x2e7
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL74
	.4byte	0x6b4
	.byte	0xe
	.4byte	.LVL75
	.4byte	0x6c0
	.byte	0xf
	.4byte	.LVL76
	.4byte	0x65f
	.4byte	0x30d
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL77
	.4byte	0x6cc
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	0x98
	.4byte	0x339
	.byte	0x14
	.4byte	0x70
	.byte	0xd
	.byte	0
	.byte	0x6
	.4byte	0x329
	.byte	0x9
	.4byte	.LASF27
	.byte	0x1
	.byte	0x80
	.byte	0x7
	.4byte	0x8f
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x45d
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x80
	.byte	0x29
	.4byte	0x1e6
	.4byte	.LLST10
	.byte	0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x80
	.byte	0x35
	.4byte	0x8f
	.4byte	.LLST11
	.byte	0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x80
	.byte	0x41
	.4byte	0x83
	.4byte	.LLST12
	.byte	0xb
	.string	"ret"
	.byte	0x1
	.byte	0x82
	.byte	0xb
	.4byte	0x8f
	.4byte	.LLST13
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x83
	.byte	0xf
	.4byte	0x77
	.4byte	.LLST14
	.byte	0xc
	.4byte	.LASF29
	.byte	0x1
	.byte	0x8c
	.byte	0xc
	.4byte	0x83
	.4byte	.LLST15
	.byte	0xd
	.4byte	.LASF26
	.4byte	0x46d
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.2
	.byte	0xe
	.4byte	.LVL36
	.4byte	0x684
	.byte	0xf
	.4byte	.LVL39
	.4byte	0x6b4
	.4byte	0x3e4
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL42
	.4byte	0x6d8
	.4byte	0x3fe
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL45
	.4byte	0x69c
	.4byte	0x424
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.byte	0xf
	.4byte	.LVL46
	.4byte	0x6a8
	.4byte	0x438
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x85
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL55
	.4byte	0x6b4
	.4byte	0x44c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0
	.byte	0x11
	.4byte	.LVL56
	.4byte	0x65f
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x13
	.4byte	0x98
	.4byte	0x46d
	.byte	0x14
	.4byte	0x70
	.byte	0xe
	.byte	0
	.byte	0x6
	.4byte	0x45d
	.byte	0x16
	.4byte	.LASF31
	.byte	0x1
	.byte	0x65
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x506
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x65
	.byte	0x25
	.4byte	0x1e6
	.4byte	.LLST7
	.byte	0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x65
	.byte	0x31
	.4byte	0x8f
	.4byte	.LLST8
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x67
	.byte	0xf
	.4byte	0x77
	.4byte	.LLST9
	.byte	0xe
	.4byte	.LVL25
	.4byte	0x684
	.byte	0xf
	.4byte	.LVL27
	.4byte	0x6b4
	.4byte	0x4d6
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0xe
	.4byte	.LVL28
	.4byte	0x6c0
	.byte	0xf
	.4byte	.LVL29
	.4byte	0x65f
	.4byte	0x4f3
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL30
	.4byte	0x6e4
	.byte	0x17
	.4byte	.LVL34
	.4byte	0x6a8
	.byte	0
	.byte	0x9
	.4byte	.LASF30
	.byte	0x1
	.byte	0x47
	.byte	0x7
	.4byte	0x8f
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x5ef
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x47
	.byte	0x28
	.4byte	0x1e6
	.4byte	.LLST3
	.byte	0xa
	.4byte	.LASF28
	.byte	0x1
	.byte	0x47
	.byte	0x35
	.4byte	0x83
	.4byte	.LLST4
	.byte	0xb
	.string	"ret"
	.byte	0x1
	.byte	0x49
	.byte	0xb
	.4byte	0x8f
	.4byte	.LLST5
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4a
	.byte	0xf
	.4byte	0x77
	.4byte	.LLST6
	.byte	0xd
	.4byte	.LASF26
	.4byte	0x339
	.byte	0x5
	.byte	0x3
	.4byte	__FUNCTION__.3
	.byte	0xe
	.4byte	.LVL9
	.4byte	0x684
	.byte	0xf
	.4byte	.LVL12
	.4byte	0x690
	.4byte	0x592
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LVL14
	.4byte	0x69c
	.4byte	0x5b8
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x2
	.byte	0x82
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0xf
	.4byte	.LVL15
	.4byte	0x6a8
	.4byte	0x5cc
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x83
	.byte	0
	.byte	0
	.byte	0xe
	.4byte	.LVL21
	.4byte	0x6b4
	.byte	0xe
	.4byte	.LVL22
	.4byte	0x6c0
	.byte	0x11
	.4byte	.LVL23
	.4byte	0x65f
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x78
	.byte	0
	.byte	0
	.byte	0
	.byte	0x16
	.4byte	.LASF32
	.byte	0x1
	.byte	0x3e
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x65f
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3e
	.byte	0x29
	.4byte	0x1e6
	.4byte	.LLST0
	.byte	0xa
	.4byte	.LASF14
	.byte	0x1
	.byte	0x3e
	.byte	0x35
	.4byte	0x8f
	.4byte	.LLST1
	.byte	0xa
	.4byte	.LASF15
	.byte	0x1
	.byte	0x3e
	.byte	0x47
	.4byte	0x83
	.4byte	.LLST2
	.byte	0xe
	.4byte	.LVL2
	.4byte	0x6f0
	.byte	0xe
	.4byte	.LVL3
	.4byte	0x6f0
	.byte	0x11
	.4byte	.LVL4
	.4byte	0x6fc
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF48
	.byte	0x1
	.byte	0x37
	.byte	0x14
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x684
	.byte	0x19
	.4byte	.LASF18
	.byte	0x1
	.byte	0x37
	.byte	0x42
	.4byte	0x1e6
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x1a
	.4byte	.LASF33
	.4byte	.LASF33
	.byte	0x6
	.byte	0x2e
	.byte	0xb
	.byte	0x1a
	.4byte	.LASF34
	.4byte	.LASF34
	.byte	0x7
	.byte	0x40
	.byte	0x7
	.byte	0x1a
	.4byte	.LASF35
	.4byte	.LASF35
	.byte	0x8
	.byte	0xc8
	.byte	0x5
	.byte	0x1a
	.4byte	.LASF36
	.4byte	.LASF36
	.byte	0x6
	.byte	0x35
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF37
	.4byte	.LASF37
	.byte	0x7
	.byte	0x45
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF38
	.4byte	.LASF38
	.byte	0x7
	.byte	0x4d
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF39
	.4byte	.LASF39
	.byte	0x9
	.byte	0x21
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF40
	.4byte	.LASF40
	.byte	0x7
	.byte	0x41
	.byte	0x7
	.byte	0x1a
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x7
	.byte	0x42
	.byte	0x6
	.byte	0x1a
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x7
	.byte	0x48
	.byte	0x8
	.byte	0x1a
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x7
	.byte	0x36
	.byte	0x8
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
	.byte	0x4
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
	.byte	0x8
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
	.byte	0x9
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
	.byte	0xa
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
	.byte	0xb
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
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0x34
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x49
	.byte	0x13
	.byte	0x34
	.byte	0x19
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x12
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x14
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
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
	.byte	0x17
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
	.byte	0x19
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
.LLST22:
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL79-1
	.4byte	.LVL86
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL86
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST23:
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL79-1
	.4byte	.LVL90
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL90
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	.LVL91
	.4byte	.LFE10
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST24:
	.4byte	.LVL78
	.4byte	.LVL79-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL79-1
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL87
	.4byte	.LVL91
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL91
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST25:
	.4byte	.LVL78
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL91
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST26:
	.4byte	.LVL80
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL81
	.4byte	.LVL88
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL91
	.4byte	.LFE10
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL57
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL60-1
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL69
	.4byte	.LVL73
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL73
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL57
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL60-1
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL57
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL60-1
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x2
	.byte	0x72
	.byte	0x5c
	.4byte	.LVL73
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x91
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL57
	.4byte	.LVL65
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL66
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL71
	.4byte	.LVL74-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL74-1
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x7
	.byte	0x7b
	.byte	0
	.byte	0x91
	.byte	0x5c
	.byte	0x6
	.byte	0x1e
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL63
	.4byte	.LVL70
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL73
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL36-1
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL47
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36-1
	.4byte	.LVL48
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL48
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL36-1
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL49
	.4byte	.LVL53
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL35
	.4byte	.LVL43
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL44
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL38
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x65
	.4byte	.LVL53
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x65
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL41
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x64
	.4byte	.LVL53
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x64
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25-1
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL31
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL25-1
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL33
	.4byte	.LFE7
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL26
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL32
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL9-1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL9-1
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x62
	.4byte	.LVL17
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x62
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL13
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x63
	.4byte	.LVL20
	.4byte	.LFE6
	.2byte	0x1
	.byte	0x63
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL5
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2-1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL6
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
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL2-1
	.4byte	.LVL7
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL7
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
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
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
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
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF44:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF11:
	.string	"size_t"
.LASF23:
	.string	"qcc74x_calloc"
.LASF13:
	.string	"priv"
.LASF19:
	.string	"align"
.LASF10:
	.string	"uintptr_t"
.LASF24:
	.string	"count"
.LASF48:
	.string	"update_historical_min_free"
.LASF41:
	.string	"tlsf_free"
.LASF3:
	.string	"short unsigned int"
.LASF36:
	.string	"qcc74x_irq_restore"
.LASF34:
	.string	"tlsf_memalign"
.LASF47:
	.string	"mem_heap_s"
.LASF14:
	.string	"heapstart"
.LASF38:
	.string	"tlsf_alloc_overhead"
.LASF40:
	.string	"tlsf_realloc"
.LASF45:
	.string	"./components/mm/tlsf/qcc74x_tlsf.c"
.LASF20:
	.string	"size"
.LASF5:
	.string	"long unsigned int"
.LASF1:
	.string	"unsigned char"
.LASF39:
	.string	"memset"
.LASF16:
	.string	"free_bytes"
.LASF26:
	.string	"__FUNCTION__"
.LASF21:
	.string	"flag"
.LASF27:
	.string	"qcc74x_realloc"
.LASF8:
	.string	"unsigned int"
.LASF9:
	.string	"__uintptr_t"
.LASF43:
	.string	"tlsf_create_with_pool"
.LASF7:
	.string	"long long unsigned int"
.LASF18:
	.string	"heap"
.LASF32:
	.string	"qcc74x_mem_init"
.LASF31:
	.string	"qcc74x_free"
.LASF30:
	.string	"qcc74x_malloc"
.LASF15:
	.string	"heapsize"
.LASF6:
	.string	"long long int"
.LASF33:
	.string	"qcc74x_irq_save"
.LASF12:
	.string	"char"
.LASF35:
	.string	"printf"
.LASF37:
	.string	"tlsf_block_size"
.LASF2:
	.string	"short int"
.LASF22:
	.string	"qcc74x_malloc_align"
.LASF17:
	.string	"min_free_bytes"
.LASF42:
	.string	"tlsf_size"
.LASF25:
	.string	"total"
.LASF4:
	.string	"long int"
.LASF46:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/components/mm"
.LASF29:
	.string	"previous_block_size"
.LASF0:
	.string	"signed char"
.LASF28:
	.string	"nbytes"
	.ident	"GCC: (GNU) 10.4.0"
