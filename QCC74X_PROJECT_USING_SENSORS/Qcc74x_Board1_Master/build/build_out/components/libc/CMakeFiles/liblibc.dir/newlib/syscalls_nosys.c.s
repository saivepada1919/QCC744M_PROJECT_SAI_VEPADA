	.file	"syscalls_nosys.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._exit,"ax",@progbits
	.align	1
	.globl	_exit
	.type	_exit, @function
_exit:
.LFB22:
	.file 1 "./components/libc/newlib/syscalls_nosys.c"
	.loc 1 15 1
	.cfi_startproc
.LVL0:
.L2:
	.loc 1 16 5 discriminator 1
	.loc 1 17 9 discriminator 1
	.loc 1 16 11 discriminator 1
	j	.L2
	.cfi_endproc
.LFE22:
	.size	_exit, .-_exit
	.section	.text._chown,"ax",@progbits
	.align	1
	.globl	_chown
	.type	_chown, @function
_chown:
.LFB23:
	.loc 1 21 1
	.cfi_startproc
.LVL1:
	.loc 1 22 5
	.loc 1 22 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 23 5 is_stmt 1
	.loc 1 24 1 is_stmt 0
	li	a0,-1
.LVL2:
	ret
	.cfi_endproc
.LFE23:
	.size	_chown, .-_chown
	.section	.text._close,"ax",@progbits
	.align	1
	.globl	_close
	.type	_close, @function
_close:
.LFB24:
	.loc 1 27 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 28 5
	.loc 1 28 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 29 5 is_stmt 1
	.loc 1 30 1 is_stmt 0
	li	a0,-1
.LVL4:
	ret
	.cfi_endproc
.LFE24:
	.size	_close, .-_close
	.section	.text._execve,"ax",@progbits
	.align	1
	.globl	_execve
	.type	_execve, @function
_execve:
.LFB25:
	.loc 1 33 1 is_stmt 1
	.cfi_startproc
.LVL5:
	.loc 1 34 5
	.loc 1 34 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 35 5 is_stmt 1
	.loc 1 36 1 is_stmt 0
	li	a0,-1
.LVL6:
	ret
	.cfi_endproc
.LFE25:
	.size	_execve, .-_execve
	.section	.text._fork,"ax",@progbits
	.align	1
	.globl	_fork
	.type	_fork, @function
_fork:
.LFB26:
	.loc 1 39 1 is_stmt 1
	.cfi_startproc
	.loc 1 40 5
	.loc 1 40 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 41 5 is_stmt 1
	.loc 1 42 1 is_stmt 0
	li	a0,-1
	ret
	.cfi_endproc
.LFE26:
	.size	_fork, .-_fork
	.section	.text._fstat,"ax",@progbits
	.align	1
	.globl	_fstat
	.type	_fstat, @function
_fstat:
.LFB27:
	.loc 1 45 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 46 5
	.loc 1 46 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 47 5 is_stmt 1
	.loc 1 48 1 is_stmt 0
	li	a0,-1
.LVL8:
	ret
	.cfi_endproc
.LFE27:
	.size	_fstat, .-_fstat
	.section	.text._getpid,"ax",@progbits
	.align	1
	.globl	_getpid
	.type	_getpid, @function
_getpid:
.LFB49:
	.cfi_startproc
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	li	a0,-1
	ret
	.cfi_endproc
.LFE49:
	.size	_getpid, .-_getpid
	.section	.text._gettimeofday,"ax",@progbits
	.align	1
	.globl	_gettimeofday
	.type	_gettimeofday, @function
_gettimeofday:
.LFB29:
	.loc 1 57 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 58 5
	.loc 1 58 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 59 5 is_stmt 1
	.loc 1 60 1 is_stmt 0
	li	a0,-1
.LVL10:
	ret
	.cfi_endproc
.LFE29:
	.size	_gettimeofday, .-_gettimeofday
	.section	.text._isatty,"ax",@progbits
	.align	1
	.globl	_isatty
	.type	_isatty, @function
_isatty:
.LFB30:
	.loc 1 63 1 is_stmt 1
	.cfi_startproc
.LVL11:
	.loc 1 64 5
	.loc 1 64 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 65 5 is_stmt 1
	.loc 1 66 1 is_stmt 0
	li	a0,0
.LVL12:
	ret
	.cfi_endproc
.LFE30:
	.size	_isatty, .-_isatty
	.section	.text._kill,"ax",@progbits
	.align	1
	.globl	_kill
	.type	_kill, @function
