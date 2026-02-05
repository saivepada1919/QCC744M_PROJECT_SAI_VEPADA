	.file	"lib_vikmemcpy.c"
	.option nopic
	.attribute arch, "rv32i2p0_m2p0_a2p0_f2p0_c2p0_p0p9_zpn0p9_zpsfoperand0p9_xtheade2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.memcpy,"ax",@progbits
	.align	1
	.globl	memcpy
	.type	memcpy, @function
memcpy:
.LFB4:
	.file 1 "./components/libc/nuttx/libc/string/lib_vikmemcpy.c"
	.loc 1 315 1
	.cfi_startproc
.LVL0:
	.loc 1 316 3
	.loc 1 317 3
	.loc 1 319 3
	.loc 1 319 6 is_stmt 0
	li	a4,7
	mv	a5,a0
	add	a3,a0,a2
	bgtu	a2,a4,.L2
	.loc 1 321 9 is_stmt 1
	.loc 1 321 11
	.loc 1 321 13
	li	a5,4
	beq	a2,a5,.L46
	bgtu	a2,a5,.L4
	li	a5,2
	beq	a2,a5,.L47
	li	a4,3
	mv	a5,a0
	beq	a2,a4,.L6
	li	a4,1
	beq	a2,a4,.L7
	ret
.L4:
	li	a5,6
	beq	a2,a5,.L50
	beq	a2,a4,.L10
	li	a4,5
	mv	a5,a0
	beq	a2,a4,.L11
	ret
.L10:
	.loc 1 321 38 discriminator 8
.LVL1:
	.loc 1 321 50 is_stmt 0 discriminator 8
	lbuia	a4,(a1),1,0
.LVL2:
	.loc 1 321 45 discriminator 8
	mv	a5,a0
.LVL3:
	.loc 1 321 48 discriminator 8
	sbia	a4,(a5),1,0
.LVL4:
.L9:
	.loc 1 321 69 is_stmt 1 discriminator 9
	.loc 1 321 81 is_stmt 0 discriminator 9
	lbuia	a4,(a1),1,0
.LVL5:
	.loc 1 321 79 discriminator 9
	sbia	a4,(a5),1,0
.LVL6:
.L11:
	.loc 1 321 100 is_stmt 1 discriminator 10
	.loc 1 321 112 is_stmt 0 discriminator 10
	lbuia	a4,(a1),1,0
.LVL7:
	.loc 1 321 110 discriminator 10
	sbia	a4,(a5),1,0
.LVL8:
.L3:
	.loc 1 321 131 is_stmt 1 discriminator 11
	.loc 1 321 143 is_stmt 0 discriminator 11
	lbuia	a4,(a1),1,0
.LVL9:
	.loc 1 321 141 discriminator 11
	sbia	a4,(a5),1,0
.LVL10:
.L6:
	.loc 1 321 162 is_stmt 1 discriminator 12
	.loc 1 321 174 is_stmt 0 discriminator 12
	lbuia	a4,(a1),1,0
.LVL11:
	.loc 1 321 172 discriminator 12
	sbia	a4,(a5),1,0
.LVL12:
.L5:
	.loc 1 321 193 is_stmt 1 discriminator 13
	.loc 1 321 205 is_stmt 0 discriminator 13
	lbuia	a4,(a1),1,0
.LVL13:
	.loc 1 321 203 discriminator 13
	sbia	a4,(a5),1,0
.LVL14:
.L7:
	.loc 1 321 224 is_stmt 1 discriminator 14
	.loc 1 321 236 is_stmt 0 discriminator 14
	lbu	a4,0(a1)
.LVL15:
.L53:
.LBB2:
	.loc 1 339 1572 discriminator 14
	sb	a4,0(a5)
.L12:
.LBE2:
	.loc 1 349 1
	ret
.LVL16:
.L50:
	.loc 1 321 13
	mv	a5,a0
	j	.L9
.L46:
	mv	a5,a0
	j	.L3
.L47:
	mv	a5,a0
	j	.L5
.LVL17:
.L13:
	.loc 1 330 7 is_stmt 1
	.loc 1 330 19 is_stmt 0
	lbuia	a4,(a1),1,0
.LVL18:
	.loc 1 330 17
	sbia	a4,(a5),1,0
.LVL19:
	.loc 1 331 7 is_stmt 1
.L2:
	.loc 1 328 27 is_stmt 0
	andi	a4,a5,3
	sub	a2,a3,a5
.LVL20:
	.loc 1 328 9 is_stmt 1
	bne	a4,zero,.L13
	.loc 1 334 3
	.loc 1 334 32 is_stmt 0
	andi	a3,a1,3
	.loc 1 334 3
	li	a6,2
.LBB3:
	.loc 1 336 84
	srli	a4,a2,2
.LBE3:
	.loc 1 334 3
	beq	a3,a6,.L14
	li	a6,3
	beq	a3,a6,.L15
	li	a6,1
	bne	a3,a6,.L17
	.loc 1 336 778 is_stmt 1
	.loc 1 336 780
.LBB4:
	.loc 1 337 15
	.loc 1 337 182 is_stmt 0
	andi	a1,a1,-4
.LVL21:
	.loc 1 337 165
	lwia	a6,(a1),4,0
	.loc 1 337 59
	andi	a5,a5,-4
.LVL22:
	.loc 1 337 73 is_stmt 1
	.loc 1 337 131
	.loc 1 337 159
	.loc 1 337 186
	.loc 1 337 201
.L24:
	.loc 1 337 207 discriminator 1
	.loc 1 337 215 is_stmt 0 discriminator 1
	andi	a3,a4,7
	.loc 1 337 207 discriminator 1
	bne	a3,zero,.L25
	.loc 1 337 345 is_stmt 1 discriminator 4
.LVL23:
	.loc 1 337 358 discriminator 4
	.loc 1 337 352 is_stmt 0 discriminator 4
	srli	a4,a4,3
.LVL24:
	slli	a4,a4,5
.LVL25:
	add	t3,a1,a4
	.loc 1 337 364 discriminator 4
	mv	a3,a5
.LVL26:
.L26:
	.loc 1 337 364 is_stmt 1 discriminator 5
	bne	a1,t3,.L27
	.loc 1 337 1354 is_stmt 0 discriminator 8
	andi	a2,a2,3
.LVL27:
	li	a3,2
.LVL28:
	add	a5,a5,a4
	.loc 1 337 1269 is_stmt 1 discriminator 8
	.loc 1 337 1274 is_stmt 0 discriminator 8
	addi	a4,a1,-3
