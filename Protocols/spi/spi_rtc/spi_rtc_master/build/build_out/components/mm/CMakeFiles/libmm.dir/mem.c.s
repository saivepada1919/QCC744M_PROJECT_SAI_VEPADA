	.file	"mem.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.kmem_init,"ax",@progbits
	.align	1
	.globl	kmem_init
	.type	kmem_init, @function
kmem_init:
.LFB4:
	.file 1 "./components/mm/mem.c"
	.loc 1 56 1
	.cfi_startproc
.LVL0:
	.loc 1 57 5
	.loc 1 59 5
	.loc 1 56 1 is_stmt 0
	mv	a2,a1
	.loc 1 59 5
	mv	a1,a0
.LVL1:
	lui	a0,%hi(.LANCHOR0)
.LVL2:
	addi	a0,a0,%lo(.LANCHOR0)
	tail	qcc74x_mem_init
.LVL3:
	.cfi_endproc
.LFE4:
	.size	kmem_init, .-kmem_init
	.section	.text.kmalloc,"ax",@progbits
	.align	1
	.globl	kmalloc
	.type	kmalloc, @function
kmalloc:
.LFB5:
	.loc 1 84 1 is_stmt 1
	.cfi_startproc
.LVL4:
	.loc 1 85 5
	.loc 1 86 5
	.loc 1 88 5
	.loc 1 90 5
	.loc 1 84 1 is_stmt 0
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,24(sp)
	.loc 1 90 43
	andi	a5,a1,4
	.loc 1 84 1
	sw	ra,28(sp)
	sw	s1,20(sp)
	.cfi_offset 8, -8
	.cfi_offset 1, -4
	.cfi_offset 9, -12
	.loc 1 84 1
	mv	s0,a1
	mv	a2,a0
	.loc 1 90 11
	li	a1,4
.LVL5:
	beq	a5,zero,.L3
	li	a1,32
.L3:
	.loc 1 90 11 discriminator 4
	lui	a0,%hi(.LANCHOR0)
.LVL6:
	addi	a0,a0,%lo(.LANCHOR0)
	sw	a2,12(sp)
	call	qcc74x_malloc_align
.LVL7:
	mv	s1,a0
.LVL8:
	.loc 1 92 5 is_stmt 1 discriminator 4
	.loc 1 92 8 is_stmt 0 discriminator 4
	beq	a0,zero,.L2
	.loc 1 92 22 discriminator 1
	andi	s0,s0,1
.LVL9:
	.loc 1 92 13 discriminator 1
	lw	a2,12(sp)
	beq	s0,zero,.L2
	.loc 1 93 9 is_stmt 1
	li	a1,0
	call	memset
.LVL10:
	.loc 1 96 5
.L2:
	.loc 1 97 1 is_stmt 0
	lw	ra,28(sp)
	.cfi_restore 1
	lw	s0,24(sp)
	.cfi_restore 8
	mv	a0,s1
	lw	s1,20(sp)
	.cfi_restore 9
.LVL11:
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
.LVL12:
	jr	ra
	.cfi_endproc
.LFE5:
	.size	kmalloc, .-kmalloc
	.section	.text.pvPortMallocStack,"ax",@progbits
	.align	1
	.globl	pvPortMallocStack
	.type	pvPortMallocStack, @function
pvPortMallocStack:
.LFB6:
	.loc 1 100 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 101 5
	.loc 1 101 12 is_stmt 0
	li	a1,0
	tail	kmalloc
.LVL14:
	.cfi_endproc
.LFE6:
	.size	pvPortMallocStack, .-pvPortMallocStack
	.section	.text.kfree,"ax",@progbits
	.align	1
	.globl	kfree
	.type	kfree, @function
kfree:
.LFB7:
	.loc 1 114 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 115 5
	.loc 1 117 5
	.loc 1 114 1 is_stmt 0
	mv	a1,a0
	.loc 1 117 5
	lui	a0,%hi(.LANCHOR0)
.LVL16:
	addi	a0,a0,%lo(.LANCHOR0)
	tail	qcc74x_free
.LVL17:
	.cfi_endproc
.LFE7:
	.size	kfree, .-kfree
	.section	.text.vPortFreeStack,"ax",@progbits
	.align	1
	.globl	vPortFreeStack
	.type	vPortFreeStack, @function
vPortFreeStack:
.LFB8:
	.loc 1 121 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 122 5
	.loc 1 122 12 is_stmt 0
	tail	kfree