_kill:
.LFB31:
	.loc 1 69 1 is_stmt 1
	.cfi_startproc
.LVL13:
	.loc 1 70 5
	.loc 1 70 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 71 5 is_stmt 1
	.loc 1 72 1 is_stmt 0
	li	a0,-1
.LVL14:
	ret
	.cfi_endproc
.LFE31:
	.size	_kill, .-_kill
	.section	.text._link,"ax",@progbits
	.align	1
	.globl	_link
	.type	_link, @function
_link:
.LFB51:
	.cfi_startproc
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	li	a0,-1
	ret
	.cfi_endproc
.LFE51:
	.size	_link, .-_link
	.section	.text._lseek,"ax",@progbits
	.align	1
	.globl	_lseek
	.type	_lseek, @function
_lseek:
.LFB33:
	.loc 1 81 1 is_stmt 1
	.cfi_startproc
.LVL15:
	.loc 1 82 5
	.loc 1 82 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 83 5 is_stmt 1
	.loc 1 84 1 is_stmt 0
	li	a0,-1
.LVL16:
	ret
	.cfi_endproc
.LFE33:
	.size	_lseek, .-_lseek
	.section	.text._open,"ax",@progbits
	.align	1
	.globl	_open
	.type	_open, @function
_open:
.LFB34:
	.loc 1 87 1 is_stmt 1
	.cfi_startproc
.LVL17:
	.loc 1 88 5
	.loc 1 88 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 89 5 is_stmt 1
	.loc 1 90 1 is_stmt 0
	li	a0,-1
.LVL18:
	ret
	.cfi_endproc
.LFE34:
	.size	_open, .-_open
	.section	.text._read,"ax",@progbits
	.align	1
	.globl	_read
	.type	_read, @function
_read:
.LFB35:
	.loc 1 93 1 is_stmt 1
	.cfi_startproc
.LVL19:
	.loc 1 94 5
	.loc 1 94 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 95 5 is_stmt 1
	.loc 1 96 1 is_stmt 0
	li	a0,-1
.LVL20:
	ret
	.cfi_endproc
.LFE35:
	.size	_read, .-_read
	.section	.text._readlink,"ax",@progbits
	.align	1
	.globl	_readlink
	.type	_readlink, @function
_readlink:
.LFB36:
	.loc 1 99 1 is_stmt 1
	.cfi_startproc
.LVL21:
	.loc 1 100 5
	.loc 1 100 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 101 5 is_stmt 1
	.loc 1 102 1 is_stmt 0
	li	a0,-1
.LVL22:
	ret
	.cfi_endproc
.LFE36:
	.size	_readlink, .-_readlink
	.section	.text._sbrk,"ax",@progbits
	.align	1
	.globl	_sbrk
	.type	_sbrk, @function
_sbrk:
.LFB37:
	.loc 1 105 1 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 106 5
	.loc 1 106 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 107 5 is_stmt 1
	.loc 1 108 1 is_stmt 0
	li	a0,0
.LVL24:
	ret
	.cfi_endproc
.LFE37:
	.size	_sbrk, .-_sbrk
	.section	.text._stat,"ax",@progbits
	.align	1
	.globl	_stat
	.type	_stat, @function
_stat:
.LFB53:
	.cfi_startproc
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	li	a0,-1
	ret
	.cfi_endproc
.LFE53:
	.size	_stat, .-_stat
	.section	.text._symlink,"ax",@progbits
	.align	1
	.globl	_symlink
	.type	_symlink, @function
_symlink:
.LFB55:
	.cfi_startproc
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	li	a0,-1
	ret
	.cfi_endproc
.LFE55:
	.size	_symlink, .-_symlink
	.section	.text._times,"ax",@progbits
	.align	1
	.globl	_times
	.type	_times, @function
_times:
.LFB40:
	.loc 1 123 1 is_stmt 1
	.cfi_startproc
.LVL25:
	.loc 1 124 5
	.loc 1 124 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 125 5 is_stmt 1
	.loc 1 126 1 is_stmt 0
	li	a0,-1
.LVL26:
	ret
	.cfi_endproc
.LFE40:
	.size	_times, .-_times
	.section	.text._unlink,"ax",@progbits
	.align	1
	.globl	_unlink
	.type	_unlink, @function
_unlink:
.LFB41:
	.loc 1 129 1 is_stmt 1
	.cfi_startproc