.LVL29:
	.loc 1 337 1305 is_stmt 1 discriminator 8
	.loc 1 337 1336 discriminator 8
	.loc 1 337 1338 discriminator 8
	.loc 1 337 1340 discriminator 8
	beq	a2,a3,.L42
	li	a3,3
	beq	a2,a3,.L29
.LVL30:
.L55:
.LBE4:
.LBB5:
	li	a3,1
	bne	a2,a3,.L12
.L44:
	.loc 1 339 1562 discriminator 14
.LVL31:
	.loc 1 339 1574 is_stmt 0 discriminator 14
	lbu	a4,0(a4)
	j	.L53
.LVL32:
.L18:
.LBE5:
.LBB6:
	.loc 1 336 128 is_stmt 1 discriminator 3
	.loc 1 336 140 is_stmt 0 discriminator 3
	lwia	a3,(a1),4,0
.LVL33:
	.loc 1 336 160 discriminator 3
	addi	a4,a4,-1
.LVL34:
	.loc 1 336 138 discriminator 3
	swia	a3,(a5),4,0
.LVL35:
	.loc 1 336 152 is_stmt 1 discriminator 3
	.loc 1 336 154 discriminator 3
.L17:
	.loc 1 336 111 discriminator 1
	.loc 1 336 119 is_stmt 0 discriminator 1
	andi	a3,a4,7
	.loc 1 336 111 discriminator 1
	bne	a3,zero,.L18
	.loc 1 336 166 is_stmt 1 discriminator 4
.LVL36:
	.loc 1 336 179 discriminator 4
	.loc 1 336 173 is_stmt 0 discriminator 4
	srli	a4,a4,3
.LVL37:
	slli	a4,a4,5
.LVL38:
	add	a3,a1,a4
	.loc 1 336 185 discriminator 4
	mv	a6,a5
.LVL39:
.L19:
	.loc 1 336 185 is_stmt 1 discriminator 5
	bne	a1,a3,.L20
	add	a5,a5,a4
	.loc 1 336 426 discriminator 8
.LVL40:
	.loc 1 336 455 discriminator 8
	.loc 1 336 486 discriminator 8
	.loc 1 336 488 discriminator 8
	.loc 1 336 490 discriminator 8
	.loc 1 336 504 is_stmt 0 discriminator 8
	andi	a2,a2,3
.LVL41:
	li	a4,2
	beq	a2,a4,.L21
	li	a4,3
	beq	a2,a4,.L22
	li	a4,1
	bne	a2,a4,.L12
.L23:
	.loc 1 336 712 is_stmt 1 discriminator 14
.LVL42:
	.loc 1 336 724 is_stmt 0 discriminator 14
	lbu	a4,0(a3)
	j	.L53
.LVL43:
.L20:
	.loc 1 336 200 is_stmt 1 discriminator 7
	.loc 1 336 214 is_stmt 0 discriminator 7
	lw	a7,0(a1)
	.loc 1 336 398 discriminator 7
	addi	a6,a6,32
.LVL44:
	.loc 1 336 208 discriminator 7
	sw	a7,-32(a6)
	.loc 1 336 220 is_stmt 1 discriminator 7
	.loc 1 336 224 discriminator 7
	.loc 1 336 232 is_stmt 0 discriminator 7
	lw	a7,4(a1)
	sw	a7,-28(a6)
	.loc 1 336 244 is_stmt 1 discriminator 7
	.loc 1 336 248 discriminator 7
	.loc 1 336 256 is_stmt 0 discriminator 7
	lw	a7,8(a1)
	sw	a7,-24(a6)
	.loc 1 336 268 is_stmt 1 discriminator 7
	.loc 1 336 272 discriminator 7
	.loc 1 336 280 is_stmt 0 discriminator 7
	lw	a7,12(a1)
	sw	a7,-20(a6)
	.loc 1 336 292 is_stmt 1 discriminator 7
	.loc 1 336 296 discriminator 7
	.loc 1 336 304 is_stmt 0 discriminator 7
	lw	a7,16(a1)
	sw	a7,-16(a6)
	.loc 1 336 316 is_stmt 1 discriminator 7
	.loc 1 336 320 discriminator 7
	.loc 1 336 328 is_stmt 0 discriminator 7
	lw	a7,20(a1)
	sw	a7,-12(a6)
	.loc 1 336 340 is_stmt 1 discriminator 7
	.loc 1 336 344 discriminator 7
	.loc 1 336 352 is_stmt 0 discriminator 7
	lw	a7,24(a1)
	sw	a7,-8(a6)
	.loc 1 336 364 is_stmt 1 discriminator 7
	.loc 1 336 368 discriminator 7
	.loc 1 336 376 is_stmt 0 discriminator 7
	lw	a7,28(a1)
	.loc 1 336 415 discriminator 7
	addi	a1,a1,32
.LVL45:
	.loc 1 336 376 discriminator 7
	sw	a7,-4(a6)
	.loc 1 336 388 is_stmt 1 discriminator 7
	.loc 1 336 390 discriminator 7
.LVL46:
	.loc 1 336 407 discriminator 7
	j	.L19
.LVL47:
.L22:
	.loc 1 336 650 discriminator 12
	.loc 1 336 662 is_stmt 0 discriminator 12
	lbuia	a4,(a3),1,0
.LVL48:
	.loc 1 336 660 discriminator 12
	sbia	a4,(a5),1,0
.LVL49:
.L21:
	.loc 1 336 681 is_stmt 1 discriminator 13
	.loc 1 336 693 is_stmt 0 discriminator 13
	lbuia	a4,(a3),1,0
.LVL50:
	.loc 1 336 691 discriminator 13
	sbia	a4,(a5),1,0
.LVL51:
	j	.L23
.LVL52:
.L25:
.LBE6:
.LBB7:
	.loc 1 337 224 is_stmt 1 discriminator 3
	.loc 1 337 232 is_stmt 0 discriminator 3
	srli	a7,a6,8
.LVL53:
	.loc 1 337 252 is_stmt 1 discriminator 3
	.loc 1 337 260 is_stmt 0 discriminator 3
	lwia	a6,(a1),4,0
.LVL54:
	.loc 1 337 273 is_stmt 1 discriminator 3
	.loc 1 337 309 discriminator 3
	.loc 1 337 339 is_stmt 0 discriminator 3
	addi	a4,a4,-1
.LVL55:
	.loc 1 337 292 discriminator 3
	slli	a3,a6,24
	.loc 1 337 281 discriminator 3
	or	a3,a3,a7
.LVL56:
	.loc 1 337 319 discriminator 3
	swia	a3,(a5),4,0
.LVL57:
	.loc 1 337 331 is_stmt 1 discriminator 3
	.loc 1 337 333 discriminator 3
	j	.L24