.LVL19:
	.cfi_endproc
.LFE8:
	.size	vPortFreeStack, .-vPortFreeStack
	.section	.text.kcalloc,"ax",@progbits
	.align	1
	.globl	kcalloc
	.type	kcalloc, @function
kcalloc:
.LFB9:
	.loc 1 140 1 is_stmt 1
	.cfi_startproc
.LVL20:
	.loc 1 141 5
	.loc 1 140 1 is_stmt 0
	mv	a5,a1
	.loc 1 141 12
	mul	a0,a0,a5
.LVL21:
	li	a1,1
.LVL22:
	tail	kmalloc
.LVL23:
	.cfi_endproc
.LFE9:
	.size	kcalloc, .-kcalloc
	.section	.text.pmem_init,"ax",@progbits
	.align	1
	.globl	pmem_init
	.type	pmem_init, @function
pmem_init:
.LFB19:
	.cfi_startproc
	tail	kmem_init
	.cfi_endproc
.LFE19:
	.size	pmem_init, .-pmem_init
	.section	.text.malloc,"ax",@progbits
	.align	1
	.globl	malloc
	.type	malloc, @function
malloc:
.LFB11:
	.loc 1 176 1 is_stmt 1
	.cfi_startproc
.LVL24:
	.loc 1 177 5
	.loc 1 179 5
	.loc 1 176 1 is_stmt 0
	mv	a1,a0
	.loc 1 179 12
	lui	a0,%hi(.LANCHOR0)
.LVL25:
	addi	a0,a0,%lo(.LANCHOR0)
	tail	qcc74x_malloc
.LVL26:
	.cfi_endproc
.LFE11:
	.size	malloc, .-malloc
	.section	.text.realloc,"ax",@progbits
	.align	1
	.globl	realloc
	.type	realloc, @function
realloc:
.LFB12:
	.loc 1 198 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 199 5
	.loc 1 198 1 is_stmt 0
	mv	a2,a1
	.loc 1 199 12
	mv	a1,a0
.LVL28:
	lui	a0,%hi(.LANCHOR0)
.LVL29:
	addi	a0,a0,%lo(.LANCHOR0)
	tail	qcc74x_realloc
.LVL30:
	.cfi_endproc
.LFE12:
	.size	realloc, .-realloc
	.section	.text.calloc,"ax",@progbits
	.align	1
	.globl	calloc
	.type	calloc, @function
calloc:
.LFB13:
	.loc 1 217 1 is_stmt 1
	.cfi_startproc
.LVL31:
	.loc 1 218 5
	.loc 1 217 1 is_stmt 0
	mv	a2,a1
	.loc 1 218 12
	mv	a1,a0
.LVL32:
	lui	a0,%hi(.LANCHOR0)
.LVL33:
	addi	a0,a0,%lo(.LANCHOR0)
	tail	qcc74x_calloc
.LVL34:
	.cfi_endproc
.LFE13:
	.size	calloc, .-calloc
	.section	.text.memalign,"ax",@progbits
	.align	1
	.globl	memalign
	.type	memalign, @function
memalign:
.LFB14:
	.loc 1 235 1 is_stmt 1
	.cfi_startproc
.LVL35:
	.loc 1 236 5
	.loc 1 235 1 is_stmt 0
	mv	a2,a1
	.loc 1 236 12
	mv	a1,a0
.LVL36:
	lui	a0,%hi(.LANCHOR0)
.LVL37:
	addi	a0,a0,%lo(.LANCHOR0)
	tail	qcc74x_malloc_align
.LVL38:
	.cfi_endproc
.LFE14:
	.size	memalign, .-memalign
	.section	.text.free,"ax",@progbits
	.align	1
	.globl	free
	.type	free, @function
free:
.LFB21:
	.cfi_startproc
	tail	kfree
	.cfi_endproc
.LFE21:
	.size	free, .-free
	.section	.text.kfree_size,"ax",@progbits
	.align	1
	.globl	kfree_size
	.type	kfree_size, @function
kfree_size:
.LFB16:
	.loc 1 264 1 is_stmt 1
	.cfi_startproc
	.loc 1 265 5
	.loc 1 266 1 is_stmt 0
	lui	a5,%hi(.LANCHOR0+12)
	lw	a0,%lo(.LANCHOR0+12)(a5)
	ret
	.cfi_endproc
.LFE16:
	.size	kfree_size, .-kfree_size
	.section	.text.pfree_size,"ax",@progbits
	.align	1
	.globl	pfree_size
	.type	pfree_size, @function