.LVL27:
	.loc 1 130 5
	.loc 1 130 11 is_stmt 0
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	.loc 1 131 5 is_stmt 1
	.loc 1 132 1 is_stmt 0
	li	a0,-1
.LVL28:
	ret
	.cfi_endproc
.LFE41:
	.size	_unlink, .-_unlink
	.section	.text._wait,"ax",@progbits
	.align	1
	.globl	_wait
	.type	_wait, @function
_wait:
.LFB47:
	.cfi_startproc
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	li	a0,-1
	ret
	.cfi_endproc
.LFE47:
	.size	_wait, .-_wait
	.section	.text._write,"ax",@progbits
	.align	1
	.globl	_write
	.type	_write, @function
_write:
.LFB45:
	.cfi_startproc
	lui	a5,%hi(.LANCHOR0)
	li	a4,88
	sw	a4,%lo(.LANCHOR0)(a5)
	li	a0,-1
	ret
	.cfi_endproc
.LFE45:
	.size	_write, .-_write
	.globl	environ
	.globl	__env
	.globl	errno
	.section	.bss.__env,"aw",@nobits
	.align	2
	.type	__env, @object
	.size	__env, 4
__env:
	.zero	4
	.section	.bss.errno,"aw",@nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	errno, @object
	.size	errno, 4
errno:
	.zero	4
	.section	.data.environ,"aw"
	.align	2
	.type	environ, @object
	.size	environ, 4
