	.file	"utils_crc.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.utils_crc32_stream_init,"ax",@progbits
	.align	1
	.globl	utils_crc32_stream_init
	.type	utils_crc32_stream_init, @function
utils_crc32_stream_init:
.LFB4:
	.file 1 "./components/utils/math/src/utils_crc.c"
	.loc 1 57 1
	.cfi_startproc
.LVL0:
	.loc 1 58 5
	.loc 1 58 14 is_stmt 0
	li	a5,-1
	sw	a5,0(a0)
	.loc 1 59 1
	ret
	.cfi_endproc
.LFE4:
	.size	utils_crc32_stream_init, .-utils_crc32_stream_init
	.section	.text.utils_crc32_stream_feed,"ax",@progbits
	.align	1
	.globl	utils_crc32_stream_feed
	.type	utils_crc32_stream_feed, @function
utils_crc32_stream_feed:
.LFB5:
	.loc 1 62 1 is_stmt 1
	.cfi_startproc
.LVL1:
	.loc 1 63 5
	.loc 1 63 29 is_stmt 0
	lw	a5,0(a0)
	.loc 1 63 51
	lui	a4,%hi(.LANCHOR0)
	addi	a4,a4,%lo(.LANCHOR0)
	.loc 1 63 35
	xor	a1,a1,a5
.LVL2:
	.loc 1 63 43
	andi	a1,a1,255
	.loc 1 63 51
	lrw	a4,a4,a1,2
	.loc 1 63 63
	srli	a5,a5,8
	.loc 1 63 51
	xor	a5,a4,a5
	.loc 1 63 14
	sw	a5,0(a0)
	.loc 1 64 1
	ret
	.cfi_endproc
.LFE5:
	.size	utils_crc32_stream_feed, .-utils_crc32_stream_feed
	.section	.text.utils_crc32_stream_feed_block,"ax",@progbits
	.align	1
	.globl	utils_crc32_stream_feed_block
	.type	utils_crc32_stream_feed_block, @function
utils_crc32_stream_feed_block:
.LFB6:
	.loc 1 67 1 is_stmt 1
	.cfi_startproc
.LVL3:
	.loc 1 68 5
	.loc 1 69 28 is_stmt 0
	lui	a6,%hi(.LANCHOR0)
	.loc 1 68 11
	li	a4,0
	.loc 1 69 28
	addi	a6,a6,%lo(.LANCHOR0)
.LVL4:
.L4:
	.loc 1 68 11 is_stmt 1
	bne	a2,a4,.L5
	.loc 1 70 1 is_stmt 0
	ret
.L5:
	.loc 1 69 9 is_stmt 1
	.loc 1 69 33 is_stmt 0
	lw	a3,0(a0)
.LVL5:
	.loc 1 69 41
	lrbu	a5,a1,a4,0
	addi	a4,a4,1
.LVL6:
	.loc 1 69 39
	xor	a5,a5,a3
	.loc 1 69 50
	andi	a5,a5,255
	.loc 1 69 58
	lrw	a5,a6,a5,2
	.loc 1 69 70
	srli	a3,a3,8
	.loc 1 69 58
	xor	a3,a5,a3
	.loc 1 69 18
	sw	a3,0(a0)
	j	.L4
	.cfi_endproc
.LFE6:
	.size	utils_crc32_stream_feed_block, .-utils_crc32_stream_feed_block
	.section	.text.utils_crc32_stream_results,"ax",@progbits
	.align	1
	.globl	utils_crc32_stream_results
	.type	utils_crc32_stream_results, @function
utils_crc32_stream_results:
.LFB7:
	.loc 1 73 1 is_stmt 1
	.cfi_startproc
.LVL7:
	.loc 1 74 5
	.loc 1 74 21 is_stmt 0
	lw	a0,0(a0)
.LVL8:
	.loc 1 75 1
	not	a0,a0
	ret
	.cfi_endproc
.LFE7:
	.size	utils_crc32_stream_results, .-utils_crc32_stream_results
	.section	.text.utils_crc16_ccitt,"ax",@progbits
	.align	1
	.globl	utils_crc16_ccitt
	.type	utils_crc16_ccitt, @function
