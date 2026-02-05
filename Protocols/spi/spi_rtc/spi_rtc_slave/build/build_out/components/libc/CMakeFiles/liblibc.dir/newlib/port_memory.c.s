	.file	"port_memory.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._sbrk_r,"ax",@progbits
	.align	1
	.globl	_sbrk_r
	.type	_sbrk_r, @function
_sbrk_r:
.LFB4:
	.file 1 "./components/libc/newlib/port_memory.c"
	.loc 1 15 1
	.cfi_startproc
.LVL0:
	.loc 1 16 5
	.loc 1 16 19 is_stmt 0
	li	a5,88
	sw	a5,0(a0)
	.loc 1 17 5 is_stmt 1
	.loc 1 18 1 is_stmt 0
	li	a0,0
.LVL1:
	ret
	.cfi_endproc
.LFE4:
	.size	_sbrk_r, .-_sbrk_r
	.section	.text._malloc_r,"ax",@progbits
	.align	1
	.globl	_malloc_r
	.type	_malloc_r, @function
_malloc_r:
.LFB5:
	.loc 1 29 1 is_stmt 1
	.cfi_startproc
.LVL2:
	.loc 1 30 5
	.loc 1 32 5
	.loc 1 29 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 32 11
	lui	a0,%hi(g_kmemheap)
.LVL3:
	addi	a0,a0,%lo(g_kmemheap)
	.loc 1 29 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 32 11
	call	qcc74x_malloc
.LVL4:
	.loc 1 34 5 is_stmt 1
	.loc 1 34 8 is_stmt 0
	bne	a0,zero,.L2
	.loc 1 35 9 is_stmt 1
	.loc 1 35 23 is_stmt 0
	li	a5,12
	sw	a5,0(s0)
	.loc 1 38 5 is_stmt 1
.L2:
	.loc 1 39 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL5:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE5:
	.size	_malloc_r, .-_malloc_r
	.section	.text._realloc_r,"ax",@progbits
	.align	1
	.globl	_realloc_r
	.type	_realloc_r, @function
_realloc_r:
.LFB6:
	.loc 1 51 1 is_stmt 1
	.cfi_startproc
.LVL6:
	.loc 1 52 5
	.loc 1 54 5
	.loc 1 51 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 54 11
	lui	a0,%hi(g_kmemheap)
.LVL7:
	addi	a0,a0,%lo(g_kmemheap)
	.loc 1 51 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 54 11
	call	qcc74x_realloc
.LVL8:
	.loc 1 56 5 is_stmt 1
	.loc 1 56 8 is_stmt 0
	bne	a0,zero,.L5
	.loc 1 57 9 is_stmt 1
	.loc 1 57 23 is_stmt 0
	li	a5,12
	sw	a5,0(s0)
	.loc 1 60 5 is_stmt 1
.L5:
	.loc 1 61 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL9:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE6:
	.size	_realloc_r, .-_realloc_r
	.section	.text._calloc_r,"ax",@progbits
	.align	1
	.globl	_calloc_r
	.type	_calloc_r, @function
_calloc_r:
.LFB7:
	.loc 1 73 1 is_stmt 1
	.cfi_startproc
.LVL10:
	.loc 1 74 5
	.loc 1 76 5
	.loc 1 73 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 76 11
	lui	a0,%hi(g_kmemheap)
.LVL11:
	addi	a0,a0,%lo(g_kmemheap)
	.loc 1 73 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 76 11
	call	qcc74x_calloc
.LVL12:
	.loc 1 78 5 is_stmt 1
	.loc 1 78 8 is_stmt 0
	bne	a0,zero,.L8
	.loc 1 79 9 is_stmt 1
	.loc 1 79 23 is_stmt 0
	li	a5,12
	sw	a5,0(s0)
	.loc 1 82 5 is_stmt 1
.L8:
	.loc 1 83 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL13:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE7:
	.size	_calloc_r, .-_calloc_r
	.section	.text._memalign_r,"ax",@progbits
	.align	1
	.globl	_memalign_r
	.type	_memalign_r, @function
_memalign_r:
.LFB8:
	.loc 1 95 1 is_stmt 1
	.cfi_startproc
.LVL14:
	.loc 1 96 5
	.loc 1 98 5
	.loc 1 95 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	s0,8(sp)
	.cfi_offset 8, -8
	mv	s0,a0
	.loc 1 98 11
	lui	a0,%hi(g_kmemheap)
.LVL15:
	addi	a0,a0,%lo(g_kmemheap)
	.loc 1 95 1
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 98 11
	call	qcc74x_malloc_align
.LVL16:
	.loc 1 100 5 is_stmt 1
	.loc 1 100 8 is_stmt 0
	bne	a0,zero,.L11
	.loc 1 101 9 is_stmt 1
	.loc 1 101 23 is_stmt 0
	li	a5,12
	sw	a5,0(s0)
	.loc 1 104 5 is_stmt 1
.L11:
	.loc 1 105 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	lw	s0,8(sp)
	.cfi_restore 8
.LVL17:
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE8:
	.size	_memalign_r, .-_memalign_r
	.section	.text._free_r,"ax",@progbits
	.align	1
	.globl	_free_r
	.type	_free_r, @function
_free_r:
.LFB9:
	.loc 1 115 1 is_stmt 1
	.cfi_startproc