environ:
	.word	__env
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_types.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_timeval.h"
	.file 6 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_timespec.h"
	.file 7 "./components/libc/./sys/types.h"
	.file 8 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/times.h"
	.file 9 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/stat.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x802
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF99
	.byte	0xc
	.4byte	.LASF100
	.4byte	.LASF101
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
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0xc8
	.byte	0x17
	.4byte	0x5b
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
	.byte	0xd1
	.byte	0x16
	.4byte	0x7c
	.byte	0x3
	.4byte	.LASF12
	.byte	0x4
	.byte	0x1e
	.byte	0xe
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x22
	.byte	0xe
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x2e
	.byte	0xe
	.4byte	0x41
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x38
	.byte	0xf
	.4byte	0x33
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x3c
	.byte	0x18
	.4byte	0x3a
	.byte	0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x3f
	.byte	0x18
	.4byte	0x3a
	.byte	0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4b
	.byte	0x18
	.4byte	0x3a
	.byte	0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x5a
	.byte	0x14
	.4byte	0x48
	.byte	0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x66
	.byte	0x10
	.4byte	0xa7
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0xd1
	.byte	0x18
	.4byte	0x3a
	.byte	0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xd2
	.byte	0xe
	.4byte	0x41
	.byte	0x6
	.byte	0x4
	.4byte	0x11b
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF23
	.byte	0x7
	.4byte	0x11b
	.byte	0x6
	.byte	0x4
	.4byte	0x122
	.byte	0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0x25
	.byte	0x17
	.4byte	0x109
	.byte	0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0x2a
	.byte	0x19
	.4byte	0x69
	.byte	0x8
	.4byte	.LASF28
	.byte	0x10
	.byte	0x5
	.byte	0x36
	.byte	0x8
	.4byte	0x16d
	.byte	0x9
	.4byte	.LASF26
	.byte	0x5
	.byte	0x37
	.byte	0x9
	.4byte	0x139
	.byte	0
	.byte	0x9
	.4byte	.LASF27
	.byte	0x5
	.byte	0x38
	.byte	0xe
	.4byte	0x12d
	.byte	0x8
	.byte	0
	.byte	0x8
	.4byte	.LASF29
	.byte	0x10
	.byte	0x6
	.byte	0x2f
	.byte	0x8
	.4byte	0x195
	.byte	0x9
	.4byte	.LASF26
	.byte	0x6
	.byte	0x30
	.byte	0x9
	.4byte	0x139
	.byte	0
	.byte	0x9
	.4byte	.LASF30
	.byte	0x6
	.byte	0x31
	.byte	0x7
	.4byte	0x41
	.byte	0x8
	.byte	0
	.byte	0x3
	.4byte	.LASF31
	.byte	0x7
	.byte	0x61
	.byte	0x14
	.4byte	0x8f
	.byte	0x3
	.4byte	.LASF32
	.byte	0x7
	.byte	0x66
	.byte	0x15
	.4byte	0x9b
	.byte	0x3
	.4byte	.LASF33
	.byte	0x7
	.byte	0x6b
	.byte	0x12
	.4byte	0x54
	.byte	0x3
	.4byte	.LASF34
	.byte	0x7
	.byte	0x8b
	.byte	0x11
	.4byte	0xd7
	.byte	0x3
	.4byte	.LASF35
	.byte	0x7
	.byte	0x9d
	.byte	0x11
	.4byte	0xef
	.byte	0x3
	.4byte	.LASF36
	.byte	0x7
	.byte	0xa1
	.byte	0x11
	.4byte	0xb3
	.byte	0x3
	.4byte	.LASF37
	.byte	0x7
	.byte	0xa5
	.byte	0x11
	.4byte	0xbf
	.byte	0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0xa9
	.byte	0x11
	.4byte	0xcb
	.byte	0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0xbd
	.byte	0x12
	.4byte	0xe3
	.byte	0x3
	.4byte	.LASF40
	.byte	0x7
	.byte	0xc2
	.byte	0x13
	.4byte	0xfd
	.byte	0xa
	.string	"tms"
	.byte	0x10
	.byte	0x8
	.byte	0x11
	.byte	0x8
	.4byte	0x24f
	.byte	0x9
	.4byte	.LASF41
	.byte	0x8
	.byte	0x12
	.byte	0xa
	.4byte	0x1ad
	.byte	0
	.byte	0x9
	.4byte	.LASF42
	.byte	0x8
	.byte	0x13
	.byte	0xa
	.4byte	0x1ad
	.byte	0x4
	.byte	0x9
	.4byte	.LASF43
	.byte	0x8
	.byte	0x14
	.byte	0xa
	.4byte	0x1ad
	.byte	0x8
	.byte	0x9
	.4byte	.LASF44
	.byte	0x8
	.byte	0x15
	.byte	0xa
	.4byte	0x1ad
	.byte	0xc
	.byte	0
	.byte	0x8
	.4byte	.LASF45
	.byte	0x58
	.byte	0x9
	.byte	0x1b
	.byte	0x8
	.4byte	0x313
	.byte	0x9
	.4byte	.LASF46
	.byte	0x9
	.byte	0x1d
	.byte	0x9
	.4byte	0x1d1
	.byte	0
	.byte	0x9
	.4byte	.LASF47
	.byte	0x9
	.byte	0x1e
	.byte	0x9
	.4byte	0x1b9
	.byte	0x2
	.byte	0x9
	.4byte	.LASF48
	.byte	0x9
	.byte	0x1f
	.byte	0xa
	.4byte	0x1f5
	.byte	0x4
	.byte	0x9
	.4byte	.LASF49
	.byte	0x9
	.byte	0x20
	.byte	0xb
	.4byte	0x201
	.byte	0x8
	.byte	0x9
	.4byte	.LASF50
	.byte	0x9
	.byte	0x21
	.byte	0x9
	.4byte	0x1dd
	.byte	0xa
	.byte	0x9
	.4byte	.LASF51
	.byte	0x9
	.byte	0x22
	.byte	0x9
	.4byte	0x1e9
	.byte	0xc
	.byte	0x9
	.4byte	.LASF52
	.byte	0x9
	.byte	0x23
	.byte	0x9
	.4byte	0x1d1
	.byte	0xe
	.byte	0x9
	.4byte	.LASF53
	.byte	0x9
	.byte	0x24
	.byte	0x9
	.4byte	0x1c5
	.byte	0x10
	.byte	0x9
	.4byte	.LASF54
	.byte	0x9
	.byte	0x2a
	.byte	0x13
	.4byte	0x16d
	.byte	0x18
	.byte	0x9
	.4byte	.LASF55
	.byte	0x9
	.byte	0x2b
	.byte	0x13
	.4byte	0x16d
	.byte	0x28
	.byte	0x9
	.4byte	.LASF56
	.byte	0x9
	.byte	0x2c
	.byte	0x13
	.4byte	0x16d
	.byte	0x38
	.byte	0x9
	.4byte	.LASF57
	.byte	0x9
	.byte	0x2d
	.byte	0xd
	.4byte	0x1a1
	.byte	0x48
	.byte	0x9
	.4byte	.LASF58
	.byte	0x9
	.byte	0x2e
	.byte	0xc
	.4byte	0x195
	.byte	0x4c
	.byte	0x9
	.4byte	.LASF59
	.byte	0x9
	.byte	0x30
	.byte	0x8
	.4byte	0x313
	.byte	0x50
	.byte	0
	.byte	0xb
	.4byte	0x41
	.4byte	0x323
	.byte	0xc
	.4byte	0x7c
	.byte	0x1
	.byte	0
	.byte	0xd
	.4byte	.LASF60
	.byte	0x1
	.byte	0x9
	.byte	0x5
	.4byte	0x75
	.byte	0x5
	.byte	0x3
	.4byte	errno
	.byte	0xb
	.4byte	0x115
	.4byte	0x345
	.byte	0xc
	.4byte	0x7c
	.byte	0
	.byte	0
	.byte	0xd
	.4byte	.LASF61
	.byte	0x1
	.byte	0xb
	.byte	0x7
	.4byte	0x335
	.byte	0x5
	.byte	0x3
	.4byte	__env
	.byte	0xd
	.4byte	.LASF62
	.byte	0x1
	.byte	0xc
	.byte	0x8
	.4byte	0x369
	.byte	0x5
	.byte	0x3
	.4byte	environ
	.byte	0x6
	.byte	0x4
	.4byte	0x115
	.byte	0xe
	.4byte	.LASF64
	.byte	0x1
	.byte	0x8c
	.byte	0x5
	.4byte	0x75
	.4byte	0x3a4
	.byte	0xf
	.4byte	.LASF63
	.byte	0x1
	.byte	0x8c
	.byte	0x10
	.4byte	0x75
	.byte	0x10
	.string	"ptr"
	.byte	0x1
	.byte	0x8c
	.byte	0x1c
	.4byte	0x115
	.byte	0x10
	.string	"len"
	.byte	0x1
	.byte	0x8c
	.byte	0x25
	.4byte	0x75
	.byte	0
	.byte	0xe
	.4byte	.LASF65
	.byte	0x1
	.byte	0x86
	.byte	0x5
	.4byte	0x75
	.4byte	0x3c1
	.byte	0xf
	.4byte	.LASF66
	.byte	0x1
	.byte	0x86
	.byte	0x10
	.4byte	0x3c1
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x75
	.byte	0x11
	.4byte	.LASF78
	.byte	0x1
	.byte	0x80
	.byte	0x5
	.4byte	0x75
	.byte	0x1
	.4byte	0x3e5
	.byte	0xf
	.4byte	.LASF67
	.byte	0x1
	.byte	0x80
	.byte	0x13
	.4byte	0x115
	.byte	0
	.byte	0x12
	.4byte	.LASF72
	.byte	0x1
	.byte	0x7a
	.byte	0x9
	.4byte	0x1ad
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x1
	.byte	0x9c
	.4byte	0x410
	.byte	0x13
	.string	"buf"
	.byte	0x1
	.byte	0x7a
	.byte	0x1c
	.4byte	0x410
	.4byte	.LLST12
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x20d
	.byte	0xe
	.4byte	.LASF68
	.byte	0x1
	.byte	0x74
	.byte	0x5
	.4byte	0x75
	.4byte	0x43f
	.byte	0xf
	.4byte	.LASF69
	.byte	0x1
	.byte	0x74
	.byte	0x1a
	.4byte	0x127
	.byte	0xf
	.4byte	.LASF70
	.byte	0x1
	.byte	0x74
	.byte	0x2d
	.4byte	0x127
	.byte	0
	.byte	0xe
	.4byte	.LASF71
	.byte	0x1
	.byte	0x6e
	.byte	0x5
	.4byte	0x75
	.4byte	0x467
	.byte	0xf
	.4byte	.LASF63
	.byte	0x1
	.byte	0x6e
	.byte	0x17
	.4byte	0x127
	.byte	0x10
	.string	"st"
	.byte	0x1
	.byte	0x6e
	.byte	0x2a
	.4byte	0x467
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x24f
	.byte	0x12
	.4byte	.LASF73
	.byte	0x1
	.byte	0x68
	.byte	0x7
	.4byte	0xfb
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x1
	.byte	0x9c
	.4byte	0x498
	.byte	0x14
	.4byte	.LASF74
	.byte	0x1
	.byte	0x68
	.byte	0x11
	.4byte	0x75
	.4byte	.LLST11
	.byte	0
	.byte	0x12
	.4byte	.LASF75
	.byte	0x1
	.byte	0x62
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x1
	.byte	0x9c
	.4byte	0x4df
	.byte	0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0x62
	.byte	0x1b
	.4byte	0x127
	.4byte	.LLST10
	.byte	0x15
	.string	"buf"
	.byte	0x1
	.byte	0x62
	.byte	0x27
	.4byte	0x115
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.4byte	.LASF77
	.byte	0x1
	.byte	0x62
	.byte	0x33
	.4byte	0x83
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x11
	.4byte	.LASF79
	.byte	0x1
	.byte	0x5c
	.byte	0x5
	.4byte	0x75
	.byte	0x1
	.4byte	0x515
	.byte	0xf
	.4byte	.LASF63
	.byte	0x1
	.byte	0x5c
	.byte	0xf
	.4byte	0x75
	.byte	0x10
	.string	"ptr"
	.byte	0x1
	.byte	0x5c
	.byte	0x1b
	.4byte	0x115
	.byte	0x10
	.string	"len"
	.byte	0x1
	.byte	0x5c
	.byte	0x24
	.4byte	0x75
	.byte	0
	.byte	0x12
	.4byte	.LASF80
	.byte	0x1
	.byte	0x56
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x1
	.byte	0x9c
	.4byte	0x55c
	.byte	0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0x56
	.byte	0x11
	.4byte	0x115
	.4byte	.LLST8
	.byte	0x16
	.4byte	.LASF81
	.byte	0x1
	.byte	0x56
	.byte	0x1b
	.4byte	0x75
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.4byte	.LASF82
	.byte	0x1
	.byte	0x56
	.byte	0x26
	.4byte	0x75
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x12
	.4byte	.LASF83
	.byte	0x1
	.byte	0x50
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x1
	.byte	0x9c
	.4byte	0x5a3
	.byte	0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0x50
	.byte	0x10
	.4byte	0x75
	.4byte	.LLST7
	.byte	0x15
	.string	"ptr"
	.byte	0x1
	.byte	0x50
	.byte	0x1a
	.4byte	0x75
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.string	"dir"
	.byte	0x1
	.byte	0x50
	.byte	0x23
	.4byte	0x75
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0xe
	.4byte	.LASF84
	.byte	0x1
	.byte	0x4a
	.byte	0x5
	.4byte	0x75
	.4byte	0x5cc
	.byte	0xf
	.4byte	.LASF85
	.byte	0x1
	.byte	0x4a
	.byte	0x11
	.4byte	0x115
	.byte	0x10
	.string	"new"
	.byte	0x1
	.byte	0x4a
	.byte	0x21
	.4byte	0x115
	.byte	0
	.byte	0x12
	.4byte	.LASF86
	.byte	0x1
	.byte	0x44
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x1
	.byte	0x9c
	.4byte	0x605
	.byte	0x13
	.string	"pid"
	.byte	0x1
	.byte	0x44
	.byte	0xf
	.4byte	0x75
	.4byte	.LLST6
	.byte	0x15
	.string	"sig"
	.byte	0x1
	.byte	0x44
	.byte	0x18
	.4byte	0x75
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x12
	.4byte	.LASF87
	.byte	0x1
	.byte	0x3e
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x1
	.byte	0x9c
	.4byte	0x630
	.byte	0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0x3e
	.byte	0x11
	.4byte	0x75
	.4byte	.LLST5
	.byte	0
	.byte	0x11
	.4byte	.LASF88
	.byte	0x1
	.byte	0x38
	.byte	0x5
	.4byte	0x75
	.byte	0x1
	.4byte	0x65a
	.byte	0xf
	.4byte	.LASF89
	.byte	0x1
	.byte	0x38
	.byte	0x23
	.4byte	0x65a
	.byte	0xf
	.4byte	.LASF90
	.byte	0x1
	.byte	0x38
	.byte	0x33
	.4byte	0xfb
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0x145
	.byte	0x17
	.4byte	.LASF102
	.byte	0x1
	.byte	0x32
	.byte	0x5
	.4byte	0x75
	.byte	0x12
	.4byte	.LASF91
	.byte	0x1
	.byte	0x2c
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x1
	.byte	0x9c
	.4byte	0x6a4
	.byte	0x14
	.4byte	.LASF92
	.byte	0x1
	.byte	0x2c
	.byte	0x10
	.4byte	0x75
	.4byte	.LLST3
	.byte	0x15
	.string	"st"
	.byte	0x1
	.byte	0x2c
	.byte	0x25
	.4byte	0x467
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x18
	.4byte	.LASF103
	.byte	0x1
	.byte	0x26
	.byte	0x5
	.4byte	0x75
	.byte	0x1
	.byte	0x12
	.4byte	.LASF93
	.byte	0x1
	.byte	0x20
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x1
	.byte	0x9c
	.4byte	0x6f8
	.byte	0x14
	.4byte	.LASF67
	.byte	0x1
	.byte	0x20
	.byte	0x13
	.4byte	0x115
	.4byte	.LLST2
	.byte	0x16
	.4byte	.LASF94
	.byte	0x1
	.byte	0x20
	.byte	0x20
	.4byte	0x369
	.byte	0x1
	.byte	0x5b
	.byte	0x15
	.string	"env"
	.byte	0x1
	.byte	0x20
	.byte	0x2d
	.4byte	0x369
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x12
	.4byte	.LASF95
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x1
	.byte	0x9c
	.4byte	0x723
	.byte	0x14
	.4byte	.LASF92
	.byte	0x1
	.byte	0x1a
	.byte	0x10
	.4byte	0x75
	.4byte	.LLST1
	.byte	0
	.byte	0x12
	.4byte	.LASF96
	.byte	0x1
	.byte	0x14
	.byte	0x5
	.4byte	0x75
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x1
	.byte	0x9c
	.4byte	0x76a
	.byte	0x14
	.4byte	.LASF76
	.byte	0x1
	.byte	0x14
	.byte	0x18
	.4byte	0x127
	.4byte	.LLST0
	.byte	0x16
	.4byte	.LASF97
	.byte	0x1
	.byte	0x14
	.byte	0x24
	.4byte	0x1dd
	.byte	0x1
	.byte	0x5b
	.byte	0x16
	.4byte	.LASF98
	.byte	0x1
	.byte	0x14
	.byte	0x31
	.4byte	0x1e9
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x19
	.4byte	.LASF104
	.byte	0x1
	.byte	0xe
	.byte	0x6
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x1
	.byte	0x9c
	.4byte	0x78e
	.byte	0x15
	.string	"rc"
	.byte	0x1
	.byte	0xe
	.byte	0x10
	.4byte	0x75
	.byte	0x1
	.byte	0x5a
	.byte	0
	.byte	0x1a
	.4byte	0x6a4
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x1
	.byte	0x9c
	.byte	0x1b
	.4byte	0x630
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x1
	.byte	0x9c
	.4byte	0x7c1
	.byte	0x1c
	.4byte	0x641
	.4byte	.LLST4
	.byte	0x1d
	.4byte	0x64d
	.byte	0x1
	.byte	0x5b
	.byte	0
	.byte	0x1b
	.4byte	0x4df
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x1
	.byte	0x9c
	.4byte	0x7ec
	.byte	0x1c
	.4byte	0x4f0
	.4byte	.LLST9
	.byte	0x1d
	.4byte	0x4fc
	.byte	0x1
	.byte	0x5b
	.byte	0x1d
	.4byte	0x508
	.byte	0x1
	.byte	0x5c
	.byte	0
	.byte	0x1e
	.4byte	0x3c7
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x1
	.byte	0x9c
	.byte	0x1c
	.4byte	0x3d8
	.4byte	.LLST13
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
	.byte	0x26
	.byte	0
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
	.byte	0x13
	.byte	0x1
	.byte	0x3
	.byte	0x8
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
	.byte	0xb
	.byte	0x39
	.byte	0xb
	.byte	0x27
	.byte	0x19
	.byte	0x49
	.byte	0x13
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
	.byte	0
	.byte	0
	.byte	0x10
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
	.byte	0x11
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
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x18
	.byte	0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0x19
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
	.byte	0x1a
	.byte	0x2e
	.byte	0
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
	.byte	0x1
	.byte	0x13
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
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST12:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LFE40
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL24
	.4byte	.LFE37
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LFE36
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL18
	.4byte	.LFE34
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL16
	.4byte	.LFE33
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL14
	.4byte	.LFE31
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL12
	.4byte	.LFE30
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE27
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL6
	.4byte	.LFE25
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL4
	.4byte	.LFE24
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL2
	.4byte	.LFE23
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LFE29
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL20
	.4byte	.LFE35
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL28
	.4byte	.LFE41
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x94
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"__off_t"
.LASF17:
	.string	"__gid_t"