pfree_size:
.LFB17:
	.loc 1 269 1 is_stmt 1
	.cfi_startproc
	.loc 1 273 5
	.loc 1 275 1 is_stmt 0
	li	a0,0
	ret
	.cfi_endproc
.LFE17:
	.size	pfree_size, .-pfree_size
	.globl	g_pmemheap
	.globl	g_kmemheap
	.section	.bss.g_kmemheap,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	g_kmemheap, @object
	.size	g_kmemheap, 20
g_kmemheap:
	.zero	20
	.section	.bss.g_pmemheap,"aw",@nobits
	.align	2
	.type	g_pmemheap, @object
	.size	g_pmemheap, 20
g_pmemheap:
	.zero	20
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 5 "./components/mm/mem.h"
	.file 6 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x535
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF48
	.byte	0xc
	.4byte	.LASF49
	.4byte	.LASF50
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
	.byte	0x3
	.4byte	.LASF9
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
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x3
	.4byte	.LASF10
	.byte	0x3
	.byte	0x30
	.byte	0x14
	.4byte	0x48
	.byte	0x3
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
	.4byte	.LASF51
	.byte	0x14
	.byte	0x5
	.byte	0x51
	.byte	0x8
	.4byte	0xe7
	.byte	0x7
	.4byte	.LASF13
	.byte	0x5
	.byte	0x52
	.byte	0xb
	.4byte	0x8f
	.byte	0
	.byte	0x7
	.4byte	.LASF14
	.byte	0x5
	.byte	0x53
	.byte	0xb
	.4byte	0x8f
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.byte	0x5
	.byte	0x54
	.byte	0xc
	.4byte	0x83
	.byte	0x8
	.byte	0x7
	.4byte	.LASF16
	.byte	0x5
	.byte	0x55
	.byte	0xc
	.4byte	0x83
	.byte	0xc
	.byte	0x7
	.4byte	.LASF17
	.byte	0x5
	.byte	0x56
	.byte	0xc
	.4byte	0x83
	.byte	0x10
	.byte	0
	.byte	0x8
	.4byte	.LASF18
	.byte	0x5
	.byte	0x65
	.byte	0x1a
	.4byte	0x98
	.byte	0x8
	.4byte	.LASF19
	.byte	0x5
	.byte	0x66
	.byte	0x1a
	.4byte	0x98
	.byte	0x9
	.4byte	0xe7
	.byte	0x1
	.byte	0x22
	.byte	0x13
	.byte	0x5
	.byte	0x3
	.4byte	g_kmemheap
	.byte	0x9
	.4byte	0xf3
	.byte	0x1
	.byte	0x23
	.byte	0x13
	.byte	0x5
	.byte	0x3
	.4byte	g_pmemheap
	.byte	0xa
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x10c
	.byte	0xa
	.4byte	0x77
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x1
	.byte	0x9c
	.byte	0xa
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x107
	.byte	0xa
	.4byte	0x77
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x1
	.byte	0x9c
	.byte	0xb
	.4byte	.LASF29
	.byte	0x1
	.byte	0xf8
	.byte	0x6
	.4byte	0x162
	.byte	0xc
	.4byte	.LASF31
	.byte	0x1
	.byte	0xf8
	.byte	0x11
	.4byte	0x8f
	.byte	0
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0xea
	.byte	0x7
	.4byte	0x8f
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x1
	.byte	0x9c
	.4byte	0x1be
	.byte	0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0xea
	.byte	0x17
	.4byte	0x83
	.4byte	.LLST15
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xea
	.byte	0x25
	.4byte	0x83
	.4byte	.LLST16
	.byte	0xf
	.4byte	.LVL38
	.4byte	0x4e4
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF25
	.byte	0x1
	.byte	0xd8
	.byte	0x7
	.4byte	0x8f
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x1
	.byte	0x9c
	.4byte	0x21a
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xd8
	.byte	0x15
	.4byte	0x83
	.4byte	.LLST13
	.byte	0x11
	.string	"len"
	.byte	0x1
	.byte	0xd8
	.byte	0x22
	.4byte	0x83
	.4byte	.LLST14
	.byte	0xf
	.4byte	.LVL34
	.4byte	0x4f0
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0xc5
	.byte	0x7
	.4byte	0x8f
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x1
	.byte	0x9c
	.4byte	0x276
	.byte	0x11
	.string	"old"
	.byte	0x1
	.byte	0xc5
	.byte	0x15
	.4byte	0x8f
	.4byte	.LLST11
	.byte	0xe
	.4byte	.LASF27
	.byte	0x1
	.byte	0xc5
	.byte	0x21
	.4byte	0x83
	.4byte	.LLST12
	.byte	0xf
	.4byte	.LVL30
	.4byte	0x4fc
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF28
	.byte	0x1
	.byte	0xaf
	.byte	0x7
	.4byte	0x8f
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x1
	.byte	0x9c
	.4byte	0x2bb
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0xaf
	.byte	0x15
	.4byte	0x83
	.4byte	.LLST10
	.byte	0xf
	.4byte	.LVL26
	.4byte	0x508
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x1
	.byte	0x9a
	.byte	0x6
	.4byte	0x2e0
	.byte	0xc
	.4byte	.LASF14
	.byte	0x1
	.byte	0x9a
	.byte	0x16
	.4byte	0x8f
	.byte	0xc
	.4byte	.LASF15
	.byte	0x1
	.byte	0x9a
	.byte	0x28
	.4byte	0x83
	.byte	0
	.byte	0xd
	.4byte	.LASF32
	.byte	0x1
	.byte	0x8b
	.byte	0x7
	.4byte	0x8f
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x335
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x8b
	.byte	0x16
	.4byte	0x83
	.4byte	.LLST8
	.byte	0x11
	.string	"len"
	.byte	0x1
	.byte	0x8b
	.byte	0x23
	.4byte	0x83
	.4byte	.LLST9
	.byte	0xf
	.4byte	.LVL23
	.4byte	0x3ee
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x7
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x1e
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF33
	.byte	0x1
	.byte	0x78
	.byte	0x6
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x36c
	.byte	0x11
	.string	"pv"
	.byte	0x1
	.byte	0x78
	.byte	0x1b
	.4byte	0x8f
	.4byte	.LLST7
	.byte	0xf
	.4byte	.LVL19
	.4byte	0x36c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0x12
	.4byte	.LASF34
	.byte	0x1
	.byte	0x71
	.byte	0x6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ad
	.byte	0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x71
	.byte	0x12
	.4byte	0x8f
	.4byte	.LLST6
	.byte	0xf
	.4byte	.LVL17
	.4byte	0x514
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF35
	.byte	0x1
	.byte	0x63
	.byte	0x7
	.4byte	0x8f
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x3ee
	.byte	0xe
	.4byte	.LASF36
	.byte	0x1
	.byte	0x63
	.byte	0x20
	.4byte	0x83
	.4byte	.LLST5
	.byte	0xf
	.4byte	.LVL14
	.4byte	0x3ee
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF37
	.byte	0x1
	.byte	0x53
	.byte	0x7
	.4byte	0x8f
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x486
	.byte	0xe
	.4byte	.LASF23
	.byte	0x1
	.byte	0x53
	.byte	0x16
	.4byte	0x83
	.4byte	.LLST2
	.byte	0xe
	.4byte	.LASF38
	.byte	0x1
	.byte	0x53
	.byte	0x20
	.4byte	0x69
	.4byte	.LLST3
	.byte	0x13
	.string	"ptr"
	.byte	0x1
	.byte	0x55
	.byte	0xb
	.4byte	0x8f
	.4byte	.LLST4
	.byte	0x14
	.4byte	.LASF39
	.byte	0x1
	.byte	0x56
	.byte	0x18
	.4byte	0x486
	.byte	0x6
	.byte	0x3
	.4byte	g_kmemheap
	.byte	0x9f
	.byte	0x15
	.4byte	.LVL7
	.4byte	0x4e4
	.4byte	0x469
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0x16
	.4byte	.LVL10
	.4byte	0x520
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x2
	.byte	0x79
	.byte	0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.byte	0x30
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0x91
	.byte	0x6c
	.byte	0x6
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0x4
	.4byte	0x98
	.byte	0x12
	.4byte	.LASF40
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x4e4
	.byte	0xe
	.4byte	.LASF14
	.byte	0x1
	.byte	0x37
	.byte	0x16
	.4byte	0x8f
	.4byte	.LLST0
	.byte	0xe
	.4byte	.LASF15
	.byte	0x1
	.byte	0x37
	.byte	0x28
	.4byte	0x83
	.4byte	.LLST1
	.byte	0xf
	.4byte	.LVL3
	.4byte	0x52c
	.byte	0x10
	.byte	0x1
	.byte	0x5a
	.byte	0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x10
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x10
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x18
	.4byte	.LASF41
	.4byte	.LASF41
	.byte	0x5
	.byte	0xb6
	.byte	0x7
	.byte	0x18
	.4byte	.LASF42
	.4byte	.LASF42
	.byte	0x5
	.byte	0xb4
	.byte	0x7
	.byte	0x18
	.4byte	.LASF43
	.4byte	.LASF43
	.byte	0x5
	.byte	0xb2
	.byte	0x7
	.byte	0x18
	.4byte	.LASF44
	.4byte	.LASF44
	.byte	0x5
	.byte	0xae
	.byte	0x7
	.byte	0x18
	.4byte	.LASF45
	.4byte	.LASF45
	.byte	0x5
	.byte	0xb0
	.byte	0x6
	.byte	0x18
	.4byte	.LASF46
	.4byte	.LASF46
	.byte	0x6
	.byte	0x21
	.byte	0x8
	.byte	0x18
	.4byte	.LASF47
	.4byte	.LASF47
	.byte	0x5
	.byte	0xac
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
	.byte	0x7
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
	.byte	0x8
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
	.byte	0x9
	.byte	0x34
	.byte	0
	.byte	0x47
	.byte	0x13
	.byte	0x3a
	.byte	0xb
	.byte	0x3b
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xa
	.byte	0x2e
	.byte	0
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0xf
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
	.byte	0x13
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
	.byte	0x14
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
	.byte	0x15
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
	.byte	0x16
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x17
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x18
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
.LLST15:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL37
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL38-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL36
	.4byte	.LVL38-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL38-1
	.4byte	.LFE14
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL33
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL34-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL32
	.4byte	.LVL34-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL34-1
	.4byte	.LFE13
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL30-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL28
	.4byte	.LVL30-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL30-1
	.4byte	.LFE12
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL25
	.4byte	.LVL26-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL26-1
	.4byte	.LFE11
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL23-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL18
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL7-1
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x91
	.byte	0x6c
	.4byte	.LVL12
	.4byte	.LFE5
	.2byte	0x2
	.byte	0x72
	.byte	0x6c
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL5
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL8
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL11
	.4byte	.LFE5
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL3-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL3-1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x74
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
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
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
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF48:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF25:
	.string	"calloc"