utils_crc16_ccitt:
.LFB8:
	.loc 1 79 1 is_stmt 1
	.cfi_startproc
.LVL9:
	.loc 1 80 5
	.loc 1 81 5
	.loc 1 82 5
	.loc 1 83 5
	.loc 1 85 5
	.loc 1 87 5
	.loc 1 87 8 is_stmt 0
	beq	a1,zero,.L12
	.loc 1 85 9
	li	a5,65536
	.loc 1 95 17
	li	a2,-32768
	li	a3,0
	.loc 1 85 9
	addi	a5,a5,-1
	.loc 1 95 17
	addi	a2,a2,1032
.LVL10:
.L11:
	.loc 1 90 5 is_stmt 1
	.loc 1 91 9
	.loc 1 91 26 is_stmt 0
	lrbu	a6,a0,a3,0
.LVL11:
	.loc 1 92 13 is_stmt 1
	.loc 1 91 26 is_stmt 0
	li	a4,8
.LVL12:
.L10:
	.loc 1 94 9 is_stmt 1
	.loc 1 94 28 is_stmt 0
	xor	a7,a5,a6
	andi	a7,a7,1
	.loc 1 95 17
	srli	a5,a5,1
.LVL13:
	.loc 1 94 12
	beq	a7,zero,.L9
	.loc 1 95 13 is_stmt 1
	.loc 1 95 17 is_stmt 0
	xor	a5,a5,a2
	extu	a5,a5,15,0
.LVL14:
.L9:
	.loc 1 93 13 is_stmt 1
	.loc 1 91 9 is_stmt 0
	addi	a4,a4,-1
.LVL15:
	andi	a4,a4,0xff
	.loc 1 93 23
	srli	a6,a6,1
.LVL16:
	.loc 1 92 13 is_stmt 1
	.loc 1 91 9 is_stmt 0
	bne	a4,zero,.L10
	.loc 1 99 13 is_stmt 1
.LVL17:
	.loc 1 99 5 is_stmt 0
	addi	a3,a3,1
.LVL18:
	bne	a1,a3,.L11
	.loc 1 101 5 is_stmt 1
	.loc 1 101 9 is_stmt 0
	not	a0,a5
.LVL19:
	extu	a0,a0,15,0
.LVL20:
	.loc 1 103 5 is_stmt 1
	.loc 1 105 5
	.loc 1 105 12 is_stmt 0
	ret
.LVL21:
.L12:
	.loc 1 88 17
	li	a0,0
.LVL22:
	.loc 1 106 1
	ret
	.cfi_endproc
.LFE8:
	.size	utils_crc16_ccitt, .-utils_crc16_ccitt
	.section	.text.utils_crc8,"ax",@progbits
	.align	1
	.globl	utils_crc8
	.type	utils_crc8, @function
utils_crc8:
.LFB9:
	.loc 1 129 72 is_stmt 1
	.cfi_startproc
.LVL23:
	.loc 1 131 5
	.loc 1 132 5
	.loc 1 133 5
	.loc 1 135 5
	.loc 1 136 5
	.loc 1 138 5
	.loc 1 135 9 is_stmt 0
	li	a5,0
	.loc 1 138 8
	bne	a0,zero,.L22
.LVL24:
.L20:
	.loc 1 142 5 is_stmt 1
	.loc 1 143 1 is_stmt 0
	mv	a0,a5
.LVL25:
	ret
.LVL26:
.L21:
	.loc 1 139 9 is_stmt 1 discriminator 4
	.loc 1 139 40 is_stmt 0 discriminator 4
	lrbu	a2,a0,a4,0
	.loc 1 138 47 discriminator 4
	addi	a4,a4,1
.LVL27:
	.loc 1 139 40 discriminator 4
	xor	a5,a5,a2
.LVL28:
	.loc 1 139 13 discriminator 4
	lrbu	a5,a3,a5,0
.LVL29:
	.loc 1 138 46 is_stmt 1 discriminator 4
.L19:
	.loc 1 138 33 discriminator 2
	.loc 1 138 23 is_stmt 0 discriminator 2
	bne	a4,a1,.L21
	j	.L20