.LVL18:
	.loc 1 116 5
	.loc 1 116 8 is_stmt 0
	bne	a1,zero,.L15
	.loc 1 117 9 is_stmt 1
	.loc 1 117 23 is_stmt 0
	li	a5,22
	sw	a5,0(a0)
	.loc 1 118 9 is_stmt 1
	.loc 1 122 1 is_stmt 0
	ret
.L15:
	.loc 1 121 5 is_stmt 1
	lui	a0,%hi(g_kmemheap)
.LVL19:
	addi	a0,a0,%lo(g_kmemheap)
	tail	qcc74x_free
.LVL20:
	.cfi_endproc
.LFE9:
	.size	_free_r, .-_free_r
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/reent.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/lock.h"
	.file 6 "./components/mm/./mem.h"
	.file 7 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/reent.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xbcc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF144
	.byte	0xc
	.4byte	.LASF145
	.4byte	.LASF146
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x8f
	.byte	0xd
	.4byte	0x25
	.byte	0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x44
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF2
	.byte	0x5
	.4byte	.LASF3
	.byte	0x2
	.2byte	0x15e
	.byte	0x16
	.4byte	0x44
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF6
	.byte	0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF7
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.byte	0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2e
	.byte	0xe
	.4byte	0x74
	.byte	0x3
	.4byte	.LASF13
	.byte	0x3
	.byte	0x74
	.byte	0xe
	.4byte	0x74
	.byte	0x3
	.4byte	.LASF14
	.byte	0x3
	.byte	0x93
	.byte	0x14
	.4byte	0x25
	.byte	0x6
	.byte	0x4
	.byte	0x3
	.byte	0xa5
	.byte	0x3
	.4byte	0xd6
	.byte	0x7
	.4byte	.LASF15
	.byte	0x3
	.byte	0xa7
	.byte	0xc
	.4byte	0x4b
	.byte	0x7
	.4byte	.LASF16
	.byte	0x3
	.byte	0xa8
	.byte	0x13
	.4byte	0xd6
	.byte	0
	.byte	0x8
	.4byte	0x5f
	.4byte	0xe6
	.byte	0x9
	.4byte	0x44
	.byte	0x3
	.byte	0
	.byte	0xa
	.byte	0x8
	.byte	0x3
	.byte	0xa2
	.byte	0x9
	.4byte	0x10a
	.byte	0xb
	.4byte	.LASF17
	.byte	0x3
	.byte	0xa4
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xb
	.4byte	.LASF18
	.byte	0x3
	.byte	0xa9
	.byte	0x5
	.4byte	0xb4
	.byte	0x4
	.byte	0
	.byte	0x3
	.4byte	.LASF19
	.byte	0x3
	.byte	0xaa
	.byte	0x3
	.4byte	0xe6
	.byte	0xc
	.byte	0x4
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0x7b
	.byte	0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0x22
	.byte	0x19
	.4byte	0x130
	.byte	0xd
	.byte	0x4
	.4byte	0x136
	.byte	0xe
	.4byte	.LASF119
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x23
	.byte	0x11
	.4byte	0x124
	.byte	0xf
	.4byte	.LASF27
	.byte	0x18
	.byte	0x4
	.byte	0x34
	.byte	0x8
	.4byte	0x1a1
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x36
	.byte	0x13
	.4byte	0x1a1
	.byte	0
	.byte	0x10
	.string	"_k"
	.byte	0x4
	.byte	0x37
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.4byte	.LASF24
	.byte	0x4
	.byte	0x37
	.byte	0xb
	.4byte	0x25
	.byte	0x8
	.byte	0xb
	.4byte	.LASF25
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x25
	.byte	0xc
	.byte	0xb
	.4byte	.LASF26
	.byte	0x4
	.byte	0x37
	.byte	0x1b
	.4byte	0x25
	.byte	0x10
	.byte	0x10
	.string	"_x"
	.byte	0x4
	.byte	0x38
	.byte	0xb
	.4byte	0x1a7
	.byte	0x14
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x147
	.byte	0x8
	.4byte	0x118
	.4byte	0x1b7
	.byte	0x9
	.4byte	0x44
	.byte	0
	.byte	0
	.byte	0xf
	.4byte	.LASF28
	.byte	0x24
	.byte	0x4
	.byte	0x3c
	.byte	0x8
	.4byte	0x23a
	.byte	0xb
	.4byte	.LASF29
	.byte	0x4
	.byte	0x3e
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0xb
	.4byte	.LASF30
	.byte	0x4
	.byte	0x3f
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.4byte	.LASF31
	.byte	0x4
	.byte	0x40
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xb
	.4byte	.LASF32
	.byte	0x4
	.byte	0x41
	.byte	0x7
	.4byte	0x25
	.byte	0xc
	.byte	0xb
	.4byte	.LASF33
	.byte	0x4
	.byte	0x42
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0xb
	.4byte	.LASF34
	.byte	0x4
	.byte	0x43
	.byte	0x7
	.4byte	0x25
	.byte	0x14
	.byte	0xb
	.4byte	.LASF35
	.byte	0x4
	.byte	0x44
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xb
	.4byte	.LASF36
	.byte	0x4
	.byte	0x45
	.byte	0x7
	.4byte	0x25
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF37
	.byte	0x4
	.byte	0x46
	.byte	0x7
	.4byte	0x25
	.byte	0x20
	.byte	0
	.byte	0x11
	.4byte	.LASF38
	.2byte	0x108
	.byte	0x4
	.byte	0x4f
	.byte	0x8
	.4byte	0x27f
	.byte	0xb
	.4byte	.LASF39
	.byte	0x4
	.byte	0x50
	.byte	0x9
	.4byte	0x27f
	.byte	0
	.byte	0xb
	.4byte	.LASF40
	.byte	0x4
	.byte	0x51
	.byte	0x9
	.4byte	0x27f
	.byte	0x80
	.byte	0x12
	.4byte	.LASF41
	.byte	0x4
	.byte	0x53
	.byte	0xa
	.4byte	0x118
	.2byte	0x100
	.byte	0x12
	.4byte	.LASF42
	.byte	0x4
	.byte	0x56
	.byte	0xa
	.4byte	0x118
	.2byte	0x104
	.byte	0
	.byte	0x8
	.4byte	0x116
	.4byte	0x28f
	.byte	0x9
	.4byte	0x44
	.byte	0x1f
	.byte	0
	.byte	0x11
	.4byte	.LASF43
	.2byte	0x190
	.byte	0x4
	.byte	0x62
	.byte	0x8
	.4byte	0x2d2
	.byte	0xb
	.4byte	.LASF23
	.byte	0x4
	.byte	0x63
	.byte	0x12
	.4byte	0x2d2
	.byte	0
	.byte	0xb
	.4byte	.LASF44
	.byte	0x4
	.byte	0x64
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0xb
	.4byte	.LASF45
	.byte	0x4
	.byte	0x66
	.byte	0x9
	.4byte	0x2d8
	.byte	0x8
	.byte	0xb
	.4byte	.LASF38
	.byte	0x4
	.byte	0x67
	.byte	0x1e
	.4byte	0x23a
	.byte	0x88
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x28f
	.byte	0x8
	.4byte	0x2e8
	.4byte	0x2e8
	.byte	0x9
	.4byte	0x44
	.byte	0x1f
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x2ee
	.byte	0x13
	.byte	0xf
	.4byte	.LASF46
	.byte	0x8
	.byte	0x4
	.byte	0x7a
	.byte	0x8
	.4byte	0x317
	.byte	0xb
	.4byte	.LASF47
	.byte	0x4
	.byte	0x7b
	.byte	0x11
	.4byte	0x317
	.byte	0
	.byte	0xb
	.4byte	.LASF48
	.byte	0x4
	.byte	0x7c
	.byte	0x6
	.4byte	0x25
	.byte	0x4
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x5f
	.byte	0xf
	.4byte	.LASF49
	.byte	0x68
	.byte	0x4
	.byte	0xba
	.byte	0x8
	.4byte	0x460
	.byte	0x10
	.string	"_p"
	.byte	0x4
	.byte	0xbb
	.byte	0x12
	.4byte	0x317
	.byte	0
	.byte	0x10
	.string	"_r"
	.byte	0x4
	.byte	0xbc
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x10
	.string	"_w"
	.byte	0x4
	.byte	0xbd
	.byte	0x7
	.4byte	0x25
	.byte	0x8
	.byte	0xb
	.4byte	.LASF50
	.byte	0x4
	.byte	0xbe
	.byte	0x9
	.4byte	0x66
	.byte	0xc
	.byte	0xb
	.4byte	.LASF51
	.byte	0x4
	.byte	0xbf
	.byte	0x9
	.4byte	0x66
	.byte	0xe
	.byte	0x10
	.string	"_bf"
	.byte	0x4
	.byte	0xc0
	.byte	0x11
	.4byte	0x2ef
	.byte	0x10
	.byte	0xb
	.4byte	.LASF52
	.byte	0x4
	.byte	0xc1
	.byte	0x7
	.4byte	0x25
	.byte	0x18
	.byte	0xb
	.4byte	.LASF53
	.byte	0x4
	.byte	0xc8
	.byte	0xa
	.4byte	0x116
	.byte	0x1c
	.byte	0xb
	.4byte	.LASF54
	.byte	0x4
	.byte	0xca
	.byte	0xe
	.4byte	0x5df
	.byte	0x20
	.byte	0xb
	.4byte	.LASF55
	.byte	0x4
	.byte	0xcc
	.byte	0xe
	.4byte	0x609
	.byte	0x24
	.byte	0xb
	.4byte	.LASF56
	.byte	0x4
	.byte	0xcf
	.byte	0xd
	.4byte	0x62d
	.byte	0x28
	.byte	0xb
	.4byte	.LASF57
	.byte	0x4
	.byte	0xd0
	.byte	0x9
	.4byte	0x647
	.byte	0x2c
	.byte	0x10
	.string	"_ub"
	.byte	0x4
	.byte	0xd3
	.byte	0x11
	.4byte	0x2ef
	.byte	0x30
	.byte	0x10
	.string	"_up"
	.byte	0x4
	.byte	0xd4
	.byte	0x12
	.4byte	0x317
	.byte	0x38
	.byte	0x10
	.string	"_ur"
	.byte	0x4
	.byte	0xd5
	.byte	0x7
	.4byte	0x25
	.byte	0x3c
	.byte	0xb
	.4byte	.LASF58
	.byte	0x4
	.byte	0xd8
	.byte	0x11
	.4byte	0x64d
	.byte	0x40
	.byte	0xb
	.4byte	.LASF59
	.byte	0x4
	.byte	0xd9
	.byte	0x11
	.4byte	0x65d
	.byte	0x43
	.byte	0x10
	.string	"_lb"
	.byte	0x4
	.byte	0xdc
	.byte	0x11
	.4byte	0x2ef
	.byte	0x44
	.byte	0xb
	.4byte	.LASF60
	.byte	0x4
	.byte	0xdf
	.byte	0x7
	.4byte	0x25
	.byte	0x4c
	.byte	0xb
	.4byte	.LASF61
	.byte	0x4
	.byte	0xe0
	.byte	0xa
	.4byte	0x90
	.byte	0x50
	.byte	0xb
	.4byte	.LASF62
	.byte	0x4
	.byte	0xe3
	.byte	0x12
	.4byte	0x47e
	.byte	0x54
	.byte	0xb
	.4byte	.LASF63
	.byte	0x4
	.byte	0xe7
	.byte	0xc
	.4byte	0x13b
	.byte	0x58
	.byte	0xb
	.4byte	.LASF64
	.byte	0x4
	.byte	0xe9
	.byte	0xe
	.4byte	0x10a
	.byte	0x5c
	.byte	0xb
	.4byte	.LASF65
	.byte	0x4
	.byte	0xea
	.byte	0x7
	.4byte	0x25
	.byte	0x64
	.byte	0
	.byte	0x14
	.4byte	0xa8
	.4byte	0x47e
	.byte	0x15
	.4byte	0x47e
	.byte	0x15
	.4byte	0x116
	.byte	0x15
	.4byte	0x5cd
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x484
	.byte	0x16
	.4byte	.LASF66
	.2byte	0x428
	.byte	0x4
	.2byte	0x265
	.byte	0x8
	.4byte	0x5cd
	.byte	0x17
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x267
	.byte	0x7
	.4byte	0x25
	.byte	0
	.byte	0x17
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x26c
	.byte	0xb
	.4byte	0x6b9
	.byte	0x4
	.byte	0x17
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x26c
	.byte	0x14
	.4byte	0x6b9
	.byte	0x8
	.byte	0x17
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x26c
	.byte	0x1e
	.4byte	0x6b9
	.byte	0xc
	.byte	0x17
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x26e
	.byte	0x7
	.4byte	0x25
	.byte	0x10
	.byte	0x17
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x26f
	.byte	0x8
	.4byte	0x8b9
	.byte	0x14
	.byte	0x17
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x272
	.byte	0x7
	.4byte	0x25
	.byte	0x30
	.byte	0x17
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x273
	.byte	0x16
	.4byte	0x8ce
	.byte	0x34
	.byte	0x17
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x275
	.byte	0x7
	.4byte	0x25
	.byte	0x38
	.byte	0x17
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x277
	.byte	0xa
	.4byte	0x8df
	.byte	0x3c
	.byte	0x17
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x27a
	.byte	0x13
	.4byte	0x1a1
	.byte	0x40
	.byte	0x17
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x27b
	.byte	0x7
	.4byte	0x25
	.byte	0x44
	.byte	0x17
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x27c
	.byte	0x13
	.4byte	0x1a1
	.byte	0x48
	.byte	0x17
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x27d
	.byte	0x14
	.4byte	0x8e5
	.byte	0x4c
	.byte	0x17
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x280
	.byte	0x7
	.4byte	0x25
	.byte	0x50
	.byte	0x17
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x281
	.byte	0x9
	.4byte	0x5cd
	.byte	0x54
	.byte	0x17
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x2a4
	.byte	0x7
	.4byte	0x894
	.byte	0x58
	.byte	0x18
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x2a8
	.byte	0x13
	.4byte	0x2d2
	.2byte	0x148
	.byte	0x18
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x2a9
	.byte	0x12
	.4byte	0x28f
	.2byte	0x14c
	.byte	0x18
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x2ad
	.byte	0xc
	.4byte	0x8f6
	.2byte	0x2dc
	.byte	0x18
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x2b2
	.byte	0x10
	.4byte	0x67a
	.2byte	0x2e0
	.byte	0x18
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x2b4
	.byte	0xa
	.4byte	0x902
	.2byte	0x2ec
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x5d3
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF88
	.byte	0x19
	.4byte	0x5d3
	.byte	0xd
	.byte	0x4
	.4byte	0x460
	.byte	0x14
	.4byte	0xa8
	.4byte	0x603
	.byte	0x15
	.4byte	0x47e
	.byte	0x15
	.4byte	0x116
	.byte	0x15
	.4byte	0x603
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x5da
	.byte	0xd
	.byte	0x4
	.4byte	0x5e5
	.byte	0x14
	.4byte	0x9c
	.4byte	0x62d
	.byte	0x15
	.4byte	0x47e
	.byte	0x15
	.4byte	0x116
	.byte	0x15
	.4byte	0x9c
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x60f
	.byte	0x14
	.4byte	0x25
	.4byte	0x647
	.byte	0x15
	.4byte	0x47e
	.byte	0x15
	.4byte	0x116
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x633
	.byte	0x8
	.4byte	0x5f
	.4byte	0x65d
	.byte	0x9
	.4byte	0x44
	.byte	0x2
	.byte	0
	.byte	0x8
	.4byte	0x5f
	.4byte	0x66d
	.byte	0x9
	.4byte	0x44
	.byte	0
	.byte	0
	.byte	0x5
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x124
	.byte	0x18
	.4byte	0x31d
	.byte	0x1a
	.4byte	.LASF90
	.byte	0xc
	.byte	0x4
	.2byte	0x128
	.byte	0x8
	.4byte	0x6b3
	.byte	0x17
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x12a
	.byte	0x11
	.4byte	0x6b3
	.byte	0
	.byte	0x17
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x12b
	.byte	0x7
	.4byte	0x25
	.byte	0x4
	.byte	0x17
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x12c
	.byte	0xb
	.4byte	0x6b9
	.byte	0x8
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x67a
	.byte	0xd
	.byte	0x4
	.4byte	0x66d
	.byte	0x1a
	.4byte	.LASF93
	.byte	0xe
	.byte	0x4
	.2byte	0x144
	.byte	0x8
	.4byte	0x6f8
	.byte	0x17
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x145
	.byte	0x12
	.4byte	0x6f8
	.byte	0
	.byte	0x17
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x146
	.byte	0x12
	.4byte	0x6f8
	.byte	0x6
	.byte	0x17
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x147
	.byte	0x12
	.4byte	0x6d
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	0x6d
	.4byte	0x708
	.byte	0x9
	.4byte	0x44
	.byte	0x2
	.byte	0
	.byte	0x1b
	.byte	0xd0
	.byte	0x4
	.2byte	0x285
	.byte	0x7
	.4byte	0x81d
	.byte	0x17
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x287
	.byte	0x18
	.4byte	0x44
	.byte	0
	.byte	0x17
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x288
	.byte	0x12
	.4byte	0x5cd
	.byte	0x4
	.byte	0x17
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x289
	.byte	0x10
	.4byte	0x81d
	.byte	0x8
	.byte	0x17
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x28a
	.byte	0x17
	.4byte	0x1b7
	.byte	0x24
	.byte	0x17
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x28b
	.byte	0xf
	.4byte	0x25
	.byte	0x48
	.byte	0x17
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x28c
	.byte	0x2c
	.4byte	0x89
	.byte	0x50
	.byte	0x17
	.4byte	.LASF103
	.byte	0x4
	.2byte	0x28d
	.byte	0x1a
	.4byte	0x6bf
	.byte	0x58
	.byte	0x17
	.4byte	.LASF104
	.byte	0x4
	.2byte	0x28e
	.byte	0x16
	.4byte	0x10a
	.byte	0x68
	.byte	0x17
	.4byte	.LASF105
	.byte	0x4
	.2byte	0x28f
	.byte	0x16
	.4byte	0x10a
	.byte	0x70
	.byte	0x17
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x290
	.byte	0x16
	.4byte	0x10a
	.byte	0x78
	.byte	0x17
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x291
	.byte	0x10
	.4byte	0x82d
	.byte	0x80
	.byte	0x17
	.4byte	.LASF108
	.byte	0x4
	.2byte	0x292
	.byte	0x10
	.4byte	0x83d
	.byte	0x88
	.byte	0x17
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x293
	.byte	0xf
	.4byte	0x25
	.byte	0xa0
	.byte	0x17
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x294
	.byte	0x16
	.4byte	0x10a
	.byte	0xa4
	.byte	0x17
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x295
	.byte	0x16
	.4byte	0x10a
	.byte	0xac
	.byte	0x17
	.4byte	.LASF112
	.byte	0x4
	.2byte	0x296
	.byte	0x16
	.4byte	0x10a
	.byte	0xb4
	.byte	0x17
	.4byte	.LASF113
	.byte	0x4
	.2byte	0x297
	.byte	0x16
	.4byte	0x10a
	.byte	0xbc
	.byte	0x17
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x298
	.byte	0x16
	.4byte	0x10a
	.byte	0xc4
	.byte	0x17
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x299
	.byte	0x8
	.4byte	0x25
	.byte	0xcc
	.byte	0
	.byte	0x8
	.4byte	0x5d3
	.4byte	0x82d
	.byte	0x9
	.4byte	0x44
	.byte	0x19
	.byte	0
	.byte	0x8
	.4byte	0x5d3
	.4byte	0x83d
	.byte	0x9
	.4byte	0x44
	.byte	0x7
	.byte	0
	.byte	0x8
	.4byte	0x5d3
	.4byte	0x84d
	.byte	0x9
	.4byte	0x44
	.byte	0x17
	.byte	0
	.byte	0x1b
	.byte	0xf0
	.byte	0x4
	.2byte	0x29e
	.byte	0x7
	.4byte	0x874
	.byte	0x17
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x2a1
	.byte	0x1b
	.4byte	0x874
	.byte	0
	.byte	0x17
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x2a2
	.byte	0x18
	.4byte	0x884
	.byte	0x78
	.byte	0
	.byte	0x8
	.4byte	0x317
	.4byte	0x884
	.byte	0x9
	.4byte	0x44
	.byte	0x1d
	.byte	0
	.byte	0x8
	.4byte	0x44
	.4byte	0x894
	.byte	0x9
	.4byte	0x44
	.byte	0x1d
	.byte	0
	.byte	0x1c
	.byte	0xf0
	.byte	0x4
	.2byte	0x283
	.byte	0x3
	.4byte	0x8b9
	.byte	0x1d
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x29a
	.byte	0xb
	.4byte	0x708
	.byte	0x1d
	.4byte	.LASF118
	.byte	0x4
	.2byte	0x2a3
	.byte	0xb
	.4byte	0x84d
	.byte	0
	.byte	0x8
	.4byte	0x5d3
	.4byte	0x8c9
	.byte	0x9
	.4byte	0x44
	.byte	0x18
	.byte	0
	.byte	0xe
	.4byte	.LASF120
	.byte	0xd
	.byte	0x4
	.4byte	0x8c9
	.byte	0x1e
	.4byte	0x8df
	.byte	0x15
	.4byte	0x47e
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x8d4
	.byte	0xd
	.byte	0x4
	.4byte	0x1a1
	.byte	0x1e
	.4byte	0x8f6
	.byte	0x15
	.4byte	0x25
	.byte	0
	.byte	0xd
	.byte	0x4
	.4byte	0x8fc
	.byte	0xd
	.byte	0x4
	.4byte	0x8eb
	.byte	0x8
	.4byte	0x66d
	.4byte	0x912
	.byte	0x9
	.4byte	0x44
	.byte	0x2
	.byte	0
	.byte	0xf
	.4byte	.LASF121
	.byte	0x14
	.byte	0x6
	.byte	0x51
	.byte	0x8
	.4byte	0x961
	.byte	0xb
	.4byte	.LASF122
	.byte	0x6
	.byte	0x52
	.byte	0xb
	.4byte	0x116
	.byte	0
	.byte	0xb
	.4byte	.LASF123
	.byte	0x6
	.byte	0x53
	.byte	0xb
	.4byte	0x116
	.byte	0x4
	.byte	0xb
	.4byte	.LASF124
	.byte	0x6
	.byte	0x54
	.byte	0xc
	.4byte	0x38
	.byte	0x8
	.byte	0xb
	.4byte	.LASF125
	.byte	0x6
	.byte	0x55
	.byte	0xc
	.4byte	0x38
	.byte	0xc
	.byte	0xb
	.4byte	.LASF126
	.byte	0x6
	.byte	0x56
	.byte	0xc
	.4byte	0x38
	.byte	0x10
	.byte	0
	.byte	0x1f
	.4byte	.LASF147
	.byte	0x6
	.byte	0x65
	.byte	0x1a
	.4byte	0x912
	.byte	0x20
	.4byte	.LASF148
	.byte	0x1
	.byte	0x72
	.byte	0x6
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x9ad
	.byte	0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x72
	.byte	0x1d
	.4byte	0x47e
	.4byte	.LLST12
	.byte	0x21
	.4byte	.LASF128
	.byte	0x1
	.byte	0x72
	.byte	0x2a
	.4byte	0x116
	.4byte	.LLST13
	.byte	0x22
	.4byte	.LVL20
	.4byte	0xb93
	.byte	0
	.byte	0x23
	.4byte	.LASF131
	.byte	0x1
	.byte	0x5e
	.byte	0x7
	.4byte	0x116
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0xa1e
	.byte	0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x5e
	.byte	0x22
	.4byte	0x47e
	.4byte	.LLST9
	.byte	0x21
	.4byte	.LASF129
	.byte	0x1
	.byte	0x5e
	.byte	0x30
	.4byte	0x38
	.4byte	.LLST10
	.byte	0x21
	.4byte	.LASF130
	.byte	0x1
	.byte	0x5e
	.byte	0x3e
	.4byte	0x38
	.4byte	.LLST11
	.byte	0x24
	.string	"mem"
	.byte	0x1
	.byte	0x60
	.byte	0xb
	.4byte	0x116
	.byte	0x1
	.byte	0x5a
	.byte	0x25
	.4byte	.LVL16
	.4byte	0xb9f
	.byte	0x26
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x26
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF132
	.byte	0x1
	.byte	0x48
	.byte	0x7
	.4byte	0x116
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0xa8f
	.byte	0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x48
	.byte	0x20
	.4byte	0x47e
	.4byte	.LLST6
	.byte	0x21
	.4byte	.LASF133
	.byte	0x1
	.byte	0x48
	.byte	0x2e
	.4byte	0x38
	.4byte	.LLST7
	.byte	0x21
	.4byte	.LASF130
	.byte	0x1
	.byte	0x48
	.byte	0x3c
	.4byte	0x38
	.4byte	.LLST8
	.byte	0x24
	.string	"mem"
	.byte	0x1
	.byte	0x4a
	.byte	0xb
	.4byte	0x116
	.byte	0x1
	.byte	0x5a
	.byte	0x25
	.4byte	.LVL12
	.4byte	0xbab
	.byte	0x26
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x26
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF134
	.byte	0x1
	.byte	0x32
	.byte	0x7
	.4byte	0x116
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0xb00
	.byte	0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x32
	.byte	0x21
	.4byte	0x47e
	.4byte	.LLST3
	.byte	0x27
	.string	"old"
	.byte	0x1
	.byte	0x32
	.byte	0x2e
	.4byte	0x116
	.4byte	.LLST4
	.byte	0x21
	.4byte	.LASF135
	.byte	0x1
	.byte	0x32
	.byte	0x3a
	.4byte	0x38
	.4byte	.LLST5
	.byte	0x24
	.string	"mem"
	.byte	0x1
	.byte	0x34
	.byte	0xb
	.4byte	0x116
	.byte	0x1
	.byte	0x5a
	.byte	0x25
	.4byte	.LVL8
	.4byte	0xbb7
	.byte	0x26
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x26
	.byte	0x1
	.byte	0x5c
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF136
	.byte	0x1
	.byte	0x1c
	.byte	0x7
	.4byte	0x116
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0xb5a
	.byte	0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0x1c
	.byte	0x20
	.4byte	0x47e
	.4byte	.LLST1
	.byte	0x21
	.4byte	.LASF130
	.byte	0x1
	.byte	0x1c
	.byte	0x2e
	.4byte	0x38
	.4byte	.LLST2
	.byte	0x24
	.string	"mem"
	.byte	0x1
	.byte	0x1e
	.byte	0xb
	.4byte	0x116
	.byte	0x1
	.byte	0x5a
	.byte	0x25
	.4byte	.LVL4
	.4byte	0xbc3
	.byte	0x26
	.byte	0x1
	.byte	0x5b
	.byte	0x3
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0
	.byte	0x23
	.4byte	.LASF137
	.byte	0x7
	.byte	0x99
	.byte	0xe
	.4byte	0x116
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0xb93
	.byte	0x21
	.4byte	.LASF127
	.byte	0x1
	.byte	0xe
	.byte	0x1e
	.4byte	0x47e
	.4byte	.LLST0
	.byte	0x28
	.4byte	.LASF138
	.byte	0x1
	.byte	0xe
	.byte	0x2f
	.4byte	0x2c
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x29
	.4byte	.LASF139
	.4byte	.LASF139
	.byte	0x6
	.byte	0xb0
	.byte	0x6
	.byte	0x29
	.4byte	.LASF140
	.4byte	.LASF140
	.byte	0x6
	.byte	0xb6
	.byte	0x7
	.byte	0x29
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0x6
	.byte	0xb4
	.byte	0x7
	.byte	0x29
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0x6
	.byte	0xb2
	.byte	0x7
	.byte	0x29
	.4byte	.LASF143
	.4byte	.LASF143
	.byte	0x6
	.byte	0xae
	.byte	0x7
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
	.byte	0x8
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
	.byte	0xe
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0x16
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
	.byte	0x6
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
	.byte	0
	.byte	0
	.byte	0x8
	.byte	0x1
	.byte	0x1
	.byte	0x49
	.byte	0x13
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0x21
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0x2f
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xa
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
	.byte	0xb
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
	.byte	0xc
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0xd
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0x13
	.byte	0
	.byte	0x3
	.byte	0xe
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x12
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x13
	.byte	0x15
	.byte	0
	.byte	0x27
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x14
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
	.byte	0x15
	.byte	0x5
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x16
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0xe
	.byte	0xb
	.byte	0x5
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
	.byte	0x17
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
	.byte	0x18
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
	.byte	0x5
	.byte	0
	.byte	0
	.byte	0x19
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x1a
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
	.byte	0x1b
	.byte	0x13
	.byte	0x1
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
	.byte	0x1c
	.byte	0x17
	.byte	0x1
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
	.byte	0x1d
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
	.byte	0
	.byte	0
	.byte	0x1e
	.byte	0x15
	.byte	0x1
	.byte	0x27
	.byte	0x19
	.byte	0x1
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
	.byte	0x3f
	.byte	0x19
	.byte	0x3c
	.byte	0x19
	.byte	0
	.byte	0
	.byte	0x20
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
	.byte	0x21
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
	.byte	0x22
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
	.byte	0x23
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
	.byte	0x24
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
	.byte	0x25
	.byte	0x89,0x82,0x1
	.byte	0x1
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x26
	.byte	0x8a,0x82,0x1
	.byte	0
	.byte	0x2
	.byte	0x18
	.byte	0x91,0x42
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0x27
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
	.byte	0x28
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST12:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL18
	.4byte	.LVL20-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL20-1
	.4byte	.LFE9
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL17
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL16-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL14
	.4byte	.LVL16-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16-1
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL11
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL13
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL10
	.4byte	.LVL12-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL12-1
	.4byte	.LFE7
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL9
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL8-1
	.4byte	.LFE6
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
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
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4-1
	.4byte	.LFE5
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
	.byte	0x5a
	.4byte	.LVL1
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
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
.LASF40:
	.string	"_dso_handle"