.LASF26:
	.string	"realloc"
.LASF42:
	.string	"qcc74x_calloc"
.LASF40:
	.string	"kmem_init"
.LASF13:
	.string	"priv"
.LASF22:
	.string	"align"
.LASF19:
	.string	"g_pmemheap"
.LASF43:
	.string	"qcc74x_realloc"
.LASF3:
	.string	"short unsigned int"
.LASF2:
	.string	"short int"
.LASF36:
	.string	"xSize"
.LASF32:
	.string	"kcalloc"
.LASF34:
	.string	"kfree"
.LASF14:
	.string	"heapstart"
.LASF47:
	.string	"qcc74x_mem_init"
.LASF23:
	.string	"size"
.LASF27:
	.string	"newlen"
.LASF5:
	.string	"long unsigned int"
.LASF31:
	.string	"addr"
.LASF11:
	.string	"size_t"
.LASF37:
	.string	"kmalloc"
.LASF35:
	.string	"pvPortMallocStack"
.LASF33:
	.string	"vPortFreeStack"
.LASF46:
	.string	"memset"
.LASF24:
	.string	"memalign"
.LASF9:
	.string	"__uint32_t"
.LASF21:
	.string	"kfree_size"
.LASF38:
	.string	"flag"
.LASF41:
	.string	"qcc74x_malloc_align"
.LASF1:
	.string	"unsigned char"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF39:
	.string	"heap"
.LASF45:
	.string	"qcc74x_free"
.LASF18:
	.string	"g_kmemheap"
.LASF49:
	.string	"./components/mm/mem.c"
.LASF15:
	.string	"heapsize"
.LASF29:
	.string	"free"
.LASF6:
	.string	"long long int"
.LASF44:
	.string	"qcc74x_malloc"
.LASF12:
	.string	"char"
.LASF30:
	.string	"pmem_init"
.LASF50:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/mm"
.LASF17:
	.string	"min_free_bytes"
.LASF10:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF20:
	.string	"pfree_size"
.LASF0:
	.string	"signed char"
.LASF51:
	.string	"mem_heap_s"
.LASF16:
	.string	"free_bytes"
.LASF28:
	.string	"malloc"
	.ident	"GCC: (GNU) 10.4.0"