.LVL30:
.L22:
	.loc 1 139 13
	lui	a3,%hi(.LANCHOR1)
	.loc 1 138 29
	li	a4,0
	.loc 1 139 13
	addi	a3,a3,%lo(.LANCHOR1)
	j	.L19
	.cfi_endproc
.LFE9:
	.size	utils_crc8, .-utils_crc8
	.globl	crc32Tab
	.section	.rodata.crc32Tab,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	crc32Tab, @object
	.size	crc32Tab, 1024
crc32Tab:
	.word	0
	.word	1996959894
	.word	-301047508
	.word	-1727442502
	.word	124634137
	.word	1886057615
	.word	-379345611
	.word	-1637575261
	.word	249268274
	.word	2044508324
	.word	-522852066
	.word	-1747789432
	.word	162941995
	.word	2125561021
	.word	-407360249
	.word	-1866523247
	.word	498536548
	.word	1789927666
	.word	-205950648
	.word	-2067906082
	.word	450548861
	.word	1843258603
	.word	-187386543
	.word	-2083289657
	.word	325883990
	.word	1684777152
	.word	-43845254
	.word	-1973040660
	.word	335633487
	.word	1661365465
	.word	-99664541
	.word	-1928851979
	.word	997073096
	.word	1281953886
	.word	-715111964
	.word	-1570279054
	.word	1006888145
	.word	1258607687
	.word	-770865667
	.word	-1526024853
	.word	901097722
	.word	1119000684
	.word	-608450090
	.word	-1396901568
	.word	853044451
	.word	1172266101
	.word	-589951537
	.word	-1412350631
	.word	651767980
	.word	1373503546
	.word	-925412992
	.word	-1076862698
	.word	565507253
	.word	1454621731
	.word	-809855591
	.word	-1195530993
	.word	671266974
	.word	1594198024
	.word	-972236366
	.word	-1324619484
	.word	795835527
	.word	1483230225
	.word	-1050600021
	.word	-1234817731
	.word	1994146192
	.word	31158534
	.word	-1731059524
	.word	-271249366
	.word	1907459465
	.word	112637215
	.word	-1614814043
	.word	-390540237
	.word	2013776290
	.word	251722036
	.word	-1777751922
	.word	-519137256
	.word	2137656763
	.word	141376813
	.word	-1855689577
	.word	-429695999
	.word	1802195444
	.word	476864866
	.word	-2056965928
	.word	-228458418
	.word	1812370925
	.word	453092731
	.word	-2113342271
	.word	-183516073
	.word	1706088902
	.word	314042704
	.word	-1950435094
	.word	-54949764
	.word	1658658271
	.word	366619977
	.word	-1932296973
	.word	-69972891
	.word	1303535960
	.word	984961486
	.word	-1547960204
	.word	-725929758
	.word	1256170817
	.word	1037604311
	.word	-1529756563
	.word	-740887301
	.word	1131014506
	.word	879679996
	.word	-1385723834
	.word	-631195440
	.word	1141124467
	.word	855842277
	.word	-1442165665
	.word	-586318647
	.word	1342533948
	.word	654459306
	.word	-1106571248
	.word	-921952122
	.word	1466479909
	.word	544179635
	.word	-1184443383
	.word	-832445281
	.word	1591671054
	.word	702138776
	.word	-1328506846
	.word	-942167884
	.word	1504918807
	.word	783551873
	.word	-1212326853
	.word	-1061524307
	.word	-306674912
	.word	-1698712650
	.word	62317068
	.word	1957810842
	.word	-355121351
	.word	-1647151185
	.word	81470997
	.word	1943803523
	.word	-480048366
	.word	-1805370492
	.word	225274430
	.word	2053790376
	.word	-468791541
	.word	-1828061283
	.word	167816743
	.word	2097651377
	.word	-267414716
	.word	-2029476910
	.word	503444072
	.word	1762050814
	.word	-144550051
	.word	-2140837941
	.word	426522225
	.word	1852507879
	.word	-19653770
	.word	-1982649376
	.word	282753626
	.word	1742555852
	.word	-105259153
	.word	-1900089351
	.word	397917763
	.word	1622183637
	.word	-690576408
	.word	-1580100738
	.word	953729732
	.word	1340076626
	.word	-776247311
	.word	-1497606297
	.word	1068828381
	.word	1219638859
	.word	-670225446
	.word	-1358292148
	.word	906185462
	.word	1090812512
	.word	-547295293
	.word	-1469587627
	.word	829329135
	.word	1181335161
	.word	-882789492
	.word	-1134132454
	.word	628085408
	.word	1382605366
	.word	-871598187
	.word	-1156888829
	.word	570562233
	.word	1426400815
	.word	-977650754
	.word	-1296233688
	.word	733239954
	.word	1555261956
	.word	-1026031705
	.word	-1244606671
	.word	752459403
	.word	1541320221
	.word	-1687895376
	.word	-328994266
	.word	1969922972
	.word	40735498
	.word	-1677130071
	.word	-351390145
	.word	1913087877
	.word	83908371
	.word	-1782625662
	.word	-491226604
	.word	2075208622
	.word	213261112
	.word	-1831694693
	.word	-438977011
	.word	2094854071
	.word	198958881
	.word	-2032938284
	.word	-237706686
	.word	1759359992
	.word	534414190
	.word	-2118248755
	.word	-155638181
	.word	1873836001
	.word	414664567
	.word	-2012718362
	.word	-15766928
	.word	1711684554
	.word	285281116
	.word	-1889165569
	.word	-127750551
	.word	1634467795
	.word	376229701
	.word	-1609899400
	.word	-686959890
	.word	1308918612
	.word	956543938
	.word	-1486412191
	.word	-799009033
	.word	1231636301
	.word	1047427035
	.word	-1362007478
	.word	-640263460
	.word	1088359270
	.word	936918000
	.word	-1447252397
	.word	-558129467
	.word	1202900863
	.word	817233897
	.word	-1111625188
	.word	-893730166
	.word	1404277552
	.word	615818150
	.word	-1160759803
	.word	-841546093
	.word	1423857449
	.word	601450431
	.word	-1285129682
	.word	-1000256840
	.word	1567103746
	.word	711928724
	.word	-1274298825
	.word	-1022587231
	.word	1510334235
	.word	755167117
	.section	.rodata.sht75_crc_table,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	sht75_crc_table, @object
	.size	sht75_crc_table, 256