.LASF61:
	.string	"__env"
.LASF56:
	.string	"st_ctim"
.LASF11:
	.string	"size_t"
.LASF103:
	.string	"_fork"
.LASF76:
	.string	"path"
.LASF7:
	.string	"long long unsigned int"
.LASF58:
	.string	"st_blocks"
.LASF43:
	.string	"tms_cutime"
.LASF9:
	.string	"__int_least64_t"
.LASF45:
	.string	"stat"
.LASF104:
	.string	"_exit"
.LASF90:
	.string	"ptimezone"
.LASF6:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF47:
	.string	"st_ino"
.LASF19:
	.string	"__mode_t"
.LASF98:
	.string	"group"
.LASF12:
	.string	"__blkcnt_t"
.LASF4:
	.string	"long int"
.LASF80:
	.string	"_open"
.LASF42:
	.string	"tms_stime"
.LASF83:
	.string	"_lseek"
.LASF97:
	.string	"owner"
.LASF91:
	.string	"_fstat"
.LASF102:
	.string	"_getpid"
.LASF79:
	.string	"_read"
.LASF54:
	.string	"st_atim"
.LASF77:
	.string	"bufsize"
.LASF40:
	.string	"nlink_t"
.LASF35:
	.string	"off_t"
.LASF38:
	.string	"gid_t"