.LVL58:
.L27:
	.loc 1 337 379 discriminator 7
	.loc 1 337 415 is_stmt 0 discriminator 7
	lw	a7,0(a1)
	.loc 1 337 387 discriminator 7
	srli	a6,a6,8
.LVL59:
	.loc 1 337 407 is_stmt 1 discriminator 7
	.loc 1 337 426 discriminator 7
	.loc 1 337 462 discriminator 7
	.loc 1 337 445 is_stmt 0 discriminator 7
	slli	t1,a7,24
	.loc 1 337 434 discriminator 7
	or	a6,t1,a6
.LVL60:
	.loc 1 337 470 discriminator 7
	sw	a6,0(a3)
	.loc 1 337 482 is_stmt 1 discriminator 7
	.loc 1 337 486 discriminator 7
	.loc 1 337 522 is_stmt 0 discriminator 7
	lw	a6,4(a1)
.LVL61:
	.loc 1 337 494 discriminator 7
	srli	a7,a7,8
.LVL62:
	.loc 1 337 514 is_stmt 1 discriminator 7
	.loc 1 337 533 discriminator 7
	.loc 1 337 569 discriminator 7
	.loc 1 337 552 is_stmt 0 discriminator 7
	slli	t1,a6,24
	.loc 1 337 541 discriminator 7
	or	a7,t1,a7
.LVL63:
	.loc 1 337 577 discriminator 7
	sw	a7,4(a3)
	.loc 1 337 589 is_stmt 1 discriminator 7
	.loc 1 337 593 discriminator 7
	.loc 1 337 601 is_stmt 0 discriminator 7
	srli	a7,a6,8
.LVL64:
	.loc 1 337 621 is_stmt 1 discriminator 7
	.loc 1 337 629 is_stmt 0 discriminator 7
	lw	a6,8(a1)
.LVL65:
	.loc 1 337 640 is_stmt 1 discriminator 7
	.loc 1 337 676 discriminator 7
	.loc 1 337 659 is_stmt 0 discriminator 7
	slli	t1,a6,24
	.loc 1 337 648 discriminator 7
	or	a7,t1,a7
.LVL66:
	.loc 1 337 684 discriminator 7
	sw	a7,8(a3)
	.loc 1 337 696 is_stmt 1 discriminator 7
	.loc 1 337 700 discriminator 7
	.loc 1 337 708 is_stmt 0 discriminator 7
	srli	a7,a6,8
.LVL67:
	.loc 1 337 728 is_stmt 1 discriminator 7
	.loc 1 337 736 is_stmt 0 discriminator 7
	lw	a6,12(a1)
.LVL68:
	.loc 1 337 747 is_stmt 1 discriminator 7
	.loc 1 337 783 discriminator 7
	.loc 1 337 766 is_stmt 0 discriminator 7
	slli	t1,a6,24
	.loc 1 337 755 discriminator 7
	or	a7,t1,a7
.LVL69:
	.loc 1 337 791 discriminator 7
	sw	a7,12(a3)
	.loc 1 337 803 is_stmt 1 discriminator 7
	.loc 1 337 807 discriminator 7
	.loc 1 337 815 is_stmt 0 discriminator 7
	srli	a7,a6,8
.LVL70:
	.loc 1 337 835 is_stmt 1 discriminator 7
	.loc 1 337 843 is_stmt 0 discriminator 7
	lw	a6,16(a1)
.LVL71:
	.loc 1 337 854 is_stmt 1 discriminator 7
	.loc 1 337 890 discriminator 7
	.loc 1 337 873 is_stmt 0 discriminator 7
	slli	t1,a6,24
	.loc 1 337 862 discriminator 7
	or	a7,t1,a7
.LVL72:
	.loc 1 337 898 discriminator 7
	sw	a7,16(a3)
	.loc 1 337 910 is_stmt 1 discriminator 7
	.loc 1 337 914 discriminator 7
	.loc 1 337 922 is_stmt 0 discriminator 7
	srli	a7,a6,8
.LVL73:
	.loc 1 337 942 is_stmt 1 discriminator 7
	.loc 1 337 950 is_stmt 0 discriminator 7
	lw	a6,20(a1)
.LVL74:
	.loc 1 337 961 is_stmt 1 discriminator 7
	.loc 1 337 997 discriminator 7
	.loc 1 337 980 is_stmt 0 discriminator 7
	slli	t1,a6,24
	.loc 1 337 969 discriminator 7
	or	a7,t1,a7
.LVL75:
	.loc 1 337 1005 discriminator 7
	sw	a7,20(a3)
	.loc 1 337 1017 is_stmt 1 discriminator 7
	.loc 1 337 1021 discriminator 7
	.loc 1 337 1029 is_stmt 0 discriminator 7
	srli	a7,a6,8
.LVL76:
	.loc 1 337 1049 is_stmt 1 discriminator 7
	.loc 1 337 1057 is_stmt 0 discriminator 7
	lw	a6,24(a1)
.LVL77:
	.loc 1 337 1068 is_stmt 1 discriminator 7
	.loc 1 337 1104 discriminator 7
	.loc 1 337 1087 is_stmt 0 discriminator 7
	slli	t1,a6,24
	.loc 1 337 1076 discriminator 7
	or	a7,t1,a7
.LVL78:
	.loc 1 337 1112 discriminator 7
	sw	a7,24(a3)
	.loc 1 337 1124 is_stmt 1 discriminator 7
	.loc 1 337 1128 discriminator 7
	.loc 1 337 1136 is_stmt 0 discriminator 7
	srli	a7,a6,8
.LVL79:
	.loc 1 337 1156 is_stmt 1 discriminator 7
	.loc 1 337 1164 is_stmt 0 discriminator 7
	lw	a6,28(a1)
.LVL80:
	.loc 1 337 1175 is_stmt 1 discriminator 7
	.loc 1 337 1211 discriminator 7
	.loc 1 337 1258 is_stmt 0 discriminator 7
	addi	a1,a1,32
.LVL81:
	.loc 1 337 1194 discriminator 7
	slli	t1,a6,24
	.loc 1 337 1183 discriminator 7
	or	a7,t1,a7
.LVL82:
	.loc 1 337 1219 discriminator 7
	sw	a7,28(a3)
	.loc 1 337 1231 is_stmt 1 discriminator 7
	.loc 1 337 1233 discriminator 7
	.loc 1 337 1241 is_stmt 0 discriminator 7
	addi	a3,a3,32
.LVL83:
	.loc 1 337 1250 is_stmt 1 discriminator 7
	j	.L26
.LVL84:
.L29:
	.loc 1 337 1500 discriminator 12
	.loc 1 337 1512 is_stmt 0 discriminator 12
	lbu	a3,-3(a1)
	.loc 1 337 1519 discriminator 12
	addi	a4,a1,-2