.LASF131:
	.string	"_memalign_r"
.LASF48:
	.string	"_size"
.LASF1:
	.string	"size_t"
.LASF93:
	.string	"_rand48"
.LASF72:
	.string	"_emergency"
.LASF62:
	.string	"_data"
.LASF113:
	.string	"_wcrtomb_state"
.LASF145:
	.string	"./components/libc/newlib/port_memory.c"
.LASF11:
	.string	"long long unsigned int"
.LASF52:
	.string	"_lbfsize"
.LASF128:
	.string	"addr"
.LASF120:
	.string	"__locale_t"
.LASF111:
	.string	"_mbrtowc_state"
.LASF29:
	.string	"__tm_sec"
.LASF10:
	.string	"long long int"
.LASF4:
	.string	"signed char"
.LASF58:
	.string	"_ubuf"
.LASF47:
	.string	"_base"
.LASF31:
	.string	"__tm_hour"
.LASF87:
	.string	"__sf"
.LASF38:
	.string	"_on_exit_args"
.LASF126:
	.string	"min_free_bytes"
.LASF53:
	.string	"_cookie"
.LASF86:
	.string	"__sglue"
.LASF8:
	.string	"long int"
.LASF134:
	.string	"_realloc_r"
.LASF50:
	.string	"_flags"