.LASF8:
	.string	"__uint32_t"
.LASF33:
	.string	"clock_t"
.LASF24:
	.string	"suseconds_t"
.LASF15:
	.string	"__dev_t"
.LASF50:
	.string	"st_uid"
.LASF59:
	.string	"st_spare4"
.LASF10:
	.string	"unsigned int"
.LASF95:
	.string	"_close"
.LASF31:
	.string	"blkcnt_t"
.LASF5:
	.string	"long unsigned int"
.LASF22:
	.string	"__suseconds_t"
.LASF67:
	.string	"name"
.LASF37:
	.string	"uid_t"
.LASF3:
	.string	"short unsigned int"
.LASF21:
	.string	"__nlink_t"
.LASF62:
	.string	"environ"
.LASF87:
	.string	"_isatty"
.LASF28:
	.string	"timeval"
.LASF99:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF60:
	.string	"errno"
.LASF53:
	.string	"st_size"
.LASF64:
	.string	"_write"
.LASF48:
	.string	"st_mode"
.LASF75:
	.string	"_readlink"
.LASF30:
	.string	"tv_nsec"
.LASF71:
	.string	"_stat"
.LASF26:
	.string	"tv_sec"
.LASF68:
	.string	"_symlink"
.LASF65:
	.string	"_wait"