.LVL85:
.L57:
.LBE7:
.LBB8:
	.loc 1 338 1510 discriminator 12
	sbia	a3,(a5),1,0
.LVL86:
	.loc 1 338 1531 is_stmt 1 discriminator 12
.L42:
.LBE8:
.LBB9:
	.loc 1 339 1531 discriminator 13
	.loc 1 339 1543 is_stmt 0 discriminator 13
	lbuia	a3,(a4),1,0
.LVL87:
	.loc 1 339 1541 discriminator 13
	sbia	a3,(a5),1,0
.LVL88:
	j	.L44
.LVL89:
.L14:
.LBE9:
	.loc 1 337 1628 is_stmt 1
	.loc 1 337 1630
.LBB10:
	.loc 1 338 15
	.loc 1 338 182 is_stmt 0
	andi	a1,a1,-4
.LVL90:
	.loc 1 338 165
	lwia	a6,(a1),4,0
	.loc 1 338 59
	andi	a5,a5,-4
.LVL91:
	.loc 1 338 73 is_stmt 1
	.loc 1 338 131
	.loc 1 338 159
	.loc 1 338 186
	.loc 1 338 201
.L31:
	.loc 1 338 207 discriminator 1
	.loc 1 338 215 is_stmt 0 discriminator 1
	andi	a3,a4,7
	.loc 1 338 207 discriminator 1
	bne	a3,zero,.L32
	.loc 1 338 345 is_stmt 1 discriminator 4
.LVL92:
	.loc 1 338 358 discriminator 4
	.loc 1 338 352 is_stmt 0 discriminator 4
	srli	a4,a4,3
.LVL93:
	slli	a4,a4,5
.LVL94:
	add	t3,a1,a4
	.loc 1 338 364 discriminator 4
	mv	a3,a5
.LVL95:
.L33:
	.loc 1 338 364 is_stmt 1 discriminator 5
	bne	a1,t3,.L34
	.loc 1 338 1354 is_stmt 0 discriminator 8
	andi	a2,a2,3
.LVL96:
	li	a3,2
.LVL97:
	add	a5,a5,a4
	.loc 1 338 1269 is_stmt 1 discriminator 8
	.loc 1 338 1274 is_stmt 0 discriminator 8
	addi	a4,a1,-2
.LVL98:
	.loc 1 338 1305 is_stmt 1 discriminator 8
	.loc 1 338 1336 discriminator 8
	.loc 1 338 1338 discriminator 8
	.loc 1 338 1340 discriminator 8
	beq	a2,a3,.L42
	li	a3,3
	bne	a2,a3,.L55
	.loc 1 338 1500 discriminator 12
.LVL99:
	.loc 1 338 1512 is_stmt 0 discriminator 12
	lbu	a3,-2(a1)
	.loc 1 338 1519 discriminator 12
	addi	a4,a1,-1
.LVL100:
	j	.L57
.LVL101:
.L32:
	.loc 1 338 224 is_stmt 1 discriminator 3
	.loc 1 338 232 is_stmt 0 discriminator 3
	srli	a7,a6,16
.LVL102:
	.loc 1 338 252 is_stmt 1 discriminator 3
	.loc 1 338 260 is_stmt 0 discriminator 3
	lwia	a6,(a1),4,0
.LVL103:
	.loc 1 338 273 is_stmt 1 discriminator 3
	.loc 1 338 309 discriminator 3
	.loc 1 338 339 is_stmt 0 discriminator 3
	addi	a4,a4,-1
.LVL104:
	.loc 1 338 292 discriminator 3
	slli	a3,a6,16
	.loc 1 338 281 discriminator 3
	or	a3,a3,a7
.LVL105:
	.loc 1 338 319 discriminator 3
	swia	a3,(a5),4,0
.LVL106:
	.loc 1 338 331 is_stmt 1 discriminator 3
	.loc 1 338 333 discriminator 3
	j	.L31
.LVL107:
.L34:
	.loc 1 338 379 discriminator 7
	.loc 1 338 415 is_stmt 0 discriminator 7
	lw	a7,0(a1)
	.loc 1 338 387 discriminator 7
	srli	a6,a6,16
.LVL108:
	.loc 1 338 407 is_stmt 1 discriminator 7
	.loc 1 338 426 discriminator 7
	.loc 1 338 462 discriminator 7
	.loc 1 338 445 is_stmt 0 discriminator 7
	slli	t1,a7,16
	.loc 1 338 434 discriminator 7
	or	a6,t1,a6
.LVL109:
	.loc 1 338 470 discriminator 7
	sw	a6,0(a3)
	.loc 1 338 482 is_stmt 1 discriminator 7
	.loc 1 338 486 discriminator 7
	.loc 1 338 522 is_stmt 0 discriminator 7
	lw	a6,4(a1)
.LVL110:
	.loc 1 338 494 discriminator 7
	srli	a7,a7,16
.LVL111:
	.loc 1 338 514 is_stmt 1 discriminator 7
	.loc 1 338 533 discriminator 7
	.loc 1 338 569 discriminator 7
	.loc 1 338 552 is_stmt 0 discriminator 7
	slli	t1,a6,16
	.loc 1 338 541 discriminator 7
	or	a7,t1,a7
.LVL112:
	.loc 1 338 577 discriminator 7
	sw	a7,4(a3)
	.loc 1 338 589 is_stmt 1 discriminator 7
	.loc 1 338 593 discriminator 7
	.loc 1 338 601 is_stmt 0 discriminator 7
	srli	a7,a6,16
.LVL113:
	.loc 1 338 621 is_stmt 1 discriminator 7
	.loc 1 338 629 is_stmt 0 discriminator 7
	lw	a6,8(a1)
.LVL114:
	.loc 1 338 640 is_stmt 1 discriminator 7
	.loc 1 338 676 discriminator 7
	.loc 1 338 659 is_stmt 0 discriminator 7
	slli	t1,a6,16
	.loc 1 338 648 discriminator 7
	or	a7,t1,a7
.LVL115:
	.loc 1 338 684 discriminator 7
	sw	a7,8(a3)
	.loc 1 338 696 is_stmt 1 discriminator 7
	.loc 1 338 700 discriminator 7
	.loc 1 338 708 is_stmt 0 discriminator 7
	srli	a7,a6,16
.LVL116:
	.loc 1 338 728 is_stmt 1 discriminator 7
	.loc 1 338 736 is_stmt 0 discriminator 7
	lw	a6,12(a1)