.LASF42:
	.string	"_is_cxa"
.LASF68:
	.string	"_stdin"
.LASF60:
	.string	"_blksize"
.LASF135:
	.string	"newlen"
.LASF124:
	.string	"heapsize"
.LASF82:
	.string	"_cvtbuf"
.LASF61:
	.string	"_offset"
.LASF112:
	.string	"_mbsrtowcs_state"
.LASF110:
	.string	"_mbrlen_state"
.LASF39:
	.string	"_fnargs"
.LASF45:
	.string	"_fns"
.LASF138:
	.string	"incr"
.LASF25:
	.string	"_sign"
.LASF22:
	.string	"_flock_t"
.LASF70:
	.string	"_stderr"
.LASF27:
	.string	"_Bigint"
.LASF101:
	.string	"_gamma_signgam"
.LASF54:
	.string	"_read"
.LASF78:
	.string	"_result_k"
.LASF129:
	.string	"align"
.LASF28:
	.string	"__tm"
.LASF2:
	.string	"unsigned int"
.LASF16:
	.string	"__wchb"
.LASF114:
	.string	"_wcsrtombs_state"
.LASF69:
	.string	"_stdout"
.LASF81:
	.string	"_cvtlen"
.LASF9:
	.string	"long unsigned int"
.LASF51:
	.string	"_file"
