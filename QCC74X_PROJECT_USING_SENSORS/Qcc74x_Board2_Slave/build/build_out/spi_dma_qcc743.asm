
/home/sai/QCCSDK-QCC74x/examples/peripherals/spi/spi_slave/build/build_out/spi_dma_qcc743.elf:     file format elf32-littleriscv


Disassembly of section .init:

a0000000 <__start>:
a0000000:	c2fc2197          	auipc	gp,0xc2fc2
a0000004:	2a818193          	addi	gp,gp,680 # 62fc22a8 <__global_pointer$>
a0000008:	30047073          	csrci	mstatus,8
a000000c:	20056537          	lui	a0,0x20056
a0000010:	0b052583          	lw	a1,176(a0) # 200560b0 <remain_wifi_ram+0x200360b0>
a0000014:	40280537          	lui	a0,0x40280
a0000018:	7641                	lui	a2,0xffff0
a000001a:	8df1                	and	a1,a1,a2
a000001c:	00b50363          	beq	a0,a1,a0000022 <__start+0x22>
a0000020:	a001                	j	a0000020 <__start+0x20>
a0000022:	00006517          	auipc	a0,0x6
a0000026:	49e50513          	addi	a0,a0,1182 # a00064c0 <trap>
a000002a:	00356513          	ori	a0,a0,3
a000002e:	30551073          	csrw	mtvec,a0
a0000032:	300022f3          	csrr	t0,mstatus
a0000036:	7369                	lui	t1,0xffffa
a0000038:	137d                	addi	t1,t1,-1
a000003a:	0062f2b3          	and	t0,t0,t1
a000003e:	6309                	lui	t1,0x2
a0000040:	0062e2b3          	or	t0,t0,t1
a0000044:	30029073          	csrw	mstatus,t0
a0000048:	c2fc3117          	auipc	sp,0xc2fc3
a000004c:	da810113          	addi	sp,sp,-600 # 62fc2df0 <gpio>
a0000050:	34011073          	csrw	mscratch,sp
a0000054:	6ae060ef          	jal	ra,a0006702 <SystemInit>
a0000058:	5a4060ef          	jal	ra,a00065fc <start_load>
a000005c:	06d060ef          	jal	ra,a00068c8 <System_Post_Init>
a0000060:	5e5030ef          	jal	ra,a0003e44 <main>

a0000064 <__exit>:
a0000064:	a001                	j	a0000064 <__exit>

Disassembly of section .text:

a0000c80 <__lshrdi3>:
a0000c80:	ce01                	beqz	a2,a0000c98 <__lshrdi3+0x18>
a0000c82:	02000793          	li	a5,32
a0000c86:	8f91                	sub	a5,a5,a2
a0000c88:	00f04963          	bgtz	a5,a0000c9a <__lshrdi3+0x1a>
a0000c8c:	fe060513          	addi	a0,a2,-32 # fffeffe0 <__psram_limit+0x57beffe0>
a0000c90:	4701                	li	a4,0
a0000c92:	00a5d533          	srl	a0,a1,a0
a0000c96:	85ba                	mv	a1,a4
a0000c98:	8082                	ret
a0000c9a:	00c5d733          	srl	a4,a1,a2
a0000c9e:	00c55533          	srl	a0,a0,a2
a0000ca2:	00f595b3          	sll	a1,a1,a5
a0000ca6:	8d4d                	or	a0,a0,a1
a0000ca8:	b7fd                	j	a0000c96 <__lshrdi3+0x16>

a0000caa <__ashldi3>:
a0000caa:	ce01                	beqz	a2,a0000cc2 <__ashldi3+0x18>
a0000cac:	02000793          	li	a5,32
a0000cb0:	8f91                	sub	a5,a5,a2
a0000cb2:	00f04963          	bgtz	a5,a0000cc4 <__ashldi3+0x1a>
a0000cb6:	fe060593          	addi	a1,a2,-32
a0000cba:	4701                	li	a4,0
a0000cbc:	00b515b3          	sll	a1,a0,a1
a0000cc0:	853a                	mv	a0,a4
a0000cc2:	8082                	ret
a0000cc4:	00c51733          	sll	a4,a0,a2
a0000cc8:	00c595b3          	sll	a1,a1,a2
a0000ccc:	00f55533          	srl	a0,a0,a5
a0000cd0:	8dc9                	or	a1,a1,a0
a0000cd2:	b7fd                	j	a0000cc0 <__ashldi3+0x16>

a0000cd4 <__divdi3>:
a0000cd4:	8e2a                	mv	t3,a0
a0000cd6:	4801                	li	a6,0
a0000cd8:	0005da63          	bgez	a1,a0000cec <__divdi3+0x18>
a0000cdc:	00a037b3          	snez	a5,a0
a0000ce0:	40b005b3          	neg	a1,a1
a0000ce4:	8d9d                	sub	a1,a1,a5
a0000ce6:	40a00e33          	neg	t3,a0
a0000cea:	587d                	li	a6,-1
a0000cec:	0006db63          	bgez	a3,a0000d02 <__divdi3+0x2e>
a0000cf0:	00c037b3          	snez	a5,a2
a0000cf4:	40d006b3          	neg	a3,a3
a0000cf8:	fff84813          	not	a6,a6
a0000cfc:	8e9d                	sub	a3,a3,a5
a0000cfe:	40c00633          	neg	a2,a2
a0000d02:	88b2                	mv	a7,a2
a0000d04:	8f36                	mv	t5,a3
a0000d06:	8ef2                	mv	t4,t3
a0000d08:	832e                	mv	t1,a1
a0000d0a:	22069463          	bnez	a3,a0000f32 <__divdi3+0x25e>
a0000d0e:	a0008737          	lui	a4,0xa0008
a0000d12:	52870713          	addi	a4,a4,1320 # a0008528 <__psram_limit+0xf7c08528>
a0000d16:	0cc5f263          	bgeu	a1,a2,a0000dda <__divdi3+0x106>
a0000d1a:	67c1                	lui	a5,0x10
a0000d1c:	0af67863          	bgeu	a2,a5,a0000dcc <__divdi3+0xf8>
a0000d20:	0ff00793          	li	a5,255
a0000d24:	00c7b7b3          	sltu	a5,a5,a2
a0000d28:	078e                	slli	a5,a5,0x3
a0000d2a:	00f656b3          	srl	a3,a2,a5
a0000d2e:	9736                	add	a4,a4,a3
a0000d30:	00074683          	lbu	a3,0(a4)
a0000d34:	97b6                	add	a5,a5,a3
a0000d36:	02000693          	li	a3,32
a0000d3a:	40f68733          	sub	a4,a3,a5
a0000d3e:	00f68c63          	beq	a3,a5,a0000d56 <__divdi3+0x82>
a0000d42:	00e595b3          	sll	a1,a1,a4
a0000d46:	00fe57b3          	srl	a5,t3,a5
a0000d4a:	00e618b3          	sll	a7,a2,a4
a0000d4e:	00b7e333          	or	t1,a5,a1
a0000d52:	00ee1eb3          	sll	t4,t3,a4
a0000d56:	0108d513          	srli	a0,a7,0x10
a0000d5a:	02a356b3          	divu	a3,t1,a0
a0000d5e:	01089593          	slli	a1,a7,0x10
a0000d62:	81c1                	srli	a1,a1,0x10
a0000d64:	010ed793          	srli	a5,t4,0x10
a0000d68:	02a37733          	remu	a4,t1,a0
a0000d6c:	8636                	mv	a2,a3
a0000d6e:	02d58333          	mul	t1,a1,a3
a0000d72:	0742                	slli	a4,a4,0x10
a0000d74:	8fd9                	or	a5,a5,a4
a0000d76:	0067fc63          	bgeu	a5,t1,a0000d8e <__divdi3+0xba>
a0000d7a:	97c6                	add	a5,a5,a7
a0000d7c:	fff68613          	addi	a2,a3,-1
a0000d80:	0117e763          	bltu	a5,a7,a0000d8e <__divdi3+0xba>
a0000d84:	0067f563          	bgeu	a5,t1,a0000d8e <__divdi3+0xba>
a0000d88:	ffe68613          	addi	a2,a3,-2
a0000d8c:	97c6                	add	a5,a5,a7
a0000d8e:	406787b3          	sub	a5,a5,t1
a0000d92:	02a7f733          	remu	a4,a5,a0
a0000d96:	0ec2                	slli	t4,t4,0x10
a0000d98:	010ede93          	srli	t4,t4,0x10
a0000d9c:	02a7d7b3          	divu	a5,a5,a0
a0000da0:	0742                	slli	a4,a4,0x10
a0000da2:	01d76eb3          	or	t4,a4,t4
a0000da6:	02f586b3          	mul	a3,a1,a5
a0000daa:	873e                	mv	a4,a5
a0000dac:	00defb63          	bgeu	t4,a3,a0000dc2 <__divdi3+0xee>
a0000db0:	9ec6                	add	t4,t4,a7
a0000db2:	fff78713          	addi	a4,a5,-1 # ffff <wifi_ram_max_size+0x7fff>
a0000db6:	011ee663          	bltu	t4,a7,a0000dc2 <__divdi3+0xee>
a0000dba:	00def463          	bgeu	t4,a3,a0000dc2 <__divdi3+0xee>
a0000dbe:	ffe78713          	addi	a4,a5,-2
a0000dc2:	01061513          	slli	a0,a2,0x10
a0000dc6:	8d59                	or	a0,a0,a4
a0000dc8:	4301                	li	t1,0
a0000dca:	a85d                	j	a0000e80 <__divdi3+0x1ac>
a0000dcc:	010006b7          	lui	a3,0x1000
a0000dd0:	47c1                	li	a5,16
a0000dd2:	f4d66ce3          	bltu	a2,a3,a0000d2a <__divdi3+0x56>
a0000dd6:	47e1                	li	a5,24
a0000dd8:	bf89                	j	a0000d2a <__divdi3+0x56>
a0000dda:	e601                	bnez	a2,a0000de2 <__divdi3+0x10e>
a0000ddc:	4885                	li	a7,1
a0000dde:	02d8d8b3          	divu	a7,a7,a3
a0000de2:	67c1                	lui	a5,0x10
a0000de4:	0af8f963          	bgeu	a7,a5,a0000e96 <__divdi3+0x1c2>
a0000de8:	0ff00793          	li	a5,255
a0000dec:	0117f363          	bgeu	a5,a7,a0000df2 <__divdi3+0x11e>
a0000df0:	4f21                	li	t5,8
a0000df2:	01e8d7b3          	srl	a5,a7,t5
a0000df6:	973e                	add	a4,a4,a5
a0000df8:	00074783          	lbu	a5,0(a4)
a0000dfc:	02000693          	li	a3,32
a0000e00:	97fa                	add	a5,a5,t5
a0000e02:	40f68733          	sub	a4,a3,a5
a0000e06:	08f69f63          	bne	a3,a5,a0000ea4 <__divdi3+0x1d0>
a0000e0a:	411585b3          	sub	a1,a1,a7
a0000e0e:	4305                	li	t1,1
a0000e10:	0108d513          	srli	a0,a7,0x10
a0000e14:	01089613          	slli	a2,a7,0x10
a0000e18:	8241                	srli	a2,a2,0x10
a0000e1a:	010ed713          	srli	a4,t4,0x10
a0000e1e:	02a5d7b3          	divu	a5,a1,a0
a0000e22:	02a5f6b3          	remu	a3,a1,a0
a0000e26:	02f605b3          	mul	a1,a2,a5
a0000e2a:	06c2                	slli	a3,a3,0x10
a0000e2c:	8f55                	or	a4,a4,a3
a0000e2e:	86be                	mv	a3,a5
a0000e30:	00b77c63          	bgeu	a4,a1,a0000e48 <__divdi3+0x174>
a0000e34:	9746                	add	a4,a4,a7
a0000e36:	fff78693          	addi	a3,a5,-1 # ffff <wifi_ram_max_size+0x7fff>
a0000e3a:	01176763          	bltu	a4,a7,a0000e48 <__divdi3+0x174>
a0000e3e:	00b77563          	bgeu	a4,a1,a0000e48 <__divdi3+0x174>
a0000e42:	ffe78693          	addi	a3,a5,-2
a0000e46:	9746                	add	a4,a4,a7
a0000e48:	8f0d                	sub	a4,a4,a1
a0000e4a:	02a777b3          	remu	a5,a4,a0
a0000e4e:	0ec2                	slli	t4,t4,0x10
a0000e50:	010ede93          	srli	t4,t4,0x10
a0000e54:	02a75733          	divu	a4,a4,a0
a0000e58:	07c2                	slli	a5,a5,0x10
a0000e5a:	01d7eeb3          	or	t4,a5,t4
a0000e5e:	02e60633          	mul	a2,a2,a4
a0000e62:	87ba                	mv	a5,a4
a0000e64:	00cefb63          	bgeu	t4,a2,a0000e7a <__divdi3+0x1a6>
a0000e68:	9ec6                	add	t4,t4,a7
a0000e6a:	fff70793          	addi	a5,a4,-1
a0000e6e:	011ee663          	bltu	t4,a7,a0000e7a <__divdi3+0x1a6>
a0000e72:	00cef463          	bgeu	t4,a2,a0000e7a <__divdi3+0x1a6>
a0000e76:	ffe70793          	addi	a5,a4,-2
a0000e7a:	01069513          	slli	a0,a3,0x10
a0000e7e:	8d5d                	or	a0,a0,a5
a0000e80:	859a                	mv	a1,t1
a0000e82:	00080963          	beqz	a6,a0000e94 <__divdi3+0x1c0>
a0000e86:	00a037b3          	snez	a5,a0
a0000e8a:	406005b3          	neg	a1,t1
a0000e8e:	8d9d                	sub	a1,a1,a5
a0000e90:	40a00533          	neg	a0,a0
a0000e94:	8082                	ret
a0000e96:	010007b7          	lui	a5,0x1000
a0000e9a:	4f41                	li	t5,16
a0000e9c:	f4f8ebe3          	bltu	a7,a5,a0000df2 <__divdi3+0x11e>
a0000ea0:	4f61                	li	t5,24
a0000ea2:	bf81                	j	a0000df2 <__divdi3+0x11e>
a0000ea4:	00e898b3          	sll	a7,a7,a4
a0000ea8:	00f5d533          	srl	a0,a1,a5
a0000eac:	00ee1eb3          	sll	t4,t3,a4
a0000eb0:	00e595b3          	sll	a1,a1,a4
a0000eb4:	00fe57b3          	srl	a5,t3,a5
a0000eb8:	0108de13          	srli	t3,a7,0x10
a0000ebc:	00b7e633          	or	a2,a5,a1
a0000ec0:	03c557b3          	divu	a5,a0,t3
a0000ec4:	01089593          	slli	a1,a7,0x10
a0000ec8:	81c1                	srli	a1,a1,0x10
a0000eca:	03c57733          	remu	a4,a0,t3
a0000ece:	01065513          	srli	a0,a2,0x10
a0000ed2:	833e                	mv	t1,a5
a0000ed4:	02f586b3          	mul	a3,a1,a5
a0000ed8:	0742                	slli	a4,a4,0x10
a0000eda:	8f49                	or	a4,a4,a0
a0000edc:	00d77c63          	bgeu	a4,a3,a0000ef4 <__divdi3+0x220>
a0000ee0:	9746                	add	a4,a4,a7
a0000ee2:	fff78313          	addi	t1,a5,-1 # ffffff <remain_wifi_ram+0xfdffff>
a0000ee6:	01176763          	bltu	a4,a7,a0000ef4 <__divdi3+0x220>
a0000eea:	00d77563          	bgeu	a4,a3,a0000ef4 <__divdi3+0x220>
a0000eee:	ffe78313          	addi	t1,a5,-2
a0000ef2:	9746                	add	a4,a4,a7
a0000ef4:	40d706b3          	sub	a3,a4,a3
a0000ef8:	03c6f733          	remu	a4,a3,t3
a0000efc:	0642                	slli	a2,a2,0x10
a0000efe:	8241                	srli	a2,a2,0x10
a0000f00:	03c6d6b3          	divu	a3,a3,t3
a0000f04:	0742                	slli	a4,a4,0x10
a0000f06:	02d587b3          	mul	a5,a1,a3
a0000f0a:	00c765b3          	or	a1,a4,a2
a0000f0e:	8736                	mv	a4,a3
a0000f10:	00f5fc63          	bgeu	a1,a5,a0000f28 <__divdi3+0x254>
a0000f14:	95c6                	add	a1,a1,a7
a0000f16:	fff68713          	addi	a4,a3,-1 # ffffff <remain_wifi_ram+0xfdffff>
a0000f1a:	0115e763          	bltu	a1,a7,a0000f28 <__divdi3+0x254>
a0000f1e:	00f5f563          	bgeu	a1,a5,a0000f28 <__divdi3+0x254>
a0000f22:	ffe68713          	addi	a4,a3,-2
a0000f26:	95c6                	add	a1,a1,a7
a0000f28:	0342                	slli	t1,t1,0x10
a0000f2a:	8d9d                	sub	a1,a1,a5
a0000f2c:	00e36333          	or	t1,t1,a4
a0000f30:	b5c5                	j	a0000e10 <__divdi3+0x13c>
a0000f32:	14d5e263          	bltu	a1,a3,a0001076 <__divdi3+0x3a2>
a0000f36:	67c1                	lui	a5,0x10
a0000f38:	02f6ff63          	bgeu	a3,a5,a0000f76 <__divdi3+0x2a2>
a0000f3c:	0ff00713          	li	a4,255
a0000f40:	00d737b3          	sltu	a5,a4,a3
a0000f44:	078e                	slli	a5,a5,0x3
a0000f46:	a0008737          	lui	a4,0xa0008
a0000f4a:	00f6d533          	srl	a0,a3,a5
a0000f4e:	52870713          	addi	a4,a4,1320 # a0008528 <__psram_limit+0xf7c08528>
a0000f52:	972a                	add	a4,a4,a0
a0000f54:	00074703          	lbu	a4,0(a4)
a0000f58:	973e                	add	a4,a4,a5
a0000f5a:	02000793          	li	a5,32
a0000f5e:	40e78333          	sub	t1,a5,a4
a0000f62:	02e79163          	bne	a5,a4,a0000f84 <__divdi3+0x2b0>
a0000f66:	4505                	li	a0,1
a0000f68:	f0b6ece3          	bltu	a3,a1,a0000e80 <__divdi3+0x1ac>
a0000f6c:	00ce3533          	sltu	a0,t3,a2
a0000f70:	00154513          	xori	a0,a0,1
a0000f74:	b731                	j	a0000e80 <__divdi3+0x1ac>
a0000f76:	01000737          	lui	a4,0x1000
a0000f7a:	47c1                	li	a5,16
a0000f7c:	fce6e5e3          	bltu	a3,a4,a0000f46 <__divdi3+0x272>
a0000f80:	47e1                	li	a5,24
a0000f82:	b7d1                	j	a0000f46 <__divdi3+0x272>
a0000f84:	00e657b3          	srl	a5,a2,a4
a0000f88:	006696b3          	sll	a3,a3,t1
a0000f8c:	8edd                	or	a3,a3,a5
a0000f8e:	00e5d533          	srl	a0,a1,a4
a0000f92:	006597b3          	sll	a5,a1,t1
a0000f96:	00ee5733          	srl	a4,t3,a4
a0000f9a:	0106df13          	srli	t5,a3,0x10
a0000f9e:	00f765b3          	or	a1,a4,a5
a0000fa2:	03e57733          	remu	a4,a0,t5
a0000fa6:	01069e93          	slli	t4,a3,0x10
a0000faa:	010ede93          	srli	t4,t4,0x10
a0000fae:	0105d793          	srli	a5,a1,0x10
a0000fb2:	006618b3          	sll	a7,a2,t1
a0000fb6:	03e55533          	divu	a0,a0,t5
a0000fba:	0742                	slli	a4,a4,0x10
a0000fbc:	8fd9                	or	a5,a5,a4
a0000fbe:	02ae8fb3          	mul	t6,t4,a0
a0000fc2:	862a                	mv	a2,a0
a0000fc4:	01f7fc63          	bgeu	a5,t6,a0000fdc <__divdi3+0x308>
a0000fc8:	97b6                	add	a5,a5,a3
a0000fca:	fff50613          	addi	a2,a0,-1
a0000fce:	00d7e763          	bltu	a5,a3,a0000fdc <__divdi3+0x308>
a0000fd2:	01f7f563          	bgeu	a5,t6,a0000fdc <__divdi3+0x308>
a0000fd6:	ffe50613          	addi	a2,a0,-2
a0000fda:	97b6                	add	a5,a5,a3
a0000fdc:	41f787b3          	sub	a5,a5,t6
a0000fe0:	03e7f733          	remu	a4,a5,t5
a0000fe4:	05c2                	slli	a1,a1,0x10
a0000fe6:	81c1                	srli	a1,a1,0x10
a0000fe8:	03e7d7b3          	divu	a5,a5,t5
a0000fec:	0742                	slli	a4,a4,0x10
a0000fee:	8f4d                	or	a4,a4,a1
a0000ff0:	02fe8eb3          	mul	t4,t4,a5
a0000ff4:	85be                	mv	a1,a5
a0000ff6:	01d77c63          	bgeu	a4,t4,a000100e <__divdi3+0x33a>
a0000ffa:	9736                	add	a4,a4,a3
a0000ffc:	fff78593          	addi	a1,a5,-1 # ffff <wifi_ram_max_size+0x7fff>
a0001000:	00d76763          	bltu	a4,a3,a000100e <__divdi3+0x33a>
a0001004:	01d77563          	bgeu	a4,t4,a000100e <__divdi3+0x33a>
a0001008:	ffe78593          	addi	a1,a5,-2
a000100c:	9736                	add	a4,a4,a3
a000100e:	01061513          	slli	a0,a2,0x10
a0001012:	6f41                	lui	t5,0x10
a0001014:	8d4d                	or	a0,a0,a1
a0001016:	ffff0693          	addi	a3,t5,-1 # ffff <wifi_ram_max_size+0x7fff>
a000101a:	00d575b3          	and	a1,a0,a3
a000101e:	01055613          	srli	a2,a0,0x10
a0001022:	00d8f6b3          	and	a3,a7,a3
a0001026:	0108d893          	srli	a7,a7,0x10
a000102a:	41d70733          	sub	a4,a4,t4
a000102e:	02d58eb3          	mul	t4,a1,a3
a0001032:	02d606b3          	mul	a3,a2,a3
a0001036:	010ed793          	srli	a5,t4,0x10
a000103a:	031585b3          	mul	a1,a1,a7
a000103e:	95b6                	add	a1,a1,a3
a0001040:	97ae                	add	a5,a5,a1
a0001042:	03160633          	mul	a2,a2,a7
a0001046:	00d7f363          	bgeu	a5,a3,a000104c <__divdi3+0x378>
a000104a:	967a                	add	a2,a2,t5
a000104c:	0107d693          	srli	a3,a5,0x10
a0001050:	9636                	add	a2,a2,a3
a0001052:	02c76063          	bltu	a4,a2,a0001072 <__divdi3+0x39e>
a0001056:	d6c719e3          	bne	a4,a2,a0000dc8 <__divdi3+0xf4>
a000105a:	6741                	lui	a4,0x10
a000105c:	177d                	addi	a4,a4,-1
a000105e:	8ff9                	and	a5,a5,a4
a0001060:	07c2                	slli	a5,a5,0x10
a0001062:	00eefeb3          	and	t4,t4,a4
a0001066:	006e1e33          	sll	t3,t3,t1
a000106a:	97f6                	add	a5,a5,t4
a000106c:	4301                	li	t1,0
a000106e:	e0fe79e3          	bgeu	t3,a5,a0000e80 <__divdi3+0x1ac>
a0001072:	157d                	addi	a0,a0,-1
a0001074:	bb91                	j	a0000dc8 <__divdi3+0xf4>
a0001076:	4301                	li	t1,0
a0001078:	4501                	li	a0,0
a000107a:	b519                	j	a0000e80 <__divdi3+0x1ac>

a000107c <__moddi3>:
a000107c:	8f2a                	mv	t5,a0
a000107e:	8e2e                	mv	t3,a1
a0001080:	4801                	li	a6,0
a0001082:	0005db63          	bgez	a1,a0001098 <__moddi3+0x1c>
a0001086:	00a037b3          	snez	a5,a0
a000108a:	40b005b3          	neg	a1,a1
a000108e:	40f58e33          	sub	t3,a1,a5
a0001092:	40a00f33          	neg	t5,a0
a0001096:	587d                	li	a6,-1
a0001098:	0006d963          	bgez	a3,a00010aa <__moddi3+0x2e>
a000109c:	00c035b3          	snez	a1,a2
a00010a0:	40d006b3          	neg	a3,a3
a00010a4:	8e8d                	sub	a3,a3,a1
a00010a6:	40c00633          	neg	a2,a2
a00010aa:	8732                	mv	a4,a2
a00010ac:	87b6                	mv	a5,a3
a00010ae:	857a                	mv	a0,t5
a00010b0:	85f2                	mv	a1,t3
a00010b2:	1c069f63          	bnez	a3,a0001290 <__moddi3+0x214>
a00010b6:	a00086b7          	lui	a3,0xa0008
a00010ba:	52868693          	addi	a3,a3,1320 # a0008528 <__psram_limit+0xf7c08528>
a00010be:	0ace7f63          	bgeu	t3,a2,a000117c <__moddi3+0x100>
a00010c2:	68c1                	lui	a7,0x10
a00010c4:	0b167563          	bgeu	a2,a7,a000116e <__moddi3+0xf2>
a00010c8:	0ff00893          	li	a7,255
a00010cc:	00c8f363          	bgeu	a7,a2,a00010d2 <__moddi3+0x56>
a00010d0:	47a1                	li	a5,8
a00010d2:	00f658b3          	srl	a7,a2,a5
a00010d6:	96c6                	add	a3,a3,a7
a00010d8:	0006c303          	lbu	t1,0(a3)
a00010dc:	933e                	add	t1,t1,a5
a00010de:	02000793          	li	a5,32
a00010e2:	406788b3          	sub	a7,a5,t1
a00010e6:	00678c63          	beq	a5,t1,a00010fe <__moddi3+0x82>
a00010ea:	011e15b3          	sll	a1,t3,a7
a00010ee:	006f5333          	srl	t1,t5,t1
a00010f2:	01161733          	sll	a4,a2,a7
a00010f6:	00b365b3          	or	a1,t1,a1
a00010fa:	011f1533          	sll	a0,t5,a7
a00010fe:	01075313          	srli	t1,a4,0x10
a0001102:	0265f6b3          	remu	a3,a1,t1
a0001106:	01071613          	slli	a2,a4,0x10
a000110a:	8241                	srli	a2,a2,0x10
a000110c:	01055793          	srli	a5,a0,0x10
a0001110:	0265d5b3          	divu	a1,a1,t1
a0001114:	06c2                	slli	a3,a3,0x10
a0001116:	8fd5                	or	a5,a5,a3
a0001118:	02b605b3          	mul	a1,a2,a1
a000111c:	00b7f863          	bgeu	a5,a1,a000112c <__moddi3+0xb0>
a0001120:	97ba                	add	a5,a5,a4
a0001122:	00e7e563          	bltu	a5,a4,a000112c <__moddi3+0xb0>
a0001126:	00b7f363          	bgeu	a5,a1,a000112c <__moddi3+0xb0>
a000112a:	97ba                	add	a5,a5,a4
a000112c:	8f8d                	sub	a5,a5,a1
a000112e:	0267f6b3          	remu	a3,a5,t1
a0001132:	0542                	slli	a0,a0,0x10
a0001134:	8141                	srli	a0,a0,0x10
a0001136:	0267d7b3          	divu	a5,a5,t1
a000113a:	06c2                	slli	a3,a3,0x10
a000113c:	8d55                	or	a0,a0,a3
a000113e:	02f607b3          	mul	a5,a2,a5
a0001142:	00f57863          	bgeu	a0,a5,a0001152 <__moddi3+0xd6>
a0001146:	953a                	add	a0,a0,a4
a0001148:	00e56563          	bltu	a0,a4,a0001152 <__moddi3+0xd6>
a000114c:	00f57363          	bgeu	a0,a5,a0001152 <__moddi3+0xd6>
a0001150:	953a                	add	a0,a0,a4
a0001152:	8d1d                	sub	a0,a0,a5
a0001154:	01155533          	srl	a0,a0,a7
a0001158:	4581                	li	a1,0
a000115a:	00080963          	beqz	a6,a000116c <__moddi3+0xf0>
a000115e:	00a037b3          	snez	a5,a0
a0001162:	40b005b3          	neg	a1,a1
a0001166:	8d9d                	sub	a1,a1,a5
a0001168:	40a00533          	neg	a0,a0
a000116c:	8082                	ret
a000116e:	010008b7          	lui	a7,0x1000
a0001172:	47c1                	li	a5,16
a0001174:	f5166fe3          	bltu	a2,a7,a00010d2 <__moddi3+0x56>
a0001178:	47e1                	li	a5,24
a000117a:	bfa1                	j	a00010d2 <__moddi3+0x56>
a000117c:	e601                	bnez	a2,a0001184 <__moddi3+0x108>
a000117e:	4705                	li	a4,1
a0001180:	02f75733          	divu	a4,a4,a5
a0001184:	6641                	lui	a2,0x10
a0001186:	0ec77e63          	bgeu	a4,a2,a0001282 <__moddi3+0x206>
a000118a:	0ff00613          	li	a2,255
a000118e:	00e67363          	bgeu	a2,a4,a0001194 <__moddi3+0x118>
a0001192:	47a1                	li	a5,8
a0001194:	00f75633          	srl	a2,a4,a5
a0001198:	96b2                	add	a3,a3,a2
a000119a:	0006c303          	lbu	t1,0(a3)
a000119e:	40ee05b3          	sub	a1,t3,a4
a00011a2:	933e                	add	t1,t1,a5
a00011a4:	02000793          	li	a5,32
a00011a8:	406788b3          	sub	a7,a5,t1
a00011ac:	06678d63          	beq	a5,t1,a0001226 <__moddi3+0x1aa>
a00011b0:	01171733          	sll	a4,a4,a7
a00011b4:	006e5633          	srl	a2,t3,t1
a00011b8:	01075693          	srli	a3,a4,0x10
a00011bc:	011e15b3          	sll	a1,t3,a7
a00011c0:	006f5333          	srl	t1,t5,t1
a00011c4:	00b36333          	or	t1,t1,a1
a00011c8:	01071593          	slli	a1,a4,0x10
a00011cc:	81c1                	srli	a1,a1,0x10
a00011ce:	01035e13          	srli	t3,t1,0x10
a00011d2:	011f1533          	sll	a0,t5,a7
a00011d6:	02d677b3          	remu	a5,a2,a3
a00011da:	02d65633          	divu	a2,a2,a3
a00011de:	07c2                	slli	a5,a5,0x10
a00011e0:	01c7e7b3          	or	a5,a5,t3
a00011e4:	02c58633          	mul	a2,a1,a2
a00011e8:	00c7f863          	bgeu	a5,a2,a00011f8 <__moddi3+0x17c>
a00011ec:	97ba                	add	a5,a5,a4
a00011ee:	00e7e563          	bltu	a5,a4,a00011f8 <__moddi3+0x17c>
a00011f2:	00c7f363          	bgeu	a5,a2,a00011f8 <__moddi3+0x17c>
a00011f6:	97ba                	add	a5,a5,a4
a00011f8:	40c78633          	sub	a2,a5,a2
a00011fc:	02d677b3          	remu	a5,a2,a3
a0001200:	0342                	slli	t1,t1,0x10
a0001202:	01035313          	srli	t1,t1,0x10
a0001206:	02d65633          	divu	a2,a2,a3
a000120a:	07c2                	slli	a5,a5,0x10
a000120c:	02c58633          	mul	a2,a1,a2
a0001210:	0067e5b3          	or	a1,a5,t1
a0001214:	00c5f863          	bgeu	a1,a2,a0001224 <__moddi3+0x1a8>
a0001218:	95ba                	add	a1,a1,a4
a000121a:	00e5e563          	bltu	a1,a4,a0001224 <__moddi3+0x1a8>
a000121e:	00c5f363          	bgeu	a1,a2,a0001224 <__moddi3+0x1a8>
a0001222:	95ba                	add	a1,a1,a4
a0001224:	8d91                	sub	a1,a1,a2
a0001226:	01075613          	srli	a2,a4,0x10
a000122a:	02c5f7b3          	remu	a5,a1,a2
a000122e:	01071693          	slli	a3,a4,0x10
a0001232:	82c1                	srli	a3,a3,0x10
a0001234:	01055313          	srli	t1,a0,0x10
a0001238:	02c5d5b3          	divu	a1,a1,a2
a000123c:	07c2                	slli	a5,a5,0x10
a000123e:	0067e7b3          	or	a5,a5,t1
a0001242:	02b685b3          	mul	a1,a3,a1
a0001246:	00b7f863          	bgeu	a5,a1,a0001256 <__moddi3+0x1da>
a000124a:	97ba                	add	a5,a5,a4
a000124c:	00e7e563          	bltu	a5,a4,a0001256 <__moddi3+0x1da>
a0001250:	00b7f363          	bgeu	a5,a1,a0001256 <__moddi3+0x1da>
a0001254:	97ba                	add	a5,a5,a4
a0001256:	40b785b3          	sub	a1,a5,a1
a000125a:	02c5f7b3          	remu	a5,a1,a2
a000125e:	0542                	slli	a0,a0,0x10
a0001260:	8141                	srli	a0,a0,0x10
a0001262:	02c5d5b3          	divu	a1,a1,a2
a0001266:	07c2                	slli	a5,a5,0x10
a0001268:	8d5d                	or	a0,a0,a5
a000126a:	02b685b3          	mul	a1,a3,a1
a000126e:	00b57863          	bgeu	a0,a1,a000127e <__moddi3+0x202>
a0001272:	953a                	add	a0,a0,a4
a0001274:	00e56563          	bltu	a0,a4,a000127e <__moddi3+0x202>
a0001278:	00b57363          	bgeu	a0,a1,a000127e <__moddi3+0x202>
a000127c:	953a                	add	a0,a0,a4
a000127e:	8d0d                	sub	a0,a0,a1
a0001280:	bdd1                	j	a0001154 <__moddi3+0xd8>
a0001282:	01000637          	lui	a2,0x1000
a0001286:	47c1                	li	a5,16
a0001288:	f0c766e3          	bltu	a4,a2,a0001194 <__moddi3+0x118>
a000128c:	47e1                	li	a5,24
a000128e:	b719                	j	a0001194 <__moddi3+0x118>
a0001290:	ecde65e3          	bltu	t3,a3,a000115a <__moddi3+0xde>
a0001294:	67c1                	lui	a5,0x10
a0001296:	04f6f463          	bgeu	a3,a5,a00012de <__moddi3+0x262>
a000129a:	0ff00313          	li	t1,255
a000129e:	00d337b3          	sltu	a5,t1,a3
a00012a2:	078e                	slli	a5,a5,0x3
a00012a4:	a0008737          	lui	a4,0xa0008
a00012a8:	00f6d8b3          	srl	a7,a3,a5
a00012ac:	52870713          	addi	a4,a4,1320 # a0008528 <__psram_limit+0xf7c08528>
a00012b0:	9746                	add	a4,a4,a7
a00012b2:	00074303          	lbu	t1,0(a4)
a00012b6:	933e                	add	t1,t1,a5
a00012b8:	02000793          	li	a5,32
a00012bc:	406788b3          	sub	a7,a5,t1
a00012c0:	02679663          	bne	a5,t1,a00012ec <__moddi3+0x270>
a00012c4:	01c6e463          	bltu	a3,t3,a00012cc <__moddi3+0x250>
a00012c8:	e8cf69e3          	bltu	t5,a2,a000115a <__moddi3+0xde>
a00012cc:	40cf0533          	sub	a0,t5,a2
a00012d0:	40de05b3          	sub	a1,t3,a3
a00012d4:	00af3f33          	sltu	t5,t5,a0
a00012d8:	41e585b3          	sub	a1,a1,t5
a00012dc:	bdbd                	j	a000115a <__moddi3+0xde>
a00012de:	01000737          	lui	a4,0x1000
a00012e2:	47c1                	li	a5,16
a00012e4:	fce6e0e3          	bltu	a3,a4,a00012a4 <__moddi3+0x228>
a00012e8:	47e1                	li	a5,24
a00012ea:	bf6d                	j	a00012a4 <__moddi3+0x228>
a00012ec:	006657b3          	srl	a5,a2,t1
a00012f0:	011696b3          	sll	a3,a3,a7
a00012f4:	8edd                	or	a3,a3,a5
a00012f6:	006e5fb3          	srl	t6,t3,t1
a00012fa:	006f57b3          	srl	a5,t5,t1
a00012fe:	011f1533          	sll	a0,t5,a7
a0001302:	0106df13          	srli	t5,a3,0x10
a0001306:	011e15b3          	sll	a1,t3,a7
a000130a:	03efde33          	divu	t3,t6,t5
a000130e:	01161eb3          	sll	t4,a2,a7
a0001312:	8fcd                	or	a5,a5,a1
a0001314:	01069593          	slli	a1,a3,0x10
a0001318:	81c1                	srli	a1,a1,0x10
a000131a:	0107d713          	srli	a4,a5,0x10
a000131e:	03eff633          	remu	a2,t6,t5
a0001322:	03c58fb3          	mul	t6,a1,t3
a0001326:	0642                	slli	a2,a2,0x10
a0001328:	8f51                	or	a4,a4,a2
a000132a:	8672                	mv	a2,t3
a000132c:	01f77c63          	bgeu	a4,t6,a0001344 <__moddi3+0x2c8>
a0001330:	9736                	add	a4,a4,a3
a0001332:	fffe0613          	addi	a2,t3,-1
a0001336:	00d76763          	bltu	a4,a3,a0001344 <__moddi3+0x2c8>
a000133a:	01f77563          	bgeu	a4,t6,a0001344 <__moddi3+0x2c8>
a000133e:	ffee0613          	addi	a2,t3,-2
a0001342:	9736                	add	a4,a4,a3
a0001344:	41f70733          	sub	a4,a4,t6
a0001348:	03e77e33          	remu	t3,a4,t5
a000134c:	07c2                	slli	a5,a5,0x10
a000134e:	83c1                	srli	a5,a5,0x10
a0001350:	03e75733          	divu	a4,a4,t5
a0001354:	0e42                	slli	t3,t3,0x10
a0001356:	00fe6e33          	or	t3,t3,a5
a000135a:	02e585b3          	mul	a1,a1,a4
a000135e:	87ba                	mv	a5,a4
a0001360:	00be7c63          	bgeu	t3,a1,a0001378 <__moddi3+0x2fc>
a0001364:	9e36                	add	t3,t3,a3
a0001366:	fff70793          	addi	a5,a4,-1 # ffffff <remain_wifi_ram+0xfdffff>
a000136a:	00de6763          	bltu	t3,a3,a0001378 <__moddi3+0x2fc>
a000136e:	00be7563          	bgeu	t3,a1,a0001378 <__moddi3+0x2fc>
a0001372:	ffe70793          	addi	a5,a4,-2
a0001376:	9e36                	add	t3,t3,a3
a0001378:	0642                	slli	a2,a2,0x10
a000137a:	6fc1                	lui	t6,0x10
a000137c:	8e5d                	or	a2,a2,a5
a000137e:	40be05b3          	sub	a1,t3,a1
a0001382:	ffff8e13          	addi	t3,t6,-1 # ffff <wifi_ram_max_size+0x7fff>
a0001386:	01c67f33          	and	t5,a2,t3
a000138a:	010ed713          	srli	a4,t4,0x10
a000138e:	8241                	srli	a2,a2,0x10
a0001390:	01cefe33          	and	t3,t4,t3
a0001394:	03cf07b3          	mul	a5,t5,t3
a0001398:	03c60e33          	mul	t3,a2,t3
a000139c:	02ef0f33          	mul	t5,t5,a4
a00013a0:	02e60633          	mul	a2,a2,a4
a00013a4:	9f72                	add	t5,t5,t3
a00013a6:	0107d713          	srli	a4,a5,0x10
a00013aa:	977a                	add	a4,a4,t5
a00013ac:	01c77363          	bgeu	a4,t3,a00013b2 <__moddi3+0x336>
a00013b0:	967e                	add	a2,a2,t6
a00013b2:	01075e13          	srli	t3,a4,0x10
a00013b6:	9672                	add	a2,a2,t3
a00013b8:	6e41                	lui	t3,0x10
a00013ba:	1e7d                	addi	t3,t3,-1
a00013bc:	01c77733          	and	a4,a4,t3
a00013c0:	0742                	slli	a4,a4,0x10
a00013c2:	01c7f7b3          	and	a5,a5,t3
a00013c6:	97ba                	add	a5,a5,a4
a00013c8:	00c5e663          	bltu	a1,a2,a00013d4 <__moddi3+0x358>
a00013cc:	00c59b63          	bne	a1,a2,a00013e2 <__moddi3+0x366>
a00013d0:	00f57963          	bgeu	a0,a5,a00013e2 <__moddi3+0x366>
a00013d4:	41d78eb3          	sub	t4,a5,t4
a00013d8:	01d7b7b3          	sltu	a5,a5,t4
a00013dc:	97b6                	add	a5,a5,a3
a00013de:	8e1d                	sub	a2,a2,a5
a00013e0:	87f6                	mv	a5,t4
a00013e2:	40f507b3          	sub	a5,a0,a5
a00013e6:	00f53533          	sltu	a0,a0,a5
a00013ea:	8d91                	sub	a1,a1,a2
a00013ec:	8d89                	sub	a1,a1,a0
a00013ee:	00659333          	sll	t1,a1,t1
a00013f2:	0117d533          	srl	a0,a5,a7
a00013f6:	00a36533          	or	a0,t1,a0
a00013fa:	0115d5b3          	srl	a1,a1,a7
a00013fe:	bbb1                	j	a000115a <__moddi3+0xde>

a0001400 <__udivdi3>:
a0001400:	88aa                	mv	a7,a0
a0001402:	87ae                	mv	a5,a1
a0001404:	8832                	mv	a6,a2
a0001406:	8536                	mv	a0,a3
a0001408:	8346                	mv	t1,a7
a000140a:	20069663          	bnez	a3,a0001616 <__udivdi3+0x216>
a000140e:	a00086b7          	lui	a3,0xa0008
a0001412:	52868693          	addi	a3,a3,1320 # a0008528 <__psram_limit+0xf7c08528>
a0001416:	0ac5ff63          	bgeu	a1,a2,a00014d4 <__udivdi3+0xd4>
a000141a:	6741                	lui	a4,0x10
a000141c:	0ae67563          	bgeu	a2,a4,a00014c6 <__udivdi3+0xc6>
a0001420:	0ff00713          	li	a4,255
a0001424:	00c73733          	sltu	a4,a4,a2
a0001428:	070e                	slli	a4,a4,0x3
a000142a:	00e65533          	srl	a0,a2,a4
a000142e:	96aa                	add	a3,a3,a0
a0001430:	0006c683          	lbu	a3,0(a3)
a0001434:	02000513          	li	a0,32
a0001438:	9736                	add	a4,a4,a3
a000143a:	40e506b3          	sub	a3,a0,a4
a000143e:	00e50b63          	beq	a0,a4,a0001454 <__udivdi3+0x54>
a0001442:	00d795b3          	sll	a1,a5,a3
a0001446:	00e8d733          	srl	a4,a7,a4
a000144a:	00d61833          	sll	a6,a2,a3
a000144e:	8dd9                	or	a1,a1,a4
a0001450:	00d89333          	sll	t1,a7,a3
a0001454:	01085893          	srli	a7,a6,0x10
a0001458:	0315d6b3          	divu	a3,a1,a7
a000145c:	01081613          	slli	a2,a6,0x10
a0001460:	8241                	srli	a2,a2,0x10
a0001462:	01035793          	srli	a5,t1,0x10
a0001466:	0315f733          	remu	a4,a1,a7
a000146a:	8536                	mv	a0,a3
a000146c:	02d605b3          	mul	a1,a2,a3
a0001470:	0742                	slli	a4,a4,0x10
a0001472:	8fd9                	or	a5,a5,a4
a0001474:	00b7fc63          	bgeu	a5,a1,a000148c <__udivdi3+0x8c>
a0001478:	97c2                	add	a5,a5,a6
a000147a:	fff68513          	addi	a0,a3,-1
a000147e:	0107e763          	bltu	a5,a6,a000148c <__udivdi3+0x8c>
a0001482:	00b7f563          	bgeu	a5,a1,a000148c <__udivdi3+0x8c>
a0001486:	ffe68513          	addi	a0,a3,-2
a000148a:	97c2                	add	a5,a5,a6
a000148c:	8f8d                	sub	a5,a5,a1
a000148e:	0317f733          	remu	a4,a5,a7
a0001492:	0342                	slli	t1,t1,0x10
a0001494:	01035313          	srli	t1,t1,0x10
a0001498:	0317d7b3          	divu	a5,a5,a7
a000149c:	0742                	slli	a4,a4,0x10
a000149e:	00676333          	or	t1,a4,t1
a00014a2:	02f606b3          	mul	a3,a2,a5
a00014a6:	863e                	mv	a2,a5
a00014a8:	00d37b63          	bgeu	t1,a3,a00014be <__udivdi3+0xbe>
a00014ac:	9342                	add	t1,t1,a6
a00014ae:	fff78613          	addi	a2,a5,-1 # ffff <wifi_ram_max_size+0x7fff>
a00014b2:	01036663          	bltu	t1,a6,a00014be <__udivdi3+0xbe>
a00014b6:	00d37463          	bgeu	t1,a3,a00014be <__udivdi3+0xbe>
a00014ba:	ffe78613          	addi	a2,a5,-2
a00014be:	0542                	slli	a0,a0,0x10
a00014c0:	8d51                	or	a0,a0,a2
a00014c2:	4581                	li	a1,0
a00014c4:	a85d                	j	a000157a <__udivdi3+0x17a>
a00014c6:	01000537          	lui	a0,0x1000
a00014ca:	4741                	li	a4,16
a00014cc:	f4a66fe3          	bltu	a2,a0,a000142a <__udivdi3+0x2a>
a00014d0:	4761                	li	a4,24
a00014d2:	bfa1                	j	a000142a <__udivdi3+0x2a>
a00014d4:	e601                	bnez	a2,a00014dc <__udivdi3+0xdc>
a00014d6:	4705                	li	a4,1
a00014d8:	02c75833          	divu	a6,a4,a2
a00014dc:	6741                	lui	a4,0x10
a00014de:	08e87f63          	bgeu	a6,a4,a000157c <__udivdi3+0x17c>
a00014e2:	0ff00713          	li	a4,255
a00014e6:	01077363          	bgeu	a4,a6,a00014ec <__udivdi3+0xec>
a00014ea:	4521                	li	a0,8
a00014ec:	00a85733          	srl	a4,a6,a0
a00014f0:	96ba                	add	a3,a3,a4
a00014f2:	0006c703          	lbu	a4,0(a3)
a00014f6:	02000613          	li	a2,32
a00014fa:	972a                	add	a4,a4,a0
a00014fc:	40e606b3          	sub	a3,a2,a4
a0001500:	08e61563          	bne	a2,a4,a000158a <__udivdi3+0x18a>
a0001504:	410787b3          	sub	a5,a5,a6
a0001508:	4585                	li	a1,1
a000150a:	01085893          	srli	a7,a6,0x10
a000150e:	01081613          	slli	a2,a6,0x10
a0001512:	8241                	srli	a2,a2,0x10
a0001514:	01035713          	srli	a4,t1,0x10
a0001518:	0317f6b3          	remu	a3,a5,a7
a000151c:	0317d7b3          	divu	a5,a5,a7
a0001520:	06c2                	slli	a3,a3,0x10
a0001522:	8f55                	or	a4,a4,a3
a0001524:	02f60e33          	mul	t3,a2,a5
a0001528:	853e                	mv	a0,a5
a000152a:	01c77c63          	bgeu	a4,t3,a0001542 <__udivdi3+0x142>
a000152e:	9742                	add	a4,a4,a6
a0001530:	fff78513          	addi	a0,a5,-1
a0001534:	01076763          	bltu	a4,a6,a0001542 <__udivdi3+0x142>
a0001538:	01c77563          	bgeu	a4,t3,a0001542 <__udivdi3+0x142>
a000153c:	ffe78513          	addi	a0,a5,-2
a0001540:	9742                	add	a4,a4,a6
a0001542:	41c70733          	sub	a4,a4,t3
a0001546:	031777b3          	remu	a5,a4,a7
a000154a:	0342                	slli	t1,t1,0x10
a000154c:	01035313          	srli	t1,t1,0x10
a0001550:	03175733          	divu	a4,a4,a7
a0001554:	07c2                	slli	a5,a5,0x10
a0001556:	0067e333          	or	t1,a5,t1
a000155a:	02e606b3          	mul	a3,a2,a4
a000155e:	863a                	mv	a2,a4
a0001560:	00d37b63          	bgeu	t1,a3,a0001576 <__udivdi3+0x176>
a0001564:	9342                	add	t1,t1,a6
a0001566:	fff70613          	addi	a2,a4,-1 # ffff <wifi_ram_max_size+0x7fff>
a000156a:	01036663          	bltu	t1,a6,a0001576 <__udivdi3+0x176>
a000156e:	00d37463          	bgeu	t1,a3,a0001576 <__udivdi3+0x176>
a0001572:	ffe70613          	addi	a2,a4,-2
a0001576:	0542                	slli	a0,a0,0x10
a0001578:	8d51                	or	a0,a0,a2
a000157a:	8082                	ret
a000157c:	01000737          	lui	a4,0x1000
a0001580:	4541                	li	a0,16
a0001582:	f6e865e3          	bltu	a6,a4,a00014ec <__udivdi3+0xec>
a0001586:	4561                	li	a0,24
a0001588:	b795                	j	a00014ec <__udivdi3+0xec>
a000158a:	00d81833          	sll	a6,a6,a3
a000158e:	00e7d533          	srl	a0,a5,a4
a0001592:	00d89333          	sll	t1,a7,a3
a0001596:	00d797b3          	sll	a5,a5,a3
a000159a:	00e8d733          	srl	a4,a7,a4
a000159e:	01085893          	srli	a7,a6,0x10
a00015a2:	00f76633          	or	a2,a4,a5
a00015a6:	03157733          	remu	a4,a0,a7
a00015aa:	01081793          	slli	a5,a6,0x10
a00015ae:	83c1                	srli	a5,a5,0x10
a00015b0:	01065593          	srli	a1,a2,0x10
a00015b4:	03155533          	divu	a0,a0,a7
a00015b8:	0742                	slli	a4,a4,0x10
a00015ba:	8f4d                	or	a4,a4,a1
a00015bc:	02a786b3          	mul	a3,a5,a0
a00015c0:	85aa                	mv	a1,a0
a00015c2:	00d77c63          	bgeu	a4,a3,a00015da <__udivdi3+0x1da>
a00015c6:	9742                	add	a4,a4,a6
a00015c8:	fff50593          	addi	a1,a0,-1 # ffffff <remain_wifi_ram+0xfdffff>
a00015cc:	01076763          	bltu	a4,a6,a00015da <__udivdi3+0x1da>
a00015d0:	00d77563          	bgeu	a4,a3,a00015da <__udivdi3+0x1da>
a00015d4:	ffe50593          	addi	a1,a0,-2
a00015d8:	9742                	add	a4,a4,a6
a00015da:	40d706b3          	sub	a3,a4,a3
a00015de:	0316f733          	remu	a4,a3,a7
a00015e2:	0642                	slli	a2,a2,0x10
a00015e4:	8241                	srli	a2,a2,0x10
a00015e6:	0316d6b3          	divu	a3,a3,a7
a00015ea:	0742                	slli	a4,a4,0x10
a00015ec:	02d78533          	mul	a0,a5,a3
a00015f0:	00c767b3          	or	a5,a4,a2
a00015f4:	8736                	mv	a4,a3
a00015f6:	00a7fc63          	bgeu	a5,a0,a000160e <__udivdi3+0x20e>
a00015fa:	97c2                	add	a5,a5,a6
a00015fc:	fff68713          	addi	a4,a3,-1
a0001600:	0107e763          	bltu	a5,a6,a000160e <__udivdi3+0x20e>
a0001604:	00a7f563          	bgeu	a5,a0,a000160e <__udivdi3+0x20e>
a0001608:	ffe68713          	addi	a4,a3,-2
a000160c:	97c2                	add	a5,a5,a6
a000160e:	05c2                	slli	a1,a1,0x10
a0001610:	8f89                	sub	a5,a5,a0
a0001612:	8dd9                	or	a1,a1,a4
a0001614:	bddd                	j	a000150a <__udivdi3+0x10a>
a0001616:	14d5e263          	bltu	a1,a3,a000175a <__udivdi3+0x35a>
a000161a:	6741                	lui	a4,0x10
a000161c:	02e6ff63          	bgeu	a3,a4,a000165a <__udivdi3+0x25a>
a0001620:	0ff00713          	li	a4,255
a0001624:	00d735b3          	sltu	a1,a4,a3
a0001628:	058e                	slli	a1,a1,0x3
a000162a:	a0008737          	lui	a4,0xa0008
a000162e:	00b6d533          	srl	a0,a3,a1
a0001632:	52870713          	addi	a4,a4,1320 # a0008528 <__psram_limit+0xf7c08528>
a0001636:	972a                	add	a4,a4,a0
a0001638:	00074703          	lbu	a4,0(a4)
a000163c:	02000513          	li	a0,32
a0001640:	972e                	add	a4,a4,a1
a0001642:	40e505b3          	sub	a1,a0,a4
a0001646:	02e51163          	bne	a0,a4,a0001668 <__udivdi3+0x268>
a000164a:	4505                	li	a0,1
a000164c:	f2f6e7e3          	bltu	a3,a5,a000157a <__udivdi3+0x17a>
a0001650:	00c8b533          	sltu	a0,a7,a2
a0001654:	00154513          	xori	a0,a0,1
a0001658:	b70d                	j	a000157a <__udivdi3+0x17a>
a000165a:	01000737          	lui	a4,0x1000
a000165e:	45c1                	li	a1,16
a0001660:	fce6e5e3          	bltu	a3,a4,a000162a <__udivdi3+0x22a>
a0001664:	45e1                	li	a1,24
a0001666:	b7d1                	j	a000162a <__udivdi3+0x22a>
a0001668:	00e65833          	srl	a6,a2,a4
a000166c:	00b696b3          	sll	a3,a3,a1
a0001670:	00d86833          	or	a6,a6,a3
a0001674:	00e7de33          	srl	t3,a5,a4
a0001678:	01085e93          	srli	t4,a6,0x10
a000167c:	03de76b3          	remu	a3,t3,t4
a0001680:	00b797b3          	sll	a5,a5,a1
a0001684:	00e8d733          	srl	a4,a7,a4
a0001688:	00b61333          	sll	t1,a2,a1
a000168c:	00f76633          	or	a2,a4,a5
a0001690:	01081793          	slli	a5,a6,0x10
a0001694:	83c1                	srli	a5,a5,0x10
a0001696:	01065713          	srli	a4,a2,0x10
a000169a:	03de5e33          	divu	t3,t3,t4
a000169e:	06c2                	slli	a3,a3,0x10
a00016a0:	8f55                	or	a4,a4,a3
a00016a2:	03c78f33          	mul	t5,a5,t3
a00016a6:	8572                	mv	a0,t3
a00016a8:	01e77c63          	bgeu	a4,t5,a00016c0 <__udivdi3+0x2c0>
a00016ac:	9742                	add	a4,a4,a6
a00016ae:	fffe0513          	addi	a0,t3,-1 # ffff <wifi_ram_max_size+0x7fff>
a00016b2:	01076763          	bltu	a4,a6,a00016c0 <__udivdi3+0x2c0>
a00016b6:	01e77563          	bgeu	a4,t5,a00016c0 <__udivdi3+0x2c0>
a00016ba:	ffee0513          	addi	a0,t3,-2
a00016be:	9742                	add	a4,a4,a6
a00016c0:	41e70733          	sub	a4,a4,t5
a00016c4:	03d776b3          	remu	a3,a4,t4
a00016c8:	03d75733          	divu	a4,a4,t4
a00016cc:	06c2                	slli	a3,a3,0x10
a00016ce:	02e78e33          	mul	t3,a5,a4
a00016d2:	01061793          	slli	a5,a2,0x10
a00016d6:	83c1                	srli	a5,a5,0x10
a00016d8:	8fd5                	or	a5,a5,a3
a00016da:	863a                	mv	a2,a4
a00016dc:	01c7fc63          	bgeu	a5,t3,a00016f4 <__udivdi3+0x2f4>
a00016e0:	97c2                	add	a5,a5,a6
a00016e2:	fff70613          	addi	a2,a4,-1 # ffffff <remain_wifi_ram+0xfdffff>
a00016e6:	0107e763          	bltu	a5,a6,a00016f4 <__udivdi3+0x2f4>
a00016ea:	01c7f563          	bgeu	a5,t3,a00016f4 <__udivdi3+0x2f4>
a00016ee:	ffe70613          	addi	a2,a4,-2
a00016f2:	97c2                	add	a5,a5,a6
a00016f4:	0542                	slli	a0,a0,0x10
a00016f6:	6ec1                	lui	t4,0x10
a00016f8:	8d51                	or	a0,a0,a2
a00016fa:	fffe8693          	addi	a3,t4,-1 # ffff <wifi_ram_max_size+0x7fff>
a00016fe:	00d57833          	and	a6,a0,a3
a0001702:	01055613          	srli	a2,a0,0x10
a0001706:	00d376b3          	and	a3,t1,a3
a000170a:	01035313          	srli	t1,t1,0x10
a000170e:	41c787b3          	sub	a5,a5,t3
a0001712:	02d80e33          	mul	t3,a6,a3
a0001716:	02d606b3          	mul	a3,a2,a3
a000171a:	010e5713          	srli	a4,t3,0x10
a000171e:	02680833          	mul	a6,a6,t1
a0001722:	9836                	add	a6,a6,a3
a0001724:	9742                	add	a4,a4,a6
a0001726:	02660633          	mul	a2,a2,t1
a000172a:	00d77363          	bgeu	a4,a3,a0001730 <__udivdi3+0x330>
a000172e:	9676                	add	a2,a2,t4
a0001730:	01075693          	srli	a3,a4,0x10
a0001734:	9636                	add	a2,a2,a3
a0001736:	02c7e063          	bltu	a5,a2,a0001756 <__udivdi3+0x356>
a000173a:	d8c794e3          	bne	a5,a2,a00014c2 <__udivdi3+0xc2>
a000173e:	67c1                	lui	a5,0x10
a0001740:	17fd                	addi	a5,a5,-1
a0001742:	8f7d                	and	a4,a4,a5
a0001744:	0742                	slli	a4,a4,0x10
a0001746:	00fe7e33          	and	t3,t3,a5
a000174a:	00b898b3          	sll	a7,a7,a1
a000174e:	9772                	add	a4,a4,t3
a0001750:	4581                	li	a1,0
a0001752:	e2e8f4e3          	bgeu	a7,a4,a000157a <__udivdi3+0x17a>
a0001756:	157d                	addi	a0,a0,-1
a0001758:	b3ad                	j	a00014c2 <__udivdi3+0xc2>
a000175a:	4581                	li	a1,0
a000175c:	4501                	li	a0,0
a000175e:	bd31                	j	a000157a <__udivdi3+0x17a>

a0001760 <__umoddi3>:
a0001760:	8eaa                	mv	t4,a0
a0001762:	832e                	mv	t1,a1
a0001764:	8832                	mv	a6,a2
a0001766:	87b6                	mv	a5,a3
a0001768:	1c069263          	bnez	a3,a000192c <__umoddi3+0x1cc>
a000176c:	a0008737          	lui	a4,0xa0008
a0001770:	52870713          	addi	a4,a4,1320 # a0008528 <__psram_limit+0xf7c08528>
a0001774:	0ac5f563          	bgeu	a1,a2,a000181e <__umoddi3+0xbe>
a0001778:	66c1                	lui	a3,0x10
a000177a:	08d67b63          	bgeu	a2,a3,a0001810 <__umoddi3+0xb0>
a000177e:	0ff00693          	li	a3,255
a0001782:	00c6f363          	bgeu	a3,a2,a0001788 <__umoddi3+0x28>
a0001786:	47a1                	li	a5,8
a0001788:	00f656b3          	srl	a3,a2,a5
a000178c:	9736                	add	a4,a4,a3
a000178e:	00074703          	lbu	a4,0(a4)
a0001792:	97ba                	add	a5,a5,a4
a0001794:	02000713          	li	a4,32
a0001798:	40f708b3          	sub	a7,a4,a5
a000179c:	00f70b63          	beq	a4,a5,a00017b2 <__umoddi3+0x52>
a00017a0:	011315b3          	sll	a1,t1,a7
a00017a4:	00fed7b3          	srl	a5,t4,a5
a00017a8:	01161833          	sll	a6,a2,a7
a00017ac:	8ddd                	or	a1,a1,a5
a00017ae:	011e9533          	sll	a0,t4,a7
a00017b2:	01085693          	srli	a3,a6,0x10
a00017b6:	02d5f7b3          	remu	a5,a1,a3
a00017ba:	01081613          	slli	a2,a6,0x10
a00017be:	8241                	srli	a2,a2,0x10
a00017c0:	01055713          	srli	a4,a0,0x10
a00017c4:	02d5d5b3          	divu	a1,a1,a3
a00017c8:	07c2                	slli	a5,a5,0x10
a00017ca:	8f5d                	or	a4,a4,a5
a00017cc:	02b605b3          	mul	a1,a2,a1
a00017d0:	00b77863          	bgeu	a4,a1,a00017e0 <__umoddi3+0x80>
a00017d4:	9742                	add	a4,a4,a6
a00017d6:	01076563          	bltu	a4,a6,a00017e0 <__umoddi3+0x80>
a00017da:	00b77363          	bgeu	a4,a1,a00017e0 <__umoddi3+0x80>
a00017de:	9742                	add	a4,a4,a6
a00017e0:	8f0d                	sub	a4,a4,a1
a00017e2:	02d777b3          	remu	a5,a4,a3
a00017e6:	0542                	slli	a0,a0,0x10
a00017e8:	8141                	srli	a0,a0,0x10
a00017ea:	02d75733          	divu	a4,a4,a3
a00017ee:	07c2                	slli	a5,a5,0x10
a00017f0:	8d5d                	or	a0,a0,a5
a00017f2:	02e60733          	mul	a4,a2,a4
a00017f6:	00e57863          	bgeu	a0,a4,a0001806 <__umoddi3+0xa6>
a00017fa:	9542                	add	a0,a0,a6
a00017fc:	01056563          	bltu	a0,a6,a0001806 <__umoddi3+0xa6>
a0001800:	00e57363          	bgeu	a0,a4,a0001806 <__umoddi3+0xa6>
a0001804:	9542                	add	a0,a0,a6
a0001806:	8d19                	sub	a0,a0,a4
a0001808:	01155533          	srl	a0,a0,a7
a000180c:	4581                	li	a1,0
a000180e:	8082                	ret
a0001810:	010006b7          	lui	a3,0x1000
a0001814:	47c1                	li	a5,16
a0001816:	f6d669e3          	bltu	a2,a3,a0001788 <__umoddi3+0x28>
a000181a:	47e1                	li	a5,24
a000181c:	b7b5                	j	a0001788 <__umoddi3+0x28>
a000181e:	e601                	bnez	a2,a0001826 <__umoddi3+0xc6>
a0001820:	4685                	li	a3,1
a0001822:	02c6d833          	divu	a6,a3,a2
a0001826:	66c1                	lui	a3,0x10
a0001828:	0ed87b63          	bgeu	a6,a3,a000191e <__umoddi3+0x1be>
a000182c:	0ff00693          	li	a3,255
a0001830:	0106f363          	bgeu	a3,a6,a0001836 <__umoddi3+0xd6>
a0001834:	47a1                	li	a5,8
a0001836:	00f856b3          	srl	a3,a6,a5
a000183a:	9736                	add	a4,a4,a3
a000183c:	00074603          	lbu	a2,0(a4)
a0001840:	410305b3          	sub	a1,t1,a6
a0001844:	963e                	add	a2,a2,a5
a0001846:	02000793          	li	a5,32
a000184a:	40c788b3          	sub	a7,a5,a2
a000184e:	06c78a63          	beq	a5,a2,a00018c2 <__umoddi3+0x162>
a0001852:	01181833          	sll	a6,a6,a7
a0001856:	00c357b3          	srl	a5,t1,a2
a000185a:	011315b3          	sll	a1,t1,a7
a000185e:	01085313          	srli	t1,a6,0x10
a0001862:	00ced633          	srl	a2,t4,a2
a0001866:	8e4d                	or	a2,a2,a1
a0001868:	01081593          	slli	a1,a6,0x10
a000186c:	81c1                	srli	a1,a1,0x10
a000186e:	011e9533          	sll	a0,t4,a7
a0001872:	0267d6b3          	divu	a3,a5,t1
a0001876:	0267f733          	remu	a4,a5,t1
a000187a:	01065793          	srli	a5,a2,0x10
a000187e:	02d586b3          	mul	a3,a1,a3
a0001882:	0742                	slli	a4,a4,0x10
a0001884:	8f5d                	or	a4,a4,a5
a0001886:	00d77863          	bgeu	a4,a3,a0001896 <__umoddi3+0x136>
a000188a:	9742                	add	a4,a4,a6
a000188c:	01076563          	bltu	a4,a6,a0001896 <__umoddi3+0x136>
a0001890:	00d77363          	bgeu	a4,a3,a0001896 <__umoddi3+0x136>
a0001894:	9742                	add	a4,a4,a6
a0001896:	40d706b3          	sub	a3,a4,a3
a000189a:	0266f733          	remu	a4,a3,t1
a000189e:	0642                	slli	a2,a2,0x10
a00018a0:	8241                	srli	a2,a2,0x10
a00018a2:	0266d6b3          	divu	a3,a3,t1
a00018a6:	0742                	slli	a4,a4,0x10
a00018a8:	02d586b3          	mul	a3,a1,a3
a00018ac:	00c765b3          	or	a1,a4,a2
a00018b0:	00d5f863          	bgeu	a1,a3,a00018c0 <__umoddi3+0x160>
a00018b4:	95c2                	add	a1,a1,a6
a00018b6:	0105e563          	bltu	a1,a6,a00018c0 <__umoddi3+0x160>
a00018ba:	00d5f363          	bgeu	a1,a3,a00018c0 <__umoddi3+0x160>
a00018be:	95c2                	add	a1,a1,a6
a00018c0:	8d95                	sub	a1,a1,a3
a00018c2:	01085693          	srli	a3,a6,0x10
a00018c6:	02d5f733          	remu	a4,a1,a3
a00018ca:	01081793          	slli	a5,a6,0x10
a00018ce:	83c1                	srli	a5,a5,0x10
a00018d0:	01055613          	srli	a2,a0,0x10
a00018d4:	02d5d5b3          	divu	a1,a1,a3
a00018d8:	0742                	slli	a4,a4,0x10
a00018da:	8f51                	or	a4,a4,a2
a00018dc:	02b785b3          	mul	a1,a5,a1
a00018e0:	00b77863          	bgeu	a4,a1,a00018f0 <__umoddi3+0x190>
a00018e4:	9742                	add	a4,a4,a6
a00018e6:	01076563          	bltu	a4,a6,a00018f0 <__umoddi3+0x190>
a00018ea:	00b77363          	bgeu	a4,a1,a00018f0 <__umoddi3+0x190>
a00018ee:	9742                	add	a4,a4,a6
a00018f0:	40b705b3          	sub	a1,a4,a1
a00018f4:	02d5f733          	remu	a4,a1,a3
a00018f8:	0542                	slli	a0,a0,0x10
a00018fa:	8141                	srli	a0,a0,0x10
a00018fc:	02d5d5b3          	divu	a1,a1,a3
a0001900:	02b785b3          	mul	a1,a5,a1
a0001904:	01071793          	slli	a5,a4,0x10
a0001908:	8d5d                	or	a0,a0,a5
a000190a:	00b57863          	bgeu	a0,a1,a000191a <__umoddi3+0x1ba>
a000190e:	9542                	add	a0,a0,a6
a0001910:	01056563          	bltu	a0,a6,a000191a <__umoddi3+0x1ba>
a0001914:	00b57363          	bgeu	a0,a1,a000191a <__umoddi3+0x1ba>
a0001918:	9542                	add	a0,a0,a6
a000191a:	8d0d                	sub	a0,a0,a1
a000191c:	b5f5                	j	a0001808 <__umoddi3+0xa8>
a000191e:	010006b7          	lui	a3,0x1000
a0001922:	47c1                	li	a5,16
a0001924:	f0d869e3          	bltu	a6,a3,a0001836 <__umoddi3+0xd6>
a0001928:	47e1                	li	a5,24
a000192a:	b731                	j	a0001836 <__umoddi3+0xd6>
a000192c:	eed5e1e3          	bltu	a1,a3,a000180e <__umoddi3+0xae>
a0001930:	67c1                	lui	a5,0x10
a0001932:	04f6f463          	bgeu	a3,a5,a000197a <__umoddi3+0x21a>
a0001936:	0ff00893          	li	a7,255
a000193a:	00d8b7b3          	sltu	a5,a7,a3
a000193e:	078e                	slli	a5,a5,0x3
a0001940:	a0008737          	lui	a4,0xa0008
a0001944:	00f6d833          	srl	a6,a3,a5
a0001948:	52870713          	addi	a4,a4,1320 # a0008528 <__psram_limit+0xf7c08528>
a000194c:	9742                	add	a4,a4,a6
a000194e:	00074883          	lbu	a7,0(a4)
a0001952:	98be                	add	a7,a7,a5
a0001954:	02000793          	li	a5,32
a0001958:	41178833          	sub	a6,a5,a7
a000195c:	03179663          	bne	a5,a7,a0001988 <__umoddi3+0x228>
a0001960:	0066e463          	bltu	a3,t1,a0001968 <__umoddi3+0x208>
a0001964:	eacee5e3          	bltu	t4,a2,a000180e <__umoddi3+0xae>
a0001968:	40ce8533          	sub	a0,t4,a2
a000196c:	40d305b3          	sub	a1,t1,a3
a0001970:	00aebeb3          	sltu	t4,t4,a0
a0001974:	41d585b3          	sub	a1,a1,t4
a0001978:	bd59                	j	a000180e <__umoddi3+0xae>
a000197a:	01000737          	lui	a4,0x1000
a000197e:	47c1                	li	a5,16
a0001980:	fce6e0e3          	bltu	a3,a4,a0001940 <__umoddi3+0x1e0>
a0001984:	47e1                	li	a5,24
a0001986:	bf6d                	j	a0001940 <__umoddi3+0x1e0>
a0001988:	011657b3          	srl	a5,a2,a7
a000198c:	010696b3          	sll	a3,a3,a6
a0001990:	00d7ee33          	or	t3,a5,a3
a0001994:	01135f33          	srl	t5,t1,a7
a0001998:	011ed7b3          	srl	a5,t4,a7
a000199c:	010e9533          	sll	a0,t4,a6
a00019a0:	010e5e93          	srli	t4,t3,0x10
a00019a4:	010315b3          	sll	a1,t1,a6
a00019a8:	03df5333          	divu	t1,t5,t4
a00019ac:	8fcd                	or	a5,a5,a1
a00019ae:	010e1593          	slli	a1,t3,0x10
a00019b2:	81c1                	srli	a1,a1,0x10
a00019b4:	0107d713          	srli	a4,a5,0x10
a00019b8:	01061633          	sll	a2,a2,a6
a00019bc:	03df76b3          	remu	a3,t5,t4
a00019c0:	02658f33          	mul	t5,a1,t1
a00019c4:	06c2                	slli	a3,a3,0x10
a00019c6:	8f55                	or	a4,a4,a3
a00019c8:	869a                	mv	a3,t1
a00019ca:	01e77c63          	bgeu	a4,t5,a00019e2 <__umoddi3+0x282>
a00019ce:	9772                	add	a4,a4,t3
a00019d0:	fff30693          	addi	a3,t1,-1 # 1fff <HeapMinSize+0xfff>
a00019d4:	01c76763          	bltu	a4,t3,a00019e2 <__umoddi3+0x282>
a00019d8:	01e77563          	bgeu	a4,t5,a00019e2 <__umoddi3+0x282>
a00019dc:	ffe30693          	addi	a3,t1,-2
a00019e0:	9772                	add	a4,a4,t3
a00019e2:	41e70733          	sub	a4,a4,t5
a00019e6:	03d77333          	remu	t1,a4,t4
a00019ea:	07c2                	slli	a5,a5,0x10
a00019ec:	83c1                	srli	a5,a5,0x10
a00019ee:	03d75733          	divu	a4,a4,t4
a00019f2:	0342                	slli	t1,t1,0x10
a00019f4:	00f36333          	or	t1,t1,a5
a00019f8:	02e585b3          	mul	a1,a1,a4
a00019fc:	87ba                	mv	a5,a4
a00019fe:	00b37c63          	bgeu	t1,a1,a0001a16 <__umoddi3+0x2b6>
a0001a02:	9372                	add	t1,t1,t3
a0001a04:	fff70793          	addi	a5,a4,-1 # ffffff <remain_wifi_ram+0xfdffff>
a0001a08:	01c36763          	bltu	t1,t3,a0001a16 <__umoddi3+0x2b6>
a0001a0c:	00b37563          	bgeu	t1,a1,a0001a16 <__umoddi3+0x2b6>
a0001a10:	ffe70793          	addi	a5,a4,-2
a0001a14:	9372                	add	t1,t1,t3
a0001a16:	06c2                	slli	a3,a3,0x10
a0001a18:	6f41                	lui	t5,0x10
a0001a1a:	8edd                	or	a3,a3,a5
a0001a1c:	40b305b3          	sub	a1,t1,a1
a0001a20:	ffff0313          	addi	t1,t5,-1 # ffff <wifi_ram_max_size+0x7fff>
a0001a24:	0066feb3          	and	t4,a3,t1
a0001a28:	01065713          	srli	a4,a2,0x10
a0001a2c:	82c1                	srli	a3,a3,0x10
a0001a2e:	00667333          	and	t1,a2,t1
a0001a32:	026e87b3          	mul	a5,t4,t1
a0001a36:	02668333          	mul	t1,a3,t1
a0001a3a:	02ee8eb3          	mul	t4,t4,a4
a0001a3e:	02e686b3          	mul	a3,a3,a4
a0001a42:	9e9a                	add	t4,t4,t1
a0001a44:	0107d713          	srli	a4,a5,0x10
a0001a48:	9776                	add	a4,a4,t4
a0001a4a:	00677363          	bgeu	a4,t1,a0001a50 <__umoddi3+0x2f0>
a0001a4e:	96fa                	add	a3,a3,t5
a0001a50:	01075313          	srli	t1,a4,0x10
a0001a54:	969a                	add	a3,a3,t1
a0001a56:	6341                	lui	t1,0x10
a0001a58:	137d                	addi	t1,t1,-1
a0001a5a:	00677733          	and	a4,a4,t1
a0001a5e:	0742                	slli	a4,a4,0x10
a0001a60:	0067f7b3          	and	a5,a5,t1
a0001a64:	97ba                	add	a5,a5,a4
a0001a66:	00d5e663          	bltu	a1,a3,a0001a72 <__umoddi3+0x312>
a0001a6a:	00d59b63          	bne	a1,a3,a0001a80 <__umoddi3+0x320>
a0001a6e:	00f57963          	bgeu	a0,a5,a0001a80 <__umoddi3+0x320>
a0001a72:	40c78633          	sub	a2,a5,a2
a0001a76:	00c7b7b3          	sltu	a5,a5,a2
a0001a7a:	97f2                	add	a5,a5,t3
a0001a7c:	8e9d                	sub	a3,a3,a5
a0001a7e:	87b2                	mv	a5,a2
a0001a80:	40f507b3          	sub	a5,a0,a5
a0001a84:	00f53533          	sltu	a0,a0,a5
a0001a88:	8d95                	sub	a1,a1,a3
a0001a8a:	8d89                	sub	a1,a1,a0
a0001a8c:	011598b3          	sll	a7,a1,a7
a0001a90:	0107d533          	srl	a0,a5,a6
a0001a94:	00a8e533          	or	a0,a7,a0
a0001a98:	0105d5b3          	srl	a1,a1,a6
a0001a9c:	bb8d                	j	a000180e <__umoddi3+0xae>

a0001a9e <__adddf3>:
a0001a9e:	1101                	addi	sp,sp,-32
a0001aa0:	ce06                	sw	ra,28(sp)
a0001aa2:	cc22                	sw	s0,24(sp)
a0001aa4:	ca26                	sw	s1,20(sp)
a0001aa6:	c84a                	sw	s2,16(sp)
a0001aa8:	c64e                	sw	s3,12(sp)
a0001aaa:	c452                	sw	s4,8(sp)
a0001aac:	002029f3          	frrm	s3
a0001ab0:	001008b7          	lui	a7,0x100
a0001ab4:	18fd                	addi	a7,a7,-1
a0001ab6:	00b8f733          	and	a4,a7,a1
a0001aba:	0145d413          	srli	s0,a1,0x14
a0001abe:	01f5d493          	srli	s1,a1,0x1f
a0001ac2:	0146d593          	srli	a1,a3,0x14
a0001ac6:	00371793          	slli	a5,a4,0x3
a0001aca:	00d8f8b3          	and	a7,a7,a3
a0001ace:	01d55713          	srli	a4,a0,0x1d
a0001ad2:	7ff47413          	andi	s0,s0,2047
a0001ad6:	7ff5f593          	andi	a1,a1,2047
a0001ada:	8f5d                	or	a4,a4,a5
a0001adc:	01f6d313          	srli	t1,a3,0x1f
a0001ae0:	00351793          	slli	a5,a0,0x3
a0001ae4:	01d65693          	srli	a3,a2,0x1d
a0001ae8:	088e                	slli	a7,a7,0x3
a0001aea:	40b40533          	sub	a0,s0,a1
a0001aee:	00361813          	slli	a6,a2,0x3
a0001af2:	0116e6b3          	or	a3,a3,a7
a0001af6:	862a                	mv	a2,a0
a0001af8:	34649163          	bne	s1,t1,a0001e3a <__adddf3+0x39c>
a0001afc:	10a05963          	blez	a0,a0001c0e <__adddf3+0x170>
a0001b00:	e1b9                	bnez	a1,a0001b46 <__adddf3+0xa8>
a0001b02:	0106e533          	or	a0,a3,a6
a0001b06:	e511                	bnez	a0,a0001b12 <__adddf3+0x74>
a0001b08:	7ff00693          	li	a3,2047
a0001b0c:	2ad61c63          	bne	a2,a3,a0001dc4 <__adddf3+0x326>
a0001b10:	a839                	j	a0001b2e <__adddf3+0x90>
a0001b12:	fff60513          	addi	a0,a2,-1 # ffffff <remain_wifi_ram+0xfdffff>
a0001b16:	e901                	bnez	a0,a0001b26 <__adddf3+0x88>
a0001b18:	983e                	add	a6,a6,a5
a0001b1a:	96ba                	add	a3,a3,a4
a0001b1c:	00f837b3          	sltu	a5,a6,a5
a0001b20:	96be                	add	a3,a3,a5
a0001b22:	4605                	li	a2,1
a0001b24:	a059                	j	a0001baa <__adddf3+0x10c>
a0001b26:	7ff00893          	li	a7,2047
a0001b2a:	05161163          	bne	a2,a7,a0001b6c <__adddf3+0xce>
a0001b2e:	00f766b3          	or	a3,a4,a5
a0001b32:	6e068c63          	beqz	a3,a000222a <__adddf3+0x78c>
a0001b36:	004006b7          	lui	a3,0x400
a0001b3a:	8ef9                	and	a3,a3,a4
a0001b3c:	4401                	li	s0,0
a0001b3e:	20069263          	bnez	a3,a0001d42 <__adddf3+0x2a4>
a0001b42:	45c1                	li	a1,16
a0001b44:	aafd                	j	a0001d42 <__adddf3+0x2a4>
a0001b46:	7ff00613          	li	a2,2047
a0001b4a:	00c41e63          	bne	s0,a2,a0001b66 <__adddf3+0xc8>
a0001b4e:	00f766b3          	or	a3,a4,a5
a0001b52:	6c068f63          	beqz	a3,a0002230 <__adddf3+0x792>
a0001b56:	004006b7          	lui	a3,0x400
a0001b5a:	8ef9                	and	a3,a3,a4
a0001b5c:	12068563          	beqz	a3,a0001c86 <__adddf3+0x1e8>
a0001b60:	7ff00613          	li	a2,2047
a0001b64:	a485                	j	a0001dc4 <__adddf3+0x326>
a0001b66:	00800637          	lui	a2,0x800
a0001b6a:	8ed1                	or	a3,a3,a2
a0001b6c:	03800613          	li	a2,56
a0001b70:	08a64a63          	blt	a2,a0,a0001c04 <__adddf3+0x166>
a0001b74:	467d                	li	a2,31
a0001b76:	06a64063          	blt	a2,a0,a0001bd6 <__adddf3+0x138>
a0001b7a:	02000613          	li	a2,32
a0001b7e:	8e09                	sub	a2,a2,a0
a0001b80:	00a858b3          	srl	a7,a6,a0
a0001b84:	00c695b3          	sll	a1,a3,a2
a0001b88:	00c81833          	sll	a6,a6,a2
a0001b8c:	0115e5b3          	or	a1,a1,a7
a0001b90:	01003833          	snez	a6,a6
a0001b94:	0105e833          	or	a6,a1,a6
a0001b98:	00a6d533          	srl	a0,a3,a0
a0001b9c:	983e                	add	a6,a6,a5
a0001b9e:	953a                	add	a0,a0,a4
a0001ba0:	00f837b3          	sltu	a5,a6,a5
a0001ba4:	00f506b3          	add	a3,a0,a5
a0001ba8:	8622                	mv	a2,s0
a0001baa:	008007b7          	lui	a5,0x800
a0001bae:	8ff5                	and	a5,a5,a3
a0001bb0:	cbb5                	beqz	a5,a0001c24 <__adddf3+0x186>
a0001bb2:	0605                	addi	a2,a2,1
a0001bb4:	7ff00793          	li	a5,2047
a0001bb8:	26f60163          	beq	a2,a5,a0001e1a <__adddf3+0x37c>
a0001bbc:	ff800737          	lui	a4,0xff800
a0001bc0:	177d                	addi	a4,a4,-1
a0001bc2:	00185793          	srli	a5,a6,0x1
a0001bc6:	8f75                	and	a4,a4,a3
a0001bc8:	00187813          	andi	a6,a6,1
a0001bcc:	0107e833          	or	a6,a5,a6
a0001bd0:	01f71793          	slli	a5,a4,0x1f
a0001bd4:	a2ed                	j	a0001dbe <__adddf3+0x320>
a0001bd6:	fe050593          	addi	a1,a0,-32
a0001bda:	02000893          	li	a7,32
a0001bde:	00b6d5b3          	srl	a1,a3,a1
a0001be2:	4601                	li	a2,0
a0001be4:	01150863          	beq	a0,a7,a0001bf4 <__adddf3+0x156>
a0001be8:	04000613          	li	a2,64
a0001bec:	40a60533          	sub	a0,a2,a0
a0001bf0:	00a69633          	sll	a2,a3,a0
a0001bf4:	01066833          	or	a6,a2,a6
a0001bf8:	01003833          	snez	a6,a6
a0001bfc:	0105e833          	or	a6,a1,a6
a0001c00:	4501                	li	a0,0
a0001c02:	bf69                	j	a0001b9c <__adddf3+0xfe>
a0001c04:	0106e833          	or	a6,a3,a6
a0001c08:	01003833          	snez	a6,a6
a0001c0c:	bfd5                	j	a0001c00 <__adddf3+0x162>
a0001c0e:	c97d                	beqz	a0,a0001d04 <__adddf3+0x266>
a0001c10:	40858633          	sub	a2,a1,s0
a0001c14:	e821                	bnez	s0,a0001c64 <__adddf3+0x1c6>
a0001c16:	00f76533          	or	a0,a4,a5
a0001c1a:	e911                	bnez	a0,a0001c2e <__adddf3+0x190>
a0001c1c:	7ff00793          	li	a5,2047
a0001c20:	02f60663          	beq	a2,a5,a0001c4c <__adddf3+0x1ae>
a0001c24:	8736                	mv	a4,a3
a0001c26:	87c2                	mv	a5,a6
a0001c28:	40060163          	beqz	a2,a000202a <__adddf3+0x58c>
a0001c2c:	aa61                	j	a0001dc4 <__adddf3+0x326>
a0001c2e:	fff60893          	addi	a7,a2,-1 # 7fffff <remain_wifi_ram+0x7dffff>
a0001c32:	00089963          	bnez	a7,a0001c44 <__adddf3+0x1a6>
a0001c36:	97c2                	add	a5,a5,a6
a0001c38:	0107b833          	sltu	a6,a5,a6
a0001c3c:	96ba                	add	a3,a3,a4
a0001c3e:	96c2                	add	a3,a3,a6
a0001c40:	883e                	mv	a6,a5
a0001c42:	b5c5                	j	a0001b22 <__adddf3+0x84>
a0001c44:	7ff00513          	li	a0,2047
a0001c48:	04a61563          	bne	a2,a0,a0001c92 <__adddf3+0x1f4>
a0001c4c:	0106e7b3          	or	a5,a3,a6
a0001c50:	5e078363          	beqz	a5,a0002236 <__adddf3+0x798>
a0001c54:	004007b7          	lui	a5,0x400
a0001c58:	8ff5                	and	a5,a5,a3
a0001c5a:	8736                	mv	a4,a3
a0001c5c:	5c079f63          	bnez	a5,a000223a <__adddf3+0x79c>
a0001c60:	87c2                	mv	a5,a6
a0001c62:	b5c5                	j	a0001b42 <__adddf3+0xa4>
a0001c64:	7ff00513          	li	a0,2047
a0001c68:	02a59163          	bne	a1,a0,a0001c8a <__adddf3+0x1ec>
a0001c6c:	0106e7b3          	or	a5,a3,a6
a0001c70:	5a078063          	beqz	a5,a0002210 <__adddf3+0x772>
a0001c74:	004007b7          	lui	a5,0x400
a0001c78:	8ff5                	and	a5,a5,a3
a0001c7a:	8736                	mv	a4,a3
a0001c7c:	58079f63          	bnez	a5,a000221a <__adddf3+0x77c>
a0001c80:	87c2                	mv	a5,a6
a0001c82:	7ff00613          	li	a2,2047
a0001c86:	4401                	li	s0,0
a0001c88:	bd6d                	j	a0001b42 <__adddf3+0xa4>
a0001c8a:	00800537          	lui	a0,0x800
a0001c8e:	8f49                	or	a4,a4,a0
a0001c90:	88b2                	mv	a7,a2
a0001c92:	03800613          	li	a2,56
a0001c96:	07164363          	blt	a2,a7,a0001cfc <__adddf3+0x25e>
a0001c9a:	467d                	li	a2,31
a0001c9c:	03164b63          	blt	a2,a7,a0001cd2 <__adddf3+0x234>
a0001ca0:	02000513          	li	a0,32
a0001ca4:	41150533          	sub	a0,a0,a7
a0001ca8:	00a71633          	sll	a2,a4,a0
a0001cac:	0117d333          	srl	t1,a5,a7
a0001cb0:	00a797b3          	sll	a5,a5,a0
a0001cb4:	00666633          	or	a2,a2,t1
a0001cb8:	00f037b3          	snez	a5,a5
a0001cbc:	8fd1                	or	a5,a5,a2
a0001cbe:	01175733          	srl	a4,a4,a7
a0001cc2:	97c2                	add	a5,a5,a6
a0001cc4:	9736                	add	a4,a4,a3
a0001cc6:	0107b6b3          	sltu	a3,a5,a6
a0001cca:	96ba                	add	a3,a3,a4
a0001ccc:	883e                	mv	a6,a5
a0001cce:	862e                	mv	a2,a1
a0001cd0:	bde9                	j	a0001baa <__adddf3+0x10c>
a0001cd2:	fe088613          	addi	a2,a7,-32 # fffe0 <remain_wifi_ram+0xdffe0>
a0001cd6:	02000313          	li	t1,32
a0001cda:	00c75633          	srl	a2,a4,a2
a0001cde:	4501                	li	a0,0
a0001ce0:	00688863          	beq	a7,t1,a0001cf0 <__adddf3+0x252>
a0001ce4:	04000513          	li	a0,64
a0001ce8:	41150533          	sub	a0,a0,a7
a0001cec:	00a71533          	sll	a0,a4,a0
a0001cf0:	8fc9                	or	a5,a5,a0
a0001cf2:	00f037b3          	snez	a5,a5
a0001cf6:	8fd1                	or	a5,a5,a2
a0001cf8:	4701                	li	a4,0
a0001cfa:	b7e1                	j	a0001cc2 <__adddf3+0x224>
a0001cfc:	8fd9                	or	a5,a5,a4
a0001cfe:	00f037b3          	snez	a5,a5
a0001d02:	bfdd                	j	a0001cf8 <__adddf3+0x25a>
a0001d04:	00140613          	addi	a2,s0,1
a0001d08:	7fe67513          	andi	a0,a2,2046
a0001d0c:	ed41                	bnez	a0,a0001da4 <__adddf3+0x306>
a0001d0e:	00f76533          	or	a0,a4,a5
a0001d12:	e421                	bnez	s0,a0001d5a <__adddf3+0x2bc>
a0001d14:	4c050163          	beqz	a0,a00021d6 <__adddf3+0x738>
a0001d18:	0106e633          	or	a2,a3,a6
a0001d1c:	30060763          	beqz	a2,a000202a <__adddf3+0x58c>
a0001d20:	983e                	add	a6,a6,a5
a0001d22:	00f837b3          	sltu	a5,a6,a5
a0001d26:	9736                	add	a4,a4,a3
a0001d28:	973e                	add	a4,a4,a5
a0001d2a:	008007b7          	lui	a5,0x800
a0001d2e:	8ff9                	and	a5,a5,a4
a0001d30:	4a078463          	beqz	a5,a00021d8 <__adddf3+0x73a>
a0001d34:	ff8007b7          	lui	a5,0xff800
a0001d38:	17fd                	addi	a5,a5,-1
a0001d3a:	8f7d                	and	a4,a4,a5
a0001d3c:	4581                	li	a1,0
a0001d3e:	87c2                	mv	a5,a6
a0001d40:	4605                	li	a2,1
a0001d42:	0077f693          	andi	a3,a5,7
a0001d46:	e6c5                	bnez	a3,a0001dee <__adddf3+0x350>
a0001d48:	56040d63          	beqz	s0,a00022c2 <__adddf3+0x824>
a0001d4c:	0015f693          	andi	a3,a1,1
a0001d50:	56068963          	beqz	a3,a00022c2 <__adddf3+0x824>
a0001d54:	0025e593          	ori	a1,a1,2
a0001d58:	a3ad                	j	a00022c2 <__adddf3+0x824>
a0001d5a:	7ff00613          	li	a2,2047
a0001d5e:	02c41d63          	bne	s0,a2,a0001d98 <__adddf3+0x2fa>
a0001d62:	5c050f63          	beqz	a0,a0002340 <__adddf3+0x8a2>
a0001d66:	00400637          	lui	a2,0x400
a0001d6a:	8e79                	and	a2,a2,a4
a0001d6c:	00163613          	seqz	a2,a2
a0001d70:	0612                	slli	a2,a2,0x4
a0001d72:	52859d63          	bne	a1,s0,a00022ac <__adddf3+0x80e>
a0001d76:	85b2                	mv	a1,a2
a0001d78:	0106e633          	or	a2,a3,a6
a0001d7c:	c611                	beqz	a2,a0001d88 <__adddf3+0x2ea>
a0001d7e:	00400637          	lui	a2,0x400
a0001d82:	8e75                	and	a2,a2,a3
a0001d84:	e211                	bnez	a2,a0001d88 <__adddf3+0x2ea>
a0001d86:	45c1                	li	a1,16
a0001d88:	52051363          	bnez	a0,a00022ae <__adddf3+0x810>
a0001d8c:	8736                	mv	a4,a3
a0001d8e:	87c2                	mv	a5,a6
a0001d90:	4401                	li	s0,0
a0001d92:	7ff00613          	li	a2,2047
a0001d96:	b775                	j	a0001d42 <__adddf3+0x2a4>
a0001d98:	00c59463          	bne	a1,a2,a0001da0 <__adddf3+0x302>
a0001d9c:	4581                	li	a1,0
a0001d9e:	bfe9                	j	a0001d78 <__adddf3+0x2da>
a0001da0:	4581                	li	a1,0
a0001da2:	b7dd                	j	a0001d88 <__adddf3+0x2ea>
a0001da4:	7ff00593          	li	a1,2047
a0001da8:	02b60063          	beq	a2,a1,a0001dc8 <__adddf3+0x32a>
a0001dac:	983e                	add	a6,a6,a5
a0001dae:	00f837b3          	sltu	a5,a6,a5
a0001db2:	9736                	add	a4,a4,a3
a0001db4:	973e                	add	a4,a4,a5
a0001db6:	01f71793          	slli	a5,a4,0x1f
a0001dba:	00185813          	srli	a6,a6,0x1
a0001dbe:	0107e7b3          	or	a5,a5,a6
a0001dc2:	8305                	srli	a4,a4,0x1
a0001dc4:	4401                	li	s0,0
a0001dc6:	a99d                	j	a000223c <__adddf3+0x79e>
a0001dc8:	00098663          	beqz	s3,a0001dd4 <__adddf3+0x336>
a0001dcc:	478d                	li	a5,3
a0001dce:	00f99663          	bne	s3,a5,a0001dda <__adddf3+0x33c>
a0001dd2:	e881                	bnez	s1,a0001de2 <__adddf3+0x344>
a0001dd4:	7ff00613          	li	a2,2047
a0001dd8:	a881                	j	a0001e28 <__adddf3+0x38a>
a0001dda:	4789                	li	a5,2
a0001ddc:	00f99363          	bne	s3,a5,a0001de2 <__adddf3+0x344>
a0001de0:	f8f5                	bnez	s1,a0001dd4 <__adddf3+0x336>
a0001de2:	4401                	li	s0,0
a0001de4:	577d                	li	a4,-1
a0001de6:	57fd                	li	a5,-1
a0001de8:	7fe00613          	li	a2,2046
a0001dec:	4595                	li	a1,5
a0001dee:	4689                	li	a3,2
a0001df0:	0015e593          	ori	a1,a1,1
a0001df4:	48d98563          	beq	s3,a3,a000227e <__adddf3+0x7e0>
a0001df8:	468d                	li	a3,3
a0001dfa:	46d98e63          	beq	s3,a3,a0002276 <__adddf3+0x7d8>
a0001dfe:	48099163          	bnez	s3,a0002280 <__adddf3+0x7e2>
a0001e02:	00f7f693          	andi	a3,a5,15
a0001e06:	4511                	li	a0,4
a0001e08:	46a68c63          	beq	a3,a0,a0002280 <__adddf3+0x7e2>
a0001e0c:	00478693          	addi	a3,a5,4 # ff800004 <__psram_limit+0x57400004>
a0001e10:	00f6b7b3          	sltu	a5,a3,a5
a0001e14:	973e                	add	a4,a4,a5
a0001e16:	87b6                	mv	a5,a3
a0001e18:	a1a5                	j	a0002280 <__adddf3+0x7e2>
a0001e1a:	00098763          	beqz	s3,a0001e28 <__adddf3+0x38a>
a0001e1e:	478d                	li	a5,3
a0001e20:	00f99863          	bne	s3,a5,a0001e30 <__adddf3+0x392>
a0001e24:	3e049d63          	bnez	s1,a000221e <__adddf3+0x780>
a0001e28:	4701                	li	a4,0
a0001e2a:	4781                	li	a5,0
a0001e2c:	4595                	li	a1,5
a0001e2e:	a951                	j	a00022c2 <__adddf3+0x824>
a0001e30:	4789                	li	a5,2
a0001e32:	3ef99663          	bne	s3,a5,a000221e <__adddf3+0x780>
a0001e36:	f8ed                	bnez	s1,a0001e28 <__adddf3+0x38a>
a0001e38:	b76d                	j	a0001de2 <__adddf3+0x344>
a0001e3a:	0ca05663          	blez	a0,a0001f06 <__adddf3+0x468>
a0001e3e:	e1c9                	bnez	a1,a0001ec0 <__adddf3+0x422>
a0001e40:	0106e533          	or	a0,a3,a6
a0001e44:	cc0502e3          	beqz	a0,a0001b08 <__adddf3+0x6a>
a0001e48:	fff60513          	addi	a0,a2,-1 # 3fffff <remain_wifi_ram+0x3dffff>
a0001e4c:	e911                	bnez	a0,a0001e60 <__adddf3+0x3c2>
a0001e4e:	41078833          	sub	a6,a5,a6
a0001e52:	40d706b3          	sub	a3,a4,a3
a0001e56:	0107b7b3          	sltu	a5,a5,a6
a0001e5a:	8e9d                	sub	a3,a3,a5
a0001e5c:	4605                	li	a2,1
a0001e5e:	a0a9                	j	a0001ea8 <__adddf3+0x40a>
a0001e60:	7ff00893          	li	a7,2047
a0001e64:	cd1605e3          	beq	a2,a7,a0001b2e <__adddf3+0x90>
a0001e68:	03800613          	li	a2,56
a0001e6c:	08a64863          	blt	a2,a0,a0001efc <__adddf3+0x45e>
a0001e70:	467d                	li	a2,31
a0001e72:	04a64f63          	blt	a2,a0,a0001ed0 <__adddf3+0x432>
a0001e76:	02000613          	li	a2,32
a0001e7a:	8e09                	sub	a2,a2,a0
a0001e7c:	00c695b3          	sll	a1,a3,a2
a0001e80:	00a858b3          	srl	a7,a6,a0
a0001e84:	00c81833          	sll	a6,a6,a2
a0001e88:	0115e5b3          	or	a1,a1,a7
a0001e8c:	01003833          	snez	a6,a6
a0001e90:	0105e833          	or	a6,a1,a6
a0001e94:	00a6d6b3          	srl	a3,a3,a0
a0001e98:	41078833          	sub	a6,a5,a6
a0001e9c:	40d706b3          	sub	a3,a4,a3
a0001ea0:	0107b7b3          	sltu	a5,a5,a6
a0001ea4:	8e9d                	sub	a3,a3,a5
a0001ea6:	8622                	mv	a2,s0
a0001ea8:	00800937          	lui	s2,0x800
a0001eac:	0126f7b3          	and	a5,a3,s2
a0001eb0:	d6078ae3          	beqz	a5,a0001c24 <__adddf3+0x186>
a0001eb4:	197d                	addi	s2,s2,-1
a0001eb6:	0126f933          	and	s2,a3,s2
a0001eba:	8a42                	mv	s4,a6
a0001ebc:	8432                	mv	s0,a2
a0001ebe:	a4b5                	j	a000212a <__adddf3+0x68c>
a0001ec0:	7ff00613          	li	a2,2047
a0001ec4:	c8c405e3          	beq	s0,a2,a0001b4e <__adddf3+0xb0>
a0001ec8:	00800637          	lui	a2,0x800
a0001ecc:	8ed1                	or	a3,a3,a2
a0001ece:	bf69                	j	a0001e68 <__adddf3+0x3ca>
a0001ed0:	fe050593          	addi	a1,a0,-32 # 7fffe0 <remain_wifi_ram+0x7dffe0>
a0001ed4:	02000893          	li	a7,32
a0001ed8:	00b6d5b3          	srl	a1,a3,a1
a0001edc:	4601                	li	a2,0
a0001ede:	01150763          	beq	a0,a7,a0001eec <__adddf3+0x44e>
a0001ee2:	04000613          	li	a2,64
a0001ee6:	8e09                	sub	a2,a2,a0
a0001ee8:	00c69633          	sll	a2,a3,a2
a0001eec:	01066833          	or	a6,a2,a6
a0001ef0:	01003833          	snez	a6,a6
a0001ef4:	0105e833          	or	a6,a1,a6
a0001ef8:	4681                	li	a3,0
a0001efa:	bf79                	j	a0001e98 <__adddf3+0x3fa>
a0001efc:	0106e833          	or	a6,a3,a6
a0001f00:	01003833          	snez	a6,a6
a0001f04:	bfd5                	j	a0001ef8 <__adddf3+0x45a>
a0001f06:	cd75                	beqz	a0,a0002002 <__adddf3+0x564>
a0001f08:	40858633          	sub	a2,a1,s0
a0001f0c:	e439                	bnez	s0,a0001f5a <__adddf3+0x4bc>
a0001f0e:	00f76533          	or	a0,a4,a5
a0001f12:	e509                	bnez	a0,a0001f1c <__adddf3+0x47e>
a0001f14:	7ff00793          	li	a5,2047
a0001f18:	849a                	mv	s1,t1
a0001f1a:	b319                	j	a0001c20 <__adddf3+0x182>
a0001f1c:	fff60893          	addi	a7,a2,-1 # 7fffff <remain_wifi_ram+0x7dffff>
a0001f20:	00089c63          	bnez	a7,a0001f38 <__adddf3+0x49a>
a0001f24:	40f807b3          	sub	a5,a6,a5
a0001f28:	00f83833          	sltu	a6,a6,a5
a0001f2c:	8e99                	sub	a3,a3,a4
a0001f2e:	410686b3          	sub	a3,a3,a6
a0001f32:	849a                	mv	s1,t1
a0001f34:	883e                	mv	a6,a5
a0001f36:	b71d                	j	a0001e5c <__adddf3+0x3be>
a0001f38:	7ff00513          	li	a0,2047
a0001f3c:	04a61663          	bne	a2,a0,a0001f88 <__adddf3+0x4ea>
a0001f40:	0106e7b3          	or	a5,a3,a6
a0001f44:	2e078e63          	beqz	a5,a0002240 <__adddf3+0x7a2>
a0001f48:	004007b7          	lui	a5,0x400
a0001f4c:	8ff5                	and	a5,a5,a3
a0001f4e:	8736                	mv	a4,a3
a0001f50:	2e079b63          	bnez	a5,a0002246 <__adddf3+0x7a8>
a0001f54:	87c2                	mv	a5,a6
a0001f56:	849a                	mv	s1,t1
a0001f58:	b6ed                	j	a0001b42 <__adddf3+0xa4>
a0001f5a:	7ff00513          	li	a0,2047
a0001f5e:	02a59163          	bne	a1,a0,a0001f80 <__adddf3+0x4e2>
a0001f62:	0106e7b3          	or	a5,a3,a6
a0001f66:	2e078363          	beqz	a5,a000224c <__adddf3+0x7ae>
a0001f6a:	004007b7          	lui	a5,0x400
a0001f6e:	8ff5                	and	a5,a5,a3
a0001f70:	8736                	mv	a4,a3
a0001f72:	2e079163          	bnez	a5,a0002254 <__adddf3+0x7b6>
a0001f76:	87c2                	mv	a5,a6
a0001f78:	7ff00613          	li	a2,2047
a0001f7c:	849a                	mv	s1,t1
a0001f7e:	b321                	j	a0001c86 <__adddf3+0x1e8>
a0001f80:	00800537          	lui	a0,0x800
a0001f84:	8f49                	or	a4,a4,a0
a0001f86:	88b2                	mv	a7,a2
a0001f88:	03800613          	li	a2,56
a0001f8c:	07164763          	blt	a2,a7,a0001ffa <__adddf3+0x55c>
a0001f90:	467d                	li	a2,31
a0001f92:	03164f63          	blt	a2,a7,a0001fd0 <__adddf3+0x532>
a0001f96:	02000513          	li	a0,32
a0001f9a:	41150533          	sub	a0,a0,a7
a0001f9e:	00a71633          	sll	a2,a4,a0
a0001fa2:	0117de33          	srl	t3,a5,a7
a0001fa6:	00a797b3          	sll	a5,a5,a0
a0001faa:	01c66633          	or	a2,a2,t3
a0001fae:	00f037b3          	snez	a5,a5
a0001fb2:	8fd1                	or	a5,a5,a2
a0001fb4:	01175733          	srl	a4,a4,a7
a0001fb8:	40f807b3          	sub	a5,a6,a5
a0001fbc:	40e68733          	sub	a4,a3,a4
a0001fc0:	00f836b3          	sltu	a3,a6,a5
a0001fc4:	40d706b3          	sub	a3,a4,a3
a0001fc8:	883e                	mv	a6,a5
a0001fca:	862e                	mv	a2,a1
a0001fcc:	849a                	mv	s1,t1
a0001fce:	bde9                	j	a0001ea8 <__adddf3+0x40a>
a0001fd0:	fe088613          	addi	a2,a7,-32
a0001fd4:	02000e13          	li	t3,32
a0001fd8:	00c75633          	srl	a2,a4,a2
a0001fdc:	4501                	li	a0,0
a0001fde:	01c88863          	beq	a7,t3,a0001fee <__adddf3+0x550>
a0001fe2:	04000513          	li	a0,64
a0001fe6:	41150533          	sub	a0,a0,a7
a0001fea:	00a71533          	sll	a0,a4,a0
a0001fee:	8fc9                	or	a5,a5,a0
a0001ff0:	00f037b3          	snez	a5,a5
a0001ff4:	8fd1                	or	a5,a5,a2
a0001ff6:	4701                	li	a4,0
a0001ff8:	b7c1                	j	a0001fb8 <__adddf3+0x51a>
a0001ffa:	8fd9                	or	a5,a5,a4
a0001ffc:	00f037b3          	snez	a5,a5
a0002000:	bfdd                	j	a0001ff6 <__adddf3+0x558>
a0002002:	00140613          	addi	a2,s0,1
a0002006:	7fe67613          	andi	a2,a2,2046
a000200a:	ea7d                	bnez	a2,a0002100 <__adddf3+0x662>
a000200c:	00f768b3          	or	a7,a4,a5
a0002010:	0106e533          	or	a0,a3,a6
a0002014:	e05d                	bnez	s0,a00020ba <__adddf3+0x61c>
a0002016:	06089263          	bnez	a7,a000207a <__adddf3+0x5dc>
a000201a:	1c051163          	bnez	a0,a00021dc <__adddf3+0x73e>
a000201e:	ffe98493          	addi	s1,s3,-2
a0002022:	0014b493          	seqz	s1,s1
a0002026:	4701                	li	a4,0
a0002028:	4781                	li	a5,0
a000202a:	00e7e6b3          	or	a3,a5,a4
a000202e:	24068063          	beqz	a3,a000226e <__adddf3+0x7d0>
a0002032:	01f7d693          	srli	a3,a5,0x1f
a0002036:	00171413          	slli	s0,a4,0x1
a000203a:	9436                	add	s0,s0,a3
a000203c:	00179693          	slli	a3,a5,0x1
a0002040:	0076f613          	andi	a2,a3,7
a0002044:	4581                	li	a1,0
a0002046:	c605                	beqz	a2,a000206e <__adddf3+0x5d0>
a0002048:	4609                	li	a2,2
a000204a:	1ac98963          	beq	s3,a2,a00021fc <__adddf3+0x75e>
a000204e:	460d                	li	a2,3
a0002050:	18c98c63          	beq	s3,a2,a00021e8 <__adddf3+0x74a>
a0002054:	4585                	li	a1,1
a0002056:	00099c63          	bnez	s3,a000206e <__adddf3+0x5d0>
a000205a:	00f6f613          	andi	a2,a3,15
a000205e:	4511                	li	a0,4
a0002060:	00a60763          	beq	a2,a0,a000206e <__adddf3+0x5d0>
a0002064:	ffc6b693          	sltiu	a3,a3,-4
a0002068:	0016c693          	xori	a3,a3,1
a000206c:	9436                	add	s0,s0,a3
a000206e:	8061                	srli	s0,s0,0x18
a0002070:	00144413          	xori	s0,s0,1
a0002074:	8805                	andi	s0,s0,1
a0002076:	4601                	li	a2,0
a0002078:	b1e9                	j	a0001d42 <__adddf3+0x2a4>
a000207a:	d945                	beqz	a0,a000202a <__adddf3+0x58c>
a000207c:	410785b3          	sub	a1,a5,a6
a0002080:	00b7b533          	sltu	a0,a5,a1
a0002084:	40d70633          	sub	a2,a4,a3
a0002088:	8e09                	sub	a2,a2,a0
a000208a:	00800537          	lui	a0,0x800
a000208e:	8d71                	and	a0,a0,a2
a0002090:	c919                	beqz	a0,a00020a6 <__adddf3+0x608>
a0002092:	40f807b3          	sub	a5,a6,a5
a0002096:	40e68733          	sub	a4,a3,a4
a000209a:	00f83833          	sltu	a6,a6,a5
a000209e:	41070733          	sub	a4,a4,a6
a00020a2:	849a                	mv	s1,t1
a00020a4:	b759                	j	a000202a <__adddf3+0x58c>
a00020a6:	00c5e7b3          	or	a5,a1,a2
a00020aa:	12079c63          	bnez	a5,a00021e2 <__adddf3+0x744>
a00020ae:	ffe98493          	addi	s1,s3,-2
a00020b2:	0014b493          	seqz	s1,s1
a00020b6:	4701                	li	a4,0
a00020b8:	bf8d                	j	a000202a <__adddf3+0x58c>
a00020ba:	7ff00613          	li	a2,2047
a00020be:	00c41e63          	bne	s0,a2,a00020da <__adddf3+0x63c>
a00020c2:	26088763          	beqz	a7,a0002330 <__adddf3+0x892>
a00020c6:	00400637          	lui	a2,0x400
a00020ca:	8e79                	and	a2,a2,a4
a00020cc:	00163613          	seqz	a2,a2
a00020d0:	0612                	slli	a2,a2,0x4
a00020d2:	26859363          	bne	a1,s0,a0002338 <__adddf3+0x89a>
a00020d6:	85b2                	mv	a1,a2
a00020d8:	a021                	j	a00020e0 <__adddf3+0x642>
a00020da:	02c59163          	bne	a1,a2,a00020fc <__adddf3+0x65e>
a00020de:	4581                	li	a1,0
a00020e0:	c511                	beqz	a0,a00020ec <__adddf3+0x64e>
a00020e2:	00400637          	lui	a2,0x400
a00020e6:	8e75                	and	a2,a2,a3
a00020e8:	e211                	bnez	a2,a00020ec <__adddf3+0x64e>
a00020ea:	45c1                	li	a1,16
a00020ec:	24089763          	bnez	a7,a000233a <__adddf3+0x89c>
a00020f0:	16050763          	beqz	a0,a000225e <__adddf3+0x7c0>
a00020f4:	8736                	mv	a4,a3
a00020f6:	87c2                	mv	a5,a6
a00020f8:	849a                	mv	s1,t1
a00020fa:	b959                	j	a0001d90 <__adddf3+0x2f2>
a00020fc:	4581                	li	a1,0
a00020fe:	b7fd                	j	a00020ec <__adddf3+0x64e>
a0002100:	41078a33          	sub	s4,a5,a6
a0002104:	0147b633          	sltu	a2,a5,s4
a0002108:	40d70933          	sub	s2,a4,a3
a000210c:	40c90933          	sub	s2,s2,a2
a0002110:	00800637          	lui	a2,0x800
a0002114:	00c97633          	and	a2,s2,a2
a0002118:	c62d                	beqz	a2,a0002182 <__adddf3+0x6e4>
a000211a:	40f80a33          	sub	s4,a6,a5
a000211e:	8e99                	sub	a3,a3,a4
a0002120:	01483833          	sltu	a6,a6,s4
a0002124:	41068933          	sub	s2,a3,a6
a0002128:	849a                	mv	s1,t1
a000212a:	06090063          	beqz	s2,a000218a <__adddf3+0x6ec>
a000212e:	854a                	mv	a0,s2
a0002130:	4d9010ef          	jal	ra,a0003e08 <__clzsi2>
a0002134:	ff850613          	addi	a2,a0,-8 # 7ffff8 <remain_wifi_ram+0x7dfff8>
a0002138:	47fd                	li	a5,31
a000213a:	04c7ce63          	blt	a5,a2,a0002196 <__adddf3+0x6f8>
a000213e:	02000693          	li	a3,32
a0002142:	8e91                	sub	a3,a3,a2
a0002144:	00c91733          	sll	a4,s2,a2
a0002148:	00da56b3          	srl	a3,s4,a3
a000214c:	8ed9                	or	a3,a3,a4
a000214e:	00ca1833          	sll	a6,s4,a2
a0002152:	06864b63          	blt	a2,s0,a00021c8 <__adddf3+0x72a>
a0002156:	8e01                	sub	a2,a2,s0
a0002158:	00160713          	addi	a4,a2,1 # 800001 <remain_wifi_ram+0x7e0001>
a000215c:	47fd                	li	a5,31
a000215e:	04e7c263          	blt	a5,a4,a00021a2 <__adddf3+0x704>
a0002162:	02000613          	li	a2,32
a0002166:	8e19                	sub	a2,a2,a4
a0002168:	00c697b3          	sll	a5,a3,a2
a000216c:	00e85533          	srl	a0,a6,a4
a0002170:	00c81633          	sll	a2,a6,a2
a0002174:	8fc9                	or	a5,a5,a0
a0002176:	00c03633          	snez	a2,a2
a000217a:	8fd1                	or	a5,a5,a2
a000217c:	00e6d733          	srl	a4,a3,a4
a0002180:	b56d                	j	a000202a <__adddf3+0x58c>
a0002182:	012a67b3          	or	a5,s4,s2
a0002186:	f3d5                	bnez	a5,a000212a <__adddf3+0x68c>
a0002188:	b71d                	j	a00020ae <__adddf3+0x610>
a000218a:	8552                	mv	a0,s4
a000218c:	47d010ef          	jal	ra,a0003e08 <__clzsi2>
a0002190:	02050513          	addi	a0,a0,32
a0002194:	b745                	j	a0002134 <__adddf3+0x696>
a0002196:	fd850693          	addi	a3,a0,-40
a000219a:	00da16b3          	sll	a3,s4,a3
a000219e:	4801                	li	a6,0
a00021a0:	bf4d                	j	a0002152 <__adddf3+0x6b4>
a00021a2:	1605                	addi	a2,a2,-31
a00021a4:	02000593          	li	a1,32
a00021a8:	00c6d633          	srl	a2,a3,a2
a00021ac:	4781                	li	a5,0
a00021ae:	00b70763          	beq	a4,a1,a00021bc <__adddf3+0x71e>
a00021b2:	04000793          	li	a5,64
a00021b6:	8f99                	sub	a5,a5,a4
a00021b8:	00f697b3          	sll	a5,a3,a5
a00021bc:	00f867b3          	or	a5,a6,a5
a00021c0:	00f037b3          	snez	a5,a5
a00021c4:	8fd1                	or	a5,a5,a2
a00021c6:	bdc5                	j	a00020b6 <__adddf3+0x618>
a00021c8:	ff8007b7          	lui	a5,0xff800
a00021cc:	17fd                	addi	a5,a5,-1
a00021ce:	40c40633          	sub	a2,s0,a2
a00021d2:	8efd                	and	a3,a3,a5
a00021d4:	bc81                	j	a0001c24 <__adddf3+0x186>
a00021d6:	8736                	mv	a4,a3
a00021d8:	87c2                	mv	a5,a6
a00021da:	bd81                	j	a000202a <__adddf3+0x58c>
a00021dc:	8736                	mv	a4,a3
a00021de:	87c2                	mv	a5,a6
a00021e0:	b5c9                	j	a00020a2 <__adddf3+0x604>
a00021e2:	8732                	mv	a4,a2
a00021e4:	87ae                	mv	a5,a1
a00021e6:	b591                	j	a000202a <__adddf3+0x58c>
a00021e8:	85a6                	mv	a1,s1
a00021ea:	e80492e3          	bnez	s1,a000206e <__adddf3+0x5d0>
a00021ee:	ff86b693          	sltiu	a3,a3,-8
a00021f2:	0016c693          	xori	a3,a3,1
a00021f6:	9436                	add	s0,s0,a3
a00021f8:	4585                	li	a1,1
a00021fa:	bd95                	j	a000206e <__adddf3+0x5d0>
a00021fc:	4585                	li	a1,1
a00021fe:	e60488e3          	beqz	s1,a000206e <__adddf3+0x5d0>
a0002202:	ff86b693          	sltiu	a3,a3,-8
a0002206:	0016c693          	xori	a3,a3,1
a000220a:	9436                	add	s0,s0,a3
a000220c:	85a6                	mv	a1,s1
a000220e:	b585                	j	a000206e <__adddf3+0x5d0>
a0002210:	4701                	li	a4,0
a0002212:	7ff00613          	li	a2,2047
a0002216:	4581                	li	a1,0
a0002218:	a06d                	j	a00022c2 <__adddf3+0x824>
a000221a:	87c2                	mv	a5,a6
a000221c:	b291                	j	a0001b60 <__adddf3+0xc2>
a000221e:	577d                	li	a4,-1
a0002220:	57fd                	li	a5,-1
a0002222:	7fe00613          	li	a2,2046
a0002226:	4401                	li	s0,0
a0002228:	b6d1                	j	a0001dec <__adddf3+0x34e>
a000222a:	4701                	li	a4,0
a000222c:	4781                	li	a5,0
a000222e:	a851                	j	a00022c2 <__adddf3+0x824>
a0002230:	4701                	li	a4,0
a0002232:	4781                	li	a5,0
a0002234:	bff9                	j	a0002212 <__adddf3+0x774>
a0002236:	4701                	li	a4,0
a0002238:	bff9                	j	a0002216 <__adddf3+0x778>
a000223a:	87c2                	mv	a5,a6
a000223c:	4581                	li	a1,0
a000223e:	b611                	j	a0001d42 <__adddf3+0x2a4>
a0002240:	4701                	li	a4,0
a0002242:	849a                	mv	s1,t1
a0002244:	bfc9                	j	a0002216 <__adddf3+0x778>
a0002246:	87c2                	mv	a5,a6
a0002248:	849a                	mv	s1,t1
a000224a:	bfcd                	j	a000223c <__adddf3+0x79e>
a000224c:	4701                	li	a4,0
a000224e:	7ff00613          	li	a2,2047
a0002252:	bfc5                	j	a0002242 <__adddf3+0x7a4>
a0002254:	87c2                	mv	a5,a6
a0002256:	7ff00613          	li	a2,2047
a000225a:	849a                	mv	s1,t1
a000225c:	b6a5                	j	a0001dc4 <__adddf3+0x326>
a000225e:	4781                	li	a5,0
a0002260:	4481                	li	s1,0
a0002262:	00400737          	lui	a4,0x400
a0002266:	7ff00613          	li	a2,2047
a000226a:	45c1                	li	a1,16
a000226c:	a899                	j	a00022c2 <__adddf3+0x824>
a000226e:	4701                	li	a4,0
a0002270:	4781                	li	a5,0
a0002272:	4601                	li	a2,0
a0002274:	b74d                	j	a0002216 <__adddf3+0x778>
a0002276:	e489                	bnez	s1,a0002280 <__adddf3+0x7e2>
a0002278:	00878693          	addi	a3,a5,8 # ff800008 <__psram_limit+0x57400008>
a000227c:	be51                	j	a0001e10 <__adddf3+0x372>
a000227e:	fced                	bnez	s1,a0002278 <__adddf3+0x7da>
a0002280:	ac041ae3          	bnez	s0,a0001d54 <__adddf3+0x2b6>
a0002284:	a83d                	j	a00022c2 <__adddf3+0x824>
a0002286:	4781                	li	a5,0
a0002288:	00098e63          	beqz	s3,a00022a4 <__adddf3+0x806>
a000228c:	470d                	li	a4,3
a000228e:	00e99763          	bne	s3,a4,a000229c <__adddf3+0x7fe>
a0002292:	c889                	beqz	s1,a00022a4 <__adddf3+0x806>
a0002294:	57fd                	li	a5,-1
a0002296:	7fe00613          	li	a2,2046
a000229a:	a029                	j	a00022a4 <__adddf3+0x806>
a000229c:	4709                	li	a4,2
a000229e:	fee99be3          	bne	s3,a4,a0002294 <__adddf3+0x7f6>
a00022a2:	d8ed                	beqz	s1,a0002294 <__adddf3+0x7f6>
a00022a4:	0055e593          	ori	a1,a1,5
a00022a8:	873e                	mv	a4,a5
a00022aa:	a80d                	j	a00022dc <__adddf3+0x83e>
a00022ac:	85b2                	mv	a1,a2
a00022ae:	0106e6b3          	or	a3,a3,a6
a00022b2:	ac068fe3          	beqz	a3,a0001d90 <__adddf3+0x2f2>
a00022b6:	4481                	li	s1,0
a00022b8:	00400737          	lui	a4,0x400
a00022bc:	4781                	li	a5,0
a00022be:	7ff00613          	li	a2,2047
a00022c2:	008006b7          	lui	a3,0x800
a00022c6:	8ef9                	and	a3,a3,a4
a00022c8:	ca91                	beqz	a3,a00022dc <__adddf3+0x83e>
a00022ca:	0605                	addi	a2,a2,1
a00022cc:	7ff00693          	li	a3,2047
a00022d0:	fad60be3          	beq	a2,a3,a0002286 <__adddf3+0x7e8>
a00022d4:	ff8006b7          	lui	a3,0xff800
a00022d8:	16fd                	addi	a3,a3,-1
a00022da:	8f75                	and	a4,a4,a3
a00022dc:	0037d513          	srli	a0,a5,0x3
a00022e0:	7ff00693          	li	a3,2047
a00022e4:	01d71793          	slli	a5,a4,0x1d
a00022e8:	8fc9                	or	a5,a5,a0
a00022ea:	830d                	srli	a4,a4,0x3
a00022ec:	00d61963          	bne	a2,a3,a00022fe <__adddf3+0x860>
a00022f0:	8fd9                	or	a5,a5,a4
a00022f2:	4701                	li	a4,0
a00022f4:	c789                	beqz	a5,a00022fe <__adddf3+0x860>
a00022f6:	00080737          	lui	a4,0x80
a00022fa:	4781                	li	a5,0
a00022fc:	4481                	li	s1,0
a00022fe:	7ff006b7          	lui	a3,0x7ff00
a0002302:	0652                	slli	a2,a2,0x14
a0002304:	0732                	slli	a4,a4,0xc
a0002306:	8e75                	and	a2,a2,a3
a0002308:	8331                	srli	a4,a4,0xc
a000230a:	8f51                	or	a4,a4,a2
a000230c:	04fe                	slli	s1,s1,0x1f
a000230e:	009766b3          	or	a3,a4,s1
a0002312:	873e                	mv	a4,a5
a0002314:	87b6                	mv	a5,a3
a0002316:	c199                	beqz	a1,a000231c <__adddf3+0x87e>
a0002318:	0015a073          	csrs	fflags,a1
a000231c:	40f2                	lw	ra,28(sp)
a000231e:	4462                	lw	s0,24(sp)
a0002320:	44d2                	lw	s1,20(sp)
a0002322:	4942                	lw	s2,16(sp)
a0002324:	49b2                	lw	s3,12(sp)
a0002326:	4a22                	lw	s4,8(sp)
a0002328:	853a                	mv	a0,a4
a000232a:	85be                	mv	a1,a5
a000232c:	6105                	addi	sp,sp,32
a000232e:	8082                	ret
a0002330:	da8587e3          	beq	a1,s0,a00020de <__adddf3+0x640>
a0002334:	4581                	li	a1,0
a0002336:	bb6d                	j	a00020f0 <__adddf3+0x652>
a0002338:	85b2                	mv	a1,a2
a000233a:	a4050be3          	beqz	a0,a0001d90 <__adddf3+0x2f2>
a000233e:	bfa5                	j	a00022b6 <__adddf3+0x818>
a0002340:	a4858ee3          	beq	a1,s0,a0001d9c <__adddf3+0x2fe>
a0002344:	4581                	li	a1,0
a0002346:	b499                	j	a0001d8c <__adddf3+0x2ee>

a0002348 <__divdf3>:
a0002348:	7179                	addi	sp,sp,-48
a000234a:	d422                	sw	s0,40(sp)
a000234c:	ca56                	sw	s5,20(sp)
a000234e:	c266                	sw	s9,4(sp)
a0002350:	d606                	sw	ra,44(sp)
a0002352:	d226                	sw	s1,36(sp)
a0002354:	d04a                	sw	s2,32(sp)
a0002356:	ce4e                	sw	s3,28(sp)
a0002358:	cc52                	sw	s4,24(sp)
a000235a:	c85a                	sw	s6,16(sp)
a000235c:	c65e                	sw	s7,12(sp)
a000235e:	c462                	sw	s8,8(sp)
a0002360:	842a                	mv	s0,a0
a0002362:	8cb2                	mv	s9,a2
a0002364:	8ab6                	mv	s5,a3
a0002366:	00202973          	frrm	s2
a000236a:	0145db13          	srli	s6,a1,0x14
a000236e:	00c59b93          	slli	s7,a1,0xc
a0002372:	7ffb7b13          	andi	s6,s6,2047
a0002376:	00cbdb93          	srli	s7,s7,0xc
a000237a:	01f5da13          	srli	s4,a1,0x1f
a000237e:	020b0663          	beqz	s6,a00023aa <__divdf3+0x62>
a0002382:	7ff00793          	li	a5,2047
a0002386:	06fb0b63          	beq	s6,a5,a00023fc <__divdf3+0xb4>
a000238a:	01d55713          	srli	a4,a0,0x1d
a000238e:	0b8e                	slli	s7,s7,0x3
a0002390:	01776bb3          	or	s7,a4,s7
a0002394:	008007b7          	lui	a5,0x800
a0002398:	00fbebb3          	or	s7,s7,a5
a000239c:	00351993          	slli	s3,a0,0x3
a00023a0:	c01b0b13          	addi	s6,s6,-1023
a00023a4:	4c01                	li	s8,0
a00023a6:	4481                	li	s1,0
a00023a8:	a0bd                	j	a0002416 <__divdf3+0xce>
a00023aa:	00abe7b3          	or	a5,s7,a0
a00023ae:	c7e1                	beqz	a5,a0002476 <__divdf3+0x12e>
a00023b0:	020b8b63          	beqz	s7,a00023e6 <__divdf3+0x9e>
a00023b4:	855e                	mv	a0,s7
a00023b6:	253010ef          	jal	ra,a0003e08 <__clzsi2>
a00023ba:	ff550713          	addi	a4,a0,-11
a00023be:	47f1                	li	a5,28
a00023c0:	02e7c863          	blt	a5,a4,a00023f0 <__divdf3+0xa8>
a00023c4:	46f5                	li	a3,29
a00023c6:	ff850993          	addi	s3,a0,-8
a00023ca:	8e99                	sub	a3,a3,a4
a00023cc:	013b9bb3          	sll	s7,s7,s3
a00023d0:	00d456b3          	srl	a3,s0,a3
a00023d4:	0176ebb3          	or	s7,a3,s7
a00023d8:	013419b3          	sll	s3,s0,s3
a00023dc:	c0d00593          	li	a1,-1011
a00023e0:	40a58b33          	sub	s6,a1,a0
a00023e4:	b7c1                	j	a00023a4 <__divdf3+0x5c>
a00023e6:	223010ef          	jal	ra,a0003e08 <__clzsi2>
a00023ea:	02050513          	addi	a0,a0,32
a00023ee:	b7f1                	j	a00023ba <__divdf3+0x72>
a00023f0:	fd850b93          	addi	s7,a0,-40
a00023f4:	01741bb3          	sll	s7,s0,s7
a00023f8:	4981                	li	s3,0
a00023fa:	b7cd                	j	a00023dc <__divdf3+0x94>
a00023fc:	00abe433          	or	s0,s7,a0
a0002400:	c041                	beqz	s0,a0002480 <__divdf3+0x138>
a0002402:	000807b7          	lui	a5,0x80
a0002406:	00fbf7b3          	and	a5,s7,a5
a000240a:	89aa                	mv	s3,a0
a000240c:	7ff00b13          	li	s6,2047
a0002410:	4c0d                	li	s8,3
a0002412:	44c1                	li	s1,16
a0002414:	fbc9                	bnez	a5,a00023a6 <__divdf3+0x5e>
a0002416:	00ca9513          	slli	a0,s5,0xc
a000241a:	00c55413          	srli	s0,a0,0xc
a000241e:	014ad513          	srli	a0,s5,0x14
a0002422:	7ff57593          	andi	a1,a0,2047
a0002426:	87e6                	mv	a5,s9
a0002428:	01fada93          	srli	s5,s5,0x1f
a000242c:	c1a5                	beqz	a1,a000248c <__divdf3+0x144>
a000242e:	7ff00713          	li	a4,2047
a0002432:	0ae58763          	beq	a1,a4,a00024e0 <__divdf3+0x198>
a0002436:	01dcd793          	srli	a5,s9,0x1d
a000243a:	00341513          	slli	a0,s0,0x3
a000243e:	8d5d                	or	a0,a0,a5
a0002440:	00800437          	lui	s0,0x800
a0002444:	8c49                	or	s0,s0,a0
a0002446:	003c9793          	slli	a5,s9,0x3
a000244a:	c0158513          	addi	a0,a1,-1023
a000244e:	4701                	li	a4,0
a0002450:	002c1693          	slli	a3,s8,0x2
a0002454:	8ed9                	or	a3,a3,a4
a0002456:	40ab05b3          	sub	a1,s6,a0
a000245a:	16fd                	addi	a3,a3,-1
a000245c:	4539                	li	a0,14
a000245e:	015a4633          	xor	a2,s4,s5
a0002462:	0ad56863          	bltu	a0,a3,a0002512 <__divdf3+0x1ca>
a0002466:	a0008537          	lui	a0,0xa0008
a000246a:	068a                	slli	a3,a3,0x2
a000246c:	4b050513          	addi	a0,a0,1200 # a00084b0 <__psram_limit+0xf7c084b0>
a0002470:	96aa                	add	a3,a3,a0
a0002472:	4294                	lw	a3,0(a3)
a0002474:	8682                	jr	a3
a0002476:	4b81                	li	s7,0
a0002478:	4981                	li	s3,0
a000247a:	4b01                	li	s6,0
a000247c:	4c05                	li	s8,1
a000247e:	b725                	j	a00023a6 <__divdf3+0x5e>
a0002480:	4b81                	li	s7,0
a0002482:	4981                	li	s3,0
a0002484:	7ff00b13          	li	s6,2047
a0002488:	4c09                	li	s8,2
a000248a:	bf31                	j	a00023a6 <__divdf3+0x5e>
a000248c:	019467b3          	or	a5,s0,s9
a0002490:	c7a5                	beqz	a5,a00024f8 <__divdf3+0x1b0>
a0002492:	c81d                	beqz	s0,a00024c8 <__divdf3+0x180>
a0002494:	8522                	mv	a0,s0
a0002496:	173010ef          	jal	ra,a0003e08 <__clzsi2>
a000249a:	85aa                	mv	a1,a0
a000249c:	ff558693          	addi	a3,a1,-11
a00024a0:	47f1                	li	a5,28
a00024a2:	02d7c963          	blt	a5,a3,a00024d4 <__divdf3+0x18c>
a00024a6:	4775                	li	a4,29
a00024a8:	ff858793          	addi	a5,a1,-8
a00024ac:	8f15                	sub	a4,a4,a3
a00024ae:	00f41533          	sll	a0,s0,a5
a00024b2:	00ecd733          	srl	a4,s9,a4
a00024b6:	00a76433          	or	s0,a4,a0
a00024ba:	00fc97b3          	sll	a5,s9,a5
a00024be:	c0d00713          	li	a4,-1011
a00024c2:	40b70533          	sub	a0,a4,a1
a00024c6:	b761                	j	a000244e <__divdf3+0x106>
a00024c8:	8566                	mv	a0,s9
a00024ca:	13f010ef          	jal	ra,a0003e08 <__clzsi2>
a00024ce:	02050593          	addi	a1,a0,32
a00024d2:	b7e9                	j	a000249c <__divdf3+0x154>
a00024d4:	fd858513          	addi	a0,a1,-40
a00024d8:	00ac9433          	sll	s0,s9,a0
a00024dc:	4781                	li	a5,0
a00024de:	b7c5                	j	a00024be <__divdf3+0x176>
a00024e0:	01946633          	or	a2,s0,s9
a00024e4:	ce19                	beqz	a2,a0002502 <__divdf3+0x1ba>
a00024e6:	00080737          	lui	a4,0x80
a00024ea:	8f61                	and	a4,a4,s0
a00024ec:	7ff00513          	li	a0,2047
a00024f0:	ef19                	bnez	a4,a000250e <__divdf3+0x1c6>
a00024f2:	470d                	li	a4,3
a00024f4:	44c1                	li	s1,16
a00024f6:	bfa9                	j	a0002450 <__divdf3+0x108>
a00024f8:	4401                	li	s0,0
a00024fa:	4781                	li	a5,0
a00024fc:	4501                	li	a0,0
a00024fe:	4705                	li	a4,1
a0002500:	bf81                	j	a0002450 <__divdf3+0x108>
a0002502:	4401                	li	s0,0
a0002504:	4781                	li	a5,0
a0002506:	7ff00513          	li	a0,2047
a000250a:	4709                	li	a4,2
a000250c:	b791                	j	a0002450 <__divdf3+0x108>
a000250e:	470d                	li	a4,3
a0002510:	b781                	j	a0002450 <__divdf3+0x108>
a0002512:	01746663          	bltu	s0,s7,a000251e <__divdf3+0x1d6>
a0002516:	268b9463          	bne	s7,s0,a000277e <__divdf3+0x436>
a000251a:	26f9e263          	bltu	s3,a5,a000277e <__divdf3+0x436>
a000251e:	01fb9513          	slli	a0,s7,0x1f
a0002522:	0019d713          	srli	a4,s3,0x1
a0002526:	01f99693          	slli	a3,s3,0x1f
a000252a:	001bdb93          	srli	s7,s7,0x1
a000252e:	00e569b3          	or	s3,a0,a4
a0002532:	00841513          	slli	a0,s0,0x8
a0002536:	0187d813          	srli	a6,a5,0x18
a000253a:	00a86833          	or	a6,a6,a0
a000253e:	8141                	srli	a0,a0,0x10
a0002540:	02abde33          	divu	t3,s7,a0
a0002544:	01081f13          	slli	t5,a6,0x10
a0002548:	010f5f13          	srli	t5,t5,0x10
a000254c:	00879893          	slli	a7,a5,0x8
a0002550:	0109d793          	srli	a5,s3,0x10
a0002554:	02abfbb3          	remu	s7,s7,a0
a0002558:	8372                	mv	t1,t3
a000255a:	03cf0733          	mul	a4,t5,t3
a000255e:	0bc2                	slli	s7,s7,0x10
a0002560:	0177e7b3          	or	a5,a5,s7
a0002564:	00e7fc63          	bgeu	a5,a4,a000257c <__divdf3+0x234>
a0002568:	97c2                	add	a5,a5,a6
a000256a:	fffe0313          	addi	t1,t3,-1
a000256e:	0107e763          	bltu	a5,a6,a000257c <__divdf3+0x234>
a0002572:	00e7f563          	bgeu	a5,a4,a000257c <__divdf3+0x234>
a0002576:	ffee0313          	addi	t1,t3,-2
a000257a:	97c2                	add	a5,a5,a6
a000257c:	8f99                	sub	a5,a5,a4
a000257e:	02a7deb3          	divu	t4,a5,a0
a0002582:	01099713          	slli	a4,s3,0x10
a0002586:	8341                	srli	a4,a4,0x10
a0002588:	02a7f7b3          	remu	a5,a5,a0
a000258c:	89f6                	mv	s3,t4
a000258e:	03df0e33          	mul	t3,t5,t4
a0002592:	07c2                	slli	a5,a5,0x10
a0002594:	8f5d                	or	a4,a4,a5
a0002596:	01c77c63          	bgeu	a4,t3,a00025ae <__divdf3+0x266>
a000259a:	9742                	add	a4,a4,a6
a000259c:	fffe8993          	addi	s3,t4,-1
a00025a0:	01076763          	bltu	a4,a6,a00025ae <__divdf3+0x266>
a00025a4:	01c77563          	bgeu	a4,t3,a00025ae <__divdf3+0x266>
a00025a8:	ffee8993          	addi	s3,t4,-2
a00025ac:	9742                	add	a4,a4,a6
a00025ae:	0342                	slli	t1,t1,0x10
a00025b0:	013369b3          	or	s3,t1,s3
a00025b4:	6341                	lui	t1,0x10
a00025b6:	fff30e93          	addi	t4,t1,-1 # ffff <wifi_ram_max_size+0x7fff>
a00025ba:	0109d293          	srli	t0,s3,0x10
a00025be:	0108df93          	srli	t6,a7,0x10
a00025c2:	41c70733          	sub	a4,a4,t3
a00025c6:	01d9fe33          	and	t3,s3,t4
a00025ca:	01d8feb3          	and	t4,a7,t4
a00025ce:	03de07b3          	mul	a5,t3,t4
a00025d2:	03d28433          	mul	s0,t0,t4
a00025d6:	03cf8e33          	mul	t3,t6,t3
a00025da:	008e03b3          	add	t2,t3,s0
a00025de:	0107de13          	srli	t3,a5,0x10
a00025e2:	9e1e                	add	t3,t3,t2
a00025e4:	03f282b3          	mul	t0,t0,t6
a00025e8:	008e7363          	bgeu	t3,s0,a00025ee <__divdf3+0x2a6>
a00025ec:	929a                	add	t0,t0,t1
a00025ee:	63c1                	lui	t2,0x10
a00025f0:	010e5313          	srli	t1,t3,0x10
a00025f4:	13fd                	addi	t2,t2,-1
a00025f6:	929a                	add	t0,t0,t1
a00025f8:	007e7333          	and	t1,t3,t2
a00025fc:	0342                	slli	t1,t1,0x10
a00025fe:	0077f7b3          	and	a5,a5,t2
a0002602:	933e                	add	t1,t1,a5
a0002604:	00576763          	bltu	a4,t0,a0002612 <__divdf3+0x2ca>
a0002608:	844e                	mv	s0,s3
a000260a:	02571e63          	bne	a4,t0,a0002646 <__divdf3+0x2fe>
a000260e:	0266fc63          	bgeu	a3,t1,a0002646 <__divdf3+0x2fe>
a0002612:	96c6                	add	a3,a3,a7
a0002614:	0116b7b3          	sltu	a5,a3,a7
a0002618:	97c2                	add	a5,a5,a6
a000261a:	973e                	add	a4,a4,a5
a000261c:	fff98413          	addi	s0,s3,-1
a0002620:	00e86663          	bltu	a6,a4,a000262c <__divdf3+0x2e4>
a0002624:	02e81163          	bne	a6,a4,a0002646 <__divdf3+0x2fe>
a0002628:	0116ef63          	bltu	a3,a7,a0002646 <__divdf3+0x2fe>
a000262c:	00576663          	bltu	a4,t0,a0002638 <__divdf3+0x2f0>
a0002630:	00e29b63          	bne	t0,a4,a0002646 <__divdf3+0x2fe>
a0002634:	0066f963          	bgeu	a3,t1,a0002646 <__divdf3+0x2fe>
a0002638:	96c6                	add	a3,a3,a7
a000263a:	0116b7b3          	sltu	a5,a3,a7
a000263e:	97c2                	add	a5,a5,a6
a0002640:	ffe98413          	addi	s0,s3,-2
a0002644:	973e                	add	a4,a4,a5
a0002646:	40668333          	sub	t1,a3,t1
a000264a:	40570733          	sub	a4,a4,t0
a000264e:	0066b6b3          	sltu	a3,a3,t1
a0002652:	8f15                	sub	a4,a4,a3
a0002654:	57fd                	li	a5,-1
a0002656:	0ee80763          	beq	a6,a4,a0002744 <__divdf3+0x3fc>
a000265a:	02a752b3          	divu	t0,a4,a0
a000265e:	01035793          	srli	a5,t1,0x10
a0002662:	02a77733          	remu	a4,a4,a0
a0002666:	8696                	mv	a3,t0
a0002668:	025f0e33          	mul	t3,t5,t0
a000266c:	0742                	slli	a4,a4,0x10
a000266e:	8f5d                	or	a4,a4,a5
a0002670:	01c77c63          	bgeu	a4,t3,a0002688 <__divdf3+0x340>
a0002674:	9742                	add	a4,a4,a6
a0002676:	fff28693          	addi	a3,t0,-1
a000267a:	01076763          	bltu	a4,a6,a0002688 <__divdf3+0x340>
a000267e:	01c77563          	bgeu	a4,t3,a0002688 <__divdf3+0x340>
a0002682:	ffe28693          	addi	a3,t0,-2
a0002686:	9742                	add	a4,a4,a6
a0002688:	41c70733          	sub	a4,a4,t3
a000268c:	02a75e33          	divu	t3,a4,a0
a0002690:	01031793          	slli	a5,t1,0x10
a0002694:	83c1                	srli	a5,a5,0x10
a0002696:	02a77733          	remu	a4,a4,a0
a000269a:	03cf0f33          	mul	t5,t5,t3
a000269e:	0742                	slli	a4,a4,0x10
a00026a0:	8f5d                	or	a4,a4,a5
a00026a2:	87f2                	mv	a5,t3
a00026a4:	01e77c63          	bgeu	a4,t5,a00026bc <__divdf3+0x374>
a00026a8:	9742                	add	a4,a4,a6
a00026aa:	fffe0793          	addi	a5,t3,-1
a00026ae:	01076763          	bltu	a4,a6,a00026bc <__divdf3+0x374>
a00026b2:	01e77563          	bgeu	a4,t5,a00026bc <__divdf3+0x374>
a00026b6:	ffee0793          	addi	a5,t3,-2
a00026ba:	9742                	add	a4,a4,a6
a00026bc:	06c2                	slli	a3,a3,0x10
a00026be:	8edd                	or	a3,a3,a5
a00026c0:	01069793          	slli	a5,a3,0x10
a00026c4:	83c1                	srli	a5,a5,0x10
a00026c6:	0106d313          	srli	t1,a3,0x10
a00026ca:	026f8e33          	mul	t3,t6,t1
a00026ce:	41e70733          	sub	a4,a4,t5
a00026d2:	02ff8fb3          	mul	t6,t6,a5
a00026d6:	02fe8f33          	mul	t5,t4,a5
a00026da:	03d30eb3          	mul	t4,t1,t4
a00026de:	010f5793          	srli	a5,t5,0x10
a00026e2:	9ff6                	add	t6,t6,t4
a00026e4:	97fe                	add	a5,a5,t6
a00026e6:	01d7f463          	bgeu	a5,t4,a00026ee <__divdf3+0x3a6>
a00026ea:	6541                	lui	a0,0x10
a00026ec:	9e2a                	add	t3,t3,a0
a00026ee:	0107d313          	srli	t1,a5,0x10
a00026f2:	9372                	add	t1,t1,t3
a00026f4:	6e41                	lui	t3,0x10
a00026f6:	1e7d                	addi	t3,t3,-1
a00026f8:	01c7f533          	and	a0,a5,t3
a00026fc:	0542                	slli	a0,a0,0x10
a00026fe:	01cf7f33          	and	t5,t5,t3
a0002702:	957a                	add	a0,a0,t5
a0002704:	00676663          	bltu	a4,t1,a0002710 <__divdf3+0x3c8>
a0002708:	2c671263          	bne	a4,t1,a00029cc <__divdf3+0x684>
a000270c:	87b6                	mv	a5,a3
a000270e:	c91d                	beqz	a0,a0002744 <__divdf3+0x3fc>
a0002710:	9742                	add	a4,a4,a6
a0002712:	fff68793          	addi	a5,a3,-1 # 7fefffff <__HeapLimit+0x1cecffff>
a0002716:	03076163          	bltu	a4,a6,a0002738 <__divdf3+0x3f0>
a000271a:	00676663          	bltu	a4,t1,a0002726 <__divdf3+0x3de>
a000271e:	2a671663          	bne	a4,t1,a00029ca <__divdf3+0x682>
a0002722:	00a8fd63          	bgeu	a7,a0,a000273c <__divdf3+0x3f4>
a0002726:	ffe68793          	addi	a5,a3,-2
a000272a:	00189693          	slli	a3,a7,0x1
a000272e:	0116b8b3          	sltu	a7,a3,a7
a0002732:	9846                	add	a6,a6,a7
a0002734:	9742                	add	a4,a4,a6
a0002736:	88b6                	mv	a7,a3
a0002738:	00671463          	bne	a4,t1,a0002740 <__divdf3+0x3f8>
a000273c:	00a88463          	beq	a7,a0,a0002744 <__divdf3+0x3fc>
a0002740:	0017e793          	ori	a5,a5,1
a0002744:	3ff58813          	addi	a6,a1,1023
a0002748:	11005863          	blez	a6,a0002858 <__divdf3+0x510>
a000274c:	0077f713          	andi	a4,a5,7
a0002750:	cf25                	beqz	a4,a00027c8 <__divdf3+0x480>
a0002752:	4709                	li	a4,2
a0002754:	0014e493          	ori	s1,s1,1
a0002758:	06e90763          	beq	s2,a4,a00027c6 <__divdf3+0x47e>
a000275c:	470d                	li	a4,3
a000275e:	06e90063          	beq	s2,a4,a00027be <__divdf3+0x476>
a0002762:	06091363          	bnez	s2,a00027c8 <__divdf3+0x480>
a0002766:	00f7f713          	andi	a4,a5,15
a000276a:	4691                	li	a3,4
a000276c:	04d70e63          	beq	a4,a3,a00027c8 <__divdf3+0x480>
a0002770:	00478713          	addi	a4,a5,4 # 80004 <remain_wifi_ram+0x60004>
a0002774:	00f737b3          	sltu	a5,a4,a5
a0002778:	943e                	add	s0,s0,a5
a000277a:	87ba                	mv	a5,a4
a000277c:	a0b1                	j	a00027c8 <__divdf3+0x480>
a000277e:	15fd                	addi	a1,a1,-1
a0002780:	4681                	li	a3,0
a0002782:	bb45                	j	a0002532 <__divdf3+0x1ea>
a0002784:	8652                	mv	a2,s4
a0002786:	845e                	mv	s0,s7
a0002788:	87ce                	mv	a5,s3
a000278a:	8762                	mv	a4,s8
a000278c:	468d                	li	a3,3
a000278e:	22d70763          	beq	a4,a3,a00029bc <__divdf3+0x674>
a0002792:	4685                	li	a3,1
a0002794:	22d70163          	beq	a4,a3,a00029b6 <__divdf3+0x66e>
a0002798:	4689                	li	a3,2
a000279a:	fad715e3          	bne	a4,a3,a0002744 <__divdf3+0x3fc>
a000279e:	a029                	j	a00027a8 <__divdf3+0x460>
a00027a0:	8656                	mv	a2,s5
a00027a2:	b7ed                	j	a000278c <__divdf3+0x444>
a00027a4:	0084e493          	ori	s1,s1,8
a00027a8:	4501                	li	a0,0
a00027aa:	4781                	li	a5,0
a00027ac:	7ff00713          	li	a4,2047
a00027b0:	a091                	j	a00027f4 <__divdf3+0x4ac>
a00027b2:	00080437          	lui	s0,0x80
a00027b6:	4781                	li	a5,0
a00027b8:	4601                	li	a2,0
a00027ba:	470d                	li	a4,3
a00027bc:	bfc1                	j	a000278c <__divdf3+0x444>
a00027be:	e609                	bnez	a2,a00027c8 <__divdf3+0x480>
a00027c0:	00878713          	addi	a4,a5,8
a00027c4:	bf45                	j	a0002774 <__divdf3+0x42c>
a00027c6:	fe6d                	bnez	a2,a00027c0 <__divdf3+0x478>
a00027c8:	01000737          	lui	a4,0x1000
a00027cc:	8f61                	and	a4,a4,s0
a00027ce:	c719                	beqz	a4,a00027dc <__divdf3+0x494>
a00027d0:	ff000737          	lui	a4,0xff000
a00027d4:	177d                	addi	a4,a4,-1
a00027d6:	8c79                	and	s0,s0,a4
a00027d8:	40058813          	addi	a6,a1,1024
a00027dc:	7fe00713          	li	a4,2046
a00027e0:	05074663          	blt	a4,a6,a000282c <__divdf3+0x4e4>
a00027e4:	0037d713          	srli	a4,a5,0x3
a00027e8:	01d41793          	slli	a5,s0,0x1d
a00027ec:	8fd9                	or	a5,a5,a4
a00027ee:	00345513          	srli	a0,s0,0x3
a00027f2:	8742                	mv	a4,a6
a00027f4:	0752                	slli	a4,a4,0x14
a00027f6:	7ff006b7          	lui	a3,0x7ff00
a00027fa:	0532                	slli	a0,a0,0xc
a00027fc:	8f75                	and	a4,a4,a3
a00027fe:	8131                	srli	a0,a0,0xc
a0002800:	8d59                	or	a0,a0,a4
a0002802:	067e                	slli	a2,a2,0x1f
a0002804:	00c56733          	or	a4,a0,a2
a0002808:	85ba                	mv	a1,a4
a000280a:	853e                	mv	a0,a5
a000280c:	c099                	beqz	s1,a0002812 <__divdf3+0x4ca>
a000280e:	0014a073          	csrs	fflags,s1
a0002812:	50b2                	lw	ra,44(sp)
a0002814:	5422                	lw	s0,40(sp)
a0002816:	5492                	lw	s1,36(sp)
a0002818:	5902                	lw	s2,32(sp)
a000281a:	49f2                	lw	s3,28(sp)
a000281c:	4a62                	lw	s4,24(sp)
a000281e:	4ad2                	lw	s5,20(sp)
a0002820:	4b42                	lw	s6,16(sp)
a0002822:	4bb2                	lw	s7,12(sp)
a0002824:	4c22                	lw	s8,8(sp)
a0002826:	4c92                	lw	s9,4(sp)
a0002828:	6145                	addi	sp,sp,48
a000282a:	8082                	ret
a000282c:	4789                	li	a5,2
a000282e:	02f90363          	beq	s2,a5,a0002854 <__divdf3+0x50c>
a0002832:	478d                	li	a5,3
a0002834:	00f90863          	beq	s2,a5,a0002844 <__divdf3+0x4fc>
a0002838:	00091763          	bnez	s2,a0002846 <__divdf3+0x4fe>
a000283c:	4781                	li	a5,0
a000283e:	7ff00713          	li	a4,2047
a0002842:	a029                	j	a000284c <__divdf3+0x504>
a0002844:	de65                	beqz	a2,a000283c <__divdf3+0x4f4>
a0002846:	57fd                	li	a5,-1
a0002848:	7fe00713          	li	a4,2046
a000284c:	0054e493          	ori	s1,s1,5
a0002850:	853e                	mv	a0,a5
a0002852:	b74d                	j	a00027f4 <__divdf3+0x4ac>
a0002854:	f665                	bnez	a2,a000283c <__divdf3+0x4f4>
a0002856:	bfc5                	j	a0002846 <__divdf3+0x4fe>
a0002858:	4705                	li	a4,1
a000285a:	04081463          	bnez	a6,a00028a2 <__divdf3+0x55a>
a000285e:	0077f693          	andi	a3,a5,7
a0002862:	8722                	mv	a4,s0
a0002864:	ca9d                	beqz	a3,a000289a <__divdf3+0x552>
a0002866:	4689                	li	a3,2
a0002868:	0014e493          	ori	s1,s1,1
a000286c:	02d90663          	beq	s2,a3,a0002898 <__divdf3+0x550>
a0002870:	468d                	li	a3,3
a0002872:	00d90f63          	beq	s2,a3,a0002890 <__divdf3+0x548>
a0002876:	02091263          	bnez	s2,a000289a <__divdf3+0x552>
a000287a:	00f7f693          	andi	a3,a5,15
a000287e:	4511                	li	a0,4
a0002880:	00a68d63          	beq	a3,a0,a000289a <__divdf3+0x552>
a0002884:	ffc7b713          	sltiu	a4,a5,-4
a0002888:	00174713          	xori	a4,a4,1
a000288c:	9722                	add	a4,a4,s0
a000288e:	a031                	j	a000289a <__divdf3+0x552>
a0002890:	e609                	bnez	a2,a000289a <__divdf3+0x552>
a0002892:	ff87b713          	sltiu	a4,a5,-8
a0002896:	bfcd                	j	a0002888 <__divdf3+0x540>
a0002898:	fe6d                	bnez	a2,a0002892 <__divdf3+0x54a>
a000289a:	8361                	srli	a4,a4,0x18
a000289c:	00174713          	xori	a4,a4,1
a00028a0:	8b05                	andi	a4,a4,1
a00028a2:	4505                	li	a0,1
a00028a4:	41050533          	sub	a0,a0,a6
a00028a8:	03800693          	li	a3,56
a00028ac:	0ca6c263          	blt	a3,a0,a0002970 <__divdf3+0x628>
a00028b0:	46fd                	li	a3,31
a00028b2:	04a6ca63          	blt	a3,a0,a0002906 <__divdf3+0x5be>
a00028b6:	41e58593          	addi	a1,a1,1054
a00028ba:	00a7d833          	srl	a6,a5,a0
a00028be:	00b416b3          	sll	a3,s0,a1
a00028c2:	00b797b3          	sll	a5,a5,a1
a00028c6:	0106e6b3          	or	a3,a3,a6
a00028ca:	00f037b3          	snez	a5,a5
a00028ce:	8fd5                	or	a5,a5,a3
a00028d0:	00a45533          	srl	a0,s0,a0
a00028d4:	0077f693          	andi	a3,a5,7
a00028d8:	c2ad                	beqz	a3,a000293a <__divdf3+0x5f2>
a00028da:	4689                	li	a3,2
a00028dc:	0014e493          	ori	s1,s1,1
a00028e0:	04d90c63          	beq	s2,a3,a0002938 <__divdf3+0x5f0>
a00028e4:	468d                	li	a3,3
a00028e6:	04d90563          	beq	s2,a3,a0002930 <__divdf3+0x5e8>
a00028ea:	04091863          	bnez	s2,a000293a <__divdf3+0x5f2>
a00028ee:	00f7f693          	andi	a3,a5,15
a00028f2:	4591                	li	a1,4
a00028f4:	04b68363          	beq	a3,a1,a000293a <__divdf3+0x5f2>
a00028f8:	00478693          	addi	a3,a5,4
a00028fc:	00f6b7b3          	sltu	a5,a3,a5
a0002900:	953e                	add	a0,a0,a5
a0002902:	87b6                	mv	a5,a3
a0002904:	a81d                	j	a000293a <__divdf3+0x5f2>
a0002906:	5685                	li	a3,-31
a0002908:	410686b3          	sub	a3,a3,a6
a000290c:	02000893          	li	a7,32
a0002910:	00d456b3          	srl	a3,s0,a3
a0002914:	4801                	li	a6,0
a0002916:	01150663          	beq	a0,a7,a0002922 <__divdf3+0x5da>
a000291a:	43e58593          	addi	a1,a1,1086
a000291e:	00b41833          	sll	a6,s0,a1
a0002922:	00f867b3          	or	a5,a6,a5
a0002926:	00f037b3          	snez	a5,a5
a000292a:	8fd5                	or	a5,a5,a3
a000292c:	4501                	li	a0,0
a000292e:	b75d                	j	a00028d4 <__divdf3+0x58c>
a0002930:	e609                	bnez	a2,a000293a <__divdf3+0x5f2>
a0002932:	00878693          	addi	a3,a5,8
a0002936:	b7d9                	j	a00028fc <__divdf3+0x5b4>
a0002938:	fe6d                	bnez	a2,a0002932 <__divdf3+0x5ea>
a000293a:	008006b7          	lui	a3,0x800
a000293e:	8ee9                	and	a3,a3,a0
a0002940:	ca81                	beqz	a3,a0002950 <__divdf3+0x608>
a0002942:	0014e493          	ori	s1,s1,1
a0002946:	4501                	li	a0,0
a0002948:	4781                	li	a5,0
a000294a:	e305                	bnez	a4,a000296a <__divdf3+0x622>
a000294c:	4705                	li	a4,1
a000294e:	b55d                	j	a00027f4 <__divdf3+0x4ac>
a0002950:	0037d693          	srli	a3,a5,0x3
a0002954:	01d51793          	slli	a5,a0,0x1d
a0002958:	8fd5                	or	a5,a5,a3
a000295a:	810d                	srli	a0,a0,0x3
a000295c:	e8070ce3          	beqz	a4,a00027f4 <__divdf3+0x4ac>
a0002960:	0014f713          	andi	a4,s1,1
a0002964:	e80708e3          	beqz	a4,a00027f4 <__divdf3+0x4ac>
a0002968:	4701                	li	a4,0
a000296a:	0024e493          	ori	s1,s1,2
a000296e:	b559                	j	a00027f4 <__divdf3+0x4ac>
a0002970:	8fc1                	or	a5,a5,s0
a0002972:	cf91                	beqz	a5,a000298e <__divdf3+0x646>
a0002974:	4789                	li	a5,2
a0002976:	0014e493          	ori	s1,s1,1
a000297a:	02f90363          	beq	s2,a5,a00029a0 <__divdf3+0x658>
a000297e:	478d                	li	a5,3
a0002980:	00f90c63          	beq	s2,a5,a0002998 <__divdf3+0x650>
a0002984:	4785                	li	a5,1
a0002986:	00091363          	bnez	s2,a000298c <__divdf3+0x644>
a000298a:	4795                	li	a5,5
a000298c:	838d                	srli	a5,a5,0x3
a000298e:	0024e493          	ori	s1,s1,2
a0002992:	4501                	li	a0,0
a0002994:	4701                	li	a4,0
a0002996:	bdb9                	j	a00027f4 <__divdf3+0x4ac>
a0002998:	47a5                	li	a5,9
a000299a:	da6d                	beqz	a2,a000298c <__divdf3+0x644>
a000299c:	4785                	li	a5,1
a000299e:	b7fd                	j	a000298c <__divdf3+0x644>
a00029a0:	47a5                	li	a5,9
a00029a2:	f66d                	bnez	a2,a000298c <__divdf3+0x644>
a00029a4:	bfe5                	j	a000299c <__divdf3+0x654>
a00029a6:	00080537          	lui	a0,0x80
a00029aa:	4781                	li	a5,0
a00029ac:	7ff00713          	li	a4,2047
a00029b0:	4601                	li	a2,0
a00029b2:	44c1                	li	s1,16
a00029b4:	b581                	j	a00027f4 <__divdf3+0x4ac>
a00029b6:	4501                	li	a0,0
a00029b8:	4781                	li	a5,0
a00029ba:	bfe9                	j	a0002994 <__divdf3+0x64c>
a00029bc:	00080537          	lui	a0,0x80
a00029c0:	4781                	li	a5,0
a00029c2:	7ff00713          	li	a4,2047
a00029c6:	4601                	li	a2,0
a00029c8:	b535                	j	a00027f4 <__divdf3+0x4ac>
a00029ca:	86be                	mv	a3,a5
a00029cc:	87b6                	mv	a5,a3
a00029ce:	bb8d                	j	a0002740 <__divdf3+0x3f8>

a00029d0 <__eqdf2>:
a00029d0:	882a                	mv	a6,a0
a00029d2:	002027f3          	frrm	a5
a00029d6:	001007b7          	lui	a5,0x100
a00029da:	0145d893          	srli	a7,a1,0x14
a00029de:	17fd                	addi	a5,a5,-1
a00029e0:	0146d313          	srli	t1,a3,0x14
a00029e4:	8e2a                	mv	t3,a0
a00029e6:	7ff8f893          	andi	a7,a7,2047
a00029ea:	7ff00513          	li	a0,2047
a00029ee:	00b7f733          	and	a4,a5,a1
a00029f2:	8eb2                	mv	t4,a2
a00029f4:	8ff5                	and	a5,a5,a3
a00029f6:	81fd                	srli	a1,a1,0x1f
a00029f8:	7ff37313          	andi	t1,t1,2047
a00029fc:	82fd                	srli	a3,a3,0x1f
a00029fe:	00a89863          	bne	a7,a0,a0002a0e <__eqdf2+0x3e>
a0002a02:	01076533          	or	a0,a4,a6
a0002a06:	e531                	bnez	a0,a0002a52 <__eqdf2+0x82>
a0002a08:	07131463          	bne	t1,a7,a0002a70 <__eqdf2+0xa0>
a0002a0c:	a019                	j	a0002a12 <__eqdf2+0x42>
a0002a0e:	00a31563          	bne	t1,a0,a0002a18 <__eqdf2+0x48>
a0002a12:	00c7e533          	or	a0,a5,a2
a0002a16:	e515                	bnez	a0,a0002a42 <__eqdf2+0x72>
a0002a18:	4505                	li	a0,1
a0002a1a:	04689c63          	bne	a7,t1,a0002a72 <__eqdf2+0xa2>
a0002a1e:	04f71a63          	bne	a4,a5,a0002a72 <__eqdf2+0xa2>
a0002a22:	05de1863          	bne	t3,t4,a0002a72 <__eqdf2+0xa2>
a0002a26:	00d58c63          	beq	a1,a3,a0002a3e <__eqdf2+0x6e>
a0002a2a:	04089463          	bnez	a7,a0002a72 <__eqdf2+0xa2>
a0002a2e:	01076733          	or	a4,a4,a6
a0002a32:	00e03533          	snez	a0,a4
a0002a36:	8082                	ret
a0002a38:	00186073          	csrsi	fflags,16
a0002a3c:	a815                	j	a0002a70 <__eqdf2+0xa0>
a0002a3e:	4501                	li	a0,0
a0002a40:	8082                	ret
a0002a42:	7ff00693          	li	a3,2047
a0002a46:	02d89163          	bne	a7,a3,a0002a68 <__eqdf2+0x98>
a0002a4a:	01076833          	or	a6,a4,a6
a0002a4e:	00080d63          	beqz	a6,a0002a68 <__eqdf2+0x98>
a0002a52:	000806b7          	lui	a3,0x80
a0002a56:	8f75                	and	a4,a4,a3
a0002a58:	d365                	beqz	a4,a0002a38 <__eqdf2+0x68>
a0002a5a:	7ff00713          	li	a4,2047
a0002a5e:	4505                	li	a0,1
a0002a60:	00e31963          	bne	t1,a4,a0002a72 <__eqdf2+0xa2>
a0002a64:	8e5d                	or	a2,a2,a5
a0002a66:	c611                	beqz	a2,a0002a72 <__eqdf2+0xa2>
a0002a68:	00080737          	lui	a4,0x80
a0002a6c:	8ff9                	and	a5,a5,a4
a0002a6e:	d7e9                	beqz	a5,a0002a38 <__eqdf2+0x68>
a0002a70:	4505                	li	a0,1
a0002a72:	8082                	ret

a0002a74 <__gedf2>:
a0002a74:	87aa                	mv	a5,a0
a0002a76:	00202773          	frrm	a4
a0002a7a:	00100737          	lui	a4,0x100
a0002a7e:	177d                	addi	a4,a4,-1
a0002a80:	0145d813          	srli	a6,a1,0x14
a0002a84:	00b778b3          	and	a7,a4,a1
a0002a88:	832a                	mv	t1,a0
a0002a8a:	7ff87813          	andi	a6,a6,2047
a0002a8e:	01f5d513          	srli	a0,a1,0x1f
a0002a92:	7ff00e93          	li	t4,2047
a0002a96:	0146d593          	srli	a1,a3,0x14
a0002a9a:	8f75                	and	a4,a4,a3
a0002a9c:	8e32                	mv	t3,a2
a0002a9e:	7ff5f593          	andi	a1,a1,2047
a0002aa2:	82fd                	srli	a3,a3,0x1f
a0002aa4:	01d81a63          	bne	a6,t4,a0002ab8 <__gedf2+0x44>
a0002aa8:	00f8eeb3          	or	t4,a7,a5
a0002aac:	060e8663          	beqz	t4,a0002b18 <__gedf2+0xa4>
a0002ab0:	00186073          	csrsi	fflags,16
a0002ab4:	5579                	li	a0,-2
a0002ab6:	8082                	ret
a0002ab8:	01d59663          	bne	a1,t4,a0002ac4 <__gedf2+0x50>
a0002abc:	00c76eb3          	or	t4,a4,a2
a0002ac0:	fe0e98e3          	bnez	t4,a0002ab0 <__gedf2+0x3c>
a0002ac4:	04081c63          	bnez	a6,a0002b1c <__gedf2+0xa8>
a0002ac8:	00f8e7b3          	or	a5,a7,a5
a0002acc:	0017b793          	seqz	a5,a5
a0002ad0:	e199                	bnez	a1,a0002ad6 <__gedf2+0x62>
a0002ad2:	8e59                	or	a2,a2,a4
a0002ad4:	ce0d                	beqz	a2,a0002b0e <__gedf2+0x9a>
a0002ad6:	eb81                	bnez	a5,a0002ae6 <__gedf2+0x72>
a0002ad8:	00d51463          	bne	a0,a3,a0002ae0 <__gedf2+0x6c>
a0002adc:	0105d963          	bge	a1,a6,a0002aee <__gedf2+0x7a>
a0002ae0:	c50d                	beqz	a0,a0002b0a <__gedf2+0x96>
a0002ae2:	557d                	li	a0,-1
a0002ae4:	8082                	ret
a0002ae6:	557d                	li	a0,-1
a0002ae8:	c691                	beqz	a3,a0002af4 <__gedf2+0x80>
a0002aea:	8536                	mv	a0,a3
a0002aec:	8082                	ret
a0002aee:	00b85463          	bge	a6,a1,a0002af6 <__gedf2+0x82>
a0002af2:	d965                	beqz	a0,a0002ae2 <__gedf2+0x6e>
a0002af4:	8082                	ret
a0002af6:	ff1765e3          	bltu	a4,a7,a0002ae0 <__gedf2+0x6c>
a0002afa:	00e89c63          	bne	a7,a4,a0002b12 <__gedf2+0x9e>
a0002afe:	fe6e61e3          	bltu	t3,t1,a0002ae0 <__gedf2+0x6c>
a0002b02:	ffc368e3          	bltu	t1,t3,a0002af2 <__gedf2+0x7e>
a0002b06:	4501                	li	a0,0
a0002b08:	8082                	ret
a0002b0a:	4505                	li	a0,1
a0002b0c:	8082                	ret
a0002b0e:	ffe5                	bnez	a5,a0002b06 <__gedf2+0x92>
a0002b10:	bfc1                	j	a0002ae0 <__gedf2+0x6c>
a0002b12:	fee8e0e3          	bltu	a7,a4,a0002af2 <__gedf2+0x7e>
a0002b16:	bfc5                	j	a0002b06 <__gedf2+0x92>
a0002b18:	fb0582e3          	beq	a1,a6,a0002abc <__gedf2+0x48>
a0002b1c:	fdd5                	bnez	a1,a0002ad8 <__gedf2+0x64>
a0002b1e:	4781                	li	a5,0
a0002b20:	bf4d                	j	a0002ad2 <__gedf2+0x5e>

a0002b22 <__ledf2>:
a0002b22:	87aa                	mv	a5,a0
a0002b24:	00202773          	frrm	a4
a0002b28:	00100737          	lui	a4,0x100
a0002b2c:	177d                	addi	a4,a4,-1
a0002b2e:	0145d813          	srli	a6,a1,0x14
a0002b32:	00b778b3          	and	a7,a4,a1
a0002b36:	832a                	mv	t1,a0
a0002b38:	7ff87813          	andi	a6,a6,2047
a0002b3c:	01f5d513          	srli	a0,a1,0x1f
a0002b40:	7ff00e93          	li	t4,2047
a0002b44:	0146d593          	srli	a1,a3,0x14
a0002b48:	8f75                	and	a4,a4,a3
a0002b4a:	8e32                	mv	t3,a2
a0002b4c:	7ff5f593          	andi	a1,a1,2047
a0002b50:	82fd                	srli	a3,a3,0x1f
a0002b52:	01d81a63          	bne	a6,t4,a0002b66 <__ledf2+0x44>
a0002b56:	00f8eeb3          	or	t4,a7,a5
a0002b5a:	060e8663          	beqz	t4,a0002bc6 <__ledf2+0xa4>
a0002b5e:	00186073          	csrsi	fflags,16
a0002b62:	4509                	li	a0,2
a0002b64:	8082                	ret
a0002b66:	01d59663          	bne	a1,t4,a0002b72 <__ledf2+0x50>
a0002b6a:	00c76eb3          	or	t4,a4,a2
a0002b6e:	fe0e98e3          	bnez	t4,a0002b5e <__ledf2+0x3c>
a0002b72:	04081c63          	bnez	a6,a0002bca <__ledf2+0xa8>
a0002b76:	00f8e7b3          	or	a5,a7,a5
a0002b7a:	0017b793          	seqz	a5,a5
a0002b7e:	e199                	bnez	a1,a0002b84 <__ledf2+0x62>
a0002b80:	8e59                	or	a2,a2,a4
a0002b82:	ce0d                	beqz	a2,a0002bbc <__ledf2+0x9a>
a0002b84:	eb81                	bnez	a5,a0002b94 <__ledf2+0x72>
a0002b86:	00d51463          	bne	a0,a3,a0002b8e <__ledf2+0x6c>
a0002b8a:	0105d963          	bge	a1,a6,a0002b9c <__ledf2+0x7a>
a0002b8e:	c50d                	beqz	a0,a0002bb8 <__ledf2+0x96>
a0002b90:	557d                	li	a0,-1
a0002b92:	8082                	ret
a0002b94:	557d                	li	a0,-1
a0002b96:	c691                	beqz	a3,a0002ba2 <__ledf2+0x80>
a0002b98:	8536                	mv	a0,a3
a0002b9a:	8082                	ret
a0002b9c:	00b85463          	bge	a6,a1,a0002ba4 <__ledf2+0x82>
a0002ba0:	d965                	beqz	a0,a0002b90 <__ledf2+0x6e>
a0002ba2:	8082                	ret
a0002ba4:	ff1765e3          	bltu	a4,a7,a0002b8e <__ledf2+0x6c>
a0002ba8:	00e89c63          	bne	a7,a4,a0002bc0 <__ledf2+0x9e>
a0002bac:	fe6e61e3          	bltu	t3,t1,a0002b8e <__ledf2+0x6c>
a0002bb0:	ffc368e3          	bltu	t1,t3,a0002ba0 <__ledf2+0x7e>
a0002bb4:	4501                	li	a0,0
a0002bb6:	8082                	ret
a0002bb8:	4505                	li	a0,1
a0002bba:	8082                	ret
a0002bbc:	ffe5                	bnez	a5,a0002bb4 <__ledf2+0x92>
a0002bbe:	bfc1                	j	a0002b8e <__ledf2+0x6c>
a0002bc0:	fee8e0e3          	bltu	a7,a4,a0002ba0 <__ledf2+0x7e>
a0002bc4:	bfc5                	j	a0002bb4 <__ledf2+0x92>
a0002bc6:	fb0582e3          	beq	a1,a6,a0002b6a <__ledf2+0x48>
a0002bca:	fdd5                	bnez	a1,a0002b86 <__ledf2+0x64>
a0002bcc:	4781                	li	a5,0
a0002bce:	bf4d                	j	a0002b80 <__ledf2+0x5e>

a0002bd0 <__muldf3>:
a0002bd0:	7179                	addi	sp,sp,-48
a0002bd2:	d422                	sw	s0,40(sp)
a0002bd4:	ca56                	sw	s5,20(sp)
a0002bd6:	c266                	sw	s9,4(sp)
a0002bd8:	d606                	sw	ra,44(sp)
a0002bda:	d226                	sw	s1,36(sp)
a0002bdc:	d04a                	sw	s2,32(sp)
a0002bde:	ce4e                	sw	s3,28(sp)
a0002be0:	cc52                	sw	s4,24(sp)
a0002be2:	c85a                	sw	s6,16(sp)
a0002be4:	c65e                	sw	s7,12(sp)
a0002be6:	c462                	sw	s8,8(sp)
a0002be8:	842a                	mv	s0,a0
a0002bea:	8cb2                	mv	s9,a2
a0002bec:	8ab6                	mv	s5,a3
a0002bee:	00202973          	frrm	s2
a0002bf2:	0145db93          	srli	s7,a1,0x14
a0002bf6:	00c59993          	slli	s3,a1,0xc
a0002bfa:	7ffbfb93          	andi	s7,s7,2047
a0002bfe:	00c9d993          	srli	s3,s3,0xc
a0002c02:	01f5db13          	srli	s6,a1,0x1f
a0002c06:	020b8663          	beqz	s7,a0002c32 <__muldf3+0x62>
a0002c0a:	7ff00793          	li	a5,2047
a0002c0e:	06fb8b63          	beq	s7,a5,a0002c84 <__muldf3+0xb4>
a0002c12:	01d55793          	srli	a5,a0,0x1d
a0002c16:	098e                	slli	s3,s3,0x3
a0002c18:	0137e9b3          	or	s3,a5,s3
a0002c1c:	008007b7          	lui	a5,0x800
a0002c20:	00f9e9b3          	or	s3,s3,a5
a0002c24:	00351a13          	slli	s4,a0,0x3
a0002c28:	c01b8b93          	addi	s7,s7,-1023
a0002c2c:	4c01                	li	s8,0
a0002c2e:	4481                	li	s1,0
a0002c30:	a0bd                	j	a0002c9e <__muldf3+0xce>
a0002c32:	00a9e7b3          	or	a5,s3,a0
a0002c36:	c3f9                	beqz	a5,a0002cfc <__muldf3+0x12c>
a0002c38:	02098b63          	beqz	s3,a0002c6e <__muldf3+0x9e>
a0002c3c:	854e                	mv	a0,s3
a0002c3e:	1ca010ef          	jal	ra,a0003e08 <__clzsi2>
a0002c42:	ff550713          	addi	a4,a0,-11 # 7fff5 <remain_wifi_ram+0x5fff5>
a0002c46:	47f1                	li	a5,28
a0002c48:	02e7c863          	blt	a5,a4,a0002c78 <__muldf3+0xa8>
a0002c4c:	47f5                	li	a5,29
a0002c4e:	ff850a13          	addi	s4,a0,-8
a0002c52:	8f99                	sub	a5,a5,a4
a0002c54:	014999b3          	sll	s3,s3,s4
a0002c58:	00f457b3          	srl	a5,s0,a5
a0002c5c:	0137e9b3          	or	s3,a5,s3
a0002c60:	01441a33          	sll	s4,s0,s4
a0002c64:	c0d00b93          	li	s7,-1011
a0002c68:	40ab8bb3          	sub	s7,s7,a0
a0002c6c:	b7c1                	j	a0002c2c <__muldf3+0x5c>
a0002c6e:	19a010ef          	jal	ra,a0003e08 <__clzsi2>
a0002c72:	02050513          	addi	a0,a0,32
a0002c76:	b7f1                	j	a0002c42 <__muldf3+0x72>
a0002c78:	fd850993          	addi	s3,a0,-40
a0002c7c:	013419b3          	sll	s3,s0,s3
a0002c80:	4a01                	li	s4,0
a0002c82:	b7cd                	j	a0002c64 <__muldf3+0x94>
a0002c84:	00a9e433          	or	s0,s3,a0
a0002c88:	cc3d                	beqz	s0,a0002d06 <__muldf3+0x136>
a0002c8a:	000807b7          	lui	a5,0x80
a0002c8e:	00f9f7b3          	and	a5,s3,a5
a0002c92:	8a2a                	mv	s4,a0
a0002c94:	7ff00b93          	li	s7,2047
a0002c98:	4c0d                	li	s8,3
a0002c9a:	44c1                	li	s1,16
a0002c9c:	fbc9                	bnez	a5,a0002c2e <__muldf3+0x5e>
a0002c9e:	014ad513          	srli	a0,s5,0x14
a0002ca2:	00ca9413          	slli	s0,s5,0xc
a0002ca6:	7ff57513          	andi	a0,a0,2047
a0002caa:	87e6                	mv	a5,s9
a0002cac:	8031                	srli	s0,s0,0xc
a0002cae:	01fada93          	srli	s5,s5,0x1f
a0002cb2:	c125                	beqz	a0,a0002d12 <__muldf3+0x142>
a0002cb4:	7ff00713          	li	a4,2047
a0002cb8:	0ae50563          	beq	a0,a4,a0002d62 <__muldf3+0x192>
a0002cbc:	01dcd793          	srli	a5,s9,0x1d
a0002cc0:	040e                	slli	s0,s0,0x3
a0002cc2:	8c5d                	or	s0,s0,a5
a0002cc4:	008007b7          	lui	a5,0x800
a0002cc8:	8c5d                	or	s0,s0,a5
a0002cca:	c0150513          	addi	a0,a0,-1023
a0002cce:	003c9793          	slli	a5,s9,0x3
a0002cd2:	4701                	li	a4,0
a0002cd4:	002c1693          	slli	a3,s8,0x2
a0002cd8:	8ed9                	or	a3,a3,a4
a0002cda:	9baa                	add	s7,s7,a0
a0002cdc:	16fd                	addi	a3,a3,-1
a0002cde:	4639                	li	a2,14
a0002ce0:	015b45b3          	xor	a1,s6,s5
a0002ce4:	001b8513          	addi	a0,s7,1
a0002ce8:	0ed66963          	bltu	a2,a3,a0002dda <__muldf3+0x20a>
a0002cec:	a0008637          	lui	a2,0xa0008
a0002cf0:	068a                	slli	a3,a3,0x2
a0002cf2:	4ec60613          	addi	a2,a2,1260 # a00084ec <__psram_limit+0xf7c084ec>
a0002cf6:	96b2                	add	a3,a3,a2
a0002cf8:	4294                	lw	a3,0(a3)
a0002cfa:	8682                	jr	a3
a0002cfc:	4981                	li	s3,0
a0002cfe:	4a01                	li	s4,0
a0002d00:	4b81                	li	s7,0
a0002d02:	4c05                	li	s8,1
a0002d04:	b72d                	j	a0002c2e <__muldf3+0x5e>
a0002d06:	4981                	li	s3,0
a0002d08:	4a01                	li	s4,0
a0002d0a:	7ff00b93          	li	s7,2047
a0002d0e:	4c09                	li	s8,2
a0002d10:	bf39                	j	a0002c2e <__muldf3+0x5e>
a0002d12:	019467b3          	or	a5,s0,s9
a0002d16:	c3b5                	beqz	a5,a0002d7a <__muldf3+0x1aa>
a0002d18:	c80d                	beqz	s0,a0002d4a <__muldf3+0x17a>
a0002d1a:	8522                	mv	a0,s0
a0002d1c:	0ec010ef          	jal	ra,a0003e08 <__clzsi2>
a0002d20:	ff550693          	addi	a3,a0,-11
a0002d24:	47f1                	li	a5,28
a0002d26:	02d7c863          	blt	a5,a3,a0002d56 <__muldf3+0x186>
a0002d2a:	4775                	li	a4,29
a0002d2c:	ff850793          	addi	a5,a0,-8
a0002d30:	8f15                	sub	a4,a4,a3
a0002d32:	00f41433          	sll	s0,s0,a5
a0002d36:	00ecd733          	srl	a4,s9,a4
a0002d3a:	8c59                	or	s0,s0,a4
a0002d3c:	00fc97b3          	sll	a5,s9,a5
a0002d40:	c0d00713          	li	a4,-1011
a0002d44:	40a70533          	sub	a0,a4,a0
a0002d48:	b769                	j	a0002cd2 <__muldf3+0x102>
a0002d4a:	8566                	mv	a0,s9
a0002d4c:	0bc010ef          	jal	ra,a0003e08 <__clzsi2>
a0002d50:	02050513          	addi	a0,a0,32
a0002d54:	b7f1                	j	a0002d20 <__muldf3+0x150>
a0002d56:	fd850413          	addi	s0,a0,-40
a0002d5a:	008c9433          	sll	s0,s9,s0
a0002d5e:	4781                	li	a5,0
a0002d60:	b7c5                	j	a0002d40 <__muldf3+0x170>
a0002d62:	01946633          	or	a2,s0,s9
a0002d66:	ce19                	beqz	a2,a0002d84 <__muldf3+0x1b4>
a0002d68:	00080737          	lui	a4,0x80
a0002d6c:	8f61                	and	a4,a4,s0
a0002d6e:	7ff00513          	li	a0,2047
a0002d72:	ef19                	bnez	a4,a0002d90 <__muldf3+0x1c0>
a0002d74:	470d                	li	a4,3
a0002d76:	44c1                	li	s1,16
a0002d78:	bfb1                	j	a0002cd4 <__muldf3+0x104>
a0002d7a:	4401                	li	s0,0
a0002d7c:	4781                	li	a5,0
a0002d7e:	4501                	li	a0,0
a0002d80:	4705                	li	a4,1
a0002d82:	bf89                	j	a0002cd4 <__muldf3+0x104>
a0002d84:	4401                	li	s0,0
a0002d86:	4781                	li	a5,0
a0002d88:	7ff00513          	li	a0,2047
a0002d8c:	4709                	li	a4,2
a0002d8e:	b799                	j	a0002cd4 <__muldf3+0x104>
a0002d90:	470d                	li	a4,3
a0002d92:	b789                	j	a0002cd4 <__muldf3+0x104>
a0002d94:	00080437          	lui	s0,0x80
a0002d98:	4781                	li	a5,0
a0002d9a:	7ff00713          	li	a4,2047
a0002d9e:	4581                	li	a1,0
a0002da0:	44c1                	li	s1,16
a0002da2:	0752                	slli	a4,a4,0x14
a0002da4:	7ff006b7          	lui	a3,0x7ff00
a0002da8:	0432                	slli	s0,s0,0xc
a0002daa:	8f75                	and	a4,a4,a3
a0002dac:	8031                	srli	s0,s0,0xc
a0002dae:	05fe                	slli	a1,a1,0x1f
a0002db0:	8c59                	or	s0,s0,a4
a0002db2:	00b46733          	or	a4,s0,a1
a0002db6:	853e                	mv	a0,a5
a0002db8:	85ba                	mv	a1,a4
a0002dba:	c099                	beqz	s1,a0002dc0 <__muldf3+0x1f0>
a0002dbc:	0014a073          	csrs	fflags,s1
a0002dc0:	50b2                	lw	ra,44(sp)
a0002dc2:	5422                	lw	s0,40(sp)
a0002dc4:	5492                	lw	s1,36(sp)
a0002dc6:	5902                	lw	s2,32(sp)
a0002dc8:	49f2                	lw	s3,28(sp)
a0002dca:	4a62                	lw	s4,24(sp)
a0002dcc:	4ad2                	lw	s5,20(sp)
a0002dce:	4b42                	lw	s6,16(sp)
a0002dd0:	4bb2                	lw	s7,12(sp)
a0002dd2:	4c22                	lw	s8,8(sp)
a0002dd4:	4c92                	lw	s9,4(sp)
a0002dd6:	6145                	addi	sp,sp,48
a0002dd8:	8082                	ret
a0002dda:	6ec1                	lui	t4,0x10
a0002ddc:	fffe8e13          	addi	t3,t4,-1 # ffff <wifi_ram_max_size+0x7fff>
a0002de0:	010a5713          	srli	a4,s4,0x10
a0002de4:	0107d893          	srli	a7,a5,0x10
a0002de8:	01ca7a33          	and	s4,s4,t3
a0002dec:	01c7f7b3          	and	a5,a5,t3
a0002df0:	03488833          	mul	a6,a7,s4
a0002df4:	034786b3          	mul	a3,a5,s4
a0002df8:	02f70f33          	mul	t5,a4,a5
a0002dfc:	01e80333          	add	t1,a6,t5
a0002e00:	0106d813          	srli	a6,a3,0x10
a0002e04:	981a                	add	a6,a6,t1
a0002e06:	03170633          	mul	a2,a4,a7
a0002e0a:	01e87363          	bgeu	a6,t5,a0002e10 <__muldf3+0x240>
a0002e0e:	9676                	add	a2,a2,t4
a0002e10:	01085f93          	srli	t6,a6,0x10
a0002e14:	01c87833          	and	a6,a6,t3
a0002e18:	01c6f6b3          	and	a3,a3,t3
a0002e1c:	01045e93          	srli	t4,s0,0x10
a0002e20:	01c47e33          	and	t3,s0,t3
a0002e24:	0842                	slli	a6,a6,0x10
a0002e26:	9836                	add	a6,a6,a3
a0002e28:	03c70f33          	mul	t5,a4,t3
a0002e2c:	03ca06b3          	mul	a3,s4,t3
a0002e30:	034e8a33          	mul	s4,t4,s4
a0002e34:	01ea0333          	add	t1,s4,t5
a0002e38:	0106da13          	srli	s4,a3,0x10
a0002e3c:	9a1a                	add	s4,s4,t1
a0002e3e:	03d70733          	mul	a4,a4,t4
a0002e42:	01ea7463          	bgeu	s4,t5,a0002e4a <__muldf3+0x27a>
a0002e46:	6341                	lui	t1,0x10
a0002e48:	971a                	add	a4,a4,t1
a0002e4a:	010a5313          	srli	t1,s4,0x10
a0002e4e:	933a                	add	t1,t1,a4
a0002e50:	6741                	lui	a4,0x10
a0002e52:	fff70f13          	addi	t5,a4,-1 # ffff <wifi_ram_max_size+0x7fff>
a0002e56:	01ea7a33          	and	s4,s4,t5
a0002e5a:	01e6f6b3          	and	a3,a3,t5
a0002e5e:	0109d413          	srli	s0,s3,0x10
a0002e62:	0a42                	slli	s4,s4,0x10
a0002e64:	01e9f9b3          	and	s3,s3,t5
a0002e68:	03378f33          	mul	t5,a5,s3
a0002e6c:	9a36                	add	s4,s4,a3
a0002e6e:	9fd2                	add	t6,t6,s4
a0002e70:	033886b3          	mul	a3,a7,s3
a0002e74:	02f407b3          	mul	a5,s0,a5
a0002e78:	028882b3          	mul	t0,a7,s0
a0002e7c:	00f688b3          	add	a7,a3,a5
a0002e80:	010f5693          	srli	a3,t5,0x10
a0002e84:	96c6                	add	a3,a3,a7
a0002e86:	00f6f363          	bgeu	a3,a5,a0002e8c <__muldf3+0x2bc>
a0002e8a:	92ba                	add	t0,t0,a4
a0002e8c:	6741                	lui	a4,0x10
a0002e8e:	fff70793          	addi	a5,a4,-1 # ffff <wifi_ram_max_size+0x7fff>
a0002e92:	00ff7f33          	and	t5,t5,a5
a0002e96:	0106d893          	srli	a7,a3,0x10
a0002e9a:	8efd                	and	a3,a3,a5
a0002e9c:	03c987b3          	mul	a5,s3,t3
a0002ea0:	06c2                	slli	a3,a3,0x10
a0002ea2:	96fa                	add	a3,a3,t5
a0002ea4:	9896                	add	a7,a7,t0
a0002ea6:	03c40e33          	mul	t3,s0,t3
a0002eaa:	033e89b3          	mul	s3,t4,s3
a0002eae:	028e8f33          	mul	t5,t4,s0
a0002eb2:	99f2                	add	s3,s3,t3
a0002eb4:	0107d413          	srli	s0,a5,0x10
a0002eb8:	99a2                	add	s3,s3,s0
a0002eba:	01c9f363          	bgeu	s3,t3,a0002ec0 <__muldf3+0x2f0>
a0002ebe:	9f3a                	add	t5,t5,a4
a0002ec0:	6e41                	lui	t3,0x10
a0002ec2:	1e7d                	addi	t3,t3,-1
a0002ec4:	01c9f733          	and	a4,s3,t3
a0002ec8:	01c7f7b3          	and	a5,a5,t3
a0002ecc:	0742                	slli	a4,a4,0x10
a0002ece:	967e                	add	a2,a2,t6
a0002ed0:	973e                	add	a4,a4,a5
a0002ed2:	01463a33          	sltu	s4,a2,s4
a0002ed6:	971a                	add	a4,a4,t1
a0002ed8:	01470433          	add	s0,a4,s4
a0002edc:	9636                	add	a2,a2,a3
a0002ede:	00d636b3          	sltu	a3,a2,a3
a0002ee2:	01140e33          	add	t3,s0,a7
a0002ee6:	00de0eb3          	add	t4,t3,a3
a0002eea:	00673733          	sltu	a4,a4,t1
a0002eee:	01443433          	sltu	s0,s0,s4
a0002ef2:	8c59                	or	s0,s0,a4
a0002ef4:	00deb6b3          	sltu	a3,t4,a3
a0002ef8:	0109d993          	srli	s3,s3,0x10
a0002efc:	011e38b3          	sltu	a7,t3,a7
a0002f00:	944e                	add	s0,s0,s3
a0002f02:	00d8e6b3          	or	a3,a7,a3
a0002f06:	9436                	add	s0,s0,a3
a0002f08:	947a                	add	s0,s0,t5
a0002f0a:	017ed793          	srli	a5,t4,0x17
a0002f0e:	0426                	slli	s0,s0,0x9
a0002f10:	8c5d                	or	s0,s0,a5
a0002f12:	00961793          	slli	a5,a2,0x9
a0002f16:	0107e7b3          	or	a5,a5,a6
a0002f1a:	00f037b3          	snez	a5,a5
a0002f1e:	825d                	srli	a2,a2,0x17
a0002f20:	01000737          	lui	a4,0x1000
a0002f24:	8fd1                	or	a5,a5,a2
a0002f26:	0ea6                	slli	t4,t4,0x9
a0002f28:	8f61                	and	a4,a4,s0
a0002f2a:	01d7e7b3          	or	a5,a5,t4
a0002f2e:	cb25                	beqz	a4,a0002f9e <__muldf3+0x3ce>
a0002f30:	0017d713          	srli	a4,a5,0x1
a0002f34:	8b85                	andi	a5,a5,1
a0002f36:	8fd9                	or	a5,a5,a4
a0002f38:	01f41713          	slli	a4,s0,0x1f
a0002f3c:	8fd9                	or	a5,a5,a4
a0002f3e:	8005                	srli	s0,s0,0x1
a0002f40:	3ff50813          	addi	a6,a0,1023
a0002f44:	0d005063          	blez	a6,a0003004 <__muldf3+0x434>
a0002f48:	0077f713          	andi	a4,a5,7
a0002f4c:	c325                	beqz	a4,a0002fac <__muldf3+0x3dc>
a0002f4e:	4709                	li	a4,2
a0002f50:	0014e493          	ori	s1,s1,1
a0002f54:	04e90b63          	beq	s2,a4,a0002faa <__muldf3+0x3da>
a0002f58:	470d                	li	a4,3
a0002f5a:	04e90463          	beq	s2,a4,a0002fa2 <__muldf3+0x3d2>
a0002f5e:	04091763          	bnez	s2,a0002fac <__muldf3+0x3dc>
a0002f62:	00f7f713          	andi	a4,a5,15
a0002f66:	4691                	li	a3,4
a0002f68:	04d70263          	beq	a4,a3,a0002fac <__muldf3+0x3dc>
a0002f6c:	00478713          	addi	a4,a5,4 # 800004 <remain_wifi_ram+0x7e0004>
a0002f70:	00f737b3          	sltu	a5,a4,a5
a0002f74:	943e                	add	s0,s0,a5
a0002f76:	87ba                	mv	a5,a4
a0002f78:	a815                	j	a0002fac <__muldf3+0x3dc>
a0002f7a:	85da                	mv	a1,s6
a0002f7c:	844e                	mv	s0,s3
a0002f7e:	87d2                	mv	a5,s4
a0002f80:	8762                	mv	a4,s8
a0002f82:	4689                	li	a3,2
a0002f84:	1cd70763          	beq	a4,a3,a0003152 <__muldf3+0x582>
a0002f88:	468d                	li	a3,3
a0002f8a:	1cd70963          	beq	a4,a3,a000315c <__muldf3+0x58c>
a0002f8e:	4685                	li	a3,1
a0002f90:	fad718e3          	bne	a4,a3,a0002f40 <__muldf3+0x370>
a0002f94:	4401                	li	s0,0
a0002f96:	4781                	li	a5,0
a0002f98:	a265                	j	a0003140 <__muldf3+0x570>
a0002f9a:	85d6                	mv	a1,s5
a0002f9c:	b7dd                	j	a0002f82 <__muldf3+0x3b2>
a0002f9e:	855e                	mv	a0,s7
a0002fa0:	b745                	j	a0002f40 <__muldf3+0x370>
a0002fa2:	e589                	bnez	a1,a0002fac <__muldf3+0x3dc>
a0002fa4:	00878713          	addi	a4,a5,8
a0002fa8:	b7e1                	j	a0002f70 <__muldf3+0x3a0>
a0002faa:	fded                	bnez	a1,a0002fa4 <__muldf3+0x3d4>
a0002fac:	01000737          	lui	a4,0x1000
a0002fb0:	8f61                	and	a4,a4,s0
a0002fb2:	c719                	beqz	a4,a0002fc0 <__muldf3+0x3f0>
a0002fb4:	ff000737          	lui	a4,0xff000
a0002fb8:	177d                	addi	a4,a4,-1
a0002fba:	8c79                	and	s0,s0,a4
a0002fbc:	40050813          	addi	a6,a0,1024
a0002fc0:	7fe00713          	li	a4,2046
a0002fc4:	01074a63          	blt	a4,a6,a0002fd8 <__muldf3+0x408>
a0002fc8:	0037d713          	srli	a4,a5,0x3
a0002fcc:	01d41793          	slli	a5,s0,0x1d
a0002fd0:	8fd9                	or	a5,a5,a4
a0002fd2:	800d                	srli	s0,s0,0x3
a0002fd4:	8742                	mv	a4,a6
a0002fd6:	b3f1                	j	a0002da2 <__muldf3+0x1d2>
a0002fd8:	4789                	li	a5,2
a0002fda:	02f90363          	beq	s2,a5,a0003000 <__muldf3+0x430>
a0002fde:	478d                	li	a5,3
a0002fe0:	00f90863          	beq	s2,a5,a0002ff0 <__muldf3+0x420>
a0002fe4:	00091763          	bnez	s2,a0002ff2 <__muldf3+0x422>
a0002fe8:	4781                	li	a5,0
a0002fea:	7ff00713          	li	a4,2047
a0002fee:	a029                	j	a0002ff8 <__muldf3+0x428>
a0002ff0:	dde5                	beqz	a1,a0002fe8 <__muldf3+0x418>
a0002ff2:	57fd                	li	a5,-1
a0002ff4:	7fe00713          	li	a4,2046
a0002ff8:	0054e493          	ori	s1,s1,5
a0002ffc:	843e                	mv	s0,a5
a0002ffe:	b355                	j	a0002da2 <__muldf3+0x1d2>
a0003000:	f5e5                	bnez	a1,a0002fe8 <__muldf3+0x418>
a0003002:	bfc5                	j	a0002ff2 <__muldf3+0x422>
a0003004:	4705                	li	a4,1
a0003006:	04081463          	bnez	a6,a000304e <__muldf3+0x47e>
a000300a:	0077f693          	andi	a3,a5,7
a000300e:	8722                	mv	a4,s0
a0003010:	ca9d                	beqz	a3,a0003046 <__muldf3+0x476>
a0003012:	4689                	li	a3,2
a0003014:	0014e493          	ori	s1,s1,1
a0003018:	02d90663          	beq	s2,a3,a0003044 <__muldf3+0x474>
a000301c:	468d                	li	a3,3
a000301e:	00d90f63          	beq	s2,a3,a000303c <__muldf3+0x46c>
a0003022:	02091263          	bnez	s2,a0003046 <__muldf3+0x476>
a0003026:	00f7f693          	andi	a3,a5,15
a000302a:	4611                	li	a2,4
a000302c:	00c68d63          	beq	a3,a2,a0003046 <__muldf3+0x476>
a0003030:	ffc7b713          	sltiu	a4,a5,-4
a0003034:	00174713          	xori	a4,a4,1
a0003038:	9722                	add	a4,a4,s0
a000303a:	a031                	j	a0003046 <__muldf3+0x476>
a000303c:	e589                	bnez	a1,a0003046 <__muldf3+0x476>
a000303e:	ff87b713          	sltiu	a4,a5,-8
a0003042:	bfcd                	j	a0003034 <__muldf3+0x464>
a0003044:	fded                	bnez	a1,a000303e <__muldf3+0x46e>
a0003046:	8361                	srli	a4,a4,0x18
a0003048:	00174713          	xori	a4,a4,1
a000304c:	8b05                	andi	a4,a4,1
a000304e:	4685                	li	a3,1
a0003050:	410686b3          	sub	a3,a3,a6
a0003054:	03800613          	li	a2,56
a0003058:	0cd64263          	blt	a2,a3,a000311c <__muldf3+0x54c>
a000305c:	467d                	li	a2,31
a000305e:	04d64a63          	blt	a2,a3,a00030b2 <__muldf3+0x4e2>
a0003062:	41e50513          	addi	a0,a0,1054
a0003066:	00a41633          	sll	a2,s0,a0
a000306a:	00d7d833          	srl	a6,a5,a3
a000306e:	00a797b3          	sll	a5,a5,a0
a0003072:	01066633          	or	a2,a2,a6
a0003076:	00f037b3          	snez	a5,a5
a000307a:	8fd1                	or	a5,a5,a2
a000307c:	00d45433          	srl	s0,s0,a3
a0003080:	0077f693          	andi	a3,a5,7
a0003084:	c2ad                	beqz	a3,a00030e6 <__muldf3+0x516>
a0003086:	4689                	li	a3,2
a0003088:	0014e493          	ori	s1,s1,1
a000308c:	04d90c63          	beq	s2,a3,a00030e4 <__muldf3+0x514>
a0003090:	468d                	li	a3,3
a0003092:	04d90563          	beq	s2,a3,a00030dc <__muldf3+0x50c>
a0003096:	04091863          	bnez	s2,a00030e6 <__muldf3+0x516>
a000309a:	00f7f693          	andi	a3,a5,15
a000309e:	4611                	li	a2,4
a00030a0:	04c68363          	beq	a3,a2,a00030e6 <__muldf3+0x516>
a00030a4:	00478693          	addi	a3,a5,4
a00030a8:	00f6b7b3          	sltu	a5,a3,a5
a00030ac:	943e                	add	s0,s0,a5
a00030ae:	87b6                	mv	a5,a3
a00030b0:	a81d                	j	a00030e6 <__muldf3+0x516>
a00030b2:	5605                	li	a2,-31
a00030b4:	41060633          	sub	a2,a2,a6
a00030b8:	02000893          	li	a7,32
a00030bc:	00c45633          	srl	a2,s0,a2
a00030c0:	4801                	li	a6,0
a00030c2:	01168663          	beq	a3,a7,a00030ce <__muldf3+0x4fe>
a00030c6:	43e50513          	addi	a0,a0,1086
a00030ca:	00a41833          	sll	a6,s0,a0
a00030ce:	00f867b3          	or	a5,a6,a5
a00030d2:	00f037b3          	snez	a5,a5
a00030d6:	8fd1                	or	a5,a5,a2
a00030d8:	4401                	li	s0,0
a00030da:	b75d                	j	a0003080 <__muldf3+0x4b0>
a00030dc:	e589                	bnez	a1,a00030e6 <__muldf3+0x516>
a00030de:	00878693          	addi	a3,a5,8
a00030e2:	b7d9                	j	a00030a8 <__muldf3+0x4d8>
a00030e4:	fded                	bnez	a1,a00030de <__muldf3+0x50e>
a00030e6:	008006b7          	lui	a3,0x800
a00030ea:	8ee1                	and	a3,a3,s0
a00030ec:	ca81                	beqz	a3,a00030fc <__muldf3+0x52c>
a00030ee:	0014e493          	ori	s1,s1,1
a00030f2:	4401                	li	s0,0
a00030f4:	4781                	li	a5,0
a00030f6:	e305                	bnez	a4,a0003116 <__muldf3+0x546>
a00030f8:	4705                	li	a4,1
a00030fa:	b165                	j	a0002da2 <__muldf3+0x1d2>
a00030fc:	0037d693          	srli	a3,a5,0x3
a0003100:	01d41793          	slli	a5,s0,0x1d
a0003104:	8fd5                	or	a5,a5,a3
a0003106:	800d                	srli	s0,s0,0x3
a0003108:	c8070de3          	beqz	a4,a0002da2 <__muldf3+0x1d2>
a000310c:	0014f713          	andi	a4,s1,1
a0003110:	c80709e3          	beqz	a4,a0002da2 <__muldf3+0x1d2>
a0003114:	4701                	li	a4,0
a0003116:	0024e493          	ori	s1,s1,2
a000311a:	b161                	j	a0002da2 <__muldf3+0x1d2>
a000311c:	8fc1                	or	a5,a5,s0
a000311e:	cf91                	beqz	a5,a000313a <__muldf3+0x56a>
a0003120:	4789                	li	a5,2
a0003122:	0014e493          	ori	s1,s1,1
a0003126:	02f90363          	beq	s2,a5,a000314c <__muldf3+0x57c>
a000312a:	478d                	li	a5,3
a000312c:	00f90c63          	beq	s2,a5,a0003144 <__muldf3+0x574>
a0003130:	4785                	li	a5,1
a0003132:	00091363          	bnez	s2,a0003138 <__muldf3+0x568>
a0003136:	4795                	li	a5,5
a0003138:	838d                	srli	a5,a5,0x3
a000313a:	0024e493          	ori	s1,s1,2
a000313e:	4401                	li	s0,0
a0003140:	4701                	li	a4,0
a0003142:	b185                	j	a0002da2 <__muldf3+0x1d2>
a0003144:	47a5                	li	a5,9
a0003146:	d9ed                	beqz	a1,a0003138 <__muldf3+0x568>
a0003148:	4785                	li	a5,1
a000314a:	b7fd                	j	a0003138 <__muldf3+0x568>
a000314c:	47a5                	li	a5,9
a000314e:	f5ed                	bnez	a1,a0003138 <__muldf3+0x568>
a0003150:	bfe5                	j	a0003148 <__muldf3+0x578>
a0003152:	4401                	li	s0,0
a0003154:	4781                	li	a5,0
a0003156:	7ff00713          	li	a4,2047
a000315a:	b1a1                	j	a0002da2 <__muldf3+0x1d2>
a000315c:	00080437          	lui	s0,0x80
a0003160:	4781                	li	a5,0
a0003162:	7ff00713          	li	a4,2047
a0003166:	4581                	li	a1,0
a0003168:	b92d                	j	a0002da2 <__muldf3+0x1d2>

a000316a <__subdf3>:
a000316a:	1101                	addi	sp,sp,-32
a000316c:	ce06                	sw	ra,28(sp)
a000316e:	cc22                	sw	s0,24(sp)
a0003170:	ca26                	sw	s1,20(sp)
a0003172:	c84a                	sw	s2,16(sp)
a0003174:	c64e                	sw	s3,12(sp)
a0003176:	c452                	sw	s4,8(sp)
a0003178:	002029f3          	frrm	s3
a000317c:	001008b7          	lui	a7,0x100
a0003180:	18fd                	addi	a7,a7,-1
a0003182:	00b8f733          	and	a4,a7,a1
a0003186:	0145d413          	srli	s0,a1,0x14
a000318a:	00d8f8b3          	and	a7,a7,a3
a000318e:	01f5d493          	srli	s1,a1,0x1f
a0003192:	0146d593          	srli	a1,a3,0x14
a0003196:	00371793          	slli	a5,a4,0x3
a000319a:	01f6d313          	srli	t1,a3,0x1f
a000319e:	01d55713          	srli	a4,a0,0x1d
a00031a2:	01d65693          	srli	a3,a2,0x1d
a00031a6:	088e                	slli	a7,a7,0x3
a00031a8:	00361813          	slli	a6,a2,0x3
a00031ac:	7ff5f593          	andi	a1,a1,2047
a00031b0:	7ff00613          	li	a2,2047
a00031b4:	8f5d                	or	a4,a4,a5
a00031b6:	7ff47413          	andi	s0,s0,2047
a00031ba:	00351793          	slli	a5,a0,0x3
a00031be:	0116e6b3          	or	a3,a3,a7
a00031c2:	00c59563          	bne	a1,a2,a00031cc <__subdf3+0x62>
a00031c6:	0106e633          	or	a2,a3,a6
a00031ca:	e219                	bnez	a2,a00031d0 <__subdf3+0x66>
a00031cc:	00134313          	xori	t1,t1,1
a00031d0:	40b40633          	sub	a2,s0,a1
a00031d4:	3c931663          	bne	t1,s1,a00035a0 <__subdf3+0x436>
a00031d8:	12c05063          	blez	a2,a00032f8 <__subdf3+0x18e>
a00031dc:	e9a9                	bnez	a1,a000322e <__subdf3+0xc4>
a00031de:	0106e533          	or	a0,a3,a6
a00031e2:	e10d                	bnez	a0,a0003204 <__subdf3+0x9a>
a00031e4:	7ff00693          	li	a3,2047
a00031e8:	4401                	li	s0,0
a00031ea:	24d61363          	bne	a2,a3,a0003430 <__subdf3+0x2c6>
a00031ee:	00f766b3          	or	a3,a4,a5
a00031f2:	78068e63          	beqz	a3,a000398e <__subdf3+0x824>
a00031f6:	00400437          	lui	s0,0x400
a00031fa:	8c79                	and	s0,s0,a4
a00031fc:	00143413          	seqz	s0,s0
a0003200:	0412                	slli	s0,s0,0x4
a0003202:	a43d                	j	a0003430 <__subdf3+0x2c6>
a0003204:	fff60513          	addi	a0,a2,-1
a0003208:	e901                	bnez	a0,a0003218 <__subdf3+0xae>
a000320a:	983e                	add	a6,a6,a5
a000320c:	96ba                	add	a3,a3,a4
a000320e:	00f837b3          	sltu	a5,a6,a5
a0003212:	96be                	add	a3,a3,a5
a0003214:	4605                	li	a2,1
a0003216:	a041                	j	a0003296 <__subdf3+0x12c>
a0003218:	7ff00893          	li	a7,2047
a000321c:	03161f63          	bne	a2,a7,a000325a <__subdf3+0xf0>
a0003220:	00f766b3          	or	a3,a4,a5
a0003224:	fae9                	bnez	a3,a00031f6 <__subdf3+0x8c>
a0003226:	4701                	li	a4,0
a0003228:	4781                	li	a5,0
a000322a:	4401                	li	s0,0
a000322c:	ac8d                	j	a000349e <__subdf3+0x334>
a000322e:	7ff00593          	li	a1,2047
a0003232:	02b41063          	bne	s0,a1,a0003252 <__subdf3+0xe8>
a0003236:	00f766b3          	or	a3,a4,a5
a000323a:	74068d63          	beqz	a3,a0003994 <__subdf3+0x82a>
a000323e:	004006b7          	lui	a3,0x400
a0003242:	8ef9                	and	a3,a3,a4
a0003244:	7ff00613          	li	a2,2047
a0003248:	4581                	li	a1,0
a000324a:	2e069063          	bnez	a3,a000352a <__subdf3+0x3c0>
a000324e:	4441                	li	s0,16
a0003250:	a2c5                	j	a0003430 <__subdf3+0x2c6>
a0003252:	008005b7          	lui	a1,0x800
a0003256:	8ecd                	or	a3,a3,a1
a0003258:	8532                	mv	a0,a2
a000325a:	03800613          	li	a2,56
a000325e:	08a64863          	blt	a2,a0,a00032ee <__subdf3+0x184>
a0003262:	467d                	li	a2,31
a0003264:	04a64f63          	blt	a2,a0,a00032c2 <__subdf3+0x158>
a0003268:	02000613          	li	a2,32
a000326c:	8e09                	sub	a2,a2,a0
a000326e:	00c695b3          	sll	a1,a3,a2
a0003272:	00a858b3          	srl	a7,a6,a0
a0003276:	00c81833          	sll	a6,a6,a2
a000327a:	0115e5b3          	or	a1,a1,a7
a000327e:	01003833          	snez	a6,a6
a0003282:	0105e833          	or	a6,a1,a6
a0003286:	00a6d6b3          	srl	a3,a3,a0
a000328a:	983e                	add	a6,a6,a5
a000328c:	96ba                	add	a3,a3,a4
a000328e:	00f837b3          	sltu	a5,a6,a5
a0003292:	96be                	add	a3,a3,a5
a0003294:	8622                	mv	a2,s0
a0003296:	008007b7          	lui	a5,0x800
a000329a:	8ff5                	and	a5,a5,a3
a000329c:	cbad                	beqz	a5,a000330e <__subdf3+0x1a4>
a000329e:	0605                	addi	a2,a2,1
a00032a0:	7ff00793          	li	a5,2047
a00032a4:	2cf60e63          	beq	a2,a5,a0003580 <__subdf3+0x416>
a00032a8:	ff800737          	lui	a4,0xff800
a00032ac:	177d                	addi	a4,a4,-1
a00032ae:	00185793          	srli	a5,a6,0x1
a00032b2:	8f75                	and	a4,a4,a3
a00032b4:	00187813          	andi	a6,a6,1
a00032b8:	0107e833          	or	a6,a5,a6
a00032bc:	01f71793          	slli	a5,a4,0x1f
a00032c0:	a48d                	j	a0003522 <__subdf3+0x3b8>
a00032c2:	fe050593          	addi	a1,a0,-32
a00032c6:	02000893          	li	a7,32
a00032ca:	00b6d5b3          	srl	a1,a3,a1
a00032ce:	4601                	li	a2,0
a00032d0:	01150763          	beq	a0,a7,a00032de <__subdf3+0x174>
a00032d4:	04000613          	li	a2,64
a00032d8:	8e09                	sub	a2,a2,a0
a00032da:	00c69633          	sll	a2,a3,a2
a00032de:	01066833          	or	a6,a2,a6
a00032e2:	01003833          	snez	a6,a6
a00032e6:	0105e833          	or	a6,a1,a6
a00032ea:	4681                	li	a3,0
a00032ec:	bf79                	j	a000328a <__subdf3+0x120>
a00032ee:	0106e833          	or	a6,a3,a6
a00032f2:	01003833          	snez	a6,a6
a00032f6:	bfd5                	j	a00032ea <__subdf3+0x180>
a00032f8:	ce65                	beqz	a2,a00033f0 <__subdf3+0x286>
a00032fa:	40858633          	sub	a2,a1,s0
a00032fe:	e829                	bnez	s0,a0003350 <__subdf3+0x1e6>
a0003300:	00f76533          	or	a0,a4,a5
a0003304:	e911                	bnez	a0,a0003318 <__subdf3+0x1ae>
a0003306:	7ff00793          	li	a5,2047
a000330a:	02f60663          	beq	a2,a5,a0003336 <__subdf3+0x1cc>
a000330e:	8736                	mv	a4,a3
a0003310:	87c2                	mv	a5,a6
a0003312:	46060e63          	beqz	a2,a000378e <__subdf3+0x624>
a0003316:	ac09                	j	a0003528 <__subdf3+0x3be>
a0003318:	fff60893          	addi	a7,a2,-1
a000331c:	00089963          	bnez	a7,a000332e <__subdf3+0x1c4>
a0003320:	97c2                	add	a5,a5,a6
a0003322:	0107b833          	sltu	a6,a5,a6
a0003326:	96ba                	add	a3,a3,a4
a0003328:	96c2                	add	a3,a3,a6
a000332a:	883e                	mv	a6,a5
a000332c:	b5e5                	j	a0003214 <__subdf3+0xaa>
a000332e:	7ff00513          	li	a0,2047
a0003332:	04a61663          	bne	a2,a0,a000337e <__subdf3+0x214>
a0003336:	0106e7b3          	or	a5,a3,a6
a000333a:	4701                	li	a4,0
a000333c:	16078163          	beqz	a5,a000349e <__subdf3+0x334>
a0003340:	004007b7          	lui	a5,0x400
a0003344:	8ff5                	and	a5,a5,a3
a0003346:	8736                	mv	a4,a3
a0003348:	64079963          	bnez	a5,a000399a <__subdf3+0x830>
a000334c:	87c2                	mv	a5,a6
a000334e:	a015                	j	a0003372 <__subdf3+0x208>
a0003350:	7ff00513          	li	a0,2047
a0003354:	02a59163          	bne	a1,a0,a0003376 <__subdf3+0x20c>
a0003358:	0106e7b3          	or	a5,a3,a6
a000335c:	60078b63          	beqz	a5,a0003972 <__subdf3+0x808>
a0003360:	004007b7          	lui	a5,0x400
a0003364:	8ff5                	and	a5,a5,a3
a0003366:	8736                	mv	a4,a3
a0003368:	60079963          	bnez	a5,a000397a <__subdf3+0x810>
a000336c:	87c2                	mv	a5,a6
a000336e:	7ff00613          	li	a2,2047
a0003372:	4581                	li	a1,0
a0003374:	bde9                	j	a000324e <__subdf3+0xe4>
a0003376:	00800537          	lui	a0,0x800
a000337a:	8f49                	or	a4,a4,a0
a000337c:	88b2                	mv	a7,a2
a000337e:	03800613          	li	a2,56
a0003382:	07164363          	blt	a2,a7,a00033e8 <__subdf3+0x27e>
a0003386:	467d                	li	a2,31
a0003388:	03164b63          	blt	a2,a7,a00033be <__subdf3+0x254>
a000338c:	02000513          	li	a0,32
a0003390:	41150533          	sub	a0,a0,a7
a0003394:	00a71633          	sll	a2,a4,a0
a0003398:	0117d333          	srl	t1,a5,a7
a000339c:	00a797b3          	sll	a5,a5,a0
a00033a0:	00666633          	or	a2,a2,t1
a00033a4:	00f037b3          	snez	a5,a5
a00033a8:	8fd1                	or	a5,a5,a2
a00033aa:	01175733          	srl	a4,a4,a7
a00033ae:	97c2                	add	a5,a5,a6
a00033b0:	9736                	add	a4,a4,a3
a00033b2:	0107b6b3          	sltu	a3,a5,a6
a00033b6:	96ba                	add	a3,a3,a4
a00033b8:	883e                	mv	a6,a5
a00033ba:	862e                	mv	a2,a1
a00033bc:	bde9                	j	a0003296 <__subdf3+0x12c>
a00033be:	fe088613          	addi	a2,a7,-32 # fffe0 <remain_wifi_ram+0xdffe0>
a00033c2:	02000313          	li	t1,32
a00033c6:	00c75633          	srl	a2,a4,a2
a00033ca:	4501                	li	a0,0
a00033cc:	00688863          	beq	a7,t1,a00033dc <__subdf3+0x272>
a00033d0:	04000513          	li	a0,64
a00033d4:	41150533          	sub	a0,a0,a7
a00033d8:	00a71533          	sll	a0,a4,a0
a00033dc:	8fc9                	or	a5,a5,a0
a00033de:	00f037b3          	snez	a5,a5
a00033e2:	8fd1                	or	a5,a5,a2
a00033e4:	4701                	li	a4,0
a00033e6:	b7e1                	j	a00033ae <__subdf3+0x244>
a00033e8:	8fd9                	or	a5,a5,a4
a00033ea:	00f037b3          	snez	a5,a5
a00033ee:	bfdd                	j	a00033e4 <__subdf3+0x27a>
a00033f0:	00140613          	addi	a2,s0,1 # 400001 <remain_wifi_ram+0x3e0001>
a00033f4:	7fe67513          	andi	a0,a2,2046
a00033f8:	10051863          	bnez	a0,a0003508 <__subdf3+0x39e>
a00033fc:	00f76633          	or	a2,a4,a5
a0003400:	e039                	bnez	s0,a0003446 <__subdf3+0x2dc>
a0003402:	52060b63          	beqz	a2,a0003938 <__subdf3+0x7ce>
a0003406:	0106e633          	or	a2,a3,a6
a000340a:	38060263          	beqz	a2,a000378e <__subdf3+0x624>
a000340e:	983e                	add	a6,a6,a5
a0003410:	00f837b3          	sltu	a5,a6,a5
a0003414:	9736                	add	a4,a4,a3
a0003416:	973e                	add	a4,a4,a5
a0003418:	008007b7          	lui	a5,0x800
a000341c:	8ff9                	and	a5,a5,a4
a000341e:	50078e63          	beqz	a5,a000393a <__subdf3+0x7d0>
a0003422:	ff8007b7          	lui	a5,0xff800
a0003426:	17fd                	addi	a5,a5,-1
a0003428:	8f7d                	and	a4,a4,a5
a000342a:	4581                	li	a1,0
a000342c:	87c2                	mv	a5,a6
a000342e:	4605                	li	a2,1
a0003430:	0077f693          	andi	a3,a5,7
a0003434:	12069063          	bnez	a3,a0003554 <__subdf3+0x3ea>
a0003438:	c1bd                	beqz	a1,a000349e <__subdf3+0x334>
a000343a:	00147693          	andi	a3,s0,1
a000343e:	c2a5                	beqz	a3,a000349e <__subdf3+0x334>
a0003440:	00246413          	ori	s0,s0,2
a0003444:	a8a9                	j	a000349e <__subdf3+0x334>
a0003446:	7ff00513          	li	a0,2047
a000344a:	02a41563          	bne	s0,a0,a0003474 <__subdf3+0x30a>
a000344e:	5c060463          	beqz	a2,a0003a16 <__subdf3+0x8ac>
a0003452:	00400437          	lui	s0,0x400
a0003456:	8c79                	and	s0,s0,a4
a0003458:	00143413          	seqz	s0,s0
a000345c:	0412                	slli	s0,s0,0x4
a000345e:	02a59763          	bne	a1,a0,a000348c <__subdf3+0x322>
a0003462:	0106e5b3          	or	a1,a3,a6
a0003466:	c991                	beqz	a1,a000347a <__subdf3+0x310>
a0003468:	004005b7          	lui	a1,0x400
a000346c:	8df5                	and	a1,a1,a3
a000346e:	e591                	bnez	a1,a000347a <__subdf3+0x310>
a0003470:	4441                	li	s0,16
a0003472:	a021                	j	a000347a <__subdf3+0x310>
a0003474:	4401                	li	s0,0
a0003476:	fea586e3          	beq	a1,a0,a0003462 <__subdf3+0x2f8>
a000347a:	ea09                	bnez	a2,a000348c <__subdf3+0x322>
a000347c:	8736                	mv	a4,a3
a000347e:	87c2                	mv	a5,a6
a0003480:	4581                	li	a1,0
a0003482:	7ff00613          	li	a2,2047
a0003486:	b76d                	j	a0003430 <__subdf3+0x2c6>
a0003488:	4401                	li	s0,0
a000348a:	bfe1                	j	a0003462 <__subdf3+0x2f8>
a000348c:	0106e6b3          	or	a3,a3,a6
a0003490:	dae5                	beqz	a3,a0003480 <__subdf3+0x316>
a0003492:	4481                	li	s1,0
a0003494:	00400737          	lui	a4,0x400
a0003498:	4781                	li	a5,0
a000349a:	7ff00613          	li	a2,2047
a000349e:	008006b7          	lui	a3,0x800
a00034a2:	8ef9                	and	a3,a3,a4
a00034a4:	ca91                	beqz	a3,a00034b8 <__subdf3+0x34e>
a00034a6:	0605                	addi	a2,a2,1
a00034a8:	7ff00693          	li	a3,2047
a00034ac:	52d60e63          	beq	a2,a3,a00039e8 <__subdf3+0x87e>
a00034b0:	ff8006b7          	lui	a3,0xff800
a00034b4:	16fd                	addi	a3,a3,-1
a00034b6:	8f75                	and	a4,a4,a3
a00034b8:	0037d513          	srli	a0,a5,0x3
a00034bc:	7ff00693          	li	a3,2047
a00034c0:	01d71793          	slli	a5,a4,0x1d
a00034c4:	8fc9                	or	a5,a5,a0
a00034c6:	830d                	srli	a4,a4,0x3
a00034c8:	00d61963          	bne	a2,a3,a00034da <__subdf3+0x370>
a00034cc:	8fd9                	or	a5,a5,a4
a00034ce:	4701                	li	a4,0
a00034d0:	c789                	beqz	a5,a00034da <__subdf3+0x370>
a00034d2:	00080737          	lui	a4,0x80
a00034d6:	4781                	li	a5,0
a00034d8:	4481                	li	s1,0
a00034da:	7ff006b7          	lui	a3,0x7ff00
a00034de:	0652                	slli	a2,a2,0x14
a00034e0:	0732                	slli	a4,a4,0xc
a00034e2:	8e75                	and	a2,a2,a3
a00034e4:	8331                	srli	a4,a4,0xc
a00034e6:	8f51                	or	a4,a4,a2
a00034e8:	04fe                	slli	s1,s1,0x1f
a00034ea:	009766b3          	or	a3,a4,s1
a00034ee:	853e                	mv	a0,a5
a00034f0:	85b6                	mv	a1,a3
a00034f2:	c019                	beqz	s0,a00034f8 <__subdf3+0x38e>
a00034f4:	00142073          	csrs	fflags,s0
a00034f8:	40f2                	lw	ra,28(sp)
a00034fa:	4462                	lw	s0,24(sp)
a00034fc:	44d2                	lw	s1,20(sp)
a00034fe:	4942                	lw	s2,16(sp)
a0003500:	49b2                	lw	s3,12(sp)
a0003502:	4a22                	lw	s4,8(sp)
a0003504:	6105                	addi	sp,sp,32
a0003506:	8082                	ret
a0003508:	7ff00593          	li	a1,2047
a000350c:	02b60163          	beq	a2,a1,a000352e <__subdf3+0x3c4>
a0003510:	983e                	add	a6,a6,a5
a0003512:	00f837b3          	sltu	a5,a6,a5
a0003516:	9736                	add	a4,a4,a3
a0003518:	973e                	add	a4,a4,a5
a000351a:	01f71793          	slli	a5,a4,0x1f
a000351e:	00185813          	srli	a6,a6,0x1
a0003522:	0107e7b3          	or	a5,a5,a6
a0003526:	8305                	srli	a4,a4,0x1
a0003528:	4581                	li	a1,0
a000352a:	4401                	li	s0,0
a000352c:	b711                	j	a0003430 <__subdf3+0x2c6>
a000352e:	00098663          	beqz	s3,a000353a <__subdf3+0x3d0>
a0003532:	478d                	li	a5,3
a0003534:	00f99663          	bne	s3,a5,a0003540 <__subdf3+0x3d6>
a0003538:	e881                	bnez	s1,a0003548 <__subdf3+0x3de>
a000353a:	7ff00613          	li	a2,2047
a000353e:	a881                	j	a000358e <__subdf3+0x424>
a0003540:	4789                	li	a5,2
a0003542:	00f99363          	bne	s3,a5,a0003548 <__subdf3+0x3de>
a0003546:	f8f5                	bnez	s1,a000353a <__subdf3+0x3d0>
a0003548:	4581                	li	a1,0
a000354a:	577d                	li	a4,-1
a000354c:	57fd                	li	a5,-1
a000354e:	7fe00613          	li	a2,2046
a0003552:	4415                	li	s0,5
a0003554:	4689                	li	a3,2
a0003556:	00146413          	ori	s0,s0,1
a000355a:	48d98363          	beq	s3,a3,a00039e0 <__subdf3+0x876>
a000355e:	468d                	li	a3,3
a0003560:	46d98c63          	beq	s3,a3,a00039d8 <__subdf3+0x86e>
a0003564:	46099f63          	bnez	s3,a00039e2 <__subdf3+0x878>
a0003568:	00f7f693          	andi	a3,a5,15
a000356c:	4511                	li	a0,4
a000356e:	46a68a63          	beq	a3,a0,a00039e2 <__subdf3+0x878>
a0003572:	00478693          	addi	a3,a5,4 # ff800004 <__psram_limit+0x57400004>
a0003576:	00f6b7b3          	sltu	a5,a3,a5
a000357a:	973e                	add	a4,a4,a5
a000357c:	87b6                	mv	a5,a3
a000357e:	a195                	j	a00039e2 <__subdf3+0x878>
a0003580:	00098763          	beqz	s3,a000358e <__subdf3+0x424>
a0003584:	478d                	li	a5,3
a0003586:	00f99863          	bne	s3,a5,a0003596 <__subdf3+0x42c>
a000358a:	3e049c63          	bnez	s1,a0003982 <__subdf3+0x818>
a000358e:	4701                	li	a4,0
a0003590:	4781                	li	a5,0
a0003592:	4415                	li	s0,5
a0003594:	b729                	j	a000349e <__subdf3+0x334>
a0003596:	4789                	li	a5,2
a0003598:	3ef99563          	bne	s3,a5,a0003982 <__subdf3+0x818>
a000359c:	f8ed                	bnez	s1,a000358e <__subdf3+0x424>
a000359e:	b76d                	j	a0003548 <__subdf3+0x3de>
a00035a0:	0cc05763          	blez	a2,a000366e <__subdf3+0x504>
a00035a4:	e1c9                	bnez	a1,a0003626 <__subdf3+0x4bc>
a00035a6:	0106e533          	or	a0,a3,a6
a00035aa:	c2050de3          	beqz	a0,a00031e4 <__subdf3+0x7a>
a00035ae:	fff60513          	addi	a0,a2,-1
a00035b2:	e911                	bnez	a0,a00035c6 <__subdf3+0x45c>
a00035b4:	41078833          	sub	a6,a5,a6
a00035b8:	40d706b3          	sub	a3,a4,a3
a00035bc:	0107b7b3          	sltu	a5,a5,a6
a00035c0:	8e9d                	sub	a3,a3,a5
a00035c2:	4605                	li	a2,1
a00035c4:	a0a9                	j	a000360e <__subdf3+0x4a4>
a00035c6:	7ff00893          	li	a7,2047
a00035ca:	c5160be3          	beq	a2,a7,a0003220 <__subdf3+0xb6>
a00035ce:	03800613          	li	a2,56
a00035d2:	08a64963          	blt	a2,a0,a0003664 <__subdf3+0x4fa>
a00035d6:	467d                	li	a2,31
a00035d8:	06a64063          	blt	a2,a0,a0003638 <__subdf3+0x4ce>
a00035dc:	02000613          	li	a2,32
a00035e0:	8e09                	sub	a2,a2,a0
a00035e2:	00c695b3          	sll	a1,a3,a2
a00035e6:	00a858b3          	srl	a7,a6,a0
a00035ea:	00c81833          	sll	a6,a6,a2
a00035ee:	0115e5b3          	or	a1,a1,a7
a00035f2:	01003833          	snez	a6,a6
a00035f6:	0105e833          	or	a6,a1,a6
a00035fa:	00a6d6b3          	srl	a3,a3,a0
a00035fe:	41078833          	sub	a6,a5,a6
a0003602:	40d706b3          	sub	a3,a4,a3
a0003606:	0107b7b3          	sltu	a5,a5,a6
a000360a:	8e9d                	sub	a3,a3,a5
a000360c:	8622                	mv	a2,s0
a000360e:	00800937          	lui	s2,0x800
a0003612:	0126f7b3          	and	a5,a3,s2
a0003616:	ce078ce3          	beqz	a5,a000330e <__subdf3+0x1a4>
a000361a:	197d                	addi	s2,s2,-1
a000361c:	0126f933          	and	s2,a3,s2
a0003620:	8a42                	mv	s4,a6
a0003622:	8432                	mv	s0,a2
a0003624:	a4b5                	j	a0003890 <__subdf3+0x726>
a0003626:	7ff00593          	li	a1,2047
a000362a:	c0b406e3          	beq	s0,a1,a0003236 <__subdf3+0xcc>
a000362e:	008005b7          	lui	a1,0x800
a0003632:	8ecd                	or	a3,a3,a1
a0003634:	8532                	mv	a0,a2
a0003636:	bf61                	j	a00035ce <__subdf3+0x464>
a0003638:	fe050593          	addi	a1,a0,-32 # 7fffe0 <remain_wifi_ram+0x7dffe0>
a000363c:	02000893          	li	a7,32
a0003640:	00b6d5b3          	srl	a1,a3,a1
a0003644:	4601                	li	a2,0
a0003646:	01150763          	beq	a0,a7,a0003654 <__subdf3+0x4ea>
a000364a:	04000613          	li	a2,64
a000364e:	8e09                	sub	a2,a2,a0
a0003650:	00c69633          	sll	a2,a3,a2
a0003654:	01066833          	or	a6,a2,a6
a0003658:	01003833          	snez	a6,a6
a000365c:	0105e833          	or	a6,a1,a6
a0003660:	4681                	li	a3,0
a0003662:	bf71                	j	a00035fe <__subdf3+0x494>
a0003664:	0106e833          	or	a6,a3,a6
a0003668:	01003833          	snez	a6,a6
a000366c:	bfd5                	j	a0003660 <__subdf3+0x4f6>
a000366e:	ce6d                	beqz	a2,a0003768 <__subdf3+0x5fe>
a0003670:	40858633          	sub	a2,a1,s0
a0003674:	e439                	bnez	s0,a00036c2 <__subdf3+0x558>
a0003676:	00f76533          	or	a0,a4,a5
a000367a:	e509                	bnez	a0,a0003684 <__subdf3+0x51a>
a000367c:	7ff00793          	li	a5,2047
a0003680:	849a                	mv	s1,t1
a0003682:	b161                	j	a000330a <__subdf3+0x1a0>
a0003684:	fff60893          	addi	a7,a2,-1
a0003688:	00089c63          	bnez	a7,a00036a0 <__subdf3+0x536>
a000368c:	40f807b3          	sub	a5,a6,a5
a0003690:	00f83833          	sltu	a6,a6,a5
a0003694:	8e99                	sub	a3,a3,a4
a0003696:	410686b3          	sub	a3,a3,a6
a000369a:	849a                	mv	s1,t1
a000369c:	883e                	mv	a6,a5
a000369e:	b715                	j	a00035c2 <__subdf3+0x458>
a00036a0:	7ff00513          	li	a0,2047
a00036a4:	04a61563          	bne	a2,a0,a00036ee <__subdf3+0x584>
a00036a8:	0106e7b3          	or	a5,a3,a6
a00036ac:	2e078a63          	beqz	a5,a00039a0 <__subdf3+0x836>
a00036b0:	004007b7          	lui	a5,0x400
a00036b4:	8ff5                	and	a5,a5,a3
a00036b6:	8736                	mv	a4,a3
a00036b8:	2e079763          	bnez	a5,a00039a6 <__subdf3+0x83c>
a00036bc:	87c2                	mv	a5,a6
a00036be:	849a                	mv	s1,t1
a00036c0:	b94d                	j	a0003372 <__subdf3+0x208>
a00036c2:	7ff00513          	li	a0,2047
a00036c6:	02a59063          	bne	a1,a0,a00036e6 <__subdf3+0x57c>
a00036ca:	0106e7b3          	or	a5,a3,a6
a00036ce:	2c078f63          	beqz	a5,a00039ac <__subdf3+0x842>
a00036d2:	004007b7          	lui	a5,0x400
a00036d6:	8ff5                	and	a5,a5,a3
a00036d8:	8736                	mv	a4,a3
a00036da:	2c079e63          	bnez	a5,a00039b6 <__subdf3+0x84c>
a00036de:	87c2                	mv	a5,a6
a00036e0:	7ff00613          	li	a2,2047
a00036e4:	bfe9                	j	a00036be <__subdf3+0x554>
a00036e6:	00800537          	lui	a0,0x800
a00036ea:	8f49                	or	a4,a4,a0
a00036ec:	88b2                	mv	a7,a2
a00036ee:	03800613          	li	a2,56
a00036f2:	07164763          	blt	a2,a7,a0003760 <__subdf3+0x5f6>
a00036f6:	467d                	li	a2,31
a00036f8:	03164f63          	blt	a2,a7,a0003736 <__subdf3+0x5cc>
a00036fc:	02000513          	li	a0,32
a0003700:	41150533          	sub	a0,a0,a7
a0003704:	00a71633          	sll	a2,a4,a0
a0003708:	0117de33          	srl	t3,a5,a7
a000370c:	00a797b3          	sll	a5,a5,a0
a0003710:	01c66633          	or	a2,a2,t3
a0003714:	00f037b3          	snez	a5,a5
a0003718:	8fd1                	or	a5,a5,a2
a000371a:	01175733          	srl	a4,a4,a7
a000371e:	40f807b3          	sub	a5,a6,a5
a0003722:	40e68733          	sub	a4,a3,a4
a0003726:	00f836b3          	sltu	a3,a6,a5
a000372a:	40d706b3          	sub	a3,a4,a3
a000372e:	883e                	mv	a6,a5
a0003730:	862e                	mv	a2,a1
a0003732:	849a                	mv	s1,t1
a0003734:	bde9                	j	a000360e <__subdf3+0x4a4>
a0003736:	fe088613          	addi	a2,a7,-32
a000373a:	02000e13          	li	t3,32
a000373e:	00c75633          	srl	a2,a4,a2
a0003742:	4501                	li	a0,0
a0003744:	01c88863          	beq	a7,t3,a0003754 <__subdf3+0x5ea>
a0003748:	04000513          	li	a0,64
a000374c:	41150533          	sub	a0,a0,a7
a0003750:	00a71533          	sll	a0,a4,a0
a0003754:	8fc9                	or	a5,a5,a0
a0003756:	00f037b3          	snez	a5,a5
a000375a:	8fd1                	or	a5,a5,a2
a000375c:	4701                	li	a4,0
a000375e:	b7c1                	j	a000371e <__subdf3+0x5b4>
a0003760:	8fd9                	or	a5,a5,a4
a0003762:	00f037b3          	snez	a5,a5
a0003766:	bfdd                	j	a000375c <__subdf3+0x5f2>
a0003768:	00140613          	addi	a2,s0,1 # 400001 <remain_wifi_ram+0x3e0001>
a000376c:	7fe67613          	andi	a2,a2,2046
a0003770:	ea7d                	bnez	a2,a0003866 <__subdf3+0x6fc>
a0003772:	0106e633          	or	a2,a3,a6
a0003776:	00f76533          	or	a0,a4,a5
a000377a:	e055                	bnez	s0,a000381e <__subdf3+0x6b4>
a000377c:	e12d                	bnez	a0,a00037de <__subdf3+0x674>
a000377e:	1c061063          	bnez	a2,a000393e <__subdf3+0x7d4>
a0003782:	ffe98493          	addi	s1,s3,-2
a0003786:	0014b493          	seqz	s1,s1
a000378a:	4701                	li	a4,0
a000378c:	4781                	li	a5,0
a000378e:	00e7e6b3          	or	a3,a5,a4
a0003792:	22068f63          	beqz	a3,a00039d0 <__subdf3+0x866>
a0003796:	01f7d693          	srli	a3,a5,0x1f
a000379a:	00171593          	slli	a1,a4,0x1
a000379e:	95b6                	add	a1,a1,a3
a00037a0:	00179693          	slli	a3,a5,0x1
a00037a4:	0076f613          	andi	a2,a3,7
a00037a8:	4401                	li	s0,0
a00037aa:	c605                	beqz	a2,a00037d2 <__subdf3+0x668>
a00037ac:	4609                	li	a2,2
a00037ae:	1ac98863          	beq	s3,a2,a000395e <__subdf3+0x7f4>
a00037b2:	460d                	li	a2,3
a00037b4:	18c98b63          	beq	s3,a2,a000394a <__subdf3+0x7e0>
a00037b8:	4405                	li	s0,1
a00037ba:	00099c63          	bnez	s3,a00037d2 <__subdf3+0x668>
a00037be:	00f6f613          	andi	a2,a3,15
a00037c2:	4511                	li	a0,4
a00037c4:	00a60763          	beq	a2,a0,a00037d2 <__subdf3+0x668>
a00037c8:	ffc6b693          	sltiu	a3,a3,-4
a00037cc:	0016c693          	xori	a3,a3,1
a00037d0:	95b6                	add	a1,a1,a3
a00037d2:	81e1                	srli	a1,a1,0x18
a00037d4:	0015c593          	xori	a1,a1,1
a00037d8:	8985                	andi	a1,a1,1
a00037da:	4601                	li	a2,0
a00037dc:	b991                	j	a0003430 <__subdf3+0x2c6>
a00037de:	da45                	beqz	a2,a000378e <__subdf3+0x624>
a00037e0:	410785b3          	sub	a1,a5,a6
a00037e4:	00b7b533          	sltu	a0,a5,a1
a00037e8:	40d70633          	sub	a2,a4,a3
a00037ec:	8e09                	sub	a2,a2,a0
a00037ee:	00800537          	lui	a0,0x800
a00037f2:	8d71                	and	a0,a0,a2
a00037f4:	c919                	beqz	a0,a000380a <__subdf3+0x6a0>
a00037f6:	40f807b3          	sub	a5,a6,a5
a00037fa:	40e68733          	sub	a4,a3,a4
a00037fe:	00f83833          	sltu	a6,a6,a5
a0003802:	41070733          	sub	a4,a4,a6
a0003806:	849a                	mv	s1,t1
a0003808:	b759                	j	a000378e <__subdf3+0x624>
a000380a:	00c5e7b3          	or	a5,a1,a2
a000380e:	12079b63          	bnez	a5,a0003944 <__subdf3+0x7da>
a0003812:	ffe98493          	addi	s1,s3,-2
a0003816:	0014b493          	seqz	s1,s1
a000381a:	4701                	li	a4,0
a000381c:	bf8d                	j	a000378e <__subdf3+0x624>
a000381e:	7ff00893          	li	a7,2047
a0003822:	03141363          	bne	s0,a7,a0003848 <__subdf3+0x6de>
a0003826:	1e050463          	beqz	a0,a0003a0e <__subdf3+0x8a4>
a000382a:	00400437          	lui	s0,0x400
a000382e:	8c79                	and	s0,s0,a4
a0003830:	00143413          	seqz	s0,s0
a0003834:	0412                	slli	s0,s0,0x4
a0003836:	03159563          	bne	a1,a7,a0003860 <__subdf3+0x6f6>
a000383a:	ca11                	beqz	a2,a000384e <__subdf3+0x6e4>
a000383c:	004005b7          	lui	a1,0x400
a0003840:	8df5                	and	a1,a1,a3
a0003842:	e591                	bnez	a1,a000384e <__subdf3+0x6e4>
a0003844:	4441                	li	s0,16
a0003846:	a021                	j	a000384e <__subdf3+0x6e4>
a0003848:	4401                	li	s0,0
a000384a:	ff1588e3          	beq	a1,a7,a000383a <__subdf3+0x6d0>
a000384e:	e909                	bnez	a0,a0003860 <__subdf3+0x6f6>
a0003850:	16060863          	beqz	a2,a00039c0 <__subdf3+0x856>
a0003854:	8736                	mv	a4,a3
a0003856:	87c2                	mv	a5,a6
a0003858:	849a                	mv	s1,t1
a000385a:	b11d                	j	a0003480 <__subdf3+0x316>
a000385c:	4401                	li	s0,0
a000385e:	bff1                	j	a000383a <__subdf3+0x6d0>
a0003860:	c20600e3          	beqz	a2,a0003480 <__subdf3+0x316>
a0003864:	b13d                	j	a0003492 <__subdf3+0x328>
a0003866:	41078a33          	sub	s4,a5,a6
a000386a:	0147b633          	sltu	a2,a5,s4
a000386e:	40d70933          	sub	s2,a4,a3
a0003872:	40c90933          	sub	s2,s2,a2
a0003876:	00800637          	lui	a2,0x800
a000387a:	00c97633          	and	a2,s2,a2
a000387e:	c625                	beqz	a2,a00038e6 <__subdf3+0x77c>
a0003880:	40f80a33          	sub	s4,a6,a5
a0003884:	8e99                	sub	a3,a3,a4
a0003886:	01483833          	sltu	a6,a6,s4
a000388a:	41068933          	sub	s2,a3,a6
a000388e:	849a                	mv	s1,t1
a0003890:	04090f63          	beqz	s2,a00038ee <__subdf3+0x784>
a0003894:	854a                	mv	a0,s2
a0003896:	2b8d                	jal	a0003e08 <__clzsi2>
a0003898:	ff850613          	addi	a2,a0,-8 # 7ffff8 <remain_wifi_ram+0x7dfff8>
a000389c:	47fd                	li	a5,31
a000389e:	04c7cd63          	blt	a5,a2,a00038f8 <__subdf3+0x78e>
a00038a2:	02000693          	li	a3,32
a00038a6:	8e91                	sub	a3,a3,a2
a00038a8:	00c91733          	sll	a4,s2,a2
a00038ac:	00da56b3          	srl	a3,s4,a3
a00038b0:	8ed9                	or	a3,a3,a4
a00038b2:	00ca1833          	sll	a6,s4,a2
a00038b6:	06864a63          	blt	a2,s0,a000392a <__subdf3+0x7c0>
a00038ba:	8e01                	sub	a2,a2,s0
a00038bc:	00160713          	addi	a4,a2,1 # 800001 <remain_wifi_ram+0x7e0001>
a00038c0:	47fd                	li	a5,31
a00038c2:	04e7c163          	blt	a5,a4,a0003904 <__subdf3+0x79a>
a00038c6:	02000613          	li	a2,32
a00038ca:	8e19                	sub	a2,a2,a4
a00038cc:	00c697b3          	sll	a5,a3,a2
a00038d0:	00e85533          	srl	a0,a6,a4
a00038d4:	00c81633          	sll	a2,a6,a2
a00038d8:	8fc9                	or	a5,a5,a0
a00038da:	00c03633          	snez	a2,a2
a00038de:	8fd1                	or	a5,a5,a2
a00038e0:	00e6d733          	srl	a4,a3,a4
a00038e4:	b56d                	j	a000378e <__subdf3+0x624>
a00038e6:	012a67b3          	or	a5,s4,s2
a00038ea:	f3dd                	bnez	a5,a0003890 <__subdf3+0x726>
a00038ec:	b71d                	j	a0003812 <__subdf3+0x6a8>
a00038ee:	8552                	mv	a0,s4
a00038f0:	2b21                	jal	a0003e08 <__clzsi2>
a00038f2:	02050513          	addi	a0,a0,32
a00038f6:	b74d                	j	a0003898 <__subdf3+0x72e>
a00038f8:	fd850693          	addi	a3,a0,-40
a00038fc:	00da16b3          	sll	a3,s4,a3
a0003900:	4801                	li	a6,0
a0003902:	bf55                	j	a00038b6 <__subdf3+0x74c>
a0003904:	1605                	addi	a2,a2,-31
a0003906:	02000593          	li	a1,32
a000390a:	00c6d633          	srl	a2,a3,a2
a000390e:	4781                	li	a5,0
a0003910:	00b70763          	beq	a4,a1,a000391e <__subdf3+0x7b4>
a0003914:	04000793          	li	a5,64
a0003918:	8f99                	sub	a5,a5,a4
a000391a:	00f697b3          	sll	a5,a3,a5
a000391e:	00f867b3          	or	a5,a6,a5
a0003922:	00f037b3          	snez	a5,a5
a0003926:	8fd1                	or	a5,a5,a2
a0003928:	bdcd                	j	a000381a <__subdf3+0x6b0>
a000392a:	ff8007b7          	lui	a5,0xff800
a000392e:	17fd                	addi	a5,a5,-1
a0003930:	40c40633          	sub	a2,s0,a2
a0003934:	8efd                	and	a3,a3,a5
a0003936:	bae1                	j	a000330e <__subdf3+0x1a4>
a0003938:	8736                	mv	a4,a3
a000393a:	87c2                	mv	a5,a6
a000393c:	bd89                	j	a000378e <__subdf3+0x624>
a000393e:	8736                	mv	a4,a3
a0003940:	87c2                	mv	a5,a6
a0003942:	b5d1                	j	a0003806 <__subdf3+0x69c>
a0003944:	8732                	mv	a4,a2
a0003946:	87ae                	mv	a5,a1
a0003948:	b599                	j	a000378e <__subdf3+0x624>
a000394a:	8426                	mv	s0,s1
a000394c:	e80493e3          	bnez	s1,a00037d2 <__subdf3+0x668>
a0003950:	ff86b693          	sltiu	a3,a3,-8
a0003954:	0016c693          	xori	a3,a3,1
a0003958:	95b6                	add	a1,a1,a3
a000395a:	4405                	li	s0,1
a000395c:	bd9d                	j	a00037d2 <__subdf3+0x668>
a000395e:	4405                	li	s0,1
a0003960:	e60489e3          	beqz	s1,a00037d2 <__subdf3+0x668>
a0003964:	ff86b693          	sltiu	a3,a3,-8
a0003968:	0016c693          	xori	a3,a3,1
a000396c:	95b6                	add	a1,a1,a3
a000396e:	8426                	mv	s0,s1
a0003970:	b58d                	j	a00037d2 <__subdf3+0x668>
a0003972:	4701                	li	a4,0
a0003974:	7ff00613          	li	a2,2047
a0003978:	b84d                	j	a000322a <__subdf3+0xc0>
a000397a:	87c2                	mv	a5,a6
a000397c:	7ff00613          	li	a2,2047
a0003980:	b665                	j	a0003528 <__subdf3+0x3be>
a0003982:	577d                	li	a4,-1
a0003984:	57fd                	li	a5,-1
a0003986:	7fe00613          	li	a2,2046
a000398a:	4581                	li	a1,0
a000398c:	b6d9                	j	a0003552 <__subdf3+0x3e8>
a000398e:	4701                	li	a4,0
a0003990:	4781                	li	a5,0
a0003992:	b631                	j	a000349e <__subdf3+0x334>
a0003994:	4701                	li	a4,0
a0003996:	4781                	li	a5,0
a0003998:	bff1                	j	a0003974 <__subdf3+0x80a>
a000399a:	87c2                	mv	a5,a6
a000399c:	4581                	li	a1,0
a000399e:	bc49                	j	a0003430 <__subdf3+0x2c6>
a00039a0:	4701                	li	a4,0
a00039a2:	849a                	mv	s1,t1
a00039a4:	bced                	j	a000349e <__subdf3+0x334>
a00039a6:	87c2                	mv	a5,a6
a00039a8:	849a                	mv	s1,t1
a00039aa:	bfcd                	j	a000399c <__subdf3+0x832>
a00039ac:	4701                	li	a4,0
a00039ae:	7ff00613          	li	a2,2047
a00039b2:	849a                	mv	s1,t1
a00039b4:	b89d                	j	a000322a <__subdf3+0xc0>
a00039b6:	87c2                	mv	a5,a6
a00039b8:	7ff00613          	li	a2,2047
a00039bc:	849a                	mv	s1,t1
a00039be:	b6ad                	j	a0003528 <__subdf3+0x3be>
a00039c0:	4781                	li	a5,0
a00039c2:	4481                	li	s1,0
a00039c4:	00400737          	lui	a4,0x400
a00039c8:	7ff00613          	li	a2,2047
a00039cc:	4441                	li	s0,16
a00039ce:	bcc1                	j	a000349e <__subdf3+0x334>
a00039d0:	4701                	li	a4,0
a00039d2:	4781                	li	a5,0
a00039d4:	4601                	li	a2,0
a00039d6:	b891                	j	a000322a <__subdf3+0xc0>
a00039d8:	e489                	bnez	s1,a00039e2 <__subdf3+0x878>
a00039da:	00878693          	addi	a3,a5,8 # ff800008 <__psram_limit+0x57400008>
a00039de:	be61                	j	a0003576 <__subdf3+0x40c>
a00039e0:	fced                	bnez	s1,a00039da <__subdf3+0x870>
a00039e2:	a4059fe3          	bnez	a1,a0003440 <__subdf3+0x2d6>
a00039e6:	bc65                	j	a000349e <__subdf3+0x334>
a00039e8:	4781                	li	a5,0
a00039ea:	00098e63          	beqz	s3,a0003a06 <__subdf3+0x89c>
a00039ee:	470d                	li	a4,3
a00039f0:	00e99763          	bne	s3,a4,a00039fe <__subdf3+0x894>
a00039f4:	c889                	beqz	s1,a0003a06 <__subdf3+0x89c>
a00039f6:	57fd                	li	a5,-1
a00039f8:	7fe00613          	li	a2,2046
a00039fc:	a029                	j	a0003a06 <__subdf3+0x89c>
a00039fe:	4709                	li	a4,2
a0003a00:	fee99be3          	bne	s3,a4,a00039f6 <__subdf3+0x88c>
a0003a04:	d8ed                	beqz	s1,a00039f6 <__subdf3+0x88c>
a0003a06:	00546413          	ori	s0,s0,5
a0003a0a:	873e                	mv	a4,a5
a0003a0c:	b475                	j	a00034b8 <__subdf3+0x34e>
a0003a0e:	e48587e3          	beq	a1,s0,a000385c <__subdf3+0x6f2>
a0003a12:	4401                	li	s0,0
a0003a14:	bd35                	j	a0003850 <__subdf3+0x6e6>
a0003a16:	a68589e3          	beq	a1,s0,a0003488 <__subdf3+0x31e>
a0003a1a:	4401                	li	s0,0
a0003a1c:	b485                	j	a000347c <__subdf3+0x312>

a0003a1e <__fixdfsi>:
a0003a1e:	882a                	mv	a6,a0
a0003a20:	002027f3          	frrm	a5
a0003a24:	001007b7          	lui	a5,0x100
a0003a28:	0145d693          	srli	a3,a1,0x14
a0003a2c:	fff78613          	addi	a2,a5,-1 # fffff <remain_wifi_ram+0xdffff>
a0003a30:	7ff6f693          	andi	a3,a3,2047
a0003a34:	3fe00713          	li	a4,1022
a0003a38:	8e6d                	and	a2,a2,a1
a0003a3a:	81fd                	srli	a1,a1,0x1f
a0003a3c:	00d74663          	blt	a4,a3,a0003a48 <__fixdfsi+0x2a>
a0003a40:	ead1                	bnez	a3,a0003ad4 <__fixdfsi+0xb6>
a0003a42:	8d51                	or	a0,a0,a2
a0003a44:	e941                	bnez	a0,a0003ad4 <__fixdfsi+0xb6>
a0003a46:	8082                	ret
a0003a48:	41d00713          	li	a4,1053
a0003a4c:	02d75863          	bge	a4,a3,a0003a7c <__fixdfsi+0x5e>
a0003a50:	80000737          	lui	a4,0x80000
a0003a54:	fff74713          	not	a4,a4
a0003a58:	00e58533          	add	a0,a1,a4
a0003a5c:	cdbd                	beqz	a1,a0003ada <__fixdfsi+0xbc>
a0003a5e:	41e00793          	li	a5,1054
a0003a62:	4741                	li	a4,16
a0003a64:	04f69263          	bne	a3,a5,a0003aa8 <__fixdfsi+0x8a>
a0003a68:	00b61793          	slli	a5,a2,0xb
a0003a6c:	01585613          	srli	a2,a6,0x15
a0003a70:	8fd1                	or	a5,a5,a2
a0003a72:	eb9d                	bnez	a5,a0003aa8 <__fixdfsi+0x8a>
a0003a74:	00b81713          	slli	a4,a6,0xb
a0003a78:	e33d                	bnez	a4,a0003ade <__fixdfsi+0xc0>
a0003a7a:	8082                	ret
a0003a7c:	43300513          	li	a0,1075
a0003a80:	8d15                	sub	a0,a0,a3
a0003a82:	477d                	li	a4,31
a0003a84:	8fd1                	or	a5,a5,a2
a0003a86:	02a74463          	blt	a4,a0,a0003aae <__fixdfsi+0x90>
a0003a8a:	bed68613          	addi	a2,a3,-1043 # 7feffbed <__HeapLimit+0x1cecfbed>
a0003a8e:	00c816b3          	sll	a3,a6,a2
a0003a92:	00c797b3          	sll	a5,a5,a2
a0003a96:	00a85533          	srl	a0,a6,a0
a0003a9a:	00d03733          	snez	a4,a3
a0003a9e:	8d5d                	or	a0,a0,a5
a0003aa0:	c199                	beqz	a1,a0003aa6 <__fixdfsi+0x88>
a0003aa2:	40a00533          	neg	a0,a0
a0003aa6:	c319                	beqz	a4,a0003aac <__fixdfsi+0x8e>
a0003aa8:	00172073          	csrs	fflags,a4
a0003aac:	8082                	ret
a0003aae:	02000613          	li	a2,32
a0003ab2:	4701                	li	a4,0
a0003ab4:	00c50663          	beq	a0,a2,a0003ac0 <__fixdfsi+0xa2>
a0003ab8:	c0d68713          	addi	a4,a3,-1011
a0003abc:	00e79733          	sll	a4,a5,a4
a0003ac0:	41300513          	li	a0,1043
a0003ac4:	01076733          	or	a4,a4,a6
a0003ac8:	8d15                	sub	a0,a0,a3
a0003aca:	00e03733          	snez	a4,a4
a0003ace:	00a7d533          	srl	a0,a5,a0
a0003ad2:	b7f9                	j	a0003aa0 <__fixdfsi+0x82>
a0003ad4:	4501                	li	a0,0
a0003ad6:	4705                	li	a4,1
a0003ad8:	bfc1                	j	a0003aa8 <__fixdfsi+0x8a>
a0003ada:	4741                	li	a4,16
a0003adc:	b7f1                	j	a0003aa8 <__fixdfsi+0x8a>
a0003ade:	872e                	mv	a4,a1
a0003ae0:	b7e1                	j	a0003aa8 <__fixdfsi+0x8a>

a0003ae2 <__floatsidf>:
a0003ae2:	1141                	addi	sp,sp,-16
a0003ae4:	c606                	sw	ra,12(sp)
a0003ae6:	c422                	sw	s0,8(sp)
a0003ae8:	c226                	sw	s1,4(sp)
a0003aea:	cd21                	beqz	a0,a0003b42 <__floatsidf+0x60>
a0003aec:	41f55793          	srai	a5,a0,0x1f
a0003af0:	00a7c433          	xor	s0,a5,a0
a0003af4:	8c1d                	sub	s0,s0,a5
a0003af6:	01f55493          	srli	s1,a0,0x1f
a0003afa:	8522                	mv	a0,s0
a0003afc:	2631                	jal	a0003e08 <__clzsi2>
a0003afe:	41e00713          	li	a4,1054
a0003b02:	47a9                	li	a5,10
a0003b04:	8f09                	sub	a4,a4,a0
a0003b06:	02a7c863          	blt	a5,a0,a0003b36 <__floatsidf+0x54>
a0003b0a:	47ad                	li	a5,11
a0003b0c:	8f89                	sub	a5,a5,a0
a0003b0e:	0555                	addi	a0,a0,21
a0003b10:	00f457b3          	srl	a5,s0,a5
a0003b14:	00a41433          	sll	s0,s0,a0
a0003b18:	8526                	mv	a0,s1
a0003b1a:	07b2                	slli	a5,a5,0xc
a0003b1c:	0752                	slli	a4,a4,0x14
a0003b1e:	83b1                	srli	a5,a5,0xc
a0003b20:	057e                	slli	a0,a0,0x1f
a0003b22:	8fd9                	or	a5,a5,a4
a0003b24:	40b2                	lw	ra,12(sp)
a0003b26:	00a7e733          	or	a4,a5,a0
a0003b2a:	8522                	mv	a0,s0
a0003b2c:	4422                	lw	s0,8(sp)
a0003b2e:	4492                	lw	s1,4(sp)
a0003b30:	85ba                	mv	a1,a4
a0003b32:	0141                	addi	sp,sp,16
a0003b34:	8082                	ret
a0003b36:	1555                	addi	a0,a0,-11
a0003b38:	00a417b3          	sll	a5,s0,a0
a0003b3c:	8526                	mv	a0,s1
a0003b3e:	4401                	li	s0,0
a0003b40:	bfe9                	j	a0003b1a <__floatsidf+0x38>
a0003b42:	4701                	li	a4,0
a0003b44:	4781                	li	a5,0
a0003b46:	bfe5                	j	a0003b3e <__floatsidf+0x5c>

a0003b48 <__fixdfdi>:
a0003b48:	002027f3          	frrm	a5
a0003b4c:	00100737          	lui	a4,0x100
a0003b50:	0145d613          	srli	a2,a1,0x14
a0003b54:	fff70693          	addi	a3,a4,-1 # fffff <remain_wifi_ram+0xdffff>
a0003b58:	7ff67613          	andi	a2,a2,2047
a0003b5c:	3fe00793          	li	a5,1022
a0003b60:	8eed                	and	a3,a3,a1
a0003b62:	00c7ca63          	blt	a5,a2,a0003b76 <__fixdfdi+0x2e>
a0003b66:	ea79                	bnez	a2,a0003c3c <__fixdfdi+0xf4>
a0003b68:	00a6e733          	or	a4,a3,a0
a0003b6c:	4781                	li	a5,0
a0003b6e:	4581                	li	a1,0
a0003b70:	eb61                	bnez	a4,a0003c40 <__fixdfdi+0xf8>
a0003b72:	853e                	mv	a0,a5
a0003b74:	8082                	ret
a0003b76:	1141                	addi	sp,sp,-16
a0003b78:	c422                	sw	s0,8(sp)
a0003b7a:	c606                	sw	ra,12(sp)
a0003b7c:	43d00793          	li	a5,1085
a0003b80:	01f5d413          	srli	s0,a1,0x1f
a0003b84:	02c7dc63          	bge	a5,a2,a0003bbc <__fixdfdi+0x74>
a0003b88:	4785                	li	a5,1
a0003b8a:	8f81                	sub	a5,a5,s0
a0003b8c:	41f7d813          	srai	a6,a5,0x1f
a0003b90:	800005b7          	lui	a1,0x80000
a0003b94:	00f03733          	snez	a4,a5
a0003b98:	410585b3          	sub	a1,a1,a6
a0003b9c:	40f007b3          	neg	a5,a5
a0003ba0:	8d99                	sub	a1,a1,a4
a0003ba2:	c05d                	beqz	s0,a0003c48 <__fixdfdi+0x100>
a0003ba4:	43e00813          	li	a6,1086
a0003ba8:	4741                	li	a4,16
a0003baa:	07061363          	bne	a2,a6,a0003c10 <__fixdfdi+0xc8>
a0003bae:	8d55                	or	a0,a0,a3
a0003bb0:	e125                	bnez	a0,a0003c10 <__fixdfdi+0xc8>
a0003bb2:	40b2                	lw	ra,12(sp)
a0003bb4:	4422                	lw	s0,8(sp)
a0003bb6:	853e                	mv	a0,a5
a0003bb8:	0141                	addi	sp,sp,16
a0003bba:	8082                	ret
a0003bbc:	43200793          	li	a5,1074
a0003bc0:	00e6e5b3          	or	a1,a3,a4
a0003bc4:	00c7da63          	bge	a5,a2,a0003bd8 <__fixdfdi+0x90>
a0003bc8:	bcd60613          	addi	a2,a2,-1075
a0003bcc:	8defd0ef          	jal	ra,a0000caa <__ashldi3>
a0003bd0:	87aa                	mv	a5,a0
a0003bd2:	d065                	beqz	s0,a0003bb2 <__fixdfdi+0x6a>
a0003bd4:	4701                	li	a4,0
a0003bd6:	a02d                	j	a0003c00 <__fixdfdi+0xb8>
a0003bd8:	43300693          	li	a3,1075
a0003bdc:	8e91                	sub	a3,a3,a2
a0003bde:	47fd                	li	a5,31
a0003be0:	02d7cb63          	blt	a5,a3,a0003c16 <__fixdfdi+0xce>
a0003be4:	bed60613          	addi	a2,a2,-1043
a0003be8:	00c51733          	sll	a4,a0,a2
a0003bec:	00d557b3          	srl	a5,a0,a3
a0003bf0:	00c59633          	sll	a2,a1,a2
a0003bf4:	00e03733          	snez	a4,a4
a0003bf8:	8fd1                	or	a5,a5,a2
a0003bfa:	00d5d5b3          	srl	a1,a1,a3
a0003bfe:	c801                	beqz	s0,a0003c0e <__fixdfdi+0xc6>
a0003c00:	00f036b3          	snez	a3,a5
a0003c04:	40b005b3          	neg	a1,a1
a0003c08:	8d95                	sub	a1,a1,a3
a0003c0a:	40f007b3          	neg	a5,a5
a0003c0e:	d355                	beqz	a4,a0003bb2 <__fixdfdi+0x6a>
a0003c10:	00172073          	csrs	fflags,a4
a0003c14:	bf79                	j	a0003bb2 <__fixdfdi+0x6a>
a0003c16:	02000793          	li	a5,32
a0003c1a:	4701                	li	a4,0
a0003c1c:	00f68663          	beq	a3,a5,a0003c28 <__fixdfdi+0xe0>
a0003c20:	c0d60713          	addi	a4,a2,-1011
a0003c24:	00e59733          	sll	a4,a1,a4
a0003c28:	41300793          	li	a5,1043
a0003c2c:	8f49                	or	a4,a4,a0
a0003c2e:	8f91                	sub	a5,a5,a2
a0003c30:	00f5d7b3          	srl	a5,a1,a5
a0003c34:	00e03733          	snez	a4,a4
a0003c38:	4581                	li	a1,0
a0003c3a:	b7d1                	j	a0003bfe <__fixdfdi+0xb6>
a0003c3c:	4781                	li	a5,0
a0003c3e:	4581                	li	a1,0
a0003c40:	4705                	li	a4,1
a0003c42:	00172073          	csrs	fflags,a4
a0003c46:	b735                	j	a0003b72 <__fixdfdi+0x2a>
a0003c48:	4741                	li	a4,16
a0003c4a:	b7d9                	j	a0003c10 <__fixdfdi+0xc8>

a0003c4c <__floatdidf>:
a0003c4c:	7179                	addi	sp,sp,-48
a0003c4e:	d606                	sw	ra,44(sp)
a0003c50:	d422                	sw	s0,40(sp)
a0003c52:	d226                	sw	s1,36(sp)
a0003c54:	d04a                	sw	s2,32(sp)
a0003c56:	ce4e                	sw	s3,28(sp)
a0003c58:	cc52                	sw	s4,24(sp)
a0003c5a:	ca56                	sw	s5,20(sp)
a0003c5c:	c85a                	sw	s6,16(sp)
a0003c5e:	c65e                	sw	s7,12(sp)
a0003c60:	c462                	sw	s8,8(sp)
a0003c62:	00202a73          	frrm	s4
a0003c66:	00b567b3          	or	a5,a0,a1
a0003c6a:	18078963          	beqz	a5,a0003dfc <__floatdidf+0x1b0>
a0003c6e:	842a                	mv	s0,a0
a0003c70:	8bae                	mv	s7,a1
a0003c72:	89ae                	mv	s3,a1
a0003c74:	01f5d913          	srli	s2,a1,0x1f
a0003c78:	0005da63          	bgez	a1,a0003c8c <__floatdidf+0x40>
a0003c7c:	00a03733          	snez	a4,a0
a0003c80:	40b009b3          	neg	s3,a1
a0003c84:	40e989b3          	sub	s3,s3,a4
a0003c88:	40a00433          	neg	s0,a0
a0003c8c:	84ce                	mv	s1,s3
a0003c8e:	06098c63          	beqz	s3,a0003d06 <__floatdidf+0xba>
a0003c92:	854e                	mv	a0,s3
a0003c94:	2a95                	jal	a0003e08 <__clzsi2>
a0003c96:	8aaa                	mv	s5,a0
a0003c98:	43e00b13          	li	s6,1086
a0003c9c:	415b0b33          	sub	s6,s6,s5
a0003ca0:	43300793          	li	a5,1075
a0003ca4:	0767cc63          	blt	a5,s6,a0003d1c <__floatdidf+0xd0>
a0003ca8:	47ad                	li	a5,11
a0003caa:	4701                	li	a4,0
a0003cac:	0357d363          	bge	a5,s5,a0003cd2 <__floatdidf+0x86>
a0003cb0:	02a00793          	li	a5,42
a0003cb4:	0557ce63          	blt	a5,s5,a0003d10 <__floatdidf+0xc4>
a0003cb8:	02b00493          	li	s1,43
a0003cbc:	ff5a8693          	addi	a3,s5,-11
a0003cc0:	415484b3          	sub	s1,s1,s5
a0003cc4:	009454b3          	srl	s1,s0,s1
a0003cc8:	00d997b3          	sll	a5,s3,a3
a0003ccc:	8cdd                	or	s1,s1,a5
a0003cce:	00d41433          	sll	s0,s0,a3
a0003cd2:	00c49793          	slli	a5,s1,0xc
a0003cd6:	0b52                	slli	s6,s6,0x14
a0003cd8:	83b1                	srli	a5,a5,0xc
a0003cda:	00fb67b3          	or	a5,s6,a5
a0003cde:	097e                	slli	s2,s2,0x1f
a0003ce0:	0127e6b3          	or	a3,a5,s2
a0003ce4:	8522                	mv	a0,s0
a0003ce6:	85b6                	mv	a1,a3
a0003ce8:	c319                	beqz	a4,a0003cee <__floatdidf+0xa2>
a0003cea:	0010e073          	csrsi	fflags,1
a0003cee:	50b2                	lw	ra,44(sp)
a0003cf0:	5422                	lw	s0,40(sp)
a0003cf2:	5492                	lw	s1,36(sp)
a0003cf4:	5902                	lw	s2,32(sp)
a0003cf6:	49f2                	lw	s3,28(sp)
a0003cf8:	4a62                	lw	s4,24(sp)
a0003cfa:	4ad2                	lw	s5,20(sp)
a0003cfc:	4b42                	lw	s6,16(sp)
a0003cfe:	4bb2                	lw	s7,12(sp)
a0003d00:	4c22                	lw	s8,8(sp)
a0003d02:	6145                	addi	sp,sp,48
a0003d04:	8082                	ret
a0003d06:	8522                	mv	a0,s0
a0003d08:	2201                	jal	a0003e08 <__clzsi2>
a0003d0a:	02050a93          	addi	s5,a0,32
a0003d0e:	b769                	j	a0003c98 <__floatdidf+0x4c>
a0003d10:	fd5a8793          	addi	a5,s5,-43
a0003d14:	00f414b3          	sll	s1,s0,a5
a0003d18:	4401                	li	s0,0
a0003d1a:	bf65                	j	a0003cd2 <__floatdidf+0x86>
a0003d1c:	43600793          	li	a5,1078
a0003d20:	0367d863          	bge	a5,s6,a0003d50 <__floatdidf+0x104>
a0003d24:	4621                	li	a2,8
a0003d26:	41560633          	sub	a2,a2,s5
a0003d2a:	8522                	mv	a0,s0
a0003d2c:	85ce                	mv	a1,s3
a0003d2e:	f53fc0ef          	jal	ra,a0000c80 <__lshrdi3>
a0003d32:	8c2a                	mv	s8,a0
a0003d34:	84ae                	mv	s1,a1
a0003d36:	8522                	mv	a0,s0
a0003d38:	85ce                	mv	a1,s3
a0003d3a:	038a8613          	addi	a2,s5,56
a0003d3e:	f6dfc0ef          	jal	ra,a0000caa <__ashldi3>
a0003d42:	00b56433          	or	s0,a0,a1
a0003d46:	00803433          	snez	s0,s0
a0003d4a:	01846433          	or	s0,s0,s8
a0003d4e:	89a6                	mv	s3,s1
a0003d50:	47a1                	li	a5,8
a0003d52:	0357d463          	bge	a5,s5,a0003d7a <__floatdidf+0x12e>
a0003d56:	02700793          	li	a5,39
a0003d5a:	0557ce63          	blt	a5,s5,a0003db6 <__floatdidf+0x16a>
a0003d5e:	02800793          	li	a5,40
a0003d62:	ff8a8713          	addi	a4,s5,-8
a0003d66:	415787b3          	sub	a5,a5,s5
a0003d6a:	00f457b3          	srl	a5,s0,a5
a0003d6e:	00e999b3          	sll	s3,s3,a4
a0003d72:	0137e9b3          	or	s3,a5,s3
a0003d76:	00e41433          	sll	s0,s0,a4
a0003d7a:	ff8007b7          	lui	a5,0xff800
a0003d7e:	17fd                	addi	a5,a5,-1
a0003d80:	00747693          	andi	a3,s0,7
a0003d84:	00f9f7b3          	and	a5,s3,a5
a0003d88:	4701                	li	a4,0
a0003d8a:	c6a9                	beqz	a3,a0003dd4 <__floatdidf+0x188>
a0003d8c:	4709                	li	a4,2
a0003d8e:	04ea0063          	beq	s4,a4,a0003dce <__floatdidf+0x182>
a0003d92:	470d                	li	a4,3
a0003d94:	02ea0763          	beq	s4,a4,a0003dc2 <__floatdidf+0x176>
a0003d98:	4705                	li	a4,1
a0003d9a:	020a1d63          	bnez	s4,a0003dd4 <__floatdidf+0x188>
a0003d9e:	00f47693          	andi	a3,s0,15
a0003da2:	4611                	li	a2,4
a0003da4:	02c68863          	beq	a3,a2,a0003dd4 <__floatdidf+0x188>
a0003da8:	00440693          	addi	a3,s0,4 # 400004 <remain_wifi_ram+0x3e0004>
a0003dac:	0086b433          	sltu	s0,a3,s0
a0003db0:	97a2                	add	a5,a5,s0
a0003db2:	8436                	mv	s0,a3
a0003db4:	a005                	j	a0003dd4 <__floatdidf+0x188>
a0003db6:	fd8a8993          	addi	s3,s5,-40
a0003dba:	013419b3          	sll	s3,s0,s3
a0003dbe:	4401                	li	s0,0
a0003dc0:	bf6d                	j	a0003d7a <__floatdidf+0x12e>
a0003dc2:	4705                	li	a4,1
a0003dc4:	000bc863          	bltz	s7,a0003dd4 <__floatdidf+0x188>
a0003dc8:	00840693          	addi	a3,s0,8
a0003dcc:	b7c5                	j	a0003dac <__floatdidf+0x160>
a0003dce:	4705                	li	a4,1
a0003dd0:	fe0bcce3          	bltz	s7,a0003dc8 <__floatdidf+0x17c>
a0003dd4:	008006b7          	lui	a3,0x800
a0003dd8:	8efd                	and	a3,a3,a5
a0003dda:	ca89                	beqz	a3,a0003dec <__floatdidf+0x1a0>
a0003ddc:	ff8006b7          	lui	a3,0xff800
a0003de0:	16fd                	addi	a3,a3,-1
a0003de2:	43f00b13          	li	s6,1087
a0003de6:	8ff5                	and	a5,a5,a3
a0003de8:	415b0b33          	sub	s6,s6,s5
a0003dec:	00345513          	srli	a0,s0,0x3
a0003df0:	01d79413          	slli	s0,a5,0x1d
a0003df4:	8c49                	or	s0,s0,a0
a0003df6:	0037d493          	srli	s1,a5,0x3
a0003dfa:	bde1                	j	a0003cd2 <__floatdidf+0x86>
a0003dfc:	4481                	li	s1,0
a0003dfe:	4401                	li	s0,0
a0003e00:	4b01                	li	s6,0
a0003e02:	4901                	li	s2,0
a0003e04:	4701                	li	a4,0
a0003e06:	b5f1                	j	a0003cd2 <__floatdidf+0x86>

a0003e08 <__clzsi2>:
a0003e08:	67c1                	lui	a5,0x10
a0003e0a:	02f57663          	bgeu	a0,a5,a0003e36 <__clzsi2+0x2e>
a0003e0e:	0ff00793          	li	a5,255
a0003e12:	00a7b7b3          	sltu	a5,a5,a0
a0003e16:	078e                	slli	a5,a5,0x3
a0003e18:	a0008737          	lui	a4,0xa0008
a0003e1c:	02000693          	li	a3,32
a0003e20:	8e9d                	sub	a3,a3,a5
a0003e22:	00f55533          	srl	a0,a0,a5
a0003e26:	52870793          	addi	a5,a4,1320 # a0008528 <__psram_limit+0xf7c08528>
a0003e2a:	953e                	add	a0,a0,a5
a0003e2c:	00054503          	lbu	a0,0(a0)
a0003e30:	40a68533          	sub	a0,a3,a0
a0003e34:	8082                	ret
a0003e36:	01000737          	lui	a4,0x1000
a0003e3a:	47c1                	li	a5,16
a0003e3c:	fce56ee3          	bltu	a0,a4,a0003e18 <__clzsi2+0x10>
a0003e40:	47e1                	li	a5,24
a0003e42:	bfd9                	j	a0003e18 <__clzsi2+0x10>

a0003e44 <main>:
a0003e44:	1101                	addi	sp,sp,-32
a0003e46:	ce06                	sw	ra,28(sp)
a0003e48:	cc22                	sw	s0,24(sp)
a0003e4a:	ca26                	sw	s1,20(sp)
a0003e4c:	368030ef          	jal	ra,a00071b4 <board_init>
a0003e50:	a0007537          	lui	a0,0xa0007
a0003e54:	51450513          	addi	a0,a0,1300 # a0007514 <__psram_limit+0xf7c07514>
a0003e58:	4ae020ef          	jal	ra,a0006306 <qcc74x_device_get_by_name>
a0003e5c:	6489                	lui	s1,0x2
a0003e5e:	62fc3437          	lui	s0,0x62fc3
a0003e62:	df040413          	addi	s0,s0,-528 # 62fc2df0 <gpio>
a0003e66:	b0148613          	addi	a2,s1,-1279 # 1b01 <HeapMinSize+0xb01>
a0003e6a:	4595                	li	a1,5
a0003e6c:	c008                	sw	a0,0(s0)
a0003e6e:	78d010ef          	jal	ra,a0005dfa <qcc74x_gpio_init>
a0003e72:	4008                	lw	a0,0(s0)
a0003e74:	b0148613          	addi	a2,s1,-1279
a0003e78:	4599                	li	a1,6
a0003e7a:	781010ef          	jal	ra,a0005dfa <qcc74x_gpio_init>
a0003e7e:	4008                	lw	a0,0(s0)
a0003e80:	b0148613          	addi	a2,s1,-1279
a0003e84:	459d                	li	a1,7
a0003e86:	775010ef          	jal	ra,a0005dfa <qcc74x_gpio_init>
a0003e8a:	4008                	lw	a0,0(s0)
a0003e8c:	b0148613          	addi	a2,s1,-1279
a0003e90:	45a1                	li	a1,8
a0003e92:	769010ef          	jal	ra,a0005dfa <qcc74x_gpio_init>
a0003e96:	0007a7b7          	lui	a5,0x7a
a0003e9a:	12078793          	addi	a5,a5,288 # 7a120 <remain_wifi_ram+0x5a120>
a0003e9e:	c23e                	sw	a5,4(sp)
a0003ea0:	a0007537          	lui	a0,0xa0007
a0003ea4:	67c1                	lui	a5,0x10
a0003ea6:	30178793          	addi	a5,a5,769 # 10301 <wifi_ram_max_size+0x8301>
a0003eaa:	51c50513          	addi	a0,a0,1308 # a000751c <__psram_limit+0xf7c0751c>
a0003eae:	c43e                	sw	a5,8(sp)
a0003eb0:	c602                	sw	zero,12(sp)
a0003eb2:	454020ef          	jal	ra,a0006306 <qcc74x_device_get_by_name>
a0003eb6:	62fc3437          	lui	s0,0x62fc3
a0003eba:	004c                	addi	a1,sp,4
a0003ebc:	dea42a23          	sw	a0,-524(s0) # 62fc2df4 <spi0>
a0003ec0:	162020ef          	jal	ra,a0006022 <qcc74x_spi_init>
a0003ec4:	a0007537          	lui	a0,0xa0007
a0003ec8:	52450513          	addi	a0,a0,1316 # a0007524 <__psram_limit+0xf7c07524>
a0003ecc:	11f010ef          	jal	ra,a00057ea <printf>
a0003ed0:	df440413          	addi	s0,s0,-524
a0003ed4:	a00074b7          	lui	s1,0xa0007
a0003ed8:	4008                	lw	a0,0(s0)
a0003eda:	860a                	mv	a2,sp
a0003edc:	4689                	li	a3,2
a0003ede:	4581                	li	a1,0
a0003ee0:	c2fbc097          	auipc	ra,0xc2fbc
a0003ee4:	71e080e7          	jalr	1822(ra) # 62fc05fe <qcc74x_spi_poll_exchange>
a0003ee8:	00114603          	lbu	a2,1(sp)
a0003eec:	00014583          	lbu	a1,0(sp)
a0003ef0:	56048513          	addi	a0,s1,1376 # a0007560 <__psram_limit+0xf7c07560>
a0003ef4:	0f7010ef          	jal	ra,a00057ea <printf>
a0003ef8:	b7c5                	j	a0003ed8 <main+0x94>

a0003efa <strcmp>:
a0003efa:	4701                	li	a4,0
a0003efc:	80e5468b          	lrbu	a3,a0,a4,0
a0003f00:	80e5c78b          	lrbu	a5,a1,a4,0
a0003f04:	40f687b3          	sub	a5,a3,a5
a0003f08:	1c07a78b          	ext	a5,a5,7,0
a0003f0c:	e399                	bnez	a5,a0003f12 <strcmp+0x18>
a0003f0e:	0705                	addi	a4,a4,1
a0003f10:	f6f5                	bnez	a3,a0003efc <strcmp+0x2>
a0003f12:	853e                	mv	a0,a5
a0003f14:	8082                	ret

a0003f16 <memcpy>:
a0003f16:	471d                	li	a4,7
a0003f18:	87aa                	mv	a5,a0
a0003f1a:	00c506b3          	add	a3,a0,a2
a0003f1e:	08c76463          	bltu	a4,a2,a0003fa6 <memcpy+0x90>
a0003f22:	4791                	li	a5,4
a0003f24:	06f60963          	beq	a2,a5,a0003f96 <memcpy+0x80>
a0003f28:	00c7ed63          	bltu	a5,a2,a0003f42 <memcpy+0x2c>
a0003f2c:	4789                	li	a5,2
a0003f2e:	06f60663          	beq	a2,a5,a0003f9a <memcpy+0x84>
a0003f32:	470d                	li	a4,3
a0003f34:	87aa                	mv	a5,a0
a0003f36:	04e60163          	beq	a2,a4,a0003f78 <memcpy+0x62>
a0003f3a:	4705                	li	a4,1
a0003f3c:	04e60663          	beq	a2,a4,a0003f88 <memcpy+0x72>
a0003f40:	8082                	ret
a0003f42:	4799                	li	a5,6
a0003f44:	04f60763          	beq	a2,a5,a0003f92 <memcpy+0x7c>
a0003f48:	00e60763          	beq	a2,a4,a0003f56 <memcpy+0x40>
a0003f4c:	4715                	li	a4,5
a0003f4e:	87aa                	mv	a5,a0
a0003f50:	00e60c63          	beq	a2,a4,a0003f68 <memcpy+0x52>
a0003f54:	8082                	ret
a0003f56:	9815c70b          	lbuia	a4,(a1),1,0
a0003f5a:	87aa                	mv	a5,a0
a0003f5c:	1817d70b          	sbia	a4,(a5),1,0
a0003f60:	9815c70b          	lbuia	a4,(a1),1,0
a0003f64:	1817d70b          	sbia	a4,(a5),1,0
a0003f68:	9815c70b          	lbuia	a4,(a1),1,0
a0003f6c:	1817d70b          	sbia	a4,(a5),1,0
a0003f70:	9815c70b          	lbuia	a4,(a1),1,0
a0003f74:	1817d70b          	sbia	a4,(a5),1,0
a0003f78:	9815c70b          	lbuia	a4,(a1),1,0
a0003f7c:	1817d70b          	sbia	a4,(a5),1,0
a0003f80:	9815c70b          	lbuia	a4,(a1),1,0
a0003f84:	1817d70b          	sbia	a4,(a5),1,0
a0003f88:	0005c703          	lbu	a4,0(a1) # 80000000 <__psram_limit+0xd7c00000>
a0003f8c:	00e78023          	sb	a4,0(a5)
a0003f90:	8082                	ret
a0003f92:	87aa                	mv	a5,a0
a0003f94:	b7f1                	j	a0003f60 <memcpy+0x4a>
a0003f96:	87aa                	mv	a5,a0
a0003f98:	bfe1                	j	a0003f70 <memcpy+0x5a>
a0003f9a:	87aa                	mv	a5,a0
a0003f9c:	b7d5                	j	a0003f80 <memcpy+0x6a>
a0003f9e:	9815c70b          	lbuia	a4,(a1),1,0
a0003fa2:	1817d70b          	sbia	a4,(a5),1,0
a0003fa6:	0037f713          	andi	a4,a5,3
a0003faa:	40f68633          	sub	a2,a3,a5
a0003fae:	fb65                	bnez	a4,a0003f9e <memcpy+0x88>
a0003fb0:	0035f693          	andi	a3,a1,3
a0003fb4:	4809                	li	a6,2
a0003fb6:	00265713          	srli	a4,a2,0x2
a0003fba:	1b068d63          	beq	a3,a6,a0004174 <memcpy+0x25e>
a0003fbe:	480d                	li	a6,3
a0003fc0:	2b068863          	beq	a3,a6,a0004270 <memcpy+0x35a>
a0003fc4:	4805                	li	a6,1
a0003fc6:	05069563          	bne	a3,a6,a0004010 <memcpy+0xfa>
a0003fca:	99f1                	andi	a1,a1,-4
a0003fcc:	5845c80b          	lwia	a6,(a1),4,0
a0003fd0:	9bf1                	andi	a5,a5,-4
a0003fd2:	00777693          	andi	a3,a4,7
a0003fd6:	e2f9                	bnez	a3,a000409c <memcpy+0x186>
a0003fd8:	830d                	srli	a4,a4,0x3
a0003fda:	0716                	slli	a4,a4,0x5
a0003fdc:	00e58e33          	add	t3,a1,a4
a0003fe0:	86be                	mv	a3,a5
a0003fe2:	0dc59963          	bne	a1,t3,a00040b4 <memcpy+0x19e>
a0003fe6:	8a0d                	andi	a2,a2,3
a0003fe8:	4689                	li	a3,2
a0003fea:	97ba                	add	a5,a5,a4
a0003fec:	ffd58713          	addi	a4,a1,-3
a0003ff0:	16d60d63          	beq	a2,a3,a000416a <memcpy+0x254>
a0003ff4:	468d                	li	a3,3
a0003ff6:	16d60463          	beq	a2,a3,a000415e <memcpy+0x248>
a0003ffa:	4685                	li	a3,1
a0003ffc:	f8d61ae3          	bne	a2,a3,a0003f90 <memcpy+0x7a>
a0004000:	00074703          	lbu	a4,0(a4) # 1000000 <remain_wifi_ram+0xfe0000>
a0004004:	b761                	j	a0003f8c <memcpy+0x76>
a0004006:	5845c68b          	lwia	a3,(a1),4,0
a000400a:	177d                	addi	a4,a4,-1
a000400c:	5847d68b          	swia	a3,(a5),4,0
a0004010:	00777693          	andi	a3,a4,7
a0004014:	faed                	bnez	a3,a0004006 <memcpy+0xf0>
a0004016:	830d                	srli	a4,a4,0x3
a0004018:	0716                	slli	a4,a4,0x5
a000401a:	00e586b3          	add	a3,a1,a4
a000401e:	883e                	mv	a6,a5
a0004020:	02d59063          	bne	a1,a3,a0004040 <memcpy+0x12a>
a0004024:	97ba                	add	a5,a5,a4
a0004026:	8a0d                	andi	a2,a2,3
a0004028:	4709                	li	a4,2
a000402a:	06e60463          	beq	a2,a4,a0004092 <memcpy+0x17c>
a000402e:	470d                	li	a4,3
a0004030:	04e60d63          	beq	a2,a4,a000408a <memcpy+0x174>
a0004034:	4705                	li	a4,1
a0004036:	f4e61de3          	bne	a2,a4,a0003f90 <memcpy+0x7a>
a000403a:	0006c703          	lbu	a4,0(a3) # ff800000 <__psram_limit+0x57400000>
a000403e:	b7b9                	j	a0003f8c <memcpy+0x76>
a0004040:	0005a883          	lw	a7,0(a1)
a0004044:	02080813          	addi	a6,a6,32
a0004048:	ff182023          	sw	a7,-32(a6)
a000404c:	0045a883          	lw	a7,4(a1)
a0004050:	ff182223          	sw	a7,-28(a6)
a0004054:	0085a883          	lw	a7,8(a1)
a0004058:	ff182423          	sw	a7,-24(a6)
a000405c:	00c5a883          	lw	a7,12(a1)
a0004060:	ff182623          	sw	a7,-20(a6)
a0004064:	0105a883          	lw	a7,16(a1)
a0004068:	ff182823          	sw	a7,-16(a6)
a000406c:	0145a883          	lw	a7,20(a1)
a0004070:	ff182a23          	sw	a7,-12(a6)
a0004074:	0185a883          	lw	a7,24(a1)
a0004078:	ff182c23          	sw	a7,-8(a6)
a000407c:	01c5a883          	lw	a7,28(a1)
a0004080:	02058593          	addi	a1,a1,32
a0004084:	ff182e23          	sw	a7,-4(a6)
a0004088:	bf61                	j	a0004020 <memcpy+0x10a>
a000408a:	9816c70b          	lbuia	a4,(a3),1,0
a000408e:	1817d70b          	sbia	a4,(a5),1,0
a0004092:	9816c70b          	lbuia	a4,(a3),1,0
a0004096:	1817d70b          	sbia	a4,(a5),1,0
a000409a:	b745                	j	a000403a <memcpy+0x124>
a000409c:	00885893          	srli	a7,a6,0x8
a00040a0:	5845c80b          	lwia	a6,(a1),4,0
a00040a4:	177d                	addi	a4,a4,-1
a00040a6:	01881693          	slli	a3,a6,0x18
a00040aa:	0116e6b3          	or	a3,a3,a7
a00040ae:	5847d68b          	swia	a3,(a5),4,0
a00040b2:	b705                	j	a0003fd2 <memcpy+0xbc>
a00040b4:	0005a883          	lw	a7,0(a1)
a00040b8:	00885813          	srli	a6,a6,0x8
a00040bc:	01889313          	slli	t1,a7,0x18
a00040c0:	01036833          	or	a6,t1,a6
a00040c4:	0106a023          	sw	a6,0(a3)
a00040c8:	0045a803          	lw	a6,4(a1)
a00040cc:	0088d893          	srli	a7,a7,0x8
a00040d0:	01881313          	slli	t1,a6,0x18
a00040d4:	011368b3          	or	a7,t1,a7
a00040d8:	0116a223          	sw	a7,4(a3)
a00040dc:	00885893          	srli	a7,a6,0x8
a00040e0:	0085a803          	lw	a6,8(a1)
a00040e4:	01881313          	slli	t1,a6,0x18
a00040e8:	011368b3          	or	a7,t1,a7
a00040ec:	0116a423          	sw	a7,8(a3)
a00040f0:	00885893          	srli	a7,a6,0x8
a00040f4:	00c5a803          	lw	a6,12(a1)
a00040f8:	01881313          	slli	t1,a6,0x18
a00040fc:	011368b3          	or	a7,t1,a7
a0004100:	0116a623          	sw	a7,12(a3)
a0004104:	00885893          	srli	a7,a6,0x8
a0004108:	0105a803          	lw	a6,16(a1)
a000410c:	01881313          	slli	t1,a6,0x18
a0004110:	011368b3          	or	a7,t1,a7
a0004114:	0116a823          	sw	a7,16(a3)
a0004118:	00885893          	srli	a7,a6,0x8
a000411c:	0145a803          	lw	a6,20(a1)
a0004120:	01881313          	slli	t1,a6,0x18
a0004124:	011368b3          	or	a7,t1,a7
a0004128:	0116aa23          	sw	a7,20(a3)
a000412c:	00885893          	srli	a7,a6,0x8
a0004130:	0185a803          	lw	a6,24(a1)
a0004134:	01881313          	slli	t1,a6,0x18
a0004138:	011368b3          	or	a7,t1,a7
a000413c:	0116ac23          	sw	a7,24(a3)
a0004140:	00885893          	srli	a7,a6,0x8
a0004144:	01c5a803          	lw	a6,28(a1)
a0004148:	02058593          	addi	a1,a1,32
a000414c:	01881313          	slli	t1,a6,0x18
a0004150:	011368b3          	or	a7,t1,a7
a0004154:	0116ae23          	sw	a7,28(a3)
a0004158:	02068693          	addi	a3,a3,32
a000415c:	b559                	j	a0003fe2 <memcpy+0xcc>
a000415e:	ffd5c683          	lbu	a3,-3(a1)
a0004162:	ffe58713          	addi	a4,a1,-2
a0004166:	1817d68b          	sbia	a3,(a5),1,0
a000416a:	9817468b          	lbuia	a3,(a4),1,0
a000416e:	1817d68b          	sbia	a3,(a5),1,0
a0004172:	b579                	j	a0004000 <memcpy+0xea>
a0004174:	99f1                	andi	a1,a1,-4
a0004176:	5845c80b          	lwia	a6,(a1),4,0
a000417a:	9bf1                	andi	a5,a5,-4
a000417c:	00777693          	andi	a3,a4,7
a0004180:	e69d                	bnez	a3,a00041ae <memcpy+0x298>
a0004182:	830d                	srli	a4,a4,0x3
a0004184:	0716                	slli	a4,a4,0x5
a0004186:	00e58e33          	add	t3,a1,a4
a000418a:	86be                	mv	a3,a5
a000418c:	03c59d63          	bne	a1,t3,a00041c6 <memcpy+0x2b0>
a0004190:	8a0d                	andi	a2,a2,3
a0004192:	4689                	li	a3,2
a0004194:	97ba                	add	a5,a5,a4
a0004196:	ffe58713          	addi	a4,a1,-2
a000419a:	fcd608e3          	beq	a2,a3,a000416a <memcpy+0x254>
a000419e:	468d                	li	a3,3
a00041a0:	e4d61de3          	bne	a2,a3,a0003ffa <memcpy+0xe4>
a00041a4:	ffe5c683          	lbu	a3,-2(a1)
a00041a8:	fff58713          	addi	a4,a1,-1
a00041ac:	bf6d                	j	a0004166 <memcpy+0x250>
a00041ae:	01085893          	srli	a7,a6,0x10
a00041b2:	5845c80b          	lwia	a6,(a1),4,0
a00041b6:	177d                	addi	a4,a4,-1
a00041b8:	01081693          	slli	a3,a6,0x10
a00041bc:	0116e6b3          	or	a3,a3,a7
a00041c0:	5847d68b          	swia	a3,(a5),4,0
a00041c4:	bf65                	j	a000417c <memcpy+0x266>
a00041c6:	0005a883          	lw	a7,0(a1)
a00041ca:	01085813          	srli	a6,a6,0x10
a00041ce:	01089313          	slli	t1,a7,0x10
a00041d2:	01036833          	or	a6,t1,a6
a00041d6:	0106a023          	sw	a6,0(a3)
a00041da:	0045a803          	lw	a6,4(a1)
a00041de:	0108d893          	srli	a7,a7,0x10
a00041e2:	01081313          	slli	t1,a6,0x10
a00041e6:	011368b3          	or	a7,t1,a7
a00041ea:	0116a223          	sw	a7,4(a3)
a00041ee:	01085893          	srli	a7,a6,0x10
a00041f2:	0085a803          	lw	a6,8(a1)
a00041f6:	01081313          	slli	t1,a6,0x10
a00041fa:	011368b3          	or	a7,t1,a7
a00041fe:	0116a423          	sw	a7,8(a3)
a0004202:	01085893          	srli	a7,a6,0x10
a0004206:	00c5a803          	lw	a6,12(a1)
a000420a:	01081313          	slli	t1,a6,0x10
a000420e:	011368b3          	or	a7,t1,a7
a0004212:	0116a623          	sw	a7,12(a3)
a0004216:	01085893          	srli	a7,a6,0x10
a000421a:	0105a803          	lw	a6,16(a1)
a000421e:	01081313          	slli	t1,a6,0x10
a0004222:	011368b3          	or	a7,t1,a7
a0004226:	0116a823          	sw	a7,16(a3)
a000422a:	01085893          	srli	a7,a6,0x10
a000422e:	0145a803          	lw	a6,20(a1)
a0004232:	01081313          	slli	t1,a6,0x10
a0004236:	011368b3          	or	a7,t1,a7
a000423a:	0116aa23          	sw	a7,20(a3)
a000423e:	01085893          	srli	a7,a6,0x10
a0004242:	0185a803          	lw	a6,24(a1)
a0004246:	01081313          	slli	t1,a6,0x10
a000424a:	011368b3          	or	a7,t1,a7
a000424e:	0116ac23          	sw	a7,24(a3)
a0004252:	01085893          	srli	a7,a6,0x10
a0004256:	01c5a803          	lw	a6,28(a1)
a000425a:	02058593          	addi	a1,a1,32
a000425e:	01081313          	slli	t1,a6,0x10
a0004262:	011368b3          	or	a7,t1,a7
a0004266:	0116ae23          	sw	a7,28(a3)
a000426a:	02068693          	addi	a3,a3,32
a000426e:	bf39                	j	a000418c <memcpy+0x276>
a0004270:	99f1                	andi	a1,a1,-4
a0004272:	5845c80b          	lwia	a6,(a1),4,0
a0004276:	9bf1                	andi	a5,a5,-4
a0004278:	00777693          	andi	a3,a4,7
a000427c:	ea85                	bnez	a3,a00042ac <memcpy+0x396>
a000427e:	830d                	srli	a4,a4,0x3
a0004280:	0716                	slli	a4,a4,0x5
a0004282:	00e58e33          	add	t3,a1,a4
a0004286:	86be                	mv	a3,a5
a0004288:	03c59e63          	bne	a1,t3,a00042c4 <memcpy+0x3ae>
a000428c:	8a0d                	andi	a2,a2,3
a000428e:	4689                	li	a3,2
a0004290:	97ba                	add	a5,a5,a4
a0004292:	fff58713          	addi	a4,a1,-1
a0004296:	ecd60ae3          	beq	a2,a3,a000416a <memcpy+0x254>
a000429a:	468d                	li	a3,3
a000429c:	d4d61fe3          	bne	a2,a3,a0003ffa <memcpy+0xe4>
a00042a0:	fff5c703          	lbu	a4,-1(a1)
a00042a4:	1817d70b          	sbia	a4,(a5),1,0
a00042a8:	872e                	mv	a4,a1
a00042aa:	b5c1                	j	a000416a <memcpy+0x254>
a00042ac:	01885893          	srli	a7,a6,0x18
a00042b0:	5845c80b          	lwia	a6,(a1),4,0
a00042b4:	177d                	addi	a4,a4,-1
a00042b6:	00881693          	slli	a3,a6,0x8
a00042ba:	0116e6b3          	or	a3,a3,a7
a00042be:	5847d68b          	swia	a3,(a5),4,0
a00042c2:	bf5d                	j	a0004278 <memcpy+0x362>
a00042c4:	0005a883          	lw	a7,0(a1)
a00042c8:	01885813          	srli	a6,a6,0x18
a00042cc:	00889313          	slli	t1,a7,0x8
a00042d0:	01036833          	or	a6,t1,a6
a00042d4:	0106a023          	sw	a6,0(a3)
a00042d8:	0045a803          	lw	a6,4(a1)
a00042dc:	0188d893          	srli	a7,a7,0x18
a00042e0:	00881313          	slli	t1,a6,0x8
a00042e4:	011368b3          	or	a7,t1,a7
a00042e8:	0116a223          	sw	a7,4(a3)
a00042ec:	01885893          	srli	a7,a6,0x18
a00042f0:	0085a803          	lw	a6,8(a1)
a00042f4:	00881313          	slli	t1,a6,0x8
a00042f8:	011368b3          	or	a7,t1,a7
a00042fc:	0116a423          	sw	a7,8(a3)
a0004300:	01885893          	srli	a7,a6,0x18
a0004304:	00c5a803          	lw	a6,12(a1)
a0004308:	00881313          	slli	t1,a6,0x8
a000430c:	011368b3          	or	a7,t1,a7
a0004310:	0116a623          	sw	a7,12(a3)
a0004314:	01885893          	srli	a7,a6,0x18
a0004318:	0105a803          	lw	a6,16(a1)
a000431c:	00881313          	slli	t1,a6,0x8
a0004320:	011368b3          	or	a7,t1,a7
a0004324:	0116a823          	sw	a7,16(a3)
a0004328:	01885893          	srli	a7,a6,0x18
a000432c:	0145a803          	lw	a6,20(a1)
a0004330:	00881313          	slli	t1,a6,0x8
a0004334:	011368b3          	or	a7,t1,a7
a0004338:	0116aa23          	sw	a7,20(a3)
a000433c:	01885893          	srli	a7,a6,0x18
a0004340:	0185a803          	lw	a6,24(a1)
a0004344:	00881313          	slli	t1,a6,0x8
a0004348:	011368b3          	or	a7,t1,a7
a000434c:	0116ac23          	sw	a7,24(a3)
a0004350:	01885893          	srli	a7,a6,0x18
a0004354:	01c5a803          	lw	a6,28(a1)
a0004358:	02058593          	addi	a1,a1,32
a000435c:	00881313          	slli	t1,a6,0x8
a0004360:	011368b3          	or	a7,t1,a7
a0004364:	0116ae23          	sw	a7,28(a3)
a0004368:	02068693          	addi	a3,a3,32
a000436c:	bf31                	j	a0004288 <memcpy+0x372>

a000436e <out_discard>:
a000436e:	8082                	ret

a0004370 <out_rev_>:
a0004370:	7179                	addi	sp,sp,-48
a0004372:	d422                	sw	s0,40(sp)
a0004374:	d226                	sw	s1,36(sp)
a0004376:	d04a                	sw	s2,32(sp)
a0004378:	ce4e                	sw	s3,28(sp)
a000437a:	cc52                	sw	s4,24(sp)
a000437c:	ca56                	sw	s5,20(sp)
a000437e:	c85a                	sw	s6,16(sp)
a0004380:	c65e                	sw	s7,12(sp)
a0004382:	c462                	sw	s8,8(sp)
a0004384:	84be                	mv	s1,a5
a0004386:	d606                	sw	ra,44(sp)
a0004388:	c266                	sw	s9,4(sp)
a000438a:	0038f793          	andi	a5,a7,3
a000438e:	8aaa                	mv	s5,a0
a0004390:	8b2e                	mv	s6,a1
a0004392:	8932                	mv	s2,a2
a0004394:	8bb6                	mv	s7,a3
a0004396:	8c3a                	mv	s8,a4
a0004398:	89c2                	mv	s3,a6
a000439a:	8a46                	mv	s4,a7
a000439c:	8432                	mv	s0,a2
a000439e:	e78d                	bnez	a5,a00043c8 <out_rev_+0x58>
a00043a0:	8426                	mv	s0,s1
a00043a2:	40960cb3          	sub	s9,a2,s1
a00043a6:	a039                	j	a00043b4 <out_rev_+0x44>
a00043a8:	86de                	mv	a3,s7
a00043aa:	85da                	mv	a1,s6
a00043ac:	02000513          	li	a0,32
a00043b0:	9a82                	jalr	s5
a00043b2:	0405                	addi	s0,s0,1
a00043b4:	008c8633          	add	a2,s9,s0
a00043b8:	ff3468e3          	bltu	s0,s3,a00043a8 <out_rev_+0x38>
a00043bc:	4401                	li	s0,0
a00043be:	0099e463          	bltu	s3,s1,a00043c6 <out_rev_+0x56>
a00043c2:	40998433          	sub	s0,s3,s1
a00043c6:	944a                	add	s0,s0,s2
a00043c8:	9426                	add	s0,s0,s1
a00043ca:	8522                	mv	a0,s0
a00043cc:	40940633          	sub	a2,s0,s1
a00043d0:	e485                	bnez	s1,a00043f8 <out_rev_+0x88>
a00043d2:	002a7a13          	andi	s4,s4,2
a00043d6:	41240433          	sub	s0,s0,s2
a00043da:	020a1d63          	bnez	s4,a0004414 <out_rev_+0xa4>
a00043de:	50b2                	lw	ra,44(sp)
a00043e0:	5422                	lw	s0,40(sp)
a00043e2:	5492                	lw	s1,36(sp)
a00043e4:	5902                	lw	s2,32(sp)
a00043e6:	49f2                	lw	s3,28(sp)
a00043e8:	4a62                	lw	s4,24(sp)
a00043ea:	4ad2                	lw	s5,20(sp)
a00043ec:	4b42                	lw	s6,16(sp)
a00043ee:	4bb2                	lw	s7,12(sp)
a00043f0:	4c22                	lw	s8,8(sp)
a00043f2:	4c92                	lw	s9,4(sp)
a00043f4:	6145                	addi	sp,sp,48
a00043f6:	8082                	ret
a00043f8:	14fd                	addi	s1,s1,-1
a00043fa:	809c450b          	lrbu	a0,s8,s1,0
a00043fe:	86de                	mv	a3,s7
a0004400:	85da                	mv	a1,s6
a0004402:	9a82                	jalr	s5
a0004404:	b7d9                	j	a00043ca <out_rev_+0x5a>
a0004406:	862a                	mv	a2,a0
a0004408:	86de                	mv	a3,s7
a000440a:	85da                	mv	a1,s6
a000440c:	02000513          	li	a0,32
a0004410:	9a82                	jalr	s5
a0004412:	0405                	addi	s0,s0,1
a0004414:	00890533          	add	a0,s2,s0
a0004418:	ff3467e3          	bltu	s0,s3,a0004406 <out_rev_+0x96>
a000441c:	b7c9                	j	a00043de <out_rev_+0x6e>

a000441e <print_integer>:
a000441e:	7159                	addi	sp,sp,-112
a0004420:	d4a2                	sw	s0,104(sp)
a0004422:	d0ca                	sw	s2,96(sp)
a0004424:	cece                	sw	s3,92(sp)
a0004426:	ccd2                	sw	s4,88(sp)
a0004428:	cad6                	sw	s5,84(sp)
a000442a:	c8da                	sw	s6,80(sp)
a000442c:	c6de                	sw	s7,76(sp)
a000442e:	d686                	sw	ra,108(sp)
a0004430:	8bb6                	mv	s7,a3
a0004432:	d2a6                	sw	s1,100(sp)
a0004434:	c4e2                	sw	s8,72(sp)
a0004436:	c2e6                	sw	s9,68(sp)
a0004438:	c0ea                	sw	s10,64(sp)
a000443a:	de6e                	sw	s11,60(sp)
a000443c:	00f766b3          	or	a3,a4,a5
a0004440:	8b32                	mv	s6,a2
a0004442:	59d6                	lw	s3,116(sp)
a0004444:	5466                	lw	s0,120(sp)
a0004446:	8a2a                	mv	s4,a0
a0004448:	8aae                	mv	s5,a1
a000444a:	8942                	mv	s2,a6
a000444c:	8646                	mv	a2,a7
a000444e:	e6a9                	bnez	a3,a0004498 <print_integer+0x7a>
a0004450:	40047793          	andi	a5,s0,1024
a0004454:	ef85                	bnez	a5,a000448c <print_integer+0x6e>
a0004456:	03000793          	li	a5,48
a000445a:	00f10823          	sb	a5,16(sp)
a000445e:	983d                	andi	s0,s0,-17
a0004460:	4d85                	li	s11,1
a0004462:	00247713          	andi	a4,s0,2
a0004466:	87ee                	mv	a5,s11
a0004468:	ef4d                	bnez	a4,a0004522 <print_integer+0x104>
a000446a:	00147713          	andi	a4,s0,1
a000446e:	00098963          	beqz	s3,a0004480 <print_integer+0x62>
a0004472:	cb45                	beqz	a4,a0004522 <print_integer+0x104>
a0004474:	00091563          	bnez	s2,a000447e <print_integer+0x60>
a0004478:	00c47793          	andi	a5,s0,12
a000447c:	c391                	beqz	a5,a0004480 <print_integer+0x62>
a000447e:	19fd                	addi	s3,s3,-1
a0004480:	87ee                	mv	a5,s11
a0004482:	02000693          	li	a3,32
a0004486:	03000593          	li	a1,48
a000448a:	a079                	j	a0004518 <print_integer+0xfa>
a000448c:	47c1                	li	a5,16
a000448e:	4d81                	li	s11,0
a0004490:	fcf899e3          	bne	a7,a5,a0004462 <print_integer+0x44>
a0004494:	983d                	andi	s0,s0,-17
a0004496:	b7f1                	j	a0004462 <print_integer+0x44>
a0004498:	02047693          	andi	a3,s0,32
a000449c:	06100493          	li	s1,97
a00044a0:	c299                	beqz	a3,a00044a6 <print_integer+0x88>
a00044a2:	04100493          	li	s1,65
a00044a6:	4d81                	li	s11,0
a00044a8:	4d01                	li	s10,0
a00044aa:	4ca5                	li	s9,9
a00044ac:	14d9                	addi	s1,s1,-10
a00044ae:	02000c13          	li	s8,32
a00044b2:	853a                	mv	a0,a4
a00044b4:	85be                	mv	a1,a5
a00044b6:	4681                	li	a3,0
a00044b8:	c632                	sw	a2,12(sp)
a00044ba:	c43a                	sw	a4,8(sp)
a00044bc:	c23e                	sw	a5,4(sp)
a00044be:	aa2fd0ef          	jal	ra,a0001760 <__umoddi3>
a00044c2:	0ff57513          	zext.b	a0,a0
a00044c6:	4792                	lw	a5,4(sp)
a00044c8:	4722                	lw	a4,8(sp)
a00044ca:	4632                	lw	a2,12(sp)
a00044cc:	04ace063          	bltu	s9,a0,a000450c <print_integer+0xee>
a00044d0:	03050513          	addi	a0,a0,48
a00044d4:	0d85                	addi	s11,s11,1
a00044d6:	010d8693          	addi	a3,s11,16
a00044da:	0ff57513          	zext.b	a0,a0
a00044de:	968a                	add	a3,a3,sp
a00044e0:	fea68fa3          	sb	a0,-1(a3)
a00044e4:	85be                	mv	a1,a5
a00044e6:	853a                	mv	a0,a4
a00044e8:	4681                	li	a3,0
a00044ea:	c632                	sw	a2,12(sp)
a00044ec:	c43a                	sw	a4,8(sp)
a00044ee:	c23e                	sw	a5,4(sp)
a00044f0:	f11fc0ef          	jal	ra,a0001400 <__udivdi3>
a00044f4:	4792                	lw	a5,4(sp)
a00044f6:	4722                	lw	a4,8(sp)
a00044f8:	4632                	lw	a2,12(sp)
a00044fa:	00fd1463          	bne	s10,a5,a0004502 <print_integer+0xe4>
a00044fe:	f6c762e3          	bltu	a4,a2,a0004462 <print_integer+0x44>
a0004502:	f78d80e3          	beq	s11,s8,a0004462 <print_integer+0x44>
a0004506:	872a                	mv	a4,a0
a0004508:	87ae                	mv	a5,a1
a000450a:	b765                	j	a00044b2 <print_integer+0x94>
a000450c:	9526                	add	a0,a0,s1
a000450e:	b7d9                	j	a00044d4 <print_integer+0xb6>
a0004510:	0808                	addi	a0,sp,16
a0004512:	00f5558b          	srb	a1,a0,a5,0
a0004516:	0785                	addi	a5,a5,1
a0004518:	c709                	beqz	a4,a0004522 <print_integer+0x104>
a000451a:	0137f463          	bgeu	a5,s3,a0004522 <print_integer+0x104>
a000451e:	fed799e3          	bne	a5,a3,a0004510 <print_integer+0xf2>
a0004522:	02000713          	li	a4,32
a0004526:	03000693          	li	a3,48
a000452a:	a029                	j	a0004534 <print_integer+0x116>
a000452c:	080c                	addi	a1,sp,16
a000452e:	00f5d68b          	srb	a3,a1,a5,0
a0004532:	0785                	addi	a5,a5,1
a0004534:	55c6                	lw	a1,112(sp)
a0004536:	00b7f463          	bgeu	a5,a1,a000453e <print_integer+0x120>
a000453a:	fee799e3          	bne	a5,a4,a000452c <print_integer+0x10e>
a000453e:	4721                	li	a4,8
a0004540:	00e61563          	bne	a2,a4,a000454a <print_integer+0x12c>
a0004544:	00fdf363          	bgeu	s11,a5,a000454a <print_integer+0x12c>
a0004548:	983d                	andi	s0,s0,-17
a000454a:	6705                	lui	a4,0x1
a000454c:	0741                	addi	a4,a4,16
a000454e:	8f61                	and	a4,a4,s0
a0004550:	cb39                	beqz	a4,a00045a6 <print_integer+0x188>
a0004552:	40047713          	andi	a4,s0,1024
a0004556:	e345                	bnez	a4,a00045f6 <print_integer+0x1d8>
a0004558:	cfd9                	beqz	a5,a00045f6 <print_integer+0x1d8>
a000455a:	5746                	lw	a4,112(sp)
a000455c:	00f70463          	beq	a4,a5,a0004564 <print_integer+0x146>
a0004560:	08f99b63          	bne	s3,a5,a00045f6 <print_integer+0x1d8>
a0004564:	08fdf963          	bgeu	s11,a5,a00045f6 <print_integer+0x1d8>
a0004568:	fff78713          	addi	a4,a5,-1
a000456c:	c741                	beqz	a4,a00045f4 <print_integer+0x1d6>
a000456e:	46c1                	li	a3,16
a0004570:	08d61763          	bne	a2,a3,a00045fe <print_integer+0x1e0>
a0004574:	17f9                	addi	a5,a5,-2
a0004576:	00ede363          	bltu	s11,a4,a000457c <print_integer+0x15e>
a000457a:	87ba                	mv	a5,a4
a000457c:	02047713          	andi	a4,s0,32
a0004580:	eb49                	bnez	a4,a0004612 <print_integer+0x1f4>
a0004582:	477d                	li	a4,31
a0004584:	04f76163          	bltu	a4,a5,a00045c6 <print_integer+0x1a8>
a0004588:	07800713          	li	a4,120
a000458c:	0814                	addi	a3,sp,16
a000458e:	00f6d70b          	srb	a4,a3,a5,0
a0004592:	0785                	addi	a5,a5,1
a0004594:	477d                	li	a4,31
a0004596:	02f76863          	bltu	a4,a5,a00045c6 <print_integer+0x1a8>
a000459a:	03000713          	li	a4,48
a000459e:	0814                	addi	a3,sp,16
a00045a0:	00f6d70b          	srb	a4,a3,a5,0
a00045a4:	0785                	addi	a5,a5,1
a00045a6:	477d                	li	a4,31
a00045a8:	00f76f63          	bltu	a4,a5,a00045c6 <print_integer+0x1a8>
a00045ac:	02d00713          	li	a4,45
a00045b0:	00091763          	bnez	s2,a00045be <print_integer+0x1a0>
a00045b4:	00447713          	andi	a4,s0,4
a00045b8:	c33d                	beqz	a4,a000461e <print_integer+0x200>
a00045ba:	02b00713          	li	a4,43
a00045be:	0814                	addi	a3,sp,16
a00045c0:	00f6d70b          	srb	a4,a3,a5,0
a00045c4:	0785                	addi	a5,a5,1
a00045c6:	88a2                	mv	a7,s0
a00045c8:	884e                	mv	a6,s3
a00045ca:	0818                	addi	a4,sp,16
a00045cc:	86de                	mv	a3,s7
a00045ce:	865a                	mv	a2,s6
a00045d0:	85d6                	mv	a1,s5
a00045d2:	8552                	mv	a0,s4
a00045d4:	3b71                	jal	a0004370 <out_rev_>
a00045d6:	50b6                	lw	ra,108(sp)
a00045d8:	5426                	lw	s0,104(sp)
a00045da:	5496                	lw	s1,100(sp)
a00045dc:	5906                	lw	s2,96(sp)
a00045de:	49f6                	lw	s3,92(sp)
a00045e0:	4a66                	lw	s4,88(sp)
a00045e2:	4ad6                	lw	s5,84(sp)
a00045e4:	4b46                	lw	s6,80(sp)
a00045e6:	4bb6                	lw	s7,76(sp)
a00045e8:	4c26                	lw	s8,72(sp)
a00045ea:	4c96                	lw	s9,68(sp)
a00045ec:	4d06                	lw	s10,64(sp)
a00045ee:	5df2                	lw	s11,60(sp)
a00045f0:	6165                	addi	sp,sp,112
a00045f2:	8082                	ret
a00045f4:	4781                	li	a5,0
a00045f6:	4741                	li	a4,16
a00045f8:	00e61463          	bne	a2,a4,a0004600 <print_integer+0x1e2>
a00045fc:	b741                	j	a000457c <print_integer+0x15e>
a00045fe:	87ba                	mv	a5,a4
a0004600:	4709                	li	a4,2
a0004602:	f8e619e3          	bne	a2,a4,a0004594 <print_integer+0x176>
a0004606:	477d                	li	a4,31
a0004608:	faf76fe3          	bltu	a4,a5,a00045c6 <print_integer+0x1a8>
a000460c:	06200713          	li	a4,98
a0004610:	bfb5                	j	a000458c <print_integer+0x16e>
a0004612:	477d                	li	a4,31
a0004614:	faf769e3          	bltu	a4,a5,a00045c6 <print_integer+0x1a8>
a0004618:	05800713          	li	a4,88
a000461c:	bf85                	j	a000458c <print_integer+0x16e>
a000461e:	00847713          	andi	a4,s0,8
a0004622:	d355                	beqz	a4,a00045c6 <print_integer+0x1a8>
a0004624:	02000713          	li	a4,32
a0004628:	bf59                	j	a00045be <print_integer+0x1a0>

a000462a <get_components>:
a000462a:	715d                	addi	sp,sp,-80
a000462c:	01f65793          	srli	a5,a2,0x1f
a0004630:	dc52                	sw	s4,56(sp)
a0004632:	da56                	sw	s5,52(sp)
a0004634:	d462                	sw	s8,40(sp)
a0004636:	d266                	sw	s9,36(sp)
a0004638:	c686                	sw	ra,76(sp)
a000463a:	c4a2                	sw	s0,72(sp)
a000463c:	c2a6                	sw	s1,68(sp)
a000463e:	c0ca                	sw	s2,64(sp)
a0004640:	de4e                	sw	s3,60(sp)
a0004642:	d85a                	sw	s6,48(sp)
a0004644:	d65e                	sw	s7,44(sp)
a0004646:	d06a                	sw	s10,32(sp)
a0004648:	ce6e                	sw	s11,28(sp)
a000464a:	c03e                	sw	a5,0(sp)
a000464c:	8aaa                	mv	s5,a0
a000464e:	8c2e                	mv	s8,a1
a0004650:	8a32                	mv	s4,a2
a0004652:	8cb6                	mv	s9,a3
a0004654:	c789                	beqz	a5,a000465e <get_components+0x34>
a0004656:	800007b7          	lui	a5,0x80000
a000465a:	00c7ca33          	xor	s4,a5,a2
a000465e:	8562                	mv	a0,s8
a0004660:	85d2                	mv	a1,s4
a0004662:	ce6ff0ef          	jal	ra,a0003b48 <__fixdfdi>
a0004666:	a00077b7          	lui	a5,0xa0007
a000466a:	65878793          	addi	a5,a5,1624 # a0007658 <__psram_limit+0xf7c07658>
a000466e:	0797978b          	addsl	a5,a5,s9,3
a0004672:	0007ab03          	lw	s6,0(a5)
a0004676:	0047ab83          	lw	s7,4(a5)
a000467a:	892a                	mv	s2,a0
a000467c:	89ae                	mv	s3,a1
a000467e:	dceff0ef          	jal	ra,a0003c4c <__floatdidf>
a0004682:	862a                	mv	a2,a0
a0004684:	86ae                	mv	a3,a1
a0004686:	8562                	mv	a0,s8
a0004688:	85d2                	mv	a1,s4
a000468a:	ae1fe0ef          	jal	ra,a000316a <__subdf3>
a000468e:	865a                	mv	a2,s6
a0004690:	86de                	mv	a3,s7
a0004692:	d3efe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004696:	8d2a                	mv	s10,a0
a0004698:	8dae                	mv	s11,a1
a000469a:	caeff0ef          	jal	ra,a0003b48 <__fixdfdi>
a000469e:	842a                	mv	s0,a0
a00046a0:	84ae                	mv	s1,a1
a00046a2:	daaff0ef          	jal	ra,a0003c4c <__floatdidf>
a00046a6:	862a                	mv	a2,a0
a00046a8:	86ae                	mv	a3,a1
a00046aa:	856a                	mv	a0,s10
a00046ac:	85ee                	mv	a1,s11
a00046ae:	abdfe0ef          	jal	ra,a000316a <__subdf3>
a00046b2:	a0007837          	lui	a6,0xa0007
a00046b6:	5d082d03          	lw	s10,1488(a6) # a00075d0 <__psram_limit+0xf7c075d0>
a00046ba:	5d482d83          	lw	s11,1492(a6)
a00046be:	c42a                	sw	a0,8(sp)
a00046c0:	866a                	mv	a2,s10
a00046c2:	86ee                	mv	a3,s11
a00046c4:	c62e                	sw	a1,12(sp)
a00046c6:	baefe0ef          	jal	ra,a0002a74 <__gedf2>
a00046ca:	a0007837          	lui	a6,0xa0007
a00046ce:	c242                	sw	a6,4(sp)
a00046d0:	4722                	lw	a4,8(sp)
a00046d2:	47b2                	lw	a5,12(sp)
a00046d4:	0aa05963          	blez	a0,a0004786 <get_components+0x15c>
a00046d8:	4d05                	li	s10,1
a00046da:	4d81                	li	s11,0
a00046dc:	c1a41477          	add64	s0,s0,s10
a00046e0:	8522                	mv	a0,s0
a00046e2:	85a6                	mv	a1,s1
a00046e4:	d68ff0ef          	jal	ra,a0003c4c <__floatdidf>
a00046e8:	862a                	mv	a2,a0
a00046ea:	86ae                	mv	a3,a1
a00046ec:	855a                	mv	a0,s6
a00046ee:	85de                	mv	a1,s7
a00046f0:	c32fe0ef          	jal	ra,a0002b22 <__ledf2>
a00046f4:	00a04663          	bgtz	a0,a0004700 <get_components+0xd6>
a00046f8:	c1a91977          	add64	s2,s2,s10
a00046fc:	4401                	li	s0,0
a00046fe:	4481                	li	s1,0
a0004700:	040c9863          	bnez	s9,a0004750 <get_components+0x126>
a0004704:	854a                	mv	a0,s2
a0004706:	85ce                	mv	a1,s3
a0004708:	d44ff0ef          	jal	ra,a0003c4c <__floatdidf>
a000470c:	862a                	mv	a2,a0
a000470e:	86ae                	mv	a3,a1
a0004710:	8562                	mv	a0,s8
a0004712:	85d2                	mv	a1,s4
a0004714:	a57fe0ef          	jal	ra,a000316a <__subdf3>
a0004718:	4792                	lw	a5,4(sp)
a000471a:	8c2a                	mv	s8,a0
a000471c:	8cae                	mv	s9,a1
a000471e:	5d07ab03          	lw	s6,1488(a5)
a0004722:	5d47ab83          	lw	s7,1492(a5)
a0004726:	865a                	mv	a2,s6
a0004728:	86de                	mv	a3,s7
a000472a:	bf8fe0ef          	jal	ra,a0002b22 <__ledf2>
a000472e:	00055a63          	bgez	a0,a0004742 <get_components+0x118>
a0004732:	865a                	mv	a2,s6
a0004734:	86de                	mv	a3,s7
a0004736:	8562                	mv	a0,s8
a0004738:	85e6                	mv	a1,s9
a000473a:	b3afe0ef          	jal	ra,a0002a74 <__gedf2>
a000473e:	00a05963          	blez	a0,a0004750 <get_components+0x126>
a0004742:	00197793          	andi	a5,s2,1
a0004746:	c789                	beqz	a5,a0004750 <get_components+0x126>
a0004748:	4705                	li	a4,1
a000474a:	4781                	li	a5,0
a000474c:	c0e91977          	add64	s2,s2,a4
a0004750:	4782                	lw	a5,0(sp)
a0004752:	008aa423          	sw	s0,8(s5)
a0004756:	40b6                	lw	ra,76(sp)
a0004758:	4426                	lw	s0,72(sp)
a000475a:	012aa023          	sw	s2,0(s5)
a000475e:	013aa223          	sw	s3,4(s5)
a0004762:	009aa623          	sw	s1,12(s5)
a0004766:	00fa8823          	sb	a5,16(s5)
a000476a:	4496                	lw	s1,68(sp)
a000476c:	4906                	lw	s2,64(sp)
a000476e:	59f2                	lw	s3,60(sp)
a0004770:	5a62                	lw	s4,56(sp)
a0004772:	5b42                	lw	s6,48(sp)
a0004774:	5bb2                	lw	s7,44(sp)
a0004776:	5c22                	lw	s8,40(sp)
a0004778:	5c92                	lw	s9,36(sp)
a000477a:	5d02                	lw	s10,32(sp)
a000477c:	4df2                	lw	s11,28(sp)
a000477e:	8556                	mv	a0,s5
a0004780:	5ad2                	lw	s5,52(sp)
a0004782:	6161                	addi	sp,sp,80
a0004784:	8082                	ret
a0004786:	866a                	mv	a2,s10
a0004788:	86ee                	mv	a3,s11
a000478a:	853a                	mv	a0,a4
a000478c:	85be                	mv	a1,a5
a000478e:	a42fe0ef          	jal	ra,a00029d0 <__eqdf2>
a0004792:	f53d                	bnez	a0,a0004700 <get_components+0xd6>
a0004794:	009467b3          	or	a5,s0,s1
a0004798:	c781                	beqz	a5,a00047a0 <get_components+0x176>
a000479a:	00147793          	andi	a5,s0,1
a000479e:	d3ad                	beqz	a5,a0004700 <get_components+0xd6>
a00047a0:	4705                	li	a4,1
a00047a2:	4781                	li	a5,0
a00047a4:	c0e41477          	add64	s0,s0,a4
a00047a8:	bfa1                	j	a0004700 <get_components+0xd6>

a00047aa <out_console>:
a00047aa:	62fc37b7          	lui	a5,0x62fc3
a00047ae:	85aa                	mv	a1,a0
a00047b0:	df87a503          	lw	a0,-520(a5) # 62fc2df8 <console>
a00047b4:	c2fbc317          	auipc	t1,0xc2fbc
a00047b8:	f5430067          	jr	-172(t1) # 62fc0708 <qcc74x_uart_putchar>

a00047bc <print_broken_up_decimal.isra.0>:
a00047bc:	715d                	addi	sp,sp,-80
a00047be:	d266                	sw	s9,36(sp)
a00047c0:	4cd6                	lw	s9,84(sp)
a00047c2:	c4a2                	sw	s0,72(sp)
a00047c4:	c0ca                	sw	s2,64(sp)
a00047c6:	dc52                	sw	s4,56(sp)
a00047c8:	da56                	sw	s5,52(sp)
a00047ca:	d85a                	sw	s6,48(sp)
a00047cc:	d65e                	sw	s7,44(sp)
a00047ce:	d462                	sw	s8,40(sp)
a00047d0:	d06a                	sw	s10,32(sp)
a00047d2:	c686                	sw	ra,76(sp)
a00047d4:	c2a6                	sw	s1,68(sp)
a00047d6:	de4e                	sw	s3,60(sp)
a00047d8:	ce6e                	sw	s11,28(sp)
a00047da:	c23e                	sw	a5,4(sp)
a00047dc:	c442                	sw	a6,8(sp)
a00047de:	c646                	sw	a7,12(sp)
a00047e0:	4d46                	lw	s10,80(sp)
a00047e2:	4be6                	lw	s7,88(sp)
a00047e4:	4c76                	lw	s8,92(sp)
a00047e6:	5906                	lw	s2,96(sp)
a00047e8:	5416                	lw	s0,100(sp)
a00047ea:	8a2a                	mv	s4,a0
a00047ec:	8aae                	mv	s5,a1
a00047ee:	8b3a                	mv	s6,a4
a00047f0:	0a0c8563          	beqz	s9,a000489a <print_broken_up_decimal.isra.0+0xde>
a00047f4:	6705                	lui	a4,0x1
a00047f6:	81070713          	addi	a4,a4,-2032 # 810 <__RFTLV_SIZE_HOLE+0x10>
a00047fa:	00ec7733          	and	a4,s8,a4
a00047fe:	80070713          	addi	a4,a4,-2048
a0004802:	89b2                	mv	s3,a2
a0004804:	84b6                	mv	s1,a3
a0004806:	14071a63          	bnez	a4,a000495a <print_broken_up_decimal.isra.0+0x19e>
a000480a:	00d04463          	bgtz	a3,a0004812 <print_broken_up_decimal.isra.0+0x56>
a000480e:	e2d5                	bnez	a3,a00048b2 <print_broken_up_decimal.isra.0+0xf6>
a0004810:	c24d                	beqz	a2,a00048b2 <print_broken_up_decimal.isra.0+0xf6>
a0004812:	4629                	li	a2,10
a0004814:	4681                	li	a3,0
a0004816:	854e                	mv	a0,s3
a0004818:	85a6                	mv	a1,s1
a000481a:	863fc0ef          	jal	ra,a000107c <__moddi3>
a000481e:	8d4d                	or	a0,a0,a1
a0004820:	12051a63          	bnez	a0,a0004954 <print_broken_up_decimal.isra.0+0x198>
a0004824:	854e                	mv	a0,s3
a0004826:	85a6                	mv	a1,s1
a0004828:	4629                	li	a2,10
a000482a:	4681                	li	a3,0
a000482c:	ca8fc0ef          	jal	ra,a0000cd4 <__divdi3>
a0004830:	1cfd                	addi	s9,s9,-1
a0004832:	89aa                	mv	s3,a0
a0004834:	84ae                	mv	s1,a1
a0004836:	bff1                	j	a0004812 <print_broken_up_decimal.isra.0+0x56>
a0004838:	4629                	li	a2,10
a000483a:	4681                	li	a3,0
a000483c:	854e                	mv	a0,s3
a000483e:	85a6                	mv	a1,s1
a0004840:	83dfc0ef          	jal	ra,a000107c <__moddi3>
a0004844:	03050513          	addi	a0,a0,48
a0004848:	0405                	addi	s0,s0,1
a000484a:	008dd50b          	srb	a0,s11,s0,0
a000484e:	85a6                	mv	a1,s1
a0004850:	854e                	mv	a0,s3
a0004852:	4629                	li	a2,10
a0004854:	4681                	li	a3,0
a0004856:	c7efc0ef          	jal	ra,a0000cd4 <__divdi3>
a000485a:	84ae                	mv	s1,a1
a000485c:	8dc9                	or	a1,a1,a0
a000485e:	1cfd                	addi	s9,s9,-1
a0004860:	89aa                	mv	s3,a0
a0004862:	02000713          	li	a4,32
a0004866:	0e059e63          	bnez	a1,a0004962 <print_broken_up_decimal.isra.0+0x1a6>
a000486a:	008c87b3          	add	a5,s9,s0
a000486e:	02000613          	li	a2,32
a0004872:	03000593          	li	a1,48
a0004876:	0ec40863          	beq	s0,a2,a0004966 <print_broken_up_decimal.isra.0+0x1aa>
a000487a:	00140713          	addi	a4,s0,1
a000487e:	008906b3          	add	a3,s2,s0
a0004882:	00879863          	bne	a5,s0,a0004892 <print_broken_up_decimal.isra.0+0xd6>
a0004886:	02e00793          	li	a5,46
a000488a:	00f68023          	sb	a5,0(a3)
a000488e:	843a                	mv	s0,a4
a0004890:	a00d                	j	a00048b2 <print_broken_up_decimal.isra.0+0xf6>
a0004892:	0089558b          	srb	a1,s2,s0,0
a0004896:	843a                	mv	s0,a4
a0004898:	bff9                	j	a0004876 <print_broken_up_decimal.isra.0+0xba>
a000489a:	010c7793          	andi	a5,s8,16
a000489e:	cb91                	beqz	a5,a00048b2 <print_broken_up_decimal.isra.0+0xf6>
a00048a0:	02000793          	li	a5,32
a00048a4:	0cf40163          	beq	s0,a5,a0004966 <print_broken_up_decimal.isra.0+0x1aa>
a00048a8:	02e00793          	li	a5,46
a00048ac:	0089578b          	srb	a5,s2,s0,0
a00048b0:	0405                	addi	s0,s0,1
a00048b2:	02000993          	li	s3,32
a00048b6:	fff90493          	addi	s1,s2,-1 # 7fffff <remain_wifi_ram+0x7dffff>
a00048ba:	a035                	j	a00048e6 <print_broken_up_decimal.isra.0+0x12a>
a00048bc:	4629                	li	a2,10
a00048be:	4681                	li	a3,0
a00048c0:	8552                	mv	a0,s4
a00048c2:	85d6                	mv	a1,s5
a00048c4:	fb8fc0ef          	jal	ra,a000107c <__moddi3>
a00048c8:	03050513          	addi	a0,a0,48
a00048cc:	0405                	addi	s0,s0,1
a00048ce:	0084d50b          	srb	a0,s1,s0,0
a00048d2:	85d6                	mv	a1,s5
a00048d4:	8552                	mv	a0,s4
a00048d6:	4629                	li	a2,10
a00048d8:	4681                	li	a3,0
a00048da:	bfafc0ef          	jal	ra,a0000cd4 <__divdi3>
a00048de:	8aae                	mv	s5,a1
a00048e0:	8dc9                	or	a1,a1,a0
a00048e2:	8a2a                	mv	s4,a0
a00048e4:	c1d9                	beqz	a1,a000496a <print_broken_up_decimal.isra.0+0x1ae>
a00048e6:	fd341be3          	bne	s0,s3,a00048bc <print_broken_up_decimal.isra.0+0x100>
a00048ea:	a8b5                	j	a0004966 <print_broken_up_decimal.isra.0+0x1aa>
a00048ec:	0089570b          	srb	a4,s2,s0,0
a00048f0:	0405                	addi	s0,s0,1
a00048f2:	03747b63          	bgeu	s0,s7,a0004928 <print_broken_up_decimal.isra.0+0x16c>
a00048f6:	fef41be3          	bne	s0,a5,a00048ec <print_broken_up_decimal.isra.0+0x130>
a00048fa:	87a2                	mv	a5,s0
a00048fc:	4426                	lw	s0,72(sp)
a00048fe:	4632                	lw	a2,12(sp)
a0004900:	45a2                	lw	a1,8(sp)
a0004902:	4512                	lw	a0,4(sp)
a0004904:	40b6                	lw	ra,76(sp)
a0004906:	4496                	lw	s1,68(sp)
a0004908:	59f2                	lw	s3,60(sp)
a000490a:	5a62                	lw	s4,56(sp)
a000490c:	5ad2                	lw	s5,52(sp)
a000490e:	5b42                	lw	s6,48(sp)
a0004910:	5c92                	lw	s9,36(sp)
a0004912:	4df2                	lw	s11,28(sp)
a0004914:	88e2                	mv	a7,s8
a0004916:	885e                	mv	a6,s7
a0004918:	5c22                	lw	s8,40(sp)
a000491a:	5bb2                	lw	s7,44(sp)
a000491c:	874a                	mv	a4,s2
a000491e:	86ea                	mv	a3,s10
a0004920:	4906                	lw	s2,64(sp)
a0004922:	5d02                	lw	s10,32(sp)
a0004924:	6161                	addi	sp,sp,80
a0004926:	b4a9                	j	a0004370 <out_rev_>
a0004928:	02000793          	li	a5,32
a000492c:	fcf407e3          	beq	s0,a5,a00048fa <print_broken_up_decimal.isra.0+0x13e>
a0004930:	000b0863          	beqz	s6,a0004940 <print_broken_up_decimal.isra.0+0x184>
a0004934:	02d00793          	li	a5,45
a0004938:	0089578b          	srb	a5,s2,s0,0
a000493c:	0405                	addi	s0,s0,1
a000493e:	bf75                	j	a00048fa <print_broken_up_decimal.isra.0+0x13e>
a0004940:	004c7713          	andi	a4,s8,4
a0004944:	c701                	beqz	a4,a000494c <print_broken_up_decimal.isra.0+0x190>
a0004946:	02b00793          	li	a5,43
a000494a:	b7fd                	j	a0004938 <print_broken_up_decimal.isra.0+0x17c>
a000494c:	008c7713          	andi	a4,s8,8
a0004950:	d74d                	beqz	a4,a00048fa <print_broken_up_decimal.isra.0+0x13e>
a0004952:	b7dd                	j	a0004938 <print_broken_up_decimal.isra.0+0x17c>
a0004954:	0099e733          	or	a4,s3,s1
a0004958:	df29                	beqz	a4,a00048b2 <print_broken_up_decimal.isra.0+0xf6>
a000495a:	02000713          	li	a4,32
a000495e:	fff90d93          	addi	s11,s2,-1
a0004962:	ece41be3          	bne	s0,a4,a0004838 <print_broken_up_decimal.isra.0+0x7c>
a0004966:	02000413          	li	s0,32
a000496a:	003c7793          	andi	a5,s8,3
a000496e:	4705                	li	a4,1
a0004970:	fae79ce3          	bne	a5,a4,a0004928 <print_broken_up_decimal.isra.0+0x16c>
a0004974:	fa0b8ae3          	beqz	s7,a0004928 <print_broken_up_decimal.isra.0+0x16c>
a0004978:	000b1563          	bnez	s6,a0004982 <print_broken_up_decimal.isra.0+0x1c6>
a000497c:	00cc7793          	andi	a5,s8,12
a0004980:	c391                	beqz	a5,a0004984 <print_broken_up_decimal.isra.0+0x1c8>
a0004982:	1bfd                	addi	s7,s7,-1
a0004984:	02000793          	li	a5,32
a0004988:	03000713          	li	a4,48
a000498c:	b79d                	j	a00048f2 <print_broken_up_decimal.isra.0+0x136>

a000498e <update_normalization>:
a000498e:	0085c783          	lbu	a5,8(a1)
a0004992:	1141                	addi	sp,sp,-16
a0004994:	c422                	sw	s0,8(sp)
a0004996:	c606                	sw	ra,12(sp)
a0004998:	842a                	mv	s0,a0
a000499a:	0005a303          	lw	t1,0(a1)
a000499e:	0045a803          	lw	a6,4(a1)
a00049a2:	88b2                	mv	a7,a2
a00049a4:	8536                	mv	a0,a3
a00049a6:	c799                	beqz	a5,a00049b4 <update_normalization+0x26>
a00049a8:	851a                	mv	a0,t1
a00049aa:	85c2                	mv	a1,a6
a00049ac:	a24fe0ef          	jal	ra,a0002bd0 <__muldf3>
a00049b0:	4785                	li	a5,1
a00049b2:	a815                	j	a00049e6 <update_normalization+0x58>
a00049b4:	7948378b          	extu	a5,a6,30,20
a00049b8:	c0178793          	addi	a5,a5,-1023
a00049bc:	41f7d713          	srai	a4,a5,0x1f
a00049c0:	8fb9                	xor	a5,a5,a4
a00049c2:	40e78733          	sub	a4,a5,a4
a00049c6:	7946b78b          	extu	a5,a3,30,20
a00049ca:	c0178793          	addi	a5,a5,-1023
a00049ce:	41f7d693          	srai	a3,a5,0x1f
a00049d2:	8fb5                	xor	a5,a5,a3
a00049d4:	8f95                	sub	a5,a5,a3
a00049d6:	02e7d163          	bge	a5,a4,a00049f8 <update_normalization+0x6a>
a00049da:	86aa                	mv	a3,a0
a00049dc:	85c2                	mv	a1,a6
a00049de:	851a                	mv	a0,t1
a00049e0:	969fd0ef          	jal	ra,a0002348 <__divdf3>
a00049e4:	4781                	li	a5,0
a00049e6:	c008                	sw	a0,0(s0)
a00049e8:	40b2                	lw	ra,12(sp)
a00049ea:	c04c                	sw	a1,4(s0)
a00049ec:	00f40423          	sb	a5,8(s0)
a00049f0:	8522                	mv	a0,s0
a00049f2:	4422                	lw	s0,8(sp)
a00049f4:	0141                	addi	sp,sp,16
a00049f6:	8082                	ret
a00049f8:	87aa                	mv	a5,a0
a00049fa:	861a                	mv	a2,t1
a00049fc:	86c2                	mv	a3,a6
a00049fe:	8546                	mv	a0,a7
a0004a00:	85be                	mv	a1,a5
a0004a02:	947fd0ef          	jal	ra,a0002348 <__divdf3>
a0004a06:	b76d                	j	a00049b0 <update_normalization+0x22>

a0004a08 <print_exponential_number>:
a0004a08:	7155                	addi	sp,sp,-208
a0004a0a:	d95a                	sw	s6,176(sp)
a0004a0c:	8b3e                	mv	s6,a5
a0004a0e:	83fd                	srli	a5,a5,0x1f
a0004a10:	c3a6                	sw	s1,196(sp)
a0004a12:	c1ca                	sw	s2,192(sp)
a0004a14:	d75e                	sw	s7,172(sp)
a0004a16:	d16a                	sw	s10,160(sp)
a0004a18:	cf6e                	sw	s11,156(sp)
a0004a1a:	c786                	sw	ra,204(sp)
a0004a1c:	c5a2                	sw	s0,200(sp)
a0004a1e:	df4e                	sw	s3,188(sp)
a0004a20:	dd52                	sw	s4,184(sp)
a0004a22:	db56                	sw	s5,180(sp)
a0004a24:	d562                	sw	s8,168(sp)
a0004a26:	d366                	sw	s9,164(sp)
a0004a28:	d62e                	sw	a1,44(sp)
a0004a2a:	da32                	sw	a2,52(sp)
a0004a2c:	d836                	sw	a3,48(sp)
a0004a2e:	dc46                	sw	a7,56(sp)
a0004a30:	de3e                	sw	a5,60(sp)
a0004a32:	4dce                	lw	s11,208(sp)
a0004a34:	8d2a                	mv	s10,a0
a0004a36:	8bba                	mv	s7,a4
a0004a38:	84c2                	mv	s1,a6
a0004a3a:	4901                	li	s2,0
a0004a3c:	c789                	beqz	a5,a0004a46 <print_exponential_number+0x3e>
a0004a3e:	800007b7          	lui	a5,0x80000
a0004a42:	0167cb33          	xor	s6,a5,s6
a0004a46:	4601                	li	a2,0
a0004a48:	4681                	li	a3,0
a0004a4a:	855e                	mv	a0,s7
a0004a4c:	85da                	mv	a1,s6
a0004a4e:	f83fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004a52:	4401                	li	s0,0
a0004a54:	20050363          	beqz	a0,a0004c5a <print_exponential_number+0x252>
a0004a58:	794b350b          	extu	a0,s6,30,20
a0004a5c:	c0150513          	addi	a0,a0,-1023
a0004a60:	882ff0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004a64:	a00077b7          	lui	a5,0xa0007
a0004a68:	5d87a603          	lw	a2,1496(a5) # a00075d8 <__psram_limit+0xf7c075d8>
a0004a6c:	5dc7a683          	lw	a3,1500(a5)
a0004a70:	a0007c37          	lui	s8,0xa0007
a0004a74:	95cfe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004a78:	a00077b7          	lui	a5,0xa0007
a0004a7c:	5e07a603          	lw	a2,1504(a5) # a00075e0 <__psram_limit+0xf7c075e0>
a0004a80:	5e47a683          	lw	a3,1508(a5)
a0004a84:	81afd0ef          	jal	ra,a0001a9e <__adddf3>
a0004a88:	001007b7          	lui	a5,0x100
a0004a8c:	a0007737          	lui	a4,0xa0007
a0004a90:	17fd                	addi	a5,a5,-1
a0004a92:	5e872603          	lw	a2,1512(a4) # a00075e8 <__psram_limit+0xf7c075e8>
a0004a96:	5ec72683          	lw	a3,1516(a4)
a0004a9a:	00fb77b3          	and	a5,s6,a5
a0004a9e:	3ff00737          	lui	a4,0x3ff00
a0004aa2:	8f5d                	or	a4,a4,a5
a0004aa4:	892a                	mv	s2,a0
a0004aa6:	89ae                	mv	s3,a1
a0004aa8:	855e                	mv	a0,s7
a0004aaa:	85ba                	mv	a1,a4
a0004aac:	ebefe0ef          	jal	ra,a000316a <__subdf3>
a0004ab0:	a00077b7          	lui	a5,0xa0007
a0004ab4:	5f07a603          	lw	a2,1520(a5) # a00075f0 <__psram_limit+0xf7c075f0>
a0004ab8:	5f47a683          	lw	a3,1524(a5)
a0004abc:	914fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004ac0:	862a                	mv	a2,a0
a0004ac2:	86ae                	mv	a3,a1
a0004ac4:	854a                	mv	a0,s2
a0004ac6:	85ce                	mv	a1,s3
a0004ac8:	fd7fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004acc:	f53fe0ef          	jal	ra,a0003a1e <__fixdfsi>
a0004ad0:	842a                	mv	s0,a0
a0004ad2:	810ff0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004ad6:	a00077b7          	lui	a5,0xa0007
a0004ada:	5f87a603          	lw	a2,1528(a5) # a00075f8 <__psram_limit+0xf7c075f8>
a0004ade:	5fc7a683          	lw	a3,1532(a5)
a0004ae2:	892a                	mv	s2,a0
a0004ae4:	89ae                	mv	s3,a1
a0004ae6:	8eafe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004aea:	a00077b7          	lui	a5,0xa0007
a0004aee:	5d07a603          	lw	a2,1488(a5) # a00075d0 <__psram_limit+0xf7c075d0>
a0004af2:	5d47a683          	lw	a3,1492(a5)
a0004af6:	fa9fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004afa:	f25fe0ef          	jal	ra,a0003a1e <__fixdfsi>
a0004afe:	a00077b7          	lui	a5,0xa0007
a0004b02:	6007a603          	lw	a2,1536(a5) # a0007600 <__psram_limit+0xf7c07600>
a0004b06:	6047a683          	lw	a3,1540(a5)
a0004b0a:	8caa                	mv	s9,a0
a0004b0c:	85ce                	mv	a1,s3
a0004b0e:	854a                	mv	a0,s2
a0004b10:	8c0fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004b14:	892a                	mv	s2,a0
a0004b16:	8566                	mv	a0,s9
a0004b18:	89ae                	mv	s3,a1
a0004b1a:	fc9fe0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004b1e:	a00077b7          	lui	a5,0xa0007
a0004b22:	6087a603          	lw	a2,1544(a5) # a0007608 <__psram_limit+0xf7c07608>
a0004b26:	60c7a683          	lw	a3,1548(a5)
a0004b2a:	8a6fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004b2e:	862a                	mv	a2,a0
a0004b30:	86ae                	mv	a3,a1
a0004b32:	854a                	mv	a0,s2
a0004b34:	85ce                	mv	a1,s3
a0004b36:	e34fe0ef          	jal	ra,a000316a <__subdf3>
a0004b3a:	862a                	mv	a2,a0
a0004b3c:	86ae                	mv	a3,a1
a0004b3e:	8a2a                	mv	s4,a0
a0004b40:	8aae                	mv	s5,a1
a0004b42:	88efe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004b46:	892a                	mv	s2,a0
a0004b48:	89ae                	mv	s3,a1
a0004b4a:	8652                	mv	a2,s4
a0004b4c:	86d6                	mv	a3,s5
a0004b4e:	8552                	mv	a0,s4
a0004b50:	85d6                	mv	a1,s5
a0004b52:	f4dfc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b56:	a00076b7          	lui	a3,0xa0007
a0004b5a:	6106a603          	lw	a2,1552(a3) # a0007610 <__psram_limit+0xf7c07610>
a0004b5e:	6146a683          	lw	a3,1556(a3)
a0004b62:	c0aa                	sw	a0,64(sp)
a0004b64:	c2ae                	sw	a1,68(sp)
a0004b66:	854a                	mv	a0,s2
a0004b68:	85ce                	mv	a1,s3
a0004b6a:	fdefd0ef          	jal	ra,a0002348 <__divdf3>
a0004b6e:	618c2603          	lw	a2,1560(s8) # a0007618 <__psram_limit+0xf7c07618>
a0004b72:	61cc2683          	lw	a3,1564(s8)
a0004b76:	f29fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b7a:	862a                	mv	a2,a0
a0004b7c:	86ae                	mv	a3,a1
a0004b7e:	854a                	mv	a0,s2
a0004b80:	85ce                	mv	a1,s3
a0004b82:	fc6fd0ef          	jal	ra,a0002348 <__divdf3>
a0004b86:	a00076b7          	lui	a3,0xa0007
a0004b8a:	6206a603          	lw	a2,1568(a3) # a0007620 <__psram_limit+0xf7c07620>
a0004b8e:	6246a683          	lw	a3,1572(a3)
a0004b92:	f0dfc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b96:	862a                	mv	a2,a0
a0004b98:	86ae                	mv	a3,a1
a0004b9a:	854a                	mv	a0,s2
a0004b9c:	85ce                	mv	a1,s3
a0004b9e:	faafd0ef          	jal	ra,a0002348 <__divdf3>
a0004ba2:	89ae                	mv	s3,a1
a0004ba4:	a00075b7          	lui	a1,0xa0007
a0004ba8:	892a                	mv	s2,a0
a0004baa:	6285a503          	lw	a0,1576(a1) # a0007628 <__psram_limit+0xf7c07628>
a0004bae:	62c5a583          	lw	a1,1580(a1)
a0004bb2:	8652                	mv	a2,s4
a0004bb4:	86d6                	mv	a3,s5
a0004bb6:	db4fe0ef          	jal	ra,a000316a <__subdf3>
a0004bba:	862a                	mv	a2,a0
a0004bbc:	86ae                	mv	a3,a1
a0004bbe:	854a                	mv	a0,s2
a0004bc0:	85ce                	mv	a1,s3
a0004bc2:	eddfc0ef          	jal	ra,a0001a9e <__adddf3>
a0004bc6:	4706                	lw	a4,64(sp)
a0004bc8:	4796                	lw	a5,68(sp)
a0004bca:	862a                	mv	a2,a0
a0004bcc:	86ae                	mv	a3,a1
a0004bce:	853a                	mv	a0,a4
a0004bd0:	85be                	mv	a1,a5
a0004bd2:	f76fd0ef          	jal	ra,a0002348 <__divdf3>
a0004bd6:	a00077b7          	lui	a5,0xa0007
a0004bda:	6307a603          	lw	a2,1584(a5) # a0007630 <__psram_limit+0xf7c07630>
a0004bde:	6347a683          	lw	a3,1588(a5)
a0004be2:	ebdfc0ef          	jal	ra,a0001a9e <__adddf3>
a0004be6:	3ff00613          	li	a2,1023
a0004bea:	4681                	li	a3,0
a0004bec:	8766                	mv	a4,s9
a0004bee:	41fcd793          	srai	a5,s9,0x1f
a0004bf2:	c0c71777          	add64	a4,a4,a2
a0004bf6:	4801                	li	a6,0
a0004bf8:	01471893          	slli	a7,a4,0x14
a0004bfc:	8642                	mv	a2,a6
a0004bfe:	86c6                	mv	a3,a7
a0004c00:	fd1fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004c04:	865e                	mv	a2,s7
a0004c06:	86da                	mv	a3,s6
a0004c08:	8a2a                	mv	s4,a0
a0004c0a:	8aae                	mv	s5,a1
a0004c0c:	e69fd0ef          	jal	ra,a0002a74 <__gedf2>
a0004c10:	00a05d63          	blez	a0,a0004c2a <print_exponential_number+0x222>
a0004c14:	618c2603          	lw	a2,1560(s8)
a0004c18:	61cc2683          	lw	a3,1564(s8)
a0004c1c:	8552                	mv	a0,s4
a0004c1e:	85d6                	mv	a1,s5
a0004c20:	f28fd0ef          	jal	ra,a0002348 <__divdf3>
a0004c24:	147d                	addi	s0,s0,-1
a0004c26:	8a2a                	mv	s4,a0
a0004c28:	8aae                	mv	s5,a1
a0004c2a:	01140793          	addi	a5,s0,17
a0004c2e:	02200713          	li	a4,34
a0004c32:	0237b913          	sltiu	s2,a5,35
a0004c36:	02f76263          	bltu	a4,a5,a0004c5a <print_exponential_number+0x252>
a0004c3a:	41f45713          	srai	a4,s0,0x1f
a0004c3e:	008747b3          	xor	a5,a4,s0
a0004c42:	40e78733          	sub	a4,a5,a4
a0004c46:	a00077b7          	lui	a5,0xa0007
a0004c4a:	65878793          	addi	a5,a5,1624 # a0007658 <__psram_limit+0xf7c07658>
a0004c4e:	06e7978b          	addsl	a5,a5,a4,3
a0004c52:	0007aa03          	lw	s4,0(a5)
a0004c56:	0047aa83          	lw	s5,4(a5)
a0004c5a:	2cbdb78b          	extu	a5,s11,11,11
a0004c5e:	30078463          	beqz	a5,a0004f66 <print_exponential_number+0x55e>
a0004c62:	5771                	li	a4,-4
a0004c64:	fff48793          	addi	a5,s1,-1
a0004c68:	4c01                	li	s8,0
a0004c6a:	00e44963          	blt	s0,a4,a0004c7c <print_exponential_number+0x274>
a0004c6e:	e091                	bnez	s1,a0004c72 <print_exponential_number+0x26a>
a0004c70:	4485                	li	s1,1
a0004c72:	4c01                	li	s8,0
a0004c74:	00945463          	bge	s0,s1,a0004c7c <print_exponential_number+0x274>
a0004c78:	8f81                	sub	a5,a5,s0
a0004c7a:	4c05                	li	s8,1
a0004c7c:	84be                	mv	s1,a5
a0004c7e:	0007d363          	bgez	a5,a0004c84 <print_exponential_number+0x27c>
a0004c82:	4481                	li	s1,0
a0004c84:	400ded93          	ori	s11,s11,1024
a0004c88:	00045963          	bgez	s0,a0004c9a <print_exponential_number+0x292>
a0004c8c:	4c85                	li	s9,1
a0004c8e:	00091363          	bnez	s2,a0004c94 <print_exponential_number+0x28c>
a0004c92:	4c81                	li	s9,0
a0004c94:	000c1763          	bnez	s8,a0004ca2 <print_exponential_number+0x29a>
a0004c98:	a085                	j	a0004cf8 <print_exponential_number+0x2f0>
a0004c9a:	000c1463          	bnez	s8,a0004ca2 <print_exponential_number+0x29a>
a0004c9e:	ec21                	bnez	s0,a0004cf6 <print_exponential_number+0x2ee>
a0004ca0:	4c01                	li	s8,0
a0004ca2:	57f2                	lw	a5,60(sp)
a0004ca4:	c789                	beqz	a5,a0004cae <print_exponential_number+0x2a6>
a0004ca6:	800007b7          	lui	a5,0x80000
a0004caa:	0167cb33          	xor	s6,a5,s6
a0004cae:	86a6                	mv	a3,s1
a0004cb0:	85de                	mv	a1,s7
a0004cb2:	865a                	mv	a2,s6
a0004cb4:	18a8                	addi	a0,sp,120
a0004cb6:	3a95                	jal	a000462a <get_components>
a0004cb8:	08814783          	lbu	a5,136(sp)
a0004cbc:	4a0a                	lw	s4,128(sp)
a0004cbe:	4a9a                	lw	s5,132(sp)
a0004cc0:	de3e                	sw	a5,60(sp)
a0004cc2:	5966                	lw	s2,120(sp)
a0004cc4:	59f6                	lw	s3,124(sp)
a0004cc6:	180c1463          	bnez	s8,a0004e4e <print_exponential_number+0x446>
a0004cca:	01304763          	bgtz	s3,a0004cd8 <print_exponential_number+0x2d0>
a0004cce:	00099a63          	bnez	s3,a0004ce2 <print_exponential_number+0x2da>
a0004cd2:	47a5                	li	a5,9
a0004cd4:	0127f763          	bgeu	a5,s2,a0004ce2 <print_exponential_number+0x2da>
a0004cd8:	0405                	addi	s0,s0,1
a0004cda:	4a01                	li	s4,0
a0004cdc:	4a81                	li	s5,0
a0004cde:	4905                	li	s2,1
a0004ce0:	4981                	li	s3,0
a0004ce2:	06340793          	addi	a5,s0,99
a0004ce6:	0c600713          	li	a4,198
a0004cea:	4c01                	li	s8,0
a0004cec:	4b95                	li	s7,5
a0004cee:	18f76e63          	bltu	a4,a5,a0004e8a <print_exponential_number+0x482>
a0004cf2:	4b91                	li	s7,4
a0004cf4:	aa59                	j	a0004e8a <print_exponential_number+0x482>
a0004cf6:	4c81                	li	s9,0
a0004cf8:	d4d2                	sw	s4,104(sp)
a0004cfa:	d6d6                	sw	s5,108(sp)
a0004cfc:	07910823          	sb	s9,112(sp)
a0004d00:	8652                	mv	a2,s4
a0004d02:	86d6                	mv	a3,s5
a0004d04:	855e                	mv	a0,s7
a0004d06:	85da                	mv	a1,s6
a0004d08:	0a0c8a63          	beqz	s9,a0004dbc <print_exponential_number+0x3b4>
a0004d0c:	ec5fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004d10:	e39fe0ef          	jal	ra,a0003b48 <__fixdfdi>
a0004d14:	892a                	mv	s2,a0
a0004d16:	89ae                	mv	s3,a1
a0004d18:	f35fe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004d1c:	862a                	mv	a2,a0
a0004d1e:	86ae                	mv	a3,a1
a0004d20:	0a0c8163          	beqz	s9,a0004dc2 <print_exponential_number+0x3ba>
a0004d24:	8652                	mv	a2,s4
a0004d26:	86d6                	mv	a3,s5
a0004d28:	e20fd0ef          	jal	ra,a0002348 <__divdf3>
a0004d2c:	86ae                	mv	a3,a1
a0004d2e:	862a                	mv	a2,a0
a0004d30:	85da                	mv	a1,s6
a0004d32:	855e                	mv	a0,s7
a0004d34:	c36fe0ef          	jal	ra,a000316a <__subdf3>
a0004d38:	a00077b7          	lui	a5,0xa0007
a0004d3c:	65878793          	addi	a5,a5,1624 # a0007658 <__psram_limit+0xf7c07658>
a0004d40:	0697978b          	addsl	a5,a5,s1,3
a0004d44:	0007ac03          	lw	s8,0(a5)
a0004d48:	0047ac83          	lw	s9,4(a5)
a0004d4c:	8a2a                	mv	s4,a0
a0004d4e:	8aae                	mv	s5,a1
a0004d50:	4641                	li	a2,16
a0004d52:	10ac                	addi	a1,sp,104
a0004d54:	0888                	addi	a0,sp,80
a0004d56:	9c0ff0ef          	jal	ra,a0003f16 <memcpy>
a0004d5a:	8662                	mv	a2,s8
a0004d5c:	86e6                	mv	a3,s9
a0004d5e:	088c                	addi	a1,sp,80
a0004d60:	18a8                	addi	a0,sp,120
a0004d62:	3135                	jal	a000498e <update_normalization>
a0004d64:	08014783          	lbu	a5,128(sp)
a0004d68:	5666                	lw	a2,120(sp)
a0004d6a:	56f6                	lw	a3,124(sp)
a0004d6c:	8552                	mv	a0,s4
a0004d6e:	85d6                	mv	a1,s5
a0004d70:	cfb1                	beqz	a5,a0004dcc <print_exponential_number+0x3c4>
a0004d72:	e5ffd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004d76:	8a2a                	mv	s4,a0
a0004d78:	8aae                	mv	s5,a1
a0004d7a:	a0007b37          	lui	s6,0xa0007
a0004d7e:	e8b1                	bnez	s1,a0004dd2 <print_exponential_number+0x3ca>
a0004d80:	5d4b2b83          	lw	s7,1492(s6) # a00075d4 <__psram_limit+0xf7c075d4>
a0004d84:	5d0b2b03          	lw	s6,1488(s6)
a0004d88:	4c81                	li	s9,0
a0004d8a:	86de                	mv	a3,s7
a0004d8c:	865a                	mv	a2,s6
a0004d8e:	ce7fd0ef          	jal	ra,a0002a74 <__gedf2>
a0004d92:	41f55693          	srai	a3,a0,0x1f
a0004d96:	fff6c613          	not	a2,a3
a0004d9a:	01f65c13          	srli	s8,a2,0x1f
a0004d9e:	86de                	mv	a3,s7
a0004da0:	865a                	mv	a2,s6
a0004da2:	8552                	mv	a0,s4
a0004da4:	85d6                	mv	a1,s5
a0004da6:	c1891977          	add64	s2,s2,s8
a0004daa:	c27fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004dae:	e501                	bnez	a0,a0004db6 <print_exponential_number+0x3ae>
a0004db0:	ffe97713          	andi	a4,s2,-2
a0004db4:	893a                	mv	s2,a4
a0004db6:	4a01                	li	s4,0
a0004db8:	4a81                	li	s5,0
a0004dba:	bf01                	j	a0004cca <print_exponential_number+0x2c2>
a0004dbc:	d8cfd0ef          	jal	ra,a0002348 <__divdf3>
a0004dc0:	bf81                	j	a0004d10 <print_exponential_number+0x308>
a0004dc2:	8552                	mv	a0,s4
a0004dc4:	85d6                	mv	a1,s5
a0004dc6:	e0bfd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004dca:	b78d                	j	a0004d2c <print_exponential_number+0x324>
a0004dcc:	d7cfd0ef          	jal	ra,a0002348 <__divdf3>
a0004dd0:	b75d                	j	a0004d76 <print_exponential_number+0x36e>
a0004dd2:	d77fe0ef          	jal	ra,a0003b48 <__fixdfdi>
a0004dd6:	c4aa                	sw	a0,72(sp)
a0004dd8:	c6ae                	sw	a1,76(sp)
a0004dda:	e73fe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004dde:	862a                	mv	a2,a0
a0004de0:	86ae                	mv	a3,a1
a0004de2:	8552                	mv	a0,s4
a0004de4:	85d6                	mv	a1,s5
a0004de6:	b84fe0ef          	jal	ra,a000316a <__subdf3>
a0004dea:	5d4b2b83          	lw	s7,1492(s6)
a0004dee:	5d0b2b03          	lw	s6,1488(s6)
a0004df2:	c2ae                	sw	a1,68(sp)
a0004df4:	86de                	mv	a3,s7
a0004df6:	865a                	mv	a2,s6
a0004df8:	c0aa                	sw	a0,64(sp)
a0004dfa:	c7bfd0ef          	jal	ra,a0002a74 <__gedf2>
a0004dfe:	4706                	lw	a4,64(sp)
a0004e00:	4796                	lw	a5,68(sp)
a0004e02:	41f55693          	srai	a3,a0,0x1f
a0004e06:	4826                	lw	a6,72(sp)
a0004e08:	48b6                	lw	a7,76(sp)
a0004e0a:	fff6c613          	not	a2,a3
a0004e0e:	01f65a13          	srli	s4,a2,0x1f
a0004e12:	4a81                	li	s5,0
a0004e14:	865a                	mv	a2,s6
a0004e16:	86de                	mv	a3,s7
a0004e18:	853a                	mv	a0,a4
a0004e1a:	85be                	mv	a1,a5
a0004e1c:	c10a1a77          	add64	s4,s4,a6
a0004e20:	bb1fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004e24:	e501                	bnez	a0,a0004e2c <print_exponential_number+0x424>
a0004e26:	ffea7713          	andi	a4,s4,-2
a0004e2a:	8a3a                	mv	s4,a4
a0004e2c:	8552                	mv	a0,s4
a0004e2e:	85d6                	mv	a1,s5
a0004e30:	e1dfe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004e34:	862a                	mv	a2,a0
a0004e36:	86ae                	mv	a3,a1
a0004e38:	8562                	mv	a0,s8
a0004e3a:	85e6                	mv	a1,s9
a0004e3c:	ce7fd0ef          	jal	ra,a0002b22 <__ledf2>
a0004e40:	e8a045e3          	bgtz	a0,a0004cca <print_exponential_number+0x2c2>
a0004e44:	4705                	li	a4,1
a0004e46:	4781                	li	a5,0
a0004e48:	c0e91977          	add64	s2,s2,a4
a0004e4c:	b7ad                	j	a0004db6 <print_exponential_number+0x3ae>
a0004e4e:	6b85                	lui	s7,0x1
a0004e50:	800b8b93          	addi	s7,s7,-2048 # 800 <__RFTLV_SIZE_HOLE>
a0004e54:	017dfbb3          	and	s7,s11,s7
a0004e58:	020b8963          	beqz	s7,a0004e8a <print_exponential_number+0x482>
a0004e5c:	57fd                	li	a5,-1
a0004e5e:	4b81                	li	s7,0
a0004e60:	02f44563          	blt	s0,a5,a0004e8a <print_exponential_number+0x482>
a0004e64:	854a                	mv	a0,s2
a0004e66:	85ce                	mv	a1,s3
a0004e68:	de5fe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004e6c:	a00077b7          	lui	a5,0xa0007
a0004e70:	00140b13          	addi	s6,s0,1
a0004e74:	65878793          	addi	a5,a5,1624 # a0007658 <__psram_limit+0xf7c07658>
a0004e78:	0767978b          	addsl	a5,a5,s6,3
a0004e7c:	4390                	lw	a2,0(a5)
a0004e7e:	43d4                	lw	a3,4(a5)
a0004e80:	b51fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004e84:	e119                	bnez	a0,a0004e8a <print_exponential_number+0x482>
a0004e86:	14fd                	addi	s1,s1,-1
a0004e88:	845a                	mv	s0,s6
a0004e8a:	002dfb13          	andi	s6,s11,2
a0004e8e:	000b0563          	beqz	s6,a0004e98 <print_exponential_number+0x490>
a0004e92:	4781                	li	a5,0
a0004e94:	000b9863          	bnez	s7,a0004ea4 <print_exponential_number+0x49c>
a0004e98:	5762                	lw	a4,56(sp)
a0004e9a:	4781                	li	a5,0
a0004e9c:	00ebf463          	bgeu	s7,a4,a0004ea4 <print_exponential_number+0x49c>
a0004ea0:	417707b3          	sub	a5,a4,s7
a0004ea4:	476e                	lw	a4,216(sp)
a0004ea6:	c43e                	sw	a5,8(sp)
a0004ea8:	57c2                	lw	a5,48(sp)
a0004eaa:	ca3a                	sw	a4,20(sp)
a0004eac:	475e                	lw	a4,212(sp)
a0004eae:	58d2                	lw	a7,52(sp)
a0004eb0:	5832                	lw	a6,44(sp)
a0004eb2:	c83a                	sw	a4,16(sp)
a0004eb4:	5772                	lw	a4,60(sp)
a0004eb6:	c03e                	sw	a5,0(sp)
a0004eb8:	8652                	mv	a2,s4
a0004eba:	c66e                	sw	s11,12(sp)
a0004ebc:	c226                	sw	s1,4(sp)
a0004ebe:	87ea                	mv	a5,s10
a0004ec0:	86d6                	mv	a3,s5
a0004ec2:	854a                	mv	a0,s2
a0004ec4:	85ce                	mv	a1,s3
a0004ec6:	8f7ff0ef          	jal	ra,a00047bc <print_broken_up_decimal.isra.0>
a0004eca:	862a                	mv	a2,a0
a0004ecc:	040c1f63          	bnez	s8,a0004f2a <print_exponential_number+0x522>
a0004ed0:	020dfd93          	andi	s11,s11,32
a0004ed4:	04500513          	li	a0,69
a0004ed8:	000d9463          	bnez	s11,a0004ee0 <print_exponential_number+0x4d8>
a0004edc:	06500513          	li	a0,101
a0004ee0:	55b2                	lw	a1,44(sp)
a0004ee2:	56c2                	lw	a3,48(sp)
a0004ee4:	00160493          	addi	s1,a2,1
a0004ee8:	9d02                	jalr	s10
a0004eea:	41f45593          	srai	a1,s0,0x1f
a0004eee:	04805e63          	blez	s0,a0004f4a <print_exponential_number+0x542>
a0004ef2:	8722                	mv	a4,s0
a0004ef4:	87ae                	mv	a5,a1
a0004ef6:	4695                	li	a3,5
a0004ef8:	c436                	sw	a3,8(sp)
a0004efa:	55b2                	lw	a1,44(sp)
a0004efc:	56c2                	lw	a3,48(sp)
a0004efe:	1bfd                	addi	s7,s7,-1
a0004f00:	8626                	mv	a2,s1
a0004f02:	c25e                	sw	s7,4(sp)
a0004f04:	c002                	sw	zero,0(sp)
a0004f06:	48a9                	li	a7,10
a0004f08:	01f45813          	srli	a6,s0,0x1f
a0004f0c:	856a                	mv	a0,s10
a0004f0e:	d10ff0ef          	jal	ra,a000441e <print_integer>
a0004f12:	862a                	mv	a2,a0
a0004f14:	000b0b63          	beqz	s6,a0004f2a <print_exponential_number+0x522>
a0004f18:	57d2                	lw	a5,52(sp)
a0004f1a:	40f50433          	sub	s0,a0,a5
a0004f1e:	57d2                	lw	a5,52(sp)
a0004f20:	00878633          	add	a2,a5,s0
a0004f24:	57e2                	lw	a5,56(sp)
a0004f26:	02f46963          	bltu	s0,a5,a0004f58 <print_exponential_number+0x550>
a0004f2a:	40be                	lw	ra,204(sp)
a0004f2c:	442e                	lw	s0,200(sp)
a0004f2e:	449e                	lw	s1,196(sp)
a0004f30:	490e                	lw	s2,192(sp)
a0004f32:	59fa                	lw	s3,188(sp)
a0004f34:	5a6a                	lw	s4,184(sp)
a0004f36:	5ada                	lw	s5,180(sp)
a0004f38:	5b4a                	lw	s6,176(sp)
a0004f3a:	5bba                	lw	s7,172(sp)
a0004f3c:	5c2a                	lw	s8,168(sp)
a0004f3e:	5c9a                	lw	s9,164(sp)
a0004f40:	5d0a                	lw	s10,160(sp)
a0004f42:	4dfa                	lw	s11,156(sp)
a0004f44:	8532                	mv	a0,a2
a0004f46:	6169                	addi	sp,sp,208
a0004f48:	8082                	ret
a0004f4a:	8622                	mv	a2,s0
a0004f4c:	86ae                	mv	a3,a1
a0004f4e:	4701                	li	a4,0
a0004f50:	4781                	li	a5,0
a0004f52:	c2c71777          	sub64	a4,a4,a2
a0004f56:	b745                	j	a0004ef6 <print_exponential_number+0x4ee>
a0004f58:	56c2                	lw	a3,48(sp)
a0004f5a:	55b2                	lw	a1,44(sp)
a0004f5c:	02000513          	li	a0,32
a0004f60:	0405                	addi	s0,s0,1
a0004f62:	9d02                	jalr	s10
a0004f64:	bf6d                	j	a0004f1e <print_exponential_number+0x516>
a0004f66:	d2045ce3          	bgez	s0,a0004c9e <print_exponential_number+0x296>
a0004f6a:	4c85                	li	s9,1
a0004f6c:	4c01                	li	s8,0
a0004f6e:	d80915e3          	bnez	s2,a0004cf8 <print_exponential_number+0x2f0>
a0004f72:	b305                	j	a0004c92 <print_exponential_number+0x28a>

a0004f74 <print_floating_point>:
a0004f74:	7135                	addi	sp,sp,-160
a0004f76:	c552                	sw	s4,136(sp)
a0004f78:	c356                	sw	s5,132(sp)
a0004f7a:	c15a                	sw	s6,128(sp)
a0004f7c:	dede                	sw	s7,124(sp)
a0004f7e:	8a2a                	mv	s4,a0
a0004f80:	8aae                	mv	s5,a1
a0004f82:	8b32                	mv	s6,a2
a0004f84:	8bb6                	mv	s7,a3
a0004f86:	863a                	mv	a2,a4
a0004f88:	86be                	mv	a3,a5
a0004f8a:	853a                	mv	a0,a4
a0004f8c:	85be                	mv	a1,a5
a0004f8e:	cd22                	sw	s0,152(sp)
a0004f90:	cb26                	sw	s1,148(sp)
a0004f92:	c94a                	sw	s2,144(sp)
a0004f94:	c74e                	sw	s3,140(sp)
a0004f96:	dce2                	sw	s8,120(sp)
a0004f98:	d6ee                	sw	s11,108(sp)
a0004f9a:	cf06                	sw	ra,156(sp)
a0004f9c:	dae6                	sw	s9,116(sp)
a0004f9e:	d8ea                	sw	s10,112(sp)
a0004fa0:	598a                	lw	s3,160(sp)
a0004fa2:	0a414d83          	lbu	s11,164(sp)
a0004fa6:	843a                	mv	s0,a4
a0004fa8:	84be                	mv	s1,a5
a0004faa:	8942                	mv	s2,a6
a0004fac:	8c46                	mv	s8,a7
a0004fae:	a23fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004fb2:	cd05                	beqz	a0,a0004fea <print_floating_point+0x76>
a0004fb4:	a0007737          	lui	a4,0xa0007
a0004fb8:	88ce                	mv	a7,s3
a0004fba:	8862                	mv	a6,s8
a0004fbc:	478d                	li	a5,3
a0004fbe:	5b070713          	addi	a4,a4,1456 # a00075b0 <__psram_limit+0xf7c075b0>
a0004fc2:	446a                	lw	s0,152(sp)
a0004fc4:	40fa                	lw	ra,156(sp)
a0004fc6:	44da                	lw	s1,148(sp)
a0004fc8:	494a                	lw	s2,144(sp)
a0004fca:	49ba                	lw	s3,140(sp)
a0004fcc:	5c66                	lw	s8,120(sp)
a0004fce:	5cd6                	lw	s9,116(sp)
a0004fd0:	5d46                	lw	s10,112(sp)
a0004fd2:	5db6                	lw	s11,108(sp)
a0004fd4:	86de                	mv	a3,s7
a0004fd6:	865a                	mv	a2,s6
a0004fd8:	5bf6                	lw	s7,124(sp)
a0004fda:	4b0a                	lw	s6,128(sp)
a0004fdc:	85d6                	mv	a1,s5
a0004fde:	8552                	mv	a0,s4
a0004fe0:	4a9a                	lw	s5,132(sp)
a0004fe2:	4a2a                	lw	s4,136(sp)
a0004fe4:	610d                	addi	sp,sp,160
a0004fe6:	b8aff06f          	j	a0004370 <out_rev_>
a0004fea:	a00077b7          	lui	a5,0xa0007
a0004fee:	6387a603          	lw	a2,1592(a5) # a0007638 <__psram_limit+0xf7c07638>
a0004ff2:	63c7a683          	lw	a3,1596(a5)
a0004ff6:	8522                	mv	a0,s0
a0004ff8:	85a6                	mv	a1,s1
a0004ffa:	b29fd0ef          	jal	ra,a0002b22 <__ledf2>
a0004ffe:	00055a63          	bgez	a0,a0005012 <print_floating_point+0x9e>
a0005002:	a0007737          	lui	a4,0xa0007
a0005006:	88ce                	mv	a7,s3
a0005008:	8862                	mv	a6,s8
a000500a:	4791                	li	a5,4
a000500c:	5b470713          	addi	a4,a4,1460 # a00075b4 <__psram_limit+0xf7c075b4>
a0005010:	bf4d                	j	a0004fc2 <print_floating_point+0x4e>
a0005012:	a00077b7          	lui	a5,0xa0007
a0005016:	6407a603          	lw	a2,1600(a5) # a0007640 <__psram_limit+0xf7c07640>
a000501a:	6447a683          	lw	a3,1604(a5)
a000501e:	8522                	mv	a0,s0
a0005020:	85a6                	mv	a1,s1
a0005022:	a53fd0ef          	jal	ra,a0002a74 <__gedf2>
a0005026:	02a05363          	blez	a0,a000504c <print_floating_point+0xd8>
a000502a:	0049f793          	andi	a5,s3,4
a000502e:	cb89                	beqz	a5,a0005040 <print_floating_point+0xcc>
a0005030:	a0007737          	lui	a4,0xa0007
a0005034:	5a870713          	addi	a4,a4,1448 # a00075a8 <__psram_limit+0xf7c075a8>
a0005038:	4791                	li	a5,4
a000503a:	88ce                	mv	a7,s3
a000503c:	8862                	mv	a6,s8
a000503e:	b751                	j	a0004fc2 <print_floating_point+0x4e>
a0005040:	a0007737          	lui	a4,0xa0007
a0005044:	5a470713          	addi	a4,a4,1444 # a00075a4 <__psram_limit+0xf7c075a4>
a0005048:	478d                	li	a5,3
a000504a:	bfc5                	j	a000503a <print_floating_point+0xc6>
a000504c:	04010d13          	addi	s10,sp,64
a0005050:	060d9663          	bnez	s11,a00050bc <print_floating_point+0x148>
a0005054:	a00077b7          	lui	a5,0xa0007
a0005058:	6487a603          	lw	a2,1608(a5) # a0007648 <__psram_limit+0xf7c07648>
a000505c:	64c7a683          	lw	a3,1612(a5)
a0005060:	8522                	mv	a0,s0
a0005062:	85a6                	mv	a1,s1
a0005064:	a11fd0ef          	jal	ra,a0002a74 <__gedf2>
a0005068:	00a04e63          	bgtz	a0,a0005084 <print_floating_point+0x110>
a000506c:	a00077b7          	lui	a5,0xa0007
a0005070:	6507a603          	lw	a2,1616(a5) # a0007650 <__psram_limit+0xf7c07650>
a0005074:	6547a683          	lw	a3,1620(a5)
a0005078:	8522                	mv	a0,s0
a000507a:	85a6                	mv	a1,s1
a000507c:	aa7fd0ef          	jal	ra,a0002b22 <__ledf2>
a0005080:	02055e63          	bgez	a0,a00050bc <print_floating_point+0x148>
a0005084:	c402                	sw	zero,8(sp)
a0005086:	c26a                	sw	s10,4(sp)
a0005088:	c04e                	sw	s3,0(sp)
a000508a:	88e2                	mv	a7,s8
a000508c:	884a                	mv	a6,s2
a000508e:	8722                	mv	a4,s0
a0005090:	87a6                	mv	a5,s1
a0005092:	86de                	mv	a3,s7
a0005094:	865a                	mv	a2,s6
a0005096:	85d6                	mv	a1,s5
a0005098:	8552                	mv	a0,s4
a000509a:	96fff0ef          	jal	ra,a0004a08 <print_exponential_number>
a000509e:	40fa                	lw	ra,156(sp)
a00050a0:	446a                	lw	s0,152(sp)
a00050a2:	44da                	lw	s1,148(sp)
a00050a4:	494a                	lw	s2,144(sp)
a00050a6:	49ba                	lw	s3,140(sp)
a00050a8:	4a2a                	lw	s4,136(sp)
a00050aa:	4a9a                	lw	s5,132(sp)
a00050ac:	4b0a                	lw	s6,128(sp)
a00050ae:	5bf6                	lw	s7,124(sp)
a00050b0:	5c66                	lw	s8,120(sp)
a00050b2:	5cd6                	lw	s9,116(sp)
a00050b4:	5d46                	lw	s10,112(sp)
a00050b6:	5db6                	lw	s11,108(sp)
a00050b8:	610d                	addi	sp,sp,160
a00050ba:	8082                	ret
a00050bc:	4009f793          	andi	a5,s3,1024
a00050c0:	c39d                	beqz	a5,a00050e6 <print_floating_point+0x172>
a00050c2:	4c81                	li	s9,0
a00050c4:	47c5                	li	a5,17
a00050c6:	03000713          	li	a4,48
a00050ca:	02000693          	li	a3,32
a00050ce:	0127f863          	bgeu	a5,s2,a00050de <print_floating_point+0x16a>
a00050d2:	019d570b          	srb	a4,s10,s9,0
a00050d6:	0c85                	addi	s9,s9,1
a00050d8:	197d                	addi	s2,s2,-1
a00050da:	fedc9ae3          	bne	s9,a3,a00050ce <print_floating_point+0x15a>
a00050de:	000d8663          	beqz	s11,a00050ea <print_floating_point+0x176>
a00050e2:	c466                	sw	s9,8(sp)
a00050e4:	b74d                	j	a0005086 <print_floating_point+0x112>
a00050e6:	4919                	li	s2,6
a00050e8:	bfe9                	j	a00050c2 <print_floating_point+0x14e>
a00050ea:	86ca                	mv	a3,s2
a00050ec:	85a2                	mv	a1,s0
a00050ee:	8626                	mv	a2,s1
a00050f0:	1028                	addi	a0,sp,40
a00050f2:	d38ff0ef          	jal	ra,a000462a <get_components>
a00050f6:	03814703          	lbu	a4,56(sp)
a00050fa:	5642                	lw	a2,48(sp)
a00050fc:	56d2                	lw	a3,52(sp)
a00050fe:	5522                	lw	a0,40(sp)
a0005100:	55b2                	lw	a1,44(sp)
a0005102:	ca66                	sw	s9,20(sp)
a0005104:	c86a                	sw	s10,16(sp)
a0005106:	c64e                	sw	s3,12(sp)
a0005108:	c462                	sw	s8,8(sp)
a000510a:	c24a                	sw	s2,4(sp)
a000510c:	c05e                	sw	s7,0(sp)
a000510e:	88da                	mv	a7,s6
a0005110:	8856                	mv	a6,s5
a0005112:	87d2                	mv	a5,s4
a0005114:	ea8ff0ef          	jal	ra,a00047bc <print_broken_up_decimal.isra.0>
a0005118:	b759                	j	a000509e <print_floating_point+0x12a>

a000511a <__vsnprintf>:
a000511a:	7175                	addi	sp,sp,-144
a000511c:	c326                	sw	s1,132(sp)
a000511e:	d6de                	sw	s7,108(sp)
a0005120:	d4e2                	sw	s8,104(sp)
a0005122:	d2e6                	sw	s9,100(sp)
a0005124:	d0ea                	sw	s10,96(sp)
a0005126:	c706                	sw	ra,140(sp)
a0005128:	c522                	sw	s0,136(sp)
a000512a:	c14a                	sw	s2,128(sp)
a000512c:	dece                	sw	s3,124(sp)
a000512e:	dcd2                	sw	s4,120(sp)
a0005130:	dad6                	sw	s5,116(sp)
a0005132:	d8da                	sw	s6,112(sp)
a0005134:	ceee                	sw	s11,92(sp)
a0005136:	8c2a                	mv	s8,a0
a0005138:	8bae                	mv	s7,a1
a000513a:	8d32                	mv	s10,a2
a000513c:	8cb6                	mv	s9,a3
a000513e:	84ba                	mv	s1,a4
a0005140:	e999                	bnez	a1,a0005156 <__vsnprintf+0x3c>
a0005142:	a00047b7          	lui	a5,0xa0004
a0005146:	7aa78793          	addi	a5,a5,1962 # a00047aa <__psram_limit+0xf7c047aa>
a000514a:	00f50663          	beq	a0,a5,a0005156 <__vsnprintf+0x3c>
a000514e:	a0004c37          	lui	s8,0xa0004
a0005152:	36ec0c13          	addi	s8,s8,878 # a000436e <__psram_limit+0xf7c0436e>
a0005156:	67c1                	lui	a5,0x10
a0005158:	17fd                	addi	a5,a5,-1
a000515a:	dc3e                	sw	a5,56(sp)
a000515c:	67a5                	lui	a5,0x9
a000515e:	04178793          	addi	a5,a5,65 # 9041 <wifi_ram_max_size+0x1041>
a0005162:	4301                	li	t1,0
a0005164:	de3e                	sw	a5,60(sp)
a0005166:	ae29                	j	a0005480 <__vsnprintf+0x366>
a0005168:	02500793          	li	a5,37
a000516c:	0c85                	addi	s9,s9,1
a000516e:	00f50863          	beq	a0,a5,a000517e <__vsnprintf+0x64>
a0005172:	00130413          	addi	s0,t1,1
a0005176:	86ea                	mv	a3,s10
a0005178:	861a                	mv	a2,t1
a000517a:	85de                	mv	a1,s7
a000517c:	a3d5                	j	a0005760 <__vsnprintf+0x646>
a000517e:	4401                	li	s0,0
a0005180:	02b00793          	li	a5,43
a0005184:	02d00613          	li	a2,45
a0005188:	03000513          	li	a0,48
a000518c:	02000813          	li	a6,32
a0005190:	02300893          	li	a7,35
a0005194:	a801                	j	a00051a4 <__vsnprintf+0x8a>
a0005196:	02c70d63          	beq	a4,a2,a00051d0 <__vsnprintf+0xb6>
a000519a:	02a71063          	bne	a4,a0,a00051ba <__vsnprintf+0xa0>
a000519e:	00146413          	ori	s0,s0,1
a00051a2:	8cb6                	mv	s9,a3
a00051a4:	86e6                	mv	a3,s9
a00051a6:	9816c70b          	lbuia	a4,(a3),1,0
a00051aa:	02f70663          	beq	a4,a5,a00051d6 <__vsnprintf+0xbc>
a00051ae:	fee7e4e3          	bltu	a5,a4,a0005196 <__vsnprintf+0x7c>
a00051b2:	03070563          	beq	a4,a6,a00051dc <__vsnprintf+0xc2>
a00051b6:	03170663          	beq	a4,a7,a00051e2 <__vsnprintf+0xc8>
a00051ba:	fd070793          	addi	a5,a4,-48
a00051be:	0ff7f793          	zext.b	a5,a5
a00051c2:	4625                	li	a2,9
a00051c4:	06f66763          	bltu	a2,a5,a0005232 <__vsnprintf+0x118>
a00051c8:	4b01                	li	s6,0
a00051ca:	4525                	li	a0,9
a00051cc:	4829                	li	a6,10
a00051ce:	a015                	j	a00051f2 <__vsnprintf+0xd8>
a00051d0:	00246413          	ori	s0,s0,2
a00051d4:	b7f9                	j	a00051a2 <__vsnprintf+0x88>
a00051d6:	00446413          	ori	s0,s0,4
a00051da:	b7e1                	j	a00051a2 <__vsnprintf+0x88>
a00051dc:	00846413          	ori	s0,s0,8
a00051e0:	b7c9                	j	a00051a2 <__vsnprintf+0x88>
a00051e2:	01046413          	ori	s0,s0,16
a00051e6:	bf75                	j	a00051a2 <__vsnprintf+0x88>
a00051e8:	210b170b          	mula	a4,s6,a6
a00051ec:	8cb2                	mv	s9,a2
a00051ee:	fd070b13          	addi	s6,a4,-48
a00051f2:	8666                	mv	a2,s9
a00051f4:	9816470b          	lbuia	a4,(a2),1,0
a00051f8:	fd070693          	addi	a3,a4,-48
a00051fc:	0ff6f693          	zext.b	a3,a3
a0005200:	fed574e3          	bgeu	a0,a3,a00051e8 <__vsnprintf+0xce>
a0005204:	000cc683          	lbu	a3,0(s9)
a0005208:	02e00713          	li	a4,46
a000520c:	10e69563          	bne	a3,a4,a0005316 <__vsnprintf+0x1fc>
a0005210:	001cc603          	lbu	a2,1(s9)
a0005214:	4525                	li	a0,9
a0005216:	001c8713          	addi	a4,s9,1
a000521a:	fd060693          	addi	a3,a2,-48
a000521e:	0ff6f693          	zext.b	a3,a3
a0005222:	40046413          	ori	s0,s0,1024
a0005226:	0cd56b63          	bltu	a0,a3,a00052fc <__vsnprintf+0x1e2>
a000522a:	4801                	li	a6,0
a000522c:	48a5                	li	a7,9
a000522e:	4e29                	li	t3,10
a0005230:	a02d                	j	a000525a <__vsnprintf+0x140>
a0005232:	02a00613          	li	a2,42
a0005236:	4b01                	li	s6,0
a0005238:	fcc716e3          	bne	a4,a2,a0005204 <__vsnprintf+0xea>
a000523c:	5844cb0b          	lwia	s6,(s1),4,0
a0005240:	000b5663          	bgez	s6,a000524c <__vsnprintf+0x132>
a0005244:	00246413          	ori	s0,s0,2
a0005248:	41600b33          	neg	s6,s6
a000524c:	8cb6                	mv	s9,a3
a000524e:	bf5d                	j	a0005204 <__vsnprintf+0xea>
a0005250:	21c8168b          	mula	a3,a6,t3
a0005254:	872a                	mv	a4,a0
a0005256:	fd068813          	addi	a6,a3,-48
a000525a:	853a                	mv	a0,a4
a000525c:	9815468b          	lbuia	a3,(a0),1,0
a0005260:	fd068613          	addi	a2,a3,-48
a0005264:	0ff67613          	zext.b	a2,a2
a0005268:	fec8f4e3          	bgeu	a7,a2,a0005250 <__vsnprintf+0x136>
a000526c:	8cba                	mv	s9,a4
a000526e:	981cc68b          	lbuia	a3,(s9),1,0
a0005272:	06c00613          	li	a2,108
a0005276:	0ac68e63          	beq	a3,a2,a0005332 <__vsnprintf+0x218>
a000527a:	0ad66163          	bltu	a2,a3,a000531c <__vsnprintf+0x202>
a000527e:	06800613          	li	a2,104
a0005282:	0cc68163          	beq	a3,a2,a0005344 <__vsnprintf+0x22a>
a0005286:	06a00613          	li	a2,106
a000528a:	0cc68763          	beq	a3,a2,a0005358 <__vsnprintf+0x23e>
a000528e:	8cba                	mv	s9,a4
a0005290:	981cc50b          	lbuia	a0,(s9),1,0
a0005294:	06500713          	li	a4,101
a0005298:	02e50263          	beq	a0,a4,a00052bc <__vsnprintf+0x1a2>
a000529c:	12a76663          	bltu	a4,a0,a00053c8 <__vsnprintf+0x2ae>
a00052a0:	04600713          	li	a4,70
a00052a4:	2ee50963          	beq	a0,a4,a0005596 <__vsnprintf+0x47c>
a00052a8:	0ea76c63          	bltu	a4,a0,a00053a0 <__vsnprintf+0x286>
a00052ac:	02500713          	li	a4,37
a00052b0:	4ae50163          	beq	a0,a4,a0005752 <__vsnprintf+0x638>
a00052b4:	04500713          	li	a4,69
a00052b8:	eae51de3          	bne	a0,a4,a0005172 <__vsnprintf+0x58>
a00052bc:	0df57713          	andi	a4,a0,223
a00052c0:	04700693          	li	a3,71
a00052c4:	00d71863          	bne	a4,a3,a00052d4 <__vsnprintf+0x1ba>
a00052c8:	6785                	lui	a5,0x1
a00052ca:	80078793          	addi	a5,a5,-2048 # 800 <__RFTLV_SIZE_HOLE>
a00052ce:	8c5d                	or	s0,s0,a5
a00052d0:	0fd57513          	andi	a0,a0,253
a00052d4:	04500713          	li	a4,69
a00052d8:	00e51463          	bne	a0,a4,a00052e0 <__vsnprintf+0x1c6>
a00052dc:	02046413          	ori	s0,s0,32
a00052e0:	049d                	addi	s1,s1,7
a00052e2:	ff84f713          	andi	a4,s1,-8
a00052e6:	4310                	lw	a2,0(a4)
a00052e8:	4354                	lw	a3,4(a4)
a00052ea:	00870493          	addi	s1,a4,8
a00052ee:	4705                	li	a4,1
a00052f0:	c23a                	sw	a4,4(sp)
a00052f2:	c022                	sw	s0,0(sp)
a00052f4:	88da                	mv	a7,s6
a00052f6:	8732                	mv	a4,a2
a00052f8:	87b6                	mv	a5,a3
a00052fa:	ac55                	j	a00055ae <__vsnprintf+0x494>
a00052fc:	02a00693          	li	a3,42
a0005300:	4801                	li	a6,0
a0005302:	f6d615e3          	bne	a2,a3,a000526c <__vsnprintf+0x152>
a0005306:	5844c80b          	lwia	a6,(s1),4,0
a000530a:	00085363          	bgez	a6,a0005310 <__vsnprintf+0x1f6>
a000530e:	4801                	li	a6,0
a0005310:	002c8713          	addi	a4,s9,2
a0005314:	bfa1                	j	a000526c <__vsnprintf+0x152>
a0005316:	8766                	mv	a4,s9
a0005318:	4801                	li	a6,0
a000531a:	bf89                	j	a000526c <__vsnprintf+0x152>
a000531c:	07400613          	li	a2,116
a0005320:	00c68663          	beq	a3,a2,a000532c <__vsnprintf+0x212>
a0005324:	07a00613          	li	a2,122
a0005328:	f6c693e3          	bne	a3,a2,a000528e <__vsnprintf+0x174>
a000532c:	10046413          	ori	s0,s0,256
a0005330:	b785                	j	a0005290 <__vsnprintf+0x176>
a0005332:	00174603          	lbu	a2,1(a4)
a0005336:	fed61be3          	bne	a2,a3,a000532c <__vsnprintf+0x212>
a000533a:	30046413          	ori	s0,s0,768
a000533e:	00270c93          	addi	s9,a4,2
a0005342:	b7b9                	j	a0005290 <__vsnprintf+0x176>
a0005344:	00174603          	lbu	a2,1(a4)
a0005348:	00d60563          	beq	a2,a3,a0005352 <__vsnprintf+0x238>
a000534c:	08046413          	ori	s0,s0,128
a0005350:	b781                	j	a0005290 <__vsnprintf+0x176>
a0005352:	0c046413          	ori	s0,s0,192
a0005356:	b7e5                	j	a000533e <__vsnprintf+0x224>
a0005358:	20046413          	ori	s0,s0,512
a000535c:	bf15                	j	a0005290 <__vsnprintf+0x176>
a000535e:	57f2                	lw	a5,60(sp)
a0005360:	4685                	li	a3,1
a0005362:	f9750713          	addi	a4,a0,-105
a0005366:	00e69733          	sll	a4,a3,a4
a000536a:	00f776b3          	and	a3,a4,a5
a000536e:	eea5                	bnez	a3,a00053e6 <__vsnprintf+0x2cc>
a0005370:	40077693          	andi	a3,a4,1024
a0005374:	2c069063          	bnez	a3,a0005634 <__vsnprintf+0x51a>
a0005378:	08077713          	andi	a4,a4,128
a000537c:	de070be3          	beqz	a4,a0005172 <__vsnprintf+0x58>
a0005380:	5844c70b          	lwia	a4,(s1),4,0
a0005384:	6785                	lui	a5,0x1
a0005386:	00178893          	addi	a7,a5,1 # 1001 <HeapMinSize+0x1>
a000538a:	011468b3          	or	a7,s0,a7
a000538e:	3a071463          	bnez	a4,a0005736 <__vsnprintf+0x61c>
a0005392:	a0007737          	lui	a4,0xa0007
a0005396:	4829                	li	a6,10
a0005398:	4795                	li	a5,5
a000539a:	5c470713          	addi	a4,a4,1476 # a00075c4 <__psram_limit+0xf7c075c4>
a000539e:	a475                	j	a000564a <__vsnprintf+0x530>
a00053a0:	06300713          	li	a4,99
a00053a4:	20e50d63          	beq	a0,a4,a00055be <__vsnprintf+0x4a4>
a00053a8:	06400713          	li	a4,100
a00053ac:	02e50d63          	beq	a0,a4,a00053e6 <__vsnprintf+0x2cc>
a00053b0:	05800713          	li	a4,88
a00053b4:	3ae50963          	beq	a0,a4,a0005766 <__vsnprintf+0x64c>
a00053b8:	06200713          	li	a4,98
a00053bc:	4889                	li	a7,2
a00053be:	04e50b63          	beq	a0,a4,a0005414 <__vsnprintf+0x2fa>
a00053c2:	04700713          	li	a4,71
a00053c6:	bdcd                	j	a00052b8 <__vsnprintf+0x19e>
a00053c8:	07800713          	li	a4,120
a00053cc:	daa763e3          	bltu	a4,a0,a0005172 <__vsnprintf+0x58>
a00053d0:	06800713          	li	a4,104
a00053d4:	f8a765e3          	bltu	a4,a0,a000535e <__vsnprintf+0x244>
a00053d8:	06600713          	li	a4,102
a00053dc:	1ae50f63          	beq	a0,a4,a000559a <__vsnprintf+0x480>
a00053e0:	06700713          	li	a4,103
a00053e4:	bdd1                	j	a00052b8 <__vsnprintf+0x19e>
a00053e6:	07800713          	li	a4,120
a00053ea:	48c1                	li	a7,16
a00053ec:	02e50863          	beq	a0,a4,a000541c <__vsnprintf+0x302>
a00053f0:	05800713          	li	a4,88
a00053f4:	36e50963          	beq	a0,a4,a0005766 <__vsnprintf+0x64c>
a00053f8:	06f00713          	li	a4,111
a00053fc:	36e50963          	beq	a0,a4,a000576e <__vsnprintf+0x654>
a0005400:	06200713          	li	a4,98
a0005404:	36e50763          	beq	a0,a4,a0005772 <__vsnprintf+0x658>
a0005408:	06900713          	li	a4,105
a000540c:	983d                	andi	s0,s0,-17
a000540e:	48a9                	li	a7,10
a0005410:	00e50763          	beq	a0,a4,a000541e <__vsnprintf+0x304>
a0005414:	06400713          	li	a4,100
a0005418:	00e50363          	beq	a0,a4,a000541e <__vsnprintf+0x304>
a000541c:	984d                	andi	s0,s0,-13
a000541e:	40047713          	andi	a4,s0,1024
a0005422:	c311                	beqz	a4,a0005426 <__vsnprintf+0x30c>
a0005424:	9879                	andi	s0,s0,-2
a0005426:	06900693          	li	a3,105
a000542a:	20047713          	andi	a4,s0,512
a000542e:	00d50663          	beq	a0,a3,a000543a <__vsnprintf+0x320>
a0005432:	06400693          	li	a3,100
a0005436:	10d51b63          	bne	a0,a3,a000554c <__vsnprintf+0x432>
a000543a:	cb41                	beqz	a4,a00054ca <__vsnprintf+0x3b0>
a000543c:	049d                	addi	s1,s1,7
a000543e:	98e1                	andi	s1,s1,-8
a0005440:	40d8                	lw	a4,4(s1)
a0005442:	8da6                	mv	s11,s1
a0005444:	588dc68b          	lwia	a3,(s11),8,0
a0005448:	41f75793          	srai	a5,a4,0x1f
a000544c:	ca3e                	sw	a5,20(sp)
a000544e:	c83e                	sw	a5,16(sp)
a0005450:	8fb5                	xor	a5,a5,a3
a0005452:	d03e                	sw	a5,32(sp)
a0005454:	47d2                	lw	a5,20(sp)
a0005456:	4642                	lw	a2,16(sp)
a0005458:	46d2                	lw	a3,20(sp)
a000545a:	8fb9                	xor	a5,a5,a4
a000545c:	d23e                	sw	a5,36(sp)
a000545e:	5792                	lw	a5,36(sp)
a0005460:	c042                	sw	a6,0(sp)
a0005462:	01f75813          	srli	a6,a4,0x1f
a0005466:	5702                	lw	a4,32(sp)
a0005468:	c422                	sw	s0,8(sp)
a000546a:	c25a                	sw	s6,4(sp)
a000546c:	c2c71777          	sub64	a4,a4,a2
a0005470:	861a                	mv	a2,t1
a0005472:	86ea                	mv	a3,s10
a0005474:	85de                	mv	a1,s7
a0005476:	8562                	mv	a0,s8
a0005478:	fa7fe0ef          	jal	ra,a000441e <print_integer>
a000547c:	832a                	mv	t1,a0
a000547e:	84ee                	mv	s1,s11
a0005480:	000cc503          	lbu	a0,0(s9)
a0005484:	ce0512e3          	bnez	a0,a0005168 <__vsnprintf+0x4e>
a0005488:	a00047b7          	lui	a5,0xa0004
a000548c:	7aa78793          	addi	a5,a5,1962 # a00047aa <__psram_limit+0xf7c047aa>
a0005490:	00fc0d63          	beq	s8,a5,a00054aa <__vsnprintf+0x390>
a0005494:	861a                	mv	a2,t1
a0005496:	01a36463          	bltu	t1,s10,a000549e <__vsnprintf+0x384>
a000549a:	fffd0613          	addi	a2,s10,-1
a000549e:	c81a                	sw	t1,16(sp)
a00054a0:	86ea                	mv	a3,s10
a00054a2:	85de                	mv	a1,s7
a00054a4:	4501                	li	a0,0
a00054a6:	9c02                	jalr	s8
a00054a8:	4342                	lw	t1,16(sp)
a00054aa:	40ba                	lw	ra,140(sp)
a00054ac:	442a                	lw	s0,136(sp)
a00054ae:	449a                	lw	s1,132(sp)
a00054b0:	490a                	lw	s2,128(sp)
a00054b2:	59f6                	lw	s3,124(sp)
a00054b4:	5a66                	lw	s4,120(sp)
a00054b6:	5ad6                	lw	s5,116(sp)
a00054b8:	5b46                	lw	s6,112(sp)
a00054ba:	5bb6                	lw	s7,108(sp)
a00054bc:	5c26                	lw	s8,104(sp)
a00054be:	5c96                	lw	s9,100(sp)
a00054c0:	5d06                	lw	s10,96(sp)
a00054c2:	4df6                	lw	s11,92(sp)
a00054c4:	851a                	mv	a0,t1
a00054c6:	6149                	addi	sp,sp,144
a00054c8:	8082                	ret
a00054ca:	10047713          	andi	a4,s0,256
a00054ce:	00448d93          	addi	s11,s1,4
a00054d2:	cb15                	beqz	a4,a0005506 <__vsnprintf+0x3ec>
a00054d4:	4098                	lw	a4,0(s1)
a00054d6:	41f75693          	srai	a3,a4,0x1f
a00054da:	00e05c63          	blez	a4,a00054f2 <__vsnprintf+0x3d8>
a00054de:	cc3a                	sw	a4,24(sp)
a00054e0:	ce36                	sw	a3,28(sp)
a00054e2:	c042                	sw	a6,0(sp)
a00054e4:	47f2                	lw	a5,28(sp)
a00054e6:	01f75813          	srli	a6,a4,0x1f
a00054ea:	c422                	sw	s0,8(sp)
a00054ec:	4762                	lw	a4,24(sp)
a00054ee:	c25a                	sw	s6,4(sp)
a00054f0:	b741                	j	a0005470 <__vsnprintf+0x356>
a00054f2:	d43a                	sw	a4,40(sp)
a00054f4:	d636                	sw	a3,44(sp)
a00054f6:	5622                	lw	a2,40(sp)
a00054f8:	56b2                	lw	a3,44(sp)
a00054fa:	4901                	li	s2,0
a00054fc:	4981                	li	s3,0
a00054fe:	c2c91677          	sub64	a2,s2,a2
a0005502:	cc32                	sw	a2,24(sp)
a0005504:	bff1                	j	a00054e0 <__vsnprintf+0x3c6>
a0005506:	04047693          	andi	a3,s0,64
a000550a:	4098                	lw	a4,0(s1)
a000550c:	c28d                	beqz	a3,a000552e <__vsnprintf+0x414>
a000550e:	1c07270b          	ext	a4,a4,7,0
a0005512:	41f75693          	srai	a3,a4,0x1f
a0005516:	02e05263          	blez	a4,a000553a <__vsnprintf+0x420>
a000551a:	8a3a                	mv	s4,a4
a000551c:	8ab6                	mv	s5,a3
a000551e:	c042                	sw	a6,0(sp)
a0005520:	c422                	sw	s0,8(sp)
a0005522:	01f75813          	srli	a6,a4,0x1f
a0005526:	c25a                	sw	s6,4(sp)
a0005528:	8752                	mv	a4,s4
a000552a:	87d6                	mv	a5,s5
a000552c:	b791                	j	a0005470 <__vsnprintf+0x356>
a000552e:	08047693          	andi	a3,s0,128
a0005532:	d2e5                	beqz	a3,a0005512 <__vsnprintf+0x3f8>
a0005534:	3c07270b          	ext	a4,a4,15,0
a0005538:	bfe9                	j	a0005512 <__vsnprintf+0x3f8>
a000553a:	d83a                	sw	a4,48(sp)
a000553c:	da36                	sw	a3,52(sp)
a000553e:	5642                	lw	a2,48(sp)
a0005540:	56d2                	lw	a3,52(sp)
a0005542:	4a01                	li	s4,0
a0005544:	4a81                	li	s5,0
a0005546:	c2ca1a77          	sub64	s4,s4,a2
a000554a:	bfd1                	j	a000551e <__vsnprintf+0x404>
a000554c:	cf01                	beqz	a4,a0005564 <__vsnprintf+0x44a>
a000554e:	049d                	addi	s1,s1,7
a0005550:	98e1                	andi	s1,s1,-8
a0005552:	4098                	lw	a4,0(s1)
a0005554:	40dc                	lw	a5,4(s1)
a0005556:	00848d93          	addi	s11,s1,8
a000555a:	c042                	sw	a6,0(sp)
a000555c:	c422                	sw	s0,8(sp)
a000555e:	c25a                	sw	s6,4(sp)
a0005560:	4801                	li	a6,0
a0005562:	b739                	j	a0005470 <__vsnprintf+0x356>
a0005564:	10047713          	andi	a4,s0,256
a0005568:	00448d93          	addi	s11,s1,4
a000556c:	cb01                	beqz	a4,a000557c <__vsnprintf+0x462>
a000556e:	4098                	lw	a4,0(s1)
a0005570:	c042                	sw	a6,0(sp)
a0005572:	c422                	sw	s0,8(sp)
a0005574:	c25a                	sw	s6,4(sp)
a0005576:	4801                	li	a6,0
a0005578:	4781                	li	a5,0
a000557a:	bddd                	j	a0005470 <__vsnprintf+0x356>
a000557c:	04047693          	andi	a3,s0,64
a0005580:	4098                	lw	a4,0(s1)
a0005582:	c681                	beqz	a3,a000558a <__vsnprintf+0x470>
a0005584:	0ff77713          	zext.b	a4,a4
a0005588:	b7e5                	j	a0005570 <__vsnprintf+0x456>
a000558a:	08047693          	andi	a3,s0,128
a000558e:	d2ed                	beqz	a3,a0005570 <__vsnprintf+0x456>
a0005590:	57e2                	lw	a5,56(sp)
a0005592:	8f7d                	and	a4,a4,a5
a0005594:	bff1                	j	a0005570 <__vsnprintf+0x456>
a0005596:	02046413          	ori	s0,s0,32
a000559a:	049d                	addi	s1,s1,7
a000559c:	ff84f713          	andi	a4,s1,-8
a00055a0:	435c                	lw	a5,4(a4)
a00055a2:	00870493          	addi	s1,a4,8
a00055a6:	88da                	mv	a7,s6
a00055a8:	4318                	lw	a4,0(a4)
a00055aa:	c202                	sw	zero,4(sp)
a00055ac:	c022                	sw	s0,0(sp)
a00055ae:	86ea                	mv	a3,s10
a00055b0:	861a                	mv	a2,t1
a00055b2:	85de                	mv	a1,s7
a00055b4:	8562                	mv	a0,s8
a00055b6:	9bfff0ef          	jal	ra,a0004f74 <print_floating_point>
a00055ba:	832a                	mv	t1,a0
a00055bc:	b5d1                	j	a0005480 <__vsnprintf+0x366>
a00055be:	8809                	andi	s0,s0,2
a00055c0:	4d85                	li	s11,1
a00055c2:	e815                	bnez	s0,a00055f6 <__vsnprintf+0x4dc>
a00055c4:	4d81                	li	s11,0
a00055c6:	a801                	j	a00055d6 <__vsnprintf+0x4bc>
a00055c8:	c09a                	sw	t1,64(sp)
a00055ca:	86ea                	mv	a3,s10
a00055cc:	85de                	mv	a1,s7
a00055ce:	02000513          	li	a0,32
a00055d2:	9c02                	jalr	s8
a00055d4:	4306                	lw	t1,64(sp)
a00055d6:	006d8633          	add	a2,s11,t1
a00055da:	0d85                	addi	s11,s11,1
a00055dc:	ff6de6e3          	bltu	s11,s6,a00055c8 <__vsnprintf+0x4ae>
a00055e0:	4701                	li	a4,0
a00055e2:	000b0463          	beqz	s6,a00055ea <__vsnprintf+0x4d0>
a00055e6:	fffb0713          	addi	a4,s6,-1
a00055ea:	933a                	add	t1,t1,a4
a00055ec:	4d89                	li	s11,2
a00055ee:	000b0463          	beqz	s6,a00055f6 <__vsnprintf+0x4dc>
a00055f2:	001b0d93          	addi	s11,s6,1
a00055f6:	9844c50b          	lbuia	a0,(s1),4,0
a00055fa:	86ea                	mv	a3,s10
a00055fc:	861a                	mv	a2,t1
a00055fe:	85de                	mv	a1,s7
a0005600:	00130913          	addi	s2,t1,1
a0005604:	9c02                	jalr	s8
a0005606:	c40d                	beqz	s0,a0005630 <__vsnprintf+0x516>
a0005608:	846e                	mv	s0,s11
a000560a:	864a                	mv	a2,s2
a000560c:	a811                	j	a0005620 <__vsnprintf+0x506>
a000560e:	86ea                	mv	a3,s10
a0005610:	85de                	mv	a1,s7
a0005612:	02000513          	li	a0,32
a0005616:	00160993          	addi	s3,a2,1
a000561a:	9c02                	jalr	s8
a000561c:	0405                	addi	s0,s0,1
a000561e:	864e                	mv	a2,s3
a0005620:	ff6467e3          	bltu	s0,s6,a000560e <__vsnprintf+0x4f4>
a0005624:	4681                	li	a3,0
a0005626:	01bb6463          	bltu	s6,s11,a000562e <__vsnprintf+0x514>
a000562a:	41bb06b3          	sub	a3,s6,s11
a000562e:	9936                	add	s2,s2,a3
a0005630:	834a                	mv	t1,s2
a0005632:	b5b9                	j	a0005480 <__vsnprintf+0x366>
a0005634:	5844c98b          	lwia	s3,(s1),4,0
a0005638:	02099063          	bnez	s3,a0005658 <__vsnprintf+0x53e>
a000563c:	a0007737          	lui	a4,0xa0007
a0005640:	88a2                	mv	a7,s0
a0005642:	885a                	mv	a6,s6
a0005644:	4799                	li	a5,6
a0005646:	5bc70713          	addi	a4,a4,1468 # a00075bc <__psram_limit+0xf7c075bc>
a000564a:	86ea                	mv	a3,s10
a000564c:	861a                	mv	a2,t1
a000564e:	85de                	mv	a1,s7
a0005650:	8562                	mv	a0,s8
a0005652:	d1ffe0ef          	jal	ra,a0004370 <out_rev_>
a0005656:	b795                	j	a00055ba <__vsnprintf+0x4a0>
a0005658:	8742                	mv	a4,a6
a000565a:	00081363          	bnez	a6,a0005660 <__vsnprintf+0x546>
a000565e:	577d                	li	a4,-1
a0005660:	00e986b3          	add	a3,s3,a4
a0005664:	874e                	mv	a4,s3
a0005666:	00074603          	lbu	a2,0(a4)
a000566a:	c219                	beqz	a2,a0005670 <__vsnprintf+0x556>
a000566c:	02e69263          	bne	a3,a4,a0005690 <__vsnprintf+0x576>
a0005670:	40047d93          	andi	s11,s0,1024
a0005674:	41370933          	sub	s2,a4,s3
a0005678:	000d8663          	beqz	s11,a0005684 <__vsnprintf+0x56a>
a000567c:	012836b3          	sltu	a3,a6,s2
a0005680:	42d8190b          	mvnez	s2,a6,a3
a0005684:	8809                	andi	s0,s0,2
a0005686:	e429                	bnez	s0,a00056d0 <__vsnprintf+0x5b6>
a0005688:	861a                	mv	a2,t1
a000568a:	40690eb3          	sub	t4,s2,t1
a000568e:	a01d                	j	a00056b4 <__vsnprintf+0x59a>
a0005690:	0705                	addi	a4,a4,1
a0005692:	bfd1                	j	a0005666 <__vsnprintf+0x54c>
a0005694:	00160e13          	addi	t3,a2,1
a0005698:	c6f6                	sw	t4,76(sp)
a000569a:	c49a                	sw	t1,72(sp)
a000569c:	c2c2                	sw	a6,68(sp)
a000569e:	c0f2                	sw	t3,64(sp)
a00056a0:	86ea                	mv	a3,s10
a00056a2:	85de                	mv	a1,s7
a00056a4:	02000513          	li	a0,32
a00056a8:	9c02                	jalr	s8
a00056aa:	4e06                	lw	t3,64(sp)
a00056ac:	4816                	lw	a6,68(sp)
a00056ae:	4326                	lw	t1,72(sp)
a00056b0:	4eb6                	lw	t4,76(sp)
a00056b2:	8672                	mv	a2,t3
a00056b4:	01d606b3          	add	a3,a2,t4
a00056b8:	fd66eee3          	bltu	a3,s6,a0005694 <__vsnprintf+0x57a>
a00056bc:	4681                	li	a3,0
a00056be:	012b6463          	bltu	s6,s2,a00056c6 <__vsnprintf+0x5ac>
a00056c2:	412b06b3          	sub	a3,s6,s2
a00056c6:	00190713          	addi	a4,s2,1
a00056ca:	9336                	add	t1,t1,a3
a00056cc:	00e68933          	add	s2,a3,a4
a00056d0:	406989b3          	sub	s3,s3,t1
a00056d4:	a829                	j	a00056ee <__vsnprintf+0x5d4>
a00056d6:	8836                	mv	a6,a3
a00056d8:	00130893          	addi	a7,t1,1
a00056dc:	c2c2                	sw	a6,68(sp)
a00056de:	c0c6                	sw	a7,64(sp)
a00056e0:	861a                	mv	a2,t1
a00056e2:	86ea                	mv	a3,s10
a00056e4:	85de                	mv	a1,s7
a00056e6:	9c02                	jalr	s8
a00056e8:	4886                	lw	a7,64(sp)
a00056ea:	4816                	lw	a6,68(sp)
a00056ec:	8346                	mv	t1,a7
a00056ee:	8069c50b          	lrbu	a0,s3,t1,0
a00056f2:	c519                	beqz	a0,a0005700 <__vsnprintf+0x5e6>
a00056f4:	fe0d82e3          	beqz	s11,a00056d8 <__vsnprintf+0x5be>
a00056f8:	fff80693          	addi	a3,a6,-1 # a0006fff <__psram_limit+0xf7c06fff>
a00056fc:	fc081de3          	bnez	a6,a00056d6 <__vsnprintf+0x5bc>
a0005700:	d80400e3          	beqz	s0,a0005480 <__vsnprintf+0x366>
a0005704:	861a                	mv	a2,t1
a0005706:	40690433          	sub	s0,s2,t1
a000570a:	a819                	j	a0005720 <__vsnprintf+0x606>
a000570c:	c09a                	sw	t1,64(sp)
a000570e:	86ea                	mv	a3,s10
a0005710:	85de                	mv	a1,s7
a0005712:	02000513          	li	a0,32
a0005716:	00160d93          	addi	s11,a2,1
a000571a:	9c02                	jalr	s8
a000571c:	4306                	lw	t1,64(sp)
a000571e:	866e                	mv	a2,s11
a0005720:	008606b3          	add	a3,a2,s0
a0005724:	ff66e4e3          	bltu	a3,s6,a000570c <__vsnprintf+0x5f2>
a0005728:	4681                	li	a3,0
a000572a:	012b6463          	bltu	s6,s2,a0005732 <__vsnprintf+0x618>
a000572e:	412b06b3          	sub	a3,s6,s2
a0005732:	9336                	add	t1,t1,a3
a0005734:	b3b1                	j	a0005480 <__vsnprintf+0x366>
a0005736:	47a9                	li	a5,10
a0005738:	c446                	sw	a7,8(sp)
a000573a:	c23e                	sw	a5,4(sp)
a000573c:	c042                	sw	a6,0(sp)
a000573e:	48c1                	li	a7,16
a0005740:	4801                	li	a6,0
a0005742:	4781                	li	a5,0
a0005744:	86ea                	mv	a3,s10
a0005746:	861a                	mv	a2,t1
a0005748:	85de                	mv	a1,s7
a000574a:	8562                	mv	a0,s8
a000574c:	cd3fe0ef          	jal	ra,a000441e <print_integer>
a0005750:	b5ad                	j	a00055ba <__vsnprintf+0x4a0>
a0005752:	00130413          	addi	s0,t1,1
a0005756:	86ea                	mv	a3,s10
a0005758:	861a                	mv	a2,t1
a000575a:	85de                	mv	a1,s7
a000575c:	02500513          	li	a0,37
a0005760:	9c02                	jalr	s8
a0005762:	8322                	mv	t1,s0
a0005764:	bb31                	j	a0005480 <__vsnprintf+0x366>
a0005766:	02046413          	ori	s0,s0,32
a000576a:	48c1                	li	a7,16
a000576c:	b945                	j	a000541c <__vsnprintf+0x302>
a000576e:	48a1                	li	a7,8
a0005770:	b155                	j	a0005414 <__vsnprintf+0x2fa>
a0005772:	4889                	li	a7,2
a0005774:	b145                	j	a0005414 <__vsnprintf+0x2fa>

a0005776 <console_vsnprintf>:
a0005776:	86aa                	mv	a3,a0
a0005778:	a0004537          	lui	a0,0xa0004
a000577c:	872e                	mv	a4,a1
a000577e:	4601                	li	a2,0
a0005780:	4581                	li	a1,0
a0005782:	7aa50513          	addi	a0,a0,1962 # a00047aa <__psram_limit+0xf7c047aa>
a0005786:	995ff06f          	j	a000511a <__vsnprintf>

a000578a <putchar>:
a000578a:	1141                	addi	sp,sp,-16
a000578c:	62fc37b7          	lui	a5,0x62fc3
a0005790:	c422                	sw	s0,8(sp)
a0005792:	842a                	mv	s0,a0
a0005794:	df87a503          	lw	a0,-520(a5) # 62fc2df8 <console>
a0005798:	c606                	sw	ra,12(sp)
a000579a:	cd01                	beqz	a0,a00057b2 <putchar+0x28>
a000579c:	0ff47593          	zext.b	a1,s0
a00057a0:	c2fbb097          	auipc	ra,0xc2fbb
a00057a4:	f68080e7          	jalr	-152(ra) # 62fc0708 <qcc74x_uart_putchar>
a00057a8:	40b2                	lw	ra,12(sp)
a00057aa:	8522                	mv	a0,s0
a00057ac:	4422                	lw	s0,8(sp)
a00057ae:	0141                	addi	sp,sp,16
a00057b0:	8082                	ret
a00057b2:	547d                	li	s0,-1
a00057b4:	bfd5                	j	a00057a8 <putchar+0x1e>

a00057b6 <puts>:
a00057b6:	1101                	addi	sp,sp,-32
a00057b8:	ce06                	sw	ra,28(sp)
a00057ba:	cc22                	sw	s0,24(sp)
a00057bc:	e519                	bnez	a0,a00057ca <puts+0x14>
a00057be:	4401                	li	s0,0
a00057c0:	40f2                	lw	ra,28(sp)
a00057c2:	8522                	mv	a0,s0
a00057c4:	4462                	lw	s0,24(sp)
a00057c6:	6105                	addi	sp,sp,32
a00057c8:	8082                	ret
a00057ca:	c62a                	sw	a0,12(sp)
a00057cc:	529010ef          	jal	ra,a00074f4 <strlen>
a00057d0:	62fc37b7          	lui	a5,0x62fc3
a00057d4:	842a                	mv	s0,a0
a00057d6:	df87a503          	lw	a0,-520(a5) # 62fc2df8 <console>
a00057da:	d175                	beqz	a0,a00057be <puts+0x8>
a00057dc:	45b2                	lw	a1,12(sp)
a00057de:	8622                	mv	a2,s0
a00057e0:	c2fbb097          	auipc	ra,0xc2fbb
a00057e4:	f7a080e7          	jalr	-134(ra) # 62fc075a <qcc74x_uart_put>
a00057e8:	bfe1                	j	a00057c0 <puts+0xa>

a00057ea <printf>:
a00057ea:	7139                	addi	sp,sp,-64
a00057ec:	da3e                	sw	a5,52(sp)
a00057ee:	62fc37b7          	lui	a5,0x62fc3
a00057f2:	df87a783          	lw	a5,-520(a5) # 62fc2df8 <console>
a00057f6:	ce06                	sw	ra,28(sp)
a00057f8:	d22e                	sw	a1,36(sp)
a00057fa:	d432                	sw	a2,40(sp)
a00057fc:	d636                	sw	a3,44(sp)
a00057fe:	d83a                	sw	a4,48(sp)
a0005800:	dc42                	sw	a6,56(sp)
a0005802:	de46                	sw	a7,60(sp)
a0005804:	c799                	beqz	a5,a0005812 <printf+0x28>
a0005806:	104c                	addi	a1,sp,36
a0005808:	c62e                	sw	a1,12(sp)
a000580a:	37b5                	jal	a0005776 <console_vsnprintf>
a000580c:	40f2                	lw	ra,28(sp)
a000580e:	6121                	addi	sp,sp,64
a0005810:	8082                	ret
a0005812:	4501                	li	a0,0
a0005814:	bfe5                	j	a000580c <printf+0x22>

a0005816 <qcc74x_uart_set_console>:
a0005816:	62fc37b7          	lui	a5,0x62fc3
a000581a:	dea7ac23          	sw	a0,-520(a5) # 62fc2df8 <console>
a000581e:	8082                	ret

a0005820 <kmem_init>:
a0005820:	862e                	mv	a2,a1
a0005822:	85aa                	mv	a1,a0
a0005824:	62fc3537          	lui	a0,0x62fc3
a0005828:	dfc50513          	addi	a0,a0,-516 # 62fc2dfc <g_kmemheap>
a000582c:	aa41                	j	a00059bc <qcc74x_mem_init>

a000582e <block_next>:
a000582e:	415c                	lw	a5,4(a0)
a0005830:	9bf1                	andi	a5,a5,-4
a0005832:	953e                	add	a0,a0,a5
a0005834:	0511                	addi	a0,a0,4
a0005836:	8082                	ret

a0005838 <block_link_next>:
a0005838:	1141                	addi	sp,sp,-16
a000583a:	c422                	sw	s0,8(sp)
a000583c:	c606                	sw	ra,12(sp)
a000583e:	842a                	mv	s0,a0
a0005840:	37fd                	jal	a000582e <block_next>
a0005842:	40b2                	lw	ra,12(sp)
a0005844:	c100                	sw	s0,0(a0)
a0005846:	4422                	lw	s0,8(sp)
a0005848:	0141                	addi	sp,sp,16
a000584a:	8082                	ret

a000584c <mapping_insert>:
a000584c:	07f00793          	li	a5,127
a0005850:	00a7e763          	bltu	a5,a0,a000585e <mapping_insert+0x12>
a0005854:	8509                	srai	a0,a0,0x2
a0005856:	4781                	li	a5,0
a0005858:	c19c                	sw	a5,0(a1)
a000585a:	c208                	sw	a0,0(a2)
a000585c:	8082                	ret
a000585e:	af9506f7          	clz32	a3,a0
a0005862:	4769                	li	a4,26
a0005864:	8f15                	sub	a4,a4,a3
a0005866:	00e55533          	srl	a0,a0,a4
a000586a:	47e5                	li	a5,25
a000586c:	02054513          	xori	a0,a0,32
a0005870:	8f95                	sub	a5,a5,a3
a0005872:	b7dd                	j	a0005858 <mapping_insert+0xc>

a0005874 <block_insert>:
a0005874:	1101                	addi	sp,sp,-32
a0005876:	cc22                	sw	s0,24(sp)
a0005878:	842a                	mv	s0,a0
a000587a:	41c8                	lw	a0,4(a1)
a000587c:	ca26                	sw	s1,20(sp)
a000587e:	0070                	addi	a2,sp,12
a0005880:	84ae                	mv	s1,a1
a0005882:	9971                	andi	a0,a0,-4
a0005884:	002c                	addi	a1,sp,8
a0005886:	ce06                	sw	ra,28(sp)
a0005888:	37d1                	jal	a000584c <mapping_insert>
a000588a:	4722                	lw	a4,8(sp)
a000588c:	4632                	lw	a2,12(sp)
a000588e:	40f2                	lw	ra,28(sp)
a0005890:	00571793          	slli	a5,a4,0x5
a0005894:	97b2                	add	a5,a5,a2
a0005896:	04f4178b          	addsl	a5,s0,a5,2
a000589a:	5bf4                	lw	a3,116(a5)
a000589c:	c4c0                	sw	s0,12(s1)
a000589e:	c494                	sw	a3,8(s1)
a00058a0:	c6c4                	sw	s1,12(a3)
a00058a2:	dbe4                	sw	s1,116(a5)
a00058a4:	4814                	lw	a3,16(s0)
a00058a6:	4785                	li	a5,1
a00058a8:	00e795b3          	sll	a1,a5,a4
a00058ac:	8ecd                	or	a3,a3,a1
a00058ae:	c814                	sw	a3,16(s0)
a00058b0:	04e4140b          	addsl	s0,s0,a4,2
a00058b4:	4858                	lw	a4,20(s0)
a00058b6:	00c797b3          	sll	a5,a5,a2
a00058ba:	44d2                	lw	s1,20(sp)
a00058bc:	8fd9                	or	a5,a5,a4
a00058be:	c85c                	sw	a5,20(s0)
a00058c0:	4462                	lw	s0,24(sp)
a00058c2:	6105                	addi	sp,sp,32
a00058c4:	8082                	ret

a00058c6 <tlsf_size>:
a00058c6:	6505                	lui	a0,0x1
a00058c8:	c7450513          	addi	a0,a0,-908 # c74 <VerOffset+0x74>
a00058cc:	8082                	ret

a00058ce <tlsf_add_pool>:
a00058ce:	1141                	addi	sp,sp,-16
a00058d0:	c606                	sw	ra,12(sp)
a00058d2:	c422                	sw	s0,8(sp)
a00058d4:	c226                	sw	s1,4(sp)
a00058d6:	0035f713          	andi	a4,a1,3
a00058da:	cf11                	beqz	a4,a00058f6 <tlsf_add_pool+0x28>
a00058dc:	a0007537          	lui	a0,0xa0007
a00058e0:	4591                	li	a1,4
a00058e2:	6e850513          	addi	a0,a0,1768 # a00076e8 <__psram_limit+0xf7c076e8>
a00058e6:	3711                	jal	a00057ea <printf>
a00058e8:	4401                	li	s0,0
a00058ea:	40b2                	lw	ra,12(sp)
a00058ec:	8522                	mv	a0,s0
a00058ee:	4422                	lw	s0,8(sp)
a00058f0:	4492                	lw	s1,4(sp)
a00058f2:	0141                	addi	sp,sp,16
a00058f4:	8082                	ret
a00058f6:	ff860793          	addi	a5,a2,-8
a00058fa:	9bf1                	andi	a5,a5,-4
a00058fc:	40000637          	lui	a2,0x40000
a0005900:	ff478713          	addi	a4,a5,-12
a0005904:	ff460693          	addi	a3,a2,-12 # 3ffffff4 <__wifi_bss_end+0x1cfcfff4>
a0005908:	00e6fa63          	bgeu	a3,a4,a000591c <tlsf_add_pool+0x4e>
a000590c:	a0007537          	lui	a0,0xa0007
a0005910:	0621                	addi	a2,a2,8
a0005912:	45d1                	li	a1,20
a0005914:	71c50513          	addi	a0,a0,1820 # a000771c <__psram_limit+0xf7c0771c>
a0005918:	3dc9                	jal	a00057ea <printf>
a000591a:	b7f9                	j	a00058e8 <tlsf_add_pool+0x1a>
a000591c:	84ae                	mv	s1,a1
a000591e:	59c4c70b          	lwia	a4,(s1),-4,0
a0005922:	0017e793          	ori	a5,a5,1
a0005926:	842e                	mv	s0,a1
a0005928:	c0dc                	sw	a5,4(s1)
a000592a:	85a6                	mv	a1,s1
a000592c:	37a1                	jal	a0005874 <block_insert>
a000592e:	8526                	mv	a0,s1
a0005930:	3721                	jal	a0005838 <block_link_next>
a0005932:	4789                	li	a5,2
a0005934:	c15c                	sw	a5,4(a0)
a0005936:	bf55                	j	a00058ea <tlsf_add_pool+0x1c>

a0005938 <tlsf_create>:
a0005938:	00357793          	andi	a5,a0,3
a000593c:	cf89                	beqz	a5,a0005956 <tlsf_create+0x1e>
a000593e:	a0007537          	lui	a0,0xa0007
a0005942:	1141                	addi	sp,sp,-16
a0005944:	4591                	li	a1,4
a0005946:	75c50513          	addi	a0,a0,1884 # a000775c <__psram_limit+0xf7c0775c>
a000594a:	c606                	sw	ra,12(sp)
a000594c:	3d79                	jal	a00057ea <printf>
a000594e:	40b2                	lw	ra,12(sp)
a0005950:	4501                	li	a0,0
a0005952:	0141                	addi	sp,sp,16
a0005954:	8082                	ret
a0005956:	c508                	sw	a0,8(a0)
a0005958:	c548                	sw	a0,12(a0)
a000595a:	00052823          	sw	zero,16(a0)
a000595e:	07450693          	addi	a3,a0,116
a0005962:	4781                	li	a5,0
a0005964:	01450593          	addi	a1,a0,20
a0005968:	02000813          	li	a6,32
a000596c:	4661                	li	a2,24
a000596e:	44f5d00b          	srw	zero,a1,a5,2
a0005972:	4701                	li	a4,0
a0005974:	44e6d50b          	srw	a0,a3,a4,2
a0005978:	0705                	addi	a4,a4,1
a000597a:	ff071de3          	bne	a4,a6,a0005974 <tlsf_create+0x3c>
a000597e:	0785                	addi	a5,a5,1
a0005980:	08068693          	addi	a3,a3,128
a0005984:	fec795e3          	bne	a5,a2,a000596e <tlsf_create+0x36>
a0005988:	8082                	ret

a000598a <tlsf_create_with_pool>:
a000598a:	1101                	addi	sp,sp,-32
a000598c:	ce06                	sw	ra,28(sp)
a000598e:	cc22                	sw	s0,24(sp)
a0005990:	ca26                	sw	s1,20(sp)
a0005992:	c62e                	sw	a1,12(sp)
a0005994:	84aa                	mv	s1,a0
a0005996:	374d                	jal	a0005938 <tlsf_create>
a0005998:	45b2                	lw	a1,12(sp)
a000599a:	77fd                	lui	a5,0xfffff
a000599c:	38c78793          	addi	a5,a5,908 # fffff38c <__psram_limit+0x57bff38c>
a00059a0:	00f58633          	add	a2,a1,a5
a00059a4:	6585                	lui	a1,0x1
a00059a6:	c7458593          	addi	a1,a1,-908 # c74 <VerOffset+0x74>
a00059aa:	95a6                	add	a1,a1,s1
a00059ac:	842a                	mv	s0,a0
a00059ae:	3705                	jal	a00058ce <tlsf_add_pool>
a00059b0:	40f2                	lw	ra,28(sp)
a00059b2:	8522                	mv	a0,s0
a00059b4:	4462                	lw	s0,24(sp)
a00059b6:	44d2                	lw	s1,20(sp)
a00059b8:	6105                	addi	sp,sp,32
a00059ba:	8082                	ret

a00059bc <qcc74x_mem_init>:
a00059bc:	1101                	addi	sp,sp,-32
a00059be:	ce06                	sw	ra,28(sp)
a00059c0:	cc22                	sw	s0,24(sp)
a00059c2:	ca26                	sw	s1,20(sp)
a00059c4:	842a                	mv	s0,a0
a00059c6:	84ae                	mv	s1,a1
a00059c8:	c632                	sw	a2,12(sp)
a00059ca:	3df5                	jal	a00058c6 <tlsf_size>
a00059cc:	9526                	add	a0,a0,s1
a00059ce:	c048                	sw	a0,4(s0)
a00059d0:	3ddd                	jal	a00058c6 <tlsf_size>
a00059d2:	4632                	lw	a2,12(sp)
a00059d4:	40a60533          	sub	a0,a2,a0
a00059d8:	c408                	sw	a0,8(s0)
a00059da:	85b2                	mv	a1,a2
a00059dc:	8526                	mv	a0,s1
a00059de:	3775                	jal	a000598a <tlsf_create_with_pool>
a00059e0:	441c                	lw	a5,8(s0)
a00059e2:	40f2                	lw	ra,28(sp)
a00059e4:	c008                	sw	a0,0(s0)
a00059e6:	c45c                	sw	a5,12(s0)
a00059e8:	c81c                	sw	a5,16(s0)
a00059ea:	4462                	lw	s0,24(sp)
a00059ec:	44d2                	lw	s1,20(sp)
a00059ee:	6105                	addi	sp,sp,32
a00059f0:	8082                	ret

a00059f2 <log_start>:
a00059f2:	8082                	ret

a00059f4 <coredump_run>:
a00059f4:	711d                	addi	sp,sp,-96
a00059f6:	cca2                	sw	s0,88(sp)
a00059f8:	62fc3537          	lui	a0,0x62fc3
a00059fc:	a0008437          	lui	s0,0xa0008
a0005a00:	66040593          	addi	a1,s0,1632 # a0008660 <__psram_limit+0xf7c08660>
a0005a04:	4651                	li	a2,20
a0005a06:	e1050513          	addi	a0,a0,-496 # 62fc2e10 <core_build_id>
a0005a0a:	ce86                	sw	ra,92(sp)
a0005a0c:	c4d2                	sw	s4,72(sp)
a0005a0e:	c2d6                	sw	s5,68(sp)
a0005a10:	c0da                	sw	s6,64(sp)
a0005a12:	caa6                	sw	s1,84(sp)
a0005a14:	c8ca                	sw	s2,80(sp)
a0005a16:	c6ce                	sw	s3,76(sp)
a0005a18:	cfefe0ef          	jal	ra,a0003f16 <memcpy>
a0005a1c:	a0007537          	lui	a0,0xa0007
a0005a20:	79050513          	addi	a0,a0,1936 # a0007790 <__psram_limit+0xf7c07790>
a0005a24:	33d9                	jal	a00057ea <printf>
a0005a26:	66040613          	addi	a2,s0,1632
a0005a2a:	01364783          	lbu	a5,19(a2)
a0005a2e:	a0007537          	lui	a0,0xa0007
a0005a32:	7d850513          	addi	a0,a0,2008 # a00077d8 <__psram_limit+0xf7c077d8>
a0005a36:	d83e                	sw	a5,48(sp)
a0005a38:	01264783          	lbu	a5,18(a2)
a0005a3c:	5a75                	li	s4,-3
a0005a3e:	40000a93          	li	s5,1024
a0005a42:	d63e                	sw	a5,44(sp)
a0005a44:	01164783          	lbu	a5,17(a2)
a0005a48:	a0008b37          	lui	s6,0xa0008
a0005a4c:	d43e                	sw	a5,40(sp)
a0005a4e:	01064783          	lbu	a5,16(a2)
a0005a52:	d23e                	sw	a5,36(sp)
a0005a54:	00f64783          	lbu	a5,15(a2)
a0005a58:	d03e                	sw	a5,32(sp)
a0005a5a:	00e64783          	lbu	a5,14(a2)
a0005a5e:	ce3e                	sw	a5,28(sp)
a0005a60:	00d64783          	lbu	a5,13(a2)
a0005a64:	cc3e                	sw	a5,24(sp)
a0005a66:	00c64783          	lbu	a5,12(a2)
a0005a6a:	ca3e                	sw	a5,20(sp)
a0005a6c:	00b64783          	lbu	a5,11(a2)
a0005a70:	c83e                	sw	a5,16(sp)
a0005a72:	00a64783          	lbu	a5,10(a2)
a0005a76:	c63e                	sw	a5,12(sp)
a0005a78:	00964783          	lbu	a5,9(a2)
a0005a7c:	c43e                	sw	a5,8(sp)
a0005a7e:	00864783          	lbu	a5,8(a2)
a0005a82:	c23e                	sw	a5,4(sp)
a0005a84:	00764783          	lbu	a5,7(a2)
a0005a88:	c03e                	sw	a5,0(sp)
a0005a8a:	00664883          	lbu	a7,6(a2)
a0005a8e:	00564803          	lbu	a6,5(a2)
a0005a92:	00464783          	lbu	a5,4(a2)
a0005a96:	00364703          	lbu	a4,3(a2)
a0005a9a:	00264683          	lbu	a3,2(a2)
a0005a9e:	00164603          	lbu	a2,1(a2)
a0005aa2:	66044583          	lbu	a1,1632(s0)
a0005aa6:	a0008437          	lui	s0,0xa0008
a0005aaa:	62840413          	addi	s0,s0,1576 # a0008628 <__psram_limit+0xf7c08628>
a0005aae:	3b35                	jal	a00057ea <printf>
a0005ab0:	00042983          	lw	s3,0(s0)
a0005ab4:	fff98793          	addi	a5,s3,-1
a0005ab8:	00fa7b63          	bgeu	s4,a5,a0005ace <coredump_run+0xda>
a0005abc:	a0008537          	lui	a0,0xa0008
a0005ac0:	84450513          	addi	a0,a0,-1980 # a0007844 <__psram_limit+0xf7c07844>
a0005ac4:	331d                	jal	a00057ea <printf>
a0005ac6:	580010ef          	jal	ra,a0007046 <qcc74x_sys_reset_por>
a0005aca:	0001                	nop
a0005acc:	bffd                	j	a0005aca <coredump_run+0xd6>
a0005ace:	00442903          	lw	s2,4(s0)
a0005ad2:	00091463          	bnez	s2,a0005ada <coredump_run+0xe6>
a0005ad6:	0421                	addi	s0,s0,8
a0005ad8:	bfe1                	j	a0005ab0 <coredump_run+0xbc>
a0005ada:	4481                	li	s1,0
a0005adc:	40990633          	sub	a2,s2,s1
a0005ae0:	009985b3          	add	a1,s3,s1
a0005ae4:	00caf463          	bgeu	s5,a2,a0005aec <coredump_run+0xf8>
a0005ae8:	40000613          	li	a2,1024
a0005aec:	838b0693          	addi	a3,s6,-1992 # a0007838 <__psram_limit+0xf7c07838>
a0005af0:	852e                	mv	a0,a1
a0005af2:	40048493          	addi	s1,s1,1024
a0005af6:	2851                	jal	a0005b8a <coredump_print>
a0005af8:	ff24e2e3          	bltu	s1,s2,a0005adc <coredump_run+0xe8>
a0005afc:	bfe9                	j	a0005ad6 <coredump_run+0xe2>

a0005afe <cd_base64_write_block>:
a0005afe:	1141                	addi	sp,sp,-16
a0005b00:	c606                	sw	ra,12(sp)
a0005b02:	c422                	sw	s0,8(sp)
a0005b04:	c226                	sw	s1,4(sp)
a0005b06:	842a                	mv	s0,a0
a0005b08:	00054503          	lbu	a0,0(a0)
a0005b0c:	84ae                	mv	s1,a1
a0005b0e:	39b5                	jal	a000578a <putchar>
a0005b10:	00144503          	lbu	a0,1(s0)
a0005b14:	399d                	jal	a000578a <putchar>
a0005b16:	00244503          	lbu	a0,2(s0)
a0005b1a:	3985                	jal	a000578a <putchar>
a0005b1c:	00344503          	lbu	a0,3(s0)
a0005b20:	31ad                	jal	a000578a <putchar>
a0005b22:	409c                	lw	a5,0(s1)
a0005b24:	4765                	li	a4,25
a0005b26:	0785                	addi	a5,a5,1
a0005b28:	c09c                	sw	a5,0(s1)
a0005b2a:	00f75963          	bge	a4,a5,a0005b3c <cd_base64_write_block+0x3e>
a0005b2e:	a0008537          	lui	a0,0xa0008
a0005b32:	41050513          	addi	a0,a0,1040 # a0008410 <__psram_limit+0xf7c08410>
a0005b36:	3141                	jal	a00057b6 <puts>
a0005b38:	0004a023          	sw	zero,0(s1)
a0005b3c:	40b2                	lw	ra,12(sp)
a0005b3e:	4422                	lw	s0,8(sp)
a0005b40:	4492                	lw	s1,4(sp)
a0005b42:	0141                	addi	sp,sp,16
a0005b44:	8082                	ret

a0005b46 <read_word_cb>:
a0005b46:	4598                	lw	a4,8(a1)
a0005b48:	45dc                	lw	a5,12(a1)
a0005b4a:	02f77e63          	bgeu	a4,a5,a0005b86 <read_word_cb+0x40>
a0005b4e:	41d4                	lw	a3,4(a1)
a0005b50:	1141                	addi	sp,sp,-16
a0005b52:	c606                	sw	ra,12(sp)
a0005b54:	ffc77793          	andi	a5,a4,-4
a0005b58:	00f68563          	beq	a3,a5,a0005b62 <read_word_cb+0x1c>
a0005b5c:	c1dc                	sw	a5,4(a1)
a0005b5e:	439c                	lw	a5,0(a5)
a0005b60:	c99c                	sw	a5,16(a1)
a0005b62:	8b0d                	andi	a4,a4,3
a0005b64:	972e                	add	a4,a4,a1
a0005b66:	01074703          	lbu	a4,16(a4)
a0005b6a:	87ae                	mv	a5,a1
a0005b6c:	00e50023          	sb	a4,0(a0)
a0005b70:	4598                	lw	a4,8(a1)
a0005b72:	0705                	addi	a4,a4,1
a0005b74:	c598                	sw	a4,8(a1)
a0005b76:	00054583          	lbu	a1,0(a0)
a0005b7a:	4bc8                	lw	a0,20(a5)
a0005b7c:	2415                	jal	a0005da0 <utils_crc32_stream_feed>
a0005b7e:	40b2                	lw	ra,12(sp)
a0005b80:	4501                	li	a0,0
a0005b82:	0141                	addi	sp,sp,16
a0005b84:	8082                	ret
a0005b86:	4505                	li	a0,1
a0005b88:	8082                	ret

a0005b8a <coredump_print>:
a0005b8a:	715d                	addi	sp,sp,-80
a0005b8c:	c2a6                	sw	s1,68(sp)
a0005b8e:	62fc34b7          	lui	s1,0x62fc3
a0005b92:	e2448493          	addi	s1,s1,-476 # 62fc2e24 <init.0>
a0005b96:	409c                	lw	a5,0(s1)
a0005b98:	c4a2                	sw	s0,72(sp)
a0005b9a:	c0ca                	sw	s2,64(sp)
a0005b9c:	de4e                	sw	s3,60(sp)
a0005b9e:	dc52                	sw	s4,56(sp)
a0005ba0:	c686                	sw	ra,76(sp)
a0005ba2:	da56                	sw	s5,52(sp)
a0005ba4:	892a                	mv	s2,a0
a0005ba6:	89ae                	mv	s3,a1
a0005ba8:	8432                	mv	s0,a2
a0005baa:	8a36                	mv	s4,a3
a0005bac:	eb81                	bnez	a5,a0005bbc <coredump_print+0x32>
a0005bae:	a0008537          	lui	a0,0xa0008
a0005bb2:	86c50513          	addi	a0,a0,-1940 # a000786c <__psram_limit+0xf7c0786c>
a0005bb6:	3101                	jal	a00057b6 <puts>
a0005bb8:	4785                	li	a5,1
a0005bba:	c09c                	sw	a5,0(s1)
a0005bbc:	a0008537          	lui	a0,0xa0008
a0005bc0:	8209190b          	rev	s2,s2
a0005bc4:	89850513          	addi	a0,a0,-1896 # a0007898 <__psram_limit+0xf7c07898>
a0005bc8:	c802                	sw	zero,16(sp)
a0005bca:	ca02                	sw	zero,20(sp)
a0005bcc:	36ed                	jal	a00057b6 <puts>
a0005bce:	c64a                	sw	s2,12(sp)
a0005bd0:	00c10913          	addi	s2,sp,12
a0005bd4:	4611                	li	a2,4
a0005bd6:	85ca                	mv	a1,s2
a0005bd8:	0808                	addi	a0,sp,16
a0005bda:	22ed                	jal	a0005dc4 <utils_bin2hex>
a0005bdc:	4481                	li	s1,0
a0005bde:	4aa1                	li	s5,8
a0005be0:	081c                	addi	a5,sp,16
a0005be2:	8097c50b          	lrbu	a0,a5,s1,0
a0005be6:	0485                	addi	s1,s1,1
a0005be8:	364d                	jal	a000578a <putchar>
a0005bea:	ff549be3          	bne	s1,s5,a0005be0 <coredump_print+0x56>
a0005bee:	04000513          	li	a0,64
a0005bf2:	3e61                	jal	a000578a <putchar>
a0005bf4:	8204178b          	rev	a5,s0
a0005bf8:	4611                	li	a2,4
a0005bfa:	85ca                	mv	a1,s2
a0005bfc:	0808                	addi	a0,sp,16
a0005bfe:	c63e                	sw	a5,12(sp)
a0005c00:	4481                	li	s1,0
a0005c02:	22c9                	jal	a0005dc4 <utils_bin2hex>
a0005c04:	4aa1                	li	s5,8
a0005c06:	081c                	addi	a5,sp,16
a0005c08:	8097c50b          	lrbu	a0,a5,s1,0
a0005c0c:	0485                	addi	s1,s1,1
a0005c0e:	3eb5                	jal	a000578a <putchar>
a0005c10:	ff549be3          	bne	s1,s5,a0005c06 <coredump_print+0x7c>
a0005c14:	000a0763          	beqz	s4,a0005c22 <coredump_print+0x98>
a0005c18:	04000513          	li	a0,64
a0005c1c:	36bd                	jal	a000578a <putchar>
a0005c1e:	8552                	mv	a0,s4
a0005c20:	3e59                	jal	a00057b6 <puts>
a0005c22:	a00084b7          	lui	s1,0xa0008
a0005c26:	8b048513          	addi	a0,s1,-1872 # a00078b0 <__psram_limit+0xf7c078b0>
a0005c2a:	3671                	jal	a00057b6 <puts>
a0005c2c:	0048                	addi	a0,sp,4
a0005c2e:	22b5                	jal	a0005d9a <utils_crc32_stream_init>
a0005c30:	ffc9f793          	andi	a5,s3,-4
a0005c34:	ce3e                	sw	a5,28(sp)
a0005c36:	943e                	add	s0,s0,a5
a0005c38:	439c                	lw	a5,0(a5)
a0005c3a:	d04e                	sw	s3,32(sp)
a0005c3c:	d222                	sw	s0,36(sp)
a0005c3e:	a00069b7          	lui	s3,0xa0006
a0005c42:	a0006437          	lui	s0,0xa0006
a0005c46:	0830                	addi	a2,sp,24
a0005c48:	afe98593          	addi	a1,s3,-1282 # a0005afe <__psram_limit+0xf7c05afe>
a0005c4c:	d43e                	sw	a5,40(sp)
a0005c4e:	b4640513          	addi	a0,s0,-1210 # a0005b46 <__psram_limit+0xf7c05b46>
a0005c52:	005c                	addi	a5,sp,4
a0005c54:	d63e                	sw	a5,44(sp)
a0005c56:	cc02                	sw	zero,24(sp)
a0005c58:	2099                	jal	a0005c9e <utils_base64_encode_stream>
a0005c5a:	a0008537          	lui	a0,0xa0008
a0005c5e:	8bc50513          	addi	a0,a0,-1860 # a00078bc <__psram_limit+0xf7c078bc>
a0005c62:	3e91                	jal	a00057b6 <puts>
a0005c64:	0048                	addi	a0,sp,4
a0005c66:	2a99                	jal	a0005dbc <utils_crc32_stream_results>
a0005c68:	003c                	addi	a5,sp,8
a0005c6a:	c42a                	sw	a0,8(sp)
a0005c6c:	ce3e                	sw	a5,28(sp)
a0005c6e:	d03e                	sw	a5,32(sp)
a0005c70:	d42a                	sw	a0,40(sp)
a0005c72:	005c                	addi	a5,sp,4
a0005c74:	0830                	addi	a2,sp,24
a0005c76:	afe98593          	addi	a1,s3,-1282
a0005c7a:	b4640513          	addi	a0,s0,-1210
a0005c7e:	d24a                	sw	s2,36(sp)
a0005c80:	d63e                	sw	a5,44(sp)
a0005c82:	cc02                	sw	zero,24(sp)
a0005c84:	2829                	jal	a0005c9e <utils_base64_encode_stream>
a0005c86:	8b048513          	addi	a0,s1,-1872
a0005c8a:	3635                	jal	a00057b6 <puts>
a0005c8c:	40b6                	lw	ra,76(sp)
a0005c8e:	4426                	lw	s0,72(sp)
a0005c90:	4496                	lw	s1,68(sp)
a0005c92:	4906                	lw	s2,64(sp)
a0005c94:	59f2                	lw	s3,60(sp)
a0005c96:	5a62                	lw	s4,56(sp)
a0005c98:	5ad2                	lw	s5,52(sp)
a0005c9a:	6161                	addi	sp,sp,80
a0005c9c:	8082                	ret

a0005c9e <utils_base64_encode_stream>:
a0005c9e:	7139                	addi	sp,sp,-64
a0005ca0:	d84a                	sw	s2,48(sp)
a0005ca2:	a0008937          	lui	s2,0xa0008
a0005ca6:	da26                	sw	s1,52(sp)
a0005ca8:	d64e                	sw	s3,44(sp)
a0005caa:	d452                	sw	s4,40(sp)
a0005cac:	d256                	sw	s5,36(sp)
a0005cae:	d05a                	sw	s6,32(sp)
a0005cb0:	ce5e                	sw	s7,28(sp)
a0005cb2:	de06                	sw	ra,60(sp)
a0005cb4:	dc22                	sw	s0,56(sp)
a0005cb6:	cc62                	sw	s8,24(sp)
a0005cb8:	8a2a                	mv	s4,a0
a0005cba:	8aae                	mv	s5,a1
a0005cbc:	89b2                	mv	s3,a2
a0005cbe:	54fd                	li	s1,-1
a0005cc0:	5b7d                	li	s6,-1
a0005cc2:	8cc90913          	addi	s2,s2,-1844 # a00078cc <__psram_limit+0xf7c078cc>
a0005cc6:	00c10b93          	addi	s7,sp,12
a0005cca:	85ce                	mv	a1,s3
a0005ccc:	00b10513          	addi	a0,sp,11
a0005cd0:	9a02                	jalr	s4
a0005cd2:	c15d                	beqz	a0,a0005d78 <utils_base64_encode_stream+0xda>
a0005cd4:	0004d363          	bgez	s1,a0005cda <utils_base64_encode_stream+0x3c>
a0005cd8:	4481                	li	s1,0
a0005cda:	4401                	li	s0,0
a0005cdc:	85ce                	mv	a1,s3
a0005cde:	00b10513          	addi	a0,sp,11
a0005ce2:	9a02                	jalr	s4
a0005ce4:	cd49                	beqz	a0,a0005d7e <utils_base64_encode_stream+0xe0>
a0005ce6:	4c01                	li	s8,0
a0005ce8:	01649363          	bne	s1,s6,a0005cee <utils_base64_encode_stream+0x50>
a0005cec:	4485                	li	s1,1
a0005cee:	85ce                	mv	a1,s3
a0005cf0:	00b10513          	addi	a0,sp,11
a0005cf4:	9a02                	jalr	s4
a0005cf6:	c559                	beqz	a0,a0005d84 <utils_base64_encode_stream+0xe6>
a0005cf8:	4701                	li	a4,0
a0005cfa:	01649363          	bne	s1,s6,a0005d00 <utils_base64_encode_stream+0x62>
a0005cfe:	4489                	li	s1,2
a0005d00:	01041793          	slli	a5,s0,0x10
a0005d04:	0c22                	slli	s8,s8,0x8
a0005d06:	97e2                	add	a5,a5,s8
a0005d08:	97ba                	add	a5,a5,a4
a0005d0a:	c111                	beqz	a0,a0005d0e <utils_base64_encode_stream+0x70>
a0005d0c:	c8b1                	beqz	s1,a0005d60 <utils_base64_encode_stream+0xc2>
a0005d0e:	0127d713          	srli	a4,a5,0x12
a0005d12:	80e9470b          	lrbu	a4,s2,a4,0
a0005d16:	00e10623          	sb	a4,12(sp)
a0005d1a:	44c7b70b          	extu	a4,a5,17,12
a0005d1e:	80e9470b          	lrbu	a4,s2,a4,0
a0005d22:	00e106a3          	sb	a4,13(sp)
a0005d26:	2c67b70b          	extu	a4,a5,11,6
a0005d2a:	03f7f793          	andi	a5,a5,63
a0005d2e:	80e9470b          	lrbu	a4,s2,a4,0
a0005d32:	80f9478b          	lrbu	a5,s2,a5,0
a0005d36:	00e10723          	sb	a4,14(sp)
a0005d3a:	00f107a3          	sb	a5,15(sp)
a0005d3e:	c531                	beqz	a0,a0005d8a <utils_base64_encode_stream+0xec>
a0005d40:	a00087b7          	lui	a5,0xa0008
a0005d44:	90c78793          	addi	a5,a5,-1780 # a000790c <__psram_limit+0xf7c0790c>
a0005d48:	4497c70b          	lrw	a4,a5,s1,2
a0005d4c:	03d00613          	li	a2,61
a0005d50:	87de                	mv	a5,s7
a0005d52:	40fb86b3          	sub	a3,s7,a5
a0005d56:	02e6ce63          	blt	a3,a4,a0005d92 <utils_base64_encode_stream+0xf4>
a0005d5a:	85ce                	mv	a1,s3
a0005d5c:	855e                	mv	a0,s7
a0005d5e:	9a82                	jalr	s5
a0005d60:	50f2                	lw	ra,60(sp)
a0005d62:	5462                	lw	s0,56(sp)
a0005d64:	54d2                	lw	s1,52(sp)
a0005d66:	5942                	lw	s2,48(sp)
a0005d68:	59b2                	lw	s3,44(sp)
a0005d6a:	5a22                	lw	s4,40(sp)
a0005d6c:	5a92                	lw	s5,36(sp)
a0005d6e:	5b02                	lw	s6,32(sp)
a0005d70:	4bf2                	lw	s7,28(sp)
a0005d72:	4c62                	lw	s8,24(sp)
a0005d74:	6121                	addi	sp,sp,64
a0005d76:	8082                	ret
a0005d78:	00b14403          	lbu	s0,11(sp)
a0005d7c:	b785                	j	a0005cdc <utils_base64_encode_stream+0x3e>
a0005d7e:	00b14c03          	lbu	s8,11(sp)
a0005d82:	b7b5                	j	a0005cee <utils_base64_encode_stream+0x50>
a0005d84:	00b14703          	lbu	a4,11(sp)
a0005d88:	bfa5                	j	a0005d00 <utils_base64_encode_stream+0x62>
a0005d8a:	85ce                	mv	a1,s3
a0005d8c:	855e                	mv	a0,s7
a0005d8e:	9a82                	jalr	s5
a0005d90:	bf2d                	j	a0005cca <utils_base64_encode_stream+0x2c>
a0005d92:	00c781a3          	sb	a2,3(a5)
a0005d96:	17fd                	addi	a5,a5,-1
a0005d98:	bf6d                	j	a0005d52 <utils_base64_encode_stream+0xb4>

a0005d9a <utils_crc32_stream_init>:
a0005d9a:	57fd                	li	a5,-1
a0005d9c:	c11c                	sw	a5,0(a0)
a0005d9e:	8082                	ret

a0005da0 <utils_crc32_stream_feed>:
a0005da0:	411c                	lw	a5,0(a0)
a0005da2:	a0008737          	lui	a4,0xa0008
a0005da6:	91870713          	addi	a4,a4,-1768 # a0007918 <__psram_limit+0xf7c07918>
a0005daa:	8dbd                	xor	a1,a1,a5
a0005dac:	0ff5f593          	zext.b	a1,a1
a0005db0:	44b7470b          	lrw	a4,a4,a1,2
a0005db4:	83a1                	srli	a5,a5,0x8
a0005db6:	8fb9                	xor	a5,a5,a4
a0005db8:	c11c                	sw	a5,0(a0)
a0005dba:	8082                	ret

a0005dbc <utils_crc32_stream_results>:
a0005dbc:	4108                	lw	a0,0(a0)
a0005dbe:	fff54513          	not	a0,a0
a0005dc2:	8082                	ret

a0005dc4 <utils_bin2hex>:
a0005dc4:	a0008737          	lui	a4,0xa0008
a0005dc8:	4781                	li	a5,0
a0005dca:	d1870713          	addi	a4,a4,-744 # a0007d18 <__psram_limit+0xf7c07d18>
a0005dce:	00150813          	addi	a6,a0,1
a0005dd2:	00f61563          	bne	a2,a5,a0005ddc <utils_bin2hex+0x18>
a0005dd6:	02c5150b          	addsl	a0,a0,a2,1
a0005dda:	8082                	ret
a0005ddc:	80f5c68b          	lrbu	a3,a1,a5,0
a0005de0:	0046d893          	srli	a7,a3,0x4
a0005de4:	8117488b          	lrbu	a7,a4,a7,0
a0005de8:	8abd                	andi	a3,a3,15
a0005dea:	80d7468b          	lrbu	a3,a4,a3,0
a0005dee:	02f5588b          	srb	a7,a0,a5,1
a0005df2:	02f8568b          	srb	a3,a6,a5,1
a0005df6:	0785                	addi	a5,a5,1
a0005df8:	bfe9                	j	a0005dd2 <utils_bin2hex+0xe>

a0005dfa <qcc74x_gpio_init>:
a0005dfa:	1101                	addi	sp,sp,-32
a0005dfc:	c84a                	sw	s2,16(sp)
a0005dfe:	00452903          	lw	s2,4(a0)
a0005e02:	852e                	mv	a0,a1
a0005e04:	cc22                	sw	s0,24(sp)
a0005e06:	ca26                	sw	s1,20(sp)
a0005e08:	3c06340b          	extu	s0,a2,15,0
a0005e0c:	34c6348b          	extu	s1,a2,13,12
a0005e10:	c632                	sw	a2,12(sp)
a0005e12:	c42e                	sw	a1,8(sp)
a0005e14:	ce06                	sw	ra,28(sp)
a0005e16:	194010ef          	jal	ra,a0006faa <qcc74x_gpio_pad_check>
a0005e1a:	45a2                	lw	a1,8(sp)
a0005e1c:	47c1                	li	a5,16
a0005e1e:	4632                	lw	a2,12(sp)
a0005e20:	06f59463          	bne	a1,a5,a0005e88 <qcc74x_gpio_init+0x8e>
a0005e24:	2000f6b7          	lui	a3,0x2000f
a0005e28:	5e9c                	lw	a5,56(a3)
a0005e2a:	fff00737          	lui	a4,0xfff00
a0005e2e:	177d                	addi	a4,a4,-1
a0005e30:	8ff9                	and	a5,a5,a4
a0005e32:	de9c                	sw	a5,56(a3)
a0005e34:	08047793          	andi	a5,s0,128
a0005e38:	04b9158b          	addsl	a1,s2,a1,2
a0005e3c:	efa5                	bnez	a5,a0005eb4 <qcc74x_gpio_init+0xba>
a0005e3e:	10047793          	andi	a5,s0,256
a0005e42:	cfa1                	beqz	a5,a0005e9a <qcc74x_gpio_init+0xa0>
a0005e44:	004007b7          	lui	a5,0x400
a0005e48:	01f67713          	andi	a4,a2,31
a0005e4c:	0785                	addi	a5,a5,1
a0005e4e:	20067693          	andi	a3,a2,512
a0005e52:	c6ad                	beqz	a3,a0005ebc <qcc74x_gpio_init+0xc2>
a0005e54:	0107e793          	ori	a5,a5,16
a0005e58:	2cb6360b          	extu	a2,a2,11,11
a0005e5c:	c219                	beqz	a2,a0005e62 <qcc74x_gpio_init+0x68>
a0005e5e:	0027e793          	ori	a5,a5,2
a0005e62:	048a                	slli	s1,s1,0x2
a0005e64:	8cdd                	or	s1,s1,a5
a0005e66:	00871793          	slli	a5,a4,0x8
a0005e6a:	8fc5                	or	a5,a5,s1
a0005e6c:	40000737          	lui	a4,0x40000
a0005e70:	40f2                	lw	ra,28(sp)
a0005e72:	4462                	lw	s0,24(sp)
a0005e74:	8fd9                	or	a5,a5,a4
a0005e76:	6705                	lui	a4,0x1
a0005e78:	8c470713          	addi	a4,a4,-1852 # 8c4 <__RFTLV_SIZE_HOLE+0xc4>
a0005e7c:	40e5d78b          	srw	a5,a1,a4,0
a0005e80:	44d2                	lw	s1,20(sp)
a0005e82:	4942                	lw	s2,16(sp)
a0005e84:	6105                	addi	sp,sp,32
a0005e86:	8082                	ret
a0005e88:	47c5                	li	a5,17
a0005e8a:	faf595e3          	bne	a1,a5,a0005e34 <qcc74x_gpio_init+0x3a>
a0005e8e:	2000f6b7          	lui	a3,0x2000f
a0005e92:	5e9c                	lw	a5,56(a3)
a0005e94:	ffe00737          	lui	a4,0xffe00
a0005e98:	bf59                	j	a0005e2e <qcc74x_gpio_init+0x34>
a0005e9a:	02047713          	andi	a4,s0,32
a0005e9e:	004007b7          	lui	a5,0x400
a0005ea2:	c311                	beqz	a4,a0005ea6 <qcc74x_gpio_init+0xac>
a0005ea4:	0785                	addi	a5,a5,1
a0005ea6:	04047413          	andi	s0,s0,64
a0005eaa:	472d                	li	a4,11
a0005eac:	d04d                	beqz	s0,a0005e4e <qcc74x_gpio_init+0x54>
a0005eae:	0407e793          	ori	a5,a5,64
a0005eb2:	bf71                	j	a0005e4e <qcc74x_gpio_init+0x54>
a0005eb4:	4729                	li	a4,10
a0005eb6:	004007b7          	lui	a5,0x400
a0005eba:	bf51                	j	a0005e4e <qcc74x_gpio_init+0x54>
a0005ebc:	40067693          	andi	a3,a2,1024
a0005ec0:	dec1                	beqz	a3,a0005e58 <qcc74x_gpio_init+0x5e>
a0005ec2:	0207e793          	ori	a5,a5,32
a0005ec6:	bf49                	j	a0005e58 <qcc74x_gpio_init+0x5e>

a0005ec8 <qcc74x_gpio_uart_init>:
a0005ec8:	1101                	addi	sp,sp,-32
a0005eca:	cc22                	sw	s0,24(sp)
a0005ecc:	ca26                	sw	s1,20(sp)
a0005ece:	4140                	lw	s0,4(a0)
a0005ed0:	84aa                	mv	s1,a0
a0005ed2:	852e                	mv	a0,a1
a0005ed4:	c632                	sw	a2,12(sp)
a0005ed6:	c42e                	sw	a1,8(sp)
a0005ed8:	ce06                	sw	ra,28(sp)
a0005eda:	0d0010ef          	jal	ra,a0006faa <qcc74x_gpio_pad_check>
a0005ede:	45a2                	lw	a1,8(sp)
a0005ee0:	46b1                	li	a3,12
a0005ee2:	479d                	li	a5,7
a0005ee4:	02d5f6b3          	remu	a3,a1,a3
a0005ee8:	4632                	lw	a2,12(sp)
a0005eea:	0ad7e063          	bltu	a5,a3,a0005f8a <qcc74x_gpio_uart_init+0xc2>
a0005eee:	00269713          	slli	a4,a3,0x2
a0005ef2:	15442803          	lw	a6,340(s0)
a0005ef6:	47bd                	li	a5,15
a0005ef8:	00e797b3          	sll	a5,a5,a4
a0005efc:	fff7c793          	not	a5,a5
a0005f00:	0107f833          	and	a6,a5,a6
a0005f04:	00e617b3          	sll	a5,a2,a4
a0005f08:	0107e7b3          	or	a5,a5,a6
a0005f0c:	4701                	li	a4,0
a0005f0e:	48bd                	li	a7,15
a0005f10:	4321                	li	t1,8
a0005f12:	00271513          	slli	a0,a4,0x2
a0005f16:	00a89833          	sll	a6,a7,a0
a0005f1a:	00f87e33          	and	t3,a6,a5
a0005f1e:	00a61533          	sll	a0,a2,a0
a0005f22:	00ae1d63          	bne	t3,a0,a0005f3c <qcc74x_gpio_uart_init+0x74>
a0005f26:	0ff77513          	zext.b	a0,a4
a0005f2a:	00d50963          	beq	a0,a3,a0005f3c <qcc74x_gpio_uart_init+0x74>
a0005f2e:	01160763          	beq	a2,a7,a0005f3c <qcc74x_gpio_uart_init+0x74>
a0005f32:	fff84513          	not	a0,a6
a0005f36:	8fe9                	and	a5,a5,a0
a0005f38:	00f867b3          	or	a5,a6,a5
a0005f3c:	0705                	addi	a4,a4,1
a0005f3e:	fc671ae3          	bne	a4,t1,a0005f12 <qcc74x_gpio_uart_init+0x4a>
a0005f42:	15842703          	lw	a4,344(s0)
a0005f46:	4681                	li	a3,0
a0005f48:	483d                	li	a6,15
a0005f4a:	48c1                	li	a7,16
a0005f4c:	00d81533          	sll	a0,a6,a3
a0005f50:	00e57e33          	and	t3,a0,a4
a0005f54:	00d61333          	sll	t1,a2,a3
a0005f58:	006e1963          	bne	t3,t1,a0005f6a <qcc74x_gpio_uart_init+0xa2>
a0005f5c:	01060763          	beq	a2,a6,a0005f6a <qcc74x_gpio_uart_init+0xa2>
a0005f60:	fff54313          	not	t1,a0
a0005f64:	00e37733          	and	a4,t1,a4
a0005f68:	8f49                	or	a4,a4,a0
a0005f6a:	0691                	addi	a3,a3,4
a0005f6c:	ff1690e3          	bne	a3,a7,a0005f4c <qcc74x_gpio_uart_init+0x84>
a0005f70:	14f42a23          	sw	a5,340(s0)
a0005f74:	14e42c23          	sw	a4,344(s0)
a0005f78:	4462                	lw	s0,24(sp)
a0005f7a:	40f2                	lw	ra,28(sp)
a0005f7c:	8526                	mv	a0,s1
a0005f7e:	44d2                	lw	s1,20(sp)
a0005f80:	6609                	lui	a2,0x2
a0005f82:	b0760613          	addi	a2,a2,-1273 # 1b07 <HeapMinSize+0xb07>
a0005f86:	6105                	addi	sp,sp,32
a0005f88:	bd8d                	j	a0005dfa <qcc74x_gpio_init>
a0005f8a:	ff868713          	addi	a4,a3,-8 # 2000eff8 <remain_wifi_ram+0x1ffeeff8>
a0005f8e:	070a                	slli	a4,a4,0x2
a0005f90:	0ff77713          	zext.b	a4,a4
a0005f94:	15842803          	lw	a6,344(s0)
a0005f98:	47bd                	li	a5,15
a0005f9a:	00e797b3          	sll	a5,a5,a4
a0005f9e:	fff7c793          	not	a5,a5
a0005fa2:	0107f833          	and	a6,a5,a6
a0005fa6:	00e617b3          	sll	a5,a2,a4
a0005faa:	0107e7b3          	or	a5,a5,a6
a0005fae:	4701                	li	a4,0
a0005fb0:	48bd                	li	a7,15
a0005fb2:	4311                	li	t1,4
a0005fb4:	00271513          	slli	a0,a4,0x2
a0005fb8:	00a89833          	sll	a6,a7,a0
a0005fbc:	00f87e33          	and	t3,a6,a5
a0005fc0:	00a61533          	sll	a0,a2,a0
a0005fc4:	00ae1f63          	bne	t3,a0,a0005fe2 <qcc74x_gpio_uart_init+0x11a>
a0005fc8:	00870513          	addi	a0,a4,8 # ffe00008 <__psram_limit+0x57a00008>
a0005fcc:	0ff57513          	zext.b	a0,a0
a0005fd0:	00d50963          	beq	a0,a3,a0005fe2 <qcc74x_gpio_uart_init+0x11a>
a0005fd4:	01160763          	beq	a2,a7,a0005fe2 <qcc74x_gpio_uart_init+0x11a>
a0005fd8:	fff84513          	not	a0,a6
a0005fdc:	8fe9                	and	a5,a5,a0
a0005fde:	00f867b3          	or	a5,a6,a5
a0005fe2:	0705                	addi	a4,a4,1
a0005fe4:	fc6718e3          	bne	a4,t1,a0005fb4 <qcc74x_gpio_uart_init+0xec>
a0005fe8:	15442703          	lw	a4,340(s0)
a0005fec:	4681                	li	a3,0
a0005fee:	483d                	li	a6,15
a0005ff0:	02000893          	li	a7,32
a0005ff4:	00d81533          	sll	a0,a6,a3
a0005ff8:	00e57e33          	and	t3,a0,a4
a0005ffc:	00d61333          	sll	t1,a2,a3
a0006000:	006e1963          	bne	t3,t1,a0006012 <qcc74x_gpio_uart_init+0x14a>
a0006004:	01060763          	beq	a2,a6,a0006012 <qcc74x_gpio_uart_init+0x14a>
a0006008:	fff54313          	not	t1,a0
a000600c:	00e37733          	and	a4,t1,a4
a0006010:	8f49                	or	a4,a4,a0
a0006012:	0691                	addi	a3,a3,4
a0006014:	ff1690e3          	bne	a3,a7,a0005ff4 <qcc74x_gpio_uart_init+0x12c>
a0006018:	14f42c23          	sw	a5,344(s0)
a000601c:	14e42a23          	sw	a4,340(s0)
a0006020:	bfa1                	j	a0005f78 <qcc74x_gpio_uart_init+0xb0>

a0006022 <qcc74x_spi_init>:
a0006022:	1141                	addi	sp,sp,-16
a0006024:	c422                	sw	s0,8(sp)
a0006026:	c606                	sw	ra,12(sp)
a0006028:	c226                	sw	s1,4(sp)
a000602a:	200007b7          	lui	a5,0x20000
a000602e:	0045c703          	lbu	a4,4(a1)
a0006032:	5107a783          	lw	a5,1296(a5) # 20000510 <remain_wifi_ram+0x1ffe0510>
a0006036:	842e                	mv	s0,a1
a0006038:	ef59                	bnez	a4,a00060d6 <qcc74x_spi_init+0xb4>
a000603a:	6705                	lui	a4,0x1
a000603c:	8fd9                	or	a5,a5,a4
a000603e:	20000737          	lui	a4,0x20000
a0006042:	50f72823          	sw	a5,1296(a4) # 20000510 <remain_wifi_ram+0x1ffe0510>
a0006046:	00954583          	lbu	a1,9(a0)
a000604a:	4144                	lw	s1,4(a0)
a000604c:	4519                	li	a0,6
a000604e:	773000ef          	jal	ra,a0006fc0 <qcc74x_clk_get_peripheral_clock>
a0006052:	00155713          	srli	a4,a0,0x1
a0006056:	46a9                	li	a3,10
a0006058:	02d70733          	mul	a4,a4,a3
a000605c:	401c                	lw	a5,0(s0)
a000605e:	4625                	li	a2,9
a0006060:	02f75733          	divu	a4,a4,a5
a0006064:	4781                	li	a5,0
a0006066:	0715                	addi	a4,a4,5
a0006068:	00e67563          	bgeu	a2,a4,a0006072 <qcc74x_spi_init+0x50>
a000606c:	02d757b3          	divu	a5,a4,a3
a0006070:	17fd                	addi	a5,a5,-1
a0006072:	0ff00713          	li	a4,255
a0006076:	00f77463          	bgeu	a4,a5,a000607e <qcc74x_spi_init+0x5c>
a000607a:	0ff00793          	li	a5,255
a000607e:	01879693          	slli	a3,a5,0x18
a0006082:	01079713          	slli	a4,a5,0x10
a0006086:	8f55                	or	a4,a4,a3
a0006088:	8f5d                	or	a4,a4,a5
a000608a:	00879693          	slli	a3,a5,0x8
a000608e:	8f55                	or	a4,a4,a3
a0006090:	c898                	sw	a4,16(s1)
a0006092:	48d8                	lw	a4,20(s1)
a0006094:	f0077713          	andi	a4,a4,-256
a0006098:	8fd9                	or	a5,a5,a4
a000609a:	c8dc                	sw	a5,20(s1)
a000609c:	00844783          	lbu	a5,8(s0)
a00060a0:	4098                	lw	a4,0(s1)
a00060a2:	ef95                	bnez	a5,a00060de <qcc74x_spi_init+0xbc>
a00060a4:	77c1                	lui	a5,0xffff0
a00060a6:	47f78793          	addi	a5,a5,1151 # ffff047f <__psram_limit+0x57bf047f>
a00060aa:	8f7d                	and	a4,a4,a5
a00060ac:	00744603          	lbu	a2,7(s0)
a00060b0:	4685                	li	a3,1
a00060b2:	fbf77793          	andi	a5,a4,-65
a00060b6:	00d61463          	bne	a2,a3,a00060be <qcc74x_spi_init+0x9c>
a00060ba:	04076793          	ori	a5,a4,64
a00060be:	00544703          	lbu	a4,5(s0)
a00060c2:	4689                	li	a3,2
a00060c4:	08d70963          	beq	a4,a3,a0006156 <qcc74x_spi_init+0x134>
a00060c8:	02e6e263          	bltu	a3,a4,a00060ec <qcc74x_spi_init+0xca>
a00060cc:	e351                	bnez	a4,a0006150 <qcc74x_spi_init+0x12e>
a00060ce:	9bbd                	andi	a5,a5,-17
a00060d0:	0207e793          	ori	a5,a5,32
a00060d4:	a839                	j	a00060f2 <qcc74x_spi_init+0xd0>
a00060d6:	777d                	lui	a4,0xfffff
a00060d8:	177d                	addi	a4,a4,-1
a00060da:	8ff9                	and	a5,a5,a4
a00060dc:	b78d                	j	a000603e <qcc74x_spi_init+0x1c>
a00060de:	77c1                	lui	a5,0xffff0
a00060e0:	4ff78793          	addi	a5,a5,1279 # ffff04ff <__psram_limit+0x57bf04ff>
a00060e4:	8f7d                	and	a4,a4,a5
a00060e6:	08076713          	ori	a4,a4,128
a00060ea:	b7c9                	j	a00060ac <qcc74x_spi_init+0x8a>
a00060ec:	468d                	li	a3,3
a00060ee:	06d70763          	beq	a4,a3,a000615c <qcc74x_spi_init+0x13a>
a00060f2:	00644703          	lbu	a4,6(s0)
a00060f6:	9bc1                	andi	a5,a5,-16
a00060f8:	08048693          	addi	a3,s1,128
a00060fc:	177d                	addi	a4,a4,-1
a00060fe:	070a                	slli	a4,a4,0x2
a0006100:	8fd9                	or	a5,a5,a4
a0006102:	c09c                	sw	a5,0(s1)
a0006104:	429c                	lw	a5,0(a3)
a0006106:	e0e10637          	lui	a2,0xe0e10
a000610a:	167d                	addi	a2,a2,-1
a000610c:	9bf1                	andi	a5,a5,-4
a000610e:	00c7e793          	ori	a5,a5,12
a0006112:	c29c                	sw	a5,0(a3)
a0006114:	42dc                	lw	a5,4(a3)
a0006116:	001f0737          	lui	a4,0x1f0
a000611a:	1f0005b7          	lui	a1,0x1f000
a000611e:	8e7d                	and	a2,a2,a5
a0006120:	00944783          	lbu	a5,9(s0)
a0006124:	07c2                	slli	a5,a5,0x10
a0006126:	8ff9                	and	a5,a5,a4
a0006128:	00a44703          	lbu	a4,10(s0)
a000612c:	0762                	slli	a4,a4,0x18
a000612e:	8f6d                	and	a4,a4,a1
a0006130:	8fd9                	or	a5,a5,a4
a0006132:	8fd1                	or	a5,a5,a2
a0006134:	c2dc                	sw	a5,4(a3)
a0006136:	00444703          	lbu	a4,4(s0)
a000613a:	409c                	lw	a5,0(s1)
a000613c:	e70d                	bnez	a4,a0006166 <qcc74x_spi_init+0x144>
a000613e:	9bf5                	andi	a5,a5,-3
a0006140:	0017e793          	ori	a5,a5,1
a0006144:	40b2                	lw	ra,12(sp)
a0006146:	4422                	lw	s0,8(sp)
a0006148:	c09c                	sw	a5,0(s1)
a000614a:	4492                	lw	s1,4(sp)
a000614c:	0141                	addi	sp,sp,16
a000614e:	8082                	ret
a0006150:	fcf7f793          	andi	a5,a5,-49
a0006154:	bf79                	j	a00060f2 <qcc74x_spi_init+0xd0>
a0006156:	0307e793          	ori	a5,a5,48
a000615a:	bf61                	j	a00060f2 <qcc74x_spi_init+0xd0>
a000615c:	fdf7f793          	andi	a5,a5,-33
a0006160:	0107e793          	ori	a5,a5,16
a0006164:	b779                	j	a00060f2 <qcc74x_spi_init+0xd0>
a0006166:	9bf9                	andi	a5,a5,-2
a0006168:	0027e793          	ori	a5,a5,2
a000616c:	bfe1                	j	a0006144 <qcc74x_spi_init+0x122>

a000616e <qcc74x_uart_init>:
a000616e:	1141                	addi	sp,sp,-16
a0006170:	c422                	sw	s0,8(sp)
a0006172:	c226                	sw	s1,4(sp)
a0006174:	c606                	sw	ra,12(sp)
a0006176:	84ae                	mv	s1,a1
a0006178:	00954583          	lbu	a1,9(a0)
a000617c:	4140                	lw	s0,4(a0)
a000617e:	4515                	li	a0,5
a0006180:	641000ef          	jal	ra,a0006fc0 <qcc74x_clk_get_peripheral_clock>
a0006184:	4729                	li	a4,10
a0006186:	02e507b3          	mul	a5,a0,a4
a000618a:	4088                	lw	a0,0(s1)
a000618c:	4014                	lw	a3,0(s0)
a000618e:	4605                	li	a2,1
a0006190:	9af9                	andi	a3,a3,-2
a0006192:	02a7d7b3          	divu	a5,a5,a0
a0006196:	0795                	addi	a5,a5,5
a0006198:	02e7d7b3          	divu	a5,a5,a4
a000619c:	4058                	lw	a4,4(s0)
a000619e:	c014                	sw	a3,0(s0)
a00061a0:	9b79                	andi	a4,a4,-2
a00061a2:	c058                	sw	a4,4(s0)
a00061a4:	17fd                	addi	a5,a5,-1
a00061a6:	0ef797f7          	pkbb16	a5,a5,a5
a00061aa:	c41c                	sw	a5,8(s0)
a00061ac:	0074c683          	lbu	a3,7(s1)
a00061b0:	401c                	lw	a5,0(s0)
a00061b2:	4058                	lw	a4,4(s0)
a00061b4:	0ac68c63          	beq	a3,a2,a000626c <qcc74x_uart_init+0xfe>
a00061b8:	4609                	li	a2,2
a00061ba:	0ac68e63          	beq	a3,a2,a0006276 <qcc74x_uart_init+0x108>
a00061be:	e299                	bnez	a3,a00061c4 <qcc74x_uart_init+0x56>
a00061c0:	9bbd                	andi	a5,a5,-17
a00061c2:	9b3d                	andi	a4,a4,-17
a00061c4:	0054c683          	lbu	a3,5(s1)
a00061c8:	8ff7f793          	andi	a5,a5,-1793
a00061cc:	8ff77713          	andi	a4,a4,-1793
a00061d0:	0691                	addi	a3,a3,4
a00061d2:	06a2                	slli	a3,a3,0x8
a00061d4:	8fd5                	or	a5,a5,a3
a00061d6:	8f55                	or	a4,a4,a3
a00061d8:	76f9                	lui	a3,0xffffe
a00061da:	7ff68693          	addi	a3,a3,2047 # ffffe7ff <__psram_limit+0x57bfe7ff>
a00061de:	8ff5                	and	a5,a5,a3
a00061e0:	0064c683          	lbu	a3,6(s1)
a00061e4:	06ae                	slli	a3,a3,0xb
a00061e6:	8fd5                	or	a5,a5,a3
a00061e8:	0094c683          	lbu	a3,9(s1)
a00061ec:	ffd7f613          	andi	a2,a5,-3
a00061f0:	8a89                	andi	a3,a3,2
a00061f2:	c299                	beqz	a3,a00061f8 <qcc74x_uart_init+0x8a>
a00061f4:	0027e613          	ori	a2,a5,2
a00061f8:	76fd                	lui	a3,0xfffff
a00061fa:	7ff68693          	addi	a3,a3,2047 # fffff7ff <__psram_limit+0x57bff7ff>
a00061fe:	c010                	sw	a2,0(s0)
a0006200:	8f75                	and	a4,a4,a3
a0006202:	c058                	sw	a4,4(s0)
a0006204:	4c5c                	lw	a5,28(s0)
a0006206:	08040693          	addi	a3,s0,128
a000620a:	e0e10637          	lui	a2,0xe0e10
a000620e:	9bed                	andi	a5,a5,-5
a0006210:	cc5c                	sw	a5,28(s0)
a0006212:	445c                	lw	a5,12(s0)
a0006214:	167d                	addi	a2,a2,-1
a0006216:	001f0737          	lui	a4,0x1f0
a000621a:	9bf9                	andi	a5,a5,-2
a000621c:	c45c                	sw	a5,12(s0)
a000621e:	401c                	lw	a5,0(s0)
a0006220:	1f0005b7          	lui	a1,0x1f000
a0006224:	40b2                	lw	ra,12(sp)
a0006226:	0047e793          	ori	a5,a5,4
a000622a:	c01c                	sw	a5,0(s0)
a000622c:	42dc                	lw	a5,4(a3)
a000622e:	8e7d                	and	a2,a2,a5
a0006230:	00a4c783          	lbu	a5,10(s1)
a0006234:	07c2                	slli	a5,a5,0x10
a0006236:	8ff9                	and	a5,a5,a4
a0006238:	00b4c703          	lbu	a4,11(s1)
a000623c:	4492                	lw	s1,4(sp)
a000623e:	0762                	slli	a4,a4,0x18
a0006240:	8f6d                	and	a4,a4,a1
a0006242:	8fd9                	or	a5,a5,a4
a0006244:	8fd1                	or	a5,a5,a2
a0006246:	c2dc                	sw	a5,4(a3)
a0006248:	429c                	lw	a5,0(a3)
a000624a:	9bf1                	andi	a5,a5,-4
a000624c:	00c7e793          	ori	a5,a5,12
a0006250:	c29c                	sw	a5,0(a3)
a0006252:	57fd                	li	a5,-1
a0006254:	d05c                	sw	a5,36(s0)
a0006256:	4018                	lw	a4,0(s0)
a0006258:	405c                	lw	a5,4(s0)
a000625a:	00176713          	ori	a4,a4,1
a000625e:	c018                	sw	a4,0(s0)
a0006260:	0017e793          	ori	a5,a5,1
a0006264:	c05c                	sw	a5,4(s0)
a0006266:	4422                	lw	s0,8(sp)
a0006268:	0141                	addi	sp,sp,16
a000626a:	8082                	ret
a000626c:	0307e793          	ori	a5,a5,48
a0006270:	03076713          	ori	a4,a4,48
a0006274:	bf81                	j	a00061c4 <qcc74x_uart_init+0x56>
a0006276:	fdf7f793          	andi	a5,a5,-33
a000627a:	fdf77713          	andi	a4,a4,-33
a000627e:	0107e793          	ori	a5,a5,16
a0006282:	01076713          	ori	a4,a4,16
a0006286:	bf3d                	j	a00061c4 <qcc74x_uart_init+0x56>

a0006288 <flash_get_clock_delay.constprop.0.isra.0>:
a0006288:	2000b7b7          	lui	a5,0x2000b
a000628c:	4394                	lw	a3,0(a5)
a000628e:	4781                	li	a5,0
a0006290:	2cb6b70b          	extu	a4,a3,11,11
a0006294:	c701                	beqz	a4,a000629c <flash_get_clock_delay.constprop.0.isra.0+0x14>
a0006296:	2886b78b          	extu	a5,a3,10,8
a000629a:	0785                	addi	a5,a5,1
a000629c:	2000b737          	lui	a4,0x2000b
a00062a0:	5b58                	lw	a4,52(a4)
a00062a2:	85c18613          	addi	a2,gp,-1956 # 62fc1b04 <g_flash_cfg>
a00062a6:	00c75593          	srli	a1,a4,0xc
a00062aa:	0305f593          	andi	a1,a1,48
a00062ae:	8fcd                	or	a5,a5,a1
a00062b0:	00f60123          	sb	a5,2(a2) # e0e10002 <__psram_limit+0x38a10002>
a00062b4:	0016d793          	srli	a5,a3,0x1
a00062b8:	8b89                	andi	a5,a5,2
a00062ba:	1046b68b          	extu	a3,a3,4,4
a00062be:	8fd5                	or	a5,a5,a3
a00062c0:	00675693          	srli	a3,a4,0x6
a00062c4:	0716                	slli	a4,a4,0x5
a00062c6:	8ab1                	andi	a3,a3,12
a00062c8:	06077713          	andi	a4,a4,96
a00062cc:	8f55                	or	a4,a4,a3
a00062ce:	8fd9                	or	a5,a5,a4
a00062d0:	00f601a3          	sb	a5,3(a2)
a00062d4:	8082                	ret

a00062d6 <irq_unexpected_isr>:
a00062d6:	85aa                	mv	a1,a0
a00062d8:	a0008537          	lui	a0,0xa0008
a00062dc:	d2c50513          	addi	a0,a0,-724 # a0007d2c <__psram_limit+0xf7c07d2c>
a00062e0:	d0aff06f          	j	a00057ea <printf>

a00062e4 <qcc74x_irq_initialize>:
a00062e4:	62fc37b7          	lui	a5,0x62fc3
a00062e8:	26078793          	addi	a5,a5,608 # 62fc3260 <g_irqvector>
a00062ec:	a0006737          	lui	a4,0xa0006
a00062f0:	28078693          	addi	a3,a5,640
a00062f4:	2d670713          	addi	a4,a4,726 # a00062d6 <__psram_limit+0xf7c062d6>
a00062f8:	c398                	sw	a4,0(a5)
a00062fa:	0007a223          	sw	zero,4(a5)
a00062fe:	07a1                	addi	a5,a5,8
a0006300:	fed79ce3          	bne	a5,a3,a00062f8 <qcc74x_irq_initialize+0x14>
a0006304:	8082                	ret

a0006306 <qcc74x_device_get_by_name>:
a0006306:	1101                	addi	sp,sp,-32
a0006308:	cc22                	sw	s0,24(sp)
a000630a:	ca26                	sw	s1,20(sp)
a000630c:	c64e                	sw	s3,12(sp)
a000630e:	c452                	sw	s4,8(sp)
a0006310:	ce06                	sw	ra,28(sp)
a0006312:	c84a                	sw	s2,16(sp)
a0006314:	8a2a                	mv	s4,a0
a0006316:	4481                	li	s1,0
a0006318:	8b018413          	addi	s0,gp,-1872 # 62fc1b58 <qcc743_device_table>
a000631c:	02900993          	li	s3,41
a0006320:	00449913          	slli	s2,s1,0x4
a0006324:	4124450b          	lrw	a0,s0,s2,0
a0006328:	85d2                	mv	a1,s4
a000632a:	bd1fd0ef          	jal	ra,a0003efa <strcmp>
a000632e:	e919                	bnez	a0,a0006344 <qcc74x_device_get_by_name+0x3e>
a0006330:	01240533          	add	a0,s0,s2
a0006334:	40f2                	lw	ra,28(sp)
a0006336:	4462                	lw	s0,24(sp)
a0006338:	44d2                	lw	s1,20(sp)
a000633a:	4942                	lw	s2,16(sp)
a000633c:	49b2                	lw	s3,12(sp)
a000633e:	4a22                	lw	s4,8(sp)
a0006340:	6105                	addi	sp,sp,32
a0006342:	8082                	ret
a0006344:	0485                	addi	s1,s1,1
a0006346:	fd349de3          	bne	s1,s3,a0006320 <qcc74x_device_get_by_name+0x1a>
a000634a:	4501                	li	a0,0
a000634c:	b7e5                	j	a0006334 <qcc74x_device_get_by_name+0x2e>
	...

a0006380 <default_interrupt_handler>:
a0006380:	715d                	addi	sp,sp,-80
a0006382:	c216                	sw	t0,4(sp)
a0006384:	c41a                	sw	t1,8(sp)
a0006386:	341022f3          	csrr	t0,mepc
a000638a:	34202373          	csrr	t1,mcause
a000638e:	c09a                	sw	t1,64(sp)
a0006390:	c296                	sw	t0,68(sp)
a0006392:	340022f3          	csrr	t0,mscratch
a0006396:	c496                	sw	t0,72(sp)
a0006398:	c006                	sw	ra,0(sp)
a000639a:	c61e                	sw	t2,12(sp)
a000639c:	c82a                	sw	a0,16(sp)
a000639e:	ca2e                	sw	a1,20(sp)
a00063a0:	cc32                	sw	a2,24(sp)
a00063a2:	ce36                	sw	a3,28(sp)
a00063a4:	d03a                	sw	a4,32(sp)
a00063a6:	d23e                	sw	a5,36(sp)
a00063a8:	d442                	sw	a6,40(sp)
a00063aa:	d646                	sw	a7,44(sp)
a00063ac:	d872                	sw	t3,48(sp)
a00063ae:	da76                	sw	t4,52(sp)
a00063b0:	dc7a                	sw	t5,56(sp)
a00063b2:	de7e                	sw	t6,60(sp)
a00063b4:	30046073          	csrsi	mstatus,8
a00063b8:	711d                	addi	sp,sp,-96
a00063ba:	30002373          	csrr	t1,mstatus
a00063be:	ca9a                	sw	t1,84(sp)
a00063c0:	00d35393          	srli	t2,t1,0xd
a00063c4:	0033f393          	andi	t2,t2,3
a00063c8:	428d                	li	t0,3
a00063ca:	02539663          	bne	t2,t0,a00063f6 <.F_RegNotSave1>
a00063ce:	e002                	fsw	ft0,0(sp)
a00063d0:	e206                	fsw	ft1,4(sp)
a00063d2:	e40a                	fsw	ft2,8(sp)
a00063d4:	e60e                	fsw	ft3,12(sp)
a00063d6:	e812                	fsw	ft4,16(sp)
a00063d8:	ea16                	fsw	ft5,20(sp)
a00063da:	ec1a                	fsw	ft6,24(sp)
a00063dc:	ee1e                	fsw	ft7,28(sp)
a00063de:	f02a                	fsw	fa0,32(sp)
a00063e0:	f22e                	fsw	fa1,36(sp)
a00063e2:	f432                	fsw	fa2,40(sp)
a00063e4:	f636                	fsw	fa3,44(sp)
a00063e6:	f83a                	fsw	fa4,48(sp)
a00063e8:	fa3e                	fsw	fa5,52(sp)
a00063ea:	fc42                	fsw	fa6,56(sp)
a00063ec:	fe46                	fsw	fa7,60(sp)
a00063ee:	e0f2                	fsw	ft8,64(sp)
a00063f0:	e2f6                	fsw	ft9,68(sp)
a00063f2:	e4fa                	fsw	ft10,72(sp)
a00063f4:	e6fe                	fsw	ft11,76(sp)

a00063f6 <.F_RegNotSave1>:
a00063f6:	34202573          	csrr	a0,mcause
a00063fa:	3ff57313          	andi	t1,a0,1023
a00063fe:	00000397          	auipc	t2,0x0
a0006402:	5a238393          	addi	t2,t2,1442 # a00069a0 <interrupt_entry>
a0006406:	9382                	jalr	t2
a0006408:	4356                	lw	t1,84(sp)
a000640a:	00d35393          	srli	t2,t1,0xd
a000640e:	0033f393          	andi	t2,t2,3
a0006412:	428d                	li	t0,3
a0006414:	02539663          	bne	t2,t0,a0006440 <.F_RegNotLoad>
a0006418:	6002                	flw	ft0,0(sp)
a000641a:	6092                	flw	ft1,4(sp)
a000641c:	6122                	flw	ft2,8(sp)
a000641e:	61b2                	flw	ft3,12(sp)
a0006420:	6242                	flw	ft4,16(sp)
a0006422:	62d2                	flw	ft5,20(sp)
a0006424:	6362                	flw	ft6,24(sp)
a0006426:	63f2                	flw	ft7,28(sp)
a0006428:	7502                	flw	fa0,32(sp)
a000642a:	7592                	flw	fa1,36(sp)
a000642c:	7622                	flw	fa2,40(sp)
a000642e:	76b2                	flw	fa3,44(sp)
a0006430:	7742                	flw	fa4,48(sp)
a0006432:	77d2                	flw	fa5,52(sp)
a0006434:	7862                	flw	fa6,56(sp)
a0006436:	78f2                	flw	fa7,60(sp)
a0006438:	6e06                	flw	ft8,64(sp)
a000643a:	6e96                	flw	ft9,68(sp)
a000643c:	6f26                	flw	ft10,72(sp)
a000643e:	6fb6                	flw	ft11,76(sp)

a0006440 <.F_RegNotLoad>:
a0006440:	6125                	addi	sp,sp,96
a0006442:	30047073          	csrci	mstatus,8
a0006446:	4296                	lw	t0,68(sp)
a0006448:	34129073          	csrw	mepc,t0
a000644c:	4286                	lw	t0,64(sp)
a000644e:	34229073          	csrw	mcause,t0
a0006452:	42a6                	lw	t0,72(sp)
a0006454:	34029073          	csrw	mscratch,t0
a0006458:	4082                	lw	ra,0(sp)
a000645a:	4292                	lw	t0,4(sp)
a000645c:	4322                	lw	t1,8(sp)
a000645e:	43b2                	lw	t2,12(sp)
a0006460:	4542                	lw	a0,16(sp)
a0006462:	45d2                	lw	a1,20(sp)
a0006464:	4662                	lw	a2,24(sp)
a0006466:	46f2                	lw	a3,28(sp)
a0006468:	5702                	lw	a4,32(sp)
a000646a:	5792                	lw	a5,36(sp)
a000646c:	5822                	lw	a6,40(sp)
a000646e:	58b2                	lw	a7,44(sp)
a0006470:	5e42                	lw	t3,48(sp)
a0006472:	5ed2                	lw	t4,52(sp)
a0006474:	5f62                	lw	t5,56(sp)
a0006476:	5ff2                	lw	t6,60(sp)
a0006478:	6161                	addi	sp,sp,80
a000647a:	8082                	ret
	...

a00064c0 <trap>:
a00064c0:	fe512e23          	sw	t0,-4(sp)
a00064c4:	342022f3          	csrr	t0,mcause
a00064c8:	0e02ca63          	bltz	t0,a00065bc <trap+0xfc>
a00064cc:	c2fbd297          	auipc	t0,0xc2fbd
a00064d0:	d9428293          	addi	t0,t0,-620 # 62fc3260 <g_irqvector>
a00064d4:	ef828293          	addi	t0,t0,-264
a00064d8:	0012a223          	sw	ra,4(t0)
a00064dc:	0022a423          	sw	sp,8(t0)
a00064e0:	0032a623          	sw	gp,12(t0)
a00064e4:	0042a823          	sw	tp,16(t0)
a00064e8:	0062ac23          	sw	t1,24(t0)
a00064ec:	0072ae23          	sw	t2,28(t0)
a00064f0:	0282a023          	sw	s0,32(t0)
a00064f4:	0292a223          	sw	s1,36(t0)
a00064f8:	02a2a423          	sw	a0,40(t0)
a00064fc:	02b2a623          	sw	a1,44(t0)
a0006500:	02c2a823          	sw	a2,48(t0)
a0006504:	02d2aa23          	sw	a3,52(t0)
a0006508:	02e2ac23          	sw	a4,56(t0)
a000650c:	02f2ae23          	sw	a5,60(t0)
a0006510:	0502a023          	sw	a6,64(t0)
a0006514:	0512a223          	sw	a7,68(t0)
a0006518:	0522a423          	sw	s2,72(t0)
a000651c:	0532a623          	sw	s3,76(t0)
a0006520:	0542a823          	sw	s4,80(t0)
a0006524:	0552aa23          	sw	s5,84(t0)
a0006528:	0562ac23          	sw	s6,88(t0)
a000652c:	0572ae23          	sw	s7,92(t0)
a0006530:	0782a023          	sw	s8,96(t0)
a0006534:	0792a223          	sw	s9,100(t0)
a0006538:	07a2a423          	sw	s10,104(t0)
a000653c:	07b2a623          	sw	s11,108(t0)
a0006540:	07c2a823          	sw	t3,112(t0)
a0006544:	07d2aa23          	sw	t4,116(t0)
a0006548:	07e2ac23          	sw	t5,120(t0)
a000654c:	07f2ae23          	sw	t6,124(t0)
a0006550:	34102573          	csrr	a0,mepc
a0006554:	00a2a023          	sw	a0,0(t0)
a0006558:	30002573          	csrr	a0,mstatus
a000655c:	08a2a023          	sw	a0,128(t0)
a0006560:	8516                	mv	a0,t0
a0006562:	ffc12283          	lw	t0,-4(sp)
a0006566:	812a                	mv	sp,a0
a0006568:	ca16                	sw	t0,20(sp)
a000656a:	396000ef          	jal	ra,a0006900 <exception_entry>
a000656e:	428a                	lw	t0,128(sp)
a0006570:	30029073          	csrw	mstatus,t0
a0006574:	4282                	lw	t0,0(sp)
a0006576:	34129073          	csrw	mepc,t0
a000657a:	5ff6                	lw	t6,124(sp)
a000657c:	5f66                	lw	t5,120(sp)
a000657e:	5ed6                	lw	t4,116(sp)
a0006580:	5e46                	lw	t3,112(sp)
a0006582:	5db6                	lw	s11,108(sp)
a0006584:	5d26                	lw	s10,104(sp)
a0006586:	5c96                	lw	s9,100(sp)
a0006588:	5c06                	lw	s8,96(sp)
a000658a:	4bf6                	lw	s7,92(sp)
a000658c:	4b66                	lw	s6,88(sp)
a000658e:	4ad6                	lw	s5,84(sp)
a0006590:	4a46                	lw	s4,80(sp)
a0006592:	49b6                	lw	s3,76(sp)
a0006594:	4926                	lw	s2,72(sp)
a0006596:	4896                	lw	a7,68(sp)
a0006598:	4806                	lw	a6,64(sp)
a000659a:	57f2                	lw	a5,60(sp)
a000659c:	5762                	lw	a4,56(sp)
a000659e:	56d2                	lw	a3,52(sp)
a00065a0:	5642                	lw	a2,48(sp)
a00065a2:	55b2                	lw	a1,44(sp)
a00065a4:	5522                	lw	a0,40(sp)
a00065a6:	5492                	lw	s1,36(sp)
a00065a8:	5402                	lw	s0,32(sp)
a00065aa:	43f2                	lw	t2,28(sp)
a00065ac:	4362                	lw	t1,24(sp)
a00065ae:	42d2                	lw	t0,20(sp)
a00065b0:	4242                	lw	tp,16(sp)
a00065b2:	41b2                	lw	gp,12(sp)
a00065b4:	4092                	lw	ra,4(sp)
a00065b6:	4122                	lw	sp,8(sp)
a00065b8:	30200073          	mret
a00065bc:	ffc12283          	lw	t0,-4(sp)
a00065c0:	1141                	addi	sp,sp,-16
a00065c2:	c006                	sw	ra,0(sp)
a00065c4:	3b75                	jal	a0006380 <default_interrupt_handler>
a00065c6:	4082                	lw	ra,0(sp)
a00065c8:	0141                	addi	sp,sp,16
a00065ca:	30200073          	mret
	...

a00065fc <start_load>:
a00065fc:	62fc07b7          	lui	a5,0x62fc0
a0006600:	a0008737          	lui	a4,0xa0008
a0006604:	62fc26b7          	lui	a3,0x62fc2
a0006608:	40078793          	addi	a5,a5,1024 # 62fc0400 <arch_memcpy>
a000660c:	65070713          	addi	a4,a4,1616 # a0008650 <__psram_limit+0xf7c08650>
a0006610:	aa868693          	addi	a3,a3,-1368 # 62fc1aa8 <flash1_size>
a0006614:	08d7ed63          	bltu	a5,a3,a00066ae <start_load+0xb2>
a0006618:	62fc27b7          	lui	a5,0x62fc2
a000661c:	a000a737          	lui	a4,0xa000a
a0006620:	62fc26b7          	lui	a3,0x62fc2
a0006624:	aa878793          	addi	a5,a5,-1368 # 62fc1aa8 <flash1_size>
a0006628:	cf870713          	addi	a4,a4,-776 # a0009cf8 <__psram_limit+0xf7c09cf8>
a000662c:	aa868693          	addi	a3,a3,-1368 # 62fc1aa8 <flash1_size>
a0006630:	08d7e463          	bltu	a5,a3,a00066b8 <start_load+0xbc>
a0006634:	62fc27b7          	lui	a5,0x62fc2
a0006638:	a000a737          	lui	a4,0xa000a
a000663c:	aa878793          	addi	a5,a5,-1368 # 62fc1aa8 <flash1_size>
a0006640:	cf870713          	addi	a4,a4,-776 # a0009cf8 <__psram_limit+0xf7c09cf8>
a0006644:	b4018693          	addi	a3,gp,-1216 # 62fc1de8 <__StackLimit>
a0006648:	06d7ed63          	bltu	a5,a3,a00066c2 <start_load+0xc6>
a000664c:	a80007b7          	lui	a5,0xa8000
a0006650:	a000a737          	lui	a4,0xa000a
a0006654:	a80006b7          	lui	a3,0xa8000
a0006658:	00078793          	mv	a5,a5
a000665c:	03870713          	addi	a4,a4,56 # a000a038 <__psram_limit+0xf7c0a038>
a0006660:	00068693          	mv	a3,a3
a0006664:	06d7e463          	bltu	a5,a3,a00066cc <start_load+0xd0>
a0006668:	22fc07b7          	lui	a5,0x22fc0
a000666c:	a0008737          	lui	a4,0xa0008
a0006670:	22fc06b7          	lui	a3,0x22fc0
a0006674:	40078793          	addi	a5,a5,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a0006678:	65070713          	addi	a4,a4,1616 # a0008650 <__psram_limit+0xf7c08650>
a000667c:	40068693          	addi	a3,a3,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a0006680:	04d7eb63          	bltu	a5,a3,a00066d6 <start_load+0xda>
a0006684:	62fc37b7          	lui	a5,0x62fc3
a0006688:	62fc3737          	lui	a4,0x62fc3
a000668c:	df078793          	addi	a5,a5,-528 # 62fc2df0 <gpio>
a0006690:	4e470713          	addi	a4,a4,1252 # 62fc34e4 <__HeapBase>
a0006694:	04e7e663          	bltu	a5,a4,a00066e0 <start_load+0xe4>
a0006698:	230307b7          	lui	a5,0x23030
a000669c:	23030737          	lui	a4,0x23030
a00066a0:	00078793          	mv	a5,a5
a00066a4:	00070713          	mv	a4,a4
a00066a8:	02e7ef63          	bltu	a5,a4,a00066e6 <start_load+0xea>
a00066ac:	8082                	ret
a00066ae:	5847460b          	lwia	a2,(a4),4,0
a00066b2:	5847d60b          	swia	a2,(a5),4,0
a00066b6:	bfb9                	j	a0006614 <start_load+0x18>
a00066b8:	5847460b          	lwia	a2,(a4),4,0
a00066bc:	5847d60b          	swia	a2,(a5),4,0
a00066c0:	bf85                	j	a0006630 <start_load+0x34>
a00066c2:	5847460b          	lwia	a2,(a4),4,0
a00066c6:	5847d60b          	swia	a2,(a5),4,0
a00066ca:	bfbd                	j	a0006648 <start_load+0x4c>
a00066cc:	5847460b          	lwia	a2,(a4),4,0
a00066d0:	5847d60b          	swia	a2,(a5),4,0
a00066d4:	bf41                	j	a0006664 <start_load+0x68>
a00066d6:	5847460b          	lwia	a2,(a4),4,0
a00066da:	5847d60b          	swia	a2,(a5),4,0
a00066de:	b74d                	j	a0006680 <start_load+0x84>
a00066e0:	5847d00b          	swia	zero,(a5),4,0
a00066e4:	bf45                	j	a0006694 <start_load+0x98>
a00066e6:	5847d00b          	swia	zero,(a5),4,0
a00066ea:	bf7d                	j	a00066a8 <start_load+0xac>

a00066ec <System_BOD_Init>:
a00066ec:	1101                	addi	sp,sp,-32
a00066ee:	010707b7          	lui	a5,0x1070
a00066f2:	0785                	addi	a5,a5,1
a00066f4:	0068                	addi	a0,sp,12
a00066f6:	ce06                	sw	ra,28(sp)
a00066f8:	c63e                	sw	a5,12(sp)
a00066fa:	299d                	jal	a0006b70 <HBN_Set_BOD_Cfg>
a00066fc:	40f2                	lw	ra,28(sp)
a00066fe:	6105                	addi	sp,sp,32
a0006700:	8082                	ret

a0006702 <SystemInit>:
a0006702:	2000e7b7          	lui	a5,0x2000e
a0006706:	02000713          	li	a4,32
a000670a:	50e7a023          	sw	a4,1280(a5) # 2000e500 <remain_wifi_ram+0x1ffee500>
a000670e:	5007a223          	sw	zero,1284(a5)
a0006712:	200017b7          	lui	a5,0x20001
a0006716:	9687a703          	lw	a4,-1688(a5) # 20000968 <remain_wifi_ram+0x1ffe0968>
a000671a:	1141                	addi	sp,sp,-16
a000671c:	8b05                	andi	a4,a4,1
a000671e:	cf39                	beqz	a4,a000677c <SystemInit+0x7a>
a0006720:	96c7a703          	lw	a4,-1684(a5)
a0006724:	8b05                	andi	a4,a4,1
a0006726:	cb39                	beqz	a4,a000677c <SystemInit+0x7a>
a0006728:	9707a703          	lw	a4,-1680(a5)
a000672c:	8b05                	andi	a4,a4,1
a000672e:	c739                	beqz	a4,a000677c <SystemInit+0x7a>
a0006730:	9747a703          	lw	a4,-1676(a5)
a0006734:	8b05                	andi	a4,a4,1
a0006736:	c339                	beqz	a4,a000677c <SystemInit+0x7a>
a0006738:	9787a703          	lw	a4,-1672(a5)
a000673c:	8b05                	andi	a4,a4,1
a000673e:	cf1d                	beqz	a4,a000677c <SystemInit+0x7a>
a0006740:	97c7a703          	lw	a4,-1668(a5)
a0006744:	8b05                	andi	a4,a4,1
a0006746:	cb1d                	beqz	a4,a000677c <SystemInit+0x7a>
a0006748:	9807a703          	lw	a4,-1664(a5)
a000674c:	8b05                	andi	a4,a4,1
a000674e:	c71d                	beqz	a4,a000677c <SystemInit+0x7a>
a0006750:	9847a703          	lw	a4,-1660(a5)
a0006754:	8b05                	andi	a4,a4,1
a0006756:	c31d                	beqz	a4,a000677c <SystemInit+0x7a>
a0006758:	9887a703          	lw	a4,-1656(a5)
a000675c:	8b05                	andi	a4,a4,1
a000675e:	cf19                	beqz	a4,a000677c <SystemInit+0x7a>
a0006760:	98c7a783          	lw	a5,-1652(a5)
a0006764:	8b85                	andi	a5,a5,1
a0006766:	cb99                	beqz	a5,a000677c <SystemInit+0x7a>
a0006768:	20001737          	lui	a4,0x20001
a000676c:	99072783          	lw	a5,-1648(a4) # 20000990 <remain_wifi_ram+0x1ffe0990>
a0006770:	8b85                	andi	a5,a5,1
a0006772:	c789                	beqz	a5,a000677c <SystemInit+0x7a>
a0006774:	99472783          	lw	a5,-1644(a4)
a0006778:	8b85                	andi	a5,a5,1
a000677a:	ef99                	bnez	a5,a0006798 <SystemInit+0x96>
a000677c:	200057b7          	lui	a5,0x20005
a0006780:	38078793          	addi	a5,a5,896 # 20005380 <remain_wifi_ram+0x1ffe5380>
a0006784:	5398                	lw	a4,32(a5)
a0006786:	66c1                	lui	a3,0x10
a0006788:	9b71                	andi	a4,a4,-4
a000678a:	d398                	sw	a4,32(a5)
a000678c:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a0006790:	d798                	sw	a4,40(a5)
a0006792:	5398                	lw	a4,32(a5)
a0006794:	8f55                	or	a4,a4,a3
a0006796:	d398                	sw	a4,32(a5)
a0006798:	200057b7          	lui	a5,0x20005
a000679c:	43b8                	lw	a4,64(a5)
a000679e:	000206b7          	lui	a3,0x20
a00067a2:	f0f77713          	andi	a4,a4,-241
a00067a6:	c3b8                	sw	a4,64(a5)
a00067a8:	577d                	li	a4,-1
a00067aa:	c7f8                	sw	a4,76(a5)
a00067ac:	43b8                	lw	a4,64(a5)
a00067ae:	8f55                	or	a4,a4,a3
a00067b0:	c3b8                	sw	a4,64(a5)
a00067b2:	2000b737          	lui	a4,0x2000b
a00067b6:	5b3c                	lw	a5,112(a4)
a00067b8:	600006b7          	lui	a3,0x60000
a00067bc:	8fd5                	or	a5,a5,a3
a00067be:	db3c                	sw	a5,112(a4)
a00067c0:	300027f3          	csrr	a5,mstatus
a00067c4:	6709                	lui	a4,0x2
a00067c6:	8fd9                	or	a5,a5,a4
a00067c8:	30079073          	csrw	mstatus,a5
a00067cc:	7c0027f3          	csrr	a5,mxstatus
a00067d0:	00408737          	lui	a4,0x408
a00067d4:	8fd9                	or	a5,a5,a4
a00067d6:	7c079073          	csrw	mxstatus,a5
a00067da:	e0800737          	lui	a4,0xe0800
a00067de:	435c                	lw	a5,4(a4)
a00067e0:	00074683          	lbu	a3,0(a4) # e0800000 <__psram_limit+0x38400000>
a00067e4:	e0800537          	lui	a0,0xe0800
a00067e8:	83d1                	srli	a5,a5,0x14
a00067ea:	8bf9                	andi	a5,a5,30
a00067ec:	ac0786f7          	insb	a3,a5,0
a00067f0:	00d70023          	sb	a3,0(a4)
a00067f4:	6785                	lui	a5,0x1
a00067f6:	4701                	li	a4,0
a00067f8:	05000593          	li	a1,80
a00067fc:	04e5160b          	addsl	a2,a0,a4,2
a0006800:	00f606b3          	add	a3,a2,a5
a0006804:	000680a3          	sb	zero,1(a3) # 60000001 <__RFTLV_HEAD1_H+0x19adb3bf>
a0006808:	00f6500b          	srb	zero,a2,a5,0
a000680c:	00068123          	sb	zero,2(a3)
a0006810:	0705                	addi	a4,a4,1
a0006812:	feb715e3          	bne	a4,a1,a00067fc <SystemInit+0xfa>
a0006816:	e0801737          	lui	a4,0xe0801
a000681a:	4689                	li	a3,2
a000681c:	00d70723          	sb	a3,14(a4) # e080100e <__psram_limit+0x3840100e>
a0006820:	04d70723          	sb	a3,78(a4)
a0006824:	0ff0000f          	fence
a0006828:	0000100f          	fence.i
a000682c:	0020000b          	dcache.iall
a0006830:	7c102773          	csrr	a4,mhcr
a0006834:	03e78793          	addi	a5,a5,62 # 103e <HeapMinSize+0x3e>
a0006838:	8fd9                	or	a5,a5,a4
a000683a:	7c179073          	csrw	mhcr,a5
a000683e:	0ff0000f          	fence
a0006842:	0000100f          	fence.i
a0006846:	0ff0000f          	fence
a000684a:	0000100f          	fence.i
a000684e:	0100000b          	icache.iall
a0006852:	7c1027f3          	csrr	a5,mhcr
a0006856:	0017e793          	ori	a5,a5,1
a000685a:	7c179073          	csrw	mhcr,a5
a000685e:	0ff0000f          	fence
a0006862:	0000100f          	fence.i
a0006866:	7e1027f3          	csrr	a5,mexstatus
a000686a:	fffd0737          	lui	a4,0xfffd0
a000686e:	177d                	addi	a4,a4,-1
a0006870:	8ff9                	and	a5,a5,a4
a0006872:	7e179073          	csrw	mexstatus,a5
a0006876:	200007b7          	lui	a5,0x20000
a000687a:	577d                	li	a4,-1
a000687c:	66c1                	lui	a3,0x10
a000687e:	14e7aa23          	sw	a4,340(a5) # 20000154 <remain_wifi_ram+0x1ffe0154>
a0006882:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a0006886:	14e7ac23          	sw	a4,344(a5)
a000688a:	00000713          	li	a4,0
a000688e:	c63a                	sw	a4,12(sp)
a0006890:	60c7a783          	lw	a5,1548(a5)
a0006894:	4732                	lw	a4,12(sp)
a0006896:	eb09                	bnez	a4,a00068a8 <SystemInit+0x1a6>
a0006898:	ff07f713          	andi	a4,a5,-16
a000689c:	200007b7          	lui	a5,0x20000
a00068a0:	60e7a623          	sw	a4,1548(a5) # 2000060c <remain_wifi_ram+0x1ffe060c>
a00068a4:	0141                	addi	sp,sp,16
a00068a6:	8082                	ret
a00068a8:	4632                	lw	a2,12(sp)
a00068aa:	6721                	lui	a4,0x8
a00068ac:	00e61663          	bne	a2,a4,a00068b8 <SystemInit+0x1b6>
a00068b0:	9bc1                	andi	a5,a5,-16
a00068b2:	0037e713          	ori	a4,a5,3
a00068b6:	b7dd                	j	a000689c <SystemInit+0x19a>
a00068b8:	4632                	lw	a2,12(sp)
a00068ba:	ff07f713          	andi	a4,a5,-16
a00068be:	fcd61fe3          	bne	a2,a3,a000689c <SystemInit+0x19a>
a00068c2:	00f7e713          	ori	a4,a5,15
a00068c6:	bfd9                	j	a000689c <SystemInit+0x19a>

a00068c8 <System_Post_Init>:
a00068c8:	1141                	addi	sp,sp,-16
a00068ca:	c606                	sw	ra,12(sp)
a00068cc:	3505                	jal	a00066ec <System_BOD_Init>
a00068ce:	0ff0000f          	fence
a00068d2:	0010000b          	dcache.call
a00068d6:	0ff0000f          	fence
a00068da:	0ff0000f          	fence
a00068de:	0000100f          	fence.i
a00068e2:	0100000b          	icache.iall
a00068e6:	0ff0000f          	fence
a00068ea:	0000100f          	fence.i
a00068ee:	c2fba097          	auipc	ra,0xc2fba
a00068f2:	1a6080e7          	jalr	422(ra) # 62fc0a94 <system_setup_xtal_config.isra.0>
a00068f6:	30046073          	csrsi	mstatus,8
a00068fa:	40b2                	lw	ra,12(sp)
a00068fc:	0141                	addi	sp,sp,16
a00068fe:	8082                	ret

a0006900 <exception_entry>:
a0006900:	a0008537          	lui	a0,0xa0008
a0006904:	715d                	addi	sp,sp,-80
a0006906:	ffc50513          	addi	a0,a0,-4 # a0007ffc <__psram_limit+0xf7c07ffc>
a000690a:	c686                	sw	ra,76(sp)
a000690c:	c4a2                	sw	s0,72(sp)
a000690e:	c2a6                	sw	s1,68(sp)
a0006910:	c0ca                	sw	s2,64(sp)
a0006912:	ed9fe0ef          	jal	ra,a00057ea <printf>
a0006916:	34202473          	csrr	s0,mcause
a000691a:	a0008537          	lui	a0,0xa0008
a000691e:	85a2                	mv	a1,s0
a0006920:	01050513          	addi	a0,a0,16 # a0008010 <__psram_limit+0xf7c08010>
a0006924:	ec7fe0ef          	jal	ra,a00057ea <printf>
a0006928:	341024f3          	csrr	s1,mepc
a000692c:	a0008537          	lui	a0,0xa0008
a0006930:	85a6                	mv	a1,s1
a0006932:	02050513          	addi	a0,a0,32 # a0008020 <__psram_limit+0xf7c08020>
a0006936:	eb5fe0ef          	jal	ra,a00057ea <printf>
a000693a:	343025f3          	csrr	a1,mtval
a000693e:	a0008537          	lui	a0,0xa0008
a0006942:	02c50513          	addi	a0,a0,44 # a000802c <__psram_limit+0xf7c0802c>
a0006946:	ea5fe0ef          	jal	ra,a00057ea <printf>
a000694a:	a00085b7          	lui	a1,0xa0008
a000694e:	04000613          	li	a2,64
a0006952:	04458593          	addi	a1,a1,68 # a0008044 <__psram_limit+0xf7c08044>
a0006956:	850a                	mv	a0,sp
a0006958:	dbefd0ef          	jal	ra,a0003f16 <memcpy>
a000695c:	3ff47913          	andi	s2,s0,1023
a0006960:	883d                	andi	s0,s0,15
a0006962:	4481458b          	lrw	a1,sp,s0,2
a0006966:	a0008537          	lui	a0,0xa0008
a000696a:	03c50513          	addi	a0,a0,60 # a000803c <__psram_limit+0xf7c0803c>
a000696e:	e7dfe0ef          	jal	ra,a00057ea <printf>
a0006972:	47a1                	li	a5,8
a0006974:	00f90d63          	beq	s2,a5,a000698e <exception_entry+0x8e>
a0006978:	47ad                	li	a5,11
a000697a:	00f90a63          	beq	s2,a5,a000698e <exception_entry+0x8e>
a000697e:	62fc3437          	lui	s0,0x62fc3
a0006982:	df040413          	addi	s0,s0,-528 # 62fc2df0 <gpio>
a0006986:	8122                	mv	sp,s0
a0006988:	86cff0ef          	jal	ra,a00059f4 <coredump_run>
a000698c:	bfed                	j	a0006986 <exception_entry+0x86>
a000698e:	0491                	addi	s1,s1,4
a0006990:	34149073          	csrw	mepc,s1
a0006994:	40b6                	lw	ra,76(sp)
a0006996:	4426                	lw	s0,72(sp)
a0006998:	4496                	lw	s1,68(sp)
a000699a:	4906                	lw	s2,64(sp)
a000699c:	6161                	addi	sp,sp,80
a000699e:	8082                	ret

a00069a0 <interrupt_entry>:
a00069a0:	1141                	addi	sp,sp,-16
a00069a2:	c602                	sw	zero,12(sp)
a00069a4:	342027f3          	csrr	a5,mcause
a00069a8:	c63e                	sw	a5,12(sp)
a00069aa:	4532                	lw	a0,12(sp)
a00069ac:	04f00793          	li	a5,79
a00069b0:	3ff57513          	andi	a0,a0,1023
a00069b4:	00a7ee63          	bltu	a5,a0,a00069d0 <interrupt_entry+0x30>
a00069b8:	62fc37b7          	lui	a5,0x62fc3
a00069bc:	26078793          	addi	a5,a5,608 # 62fc3260 <g_irqvector>
a00069c0:	46a7c70b          	lrw	a4,a5,a0,3
a00069c4:	c711                	beqz	a4,a00069d0 <interrupt_entry+0x30>
a00069c6:	06a7978b          	addsl	a5,a5,a0,3
a00069ca:	43cc                	lw	a1,4(a5)
a00069cc:	0141                	addi	sp,sp,16
a00069ce:	8702                	jr	a4
a00069d0:	0141                	addi	sp,sp,16
a00069d2:	8082                	ret

a00069d4 <GLB_Set_ADC_CLK>:
a00069d4:	200007b7          	lui	a5,0x20000
a00069d8:	10078793          	addi	a5,a5,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a00069dc:	4b98                	lw	a4,16(a5)
a00069de:	059e                	slli	a1,a1,0x7
a00069e0:	eff77713          	andi	a4,a4,-257
a00069e4:	cb98                	sw	a4,16(a5)
a00069e6:	4b98                	lw	a4,16(a5)
a00069e8:	fc077713          	andi	a4,a4,-64
a00069ec:	8e59                	or	a2,a2,a4
a00069ee:	f7f67613          	andi	a2,a2,-129
a00069f2:	8dd1                	or	a1,a1,a2
a00069f4:	cb8c                	sw	a1,16(a5)
a00069f6:	4b98                	lw	a4,16(a5)
a00069f8:	eff77793          	andi	a5,a4,-257
a00069fc:	c119                	beqz	a0,a0006a02 <GLB_Set_ADC_CLK+0x2e>
a00069fe:	10076793          	ori	a5,a4,256
a0006a02:	20000737          	lui	a4,0x20000
a0006a06:	10f72823          	sw	a5,272(a4) # 20000110 <remain_wifi_ram+0x1ffe0110>
a0006a0a:	4501                	li	a0,0
a0006a0c:	8082                	ret

a0006a0e <GLB_Set_IR_CLK>:
a0006a0e:	20000737          	lui	a4,0x20000
a0006a12:	10070713          	addi	a4,a4,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a0006a16:	4334                	lw	a3,64(a4)
a0006a18:	ff8007b7          	lui	a5,0xff800
a0006a1c:	17fd                	addi	a5,a5,-1
a0006a1e:	8efd                	and	a3,a3,a5
a0006a20:	c334                	sw	a3,64(a4)
a0006a22:	4334                	lw	a3,64(a4)
a0006a24:	ffc105b7          	lui	a1,0xffc10
a0006a28:	15fd                	addi	a1,a1,-1
a0006a2a:	8eed                	and	a3,a3,a1
a0006a2c:	0642                	slli	a2,a2,0x10
a0006a2e:	8e55                	or	a2,a2,a3
a0006a30:	c330                	sw	a2,64(a4)
a0006a32:	4338                	lw	a4,64(a4)
a0006a34:	8ff9                	and	a5,a5,a4
a0006a36:	c501                	beqz	a0,a0006a3e <GLB_Set_IR_CLK+0x30>
a0006a38:	008007b7          	lui	a5,0x800
a0006a3c:	8fd9                	or	a5,a5,a4
a0006a3e:	20000737          	lui	a4,0x20000
a0006a42:	14f72023          	sw	a5,320(a4) # 20000140 <remain_wifi_ram+0x1ffe0140>
a0006a46:	4501                	li	a0,0
a0006a48:	8082                	ret

a0006a4a <GLB_Set_I2C_CLK>:
a0006a4a:	20000737          	lui	a4,0x20000
a0006a4e:	18070713          	addi	a4,a4,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006a52:	4314                	lw	a3,0(a4)
a0006a54:	ff0007b7          	lui	a5,0xff000
a0006a58:	17fd                	addi	a5,a5,-1
a0006a5a:	8efd                	and	a3,a3,a5
a0006a5c:	c314                	sw	a3,0(a4)
a0006a5e:	4314                	lw	a3,0(a4)
a0006a60:	fe000837          	lui	a6,0xfe000
a0006a64:	187d                	addi	a6,a6,-1
a0006a66:	0106f6b3          	and	a3,a3,a6
a0006a6a:	05e6                	slli	a1,a1,0x19
a0006a6c:	8dd5                	or	a1,a1,a3
a0006a6e:	ff0106b7          	lui	a3,0xff010
a0006a72:	16fd                	addi	a3,a3,-1
a0006a74:	8df5                	and	a1,a1,a3
a0006a76:	0642                	slli	a2,a2,0x10
a0006a78:	8dd1                	or	a1,a1,a2
a0006a7a:	c30c                	sw	a1,0(a4)
a0006a7c:	4318                	lw	a4,0(a4)
a0006a7e:	8ff9                	and	a5,a5,a4
a0006a80:	c501                	beqz	a0,a0006a88 <GLB_Set_I2C_CLK+0x3e>
a0006a82:	010007b7          	lui	a5,0x1000
a0006a86:	8fd9                	or	a5,a5,a4
a0006a88:	20000737          	lui	a4,0x20000
a0006a8c:	18f72023          	sw	a5,384(a4) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006a90:	4501                	li	a0,0
a0006a92:	8082                	ret

a0006a94 <GLB_Set_SPI_CLK>:
a0006a94:	200007b7          	lui	a5,0x20000
a0006a98:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006a9c:	5b94                	lw	a3,48(a5)
a0006a9e:	05a6                	slli	a1,a1,0x9
a0006aa0:	eff6f693          	andi	a3,a3,-257
a0006aa4:	db94                	sw	a3,48(a5)
a0006aa6:	5b98                	lw	a4,48(a5)
a0006aa8:	de077713          	andi	a4,a4,-544
a0006aac:	8f51                	or	a4,a4,a2
a0006aae:	8dd9                	or	a1,a1,a4
a0006ab0:	db8c                	sw	a1,48(a5)
a0006ab2:	5b98                	lw	a4,48(a5)
a0006ab4:	eff77793          	andi	a5,a4,-257
a0006ab8:	c119                	beqz	a0,a0006abe <GLB_Set_SPI_CLK+0x2a>
a0006aba:	10076793          	ori	a5,a4,256
a0006abe:	20000737          	lui	a4,0x20000
a0006ac2:	1af72823          	sw	a5,432(a4) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a0006ac6:	4501                	li	a0,0
a0006ac8:	8082                	ret

a0006aca <GLB_Set_DBI_CLK>:
a0006aca:	200007b7          	lui	a5,0x20000
a0006ace:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006ad2:	5bb4                	lw	a3,112(a5)
a0006ad4:	05a6                	slli	a1,a1,0x9
a0006ad6:	eff6f693          	andi	a3,a3,-257
a0006ada:	dbb4                	sw	a3,112(a5)
a0006adc:	5bb8                	lw	a4,112(a5)
a0006ade:	de077713          	andi	a4,a4,-544
a0006ae2:	8f51                	or	a4,a4,a2
a0006ae4:	8dd9                	or	a1,a1,a4
a0006ae6:	dbac                	sw	a1,112(a5)
a0006ae8:	5bb8                	lw	a4,112(a5)
a0006aea:	eff77793          	andi	a5,a4,-257
a0006aee:	c119                	beqz	a0,a0006af4 <GLB_Set_DBI_CLK+0x2a>
a0006af0:	10076793          	ori	a5,a4,256
a0006af4:	20000737          	lui	a4,0x20000
a0006af8:	1ef72823          	sw	a5,496(a4) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a0006afc:	4501                	li	a0,0
a0006afe:	8082                	ret

a0006b00 <GLB_Set_CAM_CLK>:
a0006b00:	20000737          	lui	a4,0x20000
a0006b04:	40070713          	addi	a4,a4,1024 # 20000400 <remain_wifi_ram+0x1ffe0400>
a0006b08:	5314                	lw	a3,32(a4)
a0006b0a:	f80007b7          	lui	a5,0xf8000
a0006b0e:	17fd                	addi	a5,a5,-1
a0006b10:	8efd                	and	a3,a3,a5
a0006b12:	d314                	sw	a3,32(a4)
a0006b14:	5314                	lw	a3,32(a4)
a0006b16:	d0000837          	lui	a6,0xd0000
a0006b1a:	187d                	addi	a6,a6,-1
a0006b1c:	0106f6b3          	and	a3,a3,a6
a0006b20:	05f2                	slli	a1,a1,0x1c
a0006b22:	8dd5                	or	a1,a1,a3
a0006b24:	400006b7          	lui	a3,0x40000
a0006b28:	16fd                	addi	a3,a3,-1
a0006b2a:	8df5                	and	a1,a1,a3
a0006b2c:	067a                	slli	a2,a2,0x1e
a0006b2e:	8dd1                	or	a1,a1,a2
a0006b30:	d30c                	sw	a1,32(a4)
a0006b32:	5318                	lw	a4,32(a4)
a0006b34:	8ff9                	and	a5,a5,a4
a0006b36:	c501                	beqz	a0,a0006b3e <GLB_Set_CAM_CLK+0x3e>
a0006b38:	080007b7          	lui	a5,0x8000
a0006b3c:	8fd9                	or	a5,a5,a4
a0006b3e:	20000737          	lui	a4,0x20000
a0006b42:	42f72023          	sw	a5,1056(a4) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0006b46:	4501                	li	a0,0
a0006b48:	8082                	ret

a0006b4a <HBN_Enable_BOD_IRQ>:
a0006b4a:	2000f737          	lui	a4,0x2000f
a0006b4e:	4b5c                	lw	a5,20(a4)
a0006b50:	000406b7          	lui	a3,0x40
a0006b54:	4501                	li	a0,0
a0006b56:	8fd5                	or	a5,a5,a3
a0006b58:	cb5c                	sw	a5,20(a4)
a0006b5a:	8082                	ret

a0006b5c <HBN_Disable_BOD_IRQ>:
a0006b5c:	2000f6b7          	lui	a3,0x2000f
a0006b60:	4adc                	lw	a5,20(a3)
a0006b62:	fffc0737          	lui	a4,0xfffc0
a0006b66:	177d                	addi	a4,a4,-1
a0006b68:	8ff9                	and	a5,a5,a4
a0006b6a:	cadc                	sw	a5,20(a3)
a0006b6c:	4501                	li	a0,0
a0006b6e:	8082                	ret

a0006b70 <HBN_Set_BOD_Cfg>:
a0006b70:	1141                	addi	sp,sp,-16
a0006b72:	c422                	sw	s0,8(sp)
a0006b74:	c606                	sw	ra,12(sp)
a0006b76:	00154783          	lbu	a5,1(a0)
a0006b7a:	842a                	mv	s0,a0
a0006b7c:	c3a9                	beqz	a5,a0006bbe <HBN_Set_BOD_Cfg+0x4e>
a0006b7e:	37f1                	jal	a0006b4a <HBN_Enable_BOD_IRQ>
a0006b80:	2000f7b7          	lui	a5,0x2000f
a0006b84:	57dc                	lw	a5,44(a5)
a0006b86:	00344683          	lbu	a3,3(s0)
a0006b8a:	ff17f713          	andi	a4,a5,-15
a0006b8e:	00244783          	lbu	a5,2(s0)
a0006b92:	0786                	slli	a5,a5,0x1
a0006b94:	8fd9                	or	a5,a5,a4
a0006b96:	ffe7f713          	andi	a4,a5,-2
a0006b9a:	c299                	beqz	a3,a0006ba0 <HBN_Set_BOD_Cfg+0x30>
a0006b9c:	0017e713          	ori	a4,a5,1
a0006ba0:	00044683          	lbu	a3,0(s0)
a0006ba4:	fef77793          	andi	a5,a4,-17
a0006ba8:	c299                	beqz	a3,a0006bae <HBN_Set_BOD_Cfg+0x3e>
a0006baa:	01076793          	ori	a5,a4,16
a0006bae:	40b2                	lw	ra,12(sp)
a0006bb0:	4422                	lw	s0,8(sp)
a0006bb2:	2000f737          	lui	a4,0x2000f
a0006bb6:	d75c                	sw	a5,44(a4)
a0006bb8:	4501                	li	a0,0
a0006bba:	0141                	addi	sp,sp,16
a0006bbc:	8082                	ret
a0006bbe:	3f79                	jal	a0006b5c <HBN_Disable_BOD_IRQ>
a0006bc0:	b7c1                	j	a0006b80 <HBN_Set_BOD_Cfg+0x10>

a0006bc2 <Clock_DBI_Clk_Mux_Output>:
a0006bc2:	e919                	bnez	a0,a0006bd8 <Clock_DBI_Clk_Mux_Output+0x16>
a0006bc4:	200007b7          	lui	a5,0x20000
a0006bc8:	2547a503          	lw	a0,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a0006bcc:	2ca5350b          	extu	a0,a0,11,10
a0006bd0:	c2fbb317          	auipc	t1,0xc2fbb
a0006bd4:	cc430067          	jr	-828(t1) # 62fc1894 <Clock_160M_Clk_Mux_Output>
a0006bd8:	4515                	li	a0,5
a0006bda:	c2fbb317          	auipc	t1,0xc2fbb
a0006bde:	dbc30067          	jr	-580(t1) # 62fc1996 <Clock_System_Clock_Get>

a0006be2 <Clock_Get_PSRAMB_Clk>:
a0006be2:	1141                	addi	sp,sp,-16
a0006be4:	200007b7          	lui	a5,0x20000
a0006be8:	c422                	sw	s0,8(sp)
a0006bea:	6207a403          	lw	s0,1568(a5) # 20000620 <remain_wifi_ram+0x1ffe0620>
a0006bee:	6207a783          	lw	a5,1568(a5)
a0006bf2:	c606                	sw	ra,12(sp)
a0006bf4:	8079                	srli	s0,s0,0x1e
a0006bf6:	71c7b78b          	extu	a5,a5,28,28
a0006bfa:	1312d537          	lui	a0,0x1312d
a0006bfe:	c791                	beqz	a5,a0006c0a <Clock_Get_PSRAMB_Clk+0x28>
a0006c00:	4501                	li	a0,0
a0006c02:	c2fbb097          	auipc	ra,0xc2fbb
a0006c06:	b2a080e7          	jalr	-1238(ra) # 62fc172c <Clock_Get_AUPLL_Output>
a0006c0a:	0405                	addi	s0,s0,1
a0006c0c:	02855533          	divu	a0,a0,s0
a0006c10:	40b2                	lw	ra,12(sp)
a0006c12:	4422                	lw	s0,8(sp)
a0006c14:	0141                	addi	sp,sp,16
a0006c16:	8082                	ret

a0006c18 <Clock_Get_ISP_Clk>:
a0006c18:	200007b7          	lui	a5,0x20000
a0006c1c:	2547a783          	lw	a5,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a0006c20:	8b8d                	andi	a5,a5,3
a0006c22:	cb91                	beqz	a5,a0006c36 <Clock_Get_ISP_Clk+0x1e>
a0006c24:	4705                	li	a4,1
a0006c26:	4515                	li	a0,5
a0006c28:	00e78363          	beq	a5,a4,a0006c2e <Clock_Get_ISP_Clk+0x16>
a0006c2c:	4519                	li	a0,6
a0006c2e:	c2fbb317          	auipc	t1,0xc2fbb
a0006c32:	afe30067          	jr	-1282(t1) # 62fc172c <Clock_Get_AUPLL_Output>
a0006c36:	04c4b537          	lui	a0,0x4c4b
a0006c3a:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a0006c3e:	8082                	ret

a0006c40 <Clock_Audio_ADC_Clock_Get>:
a0006c40:	1141                	addi	sp,sp,-16
a0006c42:	c606                	sw	ra,12(sp)
a0006c44:	c2fbb097          	auipc	ra,0xc2fbb
a0006c48:	c2e080e7          	jalr	-978(ra) # 62fc1872 <Clock_Get_Audio_PLL_Output>
a0006c4c:	200007b7          	lui	a5,0x20000
a0006c50:	3447a783          	lw	a5,836(a5) # 20000344 <remain_wifi_ram+0x1ffe0344>
a0006c54:	40b2                	lw	ra,12(sp)
a0006c56:	5d07b78b          	extu	a5,a5,23,16
a0006c5a:	0785                	addi	a5,a5,1
a0006c5c:	02f55533          	divu	a0,a0,a5
a0006c60:	0141                	addi	sp,sp,16
a0006c62:	8082                	ret

a0006c64 <Clock_Peripheral_Clock_Get>:
a0006c64:	1141                	addi	sp,sp,-16
a0006c66:	c606                	sw	ra,12(sp)
a0006c68:	c422                	sw	s0,8(sp)
a0006c6a:	4731                	li	a4,12
a0006c6c:	22e50d63          	beq	a0,a4,a0006ea6 <Clock_Peripheral_Clock_Get+0x242>
a0006c70:	87aa                	mv	a5,a0
a0006c72:	04a76c63          	bltu	a4,a0,a0006cca <Clock_Peripheral_Clock_Get+0x66>
a0006c76:	471d                	li	a4,7
a0006c78:	18e50863          	beq	a0,a4,a0006e08 <Clock_Peripheral_Clock_Get+0x1a4>
a0006c7c:	02a76a63          	bltu	a4,a0,a0006cb0 <Clock_Peripheral_Clock_Get+0x4c>
a0006c80:	4715                	li	a4,5
a0006c82:	14e50163          	beq	a0,a4,a0006dc4 <Clock_Peripheral_Clock_Get+0x160>
a0006c86:	00a76a63          	bltu	a4,a0,a0006c9a <Clock_Peripheral_Clock_Get+0x36>
a0006c8a:	4709                	li	a4,2
a0006c8c:	0ca77b63          	bgeu	a4,a0,a0006d62 <Clock_Peripheral_Clock_Get+0xfe>
a0006c90:	470d                	li	a4,3
a0006c92:	10e50e63          	beq	a0,a4,a0006dae <Clock_Peripheral_Clock_Get+0x14a>
a0006c96:	4501                	li	a0,0
a0006c98:	a02d                	j	a0006cc2 <Clock_Peripheral_Clock_Get+0x5e>
a0006c9a:	4719                	li	a4,6
a0006c9c:	fee51de3          	bne	a0,a4,a0006c96 <Clock_Peripheral_Clock_Get+0x32>
a0006ca0:	4422                	lw	s0,8(sp)
a0006ca2:	40b2                	lw	ra,12(sp)
a0006ca4:	450d                	li	a0,3
a0006ca6:	0141                	addi	sp,sp,16
a0006ca8:	c2fbb317          	auipc	t1,0xc2fbb
a0006cac:	cee30067          	jr	-786(t1) # 62fc1996 <Clock_System_Clock_Get>
a0006cb0:	4729                	li	a4,10
a0006cb2:	14e50763          	beq	a0,a4,a0006e00 <Clock_Peripheral_Clock_Get+0x19c>
a0006cb6:	46ad                	li	a3,11
a0006cb8:	14d50c63          	beq	a0,a3,a0006e10 <Clock_Peripheral_Clock_Get+0x1ac>
a0006cbc:	4501                	li	a0,0
a0006cbe:	10e79d63          	bne	a5,a4,a0006dd8 <Clock_Peripheral_Clock_Get+0x174>
a0006cc2:	40b2                	lw	ra,12(sp)
a0006cc4:	4422                	lw	s0,8(sp)
a0006cc6:	0141                	addi	sp,sp,16
a0006cc8:	8082                	ret
a0006cca:	4745                	li	a4,17
a0006ccc:	26e50763          	beq	a0,a4,a0006f3a <Clock_Peripheral_Clock_Get+0x2d6>
a0006cd0:	04a76b63          	bltu	a4,a0,a0006d26 <Clock_Peripheral_Clock_Get+0xc2>
a0006cd4:	473d                	li	a4,15
a0006cd6:	1ee50f63          	beq	a0,a4,a0006ed4 <Clock_Peripheral_Clock_Get+0x270>
a0006cda:	00a76c63          	bltu	a4,a0,a0006cf2 <Clock_Peripheral_Clock_Get+0x8e>
a0006cde:	4735                	li	a4,13
a0006ce0:	1ce50e63          	beq	a0,a4,a0006ebc <Clock_Peripheral_Clock_Get+0x258>
a0006ce4:	4739                	li	a4,14
a0006ce6:	fae518e3          	bne	a0,a4,a0006c96 <Clock_Peripheral_Clock_Get+0x32>
a0006cea:	4422                	lw	s0,8(sp)
a0006cec:	40b2                	lw	ra,12(sp)
a0006cee:	0141                	addi	sp,sp,16
a0006cf0:	bf81                	j	a0006c40 <Clock_Audio_ADC_Clock_Get>
a0006cf2:	4741                	li	a4,16
a0006cf4:	fae511e3          	bne	a0,a4,a0006c96 <Clock_Peripheral_Clock_Get+0x32>
a0006cf8:	200007b7          	lui	a5,0x20000
a0006cfc:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a0006d00:	75c7b78b          	extu	a5,a5,29,28
a0006d04:	22078663          	beqz	a5,a0006f30 <Clock_Peripheral_Clock_Get+0x2cc>
a0006d08:	4705                	li	a4,1
a0006d0a:	20e79e63          	bne	a5,a4,a0006f26 <Clock_Peripheral_Clock_Get+0x2c2>
a0006d0e:	4515                	li	a0,5
a0006d10:	c2fbb097          	auipc	ra,0xc2fbb
a0006d14:	c86080e7          	jalr	-890(ra) # 62fc1996 <Clock_System_Clock_Get>
a0006d18:	200007b7          	lui	a5,0x20000
a0006d1c:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a0006d20:	5907b78b          	extu	a5,a5,22,16
a0006d24:	a8a5                	j	a0006d9c <Clock_Peripheral_Clock_Get+0x138>
a0006d26:	474d                	li	a4,19
a0006d28:	24e50e63          	beq	a0,a4,a0006f84 <Clock_Peripheral_Clock_Get+0x320>
a0006d2c:	4751                	li	a4,20
a0006d2e:	6521                	lui	a0,0x8
a0006d30:	f8e789e3          	beq	a5,a4,a0006cc2 <Clock_Peripheral_Clock_Get+0x5e>
a0006d34:	4749                	li	a4,18
a0006d36:	f6e790e3          	bne	a5,a4,a0006c96 <Clock_Peripheral_Clock_Get+0x32>
a0006d3a:	200007b7          	lui	a5,0x20000
a0006d3e:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a0006d42:	30c7b78b          	extu	a5,a5,12,12
a0006d46:	22078a63          	beqz	a5,a0006f7a <Clock_Peripheral_Clock_Get+0x316>
a0006d4a:	4515                	li	a0,5
a0006d4c:	c2fbb097          	auipc	ra,0xc2fbb
a0006d50:	9e0080e7          	jalr	-1568(ra) # 62fc172c <Clock_Get_AUPLL_Output>
a0006d54:	200007b7          	lui	a5,0x20000
a0006d58:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a0006d5c:	2c97b78b          	extu	a5,a5,11,9
a0006d60:	a835                	j	a0006d9c <Clock_Peripheral_Clock_Get+0x138>
a0006d62:	200006b7          	lui	a3,0x20000
a0006d66:	1506a703          	lw	a4,336(a3) # 20000150 <remain_wifi_ram+0x1ffe0150>
a0006d6a:	450d                	li	a0,3
a0006d6c:	01575793          	srli	a5,a4,0x15
a0006d70:	8b89                	andi	a5,a5,2
a0006d72:	1c77370b          	extu	a4,a4,7,7
a0006d76:	8fd9                	or	a5,a5,a4
a0006d78:	c795                	beqz	a5,a0006da4 <Clock_Peripheral_Clock_Get+0x140>
a0006d7a:	4705                	li	a4,1
a0006d7c:	4515                	li	a0,5
a0006d7e:	02e79363          	bne	a5,a4,a0006da4 <Clock_Peripheral_Clock_Get+0x140>
a0006d82:	2546a503          	lw	a0,596(a3)
a0006d86:	2ca5350b          	extu	a0,a0,11,10
a0006d8a:	c2fbb097          	auipc	ra,0xc2fbb
a0006d8e:	b0a080e7          	jalr	-1270(ra) # 62fc1894 <Clock_160M_Clk_Mux_Output>
a0006d92:	200007b7          	lui	a5,0x20000
a0006d96:	1507a783          	lw	a5,336(a5) # 20000150 <remain_wifi_ram+0x1ffe0150>
a0006d9a:	8b9d                	andi	a5,a5,7
a0006d9c:	0785                	addi	a5,a5,1
a0006d9e:	02f55533          	divu	a0,a0,a5
a0006da2:	b705                	j	a0006cc2 <Clock_Peripheral_Clock_Get+0x5e>
a0006da4:	c2fbb097          	auipc	ra,0xc2fbb
a0006da8:	bf2080e7          	jalr	-1038(ra) # 62fc1996 <Clock_System_Clock_Get>
a0006dac:	b7dd                	j	a0006d92 <Clock_Peripheral_Clock_Get+0x12e>
a0006dae:	20000437          	lui	s0,0x20000
a0006db2:	1b042503          	lw	a0,432(s0) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a0006db6:	2495350b          	extu	a0,a0,9,9
a0006dba:	3521                	jal	a0006bc2 <Clock_DBI_Clk_Mux_Output>
a0006dbc:	1b042783          	lw	a5,432(s0)
a0006dc0:	8bfd                	andi	a5,a5,31
a0006dc2:	bfe9                	j	a0006d9c <Clock_Peripheral_Clock_Get+0x138>
a0006dc4:	20000437          	lui	s0,0x20000
a0006dc8:	1f042503          	lw	a0,496(s0) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a0006dcc:	2495350b          	extu	a0,a0,9,9
a0006dd0:	3bcd                	jal	a0006bc2 <Clock_DBI_Clk_Mux_Output>
a0006dd2:	1f042783          	lw	a5,496(s0)
a0006dd6:	b7ed                	j	a0006dc0 <Clock_Peripheral_Clock_Get+0x15c>
a0006dd8:	200007b7          	lui	a5,0x20000
a0006ddc:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006de0:	450d                	li	a0,3
a0006de2:	6597b78b          	extu	a5,a5,25,25
a0006de6:	c391                	beqz	a5,a0006dea <Clock_Peripheral_Clock_Get+0x186>
a0006de8:	4515                	li	a0,5
a0006dea:	c2fbb097          	auipc	ra,0xc2fbb
a0006dee:	bac080e7          	jalr	-1108(ra) # 62fc1996 <Clock_System_Clock_Get>
a0006df2:	200007b7          	lui	a5,0x20000
a0006df6:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006dfa:	5d07b78b          	extu	a5,a5,23,16
a0006dfe:	bf79                	j	a0006d9c <Clock_Peripheral_Clock_Get+0x138>
a0006e00:	4422                	lw	s0,8(sp)
a0006e02:	40b2                	lw	ra,12(sp)
a0006e04:	0141                	addi	sp,sp,16
a0006e06:	bbf1                	j	a0006be2 <Clock_Get_PSRAMB_Clk>
a0006e08:	4422                	lw	s0,8(sp)
a0006e0a:	40b2                	lw	ra,12(sp)
a0006e0c:	0141                	addi	sp,sp,16
a0006e0e:	b529                	j	a0006c18 <Clock_Get_ISP_Clk>
a0006e10:	20000737          	lui	a4,0x20000
a0006e14:	17072783          	lw	a5,368(a4) # 20000170 <remain_wifi_ram+0x1ffe0170>
a0006e18:	34c7b78b          	extu	a5,a5,13,12
a0006e1c:	ef8d                	bnez	a5,a0006e56 <Clock_Peripheral_Clock_Get+0x1f2>
a0006e1e:	17072783          	lw	a5,368(a4)
a0006e22:	3ce7b78b          	extu	a5,a5,15,14
a0006e26:	c3ad                	beqz	a5,a0006e88 <Clock_Peripheral_Clock_Get+0x224>
a0006e28:	4705                	li	a4,1
a0006e2a:	00e79d63          	bne	a5,a4,a0006e44 <Clock_Peripheral_Clock_Get+0x1e0>
a0006e2e:	c2fbb097          	auipc	ra,0xc2fbb
a0006e32:	a94080e7          	jalr	-1388(ra) # 62fc18c2 <Clock_Xtal_Output>
a0006e36:	200007b7          	lui	a5,0x20000
a0006e3a:	1707a783          	lw	a5,368(a5) # 20000170 <remain_wifi_ram+0x1ffe0170>
a0006e3e:	2887b78b          	extu	a5,a5,10,8
a0006e42:	bfa9                	j	a0006d9c <Clock_Peripheral_Clock_Get+0x138>
a0006e44:	4709                	li	a4,2
a0006e46:	04e78163          	beq	a5,a4,a0006e88 <Clock_Peripheral_Clock_Get+0x224>
a0006e4a:	4515                	li	a0,5
a0006e4c:	c2fbb097          	auipc	ra,0xc2fbb
a0006e50:	8e0080e7          	jalr	-1824(ra) # 62fc172c <Clock_Get_AUPLL_Output>
a0006e54:	b7cd                	j	a0006e36 <Clock_Peripheral_Clock_Get+0x1d2>
a0006e56:	4685                	li	a3,1
a0006e58:	00d79f63          	bne	a5,a3,a0006e76 <Clock_Peripheral_Clock_Get+0x212>
a0006e5c:	25472703          	lw	a4,596(a4)
a0006e60:	2487370b          	extu	a4,a4,9,8
a0006e64:	c71d                	beqz	a4,a0006e92 <Clock_Peripheral_Clock_Get+0x22e>
a0006e66:	fef702e3          	beq	a4,a5,a0006e4a <Clock_Peripheral_Clock_Get+0x1e6>
a0006e6a:	4789                	li	a5,2
a0006e6c:	4501                	li	a0,0
a0006e6e:	fcf714e3          	bne	a4,a5,a0006e36 <Clock_Peripheral_Clock_Get+0x1d2>
a0006e72:	4519                	li	a0,6
a0006e74:	bfe1                	j	a0006e4c <Clock_Peripheral_Clock_Get+0x1e8>
a0006e76:	4709                	li	a4,2
a0006e78:	02e79263          	bne	a5,a4,a0006e9c <Clock_Peripheral_Clock_Get+0x238>
a0006e7c:	450d                	li	a0,3
a0006e7e:	c2fbb097          	auipc	ra,0xc2fbb
a0006e82:	b18080e7          	jalr	-1256(ra) # 62fc1996 <Clock_System_Clock_Get>
a0006e86:	bf45                	j	a0006e36 <Clock_Peripheral_Clock_Get+0x1d2>
a0006e88:	07271537          	lui	a0,0x7271
a0006e8c:	e0050513          	addi	a0,a0,-512 # 7270e00 <remain_wifi_ram+0x7250e00>
a0006e90:	b75d                	j	a0006e36 <Clock_Peripheral_Clock_Get+0x1d2>
a0006e92:	04c4b537          	lui	a0,0x4c4b
a0006e96:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a0006e9a:	bf71                	j	a0006e36 <Clock_Peripheral_Clock_Get+0x1d2>
a0006e9c:	05b8e537          	lui	a0,0x5b8e
a0006ea0:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0006ea4:	bf49                	j	a0006e36 <Clock_Peripheral_Clock_Get+0x1d2>
a0006ea6:	c2fbb097          	auipc	ra,0xc2fbb
a0006eaa:	9cc080e7          	jalr	-1588(ra) # 62fc1872 <Clock_Get_Audio_PLL_Output>
a0006eae:	200007b7          	lui	a5,0x20000
a0006eb2:	1907a783          	lw	a5,400(a5) # 20000190 <remain_wifi_ram+0x1ffe0190>
a0006eb6:	03f7f793          	andi	a5,a5,63
a0006eba:	b5cd                	j	a0006d9c <Clock_Peripheral_Clock_Get+0x138>
a0006ebc:	4515                	li	a0,5
a0006ebe:	c2fbb097          	auipc	ra,0xc2fbb
a0006ec2:	ad8080e7          	jalr	-1320(ra) # 62fc1996 <Clock_System_Clock_Get>
a0006ec6:	200007b7          	lui	a5,0x20000
a0006eca:	1407a783          	lw	a5,320(a5) # 20000140 <remain_wifi_ram+0x1ffe0140>
a0006ece:	5507b78b          	extu	a5,a5,21,16
a0006ed2:	b5e9                	j	a0006d9c <Clock_Peripheral_Clock_Get+0x138>
a0006ed4:	2000f737          	lui	a4,0x2000f
a0006ed8:	531c                	lw	a5,32(a4)
a0006eda:	2087b78b          	extu	a5,a5,8,8
a0006ede:	cb99                	beqz	a5,a0006ef4 <Clock_Peripheral_Clock_Get+0x290>
a0006ee0:	5b08                	lw	a0,48(a4)
a0006ee2:	4422                	lw	s0,8(sp)
a0006ee4:	40b2                	lw	ra,12(sp)
a0006ee6:	1035350b          	extu	a0,a0,4,3
a0006eea:	0141                	addi	sp,sp,16
a0006eec:	c2fbb317          	auipc	t1,0xc2fbb
a0006ef0:	a0e30067          	jr	-1522(t1) # 62fc18fa <Clock_F32k_Mux_Output>
a0006ef4:	200007b7          	lui	a5,0x20000
a0006ef8:	1107a403          	lw	s0,272(a5) # 20000110 <remain_wifi_ram+0x1ffe0110>
a0006efc:	1107a783          	lw	a5,272(a5)
a0006f00:	03f47413          	andi	s0,s0,63
a0006f04:	1c77b78b          	extu	a5,a5,7,7
a0006f08:	eb89                	bnez	a5,a0006f1a <Clock_Peripheral_Clock_Get+0x2b6>
a0006f0a:	c2fbb097          	auipc	ra,0xc2fbb
a0006f0e:	968080e7          	jalr	-1688(ra) # 62fc1872 <Clock_Get_Audio_PLL_Output>
a0006f12:	0405                	addi	s0,s0,1
a0006f14:	02855533          	divu	a0,a0,s0
a0006f18:	b36d                	j	a0006cc2 <Clock_Peripheral_Clock_Get+0x5e>
a0006f1a:	4515                	li	a0,5
a0006f1c:	c2fbb097          	auipc	ra,0xc2fbb
a0006f20:	a7a080e7          	jalr	-1414(ra) # 62fc1996 <Clock_System_Clock_Get>
a0006f24:	b7fd                	j	a0006f12 <Clock_Peripheral_Clock_Get+0x2ae>
a0006f26:	c2fbb097          	auipc	ra,0xc2fbb
a0006f2a:	94c080e7          	jalr	-1716(ra) # 62fc1872 <Clock_Get_Audio_PLL_Output>
a0006f2e:	b3ed                	j	a0006d18 <Clock_Peripheral_Clock_Get+0xb4>
a0006f30:	01e85537          	lui	a0,0x1e85
a0006f34:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
a0006f38:	b3c5                	j	a0006d18 <Clock_Peripheral_Clock_Get+0xb4>
a0006f3a:	200007b7          	lui	a5,0x20000
a0006f3e:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0006f42:	75c7b78b          	extu	a5,a5,29,28
a0006f46:	ef81                	bnez	a5,a0006f5e <Clock_Peripheral_Clock_Get+0x2fa>
a0006f48:	4515                	li	a0,5
a0006f4a:	c2fbb097          	auipc	ra,0xc2fbb
a0006f4e:	a4c080e7          	jalr	-1460(ra) # 62fc1996 <Clock_System_Clock_Get>
a0006f52:	200007b7          	lui	a5,0x20000
a0006f56:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0006f5a:	83f9                	srli	a5,a5,0x1e
a0006f5c:	b581                	j	a0006d9c <Clock_Peripheral_Clock_Get+0x138>
a0006f5e:	4705                	li	a4,1
a0006f60:	00e78863          	beq	a5,a4,a0006f70 <Clock_Peripheral_Clock_Get+0x30c>
a0006f64:	4515                	li	a0,5
a0006f66:	c2fba097          	auipc	ra,0xc2fba
a0006f6a:	7c6080e7          	jalr	1990(ra) # 62fc172c <Clock_Get_AUPLL_Output>
a0006f6e:	b7d5                	j	a0006f52 <Clock_Peripheral_Clock_Get+0x2ee>
a0006f70:	05b8e537          	lui	a0,0x5b8e
a0006f74:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0006f78:	bfe9                	j	a0006f52 <Clock_Peripheral_Clock_Get+0x2ee>
a0006f7a:	05b8e537          	lui	a0,0x5b8e
a0006f7e:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0006f82:	bbc9                	j	a0006d54 <Clock_Peripheral_Clock_Get+0xf0>
a0006f84:	20000737          	lui	a4,0x20000
a0006f88:	54872783          	lw	a5,1352(a4) # 20000548 <remain_wifi_ram+0x1ffe0548>
a0006f8c:	6187b78b          	extu	a5,a5,24,24
a0006f90:	d00788e3          	beqz	a5,a0006ca0 <Clock_Peripheral_Clock_Get+0x3c>
a0006f94:	25472503          	lw	a0,596(a4)
a0006f98:	4422                	lw	s0,8(sp)
a0006f9a:	40b2                	lw	ra,12(sp)
a0006f9c:	2ca5350b          	extu	a0,a0,11,10
a0006fa0:	0141                	addi	sp,sp,16
a0006fa2:	c2fbb317          	auipc	t1,0xc2fbb
a0006fa6:	8f230067          	jr	-1806(t1) # 62fc1894 <Clock_160M_Clk_Mux_Output>

a0006faa <qcc74x_gpio_pad_check>:
a0006faa:	1141                	addi	sp,sp,-16
a0006fac:	c606                	sw	ra,12(sp)
a0006fae:	c2fba097          	auipc	ra,0xc2fba
a0006fb2:	ef8080e7          	jalr	-264(ra) # 62fc0ea6 <GLB_GPIO_Pad_LeadOut_Sts>
a0006fb6:	e111                	bnez	a0,a0006fba <qcc74x_gpio_pad_check+0x10>
a0006fb8:	a001                	j	a0006fb8 <qcc74x_gpio_pad_check+0xe>
a0006fba:	40b2                	lw	ra,12(sp)
a0006fbc:	0141                	addi	sp,sp,16
a0006fbe:	8082                	ret

a0006fc0 <qcc74x_clk_get_peripheral_clock>:
a0006fc0:	e119                	bnez	a0,a0006fc6 <qcc74x_clk_get_peripheral_clock+0x6>
a0006fc2:	4539                	li	a0,14
a0006fc4:	b145                	j	a0006c64 <Clock_Peripheral_Clock_Get>
a0006fc6:	4785                	li	a5,1
a0006fc8:	00f51463          	bne	a0,a5,a0006fd0 <qcc74x_clk_get_peripheral_clock+0x10>
a0006fcc:	4541                	li	a0,16
a0006fce:	bfdd                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a0006fd0:	4795                	li	a5,5
a0006fd2:	00f51463          	bne	a0,a5,a0006fda <qcc74x_clk_get_peripheral_clock+0x1a>
a0006fd6:	4501                	li	a0,0
a0006fd8:	b7f5                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a0006fda:	4799                	li	a5,6
a0006fdc:	00f51463          	bne	a0,a5,a0006fe4 <qcc74x_clk_get_peripheral_clock+0x24>
a0006fe0:	450d                	li	a0,3
a0006fe2:	b7cd                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a0006fe4:	479d                	li	a5,7
a0006fe6:	00f51463          	bne	a0,a5,a0006fee <qcc74x_clk_get_peripheral_clock+0x2e>
a0006fea:	4521                	li	a0,8
a0006fec:	bfe1                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a0006fee:	47bd                	li	a5,15
a0006ff0:	00f51463          	bne	a0,a5,a0006ff8 <qcc74x_clk_get_peripheral_clock+0x38>
a0006ff4:	452d                	li	a0,11
a0006ff6:	b7f9                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a0006ff8:	47a9                	li	a5,10
a0006ffa:	00f51463          	bne	a0,a5,a0007002 <qcc74x_clk_get_peripheral_clock+0x42>
a0006ffe:	4535                	li	a0,13
a0007000:	b7d1                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a0007002:	02000793          	li	a5,32
a0007006:	00f51463          	bne	a0,a5,a000700e <qcc74x_clk_get_peripheral_clock+0x4e>
a000700a:	454d                	li	a0,19
a000700c:	bf65                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a000700e:	47c5                	li	a5,17
a0007010:	00f51463          	bne	a0,a5,a0007018 <qcc74x_clk_get_peripheral_clock+0x58>
a0007014:	4549                	li	a0,18
a0007016:	b77d                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a0007018:	47b9                	li	a5,14
a000701a:	00f51463          	bne	a0,a5,a0007022 <qcc74x_clk_get_peripheral_clock+0x62>
a000701e:	4545                	li	a0,17
a0007020:	b755                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a0007022:	02400793          	li	a5,36
a0007026:	00f51463          	bne	a0,a5,a000702e <qcc74x_clk_get_peripheral_clock+0x6e>
a000702a:	4515                	li	a0,5
a000702c:	bf61                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a000702e:	47a5                	li	a5,9
a0007030:	00f51463          	bne	a0,a5,a0007038 <qcc74x_clk_get_peripheral_clock+0x78>
a0007034:	4531                	li	a0,12
a0007036:	b779                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a0007038:	47d1                	li	a5,20
a000703a:	00f51463          	bne	a0,a5,a0007042 <qcc74x_clk_get_peripheral_clock+0x82>
a000703e:	4551                	li	a0,20
a0007040:	b751                	j	a0006fc4 <qcc74x_clk_get_peripheral_clock+0x4>
a0007042:	4501                	li	a0,0
a0007044:	8082                	ret

a0007046 <qcc74x_sys_reset_por>:
a0007046:	1141                	addi	sp,sp,-16
a0007048:	c606                	sw	ra,12(sp)
a000704a:	200107b7          	lui	a5,0x20010
a000704e:	4711                	li	a4,4
a0007050:	5ae7a423          	sw	a4,1448(a5) # 200105a8 <remain_wifi_ram+0x1fff05a8>
a0007054:	bf1ba737          	lui	a4,0xbf1ba
a0007058:	55e70713          	addi	a4,a4,1374 # bf1ba55e <__psram_limit+0x16dba55e>
a000705c:	5ae7a623          	sw	a4,1452(a5)
a0007060:	30047073          	csrci	mstatus,8
a0007064:	4511                	li	a0,4
a0007066:	c2fba097          	auipc	ra,0xc2fba
a000706a:	a74080e7          	jalr	-1420(ra) # 62fc0ada <GLB_AHB_MCU_Software_Reset>
a000706e:	4521                	li	a0,8
a0007070:	c2fba097          	auipc	ra,0xc2fba
a0007074:	a6a080e7          	jalr	-1430(ra) # 62fc0ada <GLB_AHB_MCU_Software_Reset>
a0007078:	4525                	li	a0,9
a000707a:	c2fba097          	auipc	ra,0xc2fba
a000707e:	a60080e7          	jalr	-1440(ra) # 62fc0ada <GLB_AHB_MCU_Software_Reset>
a0007082:	4529                	li	a0,10
a0007084:	c2fba097          	auipc	ra,0xc2fba
a0007088:	a56080e7          	jalr	-1450(ra) # 62fc0ada <GLB_AHB_MCU_Software_Reset>
a000708c:	452d                	li	a0,11
a000708e:	c2fba097          	auipc	ra,0xc2fba
a0007092:	a4c080e7          	jalr	-1460(ra) # 62fc0ada <GLB_AHB_MCU_Software_Reset>
a0007096:	4529                	li	a0,10
a0007098:	c2fba097          	auipc	ra,0xc2fba
a000709c:	f98080e7          	jalr	-104(ra) # 62fc1030 <arch_delay_ms>
a00070a0:	c2fba097          	auipc	ra,0xc2fba
a00070a4:	a4e080e7          	jalr	-1458(ra) # 62fc0aee <GLB_SW_POR_Reset>
a00070a8:	a001                	j	a00070a8 <qcc74x_sys_reset_por+0x62>

a00070aa <qcc74x_show_log>:
a00070aa:	1141                	addi	sp,sp,-16
a00070ac:	c422                	sw	s0,8(sp)
a00070ae:	a0008437          	lui	s0,0xa0008
a00070b2:	41040513          	addi	a0,s0,1040 # a0008410 <__psram_limit+0xf7c08410>
a00070b6:	c606                	sw	ra,12(sp)
a00070b8:	f32fe0ef          	jal	ra,a00057ea <printf>
a00070bc:	41040513          	addi	a0,s0,1040
a00070c0:	f2afe0ef          	jal	ra,a00057ea <printf>
a00070c4:	4422                	lw	s0,8(sp)
a00070c6:	40b2                	lw	ra,12(sp)
a00070c8:	a0008637          	lui	a2,0xa0008
a00070cc:	a00085b7          	lui	a1,0xa0008
a00070d0:	a0008537          	lui	a0,0xa0008
a00070d4:	2b860613          	addi	a2,a2,696 # a00082b8 <__psram_limit+0xf7c082b8>
a00070d8:	2c458593          	addi	a1,a1,708 # a00082c4 <__psram_limit+0xf7c082c4>
a00070dc:	2d050513          	addi	a0,a0,720 # a00082d0 <__psram_limit+0xf7c082d0>
a00070e0:	0141                	addi	sp,sp,16
a00070e2:	f08fe06f          	j	a00057ea <printf>

a00070e6 <qcc74x_sys_version>:
a00070e6:	411c                	lw	a5,0(a0)
a00070e8:	872a                	mv	a4,a0
a00070ea:	e791                	bnez	a5,a00070f6 <qcc74x_sys_version+0x10>
a00070ec:	a00077b7          	lui	a5,0xa0007
a00070f0:	50878793          	addi	a5,a5,1288 # a0007508 <__psram_limit+0xf7c07508>
a00070f4:	c11c                	sw	a5,0(a0)
a00070f6:	431c                	lw	a5,0(a4)
a00070f8:	a00076b7          	lui	a3,0xa0007
a00070fc:	51468693          	addi	a3,a3,1300 # a0007514 <__psram_limit+0xf7c07514>
a0007100:	4501                	li	a0,0
a0007102:	00d78563          	beq	a5,a3,a000710c <qcc74x_sys_version+0x26>
a0007106:	5847c50b          	lwia	a0,(a5),4,0
a000710a:	c31c                	sw	a5,0(a4)
a000710c:	8082                	ret

a000710e <qcc74x_show_component_version>:
a000710e:	a0008537          	lui	a0,0xa0008
a0007112:	1101                	addi	sp,sp,-32
a0007114:	2e050513          	addi	a0,a0,736 # a00082e0 <__psram_limit+0xf7c082e0>
a0007118:	ca26                	sw	s1,20(sp)
a000711a:	c84a                	sw	s2,16(sp)
a000711c:	ce06                	sw	ra,28(sp)
a000711e:	cc22                	sw	s0,24(sp)
a0007120:	c602                	sw	zero,12(sp)
a0007122:	a00084b7          	lui	s1,0xa0008
a0007126:	e90fe0ef          	jal	ra,a00057b6 <puts>
a000712a:	a0008937          	lui	s2,0xa0008
a000712e:	0068                	addi	a0,sp,12
a0007130:	3f5d                	jal	a00070e6 <qcc74x_sys_version>
a0007132:	842a                	mv	s0,a0
a0007134:	e519                	bnez	a0,a0007142 <qcc74x_show_component_version+0x34>
a0007136:	40f2                	lw	ra,28(sp)
a0007138:	4462                	lw	s0,24(sp)
a000713a:	44d2                	lw	s1,20(sp)
a000713c:	4942                	lw	s2,16(sp)
a000713e:	6105                	addi	sp,sp,32
a0007140:	8082                	ret
a0007142:	30048513          	addi	a0,s1,768 # a0008300 <__psram_limit+0xf7c08300>
a0007146:	e70fe0ef          	jal	ra,a00057b6 <puts>
a000714a:	8522                	mv	a0,s0
a000714c:	e6afe0ef          	jal	ra,a00057b6 <puts>
a0007150:	41090513          	addi	a0,s2,1040 # a0008410 <__psram_limit+0xf7c08410>
a0007154:	e62fe0ef          	jal	ra,a00057b6 <puts>
a0007158:	bfd9                	j	a000712e <qcc74x_show_component_version+0x20>

a000715a <qcc74x_show_chipinfo>:
a000715a:	7139                	addi	sp,sp,-64
a000715c:	0068                	addi	a0,sp,12
a000715e:	de06                	sw	ra,60(sp)
a0007160:	c2fba097          	auipc	ra,0xc2fba
a0007164:	f4e080e7          	jalr	-178(ra) # 62fc10ae <qcc74x_efuse_get_device_info>
a0007168:	a0008537          	lui	a0,0xa0008
a000716c:	30c50513          	addi	a0,a0,780 # a000830c <__psram_limit+0xf7c0830c>
a0007170:	e7afe0ef          	jal	ra,a00057ea <printf>
a0007174:	45d2                	lw	a1,20(sp)
a0007176:	a0008537          	lui	a0,0xa0008
a000717a:	32c50513          	addi	a0,a0,812 # a000832c <__psram_limit+0xf7c0832c>
a000717e:	e6cfe0ef          	jal	ra,a00057ea <printf>
a0007182:	45e2                	lw	a1,24(sp)
a0007184:	a0008537          	lui	a0,0xa0008
a0007188:	34450513          	addi	a0,a0,836 # a0008344 <__psram_limit+0xf7c08344>
a000718c:	e5efe0ef          	jal	ra,a00057ea <printf>
a0007190:	45f2                	lw	a1,28(sp)
a0007192:	a0008537          	lui	a0,0xa0008
a0007196:	35c50513          	addi	a0,a0,860 # a000835c <__psram_limit+0xf7c0835c>
a000719a:	e50fe0ef          	jal	ra,a00057ea <printf>
a000719e:	00f14583          	lbu	a1,15(sp)
a00071a2:	a0008537          	lui	a0,0xa0008
a00071a6:	37450513          	addi	a0,a0,884 # a0008374 <__psram_limit+0xf7c08374>
a00071aa:	e40fe0ef          	jal	ra,a00057ea <printf>
a00071ae:	50f2                	lw	ra,60(sp)
a00071b0:	6121                	addi	sp,sp,64
a00071b2:	8082                	ret

a00071b4 <board_init>:
a00071b4:	7119                	addi	sp,sp,-128
a00071b6:	de86                	sw	ra,124(sp)
a00071b8:	dca2                	sw	s0,120(sp)
a00071ba:	daa6                	sw	s1,116(sp)
a00071bc:	d8ca                	sw	s2,112(sp)
a00071be:	d6ce                	sw	s3,108(sp)
a00071c0:	ca02                	sw	zero,20(sp)
a00071c2:	c2fba097          	auipc	ra,0xc2fba
a00071c6:	818080e7          	jalr	-2024(ra) # 62fc09da <qcc74x_irq_save>
a00071ca:	84aa                	mv	s1,a0
a00071cc:	c2fb9097          	auipc	ra,0xc2fb9
a00071d0:	700080e7          	jalr	1792(ra) # 62fc08cc <qcc74x_flash_init>
a00071d4:	892a                	mv	s2,a0
a00071d6:	c2fbb097          	auipc	ra,0xc2fbb
a00071da:	898080e7          	jalr	-1896(ra) # 62fc1a6e <system_clock_init>
a00071de:	200007b7          	lui	a5,0x20000
a00071e2:	58078793          	addi	a5,a5,1408 # 20000580 <remain_wifi_ram+0x1ffe0580>
a00071e6:	43d8                	lw	a4,4(a5)
a00071e8:	6685                	lui	a3,0x1
a00071ea:	6441                	lui	s0,0x10
a00071ec:	cc3a                	sw	a4,24(sp)
a00071ee:	4762                	lw	a4,24(sp)
a00071f0:	00200637          	lui	a2,0x200
a00071f4:	4589                	li	a1,2
a00071f6:	00476713          	ori	a4,a4,4
a00071fa:	cc3a                	sw	a4,24(sp)
a00071fc:	4762                	lw	a4,24(sp)
a00071fe:	4505                	li	a0,1
a0007200:	c3d8                	sw	a4,4(a5)
a0007202:	43d8                	lw	a4,4(a5)
a0007204:	ce3a                	sw	a4,28(sp)
a0007206:	4772                	lw	a4,28(sp)
a0007208:	00876713          	ori	a4,a4,8
a000720c:	ce3a                	sw	a4,28(sp)
a000720e:	4772                	lw	a4,28(sp)
a0007210:	01076713          	ori	a4,a4,16
a0007214:	ce3a                	sw	a4,28(sp)
a0007216:	4772                	lw	a4,28(sp)
a0007218:	c3d8                	sw	a4,4(a5)
a000721a:	43d8                	lw	a4,4(a5)
a000721c:	d03a                	sw	a4,32(sp)
a000721e:	5702                	lw	a4,32(sp)
a0007220:	8f55                	or	a4,a4,a3
a0007222:	d03a                	sw	a4,32(sp)
a0007224:	5702                	lw	a4,32(sp)
a0007226:	000206b7          	lui	a3,0x20
a000722a:	c3d8                	sw	a4,4(a5)
a000722c:	43d8                	lw	a4,4(a5)
a000722e:	d23a                	sw	a4,36(sp)
a0007230:	5712                	lw	a4,36(sp)
a0007232:	8f41                	or	a4,a4,s0
a0007234:	d23a                	sw	a4,36(sp)
a0007236:	5712                	lw	a4,36(sp)
a0007238:	30040413          	addi	s0,s0,768 # 10300 <wifi_ram_max_size+0x8300>
a000723c:	c3d8                	sw	a4,4(a5)
a000723e:	43d8                	lw	a4,4(a5)
a0007240:	d43a                	sw	a4,40(sp)
a0007242:	5722                	lw	a4,40(sp)
a0007244:	8f55                	or	a4,a4,a3
a0007246:	d43a                	sw	a4,40(sp)
a0007248:	5722                	lw	a4,40(sp)
a000724a:	000406b7          	lui	a3,0x40
a000724e:	c3d8                	sw	a4,4(a5)
a0007250:	43d8                	lw	a4,4(a5)
a0007252:	d63a                	sw	a4,44(sp)
a0007254:	5732                	lw	a4,44(sp)
a0007256:	8f55                	or	a4,a4,a3
a0007258:	d63a                	sw	a4,44(sp)
a000725a:	5732                	lw	a4,44(sp)
a000725c:	000806b7          	lui	a3,0x80
a0007260:	c3d8                	sw	a4,4(a5)
a0007262:	43d8                	lw	a4,4(a5)
a0007264:	d83a                	sw	a4,48(sp)
a0007266:	5742                	lw	a4,48(sp)
a0007268:	8f55                	or	a4,a4,a3
a000726a:	d83a                	sw	a4,48(sp)
a000726c:	5742                	lw	a4,48(sp)
a000726e:	001006b7          	lui	a3,0x100
a0007272:	c3d8                	sw	a4,4(a5)
a0007274:	43d8                	lw	a4,4(a5)
a0007276:	da3a                	sw	a4,52(sp)
a0007278:	5752                	lw	a4,52(sp)
a000727a:	8f55                	or	a4,a4,a3
a000727c:	da3a                	sw	a4,52(sp)
a000727e:	5752                	lw	a4,52(sp)
a0007280:	c3d8                	sw	a4,4(a5)
a0007282:	43d8                	lw	a4,4(a5)
a0007284:	dc3a                	sw	a4,56(sp)
a0007286:	56e2                	lw	a3,56(sp)
a0007288:	8ed1                	or	a3,a3,a2
a000728a:	dc36                	sw	a3,56(sp)
a000728c:	5762                	lw	a4,56(sp)
a000728e:	c3d8                	sw	a4,4(a5)
a0007290:	43d8                	lw	a4,4(a5)
a0007292:	de3a                	sw	a4,60(sp)
a0007294:	56f2                	lw	a3,60(sp)
a0007296:	00400737          	lui	a4,0x400
a000729a:	8ed9                	or	a3,a3,a4
a000729c:	de36                	sw	a3,60(sp)
a000729e:	5772                	lw	a4,60(sp)
a00072a0:	c3d8                	sw	a4,4(a5)
a00072a2:	43d8                	lw	a4,4(a5)
a00072a4:	c0ba                	sw	a4,64(sp)
a00072a6:	4686                	lw	a3,64(sp)
a00072a8:	08000737          	lui	a4,0x8000
a00072ac:	8ed9                	or	a3,a3,a4
a00072ae:	c0b6                	sw	a3,64(sp)
a00072b0:	4706                	lw	a4,64(sp)
a00072b2:	c3d8                	sw	a4,4(a5)
a00072b4:	43d8                	lw	a4,4(a5)
a00072b6:	c2ba                	sw	a4,68(sp)
a00072b8:	4696                	lw	a3,68(sp)
a00072ba:	6709                	lui	a4,0x2
a00072bc:	8ed9                	or	a3,a3,a4
a00072be:	c2b6                	sw	a3,68(sp)
a00072c0:	4716                	lw	a4,68(sp)
a00072c2:	c3d8                	sw	a4,4(a5)
a00072c4:	43d8                	lw	a4,4(a5)
a00072c6:	c4ba                	sw	a4,72(sp)
a00072c8:	46a6                	lw	a3,72(sp)
a00072ca:	04000737          	lui	a4,0x4000
a00072ce:	8ed9                	or	a3,a3,a4
a00072d0:	c4b6                	sw	a3,72(sp)
a00072d2:	4726                	lw	a4,72(sp)
a00072d4:	008006b7          	lui	a3,0x800
a00072d8:	c3d8                	sw	a4,4(a5)
a00072da:	4798                	lw	a4,8(a5)
a00072dc:	c6ba                	sw	a4,76(sp)
a00072de:	4736                	lw	a4,76(sp)
a00072e0:	8f51                	or	a4,a4,a2
a00072e2:	c6ba                	sw	a4,76(sp)
a00072e4:	4736                	lw	a4,76(sp)
a00072e6:	4601                	li	a2,0
a00072e8:	c798                	sw	a4,8(a5)
a00072ea:	43d8                	lw	a4,4(a5)
a00072ec:	c8ba                	sw	a4,80(sp)
a00072ee:	4746                	lw	a4,80(sp)
a00072f0:	8f55                	or	a4,a4,a3
a00072f2:	c8ba                	sw	a4,80(sp)
a00072f4:	4746                	lw	a4,80(sp)
a00072f6:	c3d8                	sw	a4,4(a5)
a00072f8:	c2fba097          	auipc	ra,0xc2fba
a00072fc:	832080e7          	jalr	-1998(ra) # 62fc0b2a <GLB_Set_UART_CLK>
a0007300:	4601                	li	a2,0
a0007302:	4581                	li	a1,0
a0007304:	4505                	li	a0,1
a0007306:	f8eff0ef          	jal	ra,a0006a94 <GLB_Set_SPI_CLK>
a000730a:	4601                	li	a2,0
a000730c:	4581                	li	a1,0
a000730e:	4505                	li	a0,1
a0007310:	fbaff0ef          	jal	ra,a0006aca <GLB_Set_DBI_CLK>
a0007314:	4601                	li	a2,0
a0007316:	4585                	li	a1,1
a0007318:	4505                	li	a0,1
a000731a:	f30ff0ef          	jal	ra,a0006a4a <GLB_Set_I2C_CLK>
a000731e:	4605                	li	a2,1
a0007320:	4585                	li	a1,1
a0007322:	4505                	li	a0,1
a0007324:	eb0ff0ef          	jal	ra,a00069d4 <GLB_Set_ADC_CLK>
a0007328:	4505                	li	a0,1
a000732a:	c2fb9097          	auipc	ra,0xc2fb9
a000732e:	7d8080e7          	jalr	2008(ra) # 62fc0b02 <GLB_Set_DIG_CLK_Sel>
a0007332:	04e00613          	li	a2,78
a0007336:	4585                	li	a1,1
a0007338:	4505                	li	a0,1
a000733a:	c2fb9097          	auipc	ra,0xc2fb9
a000733e:	7be080e7          	jalr	1982(ra) # 62fc0af8 <GLB_Set_DIG_512K_CLK>
a0007342:	4501                	li	a0,0
a0007344:	c2fb9097          	auipc	ra,0xc2fb9
a0007348:	7dc080e7          	jalr	2012(ra) # 62fc0b20 <GLB_Set_PWM1_IO_Sel>
a000734c:	464d                	li	a2,19
a000734e:	4581                	li	a1,0
a0007350:	4505                	li	a0,1
a0007352:	ebcff0ef          	jal	ra,a0006a0e <GLB_Set_IR_CLK>
a0007356:	460d                	li	a2,3
a0007358:	4585                	li	a1,1
a000735a:	4505                	li	a0,1
a000735c:	fa4ff0ef          	jal	ra,a0006b00 <GLB_Set_CAM_CLK>
a0007360:	4505                	li	a0,1
a0007362:	c2fb9097          	auipc	ra,0xc2fb9
a0007366:	7b4080e7          	jalr	1972(ra) # 62fc0b16 <GLB_Set_PKA_CLK_Sel>
a000736a:	4505                	li	a0,1
a000736c:	c2fb9097          	auipc	ra,0xc2fb9
a0007370:	7c8080e7          	jalr	1992(ra) # 62fc0b34 <GLB_Set_USB_CLK_From_WIFIPLL>
a0007374:	4501                	li	a0,0
a0007376:	c2fb9097          	auipc	ra,0xc2fb9
a000737a:	7c8080e7          	jalr	1992(ra) # 62fc0b3e <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>
a000737e:	f67fe0ef          	jal	ra,a00062e4 <qcc74x_irq_initialize>
a0007382:	a0007537          	lui	a0,0xa0007
a0007386:	51450513          	addi	a0,a0,1300 # a0007514 <__psram_limit+0xf7c07514>
a000738a:	f7dfe0ef          	jal	ra,a0006306 <qcc74x_device_get_by_name>
a000738e:	4609                	li	a2,2
a0007390:	45d5                	li	a1,21
a0007392:	c62a                	sw	a0,12(sp)
a0007394:	b35fe0ef          	jal	ra,a0005ec8 <qcc74x_gpio_uart_init>
a0007398:	4532                	lw	a0,12(sp)
a000739a:	460d                	li	a2,3
a000739c:	45d9                	li	a1,22
a000739e:	b2bfe0ef          	jal	ra,a0005ec8 <qcc74x_gpio_uart_init>
a00073a2:	001e87b7          	lui	a5,0x1e8
a00073a6:	48078793          	addi	a5,a5,1152 # 1e8480 <remain_wifi_ram+0x1c8480>
a00073aa:	a0008537          	lui	a0,0xa0008
a00073ae:	cabe                	sw	a5,84(sp)
a00073b0:	d5450513          	addi	a0,a0,-684 # a0007d54 <__psram_limit+0xf7c07d54>
a00073b4:	070707b7          	lui	a5,0x7070
a00073b8:	cebe                	sw	a5,92(sp)
a00073ba:	cca2                	sw	s0,88(sp)
a00073bc:	f4bfe0ef          	jal	ra,a0006306 <qcc74x_device_get_by_name>
a00073c0:	62fc3437          	lui	s0,0x62fc3
a00073c4:	4e040413          	addi	s0,s0,1248 # 62fc34e0 <uart0>
a00073c8:	08cc                	addi	a1,sp,84
a00073ca:	c008                	sw	a0,0(s0)
a00073cc:	da3fe0ef          	jal	ra,a000616e <qcc74x_uart_init>
a00073d0:	4008                	lw	a0,0(s0)
a00073d2:	63030437          	lui	s0,0x63030
a00073d6:	00040413          	mv	s0,s0
a00073da:	c3cfe0ef          	jal	ra,a0005816 <qcc74x_uart_set_console>
a00073de:	62fc3537          	lui	a0,0x62fc3
a00073e2:	4e450593          	addi	a1,a0,1252 # 62fc34e4 <__HeapBase>
a00073e6:	8c0d                	sub	s0,s0,a1
a00073e8:	85a2                	mv	a1,s0
a00073ea:	4e450513          	addi	a0,a0,1252
a00073ee:	c32fe0ef          	jal	ra,a0005820 <kmem_init>
a00073f2:	3965                	jal	a00070aa <qcc74x_show_log>
a00073f4:	3b29                	jal	a000710e <qcc74x_show_component_version>
a00073f6:	a80007b7          	lui	a5,0xa8000
a00073fa:	a8000737          	lui	a4,0xa8000
a00073fe:	00078793          	mv	a5,a5
a0007402:	00070713          	mv	a4,a4
a0007406:	8f99                	sub	a5,a5,a4
a0007408:	00f04d63          	bgtz	a5,a0007422 <board_init+0x26e>
a000740c:	a80007b7          	lui	a5,0xa8000
a0007410:	a8000737          	lui	a4,0xa8000
a0007414:	00078793          	mv	a5,a5
a0007418:	00070713          	mv	a4,a4
a000741c:	8f99                	sub	a5,a5,a4
a000741e:	00f05963          	blez	a5,a0007430 <board_init+0x27c>
a0007422:	a0008537          	lui	a0,0xa0008
a0007426:	3a050513          	addi	a0,a0,928 # a00083a0 <__psram_limit+0xf7c083a0>
a000742a:	b8cfe0ef          	jal	ra,a00057b6 <puts>
a000742e:	a001                	j	a000742e <board_init+0x27a>
a0007430:	8029                	srli	s0,s0,0xa
a0007432:	a00089b7          	lui	s3,0xa0008
a0007436:	85a2                	mv	a1,s0
a0007438:	3d898513          	addi	a0,s3,984 # a00083d8 <__psram_limit+0xf7c083d8>
a000743c:	baefe0ef          	jal	ra,a00057ea <printf>
a0007440:	3b29                	jal	a000715a <qcc74x_show_chipinfo>
a0007442:	00090863          	beqz	s2,a0007452 <board_init+0x29e>
a0007446:	a0008537          	lui	a0,0xa0008
a000744a:	41450513          	addi	a0,a0,1044 # a0008414 <__psram_limit+0xf7c08414>
a000744e:	b9cfe0ef          	jal	ra,a00057ea <printf>
a0007452:	85a2                	mv	a1,s0
a0007454:	3d898513          	addi	a0,s3,984
a0007458:	b92fe0ef          	jal	ra,a00057ea <printf>
a000745c:	20000437          	lui	s0,0x20000
a0007460:	10040793          	addi	a5,s0,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a0007464:	4bec                	lw	a1,84(a5)
a0007466:	4fb0                	lw	a2,88(a5)
a0007468:	a0008537          	lui	a0,0xa0008
a000746c:	42c50513          	addi	a0,a0,1068 # a000842c <__psram_limit+0xf7c0842c>
a0007470:	b7afe0ef          	jal	ra,a00057ea <printf>
a0007474:	58040413          	addi	s0,s0,1408
a0007478:	404c                	lw	a1,4(s0)
a000747a:	4410                	lw	a2,8(s0)
a000747c:	a0008537          	lui	a0,0xa0008
a0007480:	44c50513          	addi	a0,a0,1100 # a000844c <__psram_limit+0xf7c0844c>
a0007484:	b66fe0ef          	jal	ra,a00057ea <printf>
a0007488:	0848                	addi	a0,sp,20
a000748a:	c2fba097          	auipc	ra,0xc2fba
a000748e:	a56080e7          	jalr	-1450(ra) # 62fc0ee0 <HBN_Get_Xtal_Value>
a0007492:	200107b7          	lui	a5,0x20010
a0007496:	8847a783          	lw	a5,-1916(a5) # 2000f884 <remain_wifi_ram+0x1ffef884>
a000749a:	45d2                	lw	a1,20(sp)
a000749c:	0c37b78b          	extu	a5,a5,3,3
a00074a0:	e7a9                	bnez	a5,a00074ea <board_init+0x336>
a00074a2:	a0008637          	lui	a2,0xa0008
a00074a6:	39860613          	addi	a2,a2,920 # a0008398 <__psram_limit+0xf7c08398>
a00074aa:	a0008537          	lui	a0,0xa0008
a00074ae:	46c50513          	addi	a0,a0,1132 # a000846c <__psram_limit+0xf7c0846c>
a00074b2:	b38fe0ef          	jal	ra,a00057ea <printf>
a00074b6:	d3cfe0ef          	jal	ra,a00059f2 <log_start>
a00074ba:	8526                	mv	a0,s1
a00074bc:	c2fb9097          	auipc	ra,0xc2fb9
a00074c0:	526080e7          	jalr	1318(ra) # 62fc09e2 <qcc74x_irq_restore>
a00074c4:	a0008537          	lui	a0,0xa0008
a00074c8:	47c50513          	addi	a0,a0,1148 # a000847c <__psram_limit+0xf7c0847c>
a00074cc:	b1efe0ef          	jal	ra,a00057ea <printf>
a00074d0:	a0008537          	lui	a0,0xa0008
a00074d4:	49050513          	addi	a0,a0,1168 # a0008490 <__psram_limit+0xf7c08490>
a00074d8:	b12fe0ef          	jal	ra,a00057ea <printf>
a00074dc:	50f6                	lw	ra,124(sp)
a00074de:	5466                	lw	s0,120(sp)
a00074e0:	54d6                	lw	s1,116(sp)
a00074e2:	5946                	lw	s2,112(sp)
a00074e4:	59b6                	lw	s3,108(sp)
a00074e6:	6109                	addi	sp,sp,128
a00074e8:	8082                	ret
a00074ea:	a0008637          	lui	a2,0xa0008
a00074ee:	38c60613          	addi	a2,a2,908 # a000838c <__psram_limit+0xf7c0838c>
a00074f2:	bf65                	j	a00074aa <board_init+0x2f6>

a00074f4 <strlen>:
a00074f4:	87aa                	mv	a5,a0
a00074f6:	0007c703          	lbu	a4,0(a5)
a00074fa:	0785                	addi	a5,a5,1
a00074fc:	ff6d                	bnez	a4,a00074f6 <strlen+0x2>
a00074fe:	40a78533          	sub	a0,a5,a0
a0007502:	157d                	addi	a0,a0,-1
a0007504:	8082                	ret
	...

a0007508 <version_sdk>:
a0007508:	8298 a000                                   ....

a000750c <sw_image>:
a000750c:	8258 a000                                   X...

a0007510 <compile_time>:
a0007510:	8274 a000                                   t...

a0007514 <__usbh_class_info_end__>:
a0007514:	6f697067          	0x6f697067
a0007518:	0000                	unimp
a000751a:	0000                	unimp
a000751c:	30697073          	csrci	mcounteren,18
a0007520:	0000                	unimp
a0007522:	0000                	unimp
a0007524:	76616c53          	0x76616c53
a0007528:	3a65                	jal	a0006ee0 <Clock_Peripheral_Clock_Get+0x27c>
a000752a:	5320                	lw	s0,96(a4)
a000752c:	4950                	lw	a2,20(a0)
a000752e:	5020                	lw	s0,96(s0)
a0007530:	6e69                	lui	t3,0x1a
a0007532:	2c352073          	csrs	0x2c3,a0
a0007536:	2c36                	fld	fs8,328(sp)
a0007538:	20382c37          	lui	s8,0x20382
a000753c:	6552                	flw	fa0,20(sp)
a000753e:	6461                	lui	s0,0x18
a0007540:	2e79                	jal	a00078de <g_encodingTable+0x12>
a0007542:	5720                	lw	s0,104(a4)
a0007544:	6961                	lui	s2,0x18
a0007546:	6974                	flw	fa3,84(a0)
a0007548:	676e                	flw	fa4,216(sp)
a000754a:	6620                	flw	fs0,72(a2)
a000754c:	4420726f          	jal	tp,a000e98e <__etext_final+0x4956>
a0007550:	5448                	lw	a0,44(s0)
a0007552:	3131                	jal	a000715e <qcc74x_show_chipinfo+0x4>
a0007554:	6420                	flw	fs0,72(s0)
a0007556:	7461                	lui	s0,0xffff8
a0007558:	2e61                	jal	a00078f0 <g_encodingTable+0x24>
a000755a:	2e2e                	fld	ft8,200(sp)
a000755c:	0a0d                	addi	s4,s4,3
a000755e:	0000                	unimp
a0007560:	76616c53          	0x76616c53
a0007564:	3a65                	jal	a0006f1c <Clock_Peripheral_Clock_Get+0x2b8>
a0007566:	5220                	lw	s0,96(a2)
a0007568:	6365                	lui	t1,0x19
a000756a:	6965                	lui	s2,0x19
a000756c:	6576                	flw	fa0,92(sp)
a000756e:	2064                	fld	fs1,192(s0)
a0007570:	4844                	lw	s1,20(s0)
a0007572:	3154                	fld	fa3,160(a0)
a0007574:	2031                	jal	a0007580 <__usbh_class_info_end__+0x6c>
a0007576:	6144                	flw	fs1,4(a0)
a0007578:	6174                	flw	fa3,68(a0)
a000757a:	2d20                	fld	fs0,88(a0)
a000757c:	203e                	fld	ft0,456(sp)
a000757e:	6554                	flw	fa3,12(a0)
a0007580:	706d                	c.lui	zero,0xffffb
a0007582:	7265                	lui	tp,0xffff9
a0007584:	7461                	lui	s0,0xffff8
a0007586:	7275                	lui	tp,0xffffd
a0007588:	3a65                	jal	a0006f40 <Clock_Peripheral_Clock_Get+0x2dc>
a000758a:	2520                	fld	fs0,72(a0)
a000758c:	2064                	fld	fs1,192(s0)
a000758e:	48202c43          	fmadd.s	fs8,ft0,ft2,fs1,rdn
a0007592:	6d75                	lui	s10,0x1d
a0007594:	6469                	lui	s0,0x1a
a0007596:	7469                	lui	s0,0xffffa
a0007598:	3a79                	jal	a0006f36 <Clock_Peripheral_Clock_Get+0x2d2>
a000759a:	2520                	fld	fs0,72(a0)
a000759c:	2064                	fld	fs1,192(s0)
a000759e:	2525                	jal	a0007bc6 <crc32Tab+0x2ae>
a00075a0:	0a0d                	addi	s4,s4,3
a00075a2:	0000                	unimp
a00075a4:	6e66                	flw	ft8,88(sp)
a00075a6:	0069                	c.nop	26
a00075a8:	6e66                	flw	ft8,88(sp)
a00075aa:	2b69                	jal	a0007b44 <crc32Tab+0x22c>
a00075ac:	0000                	unimp
a00075ae:	0000                	unimp
a00075b0:	616e                	flw	ft2,216(sp)
a00075b2:	006e                	c.slli	zero,0x1b
a00075b4:	6e66                	flw	ft8,88(sp)
a00075b6:	2d69                	jal	a0007c50 <crc32Tab+0x338>
a00075b8:	0000                	unimp
a00075ba:	0000                	unimp
a00075bc:	6c29                	lui	s8,0xa
a00075be:	756c                	flw	fa1,108(a0)
a00075c0:	286e                	fld	fa6,216(sp)
a00075c2:	0000                	unimp
a00075c4:	6c29                	lui	s8,0xa
a00075c6:	6e69                	lui	t3,0x1a
a00075c8:	0028                	addi	a0,sp,8
	...
a00075d6:	3fe0                	fld	fs0,248(a5)
a00075d8:	509f79fb          	0x509f79fb
a00075dc:	3fd34413          	xori	s0,t1,1021
a00075e0:	8b60c8b3          	0x8b60c8b3
a00075e4:	8a28                	sb	a0,2(a2)
a00075e6:	3fc6                	fld	ft11,112(sp)
a00075e8:	0000                	unimp
a00075ea:	0000                	unimp
a00075ec:	0000                	unimp
a00075ee:	3ff8                	fld	fa4,248(a5)
a00075f0:	4361                	li	t1,24
a00075f2:	87a7636f          	jal	t1,9ff7d66c <__HeapLimit+0x3cf4d66c>
a00075f6:	3fd2                	fld	ft11,304(sp)
a00075f8:	a371                	j	a0007b84 <crc32Tab+0x26c>
a00075fa:	0979                	addi	s2,s2,30
a00075fc:	400a934f          	fnmadd.s	ft6,fs5,ft0,fs0,rtz
a0007600:	5516                	lw	a0,100(sp)
a0007602:	bbb5                	j	a000737e <board_init+0x1ca>
a0007604:	6bb1                	lui	s7,0xc
a0007606:	4002                	0x4002
a0007608:	fefa39ef          	jal	s3,9ffab5f6 <__HeapLimit+0x3cf7b5f6>
a000760c:	2e42                	fld	ft8,16(sp)
a000760e:	3fe6                	fld	ft11,120(sp)
a0007610:	0000                	unimp
a0007612:	0000                	unimp
a0007614:	0000                	unimp
a0007616:	402c                	lw	a1,64(s0)
a0007618:	0000                	unimp
a000761a:	0000                	unimp
a000761c:	0000                	unimp
a000761e:	4024                	lw	s1,64(s0)
a0007620:	0000                	unimp
a0007622:	0000                	unimp
a0007624:	0000                	unimp
a0007626:	4018                	lw	a4,0(s0)
a0007628:	0000                	unimp
a000762a:	0000                	unimp
a000762c:	0000                	unimp
a000762e:	4000                	lw	s0,0(s0)
a0007630:	0000                	unimp
a0007632:	0000                	unimp
a0007634:	0000                	unimp
a0007636:	3ff0                	fld	fa2,248(a5)
a0007638:	ffffffff          	0xffffffff
a000763c:	ffefffff          	0xffefffff
a0007640:	ffffffff          	0xffffffff
a0007644:	7fefffff          	0x7fefffff
a0007648:	0000                	unimp
a000764a:	0000                	unimp
a000764c:	cd65                	beqz	a0,a0007744 <powers_of_10+0xec>
a000764e:	41cd                	li	gp,19
a0007650:	0000                	unimp
a0007652:	0000                	unimp
a0007654:	cd65                	beqz	a0,a000774c <powers_of_10+0xf4>
a0007656:	c1cd                	beqz	a1,a00076f8 <powers_of_10+0xa0>

a0007658 <powers_of_10>:
a0007658:	0000 0000 0000 3ff0 0000 0000 0000 4024     .......?......$@
a0007668:	0000 0000 0000 4059 0000 0000 4000 408f     ......Y@.....@.@
a0007678:	0000 0000 8800 40c3 0000 0000 6a00 40f8     .......@.....j.@
a0007688:	0000 0000 8480 412e 0000 0000 12d0 4163     .......A......cA
a0007698:	0000 0000 d784 4197 0000 0000 cd65 41cd     .......A....e..A
a00076a8:	0000 2000 a05f 4202 0000 e800 4876 4237     ... _..B....vH7B
a00076b8:	0000 a200 1a94 426d 0000 e540 309c 42a2     ......mB..@..0.B
a00076c8:	0000 1e90 bcc4 42d6 0000 2634 6bf5 430c     .......B..4&.k.C
a00076d8:	8000 37e0 c379 4341 a000 85d8 3457 4376     ...7y.AC....W4vC
a00076e8:	6c74 6673 615f 6464 705f 6f6f 3a6c 4d20     tlsf_add_pool: M
a00076f8:	6d65 726f 2079 756d 7473 6220 2065 6c61     emory must be al
a0007708:	6769 656e 2064 7962 2520 2075 7962 6574     igned by %u byte
a0007718:	2e73 000a 6c74 6673 615f 6464 705f 6f6f     s...tlsf_add_poo
a0007728:	3a6c 4d20 6d65 726f 2079 6973 657a 6d20     l: Memory size m
a0007738:	7375 2074 6562 6220 7465 6577 6e65 2520     ust be between %
a0007748:	2075 6e61 2064 7525 6220 7479 7365 0a2e     u and %u bytes..
a0007758:	0000 0000 6c74 6673 635f 6572 7461 3a65     ....tlsf_create:
a0007768:	4d20 6d65 726f 2079 756d 7473 6220 2065      Memory must be 
a0007778:	6c61 6769 656e 2064 6f74 2520 2075 7962     aligned to %u by
a0007788:	6574 2e73 000a 0000 0a0d 6863 6365 206b     tes.......check 
a0007798:	7562 6c69 5f64 6469 7720 7469 2068 7260     build_id with `r
a00077a8:	7369 7663 3436 752d 6b6e 6f6e 6e77 652d     iscv64-unknown-e
a00077b8:	666c 722d 6165 6564 666c 2d20 206e 2e2a     lf-readelf -n *.
a00077c8:	6c65 6066 6f20 7475 7570 2074 0a0d 0000     elf` output ....
a00077d8:	7562 6c69 5f64 6469 203a 3025 7832 3025     build_id: %02x%0
a00077e8:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a00077f8:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0007808:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0007818:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0007828:	7832 3025 7832 3025 7832 0a0d 0000 0000     2x%02x%02x......
a0007838:	7270 6465 6665 6e69 6465 0000 0a0d 2b2d     predefined....-+
a0007848:	2b2d 2b2d 202d 4351 3743 7834 4320 524f     -+-+- QCC74x COR
a0007858:	4445 4d55 2050 4e45 2044 2d2b 2d2b 2d2b     EDUMP END +-+-+-
a0007868:	0d2b 000a 0a0d 2b2d 2b2d 2b2d 202d 4351     +.....-+-+-+- QC
a0007878:	3743 7834 4320 524f 4445 4d55 2050 3076     C74x COREDUMP v0
a0007888:	302e 312e 2b20 2b2d 2b2d 2b2d 0a0d 0000     .0.1 +-+-+-+....
a0007898:	0a0d 2d2d 2d2d 2d2d 4420 5441 2041 4542     ..------ DATA BE
a00078a8:	4947 204e 0000 0000 2d20 2d2d 2d2d 0d2d     GIN .... ------.
a00078b8:	000a 0000 0a0d 2d2d 2d2d 2d2d 4520 444e     ......------ END
a00078c8:	0020 0000                                    ...

a00078cc <g_encodingTable>:
a00078cc:	4241 4443 4645 4847 4a49 4c4b 4e4d 504f     ABCDEFGHIJKLMNOP
a00078dc:	5251 5453 5655 5857 5a59 6261 6463 6665     QRSTUVWXYZabcdef
a00078ec:	6867 6a69 6c6b 6e6d 706f 7271 7473 7675     ghijklmnopqrstuv
a00078fc:	7877 7a79 3130 3332 3534 3736 3938 2f2b     wxyz0123456789+/

a000790c <g_modTable>:
a000790c:	0000 0000 0002 0000 0001 0000               ............

a0007918 <crc32Tab>:
a0007918:	0000 0000 3096 7707 612c ee0e 51ba 9909     .....0.w,a...Q..
a0007928:	c419 076d f48f 706a a535 e963 95a3 9e64     ..m...jp5.c...d.
a0007938:	8832 0edb b8a4 79dc e91e e0d5 d988 97d2     2......y........
a0007948:	4c2b 09b6 7cbd 7eb1 2d07 e7b8 1d91 90bf     +L...|.~.-......
a0007958:	1064 1db7 20f2 6ab0 7148 f3b9 41de 84be     d.... .jHq...A..
a0007968:	d47d 1ada e4eb 6ddd b551 f4d4 85c7 83d3     }......mQ.......
a0007978:	9856 136c a8c0 646b f97a fd62 c9ec 8a65     V.l...kdz.b...e.
a0007988:	5c4f 1401 6cd9 6306 3d63 fa0f 0df5 8d08     O\...l.cc=......
a0007998:	20c8 3b6e 105e 4c69 41e4 d560 7172 a267     . n;^.iL.A`.rqg.
a00079a8:	e4d1 3c03 d447 4b04 85fd d20d b56b a50a     ...<G..K....k...
a00079b8:	a8fa 35b5 986c 42b2 c9d6 dbbb f940 acbc     ...5l..B....@...
a00079c8:	6ce3 32d8 5c75 45df 0dcf dcd6 3d59 abd1     .l.2u\.E....Y=..
a00079d8:	30ac 26d9 003a 51de 5180 c8d7 6116 bfd0     .0.&:..Q.Q...a..
a00079e8:	f4b5 21b4 c423 56b3 9599 cfba a50f b8bd     ...!#..V........
a00079f8:	b89e 2802 8808 5f05 d9b2 c60c e924 b10b     ...(..._....$...
a0007a08:	7c87 2f6f 4c11 5868 1dab c161 2d3d b666     .|o/.LhX..a.=-f.
a0007a18:	4190 76dc 7106 01db 20bc 98d2 102a efd5     .A.v.q... ..*...
a0007a28:	8589 71b1 b51f 06b6 e4a5 9fbf d433 e8b8     ...q........3...
a0007a38:	c9a2 7807 f934 0f00 a88e 9609 9818 e10e     ...x4...........
a0007a48:	0dbb 7f6a 3d2d 086d 6c97 9164 5c01 e663     ..j.-=m..ld..\c.
a0007a58:	51f4 6b6b 6162 1c6c 30d8 8565 004e f262     .Qkkbal..0e.N.b.
a0007a68:	95ed 6c06 a57b 1b01 f4c1 8208 c457 f50f     ...l{.......W...
a0007a78:	d9c6 65b0 e950 12b7 b8ea 8bbe 887c fcb9     ...eP.......|...
a0007a88:	1ddf 62dd 2d49 15da 7cf3 8cd3 4c65 fbd4     ...bI-...|..eL..
a0007a98:	6158 4db2 51ce 3ab5 0074 a3bc 30e2 d4bb     Xa.M.Q.:t....0..
a0007aa8:	a541 4adf 95d7 3dd8 c46d a4d1 f4fb d3d6     A..J...=m.......
a0007ab8:	e96a 4369 d9fc 346e 8846 ad67 b8d0 da60     j.iC..n4F.g...`.
a0007ac8:	2d73 4404 1de5 3303 4c5f aa0a 7cc9 dd0d     s-.D...3_L...|..
a0007ad8:	713c 5005 41aa 2702 1010 be0b 2086 c90c     <q.P.A.'..... ..
a0007ae8:	b525 5768 85b3 206f d409 b966 e49f ce61     %.hW..o ..f...a.
a0007af8:	f90e 5ede c998 29d9 9822 b0d0 a8b4 c7d7     ...^...)".......
a0007b08:	3d17 59b3 0d81 2eb4 5c3b b7bd 6cad c0ba     .=.Y....;\...l..
a0007b18:	8320 edb8 b3b6 9abf e20c 03b6 d29a 74b1      ..............t
a0007b28:	4739 ead5 77af 9dd2 2615 04db 1683 73dc     9G...w...&.....s
a0007b38:	0b12 e363 3b84 9464 6a3e 0d6d 5aa8 7a6a     ..c..;d.>jm..Zjz
a0007b48:	cf0b e40e ff9d 9309 ae27 0a00 9eb1 7d07     ........'......}
a0007b58:	9344 f00f a3d2 8708 f268 1e01 c2fe 6906     D.......h......i
a0007b68:	575d f762 67cb 8065 3671 196c 06e7 6e6b     ]Wb..ge.q6l...kn
a0007b78:	1b76 fed4 2be0 89d3 7a5a 10da 4acc 67dd     v....+..Zz...J.g
a0007b88:	df6f f9b9 eff9 8ebe be43 17b7 8ed5 60b0     o.......C......`
a0007b98:	a3e8 d6d6 937e a1d1 c2c4 38d8 f252 4fdf     ....~......8R..O
a0007ba8:	67f1 d1bb 5767 a6bc 06dd 3fb5 364b 48b2     .g..gW.....?K6.H
a0007bb8:	2bda d80d 1b4c af0a 4af6 3603 7a60 4104     .+..L....J.6`z.A
a0007bc8:	efc3 df60 df55 a867 8eef 316e be79 4669     ..`.U.g...n1y.iF
a0007bd8:	b38c cb61 831a bc66 d2a0 256f e236 5268     ..a...f...o%6.hR
a0007be8:	7795 cc0c 4703 bb0b 16b9 2202 262f 5505     .w...G....."/&.U
a0007bf8:	3bbe c5ba 0b28 b2bd 5a92 2bb4 6a04 5cb3     .;..(....Z.+.j.\
a0007c08:	ffa7 c2d7 cf31 b5d0 9e8b 2cd9 ae1d 5bde     ....1......,...[
a0007c18:	c2b0 9b64 f226 ec63 a39c 756a 930a 026d     ..d.&.c...ju..m.
a0007c28:	06a9 9c09 363f eb0e 6785 7207 5713 0500     ....?6...g.r.W..
a0007c38:	4a82 95bf 7a14 e2b8 2bae 7bb1 1b38 0cb6     .J...z...+.{8...
a0007c48:	8e9b 92d2 be0d e5d5 efb7 7cdc df21 0bdb     ...........|!...
a0007c58:	d2d4 86d3 e242 f1d4 b3f8 68dd 836e 1fda     ....B......hn...
a0007c68:	16cd 81be 265b f6b9 77e1 6fb0 4777 18b7     ....[&...w.owG..
a0007c78:	5ae6 8808 6a70 ff0f 3bca 6606 0b5c 1101     .Z..pj...;.f\...
a0007c88:	9eff 8f65 ae69 f862 ffd3 616b cf45 166c     ..e.i.b...kaE.l.
a0007c98:	e278 a00a d2ee d70d 8354 4e04 b3c2 3903     x.......T..N...9
a0007ca8:	2661 a767 16f7 d060 474d 4969 77db 3e6e     a&g...`.MGiI.wn>
a0007cb8:	6a4a aed1 5adc d9d6 0b66 40df 3bf0 37d8     Jj...Z..f..@.;.7
a0007cc8:	ae53 a9bc 9ec5 debb cf7f 47b2 ffe9 30b5     S..........G...0
a0007cd8:	f21c bdbd c28a caba 9330 53b3 a3a6 24b4     ........0..S...$
a0007ce8:	3605 bad0 0693 cdd7 5729 54de 67bf 23d9     .6......)W.T.g.#
a0007cf8:	7a2e b366 4ab8 c461 1b02 5d68 2b94 2a6f     .zf..Ja...h].+o*
a0007d08:	be37 b40b 8ea1 c30c df1b 5a05 ef8d 2d02     7..........Z...-

a0007d18 <hex_asc_upper>:
a0007d18:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
a0007d28:	0000 0000 7269 2071 253a 2064 6e75 6572     ....irq :%d unre
a0007d38:	6967 7473 7265 6465 0a0d 0000 6461 0063     gistered....adc.
a0007d48:	6164 0063 6665 635f 7274 006c 6175 7472     dac.ef_ctrl.uart
a0007d58:	0030 0000 6175 7472 0031 0000 7770 5f6d     0...uart1...pwm_
a0007d68:	3276 305f 0000 0000 6d64 3061 635f 3068     v2_0....dma0_ch0
a0007d78:	0000 0000 6d64 3061 635f 3168 0000 0000     ....dma0_ch1....
a0007d88:	6d64 3061 635f 3268 0000 0000 6d64 3061     dma0_ch2....dma0
a0007d98:	635f 3368 0000 0000 3269 3063 0000 0000     _ch3....i2c0....
a0007da8:	3269 3163 0000 0000 3269 3073 0000 0000     i2c1....i2s0....
a0007db8:	6974 656d 3072 0000 6974 656d 3172 0000     timer0..timer1..
a0007dc8:	7472 0063 6561 0073 6873 0061 7274 676e     rtc.aes.sha.trng
a0007dd8:	0000 0000 6b70 0061 6d65 6361 0030 0000     ....pka.emac0...
a0007de8:	6177 6374 6468 676f 0000 0000 6b63 0073     watchdog....cks.
a0007df8:	6a6d 6570 0067 0000 7269 7872 0000 0000     mjpeg...irrx....
a0007e08:	6163 306d 0000 0000 6163 316d 0000 0000     cam0....cam1....
a0007e18:	7561 6461 0063 0000 7561 6164 0063 0000     auadc...audac...
a0007e28:	6473 6f69 0032 0000 6473 0068 6264 0069     sdio2...sdh.dbi.
a0007e38:	6c70 6d66 645f 616d 635f 3068 0000 0000     plfm_dma_ch0....
a0007e48:	6c70 6d66 645f 616d 635f 3168 0000 0000     plfm_dma_ch1....
a0007e58:	6c70 6d66 645f 616d 635f 3268 0000 0000     plfm_dma_ch2....
a0007e68:	6c70 6d66 645f 616d 635f 3368 0000 0000     plfm_dma_ch3....
a0007e78:	6c70 6d66 645f 616d 635f 3468 0000 0000     plfm_dma_ch4....
a0007e88:	6f77 0000 7375 5f62 3276 0000 6e49 7473     wo..usb_v2..Inst
a0007e98:	7572 7463 6f69 206e 6461 7264 7365 2073     ruction address 
a0007ea8:	696d 6173 696c 6e67 6465 0000 6e49 7473     misaligned..Inst
a0007eb8:	7572 7463 6f69 206e 6361 6563 7373 6620     ruction access f
a0007ec8:	7561 746c 0000 0000 6c49 656c 6167 206c     ault....Illegal 
a0007ed8:	6e69 7473 7572 7463 6f69 006e 7242 6165     instruction.Brea
a0007ee8:	706b 696f 746e 0000 6f4c 6461 6120 6464     kpoint..Load add
a0007ef8:	6572 7373 6d20 7369 6c61 6769 656e 0064     ress misaligned.
a0007f08:	6f4c 6461 6120 6363 7365 2073 6166 6c75     Load access faul
a0007f18:	0074 0000 7453 726f 2f65 4d41 204f 6461     t...Store/AMO ad
a0007f28:	7264 7365 2073 696d 6173 696c 6e67 6465     dress misaligned
a0007f38:	0000 0000 7453 726f 2f65 4d41 204f 6361     ....Store/AMO ac
a0007f48:	6563 7373 6620 7561 746c 0000 6e45 6976     cess fault..Envi
a0007f58:	6f72 6d6e 6e65 2074 6163 6c6c 6620 6f72     ronment call fro
a0007f68:	206d 2d55 6f6d 6564 0000 0000 6e45 6976     m U-mode....Envi
a0007f78:	6f72 6d6e 6e65 2074 6163 6c6c 6620 6f72     ronment call fro
a0007f88:	206d 2d53 6f6d 6564 0000 0000 5352 4456     m S-mode....RSVD
a0007f98:	0000 0000 6e45 6976 6f72 6d6e 6e65 2074     ....Environment 
a0007fa8:	6163 6c6c 6620 6f72 206d 2d4d 6f6d 6564     call from M-mode
a0007fb8:	0000 0000 6e49 7473 7572 7463 6f69 206e     ....Instruction 
a0007fc8:	6170 6567 6620 7561 746c 0000 6f4c 6461     page fault..Load
a0007fd8:	7020 6761 2065 6166 6c75 0074 7453 726f      page fault.Stor
a0007fe8:	2f65 4d41 204f 6170 6567 6620 7561 746c     e/AMO page fault
a0007ff8:	0000 0000 7865 6563 7470 6f69 5f6e 6e65     ....exception_en
a0008008:	7274 0d79 000a 0000 636d 7561 6573 253d     try.....mcause=%
a0008018:	3830 0d78 000a 0000 656d 6370 253a 3830     08x.....mepc:%08
a0008028:	0d78 000a 746d 6176 3a6c 3025 7838 0a0d     x...mtval:%08x..
a0008038:	0000 0000 7325 0a0d 0000 0000 7e94 a000     ....%s.......~..
a0008048:	7eb4 a000 7ed0 a000 7ee4 a000 7ef0 a000     .~...~...~...~..
a0008058:	7f08 a000 7f1c a000 7f3c a000 7f54 a000     ........<...T...
a0008068:	7f74 a000 7f94 a000 7f9c a000 7fbc a000     t...............
a0008078:	7fd4 a000 7f94 a000 7fe4 a000               ............

a0008084 <CSWTCH.86>:
a0008084:	0000 0000 3600 016e 4800 01e8 f000 0249     .....6n..H....I.
a0008094:	5a00 0262 ba80 018c 4800 01e8 4651 344e     .Zb......H..QFN4
a00080a4:	0030 0000 4651 344e 4d30 0000 4651 354e     0...QFN40M..QFN5
a00080b4:	0036 0000 5245 4f52 0052 0000 4f4e 0000     6...ERROR...NO..
a00080c4:	4d32 0042 4d34 0042 4d38 0042 4257 345f     2MB.4MB.8MB.WB_4
a00080d4:	424d 0000 4257 385f 424d 0000 4257 315f     MB..WB_8MB..WB_1
a00080e4:	4d36 0042 5353 0000 5425 2b54 0000 0000     6MB.SS..%TT+....
a00080f4:	5325 0053 5454 0000 4625 0046 4646 0000     %SS.TT..%FF.FF..
a0008104:	646c 316f 0035 0000 7069 6174 0074 0000     ldo15...iptat...
a0008114:	6369 0078 6364 6364 745f 6972 006d 0000     icx.dcdc_trim...
a0008124:	646c 316f 5f38 6573 006c 0000 646c 316f     ldo18_sel...ldo1
a0008134:	5f38 7274 6d69 0000 646c 336f 5f33 7274     8_trim..ldo33_tr
a0008144:	6d69 0000 646c 316f 5f31 6974 6d72 0000     im..ldo11_tirm..
a0008154:	6372 3233 006d 0000 7068 705f 666f 7366     rc32m...hp_poffs
a0008164:	7465 0030 7068 705f 666f 7366 7465 0031     et0.hp_poffset1.
a0008174:	7068 705f 666f 7366 7465 0032 706c 705f     hp_poffset2.lp_p
a0008184:	666f 7366 7465 0030 706c 705f 666f 7366     offset0.lp_poffs
a0008194:	7465 0031 706c 705f 666f 7366 7465 0032     et1.lp_poffset2.
a00081a4:	7a62 705f 666f 7366 7465 0030 7a62 705f     bz_poffset0.bz_p
a00081b4:	666f 7366 7465 0031 7a62 705f 666f 7366     offset1.bz_poffs
a00081c4:	7465 0032 6d74 5f70 706d 0030 6d74 5f70     et2.tmp_mp0.tmp_
a00081d4:	706d 0031 6d74 5f70 706d 0032 7561 6461     mp1.tmp_mp2.auad
a00081e4:	5f63 6167 6e69 0000 7561 6461 5f63 666f     c_gain..auadc_of
a00081f4:	7366 7465 0000 0000 7370 6172 5f6d 7274     fset....psram_tr
a0008204:	6d69 0000 6372 3233 006b 0000 7478 6c61     im..rc32k...xtal
a0008214:	0030 0000 7478 6c61 0031 0000 7478 6c61     0...xtal1...xtal
a0008224:	0032 0000 6364 6364 645f 7369 0000 0000     2...dcdc_dis....
a0008234:	6364 6364 765f 756f 0074 0000 646c 316f     dcdc_vout...ldo1
a0008244:	5f38 7962 6170 7373 0000 0000 7375 3262     8_bypass....usb2
a0008254:	0030 0000 5753 6920 616d 6567 733a 6970     0...SW image:spi
a0008264:	645f 616d 715f 6363 3437 6478 006b 0000     _dma_qcc74xdk...
a0008274:	6f63 706d 6c69 5f65 6974 656d 463a 6265     compile_time:Feb
a0008284:	2020 2033 3032 3632 3120 3a38 3734 353a       3 2026 18:47:5
a0008294:	0036 0000 6f63 706d 6e6f 6e65 5f74 6576     6...component_ve
a00082a4:	7372 6f69 5f6e 6473 5f6b 2e32 2e30 3739     rsion_sdk_2.0.97
a00082b4:	0000 0000 6546 2062 3320 3220 3230 0036     ....Feb  3 2026.
a00082c4:	3831 343a 3a37 3735 0000 0000 7542 6c69     18:47:57....Buil
a00082d4:	3a64 7325 252c 0d73 000a 0000 6556 7372     d:%s,%s.....Vers
a00082e4:	6f69 206e 666f 7520 6573 2064 6f63 706d     ion of used comp
a00082f4:	6e6f 6e65 7374 0d3a 000a 0000 5609 7265     onents:......Ver
a0008304:	6973 6e6f 203a 0000 3d3d 3d3d 3d3d 3d3d     sion: ..========
a0008314:	6320 6968 2070 6e69 6f66 3d20 3d3d 3d3d      chip info =====
a0008324:	3d3d 0d3d 000a 0000 6170 6b63 6761 2065     ===.....package 
a0008334:	2020 2020 2020 2020 2520 0d73 000a 0000              %s.....
a0008344:	6c66 7361 5f68 6e69 6f66 2020 2020 2020     flash_info      
a0008354:	2520 0d73 000a 0000 7370 6172 5f6d 6e69      %s.....psram_in
a0008364:	6f66 2020 2020 2020 2520 0d73 000a 0000     fo       %s.....
a0008374:	6576 7372 6f69 206e 2020 2020 2020 2020     version         
a0008384:	4120 6425 0a0d 0000 736f 6963 6c6c 7461      A%d....oscillat
a0008394:	726f 0000 7263 7379 6174 006c 7370 6172     or..crystal.psra
a00083a4:	206d 6164 6174 6120 726c 6165 7964 6520     m data already e
a00083b4:	6978 7473 2c73 7020 656c 7361 2065 6e65     xists, please en
a00083c4:	6261 656c 4320 4e4f 4946 5f47 5350 4152     able CONFIG_PSRA
a00083d4:	0d4d 000a 7964 616e 696d 2063 656d 6f6d     M...dynamic memo
a00083e4:	7972 6920 696e 2074 7573 6363 7365 2c73     ry init success,
a00083f4:	6f20 7263 6d61 6820 6165 2070 6973 657a      ocram heap size
a0008404:	3d20 2520 2064 624b 7479 2065 0a0d 0000      = %d Kbyte ....
a0008414:	6c66 7361 2068 6e69 7469 6620 6961 216c     flash init fail!
a0008424:	2121 0a0d 0000 0000 6175 7472 2020 6973     !!......uart  si
a0008434:	3167 253a 3830 2c78 7320 6769 3a32 3025     g1:%08x, sig2:%0
a0008444:	7838 0a0d 0000 0000 6c63 636f 206b 6567     8x......clock ge
a0008454:	316e 253a 3830 2c78 6720 6e65 3a32 3025     n1:%08x, gen2:%0
a0008464:	7838 0a0d 0000 0000 7478 6c61 253a 4864     8x......xtal:%dH
a0008474:	287a 7325 0d29 000a 6f62 7261 2064 6e69     z(%s)...board in
a0008484:	7469 6420 6e6f 0d65 000a 0000 3d3d 3d3d     it done.....====
a0008494:	3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d     ================
a00084a4:	3d3d 3d3d 3d3d 0d3d 000a 0000 27a4 a000     =======......'..
a00084b4:	29b6 a000 27a0 a000 29b6 a000 29a6 a000     .)...'...)...)..
a00084c4:	29b6 a000 27a0 a000 27a8 a000 27a8 a000     .)...'...'...'..
a00084d4:	29a6 a000 27a0 a000 2784 a000 2784 a000     .)...'...'...'..
a00084e4:	2784 a000 27b2 a000 2f82 a000 2f82 a000     .'...'.../.../..
a00084f4:	2f9a a000 2f7c a000 2f7c a000 2d94 a000     ./..|/..|/...-..
a0008504:	2f9a a000 2f7c a000 2d94 a000 2f7c a000     ./..|/...-..|/..
a0008514:	2f9a a000 2f7a a000 2f7a a000 2f7a a000     ./..z/..z/..z/..
a0008524:	315c a000                                   \1..

a0008528 <__clz_tab>:
a0008528:	0100 0202 0303 0303 0404 0404 0404 0404     ................
a0008538:	0505 0505 0505 0505 0505 0505 0505 0505     ................
a0008548:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a0008558:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a0008568:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008578:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008588:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008598:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a00085a8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a00085b8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a00085c8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a00085d8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a00085e8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a00085f8:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008608:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008618:	0808 0808 0808 0808 0808 0808 0808 0808     ................

a0008628 <__init_array_end>:
a0008628:	0400                	addi	s0,sp,512
a000862a:	62fc                	flw	fa5,68(a3)
a000862c:	fc00                	fsw	fs0,56(s0)
a000862e:	0006                	c.slli	zero,0x1
a0008630:	0400                	addi	s0,sp,512
a0008632:	22fc                	fld	fa5,192(a3)
a0008634:	0000                	unimp
a0008636:	0000                	unimp
a0008638:	0000                	unimp
a000863a:	80002303          	lw	t1,-2048(zero) # fffff800 <__psram_limit+0x57bff800>
a000863e:	0000                	unimp
a0008640:	0000                	unimp
a0008642:	2801                	jal	a0008652 <__nocache_ram_load_addr+0x2>
a0008644:	0000                	unimp
a0008646:	0000                	unimp
a0008648:	ffffffff          	0xffffffff
a000864c:	ffffffff          	0xffffffff

Disassembly of section .itcm_region:

62fc0400 <arch_memcpy>:
62fc0400:	4781                	li	a5,0
62fc0402:	00f61363          	bne	a2,a5,62fc0408 <arch_memcpy+0x8>
62fc0406:	8082                	ret
62fc0408:	80f5c70b          	lrbu	a4,a1,a5,0
62fc040c:	00f5570b          	srb	a4,a0,a5,0
62fc0410:	0785                	addi	a5,a5,1
62fc0412:	bfc5                	j	62fc0402 <arch_memcpy+0x2>

62fc0414 <arch_memcpy4>:
62fc0414:	4781                	li	a5,0
62fc0416:	00f61363          	bne	a2,a5,62fc041c <arch_memcpy4+0x8>
62fc041a:	8082                	ret
62fc041c:	44f5c70b          	lrw	a4,a1,a5,2
62fc0420:	44f5570b          	srw	a4,a0,a5,2
62fc0424:	0785                	addi	a5,a5,1
62fc0426:	bfc5                	j	62fc0416 <arch_memcpy4+0x2>

62fc0428 <arch_memcpy_fast>:
62fc0428:	1141                	addi	sp,sp,-16
62fc042a:	00b567b3          	or	a5,a0,a1
62fc042e:	c422                	sw	s0,8(sp)
62fc0430:	c606                	sw	ra,12(sp)
62fc0432:	c226                	sw	s1,4(sp)
62fc0434:	c04a                	sw	s2,0(sp)
62fc0436:	8b8d                	andi	a5,a5,3
62fc0438:	842a                	mv	s0,a0
62fc043a:	e795                	bnez	a5,62fc0466 <arch_memcpy_fast+0x3e>
62fc043c:	84b2                	mv	s1,a2
62fc043e:	8209                	srli	a2,a2,0x2
62fc0440:	892e                	mv	s2,a1
62fc0442:	3fc9                	jal	62fc0414 <arch_memcpy4>
62fc0444:	ffc4f793          	andi	a5,s1,-4
62fc0448:	00979963          	bne	a5,s1,62fc045a <arch_memcpy_fast+0x32>
62fc044c:	40b2                	lw	ra,12(sp)
62fc044e:	8522                	mv	a0,s0
62fc0450:	4422                	lw	s0,8(sp)
62fc0452:	4492                	lw	s1,4(sp)
62fc0454:	4902                	lw	s2,0(sp)
62fc0456:	0141                	addi	sp,sp,16
62fc0458:	8082                	ret
62fc045a:	80f9470b          	lrbu	a4,s2,a5,0
62fc045e:	00f4570b          	srb	a4,s0,a5,0
62fc0462:	0785                	addi	a5,a5,1
62fc0464:	b7d5                	j	62fc0448 <arch_memcpy_fast+0x20>
62fc0466:	3f69                	jal	62fc0400 <arch_memcpy>
62fc0468:	b7d5                	j	62fc044c <arch_memcpy_fast+0x24>

62fc046a <arch_memcmp>:
62fc046a:	4781                	li	a5,0
62fc046c:	00c79463          	bne	a5,a2,62fc0474 <arch_memcmp+0xa>
62fc0470:	4701                	li	a4,0
62fc0472:	a811                	j	62fc0486 <arch_memcmp+0x1c>
62fc0474:	80f5480b          	lrbu	a6,a0,a5,0
62fc0478:	80f5c68b          	lrbu	a3,a1,a5,0
62fc047c:	0785                	addi	a5,a5,1
62fc047e:	40d80733          	sub	a4,a6,a3
62fc0482:	fed805e3          	beq	a6,a3,62fc046c <arch_memcmp+0x2>
62fc0486:	853a                	mv	a0,a4
62fc0488:	8082                	ret

62fc048a <qcc74x_soft_crc32_ex>:
62fc048a:	edb886b7          	lui	a3,0xedb88
62fc048e:	fff54513          	not	a0,a0
62fc0492:	4701                	li	a4,0
62fc0494:	32068693          	addi	a3,a3,800 # edb88320 <__psram_limit+0x45788320>
62fc0498:	00c71563          	bne	a4,a2,62fc04a2 <qcc74x_soft_crc32_ex+0x18>
62fc049c:	fff54513          	not	a0,a0
62fc04a0:	8082                	ret
62fc04a2:	80e5c78b          	lrbu	a5,a1,a4,0
62fc04a6:	8d3d                	xor	a0,a0,a5
62fc04a8:	47a1                	li	a5,8
62fc04aa:	00157813          	andi	a6,a0,1
62fc04ae:	8105                	srli	a0,a0,0x1
62fc04b0:	00080363          	beqz	a6,62fc04b6 <qcc74x_soft_crc32_ex+0x2c>
62fc04b4:	8d35                	xor	a0,a0,a3
62fc04b6:	17fd                	addi	a5,a5,-1
62fc04b8:	0ff7f793          	zext.b	a5,a5
62fc04bc:	f7fd                	bnez	a5,62fc04aa <qcc74x_soft_crc32_ex+0x20>
62fc04be:	0705                	addi	a4,a4,1
62fc04c0:	bfe1                	j	62fc0498 <qcc74x_soft_crc32_ex+0xe>

62fc04c2 <qcc74x_soft_crc32>:
62fc04c2:	862e                	mv	a2,a1
62fc04c4:	85aa                	mv	a1,a0
62fc04c6:	4501                	li	a0,0
62fc04c8:	b7c9                	j	62fc048a <qcc74x_soft_crc32_ex>

62fc04ca <qcc74x_ef_ctrl_busy>:
62fc04ca:	200577b7          	lui	a5,0x20057
62fc04ce:	8007a503          	lw	a0,-2048(a5) # 20056800 <remain_wifi_ram+0x20036800>
62fc04d2:	0825350b          	extu	a0,a0,2,2
62fc04d6:	8082                	ret

62fc04d8 <qcc74x_ef_ctrl_switch_ahb_clk_r0>:
62fc04d8:	1141                	addi	sp,sp,-16
62fc04da:	c422                	sw	s0,8(sp)
62fc04dc:	00027437          	lui	s0,0x27
62fc04e0:	c226                	sw	s1,4(sp)
62fc04e2:	c04a                	sw	s2,0(sp)
62fc04e4:	c606                	sw	ra,12(sp)
62fc04e6:	892a                	mv	s2,a0
62fc04e8:	10040413          	addi	s0,s0,256 # 27100 <remain_wifi_ram+0x7100>
62fc04ec:	4485                	li	s1,1
62fc04ee:	854a                	mv	a0,s2
62fc04f0:	3fe9                	jal	62fc04ca <qcc74x_ef_ctrl_busy>
62fc04f2:	00951463          	bne	a0,s1,62fc04fa <qcc74x_ef_ctrl_switch_ahb_clk_r0+0x22>
62fc04f6:	147d                	addi	s0,s0,-1
62fc04f8:	f87d                	bnez	s0,62fc04ee <qcc74x_ef_ctrl_switch_ahb_clk_r0+0x16>
62fc04fa:	4422                	lw	s0,8(sp)
62fc04fc:	0024c7b7          	lui	a5,0x24c
62fc0500:	40b2                	lw	ra,12(sp)
62fc0502:	4492                	lw	s1,4(sp)
62fc0504:	4902                	lw	s2,0(sp)
62fc0506:	20057737          	lui	a4,0x20057
62fc050a:	f0078793          	addi	a5,a5,-256 # 24bf00 <remain_wifi_ram+0x22bf00>
62fc050e:	80f72023          	sw	a5,-2048(a4) # 20056800 <remain_wifi_ram+0x20036800>
62fc0512:	4511                	li	a0,4
62fc0514:	0141                	addi	sp,sp,16
62fc0516:	2d10006f          	j	62fc0fe6 <arch_delay_us>

62fc051a <qcc74x_ef_ctrl_load_efuse_r0>:
62fc051a:	1141                	addi	sp,sp,-16
62fc051c:	c606                	sw	ra,12(sp)
62fc051e:	3f6d                	jal	62fc04d8 <qcc74x_ef_ctrl_switch_ahb_clk_r0>
62fc0520:	200567b7          	lui	a5,0x20056
62fc0524:	20078713          	addi	a4,a5,512 # 20056200 <remain_wifi_ram+0x20036200>
62fc0528:	5847d00b          	swia	zero,(a5),4,0
62fc052c:	fee79ee3          	bne	a5,a4,62fc0528 <qcc74x_ef_ctrl_load_efuse_r0+0xe>
62fc0530:	0024c7b7          	lui	a5,0x24c
62fc0534:	f0078693          	addi	a3,a5,-256 # 24bf00 <remain_wifi_ram+0x22bf00>
62fc0538:	20057737          	lui	a4,0x20057
62fc053c:	80d72023          	sw	a3,-2048(a4) # 20056800 <remain_wifi_ram+0x20036800>
62fc0540:	f1078793          	addi	a5,a5,-240
62fc0544:	80f72023          	sw	a5,-2048(a4)
62fc0548:	4529                	li	a0,10
62fc054a:	29d000ef          	jal	ra,62fc0fe6 <arch_delay_us>
62fc054e:	000277b7          	lui	a5,0x27
62fc0552:	10078793          	addi	a5,a5,256 # 27100 <remain_wifi_ram+0x7100>
62fc0556:	20057637          	lui	a2,0x20057
62fc055a:	4689                	li	a3,2
62fc055c:	80062703          	lw	a4,-2048(a2) # 20056800 <remain_wifi_ram+0x20036800>
62fc0560:	17fd                	addi	a5,a5,-1
62fc0562:	c781                	beqz	a5,62fc056a <qcc74x_ef_ctrl_load_efuse_r0+0x50>
62fc0564:	8b19                	andi	a4,a4,6
62fc0566:	fed71be3          	bne	a4,a3,62fc055c <qcc74x_ef_ctrl_load_efuse_r0+0x42>
62fc056a:	40b2                	lw	ra,12(sp)
62fc056c:	0024c7b7          	lui	a5,0x24c
62fc0570:	20057737          	lui	a4,0x20057
62fc0574:	f0078793          	addi	a5,a5,-256 # 24bf00 <remain_wifi_ram+0x22bf00>
62fc0578:	80f72023          	sw	a5,-2048(a4) # 20056800 <remain_wifi_ram+0x20036800>
62fc057c:	0141                	addi	sp,sp,16
62fc057e:	8082                	ret

62fc0580 <qcc74x_ef_ctrl_read_direct>:
62fc0580:	7179                	addi	sp,sp,-48
62fc0582:	d04a                	sw	s2,32(sp)
62fc0584:	d606                	sw	ra,44(sp)
62fc0586:	d422                	sw	s0,40(sp)
62fc0588:	d226                	sw	s1,36(sp)
62fc058a:	ce4e                	sw	s3,28(sp)
62fc058c:	cc52                	sw	s4,24(sp)
62fc058e:	20000793          	li	a5,512
62fc0592:	892a                	mv	s2,a0
62fc0594:	00b7ea63          	bltu	a5,a1,62fc05a8 <qcc74x_ef_ctrl_read_direct+0x28>
62fc0598:	84b6                	mv	s1,a3
62fc059a:	04d5968b          	addsl	a3,a1,a3,2
62fc059e:	842e                	mv	s0,a1
62fc05a0:	00d7e463          	bltu	a5,a3,62fc05a8 <qcc74x_ef_ctrl_read_direct+0x28>
62fc05a4:	89b2                	mv	s3,a2
62fc05a6:	ee19                	bnez	a2,62fc05c4 <qcc74x_ef_ctrl_read_direct+0x44>
62fc05a8:	c339                	beqz	a4,62fc05ee <qcc74x_ef_ctrl_read_direct+0x6e>
62fc05aa:	2905                	jal	62fc09da <qcc74x_irq_save>
62fc05ac:	842a                	mv	s0,a0
62fc05ae:	854a                	mv	a0,s2
62fc05b0:	37ad                	jal	62fc051a <qcc74x_ef_ctrl_load_efuse_r0>
62fc05b2:	8522                	mv	a0,s0
62fc05b4:	5422                	lw	s0,40(sp)
62fc05b6:	50b2                	lw	ra,44(sp)
62fc05b8:	5492                	lw	s1,36(sp)
62fc05ba:	5902                	lw	s2,32(sp)
62fc05bc:	49f2                	lw	s3,28(sp)
62fc05be:	4a62                	lw	s4,24(sp)
62fc05c0:	6145                	addi	sp,sp,48
62fc05c2:	a105                	j	62fc09e2 <qcc74x_irq_restore>
62fc05c4:	00f59363          	bne	a1,a5,62fc05ca <qcc74x_ef_ctrl_read_direct+0x4a>
62fc05c8:	4481                	li	s1,0
62fc05ca:	c63a                	sw	a4,12(sp)
62fc05cc:	2139                	jal	62fc09da <qcc74x_irq_save>
62fc05ce:	8a2a                	mv	s4,a0
62fc05d0:	c899                	beqz	s1,62fc05e6 <qcc74x_ef_ctrl_read_direct+0x66>
62fc05d2:	4732                	lw	a4,12(sp)
62fc05d4:	854a                	mv	a0,s2
62fc05d6:	cb11                	beqz	a4,62fc05ea <qcc74x_ef_ctrl_read_direct+0x6a>
62fc05d8:	3789                	jal	62fc051a <qcc74x_ef_ctrl_load_efuse_r0>
62fc05da:	200565b7          	lui	a1,0x20056
62fc05de:	8626                	mv	a2,s1
62fc05e0:	95a2                	add	a1,a1,s0
62fc05e2:	854e                	mv	a0,s3
62fc05e4:	3d05                	jal	62fc0414 <arch_memcpy4>
62fc05e6:	8552                	mv	a0,s4
62fc05e8:	b7f1                	j	62fc05b4 <qcc74x_ef_ctrl_read_direct+0x34>
62fc05ea:	35fd                	jal	62fc04d8 <qcc74x_ef_ctrl_switch_ahb_clk_r0>
62fc05ec:	b7fd                	j	62fc05da <qcc74x_ef_ctrl_read_direct+0x5a>
62fc05ee:	50b2                	lw	ra,44(sp)
62fc05f0:	5422                	lw	s0,40(sp)
62fc05f2:	5492                	lw	s1,36(sp)
62fc05f4:	5902                	lw	s2,32(sp)
62fc05f6:	49f2                	lw	s3,28(sp)
62fc05f8:	4a62                	lw	s4,24(sp)
62fc05fa:	6145                	addi	sp,sp,48
62fc05fc:	8082                	ret

62fc05fe <qcc74x_spi_poll_exchange>:
62fc05fe:	00452303          	lw	t1,4(a0)
62fc0602:	478d                	li	a5,3
62fc0604:	00032503          	lw	a0,0(t1) # 19000 <wifi_ram_max_size+0x11000>
62fc0608:	0c25350b          	extu	a0,a0,3,2
62fc060c:	0505                	addi	a0,a0,1
62fc060e:	00f51363          	bne	a0,a5,62fc0614 <qcc74x_spi_poll_exchange+0x16>
62fc0612:	4511                	li	a0,4
62fc0614:	08032783          	lw	a5,128(t1)
62fc0618:	02a6d6b3          	divu	a3,a3,a0
62fc061c:	08430e13          	addi	t3,t1,132
62fc0620:	00c7e793          	ori	a5,a5,12
62fc0624:	08f32023          	sw	a5,128(t1)
62fc0628:	08432783          	lw	a5,132(t1)
62fc062c:	03f7f793          	andi	a5,a5,63
62fc0630:	02a7d7b3          	divu	a5,a5,a0
62fc0634:	00f6b733          	sltu	a4,a3,a5
62fc0638:	42e6978b          	mvnez	a5,a3,a4
62fc063c:	0ff7f713          	zext.b	a4,a5
62fc0640:	40f687b3          	sub	a5,a3,a5
62fc0644:	c991                	beqz	a1,62fc0658 <qcc74x_spi_poll_exchange+0x5a>
62fc0646:	4809                	li	a6,2
62fc0648:	4891                	li	a7,4
62fc064a:	4e85                	li	t4,1
62fc064c:	ef11                	bnez	a4,62fc0668 <qcc74x_spi_poll_exchange+0x6a>
62fc064e:	4e89                	li	t4,2
62fc0650:	58fd                	li	a7,-1
62fc0652:	4f11                	li	t5,4
62fc0654:	4f85                	li	t6,1
62fc0656:	a059                	j	62fc06dc <qcc74x_spi_poll_exchange+0xde>
62fc0658:	587d                	li	a6,-1
62fc065a:	db75                	beqz	a4,62fc064e <qcc74x_spi_poll_exchange+0x50>
62fc065c:	177d                	addi	a4,a4,-1
62fc065e:	09032423          	sw	a6,136(t1)
62fc0662:	0ff77713          	zext.b	a4,a4
62fc0666:	bfd5                	j	62fc065a <qcc74x_spi_poll_exchange+0x5c>
62fc0668:	01050e63          	beq	a0,a6,62fc0684 <qcc74x_spi_poll_exchange+0x86>
62fc066c:	01150f63          	beq	a0,a7,62fc068a <qcc74x_spi_poll_exchange+0x8c>
62fc0670:	01d51663          	bne	a0,t4,62fc067c <qcc74x_spi_poll_exchange+0x7e>
62fc0674:	9815cf0b          	lbuia	t5,(a1),1,0
62fc0678:	09e32423          	sw	t5,136(t1)
62fc067c:	177d                	addi	a4,a4,-1
62fc067e:	0ff77713          	zext.b	a4,a4
62fc0682:	b7e9                	j	62fc064c <qcc74x_spi_poll_exchange+0x4e>
62fc0684:	b825cf0b          	lhuia	t5,(a1),2,0
62fc0688:	bfc5                	j	62fc0678 <qcc74x_spi_poll_exchange+0x7a>
62fc068a:	5845cf0b          	lwia	t5,(a1),4,0
62fc068e:	b7ed                	j	62fc0678 <qcc74x_spi_poll_exchange+0x7a>
62fc0690:	000e2703          	lw	a4,0(t3) # 1a000 <wifi_ram_max_size+0x12000>
62fc0694:	3487370b          	extu	a4,a4,13,8
62fc0698:	04a76263          	bltu	a4,a0,62fc06dc <qcc74x_spi_poll_exchange+0xde>
62fc069c:	02a75733          	divu	a4,a4,a0
62fc06a0:	00e6b833          	sltu	a6,a3,a4
62fc06a4:	4306970b          	mvnez	a4,a3,a6
62fc06a8:	0ff77813          	zext.b	a6,a4
62fc06ac:	8e99                	sub	a3,a3,a4
62fc06ae:	08c32703          	lw	a4,140(t1)
62fc06b2:	03d50863          	beq	a0,t4,62fc06e2 <qcc74x_spi_poll_exchange+0xe4>
62fc06b6:	03e50e63          	beq	a0,t5,62fc06f2 <qcc74x_spi_poll_exchange+0xf4>
62fc06ba:	01f51c63          	bne	a0,t6,62fc06d2 <qcc74x_spi_poll_exchange+0xd4>
62fc06be:	c219                	beqz	a2,62fc06c4 <qcc74x_spi_poll_exchange+0xc6>
62fc06c0:	1816570b          	sbia	a4,(a2),1,0
62fc06c4:	c799                	beqz	a5,62fc06d2 <qcc74x_spi_poll_exchange+0xd4>
62fc06c6:	cd95                	beqz	a1,62fc0702 <qcc74x_spi_poll_exchange+0x104>
62fc06c8:	9815c70b          	lbuia	a4,(a1),1,0
62fc06cc:	08e32423          	sw	a4,136(t1)
62fc06d0:	17fd                	addi	a5,a5,-1
62fc06d2:	187d                	addi	a6,a6,-1
62fc06d4:	0ff87813          	zext.b	a6,a6
62fc06d8:	fc081be3          	bnez	a6,62fc06ae <qcc74x_spi_poll_exchange+0xb0>
62fc06dc:	fad5                	bnez	a3,62fc0690 <qcc74x_spi_poll_exchange+0x92>
62fc06de:	4501                	li	a0,0
62fc06e0:	8082                	ret
62fc06e2:	c219                	beqz	a2,62fc06e8 <qcc74x_spi_poll_exchange+0xea>
62fc06e4:	3826570b          	shia	a4,(a2),2,0
62fc06e8:	d7ed                	beqz	a5,62fc06d2 <qcc74x_spi_poll_exchange+0xd4>
62fc06ea:	cd81                	beqz	a1,62fc0702 <qcc74x_spi_poll_exchange+0x104>
62fc06ec:	b825c70b          	lhuia	a4,(a1),2,0
62fc06f0:	bff1                	j	62fc06cc <qcc74x_spi_poll_exchange+0xce>
62fc06f2:	c219                	beqz	a2,62fc06f8 <qcc74x_spi_poll_exchange+0xfa>
62fc06f4:	5846570b          	swia	a4,(a2),4,0
62fc06f8:	dfe9                	beqz	a5,62fc06d2 <qcc74x_spi_poll_exchange+0xd4>
62fc06fa:	c581                	beqz	a1,62fc0702 <qcc74x_spi_poll_exchange+0x104>
62fc06fc:	5845c70b          	lwia	a4,(a1),4,0
62fc0700:	b7f1                	j	62fc06cc <qcc74x_spi_poll_exchange+0xce>
62fc0702:	09132423          	sw	a7,136(t1)
62fc0706:	b7e9                	j	62fc06d0 <qcc74x_spi_poll_exchange+0xd2>

62fc0708 <qcc74x_uart_putchar>:
62fc0708:	1101                	addi	sp,sp,-32
62fc070a:	cc22                	sw	s0,24(sp)
62fc070c:	ca26                	sw	s1,20(sp)
62fc070e:	c84a                	sw	s2,16(sp)
62fc0710:	c64e                	sw	s3,12(sp)
62fc0712:	c452                	sw	s4,8(sp)
62fc0714:	4144                	lw	s1,4(a0)
62fc0716:	ce06                	sw	ra,28(sp)
62fc0718:	842e                	mv	s0,a1
62fc071a:	2685                	jal	62fc0a7a <qcc74x_mtimer_get_time_ms>
62fc071c:	892a                	mv	s2,a0
62fc071e:	89ae                	mv	s3,a1
62fc0720:	06400a13          	li	s4,100
62fc0724:	0844a783          	lw	a5,132(s1)
62fc0728:	03f7f793          	andi	a5,a5,63
62fc072c:	cf91                	beqz	a5,62fc0748 <qcc74x_uart_putchar+0x40>
62fc072e:	0ff47413          	zext.b	s0,s0
62fc0732:	08848423          	sb	s0,136(s1)
62fc0736:	4501                	li	a0,0
62fc0738:	40f2                	lw	ra,28(sp)
62fc073a:	4462                	lw	s0,24(sp)
62fc073c:	44d2                	lw	s1,20(sp)
62fc073e:	4942                	lw	s2,16(sp)
62fc0740:	49b2                	lw	s3,12(sp)
62fc0742:	4a22                	lw	s4,8(sp)
62fc0744:	6105                	addi	sp,sp,32
62fc0746:	8082                	ret
62fc0748:	2e0d                	jal	62fc0a7a <qcc74x_mtimer_get_time_ms>
62fc074a:	c3251577          	sub64	a0,a0,s2
62fc074e:	e199                	bnez	a1,62fc0754 <qcc74x_uart_putchar+0x4c>
62fc0750:	fcaa7ae3          	bgeu	s4,a0,62fc0724 <qcc74x_uart_putchar+0x1c>
62fc0754:	f8c00513          	li	a0,-116
62fc0758:	b7c5                	j	62fc0738 <qcc74x_uart_putchar+0x30>

62fc075a <qcc74x_uart_put>:
62fc075a:	1141                	addi	sp,sp,-16
62fc075c:	c422                	sw	s0,8(sp)
62fc075e:	c226                	sw	s1,4(sp)
62fc0760:	c04a                	sw	s2,0(sp)
62fc0762:	c606                	sw	ra,12(sp)
62fc0764:	892a                	mv	s2,a0
62fc0766:	842e                	mv	s0,a1
62fc0768:	00c584b3          	add	s1,a1,a2
62fc076c:	00941463          	bne	s0,s1,62fc0774 <qcc74x_uart_put+0x1a>
62fc0770:	4501                	li	a0,0
62fc0772:	a039                	j	62fc0780 <qcc74x_uart_put+0x26>
62fc0774:	9814458b          	lbuia	a1,(s0),1,0
62fc0778:	854a                	mv	a0,s2
62fc077a:	3779                	jal	62fc0708 <qcc74x_uart_putchar>
62fc077c:	fe0558e3          	bgez	a0,62fc076c <qcc74x_uart_put+0x12>
62fc0780:	40b2                	lw	ra,12(sp)
62fc0782:	4422                	lw	s0,8(sp)
62fc0784:	4492                	lw	s1,4(sp)
62fc0786:	4902                	lw	s2,0(sp)
62fc0788:	0141                	addi	sp,sp,16
62fc078a:	8082                	ret

62fc078c <flash_get_size_from_jedecid>:
62fc078c:	01051793          	slli	a5,a0,0x10
62fc0790:	00ff0737          	lui	a4,0xff0
62fc0794:	8ff9                	and	a5,a5,a4
62fc0796:	6741                	lui	a4,0x10
62fc0798:	f0070713          	addi	a4,a4,-256 # ff00 <wifi_ram_max_size+0x7f00>
62fc079c:	8f69                	and	a4,a4,a0
62fc079e:	8fd9                	or	a5,a5,a4
62fc07a0:	5d05350b          	extu	a0,a0,23,16
62fc07a4:	953e                	add	a0,a0,a5
62fc07a6:	c519                	beqz	a0,62fc07b4 <flash_get_size_from_jedecid+0x28>
62fc07a8:	897d                	andi	a0,a0,31
62fc07aa:	1535                	addi	a0,a0,-19
62fc07ac:	000807b7          	lui	a5,0x80
62fc07b0:	00a79533          	sll	a0,a5,a0
62fc07b4:	8082                	ret

62fc07b6 <qcc74x_flash_set_cmds.constprop.0>:
62fc07b6:	010107b7          	lui	a5,0x1010
62fc07ba:	1101                	addi	sp,sp,-32
62fc07bc:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc07c0:	c43e                	sw	a5,8(sp)
62fc07c2:	47a5                	li	a5,9
62fc07c4:	00f10623          	sb	a5,12(sp)
62fc07c8:	85c1c783          	lbu	a5,-1956(gp) # 62fc1b04 <g_flash_cfg>
62fc07cc:	ce06                	sw	ra,28(sp)
62fc07ce:	4711                	li	a4,4
62fc07d0:	8bfd                	andi	a5,a5,31
62fc07d2:	00e79763          	bne	a5,a4,62fc07e0 <qcc74x_flash_set_cmds.constprop.0+0x2a>
62fc07d6:	4789                	li	a5,2
62fc07d8:	00f105a3          	sb	a5,11(sp)
62fc07dc:	00f10623          	sb	a5,12(sp)
62fc07e0:	0028                	addi	a0,sp,8
62fc07e2:	4581                	li	a1,0
62fc07e4:	2e55                	jal	62fc0b98 <qcc74x_sf_ctrl_cmds_set>
62fc07e6:	40f2                	lw	ra,28(sp)
62fc07e8:	6105                	addi	sp,sp,32
62fc07ea:	8082                	ret

62fc07ec <flash_set_l1c_wrap.constprop.0>:
62fc07ec:	85c1c783          	lbu	a5,-1956(gp) # 62fc1b04 <g_flash_cfg>
62fc07f0:	4711                	li	a4,4
62fc07f2:	85c18513          	addi	a0,gp,-1956 # 62fc1b04 <g_flash_cfg>
62fc07f6:	8bfd                	andi	a5,a5,31
62fc07f8:	00e79363          	bne	a5,a4,62fc07fe <flash_set_l1c_wrap.constprop.0+0x12>
62fc07fc:	a129                	j	62fc0c06 <qcc74x_sflash_set_burst_wrap>
62fc07fe:	a6ed                	j	62fc0be8 <qcc74x_sflash_disable_burst_wrap>

62fc0800 <flash_set_qspi_enable.constprop.0>:
62fc0800:	85c1c783          	lbu	a5,-1956(gp) # 62fc1b04 <g_flash_cfg>
62fc0804:	8bbd                	andi	a5,a5,15
62fc0806:	17f9                	addi	a5,a5,-2
62fc0808:	0fd7f793          	andi	a5,a5,253
62fc080c:	e781                	bnez	a5,62fc0814 <flash_set_qspi_enable.constprop.0+0x14>
62fc080e:	85c18513          	addi	a0,gp,-1956 # 62fc1b04 <g_flash_cfg>
62fc0812:	ae65                	j	62fc0bca <qcc74x_sflash_qspi_enable>
62fc0814:	8082                	ret

62fc0816 <flash2_init.isra.0>:
62fc0816:	7179                	addi	sp,sp,-48
62fc0818:	4785                	li	a5,1
62fc081a:	ca3e                	sw	a5,20(sp)
62fc081c:	cc3e                	sw	a5,24(sp)
62fc081e:	10300793          	li	a5,259
62fc0822:	00f11e23          	sh	a5,28(sp)
62fc0826:	010107b7          	lui	a5,0x1010
62fc082a:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc082e:	c63e                	sw	a5,12(sp)
62fc0830:	47a5                	li	a5,9
62fc0832:	00f10823          	sb	a5,16(sp)
62fc0836:	62fc37b7          	lui	a5,0x62fc3
62fc083a:	e297c703          	lbu	a4,-471(a5) # 62fc2e29 <device_info+0x1>
62fc083e:	d606                	sw	ra,44(sp)
62fc0840:	d422                	sw	s0,40(sp)
62fc0842:	d226                	sw	s1,36(sp)
62fc0844:	d04a                	sw	s2,32(sp)
62fc0846:	c402                	sw	zero,8(sp)
62fc0848:	478d                	li	a5,3
62fc084a:	06f71b63          	bne	a4,a5,62fc08c0 <flash2_init.isra.0+0xaa>
62fc084e:	084c                	addi	a1,sp,20
62fc0850:	03400513          	li	a0,52
62fc0854:	261d                	jal	62fc0b7a <qcc74x_sf_cfg_sbus2_flash_init>
62fc0856:	4505                	li	a0,1
62fc0858:	26a9                	jal	62fc0ba2 <qcc74x_sf_ctrl_sbus2_replace>
62fc085a:	4785                	li	a5,1
62fc085c:	4701                	li	a4,0
62fc085e:	80818693          	addi	a3,gp,-2040 # 62fc1ab0 <g_flash2_cfg>
62fc0862:	4601                	li	a2,0
62fc0864:	03400593          	li	a1,52
62fc0868:	4501                	li	a0,0
62fc086a:	80818913          	addi	s2,gp,-2040 # 62fc1ab0 <g_flash2_cfg>
62fc086e:	26e9                	jal	62fc0c38 <qcc74x_sf_cfg_flash_identify_ext>
62fc0870:	04055863          	bgez	a0,62fc08c0 <flash2_init.isra.0+0xaa>
62fc0874:	47c5                	li	a5,17
62fc0876:	00f91023          	sh	a5,0(s2) # 19000 <wifi_ram_max_size+0x11000>
62fc087a:	002c                	addi	a1,sp,8
62fc087c:	57fd                	li	a5,-1
62fc087e:	80818513          	addi	a0,gp,-2040 # 62fc1ab0 <g_flash2_cfg>
62fc0882:	02f90f23          	sb	a5,62(s2)
62fc0886:	26b5                	jal	62fc0bf2 <qcc74x_sflash_get_jedecid>
62fc0888:	47a2                	lw	a5,8(sp)
62fc088a:	01000737          	lui	a4,0x1000
62fc088e:	177d                	addi	a4,a4,-1
62fc0890:	62fc3437          	lui	s0,0x62fc3
62fc0894:	8ff9                	and	a5,a5,a4
62fc0896:	4585                	li	a1,1
62fc0898:	0068                	addi	a0,sp,12
62fc089a:	e5040413          	addi	s0,s0,-432 # 62fc2e50 <g_jedec_id2>
62fc089e:	c43e                	sw	a5,8(sp)
62fc08a0:	c01c                	sw	a5,0(s0)
62fc08a2:	2cdd                	jal	62fc0b98 <qcc74x_sf_ctrl_cmds_set>
62fc08a4:	00094583          	lbu	a1,0(s2)
62fc08a8:	4685                	li	a3,1
62fc08aa:	4601                	li	a2,0
62fc08ac:	89bd                	andi	a1,a1,15
62fc08ae:	80818513          	addi	a0,gp,-2040 # 62fc1ab0 <g_flash2_cfg>
62fc08b2:	2a39                	jal	62fc09d0 <qcc74x_sflash_xip_read_enable>
62fc08b4:	e511                	bnez	a0,62fc08c0 <flash2_init.isra.0+0xaa>
62fc08b6:	2cdd                	jal	62fc0bac <qcc74x_sf_ctrl_sbus2_revoke_replace>
62fc08b8:	4008                	lw	a0,0(s0)
62fc08ba:	3dc9                	jal	62fc078c <flash_get_size_from_jedecid>
62fc08bc:	80a1a223          	sw	a0,-2044(gp) # 62fc1aac <flash2_size>
62fc08c0:	50b2                	lw	ra,44(sp)
62fc08c2:	5422                	lw	s0,40(sp)
62fc08c4:	5492                	lw	s1,36(sp)
62fc08c6:	5902                	lw	s2,32(sp)
62fc08c8:	6145                	addi	sp,sp,48
62fc08ca:	8082                	ret

62fc08cc <qcc74x_flash_init>:
62fc08cc:	62fc3537          	lui	a0,0x62fc3
62fc08d0:	7139                	addi	sp,sp,-64
62fc08d2:	e2850513          	addi	a0,a0,-472 # 62fc2e28 <device_info>
62fc08d6:	de06                	sw	ra,60(sp)
62fc08d8:	dc22                	sw	s0,56(sp)
62fc08da:	da26                	sw	s1,52(sp)
62fc08dc:	d64e                	sw	s3,44(sp)
62fc08de:	d452                	sw	s4,40(sp)
62fc08e0:	d84a                	sw	s2,48(sp)
62fc08e2:	d256                	sw	s5,36(sp)
62fc08e4:	ca02                	sw	zero,20(sp)
62fc08e6:	7c8000ef          	jal	ra,62fc10ae <qcc74x_efuse_get_device_info>
62fc08ea:	2379                	jal	62fc0e78 <GLB_Get_Flash_Id_Value>
62fc08ec:	62fc3437          	lui	s0,0x62fc3
62fc08f0:	62fc29b7          	lui	s3,0x62fc2
62fc08f4:	ca2a                	sw	a0,20(sp)
62fc08f6:	85c18a13          	addi	s4,gp,-1956 # 62fc1b04 <g_flash_cfg>
62fc08fa:	e4c40413          	addi	s0,s0,-436 # 62fc2e4c <g_jedec_id>
62fc08fe:	aa898993          	addi	s3,s3,-1368 # 62fc1aa8 <__tcm_code_end__>
62fc0902:	c121                	beqz	a0,62fc0942 <qcc74x_flash_init+0x76>
62fc0904:	4681                	li	a3,0
62fc0906:	4601                	li	a2,0
62fc0908:	85c18593          	addi	a1,gp,-1956 # 62fc1b04 <g_flash_cfg>
62fc090c:	2131                	jal	62fc0d18 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc090e:	892a                	mv	s2,a0
62fc0910:	e90d                	bnez	a0,62fc0942 <qcc74x_flash_init+0x76>
62fc0912:	4552                	lw	a0,20(sp)
62fc0914:	c008                	sw	a0,0(s0)
62fc0916:	00aa06a3          	sb	a0,13(s4)
62fc091a:	c62a                	sw	a0,12(sp)
62fc091c:	3d046097          	auipc	ra,0x3d046
62fc0920:	96c080e7          	jalr	-1684(ra) # a0006288 <flash_get_clock_delay.constprop.0.isra.0>
62fc0924:	4532                	lw	a0,12(sp)
62fc0926:	359d                	jal	62fc078c <flash_get_size_from_jedecid>
62fc0928:	00a9a023          	sw	a0,0(s3)
62fc092c:	35ed                	jal	62fc0816 <flash2_init.isra.0>
62fc092e:	50f2                	lw	ra,60(sp)
62fc0930:	5462                	lw	s0,56(sp)
62fc0932:	54d2                	lw	s1,52(sp)
62fc0934:	59b2                	lw	s3,44(sp)
62fc0936:	5a22                	lw	s4,40(sp)
62fc0938:	5a92                	lw	s5,36(sp)
62fc093a:	854a                	mv	a0,s2
62fc093c:	5942                	lw	s2,48(sp)
62fc093e:	6121                	addi	sp,sp,64
62fc0940:	8082                	ret
62fc0942:	000109a3          	sb	zero,19(sp)
62fc0946:	cc02                	sw	zero,24(sp)
62fc0948:	ce02                	sw	zero,28(sp)
62fc094a:	2841                	jal	62fc09da <qcc74x_irq_save>
62fc094c:	8aaa                	mv	s5,a0
62fc094e:	01310513          	addi	a0,sp,19
62fc0952:	2cc9                	jal	62fc0c24 <qcc74x_xip_sflash_opt_enter>
62fc0954:	4681                	li	a3,0
62fc0956:	4601                	li	a2,0
62fc0958:	086c                	addi	a1,sp,28
62fc095a:	85c18513          	addi	a0,gp,-1956 # 62fc1b04 <g_flash_cfg>
62fc095e:	2161                	jal	62fc0de6 <qcc74x_xip_sflash_state_save>
62fc0960:	082c                	addi	a1,sp,24
62fc0962:	85c18513          	addi	a0,gp,-1956 # 62fc1b04 <g_flash_cfg>
62fc0966:	2471                	jal	62fc0bf2 <qcc74x_sflash_get_jedecid>
62fc0968:	460d                	li	a2,3
62fc096a:	082c                	addi	a1,sp,24
62fc096c:	0848                	addi	a0,sp,20
62fc096e:	3c49                	jal	62fc0400 <arch_memcpy>
62fc0970:	4562                	lw	a0,24(sp)
62fc0972:	010007b7          	lui	a5,0x1000
62fc0976:	17fd                	addi	a5,a5,-1
62fc0978:	8d7d                	and	a0,a0,a5
62fc097a:	4681                	li	a3,0
62fc097c:	4601                	li	a2,0
62fc097e:	85c18593          	addi	a1,gp,-1956 # 62fc1b04 <g_flash_cfg>
62fc0982:	cc2a                	sw	a0,24(sp)
62fc0984:	c008                	sw	a0,0(s0)
62fc0986:	2e49                	jal	62fc0d18 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc0988:	4762                	lw	a4,24(sp)
62fc098a:	892a                	mv	s2,a0
62fc098c:	e119                	bnez	a0,62fc0992 <qcc74x_flash_init+0xc6>
62fc098e:	00ea06a3          	sb	a4,13(s4)
62fc0992:	001667b7          	lui	a5,0x166
62fc0996:	0ef78793          	addi	a5,a5,239 # 1660ef <remain_wifi_ram+0x1460ef>
62fc099a:	00f71563          	bne	a4,a5,62fc09a4 <qcc74x_flash_init+0xd8>
62fc099e:	4791                	li	a5,4
62fc09a0:	00fa1023          	sh	a5,0(s4)
62fc09a4:	3d09                	jal	62fc07b6 <qcc74x_flash_set_cmds.constprop.0>
62fc09a6:	3da9                	jal	62fc0800 <flash_set_qspi_enable.constprop.0>
62fc09a8:	3591                	jal	62fc07ec <flash_set_l1c_wrap.constprop.0>
62fc09aa:	45f2                	lw	a1,28(sp)
62fc09ac:	4681                	li	a3,0
62fc09ae:	4601                	li	a2,0
62fc09b0:	85c18513          	addi	a0,gp,-1956 # 62fc1b04 <g_flash_cfg>
62fc09b4:	2cb1                	jal	62fc0c10 <qcc74x_xip_sflash_state_restore>
62fc09b6:	01314503          	lbu	a0,19(sp)
62fc09ba:	2c95                	jal	62fc0c2e <qcc74x_xip_sflash_opt_exit>
62fc09bc:	8556                	mv	a0,s5
62fc09be:	2015                	jal	62fc09e2 <qcc74x_irq_restore>
62fc09c0:	3d046097          	auipc	ra,0x3d046
62fc09c4:	8c8080e7          	jalr	-1848(ra) # a0006288 <flash_get_clock_delay.constprop.0.isra.0>
62fc09c8:	4008                	lw	a0,0(s0)
62fc09ca:	2951                	jal	62fc0e5e <GLB_Set_Flash_Id_Value>
62fc09cc:	4008                	lw	a0,0(s0)
62fc09ce:	bfa1                	j	62fc0926 <qcc74x_flash_init+0x5a>

62fc09d0 <qcc74x_sflash_xip_read_enable>:
62fc09d0:	87b6                	mv	a5,a3
62fc09d2:	02000713          	li	a4,32
62fc09d6:	4681                	li	a3,0
62fc09d8:	a419                	j	62fc0bde <qcc74x_sflash_set_xip_cfg>

62fc09da <qcc74x_irq_save>:
62fc09da:	4521                	li	a0,8
62fc09dc:	30053573          	csrrc	a0,mstatus,a0
62fc09e0:	8082                	ret

62fc09e2 <qcc74x_irq_restore>:
62fc09e2:	30051073          	csrw	mstatus,a0
62fc09e6:	8082                	ret

62fc09e8 <qcc74x_mtimer_get_time_us>:
62fc09e8:	7139                	addi	sp,sp,-64
62fc09ea:	de22                	sw	s0,60(sp)
62fc09ec:	c602                	sw	zero,12(sp)
62fc09ee:	e000c7b7          	lui	a5,0xe000c
62fc09f2:	3e800413          	li	s0,1000
62fc09f6:	ff87a603          	lw	a2,-8(a5) # e000bff8 <__psram_limit+0x37c0bff8>
62fc09fa:	ffc7a683          	lw	a3,-4(a5)
62fc09fe:	4f81                	li	t6,0
62fc0a00:	4381                	li	t2,0
62fc0a02:	cc36                	sw	a3,24(sp)
62fc0a04:	ce7e                	sw	t6,28(sp)
62fc0a06:	ff87a603          	lw	a2,-8(a5)
62fc0a0a:	ffc7a683          	lw	a3,-4(a5)
62fc0a0e:	4881                	li	a7,0
62fc0a10:	c832                	sw	a2,16(sp)
62fc0a12:	ca1e                	sw	t2,20(sp)
62fc0a14:	ff87a603          	lw	a2,-8(a5)
62fc0a18:	ffc7a683          	lw	a3,-4(a5)
62fc0a1c:	4e81                	li	t4,0
62fc0a1e:	d032                	sw	a2,32(sp)
62fc0a20:	d246                	sw	a7,36(sp)
62fc0a22:	ff87a603          	lw	a2,-8(a5)
62fc0a26:	ffc7a683          	lw	a3,-4(a5)
62fc0a2a:	d436                	sw	a3,40(sp)
62fc0a2c:	d676                	sw	t4,44(sp)
62fc0a2e:	4732                	lw	a4,12(sp)
62fc0a30:	0705                	addi	a4,a4,1
62fc0a32:	c63a                	sw	a4,12(sp)
62fc0a34:	4732                	lw	a4,12(sp)
62fc0a36:	02870f63          	beq	a4,s0,62fc0a74 <qcc74x_mtimer_get_time_us+0x8c>
62fc0a3a:	4642                	lw	a2,16(sp)
62fc0a3c:	46d2                	lw	a3,20(sp)
62fc0a3e:	5502                	lw	a0,32(sp)
62fc0a40:	5592                	lw	a1,36(sp)
62fc0a42:	fad5eae3          	bltu	a1,a3,62fc09f6 <qcc74x_mtimer_get_time_us+0xe>
62fc0a46:	00b69463          	bne	a3,a1,62fc0a4e <qcc74x_mtimer_get_time_us+0x66>
62fc0a4a:	fac566e3          	bltu	a0,a2,62fc09f6 <qcc74x_mtimer_get_time_us+0xe>
62fc0a4e:	4662                	lw	a2,24(sp)
62fc0a50:	46f2                	lw	a3,28(sp)
62fc0a52:	5522                	lw	a0,40(sp)
62fc0a54:	55b2                	lw	a1,44(sp)
62fc0a56:	fac510e3          	bne	a0,a2,62fc09f6 <qcc74x_mtimer_get_time_us+0xe>
62fc0a5a:	f8d59ee3          	bne	a1,a3,62fc09f6 <qcc74x_mtimer_get_time_us+0xe>
62fc0a5e:	5622                	lw	a2,40(sp)
62fc0a60:	56b2                	lw	a3,44(sp)
62fc0a62:	5702                	lw	a4,32(sp)
62fc0a64:	5792                	lw	a5,36(sp)
62fc0a66:	4501                	li	a0,0
62fc0a68:	85b2                	mv	a1,a2
62fc0a6a:	c0e51577          	add64	a0,a0,a4
62fc0a6e:	5472                	lw	s0,60(sp)
62fc0a70:	6121                	addi	sp,sp,64
62fc0a72:	8082                	ret
62fc0a74:	4501                	li	a0,0
62fc0a76:	4581                	li	a1,0
62fc0a78:	bfdd                	j	62fc0a6e <qcc74x_mtimer_get_time_us+0x86>

62fc0a7a <qcc74x_mtimer_get_time_ms>:
62fc0a7a:	1141                	addi	sp,sp,-16
62fc0a7c:	c606                	sw	ra,12(sp)
62fc0a7e:	37ad                	jal	62fc09e8 <qcc74x_mtimer_get_time_us>
62fc0a80:	3e800613          	li	a2,1000
62fc0a84:	4681                	li	a3,0
62fc0a86:	3d041097          	auipc	ra,0x3d041
62fc0a8a:	97a080e7          	jalr	-1670(ra) # a0001400 <__udivdi3>
62fc0a8e:	40b2                	lw	ra,12(sp)
62fc0a90:	0141                	addi	sp,sp,16
62fc0a92:	8082                	ret

62fc0a94 <system_setup_xtal_config.isra.0>:
62fc0a94:	1141                	addi	sp,sp,-16
62fc0a96:	c606                	sw	ra,12(sp)
62fc0a98:	c422                	sw	s0,8(sp)
62fc0a9a:	c226                	sw	s1,4(sp)
62fc0a9c:	28d1                	jal	62fc0b70 <HBN_Get_MCU_XCLK_Sel>
62fc0a9e:	84aa                	mv	s1,a0
62fc0aa0:	20d9                	jal	62fc0b66 <HBN_Get_MCU_Root_CLK_Sel>
62fc0aa2:	842a                	mv	s0,a0
62fc0aa4:	4501                	li	a0,0
62fc0aa6:	285d                	jal	62fc0b5c <HBN_Set_MCU_XCLK_Sel>
62fc0aa8:	4501                	li	a0,0
62fc0aaa:	2065                	jal	62fc0b52 <HBN_Set_MCU_Root_CLK_Sel>
62fc0aac:	200106b7          	lui	a3,0x20010
62fc0ab0:	8846a783          	lw	a5,-1916(a3) # 2000f884 <remain_wifi_ram+0x1ffef884>
62fc0ab4:	7751                	lui	a4,0xffff4
62fc0ab6:	175d                	addi	a4,a4,-9
62fc0ab8:	8ff9                	and	a5,a5,a4
62fc0aba:	6721                	lui	a4,0x8
62fc0abc:	8fd9                	or	a5,a5,a4
62fc0abe:	88f6a223          	sw	a5,-1916(a3)
62fc0ac2:	47c1                	li	a5,16
62fc0ac4:	0001                	nop
62fc0ac6:	17fd                	addi	a5,a5,-1
62fc0ac8:	fff5                	bnez	a5,62fc0ac4 <system_setup_xtal_config.isra.0+0x30>
62fc0aca:	8526                	mv	a0,s1
62fc0acc:	2841                	jal	62fc0b5c <HBN_Set_MCU_XCLK_Sel>
62fc0ace:	8522                	mv	a0,s0
62fc0ad0:	4422                	lw	s0,8(sp)
62fc0ad2:	40b2                	lw	ra,12(sp)
62fc0ad4:	4492                	lw	s1,4(sp)
62fc0ad6:	0141                	addi	sp,sp,16
62fc0ad8:	a8ad                	j	62fc0b52 <HBN_Set_MCU_Root_CLK_Sel>

62fc0ada <GLB_AHB_MCU_Software_Reset>:
62fc0ada:	900167b7          	lui	a5,0x90016
62fc0ade:	9647a783          	lw	a5,-1692(a5) # 90015964 <__psram_limit+0xe7c15964>
62fc0ae2:	8782                	jr	a5

62fc0ae4 <GLB_Power_On_XTAL_And_PLL_CLK>:
62fc0ae4:	900167b7          	lui	a5,0x90016
62fc0ae8:	9cc7a783          	lw	a5,-1588(a5) # 900159cc <__psram_limit+0xe7c159cc>
62fc0aec:	8782                	jr	a5

62fc0aee <GLB_SW_POR_Reset>:
62fc0aee:	900167b7          	lui	a5,0x90016
62fc0af2:	9d87a783          	lw	a5,-1576(a5) # 900159d8 <__psram_limit+0xe7c159d8>
62fc0af6:	8782                	jr	a5

62fc0af8 <GLB_Set_DIG_512K_CLK>:
62fc0af8:	900167b7          	lui	a5,0x90016
62fc0afc:	a0c7a783          	lw	a5,-1524(a5) # 90015a0c <__psram_limit+0xe7c15a0c>
62fc0b00:	8782                	jr	a5

62fc0b02 <GLB_Set_DIG_CLK_Sel>:
62fc0b02:	900167b7          	lui	a5,0x90016
62fc0b06:	a107a783          	lw	a5,-1520(a5) # 90015a10 <__psram_limit+0xe7c15a10>
62fc0b0a:	8782                	jr	a5

62fc0b0c <GLB_Set_MCU_System_CLK>:
62fc0b0c:	900167b7          	lui	a5,0x90016
62fc0b10:	a407a783          	lw	a5,-1472(a5) # 90015a40 <__psram_limit+0xe7c15a40>
62fc0b14:	8782                	jr	a5

62fc0b16 <GLB_Set_PKA_CLK_Sel>:
62fc0b16:	900167b7          	lui	a5,0x90016
62fc0b1a:	a4c7a783          	lw	a5,-1460(a5) # 90015a4c <__psram_limit+0xe7c15a4c>
62fc0b1e:	8782                	jr	a5

62fc0b20 <GLB_Set_PWM1_IO_Sel>:
62fc0b20:	900167b7          	lui	a5,0x90016
62fc0b24:	a547a783          	lw	a5,-1452(a5) # 90015a54 <__psram_limit+0xe7c15a54>
62fc0b28:	8782                	jr	a5

62fc0b2a <GLB_Set_UART_CLK>:
62fc0b2a:	900167b7          	lui	a5,0x90016
62fc0b2e:	a847a783          	lw	a5,-1404(a5) # 90015a84 <__psram_limit+0xe7c15a84>
62fc0b32:	8782                	jr	a5

62fc0b34 <GLB_Set_USB_CLK_From_WIFIPLL>:
62fc0b34:	900167b7          	lui	a5,0x90016
62fc0b38:	a887a783          	lw	a5,-1400(a5) # 90015a88 <__psram_limit+0xe7c15a88>
62fc0b3c:	8782                	jr	a5

62fc0b3e <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>:
62fc0b3e:	900167b7          	lui	a5,0x90016
62fc0b42:	a8c7a783          	lw	a5,-1396(a5) # 90015a8c <__psram_limit+0xe7c15a8c>
62fc0b46:	8782                	jr	a5

62fc0b48 <HBN_Get_Xtal_Type>:
62fc0b48:	900167b7          	lui	a5,0x90016
62fc0b4c:	b8c7a783          	lw	a5,-1140(a5) # 90015b8c <__psram_limit+0xe7c15b8c>
62fc0b50:	8782                	jr	a5

62fc0b52 <HBN_Set_MCU_Root_CLK_Sel>:
62fc0b52:	900167b7          	lui	a5,0x90016
62fc0b56:	bf47a783          	lw	a5,-1036(a5) # 90015bf4 <__psram_limit+0xe7c15bf4>
62fc0b5a:	8782                	jr	a5

62fc0b5c <HBN_Set_MCU_XCLK_Sel>:
62fc0b5c:	900167b7          	lui	a5,0x90016
62fc0b60:	bf87a783          	lw	a5,-1032(a5) # 90015bf8 <__psram_limit+0xe7c15bf8>
62fc0b64:	8782                	jr	a5

62fc0b66 <HBN_Get_MCU_Root_CLK_Sel>:
62fc0b66:	900167b7          	lui	a5,0x90016
62fc0b6a:	c307a783          	lw	a5,-976(a5) # 90015c30 <__psram_limit+0xe7c15c30>
62fc0b6e:	8782                	jr	a5

62fc0b70 <HBN_Get_MCU_XCLK_Sel>:
62fc0b70:	900167b7          	lui	a5,0x90016
62fc0b74:	c347a783          	lw	a5,-972(a5) # 90015c34 <__psram_limit+0xe7c15c34>
62fc0b78:	8782                	jr	a5

62fc0b7a <qcc74x_sf_cfg_sbus2_flash_init>:
62fc0b7a:	900167b7          	lui	a5,0x90016
62fc0b7e:	d107a783          	lw	a5,-752(a5) # 90015d10 <__psram_limit+0xe7c15d10>
62fc0b82:	8782                	jr	a5

62fc0b84 <qcc74x_sf_cfg_flash_identify>:
62fc0b84:	90016837          	lui	a6,0x90016
62fc0b88:	d1482803          	lw	a6,-748(a6) # 90015d14 <__psram_limit+0xe7c15d14>
62fc0b8c:	8802                	jr	a6

62fc0b8e <qcc74x_sf_ctrl_get_flash_image_offset>:
62fc0b8e:	900167b7          	lui	a5,0x90016
62fc0b92:	d247a783          	lw	a5,-732(a5) # 90015d24 <__psram_limit+0xe7c15d24>
62fc0b96:	8782                	jr	a5

62fc0b98 <qcc74x_sf_ctrl_cmds_set>:
62fc0b98:	900167b7          	lui	a5,0x90016
62fc0b9c:	d707a783          	lw	a5,-656(a5) # 90015d70 <__psram_limit+0xe7c15d70>
62fc0ba0:	8782                	jr	a5

62fc0ba2 <qcc74x_sf_ctrl_sbus2_replace>:
62fc0ba2:	900167b7          	lui	a5,0x90016
62fc0ba6:	d987a783          	lw	a5,-616(a5) # 90015d98 <__psram_limit+0xe7c15d98>
62fc0baa:	8782                	jr	a5

62fc0bac <qcc74x_sf_ctrl_sbus2_revoke_replace>:
62fc0bac:	900167b7          	lui	a5,0x90016
62fc0bb0:	d9c7a783          	lw	a5,-612(a5) # 90015d9c <__psram_limit+0xe7c15d9c>
62fc0bb4:	8782                	jr	a5

62fc0bb6 <qcc74x_sf_ctrl_set_flash_image_offset>:
62fc0bb6:	900167b7          	lui	a5,0x90016
62fc0bba:	db47a783          	lw	a5,-588(a5) # 90015db4 <__psram_limit+0xe7c15db4>
62fc0bbe:	8782                	jr	a5

62fc0bc0 <qcc74x_sf_ctrl_set_owner>:
62fc0bc0:	900167b7          	lui	a5,0x90016
62fc0bc4:	dbc7a783          	lw	a5,-580(a5) # 90015dbc <__psram_limit+0xe7c15dbc>
62fc0bc8:	8782                	jr	a5

62fc0bca <qcc74x_sflash_qspi_enable>:
62fc0bca:	900167b7          	lui	a5,0x90016
62fc0bce:	de47a783          	lw	a5,-540(a5) # 90015de4 <__psram_limit+0xe7c15de4>
62fc0bd2:	8782                	jr	a5

62fc0bd4 <qcc74x_sflash_set_32bits_addr_mode>:
62fc0bd4:	900167b7          	lui	a5,0x90016
62fc0bd8:	e047a783          	lw	a5,-508(a5) # 90015e04 <__psram_limit+0xe7c15e04>
62fc0bdc:	8782                	jr	a5

62fc0bde <qcc74x_sflash_set_xip_cfg>:
62fc0bde:	90016837          	lui	a6,0x90016
62fc0be2:	e0c82803          	lw	a6,-500(a6) # 90015e0c <__psram_limit+0xe7c15e0c>
62fc0be6:	8802                	jr	a6

62fc0be8 <qcc74x_sflash_disable_burst_wrap>:
62fc0be8:	900167b7          	lui	a5,0x90016
62fc0bec:	e247a783          	lw	a5,-476(a5) # 90015e24 <__psram_limit+0xe7c15e24>
62fc0bf0:	8782                	jr	a5

62fc0bf2 <qcc74x_sflash_get_jedecid>:
62fc0bf2:	900167b7          	lui	a5,0x90016
62fc0bf6:	e2c7a783          	lw	a5,-468(a5) # 90015e2c <__psram_limit+0xe7c15e2c>
62fc0bfa:	8782                	jr	a5

62fc0bfc <qcc74x_sflash_reset_continue_read>:
62fc0bfc:	900167b7          	lui	a5,0x90016
62fc0c00:	e447a783          	lw	a5,-444(a5) # 90015e44 <__psram_limit+0xe7c15e44>
62fc0c04:	8782                	jr	a5

62fc0c06 <qcc74x_sflash_set_burst_wrap>:
62fc0c06:	900167b7          	lui	a5,0x90016
62fc0c0a:	e487a783          	lw	a5,-440(a5) # 90015e48 <__psram_limit+0xe7c15e48>
62fc0c0e:	8782                	jr	a5

62fc0c10 <qcc74x_xip_sflash_state_restore>:
62fc0c10:	900167b7          	lui	a5,0x90016
62fc0c14:	ef87a783          	lw	a5,-264(a5) # 90015ef8 <__psram_limit+0xe7c15ef8>
62fc0c18:	1141                	addi	sp,sp,-16
62fc0c1a:	c606                	sw	ra,12(sp)
62fc0c1c:	9782                	jalr	a5
62fc0c1e:	40b2                	lw	ra,12(sp)
62fc0c20:	0141                	addi	sp,sp,16
62fc0c22:	8082                	ret

62fc0c24 <qcc74x_xip_sflash_opt_enter>:
62fc0c24:	900167b7          	lui	a5,0x90016
62fc0c28:	f047a783          	lw	a5,-252(a5) # 90015f04 <__psram_limit+0xe7c15f04>
62fc0c2c:	8782                	jr	a5

62fc0c2e <qcc74x_xip_sflash_opt_exit>:
62fc0c2e:	900167b7          	lui	a5,0x90016
62fc0c32:	f087a783          	lw	a5,-248(a5) # 90015f08 <__psram_limit+0xe7c15f08>
62fc0c36:	8782                	jr	a5

62fc0c38 <qcc74x_sf_cfg_flash_identify_ext>:
62fc0c38:	1101                	addi	sp,sp,-32
62fc0c3a:	cc22                	sw	s0,24(sp)
62fc0c3c:	ca26                	sw	s1,20(sp)
62fc0c3e:	c84a                	sw	s2,16(sp)
62fc0c40:	c63e                	sw	a5,12(sp)
62fc0c42:	ce06                	sw	ra,28(sp)
62fc0c44:	892a                	mv	s2,a0
62fc0c46:	84b6                	mv	s1,a3
62fc0c48:	3f35                	jal	62fc0b84 <qcc74x_sf_cfg_flash_identify>
62fc0c4a:	47b2                	lw	a5,12(sp)
62fc0c4c:	842a                	mv	s0,a0
62fc0c4e:	00090b63          	beqz	s2,62fc0c64 <qcc74x_sf_cfg_flash_identify_ext+0x2c>
62fc0c52:	0004c583          	lbu	a1,0(s1)
62fc0c56:	02000713          	li	a4,32
62fc0c5a:	4681                	li	a3,0
62fc0c5c:	4605                	li	a2,1
62fc0c5e:	89bd                	andi	a1,a1,15
62fc0c60:	8526                	mv	a0,s1
62fc0c62:	3fb5                	jal	62fc0bde <qcc74x_sflash_set_xip_cfg>
62fc0c64:	02044e63          	bltz	s0,62fc0ca0 <qcc74x_sf_cfg_flash_identify_ext+0x68>
62fc0c68:	010007b7          	lui	a5,0x1000
62fc0c6c:	17fd                	addi	a5,a5,-1
62fc0c6e:	8c7d                	and	s0,s0,a5
62fc0c70:	62fc17b7          	lui	a5,0x62fc1
62fc0c74:	4701                	li	a4,0
62fc0c76:	52878793          	addi	a5,a5,1320 # 62fc1528 <flash_infos>
62fc0c7a:	45b1                	li	a1,12
62fc0c7c:	02b00613          	li	a2,43
62fc0c80:	02b706b3          	mul	a3,a4,a1
62fc0c84:	40f6c50b          	lrw	a0,a3,a5,0
62fc0c88:	02851363          	bne	a0,s0,62fc0cae <qcc74x_sf_cfg_flash_identify_ext+0x76>
62fc0c8c:	97b6                	add	a5,a5,a3
62fc0c8e:	478c                	lw	a1,8(a5)
62fc0c90:	05400613          	li	a2,84
62fc0c94:	8526                	mv	a0,s1
62fc0c96:	f92ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0c9a:	800007b7          	lui	a5,0x80000
62fc0c9e:	8c5d                	or	s0,s0,a5
62fc0ca0:	40f2                	lw	ra,28(sp)
62fc0ca2:	8522                	mv	a0,s0
62fc0ca4:	4462                	lw	s0,24(sp)
62fc0ca6:	44d2                	lw	s1,20(sp)
62fc0ca8:	4942                	lw	s2,16(sp)
62fc0caa:	6105                	addi	sp,sp,32
62fc0cac:	8082                	ret
62fc0cae:	0705                	addi	a4,a4,1
62fc0cb0:	fcc718e3          	bne	a4,a2,62fc0c80 <qcc74x_sf_cfg_flash_identify_ext+0x48>
62fc0cb4:	b7f5                	j	62fc0ca0 <qcc74x_sf_cfg_flash_identify_ext+0x68>

62fc0cb6 <qcc74x_xip_sflash_read_via_cache_need_lock>:
62fc0cb6:	1101                	addi	sp,sp,-32
62fc0cb8:	cc22                	sw	s0,24(sp)
62fc0cba:	04000437          	lui	s0,0x4000
62fc0cbe:	147d                	addi	s0,s0,-1
62fc0cc0:	c452                	sw	s4,8(sp)
62fc0cc2:	8c69                	and	s0,s0,a0
62fc0cc4:	8a2e                	mv	s4,a1
62fc0cc6:	8536                	mv	a0,a3
62fc0cc8:	85ba                	mv	a1,a4
62fc0cca:	ce06                	sw	ra,28(sp)
62fc0ccc:	ca26                	sw	s1,20(sp)
62fc0cce:	c84a                	sw	s2,16(sp)
62fc0cd0:	c64e                	sw	s3,12(sp)
62fc0cd2:	c256                	sw	s5,4(sp)
62fc0cd4:	84b6                	mv	s1,a3
62fc0cd6:	893a                	mv	s2,a4
62fc0cd8:	8ab2                	mv	s5,a2
62fc0cda:	3d55                	jal	62fc0b8e <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0cdc:	864a                	mv	a2,s2
62fc0cde:	89aa                	mv	s3,a0
62fc0ce0:	85a6                	mv	a1,s1
62fc0ce2:	4501                	li	a0,0
62fc0ce4:	3dc9                	jal	62fc0bb6 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0ce6:	85ca                	mv	a1,s2
62fc0ce8:	8526                	mv	a0,s1
62fc0cea:	3555                	jal	62fc0b8e <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0cec:	a00005b7          	lui	a1,0xa0000
62fc0cf0:	8dc1                	or	a1,a1,s0
62fc0cf2:	8656                	mv	a2,s5
62fc0cf4:	8d89                	sub	a1,a1,a0
62fc0cf6:	8552                	mv	a0,s4
62fc0cf8:	f30ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0cfc:	854e                	mv	a0,s3
62fc0cfe:	864a                	mv	a2,s2
62fc0d00:	85a6                	mv	a1,s1
62fc0d02:	3d55                	jal	62fc0bb6 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0d04:	40f2                	lw	ra,28(sp)
62fc0d06:	4462                	lw	s0,24(sp)
62fc0d08:	44d2                	lw	s1,20(sp)
62fc0d0a:	4942                	lw	s2,16(sp)
62fc0d0c:	49b2                	lw	s3,12(sp)
62fc0d0e:	4a22                	lw	s4,8(sp)
62fc0d10:	4a92                	lw	s5,4(sp)
62fc0d12:	4501                	li	a0,0
62fc0d14:	6105                	addi	sp,sp,32
62fc0d16:	8082                	ret

62fc0d18 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>:
62fc0d18:	474647b7          	lui	a5,0x47464
62fc0d1c:	7175                	addi	sp,sp,-144
62fc0d1e:	34678793          	addi	a5,a5,838 # 47464346 <__RFTLV_HEAD1_H+0xf3f704>
62fc0d22:	dece                	sw	s3,124(sp)
62fc0d24:	c706                	sw	ra,140(sp)
62fc0d26:	c522                	sw	s0,136(sp)
62fc0d28:	c326                	sw	s1,132(sp)
62fc0d2a:	c14a                	sw	s2,128(sp)
62fc0d2c:	c63e                	sw	a5,12(sp)
62fc0d2e:	00010823          	sb	zero,16(sp)
62fc0d32:	89ae                	mv	s3,a1
62fc0d34:	e52d                	bnez	a0,62fc0d9e <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x86>
62fc0d36:	85b6                	mv	a1,a3
62fc0d38:	8532                	mv	a0,a2
62fc0d3a:	8432                	mv	s0,a2
62fc0d3c:	84b6                	mv	s1,a3
62fc0d3e:	3d81                	jal	62fc0b8e <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0d40:	85a2                	mv	a1,s0
62fc0d42:	892a                	mv	s2,a0
62fc0d44:	8626                	mv	a2,s1
62fc0d46:	4501                	li	a0,0
62fc0d48:	35bd                	jal	62fc0bb6 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0d4a:	a0000537          	lui	a0,0xa0000
62fc0d4e:	86a2                	mv	a3,s0
62fc0d50:	8726                	mv	a4,s1
62fc0d52:	05c00613          	li	a2,92
62fc0d56:	084c                	addi	a1,sp,20
62fc0d58:	0521                	addi	a0,a0,8
62fc0d5a:	3fb1                	jal	62fc0cb6 <qcc74x_xip_sflash_read_via_cache_need_lock>
62fc0d5c:	85a2                	mv	a1,s0
62fc0d5e:	8626                	mv	a2,s1
62fc0d60:	854a                	mv	a0,s2
62fc0d62:	3d91                	jal	62fc0bb6 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0d64:	4611                	li	a2,4
62fc0d66:	006c                	addi	a1,sp,12
62fc0d68:	0848                	addi	a0,sp,20
62fc0d6a:	f00ff0ef          	jal	ra,62fc046a <arch_memcmp>
62fc0d6e:	842a                	mv	s0,a0
62fc0d70:	e92d                	bnez	a0,62fc0de2 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0d72:	05400593          	li	a1,84
62fc0d76:	0828                	addi	a0,sp,24
62fc0d78:	f4aff0ef          	jal	ra,62fc04c2 <qcc74x_soft_crc32>
62fc0d7c:	57b6                	lw	a5,108(sp)
62fc0d7e:	06a79263          	bne	a5,a0,62fc0de2 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0d82:	05400613          	li	a2,84
62fc0d86:	082c                	addi	a1,sp,24
62fc0d88:	854e                	mv	a0,s3
62fc0d8a:	e9eff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0d8e:	40ba                	lw	ra,140(sp)
62fc0d90:	8522                	mv	a0,s0
62fc0d92:	442a                	lw	s0,136(sp)
62fc0d94:	449a                	lw	s1,132(sp)
62fc0d96:	490a                	lw	s2,128(sp)
62fc0d98:	59f6                	lw	s3,124(sp)
62fc0d9a:	6149                	addi	sp,sp,144
62fc0d9c:	8082                	ret
62fc0d9e:	900167b7          	lui	a5,0x90016
62fc0da2:	d007a783          	lw	a5,-768(a5) # 90015d00 <__psram_limit+0xe7c15d00>
62fc0da6:	892a                	mv	s2,a0
62fc0da8:	9782                	jalr	a5
62fc0daa:	842a                	mv	s0,a0
62fc0dac:	d16d                	beqz	a0,62fc0d8e <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0dae:	62fc17b7          	lui	a5,0x62fc1
62fc0db2:	4701                	li	a4,0
62fc0db4:	52878793          	addi	a5,a5,1320 # 62fc1528 <flash_infos>
62fc0db8:	45b1                	li	a1,12
62fc0dba:	02b00613          	li	a2,43
62fc0dbe:	02b706b3          	mul	a3,a4,a1
62fc0dc2:	40f6c50b          	lrw	a0,a3,a5,0
62fc0dc6:	01251b63          	bne	a0,s2,62fc0ddc <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xc4>
62fc0dca:	97b6                	add	a5,a5,a3
62fc0dcc:	478c                	lw	a1,8(a5)
62fc0dce:	05400613          	li	a2,84
62fc0dd2:	854e                	mv	a0,s3
62fc0dd4:	e54ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0dd8:	4401                	li	s0,0
62fc0dda:	bf55                	j	62fc0d8e <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0ddc:	0705                	addi	a4,a4,1
62fc0dde:	fec710e3          	bne	a4,a2,62fc0dbe <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xa6>
62fc0de2:	547d                	li	s0,-1
62fc0de4:	b76d                	j	62fc0d8e <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>

62fc0de6 <qcc74x_xip_sflash_state_save>:
62fc0de6:	7179                	addi	sp,sp,-48
62fc0de8:	04000793          	li	a5,64
62fc0dec:	d422                	sw	s0,40(sp)
62fc0dee:	d226                	sw	s1,36(sp)
62fc0df0:	d04a                	sw	s2,32(sp)
62fc0df2:	ce4e                	sw	s3,28(sp)
62fc0df4:	d606                	sw	ra,44(sp)
62fc0df6:	842a                	mv	s0,a0
62fc0df8:	89ae                	mv	s3,a1
62fc0dfa:	8932                	mv	s2,a2
62fc0dfc:	84b6                	mv	s1,a3
62fc0dfe:	c63e                	sw	a5,12(sp)
62fc0e00:	47b2                	lw	a5,12(sp)
62fc0e02:	fff78713          	addi	a4,a5,-1
62fc0e06:	c63a                	sw	a4,12(sp)
62fc0e08:	ffe5                	bnez	a5,62fc0e00 <qcc74x_xip_sflash_state_save+0x1a>
62fc0e0a:	4785                	li	a5,1
62fc0e0c:	00f49463          	bne	s1,a5,62fc0e14 <qcc74x_xip_sflash_state_save+0x2e>
62fc0e10:	4505                	li	a0,1
62fc0e12:	3b41                	jal	62fc0ba2 <qcc74x_sf_ctrl_sbus2_replace>
62fc0e14:	4501                	li	a0,0
62fc0e16:	336d                	jal	62fc0bc0 <qcc74x_sf_ctrl_set_owner>
62fc0e18:	8522                	mv	a0,s0
62fc0e1a:	33cd                	jal	62fc0bfc <qcc74x_sflash_reset_continue_read>
62fc0e1c:	8522                	mv	a0,s0
62fc0e1e:	33e9                	jal	62fc0be8 <qcc74x_sflash_disable_burst_wrap>
62fc0e20:	4585                	li	a1,1
62fc0e22:	8522                	mv	a0,s0
62fc0e24:	3b45                	jal	62fc0bd4 <qcc74x_sflash_set_32bits_addr_mode>
62fc0e26:	00044783          	lbu	a5,0(s0) # 4000000 <remain_wifi_ram+0x3fe0000>
62fc0e2a:	8bbd                	andi	a5,a5,15
62fc0e2c:	17f9                	addi	a5,a5,-2
62fc0e2e:	0fd7f793          	andi	a5,a5,253
62fc0e32:	e399                	bnez	a5,62fc0e38 <qcc74x_xip_sflash_state_save+0x52>
62fc0e34:	8522                	mv	a0,s0
62fc0e36:	3b51                	jal	62fc0bca <qcc74x_sflash_qspi_enable>
62fc0e38:	8522                	mv	a0,s0
62fc0e3a:	337d                	jal	62fc0be8 <qcc74x_sflash_disable_burst_wrap>
62fc0e3c:	85a6                	mv	a1,s1
62fc0e3e:	854a                	mv	a0,s2
62fc0e40:	33b9                	jal	62fc0b8e <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0e42:	00a9a023          	sw	a0,0(s3)
62fc0e46:	8626                	mv	a2,s1
62fc0e48:	85ca                	mv	a1,s2
62fc0e4a:	4501                	li	a0,0
62fc0e4c:	33ad                	jal	62fc0bb6 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0e4e:	50b2                	lw	ra,44(sp)
62fc0e50:	5422                	lw	s0,40(sp)
62fc0e52:	5492                	lw	s1,36(sp)
62fc0e54:	5902                	lw	s2,32(sp)
62fc0e56:	49f2                	lw	s3,28(sp)
62fc0e58:	4501                	li	a0,0
62fc0e5a:	6145                	addi	sp,sp,48
62fc0e5c:	8082                	ret

62fc0e5e <GLB_Set_Flash_Id_Value>:
62fc0e5e:	010007b7          	lui	a5,0x1000
62fc0e62:	17fd                	addi	a5,a5,-1
62fc0e64:	8d7d                	and	a0,a0,a5
62fc0e66:	5a0007b7          	lui	a5,0x5a000
62fc0e6a:	8d5d                	or	a0,a0,a5
62fc0e6c:	200007b7          	lui	a5,0x20000
62fc0e70:	5ca7a223          	sw	a0,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc0e74:	4501                	li	a0,0
62fc0e76:	8082                	ret

62fc0e78 <GLB_Get_Flash_Id_Value>:
62fc0e78:	200007b7          	lui	a5,0x20000
62fc0e7c:	5c47a703          	lw	a4,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc0e80:	7f0007b7          	lui	a5,0x7f000
62fc0e84:	5a0006b7          	lui	a3,0x5a000
62fc0e88:	8ff9                	and	a5,a5,a4
62fc0e8a:	4501                	li	a0,0
62fc0e8c:	00d79663          	bne	a5,a3,62fc0e98 <GLB_Get_Flash_Id_Value+0x20>
62fc0e90:	01000537          	lui	a0,0x1000
62fc0e94:	157d                	addi	a0,a0,-1
62fc0e96:	8d79                	and	a0,a0,a4
62fc0e98:	8082                	ret

62fc0e9a <GLB_Get_Package_Type>:
62fc0e9a:	200567b7          	lui	a5,0x20056
62fc0e9e:	4f88                	lw	a0,24(a5)
62fc0ea0:	5d65350b          	extu	a0,a0,23,22
62fc0ea4:	8082                	ret

62fc0ea6 <GLB_GPIO_Pad_LeadOut_Sts>:
62fc0ea6:	1141                	addi	sp,sp,-16
62fc0ea8:	c422                	sw	s0,8(sp)
62fc0eaa:	c606                	sw	ra,12(sp)
62fc0eac:	842a                	mv	s0,a0
62fc0eae:	37f5                	jal	62fc0e9a <GLB_Get_Package_Type>
62fc0eb0:	4789                	li	a5,2
62fc0eb2:	02f50563          	beq	a0,a5,62fc0edc <GLB_GPIO_Pad_LeadOut_Sts+0x36>
62fc0eb6:	47f9                	li	a5,30
62fc0eb8:	4505                	li	a0,1
62fc0eba:	0087eb63          	bltu	a5,s0,62fc0ed0 <GLB_GPIO_Pad_LeadOut_Sts+0x2a>
62fc0ebe:	78740537          	lui	a0,0x78740
62fc0ec2:	c0f50513          	addi	a0,a0,-1009 # 7873fc0f <__HeapLimit+0x1570fc0f>
62fc0ec6:	00855533          	srl	a0,a0,s0
62fc0eca:	fff54513          	not	a0,a0
62fc0ece:	8905                	andi	a0,a0,1
62fc0ed0:	00154513          	xori	a0,a0,1
62fc0ed4:	40b2                	lw	ra,12(sp)
62fc0ed6:	4422                	lw	s0,8(sp)
62fc0ed8:	0141                	addi	sp,sp,16
62fc0eda:	8082                	ret
62fc0edc:	4505                	li	a0,1
62fc0ede:	bfdd                	j	62fc0ed4 <GLB_GPIO_Pad_LeadOut_Sts+0x2e>

62fc0ee0 <HBN_Get_Xtal_Value>:
62fc0ee0:	cd2d                	beqz	a0,62fc0f5a <HBN_Get_Xtal_Value+0x7a>
62fc0ee2:	2000f7b7          	lui	a5,0x2000f
62fc0ee6:	10c7a783          	lw	a5,268(a5) # 2000f10c <remain_wifi_ram+0x1ffef10c>
62fc0eea:	4721                	li	a4,8
62fc0eec:	1c47b68b          	extu	a3,a5,7,4
62fc0ef0:	06e69363          	bne	a3,a4,62fc0f56 <HBN_Get_Xtal_Value+0x76>
62fc0ef4:	8bbd                	andi	a5,a5,15
62fc0ef6:	4711                	li	a4,4
62fc0ef8:	04e78563          	beq	a5,a4,62fc0f42 <HBN_Get_Xtal_Value+0x62>
62fc0efc:	00f76f63          	bltu	a4,a5,62fc0f1a <HBN_Get_Xtal_Value+0x3a>
62fc0f00:	4709                	li	a4,2
62fc0f02:	02e78263          	beq	a5,a4,62fc0f26 <HBN_Get_Xtal_Value+0x46>
62fc0f06:	470d                	li	a4,3
62fc0f08:	02e78a63          	beq	a5,a4,62fc0f3c <HBN_Get_Xtal_Value+0x5c>
62fc0f0c:	4705                	li	a4,1
62fc0f0e:	02e78163          	beq	a5,a4,62fc0f30 <HBN_Get_Xtal_Value+0x50>
62fc0f12:	00052023          	sw	zero,0(a0)
62fc0f16:	4501                	li	a0,0
62fc0f18:	8082                	ret
62fc0f1a:	4715                	li	a4,5
62fc0f1c:	02e78863          	beq	a5,a4,62fc0f4c <HBN_Get_Xtal_Value+0x6c>
62fc0f20:	4719                	li	a4,6
62fc0f22:	fee798e3          	bne	a5,a4,62fc0f12 <HBN_Get_Xtal_Value+0x32>
62fc0f26:	01e857b7          	lui	a5,0x1e85
62fc0f2a:	80078793          	addi	a5,a5,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc0f2e:	a029                	j	62fc0f38 <HBN_Get_Xtal_Value+0x58>
62fc0f30:	016e37b7          	lui	a5,0x16e3
62fc0f34:	60078793          	addi	a5,a5,1536 # 16e3600 <remain_wifi_ram+0x16c3600>
62fc0f38:	c11c                	sw	a5,0(a0)
62fc0f3a:	bff1                	j	62fc0f16 <HBN_Get_Xtal_Value+0x36>
62fc0f3c:	0249f7b7          	lui	a5,0x249f
62fc0f40:	bfe5                	j	62fc0f38 <HBN_Get_Xtal_Value+0x58>
62fc0f42:	026267b7          	lui	a5,0x2626
62fc0f46:	a0078793          	addi	a5,a5,-1536 # 2625a00 <remain_wifi_ram+0x2605a00>
62fc0f4a:	b7fd                	j	62fc0f38 <HBN_Get_Xtal_Value+0x58>
62fc0f4c:	018cc7b7          	lui	a5,0x18cc
62fc0f50:	a8078793          	addi	a5,a5,-1408 # 18cba80 <remain_wifi_ram+0x18aba80>
62fc0f54:	b7d5                	j	62fc0f38 <HBN_Get_Xtal_Value+0x58>
62fc0f56:	00052023          	sw	zero,0(a0)
62fc0f5a:	4505                	li	a0,1
62fc0f5c:	8082                	ret
	...

62fc0f60 <ASM_Delay_Us>:
62fc0f60:	1141                	addi	sp,sp,-16
62fc0f62:	c232                	sw	a2,4(sp)
62fc0f64:	c402                	sw	zero,8(sp)
62fc0f66:	000f46b7          	lui	a3,0xf4
62fc0f6a:	c602                	sw	zero,12(sp)
62fc0f6c:	23f68693          	addi	a3,a3,575 # f423f <remain_wifi_ram+0xd423f>
62fc0f70:	04a6f963          	bgeu	a3,a0,62fc0fc2 <ASM_Delay_Us+0x62>
62fc0f74:	66e1                	lui	a3,0x18
62fc0f76:	6a068693          	addi	a3,a3,1696 # 186a0 <wifi_ram_max_size+0x106a0>
62fc0f7a:	02d55533          	divu	a0,a0,a3
62fc0f7e:	4729                	li	a4,10
62fc0f80:	c42a                	sw	a0,8(sp)
62fc0f82:	47a2                	lw	a5,8(sp)
62fc0f84:	02b787b3          	mul	a5,a5,a1
62fc0f88:	c63e                	sw	a5,12(sp)
62fc0f8a:	47b2                	lw	a5,12(sp)
62fc0f8c:	02e7d7b3          	divu	a5,a5,a4
62fc0f90:	c63e                	sw	a5,12(sp)
62fc0f92:	47b2                	lw	a5,12(sp)
62fc0f94:	4712                	lw	a4,4(sp)
62fc0f96:	02e7d7b3          	divu	a5,a5,a4
62fc0f9a:	c63e                	sw	a5,12(sp)
62fc0f9c:	47b2                	lw	a5,12(sp)
62fc0f9e:	c385                	beqz	a5,62fc0fbe <ASM_Delay_Us+0x5e>
62fc0fa0:	46b2                	lw	a3,12(sp)
62fc0fa2:	8736                	mv	a4,a3
62fc0fa4:	4781                	li	a5,0
62fc0fa6:	0001                	nop
62fc0fa8:	0001                	nop
62fc0faa:	0001                	nop
62fc0fac:	00000013          	nop
62fc0fb0:	00e78663          	beq	a5,a4,62fc0fbc <ASM_Delay_Us+0x5c>
62fc0fb4:	0785                	addi	a5,a5,1
62fc0fb6:	bfed                	j	62fc0fb0 <ASM_Delay_Us+0x50>
62fc0fb8:	0001                	nop
62fc0fba:	0001                	nop
62fc0fbc:	0001                	nop
62fc0fbe:	0141                	addi	sp,sp,16
62fc0fc0:	8082                	ret
62fc0fc2:	3e800693          	li	a3,1000
62fc0fc6:	02d55533          	divu	a0,a0,a3
62fc0fca:	c42a                	sw	a0,8(sp)
62fc0fcc:	4722                	lw	a4,8(sp)
62fc0fce:	02b70733          	mul	a4,a4,a1
62fc0fd2:	c63a                	sw	a4,12(sp)
62fc0fd4:	47b2                	lw	a5,12(sp)
62fc0fd6:	02d7d7b3          	divu	a5,a5,a3
62fc0fda:	bf5d                	j	62fc0f90 <ASM_Delay_Us+0x30>
	...

62fc0fe6 <arch_delay_us>:
62fc0fe6:	1101                	addi	sp,sp,-32
62fc0fe8:	ce06                	sw	ra,28(sp)
62fc0fea:	85aa                	mv	a1,a0
62fc0fec:	7c1027f3          	csrr	a5,mhcr
62fc0ff0:	7c102673          	csrr	a2,mhcr
62fc0ff4:	0017f713          	andi	a4,a5,1
62fc0ff8:	8205                	srli	a2,a2,0x1
62fc0ffa:	c705                	beqz	a4,62fc1022 <arch_delay_us+0x3c>
62fc0ffc:	8a05                	andi	a2,a2,1
62fc0ffe:	4791                	li	a5,4
62fc1000:	40c78633          	sub	a2,a5,a2
62fc1004:	4505                	li	a0,1
62fc1006:	c62e                	sw	a1,12(sp)
62fc1008:	c432                	sw	a2,8(sp)
62fc100a:	18d000ef          	jal	ra,62fc1996 <Clock_System_Clock_Get>
62fc100e:	4622                	lw	a2,8(sp)
62fc1010:	45b2                	lw	a1,12(sp)
62fc1012:	e509                	bnez	a0,62fc101c <arch_delay_us+0x36>
62fc1014:	01e85537          	lui	a0,0x1e85
62fc1018:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc101c:	40f2                	lw	ra,28(sp)
62fc101e:	6105                	addi	sp,sp,32
62fc1020:	b781                	j	62fc0f60 <ASM_Delay_Us>
62fc1022:	8e5d                	or	a2,a2,a5
62fc1024:	00167793          	andi	a5,a2,1
62fc1028:	460d                	li	a2,3
62fc102a:	ffe9                	bnez	a5,62fc1004 <arch_delay_us+0x1e>
62fc102c:	4661                	li	a2,24
62fc102e:	bfd9                	j	62fc1004 <arch_delay_us+0x1e>

62fc1030 <arch_delay_ms>:
62fc1030:	1141                	addi	sp,sp,-16
62fc1032:	c422                	sw	s0,8(sp)
62fc1034:	c606                	sw	ra,12(sp)
62fc1036:	c226                	sw	s1,4(sp)
62fc1038:	c04a                	sw	s2,0(sp)
62fc103a:	3ff00793          	li	a5,1023
62fc103e:	842a                	mv	s0,a0
62fc1040:	00a7fb63          	bgeu	a5,a0,62fc1056 <arch_delay_ms+0x26>
62fc1044:	00a55913          	srli	s2,a0,0xa
62fc1048:	4481                	li	s1,0
62fc104a:	000fa537          	lui	a0,0xfa
62fc104e:	0485                	addi	s1,s1,1
62fc1050:	3f59                	jal	62fc0fe6 <arch_delay_us>
62fc1052:	fe991ce3          	bne	s2,s1,62fc104a <arch_delay_ms+0x1a>
62fc1056:	3ff47413          	andi	s0,s0,1023
62fc105a:	c819                	beqz	s0,62fc1070 <arch_delay_ms+0x40>
62fc105c:	3e800513          	li	a0,1000
62fc1060:	02a40533          	mul	a0,s0,a0
62fc1064:	4422                	lw	s0,8(sp)
62fc1066:	40b2                	lw	ra,12(sp)
62fc1068:	4492                	lw	s1,4(sp)
62fc106a:	4902                	lw	s2,0(sp)
62fc106c:	0141                	addi	sp,sp,16
62fc106e:	bfa5                	j	62fc0fe6 <arch_delay_us>
62fc1070:	40b2                	lw	ra,12(sp)
62fc1072:	4422                	lw	s0,8(sp)
62fc1074:	4492                	lw	s1,4(sp)
62fc1076:	4902                	lw	s2,0(sp)
62fc1078:	0141                	addi	sp,sp,16
62fc107a:	8082                	ret

62fc107c <qcc74x_efuse_print_number>:
62fc107c:	47a5                	li	a5,9
62fc107e:	02b7f263          	bgeu	a5,a1,62fc10a2 <qcc74x_efuse_print_number+0x26>
62fc1082:	4729                	li	a4,10
62fc1084:	02e5d7b3          	divu	a5,a1,a4
62fc1088:	02e5f5b3          	remu	a1,a1,a4
62fc108c:	03078793          	addi	a5,a5,48
62fc1090:	00f50023          	sb	a5,0(a0) # fa000 <remain_wifi_ram+0xda000>
62fc1094:	4789                	li	a5,2
62fc1096:	03058593          	addi	a1,a1,48 # a0000030 <__psram_limit+0xf7c00030>
62fc109a:	00b500a3          	sb	a1,1(a0)
62fc109e:	953e                	add	a0,a0,a5
62fc10a0:	8082                	ret
62fc10a2:	03058593          	addi	a1,a1,48
62fc10a6:	00b50023          	sb	a1,0(a0)
62fc10aa:	4785                	li	a5,1
62fc10ac:	bfcd                	j	62fc109e <qcc74x_efuse_print_number+0x22>

62fc10ae <qcc74x_efuse_get_device_info>:
62fc10ae:	1101                	addi	sp,sp,-32
62fc10b0:	cc22                	sw	s0,24(sp)
62fc10b2:	4705                	li	a4,1
62fc10b4:	842a                	mv	s0,a0
62fc10b6:	4685                	li	a3,1
62fc10b8:	0070                	addi	a2,sp,12
62fc10ba:	45e1                	li	a1,24
62fc10bc:	4501                	li	a0,0
62fc10be:	ce06                	sw	ra,28(sp)
62fc10c0:	ca26                	sw	s1,20(sp)
62fc10c2:	cbeff0ef          	jal	ra,62fc0580 <qcc74x_ef_ctrl_read_direct>
62fc10c6:	4732                	lw	a4,12(sp)
62fc10c8:	5d67360b          	extu	a2,a4,23,22
62fc10cc:	71a7378b          	extu	a5,a4,28,26
62fc10d0:	6587368b          	extu	a3,a4,25,24
62fc10d4:	8375                	srli	a4,a4,0x1d
62fc10d6:	00e401a3          	sb	a4,3(s0)
62fc10da:	00c40023          	sb	a2,0(s0)
62fc10de:	00f400a3          	sb	a5,1(s0)
62fc10e2:	00d40123          	sb	a3,2(s0)
62fc10e6:	4705                	li	a4,1
62fc10e8:	02e60963          	beq	a2,a4,62fc111a <qcc74x_efuse_get_device_info+0x6c>
62fc10ec:	4709                	li	a4,2
62fc10ee:	02e60b63          	beq	a2,a4,62fc1124 <qcc74x_efuse_get_device_info+0x76>
62fc10f2:	ee15                	bnez	a2,62fc112e <qcc74x_efuse_get_device_info+0x80>
62fc10f4:	a0008737          	lui	a4,0xa0008
62fc10f8:	0a070713          	addi	a4,a4,160 # a00080a0 <__psram_limit+0xf7c080a0>
62fc10fc:	c418                	sw	a4,8(s0)
62fc10fe:	4709                	li	a4,2
62fc1100:	0ee78363          	beq	a5,a4,62fc11e6 <qcc74x_efuse_get_device_info+0x138>
62fc1104:	02f76a63          	bltu	a4,a5,62fc1138 <qcc74x_efuse_get_device_info+0x8a>
62fc1108:	c3b9                	beqz	a5,62fc114e <qcc74x_efuse_get_device_info+0xa0>
62fc110a:	4705                	li	a4,1
62fc110c:	0ce78863          	beq	a5,a4,62fc11dc <qcc74x_efuse_get_device_info+0x12e>
62fc1110:	a00087b7          	lui	a5,0xa0008
62fc1114:	0b878793          	addi	a5,a5,184 # a00080b8 <__psram_limit+0xf7c080b8>
62fc1118:	a83d                	j	62fc1156 <qcc74x_efuse_get_device_info+0xa8>
62fc111a:	a0008737          	lui	a4,0xa0008
62fc111e:	0a870713          	addi	a4,a4,168 # a00080a8 <__psram_limit+0xf7c080a8>
62fc1122:	bfe9                	j	62fc10fc <qcc74x_efuse_get_device_info+0x4e>
62fc1124:	a0008737          	lui	a4,0xa0008
62fc1128:	0b070713          	addi	a4,a4,176 # a00080b0 <__psram_limit+0xf7c080b0>
62fc112c:	bfc1                	j	62fc10fc <qcc74x_efuse_get_device_info+0x4e>
62fc112e:	a0008737          	lui	a4,0xa0008
62fc1132:	0b870713          	addi	a4,a4,184 # a00080b8 <__psram_limit+0xf7c080b8>
62fc1136:	b7d9                	j	62fc10fc <qcc74x_efuse_get_device_info+0x4e>
62fc1138:	470d                	li	a4,3
62fc113a:	0ae78b63          	beq	a5,a4,62fc11f0 <qcc74x_efuse_get_device_info+0x142>
62fc113e:	4711                	li	a4,4
62fc1140:	fce798e3          	bne	a5,a4,62fc1110 <qcc74x_efuse_get_device_info+0x62>
62fc1144:	a00087b7          	lui	a5,0xa0008
62fc1148:	0cc78793          	addi	a5,a5,204 # a00080cc <__psram_limit+0xf7c080cc>
62fc114c:	a029                	j	62fc1156 <qcc74x_efuse_get_device_info+0xa8>
62fc114e:	a00087b7          	lui	a5,0xa0008
62fc1152:	0c078793          	addi	a5,a5,192 # a00080c0 <__psram_limit+0xf7c080c0>
62fc1156:	c45c                	sw	a5,12(s0)
62fc1158:	4789                	li	a5,2
62fc115a:	0af68563          	beq	a3,a5,62fc1204 <qcc74x_efuse_get_device_info+0x156>
62fc115e:	478d                	li	a5,3
62fc1160:	0af68763          	beq	a3,a5,62fc120e <qcc74x_efuse_get_device_info+0x160>
62fc1164:	4785                	li	a5,1
62fc1166:	08f68a63          	beq	a3,a5,62fc11fa <qcc74x_efuse_get_device_info+0x14c>
62fc116a:	a00087b7          	lui	a5,0xa0008
62fc116e:	0c078793          	addi	a5,a5,192 # a00080c0 <__psram_limit+0xf7c080c0>
62fc1172:	200004b7          	lui	s1,0x20000
62fc1176:	68048493          	addi	s1,s1,1664 # 20000680 <remain_wifi_ram+0x1ffe0680>
62fc117a:	c81c                	sw	a5,16(s0)
62fc117c:	40100793          	li	a5,1025
62fc1180:	d8bc                	sw	a5,112(s1)
62fc1182:	06e00513          	li	a0,110
62fc1186:	3585                	jal	62fc0fe6 <arch_delay_us>
62fc1188:	40300793          	li	a5,1027
62fc118c:	d8bc                	sw	a5,112(s1)
62fc118e:	06e00513          	li	a0,110
62fc1192:	3d91                	jal	62fc0fe6 <arch_delay_us>
62fc1194:	41300793          	li	a5,1043
62fc1198:	d8bc                	sw	a5,112(s1)
62fc119a:	06e00513          	li	a0,110
62fc119e:	35a1                	jal	62fc0fe6 <arch_delay_us>
62fc11a0:	43300793          	li	a5,1075
62fc11a4:	d8bc                	sw	a5,112(s1)
62fc11a6:	44c00513          	li	a0,1100
62fc11aa:	3d35                	jal	62fc0fe6 <arch_delay_us>
62fc11ac:	58b8                	lw	a4,112(s1)
62fc11ae:	1e000693          	li	a3,480
62fc11b2:	01440513          	addi	a0,s0,20
62fc11b6:	6cc7378b          	extu	a5,a4,27,12
62fc11ba:	c63e                	sw	a5,12(sp)
62fc11bc:	00f41223          	sh	a5,4(s0)
62fc11c0:	04f6ec63          	bltu	a3,a5,62fc1218 <qcc74x_efuse_get_device_info+0x16a>
62fc11c4:	a00085b7          	lui	a1,0xa0008
62fc11c8:	460d                	li	a2,3
62fc11ca:	0e858593          	addi	a1,a1,232 # a00080e8 <__psram_limit+0xf7c080e8>
62fc11ce:	a32ff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc11d2:	40f2                	lw	ra,28(sp)
62fc11d4:	4462                	lw	s0,24(sp)
62fc11d6:	44d2                	lw	s1,20(sp)
62fc11d8:	6105                	addi	sp,sp,32
62fc11da:	8082                	ret
62fc11dc:	a00087b7          	lui	a5,0xa0008
62fc11e0:	0c478793          	addi	a5,a5,196 # a00080c4 <__psram_limit+0xf7c080c4>
62fc11e4:	bf8d                	j	62fc1156 <qcc74x_efuse_get_device_info+0xa8>
62fc11e6:	a00087b7          	lui	a5,0xa0008
62fc11ea:	0c878793          	addi	a5,a5,200 # a00080c8 <__psram_limit+0xf7c080c8>
62fc11ee:	b7a5                	j	62fc1156 <qcc74x_efuse_get_device_info+0xa8>
62fc11f0:	a00087b7          	lui	a5,0xa0008
62fc11f4:	0e478793          	addi	a5,a5,228 # a00080e4 <__psram_limit+0xf7c080e4>
62fc11f8:	bfb9                	j	62fc1156 <qcc74x_efuse_get_device_info+0xa8>
62fc11fa:	a00087b7          	lui	a5,0xa0008
62fc11fe:	0d078793          	addi	a5,a5,208 # a00080d0 <__psram_limit+0xf7c080d0>
62fc1202:	bf85                	j	62fc1172 <qcc74x_efuse_get_device_info+0xc4>
62fc1204:	a00087b7          	lui	a5,0xa0008
62fc1208:	0d878793          	addi	a5,a5,216 # a00080d8 <__psram_limit+0xf7c080d8>
62fc120c:	b79d                	j	62fc1172 <qcc74x_efuse_get_device_info+0xc4>
62fc120e:	a00087b7          	lui	a5,0xa0008
62fc1212:	0e078793          	addi	a5,a5,224 # a00080e0 <__psram_limit+0xf7c080e0>
62fc1216:	bfb1                	j	62fc1172 <qcc74x_efuse_get_device_info+0xc4>
62fc1218:	21b00693          	li	a3,539
62fc121c:	04f6e663          	bltu	a3,a5,62fc1268 <qcc74x_efuse_get_device_info+0x1ba>
62fc1220:	e2078413          	addi	s0,a5,-480
62fc1224:	06400793          	li	a5,100
62fc1228:	02f40433          	mul	s0,s0,a5
62fc122c:	03c00593          	li	a1,60
62fc1230:	0479                	addi	s0,s0,30
62fc1232:	02b44433          	div	s0,s0,a1
62fc1236:	0ff47593          	zext.b	a1,s0
62fc123a:	3589                	jal	62fc107c <qcc74x_efuse_print_number>
62fc123c:	a00085b7          	lui	a1,0xa0008
62fc1240:	4615                	li	a2,5
62fc1242:	0ec58593          	addi	a1,a1,236 # a00080ec <__psram_limit+0xf7c080ec>
62fc1246:	84aa                	mv	s1,a0
62fc1248:	9b8ff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc124c:	06400593          	li	a1,100
62fc1250:	8d81                	sub	a1,a1,s0
62fc1252:	0ff5f593          	zext.b	a1,a1
62fc1256:	00448513          	addi	a0,s1,4
62fc125a:	350d                	jal	62fc107c <qcc74x_efuse_print_number>
62fc125c:	a00085b7          	lui	a1,0xa0008
62fc1260:	4611                	li	a2,4
62fc1262:	0f458593          	addi	a1,a1,244 # a00080f4 <__psram_limit+0xf7c080f4>
62fc1266:	b7a5                	j	62fc11ce <qcc74x_efuse_get_device_info+0x120>
62fc1268:	21c00693          	li	a3,540
62fc126c:	00d79863          	bne	a5,a3,62fc127c <qcc74x_efuse_get_device_info+0x1ce>
62fc1270:	a00085b7          	lui	a1,0xa0008
62fc1274:	460d                	li	a2,3
62fc1276:	0f858593          	addi	a1,a1,248 # a00080f8 <__psram_limit+0xf7c080f8>
62fc127a:	bf91                	j	62fc11ce <qcc74x_efuse_get_device_info+0x120>
62fc127c:	26100693          	li	a3,609
62fc1280:	04f6e763          	bltu	a3,a5,62fc12ce <qcc74x_efuse_get_device_info+0x220>
62fc1284:	de478413          	addi	s0,a5,-540
62fc1288:	06400793          	li	a5,100
62fc128c:	02f40433          	mul	s0,s0,a5
62fc1290:	04600793          	li	a5,70
62fc1294:	06400593          	li	a1,100
62fc1298:	02340413          	addi	s0,s0,35
62fc129c:	02f44433          	div	s0,s0,a5
62fc12a0:	8d81                	sub	a1,a1,s0
62fc12a2:	0ff5f593          	zext.b	a1,a1
62fc12a6:	3bd9                	jal	62fc107c <qcc74x_efuse_print_number>
62fc12a8:	a00085b7          	lui	a1,0xa0008
62fc12ac:	4615                	li	a2,5
62fc12ae:	0ec58593          	addi	a1,a1,236 # a00080ec <__psram_limit+0xf7c080ec>
62fc12b2:	84aa                	mv	s1,a0
62fc12b4:	94cff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc12b8:	0ff47593          	zext.b	a1,s0
62fc12bc:	00448513          	addi	a0,s1,4
62fc12c0:	3b75                	jal	62fc107c <qcc74x_efuse_print_number>
62fc12c2:	a00085b7          	lui	a1,0xa0008
62fc12c6:	4611                	li	a2,4
62fc12c8:	0fc58593          	addi	a1,a1,252 # a00080fc <__psram_limit+0xf7c080fc>
62fc12cc:	b709                	j	62fc11ce <qcc74x_efuse_get_device_info+0x120>
62fc12ce:	a00085b7          	lui	a1,0xa0008
62fc12d2:	460d                	li	a2,3
62fc12d4:	10058593          	addi	a1,a1,256 # a0008100 <__psram_limit+0xf7c08100>
62fc12d8:	bddd                	j	62fc11ce <qcc74x_efuse_get_device_info+0x120>
	...

62fc12dc <flash_cfg_GD_LQ64E>:
62fc12dc:	0104 3d01 9966 03ff 009f e9b7 c804 0100     ...=f...........
62fc12ec:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc12fc:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc130c:	0102 01ab 3505 0000 0101 0000 ff38 ffa0     .....5......8...
62fc131c:	0377 4002 0377 f002 0bb8 0fa0 0fa0 0005     w..@w...........
62fc132c:	fde8 0003                                   ....

62fc1330 <flash_cfg_GD_Q64E>:
62fc1330:	0104 3f01 9966 03ff 009f e9b7 c804 0100     ...?f...........
62fc1340:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc1350:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1360:	0101 01ab 3505 0000 3101 0000 ff38 ff20     .....5...1..8. .
62fc1370:	0377 4002 0377 f002 012c 04b0 04b0 0005     w..@w...,.......
62fc1380:	80e8 0014                                   ....

62fc1384 <flash_cfg_Winb_16JV>:
62fc1384:	0104 3d01 9966 03ff 009f e9b7 ef04 0100     ...=f...........
62fc1394:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc13a4:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc13b4:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc13c4:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc13d4:	80e8 0014                                   ....

62fc13d8 <flash_cfg_Winb_64JV>:
62fc13d8:	0004 3f01 9966 03ff 009f e9b7 ef04 0100     ...?f...........
62fc13e8:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc13f8:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1408:	0101 01ab 3505 0000 3101 0000 ff38 ffff     .....5...1..8...
62fc1418:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc1428:	80e8 0003                                   ....

62fc142c <flash_cfg_Winb_256FV>:
62fc142c:	0124 3f01 9966 03ff 009f e9b7 ef04 0100     $..?f...........
62fc143c:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc144c:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc145c:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc146c:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc147c:	80e8 0003                                   ....

62fc1480 <flash_cfg_Mxic_25U256>:
62fc1480:	0124 3f01 9966 03ff 009f e9b7 c204 0100     $..?f...........
62fc1490:	20c7 d852 0206 0238 010b 010b 013b 00bb     . R...8.....;...
62fc14a0:	016b 02eb 02eb 5002 0000 0100 0006 0100     k......P........
62fc14b0:	0102 01ab 1505 0000 0101 0000 ff38 ffa5     ............8...
62fc14c0:	00c0 0200 00c0 1000 0190 03e8 07d0 0005     ................
62fc14d0:	80e8 0014                                   ....

62fc14d4 <flash_cfg_Puya_Q32H>:
62fc14d4:	0104 3f01 9966 03ff 009f e9b7 8504 0100     ...?f...........
62fc14e4:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc14f4:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1504:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc1514:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc1524:	80e8 0008                                   ....

62fc1528 <flash_infos>:
62fc1528:	40ef 0017 0000 0000 13d8 62fc 40ef 0019     .@.........b.@..
62fc1538:	0000 0000 142c 62fc 60ef 0017 0000 0000     ....,..b.`......
62fc1548:	13d8 62fc 70ef 0015 0000 0000 1384 62fc     ...b.p.........b
62fc1558:	40c8 0017 0000 0000 1330 62fc 60c8 0017     .@......0..b.`..
62fc1568:	0000 0000 12dc 62fc 60c8 0018 0000 0000     .......b.`......
62fc1578:	12dc 62fc 65c8 0018 0000 0000 1330 62fc     ...b.e......0..b
62fc1588:	345e 0015 0000 0000 1330 62fc 405e 0015     ^4......0..b^@..
62fc1598:	0000 0000 1330 62fc 405e 0016 0000 0000     ....0..b^@......
62fc15a8:	1330 62fc 405e 0017 0000 0000 1330 62fc     0..b^@......0..b
62fc15b8:	405e 0018 0000 0000 1330 62fc 605e 0015     ^@......0..b^`..
62fc15c8:	0000 0000 1330 62fc 25c2 0039 0000 0000     ....0..b.%9.....
62fc15d8:	1480 62fc 4020 0014 0000 0000 1384 62fc     ...b @.........b
62fc15e8:	4020 0015 0000 0000 1384 62fc 4020 0016      @.........b @..
62fc15f8:	0000 0000 1384 62fc 4020 0017 0000 0000     .......b @......
62fc1608:	1384 62fc 4020 0018 0000 0000 1384 62fc     ...b @.........b
62fc1618:	5020 0016 0000 0000 1384 62fc 4220 0017      P.........b B..
62fc1628:	0000 0000 1384 62fc 400b 0017 0000 0000     .......b.@......
62fc1638:	12dc 62fc 400b 0018 0000 0000 12dc 62fc     ...b.@.........b
62fc1648:	6085 0017 0000 0000 14d4 62fc 6085 0018     .`.........b.`..
62fc1658:	0000 0000 14d4 62fc 2085 0014 0000 0000     .......b. ......
62fc1668:	12dc 62fc 2085 0015 0000 0000 12dc 62fc     ...b. .........b
62fc1678:	2085 0016 0000 0000 12dc 62fc 2085 0017     . .........b. ..
62fc1688:	0000 0000 12dc 62fc 2085 0018 0000 0000     .......b. ......
62fc1698:	12dc 62fc 2085 0019 0000 0000 12dc 62fc     ...b. .........b
62fc16a8:	40a1 0015 0000 0000 1384 62fc 40a1 0016     .@.........b.@..
62fc16b8:	0000 0000 12dc 62fc 40a1 0017 0000 0000     .......b.@......
62fc16c8:	1384 62fc 40a1 0018 0000 0000 1384 62fc     ...b.@.........b
62fc16d8:	28a1 0018 0000 0000 1384 62fc 60c4 0016     .(.........b.`..
62fc16e8:	0000 0000 1384 62fc 60c4 0015 0000 0000     .......b.`......
62fc16f8:	1384 62fc 60c4 0017 0000 0000 1384 62fc     ...b.`.........b
62fc1708:	6125 0016 0000 0000 12dc 62fc 65c8 0017     %a.........b.e..
62fc1718:	0000 0000 1330 62fc 60c4 0014 0000 0000     ....0..b.`......
62fc1728:	1384 62fc                                   ...b

62fc172c <Clock_Get_AUPLL_Output>:
62fc172c:	1101                	addi	sp,sp,-32
62fc172e:	ca26                	sw	s1,20(sp)
62fc1730:	000107a3          	sb	zero,15(sp)
62fc1734:	84aa                	mv	s1,a0
62fc1736:	200087b7          	lui	a5,0x20008
62fc173a:	00f10513          	addi	a0,sp,15
62fc173e:	cc22                	sw	s0,24(sp)
62fc1740:	ce06                	sw	ra,28(sp)
62fc1742:	7687a403          	lw	s0,1896(a5) # 20008768 <remain_wifi_ram+0x1ffe8768>
62fc1746:	c02ff0ef          	jal	ra,62fc0b48 <HBN_Get_Xtal_Type>
62fc174a:	e121                	bnez	a0,62fc178a <Clock_Get_AUPLL_Output+0x5e>
62fc174c:	00f14703          	lbu	a4,15(sp)
62fc1750:	000807b7          	lui	a5,0x80
62fc1754:	17fd                	addi	a5,a5,-1
62fc1756:	4691                	li	a3,4
62fc1758:	8fe1                	and	a5,a5,s0
62fc175a:	0cd70463          	beq	a4,a3,62fc1822 <Clock_Get_AUPLL_Output+0xf6>
62fc175e:	02e6e063          	bltu	a3,a4,62fc177e <Clock_Get_AUPLL_Output+0x52>
62fc1762:	4689                	li	a3,2
62fc1764:	0cd70763          	beq	a4,a3,62fc1832 <Clock_Get_AUPLL_Output+0x106>
62fc1768:	468d                	li	a3,3
62fc176a:	0ad70363          	beq	a4,a3,62fc1810 <Clock_Get_AUPLL_Output+0xe4>
62fc176e:	4685                	li	a3,1
62fc1770:	00d70f63          	beq	a4,a3,62fc178e <Clock_Get_AUPLL_Output+0x62>
62fc1774:	40f2                	lw	ra,28(sp)
62fc1776:	4462                	lw	s0,24(sp)
62fc1778:	44d2                	lw	s1,20(sp)
62fc177a:	6105                	addi	sp,sp,32
62fc177c:	8082                	ret
62fc177e:	4695                	li	a3,5
62fc1780:	0ad70563          	beq	a4,a3,62fc182a <Clock_Get_AUPLL_Output+0xfe>
62fc1784:	4699                	li	a3,6
62fc1786:	0ad70663          	beq	a4,a3,62fc1832 <Clock_Get_AUPLL_Output+0x106>
62fc178a:	4501                	li	a0,0
62fc178c:	b7e5                	j	62fc1774 <Clock_Get_AUPLL_Output+0x48>
62fc178e:	6719                	lui	a4,0x6
62fc1790:	dc070713          	addi	a4,a4,-576 # 5dc0 <HeapMinSize+0x4dc0>
62fc1794:	02e787b3          	mul	a5,a5,a4
62fc1798:	1f400713          	li	a4,500
62fc179c:	83ad                	srli	a5,a5,0xb
62fc179e:	02e787b3          	mul	a5,a5,a4
62fc17a2:	e2bbf737          	lui	a4,0xe2bbf
62fc17a6:	f4070713          	addi	a4,a4,-192 # e2bbef40 <__psram_limit+0x3a7bef40>
62fc17aa:	000f46b7          	lui	a3,0xf4
62fc17ae:	24068693          	addi	a3,a3,576 # f4240 <remain_wifi_ram+0xd4240>
62fc17b2:	973e                	add	a4,a4,a5
62fc17b4:	08e6f363          	bgeu	a3,a4,62fc183a <Clock_Get_AUPLL_Output+0x10e>
62fc17b8:	e51e5737          	lui	a4,0xe51e5
62fc17bc:	94070713          	addi	a4,a4,-1728 # e51e4940 <__psram_limit+0x3cde4940>
62fc17c0:	973e                	add	a4,a4,a5
62fc17c2:	06e6ff63          	bgeu	a3,a4,62fc1840 <Clock_Get_AUPLL_Output+0x114>
62fc17c6:	e837c737          	lui	a4,0xe837c
62fc17ca:	e4070713          	addi	a4,a4,-448 # e837be40 <__psram_limit+0x3ff7be40>
62fc17ce:	001e86b7          	lui	a3,0x1e8
62fc17d2:	973e                	add	a4,a4,a5
62fc17d4:	48068693          	addi	a3,a3,1152 # 1e8480 <remain_wifi_ram+0x1c8480>
62fc17d8:	06e6f963          	bgeu	a3,a4,62fc184a <Clock_Get_AUPLL_Output+0x11e>
62fc17dc:	e92be737          	lui	a4,0xe92be
62fc17e0:	24070713          	addi	a4,a4,576 # e92be240 <__psram_limit+0x40ebe240>
62fc17e4:	97ba                	add	a5,a5,a4
62fc17e6:	4501                	li	a0,0
62fc17e8:	f8f6e6e3          	bltu	a3,a5,62fc1774 <Clock_Get_AUPLL_Output+0x48>
62fc17ec:	16e36537          	lui	a0,0x16e36
62fc17f0:	4791                	li	a5,4
62fc17f2:	06f48c63          	beq	s1,a5,62fc186a <Clock_Get_AUPLL_Output+0x13e>
62fc17f6:	0497ef63          	bltu	a5,s1,62fc1854 <Clock_Get_AUPLL_Output+0x128>
62fc17fa:	4789                	li	a5,2
62fc17fc:	06f48263          	beq	s1,a5,62fc1860 <Clock_Get_AUPLL_Output+0x134>
62fc1800:	478d                	li	a5,3
62fc1802:	04f48c63          	beq	s1,a5,62fc185a <Clock_Get_AUPLL_Output+0x12e>
62fc1806:	4785                	li	a5,1
62fc1808:	f6f496e3          	bne	s1,a5,62fc1774 <Clock_Get_AUPLL_Output+0x48>
62fc180c:	8105                	srli	a0,a0,0x1
62fc180e:	b79d                	j	62fc1774 <Clock_Get_AUPLL_Output+0x48>
62fc1810:	6725                	lui	a4,0x9
62fc1812:	60070713          	addi	a4,a4,1536 # 9600 <wifi_ram_max_size+0x1600>
62fc1816:	02e787b3          	mul	a5,a5,a4
62fc181a:	0fa00713          	li	a4,250
62fc181e:	83ad                	srli	a5,a5,0xb
62fc1820:	bfbd                	j	62fc179e <Clock_Get_AUPLL_Output+0x72>
62fc1822:	6729                	lui	a4,0xa
62fc1824:	c4070713          	addi	a4,a4,-960 # 9c40 <wifi_ram_max_size+0x1c40>
62fc1828:	b7fd                	j	62fc1816 <Clock_Get_AUPLL_Output+0xea>
62fc182a:	6719                	lui	a4,0x6
62fc182c:	59070713          	addi	a4,a4,1424 # 6590 <HeapMinSize+0x5590>
62fc1830:	b795                	j	62fc1794 <Clock_Get_AUPLL_Output+0x68>
62fc1832:	6721                	lui	a4,0x8
62fc1834:	d0070713          	addi	a4,a4,-768 # 7d00 <HeapMinSize+0x6d00>
62fc1838:	bff9                	j	62fc1816 <Clock_Get_AUPLL_Output+0xea>
62fc183a:	1d4c0537          	lui	a0,0x1d4c0
62fc183e:	bf4d                	j	62fc17f0 <Clock_Get_AUPLL_Output+0xc4>
62fc1840:	1aea9537          	lui	a0,0x1aea9
62fc1844:	06050513          	addi	a0,a0,96 # 1aea9060 <remain_wifi_ram+0x1ae89060>
62fc1848:	b765                	j	62fc17f0 <Clock_Get_AUPLL_Output+0xc4>
62fc184a:	17d78537          	lui	a0,0x17d78
62fc184e:	40050513          	addi	a0,a0,1024 # 17d78400 <remain_wifi_ram+0x17d58400>
62fc1852:	bf79                	j	62fc17f0 <Clock_Get_AUPLL_Output+0xc4>
62fc1854:	4795                	li	a5,5
62fc1856:	00f49c63          	bne	s1,a5,62fc186e <Clock_Get_AUPLL_Output+0x142>
62fc185a:	02955533          	divu	a0,a0,s1
62fc185e:	bf19                	j	62fc1774 <Clock_Get_AUPLL_Output+0x48>
62fc1860:	0506                	slli	a0,a0,0x1
62fc1862:	4795                	li	a5,5
62fc1864:	02f55533          	divu	a0,a0,a5
62fc1868:	b731                	j	62fc1774 <Clock_Get_AUPLL_Output+0x48>
62fc186a:	8109                	srli	a0,a0,0x2
62fc186c:	b721                	j	62fc1774 <Clock_Get_AUPLL_Output+0x48>
62fc186e:	4799                	li	a5,6
62fc1870:	bfd5                	j	62fc1864 <Clock_Get_AUPLL_Output+0x138>

62fc1872 <Clock_Get_Audio_PLL_Output>:
62fc1872:	1141                	addi	sp,sp,-16
62fc1874:	200087b7          	lui	a5,0x20008
62fc1878:	c422                	sw	s0,8(sp)
62fc187a:	7547a403          	lw	s0,1876(a5) # 20008754 <remain_wifi_ram+0x1ffe8754>
62fc187e:	4501                	li	a0,0
62fc1880:	c606                	sw	ra,12(sp)
62fc1882:	07f47413          	andi	s0,s0,127
62fc1886:	355d                	jal	62fc172c <Clock_Get_AUPLL_Output>
62fc1888:	02855533          	divu	a0,a0,s0
62fc188c:	40b2                	lw	ra,12(sp)
62fc188e:	4422                	lw	s0,8(sp)
62fc1890:	0141                	addi	sp,sp,16
62fc1892:	8082                	ret

62fc1894 <Clock_160M_Clk_Mux_Output>:
62fc1894:	c10d                	beqz	a0,62fc18b6 <Clock_160M_Clk_Mux_Output+0x22>
62fc1896:	4785                	li	a5,1
62fc1898:	00f51463          	bne	a0,a5,62fc18a0 <Clock_160M_Clk_Mux_Output+0xc>
62fc189c:	450d                	li	a0,3
62fc189e:	b579                	j	62fc172c <Clock_Get_AUPLL_Output>
62fc18a0:	4789                	li	a5,2
62fc18a2:	00f51463          	bne	a0,a5,62fc18aa <Clock_160M_Clk_Mux_Output+0x16>
62fc18a6:	4505                	li	a0,1
62fc18a8:	bfdd                	j	62fc189e <Clock_160M_Clk_Mux_Output+0xa>
62fc18aa:	470d                	li	a4,3
62fc18ac:	4781                	li	a5,0
62fc18ae:	00e51863          	bne	a0,a4,62fc18be <Clock_160M_Clk_Mux_Output+0x2a>
62fc18b2:	4509                	li	a0,2
62fc18b4:	b7ed                	j	62fc189e <Clock_160M_Clk_Mux_Output+0xa>
62fc18b6:	098977b7          	lui	a5,0x9897
62fc18ba:	80078793          	addi	a5,a5,-2048 # 9896800 <remain_wifi_ram+0x9876800>
62fc18be:	853e                	mv	a0,a5
62fc18c0:	8082                	ret

62fc18c2 <Clock_Xtal_Output>:
62fc18c2:	1101                	addi	sp,sp,-32
62fc18c4:	00f10513          	addi	a0,sp,15
62fc18c8:	ce06                	sw	ra,28(sp)
62fc18ca:	000107a3          	sb	zero,15(sp)
62fc18ce:	a7aff0ef          	jal	ra,62fc0b48 <HBN_Get_Xtal_Type>
62fc18d2:	ed19                	bnez	a0,62fc18f0 <Clock_Xtal_Output+0x2e>
62fc18d4:	00f14703          	lbu	a4,15(sp)
62fc18d8:	4799                	li	a5,6
62fc18da:	00e7e863          	bltu	a5,a4,62fc18ea <Clock_Xtal_Output+0x28>
62fc18de:	a00087b7          	lui	a5,0xa0008
62fc18e2:	08478793          	addi	a5,a5,132 # a0008084 <__psram_limit+0xf7c08084>
62fc18e6:	44e7c50b          	lrw	a0,a5,a4,2
62fc18ea:	40f2                	lw	ra,28(sp)
62fc18ec:	6105                	addi	sp,sp,32
62fc18ee:	8082                	ret
62fc18f0:	02626537          	lui	a0,0x2626
62fc18f4:	a0050513          	addi	a0,a0,-1536 # 2625a00 <remain_wifi_ram+0x2605a00>
62fc18f8:	bfcd                	j	62fc18ea <Clock_Xtal_Output+0x28>

62fc18fa <Clock_F32k_Mux_Output>:
62fc18fa:	200007b7          	lui	a5,0x20000
62fc18fe:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
62fc1902:	4709                	li	a4,2
62fc1904:	02a77e63          	bgeu	a4,a0,62fc1940 <Clock_F32k_Mux_Output+0x46>
62fc1908:	6505                	lui	a0,0x1
62fc190a:	8d7d                	and	a0,a0,a5
62fc190c:	cd05                	beqz	a0,62fc1944 <Clock_F32k_Mux_Output+0x4a>
62fc190e:	1141                	addi	sp,sp,-16
62fc1910:	c422                	sw	s0,8(sp)
62fc1912:	c606                	sw	ra,12(sp)
62fc1914:	7ff7f413          	andi	s0,a5,2047
62fc1918:	75c7b78b          	extu	a5,a5,29,28
62fc191c:	eb99                	bnez	a5,62fc1932 <Clock_F32k_Mux_Output+0x38>
62fc191e:	01e85537          	lui	a0,0x1e85
62fc1922:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc1926:	02855533          	divu	a0,a0,s0
62fc192a:	40b2                	lw	ra,12(sp)
62fc192c:	4422                	lw	s0,8(sp)
62fc192e:	0141                	addi	sp,sp,16
62fc1930:	8082                	ret
62fc1932:	4705                	li	a4,1
62fc1934:	00e79463          	bne	a5,a4,62fc193c <Clock_F32k_Mux_Output+0x42>
62fc1938:	3769                	jal	62fc18c2 <Clock_Xtal_Output>
62fc193a:	b7f5                	j	62fc1926 <Clock_F32k_Mux_Output+0x2c>
62fc193c:	3f1d                	jal	62fc1872 <Clock_Get_Audio_PLL_Output>
62fc193e:	b7e5                	j	62fc1926 <Clock_F32k_Mux_Output+0x2c>
62fc1940:	6521                	lui	a0,0x8
62fc1942:	8082                	ret
62fc1944:	8082                	ret

62fc1946 <Clock_MCU_Root_Clk_Mux_Output>:
62fc1946:	e519                	bnez	a0,62fc1954 <Clock_MCU_Root_Clk_Mux_Output+0xe>
62fc1948:	2000f7b7          	lui	a5,0x2000f
62fc194c:	5b9c                	lw	a5,48(a5)
62fc194e:	8b85                	andi	a5,a5,1
62fc1950:	cb8d                	beqz	a5,62fc1982 <Clock_MCU_Root_Clk_Mux_Output+0x3c>
62fc1952:	bf85                	j	62fc18c2 <Clock_Xtal_Output>
62fc1954:	4685                	li	a3,1
62fc1956:	4781                	li	a5,0
62fc1958:	02d51363          	bne	a0,a3,62fc197e <Clock_MCU_Root_Clk_Mux_Output+0x38>
62fc195c:	2000e7b7          	lui	a5,0x2000e
62fc1960:	1147a783          	lw	a5,276(a5) # 2000e114 <remain_wifi_ram+0x1ffee114>
62fc1964:	1447b78b          	extu	a5,a5,5,4
62fc1968:	e391                	bnez	a5,62fc196c <Clock_MCU_Root_Clk_Mux_Output+0x26>
62fc196a:	b3c9                	j	62fc172c <Clock_Get_AUPLL_Output>
62fc196c:	00a79463          	bne	a5,a0,62fc1974 <Clock_MCU_Root_Clk_Mux_Output+0x2e>
62fc1970:	4501                	li	a0,0
62fc1972:	bfe5                	j	62fc196a <Clock_MCU_Root_Clk_Mux_Output+0x24>
62fc1974:	4709                	li	a4,2
62fc1976:	00e78b63          	beq	a5,a4,62fc198c <Clock_MCU_Root_Clk_Mux_Output+0x46>
62fc197a:	1312d7b7          	lui	a5,0x1312d
62fc197e:	853e                	mv	a0,a5
62fc1980:	8082                	ret
62fc1982:	01e857b7          	lui	a5,0x1e85
62fc1986:	80078793          	addi	a5,a5,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc198a:	bfd5                	j	62fc197e <Clock_MCU_Root_Clk_Mux_Output+0x38>
62fc198c:	0e4e27b7          	lui	a5,0xe4e2
62fc1990:	c0078793          	addi	a5,a5,-1024 # e4e1c00 <remain_wifi_ram+0xe4c1c00>
62fc1994:	b7ed                	j	62fc197e <Clock_MCU_Root_Clk_Mux_Output+0x38>

62fc1996 <Clock_System_Clock_Get>:
62fc1996:	4791                	li	a5,4
62fc1998:	06f50a63          	beq	a0,a5,62fc1a0c <Clock_System_Clock_Get+0x76>
62fc199c:	00a7ef63          	bltu	a5,a0,62fc19ba <Clock_System_Clock_Get+0x24>
62fc19a0:	1141                	addi	sp,sp,-16
62fc19a2:	c606                	sw	ra,12(sp)
62fc19a4:	4785                	li	a5,1
62fc19a6:	02f50a63          	beq	a0,a5,62fc19da <Clock_System_Clock_Get+0x44>
62fc19aa:	478d                	li	a5,3
62fc19ac:	04f50763          	beq	a0,a5,62fc19fa <Clock_System_Clock_Get+0x64>
62fc19b0:	cd09                	beqz	a0,62fc19ca <Clock_System_Clock_Get+0x34>
62fc19b2:	4501                	li	a0,0
62fc19b4:	40b2                	lw	ra,12(sp)
62fc19b6:	0141                	addi	sp,sp,16
62fc19b8:	8082                	ret
62fc19ba:	4795                	li	a5,5
62fc19bc:	04f50e63          	beq	a0,a5,62fc1a18 <Clock_System_Clock_Get+0x82>
62fc19c0:	4799                	li	a5,6
62fc19c2:	06f50063          	beq	a0,a5,62fc1a22 <Clock_System_Clock_Get+0x8c>
62fc19c6:	4501                	li	a0,0
62fc19c8:	8082                	ret
62fc19ca:	2000f7b7          	lui	a5,0x2000f
62fc19ce:	5b88                	lw	a0,48(a5)
62fc19d0:	40b2                	lw	ra,12(sp)
62fc19d2:	0415350b          	extu	a0,a0,1,1
62fc19d6:	0141                	addi	sp,sp,16
62fc19d8:	b7bd                	j	62fc1946 <Clock_MCU_Root_Clk_Mux_Output>
62fc19da:	2000f7b7          	lui	a5,0x2000f
62fc19de:	5b88                	lw	a0,48(a5)
62fc19e0:	0415350b          	extu	a0,a0,1,1
62fc19e4:	378d                	jal	62fc1946 <Clock_MCU_Root_Clk_Mux_Output>
62fc19e6:	200007b7          	lui	a5,0x20000
62fc19ea:	0907a783          	lw	a5,144(a5) # 20000090 <remain_wifi_ram+0x1ffe0090>
62fc19ee:	3c87b78b          	extu	a5,a5,15,8
62fc19f2:	0785                	addi	a5,a5,1
62fc19f4:	02f55533          	divu	a0,a0,a5
62fc19f8:	bf75                	j	62fc19b4 <Clock_System_Clock_Get+0x1e>
62fc19fa:	4505                	li	a0,1
62fc19fc:	3f69                	jal	62fc1996 <Clock_System_Clock_Get>
62fc19fe:	200007b7          	lui	a5,0x20000
62fc1a02:	0907a783          	lw	a5,144(a5) # 20000090 <remain_wifi_ram+0x1ffe0090>
62fc1a06:	5d07b78b          	extu	a5,a5,23,16
62fc1a0a:	b7e5                	j	62fc19f2 <Clock_System_Clock_Get+0x5c>
62fc1a0c:	2000f7b7          	lui	a5,0x2000f
62fc1a10:	5b88                	lw	a0,48(a5)
62fc1a12:	1035350b          	extu	a0,a0,4,3
62fc1a16:	b5d5                	j	62fc18fa <Clock_F32k_Mux_Output>
62fc1a18:	2000f7b7          	lui	a5,0x2000f
62fc1a1c:	5b9c                	lw	a5,48(a5)
62fc1a1e:	8b85                	andi	a5,a5,1
62fc1a20:	c391                	beqz	a5,62fc1a24 <Clock_System_Clock_Get+0x8e>
62fc1a22:	b545                	j	62fc18c2 <Clock_Xtal_Output>
62fc1a24:	01e85537          	lui	a0,0x1e85
62fc1a28:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc1a2c:	8082                	ret

62fc1a2e <CPU_Set_MTimer_CLK>:
62fc1a2e:	200097b7          	lui	a5,0x20009
62fc1a32:	4bd8                	lw	a4,20(a5)
62fc1a34:	e00006b7          	lui	a3,0xe0000
62fc1a38:	16fd                	addi	a3,a3,-1
62fc1a3a:	8f75                	and	a4,a4,a3
62fc1a3c:	05f6                	slli	a1,a1,0x1d
62fc1a3e:	8dd9                	or	a1,a1,a4
62fc1a40:	cbcc                	sw	a1,20(a5)
62fc1a42:	4bd4                	lw	a3,20(a5)
62fc1a44:	800005b7          	lui	a1,0x80000
62fc1a48:	fff5c713          	not	a4,a1
62fc1a4c:	8ef9                	and	a3,a3,a4
62fc1a4e:	cbd4                	sw	a3,20(a5)
62fc1a50:	4bd4                	lw	a3,20(a5)
62fc1a52:	c006f693          	andi	a3,a3,-1024
62fc1a56:	8e55                	or	a2,a2,a3
62fc1a58:	cbd0                	sw	a2,20(a5)
62fc1a5a:	4bdc                	lw	a5,20(a5)
62fc1a5c:	8f7d                	and	a4,a4,a5
62fc1a5e:	c119                	beqz	a0,62fc1a64 <CPU_Set_MTimer_CLK+0x36>
62fc1a60:	00b7e733          	or	a4,a5,a1
62fc1a64:	200097b7          	lui	a5,0x20009
62fc1a68:	cbd8                	sw	a4,20(a5)
62fc1a6a:	4501                	li	a0,0
62fc1a6c:	8082                	ret

62fc1a6e <system_clock_init>:
62fc1a6e:	1141                	addi	sp,sp,-16
62fc1a70:	458d                	li	a1,3
62fc1a72:	4511                	li	a0,4
62fc1a74:	c606                	sw	ra,12(sp)
62fc1a76:	86eff0ef          	jal	ra,62fc0ae4 <GLB_Power_On_XTAL_And_PLL_CLK>
62fc1a7a:	4515                	li	a0,5
62fc1a7c:	890ff0ef          	jal	ra,62fc0b0c <GLB_Set_MCU_System_CLK>
62fc1a80:	4505                	li	a0,1
62fc1a82:	8daff0ef          	jal	ra,62fc0b5c <HBN_Set_MCU_XCLK_Sel>
62fc1a86:	4515                	li	a0,5
62fc1a88:	3739                	jal	62fc1996 <Clock_System_Clock_Get>
62fc1a8a:	000f4637          	lui	a2,0xf4
62fc1a8e:	24060613          	addi	a2,a2,576 # f4240 <remain_wifi_ram+0xd4240>
62fc1a92:	02c55633          	divu	a2,a0,a2
62fc1a96:	40b2                	lw	ra,12(sp)
62fc1a98:	4581                	li	a1,0
62fc1a9a:	4505                	li	a0,1
62fc1a9c:	0141                	addi	sp,sp,16
62fc1a9e:	167d                	addi	a2,a2,-1
62fc1aa0:	3c06360b          	extu	a2,a2,15,0
62fc1aa4:	b769                	j	62fc1a2e <CPU_Set_MTimer_CLK>
	...