.LVL117:
	.loc 1 338 747 is_stmt 1 discriminator 7
	.loc 1 338 783 discriminator 7
	.loc 1 338 766 is_stmt 0 discriminator 7
	slli	t1,a6,16
	.loc 1 338 755 discriminator 7
	or	a7,t1,a7
.LVL118:
	.loc 1 338 791 discriminator 7
	sw	a7,12(a3)
	.loc 1 338 803 is_stmt 1 discriminator 7
	.loc 1 338 807 discriminator 7
	.loc 1 338 815 is_stmt 0 discriminator 7
	srli	a7,a6,16
.LVL119:
	.loc 1 338 835 is_stmt 1 discriminator 7
	.loc 1 338 843 is_stmt 0 discriminator 7
	lw	a6,16(a1)
.LVL120:
	.loc 1 338 854 is_stmt 1 discriminator 7
	.loc 1 338 890 discriminator 7
	.loc 1 338 873 is_stmt 0 discriminator 7
	slli	t1,a6,16
	.loc 1 338 862 discriminator 7
	or	a7,t1,a7
.LVL121:
	.loc 1 338 898 discriminator 7
	sw	a7,16(a3)
	.loc 1 338 910 is_stmt 1 discriminator 7
	.loc 1 338 914 discriminator 7
	.loc 1 338 922 is_stmt 0 discriminator 7
	srli	a7,a6,16
.LVL122:
	.loc 1 338 942 is_stmt 1 discriminator 7
	.loc 1 338 950 is_stmt 0 discriminator 7
	lw	a6,20(a1)
.LVL123:
	.loc 1 338 961 is_stmt 1 discriminator 7
	.loc 1 338 997 discriminator 7
	.loc 1 338 980 is_stmt 0 discriminator 7
	slli	t1,a6,16
	.loc 1 338 969 discriminator 7
	or	a7,t1,a7
.LVL124:
	.loc 1 338 1005 discriminator 7
	sw	a7,20(a3)
	.loc 1 338 1017 is_stmt 1 discriminator 7
	.loc 1 338 1021 discriminator 7
	.loc 1 338 1029 is_stmt 0 discriminator 7
	srli	a7,a6,16
.LVL125:
	.loc 1 338 1049 is_stmt 1 discriminator 7
	.loc 1 338 1057 is_stmt 0 discriminator 7
	lw	a6,24(a1)
.LVL126:
	.loc 1 338 1068 is_stmt 1 discriminator 7
	.loc 1 338 1104 discriminator 7
	.loc 1 338 1087 is_stmt 0 discriminator 7
	slli	t1,a6,16
	.loc 1 338 1076 discriminator 7
	or	a7,t1,a7
.LVL127:
	.loc 1 338 1112 discriminator 7
	sw	a7,24(a3)
	.loc 1 338 1124 is_stmt 1 discriminator 7
	.loc 1 338 1128 discriminator 7
	.loc 1 338 1136 is_stmt 0 discriminator 7
	srli	a7,a6,16
.LVL128:
	.loc 1 338 1156 is_stmt 1 discriminator 7
	.loc 1 338 1164 is_stmt 0 discriminator 7
	lw	a6,28(a1)
.LVL129:
	.loc 1 338 1175 is_stmt 1 discriminator 7
	.loc 1 338 1211 discriminator 7
	.loc 1 338 1258 is_stmt 0 discriminator 7
	addi	a1,a1,32
.LVL130:
	.loc 1 338 1194 discriminator 7
	slli	t1,a6,16
	.loc 1 338 1183 discriminator 7
	or	a7,t1,a7
.LVL131:
	.loc 1 338 1219 discriminator 7
	sw	a7,28(a3)
	.loc 1 338 1231 is_stmt 1 discriminator 7
	.loc 1 338 1233 discriminator 7
	.loc 1 338 1241 is_stmt 0 discriminator 7
	addi	a3,a3,32
.LVL132:
	.loc 1 338 1250 is_stmt 1 discriminator 7
	j	.L33
.LVL133:
.L15:
.LBE10:
	.loc 1 338 1628
	.loc 1 338 1630
.LBB11:
	.loc 1 339 15
	.loc 1 339 182 is_stmt 0
	andi	a1,a1,-4
.LVL134:
	.loc 1 339 165
	lwia	a6,(a1),4,0
	.loc 1 339 59
	andi	a5,a5,-4
.LVL135:
	.loc 1 339 73 is_stmt 1
	.loc 1 339 131
	.loc 1 339 159
	.loc 1 339 186
	.loc 1 339 201
.L38:
	.loc 1 339 207 discriminator 1
	.loc 1 339 215 is_stmt 0 discriminator 1
	andi	a3,a4,7
	.loc 1 339 207 discriminator 1
	bne	a3,zero,.L39
	.loc 1 339 345 is_stmt 1 discriminator 4
.LVL136:
	.loc 1 339 358 discriminator 4
	.loc 1 339 352 is_stmt 0 discriminator 4
	srli	a4,a4,3
.LVL137:
	slli	a4,a4,5
.LVL138:
	add	t3,a1,a4
	.loc 1 339 364 discriminator 4
	mv	a3,a5
.LVL139:
.L40:
	.loc 1 339 364 is_stmt 1 discriminator 5
	bne	a1,t3,.L41
	.loc 1 339 1354 is_stmt 0 discriminator 8
	andi	a2,a2,3
.LVL140:
	li	a3,2
.LVL141:
	add	a5,a5,a4
	.loc 1 339 1269 is_stmt 1 discriminator 8
	.loc 1 339 1274 is_stmt 0 discriminator 8
	addi	a4,a1,-1
.LVL142:
	.loc 1 339 1305 is_stmt 1 discriminator 8
	.loc 1 339 1336 discriminator 8
	.loc 1 339 1338 discriminator 8
	.loc 1 339 1340 discriminator 8
	beq	a2,a3,.L42
	li	a3,3
	bne	a2,a3,.L55
	.loc 1 339 1500 discriminator 12
.LVL143:
	.loc 1 339 1512 is_stmt 0 discriminator 12
	lbu	a4,-1(a1)
	.loc 1 339 1510 discriminator 12
	sbia	a4,(a5),1,0
.LVL144:
	mv	a4,a1
	j	.L42
.LVL145:
.L39:
	.loc 1 339 224 is_stmt 1 discriminator 3
	.loc 1 339 232 is_stmt 0 discriminator 3
	srli	a7,a6,24
.LVL146:
	.loc 1 339 252 is_stmt 1 discriminator 3
	.loc 1 339 260 is_stmt 0 discriminator 3
	lwia	a6,(a1),4,0
.LVL147:
	.loc 1 339 273 is_stmt 1 discriminator 3
	.loc 1 339 309 discriminator 3
	.loc 1 339 339 is_stmt 0 discriminator 3
	addi	a4,a4,-1