sht75_crc_table:
	.string	""
	.ascii	"1bS\304\365\246\227\271\210\333\352}L\037.Cr!\020\207\266\345"
	.ascii	"\324\372\313\230\251>\017\\m\206\267\344\325Bs \021?\016]l\373"
	.ascii	"\312\231\250\305\364\247\226\0010cR|M\036/\270\211\332\353=\f"
	.ascii	"_n\371\310\233\252\204\265\346\327@q\"\023~O\034-\272\213\330"
	.ascii	"\351\307\366\245\224\0032aP\273\212\331\350\177N\035,\0023`Q"
	.ascii	"\306\367\244\225\370\311\232\253<\r^oAp#\022\205\264\347\326"
	.ascii	"zK\030)\276\217\334\355\303\362\241\220\0076eT9\b[j\375\314\237"
	.ascii	"\256\200\261\342\323Du&\027\374\315\236\2578\tZkEt'\026\201\260"
	.ascii	"\343\322\277\216\335\354{J\031(\0067dU\302\363\240\221Gv%\024"
	.ascii	"\203\262\341\320\376\317\234\255:\013Xi\0045fW\300\361\242\223"
	.ascii	"\275\214\337\356yH\033*\301\360\243\222\0054gVxI\032+\274\215"
	.ascii	"\336\357\202\263\340\321Fw$\025;\nYh\377\316\235\254"
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 3 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./components/utils/math/include/utils_crc.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2fa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF0
	.byte	0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x2b
	.byte	0x17
	.4byte	0x38
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.byte	0x4
	.4byte	0x38
	.byte	0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF2
	.byte	0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x39
	.byte	0x1c
	.4byte	0x57
	.byte	0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF5
	.byte	0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF6
	.byte	0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0x4f
	.byte	0x1b
	.4byte	0x71
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF9
	.byte	0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF10
	.byte	0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF11
	.byte	0x3
	.4byte	.LASF12
	.byte	0x3
	.byte	0xd1
	.byte	0x16
	.4byte	0x8d
	.byte	0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x2c
	.byte	0x4
	.4byte	0xa7
	.byte	0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x24
	.byte	0x14
	.4byte	0x4b
	.byte	0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x65
	.byte	0x4
	.4byte	0xc4
	.byte	0x6
	.4byte	.LASF31
	.byte	0x4
	.byte	0x5
	.byte	0x6
	.byte	0x8
	.4byte	0xf0
	.byte	0x7
	.string	"crc"
	.byte	0x5
	.byte	0x7
	.byte	0xe
	.4byte	0xc4
	.byte	0
	.byte	0
	.byte	0x8
	.4byte	0xd0
	.4byte	0x100
	.byte	0x9
	.4byte	0x8d
	.byte	0xff
	.byte	0
	.byte	0x4
	.4byte	0xf0
	.byte	0xa
	.4byte	.LASF32
	.byte	0x1
	.byte	0xa
	.byte	0x10
	.4byte	0x100
	.byte	0x5
	.byte	0x3
	.4byte	crc32Tab
	.byte	0x8
	.4byte	0xb3
	.4byte	0x127
	.byte	0x9
	.4byte	0x8d
	.byte	0xff
	.byte	0
	.byte	0x4
	.4byte	0x117
	.byte	0xb
	.4byte	.LASF19
	.byte	0x1
	.byte	0x6c
	.byte	0x16
	.4byte	0x127
	.byte	0x5
	.byte	0x3
	.4byte	sht75_crc_table
	.byte	0xc
	.4byte	.LASF20
	.byte	0x1
	.byte	0x81
	.byte	0x9
	.4byte	0xa7
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x1
	.byte	0x9c
	.4byte	0x1a5
	.byte	0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x81
	.byte	0x2a
	.4byte	0x1a5
	.4byte	.LLST10
	.byte	0xe
	.4byte	.LASF18
	.byte	0x1
	.byte	0x81
	.byte	0x3c
	.4byte	0x94
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.string	"a"
	.byte	0x1
	.byte	0x83
	.byte	0xc
	.4byte	0x94
	.4byte	.LLST11
	.byte	0xf
	.string	"crc"
	.byte	0x1
	.byte	0x84
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST12
	.byte	0xf
	.string	"ptr"
	.byte	0x1
	.byte	0x85
	.byte	0x1a
	.4byte	0x1a5
	.4byte	.LLST13
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x3f
	.byte	0xc
	.4byte	.LASF21
	.byte	0x1
	.byte	0x4e
	.byte	0xa
	.4byte	0xb8
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x1
	.byte	0x9c
	.4byte	0x224
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.byte	0x4e
	.byte	0x28
	.4byte	0x224
	.4byte	.LLST4
	.byte	0x11
	.string	"len"
	.byte	0x1
	.byte	0x4e
	.byte	0x39
	.4byte	0xc4
	.4byte	.LLST5
	.byte	0x12
	.4byte	.LASF23
	.byte	0x1
	.byte	0x50
	.byte	0x14
	.4byte	0x22b
	.4byte	.LLST6
	.byte	0xf
	.string	"i"
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST7
	.byte	0x12
	.4byte	.LASF24
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.4byte	0xa7
	.4byte	.LLST8
	.byte	0xf
	.string	"crc"
	.byte	0x1
	.byte	0x53
	.byte	0xe
	.4byte	0xb8
	.4byte	.LLST9
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0x22a
	.byte	0x13
	.byte	0x10
	.byte	0x4
	.4byte	0xb3
	.byte	0xc
	.4byte	.LASF25
	.byte	0x1
	.byte	0x48
	.byte	0xa
	.4byte	0xc4
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x1
	.byte	0x9c
	.4byte	0x25c
	.byte	0x11
	.string	"ctx"
	.byte	0x1
	.byte	0x48
	.byte	0x3e
	.4byte	0x25c
	.4byte	.LLST3
	.byte	0
	.byte	0x10
	.byte	0x4
	.4byte	0xd5
	.byte	0x14
	.4byte	.LASF26
	.byte	0x1
	.byte	0x42
	.byte	0x6
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a7
	.byte	0x15
	.string	"ctx"
	.byte	0x1
	.byte	0x42
	.byte	0x3d
	.4byte	0x25c
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x42
	.byte	0x51
	.4byte	0x22b
	.4byte	.LLST1
	.byte	0x11
	.string	"len"
	.byte	0x1
	.byte	0x42
	.byte	0x60
	.4byte	0xc4
	.4byte	.LLST2
	.byte	0
	.byte	0x14
	.4byte	.LASF27
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x1
	.byte	0x9c
	.4byte	0x2dc
	.byte	0x15
	.string	"ctx"
	.byte	0x1
	.byte	0x3d
	.byte	0x37
	.4byte	0x25c
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3d
	.byte	0x44
	.4byte	0xa7
	.4byte	.LLST0
	.byte	0
	.byte	0x16
	.4byte	.LASF33
	.byte	0x1
	.byte	0x38
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.byte	0x15
	.string	"ctx"
	.byte	0x1
	.byte	0x38
	.byte	0x37
	.4byte	0x25c
	.byte	0x1
	.byte	0x5a
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
	.byte	0x26
	.byte	0
	.byte	0x49
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0x5
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
	.byte	0x18
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
	.byte	0xd
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
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xf
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
	.byte	0x10
	.byte	0xf
	.byte	0
	.byte	0xb
	.byte	0xb
	.byte	0x49
	.byte	0x13
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
	.byte	0x13
	.byte	0x26
	.byte	0
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
.LLST10:
	.4byte	.LVL23
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
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x3
	.byte	0x7e
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL30
	.4byte	.LFE9
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL26
	.4byte	.LVL27
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL27
	.4byte	.LVL30
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL30
	.4byte	.LFE9
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LVL17
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x7
	.byte	0x7d
	.byte	0
	.byte	0x20
	.byte	0x7b
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LFE8
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL10
	.4byte	.LVL18
	.2byte	0x8
	.byte	0x7a
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x7a
	.byte	0
	.byte	0x7d
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL21
	.2byte	0x7
	.byte	0x7d
	.byte	0
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL22
	.4byte	.LFE8
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5a
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x5
	.byte	0x38
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x5
	.byte	0x39
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL11
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL14
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL21
	.4byte	.LFE8
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL8
	.4byte	.LFE7
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
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x8
	.byte	0x7b
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x23
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE6
	.2byte	0x6
	.byte	0x7b
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x7
	.byte	0x7e
	.byte	0
	.byte	0x20
	.byte	0x7c
	.byte	0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LFE6
	.2byte	0x6
	.byte	0x7c
	.byte	0
	.byte	0x7e
	.byte	0
	.byte	0x1c
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LFE5
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
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
.LASF28:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF3:
	.string	"__uint8_t"