.LASF91:
	.string	"_niobs"
.LASF130:
	.string	"size"
.LASF7:
	.string	"short unsigned int"
.LASF84:
	.string	"_atexit0"
.LASF108:
	.string	"_signal_buf"
.LASF99:
	.string	"_asctime_buf"
.LASF77:
	.string	"_result"
.LASF15:
	.string	"__wch"
.LASF21:
	.string	"_LOCK_T"
.LASF3:
	.string	"wint_t"
.LASF132:
	.string	"_calloc_r"
.LASF63:
	.string	"_lock"
.LASF65:
	.string	"_flags2"
.LASF144:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF0:
	.string	"ptrdiff_t"
.LASF55:
	.string	"_write"
.LASF34:
	.string	"__tm_year"
.LASF117:
	.string	"_nmalloc"
.LASF142:
	.string	"qcc74x_realloc"
.LASF116:
	.string	"_nextf"
.LASF139:
	.string	"qcc74x_free"
.LASF33:
	.string	"__tm_mon"
.LASF121:
	.string	"mem_heap_s"
.LASF43:
	.string	"_atexit"
.LASF75:
	.string	"__sdidinit"
.LASF12:
	.string	"_off_t"
.LASF122:
	.string	"priv"
.LASF80:
	.string	"_freelist"