.LVL148:
	.loc 1 339 292 discriminator 3
	slli	a3,a6,8
	.loc 1 339 281 discriminator 3
	or	a3,a3,a7
.LVL149:
	.loc 1 339 319 discriminator 3
	swia	a3,(a5),4,0
.LVL150:
	.loc 1 339 331 is_stmt 1 discriminator 3
	.loc 1 339 333 discriminator 3
	j	.L38
.LVL151:
.L41:
	.loc 1 339 379 discriminator 7
	.loc 1 339 415 is_stmt 0 discriminator 7
	lw	a7,0(a1)
	.loc 1 339 387 discriminator 7
	srli	a6,a6,24
.LVL152:
	.loc 1 339 407 is_stmt 1 discriminator 7
	.loc 1 339 426 discriminator 7
	.loc 1 339 462 discriminator 7
	.loc 1 339 445 is_stmt 0 discriminator 7
	slli	t1,a7,8
	.loc 1 339 434 discriminator 7
	or	a6,t1,a6
.LVL153:
	.loc 1 339 470 discriminator 7
	sw	a6,0(a3)
	.loc 1 339 482 is_stmt 1 discriminator 7
	.loc 1 339 486 discriminator 7
	.loc 1 339 522 is_stmt 0 discriminator 7
	lw	a6,4(a1)
.LVL154:
	.loc 1 339 494 discriminator 7
	srli	a7,a7,24
.LVL155:
	.loc 1 339 514 is_stmt 1 discriminator 7
	.loc 1 339 533 discriminator 7
	.loc 1 339 569 discriminator 7
	.loc 1 339 552 is_stmt 0 discriminator 7
	slli	t1,a6,8
	.loc 1 339 541 discriminator 7
	or	a7,t1,a7
.LVL156:
	.loc 1 339 577 discriminator 7
	sw	a7,4(a3)
	.loc 1 339 589 is_stmt 1 discriminator 7
	.loc 1 339 593 discriminator 7
	.loc 1 339 601 is_stmt 0 discriminator 7
	srli	a7,a6,24
.LVL157:
	.loc 1 339 621 is_stmt 1 discriminator 7
	.loc 1 339 629 is_stmt 0 discriminator 7
	lw	a6,8(a1)
.LVL158:
	.loc 1 339 640 is_stmt 1 discriminator 7
	.loc 1 339 676 discriminator 7
	.loc 1 339 659 is_stmt 0 discriminator 7
	slli	t1,a6,8
	.loc 1 339 648 discriminator 7
	or	a7,t1,a7
.LVL159:
	.loc 1 339 684 discriminator 7
	sw	a7,8(a3)
	.loc 1 339 696 is_stmt 1 discriminator 7
	.loc 1 339 700 discriminator 7
	.loc 1 339 708 is_stmt 0 discriminator 7
	srli	a7,a6,24
.LVL160:
	.loc 1 339 728 is_stmt 1 discriminator 7
	.loc 1 339 736 is_stmt 0 discriminator 7
	lw	a6,12(a1)
.LVL161:
	.loc 1 339 747 is_stmt 1 discriminator 7
	.loc 1 339 783 discriminator 7
	.loc 1 339 766 is_stmt 0 discriminator 7
	slli	t1,a6,8
	.loc 1 339 755 discriminator 7
	or	a7,t1,a7
.LVL162:
	.loc 1 339 791 discriminator 7
	sw	a7,12(a3)
	.loc 1 339 803 is_stmt 1 discriminator 7
	.loc 1 339 807 discriminator 7
	.loc 1 339 815 is_stmt 0 discriminator 7
	srli	a7,a6,24
.LVL163:
	.loc 1 339 835 is_stmt 1 discriminator 7
	.loc 1 339 843 is_stmt 0 discriminator 7
	lw	a6,16(a1)
.LVL164:
	.loc 1 339 854 is_stmt 1 discriminator 7
	.loc 1 339 890 discriminator 7
	.loc 1 339 873 is_stmt 0 discriminator 7
	slli	t1,a6,8
	.loc 1 339 862 discriminator 7
	or	a7,t1,a7
.LVL165:
	.loc 1 339 898 discriminator 7
	sw	a7,16(a3)
	.loc 1 339 910 is_stmt 1 discriminator 7
	.loc 1 339 914 discriminator 7
	.loc 1 339 922 is_stmt 0 discriminator 7
	srli	a7,a6,24
.LVL166:
	.loc 1 339 942 is_stmt 1 discriminator 7
	.loc 1 339 950 is_stmt 0 discriminator 7
	lw	a6,20(a1)
.LVL167:
	.loc 1 339 961 is_stmt 1 discriminator 7
	.loc 1 339 997 discriminator 7
	.loc 1 339 980 is_stmt 0 discriminator 7
	slli	t1,a6,8
	.loc 1 339 969 discriminator 7
	or	a7,t1,a7
.LVL168:
	.loc 1 339 1005 discriminator 7
	sw	a7,20(a3)
	.loc 1 339 1017 is_stmt 1 discriminator 7
	.loc 1 339 1021 discriminator 7
	.loc 1 339 1029 is_stmt 0 discriminator 7
	srli	a7,a6,24
.LVL169:
	.loc 1 339 1049 is_stmt 1 discriminator 7
	.loc 1 339 1057 is_stmt 0 discriminator 7
	lw	a6,24(a1)
.LVL170:
	.loc 1 339 1068 is_stmt 1 discriminator 7
	.loc 1 339 1104 discriminator 7
	.loc 1 339 1087 is_stmt 0 discriminator 7
	slli	t1,a6,8
	.loc 1 339 1076 discriminator 7
	or	a7,t1,a7
.LVL171:
	.loc 1 339 1112 discriminator 7
	sw	a7,24(a3)
	.loc 1 339 1124 is_stmt 1 discriminator 7
	.loc 1 339 1128 discriminator 7
	.loc 1 339 1136 is_stmt 0 discriminator 7
	srli	a7,a6,24
.LVL172:
	.loc 1 339 1156 is_stmt 1 discriminator 7
	.loc 1 339 1164 is_stmt 0 discriminator 7
	lw	a6,28(a1)
.LVL173:
	.loc 1 339 1175 is_stmt 1 discriminator 7
	.loc 1 339 1211 discriminator 7
	.loc 1 339 1258 is_stmt 0 discriminator 7
	addi	a1,a1,32
.LVL174:
	.loc 1 339 1194 discriminator 7
	slli	t1,a6,8
	.loc 1 339 1183 discriminator 7
	or	a7,t1,a7
