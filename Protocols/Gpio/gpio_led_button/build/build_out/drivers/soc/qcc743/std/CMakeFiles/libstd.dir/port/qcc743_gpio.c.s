	.file	"qcc743_gpio.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.qcc74x_gpio_pad_check,"ax",@progbits
	.align	1
	.globl	qcc74x_gpio_pad_check
	.type	qcc74x_gpio_pad_check, @function
qcc74x_gpio_pad_check:
.LFB242:
	.file 1 "./drivers/soc/qcc743/std/port/qcc743_gpio.c"
	.loc 1 4 1
	.cfi_startproc
.LVL0:
	.loc 1 5 5
	.loc 1 4 1 is_stmt 0
	addi	sp,sp,-16
	.cfi_def_cfa_offset 16
	sw	ra,12(sp)
	.cfi_offset 1, -4
	.loc 1 5 9
	call	GLB_GPIO_Pad_LeadOut_Sts
.LVL1:
	.loc 1 5 8
	bne	a0,zero,.L1
.L3:
	.loc 1 6 9 is_stmt 1 discriminator 1
	.loc 1 6 20 discriminator 1
	.loc 1 6 15 discriminator 1
	j	.L3
.L1:
	.loc 1 8 1 is_stmt 0
	lw	ra,12(sp)
	.cfi_restore 1
	addi	sp,sp,16
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE242:
	.size	qcc74x_gpio_pad_check, .-qcc74x_gpio_pad_check
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 4 "./drivers/soc/qcc743/std/include/qcc743_common.h"
	.file 5 "./drivers/soc/qcc743/std/include/qcc743_glb_gpio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0xde
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF13
	.byte	0xc
	.4byte	.LASF14
	.4byte	.LASF15
	.4byte	.Ldebug_ranges0+0
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
	.byte	0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x25
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
	.byte	0x18
	.byte	0x13
	.4byte	0x33
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.byte	0x5
	.byte	0x7
	.byte	0x1
	.4byte	0x25
	.byte	0x4
	.byte	0x60
	.byte	0xe
	.4byte	0xa5
	.byte	0x6
	.4byte	.LASF12
	.byte	0
	.byte	0x7
	.string	"SET"
	.byte	0x1
	.byte	0
	.byte	0x8
	.4byte	.LASF16
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x1
	.byte	0x9c
	.4byte	0xd5
	.byte	0x9
	.string	"pin"
	.byte	0x1
	.byte	0x3
	.byte	0x24
	.4byte	0x77
	.4byte	.LLST0
	.byte	0xa
	.4byte	.LVL1
	.4byte	0xd5
	.byte	0
	.byte	0xb
	.4byte	.LASF17
	.4byte	.LASF17
	.byte	0x5
	.byte	0x96
	.byte	0x11
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
	.byte	0x8
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
	.byte	0x89,0x82,0x1
	.byte	0
	.byte	0x11
	.byte	0x1
	.byte	0x31
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xb
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
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL1-1
	.4byte	.LFE242
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
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
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF6:
	.string	"long long int"
.LASF14:
	.string	"./drivers/soc/qcc743/std/port/qcc743_gpio.c"
.LASF8:
	.string	"unsigned int"
.LASF13:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF5:
	.string	"long unsigned int"
.LASF7:
	.string	"long long unsigned int"
.LASF9:
	.string	"__uint8_t"
.LASF10:
	.string	"uint8_t"
.LASF0:
	.string	"unsigned char"
.LASF11:
	.string	"char"
.LASF17:
	.string	"GLB_GPIO_Pad_LeadOut_Sts"
.LASF4:
	.string	"long int"
.LASF3:
	.string	"short unsigned int"
.LASF1:
	.string	"signed char"
.LASF16:
	.string	"qcc74x_gpio_pad_check"
.LASF15:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/drivers/soc/qcc743/std"
.LASF2:
	.string	"short int"
.LASF12:
	.string	"RESET"
	.ident	"GCC: (GNU) 10.4.0"