.LASF106:
	.string	"_wctomb_state"
.LASF146:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/libc"
.LASF140:
	.string	"qcc74x_malloc_align"
.LASF148:
	.string	"_free_r"
.LASF5:
	.string	"unsigned char"
.LASF83:
	.string	"_new"
.LASF115:
	.string	"_h_errno"
.LASF6:
	.string	"short int"
.LASF36:
	.string	"__tm_yday"
.LASF46:
	.string	"__sbuf"
.LASF92:
	.string	"_iobs"
.LASF89:
	.string	"__FILE"
.LASF19:
	.string	"_mbstate_t"
.LASF49:
	.string	"__sFILE"
.LASF141:
	.string	"qcc74x_calloc"
.LASF64:
	.string	"_mbstate"
.LASF102:
	.string	"_rand_next"
.LASF104:
	.string	"_mblen_state"
.LASF71:
	.string	"_inc"
.LASF44:
	.string	"_ind"
.LASF136:
	.string	"_malloc_r"
.LASF74:
	.string	"_locale"
.LASF76:
	.string	"__cleanup"
.LASF73:
	.string	"_unspecified_locale_info"
.LASF24:
	.string	"_maxwds"
.LASF66:
	.string	"_reent"
.LASF94:
	.string	"_seed"
.LASF127:
	.string	"reent"