.LVL175:
	.loc 1 339 1219 discriminator 7
	sw	a7,28(a3)
	.loc 1 339 1231 is_stmt 1 discriminator 7
	.loc 1 339 1233 discriminator 7
	.loc 1 339 1241 is_stmt 0 discriminator 7
	addi	a3,a3,32
.LVL176:
	.loc 1 339 1250 is_stmt 1 discriminator 7
	j	.L40
.LBE11:
	.cfi_endproc
.LFE4:
	.size	memcpy, .-memcpy
	.text
.Letext0:
	.file 2 "./toolchain/linux_x86_64/lib/gcc/riscv64-unknown-elf/10.4.0/include/stddef.h"
	.file 3 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/machine/_default_types.h"
	.file 4 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/sys/_stdint.h"
	.file 5 "./toolchain/linux_x86_64/riscv64-unknown-elf/include/string.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.4byte	0x2a9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1
	.4byte	.LASF27
	.byte	0xc
	.4byte	.LASF28
	.4byte	.LASF29
	.4byte	.Ldebug_ranges0+0x70
	.4byte	0
	.4byte	.Ldebug_line0
	.byte	0x2
	.4byte	.LASF2
	.byte	0x2
	.byte	0xd1
	.byte	0x16
	.4byte	0x31
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.byte	0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.byte	0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.byte	0x2
	.4byte	.LASF3
	.byte	0x3
	.byte	0x2b
	.byte	0x17
	.4byte	0x52
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.byte	0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF7
	.byte	0x2
	.4byte	.LASF8
	.byte	0x3
	.byte	0x4f
	.byte	0x1b
	.4byte	0x7a
	.byte	0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.byte	0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF10
	.byte	0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF11
	.byte	0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0xe8
	.byte	0x16
	.4byte	0x31
	.byte	0x5
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.byte	0x6
	.byte	0x4
	.4byte	0xaa
	.byte	0x7
	.byte	0x2
	.4byte	.LASF14
	.byte	0x4
	.byte	0x18
	.byte	0x13
	.4byte	0x46
	.byte	0x2
	.4byte	.LASF15
	.byte	0x4
	.byte	0x30
	.byte	0x14
	.4byte	0x6e
	.byte	0x2
	.4byte	.LASF16
	.byte	0x4
	.byte	0x52
	.byte	0x15
	.4byte	0x8f
	.byte	0x8
	.4byte	.LASF17
	.byte	0x1
	.2byte	0x122
	.byte	0x12
	.4byte	0xb7
	.byte	0x9
	.4byte	.LASF30
	.byte	0x5
	.byte	0x1f
	.byte	0x8
	.4byte	0x9b
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x1
	.byte	0x9c
	.4byte	0x2a0
	.byte	0xa
	.4byte	.LASF18
	.byte	0x1
	.2byte	0x13a
	.byte	0x16
	.4byte	0x9b
	.byte	0x1
	.byte	0x5a
	.byte	0xb
	.string	"src"
	.byte	0x1
	.2byte	0x13a
	.byte	0x28
	.4byte	0xa4
	.4byte	.LLST0
	.byte	0xc
	.4byte	.LASF19
	.byte	0x1
	.2byte	0x13a
	.byte	0x34
	.4byte	0x25
	.4byte	.LLST1
	.byte	0xd
	.4byte	.LASF20
	.byte	0x1
	.2byte	0x13c
	.byte	0xc
	.4byte	0x2a0
	.4byte	.LLST2
	.byte	0xd
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x13d
	.byte	0xc
	.4byte	0x2a0
	.4byte	.LLST3
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x28
	.4byte	0x186
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x150
	.byte	0x16
	.4byte	0x2a6
	.4byte	.LLST9
	.byte	0xd
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x150
	.byte	0x35
	.4byte	0x2a6
	.4byte	.LLST10
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x150
	.byte	0x54
	.4byte	0x25
	.4byte	.LLST11
	.byte	0
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x40
	.4byte	0x1e5
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x151
	.byte	0x16
	.4byte	0x2a6
	.4byte	.LLST12
	.byte	0xd
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x151
	.byte	0x50
	.4byte	0x2a6
	.4byte	.LLST13
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x151
	.byte	0x8a
	.4byte	0x25
	.4byte	.LLST14
	.byte	0xd
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x151
	.byte	0xa5
	.4byte	0xcf
	.4byte	.LLST15
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x151
	.byte	0xc0
	.4byte	0xcf
	.4byte	.LLST16
	.byte	0
	.byte	0xe
	.4byte	.Ldebug_ranges0+0x58
	.4byte	0x244
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x152
	.byte	0x16
	.4byte	0x2a6
	.4byte	.LLST17
	.byte	0xd
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x152
	.byte	0x50
	.4byte	0x2a6
	.4byte	.LLST18
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x152
	.byte	0x8a
	.4byte	0x25
	.4byte	.LLST19
	.byte	0xd
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x152
	.byte	0xa5
	.4byte	0xcf
	.4byte	.LLST20
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x152
	.byte	0xc0
	.4byte	0xcf
	.4byte	.LLST21
	.byte	0
	.byte	0xf
	.4byte	.Ldebug_ranges0+0
	.byte	0xd
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x153
	.byte	0x16
	.4byte	0x2a6
	.4byte	.LLST4
	.byte	0xd
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x153
	.byte	0x50
	.4byte	0x2a6
	.4byte	.LLST5
	.byte	0xd
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x153
	.byte	0x8a
	.4byte	0x25
	.4byte	.LLST6
	.byte	0xd
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x153
	.byte	0xa5
	.4byte	0xcf
	.4byte	.LLST7
	.byte	0xd
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x153
	.byte	0xc0
	.4byte	0xcf
	.4byte	.LLST8
	.byte	0
	.byte	0
	.byte	0x6
	.byte	0x4
	.4byte	0xab
	.byte	0x6
	.byte	0x4
	.4byte	0xcf
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
	.byte	0x3
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
	.byte	0
	.byte	0
	.byte	0x8
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
	.byte	0x5
	.byte	0x39
	.byte	0xb
	.byte	0x49
	.byte	0x13
	.byte	0x2
	.byte	0x18
	.byte	0
	.byte	0
	.byte	0xb
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
	.byte	0x2
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0xe
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0x1
	.byte	0x13
	.byte	0
	.byte	0
	.byte	0xf
	.byte	0xb
	.byte	0x1
	.byte	0x55
	.byte	0x17
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x3
	.byte	0x7b
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL16
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17
	.4byte	.LFE4
	.2byte	0x4
	.byte	0xf3
	.byte	0x1
	.byte	0x5b
	.byte	0x9f
	.4byte	0
	.4byte	0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL20
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL32
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL43
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL52
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL89
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL101
	.4byte	.LVL140
	.2byte	0x1
	.byte	0x5c
	.4byte	.LVL145
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5c
	.4byte	0
	.4byte	0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL3
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL17
	.4byte	.LVL19
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL31
	.4byte	.LVL32
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL51
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL98
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL133
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x3
	.byte	0x7f
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5f
	.4byte	0
	.4byte	0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL12
	.4byte	.LVL13
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x3
	.byte	0x7b
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL29
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL40
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL42
	.4byte	.LVL43
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x3
	.byte	0x7d
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x3
	.byte	0x7b
	.byte	0x7e
	.byte	0x9f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL87
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL89
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x3
	.byte	0x7b
	.byte	0x7f
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL143
	.4byte	.LVL145
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST9:
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL39
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x80
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST10:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x7b
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x3
	.byte	0x7b
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST11:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST12:
	.4byte	.LVL22
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL26
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL52
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL54
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL58
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST13:
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x3
	.byte	0x7b
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL54
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL81
	.4byte	.LVL83
	.2byte	0x3
	.byte	0x7b
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST14:
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL52
	.4byte	.LVL55
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL55
	.4byte	.LVL57
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST15:
	.4byte	.LVL22
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL52
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL59
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL62
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST16:
	.4byte	.LVL53
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL54
	.4byte	.LVL56
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x48
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL59
	.4byte	.LVL60
	.2byte	0x8
	.byte	0x81
	.byte	0
	.byte	0x48
	.byte	0x24
	.byte	0x80
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x48
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL65
	.4byte	.LVL66
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x48
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x48
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x48
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL74
	.4byte	.LVL75
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x48
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x48
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL80
	.4byte	.LVL82
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x48
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST17:
	.4byte	.LVL91
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL101
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL103
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL107
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST18:
	.4byte	.LVL91
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x3
	.byte	0x7b
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL103
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL130
	.4byte	.LVL132
	.2byte	0x3
	.byte	0x7b
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST19:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL92
	.4byte	.LVL93
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL101
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL104
	.4byte	.LVL106
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL106
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST20:
	.4byte	.LVL91
	.4byte	.LVL108
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL108
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL111
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST21:
	.4byte	.LVL102
	.4byte	.LVL103
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL105
	.4byte	.LVL107
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL108
	.4byte	.LVL109
	.2byte	0x8
	.byte	0x81
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x80
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL109
	.4byte	.LVL110
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	.LVL111
	.4byte	.LVL112
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL121
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL124
	.4byte	.LVL126
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL127
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL129
	.4byte	.LVL131
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x40
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x61
	.4byte	0
	.4byte	0
