
/home/sai/QCCSDK-QCC74x/examples/peripherals/gpio/gpio_input_output/build/build_out/gpio_input_output_qcc743.elf:     file format elf32-littleriscv


Disassembly of section .init:

a0000000 <__start>:
a0000000:	c2fc2197          	auipc	gp,0xc2fc2
a0000004:	1e818193          	addi	gp,gp,488 # 62fc21e8 <__global_pointer$>
a0000008:	30047073          	csrci	mstatus,8
a000000c:	20056537          	lui	a0,0x20056
a0000010:	0b052583          	lw	a1,176(a0) # 200560b0 <remain_wifi_ram+0x200360b0>
a0000014:	40280537          	lui	a0,0x40280
a0000018:	7641                	lui	a2,0xffff0
a000001a:	8df1                	and	a1,a1,a2
a000001c:	00b50363          	beq	a0,a1,a0000022 <__start+0x22>
a0000020:	a001                	j	a0000020 <__start+0x20>
a0000022:	00006517          	auipc	a0,0x6
a0000026:	35e50513          	addi	a0,a0,862 # a0006380 <trap>
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
a000004c:	ce810113          	addi	sp,sp,-792 # 62fc2d30 <gpio>
a0000050:	34011073          	csrw	mscratch,sp
a0000054:	56e060ef          	jal	ra,a00065c2 <SystemInit>
a0000058:	464060ef          	jal	ra,a00064bc <start_load>
a000005c:	72c060ef          	jal	ra,a0006788 <System_Post_Init>
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
a0000d12:	38070713          	addi	a4,a4,896 # a0008380 <__psram_limit+0xf7c08380>
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
a0000f4e:	38070713          	addi	a4,a4,896 # a0008380 <__psram_limit+0xf7c08380>
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
a00010ba:	38068693          	addi	a3,a3,896 # a0008380 <__psram_limit+0xf7c08380>
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
a00012ac:	38070713          	addi	a4,a4,896 # a0008380 <__psram_limit+0xf7c08380>
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
a0001412:	38068693          	addi	a3,a3,896 # a0008380 <__psram_limit+0xf7c08380>
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
a0001632:	38070713          	addi	a4,a4,896 # a0008380 <__psram_limit+0xf7c08380>
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
a0001770:	38070713          	addi	a4,a4,896 # a0008380 <__psram_limit+0xf7c08380>
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
a0001948:	38070713          	addi	a4,a4,896 # a0008380 <__psram_limit+0xf7c08380>
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
a000246c:	30850513          	addi	a0,a0,776 # a0008308 <__psram_limit+0xf7c08308>
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
a0002cf2:	34460613          	addi	a2,a2,836 # a0008344 <__psram_limit+0xf7c08344>
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
a0003e26:	38070793          	addi	a5,a4,896 # a0008380 <__psram_limit+0xf7c08380>
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
a0003e44:	1141                	addi	sp,sp,-16
a0003e46:	c606                	sw	ra,12(sp)
a0003e48:	c422                	sw	s0,8(sp)
a0003e4a:	c226                	sw	s1,4(sp)
a0003e4c:	228030ef          	jal	ra,a0007074 <board_init>
a0003e50:	a0007537          	lui	a0,0xa0007
a0003e54:	62fc3437          	lui	s0,0x62fc3
a0003e58:	3d450513          	addi	a0,a0,980 # a00073d4 <__psram_limit+0xf7c073d4>
a0003e5c:	376020ef          	jal	ra,a00061d2 <qcc74x_device_get_by_name>
a0003e60:	d3040493          	addi	s1,s0,-720 # 62fc2d30 <gpio>
a0003e64:	c088                	sw	a0,0(s1)
a0003e66:	a0007537          	lui	a0,0xa0007
a0003e6a:	3dc50513          	addi	a0,a0,988 # a00073dc <__psram_limit+0xf7c073dc>
a0003e6e:	131010ef          	jal	ra,a000579e <printf>
a0003e72:	4088                	lw	a0,0(s1)
a0003e74:	6605                	lui	a2,0x1
a0003e76:	a4060613          	addi	a2,a2,-1472 # a40 <__RFTLV_SIZE_HOLE+0x240>
a0003e7a:	4581                	li	a1,0
a0003e7c:	733010ef          	jal	ra,a0005dae <qcc74x_gpio_init>
a0003e80:	d3040413          	addi	s0,s0,-720
a0003e84:	4008                	lw	a0,0(s0)
a0003e86:	4581                	li	a1,0
a0003e88:	7f5010ef          	jal	ra,a0005e7c <qcc74x_gpio_set>
a0003e8c:	7d000513          	li	a0,2000
a0003e90:	c2fbd097          	auipc	ra,0xc2fbd
a0003e94:	afa080e7          	jalr	-1286(ra) # 62fc098a <qcc74x_mtimer_delay_ms>
a0003e98:	4008                	lw	a0,0(s0)
a0003e9a:	4581                	li	a1,0
a0003e9c:	012020ef          	jal	ra,a0005eae <qcc74x_gpio_reset>
a0003ea0:	7d000513          	li	a0,2000
a0003ea4:	c2fbd097          	auipc	ra,0xc2fbd
a0003ea8:	ae6080e7          	jalr	-1306(ra) # 62fc098a <qcc74x_mtimer_delay_ms>
a0003eac:	bfe1                	j	a0003e84 <main+0x40>

a0003eae <strcmp>:
a0003eae:	4701                	li	a4,0
a0003eb0:	80e5468b          	lrbu	a3,a0,a4,0
a0003eb4:	80e5c78b          	lrbu	a5,a1,a4,0
a0003eb8:	40f687b3          	sub	a5,a3,a5
a0003ebc:	1c07a78b          	ext	a5,a5,7,0
a0003ec0:	e399                	bnez	a5,a0003ec6 <strcmp+0x18>
a0003ec2:	0705                	addi	a4,a4,1
a0003ec4:	f6f5                	bnez	a3,a0003eb0 <strcmp+0x2>
a0003ec6:	853e                	mv	a0,a5
a0003ec8:	8082                	ret

a0003eca <memcpy>:
a0003eca:	471d                	li	a4,7
a0003ecc:	87aa                	mv	a5,a0
a0003ece:	00c506b3          	add	a3,a0,a2
a0003ed2:	08c76463          	bltu	a4,a2,a0003f5a <memcpy+0x90>
a0003ed6:	4791                	li	a5,4
a0003ed8:	06f60963          	beq	a2,a5,a0003f4a <memcpy+0x80>
a0003edc:	00c7ed63          	bltu	a5,a2,a0003ef6 <memcpy+0x2c>
a0003ee0:	4789                	li	a5,2
a0003ee2:	06f60663          	beq	a2,a5,a0003f4e <memcpy+0x84>
a0003ee6:	470d                	li	a4,3
a0003ee8:	87aa                	mv	a5,a0
a0003eea:	04e60163          	beq	a2,a4,a0003f2c <memcpy+0x62>
a0003eee:	4705                	li	a4,1
a0003ef0:	04e60663          	beq	a2,a4,a0003f3c <memcpy+0x72>
a0003ef4:	8082                	ret
a0003ef6:	4799                	li	a5,6
a0003ef8:	04f60763          	beq	a2,a5,a0003f46 <memcpy+0x7c>
a0003efc:	00e60763          	beq	a2,a4,a0003f0a <memcpy+0x40>
a0003f00:	4715                	li	a4,5
a0003f02:	87aa                	mv	a5,a0
a0003f04:	00e60c63          	beq	a2,a4,a0003f1c <memcpy+0x52>
a0003f08:	8082                	ret
a0003f0a:	9815c70b          	lbuia	a4,(a1),1,0
a0003f0e:	87aa                	mv	a5,a0
a0003f10:	1817d70b          	sbia	a4,(a5),1,0
a0003f14:	9815c70b          	lbuia	a4,(a1),1,0
a0003f18:	1817d70b          	sbia	a4,(a5),1,0
a0003f1c:	9815c70b          	lbuia	a4,(a1),1,0
a0003f20:	1817d70b          	sbia	a4,(a5),1,0
a0003f24:	9815c70b          	lbuia	a4,(a1),1,0
a0003f28:	1817d70b          	sbia	a4,(a5),1,0
a0003f2c:	9815c70b          	lbuia	a4,(a1),1,0
a0003f30:	1817d70b          	sbia	a4,(a5),1,0
a0003f34:	9815c70b          	lbuia	a4,(a1),1,0
a0003f38:	1817d70b          	sbia	a4,(a5),1,0
a0003f3c:	0005c703          	lbu	a4,0(a1) # 80000000 <__psram_limit+0xd7c00000>
a0003f40:	00e78023          	sb	a4,0(a5) # 10000 <wifi_ram_max_size+0x8000>
a0003f44:	8082                	ret
a0003f46:	87aa                	mv	a5,a0
a0003f48:	b7f1                	j	a0003f14 <memcpy+0x4a>
a0003f4a:	87aa                	mv	a5,a0
a0003f4c:	bfe1                	j	a0003f24 <memcpy+0x5a>
a0003f4e:	87aa                	mv	a5,a0
a0003f50:	b7d5                	j	a0003f34 <memcpy+0x6a>
a0003f52:	9815c70b          	lbuia	a4,(a1),1,0
a0003f56:	1817d70b          	sbia	a4,(a5),1,0
a0003f5a:	0037f713          	andi	a4,a5,3
a0003f5e:	40f68633          	sub	a2,a3,a5
a0003f62:	fb65                	bnez	a4,a0003f52 <memcpy+0x88>
a0003f64:	0035f693          	andi	a3,a1,3
a0003f68:	4809                	li	a6,2
a0003f6a:	00265713          	srli	a4,a2,0x2
a0003f6e:	1b068d63          	beq	a3,a6,a0004128 <memcpy+0x25e>
a0003f72:	480d                	li	a6,3
a0003f74:	2b068863          	beq	a3,a6,a0004224 <memcpy+0x35a>
a0003f78:	4805                	li	a6,1
a0003f7a:	05069563          	bne	a3,a6,a0003fc4 <memcpy+0xfa>
a0003f7e:	99f1                	andi	a1,a1,-4
a0003f80:	5845c80b          	lwia	a6,(a1),4,0
a0003f84:	9bf1                	andi	a5,a5,-4
a0003f86:	00777693          	andi	a3,a4,7
a0003f8a:	e2f9                	bnez	a3,a0004050 <memcpy+0x186>
a0003f8c:	830d                	srli	a4,a4,0x3
a0003f8e:	0716                	slli	a4,a4,0x5
a0003f90:	00e58e33          	add	t3,a1,a4
a0003f94:	86be                	mv	a3,a5
a0003f96:	0dc59963          	bne	a1,t3,a0004068 <memcpy+0x19e>
a0003f9a:	8a0d                	andi	a2,a2,3
a0003f9c:	4689                	li	a3,2
a0003f9e:	97ba                	add	a5,a5,a4
a0003fa0:	ffd58713          	addi	a4,a1,-3
a0003fa4:	16d60d63          	beq	a2,a3,a000411e <memcpy+0x254>
a0003fa8:	468d                	li	a3,3
a0003faa:	16d60463          	beq	a2,a3,a0004112 <memcpy+0x248>
a0003fae:	4685                	li	a3,1
a0003fb0:	f8d61ae3          	bne	a2,a3,a0003f44 <memcpy+0x7a>
a0003fb4:	00074703          	lbu	a4,0(a4) # 1000000 <remain_wifi_ram+0xfe0000>
a0003fb8:	b761                	j	a0003f40 <memcpy+0x76>
a0003fba:	5845c68b          	lwia	a3,(a1),4,0
a0003fbe:	177d                	addi	a4,a4,-1
a0003fc0:	5847d68b          	swia	a3,(a5),4,0
a0003fc4:	00777693          	andi	a3,a4,7
a0003fc8:	faed                	bnez	a3,a0003fba <memcpy+0xf0>
a0003fca:	830d                	srli	a4,a4,0x3
a0003fcc:	0716                	slli	a4,a4,0x5
a0003fce:	00e586b3          	add	a3,a1,a4
a0003fd2:	883e                	mv	a6,a5
a0003fd4:	02d59063          	bne	a1,a3,a0003ff4 <memcpy+0x12a>
a0003fd8:	97ba                	add	a5,a5,a4
a0003fda:	8a0d                	andi	a2,a2,3
a0003fdc:	4709                	li	a4,2
a0003fde:	06e60463          	beq	a2,a4,a0004046 <memcpy+0x17c>
a0003fe2:	470d                	li	a4,3
a0003fe4:	04e60d63          	beq	a2,a4,a000403e <memcpy+0x174>
a0003fe8:	4705                	li	a4,1
a0003fea:	f4e61de3          	bne	a2,a4,a0003f44 <memcpy+0x7a>
a0003fee:	0006c703          	lbu	a4,0(a3) # ff800000 <__psram_limit+0x57400000>
a0003ff2:	b7b9                	j	a0003f40 <memcpy+0x76>
a0003ff4:	0005a883          	lw	a7,0(a1)
a0003ff8:	02080813          	addi	a6,a6,32
a0003ffc:	ff182023          	sw	a7,-32(a6)
a0004000:	0045a883          	lw	a7,4(a1)
a0004004:	ff182223          	sw	a7,-28(a6)
a0004008:	0085a883          	lw	a7,8(a1)
a000400c:	ff182423          	sw	a7,-24(a6)
a0004010:	00c5a883          	lw	a7,12(a1)
a0004014:	ff182623          	sw	a7,-20(a6)
a0004018:	0105a883          	lw	a7,16(a1)
a000401c:	ff182823          	sw	a7,-16(a6)
a0004020:	0145a883          	lw	a7,20(a1)
a0004024:	ff182a23          	sw	a7,-12(a6)
a0004028:	0185a883          	lw	a7,24(a1)
a000402c:	ff182c23          	sw	a7,-8(a6)
a0004030:	01c5a883          	lw	a7,28(a1)
a0004034:	02058593          	addi	a1,a1,32
a0004038:	ff182e23          	sw	a7,-4(a6)
a000403c:	bf61                	j	a0003fd4 <memcpy+0x10a>
a000403e:	9816c70b          	lbuia	a4,(a3),1,0
a0004042:	1817d70b          	sbia	a4,(a5),1,0
a0004046:	9816c70b          	lbuia	a4,(a3),1,0
a000404a:	1817d70b          	sbia	a4,(a5),1,0
a000404e:	b745                	j	a0003fee <memcpy+0x124>
a0004050:	00885893          	srli	a7,a6,0x8
a0004054:	5845c80b          	lwia	a6,(a1),4,0
a0004058:	177d                	addi	a4,a4,-1
a000405a:	01881693          	slli	a3,a6,0x18
a000405e:	0116e6b3          	or	a3,a3,a7
a0004062:	5847d68b          	swia	a3,(a5),4,0
a0004066:	b705                	j	a0003f86 <memcpy+0xbc>
a0004068:	0005a883          	lw	a7,0(a1)
a000406c:	00885813          	srli	a6,a6,0x8
a0004070:	01889313          	slli	t1,a7,0x18
a0004074:	01036833          	or	a6,t1,a6
a0004078:	0106a023          	sw	a6,0(a3)
a000407c:	0045a803          	lw	a6,4(a1)
a0004080:	0088d893          	srli	a7,a7,0x8
a0004084:	01881313          	slli	t1,a6,0x18
a0004088:	011368b3          	or	a7,t1,a7
a000408c:	0116a223          	sw	a7,4(a3)
a0004090:	00885893          	srli	a7,a6,0x8
a0004094:	0085a803          	lw	a6,8(a1)
a0004098:	01881313          	slli	t1,a6,0x18
a000409c:	011368b3          	or	a7,t1,a7
a00040a0:	0116a423          	sw	a7,8(a3)
a00040a4:	00885893          	srli	a7,a6,0x8
a00040a8:	00c5a803          	lw	a6,12(a1)
a00040ac:	01881313          	slli	t1,a6,0x18
a00040b0:	011368b3          	or	a7,t1,a7
a00040b4:	0116a623          	sw	a7,12(a3)
a00040b8:	00885893          	srli	a7,a6,0x8
a00040bc:	0105a803          	lw	a6,16(a1)
a00040c0:	01881313          	slli	t1,a6,0x18
a00040c4:	011368b3          	or	a7,t1,a7
a00040c8:	0116a823          	sw	a7,16(a3)
a00040cc:	00885893          	srli	a7,a6,0x8
a00040d0:	0145a803          	lw	a6,20(a1)
a00040d4:	01881313          	slli	t1,a6,0x18
a00040d8:	011368b3          	or	a7,t1,a7
a00040dc:	0116aa23          	sw	a7,20(a3)
a00040e0:	00885893          	srli	a7,a6,0x8
a00040e4:	0185a803          	lw	a6,24(a1)
a00040e8:	01881313          	slli	t1,a6,0x18
a00040ec:	011368b3          	or	a7,t1,a7
a00040f0:	0116ac23          	sw	a7,24(a3)
a00040f4:	00885893          	srli	a7,a6,0x8
a00040f8:	01c5a803          	lw	a6,28(a1)
a00040fc:	02058593          	addi	a1,a1,32
a0004100:	01881313          	slli	t1,a6,0x18
a0004104:	011368b3          	or	a7,t1,a7
a0004108:	0116ae23          	sw	a7,28(a3)
a000410c:	02068693          	addi	a3,a3,32
a0004110:	b559                	j	a0003f96 <memcpy+0xcc>
a0004112:	ffd5c683          	lbu	a3,-3(a1)
a0004116:	ffe58713          	addi	a4,a1,-2
a000411a:	1817d68b          	sbia	a3,(a5),1,0
a000411e:	9817468b          	lbuia	a3,(a4),1,0
a0004122:	1817d68b          	sbia	a3,(a5),1,0
a0004126:	b579                	j	a0003fb4 <memcpy+0xea>
a0004128:	99f1                	andi	a1,a1,-4
a000412a:	5845c80b          	lwia	a6,(a1),4,0
a000412e:	9bf1                	andi	a5,a5,-4
a0004130:	00777693          	andi	a3,a4,7
a0004134:	e69d                	bnez	a3,a0004162 <memcpy+0x298>
a0004136:	830d                	srli	a4,a4,0x3
a0004138:	0716                	slli	a4,a4,0x5
a000413a:	00e58e33          	add	t3,a1,a4
a000413e:	86be                	mv	a3,a5
a0004140:	03c59d63          	bne	a1,t3,a000417a <memcpy+0x2b0>
a0004144:	8a0d                	andi	a2,a2,3
a0004146:	4689                	li	a3,2
a0004148:	97ba                	add	a5,a5,a4
a000414a:	ffe58713          	addi	a4,a1,-2
a000414e:	fcd608e3          	beq	a2,a3,a000411e <memcpy+0x254>
a0004152:	468d                	li	a3,3
a0004154:	e4d61de3          	bne	a2,a3,a0003fae <memcpy+0xe4>
a0004158:	ffe5c683          	lbu	a3,-2(a1)
a000415c:	fff58713          	addi	a4,a1,-1
a0004160:	bf6d                	j	a000411a <memcpy+0x250>
a0004162:	01085893          	srli	a7,a6,0x10
a0004166:	5845c80b          	lwia	a6,(a1),4,0
a000416a:	177d                	addi	a4,a4,-1
a000416c:	01081693          	slli	a3,a6,0x10
a0004170:	0116e6b3          	or	a3,a3,a7
a0004174:	5847d68b          	swia	a3,(a5),4,0
a0004178:	bf65                	j	a0004130 <memcpy+0x266>
a000417a:	0005a883          	lw	a7,0(a1)
a000417e:	01085813          	srli	a6,a6,0x10
a0004182:	01089313          	slli	t1,a7,0x10
a0004186:	01036833          	or	a6,t1,a6
a000418a:	0106a023          	sw	a6,0(a3)
a000418e:	0045a803          	lw	a6,4(a1)
a0004192:	0108d893          	srli	a7,a7,0x10
a0004196:	01081313          	slli	t1,a6,0x10
a000419a:	011368b3          	or	a7,t1,a7
a000419e:	0116a223          	sw	a7,4(a3)
a00041a2:	01085893          	srli	a7,a6,0x10
a00041a6:	0085a803          	lw	a6,8(a1)
a00041aa:	01081313          	slli	t1,a6,0x10
a00041ae:	011368b3          	or	a7,t1,a7
a00041b2:	0116a423          	sw	a7,8(a3)
a00041b6:	01085893          	srli	a7,a6,0x10
a00041ba:	00c5a803          	lw	a6,12(a1)
a00041be:	01081313          	slli	t1,a6,0x10
a00041c2:	011368b3          	or	a7,t1,a7
a00041c6:	0116a623          	sw	a7,12(a3)
a00041ca:	01085893          	srli	a7,a6,0x10
a00041ce:	0105a803          	lw	a6,16(a1)
a00041d2:	01081313          	slli	t1,a6,0x10
a00041d6:	011368b3          	or	a7,t1,a7
a00041da:	0116a823          	sw	a7,16(a3)
a00041de:	01085893          	srli	a7,a6,0x10
a00041e2:	0145a803          	lw	a6,20(a1)
a00041e6:	01081313          	slli	t1,a6,0x10
a00041ea:	011368b3          	or	a7,t1,a7
a00041ee:	0116aa23          	sw	a7,20(a3)
a00041f2:	01085893          	srli	a7,a6,0x10
a00041f6:	0185a803          	lw	a6,24(a1)
a00041fa:	01081313          	slli	t1,a6,0x10
a00041fe:	011368b3          	or	a7,t1,a7
a0004202:	0116ac23          	sw	a7,24(a3)
a0004206:	01085893          	srli	a7,a6,0x10
a000420a:	01c5a803          	lw	a6,28(a1)
a000420e:	02058593          	addi	a1,a1,32
a0004212:	01081313          	slli	t1,a6,0x10
a0004216:	011368b3          	or	a7,t1,a7
a000421a:	0116ae23          	sw	a7,28(a3)
a000421e:	02068693          	addi	a3,a3,32
a0004222:	bf39                	j	a0004140 <memcpy+0x276>
a0004224:	99f1                	andi	a1,a1,-4
a0004226:	5845c80b          	lwia	a6,(a1),4,0
a000422a:	9bf1                	andi	a5,a5,-4
a000422c:	00777693          	andi	a3,a4,7
a0004230:	ea85                	bnez	a3,a0004260 <memcpy+0x396>
a0004232:	830d                	srli	a4,a4,0x3
a0004234:	0716                	slli	a4,a4,0x5
a0004236:	00e58e33          	add	t3,a1,a4
a000423a:	86be                	mv	a3,a5
a000423c:	03c59e63          	bne	a1,t3,a0004278 <memcpy+0x3ae>
a0004240:	8a0d                	andi	a2,a2,3
a0004242:	4689                	li	a3,2
a0004244:	97ba                	add	a5,a5,a4
a0004246:	fff58713          	addi	a4,a1,-1
a000424a:	ecd60ae3          	beq	a2,a3,a000411e <memcpy+0x254>
a000424e:	468d                	li	a3,3
a0004250:	d4d61fe3          	bne	a2,a3,a0003fae <memcpy+0xe4>
a0004254:	fff5c703          	lbu	a4,-1(a1)
a0004258:	1817d70b          	sbia	a4,(a5),1,0
a000425c:	872e                	mv	a4,a1
a000425e:	b5c1                	j	a000411e <memcpy+0x254>
a0004260:	01885893          	srli	a7,a6,0x18
a0004264:	5845c80b          	lwia	a6,(a1),4,0
a0004268:	177d                	addi	a4,a4,-1
a000426a:	00881693          	slli	a3,a6,0x8
a000426e:	0116e6b3          	or	a3,a3,a7
a0004272:	5847d68b          	swia	a3,(a5),4,0
a0004276:	bf5d                	j	a000422c <memcpy+0x362>
a0004278:	0005a883          	lw	a7,0(a1)
a000427c:	01885813          	srli	a6,a6,0x18
a0004280:	00889313          	slli	t1,a7,0x8
a0004284:	01036833          	or	a6,t1,a6
a0004288:	0106a023          	sw	a6,0(a3)
a000428c:	0045a803          	lw	a6,4(a1)
a0004290:	0188d893          	srli	a7,a7,0x18
a0004294:	00881313          	slli	t1,a6,0x8
a0004298:	011368b3          	or	a7,t1,a7
a000429c:	0116a223          	sw	a7,4(a3)
a00042a0:	01885893          	srli	a7,a6,0x18
a00042a4:	0085a803          	lw	a6,8(a1)
a00042a8:	00881313          	slli	t1,a6,0x8
a00042ac:	011368b3          	or	a7,t1,a7
a00042b0:	0116a423          	sw	a7,8(a3)
a00042b4:	01885893          	srli	a7,a6,0x18
a00042b8:	00c5a803          	lw	a6,12(a1)
a00042bc:	00881313          	slli	t1,a6,0x8
a00042c0:	011368b3          	or	a7,t1,a7
a00042c4:	0116a623          	sw	a7,12(a3)
a00042c8:	01885893          	srli	a7,a6,0x18
a00042cc:	0105a803          	lw	a6,16(a1)
a00042d0:	00881313          	slli	t1,a6,0x8
a00042d4:	011368b3          	or	a7,t1,a7
a00042d8:	0116a823          	sw	a7,16(a3)
a00042dc:	01885893          	srli	a7,a6,0x18
a00042e0:	0145a803          	lw	a6,20(a1)
a00042e4:	00881313          	slli	t1,a6,0x8
a00042e8:	011368b3          	or	a7,t1,a7
a00042ec:	0116aa23          	sw	a7,20(a3)
a00042f0:	01885893          	srli	a7,a6,0x18
a00042f4:	0185a803          	lw	a6,24(a1)
a00042f8:	00881313          	slli	t1,a6,0x8
a00042fc:	011368b3          	or	a7,t1,a7
a0004300:	0116ac23          	sw	a7,24(a3)
a0004304:	01885893          	srli	a7,a6,0x18
a0004308:	01c5a803          	lw	a6,28(a1)
a000430c:	02058593          	addi	a1,a1,32
a0004310:	00881313          	slli	t1,a6,0x8
a0004314:	011368b3          	or	a7,t1,a7
a0004318:	0116ae23          	sw	a7,28(a3)
a000431c:	02068693          	addi	a3,a3,32
a0004320:	bf31                	j	a000423c <memcpy+0x372>

a0004322 <out_discard>:
a0004322:	8082                	ret

a0004324 <out_rev_>:
a0004324:	7179                	addi	sp,sp,-48
a0004326:	d422                	sw	s0,40(sp)
a0004328:	d226                	sw	s1,36(sp)
a000432a:	d04a                	sw	s2,32(sp)
a000432c:	ce4e                	sw	s3,28(sp)
a000432e:	cc52                	sw	s4,24(sp)
a0004330:	ca56                	sw	s5,20(sp)
a0004332:	c85a                	sw	s6,16(sp)
a0004334:	c65e                	sw	s7,12(sp)
a0004336:	c462                	sw	s8,8(sp)
a0004338:	84be                	mv	s1,a5
a000433a:	d606                	sw	ra,44(sp)
a000433c:	c266                	sw	s9,4(sp)
a000433e:	0038f793          	andi	a5,a7,3
a0004342:	8aaa                	mv	s5,a0
a0004344:	8b2e                	mv	s6,a1
a0004346:	8932                	mv	s2,a2
a0004348:	8bb6                	mv	s7,a3
a000434a:	8c3a                	mv	s8,a4
a000434c:	89c2                	mv	s3,a6
a000434e:	8a46                	mv	s4,a7
a0004350:	8432                	mv	s0,a2
a0004352:	e78d                	bnez	a5,a000437c <out_rev_+0x58>
a0004354:	8426                	mv	s0,s1
a0004356:	40960cb3          	sub	s9,a2,s1
a000435a:	a039                	j	a0004368 <out_rev_+0x44>
a000435c:	86de                	mv	a3,s7
a000435e:	85da                	mv	a1,s6
a0004360:	02000513          	li	a0,32
a0004364:	9a82                	jalr	s5
a0004366:	0405                	addi	s0,s0,1
a0004368:	008c8633          	add	a2,s9,s0
a000436c:	ff3468e3          	bltu	s0,s3,a000435c <out_rev_+0x38>
a0004370:	4401                	li	s0,0
a0004372:	0099e463          	bltu	s3,s1,a000437a <out_rev_+0x56>
a0004376:	40998433          	sub	s0,s3,s1
a000437a:	944a                	add	s0,s0,s2
a000437c:	9426                	add	s0,s0,s1
a000437e:	8522                	mv	a0,s0
a0004380:	40940633          	sub	a2,s0,s1
a0004384:	e485                	bnez	s1,a00043ac <out_rev_+0x88>
a0004386:	002a7a13          	andi	s4,s4,2
a000438a:	41240433          	sub	s0,s0,s2
a000438e:	020a1d63          	bnez	s4,a00043c8 <out_rev_+0xa4>
a0004392:	50b2                	lw	ra,44(sp)
a0004394:	5422                	lw	s0,40(sp)
a0004396:	5492                	lw	s1,36(sp)
a0004398:	5902                	lw	s2,32(sp)
a000439a:	49f2                	lw	s3,28(sp)
a000439c:	4a62                	lw	s4,24(sp)
a000439e:	4ad2                	lw	s5,20(sp)
a00043a0:	4b42                	lw	s6,16(sp)
a00043a2:	4bb2                	lw	s7,12(sp)
a00043a4:	4c22                	lw	s8,8(sp)
a00043a6:	4c92                	lw	s9,4(sp)
a00043a8:	6145                	addi	sp,sp,48
a00043aa:	8082                	ret
a00043ac:	14fd                	addi	s1,s1,-1
a00043ae:	809c450b          	lrbu	a0,s8,s1,0
a00043b2:	86de                	mv	a3,s7
a00043b4:	85da                	mv	a1,s6
a00043b6:	9a82                	jalr	s5
a00043b8:	b7d9                	j	a000437e <out_rev_+0x5a>
a00043ba:	862a                	mv	a2,a0
a00043bc:	86de                	mv	a3,s7
a00043be:	85da                	mv	a1,s6
a00043c0:	02000513          	li	a0,32
a00043c4:	9a82                	jalr	s5
a00043c6:	0405                	addi	s0,s0,1
a00043c8:	00890533          	add	a0,s2,s0
a00043cc:	ff3467e3          	bltu	s0,s3,a00043ba <out_rev_+0x96>
a00043d0:	b7c9                	j	a0004392 <out_rev_+0x6e>

a00043d2 <print_integer>:
a00043d2:	7159                	addi	sp,sp,-112
a00043d4:	d4a2                	sw	s0,104(sp)
a00043d6:	d0ca                	sw	s2,96(sp)
a00043d8:	cece                	sw	s3,92(sp)
a00043da:	ccd2                	sw	s4,88(sp)
a00043dc:	cad6                	sw	s5,84(sp)
a00043de:	c8da                	sw	s6,80(sp)
a00043e0:	c6de                	sw	s7,76(sp)
a00043e2:	d686                	sw	ra,108(sp)
a00043e4:	8bb6                	mv	s7,a3
a00043e6:	d2a6                	sw	s1,100(sp)
a00043e8:	c4e2                	sw	s8,72(sp)
a00043ea:	c2e6                	sw	s9,68(sp)
a00043ec:	c0ea                	sw	s10,64(sp)
a00043ee:	de6e                	sw	s11,60(sp)
a00043f0:	00f766b3          	or	a3,a4,a5
a00043f4:	8b32                	mv	s6,a2
a00043f6:	59d6                	lw	s3,116(sp)
a00043f8:	5466                	lw	s0,120(sp)
a00043fa:	8a2a                	mv	s4,a0
a00043fc:	8aae                	mv	s5,a1
a00043fe:	8942                	mv	s2,a6
a0004400:	8646                	mv	a2,a7
a0004402:	e6a9                	bnez	a3,a000444c <print_integer+0x7a>
a0004404:	40047793          	andi	a5,s0,1024
a0004408:	ef85                	bnez	a5,a0004440 <print_integer+0x6e>
a000440a:	03000793          	li	a5,48
a000440e:	00f10823          	sb	a5,16(sp)
a0004412:	983d                	andi	s0,s0,-17
a0004414:	4d85                	li	s11,1
a0004416:	00247713          	andi	a4,s0,2
a000441a:	87ee                	mv	a5,s11
a000441c:	ef4d                	bnez	a4,a00044d6 <print_integer+0x104>
a000441e:	00147713          	andi	a4,s0,1
a0004422:	00098963          	beqz	s3,a0004434 <print_integer+0x62>
a0004426:	cb45                	beqz	a4,a00044d6 <print_integer+0x104>
a0004428:	00091563          	bnez	s2,a0004432 <print_integer+0x60>
a000442c:	00c47793          	andi	a5,s0,12
a0004430:	c391                	beqz	a5,a0004434 <print_integer+0x62>
a0004432:	19fd                	addi	s3,s3,-1
a0004434:	87ee                	mv	a5,s11
a0004436:	02000693          	li	a3,32
a000443a:	03000593          	li	a1,48
a000443e:	a079                	j	a00044cc <print_integer+0xfa>
a0004440:	47c1                	li	a5,16
a0004442:	4d81                	li	s11,0
a0004444:	fcf899e3          	bne	a7,a5,a0004416 <print_integer+0x44>
a0004448:	983d                	andi	s0,s0,-17
a000444a:	b7f1                	j	a0004416 <print_integer+0x44>
a000444c:	02047693          	andi	a3,s0,32
a0004450:	06100493          	li	s1,97
a0004454:	c299                	beqz	a3,a000445a <print_integer+0x88>
a0004456:	04100493          	li	s1,65
a000445a:	4d81                	li	s11,0
a000445c:	4d01                	li	s10,0
a000445e:	4ca5                	li	s9,9
a0004460:	14d9                	addi	s1,s1,-10
a0004462:	02000c13          	li	s8,32
a0004466:	853a                	mv	a0,a4
a0004468:	85be                	mv	a1,a5
a000446a:	4681                	li	a3,0
a000446c:	c632                	sw	a2,12(sp)
a000446e:	c43a                	sw	a4,8(sp)
a0004470:	c23e                	sw	a5,4(sp)
a0004472:	aeefd0ef          	jal	ra,a0001760 <__umoddi3>
a0004476:	0ff57513          	zext.b	a0,a0
a000447a:	4792                	lw	a5,4(sp)
a000447c:	4722                	lw	a4,8(sp)
a000447e:	4632                	lw	a2,12(sp)
a0004480:	04ace063          	bltu	s9,a0,a00044c0 <print_integer+0xee>
a0004484:	03050513          	addi	a0,a0,48
a0004488:	0d85                	addi	s11,s11,1
a000448a:	010d8693          	addi	a3,s11,16
a000448e:	0ff57513          	zext.b	a0,a0
a0004492:	968a                	add	a3,a3,sp
a0004494:	fea68fa3          	sb	a0,-1(a3)
a0004498:	85be                	mv	a1,a5
a000449a:	853a                	mv	a0,a4
a000449c:	4681                	li	a3,0
a000449e:	c632                	sw	a2,12(sp)
a00044a0:	c43a                	sw	a4,8(sp)
a00044a2:	c23e                	sw	a5,4(sp)
a00044a4:	f5dfc0ef          	jal	ra,a0001400 <__udivdi3>
a00044a8:	4792                	lw	a5,4(sp)
a00044aa:	4722                	lw	a4,8(sp)
a00044ac:	4632                	lw	a2,12(sp)
a00044ae:	00fd1463          	bne	s10,a5,a00044b6 <print_integer+0xe4>
a00044b2:	f6c762e3          	bltu	a4,a2,a0004416 <print_integer+0x44>
a00044b6:	f78d80e3          	beq	s11,s8,a0004416 <print_integer+0x44>
a00044ba:	872a                	mv	a4,a0
a00044bc:	87ae                	mv	a5,a1
a00044be:	b765                	j	a0004466 <print_integer+0x94>
a00044c0:	9526                	add	a0,a0,s1
a00044c2:	b7d9                	j	a0004488 <print_integer+0xb6>
a00044c4:	0808                	addi	a0,sp,16
a00044c6:	00f5558b          	srb	a1,a0,a5,0
a00044ca:	0785                	addi	a5,a5,1
a00044cc:	c709                	beqz	a4,a00044d6 <print_integer+0x104>
a00044ce:	0137f463          	bgeu	a5,s3,a00044d6 <print_integer+0x104>
a00044d2:	fed799e3          	bne	a5,a3,a00044c4 <print_integer+0xf2>
a00044d6:	02000713          	li	a4,32
a00044da:	03000693          	li	a3,48
a00044de:	a029                	j	a00044e8 <print_integer+0x116>
a00044e0:	080c                	addi	a1,sp,16
a00044e2:	00f5d68b          	srb	a3,a1,a5,0
a00044e6:	0785                	addi	a5,a5,1
a00044e8:	55c6                	lw	a1,112(sp)
a00044ea:	00b7f463          	bgeu	a5,a1,a00044f2 <print_integer+0x120>
a00044ee:	fee799e3          	bne	a5,a4,a00044e0 <print_integer+0x10e>
a00044f2:	4721                	li	a4,8
a00044f4:	00e61563          	bne	a2,a4,a00044fe <print_integer+0x12c>
a00044f8:	00fdf363          	bgeu	s11,a5,a00044fe <print_integer+0x12c>
a00044fc:	983d                	andi	s0,s0,-17
a00044fe:	6705                	lui	a4,0x1
a0004500:	0741                	addi	a4,a4,16
a0004502:	8f61                	and	a4,a4,s0
a0004504:	cb39                	beqz	a4,a000455a <print_integer+0x188>
a0004506:	40047713          	andi	a4,s0,1024
a000450a:	e345                	bnez	a4,a00045aa <print_integer+0x1d8>
a000450c:	cfd9                	beqz	a5,a00045aa <print_integer+0x1d8>
a000450e:	5746                	lw	a4,112(sp)
a0004510:	00f70463          	beq	a4,a5,a0004518 <print_integer+0x146>
a0004514:	08f99b63          	bne	s3,a5,a00045aa <print_integer+0x1d8>
a0004518:	08fdf963          	bgeu	s11,a5,a00045aa <print_integer+0x1d8>
a000451c:	fff78713          	addi	a4,a5,-1
a0004520:	c741                	beqz	a4,a00045a8 <print_integer+0x1d6>
a0004522:	46c1                	li	a3,16
a0004524:	08d61763          	bne	a2,a3,a00045b2 <print_integer+0x1e0>
a0004528:	17f9                	addi	a5,a5,-2
a000452a:	00ede363          	bltu	s11,a4,a0004530 <print_integer+0x15e>
a000452e:	87ba                	mv	a5,a4
a0004530:	02047713          	andi	a4,s0,32
a0004534:	eb49                	bnez	a4,a00045c6 <print_integer+0x1f4>
a0004536:	477d                	li	a4,31
a0004538:	04f76163          	bltu	a4,a5,a000457a <print_integer+0x1a8>
a000453c:	07800713          	li	a4,120
a0004540:	0814                	addi	a3,sp,16
a0004542:	00f6d70b          	srb	a4,a3,a5,0
a0004546:	0785                	addi	a5,a5,1
a0004548:	477d                	li	a4,31
a000454a:	02f76863          	bltu	a4,a5,a000457a <print_integer+0x1a8>
a000454e:	03000713          	li	a4,48
a0004552:	0814                	addi	a3,sp,16
a0004554:	00f6d70b          	srb	a4,a3,a5,0
a0004558:	0785                	addi	a5,a5,1
a000455a:	477d                	li	a4,31
a000455c:	00f76f63          	bltu	a4,a5,a000457a <print_integer+0x1a8>
a0004560:	02d00713          	li	a4,45
a0004564:	00091763          	bnez	s2,a0004572 <print_integer+0x1a0>
a0004568:	00447713          	andi	a4,s0,4
a000456c:	c33d                	beqz	a4,a00045d2 <print_integer+0x200>
a000456e:	02b00713          	li	a4,43
a0004572:	0814                	addi	a3,sp,16
a0004574:	00f6d70b          	srb	a4,a3,a5,0
a0004578:	0785                	addi	a5,a5,1
a000457a:	88a2                	mv	a7,s0
a000457c:	884e                	mv	a6,s3
a000457e:	0818                	addi	a4,sp,16
a0004580:	86de                	mv	a3,s7
a0004582:	865a                	mv	a2,s6
a0004584:	85d6                	mv	a1,s5
a0004586:	8552                	mv	a0,s4
a0004588:	3b71                	jal	a0004324 <out_rev_>
a000458a:	50b6                	lw	ra,108(sp)
a000458c:	5426                	lw	s0,104(sp)
a000458e:	5496                	lw	s1,100(sp)
a0004590:	5906                	lw	s2,96(sp)
a0004592:	49f6                	lw	s3,92(sp)
a0004594:	4a66                	lw	s4,88(sp)
a0004596:	4ad6                	lw	s5,84(sp)
a0004598:	4b46                	lw	s6,80(sp)
a000459a:	4bb6                	lw	s7,76(sp)
a000459c:	4c26                	lw	s8,72(sp)
a000459e:	4c96                	lw	s9,68(sp)
a00045a0:	4d06                	lw	s10,64(sp)
a00045a2:	5df2                	lw	s11,60(sp)
a00045a4:	6165                	addi	sp,sp,112
a00045a6:	8082                	ret
a00045a8:	4781                	li	a5,0
a00045aa:	4741                	li	a4,16
a00045ac:	00e61463          	bne	a2,a4,a00045b4 <print_integer+0x1e2>
a00045b0:	b741                	j	a0004530 <print_integer+0x15e>
a00045b2:	87ba                	mv	a5,a4
a00045b4:	4709                	li	a4,2
a00045b6:	f8e619e3          	bne	a2,a4,a0004548 <print_integer+0x176>
a00045ba:	477d                	li	a4,31
a00045bc:	faf76fe3          	bltu	a4,a5,a000457a <print_integer+0x1a8>
a00045c0:	06200713          	li	a4,98
a00045c4:	bfb5                	j	a0004540 <print_integer+0x16e>
a00045c6:	477d                	li	a4,31
a00045c8:	faf769e3          	bltu	a4,a5,a000457a <print_integer+0x1a8>
a00045cc:	05800713          	li	a4,88
a00045d0:	bf85                	j	a0004540 <print_integer+0x16e>
a00045d2:	00847713          	andi	a4,s0,8
a00045d6:	d355                	beqz	a4,a000457a <print_integer+0x1a8>
a00045d8:	02000713          	li	a4,32
a00045dc:	bf59                	j	a0004572 <print_integer+0x1a0>

a00045de <get_components>:
a00045de:	715d                	addi	sp,sp,-80
a00045e0:	01f65793          	srli	a5,a2,0x1f
a00045e4:	dc52                	sw	s4,56(sp)
a00045e6:	da56                	sw	s5,52(sp)
a00045e8:	d462                	sw	s8,40(sp)
a00045ea:	d266                	sw	s9,36(sp)
a00045ec:	c686                	sw	ra,76(sp)
a00045ee:	c4a2                	sw	s0,72(sp)
a00045f0:	c2a6                	sw	s1,68(sp)
a00045f2:	c0ca                	sw	s2,64(sp)
a00045f4:	de4e                	sw	s3,60(sp)
a00045f6:	d85a                	sw	s6,48(sp)
a00045f8:	d65e                	sw	s7,44(sp)
a00045fa:	d06a                	sw	s10,32(sp)
a00045fc:	ce6e                	sw	s11,28(sp)
a00045fe:	c03e                	sw	a5,0(sp)
a0004600:	8aaa                	mv	s5,a0
a0004602:	8c2e                	mv	s8,a1
a0004604:	8a32                	mv	s4,a2
a0004606:	8cb6                	mv	s9,a3
a0004608:	c789                	beqz	a5,a0004612 <get_components+0x34>
a000460a:	800007b7          	lui	a5,0x80000
a000460e:	00c7ca33          	xor	s4,a5,a2
a0004612:	8562                	mv	a0,s8
a0004614:	85d2                	mv	a1,s4
a0004616:	d32ff0ef          	jal	ra,a0003b48 <__fixdfdi>
a000461a:	a00077b7          	lui	a5,0xa0007
a000461e:	4a078793          	addi	a5,a5,1184 # a00074a0 <__psram_limit+0xf7c074a0>
a0004622:	0797978b          	addsl	a5,a5,s9,3
a0004626:	0007ab03          	lw	s6,0(a5)
a000462a:	0047ab83          	lw	s7,4(a5)
a000462e:	892a                	mv	s2,a0
a0004630:	89ae                	mv	s3,a1
a0004632:	e1aff0ef          	jal	ra,a0003c4c <__floatdidf>
a0004636:	862a                	mv	a2,a0
a0004638:	86ae                	mv	a3,a1
a000463a:	8562                	mv	a0,s8
a000463c:	85d2                	mv	a1,s4
a000463e:	b2dfe0ef          	jal	ra,a000316a <__subdf3>
a0004642:	865a                	mv	a2,s6
a0004644:	86de                	mv	a3,s7
a0004646:	d8afe0ef          	jal	ra,a0002bd0 <__muldf3>
a000464a:	8d2a                	mv	s10,a0
a000464c:	8dae                	mv	s11,a1
a000464e:	cfaff0ef          	jal	ra,a0003b48 <__fixdfdi>
a0004652:	842a                	mv	s0,a0
a0004654:	84ae                	mv	s1,a1
a0004656:	df6ff0ef          	jal	ra,a0003c4c <__floatdidf>
a000465a:	862a                	mv	a2,a0
a000465c:	86ae                	mv	a3,a1
a000465e:	856a                	mv	a0,s10
a0004660:	85ee                	mv	a1,s11
a0004662:	b09fe0ef          	jal	ra,a000316a <__subdf3>
a0004666:	a0007837          	lui	a6,0xa0007
a000466a:	41882d03          	lw	s10,1048(a6) # a0007418 <__psram_limit+0xf7c07418>
a000466e:	41c82d83          	lw	s11,1052(a6)
a0004672:	c42a                	sw	a0,8(sp)
a0004674:	866a                	mv	a2,s10
a0004676:	86ee                	mv	a3,s11
a0004678:	c62e                	sw	a1,12(sp)
a000467a:	bfafe0ef          	jal	ra,a0002a74 <__gedf2>
a000467e:	a0007837          	lui	a6,0xa0007
a0004682:	c242                	sw	a6,4(sp)
a0004684:	4722                	lw	a4,8(sp)
a0004686:	47b2                	lw	a5,12(sp)
a0004688:	0aa05963          	blez	a0,a000473a <get_components+0x15c>
a000468c:	4d05                	li	s10,1
a000468e:	4d81                	li	s11,0
a0004690:	c1a41477          	add64	s0,s0,s10
a0004694:	8522                	mv	a0,s0
a0004696:	85a6                	mv	a1,s1
a0004698:	db4ff0ef          	jal	ra,a0003c4c <__floatdidf>
a000469c:	862a                	mv	a2,a0
a000469e:	86ae                	mv	a3,a1
a00046a0:	855a                	mv	a0,s6
a00046a2:	85de                	mv	a1,s7
a00046a4:	c7efe0ef          	jal	ra,a0002b22 <__ledf2>
a00046a8:	00a04663          	bgtz	a0,a00046b4 <get_components+0xd6>
a00046ac:	c1a91977          	add64	s2,s2,s10
a00046b0:	4401                	li	s0,0
a00046b2:	4481                	li	s1,0
a00046b4:	040c9863          	bnez	s9,a0004704 <get_components+0x126>
a00046b8:	854a                	mv	a0,s2
a00046ba:	85ce                	mv	a1,s3
a00046bc:	d90ff0ef          	jal	ra,a0003c4c <__floatdidf>
a00046c0:	862a                	mv	a2,a0
a00046c2:	86ae                	mv	a3,a1
a00046c4:	8562                	mv	a0,s8
a00046c6:	85d2                	mv	a1,s4
a00046c8:	aa3fe0ef          	jal	ra,a000316a <__subdf3>
a00046cc:	4792                	lw	a5,4(sp)
a00046ce:	8c2a                	mv	s8,a0
a00046d0:	8cae                	mv	s9,a1
a00046d2:	4187ab03          	lw	s6,1048(a5)
a00046d6:	41c7ab83          	lw	s7,1052(a5)
a00046da:	865a                	mv	a2,s6
a00046dc:	86de                	mv	a3,s7
a00046de:	c44fe0ef          	jal	ra,a0002b22 <__ledf2>
a00046e2:	00055a63          	bgez	a0,a00046f6 <get_components+0x118>
a00046e6:	865a                	mv	a2,s6
a00046e8:	86de                	mv	a3,s7
a00046ea:	8562                	mv	a0,s8
a00046ec:	85e6                	mv	a1,s9
a00046ee:	b86fe0ef          	jal	ra,a0002a74 <__gedf2>
a00046f2:	00a05963          	blez	a0,a0004704 <get_components+0x126>
a00046f6:	00197793          	andi	a5,s2,1
a00046fa:	c789                	beqz	a5,a0004704 <get_components+0x126>
a00046fc:	4705                	li	a4,1
a00046fe:	4781                	li	a5,0
a0004700:	c0e91977          	add64	s2,s2,a4
a0004704:	4782                	lw	a5,0(sp)
a0004706:	008aa423          	sw	s0,8(s5)
a000470a:	40b6                	lw	ra,76(sp)
a000470c:	4426                	lw	s0,72(sp)
a000470e:	012aa023          	sw	s2,0(s5)
a0004712:	013aa223          	sw	s3,4(s5)
a0004716:	009aa623          	sw	s1,12(s5)
a000471a:	00fa8823          	sb	a5,16(s5)
a000471e:	4496                	lw	s1,68(sp)
a0004720:	4906                	lw	s2,64(sp)
a0004722:	59f2                	lw	s3,60(sp)
a0004724:	5a62                	lw	s4,56(sp)
a0004726:	5b42                	lw	s6,48(sp)
a0004728:	5bb2                	lw	s7,44(sp)
a000472a:	5c22                	lw	s8,40(sp)
a000472c:	5c92                	lw	s9,36(sp)
a000472e:	5d02                	lw	s10,32(sp)
a0004730:	4df2                	lw	s11,28(sp)
a0004732:	8556                	mv	a0,s5
a0004734:	5ad2                	lw	s5,52(sp)
a0004736:	6161                	addi	sp,sp,80
a0004738:	8082                	ret
a000473a:	866a                	mv	a2,s10
a000473c:	86ee                	mv	a3,s11
a000473e:	853a                	mv	a0,a4
a0004740:	85be                	mv	a1,a5
a0004742:	a8efe0ef          	jal	ra,a00029d0 <__eqdf2>
a0004746:	f53d                	bnez	a0,a00046b4 <get_components+0xd6>
a0004748:	009467b3          	or	a5,s0,s1
a000474c:	c781                	beqz	a5,a0004754 <get_components+0x176>
a000474e:	00147793          	andi	a5,s0,1
a0004752:	d3ad                	beqz	a5,a00046b4 <get_components+0xd6>
a0004754:	4705                	li	a4,1
a0004756:	4781                	li	a5,0
a0004758:	c0e41477          	add64	s0,s0,a4
a000475c:	bfa1                	j	a00046b4 <get_components+0xd6>

a000475e <out_console>:
a000475e:	62fc37b7          	lui	a5,0x62fc3
a0004762:	85aa                	mv	a1,a0
a0004764:	d347a503          	lw	a0,-716(a5) # 62fc2d34 <console>
a0004768:	c2fbc317          	auipc	t1,0xc2fbc
a000476c:	e9630067          	jr	-362(t1) # 62fc05fe <qcc74x_uart_putchar>

a0004770 <print_broken_up_decimal.isra.0>:
a0004770:	715d                	addi	sp,sp,-80
a0004772:	d266                	sw	s9,36(sp)
a0004774:	4cd6                	lw	s9,84(sp)
a0004776:	c4a2                	sw	s0,72(sp)
a0004778:	c0ca                	sw	s2,64(sp)
a000477a:	dc52                	sw	s4,56(sp)
a000477c:	da56                	sw	s5,52(sp)
a000477e:	d85a                	sw	s6,48(sp)
a0004780:	d65e                	sw	s7,44(sp)
a0004782:	d462                	sw	s8,40(sp)
a0004784:	d06a                	sw	s10,32(sp)
a0004786:	c686                	sw	ra,76(sp)
a0004788:	c2a6                	sw	s1,68(sp)
a000478a:	de4e                	sw	s3,60(sp)
a000478c:	ce6e                	sw	s11,28(sp)
a000478e:	c23e                	sw	a5,4(sp)
a0004790:	c442                	sw	a6,8(sp)
a0004792:	c646                	sw	a7,12(sp)
a0004794:	4d46                	lw	s10,80(sp)
a0004796:	4be6                	lw	s7,88(sp)
a0004798:	4c76                	lw	s8,92(sp)
a000479a:	5906                	lw	s2,96(sp)
a000479c:	5416                	lw	s0,100(sp)
a000479e:	8a2a                	mv	s4,a0
a00047a0:	8aae                	mv	s5,a1
a00047a2:	8b3a                	mv	s6,a4
a00047a4:	0a0c8563          	beqz	s9,a000484e <print_broken_up_decimal.isra.0+0xde>
a00047a8:	6705                	lui	a4,0x1
a00047aa:	81070713          	addi	a4,a4,-2032 # 810 <__RFTLV_SIZE_HOLE+0x10>
a00047ae:	00ec7733          	and	a4,s8,a4
a00047b2:	80070713          	addi	a4,a4,-2048
a00047b6:	89b2                	mv	s3,a2
a00047b8:	84b6                	mv	s1,a3
a00047ba:	14071a63          	bnez	a4,a000490e <print_broken_up_decimal.isra.0+0x19e>
a00047be:	00d04463          	bgtz	a3,a00047c6 <print_broken_up_decimal.isra.0+0x56>
a00047c2:	e2d5                	bnez	a3,a0004866 <print_broken_up_decimal.isra.0+0xf6>
a00047c4:	c24d                	beqz	a2,a0004866 <print_broken_up_decimal.isra.0+0xf6>
a00047c6:	4629                	li	a2,10
a00047c8:	4681                	li	a3,0
a00047ca:	854e                	mv	a0,s3
a00047cc:	85a6                	mv	a1,s1
a00047ce:	8affc0ef          	jal	ra,a000107c <__moddi3>
a00047d2:	8d4d                	or	a0,a0,a1
a00047d4:	12051a63          	bnez	a0,a0004908 <print_broken_up_decimal.isra.0+0x198>
a00047d8:	854e                	mv	a0,s3
a00047da:	85a6                	mv	a1,s1
a00047dc:	4629                	li	a2,10
a00047de:	4681                	li	a3,0
a00047e0:	cf4fc0ef          	jal	ra,a0000cd4 <__divdi3>
a00047e4:	1cfd                	addi	s9,s9,-1
a00047e6:	89aa                	mv	s3,a0
a00047e8:	84ae                	mv	s1,a1
a00047ea:	bff1                	j	a00047c6 <print_broken_up_decimal.isra.0+0x56>
a00047ec:	4629                	li	a2,10
a00047ee:	4681                	li	a3,0
a00047f0:	854e                	mv	a0,s3
a00047f2:	85a6                	mv	a1,s1
a00047f4:	889fc0ef          	jal	ra,a000107c <__moddi3>
a00047f8:	03050513          	addi	a0,a0,48
a00047fc:	0405                	addi	s0,s0,1
a00047fe:	008dd50b          	srb	a0,s11,s0,0
a0004802:	85a6                	mv	a1,s1
a0004804:	854e                	mv	a0,s3
a0004806:	4629                	li	a2,10
a0004808:	4681                	li	a3,0
a000480a:	ccafc0ef          	jal	ra,a0000cd4 <__divdi3>
a000480e:	84ae                	mv	s1,a1
a0004810:	8dc9                	or	a1,a1,a0
a0004812:	1cfd                	addi	s9,s9,-1
a0004814:	89aa                	mv	s3,a0
a0004816:	02000713          	li	a4,32
a000481a:	0e059e63          	bnez	a1,a0004916 <print_broken_up_decimal.isra.0+0x1a6>
a000481e:	008c87b3          	add	a5,s9,s0
a0004822:	02000613          	li	a2,32
a0004826:	03000593          	li	a1,48
a000482a:	0ec40863          	beq	s0,a2,a000491a <print_broken_up_decimal.isra.0+0x1aa>
a000482e:	00140713          	addi	a4,s0,1
a0004832:	008906b3          	add	a3,s2,s0
a0004836:	00879863          	bne	a5,s0,a0004846 <print_broken_up_decimal.isra.0+0xd6>
a000483a:	02e00793          	li	a5,46
a000483e:	00f68023          	sb	a5,0(a3)
a0004842:	843a                	mv	s0,a4
a0004844:	a00d                	j	a0004866 <print_broken_up_decimal.isra.0+0xf6>
a0004846:	0089558b          	srb	a1,s2,s0,0
a000484a:	843a                	mv	s0,a4
a000484c:	bff9                	j	a000482a <print_broken_up_decimal.isra.0+0xba>
a000484e:	010c7793          	andi	a5,s8,16
a0004852:	cb91                	beqz	a5,a0004866 <print_broken_up_decimal.isra.0+0xf6>
a0004854:	02000793          	li	a5,32
a0004858:	0cf40163          	beq	s0,a5,a000491a <print_broken_up_decimal.isra.0+0x1aa>
a000485c:	02e00793          	li	a5,46
a0004860:	0089578b          	srb	a5,s2,s0,0
a0004864:	0405                	addi	s0,s0,1
a0004866:	02000993          	li	s3,32
a000486a:	fff90493          	addi	s1,s2,-1 # 7fffff <remain_wifi_ram+0x7dffff>
a000486e:	a035                	j	a000489a <print_broken_up_decimal.isra.0+0x12a>
a0004870:	4629                	li	a2,10
a0004872:	4681                	li	a3,0
a0004874:	8552                	mv	a0,s4
a0004876:	85d6                	mv	a1,s5
a0004878:	805fc0ef          	jal	ra,a000107c <__moddi3>
a000487c:	03050513          	addi	a0,a0,48
a0004880:	0405                	addi	s0,s0,1
a0004882:	0084d50b          	srb	a0,s1,s0,0
a0004886:	85d6                	mv	a1,s5
a0004888:	8552                	mv	a0,s4
a000488a:	4629                	li	a2,10
a000488c:	4681                	li	a3,0
a000488e:	c46fc0ef          	jal	ra,a0000cd4 <__divdi3>
a0004892:	8aae                	mv	s5,a1
a0004894:	8dc9                	or	a1,a1,a0
a0004896:	8a2a                	mv	s4,a0
a0004898:	c1d9                	beqz	a1,a000491e <print_broken_up_decimal.isra.0+0x1ae>
a000489a:	fd341be3          	bne	s0,s3,a0004870 <print_broken_up_decimal.isra.0+0x100>
a000489e:	a8b5                	j	a000491a <print_broken_up_decimal.isra.0+0x1aa>
a00048a0:	0089570b          	srb	a4,s2,s0,0
a00048a4:	0405                	addi	s0,s0,1
a00048a6:	03747b63          	bgeu	s0,s7,a00048dc <print_broken_up_decimal.isra.0+0x16c>
a00048aa:	fef41be3          	bne	s0,a5,a00048a0 <print_broken_up_decimal.isra.0+0x130>
a00048ae:	87a2                	mv	a5,s0
a00048b0:	4426                	lw	s0,72(sp)
a00048b2:	4632                	lw	a2,12(sp)
a00048b4:	45a2                	lw	a1,8(sp)
a00048b6:	4512                	lw	a0,4(sp)
a00048b8:	40b6                	lw	ra,76(sp)
a00048ba:	4496                	lw	s1,68(sp)
a00048bc:	59f2                	lw	s3,60(sp)
a00048be:	5a62                	lw	s4,56(sp)
a00048c0:	5ad2                	lw	s5,52(sp)
a00048c2:	5b42                	lw	s6,48(sp)
a00048c4:	5c92                	lw	s9,36(sp)
a00048c6:	4df2                	lw	s11,28(sp)
a00048c8:	88e2                	mv	a7,s8
a00048ca:	885e                	mv	a6,s7
a00048cc:	5c22                	lw	s8,40(sp)
a00048ce:	5bb2                	lw	s7,44(sp)
a00048d0:	874a                	mv	a4,s2
a00048d2:	86ea                	mv	a3,s10
a00048d4:	4906                	lw	s2,64(sp)
a00048d6:	5d02                	lw	s10,32(sp)
a00048d8:	6161                	addi	sp,sp,80
a00048da:	b4a9                	j	a0004324 <out_rev_>
a00048dc:	02000793          	li	a5,32
a00048e0:	fcf407e3          	beq	s0,a5,a00048ae <print_broken_up_decimal.isra.0+0x13e>
a00048e4:	000b0863          	beqz	s6,a00048f4 <print_broken_up_decimal.isra.0+0x184>
a00048e8:	02d00793          	li	a5,45
a00048ec:	0089578b          	srb	a5,s2,s0,0
a00048f0:	0405                	addi	s0,s0,1
a00048f2:	bf75                	j	a00048ae <print_broken_up_decimal.isra.0+0x13e>
a00048f4:	004c7713          	andi	a4,s8,4
a00048f8:	c701                	beqz	a4,a0004900 <print_broken_up_decimal.isra.0+0x190>
a00048fa:	02b00793          	li	a5,43
a00048fe:	b7fd                	j	a00048ec <print_broken_up_decimal.isra.0+0x17c>
a0004900:	008c7713          	andi	a4,s8,8
a0004904:	d74d                	beqz	a4,a00048ae <print_broken_up_decimal.isra.0+0x13e>
a0004906:	b7dd                	j	a00048ec <print_broken_up_decimal.isra.0+0x17c>
a0004908:	0099e733          	or	a4,s3,s1
a000490c:	df29                	beqz	a4,a0004866 <print_broken_up_decimal.isra.0+0xf6>
a000490e:	02000713          	li	a4,32
a0004912:	fff90d93          	addi	s11,s2,-1
a0004916:	ece41be3          	bne	s0,a4,a00047ec <print_broken_up_decimal.isra.0+0x7c>
a000491a:	02000413          	li	s0,32
a000491e:	003c7793          	andi	a5,s8,3
a0004922:	4705                	li	a4,1
a0004924:	fae79ce3          	bne	a5,a4,a00048dc <print_broken_up_decimal.isra.0+0x16c>
a0004928:	fa0b8ae3          	beqz	s7,a00048dc <print_broken_up_decimal.isra.0+0x16c>
a000492c:	000b1563          	bnez	s6,a0004936 <print_broken_up_decimal.isra.0+0x1c6>
a0004930:	00cc7793          	andi	a5,s8,12
a0004934:	c391                	beqz	a5,a0004938 <print_broken_up_decimal.isra.0+0x1c8>
a0004936:	1bfd                	addi	s7,s7,-1
a0004938:	02000793          	li	a5,32
a000493c:	03000713          	li	a4,48
a0004940:	b79d                	j	a00048a6 <print_broken_up_decimal.isra.0+0x136>

a0004942 <update_normalization>:
a0004942:	0085c783          	lbu	a5,8(a1)
a0004946:	1141                	addi	sp,sp,-16
a0004948:	c422                	sw	s0,8(sp)
a000494a:	c606                	sw	ra,12(sp)
a000494c:	842a                	mv	s0,a0
a000494e:	0005a303          	lw	t1,0(a1)
a0004952:	0045a803          	lw	a6,4(a1)
a0004956:	88b2                	mv	a7,a2
a0004958:	8536                	mv	a0,a3
a000495a:	c799                	beqz	a5,a0004968 <update_normalization+0x26>
a000495c:	851a                	mv	a0,t1
a000495e:	85c2                	mv	a1,a6
a0004960:	a70fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004964:	4785                	li	a5,1
a0004966:	a815                	j	a000499a <update_normalization+0x58>
a0004968:	7948378b          	extu	a5,a6,30,20
a000496c:	c0178793          	addi	a5,a5,-1023
a0004970:	41f7d713          	srai	a4,a5,0x1f
a0004974:	8fb9                	xor	a5,a5,a4
a0004976:	40e78733          	sub	a4,a5,a4
a000497a:	7946b78b          	extu	a5,a3,30,20
a000497e:	c0178793          	addi	a5,a5,-1023
a0004982:	41f7d693          	srai	a3,a5,0x1f
a0004986:	8fb5                	xor	a5,a5,a3
a0004988:	8f95                	sub	a5,a5,a3
a000498a:	02e7d163          	bge	a5,a4,a00049ac <update_normalization+0x6a>
a000498e:	86aa                	mv	a3,a0
a0004990:	85c2                	mv	a1,a6
a0004992:	851a                	mv	a0,t1
a0004994:	9b5fd0ef          	jal	ra,a0002348 <__divdf3>
a0004998:	4781                	li	a5,0
a000499a:	c008                	sw	a0,0(s0)
a000499c:	40b2                	lw	ra,12(sp)
a000499e:	c04c                	sw	a1,4(s0)
a00049a0:	00f40423          	sb	a5,8(s0)
a00049a4:	8522                	mv	a0,s0
a00049a6:	4422                	lw	s0,8(sp)
a00049a8:	0141                	addi	sp,sp,16
a00049aa:	8082                	ret
a00049ac:	87aa                	mv	a5,a0
a00049ae:	861a                	mv	a2,t1
a00049b0:	86c2                	mv	a3,a6
a00049b2:	8546                	mv	a0,a7
a00049b4:	85be                	mv	a1,a5
a00049b6:	993fd0ef          	jal	ra,a0002348 <__divdf3>
a00049ba:	b76d                	j	a0004964 <update_normalization+0x22>

a00049bc <print_exponential_number>:
a00049bc:	7155                	addi	sp,sp,-208
a00049be:	d95a                	sw	s6,176(sp)
a00049c0:	8b3e                	mv	s6,a5
a00049c2:	83fd                	srli	a5,a5,0x1f
a00049c4:	c3a6                	sw	s1,196(sp)
a00049c6:	c1ca                	sw	s2,192(sp)
a00049c8:	d75e                	sw	s7,172(sp)
a00049ca:	d16a                	sw	s10,160(sp)
a00049cc:	cf6e                	sw	s11,156(sp)
a00049ce:	c786                	sw	ra,204(sp)
a00049d0:	c5a2                	sw	s0,200(sp)
a00049d2:	df4e                	sw	s3,188(sp)
a00049d4:	dd52                	sw	s4,184(sp)
a00049d6:	db56                	sw	s5,180(sp)
a00049d8:	d562                	sw	s8,168(sp)
a00049da:	d366                	sw	s9,164(sp)
a00049dc:	d62e                	sw	a1,44(sp)
a00049de:	da32                	sw	a2,52(sp)
a00049e0:	d836                	sw	a3,48(sp)
a00049e2:	dc46                	sw	a7,56(sp)
a00049e4:	de3e                	sw	a5,60(sp)
a00049e6:	4dce                	lw	s11,208(sp)
a00049e8:	8d2a                	mv	s10,a0
a00049ea:	8bba                	mv	s7,a4
a00049ec:	84c2                	mv	s1,a6
a00049ee:	4901                	li	s2,0
a00049f0:	c789                	beqz	a5,a00049fa <print_exponential_number+0x3e>
a00049f2:	800007b7          	lui	a5,0x80000
a00049f6:	0167cb33          	xor	s6,a5,s6
a00049fa:	4601                	li	a2,0
a00049fc:	4681                	li	a3,0
a00049fe:	855e                	mv	a0,s7
a0004a00:	85da                	mv	a1,s6
a0004a02:	fcffd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004a06:	4401                	li	s0,0
a0004a08:	20050363          	beqz	a0,a0004c0e <print_exponential_number+0x252>
a0004a0c:	794b350b          	extu	a0,s6,30,20
a0004a10:	c0150513          	addi	a0,a0,-1023
a0004a14:	8ceff0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004a18:	a00077b7          	lui	a5,0xa0007
a0004a1c:	4207a603          	lw	a2,1056(a5) # a0007420 <__psram_limit+0xf7c07420>
a0004a20:	4247a683          	lw	a3,1060(a5)
a0004a24:	a0007c37          	lui	s8,0xa0007
a0004a28:	9a8fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004a2c:	a00077b7          	lui	a5,0xa0007
a0004a30:	4287a603          	lw	a2,1064(a5) # a0007428 <__psram_limit+0xf7c07428>
a0004a34:	42c7a683          	lw	a3,1068(a5)
a0004a38:	866fd0ef          	jal	ra,a0001a9e <__adddf3>
a0004a3c:	001007b7          	lui	a5,0x100
a0004a40:	a0007737          	lui	a4,0xa0007
a0004a44:	17fd                	addi	a5,a5,-1
a0004a46:	43072603          	lw	a2,1072(a4) # a0007430 <__psram_limit+0xf7c07430>
a0004a4a:	43472683          	lw	a3,1076(a4)
a0004a4e:	00fb77b3          	and	a5,s6,a5
a0004a52:	3ff00737          	lui	a4,0x3ff00
a0004a56:	8f5d                	or	a4,a4,a5
a0004a58:	892a                	mv	s2,a0
a0004a5a:	89ae                	mv	s3,a1
a0004a5c:	855e                	mv	a0,s7
a0004a5e:	85ba                	mv	a1,a4
a0004a60:	f0afe0ef          	jal	ra,a000316a <__subdf3>
a0004a64:	a00077b7          	lui	a5,0xa0007
a0004a68:	4387a603          	lw	a2,1080(a5) # a0007438 <__psram_limit+0xf7c07438>
a0004a6c:	43c7a683          	lw	a3,1084(a5)
a0004a70:	960fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004a74:	862a                	mv	a2,a0
a0004a76:	86ae                	mv	a3,a1
a0004a78:	854a                	mv	a0,s2
a0004a7a:	85ce                	mv	a1,s3
a0004a7c:	822fd0ef          	jal	ra,a0001a9e <__adddf3>
a0004a80:	f9ffe0ef          	jal	ra,a0003a1e <__fixdfsi>
a0004a84:	842a                	mv	s0,a0
a0004a86:	85cff0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004a8a:	a00077b7          	lui	a5,0xa0007
a0004a8e:	4407a603          	lw	a2,1088(a5) # a0007440 <__psram_limit+0xf7c07440>
a0004a92:	4447a683          	lw	a3,1092(a5)
a0004a96:	892a                	mv	s2,a0
a0004a98:	89ae                	mv	s3,a1
a0004a9a:	936fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004a9e:	a00077b7          	lui	a5,0xa0007
a0004aa2:	4187a603          	lw	a2,1048(a5) # a0007418 <__psram_limit+0xf7c07418>
a0004aa6:	41c7a683          	lw	a3,1052(a5)
a0004aaa:	ff5fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004aae:	f71fe0ef          	jal	ra,a0003a1e <__fixdfsi>
a0004ab2:	a00077b7          	lui	a5,0xa0007
a0004ab6:	4487a603          	lw	a2,1096(a5) # a0007448 <__psram_limit+0xf7c07448>
a0004aba:	44c7a683          	lw	a3,1100(a5)
a0004abe:	8caa                	mv	s9,a0
a0004ac0:	85ce                	mv	a1,s3
a0004ac2:	854a                	mv	a0,s2
a0004ac4:	90cfe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004ac8:	892a                	mv	s2,a0
a0004aca:	8566                	mv	a0,s9
a0004acc:	89ae                	mv	s3,a1
a0004ace:	814ff0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004ad2:	a00077b7          	lui	a5,0xa0007
a0004ad6:	4507a603          	lw	a2,1104(a5) # a0007450 <__psram_limit+0xf7c07450>
a0004ada:	4547a683          	lw	a3,1108(a5)
a0004ade:	8f2fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004ae2:	862a                	mv	a2,a0
a0004ae4:	86ae                	mv	a3,a1
a0004ae6:	854a                	mv	a0,s2
a0004ae8:	85ce                	mv	a1,s3
a0004aea:	e80fe0ef          	jal	ra,a000316a <__subdf3>
a0004aee:	862a                	mv	a2,a0
a0004af0:	86ae                	mv	a3,a1
a0004af2:	8a2a                	mv	s4,a0
a0004af4:	8aae                	mv	s5,a1
a0004af6:	8dafe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004afa:	892a                	mv	s2,a0
a0004afc:	89ae                	mv	s3,a1
a0004afe:	8652                	mv	a2,s4
a0004b00:	86d6                	mv	a3,s5
a0004b02:	8552                	mv	a0,s4
a0004b04:	85d6                	mv	a1,s5
a0004b06:	f99fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b0a:	a00076b7          	lui	a3,0xa0007
a0004b0e:	4586a603          	lw	a2,1112(a3) # a0007458 <__psram_limit+0xf7c07458>
a0004b12:	45c6a683          	lw	a3,1116(a3)
a0004b16:	c0aa                	sw	a0,64(sp)
a0004b18:	c2ae                	sw	a1,68(sp)
a0004b1a:	854a                	mv	a0,s2
a0004b1c:	85ce                	mv	a1,s3
a0004b1e:	82bfd0ef          	jal	ra,a0002348 <__divdf3>
a0004b22:	460c2603          	lw	a2,1120(s8) # a0007460 <__psram_limit+0xf7c07460>
a0004b26:	464c2683          	lw	a3,1124(s8)
a0004b2a:	f75fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b2e:	862a                	mv	a2,a0
a0004b30:	86ae                	mv	a3,a1
a0004b32:	854a                	mv	a0,s2
a0004b34:	85ce                	mv	a1,s3
a0004b36:	813fd0ef          	jal	ra,a0002348 <__divdf3>
a0004b3a:	a00076b7          	lui	a3,0xa0007
a0004b3e:	4686a603          	lw	a2,1128(a3) # a0007468 <__psram_limit+0xf7c07468>
a0004b42:	46c6a683          	lw	a3,1132(a3)
a0004b46:	f59fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b4a:	862a                	mv	a2,a0
a0004b4c:	86ae                	mv	a3,a1
a0004b4e:	854a                	mv	a0,s2
a0004b50:	85ce                	mv	a1,s3
a0004b52:	ff6fd0ef          	jal	ra,a0002348 <__divdf3>
a0004b56:	89ae                	mv	s3,a1
a0004b58:	a00075b7          	lui	a1,0xa0007
a0004b5c:	892a                	mv	s2,a0
a0004b5e:	4705a503          	lw	a0,1136(a1) # a0007470 <__psram_limit+0xf7c07470>
a0004b62:	4745a583          	lw	a1,1140(a1)
a0004b66:	8652                	mv	a2,s4
a0004b68:	86d6                	mv	a3,s5
a0004b6a:	e00fe0ef          	jal	ra,a000316a <__subdf3>
a0004b6e:	862a                	mv	a2,a0
a0004b70:	86ae                	mv	a3,a1
a0004b72:	854a                	mv	a0,s2
a0004b74:	85ce                	mv	a1,s3
a0004b76:	f29fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b7a:	4706                	lw	a4,64(sp)
a0004b7c:	4796                	lw	a5,68(sp)
a0004b7e:	862a                	mv	a2,a0
a0004b80:	86ae                	mv	a3,a1
a0004b82:	853a                	mv	a0,a4
a0004b84:	85be                	mv	a1,a5
a0004b86:	fc2fd0ef          	jal	ra,a0002348 <__divdf3>
a0004b8a:	a00077b7          	lui	a5,0xa0007
a0004b8e:	4787a603          	lw	a2,1144(a5) # a0007478 <__psram_limit+0xf7c07478>
a0004b92:	47c7a683          	lw	a3,1148(a5)
a0004b96:	f09fc0ef          	jal	ra,a0001a9e <__adddf3>
a0004b9a:	3ff00613          	li	a2,1023
a0004b9e:	4681                	li	a3,0
a0004ba0:	8766                	mv	a4,s9
a0004ba2:	41fcd793          	srai	a5,s9,0x1f
a0004ba6:	c0c71777          	add64	a4,a4,a2
a0004baa:	4801                	li	a6,0
a0004bac:	01471893          	slli	a7,a4,0x14
a0004bb0:	8642                	mv	a2,a6
a0004bb2:	86c6                	mv	a3,a7
a0004bb4:	81cfe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004bb8:	865e                	mv	a2,s7
a0004bba:	86da                	mv	a3,s6
a0004bbc:	8a2a                	mv	s4,a0
a0004bbe:	8aae                	mv	s5,a1
a0004bc0:	eb5fd0ef          	jal	ra,a0002a74 <__gedf2>
a0004bc4:	00a05d63          	blez	a0,a0004bde <print_exponential_number+0x222>
a0004bc8:	460c2603          	lw	a2,1120(s8)
a0004bcc:	464c2683          	lw	a3,1124(s8)
a0004bd0:	8552                	mv	a0,s4
a0004bd2:	85d6                	mv	a1,s5
a0004bd4:	f74fd0ef          	jal	ra,a0002348 <__divdf3>
a0004bd8:	147d                	addi	s0,s0,-1
a0004bda:	8a2a                	mv	s4,a0
a0004bdc:	8aae                	mv	s5,a1
a0004bde:	01140793          	addi	a5,s0,17
a0004be2:	02200713          	li	a4,34
a0004be6:	0237b913          	sltiu	s2,a5,35
a0004bea:	02f76263          	bltu	a4,a5,a0004c0e <print_exponential_number+0x252>
a0004bee:	41f45713          	srai	a4,s0,0x1f
a0004bf2:	008747b3          	xor	a5,a4,s0
a0004bf6:	40e78733          	sub	a4,a5,a4
a0004bfa:	a00077b7          	lui	a5,0xa0007
a0004bfe:	4a078793          	addi	a5,a5,1184 # a00074a0 <__psram_limit+0xf7c074a0>
a0004c02:	06e7978b          	addsl	a5,a5,a4,3
a0004c06:	0007aa03          	lw	s4,0(a5)
a0004c0a:	0047aa83          	lw	s5,4(a5)
a0004c0e:	2cbdb78b          	extu	a5,s11,11,11
a0004c12:	30078463          	beqz	a5,a0004f1a <print_exponential_number+0x55e>
a0004c16:	5771                	li	a4,-4
a0004c18:	fff48793          	addi	a5,s1,-1
a0004c1c:	4c01                	li	s8,0
a0004c1e:	00e44963          	blt	s0,a4,a0004c30 <print_exponential_number+0x274>
a0004c22:	e091                	bnez	s1,a0004c26 <print_exponential_number+0x26a>
a0004c24:	4485                	li	s1,1
a0004c26:	4c01                	li	s8,0
a0004c28:	00945463          	bge	s0,s1,a0004c30 <print_exponential_number+0x274>
a0004c2c:	8f81                	sub	a5,a5,s0
a0004c2e:	4c05                	li	s8,1
a0004c30:	84be                	mv	s1,a5
a0004c32:	0007d363          	bgez	a5,a0004c38 <print_exponential_number+0x27c>
a0004c36:	4481                	li	s1,0
a0004c38:	400ded93          	ori	s11,s11,1024
a0004c3c:	00045963          	bgez	s0,a0004c4e <print_exponential_number+0x292>
a0004c40:	4c85                	li	s9,1
a0004c42:	00091363          	bnez	s2,a0004c48 <print_exponential_number+0x28c>
a0004c46:	4c81                	li	s9,0
a0004c48:	000c1763          	bnez	s8,a0004c56 <print_exponential_number+0x29a>
a0004c4c:	a085                	j	a0004cac <print_exponential_number+0x2f0>
a0004c4e:	000c1463          	bnez	s8,a0004c56 <print_exponential_number+0x29a>
a0004c52:	ec21                	bnez	s0,a0004caa <print_exponential_number+0x2ee>
a0004c54:	4c01                	li	s8,0
a0004c56:	57f2                	lw	a5,60(sp)
a0004c58:	c789                	beqz	a5,a0004c62 <print_exponential_number+0x2a6>
a0004c5a:	800007b7          	lui	a5,0x80000
a0004c5e:	0167cb33          	xor	s6,a5,s6
a0004c62:	86a6                	mv	a3,s1
a0004c64:	85de                	mv	a1,s7
a0004c66:	865a                	mv	a2,s6
a0004c68:	18a8                	addi	a0,sp,120
a0004c6a:	3a95                	jal	a00045de <get_components>
a0004c6c:	08814783          	lbu	a5,136(sp)
a0004c70:	4a0a                	lw	s4,128(sp)
a0004c72:	4a9a                	lw	s5,132(sp)
a0004c74:	de3e                	sw	a5,60(sp)
a0004c76:	5966                	lw	s2,120(sp)
a0004c78:	59f6                	lw	s3,124(sp)
a0004c7a:	180c1463          	bnez	s8,a0004e02 <print_exponential_number+0x446>
a0004c7e:	01304763          	bgtz	s3,a0004c8c <print_exponential_number+0x2d0>
a0004c82:	00099a63          	bnez	s3,a0004c96 <print_exponential_number+0x2da>
a0004c86:	47a5                	li	a5,9
a0004c88:	0127f763          	bgeu	a5,s2,a0004c96 <print_exponential_number+0x2da>
a0004c8c:	0405                	addi	s0,s0,1
a0004c8e:	4a01                	li	s4,0
a0004c90:	4a81                	li	s5,0
a0004c92:	4905                	li	s2,1
a0004c94:	4981                	li	s3,0
a0004c96:	06340793          	addi	a5,s0,99
a0004c9a:	0c600713          	li	a4,198
a0004c9e:	4c01                	li	s8,0
a0004ca0:	4b95                	li	s7,5
a0004ca2:	18f76e63          	bltu	a4,a5,a0004e3e <print_exponential_number+0x482>
a0004ca6:	4b91                	li	s7,4
a0004ca8:	aa59                	j	a0004e3e <print_exponential_number+0x482>
a0004caa:	4c81                	li	s9,0
a0004cac:	d4d2                	sw	s4,104(sp)
a0004cae:	d6d6                	sw	s5,108(sp)
a0004cb0:	07910823          	sb	s9,112(sp)
a0004cb4:	8652                	mv	a2,s4
a0004cb6:	86d6                	mv	a3,s5
a0004cb8:	855e                	mv	a0,s7
a0004cba:	85da                	mv	a1,s6
a0004cbc:	0a0c8a63          	beqz	s9,a0004d70 <print_exponential_number+0x3b4>
a0004cc0:	f11fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004cc4:	e85fe0ef          	jal	ra,a0003b48 <__fixdfdi>
a0004cc8:	892a                	mv	s2,a0
a0004cca:	89ae                	mv	s3,a1
a0004ccc:	f81fe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004cd0:	862a                	mv	a2,a0
a0004cd2:	86ae                	mv	a3,a1
a0004cd4:	0a0c8163          	beqz	s9,a0004d76 <print_exponential_number+0x3ba>
a0004cd8:	8652                	mv	a2,s4
a0004cda:	86d6                	mv	a3,s5
a0004cdc:	e6cfd0ef          	jal	ra,a0002348 <__divdf3>
a0004ce0:	86ae                	mv	a3,a1
a0004ce2:	862a                	mv	a2,a0
a0004ce4:	85da                	mv	a1,s6
a0004ce6:	855e                	mv	a0,s7
a0004ce8:	c82fe0ef          	jal	ra,a000316a <__subdf3>
a0004cec:	a00077b7          	lui	a5,0xa0007
a0004cf0:	4a078793          	addi	a5,a5,1184 # a00074a0 <__psram_limit+0xf7c074a0>
a0004cf4:	0697978b          	addsl	a5,a5,s1,3
a0004cf8:	0007ac03          	lw	s8,0(a5)
a0004cfc:	0047ac83          	lw	s9,4(a5)
a0004d00:	8a2a                	mv	s4,a0
a0004d02:	8aae                	mv	s5,a1
a0004d04:	4641                	li	a2,16
a0004d06:	10ac                	addi	a1,sp,104
a0004d08:	0888                	addi	a0,sp,80
a0004d0a:	9c0ff0ef          	jal	ra,a0003eca <memcpy>
a0004d0e:	8662                	mv	a2,s8
a0004d10:	86e6                	mv	a3,s9
a0004d12:	088c                	addi	a1,sp,80
a0004d14:	18a8                	addi	a0,sp,120
a0004d16:	3135                	jal	a0004942 <update_normalization>
a0004d18:	08014783          	lbu	a5,128(sp)
a0004d1c:	5666                	lw	a2,120(sp)
a0004d1e:	56f6                	lw	a3,124(sp)
a0004d20:	8552                	mv	a0,s4
a0004d22:	85d6                	mv	a1,s5
a0004d24:	cfb1                	beqz	a5,a0004d80 <print_exponential_number+0x3c4>
a0004d26:	eabfd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004d2a:	8a2a                	mv	s4,a0
a0004d2c:	8aae                	mv	s5,a1
a0004d2e:	a0007b37          	lui	s6,0xa0007
a0004d32:	e8b1                	bnez	s1,a0004d86 <print_exponential_number+0x3ca>
a0004d34:	41cb2b83          	lw	s7,1052(s6) # a000741c <__psram_limit+0xf7c0741c>
a0004d38:	418b2b03          	lw	s6,1048(s6)
a0004d3c:	4c81                	li	s9,0
a0004d3e:	86de                	mv	a3,s7
a0004d40:	865a                	mv	a2,s6
a0004d42:	d33fd0ef          	jal	ra,a0002a74 <__gedf2>
a0004d46:	41f55693          	srai	a3,a0,0x1f
a0004d4a:	fff6c613          	not	a2,a3
a0004d4e:	01f65c13          	srli	s8,a2,0x1f
a0004d52:	86de                	mv	a3,s7
a0004d54:	865a                	mv	a2,s6
a0004d56:	8552                	mv	a0,s4
a0004d58:	85d6                	mv	a1,s5
a0004d5a:	c1891977          	add64	s2,s2,s8
a0004d5e:	c73fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004d62:	e501                	bnez	a0,a0004d6a <print_exponential_number+0x3ae>
a0004d64:	ffe97713          	andi	a4,s2,-2
a0004d68:	893a                	mv	s2,a4
a0004d6a:	4a01                	li	s4,0
a0004d6c:	4a81                	li	s5,0
a0004d6e:	bf01                	j	a0004c7e <print_exponential_number+0x2c2>
a0004d70:	dd8fd0ef          	jal	ra,a0002348 <__divdf3>
a0004d74:	bf81                	j	a0004cc4 <print_exponential_number+0x308>
a0004d76:	8552                	mv	a0,s4
a0004d78:	85d6                	mv	a1,s5
a0004d7a:	e57fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004d7e:	b78d                	j	a0004ce0 <print_exponential_number+0x324>
a0004d80:	dc8fd0ef          	jal	ra,a0002348 <__divdf3>
a0004d84:	b75d                	j	a0004d2a <print_exponential_number+0x36e>
a0004d86:	dc3fe0ef          	jal	ra,a0003b48 <__fixdfdi>
a0004d8a:	c4aa                	sw	a0,72(sp)
a0004d8c:	c6ae                	sw	a1,76(sp)
a0004d8e:	ebffe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004d92:	862a                	mv	a2,a0
a0004d94:	86ae                	mv	a3,a1
a0004d96:	8552                	mv	a0,s4
a0004d98:	85d6                	mv	a1,s5
a0004d9a:	bd0fe0ef          	jal	ra,a000316a <__subdf3>
a0004d9e:	41cb2b83          	lw	s7,1052(s6)
a0004da2:	418b2b03          	lw	s6,1048(s6)
a0004da6:	c2ae                	sw	a1,68(sp)
a0004da8:	86de                	mv	a3,s7
a0004daa:	865a                	mv	a2,s6
a0004dac:	c0aa                	sw	a0,64(sp)
a0004dae:	cc7fd0ef          	jal	ra,a0002a74 <__gedf2>
a0004db2:	4706                	lw	a4,64(sp)
a0004db4:	4796                	lw	a5,68(sp)
a0004db6:	41f55693          	srai	a3,a0,0x1f
a0004dba:	4826                	lw	a6,72(sp)
a0004dbc:	48b6                	lw	a7,76(sp)
a0004dbe:	fff6c613          	not	a2,a3
a0004dc2:	01f65a13          	srli	s4,a2,0x1f
a0004dc6:	4a81                	li	s5,0
a0004dc8:	865a                	mv	a2,s6
a0004dca:	86de                	mv	a3,s7
a0004dcc:	853a                	mv	a0,a4
a0004dce:	85be                	mv	a1,a5
a0004dd0:	c10a1a77          	add64	s4,s4,a6
a0004dd4:	bfdfd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004dd8:	e501                	bnez	a0,a0004de0 <print_exponential_number+0x424>
a0004dda:	ffea7713          	andi	a4,s4,-2
a0004dde:	8a3a                	mv	s4,a4
a0004de0:	8552                	mv	a0,s4
a0004de2:	85d6                	mv	a1,s5
a0004de4:	e69fe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004de8:	862a                	mv	a2,a0
a0004dea:	86ae                	mv	a3,a1
a0004dec:	8562                	mv	a0,s8
a0004dee:	85e6                	mv	a1,s9
a0004df0:	d33fd0ef          	jal	ra,a0002b22 <__ledf2>
a0004df4:	e8a045e3          	bgtz	a0,a0004c7e <print_exponential_number+0x2c2>
a0004df8:	4705                	li	a4,1
a0004dfa:	4781                	li	a5,0
a0004dfc:	c0e91977          	add64	s2,s2,a4
a0004e00:	b7ad                	j	a0004d6a <print_exponential_number+0x3ae>
a0004e02:	6b85                	lui	s7,0x1
a0004e04:	800b8b93          	addi	s7,s7,-2048 # 800 <__RFTLV_SIZE_HOLE>
a0004e08:	017dfbb3          	and	s7,s11,s7
a0004e0c:	020b8963          	beqz	s7,a0004e3e <print_exponential_number+0x482>
a0004e10:	57fd                	li	a5,-1
a0004e12:	4b81                	li	s7,0
a0004e14:	02f44563          	blt	s0,a5,a0004e3e <print_exponential_number+0x482>
a0004e18:	854a                	mv	a0,s2
a0004e1a:	85ce                	mv	a1,s3
a0004e1c:	e31fe0ef          	jal	ra,a0003c4c <__floatdidf>
a0004e20:	a00077b7          	lui	a5,0xa0007
a0004e24:	00140b13          	addi	s6,s0,1
a0004e28:	4a078793          	addi	a5,a5,1184 # a00074a0 <__psram_limit+0xf7c074a0>
a0004e2c:	0767978b          	addsl	a5,a5,s6,3
a0004e30:	4390                	lw	a2,0(a5)
a0004e32:	43d4                	lw	a3,4(a5)
a0004e34:	b9dfd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004e38:	e119                	bnez	a0,a0004e3e <print_exponential_number+0x482>
a0004e3a:	14fd                	addi	s1,s1,-1
a0004e3c:	845a                	mv	s0,s6
a0004e3e:	002dfb13          	andi	s6,s11,2
a0004e42:	000b0563          	beqz	s6,a0004e4c <print_exponential_number+0x490>
a0004e46:	4781                	li	a5,0
a0004e48:	000b9863          	bnez	s7,a0004e58 <print_exponential_number+0x49c>
a0004e4c:	5762                	lw	a4,56(sp)
a0004e4e:	4781                	li	a5,0
a0004e50:	00ebf463          	bgeu	s7,a4,a0004e58 <print_exponential_number+0x49c>
a0004e54:	417707b3          	sub	a5,a4,s7
a0004e58:	476e                	lw	a4,216(sp)
a0004e5a:	c43e                	sw	a5,8(sp)
a0004e5c:	57c2                	lw	a5,48(sp)
a0004e5e:	ca3a                	sw	a4,20(sp)
a0004e60:	475e                	lw	a4,212(sp)
a0004e62:	58d2                	lw	a7,52(sp)
a0004e64:	5832                	lw	a6,44(sp)
a0004e66:	c83a                	sw	a4,16(sp)
a0004e68:	5772                	lw	a4,60(sp)
a0004e6a:	c03e                	sw	a5,0(sp)
a0004e6c:	8652                	mv	a2,s4
a0004e6e:	c66e                	sw	s11,12(sp)
a0004e70:	c226                	sw	s1,4(sp)
a0004e72:	87ea                	mv	a5,s10
a0004e74:	86d6                	mv	a3,s5
a0004e76:	854a                	mv	a0,s2
a0004e78:	85ce                	mv	a1,s3
a0004e7a:	8f7ff0ef          	jal	ra,a0004770 <print_broken_up_decimal.isra.0>
a0004e7e:	862a                	mv	a2,a0
a0004e80:	040c1f63          	bnez	s8,a0004ede <print_exponential_number+0x522>
a0004e84:	020dfd93          	andi	s11,s11,32
a0004e88:	04500513          	li	a0,69
a0004e8c:	000d9463          	bnez	s11,a0004e94 <print_exponential_number+0x4d8>
a0004e90:	06500513          	li	a0,101
a0004e94:	55b2                	lw	a1,44(sp)
a0004e96:	56c2                	lw	a3,48(sp)
a0004e98:	00160493          	addi	s1,a2,1
a0004e9c:	9d02                	jalr	s10
a0004e9e:	41f45593          	srai	a1,s0,0x1f
a0004ea2:	04805e63          	blez	s0,a0004efe <print_exponential_number+0x542>
a0004ea6:	8722                	mv	a4,s0
a0004ea8:	87ae                	mv	a5,a1
a0004eaa:	4695                	li	a3,5
a0004eac:	c436                	sw	a3,8(sp)
a0004eae:	55b2                	lw	a1,44(sp)
a0004eb0:	56c2                	lw	a3,48(sp)
a0004eb2:	1bfd                	addi	s7,s7,-1
a0004eb4:	8626                	mv	a2,s1
a0004eb6:	c25e                	sw	s7,4(sp)
a0004eb8:	c002                	sw	zero,0(sp)
a0004eba:	48a9                	li	a7,10
a0004ebc:	01f45813          	srli	a6,s0,0x1f
a0004ec0:	856a                	mv	a0,s10
a0004ec2:	d10ff0ef          	jal	ra,a00043d2 <print_integer>
a0004ec6:	862a                	mv	a2,a0
a0004ec8:	000b0b63          	beqz	s6,a0004ede <print_exponential_number+0x522>
a0004ecc:	57d2                	lw	a5,52(sp)
a0004ece:	40f50433          	sub	s0,a0,a5
a0004ed2:	57d2                	lw	a5,52(sp)
a0004ed4:	00878633          	add	a2,a5,s0
a0004ed8:	57e2                	lw	a5,56(sp)
a0004eda:	02f46963          	bltu	s0,a5,a0004f0c <print_exponential_number+0x550>
a0004ede:	40be                	lw	ra,204(sp)
a0004ee0:	442e                	lw	s0,200(sp)
a0004ee2:	449e                	lw	s1,196(sp)
a0004ee4:	490e                	lw	s2,192(sp)
a0004ee6:	59fa                	lw	s3,188(sp)
a0004ee8:	5a6a                	lw	s4,184(sp)
a0004eea:	5ada                	lw	s5,180(sp)
a0004eec:	5b4a                	lw	s6,176(sp)
a0004eee:	5bba                	lw	s7,172(sp)
a0004ef0:	5c2a                	lw	s8,168(sp)
a0004ef2:	5c9a                	lw	s9,164(sp)
a0004ef4:	5d0a                	lw	s10,160(sp)
a0004ef6:	4dfa                	lw	s11,156(sp)
a0004ef8:	8532                	mv	a0,a2
a0004efa:	6169                	addi	sp,sp,208
a0004efc:	8082                	ret
a0004efe:	8622                	mv	a2,s0
a0004f00:	86ae                	mv	a3,a1
a0004f02:	4701                	li	a4,0
a0004f04:	4781                	li	a5,0
a0004f06:	c2c71777          	sub64	a4,a4,a2
a0004f0a:	b745                	j	a0004eaa <print_exponential_number+0x4ee>
a0004f0c:	56c2                	lw	a3,48(sp)
a0004f0e:	55b2                	lw	a1,44(sp)
a0004f10:	02000513          	li	a0,32
a0004f14:	0405                	addi	s0,s0,1
a0004f16:	9d02                	jalr	s10
a0004f18:	bf6d                	j	a0004ed2 <print_exponential_number+0x516>
a0004f1a:	d2045ce3          	bgez	s0,a0004c52 <print_exponential_number+0x296>
a0004f1e:	4c85                	li	s9,1
a0004f20:	4c01                	li	s8,0
a0004f22:	d80915e3          	bnez	s2,a0004cac <print_exponential_number+0x2f0>
a0004f26:	b305                	j	a0004c46 <print_exponential_number+0x28a>

a0004f28 <print_floating_point>:
a0004f28:	7135                	addi	sp,sp,-160
a0004f2a:	c552                	sw	s4,136(sp)
a0004f2c:	c356                	sw	s5,132(sp)
a0004f2e:	c15a                	sw	s6,128(sp)
a0004f30:	dede                	sw	s7,124(sp)
a0004f32:	8a2a                	mv	s4,a0
a0004f34:	8aae                	mv	s5,a1
a0004f36:	8b32                	mv	s6,a2
a0004f38:	8bb6                	mv	s7,a3
a0004f3a:	863a                	mv	a2,a4
a0004f3c:	86be                	mv	a3,a5
a0004f3e:	853a                	mv	a0,a4
a0004f40:	85be                	mv	a1,a5
a0004f42:	cd22                	sw	s0,152(sp)
a0004f44:	cb26                	sw	s1,148(sp)
a0004f46:	c94a                	sw	s2,144(sp)
a0004f48:	c74e                	sw	s3,140(sp)
a0004f4a:	dce2                	sw	s8,120(sp)
a0004f4c:	d6ee                	sw	s11,108(sp)
a0004f4e:	cf06                	sw	ra,156(sp)
a0004f50:	dae6                	sw	s9,116(sp)
a0004f52:	d8ea                	sw	s10,112(sp)
a0004f54:	598a                	lw	s3,160(sp)
a0004f56:	0a414d83          	lbu	s11,164(sp)
a0004f5a:	843a                	mv	s0,a4
a0004f5c:	84be                	mv	s1,a5
a0004f5e:	8942                	mv	s2,a6
a0004f60:	8c46                	mv	s8,a7
a0004f62:	a6ffd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004f66:	cd05                	beqz	a0,a0004f9e <print_floating_point+0x76>
a0004f68:	a0007737          	lui	a4,0xa0007
a0004f6c:	88ce                	mv	a7,s3
a0004f6e:	8862                	mv	a6,s8
a0004f70:	478d                	li	a5,3
a0004f72:	3f870713          	addi	a4,a4,1016 # a00073f8 <__psram_limit+0xf7c073f8>
a0004f76:	446a                	lw	s0,152(sp)
a0004f78:	40fa                	lw	ra,156(sp)
a0004f7a:	44da                	lw	s1,148(sp)
a0004f7c:	494a                	lw	s2,144(sp)
a0004f7e:	49ba                	lw	s3,140(sp)
a0004f80:	5c66                	lw	s8,120(sp)
a0004f82:	5cd6                	lw	s9,116(sp)
a0004f84:	5d46                	lw	s10,112(sp)
a0004f86:	5db6                	lw	s11,108(sp)
a0004f88:	86de                	mv	a3,s7
a0004f8a:	865a                	mv	a2,s6
a0004f8c:	5bf6                	lw	s7,124(sp)
a0004f8e:	4b0a                	lw	s6,128(sp)
a0004f90:	85d6                	mv	a1,s5
a0004f92:	8552                	mv	a0,s4
a0004f94:	4a9a                	lw	s5,132(sp)
a0004f96:	4a2a                	lw	s4,136(sp)
a0004f98:	610d                	addi	sp,sp,160
a0004f9a:	b8aff06f          	j	a0004324 <out_rev_>
a0004f9e:	a00077b7          	lui	a5,0xa0007
a0004fa2:	4807a603          	lw	a2,1152(a5) # a0007480 <__psram_limit+0xf7c07480>
a0004fa6:	4847a683          	lw	a3,1156(a5)
a0004faa:	8522                	mv	a0,s0
a0004fac:	85a6                	mv	a1,s1
a0004fae:	b75fd0ef          	jal	ra,a0002b22 <__ledf2>
a0004fb2:	00055a63          	bgez	a0,a0004fc6 <print_floating_point+0x9e>
a0004fb6:	a0007737          	lui	a4,0xa0007
a0004fba:	88ce                	mv	a7,s3
a0004fbc:	8862                	mv	a6,s8
a0004fbe:	4791                	li	a5,4
a0004fc0:	3fc70713          	addi	a4,a4,1020 # a00073fc <__psram_limit+0xf7c073fc>
a0004fc4:	bf4d                	j	a0004f76 <print_floating_point+0x4e>
a0004fc6:	a00077b7          	lui	a5,0xa0007
a0004fca:	4887a603          	lw	a2,1160(a5) # a0007488 <__psram_limit+0xf7c07488>
a0004fce:	48c7a683          	lw	a3,1164(a5)
a0004fd2:	8522                	mv	a0,s0
a0004fd4:	85a6                	mv	a1,s1
a0004fd6:	a9ffd0ef          	jal	ra,a0002a74 <__gedf2>
a0004fda:	02a05363          	blez	a0,a0005000 <print_floating_point+0xd8>
a0004fde:	0049f793          	andi	a5,s3,4
a0004fe2:	cb89                	beqz	a5,a0004ff4 <print_floating_point+0xcc>
a0004fe4:	a0007737          	lui	a4,0xa0007
a0004fe8:	3f070713          	addi	a4,a4,1008 # a00073f0 <__psram_limit+0xf7c073f0>
a0004fec:	4791                	li	a5,4
a0004fee:	88ce                	mv	a7,s3
a0004ff0:	8862                	mv	a6,s8
a0004ff2:	b751                	j	a0004f76 <print_floating_point+0x4e>
a0004ff4:	a0007737          	lui	a4,0xa0007
a0004ff8:	3ec70713          	addi	a4,a4,1004 # a00073ec <__psram_limit+0xf7c073ec>
a0004ffc:	478d                	li	a5,3
a0004ffe:	bfc5                	j	a0004fee <print_floating_point+0xc6>
a0005000:	04010d13          	addi	s10,sp,64
a0005004:	060d9663          	bnez	s11,a0005070 <print_floating_point+0x148>
a0005008:	a00077b7          	lui	a5,0xa0007
a000500c:	4907a603          	lw	a2,1168(a5) # a0007490 <__psram_limit+0xf7c07490>
a0005010:	4947a683          	lw	a3,1172(a5)
a0005014:	8522                	mv	a0,s0
a0005016:	85a6                	mv	a1,s1
a0005018:	a5dfd0ef          	jal	ra,a0002a74 <__gedf2>
a000501c:	00a04e63          	bgtz	a0,a0005038 <print_floating_point+0x110>
a0005020:	a00077b7          	lui	a5,0xa0007
a0005024:	4987a603          	lw	a2,1176(a5) # a0007498 <__psram_limit+0xf7c07498>
a0005028:	49c7a683          	lw	a3,1180(a5)
a000502c:	8522                	mv	a0,s0
a000502e:	85a6                	mv	a1,s1
a0005030:	af3fd0ef          	jal	ra,a0002b22 <__ledf2>
a0005034:	02055e63          	bgez	a0,a0005070 <print_floating_point+0x148>
a0005038:	c402                	sw	zero,8(sp)
a000503a:	c26a                	sw	s10,4(sp)
a000503c:	c04e                	sw	s3,0(sp)
a000503e:	88e2                	mv	a7,s8
a0005040:	884a                	mv	a6,s2
a0005042:	8722                	mv	a4,s0
a0005044:	87a6                	mv	a5,s1
a0005046:	86de                	mv	a3,s7
a0005048:	865a                	mv	a2,s6
a000504a:	85d6                	mv	a1,s5
a000504c:	8552                	mv	a0,s4
a000504e:	96fff0ef          	jal	ra,a00049bc <print_exponential_number>
a0005052:	40fa                	lw	ra,156(sp)
a0005054:	446a                	lw	s0,152(sp)
a0005056:	44da                	lw	s1,148(sp)
a0005058:	494a                	lw	s2,144(sp)
a000505a:	49ba                	lw	s3,140(sp)
a000505c:	4a2a                	lw	s4,136(sp)
a000505e:	4a9a                	lw	s5,132(sp)
a0005060:	4b0a                	lw	s6,128(sp)
a0005062:	5bf6                	lw	s7,124(sp)
a0005064:	5c66                	lw	s8,120(sp)
a0005066:	5cd6                	lw	s9,116(sp)
a0005068:	5d46                	lw	s10,112(sp)
a000506a:	5db6                	lw	s11,108(sp)
a000506c:	610d                	addi	sp,sp,160
a000506e:	8082                	ret
a0005070:	4009f793          	andi	a5,s3,1024
a0005074:	c39d                	beqz	a5,a000509a <print_floating_point+0x172>
a0005076:	4c81                	li	s9,0
a0005078:	47c5                	li	a5,17
a000507a:	03000713          	li	a4,48
a000507e:	02000693          	li	a3,32
a0005082:	0127f863          	bgeu	a5,s2,a0005092 <print_floating_point+0x16a>
a0005086:	019d570b          	srb	a4,s10,s9,0
a000508a:	0c85                	addi	s9,s9,1
a000508c:	197d                	addi	s2,s2,-1
a000508e:	fedc9ae3          	bne	s9,a3,a0005082 <print_floating_point+0x15a>
a0005092:	000d8663          	beqz	s11,a000509e <print_floating_point+0x176>
a0005096:	c466                	sw	s9,8(sp)
a0005098:	b74d                	j	a000503a <print_floating_point+0x112>
a000509a:	4919                	li	s2,6
a000509c:	bfe9                	j	a0005076 <print_floating_point+0x14e>
a000509e:	86ca                	mv	a3,s2
a00050a0:	85a2                	mv	a1,s0
a00050a2:	8626                	mv	a2,s1
a00050a4:	1028                	addi	a0,sp,40
a00050a6:	d38ff0ef          	jal	ra,a00045de <get_components>
a00050aa:	03814703          	lbu	a4,56(sp)
a00050ae:	5642                	lw	a2,48(sp)
a00050b0:	56d2                	lw	a3,52(sp)
a00050b2:	5522                	lw	a0,40(sp)
a00050b4:	55b2                	lw	a1,44(sp)
a00050b6:	ca66                	sw	s9,20(sp)
a00050b8:	c86a                	sw	s10,16(sp)
a00050ba:	c64e                	sw	s3,12(sp)
a00050bc:	c462                	sw	s8,8(sp)
a00050be:	c24a                	sw	s2,4(sp)
a00050c0:	c05e                	sw	s7,0(sp)
a00050c2:	88da                	mv	a7,s6
a00050c4:	8856                	mv	a6,s5
a00050c6:	87d2                	mv	a5,s4
a00050c8:	ea8ff0ef          	jal	ra,a0004770 <print_broken_up_decimal.isra.0>
a00050cc:	b759                	j	a0005052 <print_floating_point+0x12a>

a00050ce <__vsnprintf>:
a00050ce:	7175                	addi	sp,sp,-144
a00050d0:	c326                	sw	s1,132(sp)
a00050d2:	d6de                	sw	s7,108(sp)
a00050d4:	d4e2                	sw	s8,104(sp)
a00050d6:	d2e6                	sw	s9,100(sp)
a00050d8:	d0ea                	sw	s10,96(sp)
a00050da:	c706                	sw	ra,140(sp)
a00050dc:	c522                	sw	s0,136(sp)
a00050de:	c14a                	sw	s2,128(sp)
a00050e0:	dece                	sw	s3,124(sp)
a00050e2:	dcd2                	sw	s4,120(sp)
a00050e4:	dad6                	sw	s5,116(sp)
a00050e6:	d8da                	sw	s6,112(sp)
a00050e8:	ceee                	sw	s11,92(sp)
a00050ea:	8c2a                	mv	s8,a0
a00050ec:	8bae                	mv	s7,a1
a00050ee:	8d32                	mv	s10,a2
a00050f0:	8cb6                	mv	s9,a3
a00050f2:	84ba                	mv	s1,a4
a00050f4:	e999                	bnez	a1,a000510a <__vsnprintf+0x3c>
a00050f6:	a00047b7          	lui	a5,0xa0004
a00050fa:	75e78793          	addi	a5,a5,1886 # a000475e <__psram_limit+0xf7c0475e>
a00050fe:	00f50663          	beq	a0,a5,a000510a <__vsnprintf+0x3c>
a0005102:	a0004c37          	lui	s8,0xa0004
a0005106:	322c0c13          	addi	s8,s8,802 # a0004322 <__psram_limit+0xf7c04322>
a000510a:	67c1                	lui	a5,0x10
a000510c:	17fd                	addi	a5,a5,-1
a000510e:	dc3e                	sw	a5,56(sp)
a0005110:	67a5                	lui	a5,0x9
a0005112:	04178793          	addi	a5,a5,65 # 9041 <wifi_ram_max_size+0x1041>
a0005116:	4301                	li	t1,0
a0005118:	de3e                	sw	a5,60(sp)
a000511a:	ae29                	j	a0005434 <__vsnprintf+0x366>
a000511c:	02500793          	li	a5,37
a0005120:	0c85                	addi	s9,s9,1
a0005122:	00f50863          	beq	a0,a5,a0005132 <__vsnprintf+0x64>
a0005126:	00130413          	addi	s0,t1,1
a000512a:	86ea                	mv	a3,s10
a000512c:	861a                	mv	a2,t1
a000512e:	85de                	mv	a1,s7
a0005130:	a3d5                	j	a0005714 <__vsnprintf+0x646>
a0005132:	4401                	li	s0,0
a0005134:	02b00793          	li	a5,43
a0005138:	02d00613          	li	a2,45
a000513c:	03000513          	li	a0,48
a0005140:	02000813          	li	a6,32
a0005144:	02300893          	li	a7,35
a0005148:	a801                	j	a0005158 <__vsnprintf+0x8a>
a000514a:	02c70d63          	beq	a4,a2,a0005184 <__vsnprintf+0xb6>
a000514e:	02a71063          	bne	a4,a0,a000516e <__vsnprintf+0xa0>
a0005152:	00146413          	ori	s0,s0,1
a0005156:	8cb6                	mv	s9,a3
a0005158:	86e6                	mv	a3,s9
a000515a:	9816c70b          	lbuia	a4,(a3),1,0
a000515e:	02f70663          	beq	a4,a5,a000518a <__vsnprintf+0xbc>
a0005162:	fee7e4e3          	bltu	a5,a4,a000514a <__vsnprintf+0x7c>
a0005166:	03070563          	beq	a4,a6,a0005190 <__vsnprintf+0xc2>
a000516a:	03170663          	beq	a4,a7,a0005196 <__vsnprintf+0xc8>
a000516e:	fd070793          	addi	a5,a4,-48
a0005172:	0ff7f793          	zext.b	a5,a5
a0005176:	4625                	li	a2,9
a0005178:	06f66763          	bltu	a2,a5,a00051e6 <__vsnprintf+0x118>
a000517c:	4b01                	li	s6,0
a000517e:	4525                	li	a0,9
a0005180:	4829                	li	a6,10
a0005182:	a015                	j	a00051a6 <__vsnprintf+0xd8>
a0005184:	00246413          	ori	s0,s0,2
a0005188:	b7f9                	j	a0005156 <__vsnprintf+0x88>
a000518a:	00446413          	ori	s0,s0,4
a000518e:	b7e1                	j	a0005156 <__vsnprintf+0x88>
a0005190:	00846413          	ori	s0,s0,8
a0005194:	b7c9                	j	a0005156 <__vsnprintf+0x88>
a0005196:	01046413          	ori	s0,s0,16
a000519a:	bf75                	j	a0005156 <__vsnprintf+0x88>
a000519c:	210b170b          	mula	a4,s6,a6
a00051a0:	8cb2                	mv	s9,a2
a00051a2:	fd070b13          	addi	s6,a4,-48
a00051a6:	8666                	mv	a2,s9
a00051a8:	9816470b          	lbuia	a4,(a2),1,0
a00051ac:	fd070693          	addi	a3,a4,-48
a00051b0:	0ff6f693          	zext.b	a3,a3
a00051b4:	fed574e3          	bgeu	a0,a3,a000519c <__vsnprintf+0xce>
a00051b8:	000cc683          	lbu	a3,0(s9)
a00051bc:	02e00713          	li	a4,46
a00051c0:	10e69563          	bne	a3,a4,a00052ca <__vsnprintf+0x1fc>
a00051c4:	001cc603          	lbu	a2,1(s9)
a00051c8:	4525                	li	a0,9
a00051ca:	001c8713          	addi	a4,s9,1
a00051ce:	fd060693          	addi	a3,a2,-48
a00051d2:	0ff6f693          	zext.b	a3,a3
a00051d6:	40046413          	ori	s0,s0,1024
a00051da:	0cd56b63          	bltu	a0,a3,a00052b0 <__vsnprintf+0x1e2>
a00051de:	4801                	li	a6,0
a00051e0:	48a5                	li	a7,9
a00051e2:	4e29                	li	t3,10
a00051e4:	a02d                	j	a000520e <__vsnprintf+0x140>
a00051e6:	02a00613          	li	a2,42
a00051ea:	4b01                	li	s6,0
a00051ec:	fcc716e3          	bne	a4,a2,a00051b8 <__vsnprintf+0xea>
a00051f0:	5844cb0b          	lwia	s6,(s1),4,0
a00051f4:	000b5663          	bgez	s6,a0005200 <__vsnprintf+0x132>
a00051f8:	00246413          	ori	s0,s0,2
a00051fc:	41600b33          	neg	s6,s6
a0005200:	8cb6                	mv	s9,a3
a0005202:	bf5d                	j	a00051b8 <__vsnprintf+0xea>
a0005204:	21c8168b          	mula	a3,a6,t3
a0005208:	872a                	mv	a4,a0
a000520a:	fd068813          	addi	a6,a3,-48
a000520e:	853a                	mv	a0,a4
a0005210:	9815468b          	lbuia	a3,(a0),1,0
a0005214:	fd068613          	addi	a2,a3,-48
a0005218:	0ff67613          	zext.b	a2,a2
a000521c:	fec8f4e3          	bgeu	a7,a2,a0005204 <__vsnprintf+0x136>
a0005220:	8cba                	mv	s9,a4
a0005222:	981cc68b          	lbuia	a3,(s9),1,0
a0005226:	06c00613          	li	a2,108
a000522a:	0ac68e63          	beq	a3,a2,a00052e6 <__vsnprintf+0x218>
a000522e:	0ad66163          	bltu	a2,a3,a00052d0 <__vsnprintf+0x202>
a0005232:	06800613          	li	a2,104
a0005236:	0cc68163          	beq	a3,a2,a00052f8 <__vsnprintf+0x22a>
a000523a:	06a00613          	li	a2,106
a000523e:	0cc68763          	beq	a3,a2,a000530c <__vsnprintf+0x23e>
a0005242:	8cba                	mv	s9,a4
a0005244:	981cc50b          	lbuia	a0,(s9),1,0
a0005248:	06500713          	li	a4,101
a000524c:	02e50263          	beq	a0,a4,a0005270 <__vsnprintf+0x1a2>
a0005250:	12a76663          	bltu	a4,a0,a000537c <__vsnprintf+0x2ae>
a0005254:	04600713          	li	a4,70
a0005258:	2ee50963          	beq	a0,a4,a000554a <__vsnprintf+0x47c>
a000525c:	0ea76c63          	bltu	a4,a0,a0005354 <__vsnprintf+0x286>
a0005260:	02500713          	li	a4,37
a0005264:	4ae50163          	beq	a0,a4,a0005706 <__vsnprintf+0x638>
a0005268:	04500713          	li	a4,69
a000526c:	eae51de3          	bne	a0,a4,a0005126 <__vsnprintf+0x58>
a0005270:	0df57713          	andi	a4,a0,223
a0005274:	04700693          	li	a3,71
a0005278:	00d71863          	bne	a4,a3,a0005288 <__vsnprintf+0x1ba>
a000527c:	6785                	lui	a5,0x1
a000527e:	80078793          	addi	a5,a5,-2048 # 800 <__RFTLV_SIZE_HOLE>
a0005282:	8c5d                	or	s0,s0,a5
a0005284:	0fd57513          	andi	a0,a0,253
a0005288:	04500713          	li	a4,69
a000528c:	00e51463          	bne	a0,a4,a0005294 <__vsnprintf+0x1c6>
a0005290:	02046413          	ori	s0,s0,32
a0005294:	049d                	addi	s1,s1,7
a0005296:	ff84f713          	andi	a4,s1,-8
a000529a:	4310                	lw	a2,0(a4)
a000529c:	4354                	lw	a3,4(a4)
a000529e:	00870493          	addi	s1,a4,8
a00052a2:	4705                	li	a4,1
a00052a4:	c23a                	sw	a4,4(sp)
a00052a6:	c022                	sw	s0,0(sp)
a00052a8:	88da                	mv	a7,s6
a00052aa:	8732                	mv	a4,a2
a00052ac:	87b6                	mv	a5,a3
a00052ae:	ac55                	j	a0005562 <__vsnprintf+0x494>
a00052b0:	02a00693          	li	a3,42
a00052b4:	4801                	li	a6,0
a00052b6:	f6d615e3          	bne	a2,a3,a0005220 <__vsnprintf+0x152>
a00052ba:	5844c80b          	lwia	a6,(s1),4,0
a00052be:	00085363          	bgez	a6,a00052c4 <__vsnprintf+0x1f6>
a00052c2:	4801                	li	a6,0
a00052c4:	002c8713          	addi	a4,s9,2
a00052c8:	bfa1                	j	a0005220 <__vsnprintf+0x152>
a00052ca:	8766                	mv	a4,s9
a00052cc:	4801                	li	a6,0
a00052ce:	bf89                	j	a0005220 <__vsnprintf+0x152>
a00052d0:	07400613          	li	a2,116
a00052d4:	00c68663          	beq	a3,a2,a00052e0 <__vsnprintf+0x212>
a00052d8:	07a00613          	li	a2,122
a00052dc:	f6c693e3          	bne	a3,a2,a0005242 <__vsnprintf+0x174>
a00052e0:	10046413          	ori	s0,s0,256
a00052e4:	b785                	j	a0005244 <__vsnprintf+0x176>
a00052e6:	00174603          	lbu	a2,1(a4)
a00052ea:	fed61be3          	bne	a2,a3,a00052e0 <__vsnprintf+0x212>
a00052ee:	30046413          	ori	s0,s0,768
a00052f2:	00270c93          	addi	s9,a4,2
a00052f6:	b7b9                	j	a0005244 <__vsnprintf+0x176>
a00052f8:	00174603          	lbu	a2,1(a4)
a00052fc:	00d60563          	beq	a2,a3,a0005306 <__vsnprintf+0x238>
a0005300:	08046413          	ori	s0,s0,128
a0005304:	b781                	j	a0005244 <__vsnprintf+0x176>
a0005306:	0c046413          	ori	s0,s0,192
a000530a:	b7e5                	j	a00052f2 <__vsnprintf+0x224>
a000530c:	20046413          	ori	s0,s0,512
a0005310:	bf15                	j	a0005244 <__vsnprintf+0x176>
a0005312:	57f2                	lw	a5,60(sp)
a0005314:	4685                	li	a3,1
a0005316:	f9750713          	addi	a4,a0,-105
a000531a:	00e69733          	sll	a4,a3,a4
a000531e:	00f776b3          	and	a3,a4,a5
a0005322:	eea5                	bnez	a3,a000539a <__vsnprintf+0x2cc>
a0005324:	40077693          	andi	a3,a4,1024
a0005328:	2c069063          	bnez	a3,a00055e8 <__vsnprintf+0x51a>
a000532c:	08077713          	andi	a4,a4,128
a0005330:	de070be3          	beqz	a4,a0005126 <__vsnprintf+0x58>
a0005334:	5844c70b          	lwia	a4,(s1),4,0
a0005338:	6785                	lui	a5,0x1
a000533a:	00178893          	addi	a7,a5,1 # 1001 <HeapMinSize+0x1>
a000533e:	011468b3          	or	a7,s0,a7
a0005342:	3a071463          	bnez	a4,a00056ea <__vsnprintf+0x61c>
a0005346:	a0007737          	lui	a4,0xa0007
a000534a:	4829                	li	a6,10
a000534c:	4795                	li	a5,5
a000534e:	40c70713          	addi	a4,a4,1036 # a000740c <__psram_limit+0xf7c0740c>
a0005352:	a475                	j	a00055fe <__vsnprintf+0x530>
a0005354:	06300713          	li	a4,99
a0005358:	20e50d63          	beq	a0,a4,a0005572 <__vsnprintf+0x4a4>
a000535c:	06400713          	li	a4,100
a0005360:	02e50d63          	beq	a0,a4,a000539a <__vsnprintf+0x2cc>
a0005364:	05800713          	li	a4,88
a0005368:	3ae50963          	beq	a0,a4,a000571a <__vsnprintf+0x64c>
a000536c:	06200713          	li	a4,98
a0005370:	4889                	li	a7,2
a0005372:	04e50b63          	beq	a0,a4,a00053c8 <__vsnprintf+0x2fa>
a0005376:	04700713          	li	a4,71
a000537a:	bdcd                	j	a000526c <__vsnprintf+0x19e>
a000537c:	07800713          	li	a4,120
a0005380:	daa763e3          	bltu	a4,a0,a0005126 <__vsnprintf+0x58>
a0005384:	06800713          	li	a4,104
a0005388:	f8a765e3          	bltu	a4,a0,a0005312 <__vsnprintf+0x244>
a000538c:	06600713          	li	a4,102
a0005390:	1ae50f63          	beq	a0,a4,a000554e <__vsnprintf+0x480>
a0005394:	06700713          	li	a4,103
a0005398:	bdd1                	j	a000526c <__vsnprintf+0x19e>
a000539a:	07800713          	li	a4,120
a000539e:	48c1                	li	a7,16
a00053a0:	02e50863          	beq	a0,a4,a00053d0 <__vsnprintf+0x302>
a00053a4:	05800713          	li	a4,88
a00053a8:	36e50963          	beq	a0,a4,a000571a <__vsnprintf+0x64c>
a00053ac:	06f00713          	li	a4,111
a00053b0:	36e50963          	beq	a0,a4,a0005722 <__vsnprintf+0x654>
a00053b4:	06200713          	li	a4,98
a00053b8:	36e50763          	beq	a0,a4,a0005726 <__vsnprintf+0x658>
a00053bc:	06900713          	li	a4,105
a00053c0:	983d                	andi	s0,s0,-17
a00053c2:	48a9                	li	a7,10
a00053c4:	00e50763          	beq	a0,a4,a00053d2 <__vsnprintf+0x304>
a00053c8:	06400713          	li	a4,100
a00053cc:	00e50363          	beq	a0,a4,a00053d2 <__vsnprintf+0x304>
a00053d0:	984d                	andi	s0,s0,-13
a00053d2:	40047713          	andi	a4,s0,1024
a00053d6:	c311                	beqz	a4,a00053da <__vsnprintf+0x30c>
a00053d8:	9879                	andi	s0,s0,-2
a00053da:	06900693          	li	a3,105
a00053de:	20047713          	andi	a4,s0,512
a00053e2:	00d50663          	beq	a0,a3,a00053ee <__vsnprintf+0x320>
a00053e6:	06400693          	li	a3,100
a00053ea:	10d51b63          	bne	a0,a3,a0005500 <__vsnprintf+0x432>
a00053ee:	cb41                	beqz	a4,a000547e <__vsnprintf+0x3b0>
a00053f0:	049d                	addi	s1,s1,7
a00053f2:	98e1                	andi	s1,s1,-8
a00053f4:	40d8                	lw	a4,4(s1)
a00053f6:	8da6                	mv	s11,s1
a00053f8:	588dc68b          	lwia	a3,(s11),8,0
a00053fc:	41f75793          	srai	a5,a4,0x1f
a0005400:	ca3e                	sw	a5,20(sp)
a0005402:	c83e                	sw	a5,16(sp)
a0005404:	8fb5                	xor	a5,a5,a3
a0005406:	d03e                	sw	a5,32(sp)
a0005408:	47d2                	lw	a5,20(sp)
a000540a:	4642                	lw	a2,16(sp)
a000540c:	46d2                	lw	a3,20(sp)
a000540e:	8fb9                	xor	a5,a5,a4
a0005410:	d23e                	sw	a5,36(sp)
a0005412:	5792                	lw	a5,36(sp)
a0005414:	c042                	sw	a6,0(sp)
a0005416:	01f75813          	srli	a6,a4,0x1f
a000541a:	5702                	lw	a4,32(sp)
a000541c:	c422                	sw	s0,8(sp)
a000541e:	c25a                	sw	s6,4(sp)
a0005420:	c2c71777          	sub64	a4,a4,a2
a0005424:	861a                	mv	a2,t1
a0005426:	86ea                	mv	a3,s10
a0005428:	85de                	mv	a1,s7
a000542a:	8562                	mv	a0,s8
a000542c:	fa7fe0ef          	jal	ra,a00043d2 <print_integer>
a0005430:	832a                	mv	t1,a0
a0005432:	84ee                	mv	s1,s11
a0005434:	000cc503          	lbu	a0,0(s9)
a0005438:	ce0512e3          	bnez	a0,a000511c <__vsnprintf+0x4e>
a000543c:	a00047b7          	lui	a5,0xa0004
a0005440:	75e78793          	addi	a5,a5,1886 # a000475e <__psram_limit+0xf7c0475e>
a0005444:	00fc0d63          	beq	s8,a5,a000545e <__vsnprintf+0x390>
a0005448:	861a                	mv	a2,t1
a000544a:	01a36463          	bltu	t1,s10,a0005452 <__vsnprintf+0x384>
a000544e:	fffd0613          	addi	a2,s10,-1
a0005452:	c81a                	sw	t1,16(sp)
a0005454:	86ea                	mv	a3,s10
a0005456:	85de                	mv	a1,s7
a0005458:	4501                	li	a0,0
a000545a:	9c02                	jalr	s8
a000545c:	4342                	lw	t1,16(sp)
a000545e:	40ba                	lw	ra,140(sp)
a0005460:	442a                	lw	s0,136(sp)
a0005462:	449a                	lw	s1,132(sp)
a0005464:	490a                	lw	s2,128(sp)
a0005466:	59f6                	lw	s3,124(sp)
a0005468:	5a66                	lw	s4,120(sp)
a000546a:	5ad6                	lw	s5,116(sp)
a000546c:	5b46                	lw	s6,112(sp)
a000546e:	5bb6                	lw	s7,108(sp)
a0005470:	5c26                	lw	s8,104(sp)
a0005472:	5c96                	lw	s9,100(sp)
a0005474:	5d06                	lw	s10,96(sp)
a0005476:	4df6                	lw	s11,92(sp)
a0005478:	851a                	mv	a0,t1
a000547a:	6149                	addi	sp,sp,144
a000547c:	8082                	ret
a000547e:	10047713          	andi	a4,s0,256
a0005482:	00448d93          	addi	s11,s1,4
a0005486:	cb15                	beqz	a4,a00054ba <__vsnprintf+0x3ec>
a0005488:	4098                	lw	a4,0(s1)
a000548a:	41f75693          	srai	a3,a4,0x1f
a000548e:	00e05c63          	blez	a4,a00054a6 <__vsnprintf+0x3d8>
a0005492:	cc3a                	sw	a4,24(sp)
a0005494:	ce36                	sw	a3,28(sp)
a0005496:	c042                	sw	a6,0(sp)
a0005498:	47f2                	lw	a5,28(sp)
a000549a:	01f75813          	srli	a6,a4,0x1f
a000549e:	c422                	sw	s0,8(sp)
a00054a0:	4762                	lw	a4,24(sp)
a00054a2:	c25a                	sw	s6,4(sp)
a00054a4:	b741                	j	a0005424 <__vsnprintf+0x356>
a00054a6:	d43a                	sw	a4,40(sp)
a00054a8:	d636                	sw	a3,44(sp)
a00054aa:	5622                	lw	a2,40(sp)
a00054ac:	56b2                	lw	a3,44(sp)
a00054ae:	4901                	li	s2,0
a00054b0:	4981                	li	s3,0
a00054b2:	c2c91677          	sub64	a2,s2,a2
a00054b6:	cc32                	sw	a2,24(sp)
a00054b8:	bff1                	j	a0005494 <__vsnprintf+0x3c6>
a00054ba:	04047693          	andi	a3,s0,64
a00054be:	4098                	lw	a4,0(s1)
a00054c0:	c28d                	beqz	a3,a00054e2 <__vsnprintf+0x414>
a00054c2:	1c07270b          	ext	a4,a4,7,0
a00054c6:	41f75693          	srai	a3,a4,0x1f
a00054ca:	02e05263          	blez	a4,a00054ee <__vsnprintf+0x420>
a00054ce:	8a3a                	mv	s4,a4
a00054d0:	8ab6                	mv	s5,a3
a00054d2:	c042                	sw	a6,0(sp)
a00054d4:	c422                	sw	s0,8(sp)
a00054d6:	01f75813          	srli	a6,a4,0x1f
a00054da:	c25a                	sw	s6,4(sp)
a00054dc:	8752                	mv	a4,s4
a00054de:	87d6                	mv	a5,s5
a00054e0:	b791                	j	a0005424 <__vsnprintf+0x356>
a00054e2:	08047693          	andi	a3,s0,128
a00054e6:	d2e5                	beqz	a3,a00054c6 <__vsnprintf+0x3f8>
a00054e8:	3c07270b          	ext	a4,a4,15,0
a00054ec:	bfe9                	j	a00054c6 <__vsnprintf+0x3f8>
a00054ee:	d83a                	sw	a4,48(sp)
a00054f0:	da36                	sw	a3,52(sp)
a00054f2:	5642                	lw	a2,48(sp)
a00054f4:	56d2                	lw	a3,52(sp)
a00054f6:	4a01                	li	s4,0
a00054f8:	4a81                	li	s5,0
a00054fa:	c2ca1a77          	sub64	s4,s4,a2
a00054fe:	bfd1                	j	a00054d2 <__vsnprintf+0x404>
a0005500:	cf01                	beqz	a4,a0005518 <__vsnprintf+0x44a>
a0005502:	049d                	addi	s1,s1,7
a0005504:	98e1                	andi	s1,s1,-8
a0005506:	4098                	lw	a4,0(s1)
a0005508:	40dc                	lw	a5,4(s1)
a000550a:	00848d93          	addi	s11,s1,8
a000550e:	c042                	sw	a6,0(sp)
a0005510:	c422                	sw	s0,8(sp)
a0005512:	c25a                	sw	s6,4(sp)
a0005514:	4801                	li	a6,0
a0005516:	b739                	j	a0005424 <__vsnprintf+0x356>
a0005518:	10047713          	andi	a4,s0,256
a000551c:	00448d93          	addi	s11,s1,4
a0005520:	cb01                	beqz	a4,a0005530 <__vsnprintf+0x462>
a0005522:	4098                	lw	a4,0(s1)
a0005524:	c042                	sw	a6,0(sp)
a0005526:	c422                	sw	s0,8(sp)
a0005528:	c25a                	sw	s6,4(sp)
a000552a:	4801                	li	a6,0
a000552c:	4781                	li	a5,0
a000552e:	bddd                	j	a0005424 <__vsnprintf+0x356>
a0005530:	04047693          	andi	a3,s0,64
a0005534:	4098                	lw	a4,0(s1)
a0005536:	c681                	beqz	a3,a000553e <__vsnprintf+0x470>
a0005538:	0ff77713          	zext.b	a4,a4
a000553c:	b7e5                	j	a0005524 <__vsnprintf+0x456>
a000553e:	08047693          	andi	a3,s0,128
a0005542:	d2ed                	beqz	a3,a0005524 <__vsnprintf+0x456>
a0005544:	57e2                	lw	a5,56(sp)
a0005546:	8f7d                	and	a4,a4,a5
a0005548:	bff1                	j	a0005524 <__vsnprintf+0x456>
a000554a:	02046413          	ori	s0,s0,32
a000554e:	049d                	addi	s1,s1,7
a0005550:	ff84f713          	andi	a4,s1,-8
a0005554:	435c                	lw	a5,4(a4)
a0005556:	00870493          	addi	s1,a4,8
a000555a:	88da                	mv	a7,s6
a000555c:	4318                	lw	a4,0(a4)
a000555e:	c202                	sw	zero,4(sp)
a0005560:	c022                	sw	s0,0(sp)
a0005562:	86ea                	mv	a3,s10
a0005564:	861a                	mv	a2,t1
a0005566:	85de                	mv	a1,s7
a0005568:	8562                	mv	a0,s8
a000556a:	9bfff0ef          	jal	ra,a0004f28 <print_floating_point>
a000556e:	832a                	mv	t1,a0
a0005570:	b5d1                	j	a0005434 <__vsnprintf+0x366>
a0005572:	8809                	andi	s0,s0,2
a0005574:	4d85                	li	s11,1
a0005576:	e815                	bnez	s0,a00055aa <__vsnprintf+0x4dc>
a0005578:	4d81                	li	s11,0
a000557a:	a801                	j	a000558a <__vsnprintf+0x4bc>
a000557c:	c09a                	sw	t1,64(sp)
a000557e:	86ea                	mv	a3,s10
a0005580:	85de                	mv	a1,s7
a0005582:	02000513          	li	a0,32
a0005586:	9c02                	jalr	s8
a0005588:	4306                	lw	t1,64(sp)
a000558a:	006d8633          	add	a2,s11,t1
a000558e:	0d85                	addi	s11,s11,1
a0005590:	ff6de6e3          	bltu	s11,s6,a000557c <__vsnprintf+0x4ae>
a0005594:	4701                	li	a4,0
a0005596:	000b0463          	beqz	s6,a000559e <__vsnprintf+0x4d0>
a000559a:	fffb0713          	addi	a4,s6,-1
a000559e:	933a                	add	t1,t1,a4
a00055a0:	4d89                	li	s11,2
a00055a2:	000b0463          	beqz	s6,a00055aa <__vsnprintf+0x4dc>
a00055a6:	001b0d93          	addi	s11,s6,1
a00055aa:	9844c50b          	lbuia	a0,(s1),4,0
a00055ae:	86ea                	mv	a3,s10
a00055b0:	861a                	mv	a2,t1
a00055b2:	85de                	mv	a1,s7
a00055b4:	00130913          	addi	s2,t1,1
a00055b8:	9c02                	jalr	s8
a00055ba:	c40d                	beqz	s0,a00055e4 <__vsnprintf+0x516>
a00055bc:	846e                	mv	s0,s11
a00055be:	864a                	mv	a2,s2
a00055c0:	a811                	j	a00055d4 <__vsnprintf+0x506>
a00055c2:	86ea                	mv	a3,s10
a00055c4:	85de                	mv	a1,s7
a00055c6:	02000513          	li	a0,32
a00055ca:	00160993          	addi	s3,a2,1
a00055ce:	9c02                	jalr	s8
a00055d0:	0405                	addi	s0,s0,1
a00055d2:	864e                	mv	a2,s3
a00055d4:	ff6467e3          	bltu	s0,s6,a00055c2 <__vsnprintf+0x4f4>
a00055d8:	4681                	li	a3,0
a00055da:	01bb6463          	bltu	s6,s11,a00055e2 <__vsnprintf+0x514>
a00055de:	41bb06b3          	sub	a3,s6,s11
a00055e2:	9936                	add	s2,s2,a3
a00055e4:	834a                	mv	t1,s2
a00055e6:	b5b9                	j	a0005434 <__vsnprintf+0x366>
a00055e8:	5844c98b          	lwia	s3,(s1),4,0
a00055ec:	02099063          	bnez	s3,a000560c <__vsnprintf+0x53e>
a00055f0:	a0007737          	lui	a4,0xa0007
a00055f4:	88a2                	mv	a7,s0
a00055f6:	885a                	mv	a6,s6
a00055f8:	4799                	li	a5,6
a00055fa:	40470713          	addi	a4,a4,1028 # a0007404 <__psram_limit+0xf7c07404>
a00055fe:	86ea                	mv	a3,s10
a0005600:	861a                	mv	a2,t1
a0005602:	85de                	mv	a1,s7
a0005604:	8562                	mv	a0,s8
a0005606:	d1ffe0ef          	jal	ra,a0004324 <out_rev_>
a000560a:	b795                	j	a000556e <__vsnprintf+0x4a0>
a000560c:	8742                	mv	a4,a6
a000560e:	00081363          	bnez	a6,a0005614 <__vsnprintf+0x546>
a0005612:	577d                	li	a4,-1
a0005614:	00e986b3          	add	a3,s3,a4
a0005618:	874e                	mv	a4,s3
a000561a:	00074603          	lbu	a2,0(a4)
a000561e:	c219                	beqz	a2,a0005624 <__vsnprintf+0x556>
a0005620:	02e69263          	bne	a3,a4,a0005644 <__vsnprintf+0x576>
a0005624:	40047d93          	andi	s11,s0,1024
a0005628:	41370933          	sub	s2,a4,s3
a000562c:	000d8663          	beqz	s11,a0005638 <__vsnprintf+0x56a>
a0005630:	012836b3          	sltu	a3,a6,s2
a0005634:	42d8190b          	mvnez	s2,a6,a3
a0005638:	8809                	andi	s0,s0,2
a000563a:	e429                	bnez	s0,a0005684 <__vsnprintf+0x5b6>
a000563c:	861a                	mv	a2,t1
a000563e:	40690eb3          	sub	t4,s2,t1
a0005642:	a01d                	j	a0005668 <__vsnprintf+0x59a>
a0005644:	0705                	addi	a4,a4,1
a0005646:	bfd1                	j	a000561a <__vsnprintf+0x54c>
a0005648:	00160e13          	addi	t3,a2,1
a000564c:	c6f6                	sw	t4,76(sp)
a000564e:	c49a                	sw	t1,72(sp)
a0005650:	c2c2                	sw	a6,68(sp)
a0005652:	c0f2                	sw	t3,64(sp)
a0005654:	86ea                	mv	a3,s10
a0005656:	85de                	mv	a1,s7
a0005658:	02000513          	li	a0,32
a000565c:	9c02                	jalr	s8
a000565e:	4e06                	lw	t3,64(sp)
a0005660:	4816                	lw	a6,68(sp)
a0005662:	4326                	lw	t1,72(sp)
a0005664:	4eb6                	lw	t4,76(sp)
a0005666:	8672                	mv	a2,t3
a0005668:	01d606b3          	add	a3,a2,t4
a000566c:	fd66eee3          	bltu	a3,s6,a0005648 <__vsnprintf+0x57a>
a0005670:	4681                	li	a3,0
a0005672:	012b6463          	bltu	s6,s2,a000567a <__vsnprintf+0x5ac>
a0005676:	412b06b3          	sub	a3,s6,s2
a000567a:	00190713          	addi	a4,s2,1
a000567e:	9336                	add	t1,t1,a3
a0005680:	00e68933          	add	s2,a3,a4
a0005684:	406989b3          	sub	s3,s3,t1
a0005688:	a829                	j	a00056a2 <__vsnprintf+0x5d4>
a000568a:	8836                	mv	a6,a3
a000568c:	00130893          	addi	a7,t1,1
a0005690:	c2c2                	sw	a6,68(sp)
a0005692:	c0c6                	sw	a7,64(sp)
a0005694:	861a                	mv	a2,t1
a0005696:	86ea                	mv	a3,s10
a0005698:	85de                	mv	a1,s7
a000569a:	9c02                	jalr	s8
a000569c:	4886                	lw	a7,64(sp)
a000569e:	4816                	lw	a6,68(sp)
a00056a0:	8346                	mv	t1,a7
a00056a2:	8069c50b          	lrbu	a0,s3,t1,0
a00056a6:	c519                	beqz	a0,a00056b4 <__vsnprintf+0x5e6>
a00056a8:	fe0d82e3          	beqz	s11,a000568c <__vsnprintf+0x5be>
a00056ac:	fff80693          	addi	a3,a6,-1 # a0006fff <__psram_limit+0xf7c06fff>
a00056b0:	fc081de3          	bnez	a6,a000568a <__vsnprintf+0x5bc>
a00056b4:	d80400e3          	beqz	s0,a0005434 <__vsnprintf+0x366>
a00056b8:	861a                	mv	a2,t1
a00056ba:	40690433          	sub	s0,s2,t1
a00056be:	a819                	j	a00056d4 <__vsnprintf+0x606>
a00056c0:	c09a                	sw	t1,64(sp)
a00056c2:	86ea                	mv	a3,s10
a00056c4:	85de                	mv	a1,s7
a00056c6:	02000513          	li	a0,32
a00056ca:	00160d93          	addi	s11,a2,1
a00056ce:	9c02                	jalr	s8
a00056d0:	4306                	lw	t1,64(sp)
a00056d2:	866e                	mv	a2,s11
a00056d4:	008606b3          	add	a3,a2,s0
a00056d8:	ff66e4e3          	bltu	a3,s6,a00056c0 <__vsnprintf+0x5f2>
a00056dc:	4681                	li	a3,0
a00056de:	012b6463          	bltu	s6,s2,a00056e6 <__vsnprintf+0x618>
a00056e2:	412b06b3          	sub	a3,s6,s2
a00056e6:	9336                	add	t1,t1,a3
a00056e8:	b3b1                	j	a0005434 <__vsnprintf+0x366>
a00056ea:	47a9                	li	a5,10
a00056ec:	c446                	sw	a7,8(sp)
a00056ee:	c23e                	sw	a5,4(sp)
a00056f0:	c042                	sw	a6,0(sp)
a00056f2:	48c1                	li	a7,16
a00056f4:	4801                	li	a6,0
a00056f6:	4781                	li	a5,0
a00056f8:	86ea                	mv	a3,s10
a00056fa:	861a                	mv	a2,t1
a00056fc:	85de                	mv	a1,s7
a00056fe:	8562                	mv	a0,s8
a0005700:	cd3fe0ef          	jal	ra,a00043d2 <print_integer>
a0005704:	b5ad                	j	a000556e <__vsnprintf+0x4a0>
a0005706:	00130413          	addi	s0,t1,1
a000570a:	86ea                	mv	a3,s10
a000570c:	861a                	mv	a2,t1
a000570e:	85de                	mv	a1,s7
a0005710:	02500513          	li	a0,37
a0005714:	9c02                	jalr	s8
a0005716:	8322                	mv	t1,s0
a0005718:	bb31                	j	a0005434 <__vsnprintf+0x366>
a000571a:	02046413          	ori	s0,s0,32
a000571e:	48c1                	li	a7,16
a0005720:	b945                	j	a00053d0 <__vsnprintf+0x302>
a0005722:	48a1                	li	a7,8
a0005724:	b155                	j	a00053c8 <__vsnprintf+0x2fa>
a0005726:	4889                	li	a7,2
a0005728:	b145                	j	a00053c8 <__vsnprintf+0x2fa>

a000572a <console_vsnprintf>:
a000572a:	86aa                	mv	a3,a0
a000572c:	a0004537          	lui	a0,0xa0004
a0005730:	872e                	mv	a4,a1
a0005732:	4601                	li	a2,0
a0005734:	4581                	li	a1,0
a0005736:	75e50513          	addi	a0,a0,1886 # a000475e <__psram_limit+0xf7c0475e>
a000573a:	995ff06f          	j	a00050ce <__vsnprintf>

a000573e <putchar>:
a000573e:	1141                	addi	sp,sp,-16
a0005740:	62fc37b7          	lui	a5,0x62fc3
a0005744:	c422                	sw	s0,8(sp)
a0005746:	842a                	mv	s0,a0
a0005748:	d347a503          	lw	a0,-716(a5) # 62fc2d34 <console>
a000574c:	c606                	sw	ra,12(sp)
a000574e:	cd01                	beqz	a0,a0005766 <putchar+0x28>
a0005750:	0ff47593          	zext.b	a1,s0
a0005754:	c2fbb097          	auipc	ra,0xc2fbb
a0005758:	eaa080e7          	jalr	-342(ra) # 62fc05fe <qcc74x_uart_putchar>
a000575c:	40b2                	lw	ra,12(sp)
a000575e:	8522                	mv	a0,s0
a0005760:	4422                	lw	s0,8(sp)
a0005762:	0141                	addi	sp,sp,16
a0005764:	8082                	ret
a0005766:	547d                	li	s0,-1
a0005768:	bfd5                	j	a000575c <putchar+0x1e>

a000576a <puts>:
a000576a:	1101                	addi	sp,sp,-32
a000576c:	ce06                	sw	ra,28(sp)
a000576e:	cc22                	sw	s0,24(sp)
a0005770:	e519                	bnez	a0,a000577e <puts+0x14>
a0005772:	4401                	li	s0,0
a0005774:	40f2                	lw	ra,28(sp)
a0005776:	8522                	mv	a0,s0
a0005778:	4462                	lw	s0,24(sp)
a000577a:	6105                	addi	sp,sp,32
a000577c:	8082                	ret
a000577e:	c62a                	sw	a0,12(sp)
a0005780:	435010ef          	jal	ra,a00073b4 <strlen>
a0005784:	62fc37b7          	lui	a5,0x62fc3
a0005788:	842a                	mv	s0,a0
a000578a:	d347a503          	lw	a0,-716(a5) # 62fc2d34 <console>
a000578e:	d175                	beqz	a0,a0005772 <puts+0x8>
a0005790:	45b2                	lw	a1,12(sp)
a0005792:	8622                	mv	a2,s0
a0005794:	c2fbb097          	auipc	ra,0xc2fbb
a0005798:	ebc080e7          	jalr	-324(ra) # 62fc0650 <qcc74x_uart_put>
a000579c:	bfe1                	j	a0005774 <puts+0xa>

a000579e <printf>:
a000579e:	7139                	addi	sp,sp,-64
a00057a0:	da3e                	sw	a5,52(sp)
a00057a2:	62fc37b7          	lui	a5,0x62fc3
a00057a6:	d347a783          	lw	a5,-716(a5) # 62fc2d34 <console>
a00057aa:	ce06                	sw	ra,28(sp)
a00057ac:	d22e                	sw	a1,36(sp)
a00057ae:	d432                	sw	a2,40(sp)
a00057b0:	d636                	sw	a3,44(sp)
a00057b2:	d83a                	sw	a4,48(sp)
a00057b4:	dc42                	sw	a6,56(sp)
a00057b6:	de46                	sw	a7,60(sp)
a00057b8:	c799                	beqz	a5,a00057c6 <printf+0x28>
a00057ba:	104c                	addi	a1,sp,36
a00057bc:	c62e                	sw	a1,12(sp)
a00057be:	37b5                	jal	a000572a <console_vsnprintf>
a00057c0:	40f2                	lw	ra,28(sp)
a00057c2:	6121                	addi	sp,sp,64
a00057c4:	8082                	ret
a00057c6:	4501                	li	a0,0
a00057c8:	bfe5                	j	a00057c0 <printf+0x22>

a00057ca <qcc74x_uart_set_console>:
a00057ca:	62fc37b7          	lui	a5,0x62fc3
a00057ce:	d2a7aa23          	sw	a0,-716(a5) # 62fc2d34 <console>
a00057d2:	8082                	ret

a00057d4 <kmem_init>:
a00057d4:	862e                	mv	a2,a1
a00057d6:	85aa                	mv	a1,a0
a00057d8:	62fc3537          	lui	a0,0x62fc3
a00057dc:	d3850513          	addi	a0,a0,-712 # 62fc2d38 <g_kmemheap>
a00057e0:	aa41                	j	a0005970 <qcc74x_mem_init>

a00057e2 <block_next>:
a00057e2:	415c                	lw	a5,4(a0)
a00057e4:	9bf1                	andi	a5,a5,-4
a00057e6:	953e                	add	a0,a0,a5
a00057e8:	0511                	addi	a0,a0,4
a00057ea:	8082                	ret

a00057ec <block_link_next>:
a00057ec:	1141                	addi	sp,sp,-16
a00057ee:	c422                	sw	s0,8(sp)
a00057f0:	c606                	sw	ra,12(sp)
a00057f2:	842a                	mv	s0,a0
a00057f4:	37fd                	jal	a00057e2 <block_next>
a00057f6:	40b2                	lw	ra,12(sp)
a00057f8:	c100                	sw	s0,0(a0)
a00057fa:	4422                	lw	s0,8(sp)
a00057fc:	0141                	addi	sp,sp,16
a00057fe:	8082                	ret

a0005800 <mapping_insert>:
a0005800:	07f00793          	li	a5,127
a0005804:	00a7e763          	bltu	a5,a0,a0005812 <mapping_insert+0x12>
a0005808:	8509                	srai	a0,a0,0x2
a000580a:	4781                	li	a5,0
a000580c:	c19c                	sw	a5,0(a1)
a000580e:	c208                	sw	a0,0(a2)
a0005810:	8082                	ret
a0005812:	af9506f7          	clz32	a3,a0
a0005816:	4769                	li	a4,26
a0005818:	8f15                	sub	a4,a4,a3
a000581a:	00e55533          	srl	a0,a0,a4
a000581e:	47e5                	li	a5,25
a0005820:	02054513          	xori	a0,a0,32
a0005824:	8f95                	sub	a5,a5,a3
a0005826:	b7dd                	j	a000580c <mapping_insert+0xc>

a0005828 <block_insert>:
a0005828:	1101                	addi	sp,sp,-32
a000582a:	cc22                	sw	s0,24(sp)
a000582c:	842a                	mv	s0,a0
a000582e:	41c8                	lw	a0,4(a1)
a0005830:	ca26                	sw	s1,20(sp)
a0005832:	0070                	addi	a2,sp,12
a0005834:	84ae                	mv	s1,a1
a0005836:	9971                	andi	a0,a0,-4
a0005838:	002c                	addi	a1,sp,8
a000583a:	ce06                	sw	ra,28(sp)
a000583c:	37d1                	jal	a0005800 <mapping_insert>
a000583e:	4722                	lw	a4,8(sp)
a0005840:	4632                	lw	a2,12(sp)
a0005842:	40f2                	lw	ra,28(sp)
a0005844:	00571793          	slli	a5,a4,0x5
a0005848:	97b2                	add	a5,a5,a2
a000584a:	04f4178b          	addsl	a5,s0,a5,2
a000584e:	5bf4                	lw	a3,116(a5)
a0005850:	c4c0                	sw	s0,12(s1)
a0005852:	c494                	sw	a3,8(s1)
a0005854:	c6c4                	sw	s1,12(a3)
a0005856:	dbe4                	sw	s1,116(a5)
a0005858:	4814                	lw	a3,16(s0)
a000585a:	4785                	li	a5,1
a000585c:	00e795b3          	sll	a1,a5,a4
a0005860:	8ecd                	or	a3,a3,a1
a0005862:	c814                	sw	a3,16(s0)
a0005864:	04e4140b          	addsl	s0,s0,a4,2
a0005868:	4858                	lw	a4,20(s0)
a000586a:	00c797b3          	sll	a5,a5,a2
a000586e:	44d2                	lw	s1,20(sp)
a0005870:	8fd9                	or	a5,a5,a4
a0005872:	c85c                	sw	a5,20(s0)
a0005874:	4462                	lw	s0,24(sp)
a0005876:	6105                	addi	sp,sp,32
a0005878:	8082                	ret

a000587a <tlsf_size>:
a000587a:	6505                	lui	a0,0x1
a000587c:	c7450513          	addi	a0,a0,-908 # c74 <VerOffset+0x74>
a0005880:	8082                	ret

a0005882 <tlsf_add_pool>:
a0005882:	1141                	addi	sp,sp,-16
a0005884:	c606                	sw	ra,12(sp)
a0005886:	c422                	sw	s0,8(sp)
a0005888:	c226                	sw	s1,4(sp)
a000588a:	0035f713          	andi	a4,a1,3
a000588e:	cf11                	beqz	a4,a00058aa <tlsf_add_pool+0x28>
a0005890:	a0007537          	lui	a0,0xa0007
a0005894:	4591                	li	a1,4
a0005896:	53050513          	addi	a0,a0,1328 # a0007530 <__psram_limit+0xf7c07530>
a000589a:	3711                	jal	a000579e <printf>
a000589c:	4401                	li	s0,0
a000589e:	40b2                	lw	ra,12(sp)
a00058a0:	8522                	mv	a0,s0
a00058a2:	4422                	lw	s0,8(sp)
a00058a4:	4492                	lw	s1,4(sp)
a00058a6:	0141                	addi	sp,sp,16
a00058a8:	8082                	ret
a00058aa:	ff860793          	addi	a5,a2,-8
a00058ae:	9bf1                	andi	a5,a5,-4
a00058b0:	40000637          	lui	a2,0x40000
a00058b4:	ff478713          	addi	a4,a5,-12
a00058b8:	ff460693          	addi	a3,a2,-12 # 3ffffff4 <__wifi_bss_end+0x1cfcfff4>
a00058bc:	00e6fa63          	bgeu	a3,a4,a00058d0 <tlsf_add_pool+0x4e>
a00058c0:	a0007537          	lui	a0,0xa0007
a00058c4:	0621                	addi	a2,a2,8
a00058c6:	45d1                	li	a1,20
a00058c8:	56450513          	addi	a0,a0,1380 # a0007564 <__psram_limit+0xf7c07564>
a00058cc:	3dc9                	jal	a000579e <printf>
a00058ce:	b7f9                	j	a000589c <tlsf_add_pool+0x1a>
a00058d0:	84ae                	mv	s1,a1
a00058d2:	59c4c70b          	lwia	a4,(s1),-4,0
a00058d6:	0017e793          	ori	a5,a5,1
a00058da:	842e                	mv	s0,a1
a00058dc:	c0dc                	sw	a5,4(s1)
a00058de:	85a6                	mv	a1,s1
a00058e0:	37a1                	jal	a0005828 <block_insert>
a00058e2:	8526                	mv	a0,s1
a00058e4:	3721                	jal	a00057ec <block_link_next>
a00058e6:	4789                	li	a5,2
a00058e8:	c15c                	sw	a5,4(a0)
a00058ea:	bf55                	j	a000589e <tlsf_add_pool+0x1c>

a00058ec <tlsf_create>:
a00058ec:	00357793          	andi	a5,a0,3
a00058f0:	cf89                	beqz	a5,a000590a <tlsf_create+0x1e>
a00058f2:	a0007537          	lui	a0,0xa0007
a00058f6:	1141                	addi	sp,sp,-16
a00058f8:	4591                	li	a1,4
a00058fa:	5a450513          	addi	a0,a0,1444 # a00075a4 <__psram_limit+0xf7c075a4>
a00058fe:	c606                	sw	ra,12(sp)
a0005900:	3d79                	jal	a000579e <printf>
a0005902:	40b2                	lw	ra,12(sp)
a0005904:	4501                	li	a0,0
a0005906:	0141                	addi	sp,sp,16
a0005908:	8082                	ret
a000590a:	c508                	sw	a0,8(a0)
a000590c:	c548                	sw	a0,12(a0)
a000590e:	00052823          	sw	zero,16(a0)
a0005912:	07450693          	addi	a3,a0,116
a0005916:	4781                	li	a5,0
a0005918:	01450593          	addi	a1,a0,20
a000591c:	02000813          	li	a6,32
a0005920:	4661                	li	a2,24
a0005922:	44f5d00b          	srw	zero,a1,a5,2
a0005926:	4701                	li	a4,0
a0005928:	44e6d50b          	srw	a0,a3,a4,2
a000592c:	0705                	addi	a4,a4,1
a000592e:	ff071de3          	bne	a4,a6,a0005928 <tlsf_create+0x3c>
a0005932:	0785                	addi	a5,a5,1
a0005934:	08068693          	addi	a3,a3,128
a0005938:	fec795e3          	bne	a5,a2,a0005922 <tlsf_create+0x36>
a000593c:	8082                	ret

a000593e <tlsf_create_with_pool>:
a000593e:	1101                	addi	sp,sp,-32
a0005940:	ce06                	sw	ra,28(sp)
a0005942:	cc22                	sw	s0,24(sp)
a0005944:	ca26                	sw	s1,20(sp)
a0005946:	c62e                	sw	a1,12(sp)
a0005948:	84aa                	mv	s1,a0
a000594a:	374d                	jal	a00058ec <tlsf_create>
a000594c:	45b2                	lw	a1,12(sp)
a000594e:	77fd                	lui	a5,0xfffff
a0005950:	38c78793          	addi	a5,a5,908 # fffff38c <__psram_limit+0x57bff38c>
a0005954:	00f58633          	add	a2,a1,a5
a0005958:	6585                	lui	a1,0x1
a000595a:	c7458593          	addi	a1,a1,-908 # c74 <VerOffset+0x74>
a000595e:	95a6                	add	a1,a1,s1
a0005960:	842a                	mv	s0,a0
a0005962:	3705                	jal	a0005882 <tlsf_add_pool>
a0005964:	40f2                	lw	ra,28(sp)
a0005966:	8522                	mv	a0,s0
a0005968:	4462                	lw	s0,24(sp)
a000596a:	44d2                	lw	s1,20(sp)
a000596c:	6105                	addi	sp,sp,32
a000596e:	8082                	ret

a0005970 <qcc74x_mem_init>:
a0005970:	1101                	addi	sp,sp,-32
a0005972:	ce06                	sw	ra,28(sp)
a0005974:	cc22                	sw	s0,24(sp)
a0005976:	ca26                	sw	s1,20(sp)
a0005978:	842a                	mv	s0,a0
a000597a:	84ae                	mv	s1,a1
a000597c:	c632                	sw	a2,12(sp)
a000597e:	3df5                	jal	a000587a <tlsf_size>
a0005980:	9526                	add	a0,a0,s1
a0005982:	c048                	sw	a0,4(s0)
a0005984:	3ddd                	jal	a000587a <tlsf_size>
a0005986:	4632                	lw	a2,12(sp)
a0005988:	40a60533          	sub	a0,a2,a0
a000598c:	c408                	sw	a0,8(s0)
a000598e:	85b2                	mv	a1,a2
a0005990:	8526                	mv	a0,s1
a0005992:	3775                	jal	a000593e <tlsf_create_with_pool>
a0005994:	441c                	lw	a5,8(s0)
a0005996:	40f2                	lw	ra,28(sp)
a0005998:	c008                	sw	a0,0(s0)
a000599a:	c45c                	sw	a5,12(s0)
a000599c:	c81c                	sw	a5,16(s0)
a000599e:	4462                	lw	s0,24(sp)
a00059a0:	44d2                	lw	s1,20(sp)
a00059a2:	6105                	addi	sp,sp,32
a00059a4:	8082                	ret

a00059a6 <log_start>:
a00059a6:	8082                	ret

a00059a8 <coredump_run>:
a00059a8:	711d                	addi	sp,sp,-96
a00059aa:	cca2                	sw	s0,88(sp)
a00059ac:	62fc3537          	lui	a0,0x62fc3
a00059b0:	a0008437          	lui	s0,0xa0008
a00059b4:	4b840593          	addi	a1,s0,1208 # a00084b8 <__psram_limit+0xf7c084b8>
a00059b8:	4651                	li	a2,20
a00059ba:	d4c50513          	addi	a0,a0,-692 # 62fc2d4c <core_build_id>
a00059be:	ce86                	sw	ra,92(sp)
a00059c0:	c4d2                	sw	s4,72(sp)
a00059c2:	c2d6                	sw	s5,68(sp)
a00059c4:	c0da                	sw	s6,64(sp)
a00059c6:	caa6                	sw	s1,84(sp)
a00059c8:	c8ca                	sw	s2,80(sp)
a00059ca:	c6ce                	sw	s3,76(sp)
a00059cc:	cfefe0ef          	jal	ra,a0003eca <memcpy>
a00059d0:	a0007537          	lui	a0,0xa0007
a00059d4:	5d850513          	addi	a0,a0,1496 # a00075d8 <__psram_limit+0xf7c075d8>
a00059d8:	33d9                	jal	a000579e <printf>
a00059da:	4b840613          	addi	a2,s0,1208
a00059de:	01364783          	lbu	a5,19(a2)
a00059e2:	a0007537          	lui	a0,0xa0007
a00059e6:	62050513          	addi	a0,a0,1568 # a0007620 <__psram_limit+0xf7c07620>
a00059ea:	d83e                	sw	a5,48(sp)
a00059ec:	01264783          	lbu	a5,18(a2)
a00059f0:	5a75                	li	s4,-3
a00059f2:	40000a93          	li	s5,1024
a00059f6:	d63e                	sw	a5,44(sp)
a00059f8:	01164783          	lbu	a5,17(a2)
a00059fc:	a0007b37          	lui	s6,0xa0007
a0005a00:	d43e                	sw	a5,40(sp)
a0005a02:	01064783          	lbu	a5,16(a2)
a0005a06:	d23e                	sw	a5,36(sp)
a0005a08:	00f64783          	lbu	a5,15(a2)
a0005a0c:	d03e                	sw	a5,32(sp)
a0005a0e:	00e64783          	lbu	a5,14(a2)
a0005a12:	ce3e                	sw	a5,28(sp)
a0005a14:	00d64783          	lbu	a5,13(a2)
a0005a18:	cc3e                	sw	a5,24(sp)
a0005a1a:	00c64783          	lbu	a5,12(a2)
a0005a1e:	ca3e                	sw	a5,20(sp)
a0005a20:	00b64783          	lbu	a5,11(a2)
a0005a24:	c83e                	sw	a5,16(sp)
a0005a26:	00a64783          	lbu	a5,10(a2)
a0005a2a:	c63e                	sw	a5,12(sp)
a0005a2c:	00964783          	lbu	a5,9(a2)
a0005a30:	c43e                	sw	a5,8(sp)
a0005a32:	00864783          	lbu	a5,8(a2)
a0005a36:	c23e                	sw	a5,4(sp)
a0005a38:	00764783          	lbu	a5,7(a2)
a0005a3c:	c03e                	sw	a5,0(sp)
a0005a3e:	00664883          	lbu	a7,6(a2)
a0005a42:	00564803          	lbu	a6,5(a2)
a0005a46:	00464783          	lbu	a5,4(a2)
a0005a4a:	00364703          	lbu	a4,3(a2)
a0005a4e:	00264683          	lbu	a3,2(a2)
a0005a52:	00164603          	lbu	a2,1(a2)
a0005a56:	4b844583          	lbu	a1,1208(s0)
a0005a5a:	a0008437          	lui	s0,0xa0008
a0005a5e:	48040413          	addi	s0,s0,1152 # a0008480 <__psram_limit+0xf7c08480>
a0005a62:	3b35                	jal	a000579e <printf>
a0005a64:	00042983          	lw	s3,0(s0)
a0005a68:	fff98793          	addi	a5,s3,-1
a0005a6c:	00fa7b63          	bgeu	s4,a5,a0005a82 <coredump_run+0xda>
a0005a70:	a0007537          	lui	a0,0xa0007
a0005a74:	68c50513          	addi	a0,a0,1676 # a000768c <__psram_limit+0xf7c0768c>
a0005a78:	331d                	jal	a000579e <printf>
a0005a7a:	48c010ef          	jal	ra,a0006f06 <qcc74x_sys_reset_por>
a0005a7e:	0001                	nop
a0005a80:	bffd                	j	a0005a7e <coredump_run+0xd6>
a0005a82:	00442903          	lw	s2,4(s0)
a0005a86:	00091463          	bnez	s2,a0005a8e <coredump_run+0xe6>
a0005a8a:	0421                	addi	s0,s0,8
a0005a8c:	bfe1                	j	a0005a64 <coredump_run+0xbc>
a0005a8e:	4481                	li	s1,0
a0005a90:	40990633          	sub	a2,s2,s1
a0005a94:	009985b3          	add	a1,s3,s1
a0005a98:	00caf463          	bgeu	s5,a2,a0005aa0 <coredump_run+0xf8>
a0005a9c:	40000613          	li	a2,1024
a0005aa0:	680b0693          	addi	a3,s6,1664 # a0007680 <__psram_limit+0xf7c07680>
a0005aa4:	852e                	mv	a0,a1
a0005aa6:	40048493          	addi	s1,s1,1024
a0005aaa:	2851                	jal	a0005b3e <coredump_print>
a0005aac:	ff24e2e3          	bltu	s1,s2,a0005a90 <coredump_run+0xe8>
a0005ab0:	bfe9                	j	a0005a8a <coredump_run+0xe2>

a0005ab2 <cd_base64_write_block>:
a0005ab2:	1141                	addi	sp,sp,-16
a0005ab4:	c606                	sw	ra,12(sp)
a0005ab6:	c422                	sw	s0,8(sp)
a0005ab8:	c226                	sw	s1,4(sp)
a0005aba:	842a                	mv	s0,a0
a0005abc:	00054503          	lbu	a0,0(a0)
a0005ac0:	84ae                	mv	s1,a1
a0005ac2:	39b5                	jal	a000573e <putchar>
a0005ac4:	00144503          	lbu	a0,1(s0)
a0005ac8:	399d                	jal	a000573e <putchar>
a0005aca:	00244503          	lbu	a0,2(s0)
a0005ace:	3985                	jal	a000573e <putchar>
a0005ad0:	00344503          	lbu	a0,3(s0)
a0005ad4:	31ad                	jal	a000573e <putchar>
a0005ad6:	409c                	lw	a5,0(s1)
a0005ad8:	4765                	li	a4,25
a0005ada:	0785                	addi	a5,a5,1
a0005adc:	c09c                	sw	a5,0(s1)
a0005ade:	00f75963          	bge	a4,a5,a0005af0 <cd_base64_write_block+0x3e>
a0005ae2:	a0008537          	lui	a0,0xa0008
a0005ae6:	26850513          	addi	a0,a0,616 # a0008268 <__psram_limit+0xf7c08268>
a0005aea:	3141                	jal	a000576a <puts>
a0005aec:	0004a023          	sw	zero,0(s1)
a0005af0:	40b2                	lw	ra,12(sp)
a0005af2:	4422                	lw	s0,8(sp)
a0005af4:	4492                	lw	s1,4(sp)
a0005af6:	0141                	addi	sp,sp,16
a0005af8:	8082                	ret

a0005afa <read_word_cb>:
a0005afa:	4598                	lw	a4,8(a1)
a0005afc:	45dc                	lw	a5,12(a1)
a0005afe:	02f77e63          	bgeu	a4,a5,a0005b3a <read_word_cb+0x40>
a0005b02:	41d4                	lw	a3,4(a1)
a0005b04:	1141                	addi	sp,sp,-16
a0005b06:	c606                	sw	ra,12(sp)
a0005b08:	ffc77793          	andi	a5,a4,-4
a0005b0c:	00f68563          	beq	a3,a5,a0005b16 <read_word_cb+0x1c>
a0005b10:	c1dc                	sw	a5,4(a1)
a0005b12:	439c                	lw	a5,0(a5)
a0005b14:	c99c                	sw	a5,16(a1)
a0005b16:	8b0d                	andi	a4,a4,3
a0005b18:	972e                	add	a4,a4,a1
a0005b1a:	01074703          	lbu	a4,16(a4)
a0005b1e:	87ae                	mv	a5,a1
a0005b20:	00e50023          	sb	a4,0(a0)
a0005b24:	4598                	lw	a4,8(a1)
a0005b26:	0705                	addi	a4,a4,1
a0005b28:	c598                	sw	a4,8(a1)
a0005b2a:	00054583          	lbu	a1,0(a0)
a0005b2e:	4bc8                	lw	a0,20(a5)
a0005b30:	2415                	jal	a0005d54 <utils_crc32_stream_feed>
a0005b32:	40b2                	lw	ra,12(sp)
a0005b34:	4501                	li	a0,0
a0005b36:	0141                	addi	sp,sp,16
a0005b38:	8082                	ret
a0005b3a:	4505                	li	a0,1
a0005b3c:	8082                	ret

a0005b3e <coredump_print>:
a0005b3e:	715d                	addi	sp,sp,-80
a0005b40:	c2a6                	sw	s1,68(sp)
a0005b42:	62fc34b7          	lui	s1,0x62fc3
a0005b46:	d6048493          	addi	s1,s1,-672 # 62fc2d60 <init.0>
a0005b4a:	409c                	lw	a5,0(s1)
a0005b4c:	c4a2                	sw	s0,72(sp)
a0005b4e:	c0ca                	sw	s2,64(sp)
a0005b50:	de4e                	sw	s3,60(sp)
a0005b52:	dc52                	sw	s4,56(sp)
a0005b54:	c686                	sw	ra,76(sp)
a0005b56:	da56                	sw	s5,52(sp)
a0005b58:	892a                	mv	s2,a0
a0005b5a:	89ae                	mv	s3,a1
a0005b5c:	8432                	mv	s0,a2
a0005b5e:	8a36                	mv	s4,a3
a0005b60:	eb81                	bnez	a5,a0005b70 <coredump_print+0x32>
a0005b62:	a0007537          	lui	a0,0xa0007
a0005b66:	6b450513          	addi	a0,a0,1716 # a00076b4 <__psram_limit+0xf7c076b4>
a0005b6a:	3101                	jal	a000576a <puts>
a0005b6c:	4785                	li	a5,1
a0005b6e:	c09c                	sw	a5,0(s1)
a0005b70:	a0007537          	lui	a0,0xa0007
a0005b74:	8209190b          	rev	s2,s2
a0005b78:	6e050513          	addi	a0,a0,1760 # a00076e0 <__psram_limit+0xf7c076e0>
a0005b7c:	c802                	sw	zero,16(sp)
a0005b7e:	ca02                	sw	zero,20(sp)
a0005b80:	36ed                	jal	a000576a <puts>
a0005b82:	c64a                	sw	s2,12(sp)
a0005b84:	00c10913          	addi	s2,sp,12
a0005b88:	4611                	li	a2,4
a0005b8a:	85ca                	mv	a1,s2
a0005b8c:	0808                	addi	a0,sp,16
a0005b8e:	22ed                	jal	a0005d78 <utils_bin2hex>
a0005b90:	4481                	li	s1,0
a0005b92:	4aa1                	li	s5,8
a0005b94:	081c                	addi	a5,sp,16
a0005b96:	8097c50b          	lrbu	a0,a5,s1,0
a0005b9a:	0485                	addi	s1,s1,1
a0005b9c:	364d                	jal	a000573e <putchar>
a0005b9e:	ff549be3          	bne	s1,s5,a0005b94 <coredump_print+0x56>
a0005ba2:	04000513          	li	a0,64
a0005ba6:	3e61                	jal	a000573e <putchar>
a0005ba8:	8204178b          	rev	a5,s0
a0005bac:	4611                	li	a2,4
a0005bae:	85ca                	mv	a1,s2
a0005bb0:	0808                	addi	a0,sp,16
a0005bb2:	c63e                	sw	a5,12(sp)
a0005bb4:	4481                	li	s1,0
a0005bb6:	22c9                	jal	a0005d78 <utils_bin2hex>
a0005bb8:	4aa1                	li	s5,8
a0005bba:	081c                	addi	a5,sp,16
a0005bbc:	8097c50b          	lrbu	a0,a5,s1,0
a0005bc0:	0485                	addi	s1,s1,1
a0005bc2:	3eb5                	jal	a000573e <putchar>
a0005bc4:	ff549be3          	bne	s1,s5,a0005bba <coredump_print+0x7c>
a0005bc8:	000a0763          	beqz	s4,a0005bd6 <coredump_print+0x98>
a0005bcc:	04000513          	li	a0,64
a0005bd0:	36bd                	jal	a000573e <putchar>
a0005bd2:	8552                	mv	a0,s4
a0005bd4:	3e59                	jal	a000576a <puts>
a0005bd6:	a00074b7          	lui	s1,0xa0007
a0005bda:	6f848513          	addi	a0,s1,1784 # a00076f8 <__psram_limit+0xf7c076f8>
a0005bde:	3671                	jal	a000576a <puts>
a0005be0:	0048                	addi	a0,sp,4
a0005be2:	22b5                	jal	a0005d4e <utils_crc32_stream_init>
a0005be4:	ffc9f793          	andi	a5,s3,-4
a0005be8:	ce3e                	sw	a5,28(sp)
a0005bea:	943e                	add	s0,s0,a5
a0005bec:	439c                	lw	a5,0(a5)
a0005bee:	d04e                	sw	s3,32(sp)
a0005bf0:	d222                	sw	s0,36(sp)
a0005bf2:	a00069b7          	lui	s3,0xa0006
a0005bf6:	a0006437          	lui	s0,0xa0006
a0005bfa:	0830                	addi	a2,sp,24
a0005bfc:	ab298593          	addi	a1,s3,-1358 # a0005ab2 <__psram_limit+0xf7c05ab2>
a0005c00:	d43e                	sw	a5,40(sp)
a0005c02:	afa40513          	addi	a0,s0,-1286 # a0005afa <__psram_limit+0xf7c05afa>
a0005c06:	005c                	addi	a5,sp,4
a0005c08:	d63e                	sw	a5,44(sp)
a0005c0a:	cc02                	sw	zero,24(sp)
a0005c0c:	2099                	jal	a0005c52 <utils_base64_encode_stream>
a0005c0e:	a0007537          	lui	a0,0xa0007
a0005c12:	70450513          	addi	a0,a0,1796 # a0007704 <__psram_limit+0xf7c07704>
a0005c16:	3e91                	jal	a000576a <puts>
a0005c18:	0048                	addi	a0,sp,4
a0005c1a:	2a99                	jal	a0005d70 <utils_crc32_stream_results>
a0005c1c:	003c                	addi	a5,sp,8
a0005c1e:	c42a                	sw	a0,8(sp)
a0005c20:	ce3e                	sw	a5,28(sp)
a0005c22:	d03e                	sw	a5,32(sp)
a0005c24:	d42a                	sw	a0,40(sp)
a0005c26:	005c                	addi	a5,sp,4
a0005c28:	0830                	addi	a2,sp,24
a0005c2a:	ab298593          	addi	a1,s3,-1358
a0005c2e:	afa40513          	addi	a0,s0,-1286
a0005c32:	d24a                	sw	s2,36(sp)
a0005c34:	d63e                	sw	a5,44(sp)
a0005c36:	cc02                	sw	zero,24(sp)
a0005c38:	2829                	jal	a0005c52 <utils_base64_encode_stream>
a0005c3a:	6f848513          	addi	a0,s1,1784
a0005c3e:	3635                	jal	a000576a <puts>
a0005c40:	40b6                	lw	ra,76(sp)
a0005c42:	4426                	lw	s0,72(sp)
a0005c44:	4496                	lw	s1,68(sp)
a0005c46:	4906                	lw	s2,64(sp)
a0005c48:	59f2                	lw	s3,60(sp)
a0005c4a:	5a62                	lw	s4,56(sp)
a0005c4c:	5ad2                	lw	s5,52(sp)
a0005c4e:	6161                	addi	sp,sp,80
a0005c50:	8082                	ret

a0005c52 <utils_base64_encode_stream>:
a0005c52:	7139                	addi	sp,sp,-64
a0005c54:	d84a                	sw	s2,48(sp)
a0005c56:	a0007937          	lui	s2,0xa0007
a0005c5a:	da26                	sw	s1,52(sp)
a0005c5c:	d64e                	sw	s3,44(sp)
a0005c5e:	d452                	sw	s4,40(sp)
a0005c60:	d256                	sw	s5,36(sp)
a0005c62:	d05a                	sw	s6,32(sp)
a0005c64:	ce5e                	sw	s7,28(sp)
a0005c66:	de06                	sw	ra,60(sp)
a0005c68:	dc22                	sw	s0,56(sp)
a0005c6a:	cc62                	sw	s8,24(sp)
a0005c6c:	8a2a                	mv	s4,a0
a0005c6e:	8aae                	mv	s5,a1
a0005c70:	89b2                	mv	s3,a2
a0005c72:	54fd                	li	s1,-1
a0005c74:	5b7d                	li	s6,-1
a0005c76:	71490913          	addi	s2,s2,1812 # a0007714 <__psram_limit+0xf7c07714>
a0005c7a:	00c10b93          	addi	s7,sp,12
a0005c7e:	85ce                	mv	a1,s3
a0005c80:	00b10513          	addi	a0,sp,11
a0005c84:	9a02                	jalr	s4
a0005c86:	c15d                	beqz	a0,a0005d2c <utils_base64_encode_stream+0xda>
a0005c88:	0004d363          	bgez	s1,a0005c8e <utils_base64_encode_stream+0x3c>
a0005c8c:	4481                	li	s1,0
a0005c8e:	4401                	li	s0,0
a0005c90:	85ce                	mv	a1,s3
a0005c92:	00b10513          	addi	a0,sp,11
a0005c96:	9a02                	jalr	s4
a0005c98:	cd49                	beqz	a0,a0005d32 <utils_base64_encode_stream+0xe0>
a0005c9a:	4c01                	li	s8,0
a0005c9c:	01649363          	bne	s1,s6,a0005ca2 <utils_base64_encode_stream+0x50>
a0005ca0:	4485                	li	s1,1
a0005ca2:	85ce                	mv	a1,s3
a0005ca4:	00b10513          	addi	a0,sp,11
a0005ca8:	9a02                	jalr	s4
a0005caa:	c559                	beqz	a0,a0005d38 <utils_base64_encode_stream+0xe6>
a0005cac:	4701                	li	a4,0
a0005cae:	01649363          	bne	s1,s6,a0005cb4 <utils_base64_encode_stream+0x62>
a0005cb2:	4489                	li	s1,2
a0005cb4:	01041793          	slli	a5,s0,0x10
a0005cb8:	0c22                	slli	s8,s8,0x8
a0005cba:	97e2                	add	a5,a5,s8
a0005cbc:	97ba                	add	a5,a5,a4
a0005cbe:	c111                	beqz	a0,a0005cc2 <utils_base64_encode_stream+0x70>
a0005cc0:	c8b1                	beqz	s1,a0005d14 <utils_base64_encode_stream+0xc2>
a0005cc2:	0127d713          	srli	a4,a5,0x12
a0005cc6:	80e9470b          	lrbu	a4,s2,a4,0
a0005cca:	00e10623          	sb	a4,12(sp)
a0005cce:	44c7b70b          	extu	a4,a5,17,12
a0005cd2:	80e9470b          	lrbu	a4,s2,a4,0
a0005cd6:	00e106a3          	sb	a4,13(sp)
a0005cda:	2c67b70b          	extu	a4,a5,11,6
a0005cde:	03f7f793          	andi	a5,a5,63
a0005ce2:	80e9470b          	lrbu	a4,s2,a4,0
a0005ce6:	80f9478b          	lrbu	a5,s2,a5,0
a0005cea:	00e10723          	sb	a4,14(sp)
a0005cee:	00f107a3          	sb	a5,15(sp)
a0005cf2:	c531                	beqz	a0,a0005d3e <utils_base64_encode_stream+0xec>
a0005cf4:	a00077b7          	lui	a5,0xa0007
a0005cf8:	75478793          	addi	a5,a5,1876 # a0007754 <__psram_limit+0xf7c07754>
a0005cfc:	4497c70b          	lrw	a4,a5,s1,2
a0005d00:	03d00613          	li	a2,61
a0005d04:	87de                	mv	a5,s7
a0005d06:	40fb86b3          	sub	a3,s7,a5
a0005d0a:	02e6ce63          	blt	a3,a4,a0005d46 <utils_base64_encode_stream+0xf4>
a0005d0e:	85ce                	mv	a1,s3
a0005d10:	855e                	mv	a0,s7
a0005d12:	9a82                	jalr	s5
a0005d14:	50f2                	lw	ra,60(sp)
a0005d16:	5462                	lw	s0,56(sp)
a0005d18:	54d2                	lw	s1,52(sp)
a0005d1a:	5942                	lw	s2,48(sp)
a0005d1c:	59b2                	lw	s3,44(sp)
a0005d1e:	5a22                	lw	s4,40(sp)
a0005d20:	5a92                	lw	s5,36(sp)
a0005d22:	5b02                	lw	s6,32(sp)
a0005d24:	4bf2                	lw	s7,28(sp)
a0005d26:	4c62                	lw	s8,24(sp)
a0005d28:	6121                	addi	sp,sp,64
a0005d2a:	8082                	ret
a0005d2c:	00b14403          	lbu	s0,11(sp)
a0005d30:	b785                	j	a0005c90 <utils_base64_encode_stream+0x3e>
a0005d32:	00b14c03          	lbu	s8,11(sp)
a0005d36:	b7b5                	j	a0005ca2 <utils_base64_encode_stream+0x50>
a0005d38:	00b14703          	lbu	a4,11(sp)
a0005d3c:	bfa5                	j	a0005cb4 <utils_base64_encode_stream+0x62>
a0005d3e:	85ce                	mv	a1,s3
a0005d40:	855e                	mv	a0,s7
a0005d42:	9a82                	jalr	s5
a0005d44:	bf2d                	j	a0005c7e <utils_base64_encode_stream+0x2c>
a0005d46:	00c781a3          	sb	a2,3(a5)
a0005d4a:	17fd                	addi	a5,a5,-1
a0005d4c:	bf6d                	j	a0005d06 <utils_base64_encode_stream+0xb4>

a0005d4e <utils_crc32_stream_init>:
a0005d4e:	57fd                	li	a5,-1
a0005d50:	c11c                	sw	a5,0(a0)
a0005d52:	8082                	ret

a0005d54 <utils_crc32_stream_feed>:
a0005d54:	411c                	lw	a5,0(a0)
a0005d56:	a0007737          	lui	a4,0xa0007
a0005d5a:	76070713          	addi	a4,a4,1888 # a0007760 <__psram_limit+0xf7c07760>
a0005d5e:	8dbd                	xor	a1,a1,a5
a0005d60:	0ff5f593          	zext.b	a1,a1
a0005d64:	44b7470b          	lrw	a4,a4,a1,2
a0005d68:	83a1                	srli	a5,a5,0x8
a0005d6a:	8fb9                	xor	a5,a5,a4
a0005d6c:	c11c                	sw	a5,0(a0)
a0005d6e:	8082                	ret

a0005d70 <utils_crc32_stream_results>:
a0005d70:	4108                	lw	a0,0(a0)
a0005d72:	fff54513          	not	a0,a0
a0005d76:	8082                	ret

a0005d78 <utils_bin2hex>:
a0005d78:	a0008737          	lui	a4,0xa0008
a0005d7c:	4781                	li	a5,0
a0005d7e:	b6070713          	addi	a4,a4,-1184 # a0007b60 <__psram_limit+0xf7c07b60>
a0005d82:	00150813          	addi	a6,a0,1
a0005d86:	00f61563          	bne	a2,a5,a0005d90 <utils_bin2hex+0x18>
a0005d8a:	02c5150b          	addsl	a0,a0,a2,1
a0005d8e:	8082                	ret
a0005d90:	80f5c68b          	lrbu	a3,a1,a5,0
a0005d94:	0046d893          	srli	a7,a3,0x4
a0005d98:	8117488b          	lrbu	a7,a4,a7,0
a0005d9c:	8abd                	andi	a3,a3,15
a0005d9e:	80d7468b          	lrbu	a3,a4,a3,0
a0005da2:	02f5588b          	srb	a7,a0,a5,1
a0005da6:	02f8568b          	srb	a3,a6,a5,1
a0005daa:	0785                	addi	a5,a5,1
a0005dac:	bfe9                	j	a0005d86 <utils_bin2hex+0xe>

a0005dae <qcc74x_gpio_init>:
a0005dae:	1101                	addi	sp,sp,-32
a0005db0:	c84a                	sw	s2,16(sp)
a0005db2:	00452903          	lw	s2,4(a0)
a0005db6:	852e                	mv	a0,a1
a0005db8:	cc22                	sw	s0,24(sp)
a0005dba:	ca26                	sw	s1,20(sp)
a0005dbc:	3c06340b          	extu	s0,a2,15,0
a0005dc0:	34c6348b          	extu	s1,a2,13,12
a0005dc4:	c632                	sw	a2,12(sp)
a0005dc6:	c42e                	sw	a1,8(sp)
a0005dc8:	ce06                	sw	ra,28(sp)
a0005dca:	0a0010ef          	jal	ra,a0006e6a <qcc74x_gpio_pad_check>
a0005dce:	45a2                	lw	a1,8(sp)
a0005dd0:	47c1                	li	a5,16
a0005dd2:	4632                	lw	a2,12(sp)
a0005dd4:	06f59463          	bne	a1,a5,a0005e3c <qcc74x_gpio_init+0x8e>
a0005dd8:	2000f6b7          	lui	a3,0x2000f
a0005ddc:	5e9c                	lw	a5,56(a3)
a0005dde:	fff00737          	lui	a4,0xfff00
a0005de2:	177d                	addi	a4,a4,-1
a0005de4:	8ff9                	and	a5,a5,a4
a0005de6:	de9c                	sw	a5,56(a3)
a0005de8:	08047793          	andi	a5,s0,128
a0005dec:	04b9158b          	addsl	a1,s2,a1,2
a0005df0:	efa5                	bnez	a5,a0005e68 <qcc74x_gpio_init+0xba>
a0005df2:	10047793          	andi	a5,s0,256
a0005df6:	cfa1                	beqz	a5,a0005e4e <qcc74x_gpio_init+0xa0>
a0005df8:	004007b7          	lui	a5,0x400
a0005dfc:	01f67713          	andi	a4,a2,31
a0005e00:	0785                	addi	a5,a5,1
a0005e02:	20067693          	andi	a3,a2,512
a0005e06:	c6ad                	beqz	a3,a0005e70 <qcc74x_gpio_init+0xc2>
a0005e08:	0107e793          	ori	a5,a5,16
a0005e0c:	2cb6360b          	extu	a2,a2,11,11
a0005e10:	c219                	beqz	a2,a0005e16 <qcc74x_gpio_init+0x68>
a0005e12:	0027e793          	ori	a5,a5,2
a0005e16:	048a                	slli	s1,s1,0x2
a0005e18:	8cdd                	or	s1,s1,a5
a0005e1a:	00871793          	slli	a5,a4,0x8
a0005e1e:	8fc5                	or	a5,a5,s1
a0005e20:	40000737          	lui	a4,0x40000
a0005e24:	40f2                	lw	ra,28(sp)
a0005e26:	4462                	lw	s0,24(sp)
a0005e28:	8fd9                	or	a5,a5,a4
a0005e2a:	6705                	lui	a4,0x1
a0005e2c:	8c470713          	addi	a4,a4,-1852 # 8c4 <__RFTLV_SIZE_HOLE+0xc4>
a0005e30:	40e5d78b          	srw	a5,a1,a4,0
a0005e34:	44d2                	lw	s1,20(sp)
a0005e36:	4942                	lw	s2,16(sp)
a0005e38:	6105                	addi	sp,sp,32
a0005e3a:	8082                	ret
a0005e3c:	47c5                	li	a5,17
a0005e3e:	faf595e3          	bne	a1,a5,a0005de8 <qcc74x_gpio_init+0x3a>
a0005e42:	2000f6b7          	lui	a3,0x2000f
a0005e46:	5e9c                	lw	a5,56(a3)
a0005e48:	ffe00737          	lui	a4,0xffe00
a0005e4c:	bf59                	j	a0005de2 <qcc74x_gpio_init+0x34>
a0005e4e:	02047713          	andi	a4,s0,32
a0005e52:	004007b7          	lui	a5,0x400
a0005e56:	c311                	beqz	a4,a0005e5a <qcc74x_gpio_init+0xac>
a0005e58:	0785                	addi	a5,a5,1
a0005e5a:	04047413          	andi	s0,s0,64
a0005e5e:	472d                	li	a4,11
a0005e60:	d04d                	beqz	s0,a0005e02 <qcc74x_gpio_init+0x54>
a0005e62:	0407e793          	ori	a5,a5,64
a0005e66:	bf71                	j	a0005e02 <qcc74x_gpio_init+0x54>
a0005e68:	4729                	li	a4,10
a0005e6a:	004007b7          	lui	a5,0x400
a0005e6e:	bf51                	j	a0005e02 <qcc74x_gpio_init+0x54>
a0005e70:	40067693          	andi	a3,a2,1024
a0005e74:	dec1                	beqz	a3,a0005e0c <qcc74x_gpio_init+0x5e>
a0005e76:	0207e793          	ori	a5,a5,32
a0005e7a:	bf49                	j	a0005e0c <qcc74x_gpio_init+0x5e>

a0005e7c <qcc74x_gpio_set>:
a0005e7c:	1101                	addi	sp,sp,-32
a0005e7e:	cc22                	sw	s0,24(sp)
a0005e80:	842a                	mv	s0,a0
a0005e82:	852e                	mv	a0,a1
a0005e84:	ce06                	sw	ra,28(sp)
a0005e86:	c62e                	sw	a1,12(sp)
a0005e88:	7e3000ef          	jal	ra,a0006e6a <qcc74x_gpio_pad_check>
a0005e8c:	405c                	lw	a5,4(s0)
a0005e8e:	45b2                	lw	a1,12(sp)
a0005e90:	6705                	lui	a4,0x1
a0005e92:	aec70713          	addi	a4,a4,-1300 # aec <__RFTLV_SIZE_HOLE+0x2ec>
a0005e96:	40f2                	lw	ra,28(sp)
a0005e98:	4462                	lw	s0,24(sp)
a0005e9a:	97ba                	add	a5,a5,a4
a0005e9c:	4705                	li	a4,1
a0005e9e:	0055d693          	srli	a3,a1,0x5
a0005ea2:	00b71733          	sll	a4,a4,a1
a0005ea6:	44d7d70b          	srw	a4,a5,a3,2
a0005eaa:	6105                	addi	sp,sp,32
a0005eac:	8082                	ret

a0005eae <qcc74x_gpio_reset>:
a0005eae:	1101                	addi	sp,sp,-32
a0005eb0:	cc22                	sw	s0,24(sp)
a0005eb2:	842a                	mv	s0,a0
a0005eb4:	852e                	mv	a0,a1
a0005eb6:	ce06                	sw	ra,28(sp)
a0005eb8:	c62e                	sw	a1,12(sp)
a0005eba:	7b1000ef          	jal	ra,a0006e6a <qcc74x_gpio_pad_check>
a0005ebe:	405c                	lw	a5,4(s0)
a0005ec0:	45b2                	lw	a1,12(sp)
a0005ec2:	6705                	lui	a4,0x1
a0005ec4:	af470713          	addi	a4,a4,-1292 # af4 <__RFTLV_SIZE_HOLE+0x2f4>
a0005ec8:	40f2                	lw	ra,28(sp)
a0005eca:	4462                	lw	s0,24(sp)
a0005ecc:	97ba                	add	a5,a5,a4
a0005ece:	4705                	li	a4,1
a0005ed0:	0055d693          	srli	a3,a1,0x5
a0005ed4:	00b71733          	sll	a4,a4,a1
a0005ed8:	44d7d70b          	srw	a4,a5,a3,2
a0005edc:	6105                	addi	sp,sp,32
a0005ede:	8082                	ret

a0005ee0 <qcc74x_gpio_uart_init>:
a0005ee0:	1101                	addi	sp,sp,-32
a0005ee2:	cc22                	sw	s0,24(sp)
a0005ee4:	ca26                	sw	s1,20(sp)
a0005ee6:	4140                	lw	s0,4(a0)
a0005ee8:	84aa                	mv	s1,a0
a0005eea:	852e                	mv	a0,a1
a0005eec:	c632                	sw	a2,12(sp)
a0005eee:	c42e                	sw	a1,8(sp)
a0005ef0:	ce06                	sw	ra,28(sp)
a0005ef2:	779000ef          	jal	ra,a0006e6a <qcc74x_gpio_pad_check>
a0005ef6:	45a2                	lw	a1,8(sp)
a0005ef8:	46b1                	li	a3,12
a0005efa:	479d                	li	a5,7
a0005efc:	02d5f6b3          	remu	a3,a1,a3
a0005f00:	4632                	lw	a2,12(sp)
a0005f02:	0ad7e063          	bltu	a5,a3,a0005fa2 <qcc74x_gpio_uart_init+0xc2>
a0005f06:	00269713          	slli	a4,a3,0x2
a0005f0a:	15442803          	lw	a6,340(s0)
a0005f0e:	47bd                	li	a5,15
a0005f10:	00e797b3          	sll	a5,a5,a4
a0005f14:	fff7c793          	not	a5,a5
a0005f18:	0107f833          	and	a6,a5,a6
a0005f1c:	00e617b3          	sll	a5,a2,a4
a0005f20:	0107e7b3          	or	a5,a5,a6
a0005f24:	4701                	li	a4,0
a0005f26:	48bd                	li	a7,15
a0005f28:	4321                	li	t1,8
a0005f2a:	00271513          	slli	a0,a4,0x2
a0005f2e:	00a89833          	sll	a6,a7,a0
a0005f32:	00f87e33          	and	t3,a6,a5
a0005f36:	00a61533          	sll	a0,a2,a0
a0005f3a:	00ae1d63          	bne	t3,a0,a0005f54 <qcc74x_gpio_uart_init+0x74>
a0005f3e:	0ff77513          	zext.b	a0,a4
a0005f42:	00d50963          	beq	a0,a3,a0005f54 <qcc74x_gpio_uart_init+0x74>
a0005f46:	01160763          	beq	a2,a7,a0005f54 <qcc74x_gpio_uart_init+0x74>
a0005f4a:	fff84513          	not	a0,a6
a0005f4e:	8fe9                	and	a5,a5,a0
a0005f50:	00f867b3          	or	a5,a6,a5
a0005f54:	0705                	addi	a4,a4,1
a0005f56:	fc671ae3          	bne	a4,t1,a0005f2a <qcc74x_gpio_uart_init+0x4a>
a0005f5a:	15842703          	lw	a4,344(s0)
a0005f5e:	4681                	li	a3,0
a0005f60:	483d                	li	a6,15
a0005f62:	48c1                	li	a7,16
a0005f64:	00d81533          	sll	a0,a6,a3
a0005f68:	00e57e33          	and	t3,a0,a4
a0005f6c:	00d61333          	sll	t1,a2,a3
a0005f70:	006e1963          	bne	t3,t1,a0005f82 <qcc74x_gpio_uart_init+0xa2>
a0005f74:	01060763          	beq	a2,a6,a0005f82 <qcc74x_gpio_uart_init+0xa2>
a0005f78:	fff54313          	not	t1,a0
a0005f7c:	00e37733          	and	a4,t1,a4
a0005f80:	8f49                	or	a4,a4,a0
a0005f82:	0691                	addi	a3,a3,4
a0005f84:	ff1690e3          	bne	a3,a7,a0005f64 <qcc74x_gpio_uart_init+0x84>
a0005f88:	14f42a23          	sw	a5,340(s0)
a0005f8c:	14e42c23          	sw	a4,344(s0)
a0005f90:	4462                	lw	s0,24(sp)
a0005f92:	40f2                	lw	ra,28(sp)
a0005f94:	8526                	mv	a0,s1
a0005f96:	44d2                	lw	s1,20(sp)
a0005f98:	6609                	lui	a2,0x2
a0005f9a:	b0760613          	addi	a2,a2,-1273 # 1b07 <HeapMinSize+0xb07>
a0005f9e:	6105                	addi	sp,sp,32
a0005fa0:	b539                	j	a0005dae <qcc74x_gpio_init>
a0005fa2:	ff868713          	addi	a4,a3,-8 # 2000eff8 <remain_wifi_ram+0x1ffeeff8>
a0005fa6:	070a                	slli	a4,a4,0x2
a0005fa8:	0ff77713          	zext.b	a4,a4
a0005fac:	15842803          	lw	a6,344(s0)
a0005fb0:	47bd                	li	a5,15
a0005fb2:	00e797b3          	sll	a5,a5,a4
a0005fb6:	fff7c793          	not	a5,a5
a0005fba:	0107f833          	and	a6,a5,a6
a0005fbe:	00e617b3          	sll	a5,a2,a4
a0005fc2:	0107e7b3          	or	a5,a5,a6
a0005fc6:	4701                	li	a4,0
a0005fc8:	48bd                	li	a7,15
a0005fca:	4311                	li	t1,4
a0005fcc:	00271513          	slli	a0,a4,0x2
a0005fd0:	00a89833          	sll	a6,a7,a0
a0005fd4:	00f87e33          	and	t3,a6,a5
a0005fd8:	00a61533          	sll	a0,a2,a0
a0005fdc:	00ae1f63          	bne	t3,a0,a0005ffa <qcc74x_gpio_uart_init+0x11a>
a0005fe0:	00870513          	addi	a0,a4,8
a0005fe4:	0ff57513          	zext.b	a0,a0
a0005fe8:	00d50963          	beq	a0,a3,a0005ffa <qcc74x_gpio_uart_init+0x11a>
a0005fec:	01160763          	beq	a2,a7,a0005ffa <qcc74x_gpio_uart_init+0x11a>
a0005ff0:	fff84513          	not	a0,a6
a0005ff4:	8fe9                	and	a5,a5,a0
a0005ff6:	00f867b3          	or	a5,a6,a5
a0005ffa:	0705                	addi	a4,a4,1
a0005ffc:	fc6718e3          	bne	a4,t1,a0005fcc <qcc74x_gpio_uart_init+0xec>
a0006000:	15442703          	lw	a4,340(s0)
a0006004:	4681                	li	a3,0
a0006006:	483d                	li	a6,15
a0006008:	02000893          	li	a7,32
a000600c:	00d81533          	sll	a0,a6,a3
a0006010:	00e57e33          	and	t3,a0,a4
a0006014:	00d61333          	sll	t1,a2,a3
a0006018:	006e1963          	bne	t3,t1,a000602a <qcc74x_gpio_uart_init+0x14a>
a000601c:	01060763          	beq	a2,a6,a000602a <qcc74x_gpio_uart_init+0x14a>
a0006020:	fff54313          	not	t1,a0
a0006024:	00e37733          	and	a4,t1,a4
a0006028:	8f49                	or	a4,a4,a0
a000602a:	0691                	addi	a3,a3,4
a000602c:	ff1690e3          	bne	a3,a7,a000600c <qcc74x_gpio_uart_init+0x12c>
a0006030:	14f42c23          	sw	a5,344(s0)
a0006034:	14e42a23          	sw	a4,340(s0)
a0006038:	bfa1                	j	a0005f90 <qcc74x_gpio_uart_init+0xb0>

a000603a <qcc74x_uart_init>:
a000603a:	1141                	addi	sp,sp,-16
a000603c:	c422                	sw	s0,8(sp)
a000603e:	c226                	sw	s1,4(sp)
a0006040:	c606                	sw	ra,12(sp)
a0006042:	84ae                	mv	s1,a1
a0006044:	00954583          	lbu	a1,9(a0)
a0006048:	4140                	lw	s0,4(a0)
a000604a:	4515                	li	a0,5
a000604c:	635000ef          	jal	ra,a0006e80 <qcc74x_clk_get_peripheral_clock>
a0006050:	4729                	li	a4,10
a0006052:	02e507b3          	mul	a5,a0,a4
a0006056:	4088                	lw	a0,0(s1)
a0006058:	4014                	lw	a3,0(s0)
a000605a:	4605                	li	a2,1
a000605c:	9af9                	andi	a3,a3,-2
a000605e:	02a7d7b3          	divu	a5,a5,a0
a0006062:	0795                	addi	a5,a5,5
a0006064:	02e7d7b3          	divu	a5,a5,a4
a0006068:	4058                	lw	a4,4(s0)
a000606a:	c014                	sw	a3,0(s0)
a000606c:	9b79                	andi	a4,a4,-2
a000606e:	c058                	sw	a4,4(s0)
a0006070:	17fd                	addi	a5,a5,-1
a0006072:	0ef797f7          	pkbb16	a5,a5,a5
a0006076:	c41c                	sw	a5,8(s0)
a0006078:	0074c683          	lbu	a3,7(s1)
a000607c:	401c                	lw	a5,0(s0)
a000607e:	4058                	lw	a4,4(s0)
a0006080:	0ac68c63          	beq	a3,a2,a0006138 <qcc74x_uart_init+0xfe>
a0006084:	4609                	li	a2,2
a0006086:	0ac68e63          	beq	a3,a2,a0006142 <qcc74x_uart_init+0x108>
a000608a:	e299                	bnez	a3,a0006090 <qcc74x_uart_init+0x56>
a000608c:	9bbd                	andi	a5,a5,-17
a000608e:	9b3d                	andi	a4,a4,-17
a0006090:	0054c683          	lbu	a3,5(s1)
a0006094:	8ff7f793          	andi	a5,a5,-1793
a0006098:	8ff77713          	andi	a4,a4,-1793
a000609c:	0691                	addi	a3,a3,4
a000609e:	06a2                	slli	a3,a3,0x8
a00060a0:	8fd5                	or	a5,a5,a3
a00060a2:	8f55                	or	a4,a4,a3
a00060a4:	76f9                	lui	a3,0xffffe
a00060a6:	7ff68693          	addi	a3,a3,2047 # ffffe7ff <__psram_limit+0x57bfe7ff>
a00060aa:	8ff5                	and	a5,a5,a3
a00060ac:	0064c683          	lbu	a3,6(s1)
a00060b0:	06ae                	slli	a3,a3,0xb
a00060b2:	8fd5                	or	a5,a5,a3
a00060b4:	0094c683          	lbu	a3,9(s1)
a00060b8:	ffd7f613          	andi	a2,a5,-3
a00060bc:	8a89                	andi	a3,a3,2
a00060be:	c299                	beqz	a3,a00060c4 <qcc74x_uart_init+0x8a>
a00060c0:	0027e613          	ori	a2,a5,2
a00060c4:	76fd                	lui	a3,0xfffff
a00060c6:	7ff68693          	addi	a3,a3,2047 # fffff7ff <__psram_limit+0x57bff7ff>
a00060ca:	c010                	sw	a2,0(s0)
a00060cc:	8f75                	and	a4,a4,a3
a00060ce:	c058                	sw	a4,4(s0)
a00060d0:	4c5c                	lw	a5,28(s0)
a00060d2:	08040693          	addi	a3,s0,128
a00060d6:	e0e10637          	lui	a2,0xe0e10
a00060da:	9bed                	andi	a5,a5,-5
a00060dc:	cc5c                	sw	a5,28(s0)
a00060de:	445c                	lw	a5,12(s0)
a00060e0:	167d                	addi	a2,a2,-1
a00060e2:	001f0737          	lui	a4,0x1f0
a00060e6:	9bf9                	andi	a5,a5,-2
a00060e8:	c45c                	sw	a5,12(s0)
a00060ea:	401c                	lw	a5,0(s0)
a00060ec:	1f0005b7          	lui	a1,0x1f000
a00060f0:	40b2                	lw	ra,12(sp)
a00060f2:	0047e793          	ori	a5,a5,4
a00060f6:	c01c                	sw	a5,0(s0)
a00060f8:	42dc                	lw	a5,4(a3)
a00060fa:	8e7d                	and	a2,a2,a5
a00060fc:	00a4c783          	lbu	a5,10(s1)
a0006100:	07c2                	slli	a5,a5,0x10
a0006102:	8ff9                	and	a5,a5,a4
a0006104:	00b4c703          	lbu	a4,11(s1)
a0006108:	4492                	lw	s1,4(sp)
a000610a:	0762                	slli	a4,a4,0x18
a000610c:	8f6d                	and	a4,a4,a1
a000610e:	8fd9                	or	a5,a5,a4
a0006110:	8fd1                	or	a5,a5,a2
a0006112:	c2dc                	sw	a5,4(a3)
a0006114:	429c                	lw	a5,0(a3)
a0006116:	9bf1                	andi	a5,a5,-4
a0006118:	00c7e793          	ori	a5,a5,12
a000611c:	c29c                	sw	a5,0(a3)
a000611e:	57fd                	li	a5,-1
a0006120:	d05c                	sw	a5,36(s0)
a0006122:	4018                	lw	a4,0(s0)
a0006124:	405c                	lw	a5,4(s0)
a0006126:	00176713          	ori	a4,a4,1
a000612a:	c018                	sw	a4,0(s0)
a000612c:	0017e793          	ori	a5,a5,1
a0006130:	c05c                	sw	a5,4(s0)
a0006132:	4422                	lw	s0,8(sp)
a0006134:	0141                	addi	sp,sp,16
a0006136:	8082                	ret
a0006138:	0307e793          	ori	a5,a5,48
a000613c:	03076713          	ori	a4,a4,48
a0006140:	bf81                	j	a0006090 <qcc74x_uart_init+0x56>
a0006142:	fdf7f793          	andi	a5,a5,-33
a0006146:	fdf77713          	andi	a4,a4,-33
a000614a:	0107e793          	ori	a5,a5,16
a000614e:	01076713          	ori	a4,a4,16
a0006152:	bf3d                	j	a0006090 <qcc74x_uart_init+0x56>

a0006154 <flash_get_clock_delay.constprop.0.isra.0>:
a0006154:	2000b7b7          	lui	a5,0x2000b
a0006158:	4394                	lw	a3,0(a5)
a000615a:	4781                	li	a5,0
a000615c:	2cb6b70b          	extu	a4,a3,11,11
a0006160:	c701                	beqz	a4,a0006168 <flash_get_clock_delay.constprop.0.isra.0+0x14>
a0006162:	2886b78b          	extu	a5,a3,10,8
a0006166:	0785                	addi	a5,a5,1
a0006168:	2000b737          	lui	a4,0x2000b
a000616c:	5b58                	lw	a4,52(a4)
a000616e:	85c18613          	addi	a2,gp,-1956 # 62fc1a44 <g_flash_cfg>
a0006172:	00c75593          	srli	a1,a4,0xc
a0006176:	0305f593          	andi	a1,a1,48
a000617a:	8fcd                	or	a5,a5,a1
a000617c:	00f60123          	sb	a5,2(a2) # e0e10002 <__psram_limit+0x38a10002>
a0006180:	0016d793          	srli	a5,a3,0x1
a0006184:	8b89                	andi	a5,a5,2
a0006186:	1046b68b          	extu	a3,a3,4,4
a000618a:	8fd5                	or	a5,a5,a3
a000618c:	00675693          	srli	a3,a4,0x6
a0006190:	0716                	slli	a4,a4,0x5
a0006192:	8ab1                	andi	a3,a3,12
a0006194:	06077713          	andi	a4,a4,96
a0006198:	8f55                	or	a4,a4,a3
a000619a:	8fd9                	or	a5,a5,a4
a000619c:	00f601a3          	sb	a5,3(a2)
a00061a0:	8082                	ret

a00061a2 <irq_unexpected_isr>:
a00061a2:	85aa                	mv	a1,a0
a00061a4:	a0008537          	lui	a0,0xa0008
a00061a8:	b7450513          	addi	a0,a0,-1164 # a0007b74 <__psram_limit+0xf7c07b74>
a00061ac:	df2ff06f          	j	a000579e <printf>

a00061b0 <qcc74x_irq_initialize>:
a00061b0:	62fc37b7          	lui	a5,0x62fc3
a00061b4:	19078793          	addi	a5,a5,400 # 62fc3190 <g_irqvector>
a00061b8:	a0006737          	lui	a4,0xa0006
a00061bc:	28078693          	addi	a3,a5,640
a00061c0:	1a270713          	addi	a4,a4,418 # a00061a2 <__psram_limit+0xf7c061a2>
a00061c4:	c398                	sw	a4,0(a5)
a00061c6:	0007a223          	sw	zero,4(a5)
a00061ca:	07a1                	addi	a5,a5,8
a00061cc:	fed79ce3          	bne	a5,a3,a00061c4 <qcc74x_irq_initialize+0x14>
a00061d0:	8082                	ret

a00061d2 <qcc74x_device_get_by_name>:
a00061d2:	1101                	addi	sp,sp,-32
a00061d4:	cc22                	sw	s0,24(sp)
a00061d6:	ca26                	sw	s1,20(sp)
a00061d8:	c64e                	sw	s3,12(sp)
a00061da:	c452                	sw	s4,8(sp)
a00061dc:	ce06                	sw	ra,28(sp)
a00061de:	c84a                	sw	s2,16(sp)
a00061e0:	8a2a                	mv	s4,a0
a00061e2:	4481                	li	s1,0
a00061e4:	8b018413          	addi	s0,gp,-1872 # 62fc1a98 <qcc743_device_table>
a00061e8:	02900993          	li	s3,41
a00061ec:	00449913          	slli	s2,s1,0x4
a00061f0:	4124450b          	lrw	a0,s0,s2,0
a00061f4:	85d2                	mv	a1,s4
a00061f6:	cb9fd0ef          	jal	ra,a0003eae <strcmp>
a00061fa:	e919                	bnez	a0,a0006210 <qcc74x_device_get_by_name+0x3e>
a00061fc:	01240533          	add	a0,s0,s2
a0006200:	40f2                	lw	ra,28(sp)
a0006202:	4462                	lw	s0,24(sp)
a0006204:	44d2                	lw	s1,20(sp)
a0006206:	4942                	lw	s2,16(sp)
a0006208:	49b2                	lw	s3,12(sp)
a000620a:	4a22                	lw	s4,8(sp)
a000620c:	6105                	addi	sp,sp,32
a000620e:	8082                	ret
a0006210:	0485                	addi	s1,s1,1
a0006212:	fd349de3          	bne	s1,s3,a00061ec <qcc74x_device_get_by_name+0x1a>
a0006216:	4501                	li	a0,0
a0006218:	b7e5                	j	a0006200 <qcc74x_device_get_by_name+0x2e>
	...

a0006240 <default_interrupt_handler>:
a0006240:	715d                	addi	sp,sp,-80
a0006242:	c216                	sw	t0,4(sp)
a0006244:	c41a                	sw	t1,8(sp)
a0006246:	341022f3          	csrr	t0,mepc
a000624a:	34202373          	csrr	t1,mcause
a000624e:	c09a                	sw	t1,64(sp)
a0006250:	c296                	sw	t0,68(sp)
a0006252:	340022f3          	csrr	t0,mscratch
a0006256:	c496                	sw	t0,72(sp)
a0006258:	c006                	sw	ra,0(sp)
a000625a:	c61e                	sw	t2,12(sp)
a000625c:	c82a                	sw	a0,16(sp)
a000625e:	ca2e                	sw	a1,20(sp)
a0006260:	cc32                	sw	a2,24(sp)
a0006262:	ce36                	sw	a3,28(sp)
a0006264:	d03a                	sw	a4,32(sp)
a0006266:	d23e                	sw	a5,36(sp)
a0006268:	d442                	sw	a6,40(sp)
a000626a:	d646                	sw	a7,44(sp)
a000626c:	d872                	sw	t3,48(sp)
a000626e:	da76                	sw	t4,52(sp)
a0006270:	dc7a                	sw	t5,56(sp)
a0006272:	de7e                	sw	t6,60(sp)
a0006274:	30046073          	csrsi	mstatus,8
a0006278:	711d                	addi	sp,sp,-96
a000627a:	30002373          	csrr	t1,mstatus
a000627e:	ca9a                	sw	t1,84(sp)
a0006280:	00d35393          	srli	t2,t1,0xd
a0006284:	0033f393          	andi	t2,t2,3
a0006288:	428d                	li	t0,3
a000628a:	02539663          	bne	t2,t0,a00062b6 <.F_RegNotSave1>
a000628e:	e002                	fsw	ft0,0(sp)
a0006290:	e206                	fsw	ft1,4(sp)
a0006292:	e40a                	fsw	ft2,8(sp)
a0006294:	e60e                	fsw	ft3,12(sp)
a0006296:	e812                	fsw	ft4,16(sp)
a0006298:	ea16                	fsw	ft5,20(sp)
a000629a:	ec1a                	fsw	ft6,24(sp)
a000629c:	ee1e                	fsw	ft7,28(sp)
a000629e:	f02a                	fsw	fa0,32(sp)
a00062a0:	f22e                	fsw	fa1,36(sp)
a00062a2:	f432                	fsw	fa2,40(sp)
a00062a4:	f636                	fsw	fa3,44(sp)
a00062a6:	f83a                	fsw	fa4,48(sp)
a00062a8:	fa3e                	fsw	fa5,52(sp)
a00062aa:	fc42                	fsw	fa6,56(sp)
a00062ac:	fe46                	fsw	fa7,60(sp)
a00062ae:	e0f2                	fsw	ft8,64(sp)
a00062b0:	e2f6                	fsw	ft9,68(sp)
a00062b2:	e4fa                	fsw	ft10,72(sp)
a00062b4:	e6fe                	fsw	ft11,76(sp)

a00062b6 <.F_RegNotSave1>:
a00062b6:	34202573          	csrr	a0,mcause
a00062ba:	3ff57313          	andi	t1,a0,1023
a00062be:	00000397          	auipc	t2,0x0
a00062c2:	5a238393          	addi	t2,t2,1442 # a0006860 <interrupt_entry>
a00062c6:	9382                	jalr	t2
a00062c8:	4356                	lw	t1,84(sp)
a00062ca:	00d35393          	srli	t2,t1,0xd
a00062ce:	0033f393          	andi	t2,t2,3
a00062d2:	428d                	li	t0,3
a00062d4:	02539663          	bne	t2,t0,a0006300 <.F_RegNotLoad>
a00062d8:	6002                	flw	ft0,0(sp)
a00062da:	6092                	flw	ft1,4(sp)
a00062dc:	6122                	flw	ft2,8(sp)
a00062de:	61b2                	flw	ft3,12(sp)
a00062e0:	6242                	flw	ft4,16(sp)
a00062e2:	62d2                	flw	ft5,20(sp)
a00062e4:	6362                	flw	ft6,24(sp)
a00062e6:	63f2                	flw	ft7,28(sp)
a00062e8:	7502                	flw	fa0,32(sp)
a00062ea:	7592                	flw	fa1,36(sp)
a00062ec:	7622                	flw	fa2,40(sp)
a00062ee:	76b2                	flw	fa3,44(sp)
a00062f0:	7742                	flw	fa4,48(sp)
a00062f2:	77d2                	flw	fa5,52(sp)
a00062f4:	7862                	flw	fa6,56(sp)
a00062f6:	78f2                	flw	fa7,60(sp)
a00062f8:	6e06                	flw	ft8,64(sp)
a00062fa:	6e96                	flw	ft9,68(sp)
a00062fc:	6f26                	flw	ft10,72(sp)
a00062fe:	6fb6                	flw	ft11,76(sp)

a0006300 <.F_RegNotLoad>:
a0006300:	6125                	addi	sp,sp,96
a0006302:	30047073          	csrci	mstatus,8
a0006306:	4296                	lw	t0,68(sp)
a0006308:	34129073          	csrw	mepc,t0
a000630c:	4286                	lw	t0,64(sp)
a000630e:	34229073          	csrw	mcause,t0
a0006312:	42a6                	lw	t0,72(sp)
a0006314:	34029073          	csrw	mscratch,t0
a0006318:	4082                	lw	ra,0(sp)
a000631a:	4292                	lw	t0,4(sp)
a000631c:	4322                	lw	t1,8(sp)
a000631e:	43b2                	lw	t2,12(sp)
a0006320:	4542                	lw	a0,16(sp)
a0006322:	45d2                	lw	a1,20(sp)
a0006324:	4662                	lw	a2,24(sp)
a0006326:	46f2                	lw	a3,28(sp)
a0006328:	5702                	lw	a4,32(sp)
a000632a:	5792                	lw	a5,36(sp)
a000632c:	5822                	lw	a6,40(sp)
a000632e:	58b2                	lw	a7,44(sp)
a0006330:	5e42                	lw	t3,48(sp)
a0006332:	5ed2                	lw	t4,52(sp)
a0006334:	5f62                	lw	t5,56(sp)
a0006336:	5ff2                	lw	t6,60(sp)
a0006338:	6161                	addi	sp,sp,80
a000633a:	8082                	ret
	...

a0006380 <trap>:
a0006380:	fe512e23          	sw	t0,-4(sp)
a0006384:	342022f3          	csrr	t0,mcause
a0006388:	0e02ca63          	bltz	t0,a000647c <trap+0xfc>
a000638c:	c2fbd297          	auipc	t0,0xc2fbd
a0006390:	e0428293          	addi	t0,t0,-508 # 62fc3190 <g_irqvector>
a0006394:	ef828293          	addi	t0,t0,-264
a0006398:	0012a223          	sw	ra,4(t0)
a000639c:	0022a423          	sw	sp,8(t0)
a00063a0:	0032a623          	sw	gp,12(t0)
a00063a4:	0042a823          	sw	tp,16(t0)
a00063a8:	0062ac23          	sw	t1,24(t0)
a00063ac:	0072ae23          	sw	t2,28(t0)
a00063b0:	0282a023          	sw	s0,32(t0)
a00063b4:	0292a223          	sw	s1,36(t0)
a00063b8:	02a2a423          	sw	a0,40(t0)
a00063bc:	02b2a623          	sw	a1,44(t0)
a00063c0:	02c2a823          	sw	a2,48(t0)
a00063c4:	02d2aa23          	sw	a3,52(t0)
a00063c8:	02e2ac23          	sw	a4,56(t0)
a00063cc:	02f2ae23          	sw	a5,60(t0)
a00063d0:	0502a023          	sw	a6,64(t0)
a00063d4:	0512a223          	sw	a7,68(t0)
a00063d8:	0522a423          	sw	s2,72(t0)
a00063dc:	0532a623          	sw	s3,76(t0)
a00063e0:	0542a823          	sw	s4,80(t0)
a00063e4:	0552aa23          	sw	s5,84(t0)
a00063e8:	0562ac23          	sw	s6,88(t0)
a00063ec:	0572ae23          	sw	s7,92(t0)
a00063f0:	0782a023          	sw	s8,96(t0)
a00063f4:	0792a223          	sw	s9,100(t0)
a00063f8:	07a2a423          	sw	s10,104(t0)
a00063fc:	07b2a623          	sw	s11,108(t0)
a0006400:	07c2a823          	sw	t3,112(t0)
a0006404:	07d2aa23          	sw	t4,116(t0)
a0006408:	07e2ac23          	sw	t5,120(t0)
a000640c:	07f2ae23          	sw	t6,124(t0)
a0006410:	34102573          	csrr	a0,mepc
a0006414:	00a2a023          	sw	a0,0(t0)
a0006418:	30002573          	csrr	a0,mstatus
a000641c:	08a2a023          	sw	a0,128(t0)
a0006420:	8516                	mv	a0,t0
a0006422:	ffc12283          	lw	t0,-4(sp)
a0006426:	812a                	mv	sp,a0
a0006428:	ca16                	sw	t0,20(sp)
a000642a:	396000ef          	jal	ra,a00067c0 <exception_entry>
a000642e:	428a                	lw	t0,128(sp)
a0006430:	30029073          	csrw	mstatus,t0
a0006434:	4282                	lw	t0,0(sp)
a0006436:	34129073          	csrw	mepc,t0
a000643a:	5ff6                	lw	t6,124(sp)
a000643c:	5f66                	lw	t5,120(sp)
a000643e:	5ed6                	lw	t4,116(sp)
a0006440:	5e46                	lw	t3,112(sp)
a0006442:	5db6                	lw	s11,108(sp)
a0006444:	5d26                	lw	s10,104(sp)
a0006446:	5c96                	lw	s9,100(sp)
a0006448:	5c06                	lw	s8,96(sp)
a000644a:	4bf6                	lw	s7,92(sp)
a000644c:	4b66                	lw	s6,88(sp)
a000644e:	4ad6                	lw	s5,84(sp)
a0006450:	4a46                	lw	s4,80(sp)
a0006452:	49b6                	lw	s3,76(sp)
a0006454:	4926                	lw	s2,72(sp)
a0006456:	4896                	lw	a7,68(sp)
a0006458:	4806                	lw	a6,64(sp)
a000645a:	57f2                	lw	a5,60(sp)
a000645c:	5762                	lw	a4,56(sp)
a000645e:	56d2                	lw	a3,52(sp)
a0006460:	5642                	lw	a2,48(sp)
a0006462:	55b2                	lw	a1,44(sp)
a0006464:	5522                	lw	a0,40(sp)
a0006466:	5492                	lw	s1,36(sp)
a0006468:	5402                	lw	s0,32(sp)
a000646a:	43f2                	lw	t2,28(sp)
a000646c:	4362                	lw	t1,24(sp)
a000646e:	42d2                	lw	t0,20(sp)
a0006470:	4242                	lw	tp,16(sp)
a0006472:	41b2                	lw	gp,12(sp)
a0006474:	4092                	lw	ra,4(sp)
a0006476:	4122                	lw	sp,8(sp)
a0006478:	30200073          	mret
a000647c:	ffc12283          	lw	t0,-4(sp)
a0006480:	1141                	addi	sp,sp,-16
a0006482:	c006                	sw	ra,0(sp)
a0006484:	3b75                	jal	a0006240 <default_interrupt_handler>
a0006486:	4082                	lw	ra,0(sp)
a0006488:	0141                	addi	sp,sp,16
a000648a:	30200073          	mret
	...

a00064bc <start_load>:
a00064bc:	62fc07b7          	lui	a5,0x62fc0
a00064c0:	a0008737          	lui	a4,0xa0008
a00064c4:	62fc26b7          	lui	a3,0x62fc2
a00064c8:	40078793          	addi	a5,a5,1024 # 62fc0400 <arch_memcpy>
a00064cc:	4a870713          	addi	a4,a4,1192 # a00084a8 <__psram_limit+0xf7c084a8>
a00064d0:	9e868693          	addi	a3,a3,-1560 # 62fc19e8 <flash1_size>
a00064d4:	08d7ed63          	bltu	a5,a3,a000656e <start_load+0xb2>
a00064d8:	62fc27b7          	lui	a5,0x62fc2
a00064dc:	a000a737          	lui	a4,0xa000a
a00064e0:	62fc26b7          	lui	a3,0x62fc2
a00064e4:	9e878793          	addi	a5,a5,-1560 # 62fc19e8 <flash1_size>
a00064e8:	a9070713          	addi	a4,a4,-1392 # a0009a90 <__psram_limit+0xf7c09a90>
a00064ec:	9e868693          	addi	a3,a3,-1560 # 62fc19e8 <flash1_size>
a00064f0:	08d7e463          	bltu	a5,a3,a0006578 <start_load+0xbc>
a00064f4:	62fc27b7          	lui	a5,0x62fc2
a00064f8:	a000a737          	lui	a4,0xa000a
a00064fc:	9e878793          	addi	a5,a5,-1560 # 62fc19e8 <flash1_size>
a0006500:	a9070713          	addi	a4,a4,-1392 # a0009a90 <__psram_limit+0xf7c09a90>
a0006504:	b4018693          	addi	a3,gp,-1216 # 62fc1d28 <__StackLimit>
a0006508:	06d7ed63          	bltu	a5,a3,a0006582 <start_load+0xc6>
a000650c:	a80007b7          	lui	a5,0xa8000
a0006510:	a000a737          	lui	a4,0xa000a
a0006514:	a80006b7          	lui	a3,0xa8000
a0006518:	00078793          	mv	a5,a5
a000651c:	dd070713          	addi	a4,a4,-560 # a0009dd0 <__psram_limit+0xf7c09dd0>
a0006520:	00068693          	mv	a3,a3
a0006524:	06d7e463          	bltu	a5,a3,a000658c <start_load+0xd0>
a0006528:	22fc07b7          	lui	a5,0x22fc0
a000652c:	a0008737          	lui	a4,0xa0008
a0006530:	22fc06b7          	lui	a3,0x22fc0
a0006534:	40078793          	addi	a5,a5,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a0006538:	4a870713          	addi	a4,a4,1192 # a00084a8 <__psram_limit+0xf7c084a8>
a000653c:	40068693          	addi	a3,a3,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a0006540:	04d7eb63          	bltu	a5,a3,a0006596 <start_load+0xda>
a0006544:	62fc37b7          	lui	a5,0x62fc3
a0006548:	62fc3737          	lui	a4,0x62fc3
a000654c:	d3078793          	addi	a5,a5,-720 # 62fc2d30 <gpio>
a0006550:	41470713          	addi	a4,a4,1044 # 62fc3414 <__HeapBase>
a0006554:	04e7e663          	bltu	a5,a4,a00065a0 <start_load+0xe4>
a0006558:	230307b7          	lui	a5,0x23030
a000655c:	23030737          	lui	a4,0x23030
a0006560:	00078793          	mv	a5,a5
a0006564:	00070713          	mv	a4,a4
a0006568:	02e7ef63          	bltu	a5,a4,a00065a6 <start_load+0xea>
a000656c:	8082                	ret
a000656e:	5847460b          	lwia	a2,(a4),4,0
a0006572:	5847d60b          	swia	a2,(a5),4,0
a0006576:	bfb9                	j	a00064d4 <start_load+0x18>
a0006578:	5847460b          	lwia	a2,(a4),4,0
a000657c:	5847d60b          	swia	a2,(a5),4,0
a0006580:	bf85                	j	a00064f0 <start_load+0x34>
a0006582:	5847460b          	lwia	a2,(a4),4,0
a0006586:	5847d60b          	swia	a2,(a5),4,0
a000658a:	bfbd                	j	a0006508 <start_load+0x4c>
a000658c:	5847460b          	lwia	a2,(a4),4,0
a0006590:	5847d60b          	swia	a2,(a5),4,0
a0006594:	bf41                	j	a0006524 <start_load+0x68>
a0006596:	5847460b          	lwia	a2,(a4),4,0
a000659a:	5847d60b          	swia	a2,(a5),4,0
a000659e:	b74d                	j	a0006540 <start_load+0x84>
a00065a0:	5847d00b          	swia	zero,(a5),4,0
a00065a4:	bf45                	j	a0006554 <start_load+0x98>
a00065a6:	5847d00b          	swia	zero,(a5),4,0
a00065aa:	bf7d                	j	a0006568 <start_load+0xac>

a00065ac <System_BOD_Init>:
a00065ac:	1101                	addi	sp,sp,-32
a00065ae:	010707b7          	lui	a5,0x1070
a00065b2:	0785                	addi	a5,a5,1
a00065b4:	0068                	addi	a0,sp,12
a00065b6:	ce06                	sw	ra,28(sp)
a00065b8:	c63e                	sw	a5,12(sp)
a00065ba:	299d                	jal	a0006a30 <HBN_Set_BOD_Cfg>
a00065bc:	40f2                	lw	ra,28(sp)
a00065be:	6105                	addi	sp,sp,32
a00065c0:	8082                	ret

a00065c2 <SystemInit>:
a00065c2:	2000e7b7          	lui	a5,0x2000e
a00065c6:	02000713          	li	a4,32
a00065ca:	50e7a023          	sw	a4,1280(a5) # 2000e500 <remain_wifi_ram+0x1ffee500>
a00065ce:	5007a223          	sw	zero,1284(a5)
a00065d2:	200017b7          	lui	a5,0x20001
a00065d6:	9687a703          	lw	a4,-1688(a5) # 20000968 <remain_wifi_ram+0x1ffe0968>
a00065da:	1141                	addi	sp,sp,-16
a00065dc:	8b05                	andi	a4,a4,1
a00065de:	cf39                	beqz	a4,a000663c <SystemInit+0x7a>
a00065e0:	96c7a703          	lw	a4,-1684(a5)
a00065e4:	8b05                	andi	a4,a4,1
a00065e6:	cb39                	beqz	a4,a000663c <SystemInit+0x7a>
a00065e8:	9707a703          	lw	a4,-1680(a5)
a00065ec:	8b05                	andi	a4,a4,1
a00065ee:	c739                	beqz	a4,a000663c <SystemInit+0x7a>
a00065f0:	9747a703          	lw	a4,-1676(a5)
a00065f4:	8b05                	andi	a4,a4,1
a00065f6:	c339                	beqz	a4,a000663c <SystemInit+0x7a>
a00065f8:	9787a703          	lw	a4,-1672(a5)
a00065fc:	8b05                	andi	a4,a4,1
a00065fe:	cf1d                	beqz	a4,a000663c <SystemInit+0x7a>
a0006600:	97c7a703          	lw	a4,-1668(a5)
a0006604:	8b05                	andi	a4,a4,1
a0006606:	cb1d                	beqz	a4,a000663c <SystemInit+0x7a>
a0006608:	9807a703          	lw	a4,-1664(a5)
a000660c:	8b05                	andi	a4,a4,1
a000660e:	c71d                	beqz	a4,a000663c <SystemInit+0x7a>
a0006610:	9847a703          	lw	a4,-1660(a5)
a0006614:	8b05                	andi	a4,a4,1
a0006616:	c31d                	beqz	a4,a000663c <SystemInit+0x7a>
a0006618:	9887a703          	lw	a4,-1656(a5)
a000661c:	8b05                	andi	a4,a4,1
a000661e:	cf19                	beqz	a4,a000663c <SystemInit+0x7a>
a0006620:	98c7a783          	lw	a5,-1652(a5)
a0006624:	8b85                	andi	a5,a5,1
a0006626:	cb99                	beqz	a5,a000663c <SystemInit+0x7a>
a0006628:	20001737          	lui	a4,0x20001
a000662c:	99072783          	lw	a5,-1648(a4) # 20000990 <remain_wifi_ram+0x1ffe0990>
a0006630:	8b85                	andi	a5,a5,1
a0006632:	c789                	beqz	a5,a000663c <SystemInit+0x7a>
a0006634:	99472783          	lw	a5,-1644(a4)
a0006638:	8b85                	andi	a5,a5,1
a000663a:	ef99                	bnez	a5,a0006658 <SystemInit+0x96>
a000663c:	200057b7          	lui	a5,0x20005
a0006640:	38078793          	addi	a5,a5,896 # 20005380 <remain_wifi_ram+0x1ffe5380>
a0006644:	5398                	lw	a4,32(a5)
a0006646:	66c1                	lui	a3,0x10
a0006648:	9b71                	andi	a4,a4,-4
a000664a:	d398                	sw	a4,32(a5)
a000664c:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a0006650:	d798                	sw	a4,40(a5)
a0006652:	5398                	lw	a4,32(a5)
a0006654:	8f55                	or	a4,a4,a3
a0006656:	d398                	sw	a4,32(a5)
a0006658:	200057b7          	lui	a5,0x20005
a000665c:	43b8                	lw	a4,64(a5)
a000665e:	000206b7          	lui	a3,0x20
a0006662:	f0f77713          	andi	a4,a4,-241
a0006666:	c3b8                	sw	a4,64(a5)
a0006668:	577d                	li	a4,-1
a000666a:	c7f8                	sw	a4,76(a5)
a000666c:	43b8                	lw	a4,64(a5)
a000666e:	8f55                	or	a4,a4,a3
a0006670:	c3b8                	sw	a4,64(a5)
a0006672:	2000b737          	lui	a4,0x2000b
a0006676:	5b3c                	lw	a5,112(a4)
a0006678:	600006b7          	lui	a3,0x60000
a000667c:	8fd5                	or	a5,a5,a3
a000667e:	db3c                	sw	a5,112(a4)
a0006680:	300027f3          	csrr	a5,mstatus
a0006684:	6709                	lui	a4,0x2
a0006686:	8fd9                	or	a5,a5,a4
a0006688:	30079073          	csrw	mstatus,a5
a000668c:	7c0027f3          	csrr	a5,mxstatus
a0006690:	00408737          	lui	a4,0x408
a0006694:	8fd9                	or	a5,a5,a4
a0006696:	7c079073          	csrw	mxstatus,a5
a000669a:	e0800737          	lui	a4,0xe0800
a000669e:	435c                	lw	a5,4(a4)
a00066a0:	00074683          	lbu	a3,0(a4) # e0800000 <__psram_limit+0x38400000>
a00066a4:	e0800537          	lui	a0,0xe0800
a00066a8:	83d1                	srli	a5,a5,0x14
a00066aa:	8bf9                	andi	a5,a5,30
a00066ac:	ac0786f7          	insb	a3,a5,0
a00066b0:	00d70023          	sb	a3,0(a4)
a00066b4:	6785                	lui	a5,0x1
a00066b6:	4701                	li	a4,0
a00066b8:	05000593          	li	a1,80
a00066bc:	04e5160b          	addsl	a2,a0,a4,2
a00066c0:	00f606b3          	add	a3,a2,a5
a00066c4:	000680a3          	sb	zero,1(a3) # 60000001 <__RFTLV_HEAD1_H+0x19adb3bf>
a00066c8:	00f6500b          	srb	zero,a2,a5,0
a00066cc:	00068123          	sb	zero,2(a3)
a00066d0:	0705                	addi	a4,a4,1
a00066d2:	feb715e3          	bne	a4,a1,a00066bc <SystemInit+0xfa>
a00066d6:	e0801737          	lui	a4,0xe0801
a00066da:	4689                	li	a3,2
a00066dc:	00d70723          	sb	a3,14(a4) # e080100e <__psram_limit+0x3840100e>
a00066e0:	04d70723          	sb	a3,78(a4)
a00066e4:	0ff0000f          	fence
a00066e8:	0000100f          	fence.i
a00066ec:	0020000b          	dcache.iall
a00066f0:	7c102773          	csrr	a4,mhcr
a00066f4:	03e78793          	addi	a5,a5,62 # 103e <HeapMinSize+0x3e>
a00066f8:	8fd9                	or	a5,a5,a4
a00066fa:	7c179073          	csrw	mhcr,a5
a00066fe:	0ff0000f          	fence
a0006702:	0000100f          	fence.i
a0006706:	0ff0000f          	fence
a000670a:	0000100f          	fence.i
a000670e:	0100000b          	icache.iall
a0006712:	7c1027f3          	csrr	a5,mhcr
a0006716:	0017e793          	ori	a5,a5,1
a000671a:	7c179073          	csrw	mhcr,a5
a000671e:	0ff0000f          	fence
a0006722:	0000100f          	fence.i
a0006726:	7e1027f3          	csrr	a5,mexstatus
a000672a:	fffd0737          	lui	a4,0xfffd0
a000672e:	177d                	addi	a4,a4,-1
a0006730:	8ff9                	and	a5,a5,a4
a0006732:	7e179073          	csrw	mexstatus,a5
a0006736:	200007b7          	lui	a5,0x20000
a000673a:	577d                	li	a4,-1
a000673c:	66c1                	lui	a3,0x10
a000673e:	14e7aa23          	sw	a4,340(a5) # 20000154 <remain_wifi_ram+0x1ffe0154>
a0006742:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a0006746:	14e7ac23          	sw	a4,344(a5)
a000674a:	00000713          	li	a4,0
a000674e:	c63a                	sw	a4,12(sp)
a0006750:	60c7a783          	lw	a5,1548(a5)
a0006754:	4732                	lw	a4,12(sp)
a0006756:	eb09                	bnez	a4,a0006768 <SystemInit+0x1a6>
a0006758:	ff07f713          	andi	a4,a5,-16
a000675c:	200007b7          	lui	a5,0x20000
a0006760:	60e7a623          	sw	a4,1548(a5) # 2000060c <remain_wifi_ram+0x1ffe060c>
a0006764:	0141                	addi	sp,sp,16
a0006766:	8082                	ret
a0006768:	4632                	lw	a2,12(sp)
a000676a:	6721                	lui	a4,0x8
a000676c:	00e61663          	bne	a2,a4,a0006778 <SystemInit+0x1b6>
a0006770:	9bc1                	andi	a5,a5,-16
a0006772:	0037e713          	ori	a4,a5,3
a0006776:	b7dd                	j	a000675c <SystemInit+0x19a>
a0006778:	4632                	lw	a2,12(sp)
a000677a:	ff07f713          	andi	a4,a5,-16
a000677e:	fcd61fe3          	bne	a2,a3,a000675c <SystemInit+0x19a>
a0006782:	00f7e713          	ori	a4,a5,15
a0006786:	bfd9                	j	a000675c <SystemInit+0x19a>

a0006788 <System_Post_Init>:
a0006788:	1141                	addi	sp,sp,-16
a000678a:	c606                	sw	ra,12(sp)
a000678c:	3505                	jal	a00065ac <System_BOD_Init>
a000678e:	0ff0000f          	fence
a0006792:	0010000b          	dcache.call
a0006796:	0ff0000f          	fence
a000679a:	0ff0000f          	fence
a000679e:	0000100f          	fence.i
a00067a2:	0100000b          	icache.iall
a00067a6:	0ff0000f          	fence
a00067aa:	0000100f          	fence.i
a00067ae:	c2fba097          	auipc	ra,0xc2fba
a00067b2:	21c080e7          	jalr	540(ra) # 62fc09ca <system_setup_xtal_config.isra.0>
a00067b6:	30046073          	csrsi	mstatus,8
a00067ba:	40b2                	lw	ra,12(sp)
a00067bc:	0141                	addi	sp,sp,16
a00067be:	8082                	ret

a00067c0 <exception_entry>:
a00067c0:	a0008537          	lui	a0,0xa0008
a00067c4:	715d                	addi	sp,sp,-80
a00067c6:	e4c50513          	addi	a0,a0,-436 # a0007e4c <__psram_limit+0xf7c07e4c>
a00067ca:	c686                	sw	ra,76(sp)
a00067cc:	c4a2                	sw	s0,72(sp)
a00067ce:	c2a6                	sw	s1,68(sp)
a00067d0:	c0ca                	sw	s2,64(sp)
a00067d2:	fcdfe0ef          	jal	ra,a000579e <printf>
a00067d6:	34202473          	csrr	s0,mcause
a00067da:	a0008537          	lui	a0,0xa0008
a00067de:	85a2                	mv	a1,s0
a00067e0:	e6050513          	addi	a0,a0,-416 # a0007e60 <__psram_limit+0xf7c07e60>
a00067e4:	fbbfe0ef          	jal	ra,a000579e <printf>
a00067e8:	341024f3          	csrr	s1,mepc
a00067ec:	a0008537          	lui	a0,0xa0008
a00067f0:	85a6                	mv	a1,s1
a00067f2:	e7050513          	addi	a0,a0,-400 # a0007e70 <__psram_limit+0xf7c07e70>
a00067f6:	fa9fe0ef          	jal	ra,a000579e <printf>
a00067fa:	343025f3          	csrr	a1,mtval
a00067fe:	a0008537          	lui	a0,0xa0008
a0006802:	e7c50513          	addi	a0,a0,-388 # a0007e7c <__psram_limit+0xf7c07e7c>
a0006806:	f99fe0ef          	jal	ra,a000579e <printf>
a000680a:	a00085b7          	lui	a1,0xa0008
a000680e:	04000613          	li	a2,64
a0006812:	e9458593          	addi	a1,a1,-364 # a0007e94 <__psram_limit+0xf7c07e94>
a0006816:	850a                	mv	a0,sp
a0006818:	eb2fd0ef          	jal	ra,a0003eca <memcpy>
a000681c:	3ff47913          	andi	s2,s0,1023
a0006820:	883d                	andi	s0,s0,15
a0006822:	4481458b          	lrw	a1,sp,s0,2
a0006826:	a0008537          	lui	a0,0xa0008
a000682a:	e8c50513          	addi	a0,a0,-372 # a0007e8c <__psram_limit+0xf7c07e8c>
a000682e:	f71fe0ef          	jal	ra,a000579e <printf>
a0006832:	47a1                	li	a5,8
a0006834:	00f90d63          	beq	s2,a5,a000684e <exception_entry+0x8e>
a0006838:	47ad                	li	a5,11
a000683a:	00f90a63          	beq	s2,a5,a000684e <exception_entry+0x8e>
a000683e:	62fc3437          	lui	s0,0x62fc3
a0006842:	d3040413          	addi	s0,s0,-720 # 62fc2d30 <gpio>
a0006846:	8122                	mv	sp,s0
a0006848:	960ff0ef          	jal	ra,a00059a8 <coredump_run>
a000684c:	bfed                	j	a0006846 <exception_entry+0x86>
a000684e:	0491                	addi	s1,s1,4
a0006850:	34149073          	csrw	mepc,s1
a0006854:	40b6                	lw	ra,76(sp)
a0006856:	4426                	lw	s0,72(sp)
a0006858:	4496                	lw	s1,68(sp)
a000685a:	4906                	lw	s2,64(sp)
a000685c:	6161                	addi	sp,sp,80
a000685e:	8082                	ret

a0006860 <interrupt_entry>:
a0006860:	1141                	addi	sp,sp,-16
a0006862:	c602                	sw	zero,12(sp)
a0006864:	342027f3          	csrr	a5,mcause
a0006868:	c63e                	sw	a5,12(sp)
a000686a:	4532                	lw	a0,12(sp)
a000686c:	04f00793          	li	a5,79
a0006870:	3ff57513          	andi	a0,a0,1023
a0006874:	00a7ee63          	bltu	a5,a0,a0006890 <interrupt_entry+0x30>
a0006878:	62fc37b7          	lui	a5,0x62fc3
a000687c:	19078793          	addi	a5,a5,400 # 62fc3190 <g_irqvector>
a0006880:	46a7c70b          	lrw	a4,a5,a0,3
a0006884:	c711                	beqz	a4,a0006890 <interrupt_entry+0x30>
a0006886:	06a7978b          	addsl	a5,a5,a0,3
a000688a:	43cc                	lw	a1,4(a5)
a000688c:	0141                	addi	sp,sp,16
a000688e:	8702                	jr	a4
a0006890:	0141                	addi	sp,sp,16
a0006892:	8082                	ret

a0006894 <GLB_Set_ADC_CLK>:
a0006894:	200007b7          	lui	a5,0x20000
a0006898:	10078793          	addi	a5,a5,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a000689c:	4b98                	lw	a4,16(a5)
a000689e:	059e                	slli	a1,a1,0x7
a00068a0:	eff77713          	andi	a4,a4,-257
a00068a4:	cb98                	sw	a4,16(a5)
a00068a6:	4b98                	lw	a4,16(a5)
a00068a8:	fc077713          	andi	a4,a4,-64
a00068ac:	8e59                	or	a2,a2,a4
a00068ae:	f7f67613          	andi	a2,a2,-129
a00068b2:	8dd1                	or	a1,a1,a2
a00068b4:	cb8c                	sw	a1,16(a5)
a00068b6:	4b98                	lw	a4,16(a5)
a00068b8:	eff77793          	andi	a5,a4,-257
a00068bc:	c119                	beqz	a0,a00068c2 <GLB_Set_ADC_CLK+0x2e>
a00068be:	10076793          	ori	a5,a4,256
a00068c2:	20000737          	lui	a4,0x20000
a00068c6:	10f72823          	sw	a5,272(a4) # 20000110 <remain_wifi_ram+0x1ffe0110>
a00068ca:	4501                	li	a0,0
a00068cc:	8082                	ret

a00068ce <GLB_Set_IR_CLK>:
a00068ce:	20000737          	lui	a4,0x20000
a00068d2:	10070713          	addi	a4,a4,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a00068d6:	4334                	lw	a3,64(a4)
a00068d8:	ff8007b7          	lui	a5,0xff800
a00068dc:	17fd                	addi	a5,a5,-1
a00068de:	8efd                	and	a3,a3,a5
a00068e0:	c334                	sw	a3,64(a4)
a00068e2:	4334                	lw	a3,64(a4)
a00068e4:	ffc105b7          	lui	a1,0xffc10
a00068e8:	15fd                	addi	a1,a1,-1
a00068ea:	8eed                	and	a3,a3,a1
a00068ec:	0642                	slli	a2,a2,0x10
a00068ee:	8e55                	or	a2,a2,a3
a00068f0:	c330                	sw	a2,64(a4)
a00068f2:	4338                	lw	a4,64(a4)
a00068f4:	8ff9                	and	a5,a5,a4
a00068f6:	c501                	beqz	a0,a00068fe <GLB_Set_IR_CLK+0x30>
a00068f8:	008007b7          	lui	a5,0x800
a00068fc:	8fd9                	or	a5,a5,a4
a00068fe:	20000737          	lui	a4,0x20000
a0006902:	14f72023          	sw	a5,320(a4) # 20000140 <remain_wifi_ram+0x1ffe0140>
a0006906:	4501                	li	a0,0
a0006908:	8082                	ret

a000690a <GLB_Set_I2C_CLK>:
a000690a:	20000737          	lui	a4,0x20000
a000690e:	18070713          	addi	a4,a4,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006912:	4314                	lw	a3,0(a4)
a0006914:	ff0007b7          	lui	a5,0xff000
a0006918:	17fd                	addi	a5,a5,-1
a000691a:	8efd                	and	a3,a3,a5
a000691c:	c314                	sw	a3,0(a4)
a000691e:	4314                	lw	a3,0(a4)
a0006920:	fe000837          	lui	a6,0xfe000
a0006924:	187d                	addi	a6,a6,-1
a0006926:	0106f6b3          	and	a3,a3,a6
a000692a:	05e6                	slli	a1,a1,0x19
a000692c:	8dd5                	or	a1,a1,a3
a000692e:	ff0106b7          	lui	a3,0xff010
a0006932:	16fd                	addi	a3,a3,-1
a0006934:	8df5                	and	a1,a1,a3
a0006936:	0642                	slli	a2,a2,0x10
a0006938:	8dd1                	or	a1,a1,a2
a000693a:	c30c                	sw	a1,0(a4)
a000693c:	4318                	lw	a4,0(a4)
a000693e:	8ff9                	and	a5,a5,a4
a0006940:	c501                	beqz	a0,a0006948 <GLB_Set_I2C_CLK+0x3e>
a0006942:	010007b7          	lui	a5,0x1000
a0006946:	8fd9                	or	a5,a5,a4
a0006948:	20000737          	lui	a4,0x20000
a000694c:	18f72023          	sw	a5,384(a4) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006950:	4501                	li	a0,0
a0006952:	8082                	ret

a0006954 <GLB_Set_SPI_CLK>:
a0006954:	200007b7          	lui	a5,0x20000
a0006958:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a000695c:	5b94                	lw	a3,48(a5)
a000695e:	05a6                	slli	a1,a1,0x9
a0006960:	eff6f693          	andi	a3,a3,-257
a0006964:	db94                	sw	a3,48(a5)
a0006966:	5b98                	lw	a4,48(a5)
a0006968:	de077713          	andi	a4,a4,-544
a000696c:	8f51                	or	a4,a4,a2
a000696e:	8dd9                	or	a1,a1,a4
a0006970:	db8c                	sw	a1,48(a5)
a0006972:	5b98                	lw	a4,48(a5)
a0006974:	eff77793          	andi	a5,a4,-257
a0006978:	c119                	beqz	a0,a000697e <GLB_Set_SPI_CLK+0x2a>
a000697a:	10076793          	ori	a5,a4,256
a000697e:	20000737          	lui	a4,0x20000
a0006982:	1af72823          	sw	a5,432(a4) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a0006986:	4501                	li	a0,0
a0006988:	8082                	ret

a000698a <GLB_Set_DBI_CLK>:
a000698a:	200007b7          	lui	a5,0x20000
a000698e:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006992:	5bb4                	lw	a3,112(a5)
a0006994:	05a6                	slli	a1,a1,0x9
a0006996:	eff6f693          	andi	a3,a3,-257
a000699a:	dbb4                	sw	a3,112(a5)
a000699c:	5bb8                	lw	a4,112(a5)
a000699e:	de077713          	andi	a4,a4,-544
a00069a2:	8f51                	or	a4,a4,a2
a00069a4:	8dd9                	or	a1,a1,a4
a00069a6:	dbac                	sw	a1,112(a5)
a00069a8:	5bb8                	lw	a4,112(a5)
a00069aa:	eff77793          	andi	a5,a4,-257
a00069ae:	c119                	beqz	a0,a00069b4 <GLB_Set_DBI_CLK+0x2a>
a00069b0:	10076793          	ori	a5,a4,256
a00069b4:	20000737          	lui	a4,0x20000
a00069b8:	1ef72823          	sw	a5,496(a4) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a00069bc:	4501                	li	a0,0
a00069be:	8082                	ret

a00069c0 <GLB_Set_CAM_CLK>:
a00069c0:	20000737          	lui	a4,0x20000
a00069c4:	40070713          	addi	a4,a4,1024 # 20000400 <remain_wifi_ram+0x1ffe0400>
a00069c8:	5314                	lw	a3,32(a4)
a00069ca:	f80007b7          	lui	a5,0xf8000
a00069ce:	17fd                	addi	a5,a5,-1
a00069d0:	8efd                	and	a3,a3,a5
a00069d2:	d314                	sw	a3,32(a4)
a00069d4:	5314                	lw	a3,32(a4)
a00069d6:	d0000837          	lui	a6,0xd0000
a00069da:	187d                	addi	a6,a6,-1
a00069dc:	0106f6b3          	and	a3,a3,a6
a00069e0:	05f2                	slli	a1,a1,0x1c
a00069e2:	8dd5                	or	a1,a1,a3
a00069e4:	400006b7          	lui	a3,0x40000
a00069e8:	16fd                	addi	a3,a3,-1
a00069ea:	8df5                	and	a1,a1,a3
a00069ec:	067a                	slli	a2,a2,0x1e
a00069ee:	8dd1                	or	a1,a1,a2
a00069f0:	d30c                	sw	a1,32(a4)
a00069f2:	5318                	lw	a4,32(a4)
a00069f4:	8ff9                	and	a5,a5,a4
a00069f6:	c501                	beqz	a0,a00069fe <GLB_Set_CAM_CLK+0x3e>
a00069f8:	080007b7          	lui	a5,0x8000
a00069fc:	8fd9                	or	a5,a5,a4
a00069fe:	20000737          	lui	a4,0x20000
a0006a02:	42f72023          	sw	a5,1056(a4) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0006a06:	4501                	li	a0,0
a0006a08:	8082                	ret

a0006a0a <HBN_Enable_BOD_IRQ>:
a0006a0a:	2000f737          	lui	a4,0x2000f
a0006a0e:	4b5c                	lw	a5,20(a4)
a0006a10:	000406b7          	lui	a3,0x40
a0006a14:	4501                	li	a0,0
a0006a16:	8fd5                	or	a5,a5,a3
a0006a18:	cb5c                	sw	a5,20(a4)
a0006a1a:	8082                	ret

a0006a1c <HBN_Disable_BOD_IRQ>:
a0006a1c:	2000f6b7          	lui	a3,0x2000f
a0006a20:	4adc                	lw	a5,20(a3)
a0006a22:	fffc0737          	lui	a4,0xfffc0
a0006a26:	177d                	addi	a4,a4,-1
a0006a28:	8ff9                	and	a5,a5,a4
a0006a2a:	cadc                	sw	a5,20(a3)
a0006a2c:	4501                	li	a0,0
a0006a2e:	8082                	ret

a0006a30 <HBN_Set_BOD_Cfg>:
a0006a30:	1141                	addi	sp,sp,-16
a0006a32:	c422                	sw	s0,8(sp)
a0006a34:	c606                	sw	ra,12(sp)
a0006a36:	00154783          	lbu	a5,1(a0)
a0006a3a:	842a                	mv	s0,a0
a0006a3c:	c3a9                	beqz	a5,a0006a7e <HBN_Set_BOD_Cfg+0x4e>
a0006a3e:	37f1                	jal	a0006a0a <HBN_Enable_BOD_IRQ>
a0006a40:	2000f7b7          	lui	a5,0x2000f
a0006a44:	57dc                	lw	a5,44(a5)
a0006a46:	00344683          	lbu	a3,3(s0)
a0006a4a:	ff17f713          	andi	a4,a5,-15
a0006a4e:	00244783          	lbu	a5,2(s0)
a0006a52:	0786                	slli	a5,a5,0x1
a0006a54:	8fd9                	or	a5,a5,a4
a0006a56:	ffe7f713          	andi	a4,a5,-2
a0006a5a:	c299                	beqz	a3,a0006a60 <HBN_Set_BOD_Cfg+0x30>
a0006a5c:	0017e713          	ori	a4,a5,1
a0006a60:	00044683          	lbu	a3,0(s0)
a0006a64:	fef77793          	andi	a5,a4,-17
a0006a68:	c299                	beqz	a3,a0006a6e <HBN_Set_BOD_Cfg+0x3e>
a0006a6a:	01076793          	ori	a5,a4,16
a0006a6e:	40b2                	lw	ra,12(sp)
a0006a70:	4422                	lw	s0,8(sp)
a0006a72:	2000f737          	lui	a4,0x2000f
a0006a76:	d75c                	sw	a5,44(a4)
a0006a78:	4501                	li	a0,0
a0006a7a:	0141                	addi	sp,sp,16
a0006a7c:	8082                	ret
a0006a7e:	3f79                	jal	a0006a1c <HBN_Disable_BOD_IRQ>
a0006a80:	b7c1                	j	a0006a40 <HBN_Set_BOD_Cfg+0x10>

a0006a82 <Clock_DBI_Clk_Mux_Output>:
a0006a82:	e919                	bnez	a0,a0006a98 <Clock_DBI_Clk_Mux_Output+0x16>
a0006a84:	200007b7          	lui	a5,0x20000
a0006a88:	2547a503          	lw	a0,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a0006a8c:	2ca5350b          	extu	a0,a0,11,10
a0006a90:	c2fbb317          	auipc	t1,0xc2fbb
a0006a94:	d4430067          	jr	-700(t1) # 62fc17d4 <Clock_160M_Clk_Mux_Output>
a0006a98:	4515                	li	a0,5
a0006a9a:	c2fbb317          	auipc	t1,0xc2fbb
a0006a9e:	e3c30067          	jr	-452(t1) # 62fc18d6 <Clock_System_Clock_Get>

a0006aa2 <Clock_Get_PSRAMB_Clk>:
a0006aa2:	1141                	addi	sp,sp,-16
a0006aa4:	200007b7          	lui	a5,0x20000
a0006aa8:	c422                	sw	s0,8(sp)
a0006aaa:	6207a403          	lw	s0,1568(a5) # 20000620 <remain_wifi_ram+0x1ffe0620>
a0006aae:	6207a783          	lw	a5,1568(a5)
a0006ab2:	c606                	sw	ra,12(sp)
a0006ab4:	8079                	srli	s0,s0,0x1e
a0006ab6:	71c7b78b          	extu	a5,a5,28,28
a0006aba:	1312d537          	lui	a0,0x1312d
a0006abe:	c791                	beqz	a5,a0006aca <Clock_Get_PSRAMB_Clk+0x28>
a0006ac0:	4501                	li	a0,0
a0006ac2:	c2fbb097          	auipc	ra,0xc2fbb
a0006ac6:	baa080e7          	jalr	-1110(ra) # 62fc166c <Clock_Get_AUPLL_Output>
a0006aca:	0405                	addi	s0,s0,1
a0006acc:	02855533          	divu	a0,a0,s0
a0006ad0:	40b2                	lw	ra,12(sp)
a0006ad2:	4422                	lw	s0,8(sp)
a0006ad4:	0141                	addi	sp,sp,16
a0006ad6:	8082                	ret

a0006ad8 <Clock_Get_ISP_Clk>:
a0006ad8:	200007b7          	lui	a5,0x20000
a0006adc:	2547a783          	lw	a5,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a0006ae0:	8b8d                	andi	a5,a5,3
a0006ae2:	cb91                	beqz	a5,a0006af6 <Clock_Get_ISP_Clk+0x1e>
a0006ae4:	4705                	li	a4,1
a0006ae6:	4515                	li	a0,5
a0006ae8:	00e78363          	beq	a5,a4,a0006aee <Clock_Get_ISP_Clk+0x16>
a0006aec:	4519                	li	a0,6
a0006aee:	c2fbb317          	auipc	t1,0xc2fbb
a0006af2:	b7e30067          	jr	-1154(t1) # 62fc166c <Clock_Get_AUPLL_Output>
a0006af6:	04c4b537          	lui	a0,0x4c4b
a0006afa:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a0006afe:	8082                	ret

a0006b00 <Clock_Audio_ADC_Clock_Get>:
a0006b00:	1141                	addi	sp,sp,-16
a0006b02:	c606                	sw	ra,12(sp)
a0006b04:	c2fbb097          	auipc	ra,0xc2fbb
a0006b08:	cae080e7          	jalr	-850(ra) # 62fc17b2 <Clock_Get_Audio_PLL_Output>
a0006b0c:	200007b7          	lui	a5,0x20000
a0006b10:	3447a783          	lw	a5,836(a5) # 20000344 <remain_wifi_ram+0x1ffe0344>
a0006b14:	40b2                	lw	ra,12(sp)
a0006b16:	5d07b78b          	extu	a5,a5,23,16
a0006b1a:	0785                	addi	a5,a5,1
a0006b1c:	02f55533          	divu	a0,a0,a5
a0006b20:	0141                	addi	sp,sp,16
a0006b22:	8082                	ret

a0006b24 <Clock_Peripheral_Clock_Get>:
a0006b24:	1141                	addi	sp,sp,-16
a0006b26:	c606                	sw	ra,12(sp)
a0006b28:	c422                	sw	s0,8(sp)
a0006b2a:	4731                	li	a4,12
a0006b2c:	22e50d63          	beq	a0,a4,a0006d66 <Clock_Peripheral_Clock_Get+0x242>
a0006b30:	87aa                	mv	a5,a0
a0006b32:	04a76c63          	bltu	a4,a0,a0006b8a <Clock_Peripheral_Clock_Get+0x66>
a0006b36:	471d                	li	a4,7
a0006b38:	18e50863          	beq	a0,a4,a0006cc8 <Clock_Peripheral_Clock_Get+0x1a4>
a0006b3c:	02a76a63          	bltu	a4,a0,a0006b70 <Clock_Peripheral_Clock_Get+0x4c>
a0006b40:	4715                	li	a4,5
a0006b42:	14e50163          	beq	a0,a4,a0006c84 <Clock_Peripheral_Clock_Get+0x160>
a0006b46:	00a76a63          	bltu	a4,a0,a0006b5a <Clock_Peripheral_Clock_Get+0x36>
a0006b4a:	4709                	li	a4,2
a0006b4c:	0ca77b63          	bgeu	a4,a0,a0006c22 <Clock_Peripheral_Clock_Get+0xfe>
a0006b50:	470d                	li	a4,3
a0006b52:	10e50e63          	beq	a0,a4,a0006c6e <Clock_Peripheral_Clock_Get+0x14a>
a0006b56:	4501                	li	a0,0
a0006b58:	a02d                	j	a0006b82 <Clock_Peripheral_Clock_Get+0x5e>
a0006b5a:	4719                	li	a4,6
a0006b5c:	fee51de3          	bne	a0,a4,a0006b56 <Clock_Peripheral_Clock_Get+0x32>
a0006b60:	4422                	lw	s0,8(sp)
a0006b62:	40b2                	lw	ra,12(sp)
a0006b64:	450d                	li	a0,3
a0006b66:	0141                	addi	sp,sp,16
a0006b68:	c2fbb317          	auipc	t1,0xc2fbb
a0006b6c:	d6e30067          	jr	-658(t1) # 62fc18d6 <Clock_System_Clock_Get>
a0006b70:	4729                	li	a4,10
a0006b72:	14e50763          	beq	a0,a4,a0006cc0 <Clock_Peripheral_Clock_Get+0x19c>
a0006b76:	46ad                	li	a3,11
a0006b78:	14d50c63          	beq	a0,a3,a0006cd0 <Clock_Peripheral_Clock_Get+0x1ac>
a0006b7c:	4501                	li	a0,0
a0006b7e:	10e79d63          	bne	a5,a4,a0006c98 <Clock_Peripheral_Clock_Get+0x174>
a0006b82:	40b2                	lw	ra,12(sp)
a0006b84:	4422                	lw	s0,8(sp)
a0006b86:	0141                	addi	sp,sp,16
a0006b88:	8082                	ret
a0006b8a:	4745                	li	a4,17
a0006b8c:	26e50763          	beq	a0,a4,a0006dfa <Clock_Peripheral_Clock_Get+0x2d6>
a0006b90:	04a76b63          	bltu	a4,a0,a0006be6 <Clock_Peripheral_Clock_Get+0xc2>
a0006b94:	473d                	li	a4,15
a0006b96:	1ee50f63          	beq	a0,a4,a0006d94 <Clock_Peripheral_Clock_Get+0x270>
a0006b9a:	00a76c63          	bltu	a4,a0,a0006bb2 <Clock_Peripheral_Clock_Get+0x8e>
a0006b9e:	4735                	li	a4,13
a0006ba0:	1ce50e63          	beq	a0,a4,a0006d7c <Clock_Peripheral_Clock_Get+0x258>
a0006ba4:	4739                	li	a4,14
a0006ba6:	fae518e3          	bne	a0,a4,a0006b56 <Clock_Peripheral_Clock_Get+0x32>
a0006baa:	4422                	lw	s0,8(sp)
a0006bac:	40b2                	lw	ra,12(sp)
a0006bae:	0141                	addi	sp,sp,16
a0006bb0:	bf81                	j	a0006b00 <Clock_Audio_ADC_Clock_Get>
a0006bb2:	4741                	li	a4,16
a0006bb4:	fae511e3          	bne	a0,a4,a0006b56 <Clock_Peripheral_Clock_Get+0x32>
a0006bb8:	200007b7          	lui	a5,0x20000
a0006bbc:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a0006bc0:	75c7b78b          	extu	a5,a5,29,28
a0006bc4:	22078663          	beqz	a5,a0006df0 <Clock_Peripheral_Clock_Get+0x2cc>
a0006bc8:	4705                	li	a4,1
a0006bca:	20e79e63          	bne	a5,a4,a0006de6 <Clock_Peripheral_Clock_Get+0x2c2>
a0006bce:	4515                	li	a0,5
a0006bd0:	c2fbb097          	auipc	ra,0xc2fbb
a0006bd4:	d06080e7          	jalr	-762(ra) # 62fc18d6 <Clock_System_Clock_Get>
a0006bd8:	200007b7          	lui	a5,0x20000
a0006bdc:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a0006be0:	5907b78b          	extu	a5,a5,22,16
a0006be4:	a8a5                	j	a0006c5c <Clock_Peripheral_Clock_Get+0x138>
a0006be6:	474d                	li	a4,19
a0006be8:	24e50e63          	beq	a0,a4,a0006e44 <Clock_Peripheral_Clock_Get+0x320>
a0006bec:	4751                	li	a4,20
a0006bee:	6521                	lui	a0,0x8
a0006bf0:	f8e789e3          	beq	a5,a4,a0006b82 <Clock_Peripheral_Clock_Get+0x5e>
a0006bf4:	4749                	li	a4,18
a0006bf6:	f6e790e3          	bne	a5,a4,a0006b56 <Clock_Peripheral_Clock_Get+0x32>
a0006bfa:	200007b7          	lui	a5,0x20000
a0006bfe:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a0006c02:	30c7b78b          	extu	a5,a5,12,12
a0006c06:	22078a63          	beqz	a5,a0006e3a <Clock_Peripheral_Clock_Get+0x316>
a0006c0a:	4515                	li	a0,5
a0006c0c:	c2fbb097          	auipc	ra,0xc2fbb
a0006c10:	a60080e7          	jalr	-1440(ra) # 62fc166c <Clock_Get_AUPLL_Output>
a0006c14:	200007b7          	lui	a5,0x20000
a0006c18:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a0006c1c:	2c97b78b          	extu	a5,a5,11,9
a0006c20:	a835                	j	a0006c5c <Clock_Peripheral_Clock_Get+0x138>
a0006c22:	200006b7          	lui	a3,0x20000
a0006c26:	1506a703          	lw	a4,336(a3) # 20000150 <remain_wifi_ram+0x1ffe0150>
a0006c2a:	450d                	li	a0,3
a0006c2c:	01575793          	srli	a5,a4,0x15
a0006c30:	8b89                	andi	a5,a5,2
a0006c32:	1c77370b          	extu	a4,a4,7,7
a0006c36:	8fd9                	or	a5,a5,a4
a0006c38:	c795                	beqz	a5,a0006c64 <Clock_Peripheral_Clock_Get+0x140>
a0006c3a:	4705                	li	a4,1
a0006c3c:	4515                	li	a0,5
a0006c3e:	02e79363          	bne	a5,a4,a0006c64 <Clock_Peripheral_Clock_Get+0x140>
a0006c42:	2546a503          	lw	a0,596(a3)
a0006c46:	2ca5350b          	extu	a0,a0,11,10
a0006c4a:	c2fbb097          	auipc	ra,0xc2fbb
a0006c4e:	b8a080e7          	jalr	-1142(ra) # 62fc17d4 <Clock_160M_Clk_Mux_Output>
a0006c52:	200007b7          	lui	a5,0x20000
a0006c56:	1507a783          	lw	a5,336(a5) # 20000150 <remain_wifi_ram+0x1ffe0150>
a0006c5a:	8b9d                	andi	a5,a5,7
a0006c5c:	0785                	addi	a5,a5,1
a0006c5e:	02f55533          	divu	a0,a0,a5
a0006c62:	b705                	j	a0006b82 <Clock_Peripheral_Clock_Get+0x5e>
a0006c64:	c2fbb097          	auipc	ra,0xc2fbb
a0006c68:	c72080e7          	jalr	-910(ra) # 62fc18d6 <Clock_System_Clock_Get>
a0006c6c:	b7dd                	j	a0006c52 <Clock_Peripheral_Clock_Get+0x12e>
a0006c6e:	20000437          	lui	s0,0x20000
a0006c72:	1b042503          	lw	a0,432(s0) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a0006c76:	2495350b          	extu	a0,a0,9,9
a0006c7a:	3521                	jal	a0006a82 <Clock_DBI_Clk_Mux_Output>
a0006c7c:	1b042783          	lw	a5,432(s0)
a0006c80:	8bfd                	andi	a5,a5,31
a0006c82:	bfe9                	j	a0006c5c <Clock_Peripheral_Clock_Get+0x138>
a0006c84:	20000437          	lui	s0,0x20000
a0006c88:	1f042503          	lw	a0,496(s0) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a0006c8c:	2495350b          	extu	a0,a0,9,9
a0006c90:	3bcd                	jal	a0006a82 <Clock_DBI_Clk_Mux_Output>
a0006c92:	1f042783          	lw	a5,496(s0)
a0006c96:	b7ed                	j	a0006c80 <Clock_Peripheral_Clock_Get+0x15c>
a0006c98:	200007b7          	lui	a5,0x20000
a0006c9c:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006ca0:	450d                	li	a0,3
a0006ca2:	6597b78b          	extu	a5,a5,25,25
a0006ca6:	c391                	beqz	a5,a0006caa <Clock_Peripheral_Clock_Get+0x186>
a0006ca8:	4515                	li	a0,5
a0006caa:	c2fbb097          	auipc	ra,0xc2fbb
a0006cae:	c2c080e7          	jalr	-980(ra) # 62fc18d6 <Clock_System_Clock_Get>
a0006cb2:	200007b7          	lui	a5,0x20000
a0006cb6:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0006cba:	5d07b78b          	extu	a5,a5,23,16
a0006cbe:	bf79                	j	a0006c5c <Clock_Peripheral_Clock_Get+0x138>
a0006cc0:	4422                	lw	s0,8(sp)
a0006cc2:	40b2                	lw	ra,12(sp)
a0006cc4:	0141                	addi	sp,sp,16
a0006cc6:	bbf1                	j	a0006aa2 <Clock_Get_PSRAMB_Clk>
a0006cc8:	4422                	lw	s0,8(sp)
a0006cca:	40b2                	lw	ra,12(sp)
a0006ccc:	0141                	addi	sp,sp,16
a0006cce:	b529                	j	a0006ad8 <Clock_Get_ISP_Clk>
a0006cd0:	20000737          	lui	a4,0x20000
a0006cd4:	17072783          	lw	a5,368(a4) # 20000170 <remain_wifi_ram+0x1ffe0170>
a0006cd8:	34c7b78b          	extu	a5,a5,13,12
a0006cdc:	ef8d                	bnez	a5,a0006d16 <Clock_Peripheral_Clock_Get+0x1f2>
a0006cde:	17072783          	lw	a5,368(a4)
a0006ce2:	3ce7b78b          	extu	a5,a5,15,14
a0006ce6:	c3ad                	beqz	a5,a0006d48 <Clock_Peripheral_Clock_Get+0x224>
a0006ce8:	4705                	li	a4,1
a0006cea:	00e79d63          	bne	a5,a4,a0006d04 <Clock_Peripheral_Clock_Get+0x1e0>
a0006cee:	c2fbb097          	auipc	ra,0xc2fbb
a0006cf2:	b14080e7          	jalr	-1260(ra) # 62fc1802 <Clock_Xtal_Output>
a0006cf6:	200007b7          	lui	a5,0x20000
a0006cfa:	1707a783          	lw	a5,368(a5) # 20000170 <remain_wifi_ram+0x1ffe0170>
a0006cfe:	2887b78b          	extu	a5,a5,10,8
a0006d02:	bfa9                	j	a0006c5c <Clock_Peripheral_Clock_Get+0x138>
a0006d04:	4709                	li	a4,2
a0006d06:	04e78163          	beq	a5,a4,a0006d48 <Clock_Peripheral_Clock_Get+0x224>
a0006d0a:	4515                	li	a0,5
a0006d0c:	c2fbb097          	auipc	ra,0xc2fbb
a0006d10:	960080e7          	jalr	-1696(ra) # 62fc166c <Clock_Get_AUPLL_Output>
a0006d14:	b7cd                	j	a0006cf6 <Clock_Peripheral_Clock_Get+0x1d2>
a0006d16:	4685                	li	a3,1
a0006d18:	00d79f63          	bne	a5,a3,a0006d36 <Clock_Peripheral_Clock_Get+0x212>
a0006d1c:	25472703          	lw	a4,596(a4)
a0006d20:	2487370b          	extu	a4,a4,9,8
a0006d24:	c71d                	beqz	a4,a0006d52 <Clock_Peripheral_Clock_Get+0x22e>
a0006d26:	fef702e3          	beq	a4,a5,a0006d0a <Clock_Peripheral_Clock_Get+0x1e6>
a0006d2a:	4789                	li	a5,2
a0006d2c:	4501                	li	a0,0
a0006d2e:	fcf714e3          	bne	a4,a5,a0006cf6 <Clock_Peripheral_Clock_Get+0x1d2>
a0006d32:	4519                	li	a0,6
a0006d34:	bfe1                	j	a0006d0c <Clock_Peripheral_Clock_Get+0x1e8>
a0006d36:	4709                	li	a4,2
a0006d38:	02e79263          	bne	a5,a4,a0006d5c <Clock_Peripheral_Clock_Get+0x238>
a0006d3c:	450d                	li	a0,3
a0006d3e:	c2fbb097          	auipc	ra,0xc2fbb
a0006d42:	b98080e7          	jalr	-1128(ra) # 62fc18d6 <Clock_System_Clock_Get>
a0006d46:	bf45                	j	a0006cf6 <Clock_Peripheral_Clock_Get+0x1d2>
a0006d48:	07271537          	lui	a0,0x7271
a0006d4c:	e0050513          	addi	a0,a0,-512 # 7270e00 <remain_wifi_ram+0x7250e00>
a0006d50:	b75d                	j	a0006cf6 <Clock_Peripheral_Clock_Get+0x1d2>
a0006d52:	04c4b537          	lui	a0,0x4c4b
a0006d56:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a0006d5a:	bf71                	j	a0006cf6 <Clock_Peripheral_Clock_Get+0x1d2>
a0006d5c:	05b8e537          	lui	a0,0x5b8e
a0006d60:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0006d64:	bf49                	j	a0006cf6 <Clock_Peripheral_Clock_Get+0x1d2>
a0006d66:	c2fbb097          	auipc	ra,0xc2fbb
a0006d6a:	a4c080e7          	jalr	-1460(ra) # 62fc17b2 <Clock_Get_Audio_PLL_Output>
a0006d6e:	200007b7          	lui	a5,0x20000
a0006d72:	1907a783          	lw	a5,400(a5) # 20000190 <remain_wifi_ram+0x1ffe0190>
a0006d76:	03f7f793          	andi	a5,a5,63
a0006d7a:	b5cd                	j	a0006c5c <Clock_Peripheral_Clock_Get+0x138>
a0006d7c:	4515                	li	a0,5
a0006d7e:	c2fbb097          	auipc	ra,0xc2fbb
a0006d82:	b58080e7          	jalr	-1192(ra) # 62fc18d6 <Clock_System_Clock_Get>
a0006d86:	200007b7          	lui	a5,0x20000
a0006d8a:	1407a783          	lw	a5,320(a5) # 20000140 <remain_wifi_ram+0x1ffe0140>
a0006d8e:	5507b78b          	extu	a5,a5,21,16
a0006d92:	b5e9                	j	a0006c5c <Clock_Peripheral_Clock_Get+0x138>
a0006d94:	2000f737          	lui	a4,0x2000f
a0006d98:	531c                	lw	a5,32(a4)
a0006d9a:	2087b78b          	extu	a5,a5,8,8
a0006d9e:	cb99                	beqz	a5,a0006db4 <Clock_Peripheral_Clock_Get+0x290>
a0006da0:	5b08                	lw	a0,48(a4)
a0006da2:	4422                	lw	s0,8(sp)
a0006da4:	40b2                	lw	ra,12(sp)
a0006da6:	1035350b          	extu	a0,a0,4,3
a0006daa:	0141                	addi	sp,sp,16
a0006dac:	c2fbb317          	auipc	t1,0xc2fbb
a0006db0:	a8e30067          	jr	-1394(t1) # 62fc183a <Clock_F32k_Mux_Output>
a0006db4:	200007b7          	lui	a5,0x20000
a0006db8:	1107a403          	lw	s0,272(a5) # 20000110 <remain_wifi_ram+0x1ffe0110>
a0006dbc:	1107a783          	lw	a5,272(a5)
a0006dc0:	03f47413          	andi	s0,s0,63
a0006dc4:	1c77b78b          	extu	a5,a5,7,7
a0006dc8:	eb89                	bnez	a5,a0006dda <Clock_Peripheral_Clock_Get+0x2b6>
a0006dca:	c2fbb097          	auipc	ra,0xc2fbb
a0006dce:	9e8080e7          	jalr	-1560(ra) # 62fc17b2 <Clock_Get_Audio_PLL_Output>
a0006dd2:	0405                	addi	s0,s0,1
a0006dd4:	02855533          	divu	a0,a0,s0
a0006dd8:	b36d                	j	a0006b82 <Clock_Peripheral_Clock_Get+0x5e>
a0006dda:	4515                	li	a0,5
a0006ddc:	c2fbb097          	auipc	ra,0xc2fbb
a0006de0:	afa080e7          	jalr	-1286(ra) # 62fc18d6 <Clock_System_Clock_Get>
a0006de4:	b7fd                	j	a0006dd2 <Clock_Peripheral_Clock_Get+0x2ae>
a0006de6:	c2fbb097          	auipc	ra,0xc2fbb
a0006dea:	9cc080e7          	jalr	-1588(ra) # 62fc17b2 <Clock_Get_Audio_PLL_Output>
a0006dee:	b3ed                	j	a0006bd8 <Clock_Peripheral_Clock_Get+0xb4>
a0006df0:	01e85537          	lui	a0,0x1e85
a0006df4:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
a0006df8:	b3c5                	j	a0006bd8 <Clock_Peripheral_Clock_Get+0xb4>
a0006dfa:	200007b7          	lui	a5,0x20000
a0006dfe:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0006e02:	75c7b78b          	extu	a5,a5,29,28
a0006e06:	ef81                	bnez	a5,a0006e1e <Clock_Peripheral_Clock_Get+0x2fa>
a0006e08:	4515                	li	a0,5
a0006e0a:	c2fbb097          	auipc	ra,0xc2fbb
a0006e0e:	acc080e7          	jalr	-1332(ra) # 62fc18d6 <Clock_System_Clock_Get>
a0006e12:	200007b7          	lui	a5,0x20000
a0006e16:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0006e1a:	83f9                	srli	a5,a5,0x1e
a0006e1c:	b581                	j	a0006c5c <Clock_Peripheral_Clock_Get+0x138>
a0006e1e:	4705                	li	a4,1
a0006e20:	00e78863          	beq	a5,a4,a0006e30 <Clock_Peripheral_Clock_Get+0x30c>
a0006e24:	4515                	li	a0,5
a0006e26:	c2fbb097          	auipc	ra,0xc2fbb
a0006e2a:	846080e7          	jalr	-1978(ra) # 62fc166c <Clock_Get_AUPLL_Output>
a0006e2e:	b7d5                	j	a0006e12 <Clock_Peripheral_Clock_Get+0x2ee>
a0006e30:	05b8e537          	lui	a0,0x5b8e
a0006e34:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0006e38:	bfe9                	j	a0006e12 <Clock_Peripheral_Clock_Get+0x2ee>
a0006e3a:	05b8e537          	lui	a0,0x5b8e
a0006e3e:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0006e42:	bbc9                	j	a0006c14 <Clock_Peripheral_Clock_Get+0xf0>
a0006e44:	20000737          	lui	a4,0x20000
a0006e48:	54872783          	lw	a5,1352(a4) # 20000548 <remain_wifi_ram+0x1ffe0548>
a0006e4c:	6187b78b          	extu	a5,a5,24,24
a0006e50:	d00788e3          	beqz	a5,a0006b60 <Clock_Peripheral_Clock_Get+0x3c>
a0006e54:	25472503          	lw	a0,596(a4)
a0006e58:	4422                	lw	s0,8(sp)
a0006e5a:	40b2                	lw	ra,12(sp)
a0006e5c:	2ca5350b          	extu	a0,a0,11,10
a0006e60:	0141                	addi	sp,sp,16
a0006e62:	c2fbb317          	auipc	t1,0xc2fbb
a0006e66:	97230067          	jr	-1678(t1) # 62fc17d4 <Clock_160M_Clk_Mux_Output>

a0006e6a <qcc74x_gpio_pad_check>:
a0006e6a:	1141                	addi	sp,sp,-16
a0006e6c:	c606                	sw	ra,12(sp)
a0006e6e:	c2fba097          	auipc	ra,0xc2fba
a0006e72:	f6e080e7          	jalr	-146(ra) # 62fc0ddc <GLB_GPIO_Pad_LeadOut_Sts>
a0006e76:	e111                	bnez	a0,a0006e7a <qcc74x_gpio_pad_check+0x10>
a0006e78:	a001                	j	a0006e78 <qcc74x_gpio_pad_check+0xe>
a0006e7a:	40b2                	lw	ra,12(sp)
a0006e7c:	0141                	addi	sp,sp,16
a0006e7e:	8082                	ret

a0006e80 <qcc74x_clk_get_peripheral_clock>:
a0006e80:	e119                	bnez	a0,a0006e86 <qcc74x_clk_get_peripheral_clock+0x6>
a0006e82:	4539                	li	a0,14
a0006e84:	b145                	j	a0006b24 <Clock_Peripheral_Clock_Get>
a0006e86:	4785                	li	a5,1
a0006e88:	00f51463          	bne	a0,a5,a0006e90 <qcc74x_clk_get_peripheral_clock+0x10>
a0006e8c:	4541                	li	a0,16
a0006e8e:	bfdd                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006e90:	4795                	li	a5,5
a0006e92:	00f51463          	bne	a0,a5,a0006e9a <qcc74x_clk_get_peripheral_clock+0x1a>
a0006e96:	4501                	li	a0,0
a0006e98:	b7f5                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006e9a:	4799                	li	a5,6
a0006e9c:	00f51463          	bne	a0,a5,a0006ea4 <qcc74x_clk_get_peripheral_clock+0x24>
a0006ea0:	450d                	li	a0,3
a0006ea2:	b7cd                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006ea4:	479d                	li	a5,7
a0006ea6:	00f51463          	bne	a0,a5,a0006eae <qcc74x_clk_get_peripheral_clock+0x2e>
a0006eaa:	4521                	li	a0,8
a0006eac:	bfe1                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006eae:	47bd                	li	a5,15
a0006eb0:	00f51463          	bne	a0,a5,a0006eb8 <qcc74x_clk_get_peripheral_clock+0x38>
a0006eb4:	452d                	li	a0,11
a0006eb6:	b7f9                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006eb8:	47a9                	li	a5,10
a0006eba:	00f51463          	bne	a0,a5,a0006ec2 <qcc74x_clk_get_peripheral_clock+0x42>
a0006ebe:	4535                	li	a0,13
a0006ec0:	b7d1                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006ec2:	02000793          	li	a5,32
a0006ec6:	00f51463          	bne	a0,a5,a0006ece <qcc74x_clk_get_peripheral_clock+0x4e>
a0006eca:	454d                	li	a0,19
a0006ecc:	bf65                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006ece:	47c5                	li	a5,17
a0006ed0:	00f51463          	bne	a0,a5,a0006ed8 <qcc74x_clk_get_peripheral_clock+0x58>
a0006ed4:	4549                	li	a0,18
a0006ed6:	b77d                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006ed8:	47b9                	li	a5,14
a0006eda:	00f51463          	bne	a0,a5,a0006ee2 <qcc74x_clk_get_peripheral_clock+0x62>
a0006ede:	4545                	li	a0,17
a0006ee0:	b755                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006ee2:	02400793          	li	a5,36
a0006ee6:	00f51463          	bne	a0,a5,a0006eee <qcc74x_clk_get_peripheral_clock+0x6e>
a0006eea:	4515                	li	a0,5
a0006eec:	bf61                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006eee:	47a5                	li	a5,9
a0006ef0:	00f51463          	bne	a0,a5,a0006ef8 <qcc74x_clk_get_peripheral_clock+0x78>
a0006ef4:	4531                	li	a0,12
a0006ef6:	b779                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006ef8:	47d1                	li	a5,20
a0006efa:	00f51463          	bne	a0,a5,a0006f02 <qcc74x_clk_get_peripheral_clock+0x82>
a0006efe:	4551                	li	a0,20
a0006f00:	b751                	j	a0006e84 <qcc74x_clk_get_peripheral_clock+0x4>
a0006f02:	4501                	li	a0,0
a0006f04:	8082                	ret

a0006f06 <qcc74x_sys_reset_por>:
a0006f06:	1141                	addi	sp,sp,-16
a0006f08:	c606                	sw	ra,12(sp)
a0006f0a:	200107b7          	lui	a5,0x20010
a0006f0e:	4711                	li	a4,4
a0006f10:	5ae7a423          	sw	a4,1448(a5) # 200105a8 <remain_wifi_ram+0x1fff05a8>
a0006f14:	bf1ba737          	lui	a4,0xbf1ba
a0006f18:	55e70713          	addi	a4,a4,1374 # bf1ba55e <__psram_limit+0x16dba55e>
a0006f1c:	5ae7a623          	sw	a4,1452(a5)
a0006f20:	30047073          	csrci	mstatus,8
a0006f24:	4511                	li	a0,4
a0006f26:	c2fba097          	auipc	ra,0xc2fba
a0006f2a:	aea080e7          	jalr	-1302(ra) # 62fc0a10 <GLB_AHB_MCU_Software_Reset>
a0006f2e:	4521                	li	a0,8
a0006f30:	c2fba097          	auipc	ra,0xc2fba
a0006f34:	ae0080e7          	jalr	-1312(ra) # 62fc0a10 <GLB_AHB_MCU_Software_Reset>
a0006f38:	4525                	li	a0,9
a0006f3a:	c2fba097          	auipc	ra,0xc2fba
a0006f3e:	ad6080e7          	jalr	-1322(ra) # 62fc0a10 <GLB_AHB_MCU_Software_Reset>
a0006f42:	4529                	li	a0,10
a0006f44:	c2fba097          	auipc	ra,0xc2fba
a0006f48:	acc080e7          	jalr	-1332(ra) # 62fc0a10 <GLB_AHB_MCU_Software_Reset>
a0006f4c:	452d                	li	a0,11
a0006f4e:	c2fba097          	auipc	ra,0xc2fba
a0006f52:	ac2080e7          	jalr	-1342(ra) # 62fc0a10 <GLB_AHB_MCU_Software_Reset>
a0006f56:	4529                	li	a0,10
a0006f58:	c2fba097          	auipc	ra,0xc2fba
a0006f5c:	018080e7          	jalr	24(ra) # 62fc0f70 <arch_delay_ms>
a0006f60:	c2fba097          	auipc	ra,0xc2fba
a0006f64:	ac4080e7          	jalr	-1340(ra) # 62fc0a24 <GLB_SW_POR_Reset>
a0006f68:	a001                	j	a0006f68 <qcc74x_sys_reset_por+0x62>

a0006f6a <qcc74x_show_log>:
a0006f6a:	1141                	addi	sp,sp,-16
a0006f6c:	c422                	sw	s0,8(sp)
a0006f6e:	a0008437          	lui	s0,0xa0008
a0006f72:	26840513          	addi	a0,s0,616 # a0008268 <__psram_limit+0xf7c08268>
a0006f76:	c606                	sw	ra,12(sp)
a0006f78:	827fe0ef          	jal	ra,a000579e <printf>
a0006f7c:	26840513          	addi	a0,s0,616
a0006f80:	81ffe0ef          	jal	ra,a000579e <printf>
a0006f84:	4422                	lw	s0,8(sp)
a0006f86:	40b2                	lw	ra,12(sp)
a0006f88:	a0008637          	lui	a2,0xa0008
a0006f8c:	a00085b7          	lui	a1,0xa0008
a0006f90:	a0008537          	lui	a0,0xa0008
a0006f94:	11060613          	addi	a2,a2,272 # a0008110 <__psram_limit+0xf7c08110>
a0006f98:	11c58593          	addi	a1,a1,284 # a000811c <__psram_limit+0xf7c0811c>
a0006f9c:	12850513          	addi	a0,a0,296 # a0008128 <__psram_limit+0xf7c08128>
a0006fa0:	0141                	addi	sp,sp,16
a0006fa2:	ffcfe06f          	j	a000579e <printf>

a0006fa6 <qcc74x_sys_version>:
a0006fa6:	411c                	lw	a5,0(a0)
a0006fa8:	872a                	mv	a4,a0
a0006faa:	e791                	bnez	a5,a0006fb6 <qcc74x_sys_version+0x10>
a0006fac:	a00077b7          	lui	a5,0xa0007
a0006fb0:	3c878793          	addi	a5,a5,968 # a00073c8 <__psram_limit+0xf7c073c8>
a0006fb4:	c11c                	sw	a5,0(a0)
a0006fb6:	431c                	lw	a5,0(a4)
a0006fb8:	a00076b7          	lui	a3,0xa0007
a0006fbc:	3d468693          	addi	a3,a3,980 # a00073d4 <__psram_limit+0xf7c073d4>
a0006fc0:	4501                	li	a0,0
a0006fc2:	00d78563          	beq	a5,a3,a0006fcc <qcc74x_sys_version+0x26>
a0006fc6:	5847c50b          	lwia	a0,(a5),4,0
a0006fca:	c31c                	sw	a5,0(a4)
a0006fcc:	8082                	ret

a0006fce <qcc74x_show_component_version>:
a0006fce:	a0008537          	lui	a0,0xa0008
a0006fd2:	1101                	addi	sp,sp,-32
a0006fd4:	13850513          	addi	a0,a0,312 # a0008138 <__psram_limit+0xf7c08138>
a0006fd8:	ca26                	sw	s1,20(sp)
a0006fda:	c84a                	sw	s2,16(sp)
a0006fdc:	ce06                	sw	ra,28(sp)
a0006fde:	cc22                	sw	s0,24(sp)
a0006fe0:	c602                	sw	zero,12(sp)
a0006fe2:	a00084b7          	lui	s1,0xa0008
a0006fe6:	f84fe0ef          	jal	ra,a000576a <puts>
a0006fea:	a0008937          	lui	s2,0xa0008
a0006fee:	0068                	addi	a0,sp,12
a0006ff0:	3f5d                	jal	a0006fa6 <qcc74x_sys_version>
a0006ff2:	842a                	mv	s0,a0
a0006ff4:	e519                	bnez	a0,a0007002 <qcc74x_show_component_version+0x34>
a0006ff6:	40f2                	lw	ra,28(sp)
a0006ff8:	4462                	lw	s0,24(sp)
a0006ffa:	44d2                	lw	s1,20(sp)
a0006ffc:	4942                	lw	s2,16(sp)
a0006ffe:	6105                	addi	sp,sp,32
a0007000:	8082                	ret
a0007002:	15848513          	addi	a0,s1,344 # a0008158 <__psram_limit+0xf7c08158>
a0007006:	f64fe0ef          	jal	ra,a000576a <puts>
a000700a:	8522                	mv	a0,s0
a000700c:	f5efe0ef          	jal	ra,a000576a <puts>
a0007010:	26890513          	addi	a0,s2,616 # a0008268 <__psram_limit+0xf7c08268>
a0007014:	f56fe0ef          	jal	ra,a000576a <puts>
a0007018:	bfd9                	j	a0006fee <qcc74x_show_component_version+0x20>

a000701a <qcc74x_show_chipinfo>:
a000701a:	7139                	addi	sp,sp,-64
a000701c:	0068                	addi	a0,sp,12
a000701e:	de06                	sw	ra,60(sp)
a0007020:	c2fba097          	auipc	ra,0xc2fba
a0007024:	fce080e7          	jalr	-50(ra) # 62fc0fee <qcc74x_efuse_get_device_info>
a0007028:	a0008537          	lui	a0,0xa0008
a000702c:	16450513          	addi	a0,a0,356 # a0008164 <__psram_limit+0xf7c08164>
a0007030:	f6efe0ef          	jal	ra,a000579e <printf>
a0007034:	45d2                	lw	a1,20(sp)
a0007036:	a0008537          	lui	a0,0xa0008
a000703a:	18450513          	addi	a0,a0,388 # a0008184 <__psram_limit+0xf7c08184>
a000703e:	f60fe0ef          	jal	ra,a000579e <printf>
a0007042:	45e2                	lw	a1,24(sp)
a0007044:	a0008537          	lui	a0,0xa0008
a0007048:	19c50513          	addi	a0,a0,412 # a000819c <__psram_limit+0xf7c0819c>
a000704c:	f52fe0ef          	jal	ra,a000579e <printf>
a0007050:	45f2                	lw	a1,28(sp)
a0007052:	a0008537          	lui	a0,0xa0008
a0007056:	1b450513          	addi	a0,a0,436 # a00081b4 <__psram_limit+0xf7c081b4>
a000705a:	f44fe0ef          	jal	ra,a000579e <printf>
a000705e:	00f14583          	lbu	a1,15(sp)
a0007062:	a0008537          	lui	a0,0xa0008
a0007066:	1cc50513          	addi	a0,a0,460 # a00081cc <__psram_limit+0xf7c081cc>
a000706a:	f34fe0ef          	jal	ra,a000579e <printf>
a000706e:	50f2                	lw	ra,60(sp)
a0007070:	6121                	addi	sp,sp,64
a0007072:	8082                	ret

a0007074 <board_init>:
a0007074:	7119                	addi	sp,sp,-128
a0007076:	de86                	sw	ra,124(sp)
a0007078:	dca2                	sw	s0,120(sp)
a000707a:	daa6                	sw	s1,116(sp)
a000707c:	d8ca                	sw	s2,112(sp)
a000707e:	d6ce                	sw	s3,108(sp)
a0007080:	ca02                	sw	zero,20(sp)
a0007082:	c2fba097          	auipc	ra,0xc2fba
a0007086:	84e080e7          	jalr	-1970(ra) # 62fc08d0 <qcc74x_irq_save>
a000708a:	84aa                	mv	s1,a0
a000708c:	c2fb9097          	auipc	ra,0xc2fb9
a0007090:	736080e7          	jalr	1846(ra) # 62fc07c2 <qcc74x_flash_init>
a0007094:	892a                	mv	s2,a0
a0007096:	c2fbb097          	auipc	ra,0xc2fbb
a000709a:	918080e7          	jalr	-1768(ra) # 62fc19ae <system_clock_init>
a000709e:	200007b7          	lui	a5,0x20000
a00070a2:	58078793          	addi	a5,a5,1408 # 20000580 <remain_wifi_ram+0x1ffe0580>
a00070a6:	43d8                	lw	a4,4(a5)
a00070a8:	6685                	lui	a3,0x1
a00070aa:	6441                	lui	s0,0x10
a00070ac:	cc3a                	sw	a4,24(sp)
a00070ae:	4762                	lw	a4,24(sp)
a00070b0:	00200637          	lui	a2,0x200
a00070b4:	4589                	li	a1,2
a00070b6:	00476713          	ori	a4,a4,4
a00070ba:	cc3a                	sw	a4,24(sp)
a00070bc:	4762                	lw	a4,24(sp)
a00070be:	4505                	li	a0,1
a00070c0:	c3d8                	sw	a4,4(a5)
a00070c2:	43d8                	lw	a4,4(a5)
a00070c4:	ce3a                	sw	a4,28(sp)
a00070c6:	4772                	lw	a4,28(sp)
a00070c8:	00876713          	ori	a4,a4,8
a00070cc:	ce3a                	sw	a4,28(sp)
a00070ce:	4772                	lw	a4,28(sp)
a00070d0:	01076713          	ori	a4,a4,16
a00070d4:	ce3a                	sw	a4,28(sp)
a00070d6:	4772                	lw	a4,28(sp)
a00070d8:	c3d8                	sw	a4,4(a5)
a00070da:	43d8                	lw	a4,4(a5)
a00070dc:	d03a                	sw	a4,32(sp)
a00070de:	5702                	lw	a4,32(sp)
a00070e0:	8f55                	or	a4,a4,a3
a00070e2:	d03a                	sw	a4,32(sp)
a00070e4:	5702                	lw	a4,32(sp)
a00070e6:	000206b7          	lui	a3,0x20
a00070ea:	c3d8                	sw	a4,4(a5)
a00070ec:	43d8                	lw	a4,4(a5)
a00070ee:	d23a                	sw	a4,36(sp)
a00070f0:	5712                	lw	a4,36(sp)
a00070f2:	8f41                	or	a4,a4,s0
a00070f4:	d23a                	sw	a4,36(sp)
a00070f6:	5712                	lw	a4,36(sp)
a00070f8:	30040413          	addi	s0,s0,768 # 10300 <wifi_ram_max_size+0x8300>
a00070fc:	c3d8                	sw	a4,4(a5)
a00070fe:	43d8                	lw	a4,4(a5)
a0007100:	d43a                	sw	a4,40(sp)
a0007102:	5722                	lw	a4,40(sp)
a0007104:	8f55                	or	a4,a4,a3
a0007106:	d43a                	sw	a4,40(sp)
a0007108:	5722                	lw	a4,40(sp)
a000710a:	000406b7          	lui	a3,0x40
a000710e:	c3d8                	sw	a4,4(a5)
a0007110:	43d8                	lw	a4,4(a5)
a0007112:	d63a                	sw	a4,44(sp)
a0007114:	5732                	lw	a4,44(sp)
a0007116:	8f55                	or	a4,a4,a3
a0007118:	d63a                	sw	a4,44(sp)
a000711a:	5732                	lw	a4,44(sp)
a000711c:	000806b7          	lui	a3,0x80
a0007120:	c3d8                	sw	a4,4(a5)
a0007122:	43d8                	lw	a4,4(a5)
a0007124:	d83a                	sw	a4,48(sp)
a0007126:	5742                	lw	a4,48(sp)
a0007128:	8f55                	or	a4,a4,a3
a000712a:	d83a                	sw	a4,48(sp)
a000712c:	5742                	lw	a4,48(sp)
a000712e:	001006b7          	lui	a3,0x100
a0007132:	c3d8                	sw	a4,4(a5)
a0007134:	43d8                	lw	a4,4(a5)
a0007136:	da3a                	sw	a4,52(sp)
a0007138:	5752                	lw	a4,52(sp)
a000713a:	8f55                	or	a4,a4,a3
a000713c:	da3a                	sw	a4,52(sp)
a000713e:	5752                	lw	a4,52(sp)
a0007140:	c3d8                	sw	a4,4(a5)
a0007142:	43d8                	lw	a4,4(a5)
a0007144:	dc3a                	sw	a4,56(sp)
a0007146:	56e2                	lw	a3,56(sp)
a0007148:	8ed1                	or	a3,a3,a2
a000714a:	dc36                	sw	a3,56(sp)
a000714c:	5762                	lw	a4,56(sp)
a000714e:	c3d8                	sw	a4,4(a5)
a0007150:	43d8                	lw	a4,4(a5)
a0007152:	de3a                	sw	a4,60(sp)
a0007154:	56f2                	lw	a3,60(sp)
a0007156:	00400737          	lui	a4,0x400
a000715a:	8ed9                	or	a3,a3,a4
a000715c:	de36                	sw	a3,60(sp)
a000715e:	5772                	lw	a4,60(sp)
a0007160:	c3d8                	sw	a4,4(a5)
a0007162:	43d8                	lw	a4,4(a5)
a0007164:	c0ba                	sw	a4,64(sp)
a0007166:	4686                	lw	a3,64(sp)
a0007168:	08000737          	lui	a4,0x8000
a000716c:	8ed9                	or	a3,a3,a4
a000716e:	c0b6                	sw	a3,64(sp)
a0007170:	4706                	lw	a4,64(sp)
a0007172:	c3d8                	sw	a4,4(a5)
a0007174:	43d8                	lw	a4,4(a5)
a0007176:	c2ba                	sw	a4,68(sp)
a0007178:	4696                	lw	a3,68(sp)
a000717a:	6709                	lui	a4,0x2
a000717c:	8ed9                	or	a3,a3,a4
a000717e:	c2b6                	sw	a3,68(sp)
a0007180:	4716                	lw	a4,68(sp)
a0007182:	c3d8                	sw	a4,4(a5)
a0007184:	43d8                	lw	a4,4(a5)
a0007186:	c4ba                	sw	a4,72(sp)
a0007188:	46a6                	lw	a3,72(sp)
a000718a:	04000737          	lui	a4,0x4000
a000718e:	8ed9                	or	a3,a3,a4
a0007190:	c4b6                	sw	a3,72(sp)
a0007192:	4726                	lw	a4,72(sp)
a0007194:	008006b7          	lui	a3,0x800
a0007198:	c3d8                	sw	a4,4(a5)
a000719a:	4798                	lw	a4,8(a5)
a000719c:	c6ba                	sw	a4,76(sp)
a000719e:	4736                	lw	a4,76(sp)
a00071a0:	8f51                	or	a4,a4,a2
a00071a2:	c6ba                	sw	a4,76(sp)
a00071a4:	4736                	lw	a4,76(sp)
a00071a6:	4601                	li	a2,0
a00071a8:	c798                	sw	a4,8(a5)
a00071aa:	43d8                	lw	a4,4(a5)
a00071ac:	c8ba                	sw	a4,80(sp)
a00071ae:	4746                	lw	a4,80(sp)
a00071b0:	8f55                	or	a4,a4,a3
a00071b2:	c8ba                	sw	a4,80(sp)
a00071b4:	4746                	lw	a4,80(sp)
a00071b6:	c3d8                	sw	a4,4(a5)
a00071b8:	c2fba097          	auipc	ra,0xc2fba
a00071bc:	8a8080e7          	jalr	-1880(ra) # 62fc0a60 <GLB_Set_UART_CLK>
a00071c0:	4601                	li	a2,0
a00071c2:	4581                	li	a1,0
a00071c4:	4505                	li	a0,1
a00071c6:	f8eff0ef          	jal	ra,a0006954 <GLB_Set_SPI_CLK>
a00071ca:	4601                	li	a2,0
a00071cc:	4581                	li	a1,0
a00071ce:	4505                	li	a0,1
a00071d0:	fbaff0ef          	jal	ra,a000698a <GLB_Set_DBI_CLK>
a00071d4:	4601                	li	a2,0
a00071d6:	4585                	li	a1,1
a00071d8:	4505                	li	a0,1
a00071da:	f30ff0ef          	jal	ra,a000690a <GLB_Set_I2C_CLK>
a00071de:	4605                	li	a2,1
a00071e0:	4585                	li	a1,1
a00071e2:	4505                	li	a0,1
a00071e4:	eb0ff0ef          	jal	ra,a0006894 <GLB_Set_ADC_CLK>
a00071e8:	4505                	li	a0,1
a00071ea:	c2fba097          	auipc	ra,0xc2fba
a00071ee:	84e080e7          	jalr	-1970(ra) # 62fc0a38 <GLB_Set_DIG_CLK_Sel>
a00071f2:	04e00613          	li	a2,78
a00071f6:	4585                	li	a1,1
a00071f8:	4505                	li	a0,1
a00071fa:	c2fba097          	auipc	ra,0xc2fba
a00071fe:	834080e7          	jalr	-1996(ra) # 62fc0a2e <GLB_Set_DIG_512K_CLK>
a0007202:	4501                	li	a0,0
a0007204:	c2fba097          	auipc	ra,0xc2fba
a0007208:	852080e7          	jalr	-1966(ra) # 62fc0a56 <GLB_Set_PWM1_IO_Sel>
a000720c:	464d                	li	a2,19
a000720e:	4581                	li	a1,0
a0007210:	4505                	li	a0,1
a0007212:	ebcff0ef          	jal	ra,a00068ce <GLB_Set_IR_CLK>
a0007216:	460d                	li	a2,3
a0007218:	4585                	li	a1,1
a000721a:	4505                	li	a0,1
a000721c:	fa4ff0ef          	jal	ra,a00069c0 <GLB_Set_CAM_CLK>
a0007220:	4505                	li	a0,1
a0007222:	c2fba097          	auipc	ra,0xc2fba
a0007226:	82a080e7          	jalr	-2006(ra) # 62fc0a4c <GLB_Set_PKA_CLK_Sel>
a000722a:	4505                	li	a0,1
a000722c:	c2fba097          	auipc	ra,0xc2fba
a0007230:	83e080e7          	jalr	-1986(ra) # 62fc0a6a <GLB_Set_USB_CLK_From_WIFIPLL>
a0007234:	4501                	li	a0,0
a0007236:	c2fba097          	auipc	ra,0xc2fba
a000723a:	83e080e7          	jalr	-1986(ra) # 62fc0a74 <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>
a000723e:	f73fe0ef          	jal	ra,a00061b0 <qcc74x_irq_initialize>
a0007242:	a0007537          	lui	a0,0xa0007
a0007246:	3d450513          	addi	a0,a0,980 # a00073d4 <__psram_limit+0xf7c073d4>
a000724a:	f89fe0ef          	jal	ra,a00061d2 <qcc74x_device_get_by_name>
a000724e:	4609                	li	a2,2
a0007250:	45d5                	li	a1,21
a0007252:	c62a                	sw	a0,12(sp)
a0007254:	c8dfe0ef          	jal	ra,a0005ee0 <qcc74x_gpio_uart_init>
a0007258:	4532                	lw	a0,12(sp)
a000725a:	460d                	li	a2,3
a000725c:	45d9                	li	a1,22
a000725e:	c83fe0ef          	jal	ra,a0005ee0 <qcc74x_gpio_uart_init>
a0007262:	001e87b7          	lui	a5,0x1e8
a0007266:	48078793          	addi	a5,a5,1152 # 1e8480 <remain_wifi_ram+0x1c8480>
a000726a:	a0008537          	lui	a0,0xa0008
a000726e:	cabe                	sw	a5,84(sp)
a0007270:	b9c50513          	addi	a0,a0,-1124 # a0007b9c <__psram_limit+0xf7c07b9c>
a0007274:	070707b7          	lui	a5,0x7070
a0007278:	cebe                	sw	a5,92(sp)
a000727a:	cca2                	sw	s0,88(sp)
a000727c:	f57fe0ef          	jal	ra,a00061d2 <qcc74x_device_get_by_name>
a0007280:	62fc3437          	lui	s0,0x62fc3
a0007284:	41040413          	addi	s0,s0,1040 # 62fc3410 <uart0>
a0007288:	08cc                	addi	a1,sp,84
a000728a:	c008                	sw	a0,0(s0)
a000728c:	daffe0ef          	jal	ra,a000603a <qcc74x_uart_init>
a0007290:	4008                	lw	a0,0(s0)
a0007292:	63030437          	lui	s0,0x63030
a0007296:	00040413          	mv	s0,s0
a000729a:	d30fe0ef          	jal	ra,a00057ca <qcc74x_uart_set_console>
a000729e:	62fc3537          	lui	a0,0x62fc3
a00072a2:	41450593          	addi	a1,a0,1044 # 62fc3414 <__HeapBase>
a00072a6:	8c0d                	sub	s0,s0,a1
a00072a8:	85a2                	mv	a1,s0
a00072aa:	41450513          	addi	a0,a0,1044
a00072ae:	d26fe0ef          	jal	ra,a00057d4 <kmem_init>
a00072b2:	3965                	jal	a0006f6a <qcc74x_show_log>
a00072b4:	3b29                	jal	a0006fce <qcc74x_show_component_version>
a00072b6:	a80007b7          	lui	a5,0xa8000
a00072ba:	a8000737          	lui	a4,0xa8000
a00072be:	00078793          	mv	a5,a5
a00072c2:	00070713          	mv	a4,a4
a00072c6:	8f99                	sub	a5,a5,a4
a00072c8:	00f04d63          	bgtz	a5,a00072e2 <board_init+0x26e>
a00072cc:	a80007b7          	lui	a5,0xa8000
a00072d0:	a8000737          	lui	a4,0xa8000
a00072d4:	00078793          	mv	a5,a5
a00072d8:	00070713          	mv	a4,a4
a00072dc:	8f99                	sub	a5,a5,a4
a00072de:	00f05963          	blez	a5,a00072f0 <board_init+0x27c>
a00072e2:	a0008537          	lui	a0,0xa0008
a00072e6:	1f850513          	addi	a0,a0,504 # a00081f8 <__psram_limit+0xf7c081f8>
a00072ea:	c80fe0ef          	jal	ra,a000576a <puts>
a00072ee:	a001                	j	a00072ee <board_init+0x27a>
a00072f0:	8029                	srli	s0,s0,0xa
a00072f2:	a00089b7          	lui	s3,0xa0008
a00072f6:	85a2                	mv	a1,s0
a00072f8:	23098513          	addi	a0,s3,560 # a0008230 <__psram_limit+0xf7c08230>
a00072fc:	ca2fe0ef          	jal	ra,a000579e <printf>
a0007300:	3b29                	jal	a000701a <qcc74x_show_chipinfo>
a0007302:	00090863          	beqz	s2,a0007312 <board_init+0x29e>
a0007306:	a0008537          	lui	a0,0xa0008
a000730a:	26c50513          	addi	a0,a0,620 # a000826c <__psram_limit+0xf7c0826c>
a000730e:	c90fe0ef          	jal	ra,a000579e <printf>
a0007312:	85a2                	mv	a1,s0
a0007314:	23098513          	addi	a0,s3,560
a0007318:	c86fe0ef          	jal	ra,a000579e <printf>
a000731c:	20000437          	lui	s0,0x20000
a0007320:	10040793          	addi	a5,s0,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a0007324:	4bec                	lw	a1,84(a5)
a0007326:	4fb0                	lw	a2,88(a5)
a0007328:	a0008537          	lui	a0,0xa0008
a000732c:	28450513          	addi	a0,a0,644 # a0008284 <__psram_limit+0xf7c08284>
a0007330:	c6efe0ef          	jal	ra,a000579e <printf>
a0007334:	58040413          	addi	s0,s0,1408
a0007338:	404c                	lw	a1,4(s0)
a000733a:	4410                	lw	a2,8(s0)
a000733c:	a0008537          	lui	a0,0xa0008
a0007340:	2a450513          	addi	a0,a0,676 # a00082a4 <__psram_limit+0xf7c082a4>
a0007344:	c5afe0ef          	jal	ra,a000579e <printf>
a0007348:	0848                	addi	a0,sp,20
a000734a:	c2fba097          	auipc	ra,0xc2fba
a000734e:	acc080e7          	jalr	-1332(ra) # 62fc0e16 <HBN_Get_Xtal_Value>
a0007352:	200107b7          	lui	a5,0x20010
a0007356:	8847a783          	lw	a5,-1916(a5) # 2000f884 <remain_wifi_ram+0x1ffef884>
a000735a:	45d2                	lw	a1,20(sp)
a000735c:	0c37b78b          	extu	a5,a5,3,3
a0007360:	e7a9                	bnez	a5,a00073aa <board_init+0x336>
a0007362:	a0008637          	lui	a2,0xa0008
a0007366:	1f060613          	addi	a2,a2,496 # a00081f0 <__psram_limit+0xf7c081f0>
a000736a:	a0008537          	lui	a0,0xa0008
a000736e:	2c450513          	addi	a0,a0,708 # a00082c4 <__psram_limit+0xf7c082c4>
a0007372:	c2cfe0ef          	jal	ra,a000579e <printf>
a0007376:	e30fe0ef          	jal	ra,a00059a6 <log_start>
a000737a:	8526                	mv	a0,s1
a000737c:	c2fb9097          	auipc	ra,0xc2fb9
a0007380:	55c080e7          	jalr	1372(ra) # 62fc08d8 <qcc74x_irq_restore>
a0007384:	a0008537          	lui	a0,0xa0008
a0007388:	2d450513          	addi	a0,a0,724 # a00082d4 <__psram_limit+0xf7c082d4>
a000738c:	c12fe0ef          	jal	ra,a000579e <printf>
a0007390:	a0008537          	lui	a0,0xa0008
a0007394:	2e850513          	addi	a0,a0,744 # a00082e8 <__psram_limit+0xf7c082e8>
a0007398:	c06fe0ef          	jal	ra,a000579e <printf>
a000739c:	50f6                	lw	ra,124(sp)
a000739e:	5466                	lw	s0,120(sp)
a00073a0:	54d6                	lw	s1,116(sp)
a00073a2:	5946                	lw	s2,112(sp)
a00073a4:	59b6                	lw	s3,108(sp)
a00073a6:	6109                	addi	sp,sp,128
a00073a8:	8082                	ret
a00073aa:	a0008637          	lui	a2,0xa0008
a00073ae:	1e460613          	addi	a2,a2,484 # a00081e4 <__psram_limit+0xf7c081e4>
a00073b2:	bf65                	j	a000736a <board_init+0x2f6>

a00073b4 <strlen>:
a00073b4:	87aa                	mv	a5,a0
a00073b6:	0007c703          	lbu	a4,0(a5)
a00073ba:	0785                	addi	a5,a5,1
a00073bc:	ff6d                	bnez	a4,a00073b6 <strlen+0x2>
a00073be:	40a78533          	sub	a0,a5,a0
a00073c2:	157d                	addi	a0,a0,-1
a00073c4:	8082                	ret
	...

a00073c8 <version_sdk>:
a00073c8:	80f0 a000                                   ....

a00073cc <sw_image>:
a00073cc:	80a8 a000                                   ....

a00073d0 <compile_time>:
a00073d0:	80cc a000                                   ....

a00073d4 <__usbh_class_info_end__>:
a00073d4:	6f697067          	0x6f697067
a00073d8:	0000                	unimp
a00073da:	0000                	unimp
a00073dc:	6f697067          	0x6f697067
a00073e0:	6f20                	flw	fs0,88(a4)
a00073e2:	7475                	lui	s0,0xffffd
a00073e4:	7570                	flw	fa2,108(a0)
a00073e6:	0d74                	addi	a3,sp,668
a00073e8:	000a                	c.slli	zero,0x2
a00073ea:	0000                	unimp
a00073ec:	6e66                	flw	ft8,88(sp)
a00073ee:	0069                	c.nop	26
a00073f0:	6e66                	flw	ft8,88(sp)
a00073f2:	2b69                	jal	a000798c <crc32Tab+0x22c>
a00073f4:	0000                	unimp
a00073f6:	0000                	unimp
a00073f8:	616e                	flw	ft2,216(sp)
a00073fa:	006e                	c.slli	zero,0x1b
a00073fc:	6e66                	flw	ft8,88(sp)
a00073fe:	2d69                	jal	a0007a98 <crc32Tab+0x338>
a0007400:	0000                	unimp
a0007402:	0000                	unimp
a0007404:	6c29                	lui	s8,0xa
a0007406:	756c                	flw	fa1,108(a0)
a0007408:	286e                	fld	fa6,216(sp)
a000740a:	0000                	unimp
a000740c:	6c29                	lui	s8,0xa
a000740e:	6e69                	lui	t3,0x1a
a0007410:	0028                	addi	a0,sp,8
	...
a000741e:	3fe0                	fld	fs0,248(a5)
a0007420:	509f79fb          	0x509f79fb
a0007424:	3fd34413          	xori	s0,t1,1021
a0007428:	8b60c8b3          	0x8b60c8b3
a000742c:	8a28                	sb	a0,2(a2)
a000742e:	3fc6                	fld	ft11,112(sp)
a0007430:	0000                	unimp
a0007432:	0000                	unimp
a0007434:	0000                	unimp
a0007436:	3ff8                	fld	fa4,248(a5)
a0007438:	4361                	li	t1,24
a000743a:	87a7636f          	jal	t1,9ff7d4b4 <__HeapLimit+0x3cf4d4b4>
a000743e:	3fd2                	fld	ft11,304(sp)
a0007440:	a371                	j	a00079cc <crc32Tab+0x26c>
a0007442:	0979                	addi	s2,s2,30
a0007444:	400a934f          	fnmadd.s	ft6,fs5,ft0,fs0,rtz
a0007448:	5516                	lw	a0,100(sp)
a000744a:	bbb5                	j	a00071c6 <board_init+0x152>
a000744c:	6bb1                	lui	s7,0xc
a000744e:	4002                	0x4002
a0007450:	fefa39ef          	jal	s3,9ffab43e <__HeapLimit+0x3cf7b43e>
a0007454:	2e42                	fld	ft8,16(sp)
a0007456:	3fe6                	fld	ft11,120(sp)
a0007458:	0000                	unimp
a000745a:	0000                	unimp
a000745c:	0000                	unimp
a000745e:	402c                	lw	a1,64(s0)
a0007460:	0000                	unimp
a0007462:	0000                	unimp
a0007464:	0000                	unimp
a0007466:	4024                	lw	s1,64(s0)
a0007468:	0000                	unimp
a000746a:	0000                	unimp
a000746c:	0000                	unimp
a000746e:	4018                	lw	a4,0(s0)
a0007470:	0000                	unimp
a0007472:	0000                	unimp
a0007474:	0000                	unimp
a0007476:	4000                	lw	s0,0(s0)
a0007478:	0000                	unimp
a000747a:	0000                	unimp
a000747c:	0000                	unimp
a000747e:	3ff0                	fld	fa2,248(a5)
a0007480:	ffffffff          	0xffffffff
a0007484:	ffefffff          	0xffefffff
a0007488:	ffffffff          	0xffffffff
a000748c:	7fefffff          	0x7fefffff
a0007490:	0000                	unimp
a0007492:	0000                	unimp
a0007494:	cd65                	beqz	a0,a000758c <powers_of_10+0xec>
a0007496:	41cd                	li	gp,19
a0007498:	0000                	unimp
a000749a:	0000                	unimp
a000749c:	cd65                	beqz	a0,a0007594 <powers_of_10+0xf4>
a000749e:	c1cd                	beqz	a1,a0007540 <powers_of_10+0xa0>

a00074a0 <powers_of_10>:
a00074a0:	0000 0000 0000 3ff0 0000 0000 0000 4024     .......?......$@
a00074b0:	0000 0000 0000 4059 0000 0000 4000 408f     ......Y@.....@.@
a00074c0:	0000 0000 8800 40c3 0000 0000 6a00 40f8     .......@.....j.@
a00074d0:	0000 0000 8480 412e 0000 0000 12d0 4163     .......A......cA
a00074e0:	0000 0000 d784 4197 0000 0000 cd65 41cd     .......A....e..A
a00074f0:	0000 2000 a05f 4202 0000 e800 4876 4237     ... _..B....vH7B
a0007500:	0000 a200 1a94 426d 0000 e540 309c 42a2     ......mB..@..0.B
a0007510:	0000 1e90 bcc4 42d6 0000 2634 6bf5 430c     .......B..4&.k.C
a0007520:	8000 37e0 c379 4341 a000 85d8 3457 4376     ...7y.AC....W4vC
a0007530:	6c74 6673 615f 6464 705f 6f6f 3a6c 4d20     tlsf_add_pool: M
a0007540:	6d65 726f 2079 756d 7473 6220 2065 6c61     emory must be al
a0007550:	6769 656e 2064 7962 2520 2075 7962 6574     igned by %u byte
a0007560:	2e73 000a 6c74 6673 615f 6464 705f 6f6f     s...tlsf_add_poo
a0007570:	3a6c 4d20 6d65 726f 2079 6973 657a 6d20     l: Memory size m
a0007580:	7375 2074 6562 6220 7465 6577 6e65 2520     ust be between %
a0007590:	2075 6e61 2064 7525 6220 7479 7365 0a2e     u and %u bytes..
a00075a0:	0000 0000 6c74 6673 635f 6572 7461 3a65     ....tlsf_create:
a00075b0:	4d20 6d65 726f 2079 756d 7473 6220 2065      Memory must be 
a00075c0:	6c61 6769 656e 2064 6f74 2520 2075 7962     aligned to %u by
a00075d0:	6574 2e73 000a 0000 0a0d 6863 6365 206b     tes.......check 
a00075e0:	7562 6c69 5f64 6469 7720 7469 2068 7260     build_id with `r
a00075f0:	7369 7663 3436 752d 6b6e 6f6e 6e77 652d     iscv64-unknown-e
a0007600:	666c 722d 6165 6564 666c 2d20 206e 2e2a     lf-readelf -n *.
a0007610:	6c65 6066 6f20 7475 7570 2074 0a0d 0000     elf` output ....
a0007620:	7562 6c69 5f64 6469 203a 3025 7832 3025     build_id: %02x%0
a0007630:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0007640:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0007650:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0007660:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0007670:	7832 3025 7832 3025 7832 0a0d 0000 0000     2x%02x%02x......
a0007680:	7270 6465 6665 6e69 6465 0000 0a0d 2b2d     predefined....-+
a0007690:	2b2d 2b2d 202d 4351 3743 7834 4320 524f     -+-+- QCC74x COR
a00076a0:	4445 4d55 2050 4e45 2044 2d2b 2d2b 2d2b     EDUMP END +-+-+-
a00076b0:	0d2b 000a 0a0d 2b2d 2b2d 2b2d 202d 4351     +.....-+-+-+- QC
a00076c0:	3743 7834 4320 524f 4445 4d55 2050 3076     C74x COREDUMP v0
a00076d0:	302e 312e 2b20 2b2d 2b2d 2b2d 0a0d 0000     .0.1 +-+-+-+....
a00076e0:	0a0d 2d2d 2d2d 2d2d 4420 5441 2041 4542     ..------ DATA BE
a00076f0:	4947 204e 0000 0000 2d20 2d2d 2d2d 0d2d     GIN .... ------.
a0007700:	000a 0000 0a0d 2d2d 2d2d 2d2d 4520 444e     ......------ END
a0007710:	0020 0000                                    ...

a0007714 <g_encodingTable>:
a0007714:	4241 4443 4645 4847 4a49 4c4b 4e4d 504f     ABCDEFGHIJKLMNOP
a0007724:	5251 5453 5655 5857 5a59 6261 6463 6665     QRSTUVWXYZabcdef
a0007734:	6867 6a69 6c6b 6e6d 706f 7271 7473 7675     ghijklmnopqrstuv
a0007744:	7877 7a79 3130 3332 3534 3736 3938 2f2b     wxyz0123456789+/

a0007754 <g_modTable>:
a0007754:	0000 0000 0002 0000 0001 0000               ............

a0007760 <crc32Tab>:
a0007760:	0000 0000 3096 7707 612c ee0e 51ba 9909     .....0.w,a...Q..
a0007770:	c419 076d f48f 706a a535 e963 95a3 9e64     ..m...jp5.c...d.
a0007780:	8832 0edb b8a4 79dc e91e e0d5 d988 97d2     2......y........
a0007790:	4c2b 09b6 7cbd 7eb1 2d07 e7b8 1d91 90bf     +L...|.~.-......
a00077a0:	1064 1db7 20f2 6ab0 7148 f3b9 41de 84be     d.... .jHq...A..
a00077b0:	d47d 1ada e4eb 6ddd b551 f4d4 85c7 83d3     }......mQ.......
a00077c0:	9856 136c a8c0 646b f97a fd62 c9ec 8a65     V.l...kdz.b...e.
a00077d0:	5c4f 1401 6cd9 6306 3d63 fa0f 0df5 8d08     O\...l.cc=......
a00077e0:	20c8 3b6e 105e 4c69 41e4 d560 7172 a267     . n;^.iL.A`.rqg.
a00077f0:	e4d1 3c03 d447 4b04 85fd d20d b56b a50a     ...<G..K....k...
a0007800:	a8fa 35b5 986c 42b2 c9d6 dbbb f940 acbc     ...5l..B....@...
a0007810:	6ce3 32d8 5c75 45df 0dcf dcd6 3d59 abd1     .l.2u\.E....Y=..
a0007820:	30ac 26d9 003a 51de 5180 c8d7 6116 bfd0     .0.&:..Q.Q...a..
a0007830:	f4b5 21b4 c423 56b3 9599 cfba a50f b8bd     ...!#..V........
a0007840:	b89e 2802 8808 5f05 d9b2 c60c e924 b10b     ...(..._....$...
a0007850:	7c87 2f6f 4c11 5868 1dab c161 2d3d b666     .|o/.LhX..a.=-f.
a0007860:	4190 76dc 7106 01db 20bc 98d2 102a efd5     .A.v.q... ..*...
a0007870:	8589 71b1 b51f 06b6 e4a5 9fbf d433 e8b8     ...q........3...
a0007880:	c9a2 7807 f934 0f00 a88e 9609 9818 e10e     ...x4...........
a0007890:	0dbb 7f6a 3d2d 086d 6c97 9164 5c01 e663     ..j.-=m..ld..\c.
a00078a0:	51f4 6b6b 6162 1c6c 30d8 8565 004e f262     .Qkkbal..0e.N.b.
a00078b0:	95ed 6c06 a57b 1b01 f4c1 8208 c457 f50f     ...l{.......W...
a00078c0:	d9c6 65b0 e950 12b7 b8ea 8bbe 887c fcb9     ...eP.......|...
a00078d0:	1ddf 62dd 2d49 15da 7cf3 8cd3 4c65 fbd4     ...bI-...|..eL..
a00078e0:	6158 4db2 51ce 3ab5 0074 a3bc 30e2 d4bb     Xa.M.Q.:t....0..
a00078f0:	a541 4adf 95d7 3dd8 c46d a4d1 f4fb d3d6     A..J...=m.......
a0007900:	e96a 4369 d9fc 346e 8846 ad67 b8d0 da60     j.iC..n4F.g...`.
a0007910:	2d73 4404 1de5 3303 4c5f aa0a 7cc9 dd0d     s-.D...3_L...|..
a0007920:	713c 5005 41aa 2702 1010 be0b 2086 c90c     <q.P.A.'..... ..
a0007930:	b525 5768 85b3 206f d409 b966 e49f ce61     %.hW..o ..f...a.
a0007940:	f90e 5ede c998 29d9 9822 b0d0 a8b4 c7d7     ...^...)".......
a0007950:	3d17 59b3 0d81 2eb4 5c3b b7bd 6cad c0ba     .=.Y....;\...l..
a0007960:	8320 edb8 b3b6 9abf e20c 03b6 d29a 74b1      ..............t
a0007970:	4739 ead5 77af 9dd2 2615 04db 1683 73dc     9G...w...&.....s
a0007980:	0b12 e363 3b84 9464 6a3e 0d6d 5aa8 7a6a     ..c..;d.>jm..Zjz
a0007990:	cf0b e40e ff9d 9309 ae27 0a00 9eb1 7d07     ........'......}
a00079a0:	9344 f00f a3d2 8708 f268 1e01 c2fe 6906     D.......h......i
a00079b0:	575d f762 67cb 8065 3671 196c 06e7 6e6b     ]Wb..ge.q6l...kn
a00079c0:	1b76 fed4 2be0 89d3 7a5a 10da 4acc 67dd     v....+..Zz...J.g
a00079d0:	df6f f9b9 eff9 8ebe be43 17b7 8ed5 60b0     o.......C......`
a00079e0:	a3e8 d6d6 937e a1d1 c2c4 38d8 f252 4fdf     ....~......8R..O
a00079f0:	67f1 d1bb 5767 a6bc 06dd 3fb5 364b 48b2     .g..gW.....?K6.H
a0007a00:	2bda d80d 1b4c af0a 4af6 3603 7a60 4104     .+..L....J.6`z.A
a0007a10:	efc3 df60 df55 a867 8eef 316e be79 4669     ..`.U.g...n1y.iF
a0007a20:	b38c cb61 831a bc66 d2a0 256f e236 5268     ..a...f...o%6.hR
a0007a30:	7795 cc0c 4703 bb0b 16b9 2202 262f 5505     .w...G....."/&.U
a0007a40:	3bbe c5ba 0b28 b2bd 5a92 2bb4 6a04 5cb3     .;..(....Z.+.j.\
a0007a50:	ffa7 c2d7 cf31 b5d0 9e8b 2cd9 ae1d 5bde     ....1......,...[
a0007a60:	c2b0 9b64 f226 ec63 a39c 756a 930a 026d     ..d.&.c...ju..m.
a0007a70:	06a9 9c09 363f eb0e 6785 7207 5713 0500     ....?6...g.r.W..
a0007a80:	4a82 95bf 7a14 e2b8 2bae 7bb1 1b38 0cb6     .J...z...+.{8...
a0007a90:	8e9b 92d2 be0d e5d5 efb7 7cdc df21 0bdb     ...........|!...
a0007aa0:	d2d4 86d3 e242 f1d4 b3f8 68dd 836e 1fda     ....B......hn...
a0007ab0:	16cd 81be 265b f6b9 77e1 6fb0 4777 18b7     ....[&...w.owG..
a0007ac0:	5ae6 8808 6a70 ff0f 3bca 6606 0b5c 1101     .Z..pj...;.f\...
a0007ad0:	9eff 8f65 ae69 f862 ffd3 616b cf45 166c     ..e.i.b...kaE.l.
a0007ae0:	e278 a00a d2ee d70d 8354 4e04 b3c2 3903     x.......T..N...9
a0007af0:	2661 a767 16f7 d060 474d 4969 77db 3e6e     a&g...`.MGiI.wn>
a0007b00:	6a4a aed1 5adc d9d6 0b66 40df 3bf0 37d8     Jj...Z..f..@.;.7
a0007b10:	ae53 a9bc 9ec5 debb cf7f 47b2 ffe9 30b5     S..........G...0
a0007b20:	f21c bdbd c28a caba 9330 53b3 a3a6 24b4     ........0..S...$
a0007b30:	3605 bad0 0693 cdd7 5729 54de 67bf 23d9     .6......)W.T.g.#
a0007b40:	7a2e b366 4ab8 c461 1b02 5d68 2b94 2a6f     .zf..Ja...h].+o*
a0007b50:	be37 b40b 8ea1 c30c df1b 5a05 ef8d 2d02     7..........Z...-

a0007b60 <hex_asc_upper>:
a0007b60:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
a0007b70:	0000 0000 7269 2071 253a 2064 6e75 6572     ....irq :%d unre
a0007b80:	6967 7473 7265 6465 0a0d 0000 6461 0063     gistered....adc.
a0007b90:	6164 0063 6665 635f 7274 006c 6175 7472     dac.ef_ctrl.uart
a0007ba0:	0030 0000 6175 7472 0031 0000 7073 3069     0...uart1...spi0
a0007bb0:	0000 0000 7770 5f6d 3276 305f 0000 0000     ....pwm_v2_0....
a0007bc0:	6d64 3061 635f 3068 0000 0000 6d64 3061     dma0_ch0....dma0
a0007bd0:	635f 3168 0000 0000 6d64 3061 635f 3268     _ch1....dma0_ch2
a0007be0:	0000 0000 6d64 3061 635f 3368 0000 0000     ....dma0_ch3....
a0007bf0:	3269 3063 0000 0000 3269 3163 0000 0000     i2c0....i2c1....
a0007c00:	3269 3073 0000 0000 6974 656d 3072 0000     i2s0....timer0..
a0007c10:	6974 656d 3172 0000 7472 0063 6561 0073     timer1..rtc.aes.
a0007c20:	6873 0061 7274 676e 0000 0000 6b70 0061     sha.trng....pka.
a0007c30:	6d65 6361 0030 0000 6177 6374 6468 676f     emac0...watchdog
a0007c40:	0000 0000 6b63 0073 6a6d 6570 0067 0000     ....cks.mjpeg...
a0007c50:	7269 7872 0000 0000 6163 306d 0000 0000     irrx....cam0....
a0007c60:	6163 316d 0000 0000 7561 6461 0063 0000     cam1....auadc...
a0007c70:	7561 6164 0063 0000 6473 6f69 0032 0000     audac...sdio2...
a0007c80:	6473 0068 6264 0069 6c70 6d66 645f 616d     sdh.dbi.plfm_dma
a0007c90:	635f 3068 0000 0000 6c70 6d66 645f 616d     _ch0....plfm_dma
a0007ca0:	635f 3168 0000 0000 6c70 6d66 645f 616d     _ch1....plfm_dma
a0007cb0:	635f 3268 0000 0000 6c70 6d66 645f 616d     _ch2....plfm_dma
a0007cc0:	635f 3368 0000 0000 6c70 6d66 645f 616d     _ch3....plfm_dma
a0007cd0:	635f 3468 0000 0000 6f77 0000 7375 5f62     _ch4....wo..usb_
a0007ce0:	3276 0000 6e49 7473 7572 7463 6f69 206e     v2..Instruction 
a0007cf0:	6461 7264 7365 2073 696d 6173 696c 6e67     address misalign
a0007d00:	6465 0000 6e49 7473 7572 7463 6f69 206e     ed..Instruction 
a0007d10:	6361 6563 7373 6620 7561 746c 0000 0000     access fault....
a0007d20:	6c49 656c 6167 206c 6e69 7473 7572 7463     Illegal instruct
a0007d30:	6f69 006e 7242 6165 706b 696f 746e 0000     ion.Breakpoint..
a0007d40:	6f4c 6461 6120 6464 6572 7373 6d20 7369     Load address mis
a0007d50:	6c61 6769 656e 0064 6f4c 6461 6120 6363     aligned.Load acc
a0007d60:	7365 2073 6166 6c75 0074 0000 7453 726f     ess fault...Stor
a0007d70:	2f65 4d41 204f 6461 7264 7365 2073 696d     e/AMO address mi
a0007d80:	6173 696c 6e67 6465 0000 0000 7453 726f     saligned....Stor
a0007d90:	2f65 4d41 204f 6361 6563 7373 6620 7561     e/AMO access fau
a0007da0:	746c 0000 6e45 6976 6f72 6d6e 6e65 2074     lt..Environment 
a0007db0:	6163 6c6c 6620 6f72 206d 2d55 6f6d 6564     call from U-mode
a0007dc0:	0000 0000 6e45 6976 6f72 6d6e 6e65 2074     ....Environment 
a0007dd0:	6163 6c6c 6620 6f72 206d 2d53 6f6d 6564     call from S-mode
a0007de0:	0000 0000 5352 4456 0000 0000 6e45 6976     ....RSVD....Envi
a0007df0:	6f72 6d6e 6e65 2074 6163 6c6c 6620 6f72     ronment call fro
a0007e00:	206d 2d4d 6f6d 6564 0000 0000 6e49 7473     m M-mode....Inst
a0007e10:	7572 7463 6f69 206e 6170 6567 6620 7561     ruction page fau
a0007e20:	746c 0000 6f4c 6461 7020 6761 2065 6166     lt..Load page fa
a0007e30:	6c75 0074 7453 726f 2f65 4d41 204f 6170     ult.Store/AMO pa
a0007e40:	6567 6620 7561 746c 0000 0000 7865 6563     ge fault....exce
a0007e50:	7470 6f69 5f6e 6e65 7274 0d79 000a 0000     ption_entry.....
a0007e60:	636d 7561 6573 253d 3830 0d78 000a 0000     mcause=%08x.....
a0007e70:	656d 6370 253a 3830 0d78 000a 746d 6176     mepc:%08x...mtva
a0007e80:	3a6c 3025 7838 0a0d 0000 0000 7325 0a0d     l:%08x......%s..
a0007e90:	0000 0000 7ce4 a000 7d04 a000 7d20 a000     .....|...}.. }..
a0007ea0:	7d34 a000 7d40 a000 7d58 a000 7d6c a000     4}..@}..X}..l}..
a0007eb0:	7d8c a000 7da4 a000 7dc4 a000 7de4 a000     .}...}...}...}..
a0007ec0:	7dec a000 7e0c a000 7e24 a000 7de4 a000     .}...~..$~...}..
a0007ed0:	7e34 a000                                   4~..

a0007ed4 <CSWTCH.86>:
a0007ed4:	0000 0000 3600 016e 4800 01e8 f000 0249     .....6n..H....I.
a0007ee4:	5a00 0262 ba80 018c 4800 01e8 4651 344e     .Zb......H..QFN4
a0007ef4:	0030 0000 4651 344e 4d30 0000 4651 354e     0...QFN40M..QFN5
a0007f04:	0036 0000 5245 4f52 0052 0000 4f4e 0000     6...ERROR...NO..
a0007f14:	4d32 0042 4d34 0042 4d38 0042 4257 345f     2MB.4MB.8MB.WB_4
a0007f24:	424d 0000 4257 385f 424d 0000 4257 315f     MB..WB_8MB..WB_1
a0007f34:	4d36 0042 5353 0000 5425 2b54 0000 0000     6MB.SS..%TT+....
a0007f44:	5325 0053 5454 0000 4625 0046 4646 0000     %SS.TT..%FF.FF..
a0007f54:	646c 316f 0035 0000 7069 6174 0074 0000     ldo15...iptat...
a0007f64:	6369 0078 6364 6364 745f 6972 006d 0000     icx.dcdc_trim...
a0007f74:	646c 316f 5f38 6573 006c 0000 646c 316f     ldo18_sel...ldo1
a0007f84:	5f38 7274 6d69 0000 646c 336f 5f33 7274     8_trim..ldo33_tr
a0007f94:	6d69 0000 646c 316f 5f31 6974 6d72 0000     im..ldo11_tirm..
a0007fa4:	6372 3233 006d 0000 7068 705f 666f 7366     rc32m...hp_poffs
a0007fb4:	7465 0030 7068 705f 666f 7366 7465 0031     et0.hp_poffset1.
a0007fc4:	7068 705f 666f 7366 7465 0032 706c 705f     hp_poffset2.lp_p
a0007fd4:	666f 7366 7465 0030 706c 705f 666f 7366     offset0.lp_poffs
a0007fe4:	7465 0031 706c 705f 666f 7366 7465 0032     et1.lp_poffset2.
a0007ff4:	7a62 705f 666f 7366 7465 0030 7a62 705f     bz_poffset0.bz_p
a0008004:	666f 7366 7465 0031 7a62 705f 666f 7366     offset1.bz_poffs
a0008014:	7465 0032 6d74 5f70 706d 0030 6d74 5f70     et2.tmp_mp0.tmp_
a0008024:	706d 0031 6d74 5f70 706d 0032 7561 6461     mp1.tmp_mp2.auad
a0008034:	5f63 6167 6e69 0000 7561 6461 5f63 666f     c_gain..auadc_of
a0008044:	7366 7465 0000 0000 7370 6172 5f6d 7274     fset....psram_tr
a0008054:	6d69 0000 6372 3233 006b 0000 7478 6c61     im..rc32k...xtal
a0008064:	0030 0000 7478 6c61 0031 0000 7478 6c61     0...xtal1...xtal
a0008074:	0032 0000 6364 6364 645f 7369 0000 0000     2...dcdc_dis....
a0008084:	6364 6364 765f 756f 0074 0000 646c 316f     dcdc_vout...ldo1
a0008094:	5f38 7962 6170 7373 0000 0000 7375 3262     8_bypass....usb2
a00080a4:	0030 0000 5753 6920 616d 6567 673a 6970     0...SW image:gpi
a00080b4:	5f6f 6e69 7570 5f74 756f 7074 7475 715f     o_input_output_q
a00080c4:	6363 3437 6478 006b 6f63 706d 6c69 5f65     cc74xdk.compile_
a00080d4:	6974 656d 463a 6265 2020 2035 3032 3632     time:Feb  5 2026
a00080e4:	3120 3a35 3131 303a 0030 0000 6f63 706d      15:11:00...comp
a00080f4:	6e6f 6e65 5f74 6576 7372 6f69 5f6e 6473     onent_version_sd
a0008104:	5f6b 2e32 2e30 3739 0000 0000 6546 2062     k_2.0.97....Feb 
a0008114:	3520 3220 3230 0036 3531 313a 3a31 3130      5 2026.15:11:01
a0008124:	0000 0000 7542 6c69 3a64 7325 252c 0d73     ....Build:%s,%s.
a0008134:	000a 0000 6556 7372 6f69 206e 666f 7520     ....Version of u
a0008144:	6573 2064 6f63 706d 6e6f 6e65 7374 0d3a     sed components:.
a0008154:	000a 0000 5609 7265 6973 6e6f 203a 0000     .....Version: ..
a0008164:	3d3d 3d3d 3d3d 3d3d 6320 6968 2070 6e69     ======== chip in
a0008174:	6f66 3d20 3d3d 3d3d 3d3d 0d3d 000a 0000     fo ========.....
a0008184:	6170 6b63 6761 2065 2020 2020 2020 2020     package         
a0008194:	2520 0d73 000a 0000 6c66 7361 5f68 6e69      %s.....flash_in
a00081a4:	6f66 2020 2020 2020 2520 0d73 000a 0000     fo       %s.....
a00081b4:	7370 6172 5f6d 6e69 6f66 2020 2020 2020     psram_info      
a00081c4:	2520 0d73 000a 0000 6576 7372 6f69 206e      %s.....version 
a00081d4:	2020 2020 2020 2020 4120 6425 0a0d 0000              A%d....
a00081e4:	736f 6963 6c6c 7461 726f 0000 7263 7379     oscillator..crys
a00081f4:	6174 006c 7370 6172 206d 6164 6174 6120     tal.psram data a
a0008204:	726c 6165 7964 6520 6978 7473 2c73 7020     lready exists, p
a0008214:	656c 7361 2065 6e65 6261 656c 4320 4e4f     lease enable CON
a0008224:	4946 5f47 5350 4152 0d4d 000a 7964 616e     FIG_PSRAM...dyna
a0008234:	696d 2063 656d 6f6d 7972 6920 696e 2074     mic memory init 
a0008244:	7573 6363 7365 2c73 6f20 7263 6d61 6820     success, ocram h
a0008254:	6165 2070 6973 657a 3d20 2520 2064 624b     eap size = %d Kb
a0008264:	7479 2065 0a0d 0000 6c66 7361 2068 6e69     yte ....flash in
a0008274:	7469 6620 6961 216c 2121 0a0d 0000 0000     it fail!!!......
a0008284:	6175 7472 2020 6973 3167 253a 3830 2c78     uart  sig1:%08x,
a0008294:	7320 6769 3a32 3025 7838 0a0d 0000 0000      sig2:%08x......
a00082a4:	6c63 636f 206b 6567 316e 253a 3830 2c78     clock gen1:%08x,
a00082b4:	6720 6e65 3a32 3025 7838 0a0d 0000 0000      gen2:%08x......
a00082c4:	7478 6c61 253a 4864 287a 7325 0d29 000a     xtal:%dHz(%s)...
a00082d4:	6f62 7261 2064 6e69 7469 6420 6e6f 0d65     board init done.
a00082e4:	000a 0000 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d     ....============
a00082f4:	3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 0d3d     ===============.
a0008304:	000a 0000 27a4 a000 29b6 a000 27a0 a000     .....'...)...'..
a0008314:	29b6 a000 29a6 a000 29b6 a000 27a0 a000     .)...)...)...'..
a0008324:	27a8 a000 27a8 a000 29a6 a000 27a0 a000     .'...'...)...'..
a0008334:	2784 a000 2784 a000 2784 a000 27b2 a000     .'...'...'...'..
a0008344:	2f82 a000 2f82 a000 2f9a a000 2f7c a000     ./.../.../..|/..
a0008354:	2f7c a000 2d94 a000 2f9a a000 2f7c a000     |/...-.../..|/..
a0008364:	2d94 a000 2f7c a000 2f9a a000 2f7a a000     .-..|/.../..z/..
a0008374:	2f7a a000 2f7a a000 315c a000               z/..z/..\1..

a0008380 <__clz_tab>:
a0008380:	0100 0202 0303 0303 0404 0404 0404 0404     ................
a0008390:	0505 0505 0505 0505 0505 0505 0505 0505     ................
a00083a0:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a00083b0:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a00083c0:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a00083d0:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a00083e0:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a00083f0:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0008400:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008410:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008420:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008430:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008440:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008450:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008460:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0008470:	0808 0808 0808 0808 0808 0808 0808 0808     ................

a0008480 <__init_array_end>:
a0008480:	0400                	addi	s0,sp,512
a0008482:	62fc                	flw	fa5,68(a3)
a0008484:	fc00                	fsw	fs0,56(s0)
a0008486:	0006                	c.slli	zero,0x1
a0008488:	0400                	addi	s0,sp,512
a000848a:	22fc                	fld	fa5,192(a3)
a000848c:	0000                	unimp
a000848e:	0000                	unimp
a0008490:	0000                	unimp
a0008492:	80002303          	lw	t1,-2048(zero) # fffff800 <__psram_limit+0x57bff800>
a0008496:	0000                	unimp
a0008498:	0000                	unimp
a000849a:	2801                	jal	a00084aa <__nocache_ram_load_addr+0x2>
a000849c:	0000                	unimp
a000849e:	0000                	unimp
a00084a0:	ffffffff          	0xffffffff
a00084a4:	ffffffff          	0xffffffff

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
62fc0516:	2110006f          	j	62fc0f26 <arch_delay_us>

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
62fc054a:	1dd000ef          	jal	ra,62fc0f26 <arch_delay_us>
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
62fc05aa:	261d                	jal	62fc08d0 <qcc74x_irq_save>
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
62fc05c2:	ae19                	j	62fc08d8 <qcc74x_irq_restore>
62fc05c4:	00f59363          	bne	a1,a5,62fc05ca <qcc74x_ef_ctrl_read_direct+0x4a>
62fc05c8:	4481                	li	s1,0
62fc05ca:	c63a                	sw	a4,12(sp)
62fc05cc:	2611                	jal	62fc08d0 <qcc74x_irq_save>
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

62fc05fe <qcc74x_uart_putchar>:
62fc05fe:	1101                	addi	sp,sp,-32
62fc0600:	cc22                	sw	s0,24(sp)
62fc0602:	ca26                	sw	s1,20(sp)
62fc0604:	c84a                	sw	s2,16(sp)
62fc0606:	c64e                	sw	s3,12(sp)
62fc0608:	c452                	sw	s4,8(sp)
62fc060a:	4144                	lw	s1,4(a0)
62fc060c:	ce06                	sw	ra,28(sp)
62fc060e:	842e                	mv	s0,a1
62fc0610:	2685                	jal	62fc0970 <qcc74x_mtimer_get_time_ms>
62fc0612:	892a                	mv	s2,a0
62fc0614:	89ae                	mv	s3,a1
62fc0616:	06400a13          	li	s4,100
62fc061a:	0844a783          	lw	a5,132(s1)
62fc061e:	03f7f793          	andi	a5,a5,63
62fc0622:	cf91                	beqz	a5,62fc063e <qcc74x_uart_putchar+0x40>
62fc0624:	0ff47413          	zext.b	s0,s0
62fc0628:	08848423          	sb	s0,136(s1)
62fc062c:	4501                	li	a0,0
62fc062e:	40f2                	lw	ra,28(sp)
62fc0630:	4462                	lw	s0,24(sp)
62fc0632:	44d2                	lw	s1,20(sp)
62fc0634:	4942                	lw	s2,16(sp)
62fc0636:	49b2                	lw	s3,12(sp)
62fc0638:	4a22                	lw	s4,8(sp)
62fc063a:	6105                	addi	sp,sp,32
62fc063c:	8082                	ret
62fc063e:	2e0d                	jal	62fc0970 <qcc74x_mtimer_get_time_ms>
62fc0640:	c3251577          	sub64	a0,a0,s2
62fc0644:	e199                	bnez	a1,62fc064a <qcc74x_uart_putchar+0x4c>
62fc0646:	fcaa7ae3          	bgeu	s4,a0,62fc061a <qcc74x_uart_putchar+0x1c>
62fc064a:	f8c00513          	li	a0,-116
62fc064e:	b7c5                	j	62fc062e <qcc74x_uart_putchar+0x30>

62fc0650 <qcc74x_uart_put>:
62fc0650:	1141                	addi	sp,sp,-16
62fc0652:	c422                	sw	s0,8(sp)
62fc0654:	c226                	sw	s1,4(sp)
62fc0656:	c04a                	sw	s2,0(sp)
62fc0658:	c606                	sw	ra,12(sp)
62fc065a:	892a                	mv	s2,a0
62fc065c:	842e                	mv	s0,a1
62fc065e:	00c584b3          	add	s1,a1,a2
62fc0662:	00941463          	bne	s0,s1,62fc066a <qcc74x_uart_put+0x1a>
62fc0666:	4501                	li	a0,0
62fc0668:	a039                	j	62fc0676 <qcc74x_uart_put+0x26>
62fc066a:	9814458b          	lbuia	a1,(s0),1,0
62fc066e:	854a                	mv	a0,s2
62fc0670:	3779                	jal	62fc05fe <qcc74x_uart_putchar>
62fc0672:	fe0558e3          	bgez	a0,62fc0662 <qcc74x_uart_put+0x12>
62fc0676:	40b2                	lw	ra,12(sp)
62fc0678:	4422                	lw	s0,8(sp)
62fc067a:	4492                	lw	s1,4(sp)
62fc067c:	4902                	lw	s2,0(sp)
62fc067e:	0141                	addi	sp,sp,16
62fc0680:	8082                	ret

62fc0682 <flash_get_size_from_jedecid>:
62fc0682:	01051793          	slli	a5,a0,0x10
62fc0686:	00ff0737          	lui	a4,0xff0
62fc068a:	8ff9                	and	a5,a5,a4
62fc068c:	6741                	lui	a4,0x10
62fc068e:	f0070713          	addi	a4,a4,-256 # ff00 <wifi_ram_max_size+0x7f00>
62fc0692:	8f69                	and	a4,a4,a0
62fc0694:	8fd9                	or	a5,a5,a4
62fc0696:	5d05350b          	extu	a0,a0,23,16
62fc069a:	953e                	add	a0,a0,a5
62fc069c:	c519                	beqz	a0,62fc06aa <flash_get_size_from_jedecid+0x28>
62fc069e:	897d                	andi	a0,a0,31
62fc06a0:	1535                	addi	a0,a0,-19
62fc06a2:	000807b7          	lui	a5,0x80
62fc06a6:	00a79533          	sll	a0,a5,a0
62fc06aa:	8082                	ret

62fc06ac <qcc74x_flash_set_cmds.constprop.0>:
62fc06ac:	010107b7          	lui	a5,0x1010
62fc06b0:	1101                	addi	sp,sp,-32
62fc06b2:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc06b6:	c43e                	sw	a5,8(sp)
62fc06b8:	47a5                	li	a5,9
62fc06ba:	00f10623          	sb	a5,12(sp)
62fc06be:	85c1c783          	lbu	a5,-1956(gp) # 62fc1a44 <g_flash_cfg>
62fc06c2:	ce06                	sw	ra,28(sp)
62fc06c4:	4711                	li	a4,4
62fc06c6:	8bfd                	andi	a5,a5,31
62fc06c8:	00e79763          	bne	a5,a4,62fc06d6 <qcc74x_flash_set_cmds.constprop.0+0x2a>
62fc06cc:	4789                	li	a5,2
62fc06ce:	00f105a3          	sb	a5,11(sp)
62fc06d2:	00f10623          	sb	a5,12(sp)
62fc06d6:	0028                	addi	a0,sp,8
62fc06d8:	4581                	li	a1,0
62fc06da:	2ed5                	jal	62fc0ace <qcc74x_sf_ctrl_cmds_set>
62fc06dc:	40f2                	lw	ra,28(sp)
62fc06de:	6105                	addi	sp,sp,32
62fc06e0:	8082                	ret

62fc06e2 <flash_set_l1c_wrap.constprop.0>:
62fc06e2:	85c1c783          	lbu	a5,-1956(gp) # 62fc1a44 <g_flash_cfg>
62fc06e6:	4711                	li	a4,4
62fc06e8:	85c18513          	addi	a0,gp,-1956 # 62fc1a44 <g_flash_cfg>
62fc06ec:	8bfd                	andi	a5,a5,31
62fc06ee:	00e79363          	bne	a5,a4,62fc06f4 <flash_set_l1c_wrap.constprop.0+0x12>
62fc06f2:	a1a9                	j	62fc0b3c <qcc74x_sflash_set_burst_wrap>
62fc06f4:	a12d                	j	62fc0b1e <qcc74x_sflash_disable_burst_wrap>

62fc06f6 <flash_set_qspi_enable.constprop.0>:
62fc06f6:	85c1c783          	lbu	a5,-1956(gp) # 62fc1a44 <g_flash_cfg>
62fc06fa:	8bbd                	andi	a5,a5,15
62fc06fc:	17f9                	addi	a5,a5,-2
62fc06fe:	0fd7f793          	andi	a5,a5,253
62fc0702:	e781                	bnez	a5,62fc070a <flash_set_qspi_enable.constprop.0+0x14>
62fc0704:	85c18513          	addi	a0,gp,-1956 # 62fc1a44 <g_flash_cfg>
62fc0708:	aee5                	j	62fc0b00 <qcc74x_sflash_qspi_enable>
62fc070a:	8082                	ret

62fc070c <flash2_init.isra.0>:
62fc070c:	7179                	addi	sp,sp,-48
62fc070e:	4785                	li	a5,1
62fc0710:	ca3e                	sw	a5,20(sp)
62fc0712:	cc3e                	sw	a5,24(sp)
62fc0714:	10300793          	li	a5,259
62fc0718:	00f11e23          	sh	a5,28(sp)
62fc071c:	010107b7          	lui	a5,0x1010
62fc0720:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc0724:	c63e                	sw	a5,12(sp)
62fc0726:	47a5                	li	a5,9
62fc0728:	00f10823          	sb	a5,16(sp)
62fc072c:	62fc37b7          	lui	a5,0x62fc3
62fc0730:	d657c703          	lbu	a4,-667(a5) # 62fc2d65 <device_info+0x1>
62fc0734:	d606                	sw	ra,44(sp)
62fc0736:	d422                	sw	s0,40(sp)
62fc0738:	d226                	sw	s1,36(sp)
62fc073a:	d04a                	sw	s2,32(sp)
62fc073c:	c402                	sw	zero,8(sp)
62fc073e:	478d                	li	a5,3
62fc0740:	06f71b63          	bne	a4,a5,62fc07b6 <flash2_init.isra.0+0xaa>
62fc0744:	084c                	addi	a1,sp,20
62fc0746:	03400513          	li	a0,52
62fc074a:	269d                	jal	62fc0ab0 <qcc74x_sf_cfg_sbus2_flash_init>
62fc074c:	4505                	li	a0,1
62fc074e:	2669                	jal	62fc0ad8 <qcc74x_sf_ctrl_sbus2_replace>
62fc0750:	4785                	li	a5,1
62fc0752:	4701                	li	a4,0
62fc0754:	80818693          	addi	a3,gp,-2040 # 62fc19f0 <g_flash2_cfg>
62fc0758:	4601                	li	a2,0
62fc075a:	03400593          	li	a1,52
62fc075e:	4501                	li	a0,0
62fc0760:	80818913          	addi	s2,gp,-2040 # 62fc19f0 <g_flash2_cfg>
62fc0764:	2129                	jal	62fc0b6e <qcc74x_sf_cfg_flash_identify_ext>
62fc0766:	04055863          	bgez	a0,62fc07b6 <flash2_init.isra.0+0xaa>
62fc076a:	47c5                	li	a5,17
62fc076c:	00f91023          	sh	a5,0(s2)
62fc0770:	002c                	addi	a1,sp,8
62fc0772:	57fd                	li	a5,-1
62fc0774:	80818513          	addi	a0,gp,-2040 # 62fc19f0 <g_flash2_cfg>
62fc0778:	02f90f23          	sb	a5,62(s2)
62fc077c:	2675                	jal	62fc0b28 <qcc74x_sflash_get_jedecid>
62fc077e:	47a2                	lw	a5,8(sp)
62fc0780:	01000737          	lui	a4,0x1000
62fc0784:	177d                	addi	a4,a4,-1
62fc0786:	62fc3437          	lui	s0,0x62fc3
62fc078a:	8ff9                	and	a5,a5,a4
62fc078c:	4585                	li	a1,1
62fc078e:	0068                	addi	a0,sp,12
62fc0790:	d8c40413          	addi	s0,s0,-628 # 62fc2d8c <g_jedec_id2>
62fc0794:	c43e                	sw	a5,8(sp)
62fc0796:	c01c                	sw	a5,0(s0)
62fc0798:	2e1d                	jal	62fc0ace <qcc74x_sf_ctrl_cmds_set>
62fc079a:	00094583          	lbu	a1,0(s2)
62fc079e:	4685                	li	a3,1
62fc07a0:	4601                	li	a2,0
62fc07a2:	89bd                	andi	a1,a1,15
62fc07a4:	80818513          	addi	a0,gp,-2040 # 62fc19f0 <g_flash2_cfg>
62fc07a8:	2a39                	jal	62fc08c6 <qcc74x_sflash_xip_read_enable>
62fc07aa:	e511                	bnez	a0,62fc07b6 <flash2_init.isra.0+0xaa>
62fc07ac:	2e1d                	jal	62fc0ae2 <qcc74x_sf_ctrl_sbus2_revoke_replace>
62fc07ae:	4008                	lw	a0,0(s0)
62fc07b0:	3dc9                	jal	62fc0682 <flash_get_size_from_jedecid>
62fc07b2:	80a1a223          	sw	a0,-2044(gp) # 62fc19ec <flash2_size>
62fc07b6:	50b2                	lw	ra,44(sp)
62fc07b8:	5422                	lw	s0,40(sp)
62fc07ba:	5492                	lw	s1,36(sp)
62fc07bc:	5902                	lw	s2,32(sp)
62fc07be:	6145                	addi	sp,sp,48
62fc07c0:	8082                	ret

62fc07c2 <qcc74x_flash_init>:
62fc07c2:	62fc3537          	lui	a0,0x62fc3
62fc07c6:	7139                	addi	sp,sp,-64
62fc07c8:	d6450513          	addi	a0,a0,-668 # 62fc2d64 <device_info>
62fc07cc:	de06                	sw	ra,60(sp)
62fc07ce:	dc22                	sw	s0,56(sp)
62fc07d0:	da26                	sw	s1,52(sp)
62fc07d2:	d64e                	sw	s3,44(sp)
62fc07d4:	d452                	sw	s4,40(sp)
62fc07d6:	d84a                	sw	s2,48(sp)
62fc07d8:	d256                	sw	s5,36(sp)
62fc07da:	ca02                	sw	zero,20(sp)
62fc07dc:	013000ef          	jal	ra,62fc0fee <qcc74x_efuse_get_device_info>
62fc07e0:	23f9                	jal	62fc0dae <GLB_Get_Flash_Id_Value>
62fc07e2:	62fc3437          	lui	s0,0x62fc3
62fc07e6:	62fc29b7          	lui	s3,0x62fc2
62fc07ea:	ca2a                	sw	a0,20(sp)
62fc07ec:	85c18a13          	addi	s4,gp,-1956 # 62fc1a44 <g_flash_cfg>
62fc07f0:	d8840413          	addi	s0,s0,-632 # 62fc2d88 <g_jedec_id>
62fc07f4:	9e898993          	addi	s3,s3,-1560 # 62fc19e8 <__tcm_code_end__>
62fc07f8:	c121                	beqz	a0,62fc0838 <qcc74x_flash_init+0x76>
62fc07fa:	4681                	li	a3,0
62fc07fc:	4601                	li	a2,0
62fc07fe:	85c18593          	addi	a1,gp,-1956 # 62fc1a44 <g_flash_cfg>
62fc0802:	21b1                	jal	62fc0c4e <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc0804:	892a                	mv	s2,a0
62fc0806:	e90d                	bnez	a0,62fc0838 <qcc74x_flash_init+0x76>
62fc0808:	4552                	lw	a0,20(sp)
62fc080a:	c008                	sw	a0,0(s0)
62fc080c:	00aa06a3          	sb	a0,13(s4)
62fc0810:	c62a                	sw	a0,12(sp)
62fc0812:	3d046097          	auipc	ra,0x3d046
62fc0816:	942080e7          	jalr	-1726(ra) # a0006154 <flash_get_clock_delay.constprop.0.isra.0>
62fc081a:	4532                	lw	a0,12(sp)
62fc081c:	359d                	jal	62fc0682 <flash_get_size_from_jedecid>
62fc081e:	00a9a023          	sw	a0,0(s3)
62fc0822:	35ed                	jal	62fc070c <flash2_init.isra.0>
62fc0824:	50f2                	lw	ra,60(sp)
62fc0826:	5462                	lw	s0,56(sp)
62fc0828:	54d2                	lw	s1,52(sp)
62fc082a:	59b2                	lw	s3,44(sp)
62fc082c:	5a22                	lw	s4,40(sp)
62fc082e:	5a92                	lw	s5,36(sp)
62fc0830:	854a                	mv	a0,s2
62fc0832:	5942                	lw	s2,48(sp)
62fc0834:	6121                	addi	sp,sp,64
62fc0836:	8082                	ret
62fc0838:	000109a3          	sb	zero,19(sp)
62fc083c:	cc02                	sw	zero,24(sp)
62fc083e:	ce02                	sw	zero,28(sp)
62fc0840:	2841                	jal	62fc08d0 <qcc74x_irq_save>
62fc0842:	8aaa                	mv	s5,a0
62fc0844:	01310513          	addi	a0,sp,19
62fc0848:	2e09                	jal	62fc0b5a <qcc74x_xip_sflash_opt_enter>
62fc084a:	4681                	li	a3,0
62fc084c:	4601                	li	a2,0
62fc084e:	086c                	addi	a1,sp,28
62fc0850:	85c18513          	addi	a0,gp,-1956 # 62fc1a44 <g_flash_cfg>
62fc0854:	21e1                	jal	62fc0d1c <qcc74x_xip_sflash_state_save>
62fc0856:	082c                	addi	a1,sp,24
62fc0858:	85c18513          	addi	a0,gp,-1956 # 62fc1a44 <g_flash_cfg>
62fc085c:	24f1                	jal	62fc0b28 <qcc74x_sflash_get_jedecid>
62fc085e:	460d                	li	a2,3
62fc0860:	082c                	addi	a1,sp,24
62fc0862:	0848                	addi	a0,sp,20
62fc0864:	3e71                	jal	62fc0400 <arch_memcpy>
62fc0866:	4562                	lw	a0,24(sp)
62fc0868:	010007b7          	lui	a5,0x1000
62fc086c:	17fd                	addi	a5,a5,-1
62fc086e:	8d7d                	and	a0,a0,a5
62fc0870:	4681                	li	a3,0
62fc0872:	4601                	li	a2,0
62fc0874:	85c18593          	addi	a1,gp,-1956 # 62fc1a44 <g_flash_cfg>
62fc0878:	cc2a                	sw	a0,24(sp)
62fc087a:	c008                	sw	a0,0(s0)
62fc087c:	2ec9                	jal	62fc0c4e <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc087e:	4762                	lw	a4,24(sp)
62fc0880:	892a                	mv	s2,a0
62fc0882:	e119                	bnez	a0,62fc0888 <qcc74x_flash_init+0xc6>
62fc0884:	00ea06a3          	sb	a4,13(s4)
62fc0888:	001667b7          	lui	a5,0x166
62fc088c:	0ef78793          	addi	a5,a5,239 # 1660ef <remain_wifi_ram+0x1460ef>
62fc0890:	00f71563          	bne	a4,a5,62fc089a <qcc74x_flash_init+0xd8>
62fc0894:	4791                	li	a5,4
62fc0896:	00fa1023          	sh	a5,0(s4)
62fc089a:	3d09                	jal	62fc06ac <qcc74x_flash_set_cmds.constprop.0>
62fc089c:	3da9                	jal	62fc06f6 <flash_set_qspi_enable.constprop.0>
62fc089e:	3591                	jal	62fc06e2 <flash_set_l1c_wrap.constprop.0>
62fc08a0:	45f2                	lw	a1,28(sp)
62fc08a2:	4681                	li	a3,0
62fc08a4:	4601                	li	a2,0
62fc08a6:	85c18513          	addi	a0,gp,-1956 # 62fc1a44 <g_flash_cfg>
62fc08aa:	2c71                	jal	62fc0b46 <qcc74x_xip_sflash_state_restore>
62fc08ac:	01314503          	lbu	a0,19(sp)
62fc08b0:	2c55                	jal	62fc0b64 <qcc74x_xip_sflash_opt_exit>
62fc08b2:	8556                	mv	a0,s5
62fc08b4:	2015                	jal	62fc08d8 <qcc74x_irq_restore>
62fc08b6:	3d046097          	auipc	ra,0x3d046
62fc08ba:	89e080e7          	jalr	-1890(ra) # a0006154 <flash_get_clock_delay.constprop.0.isra.0>
62fc08be:	4008                	lw	a0,0(s0)
62fc08c0:	29d1                	jal	62fc0d94 <GLB_Set_Flash_Id_Value>
62fc08c2:	4008                	lw	a0,0(s0)
62fc08c4:	bfa1                	j	62fc081c <qcc74x_flash_init+0x5a>

62fc08c6 <qcc74x_sflash_xip_read_enable>:
62fc08c6:	87b6                	mv	a5,a3
62fc08c8:	02000713          	li	a4,32
62fc08cc:	4681                	li	a3,0
62fc08ce:	a499                	j	62fc0b14 <qcc74x_sflash_set_xip_cfg>

62fc08d0 <qcc74x_irq_save>:
62fc08d0:	4521                	li	a0,8
62fc08d2:	30053573          	csrrc	a0,mstatus,a0
62fc08d6:	8082                	ret

62fc08d8 <qcc74x_irq_restore>:
62fc08d8:	30051073          	csrw	mstatus,a0
62fc08dc:	8082                	ret

62fc08de <qcc74x_mtimer_get_time_us>:
62fc08de:	7139                	addi	sp,sp,-64
62fc08e0:	de22                	sw	s0,60(sp)
62fc08e2:	c602                	sw	zero,12(sp)
62fc08e4:	e000c7b7          	lui	a5,0xe000c
62fc08e8:	3e800413          	li	s0,1000
62fc08ec:	ff87a603          	lw	a2,-8(a5) # e000bff8 <__psram_limit+0x37c0bff8>
62fc08f0:	ffc7a683          	lw	a3,-4(a5)
62fc08f4:	4f81                	li	t6,0
62fc08f6:	4381                	li	t2,0
62fc08f8:	cc36                	sw	a3,24(sp)
62fc08fa:	ce7e                	sw	t6,28(sp)
62fc08fc:	ff87a603          	lw	a2,-8(a5)
62fc0900:	ffc7a683          	lw	a3,-4(a5)
62fc0904:	4881                	li	a7,0
62fc0906:	c832                	sw	a2,16(sp)
62fc0908:	ca1e                	sw	t2,20(sp)
62fc090a:	ff87a603          	lw	a2,-8(a5)
62fc090e:	ffc7a683          	lw	a3,-4(a5)
62fc0912:	4e81                	li	t4,0
62fc0914:	d032                	sw	a2,32(sp)
62fc0916:	d246                	sw	a7,36(sp)
62fc0918:	ff87a603          	lw	a2,-8(a5)
62fc091c:	ffc7a683          	lw	a3,-4(a5)
62fc0920:	d436                	sw	a3,40(sp)
62fc0922:	d676                	sw	t4,44(sp)
62fc0924:	4732                	lw	a4,12(sp)
62fc0926:	0705                	addi	a4,a4,1
62fc0928:	c63a                	sw	a4,12(sp)
62fc092a:	4732                	lw	a4,12(sp)
62fc092c:	02870f63          	beq	a4,s0,62fc096a <qcc74x_mtimer_get_time_us+0x8c>
62fc0930:	4642                	lw	a2,16(sp)
62fc0932:	46d2                	lw	a3,20(sp)
62fc0934:	5502                	lw	a0,32(sp)
62fc0936:	5592                	lw	a1,36(sp)
62fc0938:	fad5eae3          	bltu	a1,a3,62fc08ec <qcc74x_mtimer_get_time_us+0xe>
62fc093c:	00b69463          	bne	a3,a1,62fc0944 <qcc74x_mtimer_get_time_us+0x66>
62fc0940:	fac566e3          	bltu	a0,a2,62fc08ec <qcc74x_mtimer_get_time_us+0xe>
62fc0944:	4662                	lw	a2,24(sp)
62fc0946:	46f2                	lw	a3,28(sp)
62fc0948:	5522                	lw	a0,40(sp)
62fc094a:	55b2                	lw	a1,44(sp)
62fc094c:	fac510e3          	bne	a0,a2,62fc08ec <qcc74x_mtimer_get_time_us+0xe>
62fc0950:	f8d59ee3          	bne	a1,a3,62fc08ec <qcc74x_mtimer_get_time_us+0xe>
62fc0954:	5622                	lw	a2,40(sp)
62fc0956:	56b2                	lw	a3,44(sp)
62fc0958:	5702                	lw	a4,32(sp)
62fc095a:	5792                	lw	a5,36(sp)
62fc095c:	4501                	li	a0,0
62fc095e:	85b2                	mv	a1,a2
62fc0960:	c0e51577          	add64	a0,a0,a4
62fc0964:	5472                	lw	s0,60(sp)
62fc0966:	6121                	addi	sp,sp,64
62fc0968:	8082                	ret
62fc096a:	4501                	li	a0,0
62fc096c:	4581                	li	a1,0
62fc096e:	bfdd                	j	62fc0964 <qcc74x_mtimer_get_time_us+0x86>

62fc0970 <qcc74x_mtimer_get_time_ms>:
62fc0970:	1141                	addi	sp,sp,-16
62fc0972:	c606                	sw	ra,12(sp)
62fc0974:	37ad                	jal	62fc08de <qcc74x_mtimer_get_time_us>
62fc0976:	3e800613          	li	a2,1000
62fc097a:	4681                	li	a3,0
62fc097c:	3d041097          	auipc	ra,0x3d041
62fc0980:	a84080e7          	jalr	-1404(ra) # a0001400 <__udivdi3>
62fc0984:	40b2                	lw	ra,12(sp)
62fc0986:	0141                	addi	sp,sp,16
62fc0988:	8082                	ret

62fc098a <qcc74x_mtimer_delay_ms>:
62fc098a:	1101                	addi	sp,sp,-32
62fc098c:	cc22                	sw	s0,24(sp)
62fc098e:	ca26                	sw	s1,20(sp)
62fc0990:	842a                	mv	s0,a0
62fc0992:	c84a                	sw	s2,16(sp)
62fc0994:	c64e                	sw	s3,12(sp)
62fc0996:	ce06                	sw	ra,28(sp)
62fc0998:	3799                	jal	62fc08de <qcc74x_mtimer_get_time_us>
62fc099a:	892a                	mv	s2,a0
62fc099c:	3e800513          	li	a0,1000
62fc09a0:	89ae                	mv	s3,a1
62fc09a2:	f0a41577          	mulr64	a0,s0,a0
62fc09a6:	84ae                	mv	s1,a1
62fc09a8:	842a                	mv	s0,a0
62fc09aa:	3f15                	jal	62fc08de <qcc74x_mtimer_get_time_us>
62fc09ac:	c3251577          	sub64	a0,a0,s2
62fc09b0:	fe95ede3          	bltu	a1,s1,62fc09aa <qcc74x_mtimer_delay_ms+0x20>
62fc09b4:	00b49463          	bne	s1,a1,62fc09bc <qcc74x_mtimer_delay_ms+0x32>
62fc09b8:	fe8569e3          	bltu	a0,s0,62fc09aa <qcc74x_mtimer_delay_ms+0x20>
62fc09bc:	40f2                	lw	ra,28(sp)
62fc09be:	4462                	lw	s0,24(sp)
62fc09c0:	44d2                	lw	s1,20(sp)
62fc09c2:	4942                	lw	s2,16(sp)
62fc09c4:	49b2                	lw	s3,12(sp)
62fc09c6:	6105                	addi	sp,sp,32
62fc09c8:	8082                	ret

62fc09ca <system_setup_xtal_config.isra.0>:
62fc09ca:	1141                	addi	sp,sp,-16
62fc09cc:	c606                	sw	ra,12(sp)
62fc09ce:	c422                	sw	s0,8(sp)
62fc09d0:	c226                	sw	s1,4(sp)
62fc09d2:	28d1                	jal	62fc0aa6 <HBN_Get_MCU_XCLK_Sel>
62fc09d4:	84aa                	mv	s1,a0
62fc09d6:	20d9                	jal	62fc0a9c <HBN_Get_MCU_Root_CLK_Sel>
62fc09d8:	842a                	mv	s0,a0
62fc09da:	4501                	li	a0,0
62fc09dc:	285d                	jal	62fc0a92 <HBN_Set_MCU_XCLK_Sel>
62fc09de:	4501                	li	a0,0
62fc09e0:	2065                	jal	62fc0a88 <HBN_Set_MCU_Root_CLK_Sel>
62fc09e2:	200106b7          	lui	a3,0x20010
62fc09e6:	8846a783          	lw	a5,-1916(a3) # 2000f884 <remain_wifi_ram+0x1ffef884>
62fc09ea:	7751                	lui	a4,0xffff4
62fc09ec:	175d                	addi	a4,a4,-9
62fc09ee:	8ff9                	and	a5,a5,a4
62fc09f0:	6721                	lui	a4,0x8
62fc09f2:	8fd9                	or	a5,a5,a4
62fc09f4:	88f6a223          	sw	a5,-1916(a3)
62fc09f8:	47c1                	li	a5,16
62fc09fa:	0001                	nop
62fc09fc:	17fd                	addi	a5,a5,-1
62fc09fe:	fff5                	bnez	a5,62fc09fa <system_setup_xtal_config.isra.0+0x30>
62fc0a00:	8526                	mv	a0,s1
62fc0a02:	2841                	jal	62fc0a92 <HBN_Set_MCU_XCLK_Sel>
62fc0a04:	8522                	mv	a0,s0
62fc0a06:	4422                	lw	s0,8(sp)
62fc0a08:	40b2                	lw	ra,12(sp)
62fc0a0a:	4492                	lw	s1,4(sp)
62fc0a0c:	0141                	addi	sp,sp,16
62fc0a0e:	a8ad                	j	62fc0a88 <HBN_Set_MCU_Root_CLK_Sel>

62fc0a10 <GLB_AHB_MCU_Software_Reset>:
62fc0a10:	900167b7          	lui	a5,0x90016
62fc0a14:	9647a783          	lw	a5,-1692(a5) # 90015964 <__psram_limit+0xe7c15964>
62fc0a18:	8782                	jr	a5

62fc0a1a <GLB_Power_On_XTAL_And_PLL_CLK>:
62fc0a1a:	900167b7          	lui	a5,0x90016
62fc0a1e:	9cc7a783          	lw	a5,-1588(a5) # 900159cc <__psram_limit+0xe7c159cc>
62fc0a22:	8782                	jr	a5

62fc0a24 <GLB_SW_POR_Reset>:
62fc0a24:	900167b7          	lui	a5,0x90016
62fc0a28:	9d87a783          	lw	a5,-1576(a5) # 900159d8 <__psram_limit+0xe7c159d8>
62fc0a2c:	8782                	jr	a5

62fc0a2e <GLB_Set_DIG_512K_CLK>:
62fc0a2e:	900167b7          	lui	a5,0x90016
62fc0a32:	a0c7a783          	lw	a5,-1524(a5) # 90015a0c <__psram_limit+0xe7c15a0c>
62fc0a36:	8782                	jr	a5

62fc0a38 <GLB_Set_DIG_CLK_Sel>:
62fc0a38:	900167b7          	lui	a5,0x90016
62fc0a3c:	a107a783          	lw	a5,-1520(a5) # 90015a10 <__psram_limit+0xe7c15a10>
62fc0a40:	8782                	jr	a5

62fc0a42 <GLB_Set_MCU_System_CLK>:
62fc0a42:	900167b7          	lui	a5,0x90016
62fc0a46:	a407a783          	lw	a5,-1472(a5) # 90015a40 <__psram_limit+0xe7c15a40>
62fc0a4a:	8782                	jr	a5

62fc0a4c <GLB_Set_PKA_CLK_Sel>:
62fc0a4c:	900167b7          	lui	a5,0x90016
62fc0a50:	a4c7a783          	lw	a5,-1460(a5) # 90015a4c <__psram_limit+0xe7c15a4c>
62fc0a54:	8782                	jr	a5

62fc0a56 <GLB_Set_PWM1_IO_Sel>:
62fc0a56:	900167b7          	lui	a5,0x90016
62fc0a5a:	a547a783          	lw	a5,-1452(a5) # 90015a54 <__psram_limit+0xe7c15a54>
62fc0a5e:	8782                	jr	a5

62fc0a60 <GLB_Set_UART_CLK>:
62fc0a60:	900167b7          	lui	a5,0x90016
62fc0a64:	a847a783          	lw	a5,-1404(a5) # 90015a84 <__psram_limit+0xe7c15a84>
62fc0a68:	8782                	jr	a5

62fc0a6a <GLB_Set_USB_CLK_From_WIFIPLL>:
62fc0a6a:	900167b7          	lui	a5,0x90016
62fc0a6e:	a887a783          	lw	a5,-1400(a5) # 90015a88 <__psram_limit+0xe7c15a88>
62fc0a72:	8782                	jr	a5

62fc0a74 <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>:
62fc0a74:	900167b7          	lui	a5,0x90016
62fc0a78:	a8c7a783          	lw	a5,-1396(a5) # 90015a8c <__psram_limit+0xe7c15a8c>
62fc0a7c:	8782                	jr	a5

62fc0a7e <HBN_Get_Xtal_Type>:
62fc0a7e:	900167b7          	lui	a5,0x90016
62fc0a82:	b8c7a783          	lw	a5,-1140(a5) # 90015b8c <__psram_limit+0xe7c15b8c>
62fc0a86:	8782                	jr	a5

62fc0a88 <HBN_Set_MCU_Root_CLK_Sel>:
62fc0a88:	900167b7          	lui	a5,0x90016
62fc0a8c:	bf47a783          	lw	a5,-1036(a5) # 90015bf4 <__psram_limit+0xe7c15bf4>
62fc0a90:	8782                	jr	a5

62fc0a92 <HBN_Set_MCU_XCLK_Sel>:
62fc0a92:	900167b7          	lui	a5,0x90016
62fc0a96:	bf87a783          	lw	a5,-1032(a5) # 90015bf8 <__psram_limit+0xe7c15bf8>
62fc0a9a:	8782                	jr	a5

62fc0a9c <HBN_Get_MCU_Root_CLK_Sel>:
62fc0a9c:	900167b7          	lui	a5,0x90016
62fc0aa0:	c307a783          	lw	a5,-976(a5) # 90015c30 <__psram_limit+0xe7c15c30>
62fc0aa4:	8782                	jr	a5

62fc0aa6 <HBN_Get_MCU_XCLK_Sel>:
62fc0aa6:	900167b7          	lui	a5,0x90016
62fc0aaa:	c347a783          	lw	a5,-972(a5) # 90015c34 <__psram_limit+0xe7c15c34>
62fc0aae:	8782                	jr	a5

62fc0ab0 <qcc74x_sf_cfg_sbus2_flash_init>:
62fc0ab0:	900167b7          	lui	a5,0x90016
62fc0ab4:	d107a783          	lw	a5,-752(a5) # 90015d10 <__psram_limit+0xe7c15d10>
62fc0ab8:	8782                	jr	a5

62fc0aba <qcc74x_sf_cfg_flash_identify>:
62fc0aba:	90016837          	lui	a6,0x90016
62fc0abe:	d1482803          	lw	a6,-748(a6) # 90015d14 <__psram_limit+0xe7c15d14>
62fc0ac2:	8802                	jr	a6

62fc0ac4 <qcc74x_sf_ctrl_get_flash_image_offset>:
62fc0ac4:	900167b7          	lui	a5,0x90016
62fc0ac8:	d247a783          	lw	a5,-732(a5) # 90015d24 <__psram_limit+0xe7c15d24>
62fc0acc:	8782                	jr	a5

62fc0ace <qcc74x_sf_ctrl_cmds_set>:
62fc0ace:	900167b7          	lui	a5,0x90016
62fc0ad2:	d707a783          	lw	a5,-656(a5) # 90015d70 <__psram_limit+0xe7c15d70>
62fc0ad6:	8782                	jr	a5

62fc0ad8 <qcc74x_sf_ctrl_sbus2_replace>:
62fc0ad8:	900167b7          	lui	a5,0x90016
62fc0adc:	d987a783          	lw	a5,-616(a5) # 90015d98 <__psram_limit+0xe7c15d98>
62fc0ae0:	8782                	jr	a5

62fc0ae2 <qcc74x_sf_ctrl_sbus2_revoke_replace>:
62fc0ae2:	900167b7          	lui	a5,0x90016
62fc0ae6:	d9c7a783          	lw	a5,-612(a5) # 90015d9c <__psram_limit+0xe7c15d9c>
62fc0aea:	8782                	jr	a5

62fc0aec <qcc74x_sf_ctrl_set_flash_image_offset>:
62fc0aec:	900167b7          	lui	a5,0x90016
62fc0af0:	db47a783          	lw	a5,-588(a5) # 90015db4 <__psram_limit+0xe7c15db4>
62fc0af4:	8782                	jr	a5

62fc0af6 <qcc74x_sf_ctrl_set_owner>:
62fc0af6:	900167b7          	lui	a5,0x90016
62fc0afa:	dbc7a783          	lw	a5,-580(a5) # 90015dbc <__psram_limit+0xe7c15dbc>
62fc0afe:	8782                	jr	a5

62fc0b00 <qcc74x_sflash_qspi_enable>:
62fc0b00:	900167b7          	lui	a5,0x90016
62fc0b04:	de47a783          	lw	a5,-540(a5) # 90015de4 <__psram_limit+0xe7c15de4>
62fc0b08:	8782                	jr	a5

62fc0b0a <qcc74x_sflash_set_32bits_addr_mode>:
62fc0b0a:	900167b7          	lui	a5,0x90016
62fc0b0e:	e047a783          	lw	a5,-508(a5) # 90015e04 <__psram_limit+0xe7c15e04>
62fc0b12:	8782                	jr	a5

62fc0b14 <qcc74x_sflash_set_xip_cfg>:
62fc0b14:	90016837          	lui	a6,0x90016
62fc0b18:	e0c82803          	lw	a6,-500(a6) # 90015e0c <__psram_limit+0xe7c15e0c>
62fc0b1c:	8802                	jr	a6

62fc0b1e <qcc74x_sflash_disable_burst_wrap>:
62fc0b1e:	900167b7          	lui	a5,0x90016
62fc0b22:	e247a783          	lw	a5,-476(a5) # 90015e24 <__psram_limit+0xe7c15e24>
62fc0b26:	8782                	jr	a5

62fc0b28 <qcc74x_sflash_get_jedecid>:
62fc0b28:	900167b7          	lui	a5,0x90016
62fc0b2c:	e2c7a783          	lw	a5,-468(a5) # 90015e2c <__psram_limit+0xe7c15e2c>
62fc0b30:	8782                	jr	a5

62fc0b32 <qcc74x_sflash_reset_continue_read>:
62fc0b32:	900167b7          	lui	a5,0x90016
62fc0b36:	e447a783          	lw	a5,-444(a5) # 90015e44 <__psram_limit+0xe7c15e44>
62fc0b3a:	8782                	jr	a5

62fc0b3c <qcc74x_sflash_set_burst_wrap>:
62fc0b3c:	900167b7          	lui	a5,0x90016
62fc0b40:	e487a783          	lw	a5,-440(a5) # 90015e48 <__psram_limit+0xe7c15e48>
62fc0b44:	8782                	jr	a5

62fc0b46 <qcc74x_xip_sflash_state_restore>:
62fc0b46:	900167b7          	lui	a5,0x90016
62fc0b4a:	ef87a783          	lw	a5,-264(a5) # 90015ef8 <__psram_limit+0xe7c15ef8>
62fc0b4e:	1141                	addi	sp,sp,-16
62fc0b50:	c606                	sw	ra,12(sp)
62fc0b52:	9782                	jalr	a5
62fc0b54:	40b2                	lw	ra,12(sp)
62fc0b56:	0141                	addi	sp,sp,16
62fc0b58:	8082                	ret

62fc0b5a <qcc74x_xip_sflash_opt_enter>:
62fc0b5a:	900167b7          	lui	a5,0x90016
62fc0b5e:	f047a783          	lw	a5,-252(a5) # 90015f04 <__psram_limit+0xe7c15f04>
62fc0b62:	8782                	jr	a5

62fc0b64 <qcc74x_xip_sflash_opt_exit>:
62fc0b64:	900167b7          	lui	a5,0x90016
62fc0b68:	f087a783          	lw	a5,-248(a5) # 90015f08 <__psram_limit+0xe7c15f08>
62fc0b6c:	8782                	jr	a5

62fc0b6e <qcc74x_sf_cfg_flash_identify_ext>:
62fc0b6e:	1101                	addi	sp,sp,-32
62fc0b70:	cc22                	sw	s0,24(sp)
62fc0b72:	ca26                	sw	s1,20(sp)
62fc0b74:	c84a                	sw	s2,16(sp)
62fc0b76:	c63e                	sw	a5,12(sp)
62fc0b78:	ce06                	sw	ra,28(sp)
62fc0b7a:	892a                	mv	s2,a0
62fc0b7c:	84b6                	mv	s1,a3
62fc0b7e:	3f35                	jal	62fc0aba <qcc74x_sf_cfg_flash_identify>
62fc0b80:	47b2                	lw	a5,12(sp)
62fc0b82:	842a                	mv	s0,a0
62fc0b84:	00090b63          	beqz	s2,62fc0b9a <qcc74x_sf_cfg_flash_identify_ext+0x2c>
62fc0b88:	0004c583          	lbu	a1,0(s1)
62fc0b8c:	02000713          	li	a4,32
62fc0b90:	4681                	li	a3,0
62fc0b92:	4605                	li	a2,1
62fc0b94:	89bd                	andi	a1,a1,15
62fc0b96:	8526                	mv	a0,s1
62fc0b98:	3fb5                	jal	62fc0b14 <qcc74x_sflash_set_xip_cfg>
62fc0b9a:	02044e63          	bltz	s0,62fc0bd6 <qcc74x_sf_cfg_flash_identify_ext+0x68>
62fc0b9e:	010007b7          	lui	a5,0x1000
62fc0ba2:	17fd                	addi	a5,a5,-1
62fc0ba4:	8c7d                	and	s0,s0,a5
62fc0ba6:	62fc17b7          	lui	a5,0x62fc1
62fc0baa:	4701                	li	a4,0
62fc0bac:	46878793          	addi	a5,a5,1128 # 62fc1468 <flash_infos>
62fc0bb0:	45b1                	li	a1,12
62fc0bb2:	02b00613          	li	a2,43
62fc0bb6:	02b706b3          	mul	a3,a4,a1
62fc0bba:	40f6c50b          	lrw	a0,a3,a5,0
62fc0bbe:	02851363          	bne	a0,s0,62fc0be4 <qcc74x_sf_cfg_flash_identify_ext+0x76>
62fc0bc2:	97b6                	add	a5,a5,a3
62fc0bc4:	478c                	lw	a1,8(a5)
62fc0bc6:	05400613          	li	a2,84
62fc0bca:	8526                	mv	a0,s1
62fc0bcc:	85dff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0bd0:	800007b7          	lui	a5,0x80000
62fc0bd4:	8c5d                	or	s0,s0,a5
62fc0bd6:	40f2                	lw	ra,28(sp)
62fc0bd8:	8522                	mv	a0,s0
62fc0bda:	4462                	lw	s0,24(sp)
62fc0bdc:	44d2                	lw	s1,20(sp)
62fc0bde:	4942                	lw	s2,16(sp)
62fc0be0:	6105                	addi	sp,sp,32
62fc0be2:	8082                	ret
62fc0be4:	0705                	addi	a4,a4,1
62fc0be6:	fcc718e3          	bne	a4,a2,62fc0bb6 <qcc74x_sf_cfg_flash_identify_ext+0x48>
62fc0bea:	b7f5                	j	62fc0bd6 <qcc74x_sf_cfg_flash_identify_ext+0x68>

62fc0bec <qcc74x_xip_sflash_read_via_cache_need_lock>:
62fc0bec:	1101                	addi	sp,sp,-32
62fc0bee:	cc22                	sw	s0,24(sp)
62fc0bf0:	04000437          	lui	s0,0x4000
62fc0bf4:	147d                	addi	s0,s0,-1
62fc0bf6:	c452                	sw	s4,8(sp)
62fc0bf8:	8c69                	and	s0,s0,a0
62fc0bfa:	8a2e                	mv	s4,a1
62fc0bfc:	8536                	mv	a0,a3
62fc0bfe:	85ba                	mv	a1,a4
62fc0c00:	ce06                	sw	ra,28(sp)
62fc0c02:	ca26                	sw	s1,20(sp)
62fc0c04:	c84a                	sw	s2,16(sp)
62fc0c06:	c64e                	sw	s3,12(sp)
62fc0c08:	c256                	sw	s5,4(sp)
62fc0c0a:	84b6                	mv	s1,a3
62fc0c0c:	893a                	mv	s2,a4
62fc0c0e:	8ab2                	mv	s5,a2
62fc0c10:	3d55                	jal	62fc0ac4 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0c12:	864a                	mv	a2,s2
62fc0c14:	89aa                	mv	s3,a0
62fc0c16:	85a6                	mv	a1,s1
62fc0c18:	4501                	li	a0,0
62fc0c1a:	3dc9                	jal	62fc0aec <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0c1c:	85ca                	mv	a1,s2
62fc0c1e:	8526                	mv	a0,s1
62fc0c20:	3555                	jal	62fc0ac4 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0c22:	a00005b7          	lui	a1,0xa0000
62fc0c26:	8dc1                	or	a1,a1,s0
62fc0c28:	8656                	mv	a2,s5
62fc0c2a:	8d89                	sub	a1,a1,a0
62fc0c2c:	8552                	mv	a0,s4
62fc0c2e:	ffaff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0c32:	854e                	mv	a0,s3
62fc0c34:	864a                	mv	a2,s2
62fc0c36:	85a6                	mv	a1,s1
62fc0c38:	3d55                	jal	62fc0aec <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0c3a:	40f2                	lw	ra,28(sp)
62fc0c3c:	4462                	lw	s0,24(sp)
62fc0c3e:	44d2                	lw	s1,20(sp)
62fc0c40:	4942                	lw	s2,16(sp)
62fc0c42:	49b2                	lw	s3,12(sp)
62fc0c44:	4a22                	lw	s4,8(sp)
62fc0c46:	4a92                	lw	s5,4(sp)
62fc0c48:	4501                	li	a0,0
62fc0c4a:	6105                	addi	sp,sp,32
62fc0c4c:	8082                	ret

62fc0c4e <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>:
62fc0c4e:	474647b7          	lui	a5,0x47464
62fc0c52:	7175                	addi	sp,sp,-144
62fc0c54:	34678793          	addi	a5,a5,838 # 47464346 <__RFTLV_HEAD1_H+0xf3f704>
62fc0c58:	dece                	sw	s3,124(sp)
62fc0c5a:	c706                	sw	ra,140(sp)
62fc0c5c:	c522                	sw	s0,136(sp)
62fc0c5e:	c326                	sw	s1,132(sp)
62fc0c60:	c14a                	sw	s2,128(sp)
62fc0c62:	c63e                	sw	a5,12(sp)
62fc0c64:	00010823          	sb	zero,16(sp)
62fc0c68:	89ae                	mv	s3,a1
62fc0c6a:	e52d                	bnez	a0,62fc0cd4 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x86>
62fc0c6c:	85b6                	mv	a1,a3
62fc0c6e:	8532                	mv	a0,a2
62fc0c70:	8432                	mv	s0,a2
62fc0c72:	84b6                	mv	s1,a3
62fc0c74:	3d81                	jal	62fc0ac4 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0c76:	85a2                	mv	a1,s0
62fc0c78:	892a                	mv	s2,a0
62fc0c7a:	8626                	mv	a2,s1
62fc0c7c:	4501                	li	a0,0
62fc0c7e:	35bd                	jal	62fc0aec <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0c80:	a0000537          	lui	a0,0xa0000
62fc0c84:	86a2                	mv	a3,s0
62fc0c86:	8726                	mv	a4,s1
62fc0c88:	05c00613          	li	a2,92
62fc0c8c:	084c                	addi	a1,sp,20
62fc0c8e:	0521                	addi	a0,a0,8
62fc0c90:	3fb1                	jal	62fc0bec <qcc74x_xip_sflash_read_via_cache_need_lock>
62fc0c92:	85a2                	mv	a1,s0
62fc0c94:	8626                	mv	a2,s1
62fc0c96:	854a                	mv	a0,s2
62fc0c98:	3d91                	jal	62fc0aec <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0c9a:	4611                	li	a2,4
62fc0c9c:	006c                	addi	a1,sp,12
62fc0c9e:	0848                	addi	a0,sp,20
62fc0ca0:	fcaff0ef          	jal	ra,62fc046a <arch_memcmp>
62fc0ca4:	842a                	mv	s0,a0
62fc0ca6:	e92d                	bnez	a0,62fc0d18 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0ca8:	05400593          	li	a1,84
62fc0cac:	0828                	addi	a0,sp,24
62fc0cae:	815ff0ef          	jal	ra,62fc04c2 <qcc74x_soft_crc32>
62fc0cb2:	57b6                	lw	a5,108(sp)
62fc0cb4:	06a79263          	bne	a5,a0,62fc0d18 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0cb8:	05400613          	li	a2,84
62fc0cbc:	082c                	addi	a1,sp,24
62fc0cbe:	854e                	mv	a0,s3
62fc0cc0:	f68ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0cc4:	40ba                	lw	ra,140(sp)
62fc0cc6:	8522                	mv	a0,s0
62fc0cc8:	442a                	lw	s0,136(sp)
62fc0cca:	449a                	lw	s1,132(sp)
62fc0ccc:	490a                	lw	s2,128(sp)
62fc0cce:	59f6                	lw	s3,124(sp)
62fc0cd0:	6149                	addi	sp,sp,144
62fc0cd2:	8082                	ret
62fc0cd4:	900167b7          	lui	a5,0x90016
62fc0cd8:	d007a783          	lw	a5,-768(a5) # 90015d00 <__psram_limit+0xe7c15d00>
62fc0cdc:	892a                	mv	s2,a0
62fc0cde:	9782                	jalr	a5
62fc0ce0:	842a                	mv	s0,a0
62fc0ce2:	d16d                	beqz	a0,62fc0cc4 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0ce4:	62fc17b7          	lui	a5,0x62fc1
62fc0ce8:	4701                	li	a4,0
62fc0cea:	46878793          	addi	a5,a5,1128 # 62fc1468 <flash_infos>
62fc0cee:	45b1                	li	a1,12
62fc0cf0:	02b00613          	li	a2,43
62fc0cf4:	02b706b3          	mul	a3,a4,a1
62fc0cf8:	40f6c50b          	lrw	a0,a3,a5,0
62fc0cfc:	01251b63          	bne	a0,s2,62fc0d12 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xc4>
62fc0d00:	97b6                	add	a5,a5,a3
62fc0d02:	478c                	lw	a1,8(a5)
62fc0d04:	05400613          	li	a2,84
62fc0d08:	854e                	mv	a0,s3
62fc0d0a:	f1eff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0d0e:	4401                	li	s0,0
62fc0d10:	bf55                	j	62fc0cc4 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0d12:	0705                	addi	a4,a4,1
62fc0d14:	fec710e3          	bne	a4,a2,62fc0cf4 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xa6>
62fc0d18:	547d                	li	s0,-1
62fc0d1a:	b76d                	j	62fc0cc4 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>

62fc0d1c <qcc74x_xip_sflash_state_save>:
62fc0d1c:	7179                	addi	sp,sp,-48
62fc0d1e:	04000793          	li	a5,64
62fc0d22:	d422                	sw	s0,40(sp)
62fc0d24:	d226                	sw	s1,36(sp)
62fc0d26:	d04a                	sw	s2,32(sp)
62fc0d28:	ce4e                	sw	s3,28(sp)
62fc0d2a:	d606                	sw	ra,44(sp)
62fc0d2c:	842a                	mv	s0,a0
62fc0d2e:	89ae                	mv	s3,a1
62fc0d30:	8932                	mv	s2,a2
62fc0d32:	84b6                	mv	s1,a3
62fc0d34:	c63e                	sw	a5,12(sp)
62fc0d36:	47b2                	lw	a5,12(sp)
62fc0d38:	fff78713          	addi	a4,a5,-1
62fc0d3c:	c63a                	sw	a4,12(sp)
62fc0d3e:	ffe5                	bnez	a5,62fc0d36 <qcc74x_xip_sflash_state_save+0x1a>
62fc0d40:	4785                	li	a5,1
62fc0d42:	00f49463          	bne	s1,a5,62fc0d4a <qcc74x_xip_sflash_state_save+0x2e>
62fc0d46:	4505                	li	a0,1
62fc0d48:	3b41                	jal	62fc0ad8 <qcc74x_sf_ctrl_sbus2_replace>
62fc0d4a:	4501                	li	a0,0
62fc0d4c:	336d                	jal	62fc0af6 <qcc74x_sf_ctrl_set_owner>
62fc0d4e:	8522                	mv	a0,s0
62fc0d50:	33cd                	jal	62fc0b32 <qcc74x_sflash_reset_continue_read>
62fc0d52:	8522                	mv	a0,s0
62fc0d54:	33e9                	jal	62fc0b1e <qcc74x_sflash_disable_burst_wrap>
62fc0d56:	4585                	li	a1,1
62fc0d58:	8522                	mv	a0,s0
62fc0d5a:	3b45                	jal	62fc0b0a <qcc74x_sflash_set_32bits_addr_mode>
62fc0d5c:	00044783          	lbu	a5,0(s0) # 4000000 <remain_wifi_ram+0x3fe0000>
62fc0d60:	8bbd                	andi	a5,a5,15
62fc0d62:	17f9                	addi	a5,a5,-2
62fc0d64:	0fd7f793          	andi	a5,a5,253
62fc0d68:	e399                	bnez	a5,62fc0d6e <qcc74x_xip_sflash_state_save+0x52>
62fc0d6a:	8522                	mv	a0,s0
62fc0d6c:	3b51                	jal	62fc0b00 <qcc74x_sflash_qspi_enable>
62fc0d6e:	8522                	mv	a0,s0
62fc0d70:	337d                	jal	62fc0b1e <qcc74x_sflash_disable_burst_wrap>
62fc0d72:	85a6                	mv	a1,s1
62fc0d74:	854a                	mv	a0,s2
62fc0d76:	33b9                	jal	62fc0ac4 <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0d78:	00a9a023          	sw	a0,0(s3)
62fc0d7c:	8626                	mv	a2,s1
62fc0d7e:	85ca                	mv	a1,s2
62fc0d80:	4501                	li	a0,0
62fc0d82:	33ad                	jal	62fc0aec <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0d84:	50b2                	lw	ra,44(sp)
62fc0d86:	5422                	lw	s0,40(sp)
62fc0d88:	5492                	lw	s1,36(sp)
62fc0d8a:	5902                	lw	s2,32(sp)
62fc0d8c:	49f2                	lw	s3,28(sp)
62fc0d8e:	4501                	li	a0,0
62fc0d90:	6145                	addi	sp,sp,48
62fc0d92:	8082                	ret

62fc0d94 <GLB_Set_Flash_Id_Value>:
62fc0d94:	010007b7          	lui	a5,0x1000
62fc0d98:	17fd                	addi	a5,a5,-1
62fc0d9a:	8d7d                	and	a0,a0,a5
62fc0d9c:	5a0007b7          	lui	a5,0x5a000
62fc0da0:	8d5d                	or	a0,a0,a5
62fc0da2:	200007b7          	lui	a5,0x20000
62fc0da6:	5ca7a223          	sw	a0,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc0daa:	4501                	li	a0,0
62fc0dac:	8082                	ret

62fc0dae <GLB_Get_Flash_Id_Value>:
62fc0dae:	200007b7          	lui	a5,0x20000
62fc0db2:	5c47a703          	lw	a4,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc0db6:	7f0007b7          	lui	a5,0x7f000
62fc0dba:	5a0006b7          	lui	a3,0x5a000
62fc0dbe:	8ff9                	and	a5,a5,a4
62fc0dc0:	4501                	li	a0,0
62fc0dc2:	00d79663          	bne	a5,a3,62fc0dce <GLB_Get_Flash_Id_Value+0x20>
62fc0dc6:	01000537          	lui	a0,0x1000
62fc0dca:	157d                	addi	a0,a0,-1
62fc0dcc:	8d79                	and	a0,a0,a4
62fc0dce:	8082                	ret

62fc0dd0 <GLB_Get_Package_Type>:
62fc0dd0:	200567b7          	lui	a5,0x20056
62fc0dd4:	4f88                	lw	a0,24(a5)
62fc0dd6:	5d65350b          	extu	a0,a0,23,22
62fc0dda:	8082                	ret

62fc0ddc <GLB_GPIO_Pad_LeadOut_Sts>:
62fc0ddc:	1141                	addi	sp,sp,-16
62fc0dde:	c422                	sw	s0,8(sp)
62fc0de0:	c606                	sw	ra,12(sp)
62fc0de2:	842a                	mv	s0,a0
62fc0de4:	37f5                	jal	62fc0dd0 <GLB_Get_Package_Type>
62fc0de6:	4789                	li	a5,2
62fc0de8:	02f50563          	beq	a0,a5,62fc0e12 <GLB_GPIO_Pad_LeadOut_Sts+0x36>
62fc0dec:	47f9                	li	a5,30
62fc0dee:	4505                	li	a0,1
62fc0df0:	0087eb63          	bltu	a5,s0,62fc0e06 <GLB_GPIO_Pad_LeadOut_Sts+0x2a>
62fc0df4:	78740537          	lui	a0,0x78740
62fc0df8:	c0f50513          	addi	a0,a0,-1009 # 7873fc0f <__HeapLimit+0x1570fc0f>
62fc0dfc:	00855533          	srl	a0,a0,s0
62fc0e00:	fff54513          	not	a0,a0
62fc0e04:	8905                	andi	a0,a0,1
62fc0e06:	00154513          	xori	a0,a0,1
62fc0e0a:	40b2                	lw	ra,12(sp)
62fc0e0c:	4422                	lw	s0,8(sp)
62fc0e0e:	0141                	addi	sp,sp,16
62fc0e10:	8082                	ret
62fc0e12:	4505                	li	a0,1
62fc0e14:	bfdd                	j	62fc0e0a <GLB_GPIO_Pad_LeadOut_Sts+0x2e>

62fc0e16 <HBN_Get_Xtal_Value>:
62fc0e16:	cd2d                	beqz	a0,62fc0e90 <HBN_Get_Xtal_Value+0x7a>
62fc0e18:	2000f7b7          	lui	a5,0x2000f
62fc0e1c:	10c7a783          	lw	a5,268(a5) # 2000f10c <remain_wifi_ram+0x1ffef10c>
62fc0e20:	4721                	li	a4,8
62fc0e22:	1c47b68b          	extu	a3,a5,7,4
62fc0e26:	06e69363          	bne	a3,a4,62fc0e8c <HBN_Get_Xtal_Value+0x76>
62fc0e2a:	8bbd                	andi	a5,a5,15
62fc0e2c:	4711                	li	a4,4
62fc0e2e:	04e78563          	beq	a5,a4,62fc0e78 <HBN_Get_Xtal_Value+0x62>
62fc0e32:	00f76f63          	bltu	a4,a5,62fc0e50 <HBN_Get_Xtal_Value+0x3a>
62fc0e36:	4709                	li	a4,2
62fc0e38:	02e78263          	beq	a5,a4,62fc0e5c <HBN_Get_Xtal_Value+0x46>
62fc0e3c:	470d                	li	a4,3
62fc0e3e:	02e78a63          	beq	a5,a4,62fc0e72 <HBN_Get_Xtal_Value+0x5c>
62fc0e42:	4705                	li	a4,1
62fc0e44:	02e78163          	beq	a5,a4,62fc0e66 <HBN_Get_Xtal_Value+0x50>
62fc0e48:	00052023          	sw	zero,0(a0)
62fc0e4c:	4501                	li	a0,0
62fc0e4e:	8082                	ret
62fc0e50:	4715                	li	a4,5
62fc0e52:	02e78863          	beq	a5,a4,62fc0e82 <HBN_Get_Xtal_Value+0x6c>
62fc0e56:	4719                	li	a4,6
62fc0e58:	fee798e3          	bne	a5,a4,62fc0e48 <HBN_Get_Xtal_Value+0x32>
62fc0e5c:	01e857b7          	lui	a5,0x1e85
62fc0e60:	80078793          	addi	a5,a5,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc0e64:	a029                	j	62fc0e6e <HBN_Get_Xtal_Value+0x58>
62fc0e66:	016e37b7          	lui	a5,0x16e3
62fc0e6a:	60078793          	addi	a5,a5,1536 # 16e3600 <remain_wifi_ram+0x16c3600>
62fc0e6e:	c11c                	sw	a5,0(a0)
62fc0e70:	bff1                	j	62fc0e4c <HBN_Get_Xtal_Value+0x36>
62fc0e72:	0249f7b7          	lui	a5,0x249f
62fc0e76:	bfe5                	j	62fc0e6e <HBN_Get_Xtal_Value+0x58>
62fc0e78:	026267b7          	lui	a5,0x2626
62fc0e7c:	a0078793          	addi	a5,a5,-1536 # 2625a00 <remain_wifi_ram+0x2605a00>
62fc0e80:	b7fd                	j	62fc0e6e <HBN_Get_Xtal_Value+0x58>
62fc0e82:	018cc7b7          	lui	a5,0x18cc
62fc0e86:	a8078793          	addi	a5,a5,-1408 # 18cba80 <remain_wifi_ram+0x18aba80>
62fc0e8a:	b7d5                	j	62fc0e6e <HBN_Get_Xtal_Value+0x58>
62fc0e8c:	00052023          	sw	zero,0(a0)
62fc0e90:	4505                	li	a0,1
62fc0e92:	8082                	ret
	...

62fc0ea0 <ASM_Delay_Us>:
62fc0ea0:	1141                	addi	sp,sp,-16
62fc0ea2:	c232                	sw	a2,4(sp)
62fc0ea4:	c402                	sw	zero,8(sp)
62fc0ea6:	000f46b7          	lui	a3,0xf4
62fc0eaa:	c602                	sw	zero,12(sp)
62fc0eac:	23f68693          	addi	a3,a3,575 # f423f <remain_wifi_ram+0xd423f>
62fc0eb0:	04a6f963          	bgeu	a3,a0,62fc0f02 <ASM_Delay_Us+0x62>
62fc0eb4:	66e1                	lui	a3,0x18
62fc0eb6:	6a068693          	addi	a3,a3,1696 # 186a0 <wifi_ram_max_size+0x106a0>
62fc0eba:	02d55533          	divu	a0,a0,a3
62fc0ebe:	4729                	li	a4,10
62fc0ec0:	c42a                	sw	a0,8(sp)
62fc0ec2:	47a2                	lw	a5,8(sp)
62fc0ec4:	02b787b3          	mul	a5,a5,a1
62fc0ec8:	c63e                	sw	a5,12(sp)
62fc0eca:	47b2                	lw	a5,12(sp)
62fc0ecc:	02e7d7b3          	divu	a5,a5,a4
62fc0ed0:	c63e                	sw	a5,12(sp)
62fc0ed2:	47b2                	lw	a5,12(sp)
62fc0ed4:	4712                	lw	a4,4(sp)
62fc0ed6:	02e7d7b3          	divu	a5,a5,a4
62fc0eda:	c63e                	sw	a5,12(sp)
62fc0edc:	47b2                	lw	a5,12(sp)
62fc0ede:	c385                	beqz	a5,62fc0efe <ASM_Delay_Us+0x5e>
62fc0ee0:	46b2                	lw	a3,12(sp)
62fc0ee2:	8736                	mv	a4,a3
62fc0ee4:	4781                	li	a5,0
62fc0ee6:	0001                	nop
62fc0ee8:	0001                	nop
62fc0eea:	0001                	nop
62fc0eec:	00000013          	nop
62fc0ef0:	00e78663          	beq	a5,a4,62fc0efc <ASM_Delay_Us+0x5c>
62fc0ef4:	0785                	addi	a5,a5,1
62fc0ef6:	bfed                	j	62fc0ef0 <ASM_Delay_Us+0x50>
62fc0ef8:	0001                	nop
62fc0efa:	0001                	nop
62fc0efc:	0001                	nop
62fc0efe:	0141                	addi	sp,sp,16
62fc0f00:	8082                	ret
62fc0f02:	3e800693          	li	a3,1000
62fc0f06:	02d55533          	divu	a0,a0,a3
62fc0f0a:	c42a                	sw	a0,8(sp)
62fc0f0c:	4722                	lw	a4,8(sp)
62fc0f0e:	02b70733          	mul	a4,a4,a1
62fc0f12:	c63a                	sw	a4,12(sp)
62fc0f14:	47b2                	lw	a5,12(sp)
62fc0f16:	02d7d7b3          	divu	a5,a5,a3
62fc0f1a:	bf5d                	j	62fc0ed0 <ASM_Delay_Us+0x30>
	...

62fc0f26 <arch_delay_us>:
62fc0f26:	1101                	addi	sp,sp,-32
62fc0f28:	ce06                	sw	ra,28(sp)
62fc0f2a:	85aa                	mv	a1,a0
62fc0f2c:	7c1027f3          	csrr	a5,mhcr
62fc0f30:	7c102673          	csrr	a2,mhcr
62fc0f34:	0017f713          	andi	a4,a5,1
62fc0f38:	8205                	srli	a2,a2,0x1
62fc0f3a:	c705                	beqz	a4,62fc0f62 <arch_delay_us+0x3c>
62fc0f3c:	8a05                	andi	a2,a2,1
62fc0f3e:	4791                	li	a5,4
62fc0f40:	40c78633          	sub	a2,a5,a2
62fc0f44:	4505                	li	a0,1
62fc0f46:	c62e                	sw	a1,12(sp)
62fc0f48:	c432                	sw	a2,8(sp)
62fc0f4a:	18d000ef          	jal	ra,62fc18d6 <Clock_System_Clock_Get>
62fc0f4e:	4622                	lw	a2,8(sp)
62fc0f50:	45b2                	lw	a1,12(sp)
62fc0f52:	e509                	bnez	a0,62fc0f5c <arch_delay_us+0x36>
62fc0f54:	01e85537          	lui	a0,0x1e85
62fc0f58:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc0f5c:	40f2                	lw	ra,28(sp)
62fc0f5e:	6105                	addi	sp,sp,32
62fc0f60:	b781                	j	62fc0ea0 <ASM_Delay_Us>
62fc0f62:	8e5d                	or	a2,a2,a5
62fc0f64:	00167793          	andi	a5,a2,1
62fc0f68:	460d                	li	a2,3
62fc0f6a:	ffe9                	bnez	a5,62fc0f44 <arch_delay_us+0x1e>
62fc0f6c:	4661                	li	a2,24
62fc0f6e:	bfd9                	j	62fc0f44 <arch_delay_us+0x1e>

62fc0f70 <arch_delay_ms>:
62fc0f70:	1141                	addi	sp,sp,-16
62fc0f72:	c422                	sw	s0,8(sp)
62fc0f74:	c606                	sw	ra,12(sp)
62fc0f76:	c226                	sw	s1,4(sp)
62fc0f78:	c04a                	sw	s2,0(sp)
62fc0f7a:	3ff00793          	li	a5,1023
62fc0f7e:	842a                	mv	s0,a0
62fc0f80:	00a7fb63          	bgeu	a5,a0,62fc0f96 <arch_delay_ms+0x26>
62fc0f84:	00a55913          	srli	s2,a0,0xa
62fc0f88:	4481                	li	s1,0
62fc0f8a:	000fa537          	lui	a0,0xfa
62fc0f8e:	0485                	addi	s1,s1,1
62fc0f90:	3f59                	jal	62fc0f26 <arch_delay_us>
62fc0f92:	fe991ce3          	bne	s2,s1,62fc0f8a <arch_delay_ms+0x1a>
62fc0f96:	3ff47413          	andi	s0,s0,1023
62fc0f9a:	c819                	beqz	s0,62fc0fb0 <arch_delay_ms+0x40>
62fc0f9c:	3e800513          	li	a0,1000
62fc0fa0:	02a40533          	mul	a0,s0,a0
62fc0fa4:	4422                	lw	s0,8(sp)
62fc0fa6:	40b2                	lw	ra,12(sp)
62fc0fa8:	4492                	lw	s1,4(sp)
62fc0faa:	4902                	lw	s2,0(sp)
62fc0fac:	0141                	addi	sp,sp,16
62fc0fae:	bfa5                	j	62fc0f26 <arch_delay_us>
62fc0fb0:	40b2                	lw	ra,12(sp)
62fc0fb2:	4422                	lw	s0,8(sp)
62fc0fb4:	4492                	lw	s1,4(sp)
62fc0fb6:	4902                	lw	s2,0(sp)
62fc0fb8:	0141                	addi	sp,sp,16
62fc0fba:	8082                	ret

62fc0fbc <qcc74x_efuse_print_number>:
62fc0fbc:	47a5                	li	a5,9
62fc0fbe:	02b7f263          	bgeu	a5,a1,62fc0fe2 <qcc74x_efuse_print_number+0x26>
62fc0fc2:	4729                	li	a4,10
62fc0fc4:	02e5d7b3          	divu	a5,a1,a4
62fc0fc8:	02e5f5b3          	remu	a1,a1,a4
62fc0fcc:	03078793          	addi	a5,a5,48
62fc0fd0:	00f50023          	sb	a5,0(a0) # fa000 <remain_wifi_ram+0xda000>
62fc0fd4:	4789                	li	a5,2
62fc0fd6:	03058593          	addi	a1,a1,48 # a0000030 <__psram_limit+0xf7c00030>
62fc0fda:	00b500a3          	sb	a1,1(a0)
62fc0fde:	953e                	add	a0,a0,a5
62fc0fe0:	8082                	ret
62fc0fe2:	03058593          	addi	a1,a1,48
62fc0fe6:	00b50023          	sb	a1,0(a0)
62fc0fea:	4785                	li	a5,1
62fc0fec:	bfcd                	j	62fc0fde <qcc74x_efuse_print_number+0x22>

62fc0fee <qcc74x_efuse_get_device_info>:
62fc0fee:	1101                	addi	sp,sp,-32
62fc0ff0:	cc22                	sw	s0,24(sp)
62fc0ff2:	4705                	li	a4,1
62fc0ff4:	842a                	mv	s0,a0
62fc0ff6:	4685                	li	a3,1
62fc0ff8:	0070                	addi	a2,sp,12
62fc0ffa:	45e1                	li	a1,24
62fc0ffc:	4501                	li	a0,0
62fc0ffe:	ce06                	sw	ra,28(sp)
62fc1000:	ca26                	sw	s1,20(sp)
62fc1002:	d7eff0ef          	jal	ra,62fc0580 <qcc74x_ef_ctrl_read_direct>
62fc1006:	4732                	lw	a4,12(sp)
62fc1008:	5d67360b          	extu	a2,a4,23,22
62fc100c:	71a7378b          	extu	a5,a4,28,26
62fc1010:	6587368b          	extu	a3,a4,25,24
62fc1014:	8375                	srli	a4,a4,0x1d
62fc1016:	00e401a3          	sb	a4,3(s0)
62fc101a:	00c40023          	sb	a2,0(s0)
62fc101e:	00f400a3          	sb	a5,1(s0)
62fc1022:	00d40123          	sb	a3,2(s0)
62fc1026:	4705                	li	a4,1
62fc1028:	02e60963          	beq	a2,a4,62fc105a <qcc74x_efuse_get_device_info+0x6c>
62fc102c:	4709                	li	a4,2
62fc102e:	02e60b63          	beq	a2,a4,62fc1064 <qcc74x_efuse_get_device_info+0x76>
62fc1032:	ee15                	bnez	a2,62fc106e <qcc74x_efuse_get_device_info+0x80>
62fc1034:	a0008737          	lui	a4,0xa0008
62fc1038:	ef070713          	addi	a4,a4,-272 # a0007ef0 <__psram_limit+0xf7c07ef0>
62fc103c:	c418                	sw	a4,8(s0)
62fc103e:	4709                	li	a4,2
62fc1040:	0ee78363          	beq	a5,a4,62fc1126 <qcc74x_efuse_get_device_info+0x138>
62fc1044:	02f76a63          	bltu	a4,a5,62fc1078 <qcc74x_efuse_get_device_info+0x8a>
62fc1048:	c3b9                	beqz	a5,62fc108e <qcc74x_efuse_get_device_info+0xa0>
62fc104a:	4705                	li	a4,1
62fc104c:	0ce78863          	beq	a5,a4,62fc111c <qcc74x_efuse_get_device_info+0x12e>
62fc1050:	a00087b7          	lui	a5,0xa0008
62fc1054:	f0878793          	addi	a5,a5,-248 # a0007f08 <__psram_limit+0xf7c07f08>
62fc1058:	a83d                	j	62fc1096 <qcc74x_efuse_get_device_info+0xa8>
62fc105a:	a0008737          	lui	a4,0xa0008
62fc105e:	ef870713          	addi	a4,a4,-264 # a0007ef8 <__psram_limit+0xf7c07ef8>
62fc1062:	bfe9                	j	62fc103c <qcc74x_efuse_get_device_info+0x4e>
62fc1064:	a0008737          	lui	a4,0xa0008
62fc1068:	f0070713          	addi	a4,a4,-256 # a0007f00 <__psram_limit+0xf7c07f00>
62fc106c:	bfc1                	j	62fc103c <qcc74x_efuse_get_device_info+0x4e>
62fc106e:	a0008737          	lui	a4,0xa0008
62fc1072:	f0870713          	addi	a4,a4,-248 # a0007f08 <__psram_limit+0xf7c07f08>
62fc1076:	b7d9                	j	62fc103c <qcc74x_efuse_get_device_info+0x4e>
62fc1078:	470d                	li	a4,3
62fc107a:	0ae78b63          	beq	a5,a4,62fc1130 <qcc74x_efuse_get_device_info+0x142>
62fc107e:	4711                	li	a4,4
62fc1080:	fce798e3          	bne	a5,a4,62fc1050 <qcc74x_efuse_get_device_info+0x62>
62fc1084:	a00087b7          	lui	a5,0xa0008
62fc1088:	f1c78793          	addi	a5,a5,-228 # a0007f1c <__psram_limit+0xf7c07f1c>
62fc108c:	a029                	j	62fc1096 <qcc74x_efuse_get_device_info+0xa8>
62fc108e:	a00087b7          	lui	a5,0xa0008
62fc1092:	f1078793          	addi	a5,a5,-240 # a0007f10 <__psram_limit+0xf7c07f10>
62fc1096:	c45c                	sw	a5,12(s0)
62fc1098:	4789                	li	a5,2
62fc109a:	0af68563          	beq	a3,a5,62fc1144 <qcc74x_efuse_get_device_info+0x156>
62fc109e:	478d                	li	a5,3
62fc10a0:	0af68763          	beq	a3,a5,62fc114e <qcc74x_efuse_get_device_info+0x160>
62fc10a4:	4785                	li	a5,1
62fc10a6:	08f68a63          	beq	a3,a5,62fc113a <qcc74x_efuse_get_device_info+0x14c>
62fc10aa:	a00087b7          	lui	a5,0xa0008
62fc10ae:	f1078793          	addi	a5,a5,-240 # a0007f10 <__psram_limit+0xf7c07f10>
62fc10b2:	200004b7          	lui	s1,0x20000
62fc10b6:	68048493          	addi	s1,s1,1664 # 20000680 <remain_wifi_ram+0x1ffe0680>
62fc10ba:	c81c                	sw	a5,16(s0)
62fc10bc:	40100793          	li	a5,1025
62fc10c0:	d8bc                	sw	a5,112(s1)
62fc10c2:	06e00513          	li	a0,110
62fc10c6:	3585                	jal	62fc0f26 <arch_delay_us>
62fc10c8:	40300793          	li	a5,1027
62fc10cc:	d8bc                	sw	a5,112(s1)
62fc10ce:	06e00513          	li	a0,110
62fc10d2:	3d91                	jal	62fc0f26 <arch_delay_us>
62fc10d4:	41300793          	li	a5,1043
62fc10d8:	d8bc                	sw	a5,112(s1)
62fc10da:	06e00513          	li	a0,110
62fc10de:	35a1                	jal	62fc0f26 <arch_delay_us>
62fc10e0:	43300793          	li	a5,1075
62fc10e4:	d8bc                	sw	a5,112(s1)
62fc10e6:	44c00513          	li	a0,1100
62fc10ea:	3d35                	jal	62fc0f26 <arch_delay_us>
62fc10ec:	58b8                	lw	a4,112(s1)
62fc10ee:	1e000693          	li	a3,480
62fc10f2:	01440513          	addi	a0,s0,20
62fc10f6:	6cc7378b          	extu	a5,a4,27,12
62fc10fa:	c63e                	sw	a5,12(sp)
62fc10fc:	00f41223          	sh	a5,4(s0)
62fc1100:	04f6ec63          	bltu	a3,a5,62fc1158 <qcc74x_efuse_get_device_info+0x16a>
62fc1104:	a00085b7          	lui	a1,0xa0008
62fc1108:	460d                	li	a2,3
62fc110a:	f3858593          	addi	a1,a1,-200 # a0007f38 <__psram_limit+0xf7c07f38>
62fc110e:	af2ff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc1112:	40f2                	lw	ra,28(sp)
62fc1114:	4462                	lw	s0,24(sp)
62fc1116:	44d2                	lw	s1,20(sp)
62fc1118:	6105                	addi	sp,sp,32
62fc111a:	8082                	ret
62fc111c:	a00087b7          	lui	a5,0xa0008
62fc1120:	f1478793          	addi	a5,a5,-236 # a0007f14 <__psram_limit+0xf7c07f14>
62fc1124:	bf8d                	j	62fc1096 <qcc74x_efuse_get_device_info+0xa8>
62fc1126:	a00087b7          	lui	a5,0xa0008
62fc112a:	f1878793          	addi	a5,a5,-232 # a0007f18 <__psram_limit+0xf7c07f18>
62fc112e:	b7a5                	j	62fc1096 <qcc74x_efuse_get_device_info+0xa8>
62fc1130:	a00087b7          	lui	a5,0xa0008
62fc1134:	f3478793          	addi	a5,a5,-204 # a0007f34 <__psram_limit+0xf7c07f34>
62fc1138:	bfb9                	j	62fc1096 <qcc74x_efuse_get_device_info+0xa8>
62fc113a:	a00087b7          	lui	a5,0xa0008
62fc113e:	f2078793          	addi	a5,a5,-224 # a0007f20 <__psram_limit+0xf7c07f20>
62fc1142:	bf85                	j	62fc10b2 <qcc74x_efuse_get_device_info+0xc4>
62fc1144:	a00087b7          	lui	a5,0xa0008
62fc1148:	f2878793          	addi	a5,a5,-216 # a0007f28 <__psram_limit+0xf7c07f28>
62fc114c:	b79d                	j	62fc10b2 <qcc74x_efuse_get_device_info+0xc4>
62fc114e:	a00087b7          	lui	a5,0xa0008
62fc1152:	f3078793          	addi	a5,a5,-208 # a0007f30 <__psram_limit+0xf7c07f30>
62fc1156:	bfb1                	j	62fc10b2 <qcc74x_efuse_get_device_info+0xc4>
62fc1158:	21b00693          	li	a3,539
62fc115c:	04f6e663          	bltu	a3,a5,62fc11a8 <qcc74x_efuse_get_device_info+0x1ba>
62fc1160:	e2078413          	addi	s0,a5,-480
62fc1164:	06400793          	li	a5,100
62fc1168:	02f40433          	mul	s0,s0,a5
62fc116c:	03c00593          	li	a1,60
62fc1170:	0479                	addi	s0,s0,30
62fc1172:	02b44433          	div	s0,s0,a1
62fc1176:	0ff47593          	zext.b	a1,s0
62fc117a:	3589                	jal	62fc0fbc <qcc74x_efuse_print_number>
62fc117c:	a00085b7          	lui	a1,0xa0008
62fc1180:	4615                	li	a2,5
62fc1182:	f3c58593          	addi	a1,a1,-196 # a0007f3c <__psram_limit+0xf7c07f3c>
62fc1186:	84aa                	mv	s1,a0
62fc1188:	a78ff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc118c:	06400593          	li	a1,100
62fc1190:	8d81                	sub	a1,a1,s0
62fc1192:	0ff5f593          	zext.b	a1,a1
62fc1196:	00448513          	addi	a0,s1,4
62fc119a:	350d                	jal	62fc0fbc <qcc74x_efuse_print_number>
62fc119c:	a00085b7          	lui	a1,0xa0008
62fc11a0:	4611                	li	a2,4
62fc11a2:	f4458593          	addi	a1,a1,-188 # a0007f44 <__psram_limit+0xf7c07f44>
62fc11a6:	b7a5                	j	62fc110e <qcc74x_efuse_get_device_info+0x120>
62fc11a8:	21c00693          	li	a3,540
62fc11ac:	00d79863          	bne	a5,a3,62fc11bc <qcc74x_efuse_get_device_info+0x1ce>
62fc11b0:	a00085b7          	lui	a1,0xa0008
62fc11b4:	460d                	li	a2,3
62fc11b6:	f4858593          	addi	a1,a1,-184 # a0007f48 <__psram_limit+0xf7c07f48>
62fc11ba:	bf91                	j	62fc110e <qcc74x_efuse_get_device_info+0x120>
62fc11bc:	26100693          	li	a3,609
62fc11c0:	04f6e763          	bltu	a3,a5,62fc120e <qcc74x_efuse_get_device_info+0x220>
62fc11c4:	de478413          	addi	s0,a5,-540
62fc11c8:	06400793          	li	a5,100
62fc11cc:	02f40433          	mul	s0,s0,a5
62fc11d0:	04600793          	li	a5,70
62fc11d4:	06400593          	li	a1,100
62fc11d8:	02340413          	addi	s0,s0,35
62fc11dc:	02f44433          	div	s0,s0,a5
62fc11e0:	8d81                	sub	a1,a1,s0
62fc11e2:	0ff5f593          	zext.b	a1,a1
62fc11e6:	3bd9                	jal	62fc0fbc <qcc74x_efuse_print_number>
62fc11e8:	a00085b7          	lui	a1,0xa0008
62fc11ec:	4615                	li	a2,5
62fc11ee:	f3c58593          	addi	a1,a1,-196 # a0007f3c <__psram_limit+0xf7c07f3c>
62fc11f2:	84aa                	mv	s1,a0
62fc11f4:	a0cff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc11f8:	0ff47593          	zext.b	a1,s0
62fc11fc:	00448513          	addi	a0,s1,4
62fc1200:	3b75                	jal	62fc0fbc <qcc74x_efuse_print_number>
62fc1202:	a00085b7          	lui	a1,0xa0008
62fc1206:	4611                	li	a2,4
62fc1208:	f4c58593          	addi	a1,a1,-180 # a0007f4c <__psram_limit+0xf7c07f4c>
62fc120c:	b709                	j	62fc110e <qcc74x_efuse_get_device_info+0x120>
62fc120e:	a00085b7          	lui	a1,0xa0008
62fc1212:	460d                	li	a2,3
62fc1214:	f5058593          	addi	a1,a1,-176 # a0007f50 <__psram_limit+0xf7c07f50>
62fc1218:	bddd                	j	62fc110e <qcc74x_efuse_get_device_info+0x120>
	...

62fc121c <flash_cfg_GD_LQ64E>:
62fc121c:	0104 3d01 9966 03ff 009f e9b7 c804 0100     ...=f...........
62fc122c:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc123c:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc124c:	0102 01ab 3505 0000 0101 0000 ff38 ffa0     .....5......8...
62fc125c:	0377 4002 0377 f002 0bb8 0fa0 0fa0 0005     w..@w...........
62fc126c:	fde8 0003                                   ....

62fc1270 <flash_cfg_GD_Q64E>:
62fc1270:	0104 3f01 9966 03ff 009f e9b7 c804 0100     ...?f...........
62fc1280:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc1290:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc12a0:	0101 01ab 3505 0000 3101 0000 ff38 ff20     .....5...1..8. .
62fc12b0:	0377 4002 0377 f002 012c 04b0 04b0 0005     w..@w...,.......
62fc12c0:	80e8 0014                                   ....

62fc12c4 <flash_cfg_Winb_16JV>:
62fc12c4:	0104 3d01 9966 03ff 009f e9b7 ef04 0100     ...=f...........
62fc12d4:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc12e4:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc12f4:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc1304:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc1314:	80e8 0014                                   ....

62fc1318 <flash_cfg_Winb_64JV>:
62fc1318:	0004 3f01 9966 03ff 009f e9b7 ef04 0100     ...?f...........
62fc1328:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc1338:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1348:	0101 01ab 3505 0000 3101 0000 ff38 ffff     .....5...1..8...
62fc1358:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc1368:	80e8 0003                                   ....

62fc136c <flash_cfg_Winb_256FV>:
62fc136c:	0124 3f01 9966 03ff 009f e9b7 ef04 0100     $..?f...........
62fc137c:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc138c:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc139c:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc13ac:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc13bc:	80e8 0003                                   ....

62fc13c0 <flash_cfg_Mxic_25U256>:
62fc13c0:	0124 3f01 9966 03ff 009f e9b7 c204 0100     $..?f...........
62fc13d0:	20c7 d852 0206 0238 010b 010b 013b 00bb     . R...8.....;...
62fc13e0:	016b 02eb 02eb 5002 0000 0100 0006 0100     k......P........
62fc13f0:	0102 01ab 1505 0000 0101 0000 ff38 ffa5     ............8...
62fc1400:	00c0 0200 00c0 1000 0190 03e8 07d0 0005     ................
62fc1410:	80e8 0014                                   ....

62fc1414 <flash_cfg_Puya_Q32H>:
62fc1414:	0104 3f01 9966 03ff 009f e9b7 8504 0100     ...?f...........
62fc1424:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc1434:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1444:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc1454:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc1464:	80e8 0008                                   ....

62fc1468 <flash_infos>:
62fc1468:	40ef 0017 0000 0000 1318 62fc 40ef 0019     .@.........b.@..
62fc1478:	0000 0000 136c 62fc 60ef 0017 0000 0000     ....l..b.`......
62fc1488:	1318 62fc 70ef 0015 0000 0000 12c4 62fc     ...b.p.........b
62fc1498:	40c8 0017 0000 0000 1270 62fc 60c8 0017     .@......p..b.`..
62fc14a8:	0000 0000 121c 62fc 60c8 0018 0000 0000     .......b.`......
62fc14b8:	121c 62fc 65c8 0018 0000 0000 1270 62fc     ...b.e......p..b
62fc14c8:	345e 0015 0000 0000 1270 62fc 405e 0015     ^4......p..b^@..
62fc14d8:	0000 0000 1270 62fc 405e 0016 0000 0000     ....p..b^@......
62fc14e8:	1270 62fc 405e 0017 0000 0000 1270 62fc     p..b^@......p..b
62fc14f8:	405e 0018 0000 0000 1270 62fc 605e 0015     ^@......p..b^`..
62fc1508:	0000 0000 1270 62fc 25c2 0039 0000 0000     ....p..b.%9.....
62fc1518:	13c0 62fc 4020 0014 0000 0000 12c4 62fc     ...b @.........b
62fc1528:	4020 0015 0000 0000 12c4 62fc 4020 0016      @.........b @..
62fc1538:	0000 0000 12c4 62fc 4020 0017 0000 0000     .......b @......
62fc1548:	12c4 62fc 4020 0018 0000 0000 12c4 62fc     ...b @.........b
62fc1558:	5020 0016 0000 0000 12c4 62fc 4220 0017      P.........b B..
62fc1568:	0000 0000 12c4 62fc 400b 0017 0000 0000     .......b.@......
62fc1578:	121c 62fc 400b 0018 0000 0000 121c 62fc     ...b.@.........b
62fc1588:	6085 0017 0000 0000 1414 62fc 6085 0018     .`.........b.`..
62fc1598:	0000 0000 1414 62fc 2085 0014 0000 0000     .......b. ......
62fc15a8:	121c 62fc 2085 0015 0000 0000 121c 62fc     ...b. .........b
62fc15b8:	2085 0016 0000 0000 121c 62fc 2085 0017     . .........b. ..
62fc15c8:	0000 0000 121c 62fc 2085 0018 0000 0000     .......b. ......
62fc15d8:	121c 62fc 2085 0019 0000 0000 121c 62fc     ...b. .........b
62fc15e8:	40a1 0015 0000 0000 12c4 62fc 40a1 0016     .@.........b.@..
62fc15f8:	0000 0000 121c 62fc 40a1 0017 0000 0000     .......b.@......
62fc1608:	12c4 62fc 40a1 0018 0000 0000 12c4 62fc     ...b.@.........b
62fc1618:	28a1 0018 0000 0000 12c4 62fc 60c4 0016     .(.........b.`..
62fc1628:	0000 0000 12c4 62fc 60c4 0015 0000 0000     .......b.`......
62fc1638:	12c4 62fc 60c4 0017 0000 0000 12c4 62fc     ...b.`.........b
62fc1648:	6125 0016 0000 0000 121c 62fc 65c8 0017     %a.........b.e..
62fc1658:	0000 0000 1270 62fc 60c4 0014 0000 0000     ....p..b.`......
62fc1668:	12c4 62fc                                   ...b

62fc166c <Clock_Get_AUPLL_Output>:
62fc166c:	1101                	addi	sp,sp,-32
62fc166e:	ca26                	sw	s1,20(sp)
62fc1670:	000107a3          	sb	zero,15(sp)
62fc1674:	84aa                	mv	s1,a0
62fc1676:	200087b7          	lui	a5,0x20008
62fc167a:	00f10513          	addi	a0,sp,15
62fc167e:	cc22                	sw	s0,24(sp)
62fc1680:	ce06                	sw	ra,28(sp)
62fc1682:	7687a403          	lw	s0,1896(a5) # 20008768 <remain_wifi_ram+0x1ffe8768>
62fc1686:	bf8ff0ef          	jal	ra,62fc0a7e <HBN_Get_Xtal_Type>
62fc168a:	e121                	bnez	a0,62fc16ca <Clock_Get_AUPLL_Output+0x5e>
62fc168c:	00f14703          	lbu	a4,15(sp)
62fc1690:	000807b7          	lui	a5,0x80
62fc1694:	17fd                	addi	a5,a5,-1
62fc1696:	4691                	li	a3,4
62fc1698:	8fe1                	and	a5,a5,s0
62fc169a:	0cd70463          	beq	a4,a3,62fc1762 <Clock_Get_AUPLL_Output+0xf6>
62fc169e:	02e6e063          	bltu	a3,a4,62fc16be <Clock_Get_AUPLL_Output+0x52>
62fc16a2:	4689                	li	a3,2
62fc16a4:	0cd70763          	beq	a4,a3,62fc1772 <Clock_Get_AUPLL_Output+0x106>
62fc16a8:	468d                	li	a3,3
62fc16aa:	0ad70363          	beq	a4,a3,62fc1750 <Clock_Get_AUPLL_Output+0xe4>
62fc16ae:	4685                	li	a3,1
62fc16b0:	00d70f63          	beq	a4,a3,62fc16ce <Clock_Get_AUPLL_Output+0x62>
62fc16b4:	40f2                	lw	ra,28(sp)
62fc16b6:	4462                	lw	s0,24(sp)
62fc16b8:	44d2                	lw	s1,20(sp)
62fc16ba:	6105                	addi	sp,sp,32
62fc16bc:	8082                	ret
62fc16be:	4695                	li	a3,5
62fc16c0:	0ad70563          	beq	a4,a3,62fc176a <Clock_Get_AUPLL_Output+0xfe>
62fc16c4:	4699                	li	a3,6
62fc16c6:	0ad70663          	beq	a4,a3,62fc1772 <Clock_Get_AUPLL_Output+0x106>
62fc16ca:	4501                	li	a0,0
62fc16cc:	b7e5                	j	62fc16b4 <Clock_Get_AUPLL_Output+0x48>
62fc16ce:	6719                	lui	a4,0x6
62fc16d0:	dc070713          	addi	a4,a4,-576 # 5dc0 <HeapMinSize+0x4dc0>
62fc16d4:	02e787b3          	mul	a5,a5,a4
62fc16d8:	1f400713          	li	a4,500
62fc16dc:	83ad                	srli	a5,a5,0xb
62fc16de:	02e787b3          	mul	a5,a5,a4
62fc16e2:	e2bbf737          	lui	a4,0xe2bbf
62fc16e6:	f4070713          	addi	a4,a4,-192 # e2bbef40 <__psram_limit+0x3a7bef40>
62fc16ea:	000f46b7          	lui	a3,0xf4
62fc16ee:	24068693          	addi	a3,a3,576 # f4240 <remain_wifi_ram+0xd4240>
62fc16f2:	973e                	add	a4,a4,a5
62fc16f4:	08e6f363          	bgeu	a3,a4,62fc177a <Clock_Get_AUPLL_Output+0x10e>
62fc16f8:	e51e5737          	lui	a4,0xe51e5
62fc16fc:	94070713          	addi	a4,a4,-1728 # e51e4940 <__psram_limit+0x3cde4940>
62fc1700:	973e                	add	a4,a4,a5
62fc1702:	06e6ff63          	bgeu	a3,a4,62fc1780 <Clock_Get_AUPLL_Output+0x114>
62fc1706:	e837c737          	lui	a4,0xe837c
62fc170a:	e4070713          	addi	a4,a4,-448 # e837be40 <__psram_limit+0x3ff7be40>
62fc170e:	001e86b7          	lui	a3,0x1e8
62fc1712:	973e                	add	a4,a4,a5
62fc1714:	48068693          	addi	a3,a3,1152 # 1e8480 <remain_wifi_ram+0x1c8480>
62fc1718:	06e6f963          	bgeu	a3,a4,62fc178a <Clock_Get_AUPLL_Output+0x11e>
62fc171c:	e92be737          	lui	a4,0xe92be
62fc1720:	24070713          	addi	a4,a4,576 # e92be240 <__psram_limit+0x40ebe240>
62fc1724:	97ba                	add	a5,a5,a4
62fc1726:	4501                	li	a0,0
62fc1728:	f8f6e6e3          	bltu	a3,a5,62fc16b4 <Clock_Get_AUPLL_Output+0x48>
62fc172c:	16e36537          	lui	a0,0x16e36
62fc1730:	4791                	li	a5,4
62fc1732:	06f48c63          	beq	s1,a5,62fc17aa <Clock_Get_AUPLL_Output+0x13e>
62fc1736:	0497ef63          	bltu	a5,s1,62fc1794 <Clock_Get_AUPLL_Output+0x128>
62fc173a:	4789                	li	a5,2
62fc173c:	06f48263          	beq	s1,a5,62fc17a0 <Clock_Get_AUPLL_Output+0x134>
62fc1740:	478d                	li	a5,3
62fc1742:	04f48c63          	beq	s1,a5,62fc179a <Clock_Get_AUPLL_Output+0x12e>
62fc1746:	4785                	li	a5,1
62fc1748:	f6f496e3          	bne	s1,a5,62fc16b4 <Clock_Get_AUPLL_Output+0x48>
62fc174c:	8105                	srli	a0,a0,0x1
62fc174e:	b79d                	j	62fc16b4 <Clock_Get_AUPLL_Output+0x48>
62fc1750:	6725                	lui	a4,0x9
62fc1752:	60070713          	addi	a4,a4,1536 # 9600 <wifi_ram_max_size+0x1600>
62fc1756:	02e787b3          	mul	a5,a5,a4
62fc175a:	0fa00713          	li	a4,250
62fc175e:	83ad                	srli	a5,a5,0xb
62fc1760:	bfbd                	j	62fc16de <Clock_Get_AUPLL_Output+0x72>
62fc1762:	6729                	lui	a4,0xa
62fc1764:	c4070713          	addi	a4,a4,-960 # 9c40 <wifi_ram_max_size+0x1c40>
62fc1768:	b7fd                	j	62fc1756 <Clock_Get_AUPLL_Output+0xea>
62fc176a:	6719                	lui	a4,0x6
62fc176c:	59070713          	addi	a4,a4,1424 # 6590 <HeapMinSize+0x5590>
62fc1770:	b795                	j	62fc16d4 <Clock_Get_AUPLL_Output+0x68>
62fc1772:	6721                	lui	a4,0x8
62fc1774:	d0070713          	addi	a4,a4,-768 # 7d00 <HeapMinSize+0x6d00>
62fc1778:	bff9                	j	62fc1756 <Clock_Get_AUPLL_Output+0xea>
62fc177a:	1d4c0537          	lui	a0,0x1d4c0
62fc177e:	bf4d                	j	62fc1730 <Clock_Get_AUPLL_Output+0xc4>
62fc1780:	1aea9537          	lui	a0,0x1aea9
62fc1784:	06050513          	addi	a0,a0,96 # 1aea9060 <remain_wifi_ram+0x1ae89060>
62fc1788:	b765                	j	62fc1730 <Clock_Get_AUPLL_Output+0xc4>
62fc178a:	17d78537          	lui	a0,0x17d78
62fc178e:	40050513          	addi	a0,a0,1024 # 17d78400 <remain_wifi_ram+0x17d58400>
62fc1792:	bf79                	j	62fc1730 <Clock_Get_AUPLL_Output+0xc4>
62fc1794:	4795                	li	a5,5
62fc1796:	00f49c63          	bne	s1,a5,62fc17ae <Clock_Get_AUPLL_Output+0x142>
62fc179a:	02955533          	divu	a0,a0,s1
62fc179e:	bf19                	j	62fc16b4 <Clock_Get_AUPLL_Output+0x48>
62fc17a0:	0506                	slli	a0,a0,0x1
62fc17a2:	4795                	li	a5,5
62fc17a4:	02f55533          	divu	a0,a0,a5
62fc17a8:	b731                	j	62fc16b4 <Clock_Get_AUPLL_Output+0x48>
62fc17aa:	8109                	srli	a0,a0,0x2
62fc17ac:	b721                	j	62fc16b4 <Clock_Get_AUPLL_Output+0x48>
62fc17ae:	4799                	li	a5,6
62fc17b0:	bfd5                	j	62fc17a4 <Clock_Get_AUPLL_Output+0x138>

62fc17b2 <Clock_Get_Audio_PLL_Output>:
62fc17b2:	1141                	addi	sp,sp,-16
62fc17b4:	200087b7          	lui	a5,0x20008
62fc17b8:	c422                	sw	s0,8(sp)
62fc17ba:	7547a403          	lw	s0,1876(a5) # 20008754 <remain_wifi_ram+0x1ffe8754>
62fc17be:	4501                	li	a0,0
62fc17c0:	c606                	sw	ra,12(sp)
62fc17c2:	07f47413          	andi	s0,s0,127
62fc17c6:	355d                	jal	62fc166c <Clock_Get_AUPLL_Output>
62fc17c8:	02855533          	divu	a0,a0,s0
62fc17cc:	40b2                	lw	ra,12(sp)
62fc17ce:	4422                	lw	s0,8(sp)
62fc17d0:	0141                	addi	sp,sp,16
62fc17d2:	8082                	ret

62fc17d4 <Clock_160M_Clk_Mux_Output>:
62fc17d4:	c10d                	beqz	a0,62fc17f6 <Clock_160M_Clk_Mux_Output+0x22>
62fc17d6:	4785                	li	a5,1
62fc17d8:	00f51463          	bne	a0,a5,62fc17e0 <Clock_160M_Clk_Mux_Output+0xc>
62fc17dc:	450d                	li	a0,3
62fc17de:	b579                	j	62fc166c <Clock_Get_AUPLL_Output>
62fc17e0:	4789                	li	a5,2
62fc17e2:	00f51463          	bne	a0,a5,62fc17ea <Clock_160M_Clk_Mux_Output+0x16>
62fc17e6:	4505                	li	a0,1
62fc17e8:	bfdd                	j	62fc17de <Clock_160M_Clk_Mux_Output+0xa>
62fc17ea:	470d                	li	a4,3
62fc17ec:	4781                	li	a5,0
62fc17ee:	00e51863          	bne	a0,a4,62fc17fe <Clock_160M_Clk_Mux_Output+0x2a>
62fc17f2:	4509                	li	a0,2
62fc17f4:	b7ed                	j	62fc17de <Clock_160M_Clk_Mux_Output+0xa>
62fc17f6:	098977b7          	lui	a5,0x9897
62fc17fa:	80078793          	addi	a5,a5,-2048 # 9896800 <remain_wifi_ram+0x9876800>
62fc17fe:	853e                	mv	a0,a5
62fc1800:	8082                	ret

62fc1802 <Clock_Xtal_Output>:
62fc1802:	1101                	addi	sp,sp,-32
62fc1804:	00f10513          	addi	a0,sp,15
62fc1808:	ce06                	sw	ra,28(sp)
62fc180a:	000107a3          	sb	zero,15(sp)
62fc180e:	a70ff0ef          	jal	ra,62fc0a7e <HBN_Get_Xtal_Type>
62fc1812:	ed19                	bnez	a0,62fc1830 <Clock_Xtal_Output+0x2e>
62fc1814:	00f14703          	lbu	a4,15(sp)
62fc1818:	4799                	li	a5,6
62fc181a:	00e7e863          	bltu	a5,a4,62fc182a <Clock_Xtal_Output+0x28>
62fc181e:	a00087b7          	lui	a5,0xa0008
62fc1822:	ed478793          	addi	a5,a5,-300 # a0007ed4 <__psram_limit+0xf7c07ed4>
62fc1826:	44e7c50b          	lrw	a0,a5,a4,2
62fc182a:	40f2                	lw	ra,28(sp)
62fc182c:	6105                	addi	sp,sp,32
62fc182e:	8082                	ret
62fc1830:	02626537          	lui	a0,0x2626
62fc1834:	a0050513          	addi	a0,a0,-1536 # 2625a00 <remain_wifi_ram+0x2605a00>
62fc1838:	bfcd                	j	62fc182a <Clock_Xtal_Output+0x28>

62fc183a <Clock_F32k_Mux_Output>:
62fc183a:	200007b7          	lui	a5,0x20000
62fc183e:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
62fc1842:	4709                	li	a4,2
62fc1844:	02a77e63          	bgeu	a4,a0,62fc1880 <Clock_F32k_Mux_Output+0x46>
62fc1848:	6505                	lui	a0,0x1
62fc184a:	8d7d                	and	a0,a0,a5
62fc184c:	cd05                	beqz	a0,62fc1884 <Clock_F32k_Mux_Output+0x4a>
62fc184e:	1141                	addi	sp,sp,-16
62fc1850:	c422                	sw	s0,8(sp)
62fc1852:	c606                	sw	ra,12(sp)
62fc1854:	7ff7f413          	andi	s0,a5,2047
62fc1858:	75c7b78b          	extu	a5,a5,29,28
62fc185c:	eb99                	bnez	a5,62fc1872 <Clock_F32k_Mux_Output+0x38>
62fc185e:	01e85537          	lui	a0,0x1e85
62fc1862:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc1866:	02855533          	divu	a0,a0,s0
62fc186a:	40b2                	lw	ra,12(sp)
62fc186c:	4422                	lw	s0,8(sp)
62fc186e:	0141                	addi	sp,sp,16
62fc1870:	8082                	ret
62fc1872:	4705                	li	a4,1
62fc1874:	00e79463          	bne	a5,a4,62fc187c <Clock_F32k_Mux_Output+0x42>
62fc1878:	3769                	jal	62fc1802 <Clock_Xtal_Output>
62fc187a:	b7f5                	j	62fc1866 <Clock_F32k_Mux_Output+0x2c>
62fc187c:	3f1d                	jal	62fc17b2 <Clock_Get_Audio_PLL_Output>
62fc187e:	b7e5                	j	62fc1866 <Clock_F32k_Mux_Output+0x2c>
62fc1880:	6521                	lui	a0,0x8
62fc1882:	8082                	ret
62fc1884:	8082                	ret

62fc1886 <Clock_MCU_Root_Clk_Mux_Output>:
62fc1886:	e519                	bnez	a0,62fc1894 <Clock_MCU_Root_Clk_Mux_Output+0xe>
62fc1888:	2000f7b7          	lui	a5,0x2000f
62fc188c:	5b9c                	lw	a5,48(a5)
62fc188e:	8b85                	andi	a5,a5,1
62fc1890:	cb8d                	beqz	a5,62fc18c2 <Clock_MCU_Root_Clk_Mux_Output+0x3c>
62fc1892:	bf85                	j	62fc1802 <Clock_Xtal_Output>
62fc1894:	4685                	li	a3,1
62fc1896:	4781                	li	a5,0
62fc1898:	02d51363          	bne	a0,a3,62fc18be <Clock_MCU_Root_Clk_Mux_Output+0x38>
62fc189c:	2000e7b7          	lui	a5,0x2000e
62fc18a0:	1147a783          	lw	a5,276(a5) # 2000e114 <remain_wifi_ram+0x1ffee114>
62fc18a4:	1447b78b          	extu	a5,a5,5,4
62fc18a8:	e391                	bnez	a5,62fc18ac <Clock_MCU_Root_Clk_Mux_Output+0x26>
62fc18aa:	b3c9                	j	62fc166c <Clock_Get_AUPLL_Output>
62fc18ac:	00a79463          	bne	a5,a0,62fc18b4 <Clock_MCU_Root_Clk_Mux_Output+0x2e>
62fc18b0:	4501                	li	a0,0
62fc18b2:	bfe5                	j	62fc18aa <Clock_MCU_Root_Clk_Mux_Output+0x24>
62fc18b4:	4709                	li	a4,2
62fc18b6:	00e78b63          	beq	a5,a4,62fc18cc <Clock_MCU_Root_Clk_Mux_Output+0x46>
62fc18ba:	1312d7b7          	lui	a5,0x1312d
62fc18be:	853e                	mv	a0,a5
62fc18c0:	8082                	ret
62fc18c2:	01e857b7          	lui	a5,0x1e85
62fc18c6:	80078793          	addi	a5,a5,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc18ca:	bfd5                	j	62fc18be <Clock_MCU_Root_Clk_Mux_Output+0x38>
62fc18cc:	0e4e27b7          	lui	a5,0xe4e2
62fc18d0:	c0078793          	addi	a5,a5,-1024 # e4e1c00 <remain_wifi_ram+0xe4c1c00>
62fc18d4:	b7ed                	j	62fc18be <Clock_MCU_Root_Clk_Mux_Output+0x38>

62fc18d6 <Clock_System_Clock_Get>:
62fc18d6:	4791                	li	a5,4
62fc18d8:	06f50a63          	beq	a0,a5,62fc194c <Clock_System_Clock_Get+0x76>
62fc18dc:	00a7ef63          	bltu	a5,a0,62fc18fa <Clock_System_Clock_Get+0x24>
62fc18e0:	1141                	addi	sp,sp,-16
62fc18e2:	c606                	sw	ra,12(sp)
62fc18e4:	4785                	li	a5,1
62fc18e6:	02f50a63          	beq	a0,a5,62fc191a <Clock_System_Clock_Get+0x44>
62fc18ea:	478d                	li	a5,3
62fc18ec:	04f50763          	beq	a0,a5,62fc193a <Clock_System_Clock_Get+0x64>
62fc18f0:	cd09                	beqz	a0,62fc190a <Clock_System_Clock_Get+0x34>
62fc18f2:	4501                	li	a0,0
62fc18f4:	40b2                	lw	ra,12(sp)
62fc18f6:	0141                	addi	sp,sp,16
62fc18f8:	8082                	ret
62fc18fa:	4795                	li	a5,5
62fc18fc:	04f50e63          	beq	a0,a5,62fc1958 <Clock_System_Clock_Get+0x82>
62fc1900:	4799                	li	a5,6
62fc1902:	06f50063          	beq	a0,a5,62fc1962 <Clock_System_Clock_Get+0x8c>
62fc1906:	4501                	li	a0,0
62fc1908:	8082                	ret
62fc190a:	2000f7b7          	lui	a5,0x2000f
62fc190e:	5b88                	lw	a0,48(a5)
62fc1910:	40b2                	lw	ra,12(sp)
62fc1912:	0415350b          	extu	a0,a0,1,1
62fc1916:	0141                	addi	sp,sp,16
62fc1918:	b7bd                	j	62fc1886 <Clock_MCU_Root_Clk_Mux_Output>
62fc191a:	2000f7b7          	lui	a5,0x2000f
62fc191e:	5b88                	lw	a0,48(a5)
62fc1920:	0415350b          	extu	a0,a0,1,1
62fc1924:	378d                	jal	62fc1886 <Clock_MCU_Root_Clk_Mux_Output>
62fc1926:	200007b7          	lui	a5,0x20000
62fc192a:	0907a783          	lw	a5,144(a5) # 20000090 <remain_wifi_ram+0x1ffe0090>
62fc192e:	3c87b78b          	extu	a5,a5,15,8
62fc1932:	0785                	addi	a5,a5,1
62fc1934:	02f55533          	divu	a0,a0,a5
62fc1938:	bf75                	j	62fc18f4 <Clock_System_Clock_Get+0x1e>
62fc193a:	4505                	li	a0,1
62fc193c:	3f69                	jal	62fc18d6 <Clock_System_Clock_Get>
62fc193e:	200007b7          	lui	a5,0x20000
62fc1942:	0907a783          	lw	a5,144(a5) # 20000090 <remain_wifi_ram+0x1ffe0090>
62fc1946:	5d07b78b          	extu	a5,a5,23,16
62fc194a:	b7e5                	j	62fc1932 <Clock_System_Clock_Get+0x5c>
62fc194c:	2000f7b7          	lui	a5,0x2000f
62fc1950:	5b88                	lw	a0,48(a5)
62fc1952:	1035350b          	extu	a0,a0,4,3
62fc1956:	b5d5                	j	62fc183a <Clock_F32k_Mux_Output>
62fc1958:	2000f7b7          	lui	a5,0x2000f
62fc195c:	5b9c                	lw	a5,48(a5)
62fc195e:	8b85                	andi	a5,a5,1
62fc1960:	c391                	beqz	a5,62fc1964 <Clock_System_Clock_Get+0x8e>
62fc1962:	b545                	j	62fc1802 <Clock_Xtal_Output>
62fc1964:	01e85537          	lui	a0,0x1e85
62fc1968:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc196c:	8082                	ret

62fc196e <CPU_Set_MTimer_CLK>:
62fc196e:	200097b7          	lui	a5,0x20009
62fc1972:	4bd8                	lw	a4,20(a5)
62fc1974:	e00006b7          	lui	a3,0xe0000
62fc1978:	16fd                	addi	a3,a3,-1
62fc197a:	8f75                	and	a4,a4,a3
62fc197c:	05f6                	slli	a1,a1,0x1d
62fc197e:	8dd9                	or	a1,a1,a4
62fc1980:	cbcc                	sw	a1,20(a5)
62fc1982:	4bd4                	lw	a3,20(a5)
62fc1984:	800005b7          	lui	a1,0x80000
62fc1988:	fff5c713          	not	a4,a1
62fc198c:	8ef9                	and	a3,a3,a4
62fc198e:	cbd4                	sw	a3,20(a5)
62fc1990:	4bd4                	lw	a3,20(a5)
62fc1992:	c006f693          	andi	a3,a3,-1024
62fc1996:	8e55                	or	a2,a2,a3
62fc1998:	cbd0                	sw	a2,20(a5)
62fc199a:	4bdc                	lw	a5,20(a5)
62fc199c:	8f7d                	and	a4,a4,a5
62fc199e:	c119                	beqz	a0,62fc19a4 <CPU_Set_MTimer_CLK+0x36>
62fc19a0:	00b7e733          	or	a4,a5,a1
62fc19a4:	200097b7          	lui	a5,0x20009
62fc19a8:	cbd8                	sw	a4,20(a5)
62fc19aa:	4501                	li	a0,0
62fc19ac:	8082                	ret

62fc19ae <system_clock_init>:
62fc19ae:	1141                	addi	sp,sp,-16
62fc19b0:	458d                	li	a1,3
62fc19b2:	4511                	li	a0,4
62fc19b4:	c606                	sw	ra,12(sp)
62fc19b6:	864ff0ef          	jal	ra,62fc0a1a <GLB_Power_On_XTAL_And_PLL_CLK>
62fc19ba:	4515                	li	a0,5
62fc19bc:	886ff0ef          	jal	ra,62fc0a42 <GLB_Set_MCU_System_CLK>
62fc19c0:	4505                	li	a0,1
62fc19c2:	8d0ff0ef          	jal	ra,62fc0a92 <HBN_Set_MCU_XCLK_Sel>
62fc19c6:	4515                	li	a0,5
62fc19c8:	3739                	jal	62fc18d6 <Clock_System_Clock_Get>
62fc19ca:	000f4637          	lui	a2,0xf4
62fc19ce:	24060613          	addi	a2,a2,576 # f4240 <remain_wifi_ram+0xd4240>
62fc19d2:	02c55633          	divu	a2,a0,a2
62fc19d6:	40b2                	lw	ra,12(sp)
62fc19d8:	4581                	li	a1,0
62fc19da:	4505                	li	a0,1
62fc19dc:	0141                	addi	sp,sp,16
62fc19de:	167d                	addi	a2,a2,-1
62fc19e0:	3c06360b          	extu	a2,a2,15,0
62fc19e4:	b769                	j	62fc196e <CPU_Set_MTimer_CLK>
	...