.LASF13:
	.string	"__blksize_t"
.LASF14:
	.string	"_off_t"
.LASF36:
	.string	"dev_t"
.LASF25:
	.string	"time_t"
.LASF101:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/libc"
.LASF49:
	.string	"st_nlink"
.LASF1:
	.string	"unsigned char"
.LASF93:
	.string	"_execve"
.LASF2:
	.string	"short int"
.LASF63:
	.string	"file"
.LASF57:
	.string	"st_blksize"
.LASF41:
	.string	"tms_utime"
.LASF29:
	.string	"timespec"
.LASF18:
	.string	"__ino_t"
.LASF27:
	.string	"tv_usec"
.LASF92:
	.string	"fildes"
.LASF52:
	.string	"st_rdev"
.LASF89:
	.string	"ptimeval"
.LASF23:
	.string	"char"
.LASF82:
	.string	"mode"
.LASF96:
	.string	"_chown"
.LASF16:
	.string	"__uid_t"
.LASF86:
	.string	"_kill"
.LASF51:
	.string	"st_gid"
.LASF44:
	.string	"tms_cstime"
.LASF88:
	.string	"_gettimeofday"
.LASF94:
	.string	"argv"
.LASF66:
	.string	"status"
.LASF39:
	.string	"mode_t"
.LASF46:
	.string	"st_dev"
.LASF81:
	.string	"flags"
.LASF72:
	.string	"_times"
.LASF32:
	.string	"blksize_t"
.LASF55:
	.string	"st_mtim"
.LASF78:
	.string	"_unlink"
.LASF100:
	.string	"./components/libc/newlib/syscalls_nosys.c"
.LASF85:
	.string	"existing"
.LASF84:
	.string	"_link"
.LASF69:
	.string	"path1"
.LASF70:
	.string	"path2"
.LASF74:
	.string	"incr"
.LASF73:
	.string	"_sbrk"
.LASF34:
	.string	"ino_t"
	.ident	"GCC: (GNU) 10.4.0"
