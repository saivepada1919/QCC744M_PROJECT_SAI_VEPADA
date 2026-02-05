
/home/sai/QCCSDK-QCC74x/examples/peripherals/spi/spi_master/build/build_out/spi_poll_qcc743.elf:     file format elf32-littleriscv


Disassembly of section .init:

a0000000 <__start>:
a0000000:	c2fc2197          	auipc	gp,0xc2fc2
a0000004:	48818193          	addi	gp,gp,1160 # 62fc2488 <__global_pointer$>
a0000008:	30047073          	csrci	mstatus,8
a000000c:	20056537          	lui	a0,0x20056
a0000010:	0b052583          	lw	a1,176(a0) # 200560b0 <remain_wifi_ram+0x200360b0>
a0000014:	40280537          	lui	a0,0x40280
a0000018:	7641                	lui	a2,0xffff0
a000001a:	8df1                	and	a1,a1,a2
a000001c:	00b50363          	beq	a0,a1,a0000022 <__start+0x22>
a0000020:	a001                	j	a0000020 <__start+0x20>
a0000022:	00007517          	auipc	a0,0x7
a0000026:	6de50513          	addi	a0,a0,1758 # a0007700 <trap>
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
a000004c:	f9810113          	addi	sp,sp,-104 # 62fc2fe0 <adc>
a0000050:	34011073          	csrw	mscratch,sp
a0000054:	0ef070ef          	jal	ra,a0007942 <SystemInit>
a0000058:	7e4070ef          	jal	ra,a000783c <start_load>
a000005c:	2ad070ef          	jal	ra,a0007b08 <System_Post_Init>
a0000060:	132040ef          	jal	ra,a0004192 <main>

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
a0000d0e:	a000a737          	lui	a4,0xa000a
a0000d12:	a2c70713          	addi	a4,a4,-1492 # a0009a2c <__psram_limit+0xf7c09a2c>
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
a0000f46:	a000a737          	lui	a4,0xa000a
a0000f4a:	00f6d533          	srl	a0,a3,a5
a0000f4e:	a2c70713          	addi	a4,a4,-1492 # a0009a2c <__psram_limit+0xf7c09a2c>
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
a00010b6:	a000a6b7          	lui	a3,0xa000a
a00010ba:	a2c68693          	addi	a3,a3,-1492 # a0009a2c <__psram_limit+0xf7c09a2c>
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
a00012a4:	a000a737          	lui	a4,0xa000a
a00012a8:	00f6d8b3          	srl	a7,a3,a5
a00012ac:	a2c70713          	addi	a4,a4,-1492 # a0009a2c <__psram_limit+0xf7c09a2c>
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
a000140e:	a000a6b7          	lui	a3,0xa000a
a0001412:	a2c68693          	addi	a3,a3,-1492 # a0009a2c <__psram_limit+0xf7c09a2c>
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
a000162a:	a000a737          	lui	a4,0xa000a
a000162e:	00b6d533          	srl	a0,a3,a1
a0001632:	a2c70713          	addi	a4,a4,-1492 # a0009a2c <__psram_limit+0xf7c09a2c>
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
a000176c:	a000a737          	lui	a4,0xa000a
a0001770:	a2c70713          	addi	a4,a4,-1492 # a0009a2c <__psram_limit+0xf7c09a2c>
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
a0001940:	a000a737          	lui	a4,0xa000a
a0001944:	00f6d833          	srl	a6,a3,a5
a0001948:	a2c70713          	addi	a4,a4,-1492 # a0009a2c <__psram_limit+0xf7c09a2c>
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
a0002130:	527010ef          	jal	ra,a0003e56 <__clzsi2>
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
a000218c:	4cb010ef          	jal	ra,a0003e56 <__clzsi2>
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
a00023b6:	2a1010ef          	jal	ra,a0003e56 <__clzsi2>
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
a00023e6:	271010ef          	jal	ra,a0003e56 <__clzsi2>
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
a0002466:	a000a537          	lui	a0,0xa000a
a000246a:	068a                	slli	a3,a3,0x2
a000246c:	9b450513          	addi	a0,a0,-1612 # a00099b4 <__psram_limit+0xf7c099b4>
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
a0002496:	1c1010ef          	jal	ra,a0003e56 <__clzsi2>
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
a00024ca:	18d010ef          	jal	ra,a0003e56 <__clzsi2>
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
a0002c3e:	218010ef          	jal	ra,a0003e56 <__clzsi2>
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
a0002c6e:	1e8010ef          	jal	ra,a0003e56 <__clzsi2>
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
a0002cec:	a000a637          	lui	a2,0xa000a
a0002cf0:	068a                	slli	a3,a3,0x2
a0002cf2:	9f060613          	addi	a2,a2,-1552 # a00099f0 <__psram_limit+0xf7c099f0>
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
a0002d1c:	13a010ef          	jal	ra,a0003e56 <__clzsi2>
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
a0002d4c:	10a010ef          	jal	ra,a0003e56 <__clzsi2>
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
a0003896:	23c1                	jal	a0003e56 <__clzsi2>
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
a00038f0:	239d                	jal	a0003e56 <__clzsi2>
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
a0003afc:	2ea9                	jal	a0003e56 <__clzsi2>
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

a0003b48 <__floatunsidf>:
a0003b48:	1141                	addi	sp,sp,-16
a0003b4a:	c422                	sw	s0,8(sp)
a0003b4c:	c606                	sw	ra,12(sp)
a0003b4e:	842a                	mv	s0,a0
a0003b50:	c121                	beqz	a0,a0003b90 <__floatunsidf+0x48>
a0003b52:	2611                	jal	a0003e56 <__clzsi2>
a0003b54:	41e00713          	li	a4,1054
a0003b58:	47a9                	li	a5,10
a0003b5a:	8f09                	sub	a4,a4,a0
a0003b5c:	02a7c463          	blt	a5,a0,a0003b84 <__floatunsidf+0x3c>
a0003b60:	47ad                	li	a5,11
a0003b62:	8f89                	sub	a5,a5,a0
a0003b64:	0555                	addi	a0,a0,21
a0003b66:	00f457b3          	srl	a5,s0,a5
a0003b6a:	00a41433          	sll	s0,s0,a0
a0003b6e:	40b2                	lw	ra,12(sp)
a0003b70:	8522                	mv	a0,s0
a0003b72:	07b2                	slli	a5,a5,0xc
a0003b74:	4422                	lw	s0,8(sp)
a0003b76:	0752                	slli	a4,a4,0x14
a0003b78:	83b1                	srli	a5,a5,0xc
a0003b7a:	00f766b3          	or	a3,a4,a5
a0003b7e:	85b6                	mv	a1,a3
a0003b80:	0141                	addi	sp,sp,16
a0003b82:	8082                	ret
a0003b84:	ff550793          	addi	a5,a0,-11
a0003b88:	00f417b3          	sll	a5,s0,a5
a0003b8c:	4401                	li	s0,0
a0003b8e:	b7c5                	j	a0003b6e <__floatunsidf+0x26>
a0003b90:	4781                	li	a5,0
a0003b92:	4701                	li	a4,0
a0003b94:	bfe9                	j	a0003b6e <__floatunsidf+0x26>

a0003b96 <__fixdfdi>:
a0003b96:	002027f3          	frrm	a5
a0003b9a:	00100737          	lui	a4,0x100
a0003b9e:	0145d613          	srli	a2,a1,0x14
a0003ba2:	fff70693          	addi	a3,a4,-1 # fffff <remain_wifi_ram+0xdffff>
a0003ba6:	7ff67613          	andi	a2,a2,2047
a0003baa:	3fe00793          	li	a5,1022
a0003bae:	8eed                	and	a3,a3,a1
a0003bb0:	00c7ca63          	blt	a5,a2,a0003bc4 <__fixdfdi+0x2e>
a0003bb4:	ea79                	bnez	a2,a0003c8a <__fixdfdi+0xf4>
a0003bb6:	00a6e733          	or	a4,a3,a0
a0003bba:	4781                	li	a5,0
a0003bbc:	4581                	li	a1,0
a0003bbe:	eb61                	bnez	a4,a0003c8e <__fixdfdi+0xf8>
a0003bc0:	853e                	mv	a0,a5
a0003bc2:	8082                	ret
a0003bc4:	1141                	addi	sp,sp,-16
a0003bc6:	c422                	sw	s0,8(sp)
a0003bc8:	c606                	sw	ra,12(sp)
a0003bca:	43d00793          	li	a5,1085
a0003bce:	01f5d413          	srli	s0,a1,0x1f
a0003bd2:	02c7dc63          	bge	a5,a2,a0003c0a <__fixdfdi+0x74>
a0003bd6:	4785                	li	a5,1
a0003bd8:	8f81                	sub	a5,a5,s0
a0003bda:	41f7d813          	srai	a6,a5,0x1f
a0003bde:	800005b7          	lui	a1,0x80000
a0003be2:	00f03733          	snez	a4,a5
a0003be6:	410585b3          	sub	a1,a1,a6
a0003bea:	40f007b3          	neg	a5,a5
a0003bee:	8d99                	sub	a1,a1,a4
a0003bf0:	c05d                	beqz	s0,a0003c96 <__fixdfdi+0x100>
a0003bf2:	43e00813          	li	a6,1086
a0003bf6:	4741                	li	a4,16
a0003bf8:	07061363          	bne	a2,a6,a0003c5e <__fixdfdi+0xc8>
a0003bfc:	8d55                	or	a0,a0,a3
a0003bfe:	e125                	bnez	a0,a0003c5e <__fixdfdi+0xc8>
a0003c00:	40b2                	lw	ra,12(sp)
a0003c02:	4422                	lw	s0,8(sp)
a0003c04:	853e                	mv	a0,a5
a0003c06:	0141                	addi	sp,sp,16
a0003c08:	8082                	ret
a0003c0a:	43200793          	li	a5,1074
a0003c0e:	00e6e5b3          	or	a1,a3,a4
a0003c12:	00c7da63          	bge	a5,a2,a0003c26 <__fixdfdi+0x90>
a0003c16:	bcd60613          	addi	a2,a2,-1075
a0003c1a:	890fd0ef          	jal	ra,a0000caa <__ashldi3>
a0003c1e:	87aa                	mv	a5,a0
a0003c20:	d065                	beqz	s0,a0003c00 <__fixdfdi+0x6a>
a0003c22:	4701                	li	a4,0
a0003c24:	a02d                	j	a0003c4e <__fixdfdi+0xb8>
a0003c26:	43300693          	li	a3,1075
a0003c2a:	8e91                	sub	a3,a3,a2
a0003c2c:	47fd                	li	a5,31
a0003c2e:	02d7cb63          	blt	a5,a3,a0003c64 <__fixdfdi+0xce>
a0003c32:	bed60613          	addi	a2,a2,-1043
a0003c36:	00c51733          	sll	a4,a0,a2
a0003c3a:	00d557b3          	srl	a5,a0,a3
a0003c3e:	00c59633          	sll	a2,a1,a2
a0003c42:	00e03733          	snez	a4,a4
a0003c46:	8fd1                	or	a5,a5,a2
a0003c48:	00d5d5b3          	srl	a1,a1,a3
a0003c4c:	c801                	beqz	s0,a0003c5c <__fixdfdi+0xc6>
a0003c4e:	00f036b3          	snez	a3,a5
a0003c52:	40b005b3          	neg	a1,a1
a0003c56:	8d95                	sub	a1,a1,a3
a0003c58:	40f007b3          	neg	a5,a5
a0003c5c:	d355                	beqz	a4,a0003c00 <__fixdfdi+0x6a>
a0003c5e:	00172073          	csrs	fflags,a4
a0003c62:	bf79                	j	a0003c00 <__fixdfdi+0x6a>
a0003c64:	02000793          	li	a5,32
a0003c68:	4701                	li	a4,0
a0003c6a:	00f68663          	beq	a3,a5,a0003c76 <__fixdfdi+0xe0>
a0003c6e:	c0d60713          	addi	a4,a2,-1011
a0003c72:	00e59733          	sll	a4,a1,a4
a0003c76:	41300793          	li	a5,1043
a0003c7a:	8f49                	or	a4,a4,a0
a0003c7c:	8f91                	sub	a5,a5,a2
a0003c7e:	00f5d7b3          	srl	a5,a1,a5
a0003c82:	00e03733          	snez	a4,a4
a0003c86:	4581                	li	a1,0
a0003c88:	b7d1                	j	a0003c4c <__fixdfdi+0xb6>
a0003c8a:	4781                	li	a5,0
a0003c8c:	4581                	li	a1,0
a0003c8e:	4705                	li	a4,1
a0003c90:	00172073          	csrs	fflags,a4
a0003c94:	b735                	j	a0003bc0 <__fixdfdi+0x2a>
a0003c96:	4741                	li	a4,16
a0003c98:	b7d9                	j	a0003c5e <__fixdfdi+0xc8>

a0003c9a <__floatdidf>:
a0003c9a:	7179                	addi	sp,sp,-48
a0003c9c:	d606                	sw	ra,44(sp)
a0003c9e:	d422                	sw	s0,40(sp)
a0003ca0:	d226                	sw	s1,36(sp)
a0003ca2:	d04a                	sw	s2,32(sp)
a0003ca4:	ce4e                	sw	s3,28(sp)
a0003ca6:	cc52                	sw	s4,24(sp)
a0003ca8:	ca56                	sw	s5,20(sp)
a0003caa:	c85a                	sw	s6,16(sp)
a0003cac:	c65e                	sw	s7,12(sp)
a0003cae:	c462                	sw	s8,8(sp)
a0003cb0:	00202a73          	frrm	s4
a0003cb4:	00b567b3          	or	a5,a0,a1
a0003cb8:	18078963          	beqz	a5,a0003e4a <__floatdidf+0x1b0>
a0003cbc:	842a                	mv	s0,a0
a0003cbe:	8bae                	mv	s7,a1
a0003cc0:	89ae                	mv	s3,a1
a0003cc2:	01f5d913          	srli	s2,a1,0x1f
a0003cc6:	0005da63          	bgez	a1,a0003cda <__floatdidf+0x40>
a0003cca:	00a03733          	snez	a4,a0
a0003cce:	40b009b3          	neg	s3,a1
a0003cd2:	40e989b3          	sub	s3,s3,a4
a0003cd6:	40a00433          	neg	s0,a0
a0003cda:	84ce                	mv	s1,s3
a0003cdc:	06098c63          	beqz	s3,a0003d54 <__floatdidf+0xba>
a0003ce0:	854e                	mv	a0,s3
a0003ce2:	2a95                	jal	a0003e56 <__clzsi2>
a0003ce4:	8aaa                	mv	s5,a0
a0003ce6:	43e00b13          	li	s6,1086
a0003cea:	415b0b33          	sub	s6,s6,s5
a0003cee:	43300793          	li	a5,1075
a0003cf2:	0767cc63          	blt	a5,s6,a0003d6a <__floatdidf+0xd0>
a0003cf6:	47ad                	li	a5,11
a0003cf8:	4701                	li	a4,0
a0003cfa:	0357d363          	bge	a5,s5,a0003d20 <__floatdidf+0x86>
a0003cfe:	02a00793          	li	a5,42
a0003d02:	0557ce63          	blt	a5,s5,a0003d5e <__floatdidf+0xc4>
a0003d06:	02b00493          	li	s1,43
a0003d0a:	ff5a8693          	addi	a3,s5,-11
a0003d0e:	415484b3          	sub	s1,s1,s5
a0003d12:	009454b3          	srl	s1,s0,s1
a0003d16:	00d997b3          	sll	a5,s3,a3
a0003d1a:	8cdd                	or	s1,s1,a5
a0003d1c:	00d41433          	sll	s0,s0,a3
a0003d20:	00c49793          	slli	a5,s1,0xc
a0003d24:	0b52                	slli	s6,s6,0x14
a0003d26:	83b1                	srli	a5,a5,0xc
a0003d28:	00fb67b3          	or	a5,s6,a5
a0003d2c:	097e                	slli	s2,s2,0x1f
a0003d2e:	0127e6b3          	or	a3,a5,s2
a0003d32:	8522                	mv	a0,s0
a0003d34:	85b6                	mv	a1,a3
a0003d36:	c319                	beqz	a4,a0003d3c <__floatdidf+0xa2>
a0003d38:	0010e073          	csrsi	fflags,1
a0003d3c:	50b2                	lw	ra,44(sp)
a0003d3e:	5422                	lw	s0,40(sp)
a0003d40:	5492                	lw	s1,36(sp)
a0003d42:	5902                	lw	s2,32(sp)
a0003d44:	49f2                	lw	s3,28(sp)
a0003d46:	4a62                	lw	s4,24(sp)
a0003d48:	4ad2                	lw	s5,20(sp)
a0003d4a:	4b42                	lw	s6,16(sp)
a0003d4c:	4bb2                	lw	s7,12(sp)
a0003d4e:	4c22                	lw	s8,8(sp)
a0003d50:	6145                	addi	sp,sp,48
a0003d52:	8082                	ret
a0003d54:	8522                	mv	a0,s0
a0003d56:	2201                	jal	a0003e56 <__clzsi2>
a0003d58:	02050a93          	addi	s5,a0,32
a0003d5c:	b769                	j	a0003ce6 <__floatdidf+0x4c>
a0003d5e:	fd5a8793          	addi	a5,s5,-43
a0003d62:	00f414b3          	sll	s1,s0,a5
a0003d66:	4401                	li	s0,0
a0003d68:	bf65                	j	a0003d20 <__floatdidf+0x86>
a0003d6a:	43600793          	li	a5,1078
a0003d6e:	0367d863          	bge	a5,s6,a0003d9e <__floatdidf+0x104>
a0003d72:	4621                	li	a2,8
a0003d74:	41560633          	sub	a2,a2,s5
a0003d78:	8522                	mv	a0,s0
a0003d7a:	85ce                	mv	a1,s3
a0003d7c:	f05fc0ef          	jal	ra,a0000c80 <__lshrdi3>
a0003d80:	8c2a                	mv	s8,a0
a0003d82:	84ae                	mv	s1,a1
a0003d84:	8522                	mv	a0,s0
a0003d86:	85ce                	mv	a1,s3
a0003d88:	038a8613          	addi	a2,s5,56
a0003d8c:	f1ffc0ef          	jal	ra,a0000caa <__ashldi3>
a0003d90:	00b56433          	or	s0,a0,a1
a0003d94:	00803433          	snez	s0,s0
a0003d98:	01846433          	or	s0,s0,s8
a0003d9c:	89a6                	mv	s3,s1
a0003d9e:	47a1                	li	a5,8
a0003da0:	0357d463          	bge	a5,s5,a0003dc8 <__floatdidf+0x12e>
a0003da4:	02700793          	li	a5,39
a0003da8:	0557ce63          	blt	a5,s5,a0003e04 <__floatdidf+0x16a>
a0003dac:	02800793          	li	a5,40
a0003db0:	ff8a8713          	addi	a4,s5,-8
a0003db4:	415787b3          	sub	a5,a5,s5
a0003db8:	00f457b3          	srl	a5,s0,a5
a0003dbc:	00e999b3          	sll	s3,s3,a4
a0003dc0:	0137e9b3          	or	s3,a5,s3
a0003dc4:	00e41433          	sll	s0,s0,a4
a0003dc8:	ff8007b7          	lui	a5,0xff800
a0003dcc:	17fd                	addi	a5,a5,-1
a0003dce:	00747693          	andi	a3,s0,7
a0003dd2:	00f9f7b3          	and	a5,s3,a5
a0003dd6:	4701                	li	a4,0
a0003dd8:	c6a9                	beqz	a3,a0003e22 <__floatdidf+0x188>
a0003dda:	4709                	li	a4,2
a0003ddc:	04ea0063          	beq	s4,a4,a0003e1c <__floatdidf+0x182>
a0003de0:	470d                	li	a4,3
a0003de2:	02ea0763          	beq	s4,a4,a0003e10 <__floatdidf+0x176>
a0003de6:	4705                	li	a4,1
a0003de8:	020a1d63          	bnez	s4,a0003e22 <__floatdidf+0x188>
a0003dec:	00f47693          	andi	a3,s0,15
a0003df0:	4611                	li	a2,4
a0003df2:	02c68863          	beq	a3,a2,a0003e22 <__floatdidf+0x188>
a0003df6:	00440693          	addi	a3,s0,4 # 400004 <remain_wifi_ram+0x3e0004>
a0003dfa:	0086b433          	sltu	s0,a3,s0
a0003dfe:	97a2                	add	a5,a5,s0
a0003e00:	8436                	mv	s0,a3
a0003e02:	a005                	j	a0003e22 <__floatdidf+0x188>
a0003e04:	fd8a8993          	addi	s3,s5,-40
a0003e08:	013419b3          	sll	s3,s0,s3
a0003e0c:	4401                	li	s0,0
a0003e0e:	bf6d                	j	a0003dc8 <__floatdidf+0x12e>
a0003e10:	4705                	li	a4,1
a0003e12:	000bc863          	bltz	s7,a0003e22 <__floatdidf+0x188>
a0003e16:	00840693          	addi	a3,s0,8
a0003e1a:	b7c5                	j	a0003dfa <__floatdidf+0x160>
a0003e1c:	4705                	li	a4,1
a0003e1e:	fe0bcce3          	bltz	s7,a0003e16 <__floatdidf+0x17c>
a0003e22:	008006b7          	lui	a3,0x800
a0003e26:	8efd                	and	a3,a3,a5
a0003e28:	ca89                	beqz	a3,a0003e3a <__floatdidf+0x1a0>
a0003e2a:	ff8006b7          	lui	a3,0xff800
a0003e2e:	16fd                	addi	a3,a3,-1
a0003e30:	43f00b13          	li	s6,1087
a0003e34:	8ff5                	and	a5,a5,a3
a0003e36:	415b0b33          	sub	s6,s6,s5
a0003e3a:	00345513          	srli	a0,s0,0x3
a0003e3e:	01d79413          	slli	s0,a5,0x1d
a0003e42:	8c49                	or	s0,s0,a0
a0003e44:	0037d493          	srli	s1,a5,0x3
a0003e48:	bde1                	j	a0003d20 <__floatdidf+0x86>
a0003e4a:	4481                	li	s1,0
a0003e4c:	4401                	li	s0,0
a0003e4e:	4b01                	li	s6,0
a0003e50:	4901                	li	s2,0
a0003e52:	4701                	li	a4,0
a0003e54:	b5f1                	j	a0003d20 <__floatdidf+0x86>

a0003e56 <__clzsi2>:
a0003e56:	67c1                	lui	a5,0x10
a0003e58:	02f57663          	bgeu	a0,a5,a0003e84 <__clzsi2+0x2e>
a0003e5c:	0ff00793          	li	a5,255
a0003e60:	00a7b7b3          	sltu	a5,a5,a0
a0003e64:	078e                	slli	a5,a5,0x3
a0003e66:	a000a737          	lui	a4,0xa000a
a0003e6a:	02000693          	li	a3,32
a0003e6e:	8e9d                	sub	a3,a3,a5
a0003e70:	00f55533          	srl	a0,a0,a5
a0003e74:	a2c70793          	addi	a5,a4,-1492 # a0009a2c <__psram_limit+0xf7c09a2c>
a0003e78:	953e                	add	a0,a0,a5
a0003e7a:	00054503          	lbu	a0,0(a0)
a0003e7e:	40a68533          	sub	a0,a3,a0
a0003e82:	8082                	ret
a0003e84:	01000737          	lui	a4,0x1000
a0003e88:	47c1                	li	a5,16
a0003e8a:	fce56ee3          	bltu	a0,a4,a0003e66 <__clzsi2+0x10>
a0003e8e:	47e1                	li	a5,24
a0003e90:	bfd9                	j	a0003e66 <__clzsi2+0x10>

a0003e92 <system_init>:
a0003e92:	a0009537          	lui	a0,0xa0009
a0003e96:	1141                	addi	sp,sp,-16
a0003e98:	83c50513          	addi	a0,a0,-1988 # a000883c <__psram_limit+0xf7c0883c>
a0003e9c:	c606                	sw	ra,12(sp)
a0003e9e:	c422                	sw	s0,8(sp)
a0003ea0:	c226                	sw	s1,4(sp)
a0003ea2:	62fc3437          	lui	s0,0x62fc3
a0003ea6:	6489                	lui	s1,0x2
a0003ea8:	6be030ef          	jal	ra,a0007566 <qcc74x_device_get_by_name>
a0003eac:	fe440413          	addi	s0,s0,-28 # 62fc2fe4 <gpio>
a0003eb0:	b0148613          	addi	a2,s1,-1279 # 1b01 <HeapMinSize+0xb01>
a0003eb4:	45b5                	li	a1,13
a0003eb6:	c008                	sw	a0,0(s0)
a0003eb8:	3ba020ef          	jal	ra,a0006272 <qcc74x_gpio_init>
a0003ebc:	4008                	lw	a0,0(s0)
a0003ebe:	b0148613          	addi	a2,s1,-1279
a0003ec2:	45b9                	li	a1,14
a0003ec4:	3ae020ef          	jal	ra,a0006272 <qcc74x_gpio_init>
a0003ec8:	4008                	lw	a0,0(s0)
a0003eca:	b0148613          	addi	a2,s1,-1279
a0003ece:	45bd                	li	a1,15
a0003ed0:	3a2020ef          	jal	ra,a0006272 <qcc74x_gpio_init>
a0003ed4:	4008                	lw	a0,0(s0)
a0003ed6:	a4048613          	addi	a2,s1,-1472
a0003eda:	45b1                	li	a1,12
a0003edc:	396020ef          	jal	ra,a0006272 <qcc74x_gpio_init>
a0003ee0:	4008                	lw	a0,0(s0)
a0003ee2:	45b1                	li	a1,12
a0003ee4:	45c020ef          	jal	ra,a0006340 <qcc74x_gpio_set>
a0003ee8:	4008                	lw	a0,0(s0)
a0003eea:	b0548613          	addi	a2,s1,-1275
a0003eee:	45a9                	li	a1,10
a0003ef0:	382020ef          	jal	ra,a0006272 <qcc74x_gpio_init>
a0003ef4:	4008                	lw	a0,0(s0)
a0003ef6:	b0548613          	addi	a2,s1,-1275
a0003efa:	45ad                	li	a1,11
a0003efc:	376020ef          	jal	ra,a0006272 <qcc74x_gpio_init>
a0003f00:	4008                	lw	a0,0(s0)
a0003f02:	a4048613          	addi	a2,s1,-1472
a0003f06:	458d                	li	a1,3
a0003f08:	36a020ef          	jal	ra,a0006272 <qcc74x_gpio_init>
a0003f0c:	4008                	lw	a0,0(s0)
a0003f0e:	458d                	li	a1,3
a0003f10:	430020ef          	jal	ra,a0006340 <qcc74x_gpio_set>
a0003f14:	4008                	lw	a0,0(s0)
a0003f16:	4422                	lw	s0,8(sp)
a0003f18:	40b2                	lw	ra,12(sp)
a0003f1a:	4492                	lw	s1,4(sp)
a0003f1c:	6605                	lui	a2,0x1
a0003f1e:	88060613          	addi	a2,a2,-1920 # 880 <__RFTLV_SIZE_HOLE+0x80>
a0003f22:	4589                	li	a1,2
a0003f24:	0141                	addi	sp,sp,16
a0003f26:	34c0206f          	j	a0006272 <qcc74x_gpio_init>

a0003f2a <spi_init>:
a0003f2a:	1101                	addi	sp,sp,-32
a0003f2c:	a00095b7          	lui	a1,0xa0009
a0003f30:	4631                	li	a2,12
a0003f32:	8e458593          	addi	a1,a1,-1820 # a00088e4 <__psram_limit+0xf7c088e4>
a0003f36:	0048                	addi	a0,sp,4
a0003f38:	ce06                	sw	ra,28(sp)
a0003f3a:	21a1                	jal	a0004382 <memcpy>
a0003f3c:	a0009537          	lui	a0,0xa0009
a0003f40:	84450513          	addi	a0,a0,-1980 # a0008844 <__psram_limit+0xf7c08844>
a0003f44:	622030ef          	jal	ra,a0007566 <qcc74x_device_get_by_name>
a0003f48:	62fc37b7          	lui	a5,0x62fc3
a0003f4c:	004c                	addi	a1,sp,4
a0003f4e:	fea7a623          	sw	a0,-20(a5) # 62fc2fec <spi0>
a0003f52:	2e9020ef          	jal	ra,a0006a3a <qcc74x_spi_init>
a0003f56:	40f2                	lw	ra,28(sp)
a0003f58:	6105                	addi	sp,sp,32
a0003f5a:	8082                	ret

a0003f5c <adc_init_mq135>:
a0003f5c:	a0009537          	lui	a0,0xa0009
a0003f60:	1101                	addi	sp,sp,-32
a0003f62:	84c50513          	addi	a0,a0,-1972 # a000884c <__psram_limit+0xf7c0884c>
a0003f66:	ce06                	sw	ra,28(sp)
a0003f68:	cc22                	sw	s0,24(sp)
a0003f6a:	5fc030ef          	jal	ra,a0007566 <qcc74x_device_get_by_name>
a0003f6e:	a00097b7          	lui	a5,0xa0009
a0003f72:	8e478793          	addi	a5,a5,-1820 # a00088e4 <__psram_limit+0xf7c088e4>
a0003f76:	47d8                	lw	a4,12(a5)
a0003f78:	0107d783          	lhu	a5,16(a5)
a0003f7c:	62fc3437          	lui	s0,0x62fc3
a0003f80:	fe040413          	addi	s0,s0,-32 # 62fc2fe0 <adc>
a0003f84:	00f11623          	sh	a5,12(sp)
a0003f88:	6785                	lui	a5,0x1
a0003f8a:	70278793          	addi	a5,a5,1794 # 1702 <HeapMinSize+0x702>
a0003f8e:	002c                	addi	a1,sp,8
a0003f90:	c008                	sw	a0,0(s0)
a0003f92:	c43a                	sw	a4,8(sp)
a0003f94:	00f11223          	sh	a5,4(sp)
a0003f98:	0cc030ef          	jal	ra,a0007064 <qcc74x_adc_init>
a0003f9c:	4008                	lw	a0,0(s0)
a0003f9e:	004c                	addi	a1,sp,4
a0003fa0:	4605                	li	a2,1
a0003fa2:	54d020ef          	jal	ra,a0006cee <qcc74x_adc_channel_config>
a0003fa6:	40f2                	lw	ra,28(sp)
a0003fa8:	4462                	lw	s0,24(sp)
a0003faa:	6105                	addi	sp,sp,32
a0003fac:	8082                	ret

a0003fae <ds1307_force_start>:
a0003fae:	1101                	addi	sp,sp,-32
a0003fb0:	153007b7          	lui	a5,0x15300
a0003fb4:	c03e                	sw	a5,0(sp)
a0003fb6:	06800793          	li	a5,104
a0003fba:	c23e                	sw	a5,4(sp)
a0003fbc:	4791                	li	a5,4
a0003fbe:	00f11623          	sh	a5,12(sp)
a0003fc2:	62fc37b7          	lui	a5,0x62fc3
a0003fc6:	fe87a503          	lw	a0,-24(a5) # 62fc2fe8 <i2c0>
a0003fca:	004c                	addi	a1,sp,4
a0003fcc:	4605                	li	a2,1
a0003fce:	ce06                	sw	ra,28(sp)
a0003fd0:	c40a                	sw	sp,8(sp)
a0003fd2:	77e020ef          	jal	ra,a0006750 <qcc74x_i2c_transfer>
a0003fd6:	a0009537          	lui	a0,0xa0009
a0003fda:	85050513          	addi	a0,a0,-1968 # a0008850 <__psram_limit+0xf7c08850>
a0003fde:	47b010ef          	jal	ra,a0005c58 <printf>
a0003fe2:	40f2                	lw	ra,28(sp)
a0003fe4:	6105                	addi	sp,sp,32
a0003fe6:	8082                	ret

a0003fe8 <dht11_read>:
a0003fe8:	7179                	addi	sp,sp,-48
a0003fea:	d422                	sw	s0,40(sp)
a0003fec:	62fc3437          	lui	s0,0x62fc3
a0003ff0:	d226                	sw	s1,36(sp)
a0003ff2:	fe440493          	addi	s1,s0,-28 # 62fc2fe4 <gpio>
a0003ff6:	ce4e                	sw	s3,28(sp)
a0003ff8:	89aa                	mv	s3,a0
a0003ffa:	4088                	lw	a0,0(s1)
a0003ffc:	04000613          	li	a2,64
a0004000:	cc52                	sw	s4,24(sp)
a0004002:	8a2e                	mv	s4,a1
a0004004:	458d                	li	a1,3
a0004006:	d606                	sw	ra,44(sp)
a0004008:	d04a                	sw	s2,32(sp)
a000400a:	ca56                	sw	s5,20(sp)
a000400c:	c85a                	sw	s6,16(sp)
a000400e:	c402                	sw	zero,8(sp)
a0004010:	00010623          	sb	zero,12(sp)
a0004014:	25e020ef          	jal	ra,a0006272 <qcc74x_gpio_init>
a0004018:	4088                	lw	a0,0(s1)
a000401a:	458d                	li	a1,3
a000401c:	1f400913          	li	s2,500
a0004020:	352020ef          	jal	ra,a0006372 <qcc74x_gpio_reset>
a0004024:	4551                	li	a0,20
a0004026:	c2fbd097          	auipc	ra,0xc2fbd
a000402a:	c06080e7          	jalr	-1018(ra) # 62fc0c2c <qcc74x_mtimer_delay_ms>
a000402e:	4088                	lw	a0,0(s1)
a0004030:	458d                	li	a1,3
a0004032:	fe440413          	addi	s0,s0,-28
a0004036:	30a020ef          	jal	ra,a0006340 <qcc74x_gpio_set>
a000403a:	02800513          	li	a0,40
a000403e:	c2fbd097          	auipc	ra,0xc2fbd
a0004042:	bc4080e7          	jalr	-1084(ra) # 62fc0c02 <qcc74x_mtimer_delay_us>
a0004046:	4088                	lw	a0,0(s1)
a0004048:	02000613          	li	a2,32
a000404c:	458d                	li	a1,3
a000404e:	224020ef          	jal	ra,a0006272 <qcc74x_gpio_init>
a0004052:	54fd                	li	s1,-1
a0004054:	4008                	lw	a0,0(s0)
a0004056:	458d                	li	a1,3
a0004058:	34c020ef          	jal	ra,a00063a4 <qcc74x_gpio_read>
a000405c:	cd11                	beqz	a0,a0004078 <dht11_read+0x90>
a000405e:	197d                	addi	s2,s2,-1
a0004060:	00991663          	bne	s2,s1,a000406c <dht11_read+0x84>
a0004064:	1f400493          	li	s1,500
a0004068:	597d                	li	s2,-1
a000406a:	a81d                	j	a00040a0 <dht11_read+0xb8>
a000406c:	4505                	li	a0,1
a000406e:	c2fbd097          	auipc	ra,0xc2fbd
a0004072:	b94080e7          	jalr	-1132(ra) # 62fc0c02 <qcc74x_mtimer_delay_us>
a0004076:	bff9                	j	a0004054 <dht11_read+0x6c>
a0004078:	1f400493          	li	s1,500
a000407c:	fe0916e3          	bnez	s2,a0004068 <dht11_read+0x80>
a0004080:	557d                	li	a0,-1
a0004082:	50b2                	lw	ra,44(sp)
a0004084:	5422                	lw	s0,40(sp)
a0004086:	5492                	lw	s1,36(sp)
a0004088:	5902                	lw	s2,32(sp)
a000408a:	49f2                	lw	s3,28(sp)
a000408c:	4a62                	lw	s4,24(sp)
a000408e:	4ad2                	lw	s5,20(sp)
a0004090:	4b42                	lw	s6,16(sp)
a0004092:	6145                	addi	sp,sp,48
a0004094:	8082                	ret
a0004096:	4505                	li	a0,1
a0004098:	c2fbd097          	auipc	ra,0xc2fbd
a000409c:	b6a080e7          	jalr	-1174(ra) # 62fc0c02 <qcc74x_mtimer_delay_us>
a00040a0:	4008                	lw	a0,0(s0)
a00040a2:	458d                	li	a1,3
a00040a4:	300020ef          	jal	ra,a00063a4 <qcc74x_gpio_read>
a00040a8:	e95d                	bnez	a0,a000415e <dht11_read+0x176>
a00040aa:	14fd                	addi	s1,s1,-1
a00040ac:	ff2495e3          	bne	s1,s2,a0004096 <dht11_read+0xae>
a00040b0:	1f400493          	li	s1,500
a00040b4:	597d                	li	s2,-1
a00040b6:	4008                	lw	a0,0(s0)
a00040b8:	458d                	li	a1,3
a00040ba:	2ea020ef          	jal	ra,a00063a4 <qcc74x_gpio_read>
a00040be:	c945                	beqz	a0,a000416e <dht11_read+0x186>
a00040c0:	14fd                	addi	s1,s1,-1
a00040c2:	0b249063          	bne	s1,s2,a0004162 <dht11_read+0x17a>
a00040c6:	4481                	li	s1,0
a00040c8:	1f400913          	li	s2,500
a00040cc:	02800a93          	li	s5,40
a00040d0:	4008                	lw	a0,0(s0)
a00040d2:	458d                	li	a1,3
a00040d4:	2d0020ef          	jal	ra,a00063a4 <qcc74x_gpio_read>
a00040d8:	e509                	bnez	a0,a00040e2 <dht11_read+0xfa>
a00040da:	fff90b13          	addi	s6,s2,-1 # 7fffff <remain_wifi_ram+0x7dffff>
a00040de:	08091a63          	bnez	s2,a0004172 <dht11_read+0x18a>
a00040e2:	03200513          	li	a0,50
a00040e6:	c2fbd097          	auipc	ra,0xc2fbd
a00040ea:	b1c080e7          	jalr	-1252(ra) # 62fc0c02 <qcc74x_mtimer_delay_us>
a00040ee:	4008                	lw	a0,0(s0)
a00040f0:	458d                	li	a1,3
a00040f2:	2b2020ef          	jal	ra,a00063a4 <qcc74x_gpio_read>
a00040f6:	c10d                	beqz	a0,a0004118 <dht11_read+0x130>
a00040f8:	fff4c793          	not	a5,s1
a00040fc:	0077f693          	andi	a3,a5,7
a0004100:	4785                	li	a5,1
a0004102:	4034d713          	srai	a4,s1,0x3
a0004106:	00d797b3          	sll	a5,a5,a3
a000410a:	0034                	addi	a3,sp,8
a000410c:	80e6c68b          	lrbu	a3,a3,a4,0
a0004110:	8fd5                	or	a5,a5,a3
a0004112:	0034                	addi	a3,sp,8
a0004114:	00e6d78b          	srb	a5,a3,a4,0
a0004118:	1f500913          	li	s2,501
a000411c:	4008                	lw	a0,0(s0)
a000411e:	458d                	li	a1,3
a0004120:	284020ef          	jal	ra,a00063a4 <qcc74x_gpio_read>
a0004124:	c501                	beqz	a0,a000412c <dht11_read+0x144>
a0004126:	197d                	addi	s2,s2,-1
a0004128:	04091f63          	bnez	s2,a0004186 <dht11_read+0x19e>
a000412c:	0485                	addi	s1,s1,1
a000412e:	05549963          	bne	s1,s5,a0004180 <dht11_read+0x198>
a0004132:	00814683          	lbu	a3,8(sp)
a0004136:	00914783          	lbu	a5,9(sp)
a000413a:	00a14703          	lbu	a4,10(sp)
a000413e:	00b14603          	lbu	a2,11(sp)
a0004142:	97b6                	add	a5,a5,a3
a0004144:	97ba                	add	a5,a5,a4
a0004146:	97b2                	add	a5,a5,a2
a0004148:	00c14603          	lbu	a2,12(sp)
a000414c:	5579                	li	a0,-2
a000414e:	f2c79ae3          	bne	a5,a2,a0004082 <dht11_read+0x9a>
a0004152:	00da0023          	sb	a3,0(s4)
a0004156:	00e98023          	sb	a4,0(s3)
a000415a:	4501                	li	a0,0
a000415c:	b71d                	j	a0004082 <dht11_read+0x9a>
a000415e:	f8a9                	bnez	s1,a00040b0 <dht11_read+0xc8>
a0004160:	b705                	j	a0004080 <dht11_read+0x98>
a0004162:	4505                	li	a0,1
a0004164:	c2fbd097          	auipc	ra,0xc2fbd
a0004168:	a9e080e7          	jalr	-1378(ra) # 62fc0c02 <qcc74x_mtimer_delay_us>
a000416c:	b7a9                	j	a00040b6 <dht11_read+0xce>
a000416e:	fca1                	bnez	s1,a00040c6 <dht11_read+0xde>
a0004170:	bf01                	j	a0004080 <dht11_read+0x98>
a0004172:	4505                	li	a0,1
a0004174:	c2fbd097          	auipc	ra,0xc2fbd
a0004178:	a8e080e7          	jalr	-1394(ra) # 62fc0c02 <qcc74x_mtimer_delay_us>
a000417c:	895a                	mv	s2,s6
a000417e:	bf89                	j	a00040d0 <dht11_read+0xe8>
a0004180:	1f400913          	li	s2,500
a0004184:	b7b1                	j	a00040d0 <dht11_read+0xe8>
a0004186:	4505                	li	a0,1
a0004188:	c2fbd097          	auipc	ra,0xc2fbd
a000418c:	a7a080e7          	jalr	-1414(ra) # 62fc0c02 <qcc74x_mtimer_delay_us>
a0004190:	b771                	j	a000411c <dht11_read+0x134>

a0004192 <main>:
a0004192:	7175                	addi	sp,sp,-144
a0004194:	c706                	sw	ra,140(sp)
a0004196:	c522                	sw	s0,136(sp)
a0004198:	c326                	sw	s1,132(sp)
a000419a:	c14a                	sw	s2,128(sp)
a000419c:	dece                	sw	s3,124(sp)
a000419e:	dad6                	sw	s5,116(sp)
a00041a0:	d8da                	sw	s6,112(sp)
a00041a2:	d6de                	sw	s7,108(sp)
a00041a4:	d4e2                	sw	s8,104(sp)
a00041a6:	d2e6                	sw	s9,100(sp)
a00041a8:	d0ea                	sw	s10,96(sp)
a00041aa:	ceee                	sw	s11,92(sp)
a00041ac:	dcd2                	sw	s4,120(sp)
a00041ae:	328040ef          	jal	ra,a00084d6 <board_init>
a00041b2:	31c5                	jal	a0003e92 <system_init>
a00041b4:	a0009537          	lui	a0,0xa0009
a00041b8:	87050513          	addi	a0,a0,-1936 # a0008870 <__psram_limit+0xf7c08870>
a00041bc:	3aa030ef          	jal	ra,a0007566 <qcc74x_device_get_by_name>
a00041c0:	65e1                	lui	a1,0x18
a00041c2:	6a058593          	addi	a1,a1,1696 # 186a0 <wifi_ram_max_size+0x106a0>
a00041c6:	62fc3ab7          	lui	s5,0x62fc3
a00041ca:	feaaa423          	sw	a0,-24(s5) # 62fc2fe8 <i2c0>
a00041ce:	42c020ef          	jal	ra,a00065fa <qcc74x_i2c_init>
a00041d2:	3369                	jal	a0003f5c <adc_init_mq135>
a00041d4:	3b99                	jal	a0003f2a <spi_init>
a00041d6:	3be1                	jal	a0003fae <ds1307_force_start>
a00041d8:	06400513          	li	a0,100
a00041dc:	00400b37          	lui	s6,0x400
a00041e0:	6bc1                	lui	s7,0x10
a00041e2:	c2fbd097          	auipc	ra,0xc2fbd
a00041e6:	a4a080e7          	jalr	-1462(ra) # 62fc0c2c <qcc74x_mtimer_delay_ms>
a00041ea:	4981                	li	s3,0
a00041ec:	000108a3          	sb	zero,17(sp)
a00041f0:	00010923          	sb	zero,18(sp)
a00041f4:	000109a3          	sb	zero,19(sp)
a00041f8:	4901                	li	s2,0
a00041fa:	4481                	li	s1,0
a00041fc:	4401                	li	s0,0
a00041fe:	fe8a8a93          	addi	s5,s5,-24
a0004202:	068b0b13          	addi	s6,s6,104 # 400068 <remain_wifi_ram+0x3e0068>
a0004206:	01310d13          	addi	s10,sp,19
a000420a:	068b8b93          	addi	s7,s7,104 # 10068 <wifi_ram_max_size+0x8068>
a000420e:	a0009db7          	lui	s11,0xa0009
a0004212:	62fc3c37          	lui	s8,0x62fc3
a0004216:	62fc3cb7          	lui	s9,0x62fc3
a000421a:	4785                	li	a5,1
a000421c:	000aa503          	lw	a0,0(s5)
a0004220:	04f11023          	sh	a5,64(sp)
a0004224:	085c                	addi	a5,sp,20
a0004226:	c4be                	sw	a5,72(sp)
a0004228:	4609                	li	a2,2
a000422a:	478d                	li	a5,3
a000422c:	182c                	addi	a1,sp,56
a000422e:	dc5a                	sw	s6,56(sp)
a0004230:	de6a                	sw	s10,60(sp)
a0004232:	c2de                	sw	s7,68(sp)
a0004234:	04f11623          	sh	a5,76(sp)
a0004238:	518020ef          	jal	ra,a0006750 <qcc74x_i2c_transfer>
a000423c:	ed15                	bnez	a0,a0004278 <main+0xe6>
a000423e:	01414903          	lbu	s2,20(sp)
a0004242:	01514483          	lbu	s1,21(sp)
a0004246:	01614403          	lbu	s0,22(sp)
a000424a:	1849370b          	extu	a4,s2,6,4
a000424e:	47a9                	li	a5,10
a0004250:	00f97913          	andi	s2,s2,15
a0004254:	20f7190b          	mula	s2,a4,a5
a0004258:	0044d713          	srli	a4,s1,0x4
a000425c:	88bd                	andi	s1,s1,15
a000425e:	20f7148b          	mula	s1,a4,a5
a0004262:	1444370b          	extu	a4,s0,5,4
a0004266:	883d                	andi	s0,s0,15
a0004268:	0ff97913          	zext.b	s2,s2
a000426c:	20f7140b          	mula	s0,a4,a5
a0004270:	0ff4f493          	zext.b	s1,s1
a0004274:	0ff47413          	zext.b	s0,s0
a0004278:	009467b3          	or	a5,s0,s1
a000427c:	00f967b3          	or	a5,s2,a5
a0004280:	eb91                	bnez	a5,a0004294 <main+0x102>
a0004282:	0985                	addi	s3,s3,1
a0004284:	4795                	li	a5,5
a0004286:	0137d863          	bge	a5,s3,a0004296 <main+0x104>
a000428a:	878d8513          	addi	a0,s11,-1928 # a0008878 <__psram_limit+0xf7c08878>
a000428e:	1cb010ef          	jal	ra,a0005c58 <printf>
a0004292:	3b31                	jal	a0003fae <ds1307_force_start>
a0004294:	4981                	li	s3,0
a0004296:	01210593          	addi	a1,sp,18
a000429a:	01110513          	addi	a0,sp,17
a000429e:	33a9                	jal	a0003fe8 <dht11_read>
a00042a0:	fe0c2503          	lw	a0,-32(s8) # 62fc2fe0 <adc>
a00042a4:	fe0c0a13          	addi	s4,s8,-32
a00042a8:	37d020ef          	jal	ra,a0006e24 <qcc74x_adc_start_conversion>
a00042ac:	000a2503          	lw	a0,0(s4)
a00042b0:	711020ef          	jal	ra,a00071c0 <qcc74x_adc_get_count>
a00042b4:	dd65                	beqz	a0,a00042ac <main+0x11a>
a00042b6:	000a2503          	lw	a0,0(s4)
a00042ba:	713020ef          	jal	ra,a00071cc <qcc74x_adc_read_raw>
a00042be:	cc2a                	sw	a0,24(sp)
a00042c0:	000a2503          	lw	a0,0(s4)
a00042c4:	1070                	addi	a2,sp,44
a00042c6:	4685                	li	a3,1
a00042c8:	082c                	addi	a1,sp,24
a00042ca:	713020ef          	jal	ra,a00071dc <qcc74x_adc_parse_result>
a00042ce:	000a2503          	lw	a0,0(s4)
a00042d2:	fe4c8a13          	addi	s4,s9,-28 # 62fc2fe4 <gpio>
a00042d6:	38b020ef          	jal	ra,a0006e60 <qcc74x_adc_stop_conversion>
a00042da:	faa00713          	li	a4,-86
a00042de:	00e10e23          	sb	a4,28(sp)
a00042e2:	01114703          	lbu	a4,17(sp)
a00042e6:	03415783          	lhu	a5,52(sp)
a00042ea:	5852                	lw	a6,52(sp)
a00042ec:	000a2503          	lw	a0,0(s4)
a00042f0:	00e10ea3          	sb	a4,29(sp)
a00042f4:	01214703          	lbu	a4,18(sp)
a00042f8:	ad8787f7          	swap8	a5,a5
a00042fc:	45b1                	li	a1,12
a00042fe:	c642                	sw	a6,12(sp)
a0004300:	00e10f23          	sb	a4,30(sp)
a0004304:	02f11123          	sh	a5,34(sp)
a0004308:	00810fa3          	sb	s0,31(sp)
a000430c:	02910023          	sb	s1,32(sp)
a0004310:	032100a3          	sb	s2,33(sp)
a0004314:	05e020ef          	jal	ra,a0006372 <qcc74x_gpio_reset>
a0004318:	62fc37b7          	lui	a5,0x62fc3
a000431c:	fec7a503          	lw	a0,-20(a5) # 62fc2fec <spi0>
a0004320:	1050                	addi	a2,sp,36
a0004322:	46a1                	li	a3,8
a0004324:	086c                	addi	a1,sp,28
a0004326:	c2fbc097          	auipc	ra,0xc2fbc
a000432a:	446080e7          	jalr	1094(ra) # 62fc076c <qcc74x_spi_poll_exchange>
a000432e:	000a2503          	lw	a0,0(s4)
a0004332:	45b1                	li	a1,12
a0004334:	00c020ef          	jal	ra,a0006340 <qcc74x_gpio_set>
a0004338:	4832                	lw	a6,12(sp)
a000433a:	01214783          	lbu	a5,18(sp)
a000433e:	01114703          	lbu	a4,17(sp)
a0004342:	a0009537          	lui	a0,0xa0009
a0004346:	3c08380b          	extu	a6,a6,15,0
a000434a:	86ca                	mv	a3,s2
a000434c:	8626                	mv	a2,s1
a000434e:	85a2                	mv	a1,s0
a0004350:	8a450513          	addi	a0,a0,-1884 # a00088a4 <__psram_limit+0xf7c088a4>
a0004354:	105010ef          	jal	ra,a0005c58 <printf>
a0004358:	3e800513          	li	a0,1000
a000435c:	c2fbd097          	auipc	ra,0xc2fbd
a0004360:	8d0080e7          	jalr	-1840(ra) # 62fc0c2c <qcc74x_mtimer_delay_ms>
a0004364:	bd5d                	j	a000421a <main+0x88>

a0004366 <strcmp>:
a0004366:	4701                	li	a4,0
a0004368:	80e5468b          	lrbu	a3,a0,a4,0
a000436c:	80e5c78b          	lrbu	a5,a1,a4,0
a0004370:	40f687b3          	sub	a5,a3,a5
a0004374:	1c07a78b          	ext	a5,a5,7,0
a0004378:	e399                	bnez	a5,a000437e <strcmp+0x18>
a000437a:	0705                	addi	a4,a4,1
a000437c:	f6f5                	bnez	a3,a0004368 <strcmp+0x2>
a000437e:	853e                	mv	a0,a5
a0004380:	8082                	ret

a0004382 <memcpy>:
a0004382:	471d                	li	a4,7
a0004384:	87aa                	mv	a5,a0
a0004386:	00c506b3          	add	a3,a0,a2
a000438a:	08c76463          	bltu	a4,a2,a0004412 <memcpy+0x90>
a000438e:	4791                	li	a5,4
a0004390:	06f60963          	beq	a2,a5,a0004402 <memcpy+0x80>
a0004394:	00c7ed63          	bltu	a5,a2,a00043ae <memcpy+0x2c>
a0004398:	4789                	li	a5,2
a000439a:	06f60663          	beq	a2,a5,a0004406 <memcpy+0x84>
a000439e:	470d                	li	a4,3
a00043a0:	87aa                	mv	a5,a0
a00043a2:	04e60163          	beq	a2,a4,a00043e4 <memcpy+0x62>
a00043a6:	4705                	li	a4,1
a00043a8:	04e60663          	beq	a2,a4,a00043f4 <memcpy+0x72>
a00043ac:	8082                	ret
a00043ae:	4799                	li	a5,6
a00043b0:	04f60763          	beq	a2,a5,a00043fe <memcpy+0x7c>
a00043b4:	00e60763          	beq	a2,a4,a00043c2 <memcpy+0x40>
a00043b8:	4715                	li	a4,5
a00043ba:	87aa                	mv	a5,a0
a00043bc:	00e60c63          	beq	a2,a4,a00043d4 <memcpy+0x52>
a00043c0:	8082                	ret
a00043c2:	9815c70b          	lbuia	a4,(a1),1,0
a00043c6:	87aa                	mv	a5,a0
a00043c8:	1817d70b          	sbia	a4,(a5),1,0
a00043cc:	9815c70b          	lbuia	a4,(a1),1,0
a00043d0:	1817d70b          	sbia	a4,(a5),1,0
a00043d4:	9815c70b          	lbuia	a4,(a1),1,0
a00043d8:	1817d70b          	sbia	a4,(a5),1,0
a00043dc:	9815c70b          	lbuia	a4,(a1),1,0
a00043e0:	1817d70b          	sbia	a4,(a5),1,0
a00043e4:	9815c70b          	lbuia	a4,(a1),1,0
a00043e8:	1817d70b          	sbia	a4,(a5),1,0
a00043ec:	9815c70b          	lbuia	a4,(a1),1,0
a00043f0:	1817d70b          	sbia	a4,(a5),1,0
a00043f4:	0005c703          	lbu	a4,0(a1)
a00043f8:	00e78023          	sb	a4,0(a5)
a00043fc:	8082                	ret
a00043fe:	87aa                	mv	a5,a0
a0004400:	b7f1                	j	a00043cc <memcpy+0x4a>
a0004402:	87aa                	mv	a5,a0
a0004404:	bfe1                	j	a00043dc <memcpy+0x5a>
a0004406:	87aa                	mv	a5,a0
a0004408:	b7d5                	j	a00043ec <memcpy+0x6a>
a000440a:	9815c70b          	lbuia	a4,(a1),1,0
a000440e:	1817d70b          	sbia	a4,(a5),1,0
a0004412:	0037f713          	andi	a4,a5,3
a0004416:	40f68633          	sub	a2,a3,a5
a000441a:	fb65                	bnez	a4,a000440a <memcpy+0x88>
a000441c:	0035f693          	andi	a3,a1,3
a0004420:	4809                	li	a6,2
a0004422:	00265713          	srli	a4,a2,0x2
a0004426:	1b068d63          	beq	a3,a6,a00045e0 <memcpy+0x25e>
a000442a:	480d                	li	a6,3
a000442c:	2b068863          	beq	a3,a6,a00046dc <memcpy+0x35a>
a0004430:	4805                	li	a6,1
a0004432:	05069563          	bne	a3,a6,a000447c <memcpy+0xfa>
a0004436:	99f1                	andi	a1,a1,-4
a0004438:	5845c80b          	lwia	a6,(a1),4,0
a000443c:	9bf1                	andi	a5,a5,-4
a000443e:	00777693          	andi	a3,a4,7
a0004442:	e2f9                	bnez	a3,a0004508 <memcpy+0x186>
a0004444:	830d                	srli	a4,a4,0x3
a0004446:	0716                	slli	a4,a4,0x5
a0004448:	00e58e33          	add	t3,a1,a4
a000444c:	86be                	mv	a3,a5
a000444e:	0dc59963          	bne	a1,t3,a0004520 <memcpy+0x19e>
a0004452:	8a0d                	andi	a2,a2,3
a0004454:	4689                	li	a3,2
a0004456:	97ba                	add	a5,a5,a4
a0004458:	ffd58713          	addi	a4,a1,-3
a000445c:	16d60d63          	beq	a2,a3,a00045d6 <memcpy+0x254>
a0004460:	468d                	li	a3,3
a0004462:	16d60463          	beq	a2,a3,a00045ca <memcpy+0x248>
a0004466:	4685                	li	a3,1
a0004468:	f8d61ae3          	bne	a2,a3,a00043fc <memcpy+0x7a>
a000446c:	00074703          	lbu	a4,0(a4) # 1000000 <remain_wifi_ram+0xfe0000>
a0004470:	b761                	j	a00043f8 <memcpy+0x76>
a0004472:	5845c68b          	lwia	a3,(a1),4,0
a0004476:	177d                	addi	a4,a4,-1
a0004478:	5847d68b          	swia	a3,(a5),4,0
a000447c:	00777693          	andi	a3,a4,7
a0004480:	faed                	bnez	a3,a0004472 <memcpy+0xf0>
a0004482:	830d                	srli	a4,a4,0x3
a0004484:	0716                	slli	a4,a4,0x5
a0004486:	00e586b3          	add	a3,a1,a4
a000448a:	883e                	mv	a6,a5
a000448c:	02d59063          	bne	a1,a3,a00044ac <memcpy+0x12a>
a0004490:	97ba                	add	a5,a5,a4
a0004492:	8a0d                	andi	a2,a2,3
a0004494:	4709                	li	a4,2
a0004496:	06e60463          	beq	a2,a4,a00044fe <memcpy+0x17c>
a000449a:	470d                	li	a4,3
a000449c:	04e60d63          	beq	a2,a4,a00044f6 <memcpy+0x174>
a00044a0:	4705                	li	a4,1
a00044a2:	f4e61de3          	bne	a2,a4,a00043fc <memcpy+0x7a>
a00044a6:	0006c703          	lbu	a4,0(a3) # ff800000 <__psram_limit+0x57400000>
a00044aa:	b7b9                	j	a00043f8 <memcpy+0x76>
a00044ac:	0005a883          	lw	a7,0(a1)
a00044b0:	02080813          	addi	a6,a6,32
a00044b4:	ff182023          	sw	a7,-32(a6)
a00044b8:	0045a883          	lw	a7,4(a1)
a00044bc:	ff182223          	sw	a7,-28(a6)
a00044c0:	0085a883          	lw	a7,8(a1)
a00044c4:	ff182423          	sw	a7,-24(a6)
a00044c8:	00c5a883          	lw	a7,12(a1)
a00044cc:	ff182623          	sw	a7,-20(a6)
a00044d0:	0105a883          	lw	a7,16(a1)
a00044d4:	ff182823          	sw	a7,-16(a6)
a00044d8:	0145a883          	lw	a7,20(a1)
a00044dc:	ff182a23          	sw	a7,-12(a6)
a00044e0:	0185a883          	lw	a7,24(a1)
a00044e4:	ff182c23          	sw	a7,-8(a6)
a00044e8:	01c5a883          	lw	a7,28(a1)
a00044ec:	02058593          	addi	a1,a1,32
a00044f0:	ff182e23          	sw	a7,-4(a6)
a00044f4:	bf61                	j	a000448c <memcpy+0x10a>
a00044f6:	9816c70b          	lbuia	a4,(a3),1,0
a00044fa:	1817d70b          	sbia	a4,(a5),1,0
a00044fe:	9816c70b          	lbuia	a4,(a3),1,0
a0004502:	1817d70b          	sbia	a4,(a5),1,0
a0004506:	b745                	j	a00044a6 <memcpy+0x124>
a0004508:	00885893          	srli	a7,a6,0x8
a000450c:	5845c80b          	lwia	a6,(a1),4,0
a0004510:	177d                	addi	a4,a4,-1
a0004512:	01881693          	slli	a3,a6,0x18
a0004516:	0116e6b3          	or	a3,a3,a7
a000451a:	5847d68b          	swia	a3,(a5),4,0
a000451e:	b705                	j	a000443e <memcpy+0xbc>
a0004520:	0005a883          	lw	a7,0(a1)
a0004524:	00885813          	srli	a6,a6,0x8
a0004528:	01889313          	slli	t1,a7,0x18
a000452c:	01036833          	or	a6,t1,a6
a0004530:	0106a023          	sw	a6,0(a3)
a0004534:	0045a803          	lw	a6,4(a1)
a0004538:	0088d893          	srli	a7,a7,0x8
a000453c:	01881313          	slli	t1,a6,0x18
a0004540:	011368b3          	or	a7,t1,a7
a0004544:	0116a223          	sw	a7,4(a3)
a0004548:	00885893          	srli	a7,a6,0x8
a000454c:	0085a803          	lw	a6,8(a1)
a0004550:	01881313          	slli	t1,a6,0x18
a0004554:	011368b3          	or	a7,t1,a7
a0004558:	0116a423          	sw	a7,8(a3)
a000455c:	00885893          	srli	a7,a6,0x8
a0004560:	00c5a803          	lw	a6,12(a1)
a0004564:	01881313          	slli	t1,a6,0x18
a0004568:	011368b3          	or	a7,t1,a7
a000456c:	0116a623          	sw	a7,12(a3)
a0004570:	00885893          	srli	a7,a6,0x8
a0004574:	0105a803          	lw	a6,16(a1)
a0004578:	01881313          	slli	t1,a6,0x18
a000457c:	011368b3          	or	a7,t1,a7
a0004580:	0116a823          	sw	a7,16(a3)
a0004584:	00885893          	srli	a7,a6,0x8
a0004588:	0145a803          	lw	a6,20(a1)
a000458c:	01881313          	slli	t1,a6,0x18
a0004590:	011368b3          	or	a7,t1,a7
a0004594:	0116aa23          	sw	a7,20(a3)
a0004598:	00885893          	srli	a7,a6,0x8
a000459c:	0185a803          	lw	a6,24(a1)
a00045a0:	01881313          	slli	t1,a6,0x18
a00045a4:	011368b3          	or	a7,t1,a7
a00045a8:	0116ac23          	sw	a7,24(a3)
a00045ac:	00885893          	srli	a7,a6,0x8
a00045b0:	01c5a803          	lw	a6,28(a1)
a00045b4:	02058593          	addi	a1,a1,32
a00045b8:	01881313          	slli	t1,a6,0x18
a00045bc:	011368b3          	or	a7,t1,a7
a00045c0:	0116ae23          	sw	a7,28(a3)
a00045c4:	02068693          	addi	a3,a3,32
a00045c8:	b559                	j	a000444e <memcpy+0xcc>
a00045ca:	ffd5c683          	lbu	a3,-3(a1)
a00045ce:	ffe58713          	addi	a4,a1,-2
a00045d2:	1817d68b          	sbia	a3,(a5),1,0
a00045d6:	9817468b          	lbuia	a3,(a4),1,0
a00045da:	1817d68b          	sbia	a3,(a5),1,0
a00045de:	b579                	j	a000446c <memcpy+0xea>
a00045e0:	99f1                	andi	a1,a1,-4
a00045e2:	5845c80b          	lwia	a6,(a1),4,0
a00045e6:	9bf1                	andi	a5,a5,-4
a00045e8:	00777693          	andi	a3,a4,7
a00045ec:	e69d                	bnez	a3,a000461a <memcpy+0x298>
a00045ee:	830d                	srli	a4,a4,0x3
a00045f0:	0716                	slli	a4,a4,0x5
a00045f2:	00e58e33          	add	t3,a1,a4
a00045f6:	86be                	mv	a3,a5
a00045f8:	03c59d63          	bne	a1,t3,a0004632 <memcpy+0x2b0>
a00045fc:	8a0d                	andi	a2,a2,3
a00045fe:	4689                	li	a3,2
a0004600:	97ba                	add	a5,a5,a4
a0004602:	ffe58713          	addi	a4,a1,-2
a0004606:	fcd608e3          	beq	a2,a3,a00045d6 <memcpy+0x254>
a000460a:	468d                	li	a3,3
a000460c:	e4d61de3          	bne	a2,a3,a0004466 <memcpy+0xe4>
a0004610:	ffe5c683          	lbu	a3,-2(a1)
a0004614:	fff58713          	addi	a4,a1,-1
a0004618:	bf6d                	j	a00045d2 <memcpy+0x250>
a000461a:	01085893          	srli	a7,a6,0x10
a000461e:	5845c80b          	lwia	a6,(a1),4,0
a0004622:	177d                	addi	a4,a4,-1
a0004624:	01081693          	slli	a3,a6,0x10
a0004628:	0116e6b3          	or	a3,a3,a7
a000462c:	5847d68b          	swia	a3,(a5),4,0
a0004630:	bf65                	j	a00045e8 <memcpy+0x266>
a0004632:	0005a883          	lw	a7,0(a1)
a0004636:	01085813          	srli	a6,a6,0x10
a000463a:	01089313          	slli	t1,a7,0x10
a000463e:	01036833          	or	a6,t1,a6
a0004642:	0106a023          	sw	a6,0(a3)
a0004646:	0045a803          	lw	a6,4(a1)
a000464a:	0108d893          	srli	a7,a7,0x10
a000464e:	01081313          	slli	t1,a6,0x10
a0004652:	011368b3          	or	a7,t1,a7
a0004656:	0116a223          	sw	a7,4(a3)
a000465a:	01085893          	srli	a7,a6,0x10
a000465e:	0085a803          	lw	a6,8(a1)
a0004662:	01081313          	slli	t1,a6,0x10
a0004666:	011368b3          	or	a7,t1,a7
a000466a:	0116a423          	sw	a7,8(a3)
a000466e:	01085893          	srli	a7,a6,0x10
a0004672:	00c5a803          	lw	a6,12(a1)
a0004676:	01081313          	slli	t1,a6,0x10
a000467a:	011368b3          	or	a7,t1,a7
a000467e:	0116a623          	sw	a7,12(a3)
a0004682:	01085893          	srli	a7,a6,0x10
a0004686:	0105a803          	lw	a6,16(a1)
a000468a:	01081313          	slli	t1,a6,0x10
a000468e:	011368b3          	or	a7,t1,a7
a0004692:	0116a823          	sw	a7,16(a3)
a0004696:	01085893          	srli	a7,a6,0x10
a000469a:	0145a803          	lw	a6,20(a1)
a000469e:	01081313          	slli	t1,a6,0x10
a00046a2:	011368b3          	or	a7,t1,a7
a00046a6:	0116aa23          	sw	a7,20(a3)
a00046aa:	01085893          	srli	a7,a6,0x10
a00046ae:	0185a803          	lw	a6,24(a1)
a00046b2:	01081313          	slli	t1,a6,0x10
a00046b6:	011368b3          	or	a7,t1,a7
a00046ba:	0116ac23          	sw	a7,24(a3)
a00046be:	01085893          	srli	a7,a6,0x10
a00046c2:	01c5a803          	lw	a6,28(a1)
a00046c6:	02058593          	addi	a1,a1,32
a00046ca:	01081313          	slli	t1,a6,0x10
a00046ce:	011368b3          	or	a7,t1,a7
a00046d2:	0116ae23          	sw	a7,28(a3)
a00046d6:	02068693          	addi	a3,a3,32
a00046da:	bf39                	j	a00045f8 <memcpy+0x276>
a00046dc:	99f1                	andi	a1,a1,-4
a00046de:	5845c80b          	lwia	a6,(a1),4,0
a00046e2:	9bf1                	andi	a5,a5,-4
a00046e4:	00777693          	andi	a3,a4,7
a00046e8:	ea85                	bnez	a3,a0004718 <memcpy+0x396>
a00046ea:	830d                	srli	a4,a4,0x3
a00046ec:	0716                	slli	a4,a4,0x5
a00046ee:	00e58e33          	add	t3,a1,a4
a00046f2:	86be                	mv	a3,a5
a00046f4:	03c59e63          	bne	a1,t3,a0004730 <memcpy+0x3ae>
a00046f8:	8a0d                	andi	a2,a2,3
a00046fa:	4689                	li	a3,2
a00046fc:	97ba                	add	a5,a5,a4
a00046fe:	fff58713          	addi	a4,a1,-1
a0004702:	ecd60ae3          	beq	a2,a3,a00045d6 <memcpy+0x254>
a0004706:	468d                	li	a3,3
a0004708:	d4d61fe3          	bne	a2,a3,a0004466 <memcpy+0xe4>
a000470c:	fff5c703          	lbu	a4,-1(a1)
a0004710:	1817d70b          	sbia	a4,(a5),1,0
a0004714:	872e                	mv	a4,a1
a0004716:	b5c1                	j	a00045d6 <memcpy+0x254>
a0004718:	01885893          	srli	a7,a6,0x18
a000471c:	5845c80b          	lwia	a6,(a1),4,0
a0004720:	177d                	addi	a4,a4,-1
a0004722:	00881693          	slli	a3,a6,0x8
a0004726:	0116e6b3          	or	a3,a3,a7
a000472a:	5847d68b          	swia	a3,(a5),4,0
a000472e:	bf5d                	j	a00046e4 <memcpy+0x362>
a0004730:	0005a883          	lw	a7,0(a1)
a0004734:	01885813          	srli	a6,a6,0x18
a0004738:	00889313          	slli	t1,a7,0x8
a000473c:	01036833          	or	a6,t1,a6
a0004740:	0106a023          	sw	a6,0(a3)
a0004744:	0045a803          	lw	a6,4(a1)
a0004748:	0188d893          	srli	a7,a7,0x18
a000474c:	00881313          	slli	t1,a6,0x8
a0004750:	011368b3          	or	a7,t1,a7
a0004754:	0116a223          	sw	a7,4(a3)
a0004758:	01885893          	srli	a7,a6,0x18
a000475c:	0085a803          	lw	a6,8(a1)
a0004760:	00881313          	slli	t1,a6,0x8
a0004764:	011368b3          	or	a7,t1,a7
a0004768:	0116a423          	sw	a7,8(a3)
a000476c:	01885893          	srli	a7,a6,0x18
a0004770:	00c5a803          	lw	a6,12(a1)
a0004774:	00881313          	slli	t1,a6,0x8
a0004778:	011368b3          	or	a7,t1,a7
a000477c:	0116a623          	sw	a7,12(a3)
a0004780:	01885893          	srli	a7,a6,0x18
a0004784:	0105a803          	lw	a6,16(a1)
a0004788:	00881313          	slli	t1,a6,0x8
a000478c:	011368b3          	or	a7,t1,a7
a0004790:	0116a823          	sw	a7,16(a3)
a0004794:	01885893          	srli	a7,a6,0x18
a0004798:	0145a803          	lw	a6,20(a1)
a000479c:	00881313          	slli	t1,a6,0x8
a00047a0:	011368b3          	or	a7,t1,a7
a00047a4:	0116aa23          	sw	a7,20(a3)
a00047a8:	01885893          	srli	a7,a6,0x18
a00047ac:	0185a803          	lw	a6,24(a1)
a00047b0:	00881313          	slli	t1,a6,0x8
a00047b4:	011368b3          	or	a7,t1,a7
a00047b8:	0116ac23          	sw	a7,24(a3)
a00047bc:	01885893          	srli	a7,a6,0x18
a00047c0:	01c5a803          	lw	a6,28(a1)
a00047c4:	02058593          	addi	a1,a1,32
a00047c8:	00881313          	slli	t1,a6,0x8
a00047cc:	011368b3          	or	a7,t1,a7
a00047d0:	0116ae23          	sw	a7,28(a3)
a00047d4:	02068693          	addi	a3,a3,32
a00047d8:	bf31                	j	a00046f4 <memcpy+0x372>

a00047da <out_discard>:
a00047da:	8082                	ret

a00047dc <out_rev_>:
a00047dc:	7179                	addi	sp,sp,-48
a00047de:	d422                	sw	s0,40(sp)
a00047e0:	d226                	sw	s1,36(sp)
a00047e2:	d04a                	sw	s2,32(sp)
a00047e4:	ce4e                	sw	s3,28(sp)
a00047e6:	cc52                	sw	s4,24(sp)
a00047e8:	ca56                	sw	s5,20(sp)
a00047ea:	c85a                	sw	s6,16(sp)
a00047ec:	c65e                	sw	s7,12(sp)
a00047ee:	c462                	sw	s8,8(sp)
a00047f0:	84be                	mv	s1,a5
a00047f2:	d606                	sw	ra,44(sp)
a00047f4:	c266                	sw	s9,4(sp)
a00047f6:	0038f793          	andi	a5,a7,3
a00047fa:	8aaa                	mv	s5,a0
a00047fc:	8b2e                	mv	s6,a1
a00047fe:	8932                	mv	s2,a2
a0004800:	8bb6                	mv	s7,a3
a0004802:	8c3a                	mv	s8,a4
a0004804:	89c2                	mv	s3,a6
a0004806:	8a46                	mv	s4,a7
a0004808:	8432                	mv	s0,a2
a000480a:	e78d                	bnez	a5,a0004834 <out_rev_+0x58>
a000480c:	8426                	mv	s0,s1
a000480e:	40960cb3          	sub	s9,a2,s1
a0004812:	a039                	j	a0004820 <out_rev_+0x44>
a0004814:	86de                	mv	a3,s7
a0004816:	85da                	mv	a1,s6
a0004818:	02000513          	li	a0,32
a000481c:	9a82                	jalr	s5
a000481e:	0405                	addi	s0,s0,1
a0004820:	008c8633          	add	a2,s9,s0
a0004824:	ff3468e3          	bltu	s0,s3,a0004814 <out_rev_+0x38>
a0004828:	4401                	li	s0,0
a000482a:	0099e463          	bltu	s3,s1,a0004832 <out_rev_+0x56>
a000482e:	40998433          	sub	s0,s3,s1
a0004832:	944a                	add	s0,s0,s2
a0004834:	9426                	add	s0,s0,s1
a0004836:	8522                	mv	a0,s0
a0004838:	40940633          	sub	a2,s0,s1
a000483c:	e485                	bnez	s1,a0004864 <out_rev_+0x88>
a000483e:	002a7a13          	andi	s4,s4,2
a0004842:	41240433          	sub	s0,s0,s2
a0004846:	020a1d63          	bnez	s4,a0004880 <out_rev_+0xa4>
a000484a:	50b2                	lw	ra,44(sp)
a000484c:	5422                	lw	s0,40(sp)
a000484e:	5492                	lw	s1,36(sp)
a0004850:	5902                	lw	s2,32(sp)
a0004852:	49f2                	lw	s3,28(sp)
a0004854:	4a62                	lw	s4,24(sp)
a0004856:	4ad2                	lw	s5,20(sp)
a0004858:	4b42                	lw	s6,16(sp)
a000485a:	4bb2                	lw	s7,12(sp)
a000485c:	4c22                	lw	s8,8(sp)
a000485e:	4c92                	lw	s9,4(sp)
a0004860:	6145                	addi	sp,sp,48
a0004862:	8082                	ret
a0004864:	14fd                	addi	s1,s1,-1
a0004866:	809c450b          	lrbu	a0,s8,s1,0
a000486a:	86de                	mv	a3,s7
a000486c:	85da                	mv	a1,s6
a000486e:	9a82                	jalr	s5
a0004870:	b7d9                	j	a0004836 <out_rev_+0x5a>
a0004872:	862a                	mv	a2,a0
a0004874:	86de                	mv	a3,s7
a0004876:	85da                	mv	a1,s6
a0004878:	02000513          	li	a0,32
a000487c:	9a82                	jalr	s5
a000487e:	0405                	addi	s0,s0,1
a0004880:	00890533          	add	a0,s2,s0
a0004884:	ff3467e3          	bltu	s0,s3,a0004872 <out_rev_+0x96>
a0004888:	b7c9                	j	a000484a <out_rev_+0x6e>

a000488a <print_integer>:
a000488a:	7159                	addi	sp,sp,-112
a000488c:	d4a2                	sw	s0,104(sp)
a000488e:	d0ca                	sw	s2,96(sp)
a0004890:	cece                	sw	s3,92(sp)
a0004892:	ccd2                	sw	s4,88(sp)
a0004894:	cad6                	sw	s5,84(sp)
a0004896:	c8da                	sw	s6,80(sp)
a0004898:	c6de                	sw	s7,76(sp)
a000489a:	d686                	sw	ra,108(sp)
a000489c:	8bb6                	mv	s7,a3
a000489e:	d2a6                	sw	s1,100(sp)
a00048a0:	c4e2                	sw	s8,72(sp)
a00048a2:	c2e6                	sw	s9,68(sp)
a00048a4:	c0ea                	sw	s10,64(sp)
a00048a6:	de6e                	sw	s11,60(sp)
a00048a8:	00f766b3          	or	a3,a4,a5
a00048ac:	8b32                	mv	s6,a2
a00048ae:	59d6                	lw	s3,116(sp)
a00048b0:	5466                	lw	s0,120(sp)
a00048b2:	8a2a                	mv	s4,a0
a00048b4:	8aae                	mv	s5,a1
a00048b6:	8942                	mv	s2,a6
a00048b8:	8646                	mv	a2,a7
a00048ba:	e6a9                	bnez	a3,a0004904 <print_integer+0x7a>
a00048bc:	40047793          	andi	a5,s0,1024
a00048c0:	ef85                	bnez	a5,a00048f8 <print_integer+0x6e>
a00048c2:	03000793          	li	a5,48
a00048c6:	00f10823          	sb	a5,16(sp)
a00048ca:	983d                	andi	s0,s0,-17
a00048cc:	4d85                	li	s11,1
a00048ce:	00247713          	andi	a4,s0,2
a00048d2:	87ee                	mv	a5,s11
a00048d4:	ef4d                	bnez	a4,a000498e <print_integer+0x104>
a00048d6:	00147713          	andi	a4,s0,1
a00048da:	00098963          	beqz	s3,a00048ec <print_integer+0x62>
a00048de:	cb45                	beqz	a4,a000498e <print_integer+0x104>
a00048e0:	00091563          	bnez	s2,a00048ea <print_integer+0x60>
a00048e4:	00c47793          	andi	a5,s0,12
a00048e8:	c391                	beqz	a5,a00048ec <print_integer+0x62>
a00048ea:	19fd                	addi	s3,s3,-1
a00048ec:	87ee                	mv	a5,s11
a00048ee:	02000693          	li	a3,32
a00048f2:	03000593          	li	a1,48
a00048f6:	a079                	j	a0004984 <print_integer+0xfa>
a00048f8:	47c1                	li	a5,16
a00048fa:	4d81                	li	s11,0
a00048fc:	fcf899e3          	bne	a7,a5,a00048ce <print_integer+0x44>
a0004900:	983d                	andi	s0,s0,-17
a0004902:	b7f1                	j	a00048ce <print_integer+0x44>
a0004904:	02047693          	andi	a3,s0,32
a0004908:	06100493          	li	s1,97
a000490c:	c299                	beqz	a3,a0004912 <print_integer+0x88>
a000490e:	04100493          	li	s1,65
a0004912:	4d81                	li	s11,0
a0004914:	4d01                	li	s10,0
a0004916:	4ca5                	li	s9,9
a0004918:	14d9                	addi	s1,s1,-10
a000491a:	02000c13          	li	s8,32
a000491e:	853a                	mv	a0,a4
a0004920:	85be                	mv	a1,a5
a0004922:	4681                	li	a3,0
a0004924:	c632                	sw	a2,12(sp)
a0004926:	c43a                	sw	a4,8(sp)
a0004928:	c23e                	sw	a5,4(sp)
a000492a:	e37fc0ef          	jal	ra,a0001760 <__umoddi3>
a000492e:	0ff57513          	zext.b	a0,a0
a0004932:	4792                	lw	a5,4(sp)
a0004934:	4722                	lw	a4,8(sp)
a0004936:	4632                	lw	a2,12(sp)
a0004938:	04ace063          	bltu	s9,a0,a0004978 <print_integer+0xee>
a000493c:	03050513          	addi	a0,a0,48
a0004940:	0d85                	addi	s11,s11,1
a0004942:	010d8693          	addi	a3,s11,16
a0004946:	0ff57513          	zext.b	a0,a0
a000494a:	968a                	add	a3,a3,sp
a000494c:	fea68fa3          	sb	a0,-1(a3)
a0004950:	85be                	mv	a1,a5
a0004952:	853a                	mv	a0,a4
a0004954:	4681                	li	a3,0
a0004956:	c632                	sw	a2,12(sp)
a0004958:	c43a                	sw	a4,8(sp)
a000495a:	c23e                	sw	a5,4(sp)
a000495c:	aa5fc0ef          	jal	ra,a0001400 <__udivdi3>
a0004960:	4792                	lw	a5,4(sp)
a0004962:	4722                	lw	a4,8(sp)
a0004964:	4632                	lw	a2,12(sp)
a0004966:	00fd1463          	bne	s10,a5,a000496e <print_integer+0xe4>
a000496a:	f6c762e3          	bltu	a4,a2,a00048ce <print_integer+0x44>
a000496e:	f78d80e3          	beq	s11,s8,a00048ce <print_integer+0x44>
a0004972:	872a                	mv	a4,a0
a0004974:	87ae                	mv	a5,a1
a0004976:	b765                	j	a000491e <print_integer+0x94>
a0004978:	9526                	add	a0,a0,s1
a000497a:	b7d9                	j	a0004940 <print_integer+0xb6>
a000497c:	0808                	addi	a0,sp,16
a000497e:	00f5558b          	srb	a1,a0,a5,0
a0004982:	0785                	addi	a5,a5,1
a0004984:	c709                	beqz	a4,a000498e <print_integer+0x104>
a0004986:	0137f463          	bgeu	a5,s3,a000498e <print_integer+0x104>
a000498a:	fed799e3          	bne	a5,a3,a000497c <print_integer+0xf2>
a000498e:	02000713          	li	a4,32
a0004992:	03000693          	li	a3,48
a0004996:	a029                	j	a00049a0 <print_integer+0x116>
a0004998:	080c                	addi	a1,sp,16
a000499a:	00f5d68b          	srb	a3,a1,a5,0
a000499e:	0785                	addi	a5,a5,1
a00049a0:	55c6                	lw	a1,112(sp)
a00049a2:	00b7f463          	bgeu	a5,a1,a00049aa <print_integer+0x120>
a00049a6:	fee799e3          	bne	a5,a4,a0004998 <print_integer+0x10e>
a00049aa:	4721                	li	a4,8
a00049ac:	00e61563          	bne	a2,a4,a00049b6 <print_integer+0x12c>
a00049b0:	00fdf363          	bgeu	s11,a5,a00049b6 <print_integer+0x12c>
a00049b4:	983d                	andi	s0,s0,-17
a00049b6:	6705                	lui	a4,0x1
a00049b8:	0741                	addi	a4,a4,16
a00049ba:	8f61                	and	a4,a4,s0
a00049bc:	cb39                	beqz	a4,a0004a12 <print_integer+0x188>
a00049be:	40047713          	andi	a4,s0,1024
a00049c2:	e345                	bnez	a4,a0004a62 <print_integer+0x1d8>
a00049c4:	cfd9                	beqz	a5,a0004a62 <print_integer+0x1d8>
a00049c6:	5746                	lw	a4,112(sp)
a00049c8:	00f70463          	beq	a4,a5,a00049d0 <print_integer+0x146>
a00049cc:	08f99b63          	bne	s3,a5,a0004a62 <print_integer+0x1d8>
a00049d0:	08fdf963          	bgeu	s11,a5,a0004a62 <print_integer+0x1d8>
a00049d4:	fff78713          	addi	a4,a5,-1
a00049d8:	c741                	beqz	a4,a0004a60 <print_integer+0x1d6>
a00049da:	46c1                	li	a3,16
a00049dc:	08d61763          	bne	a2,a3,a0004a6a <print_integer+0x1e0>
a00049e0:	17f9                	addi	a5,a5,-2
a00049e2:	00ede363          	bltu	s11,a4,a00049e8 <print_integer+0x15e>
a00049e6:	87ba                	mv	a5,a4
a00049e8:	02047713          	andi	a4,s0,32
a00049ec:	eb49                	bnez	a4,a0004a7e <print_integer+0x1f4>
a00049ee:	477d                	li	a4,31
a00049f0:	04f76163          	bltu	a4,a5,a0004a32 <print_integer+0x1a8>
a00049f4:	07800713          	li	a4,120
a00049f8:	0814                	addi	a3,sp,16
a00049fa:	00f6d70b          	srb	a4,a3,a5,0
a00049fe:	0785                	addi	a5,a5,1
a0004a00:	477d                	li	a4,31
a0004a02:	02f76863          	bltu	a4,a5,a0004a32 <print_integer+0x1a8>
a0004a06:	03000713          	li	a4,48
a0004a0a:	0814                	addi	a3,sp,16
a0004a0c:	00f6d70b          	srb	a4,a3,a5,0
a0004a10:	0785                	addi	a5,a5,1
a0004a12:	477d                	li	a4,31
a0004a14:	00f76f63          	bltu	a4,a5,a0004a32 <print_integer+0x1a8>
a0004a18:	02d00713          	li	a4,45
a0004a1c:	00091763          	bnez	s2,a0004a2a <print_integer+0x1a0>
a0004a20:	00447713          	andi	a4,s0,4
a0004a24:	c33d                	beqz	a4,a0004a8a <print_integer+0x200>
a0004a26:	02b00713          	li	a4,43
a0004a2a:	0814                	addi	a3,sp,16
a0004a2c:	00f6d70b          	srb	a4,a3,a5,0
a0004a30:	0785                	addi	a5,a5,1
a0004a32:	88a2                	mv	a7,s0
a0004a34:	884e                	mv	a6,s3
a0004a36:	0818                	addi	a4,sp,16
a0004a38:	86de                	mv	a3,s7
a0004a3a:	865a                	mv	a2,s6
a0004a3c:	85d6                	mv	a1,s5
a0004a3e:	8552                	mv	a0,s4
a0004a40:	3b71                	jal	a00047dc <out_rev_>
a0004a42:	50b6                	lw	ra,108(sp)
a0004a44:	5426                	lw	s0,104(sp)
a0004a46:	5496                	lw	s1,100(sp)
a0004a48:	5906                	lw	s2,96(sp)
a0004a4a:	49f6                	lw	s3,92(sp)
a0004a4c:	4a66                	lw	s4,88(sp)
a0004a4e:	4ad6                	lw	s5,84(sp)
a0004a50:	4b46                	lw	s6,80(sp)
a0004a52:	4bb6                	lw	s7,76(sp)
a0004a54:	4c26                	lw	s8,72(sp)
a0004a56:	4c96                	lw	s9,68(sp)
a0004a58:	4d06                	lw	s10,64(sp)
a0004a5a:	5df2                	lw	s11,60(sp)
a0004a5c:	6165                	addi	sp,sp,112
a0004a5e:	8082                	ret
a0004a60:	4781                	li	a5,0
a0004a62:	4741                	li	a4,16
a0004a64:	00e61463          	bne	a2,a4,a0004a6c <print_integer+0x1e2>
a0004a68:	b741                	j	a00049e8 <print_integer+0x15e>
a0004a6a:	87ba                	mv	a5,a4
a0004a6c:	4709                	li	a4,2
a0004a6e:	f8e619e3          	bne	a2,a4,a0004a00 <print_integer+0x176>
a0004a72:	477d                	li	a4,31
a0004a74:	faf76fe3          	bltu	a4,a5,a0004a32 <print_integer+0x1a8>
a0004a78:	06200713          	li	a4,98
a0004a7c:	bfb5                	j	a00049f8 <print_integer+0x16e>
a0004a7e:	477d                	li	a4,31
a0004a80:	faf769e3          	bltu	a4,a5,a0004a32 <print_integer+0x1a8>
a0004a84:	05800713          	li	a4,88
a0004a88:	bf85                	j	a00049f8 <print_integer+0x16e>
a0004a8a:	00847713          	andi	a4,s0,8
a0004a8e:	d355                	beqz	a4,a0004a32 <print_integer+0x1a8>
a0004a90:	02000713          	li	a4,32
a0004a94:	bf59                	j	a0004a2a <print_integer+0x1a0>

a0004a96 <get_components>:
a0004a96:	715d                	addi	sp,sp,-80
a0004a98:	01f65793          	srli	a5,a2,0x1f
a0004a9c:	dc52                	sw	s4,56(sp)
a0004a9e:	da56                	sw	s5,52(sp)
a0004aa0:	d462                	sw	s8,40(sp)
a0004aa2:	d266                	sw	s9,36(sp)
a0004aa4:	c686                	sw	ra,76(sp)
a0004aa6:	c4a2                	sw	s0,72(sp)
a0004aa8:	c2a6                	sw	s1,68(sp)
a0004aaa:	c0ca                	sw	s2,64(sp)
a0004aac:	de4e                	sw	s3,60(sp)
a0004aae:	d85a                	sw	s6,48(sp)
a0004ab0:	d65e                	sw	s7,44(sp)
a0004ab2:	d06a                	sw	s10,32(sp)
a0004ab4:	ce6e                	sw	s11,28(sp)
a0004ab6:	c03e                	sw	a5,0(sp)
a0004ab8:	8aaa                	mv	s5,a0
a0004aba:	8c2e                	mv	s8,a1
a0004abc:	8a32                	mv	s4,a2
a0004abe:	8cb6                	mv	s9,a3
a0004ac0:	c789                	beqz	a5,a0004aca <get_components+0x34>
a0004ac2:	800007b7          	lui	a5,0x80000
a0004ac6:	00c7ca33          	xor	s4,a5,a2
a0004aca:	8562                	mv	a0,s8
a0004acc:	85d2                	mv	a1,s4
a0004ace:	8c8ff0ef          	jal	ra,a0003b96 <__fixdfdi>
a0004ad2:	a00097b7          	lui	a5,0xa0009
a0004ad6:	9a878793          	addi	a5,a5,-1624 # a00089a8 <__psram_limit+0xf7c089a8>
a0004ada:	0797978b          	addsl	a5,a5,s9,3
a0004ade:	0007ab03          	lw	s6,0(a5)
a0004ae2:	0047ab83          	lw	s7,4(a5)
a0004ae6:	892a                	mv	s2,a0
a0004ae8:	89ae                	mv	s3,a1
a0004aea:	9b0ff0ef          	jal	ra,a0003c9a <__floatdidf>
a0004aee:	862a                	mv	a2,a0
a0004af0:	86ae                	mv	a3,a1
a0004af2:	8562                	mv	a0,s8
a0004af4:	85d2                	mv	a1,s4
a0004af6:	e74fe0ef          	jal	ra,a000316a <__subdf3>
a0004afa:	865a                	mv	a2,s6
a0004afc:	86de                	mv	a3,s7
a0004afe:	8d2fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004b02:	8d2a                	mv	s10,a0
a0004b04:	8dae                	mv	s11,a1
a0004b06:	890ff0ef          	jal	ra,a0003b96 <__fixdfdi>
a0004b0a:	842a                	mv	s0,a0
a0004b0c:	84ae                	mv	s1,a1
a0004b0e:	98cff0ef          	jal	ra,a0003c9a <__floatdidf>
a0004b12:	862a                	mv	a2,a0
a0004b14:	86ae                	mv	a3,a1
a0004b16:	856a                	mv	a0,s10
a0004b18:	85ee                	mv	a1,s11
a0004b1a:	e50fe0ef          	jal	ra,a000316a <__subdf3>
a0004b1e:	a0009837          	lui	a6,0xa0009
a0004b22:	92082d03          	lw	s10,-1760(a6) # a0008920 <__psram_limit+0xf7c08920>
a0004b26:	92482d83          	lw	s11,-1756(a6)
a0004b2a:	c42a                	sw	a0,8(sp)
a0004b2c:	866a                	mv	a2,s10
a0004b2e:	86ee                	mv	a3,s11
a0004b30:	c62e                	sw	a1,12(sp)
a0004b32:	f43fd0ef          	jal	ra,a0002a74 <__gedf2>
a0004b36:	a0009837          	lui	a6,0xa0009
a0004b3a:	c242                	sw	a6,4(sp)
a0004b3c:	4722                	lw	a4,8(sp)
a0004b3e:	47b2                	lw	a5,12(sp)
a0004b40:	0aa05963          	blez	a0,a0004bf2 <get_components+0x15c>
a0004b44:	4d05                	li	s10,1
a0004b46:	4d81                	li	s11,0
a0004b48:	c1a41477          	add64	s0,s0,s10
a0004b4c:	8522                	mv	a0,s0
a0004b4e:	85a6                	mv	a1,s1
a0004b50:	94aff0ef          	jal	ra,a0003c9a <__floatdidf>
a0004b54:	862a                	mv	a2,a0
a0004b56:	86ae                	mv	a3,a1
a0004b58:	855a                	mv	a0,s6
a0004b5a:	85de                	mv	a1,s7
a0004b5c:	fc7fd0ef          	jal	ra,a0002b22 <__ledf2>
a0004b60:	00a04663          	bgtz	a0,a0004b6c <get_components+0xd6>
a0004b64:	c1a91977          	add64	s2,s2,s10
a0004b68:	4401                	li	s0,0
a0004b6a:	4481                	li	s1,0
a0004b6c:	040c9863          	bnez	s9,a0004bbc <get_components+0x126>
a0004b70:	854a                	mv	a0,s2
a0004b72:	85ce                	mv	a1,s3
a0004b74:	926ff0ef          	jal	ra,a0003c9a <__floatdidf>
a0004b78:	862a                	mv	a2,a0
a0004b7a:	86ae                	mv	a3,a1
a0004b7c:	8562                	mv	a0,s8
a0004b7e:	85d2                	mv	a1,s4
a0004b80:	deafe0ef          	jal	ra,a000316a <__subdf3>
a0004b84:	4792                	lw	a5,4(sp)
a0004b86:	8c2a                	mv	s8,a0
a0004b88:	8cae                	mv	s9,a1
a0004b8a:	9207ab03          	lw	s6,-1760(a5)
a0004b8e:	9247ab83          	lw	s7,-1756(a5)
a0004b92:	865a                	mv	a2,s6
a0004b94:	86de                	mv	a3,s7
a0004b96:	f8dfd0ef          	jal	ra,a0002b22 <__ledf2>
a0004b9a:	00055a63          	bgez	a0,a0004bae <get_components+0x118>
a0004b9e:	865a                	mv	a2,s6
a0004ba0:	86de                	mv	a3,s7
a0004ba2:	8562                	mv	a0,s8
a0004ba4:	85e6                	mv	a1,s9
a0004ba6:	ecffd0ef          	jal	ra,a0002a74 <__gedf2>
a0004baa:	00a05963          	blez	a0,a0004bbc <get_components+0x126>
a0004bae:	00197793          	andi	a5,s2,1
a0004bb2:	c789                	beqz	a5,a0004bbc <get_components+0x126>
a0004bb4:	4705                	li	a4,1
a0004bb6:	4781                	li	a5,0
a0004bb8:	c0e91977          	add64	s2,s2,a4
a0004bbc:	4782                	lw	a5,0(sp)
a0004bbe:	008aa423          	sw	s0,8(s5)
a0004bc2:	40b6                	lw	ra,76(sp)
a0004bc4:	4426                	lw	s0,72(sp)
a0004bc6:	012aa023          	sw	s2,0(s5)
a0004bca:	013aa223          	sw	s3,4(s5)
a0004bce:	009aa623          	sw	s1,12(s5)
a0004bd2:	00fa8823          	sb	a5,16(s5)
a0004bd6:	4496                	lw	s1,68(sp)
a0004bd8:	4906                	lw	s2,64(sp)
a0004bda:	59f2                	lw	s3,60(sp)
a0004bdc:	5a62                	lw	s4,56(sp)
a0004bde:	5b42                	lw	s6,48(sp)
a0004be0:	5bb2                	lw	s7,44(sp)
a0004be2:	5c22                	lw	s8,40(sp)
a0004be4:	5c92                	lw	s9,36(sp)
a0004be6:	5d02                	lw	s10,32(sp)
a0004be8:	4df2                	lw	s11,28(sp)
a0004bea:	8556                	mv	a0,s5
a0004bec:	5ad2                	lw	s5,52(sp)
a0004bee:	6161                	addi	sp,sp,80
a0004bf0:	8082                	ret
a0004bf2:	866a                	mv	a2,s10
a0004bf4:	86ee                	mv	a3,s11
a0004bf6:	853a                	mv	a0,a4
a0004bf8:	85be                	mv	a1,a5
a0004bfa:	dd7fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004bfe:	f53d                	bnez	a0,a0004b6c <get_components+0xd6>
a0004c00:	009467b3          	or	a5,s0,s1
a0004c04:	c781                	beqz	a5,a0004c0c <get_components+0x176>
a0004c06:	00147793          	andi	a5,s0,1
a0004c0a:	d3ad                	beqz	a5,a0004b6c <get_components+0xd6>
a0004c0c:	4705                	li	a4,1
a0004c0e:	4781                	li	a5,0
a0004c10:	c0e41477          	add64	s0,s0,a4
a0004c14:	bfa1                	j	a0004b6c <get_components+0xd6>

a0004c16 <out_console>:
a0004c16:	62fc37b7          	lui	a5,0x62fc3
a0004c1a:	85aa                	mv	a1,a0
a0004c1c:	ff07a503          	lw	a0,-16(a5) # 62fc2ff0 <console>
a0004c20:	c2fbc317          	auipc	t1,0xc2fbc
a0004c24:	c5630067          	jr	-938(t1) # 62fc0876 <qcc74x_uart_putchar>

a0004c28 <print_broken_up_decimal.isra.0>:
a0004c28:	715d                	addi	sp,sp,-80
a0004c2a:	d266                	sw	s9,36(sp)
a0004c2c:	4cd6                	lw	s9,84(sp)
a0004c2e:	c4a2                	sw	s0,72(sp)
a0004c30:	c0ca                	sw	s2,64(sp)
a0004c32:	dc52                	sw	s4,56(sp)
a0004c34:	da56                	sw	s5,52(sp)
a0004c36:	d85a                	sw	s6,48(sp)
a0004c38:	d65e                	sw	s7,44(sp)
a0004c3a:	d462                	sw	s8,40(sp)
a0004c3c:	d06a                	sw	s10,32(sp)
a0004c3e:	c686                	sw	ra,76(sp)
a0004c40:	c2a6                	sw	s1,68(sp)
a0004c42:	de4e                	sw	s3,60(sp)
a0004c44:	ce6e                	sw	s11,28(sp)
a0004c46:	c23e                	sw	a5,4(sp)
a0004c48:	c442                	sw	a6,8(sp)
a0004c4a:	c646                	sw	a7,12(sp)
a0004c4c:	4d46                	lw	s10,80(sp)
a0004c4e:	4be6                	lw	s7,88(sp)
a0004c50:	4c76                	lw	s8,92(sp)
a0004c52:	5906                	lw	s2,96(sp)
a0004c54:	5416                	lw	s0,100(sp)
a0004c56:	8a2a                	mv	s4,a0
a0004c58:	8aae                	mv	s5,a1
a0004c5a:	8b3a                	mv	s6,a4
a0004c5c:	0a0c8563          	beqz	s9,a0004d06 <print_broken_up_decimal.isra.0+0xde>
a0004c60:	6705                	lui	a4,0x1
a0004c62:	81070713          	addi	a4,a4,-2032 # 810 <__RFTLV_SIZE_HOLE+0x10>
a0004c66:	00ec7733          	and	a4,s8,a4
a0004c6a:	80070713          	addi	a4,a4,-2048
a0004c6e:	89b2                	mv	s3,a2
a0004c70:	84b6                	mv	s1,a3
a0004c72:	14071a63          	bnez	a4,a0004dc6 <print_broken_up_decimal.isra.0+0x19e>
a0004c76:	00d04463          	bgtz	a3,a0004c7e <print_broken_up_decimal.isra.0+0x56>
a0004c7a:	e2d5                	bnez	a3,a0004d1e <print_broken_up_decimal.isra.0+0xf6>
a0004c7c:	c24d                	beqz	a2,a0004d1e <print_broken_up_decimal.isra.0+0xf6>
a0004c7e:	4629                	li	a2,10
a0004c80:	4681                	li	a3,0
a0004c82:	854e                	mv	a0,s3
a0004c84:	85a6                	mv	a1,s1
a0004c86:	bf6fc0ef          	jal	ra,a000107c <__moddi3>
a0004c8a:	8d4d                	or	a0,a0,a1
a0004c8c:	12051a63          	bnez	a0,a0004dc0 <print_broken_up_decimal.isra.0+0x198>
a0004c90:	854e                	mv	a0,s3
a0004c92:	85a6                	mv	a1,s1
a0004c94:	4629                	li	a2,10
a0004c96:	4681                	li	a3,0
a0004c98:	83cfc0ef          	jal	ra,a0000cd4 <__divdi3>
a0004c9c:	1cfd                	addi	s9,s9,-1
a0004c9e:	89aa                	mv	s3,a0
a0004ca0:	84ae                	mv	s1,a1
a0004ca2:	bff1                	j	a0004c7e <print_broken_up_decimal.isra.0+0x56>
a0004ca4:	4629                	li	a2,10
a0004ca6:	4681                	li	a3,0
a0004ca8:	854e                	mv	a0,s3
a0004caa:	85a6                	mv	a1,s1
a0004cac:	bd0fc0ef          	jal	ra,a000107c <__moddi3>
a0004cb0:	03050513          	addi	a0,a0,48
a0004cb4:	0405                	addi	s0,s0,1
a0004cb6:	008dd50b          	srb	a0,s11,s0,0
a0004cba:	85a6                	mv	a1,s1
a0004cbc:	854e                	mv	a0,s3
a0004cbe:	4629                	li	a2,10
a0004cc0:	4681                	li	a3,0
a0004cc2:	812fc0ef          	jal	ra,a0000cd4 <__divdi3>
a0004cc6:	84ae                	mv	s1,a1
a0004cc8:	8dc9                	or	a1,a1,a0
a0004cca:	1cfd                	addi	s9,s9,-1
a0004ccc:	89aa                	mv	s3,a0
a0004cce:	02000713          	li	a4,32
a0004cd2:	0e059e63          	bnez	a1,a0004dce <print_broken_up_decimal.isra.0+0x1a6>
a0004cd6:	008c87b3          	add	a5,s9,s0
a0004cda:	02000613          	li	a2,32
a0004cde:	03000593          	li	a1,48
a0004ce2:	0ec40863          	beq	s0,a2,a0004dd2 <print_broken_up_decimal.isra.0+0x1aa>
a0004ce6:	00140713          	addi	a4,s0,1
a0004cea:	008906b3          	add	a3,s2,s0
a0004cee:	00879863          	bne	a5,s0,a0004cfe <print_broken_up_decimal.isra.0+0xd6>
a0004cf2:	02e00793          	li	a5,46
a0004cf6:	00f68023          	sb	a5,0(a3)
a0004cfa:	843a                	mv	s0,a4
a0004cfc:	a00d                	j	a0004d1e <print_broken_up_decimal.isra.0+0xf6>
a0004cfe:	0089558b          	srb	a1,s2,s0,0
a0004d02:	843a                	mv	s0,a4
a0004d04:	bff9                	j	a0004ce2 <print_broken_up_decimal.isra.0+0xba>
a0004d06:	010c7793          	andi	a5,s8,16
a0004d0a:	cb91                	beqz	a5,a0004d1e <print_broken_up_decimal.isra.0+0xf6>
a0004d0c:	02000793          	li	a5,32
a0004d10:	0cf40163          	beq	s0,a5,a0004dd2 <print_broken_up_decimal.isra.0+0x1aa>
a0004d14:	02e00793          	li	a5,46
a0004d18:	0089578b          	srb	a5,s2,s0,0
a0004d1c:	0405                	addi	s0,s0,1
a0004d1e:	02000993          	li	s3,32
a0004d22:	fff90493          	addi	s1,s2,-1
a0004d26:	a035                	j	a0004d52 <print_broken_up_decimal.isra.0+0x12a>
a0004d28:	4629                	li	a2,10
a0004d2a:	4681                	li	a3,0
a0004d2c:	8552                	mv	a0,s4
a0004d2e:	85d6                	mv	a1,s5
a0004d30:	b4cfc0ef          	jal	ra,a000107c <__moddi3>
a0004d34:	03050513          	addi	a0,a0,48
a0004d38:	0405                	addi	s0,s0,1
a0004d3a:	0084d50b          	srb	a0,s1,s0,0
a0004d3e:	85d6                	mv	a1,s5
a0004d40:	8552                	mv	a0,s4
a0004d42:	4629                	li	a2,10
a0004d44:	4681                	li	a3,0
a0004d46:	f8ffb0ef          	jal	ra,a0000cd4 <__divdi3>
a0004d4a:	8aae                	mv	s5,a1
a0004d4c:	8dc9                	or	a1,a1,a0
a0004d4e:	8a2a                	mv	s4,a0
a0004d50:	c1d9                	beqz	a1,a0004dd6 <print_broken_up_decimal.isra.0+0x1ae>
a0004d52:	fd341be3          	bne	s0,s3,a0004d28 <print_broken_up_decimal.isra.0+0x100>
a0004d56:	a8b5                	j	a0004dd2 <print_broken_up_decimal.isra.0+0x1aa>
a0004d58:	0089570b          	srb	a4,s2,s0,0
a0004d5c:	0405                	addi	s0,s0,1
a0004d5e:	03747b63          	bgeu	s0,s7,a0004d94 <print_broken_up_decimal.isra.0+0x16c>
a0004d62:	fef41be3          	bne	s0,a5,a0004d58 <print_broken_up_decimal.isra.0+0x130>
a0004d66:	87a2                	mv	a5,s0
a0004d68:	4426                	lw	s0,72(sp)
a0004d6a:	4632                	lw	a2,12(sp)
a0004d6c:	45a2                	lw	a1,8(sp)
a0004d6e:	4512                	lw	a0,4(sp)
a0004d70:	40b6                	lw	ra,76(sp)
a0004d72:	4496                	lw	s1,68(sp)
a0004d74:	59f2                	lw	s3,60(sp)
a0004d76:	5a62                	lw	s4,56(sp)
a0004d78:	5ad2                	lw	s5,52(sp)
a0004d7a:	5b42                	lw	s6,48(sp)
a0004d7c:	5c92                	lw	s9,36(sp)
a0004d7e:	4df2                	lw	s11,28(sp)
a0004d80:	88e2                	mv	a7,s8
a0004d82:	885e                	mv	a6,s7
a0004d84:	5c22                	lw	s8,40(sp)
a0004d86:	5bb2                	lw	s7,44(sp)
a0004d88:	874a                	mv	a4,s2
a0004d8a:	86ea                	mv	a3,s10
a0004d8c:	4906                	lw	s2,64(sp)
a0004d8e:	5d02                	lw	s10,32(sp)
a0004d90:	6161                	addi	sp,sp,80
a0004d92:	b4a9                	j	a00047dc <out_rev_>
a0004d94:	02000793          	li	a5,32
a0004d98:	fcf407e3          	beq	s0,a5,a0004d66 <print_broken_up_decimal.isra.0+0x13e>
a0004d9c:	000b0863          	beqz	s6,a0004dac <print_broken_up_decimal.isra.0+0x184>
a0004da0:	02d00793          	li	a5,45
a0004da4:	0089578b          	srb	a5,s2,s0,0
a0004da8:	0405                	addi	s0,s0,1
a0004daa:	bf75                	j	a0004d66 <print_broken_up_decimal.isra.0+0x13e>
a0004dac:	004c7713          	andi	a4,s8,4
a0004db0:	c701                	beqz	a4,a0004db8 <print_broken_up_decimal.isra.0+0x190>
a0004db2:	02b00793          	li	a5,43
a0004db6:	b7fd                	j	a0004da4 <print_broken_up_decimal.isra.0+0x17c>
a0004db8:	008c7713          	andi	a4,s8,8
a0004dbc:	d74d                	beqz	a4,a0004d66 <print_broken_up_decimal.isra.0+0x13e>
a0004dbe:	b7dd                	j	a0004da4 <print_broken_up_decimal.isra.0+0x17c>
a0004dc0:	0099e733          	or	a4,s3,s1
a0004dc4:	df29                	beqz	a4,a0004d1e <print_broken_up_decimal.isra.0+0xf6>
a0004dc6:	02000713          	li	a4,32
a0004dca:	fff90d93          	addi	s11,s2,-1
a0004dce:	ece41be3          	bne	s0,a4,a0004ca4 <print_broken_up_decimal.isra.0+0x7c>
a0004dd2:	02000413          	li	s0,32
a0004dd6:	003c7793          	andi	a5,s8,3
a0004dda:	4705                	li	a4,1
a0004ddc:	fae79ce3          	bne	a5,a4,a0004d94 <print_broken_up_decimal.isra.0+0x16c>
a0004de0:	fa0b8ae3          	beqz	s7,a0004d94 <print_broken_up_decimal.isra.0+0x16c>
a0004de4:	000b1563          	bnez	s6,a0004dee <print_broken_up_decimal.isra.0+0x1c6>
a0004de8:	00cc7793          	andi	a5,s8,12
a0004dec:	c391                	beqz	a5,a0004df0 <print_broken_up_decimal.isra.0+0x1c8>
a0004dee:	1bfd                	addi	s7,s7,-1
a0004df0:	02000793          	li	a5,32
a0004df4:	03000713          	li	a4,48
a0004df8:	b79d                	j	a0004d5e <print_broken_up_decimal.isra.0+0x136>

a0004dfa <update_normalization>:
a0004dfa:	0085c783          	lbu	a5,8(a1)
a0004dfe:	1141                	addi	sp,sp,-16
a0004e00:	c422                	sw	s0,8(sp)
a0004e02:	c606                	sw	ra,12(sp)
a0004e04:	842a                	mv	s0,a0
a0004e06:	0005a303          	lw	t1,0(a1)
a0004e0a:	0045a803          	lw	a6,4(a1)
a0004e0e:	88b2                	mv	a7,a2
a0004e10:	8536                	mv	a0,a3
a0004e12:	c799                	beqz	a5,a0004e20 <update_normalization+0x26>
a0004e14:	851a                	mv	a0,t1
a0004e16:	85c2                	mv	a1,a6
a0004e18:	db9fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004e1c:	4785                	li	a5,1
a0004e1e:	a815                	j	a0004e52 <update_normalization+0x58>
a0004e20:	7948378b          	extu	a5,a6,30,20
a0004e24:	c0178793          	addi	a5,a5,-1023
a0004e28:	41f7d713          	srai	a4,a5,0x1f
a0004e2c:	8fb9                	xor	a5,a5,a4
a0004e2e:	40e78733          	sub	a4,a5,a4
a0004e32:	7946b78b          	extu	a5,a3,30,20
a0004e36:	c0178793          	addi	a5,a5,-1023
a0004e3a:	41f7d693          	srai	a3,a5,0x1f
a0004e3e:	8fb5                	xor	a5,a5,a3
a0004e40:	8f95                	sub	a5,a5,a3
a0004e42:	02e7d163          	bge	a5,a4,a0004e64 <update_normalization+0x6a>
a0004e46:	86aa                	mv	a3,a0
a0004e48:	85c2                	mv	a1,a6
a0004e4a:	851a                	mv	a0,t1
a0004e4c:	cfcfd0ef          	jal	ra,a0002348 <__divdf3>
a0004e50:	4781                	li	a5,0
a0004e52:	c008                	sw	a0,0(s0)
a0004e54:	40b2                	lw	ra,12(sp)
a0004e56:	c04c                	sw	a1,4(s0)
a0004e58:	00f40423          	sb	a5,8(s0)
a0004e5c:	8522                	mv	a0,s0
a0004e5e:	4422                	lw	s0,8(sp)
a0004e60:	0141                	addi	sp,sp,16
a0004e62:	8082                	ret
a0004e64:	87aa                	mv	a5,a0
a0004e66:	861a                	mv	a2,t1
a0004e68:	86c2                	mv	a3,a6
a0004e6a:	8546                	mv	a0,a7
a0004e6c:	85be                	mv	a1,a5
a0004e6e:	cdafd0ef          	jal	ra,a0002348 <__divdf3>
a0004e72:	b76d                	j	a0004e1c <update_normalization+0x22>

a0004e74 <print_exponential_number>:
a0004e74:	7155                	addi	sp,sp,-208
a0004e76:	d95a                	sw	s6,176(sp)
a0004e78:	8b3e                	mv	s6,a5
a0004e7a:	83fd                	srli	a5,a5,0x1f
a0004e7c:	c3a6                	sw	s1,196(sp)
a0004e7e:	c1ca                	sw	s2,192(sp)
a0004e80:	d75e                	sw	s7,172(sp)
a0004e82:	d16a                	sw	s10,160(sp)
a0004e84:	cf6e                	sw	s11,156(sp)
a0004e86:	c786                	sw	ra,204(sp)
a0004e88:	c5a2                	sw	s0,200(sp)
a0004e8a:	df4e                	sw	s3,188(sp)
a0004e8c:	dd52                	sw	s4,184(sp)
a0004e8e:	db56                	sw	s5,180(sp)
a0004e90:	d562                	sw	s8,168(sp)
a0004e92:	d366                	sw	s9,164(sp)
a0004e94:	d62e                	sw	a1,44(sp)
a0004e96:	da32                	sw	a2,52(sp)
a0004e98:	d836                	sw	a3,48(sp)
a0004e9a:	dc46                	sw	a7,56(sp)
a0004e9c:	de3e                	sw	a5,60(sp)
a0004e9e:	4dce                	lw	s11,208(sp)
a0004ea0:	8d2a                	mv	s10,a0
a0004ea2:	8bba                	mv	s7,a4
a0004ea4:	84c2                	mv	s1,a6
a0004ea6:	4901                	li	s2,0
a0004ea8:	c789                	beqz	a5,a0004eb2 <print_exponential_number+0x3e>
a0004eaa:	800007b7          	lui	a5,0x80000
a0004eae:	0167cb33          	xor	s6,a5,s6
a0004eb2:	4601                	li	a2,0
a0004eb4:	4681                	li	a3,0
a0004eb6:	855e                	mv	a0,s7
a0004eb8:	85da                	mv	a1,s6
a0004eba:	b17fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004ebe:	4401                	li	s0,0
a0004ec0:	20050363          	beqz	a0,a00050c6 <print_exponential_number+0x252>
a0004ec4:	794b350b          	extu	a0,s6,30,20
a0004ec8:	c0150513          	addi	a0,a0,-1023
a0004ecc:	c17fe0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004ed0:	a00097b7          	lui	a5,0xa0009
a0004ed4:	9287a603          	lw	a2,-1752(a5) # a0008928 <__psram_limit+0xf7c08928>
a0004ed8:	92c7a683          	lw	a3,-1748(a5)
a0004edc:	a0009c37          	lui	s8,0xa0009
a0004ee0:	cf1fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004ee4:	a00097b7          	lui	a5,0xa0009
a0004ee8:	9307a603          	lw	a2,-1744(a5) # a0008930 <__psram_limit+0xf7c08930>
a0004eec:	9347a683          	lw	a3,-1740(a5)
a0004ef0:	baffc0ef          	jal	ra,a0001a9e <__adddf3>
a0004ef4:	001007b7          	lui	a5,0x100
a0004ef8:	a0009737          	lui	a4,0xa0009
a0004efc:	17fd                	addi	a5,a5,-1
a0004efe:	93872603          	lw	a2,-1736(a4) # a0008938 <__psram_limit+0xf7c08938>
a0004f02:	93c72683          	lw	a3,-1732(a4)
a0004f06:	00fb77b3          	and	a5,s6,a5
a0004f0a:	3ff00737          	lui	a4,0x3ff00
a0004f0e:	8f5d                	or	a4,a4,a5
a0004f10:	892a                	mv	s2,a0
a0004f12:	89ae                	mv	s3,a1
a0004f14:	855e                	mv	a0,s7
a0004f16:	85ba                	mv	a1,a4
a0004f18:	a52fe0ef          	jal	ra,a000316a <__subdf3>
a0004f1c:	a00097b7          	lui	a5,0xa0009
a0004f20:	9407a603          	lw	a2,-1728(a5) # a0008940 <__psram_limit+0xf7c08940>
a0004f24:	9447a683          	lw	a3,-1724(a5)
a0004f28:	ca9fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004f2c:	862a                	mv	a2,a0
a0004f2e:	86ae                	mv	a3,a1
a0004f30:	854a                	mv	a0,s2
a0004f32:	85ce                	mv	a1,s3
a0004f34:	b6bfc0ef          	jal	ra,a0001a9e <__adddf3>
a0004f38:	ae7fe0ef          	jal	ra,a0003a1e <__fixdfsi>
a0004f3c:	842a                	mv	s0,a0
a0004f3e:	ba5fe0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004f42:	a00097b7          	lui	a5,0xa0009
a0004f46:	9487a603          	lw	a2,-1720(a5) # a0008948 <__psram_limit+0xf7c08948>
a0004f4a:	94c7a683          	lw	a3,-1716(a5)
a0004f4e:	892a                	mv	s2,a0
a0004f50:	89ae                	mv	s3,a1
a0004f52:	c7ffd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004f56:	a00097b7          	lui	a5,0xa0009
a0004f5a:	9207a603          	lw	a2,-1760(a5) # a0008920 <__psram_limit+0xf7c08920>
a0004f5e:	9247a683          	lw	a3,-1756(a5)
a0004f62:	b3dfc0ef          	jal	ra,a0001a9e <__adddf3>
a0004f66:	ab9fe0ef          	jal	ra,a0003a1e <__fixdfsi>
a0004f6a:	a00097b7          	lui	a5,0xa0009
a0004f6e:	9507a603          	lw	a2,-1712(a5) # a0008950 <__psram_limit+0xf7c08950>
a0004f72:	9547a683          	lw	a3,-1708(a5)
a0004f76:	8caa                	mv	s9,a0
a0004f78:	85ce                	mv	a1,s3
a0004f7a:	854a                	mv	a0,s2
a0004f7c:	c55fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004f80:	892a                	mv	s2,a0
a0004f82:	8566                	mv	a0,s9
a0004f84:	89ae                	mv	s3,a1
a0004f86:	b5dfe0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004f8a:	a00097b7          	lui	a5,0xa0009
a0004f8e:	9587a603          	lw	a2,-1704(a5) # a0008958 <__psram_limit+0xf7c08958>
a0004f92:	95c7a683          	lw	a3,-1700(a5)
a0004f96:	c3bfd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004f9a:	862a                	mv	a2,a0
a0004f9c:	86ae                	mv	a3,a1
a0004f9e:	854a                	mv	a0,s2
a0004fa0:	85ce                	mv	a1,s3
a0004fa2:	9c8fe0ef          	jal	ra,a000316a <__subdf3>
a0004fa6:	862a                	mv	a2,a0
a0004fa8:	86ae                	mv	a3,a1
a0004faa:	8a2a                	mv	s4,a0
a0004fac:	8aae                	mv	s5,a1
a0004fae:	c23fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004fb2:	892a                	mv	s2,a0
a0004fb4:	89ae                	mv	s3,a1
a0004fb6:	8652                	mv	a2,s4
a0004fb8:	86d6                	mv	a3,s5
a0004fba:	8552                	mv	a0,s4
a0004fbc:	85d6                	mv	a1,s5
a0004fbe:	ae1fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004fc2:	a00096b7          	lui	a3,0xa0009
a0004fc6:	9606a603          	lw	a2,-1696(a3) # a0008960 <__psram_limit+0xf7c08960>
a0004fca:	9646a683          	lw	a3,-1692(a3)
a0004fce:	c0aa                	sw	a0,64(sp)
a0004fd0:	c2ae                	sw	a1,68(sp)
a0004fd2:	854a                	mv	a0,s2
a0004fd4:	85ce                	mv	a1,s3
a0004fd6:	b72fd0ef          	jal	ra,a0002348 <__divdf3>
a0004fda:	968c2603          	lw	a2,-1688(s8) # a0008968 <__psram_limit+0xf7c08968>
a0004fde:	96cc2683          	lw	a3,-1684(s8)
a0004fe2:	abdfc0ef          	jal	ra,a0001a9e <__adddf3>
a0004fe6:	862a                	mv	a2,a0
a0004fe8:	86ae                	mv	a3,a1
a0004fea:	854a                	mv	a0,s2
a0004fec:	85ce                	mv	a1,s3
a0004fee:	b5afd0ef          	jal	ra,a0002348 <__divdf3>
a0004ff2:	a00096b7          	lui	a3,0xa0009
a0004ff6:	9706a603          	lw	a2,-1680(a3) # a0008970 <__psram_limit+0xf7c08970>
a0004ffa:	9746a683          	lw	a3,-1676(a3)
a0004ffe:	aa1fc0ef          	jal	ra,a0001a9e <__adddf3>
a0005002:	862a                	mv	a2,a0
a0005004:	86ae                	mv	a3,a1
a0005006:	854a                	mv	a0,s2
a0005008:	85ce                	mv	a1,s3
a000500a:	b3efd0ef          	jal	ra,a0002348 <__divdf3>
a000500e:	89ae                	mv	s3,a1
a0005010:	a00095b7          	lui	a1,0xa0009
a0005014:	892a                	mv	s2,a0
a0005016:	9785a503          	lw	a0,-1672(a1) # a0008978 <__psram_limit+0xf7c08978>
a000501a:	97c5a583          	lw	a1,-1668(a1)
a000501e:	8652                	mv	a2,s4
a0005020:	86d6                	mv	a3,s5
a0005022:	948fe0ef          	jal	ra,a000316a <__subdf3>
a0005026:	862a                	mv	a2,a0
a0005028:	86ae                	mv	a3,a1
a000502a:	854a                	mv	a0,s2
a000502c:	85ce                	mv	a1,s3
a000502e:	a71fc0ef          	jal	ra,a0001a9e <__adddf3>
a0005032:	4706                	lw	a4,64(sp)
a0005034:	4796                	lw	a5,68(sp)
a0005036:	862a                	mv	a2,a0
a0005038:	86ae                	mv	a3,a1
a000503a:	853a                	mv	a0,a4
a000503c:	85be                	mv	a1,a5
a000503e:	b0afd0ef          	jal	ra,a0002348 <__divdf3>
a0005042:	a00097b7          	lui	a5,0xa0009
a0005046:	9807a603          	lw	a2,-1664(a5) # a0008980 <__psram_limit+0xf7c08980>
a000504a:	9847a683          	lw	a3,-1660(a5)
a000504e:	a51fc0ef          	jal	ra,a0001a9e <__adddf3>
a0005052:	3ff00613          	li	a2,1023
a0005056:	4681                	li	a3,0
a0005058:	8766                	mv	a4,s9
a000505a:	41fcd793          	srai	a5,s9,0x1f
a000505e:	c0c71777          	add64	a4,a4,a2
a0005062:	4801                	li	a6,0
a0005064:	01471893          	slli	a7,a4,0x14
a0005068:	8642                	mv	a2,a6
a000506a:	86c6                	mv	a3,a7
a000506c:	b65fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0005070:	865e                	mv	a2,s7
a0005072:	86da                	mv	a3,s6
a0005074:	8a2a                	mv	s4,a0
a0005076:	8aae                	mv	s5,a1
a0005078:	9fdfd0ef          	jal	ra,a0002a74 <__gedf2>
a000507c:	00a05d63          	blez	a0,a0005096 <print_exponential_number+0x222>
a0005080:	968c2603          	lw	a2,-1688(s8)
a0005084:	96cc2683          	lw	a3,-1684(s8)
a0005088:	8552                	mv	a0,s4
a000508a:	85d6                	mv	a1,s5
a000508c:	abcfd0ef          	jal	ra,a0002348 <__divdf3>
a0005090:	147d                	addi	s0,s0,-1
a0005092:	8a2a                	mv	s4,a0
a0005094:	8aae                	mv	s5,a1
a0005096:	01140793          	addi	a5,s0,17
a000509a:	02200713          	li	a4,34
a000509e:	0237b913          	sltiu	s2,a5,35
a00050a2:	02f76263          	bltu	a4,a5,a00050c6 <print_exponential_number+0x252>
a00050a6:	41f45713          	srai	a4,s0,0x1f
a00050aa:	008747b3          	xor	a5,a4,s0
a00050ae:	40e78733          	sub	a4,a5,a4
a00050b2:	a00097b7          	lui	a5,0xa0009
a00050b6:	9a878793          	addi	a5,a5,-1624 # a00089a8 <__psram_limit+0xf7c089a8>
a00050ba:	06e7978b          	addsl	a5,a5,a4,3
a00050be:	0007aa03          	lw	s4,0(a5)
a00050c2:	0047aa83          	lw	s5,4(a5)
a00050c6:	2cbdb78b          	extu	a5,s11,11,11
a00050ca:	30078563          	beqz	a5,a00053d4 <print_exponential_number+0x560>
a00050ce:	5771                	li	a4,-4
a00050d0:	fff48793          	addi	a5,s1,-1
a00050d4:	4c01                	li	s8,0
a00050d6:	00e44963          	blt	s0,a4,a00050e8 <print_exponential_number+0x274>
a00050da:	e091                	bnez	s1,a00050de <print_exponential_number+0x26a>
a00050dc:	4485                	li	s1,1
a00050de:	4c01                	li	s8,0
a00050e0:	00945463          	bge	s0,s1,a00050e8 <print_exponential_number+0x274>
a00050e4:	8f81                	sub	a5,a5,s0
a00050e6:	4c05                	li	s8,1
a00050e8:	84be                	mv	s1,a5
a00050ea:	0007d363          	bgez	a5,a00050f0 <print_exponential_number+0x27c>
a00050ee:	4481                	li	s1,0
a00050f0:	400ded93          	ori	s11,s11,1024
a00050f4:	00045963          	bgez	s0,a0005106 <print_exponential_number+0x292>
a00050f8:	4c85                	li	s9,1
a00050fa:	00091363          	bnez	s2,a0005100 <print_exponential_number+0x28c>
a00050fe:	4c81                	li	s9,0
a0005100:	000c1763          	bnez	s8,a000510e <print_exponential_number+0x29a>
a0005104:	a08d                	j	a0005166 <print_exponential_number+0x2f2>
a0005106:	000c1463          	bnez	s8,a000510e <print_exponential_number+0x29a>
a000510a:	ec29                	bnez	s0,a0005164 <print_exponential_number+0x2f0>
a000510c:	4c01                	li	s8,0
a000510e:	57f2                	lw	a5,60(sp)
a0005110:	c789                	beqz	a5,a000511a <print_exponential_number+0x2a6>
a0005112:	800007b7          	lui	a5,0x80000
a0005116:	0167cb33          	xor	s6,a5,s6
a000511a:	86a6                	mv	a3,s1
a000511c:	85de                	mv	a1,s7
a000511e:	865a                	mv	a2,s6
a0005120:	18a8                	addi	a0,sp,120
a0005122:	975ff0ef          	jal	ra,a0004a96 <get_components>
a0005126:	08814783          	lbu	a5,136(sp)
a000512a:	4a0a                	lw	s4,128(sp)
a000512c:	4a9a                	lw	s5,132(sp)
a000512e:	de3e                	sw	a5,60(sp)
a0005130:	5966                	lw	s2,120(sp)
a0005132:	59f6                	lw	s3,124(sp)
a0005134:	180c1463          	bnez	s8,a00052bc <print_exponential_number+0x448>
a0005138:	01304763          	bgtz	s3,a0005146 <print_exponential_number+0x2d2>
a000513c:	00099a63          	bnez	s3,a0005150 <print_exponential_number+0x2dc>
a0005140:	47a5                	li	a5,9
a0005142:	0127f763          	bgeu	a5,s2,a0005150 <print_exponential_number+0x2dc>
a0005146:	0405                	addi	s0,s0,1
a0005148:	4a01                	li	s4,0
a000514a:	4a81                	li	s5,0
a000514c:	4905                	li	s2,1
a000514e:	4981                	li	s3,0
a0005150:	06340793          	addi	a5,s0,99
a0005154:	0c600713          	li	a4,198
a0005158:	4c01                	li	s8,0
a000515a:	4b95                	li	s7,5
a000515c:	18f76e63          	bltu	a4,a5,a00052f8 <print_exponential_number+0x484>
a0005160:	4b91                	li	s7,4
a0005162:	aa59                	j	a00052f8 <print_exponential_number+0x484>
a0005164:	4c81                	li	s9,0
a0005166:	d4d2                	sw	s4,104(sp)
a0005168:	d6d6                	sw	s5,108(sp)
a000516a:	07910823          	sb	s9,112(sp)
a000516e:	8652                	mv	a2,s4
a0005170:	86d6                	mv	a3,s5
a0005172:	855e                	mv	a0,s7
a0005174:	85da                	mv	a1,s6
a0005176:	0a0c8a63          	beqz	s9,a000522a <print_exponential_number+0x3b6>
a000517a:	a57fd0ef          	jal	ra,a0002bd0 <__muldf3>
a000517e:	a19fe0ef          	jal	ra,a0003b96 <__fixdfdi>
a0005182:	892a                	mv	s2,a0
a0005184:	89ae                	mv	s3,a1
a0005186:	b15fe0ef          	jal	ra,a0003c9a <__floatdidf>
a000518a:	862a                	mv	a2,a0
a000518c:	86ae                	mv	a3,a1
a000518e:	0a0c8163          	beqz	s9,a0005230 <print_exponential_number+0x3bc>
a0005192:	8652                	mv	a2,s4
a0005194:	86d6                	mv	a3,s5
a0005196:	9b2fd0ef          	jal	ra,a0002348 <__divdf3>
a000519a:	86ae                	mv	a3,a1
a000519c:	862a                	mv	a2,a0
a000519e:	85da                	mv	a1,s6
a00051a0:	855e                	mv	a0,s7
a00051a2:	fc9fd0ef          	jal	ra,a000316a <__subdf3>
a00051a6:	a00097b7          	lui	a5,0xa0009
a00051aa:	9a878793          	addi	a5,a5,-1624 # a00089a8 <__psram_limit+0xf7c089a8>
a00051ae:	0697978b          	addsl	a5,a5,s1,3
a00051b2:	0007ac03          	lw	s8,0(a5)
a00051b6:	0047ac83          	lw	s9,4(a5)
a00051ba:	8a2a                	mv	s4,a0
a00051bc:	8aae                	mv	s5,a1
a00051be:	4641                	li	a2,16
a00051c0:	10ac                	addi	a1,sp,104
a00051c2:	0888                	addi	a0,sp,80
a00051c4:	9beff0ef          	jal	ra,a0004382 <memcpy>
a00051c8:	8662                	mv	a2,s8
a00051ca:	86e6                	mv	a3,s9
a00051cc:	088c                	addi	a1,sp,80
a00051ce:	18a8                	addi	a0,sp,120
a00051d0:	312d                	jal	a0004dfa <update_normalization>
a00051d2:	08014783          	lbu	a5,128(sp)
a00051d6:	5666                	lw	a2,120(sp)
a00051d8:	56f6                	lw	a3,124(sp)
a00051da:	8552                	mv	a0,s4
a00051dc:	85d6                	mv	a1,s5
a00051de:	cfb1                	beqz	a5,a000523a <print_exponential_number+0x3c6>
a00051e0:	9f1fd0ef          	jal	ra,a0002bd0 <__muldf3>
a00051e4:	8a2a                	mv	s4,a0
a00051e6:	8aae                	mv	s5,a1
a00051e8:	a0009b37          	lui	s6,0xa0009
a00051ec:	e8b1                	bnez	s1,a0005240 <print_exponential_number+0x3cc>
a00051ee:	924b2b83          	lw	s7,-1756(s6) # a0008924 <__psram_limit+0xf7c08924>
a00051f2:	920b2b03          	lw	s6,-1760(s6)
a00051f6:	4c81                	li	s9,0
a00051f8:	86de                	mv	a3,s7
a00051fa:	865a                	mv	a2,s6
a00051fc:	879fd0ef          	jal	ra,a0002a74 <__gedf2>
a0005200:	41f55693          	srai	a3,a0,0x1f
a0005204:	fff6c613          	not	a2,a3
a0005208:	01f65c13          	srli	s8,a2,0x1f
a000520c:	86de                	mv	a3,s7
a000520e:	865a                	mv	a2,s6
a0005210:	8552                	mv	a0,s4
a0005212:	85d6                	mv	a1,s5
a0005214:	c1891977          	add64	s2,s2,s8
a0005218:	fb8fd0ef          	jal	ra,a00029d0 <__eqdf2>
a000521c:	e501                	bnez	a0,a0005224 <print_exponential_number+0x3b0>
a000521e:	ffe97713          	andi	a4,s2,-2
a0005222:	893a                	mv	s2,a4
a0005224:	4a01                	li	s4,0
a0005226:	4a81                	li	s5,0
a0005228:	bf01                	j	a0005138 <print_exponential_number+0x2c4>
a000522a:	91efd0ef          	jal	ra,a0002348 <__divdf3>
a000522e:	bf81                	j	a000517e <print_exponential_number+0x30a>
a0005230:	8552                	mv	a0,s4
a0005232:	85d6                	mv	a1,s5
a0005234:	99dfd0ef          	jal	ra,a0002bd0 <__muldf3>
a0005238:	b78d                	j	a000519a <print_exponential_number+0x326>
a000523a:	90efd0ef          	jal	ra,a0002348 <__divdf3>
a000523e:	b75d                	j	a00051e4 <print_exponential_number+0x370>
a0005240:	957fe0ef          	jal	ra,a0003b96 <__fixdfdi>
a0005244:	c4aa                	sw	a0,72(sp)
a0005246:	c6ae                	sw	a1,76(sp)
a0005248:	a53fe0ef          	jal	ra,a0003c9a <__floatdidf>
a000524c:	862a                	mv	a2,a0
a000524e:	86ae                	mv	a3,a1
a0005250:	8552                	mv	a0,s4
a0005252:	85d6                	mv	a1,s5
a0005254:	f17fd0ef          	jal	ra,a000316a <__subdf3>
a0005258:	924b2b83          	lw	s7,-1756(s6)
a000525c:	920b2b03          	lw	s6,-1760(s6)
a0005260:	c2ae                	sw	a1,68(sp)
a0005262:	86de                	mv	a3,s7
a0005264:	865a                	mv	a2,s6
a0005266:	c0aa                	sw	a0,64(sp)
a0005268:	80dfd0ef          	jal	ra,a0002a74 <__gedf2>
a000526c:	4706                	lw	a4,64(sp)
a000526e:	4796                	lw	a5,68(sp)
a0005270:	41f55693          	srai	a3,a0,0x1f
a0005274:	4826                	lw	a6,72(sp)
a0005276:	48b6                	lw	a7,76(sp)
a0005278:	fff6c613          	not	a2,a3
a000527c:	01f65a13          	srli	s4,a2,0x1f
a0005280:	4a81                	li	s5,0
a0005282:	865a                	mv	a2,s6
a0005284:	86de                	mv	a3,s7
a0005286:	853a                	mv	a0,a4
a0005288:	85be                	mv	a1,a5
a000528a:	c10a1a77          	add64	s4,s4,a6
a000528e:	f42fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0005292:	e501                	bnez	a0,a000529a <print_exponential_number+0x426>
a0005294:	ffea7713          	andi	a4,s4,-2
a0005298:	8a3a                	mv	s4,a4
a000529a:	8552                	mv	a0,s4
a000529c:	85d6                	mv	a1,s5
a000529e:	9fdfe0ef          	jal	ra,a0003c9a <__floatdidf>
a00052a2:	862a                	mv	a2,a0
a00052a4:	86ae                	mv	a3,a1
a00052a6:	8562                	mv	a0,s8
a00052a8:	85e6                	mv	a1,s9
a00052aa:	879fd0ef          	jal	ra,a0002b22 <__ledf2>
a00052ae:	e8a045e3          	bgtz	a0,a0005138 <print_exponential_number+0x2c4>
a00052b2:	4705                	li	a4,1
a00052b4:	4781                	li	a5,0
a00052b6:	c0e91977          	add64	s2,s2,a4
a00052ba:	b7ad                	j	a0005224 <print_exponential_number+0x3b0>
a00052bc:	6b85                	lui	s7,0x1
a00052be:	800b8b93          	addi	s7,s7,-2048 # 800 <__RFTLV_SIZE_HOLE>
a00052c2:	017dfbb3          	and	s7,s11,s7
a00052c6:	020b8963          	beqz	s7,a00052f8 <print_exponential_number+0x484>
a00052ca:	57fd                	li	a5,-1
a00052cc:	4b81                	li	s7,0
a00052ce:	02f44563          	blt	s0,a5,a00052f8 <print_exponential_number+0x484>
a00052d2:	854a                	mv	a0,s2
a00052d4:	85ce                	mv	a1,s3
a00052d6:	9c5fe0ef          	jal	ra,a0003c9a <__floatdidf>
a00052da:	a00097b7          	lui	a5,0xa0009
a00052de:	00140b13          	addi	s6,s0,1
a00052e2:	9a878793          	addi	a5,a5,-1624 # a00089a8 <__psram_limit+0xf7c089a8>
a00052e6:	0767978b          	addsl	a5,a5,s6,3
a00052ea:	4390                	lw	a2,0(a5)
a00052ec:	43d4                	lw	a3,4(a5)
a00052ee:	ee2fd0ef          	jal	ra,a00029d0 <__eqdf2>
a00052f2:	e119                	bnez	a0,a00052f8 <print_exponential_number+0x484>
a00052f4:	14fd                	addi	s1,s1,-1
a00052f6:	845a                	mv	s0,s6
a00052f8:	002dfb13          	andi	s6,s11,2
a00052fc:	000b0563          	beqz	s6,a0005306 <print_exponential_number+0x492>
a0005300:	4781                	li	a5,0
a0005302:	000b9863          	bnez	s7,a0005312 <print_exponential_number+0x49e>
a0005306:	5762                	lw	a4,56(sp)
a0005308:	4781                	li	a5,0
a000530a:	00ebf463          	bgeu	s7,a4,a0005312 <print_exponential_number+0x49e>
a000530e:	417707b3          	sub	a5,a4,s7
a0005312:	476e                	lw	a4,216(sp)
a0005314:	c43e                	sw	a5,8(sp)
a0005316:	57c2                	lw	a5,48(sp)
a0005318:	ca3a                	sw	a4,20(sp)
a000531a:	475e                	lw	a4,212(sp)
a000531c:	58d2                	lw	a7,52(sp)
a000531e:	5832                	lw	a6,44(sp)
a0005320:	c83a                	sw	a4,16(sp)
a0005322:	5772                	lw	a4,60(sp)
a0005324:	c03e                	sw	a5,0(sp)
a0005326:	8652                	mv	a2,s4
a0005328:	c66e                	sw	s11,12(sp)
a000532a:	c226                	sw	s1,4(sp)
a000532c:	87ea                	mv	a5,s10
a000532e:	86d6                	mv	a3,s5
a0005330:	854a                	mv	a0,s2
a0005332:	85ce                	mv	a1,s3
a0005334:	8f5ff0ef          	jal	ra,a0004c28 <print_broken_up_decimal.isra.0>
a0005338:	862a                	mv	a2,a0
a000533a:	040c1f63          	bnez	s8,a0005398 <print_exponential_number+0x524>
a000533e:	020dfd93          	andi	s11,s11,32
a0005342:	04500513          	li	a0,69
a0005346:	000d9463          	bnez	s11,a000534e <print_exponential_number+0x4da>
a000534a:	06500513          	li	a0,101
a000534e:	55b2                	lw	a1,44(sp)
a0005350:	56c2                	lw	a3,48(sp)
a0005352:	00160493          	addi	s1,a2,1
a0005356:	9d02                	jalr	s10
a0005358:	41f45593          	srai	a1,s0,0x1f
a000535c:	04805e63          	blez	s0,a00053b8 <print_exponential_number+0x544>
a0005360:	8722                	mv	a4,s0
a0005362:	87ae                	mv	a5,a1
a0005364:	4695                	li	a3,5
a0005366:	c436                	sw	a3,8(sp)
a0005368:	55b2                	lw	a1,44(sp)
a000536a:	56c2                	lw	a3,48(sp)
a000536c:	1bfd                	addi	s7,s7,-1
a000536e:	8626                	mv	a2,s1
a0005370:	c25e                	sw	s7,4(sp)
a0005372:	c002                	sw	zero,0(sp)
a0005374:	48a9                	li	a7,10
a0005376:	01f45813          	srli	a6,s0,0x1f
a000537a:	856a                	mv	a0,s10
a000537c:	d0eff0ef          	jal	ra,a000488a <print_integer>
a0005380:	862a                	mv	a2,a0
a0005382:	000b0b63          	beqz	s6,a0005398 <print_exponential_number+0x524>
a0005386:	57d2                	lw	a5,52(sp)
a0005388:	40f50433          	sub	s0,a0,a5
a000538c:	57d2                	lw	a5,52(sp)
a000538e:	00878633          	add	a2,a5,s0
a0005392:	57e2                	lw	a5,56(sp)
a0005394:	02f46963          	bltu	s0,a5,a00053c6 <print_exponential_number+0x552>
a0005398:	40be                	lw	ra,204(sp)
a000539a:	442e                	lw	s0,200(sp)
a000539c:	449e                	lw	s1,196(sp)
a000539e:	490e                	lw	s2,192(sp)
a00053a0:	59fa                	lw	s3,188(sp)
a00053a2:	5a6a                	lw	s4,184(sp)
a00053a4:	5ada                	lw	s5,180(sp)
a00053a6:	5b4a                	lw	s6,176(sp)
a00053a8:	5bba                	lw	s7,172(sp)
a00053aa:	5c2a                	lw	s8,168(sp)
a00053ac:	5c9a                	lw	s9,164(sp)
a00053ae:	5d0a                	lw	s10,160(sp)
a00053b0:	4dfa                	lw	s11,156(sp)
a00053b2:	8532                	mv	a0,a2
a00053b4:	6169                	addi	sp,sp,208
a00053b6:	8082                	ret
a00053b8:	8622                	mv	a2,s0
a00053ba:	86ae                	mv	a3,a1
a00053bc:	4701                	li	a4,0
a00053be:	4781                	li	a5,0
a00053c0:	c2c71777          	sub64	a4,a4,a2
a00053c4:	b745                	j	a0005364 <print_exponential_number+0x4f0>
a00053c6:	56c2                	lw	a3,48(sp)
a00053c8:	55b2                	lw	a1,44(sp)
a00053ca:	02000513          	li	a0,32
a00053ce:	0405                	addi	s0,s0,1
a00053d0:	9d02                	jalr	s10
a00053d2:	bf6d                	j	a000538c <print_exponential_number+0x518>
a00053d4:	d2045be3          	bgez	s0,a000510a <print_exponential_number+0x296>
a00053d8:	4c85                	li	s9,1
a00053da:	4c01                	li	s8,0
a00053dc:	d80915e3          	bnez	s2,a0005166 <print_exponential_number+0x2f2>
a00053e0:	bb39                	j	a00050fe <print_exponential_number+0x28a>

a00053e2 <print_floating_point>:
a00053e2:	7135                	addi	sp,sp,-160
a00053e4:	c552                	sw	s4,136(sp)
a00053e6:	c356                	sw	s5,132(sp)
a00053e8:	c15a                	sw	s6,128(sp)
a00053ea:	dede                	sw	s7,124(sp)
a00053ec:	8a2a                	mv	s4,a0
a00053ee:	8aae                	mv	s5,a1
a00053f0:	8b32                	mv	s6,a2
a00053f2:	8bb6                	mv	s7,a3
a00053f4:	863a                	mv	a2,a4
a00053f6:	86be                	mv	a3,a5
a00053f8:	853a                	mv	a0,a4
a00053fa:	85be                	mv	a1,a5
a00053fc:	cd22                	sw	s0,152(sp)
a00053fe:	cb26                	sw	s1,148(sp)
a0005400:	c94a                	sw	s2,144(sp)
a0005402:	c74e                	sw	s3,140(sp)
a0005404:	dce2                	sw	s8,120(sp)
a0005406:	d6ee                	sw	s11,108(sp)
a0005408:	cf06                	sw	ra,156(sp)
a000540a:	dae6                	sw	s9,116(sp)
a000540c:	d8ea                	sw	s10,112(sp)
a000540e:	598a                	lw	s3,160(sp)
a0005410:	0a414d83          	lbu	s11,164(sp)
a0005414:	843a                	mv	s0,a4
a0005416:	84be                	mv	s1,a5
a0005418:	8942                	mv	s2,a6
a000541a:	8c46                	mv	s8,a7
a000541c:	db4fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0005420:	cd05                	beqz	a0,a0005458 <print_floating_point+0x76>
a0005422:	a0009737          	lui	a4,0xa0009
a0005426:	88ce                	mv	a7,s3
a0005428:	8862                	mv	a6,s8
a000542a:	478d                	li	a5,3
a000542c:	90470713          	addi	a4,a4,-1788 # a0008904 <__psram_limit+0xf7c08904>
a0005430:	446a                	lw	s0,152(sp)
a0005432:	40fa                	lw	ra,156(sp)
a0005434:	44da                	lw	s1,148(sp)
a0005436:	494a                	lw	s2,144(sp)
a0005438:	49ba                	lw	s3,140(sp)
a000543a:	5c66                	lw	s8,120(sp)
a000543c:	5cd6                	lw	s9,116(sp)
a000543e:	5d46                	lw	s10,112(sp)
a0005440:	5db6                	lw	s11,108(sp)
a0005442:	86de                	mv	a3,s7
a0005444:	865a                	mv	a2,s6
a0005446:	5bf6                	lw	s7,124(sp)
a0005448:	4b0a                	lw	s6,128(sp)
a000544a:	85d6                	mv	a1,s5
a000544c:	8552                	mv	a0,s4
a000544e:	4a9a                	lw	s5,132(sp)
a0005450:	4a2a                	lw	s4,136(sp)
a0005452:	610d                	addi	sp,sp,160
a0005454:	b88ff06f          	j	a00047dc <out_rev_>
a0005458:	a00097b7          	lui	a5,0xa0009
a000545c:	9887a603          	lw	a2,-1656(a5) # a0008988 <__psram_limit+0xf7c08988>
a0005460:	98c7a683          	lw	a3,-1652(a5)
a0005464:	8522                	mv	a0,s0
a0005466:	85a6                	mv	a1,s1
a0005468:	ebafd0ef          	jal	ra,a0002b22 <__ledf2>
a000546c:	00055a63          	bgez	a0,a0005480 <print_floating_point+0x9e>
a0005470:	a0009737          	lui	a4,0xa0009
a0005474:	88ce                	mv	a7,s3
a0005476:	8862                	mv	a6,s8
a0005478:	4791                	li	a5,4
a000547a:	90870713          	addi	a4,a4,-1784 # a0008908 <__psram_limit+0xf7c08908>
a000547e:	bf4d                	j	a0005430 <print_floating_point+0x4e>
a0005480:	a00097b7          	lui	a5,0xa0009
a0005484:	9907a603          	lw	a2,-1648(a5) # a0008990 <__psram_limit+0xf7c08990>
a0005488:	9947a683          	lw	a3,-1644(a5)
a000548c:	8522                	mv	a0,s0
a000548e:	85a6                	mv	a1,s1
a0005490:	de4fd0ef          	jal	ra,a0002a74 <__gedf2>
a0005494:	02a05363          	blez	a0,a00054ba <print_floating_point+0xd8>
a0005498:	0049f793          	andi	a5,s3,4
a000549c:	cb89                	beqz	a5,a00054ae <print_floating_point+0xcc>
a000549e:	a0009737          	lui	a4,0xa0009
a00054a2:	8fc70713          	addi	a4,a4,-1796 # a00088fc <__psram_limit+0xf7c088fc>
a00054a6:	4791                	li	a5,4
a00054a8:	88ce                	mv	a7,s3
a00054aa:	8862                	mv	a6,s8
a00054ac:	b751                	j	a0005430 <print_floating_point+0x4e>
a00054ae:	a0009737          	lui	a4,0xa0009
a00054b2:	8f870713          	addi	a4,a4,-1800 # a00088f8 <__psram_limit+0xf7c088f8>
a00054b6:	478d                	li	a5,3
a00054b8:	bfc5                	j	a00054a8 <print_floating_point+0xc6>
a00054ba:	04010d13          	addi	s10,sp,64
a00054be:	060d9663          	bnez	s11,a000552a <print_floating_point+0x148>
a00054c2:	a00097b7          	lui	a5,0xa0009
a00054c6:	9987a603          	lw	a2,-1640(a5) # a0008998 <__psram_limit+0xf7c08998>
a00054ca:	99c7a683          	lw	a3,-1636(a5)
a00054ce:	8522                	mv	a0,s0
a00054d0:	85a6                	mv	a1,s1
a00054d2:	da2fd0ef          	jal	ra,a0002a74 <__gedf2>
a00054d6:	00a04e63          	bgtz	a0,a00054f2 <print_floating_point+0x110>
a00054da:	a00097b7          	lui	a5,0xa0009
a00054de:	9a07a603          	lw	a2,-1632(a5) # a00089a0 <__psram_limit+0xf7c089a0>
a00054e2:	9a47a683          	lw	a3,-1628(a5)
a00054e6:	8522                	mv	a0,s0
a00054e8:	85a6                	mv	a1,s1
a00054ea:	e38fd0ef          	jal	ra,a0002b22 <__ledf2>
a00054ee:	02055e63          	bgez	a0,a000552a <print_floating_point+0x148>
a00054f2:	c402                	sw	zero,8(sp)
a00054f4:	c26a                	sw	s10,4(sp)
a00054f6:	c04e                	sw	s3,0(sp)
a00054f8:	88e2                	mv	a7,s8
a00054fa:	884a                	mv	a6,s2
a00054fc:	8722                	mv	a4,s0
a00054fe:	87a6                	mv	a5,s1
a0005500:	86de                	mv	a3,s7
a0005502:	865a                	mv	a2,s6
a0005504:	85d6                	mv	a1,s5
a0005506:	8552                	mv	a0,s4
a0005508:	96dff0ef          	jal	ra,a0004e74 <print_exponential_number>
a000550c:	40fa                	lw	ra,156(sp)
a000550e:	446a                	lw	s0,152(sp)
a0005510:	44da                	lw	s1,148(sp)
a0005512:	494a                	lw	s2,144(sp)
a0005514:	49ba                	lw	s3,140(sp)
a0005516:	4a2a                	lw	s4,136(sp)
a0005518:	4a9a                	lw	s5,132(sp)
a000551a:	4b0a                	lw	s6,128(sp)
a000551c:	5bf6                	lw	s7,124(sp)
a000551e:	5c66                	lw	s8,120(sp)
a0005520:	5cd6                	lw	s9,116(sp)
a0005522:	5d46                	lw	s10,112(sp)
a0005524:	5db6                	lw	s11,108(sp)
a0005526:	610d                	addi	sp,sp,160
a0005528:	8082                	ret
a000552a:	4009f793          	andi	a5,s3,1024
a000552e:	c39d                	beqz	a5,a0005554 <print_floating_point+0x172>
a0005530:	4c81                	li	s9,0
a0005532:	47c5                	li	a5,17
a0005534:	03000713          	li	a4,48
a0005538:	02000693          	li	a3,32
a000553c:	0127f863          	bgeu	a5,s2,a000554c <print_floating_point+0x16a>
a0005540:	019d570b          	srb	a4,s10,s9,0
a0005544:	0c85                	addi	s9,s9,1
a0005546:	197d                	addi	s2,s2,-1
a0005548:	fedc9ae3          	bne	s9,a3,a000553c <print_floating_point+0x15a>
a000554c:	000d8663          	beqz	s11,a0005558 <print_floating_point+0x176>
a0005550:	c466                	sw	s9,8(sp)
a0005552:	b74d                	j	a00054f4 <print_floating_point+0x112>
a0005554:	4919                	li	s2,6
a0005556:	bfe9                	j	a0005530 <print_floating_point+0x14e>
a0005558:	86ca                	mv	a3,s2
a000555a:	85a2                	mv	a1,s0
a000555c:	8626                	mv	a2,s1
a000555e:	1028                	addi	a0,sp,40
a0005560:	d36ff0ef          	jal	ra,a0004a96 <get_components>
a0005564:	03814703          	lbu	a4,56(sp)
a0005568:	5642                	lw	a2,48(sp)
a000556a:	56d2                	lw	a3,52(sp)
a000556c:	5522                	lw	a0,40(sp)
a000556e:	55b2                	lw	a1,44(sp)
a0005570:	ca66                	sw	s9,20(sp)
a0005572:	c86a                	sw	s10,16(sp)
a0005574:	c64e                	sw	s3,12(sp)
a0005576:	c462                	sw	s8,8(sp)
a0005578:	c24a                	sw	s2,4(sp)
a000557a:	c05e                	sw	s7,0(sp)
a000557c:	88da                	mv	a7,s6
a000557e:	8856                	mv	a6,s5
a0005580:	87d2                	mv	a5,s4
a0005582:	ea6ff0ef          	jal	ra,a0004c28 <print_broken_up_decimal.isra.0>
a0005586:	b759                	j	a000550c <print_floating_point+0x12a>

a0005588 <__vsnprintf>:
a0005588:	7175                	addi	sp,sp,-144
a000558a:	c326                	sw	s1,132(sp)
a000558c:	d6de                	sw	s7,108(sp)
a000558e:	d4e2                	sw	s8,104(sp)
a0005590:	d2e6                	sw	s9,100(sp)
a0005592:	d0ea                	sw	s10,96(sp)
a0005594:	c706                	sw	ra,140(sp)
a0005596:	c522                	sw	s0,136(sp)
a0005598:	c14a                	sw	s2,128(sp)
a000559a:	dece                	sw	s3,124(sp)
a000559c:	dcd2                	sw	s4,120(sp)
a000559e:	dad6                	sw	s5,116(sp)
a00055a0:	d8da                	sw	s6,112(sp)
a00055a2:	ceee                	sw	s11,92(sp)
a00055a4:	8c2a                	mv	s8,a0
a00055a6:	8bae                	mv	s7,a1
a00055a8:	8d32                	mv	s10,a2
a00055aa:	8cb6                	mv	s9,a3
a00055ac:	84ba                	mv	s1,a4
a00055ae:	e999                	bnez	a1,a00055c4 <__vsnprintf+0x3c>
a00055b0:	a00057b7          	lui	a5,0xa0005
a00055b4:	c1678793          	addi	a5,a5,-1002 # a0004c16 <__psram_limit+0xf7c04c16>
a00055b8:	00f50663          	beq	a0,a5,a00055c4 <__vsnprintf+0x3c>
a00055bc:	a0004c37          	lui	s8,0xa0004
a00055c0:	7dac0c13          	addi	s8,s8,2010 # a00047da <__psram_limit+0xf7c047da>
a00055c4:	67c1                	lui	a5,0x10
a00055c6:	17fd                	addi	a5,a5,-1
a00055c8:	dc3e                	sw	a5,56(sp)
a00055ca:	67a5                	lui	a5,0x9
a00055cc:	04178793          	addi	a5,a5,65 # 9041 <wifi_ram_max_size+0x1041>
a00055d0:	4301                	li	t1,0
a00055d2:	de3e                	sw	a5,60(sp)
a00055d4:	ae29                	j	a00058ee <__vsnprintf+0x366>
a00055d6:	02500793          	li	a5,37
a00055da:	0c85                	addi	s9,s9,1
a00055dc:	00f50863          	beq	a0,a5,a00055ec <__vsnprintf+0x64>
a00055e0:	00130413          	addi	s0,t1,1
a00055e4:	86ea                	mv	a3,s10
a00055e6:	861a                	mv	a2,t1
a00055e8:	85de                	mv	a1,s7
a00055ea:	a3d5                	j	a0005bce <__vsnprintf+0x646>
a00055ec:	4401                	li	s0,0
a00055ee:	02b00793          	li	a5,43
a00055f2:	02d00613          	li	a2,45
a00055f6:	03000513          	li	a0,48
a00055fa:	02000813          	li	a6,32
a00055fe:	02300893          	li	a7,35
a0005602:	a801                	j	a0005612 <__vsnprintf+0x8a>
a0005604:	02c70d63          	beq	a4,a2,a000563e <__vsnprintf+0xb6>
a0005608:	02a71063          	bne	a4,a0,a0005628 <__vsnprintf+0xa0>
a000560c:	00146413          	ori	s0,s0,1
a0005610:	8cb6                	mv	s9,a3
a0005612:	86e6                	mv	a3,s9
a0005614:	9816c70b          	lbuia	a4,(a3),1,0
a0005618:	02f70663          	beq	a4,a5,a0005644 <__vsnprintf+0xbc>
a000561c:	fee7e4e3          	bltu	a5,a4,a0005604 <__vsnprintf+0x7c>
a0005620:	03070563          	beq	a4,a6,a000564a <__vsnprintf+0xc2>
a0005624:	03170663          	beq	a4,a7,a0005650 <__vsnprintf+0xc8>
a0005628:	fd070793          	addi	a5,a4,-48
a000562c:	0ff7f793          	zext.b	a5,a5
a0005630:	4625                	li	a2,9
a0005632:	06f66763          	bltu	a2,a5,a00056a0 <__vsnprintf+0x118>
a0005636:	4b01                	li	s6,0
a0005638:	4525                	li	a0,9
a000563a:	4829                	li	a6,10
a000563c:	a015                	j	a0005660 <__vsnprintf+0xd8>
a000563e:	00246413          	ori	s0,s0,2
a0005642:	b7f9                	j	a0005610 <__vsnprintf+0x88>
a0005644:	00446413          	ori	s0,s0,4
a0005648:	b7e1                	j	a0005610 <__vsnprintf+0x88>
a000564a:	00846413          	ori	s0,s0,8
a000564e:	b7c9                	j	a0005610 <__vsnprintf+0x88>
a0005650:	01046413          	ori	s0,s0,16
a0005654:	bf75                	j	a0005610 <__vsnprintf+0x88>
a0005656:	210b170b          	mula	a4,s6,a6
a000565a:	8cb2                	mv	s9,a2
a000565c:	fd070b13          	addi	s6,a4,-48
a0005660:	8666                	mv	a2,s9
a0005662:	9816470b          	lbuia	a4,(a2),1,0
a0005666:	fd070693          	addi	a3,a4,-48
a000566a:	0ff6f693          	zext.b	a3,a3
a000566e:	fed574e3          	bgeu	a0,a3,a0005656 <__vsnprintf+0xce>
a0005672:	000cc683          	lbu	a3,0(s9)
a0005676:	02e00713          	li	a4,46
a000567a:	10e69563          	bne	a3,a4,a0005784 <__vsnprintf+0x1fc>
a000567e:	001cc603          	lbu	a2,1(s9)
a0005682:	4525                	li	a0,9
a0005684:	001c8713          	addi	a4,s9,1
a0005688:	fd060693          	addi	a3,a2,-48
a000568c:	0ff6f693          	zext.b	a3,a3
a0005690:	40046413          	ori	s0,s0,1024
a0005694:	0cd56b63          	bltu	a0,a3,a000576a <__vsnprintf+0x1e2>
a0005698:	4801                	li	a6,0
a000569a:	48a5                	li	a7,9
a000569c:	4e29                	li	t3,10
a000569e:	a02d                	j	a00056c8 <__vsnprintf+0x140>
a00056a0:	02a00613          	li	a2,42
a00056a4:	4b01                	li	s6,0
a00056a6:	fcc716e3          	bne	a4,a2,a0005672 <__vsnprintf+0xea>
a00056aa:	5844cb0b          	lwia	s6,(s1),4,0
a00056ae:	000b5663          	bgez	s6,a00056ba <__vsnprintf+0x132>
a00056b2:	00246413          	ori	s0,s0,2
a00056b6:	41600b33          	neg	s6,s6
a00056ba:	8cb6                	mv	s9,a3
a00056bc:	bf5d                	j	a0005672 <__vsnprintf+0xea>
a00056be:	21c8168b          	mula	a3,a6,t3
a00056c2:	872a                	mv	a4,a0
a00056c4:	fd068813          	addi	a6,a3,-48
a00056c8:	853a                	mv	a0,a4
a00056ca:	9815468b          	lbuia	a3,(a0),1,0
a00056ce:	fd068613          	addi	a2,a3,-48
a00056d2:	0ff67613          	zext.b	a2,a2
a00056d6:	fec8f4e3          	bgeu	a7,a2,a00056be <__vsnprintf+0x136>
a00056da:	8cba                	mv	s9,a4
a00056dc:	981cc68b          	lbuia	a3,(s9),1,0
a00056e0:	06c00613          	li	a2,108
a00056e4:	0ac68e63          	beq	a3,a2,a00057a0 <__vsnprintf+0x218>
a00056e8:	0ad66163          	bltu	a2,a3,a000578a <__vsnprintf+0x202>
a00056ec:	06800613          	li	a2,104
a00056f0:	0cc68163          	beq	a3,a2,a00057b2 <__vsnprintf+0x22a>
a00056f4:	06a00613          	li	a2,106
a00056f8:	0cc68763          	beq	a3,a2,a00057c6 <__vsnprintf+0x23e>
a00056fc:	8cba                	mv	s9,a4
a00056fe:	981cc50b          	lbuia	a0,(s9),1,0
a0005702:	06500713          	li	a4,101
a0005706:	02e50263          	beq	a0,a4,a000572a <__vsnprintf+0x1a2>
a000570a:	12a76663          	bltu	a4,a0,a0005836 <__vsnprintf+0x2ae>
a000570e:	04600713          	li	a4,70
a0005712:	2ee50963          	beq	a0,a4,a0005a04 <__vsnprintf+0x47c>
a0005716:	0ea76c63          	bltu	a4,a0,a000580e <__vsnprintf+0x286>
a000571a:	02500713          	li	a4,37
a000571e:	4ae50163          	beq	a0,a4,a0005bc0 <__vsnprintf+0x638>
a0005722:	04500713          	li	a4,69
a0005726:	eae51de3          	bne	a0,a4,a00055e0 <__vsnprintf+0x58>
a000572a:	0df57713          	andi	a4,a0,223
a000572e:	04700693          	li	a3,71
a0005732:	00d71863          	bne	a4,a3,a0005742 <__vsnprintf+0x1ba>
a0005736:	6785                	lui	a5,0x1
a0005738:	80078793          	addi	a5,a5,-2048 # 800 <__RFTLV_SIZE_HOLE>
a000573c:	8c5d                	or	s0,s0,a5
a000573e:	0fd57513          	andi	a0,a0,253
a0005742:	04500713          	li	a4,69
a0005746:	00e51463          	bne	a0,a4,a000574e <__vsnprintf+0x1c6>
a000574a:	02046413          	ori	s0,s0,32
a000574e:	049d                	addi	s1,s1,7
a0005750:	ff84f713          	andi	a4,s1,-8
a0005754:	4310                	lw	a2,0(a4)
a0005756:	4354                	lw	a3,4(a4)
a0005758:	00870493          	addi	s1,a4,8
a000575c:	4705                	li	a4,1
a000575e:	c23a                	sw	a4,4(sp)
a0005760:	c022                	sw	s0,0(sp)
a0005762:	88da                	mv	a7,s6
a0005764:	8732                	mv	a4,a2
a0005766:	87b6                	mv	a5,a3
a0005768:	ac55                	j	a0005a1c <__vsnprintf+0x494>
a000576a:	02a00693          	li	a3,42
a000576e:	4801                	li	a6,0
a0005770:	f6d615e3          	bne	a2,a3,a00056da <__vsnprintf+0x152>
a0005774:	5844c80b          	lwia	a6,(s1),4,0
a0005778:	00085363          	bgez	a6,a000577e <__vsnprintf+0x1f6>
a000577c:	4801                	li	a6,0
a000577e:	002c8713          	addi	a4,s9,2
a0005782:	bfa1                	j	a00056da <__vsnprintf+0x152>
a0005784:	8766                	mv	a4,s9
a0005786:	4801                	li	a6,0
a0005788:	bf89                	j	a00056da <__vsnprintf+0x152>
a000578a:	07400613          	li	a2,116
a000578e:	00c68663          	beq	a3,a2,a000579a <__vsnprintf+0x212>
a0005792:	07a00613          	li	a2,122
a0005796:	f6c693e3          	bne	a3,a2,a00056fc <__vsnprintf+0x174>
a000579a:	10046413          	ori	s0,s0,256
a000579e:	b785                	j	a00056fe <__vsnprintf+0x176>
a00057a0:	00174603          	lbu	a2,1(a4)
a00057a4:	fed61be3          	bne	a2,a3,a000579a <__vsnprintf+0x212>
a00057a8:	30046413          	ori	s0,s0,768
a00057ac:	00270c93          	addi	s9,a4,2
a00057b0:	b7b9                	j	a00056fe <__vsnprintf+0x176>
a00057b2:	00174603          	lbu	a2,1(a4)
a00057b6:	00d60563          	beq	a2,a3,a00057c0 <__vsnprintf+0x238>
a00057ba:	08046413          	ori	s0,s0,128
a00057be:	b781                	j	a00056fe <__vsnprintf+0x176>
a00057c0:	0c046413          	ori	s0,s0,192
a00057c4:	b7e5                	j	a00057ac <__vsnprintf+0x224>
a00057c6:	20046413          	ori	s0,s0,512
a00057ca:	bf15                	j	a00056fe <__vsnprintf+0x176>
a00057cc:	57f2                	lw	a5,60(sp)
a00057ce:	4685                	li	a3,1
a00057d0:	f9750713          	addi	a4,a0,-105
a00057d4:	00e69733          	sll	a4,a3,a4
a00057d8:	00f776b3          	and	a3,a4,a5
a00057dc:	eea5                	bnez	a3,a0005854 <__vsnprintf+0x2cc>
a00057de:	40077693          	andi	a3,a4,1024
a00057e2:	2c069063          	bnez	a3,a0005aa2 <__vsnprintf+0x51a>
a00057e6:	08077713          	andi	a4,a4,128
a00057ea:	de070be3          	beqz	a4,a00055e0 <__vsnprintf+0x58>
a00057ee:	5844c70b          	lwia	a4,(s1),4,0
a00057f2:	6785                	lui	a5,0x1
a00057f4:	00178893          	addi	a7,a5,1 # 1001 <HeapMinSize+0x1>
a00057f8:	011468b3          	or	a7,s0,a7
a00057fc:	3a071463          	bnez	a4,a0005ba4 <__vsnprintf+0x61c>
a0005800:	a0009737          	lui	a4,0xa0009
a0005804:	4829                	li	a6,10
a0005806:	4795                	li	a5,5
a0005808:	91870713          	addi	a4,a4,-1768 # a0008918 <__psram_limit+0xf7c08918>
a000580c:	a475                	j	a0005ab8 <__vsnprintf+0x530>
a000580e:	06300713          	li	a4,99
a0005812:	20e50d63          	beq	a0,a4,a0005a2c <__vsnprintf+0x4a4>
a0005816:	06400713          	li	a4,100
a000581a:	02e50d63          	beq	a0,a4,a0005854 <__vsnprintf+0x2cc>
a000581e:	05800713          	li	a4,88
a0005822:	3ae50963          	beq	a0,a4,a0005bd4 <__vsnprintf+0x64c>
a0005826:	06200713          	li	a4,98
a000582a:	4889                	li	a7,2
a000582c:	04e50b63          	beq	a0,a4,a0005882 <__vsnprintf+0x2fa>
a0005830:	04700713          	li	a4,71
a0005834:	bdcd                	j	a0005726 <__vsnprintf+0x19e>
a0005836:	07800713          	li	a4,120
a000583a:	daa763e3          	bltu	a4,a0,a00055e0 <__vsnprintf+0x58>
a000583e:	06800713          	li	a4,104
a0005842:	f8a765e3          	bltu	a4,a0,a00057cc <__vsnprintf+0x244>
a0005846:	06600713          	li	a4,102
a000584a:	1ae50f63          	beq	a0,a4,a0005a08 <__vsnprintf+0x480>
a000584e:	06700713          	li	a4,103
a0005852:	bdd1                	j	a0005726 <__vsnprintf+0x19e>
a0005854:	07800713          	li	a4,120
a0005858:	48c1                	li	a7,16
a000585a:	02e50863          	beq	a0,a4,a000588a <__vsnprintf+0x302>
a000585e:	05800713          	li	a4,88
a0005862:	36e50963          	beq	a0,a4,a0005bd4 <__vsnprintf+0x64c>
a0005866:	06f00713          	li	a4,111
a000586a:	36e50963          	beq	a0,a4,a0005bdc <__vsnprintf+0x654>
a000586e:	06200713          	li	a4,98
a0005872:	36e50763          	beq	a0,a4,a0005be0 <__vsnprintf+0x658>
a0005876:	06900713          	li	a4,105
a000587a:	983d                	andi	s0,s0,-17
a000587c:	48a9                	li	a7,10
a000587e:	00e50763          	beq	a0,a4,a000588c <__vsnprintf+0x304>
a0005882:	06400713          	li	a4,100
a0005886:	00e50363          	beq	a0,a4,a000588c <__vsnprintf+0x304>
a000588a:	984d                	andi	s0,s0,-13
a000588c:	40047713          	andi	a4,s0,1024
a0005890:	c311                	beqz	a4,a0005894 <__vsnprintf+0x30c>
a0005892:	9879                	andi	s0,s0,-2
a0005894:	06900693          	li	a3,105
a0005898:	20047713          	andi	a4,s0,512
a000589c:	00d50663          	beq	a0,a3,a00058a8 <__vsnprintf+0x320>
a00058a0:	06400693          	li	a3,100
a00058a4:	10d51b63          	bne	a0,a3,a00059ba <__vsnprintf+0x432>
a00058a8:	cb41                	beqz	a4,a0005938 <__vsnprintf+0x3b0>
a00058aa:	049d                	addi	s1,s1,7
a00058ac:	98e1                	andi	s1,s1,-8
a00058ae:	40d8                	lw	a4,4(s1)
a00058b0:	8da6                	mv	s11,s1
a00058b2:	588dc68b          	lwia	a3,(s11),8,0
a00058b6:	41f75793          	srai	a5,a4,0x1f
a00058ba:	ca3e                	sw	a5,20(sp)
a00058bc:	c83e                	sw	a5,16(sp)
a00058be:	8fb5                	xor	a5,a5,a3
a00058c0:	d03e                	sw	a5,32(sp)
a00058c2:	47d2                	lw	a5,20(sp)
a00058c4:	4642                	lw	a2,16(sp)
a00058c6:	46d2                	lw	a3,20(sp)
a00058c8:	8fb9                	xor	a5,a5,a4
a00058ca:	d23e                	sw	a5,36(sp)
a00058cc:	5792                	lw	a5,36(sp)
a00058ce:	c042                	sw	a6,0(sp)
a00058d0:	01f75813          	srli	a6,a4,0x1f
a00058d4:	5702                	lw	a4,32(sp)
a00058d6:	c422                	sw	s0,8(sp)
a00058d8:	c25a                	sw	s6,4(sp)
a00058da:	c2c71777          	sub64	a4,a4,a2
a00058de:	861a                	mv	a2,t1
a00058e0:	86ea                	mv	a3,s10
a00058e2:	85de                	mv	a1,s7
a00058e4:	8562                	mv	a0,s8
a00058e6:	fa5fe0ef          	jal	ra,a000488a <print_integer>
a00058ea:	832a                	mv	t1,a0
a00058ec:	84ee                	mv	s1,s11
a00058ee:	000cc503          	lbu	a0,0(s9)
a00058f2:	ce0512e3          	bnez	a0,a00055d6 <__vsnprintf+0x4e>
a00058f6:	a00057b7          	lui	a5,0xa0005
a00058fa:	c1678793          	addi	a5,a5,-1002 # a0004c16 <__psram_limit+0xf7c04c16>
a00058fe:	00fc0d63          	beq	s8,a5,a0005918 <__vsnprintf+0x390>
a0005902:	861a                	mv	a2,t1
a0005904:	01a36463          	bltu	t1,s10,a000590c <__vsnprintf+0x384>
a0005908:	fffd0613          	addi	a2,s10,-1
a000590c:	c81a                	sw	t1,16(sp)
a000590e:	86ea                	mv	a3,s10
a0005910:	85de                	mv	a1,s7
a0005912:	4501                	li	a0,0
a0005914:	9c02                	jalr	s8
a0005916:	4342                	lw	t1,16(sp)
a0005918:	40ba                	lw	ra,140(sp)
a000591a:	442a                	lw	s0,136(sp)
a000591c:	449a                	lw	s1,132(sp)
a000591e:	490a                	lw	s2,128(sp)
a0005920:	59f6                	lw	s3,124(sp)
a0005922:	5a66                	lw	s4,120(sp)
a0005924:	5ad6                	lw	s5,116(sp)
a0005926:	5b46                	lw	s6,112(sp)
a0005928:	5bb6                	lw	s7,108(sp)
a000592a:	5c26                	lw	s8,104(sp)
a000592c:	5c96                	lw	s9,100(sp)
a000592e:	5d06                	lw	s10,96(sp)
a0005930:	4df6                	lw	s11,92(sp)
a0005932:	851a                	mv	a0,t1
a0005934:	6149                	addi	sp,sp,144
a0005936:	8082                	ret
a0005938:	10047713          	andi	a4,s0,256
a000593c:	00448d93          	addi	s11,s1,4
a0005940:	cb15                	beqz	a4,a0005974 <__vsnprintf+0x3ec>
a0005942:	4098                	lw	a4,0(s1)
a0005944:	41f75693          	srai	a3,a4,0x1f
a0005948:	00e05c63          	blez	a4,a0005960 <__vsnprintf+0x3d8>
a000594c:	cc3a                	sw	a4,24(sp)
a000594e:	ce36                	sw	a3,28(sp)
a0005950:	c042                	sw	a6,0(sp)
a0005952:	47f2                	lw	a5,28(sp)
a0005954:	01f75813          	srli	a6,a4,0x1f
a0005958:	c422                	sw	s0,8(sp)
a000595a:	4762                	lw	a4,24(sp)
a000595c:	c25a                	sw	s6,4(sp)
a000595e:	b741                	j	a00058de <__vsnprintf+0x356>
a0005960:	d43a                	sw	a4,40(sp)
a0005962:	d636                	sw	a3,44(sp)
a0005964:	5622                	lw	a2,40(sp)
a0005966:	56b2                	lw	a3,44(sp)
a0005968:	4901                	li	s2,0
a000596a:	4981                	li	s3,0
a000596c:	c2c91677          	sub64	a2,s2,a2
a0005970:	cc32                	sw	a2,24(sp)
a0005972:	bff1                	j	a000594e <__vsnprintf+0x3c6>
a0005974:	04047693          	andi	a3,s0,64
a0005978:	4098                	lw	a4,0(s1)
a000597a:	c28d                	beqz	a3,a000599c <__vsnprintf+0x414>
a000597c:	1c07270b          	ext	a4,a4,7,0
a0005980:	41f75693          	srai	a3,a4,0x1f
a0005984:	02e05263          	blez	a4,a00059a8 <__vsnprintf+0x420>
a0005988:	8a3a                	mv	s4,a4
a000598a:	8ab6                	mv	s5,a3
a000598c:	c042                	sw	a6,0(sp)
a000598e:	c422                	sw	s0,8(sp)
a0005990:	01f75813          	srli	a6,a4,0x1f
a0005994:	c25a                	sw	s6,4(sp)
a0005996:	8752                	mv	a4,s4
a0005998:	87d6                	mv	a5,s5
a000599a:	b791                	j	a00058de <__vsnprintf+0x356>
a000599c:	08047693          	andi	a3,s0,128
a00059a0:	d2e5                	beqz	a3,a0005980 <__vsnprintf+0x3f8>
a00059a2:	3c07270b          	ext	a4,a4,15,0
a00059a6:	bfe9                	j	a0005980 <__vsnprintf+0x3f8>
a00059a8:	d83a                	sw	a4,48(sp)
a00059aa:	da36                	sw	a3,52(sp)
a00059ac:	5642                	lw	a2,48(sp)
a00059ae:	56d2                	lw	a3,52(sp)
a00059b0:	4a01                	li	s4,0
a00059b2:	4a81                	li	s5,0
a00059b4:	c2ca1a77          	sub64	s4,s4,a2
a00059b8:	bfd1                	j	a000598c <__vsnprintf+0x404>
a00059ba:	cf01                	beqz	a4,a00059d2 <__vsnprintf+0x44a>
a00059bc:	049d                	addi	s1,s1,7
a00059be:	98e1                	andi	s1,s1,-8
a00059c0:	4098                	lw	a4,0(s1)
a00059c2:	40dc                	lw	a5,4(s1)
a00059c4:	00848d93          	addi	s11,s1,8
a00059c8:	c042                	sw	a6,0(sp)
a00059ca:	c422                	sw	s0,8(sp)
a00059cc:	c25a                	sw	s6,4(sp)
a00059ce:	4801                	li	a6,0
a00059d0:	b739                	j	a00058de <__vsnprintf+0x356>
a00059d2:	10047713          	andi	a4,s0,256
a00059d6:	00448d93          	addi	s11,s1,4
a00059da:	cb01                	beqz	a4,a00059ea <__vsnprintf+0x462>
a00059dc:	4098                	lw	a4,0(s1)
a00059de:	c042                	sw	a6,0(sp)
a00059e0:	c422                	sw	s0,8(sp)
a00059e2:	c25a                	sw	s6,4(sp)
a00059e4:	4801                	li	a6,0
a00059e6:	4781                	li	a5,0
a00059e8:	bddd                	j	a00058de <__vsnprintf+0x356>
a00059ea:	04047693          	andi	a3,s0,64
a00059ee:	4098                	lw	a4,0(s1)
a00059f0:	c681                	beqz	a3,a00059f8 <__vsnprintf+0x470>
a00059f2:	0ff77713          	zext.b	a4,a4
a00059f6:	b7e5                	j	a00059de <__vsnprintf+0x456>
a00059f8:	08047693          	andi	a3,s0,128
a00059fc:	d2ed                	beqz	a3,a00059de <__vsnprintf+0x456>
a00059fe:	57e2                	lw	a5,56(sp)
a0005a00:	8f7d                	and	a4,a4,a5
a0005a02:	bff1                	j	a00059de <__vsnprintf+0x456>
a0005a04:	02046413          	ori	s0,s0,32
a0005a08:	049d                	addi	s1,s1,7
a0005a0a:	ff84f713          	andi	a4,s1,-8
a0005a0e:	435c                	lw	a5,4(a4)
a0005a10:	00870493          	addi	s1,a4,8
a0005a14:	88da                	mv	a7,s6
a0005a16:	4318                	lw	a4,0(a4)
a0005a18:	c202                	sw	zero,4(sp)
a0005a1a:	c022                	sw	s0,0(sp)
a0005a1c:	86ea                	mv	a3,s10
a0005a1e:	861a                	mv	a2,t1
a0005a20:	85de                	mv	a1,s7
a0005a22:	8562                	mv	a0,s8
a0005a24:	9bfff0ef          	jal	ra,a00053e2 <print_floating_point>
a0005a28:	832a                	mv	t1,a0
a0005a2a:	b5d1                	j	a00058ee <__vsnprintf+0x366>
a0005a2c:	8809                	andi	s0,s0,2
a0005a2e:	4d85                	li	s11,1
a0005a30:	e815                	bnez	s0,a0005a64 <__vsnprintf+0x4dc>
a0005a32:	4d81                	li	s11,0
a0005a34:	a801                	j	a0005a44 <__vsnprintf+0x4bc>
a0005a36:	c09a                	sw	t1,64(sp)
a0005a38:	86ea                	mv	a3,s10
a0005a3a:	85de                	mv	a1,s7
a0005a3c:	02000513          	li	a0,32
a0005a40:	9c02                	jalr	s8
a0005a42:	4306                	lw	t1,64(sp)
a0005a44:	006d8633          	add	a2,s11,t1
a0005a48:	0d85                	addi	s11,s11,1
a0005a4a:	ff6de6e3          	bltu	s11,s6,a0005a36 <__vsnprintf+0x4ae>
a0005a4e:	4701                	li	a4,0
a0005a50:	000b0463          	beqz	s6,a0005a58 <__vsnprintf+0x4d0>
a0005a54:	fffb0713          	addi	a4,s6,-1
a0005a58:	933a                	add	t1,t1,a4
a0005a5a:	4d89                	li	s11,2
a0005a5c:	000b0463          	beqz	s6,a0005a64 <__vsnprintf+0x4dc>
a0005a60:	001b0d93          	addi	s11,s6,1
a0005a64:	9844c50b          	lbuia	a0,(s1),4,0
a0005a68:	86ea                	mv	a3,s10
a0005a6a:	861a                	mv	a2,t1
a0005a6c:	85de                	mv	a1,s7
a0005a6e:	00130913          	addi	s2,t1,1
a0005a72:	9c02                	jalr	s8
a0005a74:	c40d                	beqz	s0,a0005a9e <__vsnprintf+0x516>
a0005a76:	846e                	mv	s0,s11
a0005a78:	864a                	mv	a2,s2
a0005a7a:	a811                	j	a0005a8e <__vsnprintf+0x506>
a0005a7c:	86ea                	mv	a3,s10
a0005a7e:	85de                	mv	a1,s7
a0005a80:	02000513          	li	a0,32
a0005a84:	00160993          	addi	s3,a2,1
a0005a88:	9c02                	jalr	s8
a0005a8a:	0405                	addi	s0,s0,1
a0005a8c:	864e                	mv	a2,s3
a0005a8e:	ff6467e3          	bltu	s0,s6,a0005a7c <__vsnprintf+0x4f4>
a0005a92:	4681                	li	a3,0
a0005a94:	01bb6463          	bltu	s6,s11,a0005a9c <__vsnprintf+0x514>
a0005a98:	41bb06b3          	sub	a3,s6,s11
a0005a9c:	9936                	add	s2,s2,a3
a0005a9e:	834a                	mv	t1,s2
a0005aa0:	b5b9                	j	a00058ee <__vsnprintf+0x366>
a0005aa2:	5844c98b          	lwia	s3,(s1),4,0
a0005aa6:	02099063          	bnez	s3,a0005ac6 <__vsnprintf+0x53e>
a0005aaa:	a0009737          	lui	a4,0xa0009
a0005aae:	88a2                	mv	a7,s0
a0005ab0:	885a                	mv	a6,s6
a0005ab2:	4799                	li	a5,6
a0005ab4:	91070713          	addi	a4,a4,-1776 # a0008910 <__psram_limit+0xf7c08910>
a0005ab8:	86ea                	mv	a3,s10
a0005aba:	861a                	mv	a2,t1
a0005abc:	85de                	mv	a1,s7
a0005abe:	8562                	mv	a0,s8
a0005ac0:	d1dfe0ef          	jal	ra,a00047dc <out_rev_>
a0005ac4:	b795                	j	a0005a28 <__vsnprintf+0x4a0>
a0005ac6:	8742                	mv	a4,a6
a0005ac8:	00081363          	bnez	a6,a0005ace <__vsnprintf+0x546>
a0005acc:	577d                	li	a4,-1
a0005ace:	00e986b3          	add	a3,s3,a4
a0005ad2:	874e                	mv	a4,s3
a0005ad4:	00074603          	lbu	a2,0(a4)
a0005ad8:	c219                	beqz	a2,a0005ade <__vsnprintf+0x556>
a0005ada:	02e69263          	bne	a3,a4,a0005afe <__vsnprintf+0x576>
a0005ade:	40047d93          	andi	s11,s0,1024
a0005ae2:	41370933          	sub	s2,a4,s3
a0005ae6:	000d8663          	beqz	s11,a0005af2 <__vsnprintf+0x56a>
a0005aea:	012836b3          	sltu	a3,a6,s2
a0005aee:	42d8190b          	mvnez	s2,a6,a3
a0005af2:	8809                	andi	s0,s0,2
a0005af4:	e429                	bnez	s0,a0005b3e <__vsnprintf+0x5b6>
a0005af6:	861a                	mv	a2,t1
a0005af8:	40690eb3          	sub	t4,s2,t1
a0005afc:	a01d                	j	a0005b22 <__vsnprintf+0x59a>
a0005afe:	0705                	addi	a4,a4,1
a0005b00:	bfd1                	j	a0005ad4 <__vsnprintf+0x54c>
a0005b02:	00160e13          	addi	t3,a2,1
a0005b06:	c6f6                	sw	t4,76(sp)
a0005b08:	c49a                	sw	t1,72(sp)
a0005b0a:	c2c2                	sw	a6,68(sp)
a0005b0c:	c0f2                	sw	t3,64(sp)
a0005b0e:	86ea                	mv	a3,s10
a0005b10:	85de                	mv	a1,s7
a0005b12:	02000513          	li	a0,32
a0005b16:	9c02                	jalr	s8
a0005b18:	4e06                	lw	t3,64(sp)
a0005b1a:	4816                	lw	a6,68(sp)
a0005b1c:	4326                	lw	t1,72(sp)
a0005b1e:	4eb6                	lw	t4,76(sp)
a0005b20:	8672                	mv	a2,t3
a0005b22:	01d606b3          	add	a3,a2,t4
a0005b26:	fd66eee3          	bltu	a3,s6,a0005b02 <__vsnprintf+0x57a>
a0005b2a:	4681                	li	a3,0
a0005b2c:	012b6463          	bltu	s6,s2,a0005b34 <__vsnprintf+0x5ac>
a0005b30:	412b06b3          	sub	a3,s6,s2
a0005b34:	00190713          	addi	a4,s2,1
a0005b38:	9336                	add	t1,t1,a3
a0005b3a:	00e68933          	add	s2,a3,a4
a0005b3e:	406989b3          	sub	s3,s3,t1
a0005b42:	a829                	j	a0005b5c <__vsnprintf+0x5d4>
a0005b44:	8836                	mv	a6,a3
a0005b46:	00130893          	addi	a7,t1,1
a0005b4a:	c2c2                	sw	a6,68(sp)
a0005b4c:	c0c6                	sw	a7,64(sp)
a0005b4e:	861a                	mv	a2,t1
a0005b50:	86ea                	mv	a3,s10
a0005b52:	85de                	mv	a1,s7
a0005b54:	9c02                	jalr	s8
a0005b56:	4886                	lw	a7,64(sp)
a0005b58:	4816                	lw	a6,68(sp)
a0005b5a:	8346                	mv	t1,a7
a0005b5c:	8069c50b          	lrbu	a0,s3,t1,0
a0005b60:	c519                	beqz	a0,a0005b6e <__vsnprintf+0x5e6>
a0005b62:	fe0d82e3          	beqz	s11,a0005b46 <__vsnprintf+0x5be>
a0005b66:	fff80693          	addi	a3,a6,-1 # a0008fff <__psram_limit+0xf7c08fff>
a0005b6a:	fc081de3          	bnez	a6,a0005b44 <__vsnprintf+0x5bc>
a0005b6e:	d80400e3          	beqz	s0,a00058ee <__vsnprintf+0x366>
a0005b72:	861a                	mv	a2,t1
a0005b74:	40690433          	sub	s0,s2,t1
a0005b78:	a819                	j	a0005b8e <__vsnprintf+0x606>
a0005b7a:	c09a                	sw	t1,64(sp)
a0005b7c:	86ea                	mv	a3,s10
a0005b7e:	85de                	mv	a1,s7
a0005b80:	02000513          	li	a0,32
a0005b84:	00160d93          	addi	s11,a2,1
a0005b88:	9c02                	jalr	s8
a0005b8a:	4306                	lw	t1,64(sp)
a0005b8c:	866e                	mv	a2,s11
a0005b8e:	008606b3          	add	a3,a2,s0
a0005b92:	ff66e4e3          	bltu	a3,s6,a0005b7a <__vsnprintf+0x5f2>
a0005b96:	4681                	li	a3,0
a0005b98:	012b6463          	bltu	s6,s2,a0005ba0 <__vsnprintf+0x618>
a0005b9c:	412b06b3          	sub	a3,s6,s2
a0005ba0:	9336                	add	t1,t1,a3
a0005ba2:	b3b1                	j	a00058ee <__vsnprintf+0x366>
a0005ba4:	47a9                	li	a5,10
a0005ba6:	c446                	sw	a7,8(sp)
a0005ba8:	c23e                	sw	a5,4(sp)
a0005baa:	c042                	sw	a6,0(sp)
a0005bac:	48c1                	li	a7,16
a0005bae:	4801                	li	a6,0
a0005bb0:	4781                	li	a5,0
a0005bb2:	86ea                	mv	a3,s10
a0005bb4:	861a                	mv	a2,t1
a0005bb6:	85de                	mv	a1,s7
a0005bb8:	8562                	mv	a0,s8
a0005bba:	cd1fe0ef          	jal	ra,a000488a <print_integer>
a0005bbe:	b5ad                	j	a0005a28 <__vsnprintf+0x4a0>
a0005bc0:	00130413          	addi	s0,t1,1
a0005bc4:	86ea                	mv	a3,s10
a0005bc6:	861a                	mv	a2,t1
a0005bc8:	85de                	mv	a1,s7
a0005bca:	02500513          	li	a0,37
a0005bce:	9c02                	jalr	s8
a0005bd0:	8322                	mv	t1,s0
a0005bd2:	bb31                	j	a00058ee <__vsnprintf+0x366>
a0005bd4:	02046413          	ori	s0,s0,32
a0005bd8:	48c1                	li	a7,16
a0005bda:	b945                	j	a000588a <__vsnprintf+0x302>
a0005bdc:	48a1                	li	a7,8
a0005bde:	b155                	j	a0005882 <__vsnprintf+0x2fa>
a0005be0:	4889                	li	a7,2
a0005be2:	b145                	j	a0005882 <__vsnprintf+0x2fa>

a0005be4 <console_vsnprintf>:
a0005be4:	86aa                	mv	a3,a0
a0005be6:	a0005537          	lui	a0,0xa0005
a0005bea:	872e                	mv	a4,a1
a0005bec:	4601                	li	a2,0
a0005bee:	4581                	li	a1,0
a0005bf0:	c1650513          	addi	a0,a0,-1002 # a0004c16 <__psram_limit+0xf7c04c16>
a0005bf4:	995ff06f          	j	a0005588 <__vsnprintf>

a0005bf8 <putchar>:
a0005bf8:	1141                	addi	sp,sp,-16
a0005bfa:	62fc37b7          	lui	a5,0x62fc3
a0005bfe:	c422                	sw	s0,8(sp)
a0005c00:	842a                	mv	s0,a0
a0005c02:	ff07a503          	lw	a0,-16(a5) # 62fc2ff0 <console>
a0005c06:	c606                	sw	ra,12(sp)
a0005c08:	cd01                	beqz	a0,a0005c20 <putchar+0x28>
a0005c0a:	0ff47593          	zext.b	a1,s0
a0005c0e:	c2fbb097          	auipc	ra,0xc2fbb
a0005c12:	c68080e7          	jalr	-920(ra) # 62fc0876 <qcc74x_uart_putchar>
a0005c16:	40b2                	lw	ra,12(sp)
a0005c18:	8522                	mv	a0,s0
a0005c1a:	4422                	lw	s0,8(sp)
a0005c1c:	0141                	addi	sp,sp,16
a0005c1e:	8082                	ret
a0005c20:	547d                	li	s0,-1
a0005c22:	bfd5                	j	a0005c16 <putchar+0x1e>

a0005c24 <puts>:
a0005c24:	1101                	addi	sp,sp,-32
a0005c26:	ce06                	sw	ra,28(sp)
a0005c28:	cc22                	sw	s0,24(sp)
a0005c2a:	e519                	bnez	a0,a0005c38 <puts+0x14>
a0005c2c:	4401                	li	s0,0
a0005c2e:	40f2                	lw	ra,28(sp)
a0005c30:	8522                	mv	a0,s0
a0005c32:	4462                	lw	s0,24(sp)
a0005c34:	6105                	addi	sp,sp,32
a0005c36:	8082                	ret
a0005c38:	c62a                	sw	a0,12(sp)
a0005c3a:	3e3020ef          	jal	ra,a000881c <strlen>
a0005c3e:	62fc37b7          	lui	a5,0x62fc3
a0005c42:	842a                	mv	s0,a0
a0005c44:	ff07a503          	lw	a0,-16(a5) # 62fc2ff0 <console>
a0005c48:	d175                	beqz	a0,a0005c2c <puts+0x8>
a0005c4a:	45b2                	lw	a1,12(sp)
a0005c4c:	8622                	mv	a2,s0
a0005c4e:	c2fbb097          	auipc	ra,0xc2fbb
a0005c52:	c7a080e7          	jalr	-902(ra) # 62fc08c8 <qcc74x_uart_put>
a0005c56:	bfe1                	j	a0005c2e <puts+0xa>

a0005c58 <printf>:
a0005c58:	7139                	addi	sp,sp,-64
a0005c5a:	da3e                	sw	a5,52(sp)
a0005c5c:	62fc37b7          	lui	a5,0x62fc3
a0005c60:	ff07a783          	lw	a5,-16(a5) # 62fc2ff0 <console>
a0005c64:	ce06                	sw	ra,28(sp)
a0005c66:	d22e                	sw	a1,36(sp)
a0005c68:	d432                	sw	a2,40(sp)
a0005c6a:	d636                	sw	a3,44(sp)
a0005c6c:	d83a                	sw	a4,48(sp)
a0005c6e:	dc42                	sw	a6,56(sp)
a0005c70:	de46                	sw	a7,60(sp)
a0005c72:	c799                	beqz	a5,a0005c80 <printf+0x28>
a0005c74:	104c                	addi	a1,sp,36
a0005c76:	c62e                	sw	a1,12(sp)
a0005c78:	37b5                	jal	a0005be4 <console_vsnprintf>
a0005c7a:	40f2                	lw	ra,28(sp)
a0005c7c:	6121                	addi	sp,sp,64
a0005c7e:	8082                	ret
a0005c80:	4501                	li	a0,0
a0005c82:	bfe5                	j	a0005c7a <printf+0x22>

a0005c84 <qcc74x_uart_set_console>:
a0005c84:	62fc37b7          	lui	a5,0x62fc3
a0005c88:	fea7a823          	sw	a0,-16(a5) # 62fc2ff0 <console>
a0005c8c:	8082                	ret

a0005c8e <kmem_init>:
a0005c8e:	862e                	mv	a2,a1
a0005c90:	85aa                	mv	a1,a0
a0005c92:	62fc3537          	lui	a0,0x62fc3
a0005c96:	ff450513          	addi	a0,a0,-12 # 62fc2ff4 <g_kmemheap>
a0005c9a:	aa41                	j	a0005e2a <qcc74x_mem_init>

a0005c9c <block_next>:
a0005c9c:	415c                	lw	a5,4(a0)
a0005c9e:	9bf1                	andi	a5,a5,-4
a0005ca0:	953e                	add	a0,a0,a5
a0005ca2:	0511                	addi	a0,a0,4
a0005ca4:	8082                	ret

a0005ca6 <block_link_next>:
a0005ca6:	1141                	addi	sp,sp,-16
a0005ca8:	c422                	sw	s0,8(sp)
a0005caa:	c606                	sw	ra,12(sp)
a0005cac:	842a                	mv	s0,a0
a0005cae:	37fd                	jal	a0005c9c <block_next>
a0005cb0:	40b2                	lw	ra,12(sp)
a0005cb2:	c100                	sw	s0,0(a0)
a0005cb4:	4422                	lw	s0,8(sp)
a0005cb6:	0141                	addi	sp,sp,16
a0005cb8:	8082                	ret

a0005cba <mapping_insert>:
a0005cba:	07f00793          	li	a5,127
a0005cbe:	00a7e763          	bltu	a5,a0,a0005ccc <mapping_insert+0x12>
a0005cc2:	8509                	srai	a0,a0,0x2
a0005cc4:	4781                	li	a5,0
a0005cc6:	c19c                	sw	a5,0(a1)
a0005cc8:	c208                	sw	a0,0(a2)
a0005cca:	8082                	ret
a0005ccc:	af9506f7          	clz32	a3,a0
a0005cd0:	4769                	li	a4,26
a0005cd2:	8f15                	sub	a4,a4,a3
a0005cd4:	00e55533          	srl	a0,a0,a4
a0005cd8:	47e5                	li	a5,25
a0005cda:	02054513          	xori	a0,a0,32
a0005cde:	8f95                	sub	a5,a5,a3
a0005ce0:	b7dd                	j	a0005cc6 <mapping_insert+0xc>

a0005ce2 <block_insert>:
a0005ce2:	1101                	addi	sp,sp,-32
a0005ce4:	cc22                	sw	s0,24(sp)
a0005ce6:	842a                	mv	s0,a0
a0005ce8:	41c8                	lw	a0,4(a1)
a0005cea:	ca26                	sw	s1,20(sp)
a0005cec:	0070                	addi	a2,sp,12
a0005cee:	84ae                	mv	s1,a1
a0005cf0:	9971                	andi	a0,a0,-4
a0005cf2:	002c                	addi	a1,sp,8
a0005cf4:	ce06                	sw	ra,28(sp)
a0005cf6:	37d1                	jal	a0005cba <mapping_insert>
a0005cf8:	4722                	lw	a4,8(sp)
a0005cfa:	4632                	lw	a2,12(sp)
a0005cfc:	40f2                	lw	ra,28(sp)
a0005cfe:	00571793          	slli	a5,a4,0x5
a0005d02:	97b2                	add	a5,a5,a2
a0005d04:	04f4178b          	addsl	a5,s0,a5,2
a0005d08:	5bf4                	lw	a3,116(a5)
a0005d0a:	c4c0                	sw	s0,12(s1)
a0005d0c:	c494                	sw	a3,8(s1)
a0005d0e:	c6c4                	sw	s1,12(a3)
a0005d10:	dbe4                	sw	s1,116(a5)
a0005d12:	4814                	lw	a3,16(s0)
a0005d14:	4785                	li	a5,1
a0005d16:	00e795b3          	sll	a1,a5,a4
a0005d1a:	8ecd                	or	a3,a3,a1
a0005d1c:	c814                	sw	a3,16(s0)
a0005d1e:	04e4140b          	addsl	s0,s0,a4,2
a0005d22:	4858                	lw	a4,20(s0)
a0005d24:	00c797b3          	sll	a5,a5,a2
a0005d28:	44d2                	lw	s1,20(sp)
a0005d2a:	8fd9                	or	a5,a5,a4
a0005d2c:	c85c                	sw	a5,20(s0)
a0005d2e:	4462                	lw	s0,24(sp)
a0005d30:	6105                	addi	sp,sp,32
a0005d32:	8082                	ret

a0005d34 <tlsf_size>:
a0005d34:	6505                	lui	a0,0x1
a0005d36:	c7450513          	addi	a0,a0,-908 # c74 <VerOffset+0x74>
a0005d3a:	8082                	ret

a0005d3c <tlsf_add_pool>:
a0005d3c:	1141                	addi	sp,sp,-16
a0005d3e:	c606                	sw	ra,12(sp)
a0005d40:	c422                	sw	s0,8(sp)
a0005d42:	c226                	sw	s1,4(sp)
a0005d44:	0035f713          	andi	a4,a1,3
a0005d48:	cf11                	beqz	a4,a0005d64 <tlsf_add_pool+0x28>
a0005d4a:	a0009537          	lui	a0,0xa0009
a0005d4e:	4591                	li	a1,4
a0005d50:	a3850513          	addi	a0,a0,-1480 # a0008a38 <__psram_limit+0xf7c08a38>
a0005d54:	3711                	jal	a0005c58 <printf>
a0005d56:	4401                	li	s0,0
a0005d58:	40b2                	lw	ra,12(sp)
a0005d5a:	8522                	mv	a0,s0
a0005d5c:	4422                	lw	s0,8(sp)
a0005d5e:	4492                	lw	s1,4(sp)
a0005d60:	0141                	addi	sp,sp,16
a0005d62:	8082                	ret
a0005d64:	ff860793          	addi	a5,a2,-8
a0005d68:	9bf1                	andi	a5,a5,-4
a0005d6a:	40000637          	lui	a2,0x40000
a0005d6e:	ff478713          	addi	a4,a5,-12
a0005d72:	ff460693          	addi	a3,a2,-12 # 3ffffff4 <__wifi_bss_end+0x1cfcfff4>
a0005d76:	00e6fa63          	bgeu	a3,a4,a0005d8a <tlsf_add_pool+0x4e>
a0005d7a:	a0009537          	lui	a0,0xa0009
a0005d7e:	0621                	addi	a2,a2,8
a0005d80:	45d1                	li	a1,20
a0005d82:	a6c50513          	addi	a0,a0,-1428 # a0008a6c <__psram_limit+0xf7c08a6c>
a0005d86:	3dc9                	jal	a0005c58 <printf>
a0005d88:	b7f9                	j	a0005d56 <tlsf_add_pool+0x1a>
a0005d8a:	84ae                	mv	s1,a1
a0005d8c:	59c4c70b          	lwia	a4,(s1),-4,0
a0005d90:	0017e793          	ori	a5,a5,1
a0005d94:	842e                	mv	s0,a1
a0005d96:	c0dc                	sw	a5,4(s1)
a0005d98:	85a6                	mv	a1,s1
a0005d9a:	37a1                	jal	a0005ce2 <block_insert>
a0005d9c:	8526                	mv	a0,s1
a0005d9e:	3721                	jal	a0005ca6 <block_link_next>
a0005da0:	4789                	li	a5,2
a0005da2:	c15c                	sw	a5,4(a0)
a0005da4:	bf55                	j	a0005d58 <tlsf_add_pool+0x1c>

a0005da6 <tlsf_create>:
a0005da6:	00357793          	andi	a5,a0,3
a0005daa:	cf89                	beqz	a5,a0005dc4 <tlsf_create+0x1e>
a0005dac:	a0009537          	lui	a0,0xa0009
a0005db0:	1141                	addi	sp,sp,-16
a0005db2:	4591                	li	a1,4
a0005db4:	aac50513          	addi	a0,a0,-1364 # a0008aac <__psram_limit+0xf7c08aac>
a0005db8:	c606                	sw	ra,12(sp)
a0005dba:	3d79                	jal	a0005c58 <printf>
a0005dbc:	40b2                	lw	ra,12(sp)
a0005dbe:	4501                	li	a0,0
a0005dc0:	0141                	addi	sp,sp,16
a0005dc2:	8082                	ret
a0005dc4:	c508                	sw	a0,8(a0)
a0005dc6:	c548                	sw	a0,12(a0)
a0005dc8:	00052823          	sw	zero,16(a0)
a0005dcc:	07450693          	addi	a3,a0,116
a0005dd0:	4781                	li	a5,0
a0005dd2:	01450593          	addi	a1,a0,20
a0005dd6:	02000813          	li	a6,32
a0005dda:	4661                	li	a2,24
a0005ddc:	44f5d00b          	srw	zero,a1,a5,2
a0005de0:	4701                	li	a4,0
a0005de2:	44e6d50b          	srw	a0,a3,a4,2
a0005de6:	0705                	addi	a4,a4,1
a0005de8:	ff071de3          	bne	a4,a6,a0005de2 <tlsf_create+0x3c>
a0005dec:	0785                	addi	a5,a5,1
a0005dee:	08068693          	addi	a3,a3,128
a0005df2:	fec795e3          	bne	a5,a2,a0005ddc <tlsf_create+0x36>
a0005df6:	8082                	ret

a0005df8 <tlsf_create_with_pool>:
a0005df8:	1101                	addi	sp,sp,-32
a0005dfa:	ce06                	sw	ra,28(sp)
a0005dfc:	cc22                	sw	s0,24(sp)
a0005dfe:	ca26                	sw	s1,20(sp)
a0005e00:	c62e                	sw	a1,12(sp)
a0005e02:	84aa                	mv	s1,a0
a0005e04:	374d                	jal	a0005da6 <tlsf_create>
a0005e06:	45b2                	lw	a1,12(sp)
a0005e08:	77fd                	lui	a5,0xfffff
a0005e0a:	38c78793          	addi	a5,a5,908 # fffff38c <__psram_limit+0x57bff38c>
a0005e0e:	00f58633          	add	a2,a1,a5
a0005e12:	6585                	lui	a1,0x1
a0005e14:	c7458593          	addi	a1,a1,-908 # c74 <VerOffset+0x74>
a0005e18:	95a6                	add	a1,a1,s1
a0005e1a:	842a                	mv	s0,a0
a0005e1c:	3705                	jal	a0005d3c <tlsf_add_pool>
a0005e1e:	40f2                	lw	ra,28(sp)
a0005e20:	8522                	mv	a0,s0
a0005e22:	4462                	lw	s0,24(sp)
a0005e24:	44d2                	lw	s1,20(sp)
a0005e26:	6105                	addi	sp,sp,32
a0005e28:	8082                	ret

a0005e2a <qcc74x_mem_init>:
a0005e2a:	1101                	addi	sp,sp,-32
a0005e2c:	ce06                	sw	ra,28(sp)
a0005e2e:	cc22                	sw	s0,24(sp)
a0005e30:	ca26                	sw	s1,20(sp)
a0005e32:	842a                	mv	s0,a0
a0005e34:	84ae                	mv	s1,a1
a0005e36:	c632                	sw	a2,12(sp)
a0005e38:	3df5                	jal	a0005d34 <tlsf_size>
a0005e3a:	9526                	add	a0,a0,s1
a0005e3c:	c048                	sw	a0,4(s0)
a0005e3e:	3ddd                	jal	a0005d34 <tlsf_size>
a0005e40:	4632                	lw	a2,12(sp)
a0005e42:	40a60533          	sub	a0,a2,a0
a0005e46:	c408                	sw	a0,8(s0)
a0005e48:	85b2                	mv	a1,a2
a0005e4a:	8526                	mv	a0,s1
a0005e4c:	3775                	jal	a0005df8 <tlsf_create_with_pool>
a0005e4e:	441c                	lw	a5,8(s0)
a0005e50:	40f2                	lw	ra,28(sp)
a0005e52:	c008                	sw	a0,0(s0)
a0005e54:	c45c                	sw	a5,12(s0)
a0005e56:	c81c                	sw	a5,16(s0)
a0005e58:	4462                	lw	s0,24(sp)
a0005e5a:	44d2                	lw	s1,20(sp)
a0005e5c:	6105                	addi	sp,sp,32
a0005e5e:	8082                	ret

a0005e60 <log_start>:
a0005e60:	8082                	ret

a0005e62 <coredump_run>:
a0005e62:	711d                	addi	sp,sp,-96
a0005e64:	cca2                	sw	s0,88(sp)
a0005e66:	62fc3537          	lui	a0,0x62fc3
a0005e6a:	a000a437          	lui	s0,0xa000a
a0005e6e:	b6440593          	addi	a1,s0,-1180 # a0009b64 <__psram_limit+0xf7c09b64>
a0005e72:	4651                	li	a2,20
a0005e74:	00850513          	addi	a0,a0,8 # 62fc3008 <core_build_id>
a0005e78:	ce86                	sw	ra,92(sp)
a0005e7a:	c4d2                	sw	s4,72(sp)
a0005e7c:	c2d6                	sw	s5,68(sp)
a0005e7e:	c0da                	sw	s6,64(sp)
a0005e80:	caa6                	sw	s1,84(sp)
a0005e82:	c8ca                	sw	s2,80(sp)
a0005e84:	c6ce                	sw	s3,76(sp)
a0005e86:	cfcfe0ef          	jal	ra,a0004382 <memcpy>
a0005e8a:	a0009537          	lui	a0,0xa0009
a0005e8e:	ae050513          	addi	a0,a0,-1312 # a0008ae0 <__psram_limit+0xf7c08ae0>
a0005e92:	33d9                	jal	a0005c58 <printf>
a0005e94:	b6440613          	addi	a2,s0,-1180
a0005e98:	01364783          	lbu	a5,19(a2)
a0005e9c:	a0009537          	lui	a0,0xa0009
a0005ea0:	b2850513          	addi	a0,a0,-1240 # a0008b28 <__psram_limit+0xf7c08b28>
a0005ea4:	d83e                	sw	a5,48(sp)
a0005ea6:	01264783          	lbu	a5,18(a2)
a0005eaa:	5a75                	li	s4,-3
a0005eac:	40000a93          	li	s5,1024
a0005eb0:	d63e                	sw	a5,44(sp)
a0005eb2:	01164783          	lbu	a5,17(a2)
a0005eb6:	a0009b37          	lui	s6,0xa0009
a0005eba:	d43e                	sw	a5,40(sp)
a0005ebc:	01064783          	lbu	a5,16(a2)
a0005ec0:	d23e                	sw	a5,36(sp)
a0005ec2:	00f64783          	lbu	a5,15(a2)
a0005ec6:	d03e                	sw	a5,32(sp)
a0005ec8:	00e64783          	lbu	a5,14(a2)
a0005ecc:	ce3e                	sw	a5,28(sp)
a0005ece:	00d64783          	lbu	a5,13(a2)
a0005ed2:	cc3e                	sw	a5,24(sp)
a0005ed4:	00c64783          	lbu	a5,12(a2)
a0005ed8:	ca3e                	sw	a5,20(sp)
a0005eda:	00b64783          	lbu	a5,11(a2)
a0005ede:	c83e                	sw	a5,16(sp)
a0005ee0:	00a64783          	lbu	a5,10(a2)
a0005ee4:	c63e                	sw	a5,12(sp)
a0005ee6:	00964783          	lbu	a5,9(a2)
a0005eea:	c43e                	sw	a5,8(sp)
a0005eec:	00864783          	lbu	a5,8(a2)
a0005ef0:	c23e                	sw	a5,4(sp)
a0005ef2:	00764783          	lbu	a5,7(a2)
a0005ef6:	c03e                	sw	a5,0(sp)
a0005ef8:	00664883          	lbu	a7,6(a2)
a0005efc:	00564803          	lbu	a6,5(a2)
a0005f00:	00464783          	lbu	a5,4(a2)
a0005f04:	00364703          	lbu	a4,3(a2)
a0005f08:	00264683          	lbu	a3,2(a2)
a0005f0c:	00164603          	lbu	a2,1(a2)
a0005f10:	b6444583          	lbu	a1,-1180(s0)
a0005f14:	a000a437          	lui	s0,0xa000a
a0005f18:	b2c40413          	addi	s0,s0,-1236 # a0009b2c <__psram_limit+0xf7c09b2c>
a0005f1c:	3b35                	jal	a0005c58 <printf>
a0005f1e:	00042983          	lw	s3,0(s0)
a0005f22:	fff98793          	addi	a5,s3,-1
a0005f26:	00fa7b63          	bgeu	s4,a5,a0005f3c <coredump_run+0xda>
a0005f2a:	a0009537          	lui	a0,0xa0009
a0005f2e:	b9450513          	addi	a0,a0,-1132 # a0008b94 <__psram_limit+0xf7c08b94>
a0005f32:	331d                	jal	a0005c58 <printf>
a0005f34:	434020ef          	jal	ra,a0008368 <qcc74x_sys_reset_por>
a0005f38:	0001                	nop
a0005f3a:	bffd                	j	a0005f38 <coredump_run+0xd6>
a0005f3c:	00442903          	lw	s2,4(s0)
a0005f40:	00091463          	bnez	s2,a0005f48 <coredump_run+0xe6>
a0005f44:	0421                	addi	s0,s0,8
a0005f46:	bfe1                	j	a0005f1e <coredump_run+0xbc>
a0005f48:	4481                	li	s1,0
a0005f4a:	40990633          	sub	a2,s2,s1
a0005f4e:	009985b3          	add	a1,s3,s1
a0005f52:	00caf463          	bgeu	s5,a2,a0005f5a <coredump_run+0xf8>
a0005f56:	40000613          	li	a2,1024
a0005f5a:	b88b0693          	addi	a3,s6,-1144 # a0008b88 <__psram_limit+0xf7c08b88>
a0005f5e:	852e                	mv	a0,a1
a0005f60:	40048493          	addi	s1,s1,1024
a0005f64:	2851                	jal	a0005ff8 <coredump_print>
a0005f66:	ff24e2e3          	bltu	s1,s2,a0005f4a <coredump_run+0xe8>
a0005f6a:	bfe9                	j	a0005f44 <coredump_run+0xe2>

a0005f6c <cd_base64_write_block>:
a0005f6c:	1141                	addi	sp,sp,-16
a0005f6e:	c606                	sw	ra,12(sp)
a0005f70:	c422                	sw	s0,8(sp)
a0005f72:	c226                	sw	s1,4(sp)
a0005f74:	842a                	mv	s0,a0
a0005f76:	00054503          	lbu	a0,0(a0)
a0005f7a:	84ae                	mv	s1,a1
a0005f7c:	39b5                	jal	a0005bf8 <putchar>
a0005f7e:	00144503          	lbu	a0,1(s0)
a0005f82:	399d                	jal	a0005bf8 <putchar>
a0005f84:	00244503          	lbu	a0,2(s0)
a0005f88:	3985                	jal	a0005bf8 <putchar>
a0005f8a:	00344503          	lbu	a0,3(s0)
a0005f8e:	31ad                	jal	a0005bf8 <putchar>
a0005f90:	409c                	lw	a5,0(s1)
a0005f92:	4765                	li	a4,25
a0005f94:	0785                	addi	a5,a5,1
a0005f96:	c09c                	sw	a5,0(s1)
a0005f98:	00f75963          	bge	a4,a5,a0005faa <cd_base64_write_block+0x3e>
a0005f9c:	a000a537          	lui	a0,0xa000a
a0005fa0:	91450513          	addi	a0,a0,-1772 # a0009914 <__psram_limit+0xf7c09914>
a0005fa4:	3141                	jal	a0005c24 <puts>
a0005fa6:	0004a023          	sw	zero,0(s1)
a0005faa:	40b2                	lw	ra,12(sp)
a0005fac:	4422                	lw	s0,8(sp)
a0005fae:	4492                	lw	s1,4(sp)
a0005fb0:	0141                	addi	sp,sp,16
a0005fb2:	8082                	ret

a0005fb4 <read_word_cb>:
a0005fb4:	4598                	lw	a4,8(a1)
a0005fb6:	45dc                	lw	a5,12(a1)
a0005fb8:	02f77e63          	bgeu	a4,a5,a0005ff4 <read_word_cb+0x40>
a0005fbc:	41d4                	lw	a3,4(a1)
a0005fbe:	1141                	addi	sp,sp,-16
a0005fc0:	c606                	sw	ra,12(sp)
a0005fc2:	ffc77793          	andi	a5,a4,-4
a0005fc6:	00f68563          	beq	a3,a5,a0005fd0 <read_word_cb+0x1c>
a0005fca:	c1dc                	sw	a5,4(a1)
a0005fcc:	439c                	lw	a5,0(a5)
a0005fce:	c99c                	sw	a5,16(a1)
a0005fd0:	8b0d                	andi	a4,a4,3
a0005fd2:	972e                	add	a4,a4,a1
a0005fd4:	01074703          	lbu	a4,16(a4)
a0005fd8:	87ae                	mv	a5,a1
a0005fda:	00e50023          	sb	a4,0(a0)
a0005fde:	4598                	lw	a4,8(a1)
a0005fe0:	0705                	addi	a4,a4,1
a0005fe2:	c598                	sw	a4,8(a1)
a0005fe4:	00054583          	lbu	a1,0(a0)
a0005fe8:	4bc8                	lw	a0,20(a5)
a0005fea:	243d                	jal	a0006218 <utils_crc32_stream_feed>
a0005fec:	40b2                	lw	ra,12(sp)
a0005fee:	4501                	li	a0,0
a0005ff0:	0141                	addi	sp,sp,16
a0005ff2:	8082                	ret
a0005ff4:	4505                	li	a0,1
a0005ff6:	8082                	ret

a0005ff8 <coredump_print>:
a0005ff8:	715d                	addi	sp,sp,-80
a0005ffa:	c2a6                	sw	s1,68(sp)
a0005ffc:	62fc34b7          	lui	s1,0x62fc3
a0006000:	01c48493          	addi	s1,s1,28 # 62fc301c <init.0>
a0006004:	409c                	lw	a5,0(s1)
a0006006:	c4a2                	sw	s0,72(sp)
a0006008:	c0ca                	sw	s2,64(sp)
a000600a:	de4e                	sw	s3,60(sp)
a000600c:	dc52                	sw	s4,56(sp)
a000600e:	c686                	sw	ra,76(sp)
a0006010:	da56                	sw	s5,52(sp)
a0006012:	892a                	mv	s2,a0
a0006014:	89ae                	mv	s3,a1
a0006016:	8432                	mv	s0,a2
a0006018:	8a36                	mv	s4,a3
a000601a:	eb81                	bnez	a5,a000602a <coredump_print+0x32>
a000601c:	a0009537          	lui	a0,0xa0009
a0006020:	bbc50513          	addi	a0,a0,-1092 # a0008bbc <__psram_limit+0xf7c08bbc>
a0006024:	3101                	jal	a0005c24 <puts>
a0006026:	4785                	li	a5,1
a0006028:	c09c                	sw	a5,0(s1)
a000602a:	a0009537          	lui	a0,0xa0009
a000602e:	8209190b          	rev	s2,s2
a0006032:	be850513          	addi	a0,a0,-1048 # a0008be8 <__psram_limit+0xf7c08be8>
a0006036:	c802                	sw	zero,16(sp)
a0006038:	ca02                	sw	zero,20(sp)
a000603a:	36ed                	jal	a0005c24 <puts>
a000603c:	c64a                	sw	s2,12(sp)
a000603e:	00c10913          	addi	s2,sp,12
a0006042:	4611                	li	a2,4
a0006044:	85ca                	mv	a1,s2
a0006046:	0808                	addi	a0,sp,16
a0006048:	2ad5                	jal	a000623c <utils_bin2hex>
a000604a:	4481                	li	s1,0
a000604c:	4aa1                	li	s5,8
a000604e:	081c                	addi	a5,sp,16
a0006050:	8097c50b          	lrbu	a0,a5,s1,0
a0006054:	0485                	addi	s1,s1,1
a0006056:	364d                	jal	a0005bf8 <putchar>
a0006058:	ff549be3          	bne	s1,s5,a000604e <coredump_print+0x56>
a000605c:	04000513          	li	a0,64
a0006060:	3e61                	jal	a0005bf8 <putchar>
a0006062:	8204178b          	rev	a5,s0
a0006066:	4611                	li	a2,4
a0006068:	85ca                	mv	a1,s2
a000606a:	0808                	addi	a0,sp,16
a000606c:	c63e                	sw	a5,12(sp)
a000606e:	4481                	li	s1,0
a0006070:	22f1                	jal	a000623c <utils_bin2hex>
a0006072:	4aa1                	li	s5,8
a0006074:	081c                	addi	a5,sp,16
a0006076:	8097c50b          	lrbu	a0,a5,s1,0
a000607a:	0485                	addi	s1,s1,1
a000607c:	b7dff0ef          	jal	ra,a0005bf8 <putchar>
a0006080:	ff549ae3          	bne	s1,s5,a0006074 <coredump_print+0x7c>
a0006084:	000a0863          	beqz	s4,a0006094 <coredump_print+0x9c>
a0006088:	04000513          	li	a0,64
a000608c:	b6dff0ef          	jal	ra,a0005bf8 <putchar>
a0006090:	8552                	mv	a0,s4
a0006092:	3e49                	jal	a0005c24 <puts>
a0006094:	a00094b7          	lui	s1,0xa0009
a0006098:	c0048513          	addi	a0,s1,-1024 # a0008c00 <__psram_limit+0xf7c08c00>
a000609c:	b89ff0ef          	jal	ra,a0005c24 <puts>
a00060a0:	0048                	addi	a0,sp,4
a00060a2:	2a85                	jal	a0006212 <utils_crc32_stream_init>
a00060a4:	ffc9f793          	andi	a5,s3,-4
a00060a8:	ce3e                	sw	a5,28(sp)
a00060aa:	943e                	add	s0,s0,a5
a00060ac:	439c                	lw	a5,0(a5)
a00060ae:	d04e                	sw	s3,32(sp)
a00060b0:	d222                	sw	s0,36(sp)
a00060b2:	a00069b7          	lui	s3,0xa0006
a00060b6:	a0006437          	lui	s0,0xa0006
a00060ba:	0830                	addi	a2,sp,24
a00060bc:	f6c98593          	addi	a1,s3,-148 # a0005f6c <__psram_limit+0xf7c05f6c>
a00060c0:	d43e                	sw	a5,40(sp)
a00060c2:	fb440513          	addi	a0,s0,-76 # a0005fb4 <__psram_limit+0xf7c05fb4>
a00060c6:	005c                	addi	a5,sp,4
a00060c8:	d63e                	sw	a5,44(sp)
a00060ca:	cc02                	sw	zero,24(sp)
a00060cc:	20a9                	jal	a0006116 <utils_base64_encode_stream>
a00060ce:	a0009537          	lui	a0,0xa0009
a00060d2:	c0c50513          	addi	a0,a0,-1012 # a0008c0c <__psram_limit+0xf7c08c0c>
a00060d6:	b4fff0ef          	jal	ra,a0005c24 <puts>
a00060da:	0048                	addi	a0,sp,4
a00060dc:	2aa1                	jal	a0006234 <utils_crc32_stream_results>
a00060de:	003c                	addi	a5,sp,8
a00060e0:	c42a                	sw	a0,8(sp)
a00060e2:	ce3e                	sw	a5,28(sp)
a00060e4:	d03e                	sw	a5,32(sp)
a00060e6:	d42a                	sw	a0,40(sp)
a00060e8:	005c                	addi	a5,sp,4
a00060ea:	0830                	addi	a2,sp,24
a00060ec:	f6c98593          	addi	a1,s3,-148
a00060f0:	fb440513          	addi	a0,s0,-76
a00060f4:	d24a                	sw	s2,36(sp)
a00060f6:	d63e                	sw	a5,44(sp)
a00060f8:	cc02                	sw	zero,24(sp)
a00060fa:	2831                	jal	a0006116 <utils_base64_encode_stream>
a00060fc:	c0048513          	addi	a0,s1,-1024
a0006100:	b25ff0ef          	jal	ra,a0005c24 <puts>
a0006104:	40b6                	lw	ra,76(sp)
a0006106:	4426                	lw	s0,72(sp)
a0006108:	4496                	lw	s1,68(sp)
a000610a:	4906                	lw	s2,64(sp)
a000610c:	59f2                	lw	s3,60(sp)
a000610e:	5a62                	lw	s4,56(sp)
a0006110:	5ad2                	lw	s5,52(sp)
a0006112:	6161                	addi	sp,sp,80
a0006114:	8082                	ret

a0006116 <utils_base64_encode_stream>:
a0006116:	7139                	addi	sp,sp,-64
a0006118:	d84a                	sw	s2,48(sp)
a000611a:	a0009937          	lui	s2,0xa0009
a000611e:	da26                	sw	s1,52(sp)
a0006120:	d64e                	sw	s3,44(sp)
a0006122:	d452                	sw	s4,40(sp)
a0006124:	d256                	sw	s5,36(sp)
a0006126:	d05a                	sw	s6,32(sp)
a0006128:	ce5e                	sw	s7,28(sp)
a000612a:	de06                	sw	ra,60(sp)
a000612c:	dc22                	sw	s0,56(sp)
a000612e:	cc62                	sw	s8,24(sp)
a0006130:	8a2a                	mv	s4,a0
a0006132:	8aae                	mv	s5,a1
a0006134:	89b2                	mv	s3,a2
a0006136:	54fd                	li	s1,-1
a0006138:	5b7d                	li	s6,-1
a000613a:	c1c90913          	addi	s2,s2,-996 # a0008c1c <__psram_limit+0xf7c08c1c>
a000613e:	00c10b93          	addi	s7,sp,12
a0006142:	85ce                	mv	a1,s3
a0006144:	00b10513          	addi	a0,sp,11
a0006148:	9a02                	jalr	s4
a000614a:	c15d                	beqz	a0,a00061f0 <utils_base64_encode_stream+0xda>
a000614c:	0004d363          	bgez	s1,a0006152 <utils_base64_encode_stream+0x3c>
a0006150:	4481                	li	s1,0
a0006152:	4401                	li	s0,0
a0006154:	85ce                	mv	a1,s3
a0006156:	00b10513          	addi	a0,sp,11
a000615a:	9a02                	jalr	s4
a000615c:	cd49                	beqz	a0,a00061f6 <utils_base64_encode_stream+0xe0>
a000615e:	4c01                	li	s8,0
a0006160:	01649363          	bne	s1,s6,a0006166 <utils_base64_encode_stream+0x50>
a0006164:	4485                	li	s1,1
a0006166:	85ce                	mv	a1,s3
a0006168:	00b10513          	addi	a0,sp,11
a000616c:	9a02                	jalr	s4
a000616e:	c559                	beqz	a0,a00061fc <utils_base64_encode_stream+0xe6>
a0006170:	4701                	li	a4,0
a0006172:	01649363          	bne	s1,s6,a0006178 <utils_base64_encode_stream+0x62>
a0006176:	4489                	li	s1,2
a0006178:	01041793          	slli	a5,s0,0x10
a000617c:	0c22                	slli	s8,s8,0x8
a000617e:	97e2                	add	a5,a5,s8
a0006180:	97ba                	add	a5,a5,a4
a0006182:	c111                	beqz	a0,a0006186 <utils_base64_encode_stream+0x70>
a0006184:	c8b1                	beqz	s1,a00061d8 <utils_base64_encode_stream+0xc2>
a0006186:	0127d713          	srli	a4,a5,0x12
a000618a:	80e9470b          	lrbu	a4,s2,a4,0
a000618e:	00e10623          	sb	a4,12(sp)
a0006192:	44c7b70b          	extu	a4,a5,17,12
a0006196:	80e9470b          	lrbu	a4,s2,a4,0
a000619a:	00e106a3          	sb	a4,13(sp)
a000619e:	2c67b70b          	extu	a4,a5,11,6
a00061a2:	03f7f793          	andi	a5,a5,63
a00061a6:	80e9470b          	lrbu	a4,s2,a4,0
a00061aa:	80f9478b          	lrbu	a5,s2,a5,0
a00061ae:	00e10723          	sb	a4,14(sp)
a00061b2:	00f107a3          	sb	a5,15(sp)
a00061b6:	c531                	beqz	a0,a0006202 <utils_base64_encode_stream+0xec>
a00061b8:	a00097b7          	lui	a5,0xa0009
a00061bc:	c5c78793          	addi	a5,a5,-932 # a0008c5c <__psram_limit+0xf7c08c5c>
a00061c0:	4497c70b          	lrw	a4,a5,s1,2
a00061c4:	03d00613          	li	a2,61
a00061c8:	87de                	mv	a5,s7
a00061ca:	40fb86b3          	sub	a3,s7,a5
a00061ce:	02e6ce63          	blt	a3,a4,a000620a <utils_base64_encode_stream+0xf4>
a00061d2:	85ce                	mv	a1,s3
a00061d4:	855e                	mv	a0,s7
a00061d6:	9a82                	jalr	s5
a00061d8:	50f2                	lw	ra,60(sp)
a00061da:	5462                	lw	s0,56(sp)
a00061dc:	54d2                	lw	s1,52(sp)
a00061de:	5942                	lw	s2,48(sp)
a00061e0:	59b2                	lw	s3,44(sp)
a00061e2:	5a22                	lw	s4,40(sp)
a00061e4:	5a92                	lw	s5,36(sp)
a00061e6:	5b02                	lw	s6,32(sp)
a00061e8:	4bf2                	lw	s7,28(sp)
a00061ea:	4c62                	lw	s8,24(sp)
a00061ec:	6121                	addi	sp,sp,64
a00061ee:	8082                	ret
a00061f0:	00b14403          	lbu	s0,11(sp)
a00061f4:	b785                	j	a0006154 <utils_base64_encode_stream+0x3e>
a00061f6:	00b14c03          	lbu	s8,11(sp)
a00061fa:	b7b5                	j	a0006166 <utils_base64_encode_stream+0x50>
a00061fc:	00b14703          	lbu	a4,11(sp)
a0006200:	bfa5                	j	a0006178 <utils_base64_encode_stream+0x62>
a0006202:	85ce                	mv	a1,s3
a0006204:	855e                	mv	a0,s7
a0006206:	9a82                	jalr	s5
a0006208:	bf2d                	j	a0006142 <utils_base64_encode_stream+0x2c>
a000620a:	00c781a3          	sb	a2,3(a5)
a000620e:	17fd                	addi	a5,a5,-1
a0006210:	bf6d                	j	a00061ca <utils_base64_encode_stream+0xb4>

a0006212 <utils_crc32_stream_init>:
a0006212:	57fd                	li	a5,-1
a0006214:	c11c                	sw	a5,0(a0)
a0006216:	8082                	ret

a0006218 <utils_crc32_stream_feed>:
a0006218:	411c                	lw	a5,0(a0)
a000621a:	a0009737          	lui	a4,0xa0009
a000621e:	c6870713          	addi	a4,a4,-920 # a0008c68 <__psram_limit+0xf7c08c68>
a0006222:	8dbd                	xor	a1,a1,a5
a0006224:	0ff5f593          	zext.b	a1,a1
a0006228:	44b7470b          	lrw	a4,a4,a1,2
a000622c:	83a1                	srli	a5,a5,0x8
a000622e:	8fb9                	xor	a5,a5,a4
a0006230:	c11c                	sw	a5,0(a0)
a0006232:	8082                	ret

a0006234 <utils_crc32_stream_results>:
a0006234:	4108                	lw	a0,0(a0)
a0006236:	fff54513          	not	a0,a0
a000623a:	8082                	ret

a000623c <utils_bin2hex>:
a000623c:	a0009737          	lui	a4,0xa0009
a0006240:	4781                	li	a5,0
a0006242:	06870713          	addi	a4,a4,104 # a0009068 <__psram_limit+0xf7c09068>
a0006246:	00150813          	addi	a6,a0,1
a000624a:	00f61563          	bne	a2,a5,a0006254 <utils_bin2hex+0x18>
a000624e:	02c5150b          	addsl	a0,a0,a2,1
a0006252:	8082                	ret
a0006254:	80f5c68b          	lrbu	a3,a1,a5,0
a0006258:	0046d893          	srli	a7,a3,0x4
a000625c:	8117488b          	lrbu	a7,a4,a7,0
a0006260:	8abd                	andi	a3,a3,15
a0006262:	80d7468b          	lrbu	a3,a4,a3,0
a0006266:	02f5588b          	srb	a7,a0,a5,1
a000626a:	02f8568b          	srb	a3,a6,a5,1
a000626e:	0785                	addi	a5,a5,1
a0006270:	bfe9                	j	a000624a <utils_bin2hex+0xe>

a0006272 <qcc74x_gpio_init>:
a0006272:	1101                	addi	sp,sp,-32
a0006274:	c84a                	sw	s2,16(sp)
a0006276:	00452903          	lw	s2,4(a0)
a000627a:	852e                	mv	a0,a1
a000627c:	cc22                	sw	s0,24(sp)
a000627e:	ca26                	sw	s1,20(sp)
a0006280:	3c06340b          	extu	s0,a2,15,0
a0006284:	34c6348b          	extu	s1,a2,13,12
a0006288:	c632                	sw	a2,12(sp)
a000628a:	c42e                	sw	a1,8(sp)
a000628c:	ce06                	sw	ra,28(sp)
a000628e:	03c020ef          	jal	ra,a00082ca <qcc74x_gpio_pad_check>
a0006292:	45a2                	lw	a1,8(sp)
a0006294:	47c1                	li	a5,16
a0006296:	4632                	lw	a2,12(sp)
a0006298:	06f59463          	bne	a1,a5,a0006300 <qcc74x_gpio_init+0x8e>
a000629c:	2000f6b7          	lui	a3,0x2000f
a00062a0:	5e9c                	lw	a5,56(a3)
a00062a2:	fff00737          	lui	a4,0xfff00
a00062a6:	177d                	addi	a4,a4,-1
a00062a8:	8ff9                	and	a5,a5,a4
a00062aa:	de9c                	sw	a5,56(a3)
a00062ac:	08047793          	andi	a5,s0,128
a00062b0:	04b9158b          	addsl	a1,s2,a1,2
a00062b4:	efa5                	bnez	a5,a000632c <qcc74x_gpio_init+0xba>
a00062b6:	10047793          	andi	a5,s0,256
a00062ba:	cfa1                	beqz	a5,a0006312 <qcc74x_gpio_init+0xa0>
a00062bc:	004007b7          	lui	a5,0x400
a00062c0:	01f67713          	andi	a4,a2,31
a00062c4:	0785                	addi	a5,a5,1
a00062c6:	20067693          	andi	a3,a2,512
a00062ca:	c6ad                	beqz	a3,a0006334 <qcc74x_gpio_init+0xc2>
a00062cc:	0107e793          	ori	a5,a5,16
a00062d0:	2cb6360b          	extu	a2,a2,11,11
a00062d4:	c219                	beqz	a2,a00062da <qcc74x_gpio_init+0x68>
a00062d6:	0027e793          	ori	a5,a5,2
a00062da:	048a                	slli	s1,s1,0x2
a00062dc:	8cdd                	or	s1,s1,a5
a00062de:	00871793          	slli	a5,a4,0x8
a00062e2:	8fc5                	or	a5,a5,s1
a00062e4:	40000737          	lui	a4,0x40000
a00062e8:	40f2                	lw	ra,28(sp)
a00062ea:	4462                	lw	s0,24(sp)
a00062ec:	8fd9                	or	a5,a5,a4
a00062ee:	6705                	lui	a4,0x1
a00062f0:	8c470713          	addi	a4,a4,-1852 # 8c4 <__RFTLV_SIZE_HOLE+0xc4>
a00062f4:	40e5d78b          	srw	a5,a1,a4,0
a00062f8:	44d2                	lw	s1,20(sp)
a00062fa:	4942                	lw	s2,16(sp)
a00062fc:	6105                	addi	sp,sp,32
a00062fe:	8082                	ret
a0006300:	47c5                	li	a5,17
a0006302:	faf595e3          	bne	a1,a5,a00062ac <qcc74x_gpio_init+0x3a>
a0006306:	2000f6b7          	lui	a3,0x2000f
a000630a:	5e9c                	lw	a5,56(a3)
a000630c:	ffe00737          	lui	a4,0xffe00
a0006310:	bf59                	j	a00062a6 <qcc74x_gpio_init+0x34>
a0006312:	02047713          	andi	a4,s0,32
a0006316:	004007b7          	lui	a5,0x400
a000631a:	c311                	beqz	a4,a000631e <qcc74x_gpio_init+0xac>
a000631c:	0785                	addi	a5,a5,1
a000631e:	04047413          	andi	s0,s0,64
a0006322:	472d                	li	a4,11
a0006324:	d04d                	beqz	s0,a00062c6 <qcc74x_gpio_init+0x54>
a0006326:	0407e793          	ori	a5,a5,64
a000632a:	bf71                	j	a00062c6 <qcc74x_gpio_init+0x54>
a000632c:	4729                	li	a4,10
a000632e:	004007b7          	lui	a5,0x400
a0006332:	bf51                	j	a00062c6 <qcc74x_gpio_init+0x54>
a0006334:	40067693          	andi	a3,a2,1024
a0006338:	dec1                	beqz	a3,a00062d0 <qcc74x_gpio_init+0x5e>
a000633a:	0207e793          	ori	a5,a5,32
a000633e:	bf49                	j	a00062d0 <qcc74x_gpio_init+0x5e>

a0006340 <qcc74x_gpio_set>:
a0006340:	1101                	addi	sp,sp,-32
a0006342:	cc22                	sw	s0,24(sp)
a0006344:	842a                	mv	s0,a0
a0006346:	852e                	mv	a0,a1
a0006348:	ce06                	sw	ra,28(sp)
a000634a:	c62e                	sw	a1,12(sp)
a000634c:	77f010ef          	jal	ra,a00082ca <qcc74x_gpio_pad_check>
a0006350:	405c                	lw	a5,4(s0)
a0006352:	45b2                	lw	a1,12(sp)
a0006354:	6705                	lui	a4,0x1
a0006356:	aec70713          	addi	a4,a4,-1300 # aec <__RFTLV_SIZE_HOLE+0x2ec>
a000635a:	40f2                	lw	ra,28(sp)
a000635c:	4462                	lw	s0,24(sp)
a000635e:	97ba                	add	a5,a5,a4
a0006360:	4705                	li	a4,1
a0006362:	0055d693          	srli	a3,a1,0x5
a0006366:	00b71733          	sll	a4,a4,a1
a000636a:	44d7d70b          	srw	a4,a5,a3,2
a000636e:	6105                	addi	sp,sp,32
a0006370:	8082                	ret

a0006372 <qcc74x_gpio_reset>:
a0006372:	1101                	addi	sp,sp,-32
a0006374:	cc22                	sw	s0,24(sp)
a0006376:	842a                	mv	s0,a0
a0006378:	852e                	mv	a0,a1
a000637a:	ce06                	sw	ra,28(sp)
a000637c:	c62e                	sw	a1,12(sp)
a000637e:	74d010ef          	jal	ra,a00082ca <qcc74x_gpio_pad_check>
a0006382:	405c                	lw	a5,4(s0)
a0006384:	45b2                	lw	a1,12(sp)
a0006386:	6705                	lui	a4,0x1
a0006388:	af470713          	addi	a4,a4,-1292 # af4 <__RFTLV_SIZE_HOLE+0x2f4>
a000638c:	40f2                	lw	ra,28(sp)
a000638e:	4462                	lw	s0,24(sp)
a0006390:	97ba                	add	a5,a5,a4
a0006392:	4705                	li	a4,1
a0006394:	0055d693          	srli	a3,a1,0x5
a0006398:	00b71733          	sll	a4,a4,a1
a000639c:	44d7d70b          	srw	a4,a5,a3,2
a00063a0:	6105                	addi	sp,sp,32
a00063a2:	8082                	ret

a00063a4 <qcc74x_gpio_read>:
a00063a4:	1101                	addi	sp,sp,-32
a00063a6:	cc22                	sw	s0,24(sp)
a00063a8:	842a                	mv	s0,a0
a00063aa:	852e                	mv	a0,a1
a00063ac:	ce06                	sw	ra,28(sp)
a00063ae:	c62e                	sw	a1,12(sp)
a00063b0:	71b010ef          	jal	ra,a00082ca <qcc74x_gpio_pad_check>
a00063b4:	405c                	lw	a5,4(s0)
a00063b6:	45b2                	lw	a1,12(sp)
a00063b8:	6705                	lui	a4,0x1
a00063ba:	8c470713          	addi	a4,a4,-1852 # 8c4 <__RFTLV_SIZE_HOLE+0xc4>
a00063be:	97ba                	add	a5,a5,a4
a00063c0:	44b7c50b          	lrw	a0,a5,a1,2
a00063c4:	40f2                	lw	ra,28(sp)
a00063c6:	4462                	lw	s0,24(sp)
a00063c8:	71c5350b          	extu	a0,a0,28,28
a00063cc:	6105                	addi	sp,sp,32
a00063ce:	8082                	ret

a00063d0 <qcc74x_gpio_uart_init>:
a00063d0:	1101                	addi	sp,sp,-32
a00063d2:	cc22                	sw	s0,24(sp)
a00063d4:	ca26                	sw	s1,20(sp)
a00063d6:	4140                	lw	s0,4(a0)
a00063d8:	84aa                	mv	s1,a0
a00063da:	852e                	mv	a0,a1
a00063dc:	c632                	sw	a2,12(sp)
a00063de:	c42e                	sw	a1,8(sp)
a00063e0:	ce06                	sw	ra,28(sp)
a00063e2:	6e9010ef          	jal	ra,a00082ca <qcc74x_gpio_pad_check>
a00063e6:	45a2                	lw	a1,8(sp)
a00063e8:	46b1                	li	a3,12
a00063ea:	479d                	li	a5,7
a00063ec:	02d5f6b3          	remu	a3,a1,a3
a00063f0:	4632                	lw	a2,12(sp)
a00063f2:	0ad7e063          	bltu	a5,a3,a0006492 <qcc74x_gpio_uart_init+0xc2>
a00063f6:	00269713          	slli	a4,a3,0x2
a00063fa:	15442803          	lw	a6,340(s0)
a00063fe:	47bd                	li	a5,15
a0006400:	00e797b3          	sll	a5,a5,a4
a0006404:	fff7c793          	not	a5,a5
a0006408:	0107f833          	and	a6,a5,a6
a000640c:	00e617b3          	sll	a5,a2,a4
a0006410:	0107e7b3          	or	a5,a5,a6
a0006414:	4701                	li	a4,0
a0006416:	48bd                	li	a7,15
a0006418:	4321                	li	t1,8
a000641a:	00271513          	slli	a0,a4,0x2
a000641e:	00a89833          	sll	a6,a7,a0
a0006422:	00f87e33          	and	t3,a6,a5
a0006426:	00a61533          	sll	a0,a2,a0
a000642a:	00ae1d63          	bne	t3,a0,a0006444 <qcc74x_gpio_uart_init+0x74>
a000642e:	0ff77513          	zext.b	a0,a4
a0006432:	00d50963          	beq	a0,a3,a0006444 <qcc74x_gpio_uart_init+0x74>
a0006436:	01160763          	beq	a2,a7,a0006444 <qcc74x_gpio_uart_init+0x74>
a000643a:	fff84513          	not	a0,a6
a000643e:	8fe9                	and	a5,a5,a0
a0006440:	00f867b3          	or	a5,a6,a5
a0006444:	0705                	addi	a4,a4,1
a0006446:	fc671ae3          	bne	a4,t1,a000641a <qcc74x_gpio_uart_init+0x4a>
a000644a:	15842703          	lw	a4,344(s0)
a000644e:	4681                	li	a3,0
a0006450:	483d                	li	a6,15
a0006452:	48c1                	li	a7,16
a0006454:	00d81533          	sll	a0,a6,a3
a0006458:	00e57e33          	and	t3,a0,a4
a000645c:	00d61333          	sll	t1,a2,a3
a0006460:	006e1963          	bne	t3,t1,a0006472 <qcc74x_gpio_uart_init+0xa2>
a0006464:	01060763          	beq	a2,a6,a0006472 <qcc74x_gpio_uart_init+0xa2>
a0006468:	fff54313          	not	t1,a0
a000646c:	00e37733          	and	a4,t1,a4
a0006470:	8f49                	or	a4,a4,a0
a0006472:	0691                	addi	a3,a3,4
a0006474:	ff1690e3          	bne	a3,a7,a0006454 <qcc74x_gpio_uart_init+0x84>
a0006478:	14f42a23          	sw	a5,340(s0)
a000647c:	14e42c23          	sw	a4,344(s0)
a0006480:	4462                	lw	s0,24(sp)
a0006482:	40f2                	lw	ra,28(sp)
a0006484:	8526                	mv	a0,s1
a0006486:	44d2                	lw	s1,20(sp)
a0006488:	6609                	lui	a2,0x2
a000648a:	b0760613          	addi	a2,a2,-1273 # 1b07 <HeapMinSize+0xb07>
a000648e:	6105                	addi	sp,sp,32
a0006490:	b3cd                	j	a0006272 <qcc74x_gpio_init>
a0006492:	ff868713          	addi	a4,a3,-8 # 2000eff8 <remain_wifi_ram+0x1ffeeff8>
a0006496:	070a                	slli	a4,a4,0x2
a0006498:	0ff77713          	zext.b	a4,a4
a000649c:	15842803          	lw	a6,344(s0)
a00064a0:	47bd                	li	a5,15
a00064a2:	00e797b3          	sll	a5,a5,a4
a00064a6:	fff7c793          	not	a5,a5
a00064aa:	0107f833          	and	a6,a5,a6
a00064ae:	00e617b3          	sll	a5,a2,a4
a00064b2:	0107e7b3          	or	a5,a5,a6
a00064b6:	4701                	li	a4,0
a00064b8:	48bd                	li	a7,15
a00064ba:	4311                	li	t1,4
a00064bc:	00271513          	slli	a0,a4,0x2
a00064c0:	00a89833          	sll	a6,a7,a0
a00064c4:	00f87e33          	and	t3,a6,a5
a00064c8:	00a61533          	sll	a0,a2,a0
a00064cc:	00ae1f63          	bne	t3,a0,a00064ea <qcc74x_gpio_uart_init+0x11a>
a00064d0:	00870513          	addi	a0,a4,8
a00064d4:	0ff57513          	zext.b	a0,a0
a00064d8:	00d50963          	beq	a0,a3,a00064ea <qcc74x_gpio_uart_init+0x11a>
a00064dc:	01160763          	beq	a2,a7,a00064ea <qcc74x_gpio_uart_init+0x11a>
a00064e0:	fff84513          	not	a0,a6
a00064e4:	8fe9                	and	a5,a5,a0
a00064e6:	00f867b3          	or	a5,a6,a5
a00064ea:	0705                	addi	a4,a4,1
a00064ec:	fc6718e3          	bne	a4,t1,a00064bc <qcc74x_gpio_uart_init+0xec>
a00064f0:	15442703          	lw	a4,340(s0)
a00064f4:	4681                	li	a3,0
a00064f6:	483d                	li	a6,15
a00064f8:	02000893          	li	a7,32
a00064fc:	00d81533          	sll	a0,a6,a3
a0006500:	00e57e33          	and	t3,a0,a4
a0006504:	00d61333          	sll	t1,a2,a3
a0006508:	006e1963          	bne	t3,t1,a000651a <qcc74x_gpio_uart_init+0x14a>
a000650c:	01060763          	beq	a2,a6,a000651a <qcc74x_gpio_uart_init+0x14a>
a0006510:	fff54313          	not	t1,a0
a0006514:	00e37733          	and	a4,t1,a4
a0006518:	8f49                	or	a4,a4,a0
a000651a:	0691                	addi	a3,a3,4
a000651c:	ff1690e3          	bne	a3,a7,a00064fc <qcc74x_gpio_uart_init+0x12c>
a0006520:	14f42c23          	sw	a5,344(s0)
a0006524:	14e42a23          	sw	a4,340(s0)
a0006528:	bfa1                	j	a0006480 <qcc74x_gpio_uart_init+0xb0>

a000652a <qcc74x_i2c_disable.isra.0>:
a000652a:	411c                	lw	a5,0(a0)
a000652c:	08050713          	addi	a4,a0,128
a0006530:	9bf9                	andi	a5,a5,-2
a0006532:	c11c                	sw	a5,0(a0)
a0006534:	431c                	lw	a5,0(a4)
a0006536:	00c7e793          	ori	a5,a5,12
a000653a:	c31c                	sw	a5,0(a4)
a000653c:	415c                	lw	a5,4(a0)
a000653e:	00190737          	lui	a4,0x190
a0006542:	8fd9                	or	a5,a5,a4
a0006544:	c15c                	sw	a5,4(a0)
a0006546:	8082                	ret

a0006548 <qcc74x_i2c_enable.isra.0>:
a0006548:	411c                	lw	a5,0(a0)
a000654a:	0017e793          	ori	a5,a5,1
a000654e:	c11c                	sw	a5,0(a0)
a0006550:	8082                	ret

a0006552 <qcc74x_i2c_addr_config.isra.0>:
a0006552:	00052803          	lw	a6,0(a0)
a0006556:	fef87793          	andi	a5,a6,-17
a000655a:	ca91                	beqz	a3,a000656e <qcc74x_i2c_addr_config.isra.0+0x1c>
a000655c:	fff68793          	addi	a5,a3,-1
a0006560:	0796                	slli	a5,a5,0x5
a0006562:	f9f87813          	andi	a6,a6,-97
a0006566:	0107e7b3          	or	a5,a5,a6
a000656a:	0107e793          	ori	a5,a5,16
a000656e:	8eaa                	mv	t4,a0
a0006570:	588ed78b          	swia	a5,(t4),8,0
a0006574:	4781                	li	a5,0
a0006576:	00d7fc63          	bgeu	a5,a3,a000658e <qcc74x_i2c_addr_config.isra.0+0x3c>
a000657a:	00178813          	addi	a6,a5,1 # 400001 <remain_wifi_ram+0x3e0001>
a000657e:	80f6488b          	lrbu	a7,a2,a5,0
a0006582:	00fe8333          	add	t1,t4,a5
a0006586:	02d84363          	blt	a6,a3,a00065ac <qcc74x_i2c_addr_config.isra.0+0x5a>
a000658a:	01132023          	sw	a7,0(t1)
a000658e:	411c                	lw	a5,0(a0)
a0006590:	fffc06b7          	lui	a3,0xfffc0
a0006594:	0ff68693          	addi	a3,a3,255 # fffc00ff <__psram_limit+0x57bc00ff>
a0006598:	8ff5                	and	a5,a5,a3
a000659a:	05a2                	slli	a1,a1,0x8
a000659c:	8ddd                	or	a1,a1,a5
a000659e:	f7f5f793          	andi	a5,a1,-129
a00065a2:	c319                	beqz	a4,a00065a8 <qcc74x_i2c_addr_config.isra.0+0x56>
a00065a4:	0805e793          	ori	a5,a1,128
a00065a8:	c11c                	sw	a5,0(a0)
a00065aa:	8082                	ret
a00065ac:	00f60f33          	add	t5,a2,a5
a00065b0:	001f4803          	lbu	a6,1(t5)
a00065b4:	00881e13          	slli	t3,a6,0x8
a00065b8:	00278813          	addi	a6,a5,2
a00065bc:	00d84763          	blt	a6,a3,a00065ca <qcc74x_i2c_addr_config.isra.0+0x78>
a00065c0:	01c8e833          	or	a6,a7,t3
a00065c4:	01032023          	sw	a6,0(t1)
a00065c8:	b7d9                	j	a000658e <qcc74x_i2c_addr_config.isra.0+0x3c>
a00065ca:	002f4803          	lbu	a6,2(t5)
a00065ce:	0842                	slli	a6,a6,0x10
a00065d0:	01c86833          	or	a6,a6,t3
a00065d4:	01186833          	or	a6,a6,a7
a00065d8:	00378893          	addi	a7,a5,3
a00065dc:	fed8d4e3          	bge	a7,a3,a00065c4 <qcc74x_i2c_addr_config.isra.0+0x72>
a00065e0:	003f4883          	lbu	a7,3(t5)
a00065e4:	0791                	addi	a5,a5,4
a00065e6:	08e2                	slli	a7,a7,0x18
a00065e8:	0108e833          	or	a6,a7,a6
a00065ec:	01032023          	sw	a6,0(t1)
a00065f0:	f8d7dfe3          	bge	a5,a3,a000658e <qcc74x_i2c_addr_config.isra.0+0x3c>
a00065f4:	0ff7f793          	zext.b	a5,a5
a00065f8:	bfbd                	j	a0006576 <qcc74x_i2c_addr_config.isra.0+0x24>

a00065fa <qcc74x_i2c_init>:
a00065fa:	1141                	addi	sp,sp,-16
a00065fc:	c422                	sw	s0,8(sp)
a00065fe:	4140                	lw	s0,4(a0)
a0006600:	c04a                	sw	s2,0(sp)
a0006602:	892a                	mv	s2,a0
a0006604:	8522                	mv	a0,s0
a0006606:	c606                	sw	ra,12(sp)
a0006608:	c226                	sw	s1,4(sp)
a000660a:	84ae                	mv	s1,a1
a000660c:	3f39                	jal	a000652a <qcc74x_i2c_disable.isra.0>
a000660e:	405c                	lw	a5,4(s0)
a0006610:	6711                	lui	a4,0x4
a0006612:	f0070713          	addi	a4,a4,-256 # 3f00 <HeapMinSize+0x2f00>
a0006616:	8fd9                	or	a5,a5,a4
a0006618:	c05c                	sw	a5,4(s0)
a000661a:	00994583          	lbu	a1,9(s2)
a000661e:	451d                	li	a0,7
a0006620:	00492403          	lw	s0,4(s2)
a0006624:	4bd010ef          	jal	ra,a00082e0 <qcc74x_clk_get_peripheral_clock>
a0006628:	0014d793          	srli	a5,s1,0x1
a000662c:	953e                	add	a0,a0,a5
a000662e:	02955533          	divu	a0,a0,s1
a0006632:	6761                	lui	a4,0x18
a0006634:	6a070713          	addi	a4,a4,1696 # 186a0 <wifi_ram_max_size+0x106a0>
a0006638:	00250793          	addi	a5,a0,2
a000663c:	0e976963          	bltu	a4,s1,a000672e <qcc74x_i2c_init+0x134>
a0006640:	4711                	li	a4,4
a0006642:	02e7c7b3          	div	a5,a5,a4
a0006646:	4709                	li	a4,2
a0006648:	02e54733          	div	a4,a0,a4
a000664c:	8d1d                	sub	a0,a0,a5
a000664e:	85be                	mv	a1,a5
a0006650:	40f70633          	sub	a2,a4,a5
a0006654:	8d19                	sub	a0,a0,a4
a0006656:	4014                	lw	a3,0(s0)
a0006658:	4831                	li	a6,12
a000665a:	4701                	li	a4,0
a000665c:	00c6f893          	andi	a7,a3,12
a0006660:	01089563          	bne	a7,a6,a000666a <qcc74x_i2c_init+0x70>
a0006664:	01c6d713          	srli	a4,a3,0x1c
a0006668:	0705                	addi	a4,a4,1
a000666a:	8aa1                	andi	a3,a3,8
a000666c:	c291                	beqz	a3,a0006670 <qcc74x_i2c_init+0x76>
a000666e:	070d                	addi	a4,a4,3
a0006670:	86ae                	mv	a3,a1
a0006672:	00b04363          	bgtz	a1,a0006678 <qcc74x_i2c_init+0x7e>
a0006676:	4685                	li	a3,1
a0006678:	00f74463          	blt	a4,a5,a0006680 <qcc74x_i2c_init+0x86>
a000667c:	00170793          	addi	a5,a4,1
a0006680:	00c04363          	bgtz	a2,a0006686 <qcc74x_i2c_init+0x8c>
a0006684:	4605                	li	a2,1
a0006686:	10000813          	li	a6,256
a000668a:	00d85463          	bge	a6,a3,a0006692 <qcc74x_i2c_init+0x98>
a000668e:	10000693          	li	a3,256
a0006692:	10000813          	li	a6,256
a0006696:	00f85463          	bge	a6,a5,a000669e <qcc74x_i2c_init+0xa4>
a000669a:	10000793          	li	a5,256
a000669e:	10000813          	li	a6,256
a00066a2:	00c85463          	bge	a6,a2,a00066aa <qcc74x_i2c_init+0xb0>
a00066a6:	10000613          	li	a2,256
a00066aa:	0ff00893          	li	a7,255
a00066ae:	10000813          	li	a6,256
a00066b2:	00b8c663          	blt	a7,a1,a00066be <qcc74x_i2c_init+0xc4>
a00066b6:	882a                	mv	a6,a0
a00066b8:	00a04363          	bgtz	a0,a00066be <qcc74x_i2c_init+0xc4>
a00066bc:	4805                	li	a6,1
a00066be:	fff60593          	addi	a1,a2,-1
a00066c2:	fff68513          	addi	a0,a3,-1
a00066c6:	05c2                	slli	a1,a1,0x10
a00066c8:	40e78733          	sub	a4,a5,a4
a00066cc:	4889                	li	a7,2
a00066ce:	8dc9                	or	a1,a1,a0
a00066d0:	01175363          	bge	a4,a7,a00066d6 <qcc74x_i2c_init+0xdc>
a00066d4:	4709                	li	a4,2
a00066d6:	177d                	addi	a4,a4,-1
a00066d8:	0722                	slli	a4,a4,0x8
a00066da:	8f4d                	or	a4,a4,a1
a00066dc:	fff80593          	addi	a1,a6,-1
a00066e0:	05e2                	slli	a1,a1,0x18
a00066e2:	8f4d                	or	a4,a4,a1
a00066e4:	cc18                	sw	a4,24(s0)
a00066e6:	97b2                	add	a5,a5,a2
a00066e8:	10000713          	li	a4,256
a00066ec:	00f75463          	bge	a4,a5,a00066f4 <qcc74x_i2c_init+0xfa>
a00066f0:	10000793          	li	a5,256
a00066f4:	17fd                	addi	a5,a5,-1
a00066f6:	01079713          	slli	a4,a5,0x10
a00066fa:	8f49                	or	a4,a4,a0
a00066fc:	96c2                	add	a3,a3,a6
a00066fe:	10000613          	li	a2,256
a0006702:	8f4d                	or	a4,a4,a1
a0006704:	00d65463          	bge	a2,a3,a000670c <qcc74x_i2c_init+0x112>
a0006708:	10000693          	li	a3,256
a000670c:	16fd                	addi	a3,a3,-1
a000670e:	06a2                	slli	a3,a3,0x8
a0006710:	8ed9                	or	a3,a3,a4
a0006712:	01051713          	slli	a4,a0,0x10
a0006716:	8f49                	or	a4,a4,a0
a0006718:	07a2                	slli	a5,a5,0x8
a000671a:	8fd9                	or	a5,a5,a4
a000671c:	c814                	sw	a3,16(s0)
a000671e:	8fcd                	or	a5,a5,a1
a0006720:	40b2                	lw	ra,12(sp)
a0006722:	c85c                	sw	a5,20(s0)
a0006724:	4422                	lw	s0,8(sp)
a0006726:	4492                	lw	s1,4(sp)
a0006728:	4902                	lw	s2,0(sp)
a000672a:	0141                	addi	sp,sp,16
a000672c:	8082                	ret
a000672e:	468d                	li	a3,3
a0006730:	02d7c5b3          	div	a1,a5,a3
a0006734:	4719                	li	a4,6
a0006736:	00350793          	addi	a5,a0,3
a000673a:	02e7c7b3          	div	a5,a5,a4
a000673e:	00150713          	addi	a4,a0,1
a0006742:	8d0d                	sub	a0,a0,a1
a0006744:	02d74733          	div	a4,a4,a3
a0006748:	40f70633          	sub	a2,a4,a5
a000674c:	8d19                	sub	a0,a0,a4
a000674e:	b721                	j	a0006656 <qcc74x_i2c_init+0x5c>

a0006750 <qcc74x_i2c_transfer>:
a0006750:	4789                	li	a5,2
a0006752:	02c7d463          	bge	a5,a2,a000677a <qcc74x_i2c_transfer+0x2a>
a0006756:	5529                	li	a0,-22
a0006758:	8082                	ret
a000675a:	5529                	li	a0,-22
a000675c:	40b6                	lw	ra,76(sp)
a000675e:	4426                	lw	s0,72(sp)
a0006760:	4496                	lw	s1,68(sp)
a0006762:	4906                	lw	s2,64(sp)
a0006764:	59f2                	lw	s3,60(sp)
a0006766:	5a62                	lw	s4,56(sp)
a0006768:	5ad2                	lw	s5,52(sp)
a000676a:	5b42                	lw	s6,48(sp)
a000676c:	5bb2                	lw	s7,44(sp)
a000676e:	5c22                	lw	s8,40(sp)
a0006770:	5c92                	lw	s9,36(sp)
a0006772:	5d02                	lw	s10,32(sp)
a0006774:	4df2                	lw	s11,28(sp)
a0006776:	6161                	addi	sp,sp,80
a0006778:	8082                	ret
a000677a:	715d                	addi	sp,sp,-80
a000677c:	c2a6                	sw	s1,68(sp)
a000677e:	84aa                	mv	s1,a0
a0006780:	4148                	lw	a0,4(a0)
a0006782:	d65e                	sw	s7,44(sp)
a0006784:	f0100bb7          	lui	s7,0xf0100
a0006788:	c0ca                	sw	s2,64(sp)
a000678a:	de4e                	sw	s3,60(sp)
a000678c:	dc52                	sw	s4,56(sp)
a000678e:	d462                	sw	s8,40(sp)
a0006790:	d266                	sw	s9,36(sp)
a0006792:	c686                	sw	ra,76(sp)
a0006794:	c4a2                	sw	s0,72(sp)
a0006796:	da56                	sw	s5,52(sp)
a0006798:	d85a                	sw	s6,48(sp)
a000679a:	d06a                	sw	s10,32(sp)
a000679c:	ce6e                	sw	s11,28(sp)
a000679e:	c232                	sw	a2,4(sp)
a00067a0:	8a2e                	mv	s4,a1
a00067a2:	4901                	li	s2,0
a00067a4:	3359                	jal	a000652a <qcc74x_i2c_disable.isra.0>
a00067a6:	4c31                	li	s8,12
a00067a8:	1bfd                	addi	s7,s7,-1
a00067aa:	4c91                	li	s9,4
a00067ac:	06400993          	li	s3,100
a00067b0:	4792                	lw	a5,4(sp)
a00067b2:	00f94463          	blt	s2,a5,a00067ba <qcc74x_i2c_transfer+0x6a>
a00067b6:	4501                	li	a0,0
a00067b8:	b755                	j	a000675c <qcc74x_i2c_transfer+0xc>
a00067ba:	03890633          	mul	a2,s2,s8
a00067be:	40c8                	lw	a0,4(s1)
a00067c0:	00ca06b3          	add	a3,s4,a2
a00067c4:	0026d783          	lhu	a5,2(a3)
a00067c8:	a0ca458b          	lrhu	a1,s4,a2,0
a00067cc:	42d0                	lw	a2,4(a3)
a00067ce:	0417b70b          	extu	a4,a5,1,1
a00067d2:	0407f793          	andi	a5,a5,64
a00067d6:	c7d9                	beqz	a5,a0006864 <qcc74x_i2c_transfer+0x114>
a00067d8:	0086c683          	lbu	a3,8(a3)
a00067dc:	0905                	addi	s2,s2,1
a00067de:	3c09390b          	extu	s2,s2,15,0
a00067e2:	3b85                	jal	a0006552 <qcc74x_i2c_addr_config.isra.0>
a00067e4:	8752                	mv	a4,s4
a00067e6:	2189170b          	mula	a4,s2,s8
a00067ea:	10000793          	li	a5,256
a00067ee:	00875403          	lhu	s0,8(a4)
a00067f2:	f687e4e3          	bltu	a5,s0,a000675a <qcc74x_i2c_transfer+0xa>
a00067f6:	40d0                	lw	a2,4(s1)
a00067f8:	0ff005b7          	lui	a1,0xff00
a00067fc:	421c                	lw	a5,0(a2)
a00067fe:	0177f6b3          	and	a3,a5,s7
a0006802:	fff40793          	addi	a5,s0,-1
a0006806:	07d2                	slli	a5,a5,0x14
a0006808:	8fed                	and	a5,a5,a1
a000680a:	8fd5                	or	a5,a5,a3
a000680c:	c21c                	sw	a5,0(a2)
a000680e:	00275783          	lhu	a5,2(a4)
a0006812:	0017f693          	andi	a3,a5,1
a0006816:	0047f613          	andi	a2,a5,4
a000681a:	40dc                	lw	a5,4(s1)
a000681c:	10068663          	beqz	a3,a0006928 <qcc74x_i2c_transfer+0x1d8>
a0006820:	4394                	lw	a3,0(a5)
a0006822:	0026e693          	ori	a3,a3,2
a0006826:	c394                	sw	a3,0(a5)
a0006828:	20061563          	bnez	a2,a0006a32 <qcc74x_i2c_transfer+0x2e2>
a000682c:	0044ad03          	lw	s10,4(s1)
a0006830:	00472b03          	lw	s6,4(a4)
a0006834:	4d8d                	li	s11,3
a0006836:	856a                	mv	a0,s10
a0006838:	3b01                	jal	a0006548 <qcc74x_i2c_enable.isra.0>
a000683a:	028de863          	bltu	s11,s0,a000686a <qcc74x_i2c_transfer+0x11a>
a000683e:	e059                	bnez	s0,a00068c4 <qcc74x_i2c_transfer+0x174>
a0006840:	c2fba097          	auipc	ra,0xc2fba
a0006844:	3a8080e7          	jalr	936(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a0006848:	8d2a                	mv	s10,a0
a000684a:	8dae                	mv	s11,a1
a000684c:	40c8                	lw	a0,4(s1)
a000684e:	455c                	lw	a5,12(a0)
a0006850:	8b85                	andi	a5,a5,1
a0006852:	e3e9                	bnez	a5,a0006914 <qcc74x_i2c_transfer+0x1c4>
a0006854:	415c                	lw	a5,4(a0)
a0006856:	8b85                	andi	a5,a5,1
a0006858:	cfd5                	beqz	a5,a0006914 <qcc74x_i2c_transfer+0x1c4>
a000685a:	39c1                	jal	a000652a <qcc74x_i2c_disable.isra.0>
a000685c:	0905                	addi	s2,s2,1
a000685e:	3c09390b          	extu	s2,s2,15,0
a0006862:	b7b9                	j	a00067b0 <qcc74x_i2c_transfer+0x60>
a0006864:	4681                	li	a3,0
a0006866:	31f5                	jal	a0006552 <qcc74x_i2c_addr_config.isra.0>
a0006868:	bfb5                	j	a00067e4 <qcc74x_i2c_transfer+0x94>
a000686a:	c2fba097          	auipc	ra,0xc2fba
a000686e:	37e080e7          	jalr	894(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a0006872:	872a                	mv	a4,a0
a0006874:	87ae                	mv	a5,a1
a0006876:	084d2683          	lw	a3,132(s10)
a000687a:	3006f693          	andi	a3,a3,768
a000687e:	c29d                	beqz	a3,a00068a4 <qcc74x_i2c_transfer+0x154>
a0006880:	08cd2783          	lw	a5,140(s10)
a0006884:	0b11                	addi	s6,s6,4
a0006886:	1471                	addi	s0,s0,-4
a0006888:	0087d713          	srli	a4,a5,0x8
a000688c:	fefb0e23          	sb	a5,-4(s6)
a0006890:	feeb0ea3          	sb	a4,-3(s6)
a0006894:	0107d713          	srli	a4,a5,0x10
a0006898:	83e1                	srli	a5,a5,0x18
a000689a:	feeb0f23          	sb	a4,-2(s6)
a000689e:	fefb0fa3          	sb	a5,-1(s6)
a00068a2:	bf61                	j	a000683a <qcc74x_i2c_transfer+0xea>
a00068a4:	c43a                	sw	a4,8(sp)
a00068a6:	c63e                	sw	a5,12(sp)
a00068a8:	c2fba097          	auipc	ra,0xc2fba
a00068ac:	340080e7          	jalr	832(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a00068b0:	4722                	lw	a4,8(sp)
a00068b2:	47b2                	lw	a5,12(sp)
a00068b4:	c2e51577          	sub64	a0,a0,a4
a00068b8:	e199                	bnez	a1,a00068be <qcc74x_i2c_transfer+0x16e>
a00068ba:	faa9fee3          	bgeu	s3,a0,a0006876 <qcc74x_i2c_transfer+0x126>
a00068be:	f8c00513          	li	a0,-116
a00068c2:	bd69                	j	a000675c <qcc74x_i2c_transfer+0xc>
a00068c4:	c2fba097          	auipc	ra,0xc2fba
a00068c8:	324080e7          	jalr	804(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a00068cc:	872a                	mv	a4,a0
a00068ce:	87ae                	mv	a5,a1
a00068d0:	084d2683          	lw	a3,132(s10)
a00068d4:	3006f693          	andi	a3,a3,768
a00068d8:	c285                	beqz	a3,a00068f8 <qcc74x_i2c_transfer+0x1a8>
a00068da:	08cd2683          	lw	a3,140(s10)
a00068de:	4781                	li	a5,0
a00068e0:	f687f0e3          	bgeu	a5,s0,a0006840 <qcc74x_i2c_transfer+0xf0>
a00068e4:	00379713          	slli	a4,a5,0x3
a00068e8:	00e6d733          	srl	a4,a3,a4
a00068ec:	00fb570b          	srb	a4,s6,a5,0
a00068f0:	0785                	addi	a5,a5,1
a00068f2:	0ff7f793          	zext.b	a5,a5
a00068f6:	b7ed                	j	a00068e0 <qcc74x_i2c_transfer+0x190>
a00068f8:	c43a                	sw	a4,8(sp)
a00068fa:	c63e                	sw	a5,12(sp)
a00068fc:	c2fba097          	auipc	ra,0xc2fba
a0006900:	2ec080e7          	jalr	748(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a0006904:	4722                	lw	a4,8(sp)
a0006906:	47b2                	lw	a5,12(sp)
a0006908:	c2e51577          	sub64	a0,a0,a4
a000690c:	f9cd                	bnez	a1,a00068be <qcc74x_i2c_transfer+0x16e>
a000690e:	fca9f1e3          	bgeu	s3,a0,a00068d0 <qcc74x_i2c_transfer+0x180>
a0006912:	b775                	j	a00068be <qcc74x_i2c_transfer+0x16e>
a0006914:	c2fba097          	auipc	ra,0xc2fba
a0006918:	2d4080e7          	jalr	724(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a000691c:	c3a51577          	sub64	a0,a0,s10
a0006920:	fdd9                	bnez	a1,a00068be <qcc74x_i2c_transfer+0x16e>
a0006922:	f2a9f5e3          	bgeu	s3,a0,a000684c <qcc74x_i2c_transfer+0xfc>
a0006926:	bf61                	j	a00068be <qcc74x_i2c_transfer+0x16e>
a0006928:	4394                	lw	a3,0(a5)
a000692a:	9af5                	andi	a3,a3,-3
a000692c:	c394                	sw	a3,0(a5)
a000692e:	10061263          	bnez	a2,a0006a32 <qcc74x_i2c_transfer+0x2e2>
a0006932:	00472d03          	lw	s10,4(a4)
a0006936:	0044ab03          	lw	s6,4(s1)
a000693a:	4d8d                	li	s11,3
a000693c:	028dee63          	bltu	s11,s0,a0006978 <qcc74x_i2c_transfer+0x228>
a0006940:	e879                	bnez	s0,a0006a16 <qcc74x_i2c_transfer+0x2c6>
a0006942:	c2fba097          	auipc	ra,0xc2fba
a0006946:	2a6080e7          	jalr	678(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a000694a:	8d2a                	mv	s10,a0
a000694c:	8dae                	mv	s11,a1
a000694e:	40c8                	lw	a0,4(s1)
a0006950:	455c                	lw	a5,12(a0)
a0006952:	8b85                	andi	a5,a5,1
a0006954:	eb81                	bnez	a5,a0006964 <qcc74x_i2c_transfer+0x214>
a0006956:	415c                	lw	a5,4(a0)
a0006958:	8b85                	andi	a5,a5,1
a000695a:	c789                	beqz	a5,a0006964 <qcc74x_i2c_transfer+0x214>
a000695c:	415c                	lw	a5,4(a0)
a000695e:	8ba1                	andi	a5,a5,8
a0006960:	ee078de3          	beqz	a5,a000685a <qcc74x_i2c_transfer+0x10a>
a0006964:	c2fba097          	auipc	ra,0xc2fba
a0006968:	284080e7          	jalr	644(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a000696c:	c3a51577          	sub64	a0,a0,s10
a0006970:	f5b9                	bnez	a1,a00068be <qcc74x_i2c_transfer+0x16e>
a0006972:	fca9fee3          	bgeu	s3,a0,a000694e <qcc74x_i2c_transfer+0x1fe>
a0006976:	b7a1                	j	a00068be <qcc74x_i2c_transfer+0x16e>
a0006978:	4781                	li	a5,0
a000697a:	4a81                	li	s5,0
a000697c:	80fd470b          	lrbu	a4,s10,a5,0
a0006980:	00379613          	slli	a2,a5,0x3
a0006984:	0785                	addi	a5,a5,1
a0006986:	00c71733          	sll	a4,a4,a2
a000698a:	9aba                	add	s5,s5,a4
a000698c:	ff9798e3          	bne	a5,s9,a000697c <qcc74x_i2c_transfer+0x22c>
a0006990:	c2fba097          	auipc	ra,0xc2fba
a0006994:	258080e7          	jalr	600(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a0006998:	872a                	mv	a4,a0
a000699a:	87ae                	mv	a5,a1
a000699c:	084b2603          	lw	a2,132(s6)
a00069a0:	8a0d                	andi	a2,a2,3
a00069a2:	ce01                	beqz	a2,a00069ba <qcc74x_i2c_transfer+0x26a>
a00069a4:	095b2423          	sw	s5,136(s6)
a00069a8:	40c8                	lw	a0,4(s1)
a00069aa:	411c                	lw	a5,0(a0)
a00069ac:	8b85                	andi	a5,a5,1
a00069ae:	e399                	bnez	a5,a00069b4 <qcc74x_i2c_transfer+0x264>
a00069b0:	b99ff0ef          	jal	ra,a0006548 <qcc74x_i2c_enable.isra.0>
a00069b4:	0d11                	addi	s10,s10,4
a00069b6:	1471                	addi	s0,s0,-4
a00069b8:	b751                	j	a000693c <qcc74x_i2c_transfer+0x1ec>
a00069ba:	c43a                	sw	a4,8(sp)
a00069bc:	c63e                	sw	a5,12(sp)
a00069be:	c2fba097          	auipc	ra,0xc2fba
a00069c2:	22a080e7          	jalr	554(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a00069c6:	4722                	lw	a4,8(sp)
a00069c8:	47b2                	lw	a5,12(sp)
a00069ca:	c2e51577          	sub64	a0,a0,a4
a00069ce:	ee0598e3          	bnez	a1,a00068be <qcc74x_i2c_transfer+0x16e>
a00069d2:	fca9f5e3          	bgeu	s3,a0,a000699c <qcc74x_i2c_transfer+0x24c>
a00069d6:	b5e5                	j	a00068be <qcc74x_i2c_transfer+0x16e>
a00069d8:	80fd468b          	lrbu	a3,s10,a5,0
a00069dc:	00379613          	slli	a2,a5,0x3
a00069e0:	0785                	addi	a5,a5,1
a00069e2:	00c696b3          	sll	a3,a3,a2
a00069e6:	9ab6                	add	s5,s5,a3
a00069e8:	0ff7f793          	zext.b	a5,a5
a00069ec:	fe87e6e3          	bltu	a5,s0,a00069d8 <qcc74x_i2c_transfer+0x288>
a00069f0:	c2fba097          	auipc	ra,0xc2fba
a00069f4:	1f8080e7          	jalr	504(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a00069f8:	8d2a                	mv	s10,a0
a00069fa:	8dae                	mv	s11,a1
a00069fc:	084b2783          	lw	a5,132(s6)
a0006a00:	8b8d                	andi	a5,a5,3
a0006a02:	cf89                	beqz	a5,a0006a1c <qcc74x_i2c_transfer+0x2cc>
a0006a04:	095b2423          	sw	s5,136(s6)
a0006a08:	40c8                	lw	a0,4(s1)
a0006a0a:	411c                	lw	a5,0(a0)
a0006a0c:	8b85                	andi	a5,a5,1
a0006a0e:	fb95                	bnez	a5,a0006942 <qcc74x_i2c_transfer+0x1f2>
a0006a10:	b39ff0ef          	jal	ra,a0006548 <qcc74x_i2c_enable.isra.0>
a0006a14:	b73d                	j	a0006942 <qcc74x_i2c_transfer+0x1f2>
a0006a16:	4781                	li	a5,0
a0006a18:	4a81                	li	s5,0
a0006a1a:	bfc9                	j	a00069ec <qcc74x_i2c_transfer+0x29c>
a0006a1c:	c2fba097          	auipc	ra,0xc2fba
a0006a20:	1cc080e7          	jalr	460(ra) # 62fc0be8 <qcc74x_mtimer_get_time_ms>
a0006a24:	c3a51577          	sub64	a0,a0,s10
a0006a28:	e8059be3          	bnez	a1,a00068be <qcc74x_i2c_transfer+0x16e>
a0006a2c:	fca9f8e3          	bgeu	s3,a0,a00069fc <qcc74x_i2c_transfer+0x2ac>
a0006a30:	b579                	j	a00068be <qcc74x_i2c_transfer+0x16e>
a0006a32:	40c8                	lw	a0,4(s1)
a0006a34:	b15ff0ef          	jal	ra,a0006548 <qcc74x_i2c_enable.isra.0>
a0006a38:	b515                	j	a000685c <qcc74x_i2c_transfer+0x10c>

a0006a3a <qcc74x_spi_init>:
a0006a3a:	1141                	addi	sp,sp,-16
a0006a3c:	c422                	sw	s0,8(sp)
a0006a3e:	c606                	sw	ra,12(sp)
a0006a40:	c226                	sw	s1,4(sp)
a0006a42:	200007b7          	lui	a5,0x20000
a0006a46:	0045c703          	lbu	a4,4(a1) # ff00004 <remain_wifi_ram+0xfee0004>
a0006a4a:	5107a783          	lw	a5,1296(a5) # 20000510 <remain_wifi_ram+0x1ffe0510>
a0006a4e:	842e                	mv	s0,a1
a0006a50:	ef59                	bnez	a4,a0006aee <qcc74x_spi_init+0xb4>
a0006a52:	6705                	lui	a4,0x1
a0006a54:	8fd9                	or	a5,a5,a4
a0006a56:	20000737          	lui	a4,0x20000
a0006a5a:	50f72823          	sw	a5,1296(a4) # 20000510 <remain_wifi_ram+0x1ffe0510>
a0006a5e:	00954583          	lbu	a1,9(a0)
a0006a62:	4144                	lw	s1,4(a0)
a0006a64:	4519                	li	a0,6
a0006a66:	07b010ef          	jal	ra,a00082e0 <qcc74x_clk_get_peripheral_clock>
a0006a6a:	00155713          	srli	a4,a0,0x1
a0006a6e:	46a9                	li	a3,10
a0006a70:	02d70733          	mul	a4,a4,a3
a0006a74:	401c                	lw	a5,0(s0)
a0006a76:	4625                	li	a2,9
a0006a78:	02f75733          	divu	a4,a4,a5
a0006a7c:	4781                	li	a5,0
a0006a7e:	0715                	addi	a4,a4,5
a0006a80:	00e67563          	bgeu	a2,a4,a0006a8a <qcc74x_spi_init+0x50>
a0006a84:	02d757b3          	divu	a5,a4,a3
a0006a88:	17fd                	addi	a5,a5,-1
a0006a8a:	0ff00713          	li	a4,255
a0006a8e:	00f77463          	bgeu	a4,a5,a0006a96 <qcc74x_spi_init+0x5c>
a0006a92:	0ff00793          	li	a5,255
a0006a96:	01879693          	slli	a3,a5,0x18
a0006a9a:	01079713          	slli	a4,a5,0x10
a0006a9e:	8f55                	or	a4,a4,a3
a0006aa0:	8f5d                	or	a4,a4,a5
a0006aa2:	00879693          	slli	a3,a5,0x8
a0006aa6:	8f55                	or	a4,a4,a3
a0006aa8:	c898                	sw	a4,16(s1)
a0006aaa:	48d8                	lw	a4,20(s1)
a0006aac:	f0077713          	andi	a4,a4,-256
a0006ab0:	8fd9                	or	a5,a5,a4
a0006ab2:	c8dc                	sw	a5,20(s1)
a0006ab4:	00844783          	lbu	a5,8(s0)
a0006ab8:	4098                	lw	a4,0(s1)
a0006aba:	ef95                	bnez	a5,a0006af6 <qcc74x_spi_init+0xbc>
a0006abc:	77c1                	lui	a5,0xffff0
a0006abe:	47f78793          	addi	a5,a5,1151 # ffff047f <__psram_limit+0x57bf047f>
a0006ac2:	8f7d                	and	a4,a4,a5
a0006ac4:	00744603          	lbu	a2,7(s0)
a0006ac8:	4685                	li	a3,1
a0006aca:	fbf77793          	andi	a5,a4,-65
a0006ace:	00d61463          	bne	a2,a3,a0006ad6 <qcc74x_spi_init+0x9c>
a0006ad2:	04076793          	ori	a5,a4,64
a0006ad6:	00544703          	lbu	a4,5(s0)
a0006ada:	4689                	li	a3,2
a0006adc:	08d70963          	beq	a4,a3,a0006b6e <qcc74x_spi_init+0x134>
a0006ae0:	02e6e263          	bltu	a3,a4,a0006b04 <qcc74x_spi_init+0xca>
a0006ae4:	e351                	bnez	a4,a0006b68 <qcc74x_spi_init+0x12e>
a0006ae6:	9bbd                	andi	a5,a5,-17
a0006ae8:	0207e793          	ori	a5,a5,32
a0006aec:	a839                	j	a0006b0a <qcc74x_spi_init+0xd0>
a0006aee:	777d                	lui	a4,0xfffff
a0006af0:	177d                	addi	a4,a4,-1
a0006af2:	8ff9                	and	a5,a5,a4
a0006af4:	b78d                	j	a0006a56 <qcc74x_spi_init+0x1c>
a0006af6:	77c1                	lui	a5,0xffff0
a0006af8:	4ff78793          	addi	a5,a5,1279 # ffff04ff <__psram_limit+0x57bf04ff>
a0006afc:	8f7d                	and	a4,a4,a5
a0006afe:	08076713          	ori	a4,a4,128
a0006b02:	b7c9                	j	a0006ac4 <qcc74x_spi_init+0x8a>
a0006b04:	468d                	li	a3,3
a0006b06:	06d70763          	beq	a4,a3,a0006b74 <qcc74x_spi_init+0x13a>
a0006b0a:	00644703          	lbu	a4,6(s0)
a0006b0e:	9bc1                	andi	a5,a5,-16
a0006b10:	08048693          	addi	a3,s1,128
a0006b14:	177d                	addi	a4,a4,-1
a0006b16:	070a                	slli	a4,a4,0x2
a0006b18:	8fd9                	or	a5,a5,a4
a0006b1a:	c09c                	sw	a5,0(s1)
a0006b1c:	429c                	lw	a5,0(a3)
a0006b1e:	e0e10637          	lui	a2,0xe0e10
a0006b22:	167d                	addi	a2,a2,-1
a0006b24:	9bf1                	andi	a5,a5,-4
a0006b26:	00c7e793          	ori	a5,a5,12
a0006b2a:	c29c                	sw	a5,0(a3)
a0006b2c:	42dc                	lw	a5,4(a3)
a0006b2e:	001f0737          	lui	a4,0x1f0
a0006b32:	1f0005b7          	lui	a1,0x1f000
a0006b36:	8e7d                	and	a2,a2,a5
a0006b38:	00944783          	lbu	a5,9(s0)
a0006b3c:	07c2                	slli	a5,a5,0x10
a0006b3e:	8ff9                	and	a5,a5,a4
a0006b40:	00a44703          	lbu	a4,10(s0)
a0006b44:	0762                	slli	a4,a4,0x18
a0006b46:	8f6d                	and	a4,a4,a1
a0006b48:	8fd9                	or	a5,a5,a4
a0006b4a:	8fd1                	or	a5,a5,a2
a0006b4c:	c2dc                	sw	a5,4(a3)
a0006b4e:	00444703          	lbu	a4,4(s0)
a0006b52:	409c                	lw	a5,0(s1)
a0006b54:	e70d                	bnez	a4,a0006b7e <qcc74x_spi_init+0x144>
a0006b56:	9bf5                	andi	a5,a5,-3
a0006b58:	0017e793          	ori	a5,a5,1
a0006b5c:	40b2                	lw	ra,12(sp)
a0006b5e:	4422                	lw	s0,8(sp)
a0006b60:	c09c                	sw	a5,0(s1)
a0006b62:	4492                	lw	s1,4(sp)
a0006b64:	0141                	addi	sp,sp,16
a0006b66:	8082                	ret
a0006b68:	fcf7f793          	andi	a5,a5,-49
a0006b6c:	bf79                	j	a0006b0a <qcc74x_spi_init+0xd0>
a0006b6e:	0307e793          	ori	a5,a5,48
a0006b72:	bf61                	j	a0006b0a <qcc74x_spi_init+0xd0>
a0006b74:	fdf7f793          	andi	a5,a5,-33
a0006b78:	0107e793          	ori	a5,a5,16
a0006b7c:	b779                	j	a0006b0a <qcc74x_spi_init+0xd0>
a0006b7e:	9bf9                	andi	a5,a5,-2
a0006b80:	0027e793          	ori	a5,a5,2
a0006b84:	bfe1                	j	a0006b5c <qcc74x_spi_init+0x122>

a0006b86 <qcc74x_uart_init>:
a0006b86:	1141                	addi	sp,sp,-16
a0006b88:	c422                	sw	s0,8(sp)
a0006b8a:	c226                	sw	s1,4(sp)
a0006b8c:	c606                	sw	ra,12(sp)
a0006b8e:	84ae                	mv	s1,a1
a0006b90:	00954583          	lbu	a1,9(a0)
a0006b94:	4140                	lw	s0,4(a0)
a0006b96:	4515                	li	a0,5
a0006b98:	748010ef          	jal	ra,a00082e0 <qcc74x_clk_get_peripheral_clock>
a0006b9c:	4729                	li	a4,10
a0006b9e:	02e507b3          	mul	a5,a0,a4
a0006ba2:	4088                	lw	a0,0(s1)
a0006ba4:	4014                	lw	a3,0(s0)
a0006ba6:	4605                	li	a2,1
a0006ba8:	9af9                	andi	a3,a3,-2
a0006baa:	02a7d7b3          	divu	a5,a5,a0
a0006bae:	0795                	addi	a5,a5,5
a0006bb0:	02e7d7b3          	divu	a5,a5,a4
a0006bb4:	4058                	lw	a4,4(s0)
a0006bb6:	c014                	sw	a3,0(s0)
a0006bb8:	9b79                	andi	a4,a4,-2
a0006bba:	c058                	sw	a4,4(s0)
a0006bbc:	17fd                	addi	a5,a5,-1
a0006bbe:	0ef797f7          	pkbb16	a5,a5,a5
a0006bc2:	c41c                	sw	a5,8(s0)
a0006bc4:	0074c683          	lbu	a3,7(s1)
a0006bc8:	401c                	lw	a5,0(s0)
a0006bca:	4058                	lw	a4,4(s0)
a0006bcc:	0ac68c63          	beq	a3,a2,a0006c84 <qcc74x_uart_init+0xfe>
a0006bd0:	4609                	li	a2,2
a0006bd2:	0ac68e63          	beq	a3,a2,a0006c8e <qcc74x_uart_init+0x108>
a0006bd6:	e299                	bnez	a3,a0006bdc <qcc74x_uart_init+0x56>
a0006bd8:	9bbd                	andi	a5,a5,-17
a0006bda:	9b3d                	andi	a4,a4,-17
a0006bdc:	0054c683          	lbu	a3,5(s1)
a0006be0:	8ff7f793          	andi	a5,a5,-1793
a0006be4:	8ff77713          	andi	a4,a4,-1793
a0006be8:	0691                	addi	a3,a3,4
a0006bea:	06a2                	slli	a3,a3,0x8
a0006bec:	8fd5                	or	a5,a5,a3
a0006bee:	8f55                	or	a4,a4,a3
a0006bf0:	76f9                	lui	a3,0xffffe
a0006bf2:	7ff68693          	addi	a3,a3,2047 # ffffe7ff <__psram_limit+0x57bfe7ff>
a0006bf6:	8ff5                	and	a5,a5,a3
a0006bf8:	0064c683          	lbu	a3,6(s1)
a0006bfc:	06ae                	slli	a3,a3,0xb
a0006bfe:	8fd5                	or	a5,a5,a3
a0006c00:	0094c683          	lbu	a3,9(s1)
a0006c04:	ffd7f613          	andi	a2,a5,-3
a0006c08:	8a89                	andi	a3,a3,2
a0006c0a:	c299                	beqz	a3,a0006c10 <qcc74x_uart_init+0x8a>
a0006c0c:	0027e613          	ori	a2,a5,2
a0006c10:	76fd                	lui	a3,0xfffff
a0006c12:	7ff68693          	addi	a3,a3,2047 # fffff7ff <__psram_limit+0x57bff7ff>
a0006c16:	c010                	sw	a2,0(s0)
a0006c18:	8f75                	and	a4,a4,a3
a0006c1a:	c058                	sw	a4,4(s0)
a0006c1c:	4c5c                	lw	a5,28(s0)
a0006c1e:	08040693          	addi	a3,s0,128
a0006c22:	e0e10637          	lui	a2,0xe0e10
a0006c26:	9bed                	andi	a5,a5,-5
a0006c28:	cc5c                	sw	a5,28(s0)
a0006c2a:	445c                	lw	a5,12(s0)
a0006c2c:	167d                	addi	a2,a2,-1
a0006c2e:	001f0737          	lui	a4,0x1f0
a0006c32:	9bf9                	andi	a5,a5,-2
a0006c34:	c45c                	sw	a5,12(s0)
a0006c36:	401c                	lw	a5,0(s0)
a0006c38:	1f0005b7          	lui	a1,0x1f000
a0006c3c:	40b2                	lw	ra,12(sp)
a0006c3e:	0047e793          	ori	a5,a5,4
a0006c42:	c01c                	sw	a5,0(s0)
a0006c44:	42dc                	lw	a5,4(a3)
a0006c46:	8e7d                	and	a2,a2,a5
a0006c48:	00a4c783          	lbu	a5,10(s1)
a0006c4c:	07c2                	slli	a5,a5,0x10
a0006c4e:	8ff9                	and	a5,a5,a4
a0006c50:	00b4c703          	lbu	a4,11(s1)
a0006c54:	4492                	lw	s1,4(sp)
a0006c56:	0762                	slli	a4,a4,0x18
a0006c58:	8f6d                	and	a4,a4,a1
a0006c5a:	8fd9                	or	a5,a5,a4
a0006c5c:	8fd1                	or	a5,a5,a2
a0006c5e:	c2dc                	sw	a5,4(a3)
a0006c60:	429c                	lw	a5,0(a3)
a0006c62:	9bf1                	andi	a5,a5,-4
a0006c64:	00c7e793          	ori	a5,a5,12
a0006c68:	c29c                	sw	a5,0(a3)
a0006c6a:	57fd                	li	a5,-1
a0006c6c:	d05c                	sw	a5,36(s0)
a0006c6e:	4018                	lw	a4,0(s0)
a0006c70:	405c                	lw	a5,4(s0)
a0006c72:	00176713          	ori	a4,a4,1
a0006c76:	c018                	sw	a4,0(s0)
a0006c78:	0017e793          	ori	a5,a5,1
a0006c7c:	c05c                	sw	a5,4(s0)
a0006c7e:	4422                	lw	s0,8(sp)
a0006c80:	0141                	addi	sp,sp,16
a0006c82:	8082                	ret
a0006c84:	0307e793          	ori	a5,a5,48
a0006c88:	03076713          	ori	a4,a4,48
a0006c8c:	bf81                	j	a0006bdc <qcc74x_uart_init+0x56>
a0006c8e:	fdf7f793          	andi	a5,a5,-33
a0006c92:	fdf77713          	andi	a4,a4,-33
a0006c96:	0107e793          	ori	a5,a5,16
a0006c9a:	01076713          	ori	a4,a4,16
a0006c9e:	bf3d                	j	a0006bdc <qcc74x_uart_init+0x56>

a0006ca0 <flash_get_clock_delay.constprop.0.isra.0>:
a0006ca0:	2000b7b7          	lui	a5,0x2000b
a0006ca4:	4394                	lw	a3,0(a5)
a0006ca6:	4781                	li	a5,0
a0006ca8:	2cb6b70b          	extu	a4,a3,11,11
a0006cac:	c701                	beqz	a4,a0006cb4 <flash_get_clock_delay.constprop.0.isra.0+0x14>
a0006cae:	2886b78b          	extu	a5,a3,10,8
a0006cb2:	0785                	addi	a5,a5,1
a0006cb4:	2000b737          	lui	a4,0x2000b
a0006cb8:	5b58                	lw	a4,52(a4)
a0006cba:	85c18613          	addi	a2,gp,-1956 # 62fc1ce4 <g_flash_cfg>
a0006cbe:	00c75593          	srli	a1,a4,0xc
a0006cc2:	0305f593          	andi	a1,a1,48
a0006cc6:	8fcd                	or	a5,a5,a1
a0006cc8:	00f60123          	sb	a5,2(a2) # e0e10002 <__psram_limit+0x38a10002>
a0006ccc:	0016d793          	srli	a5,a3,0x1
a0006cd0:	8b89                	andi	a5,a5,2
a0006cd2:	1046b68b          	extu	a3,a3,4,4
a0006cd6:	8fd5                	or	a5,a5,a3
a0006cd8:	00675693          	srli	a3,a4,0x6
a0006cdc:	0716                	slli	a4,a4,0x5
a0006cde:	8ab1                	andi	a3,a3,12
a0006ce0:	06077713          	andi	a4,a4,96
a0006ce4:	8f55                	or	a4,a4,a3
a0006ce6:	8fd9                	or	a5,a5,a4
a0006ce8:	00f601a3          	sb	a5,3(a2)
a0006cec:	8082                	ret

a0006cee <qcc74x_adc_channel_config>:
a0006cee:	415c                	lw	a5,4(a0)
a0006cf0:	6705                	lui	a4,0x1
a0006cf2:	91070693          	addi	a3,a4,-1776 # 910 <__RFTLV_SIZE_HOLE+0x110>
a0006cf6:	40d7c50b          	lrw	a0,a5,a3,0
a0006cfa:	02000837          	lui	a6,0x2000
a0006cfe:	01057533          	and	a0,a0,a6
a0006d02:	e905                	bnez	a0,a0006d32 <qcc74x_adc_channel_config+0x44>
a0006d04:	4685                	li	a3,1
a0006d06:	5529                	li	a0,-22
a0006d08:	02c6e463          	bltu	a3,a2,a0006d30 <qcc74x_adc_channel_config+0x42>
a0006d0c:	90c70693          	addi	a3,a4,-1780
a0006d10:	40d7c70b          	lrw	a4,a5,a3,0
a0006d14:	7679                	lui	a2,0xffffe
a0006d16:	061d                	addi	a2,a2,7
a0006d18:	8e79                	and	a2,a2,a4
a0006d1a:	0005c703          	lbu	a4,0(a1) # 1f000000 <remain_wifi_ram+0x1efe0000>
a0006d1e:	0015c583          	lbu	a1,1(a1)
a0006d22:	0722                	slli	a4,a4,0x8
a0006d24:	058e                	slli	a1,a1,0x3
a0006d26:	8f4d                	or	a4,a4,a1
a0006d28:	8f51                	or	a4,a4,a2
a0006d2a:	40d7d70b          	srw	a4,a5,a3,0
a0006d2e:	4501                	li	a0,0
a0006d30:	8082                	ret
a0006d32:	4715                	li	a4,5
a0006d34:	0ac77b63          	bgeu	a4,a2,a0006dea <qcc74x_adc_channel_config+0xfc>
a0006d38:	4701                	li	a4,0
a0006d3a:	4501                	li	a0,0
a0006d3c:	4801                	li	a6,0
a0006d3e:	4f95                	li	t6,5
a0006d40:	00158f13          	addi	t5,a1,1
a0006d44:	4e99                	li	t4,6
a0006d46:	03f70e33          	mul	t3,a4,t6
a0006d4a:	82e5c30b          	lrbu	t1,a1,a4,1
a0006d4e:	82ef488b          	lrbu	a7,t5,a4,1
a0006d52:	0705                	addi	a4,a4,1
a0006d54:	01c31333          	sll	t1,t1,t3
a0006d58:	01c898b3          	sll	a7,a7,t3
a0006d5c:	00686833          	or	a6,a6,t1
a0006d60:	01156533          	or	a0,a0,a7
a0006d64:	ffd711e3          	bne	a4,t4,a0006d46 <qcc74x_adc_channel_config+0x58>
a0006d68:	6705                	lui	a4,0x1
a0006d6a:	91870893          	addi	a7,a4,-1768 # 918 <__RFTLV_SIZE_HOLE+0x118>
a0006d6e:	4117d80b          	srw	a6,a5,a7,0
a0006d72:	92070713          	addi	a4,a4,-1760
a0006d76:	40e7d50b          	srw	a0,a5,a4,0
a0006d7a:	4801                	li	a6,0
a0006d7c:	4701                	li	a4,0
a0006d7e:	4501                	li	a0,0
a0006d80:	ffa60e93          	addi	t4,a2,-6 # ffffdffa <__psram_limit+0x57bfdffa>
a0006d84:	4f15                	li	t5,5
a0006d86:	07d74963          	blt	a4,t4,a0006df8 <qcc74x_adc_channel_config+0x10a>
a0006d8a:	6705                	lui	a4,0x1
a0006d8c:	91c70593          	addi	a1,a4,-1764 # 91c <__RFTLV_SIZE_HOLE+0x11c>
a0006d90:	40b7d80b          	srw	a6,a5,a1,0
a0006d94:	92470713          	addi	a4,a4,-1756
a0006d98:	a81d                	j	a0006dce <qcc74x_adc_channel_config+0xe0>
a0006d9a:	03d70e33          	mul	t3,a4,t4
a0006d9e:	82e5c30b          	lrbu	t1,a1,a4,1
a0006da2:	82ef488b          	lrbu	a7,t5,a4,1
a0006da6:	0705                	addi	a4,a4,1
a0006da8:	01c31333          	sll	t1,t1,t3
a0006dac:	01c898b3          	sll	a7,a7,t3
a0006db0:	00686833          	or	a6,a6,t1
a0006db4:	01156533          	or	a0,a0,a7
a0006db8:	0ff77893          	zext.b	a7,a4
a0006dbc:	fcc8efe3          	bltu	a7,a2,a0006d9a <qcc74x_adc_channel_config+0xac>
a0006dc0:	6705                	lui	a4,0x1
a0006dc2:	91870593          	addi	a1,a4,-1768 # 918 <__RFTLV_SIZE_HOLE+0x118>
a0006dc6:	40b7d80b          	srw	a6,a5,a1,0
a0006dca:	92070713          	addi	a4,a4,-1760
a0006dce:	40e7d50b          	srw	a0,a5,a4,0
a0006dd2:	40d7c70b          	lrw	a4,a5,a3,0
a0006dd6:	fe2005b7          	lui	a1,0xfe200
a0006dda:	15fd                	addi	a1,a1,-1
a0006ddc:	167d                	addi	a2,a2,-1
a0006dde:	8f6d                	and	a4,a4,a1
a0006de0:	0656                	slli	a2,a2,0x15
a0006de2:	8e59                	or	a2,a2,a4
a0006de4:	40d7d60b          	srw	a2,a5,a3,0
a0006de8:	b799                	j	a0006d2e <qcc74x_adc_channel_config+0x40>
a0006dea:	4701                	li	a4,0
a0006dec:	4501                	li	a0,0
a0006dee:	4801                	li	a6,0
a0006df0:	4e95                	li	t4,5
a0006df2:	00158f13          	addi	t5,a1,1 # fe200001 <__psram_limit+0x55e00001>
a0006df6:	b7c9                	j	a0006db8 <qcc74x_adc_channel_config+0xca>
a0006df8:	03e70e33          	mul	t3,a4,t5
a0006dfc:	00670893          	addi	a7,a4,6
a0006e00:	03159f8b          	addsl	t6,a1,a7,1
a0006e04:	8315c30b          	lrbu	t1,a1,a7,1
a0006e08:	001fc883          	lbu	a7,1(t6)
a0006e0c:	0705                	addi	a4,a4,1
a0006e0e:	0ff77713          	zext.b	a4,a4
a0006e12:	01c31333          	sll	t1,t1,t3
a0006e16:	01c898b3          	sll	a7,a7,t3
a0006e1a:	00686833          	or	a6,a6,t1
a0006e1e:	01156533          	or	a0,a0,a7
a0006e22:	b795                	j	a0006d86 <qcc74x_adc_channel_config+0x98>

a0006e24 <qcc74x_adc_start_conversion>:
a0006e24:	1141                	addi	sp,sp,-16
a0006e26:	c226                	sw	s1,4(sp)
a0006e28:	4144                	lw	s1,4(a0)
a0006e2a:	c422                	sw	s0,8(sp)
a0006e2c:	6405                	lui	s0,0x1
a0006e2e:	90c40413          	addi	s0,s0,-1780 # 90c <__RFTLV_SIZE_HOLE+0x10c>
a0006e32:	4084c78b          	lrw	a5,s1,s0,0
a0006e36:	c606                	sw	ra,12(sp)
a0006e38:	06400513          	li	a0,100
a0006e3c:	9bf5                	andi	a5,a5,-3
a0006e3e:	4084d78b          	srw	a5,s1,s0,0
a0006e42:	c2fba097          	auipc	ra,0xc2fba
a0006e46:	dc0080e7          	jalr	-576(ra) # 62fc0c02 <qcc74x_mtimer_delay_us>
a0006e4a:	4084c78b          	lrw	a5,s1,s0,0
a0006e4e:	40b2                	lw	ra,12(sp)
a0006e50:	0027e793          	ori	a5,a5,2
a0006e54:	4084d78b          	srw	a5,s1,s0,0
a0006e58:	4422                	lw	s0,8(sp)
a0006e5a:	4492                	lw	s1,4(sp)
a0006e5c:	0141                	addi	sp,sp,16
a0006e5e:	8082                	ret

a0006e60 <qcc74x_adc_stop_conversion>:
a0006e60:	4154                	lw	a3,4(a0)
a0006e62:	6785                	lui	a5,0x1
a0006e64:	90c78793          	addi	a5,a5,-1780 # 90c <__RFTLV_SIZE_HOLE+0x10c>
a0006e68:	40f6c70b          	lrw	a4,a3,a5,0
a0006e6c:	9b75                	andi	a4,a4,-3
a0006e6e:	40f6d70b          	srw	a4,a3,a5,0
a0006e72:	8082                	ret

a0006e74 <qcc74x_update_adc_trim>:
a0006e74:	7179                	addi	sp,sp,-48
a0006e76:	d422                	sw	s0,40(sp)
a0006e78:	4140                	lw	s0,4(a0)
a0006e7a:	6785                	lui	a5,0x1
a0006e7c:	cc52                	sw	s4,24(sp)
a0006e7e:	91078a13          	addi	s4,a5,-1776 # 910 <__RFTLV_SIZE_HOLE+0x110>
a0006e82:	4144470b          	lrw	a4,s0,s4,0
a0006e86:	fe0006b7          	lui	a3,0xfe000
a0006e8a:	16fd                	addi	a3,a3,-1
a0006e8c:	8f75                	and	a4,a4,a3
a0006e8e:	d226                	sw	s1,36(sp)
a0006e90:	d04a                	sw	s2,32(sp)
a0006e92:	ce4e                	sw	s3,28(sp)
a0006e94:	ca56                	sw	s5,20(sp)
a0006e96:	c85a                	sw	s6,16(sp)
a0006e98:	c65e                	sw	s7,12(sp)
a0006e9a:	d606                	sw	ra,44(sp)
a0006e9c:	00276713          	ori	a4,a4,2
a0006ea0:	4144570b          	srw	a4,s0,s4,0
a0006ea4:	91478993          	addi	s3,a5,-1772
a0006ea8:	4134470b          	lrw	a4,s0,s3,0
a0006eac:	90c78913          	addi	s2,a5,-1780
a0006eb0:	76f1                	lui	a3,0xffffc
a0006eb2:	01476713          	ori	a4,a4,20
a0006eb6:	4134570b          	srw	a4,s0,s3,0
a0006eba:	4124470b          	lrw	a4,s0,s2,0
a0006ebe:	069d                	addi	a3,a3,7
a0006ec0:	29078793          	addi	a5,a5,656
a0006ec4:	8f75                	and	a4,a4,a3
a0006ec6:	8fd9                	or	a5,a5,a4
a0006ec8:	4124578b          	srw	a5,s0,s2,0
a0006ecc:	8b2a                	mv	s6,a0
a0006ece:	8aae                	mv	s5,a1
a0006ed0:	3f91                	jal	a0006e24 <qcc74x_adc_start_conversion>
a0006ed2:	040005b7          	lui	a1,0x4000
a0006ed6:	6541                	lui	a0,0x10
a0006ed8:	4781                	li	a5,0
a0006eda:	4b81                	li	s7,0
a0006edc:	4481                	li	s1,0
a0006ede:	200026b7          	lui	a3,0x20002
a0006ee2:	4891                	li	a7,4
a0006ee4:	15fd                	addi	a1,a1,-1
a0006ee6:	6321                	lui	t1,0x8
a0006ee8:	157d                	addi	a0,a0,-1
a0006eea:	4829                	li	a6,10
a0006eec:	4298                	lw	a4,0(a3)
a0006eee:	00276713          	ori	a4,a4,2
a0006ef2:	c298                	sw	a4,0(a3)
a0006ef4:	4298                	lw	a4,0(a3)
a0006ef6:	5507370b          	extu	a4,a4,21,16
a0006efa:	df6d                	beqz	a4,a0006ef4 <qcc74x_update_adc_trim+0x80>
a0006efc:	42d0                	lw	a2,4(a3)
a0006efe:	00f8fc63          	bgeu	a7,a5,a0006f16 <qcc74x_update_adc_trim+0xa2>
a0006f02:	00b67733          	and	a4,a2,a1
a0006f06:	00667633          	and	a2,a2,t1
a0006f0a:	c601                	beqz	a2,a0006f12 <qcc74x_update_adc_trim+0x9e>
a0006f0c:	40e00733          	neg	a4,a4
a0006f10:	4b85                	li	s7,1
a0006f12:	8f69                	and	a4,a4,a0
a0006f14:	94ba                	add	s1,s1,a4
a0006f16:	0785                	addi	a5,a5,1
a0006f18:	3c07b78b          	extu	a5,a5,15,0
a0006f1c:	fd0798e3          	bne	a5,a6,a0006eec <qcc74x_update_adc_trim+0x78>
a0006f20:	855a                	mv	a0,s6
a0006f22:	3f3d                	jal	a0006e60 <qcc74x_adc_stop_conversion>
a0006f24:	4529                	li	a0,10
a0006f26:	c2fba097          	auipc	ra,0xc2fba
a0006f2a:	d06080e7          	jalr	-762(ra) # 62fc0c2c <qcc74x_mtimer_delay_ms>
a0006f2e:	4795                	li	a5,5
a0006f30:	02f4d4b3          	divu	s1,s1,a5
a0006f34:	62fc37b7          	lui	a5,0x62fc3
a0006f38:	05478793          	addi	a5,a5,84 # 62fc3054 <os2>
a0006f3c:	100b8c63          	beqz	s7,a0007054 <qcc74x_update_adc_trim+0x1e0>
a0006f40:	5779                	li	a4,-2
a0006f42:	02e484b3          	mul	s1,s1,a4
a0006f46:	c384                	sw	s1,0(a5)
a0006f48:	8b818713          	addi	a4,gp,-1864 # 62fc1d40 <coe>
a0006f4c:	631c                	flw	fa5,0(a4)
a0006f4e:	439c                	lw	a5,0(a5)
a0006f50:	855a                	mv	a0,s6
a0006f52:	4481                	li	s1,0
a0006f54:	d007f753          	fcvt.s.w	fa4,a5
a0006f58:	a00097b7          	lui	a5,0xa0009
a0006f5c:	07c7a687          	flw	fa3,124(a5) # a000907c <__psram_limit+0xf7c0907c>
a0006f60:	18d77753          	fdiv.s	fa4,fa4,fa3
a0006f64:	08e7f7d3          	fsub.s	fa5,fa5,fa4
a0006f68:	e31c                	fsw	fa5,0(a4)
a0006f6a:	4124478b          	lrw	a5,s0,s2,0
a0006f6e:	6709                	lui	a4,0x2
a0006f70:	8fd9                	or	a5,a5,a4
a0006f72:	4124578b          	srw	a5,s0,s2,0
a0006f76:	4134478b          	lrw	a5,s0,s3,0
a0006f7a:	7779                	lui	a4,0xffffe
a0006f7c:	071d                	addi	a4,a4,7
a0006f7e:	9bad                	andi	a5,a5,-21
a0006f80:	4134578b          	srw	a5,s0,s3,0
a0006f84:	4124478b          	lrw	a5,s0,s2,0
a0006f88:	8ff9                	and	a5,a5,a4
a0006f8a:	6705                	lui	a4,0x1
a0006f8c:	7b870713          	addi	a4,a4,1976 # 17b8 <HeapMinSize+0x7b8>
a0006f90:	8fd9                	or	a5,a5,a4
a0006f92:	4124578b          	srw	a5,s0,s2,0
a0006f96:	3579                	jal	a0006e24 <qcc74x_adc_start_conversion>
a0006f98:	66c1                	lui	a3,0x10
a0006f9a:	4781                	li	a5,0
a0006f9c:	20002737          	lui	a4,0x20002
a0006fa0:	4511                	li	a0,4
a0006fa2:	16fd                	addi	a3,a3,-1
a0006fa4:	45a9                	li	a1,10
a0006fa6:	4310                	lw	a2,0(a4)
a0006fa8:	00266613          	ori	a2,a2,2
a0006fac:	c310                	sw	a2,0(a4)
a0006fae:	4310                	lw	a2,0(a4)
a0006fb0:	5506360b          	extu	a2,a2,21,16
a0006fb4:	de6d                	beqz	a2,a0006fae <qcc74x_update_adc_trim+0x13a>
a0006fb6:	4350                	lw	a2,4(a4)
a0006fb8:	00f57463          	bgeu	a0,a5,a0006fc0 <qcc74x_update_adc_trim+0x14c>
a0006fbc:	8e75                	and	a2,a2,a3
a0006fbe:	94b2                	add	s1,s1,a2
a0006fc0:	0785                	addi	a5,a5,1
a0006fc2:	3c07b78b          	extu	a5,a5,15,0
a0006fc6:	feb790e3          	bne	a5,a1,a0006fa6 <qcc74x_update_adc_trim+0x132>
a0006fca:	855a                	mv	a0,s6
a0006fcc:	3d51                	jal	a0006e60 <qcc74x_adc_stop_conversion>
a0006fce:	4529                	li	a0,10
a0006fd0:	c2fba097          	auipc	ra,0xc2fba
a0006fd4:	c5c080e7          	jalr	-932(ra) # 62fc0c2c <qcc74x_mtimer_delay_ms>
a0006fd8:	62fc37b7          	lui	a5,0x62fc3
a0006fdc:	05078793          	addi	a5,a5,80 # 62fc3050 <os1>
a0006fe0:	cca5                	beqz	s1,a0007058 <qcc74x_update_adc_trim+0x1e4>
a0006fe2:	4715                	li	a4,5
a0006fe4:	02e4d4b3          	divu	s1,s1,a4
a0006fe8:	c384                	sw	s1,0(a5)
a0006fea:	4144470b          	lrw	a4,s0,s4,0
a0006fee:	002ac683          	lbu	a3,2(s5)
a0006ff2:	ffd77793          	andi	a5,a4,-3
a0006ff6:	c299                	beqz	a3,a0006ffc <qcc74x_update_adc_trim+0x188>
a0006ff8:	00276793          	ori	a5,a4,2
a0006ffc:	001ac703          	lbu	a4,1(s5)
a0007000:	c701                	beqz	a4,a0007008 <qcc74x_update_adc_trim+0x194>
a0007002:	02000737          	lui	a4,0x2000
a0007006:	8fd9                	or	a5,a5,a4
a0007008:	4144578b          	srw	a5,s0,s4,0
a000700c:	4134468b          	lrw	a3,s0,s3,0
a0007010:	003ac703          	lbu	a4,3(s5)
a0007014:	ffb6f793          	andi	a5,a3,-5
a0007018:	c319                	beqz	a4,a000701e <qcc74x_update_adc_trim+0x1aa>
a000701a:	0046e793          	ori	a5,a3,4
a000701e:	4134578b          	srw	a5,s0,s3,0
a0007022:	4124478b          	lrw	a5,s0,s2,0
a0007026:	cf05                	beqz	a4,a000705e <qcc74x_update_adc_trim+0x1ea>
a0007028:	7779                	lui	a4,0xffffe
a000702a:	177d                	addi	a4,a4,-1
a000702c:	8ff9                	and	a5,a5,a4
a000702e:	4124578b          	srw	a5,s0,s2,0
a0007032:	20002737          	lui	a4,0x20002
a0007036:	431c                	lw	a5,0(a4)
a0007038:	50b2                	lw	ra,44(sp)
a000703a:	5422                	lw	s0,40(sp)
a000703c:	0027e793          	ori	a5,a5,2
a0007040:	c31c                	sw	a5,0(a4)
a0007042:	5492                	lw	s1,36(sp)
a0007044:	5902                	lw	s2,32(sp)
a0007046:	49f2                	lw	s3,28(sp)
a0007048:	4a62                	lw	s4,24(sp)
a000704a:	4ad2                	lw	s5,20(sp)
a000704c:	4b42                	lw	s6,16(sp)
a000704e:	4bb2                	lw	s7,12(sp)
a0007050:	6145                	addi	sp,sp,48
a0007052:	8082                	ret
a0007054:	0486                	slli	s1,s1,0x1
a0007056:	bdc5                	j	a0006f46 <qcc74x_update_adc_trim+0xd2>
a0007058:	0007a023          	sw	zero,0(a5)
a000705c:	b779                	j	a0006fea <qcc74x_update_adc_trim+0x176>
a000705e:	6709                	lui	a4,0x2
a0007060:	8fd9                	or	a5,a5,a4
a0007062:	b7f1                	j	a000702e <qcc74x_update_adc_trim+0x1ba>

a0007064 <qcc74x_adc_init>:
a0007064:	415c                	lw	a5,4(a0)
a0007066:	6705                	lui	a4,0x1
a0007068:	90c70713          	addi	a4,a4,-1780 # 90c <__RFTLV_SIZE_HOLE+0x10c>
a000706c:	40e7c68b          	lrw	a3,a5,a4,0
a0007070:	1101                	addi	sp,sp,-32
a0007072:	ce06                	sw	ra,28(sp)
a0007074:	cc22                	sw	s0,24(sp)
a0007076:	9af9                	andi	a3,a3,-2
a0007078:	40e7d68b          	srw	a3,a5,a4,0
a000707c:	40e7c68b          	lrw	a3,a5,a4,0
a0007080:	0016e693          	ori	a3,a3,1
a0007084:	40e7d68b          	srw	a3,a5,a4,0
a0007088:	40e7c68b          	lrw	a3,a5,a4,0
a000708c:	0046e693          	ori	a3,a3,4
a0007090:	40e7d68b          	srw	a3,a5,a4,0
a0007094:	0001                	nop
a0007096:	0001                	nop
a0007098:	0001                	nop
a000709a:	0001                	nop
a000709c:	0001                	nop
a000709e:	0001                	nop
a00070a0:	0001                	nop
a00070a2:	0001                	nop
a00070a4:	40e7c68b          	lrw	a3,a5,a4,0
a00070a8:	9aed                	andi	a3,a3,-5
a00070aa:	40e7d68b          	srw	a3,a5,a4,0
a00070ae:	0005c683          	lbu	a3,0(a1) # 4000000 <remain_wifi_ram+0x3fe0000>
a00070b2:	0045c603          	lbu	a2,4(a1)
a00070b6:	06ca                	slli	a3,a3,0x12
a00070b8:	060a                	slli	a2,a2,0x2
a00070ba:	8ed1                	or	a3,a3,a2
a00070bc:	0015c603          	lbu	a2,1(a1)
a00070c0:	0e061863          	bnez	a2,a00071b0 <qcc74x_adc_init+0x14c>
a00070c4:	48000637          	lui	a2,0x48000
a00070c8:	8ed1                	or	a3,a3,a2
a00070ca:	0025c603          	lbu	a2,2(a1)
a00070ce:	c219                	beqz	a2,a00070d4 <qcc74x_adc_init+0x70>
a00070d0:	0026e693          	ori	a3,a3,2
a00070d4:	6605                	lui	a2,0x1
a00070d6:	91060613          	addi	a2,a2,-1776 # 910 <__RFTLV_SIZE_HOLE+0x110>
a00070da:	40c7d68b          	srw	a3,a5,a2,0
a00070de:	0001                	nop
a00070e0:	0001                	nop
a00070e2:	0001                	nop
a00070e4:	0001                	nop
a00070e6:	0001                	nop
a00070e8:	0001                	nop
a00070ea:	0001                	nop
a00070ec:	0001                	nop
a00070ee:	0055c603          	lbu	a2,5(a1)
a00070f2:	4685                	li	a3,1
a00070f4:	0cd61163          	bne	a2,a3,a00071b6 <qcc74x_adc_init+0x152>
a00070f8:	224136b7          	lui	a3,0x22413
a00070fc:	08868693          	addi	a3,a3,136 # 22413088 <remain_wifi_ram+0x223f3088>
a0007100:	0035c803          	lbu	a6,3(a1)
a0007104:	00080463          	beqz	a6,a000710c <qcc74x_adc_init+0xa8>
a0007108:	0046e693          	ori	a3,a3,4
a000710c:	6605                	lui	a2,0x1
a000710e:	91460613          	addi	a2,a2,-1772 # 914 <__RFTLV_SIZE_HOLE+0x114>
a0007112:	40c7d68b          	srw	a3,a5,a2,0
a0007116:	40e7c68b          	lrw	a3,a5,a4,0
a000711a:	00082637          	lui	a2,0x82
a000711e:	00080763          	beqz	a6,a000712c <qcc74x_adc_init+0xc8>
a0007122:	7679                	lui	a2,0xffffe
a0007124:	167d                	addi	a2,a2,-1
a0007126:	8ef1                	and	a3,a3,a2
a0007128:	00080637          	lui	a2,0x80
a000712c:	8ed1                	or	a3,a3,a2
a000712e:	40e7d68b          	srw	a3,a5,a4,0
a0007132:	6705                	lui	a4,0x1
a0007134:	93870613          	addi	a2,a4,-1736 # 938 <__RFTLV_SIZE_HOLE+0x138>
a0007138:	40c7c68b          	lrw	a3,a5,a2,0
a000713c:	7841                	lui	a6,0xffff0
a000713e:	92c70713          	addi	a4,a4,-1748
a0007142:	0106f6b3          	and	a3,a3,a6
a0007146:	40c7d68b          	srw	a3,a5,a2,0
a000714a:	20002637          	lui	a2,0x20002
a000714e:	4214                	lw	a3,0(a2)
a0007150:	ff400837          	lui	a6,0xff400
a0007154:	1879                	addi	a6,a6,-2
a0007156:	0106f6b3          	and	a3,a3,a6
a000715a:	681d                	lui	a6,0x7
a000715c:	70280813          	addi	a6,a6,1794 # 7702 <HeapMinSize+0x6702>
a0007160:	0106e6b3          	or	a3,a3,a6
a0007164:	c214                	sw	a3,0(a2)
a0007166:	4214                	lw	a3,0(a2)
a0007168:	62fc3437          	lui	s0,0x62fc3
a000716c:	04c40413          	addi	s0,s0,76 # 62fc304c <adc_cali_complete>
a0007170:	8fd6f693          	andi	a3,a3,-1795
a0007174:	c214                	sw	a3,0(a2)
a0007176:	40e7c68b          	lrw	a3,a5,a4,0
a000717a:	3006e693          	ori	a3,a3,768
a000717e:	40e7d68b          	srw	a3,a5,a4,0
a0007182:	401c                	lw	a5,0(s0)
a0007184:	e395                	bnez	a5,a00071a8 <qcc74x_adc_init+0x144>
a0007186:	c62e                	sw	a1,12(sp)
a0007188:	c42a                	sw	a0,8(sp)
a000718a:	070010ef          	jal	ra,a00081fa <qcc74x_efuse_get_adc_trim>
a000718e:	45b2                	lw	a1,12(sp)
a0007190:	4522                	lw	a0,8(sp)
a0007192:	8aa1ac27          	fsw	fa0,-1864(gp) # 62fc1d40 <coe>
a0007196:	39f9                	jal	a0006e74 <qcc74x_update_adc_trim>
a0007198:	0ea010ef          	jal	ra,a0008282 <qcc74x_efuse_get_adc_tsen_trim>
a000719c:	62fc37b7          	lui	a5,0x62fc3
a00071a0:	04a7ac23          	sw	a0,88(a5) # 62fc3058 <tsen_offset>
a00071a4:	4785                	li	a5,1
a00071a6:	c01c                	sw	a5,0(s0)
a00071a8:	40f2                	lw	ra,28(sp)
a00071aa:	4462                	lw	s0,24(sp)
a00071ac:	6105                	addi	sp,sp,32
a00071ae:	8082                	ret
a00071b0:	4a020637          	lui	a2,0x4a020
a00071b4:	bf11                	j	a00070c8 <qcc74x_adc_init+0x64>
a00071b6:	224136b7          	lui	a3,0x22413
a00071ba:	08068693          	addi	a3,a3,128 # 22413080 <remain_wifi_ram+0x223f3080>
a00071be:	b789                	j	a0007100 <qcc74x_adc_init+0x9c>

a00071c0 <qcc74x_adc_get_count>:
a00071c0:	200027b7          	lui	a5,0x20002
a00071c4:	4388                	lw	a0,0(a5)
a00071c6:	5505350b          	extu	a0,a0,21,16
a00071ca:	8082                	ret

a00071cc <qcc74x_adc_read_raw>:
a00071cc:	200027b7          	lui	a5,0x20002
a00071d0:	43c8                	lw	a0,4(a5)
a00071d2:	040007b7          	lui	a5,0x4000
a00071d6:	17fd                	addi	a5,a5,-1
a00071d8:	8d7d                	and	a0,a0,a5
a00071da:	8082                	ret

a00071dc <qcc74x_adc_parse_result>:
a00071dc:	711d                	addi	sp,sp,-96
a00071de:	4158                	lw	a4,4(a0)
a00071e0:	caa6                	sw	s1,84(sp)
a00071e2:	6485                	lui	s1,0x1
a00071e4:	91448513          	addi	a0,s1,-1772 # 914 <__RFTLV_SIZE_HOLE+0x114>
a00071e8:	91048793          	addi	a5,s1,-1776
a00071ec:	40f7478b          	lrw	a5,a4,a5,0
a00071f0:	40a7480b          	lrw	a6,a4,a0,0
a00071f4:	40a7470b          	lrw	a4,a4,a0,0
a00071f8:	dc62                	sw	s8,56(sp)
a00071fa:	ce86                	sw	ra,92(sp)
a00071fc:	cca2                	sw	s0,88(sp)
a00071fe:	c8ca                	sw	s2,80(sp)
a0007200:	c6ce                	sw	s3,76(sp)
a0007202:	c4d2                	sw	s4,72(sp)
a0007204:	c2d6                	sw	s5,68(sp)
a0007206:	c0da                	sw	s6,64(sp)
a0007208:	de5e                	sw	s7,60(sp)
a000720a:	da66                	sw	s9,52(sp)
a000720c:	d86a                	sw	s10,48(sp)
a000720e:	d66e                	sw	s11,44(sp)
a0007210:	0c37370b          	extu	a4,a4,3,3
a0007214:	1027bc0b          	extu	s8,a5,4,2
a0007218:	0828380b          	extu	a6,a6,2,2
a000721c:	c8048493          	addi	s1,s1,-896
a0007220:	c319                	beqz	a4,a0007226 <qcc74x_adc_parse_result+0x4a>
a0007222:	7d000493          	li	s1,2000
a0007226:	4501                	li	a0,0
a0007228:	12080d63          	beqz	a6,a0007362 <qcc74x_adc_parse_result+0x186>
a000722c:	68a1                	lui	a7,0x8
a000722e:	6e41                	lui	t3,0x10
a0007230:	6e91                	lui	t4,0x4
a0007232:	6289                	lui	t0,0x2
a0007234:	6f05                	lui	t5,0x1
a0007236:	4f81                	li	t6,0
a0007238:	4389                	li	t2,2
a000723a:	4411                	li	s0,4
a000723c:	1e7d                	addi	t3,t3,-1
a000723e:	fff88913          	addi	s2,a7,-1 # 7fff <HeapMinSize+0x6fff>
a0007242:	1efd                	addi	t4,t4,-1
a0007244:	fff28993          	addi	s3,t0,-1 # 1fff <HeapMinSize+0xfff>
a0007248:	1f7d                	addi	t5,t5,-1
a000724a:	7ff00a13          	li	s4,2047
a000724e:	3c05370b          	extu	a4,a0,15,0
a0007252:	0cd77563          	bgeu	a4,a3,a000731c <qcc74x_adc_parse_result+0x140>
a0007256:	44a5c70b          	lrw	a4,a1,a0,2
a000725a:	01575a93          	srli	s5,a4,0x15
a000725e:	01560023          	sb	s5,0(a2) # 4a020000 <__RFTLV_HEAD1_H+0x3afb3be>
a0007262:	51073a8b          	extu	s5,a4,20,16
a0007266:	015600a3          	sb	s5,1(a2)
a000726a:	01177ab3          	and	s5,a4,a7
a000726e:	000a8563          	beqz	s5,a0007278 <qcc74x_adc_parse_result+0x9c>
a0007272:	40e00733          	neg	a4,a4
a0007276:	8fc2                	mv	t6,a6
a0007278:	260c1063          	bnez	s8,a00074d8 <qcc74x_adc_parse_result+0x2fc>
a000727c:	8311                	srli	a4,a4,0x4
a000727e:	01e77733          	and	a4,a4,t5
a0007282:	8b818a93          	addi	s5,gp,-1864 # 62fc1d40 <coe>
a0007286:	d00777d3          	fcvt.s.w	fa5,a4
a000728a:	000aa707          	flw	fa4,0(s5)
a000728e:	18e7f7d3          	fdiv.s	fa5,fa5,fa4
a0007292:	c0179753          	fcvt.wu.s	a4,fa5,rtz
a0007296:	00ea7463          	bgeu	s4,a4,a000729e <qcc74x_adc_parse_result+0xc2>
a000729a:	7ff00713          	li	a4,2047
a000729e:	c258                	sw	a4,4(a2)
a00072a0:	02e48733          	mul	a4,s1,a4
a00072a4:	872d                	srai	a4,a4,0xb
a00072a6:	c618                	sw	a4,8(a2)
a00072a8:	000f8a63          	beqz	t6,a00072bc <qcc74x_adc_parse_result+0xe0>
a00072ac:	4258                	lw	a4,4(a2)
a00072ae:	40e00733          	neg	a4,a4
a00072b2:	c258                	sw	a4,4(a2)
a00072b4:	4618                	lw	a4,8(a2)
a00072b6:	40e00733          	neg	a4,a4
a00072ba:	c618                	sw	a4,8(a2)
a00072bc:	0505                	addi	a0,a0,1
a00072be:	0631                	addi	a2,a2,12
a00072c0:	b779                	j	a000724e <qcc74x_adc_parse_result+0x72>
a00072c2:	44a5c70b          	lrw	a4,a1,a0,2
a00072c6:	8b018293          	addi	t0,gp,-1872 # 62fc1d38 <adc_reference_channel>
a00072ca:	0002a283          	lw	t0,0(t0)
a00072ce:	01575393          	srli	t2,a4,0x15
a00072d2:	00539c63          	bne	t2,t0,a00072ea <qcc74x_adc_parse_result+0x10e>
a00072d6:	060c1263          	bnez	s8,a000733a <qcc74x_adc_parse_result+0x15e>
a00072da:	00475e13          	srli	t3,a4,0x4
a00072de:	006e7e33          	and	t3,t3,t1
a00072e2:	029e0e33          	mul	t3,t3,s1
a00072e6:	40ce5d13          	srai	s10,t3,0xc
a00072ea:	0505                	addi	a0,a0,1
a00072ec:	3c05370b          	extu	a4,a0,15,0
a00072f0:	fcd769e3          	bltu	a4,a3,a00072c2 <qcc74x_adc_parse_result+0xe6>
a00072f4:	a0009737          	lui	a4,0xa0009
a00072f8:	93c72783          	lw	a5,-1732(a4) # a000893c <__psram_limit+0xf7c0893c>
a00072fc:	93872703          	lw	a4,-1736(a4)
a0007300:	ce36                	sw	a3,28(sp)
a0007302:	8a2e                	mv	s4,a1
a0007304:	8432                	mv	s0,a2
a0007306:	4c81                	li	s9,0
a0007308:	6dc1                	lui	s11,0x10
a000730a:	c83a                	sw	a4,16(sp)
a000730c:	ca3e                	sw	a5,20(sp)
a000730e:	6911                	lui	s2,0x4
a0007310:	6985                	lui	s3,0x1
a0007312:	47f2                	lw	a5,28(sp)
a0007314:	3c0cb70b          	extu	a4,s9,15,0
a0007318:	04f76f63          	bltu	a4,a5,a0007376 <qcc74x_adc_parse_result+0x19a>
a000731c:	40f6                	lw	ra,92(sp)
a000731e:	4466                	lw	s0,88(sp)
a0007320:	44d6                	lw	s1,84(sp)
a0007322:	4946                	lw	s2,80(sp)
a0007324:	49b6                	lw	s3,76(sp)
a0007326:	4a26                	lw	s4,72(sp)
a0007328:	4a96                	lw	s5,68(sp)
a000732a:	4b06                	lw	s6,64(sp)
a000732c:	5bf2                	lw	s7,60(sp)
a000732e:	5c62                	lw	s8,56(sp)
a0007330:	5cd2                	lw	s9,52(sp)
a0007332:	5d42                	lw	s10,48(sp)
a0007334:	5db2                	lw	s11,44(sp)
a0007336:	6125                	addi	sp,sp,96
a0007338:	8082                	ret
a000733a:	01ec1b63          	bne	s8,t5,a0007350 <qcc74x_adc_parse_result+0x174>
a000733e:	00275e13          	srli	t3,a4,0x2
a0007342:	011e7e33          	and	t3,t3,a7
a0007346:	029e0e33          	mul	t3,t3,s1
a000734a:	40ee5d13          	srai	s10,t3,0xe
a000734e:	bf71                	j	a00072ea <qcc74x_adc_parse_result+0x10e>
a0007350:	f9fc1de3          	bne	s8,t6,a00072ea <qcc74x_adc_parse_result+0x10e>
a0007354:	01077e33          	and	t3,a4,a6
a0007358:	029e0e33          	mul	t3,t3,s1
a000735c:	410e5d13          	srai	s10,t3,0x10
a0007360:	b769                	j	a00072ea <qcc74x_adc_parse_result+0x10e>
a0007362:	6841                	lui	a6,0x10
a0007364:	6891                	lui	a7,0x4
a0007366:	6305                	lui	t1,0x1
a0007368:	4d01                	li	s10,0
a000736a:	4f09                	li	t5,2
a000736c:	4f91                	li	t6,4
a000736e:	187d                	addi	a6,a6,-1
a0007370:	18fd                	addi	a7,a7,-1
a0007372:	137d                	addi	t1,t1,-1
a0007374:	bfa5                	j	a00072ec <qcc74x_adc_parse_result+0x110>
a0007376:	459a470b          	lrw	a4,s4,s9,2
a000737a:	57fd                	li	a5,-1
a000737c:	00f400a3          	sb	a5,1(s0)
a0007380:	67c1                	lui	a5,0x10
a0007382:	17fd                	addi	a5,a5,-1
a0007384:	01575693          	srli	a3,a4,0x15
a0007388:	00f77ab3          	and	s5,a4,a5
a000738c:	62fc37b7          	lui	a5,0x62fc3
a0007390:	00d40023          	sb	a3,0(s0)
a0007394:	05078693          	addi	a3,a5,80 # 62fc3050 <os1>
a0007398:	62fc37b7          	lui	a5,0x62fc3
a000739c:	0006ab03          	lw	s6,0(a3)
a00073a0:	05478693          	addi	a3,a5,84 # 62fc3054 <os2>
a00073a4:	0006ab83          	lw	s7,0(a3)
a00073a8:	8b818f13          	addi	t5,gp,-1864 # 62fc1d40 <coe>
a00073ac:	0c0bde63          	bgez	s7,a0007488 <qcc74x_adc_parse_result+0x2ac>
a00073b0:	8556                	mv	a0,s5
a00073b2:	f96fc0ef          	jal	ra,a0003b48 <__floatunsidf>
a00073b6:	c02a                	sw	a0,0(sp)
a00073b8:	855a                	mv	a0,s6
a00073ba:	c22e                	sw	a1,4(sp)
a00073bc:	f8cfc0ef          	jal	ra,a0003b48 <__floatunsidf>
a00073c0:	4642                	lw	a2,16(sp)
a00073c2:	46d2                	lw	a3,20(sp)
a00073c4:	80dfb0ef          	jal	ra,a0002bd0 <__muldf3>
a00073c8:	c42a                	sw	a0,8(sp)
a00073ca:	c62e                	sw	a1,12(sp)
a00073cc:	862a                	mv	a2,a0
a00073ce:	86ae                	mv	a3,a1
a00073d0:	4502                	lw	a0,0(sp)
a00073d2:	4592                	lw	a1,4(sp)
a00073d4:	f4efb0ef          	jal	ra,a0002b22 <__ledf2>
a00073d8:	8b818f13          	addi	t5,gp,-1864 # 62fc1d40 <coe>
a00073dc:	00055963          	bgez	a0,a00073ee <qcc74x_adc_parse_result+0x212>
a00073e0:	000f2707          	flw	fa4,0(t5) # 1000 <HeapMinSize>
a00073e4:	416a86b3          	sub	a3,s5,s6
a00073e8:	d016f7d3          	fcvt.s.wu	fa5,a3
a00073ec:	a82d                	j	a0007426 <qcc74x_adc_parse_result+0x24a>
a00073ee:	855e                	mv	a0,s7
a00073f0:	ef2fc0ef          	jal	ra,a0003ae2 <__floatsidf>
a00073f4:	862a                	mv	a2,a0
a00073f6:	86ae                	mv	a3,a1
a00073f8:	4522                	lw	a0,8(sp)
a00073fa:	45b2                	lw	a1,12(sp)
a00073fc:	d6ffb0ef          	jal	ra,a000316a <__subdf3>
a0007400:	862a                	mv	a2,a0
a0007402:	86ae                	mv	a3,a1
a0007404:	4502                	lw	a0,0(sp)
a0007406:	4592                	lw	a1,4(sp)
a0007408:	e6cfb0ef          	jal	ra,a0002a74 <__gedf2>
a000740c:	8b818f13          	addi	t5,gp,-1864 # 62fc1d40 <coe>
a0007410:	000f2707          	flw	fa4,0(t5)
a0007414:	00054763          	bltz	a0,a0007422 <qcc74x_adc_parse_result+0x246>
a0007418:	417a8833          	sub	a6,s5,s7
a000741c:	d01877d3          	fcvt.s.wu	fa5,a6
a0007420:	a019                	j	a0007426 <qcc74x_adc_parse_result+0x24a>
a0007422:	d00af7d3          	fcvt.s.w	fa5,s5
a0007426:	18e7f7d3          	fdiv.s	fa5,fa5,fa4
a000742a:	c00796d3          	fcvt.w.s	a3,fa5,rtz
a000742e:	016af363          	bgeu	s5,s6,a0007434 <qcc74x_adc_parse_result+0x258>
a0007432:	4681                	li	a3,0
a0007434:	c054                	sw	a3,4(s0)
a0007436:	060c1063          	bnez	s8,a0007496 <qcc74x_adc_parse_result+0x2ba>
a000743a:	8691                	srai	a3,a3,0x4
a000743c:	6785                	lui	a5,0x1
a000743e:	0136a733          	slt	a4,a3,s3
a0007442:	17fd                	addi	a5,a5,-1
a0007444:	40e7968b          	mveqz	a3,a5,a4
a0007448:	02d48733          	mul	a4,s1,a3
a000744c:	c054                	sw	a3,4(s0)
a000744e:	03374733          	div	a4,a4,s3
a0007452:	c418                	sw	a4,8(s0)
a0007454:	8b018713          	addi	a4,gp,-1872 # 62fc1d38 <adc_reference_channel>
a0007458:	4314                	lw	a3,0(a4)
a000745a:	57fd                	li	a5,-1
a000745c:	02f68363          	beq	a3,a5,a0007482 <qcc74x_adc_parse_result+0x2a6>
a0007460:	4314                	lw	a3,0(a4)
a0007462:	459a470b          	lrw	a4,s4,s9,2
a0007466:	8355                	srli	a4,a4,0x15
a0007468:	00d70d63          	beq	a4,a3,a0007482 <qcc74x_adc_parse_result+0x2a6>
a000746c:	060d0363          	beqz	s10,a00074d2 <qcc74x_adc_parse_result+0x2f6>
a0007470:	8b418713          	addi	a4,gp,-1868 # 62fc1d3c <adc_reference_channel_millivolt>
a0007474:	4318                	lw	a4,0(a4)
a0007476:	4414                	lw	a3,8(s0)
a0007478:	02d70733          	mul	a4,a4,a3
a000747c:	03a74733          	div	a4,a4,s10
a0007480:	c418                	sw	a4,8(s0)
a0007482:	0c85                	addi	s9,s9,1
a0007484:	0431                	addi	s0,s0,12
a0007486:	b571                	j	a0007312 <qcc74x_adc_parse_result+0x136>
a0007488:	000f2707          	flw	fa4,0(t5)
a000748c:	017b06b3          	add	a3,s6,s7
a0007490:	f8daf4e3          	bgeu	s5,a3,a0007418 <qcc74x_adc_parse_result+0x23c>
a0007494:	bf81                	j	a00073e4 <qcc74x_adc_parse_result+0x208>
a0007496:	4789                	li	a5,2
a0007498:	00fc1f63          	bne	s8,a5,a00074b6 <qcc74x_adc_parse_result+0x2da>
a000749c:	8689                	srai	a3,a3,0x2
a000749e:	6791                	lui	a5,0x4
a00074a0:	0126a733          	slt	a4,a3,s2
a00074a4:	17fd                	addi	a5,a5,-1
a00074a6:	40e7968b          	mveqz	a3,a5,a4
a00074aa:	02d48733          	mul	a4,s1,a3
a00074ae:	c054                	sw	a3,4(s0)
a00074b0:	03274733          	div	a4,a4,s2
a00074b4:	bf79                	j	a0007452 <qcc74x_adc_parse_result+0x276>
a00074b6:	4791                	li	a5,4
a00074b8:	f8fc1ee3          	bne	s8,a5,a0007454 <qcc74x_adc_parse_result+0x278>
a00074bc:	01b6c563          	blt	a3,s11,a00074c6 <qcc74x_adc_parse_result+0x2ea>
a00074c0:	67c1                	lui	a5,0x10
a00074c2:	17fd                	addi	a5,a5,-1
a00074c4:	c05c                	sw	a5,4(s0)
a00074c6:	4058                	lw	a4,4(s0)
a00074c8:	02e48733          	mul	a4,s1,a4
a00074cc:	03b74733          	div	a4,a4,s11
a00074d0:	b749                	j	a0007452 <qcc74x_adc_parse_result+0x276>
a00074d2:	00042423          	sw	zero,8(s0)
a00074d6:	b775                	j	a0007482 <qcc74x_adc_parse_result+0x2a6>
a00074d8:	027c1863          	bne	s8,t2,a0007508 <qcc74x_adc_parse_result+0x32c>
a00074dc:	8309                	srli	a4,a4,0x2
a00074de:	8b818a93          	addi	s5,gp,-1864 # 62fc1d40 <coe>
a00074e2:	01d77733          	and	a4,a4,t4
a00074e6:	000aa707          	flw	fa4,0(s5)
a00074ea:	d00777d3          	fcvt.s.w	fa5,a4
a00074ee:	18e7f7d3          	fdiv.s	fa5,fa5,fa4
a00074f2:	c0179753          	fcvt.wu.s	a4,fa5,rtz
a00074f6:	00573ab3          	sltu	s5,a4,t0
a00074fa:	4159970b          	mveqz	a4,s3,s5
a00074fe:	c258                	sw	a4,4(a2)
a0007500:	02e48733          	mul	a4,s1,a4
a0007504:	8735                	srai	a4,a4,0xd
a0007506:	b345                	j	a00072a6 <qcc74x_adc_parse_result+0xca>
a0007508:	da8c10e3          	bne	s8,s0,a00072a8 <qcc74x_adc_parse_result+0xcc>
a000750c:	8b818a93          	addi	s5,gp,-1864 # 62fc1d40 <coe>
a0007510:	01c77733          	and	a4,a4,t3
a0007514:	000aa707          	flw	fa4,0(s5)
a0007518:	d00777d3          	fcvt.s.w	fa5,a4
a000751c:	18e7f7d3          	fdiv.s	fa5,fa5,fa4
a0007520:	c0179753          	fcvt.wu.s	a4,fa5,rtz
a0007524:	01173ab3          	sltu	s5,a4,a7
a0007528:	4159170b          	mveqz	a4,s2,s5
a000752c:	c258                	sw	a4,4(a2)
a000752e:	02e48733          	mul	a4,s1,a4
a0007532:	873d                	srai	a4,a4,0xf
a0007534:	bb8d                	j	a00072a6 <qcc74x_adc_parse_result+0xca>

a0007536 <irq_unexpected_isr>:
a0007536:	85aa                	mv	a1,a0
a0007538:	a0009537          	lui	a0,0xa0009
a000753c:	08850513          	addi	a0,a0,136 # a0009088 <__psram_limit+0xf7c09088>
a0007540:	f18fe06f          	j	a0005c58 <printf>

a0007544 <qcc74x_irq_initialize>:
a0007544:	62fc37b7          	lui	a5,0x62fc3
a0007548:	46078793          	addi	a5,a5,1120 # 62fc3460 <g_irqvector>
a000754c:	a0007737          	lui	a4,0xa0007
a0007550:	28078693          	addi	a3,a5,640
a0007554:	53670713          	addi	a4,a4,1334 # a0007536 <__psram_limit+0xf7c07536>
a0007558:	c398                	sw	a4,0(a5)
a000755a:	0007a223          	sw	zero,4(a5)
a000755e:	07a1                	addi	a5,a5,8
a0007560:	fed79ce3          	bne	a5,a3,a0007558 <qcc74x_irq_initialize+0x14>
a0007564:	8082                	ret

a0007566 <qcc74x_device_get_by_name>:
a0007566:	1101                	addi	sp,sp,-32
a0007568:	cc22                	sw	s0,24(sp)
a000756a:	ca26                	sw	s1,20(sp)
a000756c:	c64e                	sw	s3,12(sp)
a000756e:	c452                	sw	s4,8(sp)
a0007570:	ce06                	sw	ra,28(sp)
a0007572:	c84a                	sw	s2,16(sp)
a0007574:	8a2a                	mv	s4,a0
a0007576:	4481                	li	s1,0
a0007578:	8bc18413          	addi	s0,gp,-1860 # 62fc1d44 <qcc743_device_table>
a000757c:	02900993          	li	s3,41
a0007580:	00449913          	slli	s2,s1,0x4
a0007584:	4124450b          	lrw	a0,s0,s2,0
a0007588:	85d2                	mv	a1,s4
a000758a:	dddfc0ef          	jal	ra,a0004366 <strcmp>
a000758e:	e919                	bnez	a0,a00075a4 <qcc74x_device_get_by_name+0x3e>
a0007590:	01240533          	add	a0,s0,s2
a0007594:	40f2                	lw	ra,28(sp)
a0007596:	4462                	lw	s0,24(sp)
a0007598:	44d2                	lw	s1,20(sp)
a000759a:	4942                	lw	s2,16(sp)
a000759c:	49b2                	lw	s3,12(sp)
a000759e:	4a22                	lw	s4,8(sp)
a00075a0:	6105                	addi	sp,sp,32
a00075a2:	8082                	ret
a00075a4:	0485                	addi	s1,s1,1
a00075a6:	fd349de3          	bne	s1,s3,a0007580 <qcc74x_device_get_by_name+0x1a>
a00075aa:	4501                	li	a0,0
a00075ac:	b7e5                	j	a0007594 <qcc74x_device_get_by_name+0x2e>
	...

a00075c0 <default_interrupt_handler>:
a00075c0:	715d                	addi	sp,sp,-80
a00075c2:	c216                	sw	t0,4(sp)
a00075c4:	c41a                	sw	t1,8(sp)
a00075c6:	341022f3          	csrr	t0,mepc
a00075ca:	34202373          	csrr	t1,mcause
a00075ce:	c09a                	sw	t1,64(sp)
a00075d0:	c296                	sw	t0,68(sp)
a00075d2:	340022f3          	csrr	t0,mscratch
a00075d6:	c496                	sw	t0,72(sp)
a00075d8:	c006                	sw	ra,0(sp)
a00075da:	c61e                	sw	t2,12(sp)
a00075dc:	c82a                	sw	a0,16(sp)
a00075de:	ca2e                	sw	a1,20(sp)
a00075e0:	cc32                	sw	a2,24(sp)
a00075e2:	ce36                	sw	a3,28(sp)
a00075e4:	d03a                	sw	a4,32(sp)
a00075e6:	d23e                	sw	a5,36(sp)
a00075e8:	d442                	sw	a6,40(sp)
a00075ea:	d646                	sw	a7,44(sp)
a00075ec:	d872                	sw	t3,48(sp)
a00075ee:	da76                	sw	t4,52(sp)
a00075f0:	dc7a                	sw	t5,56(sp)
a00075f2:	de7e                	sw	t6,60(sp)
a00075f4:	30046073          	csrsi	mstatus,8
a00075f8:	711d                	addi	sp,sp,-96
a00075fa:	30002373          	csrr	t1,mstatus
a00075fe:	ca9a                	sw	t1,84(sp)
a0007600:	00d35393          	srli	t2,t1,0xd
a0007604:	0033f393          	andi	t2,t2,3
a0007608:	428d                	li	t0,3
a000760a:	02539663          	bne	t2,t0,a0007636 <.F_RegNotSave1>
a000760e:	e002                	fsw	ft0,0(sp)
a0007610:	e206                	fsw	ft1,4(sp)
a0007612:	e40a                	fsw	ft2,8(sp)
a0007614:	e60e                	fsw	ft3,12(sp)
a0007616:	e812                	fsw	ft4,16(sp)
a0007618:	ea16                	fsw	ft5,20(sp)
a000761a:	ec1a                	fsw	ft6,24(sp)
a000761c:	ee1e                	fsw	ft7,28(sp)
a000761e:	f02a                	fsw	fa0,32(sp)
a0007620:	f22e                	fsw	fa1,36(sp)
a0007622:	f432                	fsw	fa2,40(sp)
a0007624:	f636                	fsw	fa3,44(sp)
a0007626:	f83a                	fsw	fa4,48(sp)
a0007628:	fa3e                	fsw	fa5,52(sp)
a000762a:	fc42                	fsw	fa6,56(sp)
a000762c:	fe46                	fsw	fa7,60(sp)
a000762e:	e0f2                	fsw	ft8,64(sp)
a0007630:	e2f6                	fsw	ft9,68(sp)
a0007632:	e4fa                	fsw	ft10,72(sp)
a0007634:	e6fe                	fsw	ft11,76(sp)

a0007636 <.F_RegNotSave1>:
a0007636:	34202573          	csrr	a0,mcause
a000763a:	3ff57313          	andi	t1,a0,1023
a000763e:	00000397          	auipc	t2,0x0
a0007642:	5a238393          	addi	t2,t2,1442 # a0007be0 <interrupt_entry>
a0007646:	9382                	jalr	t2
a0007648:	4356                	lw	t1,84(sp)
a000764a:	00d35393          	srli	t2,t1,0xd
a000764e:	0033f393          	andi	t2,t2,3
a0007652:	428d                	li	t0,3
a0007654:	02539663          	bne	t2,t0,a0007680 <.F_RegNotLoad>
a0007658:	6002                	flw	ft0,0(sp)
a000765a:	6092                	flw	ft1,4(sp)
a000765c:	6122                	flw	ft2,8(sp)
a000765e:	61b2                	flw	ft3,12(sp)
a0007660:	6242                	flw	ft4,16(sp)
a0007662:	62d2                	flw	ft5,20(sp)
a0007664:	6362                	flw	ft6,24(sp)
a0007666:	63f2                	flw	ft7,28(sp)
a0007668:	7502                	flw	fa0,32(sp)
a000766a:	7592                	flw	fa1,36(sp)
a000766c:	7622                	flw	fa2,40(sp)
a000766e:	76b2                	flw	fa3,44(sp)
a0007670:	7742                	flw	fa4,48(sp)
a0007672:	77d2                	flw	fa5,52(sp)
a0007674:	7862                	flw	fa6,56(sp)
a0007676:	78f2                	flw	fa7,60(sp)
a0007678:	6e06                	flw	ft8,64(sp)
a000767a:	6e96                	flw	ft9,68(sp)
a000767c:	6f26                	flw	ft10,72(sp)
a000767e:	6fb6                	flw	ft11,76(sp)

a0007680 <.F_RegNotLoad>:
a0007680:	6125                	addi	sp,sp,96
a0007682:	30047073          	csrci	mstatus,8
a0007686:	4296                	lw	t0,68(sp)
a0007688:	34129073          	csrw	mepc,t0
a000768c:	4286                	lw	t0,64(sp)
a000768e:	34229073          	csrw	mcause,t0
a0007692:	42a6                	lw	t0,72(sp)
a0007694:	34029073          	csrw	mscratch,t0
a0007698:	4082                	lw	ra,0(sp)
a000769a:	4292                	lw	t0,4(sp)
a000769c:	4322                	lw	t1,8(sp)
a000769e:	43b2                	lw	t2,12(sp)
a00076a0:	4542                	lw	a0,16(sp)
a00076a2:	45d2                	lw	a1,20(sp)
a00076a4:	4662                	lw	a2,24(sp)
a00076a6:	46f2                	lw	a3,28(sp)
a00076a8:	5702                	lw	a4,32(sp)
a00076aa:	5792                	lw	a5,36(sp)
a00076ac:	5822                	lw	a6,40(sp)
a00076ae:	58b2                	lw	a7,44(sp)
a00076b0:	5e42                	lw	t3,48(sp)
a00076b2:	5ed2                	lw	t4,52(sp)
a00076b4:	5f62                	lw	t5,56(sp)
a00076b6:	5ff2                	lw	t6,60(sp)
a00076b8:	6161                	addi	sp,sp,80
a00076ba:	8082                	ret
	...

a0007700 <trap>:
a0007700:	fe512e23          	sw	t0,-4(sp)
a0007704:	342022f3          	csrr	t0,mcause
a0007708:	0e02ca63          	bltz	t0,a00077fc <trap+0xfc>
a000770c:	c2fbc297          	auipc	t0,0xc2fbc
a0007710:	d5428293          	addi	t0,t0,-684 # 62fc3460 <g_irqvector>
a0007714:	ef828293          	addi	t0,t0,-264
a0007718:	0012a223          	sw	ra,4(t0)
a000771c:	0022a423          	sw	sp,8(t0)
a0007720:	0032a623          	sw	gp,12(t0)
a0007724:	0042a823          	sw	tp,16(t0)
a0007728:	0062ac23          	sw	t1,24(t0)
a000772c:	0072ae23          	sw	t2,28(t0)
a0007730:	0282a023          	sw	s0,32(t0)
a0007734:	0292a223          	sw	s1,36(t0)
a0007738:	02a2a423          	sw	a0,40(t0)
a000773c:	02b2a623          	sw	a1,44(t0)
a0007740:	02c2a823          	sw	a2,48(t0)
a0007744:	02d2aa23          	sw	a3,52(t0)
a0007748:	02e2ac23          	sw	a4,56(t0)
a000774c:	02f2ae23          	sw	a5,60(t0)
a0007750:	0502a023          	sw	a6,64(t0)
a0007754:	0512a223          	sw	a7,68(t0)
a0007758:	0522a423          	sw	s2,72(t0)
a000775c:	0532a623          	sw	s3,76(t0)
a0007760:	0542a823          	sw	s4,80(t0)
a0007764:	0552aa23          	sw	s5,84(t0)
a0007768:	0562ac23          	sw	s6,88(t0)
a000776c:	0572ae23          	sw	s7,92(t0)
a0007770:	0782a023          	sw	s8,96(t0)
a0007774:	0792a223          	sw	s9,100(t0)
a0007778:	07a2a423          	sw	s10,104(t0)
a000777c:	07b2a623          	sw	s11,108(t0)
a0007780:	07c2a823          	sw	t3,112(t0)
a0007784:	07d2aa23          	sw	t4,116(t0)
a0007788:	07e2ac23          	sw	t5,120(t0)
a000778c:	07f2ae23          	sw	t6,124(t0)
a0007790:	34102573          	csrr	a0,mepc
a0007794:	00a2a023          	sw	a0,0(t0)
a0007798:	30002573          	csrr	a0,mstatus
a000779c:	08a2a023          	sw	a0,128(t0)
a00077a0:	8516                	mv	a0,t0
a00077a2:	ffc12283          	lw	t0,-4(sp)
a00077a6:	812a                	mv	sp,a0
a00077a8:	ca16                	sw	t0,20(sp)
a00077aa:	396000ef          	jal	ra,a0007b40 <exception_entry>
a00077ae:	428a                	lw	t0,128(sp)
a00077b0:	30029073          	csrw	mstatus,t0
a00077b4:	4282                	lw	t0,0(sp)
a00077b6:	34129073          	csrw	mepc,t0
a00077ba:	5ff6                	lw	t6,124(sp)
a00077bc:	5f66                	lw	t5,120(sp)
a00077be:	5ed6                	lw	t4,116(sp)
a00077c0:	5e46                	lw	t3,112(sp)
a00077c2:	5db6                	lw	s11,108(sp)
a00077c4:	5d26                	lw	s10,104(sp)
a00077c6:	5c96                	lw	s9,100(sp)
a00077c8:	5c06                	lw	s8,96(sp)
a00077ca:	4bf6                	lw	s7,92(sp)
a00077cc:	4b66                	lw	s6,88(sp)
a00077ce:	4ad6                	lw	s5,84(sp)
a00077d0:	4a46                	lw	s4,80(sp)
a00077d2:	49b6                	lw	s3,76(sp)
a00077d4:	4926                	lw	s2,72(sp)
a00077d6:	4896                	lw	a7,68(sp)
a00077d8:	4806                	lw	a6,64(sp)
a00077da:	57f2                	lw	a5,60(sp)
a00077dc:	5762                	lw	a4,56(sp)
a00077de:	56d2                	lw	a3,52(sp)
a00077e0:	5642                	lw	a2,48(sp)
a00077e2:	55b2                	lw	a1,44(sp)
a00077e4:	5522                	lw	a0,40(sp)
a00077e6:	5492                	lw	s1,36(sp)
a00077e8:	5402                	lw	s0,32(sp)
a00077ea:	43f2                	lw	t2,28(sp)
a00077ec:	4362                	lw	t1,24(sp)
a00077ee:	42d2                	lw	t0,20(sp)
a00077f0:	4242                	lw	tp,16(sp)
a00077f2:	41b2                	lw	gp,12(sp)
a00077f4:	4092                	lw	ra,4(sp)
a00077f6:	4122                	lw	sp,8(sp)
a00077f8:	30200073          	mret
a00077fc:	ffc12283          	lw	t0,-4(sp)
a0007800:	1141                	addi	sp,sp,-16
a0007802:	c006                	sw	ra,0(sp)
a0007804:	3b75                	jal	a00075c0 <default_interrupt_handler>
a0007806:	4082                	lw	ra,0(sp)
a0007808:	0141                	addi	sp,sp,16
a000780a:	30200073          	mret
	...

a000783c <start_load>:
a000783c:	62fc07b7          	lui	a5,0x62fc0
a0007840:	a000a737          	lui	a4,0xa000a
a0007844:	62fc26b7          	lui	a3,0x62fc2
a0007848:	40078793          	addi	a5,a5,1024 # 62fc0400 <arch_memcpy>
a000784c:	b5470713          	addi	a4,a4,-1196 # a0009b54 <__psram_limit+0xf7c09b54>
a0007850:	c8868693          	addi	a3,a3,-888 # 62fc1c88 <flash1_size>
a0007854:	08d7ed63          	bltu	a5,a3,a00078ee <start_load+0xb2>
a0007858:	62fc27b7          	lui	a5,0x62fc2
a000785c:	a000b737          	lui	a4,0xa000b
a0007860:	62fc26b7          	lui	a3,0x62fc2
a0007864:	c8878793          	addi	a5,a5,-888 # 62fc1c88 <flash1_size>
a0007868:	3dc70713          	addi	a4,a4,988 # a000b3dc <__psram_limit+0xf7c0b3dc>
a000786c:	c8868693          	addi	a3,a3,-888 # 62fc1c88 <flash1_size>
a0007870:	08d7e463          	bltu	a5,a3,a00078f8 <start_load+0xbc>
a0007874:	62fc27b7          	lui	a5,0x62fc2
a0007878:	a000b737          	lui	a4,0xa000b
a000787c:	c8878793          	addi	a5,a5,-888 # 62fc1c88 <flash1_size>
a0007880:	3dc70713          	addi	a4,a4,988 # a000b3dc <__psram_limit+0xf7c0b3dc>
a0007884:	b5018693          	addi	a3,gp,-1200 # 62fc1fd8 <__StackLimit>
a0007888:	06d7ed63          	bltu	a5,a3,a0007902 <start_load+0xc6>
a000788c:	a80007b7          	lui	a5,0xa8000
a0007890:	a000b737          	lui	a4,0xa000b
a0007894:	a80006b7          	lui	a3,0xa8000
a0007898:	00078793          	mv	a5,a5
a000789c:	72c70713          	addi	a4,a4,1836 # a000b72c <__psram_limit+0xf7c0b72c>
a00078a0:	00068693          	mv	a3,a3
a00078a4:	06d7e463          	bltu	a5,a3,a000790c <start_load+0xd0>
a00078a8:	22fc07b7          	lui	a5,0x22fc0
a00078ac:	a000a737          	lui	a4,0xa000a
a00078b0:	22fc06b7          	lui	a3,0x22fc0
a00078b4:	40078793          	addi	a5,a5,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a00078b8:	b5470713          	addi	a4,a4,-1196 # a0009b54 <__psram_limit+0xf7c09b54>
a00078bc:	40068693          	addi	a3,a3,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a00078c0:	04d7eb63          	bltu	a5,a3,a0007916 <start_load+0xda>
a00078c4:	62fc37b7          	lui	a5,0x62fc3
a00078c8:	62fc3737          	lui	a4,0x62fc3
a00078cc:	fe078793          	addi	a5,a5,-32 # 62fc2fe0 <adc>
a00078d0:	6e470713          	addi	a4,a4,1764 # 62fc36e4 <__HeapBase>
a00078d4:	04e7e663          	bltu	a5,a4,a0007920 <start_load+0xe4>
a00078d8:	230307b7          	lui	a5,0x23030
a00078dc:	23030737          	lui	a4,0x23030
a00078e0:	00078793          	mv	a5,a5
a00078e4:	00070713          	mv	a4,a4
a00078e8:	02e7ef63          	bltu	a5,a4,a0007926 <start_load+0xea>
a00078ec:	8082                	ret
a00078ee:	5847460b          	lwia	a2,(a4),4,0
a00078f2:	5847d60b          	swia	a2,(a5),4,0
a00078f6:	bfb9                	j	a0007854 <start_load+0x18>
a00078f8:	5847460b          	lwia	a2,(a4),4,0
a00078fc:	5847d60b          	swia	a2,(a5),4,0
a0007900:	bf85                	j	a0007870 <start_load+0x34>
a0007902:	5847460b          	lwia	a2,(a4),4,0
a0007906:	5847d60b          	swia	a2,(a5),4,0
a000790a:	bfbd                	j	a0007888 <start_load+0x4c>
a000790c:	5847460b          	lwia	a2,(a4),4,0
a0007910:	5847d60b          	swia	a2,(a5),4,0
a0007914:	bf41                	j	a00078a4 <start_load+0x68>
a0007916:	5847460b          	lwia	a2,(a4),4,0
a000791a:	5847d60b          	swia	a2,(a5),4,0
a000791e:	b74d                	j	a00078c0 <start_load+0x84>
a0007920:	5847d00b          	swia	zero,(a5),4,0
a0007924:	bf45                	j	a00078d4 <start_load+0x98>
a0007926:	5847d00b          	swia	zero,(a5),4,0
a000792a:	bf7d                	j	a00078e8 <start_load+0xac>

a000792c <System_BOD_Init>:
a000792c:	1101                	addi	sp,sp,-32
a000792e:	010707b7          	lui	a5,0x1070
a0007932:	0785                	addi	a5,a5,1
a0007934:	0068                	addi	a0,sp,12
a0007936:	ce06                	sw	ra,28(sp)
a0007938:	c63e                	sw	a5,12(sp)
a000793a:	299d                	jal	a0007db0 <HBN_Set_BOD_Cfg>
a000793c:	40f2                	lw	ra,28(sp)
a000793e:	6105                	addi	sp,sp,32
a0007940:	8082                	ret

a0007942 <SystemInit>:
a0007942:	2000e7b7          	lui	a5,0x2000e
a0007946:	02000713          	li	a4,32
a000794a:	50e7a023          	sw	a4,1280(a5) # 2000e500 <remain_wifi_ram+0x1ffee500>
a000794e:	5007a223          	sw	zero,1284(a5)
a0007952:	200017b7          	lui	a5,0x20001
a0007956:	9687a703          	lw	a4,-1688(a5) # 20000968 <remain_wifi_ram+0x1ffe0968>
a000795a:	1141                	addi	sp,sp,-16
a000795c:	8b05                	andi	a4,a4,1
a000795e:	cf39                	beqz	a4,a00079bc <SystemInit+0x7a>
a0007960:	96c7a703          	lw	a4,-1684(a5)
a0007964:	8b05                	andi	a4,a4,1
a0007966:	cb39                	beqz	a4,a00079bc <SystemInit+0x7a>
a0007968:	9707a703          	lw	a4,-1680(a5)
a000796c:	8b05                	andi	a4,a4,1
a000796e:	c739                	beqz	a4,a00079bc <SystemInit+0x7a>
a0007970:	9747a703          	lw	a4,-1676(a5)
a0007974:	8b05                	andi	a4,a4,1
a0007976:	c339                	beqz	a4,a00079bc <SystemInit+0x7a>
a0007978:	9787a703          	lw	a4,-1672(a5)
a000797c:	8b05                	andi	a4,a4,1
a000797e:	cf1d                	beqz	a4,a00079bc <SystemInit+0x7a>
a0007980:	97c7a703          	lw	a4,-1668(a5)
a0007984:	8b05                	andi	a4,a4,1
a0007986:	cb1d                	beqz	a4,a00079bc <SystemInit+0x7a>
a0007988:	9807a703          	lw	a4,-1664(a5)
a000798c:	8b05                	andi	a4,a4,1
a000798e:	c71d                	beqz	a4,a00079bc <SystemInit+0x7a>
a0007990:	9847a703          	lw	a4,-1660(a5)
a0007994:	8b05                	andi	a4,a4,1
a0007996:	c31d                	beqz	a4,a00079bc <SystemInit+0x7a>
a0007998:	9887a703          	lw	a4,-1656(a5)
a000799c:	8b05                	andi	a4,a4,1
a000799e:	cf19                	beqz	a4,a00079bc <SystemInit+0x7a>
a00079a0:	98c7a783          	lw	a5,-1652(a5)
a00079a4:	8b85                	andi	a5,a5,1
a00079a6:	cb99                	beqz	a5,a00079bc <SystemInit+0x7a>
a00079a8:	20001737          	lui	a4,0x20001
a00079ac:	99072783          	lw	a5,-1648(a4) # 20000990 <remain_wifi_ram+0x1ffe0990>
a00079b0:	8b85                	andi	a5,a5,1
a00079b2:	c789                	beqz	a5,a00079bc <SystemInit+0x7a>
a00079b4:	99472783          	lw	a5,-1644(a4)
a00079b8:	8b85                	andi	a5,a5,1
a00079ba:	ef99                	bnez	a5,a00079d8 <SystemInit+0x96>
a00079bc:	200057b7          	lui	a5,0x20005
a00079c0:	38078793          	addi	a5,a5,896 # 20005380 <remain_wifi_ram+0x1ffe5380>
a00079c4:	5398                	lw	a4,32(a5)
a00079c6:	66c1                	lui	a3,0x10
a00079c8:	9b71                	andi	a4,a4,-4
a00079ca:	d398                	sw	a4,32(a5)
a00079cc:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a00079d0:	d798                	sw	a4,40(a5)
a00079d2:	5398                	lw	a4,32(a5)
a00079d4:	8f55                	or	a4,a4,a3
a00079d6:	d398                	sw	a4,32(a5)
a00079d8:	200057b7          	lui	a5,0x20005
a00079dc:	43b8                	lw	a4,64(a5)
a00079de:	000206b7          	lui	a3,0x20
a00079e2:	f0f77713          	andi	a4,a4,-241
a00079e6:	c3b8                	sw	a4,64(a5)
a00079e8:	577d                	li	a4,-1
a00079ea:	c7f8                	sw	a4,76(a5)
a00079ec:	43b8                	lw	a4,64(a5)
a00079ee:	8f55                	or	a4,a4,a3
a00079f0:	c3b8                	sw	a4,64(a5)
a00079f2:	2000b737          	lui	a4,0x2000b
a00079f6:	5b3c                	lw	a5,112(a4)
a00079f8:	600006b7          	lui	a3,0x60000
a00079fc:	8fd5                	or	a5,a5,a3
a00079fe:	db3c                	sw	a5,112(a4)
a0007a00:	300027f3          	csrr	a5,mstatus
a0007a04:	6709                	lui	a4,0x2
a0007a06:	8fd9                	or	a5,a5,a4
a0007a08:	30079073          	csrw	mstatus,a5
a0007a0c:	7c0027f3          	csrr	a5,mxstatus
a0007a10:	00408737          	lui	a4,0x408
a0007a14:	8fd9                	or	a5,a5,a4
a0007a16:	7c079073          	csrw	mxstatus,a5
a0007a1a:	e0800737          	lui	a4,0xe0800
a0007a1e:	435c                	lw	a5,4(a4)
a0007a20:	00074683          	lbu	a3,0(a4) # e0800000 <__psram_limit+0x38400000>
a0007a24:	e0800537          	lui	a0,0xe0800
a0007a28:	83d1                	srli	a5,a5,0x14
a0007a2a:	8bf9                	andi	a5,a5,30
a0007a2c:	ac0786f7          	insb	a3,a5,0
a0007a30:	00d70023          	sb	a3,0(a4)
a0007a34:	6785                	lui	a5,0x1
a0007a36:	4701                	li	a4,0
a0007a38:	05000593          	li	a1,80
a0007a3c:	04e5160b          	addsl	a2,a0,a4,2
a0007a40:	00f606b3          	add	a3,a2,a5
a0007a44:	000680a3          	sb	zero,1(a3) # 60000001 <__RFTLV_HEAD1_H+0x19adb3bf>
a0007a48:	00f6500b          	srb	zero,a2,a5,0
a0007a4c:	00068123          	sb	zero,2(a3)
a0007a50:	0705                	addi	a4,a4,1
a0007a52:	feb715e3          	bne	a4,a1,a0007a3c <SystemInit+0xfa>
a0007a56:	e0801737          	lui	a4,0xe0801
a0007a5a:	4689                	li	a3,2
a0007a5c:	00d70723          	sb	a3,14(a4) # e080100e <__psram_limit+0x3840100e>
a0007a60:	04d70723          	sb	a3,78(a4)
a0007a64:	0ff0000f          	fence
a0007a68:	0000100f          	fence.i
a0007a6c:	0020000b          	dcache.iall
a0007a70:	7c102773          	csrr	a4,mhcr
a0007a74:	03e78793          	addi	a5,a5,62 # 103e <HeapMinSize+0x3e>
a0007a78:	8fd9                	or	a5,a5,a4
a0007a7a:	7c179073          	csrw	mhcr,a5
a0007a7e:	0ff0000f          	fence
a0007a82:	0000100f          	fence.i
a0007a86:	0ff0000f          	fence
a0007a8a:	0000100f          	fence.i
a0007a8e:	0100000b          	icache.iall
a0007a92:	7c1027f3          	csrr	a5,mhcr
a0007a96:	0017e793          	ori	a5,a5,1
a0007a9a:	7c179073          	csrw	mhcr,a5
a0007a9e:	0ff0000f          	fence
a0007aa2:	0000100f          	fence.i
a0007aa6:	7e1027f3          	csrr	a5,mexstatus
a0007aaa:	fffd0737          	lui	a4,0xfffd0
a0007aae:	177d                	addi	a4,a4,-1
a0007ab0:	8ff9                	and	a5,a5,a4
a0007ab2:	7e179073          	csrw	mexstatus,a5
a0007ab6:	200007b7          	lui	a5,0x20000
a0007aba:	577d                	li	a4,-1
a0007abc:	66c1                	lui	a3,0x10
a0007abe:	14e7aa23          	sw	a4,340(a5) # 20000154 <remain_wifi_ram+0x1ffe0154>
a0007ac2:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a0007ac6:	14e7ac23          	sw	a4,344(a5)
a0007aca:	00000713          	li	a4,0
a0007ace:	c63a                	sw	a4,12(sp)
a0007ad0:	60c7a783          	lw	a5,1548(a5)
a0007ad4:	4732                	lw	a4,12(sp)
a0007ad6:	eb09                	bnez	a4,a0007ae8 <SystemInit+0x1a6>
a0007ad8:	ff07f713          	andi	a4,a5,-16
a0007adc:	200007b7          	lui	a5,0x20000
a0007ae0:	60e7a623          	sw	a4,1548(a5) # 2000060c <remain_wifi_ram+0x1ffe060c>
a0007ae4:	0141                	addi	sp,sp,16
a0007ae6:	8082                	ret
a0007ae8:	4632                	lw	a2,12(sp)
a0007aea:	6721                	lui	a4,0x8
a0007aec:	00e61663          	bne	a2,a4,a0007af8 <SystemInit+0x1b6>
a0007af0:	9bc1                	andi	a5,a5,-16
a0007af2:	0037e713          	ori	a4,a5,3
a0007af6:	b7dd                	j	a0007adc <SystemInit+0x19a>
a0007af8:	4632                	lw	a2,12(sp)
a0007afa:	ff07f713          	andi	a4,a5,-16
a0007afe:	fcd61fe3          	bne	a2,a3,a0007adc <SystemInit+0x19a>
a0007b02:	00f7e713          	ori	a4,a5,15
a0007b06:	bfd9                	j	a0007adc <SystemInit+0x19a>

a0007b08 <System_Post_Init>:
a0007b08:	1141                	addi	sp,sp,-16
a0007b0a:	c606                	sw	ra,12(sp)
a0007b0c:	3505                	jal	a000792c <System_BOD_Init>
a0007b0e:	0ff0000f          	fence
a0007b12:	0010000b          	dcache.call
a0007b16:	0ff0000f          	fence
a0007b1a:	0ff0000f          	fence
a0007b1e:	0000100f          	fence.i
a0007b22:	0100000b          	icache.iall
a0007b26:	0ff0000f          	fence
a0007b2a:	0000100f          	fence.i
a0007b2e:	c2fb9097          	auipc	ra,0xc2fb9
a0007b32:	13e080e7          	jalr	318(ra) # 62fc0c6c <system_setup_xtal_config.isra.0>
a0007b36:	30046073          	csrsi	mstatus,8
a0007b3a:	40b2                	lw	ra,12(sp)
a0007b3c:	0141                	addi	sp,sp,16
a0007b3e:	8082                	ret

a0007b40 <exception_entry>:
a0007b40:	a0009537          	lui	a0,0xa0009
a0007b44:	715d                	addi	sp,sp,-80
a0007b46:	34c50513          	addi	a0,a0,844 # a000934c <__psram_limit+0xf7c0934c>
a0007b4a:	c686                	sw	ra,76(sp)
a0007b4c:	c4a2                	sw	s0,72(sp)
a0007b4e:	c2a6                	sw	s1,68(sp)
a0007b50:	c0ca                	sw	s2,64(sp)
a0007b52:	906fe0ef          	jal	ra,a0005c58 <printf>
a0007b56:	34202473          	csrr	s0,mcause
a0007b5a:	a0009537          	lui	a0,0xa0009
a0007b5e:	85a2                	mv	a1,s0
a0007b60:	36050513          	addi	a0,a0,864 # a0009360 <__psram_limit+0xf7c09360>
a0007b64:	8f4fe0ef          	jal	ra,a0005c58 <printf>
a0007b68:	341024f3          	csrr	s1,mepc
a0007b6c:	a0009537          	lui	a0,0xa0009
a0007b70:	85a6                	mv	a1,s1
a0007b72:	37050513          	addi	a0,a0,880 # a0009370 <__psram_limit+0xf7c09370>
a0007b76:	8e2fe0ef          	jal	ra,a0005c58 <printf>
a0007b7a:	343025f3          	csrr	a1,mtval
a0007b7e:	a0009537          	lui	a0,0xa0009
a0007b82:	37c50513          	addi	a0,a0,892 # a000937c <__psram_limit+0xf7c0937c>
a0007b86:	8d2fe0ef          	jal	ra,a0005c58 <printf>
a0007b8a:	a00095b7          	lui	a1,0xa0009
a0007b8e:	04000613          	li	a2,64
a0007b92:	39458593          	addi	a1,a1,916 # a0009394 <__psram_limit+0xf7c09394>
a0007b96:	850a                	mv	a0,sp
a0007b98:	feafc0ef          	jal	ra,a0004382 <memcpy>
a0007b9c:	3ff47913          	andi	s2,s0,1023
a0007ba0:	883d                	andi	s0,s0,15
a0007ba2:	4481458b          	lrw	a1,sp,s0,2
a0007ba6:	a0009537          	lui	a0,0xa0009
a0007baa:	38c50513          	addi	a0,a0,908 # a000938c <__psram_limit+0xf7c0938c>
a0007bae:	8aafe0ef          	jal	ra,a0005c58 <printf>
a0007bb2:	47a1                	li	a5,8
a0007bb4:	00f90d63          	beq	s2,a5,a0007bce <exception_entry+0x8e>
a0007bb8:	47ad                	li	a5,11
a0007bba:	00f90a63          	beq	s2,a5,a0007bce <exception_entry+0x8e>
a0007bbe:	62fc3437          	lui	s0,0x62fc3
a0007bc2:	fe040413          	addi	s0,s0,-32 # 62fc2fe0 <adc>
a0007bc6:	8122                	mv	sp,s0
a0007bc8:	a9afe0ef          	jal	ra,a0005e62 <coredump_run>
a0007bcc:	bfed                	j	a0007bc6 <exception_entry+0x86>
a0007bce:	0491                	addi	s1,s1,4
a0007bd0:	34149073          	csrw	mepc,s1
a0007bd4:	40b6                	lw	ra,76(sp)
a0007bd6:	4426                	lw	s0,72(sp)
a0007bd8:	4496                	lw	s1,68(sp)
a0007bda:	4906                	lw	s2,64(sp)
a0007bdc:	6161                	addi	sp,sp,80
a0007bde:	8082                	ret

a0007be0 <interrupt_entry>:
a0007be0:	1141                	addi	sp,sp,-16
a0007be2:	c602                	sw	zero,12(sp)
a0007be4:	342027f3          	csrr	a5,mcause
a0007be8:	c63e                	sw	a5,12(sp)
a0007bea:	4532                	lw	a0,12(sp)
a0007bec:	04f00793          	li	a5,79
a0007bf0:	3ff57513          	andi	a0,a0,1023
a0007bf4:	00a7ee63          	bltu	a5,a0,a0007c10 <interrupt_entry+0x30>
a0007bf8:	62fc37b7          	lui	a5,0x62fc3
a0007bfc:	46078793          	addi	a5,a5,1120 # 62fc3460 <g_irqvector>
a0007c00:	46a7c70b          	lrw	a4,a5,a0,3
a0007c04:	c711                	beqz	a4,a0007c10 <interrupt_entry+0x30>
a0007c06:	06a7978b          	addsl	a5,a5,a0,3
a0007c0a:	43cc                	lw	a1,4(a5)
a0007c0c:	0141                	addi	sp,sp,16
a0007c0e:	8702                	jr	a4
a0007c10:	0141                	addi	sp,sp,16
a0007c12:	8082                	ret

a0007c14 <GLB_Set_ADC_CLK>:
a0007c14:	200007b7          	lui	a5,0x20000
a0007c18:	10078793          	addi	a5,a5,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a0007c1c:	4b98                	lw	a4,16(a5)
a0007c1e:	059e                	slli	a1,a1,0x7
a0007c20:	eff77713          	andi	a4,a4,-257
a0007c24:	cb98                	sw	a4,16(a5)
a0007c26:	4b98                	lw	a4,16(a5)
a0007c28:	fc077713          	andi	a4,a4,-64
a0007c2c:	8e59                	or	a2,a2,a4
a0007c2e:	f7f67613          	andi	a2,a2,-129
a0007c32:	8dd1                	or	a1,a1,a2
a0007c34:	cb8c                	sw	a1,16(a5)
a0007c36:	4b98                	lw	a4,16(a5)
a0007c38:	eff77793          	andi	a5,a4,-257
a0007c3c:	c119                	beqz	a0,a0007c42 <GLB_Set_ADC_CLK+0x2e>
a0007c3e:	10076793          	ori	a5,a4,256
a0007c42:	20000737          	lui	a4,0x20000
a0007c46:	10f72823          	sw	a5,272(a4) # 20000110 <remain_wifi_ram+0x1ffe0110>
a0007c4a:	4501                	li	a0,0
a0007c4c:	8082                	ret

a0007c4e <GLB_Set_IR_CLK>:
a0007c4e:	20000737          	lui	a4,0x20000
a0007c52:	10070713          	addi	a4,a4,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a0007c56:	4334                	lw	a3,64(a4)
a0007c58:	ff8007b7          	lui	a5,0xff800
a0007c5c:	17fd                	addi	a5,a5,-1
a0007c5e:	8efd                	and	a3,a3,a5
a0007c60:	c334                	sw	a3,64(a4)
a0007c62:	4334                	lw	a3,64(a4)
a0007c64:	ffc105b7          	lui	a1,0xffc10
a0007c68:	15fd                	addi	a1,a1,-1
a0007c6a:	8eed                	and	a3,a3,a1
a0007c6c:	0642                	slli	a2,a2,0x10
a0007c6e:	8e55                	or	a2,a2,a3
a0007c70:	c330                	sw	a2,64(a4)
a0007c72:	4338                	lw	a4,64(a4)
a0007c74:	8ff9                	and	a5,a5,a4
a0007c76:	c501                	beqz	a0,a0007c7e <GLB_Set_IR_CLK+0x30>
a0007c78:	008007b7          	lui	a5,0x800
a0007c7c:	8fd9                	or	a5,a5,a4
a0007c7e:	20000737          	lui	a4,0x20000
a0007c82:	14f72023          	sw	a5,320(a4) # 20000140 <remain_wifi_ram+0x1ffe0140>
a0007c86:	4501                	li	a0,0
a0007c88:	8082                	ret

a0007c8a <GLB_Set_I2C_CLK>:
a0007c8a:	20000737          	lui	a4,0x20000
a0007c8e:	18070713          	addi	a4,a4,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007c92:	4314                	lw	a3,0(a4)
a0007c94:	ff0007b7          	lui	a5,0xff000
a0007c98:	17fd                	addi	a5,a5,-1
a0007c9a:	8efd                	and	a3,a3,a5
a0007c9c:	c314                	sw	a3,0(a4)
a0007c9e:	4314                	lw	a3,0(a4)
a0007ca0:	fe000837          	lui	a6,0xfe000
a0007ca4:	187d                	addi	a6,a6,-1
a0007ca6:	0106f6b3          	and	a3,a3,a6
a0007caa:	05e6                	slli	a1,a1,0x19
a0007cac:	8dd5                	or	a1,a1,a3
a0007cae:	ff0106b7          	lui	a3,0xff010
a0007cb2:	16fd                	addi	a3,a3,-1
a0007cb4:	8df5                	and	a1,a1,a3
a0007cb6:	0642                	slli	a2,a2,0x10
a0007cb8:	8dd1                	or	a1,a1,a2
a0007cba:	c30c                	sw	a1,0(a4)
a0007cbc:	4318                	lw	a4,0(a4)
a0007cbe:	8ff9                	and	a5,a5,a4
a0007cc0:	c501                	beqz	a0,a0007cc8 <GLB_Set_I2C_CLK+0x3e>
a0007cc2:	010007b7          	lui	a5,0x1000
a0007cc6:	8fd9                	or	a5,a5,a4
a0007cc8:	20000737          	lui	a4,0x20000
a0007ccc:	18f72023          	sw	a5,384(a4) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007cd0:	4501                	li	a0,0
a0007cd2:	8082                	ret

a0007cd4 <GLB_Set_SPI_CLK>:
a0007cd4:	200007b7          	lui	a5,0x20000
a0007cd8:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007cdc:	5b94                	lw	a3,48(a5)
a0007cde:	05a6                	slli	a1,a1,0x9
a0007ce0:	eff6f693          	andi	a3,a3,-257
a0007ce4:	db94                	sw	a3,48(a5)
a0007ce6:	5b98                	lw	a4,48(a5)
a0007ce8:	de077713          	andi	a4,a4,-544
a0007cec:	8f51                	or	a4,a4,a2
a0007cee:	8dd9                	or	a1,a1,a4
a0007cf0:	db8c                	sw	a1,48(a5)
a0007cf2:	5b98                	lw	a4,48(a5)
a0007cf4:	eff77793          	andi	a5,a4,-257
a0007cf8:	c119                	beqz	a0,a0007cfe <GLB_Set_SPI_CLK+0x2a>
a0007cfa:	10076793          	ori	a5,a4,256
a0007cfe:	20000737          	lui	a4,0x20000
a0007d02:	1af72823          	sw	a5,432(a4) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a0007d06:	4501                	li	a0,0
a0007d08:	8082                	ret

a0007d0a <GLB_Set_DBI_CLK>:
a0007d0a:	200007b7          	lui	a5,0x20000
a0007d0e:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007d12:	5bb4                	lw	a3,112(a5)
a0007d14:	05a6                	slli	a1,a1,0x9
a0007d16:	eff6f693          	andi	a3,a3,-257
a0007d1a:	dbb4                	sw	a3,112(a5)
a0007d1c:	5bb8                	lw	a4,112(a5)
a0007d1e:	de077713          	andi	a4,a4,-544
a0007d22:	8f51                	or	a4,a4,a2
a0007d24:	8dd9                	or	a1,a1,a4
a0007d26:	dbac                	sw	a1,112(a5)
a0007d28:	5bb8                	lw	a4,112(a5)
a0007d2a:	eff77793          	andi	a5,a4,-257
a0007d2e:	c119                	beqz	a0,a0007d34 <GLB_Set_DBI_CLK+0x2a>
a0007d30:	10076793          	ori	a5,a4,256
a0007d34:	20000737          	lui	a4,0x20000
a0007d38:	1ef72823          	sw	a5,496(a4) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a0007d3c:	4501                	li	a0,0
a0007d3e:	8082                	ret

a0007d40 <GLB_Set_CAM_CLK>:
a0007d40:	20000737          	lui	a4,0x20000
a0007d44:	40070713          	addi	a4,a4,1024 # 20000400 <remain_wifi_ram+0x1ffe0400>
a0007d48:	5314                	lw	a3,32(a4)
a0007d4a:	f80007b7          	lui	a5,0xf8000
a0007d4e:	17fd                	addi	a5,a5,-1
a0007d50:	8efd                	and	a3,a3,a5
a0007d52:	d314                	sw	a3,32(a4)
a0007d54:	5314                	lw	a3,32(a4)
a0007d56:	d0000837          	lui	a6,0xd0000
a0007d5a:	187d                	addi	a6,a6,-1
a0007d5c:	0106f6b3          	and	a3,a3,a6
a0007d60:	05f2                	slli	a1,a1,0x1c
a0007d62:	8dd5                	or	a1,a1,a3
a0007d64:	400006b7          	lui	a3,0x40000
a0007d68:	16fd                	addi	a3,a3,-1
a0007d6a:	8df5                	and	a1,a1,a3
a0007d6c:	067a                	slli	a2,a2,0x1e
a0007d6e:	8dd1                	or	a1,a1,a2
a0007d70:	d30c                	sw	a1,32(a4)
a0007d72:	5318                	lw	a4,32(a4)
a0007d74:	8ff9                	and	a5,a5,a4
a0007d76:	c501                	beqz	a0,a0007d7e <GLB_Set_CAM_CLK+0x3e>
a0007d78:	080007b7          	lui	a5,0x8000
a0007d7c:	8fd9                	or	a5,a5,a4
a0007d7e:	20000737          	lui	a4,0x20000
a0007d82:	42f72023          	sw	a5,1056(a4) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0007d86:	4501                	li	a0,0
a0007d88:	8082                	ret

a0007d8a <HBN_Enable_BOD_IRQ>:
a0007d8a:	2000f737          	lui	a4,0x2000f
a0007d8e:	4b5c                	lw	a5,20(a4)
a0007d90:	000406b7          	lui	a3,0x40
a0007d94:	4501                	li	a0,0
a0007d96:	8fd5                	or	a5,a5,a3
a0007d98:	cb5c                	sw	a5,20(a4)
a0007d9a:	8082                	ret

a0007d9c <HBN_Disable_BOD_IRQ>:
a0007d9c:	2000f6b7          	lui	a3,0x2000f
a0007da0:	4adc                	lw	a5,20(a3)
a0007da2:	fffc0737          	lui	a4,0xfffc0
a0007da6:	177d                	addi	a4,a4,-1
a0007da8:	8ff9                	and	a5,a5,a4
a0007daa:	cadc                	sw	a5,20(a3)
a0007dac:	4501                	li	a0,0
a0007dae:	8082                	ret

a0007db0 <HBN_Set_BOD_Cfg>:
a0007db0:	1141                	addi	sp,sp,-16
a0007db2:	c422                	sw	s0,8(sp)
a0007db4:	c606                	sw	ra,12(sp)
a0007db6:	00154783          	lbu	a5,1(a0)
a0007dba:	842a                	mv	s0,a0
a0007dbc:	c3a9                	beqz	a5,a0007dfe <HBN_Set_BOD_Cfg+0x4e>
a0007dbe:	37f1                	jal	a0007d8a <HBN_Enable_BOD_IRQ>
a0007dc0:	2000f7b7          	lui	a5,0x2000f
a0007dc4:	57dc                	lw	a5,44(a5)
a0007dc6:	00344683          	lbu	a3,3(s0)
a0007dca:	ff17f713          	andi	a4,a5,-15
a0007dce:	00244783          	lbu	a5,2(s0)
a0007dd2:	0786                	slli	a5,a5,0x1
a0007dd4:	8fd9                	or	a5,a5,a4
a0007dd6:	ffe7f713          	andi	a4,a5,-2
a0007dda:	c299                	beqz	a3,a0007de0 <HBN_Set_BOD_Cfg+0x30>
a0007ddc:	0017e713          	ori	a4,a5,1
a0007de0:	00044683          	lbu	a3,0(s0)
a0007de4:	fef77793          	andi	a5,a4,-17
a0007de8:	c299                	beqz	a3,a0007dee <HBN_Set_BOD_Cfg+0x3e>
a0007dea:	01076793          	ori	a5,a4,16
a0007dee:	40b2                	lw	ra,12(sp)
a0007df0:	4422                	lw	s0,8(sp)
a0007df2:	2000f737          	lui	a4,0x2000f
a0007df6:	d75c                	sw	a5,44(a4)
a0007df8:	4501                	li	a0,0
a0007dfa:	0141                	addi	sp,sp,16
a0007dfc:	8082                	ret
a0007dfe:	3f79                	jal	a0007d9c <HBN_Disable_BOD_IRQ>
a0007e00:	b7c1                	j	a0007dc0 <HBN_Set_BOD_Cfg+0x10>

a0007e02 <Clock_DBI_Clk_Mux_Output>:
a0007e02:	e919                	bnez	a0,a0007e18 <Clock_DBI_Clk_Mux_Output+0x16>
a0007e04:	200007b7          	lui	a5,0x20000
a0007e08:	2547a503          	lw	a0,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a0007e0c:	2ca5350b          	extu	a0,a0,11,10
a0007e10:	c2fba317          	auipc	t1,0xc2fba
a0007e14:	c6430067          	jr	-924(t1) # 62fc1a74 <Clock_160M_Clk_Mux_Output>
a0007e18:	4515                	li	a0,5
a0007e1a:	c2fba317          	auipc	t1,0xc2fba
a0007e1e:	d5c30067          	jr	-676(t1) # 62fc1b76 <Clock_System_Clock_Get>

a0007e22 <Clock_Get_PSRAMB_Clk>:
a0007e22:	1141                	addi	sp,sp,-16
a0007e24:	200007b7          	lui	a5,0x20000
a0007e28:	c422                	sw	s0,8(sp)
a0007e2a:	6207a403          	lw	s0,1568(a5) # 20000620 <remain_wifi_ram+0x1ffe0620>
a0007e2e:	6207a783          	lw	a5,1568(a5)
a0007e32:	c606                	sw	ra,12(sp)
a0007e34:	8079                	srli	s0,s0,0x1e
a0007e36:	71c7b78b          	extu	a5,a5,28,28
a0007e3a:	1312d537          	lui	a0,0x1312d
a0007e3e:	c791                	beqz	a5,a0007e4a <Clock_Get_PSRAMB_Clk+0x28>
a0007e40:	4501                	li	a0,0
a0007e42:	c2fba097          	auipc	ra,0xc2fba
a0007e46:	aca080e7          	jalr	-1334(ra) # 62fc190c <Clock_Get_AUPLL_Output>
a0007e4a:	0405                	addi	s0,s0,1
a0007e4c:	02855533          	divu	a0,a0,s0
a0007e50:	40b2                	lw	ra,12(sp)
a0007e52:	4422                	lw	s0,8(sp)
a0007e54:	0141                	addi	sp,sp,16
a0007e56:	8082                	ret

a0007e58 <Clock_Get_ISP_Clk>:
a0007e58:	200007b7          	lui	a5,0x20000
a0007e5c:	2547a783          	lw	a5,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a0007e60:	8b8d                	andi	a5,a5,3
a0007e62:	cb91                	beqz	a5,a0007e76 <Clock_Get_ISP_Clk+0x1e>
a0007e64:	4705                	li	a4,1
a0007e66:	4515                	li	a0,5
a0007e68:	00e78363          	beq	a5,a4,a0007e6e <Clock_Get_ISP_Clk+0x16>
a0007e6c:	4519                	li	a0,6
a0007e6e:	c2fba317          	auipc	t1,0xc2fba
a0007e72:	a9e30067          	jr	-1378(t1) # 62fc190c <Clock_Get_AUPLL_Output>
a0007e76:	04c4b537          	lui	a0,0x4c4b
a0007e7a:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a0007e7e:	8082                	ret

a0007e80 <Clock_Audio_ADC_Clock_Get>:
a0007e80:	1141                	addi	sp,sp,-16
a0007e82:	c606                	sw	ra,12(sp)
a0007e84:	c2fba097          	auipc	ra,0xc2fba
a0007e88:	bce080e7          	jalr	-1074(ra) # 62fc1a52 <Clock_Get_Audio_PLL_Output>
a0007e8c:	200007b7          	lui	a5,0x20000
a0007e90:	3447a783          	lw	a5,836(a5) # 20000344 <remain_wifi_ram+0x1ffe0344>
a0007e94:	40b2                	lw	ra,12(sp)
a0007e96:	5d07b78b          	extu	a5,a5,23,16
a0007e9a:	0785                	addi	a5,a5,1
a0007e9c:	02f55533          	divu	a0,a0,a5
a0007ea0:	0141                	addi	sp,sp,16
a0007ea2:	8082                	ret

a0007ea4 <Clock_Peripheral_Clock_Get>:
a0007ea4:	1141                	addi	sp,sp,-16
a0007ea6:	c606                	sw	ra,12(sp)
a0007ea8:	c422                	sw	s0,8(sp)
a0007eaa:	4731                	li	a4,12
a0007eac:	22e50d63          	beq	a0,a4,a00080e6 <Clock_Peripheral_Clock_Get+0x242>
a0007eb0:	87aa                	mv	a5,a0
a0007eb2:	04a76c63          	bltu	a4,a0,a0007f0a <Clock_Peripheral_Clock_Get+0x66>
a0007eb6:	471d                	li	a4,7
a0007eb8:	18e50863          	beq	a0,a4,a0008048 <Clock_Peripheral_Clock_Get+0x1a4>
a0007ebc:	02a76a63          	bltu	a4,a0,a0007ef0 <Clock_Peripheral_Clock_Get+0x4c>
a0007ec0:	4715                	li	a4,5
a0007ec2:	14e50163          	beq	a0,a4,a0008004 <Clock_Peripheral_Clock_Get+0x160>
a0007ec6:	00a76a63          	bltu	a4,a0,a0007eda <Clock_Peripheral_Clock_Get+0x36>
a0007eca:	4709                	li	a4,2
a0007ecc:	0ca77b63          	bgeu	a4,a0,a0007fa2 <Clock_Peripheral_Clock_Get+0xfe>
a0007ed0:	470d                	li	a4,3
a0007ed2:	10e50e63          	beq	a0,a4,a0007fee <Clock_Peripheral_Clock_Get+0x14a>
a0007ed6:	4501                	li	a0,0
a0007ed8:	a02d                	j	a0007f02 <Clock_Peripheral_Clock_Get+0x5e>
a0007eda:	4719                	li	a4,6
a0007edc:	fee51de3          	bne	a0,a4,a0007ed6 <Clock_Peripheral_Clock_Get+0x32>
a0007ee0:	4422                	lw	s0,8(sp)
a0007ee2:	40b2                	lw	ra,12(sp)
a0007ee4:	450d                	li	a0,3
a0007ee6:	0141                	addi	sp,sp,16
a0007ee8:	c2fba317          	auipc	t1,0xc2fba
a0007eec:	c8e30067          	jr	-882(t1) # 62fc1b76 <Clock_System_Clock_Get>
a0007ef0:	4729                	li	a4,10
a0007ef2:	14e50763          	beq	a0,a4,a0008040 <Clock_Peripheral_Clock_Get+0x19c>
a0007ef6:	46ad                	li	a3,11
a0007ef8:	14d50c63          	beq	a0,a3,a0008050 <Clock_Peripheral_Clock_Get+0x1ac>
a0007efc:	4501                	li	a0,0
a0007efe:	10e79d63          	bne	a5,a4,a0008018 <Clock_Peripheral_Clock_Get+0x174>
a0007f02:	40b2                	lw	ra,12(sp)
a0007f04:	4422                	lw	s0,8(sp)
a0007f06:	0141                	addi	sp,sp,16
a0007f08:	8082                	ret
a0007f0a:	4745                	li	a4,17
a0007f0c:	26e50763          	beq	a0,a4,a000817a <Clock_Peripheral_Clock_Get+0x2d6>
a0007f10:	04a76b63          	bltu	a4,a0,a0007f66 <Clock_Peripheral_Clock_Get+0xc2>
a0007f14:	473d                	li	a4,15
a0007f16:	1ee50f63          	beq	a0,a4,a0008114 <Clock_Peripheral_Clock_Get+0x270>
a0007f1a:	00a76c63          	bltu	a4,a0,a0007f32 <Clock_Peripheral_Clock_Get+0x8e>
a0007f1e:	4735                	li	a4,13
a0007f20:	1ce50e63          	beq	a0,a4,a00080fc <Clock_Peripheral_Clock_Get+0x258>
a0007f24:	4739                	li	a4,14
a0007f26:	fae518e3          	bne	a0,a4,a0007ed6 <Clock_Peripheral_Clock_Get+0x32>
a0007f2a:	4422                	lw	s0,8(sp)
a0007f2c:	40b2                	lw	ra,12(sp)
a0007f2e:	0141                	addi	sp,sp,16
a0007f30:	bf81                	j	a0007e80 <Clock_Audio_ADC_Clock_Get>
a0007f32:	4741                	li	a4,16
a0007f34:	fae511e3          	bne	a0,a4,a0007ed6 <Clock_Peripheral_Clock_Get+0x32>
a0007f38:	200007b7          	lui	a5,0x20000
a0007f3c:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a0007f40:	75c7b78b          	extu	a5,a5,29,28
a0007f44:	22078663          	beqz	a5,a0008170 <Clock_Peripheral_Clock_Get+0x2cc>
a0007f48:	4705                	li	a4,1
a0007f4a:	20e79e63          	bne	a5,a4,a0008166 <Clock_Peripheral_Clock_Get+0x2c2>
a0007f4e:	4515                	li	a0,5
a0007f50:	c2fba097          	auipc	ra,0xc2fba
a0007f54:	c26080e7          	jalr	-986(ra) # 62fc1b76 <Clock_System_Clock_Get>
a0007f58:	200007b7          	lui	a5,0x20000
a0007f5c:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a0007f60:	5907b78b          	extu	a5,a5,22,16
a0007f64:	a8a5                	j	a0007fdc <Clock_Peripheral_Clock_Get+0x138>
a0007f66:	474d                	li	a4,19
a0007f68:	24e50e63          	beq	a0,a4,a00081c4 <Clock_Peripheral_Clock_Get+0x320>
a0007f6c:	4751                	li	a4,20
a0007f6e:	6521                	lui	a0,0x8
a0007f70:	f8e789e3          	beq	a5,a4,a0007f02 <Clock_Peripheral_Clock_Get+0x5e>
a0007f74:	4749                	li	a4,18
a0007f76:	f6e790e3          	bne	a5,a4,a0007ed6 <Clock_Peripheral_Clock_Get+0x32>
a0007f7a:	200007b7          	lui	a5,0x20000
a0007f7e:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a0007f82:	30c7b78b          	extu	a5,a5,12,12
a0007f86:	22078a63          	beqz	a5,a00081ba <Clock_Peripheral_Clock_Get+0x316>
a0007f8a:	4515                	li	a0,5
a0007f8c:	c2fba097          	auipc	ra,0xc2fba
a0007f90:	980080e7          	jalr	-1664(ra) # 62fc190c <Clock_Get_AUPLL_Output>
a0007f94:	200007b7          	lui	a5,0x20000
a0007f98:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a0007f9c:	2c97b78b          	extu	a5,a5,11,9
a0007fa0:	a835                	j	a0007fdc <Clock_Peripheral_Clock_Get+0x138>
a0007fa2:	200006b7          	lui	a3,0x20000
a0007fa6:	1506a703          	lw	a4,336(a3) # 20000150 <remain_wifi_ram+0x1ffe0150>
a0007faa:	450d                	li	a0,3
a0007fac:	01575793          	srli	a5,a4,0x15
a0007fb0:	8b89                	andi	a5,a5,2
a0007fb2:	1c77370b          	extu	a4,a4,7,7
a0007fb6:	8fd9                	or	a5,a5,a4
a0007fb8:	c795                	beqz	a5,a0007fe4 <Clock_Peripheral_Clock_Get+0x140>
a0007fba:	4705                	li	a4,1
a0007fbc:	4515                	li	a0,5
a0007fbe:	02e79363          	bne	a5,a4,a0007fe4 <Clock_Peripheral_Clock_Get+0x140>
a0007fc2:	2546a503          	lw	a0,596(a3)
a0007fc6:	2ca5350b          	extu	a0,a0,11,10
a0007fca:	c2fba097          	auipc	ra,0xc2fba
a0007fce:	aaa080e7          	jalr	-1366(ra) # 62fc1a74 <Clock_160M_Clk_Mux_Output>
a0007fd2:	200007b7          	lui	a5,0x20000
a0007fd6:	1507a783          	lw	a5,336(a5) # 20000150 <remain_wifi_ram+0x1ffe0150>
a0007fda:	8b9d                	andi	a5,a5,7
a0007fdc:	0785                	addi	a5,a5,1
a0007fde:	02f55533          	divu	a0,a0,a5
a0007fe2:	b705                	j	a0007f02 <Clock_Peripheral_Clock_Get+0x5e>
a0007fe4:	c2fba097          	auipc	ra,0xc2fba
a0007fe8:	b92080e7          	jalr	-1134(ra) # 62fc1b76 <Clock_System_Clock_Get>
a0007fec:	b7dd                	j	a0007fd2 <Clock_Peripheral_Clock_Get+0x12e>
a0007fee:	20000437          	lui	s0,0x20000
a0007ff2:	1b042503          	lw	a0,432(s0) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a0007ff6:	2495350b          	extu	a0,a0,9,9
a0007ffa:	3521                	jal	a0007e02 <Clock_DBI_Clk_Mux_Output>
a0007ffc:	1b042783          	lw	a5,432(s0)
a0008000:	8bfd                	andi	a5,a5,31
a0008002:	bfe9                	j	a0007fdc <Clock_Peripheral_Clock_Get+0x138>
a0008004:	20000437          	lui	s0,0x20000
a0008008:	1f042503          	lw	a0,496(s0) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a000800c:	2495350b          	extu	a0,a0,9,9
a0008010:	3bcd                	jal	a0007e02 <Clock_DBI_Clk_Mux_Output>
a0008012:	1f042783          	lw	a5,496(s0)
a0008016:	b7ed                	j	a0008000 <Clock_Peripheral_Clock_Get+0x15c>
a0008018:	200007b7          	lui	a5,0x20000
a000801c:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0008020:	450d                	li	a0,3
a0008022:	6597b78b          	extu	a5,a5,25,25
a0008026:	c391                	beqz	a5,a000802a <Clock_Peripheral_Clock_Get+0x186>
a0008028:	4515                	li	a0,5
a000802a:	c2fba097          	auipc	ra,0xc2fba
a000802e:	b4c080e7          	jalr	-1204(ra) # 62fc1b76 <Clock_System_Clock_Get>
a0008032:	200007b7          	lui	a5,0x20000
a0008036:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a000803a:	5d07b78b          	extu	a5,a5,23,16
a000803e:	bf79                	j	a0007fdc <Clock_Peripheral_Clock_Get+0x138>
a0008040:	4422                	lw	s0,8(sp)
a0008042:	40b2                	lw	ra,12(sp)
a0008044:	0141                	addi	sp,sp,16
a0008046:	bbf1                	j	a0007e22 <Clock_Get_PSRAMB_Clk>
a0008048:	4422                	lw	s0,8(sp)
a000804a:	40b2                	lw	ra,12(sp)
a000804c:	0141                	addi	sp,sp,16
a000804e:	b529                	j	a0007e58 <Clock_Get_ISP_Clk>
a0008050:	20000737          	lui	a4,0x20000
a0008054:	17072783          	lw	a5,368(a4) # 20000170 <remain_wifi_ram+0x1ffe0170>
a0008058:	34c7b78b          	extu	a5,a5,13,12
a000805c:	ef8d                	bnez	a5,a0008096 <Clock_Peripheral_Clock_Get+0x1f2>
a000805e:	17072783          	lw	a5,368(a4)
a0008062:	3ce7b78b          	extu	a5,a5,15,14
a0008066:	c3ad                	beqz	a5,a00080c8 <Clock_Peripheral_Clock_Get+0x224>
a0008068:	4705                	li	a4,1
a000806a:	00e79d63          	bne	a5,a4,a0008084 <Clock_Peripheral_Clock_Get+0x1e0>
a000806e:	c2fba097          	auipc	ra,0xc2fba
a0008072:	a34080e7          	jalr	-1484(ra) # 62fc1aa2 <Clock_Xtal_Output>
a0008076:	200007b7          	lui	a5,0x20000
a000807a:	1707a783          	lw	a5,368(a5) # 20000170 <remain_wifi_ram+0x1ffe0170>
a000807e:	2887b78b          	extu	a5,a5,10,8
a0008082:	bfa9                	j	a0007fdc <Clock_Peripheral_Clock_Get+0x138>
a0008084:	4709                	li	a4,2
a0008086:	04e78163          	beq	a5,a4,a00080c8 <Clock_Peripheral_Clock_Get+0x224>
a000808a:	4515                	li	a0,5
a000808c:	c2fba097          	auipc	ra,0xc2fba
a0008090:	880080e7          	jalr	-1920(ra) # 62fc190c <Clock_Get_AUPLL_Output>
a0008094:	b7cd                	j	a0008076 <Clock_Peripheral_Clock_Get+0x1d2>
a0008096:	4685                	li	a3,1
a0008098:	00d79f63          	bne	a5,a3,a00080b6 <Clock_Peripheral_Clock_Get+0x212>
a000809c:	25472703          	lw	a4,596(a4)
a00080a0:	2487370b          	extu	a4,a4,9,8
a00080a4:	c71d                	beqz	a4,a00080d2 <Clock_Peripheral_Clock_Get+0x22e>
a00080a6:	fef702e3          	beq	a4,a5,a000808a <Clock_Peripheral_Clock_Get+0x1e6>
a00080aa:	4789                	li	a5,2
a00080ac:	4501                	li	a0,0
a00080ae:	fcf714e3          	bne	a4,a5,a0008076 <Clock_Peripheral_Clock_Get+0x1d2>
a00080b2:	4519                	li	a0,6
a00080b4:	bfe1                	j	a000808c <Clock_Peripheral_Clock_Get+0x1e8>
a00080b6:	4709                	li	a4,2
a00080b8:	02e79263          	bne	a5,a4,a00080dc <Clock_Peripheral_Clock_Get+0x238>
a00080bc:	450d                	li	a0,3
a00080be:	c2fba097          	auipc	ra,0xc2fba
a00080c2:	ab8080e7          	jalr	-1352(ra) # 62fc1b76 <Clock_System_Clock_Get>
a00080c6:	bf45                	j	a0008076 <Clock_Peripheral_Clock_Get+0x1d2>
a00080c8:	07271537          	lui	a0,0x7271
a00080cc:	e0050513          	addi	a0,a0,-512 # 7270e00 <remain_wifi_ram+0x7250e00>
a00080d0:	b75d                	j	a0008076 <Clock_Peripheral_Clock_Get+0x1d2>
a00080d2:	04c4b537          	lui	a0,0x4c4b
a00080d6:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a00080da:	bf71                	j	a0008076 <Clock_Peripheral_Clock_Get+0x1d2>
a00080dc:	05b8e537          	lui	a0,0x5b8e
a00080e0:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a00080e4:	bf49                	j	a0008076 <Clock_Peripheral_Clock_Get+0x1d2>
a00080e6:	c2fba097          	auipc	ra,0xc2fba
a00080ea:	96c080e7          	jalr	-1684(ra) # 62fc1a52 <Clock_Get_Audio_PLL_Output>
a00080ee:	200007b7          	lui	a5,0x20000
a00080f2:	1907a783          	lw	a5,400(a5) # 20000190 <remain_wifi_ram+0x1ffe0190>
a00080f6:	03f7f793          	andi	a5,a5,63
a00080fa:	b5cd                	j	a0007fdc <Clock_Peripheral_Clock_Get+0x138>
a00080fc:	4515                	li	a0,5
a00080fe:	c2fba097          	auipc	ra,0xc2fba
a0008102:	a78080e7          	jalr	-1416(ra) # 62fc1b76 <Clock_System_Clock_Get>
a0008106:	200007b7          	lui	a5,0x20000
a000810a:	1407a783          	lw	a5,320(a5) # 20000140 <remain_wifi_ram+0x1ffe0140>
a000810e:	5507b78b          	extu	a5,a5,21,16
a0008112:	b5e9                	j	a0007fdc <Clock_Peripheral_Clock_Get+0x138>
a0008114:	2000f737          	lui	a4,0x2000f
a0008118:	531c                	lw	a5,32(a4)
a000811a:	2087b78b          	extu	a5,a5,8,8
a000811e:	cb99                	beqz	a5,a0008134 <Clock_Peripheral_Clock_Get+0x290>
a0008120:	5b08                	lw	a0,48(a4)
a0008122:	4422                	lw	s0,8(sp)
a0008124:	40b2                	lw	ra,12(sp)
a0008126:	1035350b          	extu	a0,a0,4,3
a000812a:	0141                	addi	sp,sp,16
a000812c:	c2fba317          	auipc	t1,0xc2fba
a0008130:	9ae30067          	jr	-1618(t1) # 62fc1ada <Clock_F32k_Mux_Output>
a0008134:	200007b7          	lui	a5,0x20000
a0008138:	1107a403          	lw	s0,272(a5) # 20000110 <remain_wifi_ram+0x1ffe0110>
a000813c:	1107a783          	lw	a5,272(a5)
a0008140:	03f47413          	andi	s0,s0,63
a0008144:	1c77b78b          	extu	a5,a5,7,7
a0008148:	eb89                	bnez	a5,a000815a <Clock_Peripheral_Clock_Get+0x2b6>
a000814a:	c2fba097          	auipc	ra,0xc2fba
a000814e:	908080e7          	jalr	-1784(ra) # 62fc1a52 <Clock_Get_Audio_PLL_Output>
a0008152:	0405                	addi	s0,s0,1
a0008154:	02855533          	divu	a0,a0,s0
a0008158:	b36d                	j	a0007f02 <Clock_Peripheral_Clock_Get+0x5e>
a000815a:	4515                	li	a0,5
a000815c:	c2fba097          	auipc	ra,0xc2fba
a0008160:	a1a080e7          	jalr	-1510(ra) # 62fc1b76 <Clock_System_Clock_Get>
a0008164:	b7fd                	j	a0008152 <Clock_Peripheral_Clock_Get+0x2ae>
a0008166:	c2fba097          	auipc	ra,0xc2fba
a000816a:	8ec080e7          	jalr	-1812(ra) # 62fc1a52 <Clock_Get_Audio_PLL_Output>
a000816e:	b3ed                	j	a0007f58 <Clock_Peripheral_Clock_Get+0xb4>
a0008170:	01e85537          	lui	a0,0x1e85
a0008174:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
a0008178:	b3c5                	j	a0007f58 <Clock_Peripheral_Clock_Get+0xb4>
a000817a:	200007b7          	lui	a5,0x20000
a000817e:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0008182:	75c7b78b          	extu	a5,a5,29,28
a0008186:	ef81                	bnez	a5,a000819e <Clock_Peripheral_Clock_Get+0x2fa>
a0008188:	4515                	li	a0,5
a000818a:	c2fba097          	auipc	ra,0xc2fba
a000818e:	9ec080e7          	jalr	-1556(ra) # 62fc1b76 <Clock_System_Clock_Get>
a0008192:	200007b7          	lui	a5,0x20000
a0008196:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a000819a:	83f9                	srli	a5,a5,0x1e
a000819c:	b581                	j	a0007fdc <Clock_Peripheral_Clock_Get+0x138>
a000819e:	4705                	li	a4,1
a00081a0:	00e78863          	beq	a5,a4,a00081b0 <Clock_Peripheral_Clock_Get+0x30c>
a00081a4:	4515                	li	a0,5
a00081a6:	c2fb9097          	auipc	ra,0xc2fb9
a00081aa:	766080e7          	jalr	1894(ra) # 62fc190c <Clock_Get_AUPLL_Output>
a00081ae:	b7d5                	j	a0008192 <Clock_Peripheral_Clock_Get+0x2ee>
a00081b0:	05b8e537          	lui	a0,0x5b8e
a00081b4:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a00081b8:	bfe9                	j	a0008192 <Clock_Peripheral_Clock_Get+0x2ee>
a00081ba:	05b8e537          	lui	a0,0x5b8e
a00081be:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a00081c2:	bbc9                	j	a0007f94 <Clock_Peripheral_Clock_Get+0xf0>
a00081c4:	20000737          	lui	a4,0x20000
a00081c8:	54872783          	lw	a5,1352(a4) # 20000548 <remain_wifi_ram+0x1ffe0548>
a00081cc:	6187b78b          	extu	a5,a5,24,24
a00081d0:	d00788e3          	beqz	a5,a0007ee0 <Clock_Peripheral_Clock_Get+0x3c>
a00081d4:	25472503          	lw	a0,596(a4)
a00081d8:	4422                	lw	s0,8(sp)
a00081da:	40b2                	lw	ra,12(sp)
a00081dc:	2ca5350b          	extu	a0,a0,11,10
a00081e0:	0141                	addi	sp,sp,16
a00081e2:	c2fba317          	auipc	t1,0xc2fba
a00081e6:	89230067          	jr	-1902(t1) # 62fc1a74 <Clock_160M_Clk_Mux_Output>

a00081ea <qcc74x_ef_ctrl_get_common_trim_list>:
a00081ea:	a00097b7          	lui	a5,0xa0009
a00081ee:	5c478793          	addi	a5,a5,1476 # a00095c4 <__psram_limit+0xf7c095c4>
a00081f2:	c11c                	sw	a5,0(a0)
a00081f4:	02200513          	li	a0,34
a00081f8:	8082                	ret

a00081fa <qcc74x_efuse_get_adc_trim>:
a00081fa:	1101                	addi	sp,sp,-32
a00081fc:	a00095b7          	lui	a1,0xa0009
a0008200:	4685                	li	a3,1
a0008202:	0030                	addi	a2,sp,8
a0008204:	5a858593          	addi	a1,a1,1448 # a00095a8 <__psram_limit+0xf7c095a8>
a0008208:	4501                	li	a0,0
a000820a:	cc22                	sw	s0,24(sp)
a000820c:	ce06                	sw	ra,28(sp)
a000820e:	ca26                	sw	s1,20(sp)
a0008210:	c2fb8097          	auipc	ra,0xc2fb8
a0008214:	3ee080e7          	jalr	1006(ra) # 62fc05fe <qcc74x_ef_ctrl_read_common_trim>
a0008218:	00814783          	lbu	a5,8(sp)
a000821c:	a0009437          	lui	s0,0xa0009
a0008220:	eb81                	bnez	a5,a0008230 <qcc74x_efuse_get_adc_trim+0x36>
a0008222:	5bc42507          	flw	fa0,1468(s0) # a00095bc <__psram_limit+0xf7c095bc>
a0008226:	40f2                	lw	ra,28(sp)
a0008228:	4462                	lw	s0,24(sp)
a000822a:	44d2                	lw	s1,20(sp)
a000822c:	6105                	addi	sp,sp,32
a000822e:	8082                	ret
a0008230:	00b14583          	lbu	a1,11(sp)
a0008234:	4532                	lw	a0,12(sp)
a0008236:	00914483          	lbu	s1,9(sp)
a000823a:	c2fb8097          	auipc	ra,0xc2fb8
a000823e:	50c080e7          	jalr	1292(ra) # 62fc0746 <qcc74x_ef_ctrl_get_trim_parity>
a0008242:	fea490e3          	bne	s1,a0,a0008222 <qcc74x_efuse_get_adc_trim+0x28>
a0008246:	47b2                	lw	a5,12(sp)
a0008248:	6705                	lui	a4,0x1
a000824a:	80070693          	addi	a3,a4,-2048 # 800 <__RFTLV_SIZE_HOLE>
a000824e:	8efd                	and	a3,a3,a5
a0008250:	a0009637          	lui	a2,0xa0009
a0008254:	ce91                	beqz	a3,a0008270 <qcc74x_efuse_get_adc_trim+0x76>
a0008256:	40f007b3          	neg	a5,a5
a000825a:	177d                	addi	a4,a4,-1
a000825c:	8ff9                	and	a5,a5,a4
a000825e:	d007f553          	fcvt.s.w	fa0,a5
a0008262:	5c062707          	flw	fa4,1472(a2) # a00095c0 <__psram_limit+0xf7c095c0>
a0008266:	5bc42787          	flw	fa5,1468(s0)
a000826a:	78e57543          	fmadd.s	fa0,fa0,fa4,fa5
a000826e:	bf65                	j	a0008226 <qcc74x_efuse_get_adc_trim+0x2c>
a0008270:	d017f553          	fcvt.s.wu	fa0,a5
a0008274:	5c062707          	flw	fa4,1472(a2)
a0008278:	5bc42787          	flw	fa5,1468(s0)
a000827c:	78e5754b          	fnmsub.s	fa0,fa0,fa4,fa5
a0008280:	b75d                	j	a0008226 <qcc74x_efuse_get_adc_trim+0x2c>

a0008282 <qcc74x_efuse_get_adc_tsen_trim>:
a0008282:	1101                	addi	sp,sp,-32
a0008284:	a00095b7          	lui	a1,0xa0009
a0008288:	4685                	li	a3,1
a000828a:	0030                	addi	a2,sp,8
a000828c:	5b458593          	addi	a1,a1,1460 # a00095b4 <__psram_limit+0xf7c095b4>
a0008290:	4501                	li	a0,0
a0008292:	ce06                	sw	ra,28(sp)
a0008294:	cc22                	sw	s0,24(sp)
a0008296:	c2fb8097          	auipc	ra,0xc2fb8
a000829a:	368080e7          	jalr	872(ra) # 62fc05fe <qcc74x_ef_ctrl_read_common_trim>
a000829e:	00814783          	lbu	a5,8(sp)
a00082a2:	e799                	bnez	a5,a00082b0 <qcc74x_efuse_get_adc_tsen_trim+0x2e>
a00082a4:	7fa00513          	li	a0,2042
a00082a8:	40f2                	lw	ra,28(sp)
a00082aa:	4462                	lw	s0,24(sp)
a00082ac:	6105                	addi	sp,sp,32
a00082ae:	8082                	ret
a00082b0:	00b14583          	lbu	a1,11(sp)
a00082b4:	4532                	lw	a0,12(sp)
a00082b6:	00914403          	lbu	s0,9(sp)
a00082ba:	c2fb8097          	auipc	ra,0xc2fb8
a00082be:	48c080e7          	jalr	1164(ra) # 62fc0746 <qcc74x_ef_ctrl_get_trim_parity>
a00082c2:	fea411e3          	bne	s0,a0,a00082a4 <qcc74x_efuse_get_adc_tsen_trim+0x22>
a00082c6:	4532                	lw	a0,12(sp)
a00082c8:	b7c5                	j	a00082a8 <qcc74x_efuse_get_adc_tsen_trim+0x26>

a00082ca <qcc74x_gpio_pad_check>:
a00082ca:	1141                	addi	sp,sp,-16
a00082cc:	c606                	sw	ra,12(sp)
a00082ce:	c2fb9097          	auipc	ra,0xc2fb9
a00082d2:	db0080e7          	jalr	-592(ra) # 62fc107e <GLB_GPIO_Pad_LeadOut_Sts>
a00082d6:	e111                	bnez	a0,a00082da <qcc74x_gpio_pad_check+0x10>
a00082d8:	a001                	j	a00082d8 <qcc74x_gpio_pad_check+0xe>
a00082da:	40b2                	lw	ra,12(sp)
a00082dc:	0141                	addi	sp,sp,16
a00082de:	8082                	ret

a00082e0 <qcc74x_clk_get_peripheral_clock>:
a00082e0:	e501                	bnez	a0,a00082e8 <qcc74x_clk_get_peripheral_clock+0x8>
a00082e2:	4539                	li	a0,14
a00082e4:	bc1ff06f          	j	a0007ea4 <Clock_Peripheral_Clock_Get>
a00082e8:	4785                	li	a5,1
a00082ea:	00f51463          	bne	a0,a5,a00082f2 <qcc74x_clk_get_peripheral_clock+0x12>
a00082ee:	4541                	li	a0,16
a00082f0:	bfd5                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a00082f2:	4795                	li	a5,5
a00082f4:	00f51463          	bne	a0,a5,a00082fc <qcc74x_clk_get_peripheral_clock+0x1c>
a00082f8:	4501                	li	a0,0
a00082fa:	b7ed                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a00082fc:	4799                	li	a5,6
a00082fe:	00f51463          	bne	a0,a5,a0008306 <qcc74x_clk_get_peripheral_clock+0x26>
a0008302:	450d                	li	a0,3
a0008304:	b7c5                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a0008306:	479d                	li	a5,7
a0008308:	00f51463          	bne	a0,a5,a0008310 <qcc74x_clk_get_peripheral_clock+0x30>
a000830c:	4521                	li	a0,8
a000830e:	bfd9                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a0008310:	47bd                	li	a5,15
a0008312:	00f51463          	bne	a0,a5,a000831a <qcc74x_clk_get_peripheral_clock+0x3a>
a0008316:	452d                	li	a0,11
a0008318:	b7f1                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a000831a:	47a9                	li	a5,10
a000831c:	00f51463          	bne	a0,a5,a0008324 <qcc74x_clk_get_peripheral_clock+0x44>
a0008320:	4535                	li	a0,13
a0008322:	b7c9                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a0008324:	02000793          	li	a5,32
a0008328:	00f51463          	bne	a0,a5,a0008330 <qcc74x_clk_get_peripheral_clock+0x50>
a000832c:	454d                	li	a0,19
a000832e:	bf5d                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a0008330:	47c5                	li	a5,17
a0008332:	00f51463          	bne	a0,a5,a000833a <qcc74x_clk_get_peripheral_clock+0x5a>
a0008336:	4549                	li	a0,18
a0008338:	b775                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a000833a:	47b9                	li	a5,14
a000833c:	00f51463          	bne	a0,a5,a0008344 <qcc74x_clk_get_peripheral_clock+0x64>
a0008340:	4545                	li	a0,17
a0008342:	b74d                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a0008344:	02400793          	li	a5,36
a0008348:	00f51463          	bne	a0,a5,a0008350 <qcc74x_clk_get_peripheral_clock+0x70>
a000834c:	4515                	li	a0,5
a000834e:	bf59                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a0008350:	47a5                	li	a5,9
a0008352:	00f51463          	bne	a0,a5,a000835a <qcc74x_clk_get_peripheral_clock+0x7a>
a0008356:	4531                	li	a0,12
a0008358:	b771                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a000835a:	47d1                	li	a5,20
a000835c:	00f51463          	bne	a0,a5,a0008364 <qcc74x_clk_get_peripheral_clock+0x84>
a0008360:	4551                	li	a0,20
a0008362:	b749                	j	a00082e4 <qcc74x_clk_get_peripheral_clock+0x4>
a0008364:	4501                	li	a0,0
a0008366:	8082                	ret

a0008368 <qcc74x_sys_reset_por>:
a0008368:	1141                	addi	sp,sp,-16
a000836a:	c606                	sw	ra,12(sp)
a000836c:	200107b7          	lui	a5,0x20010
a0008370:	4711                	li	a4,4
a0008372:	5ae7a423          	sw	a4,1448(a5) # 200105a8 <remain_wifi_ram+0x1fff05a8>
a0008376:	bf1ba737          	lui	a4,0xbf1ba
a000837a:	55e70713          	addi	a4,a4,1374 # bf1ba55e <__psram_limit+0x16dba55e>
a000837e:	5ae7a623          	sw	a4,1452(a5)
a0008382:	30047073          	csrci	mstatus,8
a0008386:	4511                	li	a0,4
a0008388:	c2fb9097          	auipc	ra,0xc2fb9
a000838c:	92a080e7          	jalr	-1750(ra) # 62fc0cb2 <GLB_AHB_MCU_Software_Reset>
a0008390:	4521                	li	a0,8
a0008392:	c2fb9097          	auipc	ra,0xc2fb9
a0008396:	920080e7          	jalr	-1760(ra) # 62fc0cb2 <GLB_AHB_MCU_Software_Reset>
a000839a:	4525                	li	a0,9
a000839c:	c2fb9097          	auipc	ra,0xc2fb9
a00083a0:	916080e7          	jalr	-1770(ra) # 62fc0cb2 <GLB_AHB_MCU_Software_Reset>
a00083a4:	4529                	li	a0,10
a00083a6:	c2fb9097          	auipc	ra,0xc2fb9
a00083aa:	90c080e7          	jalr	-1780(ra) # 62fc0cb2 <GLB_AHB_MCU_Software_Reset>
a00083ae:	452d                	li	a0,11
a00083b0:	c2fb9097          	auipc	ra,0xc2fb9
a00083b4:	902080e7          	jalr	-1790(ra) # 62fc0cb2 <GLB_AHB_MCU_Software_Reset>
a00083b8:	4529                	li	a0,10
a00083ba:	c2fb9097          	auipc	ra,0xc2fb9
a00083be:	e56080e7          	jalr	-426(ra) # 62fc1210 <arch_delay_ms>
a00083c2:	c2fb9097          	auipc	ra,0xc2fb9
a00083c6:	904080e7          	jalr	-1788(ra) # 62fc0cc6 <GLB_SW_POR_Reset>
a00083ca:	a001                	j	a00083ca <qcc74x_sys_reset_por+0x62>

a00083cc <qcc74x_show_log>:
a00083cc:	1141                	addi	sp,sp,-16
a00083ce:	c422                	sw	s0,8(sp)
a00083d0:	a000a437          	lui	s0,0xa000a
a00083d4:	91440513          	addi	a0,s0,-1772 # a0009914 <__psram_limit+0xf7c09914>
a00083d8:	c606                	sw	ra,12(sp)
a00083da:	87ffd0ef          	jal	ra,a0005c58 <printf>
a00083de:	91440513          	addi	a0,s0,-1772
a00083e2:	877fd0ef          	jal	ra,a0005c58 <printf>
a00083e6:	4422                	lw	s0,8(sp)
a00083e8:	40b2                	lw	ra,12(sp)
a00083ea:	a0009637          	lui	a2,0xa0009
a00083ee:	a00095b7          	lui	a1,0xa0009
a00083f2:	a0009537          	lui	a0,0xa0009
a00083f6:	7bc60613          	addi	a2,a2,1980 # a00097bc <__psram_limit+0xf7c097bc>
a00083fa:	7c858593          	addi	a1,a1,1992 # a00097c8 <__psram_limit+0xf7c097c8>
a00083fe:	7d450513          	addi	a0,a0,2004 # a00097d4 <__psram_limit+0xf7c097d4>
a0008402:	0141                	addi	sp,sp,16
a0008404:	855fd06f          	j	a0005c58 <printf>

a0008408 <qcc74x_sys_version>:
a0008408:	411c                	lw	a5,0(a0)
a000840a:	872a                	mv	a4,a0
a000840c:	e791                	bnez	a5,a0008418 <qcc74x_sys_version+0x10>
a000840e:	a00097b7          	lui	a5,0xa0009
a0008412:	83078793          	addi	a5,a5,-2000 # a0008830 <__psram_limit+0xf7c08830>
a0008416:	c11c                	sw	a5,0(a0)
a0008418:	431c                	lw	a5,0(a4)
a000841a:	a00096b7          	lui	a3,0xa0009
a000841e:	83c68693          	addi	a3,a3,-1988 # a000883c <__psram_limit+0xf7c0883c>
a0008422:	4501                	li	a0,0
a0008424:	00d78563          	beq	a5,a3,a000842e <qcc74x_sys_version+0x26>
a0008428:	5847c50b          	lwia	a0,(a5),4,0
a000842c:	c31c                	sw	a5,0(a4)
a000842e:	8082                	ret

a0008430 <qcc74x_show_component_version>:
a0008430:	a0009537          	lui	a0,0xa0009
a0008434:	1101                	addi	sp,sp,-32
a0008436:	7e450513          	addi	a0,a0,2020 # a00097e4 <__psram_limit+0xf7c097e4>
a000843a:	ca26                	sw	s1,20(sp)
a000843c:	c84a                	sw	s2,16(sp)
a000843e:	ce06                	sw	ra,28(sp)
a0008440:	cc22                	sw	s0,24(sp)
a0008442:	c602                	sw	zero,12(sp)
a0008444:	a000a4b7          	lui	s1,0xa000a
a0008448:	fdcfd0ef          	jal	ra,a0005c24 <puts>
a000844c:	a000a937          	lui	s2,0xa000a
a0008450:	0068                	addi	a0,sp,12
a0008452:	3f5d                	jal	a0008408 <qcc74x_sys_version>
a0008454:	842a                	mv	s0,a0
a0008456:	e519                	bnez	a0,a0008464 <qcc74x_show_component_version+0x34>
a0008458:	40f2                	lw	ra,28(sp)
a000845a:	4462                	lw	s0,24(sp)
a000845c:	44d2                	lw	s1,20(sp)
a000845e:	4942                	lw	s2,16(sp)
a0008460:	6105                	addi	sp,sp,32
a0008462:	8082                	ret
a0008464:	80448513          	addi	a0,s1,-2044 # a0009804 <__psram_limit+0xf7c09804>
a0008468:	fbcfd0ef          	jal	ra,a0005c24 <puts>
a000846c:	8522                	mv	a0,s0
a000846e:	fb6fd0ef          	jal	ra,a0005c24 <puts>
a0008472:	91490513          	addi	a0,s2,-1772 # a0009914 <__psram_limit+0xf7c09914>
a0008476:	faefd0ef          	jal	ra,a0005c24 <puts>
a000847a:	bfd9                	j	a0008450 <qcc74x_show_component_version+0x20>

a000847c <qcc74x_show_chipinfo>:
a000847c:	7139                	addi	sp,sp,-64
a000847e:	0068                	addi	a0,sp,12
a0008480:	de06                	sw	ra,60(sp)
a0008482:	c2fb9097          	auipc	ra,0xc2fb9
a0008486:	e0c080e7          	jalr	-500(ra) # 62fc128e <qcc74x_efuse_get_device_info>
a000848a:	a000a537          	lui	a0,0xa000a
a000848e:	81050513          	addi	a0,a0,-2032 # a0009810 <__psram_limit+0xf7c09810>
a0008492:	fc6fd0ef          	jal	ra,a0005c58 <printf>
a0008496:	45d2                	lw	a1,20(sp)
a0008498:	a000a537          	lui	a0,0xa000a
a000849c:	83050513          	addi	a0,a0,-2000 # a0009830 <__psram_limit+0xf7c09830>
a00084a0:	fb8fd0ef          	jal	ra,a0005c58 <printf>
a00084a4:	45e2                	lw	a1,24(sp)
a00084a6:	a000a537          	lui	a0,0xa000a
a00084aa:	84850513          	addi	a0,a0,-1976 # a0009848 <__psram_limit+0xf7c09848>
a00084ae:	faafd0ef          	jal	ra,a0005c58 <printf>
a00084b2:	45f2                	lw	a1,28(sp)
a00084b4:	a000a537          	lui	a0,0xa000a
a00084b8:	86050513          	addi	a0,a0,-1952 # a0009860 <__psram_limit+0xf7c09860>
a00084bc:	f9cfd0ef          	jal	ra,a0005c58 <printf>
a00084c0:	00f14583          	lbu	a1,15(sp)
a00084c4:	a000a537          	lui	a0,0xa000a
a00084c8:	87850513          	addi	a0,a0,-1928 # a0009878 <__psram_limit+0xf7c09878>
a00084cc:	f8cfd0ef          	jal	ra,a0005c58 <printf>
a00084d0:	50f2                	lw	ra,60(sp)
a00084d2:	6121                	addi	sp,sp,64
a00084d4:	8082                	ret

a00084d6 <board_init>:
a00084d6:	7119                	addi	sp,sp,-128
a00084d8:	de86                	sw	ra,124(sp)
a00084da:	dca2                	sw	s0,120(sp)
a00084dc:	daa6                	sw	s1,116(sp)
a00084de:	d8ca                	sw	s2,112(sp)
a00084e0:	d6ce                	sw	s3,108(sp)
a00084e2:	ca02                	sw	zero,20(sp)
a00084e4:	c2fb8097          	auipc	ra,0xc2fb8
a00084e8:	664080e7          	jalr	1636(ra) # 62fc0b48 <qcc74x_irq_save>
a00084ec:	84aa                	mv	s1,a0
a00084ee:	c2fb8097          	auipc	ra,0xc2fb8
a00084f2:	54c080e7          	jalr	1356(ra) # 62fc0a3a <qcc74x_flash_init>
a00084f6:	892a                	mv	s2,a0
a00084f8:	c2fb9097          	auipc	ra,0xc2fb9
a00084fc:	756080e7          	jalr	1878(ra) # 62fc1c4e <system_clock_init>
a0008500:	200007b7          	lui	a5,0x20000
a0008504:	58078793          	addi	a5,a5,1408 # 20000580 <remain_wifi_ram+0x1ffe0580>
a0008508:	43d8                	lw	a4,4(a5)
a000850a:	6685                	lui	a3,0x1
a000850c:	6441                	lui	s0,0x10
a000850e:	cc3a                	sw	a4,24(sp)
a0008510:	4762                	lw	a4,24(sp)
a0008512:	00200637          	lui	a2,0x200
a0008516:	4589                	li	a1,2
a0008518:	00476713          	ori	a4,a4,4
a000851c:	cc3a                	sw	a4,24(sp)
a000851e:	4762                	lw	a4,24(sp)
a0008520:	4505                	li	a0,1
a0008522:	c3d8                	sw	a4,4(a5)
a0008524:	43d8                	lw	a4,4(a5)
a0008526:	ce3a                	sw	a4,28(sp)
a0008528:	4772                	lw	a4,28(sp)
a000852a:	00876713          	ori	a4,a4,8
a000852e:	ce3a                	sw	a4,28(sp)
a0008530:	4772                	lw	a4,28(sp)
a0008532:	01076713          	ori	a4,a4,16
a0008536:	ce3a                	sw	a4,28(sp)
a0008538:	4772                	lw	a4,28(sp)
a000853a:	c3d8                	sw	a4,4(a5)
a000853c:	43d8                	lw	a4,4(a5)
a000853e:	d03a                	sw	a4,32(sp)
a0008540:	5702                	lw	a4,32(sp)
a0008542:	8f55                	or	a4,a4,a3
a0008544:	d03a                	sw	a4,32(sp)
a0008546:	5702                	lw	a4,32(sp)
a0008548:	000206b7          	lui	a3,0x20
a000854c:	c3d8                	sw	a4,4(a5)
a000854e:	43d8                	lw	a4,4(a5)
a0008550:	d23a                	sw	a4,36(sp)
a0008552:	5712                	lw	a4,36(sp)
a0008554:	8f41                	or	a4,a4,s0
a0008556:	d23a                	sw	a4,36(sp)
a0008558:	5712                	lw	a4,36(sp)
a000855a:	30040413          	addi	s0,s0,768 # 10300 <wifi_ram_max_size+0x8300>
a000855e:	c3d8                	sw	a4,4(a5)
a0008560:	43d8                	lw	a4,4(a5)
a0008562:	d43a                	sw	a4,40(sp)
a0008564:	5722                	lw	a4,40(sp)
a0008566:	8f55                	or	a4,a4,a3
a0008568:	d43a                	sw	a4,40(sp)
a000856a:	5722                	lw	a4,40(sp)
a000856c:	000406b7          	lui	a3,0x40
a0008570:	c3d8                	sw	a4,4(a5)
a0008572:	43d8                	lw	a4,4(a5)
a0008574:	d63a                	sw	a4,44(sp)
a0008576:	5732                	lw	a4,44(sp)
a0008578:	8f55                	or	a4,a4,a3
a000857a:	d63a                	sw	a4,44(sp)
a000857c:	5732                	lw	a4,44(sp)
a000857e:	000806b7          	lui	a3,0x80
a0008582:	c3d8                	sw	a4,4(a5)
a0008584:	43d8                	lw	a4,4(a5)
a0008586:	d83a                	sw	a4,48(sp)
a0008588:	5742                	lw	a4,48(sp)
a000858a:	8f55                	or	a4,a4,a3
a000858c:	d83a                	sw	a4,48(sp)
a000858e:	5742                	lw	a4,48(sp)
a0008590:	001006b7          	lui	a3,0x100
a0008594:	c3d8                	sw	a4,4(a5)
a0008596:	43d8                	lw	a4,4(a5)
a0008598:	da3a                	sw	a4,52(sp)
a000859a:	5752                	lw	a4,52(sp)
a000859c:	8f55                	or	a4,a4,a3
a000859e:	da3a                	sw	a4,52(sp)
a00085a0:	5752                	lw	a4,52(sp)
a00085a2:	c3d8                	sw	a4,4(a5)
a00085a4:	43d8                	lw	a4,4(a5)
a00085a6:	dc3a                	sw	a4,56(sp)
a00085a8:	56e2                	lw	a3,56(sp)
a00085aa:	8ed1                	or	a3,a3,a2
a00085ac:	dc36                	sw	a3,56(sp)
a00085ae:	5762                	lw	a4,56(sp)
a00085b0:	c3d8                	sw	a4,4(a5)
a00085b2:	43d8                	lw	a4,4(a5)
a00085b4:	de3a                	sw	a4,60(sp)
a00085b6:	56f2                	lw	a3,60(sp)
a00085b8:	00400737          	lui	a4,0x400
a00085bc:	8ed9                	or	a3,a3,a4
a00085be:	de36                	sw	a3,60(sp)
a00085c0:	5772                	lw	a4,60(sp)
a00085c2:	c3d8                	sw	a4,4(a5)
a00085c4:	43d8                	lw	a4,4(a5)
a00085c6:	c0ba                	sw	a4,64(sp)
a00085c8:	4686                	lw	a3,64(sp)
a00085ca:	08000737          	lui	a4,0x8000
a00085ce:	8ed9                	or	a3,a3,a4
a00085d0:	c0b6                	sw	a3,64(sp)
a00085d2:	4706                	lw	a4,64(sp)
a00085d4:	c3d8                	sw	a4,4(a5)
a00085d6:	43d8                	lw	a4,4(a5)
a00085d8:	c2ba                	sw	a4,68(sp)
a00085da:	4696                	lw	a3,68(sp)
a00085dc:	6709                	lui	a4,0x2
a00085de:	8ed9                	or	a3,a3,a4
a00085e0:	c2b6                	sw	a3,68(sp)
a00085e2:	4716                	lw	a4,68(sp)
a00085e4:	c3d8                	sw	a4,4(a5)
a00085e6:	43d8                	lw	a4,4(a5)
a00085e8:	c4ba                	sw	a4,72(sp)
a00085ea:	46a6                	lw	a3,72(sp)
a00085ec:	04000737          	lui	a4,0x4000
a00085f0:	8ed9                	or	a3,a3,a4
a00085f2:	c4b6                	sw	a3,72(sp)
a00085f4:	4726                	lw	a4,72(sp)
a00085f6:	008006b7          	lui	a3,0x800
a00085fa:	c3d8                	sw	a4,4(a5)
a00085fc:	4798                	lw	a4,8(a5)
a00085fe:	c6ba                	sw	a4,76(sp)
a0008600:	4736                	lw	a4,76(sp)
a0008602:	8f51                	or	a4,a4,a2
a0008604:	c6ba                	sw	a4,76(sp)
a0008606:	4736                	lw	a4,76(sp)
a0008608:	4601                	li	a2,0
a000860a:	c798                	sw	a4,8(a5)
a000860c:	43d8                	lw	a4,4(a5)
a000860e:	c8ba                	sw	a4,80(sp)
a0008610:	4746                	lw	a4,80(sp)
a0008612:	8f55                	or	a4,a4,a3
a0008614:	c8ba                	sw	a4,80(sp)
a0008616:	4746                	lw	a4,80(sp)
a0008618:	c3d8                	sw	a4,4(a5)
a000861a:	c2fb8097          	auipc	ra,0xc2fb8
a000861e:	6e8080e7          	jalr	1768(ra) # 62fc0d02 <GLB_Set_UART_CLK>
a0008622:	4601                	li	a2,0
a0008624:	4581                	li	a1,0
a0008626:	4505                	li	a0,1
a0008628:	eacff0ef          	jal	ra,a0007cd4 <GLB_Set_SPI_CLK>
a000862c:	4601                	li	a2,0
a000862e:	4581                	li	a1,0
a0008630:	4505                	li	a0,1
a0008632:	ed8ff0ef          	jal	ra,a0007d0a <GLB_Set_DBI_CLK>
a0008636:	4601                	li	a2,0
a0008638:	4585                	li	a1,1
a000863a:	4505                	li	a0,1
a000863c:	e4eff0ef          	jal	ra,a0007c8a <GLB_Set_I2C_CLK>
a0008640:	4605                	li	a2,1
a0008642:	4585                	li	a1,1
a0008644:	4505                	li	a0,1
a0008646:	dceff0ef          	jal	ra,a0007c14 <GLB_Set_ADC_CLK>
a000864a:	4505                	li	a0,1
a000864c:	c2fb8097          	auipc	ra,0xc2fb8
a0008650:	68e080e7          	jalr	1678(ra) # 62fc0cda <GLB_Set_DIG_CLK_Sel>
a0008654:	04e00613          	li	a2,78
a0008658:	4585                	li	a1,1
a000865a:	4505                	li	a0,1
a000865c:	c2fb8097          	auipc	ra,0xc2fb8
a0008660:	674080e7          	jalr	1652(ra) # 62fc0cd0 <GLB_Set_DIG_512K_CLK>
a0008664:	4501                	li	a0,0
a0008666:	c2fb8097          	auipc	ra,0xc2fb8
a000866a:	692080e7          	jalr	1682(ra) # 62fc0cf8 <GLB_Set_PWM1_IO_Sel>
a000866e:	464d                	li	a2,19
a0008670:	4581                	li	a1,0
a0008672:	4505                	li	a0,1
a0008674:	ddaff0ef          	jal	ra,a0007c4e <GLB_Set_IR_CLK>
a0008678:	460d                	li	a2,3
a000867a:	4585                	li	a1,1
a000867c:	4505                	li	a0,1
a000867e:	ec2ff0ef          	jal	ra,a0007d40 <GLB_Set_CAM_CLK>
a0008682:	4505                	li	a0,1
a0008684:	c2fb8097          	auipc	ra,0xc2fb8
a0008688:	66a080e7          	jalr	1642(ra) # 62fc0cee <GLB_Set_PKA_CLK_Sel>
a000868c:	4505                	li	a0,1
a000868e:	c2fb8097          	auipc	ra,0xc2fb8
a0008692:	67e080e7          	jalr	1662(ra) # 62fc0d0c <GLB_Set_USB_CLK_From_WIFIPLL>
a0008696:	4501                	li	a0,0
a0008698:	c2fb8097          	auipc	ra,0xc2fb8
a000869c:	67e080e7          	jalr	1662(ra) # 62fc0d16 <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>
a00086a0:	ea5fe0ef          	jal	ra,a0007544 <qcc74x_irq_initialize>
a00086a4:	a0009537          	lui	a0,0xa0009
a00086a8:	83c50513          	addi	a0,a0,-1988 # a000883c <__psram_limit+0xf7c0883c>
a00086ac:	ebbfe0ef          	jal	ra,a0007566 <qcc74x_device_get_by_name>
a00086b0:	4609                	li	a2,2
a00086b2:	45d5                	li	a1,21
a00086b4:	c62a                	sw	a0,12(sp)
a00086b6:	d1bfd0ef          	jal	ra,a00063d0 <qcc74x_gpio_uart_init>
a00086ba:	4532                	lw	a0,12(sp)
a00086bc:	460d                	li	a2,3
a00086be:	45d9                	li	a1,22
a00086c0:	d11fd0ef          	jal	ra,a00063d0 <qcc74x_gpio_uart_init>
a00086c4:	001e87b7          	lui	a5,0x1e8
a00086c8:	48078793          	addi	a5,a5,1152 # 1e8480 <remain_wifi_ram+0x1c8480>
a00086cc:	a0009537          	lui	a0,0xa0009
a00086d0:	cabe                	sw	a5,84(sp)
a00086d2:	0ac50513          	addi	a0,a0,172 # a00090ac <__psram_limit+0xf7c090ac>
a00086d6:	070707b7          	lui	a5,0x7070
a00086da:	cebe                	sw	a5,92(sp)
a00086dc:	cca2                	sw	s0,88(sp)
a00086de:	e89fe0ef          	jal	ra,a0007566 <qcc74x_device_get_by_name>
a00086e2:	62fc3437          	lui	s0,0x62fc3
a00086e6:	6e040413          	addi	s0,s0,1760 # 62fc36e0 <uart0>
a00086ea:	08cc                	addi	a1,sp,84
a00086ec:	c008                	sw	a0,0(s0)
a00086ee:	c98fe0ef          	jal	ra,a0006b86 <qcc74x_uart_init>
a00086f2:	4008                	lw	a0,0(s0)
a00086f4:	63030437          	lui	s0,0x63030
a00086f8:	00040413          	mv	s0,s0
a00086fc:	d88fd0ef          	jal	ra,a0005c84 <qcc74x_uart_set_console>
a0008700:	62fc3537          	lui	a0,0x62fc3
a0008704:	6e450593          	addi	a1,a0,1764 # 62fc36e4 <__HeapBase>
a0008708:	8c0d                	sub	s0,s0,a1
a000870a:	85a2                	mv	a1,s0
a000870c:	6e450513          	addi	a0,a0,1764
a0008710:	d7efd0ef          	jal	ra,a0005c8e <kmem_init>
a0008714:	cb9ff0ef          	jal	ra,a00083cc <qcc74x_show_log>
a0008718:	d19ff0ef          	jal	ra,a0008430 <qcc74x_show_component_version>
a000871c:	a80007b7          	lui	a5,0xa8000
a0008720:	a8000737          	lui	a4,0xa8000
a0008724:	00078793          	mv	a5,a5
a0008728:	00070713          	mv	a4,a4
a000872c:	8f99                	sub	a5,a5,a4
a000872e:	00f04d63          	bgtz	a5,a0008748 <board_init+0x272>
a0008732:	a80007b7          	lui	a5,0xa8000
a0008736:	a8000737          	lui	a4,0xa8000
a000873a:	00078793          	mv	a5,a5
a000873e:	00070713          	mv	a4,a4
a0008742:	8f99                	sub	a5,a5,a4
a0008744:	00f05963          	blez	a5,a0008756 <board_init+0x280>
a0008748:	a000a537          	lui	a0,0xa000a
a000874c:	8a450513          	addi	a0,a0,-1884 # a00098a4 <__psram_limit+0xf7c098a4>
a0008750:	cd4fd0ef          	jal	ra,a0005c24 <puts>
a0008754:	a001                	j	a0008754 <board_init+0x27e>
a0008756:	8029                	srli	s0,s0,0xa
a0008758:	a000a9b7          	lui	s3,0xa000a
a000875c:	85a2                	mv	a1,s0
a000875e:	8dc98513          	addi	a0,s3,-1828 # a00098dc <__psram_limit+0xf7c098dc>
a0008762:	cf6fd0ef          	jal	ra,a0005c58 <printf>
a0008766:	d17ff0ef          	jal	ra,a000847c <qcc74x_show_chipinfo>
a000876a:	00090863          	beqz	s2,a000877a <board_init+0x2a4>
a000876e:	a000a537          	lui	a0,0xa000a
a0008772:	91850513          	addi	a0,a0,-1768 # a0009918 <__psram_limit+0xf7c09918>
a0008776:	ce2fd0ef          	jal	ra,a0005c58 <printf>
a000877a:	85a2                	mv	a1,s0
a000877c:	8dc98513          	addi	a0,s3,-1828
a0008780:	cd8fd0ef          	jal	ra,a0005c58 <printf>
a0008784:	20000437          	lui	s0,0x20000
a0008788:	10040793          	addi	a5,s0,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a000878c:	4bec                	lw	a1,84(a5)
a000878e:	4fb0                	lw	a2,88(a5)
a0008790:	a000a537          	lui	a0,0xa000a
a0008794:	93050513          	addi	a0,a0,-1744 # a0009930 <__psram_limit+0xf7c09930>
a0008798:	cc0fd0ef          	jal	ra,a0005c58 <printf>
a000879c:	58040413          	addi	s0,s0,1408
a00087a0:	404c                	lw	a1,4(s0)
a00087a2:	4410                	lw	a2,8(s0)
a00087a4:	a000a537          	lui	a0,0xa000a
a00087a8:	95050513          	addi	a0,a0,-1712 # a0009950 <__psram_limit+0xf7c09950>
a00087ac:	cacfd0ef          	jal	ra,a0005c58 <printf>
a00087b0:	0848                	addi	a0,sp,20
a00087b2:	c2fb9097          	auipc	ra,0xc2fb9
a00087b6:	906080e7          	jalr	-1786(ra) # 62fc10b8 <HBN_Get_Xtal_Value>
a00087ba:	200107b7          	lui	a5,0x20010
a00087be:	8847a783          	lw	a5,-1916(a5) # 2000f884 <remain_wifi_ram+0x1ffef884>
a00087c2:	45d2                	lw	a1,20(sp)
a00087c4:	0c37b78b          	extu	a5,a5,3,3
a00087c8:	e7a9                	bnez	a5,a0008812 <board_init+0x33c>
a00087ca:	a000a637          	lui	a2,0xa000a
a00087ce:	89c60613          	addi	a2,a2,-1892 # a000989c <__psram_limit+0xf7c0989c>
a00087d2:	a000a537          	lui	a0,0xa000a
a00087d6:	97050513          	addi	a0,a0,-1680 # a0009970 <__psram_limit+0xf7c09970>
a00087da:	c7efd0ef          	jal	ra,a0005c58 <printf>
a00087de:	e82fd0ef          	jal	ra,a0005e60 <log_start>
a00087e2:	8526                	mv	a0,s1
a00087e4:	c2fb8097          	auipc	ra,0xc2fb8
a00087e8:	36c080e7          	jalr	876(ra) # 62fc0b50 <qcc74x_irq_restore>
a00087ec:	a000a537          	lui	a0,0xa000a
a00087f0:	98050513          	addi	a0,a0,-1664 # a0009980 <__psram_limit+0xf7c09980>
a00087f4:	c64fd0ef          	jal	ra,a0005c58 <printf>
a00087f8:	a000a537          	lui	a0,0xa000a
a00087fc:	99450513          	addi	a0,a0,-1644 # a0009994 <__psram_limit+0xf7c09994>
a0008800:	c58fd0ef          	jal	ra,a0005c58 <printf>
a0008804:	50f6                	lw	ra,124(sp)
a0008806:	5466                	lw	s0,120(sp)
a0008808:	54d6                	lw	s1,116(sp)
a000880a:	5946                	lw	s2,112(sp)
a000880c:	59b6                	lw	s3,108(sp)
a000880e:	6109                	addi	sp,sp,128
a0008810:	8082                	ret
a0008812:	a000a637          	lui	a2,0xa000a
a0008816:	89060613          	addi	a2,a2,-1904 # a0009890 <__psram_limit+0xf7c09890>
a000881a:	bf65                	j	a00087d2 <board_init+0x2fc>

a000881c <strlen>:
a000881c:	87aa                	mv	a5,a0
a000881e:	0007c703          	lbu	a4,0(a5)
a0008822:	0785                	addi	a5,a5,1
a0008824:	ff6d                	bnez	a4,a000881e <strlen+0x2>
a0008826:	40a78533          	sub	a0,a5,a0
a000882a:	157d                	addi	a0,a0,-1
a000882c:	8082                	ret
	...

a0008830 <version_sdk>:
a0008830:	979c a000                                   ....

a0008834 <sw_image>:
a0008834:	975c a000                                   \...

a0008838 <compile_time>:
a0008838:	9778 a000                                   x...

a000883c <__usbh_class_info_end__>:
a000883c:	6f697067          	0x6f697067
a0008840:	0000                	unimp
a0008842:	0000                	unimp
a0008844:	30697073          	csrci	mcounteren,18
a0008848:	0000                	unimp
a000884a:	0000                	unimp
a000884c:	6461                	lui	s0,0x18
a000884e:	3e3e0063          	beq	t3,gp,a0008c2e <g_encodingTable+0x12>
a0008852:	4f20                	lw	s0,88(a4)
a0008854:	4c494353          	0x4c494353
a0008858:	414c                	lw	a1,4(a0)
a000885a:	4f54                	lw	a3,28(a4)
a000885c:	2052                	fld	ft0,272(sp)
a000885e:	4b43494b          	fnmsub.d	fs2,ft6,fs4,fs1,rmm
a0008862:	52415453          	0x52415453
a0008866:	4554                	lw	a3,12(a0)
a0008868:	2144                	fld	fs1,128(a0)
a000886a:	3c20                	fld	fs0,120(s0)
a000886c:	0d3c                	addi	a5,sp,664
a000886e:	000a                	c.slli	zero,0x2
a0008870:	3269                	jal	a00081fa <qcc74x_efuse_get_adc_trim>
a0008872:	00003063          	0x3063
a0008876:	0000                	unimp
a0008878:	3e3e                	fld	ft8,488(sp)
a000887a:	4420                	lw	s0,72(s0)
a000887c:	5445                	li	s0,-15
a000887e:	4345                	li	t1,17
a0008880:	4554                	lw	a3,12(a0)
a0008882:	2044                	fld	fs1,128(s0)
a0008884:	43555453          	0x43555453
a0008888:	4c43204b          	fnmsub.h	ft0,ft6,ft4,fs1,rdn
a000888c:	214b434f          	fnmadd.s	ft6,fs6,fs4,ft4,rmm
a0008890:	4b20                	lw	s0,80(a4)
a0008892:	4349                	li	t1,18
a0008894:	474e494b          	fnmsub.q	fs2,ft8,fs4,fs0,rmm
a0008898:	2e2e                	fld	ft8,200(sp)
a000889a:	202e                	fld	ft0,200(sp)
a000889c:	3c3c                	fld	fa5,120(s0)
a000889e:	0a0d                	addi	s4,s4,3
a00088a0:	0000                	unimp
a00088a2:	0000                	unimp
a00088a4:	5948                	lw	a0,52(a0)
a00088a6:	4544                	lw	s1,12(a0)
a00088a8:	4152                	lw	sp,20(sp)
a00088aa:	4142                	lw	sp,16(sp)
a00088ac:	2044                	fld	fs1,128(s0)
a00088ae:	4f4d                	li	t5,19
a00088b0:	494e                	lw	s2,208(sp)
a00088b2:	4f54                	lw	a3,28(a4)
a00088b4:	2052                	fld	ft0,272(sp)
a00088b6:	207c                	fld	fa5,192(s0)
a00088b8:	6954                	flw	fa3,20(a0)
a00088ba:	656d                	lui	a0,0x1b
a00088bc:	203a                	fld	ft0,392(sp)
a00088be:	3025                	jal	a00080e6 <Clock_Peripheral_Clock_Get+0x242>
a00088c0:	6432                	flw	fs0,12(sp)
a00088c2:	253a                	fld	fa0,392(sp)
a00088c4:	3230                	fld	fa2,96(a2)
a00088c6:	3a64                	fld	fs1,240(a2)
a00088c8:	3025                	jal	a00080f0 <Clock_Peripheral_Clock_Get+0x24c>
a00088ca:	6432                	flw	fs0,12(sp)
a00088cc:	7c20                	flw	fs0,120(s0)
a00088ce:	5420                	lw	s0,104(s0)
a00088d0:	253a                	fld	fa0,392(sp)
a00088d2:	2064                	fld	fs1,192(s0)
a00088d4:	3a48                	fld	fa0,176(a2)
a00088d6:	6425                	lui	s0,0x9
a00088d8:	4120                	lw	s0,64(a0)
a00088da:	4951                	li	s2,20
a00088dc:	253a                	fld	fa0,392(sp)
a00088de:	0d64                	addi	s1,sp,668
a00088e0:	000a                	c.slli	zero,0x2
a00088e2:	0000                	unimp
a00088e4:	a120                	fsd	fs0,64(a0)
a00088e6:	03000007          	vle8ff.v	v0,(zero)
a00088ea:	0001                	nop
a00088ec:	0000                	unimp
a00088ee:	0000                	unimp
a00088f0:	00000007          	vle8.v	v0,(zero),v0.t
a00088f4:	0004                	0x4
a00088f6:	0000                	unimp
a00088f8:	6e66                	flw	ft8,88(sp)
a00088fa:	0069                	c.nop	26
a00088fc:	6e66                	flw	ft8,88(sp)
a00088fe:	2b69                	jal	a0008e98 <crc32Tab+0x230>
a0008900:	0000                	unimp
a0008902:	0000                	unimp
a0008904:	616e                	flw	ft2,216(sp)
a0008906:	006e                	c.slli	zero,0x1b
a0008908:	6e66                	flw	ft8,88(sp)
a000890a:	2d69                	jal	a0008fa4 <crc32Tab+0x33c>
a000890c:	0000                	unimp
a000890e:	0000                	unimp
a0008910:	6c29                	lui	s8,0xa
a0008912:	756c                	flw	fa1,108(a0)
a0008914:	286e                	fld	fa6,216(sp)
a0008916:	0000                	unimp
a0008918:	6c29                	lui	s8,0xa
a000891a:	6e69                	lui	t3,0x1a
a000891c:	0028                	addi	a0,sp,8
	...
a0008926:	3fe0                	fld	fs0,248(a5)
a0008928:	509f79fb          	0x509f79fb
a000892c:	3fd34413          	xori	s0,t1,1021
a0008930:	8b60c8b3          	0x8b60c8b3
a0008934:	8a28                	sb	a0,2(a2)
a0008936:	3fc6                	fld	ft11,112(sp)
a0008938:	0000                	unimp
a000893a:	0000                	unimp
a000893c:	0000                	unimp
a000893e:	3ff8                	fld	fa4,248(a5)
a0008940:	4361                	li	t1,24
a0008942:	87a7636f          	jal	t1,9ff7e9bc <__HeapLimit+0x3cf4e9bc>
a0008946:	3fd2                	fld	ft11,304(sp)
a0008948:	a371                	j	a0008ed4 <crc32Tab+0x26c>
a000894a:	0979                	addi	s2,s2,30
a000894c:	400a934f          	fnmadd.s	ft6,fs5,ft0,fs0,rtz
a0008950:	5516                	lw	a0,100(sp)
a0008952:	bbb5                	j	a00086ce <board_init+0x1f8>
a0008954:	6bb1                	lui	s7,0xc
a0008956:	4002                	0x4002
a0008958:	fefa39ef          	jal	s3,9ffac946 <__HeapLimit+0x3cf7c946>
a000895c:	2e42                	fld	ft8,16(sp)
a000895e:	3fe6                	fld	ft11,120(sp)
a0008960:	0000                	unimp
a0008962:	0000                	unimp
a0008964:	0000                	unimp
a0008966:	402c                	lw	a1,64(s0)
a0008968:	0000                	unimp
a000896a:	0000                	unimp
a000896c:	0000                	unimp
a000896e:	4024                	lw	s1,64(s0)
a0008970:	0000                	unimp
a0008972:	0000                	unimp
a0008974:	0000                	unimp
a0008976:	4018                	lw	a4,0(s0)
a0008978:	0000                	unimp
a000897a:	0000                	unimp
a000897c:	0000                	unimp
a000897e:	4000                	lw	s0,0(s0)
a0008980:	0000                	unimp
a0008982:	0000                	unimp
a0008984:	0000                	unimp
a0008986:	3ff0                	fld	fa2,248(a5)
a0008988:	ffffffff          	0xffffffff
a000898c:	ffefffff          	0xffefffff
a0008990:	ffffffff          	0xffffffff
a0008994:	7fefffff          	0x7fefffff
a0008998:	0000                	unimp
a000899a:	0000                	unimp
a000899c:	cd65                	beqz	a0,a0008a94 <powers_of_10+0xec>
a000899e:	41cd                	li	gp,19
a00089a0:	0000                	unimp
a00089a2:	0000                	unimp
a00089a4:	cd65                	beqz	a0,a0008a9c <powers_of_10+0xf4>
a00089a6:	c1cd                	beqz	a1,a0008a48 <powers_of_10+0xa0>

a00089a8 <powers_of_10>:
a00089a8:	0000 0000 0000 3ff0 0000 0000 0000 4024     .......?......$@
a00089b8:	0000 0000 0000 4059 0000 0000 4000 408f     ......Y@.....@.@
a00089c8:	0000 0000 8800 40c3 0000 0000 6a00 40f8     .......@.....j.@
a00089d8:	0000 0000 8480 412e 0000 0000 12d0 4163     .......A......cA
a00089e8:	0000 0000 d784 4197 0000 0000 cd65 41cd     .......A....e..A
a00089f8:	0000 2000 a05f 4202 0000 e800 4876 4237     ... _..B....vH7B
a0008a08:	0000 a200 1a94 426d 0000 e540 309c 42a2     ......mB..@..0.B
a0008a18:	0000 1e90 bcc4 42d6 0000 2634 6bf5 430c     .......B..4&.k.C
a0008a28:	8000 37e0 c379 4341 a000 85d8 3457 4376     ...7y.AC....W4vC
a0008a38:	6c74 6673 615f 6464 705f 6f6f 3a6c 4d20     tlsf_add_pool: M
a0008a48:	6d65 726f 2079 756d 7473 6220 2065 6c61     emory must be al
a0008a58:	6769 656e 2064 7962 2520 2075 7962 6574     igned by %u byte
a0008a68:	2e73 000a 6c74 6673 615f 6464 705f 6f6f     s...tlsf_add_poo
a0008a78:	3a6c 4d20 6d65 726f 2079 6973 657a 6d20     l: Memory size m
a0008a88:	7375 2074 6562 6220 7465 6577 6e65 2520     ust be between %
a0008a98:	2075 6e61 2064 7525 6220 7479 7365 0a2e     u and %u bytes..
a0008aa8:	0000 0000 6c74 6673 635f 6572 7461 3a65     ....tlsf_create:
a0008ab8:	4d20 6d65 726f 2079 756d 7473 6220 2065      Memory must be 
a0008ac8:	6c61 6769 656e 2064 6f74 2520 2075 7962     aligned to %u by
a0008ad8:	6574 2e73 000a 0000 0a0d 6863 6365 206b     tes.......check 
a0008ae8:	7562 6c69 5f64 6469 7720 7469 2068 7260     build_id with `r
a0008af8:	7369 7663 3436 752d 6b6e 6f6e 6e77 652d     iscv64-unknown-e
a0008b08:	666c 722d 6165 6564 666c 2d20 206e 2e2a     lf-readelf -n *.
a0008b18:	6c65 6066 6f20 7475 7570 2074 0a0d 0000     elf` output ....
a0008b28:	7562 6c69 5f64 6469 203a 3025 7832 3025     build_id: %02x%0
a0008b38:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0008b48:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0008b58:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0008b68:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0008b78:	7832 3025 7832 3025 7832 0a0d 0000 0000     2x%02x%02x......
a0008b88:	7270 6465 6665 6e69 6465 0000 0a0d 2b2d     predefined....-+
a0008b98:	2b2d 2b2d 202d 4351 3743 7834 4320 524f     -+-+- QCC74x COR
a0008ba8:	4445 4d55 2050 4e45 2044 2d2b 2d2b 2d2b     EDUMP END +-+-+-
a0008bb8:	0d2b 000a 0a0d 2b2d 2b2d 2b2d 202d 4351     +.....-+-+-+- QC
a0008bc8:	3743 7834 4320 524f 4445 4d55 2050 3076     C74x COREDUMP v0
a0008bd8:	302e 312e 2b20 2b2d 2b2d 2b2d 0a0d 0000     .0.1 +-+-+-+....
a0008be8:	0a0d 2d2d 2d2d 2d2d 4420 5441 2041 4542     ..------ DATA BE
a0008bf8:	4947 204e 0000 0000 2d20 2d2d 2d2d 0d2d     GIN .... ------.
a0008c08:	000a 0000 0a0d 2d2d 2d2d 2d2d 4520 444e     ......------ END
a0008c18:	0020 0000                                    ...

a0008c1c <g_encodingTable>:
a0008c1c:	4241 4443 4645 4847 4a49 4c4b 4e4d 504f     ABCDEFGHIJKLMNOP
a0008c2c:	5251 5453 5655 5857 5a59 6261 6463 6665     QRSTUVWXYZabcdef
a0008c3c:	6867 6a69 6c6b 6e6d 706f 7271 7473 7675     ghijklmnopqrstuv
a0008c4c:	7877 7a79 3130 3332 3534 3736 3938 2f2b     wxyz0123456789+/

a0008c5c <g_modTable>:
a0008c5c:	0000 0000 0002 0000 0001 0000               ............

a0008c68 <crc32Tab>:
a0008c68:	0000 0000 3096 7707 612c ee0e 51ba 9909     .....0.w,a...Q..
a0008c78:	c419 076d f48f 706a a535 e963 95a3 9e64     ..m...jp5.c...d.
a0008c88:	8832 0edb b8a4 79dc e91e e0d5 d988 97d2     2......y........
a0008c98:	4c2b 09b6 7cbd 7eb1 2d07 e7b8 1d91 90bf     +L...|.~.-......
a0008ca8:	1064 1db7 20f2 6ab0 7148 f3b9 41de 84be     d.... .jHq...A..
a0008cb8:	d47d 1ada e4eb 6ddd b551 f4d4 85c7 83d3     }......mQ.......
a0008cc8:	9856 136c a8c0 646b f97a fd62 c9ec 8a65     V.l...kdz.b...e.
a0008cd8:	5c4f 1401 6cd9 6306 3d63 fa0f 0df5 8d08     O\...l.cc=......
a0008ce8:	20c8 3b6e 105e 4c69 41e4 d560 7172 a267     . n;^.iL.A`.rqg.
a0008cf8:	e4d1 3c03 d447 4b04 85fd d20d b56b a50a     ...<G..K....k...
a0008d08:	a8fa 35b5 986c 42b2 c9d6 dbbb f940 acbc     ...5l..B....@...
a0008d18:	6ce3 32d8 5c75 45df 0dcf dcd6 3d59 abd1     .l.2u\.E....Y=..
a0008d28:	30ac 26d9 003a 51de 5180 c8d7 6116 bfd0     .0.&:..Q.Q...a..
a0008d38:	f4b5 21b4 c423 56b3 9599 cfba a50f b8bd     ...!#..V........
a0008d48:	b89e 2802 8808 5f05 d9b2 c60c e924 b10b     ...(..._....$...
a0008d58:	7c87 2f6f 4c11 5868 1dab c161 2d3d b666     .|o/.LhX..a.=-f.
a0008d68:	4190 76dc 7106 01db 20bc 98d2 102a efd5     .A.v.q... ..*...
a0008d78:	8589 71b1 b51f 06b6 e4a5 9fbf d433 e8b8     ...q........3...
a0008d88:	c9a2 7807 f934 0f00 a88e 9609 9818 e10e     ...x4...........
a0008d98:	0dbb 7f6a 3d2d 086d 6c97 9164 5c01 e663     ..j.-=m..ld..\c.
a0008da8:	51f4 6b6b 6162 1c6c 30d8 8565 004e f262     .Qkkbal..0e.N.b.
a0008db8:	95ed 6c06 a57b 1b01 f4c1 8208 c457 f50f     ...l{.......W...
a0008dc8:	d9c6 65b0 e950 12b7 b8ea 8bbe 887c fcb9     ...eP.......|...
a0008dd8:	1ddf 62dd 2d49 15da 7cf3 8cd3 4c65 fbd4     ...bI-...|..eL..
a0008de8:	6158 4db2 51ce 3ab5 0074 a3bc 30e2 d4bb     Xa.M.Q.:t....0..
a0008df8:	a541 4adf 95d7 3dd8 c46d a4d1 f4fb d3d6     A..J...=m.......
a0008e08:	e96a 4369 d9fc 346e 8846 ad67 b8d0 da60     j.iC..n4F.g...`.
a0008e18:	2d73 4404 1de5 3303 4c5f aa0a 7cc9 dd0d     s-.D...3_L...|..
a0008e28:	713c 5005 41aa 2702 1010 be0b 2086 c90c     <q.P.A.'..... ..
a0008e38:	b525 5768 85b3 206f d409 b966 e49f ce61     %.hW..o ..f...a.
a0008e48:	f90e 5ede c998 29d9 9822 b0d0 a8b4 c7d7     ...^...)".......
a0008e58:	3d17 59b3 0d81 2eb4 5c3b b7bd 6cad c0ba     .=.Y....;\...l..
a0008e68:	8320 edb8 b3b6 9abf e20c 03b6 d29a 74b1      ..............t
a0008e78:	4739 ead5 77af 9dd2 2615 04db 1683 73dc     9G...w...&.....s
a0008e88:	0b12 e363 3b84 9464 6a3e 0d6d 5aa8 7a6a     ..c..;d.>jm..Zjz
a0008e98:	cf0b e40e ff9d 9309 ae27 0a00 9eb1 7d07     ........'......}
a0008ea8:	9344 f00f a3d2 8708 f268 1e01 c2fe 6906     D.......h......i
a0008eb8:	575d f762 67cb 8065 3671 196c 06e7 6e6b     ]Wb..ge.q6l...kn
a0008ec8:	1b76 fed4 2be0 89d3 7a5a 10da 4acc 67dd     v....+..Zz...J.g
a0008ed8:	df6f f9b9 eff9 8ebe be43 17b7 8ed5 60b0     o.......C......`
a0008ee8:	a3e8 d6d6 937e a1d1 c2c4 38d8 f252 4fdf     ....~......8R..O
a0008ef8:	67f1 d1bb 5767 a6bc 06dd 3fb5 364b 48b2     .g..gW.....?K6.H
a0008f08:	2bda d80d 1b4c af0a 4af6 3603 7a60 4104     .+..L....J.6`z.A
a0008f18:	efc3 df60 df55 a867 8eef 316e be79 4669     ..`.U.g...n1y.iF
a0008f28:	b38c cb61 831a bc66 d2a0 256f e236 5268     ..a...f...o%6.hR
a0008f38:	7795 cc0c 4703 bb0b 16b9 2202 262f 5505     .w...G....."/&.U
a0008f48:	3bbe c5ba 0b28 b2bd 5a92 2bb4 6a04 5cb3     .;..(....Z.+.j.\
a0008f58:	ffa7 c2d7 cf31 b5d0 9e8b 2cd9 ae1d 5bde     ....1......,...[
a0008f68:	c2b0 9b64 f226 ec63 a39c 756a 930a 026d     ..d.&.c...ju..m.
a0008f78:	06a9 9c09 363f eb0e 6785 7207 5713 0500     ....?6...g.r.W..
a0008f88:	4a82 95bf 7a14 e2b8 2bae 7bb1 1b38 0cb6     .J...z...+.{8...
a0008f98:	8e9b 92d2 be0d e5d5 efb7 7cdc df21 0bdb     ...........|!...
a0008fa8:	d2d4 86d3 e242 f1d4 b3f8 68dd 836e 1fda     ....B......hn...
a0008fb8:	16cd 81be 265b f6b9 77e1 6fb0 4777 18b7     ....[&...w.owG..
a0008fc8:	5ae6 8808 6a70 ff0f 3bca 6606 0b5c 1101     .Z..pj...;.f\...
a0008fd8:	9eff 8f65 ae69 f862 ffd3 616b cf45 166c     ..e.i.b...kaE.l.
a0008fe8:	e278 a00a d2ee d70d 8354 4e04 b3c2 3903     x.......T..N...9
a0008ff8:	2661 a767 16f7 d060 474d 4969 77db 3e6e     a&g...`.MGiI.wn>
a0009008:	6a4a aed1 5adc d9d6 0b66 40df 3bf0 37d8     Jj...Z..f..@.;.7
a0009018:	ae53 a9bc 9ec5 debb cf7f 47b2 ffe9 30b5     S..........G...0
a0009028:	f21c bdbd c28a caba 9330 53b3 a3a6 24b4     ........0..S...$
a0009038:	3605 bad0 0693 cdd7 5729 54de 67bf 23d9     .6......)W.T.g.#
a0009048:	7a2e b366 4ab8 c461 1b02 5d68 2b94 2a6f     .zf..Ja...h].+o*
a0009058:	be37 b40b 8ea1 c30c df1b 5a05 ef8d 2d02     7..........Z...-

a0009068 <hex_asc_upper>:
a0009068:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
a0009078:	0000 0000 0000 4720 0000 c2e8 1893 40f8     ...... G.......@
a0009088:	7269 2071 253a 2064 6e75 6572 6967 7473     irq :%d unregist
a0009098:	7265 6465 0a0d 0000 6164 0063 6665 635f     ered....dac.ef_c
a00090a8:	7274 006c 6175 7472 0030 0000 6175 7472     trl.uart0...uart
a00090b8:	0031 0000 7770 5f6d 3276 305f 0000 0000     1...pwm_v2_0....
a00090c8:	6d64 3061 635f 3068 0000 0000 6d64 3061     dma0_ch0....dma0
a00090d8:	635f 3168 0000 0000 6d64 3061 635f 3268     _ch1....dma0_ch2
a00090e8:	0000 0000 6d64 3061 635f 3368 0000 0000     ....dma0_ch3....
a00090f8:	3269 3163 0000 0000 3269 3073 0000 0000     i2c1....i2s0....
a0009108:	6974 656d 3072 0000 6974 656d 3172 0000     timer0..timer1..
a0009118:	7472 0063 6561 0073 6873 0061 7274 676e     rtc.aes.sha.trng
a0009128:	0000 0000 6b70 0061 6d65 6361 0030 0000     ....pka.emac0...
a0009138:	6177 6374 6468 676f 0000 0000 6b63 0073     watchdog....cks.
a0009148:	6a6d 6570 0067 0000 7269 7872 0000 0000     mjpeg...irrx....
a0009158:	6163 306d 0000 0000 6163 316d 0000 0000     cam0....cam1....
a0009168:	7561 6461 0063 0000 7561 6164 0063 0000     auadc...audac...
a0009178:	6473 6f69 0032 0000 6473 0068 6264 0069     sdio2...sdh.dbi.
a0009188:	6c70 6d66 645f 616d 635f 3068 0000 0000     plfm_dma_ch0....
a0009198:	6c70 6d66 645f 616d 635f 3168 0000 0000     plfm_dma_ch1....
a00091a8:	6c70 6d66 645f 616d 635f 3268 0000 0000     plfm_dma_ch2....
a00091b8:	6c70 6d66 645f 616d 635f 3368 0000 0000     plfm_dma_ch3....
a00091c8:	6c70 6d66 645f 616d 635f 3468 0000 0000     plfm_dma_ch4....
a00091d8:	6f77 0000 7375 5f62 3276 0000 6e49 7473     wo..usb_v2..Inst
a00091e8:	7572 7463 6f69 206e 6461 7264 7365 2073     ruction address 
a00091f8:	696d 6173 696c 6e67 6465 0000 6e49 7473     misaligned..Inst
a0009208:	7572 7463 6f69 206e 6361 6563 7373 6620     ruction access f
a0009218:	7561 746c 0000 0000 6c49 656c 6167 206c     ault....Illegal 
a0009228:	6e69 7473 7572 7463 6f69 006e 7242 6165     instruction.Brea
a0009238:	706b 696f 746e 0000 6f4c 6461 6120 6464     kpoint..Load add
a0009248:	6572 7373 6d20 7369 6c61 6769 656e 0064     ress misaligned.
a0009258:	6f4c 6461 6120 6363 7365 2073 6166 6c75     Load access faul
a0009268:	0074 0000 7453 726f 2f65 4d41 204f 6461     t...Store/AMO ad
a0009278:	7264 7365 2073 696d 6173 696c 6e67 6465     dress misaligned
a0009288:	0000 0000 7453 726f 2f65 4d41 204f 6361     ....Store/AMO ac
a0009298:	6563 7373 6620 7561 746c 0000 6e45 6976     cess fault..Envi
a00092a8:	6f72 6d6e 6e65 2074 6163 6c6c 6620 6f72     ronment call fro
a00092b8:	206d 2d55 6f6d 6564 0000 0000 6e45 6976     m U-mode....Envi
a00092c8:	6f72 6d6e 6e65 2074 6163 6c6c 6620 6f72     ronment call fro
a00092d8:	206d 2d53 6f6d 6564 0000 0000 5352 4456     m S-mode....RSVD
a00092e8:	0000 0000 6e45 6976 6f72 6d6e 6e65 2074     ....Environment 
a00092f8:	6163 6c6c 6620 6f72 206d 2d4d 6f6d 6564     call from M-mode
a0009308:	0000 0000 6e49 7473 7572 7463 6f69 206e     ....Instruction 
a0009318:	6170 6567 6620 7561 746c 0000 6f4c 6461     page fault..Load
a0009328:	7020 6761 2065 6166 6c75 0074 7453 726f      page fault.Stor
a0009338:	2f65 4d41 204f 6170 6567 6620 7561 746c     e/AMO page fault
a0009348:	0000 0000 7865 6563 7470 6f69 5f6e 6e65     ....exception_en
a0009358:	7274 0d79 000a 0000 636d 7561 6573 253d     try.....mcause=%
a0009368:	3830 0d78 000a 0000 656d 6370 253a 3830     08x.....mepc:%08
a0009378:	0d78 000a 746d 6176 3a6c 3025 7838 0a0d     x...mtval:%08x..
a0009388:	0000 0000 7325 0a0d 0000 0000 91e4 a000     ....%s..........
a0009398:	9204 a000 9220 a000 9234 a000 9240 a000     .... ...4...@...
a00093a8:	9258 a000 926c a000 928c a000 92a4 a000     X...l...........
a00093b8:	92c4 a000 92e4 a000 92ec a000 930c a000     ................
a00093c8:	9324 a000 92e4 a000 9334 a000               $.......4...

a00093d4 <CSWTCH.86>:
a00093d4:	0000 0000 3600 016e 4800 01e8 f000 0249     .....6n..H....I.
a00093e4:	5a00 0262 ba80 018c 4800 01e8 4651 344e     .Zb......H..QFN4
a00093f4:	0030 0000 4651 344e 4d30 0000 4651 354e     0...QFN40M..QFN5
a0009404:	0036 0000 5245 4f52 0052 0000 4f4e 0000     6...ERROR...NO..
a0009414:	4d32 0042 4d34 0042 4d38 0042 4257 345f     2MB.4MB.8MB.WB_4
a0009424:	424d 0000 4257 385f 424d 0000 4257 315f     MB..WB_8MB..WB_1
a0009434:	4d36 0042 5353 0000 5425 2b54 0000 0000     6MB.SS..%TT+....
a0009444:	5325 0053 5454 0000 4625 0046 4646 0000     %SS.TT..%FF.FF..
a0009454:	646c 316f 0035 0000 7069 6174 0074 0000     ldo15...iptat...
a0009464:	6369 0078 6364 6364 745f 6972 006d 0000     icx.dcdc_trim...
a0009474:	646c 316f 5f38 6573 006c 0000 646c 316f     ldo18_sel...ldo1
a0009484:	5f38 7274 6d69 0000 646c 336f 5f33 7274     8_trim..ldo33_tr
a0009494:	6d69 0000 646c 316f 5f31 6974 6d72 0000     im..ldo11_tirm..
a00094a4:	6372 3233 006d 0000 7068 705f 666f 7366     rc32m...hp_poffs
a00094b4:	7465 0030 7068 705f 666f 7366 7465 0031     et0.hp_poffset1.
a00094c4:	7068 705f 666f 7366 7465 0032 706c 705f     hp_poffset2.lp_p
a00094d4:	666f 7366 7465 0030 706c 705f 666f 7366     offset0.lp_poffs
a00094e4:	7465 0031 706c 705f 666f 7366 7465 0032     et1.lp_poffset2.
a00094f4:	7a62 705f 666f 7366 7465 0030 7a62 705f     bz_poffset0.bz_p
a0009504:	666f 7366 7465 0031 7a62 705f 666f 7366     offset1.bz_poffs
a0009514:	7465 0032 6d74 5f70 706d 0030 6d74 5f70     et2.tmp_mp0.tmp_
a0009524:	706d 0031 6d74 5f70 706d 0032 7561 6461     mp1.tmp_mp2.auad
a0009534:	5f63 6167 6e69 0000 7561 6461 5f63 666f     c_gain..auadc_of
a0009544:	7366 7465 0000 0000 7370 6172 5f6d 7274     fset....psram_tr
a0009554:	6d69 0000 6372 3233 006b 0000 7478 6c61     im..rc32k...xtal
a0009564:	0030 0000 7478 6c61 0031 0000 7478 6c61     0...xtal1...xtal
a0009574:	0032 0000 6364 6364 645f 7369 0000 0000     2...dcdc_dis....
a0009584:	6364 6364 765f 756f 0074 0000 646c 316f     dcdc_vout...ldo1
a0009594:	5f38 7962 6170 7373 0000 0000 7375 3262     8_bypass....usb2
a00095a4:	0030 0000 7067 6461 5f63 6167 6e69 0000     0...gpadc_gain..
a00095b4:	7374 6e65 0000 0000 0000 3f80 0000 3a00     tsen.......?...:

a00095c4 <trim_list>:
a00095c4:	9454 a000 035f 035e 035b 0003 945c a000     T..._.^.[...\...
a00095d4:	03bf 03be 0356 0005 9464 a000 03bd 03bc     ....V...d.......
a00095e4:	03b6 0006 9468 a000 03df 03de 03da 0004     ....h...........
a00095f4:	9474 a000 03d9 03d8 03d4 0004 9480 a000     t...............
a0009604:	03d3 03d2 03ce 0004 948c a000 03cd 03cc     ................
a0009614:	03c8 0004 9498 a000 03c7 03c6 03c2 0004     ................
a0009624:	94a4 a000 03c1 03c0 03e4 0008 94ac a000     ................
a0009634:	067a 060f 0600 000f 94b8 a000 067b 061f     z...........{...
a0009644:	0610 000f 94c4 a000 067c 062f 0620 000f     ........|./. ...
a0009654:	94d0 a000 067d 063f 0630 000f 94dc a000     ....}.?.0.......
a0009664:	067e 064f 0640 000f 94e8 a000 067f 065f     ~.O.@........._.
a0009674:	0650 000f 94f4 a000 069a 0679 0660 0019     P.........y.`...
a0009684:	9500 a000 069b 0699 0680 0019 950c a000     ................
a0009694:	069c 06b9 06a0 0019 9518 a000 06c9 06c8     ................
a00096a4:	06c0 0008 9520 a000 06d3 06d2 06ca 0008     .... ...........
a00096b4:	9528 a000 06dd 06dc 06d4 0008 9530 a000     (...........0...
a00096c4:	06f9 06f8 06e0 0018 953c a000 0719 0718     ........<.......
a00096d4:	0700 0018 954c a000 074c 074b 0740 000b     ....L...L.K.@...
a00096e4:	9558 a000 0773 0772 0768 000a 9560 a000     X...s.r.h...`...
a00096f4:	0767 0766 0760 0006 9568 a000 079f 079e     g.f.`...h.......
a0009704:	07ba 0006 9570 a000 079d 079c 07b4 0006     ....p...........
a0009714:	95a8 a000 079b 079a 078e 000c 95b4 a000     ................
a0009724:	078d 078c 0780 000c 9578 a000 07b3 07b2     ........x.......
a0009734:	07b1 0001 9584 a000 07b0 07af 07aa 0005     ................
a0009744:	9590 a000 07a9 07a8 07a4 0001 95a0 a000     ................
a0009754:	07cf 07ce 07c8 0006 5753 6920 616d 6567     ........SW image
a0009764:	733a 6970 705f 6c6f 5f6c 6371 3763 7834     :spi_poll_qcc74x
a0009774:	6b64 0000 6f63 706d 6c69 5f65 6974 656d     dk..compile_time
a0009784:	463a 6265 2020 2034 3032 3632 3120 3a38     :Feb  4 2026 18:
a0009794:	3831 343a 0030 0000 6f63 706d 6e6f 6e65     18:40...componen
a00097a4:	5f74 6576 7372 6f69 5f6e 6473 5f6b 2e32     t_version_sdk_2.
a00097b4:	2e30 3739 0000 0000 6546 2062 3420 3220     0.97....Feb  4 2
a00097c4:	3230 0036 3831 313a 3a38 3034 0000 0000     026.18:18:40....
a00097d4:	7542 6c69 3a64 7325 252c 0d73 000a 0000     Build:%s,%s.....
a00097e4:	6556 7372 6f69 206e 666f 7520 6573 2064     Version of used 
a00097f4:	6f63 706d 6e6f 6e65 7374 0d3a 000a 0000     components:.....
a0009804:	5609 7265 6973 6e6f 203a 0000 3d3d 3d3d     .Version: ..====
a0009814:	3d3d 3d3d 6320 6968 2070 6e69 6f66 3d20     ==== chip info =
a0009824:	3d3d 3d3d 3d3d 0d3d 000a 0000 6170 6b63     =======.....pack
a0009834:	6761 2065 2020 2020 2020 2020 2520 0d73     age          %s.
a0009844:	000a 0000 6c66 7361 5f68 6e69 6f66 2020     ....flash_info  
a0009854:	2020 2020 2520 0d73 000a 0000 7370 6172          %s.....psra
a0009864:	5f6d 6e69 6f66 2020 2020 2020 2520 0d73     m_info       %s.
a0009874:	000a 0000 6576 7372 6f69 206e 2020 2020     ....version     
a0009884:	2020 2020 4120 6425 0a0d 0000 736f 6963          A%d....osci
a0009894:	6c6c 7461 726f 0000 7263 7379 6174 006c     llator..crystal.
a00098a4:	7370 6172 206d 6164 6174 6120 726c 6165     psram data alrea
a00098b4:	7964 6520 6978 7473 2c73 7020 656c 7361     dy exists, pleas
a00098c4:	2065 6e65 6261 656c 4320 4e4f 4946 5f47     e enable CONFIG_
a00098d4:	5350 4152 0d4d 000a 7964 616e 696d 2063     PSRAM...dynamic 
a00098e4:	656d 6f6d 7972 6920 696e 2074 7573 6363     memory init succ
a00098f4:	7365 2c73 6f20 7263 6d61 6820 6165 2070     ess, ocram heap 
a0009904:	6973 657a 3d20 2520 2064 624b 7479 2065     size = %d Kbyte 
a0009914:	0a0d 0000 6c66 7361 2068 6e69 7469 6620     ....flash init f
a0009924:	6961 216c 2121 0a0d 0000 0000 6175 7472     ail!!!......uart
a0009934:	2020 6973 3167 253a 3830 2c78 7320 6769       sig1:%08x, sig
a0009944:	3a32 3025 7838 0a0d 0000 0000 6c63 636f     2:%08x......cloc
a0009954:	206b 6567 316e 253a 3830 2c78 6720 6e65     k gen1:%08x, gen
a0009964:	3a32 3025 7838 0a0d 0000 0000 7478 6c61     2:%08x......xtal
a0009974:	253a 4864 287a 7325 0d29 000a 6f62 7261     :%dHz(%s)...boar
a0009984:	2064 6e69 7469 6420 6e6f 0d65 000a 0000     d init done.....
a0009994:	3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d     ================
a00099a4:	3d3d 3d3d 3d3d 3d3d 3d3d 0d3d 000a 0000     ===========.....
a00099b4:	27a4 a000 29b6 a000 27a0 a000 29b6 a000     .'...)...'...)..
a00099c4:	29a6 a000 29b6 a000 27a0 a000 27a8 a000     .)...)...'...'..
a00099d4:	27a8 a000 29a6 a000 27a0 a000 2784 a000     .'...)...'...'..
a00099e4:	2784 a000 2784 a000 27b2 a000 2f82 a000     .'...'...'.../..
a00099f4:	2f82 a000 2f9a a000 2f7c a000 2f7c a000     ./.../..|/..|/..
a0009a04:	2d94 a000 2f9a a000 2f7c a000 2d94 a000     .-.../..|/...-..
a0009a14:	2f7c a000 2f9a a000 2f7a a000 2f7a a000     |/.../..z/..z/..
a0009a24:	2f7a a000 315c a000                         z/..\1..

a0009a2c <__clz_tab>:
a0009a2c:	0100 0202 0303 0303 0404 0404 0404 0404     ................
a0009a3c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
a0009a4c:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a0009a5c:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a0009a6c:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0009a7c:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0009a8c:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0009a9c:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0009aac:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009abc:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009acc:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009adc:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009aec:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009afc:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009b0c:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009b1c:	0808 0808 0808 0808 0808 0808 0808 0808     ................

a0009b2c <__init_array_end>:
a0009b2c:	0400                	addi	s0,sp,512
a0009b2e:	62fc                	flw	fa5,68(a3)
a0009b30:	fc00                	fsw	fs0,56(s0)
a0009b32:	0006                	c.slli	zero,0x1
a0009b34:	0400                	addi	s0,sp,512
a0009b36:	22fc                	fld	fa5,192(a3)
a0009b38:	0000                	unimp
a0009b3a:	0000                	unimp
a0009b3c:	0000                	unimp
a0009b3e:	80002303          	lw	t1,-2048(zero) # fffff800 <__psram_limit+0x57bff800>
a0009b42:	0000                	unimp
a0009b44:	0000                	unimp
a0009b46:	2801                	jal	a0009b56 <__nocache_ram_load_addr+0x2>
a0009b48:	0000                	unimp
a0009b4a:	0000                	unimp
a0009b4c:	ffffffff          	0xffffffff
a0009b50:	ffffffff          	0xffffffff

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
62fc0516:	4b10006f          	j	62fc11c6 <arch_delay_us>

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
62fc054a:	47d000ef          	jal	ra,62fc11c6 <arch_delay_us>
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
62fc05aa:	2b79                	jal	62fc0b48 <qcc74x_irq_save>
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
62fc05c2:	a379                	j	62fc0b50 <qcc74x_irq_restore>
62fc05c4:	00f59363          	bne	a1,a5,62fc05ca <qcc74x_ef_ctrl_read_direct+0x4a>
62fc05c8:	4481                	li	s1,0
62fc05ca:	c63a                	sw	a4,12(sp)
62fc05cc:	2bb5                	jal	62fc0b48 <qcc74x_irq_save>
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

62fc05fe <qcc74x_ef_ctrl_read_common_trim>:
62fc05fe:	715d                	addi	sp,sp,-80
62fc0600:	c2a6                	sw	s1,68(sp)
62fc0602:	c0ca                	sw	s2,64(sp)
62fc0604:	de4e                	sw	s3,60(sp)
62fc0606:	da56                	sw	s5,52(sp)
62fc0608:	c636                	sw	a3,12(sp)
62fc060a:	c686                	sw	ra,76(sp)
62fc060c:	c4a2                	sw	s0,72(sp)
62fc060e:	dc52                	sw	s4,56(sp)
62fc0610:	d85a                	sw	s6,48(sp)
62fc0612:	d65e                	sw	s7,44(sp)
62fc0614:	8aaa                	mv	s5,a0
62fc0616:	89ae                	mv	s3,a1
62fc0618:	84b2                	mv	s1,a2
62fc061a:	ce02                	sw	zero,28(sp)
62fc061c:	2335                	jal	62fc0b48 <qcc74x_irq_save>
62fc061e:	46b2                	lw	a3,12(sp)
62fc0620:	892a                	mv	s2,a0
62fc0622:	c299                	beqz	a3,62fc0628 <qcc74x_ef_ctrl_read_common_trim+0x2a>
62fc0624:	8556                	mv	a0,s5
62fc0626:	3dd5                	jal	62fc051a <qcc74x_ef_ctrl_load_efuse_r0>
62fc0628:	67c1                	lui	a5,0x10
62fc062a:	c09c                	sw	a5,0(s1)
62fc062c:	0868                	addi	a0,sp,28
62fc062e:	3d048097          	auipc	ra,0x3d048
62fc0632:	bbc080e7          	jalr	-1092(ra) # a00081ea <qcc74x_ef_ctrl_get_common_trim_list>
62fc0636:	8b2a                	mv	s6,a0
62fc0638:	4401                	li	s0,0
62fc063a:	4bb1                	li	s7,12
62fc063c:	0d640763          	beq	s0,s6,62fc070a <qcc74x_ef_ctrl_read_common_trim+0x10c>
62fc0640:	03740a33          	mul	s4,s0,s7
62fc0644:	47f2                	lw	a5,28(sp)
62fc0646:	864e                	mv	a2,s3
62fc0648:	4147c58b          	lrw	a1,a5,s4,0
62fc064c:	00064783          	lbu	a5,0(a2)
62fc0650:	ebf1                	bnez	a5,62fc0724 <qcc74x_ef_ctrl_read_common_trim+0x126>
62fc0652:	41360633          	sub	a2,a2,s3
62fc0656:	854e                	mv	a0,s3
62fc0658:	3d09                	jal	62fc046a <arch_memcmp>
62fc065a:	e565                	bnez	a0,62fc0742 <qcc74x_ef_ctrl_read_common_trim+0x144>
62fc065c:	47f2                	lw	a5,28(sp)
62fc065e:	97d2                	add	a5,a5,s4
62fc0660:	0047d703          	lhu	a4,4(a5) # 10004 <wifi_ram_max_size+0x8004>
62fc0664:	6785                	lui	a5,0x1
62fc0666:	00f77463          	bgeu	a4,a5,62fc066e <qcc74x_ef_ctrl_read_common_trim+0x70>
62fc066a:	8556                	mv	a0,s5
62fc066c:	35b5                	jal	62fc04d8 <qcc74x_ef_ctrl_switch_ahb_clk_r0>
62fc066e:	4772                	lw	a4,28(sp)
62fc0670:	200567b7          	lui	a5,0x20056
62fc0674:	9752                	add	a4,a4,s4
62fc0676:	00a75603          	lhu	a2,10(a4)
62fc067a:	00c481a3          	sb	a2,3(s1)
62fc067e:	00475683          	lhu	a3,4(a4)
62fc0682:	0056d593          	srli	a1,a3,0x5
62fc0686:	44b7c58b          	lrw	a1,a5,a1,2
62fc068a:	4785                	li	a5,1
62fc068c:	00d796b3          	sll	a3,a5,a3
62fc0690:	8eed                	and	a3,a3,a1
62fc0692:	c299                	beqz	a3,62fc0698 <qcc74x_ef_ctrl_read_common_trim+0x9a>
62fc0694:	00f48023          	sb	a5,0(s1)
62fc0698:	00675683          	lhu	a3,6(a4)
62fc069c:	200567b7          	lui	a5,0x20056
62fc06a0:	0056d593          	srli	a1,a3,0x5
62fc06a4:	44b7c58b          	lrw	a1,a5,a1,2
62fc06a8:	4785                	li	a5,1
62fc06aa:	00d796b3          	sll	a3,a5,a3
62fc06ae:	8eed                	and	a3,a3,a1
62fc06b0:	c299                	beqz	a3,62fc06b6 <qcc74x_ef_ctrl_read_common_trim+0xb8>
62fc06b2:	00f480a3          	sb	a5,1(s1)
62fc06b6:	00875703          	lhu	a4,8(a4)
62fc06ba:	02000793          	li	a5,32
62fc06be:	200566b7          	lui	a3,0x20056
62fc06c2:	01f77993          	andi	s3,a4,31
62fc06c6:	00c985b3          	add	a1,s3,a2
62fc06ca:	8315                	srli	a4,a4,0x5
62fc06cc:	04b7de63          	bge	a5,a1,62fc0728 <qcc74x_ef_ctrl_read_common_trim+0x12a>
62fc06d0:	44e6ca8b          	lrw	s5,a3,a4,2
62fc06d4:	0691                	addi	a3,a3,4
62fc06d6:	44e6ca0b          	lrw	s4,a3,a4,2
62fc06da:	4505                	li	a0,1
62fc06dc:	4581                	li	a1,0
62fc06de:	3d040097          	auipc	ra,0x3d040
62fc06e2:	5cc080e7          	jalr	1484(ra) # a0000caa <__ashldi3>
62fc06e6:	fff50413          	addi	s0,a0,-1 # 1afff <wifi_ram_max_size+0x12fff>
62fc06ea:	864e                	mv	a2,s3
62fc06ec:	8556                	mv	a0,s5
62fc06ee:	85d2                	mv	a1,s4
62fc06f0:	3d040097          	auipc	ra,0x3d040
62fc06f4:	590080e7          	jalr	1424(ra) # a0000c80 <__lshrdi3>
62fc06f8:	8d61                	and	a0,a0,s0
62fc06fa:	0004d783          	lhu	a5,0(s1)
62fc06fe:	c0c8                	sw	a0,4(s1)
62fc0700:	8d5d                	or	a0,a0,a5
62fc0702:	ed0d                	bnez	a0,62fc073c <qcc74x_ef_ctrl_read_common_trim+0x13e>
62fc0704:	4785                	li	a5,1
62fc0706:	00f48123          	sb	a5,2(s1)
62fc070a:	854a                	mv	a0,s2
62fc070c:	2191                	jal	62fc0b50 <qcc74x_irq_restore>
62fc070e:	40b6                	lw	ra,76(sp)
62fc0710:	4426                	lw	s0,72(sp)
62fc0712:	4496                	lw	s1,68(sp)
62fc0714:	4906                	lw	s2,64(sp)
62fc0716:	59f2                	lw	s3,60(sp)
62fc0718:	5a62                	lw	s4,56(sp)
62fc071a:	5ad2                	lw	s5,52(sp)
62fc071c:	5b42                	lw	s6,48(sp)
62fc071e:	5bb2                	lw	s7,44(sp)
62fc0720:	6161                	addi	sp,sp,80
62fc0722:	8082                	ret
62fc0724:	0605                	addi	a2,a2,1
62fc0726:	b71d                	j	62fc064c <qcc74x_ef_ctrl_read_common_trim+0x4e>
62fc0728:	44e6c70b          	lrw	a4,a3,a4,2
62fc072c:	4785                	li	a5,1
62fc072e:	00c79533          	sll	a0,a5,a2
62fc0732:	157d                	addi	a0,a0,-1
62fc0734:	01375733          	srl	a4,a4,s3
62fc0738:	8d79                	and	a0,a0,a4
62fc073a:	b7c1                	j	62fc06fa <qcc74x_ef_ctrl_read_common_trim+0xfc>
62fc073c:	00048123          	sb	zero,2(s1)
62fc0740:	b7e9                	j	62fc070a <qcc74x_ef_ctrl_read_common_trim+0x10c>
62fc0742:	0405                	addi	s0,s0,1
62fc0744:	bde5                	j	62fc063c <qcc74x_ef_ctrl_read_common_trim+0x3e>

62fc0746 <qcc74x_ef_ctrl_get_trim_parity>:
62fc0746:	4701                	li	a4,0
62fc0748:	4781                	li	a5,0
62fc074a:	4605                	li	a2,1
62fc074c:	0ff77693          	zext.b	a3,a4
62fc0750:	00b6e563          	bltu	a3,a1,62fc075a <qcc74x_ef_ctrl_get_trim_parity+0x14>
62fc0754:	0017f513          	andi	a0,a5,1
62fc0758:	8082                	ret
62fc075a:	00e616b3          	sll	a3,a2,a4
62fc075e:	8ee9                	and	a3,a3,a0
62fc0760:	c681                	beqz	a3,62fc0768 <qcc74x_ef_ctrl_get_trim_parity+0x22>
62fc0762:	0785                	addi	a5,a5,1
62fc0764:	0ff7f793          	zext.b	a5,a5
62fc0768:	0705                	addi	a4,a4,1
62fc076a:	b7cd                	j	62fc074c <qcc74x_ef_ctrl_get_trim_parity+0x6>

62fc076c <qcc74x_spi_poll_exchange>:
62fc076c:	00452303          	lw	t1,4(a0)
62fc0770:	478d                	li	a5,3
62fc0772:	00032503          	lw	a0,0(t1)
62fc0776:	0c25350b          	extu	a0,a0,3,2
62fc077a:	0505                	addi	a0,a0,1
62fc077c:	00f51363          	bne	a0,a5,62fc0782 <qcc74x_spi_poll_exchange+0x16>
62fc0780:	4511                	li	a0,4
62fc0782:	08032783          	lw	a5,128(t1)
62fc0786:	02a6d6b3          	divu	a3,a3,a0
62fc078a:	08430e13          	addi	t3,t1,132
62fc078e:	00c7e793          	ori	a5,a5,12
62fc0792:	08f32023          	sw	a5,128(t1)
62fc0796:	08432783          	lw	a5,132(t1)
62fc079a:	03f7f793          	andi	a5,a5,63
62fc079e:	02a7d7b3          	divu	a5,a5,a0
62fc07a2:	00f6b733          	sltu	a4,a3,a5
62fc07a6:	42e6978b          	mvnez	a5,a3,a4
62fc07aa:	0ff7f713          	zext.b	a4,a5
62fc07ae:	40f687b3          	sub	a5,a3,a5
62fc07b2:	c991                	beqz	a1,62fc07c6 <qcc74x_spi_poll_exchange+0x5a>
62fc07b4:	4809                	li	a6,2
62fc07b6:	4891                	li	a7,4
62fc07b8:	4e85                	li	t4,1
62fc07ba:	ef11                	bnez	a4,62fc07d6 <qcc74x_spi_poll_exchange+0x6a>
62fc07bc:	4e89                	li	t4,2
62fc07be:	58fd                	li	a7,-1
62fc07c0:	4f11                	li	t5,4
62fc07c2:	4f85                	li	t6,1
62fc07c4:	a059                	j	62fc084a <qcc74x_spi_poll_exchange+0xde>
62fc07c6:	587d                	li	a6,-1
62fc07c8:	db75                	beqz	a4,62fc07bc <qcc74x_spi_poll_exchange+0x50>
62fc07ca:	177d                	addi	a4,a4,-1
62fc07cc:	09032423          	sw	a6,136(t1)
62fc07d0:	0ff77713          	zext.b	a4,a4
62fc07d4:	bfd5                	j	62fc07c8 <qcc74x_spi_poll_exchange+0x5c>
62fc07d6:	01050e63          	beq	a0,a6,62fc07f2 <qcc74x_spi_poll_exchange+0x86>
62fc07da:	01150f63          	beq	a0,a7,62fc07f8 <qcc74x_spi_poll_exchange+0x8c>
62fc07de:	01d51663          	bne	a0,t4,62fc07ea <qcc74x_spi_poll_exchange+0x7e>
62fc07e2:	9815cf0b          	lbuia	t5,(a1),1,0
62fc07e6:	09e32423          	sw	t5,136(t1)
62fc07ea:	177d                	addi	a4,a4,-1
62fc07ec:	0ff77713          	zext.b	a4,a4
62fc07f0:	b7e9                	j	62fc07ba <qcc74x_spi_poll_exchange+0x4e>
62fc07f2:	b825cf0b          	lhuia	t5,(a1),2,0
62fc07f6:	bfc5                	j	62fc07e6 <qcc74x_spi_poll_exchange+0x7a>
62fc07f8:	5845cf0b          	lwia	t5,(a1),4,0
62fc07fc:	b7ed                	j	62fc07e6 <qcc74x_spi_poll_exchange+0x7a>
62fc07fe:	000e2703          	lw	a4,0(t3) # 1a000 <wifi_ram_max_size+0x12000>
62fc0802:	3487370b          	extu	a4,a4,13,8
62fc0806:	04a76263          	bltu	a4,a0,62fc084a <qcc74x_spi_poll_exchange+0xde>
62fc080a:	02a75733          	divu	a4,a4,a0
62fc080e:	00e6b833          	sltu	a6,a3,a4
62fc0812:	4306970b          	mvnez	a4,a3,a6
62fc0816:	0ff77813          	zext.b	a6,a4
62fc081a:	8e99                	sub	a3,a3,a4
62fc081c:	08c32703          	lw	a4,140(t1)
62fc0820:	03d50863          	beq	a0,t4,62fc0850 <qcc74x_spi_poll_exchange+0xe4>
62fc0824:	03e50e63          	beq	a0,t5,62fc0860 <qcc74x_spi_poll_exchange+0xf4>
62fc0828:	01f51c63          	bne	a0,t6,62fc0840 <qcc74x_spi_poll_exchange+0xd4>
62fc082c:	c219                	beqz	a2,62fc0832 <qcc74x_spi_poll_exchange+0xc6>
62fc082e:	1816570b          	sbia	a4,(a2),1,0
62fc0832:	c799                	beqz	a5,62fc0840 <qcc74x_spi_poll_exchange+0xd4>
62fc0834:	cd95                	beqz	a1,62fc0870 <qcc74x_spi_poll_exchange+0x104>
62fc0836:	9815c70b          	lbuia	a4,(a1),1,0
62fc083a:	08e32423          	sw	a4,136(t1)
62fc083e:	17fd                	addi	a5,a5,-1
62fc0840:	187d                	addi	a6,a6,-1
62fc0842:	0ff87813          	zext.b	a6,a6
62fc0846:	fc081be3          	bnez	a6,62fc081c <qcc74x_spi_poll_exchange+0xb0>
62fc084a:	fad5                	bnez	a3,62fc07fe <qcc74x_spi_poll_exchange+0x92>
62fc084c:	4501                	li	a0,0
62fc084e:	8082                	ret
62fc0850:	c219                	beqz	a2,62fc0856 <qcc74x_spi_poll_exchange+0xea>
62fc0852:	3826570b          	shia	a4,(a2),2,0
62fc0856:	d7ed                	beqz	a5,62fc0840 <qcc74x_spi_poll_exchange+0xd4>
62fc0858:	cd81                	beqz	a1,62fc0870 <qcc74x_spi_poll_exchange+0x104>
62fc085a:	b825c70b          	lhuia	a4,(a1),2,0
62fc085e:	bff1                	j	62fc083a <qcc74x_spi_poll_exchange+0xce>
62fc0860:	c219                	beqz	a2,62fc0866 <qcc74x_spi_poll_exchange+0xfa>
62fc0862:	5846570b          	swia	a4,(a2),4,0
62fc0866:	dfe9                	beqz	a5,62fc0840 <qcc74x_spi_poll_exchange+0xd4>
62fc0868:	c581                	beqz	a1,62fc0870 <qcc74x_spi_poll_exchange+0x104>
62fc086a:	5845c70b          	lwia	a4,(a1),4,0
62fc086e:	b7f1                	j	62fc083a <qcc74x_spi_poll_exchange+0xce>
62fc0870:	09132423          	sw	a7,136(t1)
62fc0874:	b7e9                	j	62fc083e <qcc74x_spi_poll_exchange+0xd2>

62fc0876 <qcc74x_uart_putchar>:
62fc0876:	1101                	addi	sp,sp,-32
62fc0878:	cc22                	sw	s0,24(sp)
62fc087a:	ca26                	sw	s1,20(sp)
62fc087c:	c84a                	sw	s2,16(sp)
62fc087e:	c64e                	sw	s3,12(sp)
62fc0880:	c452                	sw	s4,8(sp)
62fc0882:	4144                	lw	s1,4(a0)
62fc0884:	ce06                	sw	ra,28(sp)
62fc0886:	842e                	mv	s0,a1
62fc0888:	2685                	jal	62fc0be8 <qcc74x_mtimer_get_time_ms>
62fc088a:	892a                	mv	s2,a0
62fc088c:	89ae                	mv	s3,a1
62fc088e:	06400a13          	li	s4,100
62fc0892:	0844a783          	lw	a5,132(s1)
62fc0896:	03f7f793          	andi	a5,a5,63
62fc089a:	cf91                	beqz	a5,62fc08b6 <qcc74x_uart_putchar+0x40>
62fc089c:	0ff47413          	zext.b	s0,s0
62fc08a0:	08848423          	sb	s0,136(s1)
62fc08a4:	4501                	li	a0,0
62fc08a6:	40f2                	lw	ra,28(sp)
62fc08a8:	4462                	lw	s0,24(sp)
62fc08aa:	44d2                	lw	s1,20(sp)
62fc08ac:	4942                	lw	s2,16(sp)
62fc08ae:	49b2                	lw	s3,12(sp)
62fc08b0:	4a22                	lw	s4,8(sp)
62fc08b2:	6105                	addi	sp,sp,32
62fc08b4:	8082                	ret
62fc08b6:	2e0d                	jal	62fc0be8 <qcc74x_mtimer_get_time_ms>
62fc08b8:	c3251577          	sub64	a0,a0,s2
62fc08bc:	e199                	bnez	a1,62fc08c2 <qcc74x_uart_putchar+0x4c>
62fc08be:	fcaa7ae3          	bgeu	s4,a0,62fc0892 <qcc74x_uart_putchar+0x1c>
62fc08c2:	f8c00513          	li	a0,-116
62fc08c6:	b7c5                	j	62fc08a6 <qcc74x_uart_putchar+0x30>

62fc08c8 <qcc74x_uart_put>:
62fc08c8:	1141                	addi	sp,sp,-16
62fc08ca:	c422                	sw	s0,8(sp)
62fc08cc:	c226                	sw	s1,4(sp)
62fc08ce:	c04a                	sw	s2,0(sp)
62fc08d0:	c606                	sw	ra,12(sp)
62fc08d2:	892a                	mv	s2,a0
62fc08d4:	842e                	mv	s0,a1
62fc08d6:	00c584b3          	add	s1,a1,a2
62fc08da:	00941463          	bne	s0,s1,62fc08e2 <qcc74x_uart_put+0x1a>
62fc08de:	4501                	li	a0,0
62fc08e0:	a039                	j	62fc08ee <qcc74x_uart_put+0x26>
62fc08e2:	9814458b          	lbuia	a1,(s0),1,0
62fc08e6:	854a                	mv	a0,s2
62fc08e8:	3779                	jal	62fc0876 <qcc74x_uart_putchar>
62fc08ea:	fe0558e3          	bgez	a0,62fc08da <qcc74x_uart_put+0x12>
62fc08ee:	40b2                	lw	ra,12(sp)
62fc08f0:	4422                	lw	s0,8(sp)
62fc08f2:	4492                	lw	s1,4(sp)
62fc08f4:	4902                	lw	s2,0(sp)
62fc08f6:	0141                	addi	sp,sp,16
62fc08f8:	8082                	ret

62fc08fa <flash_get_size_from_jedecid>:
62fc08fa:	01051793          	slli	a5,a0,0x10
62fc08fe:	00ff0737          	lui	a4,0xff0
62fc0902:	8ff9                	and	a5,a5,a4
62fc0904:	6741                	lui	a4,0x10
62fc0906:	f0070713          	addi	a4,a4,-256 # ff00 <wifi_ram_max_size+0x7f00>
62fc090a:	8f69                	and	a4,a4,a0
62fc090c:	8fd9                	or	a5,a5,a4
62fc090e:	5d05350b          	extu	a0,a0,23,16
62fc0912:	953e                	add	a0,a0,a5
62fc0914:	c519                	beqz	a0,62fc0922 <flash_get_size_from_jedecid+0x28>
62fc0916:	897d                	andi	a0,a0,31
62fc0918:	1535                	addi	a0,a0,-19
62fc091a:	000807b7          	lui	a5,0x80
62fc091e:	00a79533          	sll	a0,a5,a0
62fc0922:	8082                	ret

62fc0924 <qcc74x_flash_set_cmds.constprop.0>:
62fc0924:	010107b7          	lui	a5,0x1010
62fc0928:	1101                	addi	sp,sp,-32
62fc092a:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc092e:	c43e                	sw	a5,8(sp)
62fc0930:	47a5                	li	a5,9
62fc0932:	00f10623          	sb	a5,12(sp)
62fc0936:	85c1c783          	lbu	a5,-1956(gp) # 62fc1ce4 <g_flash_cfg>
62fc093a:	ce06                	sw	ra,28(sp)
62fc093c:	4711                	li	a4,4
62fc093e:	8bfd                	andi	a5,a5,31
62fc0940:	00e79763          	bne	a5,a4,62fc094e <qcc74x_flash_set_cmds.constprop.0+0x2a>
62fc0944:	4789                	li	a5,2
62fc0946:	00f105a3          	sb	a5,11(sp)
62fc094a:	00f10623          	sb	a5,12(sp)
62fc094e:	0028                	addi	a0,sp,8
62fc0950:	4581                	li	a1,0
62fc0952:	2939                	jal	62fc0d70 <qcc74x_sf_ctrl_cmds_set>
62fc0954:	40f2                	lw	ra,28(sp)
62fc0956:	6105                	addi	sp,sp,32
62fc0958:	8082                	ret

62fc095a <flash_set_l1c_wrap.constprop.0>:
62fc095a:	85c1c783          	lbu	a5,-1956(gp) # 62fc1ce4 <g_flash_cfg>
62fc095e:	4711                	li	a4,4
62fc0960:	85c18513          	addi	a0,gp,-1956 # 62fc1ce4 <g_flash_cfg>
62fc0964:	8bfd                	andi	a5,a5,31
62fc0966:	00e79363          	bne	a5,a4,62fc096c <flash_set_l1c_wrap.constprop.0+0x12>
62fc096a:	a995                	j	62fc0dde <qcc74x_sflash_set_burst_wrap>
62fc096c:	a991                	j	62fc0dc0 <qcc74x_sflash_disable_burst_wrap>

62fc096e <flash_set_qspi_enable.constprop.0>:
62fc096e:	85c1c783          	lbu	a5,-1956(gp) # 62fc1ce4 <g_flash_cfg>
62fc0972:	8bbd                	andi	a5,a5,15
62fc0974:	17f9                	addi	a5,a5,-2
62fc0976:	0fd7f793          	andi	a5,a5,253
62fc097a:	e781                	bnez	a5,62fc0982 <flash_set_qspi_enable.constprop.0+0x14>
62fc097c:	85c18513          	addi	a0,gp,-1956 # 62fc1ce4 <g_flash_cfg>
62fc0980:	a10d                	j	62fc0da2 <qcc74x_sflash_qspi_enable>
62fc0982:	8082                	ret

62fc0984 <flash2_init.isra.0>:
62fc0984:	7179                	addi	sp,sp,-48
62fc0986:	4785                	li	a5,1
62fc0988:	ca3e                	sw	a5,20(sp)
62fc098a:	cc3e                	sw	a5,24(sp)
62fc098c:	10300793          	li	a5,259
62fc0990:	00f11e23          	sh	a5,28(sp)
62fc0994:	010107b7          	lui	a5,0x1010
62fc0998:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc099c:	c63e                	sw	a5,12(sp)
62fc099e:	47a5                	li	a5,9
62fc09a0:	00f10823          	sb	a5,16(sp)
62fc09a4:	62fc37b7          	lui	a5,0x62fc3
62fc09a8:	0217c703          	lbu	a4,33(a5) # 62fc3021 <device_info+0x1>
62fc09ac:	d606                	sw	ra,44(sp)
62fc09ae:	d422                	sw	s0,40(sp)
62fc09b0:	d226                	sw	s1,36(sp)
62fc09b2:	d04a                	sw	s2,32(sp)
62fc09b4:	c402                	sw	zero,8(sp)
62fc09b6:	478d                	li	a5,3
62fc09b8:	06f71b63          	bne	a4,a5,62fc0a2e <flash2_init.isra.0+0xaa>
62fc09bc:	084c                	addi	a1,sp,20
62fc09be:	03400513          	li	a0,52
62fc09c2:	2e41                	jal	62fc0d52 <qcc74x_sf_cfg_sbus2_flash_init>
62fc09c4:	4505                	li	a0,1
62fc09c6:	2e55                	jal	62fc0d7a <qcc74x_sf_ctrl_sbus2_replace>
62fc09c8:	4785                	li	a5,1
62fc09ca:	4701                	li	a4,0
62fc09cc:	80818693          	addi	a3,gp,-2040 # 62fc1c90 <g_flash2_cfg>
62fc09d0:	4601                	li	a2,0
62fc09d2:	03400593          	li	a1,52
62fc09d6:	4501                	li	a0,0
62fc09d8:	80818913          	addi	s2,gp,-2040 # 62fc1c90 <g_flash2_cfg>
62fc09dc:	2915                	jal	62fc0e10 <qcc74x_sf_cfg_flash_identify_ext>
62fc09de:	04055863          	bgez	a0,62fc0a2e <flash2_init.isra.0+0xaa>
62fc09e2:	47c5                	li	a5,17
62fc09e4:	00f91023          	sh	a5,0(s2)
62fc09e8:	002c                	addi	a1,sp,8
62fc09ea:	57fd                	li	a5,-1
62fc09ec:	80818513          	addi	a0,gp,-2040 # 62fc1c90 <g_flash2_cfg>
62fc09f0:	02f90f23          	sb	a5,62(s2)
62fc09f4:	2ed9                	jal	62fc0dca <qcc74x_sflash_get_jedecid>
62fc09f6:	47a2                	lw	a5,8(sp)
62fc09f8:	01000737          	lui	a4,0x1000
62fc09fc:	177d                	addi	a4,a4,-1
62fc09fe:	62fc3437          	lui	s0,0x62fc3
62fc0a02:	8ff9                	and	a5,a5,a4
62fc0a04:	4585                	li	a1,1
62fc0a06:	0068                	addi	a0,sp,12
62fc0a08:	04840413          	addi	s0,s0,72 # 62fc3048 <g_jedec_id2>
62fc0a0c:	c43e                	sw	a5,8(sp)
62fc0a0e:	c01c                	sw	a5,0(s0)
62fc0a10:	2685                	jal	62fc0d70 <qcc74x_sf_ctrl_cmds_set>
62fc0a12:	00094583          	lbu	a1,0(s2)
62fc0a16:	4685                	li	a3,1
62fc0a18:	4601                	li	a2,0
62fc0a1a:	89bd                	andi	a1,a1,15
62fc0a1c:	80818513          	addi	a0,gp,-2040 # 62fc1c90 <g_flash2_cfg>
62fc0a20:	2a39                	jal	62fc0b3e <qcc74x_sflash_xip_read_enable>
62fc0a22:	e511                	bnez	a0,62fc0a2e <flash2_init.isra.0+0xaa>
62fc0a24:	2685                	jal	62fc0d84 <qcc74x_sf_ctrl_sbus2_revoke_replace>
62fc0a26:	4008                	lw	a0,0(s0)
62fc0a28:	3dc9                	jal	62fc08fa <flash_get_size_from_jedecid>
62fc0a2a:	80a1a223          	sw	a0,-2044(gp) # 62fc1c8c <flash2_size>
62fc0a2e:	50b2                	lw	ra,44(sp)
62fc0a30:	5422                	lw	s0,40(sp)
62fc0a32:	5492                	lw	s1,36(sp)
62fc0a34:	5902                	lw	s2,32(sp)
62fc0a36:	6145                	addi	sp,sp,48
62fc0a38:	8082                	ret

62fc0a3a <qcc74x_flash_init>:
62fc0a3a:	62fc3537          	lui	a0,0x62fc3
62fc0a3e:	7139                	addi	sp,sp,-64
62fc0a40:	02050513          	addi	a0,a0,32 # 62fc3020 <device_info>
62fc0a44:	de06                	sw	ra,60(sp)
62fc0a46:	dc22                	sw	s0,56(sp)
62fc0a48:	da26                	sw	s1,52(sp)
62fc0a4a:	d64e                	sw	s3,44(sp)
62fc0a4c:	d452                	sw	s4,40(sp)
62fc0a4e:	d84a                	sw	s2,48(sp)
62fc0a50:	d256                	sw	s5,36(sp)
62fc0a52:	ca02                	sw	zero,20(sp)
62fc0a54:	03b000ef          	jal	ra,62fc128e <qcc74x_efuse_get_device_info>
62fc0a58:	2be5                	jal	62fc1050 <GLB_Get_Flash_Id_Value>
62fc0a5a:	62fc3437          	lui	s0,0x62fc3
62fc0a5e:	62fc29b7          	lui	s3,0x62fc2
62fc0a62:	ca2a                	sw	a0,20(sp)
62fc0a64:	85c18a13          	addi	s4,gp,-1956 # 62fc1ce4 <g_flash_cfg>
62fc0a68:	04440413          	addi	s0,s0,68 # 62fc3044 <g_jedec_id>
62fc0a6c:	c8898993          	addi	s3,s3,-888 # 62fc1c88 <__tcm_code_end__>
62fc0a70:	c121                	beqz	a0,62fc0ab0 <qcc74x_flash_init+0x76>
62fc0a72:	4681                	li	a3,0
62fc0a74:	4601                	li	a2,0
62fc0a76:	85c18593          	addi	a1,gp,-1956 # 62fc1ce4 <g_flash_cfg>
62fc0a7a:	299d                	jal	62fc0ef0 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc0a7c:	892a                	mv	s2,a0
62fc0a7e:	e90d                	bnez	a0,62fc0ab0 <qcc74x_flash_init+0x76>
62fc0a80:	4552                	lw	a0,20(sp)
62fc0a82:	c008                	sw	a0,0(s0)
62fc0a84:	00aa06a3          	sb	a0,13(s4)
62fc0a88:	c62a                	sw	a0,12(sp)
62fc0a8a:	3d046097          	auipc	ra,0x3d046
62fc0a8e:	216080e7          	jalr	534(ra) # a0006ca0 <flash_get_clock_delay.constprop.0.isra.0>
62fc0a92:	4532                	lw	a0,12(sp)
62fc0a94:	359d                	jal	62fc08fa <flash_get_size_from_jedecid>
62fc0a96:	00a9a023          	sw	a0,0(s3)
62fc0a9a:	35ed                	jal	62fc0984 <flash2_init.isra.0>
62fc0a9c:	50f2                	lw	ra,60(sp)
62fc0a9e:	5462                	lw	s0,56(sp)
62fc0aa0:	54d2                	lw	s1,52(sp)
62fc0aa2:	59b2                	lw	s3,44(sp)
62fc0aa4:	5a22                	lw	s4,40(sp)
62fc0aa6:	5a92                	lw	s5,36(sp)
62fc0aa8:	854a                	mv	a0,s2
62fc0aaa:	5942                	lw	s2,48(sp)
62fc0aac:	6121                	addi	sp,sp,64
62fc0aae:	8082                	ret
62fc0ab0:	000109a3          	sb	zero,19(sp)
62fc0ab4:	cc02                	sw	zero,24(sp)
62fc0ab6:	ce02                	sw	zero,28(sp)
62fc0ab8:	2841                	jal	62fc0b48 <qcc74x_irq_save>
62fc0aba:	8aaa                	mv	s5,a0
62fc0abc:	01310513          	addi	a0,sp,19
62fc0ac0:	2e35                	jal	62fc0dfc <qcc74x_xip_sflash_opt_enter>
62fc0ac2:	4681                	li	a3,0
62fc0ac4:	4601                	li	a2,0
62fc0ac6:	086c                	addi	a1,sp,28
62fc0ac8:	85c18513          	addi	a0,gp,-1956 # 62fc1ce4 <g_flash_cfg>
62fc0acc:	29cd                	jal	62fc0fbe <qcc74x_xip_sflash_state_save>
62fc0ace:	082c                	addi	a1,sp,24
62fc0ad0:	85c18513          	addi	a0,gp,-1956 # 62fc1ce4 <g_flash_cfg>
62fc0ad4:	2cdd                	jal	62fc0dca <qcc74x_sflash_get_jedecid>
62fc0ad6:	460d                	li	a2,3
62fc0ad8:	082c                	addi	a1,sp,24
62fc0ada:	0848                	addi	a0,sp,20
62fc0adc:	3215                	jal	62fc0400 <arch_memcpy>
62fc0ade:	4562                	lw	a0,24(sp)
62fc0ae0:	010007b7          	lui	a5,0x1000
62fc0ae4:	17fd                	addi	a5,a5,-1
62fc0ae6:	8d7d                	and	a0,a0,a5
62fc0ae8:	4681                	li	a3,0
62fc0aea:	4601                	li	a2,0
62fc0aec:	85c18593          	addi	a1,gp,-1956 # 62fc1ce4 <g_flash_cfg>
62fc0af0:	cc2a                	sw	a0,24(sp)
62fc0af2:	c008                	sw	a0,0(s0)
62fc0af4:	2ef5                	jal	62fc0ef0 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc0af6:	4762                	lw	a4,24(sp)
62fc0af8:	892a                	mv	s2,a0
62fc0afa:	e119                	bnez	a0,62fc0b00 <qcc74x_flash_init+0xc6>
62fc0afc:	00ea06a3          	sb	a4,13(s4)
62fc0b00:	001667b7          	lui	a5,0x166
62fc0b04:	0ef78793          	addi	a5,a5,239 # 1660ef <remain_wifi_ram+0x1460ef>
62fc0b08:	00f71563          	bne	a4,a5,62fc0b12 <qcc74x_flash_init+0xd8>
62fc0b0c:	4791                	li	a5,4
62fc0b0e:	00fa1023          	sh	a5,0(s4)
62fc0b12:	3d09                	jal	62fc0924 <qcc74x_flash_set_cmds.constprop.0>
62fc0b14:	3da9                	jal	62fc096e <flash_set_qspi_enable.constprop.0>
62fc0b16:	3591                	jal	62fc095a <flash_set_l1c_wrap.constprop.0>
62fc0b18:	45f2                	lw	a1,28(sp)
62fc0b1a:	4681                	li	a3,0
62fc0b1c:	4601                	li	a2,0
62fc0b1e:	85c18513          	addi	a0,gp,-1956 # 62fc1ce4 <g_flash_cfg>
62fc0b22:	24d9                	jal	62fc0de8 <qcc74x_xip_sflash_state_restore>
62fc0b24:	01314503          	lbu	a0,19(sp)
62fc0b28:	2cf9                	jal	62fc0e06 <qcc74x_xip_sflash_opt_exit>
62fc0b2a:	8556                	mv	a0,s5
62fc0b2c:	2015                	jal	62fc0b50 <qcc74x_irq_restore>
62fc0b2e:	3d046097          	auipc	ra,0x3d046
62fc0b32:	172080e7          	jalr	370(ra) # a0006ca0 <flash_get_clock_delay.constprop.0.isra.0>
62fc0b36:	4008                	lw	a0,0(s0)
62fc0b38:	29fd                	jal	62fc1036 <GLB_Set_Flash_Id_Value>
62fc0b3a:	4008                	lw	a0,0(s0)
62fc0b3c:	bfa1                	j	62fc0a94 <qcc74x_flash_init+0x5a>

62fc0b3e <qcc74x_sflash_xip_read_enable>:
62fc0b3e:	87b6                	mv	a5,a3
62fc0b40:	02000713          	li	a4,32
62fc0b44:	4681                	li	a3,0
62fc0b46:	ac85                	j	62fc0db6 <qcc74x_sflash_set_xip_cfg>

62fc0b48 <qcc74x_irq_save>:
62fc0b48:	4521                	li	a0,8
62fc0b4a:	30053573          	csrrc	a0,mstatus,a0
62fc0b4e:	8082                	ret

62fc0b50 <qcc74x_irq_restore>:
62fc0b50:	30051073          	csrw	mstatus,a0
62fc0b54:	8082                	ret

62fc0b56 <qcc74x_mtimer_get_time_us>:
62fc0b56:	7139                	addi	sp,sp,-64
62fc0b58:	de22                	sw	s0,60(sp)
62fc0b5a:	c602                	sw	zero,12(sp)
62fc0b5c:	e000c7b7          	lui	a5,0xe000c
62fc0b60:	3e800413          	li	s0,1000
62fc0b64:	ff87a603          	lw	a2,-8(a5) # e000bff8 <__psram_limit+0x37c0bff8>
62fc0b68:	ffc7a683          	lw	a3,-4(a5)
62fc0b6c:	4f81                	li	t6,0
62fc0b6e:	4381                	li	t2,0
62fc0b70:	cc36                	sw	a3,24(sp)
62fc0b72:	ce7e                	sw	t6,28(sp)
62fc0b74:	ff87a603          	lw	a2,-8(a5)
62fc0b78:	ffc7a683          	lw	a3,-4(a5)
62fc0b7c:	4881                	li	a7,0
62fc0b7e:	c832                	sw	a2,16(sp)
62fc0b80:	ca1e                	sw	t2,20(sp)
62fc0b82:	ff87a603          	lw	a2,-8(a5)
62fc0b86:	ffc7a683          	lw	a3,-4(a5)
62fc0b8a:	4e81                	li	t4,0
62fc0b8c:	d032                	sw	a2,32(sp)
62fc0b8e:	d246                	sw	a7,36(sp)
62fc0b90:	ff87a603          	lw	a2,-8(a5)
62fc0b94:	ffc7a683          	lw	a3,-4(a5)
62fc0b98:	d436                	sw	a3,40(sp)
62fc0b9a:	d676                	sw	t4,44(sp)
62fc0b9c:	4732                	lw	a4,12(sp)
62fc0b9e:	0705                	addi	a4,a4,1
62fc0ba0:	c63a                	sw	a4,12(sp)
62fc0ba2:	4732                	lw	a4,12(sp)
62fc0ba4:	02870f63          	beq	a4,s0,62fc0be2 <qcc74x_mtimer_get_time_us+0x8c>
62fc0ba8:	4642                	lw	a2,16(sp)
62fc0baa:	46d2                	lw	a3,20(sp)
62fc0bac:	5502                	lw	a0,32(sp)
62fc0bae:	5592                	lw	a1,36(sp)
62fc0bb0:	fad5eae3          	bltu	a1,a3,62fc0b64 <qcc74x_mtimer_get_time_us+0xe>
62fc0bb4:	00b69463          	bne	a3,a1,62fc0bbc <qcc74x_mtimer_get_time_us+0x66>
62fc0bb8:	fac566e3          	bltu	a0,a2,62fc0b64 <qcc74x_mtimer_get_time_us+0xe>
62fc0bbc:	4662                	lw	a2,24(sp)
62fc0bbe:	46f2                	lw	a3,28(sp)
62fc0bc0:	5522                	lw	a0,40(sp)
62fc0bc2:	55b2                	lw	a1,44(sp)
62fc0bc4:	fac510e3          	bne	a0,a2,62fc0b64 <qcc74x_mtimer_get_time_us+0xe>
62fc0bc8:	f8d59ee3          	bne	a1,a3,62fc0b64 <qcc74x_mtimer_get_time_us+0xe>
62fc0bcc:	5622                	lw	a2,40(sp)
62fc0bce:	56b2                	lw	a3,44(sp)
62fc0bd0:	5702                	lw	a4,32(sp)
62fc0bd2:	5792                	lw	a5,36(sp)
62fc0bd4:	4501                	li	a0,0
62fc0bd6:	85b2                	mv	a1,a2
62fc0bd8:	c0e51577          	add64	a0,a0,a4
62fc0bdc:	5472                	lw	s0,60(sp)
62fc0bde:	6121                	addi	sp,sp,64
62fc0be0:	8082                	ret
62fc0be2:	4501                	li	a0,0
62fc0be4:	4581                	li	a1,0
62fc0be6:	bfdd                	j	62fc0bdc <qcc74x_mtimer_get_time_us+0x86>

62fc0be8 <qcc74x_mtimer_get_time_ms>:
62fc0be8:	1141                	addi	sp,sp,-16
62fc0bea:	c606                	sw	ra,12(sp)
62fc0bec:	37ad                	jal	62fc0b56 <qcc74x_mtimer_get_time_us>
62fc0bee:	3e800613          	li	a2,1000
62fc0bf2:	4681                	li	a3,0
62fc0bf4:	3d041097          	auipc	ra,0x3d041
62fc0bf8:	80c080e7          	jalr	-2036(ra) # a0001400 <__udivdi3>
62fc0bfc:	40b2                	lw	ra,12(sp)
62fc0bfe:	0141                	addi	sp,sp,16
62fc0c00:	8082                	ret

62fc0c02 <qcc74x_mtimer_delay_us>:
62fc0c02:	1141                	addi	sp,sp,-16
62fc0c04:	c422                	sw	s0,8(sp)
62fc0c06:	c24a                	sw	s2,4(sp)
62fc0c08:	c04e                	sw	s3,0(sp)
62fc0c0a:	c606                	sw	ra,12(sp)
62fc0c0c:	842a                	mv	s0,a0
62fc0c0e:	37a1                	jal	62fc0b56 <qcc74x_mtimer_get_time_us>
62fc0c10:	892a                	mv	s2,a0
62fc0c12:	89ae                	mv	s3,a1
62fc0c14:	3789                	jal	62fc0b56 <qcc74x_mtimer_get_time_us>
62fc0c16:	c3251577          	sub64	a0,a0,s2
62fc0c1a:	e199                	bnez	a1,62fc0c20 <qcc74x_mtimer_delay_us+0x1e>
62fc0c1c:	fe856ce3          	bltu	a0,s0,62fc0c14 <qcc74x_mtimer_delay_us+0x12>
62fc0c20:	40b2                	lw	ra,12(sp)
62fc0c22:	4422                	lw	s0,8(sp)
62fc0c24:	4912                	lw	s2,4(sp)
62fc0c26:	4982                	lw	s3,0(sp)
62fc0c28:	0141                	addi	sp,sp,16
62fc0c2a:	8082                	ret

62fc0c2c <qcc74x_mtimer_delay_ms>:
62fc0c2c:	1101                	addi	sp,sp,-32
62fc0c2e:	cc22                	sw	s0,24(sp)
62fc0c30:	ca26                	sw	s1,20(sp)
62fc0c32:	842a                	mv	s0,a0
62fc0c34:	c84a                	sw	s2,16(sp)
62fc0c36:	c64e                	sw	s3,12(sp)
62fc0c38:	ce06                	sw	ra,28(sp)
62fc0c3a:	3f31                	jal	62fc0b56 <qcc74x_mtimer_get_time_us>
62fc0c3c:	892a                	mv	s2,a0
62fc0c3e:	3e800513          	li	a0,1000
62fc0c42:	89ae                	mv	s3,a1
62fc0c44:	f0a41577          	mulr64	a0,s0,a0
62fc0c48:	84ae                	mv	s1,a1
62fc0c4a:	842a                	mv	s0,a0
62fc0c4c:	3729                	jal	62fc0b56 <qcc74x_mtimer_get_time_us>
62fc0c4e:	c3251577          	sub64	a0,a0,s2
62fc0c52:	fe95ede3          	bltu	a1,s1,62fc0c4c <qcc74x_mtimer_delay_ms+0x20>
62fc0c56:	00b49463          	bne	s1,a1,62fc0c5e <qcc74x_mtimer_delay_ms+0x32>
62fc0c5a:	fe8569e3          	bltu	a0,s0,62fc0c4c <qcc74x_mtimer_delay_ms+0x20>
62fc0c5e:	40f2                	lw	ra,28(sp)
62fc0c60:	4462                	lw	s0,24(sp)
62fc0c62:	44d2                	lw	s1,20(sp)
62fc0c64:	4942                	lw	s2,16(sp)
62fc0c66:	49b2                	lw	s3,12(sp)
62fc0c68:	6105                	addi	sp,sp,32
62fc0c6a:	8082                	ret

62fc0c6c <system_setup_xtal_config.isra.0>:
62fc0c6c:	1141                	addi	sp,sp,-16
62fc0c6e:	c606                	sw	ra,12(sp)
62fc0c70:	c422                	sw	s0,8(sp)
62fc0c72:	c226                	sw	s1,4(sp)
62fc0c74:	28d1                	jal	62fc0d48 <HBN_Get_MCU_XCLK_Sel>
62fc0c76:	84aa                	mv	s1,a0
62fc0c78:	20d9                	jal	62fc0d3e <HBN_Get_MCU_Root_CLK_Sel>
62fc0c7a:	842a                	mv	s0,a0
62fc0c7c:	4501                	li	a0,0
62fc0c7e:	285d                	jal	62fc0d34 <HBN_Set_MCU_XCLK_Sel>
62fc0c80:	4501                	li	a0,0
62fc0c82:	2065                	jal	62fc0d2a <HBN_Set_MCU_Root_CLK_Sel>
62fc0c84:	200106b7          	lui	a3,0x20010
62fc0c88:	8846a783          	lw	a5,-1916(a3) # 2000f884 <remain_wifi_ram+0x1ffef884>
62fc0c8c:	7751                	lui	a4,0xffff4
62fc0c8e:	175d                	addi	a4,a4,-9
62fc0c90:	8ff9                	and	a5,a5,a4
62fc0c92:	6721                	lui	a4,0x8
62fc0c94:	8fd9                	or	a5,a5,a4
62fc0c96:	88f6a223          	sw	a5,-1916(a3)
62fc0c9a:	47c1                	li	a5,16
62fc0c9c:	0001                	nop
62fc0c9e:	17fd                	addi	a5,a5,-1
62fc0ca0:	fff5                	bnez	a5,62fc0c9c <system_setup_xtal_config.isra.0+0x30>
62fc0ca2:	8526                	mv	a0,s1
62fc0ca4:	2841                	jal	62fc0d34 <HBN_Set_MCU_XCLK_Sel>
62fc0ca6:	8522                	mv	a0,s0
62fc0ca8:	4422                	lw	s0,8(sp)
62fc0caa:	40b2                	lw	ra,12(sp)
62fc0cac:	4492                	lw	s1,4(sp)
62fc0cae:	0141                	addi	sp,sp,16
62fc0cb0:	a8ad                	j	62fc0d2a <HBN_Set_MCU_Root_CLK_Sel>

62fc0cb2 <GLB_AHB_MCU_Software_Reset>:
62fc0cb2:	900167b7          	lui	a5,0x90016
62fc0cb6:	9647a783          	lw	a5,-1692(a5) # 90015964 <__psram_limit+0xe7c15964>
62fc0cba:	8782                	jr	a5

62fc0cbc <GLB_Power_On_XTAL_And_PLL_CLK>:
62fc0cbc:	900167b7          	lui	a5,0x90016
62fc0cc0:	9cc7a783          	lw	a5,-1588(a5) # 900159cc <__psram_limit+0xe7c159cc>
62fc0cc4:	8782                	jr	a5

62fc0cc6 <GLB_SW_POR_Reset>:
62fc0cc6:	900167b7          	lui	a5,0x90016
62fc0cca:	9d87a783          	lw	a5,-1576(a5) # 900159d8 <__psram_limit+0xe7c159d8>
62fc0cce:	8782                	jr	a5

62fc0cd0 <GLB_Set_DIG_512K_CLK>:
62fc0cd0:	900167b7          	lui	a5,0x90016
62fc0cd4:	a0c7a783          	lw	a5,-1524(a5) # 90015a0c <__psram_limit+0xe7c15a0c>
62fc0cd8:	8782                	jr	a5

62fc0cda <GLB_Set_DIG_CLK_Sel>:
62fc0cda:	900167b7          	lui	a5,0x90016
62fc0cde:	a107a783          	lw	a5,-1520(a5) # 90015a10 <__psram_limit+0xe7c15a10>
62fc0ce2:	8782                	jr	a5

62fc0ce4 <GLB_Set_MCU_System_CLK>:
62fc0ce4:	900167b7          	lui	a5,0x90016
62fc0ce8:	a407a783          	lw	a5,-1472(a5) # 90015a40 <__psram_limit+0xe7c15a40>
62fc0cec:	8782                	jr	a5

62fc0cee <GLB_Set_PKA_CLK_Sel>:
62fc0cee:	900167b7          	lui	a5,0x90016
62fc0cf2:	a4c7a783          	lw	a5,-1460(a5) # 90015a4c <__psram_limit+0xe7c15a4c>
62fc0cf6:	8782                	jr	a5

62fc0cf8 <GLB_Set_PWM1_IO_Sel>:
62fc0cf8:	900167b7          	lui	a5,0x90016
62fc0cfc:	a547a783          	lw	a5,-1452(a5) # 90015a54 <__psram_limit+0xe7c15a54>
62fc0d00:	8782                	jr	a5

62fc0d02 <GLB_Set_UART_CLK>:
62fc0d02:	900167b7          	lui	a5,0x90016
62fc0d06:	a847a783          	lw	a5,-1404(a5) # 90015a84 <__psram_limit+0xe7c15a84>
62fc0d0a:	8782                	jr	a5

62fc0d0c <GLB_Set_USB_CLK_From_WIFIPLL>:
62fc0d0c:	900167b7          	lui	a5,0x90016
62fc0d10:	a887a783          	lw	a5,-1400(a5) # 90015a88 <__psram_limit+0xe7c15a88>
62fc0d14:	8782                	jr	a5

62fc0d16 <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>:
62fc0d16:	900167b7          	lui	a5,0x90016
62fc0d1a:	a8c7a783          	lw	a5,-1396(a5) # 90015a8c <__psram_limit+0xe7c15a8c>
62fc0d1e:	8782                	jr	a5

62fc0d20 <HBN_Get_Xtal_Type>:
62fc0d20:	900167b7          	lui	a5,0x90016
62fc0d24:	b8c7a783          	lw	a5,-1140(a5) # 90015b8c <__psram_limit+0xe7c15b8c>
62fc0d28:	8782                	jr	a5

62fc0d2a <HBN_Set_MCU_Root_CLK_Sel>:
62fc0d2a:	900167b7          	lui	a5,0x90016
62fc0d2e:	bf47a783          	lw	a5,-1036(a5) # 90015bf4 <__psram_limit+0xe7c15bf4>
62fc0d32:	8782                	jr	a5

62fc0d34 <HBN_Set_MCU_XCLK_Sel>:
62fc0d34:	900167b7          	lui	a5,0x90016
62fc0d38:	bf87a783          	lw	a5,-1032(a5) # 90015bf8 <__psram_limit+0xe7c15bf8>
62fc0d3c:	8782                	jr	a5

62fc0d3e <HBN_Get_MCU_Root_CLK_Sel>:
62fc0d3e:	900167b7          	lui	a5,0x90016
62fc0d42:	c307a783          	lw	a5,-976(a5) # 90015c30 <__psram_limit+0xe7c15c30>
62fc0d46:	8782                	jr	a5

62fc0d48 <HBN_Get_MCU_XCLK_Sel>:
62fc0d48:	900167b7          	lui	a5,0x90016
62fc0d4c:	c347a783          	lw	a5,-972(a5) # 90015c34 <__psram_limit+0xe7c15c34>
62fc0d50:	8782                	jr	a5

62fc0d52 <qcc74x_sf_cfg_sbus2_flash_init>:
62fc0d52:	900167b7          	lui	a5,0x90016
62fc0d56:	d107a783          	lw	a5,-752(a5) # 90015d10 <__psram_limit+0xe7c15d10>
62fc0d5a:	8782                	jr	a5

62fc0d5c <qcc74x_sf_cfg_flash_identify>:
62fc0d5c:	90016837          	lui	a6,0x90016
62fc0d60:	d1482803          	lw	a6,-748(a6) # 90015d14 <__psram_limit+0xe7c15d14>
62fc0d64:	8802                	jr	a6

62fc0d66 <qcc74x_sf_ctrl_get_flash_image_offset>:
62fc0d66:	900167b7          	lui	a5,0x90016
62fc0d6a:	d247a783          	lw	a5,-732(a5) # 90015d24 <__psram_limit+0xe7c15d24>
62fc0d6e:	8782                	jr	a5

62fc0d70 <qcc74x_sf_ctrl_cmds_set>:
62fc0d70:	900167b7          	lui	a5,0x90016
62fc0d74:	d707a783          	lw	a5,-656(a5) # 90015d70 <__psram_limit+0xe7c15d70>
62fc0d78:	8782                	jr	a5

62fc0d7a <qcc74x_sf_ctrl_sbus2_replace>:
62fc0d7a:	900167b7          	lui	a5,0x90016
62fc0d7e:	d987a783          	lw	a5,-616(a5) # 90015d98 <__psram_limit+0xe7c15d98>
62fc0d82:	8782                	jr	a5

62fc0d84 <qcc74x_sf_ctrl_sbus2_revoke_replace>:
62fc0d84:	900167b7          	lui	a5,0x90016
62fc0d88:	d9c7a783          	lw	a5,-612(a5) # 90015d9c <__psram_limit+0xe7c15d9c>
62fc0d8c:	8782                	jr	a5

62fc0d8e <qcc74x_sf_ctrl_set_flash_image_offset>:
62fc0d8e:	900167b7          	lui	a5,0x90016
62fc0d92:	db47a783          	lw	a5,-588(a5) # 90015db4 <__psram_limit+0xe7c15db4>
62fc0d96:	8782                	jr	a5

62fc0d98 <qcc74x_sf_ctrl_set_owner>:
62fc0d98:	900167b7          	lui	a5,0x90016
62fc0d9c:	dbc7a783          	lw	a5,-580(a5) # 90015dbc <__psram_limit+0xe7c15dbc>
62fc0da0:	8782                	jr	a5

62fc0da2 <qcc74x_sflash_qspi_enable>:
62fc0da2:	900167b7          	lui	a5,0x90016
62fc0da6:	de47a783          	lw	a5,-540(a5) # 90015de4 <__psram_limit+0xe7c15de4>
62fc0daa:	8782                	jr	a5

62fc0dac <qcc74x_sflash_set_32bits_addr_mode>:
62fc0dac:	900167b7          	lui	a5,0x90016
62fc0db0:	e047a783          	lw	a5,-508(a5) # 90015e04 <__psram_limit+0xe7c15e04>
62fc0db4:	8782                	jr	a5

62fc0db6 <qcc74x_sflash_set_xip_cfg>:
62fc0db6:	90016837          	lui	a6,0x90016
62fc0dba:	e0c82803          	lw	a6,-500(a6) # 90015e0c <__psram_limit+0xe7c15e0c>
62fc0dbe:	8802                	jr	a6

62fc0dc0 <qcc74x_sflash_disable_burst_wrap>:
62fc0dc0:	900167b7          	lui	a5,0x90016
62fc0dc4:	e247a783          	lw	a5,-476(a5) # 90015e24 <__psram_limit+0xe7c15e24>
62fc0dc8:	8782                	jr	a5

62fc0dca <qcc74x_sflash_get_jedecid>:
62fc0dca:	900167b7          	lui	a5,0x90016
62fc0dce:	e2c7a783          	lw	a5,-468(a5) # 90015e2c <__psram_limit+0xe7c15e2c>
62fc0dd2:	8782                	jr	a5

62fc0dd4 <qcc74x_sflash_reset_continue_read>:
62fc0dd4:	900167b7          	lui	a5,0x90016
62fc0dd8:	e447a783          	lw	a5,-444(a5) # 90015e44 <__psram_limit+0xe7c15e44>
62fc0ddc:	8782                	jr	a5

62fc0dde <qcc74x_sflash_set_burst_wrap>:
62fc0dde:	900167b7          	lui	a5,0x90016
62fc0de2:	e487a783          	lw	a5,-440(a5) # 90015e48 <__psram_limit+0xe7c15e48>
62fc0de6:	8782                	jr	a5

62fc0de8 <qcc74x_xip_sflash_state_restore>:
62fc0de8:	900167b7          	lui	a5,0x90016
62fc0dec:	ef87a783          	lw	a5,-264(a5) # 90015ef8 <__psram_limit+0xe7c15ef8>
62fc0df0:	1141                	addi	sp,sp,-16
62fc0df2:	c606                	sw	ra,12(sp)
62fc0df4:	9782                	jalr	a5
62fc0df6:	40b2                	lw	ra,12(sp)
62fc0df8:	0141                	addi	sp,sp,16
62fc0dfa:	8082                	ret

62fc0dfc <qcc74x_xip_sflash_opt_enter>:
62fc0dfc:	900167b7          	lui	a5,0x90016
62fc0e00:	f047a783          	lw	a5,-252(a5) # 90015f04 <__psram_limit+0xe7c15f04>
62fc0e04:	8782                	jr	a5

62fc0e06 <qcc74x_xip_sflash_opt_exit>:
62fc0e06:	900167b7          	lui	a5,0x90016
62fc0e0a:	f087a783          	lw	a5,-248(a5) # 90015f08 <__psram_limit+0xe7c15f08>
62fc0e0e:	8782                	jr	a5

62fc0e10 <qcc74x_sf_cfg_flash_identify_ext>:
62fc0e10:	1101                	addi	sp,sp,-32
62fc0e12:	cc22                	sw	s0,24(sp)
62fc0e14:	ca26                	sw	s1,20(sp)
62fc0e16:	c84a                	sw	s2,16(sp)
62fc0e18:	c63e                	sw	a5,12(sp)
62fc0e1a:	ce06                	sw	ra,28(sp)
62fc0e1c:	892a                	mv	s2,a0
62fc0e1e:	84b6                	mv	s1,a3
62fc0e20:	3f35                	jal	62fc0d5c <qcc74x_sf_cfg_flash_identify>
62fc0e22:	47b2                	lw	a5,12(sp)
62fc0e24:	842a                	mv	s0,a0
62fc0e26:	00090b63          	beqz	s2,62fc0e3c <qcc74x_sf_cfg_flash_identify_ext+0x2c>
62fc0e2a:	0004c583          	lbu	a1,0(s1)
62fc0e2e:	02000713          	li	a4,32
62fc0e32:	4681                	li	a3,0
62fc0e34:	4605                	li	a2,1
62fc0e36:	89bd                	andi	a1,a1,15
62fc0e38:	8526                	mv	a0,s1
62fc0e3a:	3fb5                	jal	62fc0db6 <qcc74x_sflash_set_xip_cfg>
62fc0e3c:	02044e63          	bltz	s0,62fc0e78 <qcc74x_sf_cfg_flash_identify_ext+0x68>
62fc0e40:	010007b7          	lui	a5,0x1000
62fc0e44:	17fd                	addi	a5,a5,-1
62fc0e46:	8c7d                	and	s0,s0,a5
62fc0e48:	62fc17b7          	lui	a5,0x62fc1
62fc0e4c:	4701                	li	a4,0
62fc0e4e:	70878793          	addi	a5,a5,1800 # 62fc1708 <flash_infos>
62fc0e52:	45b1                	li	a1,12
62fc0e54:	02b00613          	li	a2,43
62fc0e58:	02b706b3          	mul	a3,a4,a1
62fc0e5c:	40f6c50b          	lrw	a0,a3,a5,0
62fc0e60:	02851363          	bne	a0,s0,62fc0e86 <qcc74x_sf_cfg_flash_identify_ext+0x76>
62fc0e64:	97b6                	add	a5,a5,a3
62fc0e66:	478c                	lw	a1,8(a5)
62fc0e68:	05400613          	li	a2,84
62fc0e6c:	8526                	mv	a0,s1
62fc0e6e:	dbaff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0e72:	800007b7          	lui	a5,0x80000
62fc0e76:	8c5d                	or	s0,s0,a5
62fc0e78:	40f2                	lw	ra,28(sp)
62fc0e7a:	8522                	mv	a0,s0
62fc0e7c:	4462                	lw	s0,24(sp)
62fc0e7e:	44d2                	lw	s1,20(sp)
62fc0e80:	4942                	lw	s2,16(sp)
62fc0e82:	6105                	addi	sp,sp,32
62fc0e84:	8082                	ret
62fc0e86:	0705                	addi	a4,a4,1
62fc0e88:	fcc718e3          	bne	a4,a2,62fc0e58 <qcc74x_sf_cfg_flash_identify_ext+0x48>
62fc0e8c:	b7f5                	j	62fc0e78 <qcc74x_sf_cfg_flash_identify_ext+0x68>

62fc0e8e <qcc74x_xip_sflash_read_via_cache_need_lock>:
62fc0e8e:	1101                	addi	sp,sp,-32
62fc0e90:	cc22                	sw	s0,24(sp)
62fc0e92:	04000437          	lui	s0,0x4000
62fc0e96:	147d                	addi	s0,s0,-1
62fc0e98:	c452                	sw	s4,8(sp)
62fc0e9a:	8c69                	and	s0,s0,a0
62fc0e9c:	8a2e                	mv	s4,a1
62fc0e9e:	8536                	mv	a0,a3
62fc0ea0:	85ba                	mv	a1,a4
62fc0ea2:	ce06                	sw	ra,28(sp)
62fc0ea4:	ca26                	sw	s1,20(sp)
62fc0ea6:	c84a                	sw	s2,16(sp)
62fc0ea8:	c64e                	sw	s3,12(sp)
62fc0eaa:	c256                	sw	s5,4(sp)
62fc0eac:	84b6                	mv	s1,a3
62fc0eae:	893a                	mv	s2,a4
62fc0eb0:	8ab2                	mv	s5,a2
62fc0eb2:	3d55                	jal	62fc0d66 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0eb4:	864a                	mv	a2,s2
62fc0eb6:	89aa                	mv	s3,a0
62fc0eb8:	85a6                	mv	a1,s1
62fc0eba:	4501                	li	a0,0
62fc0ebc:	3dc9                	jal	62fc0d8e <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0ebe:	85ca                	mv	a1,s2
62fc0ec0:	8526                	mv	a0,s1
62fc0ec2:	3555                	jal	62fc0d66 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0ec4:	a00005b7          	lui	a1,0xa0000
62fc0ec8:	8dc1                	or	a1,a1,s0
62fc0eca:	8656                	mv	a2,s5
62fc0ecc:	8d89                	sub	a1,a1,a0
62fc0ece:	8552                	mv	a0,s4
62fc0ed0:	d58ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0ed4:	854e                	mv	a0,s3
62fc0ed6:	864a                	mv	a2,s2
62fc0ed8:	85a6                	mv	a1,s1
62fc0eda:	3d55                	jal	62fc0d8e <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0edc:	40f2                	lw	ra,28(sp)
62fc0ede:	4462                	lw	s0,24(sp)
62fc0ee0:	44d2                	lw	s1,20(sp)
62fc0ee2:	4942                	lw	s2,16(sp)
62fc0ee4:	49b2                	lw	s3,12(sp)
62fc0ee6:	4a22                	lw	s4,8(sp)
62fc0ee8:	4a92                	lw	s5,4(sp)
62fc0eea:	4501                	li	a0,0
62fc0eec:	6105                	addi	sp,sp,32
62fc0eee:	8082                	ret

62fc0ef0 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>:
62fc0ef0:	474647b7          	lui	a5,0x47464
62fc0ef4:	7175                	addi	sp,sp,-144
62fc0ef6:	34678793          	addi	a5,a5,838 # 47464346 <__RFTLV_HEAD1_H+0xf3f704>
62fc0efa:	dece                	sw	s3,124(sp)
62fc0efc:	c706                	sw	ra,140(sp)
62fc0efe:	c522                	sw	s0,136(sp)
62fc0f00:	c326                	sw	s1,132(sp)
62fc0f02:	c14a                	sw	s2,128(sp)
62fc0f04:	c63e                	sw	a5,12(sp)
62fc0f06:	00010823          	sb	zero,16(sp)
62fc0f0a:	89ae                	mv	s3,a1
62fc0f0c:	e52d                	bnez	a0,62fc0f76 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x86>
62fc0f0e:	85b6                	mv	a1,a3
62fc0f10:	8532                	mv	a0,a2
62fc0f12:	8432                	mv	s0,a2
62fc0f14:	84b6                	mv	s1,a3
62fc0f16:	3d81                	jal	62fc0d66 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0f18:	85a2                	mv	a1,s0
62fc0f1a:	892a                	mv	s2,a0
62fc0f1c:	8626                	mv	a2,s1
62fc0f1e:	4501                	li	a0,0
62fc0f20:	35bd                	jal	62fc0d8e <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0f22:	a0000537          	lui	a0,0xa0000
62fc0f26:	86a2                	mv	a3,s0
62fc0f28:	8726                	mv	a4,s1
62fc0f2a:	05c00613          	li	a2,92
62fc0f2e:	084c                	addi	a1,sp,20
62fc0f30:	0521                	addi	a0,a0,8
62fc0f32:	3fb1                	jal	62fc0e8e <qcc74x_xip_sflash_read_via_cache_need_lock>
62fc0f34:	85a2                	mv	a1,s0
62fc0f36:	8626                	mv	a2,s1
62fc0f38:	854a                	mv	a0,s2
62fc0f3a:	3d91                	jal	62fc0d8e <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0f3c:	4611                	li	a2,4
62fc0f3e:	006c                	addi	a1,sp,12
62fc0f40:	0848                	addi	a0,sp,20
62fc0f42:	d28ff0ef          	jal	ra,62fc046a <arch_memcmp>
62fc0f46:	842a                	mv	s0,a0
62fc0f48:	e92d                	bnez	a0,62fc0fba <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0f4a:	05400593          	li	a1,84
62fc0f4e:	0828                	addi	a0,sp,24
62fc0f50:	d72ff0ef          	jal	ra,62fc04c2 <qcc74x_soft_crc32>
62fc0f54:	57b6                	lw	a5,108(sp)
62fc0f56:	06a79263          	bne	a5,a0,62fc0fba <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0f5a:	05400613          	li	a2,84
62fc0f5e:	082c                	addi	a1,sp,24
62fc0f60:	854e                	mv	a0,s3
62fc0f62:	cc6ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0f66:	40ba                	lw	ra,140(sp)
62fc0f68:	8522                	mv	a0,s0
62fc0f6a:	442a                	lw	s0,136(sp)
62fc0f6c:	449a                	lw	s1,132(sp)
62fc0f6e:	490a                	lw	s2,128(sp)
62fc0f70:	59f6                	lw	s3,124(sp)
62fc0f72:	6149                	addi	sp,sp,144
62fc0f74:	8082                	ret
62fc0f76:	900167b7          	lui	a5,0x90016
62fc0f7a:	d007a783          	lw	a5,-768(a5) # 90015d00 <__psram_limit+0xe7c15d00>
62fc0f7e:	892a                	mv	s2,a0
62fc0f80:	9782                	jalr	a5
62fc0f82:	842a                	mv	s0,a0
62fc0f84:	d16d                	beqz	a0,62fc0f66 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0f86:	62fc17b7          	lui	a5,0x62fc1
62fc0f8a:	4701                	li	a4,0
62fc0f8c:	70878793          	addi	a5,a5,1800 # 62fc1708 <flash_infos>
62fc0f90:	45b1                	li	a1,12
62fc0f92:	02b00613          	li	a2,43
62fc0f96:	02b706b3          	mul	a3,a4,a1
62fc0f9a:	40f6c50b          	lrw	a0,a3,a5,0
62fc0f9e:	01251b63          	bne	a0,s2,62fc0fb4 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xc4>
62fc0fa2:	97b6                	add	a5,a5,a3
62fc0fa4:	478c                	lw	a1,8(a5)
62fc0fa6:	05400613          	li	a2,84
62fc0faa:	854e                	mv	a0,s3
62fc0fac:	c7cff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0fb0:	4401                	li	s0,0
62fc0fb2:	bf55                	j	62fc0f66 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0fb4:	0705                	addi	a4,a4,1
62fc0fb6:	fec710e3          	bne	a4,a2,62fc0f96 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xa6>
62fc0fba:	547d                	li	s0,-1
62fc0fbc:	b76d                	j	62fc0f66 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>

62fc0fbe <qcc74x_xip_sflash_state_save>:
62fc0fbe:	7179                	addi	sp,sp,-48
62fc0fc0:	04000793          	li	a5,64
62fc0fc4:	d422                	sw	s0,40(sp)
62fc0fc6:	d226                	sw	s1,36(sp)
62fc0fc8:	d04a                	sw	s2,32(sp)
62fc0fca:	ce4e                	sw	s3,28(sp)
62fc0fcc:	d606                	sw	ra,44(sp)
62fc0fce:	842a                	mv	s0,a0
62fc0fd0:	89ae                	mv	s3,a1
62fc0fd2:	8932                	mv	s2,a2
62fc0fd4:	84b6                	mv	s1,a3
62fc0fd6:	c63e                	sw	a5,12(sp)
62fc0fd8:	47b2                	lw	a5,12(sp)
62fc0fda:	fff78713          	addi	a4,a5,-1
62fc0fde:	c63a                	sw	a4,12(sp)
62fc0fe0:	ffe5                	bnez	a5,62fc0fd8 <qcc74x_xip_sflash_state_save+0x1a>
62fc0fe2:	4785                	li	a5,1
62fc0fe4:	00f49463          	bne	s1,a5,62fc0fec <qcc74x_xip_sflash_state_save+0x2e>
62fc0fe8:	4505                	li	a0,1
62fc0fea:	3b41                	jal	62fc0d7a <qcc74x_sf_ctrl_sbus2_replace>
62fc0fec:	4501                	li	a0,0
62fc0fee:	336d                	jal	62fc0d98 <qcc74x_sf_ctrl_set_owner>
62fc0ff0:	8522                	mv	a0,s0
62fc0ff2:	33cd                	jal	62fc0dd4 <qcc74x_sflash_reset_continue_read>
62fc0ff4:	8522                	mv	a0,s0
62fc0ff6:	33e9                	jal	62fc0dc0 <qcc74x_sflash_disable_burst_wrap>
62fc0ff8:	4585                	li	a1,1
62fc0ffa:	8522                	mv	a0,s0
62fc0ffc:	3b45                	jal	62fc0dac <qcc74x_sflash_set_32bits_addr_mode>
62fc0ffe:	00044783          	lbu	a5,0(s0) # 4000000 <remain_wifi_ram+0x3fe0000>
62fc1002:	8bbd                	andi	a5,a5,15
62fc1004:	17f9                	addi	a5,a5,-2
62fc1006:	0fd7f793          	andi	a5,a5,253
62fc100a:	e399                	bnez	a5,62fc1010 <qcc74x_xip_sflash_state_save+0x52>
62fc100c:	8522                	mv	a0,s0
62fc100e:	3b51                	jal	62fc0da2 <qcc74x_sflash_qspi_enable>
62fc1010:	8522                	mv	a0,s0
62fc1012:	337d                	jal	62fc0dc0 <qcc74x_sflash_disable_burst_wrap>
62fc1014:	85a6                	mv	a1,s1
62fc1016:	854a                	mv	a0,s2
62fc1018:	33b9                	jal	62fc0d66 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc101a:	00a9a023          	sw	a0,0(s3)
62fc101e:	8626                	mv	a2,s1
62fc1020:	85ca                	mv	a1,s2
62fc1022:	4501                	li	a0,0
62fc1024:	33ad                	jal	62fc0d8e <qcc74x_sf_ctrl_set_flash_image_offset>
62fc1026:	50b2                	lw	ra,44(sp)
62fc1028:	5422                	lw	s0,40(sp)
62fc102a:	5492                	lw	s1,36(sp)
62fc102c:	5902                	lw	s2,32(sp)
62fc102e:	49f2                	lw	s3,28(sp)
62fc1030:	4501                	li	a0,0
62fc1032:	6145                	addi	sp,sp,48
62fc1034:	8082                	ret

62fc1036 <GLB_Set_Flash_Id_Value>:
62fc1036:	010007b7          	lui	a5,0x1000
62fc103a:	17fd                	addi	a5,a5,-1
62fc103c:	8d7d                	and	a0,a0,a5
62fc103e:	5a0007b7          	lui	a5,0x5a000
62fc1042:	8d5d                	or	a0,a0,a5
62fc1044:	200007b7          	lui	a5,0x20000
62fc1048:	5ca7a223          	sw	a0,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc104c:	4501                	li	a0,0
62fc104e:	8082                	ret

62fc1050 <GLB_Get_Flash_Id_Value>:
62fc1050:	200007b7          	lui	a5,0x20000
62fc1054:	5c47a703          	lw	a4,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc1058:	7f0007b7          	lui	a5,0x7f000
62fc105c:	5a0006b7          	lui	a3,0x5a000
62fc1060:	8ff9                	and	a5,a5,a4
62fc1062:	4501                	li	a0,0
62fc1064:	00d79663          	bne	a5,a3,62fc1070 <GLB_Get_Flash_Id_Value+0x20>
62fc1068:	01000537          	lui	a0,0x1000
62fc106c:	157d                	addi	a0,a0,-1
62fc106e:	8d79                	and	a0,a0,a4
62fc1070:	8082                	ret

62fc1072 <GLB_Get_Package_Type>:
62fc1072:	200567b7          	lui	a5,0x20056
62fc1076:	4f88                	lw	a0,24(a5)
62fc1078:	5d65350b          	extu	a0,a0,23,22
62fc107c:	8082                	ret

62fc107e <GLB_GPIO_Pad_LeadOut_Sts>:
62fc107e:	1141                	addi	sp,sp,-16
62fc1080:	c422                	sw	s0,8(sp)
62fc1082:	c606                	sw	ra,12(sp)
62fc1084:	842a                	mv	s0,a0
62fc1086:	37f5                	jal	62fc1072 <GLB_Get_Package_Type>
62fc1088:	4789                	li	a5,2
62fc108a:	02f50563          	beq	a0,a5,62fc10b4 <GLB_GPIO_Pad_LeadOut_Sts+0x36>
62fc108e:	47f9                	li	a5,30
62fc1090:	4505                	li	a0,1
62fc1092:	0087eb63          	bltu	a5,s0,62fc10a8 <GLB_GPIO_Pad_LeadOut_Sts+0x2a>
62fc1096:	78740537          	lui	a0,0x78740
62fc109a:	c0f50513          	addi	a0,a0,-1009 # 7873fc0f <__HeapLimit+0x1570fc0f>
62fc109e:	00855533          	srl	a0,a0,s0
62fc10a2:	fff54513          	not	a0,a0
62fc10a6:	8905                	andi	a0,a0,1
62fc10a8:	00154513          	xori	a0,a0,1
62fc10ac:	40b2                	lw	ra,12(sp)
62fc10ae:	4422                	lw	s0,8(sp)
62fc10b0:	0141                	addi	sp,sp,16
62fc10b2:	8082                	ret
62fc10b4:	4505                	li	a0,1
62fc10b6:	bfdd                	j	62fc10ac <GLB_GPIO_Pad_LeadOut_Sts+0x2e>

62fc10b8 <HBN_Get_Xtal_Value>:
62fc10b8:	cd2d                	beqz	a0,62fc1132 <HBN_Get_Xtal_Value+0x7a>
62fc10ba:	2000f7b7          	lui	a5,0x2000f
62fc10be:	10c7a783          	lw	a5,268(a5) # 2000f10c <remain_wifi_ram+0x1ffef10c>
62fc10c2:	4721                	li	a4,8
62fc10c4:	1c47b68b          	extu	a3,a5,7,4
62fc10c8:	06e69363          	bne	a3,a4,62fc112e <HBN_Get_Xtal_Value+0x76>
62fc10cc:	8bbd                	andi	a5,a5,15
62fc10ce:	4711                	li	a4,4
62fc10d0:	04e78563          	beq	a5,a4,62fc111a <HBN_Get_Xtal_Value+0x62>
62fc10d4:	00f76f63          	bltu	a4,a5,62fc10f2 <HBN_Get_Xtal_Value+0x3a>
62fc10d8:	4709                	li	a4,2
62fc10da:	02e78263          	beq	a5,a4,62fc10fe <HBN_Get_Xtal_Value+0x46>
62fc10de:	470d                	li	a4,3
62fc10e0:	02e78a63          	beq	a5,a4,62fc1114 <HBN_Get_Xtal_Value+0x5c>
62fc10e4:	4705                	li	a4,1
62fc10e6:	02e78163          	beq	a5,a4,62fc1108 <HBN_Get_Xtal_Value+0x50>
62fc10ea:	00052023          	sw	zero,0(a0)
62fc10ee:	4501                	li	a0,0
62fc10f0:	8082                	ret
62fc10f2:	4715                	li	a4,5
62fc10f4:	02e78863          	beq	a5,a4,62fc1124 <HBN_Get_Xtal_Value+0x6c>
62fc10f8:	4719                	li	a4,6
62fc10fa:	fee798e3          	bne	a5,a4,62fc10ea <HBN_Get_Xtal_Value+0x32>
62fc10fe:	01e857b7          	lui	a5,0x1e85
62fc1102:	80078793          	addi	a5,a5,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc1106:	a029                	j	62fc1110 <HBN_Get_Xtal_Value+0x58>
62fc1108:	016e37b7          	lui	a5,0x16e3
62fc110c:	60078793          	addi	a5,a5,1536 # 16e3600 <remain_wifi_ram+0x16c3600>
62fc1110:	c11c                	sw	a5,0(a0)
62fc1112:	bff1                	j	62fc10ee <HBN_Get_Xtal_Value+0x36>
62fc1114:	0249f7b7          	lui	a5,0x249f
62fc1118:	bfe5                	j	62fc1110 <HBN_Get_Xtal_Value+0x58>
62fc111a:	026267b7          	lui	a5,0x2626
62fc111e:	a0078793          	addi	a5,a5,-1536 # 2625a00 <remain_wifi_ram+0x2605a00>
62fc1122:	b7fd                	j	62fc1110 <HBN_Get_Xtal_Value+0x58>
62fc1124:	018cc7b7          	lui	a5,0x18cc
62fc1128:	a8078793          	addi	a5,a5,-1408 # 18cba80 <remain_wifi_ram+0x18aba80>
62fc112c:	b7d5                	j	62fc1110 <HBN_Get_Xtal_Value+0x58>
62fc112e:	00052023          	sw	zero,0(a0)
62fc1132:	4505                	li	a0,1
62fc1134:	8082                	ret
	...

62fc1140 <ASM_Delay_Us>:
62fc1140:	1141                	addi	sp,sp,-16
62fc1142:	c232                	sw	a2,4(sp)
62fc1144:	c402                	sw	zero,8(sp)
62fc1146:	000f46b7          	lui	a3,0xf4
62fc114a:	c602                	sw	zero,12(sp)
62fc114c:	23f68693          	addi	a3,a3,575 # f423f <remain_wifi_ram+0xd423f>
62fc1150:	04a6f963          	bgeu	a3,a0,62fc11a2 <ASM_Delay_Us+0x62>
62fc1154:	66e1                	lui	a3,0x18
62fc1156:	6a068693          	addi	a3,a3,1696 # 186a0 <wifi_ram_max_size+0x106a0>
62fc115a:	02d55533          	divu	a0,a0,a3
62fc115e:	4729                	li	a4,10
62fc1160:	c42a                	sw	a0,8(sp)
62fc1162:	47a2                	lw	a5,8(sp)
62fc1164:	02b787b3          	mul	a5,a5,a1
62fc1168:	c63e                	sw	a5,12(sp)
62fc116a:	47b2                	lw	a5,12(sp)
62fc116c:	02e7d7b3          	divu	a5,a5,a4
62fc1170:	c63e                	sw	a5,12(sp)
62fc1172:	47b2                	lw	a5,12(sp)
62fc1174:	4712                	lw	a4,4(sp)
62fc1176:	02e7d7b3          	divu	a5,a5,a4
62fc117a:	c63e                	sw	a5,12(sp)
62fc117c:	47b2                	lw	a5,12(sp)
62fc117e:	c385                	beqz	a5,62fc119e <ASM_Delay_Us+0x5e>
62fc1180:	46b2                	lw	a3,12(sp)
62fc1182:	8736                	mv	a4,a3
62fc1184:	4781                	li	a5,0
62fc1186:	0001                	nop
62fc1188:	0001                	nop
62fc118a:	0001                	nop
62fc118c:	00000013          	nop
62fc1190:	00e78663          	beq	a5,a4,62fc119c <ASM_Delay_Us+0x5c>
62fc1194:	0785                	addi	a5,a5,1
62fc1196:	bfed                	j	62fc1190 <ASM_Delay_Us+0x50>
62fc1198:	0001                	nop
62fc119a:	0001                	nop
62fc119c:	0001                	nop
62fc119e:	0141                	addi	sp,sp,16
62fc11a0:	8082                	ret
62fc11a2:	3e800693          	li	a3,1000
62fc11a6:	02d55533          	divu	a0,a0,a3
62fc11aa:	c42a                	sw	a0,8(sp)
62fc11ac:	4722                	lw	a4,8(sp)
62fc11ae:	02b70733          	mul	a4,a4,a1
62fc11b2:	c63a                	sw	a4,12(sp)
62fc11b4:	47b2                	lw	a5,12(sp)
62fc11b6:	02d7d7b3          	divu	a5,a5,a3
62fc11ba:	bf5d                	j	62fc1170 <ASM_Delay_Us+0x30>
	...

62fc11c6 <arch_delay_us>:
62fc11c6:	1101                	addi	sp,sp,-32
62fc11c8:	ce06                	sw	ra,28(sp)
62fc11ca:	85aa                	mv	a1,a0
62fc11cc:	7c1027f3          	csrr	a5,mhcr
62fc11d0:	7c102673          	csrr	a2,mhcr
62fc11d4:	0017f713          	andi	a4,a5,1
62fc11d8:	8205                	srli	a2,a2,0x1
62fc11da:	c705                	beqz	a4,62fc1202 <arch_delay_us+0x3c>
62fc11dc:	8a05                	andi	a2,a2,1
62fc11de:	4791                	li	a5,4
62fc11e0:	40c78633          	sub	a2,a5,a2
62fc11e4:	4505                	li	a0,1
62fc11e6:	c62e                	sw	a1,12(sp)
62fc11e8:	c432                	sw	a2,8(sp)
62fc11ea:	18d000ef          	jal	ra,62fc1b76 <Clock_System_Clock_Get>
62fc11ee:	4622                	lw	a2,8(sp)
62fc11f0:	45b2                	lw	a1,12(sp)
62fc11f2:	e509                	bnez	a0,62fc11fc <arch_delay_us+0x36>
62fc11f4:	01e85537          	lui	a0,0x1e85
62fc11f8:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc11fc:	40f2                	lw	ra,28(sp)
62fc11fe:	6105                	addi	sp,sp,32
62fc1200:	b781                	j	62fc1140 <ASM_Delay_Us>
62fc1202:	8e5d                	or	a2,a2,a5
62fc1204:	00167793          	andi	a5,a2,1
62fc1208:	460d                	li	a2,3
62fc120a:	ffe9                	bnez	a5,62fc11e4 <arch_delay_us+0x1e>
62fc120c:	4661                	li	a2,24
62fc120e:	bfd9                	j	62fc11e4 <arch_delay_us+0x1e>

62fc1210 <arch_delay_ms>:
62fc1210:	1141                	addi	sp,sp,-16
62fc1212:	c422                	sw	s0,8(sp)
62fc1214:	c606                	sw	ra,12(sp)
62fc1216:	c226                	sw	s1,4(sp)
62fc1218:	c04a                	sw	s2,0(sp)
62fc121a:	3ff00793          	li	a5,1023
62fc121e:	842a                	mv	s0,a0
62fc1220:	00a7fb63          	bgeu	a5,a0,62fc1236 <arch_delay_ms+0x26>
62fc1224:	00a55913          	srli	s2,a0,0xa
62fc1228:	4481                	li	s1,0
62fc122a:	000fa537          	lui	a0,0xfa
62fc122e:	0485                	addi	s1,s1,1
62fc1230:	3f59                	jal	62fc11c6 <arch_delay_us>
62fc1232:	fe991ce3          	bne	s2,s1,62fc122a <arch_delay_ms+0x1a>
62fc1236:	3ff47413          	andi	s0,s0,1023
62fc123a:	c819                	beqz	s0,62fc1250 <arch_delay_ms+0x40>
62fc123c:	3e800513          	li	a0,1000
62fc1240:	02a40533          	mul	a0,s0,a0
62fc1244:	4422                	lw	s0,8(sp)
62fc1246:	40b2                	lw	ra,12(sp)
62fc1248:	4492                	lw	s1,4(sp)
62fc124a:	4902                	lw	s2,0(sp)
62fc124c:	0141                	addi	sp,sp,16
62fc124e:	bfa5                	j	62fc11c6 <arch_delay_us>
62fc1250:	40b2                	lw	ra,12(sp)
62fc1252:	4422                	lw	s0,8(sp)
62fc1254:	4492                	lw	s1,4(sp)
62fc1256:	4902                	lw	s2,0(sp)
62fc1258:	0141                	addi	sp,sp,16
62fc125a:	8082                	ret

62fc125c <qcc74x_efuse_print_number>:
62fc125c:	47a5                	li	a5,9
62fc125e:	02b7f263          	bgeu	a5,a1,62fc1282 <qcc74x_efuse_print_number+0x26>
62fc1262:	4729                	li	a4,10
62fc1264:	02e5d7b3          	divu	a5,a1,a4
62fc1268:	02e5f5b3          	remu	a1,a1,a4
62fc126c:	03078793          	addi	a5,a5,48
62fc1270:	00f50023          	sb	a5,0(a0) # fa000 <remain_wifi_ram+0xda000>
62fc1274:	4789                	li	a5,2
62fc1276:	03058593          	addi	a1,a1,48 # a0000030 <__psram_limit+0xf7c00030>
62fc127a:	00b500a3          	sb	a1,1(a0)
62fc127e:	953e                	add	a0,a0,a5
62fc1280:	8082                	ret
62fc1282:	03058593          	addi	a1,a1,48
62fc1286:	00b50023          	sb	a1,0(a0)
62fc128a:	4785                	li	a5,1
62fc128c:	bfcd                	j	62fc127e <qcc74x_efuse_print_number+0x22>

62fc128e <qcc74x_efuse_get_device_info>:
62fc128e:	1101                	addi	sp,sp,-32
62fc1290:	cc22                	sw	s0,24(sp)
62fc1292:	4705                	li	a4,1
62fc1294:	842a                	mv	s0,a0
62fc1296:	4685                	li	a3,1
62fc1298:	0070                	addi	a2,sp,12
62fc129a:	45e1                	li	a1,24
62fc129c:	4501                	li	a0,0
62fc129e:	ce06                	sw	ra,28(sp)
62fc12a0:	ca26                	sw	s1,20(sp)
62fc12a2:	adeff0ef          	jal	ra,62fc0580 <qcc74x_ef_ctrl_read_direct>
62fc12a6:	4732                	lw	a4,12(sp)
62fc12a8:	5d67360b          	extu	a2,a4,23,22
62fc12ac:	71a7378b          	extu	a5,a4,28,26
62fc12b0:	6587368b          	extu	a3,a4,25,24
62fc12b4:	8375                	srli	a4,a4,0x1d
62fc12b6:	00e401a3          	sb	a4,3(s0)
62fc12ba:	00c40023          	sb	a2,0(s0)
62fc12be:	00f400a3          	sb	a5,1(s0)
62fc12c2:	00d40123          	sb	a3,2(s0)
62fc12c6:	4705                	li	a4,1
62fc12c8:	02e60963          	beq	a2,a4,62fc12fa <qcc74x_efuse_get_device_info+0x6c>
62fc12cc:	4709                	li	a4,2
62fc12ce:	02e60b63          	beq	a2,a4,62fc1304 <qcc74x_efuse_get_device_info+0x76>
62fc12d2:	ee15                	bnez	a2,62fc130e <qcc74x_efuse_get_device_info+0x80>
62fc12d4:	a0009737          	lui	a4,0xa0009
62fc12d8:	3f070713          	addi	a4,a4,1008 # a00093f0 <__psram_limit+0xf7c093f0>
62fc12dc:	c418                	sw	a4,8(s0)
62fc12de:	4709                	li	a4,2
62fc12e0:	0ee78363          	beq	a5,a4,62fc13c6 <qcc74x_efuse_get_device_info+0x138>
62fc12e4:	02f76a63          	bltu	a4,a5,62fc1318 <qcc74x_efuse_get_device_info+0x8a>
62fc12e8:	c3b9                	beqz	a5,62fc132e <qcc74x_efuse_get_device_info+0xa0>
62fc12ea:	4705                	li	a4,1
62fc12ec:	0ce78863          	beq	a5,a4,62fc13bc <qcc74x_efuse_get_device_info+0x12e>
62fc12f0:	a00097b7          	lui	a5,0xa0009
62fc12f4:	40878793          	addi	a5,a5,1032 # a0009408 <__psram_limit+0xf7c09408>
62fc12f8:	a83d                	j	62fc1336 <qcc74x_efuse_get_device_info+0xa8>
62fc12fa:	a0009737          	lui	a4,0xa0009
62fc12fe:	3f870713          	addi	a4,a4,1016 # a00093f8 <__psram_limit+0xf7c093f8>
62fc1302:	bfe9                	j	62fc12dc <qcc74x_efuse_get_device_info+0x4e>
62fc1304:	a0009737          	lui	a4,0xa0009
62fc1308:	40070713          	addi	a4,a4,1024 # a0009400 <__psram_limit+0xf7c09400>
62fc130c:	bfc1                	j	62fc12dc <qcc74x_efuse_get_device_info+0x4e>
62fc130e:	a0009737          	lui	a4,0xa0009
62fc1312:	40870713          	addi	a4,a4,1032 # a0009408 <__psram_limit+0xf7c09408>
62fc1316:	b7d9                	j	62fc12dc <qcc74x_efuse_get_device_info+0x4e>
62fc1318:	470d                	li	a4,3
62fc131a:	0ae78b63          	beq	a5,a4,62fc13d0 <qcc74x_efuse_get_device_info+0x142>
62fc131e:	4711                	li	a4,4
62fc1320:	fce798e3          	bne	a5,a4,62fc12f0 <qcc74x_efuse_get_device_info+0x62>
62fc1324:	a00097b7          	lui	a5,0xa0009
62fc1328:	41c78793          	addi	a5,a5,1052 # a000941c <__psram_limit+0xf7c0941c>
62fc132c:	a029                	j	62fc1336 <qcc74x_efuse_get_device_info+0xa8>
62fc132e:	a00097b7          	lui	a5,0xa0009
62fc1332:	41078793          	addi	a5,a5,1040 # a0009410 <__psram_limit+0xf7c09410>
62fc1336:	c45c                	sw	a5,12(s0)
62fc1338:	4789                	li	a5,2
62fc133a:	0af68563          	beq	a3,a5,62fc13e4 <qcc74x_efuse_get_device_info+0x156>
62fc133e:	478d                	li	a5,3
62fc1340:	0af68763          	beq	a3,a5,62fc13ee <qcc74x_efuse_get_device_info+0x160>
62fc1344:	4785                	li	a5,1
62fc1346:	08f68a63          	beq	a3,a5,62fc13da <qcc74x_efuse_get_device_info+0x14c>
62fc134a:	a00097b7          	lui	a5,0xa0009
62fc134e:	41078793          	addi	a5,a5,1040 # a0009410 <__psram_limit+0xf7c09410>
62fc1352:	200004b7          	lui	s1,0x20000
62fc1356:	68048493          	addi	s1,s1,1664 # 20000680 <remain_wifi_ram+0x1ffe0680>
62fc135a:	c81c                	sw	a5,16(s0)
62fc135c:	40100793          	li	a5,1025
62fc1360:	d8bc                	sw	a5,112(s1)
62fc1362:	06e00513          	li	a0,110
62fc1366:	3585                	jal	62fc11c6 <arch_delay_us>
62fc1368:	40300793          	li	a5,1027
62fc136c:	d8bc                	sw	a5,112(s1)
62fc136e:	06e00513          	li	a0,110
62fc1372:	3d91                	jal	62fc11c6 <arch_delay_us>
62fc1374:	41300793          	li	a5,1043
62fc1378:	d8bc                	sw	a5,112(s1)
62fc137a:	06e00513          	li	a0,110
62fc137e:	35a1                	jal	62fc11c6 <arch_delay_us>
62fc1380:	43300793          	li	a5,1075
62fc1384:	d8bc                	sw	a5,112(s1)
62fc1386:	44c00513          	li	a0,1100
62fc138a:	3d35                	jal	62fc11c6 <arch_delay_us>
62fc138c:	58b8                	lw	a4,112(s1)
62fc138e:	1e000693          	li	a3,480
62fc1392:	01440513          	addi	a0,s0,20
62fc1396:	6cc7378b          	extu	a5,a4,27,12
62fc139a:	c63e                	sw	a5,12(sp)
62fc139c:	00f41223          	sh	a5,4(s0)
62fc13a0:	04f6ec63          	bltu	a3,a5,62fc13f8 <qcc74x_efuse_get_device_info+0x16a>
62fc13a4:	a00095b7          	lui	a1,0xa0009
62fc13a8:	460d                	li	a2,3
62fc13aa:	43858593          	addi	a1,a1,1080 # a0009438 <__psram_limit+0xf7c09438>
62fc13ae:	852ff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc13b2:	40f2                	lw	ra,28(sp)
62fc13b4:	4462                	lw	s0,24(sp)
62fc13b6:	44d2                	lw	s1,20(sp)
62fc13b8:	6105                	addi	sp,sp,32
62fc13ba:	8082                	ret
62fc13bc:	a00097b7          	lui	a5,0xa0009
62fc13c0:	41478793          	addi	a5,a5,1044 # a0009414 <__psram_limit+0xf7c09414>
62fc13c4:	bf8d                	j	62fc1336 <qcc74x_efuse_get_device_info+0xa8>
62fc13c6:	a00097b7          	lui	a5,0xa0009
62fc13ca:	41878793          	addi	a5,a5,1048 # a0009418 <__psram_limit+0xf7c09418>
62fc13ce:	b7a5                	j	62fc1336 <qcc74x_efuse_get_device_info+0xa8>
62fc13d0:	a00097b7          	lui	a5,0xa0009
62fc13d4:	43478793          	addi	a5,a5,1076 # a0009434 <__psram_limit+0xf7c09434>
62fc13d8:	bfb9                	j	62fc1336 <qcc74x_efuse_get_device_info+0xa8>
62fc13da:	a00097b7          	lui	a5,0xa0009
62fc13de:	42078793          	addi	a5,a5,1056 # a0009420 <__psram_limit+0xf7c09420>
62fc13e2:	bf85                	j	62fc1352 <qcc74x_efuse_get_device_info+0xc4>
62fc13e4:	a00097b7          	lui	a5,0xa0009
62fc13e8:	42878793          	addi	a5,a5,1064 # a0009428 <__psram_limit+0xf7c09428>
62fc13ec:	b79d                	j	62fc1352 <qcc74x_efuse_get_device_info+0xc4>
62fc13ee:	a00097b7          	lui	a5,0xa0009
62fc13f2:	43078793          	addi	a5,a5,1072 # a0009430 <__psram_limit+0xf7c09430>
62fc13f6:	bfb1                	j	62fc1352 <qcc74x_efuse_get_device_info+0xc4>
62fc13f8:	21b00693          	li	a3,539
62fc13fc:	04f6e663          	bltu	a3,a5,62fc1448 <qcc74x_efuse_get_device_info+0x1ba>
62fc1400:	e2078413          	addi	s0,a5,-480
62fc1404:	06400793          	li	a5,100
62fc1408:	02f40433          	mul	s0,s0,a5
62fc140c:	03c00593          	li	a1,60
62fc1410:	0479                	addi	s0,s0,30
62fc1412:	02b44433          	div	s0,s0,a1
62fc1416:	0ff47593          	zext.b	a1,s0
62fc141a:	3589                	jal	62fc125c <qcc74x_efuse_print_number>
62fc141c:	a00095b7          	lui	a1,0xa0009
62fc1420:	4615                	li	a2,5
62fc1422:	43c58593          	addi	a1,a1,1084 # a000943c <__psram_limit+0xf7c0943c>
62fc1426:	84aa                	mv	s1,a0
62fc1428:	fd9fe0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc142c:	06400593          	li	a1,100
62fc1430:	8d81                	sub	a1,a1,s0
62fc1432:	0ff5f593          	zext.b	a1,a1
62fc1436:	00448513          	addi	a0,s1,4
62fc143a:	350d                	jal	62fc125c <qcc74x_efuse_print_number>
62fc143c:	a00095b7          	lui	a1,0xa0009
62fc1440:	4611                	li	a2,4
62fc1442:	44458593          	addi	a1,a1,1092 # a0009444 <__psram_limit+0xf7c09444>
62fc1446:	b7a5                	j	62fc13ae <qcc74x_efuse_get_device_info+0x120>
62fc1448:	21c00693          	li	a3,540
62fc144c:	00d79863          	bne	a5,a3,62fc145c <qcc74x_efuse_get_device_info+0x1ce>
62fc1450:	a00095b7          	lui	a1,0xa0009
62fc1454:	460d                	li	a2,3
62fc1456:	44858593          	addi	a1,a1,1096 # a0009448 <__psram_limit+0xf7c09448>
62fc145a:	bf91                	j	62fc13ae <qcc74x_efuse_get_device_info+0x120>
62fc145c:	26100693          	li	a3,609
62fc1460:	04f6e763          	bltu	a3,a5,62fc14ae <qcc74x_efuse_get_device_info+0x220>
62fc1464:	de478413          	addi	s0,a5,-540
62fc1468:	06400793          	li	a5,100
62fc146c:	02f40433          	mul	s0,s0,a5
62fc1470:	04600793          	li	a5,70
62fc1474:	06400593          	li	a1,100
62fc1478:	02340413          	addi	s0,s0,35
62fc147c:	02f44433          	div	s0,s0,a5
62fc1480:	8d81                	sub	a1,a1,s0
62fc1482:	0ff5f593          	zext.b	a1,a1
62fc1486:	3bd9                	jal	62fc125c <qcc74x_efuse_print_number>
62fc1488:	a00095b7          	lui	a1,0xa0009
62fc148c:	4615                	li	a2,5
62fc148e:	43c58593          	addi	a1,a1,1084 # a000943c <__psram_limit+0xf7c0943c>
62fc1492:	84aa                	mv	s1,a0
62fc1494:	f6dfe0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc1498:	0ff47593          	zext.b	a1,s0
62fc149c:	00448513          	addi	a0,s1,4
62fc14a0:	3b75                	jal	62fc125c <qcc74x_efuse_print_number>
62fc14a2:	a00095b7          	lui	a1,0xa0009
62fc14a6:	4611                	li	a2,4
62fc14a8:	44c58593          	addi	a1,a1,1100 # a000944c <__psram_limit+0xf7c0944c>
62fc14ac:	b709                	j	62fc13ae <qcc74x_efuse_get_device_info+0x120>
62fc14ae:	a00095b7          	lui	a1,0xa0009
62fc14b2:	460d                	li	a2,3
62fc14b4:	45058593          	addi	a1,a1,1104 # a0009450 <__psram_limit+0xf7c09450>
62fc14b8:	bddd                	j	62fc13ae <qcc74x_efuse_get_device_info+0x120>
	...

62fc14bc <flash_cfg_GD_LQ64E>:
62fc14bc:	0104 3d01 9966 03ff 009f e9b7 c804 0100     ...=f...........
62fc14cc:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc14dc:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc14ec:	0102 01ab 3505 0000 0101 0000 ff38 ffa0     .....5......8...
62fc14fc:	0377 4002 0377 f002 0bb8 0fa0 0fa0 0005     w..@w...........
62fc150c:	fde8 0003                                   ....

62fc1510 <flash_cfg_GD_Q64E>:
62fc1510:	0104 3f01 9966 03ff 009f e9b7 c804 0100     ...?f...........
62fc1520:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc1530:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1540:	0101 01ab 3505 0000 3101 0000 ff38 ff20     .....5...1..8. .
62fc1550:	0377 4002 0377 f002 012c 04b0 04b0 0005     w..@w...,.......
62fc1560:	80e8 0014                                   ....

62fc1564 <flash_cfg_Winb_16JV>:
62fc1564:	0104 3d01 9966 03ff 009f e9b7 ef04 0100     ...=f...........
62fc1574:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc1584:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1594:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc15a4:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc15b4:	80e8 0014                                   ....

62fc15b8 <flash_cfg_Winb_64JV>:
62fc15b8:	0004 3f01 9966 03ff 009f e9b7 ef04 0100     ...?f...........
62fc15c8:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc15d8:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc15e8:	0101 01ab 3505 0000 3101 0000 ff38 ffff     .....5...1..8...
62fc15f8:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc1608:	80e8 0003                                   ....

62fc160c <flash_cfg_Winb_256FV>:
62fc160c:	0124 3f01 9966 03ff 009f e9b7 ef04 0100     $..?f...........
62fc161c:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc162c:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc163c:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc164c:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc165c:	80e8 0003                                   ....

62fc1660 <flash_cfg_Mxic_25U256>:
62fc1660:	0124 3f01 9966 03ff 009f e9b7 c204 0100     $..?f...........
62fc1670:	20c7 d852 0206 0238 010b 010b 013b 00bb     . R...8.....;...
62fc1680:	016b 02eb 02eb 5002 0000 0100 0006 0100     k......P........
62fc1690:	0102 01ab 1505 0000 0101 0000 ff38 ffa5     ............8...
62fc16a0:	00c0 0200 00c0 1000 0190 03e8 07d0 0005     ................
62fc16b0:	80e8 0014                                   ....

62fc16b4 <flash_cfg_Puya_Q32H>:
62fc16b4:	0104 3f01 9966 03ff 009f e9b7 8504 0100     ...?f...........
62fc16c4:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc16d4:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc16e4:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc16f4:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc1704:	80e8 0008                                   ....

62fc1708 <flash_infos>:
62fc1708:	40ef 0017 0000 0000 15b8 62fc 40ef 0019     .@.........b.@..
62fc1718:	0000 0000 160c 62fc 60ef 0017 0000 0000     .......b.`......
62fc1728:	15b8 62fc 70ef 0015 0000 0000 1564 62fc     ...b.p......d..b
62fc1738:	40c8 0017 0000 0000 1510 62fc 60c8 0017     .@.........b.`..
62fc1748:	0000 0000 14bc 62fc 60c8 0018 0000 0000     .......b.`......
62fc1758:	14bc 62fc 65c8 0018 0000 0000 1510 62fc     ...b.e.........b
62fc1768:	345e 0015 0000 0000 1510 62fc 405e 0015     ^4.........b^@..
62fc1778:	0000 0000 1510 62fc 405e 0016 0000 0000     .......b^@......
62fc1788:	1510 62fc 405e 0017 0000 0000 1510 62fc     ...b^@.........b
62fc1798:	405e 0018 0000 0000 1510 62fc 605e 0015     ^@.........b^`..
62fc17a8:	0000 0000 1510 62fc 25c2 0039 0000 0000     .......b.%9.....
62fc17b8:	1660 62fc 4020 0014 0000 0000 1564 62fc     `..b @......d..b
62fc17c8:	4020 0015 0000 0000 1564 62fc 4020 0016      @......d..b @..
62fc17d8:	0000 0000 1564 62fc 4020 0017 0000 0000     ....d..b @......
62fc17e8:	1564 62fc 4020 0018 0000 0000 1564 62fc     d..b @......d..b
62fc17f8:	5020 0016 0000 0000 1564 62fc 4220 0017      P......d..b B..
62fc1808:	0000 0000 1564 62fc 400b 0017 0000 0000     ....d..b.@......
62fc1818:	14bc 62fc 400b 0018 0000 0000 14bc 62fc     ...b.@.........b
62fc1828:	6085 0017 0000 0000 16b4 62fc 6085 0018     .`.........b.`..
62fc1838:	0000 0000 16b4 62fc 2085 0014 0000 0000     .......b. ......
62fc1848:	14bc 62fc 2085 0015 0000 0000 14bc 62fc     ...b. .........b
62fc1858:	2085 0016 0000 0000 14bc 62fc 2085 0017     . .........b. ..
62fc1868:	0000 0000 14bc 62fc 2085 0018 0000 0000     .......b. ......
62fc1878:	14bc 62fc 2085 0019 0000 0000 14bc 62fc     ...b. .........b
62fc1888:	40a1 0015 0000 0000 1564 62fc 40a1 0016     .@......d..b.@..
62fc1898:	0000 0000 14bc 62fc 40a1 0017 0000 0000     .......b.@......
62fc18a8:	1564 62fc 40a1 0018 0000 0000 1564 62fc     d..b.@......d..b
62fc18b8:	28a1 0018 0000 0000 1564 62fc 60c4 0016     .(......d..b.`..
62fc18c8:	0000 0000 1564 62fc 60c4 0015 0000 0000     ....d..b.`......
62fc18d8:	1564 62fc 60c4 0017 0000 0000 1564 62fc     d..b.`......d..b
62fc18e8:	6125 0016 0000 0000 14bc 62fc 65c8 0017     %a.........b.e..
62fc18f8:	0000 0000 1510 62fc 60c4 0014 0000 0000     .......b.`......
62fc1908:	1564 62fc                                   d..b

62fc190c <Clock_Get_AUPLL_Output>:
62fc190c:	1101                	addi	sp,sp,-32
62fc190e:	ca26                	sw	s1,20(sp)
62fc1910:	000107a3          	sb	zero,15(sp)
62fc1914:	84aa                	mv	s1,a0
62fc1916:	200087b7          	lui	a5,0x20008
62fc191a:	00f10513          	addi	a0,sp,15
62fc191e:	cc22                	sw	s0,24(sp)
62fc1920:	ce06                	sw	ra,28(sp)
62fc1922:	7687a403          	lw	s0,1896(a5) # 20008768 <remain_wifi_ram+0x1ffe8768>
62fc1926:	bfaff0ef          	jal	ra,62fc0d20 <HBN_Get_Xtal_Type>
62fc192a:	e121                	bnez	a0,62fc196a <Clock_Get_AUPLL_Output+0x5e>
62fc192c:	00f14703          	lbu	a4,15(sp)
62fc1930:	000807b7          	lui	a5,0x80
62fc1934:	17fd                	addi	a5,a5,-1
62fc1936:	4691                	li	a3,4
62fc1938:	8fe1                	and	a5,a5,s0
62fc193a:	0cd70463          	beq	a4,a3,62fc1a02 <Clock_Get_AUPLL_Output+0xf6>
62fc193e:	02e6e063          	bltu	a3,a4,62fc195e <Clock_Get_AUPLL_Output+0x52>
62fc1942:	4689                	li	a3,2
62fc1944:	0cd70763          	beq	a4,a3,62fc1a12 <Clock_Get_AUPLL_Output+0x106>
62fc1948:	468d                	li	a3,3
62fc194a:	0ad70363          	beq	a4,a3,62fc19f0 <Clock_Get_AUPLL_Output+0xe4>
62fc194e:	4685                	li	a3,1
62fc1950:	00d70f63          	beq	a4,a3,62fc196e <Clock_Get_AUPLL_Output+0x62>
62fc1954:	40f2                	lw	ra,28(sp)
62fc1956:	4462                	lw	s0,24(sp)
62fc1958:	44d2                	lw	s1,20(sp)
62fc195a:	6105                	addi	sp,sp,32
62fc195c:	8082                	ret
62fc195e:	4695                	li	a3,5
62fc1960:	0ad70563          	beq	a4,a3,62fc1a0a <Clock_Get_AUPLL_Output+0xfe>
62fc1964:	4699                	li	a3,6
62fc1966:	0ad70663          	beq	a4,a3,62fc1a12 <Clock_Get_AUPLL_Output+0x106>
62fc196a:	4501                	li	a0,0
62fc196c:	b7e5                	j	62fc1954 <Clock_Get_AUPLL_Output+0x48>
62fc196e:	6719                	lui	a4,0x6
62fc1970:	dc070713          	addi	a4,a4,-576 # 5dc0 <HeapMinSize+0x4dc0>
62fc1974:	02e787b3          	mul	a5,a5,a4
62fc1978:	1f400713          	li	a4,500
62fc197c:	83ad                	srli	a5,a5,0xb
62fc197e:	02e787b3          	mul	a5,a5,a4
62fc1982:	e2bbf737          	lui	a4,0xe2bbf
62fc1986:	f4070713          	addi	a4,a4,-192 # e2bbef40 <__psram_limit+0x3a7bef40>
62fc198a:	000f46b7          	lui	a3,0xf4
62fc198e:	24068693          	addi	a3,a3,576 # f4240 <remain_wifi_ram+0xd4240>
62fc1992:	973e                	add	a4,a4,a5
62fc1994:	08e6f363          	bgeu	a3,a4,62fc1a1a <Clock_Get_AUPLL_Output+0x10e>
62fc1998:	e51e5737          	lui	a4,0xe51e5
62fc199c:	94070713          	addi	a4,a4,-1728 # e51e4940 <__psram_limit+0x3cde4940>
62fc19a0:	973e                	add	a4,a4,a5
62fc19a2:	06e6ff63          	bgeu	a3,a4,62fc1a20 <Clock_Get_AUPLL_Output+0x114>
62fc19a6:	e837c737          	lui	a4,0xe837c
62fc19aa:	e4070713          	addi	a4,a4,-448 # e837be40 <__psram_limit+0x3ff7be40>
62fc19ae:	001e86b7          	lui	a3,0x1e8
62fc19b2:	973e                	add	a4,a4,a5
62fc19b4:	48068693          	addi	a3,a3,1152 # 1e8480 <remain_wifi_ram+0x1c8480>
62fc19b8:	06e6f963          	bgeu	a3,a4,62fc1a2a <Clock_Get_AUPLL_Output+0x11e>
62fc19bc:	e92be737          	lui	a4,0xe92be
62fc19c0:	24070713          	addi	a4,a4,576 # e92be240 <__psram_limit+0x40ebe240>
62fc19c4:	97ba                	add	a5,a5,a4
62fc19c6:	4501                	li	a0,0
62fc19c8:	f8f6e6e3          	bltu	a3,a5,62fc1954 <Clock_Get_AUPLL_Output+0x48>
62fc19cc:	16e36537          	lui	a0,0x16e36
62fc19d0:	4791                	li	a5,4
62fc19d2:	06f48c63          	beq	s1,a5,62fc1a4a <Clock_Get_AUPLL_Output+0x13e>
62fc19d6:	0497ef63          	bltu	a5,s1,62fc1a34 <Clock_Get_AUPLL_Output+0x128>
62fc19da:	4789                	li	a5,2
62fc19dc:	06f48263          	beq	s1,a5,62fc1a40 <Clock_Get_AUPLL_Output+0x134>
62fc19e0:	478d                	li	a5,3
62fc19e2:	04f48c63          	beq	s1,a5,62fc1a3a <Clock_Get_AUPLL_Output+0x12e>
62fc19e6:	4785                	li	a5,1
62fc19e8:	f6f496e3          	bne	s1,a5,62fc1954 <Clock_Get_AUPLL_Output+0x48>
62fc19ec:	8105                	srli	a0,a0,0x1
62fc19ee:	b79d                	j	62fc1954 <Clock_Get_AUPLL_Output+0x48>
62fc19f0:	6725                	lui	a4,0x9
62fc19f2:	60070713          	addi	a4,a4,1536 # 9600 <wifi_ram_max_size+0x1600>
62fc19f6:	02e787b3          	mul	a5,a5,a4
62fc19fa:	0fa00713          	li	a4,250
62fc19fe:	83ad                	srli	a5,a5,0xb
62fc1a00:	bfbd                	j	62fc197e <Clock_Get_AUPLL_Output+0x72>
62fc1a02:	6729                	lui	a4,0xa
62fc1a04:	c4070713          	addi	a4,a4,-960 # 9c40 <wifi_ram_max_size+0x1c40>
62fc1a08:	b7fd                	j	62fc19f6 <Clock_Get_AUPLL_Output+0xea>
62fc1a0a:	6719                	lui	a4,0x6
62fc1a0c:	59070713          	addi	a4,a4,1424 # 6590 <HeapMinSize+0x5590>
62fc1a10:	b795                	j	62fc1974 <Clock_Get_AUPLL_Output+0x68>
62fc1a12:	6721                	lui	a4,0x8
62fc1a14:	d0070713          	addi	a4,a4,-768 # 7d00 <HeapMinSize+0x6d00>
62fc1a18:	bff9                	j	62fc19f6 <Clock_Get_AUPLL_Output+0xea>
62fc1a1a:	1d4c0537          	lui	a0,0x1d4c0
62fc1a1e:	bf4d                	j	62fc19d0 <Clock_Get_AUPLL_Output+0xc4>
62fc1a20:	1aea9537          	lui	a0,0x1aea9
62fc1a24:	06050513          	addi	a0,a0,96 # 1aea9060 <remain_wifi_ram+0x1ae89060>
62fc1a28:	b765                	j	62fc19d0 <Clock_Get_AUPLL_Output+0xc4>
62fc1a2a:	17d78537          	lui	a0,0x17d78
62fc1a2e:	40050513          	addi	a0,a0,1024 # 17d78400 <remain_wifi_ram+0x17d58400>
62fc1a32:	bf79                	j	62fc19d0 <Clock_Get_AUPLL_Output+0xc4>
62fc1a34:	4795                	li	a5,5
62fc1a36:	00f49c63          	bne	s1,a5,62fc1a4e <Clock_Get_AUPLL_Output+0x142>
62fc1a3a:	02955533          	divu	a0,a0,s1
62fc1a3e:	bf19                	j	62fc1954 <Clock_Get_AUPLL_Output+0x48>
62fc1a40:	0506                	slli	a0,a0,0x1
62fc1a42:	4795                	li	a5,5
62fc1a44:	02f55533          	divu	a0,a0,a5
62fc1a48:	b731                	j	62fc1954 <Clock_Get_AUPLL_Output+0x48>
62fc1a4a:	8109                	srli	a0,a0,0x2
62fc1a4c:	b721                	j	62fc1954 <Clock_Get_AUPLL_Output+0x48>
62fc1a4e:	4799                	li	a5,6
62fc1a50:	bfd5                	j	62fc1a44 <Clock_Get_AUPLL_Output+0x138>

62fc1a52 <Clock_Get_Audio_PLL_Output>:
62fc1a52:	1141                	addi	sp,sp,-16
62fc1a54:	200087b7          	lui	a5,0x20008
62fc1a58:	c422                	sw	s0,8(sp)
62fc1a5a:	7547a403          	lw	s0,1876(a5) # 20008754 <remain_wifi_ram+0x1ffe8754>
62fc1a5e:	4501                	li	a0,0
62fc1a60:	c606                	sw	ra,12(sp)
62fc1a62:	07f47413          	andi	s0,s0,127
62fc1a66:	355d                	jal	62fc190c <Clock_Get_AUPLL_Output>
62fc1a68:	02855533          	divu	a0,a0,s0
62fc1a6c:	40b2                	lw	ra,12(sp)
62fc1a6e:	4422                	lw	s0,8(sp)
62fc1a70:	0141                	addi	sp,sp,16
62fc1a72:	8082                	ret

62fc1a74 <Clock_160M_Clk_Mux_Output>:
62fc1a74:	c10d                	beqz	a0,62fc1a96 <Clock_160M_Clk_Mux_Output+0x22>
62fc1a76:	4785                	li	a5,1
62fc1a78:	00f51463          	bne	a0,a5,62fc1a80 <Clock_160M_Clk_Mux_Output+0xc>
62fc1a7c:	450d                	li	a0,3
62fc1a7e:	b579                	j	62fc190c <Clock_Get_AUPLL_Output>
62fc1a80:	4789                	li	a5,2
62fc1a82:	00f51463          	bne	a0,a5,62fc1a8a <Clock_160M_Clk_Mux_Output+0x16>
62fc1a86:	4505                	li	a0,1
62fc1a88:	bfdd                	j	62fc1a7e <Clock_160M_Clk_Mux_Output+0xa>
62fc1a8a:	470d                	li	a4,3
62fc1a8c:	4781                	li	a5,0
62fc1a8e:	00e51863          	bne	a0,a4,62fc1a9e <Clock_160M_Clk_Mux_Output+0x2a>
62fc1a92:	4509                	li	a0,2
62fc1a94:	b7ed                	j	62fc1a7e <Clock_160M_Clk_Mux_Output+0xa>
62fc1a96:	098977b7          	lui	a5,0x9897
62fc1a9a:	80078793          	addi	a5,a5,-2048 # 9896800 <remain_wifi_ram+0x9876800>
62fc1a9e:	853e                	mv	a0,a5
62fc1aa0:	8082                	ret

62fc1aa2 <Clock_Xtal_Output>:
62fc1aa2:	1101                	addi	sp,sp,-32
62fc1aa4:	00f10513          	addi	a0,sp,15
62fc1aa8:	ce06                	sw	ra,28(sp)
62fc1aaa:	000107a3          	sb	zero,15(sp)
62fc1aae:	a72ff0ef          	jal	ra,62fc0d20 <HBN_Get_Xtal_Type>
62fc1ab2:	ed19                	bnez	a0,62fc1ad0 <Clock_Xtal_Output+0x2e>
62fc1ab4:	00f14703          	lbu	a4,15(sp)
62fc1ab8:	4799                	li	a5,6
62fc1aba:	00e7e863          	bltu	a5,a4,62fc1aca <Clock_Xtal_Output+0x28>
62fc1abe:	a00097b7          	lui	a5,0xa0009
62fc1ac2:	3d478793          	addi	a5,a5,980 # a00093d4 <__psram_limit+0xf7c093d4>
62fc1ac6:	44e7c50b          	lrw	a0,a5,a4,2
62fc1aca:	40f2                	lw	ra,28(sp)
62fc1acc:	6105                	addi	sp,sp,32
62fc1ace:	8082                	ret
62fc1ad0:	02626537          	lui	a0,0x2626
62fc1ad4:	a0050513          	addi	a0,a0,-1536 # 2625a00 <remain_wifi_ram+0x2605a00>
62fc1ad8:	bfcd                	j	62fc1aca <Clock_Xtal_Output+0x28>

62fc1ada <Clock_F32k_Mux_Output>:
62fc1ada:	200007b7          	lui	a5,0x20000
62fc1ade:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
62fc1ae2:	4709                	li	a4,2
62fc1ae4:	02a77e63          	bgeu	a4,a0,62fc1b20 <Clock_F32k_Mux_Output+0x46>
62fc1ae8:	6505                	lui	a0,0x1
62fc1aea:	8d7d                	and	a0,a0,a5
62fc1aec:	cd05                	beqz	a0,62fc1b24 <Clock_F32k_Mux_Output+0x4a>
62fc1aee:	1141                	addi	sp,sp,-16
62fc1af0:	c422                	sw	s0,8(sp)
62fc1af2:	c606                	sw	ra,12(sp)
62fc1af4:	7ff7f413          	andi	s0,a5,2047
62fc1af8:	75c7b78b          	extu	a5,a5,29,28
62fc1afc:	eb99                	bnez	a5,62fc1b12 <Clock_F32k_Mux_Output+0x38>
62fc1afe:	01e85537          	lui	a0,0x1e85
62fc1b02:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc1b06:	02855533          	divu	a0,a0,s0
62fc1b0a:	40b2                	lw	ra,12(sp)
62fc1b0c:	4422                	lw	s0,8(sp)
62fc1b0e:	0141                	addi	sp,sp,16
62fc1b10:	8082                	ret
62fc1b12:	4705                	li	a4,1
62fc1b14:	00e79463          	bne	a5,a4,62fc1b1c <Clock_F32k_Mux_Output+0x42>
62fc1b18:	3769                	jal	62fc1aa2 <Clock_Xtal_Output>
62fc1b1a:	b7f5                	j	62fc1b06 <Clock_F32k_Mux_Output+0x2c>
62fc1b1c:	3f1d                	jal	62fc1a52 <Clock_Get_Audio_PLL_Output>
62fc1b1e:	b7e5                	j	62fc1b06 <Clock_F32k_Mux_Output+0x2c>
62fc1b20:	6521                	lui	a0,0x8
62fc1b22:	8082                	ret
62fc1b24:	8082                	ret

62fc1b26 <Clock_MCU_Root_Clk_Mux_Output>:
62fc1b26:	e519                	bnez	a0,62fc1b34 <Clock_MCU_Root_Clk_Mux_Output+0xe>
62fc1b28:	2000f7b7          	lui	a5,0x2000f
62fc1b2c:	5b9c                	lw	a5,48(a5)
62fc1b2e:	8b85                	andi	a5,a5,1
62fc1b30:	cb8d                	beqz	a5,62fc1b62 <Clock_MCU_Root_Clk_Mux_Output+0x3c>
62fc1b32:	bf85                	j	62fc1aa2 <Clock_Xtal_Output>
62fc1b34:	4685                	li	a3,1
62fc1b36:	4781                	li	a5,0
62fc1b38:	02d51363          	bne	a0,a3,62fc1b5e <Clock_MCU_Root_Clk_Mux_Output+0x38>
62fc1b3c:	2000e7b7          	lui	a5,0x2000e
62fc1b40:	1147a783          	lw	a5,276(a5) # 2000e114 <remain_wifi_ram+0x1ffee114>
62fc1b44:	1447b78b          	extu	a5,a5,5,4
62fc1b48:	e391                	bnez	a5,62fc1b4c <Clock_MCU_Root_Clk_Mux_Output+0x26>
62fc1b4a:	b3c9                	j	62fc190c <Clock_Get_AUPLL_Output>
62fc1b4c:	00a79463          	bne	a5,a0,62fc1b54 <Clock_MCU_Root_Clk_Mux_Output+0x2e>
62fc1b50:	4501                	li	a0,0
62fc1b52:	bfe5                	j	62fc1b4a <Clock_MCU_Root_Clk_Mux_Output+0x24>
62fc1b54:	4709                	li	a4,2
62fc1b56:	00e78b63          	beq	a5,a4,62fc1b6c <Clock_MCU_Root_Clk_Mux_Output+0x46>
62fc1b5a:	1312d7b7          	lui	a5,0x1312d
62fc1b5e:	853e                	mv	a0,a5
62fc1b60:	8082                	ret
62fc1b62:	01e857b7          	lui	a5,0x1e85
62fc1b66:	80078793          	addi	a5,a5,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc1b6a:	bfd5                	j	62fc1b5e <Clock_MCU_Root_Clk_Mux_Output+0x38>
62fc1b6c:	0e4e27b7          	lui	a5,0xe4e2
62fc1b70:	c0078793          	addi	a5,a5,-1024 # e4e1c00 <remain_wifi_ram+0xe4c1c00>
62fc1b74:	b7ed                	j	62fc1b5e <Clock_MCU_Root_Clk_Mux_Output+0x38>

62fc1b76 <Clock_System_Clock_Get>:
62fc1b76:	4791                	li	a5,4
62fc1b78:	06f50a63          	beq	a0,a5,62fc1bec <Clock_System_Clock_Get+0x76>
62fc1b7c:	00a7ef63          	bltu	a5,a0,62fc1b9a <Clock_System_Clock_Get+0x24>
62fc1b80:	1141                	addi	sp,sp,-16
62fc1b82:	c606                	sw	ra,12(sp)
62fc1b84:	4785                	li	a5,1
62fc1b86:	02f50a63          	beq	a0,a5,62fc1bba <Clock_System_Clock_Get+0x44>
62fc1b8a:	478d                	li	a5,3
62fc1b8c:	04f50763          	beq	a0,a5,62fc1bda <Clock_System_Clock_Get+0x64>
62fc1b90:	cd09                	beqz	a0,62fc1baa <Clock_System_Clock_Get+0x34>
62fc1b92:	4501                	li	a0,0
62fc1b94:	40b2                	lw	ra,12(sp)
62fc1b96:	0141                	addi	sp,sp,16
62fc1b98:	8082                	ret
62fc1b9a:	4795                	li	a5,5
62fc1b9c:	04f50e63          	beq	a0,a5,62fc1bf8 <Clock_System_Clock_Get+0x82>
62fc1ba0:	4799                	li	a5,6
62fc1ba2:	06f50063          	beq	a0,a5,62fc1c02 <Clock_System_Clock_Get+0x8c>
62fc1ba6:	4501                	li	a0,0
62fc1ba8:	8082                	ret
62fc1baa:	2000f7b7          	lui	a5,0x2000f
62fc1bae:	5b88                	lw	a0,48(a5)
62fc1bb0:	40b2                	lw	ra,12(sp)
62fc1bb2:	0415350b          	extu	a0,a0,1,1
62fc1bb6:	0141                	addi	sp,sp,16
62fc1bb8:	b7bd                	j	62fc1b26 <Clock_MCU_Root_Clk_Mux_Output>
62fc1bba:	2000f7b7          	lui	a5,0x2000f
62fc1bbe:	5b88                	lw	a0,48(a5)
62fc1bc0:	0415350b          	extu	a0,a0,1,1
62fc1bc4:	378d                	jal	62fc1b26 <Clock_MCU_Root_Clk_Mux_Output>
62fc1bc6:	200007b7          	lui	a5,0x20000
62fc1bca:	0907a783          	lw	a5,144(a5) # 20000090 <remain_wifi_ram+0x1ffe0090>
62fc1bce:	3c87b78b          	extu	a5,a5,15,8
62fc1bd2:	0785                	addi	a5,a5,1
62fc1bd4:	02f55533          	divu	a0,a0,a5
62fc1bd8:	bf75                	j	62fc1b94 <Clock_System_Clock_Get+0x1e>
62fc1bda:	4505                	li	a0,1
62fc1bdc:	3f69                	jal	62fc1b76 <Clock_System_Clock_Get>
62fc1bde:	200007b7          	lui	a5,0x20000
62fc1be2:	0907a783          	lw	a5,144(a5) # 20000090 <remain_wifi_ram+0x1ffe0090>
62fc1be6:	5d07b78b          	extu	a5,a5,23,16
62fc1bea:	b7e5                	j	62fc1bd2 <Clock_System_Clock_Get+0x5c>
62fc1bec:	2000f7b7          	lui	a5,0x2000f
62fc1bf0:	5b88                	lw	a0,48(a5)
62fc1bf2:	1035350b          	extu	a0,a0,4,3
62fc1bf6:	b5d5                	j	62fc1ada <Clock_F32k_Mux_Output>
62fc1bf8:	2000f7b7          	lui	a5,0x2000f
62fc1bfc:	5b9c                	lw	a5,48(a5)
62fc1bfe:	8b85                	andi	a5,a5,1
62fc1c00:	c391                	beqz	a5,62fc1c04 <Clock_System_Clock_Get+0x8e>
62fc1c02:	b545                	j	62fc1aa2 <Clock_Xtal_Output>
62fc1c04:	01e85537          	lui	a0,0x1e85
62fc1c08:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc1c0c:	8082                	ret

62fc1c0e <CPU_Set_MTimer_CLK>:
62fc1c0e:	200097b7          	lui	a5,0x20009
62fc1c12:	4bd8                	lw	a4,20(a5)
62fc1c14:	e00006b7          	lui	a3,0xe0000
62fc1c18:	16fd                	addi	a3,a3,-1
62fc1c1a:	8f75                	and	a4,a4,a3
62fc1c1c:	05f6                	slli	a1,a1,0x1d
62fc1c1e:	8dd9                	or	a1,a1,a4
62fc1c20:	cbcc                	sw	a1,20(a5)
62fc1c22:	4bd4                	lw	a3,20(a5)
62fc1c24:	800005b7          	lui	a1,0x80000
62fc1c28:	fff5c713          	not	a4,a1
62fc1c2c:	8ef9                	and	a3,a3,a4
62fc1c2e:	cbd4                	sw	a3,20(a5)
62fc1c30:	4bd4                	lw	a3,20(a5)
62fc1c32:	c006f693          	andi	a3,a3,-1024
62fc1c36:	8e55                	or	a2,a2,a3
62fc1c38:	cbd0                	sw	a2,20(a5)
62fc1c3a:	4bdc                	lw	a5,20(a5)
62fc1c3c:	8f7d                	and	a4,a4,a5
62fc1c3e:	c119                	beqz	a0,62fc1c44 <CPU_Set_MTimer_CLK+0x36>
62fc1c40:	00b7e733          	or	a4,a5,a1
62fc1c44:	200097b7          	lui	a5,0x20009
62fc1c48:	cbd8                	sw	a4,20(a5)
62fc1c4a:	4501                	li	a0,0
62fc1c4c:	8082                	ret

62fc1c4e <system_clock_init>:
62fc1c4e:	1141                	addi	sp,sp,-16
62fc1c50:	458d                	li	a1,3
62fc1c52:	4511                	li	a0,4
62fc1c54:	c606                	sw	ra,12(sp)
62fc1c56:	866ff0ef          	jal	ra,62fc0cbc <GLB_Power_On_XTAL_And_PLL_CLK>
62fc1c5a:	4515                	li	a0,5
62fc1c5c:	888ff0ef          	jal	ra,62fc0ce4 <GLB_Set_MCU_System_CLK>
62fc1c60:	4505                	li	a0,1
62fc1c62:	8d2ff0ef          	jal	ra,62fc0d34 <HBN_Set_MCU_XCLK_Sel>
62fc1c66:	4515                	li	a0,5
62fc1c68:	3739                	jal	62fc1b76 <Clock_System_Clock_Get>
62fc1c6a:	000f4637          	lui	a2,0xf4
62fc1c6e:	24060613          	addi	a2,a2,576 # f4240 <remain_wifi_ram+0xd4240>
62fc1c72:	02c55633          	divu	a2,a0,a2
62fc1c76:	40b2                	lw	ra,12(sp)
62fc1c78:	4581                	li	a1,0
62fc1c7a:	4505                	li	a0,1
62fc1c7c:	0141                	addi	sp,sp,16
62fc1c7e:	167d                	addi	a2,a2,-1
62fc1c80:	3c06360b          	extu	a2,a2,15,0
62fc1c84:	b769                	j	62fc1c0e <CPU_Set_MTimer_CLK>
	...