.LLST4:
	.4byte	.LVL135
	.4byte	.LVL139
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL139
	.4byte	.LVL141
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL145
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL147
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x7f
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5f
	.4byte	.LVL151
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5d
	.4byte	0
	.4byte	0
.LLST5:
	.4byte	.LVL135
	.4byte	.LVL146
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x3
	.byte	0x7b
	.byte	0x4
	.byte	0x9f
	.4byte	.LVL147
	.4byte	.LVL174
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL174
	.4byte	.LVL176
	.2byte	0x3
	.byte	0x7b
	.byte	0x60
	.byte	0x9f
	.4byte	.LVL176
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LLST6:
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0x5
	.byte	0x7e
	.byte	0
	.byte	0x33
	.byte	0x25
	.byte	0x9f
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x5e
	.4byte	.LVL148
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x7e
	.byte	0x1
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5e
	.4byte	0
	.4byte	0
.LLST7:
	.4byte	.LVL135
	.4byte	.LVL152
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL152
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL155
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x60
	.4byte	0
	.4byte	0
.LLST8:
	.4byte	.LVL146
	.4byte	.LVL147
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL147
	.4byte	.LVL149
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x38
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL149
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x5d
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x8
	.byte	0x81
	.byte	0
	.byte	0x38
	.byte	0x24
	.byte	0x80
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x60
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x2
	.byte	0x7d
	.byte	0
	.4byte	.LVL155
	.4byte	.LVL156
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x38
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL156
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL158
	.4byte	.LVL159
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x38
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL159
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x38
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x38
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x38
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL168
	.4byte	.LVL170
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL170
	.4byte	.LVL171
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x38
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL171
	.4byte	.LVL173
	.2byte	0x1
	.byte	0x61
	.4byte	.LVL173
	.4byte	.LVL175
	.2byte	0x8
	.byte	0x80
	.byte	0
	.byte	0x38
	.byte	0x24
	.byte	0x81
	.byte	0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL175
	.4byte	.LFE4
	.2byte	0x1
	.byte	0x61
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
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	0
	.4byte	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF27:
	.ascii	"GNU C99 10.4"
	.string	".0 -mabi=ilp32f -mtune=e907 -march=rv32imafcp_zpn_zpsfoperand_xtheade -g -Os -std=gnu99 -fno-jump-tables -fno-common -fms-extensions -ffunction-sections -fdata-sections -fmessage-length=0 -fstrict-volatile-bitfields -fshort-enums -fstack-usage -fno-builtin"
.LASF3:
	.string	"__uint8_t"
.LASF2:
	.string	"size_t"
.LASF16:
	.string	"uintptr_t"
.LASF19:
	.string	"count"
.LASF12:
	.string	"__uintptr_t"
.LASF20:
	.string	"dst8"
.LASF18:
	.string	"dest"
.LASF4:
	.string	"unsigned char"
.LASF25:
	.string	"srcWord"
.LASF9:
	.string	"long unsigned int"
.LASF22:
	.string	"dstN"
.LASF6:
	.string	"short unsigned int"
.LASF23:
	.string	"srcN"
.LASF29:
	.string	"./examples/peripherals/gpio/gpio_input_output/build/build_out/components/libc"
.LASF8:
	.string	"__uint32_t"
.LASF26:
	.string	"dstWord"
.LASF0:
	.string	"unsigned int"
.LASF11:
	.string	"long long unsigned int"
.LASF14:
	.string	"uint8_t"
.LASF28:
	.string	"./components/libc/nuttx/libc/string/lib_vikmemcpy.c"
.LASF10:
	.string	"long long int"
.LASF30:
	.string	"memcpy"
.LASF17:
	.string	"uintn"
.LASF5:
	.string	"short int"
.LASF15:
	.string	"uint32_t"
.LASF7:
	.string	"long int"
.LASF13:
	.string	"char"
.LASF1:
	.string	"signed char"
.LASF21:
	.string	"src8"
.LASF24:
	.string	"length"
	.ident	"GCC: (GNU) 10.4.0"