.LASF17:
	.string	"__count"
.LASF119:
	.string	"__lock"
.LASF18:
	.string	"__value"
.LASF56:
	.string	"_seek"
.LASF13:
	.string	"_fpos_t"
.LASF67:
	.string	"_errno"
.LASF88:
	.string	"char"
.LASF30:
	.string	"__tm_min"
.LASF95:
	.string	"_mult"
.LASF23:
	.string	"_next"
.LASF98:
	.string	"_strtok_last"
.LASF143:
	.string	"qcc74x_malloc"
.LASF41:
	.string	"_fntypes"
.LASF125:
	.string	"free_bytes"
.LASF96:
	.string	"_add"
.LASF20:
	.string	"__ULong"
.LASF109:
	.string	"_getdate_err"
.LASF137:
	.string	"_sbrk_r"
.LASF97:
	.string	"_unused_rand"
.LASF26:
	.string	"_wds"
.LASF35:
	.string	"__tm_wday"
.LASF90:
	.string	"_glue"
.LASF147:
	.string	"g_kmemheap"
.LASF14:
	.string	"_ssize_t"
.LASF107:
	.string	"_l64a_buf"
.LASF85:
	.string	"_sig_func"
.LASF59:
	.string	"_nbuf"
.LASF118:
	.string	"_unused"
.LASF37:
	.string	"__tm_isdst"
.LASF100:
	.string	"_localtime_buf"
.LASF57:
	.string	"_close"
.LASF103:
	.string	"_r48"
.LASF105:
	.string	"_mbtowc_state"
.LASF79:
	.string	"_p5s"
.LASF123:
	.string	"heapstart"
.LASF32:
	.string	"__tm_mday"
.LASF133:
	.string	"nmenb"
	.ident	"GCC: (GNU) 10.4.0"
