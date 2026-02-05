	.file	"start_load.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.start_load,"ax",@progbits
	.align	1
	.globl	start_load
	.type	start_load, @function
start_load:
.LFB0:
	.file 1 "./drivers/soc/qcc743/std/startup/start_load.c"
	.loc 1 42 1
	.cfi_startproc
	.loc 1 43 5
	.loc 1 44 5
	.loc 1 47 5
.LVL0:
	.loc 1 48 5
	.loc 1 50 5
	.loc 1 48 13 is_stmt 0
	lui	a5,%hi(__tcm_code_start__)
	.loc 1 47 13
	lui	a4,%hi(__itcm_load_addr)
	.loc 1 50 5
	lui	a3,%hi(__tcm_code_end__)
	.loc 1 48 13
	addi	a5,a5,%lo(__tcm_code_start__)
	.loc 1 47 13
	addi	a4,a4,%lo(__itcm_load_addr)
	.loc 1 50 5
	addi	a3,a3,%lo(__tcm_code_end__)
.LVL1:
.L2:
	.loc 1 50 12 is_stmt 1
	.loc 1 50 5 is_stmt 0
	bltu	a5,a3,.L3
	.loc 1 56 13
	lui	a5,%hi(__tcm_data_start__)
.LVL2:
	.loc 1 55 13
	lui	a4,%hi(__dtcm_load_addr)
.LVL3:
	.loc 1 58 5
	lui	a3,%hi(__tcm_data_end__)
	.loc 1 56 13
	addi	a5,a5,%lo(__tcm_data_start__)
	.loc 1 55 13
	addi	a4,a4,%lo(__dtcm_load_addr)
	.loc 1 58 5
	addi	a3,a3,%lo(__tcm_data_end__)
.L4:
.LVL4:
	.loc 1 58 12 is_stmt 1
	.loc 1 58 5 is_stmt 0
	bltu	a5,a3,.L5
	.loc 1 64 13
	lui	a5,%hi(__ram_data_start__)
.LVL5:
	.loc 1 63 13
	lui	a4,%hi(__ram_load_addr)
.LVL6:
	.loc 1 66 5
	lui	a3,%hi(__ram_data_end__)
	.loc 1 64 13
	addi	a5,a5,%lo(__ram_data_start__)
	.loc 1 63 13
	addi	a4,a4,%lo(__ram_load_addr)
	.loc 1 66 5
	addi	a3,a3,%lo(__ram_data_end__)
.L6:
.LVL7:
	.loc 1 66 12 is_stmt 1
	.loc 1 66 5 is_stmt 0
	bltu	a5,a3,.L7
	.loc 1 72 13
	lui	a5,%hi(__psram_data_start__)
.LVL8:
	.loc 1 71 13
	lui	a4,%hi(__psram_load_addr)
.LVL9:
	.loc 1 74 5
	lui	a3,%hi(__psram_data_end__)
	.loc 1 72 13
	addi	a5,a5,%lo(__psram_data_start__)
	.loc 1 71 13
	addi	a4,a4,%lo(__psram_load_addr)
	.loc 1 74 5
	addi	a3,a3,%lo(__psram_data_end__)
.L8:
.LVL10:
	.loc 1 74 12 is_stmt 1
	.loc 1 74 5 is_stmt 0
	bltu	a5,a3,.L9
	.loc 1 81 13
	lui	a5,%hi(__nocache_ram_data_start__)
.LVL11:
	.loc 1 80 13
	lui	a4,%hi(__nocache_ram_load_addr)
.LVL12:
	.loc 1 83 5
	lui	a3,%hi(__nocache_ram_data_end__)
	.loc 1 81 13
	addi	a5,a5,%lo(__nocache_ram_data_start__)
	.loc 1 80 13
	addi	a4,a4,%lo(__nocache_ram_load_addr)
	.loc 1 83 5
	addi	a3,a3,%lo(__nocache_ram_data_end__)
.L10:
.LVL13:
	.loc 1 83 12 is_stmt 1
	.loc 1 83 5 is_stmt 0
	bltu	a5,a3,.L11
	.loc 1 102 13
	lui	a5,%hi(__bss_start__)
.LVL14:
	.loc 1 103 5
	lui	a4,%hi(__bss_end__)
.LVL15:
	.loc 1 102 13
	addi	a5,a5,%lo(__bss_start__)
	.loc 1 103 5
	addi	a4,a4,%lo(__bss_end__)
.L12:
.LVL16:
	.loc 1 103 12 is_stmt 1
	.loc 1 103 5 is_stmt 0
	bltu	a5,a4,.L13
	.loc 1 109 13
	lui	a5,%hi(__wifi_bss_start)
.LVL17:
	.loc 1 111 5
	lui	a4,%hi(__wifi_bss_end)
	.loc 1 109 13
	addi	a5,a5,%lo(__wifi_bss_start)
	.loc 1 111 5
	addi	a4,a4,%lo(__wifi_bss_end)
.L14:
.LVL18:
	.loc 1 111 12 is_stmt 1
	.loc 1 111 5 is_stmt 0
	bltu	a5,a4,.L15
	.loc 1 116 1
	ret
.LVL19:
.L3:
	.loc 1 51 9 is_stmt 1
	.loc 1 51 20 is_stmt 0
	lwia	a2,(a4),4,0
.LVL20:
	swia	a2,(a5),4,0
.LVL21:
	j	.L2
.L5:
	.loc 1 59 9 is_stmt 1
.LVL22:
	.loc 1 59 20 is_stmt 0
	lwia	a2,(a4),4,0
.LVL23:
	swia	a2,(a5),4,0