.LASF22:
	.string	"dataIn"
.LASF32:
	.string	"crc32Tab"
.LASF25:
	.string	"utils_crc32_stream_results"
.LASF5:
	.string	"short unsigned int"
.LASF29:
	.string	"./components/utils/math/src/utils_crc.c"
.LASF18:
	.string	"num_bytes"
.LASF24:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF31:
	.string	"crc32_stream_ctx"
.LASF8:
	.string	"long unsigned int"
.LASF19:
	.string	"sht75_crc_table"
.LASF12:
	.string	"size_t"
.LASF33:
	.string	"utils_crc32_stream_init"
.LASF27:
	.string	"utils_crc32_stream_feed"
.LASF7:
	.string	"__uint32_t"
.LASF30:
	.string	"./examples/peripherals/spi/spi_master/build/build_out/components/utils"
.LASF21:
	.string	"utils_crc16_ccitt"
.LASF11:
	.string	"unsigned int"
.LASF20:
	.string	"utils_crc8"
.LASF10:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF26:
	.string	"utils_crc32_stream_feed_block"
.LASF23:
	.string	"data_p"
.LASF9:
	.string	"long long int"
.LASF13:
	.string	"char"
.LASF2:
	.string	"short int"
.LASF4:
	.string	"__uint16_t"
.LASF15:
	.string	"uint16_t"
.LASF16:
	.string	"uint32_t"
.LASF6:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF17:
	.string	"input_str"
	.ident	"GCC: (GNU) 10.4.0"