.LVL24:
	j	.L4
.L7:
	.loc 1 67 9 is_stmt 1
.LVL25:
	.loc 1 67 20 is_stmt 0
	lwia	a2,(a4),4,0
.LVL26:
	swia	a2,(a5),4,0
.LVL27:
	j	.L6
.L9:
	.loc 1 75 9 is_stmt 1
.LVL28:
	.loc 1 75 20 is_stmt 0
	lwia	a2,(a4),4,0
.LVL29:
	swia	a2,(a5),4,0
.LVL30:
	j	.L8
.L11:
	.loc 1 84 9 is_stmt 1
.LVL31:
	.loc 1 84 20 is_stmt 0
	lwia	a2,(a4),4,0
.LVL32:
	swia	a2,(a5),4,0
.LVL33:
	j	.L10
.LVL34:
.L13:
	.loc 1 104 9 is_stmt 1
	.loc 1 104 20 is_stmt 0
	swia	zero,(a5),4,0
.LVL35:
	j	.L12
.L15:
	.loc 1 112 9 is_stmt 1
.LVL36:
	.loc 1 112 20 is_stmt 0
	swia	zero,(a5),4,0
.LVL37:
	j	.L14
	.cfi_endproc
.LFE0:
	.size	start_load, .-start_load
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x1ad
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF32
	.byte	0xc
	.4byte	.LASF33
	.4byte	.LASF34
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
	.byte	0x5
	.4byte	.LASF11
	.byte	0x1
	.byte	0x9
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF12
	.byte	0x1
	.byte	0xa
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF13
	.byte	0x1
	.byte	0xb
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF14
	.byte	0x1
	.byte	0xc
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF15
	.byte	0x1
	.byte	0xd
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF16
	.byte	0x1
	.byte	0x11
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF17
	.byte	0x1
	.byte	0x12
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF18
	.byte	0x1
	.byte	0x13
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF19
	.byte	0x1
	.byte	0x14
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF20
	.byte	0x1
	.byte	0x15
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF21
	.byte	0x1
	.byte	0x16
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF22
	.byte	0x1
	.byte	0x17
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF23
	.byte	0x1
	.byte	0x18
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF24
	.byte	0x1
	.byte	0x19
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF25
	.byte	0x1
	.byte	0x1a
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF26
	.byte	0x1
	.byte	0x1d
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF27
	.byte	0x1
	.byte	0x1e
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF28
	.byte	0x1
	.byte	0x20
	.byte	0x11
	.4byte	0x77
	.byte	0x5
	.4byte	.LASF29
	.byte	0x1
	.byte	0x21
	.byte	0x11
	.4byte	0x77
	.byte	0x6
	.4byte	.LASF35
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x1
	.byte	0x9c
	.4byte	0x1aa
	.byte	0x7
	.4byte	.LASF30
	.byte	0x1
	.byte	0x2b
	.byte	0xf
	.4byte	0x1aa
	.4byte	.LLST0
	.byte	0x7
	.4byte	.LASF31
	.byte	0x1
	.byte	0x2b
	.byte	0x19
	.4byte	0x1aa
	.4byte	.LLST1
	.byte	0x8
	.4byte	.LASF36
	.byte	0x1
	.byte	0x2c
	.byte	0xf
	.4byte	0x1aa
	.byte	0
	.byte	0x9
	.byte	0x4
	.4byte	0x77
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
	.byte	0x6
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
	.byte	0x7
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
	.byte	0
	.byte	0
	.byte	0x9
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL13
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x3
	.byte	0x7e
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x3
	.byte	0x7e
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x3
	.byte	0x7e
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x7e
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x7e
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL28
	.4byte	.LVL30
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF32:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF33:
	.string	"./drivers/soc/qcc743/std/startup/start_load.c"
.LASF24:
	.string	"__wifi_bss_start"
.LASF15:
	.string	"__psram_load_addr"
.LASF22:
	.string	"__bss_start__"
.LASF30:
	.string	"tmp_src"
.LASF25:
	.string	"__wifi_bss_end"
.LASF20:
	.string	"__ram_data_start__"
.LASF27:
	.string	"__psram_data_end__"
.LASF12:
	.string	"__dtcm_load_addr"
.LASF1:
	.string	"unsigned char"
.LASF35:
	.string	"start_load"
.LASF5:
	.string	"long unsigned int"
.LASF36:
	.string	"pTable"
.LASF3:
	.string	"short unsigned int"
.LASF18:
	.string	"__tcm_data_start__"
.LASF14:
	.string	"__nocache_ram_load_addr"
.LASF26:
	.string	"__psram_data_start__"
.LASF9:
	.string	"__uint32_t"
.LASF13:
	.string	"__ram_load_addr"
.LASF21:
	.string	"__ram_data_end__"
.LASF8:
	.string	"unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF29:
	.string	"__nocache_ram_data_end__"
.LASF31:
	.string	"tmp_dst"
.LASF28:
	.string	"__nocache_ram_data_start__"
.LASF6:
	.string	"long long int"
.LASF23:
	.string	"__bss_end__"
.LASF34:
	.string	"./examples/peripherals/spi/spi_slave/build/build_out/drivers/soc/qcc743/std"
.LASF16:
	.string	"__tcm_code_start__"
.LASF2:
	.string	"short int"
.LASF17:
	.string	"__tcm_code_end__"
.LASF10:
	.string	"uint32_t"
.LASF4:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF11:
	.string	"__itcm_load_addr"
.LASF19:
	.string	"__tcm_data_end__"
	.ident	"GCC: (GNU) 10.4.0"
