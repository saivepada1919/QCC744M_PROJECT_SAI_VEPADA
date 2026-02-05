
/home/sai/QCCSDK-QCC74x/examples/peripherals/i2c/i2c_rtc_module/build/build_out/i2c_10_bit_qcc743.elf:     file format elf32-littleriscv


Disassembly of section .init:

a0000000 <__start>:
a0000000:	c2fc2197          	auipc	gp,0xc2fc2
a0000004:	37818193          	addi	gp,gp,888 # 62fc2378 <__global_pointer$>
a0000008:	30047073          	csrci	mstatus,8
a000000c:	20056537          	lui	a0,0x20056
a0000010:	0b052583          	lw	a1,176(a0) # 200560b0 <remain_wifi_ram+0x200360b0>
a0000014:	40280537          	lui	a0,0x40280
a0000018:	7641                	lui	a2,0xffff0
a000001a:	8df1                	and	a1,a1,a2
a000001c:	00b50363          	beq	a0,a1,a0000022 <__start+0x22>
a0000020:	a001                	j	a0000020 <__start+0x20>
a0000022:	00007517          	auipc	a0,0x7
a0000026:	69e50513          	addi	a0,a0,1694 # a00076c0 <trap>
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
a000004c:	e8810113          	addi	sp,sp,-376 # 62fc2ed0 <adc>
a0000050:	34011073          	csrw	mscratch,sp
a0000054:	0af070ef          	jal	ra,a0007902 <SystemInit>
a0000058:	7a4070ef          	jal	ra,a00077fc <start_load>
a000005c:	26d070ef          	jal	ra,a0007ac8 <System_Post_Init>
a0000060:	0c6040ef          	jal	ra,a0004126 <main>

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
a0000d12:	b0c70713          	addi	a4,a4,-1268 # a0009b0c <__psram_limit+0xf7c09b0c>
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
a0000f4e:	b0c70713          	addi	a4,a4,-1268 # a0009b0c <__psram_limit+0xf7c09b0c>
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
a00010ba:	b0c68693          	addi	a3,a3,-1268 # a0009b0c <__psram_limit+0xf7c09b0c>
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
a00012ac:	b0c70713          	addi	a4,a4,-1268 # a0009b0c <__psram_limit+0xf7c09b0c>
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
a0001412:	b0c68693          	addi	a3,a3,-1268 # a0009b0c <__psram_limit+0xf7c09b0c>
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
a0001632:	b0c70713          	addi	a4,a4,-1268 # a0009b0c <__psram_limit+0xf7c09b0c>
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
a0001770:	b0c70713          	addi	a4,a4,-1268 # a0009b0c <__psram_limit+0xf7c09b0c>
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
a0001948:	b0c70713          	addi	a4,a4,-1268 # a0009b0c <__psram_limit+0xf7c09b0c>
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
a0002130:	5e5010ef          	jal	ra,a0003f14 <__clzsi2>
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
a000218c:	589010ef          	jal	ra,a0003f14 <__clzsi2>
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
a00023b6:	35f010ef          	jal	ra,a0003f14 <__clzsi2>
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
a00023e6:	32f010ef          	jal	ra,a0003f14 <__clzsi2>
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
a000246c:	a9450513          	addi	a0,a0,-1388 # a0009a94 <__psram_limit+0xf7c09a94>
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
a0002496:	27f010ef          	jal	ra,a0003f14 <__clzsi2>
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
a00024ca:	24b010ef          	jal	ra,a0003f14 <__clzsi2>
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
a0002c3e:	2d6010ef          	jal	ra,a0003f14 <__clzsi2>
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
a0002c6e:	2a6010ef          	jal	ra,a0003f14 <__clzsi2>
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
a0002cf2:	ad060613          	addi	a2,a2,-1328 # a0009ad0 <__psram_limit+0xf7c09ad0>
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
a0002d1c:	1f8010ef          	jal	ra,a0003f14 <__clzsi2>
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
a0002d4c:	1c8010ef          	jal	ra,a0003f14 <__clzsi2>
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
a0003896:	2dbd                	jal	a0003f14 <__clzsi2>
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
a00038f0:	2515                	jal	a0003f14 <__clzsi2>
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
a0003afc:	2921                	jal	a0003f14 <__clzsi2>
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
a0003b52:	26c9                	jal	a0003f14 <__clzsi2>
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
a0003ce2:	2c0d                	jal	a0003f14 <__clzsi2>
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
a0003d56:	2a7d                	jal	a0003f14 <__clzsi2>
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

a0003e56 <__extendsfdf2>:
a0003e56:	1141                	addi	sp,sp,-16
a0003e58:	e00507d3          	fmv.x.w	a5,fa0
a0003e5c:	c606                	sw	ra,12(sp)
a0003e5e:	c422                	sw	s0,8(sp)
a0003e60:	c226                	sw	s1,4(sp)
a0003e62:	c04a                	sw	s2,0(sp)
a0003e64:	00202773          	frrm	a4
a0003e68:	0177d493          	srli	s1,a5,0x17
a0003e6c:	0ff4f493          	zext.b	s1,s1
a0003e70:	00148713          	addi	a4,s1,1
a0003e74:	00979413          	slli	s0,a5,0x9
a0003e78:	0fe77713          	andi	a4,a4,254
a0003e7c:	8025                	srli	s0,s0,0x9
a0003e7e:	01f7d913          	srli	s2,a5,0x1f
a0003e82:	cb0d                	beqz	a4,a0003eb4 <__extendsfdf2+0x5e>
a0003e84:	38048513          	addi	a0,s1,896
a0003e88:	00345793          	srli	a5,s0,0x3
a0003e8c:	4481                	li	s1,0
a0003e8e:	0476                	slli	s0,s0,0x1d
a0003e90:	07b2                	slli	a5,a5,0xc
a0003e92:	0552                	slli	a0,a0,0x14
a0003e94:	83b1                	srli	a5,a5,0xc
a0003e96:	8fc9                	or	a5,a5,a0
a0003e98:	097e                	slli	s2,s2,0x1f
a0003e9a:	0127e733          	or	a4,a5,s2
a0003e9e:	8522                	mv	a0,s0
a0003ea0:	85ba                	mv	a1,a4
a0003ea2:	c099                	beqz	s1,a0003ea8 <__extendsfdf2+0x52>
a0003ea4:	0014a073          	csrs	fflags,s1
a0003ea8:	40b2                	lw	ra,12(sp)
a0003eaa:	4422                	lw	s0,8(sp)
a0003eac:	4492                	lw	s1,4(sp)
a0003eae:	4902                	lw	s2,0(sp)
a0003eb0:	0141                	addi	sp,sp,16
a0003eb2:	8082                	ret
a0003eb4:	e895                	bnez	s1,a0003ee8 <__extendsfdf2+0x92>
a0003eb6:	c829                	beqz	s0,a0003f08 <__extendsfdf2+0xb2>
a0003eb8:	8522                	mv	a0,s0
a0003eba:	28a9                	jal	a0003f14 <__clzsi2>
a0003ebc:	47a9                	li	a5,10
a0003ebe:	00a7cf63          	blt	a5,a0,a0003edc <__extendsfdf2+0x86>
a0003ec2:	47ad                	li	a5,11
a0003ec4:	8f89                	sub	a5,a5,a0
a0003ec6:	01550713          	addi	a4,a0,21
a0003eca:	00f457b3          	srl	a5,s0,a5
a0003ece:	00e41433          	sll	s0,s0,a4
a0003ed2:	38900713          	li	a4,905
a0003ed6:	40a70533          	sub	a0,a4,a0
a0003eda:	bf5d                	j	a0003e90 <__extendsfdf2+0x3a>
a0003edc:	ff550793          	addi	a5,a0,-11
a0003ee0:	00f417b3          	sll	a5,s0,a5
a0003ee4:	4401                	li	s0,0
a0003ee6:	b7f5                	j	a0003ed2 <__extendsfdf2+0x7c>
a0003ee8:	c01d                	beqz	s0,a0003f0e <__extendsfdf2+0xb8>
a0003eea:	004007b7          	lui	a5,0x400
a0003eee:	8fe1                	and	a5,a5,s0
a0003ef0:	e391                	bnez	a5,a0003ef4 <__extendsfdf2+0x9e>
a0003ef2:	4741                	li	a4,16
a0003ef4:	00345793          	srli	a5,s0,0x3
a0003ef8:	000806b7          	lui	a3,0x80
a0003efc:	0476                	slli	s0,s0,0x1d
a0003efe:	8fd5                	or	a5,a5,a3
a0003f00:	84ba                	mv	s1,a4
a0003f02:	7ff00513          	li	a0,2047
a0003f06:	b769                	j	a0003e90 <__extendsfdf2+0x3a>
a0003f08:	4781                	li	a5,0
a0003f0a:	4501                	li	a0,0
a0003f0c:	b751                	j	a0003e90 <__extendsfdf2+0x3a>
a0003f0e:	4781                	li	a5,0
a0003f10:	4481                	li	s1,0
a0003f12:	bfc5                	j	a0003f02 <__extendsfdf2+0xac>

a0003f14 <__clzsi2>:
a0003f14:	67c1                	lui	a5,0x10
a0003f16:	02f57663          	bgeu	a0,a5,a0003f42 <__clzsi2+0x2e>
a0003f1a:	0ff00793          	li	a5,255
a0003f1e:	00a7b7b3          	sltu	a5,a5,a0
a0003f22:	078e                	slli	a5,a5,0x3
a0003f24:	a000a737          	lui	a4,0xa000a
a0003f28:	02000693          	li	a3,32
a0003f2c:	8e9d                	sub	a3,a3,a5
a0003f2e:	00f55533          	srl	a0,a0,a5
a0003f32:	b0c70793          	addi	a5,a4,-1268 # a0009b0c <__psram_limit+0xf7c09b0c>
a0003f36:	953e                	add	a0,a0,a5
a0003f38:	00054503          	lbu	a0,0(a0)
a0003f3c:	40a68533          	sub	a0,a3,a0
a0003f40:	8082                	ret
a0003f42:	01000737          	lui	a4,0x1000
a0003f46:	47c1                	li	a5,16
a0003f48:	fce56ee3          	bltu	a0,a4,a0003f24 <__clzsi2+0x10>
a0003f4c:	47e1                	li	a5,24
a0003f4e:	bfd9                	j	a0003f24 <__clzsi2+0x10>

a0003f50 <uart_send_string>:
a0003f50:	1141                	addi	sp,sp,-16
a0003f52:	c422                	sw	s0,8(sp)
a0003f54:	c226                	sw	s1,4(sp)
a0003f56:	c606                	sw	ra,12(sp)
a0003f58:	842a                	mv	s0,a0
a0003f5a:	62fc34b7          	lui	s1,0x62fc3
a0003f5e:	00044583          	lbu	a1,0(s0)
a0003f62:	e591                	bnez	a1,a0003f6e <uart_send_string+0x1e>
a0003f64:	40b2                	lw	ra,12(sp)
a0003f66:	4422                	lw	s0,8(sp)
a0003f68:	4492                	lw	s1,4(sp)
a0003f6a:	0141                	addi	sp,sp,16
a0003f6c:	8082                	ret
a0003f6e:	edc4a503          	lw	a0,-292(s1) # 62fc2edc <uart0>
a0003f72:	0405                	addi	s0,s0,1
a0003f74:	c2fbc097          	auipc	ra,0xc2fbc
a0003f78:	7f8080e7          	jalr	2040(ra) # 62fc076c <qcc74x_uart_putchar>
a0003f7c:	b7cd                	j	a0003f5e <uart_send_string+0xe>

a0003f7e <dht11_read>:
a0003f7e:	7179                	addi	sp,sp,-48
a0003f80:	d422                	sw	s0,40(sp)
a0003f82:	62fc3437          	lui	s0,0x62fc3
a0003f86:	d226                	sw	s1,36(sp)
a0003f88:	ed440493          	addi	s1,s0,-300 # 62fc2ed4 <gpio>
a0003f8c:	ce4e                	sw	s3,28(sp)
a0003f8e:	89aa                	mv	s3,a0
a0003f90:	4088                	lw	a0,0(s1)
a0003f92:	04000613          	li	a2,64
a0003f96:	cc52                	sw	s4,24(sp)
a0003f98:	8a2e                	mv	s4,a1
a0003f9a:	458d                	li	a1,3
a0003f9c:	d606                	sw	ra,44(sp)
a0003f9e:	d04a                	sw	s2,32(sp)
a0003fa0:	ca56                	sw	s5,20(sp)
a0003fa2:	c85a                	sw	s6,16(sp)
a0003fa4:	c402                	sw	zero,8(sp)
a0003fa6:	00010623          	sb	zero,12(sp)
a0003faa:	3d4020ef          	jal	ra,a000637e <qcc74x_gpio_init>
a0003fae:	4088                	lw	a0,0(s1)
a0003fb0:	458d                	li	a1,3
a0003fb2:	12c00913          	li	s2,300
a0003fb6:	4c8020ef          	jal	ra,a000647e <qcc74x_gpio_reset>
a0003fba:	4551                	li	a0,20
a0003fbc:	c2fbd097          	auipc	ra,0xc2fbd
a0003fc0:	b66080e7          	jalr	-1178(ra) # 62fc0b22 <qcc74x_mtimer_delay_ms>
a0003fc4:	4088                	lw	a0,0(s1)
a0003fc6:	458d                	li	a1,3
a0003fc8:	ed440413          	addi	s0,s0,-300
a0003fcc:	480020ef          	jal	ra,a000644c <qcc74x_gpio_set>
a0003fd0:	02800513          	li	a0,40
a0003fd4:	c2fbd097          	auipc	ra,0xc2fbd
a0003fd8:	b24080e7          	jalr	-1244(ra) # 62fc0af8 <qcc74x_mtimer_delay_us>
a0003fdc:	4088                	lw	a0,0(s1)
a0003fde:	02000613          	li	a2,32
a0003fe2:	458d                	li	a1,3
a0003fe4:	39a020ef          	jal	ra,a000637e <qcc74x_gpio_init>
a0003fe8:	54fd                	li	s1,-1
a0003fea:	4008                	lw	a0,0(s0)
a0003fec:	458d                	li	a1,3
a0003fee:	4c2020ef          	jal	ra,a00064b0 <qcc74x_gpio_read>
a0003ff2:	cd11                	beqz	a0,a000400e <dht11_read+0x90>
a0003ff4:	197d                	addi	s2,s2,-1
a0003ff6:	00991663          	bne	s2,s1,a0004002 <dht11_read+0x84>
a0003ffa:	12c00493          	li	s1,300
a0003ffe:	597d                	li	s2,-1
a0004000:	a81d                	j	a0004036 <dht11_read+0xb8>
a0004002:	4505                	li	a0,1
a0004004:	c2fbd097          	auipc	ra,0xc2fbd
a0004008:	af4080e7          	jalr	-1292(ra) # 62fc0af8 <qcc74x_mtimer_delay_us>
a000400c:	bff9                	j	a0003fea <dht11_read+0x6c>
a000400e:	12c00493          	li	s1,300
a0004012:	fe0916e3          	bnez	s2,a0003ffe <dht11_read+0x80>
a0004016:	557d                	li	a0,-1
a0004018:	50b2                	lw	ra,44(sp)
a000401a:	5422                	lw	s0,40(sp)
a000401c:	5492                	lw	s1,36(sp)
a000401e:	5902                	lw	s2,32(sp)
a0004020:	49f2                	lw	s3,28(sp)
a0004022:	4a62                	lw	s4,24(sp)
a0004024:	4ad2                	lw	s5,20(sp)
a0004026:	4b42                	lw	s6,16(sp)
a0004028:	6145                	addi	sp,sp,48
a000402a:	8082                	ret
a000402c:	4505                	li	a0,1
a000402e:	c2fbd097          	auipc	ra,0xc2fbd
a0004032:	aca080e7          	jalr	-1334(ra) # 62fc0af8 <qcc74x_mtimer_delay_us>
a0004036:	4008                	lw	a0,0(s0)
a0004038:	458d                	li	a1,3
a000403a:	476020ef          	jal	ra,a00064b0 <qcc74x_gpio_read>
a000403e:	e955                	bnez	a0,a00040f2 <dht11_read+0x174>
a0004040:	14fd                	addi	s1,s1,-1
a0004042:	ff2495e3          	bne	s1,s2,a000402c <dht11_read+0xae>
a0004046:	12c00493          	li	s1,300
a000404a:	597d                	li	s2,-1
a000404c:	4008                	lw	a0,0(s0)
a000404e:	458d                	li	a1,3
a0004050:	460020ef          	jal	ra,a00064b0 <qcc74x_gpio_read>
a0004054:	c55d                	beqz	a0,a0004102 <dht11_read+0x184>
a0004056:	14fd                	addi	s1,s1,-1
a0004058:	09249f63          	bne	s1,s2,a00040f6 <dht11_read+0x178>
a000405c:	4481                	li	s1,0
a000405e:	12c00913          	li	s2,300
a0004062:	02800a93          	li	s5,40
a0004066:	4008                	lw	a0,0(s0)
a0004068:	458d                	li	a1,3
a000406a:	446020ef          	jal	ra,a00064b0 <qcc74x_gpio_read>
a000406e:	e509                	bnez	a0,a0004078 <dht11_read+0xfa>
a0004070:	fff90b13          	addi	s6,s2,-1 # 7fffff <remain_wifi_ram+0x7dffff>
a0004074:	08091963          	bnez	s2,a0004106 <dht11_read+0x188>
a0004078:	03200513          	li	a0,50
a000407c:	c2fbd097          	auipc	ra,0xc2fbd
a0004080:	a7c080e7          	jalr	-1412(ra) # 62fc0af8 <qcc74x_mtimer_delay_us>
a0004084:	4008                	lw	a0,0(s0)
a0004086:	458d                	li	a1,3
a0004088:	428020ef          	jal	ra,a00064b0 <qcc74x_gpio_read>
a000408c:	c10d                	beqz	a0,a00040ae <dht11_read+0x130>
a000408e:	fff4c793          	not	a5,s1
a0004092:	0077f693          	andi	a3,a5,7
a0004096:	4785                	li	a5,1
a0004098:	4034d713          	srai	a4,s1,0x3
a000409c:	00d797b3          	sll	a5,a5,a3
a00040a0:	0034                	addi	a3,sp,8
a00040a2:	80e6c68b          	lrbu	a3,a3,a4,0
a00040a6:	8fd5                	or	a5,a5,a3
a00040a8:	0034                	addi	a3,sp,8
a00040aa:	00e6d78b          	srb	a5,a3,a4,0
a00040ae:	12d00913          	li	s2,301
a00040b2:	4008                	lw	a0,0(s0)
a00040b4:	458d                	li	a1,3
a00040b6:	3fa020ef          	jal	ra,a00064b0 <qcc74x_gpio_read>
a00040ba:	c501                	beqz	a0,a00040c2 <dht11_read+0x144>
a00040bc:	197d                	addi	s2,s2,-1
a00040be:	04091e63          	bnez	s2,a000411a <dht11_read+0x19c>
a00040c2:	0485                	addi	s1,s1,1
a00040c4:	05549863          	bne	s1,s5,a0004114 <dht11_read+0x196>
a00040c8:	00814683          	lbu	a3,8(sp)
a00040cc:	00914783          	lbu	a5,9(sp)
a00040d0:	00a14703          	lbu	a4,10(sp)
a00040d4:	00b14603          	lbu	a2,11(sp)
a00040d8:	97b6                	add	a5,a5,a3
a00040da:	97ba                	add	a5,a5,a4
a00040dc:	97b2                	add	a5,a5,a2
a00040de:	00c14603          	lbu	a2,12(sp)
a00040e2:	f2c79ae3          	bne	a5,a2,a0004016 <dht11_read+0x98>
a00040e6:	00da0023          	sb	a3,0(s4)
a00040ea:	00e98023          	sb	a4,0(s3)
a00040ee:	4501                	li	a0,0
a00040f0:	b725                	j	a0004018 <dht11_read+0x9a>
a00040f2:	f8b1                	bnez	s1,a0004046 <dht11_read+0xc8>
a00040f4:	b70d                	j	a0004016 <dht11_read+0x98>
a00040f6:	4505                	li	a0,1
a00040f8:	c2fbd097          	auipc	ra,0xc2fbd
a00040fc:	a00080e7          	jalr	-1536(ra) # 62fc0af8 <qcc74x_mtimer_delay_us>
a0004100:	b7b1                	j	a000404c <dht11_read+0xce>
a0004102:	fca9                	bnez	s1,a000405c <dht11_read+0xde>
a0004104:	bf09                	j	a0004016 <dht11_read+0x98>
a0004106:	4505                	li	a0,1
a0004108:	c2fbd097          	auipc	ra,0xc2fbd
a000410c:	9f0080e7          	jalr	-1552(ra) # 62fc0af8 <qcc74x_mtimer_delay_us>
a0004110:	895a                	mv	s2,s6
a0004112:	bf91                	j	a0004066 <dht11_read+0xe8>
a0004114:	12c00913          	li	s2,300
a0004118:	b7b9                	j	a0004066 <dht11_read+0xe8>
a000411a:	4505                	li	a0,1
a000411c:	c2fbd097          	auipc	ra,0xc2fbd
a0004120:	9dc080e7          	jalr	-1572(ra) # 62fc0af8 <qcc74x_mtimer_delay_us>
a0004124:	b779                	j	a00040b2 <dht11_read+0x134>

a0004126 <main>:
a0004126:	7111                	addi	sp,sp,-256
a0004128:	df86                	sw	ra,252(sp)
a000412a:	dda2                	sw	s0,248(sp)
a000412c:	dba6                	sw	s1,244(sp)
a000412e:	d9ca                	sw	s2,240(sp)
a0004130:	d7ce                	sw	s3,236(sp)
a0004132:	d5d2                	sw	s4,232(sp)
a0004134:	d3d6                	sw	s5,228(sp)
a0004136:	d1da                	sw	s6,224(sp)
a0004138:	cfde                	sw	s7,220(sp)
a000413a:	cde2                	sw	s8,216(sp)
a000413c:	e7a2                	fsw	fs0,204(sp)
a000413e:	e5a6                	fsw	fs1,200(sp)
a0004140:	e3ca                	fsw	fs2,196(sp)
a0004142:	e1ce                	fsw	fs3,192(sp)
a0004144:	3c4040ef          	jal	ra,a0008508 <board_init>
a0004148:	244040ef          	jal	ra,a000838c <board_uartx_gpio_init>
a000414c:	a0009537          	lui	a0,0xa0009
a0004150:	87050513          	addi	a0,a0,-1936 # a0008870 <__psram_limit+0xf7c08870>
a0004154:	3d2030ef          	jal	ra,a0007526 <qcc74x_device_get_by_name>
a0004158:	62fc37b7          	lui	a5,0x62fc3
a000415c:	eca7ae23          	sw	a0,-292(a5) # 62fc2edc <uart0>
a0004160:	67f1                	lui	a5,0x1c
a0004162:	20078793          	addi	a5,a5,512 # 1c200 <wifi_ram_max_size+0x14200>
a0004166:	6a41                	lui	s4,0x10
a0004168:	008c                	addi	a1,sp,64
a000416a:	c0be                	sw	a5,64(sp)
a000416c:	300a0793          	addi	a5,s4,768 # 10300 <wifi_ram_max_size+0x8300>
a0004170:	c2be                	sw	a5,68(sp)
a0004172:	c482                	sw	zero,72(sp)
a0004174:	1d3020ef          	jal	ra,a0006b46 <qcc74x_uart_init>
a0004178:	254040ef          	jal	ra,a00083cc <board_i2c0_gpio_init>
a000417c:	a0009537          	lui	a0,0xa0009
a0004180:	87850513          	addi	a0,a0,-1928 # a0008878 <__psram_limit+0xf7c08878>
a0004184:	3a2030ef          	jal	ra,a0007526 <qcc74x_device_get_by_name>
a0004188:	62fc3ab7          	lui	s5,0x62fc3
a000418c:	65e1                	lui	a1,0x18
a000418e:	6a058593          	addi	a1,a1,1696 # 186a0 <wifi_ram_max_size+0x106a0>
a0004192:	ed8a8c13          	addi	s8,s5,-296 # 62fc2ed8 <i2c0>
a0004196:	00ac2023          	sw	a0,0(s8)
a000419a:	56c020ef          	jal	ra,a0006706 <qcc74x_i2c_init>
a000419e:	a0009537          	lui	a0,0xa0009
a00041a2:	88050513          	addi	a0,a0,-1920 # a0008880 <__psram_limit+0xf7c08880>
a00041a6:	380030ef          	jal	ra,a0007526 <qcc74x_device_get_by_name>
a00041aa:	62fc37b7          	lui	a5,0x62fc3
a00041ae:	eca7aa23          	sw	a0,-300(a5) # 62fc2ed4 <gpio>
a00041b2:	a0009537          	lui	a0,0xa0009
a00041b6:	88850513          	addi	a0,a0,-1912 # a0008888 <__psram_limit+0xf7c08888>
a00041ba:	36c030ef          	jal	ra,a0007526 <qcc74x_device_get_by_name>
a00041be:	a00097b7          	lui	a5,0xa0009
a00041c2:	9d078793          	addi	a5,a5,-1584 # a00089d0 <__psram_limit+0xf7c089d0>
a00041c6:	4398                	lw	a4,0(a5)
a00041c8:	0047d783          	lhu	a5,4(a5)
a00041cc:	62fc3437          	lui	s0,0x62fc3
a00041d0:	ed040493          	addi	s1,s0,-304 # 62fc2ed0 <adc>
a00041d4:	04f11223          	sh	a5,68(sp)
a00041d8:	6785                	lui	a5,0x1
a00041da:	70278793          	addi	a5,a5,1794 # 1702 <HeapMinSize+0x702>
a00041de:	008c                	addi	a1,sp,64
a00041e0:	c0ba                	sw	a4,64(sp)
a00041e2:	02f11423          	sh	a5,40(sp)
a00041e6:	c088                	sw	a0,0(s1)
a00041e8:	63d020ef          	jal	ra,a0007024 <qcc74x_adc_init>
a00041ec:	4088                	lw	a0,0(s1)
a00041ee:	02810913          	addi	s2,sp,40
a00041f2:	4605                	li	a2,1
a00041f4:	85ca                	mv	a1,s2
a00041f6:	2b9020ef          	jal	ra,a0006cae <qcc74x_adc_channel_config>
a00041fa:	a0009b37          	lui	s6,0xa0009
a00041fe:	88cb0513          	addi	a0,s6,-1908 # a000888c <__psram_limit+0xf7c0888c>
a0004202:	33b9                	jal	a0003f50 <uart_send_string>
a0004204:	a0009537          	lui	a0,0xa0009
a0004208:	8a850513          	addi	a0,a0,-1880 # a00088a8 <__psram_limit+0xf7c088a8>
a000420c:	3391                	jal	a0003f50 <uart_send_string>
a000420e:	a00094b7          	lui	s1,0xa0009
a0004212:	8c848513          	addi	a0,s1,-1848 # a00088c8 <__psram_limit+0xf7c088c8>
a0004216:	3b2d                	jal	a0003f50 <uart_send_string>
a0004218:	011017b7          	lui	a5,0x1101
a000421c:	53078793          	addi	a5,a5,1328 # 1101530 <remain_wifi_ram+0x10e1530>
a0004220:	d43e                	sw	a5,40(sp)
a0004222:	20400793          	li	a5,516
a0004226:	02f11623          	sh	a5,44(sp)
a000422a:	02600793          	li	a5,38
a000422e:	02f10723          	sb	a5,46(sp)
a0004232:	000c2503          	lw	a0,0(s8)
a0004236:	4785                	li	a5,1
a0004238:	04f11423          	sh	a5,72(sp)
a000423c:	004009b7          	lui	s3,0x400
a0004240:	06800793          	li	a5,104
a0004244:	4609                	li	a2,2
a0004246:	008c                	addi	a1,sp,64
a0004248:	c6be                	sw	a5,76(sp)
a000424a:	06898993          	addi	s3,s3,104 # 400068 <remain_wifi_ram+0x3e0068>
a000424e:	479d                	li	a5,7
a0004250:	01c10b93          	addi	s7,sp,28
a0004254:	04f11a23          	sh	a5,84(sp)
a0004258:	c0ce                	sw	s3,64(sp)
a000425a:	00010e23          	sb	zero,28(sp)
a000425e:	c2de                	sw	s7,68(sp)
a0004260:	c8ca                	sw	s2,80(sp)
a0004262:	5fa020ef          	jal	ra,a000685c <qcc74x_i2c_transfer>
a0004266:	a0009537          	lui	a0,0xa0009
a000426a:	8ec50513          	addi	a0,a0,-1812 # a00088ec <__psram_limit+0xf7c088ec>
a000426e:	31cd                	jal	a0003f50 <uart_send_string>
a0004270:	6509                	lui	a0,0x2
a0004272:	71050513          	addi	a0,a0,1808 # 2710 <HeapMinSize+0x1710>
a0004276:	c2fbd097          	auipc	ra,0xc2fbd
a000427a:	8ac080e7          	jalr	-1876(ra) # 62fc0b22 <qcc74x_mtimer_delay_ms>
a000427e:	a00097b7          	lui	a5,0xa0009
a0004282:	9c07a407          	flw	fs0,-1600(a5) # a00089c0 <__psram_limit+0xf7c089c0>
a0004286:	a00097b7          	lui	a5,0xa0009
a000428a:	9c47a487          	flw	fs1,-1596(a5) # a00089c4 <__psram_limit+0xf7c089c4>
a000428e:	a00097b7          	lui	a5,0xa0009
a0004292:	9c87a907          	flw	fs2,-1592(a5) # a00089c8 <__psram_limit+0xf7c089c8>
a0004296:	a00097b7          	lui	a5,0xa0009
a000429a:	9cc7a987          	flw	fs3,-1588(a5) # a00089cc <__psram_limit+0xf7c089cc>
a000429e:	ed8a8a93          	addi	s5,s5,-296
a00042a2:	ed040413          	addi	s0,s0,-304
a00042a6:	068a0a13          	addi	s4,s4,104
a00042aa:	88cb0513          	addi	a0,s6,-1908
a00042ae:	314d                	jal	a0003f50 <uart_send_string>
a00042b0:	01310793          	addi	a5,sp,19
a00042b4:	d63e                	sw	a5,44(sp)
a00042b6:	000aa503          	lw	a0,0(s5)
a00042ba:	4785                	li	a5,1
a00042bc:	02f11823          	sh	a5,48(sp)
a00042c0:	085c                	addi	a5,sp,20
a00042c2:	dc3e                	sw	a5,56(sp)
a00042c4:	4609                	li	a2,2
a00042c6:	479d                	li	a5,7
a00042c8:	85ca                	mv	a1,s2
a00042ca:	02f11e23          	sh	a5,60(sp)
a00042ce:	000109a3          	sb	zero,19(sp)
a00042d2:	d44e                	sw	s3,40(sp)
a00042d4:	da52                	sw	s4,52(sp)
a00042d6:	586020ef          	jal	ra,a000685c <qcc74x_i2c_transfer>
a00042da:	01a14883          	lbu	a7,26(sp)
a00042de:	01914803          	lbu	a6,25(sp)
a00042e2:	01814783          	lbu	a5,24(sp)
a00042e6:	45a9                	li	a1,10
a00042e8:	01414703          	lbu	a4,20(sp)
a00042ec:	0048d513          	srli	a0,a7,0x4
a00042f0:	00f8f893          	andi	a7,a7,15
a00042f4:	20b5188b          	mula	a7,a0,a1
a00042f8:	01514683          	lbu	a3,21(sp)
a00042fc:	00485513          	srli	a0,a6,0x4
a0004300:	00f87813          	andi	a6,a6,15
a0004304:	01614603          	lbu	a2,22(sp)
a0004308:	20b5180b          	mula	a6,a0,a1
a000430c:	0047d513          	srli	a0,a5,0x4
a0004310:	8bbd                	andi	a5,a5,15
a0004312:	0ff8f893          	zext.b	a7,a7
a0004316:	20b5178b          	mula	a5,a0,a1
a000431a:	1847350b          	extu	a0,a4,6,4
a000431e:	8b3d                	andi	a4,a4,15
a0004320:	0ff87813          	zext.b	a6,a6
a0004324:	20b5170b          	mula	a4,a0,a1
a0004328:	0046d513          	srli	a0,a3,0x4
a000432c:	8abd                	andi	a3,a3,15
a000432e:	0ff7f793          	zext.b	a5,a5
a0004332:	20b5168b          	mula	a3,a0,a1
a0004336:	1446350b          	extu	a0,a2,5,4
a000433a:	8a3d                	andi	a2,a2,15
a000433c:	0ff77713          	zext.b	a4,a4
a0004340:	20b5160b          	mula	a2,a0,a1
a0004344:	a00095b7          	lui	a1,0xa0009
a0004348:	90858593          	addi	a1,a1,-1784 # a0008908 <__psram_limit+0xf7c08908>
a000434c:	0ff6f693          	zext.b	a3,a3
a0004350:	0088                	addi	a0,sp,64
a0004352:	0ff67613          	zext.b	a2,a2
a0004356:	187010ef          	jal	ra,a0005cdc <__wrap_sprintf>
a000435a:	0088                	addi	a0,sp,64
a000435c:	3ed5                	jal	a0003f50 <uart_send_string>
a000435e:	01210593          	addi	a1,sp,18
a0004362:	01110513          	addi	a0,sp,17
a0004366:	3921                	jal	a0003f7e <dht11_read>
a0004368:	e141                	bnez	a0,a00043e8 <main+0x2c2>
a000436a:	01214683          	lbu	a3,18(sp)
a000436e:	01114603          	lbu	a2,17(sp)
a0004372:	a00095b7          	lui	a1,0xa0009
a0004376:	93858593          	addi	a1,a1,-1736 # a0008938 <__psram_limit+0xf7c08938>
a000437a:	0088                	addi	a0,sp,64
a000437c:	161010ef          	jal	ra,a0005cdc <__wrap_sprintf>
a0004380:	0088                	addi	a0,sp,64
a0004382:	36f9                	jal	a0003f50 <uart_send_string>
a0004384:	4008                	lw	a0,0(s0)
a0004386:	25f020ef          	jal	ra,a0006de4 <qcc74x_adc_start_conversion>
a000438a:	4008                	lw	a0,0(s0)
a000438c:	5f5020ef          	jal	ra,a0007180 <qcc74x_adc_get_count>
a0004390:	dd6d                	beqz	a0,a000438a <main+0x264>
a0004392:	4008                	lw	a0,0(s0)
a0004394:	5f9020ef          	jal	ra,a000718c <qcc74x_adc_read_raw>
a0004398:	d42a                	sw	a0,40(sp)
a000439a:	4008                	lw	a0,0(s0)
a000439c:	4685                	li	a3,1
a000439e:	865e                	mv	a2,s7
a00043a0:	85ca                	mv	a1,s2
a00043a2:	5fb020ef          	jal	ra,a000719c <qcc74x_adc_parse_result>
a00043a6:	4008                	lw	a0,0(s0)
a00043a8:	279020ef          	jal	ra,a0006e20 <qcc74x_adc_stop_conversion>
a00043ac:	5792                	lw	a5,36(sp)
a00043ae:	d007f553          	fcvt.s.w	fa0,a5
a00043b2:	18857553          	fdiv.s	fa0,fa0,fs0
a00043b6:	a09517d3          	flt.s	a5,fa0,fs1
a00043ba:	cf9d                	beqz	a5,a00043f8 <main+0x2d2>
a00043bc:	3c69                	jal	a0003e56 <__extendsfdf2>
a00043be:	86ae                	mv	a3,a1
a00043c0:	a00095b7          	lui	a1,0xa0009
a00043c4:	862a                	mv	a2,a0
a00043c6:	96058593          	addi	a1,a1,-1696 # a0008960 <__psram_limit+0xf7c08960>
a00043ca:	0088                	addi	a0,sp,64
a00043cc:	111010ef          	jal	ra,a0005cdc <__wrap_sprintf>
a00043d0:	0088                	addi	a0,sp,64
a00043d2:	3ebd                	jal	a0003f50 <uart_send_string>
a00043d4:	8c848513          	addi	a0,s1,-1848
a00043d8:	3ea5                	jal	a0003f50 <uart_send_string>
a00043da:	3e800513          	li	a0,1000
a00043de:	c2fbc097          	auipc	ra,0xc2fbc
a00043e2:	744080e7          	jalr	1860(ra) # 62fc0b22 <qcc74x_mtimer_delay_ms>
a00043e6:	b5d1                	j	a00042aa <main+0x184>
a00043e8:	a00095b7          	lui	a1,0xa0009
a00043ec:	95058593          	addi	a1,a1,-1712 # a0008950 <__psram_limit+0xf7c08950>
a00043f0:	0088                	addi	a0,sp,64
a00043f2:	0eb010ef          	jal	ra,a0005cdc <__wrap_sprintf>
a00043f6:	b769                	j	a0004380 <main+0x25a>
a00043f8:	e62a                	fsw	fa0,12(sp)
a00043fa:	3cb1                	jal	a0003e56 <__extendsfdf2>
a00043fc:	6532                	flw	fa0,12(sp)
a00043fe:	862a                	mv	a2,a0
a0004400:	86ae                	mv	a3,a1
a0004402:	a12517d3          	flt.s	a5,fa0,fs2
a0004406:	c791                	beqz	a5,a0004412 <main+0x2ec>
a0004408:	a00095b7          	lui	a1,0xa0009
a000440c:	97858593          	addi	a1,a1,-1672 # a0008978 <__psram_limit+0xf7c08978>
a0004410:	bf6d                	j	a00043ca <main+0x2a4>
a0004412:	a13517d3          	flt.s	a5,fa0,fs3
a0004416:	c791                	beqz	a5,a0004422 <main+0x2fc>
a0004418:	a00095b7          	lui	a1,0xa0009
a000441c:	99058593          	addi	a1,a1,-1648 # a0008990 <__psram_limit+0xf7c08990>
a0004420:	b76d                	j	a00043ca <main+0x2a4>
a0004422:	a00095b7          	lui	a1,0xa0009
a0004426:	9a458593          	addi	a1,a1,-1628 # a00089a4 <__psram_limit+0xf7c089a4>
a000442a:	b745                	j	a00043ca <main+0x2a4>

a000442c <strcmp>:
a000442c:	4701                	li	a4,0
a000442e:	80e5468b          	lrbu	a3,a0,a4,0
a0004432:	80e5c78b          	lrbu	a5,a1,a4,0
a0004436:	40f687b3          	sub	a5,a3,a5
a000443a:	1c07a78b          	ext	a5,a5,7,0
a000443e:	e399                	bnez	a5,a0004444 <strcmp+0x18>
a0004440:	0705                	addi	a4,a4,1
a0004442:	f6f5                	bnez	a3,a000442e <strcmp+0x2>
a0004444:	853e                	mv	a0,a5
a0004446:	8082                	ret

a0004448 <memcpy>:
a0004448:	471d                	li	a4,7
a000444a:	87aa                	mv	a5,a0
a000444c:	00c506b3          	add	a3,a0,a2
a0004450:	08c76463          	bltu	a4,a2,a00044d8 <memcpy+0x90>
a0004454:	4791                	li	a5,4
a0004456:	06f60963          	beq	a2,a5,a00044c8 <memcpy+0x80>
a000445a:	00c7ed63          	bltu	a5,a2,a0004474 <memcpy+0x2c>
a000445e:	4789                	li	a5,2
a0004460:	06f60663          	beq	a2,a5,a00044cc <memcpy+0x84>
a0004464:	470d                	li	a4,3
a0004466:	87aa                	mv	a5,a0
a0004468:	04e60163          	beq	a2,a4,a00044aa <memcpy+0x62>
a000446c:	4705                	li	a4,1
a000446e:	04e60663          	beq	a2,a4,a00044ba <memcpy+0x72>
a0004472:	8082                	ret
a0004474:	4799                	li	a5,6
a0004476:	04f60763          	beq	a2,a5,a00044c4 <memcpy+0x7c>
a000447a:	00e60763          	beq	a2,a4,a0004488 <memcpy+0x40>
a000447e:	4715                	li	a4,5
a0004480:	87aa                	mv	a5,a0
a0004482:	00e60c63          	beq	a2,a4,a000449a <memcpy+0x52>
a0004486:	8082                	ret
a0004488:	9815c70b          	lbuia	a4,(a1),1,0
a000448c:	87aa                	mv	a5,a0
a000448e:	1817d70b          	sbia	a4,(a5),1,0
a0004492:	9815c70b          	lbuia	a4,(a1),1,0
a0004496:	1817d70b          	sbia	a4,(a5),1,0
a000449a:	9815c70b          	lbuia	a4,(a1),1,0
a000449e:	1817d70b          	sbia	a4,(a5),1,0
a00044a2:	9815c70b          	lbuia	a4,(a1),1,0
a00044a6:	1817d70b          	sbia	a4,(a5),1,0
a00044aa:	9815c70b          	lbuia	a4,(a1),1,0
a00044ae:	1817d70b          	sbia	a4,(a5),1,0
a00044b2:	9815c70b          	lbuia	a4,(a1),1,0
a00044b6:	1817d70b          	sbia	a4,(a5),1,0
a00044ba:	0005c703          	lbu	a4,0(a1)
a00044be:	00e78023          	sb	a4,0(a5)
a00044c2:	8082                	ret
a00044c4:	87aa                	mv	a5,a0
a00044c6:	b7f1                	j	a0004492 <memcpy+0x4a>
a00044c8:	87aa                	mv	a5,a0
a00044ca:	bfe1                	j	a00044a2 <memcpy+0x5a>
a00044cc:	87aa                	mv	a5,a0
a00044ce:	b7d5                	j	a00044b2 <memcpy+0x6a>
a00044d0:	9815c70b          	lbuia	a4,(a1),1,0
a00044d4:	1817d70b          	sbia	a4,(a5),1,0
a00044d8:	0037f713          	andi	a4,a5,3
a00044dc:	40f68633          	sub	a2,a3,a5
a00044e0:	fb65                	bnez	a4,a00044d0 <memcpy+0x88>
a00044e2:	0035f693          	andi	a3,a1,3
a00044e6:	4809                	li	a6,2
a00044e8:	00265713          	srli	a4,a2,0x2
a00044ec:	1b068d63          	beq	a3,a6,a00046a6 <memcpy+0x25e>
a00044f0:	480d                	li	a6,3
a00044f2:	2b068863          	beq	a3,a6,a00047a2 <memcpy+0x35a>
a00044f6:	4805                	li	a6,1
a00044f8:	05069563          	bne	a3,a6,a0004542 <memcpy+0xfa>
a00044fc:	99f1                	andi	a1,a1,-4
a00044fe:	5845c80b          	lwia	a6,(a1),4,0
a0004502:	9bf1                	andi	a5,a5,-4
a0004504:	00777693          	andi	a3,a4,7
a0004508:	e2f9                	bnez	a3,a00045ce <memcpy+0x186>
a000450a:	830d                	srli	a4,a4,0x3
a000450c:	0716                	slli	a4,a4,0x5
a000450e:	00e58e33          	add	t3,a1,a4
a0004512:	86be                	mv	a3,a5
a0004514:	0dc59963          	bne	a1,t3,a00045e6 <memcpy+0x19e>
a0004518:	8a0d                	andi	a2,a2,3
a000451a:	4689                	li	a3,2
a000451c:	97ba                	add	a5,a5,a4
a000451e:	ffd58713          	addi	a4,a1,-3
a0004522:	16d60d63          	beq	a2,a3,a000469c <memcpy+0x254>
a0004526:	468d                	li	a3,3
a0004528:	16d60463          	beq	a2,a3,a0004690 <memcpy+0x248>
a000452c:	4685                	li	a3,1
a000452e:	f8d61ae3          	bne	a2,a3,a00044c2 <memcpy+0x7a>
a0004532:	00074703          	lbu	a4,0(a4) # 1000000 <remain_wifi_ram+0xfe0000>
a0004536:	b761                	j	a00044be <memcpy+0x76>
a0004538:	5845c68b          	lwia	a3,(a1),4,0
a000453c:	177d                	addi	a4,a4,-1
a000453e:	5847d68b          	swia	a3,(a5),4,0
a0004542:	00777693          	andi	a3,a4,7
a0004546:	faed                	bnez	a3,a0004538 <memcpy+0xf0>
a0004548:	830d                	srli	a4,a4,0x3
a000454a:	0716                	slli	a4,a4,0x5
a000454c:	00e586b3          	add	a3,a1,a4
a0004550:	883e                	mv	a6,a5
a0004552:	02d59063          	bne	a1,a3,a0004572 <memcpy+0x12a>
a0004556:	97ba                	add	a5,a5,a4
a0004558:	8a0d                	andi	a2,a2,3
a000455a:	4709                	li	a4,2
a000455c:	06e60463          	beq	a2,a4,a00045c4 <memcpy+0x17c>
a0004560:	470d                	li	a4,3
a0004562:	04e60d63          	beq	a2,a4,a00045bc <memcpy+0x174>
a0004566:	4705                	li	a4,1
a0004568:	f4e61de3          	bne	a2,a4,a00044c2 <memcpy+0x7a>
a000456c:	0006c703          	lbu	a4,0(a3) # 80000 <remain_wifi_ram+0x60000>
a0004570:	b7b9                	j	a00044be <memcpy+0x76>
a0004572:	0005a883          	lw	a7,0(a1)
a0004576:	02080813          	addi	a6,a6,32
a000457a:	ff182023          	sw	a7,-32(a6)
a000457e:	0045a883          	lw	a7,4(a1)
a0004582:	ff182223          	sw	a7,-28(a6)
a0004586:	0085a883          	lw	a7,8(a1)
a000458a:	ff182423          	sw	a7,-24(a6)
a000458e:	00c5a883          	lw	a7,12(a1)
a0004592:	ff182623          	sw	a7,-20(a6)
a0004596:	0105a883          	lw	a7,16(a1)
a000459a:	ff182823          	sw	a7,-16(a6)
a000459e:	0145a883          	lw	a7,20(a1)
a00045a2:	ff182a23          	sw	a7,-12(a6)
a00045a6:	0185a883          	lw	a7,24(a1)
a00045aa:	ff182c23          	sw	a7,-8(a6)
a00045ae:	01c5a883          	lw	a7,28(a1)
a00045b2:	02058593          	addi	a1,a1,32
a00045b6:	ff182e23          	sw	a7,-4(a6)
a00045ba:	bf61                	j	a0004552 <memcpy+0x10a>
a00045bc:	9816c70b          	lbuia	a4,(a3),1,0
a00045c0:	1817d70b          	sbia	a4,(a5),1,0
a00045c4:	9816c70b          	lbuia	a4,(a3),1,0
a00045c8:	1817d70b          	sbia	a4,(a5),1,0
a00045cc:	b745                	j	a000456c <memcpy+0x124>
a00045ce:	00885893          	srli	a7,a6,0x8
a00045d2:	5845c80b          	lwia	a6,(a1),4,0
a00045d6:	177d                	addi	a4,a4,-1
a00045d8:	01881693          	slli	a3,a6,0x18
a00045dc:	0116e6b3          	or	a3,a3,a7
a00045e0:	5847d68b          	swia	a3,(a5),4,0
a00045e4:	b705                	j	a0004504 <memcpy+0xbc>
a00045e6:	0005a883          	lw	a7,0(a1)
a00045ea:	00885813          	srli	a6,a6,0x8
a00045ee:	01889313          	slli	t1,a7,0x18
a00045f2:	01036833          	or	a6,t1,a6
a00045f6:	0106a023          	sw	a6,0(a3)
a00045fa:	0045a803          	lw	a6,4(a1)
a00045fe:	0088d893          	srli	a7,a7,0x8
a0004602:	01881313          	slli	t1,a6,0x18
a0004606:	011368b3          	or	a7,t1,a7
a000460a:	0116a223          	sw	a7,4(a3)
a000460e:	00885893          	srli	a7,a6,0x8
a0004612:	0085a803          	lw	a6,8(a1)
a0004616:	01881313          	slli	t1,a6,0x18
a000461a:	011368b3          	or	a7,t1,a7
a000461e:	0116a423          	sw	a7,8(a3)
a0004622:	00885893          	srli	a7,a6,0x8
a0004626:	00c5a803          	lw	a6,12(a1)
a000462a:	01881313          	slli	t1,a6,0x18
a000462e:	011368b3          	or	a7,t1,a7
a0004632:	0116a623          	sw	a7,12(a3)
a0004636:	00885893          	srli	a7,a6,0x8
a000463a:	0105a803          	lw	a6,16(a1)
a000463e:	01881313          	slli	t1,a6,0x18
a0004642:	011368b3          	or	a7,t1,a7
a0004646:	0116a823          	sw	a7,16(a3)
a000464a:	00885893          	srli	a7,a6,0x8
a000464e:	0145a803          	lw	a6,20(a1)
a0004652:	01881313          	slli	t1,a6,0x18
a0004656:	011368b3          	or	a7,t1,a7
a000465a:	0116aa23          	sw	a7,20(a3)
a000465e:	00885893          	srli	a7,a6,0x8
a0004662:	0185a803          	lw	a6,24(a1)
a0004666:	01881313          	slli	t1,a6,0x18
a000466a:	011368b3          	or	a7,t1,a7
a000466e:	0116ac23          	sw	a7,24(a3)
a0004672:	00885893          	srli	a7,a6,0x8
a0004676:	01c5a803          	lw	a6,28(a1)
a000467a:	02058593          	addi	a1,a1,32
a000467e:	01881313          	slli	t1,a6,0x18
a0004682:	011368b3          	or	a7,t1,a7
a0004686:	0116ae23          	sw	a7,28(a3)
a000468a:	02068693          	addi	a3,a3,32
a000468e:	b559                	j	a0004514 <memcpy+0xcc>
a0004690:	ffd5c683          	lbu	a3,-3(a1)
a0004694:	ffe58713          	addi	a4,a1,-2
a0004698:	1817d68b          	sbia	a3,(a5),1,0
a000469c:	9817468b          	lbuia	a3,(a4),1,0
a00046a0:	1817d68b          	sbia	a3,(a5),1,0
a00046a4:	b579                	j	a0004532 <memcpy+0xea>
a00046a6:	99f1                	andi	a1,a1,-4
a00046a8:	5845c80b          	lwia	a6,(a1),4,0
a00046ac:	9bf1                	andi	a5,a5,-4
a00046ae:	00777693          	andi	a3,a4,7
a00046b2:	e69d                	bnez	a3,a00046e0 <memcpy+0x298>
a00046b4:	830d                	srli	a4,a4,0x3
a00046b6:	0716                	slli	a4,a4,0x5
a00046b8:	00e58e33          	add	t3,a1,a4
a00046bc:	86be                	mv	a3,a5
a00046be:	03c59d63          	bne	a1,t3,a00046f8 <memcpy+0x2b0>
a00046c2:	8a0d                	andi	a2,a2,3
a00046c4:	4689                	li	a3,2
a00046c6:	97ba                	add	a5,a5,a4
a00046c8:	ffe58713          	addi	a4,a1,-2
a00046cc:	fcd608e3          	beq	a2,a3,a000469c <memcpy+0x254>
a00046d0:	468d                	li	a3,3
a00046d2:	e4d61de3          	bne	a2,a3,a000452c <memcpy+0xe4>
a00046d6:	ffe5c683          	lbu	a3,-2(a1)
a00046da:	fff58713          	addi	a4,a1,-1
a00046de:	bf6d                	j	a0004698 <memcpy+0x250>
a00046e0:	01085893          	srli	a7,a6,0x10
a00046e4:	5845c80b          	lwia	a6,(a1),4,0
a00046e8:	177d                	addi	a4,a4,-1
a00046ea:	01081693          	slli	a3,a6,0x10
a00046ee:	0116e6b3          	or	a3,a3,a7
a00046f2:	5847d68b          	swia	a3,(a5),4,0
a00046f6:	bf65                	j	a00046ae <memcpy+0x266>
a00046f8:	0005a883          	lw	a7,0(a1)
a00046fc:	01085813          	srli	a6,a6,0x10
a0004700:	01089313          	slli	t1,a7,0x10
a0004704:	01036833          	or	a6,t1,a6
a0004708:	0106a023          	sw	a6,0(a3)
a000470c:	0045a803          	lw	a6,4(a1)
a0004710:	0108d893          	srli	a7,a7,0x10
a0004714:	01081313          	slli	t1,a6,0x10
a0004718:	011368b3          	or	a7,t1,a7
a000471c:	0116a223          	sw	a7,4(a3)
a0004720:	01085893          	srli	a7,a6,0x10
a0004724:	0085a803          	lw	a6,8(a1)
a0004728:	01081313          	slli	t1,a6,0x10
a000472c:	011368b3          	or	a7,t1,a7
a0004730:	0116a423          	sw	a7,8(a3)
a0004734:	01085893          	srli	a7,a6,0x10
a0004738:	00c5a803          	lw	a6,12(a1)
a000473c:	01081313          	slli	t1,a6,0x10
a0004740:	011368b3          	or	a7,t1,a7
a0004744:	0116a623          	sw	a7,12(a3)
a0004748:	01085893          	srli	a7,a6,0x10
a000474c:	0105a803          	lw	a6,16(a1)
a0004750:	01081313          	slli	t1,a6,0x10
a0004754:	011368b3          	or	a7,t1,a7
a0004758:	0116a823          	sw	a7,16(a3)
a000475c:	01085893          	srli	a7,a6,0x10
a0004760:	0145a803          	lw	a6,20(a1)
a0004764:	01081313          	slli	t1,a6,0x10
a0004768:	011368b3          	or	a7,t1,a7
a000476c:	0116aa23          	sw	a7,20(a3)
a0004770:	01085893          	srli	a7,a6,0x10
a0004774:	0185a803          	lw	a6,24(a1)
a0004778:	01081313          	slli	t1,a6,0x10
a000477c:	011368b3          	or	a7,t1,a7
a0004780:	0116ac23          	sw	a7,24(a3)
a0004784:	01085893          	srli	a7,a6,0x10
a0004788:	01c5a803          	lw	a6,28(a1)
a000478c:	02058593          	addi	a1,a1,32
a0004790:	01081313          	slli	t1,a6,0x10
a0004794:	011368b3          	or	a7,t1,a7
a0004798:	0116ae23          	sw	a7,28(a3)
a000479c:	02068693          	addi	a3,a3,32
a00047a0:	bf39                	j	a00046be <memcpy+0x276>
a00047a2:	99f1                	andi	a1,a1,-4
a00047a4:	5845c80b          	lwia	a6,(a1),4,0
a00047a8:	9bf1                	andi	a5,a5,-4
a00047aa:	00777693          	andi	a3,a4,7
a00047ae:	ea85                	bnez	a3,a00047de <memcpy+0x396>
a00047b0:	830d                	srli	a4,a4,0x3
a00047b2:	0716                	slli	a4,a4,0x5
a00047b4:	00e58e33          	add	t3,a1,a4
a00047b8:	86be                	mv	a3,a5
a00047ba:	03c59e63          	bne	a1,t3,a00047f6 <memcpy+0x3ae>
a00047be:	8a0d                	andi	a2,a2,3
a00047c0:	4689                	li	a3,2
a00047c2:	97ba                	add	a5,a5,a4
a00047c4:	fff58713          	addi	a4,a1,-1
a00047c8:	ecd60ae3          	beq	a2,a3,a000469c <memcpy+0x254>
a00047cc:	468d                	li	a3,3
a00047ce:	d4d61fe3          	bne	a2,a3,a000452c <memcpy+0xe4>
a00047d2:	fff5c703          	lbu	a4,-1(a1)
a00047d6:	1817d70b          	sbia	a4,(a5),1,0
a00047da:	872e                	mv	a4,a1
a00047dc:	b5c1                	j	a000469c <memcpy+0x254>
a00047de:	01885893          	srli	a7,a6,0x18
a00047e2:	5845c80b          	lwia	a6,(a1),4,0
a00047e6:	177d                	addi	a4,a4,-1
a00047e8:	00881693          	slli	a3,a6,0x8
a00047ec:	0116e6b3          	or	a3,a3,a7
a00047f0:	5847d68b          	swia	a3,(a5),4,0
a00047f4:	bf5d                	j	a00047aa <memcpy+0x362>
a00047f6:	0005a883          	lw	a7,0(a1)
a00047fa:	01885813          	srli	a6,a6,0x18
a00047fe:	00889313          	slli	t1,a7,0x8
a0004802:	01036833          	or	a6,t1,a6
a0004806:	0106a023          	sw	a6,0(a3)
a000480a:	0045a803          	lw	a6,4(a1)
a000480e:	0188d893          	srli	a7,a7,0x18
a0004812:	00881313          	slli	t1,a6,0x8
a0004816:	011368b3          	or	a7,t1,a7
a000481a:	0116a223          	sw	a7,4(a3)
a000481e:	01885893          	srli	a7,a6,0x18
a0004822:	0085a803          	lw	a6,8(a1)
a0004826:	00881313          	slli	t1,a6,0x8
a000482a:	011368b3          	or	a7,t1,a7
a000482e:	0116a423          	sw	a7,8(a3)
a0004832:	01885893          	srli	a7,a6,0x18
a0004836:	00c5a803          	lw	a6,12(a1)
a000483a:	00881313          	slli	t1,a6,0x8
a000483e:	011368b3          	or	a7,t1,a7
a0004842:	0116a623          	sw	a7,12(a3)
a0004846:	01885893          	srli	a7,a6,0x18
a000484a:	0105a803          	lw	a6,16(a1)
a000484e:	00881313          	slli	t1,a6,0x8
a0004852:	011368b3          	or	a7,t1,a7
a0004856:	0116a823          	sw	a7,16(a3)
a000485a:	01885893          	srli	a7,a6,0x18
a000485e:	0145a803          	lw	a6,20(a1)
a0004862:	00881313          	slli	t1,a6,0x8
a0004866:	011368b3          	or	a7,t1,a7
a000486a:	0116aa23          	sw	a7,20(a3)
a000486e:	01885893          	srli	a7,a6,0x18
a0004872:	0185a803          	lw	a6,24(a1)
a0004876:	00881313          	slli	t1,a6,0x8
a000487a:	011368b3          	or	a7,t1,a7
a000487e:	0116ac23          	sw	a7,24(a3)
a0004882:	01885893          	srli	a7,a6,0x18
a0004886:	01c5a803          	lw	a6,28(a1)
a000488a:	02058593          	addi	a1,a1,32
a000488e:	00881313          	slli	t1,a6,0x8
a0004892:	011368b3          	or	a7,t1,a7
a0004896:	0116ae23          	sw	a7,28(a3)
a000489a:	02068693          	addi	a3,a3,32
a000489e:	bf31                	j	a00047ba <memcpy+0x372>

a00048a0 <out_buffer>:
a00048a0:	00d67463          	bgeu	a2,a3,a00048a8 <out_buffer+0x8>
a00048a4:	00c5d50b          	srb	a0,a1,a2,0
a00048a8:	8082                	ret

a00048aa <out_discard>:
a00048aa:	8082                	ret

a00048ac <out_rev_>:
a00048ac:	7179                	addi	sp,sp,-48
a00048ae:	d422                	sw	s0,40(sp)
a00048b0:	d226                	sw	s1,36(sp)
a00048b2:	d04a                	sw	s2,32(sp)
a00048b4:	ce4e                	sw	s3,28(sp)
a00048b6:	cc52                	sw	s4,24(sp)
a00048b8:	ca56                	sw	s5,20(sp)
a00048ba:	c85a                	sw	s6,16(sp)
a00048bc:	c65e                	sw	s7,12(sp)
a00048be:	c462                	sw	s8,8(sp)
a00048c0:	84be                	mv	s1,a5
a00048c2:	d606                	sw	ra,44(sp)
a00048c4:	c266                	sw	s9,4(sp)
a00048c6:	0038f793          	andi	a5,a7,3
a00048ca:	8aaa                	mv	s5,a0
a00048cc:	8b2e                	mv	s6,a1
a00048ce:	8932                	mv	s2,a2
a00048d0:	8bb6                	mv	s7,a3
a00048d2:	8c3a                	mv	s8,a4
a00048d4:	89c2                	mv	s3,a6
a00048d6:	8a46                	mv	s4,a7
a00048d8:	8432                	mv	s0,a2
a00048da:	e78d                	bnez	a5,a0004904 <out_rev_+0x58>
a00048dc:	8426                	mv	s0,s1
a00048de:	40960cb3          	sub	s9,a2,s1
a00048e2:	a039                	j	a00048f0 <out_rev_+0x44>
a00048e4:	86de                	mv	a3,s7
a00048e6:	85da                	mv	a1,s6
a00048e8:	02000513          	li	a0,32
a00048ec:	9a82                	jalr	s5
a00048ee:	0405                	addi	s0,s0,1
a00048f0:	008c8633          	add	a2,s9,s0
a00048f4:	ff3468e3          	bltu	s0,s3,a00048e4 <out_rev_+0x38>
a00048f8:	4401                	li	s0,0
a00048fa:	0099e463          	bltu	s3,s1,a0004902 <out_rev_+0x56>
a00048fe:	40998433          	sub	s0,s3,s1
a0004902:	944a                	add	s0,s0,s2
a0004904:	9426                	add	s0,s0,s1
a0004906:	8522                	mv	a0,s0
a0004908:	40940633          	sub	a2,s0,s1
a000490c:	e485                	bnez	s1,a0004934 <out_rev_+0x88>
a000490e:	002a7a13          	andi	s4,s4,2
a0004912:	41240433          	sub	s0,s0,s2
a0004916:	020a1d63          	bnez	s4,a0004950 <out_rev_+0xa4>
a000491a:	50b2                	lw	ra,44(sp)
a000491c:	5422                	lw	s0,40(sp)
a000491e:	5492                	lw	s1,36(sp)
a0004920:	5902                	lw	s2,32(sp)
a0004922:	49f2                	lw	s3,28(sp)
a0004924:	4a62                	lw	s4,24(sp)
a0004926:	4ad2                	lw	s5,20(sp)
a0004928:	4b42                	lw	s6,16(sp)
a000492a:	4bb2                	lw	s7,12(sp)
a000492c:	4c22                	lw	s8,8(sp)
a000492e:	4c92                	lw	s9,4(sp)
a0004930:	6145                	addi	sp,sp,48
a0004932:	8082                	ret
a0004934:	14fd                	addi	s1,s1,-1
a0004936:	809c450b          	lrbu	a0,s8,s1,0
a000493a:	86de                	mv	a3,s7
a000493c:	85da                	mv	a1,s6
a000493e:	9a82                	jalr	s5
a0004940:	b7d9                	j	a0004906 <out_rev_+0x5a>
a0004942:	862a                	mv	a2,a0
a0004944:	86de                	mv	a3,s7
a0004946:	85da                	mv	a1,s6
a0004948:	02000513          	li	a0,32
a000494c:	9a82                	jalr	s5
a000494e:	0405                	addi	s0,s0,1
a0004950:	00890533          	add	a0,s2,s0
a0004954:	ff3467e3          	bltu	s0,s3,a0004942 <out_rev_+0x96>
a0004958:	b7c9                	j	a000491a <out_rev_+0x6e>

a000495a <print_integer>:
a000495a:	7159                	addi	sp,sp,-112
a000495c:	d4a2                	sw	s0,104(sp)
a000495e:	d0ca                	sw	s2,96(sp)
a0004960:	cece                	sw	s3,92(sp)
a0004962:	ccd2                	sw	s4,88(sp)
a0004964:	cad6                	sw	s5,84(sp)
a0004966:	c8da                	sw	s6,80(sp)
a0004968:	c6de                	sw	s7,76(sp)
a000496a:	d686                	sw	ra,108(sp)
a000496c:	8bb6                	mv	s7,a3
a000496e:	d2a6                	sw	s1,100(sp)
a0004970:	c4e2                	sw	s8,72(sp)
a0004972:	c2e6                	sw	s9,68(sp)
a0004974:	c0ea                	sw	s10,64(sp)
a0004976:	de6e                	sw	s11,60(sp)
a0004978:	00f766b3          	or	a3,a4,a5
a000497c:	8b32                	mv	s6,a2
a000497e:	59d6                	lw	s3,116(sp)
a0004980:	5466                	lw	s0,120(sp)
a0004982:	8a2a                	mv	s4,a0
a0004984:	8aae                	mv	s5,a1
a0004986:	8942                	mv	s2,a6
a0004988:	8646                	mv	a2,a7
a000498a:	e6a9                	bnez	a3,a00049d4 <print_integer+0x7a>
a000498c:	40047793          	andi	a5,s0,1024
a0004990:	ef85                	bnez	a5,a00049c8 <print_integer+0x6e>
a0004992:	03000793          	li	a5,48
a0004996:	00f10823          	sb	a5,16(sp)
a000499a:	983d                	andi	s0,s0,-17
a000499c:	4d85                	li	s11,1
a000499e:	00247713          	andi	a4,s0,2
a00049a2:	87ee                	mv	a5,s11
a00049a4:	ef4d                	bnez	a4,a0004a5e <print_integer+0x104>
a00049a6:	00147713          	andi	a4,s0,1
a00049aa:	00098963          	beqz	s3,a00049bc <print_integer+0x62>
a00049ae:	cb45                	beqz	a4,a0004a5e <print_integer+0x104>
a00049b0:	00091563          	bnez	s2,a00049ba <print_integer+0x60>
a00049b4:	00c47793          	andi	a5,s0,12
a00049b8:	c391                	beqz	a5,a00049bc <print_integer+0x62>
a00049ba:	19fd                	addi	s3,s3,-1
a00049bc:	87ee                	mv	a5,s11
a00049be:	02000693          	li	a3,32
a00049c2:	03000593          	li	a1,48
a00049c6:	a079                	j	a0004a54 <print_integer+0xfa>
a00049c8:	47c1                	li	a5,16
a00049ca:	4d81                	li	s11,0
a00049cc:	fcf899e3          	bne	a7,a5,a000499e <print_integer+0x44>
a00049d0:	983d                	andi	s0,s0,-17
a00049d2:	b7f1                	j	a000499e <print_integer+0x44>
a00049d4:	02047693          	andi	a3,s0,32
a00049d8:	06100493          	li	s1,97
a00049dc:	c299                	beqz	a3,a00049e2 <print_integer+0x88>
a00049de:	04100493          	li	s1,65
a00049e2:	4d81                	li	s11,0
a00049e4:	4d01                	li	s10,0
a00049e6:	4ca5                	li	s9,9
a00049e8:	14d9                	addi	s1,s1,-10
a00049ea:	02000c13          	li	s8,32
a00049ee:	853a                	mv	a0,a4
a00049f0:	85be                	mv	a1,a5
a00049f2:	4681                	li	a3,0
a00049f4:	c632                	sw	a2,12(sp)
a00049f6:	c43a                	sw	a4,8(sp)
a00049f8:	c23e                	sw	a5,4(sp)
a00049fa:	d67fc0ef          	jal	ra,a0001760 <__umoddi3>
a00049fe:	0ff57513          	zext.b	a0,a0
a0004a02:	4792                	lw	a5,4(sp)
a0004a04:	4722                	lw	a4,8(sp)
a0004a06:	4632                	lw	a2,12(sp)
a0004a08:	04ace063          	bltu	s9,a0,a0004a48 <print_integer+0xee>
a0004a0c:	03050513          	addi	a0,a0,48
a0004a10:	0d85                	addi	s11,s11,1
a0004a12:	010d8693          	addi	a3,s11,16
a0004a16:	0ff57513          	zext.b	a0,a0
a0004a1a:	968a                	add	a3,a3,sp
a0004a1c:	fea68fa3          	sb	a0,-1(a3)
a0004a20:	85be                	mv	a1,a5
a0004a22:	853a                	mv	a0,a4
a0004a24:	4681                	li	a3,0
a0004a26:	c632                	sw	a2,12(sp)
a0004a28:	c43a                	sw	a4,8(sp)
a0004a2a:	c23e                	sw	a5,4(sp)
a0004a2c:	9d5fc0ef          	jal	ra,a0001400 <__udivdi3>
a0004a30:	4792                	lw	a5,4(sp)
a0004a32:	4722                	lw	a4,8(sp)
a0004a34:	4632                	lw	a2,12(sp)
a0004a36:	00fd1463          	bne	s10,a5,a0004a3e <print_integer+0xe4>
a0004a3a:	f6c762e3          	bltu	a4,a2,a000499e <print_integer+0x44>
a0004a3e:	f78d80e3          	beq	s11,s8,a000499e <print_integer+0x44>
a0004a42:	872a                	mv	a4,a0
a0004a44:	87ae                	mv	a5,a1
a0004a46:	b765                	j	a00049ee <print_integer+0x94>
a0004a48:	9526                	add	a0,a0,s1
a0004a4a:	b7d9                	j	a0004a10 <print_integer+0xb6>
a0004a4c:	0808                	addi	a0,sp,16
a0004a4e:	00f5558b          	srb	a1,a0,a5,0
a0004a52:	0785                	addi	a5,a5,1
a0004a54:	c709                	beqz	a4,a0004a5e <print_integer+0x104>
a0004a56:	0137f463          	bgeu	a5,s3,a0004a5e <print_integer+0x104>
a0004a5a:	fed799e3          	bne	a5,a3,a0004a4c <print_integer+0xf2>
a0004a5e:	02000713          	li	a4,32
a0004a62:	03000693          	li	a3,48
a0004a66:	a029                	j	a0004a70 <print_integer+0x116>
a0004a68:	080c                	addi	a1,sp,16
a0004a6a:	00f5d68b          	srb	a3,a1,a5,0
a0004a6e:	0785                	addi	a5,a5,1
a0004a70:	55c6                	lw	a1,112(sp)
a0004a72:	00b7f463          	bgeu	a5,a1,a0004a7a <print_integer+0x120>
a0004a76:	fee799e3          	bne	a5,a4,a0004a68 <print_integer+0x10e>
a0004a7a:	4721                	li	a4,8
a0004a7c:	00e61563          	bne	a2,a4,a0004a86 <print_integer+0x12c>
a0004a80:	00fdf363          	bgeu	s11,a5,a0004a86 <print_integer+0x12c>
a0004a84:	983d                	andi	s0,s0,-17
a0004a86:	6705                	lui	a4,0x1
a0004a88:	0741                	addi	a4,a4,16
a0004a8a:	8f61                	and	a4,a4,s0
a0004a8c:	cb39                	beqz	a4,a0004ae2 <print_integer+0x188>
a0004a8e:	40047713          	andi	a4,s0,1024
a0004a92:	e345                	bnez	a4,a0004b32 <print_integer+0x1d8>
a0004a94:	cfd9                	beqz	a5,a0004b32 <print_integer+0x1d8>
a0004a96:	5746                	lw	a4,112(sp)
a0004a98:	00f70463          	beq	a4,a5,a0004aa0 <print_integer+0x146>
a0004a9c:	08f99b63          	bne	s3,a5,a0004b32 <print_integer+0x1d8>
a0004aa0:	08fdf963          	bgeu	s11,a5,a0004b32 <print_integer+0x1d8>
a0004aa4:	fff78713          	addi	a4,a5,-1
a0004aa8:	c741                	beqz	a4,a0004b30 <print_integer+0x1d6>
a0004aaa:	46c1                	li	a3,16
a0004aac:	08d61763          	bne	a2,a3,a0004b3a <print_integer+0x1e0>
a0004ab0:	17f9                	addi	a5,a5,-2
a0004ab2:	00ede363          	bltu	s11,a4,a0004ab8 <print_integer+0x15e>
a0004ab6:	87ba                	mv	a5,a4
a0004ab8:	02047713          	andi	a4,s0,32
a0004abc:	eb49                	bnez	a4,a0004b4e <print_integer+0x1f4>
a0004abe:	477d                	li	a4,31
a0004ac0:	04f76163          	bltu	a4,a5,a0004b02 <print_integer+0x1a8>
a0004ac4:	07800713          	li	a4,120
a0004ac8:	0814                	addi	a3,sp,16
a0004aca:	00f6d70b          	srb	a4,a3,a5,0
a0004ace:	0785                	addi	a5,a5,1
a0004ad0:	477d                	li	a4,31
a0004ad2:	02f76863          	bltu	a4,a5,a0004b02 <print_integer+0x1a8>
a0004ad6:	03000713          	li	a4,48
a0004ada:	0814                	addi	a3,sp,16
a0004adc:	00f6d70b          	srb	a4,a3,a5,0
a0004ae0:	0785                	addi	a5,a5,1
a0004ae2:	477d                	li	a4,31
a0004ae4:	00f76f63          	bltu	a4,a5,a0004b02 <print_integer+0x1a8>
a0004ae8:	02d00713          	li	a4,45
a0004aec:	00091763          	bnez	s2,a0004afa <print_integer+0x1a0>
a0004af0:	00447713          	andi	a4,s0,4
a0004af4:	c33d                	beqz	a4,a0004b5a <print_integer+0x200>
a0004af6:	02b00713          	li	a4,43
a0004afa:	0814                	addi	a3,sp,16
a0004afc:	00f6d70b          	srb	a4,a3,a5,0
a0004b00:	0785                	addi	a5,a5,1
a0004b02:	88a2                	mv	a7,s0
a0004b04:	884e                	mv	a6,s3
a0004b06:	0818                	addi	a4,sp,16
a0004b08:	86de                	mv	a3,s7
a0004b0a:	865a                	mv	a2,s6
a0004b0c:	85d6                	mv	a1,s5
a0004b0e:	8552                	mv	a0,s4
a0004b10:	3b71                	jal	a00048ac <out_rev_>
a0004b12:	50b6                	lw	ra,108(sp)
a0004b14:	5426                	lw	s0,104(sp)
a0004b16:	5496                	lw	s1,100(sp)
a0004b18:	5906                	lw	s2,96(sp)
a0004b1a:	49f6                	lw	s3,92(sp)
a0004b1c:	4a66                	lw	s4,88(sp)
a0004b1e:	4ad6                	lw	s5,84(sp)
a0004b20:	4b46                	lw	s6,80(sp)
a0004b22:	4bb6                	lw	s7,76(sp)
a0004b24:	4c26                	lw	s8,72(sp)
a0004b26:	4c96                	lw	s9,68(sp)
a0004b28:	4d06                	lw	s10,64(sp)
a0004b2a:	5df2                	lw	s11,60(sp)
a0004b2c:	6165                	addi	sp,sp,112
a0004b2e:	8082                	ret
a0004b30:	4781                	li	a5,0
a0004b32:	4741                	li	a4,16
a0004b34:	00e61463          	bne	a2,a4,a0004b3c <print_integer+0x1e2>
a0004b38:	b741                	j	a0004ab8 <print_integer+0x15e>
a0004b3a:	87ba                	mv	a5,a4
a0004b3c:	4709                	li	a4,2
a0004b3e:	f8e619e3          	bne	a2,a4,a0004ad0 <print_integer+0x176>
a0004b42:	477d                	li	a4,31
a0004b44:	faf76fe3          	bltu	a4,a5,a0004b02 <print_integer+0x1a8>
a0004b48:	06200713          	li	a4,98
a0004b4c:	bfb5                	j	a0004ac8 <print_integer+0x16e>
a0004b4e:	477d                	li	a4,31
a0004b50:	faf769e3          	bltu	a4,a5,a0004b02 <print_integer+0x1a8>
a0004b54:	05800713          	li	a4,88
a0004b58:	bf85                	j	a0004ac8 <print_integer+0x16e>
a0004b5a:	00847713          	andi	a4,s0,8
a0004b5e:	d355                	beqz	a4,a0004b02 <print_integer+0x1a8>
a0004b60:	02000713          	li	a4,32
a0004b64:	bf59                	j	a0004afa <print_integer+0x1a0>

a0004b66 <get_components>:
a0004b66:	715d                	addi	sp,sp,-80
a0004b68:	01f65793          	srli	a5,a2,0x1f
a0004b6c:	dc52                	sw	s4,56(sp)
a0004b6e:	da56                	sw	s5,52(sp)
a0004b70:	d462                	sw	s8,40(sp)
a0004b72:	d266                	sw	s9,36(sp)
a0004b74:	c686                	sw	ra,76(sp)
a0004b76:	c4a2                	sw	s0,72(sp)
a0004b78:	c2a6                	sw	s1,68(sp)
a0004b7a:	c0ca                	sw	s2,64(sp)
a0004b7c:	de4e                	sw	s3,60(sp)
a0004b7e:	d85a                	sw	s6,48(sp)
a0004b80:	d65e                	sw	s7,44(sp)
a0004b82:	d06a                	sw	s10,32(sp)
a0004b84:	ce6e                	sw	s11,28(sp)
a0004b86:	c03e                	sw	a5,0(sp)
a0004b88:	8aaa                	mv	s5,a0
a0004b8a:	8c2e                	mv	s8,a1
a0004b8c:	8a32                	mv	s4,a2
a0004b8e:	8cb6                	mv	s9,a3
a0004b90:	c789                	beqz	a5,a0004b9a <get_components+0x34>
a0004b92:	800007b7          	lui	a5,0x80000
a0004b96:	00c7ca33          	xor	s4,a5,a2
a0004b9a:	8562                	mv	a0,s8
a0004b9c:	85d2                	mv	a1,s4
a0004b9e:	ff9fe0ef          	jal	ra,a0003b96 <__fixdfdi>
a0004ba2:	a00097b7          	lui	a5,0xa0009
a0004ba6:	a8878793          	addi	a5,a5,-1400 # a0008a88 <__psram_limit+0xf7c08a88>
a0004baa:	0797978b          	addsl	a5,a5,s9,3
a0004bae:	0007ab03          	lw	s6,0(a5)
a0004bb2:	0047ab83          	lw	s7,4(a5)
a0004bb6:	892a                	mv	s2,a0
a0004bb8:	89ae                	mv	s3,a1
a0004bba:	8e0ff0ef          	jal	ra,a0003c9a <__floatdidf>
a0004bbe:	862a                	mv	a2,a0
a0004bc0:	86ae                	mv	a3,a1
a0004bc2:	8562                	mv	a0,s8
a0004bc4:	85d2                	mv	a1,s4
a0004bc6:	da4fe0ef          	jal	ra,a000316a <__subdf3>
a0004bca:	865a                	mv	a2,s6
a0004bcc:	86de                	mv	a3,s7
a0004bce:	802fe0ef          	jal	ra,a0002bd0 <__muldf3>
a0004bd2:	8d2a                	mv	s10,a0
a0004bd4:	8dae                	mv	s11,a1
a0004bd6:	fc1fe0ef          	jal	ra,a0003b96 <__fixdfdi>
a0004bda:	842a                	mv	s0,a0
a0004bdc:	84ae                	mv	s1,a1
a0004bde:	8bcff0ef          	jal	ra,a0003c9a <__floatdidf>
a0004be2:	862a                	mv	a2,a0
a0004be4:	86ae                	mv	a3,a1
a0004be6:	856a                	mv	a0,s10
a0004be8:	85ee                	mv	a1,s11
a0004bea:	d80fe0ef          	jal	ra,a000316a <__subdf3>
a0004bee:	a0009837          	lui	a6,0xa0009
a0004bf2:	a0082d03          	lw	s10,-1536(a6) # a0008a00 <__psram_limit+0xf7c08a00>
a0004bf6:	a0482d83          	lw	s11,-1532(a6)
a0004bfa:	c42a                	sw	a0,8(sp)
a0004bfc:	866a                	mv	a2,s10
a0004bfe:	86ee                	mv	a3,s11
a0004c00:	c62e                	sw	a1,12(sp)
a0004c02:	e73fd0ef          	jal	ra,a0002a74 <__gedf2>
a0004c06:	a0009837          	lui	a6,0xa0009
a0004c0a:	c242                	sw	a6,4(sp)
a0004c0c:	4722                	lw	a4,8(sp)
a0004c0e:	47b2                	lw	a5,12(sp)
a0004c10:	0aa05963          	blez	a0,a0004cc2 <get_components+0x15c>
a0004c14:	4d05                	li	s10,1
a0004c16:	4d81                	li	s11,0
a0004c18:	c1a41477          	add64	s0,s0,s10
a0004c1c:	8522                	mv	a0,s0
a0004c1e:	85a6                	mv	a1,s1
a0004c20:	87aff0ef          	jal	ra,a0003c9a <__floatdidf>
a0004c24:	862a                	mv	a2,a0
a0004c26:	86ae                	mv	a3,a1
a0004c28:	855a                	mv	a0,s6
a0004c2a:	85de                	mv	a1,s7
a0004c2c:	ef7fd0ef          	jal	ra,a0002b22 <__ledf2>
a0004c30:	00a04663          	bgtz	a0,a0004c3c <get_components+0xd6>
a0004c34:	c1a91977          	add64	s2,s2,s10
a0004c38:	4401                	li	s0,0
a0004c3a:	4481                	li	s1,0
a0004c3c:	040c9863          	bnez	s9,a0004c8c <get_components+0x126>
a0004c40:	854a                	mv	a0,s2
a0004c42:	85ce                	mv	a1,s3
a0004c44:	856ff0ef          	jal	ra,a0003c9a <__floatdidf>
a0004c48:	862a                	mv	a2,a0
a0004c4a:	86ae                	mv	a3,a1
a0004c4c:	8562                	mv	a0,s8
a0004c4e:	85d2                	mv	a1,s4
a0004c50:	d1afe0ef          	jal	ra,a000316a <__subdf3>
a0004c54:	4792                	lw	a5,4(sp)
a0004c56:	8c2a                	mv	s8,a0
a0004c58:	8cae                	mv	s9,a1
a0004c5a:	a007ab03          	lw	s6,-1536(a5)
a0004c5e:	a047ab83          	lw	s7,-1532(a5)
a0004c62:	865a                	mv	a2,s6
a0004c64:	86de                	mv	a3,s7
a0004c66:	ebdfd0ef          	jal	ra,a0002b22 <__ledf2>
a0004c6a:	00055a63          	bgez	a0,a0004c7e <get_components+0x118>
a0004c6e:	865a                	mv	a2,s6
a0004c70:	86de                	mv	a3,s7
a0004c72:	8562                	mv	a0,s8
a0004c74:	85e6                	mv	a1,s9
a0004c76:	dfffd0ef          	jal	ra,a0002a74 <__gedf2>
a0004c7a:	00a05963          	blez	a0,a0004c8c <get_components+0x126>
a0004c7e:	00197793          	andi	a5,s2,1
a0004c82:	c789                	beqz	a5,a0004c8c <get_components+0x126>
a0004c84:	4705                	li	a4,1
a0004c86:	4781                	li	a5,0
a0004c88:	c0e91977          	add64	s2,s2,a4
a0004c8c:	4782                	lw	a5,0(sp)
a0004c8e:	008aa423          	sw	s0,8(s5)
a0004c92:	40b6                	lw	ra,76(sp)
a0004c94:	4426                	lw	s0,72(sp)
a0004c96:	012aa023          	sw	s2,0(s5)
a0004c9a:	013aa223          	sw	s3,4(s5)
a0004c9e:	009aa623          	sw	s1,12(s5)
a0004ca2:	00fa8823          	sb	a5,16(s5)
a0004ca6:	4496                	lw	s1,68(sp)
a0004ca8:	4906                	lw	s2,64(sp)
a0004caa:	59f2                	lw	s3,60(sp)
a0004cac:	5a62                	lw	s4,56(sp)
a0004cae:	5b42                	lw	s6,48(sp)
a0004cb0:	5bb2                	lw	s7,44(sp)
a0004cb2:	5c22                	lw	s8,40(sp)
a0004cb4:	5c92                	lw	s9,36(sp)
a0004cb6:	5d02                	lw	s10,32(sp)
a0004cb8:	4df2                	lw	s11,28(sp)
a0004cba:	8556                	mv	a0,s5
a0004cbc:	5ad2                	lw	s5,52(sp)
a0004cbe:	6161                	addi	sp,sp,80
a0004cc0:	8082                	ret
a0004cc2:	866a                	mv	a2,s10
a0004cc4:	86ee                	mv	a3,s11
a0004cc6:	853a                	mv	a0,a4
a0004cc8:	85be                	mv	a1,a5
a0004cca:	d07fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004cce:	f53d                	bnez	a0,a0004c3c <get_components+0xd6>
a0004cd0:	009467b3          	or	a5,s0,s1
a0004cd4:	c781                	beqz	a5,a0004cdc <get_components+0x176>
a0004cd6:	00147793          	andi	a5,s0,1
a0004cda:	d3ad                	beqz	a5,a0004c3c <get_components+0xd6>
a0004cdc:	4705                	li	a4,1
a0004cde:	4781                	li	a5,0
a0004ce0:	c0e41477          	add64	s0,s0,a4
a0004ce4:	bfa1                	j	a0004c3c <get_components+0xd6>

a0004ce6 <out_console>:
a0004ce6:	62fc37b7          	lui	a5,0x62fc3
a0004cea:	85aa                	mv	a1,a0
a0004cec:	ee07a503          	lw	a0,-288(a5) # 62fc2ee0 <console>
a0004cf0:	c2fbc317          	auipc	t1,0xc2fbc
a0004cf4:	a7c30067          	jr	-1412(t1) # 62fc076c <qcc74x_uart_putchar>

a0004cf8 <print_broken_up_decimal.isra.0>:
a0004cf8:	715d                	addi	sp,sp,-80
a0004cfa:	d266                	sw	s9,36(sp)
a0004cfc:	4cd6                	lw	s9,84(sp)
a0004cfe:	c4a2                	sw	s0,72(sp)
a0004d00:	c0ca                	sw	s2,64(sp)
a0004d02:	dc52                	sw	s4,56(sp)
a0004d04:	da56                	sw	s5,52(sp)
a0004d06:	d85a                	sw	s6,48(sp)
a0004d08:	d65e                	sw	s7,44(sp)
a0004d0a:	d462                	sw	s8,40(sp)
a0004d0c:	d06a                	sw	s10,32(sp)
a0004d0e:	c686                	sw	ra,76(sp)
a0004d10:	c2a6                	sw	s1,68(sp)
a0004d12:	de4e                	sw	s3,60(sp)
a0004d14:	ce6e                	sw	s11,28(sp)
a0004d16:	c23e                	sw	a5,4(sp)
a0004d18:	c442                	sw	a6,8(sp)
a0004d1a:	c646                	sw	a7,12(sp)
a0004d1c:	4d46                	lw	s10,80(sp)
a0004d1e:	4be6                	lw	s7,88(sp)
a0004d20:	4c76                	lw	s8,92(sp)
a0004d22:	5906                	lw	s2,96(sp)
a0004d24:	5416                	lw	s0,100(sp)
a0004d26:	8a2a                	mv	s4,a0
a0004d28:	8aae                	mv	s5,a1
a0004d2a:	8b3a                	mv	s6,a4
a0004d2c:	0a0c8563          	beqz	s9,a0004dd6 <print_broken_up_decimal.isra.0+0xde>
a0004d30:	6705                	lui	a4,0x1
a0004d32:	81070713          	addi	a4,a4,-2032 # 810 <__RFTLV_SIZE_HOLE+0x10>
a0004d36:	00ec7733          	and	a4,s8,a4
a0004d3a:	80070713          	addi	a4,a4,-2048
a0004d3e:	89b2                	mv	s3,a2
a0004d40:	84b6                	mv	s1,a3
a0004d42:	14071a63          	bnez	a4,a0004e96 <print_broken_up_decimal.isra.0+0x19e>
a0004d46:	00d04463          	bgtz	a3,a0004d4e <print_broken_up_decimal.isra.0+0x56>
a0004d4a:	e2d5                	bnez	a3,a0004dee <print_broken_up_decimal.isra.0+0xf6>
a0004d4c:	c24d                	beqz	a2,a0004dee <print_broken_up_decimal.isra.0+0xf6>
a0004d4e:	4629                	li	a2,10
a0004d50:	4681                	li	a3,0
a0004d52:	854e                	mv	a0,s3
a0004d54:	85a6                	mv	a1,s1
a0004d56:	b26fc0ef          	jal	ra,a000107c <__moddi3>
a0004d5a:	8d4d                	or	a0,a0,a1
a0004d5c:	12051a63          	bnez	a0,a0004e90 <print_broken_up_decimal.isra.0+0x198>
a0004d60:	854e                	mv	a0,s3
a0004d62:	85a6                	mv	a1,s1
a0004d64:	4629                	li	a2,10
a0004d66:	4681                	li	a3,0
a0004d68:	f6dfb0ef          	jal	ra,a0000cd4 <__divdi3>
a0004d6c:	1cfd                	addi	s9,s9,-1
a0004d6e:	89aa                	mv	s3,a0
a0004d70:	84ae                	mv	s1,a1
a0004d72:	bff1                	j	a0004d4e <print_broken_up_decimal.isra.0+0x56>
a0004d74:	4629                	li	a2,10
a0004d76:	4681                	li	a3,0
a0004d78:	854e                	mv	a0,s3
a0004d7a:	85a6                	mv	a1,s1
a0004d7c:	b00fc0ef          	jal	ra,a000107c <__moddi3>
a0004d80:	03050513          	addi	a0,a0,48
a0004d84:	0405                	addi	s0,s0,1
a0004d86:	008dd50b          	srb	a0,s11,s0,0
a0004d8a:	85a6                	mv	a1,s1
a0004d8c:	854e                	mv	a0,s3
a0004d8e:	4629                	li	a2,10
a0004d90:	4681                	li	a3,0
a0004d92:	f43fb0ef          	jal	ra,a0000cd4 <__divdi3>
a0004d96:	84ae                	mv	s1,a1
a0004d98:	8dc9                	or	a1,a1,a0
a0004d9a:	1cfd                	addi	s9,s9,-1
a0004d9c:	89aa                	mv	s3,a0
a0004d9e:	02000713          	li	a4,32
a0004da2:	0e059e63          	bnez	a1,a0004e9e <print_broken_up_decimal.isra.0+0x1a6>
a0004da6:	008c87b3          	add	a5,s9,s0
a0004daa:	02000613          	li	a2,32
a0004dae:	03000593          	li	a1,48
a0004db2:	0ec40863          	beq	s0,a2,a0004ea2 <print_broken_up_decimal.isra.0+0x1aa>
a0004db6:	00140713          	addi	a4,s0,1
a0004dba:	008906b3          	add	a3,s2,s0
a0004dbe:	00879863          	bne	a5,s0,a0004dce <print_broken_up_decimal.isra.0+0xd6>
a0004dc2:	02e00793          	li	a5,46
a0004dc6:	00f68023          	sb	a5,0(a3)
a0004dca:	843a                	mv	s0,a4
a0004dcc:	a00d                	j	a0004dee <print_broken_up_decimal.isra.0+0xf6>
a0004dce:	0089558b          	srb	a1,s2,s0,0
a0004dd2:	843a                	mv	s0,a4
a0004dd4:	bff9                	j	a0004db2 <print_broken_up_decimal.isra.0+0xba>
a0004dd6:	010c7793          	andi	a5,s8,16
a0004dda:	cb91                	beqz	a5,a0004dee <print_broken_up_decimal.isra.0+0xf6>
a0004ddc:	02000793          	li	a5,32
a0004de0:	0cf40163          	beq	s0,a5,a0004ea2 <print_broken_up_decimal.isra.0+0x1aa>
a0004de4:	02e00793          	li	a5,46
a0004de8:	0089578b          	srb	a5,s2,s0,0
a0004dec:	0405                	addi	s0,s0,1
a0004dee:	02000993          	li	s3,32
a0004df2:	fff90493          	addi	s1,s2,-1
a0004df6:	a035                	j	a0004e22 <print_broken_up_decimal.isra.0+0x12a>
a0004df8:	4629                	li	a2,10
a0004dfa:	4681                	li	a3,0
a0004dfc:	8552                	mv	a0,s4
a0004dfe:	85d6                	mv	a1,s5
a0004e00:	a7cfc0ef          	jal	ra,a000107c <__moddi3>
a0004e04:	03050513          	addi	a0,a0,48
a0004e08:	0405                	addi	s0,s0,1
a0004e0a:	0084d50b          	srb	a0,s1,s0,0
a0004e0e:	85d6                	mv	a1,s5
a0004e10:	8552                	mv	a0,s4
a0004e12:	4629                	li	a2,10
a0004e14:	4681                	li	a3,0
a0004e16:	ebffb0ef          	jal	ra,a0000cd4 <__divdi3>
a0004e1a:	8aae                	mv	s5,a1
a0004e1c:	8dc9                	or	a1,a1,a0
a0004e1e:	8a2a                	mv	s4,a0
a0004e20:	c1d9                	beqz	a1,a0004ea6 <print_broken_up_decimal.isra.0+0x1ae>
a0004e22:	fd341be3          	bne	s0,s3,a0004df8 <print_broken_up_decimal.isra.0+0x100>
a0004e26:	a8b5                	j	a0004ea2 <print_broken_up_decimal.isra.0+0x1aa>
a0004e28:	0089570b          	srb	a4,s2,s0,0
a0004e2c:	0405                	addi	s0,s0,1
a0004e2e:	03747b63          	bgeu	s0,s7,a0004e64 <print_broken_up_decimal.isra.0+0x16c>
a0004e32:	fef41be3          	bne	s0,a5,a0004e28 <print_broken_up_decimal.isra.0+0x130>
a0004e36:	87a2                	mv	a5,s0
a0004e38:	4426                	lw	s0,72(sp)
a0004e3a:	4632                	lw	a2,12(sp)
a0004e3c:	45a2                	lw	a1,8(sp)
a0004e3e:	4512                	lw	a0,4(sp)
a0004e40:	40b6                	lw	ra,76(sp)
a0004e42:	4496                	lw	s1,68(sp)
a0004e44:	59f2                	lw	s3,60(sp)
a0004e46:	5a62                	lw	s4,56(sp)
a0004e48:	5ad2                	lw	s5,52(sp)
a0004e4a:	5b42                	lw	s6,48(sp)
a0004e4c:	5c92                	lw	s9,36(sp)
a0004e4e:	4df2                	lw	s11,28(sp)
a0004e50:	88e2                	mv	a7,s8
a0004e52:	885e                	mv	a6,s7
a0004e54:	5c22                	lw	s8,40(sp)
a0004e56:	5bb2                	lw	s7,44(sp)
a0004e58:	874a                	mv	a4,s2
a0004e5a:	86ea                	mv	a3,s10
a0004e5c:	4906                	lw	s2,64(sp)
a0004e5e:	5d02                	lw	s10,32(sp)
a0004e60:	6161                	addi	sp,sp,80
a0004e62:	b4a9                	j	a00048ac <out_rev_>
a0004e64:	02000793          	li	a5,32
a0004e68:	fcf407e3          	beq	s0,a5,a0004e36 <print_broken_up_decimal.isra.0+0x13e>
a0004e6c:	000b0863          	beqz	s6,a0004e7c <print_broken_up_decimal.isra.0+0x184>
a0004e70:	02d00793          	li	a5,45
a0004e74:	0089578b          	srb	a5,s2,s0,0
a0004e78:	0405                	addi	s0,s0,1
a0004e7a:	bf75                	j	a0004e36 <print_broken_up_decimal.isra.0+0x13e>
a0004e7c:	004c7713          	andi	a4,s8,4
a0004e80:	c701                	beqz	a4,a0004e88 <print_broken_up_decimal.isra.0+0x190>
a0004e82:	02b00793          	li	a5,43
a0004e86:	b7fd                	j	a0004e74 <print_broken_up_decimal.isra.0+0x17c>
a0004e88:	008c7713          	andi	a4,s8,8
a0004e8c:	d74d                	beqz	a4,a0004e36 <print_broken_up_decimal.isra.0+0x13e>
a0004e8e:	b7dd                	j	a0004e74 <print_broken_up_decimal.isra.0+0x17c>
a0004e90:	0099e733          	or	a4,s3,s1
a0004e94:	df29                	beqz	a4,a0004dee <print_broken_up_decimal.isra.0+0xf6>
a0004e96:	02000713          	li	a4,32
a0004e9a:	fff90d93          	addi	s11,s2,-1
a0004e9e:	ece41be3          	bne	s0,a4,a0004d74 <print_broken_up_decimal.isra.0+0x7c>
a0004ea2:	02000413          	li	s0,32
a0004ea6:	003c7793          	andi	a5,s8,3
a0004eaa:	4705                	li	a4,1
a0004eac:	fae79ce3          	bne	a5,a4,a0004e64 <print_broken_up_decimal.isra.0+0x16c>
a0004eb0:	fa0b8ae3          	beqz	s7,a0004e64 <print_broken_up_decimal.isra.0+0x16c>
a0004eb4:	000b1563          	bnez	s6,a0004ebe <print_broken_up_decimal.isra.0+0x1c6>
a0004eb8:	00cc7793          	andi	a5,s8,12
a0004ebc:	c391                	beqz	a5,a0004ec0 <print_broken_up_decimal.isra.0+0x1c8>
a0004ebe:	1bfd                	addi	s7,s7,-1
a0004ec0:	02000793          	li	a5,32
a0004ec4:	03000713          	li	a4,48
a0004ec8:	b79d                	j	a0004e2e <print_broken_up_decimal.isra.0+0x136>

a0004eca <update_normalization>:
a0004eca:	0085c783          	lbu	a5,8(a1)
a0004ece:	1141                	addi	sp,sp,-16
a0004ed0:	c422                	sw	s0,8(sp)
a0004ed2:	c606                	sw	ra,12(sp)
a0004ed4:	842a                	mv	s0,a0
a0004ed6:	0005a303          	lw	t1,0(a1)
a0004eda:	0045a803          	lw	a6,4(a1)
a0004ede:	88b2                	mv	a7,a2
a0004ee0:	8536                	mv	a0,a3
a0004ee2:	c799                	beqz	a5,a0004ef0 <update_normalization+0x26>
a0004ee4:	851a                	mv	a0,t1
a0004ee6:	85c2                	mv	a1,a6
a0004ee8:	ce9fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004eec:	4785                	li	a5,1
a0004eee:	a815                	j	a0004f22 <update_normalization+0x58>
a0004ef0:	7948378b          	extu	a5,a6,30,20
a0004ef4:	c0178793          	addi	a5,a5,-1023
a0004ef8:	41f7d713          	srai	a4,a5,0x1f
a0004efc:	8fb9                	xor	a5,a5,a4
a0004efe:	40e78733          	sub	a4,a5,a4
a0004f02:	7946b78b          	extu	a5,a3,30,20
a0004f06:	c0178793          	addi	a5,a5,-1023
a0004f0a:	41f7d693          	srai	a3,a5,0x1f
a0004f0e:	8fb5                	xor	a5,a5,a3
a0004f10:	8f95                	sub	a5,a5,a3
a0004f12:	02e7d163          	bge	a5,a4,a0004f34 <update_normalization+0x6a>
a0004f16:	86aa                	mv	a3,a0
a0004f18:	85c2                	mv	a1,a6
a0004f1a:	851a                	mv	a0,t1
a0004f1c:	c2cfd0ef          	jal	ra,a0002348 <__divdf3>
a0004f20:	4781                	li	a5,0
a0004f22:	c008                	sw	a0,0(s0)
a0004f24:	40b2                	lw	ra,12(sp)
a0004f26:	c04c                	sw	a1,4(s0)
a0004f28:	00f40423          	sb	a5,8(s0)
a0004f2c:	8522                	mv	a0,s0
a0004f2e:	4422                	lw	s0,8(sp)
a0004f30:	0141                	addi	sp,sp,16
a0004f32:	8082                	ret
a0004f34:	87aa                	mv	a5,a0
a0004f36:	861a                	mv	a2,t1
a0004f38:	86c2                	mv	a3,a6
a0004f3a:	8546                	mv	a0,a7
a0004f3c:	85be                	mv	a1,a5
a0004f3e:	c0afd0ef          	jal	ra,a0002348 <__divdf3>
a0004f42:	b76d                	j	a0004eec <update_normalization+0x22>

a0004f44 <print_exponential_number>:
a0004f44:	7155                	addi	sp,sp,-208
a0004f46:	d95a                	sw	s6,176(sp)
a0004f48:	8b3e                	mv	s6,a5
a0004f4a:	83fd                	srli	a5,a5,0x1f
a0004f4c:	c3a6                	sw	s1,196(sp)
a0004f4e:	c1ca                	sw	s2,192(sp)
a0004f50:	d75e                	sw	s7,172(sp)
a0004f52:	d16a                	sw	s10,160(sp)
a0004f54:	cf6e                	sw	s11,156(sp)
a0004f56:	c786                	sw	ra,204(sp)
a0004f58:	c5a2                	sw	s0,200(sp)
a0004f5a:	df4e                	sw	s3,188(sp)
a0004f5c:	dd52                	sw	s4,184(sp)
a0004f5e:	db56                	sw	s5,180(sp)
a0004f60:	d562                	sw	s8,168(sp)
a0004f62:	d366                	sw	s9,164(sp)
a0004f64:	d62e                	sw	a1,44(sp)
a0004f66:	da32                	sw	a2,52(sp)
a0004f68:	d836                	sw	a3,48(sp)
a0004f6a:	dc46                	sw	a7,56(sp)
a0004f6c:	de3e                	sw	a5,60(sp)
a0004f6e:	4dce                	lw	s11,208(sp)
a0004f70:	8d2a                	mv	s10,a0
a0004f72:	8bba                	mv	s7,a4
a0004f74:	84c2                	mv	s1,a6
a0004f76:	4901                	li	s2,0
a0004f78:	c789                	beqz	a5,a0004f82 <print_exponential_number+0x3e>
a0004f7a:	800007b7          	lui	a5,0x80000
a0004f7e:	0167cb33          	xor	s6,a5,s6
a0004f82:	4601                	li	a2,0
a0004f84:	4681                	li	a3,0
a0004f86:	855e                	mv	a0,s7
a0004f88:	85da                	mv	a1,s6
a0004f8a:	a47fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0004f8e:	4401                	li	s0,0
a0004f90:	20050363          	beqz	a0,a0005196 <print_exponential_number+0x252>
a0004f94:	794b350b          	extu	a0,s6,30,20
a0004f98:	c0150513          	addi	a0,a0,-1023
a0004f9c:	b47fe0ef          	jal	ra,a0003ae2 <__floatsidf>
a0004fa0:	a00097b7          	lui	a5,0xa0009
a0004fa4:	a087a603          	lw	a2,-1528(a5) # a0008a08 <__psram_limit+0xf7c08a08>
a0004fa8:	a0c7a683          	lw	a3,-1524(a5)
a0004fac:	a0009c37          	lui	s8,0xa0009
a0004fb0:	c21fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004fb4:	a00097b7          	lui	a5,0xa0009
a0004fb8:	a107a603          	lw	a2,-1520(a5) # a0008a10 <__psram_limit+0xf7c08a10>
a0004fbc:	a147a683          	lw	a3,-1516(a5)
a0004fc0:	adffc0ef          	jal	ra,a0001a9e <__adddf3>
a0004fc4:	001007b7          	lui	a5,0x100
a0004fc8:	a0009737          	lui	a4,0xa0009
a0004fcc:	17fd                	addi	a5,a5,-1
a0004fce:	a1872603          	lw	a2,-1512(a4) # a0008a18 <__psram_limit+0xf7c08a18>
a0004fd2:	a1c72683          	lw	a3,-1508(a4)
a0004fd6:	00fb77b3          	and	a5,s6,a5
a0004fda:	3ff00737          	lui	a4,0x3ff00
a0004fde:	8f5d                	or	a4,a4,a5
a0004fe0:	892a                	mv	s2,a0
a0004fe2:	89ae                	mv	s3,a1
a0004fe4:	855e                	mv	a0,s7
a0004fe6:	85ba                	mv	a1,a4
a0004fe8:	982fe0ef          	jal	ra,a000316a <__subdf3>
a0004fec:	a00097b7          	lui	a5,0xa0009
a0004ff0:	a207a603          	lw	a2,-1504(a5) # a0008a20 <__psram_limit+0xf7c08a20>
a0004ff4:	a247a683          	lw	a3,-1500(a5)
a0004ff8:	bd9fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0004ffc:	862a                	mv	a2,a0
a0004ffe:	86ae                	mv	a3,a1
a0005000:	854a                	mv	a0,s2
a0005002:	85ce                	mv	a1,s3
a0005004:	a9bfc0ef          	jal	ra,a0001a9e <__adddf3>
a0005008:	a17fe0ef          	jal	ra,a0003a1e <__fixdfsi>
a000500c:	842a                	mv	s0,a0
a000500e:	ad5fe0ef          	jal	ra,a0003ae2 <__floatsidf>
a0005012:	a00097b7          	lui	a5,0xa0009
a0005016:	a287a603          	lw	a2,-1496(a5) # a0008a28 <__psram_limit+0xf7c08a28>
a000501a:	a2c7a683          	lw	a3,-1492(a5)
a000501e:	892a                	mv	s2,a0
a0005020:	89ae                	mv	s3,a1
a0005022:	baffd0ef          	jal	ra,a0002bd0 <__muldf3>
a0005026:	a00097b7          	lui	a5,0xa0009
a000502a:	a007a603          	lw	a2,-1536(a5) # a0008a00 <__psram_limit+0xf7c08a00>
a000502e:	a047a683          	lw	a3,-1532(a5)
a0005032:	a6dfc0ef          	jal	ra,a0001a9e <__adddf3>
a0005036:	9e9fe0ef          	jal	ra,a0003a1e <__fixdfsi>
a000503a:	a00097b7          	lui	a5,0xa0009
a000503e:	a307a603          	lw	a2,-1488(a5) # a0008a30 <__psram_limit+0xf7c08a30>
a0005042:	a347a683          	lw	a3,-1484(a5)
a0005046:	8caa                	mv	s9,a0
a0005048:	85ce                	mv	a1,s3
a000504a:	854a                	mv	a0,s2
a000504c:	b85fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0005050:	892a                	mv	s2,a0
a0005052:	8566                	mv	a0,s9
a0005054:	89ae                	mv	s3,a1
a0005056:	a8dfe0ef          	jal	ra,a0003ae2 <__floatsidf>
a000505a:	a00097b7          	lui	a5,0xa0009
a000505e:	a387a603          	lw	a2,-1480(a5) # a0008a38 <__psram_limit+0xf7c08a38>
a0005062:	a3c7a683          	lw	a3,-1476(a5)
a0005066:	b6bfd0ef          	jal	ra,a0002bd0 <__muldf3>
a000506a:	862a                	mv	a2,a0
a000506c:	86ae                	mv	a3,a1
a000506e:	854a                	mv	a0,s2
a0005070:	85ce                	mv	a1,s3
a0005072:	8f8fe0ef          	jal	ra,a000316a <__subdf3>
a0005076:	862a                	mv	a2,a0
a0005078:	86ae                	mv	a3,a1
a000507a:	8a2a                	mv	s4,a0
a000507c:	8aae                	mv	s5,a1
a000507e:	b53fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0005082:	892a                	mv	s2,a0
a0005084:	89ae                	mv	s3,a1
a0005086:	8652                	mv	a2,s4
a0005088:	86d6                	mv	a3,s5
a000508a:	8552                	mv	a0,s4
a000508c:	85d6                	mv	a1,s5
a000508e:	a11fc0ef          	jal	ra,a0001a9e <__adddf3>
a0005092:	a00096b7          	lui	a3,0xa0009
a0005096:	a406a603          	lw	a2,-1472(a3) # a0008a40 <__psram_limit+0xf7c08a40>
a000509a:	a446a683          	lw	a3,-1468(a3)
a000509e:	c0aa                	sw	a0,64(sp)
a00050a0:	c2ae                	sw	a1,68(sp)
a00050a2:	854a                	mv	a0,s2
a00050a4:	85ce                	mv	a1,s3
a00050a6:	aa2fd0ef          	jal	ra,a0002348 <__divdf3>
a00050aa:	a48c2603          	lw	a2,-1464(s8) # a0008a48 <__psram_limit+0xf7c08a48>
a00050ae:	a4cc2683          	lw	a3,-1460(s8)
a00050b2:	9edfc0ef          	jal	ra,a0001a9e <__adddf3>
a00050b6:	862a                	mv	a2,a0
a00050b8:	86ae                	mv	a3,a1
a00050ba:	854a                	mv	a0,s2
a00050bc:	85ce                	mv	a1,s3
a00050be:	a8afd0ef          	jal	ra,a0002348 <__divdf3>
a00050c2:	a00096b7          	lui	a3,0xa0009
a00050c6:	a506a603          	lw	a2,-1456(a3) # a0008a50 <__psram_limit+0xf7c08a50>
a00050ca:	a546a683          	lw	a3,-1452(a3)
a00050ce:	9d1fc0ef          	jal	ra,a0001a9e <__adddf3>
a00050d2:	862a                	mv	a2,a0
a00050d4:	86ae                	mv	a3,a1
a00050d6:	854a                	mv	a0,s2
a00050d8:	85ce                	mv	a1,s3
a00050da:	a6efd0ef          	jal	ra,a0002348 <__divdf3>
a00050de:	89ae                	mv	s3,a1
a00050e0:	a00095b7          	lui	a1,0xa0009
a00050e4:	892a                	mv	s2,a0
a00050e6:	a585a503          	lw	a0,-1448(a1) # a0008a58 <__psram_limit+0xf7c08a58>
a00050ea:	a5c5a583          	lw	a1,-1444(a1)
a00050ee:	8652                	mv	a2,s4
a00050f0:	86d6                	mv	a3,s5
a00050f2:	878fe0ef          	jal	ra,a000316a <__subdf3>
a00050f6:	862a                	mv	a2,a0
a00050f8:	86ae                	mv	a3,a1
a00050fa:	854a                	mv	a0,s2
a00050fc:	85ce                	mv	a1,s3
a00050fe:	9a1fc0ef          	jal	ra,a0001a9e <__adddf3>
a0005102:	4706                	lw	a4,64(sp)
a0005104:	4796                	lw	a5,68(sp)
a0005106:	862a                	mv	a2,a0
a0005108:	86ae                	mv	a3,a1
a000510a:	853a                	mv	a0,a4
a000510c:	85be                	mv	a1,a5
a000510e:	a3afd0ef          	jal	ra,a0002348 <__divdf3>
a0005112:	a00097b7          	lui	a5,0xa0009
a0005116:	a607a603          	lw	a2,-1440(a5) # a0008a60 <__psram_limit+0xf7c08a60>
a000511a:	a647a683          	lw	a3,-1436(a5)
a000511e:	981fc0ef          	jal	ra,a0001a9e <__adddf3>
a0005122:	3ff00613          	li	a2,1023
a0005126:	4681                	li	a3,0
a0005128:	8766                	mv	a4,s9
a000512a:	41fcd793          	srai	a5,s9,0x1f
a000512e:	c0c71777          	add64	a4,a4,a2
a0005132:	4801                	li	a6,0
a0005134:	01471893          	slli	a7,a4,0x14
a0005138:	8642                	mv	a2,a6
a000513a:	86c6                	mv	a3,a7
a000513c:	a95fd0ef          	jal	ra,a0002bd0 <__muldf3>
a0005140:	865e                	mv	a2,s7
a0005142:	86da                	mv	a3,s6
a0005144:	8a2a                	mv	s4,a0
a0005146:	8aae                	mv	s5,a1
a0005148:	92dfd0ef          	jal	ra,a0002a74 <__gedf2>
a000514c:	00a05d63          	blez	a0,a0005166 <print_exponential_number+0x222>
a0005150:	a48c2603          	lw	a2,-1464(s8)
a0005154:	a4cc2683          	lw	a3,-1460(s8)
a0005158:	8552                	mv	a0,s4
a000515a:	85d6                	mv	a1,s5
a000515c:	9ecfd0ef          	jal	ra,a0002348 <__divdf3>
a0005160:	147d                	addi	s0,s0,-1
a0005162:	8a2a                	mv	s4,a0
a0005164:	8aae                	mv	s5,a1
a0005166:	01140793          	addi	a5,s0,17
a000516a:	02200713          	li	a4,34
a000516e:	0237b913          	sltiu	s2,a5,35
a0005172:	02f76263          	bltu	a4,a5,a0005196 <print_exponential_number+0x252>
a0005176:	41f45713          	srai	a4,s0,0x1f
a000517a:	008747b3          	xor	a5,a4,s0
a000517e:	40e78733          	sub	a4,a5,a4
a0005182:	a00097b7          	lui	a5,0xa0009
a0005186:	a8878793          	addi	a5,a5,-1400 # a0008a88 <__psram_limit+0xf7c08a88>
a000518a:	06e7978b          	addsl	a5,a5,a4,3
a000518e:	0007aa03          	lw	s4,0(a5)
a0005192:	0047aa83          	lw	s5,4(a5)
a0005196:	2cbdb78b          	extu	a5,s11,11,11
a000519a:	30078563          	beqz	a5,a00054a4 <print_exponential_number+0x560>
a000519e:	5771                	li	a4,-4
a00051a0:	fff48793          	addi	a5,s1,-1
a00051a4:	4c01                	li	s8,0
a00051a6:	00e44963          	blt	s0,a4,a00051b8 <print_exponential_number+0x274>
a00051aa:	e091                	bnez	s1,a00051ae <print_exponential_number+0x26a>
a00051ac:	4485                	li	s1,1
a00051ae:	4c01                	li	s8,0
a00051b0:	00945463          	bge	s0,s1,a00051b8 <print_exponential_number+0x274>
a00051b4:	8f81                	sub	a5,a5,s0
a00051b6:	4c05                	li	s8,1
a00051b8:	84be                	mv	s1,a5
a00051ba:	0007d363          	bgez	a5,a00051c0 <print_exponential_number+0x27c>
a00051be:	4481                	li	s1,0
a00051c0:	400ded93          	ori	s11,s11,1024
a00051c4:	00045963          	bgez	s0,a00051d6 <print_exponential_number+0x292>
a00051c8:	4c85                	li	s9,1
a00051ca:	00091363          	bnez	s2,a00051d0 <print_exponential_number+0x28c>
a00051ce:	4c81                	li	s9,0
a00051d0:	000c1763          	bnez	s8,a00051de <print_exponential_number+0x29a>
a00051d4:	a08d                	j	a0005236 <print_exponential_number+0x2f2>
a00051d6:	000c1463          	bnez	s8,a00051de <print_exponential_number+0x29a>
a00051da:	ec29                	bnez	s0,a0005234 <print_exponential_number+0x2f0>
a00051dc:	4c01                	li	s8,0
a00051de:	57f2                	lw	a5,60(sp)
a00051e0:	c789                	beqz	a5,a00051ea <print_exponential_number+0x2a6>
a00051e2:	800007b7          	lui	a5,0x80000
a00051e6:	0167cb33          	xor	s6,a5,s6
a00051ea:	86a6                	mv	a3,s1
a00051ec:	85de                	mv	a1,s7
a00051ee:	865a                	mv	a2,s6
a00051f0:	18a8                	addi	a0,sp,120
a00051f2:	975ff0ef          	jal	ra,a0004b66 <get_components>
a00051f6:	08814783          	lbu	a5,136(sp)
a00051fa:	4a0a                	lw	s4,128(sp)
a00051fc:	4a9a                	lw	s5,132(sp)
a00051fe:	de3e                	sw	a5,60(sp)
a0005200:	5966                	lw	s2,120(sp)
a0005202:	59f6                	lw	s3,124(sp)
a0005204:	180c1463          	bnez	s8,a000538c <print_exponential_number+0x448>
a0005208:	01304763          	bgtz	s3,a0005216 <print_exponential_number+0x2d2>
a000520c:	00099a63          	bnez	s3,a0005220 <print_exponential_number+0x2dc>
a0005210:	47a5                	li	a5,9
a0005212:	0127f763          	bgeu	a5,s2,a0005220 <print_exponential_number+0x2dc>
a0005216:	0405                	addi	s0,s0,1
a0005218:	4a01                	li	s4,0
a000521a:	4a81                	li	s5,0
a000521c:	4905                	li	s2,1
a000521e:	4981                	li	s3,0
a0005220:	06340793          	addi	a5,s0,99
a0005224:	0c600713          	li	a4,198
a0005228:	4c01                	li	s8,0
a000522a:	4b95                	li	s7,5
a000522c:	18f76e63          	bltu	a4,a5,a00053c8 <print_exponential_number+0x484>
a0005230:	4b91                	li	s7,4
a0005232:	aa59                	j	a00053c8 <print_exponential_number+0x484>
a0005234:	4c81                	li	s9,0
a0005236:	d4d2                	sw	s4,104(sp)
a0005238:	d6d6                	sw	s5,108(sp)
a000523a:	07910823          	sb	s9,112(sp)
a000523e:	8652                	mv	a2,s4
a0005240:	86d6                	mv	a3,s5
a0005242:	855e                	mv	a0,s7
a0005244:	85da                	mv	a1,s6
a0005246:	0a0c8a63          	beqz	s9,a00052fa <print_exponential_number+0x3b6>
a000524a:	987fd0ef          	jal	ra,a0002bd0 <__muldf3>
a000524e:	949fe0ef          	jal	ra,a0003b96 <__fixdfdi>
a0005252:	892a                	mv	s2,a0
a0005254:	89ae                	mv	s3,a1
a0005256:	a45fe0ef          	jal	ra,a0003c9a <__floatdidf>
a000525a:	862a                	mv	a2,a0
a000525c:	86ae                	mv	a3,a1
a000525e:	0a0c8163          	beqz	s9,a0005300 <print_exponential_number+0x3bc>
a0005262:	8652                	mv	a2,s4
a0005264:	86d6                	mv	a3,s5
a0005266:	8e2fd0ef          	jal	ra,a0002348 <__divdf3>
a000526a:	86ae                	mv	a3,a1
a000526c:	862a                	mv	a2,a0
a000526e:	85da                	mv	a1,s6
a0005270:	855e                	mv	a0,s7
a0005272:	ef9fd0ef          	jal	ra,a000316a <__subdf3>
a0005276:	a00097b7          	lui	a5,0xa0009
a000527a:	a8878793          	addi	a5,a5,-1400 # a0008a88 <__psram_limit+0xf7c08a88>
a000527e:	0697978b          	addsl	a5,a5,s1,3
a0005282:	0007ac03          	lw	s8,0(a5)
a0005286:	0047ac83          	lw	s9,4(a5)
a000528a:	8a2a                	mv	s4,a0
a000528c:	8aae                	mv	s5,a1
a000528e:	4641                	li	a2,16
a0005290:	10ac                	addi	a1,sp,104
a0005292:	0888                	addi	a0,sp,80
a0005294:	9b4ff0ef          	jal	ra,a0004448 <memcpy>
a0005298:	8662                	mv	a2,s8
a000529a:	86e6                	mv	a3,s9
a000529c:	088c                	addi	a1,sp,80
a000529e:	18a8                	addi	a0,sp,120
a00052a0:	312d                	jal	a0004eca <update_normalization>
a00052a2:	08014783          	lbu	a5,128(sp)
a00052a6:	5666                	lw	a2,120(sp)
a00052a8:	56f6                	lw	a3,124(sp)
a00052aa:	8552                	mv	a0,s4
a00052ac:	85d6                	mv	a1,s5
a00052ae:	cfb1                	beqz	a5,a000530a <print_exponential_number+0x3c6>
a00052b0:	921fd0ef          	jal	ra,a0002bd0 <__muldf3>
a00052b4:	8a2a                	mv	s4,a0
a00052b6:	8aae                	mv	s5,a1
a00052b8:	a0009b37          	lui	s6,0xa0009
a00052bc:	e8b1                	bnez	s1,a0005310 <print_exponential_number+0x3cc>
a00052be:	a04b2b83          	lw	s7,-1532(s6) # a0008a04 <__psram_limit+0xf7c08a04>
a00052c2:	a00b2b03          	lw	s6,-1536(s6)
a00052c6:	4c81                	li	s9,0
a00052c8:	86de                	mv	a3,s7
a00052ca:	865a                	mv	a2,s6
a00052cc:	fa8fd0ef          	jal	ra,a0002a74 <__gedf2>
a00052d0:	41f55693          	srai	a3,a0,0x1f
a00052d4:	fff6c613          	not	a2,a3
a00052d8:	01f65c13          	srli	s8,a2,0x1f
a00052dc:	86de                	mv	a3,s7
a00052de:	865a                	mv	a2,s6
a00052e0:	8552                	mv	a0,s4
a00052e2:	85d6                	mv	a1,s5
a00052e4:	c1891977          	add64	s2,s2,s8
a00052e8:	ee8fd0ef          	jal	ra,a00029d0 <__eqdf2>
a00052ec:	e501                	bnez	a0,a00052f4 <print_exponential_number+0x3b0>
a00052ee:	ffe97713          	andi	a4,s2,-2
a00052f2:	893a                	mv	s2,a4
a00052f4:	4a01                	li	s4,0
a00052f6:	4a81                	li	s5,0
a00052f8:	bf01                	j	a0005208 <print_exponential_number+0x2c4>
a00052fa:	84efd0ef          	jal	ra,a0002348 <__divdf3>
a00052fe:	bf81                	j	a000524e <print_exponential_number+0x30a>
a0005300:	8552                	mv	a0,s4
a0005302:	85d6                	mv	a1,s5
a0005304:	8cdfd0ef          	jal	ra,a0002bd0 <__muldf3>
a0005308:	b78d                	j	a000526a <print_exponential_number+0x326>
a000530a:	83efd0ef          	jal	ra,a0002348 <__divdf3>
a000530e:	b75d                	j	a00052b4 <print_exponential_number+0x370>
a0005310:	887fe0ef          	jal	ra,a0003b96 <__fixdfdi>
a0005314:	c4aa                	sw	a0,72(sp)
a0005316:	c6ae                	sw	a1,76(sp)
a0005318:	983fe0ef          	jal	ra,a0003c9a <__floatdidf>
a000531c:	862a                	mv	a2,a0
a000531e:	86ae                	mv	a3,a1
a0005320:	8552                	mv	a0,s4
a0005322:	85d6                	mv	a1,s5
a0005324:	e47fd0ef          	jal	ra,a000316a <__subdf3>
a0005328:	a04b2b83          	lw	s7,-1532(s6)
a000532c:	a00b2b03          	lw	s6,-1536(s6)
a0005330:	c2ae                	sw	a1,68(sp)
a0005332:	86de                	mv	a3,s7
a0005334:	865a                	mv	a2,s6
a0005336:	c0aa                	sw	a0,64(sp)
a0005338:	f3cfd0ef          	jal	ra,a0002a74 <__gedf2>
a000533c:	4706                	lw	a4,64(sp)
a000533e:	4796                	lw	a5,68(sp)
a0005340:	41f55693          	srai	a3,a0,0x1f
a0005344:	4826                	lw	a6,72(sp)
a0005346:	48b6                	lw	a7,76(sp)
a0005348:	fff6c613          	not	a2,a3
a000534c:	01f65a13          	srli	s4,a2,0x1f
a0005350:	4a81                	li	s5,0
a0005352:	865a                	mv	a2,s6
a0005354:	86de                	mv	a3,s7
a0005356:	853a                	mv	a0,a4
a0005358:	85be                	mv	a1,a5
a000535a:	c10a1a77          	add64	s4,s4,a6
a000535e:	e72fd0ef          	jal	ra,a00029d0 <__eqdf2>
a0005362:	e501                	bnez	a0,a000536a <print_exponential_number+0x426>
a0005364:	ffea7713          	andi	a4,s4,-2
a0005368:	8a3a                	mv	s4,a4
a000536a:	8552                	mv	a0,s4
a000536c:	85d6                	mv	a1,s5
a000536e:	92dfe0ef          	jal	ra,a0003c9a <__floatdidf>
a0005372:	862a                	mv	a2,a0
a0005374:	86ae                	mv	a3,a1
a0005376:	8562                	mv	a0,s8
a0005378:	85e6                	mv	a1,s9
a000537a:	fa8fd0ef          	jal	ra,a0002b22 <__ledf2>
a000537e:	e8a045e3          	bgtz	a0,a0005208 <print_exponential_number+0x2c4>
a0005382:	4705                	li	a4,1
a0005384:	4781                	li	a5,0
a0005386:	c0e91977          	add64	s2,s2,a4
a000538a:	b7ad                	j	a00052f4 <print_exponential_number+0x3b0>
a000538c:	6b85                	lui	s7,0x1
a000538e:	800b8b93          	addi	s7,s7,-2048 # 800 <__RFTLV_SIZE_HOLE>
a0005392:	017dfbb3          	and	s7,s11,s7
a0005396:	020b8963          	beqz	s7,a00053c8 <print_exponential_number+0x484>
a000539a:	57fd                	li	a5,-1
a000539c:	4b81                	li	s7,0
a000539e:	02f44563          	blt	s0,a5,a00053c8 <print_exponential_number+0x484>
a00053a2:	854a                	mv	a0,s2
a00053a4:	85ce                	mv	a1,s3
a00053a6:	8f5fe0ef          	jal	ra,a0003c9a <__floatdidf>
a00053aa:	a00097b7          	lui	a5,0xa0009
a00053ae:	00140b13          	addi	s6,s0,1
a00053b2:	a8878793          	addi	a5,a5,-1400 # a0008a88 <__psram_limit+0xf7c08a88>
a00053b6:	0767978b          	addsl	a5,a5,s6,3
a00053ba:	4390                	lw	a2,0(a5)
a00053bc:	43d4                	lw	a3,4(a5)
a00053be:	e12fd0ef          	jal	ra,a00029d0 <__eqdf2>
a00053c2:	e119                	bnez	a0,a00053c8 <print_exponential_number+0x484>
a00053c4:	14fd                	addi	s1,s1,-1
a00053c6:	845a                	mv	s0,s6
a00053c8:	002dfb13          	andi	s6,s11,2
a00053cc:	000b0563          	beqz	s6,a00053d6 <print_exponential_number+0x492>
a00053d0:	4781                	li	a5,0
a00053d2:	000b9863          	bnez	s7,a00053e2 <print_exponential_number+0x49e>
a00053d6:	5762                	lw	a4,56(sp)
a00053d8:	4781                	li	a5,0
a00053da:	00ebf463          	bgeu	s7,a4,a00053e2 <print_exponential_number+0x49e>
a00053de:	417707b3          	sub	a5,a4,s7
a00053e2:	476e                	lw	a4,216(sp)
a00053e4:	c43e                	sw	a5,8(sp)
a00053e6:	57c2                	lw	a5,48(sp)
a00053e8:	ca3a                	sw	a4,20(sp)
a00053ea:	475e                	lw	a4,212(sp)
a00053ec:	58d2                	lw	a7,52(sp)
a00053ee:	5832                	lw	a6,44(sp)
a00053f0:	c83a                	sw	a4,16(sp)
a00053f2:	5772                	lw	a4,60(sp)
a00053f4:	c03e                	sw	a5,0(sp)
a00053f6:	8652                	mv	a2,s4
a00053f8:	c66e                	sw	s11,12(sp)
a00053fa:	c226                	sw	s1,4(sp)
a00053fc:	87ea                	mv	a5,s10
a00053fe:	86d6                	mv	a3,s5
a0005400:	854a                	mv	a0,s2
a0005402:	85ce                	mv	a1,s3
a0005404:	8f5ff0ef          	jal	ra,a0004cf8 <print_broken_up_decimal.isra.0>
a0005408:	862a                	mv	a2,a0
a000540a:	040c1f63          	bnez	s8,a0005468 <print_exponential_number+0x524>
a000540e:	020dfd93          	andi	s11,s11,32
a0005412:	04500513          	li	a0,69
a0005416:	000d9463          	bnez	s11,a000541e <print_exponential_number+0x4da>
a000541a:	06500513          	li	a0,101
a000541e:	55b2                	lw	a1,44(sp)
a0005420:	56c2                	lw	a3,48(sp)
a0005422:	00160493          	addi	s1,a2,1
a0005426:	9d02                	jalr	s10
a0005428:	41f45593          	srai	a1,s0,0x1f
a000542c:	04805e63          	blez	s0,a0005488 <print_exponential_number+0x544>
a0005430:	8722                	mv	a4,s0
a0005432:	87ae                	mv	a5,a1
a0005434:	4695                	li	a3,5
a0005436:	c436                	sw	a3,8(sp)
a0005438:	55b2                	lw	a1,44(sp)
a000543a:	56c2                	lw	a3,48(sp)
a000543c:	1bfd                	addi	s7,s7,-1
a000543e:	8626                	mv	a2,s1
a0005440:	c25e                	sw	s7,4(sp)
a0005442:	c002                	sw	zero,0(sp)
a0005444:	48a9                	li	a7,10
a0005446:	01f45813          	srli	a6,s0,0x1f
a000544a:	856a                	mv	a0,s10
a000544c:	d0eff0ef          	jal	ra,a000495a <print_integer>
a0005450:	862a                	mv	a2,a0
a0005452:	000b0b63          	beqz	s6,a0005468 <print_exponential_number+0x524>
a0005456:	57d2                	lw	a5,52(sp)
a0005458:	40f50433          	sub	s0,a0,a5
a000545c:	57d2                	lw	a5,52(sp)
a000545e:	00878633          	add	a2,a5,s0
a0005462:	57e2                	lw	a5,56(sp)
a0005464:	02f46963          	bltu	s0,a5,a0005496 <print_exponential_number+0x552>
a0005468:	40be                	lw	ra,204(sp)
a000546a:	442e                	lw	s0,200(sp)
a000546c:	449e                	lw	s1,196(sp)
a000546e:	490e                	lw	s2,192(sp)
a0005470:	59fa                	lw	s3,188(sp)
a0005472:	5a6a                	lw	s4,184(sp)
a0005474:	5ada                	lw	s5,180(sp)
a0005476:	5b4a                	lw	s6,176(sp)
a0005478:	5bba                	lw	s7,172(sp)
a000547a:	5c2a                	lw	s8,168(sp)
a000547c:	5c9a                	lw	s9,164(sp)
a000547e:	5d0a                	lw	s10,160(sp)
a0005480:	4dfa                	lw	s11,156(sp)
a0005482:	8532                	mv	a0,a2
a0005484:	6169                	addi	sp,sp,208
a0005486:	8082                	ret
a0005488:	8622                	mv	a2,s0
a000548a:	86ae                	mv	a3,a1
a000548c:	4701                	li	a4,0
a000548e:	4781                	li	a5,0
a0005490:	c2c71777          	sub64	a4,a4,a2
a0005494:	b745                	j	a0005434 <print_exponential_number+0x4f0>
a0005496:	56c2                	lw	a3,48(sp)
a0005498:	55b2                	lw	a1,44(sp)
a000549a:	02000513          	li	a0,32
a000549e:	0405                	addi	s0,s0,1
a00054a0:	9d02                	jalr	s10
a00054a2:	bf6d                	j	a000545c <print_exponential_number+0x518>
a00054a4:	d2045be3          	bgez	s0,a00051da <print_exponential_number+0x296>
a00054a8:	4c85                	li	s9,1
a00054aa:	4c01                	li	s8,0
a00054ac:	d80915e3          	bnez	s2,a0005236 <print_exponential_number+0x2f2>
a00054b0:	bb39                	j	a00051ce <print_exponential_number+0x28a>

a00054b2 <print_floating_point>:
a00054b2:	7135                	addi	sp,sp,-160
a00054b4:	c552                	sw	s4,136(sp)
a00054b6:	c356                	sw	s5,132(sp)
a00054b8:	c15a                	sw	s6,128(sp)
a00054ba:	dede                	sw	s7,124(sp)
a00054bc:	8a2a                	mv	s4,a0
a00054be:	8aae                	mv	s5,a1
a00054c0:	8b32                	mv	s6,a2
a00054c2:	8bb6                	mv	s7,a3
a00054c4:	863a                	mv	a2,a4
a00054c6:	86be                	mv	a3,a5
a00054c8:	853a                	mv	a0,a4
a00054ca:	85be                	mv	a1,a5
a00054cc:	cd22                	sw	s0,152(sp)
a00054ce:	cb26                	sw	s1,148(sp)
a00054d0:	c94a                	sw	s2,144(sp)
a00054d2:	c74e                	sw	s3,140(sp)
a00054d4:	dce2                	sw	s8,120(sp)
a00054d6:	d6ee                	sw	s11,108(sp)
a00054d8:	cf06                	sw	ra,156(sp)
a00054da:	dae6                	sw	s9,116(sp)
a00054dc:	d8ea                	sw	s10,112(sp)
a00054de:	598a                	lw	s3,160(sp)
a00054e0:	0a414d83          	lbu	s11,164(sp)
a00054e4:	843a                	mv	s0,a4
a00054e6:	84be                	mv	s1,a5
a00054e8:	8942                	mv	s2,a6
a00054ea:	8c46                	mv	s8,a7
a00054ec:	ce4fd0ef          	jal	ra,a00029d0 <__eqdf2>
a00054f0:	cd05                	beqz	a0,a0005528 <print_floating_point+0x76>
a00054f2:	a0009737          	lui	a4,0xa0009
a00054f6:	88ce                	mv	a7,s3
a00054f8:	8862                	mv	a6,s8
a00054fa:	478d                	li	a5,3
a00054fc:	9e470713          	addi	a4,a4,-1564 # a00089e4 <__psram_limit+0xf7c089e4>
a0005500:	446a                	lw	s0,152(sp)
a0005502:	40fa                	lw	ra,156(sp)
a0005504:	44da                	lw	s1,148(sp)
a0005506:	494a                	lw	s2,144(sp)
a0005508:	49ba                	lw	s3,140(sp)
a000550a:	5c66                	lw	s8,120(sp)
a000550c:	5cd6                	lw	s9,116(sp)
a000550e:	5d46                	lw	s10,112(sp)
a0005510:	5db6                	lw	s11,108(sp)
a0005512:	86de                	mv	a3,s7
a0005514:	865a                	mv	a2,s6
a0005516:	5bf6                	lw	s7,124(sp)
a0005518:	4b0a                	lw	s6,128(sp)
a000551a:	85d6                	mv	a1,s5
a000551c:	8552                	mv	a0,s4
a000551e:	4a9a                	lw	s5,132(sp)
a0005520:	4a2a                	lw	s4,136(sp)
a0005522:	610d                	addi	sp,sp,160
a0005524:	b88ff06f          	j	a00048ac <out_rev_>
a0005528:	a00097b7          	lui	a5,0xa0009
a000552c:	a687a603          	lw	a2,-1432(a5) # a0008a68 <__psram_limit+0xf7c08a68>
a0005530:	a6c7a683          	lw	a3,-1428(a5)
a0005534:	8522                	mv	a0,s0
a0005536:	85a6                	mv	a1,s1
a0005538:	deafd0ef          	jal	ra,a0002b22 <__ledf2>
a000553c:	00055a63          	bgez	a0,a0005550 <print_floating_point+0x9e>
a0005540:	a0009737          	lui	a4,0xa0009
a0005544:	88ce                	mv	a7,s3
a0005546:	8862                	mv	a6,s8
a0005548:	4791                	li	a5,4
a000554a:	9e870713          	addi	a4,a4,-1560 # a00089e8 <__psram_limit+0xf7c089e8>
a000554e:	bf4d                	j	a0005500 <print_floating_point+0x4e>
a0005550:	a00097b7          	lui	a5,0xa0009
a0005554:	a707a603          	lw	a2,-1424(a5) # a0008a70 <__psram_limit+0xf7c08a70>
a0005558:	a747a683          	lw	a3,-1420(a5)
a000555c:	8522                	mv	a0,s0
a000555e:	85a6                	mv	a1,s1
a0005560:	d14fd0ef          	jal	ra,a0002a74 <__gedf2>
a0005564:	02a05363          	blez	a0,a000558a <print_floating_point+0xd8>
a0005568:	0049f793          	andi	a5,s3,4
a000556c:	cb89                	beqz	a5,a000557e <print_floating_point+0xcc>
a000556e:	a0009737          	lui	a4,0xa0009
a0005572:	9dc70713          	addi	a4,a4,-1572 # a00089dc <__psram_limit+0xf7c089dc>
a0005576:	4791                	li	a5,4
a0005578:	88ce                	mv	a7,s3
a000557a:	8862                	mv	a6,s8
a000557c:	b751                	j	a0005500 <print_floating_point+0x4e>
a000557e:	a0009737          	lui	a4,0xa0009
a0005582:	9d870713          	addi	a4,a4,-1576 # a00089d8 <__psram_limit+0xf7c089d8>
a0005586:	478d                	li	a5,3
a0005588:	bfc5                	j	a0005578 <print_floating_point+0xc6>
a000558a:	04010d13          	addi	s10,sp,64
a000558e:	060d9663          	bnez	s11,a00055fa <print_floating_point+0x148>
a0005592:	a00097b7          	lui	a5,0xa0009
a0005596:	a787a603          	lw	a2,-1416(a5) # a0008a78 <__psram_limit+0xf7c08a78>
a000559a:	a7c7a683          	lw	a3,-1412(a5)
a000559e:	8522                	mv	a0,s0
a00055a0:	85a6                	mv	a1,s1
a00055a2:	cd2fd0ef          	jal	ra,a0002a74 <__gedf2>
a00055a6:	00a04e63          	bgtz	a0,a00055c2 <print_floating_point+0x110>
a00055aa:	a00097b7          	lui	a5,0xa0009
a00055ae:	a807a603          	lw	a2,-1408(a5) # a0008a80 <__psram_limit+0xf7c08a80>
a00055b2:	a847a683          	lw	a3,-1404(a5)
a00055b6:	8522                	mv	a0,s0
a00055b8:	85a6                	mv	a1,s1
a00055ba:	d68fd0ef          	jal	ra,a0002b22 <__ledf2>
a00055be:	02055e63          	bgez	a0,a00055fa <print_floating_point+0x148>
a00055c2:	c402                	sw	zero,8(sp)
a00055c4:	c26a                	sw	s10,4(sp)
a00055c6:	c04e                	sw	s3,0(sp)
a00055c8:	88e2                	mv	a7,s8
a00055ca:	884a                	mv	a6,s2
a00055cc:	8722                	mv	a4,s0
a00055ce:	87a6                	mv	a5,s1
a00055d0:	86de                	mv	a3,s7
a00055d2:	865a                	mv	a2,s6
a00055d4:	85d6                	mv	a1,s5
a00055d6:	8552                	mv	a0,s4
a00055d8:	96dff0ef          	jal	ra,a0004f44 <print_exponential_number>
a00055dc:	40fa                	lw	ra,156(sp)
a00055de:	446a                	lw	s0,152(sp)
a00055e0:	44da                	lw	s1,148(sp)
a00055e2:	494a                	lw	s2,144(sp)
a00055e4:	49ba                	lw	s3,140(sp)
a00055e6:	4a2a                	lw	s4,136(sp)
a00055e8:	4a9a                	lw	s5,132(sp)
a00055ea:	4b0a                	lw	s6,128(sp)
a00055ec:	5bf6                	lw	s7,124(sp)
a00055ee:	5c66                	lw	s8,120(sp)
a00055f0:	5cd6                	lw	s9,116(sp)
a00055f2:	5d46                	lw	s10,112(sp)
a00055f4:	5db6                	lw	s11,108(sp)
a00055f6:	610d                	addi	sp,sp,160
a00055f8:	8082                	ret
a00055fa:	4009f793          	andi	a5,s3,1024
a00055fe:	c39d                	beqz	a5,a0005624 <print_floating_point+0x172>
a0005600:	4c81                	li	s9,0
a0005602:	47c5                	li	a5,17
a0005604:	03000713          	li	a4,48
a0005608:	02000693          	li	a3,32
a000560c:	0127f863          	bgeu	a5,s2,a000561c <print_floating_point+0x16a>
a0005610:	019d570b          	srb	a4,s10,s9,0
a0005614:	0c85                	addi	s9,s9,1
a0005616:	197d                	addi	s2,s2,-1
a0005618:	fedc9ae3          	bne	s9,a3,a000560c <print_floating_point+0x15a>
a000561c:	000d8663          	beqz	s11,a0005628 <print_floating_point+0x176>
a0005620:	c466                	sw	s9,8(sp)
a0005622:	b74d                	j	a00055c4 <print_floating_point+0x112>
a0005624:	4919                	li	s2,6
a0005626:	bfe9                	j	a0005600 <print_floating_point+0x14e>
a0005628:	86ca                	mv	a3,s2
a000562a:	85a2                	mv	a1,s0
a000562c:	8626                	mv	a2,s1
a000562e:	1028                	addi	a0,sp,40
a0005630:	d36ff0ef          	jal	ra,a0004b66 <get_components>
a0005634:	03814703          	lbu	a4,56(sp)
a0005638:	5642                	lw	a2,48(sp)
a000563a:	56d2                	lw	a3,52(sp)
a000563c:	5522                	lw	a0,40(sp)
a000563e:	55b2                	lw	a1,44(sp)
a0005640:	ca66                	sw	s9,20(sp)
a0005642:	c86a                	sw	s10,16(sp)
a0005644:	c64e                	sw	s3,12(sp)
a0005646:	c462                	sw	s8,8(sp)
a0005648:	c24a                	sw	s2,4(sp)
a000564a:	c05e                	sw	s7,0(sp)
a000564c:	88da                	mv	a7,s6
a000564e:	8856                	mv	a6,s5
a0005650:	87d2                	mv	a5,s4
a0005652:	ea6ff0ef          	jal	ra,a0004cf8 <print_broken_up_decimal.isra.0>
a0005656:	b759                	j	a00055dc <print_floating_point+0x12a>

a0005658 <__vsnprintf>:
a0005658:	7175                	addi	sp,sp,-144
a000565a:	c326                	sw	s1,132(sp)
a000565c:	d6de                	sw	s7,108(sp)
a000565e:	d4e2                	sw	s8,104(sp)
a0005660:	d2e6                	sw	s9,100(sp)
a0005662:	d0ea                	sw	s10,96(sp)
a0005664:	c706                	sw	ra,140(sp)
a0005666:	c522                	sw	s0,136(sp)
a0005668:	c14a                	sw	s2,128(sp)
a000566a:	dece                	sw	s3,124(sp)
a000566c:	dcd2                	sw	s4,120(sp)
a000566e:	dad6                	sw	s5,116(sp)
a0005670:	d8da                	sw	s6,112(sp)
a0005672:	ceee                	sw	s11,92(sp)
a0005674:	8c2a                	mv	s8,a0
a0005676:	8bae                	mv	s7,a1
a0005678:	8d32                	mv	s10,a2
a000567a:	8cb6                	mv	s9,a3
a000567c:	84ba                	mv	s1,a4
a000567e:	e999                	bnez	a1,a0005694 <__vsnprintf+0x3c>
a0005680:	a00057b7          	lui	a5,0xa0005
a0005684:	ce678793          	addi	a5,a5,-794 # a0004ce6 <__psram_limit+0xf7c04ce6>
a0005688:	00f50663          	beq	a0,a5,a0005694 <__vsnprintf+0x3c>
a000568c:	a0005c37          	lui	s8,0xa0005
a0005690:	8aac0c13          	addi	s8,s8,-1878 # a00048aa <__psram_limit+0xf7c048aa>
a0005694:	67c1                	lui	a5,0x10
a0005696:	17fd                	addi	a5,a5,-1
a0005698:	dc3e                	sw	a5,56(sp)
a000569a:	67a5                	lui	a5,0x9
a000569c:	04178793          	addi	a5,a5,65 # 9041 <wifi_ram_max_size+0x1041>
a00056a0:	4301                	li	t1,0
a00056a2:	de3e                	sw	a5,60(sp)
a00056a4:	ae29                	j	a00059be <__vsnprintf+0x366>
a00056a6:	02500793          	li	a5,37
a00056aa:	0c85                	addi	s9,s9,1
a00056ac:	00f50863          	beq	a0,a5,a00056bc <__vsnprintf+0x64>
a00056b0:	00130413          	addi	s0,t1,1
a00056b4:	86ea                	mv	a3,s10
a00056b6:	861a                	mv	a2,t1
a00056b8:	85de                	mv	a1,s7
a00056ba:	a3d5                	j	a0005c9e <__vsnprintf+0x646>
a00056bc:	4401                	li	s0,0
a00056be:	02b00793          	li	a5,43
a00056c2:	02d00613          	li	a2,45
a00056c6:	03000513          	li	a0,48
a00056ca:	02000813          	li	a6,32
a00056ce:	02300893          	li	a7,35
a00056d2:	a801                	j	a00056e2 <__vsnprintf+0x8a>
a00056d4:	02c70d63          	beq	a4,a2,a000570e <__vsnprintf+0xb6>
a00056d8:	02a71063          	bne	a4,a0,a00056f8 <__vsnprintf+0xa0>
a00056dc:	00146413          	ori	s0,s0,1
a00056e0:	8cb6                	mv	s9,a3
a00056e2:	86e6                	mv	a3,s9
a00056e4:	9816c70b          	lbuia	a4,(a3),1,0
a00056e8:	02f70663          	beq	a4,a5,a0005714 <__vsnprintf+0xbc>
a00056ec:	fee7e4e3          	bltu	a5,a4,a00056d4 <__vsnprintf+0x7c>
a00056f0:	03070563          	beq	a4,a6,a000571a <__vsnprintf+0xc2>
a00056f4:	03170663          	beq	a4,a7,a0005720 <__vsnprintf+0xc8>
a00056f8:	fd070793          	addi	a5,a4,-48
a00056fc:	0ff7f793          	zext.b	a5,a5
a0005700:	4625                	li	a2,9
a0005702:	06f66763          	bltu	a2,a5,a0005770 <__vsnprintf+0x118>
a0005706:	4b01                	li	s6,0
a0005708:	4525                	li	a0,9
a000570a:	4829                	li	a6,10
a000570c:	a015                	j	a0005730 <__vsnprintf+0xd8>
a000570e:	00246413          	ori	s0,s0,2
a0005712:	b7f9                	j	a00056e0 <__vsnprintf+0x88>
a0005714:	00446413          	ori	s0,s0,4
a0005718:	b7e1                	j	a00056e0 <__vsnprintf+0x88>
a000571a:	00846413          	ori	s0,s0,8
a000571e:	b7c9                	j	a00056e0 <__vsnprintf+0x88>
a0005720:	01046413          	ori	s0,s0,16
a0005724:	bf75                	j	a00056e0 <__vsnprintf+0x88>
a0005726:	210b170b          	mula	a4,s6,a6
a000572a:	8cb2                	mv	s9,a2
a000572c:	fd070b13          	addi	s6,a4,-48
a0005730:	8666                	mv	a2,s9
a0005732:	9816470b          	lbuia	a4,(a2),1,0
a0005736:	fd070693          	addi	a3,a4,-48
a000573a:	0ff6f693          	zext.b	a3,a3
a000573e:	fed574e3          	bgeu	a0,a3,a0005726 <__vsnprintf+0xce>
a0005742:	000cc683          	lbu	a3,0(s9)
a0005746:	02e00713          	li	a4,46
a000574a:	10e69563          	bne	a3,a4,a0005854 <__vsnprintf+0x1fc>
a000574e:	001cc603          	lbu	a2,1(s9)
a0005752:	4525                	li	a0,9
a0005754:	001c8713          	addi	a4,s9,1
a0005758:	fd060693          	addi	a3,a2,-48
a000575c:	0ff6f693          	zext.b	a3,a3
a0005760:	40046413          	ori	s0,s0,1024
a0005764:	0cd56b63          	bltu	a0,a3,a000583a <__vsnprintf+0x1e2>
a0005768:	4801                	li	a6,0
a000576a:	48a5                	li	a7,9
a000576c:	4e29                	li	t3,10
a000576e:	a02d                	j	a0005798 <__vsnprintf+0x140>
a0005770:	02a00613          	li	a2,42
a0005774:	4b01                	li	s6,0
a0005776:	fcc716e3          	bne	a4,a2,a0005742 <__vsnprintf+0xea>
a000577a:	5844cb0b          	lwia	s6,(s1),4,0
a000577e:	000b5663          	bgez	s6,a000578a <__vsnprintf+0x132>
a0005782:	00246413          	ori	s0,s0,2
a0005786:	41600b33          	neg	s6,s6
a000578a:	8cb6                	mv	s9,a3
a000578c:	bf5d                	j	a0005742 <__vsnprintf+0xea>
a000578e:	21c8168b          	mula	a3,a6,t3
a0005792:	872a                	mv	a4,a0
a0005794:	fd068813          	addi	a6,a3,-48
a0005798:	853a                	mv	a0,a4
a000579a:	9815468b          	lbuia	a3,(a0),1,0
a000579e:	fd068613          	addi	a2,a3,-48
a00057a2:	0ff67613          	zext.b	a2,a2
a00057a6:	fec8f4e3          	bgeu	a7,a2,a000578e <__vsnprintf+0x136>
a00057aa:	8cba                	mv	s9,a4
a00057ac:	981cc68b          	lbuia	a3,(s9),1,0
a00057b0:	06c00613          	li	a2,108
a00057b4:	0ac68e63          	beq	a3,a2,a0005870 <__vsnprintf+0x218>
a00057b8:	0ad66163          	bltu	a2,a3,a000585a <__vsnprintf+0x202>
a00057bc:	06800613          	li	a2,104
a00057c0:	0cc68163          	beq	a3,a2,a0005882 <__vsnprintf+0x22a>
a00057c4:	06a00613          	li	a2,106
a00057c8:	0cc68763          	beq	a3,a2,a0005896 <__vsnprintf+0x23e>
a00057cc:	8cba                	mv	s9,a4
a00057ce:	981cc50b          	lbuia	a0,(s9),1,0
a00057d2:	06500713          	li	a4,101
a00057d6:	02e50263          	beq	a0,a4,a00057fa <__vsnprintf+0x1a2>
a00057da:	12a76663          	bltu	a4,a0,a0005906 <__vsnprintf+0x2ae>
a00057de:	04600713          	li	a4,70
a00057e2:	2ee50963          	beq	a0,a4,a0005ad4 <__vsnprintf+0x47c>
a00057e6:	0ea76c63          	bltu	a4,a0,a00058de <__vsnprintf+0x286>
a00057ea:	02500713          	li	a4,37
a00057ee:	4ae50163          	beq	a0,a4,a0005c90 <__vsnprintf+0x638>
a00057f2:	04500713          	li	a4,69
a00057f6:	eae51de3          	bne	a0,a4,a00056b0 <__vsnprintf+0x58>
a00057fa:	0df57713          	andi	a4,a0,223
a00057fe:	04700693          	li	a3,71
a0005802:	00d71863          	bne	a4,a3,a0005812 <__vsnprintf+0x1ba>
a0005806:	6785                	lui	a5,0x1
a0005808:	80078793          	addi	a5,a5,-2048 # 800 <__RFTLV_SIZE_HOLE>
a000580c:	8c5d                	or	s0,s0,a5
a000580e:	0fd57513          	andi	a0,a0,253
a0005812:	04500713          	li	a4,69
a0005816:	00e51463          	bne	a0,a4,a000581e <__vsnprintf+0x1c6>
a000581a:	02046413          	ori	s0,s0,32
a000581e:	049d                	addi	s1,s1,7
a0005820:	ff84f713          	andi	a4,s1,-8
a0005824:	4310                	lw	a2,0(a4)
a0005826:	4354                	lw	a3,4(a4)
a0005828:	00870493          	addi	s1,a4,8
a000582c:	4705                	li	a4,1
a000582e:	c23a                	sw	a4,4(sp)
a0005830:	c022                	sw	s0,0(sp)
a0005832:	88da                	mv	a7,s6
a0005834:	8732                	mv	a4,a2
a0005836:	87b6                	mv	a5,a3
a0005838:	ac55                	j	a0005aec <__vsnprintf+0x494>
a000583a:	02a00693          	li	a3,42
a000583e:	4801                	li	a6,0
a0005840:	f6d615e3          	bne	a2,a3,a00057aa <__vsnprintf+0x152>
a0005844:	5844c80b          	lwia	a6,(s1),4,0
a0005848:	00085363          	bgez	a6,a000584e <__vsnprintf+0x1f6>
a000584c:	4801                	li	a6,0
a000584e:	002c8713          	addi	a4,s9,2
a0005852:	bfa1                	j	a00057aa <__vsnprintf+0x152>
a0005854:	8766                	mv	a4,s9
a0005856:	4801                	li	a6,0
a0005858:	bf89                	j	a00057aa <__vsnprintf+0x152>
a000585a:	07400613          	li	a2,116
a000585e:	00c68663          	beq	a3,a2,a000586a <__vsnprintf+0x212>
a0005862:	07a00613          	li	a2,122
a0005866:	f6c693e3          	bne	a3,a2,a00057cc <__vsnprintf+0x174>
a000586a:	10046413          	ori	s0,s0,256
a000586e:	b785                	j	a00057ce <__vsnprintf+0x176>
a0005870:	00174603          	lbu	a2,1(a4)
a0005874:	fed61be3          	bne	a2,a3,a000586a <__vsnprintf+0x212>
a0005878:	30046413          	ori	s0,s0,768
a000587c:	00270c93          	addi	s9,a4,2
a0005880:	b7b9                	j	a00057ce <__vsnprintf+0x176>
a0005882:	00174603          	lbu	a2,1(a4)
a0005886:	00d60563          	beq	a2,a3,a0005890 <__vsnprintf+0x238>
a000588a:	08046413          	ori	s0,s0,128
a000588e:	b781                	j	a00057ce <__vsnprintf+0x176>
a0005890:	0c046413          	ori	s0,s0,192
a0005894:	b7e5                	j	a000587c <__vsnprintf+0x224>
a0005896:	20046413          	ori	s0,s0,512
a000589a:	bf15                	j	a00057ce <__vsnprintf+0x176>
a000589c:	57f2                	lw	a5,60(sp)
a000589e:	4685                	li	a3,1
a00058a0:	f9750713          	addi	a4,a0,-105
a00058a4:	00e69733          	sll	a4,a3,a4
a00058a8:	00f776b3          	and	a3,a4,a5
a00058ac:	eea5                	bnez	a3,a0005924 <__vsnprintf+0x2cc>
a00058ae:	40077693          	andi	a3,a4,1024
a00058b2:	2c069063          	bnez	a3,a0005b72 <__vsnprintf+0x51a>
a00058b6:	08077713          	andi	a4,a4,128
a00058ba:	de070be3          	beqz	a4,a00056b0 <__vsnprintf+0x58>
a00058be:	5844c70b          	lwia	a4,(s1),4,0
a00058c2:	6785                	lui	a5,0x1
a00058c4:	00178893          	addi	a7,a5,1 # 1001 <HeapMinSize+0x1>
a00058c8:	011468b3          	or	a7,s0,a7
a00058cc:	3a071463          	bnez	a4,a0005c74 <__vsnprintf+0x61c>
a00058d0:	a0009737          	lui	a4,0xa0009
a00058d4:	4829                	li	a6,10
a00058d6:	4795                	li	a5,5
a00058d8:	9f870713          	addi	a4,a4,-1544 # a00089f8 <__psram_limit+0xf7c089f8>
a00058dc:	a475                	j	a0005b88 <__vsnprintf+0x530>
a00058de:	06300713          	li	a4,99
a00058e2:	20e50d63          	beq	a0,a4,a0005afc <__vsnprintf+0x4a4>
a00058e6:	06400713          	li	a4,100
a00058ea:	02e50d63          	beq	a0,a4,a0005924 <__vsnprintf+0x2cc>
a00058ee:	05800713          	li	a4,88
a00058f2:	3ae50963          	beq	a0,a4,a0005ca4 <__vsnprintf+0x64c>
a00058f6:	06200713          	li	a4,98
a00058fa:	4889                	li	a7,2
a00058fc:	04e50b63          	beq	a0,a4,a0005952 <__vsnprintf+0x2fa>
a0005900:	04700713          	li	a4,71
a0005904:	bdcd                	j	a00057f6 <__vsnprintf+0x19e>
a0005906:	07800713          	li	a4,120
a000590a:	daa763e3          	bltu	a4,a0,a00056b0 <__vsnprintf+0x58>
a000590e:	06800713          	li	a4,104
a0005912:	f8a765e3          	bltu	a4,a0,a000589c <__vsnprintf+0x244>
a0005916:	06600713          	li	a4,102
a000591a:	1ae50f63          	beq	a0,a4,a0005ad8 <__vsnprintf+0x480>
a000591e:	06700713          	li	a4,103
a0005922:	bdd1                	j	a00057f6 <__vsnprintf+0x19e>
a0005924:	07800713          	li	a4,120
a0005928:	48c1                	li	a7,16
a000592a:	02e50863          	beq	a0,a4,a000595a <__vsnprintf+0x302>
a000592e:	05800713          	li	a4,88
a0005932:	36e50963          	beq	a0,a4,a0005ca4 <__vsnprintf+0x64c>
a0005936:	06f00713          	li	a4,111
a000593a:	36e50963          	beq	a0,a4,a0005cac <__vsnprintf+0x654>
a000593e:	06200713          	li	a4,98
a0005942:	36e50763          	beq	a0,a4,a0005cb0 <__vsnprintf+0x658>
a0005946:	06900713          	li	a4,105
a000594a:	983d                	andi	s0,s0,-17
a000594c:	48a9                	li	a7,10
a000594e:	00e50763          	beq	a0,a4,a000595c <__vsnprintf+0x304>
a0005952:	06400713          	li	a4,100
a0005956:	00e50363          	beq	a0,a4,a000595c <__vsnprintf+0x304>
a000595a:	984d                	andi	s0,s0,-13
a000595c:	40047713          	andi	a4,s0,1024
a0005960:	c311                	beqz	a4,a0005964 <__vsnprintf+0x30c>
a0005962:	9879                	andi	s0,s0,-2
a0005964:	06900693          	li	a3,105
a0005968:	20047713          	andi	a4,s0,512
a000596c:	00d50663          	beq	a0,a3,a0005978 <__vsnprintf+0x320>
a0005970:	06400693          	li	a3,100
a0005974:	10d51b63          	bne	a0,a3,a0005a8a <__vsnprintf+0x432>
a0005978:	cb41                	beqz	a4,a0005a08 <__vsnprintf+0x3b0>
a000597a:	049d                	addi	s1,s1,7
a000597c:	98e1                	andi	s1,s1,-8
a000597e:	40d8                	lw	a4,4(s1)
a0005980:	8da6                	mv	s11,s1
a0005982:	588dc68b          	lwia	a3,(s11),8,0
a0005986:	41f75793          	srai	a5,a4,0x1f
a000598a:	ca3e                	sw	a5,20(sp)
a000598c:	c83e                	sw	a5,16(sp)
a000598e:	8fb5                	xor	a5,a5,a3
a0005990:	d03e                	sw	a5,32(sp)
a0005992:	47d2                	lw	a5,20(sp)
a0005994:	4642                	lw	a2,16(sp)
a0005996:	46d2                	lw	a3,20(sp)
a0005998:	8fb9                	xor	a5,a5,a4
a000599a:	d23e                	sw	a5,36(sp)
a000599c:	5792                	lw	a5,36(sp)
a000599e:	c042                	sw	a6,0(sp)
a00059a0:	01f75813          	srli	a6,a4,0x1f
a00059a4:	5702                	lw	a4,32(sp)
a00059a6:	c422                	sw	s0,8(sp)
a00059a8:	c25a                	sw	s6,4(sp)
a00059aa:	c2c71777          	sub64	a4,a4,a2
a00059ae:	861a                	mv	a2,t1
a00059b0:	86ea                	mv	a3,s10
a00059b2:	85de                	mv	a1,s7
a00059b4:	8562                	mv	a0,s8
a00059b6:	fa5fe0ef          	jal	ra,a000495a <print_integer>
a00059ba:	832a                	mv	t1,a0
a00059bc:	84ee                	mv	s1,s11
a00059be:	000cc503          	lbu	a0,0(s9)
a00059c2:	ce0512e3          	bnez	a0,a00056a6 <__vsnprintf+0x4e>
a00059c6:	a00057b7          	lui	a5,0xa0005
a00059ca:	ce678793          	addi	a5,a5,-794 # a0004ce6 <__psram_limit+0xf7c04ce6>
a00059ce:	00fc0d63          	beq	s8,a5,a00059e8 <__vsnprintf+0x390>
a00059d2:	861a                	mv	a2,t1
a00059d4:	01a36463          	bltu	t1,s10,a00059dc <__vsnprintf+0x384>
a00059d8:	fffd0613          	addi	a2,s10,-1
a00059dc:	c81a                	sw	t1,16(sp)
a00059de:	86ea                	mv	a3,s10
a00059e0:	85de                	mv	a1,s7
a00059e2:	4501                	li	a0,0
a00059e4:	9c02                	jalr	s8
a00059e6:	4342                	lw	t1,16(sp)
a00059e8:	40ba                	lw	ra,140(sp)
a00059ea:	442a                	lw	s0,136(sp)
a00059ec:	449a                	lw	s1,132(sp)
a00059ee:	490a                	lw	s2,128(sp)
a00059f0:	59f6                	lw	s3,124(sp)
a00059f2:	5a66                	lw	s4,120(sp)
a00059f4:	5ad6                	lw	s5,116(sp)
a00059f6:	5b46                	lw	s6,112(sp)
a00059f8:	5bb6                	lw	s7,108(sp)
a00059fa:	5c26                	lw	s8,104(sp)
a00059fc:	5c96                	lw	s9,100(sp)
a00059fe:	5d06                	lw	s10,96(sp)
a0005a00:	4df6                	lw	s11,92(sp)
a0005a02:	851a                	mv	a0,t1
a0005a04:	6149                	addi	sp,sp,144
a0005a06:	8082                	ret
a0005a08:	10047713          	andi	a4,s0,256
a0005a0c:	00448d93          	addi	s11,s1,4
a0005a10:	cb15                	beqz	a4,a0005a44 <__vsnprintf+0x3ec>
a0005a12:	4098                	lw	a4,0(s1)
a0005a14:	41f75693          	srai	a3,a4,0x1f
a0005a18:	00e05c63          	blez	a4,a0005a30 <__vsnprintf+0x3d8>
a0005a1c:	cc3a                	sw	a4,24(sp)
a0005a1e:	ce36                	sw	a3,28(sp)
a0005a20:	c042                	sw	a6,0(sp)
a0005a22:	47f2                	lw	a5,28(sp)
a0005a24:	01f75813          	srli	a6,a4,0x1f
a0005a28:	c422                	sw	s0,8(sp)
a0005a2a:	4762                	lw	a4,24(sp)
a0005a2c:	c25a                	sw	s6,4(sp)
a0005a2e:	b741                	j	a00059ae <__vsnprintf+0x356>
a0005a30:	d43a                	sw	a4,40(sp)
a0005a32:	d636                	sw	a3,44(sp)
a0005a34:	5622                	lw	a2,40(sp)
a0005a36:	56b2                	lw	a3,44(sp)
a0005a38:	4901                	li	s2,0
a0005a3a:	4981                	li	s3,0
a0005a3c:	c2c91677          	sub64	a2,s2,a2
a0005a40:	cc32                	sw	a2,24(sp)
a0005a42:	bff1                	j	a0005a1e <__vsnprintf+0x3c6>
a0005a44:	04047693          	andi	a3,s0,64
a0005a48:	4098                	lw	a4,0(s1)
a0005a4a:	c28d                	beqz	a3,a0005a6c <__vsnprintf+0x414>
a0005a4c:	1c07270b          	ext	a4,a4,7,0
a0005a50:	41f75693          	srai	a3,a4,0x1f
a0005a54:	02e05263          	blez	a4,a0005a78 <__vsnprintf+0x420>
a0005a58:	8a3a                	mv	s4,a4
a0005a5a:	8ab6                	mv	s5,a3
a0005a5c:	c042                	sw	a6,0(sp)
a0005a5e:	c422                	sw	s0,8(sp)
a0005a60:	01f75813          	srli	a6,a4,0x1f
a0005a64:	c25a                	sw	s6,4(sp)
a0005a66:	8752                	mv	a4,s4
a0005a68:	87d6                	mv	a5,s5
a0005a6a:	b791                	j	a00059ae <__vsnprintf+0x356>
a0005a6c:	08047693          	andi	a3,s0,128
a0005a70:	d2e5                	beqz	a3,a0005a50 <__vsnprintf+0x3f8>
a0005a72:	3c07270b          	ext	a4,a4,15,0
a0005a76:	bfe9                	j	a0005a50 <__vsnprintf+0x3f8>
a0005a78:	d83a                	sw	a4,48(sp)
a0005a7a:	da36                	sw	a3,52(sp)
a0005a7c:	5642                	lw	a2,48(sp)
a0005a7e:	56d2                	lw	a3,52(sp)
a0005a80:	4a01                	li	s4,0
a0005a82:	4a81                	li	s5,0
a0005a84:	c2ca1a77          	sub64	s4,s4,a2
a0005a88:	bfd1                	j	a0005a5c <__vsnprintf+0x404>
a0005a8a:	cf01                	beqz	a4,a0005aa2 <__vsnprintf+0x44a>
a0005a8c:	049d                	addi	s1,s1,7
a0005a8e:	98e1                	andi	s1,s1,-8
a0005a90:	4098                	lw	a4,0(s1)
a0005a92:	40dc                	lw	a5,4(s1)
a0005a94:	00848d93          	addi	s11,s1,8
a0005a98:	c042                	sw	a6,0(sp)
a0005a9a:	c422                	sw	s0,8(sp)
a0005a9c:	c25a                	sw	s6,4(sp)
a0005a9e:	4801                	li	a6,0
a0005aa0:	b739                	j	a00059ae <__vsnprintf+0x356>
a0005aa2:	10047713          	andi	a4,s0,256
a0005aa6:	00448d93          	addi	s11,s1,4
a0005aaa:	cb01                	beqz	a4,a0005aba <__vsnprintf+0x462>
a0005aac:	4098                	lw	a4,0(s1)
a0005aae:	c042                	sw	a6,0(sp)
a0005ab0:	c422                	sw	s0,8(sp)
a0005ab2:	c25a                	sw	s6,4(sp)
a0005ab4:	4801                	li	a6,0
a0005ab6:	4781                	li	a5,0
a0005ab8:	bddd                	j	a00059ae <__vsnprintf+0x356>
a0005aba:	04047693          	andi	a3,s0,64
a0005abe:	4098                	lw	a4,0(s1)
a0005ac0:	c681                	beqz	a3,a0005ac8 <__vsnprintf+0x470>
a0005ac2:	0ff77713          	zext.b	a4,a4
a0005ac6:	b7e5                	j	a0005aae <__vsnprintf+0x456>
a0005ac8:	08047693          	andi	a3,s0,128
a0005acc:	d2ed                	beqz	a3,a0005aae <__vsnprintf+0x456>
a0005ace:	57e2                	lw	a5,56(sp)
a0005ad0:	8f7d                	and	a4,a4,a5
a0005ad2:	bff1                	j	a0005aae <__vsnprintf+0x456>
a0005ad4:	02046413          	ori	s0,s0,32
a0005ad8:	049d                	addi	s1,s1,7
a0005ada:	ff84f713          	andi	a4,s1,-8
a0005ade:	435c                	lw	a5,4(a4)
a0005ae0:	00870493          	addi	s1,a4,8
a0005ae4:	88da                	mv	a7,s6
a0005ae6:	4318                	lw	a4,0(a4)
a0005ae8:	c202                	sw	zero,4(sp)
a0005aea:	c022                	sw	s0,0(sp)
a0005aec:	86ea                	mv	a3,s10
a0005aee:	861a                	mv	a2,t1
a0005af0:	85de                	mv	a1,s7
a0005af2:	8562                	mv	a0,s8
a0005af4:	9bfff0ef          	jal	ra,a00054b2 <print_floating_point>
a0005af8:	832a                	mv	t1,a0
a0005afa:	b5d1                	j	a00059be <__vsnprintf+0x366>
a0005afc:	8809                	andi	s0,s0,2
a0005afe:	4d85                	li	s11,1
a0005b00:	e815                	bnez	s0,a0005b34 <__vsnprintf+0x4dc>
a0005b02:	4d81                	li	s11,0
a0005b04:	a801                	j	a0005b14 <__vsnprintf+0x4bc>
a0005b06:	c09a                	sw	t1,64(sp)
a0005b08:	86ea                	mv	a3,s10
a0005b0a:	85de                	mv	a1,s7
a0005b0c:	02000513          	li	a0,32
a0005b10:	9c02                	jalr	s8
a0005b12:	4306                	lw	t1,64(sp)
a0005b14:	006d8633          	add	a2,s11,t1
a0005b18:	0d85                	addi	s11,s11,1
a0005b1a:	ff6de6e3          	bltu	s11,s6,a0005b06 <__vsnprintf+0x4ae>
a0005b1e:	4701                	li	a4,0
a0005b20:	000b0463          	beqz	s6,a0005b28 <__vsnprintf+0x4d0>
a0005b24:	fffb0713          	addi	a4,s6,-1
a0005b28:	933a                	add	t1,t1,a4
a0005b2a:	4d89                	li	s11,2
a0005b2c:	000b0463          	beqz	s6,a0005b34 <__vsnprintf+0x4dc>
a0005b30:	001b0d93          	addi	s11,s6,1
a0005b34:	9844c50b          	lbuia	a0,(s1),4,0
a0005b38:	86ea                	mv	a3,s10
a0005b3a:	861a                	mv	a2,t1
a0005b3c:	85de                	mv	a1,s7
a0005b3e:	00130913          	addi	s2,t1,1
a0005b42:	9c02                	jalr	s8
a0005b44:	c40d                	beqz	s0,a0005b6e <__vsnprintf+0x516>
a0005b46:	846e                	mv	s0,s11
a0005b48:	864a                	mv	a2,s2
a0005b4a:	a811                	j	a0005b5e <__vsnprintf+0x506>
a0005b4c:	86ea                	mv	a3,s10
a0005b4e:	85de                	mv	a1,s7
a0005b50:	02000513          	li	a0,32
a0005b54:	00160993          	addi	s3,a2,1
a0005b58:	9c02                	jalr	s8
a0005b5a:	0405                	addi	s0,s0,1
a0005b5c:	864e                	mv	a2,s3
a0005b5e:	ff6467e3          	bltu	s0,s6,a0005b4c <__vsnprintf+0x4f4>
a0005b62:	4681                	li	a3,0
a0005b64:	01bb6463          	bltu	s6,s11,a0005b6c <__vsnprintf+0x514>
a0005b68:	41bb06b3          	sub	a3,s6,s11
a0005b6c:	9936                	add	s2,s2,a3
a0005b6e:	834a                	mv	t1,s2
a0005b70:	b5b9                	j	a00059be <__vsnprintf+0x366>
a0005b72:	5844c98b          	lwia	s3,(s1),4,0
a0005b76:	02099063          	bnez	s3,a0005b96 <__vsnprintf+0x53e>
a0005b7a:	a0009737          	lui	a4,0xa0009
a0005b7e:	88a2                	mv	a7,s0
a0005b80:	885a                	mv	a6,s6
a0005b82:	4799                	li	a5,6
a0005b84:	9f070713          	addi	a4,a4,-1552 # a00089f0 <__psram_limit+0xf7c089f0>
a0005b88:	86ea                	mv	a3,s10
a0005b8a:	861a                	mv	a2,t1
a0005b8c:	85de                	mv	a1,s7
a0005b8e:	8562                	mv	a0,s8
a0005b90:	d1dfe0ef          	jal	ra,a00048ac <out_rev_>
a0005b94:	b795                	j	a0005af8 <__vsnprintf+0x4a0>
a0005b96:	8742                	mv	a4,a6
a0005b98:	00081363          	bnez	a6,a0005b9e <__vsnprintf+0x546>
a0005b9c:	577d                	li	a4,-1
a0005b9e:	00e986b3          	add	a3,s3,a4
a0005ba2:	874e                	mv	a4,s3
a0005ba4:	00074603          	lbu	a2,0(a4)
a0005ba8:	c219                	beqz	a2,a0005bae <__vsnprintf+0x556>
a0005baa:	02e69263          	bne	a3,a4,a0005bce <__vsnprintf+0x576>
a0005bae:	40047d93          	andi	s11,s0,1024
a0005bb2:	41370933          	sub	s2,a4,s3
a0005bb6:	000d8663          	beqz	s11,a0005bc2 <__vsnprintf+0x56a>
a0005bba:	012836b3          	sltu	a3,a6,s2
a0005bbe:	42d8190b          	mvnez	s2,a6,a3
a0005bc2:	8809                	andi	s0,s0,2
a0005bc4:	e429                	bnez	s0,a0005c0e <__vsnprintf+0x5b6>
a0005bc6:	861a                	mv	a2,t1
a0005bc8:	40690eb3          	sub	t4,s2,t1
a0005bcc:	a01d                	j	a0005bf2 <__vsnprintf+0x59a>
a0005bce:	0705                	addi	a4,a4,1
a0005bd0:	bfd1                	j	a0005ba4 <__vsnprintf+0x54c>
a0005bd2:	00160e13          	addi	t3,a2,1
a0005bd6:	c6f6                	sw	t4,76(sp)
a0005bd8:	c49a                	sw	t1,72(sp)
a0005bda:	c2c2                	sw	a6,68(sp)
a0005bdc:	c0f2                	sw	t3,64(sp)
a0005bde:	86ea                	mv	a3,s10
a0005be0:	85de                	mv	a1,s7
a0005be2:	02000513          	li	a0,32
a0005be6:	9c02                	jalr	s8
a0005be8:	4e06                	lw	t3,64(sp)
a0005bea:	4816                	lw	a6,68(sp)
a0005bec:	4326                	lw	t1,72(sp)
a0005bee:	4eb6                	lw	t4,76(sp)
a0005bf0:	8672                	mv	a2,t3
a0005bf2:	01d606b3          	add	a3,a2,t4
a0005bf6:	fd66eee3          	bltu	a3,s6,a0005bd2 <__vsnprintf+0x57a>
a0005bfa:	4681                	li	a3,0
a0005bfc:	012b6463          	bltu	s6,s2,a0005c04 <__vsnprintf+0x5ac>
a0005c00:	412b06b3          	sub	a3,s6,s2
a0005c04:	00190713          	addi	a4,s2,1
a0005c08:	9336                	add	t1,t1,a3
a0005c0a:	00e68933          	add	s2,a3,a4
a0005c0e:	406989b3          	sub	s3,s3,t1
a0005c12:	a829                	j	a0005c2c <__vsnprintf+0x5d4>
a0005c14:	8836                	mv	a6,a3
a0005c16:	00130893          	addi	a7,t1,1
a0005c1a:	c2c2                	sw	a6,68(sp)
a0005c1c:	c0c6                	sw	a7,64(sp)
a0005c1e:	861a                	mv	a2,t1
a0005c20:	86ea                	mv	a3,s10
a0005c22:	85de                	mv	a1,s7
a0005c24:	9c02                	jalr	s8
a0005c26:	4886                	lw	a7,64(sp)
a0005c28:	4816                	lw	a6,68(sp)
a0005c2a:	8346                	mv	t1,a7
a0005c2c:	8069c50b          	lrbu	a0,s3,t1,0
a0005c30:	c519                	beqz	a0,a0005c3e <__vsnprintf+0x5e6>
a0005c32:	fe0d82e3          	beqz	s11,a0005c16 <__vsnprintf+0x5be>
a0005c36:	fff80693          	addi	a3,a6,-1 # a0008fff <__psram_limit+0xf7c08fff>
a0005c3a:	fc081de3          	bnez	a6,a0005c14 <__vsnprintf+0x5bc>
a0005c3e:	d80400e3          	beqz	s0,a00059be <__vsnprintf+0x366>
a0005c42:	861a                	mv	a2,t1
a0005c44:	40690433          	sub	s0,s2,t1
a0005c48:	a819                	j	a0005c5e <__vsnprintf+0x606>
a0005c4a:	c09a                	sw	t1,64(sp)
a0005c4c:	86ea                	mv	a3,s10
a0005c4e:	85de                	mv	a1,s7
a0005c50:	02000513          	li	a0,32
a0005c54:	00160d93          	addi	s11,a2,1
a0005c58:	9c02                	jalr	s8
a0005c5a:	4306                	lw	t1,64(sp)
a0005c5c:	866e                	mv	a2,s11
a0005c5e:	008606b3          	add	a3,a2,s0
a0005c62:	ff66e4e3          	bltu	a3,s6,a0005c4a <__vsnprintf+0x5f2>
a0005c66:	4681                	li	a3,0
a0005c68:	012b6463          	bltu	s6,s2,a0005c70 <__vsnprintf+0x618>
a0005c6c:	412b06b3          	sub	a3,s6,s2
a0005c70:	9336                	add	t1,t1,a3
a0005c72:	b3b1                	j	a00059be <__vsnprintf+0x366>
a0005c74:	47a9                	li	a5,10
a0005c76:	c446                	sw	a7,8(sp)
a0005c78:	c23e                	sw	a5,4(sp)
a0005c7a:	c042                	sw	a6,0(sp)
a0005c7c:	48c1                	li	a7,16
a0005c7e:	4801                	li	a6,0
a0005c80:	4781                	li	a5,0
a0005c82:	86ea                	mv	a3,s10
a0005c84:	861a                	mv	a2,t1
a0005c86:	85de                	mv	a1,s7
a0005c88:	8562                	mv	a0,s8
a0005c8a:	cd1fe0ef          	jal	ra,a000495a <print_integer>
a0005c8e:	b5ad                	j	a0005af8 <__vsnprintf+0x4a0>
a0005c90:	00130413          	addi	s0,t1,1
a0005c94:	86ea                	mv	a3,s10
a0005c96:	861a                	mv	a2,t1
a0005c98:	85de                	mv	a1,s7
a0005c9a:	02500513          	li	a0,37
a0005c9e:	9c02                	jalr	s8
a0005ca0:	8322                	mv	t1,s0
a0005ca2:	bb31                	j	a00059be <__vsnprintf+0x366>
a0005ca4:	02046413          	ori	s0,s0,32
a0005ca8:	48c1                	li	a7,16
a0005caa:	b945                	j	a000595a <__vsnprintf+0x302>
a0005cac:	48a1                	li	a7,8
a0005cae:	b155                	j	a0005952 <__vsnprintf+0x2fa>
a0005cb0:	4889                	li	a7,2
a0005cb2:	b145                	j	a0005952 <__vsnprintf+0x2fa>

a0005cb4 <vsnprintf>:
a0005cb4:	8736                	mv	a4,a3
a0005cb6:	86b2                	mv	a3,a2
a0005cb8:	862e                	mv	a2,a1
a0005cba:	85aa                	mv	a1,a0
a0005cbc:	a0005537          	lui	a0,0xa0005
a0005cc0:	8a050513          	addi	a0,a0,-1888 # a00048a0 <__psram_limit+0xf7c048a0>
a0005cc4:	995ff06f          	j	a0005658 <__vsnprintf>

a0005cc8 <console_vsnprintf>:
a0005cc8:	86aa                	mv	a3,a0
a0005cca:	a0005537          	lui	a0,0xa0005
a0005cce:	872e                	mv	a4,a1
a0005cd0:	4601                	li	a2,0
a0005cd2:	4581                	li	a1,0
a0005cd4:	ce650513          	addi	a0,a0,-794 # a0004ce6 <__psram_limit+0xf7c04ce6>
a0005cd8:	981ff06f          	j	a0005658 <__vsnprintf>

a0005cdc <__wrap_sprintf>:
a0005cdc:	7139                	addi	sp,sp,-64
a0005cde:	d432                	sw	a2,40(sp)
a0005ce0:	1030                	addi	a2,sp,40
a0005ce2:	ce06                	sw	ra,28(sp)
a0005ce4:	d636                	sw	a3,44(sp)
a0005ce6:	d83a                	sw	a4,48(sp)
a0005ce8:	da3e                	sw	a5,52(sp)
a0005cea:	dc42                	sw	a6,56(sp)
a0005cec:	de46                	sw	a7,60(sp)
a0005cee:	c632                	sw	a2,12(sp)
a0005cf0:	2021                	jal	a0005cf8 <vsprintf>
a0005cf2:	40f2                	lw	ra,28(sp)
a0005cf4:	6121                	addi	sp,sp,64
a0005cf6:	8082                	ret

a0005cf8 <vsprintf>:
a0005cf8:	86b2                	mv	a3,a2
a0005cfa:	862e                	mv	a2,a1
a0005cfc:	55fd                	li	a1,-1
a0005cfe:	bf5d                	j	a0005cb4 <vsnprintf>

a0005d00 <putchar>:
a0005d00:	1141                	addi	sp,sp,-16
a0005d02:	62fc37b7          	lui	a5,0x62fc3
a0005d06:	c422                	sw	s0,8(sp)
a0005d08:	842a                	mv	s0,a0
a0005d0a:	ee07a503          	lw	a0,-288(a5) # 62fc2ee0 <console>
a0005d0e:	c606                	sw	ra,12(sp)
a0005d10:	cd01                	beqz	a0,a0005d28 <putchar+0x28>
a0005d12:	0ff47593          	zext.b	a1,s0
a0005d16:	c2fbb097          	auipc	ra,0xc2fbb
a0005d1a:	a56080e7          	jalr	-1450(ra) # 62fc076c <qcc74x_uart_putchar>
a0005d1e:	40b2                	lw	ra,12(sp)
a0005d20:	8522                	mv	a0,s0
a0005d22:	4422                	lw	s0,8(sp)
a0005d24:	0141                	addi	sp,sp,16
a0005d26:	8082                	ret
a0005d28:	547d                	li	s0,-1
a0005d2a:	bfd5                	j	a0005d1e <putchar+0x1e>

a0005d2c <puts>:
a0005d2c:	1101                	addi	sp,sp,-32
a0005d2e:	ce06                	sw	ra,28(sp)
a0005d30:	cc22                	sw	s0,24(sp)
a0005d32:	e519                	bnez	a0,a0005d40 <puts+0x14>
a0005d34:	4401                	li	s0,0
a0005d36:	40f2                	lw	ra,28(sp)
a0005d38:	8522                	mv	a0,s0
a0005d3a:	4462                	lw	s0,24(sp)
a0005d3c:	6105                	addi	sp,sp,32
a0005d3e:	8082                	ret
a0005d40:	c62a                	sw	a0,12(sp)
a0005d42:	30f020ef          	jal	ra,a0008850 <strlen>
a0005d46:	62fc37b7          	lui	a5,0x62fc3
a0005d4a:	842a                	mv	s0,a0
a0005d4c:	ee07a503          	lw	a0,-288(a5) # 62fc2ee0 <console>
a0005d50:	d175                	beqz	a0,a0005d34 <puts+0x8>
a0005d52:	45b2                	lw	a1,12(sp)
a0005d54:	8622                	mv	a2,s0
a0005d56:	c2fbb097          	auipc	ra,0xc2fbb
a0005d5a:	a68080e7          	jalr	-1432(ra) # 62fc07be <qcc74x_uart_put>
a0005d5e:	bfe1                	j	a0005d36 <puts+0xa>

a0005d60 <printf>:
a0005d60:	7139                	addi	sp,sp,-64
a0005d62:	da3e                	sw	a5,52(sp)
a0005d64:	62fc37b7          	lui	a5,0x62fc3
a0005d68:	ee07a783          	lw	a5,-288(a5) # 62fc2ee0 <console>
a0005d6c:	ce06                	sw	ra,28(sp)
a0005d6e:	d22e                	sw	a1,36(sp)
a0005d70:	d432                	sw	a2,40(sp)
a0005d72:	d636                	sw	a3,44(sp)
a0005d74:	d83a                	sw	a4,48(sp)
a0005d76:	dc42                	sw	a6,56(sp)
a0005d78:	de46                	sw	a7,60(sp)
a0005d7a:	c799                	beqz	a5,a0005d88 <printf+0x28>
a0005d7c:	104c                	addi	a1,sp,36
a0005d7e:	c62e                	sw	a1,12(sp)
a0005d80:	37a1                	jal	a0005cc8 <console_vsnprintf>
a0005d82:	40f2                	lw	ra,28(sp)
a0005d84:	6121                	addi	sp,sp,64
a0005d86:	8082                	ret
a0005d88:	4501                	li	a0,0
a0005d8a:	bfe5                	j	a0005d82 <printf+0x22>

a0005d8c <qcc74x_uart_set_console>:
a0005d8c:	62fc37b7          	lui	a5,0x62fc3
a0005d90:	eea7a023          	sw	a0,-288(a5) # 62fc2ee0 <console>
a0005d94:	8082                	ret

a0005d96 <kmem_init>:
a0005d96:	862e                	mv	a2,a1
a0005d98:	85aa                	mv	a1,a0
a0005d9a:	62fc3537          	lui	a0,0x62fc3
a0005d9e:	ee450513          	addi	a0,a0,-284 # 62fc2ee4 <g_kmemheap>
a0005da2:	aa41                	j	a0005f32 <qcc74x_mem_init>

a0005da4 <block_next>:
a0005da4:	415c                	lw	a5,4(a0)
a0005da6:	9bf1                	andi	a5,a5,-4
a0005da8:	953e                	add	a0,a0,a5
a0005daa:	0511                	addi	a0,a0,4
a0005dac:	8082                	ret

a0005dae <block_link_next>:
a0005dae:	1141                	addi	sp,sp,-16
a0005db0:	c422                	sw	s0,8(sp)
a0005db2:	c606                	sw	ra,12(sp)
a0005db4:	842a                	mv	s0,a0
a0005db6:	37fd                	jal	a0005da4 <block_next>
a0005db8:	40b2                	lw	ra,12(sp)
a0005dba:	c100                	sw	s0,0(a0)
a0005dbc:	4422                	lw	s0,8(sp)
a0005dbe:	0141                	addi	sp,sp,16
a0005dc0:	8082                	ret

a0005dc2 <mapping_insert>:
a0005dc2:	07f00793          	li	a5,127
a0005dc6:	00a7e763          	bltu	a5,a0,a0005dd4 <mapping_insert+0x12>
a0005dca:	8509                	srai	a0,a0,0x2
a0005dcc:	4781                	li	a5,0
a0005dce:	c19c                	sw	a5,0(a1)
a0005dd0:	c208                	sw	a0,0(a2)
a0005dd2:	8082                	ret
a0005dd4:	af9506f7          	clz32	a3,a0
a0005dd8:	4769                	li	a4,26
a0005dda:	8f15                	sub	a4,a4,a3
a0005ddc:	00e55533          	srl	a0,a0,a4
a0005de0:	47e5                	li	a5,25
a0005de2:	02054513          	xori	a0,a0,32
a0005de6:	8f95                	sub	a5,a5,a3
a0005de8:	b7dd                	j	a0005dce <mapping_insert+0xc>

a0005dea <block_insert>:
a0005dea:	1101                	addi	sp,sp,-32
a0005dec:	cc22                	sw	s0,24(sp)
a0005dee:	842a                	mv	s0,a0
a0005df0:	41c8                	lw	a0,4(a1)
a0005df2:	ca26                	sw	s1,20(sp)
a0005df4:	0070                	addi	a2,sp,12
a0005df6:	84ae                	mv	s1,a1
a0005df8:	9971                	andi	a0,a0,-4
a0005dfa:	002c                	addi	a1,sp,8
a0005dfc:	ce06                	sw	ra,28(sp)
a0005dfe:	37d1                	jal	a0005dc2 <mapping_insert>
a0005e00:	4722                	lw	a4,8(sp)
a0005e02:	4632                	lw	a2,12(sp)
a0005e04:	40f2                	lw	ra,28(sp)
a0005e06:	00571793          	slli	a5,a4,0x5
a0005e0a:	97b2                	add	a5,a5,a2
a0005e0c:	04f4178b          	addsl	a5,s0,a5,2
a0005e10:	5bf4                	lw	a3,116(a5)
a0005e12:	c4c0                	sw	s0,12(s1)
a0005e14:	c494                	sw	a3,8(s1)
a0005e16:	c6c4                	sw	s1,12(a3)
a0005e18:	dbe4                	sw	s1,116(a5)
a0005e1a:	4814                	lw	a3,16(s0)
a0005e1c:	4785                	li	a5,1
a0005e1e:	00e795b3          	sll	a1,a5,a4
a0005e22:	8ecd                	or	a3,a3,a1
a0005e24:	c814                	sw	a3,16(s0)
a0005e26:	04e4140b          	addsl	s0,s0,a4,2
a0005e2a:	4858                	lw	a4,20(s0)
a0005e2c:	00c797b3          	sll	a5,a5,a2
a0005e30:	44d2                	lw	s1,20(sp)
a0005e32:	8fd9                	or	a5,a5,a4
a0005e34:	c85c                	sw	a5,20(s0)
a0005e36:	4462                	lw	s0,24(sp)
a0005e38:	6105                	addi	sp,sp,32
a0005e3a:	8082                	ret

a0005e3c <tlsf_size>:
a0005e3c:	6505                	lui	a0,0x1
a0005e3e:	c7450513          	addi	a0,a0,-908 # c74 <VerOffset+0x74>
a0005e42:	8082                	ret

a0005e44 <tlsf_add_pool>:
a0005e44:	1141                	addi	sp,sp,-16
a0005e46:	c606                	sw	ra,12(sp)
a0005e48:	c422                	sw	s0,8(sp)
a0005e4a:	c226                	sw	s1,4(sp)
a0005e4c:	0035f713          	andi	a4,a1,3
a0005e50:	cf11                	beqz	a4,a0005e6c <tlsf_add_pool+0x28>
a0005e52:	a0009537          	lui	a0,0xa0009
a0005e56:	4591                	li	a1,4
a0005e58:	b1850513          	addi	a0,a0,-1256 # a0008b18 <__psram_limit+0xf7c08b18>
a0005e5c:	3711                	jal	a0005d60 <printf>
a0005e5e:	4401                	li	s0,0
a0005e60:	40b2                	lw	ra,12(sp)
a0005e62:	8522                	mv	a0,s0
a0005e64:	4422                	lw	s0,8(sp)
a0005e66:	4492                	lw	s1,4(sp)
a0005e68:	0141                	addi	sp,sp,16
a0005e6a:	8082                	ret
a0005e6c:	ff860793          	addi	a5,a2,-8
a0005e70:	9bf1                	andi	a5,a5,-4
a0005e72:	40000637          	lui	a2,0x40000
a0005e76:	ff478713          	addi	a4,a5,-12
a0005e7a:	ff460693          	addi	a3,a2,-12 # 3ffffff4 <__wifi_bss_end+0x1cfcfff4>
a0005e7e:	00e6fa63          	bgeu	a3,a4,a0005e92 <tlsf_add_pool+0x4e>
a0005e82:	a0009537          	lui	a0,0xa0009
a0005e86:	0621                	addi	a2,a2,8
a0005e88:	45d1                	li	a1,20
a0005e8a:	b4c50513          	addi	a0,a0,-1204 # a0008b4c <__psram_limit+0xf7c08b4c>
a0005e8e:	3dc9                	jal	a0005d60 <printf>
a0005e90:	b7f9                	j	a0005e5e <tlsf_add_pool+0x1a>
a0005e92:	84ae                	mv	s1,a1
a0005e94:	59c4c70b          	lwia	a4,(s1),-4,0
a0005e98:	0017e793          	ori	a5,a5,1
a0005e9c:	842e                	mv	s0,a1
a0005e9e:	c0dc                	sw	a5,4(s1)
a0005ea0:	85a6                	mv	a1,s1
a0005ea2:	37a1                	jal	a0005dea <block_insert>
a0005ea4:	8526                	mv	a0,s1
a0005ea6:	3721                	jal	a0005dae <block_link_next>
a0005ea8:	4789                	li	a5,2
a0005eaa:	c15c                	sw	a5,4(a0)
a0005eac:	bf55                	j	a0005e60 <tlsf_add_pool+0x1c>

a0005eae <tlsf_create>:
a0005eae:	00357793          	andi	a5,a0,3
a0005eb2:	cf89                	beqz	a5,a0005ecc <tlsf_create+0x1e>
a0005eb4:	a0009537          	lui	a0,0xa0009
a0005eb8:	1141                	addi	sp,sp,-16
a0005eba:	4591                	li	a1,4
a0005ebc:	b8c50513          	addi	a0,a0,-1140 # a0008b8c <__psram_limit+0xf7c08b8c>
a0005ec0:	c606                	sw	ra,12(sp)
a0005ec2:	3d79                	jal	a0005d60 <printf>
a0005ec4:	40b2                	lw	ra,12(sp)
a0005ec6:	4501                	li	a0,0
a0005ec8:	0141                	addi	sp,sp,16
a0005eca:	8082                	ret
a0005ecc:	c508                	sw	a0,8(a0)
a0005ece:	c548                	sw	a0,12(a0)
a0005ed0:	00052823          	sw	zero,16(a0)
a0005ed4:	07450693          	addi	a3,a0,116
a0005ed8:	4781                	li	a5,0
a0005eda:	01450593          	addi	a1,a0,20
a0005ede:	02000813          	li	a6,32
a0005ee2:	4661                	li	a2,24
a0005ee4:	44f5d00b          	srw	zero,a1,a5,2
a0005ee8:	4701                	li	a4,0
a0005eea:	44e6d50b          	srw	a0,a3,a4,2
a0005eee:	0705                	addi	a4,a4,1
a0005ef0:	ff071de3          	bne	a4,a6,a0005eea <tlsf_create+0x3c>
a0005ef4:	0785                	addi	a5,a5,1
a0005ef6:	08068693          	addi	a3,a3,128
a0005efa:	fec795e3          	bne	a5,a2,a0005ee4 <tlsf_create+0x36>
a0005efe:	8082                	ret

a0005f00 <tlsf_create_with_pool>:
a0005f00:	1101                	addi	sp,sp,-32
a0005f02:	ce06                	sw	ra,28(sp)
a0005f04:	cc22                	sw	s0,24(sp)
a0005f06:	ca26                	sw	s1,20(sp)
a0005f08:	c62e                	sw	a1,12(sp)
a0005f0a:	84aa                	mv	s1,a0
a0005f0c:	374d                	jal	a0005eae <tlsf_create>
a0005f0e:	45b2                	lw	a1,12(sp)
a0005f10:	77fd                	lui	a5,0xfffff
a0005f12:	38c78793          	addi	a5,a5,908 # fffff38c <__psram_limit+0x57bff38c>
a0005f16:	00f58633          	add	a2,a1,a5
a0005f1a:	6585                	lui	a1,0x1
a0005f1c:	c7458593          	addi	a1,a1,-908 # c74 <VerOffset+0x74>
a0005f20:	95a6                	add	a1,a1,s1
a0005f22:	842a                	mv	s0,a0
a0005f24:	3705                	jal	a0005e44 <tlsf_add_pool>
a0005f26:	40f2                	lw	ra,28(sp)
a0005f28:	8522                	mv	a0,s0
a0005f2a:	4462                	lw	s0,24(sp)
a0005f2c:	44d2                	lw	s1,20(sp)
a0005f2e:	6105                	addi	sp,sp,32
a0005f30:	8082                	ret

a0005f32 <qcc74x_mem_init>:
a0005f32:	1101                	addi	sp,sp,-32
a0005f34:	ce06                	sw	ra,28(sp)
a0005f36:	cc22                	sw	s0,24(sp)
a0005f38:	ca26                	sw	s1,20(sp)
a0005f3a:	842a                	mv	s0,a0
a0005f3c:	84ae                	mv	s1,a1
a0005f3e:	c632                	sw	a2,12(sp)
a0005f40:	3df5                	jal	a0005e3c <tlsf_size>
a0005f42:	9526                	add	a0,a0,s1
a0005f44:	c048                	sw	a0,4(s0)
a0005f46:	3ddd                	jal	a0005e3c <tlsf_size>
a0005f48:	4632                	lw	a2,12(sp)
a0005f4a:	40a60533          	sub	a0,a2,a0
a0005f4e:	c408                	sw	a0,8(s0)
a0005f50:	85b2                	mv	a1,a2
a0005f52:	8526                	mv	a0,s1
a0005f54:	3775                	jal	a0005f00 <tlsf_create_with_pool>
a0005f56:	441c                	lw	a5,8(s0)
a0005f58:	40f2                	lw	ra,28(sp)
a0005f5a:	c008                	sw	a0,0(s0)
a0005f5c:	c45c                	sw	a5,12(s0)
a0005f5e:	c81c                	sw	a5,16(s0)
a0005f60:	4462                	lw	s0,24(sp)
a0005f62:	44d2                	lw	s1,20(sp)
a0005f64:	6105                	addi	sp,sp,32
a0005f66:	8082                	ret

a0005f68 <log_start>:
a0005f68:	8082                	ret

a0005f6a <coredump_run>:
a0005f6a:	711d                	addi	sp,sp,-96
a0005f6c:	cca2                	sw	s0,88(sp)
a0005f6e:	62fc3537          	lui	a0,0x62fc3
a0005f72:	a000a437          	lui	s0,0xa000a
a0005f76:	c4440593          	addi	a1,s0,-956 # a0009c44 <__psram_limit+0xf7c09c44>
a0005f7a:	4651                	li	a2,20
a0005f7c:	ef850513          	addi	a0,a0,-264 # 62fc2ef8 <core_build_id>
a0005f80:	ce86                	sw	ra,92(sp)
a0005f82:	c4d2                	sw	s4,72(sp)
a0005f84:	c2d6                	sw	s5,68(sp)
a0005f86:	c0da                	sw	s6,64(sp)
a0005f88:	caa6                	sw	s1,84(sp)
a0005f8a:	c8ca                	sw	s2,80(sp)
a0005f8c:	c6ce                	sw	s3,76(sp)
a0005f8e:	cbafe0ef          	jal	ra,a0004448 <memcpy>
a0005f92:	a0009537          	lui	a0,0xa0009
a0005f96:	bc050513          	addi	a0,a0,-1088 # a0008bc0 <__psram_limit+0xf7c08bc0>
a0005f9a:	33d9                	jal	a0005d60 <printf>
a0005f9c:	c4440613          	addi	a2,s0,-956
a0005fa0:	01364783          	lbu	a5,19(a2)
a0005fa4:	a0009537          	lui	a0,0xa0009
a0005fa8:	c0850513          	addi	a0,a0,-1016 # a0008c08 <__psram_limit+0xf7c08c08>
a0005fac:	d83e                	sw	a5,48(sp)
a0005fae:	01264783          	lbu	a5,18(a2)
a0005fb2:	5a75                	li	s4,-3
a0005fb4:	40000a93          	li	s5,1024
a0005fb8:	d63e                	sw	a5,44(sp)
a0005fba:	01164783          	lbu	a5,17(a2)
a0005fbe:	a0009b37          	lui	s6,0xa0009
a0005fc2:	d43e                	sw	a5,40(sp)
a0005fc4:	01064783          	lbu	a5,16(a2)
a0005fc8:	d23e                	sw	a5,36(sp)
a0005fca:	00f64783          	lbu	a5,15(a2)
a0005fce:	d03e                	sw	a5,32(sp)
a0005fd0:	00e64783          	lbu	a5,14(a2)
a0005fd4:	ce3e                	sw	a5,28(sp)
a0005fd6:	00d64783          	lbu	a5,13(a2)
a0005fda:	cc3e                	sw	a5,24(sp)
a0005fdc:	00c64783          	lbu	a5,12(a2)
a0005fe0:	ca3e                	sw	a5,20(sp)
a0005fe2:	00b64783          	lbu	a5,11(a2)
a0005fe6:	c83e                	sw	a5,16(sp)
a0005fe8:	00a64783          	lbu	a5,10(a2)
a0005fec:	c63e                	sw	a5,12(sp)
a0005fee:	00964783          	lbu	a5,9(a2)
a0005ff2:	c43e                	sw	a5,8(sp)
a0005ff4:	00864783          	lbu	a5,8(a2)
a0005ff8:	c23e                	sw	a5,4(sp)
a0005ffa:	00764783          	lbu	a5,7(a2)
a0005ffe:	c03e                	sw	a5,0(sp)
a0006000:	00664883          	lbu	a7,6(a2)
a0006004:	00564803          	lbu	a6,5(a2)
a0006008:	00464783          	lbu	a5,4(a2)
a000600c:	00364703          	lbu	a4,3(a2)
a0006010:	00264683          	lbu	a3,2(a2)
a0006014:	00164603          	lbu	a2,1(a2)
a0006018:	c4444583          	lbu	a1,-956(s0)
a000601c:	a000a437          	lui	s0,0xa000a
a0006020:	c0c40413          	addi	s0,s0,-1012 # a0009c0c <__psram_limit+0xf7c09c0c>
a0006024:	3b35                	jal	a0005d60 <printf>
a0006026:	00042983          	lw	s3,0(s0)
a000602a:	fff98793          	addi	a5,s3,-1
a000602e:	00fa7b63          	bgeu	s4,a5,a0006044 <coredump_run+0xda>
a0006032:	a0009537          	lui	a0,0xa0009
a0006036:	c7450513          	addi	a0,a0,-908 # a0008c74 <__psram_limit+0xf7c08c74>
a000603a:	331d                	jal	a0005d60 <printf>
a000603c:	2ec020ef          	jal	ra,a0008328 <qcc74x_sys_reset_por>
a0006040:	0001                	nop
a0006042:	bffd                	j	a0006040 <coredump_run+0xd6>
a0006044:	00442903          	lw	s2,4(s0)
a0006048:	00091463          	bnez	s2,a0006050 <coredump_run+0xe6>
a000604c:	0421                	addi	s0,s0,8
a000604e:	bfe1                	j	a0006026 <coredump_run+0xbc>
a0006050:	4481                	li	s1,0
a0006052:	40990633          	sub	a2,s2,s1
a0006056:	009985b3          	add	a1,s3,s1
a000605a:	00caf463          	bgeu	s5,a2,a0006062 <coredump_run+0xf8>
a000605e:	40000613          	li	a2,1024
a0006062:	c68b0693          	addi	a3,s6,-920 # a0008c68 <__psram_limit+0xf7c08c68>
a0006066:	852e                	mv	a0,a1
a0006068:	40048493          	addi	s1,s1,1024
a000606c:	2851                	jal	a0006100 <coredump_print>
a000606e:	ff24e2e3          	bltu	s1,s2,a0006052 <coredump_run+0xe8>
a0006072:	bfe9                	j	a000604c <coredump_run+0xe2>

a0006074 <cd_base64_write_block>:
a0006074:	1141                	addi	sp,sp,-16
a0006076:	c606                	sw	ra,12(sp)
a0006078:	c422                	sw	s0,8(sp)
a000607a:	c226                	sw	s1,4(sp)
a000607c:	842a                	mv	s0,a0
a000607e:	00054503          	lbu	a0,0(a0)
a0006082:	84ae                	mv	s1,a1
a0006084:	39b5                	jal	a0005d00 <putchar>
a0006086:	00144503          	lbu	a0,1(s0)
a000608a:	399d                	jal	a0005d00 <putchar>
a000608c:	00244503          	lbu	a0,2(s0)
a0006090:	3985                	jal	a0005d00 <putchar>
a0006092:	00344503          	lbu	a0,3(s0)
a0006096:	31ad                	jal	a0005d00 <putchar>
a0006098:	409c                	lw	a5,0(s1)
a000609a:	4765                	li	a4,25
a000609c:	0785                	addi	a5,a5,1
a000609e:	c09c                	sw	a5,0(s1)
a00060a0:	00f75963          	bge	a4,a5,a00060b2 <cd_base64_write_block+0x3e>
a00060a4:	a000a537          	lui	a0,0xa000a
a00060a8:	9f450513          	addi	a0,a0,-1548 # a00099f4 <__psram_limit+0xf7c099f4>
a00060ac:	3141                	jal	a0005d2c <puts>
a00060ae:	0004a023          	sw	zero,0(s1)
a00060b2:	40b2                	lw	ra,12(sp)
a00060b4:	4422                	lw	s0,8(sp)
a00060b6:	4492                	lw	s1,4(sp)
a00060b8:	0141                	addi	sp,sp,16
a00060ba:	8082                	ret

a00060bc <read_word_cb>:
a00060bc:	4598                	lw	a4,8(a1)
a00060be:	45dc                	lw	a5,12(a1)
a00060c0:	02f77e63          	bgeu	a4,a5,a00060fc <read_word_cb+0x40>
a00060c4:	41d4                	lw	a3,4(a1)
a00060c6:	1141                	addi	sp,sp,-16
a00060c8:	c606                	sw	ra,12(sp)
a00060ca:	ffc77793          	andi	a5,a4,-4
a00060ce:	00f68563          	beq	a3,a5,a00060d8 <read_word_cb+0x1c>
a00060d2:	c1dc                	sw	a5,4(a1)
a00060d4:	439c                	lw	a5,0(a5)
a00060d6:	c99c                	sw	a5,16(a1)
a00060d8:	8b0d                	andi	a4,a4,3
a00060da:	972e                	add	a4,a4,a1
a00060dc:	01074703          	lbu	a4,16(a4)
a00060e0:	87ae                	mv	a5,a1
a00060e2:	00e50023          	sb	a4,0(a0)
a00060e6:	4598                	lw	a4,8(a1)
a00060e8:	0705                	addi	a4,a4,1
a00060ea:	c598                	sw	a4,8(a1)
a00060ec:	00054583          	lbu	a1,0(a0)
a00060f0:	4bc8                	lw	a0,20(a5)
a00060f2:	2c0d                	jal	a0006324 <utils_crc32_stream_feed>
a00060f4:	40b2                	lw	ra,12(sp)
a00060f6:	4501                	li	a0,0
a00060f8:	0141                	addi	sp,sp,16
a00060fa:	8082                	ret
a00060fc:	4505                	li	a0,1
a00060fe:	8082                	ret

a0006100 <coredump_print>:
a0006100:	715d                	addi	sp,sp,-80
a0006102:	c2a6                	sw	s1,68(sp)
a0006104:	62fc34b7          	lui	s1,0x62fc3
a0006108:	f0c48493          	addi	s1,s1,-244 # 62fc2f0c <init.0>
a000610c:	409c                	lw	a5,0(s1)
a000610e:	c4a2                	sw	s0,72(sp)
a0006110:	c0ca                	sw	s2,64(sp)
a0006112:	de4e                	sw	s3,60(sp)
a0006114:	dc52                	sw	s4,56(sp)
a0006116:	c686                	sw	ra,76(sp)
a0006118:	da56                	sw	s5,52(sp)
a000611a:	892a                	mv	s2,a0
a000611c:	89ae                	mv	s3,a1
a000611e:	8432                	mv	s0,a2
a0006120:	8a36                	mv	s4,a3
a0006122:	eb81                	bnez	a5,a0006132 <coredump_print+0x32>
a0006124:	a0009537          	lui	a0,0xa0009
a0006128:	c9c50513          	addi	a0,a0,-868 # a0008c9c <__psram_limit+0xf7c08c9c>
a000612c:	3101                	jal	a0005d2c <puts>
a000612e:	4785                	li	a5,1
a0006130:	c09c                	sw	a5,0(s1)
a0006132:	a0009537          	lui	a0,0xa0009
a0006136:	8209190b          	rev	s2,s2
a000613a:	cc850513          	addi	a0,a0,-824 # a0008cc8 <__psram_limit+0xf7c08cc8>
a000613e:	c802                	sw	zero,16(sp)
a0006140:	ca02                	sw	zero,20(sp)
a0006142:	36ed                	jal	a0005d2c <puts>
a0006144:	c64a                	sw	s2,12(sp)
a0006146:	00c10913          	addi	s2,sp,12
a000614a:	4611                	li	a2,4
a000614c:	85ca                	mv	a1,s2
a000614e:	0808                	addi	a0,sp,16
a0006150:	2ae5                	jal	a0006348 <utils_bin2hex>
a0006152:	4481                	li	s1,0
a0006154:	4aa1                	li	s5,8
a0006156:	081c                	addi	a5,sp,16
a0006158:	8097c50b          	lrbu	a0,a5,s1,0
a000615c:	0485                	addi	s1,s1,1
a000615e:	364d                	jal	a0005d00 <putchar>
a0006160:	ff549be3          	bne	s1,s5,a0006156 <coredump_print+0x56>
a0006164:	04000513          	li	a0,64
a0006168:	b99ff0ef          	jal	ra,a0005d00 <putchar>
a000616c:	8204178b          	rev	a5,s0
a0006170:	4611                	li	a2,4
a0006172:	85ca                	mv	a1,s2
a0006174:	0808                	addi	a0,sp,16
a0006176:	c63e                	sw	a5,12(sp)
a0006178:	4481                	li	s1,0
a000617a:	22f9                	jal	a0006348 <utils_bin2hex>
a000617c:	4aa1                	li	s5,8
a000617e:	081c                	addi	a5,sp,16
a0006180:	8097c50b          	lrbu	a0,a5,s1,0
a0006184:	0485                	addi	s1,s1,1
a0006186:	b7bff0ef          	jal	ra,a0005d00 <putchar>
a000618a:	ff549ae3          	bne	s1,s5,a000617e <coredump_print+0x7e>
a000618e:	000a0963          	beqz	s4,a00061a0 <coredump_print+0xa0>
a0006192:	04000513          	li	a0,64
a0006196:	b6bff0ef          	jal	ra,a0005d00 <putchar>
a000619a:	8552                	mv	a0,s4
a000619c:	b91ff0ef          	jal	ra,a0005d2c <puts>
a00061a0:	a00094b7          	lui	s1,0xa0009
a00061a4:	ce048513          	addi	a0,s1,-800 # a0008ce0 <__psram_limit+0xf7c08ce0>
a00061a8:	b85ff0ef          	jal	ra,a0005d2c <puts>
a00061ac:	0048                	addi	a0,sp,4
a00061ae:	2a85                	jal	a000631e <utils_crc32_stream_init>
a00061b0:	ffc9f793          	andi	a5,s3,-4
a00061b4:	ce3e                	sw	a5,28(sp)
a00061b6:	943e                	add	s0,s0,a5
a00061b8:	439c                	lw	a5,0(a5)
a00061ba:	d04e                	sw	s3,32(sp)
a00061bc:	d222                	sw	s0,36(sp)
a00061be:	a00069b7          	lui	s3,0xa0006
a00061c2:	a0006437          	lui	s0,0xa0006
a00061c6:	0830                	addi	a2,sp,24
a00061c8:	07498593          	addi	a1,s3,116 # a0006074 <__psram_limit+0xf7c06074>
a00061cc:	d43e                	sw	a5,40(sp)
a00061ce:	0bc40513          	addi	a0,s0,188 # a00060bc <__psram_limit+0xf7c060bc>
a00061d2:	005c                	addi	a5,sp,4
a00061d4:	d63e                	sw	a5,44(sp)
a00061d6:	cc02                	sw	zero,24(sp)
a00061d8:	20a9                	jal	a0006222 <utils_base64_encode_stream>
a00061da:	a0009537          	lui	a0,0xa0009
a00061de:	cec50513          	addi	a0,a0,-788 # a0008cec <__psram_limit+0xf7c08cec>
a00061e2:	b4bff0ef          	jal	ra,a0005d2c <puts>
a00061e6:	0048                	addi	a0,sp,4
a00061e8:	2aa1                	jal	a0006340 <utils_crc32_stream_results>
a00061ea:	003c                	addi	a5,sp,8
a00061ec:	c42a                	sw	a0,8(sp)
a00061ee:	ce3e                	sw	a5,28(sp)
a00061f0:	d03e                	sw	a5,32(sp)
a00061f2:	d42a                	sw	a0,40(sp)
a00061f4:	005c                	addi	a5,sp,4
a00061f6:	0830                	addi	a2,sp,24
a00061f8:	07498593          	addi	a1,s3,116
a00061fc:	0bc40513          	addi	a0,s0,188
a0006200:	d24a                	sw	s2,36(sp)
a0006202:	d63e                	sw	a5,44(sp)
a0006204:	cc02                	sw	zero,24(sp)
a0006206:	2831                	jal	a0006222 <utils_base64_encode_stream>
a0006208:	ce048513          	addi	a0,s1,-800
a000620c:	b21ff0ef          	jal	ra,a0005d2c <puts>
a0006210:	40b6                	lw	ra,76(sp)
a0006212:	4426                	lw	s0,72(sp)
a0006214:	4496                	lw	s1,68(sp)
a0006216:	4906                	lw	s2,64(sp)
a0006218:	59f2                	lw	s3,60(sp)
a000621a:	5a62                	lw	s4,56(sp)
a000621c:	5ad2                	lw	s5,52(sp)
a000621e:	6161                	addi	sp,sp,80
a0006220:	8082                	ret

a0006222 <utils_base64_encode_stream>:
a0006222:	7139                	addi	sp,sp,-64
a0006224:	d84a                	sw	s2,48(sp)
a0006226:	a0009937          	lui	s2,0xa0009
a000622a:	da26                	sw	s1,52(sp)
a000622c:	d64e                	sw	s3,44(sp)
a000622e:	d452                	sw	s4,40(sp)
a0006230:	d256                	sw	s5,36(sp)
a0006232:	d05a                	sw	s6,32(sp)
a0006234:	ce5e                	sw	s7,28(sp)
a0006236:	de06                	sw	ra,60(sp)
a0006238:	dc22                	sw	s0,56(sp)
a000623a:	cc62                	sw	s8,24(sp)
a000623c:	8a2a                	mv	s4,a0
a000623e:	8aae                	mv	s5,a1
a0006240:	89b2                	mv	s3,a2
a0006242:	54fd                	li	s1,-1
a0006244:	5b7d                	li	s6,-1
a0006246:	cfc90913          	addi	s2,s2,-772 # a0008cfc <__psram_limit+0xf7c08cfc>
a000624a:	00c10b93          	addi	s7,sp,12
a000624e:	85ce                	mv	a1,s3
a0006250:	00b10513          	addi	a0,sp,11
a0006254:	9a02                	jalr	s4
a0006256:	c15d                	beqz	a0,a00062fc <utils_base64_encode_stream+0xda>
a0006258:	0004d363          	bgez	s1,a000625e <utils_base64_encode_stream+0x3c>
a000625c:	4481                	li	s1,0
a000625e:	4401                	li	s0,0
a0006260:	85ce                	mv	a1,s3
a0006262:	00b10513          	addi	a0,sp,11
a0006266:	9a02                	jalr	s4
a0006268:	cd49                	beqz	a0,a0006302 <utils_base64_encode_stream+0xe0>
a000626a:	4c01                	li	s8,0
a000626c:	01649363          	bne	s1,s6,a0006272 <utils_base64_encode_stream+0x50>
a0006270:	4485                	li	s1,1
a0006272:	85ce                	mv	a1,s3
a0006274:	00b10513          	addi	a0,sp,11
a0006278:	9a02                	jalr	s4
a000627a:	c559                	beqz	a0,a0006308 <utils_base64_encode_stream+0xe6>
a000627c:	4701                	li	a4,0
a000627e:	01649363          	bne	s1,s6,a0006284 <utils_base64_encode_stream+0x62>
a0006282:	4489                	li	s1,2
a0006284:	01041793          	slli	a5,s0,0x10
a0006288:	0c22                	slli	s8,s8,0x8
a000628a:	97e2                	add	a5,a5,s8
a000628c:	97ba                	add	a5,a5,a4
a000628e:	c111                	beqz	a0,a0006292 <utils_base64_encode_stream+0x70>
a0006290:	c8b1                	beqz	s1,a00062e4 <utils_base64_encode_stream+0xc2>
a0006292:	0127d713          	srli	a4,a5,0x12
a0006296:	80e9470b          	lrbu	a4,s2,a4,0
a000629a:	00e10623          	sb	a4,12(sp)
a000629e:	44c7b70b          	extu	a4,a5,17,12
a00062a2:	80e9470b          	lrbu	a4,s2,a4,0
a00062a6:	00e106a3          	sb	a4,13(sp)
a00062aa:	2c67b70b          	extu	a4,a5,11,6
a00062ae:	03f7f793          	andi	a5,a5,63
a00062b2:	80e9470b          	lrbu	a4,s2,a4,0
a00062b6:	80f9478b          	lrbu	a5,s2,a5,0
a00062ba:	00e10723          	sb	a4,14(sp)
a00062be:	00f107a3          	sb	a5,15(sp)
a00062c2:	c531                	beqz	a0,a000630e <utils_base64_encode_stream+0xec>
a00062c4:	a00097b7          	lui	a5,0xa0009
a00062c8:	d3c78793          	addi	a5,a5,-708 # a0008d3c <__psram_limit+0xf7c08d3c>
a00062cc:	4497c70b          	lrw	a4,a5,s1,2
a00062d0:	03d00613          	li	a2,61
a00062d4:	87de                	mv	a5,s7
a00062d6:	40fb86b3          	sub	a3,s7,a5
a00062da:	02e6ce63          	blt	a3,a4,a0006316 <utils_base64_encode_stream+0xf4>
a00062de:	85ce                	mv	a1,s3
a00062e0:	855e                	mv	a0,s7
a00062e2:	9a82                	jalr	s5
a00062e4:	50f2                	lw	ra,60(sp)
a00062e6:	5462                	lw	s0,56(sp)
a00062e8:	54d2                	lw	s1,52(sp)
a00062ea:	5942                	lw	s2,48(sp)
a00062ec:	59b2                	lw	s3,44(sp)
a00062ee:	5a22                	lw	s4,40(sp)
a00062f0:	5a92                	lw	s5,36(sp)
a00062f2:	5b02                	lw	s6,32(sp)
a00062f4:	4bf2                	lw	s7,28(sp)
a00062f6:	4c62                	lw	s8,24(sp)
a00062f8:	6121                	addi	sp,sp,64
a00062fa:	8082                	ret
a00062fc:	00b14403          	lbu	s0,11(sp)
a0006300:	b785                	j	a0006260 <utils_base64_encode_stream+0x3e>
a0006302:	00b14c03          	lbu	s8,11(sp)
a0006306:	b7b5                	j	a0006272 <utils_base64_encode_stream+0x50>
a0006308:	00b14703          	lbu	a4,11(sp)
a000630c:	bfa5                	j	a0006284 <utils_base64_encode_stream+0x62>
a000630e:	85ce                	mv	a1,s3
a0006310:	855e                	mv	a0,s7
a0006312:	9a82                	jalr	s5
a0006314:	bf2d                	j	a000624e <utils_base64_encode_stream+0x2c>
a0006316:	00c781a3          	sb	a2,3(a5)
a000631a:	17fd                	addi	a5,a5,-1
a000631c:	bf6d                	j	a00062d6 <utils_base64_encode_stream+0xb4>

a000631e <utils_crc32_stream_init>:
a000631e:	57fd                	li	a5,-1
a0006320:	c11c                	sw	a5,0(a0)
a0006322:	8082                	ret

a0006324 <utils_crc32_stream_feed>:
a0006324:	411c                	lw	a5,0(a0)
a0006326:	a0009737          	lui	a4,0xa0009
a000632a:	d4870713          	addi	a4,a4,-696 # a0008d48 <__psram_limit+0xf7c08d48>
a000632e:	8dbd                	xor	a1,a1,a5
a0006330:	0ff5f593          	zext.b	a1,a1
a0006334:	44b7470b          	lrw	a4,a4,a1,2
a0006338:	83a1                	srli	a5,a5,0x8
a000633a:	8fb9                	xor	a5,a5,a4
a000633c:	c11c                	sw	a5,0(a0)
a000633e:	8082                	ret

a0006340 <utils_crc32_stream_results>:
a0006340:	4108                	lw	a0,0(a0)
a0006342:	fff54513          	not	a0,a0
a0006346:	8082                	ret

a0006348 <utils_bin2hex>:
a0006348:	a0009737          	lui	a4,0xa0009
a000634c:	4781                	li	a5,0
a000634e:	14870713          	addi	a4,a4,328 # a0009148 <__psram_limit+0xf7c09148>
a0006352:	00150813          	addi	a6,a0,1
a0006356:	00f61563          	bne	a2,a5,a0006360 <utils_bin2hex+0x18>
a000635a:	02c5150b          	addsl	a0,a0,a2,1
a000635e:	8082                	ret
a0006360:	80f5c68b          	lrbu	a3,a1,a5,0
a0006364:	0046d893          	srli	a7,a3,0x4
a0006368:	8117488b          	lrbu	a7,a4,a7,0
a000636c:	8abd                	andi	a3,a3,15
a000636e:	80d7468b          	lrbu	a3,a4,a3,0
a0006372:	02f5588b          	srb	a7,a0,a5,1
a0006376:	02f8568b          	srb	a3,a6,a5,1
a000637a:	0785                	addi	a5,a5,1
a000637c:	bfe9                	j	a0006356 <utils_bin2hex+0xe>

a000637e <qcc74x_gpio_init>:
a000637e:	1101                	addi	sp,sp,-32
a0006380:	c84a                	sw	s2,16(sp)
a0006382:	00452903          	lw	s2,4(a0)
a0006386:	852e                	mv	a0,a1
a0006388:	cc22                	sw	s0,24(sp)
a000638a:	ca26                	sw	s1,20(sp)
a000638c:	3c06340b          	extu	s0,a2,15,0
a0006390:	34c6348b          	extu	s1,a2,13,12
a0006394:	c632                	sw	a2,12(sp)
a0006396:	c42e                	sw	a1,8(sp)
a0006398:	ce06                	sw	ra,28(sp)
a000639a:	6f1010ef          	jal	ra,a000828a <qcc74x_gpio_pad_check>
a000639e:	45a2                	lw	a1,8(sp)
a00063a0:	47c1                	li	a5,16
a00063a2:	4632                	lw	a2,12(sp)
a00063a4:	06f59463          	bne	a1,a5,a000640c <qcc74x_gpio_init+0x8e>
a00063a8:	2000f6b7          	lui	a3,0x2000f
a00063ac:	5e9c                	lw	a5,56(a3)
a00063ae:	fff00737          	lui	a4,0xfff00
a00063b2:	177d                	addi	a4,a4,-1
a00063b4:	8ff9                	and	a5,a5,a4
a00063b6:	de9c                	sw	a5,56(a3)
a00063b8:	08047793          	andi	a5,s0,128
a00063bc:	04b9158b          	addsl	a1,s2,a1,2
a00063c0:	efa5                	bnez	a5,a0006438 <qcc74x_gpio_init+0xba>
a00063c2:	10047793          	andi	a5,s0,256
a00063c6:	cfa1                	beqz	a5,a000641e <qcc74x_gpio_init+0xa0>
a00063c8:	004007b7          	lui	a5,0x400
a00063cc:	01f67713          	andi	a4,a2,31
a00063d0:	0785                	addi	a5,a5,1
a00063d2:	20067693          	andi	a3,a2,512
a00063d6:	c6ad                	beqz	a3,a0006440 <qcc74x_gpio_init+0xc2>
a00063d8:	0107e793          	ori	a5,a5,16
a00063dc:	2cb6360b          	extu	a2,a2,11,11
a00063e0:	c219                	beqz	a2,a00063e6 <qcc74x_gpio_init+0x68>
a00063e2:	0027e793          	ori	a5,a5,2
a00063e6:	048a                	slli	s1,s1,0x2
a00063e8:	8cdd                	or	s1,s1,a5
a00063ea:	00871793          	slli	a5,a4,0x8
a00063ee:	8fc5                	or	a5,a5,s1
a00063f0:	40000737          	lui	a4,0x40000
a00063f4:	40f2                	lw	ra,28(sp)
a00063f6:	4462                	lw	s0,24(sp)
a00063f8:	8fd9                	or	a5,a5,a4
a00063fa:	6705                	lui	a4,0x1
a00063fc:	8c470713          	addi	a4,a4,-1852 # 8c4 <__RFTLV_SIZE_HOLE+0xc4>
a0006400:	40e5d78b          	srw	a5,a1,a4,0
a0006404:	44d2                	lw	s1,20(sp)
a0006406:	4942                	lw	s2,16(sp)
a0006408:	6105                	addi	sp,sp,32
a000640a:	8082                	ret
a000640c:	47c5                	li	a5,17
a000640e:	faf595e3          	bne	a1,a5,a00063b8 <qcc74x_gpio_init+0x3a>
a0006412:	2000f6b7          	lui	a3,0x2000f
a0006416:	5e9c                	lw	a5,56(a3)
a0006418:	ffe00737          	lui	a4,0xffe00
a000641c:	bf59                	j	a00063b2 <qcc74x_gpio_init+0x34>
a000641e:	02047713          	andi	a4,s0,32
a0006422:	004007b7          	lui	a5,0x400
a0006426:	c311                	beqz	a4,a000642a <qcc74x_gpio_init+0xac>
a0006428:	0785                	addi	a5,a5,1
a000642a:	04047413          	andi	s0,s0,64
a000642e:	472d                	li	a4,11
a0006430:	d04d                	beqz	s0,a00063d2 <qcc74x_gpio_init+0x54>
a0006432:	0407e793          	ori	a5,a5,64
a0006436:	bf71                	j	a00063d2 <qcc74x_gpio_init+0x54>
a0006438:	4729                	li	a4,10
a000643a:	004007b7          	lui	a5,0x400
a000643e:	bf51                	j	a00063d2 <qcc74x_gpio_init+0x54>
a0006440:	40067693          	andi	a3,a2,1024
a0006444:	dec1                	beqz	a3,a00063dc <qcc74x_gpio_init+0x5e>
a0006446:	0207e793          	ori	a5,a5,32
a000644a:	bf49                	j	a00063dc <qcc74x_gpio_init+0x5e>

a000644c <qcc74x_gpio_set>:
a000644c:	1101                	addi	sp,sp,-32
a000644e:	cc22                	sw	s0,24(sp)
a0006450:	842a                	mv	s0,a0
a0006452:	852e                	mv	a0,a1
a0006454:	ce06                	sw	ra,28(sp)
a0006456:	c62e                	sw	a1,12(sp)
a0006458:	633010ef          	jal	ra,a000828a <qcc74x_gpio_pad_check>
a000645c:	405c                	lw	a5,4(s0)
a000645e:	45b2                	lw	a1,12(sp)
a0006460:	6705                	lui	a4,0x1
a0006462:	aec70713          	addi	a4,a4,-1300 # aec <__RFTLV_SIZE_HOLE+0x2ec>
a0006466:	40f2                	lw	ra,28(sp)
a0006468:	4462                	lw	s0,24(sp)
a000646a:	97ba                	add	a5,a5,a4
a000646c:	4705                	li	a4,1
a000646e:	0055d693          	srli	a3,a1,0x5
a0006472:	00b71733          	sll	a4,a4,a1
a0006476:	44d7d70b          	srw	a4,a5,a3,2
a000647a:	6105                	addi	sp,sp,32
a000647c:	8082                	ret

a000647e <qcc74x_gpio_reset>:
a000647e:	1101                	addi	sp,sp,-32
a0006480:	cc22                	sw	s0,24(sp)
a0006482:	842a                	mv	s0,a0
a0006484:	852e                	mv	a0,a1
a0006486:	ce06                	sw	ra,28(sp)
a0006488:	c62e                	sw	a1,12(sp)
a000648a:	601010ef          	jal	ra,a000828a <qcc74x_gpio_pad_check>
a000648e:	405c                	lw	a5,4(s0)
a0006490:	45b2                	lw	a1,12(sp)
a0006492:	6705                	lui	a4,0x1
a0006494:	af470713          	addi	a4,a4,-1292 # af4 <__RFTLV_SIZE_HOLE+0x2f4>
a0006498:	40f2                	lw	ra,28(sp)
a000649a:	4462                	lw	s0,24(sp)
a000649c:	97ba                	add	a5,a5,a4
a000649e:	4705                	li	a4,1
a00064a0:	0055d693          	srli	a3,a1,0x5
a00064a4:	00b71733          	sll	a4,a4,a1
a00064a8:	44d7d70b          	srw	a4,a5,a3,2
a00064ac:	6105                	addi	sp,sp,32
a00064ae:	8082                	ret

a00064b0 <qcc74x_gpio_read>:
a00064b0:	1101                	addi	sp,sp,-32
a00064b2:	cc22                	sw	s0,24(sp)
a00064b4:	842a                	mv	s0,a0
a00064b6:	852e                	mv	a0,a1
a00064b8:	ce06                	sw	ra,28(sp)
a00064ba:	c62e                	sw	a1,12(sp)
a00064bc:	5cf010ef          	jal	ra,a000828a <qcc74x_gpio_pad_check>
a00064c0:	405c                	lw	a5,4(s0)
a00064c2:	45b2                	lw	a1,12(sp)
a00064c4:	6705                	lui	a4,0x1
a00064c6:	8c470713          	addi	a4,a4,-1852 # 8c4 <__RFTLV_SIZE_HOLE+0xc4>
a00064ca:	97ba                	add	a5,a5,a4
a00064cc:	44b7c50b          	lrw	a0,a5,a1,2
a00064d0:	40f2                	lw	ra,28(sp)
a00064d2:	4462                	lw	s0,24(sp)
a00064d4:	71c5350b          	extu	a0,a0,28,28
a00064d8:	6105                	addi	sp,sp,32
a00064da:	8082                	ret

a00064dc <qcc74x_gpio_uart_init>:
a00064dc:	1101                	addi	sp,sp,-32
a00064de:	cc22                	sw	s0,24(sp)
a00064e0:	ca26                	sw	s1,20(sp)
a00064e2:	4140                	lw	s0,4(a0)
a00064e4:	84aa                	mv	s1,a0
a00064e6:	852e                	mv	a0,a1
a00064e8:	c632                	sw	a2,12(sp)
a00064ea:	c42e                	sw	a1,8(sp)
a00064ec:	ce06                	sw	ra,28(sp)
a00064ee:	59d010ef          	jal	ra,a000828a <qcc74x_gpio_pad_check>
a00064f2:	45a2                	lw	a1,8(sp)
a00064f4:	46b1                	li	a3,12
a00064f6:	479d                	li	a5,7
a00064f8:	02d5f6b3          	remu	a3,a1,a3
a00064fc:	4632                	lw	a2,12(sp)
a00064fe:	0ad7e063          	bltu	a5,a3,a000659e <qcc74x_gpio_uart_init+0xc2>
a0006502:	00269713          	slli	a4,a3,0x2
a0006506:	15442803          	lw	a6,340(s0)
a000650a:	47bd                	li	a5,15
a000650c:	00e797b3          	sll	a5,a5,a4
a0006510:	fff7c793          	not	a5,a5
a0006514:	0107f833          	and	a6,a5,a6
a0006518:	00e617b3          	sll	a5,a2,a4
a000651c:	0107e7b3          	or	a5,a5,a6
a0006520:	4701                	li	a4,0
a0006522:	48bd                	li	a7,15
a0006524:	4321                	li	t1,8
a0006526:	00271513          	slli	a0,a4,0x2
a000652a:	00a89833          	sll	a6,a7,a0
a000652e:	00f87e33          	and	t3,a6,a5
a0006532:	00a61533          	sll	a0,a2,a0
a0006536:	00ae1d63          	bne	t3,a0,a0006550 <qcc74x_gpio_uart_init+0x74>
a000653a:	0ff77513          	zext.b	a0,a4
a000653e:	00d50963          	beq	a0,a3,a0006550 <qcc74x_gpio_uart_init+0x74>
a0006542:	01160763          	beq	a2,a7,a0006550 <qcc74x_gpio_uart_init+0x74>
a0006546:	fff84513          	not	a0,a6
a000654a:	8fe9                	and	a5,a5,a0
a000654c:	00f867b3          	or	a5,a6,a5
a0006550:	0705                	addi	a4,a4,1
a0006552:	fc671ae3          	bne	a4,t1,a0006526 <qcc74x_gpio_uart_init+0x4a>
a0006556:	15842703          	lw	a4,344(s0)
a000655a:	4681                	li	a3,0
a000655c:	483d                	li	a6,15
a000655e:	48c1                	li	a7,16
a0006560:	00d81533          	sll	a0,a6,a3
a0006564:	00e57e33          	and	t3,a0,a4
a0006568:	00d61333          	sll	t1,a2,a3
a000656c:	006e1963          	bne	t3,t1,a000657e <qcc74x_gpio_uart_init+0xa2>
a0006570:	01060763          	beq	a2,a6,a000657e <qcc74x_gpio_uart_init+0xa2>
a0006574:	fff54313          	not	t1,a0
a0006578:	00e37733          	and	a4,t1,a4
a000657c:	8f49                	or	a4,a4,a0
a000657e:	0691                	addi	a3,a3,4
a0006580:	ff1690e3          	bne	a3,a7,a0006560 <qcc74x_gpio_uart_init+0x84>
a0006584:	14f42a23          	sw	a5,340(s0)
a0006588:	14e42c23          	sw	a4,344(s0)
a000658c:	4462                	lw	s0,24(sp)
a000658e:	40f2                	lw	ra,28(sp)
a0006590:	8526                	mv	a0,s1
a0006592:	44d2                	lw	s1,20(sp)
a0006594:	6609                	lui	a2,0x2
a0006596:	b0760613          	addi	a2,a2,-1273 # 1b07 <HeapMinSize+0xb07>
a000659a:	6105                	addi	sp,sp,32
a000659c:	b3cd                	j	a000637e <qcc74x_gpio_init>
a000659e:	ff868713          	addi	a4,a3,-8 # 2000eff8 <remain_wifi_ram+0x1ffeeff8>
a00065a2:	070a                	slli	a4,a4,0x2
a00065a4:	0ff77713          	zext.b	a4,a4
a00065a8:	15842803          	lw	a6,344(s0)
a00065ac:	47bd                	li	a5,15
a00065ae:	00e797b3          	sll	a5,a5,a4
a00065b2:	fff7c793          	not	a5,a5
a00065b6:	0107f833          	and	a6,a5,a6
a00065ba:	00e617b3          	sll	a5,a2,a4
a00065be:	0107e7b3          	or	a5,a5,a6
a00065c2:	4701                	li	a4,0
a00065c4:	48bd                	li	a7,15
a00065c6:	4311                	li	t1,4
a00065c8:	00271513          	slli	a0,a4,0x2
a00065cc:	00a89833          	sll	a6,a7,a0
a00065d0:	00f87e33          	and	t3,a6,a5
a00065d4:	00a61533          	sll	a0,a2,a0
a00065d8:	00ae1f63          	bne	t3,a0,a00065f6 <qcc74x_gpio_uart_init+0x11a>
a00065dc:	00870513          	addi	a0,a4,8
a00065e0:	0ff57513          	zext.b	a0,a0
a00065e4:	00d50963          	beq	a0,a3,a00065f6 <qcc74x_gpio_uart_init+0x11a>
a00065e8:	01160763          	beq	a2,a7,a00065f6 <qcc74x_gpio_uart_init+0x11a>
a00065ec:	fff84513          	not	a0,a6
a00065f0:	8fe9                	and	a5,a5,a0
a00065f2:	00f867b3          	or	a5,a6,a5
a00065f6:	0705                	addi	a4,a4,1
a00065f8:	fc6718e3          	bne	a4,t1,a00065c8 <qcc74x_gpio_uart_init+0xec>
a00065fc:	15442703          	lw	a4,340(s0)
a0006600:	4681                	li	a3,0
a0006602:	483d                	li	a6,15
a0006604:	02000893          	li	a7,32
a0006608:	00d81533          	sll	a0,a6,a3
a000660c:	00e57e33          	and	t3,a0,a4
a0006610:	00d61333          	sll	t1,a2,a3
a0006614:	006e1963          	bne	t3,t1,a0006626 <qcc74x_gpio_uart_init+0x14a>
a0006618:	01060763          	beq	a2,a6,a0006626 <qcc74x_gpio_uart_init+0x14a>
a000661c:	fff54313          	not	t1,a0
a0006620:	00e37733          	and	a4,t1,a4
a0006624:	8f49                	or	a4,a4,a0
a0006626:	0691                	addi	a3,a3,4
a0006628:	ff1690e3          	bne	a3,a7,a0006608 <qcc74x_gpio_uart_init+0x12c>
a000662c:	14f42c23          	sw	a5,344(s0)
a0006630:	14e42a23          	sw	a4,340(s0)
a0006634:	bfa1                	j	a000658c <qcc74x_gpio_uart_init+0xb0>

a0006636 <qcc74x_i2c_disable.isra.0>:
a0006636:	411c                	lw	a5,0(a0)
a0006638:	08050713          	addi	a4,a0,128
a000663c:	9bf9                	andi	a5,a5,-2
a000663e:	c11c                	sw	a5,0(a0)
a0006640:	431c                	lw	a5,0(a4)
a0006642:	00c7e793          	ori	a5,a5,12
a0006646:	c31c                	sw	a5,0(a4)
a0006648:	415c                	lw	a5,4(a0)
a000664a:	00190737          	lui	a4,0x190
a000664e:	8fd9                	or	a5,a5,a4
a0006650:	c15c                	sw	a5,4(a0)
a0006652:	8082                	ret

a0006654 <qcc74x_i2c_enable.isra.0>:
a0006654:	411c                	lw	a5,0(a0)
a0006656:	0017e793          	ori	a5,a5,1
a000665a:	c11c                	sw	a5,0(a0)
a000665c:	8082                	ret

a000665e <qcc74x_i2c_addr_config.isra.0>:
a000665e:	00052803          	lw	a6,0(a0)
a0006662:	fef87793          	andi	a5,a6,-17
a0006666:	ca91                	beqz	a3,a000667a <qcc74x_i2c_addr_config.isra.0+0x1c>
a0006668:	fff68793          	addi	a5,a3,-1
a000666c:	0796                	slli	a5,a5,0x5
a000666e:	f9f87813          	andi	a6,a6,-97
a0006672:	0107e7b3          	or	a5,a5,a6
a0006676:	0107e793          	ori	a5,a5,16
a000667a:	8eaa                	mv	t4,a0
a000667c:	588ed78b          	swia	a5,(t4),8,0
a0006680:	4781                	li	a5,0
a0006682:	00d7fc63          	bgeu	a5,a3,a000669a <qcc74x_i2c_addr_config.isra.0+0x3c>
a0006686:	00178813          	addi	a6,a5,1 # 400001 <remain_wifi_ram+0x3e0001>
a000668a:	80f6488b          	lrbu	a7,a2,a5,0
a000668e:	00fe8333          	add	t1,t4,a5
a0006692:	02d84363          	blt	a6,a3,a00066b8 <qcc74x_i2c_addr_config.isra.0+0x5a>
a0006696:	01132023          	sw	a7,0(t1)
a000669a:	411c                	lw	a5,0(a0)
a000669c:	fffc06b7          	lui	a3,0xfffc0
a00066a0:	0ff68693          	addi	a3,a3,255 # fffc00ff <__psram_limit+0x57bc00ff>
a00066a4:	8ff5                	and	a5,a5,a3
a00066a6:	05a2                	slli	a1,a1,0x8
a00066a8:	8ddd                	or	a1,a1,a5
a00066aa:	f7f5f793          	andi	a5,a1,-129
a00066ae:	c319                	beqz	a4,a00066b4 <qcc74x_i2c_addr_config.isra.0+0x56>
a00066b0:	0805e793          	ori	a5,a1,128
a00066b4:	c11c                	sw	a5,0(a0)
a00066b6:	8082                	ret
a00066b8:	00f60f33          	add	t5,a2,a5
a00066bc:	001f4803          	lbu	a6,1(t5)
a00066c0:	00881e13          	slli	t3,a6,0x8
a00066c4:	00278813          	addi	a6,a5,2
a00066c8:	00d84763          	blt	a6,a3,a00066d6 <qcc74x_i2c_addr_config.isra.0+0x78>
a00066cc:	01c8e833          	or	a6,a7,t3
a00066d0:	01032023          	sw	a6,0(t1)
a00066d4:	b7d9                	j	a000669a <qcc74x_i2c_addr_config.isra.0+0x3c>
a00066d6:	002f4803          	lbu	a6,2(t5)
a00066da:	0842                	slli	a6,a6,0x10
a00066dc:	01c86833          	or	a6,a6,t3
a00066e0:	01186833          	or	a6,a6,a7
a00066e4:	00378893          	addi	a7,a5,3
a00066e8:	fed8d4e3          	bge	a7,a3,a00066d0 <qcc74x_i2c_addr_config.isra.0+0x72>
a00066ec:	003f4883          	lbu	a7,3(t5)
a00066f0:	0791                	addi	a5,a5,4
a00066f2:	08e2                	slli	a7,a7,0x18
a00066f4:	0108e833          	or	a6,a7,a6
a00066f8:	01032023          	sw	a6,0(t1)
a00066fc:	f8d7dfe3          	bge	a5,a3,a000669a <qcc74x_i2c_addr_config.isra.0+0x3c>
a0006700:	0ff7f793          	zext.b	a5,a5
a0006704:	bfbd                	j	a0006682 <qcc74x_i2c_addr_config.isra.0+0x24>

a0006706 <qcc74x_i2c_init>:
a0006706:	1141                	addi	sp,sp,-16
a0006708:	c422                	sw	s0,8(sp)
a000670a:	4140                	lw	s0,4(a0)
a000670c:	c04a                	sw	s2,0(sp)
a000670e:	892a                	mv	s2,a0
a0006710:	8522                	mv	a0,s0
a0006712:	c606                	sw	ra,12(sp)
a0006714:	c226                	sw	s1,4(sp)
a0006716:	84ae                	mv	s1,a1
a0006718:	3f39                	jal	a0006636 <qcc74x_i2c_disable.isra.0>
a000671a:	405c                	lw	a5,4(s0)
a000671c:	6711                	lui	a4,0x4
a000671e:	f0070713          	addi	a4,a4,-256 # 3f00 <HeapMinSize+0x2f00>
a0006722:	8fd9                	or	a5,a5,a4
a0006724:	c05c                	sw	a5,4(s0)
a0006726:	00994583          	lbu	a1,9(s2)
a000672a:	451d                	li	a0,7
a000672c:	00492403          	lw	s0,4(s2)
a0006730:	371010ef          	jal	ra,a00082a0 <qcc74x_clk_get_peripheral_clock>
a0006734:	0014d793          	srli	a5,s1,0x1
a0006738:	953e                	add	a0,a0,a5
a000673a:	02955533          	divu	a0,a0,s1
a000673e:	6761                	lui	a4,0x18
a0006740:	6a070713          	addi	a4,a4,1696 # 186a0 <wifi_ram_max_size+0x106a0>
a0006744:	00250793          	addi	a5,a0,2
a0006748:	0e976963          	bltu	a4,s1,a000683a <qcc74x_i2c_init+0x134>
a000674c:	4711                	li	a4,4
a000674e:	02e7c7b3          	div	a5,a5,a4
a0006752:	4709                	li	a4,2
a0006754:	02e54733          	div	a4,a0,a4
a0006758:	8d1d                	sub	a0,a0,a5
a000675a:	85be                	mv	a1,a5
a000675c:	40f70633          	sub	a2,a4,a5
a0006760:	8d19                	sub	a0,a0,a4
a0006762:	4014                	lw	a3,0(s0)
a0006764:	4831                	li	a6,12
a0006766:	4701                	li	a4,0
a0006768:	00c6f893          	andi	a7,a3,12
a000676c:	01089563          	bne	a7,a6,a0006776 <qcc74x_i2c_init+0x70>
a0006770:	01c6d713          	srli	a4,a3,0x1c
a0006774:	0705                	addi	a4,a4,1
a0006776:	8aa1                	andi	a3,a3,8
a0006778:	c291                	beqz	a3,a000677c <qcc74x_i2c_init+0x76>
a000677a:	070d                	addi	a4,a4,3
a000677c:	86ae                	mv	a3,a1
a000677e:	00b04363          	bgtz	a1,a0006784 <qcc74x_i2c_init+0x7e>
a0006782:	4685                	li	a3,1
a0006784:	00f74463          	blt	a4,a5,a000678c <qcc74x_i2c_init+0x86>
a0006788:	00170793          	addi	a5,a4,1
a000678c:	00c04363          	bgtz	a2,a0006792 <qcc74x_i2c_init+0x8c>
a0006790:	4605                	li	a2,1
a0006792:	10000813          	li	a6,256
a0006796:	00d85463          	bge	a6,a3,a000679e <qcc74x_i2c_init+0x98>
a000679a:	10000693          	li	a3,256
a000679e:	10000813          	li	a6,256
a00067a2:	00f85463          	bge	a6,a5,a00067aa <qcc74x_i2c_init+0xa4>
a00067a6:	10000793          	li	a5,256
a00067aa:	10000813          	li	a6,256
a00067ae:	00c85463          	bge	a6,a2,a00067b6 <qcc74x_i2c_init+0xb0>
a00067b2:	10000613          	li	a2,256
a00067b6:	0ff00893          	li	a7,255
a00067ba:	10000813          	li	a6,256
a00067be:	00b8c663          	blt	a7,a1,a00067ca <qcc74x_i2c_init+0xc4>
a00067c2:	882a                	mv	a6,a0
a00067c4:	00a04363          	bgtz	a0,a00067ca <qcc74x_i2c_init+0xc4>
a00067c8:	4805                	li	a6,1
a00067ca:	fff60593          	addi	a1,a2,-1
a00067ce:	fff68513          	addi	a0,a3,-1
a00067d2:	05c2                	slli	a1,a1,0x10
a00067d4:	40e78733          	sub	a4,a5,a4
a00067d8:	4889                	li	a7,2
a00067da:	8dc9                	or	a1,a1,a0
a00067dc:	01175363          	bge	a4,a7,a00067e2 <qcc74x_i2c_init+0xdc>
a00067e0:	4709                	li	a4,2
a00067e2:	177d                	addi	a4,a4,-1
a00067e4:	0722                	slli	a4,a4,0x8
a00067e6:	8f4d                	or	a4,a4,a1
a00067e8:	fff80593          	addi	a1,a6,-1
a00067ec:	05e2                	slli	a1,a1,0x18
a00067ee:	8f4d                	or	a4,a4,a1
a00067f0:	cc18                	sw	a4,24(s0)
a00067f2:	97b2                	add	a5,a5,a2
a00067f4:	10000713          	li	a4,256
a00067f8:	00f75463          	bge	a4,a5,a0006800 <qcc74x_i2c_init+0xfa>
a00067fc:	10000793          	li	a5,256
a0006800:	17fd                	addi	a5,a5,-1
a0006802:	01079713          	slli	a4,a5,0x10
a0006806:	8f49                	or	a4,a4,a0
a0006808:	96c2                	add	a3,a3,a6
a000680a:	10000613          	li	a2,256
a000680e:	8f4d                	or	a4,a4,a1
a0006810:	00d65463          	bge	a2,a3,a0006818 <qcc74x_i2c_init+0x112>
a0006814:	10000693          	li	a3,256
a0006818:	16fd                	addi	a3,a3,-1
a000681a:	06a2                	slli	a3,a3,0x8
a000681c:	8ed9                	or	a3,a3,a4
a000681e:	01051713          	slli	a4,a0,0x10
a0006822:	8f49                	or	a4,a4,a0
a0006824:	07a2                	slli	a5,a5,0x8
a0006826:	8fd9                	or	a5,a5,a4
a0006828:	c814                	sw	a3,16(s0)
a000682a:	8fcd                	or	a5,a5,a1
a000682c:	40b2                	lw	ra,12(sp)
a000682e:	c85c                	sw	a5,20(s0)
a0006830:	4422                	lw	s0,8(sp)
a0006832:	4492                	lw	s1,4(sp)
a0006834:	4902                	lw	s2,0(sp)
a0006836:	0141                	addi	sp,sp,16
a0006838:	8082                	ret
a000683a:	468d                	li	a3,3
a000683c:	02d7c5b3          	div	a1,a5,a3
a0006840:	4719                	li	a4,6
a0006842:	00350793          	addi	a5,a0,3
a0006846:	02e7c7b3          	div	a5,a5,a4
a000684a:	00150713          	addi	a4,a0,1
a000684e:	8d0d                	sub	a0,a0,a1
a0006850:	02d74733          	div	a4,a4,a3
a0006854:	40f70633          	sub	a2,a4,a5
a0006858:	8d19                	sub	a0,a0,a4
a000685a:	b721                	j	a0006762 <qcc74x_i2c_init+0x5c>

a000685c <qcc74x_i2c_transfer>:
a000685c:	4789                	li	a5,2
a000685e:	02c7d463          	bge	a5,a2,a0006886 <qcc74x_i2c_transfer+0x2a>
a0006862:	5529                	li	a0,-22
a0006864:	8082                	ret
a0006866:	5529                	li	a0,-22
a0006868:	40b6                	lw	ra,76(sp)
a000686a:	4426                	lw	s0,72(sp)
a000686c:	4496                	lw	s1,68(sp)
a000686e:	4906                	lw	s2,64(sp)
a0006870:	59f2                	lw	s3,60(sp)
a0006872:	5a62                	lw	s4,56(sp)
a0006874:	5ad2                	lw	s5,52(sp)
a0006876:	5b42                	lw	s6,48(sp)
a0006878:	5bb2                	lw	s7,44(sp)
a000687a:	5c22                	lw	s8,40(sp)
a000687c:	5c92                	lw	s9,36(sp)
a000687e:	5d02                	lw	s10,32(sp)
a0006880:	4df2                	lw	s11,28(sp)
a0006882:	6161                	addi	sp,sp,80
a0006884:	8082                	ret
a0006886:	715d                	addi	sp,sp,-80
a0006888:	c2a6                	sw	s1,68(sp)
a000688a:	84aa                	mv	s1,a0
a000688c:	4148                	lw	a0,4(a0)
a000688e:	d65e                	sw	s7,44(sp)
a0006890:	f0100bb7          	lui	s7,0xf0100
a0006894:	c0ca                	sw	s2,64(sp)
a0006896:	de4e                	sw	s3,60(sp)
a0006898:	dc52                	sw	s4,56(sp)
a000689a:	d462                	sw	s8,40(sp)
a000689c:	d266                	sw	s9,36(sp)
a000689e:	c686                	sw	ra,76(sp)
a00068a0:	c4a2                	sw	s0,72(sp)
a00068a2:	da56                	sw	s5,52(sp)
a00068a4:	d85a                	sw	s6,48(sp)
a00068a6:	d06a                	sw	s10,32(sp)
a00068a8:	ce6e                	sw	s11,28(sp)
a00068aa:	c232                	sw	a2,4(sp)
a00068ac:	8a2e                	mv	s4,a1
a00068ae:	4901                	li	s2,0
a00068b0:	3359                	jal	a0006636 <qcc74x_i2c_disable.isra.0>
a00068b2:	4c31                	li	s8,12
a00068b4:	1bfd                	addi	s7,s7,-1
a00068b6:	4c91                	li	s9,4
a00068b8:	06400993          	li	s3,100
a00068bc:	4792                	lw	a5,4(sp)
a00068be:	00f94463          	blt	s2,a5,a00068c6 <qcc74x_i2c_transfer+0x6a>
a00068c2:	4501                	li	a0,0
a00068c4:	b755                	j	a0006868 <qcc74x_i2c_transfer+0xc>
a00068c6:	03890633          	mul	a2,s2,s8
a00068ca:	40c8                	lw	a0,4(s1)
a00068cc:	00ca06b3          	add	a3,s4,a2
a00068d0:	0026d783          	lhu	a5,2(a3)
a00068d4:	a0ca458b          	lrhu	a1,s4,a2,0
a00068d8:	42d0                	lw	a2,4(a3)
a00068da:	0417b70b          	extu	a4,a5,1,1
a00068de:	0407f793          	andi	a5,a5,64
a00068e2:	c7d9                	beqz	a5,a0006970 <qcc74x_i2c_transfer+0x114>
a00068e4:	0086c683          	lbu	a3,8(a3)
a00068e8:	0905                	addi	s2,s2,1
a00068ea:	3c09390b          	extu	s2,s2,15,0
a00068ee:	3b85                	jal	a000665e <qcc74x_i2c_addr_config.isra.0>
a00068f0:	8752                	mv	a4,s4
a00068f2:	2189170b          	mula	a4,s2,s8
a00068f6:	10000793          	li	a5,256
a00068fa:	00875403          	lhu	s0,8(a4)
a00068fe:	f687e4e3          	bltu	a5,s0,a0006866 <qcc74x_i2c_transfer+0xa>
a0006902:	40d0                	lw	a2,4(s1)
a0006904:	0ff005b7          	lui	a1,0xff00
a0006908:	421c                	lw	a5,0(a2)
a000690a:	0177f6b3          	and	a3,a5,s7
a000690e:	fff40793          	addi	a5,s0,-1
a0006912:	07d2                	slli	a5,a5,0x14
a0006914:	8fed                	and	a5,a5,a1
a0006916:	8fd5                	or	a5,a5,a3
a0006918:	c21c                	sw	a5,0(a2)
a000691a:	00275783          	lhu	a5,2(a4)
a000691e:	0017f693          	andi	a3,a5,1
a0006922:	0047f613          	andi	a2,a5,4
a0006926:	40dc                	lw	a5,4(s1)
a0006928:	10068663          	beqz	a3,a0006a34 <qcc74x_i2c_transfer+0x1d8>
a000692c:	4394                	lw	a3,0(a5)
a000692e:	0026e693          	ori	a3,a3,2
a0006932:	c394                	sw	a3,0(a5)
a0006934:	20061563          	bnez	a2,a0006b3e <qcc74x_i2c_transfer+0x2e2>
a0006938:	0044ad03          	lw	s10,4(s1)
a000693c:	00472b03          	lw	s6,4(a4)
a0006940:	4d8d                	li	s11,3
a0006942:	856a                	mv	a0,s10
a0006944:	3b01                	jal	a0006654 <qcc74x_i2c_enable.isra.0>
a0006946:	028de863          	bltu	s11,s0,a0006976 <qcc74x_i2c_transfer+0x11a>
a000694a:	e059                	bnez	s0,a00069d0 <qcc74x_i2c_transfer+0x174>
a000694c:	c2fba097          	auipc	ra,0xc2fba
a0006950:	192080e7          	jalr	402(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a0006954:	8d2a                	mv	s10,a0
a0006956:	8dae                	mv	s11,a1
a0006958:	40c8                	lw	a0,4(s1)
a000695a:	455c                	lw	a5,12(a0)
a000695c:	8b85                	andi	a5,a5,1
a000695e:	e3e9                	bnez	a5,a0006a20 <qcc74x_i2c_transfer+0x1c4>
a0006960:	415c                	lw	a5,4(a0)
a0006962:	8b85                	andi	a5,a5,1
a0006964:	cfd5                	beqz	a5,a0006a20 <qcc74x_i2c_transfer+0x1c4>
a0006966:	39c1                	jal	a0006636 <qcc74x_i2c_disable.isra.0>
a0006968:	0905                	addi	s2,s2,1
a000696a:	3c09390b          	extu	s2,s2,15,0
a000696e:	b7b9                	j	a00068bc <qcc74x_i2c_transfer+0x60>
a0006970:	4681                	li	a3,0
a0006972:	31f5                	jal	a000665e <qcc74x_i2c_addr_config.isra.0>
a0006974:	bfb5                	j	a00068f0 <qcc74x_i2c_transfer+0x94>
a0006976:	c2fba097          	auipc	ra,0xc2fba
a000697a:	168080e7          	jalr	360(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a000697e:	872a                	mv	a4,a0
a0006980:	87ae                	mv	a5,a1
a0006982:	084d2683          	lw	a3,132(s10)
a0006986:	3006f693          	andi	a3,a3,768
a000698a:	c29d                	beqz	a3,a00069b0 <qcc74x_i2c_transfer+0x154>
a000698c:	08cd2783          	lw	a5,140(s10)
a0006990:	0b11                	addi	s6,s6,4
a0006992:	1471                	addi	s0,s0,-4
a0006994:	0087d713          	srli	a4,a5,0x8
a0006998:	fefb0e23          	sb	a5,-4(s6)
a000699c:	feeb0ea3          	sb	a4,-3(s6)
a00069a0:	0107d713          	srli	a4,a5,0x10
a00069a4:	83e1                	srli	a5,a5,0x18
a00069a6:	feeb0f23          	sb	a4,-2(s6)
a00069aa:	fefb0fa3          	sb	a5,-1(s6)
a00069ae:	bf61                	j	a0006946 <qcc74x_i2c_transfer+0xea>
a00069b0:	c43a                	sw	a4,8(sp)
a00069b2:	c63e                	sw	a5,12(sp)
a00069b4:	c2fba097          	auipc	ra,0xc2fba
a00069b8:	12a080e7          	jalr	298(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a00069bc:	4722                	lw	a4,8(sp)
a00069be:	47b2                	lw	a5,12(sp)
a00069c0:	c2e51577          	sub64	a0,a0,a4
a00069c4:	e199                	bnez	a1,a00069ca <qcc74x_i2c_transfer+0x16e>
a00069c6:	faa9fee3          	bgeu	s3,a0,a0006982 <qcc74x_i2c_transfer+0x126>
a00069ca:	f8c00513          	li	a0,-116
a00069ce:	bd69                	j	a0006868 <qcc74x_i2c_transfer+0xc>
a00069d0:	c2fba097          	auipc	ra,0xc2fba
a00069d4:	10e080e7          	jalr	270(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a00069d8:	872a                	mv	a4,a0
a00069da:	87ae                	mv	a5,a1
a00069dc:	084d2683          	lw	a3,132(s10)
a00069e0:	3006f693          	andi	a3,a3,768
a00069e4:	c285                	beqz	a3,a0006a04 <qcc74x_i2c_transfer+0x1a8>
a00069e6:	08cd2683          	lw	a3,140(s10)
a00069ea:	4781                	li	a5,0
a00069ec:	f687f0e3          	bgeu	a5,s0,a000694c <qcc74x_i2c_transfer+0xf0>
a00069f0:	00379713          	slli	a4,a5,0x3
a00069f4:	00e6d733          	srl	a4,a3,a4
a00069f8:	00fb570b          	srb	a4,s6,a5,0
a00069fc:	0785                	addi	a5,a5,1
a00069fe:	0ff7f793          	zext.b	a5,a5
a0006a02:	b7ed                	j	a00069ec <qcc74x_i2c_transfer+0x190>
a0006a04:	c43a                	sw	a4,8(sp)
a0006a06:	c63e                	sw	a5,12(sp)
a0006a08:	c2fba097          	auipc	ra,0xc2fba
a0006a0c:	0d6080e7          	jalr	214(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a0006a10:	4722                	lw	a4,8(sp)
a0006a12:	47b2                	lw	a5,12(sp)
a0006a14:	c2e51577          	sub64	a0,a0,a4
a0006a18:	f9cd                	bnez	a1,a00069ca <qcc74x_i2c_transfer+0x16e>
a0006a1a:	fca9f1e3          	bgeu	s3,a0,a00069dc <qcc74x_i2c_transfer+0x180>
a0006a1e:	b775                	j	a00069ca <qcc74x_i2c_transfer+0x16e>
a0006a20:	c2fba097          	auipc	ra,0xc2fba
a0006a24:	0be080e7          	jalr	190(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a0006a28:	c3a51577          	sub64	a0,a0,s10
a0006a2c:	fdd9                	bnez	a1,a00069ca <qcc74x_i2c_transfer+0x16e>
a0006a2e:	f2a9f5e3          	bgeu	s3,a0,a0006958 <qcc74x_i2c_transfer+0xfc>
a0006a32:	bf61                	j	a00069ca <qcc74x_i2c_transfer+0x16e>
a0006a34:	4394                	lw	a3,0(a5)
a0006a36:	9af5                	andi	a3,a3,-3
a0006a38:	c394                	sw	a3,0(a5)
a0006a3a:	10061263          	bnez	a2,a0006b3e <qcc74x_i2c_transfer+0x2e2>
a0006a3e:	00472d03          	lw	s10,4(a4)
a0006a42:	0044ab03          	lw	s6,4(s1)
a0006a46:	4d8d                	li	s11,3
a0006a48:	028dee63          	bltu	s11,s0,a0006a84 <qcc74x_i2c_transfer+0x228>
a0006a4c:	e879                	bnez	s0,a0006b22 <qcc74x_i2c_transfer+0x2c6>
a0006a4e:	c2fba097          	auipc	ra,0xc2fba
a0006a52:	090080e7          	jalr	144(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a0006a56:	8d2a                	mv	s10,a0
a0006a58:	8dae                	mv	s11,a1
a0006a5a:	40c8                	lw	a0,4(s1)
a0006a5c:	455c                	lw	a5,12(a0)
a0006a5e:	8b85                	andi	a5,a5,1
a0006a60:	eb81                	bnez	a5,a0006a70 <qcc74x_i2c_transfer+0x214>
a0006a62:	415c                	lw	a5,4(a0)
a0006a64:	8b85                	andi	a5,a5,1
a0006a66:	c789                	beqz	a5,a0006a70 <qcc74x_i2c_transfer+0x214>
a0006a68:	415c                	lw	a5,4(a0)
a0006a6a:	8ba1                	andi	a5,a5,8
a0006a6c:	ee078de3          	beqz	a5,a0006966 <qcc74x_i2c_transfer+0x10a>
a0006a70:	c2fba097          	auipc	ra,0xc2fba
a0006a74:	06e080e7          	jalr	110(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a0006a78:	c3a51577          	sub64	a0,a0,s10
a0006a7c:	f5b9                	bnez	a1,a00069ca <qcc74x_i2c_transfer+0x16e>
a0006a7e:	fca9fee3          	bgeu	s3,a0,a0006a5a <qcc74x_i2c_transfer+0x1fe>
a0006a82:	b7a1                	j	a00069ca <qcc74x_i2c_transfer+0x16e>
a0006a84:	4781                	li	a5,0
a0006a86:	4a81                	li	s5,0
a0006a88:	80fd470b          	lrbu	a4,s10,a5,0
a0006a8c:	00379613          	slli	a2,a5,0x3
a0006a90:	0785                	addi	a5,a5,1
a0006a92:	00c71733          	sll	a4,a4,a2
a0006a96:	9aba                	add	s5,s5,a4
a0006a98:	ff9798e3          	bne	a5,s9,a0006a88 <qcc74x_i2c_transfer+0x22c>
a0006a9c:	c2fba097          	auipc	ra,0xc2fba
a0006aa0:	042080e7          	jalr	66(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a0006aa4:	872a                	mv	a4,a0
a0006aa6:	87ae                	mv	a5,a1
a0006aa8:	084b2603          	lw	a2,132(s6)
a0006aac:	8a0d                	andi	a2,a2,3
a0006aae:	ce01                	beqz	a2,a0006ac6 <qcc74x_i2c_transfer+0x26a>
a0006ab0:	095b2423          	sw	s5,136(s6)
a0006ab4:	40c8                	lw	a0,4(s1)
a0006ab6:	411c                	lw	a5,0(a0)
a0006ab8:	8b85                	andi	a5,a5,1
a0006aba:	e399                	bnez	a5,a0006ac0 <qcc74x_i2c_transfer+0x264>
a0006abc:	b99ff0ef          	jal	ra,a0006654 <qcc74x_i2c_enable.isra.0>
a0006ac0:	0d11                	addi	s10,s10,4
a0006ac2:	1471                	addi	s0,s0,-4
a0006ac4:	b751                	j	a0006a48 <qcc74x_i2c_transfer+0x1ec>
a0006ac6:	c43a                	sw	a4,8(sp)
a0006ac8:	c63e                	sw	a5,12(sp)
a0006aca:	c2fba097          	auipc	ra,0xc2fba
a0006ace:	014080e7          	jalr	20(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a0006ad2:	4722                	lw	a4,8(sp)
a0006ad4:	47b2                	lw	a5,12(sp)
a0006ad6:	c2e51577          	sub64	a0,a0,a4
a0006ada:	ee0598e3          	bnez	a1,a00069ca <qcc74x_i2c_transfer+0x16e>
a0006ade:	fca9f5e3          	bgeu	s3,a0,a0006aa8 <qcc74x_i2c_transfer+0x24c>
a0006ae2:	b5e5                	j	a00069ca <qcc74x_i2c_transfer+0x16e>
a0006ae4:	80fd468b          	lrbu	a3,s10,a5,0
a0006ae8:	00379613          	slli	a2,a5,0x3
a0006aec:	0785                	addi	a5,a5,1
a0006aee:	00c696b3          	sll	a3,a3,a2
a0006af2:	9ab6                	add	s5,s5,a3
a0006af4:	0ff7f793          	zext.b	a5,a5
a0006af8:	fe87e6e3          	bltu	a5,s0,a0006ae4 <qcc74x_i2c_transfer+0x288>
a0006afc:	c2fba097          	auipc	ra,0xc2fba
a0006b00:	fe2080e7          	jalr	-30(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a0006b04:	8d2a                	mv	s10,a0
a0006b06:	8dae                	mv	s11,a1
a0006b08:	084b2783          	lw	a5,132(s6)
a0006b0c:	8b8d                	andi	a5,a5,3
a0006b0e:	cf89                	beqz	a5,a0006b28 <qcc74x_i2c_transfer+0x2cc>
a0006b10:	095b2423          	sw	s5,136(s6)
a0006b14:	40c8                	lw	a0,4(s1)
a0006b16:	411c                	lw	a5,0(a0)
a0006b18:	8b85                	andi	a5,a5,1
a0006b1a:	fb95                	bnez	a5,a0006a4e <qcc74x_i2c_transfer+0x1f2>
a0006b1c:	b39ff0ef          	jal	ra,a0006654 <qcc74x_i2c_enable.isra.0>
a0006b20:	b73d                	j	a0006a4e <qcc74x_i2c_transfer+0x1f2>
a0006b22:	4781                	li	a5,0
a0006b24:	4a81                	li	s5,0
a0006b26:	bfc9                	j	a0006af8 <qcc74x_i2c_transfer+0x29c>
a0006b28:	c2fba097          	auipc	ra,0xc2fba
a0006b2c:	fb6080e7          	jalr	-74(ra) # 62fc0ade <qcc74x_mtimer_get_time_ms>
a0006b30:	c3a51577          	sub64	a0,a0,s10
a0006b34:	e8059be3          	bnez	a1,a00069ca <qcc74x_i2c_transfer+0x16e>
a0006b38:	fca9f8e3          	bgeu	s3,a0,a0006b08 <qcc74x_i2c_transfer+0x2ac>
a0006b3c:	b579                	j	a00069ca <qcc74x_i2c_transfer+0x16e>
a0006b3e:	40c8                	lw	a0,4(s1)
a0006b40:	b15ff0ef          	jal	ra,a0006654 <qcc74x_i2c_enable.isra.0>
a0006b44:	b515                	j	a0006968 <qcc74x_i2c_transfer+0x10c>

a0006b46 <qcc74x_uart_init>:
a0006b46:	1141                	addi	sp,sp,-16
a0006b48:	c422                	sw	s0,8(sp)
a0006b4a:	c226                	sw	s1,4(sp)
a0006b4c:	c606                	sw	ra,12(sp)
a0006b4e:	84ae                	mv	s1,a1
a0006b50:	00954583          	lbu	a1,9(a0)
a0006b54:	4140                	lw	s0,4(a0)
a0006b56:	4515                	li	a0,5
a0006b58:	748010ef          	jal	ra,a00082a0 <qcc74x_clk_get_peripheral_clock>
a0006b5c:	4729                	li	a4,10
a0006b5e:	02e507b3          	mul	a5,a0,a4
a0006b62:	4088                	lw	a0,0(s1)
a0006b64:	4014                	lw	a3,0(s0)
a0006b66:	4605                	li	a2,1
a0006b68:	9af9                	andi	a3,a3,-2
a0006b6a:	02a7d7b3          	divu	a5,a5,a0
a0006b6e:	0795                	addi	a5,a5,5
a0006b70:	02e7d7b3          	divu	a5,a5,a4
a0006b74:	4058                	lw	a4,4(s0)
a0006b76:	c014                	sw	a3,0(s0)
a0006b78:	9b79                	andi	a4,a4,-2
a0006b7a:	c058                	sw	a4,4(s0)
a0006b7c:	17fd                	addi	a5,a5,-1
a0006b7e:	0ef797f7          	pkbb16	a5,a5,a5
a0006b82:	c41c                	sw	a5,8(s0)
a0006b84:	0074c683          	lbu	a3,7(s1)
a0006b88:	401c                	lw	a5,0(s0)
a0006b8a:	4058                	lw	a4,4(s0)
a0006b8c:	0ac68c63          	beq	a3,a2,a0006c44 <qcc74x_uart_init+0xfe>
a0006b90:	4609                	li	a2,2
a0006b92:	0ac68e63          	beq	a3,a2,a0006c4e <qcc74x_uart_init+0x108>
a0006b96:	e299                	bnez	a3,a0006b9c <qcc74x_uart_init+0x56>
a0006b98:	9bbd                	andi	a5,a5,-17
a0006b9a:	9b3d                	andi	a4,a4,-17
a0006b9c:	0054c683          	lbu	a3,5(s1)
a0006ba0:	8ff7f793          	andi	a5,a5,-1793
a0006ba4:	8ff77713          	andi	a4,a4,-1793
a0006ba8:	0691                	addi	a3,a3,4
a0006baa:	06a2                	slli	a3,a3,0x8
a0006bac:	8fd5                	or	a5,a5,a3
a0006bae:	8f55                	or	a4,a4,a3
a0006bb0:	76f9                	lui	a3,0xffffe
a0006bb2:	7ff68693          	addi	a3,a3,2047 # ffffe7ff <__psram_limit+0x57bfe7ff>
a0006bb6:	8ff5                	and	a5,a5,a3
a0006bb8:	0064c683          	lbu	a3,6(s1)
a0006bbc:	06ae                	slli	a3,a3,0xb
a0006bbe:	8fd5                	or	a5,a5,a3
a0006bc0:	0094c683          	lbu	a3,9(s1)
a0006bc4:	ffd7f613          	andi	a2,a5,-3
a0006bc8:	8a89                	andi	a3,a3,2
a0006bca:	c299                	beqz	a3,a0006bd0 <qcc74x_uart_init+0x8a>
a0006bcc:	0027e613          	ori	a2,a5,2
a0006bd0:	76fd                	lui	a3,0xfffff
a0006bd2:	7ff68693          	addi	a3,a3,2047 # fffff7ff <__psram_limit+0x57bff7ff>
a0006bd6:	c010                	sw	a2,0(s0)
a0006bd8:	8f75                	and	a4,a4,a3
a0006bda:	c058                	sw	a4,4(s0)
a0006bdc:	4c5c                	lw	a5,28(s0)
a0006bde:	08040693          	addi	a3,s0,128
a0006be2:	e0e10637          	lui	a2,0xe0e10
a0006be6:	9bed                	andi	a5,a5,-5
a0006be8:	cc5c                	sw	a5,28(s0)
a0006bea:	445c                	lw	a5,12(s0)
a0006bec:	167d                	addi	a2,a2,-1
a0006bee:	001f0737          	lui	a4,0x1f0
a0006bf2:	9bf9                	andi	a5,a5,-2
a0006bf4:	c45c                	sw	a5,12(s0)
a0006bf6:	401c                	lw	a5,0(s0)
a0006bf8:	1f0005b7          	lui	a1,0x1f000
a0006bfc:	40b2                	lw	ra,12(sp)
a0006bfe:	0047e793          	ori	a5,a5,4
a0006c02:	c01c                	sw	a5,0(s0)
a0006c04:	42dc                	lw	a5,4(a3)
a0006c06:	8e7d                	and	a2,a2,a5
a0006c08:	00a4c783          	lbu	a5,10(s1)
a0006c0c:	07c2                	slli	a5,a5,0x10
a0006c0e:	8ff9                	and	a5,a5,a4
a0006c10:	00b4c703          	lbu	a4,11(s1)
a0006c14:	4492                	lw	s1,4(sp)
a0006c16:	0762                	slli	a4,a4,0x18
a0006c18:	8f6d                	and	a4,a4,a1
a0006c1a:	8fd9                	or	a5,a5,a4
a0006c1c:	8fd1                	or	a5,a5,a2
a0006c1e:	c2dc                	sw	a5,4(a3)
a0006c20:	429c                	lw	a5,0(a3)
a0006c22:	9bf1                	andi	a5,a5,-4
a0006c24:	00c7e793          	ori	a5,a5,12
a0006c28:	c29c                	sw	a5,0(a3)
a0006c2a:	57fd                	li	a5,-1
a0006c2c:	d05c                	sw	a5,36(s0)
a0006c2e:	4018                	lw	a4,0(s0)
a0006c30:	405c                	lw	a5,4(s0)
a0006c32:	00176713          	ori	a4,a4,1
a0006c36:	c018                	sw	a4,0(s0)
a0006c38:	0017e793          	ori	a5,a5,1
a0006c3c:	c05c                	sw	a5,4(s0)
a0006c3e:	4422                	lw	s0,8(sp)
a0006c40:	0141                	addi	sp,sp,16
a0006c42:	8082                	ret
a0006c44:	0307e793          	ori	a5,a5,48
a0006c48:	03076713          	ori	a4,a4,48
a0006c4c:	bf81                	j	a0006b9c <qcc74x_uart_init+0x56>
a0006c4e:	fdf7f793          	andi	a5,a5,-33
a0006c52:	fdf77713          	andi	a4,a4,-33
a0006c56:	0107e793          	ori	a5,a5,16
a0006c5a:	01076713          	ori	a4,a4,16
a0006c5e:	bf3d                	j	a0006b9c <qcc74x_uart_init+0x56>

a0006c60 <flash_get_clock_delay.constprop.0.isra.0>:
a0006c60:	2000b7b7          	lui	a5,0x2000b
a0006c64:	4394                	lw	a3,0(a5)
a0006c66:	4781                	li	a5,0
a0006c68:	2cb6b70b          	extu	a4,a3,11,11
a0006c6c:	c701                	beqz	a4,a0006c74 <flash_get_clock_delay.constprop.0.isra.0+0x14>
a0006c6e:	2886b78b          	extu	a5,a3,10,8
a0006c72:	0785                	addi	a5,a5,1
a0006c74:	2000b737          	lui	a4,0x2000b
a0006c78:	5b58                	lw	a4,52(a4)
a0006c7a:	85c18613          	addi	a2,gp,-1956 # 62fc1bd4 <g_flash_cfg>
a0006c7e:	00c75593          	srli	a1,a4,0xc
a0006c82:	0305f593          	andi	a1,a1,48
a0006c86:	8fcd                	or	a5,a5,a1
a0006c88:	00f60123          	sb	a5,2(a2) # e0e10002 <__psram_limit+0x38a10002>
a0006c8c:	0016d793          	srli	a5,a3,0x1
a0006c90:	8b89                	andi	a5,a5,2
a0006c92:	1046b68b          	extu	a3,a3,4,4
a0006c96:	8fd5                	or	a5,a5,a3
a0006c98:	00675693          	srli	a3,a4,0x6
a0006c9c:	0716                	slli	a4,a4,0x5
a0006c9e:	8ab1                	andi	a3,a3,12
a0006ca0:	06077713          	andi	a4,a4,96
a0006ca4:	8f55                	or	a4,a4,a3
a0006ca6:	8fd9                	or	a5,a5,a4
a0006ca8:	00f601a3          	sb	a5,3(a2)
a0006cac:	8082                	ret

a0006cae <qcc74x_adc_channel_config>:
a0006cae:	415c                	lw	a5,4(a0)
a0006cb0:	6705                	lui	a4,0x1
a0006cb2:	91070693          	addi	a3,a4,-1776 # 910 <__RFTLV_SIZE_HOLE+0x110>
a0006cb6:	40d7c50b          	lrw	a0,a5,a3,0
a0006cba:	02000837          	lui	a6,0x2000
a0006cbe:	01057533          	and	a0,a0,a6
a0006cc2:	e905                	bnez	a0,a0006cf2 <qcc74x_adc_channel_config+0x44>
a0006cc4:	4685                	li	a3,1
a0006cc6:	5529                	li	a0,-22
a0006cc8:	02c6e463          	bltu	a3,a2,a0006cf0 <qcc74x_adc_channel_config+0x42>
a0006ccc:	90c70693          	addi	a3,a4,-1780
a0006cd0:	40d7c70b          	lrw	a4,a5,a3,0
a0006cd4:	7679                	lui	a2,0xffffe
a0006cd6:	061d                	addi	a2,a2,7
a0006cd8:	8e79                	and	a2,a2,a4
a0006cda:	0005c703          	lbu	a4,0(a1) # 1f000000 <remain_wifi_ram+0x1efe0000>
a0006cde:	0015c583          	lbu	a1,1(a1)
a0006ce2:	0722                	slli	a4,a4,0x8
a0006ce4:	058e                	slli	a1,a1,0x3
a0006ce6:	8f4d                	or	a4,a4,a1
a0006ce8:	8f51                	or	a4,a4,a2
a0006cea:	40d7d70b          	srw	a4,a5,a3,0
a0006cee:	4501                	li	a0,0
a0006cf0:	8082                	ret
a0006cf2:	4715                	li	a4,5
a0006cf4:	0ac77b63          	bgeu	a4,a2,a0006daa <qcc74x_adc_channel_config+0xfc>
a0006cf8:	4701                	li	a4,0
a0006cfa:	4501                	li	a0,0
a0006cfc:	4801                	li	a6,0
a0006cfe:	4f95                	li	t6,5
a0006d00:	00158f13          	addi	t5,a1,1
a0006d04:	4e99                	li	t4,6
a0006d06:	03f70e33          	mul	t3,a4,t6
a0006d0a:	82e5c30b          	lrbu	t1,a1,a4,1
a0006d0e:	82ef488b          	lrbu	a7,t5,a4,1
a0006d12:	0705                	addi	a4,a4,1
a0006d14:	01c31333          	sll	t1,t1,t3
a0006d18:	01c898b3          	sll	a7,a7,t3
a0006d1c:	00686833          	or	a6,a6,t1
a0006d20:	01156533          	or	a0,a0,a7
a0006d24:	ffd711e3          	bne	a4,t4,a0006d06 <qcc74x_adc_channel_config+0x58>
a0006d28:	6705                	lui	a4,0x1
a0006d2a:	91870893          	addi	a7,a4,-1768 # 918 <__RFTLV_SIZE_HOLE+0x118>
a0006d2e:	4117d80b          	srw	a6,a5,a7,0
a0006d32:	92070713          	addi	a4,a4,-1760
a0006d36:	40e7d50b          	srw	a0,a5,a4,0
a0006d3a:	4801                	li	a6,0
a0006d3c:	4701                	li	a4,0
a0006d3e:	4501                	li	a0,0
a0006d40:	ffa60e93          	addi	t4,a2,-6 # ffffdffa <__psram_limit+0x57bfdffa>
a0006d44:	4f15                	li	t5,5
a0006d46:	07d74963          	blt	a4,t4,a0006db8 <qcc74x_adc_channel_config+0x10a>
a0006d4a:	6705                	lui	a4,0x1
a0006d4c:	91c70593          	addi	a1,a4,-1764 # 91c <__RFTLV_SIZE_HOLE+0x11c>
a0006d50:	40b7d80b          	srw	a6,a5,a1,0
a0006d54:	92470713          	addi	a4,a4,-1756
a0006d58:	a81d                	j	a0006d8e <qcc74x_adc_channel_config+0xe0>
a0006d5a:	03d70e33          	mul	t3,a4,t4
a0006d5e:	82e5c30b          	lrbu	t1,a1,a4,1
a0006d62:	82ef488b          	lrbu	a7,t5,a4,1
a0006d66:	0705                	addi	a4,a4,1
a0006d68:	01c31333          	sll	t1,t1,t3
a0006d6c:	01c898b3          	sll	a7,a7,t3
a0006d70:	00686833          	or	a6,a6,t1
a0006d74:	01156533          	or	a0,a0,a7
a0006d78:	0ff77893          	zext.b	a7,a4
a0006d7c:	fcc8efe3          	bltu	a7,a2,a0006d5a <qcc74x_adc_channel_config+0xac>
a0006d80:	6705                	lui	a4,0x1
a0006d82:	91870593          	addi	a1,a4,-1768 # 918 <__RFTLV_SIZE_HOLE+0x118>
a0006d86:	40b7d80b          	srw	a6,a5,a1,0
a0006d8a:	92070713          	addi	a4,a4,-1760
a0006d8e:	40e7d50b          	srw	a0,a5,a4,0
a0006d92:	40d7c70b          	lrw	a4,a5,a3,0
a0006d96:	fe2005b7          	lui	a1,0xfe200
a0006d9a:	15fd                	addi	a1,a1,-1
a0006d9c:	167d                	addi	a2,a2,-1
a0006d9e:	8f6d                	and	a4,a4,a1
a0006da0:	0656                	slli	a2,a2,0x15
a0006da2:	8e59                	or	a2,a2,a4
a0006da4:	40d7d60b          	srw	a2,a5,a3,0
a0006da8:	b799                	j	a0006cee <qcc74x_adc_channel_config+0x40>
a0006daa:	4701                	li	a4,0
a0006dac:	4501                	li	a0,0
a0006dae:	4801                	li	a6,0
a0006db0:	4e95                	li	t4,5
a0006db2:	00158f13          	addi	t5,a1,1 # fe200001 <__psram_limit+0x55e00001>
a0006db6:	b7c9                	j	a0006d78 <qcc74x_adc_channel_config+0xca>
a0006db8:	03e70e33          	mul	t3,a4,t5
a0006dbc:	00670893          	addi	a7,a4,6
a0006dc0:	03159f8b          	addsl	t6,a1,a7,1
a0006dc4:	8315c30b          	lrbu	t1,a1,a7,1
a0006dc8:	001fc883          	lbu	a7,1(t6)
a0006dcc:	0705                	addi	a4,a4,1
a0006dce:	0ff77713          	zext.b	a4,a4
a0006dd2:	01c31333          	sll	t1,t1,t3
a0006dd6:	01c898b3          	sll	a7,a7,t3
a0006dda:	00686833          	or	a6,a6,t1
a0006dde:	01156533          	or	a0,a0,a7
a0006de2:	b795                	j	a0006d46 <qcc74x_adc_channel_config+0x98>

a0006de4 <qcc74x_adc_start_conversion>:
a0006de4:	1141                	addi	sp,sp,-16
a0006de6:	c226                	sw	s1,4(sp)
a0006de8:	4144                	lw	s1,4(a0)
a0006dea:	c422                	sw	s0,8(sp)
a0006dec:	6405                	lui	s0,0x1
a0006dee:	90c40413          	addi	s0,s0,-1780 # 90c <__RFTLV_SIZE_HOLE+0x10c>
a0006df2:	4084c78b          	lrw	a5,s1,s0,0
a0006df6:	c606                	sw	ra,12(sp)
a0006df8:	06400513          	li	a0,100
a0006dfc:	9bf5                	andi	a5,a5,-3
a0006dfe:	4084d78b          	srw	a5,s1,s0,0
a0006e02:	c2fba097          	auipc	ra,0xc2fba
a0006e06:	cf6080e7          	jalr	-778(ra) # 62fc0af8 <qcc74x_mtimer_delay_us>
a0006e0a:	4084c78b          	lrw	a5,s1,s0,0
a0006e0e:	40b2                	lw	ra,12(sp)
a0006e10:	0027e793          	ori	a5,a5,2
a0006e14:	4084d78b          	srw	a5,s1,s0,0
a0006e18:	4422                	lw	s0,8(sp)
a0006e1a:	4492                	lw	s1,4(sp)
a0006e1c:	0141                	addi	sp,sp,16
a0006e1e:	8082                	ret

a0006e20 <qcc74x_adc_stop_conversion>:
a0006e20:	4154                	lw	a3,4(a0)
a0006e22:	6785                	lui	a5,0x1
a0006e24:	90c78793          	addi	a5,a5,-1780 # 90c <__RFTLV_SIZE_HOLE+0x10c>
a0006e28:	40f6c70b          	lrw	a4,a3,a5,0
a0006e2c:	9b75                	andi	a4,a4,-3
a0006e2e:	40f6d70b          	srw	a4,a3,a5,0
a0006e32:	8082                	ret

a0006e34 <qcc74x_update_adc_trim>:
a0006e34:	7179                	addi	sp,sp,-48
a0006e36:	d422                	sw	s0,40(sp)
a0006e38:	4140                	lw	s0,4(a0)
a0006e3a:	6785                	lui	a5,0x1
a0006e3c:	cc52                	sw	s4,24(sp)
a0006e3e:	91078a13          	addi	s4,a5,-1776 # 910 <__RFTLV_SIZE_HOLE+0x110>
a0006e42:	4144470b          	lrw	a4,s0,s4,0
a0006e46:	fe0006b7          	lui	a3,0xfe000
a0006e4a:	16fd                	addi	a3,a3,-1
a0006e4c:	8f75                	and	a4,a4,a3
a0006e4e:	d226                	sw	s1,36(sp)
a0006e50:	d04a                	sw	s2,32(sp)
a0006e52:	ce4e                	sw	s3,28(sp)
a0006e54:	ca56                	sw	s5,20(sp)
a0006e56:	c85a                	sw	s6,16(sp)
a0006e58:	c65e                	sw	s7,12(sp)
a0006e5a:	d606                	sw	ra,44(sp)
a0006e5c:	00276713          	ori	a4,a4,2
a0006e60:	4144570b          	srw	a4,s0,s4,0
a0006e64:	91478993          	addi	s3,a5,-1772
a0006e68:	4134470b          	lrw	a4,s0,s3,0
a0006e6c:	90c78913          	addi	s2,a5,-1780
a0006e70:	76f1                	lui	a3,0xffffc
a0006e72:	01476713          	ori	a4,a4,20
a0006e76:	4134570b          	srw	a4,s0,s3,0
a0006e7a:	4124470b          	lrw	a4,s0,s2,0
a0006e7e:	069d                	addi	a3,a3,7
a0006e80:	29078793          	addi	a5,a5,656
a0006e84:	8f75                	and	a4,a4,a3
a0006e86:	8fd9                	or	a5,a5,a4
a0006e88:	4124578b          	srw	a5,s0,s2,0
a0006e8c:	8b2a                	mv	s6,a0
a0006e8e:	8aae                	mv	s5,a1
a0006e90:	3f91                	jal	a0006de4 <qcc74x_adc_start_conversion>
a0006e92:	040005b7          	lui	a1,0x4000
a0006e96:	6541                	lui	a0,0x10
a0006e98:	4781                	li	a5,0
a0006e9a:	4b81                	li	s7,0
a0006e9c:	4481                	li	s1,0
a0006e9e:	200026b7          	lui	a3,0x20002
a0006ea2:	4891                	li	a7,4
a0006ea4:	15fd                	addi	a1,a1,-1
a0006ea6:	6321                	lui	t1,0x8
a0006ea8:	157d                	addi	a0,a0,-1
a0006eaa:	4829                	li	a6,10
a0006eac:	4298                	lw	a4,0(a3)
a0006eae:	00276713          	ori	a4,a4,2
a0006eb2:	c298                	sw	a4,0(a3)
a0006eb4:	4298                	lw	a4,0(a3)
a0006eb6:	5507370b          	extu	a4,a4,21,16
a0006eba:	df6d                	beqz	a4,a0006eb4 <qcc74x_update_adc_trim+0x80>
a0006ebc:	42d0                	lw	a2,4(a3)
a0006ebe:	00f8fc63          	bgeu	a7,a5,a0006ed6 <qcc74x_update_adc_trim+0xa2>
a0006ec2:	00b67733          	and	a4,a2,a1
a0006ec6:	00667633          	and	a2,a2,t1
a0006eca:	c601                	beqz	a2,a0006ed2 <qcc74x_update_adc_trim+0x9e>
a0006ecc:	40e00733          	neg	a4,a4
a0006ed0:	4b85                	li	s7,1
a0006ed2:	8f69                	and	a4,a4,a0
a0006ed4:	94ba                	add	s1,s1,a4
a0006ed6:	0785                	addi	a5,a5,1
a0006ed8:	3c07b78b          	extu	a5,a5,15,0
a0006edc:	fd0798e3          	bne	a5,a6,a0006eac <qcc74x_update_adc_trim+0x78>
a0006ee0:	855a                	mv	a0,s6
a0006ee2:	3f3d                	jal	a0006e20 <qcc74x_adc_stop_conversion>
a0006ee4:	4529                	li	a0,10
a0006ee6:	c2fba097          	auipc	ra,0xc2fba
a0006eea:	c3c080e7          	jalr	-964(ra) # 62fc0b22 <qcc74x_mtimer_delay_ms>
a0006eee:	4795                	li	a5,5
a0006ef0:	02f4d4b3          	divu	s1,s1,a5
a0006ef4:	62fc37b7          	lui	a5,0x62fc3
a0006ef8:	f4478793          	addi	a5,a5,-188 # 62fc2f44 <os2>
a0006efc:	100b8c63          	beqz	s7,a0007014 <qcc74x_update_adc_trim+0x1e0>
a0006f00:	5779                	li	a4,-2
a0006f02:	02e484b3          	mul	s1,s1,a4
a0006f06:	c384                	sw	s1,0(a5)
a0006f08:	8b818713          	addi	a4,gp,-1864 # 62fc1c30 <coe>
a0006f0c:	631c                	flw	fa5,0(a4)
a0006f0e:	439c                	lw	a5,0(a5)
a0006f10:	855a                	mv	a0,s6
a0006f12:	4481                	li	s1,0
a0006f14:	d007f753          	fcvt.s.w	fa4,a5
a0006f18:	a00097b7          	lui	a5,0xa0009
a0006f1c:	15c7a687          	flw	fa3,348(a5) # a000915c <__psram_limit+0xf7c0915c>
a0006f20:	18d77753          	fdiv.s	fa4,fa4,fa3
a0006f24:	08e7f7d3          	fsub.s	fa5,fa5,fa4
a0006f28:	e31c                	fsw	fa5,0(a4)
a0006f2a:	4124478b          	lrw	a5,s0,s2,0
a0006f2e:	6709                	lui	a4,0x2
a0006f30:	8fd9                	or	a5,a5,a4
a0006f32:	4124578b          	srw	a5,s0,s2,0
a0006f36:	4134478b          	lrw	a5,s0,s3,0
a0006f3a:	7779                	lui	a4,0xffffe
a0006f3c:	071d                	addi	a4,a4,7
a0006f3e:	9bad                	andi	a5,a5,-21
a0006f40:	4134578b          	srw	a5,s0,s3,0
a0006f44:	4124478b          	lrw	a5,s0,s2,0
a0006f48:	8ff9                	and	a5,a5,a4
a0006f4a:	6705                	lui	a4,0x1
a0006f4c:	7b870713          	addi	a4,a4,1976 # 17b8 <HeapMinSize+0x7b8>
a0006f50:	8fd9                	or	a5,a5,a4
a0006f52:	4124578b          	srw	a5,s0,s2,0
a0006f56:	3579                	jal	a0006de4 <qcc74x_adc_start_conversion>
a0006f58:	66c1                	lui	a3,0x10
a0006f5a:	4781                	li	a5,0
a0006f5c:	20002737          	lui	a4,0x20002
a0006f60:	4511                	li	a0,4
a0006f62:	16fd                	addi	a3,a3,-1
a0006f64:	45a9                	li	a1,10
a0006f66:	4310                	lw	a2,0(a4)
a0006f68:	00266613          	ori	a2,a2,2
a0006f6c:	c310                	sw	a2,0(a4)
a0006f6e:	4310                	lw	a2,0(a4)
a0006f70:	5506360b          	extu	a2,a2,21,16
a0006f74:	de6d                	beqz	a2,a0006f6e <qcc74x_update_adc_trim+0x13a>
a0006f76:	4350                	lw	a2,4(a4)
a0006f78:	00f57463          	bgeu	a0,a5,a0006f80 <qcc74x_update_adc_trim+0x14c>
a0006f7c:	8e75                	and	a2,a2,a3
a0006f7e:	94b2                	add	s1,s1,a2
a0006f80:	0785                	addi	a5,a5,1
a0006f82:	3c07b78b          	extu	a5,a5,15,0
a0006f86:	feb790e3          	bne	a5,a1,a0006f66 <qcc74x_update_adc_trim+0x132>
a0006f8a:	855a                	mv	a0,s6
a0006f8c:	3d51                	jal	a0006e20 <qcc74x_adc_stop_conversion>
a0006f8e:	4529                	li	a0,10
a0006f90:	c2fba097          	auipc	ra,0xc2fba
a0006f94:	b92080e7          	jalr	-1134(ra) # 62fc0b22 <qcc74x_mtimer_delay_ms>
a0006f98:	62fc37b7          	lui	a5,0x62fc3
a0006f9c:	f4078793          	addi	a5,a5,-192 # 62fc2f40 <os1>
a0006fa0:	cca5                	beqz	s1,a0007018 <qcc74x_update_adc_trim+0x1e4>
a0006fa2:	4715                	li	a4,5
a0006fa4:	02e4d4b3          	divu	s1,s1,a4
a0006fa8:	c384                	sw	s1,0(a5)
a0006faa:	4144470b          	lrw	a4,s0,s4,0
a0006fae:	002ac683          	lbu	a3,2(s5)
a0006fb2:	ffd77793          	andi	a5,a4,-3
a0006fb6:	c299                	beqz	a3,a0006fbc <qcc74x_update_adc_trim+0x188>
a0006fb8:	00276793          	ori	a5,a4,2
a0006fbc:	001ac703          	lbu	a4,1(s5)
a0006fc0:	c701                	beqz	a4,a0006fc8 <qcc74x_update_adc_trim+0x194>
a0006fc2:	02000737          	lui	a4,0x2000
a0006fc6:	8fd9                	or	a5,a5,a4
a0006fc8:	4144578b          	srw	a5,s0,s4,0
a0006fcc:	4134468b          	lrw	a3,s0,s3,0
a0006fd0:	003ac703          	lbu	a4,3(s5)
a0006fd4:	ffb6f793          	andi	a5,a3,-5
a0006fd8:	c319                	beqz	a4,a0006fde <qcc74x_update_adc_trim+0x1aa>
a0006fda:	0046e793          	ori	a5,a3,4
a0006fde:	4134578b          	srw	a5,s0,s3,0
a0006fe2:	4124478b          	lrw	a5,s0,s2,0
a0006fe6:	cf05                	beqz	a4,a000701e <qcc74x_update_adc_trim+0x1ea>
a0006fe8:	7779                	lui	a4,0xffffe
a0006fea:	177d                	addi	a4,a4,-1
a0006fec:	8ff9                	and	a5,a5,a4
a0006fee:	4124578b          	srw	a5,s0,s2,0
a0006ff2:	20002737          	lui	a4,0x20002
a0006ff6:	431c                	lw	a5,0(a4)
a0006ff8:	50b2                	lw	ra,44(sp)
a0006ffa:	5422                	lw	s0,40(sp)
a0006ffc:	0027e793          	ori	a5,a5,2
a0007000:	c31c                	sw	a5,0(a4)
a0007002:	5492                	lw	s1,36(sp)
a0007004:	5902                	lw	s2,32(sp)
a0007006:	49f2                	lw	s3,28(sp)
a0007008:	4a62                	lw	s4,24(sp)
a000700a:	4ad2                	lw	s5,20(sp)
a000700c:	4b42                	lw	s6,16(sp)
a000700e:	4bb2                	lw	s7,12(sp)
a0007010:	6145                	addi	sp,sp,48
a0007012:	8082                	ret
a0007014:	0486                	slli	s1,s1,0x1
a0007016:	bdc5                	j	a0006f06 <qcc74x_update_adc_trim+0xd2>
a0007018:	0007a023          	sw	zero,0(a5)
a000701c:	b779                	j	a0006faa <qcc74x_update_adc_trim+0x176>
a000701e:	6709                	lui	a4,0x2
a0007020:	8fd9                	or	a5,a5,a4
a0007022:	b7f1                	j	a0006fee <qcc74x_update_adc_trim+0x1ba>

a0007024 <qcc74x_adc_init>:
a0007024:	415c                	lw	a5,4(a0)
a0007026:	6705                	lui	a4,0x1
a0007028:	90c70713          	addi	a4,a4,-1780 # 90c <__RFTLV_SIZE_HOLE+0x10c>
a000702c:	40e7c68b          	lrw	a3,a5,a4,0
a0007030:	1101                	addi	sp,sp,-32
a0007032:	ce06                	sw	ra,28(sp)
a0007034:	cc22                	sw	s0,24(sp)
a0007036:	9af9                	andi	a3,a3,-2
a0007038:	40e7d68b          	srw	a3,a5,a4,0
a000703c:	40e7c68b          	lrw	a3,a5,a4,0
a0007040:	0016e693          	ori	a3,a3,1
a0007044:	40e7d68b          	srw	a3,a5,a4,0
a0007048:	40e7c68b          	lrw	a3,a5,a4,0
a000704c:	0046e693          	ori	a3,a3,4
a0007050:	40e7d68b          	srw	a3,a5,a4,0
a0007054:	0001                	nop
a0007056:	0001                	nop
a0007058:	0001                	nop
a000705a:	0001                	nop
a000705c:	0001                	nop
a000705e:	0001                	nop
a0007060:	0001                	nop
a0007062:	0001                	nop
a0007064:	40e7c68b          	lrw	a3,a5,a4,0
a0007068:	9aed                	andi	a3,a3,-5
a000706a:	40e7d68b          	srw	a3,a5,a4,0
a000706e:	0005c683          	lbu	a3,0(a1) # 4000000 <remain_wifi_ram+0x3fe0000>
a0007072:	0045c603          	lbu	a2,4(a1)
a0007076:	06ca                	slli	a3,a3,0x12
a0007078:	060a                	slli	a2,a2,0x2
a000707a:	8ed1                	or	a3,a3,a2
a000707c:	0015c603          	lbu	a2,1(a1)
a0007080:	0e061863          	bnez	a2,a0007170 <qcc74x_adc_init+0x14c>
a0007084:	48000637          	lui	a2,0x48000
a0007088:	8ed1                	or	a3,a3,a2
a000708a:	0025c603          	lbu	a2,2(a1)
a000708e:	c219                	beqz	a2,a0007094 <qcc74x_adc_init+0x70>
a0007090:	0026e693          	ori	a3,a3,2
a0007094:	6605                	lui	a2,0x1
a0007096:	91060613          	addi	a2,a2,-1776 # 910 <__RFTLV_SIZE_HOLE+0x110>
a000709a:	40c7d68b          	srw	a3,a5,a2,0
a000709e:	0001                	nop
a00070a0:	0001                	nop
a00070a2:	0001                	nop
a00070a4:	0001                	nop
a00070a6:	0001                	nop
a00070a8:	0001                	nop
a00070aa:	0001                	nop
a00070ac:	0001                	nop
a00070ae:	0055c603          	lbu	a2,5(a1)
a00070b2:	4685                	li	a3,1
a00070b4:	0cd61163          	bne	a2,a3,a0007176 <qcc74x_adc_init+0x152>
a00070b8:	224136b7          	lui	a3,0x22413
a00070bc:	08868693          	addi	a3,a3,136 # 22413088 <remain_wifi_ram+0x223f3088>
a00070c0:	0035c803          	lbu	a6,3(a1)
a00070c4:	00080463          	beqz	a6,a00070cc <qcc74x_adc_init+0xa8>
a00070c8:	0046e693          	ori	a3,a3,4
a00070cc:	6605                	lui	a2,0x1
a00070ce:	91460613          	addi	a2,a2,-1772 # 914 <__RFTLV_SIZE_HOLE+0x114>
a00070d2:	40c7d68b          	srw	a3,a5,a2,0
a00070d6:	40e7c68b          	lrw	a3,a5,a4,0
a00070da:	00082637          	lui	a2,0x82
a00070de:	00080763          	beqz	a6,a00070ec <qcc74x_adc_init+0xc8>
a00070e2:	7679                	lui	a2,0xffffe
a00070e4:	167d                	addi	a2,a2,-1
a00070e6:	8ef1                	and	a3,a3,a2
a00070e8:	00080637          	lui	a2,0x80
a00070ec:	8ed1                	or	a3,a3,a2
a00070ee:	40e7d68b          	srw	a3,a5,a4,0
a00070f2:	6705                	lui	a4,0x1
a00070f4:	93870613          	addi	a2,a4,-1736 # 938 <__RFTLV_SIZE_HOLE+0x138>
a00070f8:	40c7c68b          	lrw	a3,a5,a2,0
a00070fc:	7841                	lui	a6,0xffff0
a00070fe:	92c70713          	addi	a4,a4,-1748
a0007102:	0106f6b3          	and	a3,a3,a6
a0007106:	40c7d68b          	srw	a3,a5,a2,0
a000710a:	20002637          	lui	a2,0x20002
a000710e:	4214                	lw	a3,0(a2)
a0007110:	ff400837          	lui	a6,0xff400
a0007114:	1879                	addi	a6,a6,-2
a0007116:	0106f6b3          	and	a3,a3,a6
a000711a:	681d                	lui	a6,0x7
a000711c:	70280813          	addi	a6,a6,1794 # 7702 <HeapMinSize+0x6702>
a0007120:	0106e6b3          	or	a3,a3,a6
a0007124:	c214                	sw	a3,0(a2)
a0007126:	4214                	lw	a3,0(a2)
a0007128:	62fc3437          	lui	s0,0x62fc3
a000712c:	f3c40413          	addi	s0,s0,-196 # 62fc2f3c <adc_cali_complete>
a0007130:	8fd6f693          	andi	a3,a3,-1795
a0007134:	c214                	sw	a3,0(a2)
a0007136:	40e7c68b          	lrw	a3,a5,a4,0
a000713a:	3006e693          	ori	a3,a3,768
a000713e:	40e7d68b          	srw	a3,a5,a4,0
a0007142:	401c                	lw	a5,0(s0)
a0007144:	e395                	bnez	a5,a0007168 <qcc74x_adc_init+0x144>
a0007146:	c62e                	sw	a1,12(sp)
a0007148:	c42a                	sw	a0,8(sp)
a000714a:	070010ef          	jal	ra,a00081ba <qcc74x_efuse_get_adc_trim>
a000714e:	45b2                	lw	a1,12(sp)
a0007150:	4522                	lw	a0,8(sp)
a0007152:	8aa1ac27          	fsw	fa0,-1864(gp) # 62fc1c30 <coe>
a0007156:	39f9                	jal	a0006e34 <qcc74x_update_adc_trim>
a0007158:	0ea010ef          	jal	ra,a0008242 <qcc74x_efuse_get_adc_tsen_trim>
a000715c:	62fc37b7          	lui	a5,0x62fc3
a0007160:	f4a7a423          	sw	a0,-184(a5) # 62fc2f48 <tsen_offset>
a0007164:	4785                	li	a5,1
a0007166:	c01c                	sw	a5,0(s0)
a0007168:	40f2                	lw	ra,28(sp)
a000716a:	4462                	lw	s0,24(sp)
a000716c:	6105                	addi	sp,sp,32
a000716e:	8082                	ret
a0007170:	4a020637          	lui	a2,0x4a020
a0007174:	bf11                	j	a0007088 <qcc74x_adc_init+0x64>
a0007176:	224136b7          	lui	a3,0x22413
a000717a:	08068693          	addi	a3,a3,128 # 22413080 <remain_wifi_ram+0x223f3080>
a000717e:	b789                	j	a00070c0 <qcc74x_adc_init+0x9c>

a0007180 <qcc74x_adc_get_count>:
a0007180:	200027b7          	lui	a5,0x20002
a0007184:	4388                	lw	a0,0(a5)
a0007186:	5505350b          	extu	a0,a0,21,16
a000718a:	8082                	ret

a000718c <qcc74x_adc_read_raw>:
a000718c:	200027b7          	lui	a5,0x20002
a0007190:	43c8                	lw	a0,4(a5)
a0007192:	040007b7          	lui	a5,0x4000
a0007196:	17fd                	addi	a5,a5,-1
a0007198:	8d7d                	and	a0,a0,a5
a000719a:	8082                	ret

a000719c <qcc74x_adc_parse_result>:
a000719c:	711d                	addi	sp,sp,-96
a000719e:	4158                	lw	a4,4(a0)
a00071a0:	caa6                	sw	s1,84(sp)
a00071a2:	6485                	lui	s1,0x1
a00071a4:	91448513          	addi	a0,s1,-1772 # 914 <__RFTLV_SIZE_HOLE+0x114>
a00071a8:	91048793          	addi	a5,s1,-1776
a00071ac:	40f7478b          	lrw	a5,a4,a5,0
a00071b0:	40a7480b          	lrw	a6,a4,a0,0
a00071b4:	40a7470b          	lrw	a4,a4,a0,0
a00071b8:	dc62                	sw	s8,56(sp)
a00071ba:	ce86                	sw	ra,92(sp)
a00071bc:	cca2                	sw	s0,88(sp)
a00071be:	c8ca                	sw	s2,80(sp)
a00071c0:	c6ce                	sw	s3,76(sp)
a00071c2:	c4d2                	sw	s4,72(sp)
a00071c4:	c2d6                	sw	s5,68(sp)
a00071c6:	c0da                	sw	s6,64(sp)
a00071c8:	de5e                	sw	s7,60(sp)
a00071ca:	da66                	sw	s9,52(sp)
a00071cc:	d86a                	sw	s10,48(sp)
a00071ce:	d66e                	sw	s11,44(sp)
a00071d0:	0c37370b          	extu	a4,a4,3,3
a00071d4:	1027bc0b          	extu	s8,a5,4,2
a00071d8:	0828380b          	extu	a6,a6,2,2
a00071dc:	c8048493          	addi	s1,s1,-896
a00071e0:	c319                	beqz	a4,a00071e6 <qcc74x_adc_parse_result+0x4a>
a00071e2:	7d000493          	li	s1,2000
a00071e6:	4501                	li	a0,0
a00071e8:	12080d63          	beqz	a6,a0007322 <qcc74x_adc_parse_result+0x186>
a00071ec:	68a1                	lui	a7,0x8
a00071ee:	6e41                	lui	t3,0x10
a00071f0:	6e91                	lui	t4,0x4
a00071f2:	6289                	lui	t0,0x2
a00071f4:	6f05                	lui	t5,0x1
a00071f6:	4f81                	li	t6,0
a00071f8:	4389                	li	t2,2
a00071fa:	4411                	li	s0,4
a00071fc:	1e7d                	addi	t3,t3,-1
a00071fe:	fff88913          	addi	s2,a7,-1 # 7fff <HeapMinSize+0x6fff>
a0007202:	1efd                	addi	t4,t4,-1
a0007204:	fff28993          	addi	s3,t0,-1 # 1fff <HeapMinSize+0xfff>
a0007208:	1f7d                	addi	t5,t5,-1
a000720a:	7ff00a13          	li	s4,2047
a000720e:	3c05370b          	extu	a4,a0,15,0
a0007212:	0cd77563          	bgeu	a4,a3,a00072dc <qcc74x_adc_parse_result+0x140>
a0007216:	44a5c70b          	lrw	a4,a1,a0,2
a000721a:	01575a93          	srli	s5,a4,0x15
a000721e:	01560023          	sb	s5,0(a2) # 4a020000 <__RFTLV_HEAD1_H+0x3afb3be>
a0007222:	51073a8b          	extu	s5,a4,20,16
a0007226:	015600a3          	sb	s5,1(a2)
a000722a:	01177ab3          	and	s5,a4,a7
a000722e:	000a8563          	beqz	s5,a0007238 <qcc74x_adc_parse_result+0x9c>
a0007232:	40e00733          	neg	a4,a4
a0007236:	8fc2                	mv	t6,a6
a0007238:	260c1063          	bnez	s8,a0007498 <qcc74x_adc_parse_result+0x2fc>
a000723c:	8311                	srli	a4,a4,0x4
a000723e:	01e77733          	and	a4,a4,t5
a0007242:	8b818a93          	addi	s5,gp,-1864 # 62fc1c30 <coe>
a0007246:	d00777d3          	fcvt.s.w	fa5,a4
a000724a:	000aa707          	flw	fa4,0(s5)
a000724e:	18e7f7d3          	fdiv.s	fa5,fa5,fa4
a0007252:	c0179753          	fcvt.wu.s	a4,fa5,rtz
a0007256:	00ea7463          	bgeu	s4,a4,a000725e <qcc74x_adc_parse_result+0xc2>
a000725a:	7ff00713          	li	a4,2047
a000725e:	c258                	sw	a4,4(a2)
a0007260:	02e48733          	mul	a4,s1,a4
a0007264:	872d                	srai	a4,a4,0xb
a0007266:	c618                	sw	a4,8(a2)
a0007268:	000f8a63          	beqz	t6,a000727c <qcc74x_adc_parse_result+0xe0>
a000726c:	4258                	lw	a4,4(a2)
a000726e:	40e00733          	neg	a4,a4
a0007272:	c258                	sw	a4,4(a2)
a0007274:	4618                	lw	a4,8(a2)
a0007276:	40e00733          	neg	a4,a4
a000727a:	c618                	sw	a4,8(a2)
a000727c:	0505                	addi	a0,a0,1
a000727e:	0631                	addi	a2,a2,12
a0007280:	b779                	j	a000720e <qcc74x_adc_parse_result+0x72>
a0007282:	44a5c70b          	lrw	a4,a1,a0,2
a0007286:	8b018293          	addi	t0,gp,-1872 # 62fc1c28 <adc_reference_channel>
a000728a:	0002a283          	lw	t0,0(t0)
a000728e:	01575393          	srli	t2,a4,0x15
a0007292:	00539c63          	bne	t2,t0,a00072aa <qcc74x_adc_parse_result+0x10e>
a0007296:	060c1263          	bnez	s8,a00072fa <qcc74x_adc_parse_result+0x15e>
a000729a:	00475e13          	srli	t3,a4,0x4
a000729e:	006e7e33          	and	t3,t3,t1
a00072a2:	029e0e33          	mul	t3,t3,s1
a00072a6:	40ce5d13          	srai	s10,t3,0xc
a00072aa:	0505                	addi	a0,a0,1
a00072ac:	3c05370b          	extu	a4,a0,15,0
a00072b0:	fcd769e3          	bltu	a4,a3,a0007282 <qcc74x_adc_parse_result+0xe6>
a00072b4:	a0009737          	lui	a4,0xa0009
a00072b8:	a1c72783          	lw	a5,-1508(a4) # a0008a1c <__psram_limit+0xf7c08a1c>
a00072bc:	a1872703          	lw	a4,-1512(a4)
a00072c0:	ce36                	sw	a3,28(sp)
a00072c2:	8a2e                	mv	s4,a1
a00072c4:	8432                	mv	s0,a2
a00072c6:	4c81                	li	s9,0
a00072c8:	6dc1                	lui	s11,0x10
a00072ca:	c83a                	sw	a4,16(sp)
a00072cc:	ca3e                	sw	a5,20(sp)
a00072ce:	6911                	lui	s2,0x4
a00072d0:	6985                	lui	s3,0x1
a00072d2:	47f2                	lw	a5,28(sp)
a00072d4:	3c0cb70b          	extu	a4,s9,15,0
a00072d8:	04f76f63          	bltu	a4,a5,a0007336 <qcc74x_adc_parse_result+0x19a>
a00072dc:	40f6                	lw	ra,92(sp)
a00072de:	4466                	lw	s0,88(sp)
a00072e0:	44d6                	lw	s1,84(sp)
a00072e2:	4946                	lw	s2,80(sp)
a00072e4:	49b6                	lw	s3,76(sp)
a00072e6:	4a26                	lw	s4,72(sp)
a00072e8:	4a96                	lw	s5,68(sp)
a00072ea:	4b06                	lw	s6,64(sp)
a00072ec:	5bf2                	lw	s7,60(sp)
a00072ee:	5c62                	lw	s8,56(sp)
a00072f0:	5cd2                	lw	s9,52(sp)
a00072f2:	5d42                	lw	s10,48(sp)
a00072f4:	5db2                	lw	s11,44(sp)
a00072f6:	6125                	addi	sp,sp,96
a00072f8:	8082                	ret
a00072fa:	01ec1b63          	bne	s8,t5,a0007310 <qcc74x_adc_parse_result+0x174>
a00072fe:	00275e13          	srli	t3,a4,0x2
a0007302:	011e7e33          	and	t3,t3,a7
a0007306:	029e0e33          	mul	t3,t3,s1
a000730a:	40ee5d13          	srai	s10,t3,0xe
a000730e:	bf71                	j	a00072aa <qcc74x_adc_parse_result+0x10e>
a0007310:	f9fc1de3          	bne	s8,t6,a00072aa <qcc74x_adc_parse_result+0x10e>
a0007314:	01077e33          	and	t3,a4,a6
a0007318:	029e0e33          	mul	t3,t3,s1
a000731c:	410e5d13          	srai	s10,t3,0x10
a0007320:	b769                	j	a00072aa <qcc74x_adc_parse_result+0x10e>
a0007322:	6841                	lui	a6,0x10
a0007324:	6891                	lui	a7,0x4
a0007326:	6305                	lui	t1,0x1
a0007328:	4d01                	li	s10,0
a000732a:	4f09                	li	t5,2
a000732c:	4f91                	li	t6,4
a000732e:	187d                	addi	a6,a6,-1
a0007330:	18fd                	addi	a7,a7,-1
a0007332:	137d                	addi	t1,t1,-1
a0007334:	bfa5                	j	a00072ac <qcc74x_adc_parse_result+0x110>
a0007336:	459a470b          	lrw	a4,s4,s9,2
a000733a:	57fd                	li	a5,-1
a000733c:	00f400a3          	sb	a5,1(s0)
a0007340:	67c1                	lui	a5,0x10
a0007342:	17fd                	addi	a5,a5,-1
a0007344:	01575693          	srli	a3,a4,0x15
a0007348:	00f77ab3          	and	s5,a4,a5
a000734c:	62fc37b7          	lui	a5,0x62fc3
a0007350:	00d40023          	sb	a3,0(s0)
a0007354:	f4078693          	addi	a3,a5,-192 # 62fc2f40 <os1>
a0007358:	62fc37b7          	lui	a5,0x62fc3
a000735c:	0006ab03          	lw	s6,0(a3)
a0007360:	f4478693          	addi	a3,a5,-188 # 62fc2f44 <os2>
a0007364:	0006ab83          	lw	s7,0(a3)
a0007368:	8b818f13          	addi	t5,gp,-1864 # 62fc1c30 <coe>
a000736c:	0c0bde63          	bgez	s7,a0007448 <qcc74x_adc_parse_result+0x2ac>
a0007370:	8556                	mv	a0,s5
a0007372:	fd6fc0ef          	jal	ra,a0003b48 <__floatunsidf>
a0007376:	c02a                	sw	a0,0(sp)
a0007378:	855a                	mv	a0,s6
a000737a:	c22e                	sw	a1,4(sp)
a000737c:	fccfc0ef          	jal	ra,a0003b48 <__floatunsidf>
a0007380:	4642                	lw	a2,16(sp)
a0007382:	46d2                	lw	a3,20(sp)
a0007384:	84dfb0ef          	jal	ra,a0002bd0 <__muldf3>
a0007388:	c42a                	sw	a0,8(sp)
a000738a:	c62e                	sw	a1,12(sp)
a000738c:	862a                	mv	a2,a0
a000738e:	86ae                	mv	a3,a1
a0007390:	4502                	lw	a0,0(sp)
a0007392:	4592                	lw	a1,4(sp)
a0007394:	f8efb0ef          	jal	ra,a0002b22 <__ledf2>
a0007398:	8b818f13          	addi	t5,gp,-1864 # 62fc1c30 <coe>
a000739c:	00055963          	bgez	a0,a00073ae <qcc74x_adc_parse_result+0x212>
a00073a0:	000f2707          	flw	fa4,0(t5) # 1000 <HeapMinSize>
a00073a4:	416a86b3          	sub	a3,s5,s6
a00073a8:	d016f7d3          	fcvt.s.wu	fa5,a3
a00073ac:	a82d                	j	a00073e6 <qcc74x_adc_parse_result+0x24a>
a00073ae:	855e                	mv	a0,s7
a00073b0:	f32fc0ef          	jal	ra,a0003ae2 <__floatsidf>
a00073b4:	862a                	mv	a2,a0
a00073b6:	86ae                	mv	a3,a1
a00073b8:	4522                	lw	a0,8(sp)
a00073ba:	45b2                	lw	a1,12(sp)
a00073bc:	daffb0ef          	jal	ra,a000316a <__subdf3>
a00073c0:	862a                	mv	a2,a0
a00073c2:	86ae                	mv	a3,a1
a00073c4:	4502                	lw	a0,0(sp)
a00073c6:	4592                	lw	a1,4(sp)
a00073c8:	eacfb0ef          	jal	ra,a0002a74 <__gedf2>
a00073cc:	8b818f13          	addi	t5,gp,-1864 # 62fc1c30 <coe>
a00073d0:	000f2707          	flw	fa4,0(t5)
a00073d4:	00054763          	bltz	a0,a00073e2 <qcc74x_adc_parse_result+0x246>
a00073d8:	417a8833          	sub	a6,s5,s7
a00073dc:	d01877d3          	fcvt.s.wu	fa5,a6
a00073e0:	a019                	j	a00073e6 <qcc74x_adc_parse_result+0x24a>
a00073e2:	d00af7d3          	fcvt.s.w	fa5,s5
a00073e6:	18e7f7d3          	fdiv.s	fa5,fa5,fa4
a00073ea:	c00796d3          	fcvt.w.s	a3,fa5,rtz
a00073ee:	016af363          	bgeu	s5,s6,a00073f4 <qcc74x_adc_parse_result+0x258>
a00073f2:	4681                	li	a3,0
a00073f4:	c054                	sw	a3,4(s0)
a00073f6:	060c1063          	bnez	s8,a0007456 <qcc74x_adc_parse_result+0x2ba>
a00073fa:	8691                	srai	a3,a3,0x4
a00073fc:	6785                	lui	a5,0x1
a00073fe:	0136a733          	slt	a4,a3,s3
a0007402:	17fd                	addi	a5,a5,-1
a0007404:	40e7968b          	mveqz	a3,a5,a4
a0007408:	02d48733          	mul	a4,s1,a3
a000740c:	c054                	sw	a3,4(s0)
a000740e:	03374733          	div	a4,a4,s3
a0007412:	c418                	sw	a4,8(s0)
a0007414:	8b018713          	addi	a4,gp,-1872 # 62fc1c28 <adc_reference_channel>
a0007418:	4314                	lw	a3,0(a4)
a000741a:	57fd                	li	a5,-1
a000741c:	02f68363          	beq	a3,a5,a0007442 <qcc74x_adc_parse_result+0x2a6>
a0007420:	4314                	lw	a3,0(a4)
a0007422:	459a470b          	lrw	a4,s4,s9,2
a0007426:	8355                	srli	a4,a4,0x15
a0007428:	00d70d63          	beq	a4,a3,a0007442 <qcc74x_adc_parse_result+0x2a6>
a000742c:	060d0363          	beqz	s10,a0007492 <qcc74x_adc_parse_result+0x2f6>
a0007430:	8b418713          	addi	a4,gp,-1868 # 62fc1c2c <adc_reference_channel_millivolt>
a0007434:	4318                	lw	a4,0(a4)
a0007436:	4414                	lw	a3,8(s0)
a0007438:	02d70733          	mul	a4,a4,a3
a000743c:	03a74733          	div	a4,a4,s10
a0007440:	c418                	sw	a4,8(s0)
a0007442:	0c85                	addi	s9,s9,1
a0007444:	0431                	addi	s0,s0,12
a0007446:	b571                	j	a00072d2 <qcc74x_adc_parse_result+0x136>
a0007448:	000f2707          	flw	fa4,0(t5)
a000744c:	017b06b3          	add	a3,s6,s7
a0007450:	f8daf4e3          	bgeu	s5,a3,a00073d8 <qcc74x_adc_parse_result+0x23c>
a0007454:	bf81                	j	a00073a4 <qcc74x_adc_parse_result+0x208>
a0007456:	4789                	li	a5,2
a0007458:	00fc1f63          	bne	s8,a5,a0007476 <qcc74x_adc_parse_result+0x2da>
a000745c:	8689                	srai	a3,a3,0x2
a000745e:	6791                	lui	a5,0x4
a0007460:	0126a733          	slt	a4,a3,s2
a0007464:	17fd                	addi	a5,a5,-1
a0007466:	40e7968b          	mveqz	a3,a5,a4
a000746a:	02d48733          	mul	a4,s1,a3
a000746e:	c054                	sw	a3,4(s0)
a0007470:	03274733          	div	a4,a4,s2
a0007474:	bf79                	j	a0007412 <qcc74x_adc_parse_result+0x276>
a0007476:	4791                	li	a5,4
a0007478:	f8fc1ee3          	bne	s8,a5,a0007414 <qcc74x_adc_parse_result+0x278>
a000747c:	01b6c563          	blt	a3,s11,a0007486 <qcc74x_adc_parse_result+0x2ea>
a0007480:	67c1                	lui	a5,0x10
a0007482:	17fd                	addi	a5,a5,-1
a0007484:	c05c                	sw	a5,4(s0)
a0007486:	4058                	lw	a4,4(s0)
a0007488:	02e48733          	mul	a4,s1,a4
a000748c:	03b74733          	div	a4,a4,s11
a0007490:	b749                	j	a0007412 <qcc74x_adc_parse_result+0x276>
a0007492:	00042423          	sw	zero,8(s0)
a0007496:	b775                	j	a0007442 <qcc74x_adc_parse_result+0x2a6>
a0007498:	027c1863          	bne	s8,t2,a00074c8 <qcc74x_adc_parse_result+0x32c>
a000749c:	8309                	srli	a4,a4,0x2
a000749e:	8b818a93          	addi	s5,gp,-1864 # 62fc1c30 <coe>
a00074a2:	01d77733          	and	a4,a4,t4
a00074a6:	000aa707          	flw	fa4,0(s5)
a00074aa:	d00777d3          	fcvt.s.w	fa5,a4
a00074ae:	18e7f7d3          	fdiv.s	fa5,fa5,fa4
a00074b2:	c0179753          	fcvt.wu.s	a4,fa5,rtz
a00074b6:	00573ab3          	sltu	s5,a4,t0
a00074ba:	4159970b          	mveqz	a4,s3,s5
a00074be:	c258                	sw	a4,4(a2)
a00074c0:	02e48733          	mul	a4,s1,a4
a00074c4:	8735                	srai	a4,a4,0xd
a00074c6:	b345                	j	a0007266 <qcc74x_adc_parse_result+0xca>
a00074c8:	da8c10e3          	bne	s8,s0,a0007268 <qcc74x_adc_parse_result+0xcc>
a00074cc:	8b818a93          	addi	s5,gp,-1864 # 62fc1c30 <coe>
a00074d0:	01c77733          	and	a4,a4,t3
a00074d4:	000aa707          	flw	fa4,0(s5)
a00074d8:	d00777d3          	fcvt.s.w	fa5,a4
a00074dc:	18e7f7d3          	fdiv.s	fa5,fa5,fa4
a00074e0:	c0179753          	fcvt.wu.s	a4,fa5,rtz
a00074e4:	01173ab3          	sltu	s5,a4,a7
a00074e8:	4159170b          	mveqz	a4,s2,s5
a00074ec:	c258                	sw	a4,4(a2)
a00074ee:	02e48733          	mul	a4,s1,a4
a00074f2:	873d                	srai	a4,a4,0xf
a00074f4:	bb8d                	j	a0007266 <qcc74x_adc_parse_result+0xca>

a00074f6 <irq_unexpected_isr>:
a00074f6:	85aa                	mv	a1,a0
a00074f8:	a0009537          	lui	a0,0xa0009
a00074fc:	16850513          	addi	a0,a0,360 # a0009168 <__psram_limit+0xf7c09168>
a0007500:	861fe06f          	j	a0005d60 <printf>

a0007504 <qcc74x_irq_initialize>:
a0007504:	62fc37b7          	lui	a5,0x62fc3
a0007508:	35078793          	addi	a5,a5,848 # 62fc3350 <g_irqvector>
a000750c:	a0007737          	lui	a4,0xa0007
a0007510:	28078693          	addi	a3,a5,640
a0007514:	4f670713          	addi	a4,a4,1270 # a00074f6 <__psram_limit+0xf7c074f6>
a0007518:	c398                	sw	a4,0(a5)
a000751a:	0007a223          	sw	zero,4(a5)
a000751e:	07a1                	addi	a5,a5,8
a0007520:	fed79ce3          	bne	a5,a3,a0007518 <qcc74x_irq_initialize+0x14>
a0007524:	8082                	ret

a0007526 <qcc74x_device_get_by_name>:
a0007526:	1101                	addi	sp,sp,-32
a0007528:	cc22                	sw	s0,24(sp)
a000752a:	ca26                	sw	s1,20(sp)
a000752c:	c64e                	sw	s3,12(sp)
a000752e:	c452                	sw	s4,8(sp)
a0007530:	ce06                	sw	ra,28(sp)
a0007532:	c84a                	sw	s2,16(sp)
a0007534:	8a2a                	mv	s4,a0
a0007536:	4481                	li	s1,0
a0007538:	8bc18413          	addi	s0,gp,-1860 # 62fc1c34 <qcc743_device_table>
a000753c:	02900993          	li	s3,41
a0007540:	00449913          	slli	s2,s1,0x4
a0007544:	4124450b          	lrw	a0,s0,s2,0
a0007548:	85d2                	mv	a1,s4
a000754a:	ee3fc0ef          	jal	ra,a000442c <strcmp>
a000754e:	e919                	bnez	a0,a0007564 <qcc74x_device_get_by_name+0x3e>
a0007550:	01240533          	add	a0,s0,s2
a0007554:	40f2                	lw	ra,28(sp)
a0007556:	4462                	lw	s0,24(sp)
a0007558:	44d2                	lw	s1,20(sp)
a000755a:	4942                	lw	s2,16(sp)
a000755c:	49b2                	lw	s3,12(sp)
a000755e:	4a22                	lw	s4,8(sp)
a0007560:	6105                	addi	sp,sp,32
a0007562:	8082                	ret
a0007564:	0485                	addi	s1,s1,1
a0007566:	fd349de3          	bne	s1,s3,a0007540 <qcc74x_device_get_by_name+0x1a>
a000756a:	4501                	li	a0,0
a000756c:	b7e5                	j	a0007554 <qcc74x_device_get_by_name+0x2e>
	...

a0007580 <default_interrupt_handler>:
a0007580:	715d                	addi	sp,sp,-80
a0007582:	c216                	sw	t0,4(sp)
a0007584:	c41a                	sw	t1,8(sp)
a0007586:	341022f3          	csrr	t0,mepc
a000758a:	34202373          	csrr	t1,mcause
a000758e:	c09a                	sw	t1,64(sp)
a0007590:	c296                	sw	t0,68(sp)
a0007592:	340022f3          	csrr	t0,mscratch
a0007596:	c496                	sw	t0,72(sp)
a0007598:	c006                	sw	ra,0(sp)
a000759a:	c61e                	sw	t2,12(sp)
a000759c:	c82a                	sw	a0,16(sp)
a000759e:	ca2e                	sw	a1,20(sp)
a00075a0:	cc32                	sw	a2,24(sp)
a00075a2:	ce36                	sw	a3,28(sp)
a00075a4:	d03a                	sw	a4,32(sp)
a00075a6:	d23e                	sw	a5,36(sp)
a00075a8:	d442                	sw	a6,40(sp)
a00075aa:	d646                	sw	a7,44(sp)
a00075ac:	d872                	sw	t3,48(sp)
a00075ae:	da76                	sw	t4,52(sp)
a00075b0:	dc7a                	sw	t5,56(sp)
a00075b2:	de7e                	sw	t6,60(sp)
a00075b4:	30046073          	csrsi	mstatus,8
a00075b8:	711d                	addi	sp,sp,-96
a00075ba:	30002373          	csrr	t1,mstatus
a00075be:	ca9a                	sw	t1,84(sp)
a00075c0:	00d35393          	srli	t2,t1,0xd
a00075c4:	0033f393          	andi	t2,t2,3
a00075c8:	428d                	li	t0,3
a00075ca:	02539663          	bne	t2,t0,a00075f6 <.F_RegNotSave1>
a00075ce:	e002                	fsw	ft0,0(sp)
a00075d0:	e206                	fsw	ft1,4(sp)
a00075d2:	e40a                	fsw	ft2,8(sp)
a00075d4:	e60e                	fsw	ft3,12(sp)
a00075d6:	e812                	fsw	ft4,16(sp)
a00075d8:	ea16                	fsw	ft5,20(sp)
a00075da:	ec1a                	fsw	ft6,24(sp)
a00075dc:	ee1e                	fsw	ft7,28(sp)
a00075de:	f02a                	fsw	fa0,32(sp)
a00075e0:	f22e                	fsw	fa1,36(sp)
a00075e2:	f432                	fsw	fa2,40(sp)
a00075e4:	f636                	fsw	fa3,44(sp)
a00075e6:	f83a                	fsw	fa4,48(sp)
a00075e8:	fa3e                	fsw	fa5,52(sp)
a00075ea:	fc42                	fsw	fa6,56(sp)
a00075ec:	fe46                	fsw	fa7,60(sp)
a00075ee:	e0f2                	fsw	ft8,64(sp)
a00075f0:	e2f6                	fsw	ft9,68(sp)
a00075f2:	e4fa                	fsw	ft10,72(sp)
a00075f4:	e6fe                	fsw	ft11,76(sp)

a00075f6 <.F_RegNotSave1>:
a00075f6:	34202573          	csrr	a0,mcause
a00075fa:	3ff57313          	andi	t1,a0,1023
a00075fe:	00000397          	auipc	t2,0x0
a0007602:	5a238393          	addi	t2,t2,1442 # a0007ba0 <interrupt_entry>
a0007606:	9382                	jalr	t2
a0007608:	4356                	lw	t1,84(sp)
a000760a:	00d35393          	srli	t2,t1,0xd
a000760e:	0033f393          	andi	t2,t2,3
a0007612:	428d                	li	t0,3
a0007614:	02539663          	bne	t2,t0,a0007640 <.F_RegNotLoad>
a0007618:	6002                	flw	ft0,0(sp)
a000761a:	6092                	flw	ft1,4(sp)
a000761c:	6122                	flw	ft2,8(sp)
a000761e:	61b2                	flw	ft3,12(sp)
a0007620:	6242                	flw	ft4,16(sp)
a0007622:	62d2                	flw	ft5,20(sp)
a0007624:	6362                	flw	ft6,24(sp)
a0007626:	63f2                	flw	ft7,28(sp)
a0007628:	7502                	flw	fa0,32(sp)
a000762a:	7592                	flw	fa1,36(sp)
a000762c:	7622                	flw	fa2,40(sp)
a000762e:	76b2                	flw	fa3,44(sp)
a0007630:	7742                	flw	fa4,48(sp)
a0007632:	77d2                	flw	fa5,52(sp)
a0007634:	7862                	flw	fa6,56(sp)
a0007636:	78f2                	flw	fa7,60(sp)
a0007638:	6e06                	flw	ft8,64(sp)
a000763a:	6e96                	flw	ft9,68(sp)
a000763c:	6f26                	flw	ft10,72(sp)
a000763e:	6fb6                	flw	ft11,76(sp)

a0007640 <.F_RegNotLoad>:
a0007640:	6125                	addi	sp,sp,96
a0007642:	30047073          	csrci	mstatus,8
a0007646:	4296                	lw	t0,68(sp)
a0007648:	34129073          	csrw	mepc,t0
a000764c:	4286                	lw	t0,64(sp)
a000764e:	34229073          	csrw	mcause,t0
a0007652:	42a6                	lw	t0,72(sp)
a0007654:	34029073          	csrw	mscratch,t0
a0007658:	4082                	lw	ra,0(sp)
a000765a:	4292                	lw	t0,4(sp)
a000765c:	4322                	lw	t1,8(sp)
a000765e:	43b2                	lw	t2,12(sp)
a0007660:	4542                	lw	a0,16(sp)
a0007662:	45d2                	lw	a1,20(sp)
a0007664:	4662                	lw	a2,24(sp)
a0007666:	46f2                	lw	a3,28(sp)
a0007668:	5702                	lw	a4,32(sp)
a000766a:	5792                	lw	a5,36(sp)
a000766c:	5822                	lw	a6,40(sp)
a000766e:	58b2                	lw	a7,44(sp)
a0007670:	5e42                	lw	t3,48(sp)
a0007672:	5ed2                	lw	t4,52(sp)
a0007674:	5f62                	lw	t5,56(sp)
a0007676:	5ff2                	lw	t6,60(sp)
a0007678:	6161                	addi	sp,sp,80
a000767a:	8082                	ret
	...

a00076c0 <trap>:
a00076c0:	fe512e23          	sw	t0,-4(sp)
a00076c4:	342022f3          	csrr	t0,mcause
a00076c8:	0e02ca63          	bltz	t0,a00077bc <trap+0xfc>
a00076cc:	c2fbc297          	auipc	t0,0xc2fbc
a00076d0:	c8428293          	addi	t0,t0,-892 # 62fc3350 <g_irqvector>
a00076d4:	ef828293          	addi	t0,t0,-264
a00076d8:	0012a223          	sw	ra,4(t0)
a00076dc:	0022a423          	sw	sp,8(t0)
a00076e0:	0032a623          	sw	gp,12(t0)
a00076e4:	0042a823          	sw	tp,16(t0)
a00076e8:	0062ac23          	sw	t1,24(t0)
a00076ec:	0072ae23          	sw	t2,28(t0)
a00076f0:	0282a023          	sw	s0,32(t0)
a00076f4:	0292a223          	sw	s1,36(t0)
a00076f8:	02a2a423          	sw	a0,40(t0)
a00076fc:	02b2a623          	sw	a1,44(t0)
a0007700:	02c2a823          	sw	a2,48(t0)
a0007704:	02d2aa23          	sw	a3,52(t0)
a0007708:	02e2ac23          	sw	a4,56(t0)
a000770c:	02f2ae23          	sw	a5,60(t0)
a0007710:	0502a023          	sw	a6,64(t0)
a0007714:	0512a223          	sw	a7,68(t0)
a0007718:	0522a423          	sw	s2,72(t0)
a000771c:	0532a623          	sw	s3,76(t0)
a0007720:	0542a823          	sw	s4,80(t0)
a0007724:	0552aa23          	sw	s5,84(t0)
a0007728:	0562ac23          	sw	s6,88(t0)
a000772c:	0572ae23          	sw	s7,92(t0)
a0007730:	0782a023          	sw	s8,96(t0)
a0007734:	0792a223          	sw	s9,100(t0)
a0007738:	07a2a423          	sw	s10,104(t0)
a000773c:	07b2a623          	sw	s11,108(t0)
a0007740:	07c2a823          	sw	t3,112(t0)
a0007744:	07d2aa23          	sw	t4,116(t0)
a0007748:	07e2ac23          	sw	t5,120(t0)
a000774c:	07f2ae23          	sw	t6,124(t0)
a0007750:	34102573          	csrr	a0,mepc
a0007754:	00a2a023          	sw	a0,0(t0)
a0007758:	30002573          	csrr	a0,mstatus
a000775c:	08a2a023          	sw	a0,128(t0)
a0007760:	8516                	mv	a0,t0
a0007762:	ffc12283          	lw	t0,-4(sp)
a0007766:	812a                	mv	sp,a0
a0007768:	ca16                	sw	t0,20(sp)
a000776a:	396000ef          	jal	ra,a0007b00 <exception_entry>
a000776e:	428a                	lw	t0,128(sp)
a0007770:	30029073          	csrw	mstatus,t0
a0007774:	4282                	lw	t0,0(sp)
a0007776:	34129073          	csrw	mepc,t0
a000777a:	5ff6                	lw	t6,124(sp)
a000777c:	5f66                	lw	t5,120(sp)
a000777e:	5ed6                	lw	t4,116(sp)
a0007780:	5e46                	lw	t3,112(sp)
a0007782:	5db6                	lw	s11,108(sp)
a0007784:	5d26                	lw	s10,104(sp)
a0007786:	5c96                	lw	s9,100(sp)
a0007788:	5c06                	lw	s8,96(sp)
a000778a:	4bf6                	lw	s7,92(sp)
a000778c:	4b66                	lw	s6,88(sp)
a000778e:	4ad6                	lw	s5,84(sp)
a0007790:	4a46                	lw	s4,80(sp)
a0007792:	49b6                	lw	s3,76(sp)
a0007794:	4926                	lw	s2,72(sp)
a0007796:	4896                	lw	a7,68(sp)
a0007798:	4806                	lw	a6,64(sp)
a000779a:	57f2                	lw	a5,60(sp)
a000779c:	5762                	lw	a4,56(sp)
a000779e:	56d2                	lw	a3,52(sp)
a00077a0:	5642                	lw	a2,48(sp)
a00077a2:	55b2                	lw	a1,44(sp)
a00077a4:	5522                	lw	a0,40(sp)
a00077a6:	5492                	lw	s1,36(sp)
a00077a8:	5402                	lw	s0,32(sp)
a00077aa:	43f2                	lw	t2,28(sp)
a00077ac:	4362                	lw	t1,24(sp)
a00077ae:	42d2                	lw	t0,20(sp)
a00077b0:	4242                	lw	tp,16(sp)
a00077b2:	41b2                	lw	gp,12(sp)
a00077b4:	4092                	lw	ra,4(sp)
a00077b6:	4122                	lw	sp,8(sp)
a00077b8:	30200073          	mret
a00077bc:	ffc12283          	lw	t0,-4(sp)
a00077c0:	1141                	addi	sp,sp,-16
a00077c2:	c006                	sw	ra,0(sp)
a00077c4:	3b75                	jal	a0007580 <default_interrupt_handler>
a00077c6:	4082                	lw	ra,0(sp)
a00077c8:	0141                	addi	sp,sp,16
a00077ca:	30200073          	mret
	...

a00077fc <start_load>:
a00077fc:	62fc07b7          	lui	a5,0x62fc0
a0007800:	a000a737          	lui	a4,0xa000a
a0007804:	62fc26b7          	lui	a3,0x62fc2
a0007808:	40078793          	addi	a5,a5,1024 # 62fc0400 <arch_memcpy>
a000780c:	c3470713          	addi	a4,a4,-972 # a0009c34 <__psram_limit+0xf7c09c34>
a0007810:	b7868693          	addi	a3,a3,-1160 # 62fc1b78 <flash1_size>
a0007814:	08d7ed63          	bltu	a5,a3,a00078ae <start_load+0xb2>
a0007818:	62fc27b7          	lui	a5,0x62fc2
a000781c:	a000b737          	lui	a4,0xa000b
a0007820:	62fc26b7          	lui	a3,0x62fc2
a0007824:	b7878793          	addi	a5,a5,-1160 # 62fc1b78 <flash1_size>
a0007828:	3ac70713          	addi	a4,a4,940 # a000b3ac <__psram_limit+0xf7c0b3ac>
a000782c:	b7868693          	addi	a3,a3,-1160 # 62fc1b78 <flash1_size>
a0007830:	08d7e463          	bltu	a5,a3,a00078b8 <start_load+0xbc>
a0007834:	62fc27b7          	lui	a5,0x62fc2
a0007838:	a000b737          	lui	a4,0xa000b
a000783c:	b7878793          	addi	a5,a5,-1160 # 62fc1b78 <flash1_size>
a0007840:	3ac70713          	addi	a4,a4,940 # a000b3ac <__psram_limit+0xf7c0b3ac>
a0007844:	b5018693          	addi	a3,gp,-1200 # 62fc1ec8 <__StackLimit>
a0007848:	06d7ed63          	bltu	a5,a3,a00078c2 <start_load+0xc6>
a000784c:	a80007b7          	lui	a5,0xa8000
a0007850:	a000b737          	lui	a4,0xa000b
a0007854:	a80006b7          	lui	a3,0xa8000
a0007858:	00078793          	mv	a5,a5
a000785c:	6fc70713          	addi	a4,a4,1788 # a000b6fc <__psram_limit+0xf7c0b6fc>
a0007860:	00068693          	mv	a3,a3
a0007864:	06d7e463          	bltu	a5,a3,a00078cc <start_load+0xd0>
a0007868:	22fc07b7          	lui	a5,0x22fc0
a000786c:	a000a737          	lui	a4,0xa000a
a0007870:	22fc06b7          	lui	a3,0x22fc0
a0007874:	40078793          	addi	a5,a5,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a0007878:	c3470713          	addi	a4,a4,-972 # a0009c34 <__psram_limit+0xf7c09c34>
a000787c:	40068693          	addi	a3,a3,1024 # 22fc0400 <__nocache_noinit_ram_data_end__>
a0007880:	04d7eb63          	bltu	a5,a3,a00078d6 <start_load+0xda>
a0007884:	62fc37b7          	lui	a5,0x62fc3
a0007888:	62fc3737          	lui	a4,0x62fc3
a000788c:	ed078793          	addi	a5,a5,-304 # 62fc2ed0 <adc>
a0007890:	5d470713          	addi	a4,a4,1492 # 62fc35d4 <__HeapBase>
a0007894:	04e7e663          	bltu	a5,a4,a00078e0 <start_load+0xe4>
a0007898:	230307b7          	lui	a5,0x23030
a000789c:	23030737          	lui	a4,0x23030
a00078a0:	00078793          	mv	a5,a5
a00078a4:	00070713          	mv	a4,a4
a00078a8:	02e7ef63          	bltu	a5,a4,a00078e6 <start_load+0xea>
a00078ac:	8082                	ret
a00078ae:	5847460b          	lwia	a2,(a4),4,0
a00078b2:	5847d60b          	swia	a2,(a5),4,0
a00078b6:	bfb9                	j	a0007814 <start_load+0x18>
a00078b8:	5847460b          	lwia	a2,(a4),4,0
a00078bc:	5847d60b          	swia	a2,(a5),4,0
a00078c0:	bf85                	j	a0007830 <start_load+0x34>
a00078c2:	5847460b          	lwia	a2,(a4),4,0
a00078c6:	5847d60b          	swia	a2,(a5),4,0
a00078ca:	bfbd                	j	a0007848 <start_load+0x4c>
a00078cc:	5847460b          	lwia	a2,(a4),4,0
a00078d0:	5847d60b          	swia	a2,(a5),4,0
a00078d4:	bf41                	j	a0007864 <start_load+0x68>
a00078d6:	5847460b          	lwia	a2,(a4),4,0
a00078da:	5847d60b          	swia	a2,(a5),4,0
a00078de:	b74d                	j	a0007880 <start_load+0x84>
a00078e0:	5847d00b          	swia	zero,(a5),4,0
a00078e4:	bf45                	j	a0007894 <start_load+0x98>
a00078e6:	5847d00b          	swia	zero,(a5),4,0
a00078ea:	bf7d                	j	a00078a8 <start_load+0xac>

a00078ec <System_BOD_Init>:
a00078ec:	1101                	addi	sp,sp,-32
a00078ee:	010707b7          	lui	a5,0x1070
a00078f2:	0785                	addi	a5,a5,1
a00078f4:	0068                	addi	a0,sp,12
a00078f6:	ce06                	sw	ra,28(sp)
a00078f8:	c63e                	sw	a5,12(sp)
a00078fa:	299d                	jal	a0007d70 <HBN_Set_BOD_Cfg>
a00078fc:	40f2                	lw	ra,28(sp)
a00078fe:	6105                	addi	sp,sp,32
a0007900:	8082                	ret

a0007902 <SystemInit>:
a0007902:	2000e7b7          	lui	a5,0x2000e
a0007906:	02000713          	li	a4,32
a000790a:	50e7a023          	sw	a4,1280(a5) # 2000e500 <remain_wifi_ram+0x1ffee500>
a000790e:	5007a223          	sw	zero,1284(a5)
a0007912:	200017b7          	lui	a5,0x20001
a0007916:	9687a703          	lw	a4,-1688(a5) # 20000968 <remain_wifi_ram+0x1ffe0968>
a000791a:	1141                	addi	sp,sp,-16
a000791c:	8b05                	andi	a4,a4,1
a000791e:	cf39                	beqz	a4,a000797c <SystemInit+0x7a>
a0007920:	96c7a703          	lw	a4,-1684(a5)
a0007924:	8b05                	andi	a4,a4,1
a0007926:	cb39                	beqz	a4,a000797c <SystemInit+0x7a>
a0007928:	9707a703          	lw	a4,-1680(a5)
a000792c:	8b05                	andi	a4,a4,1
a000792e:	c739                	beqz	a4,a000797c <SystemInit+0x7a>
a0007930:	9747a703          	lw	a4,-1676(a5)
a0007934:	8b05                	andi	a4,a4,1
a0007936:	c339                	beqz	a4,a000797c <SystemInit+0x7a>
a0007938:	9787a703          	lw	a4,-1672(a5)
a000793c:	8b05                	andi	a4,a4,1
a000793e:	cf1d                	beqz	a4,a000797c <SystemInit+0x7a>
a0007940:	97c7a703          	lw	a4,-1668(a5)
a0007944:	8b05                	andi	a4,a4,1
a0007946:	cb1d                	beqz	a4,a000797c <SystemInit+0x7a>
a0007948:	9807a703          	lw	a4,-1664(a5)
a000794c:	8b05                	andi	a4,a4,1
a000794e:	c71d                	beqz	a4,a000797c <SystemInit+0x7a>
a0007950:	9847a703          	lw	a4,-1660(a5)
a0007954:	8b05                	andi	a4,a4,1
a0007956:	c31d                	beqz	a4,a000797c <SystemInit+0x7a>
a0007958:	9887a703          	lw	a4,-1656(a5)
a000795c:	8b05                	andi	a4,a4,1
a000795e:	cf19                	beqz	a4,a000797c <SystemInit+0x7a>
a0007960:	98c7a783          	lw	a5,-1652(a5)
a0007964:	8b85                	andi	a5,a5,1
a0007966:	cb99                	beqz	a5,a000797c <SystemInit+0x7a>
a0007968:	20001737          	lui	a4,0x20001
a000796c:	99072783          	lw	a5,-1648(a4) # 20000990 <remain_wifi_ram+0x1ffe0990>
a0007970:	8b85                	andi	a5,a5,1
a0007972:	c789                	beqz	a5,a000797c <SystemInit+0x7a>
a0007974:	99472783          	lw	a5,-1644(a4)
a0007978:	8b85                	andi	a5,a5,1
a000797a:	ef99                	bnez	a5,a0007998 <SystemInit+0x96>
a000797c:	200057b7          	lui	a5,0x20005
a0007980:	38078793          	addi	a5,a5,896 # 20005380 <remain_wifi_ram+0x1ffe5380>
a0007984:	5398                	lw	a4,32(a5)
a0007986:	66c1                	lui	a3,0x10
a0007988:	9b71                	andi	a4,a4,-4
a000798a:	d398                	sw	a4,32(a5)
a000798c:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a0007990:	d798                	sw	a4,40(a5)
a0007992:	5398                	lw	a4,32(a5)
a0007994:	8f55                	or	a4,a4,a3
a0007996:	d398                	sw	a4,32(a5)
a0007998:	200057b7          	lui	a5,0x20005
a000799c:	43b8                	lw	a4,64(a5)
a000799e:	000206b7          	lui	a3,0x20
a00079a2:	f0f77713          	andi	a4,a4,-241
a00079a6:	c3b8                	sw	a4,64(a5)
a00079a8:	577d                	li	a4,-1
a00079aa:	c7f8                	sw	a4,76(a5)
a00079ac:	43b8                	lw	a4,64(a5)
a00079ae:	8f55                	or	a4,a4,a3
a00079b0:	c3b8                	sw	a4,64(a5)
a00079b2:	2000b737          	lui	a4,0x2000b
a00079b6:	5b3c                	lw	a5,112(a4)
a00079b8:	600006b7          	lui	a3,0x60000
a00079bc:	8fd5                	or	a5,a5,a3
a00079be:	db3c                	sw	a5,112(a4)
a00079c0:	300027f3          	csrr	a5,mstatus
a00079c4:	6709                	lui	a4,0x2
a00079c6:	8fd9                	or	a5,a5,a4
a00079c8:	30079073          	csrw	mstatus,a5
a00079cc:	7c0027f3          	csrr	a5,mxstatus
a00079d0:	00408737          	lui	a4,0x408
a00079d4:	8fd9                	or	a5,a5,a4
a00079d6:	7c079073          	csrw	mxstatus,a5
a00079da:	e0800737          	lui	a4,0xe0800
a00079de:	435c                	lw	a5,4(a4)
a00079e0:	00074683          	lbu	a3,0(a4) # e0800000 <__psram_limit+0x38400000>
a00079e4:	e0800537          	lui	a0,0xe0800
a00079e8:	83d1                	srli	a5,a5,0x14
a00079ea:	8bf9                	andi	a5,a5,30
a00079ec:	ac0786f7          	insb	a3,a5,0
a00079f0:	00d70023          	sb	a3,0(a4)
a00079f4:	6785                	lui	a5,0x1
a00079f6:	4701                	li	a4,0
a00079f8:	05000593          	li	a1,80
a00079fc:	04e5160b          	addsl	a2,a0,a4,2
a0007a00:	00f606b3          	add	a3,a2,a5
a0007a04:	000680a3          	sb	zero,1(a3) # 60000001 <__RFTLV_HEAD1_H+0x19adb3bf>
a0007a08:	00f6500b          	srb	zero,a2,a5,0
a0007a0c:	00068123          	sb	zero,2(a3)
a0007a10:	0705                	addi	a4,a4,1
a0007a12:	feb715e3          	bne	a4,a1,a00079fc <SystemInit+0xfa>
a0007a16:	e0801737          	lui	a4,0xe0801
a0007a1a:	4689                	li	a3,2
a0007a1c:	00d70723          	sb	a3,14(a4) # e080100e <__psram_limit+0x3840100e>
a0007a20:	04d70723          	sb	a3,78(a4)
a0007a24:	0ff0000f          	fence
a0007a28:	0000100f          	fence.i
a0007a2c:	0020000b          	dcache.iall
a0007a30:	7c102773          	csrr	a4,mhcr
a0007a34:	03e78793          	addi	a5,a5,62 # 103e <HeapMinSize+0x3e>
a0007a38:	8fd9                	or	a5,a5,a4
a0007a3a:	7c179073          	csrw	mhcr,a5
a0007a3e:	0ff0000f          	fence
a0007a42:	0000100f          	fence.i
a0007a46:	0ff0000f          	fence
a0007a4a:	0000100f          	fence.i
a0007a4e:	0100000b          	icache.iall
a0007a52:	7c1027f3          	csrr	a5,mhcr
a0007a56:	0017e793          	ori	a5,a5,1
a0007a5a:	7c179073          	csrw	mhcr,a5
a0007a5e:	0ff0000f          	fence
a0007a62:	0000100f          	fence.i
a0007a66:	7e1027f3          	csrr	a5,mexstatus
a0007a6a:	fffd0737          	lui	a4,0xfffd0
a0007a6e:	177d                	addi	a4,a4,-1
a0007a70:	8ff9                	and	a5,a5,a4
a0007a72:	7e179073          	csrw	mexstatus,a5
a0007a76:	200007b7          	lui	a5,0x20000
a0007a7a:	577d                	li	a4,-1
a0007a7c:	66c1                	lui	a3,0x10
a0007a7e:	14e7aa23          	sw	a4,340(a5) # 20000154 <remain_wifi_ram+0x1ffe0154>
a0007a82:	fff68713          	addi	a4,a3,-1 # ffff <wifi_ram_max_size+0x7fff>
a0007a86:	14e7ac23          	sw	a4,344(a5)
a0007a8a:	00000713          	li	a4,0
a0007a8e:	c63a                	sw	a4,12(sp)
a0007a90:	60c7a783          	lw	a5,1548(a5)
a0007a94:	4732                	lw	a4,12(sp)
a0007a96:	eb09                	bnez	a4,a0007aa8 <SystemInit+0x1a6>
a0007a98:	ff07f713          	andi	a4,a5,-16
a0007a9c:	200007b7          	lui	a5,0x20000
a0007aa0:	60e7a623          	sw	a4,1548(a5) # 2000060c <remain_wifi_ram+0x1ffe060c>
a0007aa4:	0141                	addi	sp,sp,16
a0007aa6:	8082                	ret
a0007aa8:	4632                	lw	a2,12(sp)
a0007aaa:	6721                	lui	a4,0x8
a0007aac:	00e61663          	bne	a2,a4,a0007ab8 <SystemInit+0x1b6>
a0007ab0:	9bc1                	andi	a5,a5,-16
a0007ab2:	0037e713          	ori	a4,a5,3
a0007ab6:	b7dd                	j	a0007a9c <SystemInit+0x19a>
a0007ab8:	4632                	lw	a2,12(sp)
a0007aba:	ff07f713          	andi	a4,a5,-16
a0007abe:	fcd61fe3          	bne	a2,a3,a0007a9c <SystemInit+0x19a>
a0007ac2:	00f7e713          	ori	a4,a5,15
a0007ac6:	bfd9                	j	a0007a9c <SystemInit+0x19a>

a0007ac8 <System_Post_Init>:
a0007ac8:	1141                	addi	sp,sp,-16
a0007aca:	c606                	sw	ra,12(sp)
a0007acc:	3505                	jal	a00078ec <System_BOD_Init>
a0007ace:	0ff0000f          	fence
a0007ad2:	0010000b          	dcache.call
a0007ad6:	0ff0000f          	fence
a0007ada:	0ff0000f          	fence
a0007ade:	0000100f          	fence.i
a0007ae2:	0100000b          	icache.iall
a0007ae6:	0ff0000f          	fence
a0007aea:	0000100f          	fence.i
a0007aee:	c2fb9097          	auipc	ra,0xc2fb9
a0007af2:	074080e7          	jalr	116(ra) # 62fc0b62 <system_setup_xtal_config.isra.0>
a0007af6:	30046073          	csrsi	mstatus,8
a0007afa:	40b2                	lw	ra,12(sp)
a0007afc:	0141                	addi	sp,sp,16
a0007afe:	8082                	ret

a0007b00 <exception_entry>:
a0007b00:	a0009537          	lui	a0,0xa0009
a0007b04:	715d                	addi	sp,sp,-80
a0007b06:	42c50513          	addi	a0,a0,1068 # a000942c <__psram_limit+0xf7c0942c>
a0007b0a:	c686                	sw	ra,76(sp)
a0007b0c:	c4a2                	sw	s0,72(sp)
a0007b0e:	c2a6                	sw	s1,68(sp)
a0007b10:	c0ca                	sw	s2,64(sp)
a0007b12:	a4efe0ef          	jal	ra,a0005d60 <printf>
a0007b16:	34202473          	csrr	s0,mcause
a0007b1a:	a0009537          	lui	a0,0xa0009
a0007b1e:	85a2                	mv	a1,s0
a0007b20:	44050513          	addi	a0,a0,1088 # a0009440 <__psram_limit+0xf7c09440>
a0007b24:	a3cfe0ef          	jal	ra,a0005d60 <printf>
a0007b28:	341024f3          	csrr	s1,mepc
a0007b2c:	a0009537          	lui	a0,0xa0009
a0007b30:	85a6                	mv	a1,s1
a0007b32:	45050513          	addi	a0,a0,1104 # a0009450 <__psram_limit+0xf7c09450>
a0007b36:	a2afe0ef          	jal	ra,a0005d60 <printf>
a0007b3a:	343025f3          	csrr	a1,mtval
a0007b3e:	a0009537          	lui	a0,0xa0009
a0007b42:	45c50513          	addi	a0,a0,1116 # a000945c <__psram_limit+0xf7c0945c>
a0007b46:	a1afe0ef          	jal	ra,a0005d60 <printf>
a0007b4a:	a00095b7          	lui	a1,0xa0009
a0007b4e:	04000613          	li	a2,64
a0007b52:	47458593          	addi	a1,a1,1140 # a0009474 <__psram_limit+0xf7c09474>
a0007b56:	850a                	mv	a0,sp
a0007b58:	8f1fc0ef          	jal	ra,a0004448 <memcpy>
a0007b5c:	3ff47913          	andi	s2,s0,1023
a0007b60:	883d                	andi	s0,s0,15
a0007b62:	4481458b          	lrw	a1,sp,s0,2
a0007b66:	a0009537          	lui	a0,0xa0009
a0007b6a:	46c50513          	addi	a0,a0,1132 # a000946c <__psram_limit+0xf7c0946c>
a0007b6e:	9f2fe0ef          	jal	ra,a0005d60 <printf>
a0007b72:	47a1                	li	a5,8
a0007b74:	00f90d63          	beq	s2,a5,a0007b8e <exception_entry+0x8e>
a0007b78:	47ad                	li	a5,11
a0007b7a:	00f90a63          	beq	s2,a5,a0007b8e <exception_entry+0x8e>
a0007b7e:	62fc3437          	lui	s0,0x62fc3
a0007b82:	ed040413          	addi	s0,s0,-304 # 62fc2ed0 <adc>
a0007b86:	8122                	mv	sp,s0
a0007b88:	be2fe0ef          	jal	ra,a0005f6a <coredump_run>
a0007b8c:	bfed                	j	a0007b86 <exception_entry+0x86>
a0007b8e:	0491                	addi	s1,s1,4
a0007b90:	34149073          	csrw	mepc,s1
a0007b94:	40b6                	lw	ra,76(sp)
a0007b96:	4426                	lw	s0,72(sp)
a0007b98:	4496                	lw	s1,68(sp)
a0007b9a:	4906                	lw	s2,64(sp)
a0007b9c:	6161                	addi	sp,sp,80
a0007b9e:	8082                	ret

a0007ba0 <interrupt_entry>:
a0007ba0:	1141                	addi	sp,sp,-16
a0007ba2:	c602                	sw	zero,12(sp)
a0007ba4:	342027f3          	csrr	a5,mcause
a0007ba8:	c63e                	sw	a5,12(sp)
a0007baa:	4532                	lw	a0,12(sp)
a0007bac:	04f00793          	li	a5,79
a0007bb0:	3ff57513          	andi	a0,a0,1023
a0007bb4:	00a7ee63          	bltu	a5,a0,a0007bd0 <interrupt_entry+0x30>
a0007bb8:	62fc37b7          	lui	a5,0x62fc3
a0007bbc:	35078793          	addi	a5,a5,848 # 62fc3350 <g_irqvector>
a0007bc0:	46a7c70b          	lrw	a4,a5,a0,3
a0007bc4:	c711                	beqz	a4,a0007bd0 <interrupt_entry+0x30>
a0007bc6:	06a7978b          	addsl	a5,a5,a0,3
a0007bca:	43cc                	lw	a1,4(a5)
a0007bcc:	0141                	addi	sp,sp,16
a0007bce:	8702                	jr	a4
a0007bd0:	0141                	addi	sp,sp,16
a0007bd2:	8082                	ret

a0007bd4 <GLB_Set_ADC_CLK>:
a0007bd4:	200007b7          	lui	a5,0x20000
a0007bd8:	10078793          	addi	a5,a5,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a0007bdc:	4b98                	lw	a4,16(a5)
a0007bde:	059e                	slli	a1,a1,0x7
a0007be0:	eff77713          	andi	a4,a4,-257
a0007be4:	cb98                	sw	a4,16(a5)
a0007be6:	4b98                	lw	a4,16(a5)
a0007be8:	fc077713          	andi	a4,a4,-64
a0007bec:	8e59                	or	a2,a2,a4
a0007bee:	f7f67613          	andi	a2,a2,-129
a0007bf2:	8dd1                	or	a1,a1,a2
a0007bf4:	cb8c                	sw	a1,16(a5)
a0007bf6:	4b98                	lw	a4,16(a5)
a0007bf8:	eff77793          	andi	a5,a4,-257
a0007bfc:	c119                	beqz	a0,a0007c02 <GLB_Set_ADC_CLK+0x2e>
a0007bfe:	10076793          	ori	a5,a4,256
a0007c02:	20000737          	lui	a4,0x20000
a0007c06:	10f72823          	sw	a5,272(a4) # 20000110 <remain_wifi_ram+0x1ffe0110>
a0007c0a:	4501                	li	a0,0
a0007c0c:	8082                	ret

a0007c0e <GLB_Set_IR_CLK>:
a0007c0e:	20000737          	lui	a4,0x20000
a0007c12:	10070713          	addi	a4,a4,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a0007c16:	4334                	lw	a3,64(a4)
a0007c18:	ff8007b7          	lui	a5,0xff800
a0007c1c:	17fd                	addi	a5,a5,-1
a0007c1e:	8efd                	and	a3,a3,a5
a0007c20:	c334                	sw	a3,64(a4)
a0007c22:	4334                	lw	a3,64(a4)
a0007c24:	ffc105b7          	lui	a1,0xffc10
a0007c28:	15fd                	addi	a1,a1,-1
a0007c2a:	8eed                	and	a3,a3,a1
a0007c2c:	0642                	slli	a2,a2,0x10
a0007c2e:	8e55                	or	a2,a2,a3
a0007c30:	c330                	sw	a2,64(a4)
a0007c32:	4338                	lw	a4,64(a4)
a0007c34:	8ff9                	and	a5,a5,a4
a0007c36:	c501                	beqz	a0,a0007c3e <GLB_Set_IR_CLK+0x30>
a0007c38:	008007b7          	lui	a5,0x800
a0007c3c:	8fd9                	or	a5,a5,a4
a0007c3e:	20000737          	lui	a4,0x20000
a0007c42:	14f72023          	sw	a5,320(a4) # 20000140 <remain_wifi_ram+0x1ffe0140>
a0007c46:	4501                	li	a0,0
a0007c48:	8082                	ret

a0007c4a <GLB_Set_I2C_CLK>:
a0007c4a:	20000737          	lui	a4,0x20000
a0007c4e:	18070713          	addi	a4,a4,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007c52:	4314                	lw	a3,0(a4)
a0007c54:	ff0007b7          	lui	a5,0xff000
a0007c58:	17fd                	addi	a5,a5,-1
a0007c5a:	8efd                	and	a3,a3,a5
a0007c5c:	c314                	sw	a3,0(a4)
a0007c5e:	4314                	lw	a3,0(a4)
a0007c60:	fe000837          	lui	a6,0xfe000
a0007c64:	187d                	addi	a6,a6,-1
a0007c66:	0106f6b3          	and	a3,a3,a6
a0007c6a:	05e6                	slli	a1,a1,0x19
a0007c6c:	8dd5                	or	a1,a1,a3
a0007c6e:	ff0106b7          	lui	a3,0xff010
a0007c72:	16fd                	addi	a3,a3,-1
a0007c74:	8df5                	and	a1,a1,a3
a0007c76:	0642                	slli	a2,a2,0x10
a0007c78:	8dd1                	or	a1,a1,a2
a0007c7a:	c30c                	sw	a1,0(a4)
a0007c7c:	4318                	lw	a4,0(a4)
a0007c7e:	8ff9                	and	a5,a5,a4
a0007c80:	c501                	beqz	a0,a0007c88 <GLB_Set_I2C_CLK+0x3e>
a0007c82:	010007b7          	lui	a5,0x1000
a0007c86:	8fd9                	or	a5,a5,a4
a0007c88:	20000737          	lui	a4,0x20000
a0007c8c:	18f72023          	sw	a5,384(a4) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007c90:	4501                	li	a0,0
a0007c92:	8082                	ret

a0007c94 <GLB_Set_SPI_CLK>:
a0007c94:	200007b7          	lui	a5,0x20000
a0007c98:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007c9c:	5b94                	lw	a3,48(a5)
a0007c9e:	05a6                	slli	a1,a1,0x9
a0007ca0:	eff6f693          	andi	a3,a3,-257
a0007ca4:	db94                	sw	a3,48(a5)
a0007ca6:	5b98                	lw	a4,48(a5)
a0007ca8:	de077713          	andi	a4,a4,-544
a0007cac:	8f51                	or	a4,a4,a2
a0007cae:	8dd9                	or	a1,a1,a4
a0007cb0:	db8c                	sw	a1,48(a5)
a0007cb2:	5b98                	lw	a4,48(a5)
a0007cb4:	eff77793          	andi	a5,a4,-257
a0007cb8:	c119                	beqz	a0,a0007cbe <GLB_Set_SPI_CLK+0x2a>
a0007cba:	10076793          	ori	a5,a4,256
a0007cbe:	20000737          	lui	a4,0x20000
a0007cc2:	1af72823          	sw	a5,432(a4) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a0007cc6:	4501                	li	a0,0
a0007cc8:	8082                	ret

a0007cca <GLB_Set_DBI_CLK>:
a0007cca:	200007b7          	lui	a5,0x20000
a0007cce:	18078793          	addi	a5,a5,384 # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007cd2:	5bb4                	lw	a3,112(a5)
a0007cd4:	05a6                	slli	a1,a1,0x9
a0007cd6:	eff6f693          	andi	a3,a3,-257
a0007cda:	dbb4                	sw	a3,112(a5)
a0007cdc:	5bb8                	lw	a4,112(a5)
a0007cde:	de077713          	andi	a4,a4,-544
a0007ce2:	8f51                	or	a4,a4,a2
a0007ce4:	8dd9                	or	a1,a1,a4
a0007ce6:	dbac                	sw	a1,112(a5)
a0007ce8:	5bb8                	lw	a4,112(a5)
a0007cea:	eff77793          	andi	a5,a4,-257
a0007cee:	c119                	beqz	a0,a0007cf4 <GLB_Set_DBI_CLK+0x2a>
a0007cf0:	10076793          	ori	a5,a4,256
a0007cf4:	20000737          	lui	a4,0x20000
a0007cf8:	1ef72823          	sw	a5,496(a4) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a0007cfc:	4501                	li	a0,0
a0007cfe:	8082                	ret

a0007d00 <GLB_Set_CAM_CLK>:
a0007d00:	20000737          	lui	a4,0x20000
a0007d04:	40070713          	addi	a4,a4,1024 # 20000400 <remain_wifi_ram+0x1ffe0400>
a0007d08:	5314                	lw	a3,32(a4)
a0007d0a:	f80007b7          	lui	a5,0xf8000
a0007d0e:	17fd                	addi	a5,a5,-1
a0007d10:	8efd                	and	a3,a3,a5
a0007d12:	d314                	sw	a3,32(a4)
a0007d14:	5314                	lw	a3,32(a4)
a0007d16:	d0000837          	lui	a6,0xd0000
a0007d1a:	187d                	addi	a6,a6,-1
a0007d1c:	0106f6b3          	and	a3,a3,a6
a0007d20:	05f2                	slli	a1,a1,0x1c
a0007d22:	8dd5                	or	a1,a1,a3
a0007d24:	400006b7          	lui	a3,0x40000
a0007d28:	16fd                	addi	a3,a3,-1
a0007d2a:	8df5                	and	a1,a1,a3
a0007d2c:	067a                	slli	a2,a2,0x1e
a0007d2e:	8dd1                	or	a1,a1,a2
a0007d30:	d30c                	sw	a1,32(a4)
a0007d32:	5318                	lw	a4,32(a4)
a0007d34:	8ff9                	and	a5,a5,a4
a0007d36:	c501                	beqz	a0,a0007d3e <GLB_Set_CAM_CLK+0x3e>
a0007d38:	080007b7          	lui	a5,0x8000
a0007d3c:	8fd9                	or	a5,a5,a4
a0007d3e:	20000737          	lui	a4,0x20000
a0007d42:	42f72023          	sw	a5,1056(a4) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0007d46:	4501                	li	a0,0
a0007d48:	8082                	ret

a0007d4a <HBN_Enable_BOD_IRQ>:
a0007d4a:	2000f737          	lui	a4,0x2000f
a0007d4e:	4b5c                	lw	a5,20(a4)
a0007d50:	000406b7          	lui	a3,0x40
a0007d54:	4501                	li	a0,0
a0007d56:	8fd5                	or	a5,a5,a3
a0007d58:	cb5c                	sw	a5,20(a4)
a0007d5a:	8082                	ret

a0007d5c <HBN_Disable_BOD_IRQ>:
a0007d5c:	2000f6b7          	lui	a3,0x2000f
a0007d60:	4adc                	lw	a5,20(a3)
a0007d62:	fffc0737          	lui	a4,0xfffc0
a0007d66:	177d                	addi	a4,a4,-1
a0007d68:	8ff9                	and	a5,a5,a4
a0007d6a:	cadc                	sw	a5,20(a3)
a0007d6c:	4501                	li	a0,0
a0007d6e:	8082                	ret

a0007d70 <HBN_Set_BOD_Cfg>:
a0007d70:	1141                	addi	sp,sp,-16
a0007d72:	c422                	sw	s0,8(sp)
a0007d74:	c606                	sw	ra,12(sp)
a0007d76:	00154783          	lbu	a5,1(a0)
a0007d7a:	842a                	mv	s0,a0
a0007d7c:	c3a9                	beqz	a5,a0007dbe <HBN_Set_BOD_Cfg+0x4e>
a0007d7e:	37f1                	jal	a0007d4a <HBN_Enable_BOD_IRQ>
a0007d80:	2000f7b7          	lui	a5,0x2000f
a0007d84:	57dc                	lw	a5,44(a5)
a0007d86:	00344683          	lbu	a3,3(s0)
a0007d8a:	ff17f713          	andi	a4,a5,-15
a0007d8e:	00244783          	lbu	a5,2(s0)
a0007d92:	0786                	slli	a5,a5,0x1
a0007d94:	8fd9                	or	a5,a5,a4
a0007d96:	ffe7f713          	andi	a4,a5,-2
a0007d9a:	c299                	beqz	a3,a0007da0 <HBN_Set_BOD_Cfg+0x30>
a0007d9c:	0017e713          	ori	a4,a5,1
a0007da0:	00044683          	lbu	a3,0(s0)
a0007da4:	fef77793          	andi	a5,a4,-17
a0007da8:	c299                	beqz	a3,a0007dae <HBN_Set_BOD_Cfg+0x3e>
a0007daa:	01076793          	ori	a5,a4,16
a0007dae:	40b2                	lw	ra,12(sp)
a0007db0:	4422                	lw	s0,8(sp)
a0007db2:	2000f737          	lui	a4,0x2000f
a0007db6:	d75c                	sw	a5,44(a4)
a0007db8:	4501                	li	a0,0
a0007dba:	0141                	addi	sp,sp,16
a0007dbc:	8082                	ret
a0007dbe:	3f79                	jal	a0007d5c <HBN_Disable_BOD_IRQ>
a0007dc0:	b7c1                	j	a0007d80 <HBN_Set_BOD_Cfg+0x10>

a0007dc2 <Clock_DBI_Clk_Mux_Output>:
a0007dc2:	e919                	bnez	a0,a0007dd8 <Clock_DBI_Clk_Mux_Output+0x16>
a0007dc4:	200007b7          	lui	a5,0x20000
a0007dc8:	2547a503          	lw	a0,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a0007dcc:	2ca5350b          	extu	a0,a0,11,10
a0007dd0:	c2fba317          	auipc	t1,0xc2fba
a0007dd4:	b9430067          	jr	-1132(t1) # 62fc1964 <Clock_160M_Clk_Mux_Output>
a0007dd8:	4515                	li	a0,5
a0007dda:	c2fba317          	auipc	t1,0xc2fba
a0007dde:	c8c30067          	jr	-884(t1) # 62fc1a66 <Clock_System_Clock_Get>

a0007de2 <Clock_Get_PSRAMB_Clk>:
a0007de2:	1141                	addi	sp,sp,-16
a0007de4:	200007b7          	lui	a5,0x20000
a0007de8:	c422                	sw	s0,8(sp)
a0007dea:	6207a403          	lw	s0,1568(a5) # 20000620 <remain_wifi_ram+0x1ffe0620>
a0007dee:	6207a783          	lw	a5,1568(a5)
a0007df2:	c606                	sw	ra,12(sp)
a0007df4:	8079                	srli	s0,s0,0x1e
a0007df6:	71c7b78b          	extu	a5,a5,28,28
a0007dfa:	1312d537          	lui	a0,0x1312d
a0007dfe:	c791                	beqz	a5,a0007e0a <Clock_Get_PSRAMB_Clk+0x28>
a0007e00:	4501                	li	a0,0
a0007e02:	c2fba097          	auipc	ra,0xc2fba
a0007e06:	9fa080e7          	jalr	-1542(ra) # 62fc17fc <Clock_Get_AUPLL_Output>
a0007e0a:	0405                	addi	s0,s0,1
a0007e0c:	02855533          	divu	a0,a0,s0
a0007e10:	40b2                	lw	ra,12(sp)
a0007e12:	4422                	lw	s0,8(sp)
a0007e14:	0141                	addi	sp,sp,16
a0007e16:	8082                	ret

a0007e18 <Clock_Get_ISP_Clk>:
a0007e18:	200007b7          	lui	a5,0x20000
a0007e1c:	2547a783          	lw	a5,596(a5) # 20000254 <remain_wifi_ram+0x1ffe0254>
a0007e20:	8b8d                	andi	a5,a5,3
a0007e22:	cb91                	beqz	a5,a0007e36 <Clock_Get_ISP_Clk+0x1e>
a0007e24:	4705                	li	a4,1
a0007e26:	4515                	li	a0,5
a0007e28:	00e78363          	beq	a5,a4,a0007e2e <Clock_Get_ISP_Clk+0x16>
a0007e2c:	4519                	li	a0,6
a0007e2e:	c2fba317          	auipc	t1,0xc2fba
a0007e32:	9ce30067          	jr	-1586(t1) # 62fc17fc <Clock_Get_AUPLL_Output>
a0007e36:	04c4b537          	lui	a0,0x4c4b
a0007e3a:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a0007e3e:	8082                	ret

a0007e40 <Clock_Audio_ADC_Clock_Get>:
a0007e40:	1141                	addi	sp,sp,-16
a0007e42:	c606                	sw	ra,12(sp)
a0007e44:	c2fba097          	auipc	ra,0xc2fba
a0007e48:	afe080e7          	jalr	-1282(ra) # 62fc1942 <Clock_Get_Audio_PLL_Output>
a0007e4c:	200007b7          	lui	a5,0x20000
a0007e50:	3447a783          	lw	a5,836(a5) # 20000344 <remain_wifi_ram+0x1ffe0344>
a0007e54:	40b2                	lw	ra,12(sp)
a0007e56:	5d07b78b          	extu	a5,a5,23,16
a0007e5a:	0785                	addi	a5,a5,1
a0007e5c:	02f55533          	divu	a0,a0,a5
a0007e60:	0141                	addi	sp,sp,16
a0007e62:	8082                	ret

a0007e64 <Clock_Peripheral_Clock_Get>:
a0007e64:	1141                	addi	sp,sp,-16
a0007e66:	c606                	sw	ra,12(sp)
a0007e68:	c422                	sw	s0,8(sp)
a0007e6a:	4731                	li	a4,12
a0007e6c:	22e50d63          	beq	a0,a4,a00080a6 <Clock_Peripheral_Clock_Get+0x242>
a0007e70:	87aa                	mv	a5,a0
a0007e72:	04a76c63          	bltu	a4,a0,a0007eca <Clock_Peripheral_Clock_Get+0x66>
a0007e76:	471d                	li	a4,7
a0007e78:	18e50863          	beq	a0,a4,a0008008 <Clock_Peripheral_Clock_Get+0x1a4>
a0007e7c:	02a76a63          	bltu	a4,a0,a0007eb0 <Clock_Peripheral_Clock_Get+0x4c>
a0007e80:	4715                	li	a4,5
a0007e82:	14e50163          	beq	a0,a4,a0007fc4 <Clock_Peripheral_Clock_Get+0x160>
a0007e86:	00a76a63          	bltu	a4,a0,a0007e9a <Clock_Peripheral_Clock_Get+0x36>
a0007e8a:	4709                	li	a4,2
a0007e8c:	0ca77b63          	bgeu	a4,a0,a0007f62 <Clock_Peripheral_Clock_Get+0xfe>
a0007e90:	470d                	li	a4,3
a0007e92:	10e50e63          	beq	a0,a4,a0007fae <Clock_Peripheral_Clock_Get+0x14a>
a0007e96:	4501                	li	a0,0
a0007e98:	a02d                	j	a0007ec2 <Clock_Peripheral_Clock_Get+0x5e>
a0007e9a:	4719                	li	a4,6
a0007e9c:	fee51de3          	bne	a0,a4,a0007e96 <Clock_Peripheral_Clock_Get+0x32>
a0007ea0:	4422                	lw	s0,8(sp)
a0007ea2:	40b2                	lw	ra,12(sp)
a0007ea4:	450d                	li	a0,3
a0007ea6:	0141                	addi	sp,sp,16
a0007ea8:	c2fba317          	auipc	t1,0xc2fba
a0007eac:	bbe30067          	jr	-1090(t1) # 62fc1a66 <Clock_System_Clock_Get>
a0007eb0:	4729                	li	a4,10
a0007eb2:	14e50763          	beq	a0,a4,a0008000 <Clock_Peripheral_Clock_Get+0x19c>
a0007eb6:	46ad                	li	a3,11
a0007eb8:	14d50c63          	beq	a0,a3,a0008010 <Clock_Peripheral_Clock_Get+0x1ac>
a0007ebc:	4501                	li	a0,0
a0007ebe:	10e79d63          	bne	a5,a4,a0007fd8 <Clock_Peripheral_Clock_Get+0x174>
a0007ec2:	40b2                	lw	ra,12(sp)
a0007ec4:	4422                	lw	s0,8(sp)
a0007ec6:	0141                	addi	sp,sp,16
a0007ec8:	8082                	ret
a0007eca:	4745                	li	a4,17
a0007ecc:	26e50763          	beq	a0,a4,a000813a <Clock_Peripheral_Clock_Get+0x2d6>
a0007ed0:	04a76b63          	bltu	a4,a0,a0007f26 <Clock_Peripheral_Clock_Get+0xc2>
a0007ed4:	473d                	li	a4,15
a0007ed6:	1ee50f63          	beq	a0,a4,a00080d4 <Clock_Peripheral_Clock_Get+0x270>
a0007eda:	00a76c63          	bltu	a4,a0,a0007ef2 <Clock_Peripheral_Clock_Get+0x8e>
a0007ede:	4735                	li	a4,13
a0007ee0:	1ce50e63          	beq	a0,a4,a00080bc <Clock_Peripheral_Clock_Get+0x258>
a0007ee4:	4739                	li	a4,14
a0007ee6:	fae518e3          	bne	a0,a4,a0007e96 <Clock_Peripheral_Clock_Get+0x32>
a0007eea:	4422                	lw	s0,8(sp)
a0007eec:	40b2                	lw	ra,12(sp)
a0007eee:	0141                	addi	sp,sp,16
a0007ef0:	bf81                	j	a0007e40 <Clock_Audio_ADC_Clock_Get>
a0007ef2:	4741                	li	a4,16
a0007ef4:	fae511e3          	bne	a0,a4,a0007e96 <Clock_Peripheral_Clock_Get+0x32>
a0007ef8:	200007b7          	lui	a5,0x20000
a0007efc:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a0007f00:	75c7b78b          	extu	a5,a5,29,28
a0007f04:	22078663          	beqz	a5,a0008130 <Clock_Peripheral_Clock_Get+0x2cc>
a0007f08:	4705                	li	a4,1
a0007f0a:	20e79e63          	bne	a5,a4,a0008126 <Clock_Peripheral_Clock_Get+0x2c2>
a0007f0e:	4515                	li	a0,5
a0007f10:	c2fba097          	auipc	ra,0xc2fba
a0007f14:	b56080e7          	jalr	-1194(ra) # 62fc1a66 <Clock_System_Clock_Get>
a0007f18:	200007b7          	lui	a5,0x20000
a0007f1c:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
a0007f20:	5907b78b          	extu	a5,a5,22,16
a0007f24:	a8a5                	j	a0007f9c <Clock_Peripheral_Clock_Get+0x138>
a0007f26:	474d                	li	a4,19
a0007f28:	24e50e63          	beq	a0,a4,a0008184 <Clock_Peripheral_Clock_Get+0x320>
a0007f2c:	4751                	li	a4,20
a0007f2e:	6521                	lui	a0,0x8
a0007f30:	f8e789e3          	beq	a5,a4,a0007ec2 <Clock_Peripheral_Clock_Get+0x5e>
a0007f34:	4749                	li	a4,18
a0007f36:	f6e790e3          	bne	a5,a4,a0007e96 <Clock_Peripheral_Clock_Get+0x32>
a0007f3a:	200007b7          	lui	a5,0x20000
a0007f3e:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a0007f42:	30c7b78b          	extu	a5,a5,12,12
a0007f46:	22078a63          	beqz	a5,a000817a <Clock_Peripheral_Clock_Get+0x316>
a0007f4a:	4515                	li	a0,5
a0007f4c:	c2fba097          	auipc	ra,0xc2fba
a0007f50:	8b0080e7          	jalr	-1872(ra) # 62fc17fc <Clock_Get_AUPLL_Output>
a0007f54:	200007b7          	lui	a5,0x20000
a0007f58:	4307a783          	lw	a5,1072(a5) # 20000430 <remain_wifi_ram+0x1ffe0430>
a0007f5c:	2c97b78b          	extu	a5,a5,11,9
a0007f60:	a835                	j	a0007f9c <Clock_Peripheral_Clock_Get+0x138>
a0007f62:	200006b7          	lui	a3,0x20000
a0007f66:	1506a703          	lw	a4,336(a3) # 20000150 <remain_wifi_ram+0x1ffe0150>
a0007f6a:	450d                	li	a0,3
a0007f6c:	01575793          	srli	a5,a4,0x15
a0007f70:	8b89                	andi	a5,a5,2
a0007f72:	1c77370b          	extu	a4,a4,7,7
a0007f76:	8fd9                	or	a5,a5,a4
a0007f78:	c795                	beqz	a5,a0007fa4 <Clock_Peripheral_Clock_Get+0x140>
a0007f7a:	4705                	li	a4,1
a0007f7c:	4515                	li	a0,5
a0007f7e:	02e79363          	bne	a5,a4,a0007fa4 <Clock_Peripheral_Clock_Get+0x140>
a0007f82:	2546a503          	lw	a0,596(a3)
a0007f86:	2ca5350b          	extu	a0,a0,11,10
a0007f8a:	c2fba097          	auipc	ra,0xc2fba
a0007f8e:	9da080e7          	jalr	-1574(ra) # 62fc1964 <Clock_160M_Clk_Mux_Output>
a0007f92:	200007b7          	lui	a5,0x20000
a0007f96:	1507a783          	lw	a5,336(a5) # 20000150 <remain_wifi_ram+0x1ffe0150>
a0007f9a:	8b9d                	andi	a5,a5,7
a0007f9c:	0785                	addi	a5,a5,1
a0007f9e:	02f55533          	divu	a0,a0,a5
a0007fa2:	b705                	j	a0007ec2 <Clock_Peripheral_Clock_Get+0x5e>
a0007fa4:	c2fba097          	auipc	ra,0xc2fba
a0007fa8:	ac2080e7          	jalr	-1342(ra) # 62fc1a66 <Clock_System_Clock_Get>
a0007fac:	b7dd                	j	a0007f92 <Clock_Peripheral_Clock_Get+0x12e>
a0007fae:	20000437          	lui	s0,0x20000
a0007fb2:	1b042503          	lw	a0,432(s0) # 200001b0 <remain_wifi_ram+0x1ffe01b0>
a0007fb6:	2495350b          	extu	a0,a0,9,9
a0007fba:	3521                	jal	a0007dc2 <Clock_DBI_Clk_Mux_Output>
a0007fbc:	1b042783          	lw	a5,432(s0)
a0007fc0:	8bfd                	andi	a5,a5,31
a0007fc2:	bfe9                	j	a0007f9c <Clock_Peripheral_Clock_Get+0x138>
a0007fc4:	20000437          	lui	s0,0x20000
a0007fc8:	1f042503          	lw	a0,496(s0) # 200001f0 <remain_wifi_ram+0x1ffe01f0>
a0007fcc:	2495350b          	extu	a0,a0,9,9
a0007fd0:	3bcd                	jal	a0007dc2 <Clock_DBI_Clk_Mux_Output>
a0007fd2:	1f042783          	lw	a5,496(s0)
a0007fd6:	b7ed                	j	a0007fc0 <Clock_Peripheral_Clock_Get+0x15c>
a0007fd8:	200007b7          	lui	a5,0x20000
a0007fdc:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007fe0:	450d                	li	a0,3
a0007fe2:	6597b78b          	extu	a5,a5,25,25
a0007fe6:	c391                	beqz	a5,a0007fea <Clock_Peripheral_Clock_Get+0x186>
a0007fe8:	4515                	li	a0,5
a0007fea:	c2fba097          	auipc	ra,0xc2fba
a0007fee:	a7c080e7          	jalr	-1412(ra) # 62fc1a66 <Clock_System_Clock_Get>
a0007ff2:	200007b7          	lui	a5,0x20000
a0007ff6:	1807a783          	lw	a5,384(a5) # 20000180 <remain_wifi_ram+0x1ffe0180>
a0007ffa:	5d07b78b          	extu	a5,a5,23,16
a0007ffe:	bf79                	j	a0007f9c <Clock_Peripheral_Clock_Get+0x138>
a0008000:	4422                	lw	s0,8(sp)
a0008002:	40b2                	lw	ra,12(sp)
a0008004:	0141                	addi	sp,sp,16
a0008006:	bbf1                	j	a0007de2 <Clock_Get_PSRAMB_Clk>
a0008008:	4422                	lw	s0,8(sp)
a000800a:	40b2                	lw	ra,12(sp)
a000800c:	0141                	addi	sp,sp,16
a000800e:	b529                	j	a0007e18 <Clock_Get_ISP_Clk>
a0008010:	20000737          	lui	a4,0x20000
a0008014:	17072783          	lw	a5,368(a4) # 20000170 <remain_wifi_ram+0x1ffe0170>
a0008018:	34c7b78b          	extu	a5,a5,13,12
a000801c:	ef8d                	bnez	a5,a0008056 <Clock_Peripheral_Clock_Get+0x1f2>
a000801e:	17072783          	lw	a5,368(a4)
a0008022:	3ce7b78b          	extu	a5,a5,15,14
a0008026:	c3ad                	beqz	a5,a0008088 <Clock_Peripheral_Clock_Get+0x224>
a0008028:	4705                	li	a4,1
a000802a:	00e79d63          	bne	a5,a4,a0008044 <Clock_Peripheral_Clock_Get+0x1e0>
a000802e:	c2fba097          	auipc	ra,0xc2fba
a0008032:	964080e7          	jalr	-1692(ra) # 62fc1992 <Clock_Xtal_Output>
a0008036:	200007b7          	lui	a5,0x20000
a000803a:	1707a783          	lw	a5,368(a5) # 20000170 <remain_wifi_ram+0x1ffe0170>
a000803e:	2887b78b          	extu	a5,a5,10,8
a0008042:	bfa9                	j	a0007f9c <Clock_Peripheral_Clock_Get+0x138>
a0008044:	4709                	li	a4,2
a0008046:	04e78163          	beq	a5,a4,a0008088 <Clock_Peripheral_Clock_Get+0x224>
a000804a:	4515                	li	a0,5
a000804c:	c2fb9097          	auipc	ra,0xc2fb9
a0008050:	7b0080e7          	jalr	1968(ra) # 62fc17fc <Clock_Get_AUPLL_Output>
a0008054:	b7cd                	j	a0008036 <Clock_Peripheral_Clock_Get+0x1d2>
a0008056:	4685                	li	a3,1
a0008058:	00d79f63          	bne	a5,a3,a0008076 <Clock_Peripheral_Clock_Get+0x212>
a000805c:	25472703          	lw	a4,596(a4)
a0008060:	2487370b          	extu	a4,a4,9,8
a0008064:	c71d                	beqz	a4,a0008092 <Clock_Peripheral_Clock_Get+0x22e>
a0008066:	fef702e3          	beq	a4,a5,a000804a <Clock_Peripheral_Clock_Get+0x1e6>
a000806a:	4789                	li	a5,2
a000806c:	4501                	li	a0,0
a000806e:	fcf714e3          	bne	a4,a5,a0008036 <Clock_Peripheral_Clock_Get+0x1d2>
a0008072:	4519                	li	a0,6
a0008074:	bfe1                	j	a000804c <Clock_Peripheral_Clock_Get+0x1e8>
a0008076:	4709                	li	a4,2
a0008078:	02e79263          	bne	a5,a4,a000809c <Clock_Peripheral_Clock_Get+0x238>
a000807c:	450d                	li	a0,3
a000807e:	c2fba097          	auipc	ra,0xc2fba
a0008082:	9e8080e7          	jalr	-1560(ra) # 62fc1a66 <Clock_System_Clock_Get>
a0008086:	bf45                	j	a0008036 <Clock_Peripheral_Clock_Get+0x1d2>
a0008088:	07271537          	lui	a0,0x7271
a000808c:	e0050513          	addi	a0,a0,-512 # 7270e00 <remain_wifi_ram+0x7250e00>
a0008090:	b75d                	j	a0008036 <Clock_Peripheral_Clock_Get+0x1d2>
a0008092:	04c4b537          	lui	a0,0x4c4b
a0008096:	40050513          	addi	a0,a0,1024 # 4c4b400 <remain_wifi_ram+0x4c2b400>
a000809a:	bf71                	j	a0008036 <Clock_Peripheral_Clock_Get+0x1d2>
a000809c:	05b8e537          	lui	a0,0x5b8e
a00080a0:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a00080a4:	bf49                	j	a0008036 <Clock_Peripheral_Clock_Get+0x1d2>
a00080a6:	c2fba097          	auipc	ra,0xc2fba
a00080aa:	89c080e7          	jalr	-1892(ra) # 62fc1942 <Clock_Get_Audio_PLL_Output>
a00080ae:	200007b7          	lui	a5,0x20000
a00080b2:	1907a783          	lw	a5,400(a5) # 20000190 <remain_wifi_ram+0x1ffe0190>
a00080b6:	03f7f793          	andi	a5,a5,63
a00080ba:	b5cd                	j	a0007f9c <Clock_Peripheral_Clock_Get+0x138>
a00080bc:	4515                	li	a0,5
a00080be:	c2fba097          	auipc	ra,0xc2fba
a00080c2:	9a8080e7          	jalr	-1624(ra) # 62fc1a66 <Clock_System_Clock_Get>
a00080c6:	200007b7          	lui	a5,0x20000
a00080ca:	1407a783          	lw	a5,320(a5) # 20000140 <remain_wifi_ram+0x1ffe0140>
a00080ce:	5507b78b          	extu	a5,a5,21,16
a00080d2:	b5e9                	j	a0007f9c <Clock_Peripheral_Clock_Get+0x138>
a00080d4:	2000f737          	lui	a4,0x2000f
a00080d8:	531c                	lw	a5,32(a4)
a00080da:	2087b78b          	extu	a5,a5,8,8
a00080de:	cb99                	beqz	a5,a00080f4 <Clock_Peripheral_Clock_Get+0x290>
a00080e0:	5b08                	lw	a0,48(a4)
a00080e2:	4422                	lw	s0,8(sp)
a00080e4:	40b2                	lw	ra,12(sp)
a00080e6:	1035350b          	extu	a0,a0,4,3
a00080ea:	0141                	addi	sp,sp,16
a00080ec:	c2fba317          	auipc	t1,0xc2fba
a00080f0:	8de30067          	jr	-1826(t1) # 62fc19ca <Clock_F32k_Mux_Output>
a00080f4:	200007b7          	lui	a5,0x20000
a00080f8:	1107a403          	lw	s0,272(a5) # 20000110 <remain_wifi_ram+0x1ffe0110>
a00080fc:	1107a783          	lw	a5,272(a5)
a0008100:	03f47413          	andi	s0,s0,63
a0008104:	1c77b78b          	extu	a5,a5,7,7
a0008108:	eb89                	bnez	a5,a000811a <Clock_Peripheral_Clock_Get+0x2b6>
a000810a:	c2fba097          	auipc	ra,0xc2fba
a000810e:	838080e7          	jalr	-1992(ra) # 62fc1942 <Clock_Get_Audio_PLL_Output>
a0008112:	0405                	addi	s0,s0,1
a0008114:	02855533          	divu	a0,a0,s0
a0008118:	b36d                	j	a0007ec2 <Clock_Peripheral_Clock_Get+0x5e>
a000811a:	4515                	li	a0,5
a000811c:	c2fba097          	auipc	ra,0xc2fba
a0008120:	94a080e7          	jalr	-1718(ra) # 62fc1a66 <Clock_System_Clock_Get>
a0008124:	b7fd                	j	a0008112 <Clock_Peripheral_Clock_Get+0x2ae>
a0008126:	c2fba097          	auipc	ra,0xc2fba
a000812a:	81c080e7          	jalr	-2020(ra) # 62fc1942 <Clock_Get_Audio_PLL_Output>
a000812e:	b3ed                	j	a0007f18 <Clock_Peripheral_Clock_Get+0xb4>
a0008130:	01e85537          	lui	a0,0x1e85
a0008134:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
a0008138:	b3c5                	j	a0007f18 <Clock_Peripheral_Clock_Get+0xb4>
a000813a:	200007b7          	lui	a5,0x20000
a000813e:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a0008142:	75c7b78b          	extu	a5,a5,29,28
a0008146:	ef81                	bnez	a5,a000815e <Clock_Peripheral_Clock_Get+0x2fa>
a0008148:	4515                	li	a0,5
a000814a:	c2fba097          	auipc	ra,0xc2fba
a000814e:	91c080e7          	jalr	-1764(ra) # 62fc1a66 <Clock_System_Clock_Get>
a0008152:	200007b7          	lui	a5,0x20000
a0008156:	4207a783          	lw	a5,1056(a5) # 20000420 <remain_wifi_ram+0x1ffe0420>
a000815a:	83f9                	srli	a5,a5,0x1e
a000815c:	b581                	j	a0007f9c <Clock_Peripheral_Clock_Get+0x138>
a000815e:	4705                	li	a4,1
a0008160:	00e78863          	beq	a5,a4,a0008170 <Clock_Peripheral_Clock_Get+0x30c>
a0008164:	4515                	li	a0,5
a0008166:	c2fb9097          	auipc	ra,0xc2fb9
a000816a:	696080e7          	jalr	1686(ra) # 62fc17fc <Clock_Get_AUPLL_Output>
a000816e:	b7d5                	j	a0008152 <Clock_Peripheral_Clock_Get+0x2ee>
a0008170:	05b8e537          	lui	a0,0x5b8e
a0008174:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0008178:	bfe9                	j	a0008152 <Clock_Peripheral_Clock_Get+0x2ee>
a000817a:	05b8e537          	lui	a0,0x5b8e
a000817e:	80050513          	addi	a0,a0,-2048 # 5b8d800 <remain_wifi_ram+0x5b6d800>
a0008182:	bbc9                	j	a0007f54 <Clock_Peripheral_Clock_Get+0xf0>
a0008184:	20000737          	lui	a4,0x20000
a0008188:	54872783          	lw	a5,1352(a4) # 20000548 <remain_wifi_ram+0x1ffe0548>
a000818c:	6187b78b          	extu	a5,a5,24,24
a0008190:	d00788e3          	beqz	a5,a0007ea0 <Clock_Peripheral_Clock_Get+0x3c>
a0008194:	25472503          	lw	a0,596(a4)
a0008198:	4422                	lw	s0,8(sp)
a000819a:	40b2                	lw	ra,12(sp)
a000819c:	2ca5350b          	extu	a0,a0,11,10
a00081a0:	0141                	addi	sp,sp,16
a00081a2:	c2fb9317          	auipc	t1,0xc2fb9
a00081a6:	7c230067          	jr	1986(t1) # 62fc1964 <Clock_160M_Clk_Mux_Output>

a00081aa <qcc74x_ef_ctrl_get_common_trim_list>:
a00081aa:	a00097b7          	lui	a5,0xa0009
a00081ae:	6a078793          	addi	a5,a5,1696 # a00096a0 <__psram_limit+0xf7c096a0>
a00081b2:	c11c                	sw	a5,0(a0)
a00081b4:	02200513          	li	a0,34
a00081b8:	8082                	ret

a00081ba <qcc74x_efuse_get_adc_trim>:
a00081ba:	1101                	addi	sp,sp,-32
a00081bc:	a00095b7          	lui	a1,0xa0009
a00081c0:	4685                	li	a3,1
a00081c2:	0030                	addi	a2,sp,8
a00081c4:	68858593          	addi	a1,a1,1672 # a0009688 <__psram_limit+0xf7c09688>
a00081c8:	4501                	li	a0,0
a00081ca:	cc22                	sw	s0,24(sp)
a00081cc:	ce06                	sw	ra,28(sp)
a00081ce:	ca26                	sw	s1,20(sp)
a00081d0:	c2fb8097          	auipc	ra,0xc2fb8
a00081d4:	42e080e7          	jalr	1070(ra) # 62fc05fe <qcc74x_ef_ctrl_read_common_trim>
a00081d8:	00814783          	lbu	a5,8(sp)
a00081dc:	a0009437          	lui	s0,0xa0009
a00081e0:	eb81                	bnez	a5,a00081f0 <qcc74x_efuse_get_adc_trim+0x36>
a00081e2:	9c442507          	flw	fa0,-1596(s0) # a00089c4 <__psram_limit+0xf7c089c4>
a00081e6:	40f2                	lw	ra,28(sp)
a00081e8:	4462                	lw	s0,24(sp)
a00081ea:	44d2                	lw	s1,20(sp)
a00081ec:	6105                	addi	sp,sp,32
a00081ee:	8082                	ret
a00081f0:	00b14583          	lbu	a1,11(sp)
a00081f4:	4532                	lw	a0,12(sp)
a00081f6:	00914483          	lbu	s1,9(sp)
a00081fa:	c2fb8097          	auipc	ra,0xc2fb8
a00081fe:	54c080e7          	jalr	1356(ra) # 62fc0746 <qcc74x_ef_ctrl_get_trim_parity>
a0008202:	fea490e3          	bne	s1,a0,a00081e2 <qcc74x_efuse_get_adc_trim+0x28>
a0008206:	47b2                	lw	a5,12(sp)
a0008208:	6705                	lui	a4,0x1
a000820a:	80070693          	addi	a3,a4,-2048 # 800 <__RFTLV_SIZE_HOLE>
a000820e:	8efd                	and	a3,a3,a5
a0008210:	a0009637          	lui	a2,0xa0009
a0008214:	ce91                	beqz	a3,a0008230 <qcc74x_efuse_get_adc_trim+0x76>
a0008216:	40f007b3          	neg	a5,a5
a000821a:	177d                	addi	a4,a4,-1
a000821c:	8ff9                	and	a5,a5,a4
a000821e:	d007f553          	fcvt.s.w	fa0,a5
a0008222:	69c62707          	flw	fa4,1692(a2) # a000969c <__psram_limit+0xf7c0969c>
a0008226:	9c442787          	flw	fa5,-1596(s0)
a000822a:	78e57543          	fmadd.s	fa0,fa0,fa4,fa5
a000822e:	bf65                	j	a00081e6 <qcc74x_efuse_get_adc_trim+0x2c>
a0008230:	d017f553          	fcvt.s.wu	fa0,a5
a0008234:	69c62707          	flw	fa4,1692(a2)
a0008238:	9c442787          	flw	fa5,-1596(s0)
a000823c:	78e5754b          	fnmsub.s	fa0,fa0,fa4,fa5
a0008240:	b75d                	j	a00081e6 <qcc74x_efuse_get_adc_trim+0x2c>

a0008242 <qcc74x_efuse_get_adc_tsen_trim>:
a0008242:	1101                	addi	sp,sp,-32
a0008244:	a00095b7          	lui	a1,0xa0009
a0008248:	4685                	li	a3,1
a000824a:	0030                	addi	a2,sp,8
a000824c:	69458593          	addi	a1,a1,1684 # a0009694 <__psram_limit+0xf7c09694>
a0008250:	4501                	li	a0,0
a0008252:	ce06                	sw	ra,28(sp)
a0008254:	cc22                	sw	s0,24(sp)
a0008256:	c2fb8097          	auipc	ra,0xc2fb8
a000825a:	3a8080e7          	jalr	936(ra) # 62fc05fe <qcc74x_ef_ctrl_read_common_trim>
a000825e:	00814783          	lbu	a5,8(sp)
a0008262:	e799                	bnez	a5,a0008270 <qcc74x_efuse_get_adc_tsen_trim+0x2e>
a0008264:	7fa00513          	li	a0,2042
a0008268:	40f2                	lw	ra,28(sp)
a000826a:	4462                	lw	s0,24(sp)
a000826c:	6105                	addi	sp,sp,32
a000826e:	8082                	ret
a0008270:	00b14583          	lbu	a1,11(sp)
a0008274:	4532                	lw	a0,12(sp)
a0008276:	00914403          	lbu	s0,9(sp)
a000827a:	c2fb8097          	auipc	ra,0xc2fb8
a000827e:	4cc080e7          	jalr	1228(ra) # 62fc0746 <qcc74x_ef_ctrl_get_trim_parity>
a0008282:	fea411e3          	bne	s0,a0,a0008264 <qcc74x_efuse_get_adc_tsen_trim+0x22>
a0008286:	4532                	lw	a0,12(sp)
a0008288:	b7c5                	j	a0008268 <qcc74x_efuse_get_adc_tsen_trim+0x26>

a000828a <qcc74x_gpio_pad_check>:
a000828a:	1141                	addi	sp,sp,-16
a000828c:	c606                	sw	ra,12(sp)
a000828e:	c2fb9097          	auipc	ra,0xc2fb9
a0008292:	ce6080e7          	jalr	-794(ra) # 62fc0f74 <GLB_GPIO_Pad_LeadOut_Sts>
a0008296:	e111                	bnez	a0,a000829a <qcc74x_gpio_pad_check+0x10>
a0008298:	a001                	j	a0008298 <qcc74x_gpio_pad_check+0xe>
a000829a:	40b2                	lw	ra,12(sp)
a000829c:	0141                	addi	sp,sp,16
a000829e:	8082                	ret

a00082a0 <qcc74x_clk_get_peripheral_clock>:
a00082a0:	e501                	bnez	a0,a00082a8 <qcc74x_clk_get_peripheral_clock+0x8>
a00082a2:	4539                	li	a0,14
a00082a4:	bc1ff06f          	j	a0007e64 <Clock_Peripheral_Clock_Get>
a00082a8:	4785                	li	a5,1
a00082aa:	00f51463          	bne	a0,a5,a00082b2 <qcc74x_clk_get_peripheral_clock+0x12>
a00082ae:	4541                	li	a0,16
a00082b0:	bfd5                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a00082b2:	4795                	li	a5,5
a00082b4:	00f51463          	bne	a0,a5,a00082bc <qcc74x_clk_get_peripheral_clock+0x1c>
a00082b8:	4501                	li	a0,0
a00082ba:	b7ed                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a00082bc:	4799                	li	a5,6
a00082be:	00f51463          	bne	a0,a5,a00082c6 <qcc74x_clk_get_peripheral_clock+0x26>
a00082c2:	450d                	li	a0,3
a00082c4:	b7c5                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a00082c6:	479d                	li	a5,7
a00082c8:	00f51463          	bne	a0,a5,a00082d0 <qcc74x_clk_get_peripheral_clock+0x30>
a00082cc:	4521                	li	a0,8
a00082ce:	bfd9                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a00082d0:	47bd                	li	a5,15
a00082d2:	00f51463          	bne	a0,a5,a00082da <qcc74x_clk_get_peripheral_clock+0x3a>
a00082d6:	452d                	li	a0,11
a00082d8:	b7f1                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a00082da:	47a9                	li	a5,10
a00082dc:	00f51463          	bne	a0,a5,a00082e4 <qcc74x_clk_get_peripheral_clock+0x44>
a00082e0:	4535                	li	a0,13
a00082e2:	b7c9                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a00082e4:	02000793          	li	a5,32
a00082e8:	00f51463          	bne	a0,a5,a00082f0 <qcc74x_clk_get_peripheral_clock+0x50>
a00082ec:	454d                	li	a0,19
a00082ee:	bf5d                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a00082f0:	47c5                	li	a5,17
a00082f2:	00f51463          	bne	a0,a5,a00082fa <qcc74x_clk_get_peripheral_clock+0x5a>
a00082f6:	4549                	li	a0,18
a00082f8:	b775                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a00082fa:	47b9                	li	a5,14
a00082fc:	00f51463          	bne	a0,a5,a0008304 <qcc74x_clk_get_peripheral_clock+0x64>
a0008300:	4545                	li	a0,17
a0008302:	b74d                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a0008304:	02400793          	li	a5,36
a0008308:	00f51463          	bne	a0,a5,a0008310 <qcc74x_clk_get_peripheral_clock+0x70>
a000830c:	4515                	li	a0,5
a000830e:	bf59                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a0008310:	47a5                	li	a5,9
a0008312:	00f51463          	bne	a0,a5,a000831a <qcc74x_clk_get_peripheral_clock+0x7a>
a0008316:	4531                	li	a0,12
a0008318:	b771                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a000831a:	47d1                	li	a5,20
a000831c:	00f51463          	bne	a0,a5,a0008324 <qcc74x_clk_get_peripheral_clock+0x84>
a0008320:	4551                	li	a0,20
a0008322:	b749                	j	a00082a4 <qcc74x_clk_get_peripheral_clock+0x4>
a0008324:	4501                	li	a0,0
a0008326:	8082                	ret

a0008328 <qcc74x_sys_reset_por>:
a0008328:	1141                	addi	sp,sp,-16
a000832a:	c606                	sw	ra,12(sp)
a000832c:	200107b7          	lui	a5,0x20010
a0008330:	4711                	li	a4,4
a0008332:	5ae7a423          	sw	a4,1448(a5) # 200105a8 <remain_wifi_ram+0x1fff05a8>
a0008336:	bf1ba737          	lui	a4,0xbf1ba
a000833a:	55e70713          	addi	a4,a4,1374 # bf1ba55e <__psram_limit+0x16dba55e>
a000833e:	5ae7a623          	sw	a4,1452(a5)
a0008342:	30047073          	csrci	mstatus,8
a0008346:	4511                	li	a0,4
a0008348:	c2fb9097          	auipc	ra,0xc2fb9
a000834c:	860080e7          	jalr	-1952(ra) # 62fc0ba8 <GLB_AHB_MCU_Software_Reset>
a0008350:	4521                	li	a0,8
a0008352:	c2fb9097          	auipc	ra,0xc2fb9
a0008356:	856080e7          	jalr	-1962(ra) # 62fc0ba8 <GLB_AHB_MCU_Software_Reset>
a000835a:	4525                	li	a0,9
a000835c:	c2fb9097          	auipc	ra,0xc2fb9
a0008360:	84c080e7          	jalr	-1972(ra) # 62fc0ba8 <GLB_AHB_MCU_Software_Reset>
a0008364:	4529                	li	a0,10
a0008366:	c2fb9097          	auipc	ra,0xc2fb9
a000836a:	842080e7          	jalr	-1982(ra) # 62fc0ba8 <GLB_AHB_MCU_Software_Reset>
a000836e:	452d                	li	a0,11
a0008370:	c2fb9097          	auipc	ra,0xc2fb9
a0008374:	838080e7          	jalr	-1992(ra) # 62fc0ba8 <GLB_AHB_MCU_Software_Reset>
a0008378:	4529                	li	a0,10
a000837a:	c2fb9097          	auipc	ra,0xc2fb9
a000837e:	d86080e7          	jalr	-634(ra) # 62fc1100 <arch_delay_ms>
a0008382:	c2fb9097          	auipc	ra,0xc2fb9
a0008386:	83a080e7          	jalr	-1990(ra) # 62fc0bbc <GLB_SW_POR_Reset>
a000838a:	a001                	j	a000838a <qcc74x_sys_reset_por+0x62>

a000838c <board_uartx_gpio_init>:
a000838c:	a0009537          	lui	a0,0xa0009
a0008390:	1141                	addi	sp,sp,-16
a0008392:	88050513          	addi	a0,a0,-1920 # a0008880 <__psram_limit+0xf7c08880>
a0008396:	c606                	sw	ra,12(sp)
a0008398:	c422                	sw	s0,8(sp)
a000839a:	98cff0ef          	jal	ra,a0007526 <qcc74x_device_get_by_name>
a000839e:	4619                	li	a2,6
a00083a0:	45ed                	li	a1,27
a00083a2:	842a                	mv	s0,a0
a00083a4:	938fe0ef          	jal	ra,a00064dc <qcc74x_gpio_uart_init>
a00083a8:	8522                	mv	a0,s0
a00083aa:	461d                	li	a2,7
a00083ac:	45f1                	li	a1,28
a00083ae:	92efe0ef          	jal	ra,a00064dc <qcc74x_gpio_uart_init>
a00083b2:	8522                	mv	a0,s0
a00083b4:	4615                	li	a2,5
a00083b6:	45f5                	li	a1,29
a00083b8:	924fe0ef          	jal	ra,a00064dc <qcc74x_gpio_uart_init>
a00083bc:	8522                	mv	a0,s0
a00083be:	4422                	lw	s0,8(sp)
a00083c0:	40b2                	lw	ra,12(sp)
a00083c2:	4611                	li	a2,4
a00083c4:	45f9                	li	a1,30
a00083c6:	0141                	addi	sp,sp,16
a00083c8:	914fe06f          	j	a00064dc <qcc74x_gpio_uart_init>

a00083cc <board_i2c0_gpio_init>:
a00083cc:	a0009537          	lui	a0,0xa0009
a00083d0:	1101                	addi	sp,sp,-32
a00083d2:	88050513          	addi	a0,a0,-1920 # a0008880 <__psram_limit+0xf7c08880>
a00083d6:	ce06                	sw	ra,28(sp)
a00083d8:	cc22                	sw	s0,24(sp)
a00083da:	94cff0ef          	jal	ra,a0007526 <qcc74x_device_get_by_name>
a00083de:	6409                	lui	s0,0x2
a00083e0:	b0540613          	addi	a2,s0,-1275 # 1b05 <HeapMinSize+0xb05>
a00083e4:	45ad                	li	a1,11
a00083e6:	c62a                	sw	a0,12(sp)
a00083e8:	f97fd0ef          	jal	ra,a000637e <qcc74x_gpio_init>
a00083ec:	b0540613          	addi	a2,s0,-1275
a00083f0:	4462                	lw	s0,24(sp)
a00083f2:	4532                	lw	a0,12(sp)
a00083f4:	40f2                	lw	ra,28(sp)
a00083f6:	45b9                	li	a1,14
a00083f8:	6105                	addi	sp,sp,32
a00083fa:	f85fd06f          	j	a000637e <qcc74x_gpio_init>

a00083fe <qcc74x_show_log>:
a00083fe:	1141                	addi	sp,sp,-16
a0008400:	c422                	sw	s0,8(sp)
a0008402:	a000a437          	lui	s0,0xa000a
a0008406:	9f440513          	addi	a0,s0,-1548 # a00099f4 <__psram_limit+0xf7c099f4>
a000840a:	c606                	sw	ra,12(sp)
a000840c:	955fd0ef          	jal	ra,a0005d60 <printf>
a0008410:	9f440513          	addi	a0,s0,-1548
a0008414:	94dfd0ef          	jal	ra,a0005d60 <printf>
a0008418:	4422                	lw	s0,8(sp)
a000841a:	40b2                	lw	ra,12(sp)
a000841c:	a000a637          	lui	a2,0xa000a
a0008420:	a000a5b7          	lui	a1,0xa000a
a0008424:	a000a537          	lui	a0,0xa000a
a0008428:	89c60613          	addi	a2,a2,-1892 # a000989c <__psram_limit+0xf7c0989c>
a000842c:	8a858593          	addi	a1,a1,-1880 # a00098a8 <__psram_limit+0xf7c098a8>
a0008430:	8b450513          	addi	a0,a0,-1868 # a00098b4 <__psram_limit+0xf7c098b4>
a0008434:	0141                	addi	sp,sp,16
a0008436:	92bfd06f          	j	a0005d60 <printf>

a000843a <qcc74x_sys_version>:
a000843a:	411c                	lw	a5,0(a0)
a000843c:	872a                	mv	a4,a0
a000843e:	e791                	bnez	a5,a000844a <qcc74x_sys_version+0x10>
a0008440:	a00097b7          	lui	a5,0xa0009
a0008444:	86478793          	addi	a5,a5,-1948 # a0008864 <__psram_limit+0xf7c08864>
a0008448:	c11c                	sw	a5,0(a0)
a000844a:	431c                	lw	a5,0(a4)
a000844c:	a00096b7          	lui	a3,0xa0009
a0008450:	87068693          	addi	a3,a3,-1936 # a0008870 <__psram_limit+0xf7c08870>
a0008454:	4501                	li	a0,0
a0008456:	00d78563          	beq	a5,a3,a0008460 <qcc74x_sys_version+0x26>
a000845a:	5847c50b          	lwia	a0,(a5),4,0
a000845e:	c31c                	sw	a5,0(a4)
a0008460:	8082                	ret

a0008462 <qcc74x_show_component_version>:
a0008462:	a000a537          	lui	a0,0xa000a
a0008466:	1101                	addi	sp,sp,-32
a0008468:	8c450513          	addi	a0,a0,-1852 # a00098c4 <__psram_limit+0xf7c098c4>
a000846c:	ca26                	sw	s1,20(sp)
a000846e:	c84a                	sw	s2,16(sp)
a0008470:	ce06                	sw	ra,28(sp)
a0008472:	cc22                	sw	s0,24(sp)
a0008474:	c602                	sw	zero,12(sp)
a0008476:	a000a4b7          	lui	s1,0xa000a
a000847a:	8b3fd0ef          	jal	ra,a0005d2c <puts>
a000847e:	a000a937          	lui	s2,0xa000a
a0008482:	0068                	addi	a0,sp,12
a0008484:	3f5d                	jal	a000843a <qcc74x_sys_version>
a0008486:	842a                	mv	s0,a0
a0008488:	e519                	bnez	a0,a0008496 <qcc74x_show_component_version+0x34>
a000848a:	40f2                	lw	ra,28(sp)
a000848c:	4462                	lw	s0,24(sp)
a000848e:	44d2                	lw	s1,20(sp)
a0008490:	4942                	lw	s2,16(sp)
a0008492:	6105                	addi	sp,sp,32
a0008494:	8082                	ret
a0008496:	8e448513          	addi	a0,s1,-1820 # a00098e4 <__psram_limit+0xf7c098e4>
a000849a:	893fd0ef          	jal	ra,a0005d2c <puts>
a000849e:	8522                	mv	a0,s0
a00084a0:	88dfd0ef          	jal	ra,a0005d2c <puts>
a00084a4:	9f490513          	addi	a0,s2,-1548 # a00099f4 <__psram_limit+0xf7c099f4>
a00084a8:	885fd0ef          	jal	ra,a0005d2c <puts>
a00084ac:	bfd9                	j	a0008482 <qcc74x_show_component_version+0x20>

a00084ae <qcc74x_show_chipinfo>:
a00084ae:	7139                	addi	sp,sp,-64
a00084b0:	0068                	addi	a0,sp,12
a00084b2:	de06                	sw	ra,60(sp)
a00084b4:	c2fb9097          	auipc	ra,0xc2fb9
a00084b8:	cca080e7          	jalr	-822(ra) # 62fc117e <qcc74x_efuse_get_device_info>
a00084bc:	a000a537          	lui	a0,0xa000a
a00084c0:	8f050513          	addi	a0,a0,-1808 # a00098f0 <__psram_limit+0xf7c098f0>
a00084c4:	89dfd0ef          	jal	ra,a0005d60 <printf>
a00084c8:	45d2                	lw	a1,20(sp)
a00084ca:	a000a537          	lui	a0,0xa000a
a00084ce:	91050513          	addi	a0,a0,-1776 # a0009910 <__psram_limit+0xf7c09910>
a00084d2:	88ffd0ef          	jal	ra,a0005d60 <printf>
a00084d6:	45e2                	lw	a1,24(sp)
a00084d8:	a000a537          	lui	a0,0xa000a
a00084dc:	92850513          	addi	a0,a0,-1752 # a0009928 <__psram_limit+0xf7c09928>
a00084e0:	881fd0ef          	jal	ra,a0005d60 <printf>
a00084e4:	45f2                	lw	a1,28(sp)
a00084e6:	a000a537          	lui	a0,0xa000a
a00084ea:	94050513          	addi	a0,a0,-1728 # a0009940 <__psram_limit+0xf7c09940>
a00084ee:	873fd0ef          	jal	ra,a0005d60 <printf>
a00084f2:	00f14583          	lbu	a1,15(sp)
a00084f6:	a000a537          	lui	a0,0xa000a
a00084fa:	95850513          	addi	a0,a0,-1704 # a0009958 <__psram_limit+0xf7c09958>
a00084fe:	863fd0ef          	jal	ra,a0005d60 <printf>
a0008502:	50f2                	lw	ra,60(sp)
a0008504:	6121                	addi	sp,sp,64
a0008506:	8082                	ret

a0008508 <board_init>:
a0008508:	7119                	addi	sp,sp,-128
a000850a:	de86                	sw	ra,124(sp)
a000850c:	dca2                	sw	s0,120(sp)
a000850e:	daa6                	sw	s1,116(sp)
a0008510:	d8ca                	sw	s2,112(sp)
a0008512:	d6ce                	sw	s3,108(sp)
a0008514:	ca02                	sw	zero,20(sp)
a0008516:	c2fb8097          	auipc	ra,0xc2fb8
a000851a:	528080e7          	jalr	1320(ra) # 62fc0a3e <qcc74x_irq_save>
a000851e:	84aa                	mv	s1,a0
a0008520:	c2fb8097          	auipc	ra,0xc2fb8
a0008524:	410080e7          	jalr	1040(ra) # 62fc0930 <qcc74x_flash_init>
a0008528:	892a                	mv	s2,a0
a000852a:	c2fb9097          	auipc	ra,0xc2fb9
a000852e:	614080e7          	jalr	1556(ra) # 62fc1b3e <system_clock_init>
a0008532:	200007b7          	lui	a5,0x20000
a0008536:	58078793          	addi	a5,a5,1408 # 20000580 <remain_wifi_ram+0x1ffe0580>
a000853a:	43d8                	lw	a4,4(a5)
a000853c:	6685                	lui	a3,0x1
a000853e:	6441                	lui	s0,0x10
a0008540:	cc3a                	sw	a4,24(sp)
a0008542:	4762                	lw	a4,24(sp)
a0008544:	00200637          	lui	a2,0x200
a0008548:	4589                	li	a1,2
a000854a:	00476713          	ori	a4,a4,4
a000854e:	cc3a                	sw	a4,24(sp)
a0008550:	4762                	lw	a4,24(sp)
a0008552:	4505                	li	a0,1
a0008554:	c3d8                	sw	a4,4(a5)
a0008556:	43d8                	lw	a4,4(a5)
a0008558:	ce3a                	sw	a4,28(sp)
a000855a:	4772                	lw	a4,28(sp)
a000855c:	00876713          	ori	a4,a4,8
a0008560:	ce3a                	sw	a4,28(sp)
a0008562:	4772                	lw	a4,28(sp)
a0008564:	01076713          	ori	a4,a4,16
a0008568:	ce3a                	sw	a4,28(sp)
a000856a:	4772                	lw	a4,28(sp)
a000856c:	c3d8                	sw	a4,4(a5)
a000856e:	43d8                	lw	a4,4(a5)
a0008570:	d03a                	sw	a4,32(sp)
a0008572:	5702                	lw	a4,32(sp)
a0008574:	8f55                	or	a4,a4,a3
a0008576:	d03a                	sw	a4,32(sp)
a0008578:	5702                	lw	a4,32(sp)
a000857a:	000206b7          	lui	a3,0x20
a000857e:	c3d8                	sw	a4,4(a5)
a0008580:	43d8                	lw	a4,4(a5)
a0008582:	d23a                	sw	a4,36(sp)
a0008584:	5712                	lw	a4,36(sp)
a0008586:	8f41                	or	a4,a4,s0
a0008588:	d23a                	sw	a4,36(sp)
a000858a:	5712                	lw	a4,36(sp)
a000858c:	30040413          	addi	s0,s0,768 # 10300 <wifi_ram_max_size+0x8300>
a0008590:	c3d8                	sw	a4,4(a5)
a0008592:	43d8                	lw	a4,4(a5)
a0008594:	d43a                	sw	a4,40(sp)
a0008596:	5722                	lw	a4,40(sp)
a0008598:	8f55                	or	a4,a4,a3
a000859a:	d43a                	sw	a4,40(sp)
a000859c:	5722                	lw	a4,40(sp)
a000859e:	000406b7          	lui	a3,0x40
a00085a2:	c3d8                	sw	a4,4(a5)
a00085a4:	43d8                	lw	a4,4(a5)
a00085a6:	d63a                	sw	a4,44(sp)
a00085a8:	5732                	lw	a4,44(sp)
a00085aa:	8f55                	or	a4,a4,a3
a00085ac:	d63a                	sw	a4,44(sp)
a00085ae:	5732                	lw	a4,44(sp)
a00085b0:	000806b7          	lui	a3,0x80
a00085b4:	c3d8                	sw	a4,4(a5)
a00085b6:	43d8                	lw	a4,4(a5)
a00085b8:	d83a                	sw	a4,48(sp)
a00085ba:	5742                	lw	a4,48(sp)
a00085bc:	8f55                	or	a4,a4,a3
a00085be:	d83a                	sw	a4,48(sp)
a00085c0:	5742                	lw	a4,48(sp)
a00085c2:	001006b7          	lui	a3,0x100
a00085c6:	c3d8                	sw	a4,4(a5)
a00085c8:	43d8                	lw	a4,4(a5)
a00085ca:	da3a                	sw	a4,52(sp)
a00085cc:	5752                	lw	a4,52(sp)
a00085ce:	8f55                	or	a4,a4,a3
a00085d0:	da3a                	sw	a4,52(sp)
a00085d2:	5752                	lw	a4,52(sp)
a00085d4:	c3d8                	sw	a4,4(a5)
a00085d6:	43d8                	lw	a4,4(a5)
a00085d8:	dc3a                	sw	a4,56(sp)
a00085da:	56e2                	lw	a3,56(sp)
a00085dc:	8ed1                	or	a3,a3,a2
a00085de:	dc36                	sw	a3,56(sp)
a00085e0:	5762                	lw	a4,56(sp)
a00085e2:	c3d8                	sw	a4,4(a5)
a00085e4:	43d8                	lw	a4,4(a5)
a00085e6:	de3a                	sw	a4,60(sp)
a00085e8:	56f2                	lw	a3,60(sp)
a00085ea:	00400737          	lui	a4,0x400
a00085ee:	8ed9                	or	a3,a3,a4
a00085f0:	de36                	sw	a3,60(sp)
a00085f2:	5772                	lw	a4,60(sp)
a00085f4:	c3d8                	sw	a4,4(a5)
a00085f6:	43d8                	lw	a4,4(a5)
a00085f8:	c0ba                	sw	a4,64(sp)
a00085fa:	4686                	lw	a3,64(sp)
a00085fc:	08000737          	lui	a4,0x8000
a0008600:	8ed9                	or	a3,a3,a4
a0008602:	c0b6                	sw	a3,64(sp)
a0008604:	4706                	lw	a4,64(sp)
a0008606:	c3d8                	sw	a4,4(a5)
a0008608:	43d8                	lw	a4,4(a5)
a000860a:	c2ba                	sw	a4,68(sp)
a000860c:	4696                	lw	a3,68(sp)
a000860e:	6709                	lui	a4,0x2
a0008610:	8ed9                	or	a3,a3,a4
a0008612:	c2b6                	sw	a3,68(sp)
a0008614:	4716                	lw	a4,68(sp)
a0008616:	c3d8                	sw	a4,4(a5)
a0008618:	43d8                	lw	a4,4(a5)
a000861a:	c4ba                	sw	a4,72(sp)
a000861c:	46a6                	lw	a3,72(sp)
a000861e:	04000737          	lui	a4,0x4000
a0008622:	8ed9                	or	a3,a3,a4
a0008624:	c4b6                	sw	a3,72(sp)
a0008626:	4726                	lw	a4,72(sp)
a0008628:	008006b7          	lui	a3,0x800
a000862c:	c3d8                	sw	a4,4(a5)
a000862e:	4798                	lw	a4,8(a5)
a0008630:	c6ba                	sw	a4,76(sp)
a0008632:	4736                	lw	a4,76(sp)
a0008634:	8f51                	or	a4,a4,a2
a0008636:	c6ba                	sw	a4,76(sp)
a0008638:	4736                	lw	a4,76(sp)
a000863a:	4601                	li	a2,0
a000863c:	c798                	sw	a4,8(a5)
a000863e:	43d8                	lw	a4,4(a5)
a0008640:	c8ba                	sw	a4,80(sp)
a0008642:	4746                	lw	a4,80(sp)
a0008644:	8f55                	or	a4,a4,a3
a0008646:	c8ba                	sw	a4,80(sp)
a0008648:	4746                	lw	a4,80(sp)
a000864a:	c3d8                	sw	a4,4(a5)
a000864c:	c2fb8097          	auipc	ra,0xc2fb8
a0008650:	5ac080e7          	jalr	1452(ra) # 62fc0bf8 <GLB_Set_UART_CLK>
a0008654:	4601                	li	a2,0
a0008656:	4581                	li	a1,0
a0008658:	4505                	li	a0,1
a000865a:	e3aff0ef          	jal	ra,a0007c94 <GLB_Set_SPI_CLK>
a000865e:	4601                	li	a2,0
a0008660:	4581                	li	a1,0
a0008662:	4505                	li	a0,1
a0008664:	e66ff0ef          	jal	ra,a0007cca <GLB_Set_DBI_CLK>
a0008668:	4601                	li	a2,0
a000866a:	4585                	li	a1,1
a000866c:	4505                	li	a0,1
a000866e:	ddcff0ef          	jal	ra,a0007c4a <GLB_Set_I2C_CLK>
a0008672:	4605                	li	a2,1
a0008674:	4585                	li	a1,1
a0008676:	4505                	li	a0,1
a0008678:	d5cff0ef          	jal	ra,a0007bd4 <GLB_Set_ADC_CLK>
a000867c:	4505                	li	a0,1
a000867e:	c2fb8097          	auipc	ra,0xc2fb8
a0008682:	552080e7          	jalr	1362(ra) # 62fc0bd0 <GLB_Set_DIG_CLK_Sel>
a0008686:	04e00613          	li	a2,78
a000868a:	4585                	li	a1,1
a000868c:	4505                	li	a0,1
a000868e:	c2fb8097          	auipc	ra,0xc2fb8
a0008692:	538080e7          	jalr	1336(ra) # 62fc0bc6 <GLB_Set_DIG_512K_CLK>
a0008696:	4501                	li	a0,0
a0008698:	c2fb8097          	auipc	ra,0xc2fb8
a000869c:	556080e7          	jalr	1366(ra) # 62fc0bee <GLB_Set_PWM1_IO_Sel>
a00086a0:	464d                	li	a2,19
a00086a2:	4581                	li	a1,0
a00086a4:	4505                	li	a0,1
a00086a6:	d68ff0ef          	jal	ra,a0007c0e <GLB_Set_IR_CLK>
a00086aa:	460d                	li	a2,3
a00086ac:	4585                	li	a1,1
a00086ae:	4505                	li	a0,1
a00086b0:	e50ff0ef          	jal	ra,a0007d00 <GLB_Set_CAM_CLK>
a00086b4:	4505                	li	a0,1
a00086b6:	c2fb8097          	auipc	ra,0xc2fb8
a00086ba:	52e080e7          	jalr	1326(ra) # 62fc0be4 <GLB_Set_PKA_CLK_Sel>
a00086be:	4505                	li	a0,1
a00086c0:	c2fb8097          	auipc	ra,0xc2fb8
a00086c4:	542080e7          	jalr	1346(ra) # 62fc0c02 <GLB_Set_USB_CLK_From_WIFIPLL>
a00086c8:	4501                	li	a0,0
a00086ca:	c2fb8097          	auipc	ra,0xc2fb8
a00086ce:	542080e7          	jalr	1346(ra) # 62fc0c0c <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>
a00086d2:	e33fe0ef          	jal	ra,a0007504 <qcc74x_irq_initialize>
a00086d6:	a0009537          	lui	a0,0xa0009
a00086da:	88050513          	addi	a0,a0,-1920 # a0008880 <__psram_limit+0xf7c08880>
a00086de:	e49fe0ef          	jal	ra,a0007526 <qcc74x_device_get_by_name>
a00086e2:	4609                	li	a2,2
a00086e4:	45d5                	li	a1,21
a00086e6:	c62a                	sw	a0,12(sp)
a00086e8:	df5fd0ef          	jal	ra,a00064dc <qcc74x_gpio_uart_init>
a00086ec:	4532                	lw	a0,12(sp)
a00086ee:	460d                	li	a2,3
a00086f0:	45d9                	li	a1,22
a00086f2:	debfd0ef          	jal	ra,a00064dc <qcc74x_gpio_uart_init>
a00086f6:	001e87b7          	lui	a5,0x1e8
a00086fa:	48078793          	addi	a5,a5,1152 # 1e8480 <remain_wifi_ram+0x1c8480>
a00086fe:	a0009537          	lui	a0,0xa0009
a0008702:	cabe                	sw	a5,84(sp)
a0008704:	18c50513          	addi	a0,a0,396 # a000918c <__psram_limit+0xf7c0918c>
a0008708:	070707b7          	lui	a5,0x7070
a000870c:	cebe                	sw	a5,92(sp)
a000870e:	cca2                	sw	s0,88(sp)
a0008710:	e17fe0ef          	jal	ra,a0007526 <qcc74x_device_get_by_name>
a0008714:	62fc3437          	lui	s0,0x62fc3
a0008718:	5d040413          	addi	s0,s0,1488 # 62fc35d0 <uart0>
a000871c:	08cc                	addi	a1,sp,84
a000871e:	c008                	sw	a0,0(s0)
a0008720:	c26fe0ef          	jal	ra,a0006b46 <qcc74x_uart_init>
a0008724:	4008                	lw	a0,0(s0)
a0008726:	63030437          	lui	s0,0x63030
a000872a:	00040413          	mv	s0,s0
a000872e:	e5efd0ef          	jal	ra,a0005d8c <qcc74x_uart_set_console>
a0008732:	62fc3537          	lui	a0,0x62fc3
a0008736:	5d450593          	addi	a1,a0,1492 # 62fc35d4 <__HeapBase>
a000873a:	8c0d                	sub	s0,s0,a1
a000873c:	85a2                	mv	a1,s0
a000873e:	5d450513          	addi	a0,a0,1492
a0008742:	e54fd0ef          	jal	ra,a0005d96 <kmem_init>
a0008746:	cb9ff0ef          	jal	ra,a00083fe <qcc74x_show_log>
a000874a:	d19ff0ef          	jal	ra,a0008462 <qcc74x_show_component_version>
a000874e:	a80007b7          	lui	a5,0xa8000
a0008752:	a8000737          	lui	a4,0xa8000
a0008756:	00078793          	mv	a5,a5
a000875a:	00070713          	mv	a4,a4
a000875e:	8f99                	sub	a5,a5,a4
a0008760:	00f04d63          	bgtz	a5,a000877a <board_init+0x272>
a0008764:	a80007b7          	lui	a5,0xa8000
a0008768:	a8000737          	lui	a4,0xa8000
a000876c:	00078793          	mv	a5,a5
a0008770:	00070713          	mv	a4,a4
a0008774:	8f99                	sub	a5,a5,a4
a0008776:	00f05963          	blez	a5,a0008788 <board_init+0x280>
a000877a:	a000a537          	lui	a0,0xa000a
a000877e:	98450513          	addi	a0,a0,-1660 # a0009984 <__psram_limit+0xf7c09984>
a0008782:	daafd0ef          	jal	ra,a0005d2c <puts>
a0008786:	a001                	j	a0008786 <board_init+0x27e>
a0008788:	8029                	srli	s0,s0,0xa
a000878a:	a000a9b7          	lui	s3,0xa000a
a000878e:	85a2                	mv	a1,s0
a0008790:	9bc98513          	addi	a0,s3,-1604 # a00099bc <__psram_limit+0xf7c099bc>
a0008794:	dccfd0ef          	jal	ra,a0005d60 <printf>
a0008798:	d17ff0ef          	jal	ra,a00084ae <qcc74x_show_chipinfo>
a000879c:	00090863          	beqz	s2,a00087ac <board_init+0x2a4>
a00087a0:	a000a537          	lui	a0,0xa000a
a00087a4:	9f850513          	addi	a0,a0,-1544 # a00099f8 <__psram_limit+0xf7c099f8>
a00087a8:	db8fd0ef          	jal	ra,a0005d60 <printf>
a00087ac:	85a2                	mv	a1,s0
a00087ae:	9bc98513          	addi	a0,s3,-1604
a00087b2:	daefd0ef          	jal	ra,a0005d60 <printf>
a00087b6:	20000437          	lui	s0,0x20000
a00087ba:	10040793          	addi	a5,s0,256 # 20000100 <remain_wifi_ram+0x1ffe0100>
a00087be:	4bec                	lw	a1,84(a5)
a00087c0:	4fb0                	lw	a2,88(a5)
a00087c2:	a000a537          	lui	a0,0xa000a
a00087c6:	a1050513          	addi	a0,a0,-1520 # a0009a10 <__psram_limit+0xf7c09a10>
a00087ca:	d96fd0ef          	jal	ra,a0005d60 <printf>
a00087ce:	58040413          	addi	s0,s0,1408
a00087d2:	404c                	lw	a1,4(s0)
a00087d4:	4410                	lw	a2,8(s0)
a00087d6:	a000a537          	lui	a0,0xa000a
a00087da:	a3050513          	addi	a0,a0,-1488 # a0009a30 <__psram_limit+0xf7c09a30>
a00087de:	d82fd0ef          	jal	ra,a0005d60 <printf>
a00087e2:	0848                	addi	a0,sp,20
a00087e4:	c2fb8097          	auipc	ra,0xc2fb8
a00087e8:	7ca080e7          	jalr	1994(ra) # 62fc0fae <HBN_Get_Xtal_Value>
a00087ec:	200107b7          	lui	a5,0x20010
a00087f0:	8847a783          	lw	a5,-1916(a5) # 2000f884 <remain_wifi_ram+0x1ffef884>
a00087f4:	45d2                	lw	a1,20(sp)
a00087f6:	0c37b78b          	extu	a5,a5,3,3
a00087fa:	e7a9                	bnez	a5,a0008844 <board_init+0x33c>
a00087fc:	a000a637          	lui	a2,0xa000a
a0008800:	97c60613          	addi	a2,a2,-1668 # a000997c <__psram_limit+0xf7c0997c>
a0008804:	a000a537          	lui	a0,0xa000a
a0008808:	a5050513          	addi	a0,a0,-1456 # a0009a50 <__psram_limit+0xf7c09a50>
a000880c:	d54fd0ef          	jal	ra,a0005d60 <printf>
a0008810:	f58fd0ef          	jal	ra,a0005f68 <log_start>
a0008814:	8526                	mv	a0,s1
a0008816:	c2fb8097          	auipc	ra,0xc2fb8
a000881a:	230080e7          	jalr	560(ra) # 62fc0a46 <qcc74x_irq_restore>
a000881e:	a000a537          	lui	a0,0xa000a
a0008822:	a6050513          	addi	a0,a0,-1440 # a0009a60 <__psram_limit+0xf7c09a60>
a0008826:	d3afd0ef          	jal	ra,a0005d60 <printf>
a000882a:	a000a537          	lui	a0,0xa000a
a000882e:	a7450513          	addi	a0,a0,-1420 # a0009a74 <__psram_limit+0xf7c09a74>
a0008832:	d2efd0ef          	jal	ra,a0005d60 <printf>
a0008836:	50f6                	lw	ra,124(sp)
a0008838:	5466                	lw	s0,120(sp)
a000883a:	54d6                	lw	s1,116(sp)
a000883c:	5946                	lw	s2,112(sp)
a000883e:	59b6                	lw	s3,108(sp)
a0008840:	6109                	addi	sp,sp,128
a0008842:	8082                	ret
a0008844:	a000a637          	lui	a2,0xa000a
a0008848:	97060613          	addi	a2,a2,-1680 # a0009970 <__psram_limit+0xf7c09970>
a000884c:	bf65                	j	a0008804 <board_init+0x2fc>
	...

a0008850 <strlen>:
a0008850:	87aa                	mv	a5,a0
a0008852:	0007c703          	lbu	a4,0(a5)
a0008856:	0785                	addi	a5,a5,1
a0008858:	ff6d                	bnez	a4,a0008852 <strlen+0x2>
a000885a:	40a78533          	sub	a0,a5,a0
a000885e:	157d                	addi	a0,a0,-1
a0008860:	8082                	ret
	...

a0008864 <version_sdk>:
a0008864:	987c a000                                   |...

a0008868 <sw_image>:
a0008868:	9838 a000                                   8...

a000886c <compile_time>:
a000886c:	9858 a000                                   X...

a0008870 <__usbh_class_info_end__>:
a0008870:	6175                	addi	sp,sp,368
a0008872:	7472                	flw	fs0,60(sp)
a0008874:	0031                	c.nop	12
a0008876:	0000                	unimp
a0008878:	3269                	jal	a0008202 <qcc74x_efuse_get_adc_trim+0x48>
a000887a:	00003063          	0x3063
a000887e:	0000                	unimp
a0008880:	6f697067          	0x6f697067
a0008884:	0000                	unimp
a0008886:	0000                	unimp
a0008888:	6461                	lui	s0,0x18
a000888a:	49430063          	beq	t1,s4,a0008d0a <g_encodingTable+0xe>
a000888e:	5954                	lw	a3,52(a0)
a0008890:	3a20                	fld	fs0,112(a2)
a0008892:	4820                	lw	s0,80(s0)
a0008894:	4459                	li	s0,22
a0008896:	5245                	li	tp,-15
a0008898:	4241                	li	tp,16
a000889a:	4441                	li	s0,16
a000889c:	2820                	fld	fs0,80(s0)
a000889e:	4e49                	li	t3,18
a00088a0:	4944                	lw	s1,20(a0)
a00088a2:	2941                	jal	a0008d32 <g_encodingTable+0x36>
a00088a4:	0a0d                	addi	s4,s4,3
a00088a6:	0000                	unimp
a00088a8:	5452                	lw	s0,52(sp)
a00088aa:	202b2043          	fmadd.s	ft0,fs6,ft2,ft4,rdn
a00088ae:	4844                	lw	s1,20(s0)
a00088b0:	3154                	fld	fa3,160(a0)
a00088b2:	2031                	jal	a00088be <__usbh_class_info_end__+0x4e>
a00088b4:	514d202b          	0x514d202b
a00088b8:	3331                	jal	a00085c4 <board_init+0xbc>
a00088ba:	2035                	jal	a00088e6 <__usbh_class_info_end__+0x76>
a00088bc:	52415453          	0x52415453
a00088c0:	4554                	lw	a3,12(a0)
a00088c2:	0d44                	addi	s1,sp,660
a00088c4:	000a                	c.slli	zero,0x2
a00088c6:	0000                	unimp
a00088c8:	2d2d                	jal	a0008f02 <crc32Tab+0x1ba>
a00088ca:	2d2d                	jal	a0008f04 <crc32Tab+0x1bc>
a00088cc:	2d2d                	jal	a0008f06 <crc32Tab+0x1be>
a00088ce:	2d2d                	jal	a0008f08 <crc32Tab+0x1c0>
a00088d0:	2d2d                	jal	a0008f0a <crc32Tab+0x1c2>
a00088d2:	2d2d                	jal	a0008f0c <crc32Tab+0x1c4>
a00088d4:	2d2d                	jal	a0008f0e <crc32Tab+0x1c6>
a00088d6:	2d2d                	jal	a0008f10 <crc32Tab+0x1c8>
a00088d8:	2d2d                	jal	a0008f12 <crc32Tab+0x1ca>
a00088da:	2d2d                	jal	a0008f14 <crc32Tab+0x1cc>
a00088dc:	2d2d                	jal	a0008f16 <crc32Tab+0x1ce>
a00088de:	2d2d                	jal	a0008f18 <crc32Tab+0x1d0>
a00088e0:	2d2d                	jal	a0008f1a <crc32Tab+0x1d2>
a00088e2:	2d2d                	jal	a0008f1c <crc32Tab+0x1d4>
a00088e4:	2d2d                	jal	a0008f1e <crc32Tab+0x1d6>
a00088e6:	2d2d                	jal	a0008f20 <crc32Tab+0x1d8>
a00088e8:	0a0d                	addi	s4,s4,3
a00088ea:	0000                	unimp
a00088ec:	6d726157          	0x6d726157
a00088f0:	6e69                	lui	t3,0x1a
a00088f2:	514d2067          	0x514d2067
a00088f6:	3331                	jal	a0008602 <board_init+0xfa>
a00088f8:	2035                	jal	a0008924 <__usbh_class_info_end__+0xb4>
a00088fa:	3128                	fld	fa0,96(a0)
a00088fc:	7330                	flw	fa2,96(a4)
a00088fe:	2e29                	jal	a0008c18 <powers_of_10+0x190>
a0008900:	2e2e                	fld	ft8,200(sp)
a0008902:	0a0d                	addi	s4,s4,3
a0008904:	0000                	unimp
a0008906:	0000                	unimp
a0008908:	4954                	lw	a3,20(a0)
a000890a:	454d                	li	a0,19
a000890c:	2520                	fld	fs0,72(a0)
a000890e:	3230                	fld	fa2,96(a2)
a0008910:	3a64                	fld	fs1,240(a2)
a0008912:	3025                	jal	a000813a <Clock_Peripheral_Clock_Get+0x2d6>
a0008914:	6432                	flw	fs0,12(sp)
a0008916:	253a                	fld	fa0,392(sp)
a0008918:	3230                	fld	fa2,96(a2)
a000891a:	2064                	fld	fs1,192(s0)
a000891c:	4420                	lw	s0,72(s0)
a000891e:	5441                	li	s0,-16
a0008920:	2045                	jal	a00089c0 <__usbh_class_info_end__+0x150>
a0008922:	3025                	jal	a000814a <Clock_Peripheral_Clock_Get+0x2e6>
a0008924:	6432                	flw	fs0,12(sp)
a0008926:	3230252f          	0x3230252f
a000892a:	2f64                	fld	fs1,216(a4)
a000892c:	3032                	fld	ft0,296(sp)
a000892e:	3025                	jal	a0008156 <Clock_Peripheral_Clock_Get+0x2f2>
a0008930:	6432                	flw	fs0,12(sp)
a0008932:	0a0d                	addi	s4,s4,3
a0008934:	0000                	unimp
a0008936:	0000                	unimp
a0008938:	4554                	lw	a3,12(a0)
a000893a:	504d                	c.li	zero,-13
a000893c:	253d                	jal	a0008f6a <crc32Tab+0x222>
a000893e:	2064                	fld	fs1,192(s0)
a0008940:	48202043          	fmadd.s	ft0,ft0,ft2,fs1,rdn
a0008944:	4d55                	li	s10,21
a0008946:	253d                	jal	a0008f74 <crc32Tab+0x22c>
a0008948:	2064                	fld	fs1,192(s0)
a000894a:	2525                	jal	a0008f72 <crc32Tab+0x22a>
a000894c:	0a0d                	addi	s4,s4,3
a000894e:	0000                	unimp
a0008950:	4844                	lw	s1,20(s0)
a0008952:	3154                	fld	fa3,160(a0)
a0008954:	2031                	jal	a0008960 <__usbh_class_info_end__+0xf0>
a0008956:	5245                	li	tp,-15
a0008958:	4f52                	lw	t5,20(sp)
a000895a:	0d52                	slli	s10,s10,0x14
a000895c:	000a                	c.slli	zero,0x2
a000895e:	0000                	unimp
a0008960:	5141                	li	sp,-16
a0008962:	2049                	jal	a00089e4 <__usbh_class_info_end__+0x174>
a0008964:	2e25                	jal	a0008c9c <powers_of_10+0x214>
a0008966:	6632                	flw	fa2,12(sp)
a0008968:	5620                	lw	s0,104(a2)
a000896a:	7c20                	flw	fs0,120(s0)
a000896c:	4320                	lw	s0,64(a4)
a000896e:	454c                	lw	a1,12(a0)
a0008970:	4e41                	li	t3,16
a0008972:	0a0d                	addi	s4,s4,3
a0008974:	0000                	unimp
a0008976:	0000                	unimp
a0008978:	5141                	li	sp,-16
a000897a:	2049                	jal	a00089fc <__usbh_class_info_end__+0x18c>
a000897c:	2e25                	jal	a0008cb4 <powers_of_10+0x22c>
a000897e:	6632                	flw	fa2,12(sp)
a0008980:	5620                	lw	s0,104(a2)
a0008982:	7c20                	flw	fs0,120(s0)
a0008984:	4d20                	lw	s0,88(a0)
a0008986:	5245444f          	fnmadd.d	fs0,fa0,ft4,fa0,rmm
a000898a:	5441                	li	s0,-16
a000898c:	0d45                	addi	s10,s10,17
a000898e:	000a                	c.slli	zero,0x2
a0008990:	5141                	li	sp,-16
a0008992:	2049                	jal	a0008a14 <__usbh_class_info_end__+0x1a4>
a0008994:	2e25                	jal	a0008ccc <powers_of_10+0x244>
a0008996:	6632                	flw	fa2,12(sp)
a0008998:	5620                	lw	s0,104(a2)
a000899a:	7c20                	flw	fs0,120(s0)
a000899c:	5020                	lw	s0,96(s0)
a000899e:	0d524f4f          	fnmadd.h	ft10,ft4,fs5,ft1,rmm
a00089a2:	000a                	c.slli	zero,0x2
a00089a4:	5141                	li	sp,-16
a00089a6:	2049                	jal	a0008a28 <__usbh_class_info_end__+0x1b8>
a00089a8:	2e25                	jal	a0008ce0 <powers_of_10+0x258>
a00089aa:	6632                	flw	fa2,12(sp)
a00089ac:	5620                	lw	s0,104(a2)
a00089ae:	7c20                	flw	fs0,120(s0)
a00089b0:	5620                	lw	s0,104(a2)
a00089b2:	5245                	li	tp,-15
a00089b4:	2059                	jal	a0008a3a <__usbh_class_info_end__+0x1ca>
a00089b6:	4f50                	lw	a2,28(a4)
a00089b8:	0a0d524f          	fnmadd.d	ft4,fs10,ft0,ft1,unknown
a00089bc:	0000                	unimp
a00089be:	0000                	unimp
a00089c0:	0000                	unimp
a00089c2:	447a                	lw	s0,156(sp)
a00089c4:	0000                	unimp
a00089c6:	3f80                	fld	fs0,56(a5)
a00089c8:	0000                	unimp
a00089ca:	4000                	lw	s0,0(s0)
a00089cc:	40333333          	0x40333333
a00089d0:	00000007          	vle8.v	v0,(zero),v0.t
a00089d4:	0004                	0x4
a00089d6:	0000                	unimp
a00089d8:	6e66                	flw	ft8,88(sp)
a00089da:	0069                	c.nop	26
a00089dc:	6e66                	flw	ft8,88(sp)
a00089de:	2b69                	jal	a0008f78 <crc32Tab+0x230>
a00089e0:	0000                	unimp
a00089e2:	0000                	unimp
a00089e4:	616e                	flw	ft2,216(sp)
a00089e6:	006e                	c.slli	zero,0x1b
a00089e8:	6e66                	flw	ft8,88(sp)
a00089ea:	2d69                	jal	a0009084 <crc32Tab+0x33c>
a00089ec:	0000                	unimp
a00089ee:	0000                	unimp
a00089f0:	6c29                	lui	s8,0xa
a00089f2:	756c                	flw	fa1,108(a0)
a00089f4:	286e                	fld	fa6,216(sp)
a00089f6:	0000                	unimp
a00089f8:	6c29                	lui	s8,0xa
a00089fa:	6e69                	lui	t3,0x1a
a00089fc:	0028                	addi	a0,sp,8
	...
a0008a06:	3fe0                	fld	fs0,248(a5)
a0008a08:	509f79fb          	0x509f79fb
a0008a0c:	3fd34413          	xori	s0,t1,1021
a0008a10:	8b60c8b3          	0x8b60c8b3
a0008a14:	8a28                	sb	a0,2(a2)
a0008a16:	3fc6                	fld	ft11,112(sp)
a0008a18:	0000                	unimp
a0008a1a:	0000                	unimp
a0008a1c:	0000                	unimp
a0008a1e:	3ff8                	fld	fa4,248(a5)
a0008a20:	4361                	li	t1,24
a0008a22:	87a7636f          	jal	t1,9ff7ea9c <__HeapLimit+0x3cf4ea9c>
a0008a26:	3fd2                	fld	ft11,304(sp)
a0008a28:	a371                	j	a0008fb4 <crc32Tab+0x26c>
a0008a2a:	0979                	addi	s2,s2,30
a0008a2c:	400a934f          	fnmadd.s	ft6,fs5,ft0,fs0,rtz
a0008a30:	5516                	lw	a0,100(sp)
a0008a32:	bbb5                	j	a00087ae <board_init+0x2a6>
a0008a34:	6bb1                	lui	s7,0xc
a0008a36:	4002                	0x4002
a0008a38:	fefa39ef          	jal	s3,9ffaca26 <__HeapLimit+0x3cf7ca26>
a0008a3c:	2e42                	fld	ft8,16(sp)
a0008a3e:	3fe6                	fld	ft11,120(sp)
a0008a40:	0000                	unimp
a0008a42:	0000                	unimp
a0008a44:	0000                	unimp
a0008a46:	402c                	lw	a1,64(s0)
a0008a48:	0000                	unimp
a0008a4a:	0000                	unimp
a0008a4c:	0000                	unimp
a0008a4e:	4024                	lw	s1,64(s0)
a0008a50:	0000                	unimp
a0008a52:	0000                	unimp
a0008a54:	0000                	unimp
a0008a56:	4018                	lw	a4,0(s0)
a0008a58:	0000                	unimp
a0008a5a:	0000                	unimp
a0008a5c:	0000                	unimp
a0008a5e:	4000                	lw	s0,0(s0)
a0008a60:	0000                	unimp
a0008a62:	0000                	unimp
a0008a64:	0000                	unimp
a0008a66:	3ff0                	fld	fa2,248(a5)
a0008a68:	ffffffff          	0xffffffff
a0008a6c:	ffefffff          	0xffefffff
a0008a70:	ffffffff          	0xffffffff
a0008a74:	7fefffff          	0x7fefffff
a0008a78:	0000                	unimp
a0008a7a:	0000                	unimp
a0008a7c:	cd65                	beqz	a0,a0008b74 <powers_of_10+0xec>
a0008a7e:	41cd                	li	gp,19
a0008a80:	0000                	unimp
a0008a82:	0000                	unimp
a0008a84:	cd65                	beqz	a0,a0008b7c <powers_of_10+0xf4>
a0008a86:	c1cd                	beqz	a1,a0008b28 <powers_of_10+0xa0>

a0008a88 <powers_of_10>:
a0008a88:	0000 0000 0000 3ff0 0000 0000 0000 4024     .......?......$@
a0008a98:	0000 0000 0000 4059 0000 0000 4000 408f     ......Y@.....@.@
a0008aa8:	0000 0000 8800 40c3 0000 0000 6a00 40f8     .......@.....j.@
a0008ab8:	0000 0000 8480 412e 0000 0000 12d0 4163     .......A......cA
a0008ac8:	0000 0000 d784 4197 0000 0000 cd65 41cd     .......A....e..A
a0008ad8:	0000 2000 a05f 4202 0000 e800 4876 4237     ... _..B....vH7B
a0008ae8:	0000 a200 1a94 426d 0000 e540 309c 42a2     ......mB..@..0.B
a0008af8:	0000 1e90 bcc4 42d6 0000 2634 6bf5 430c     .......B..4&.k.C
a0008b08:	8000 37e0 c379 4341 a000 85d8 3457 4376     ...7y.AC....W4vC
a0008b18:	6c74 6673 615f 6464 705f 6f6f 3a6c 4d20     tlsf_add_pool: M
a0008b28:	6d65 726f 2079 756d 7473 6220 2065 6c61     emory must be al
a0008b38:	6769 656e 2064 7962 2520 2075 7962 6574     igned by %u byte
a0008b48:	2e73 000a 6c74 6673 615f 6464 705f 6f6f     s...tlsf_add_poo
a0008b58:	3a6c 4d20 6d65 726f 2079 6973 657a 6d20     l: Memory size m
a0008b68:	7375 2074 6562 6220 7465 6577 6e65 2520     ust be between %
a0008b78:	2075 6e61 2064 7525 6220 7479 7365 0a2e     u and %u bytes..
a0008b88:	0000 0000 6c74 6673 635f 6572 7461 3a65     ....tlsf_create:
a0008b98:	4d20 6d65 726f 2079 756d 7473 6220 2065      Memory must be 
a0008ba8:	6c61 6769 656e 2064 6f74 2520 2075 7962     aligned to %u by
a0008bb8:	6574 2e73 000a 0000 0a0d 6863 6365 206b     tes.......check 
a0008bc8:	7562 6c69 5f64 6469 7720 7469 2068 7260     build_id with `r
a0008bd8:	7369 7663 3436 752d 6b6e 6f6e 6e77 652d     iscv64-unknown-e
a0008be8:	666c 722d 6165 6564 666c 2d20 206e 2e2a     lf-readelf -n *.
a0008bf8:	6c65 6066 6f20 7475 7570 2074 0a0d 0000     elf` output ....
a0008c08:	7562 6c69 5f64 6469 203a 3025 7832 3025     build_id: %02x%0
a0008c18:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0008c28:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0008c38:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0008c48:	7832 3025 7832 3025 7832 3025 7832 3025     2x%02x%02x%02x%0
a0008c58:	7832 3025 7832 3025 7832 0a0d 0000 0000     2x%02x%02x......
a0008c68:	7270 6465 6665 6e69 6465 0000 0a0d 2b2d     predefined....-+
a0008c78:	2b2d 2b2d 202d 4351 3743 7834 4320 524f     -+-+- QCC74x COR
a0008c88:	4445 4d55 2050 4e45 2044 2d2b 2d2b 2d2b     EDUMP END +-+-+-
a0008c98:	0d2b 000a 0a0d 2b2d 2b2d 2b2d 202d 4351     +.....-+-+-+- QC
a0008ca8:	3743 7834 4320 524f 4445 4d55 2050 3076     C74x COREDUMP v0
a0008cb8:	302e 312e 2b20 2b2d 2b2d 2b2d 0a0d 0000     .0.1 +-+-+-+....
a0008cc8:	0a0d 2d2d 2d2d 2d2d 4420 5441 2041 4542     ..------ DATA BE
a0008cd8:	4947 204e 0000 0000 2d20 2d2d 2d2d 0d2d     GIN .... ------.
a0008ce8:	000a 0000 0a0d 2d2d 2d2d 2d2d 4520 444e     ......------ END
a0008cf8:	0020 0000                                    ...

a0008cfc <g_encodingTable>:
a0008cfc:	4241 4443 4645 4847 4a49 4c4b 4e4d 504f     ABCDEFGHIJKLMNOP
a0008d0c:	5251 5453 5655 5857 5a59 6261 6463 6665     QRSTUVWXYZabcdef
a0008d1c:	6867 6a69 6c6b 6e6d 706f 7271 7473 7675     ghijklmnopqrstuv
a0008d2c:	7877 7a79 3130 3332 3534 3736 3938 2f2b     wxyz0123456789+/

a0008d3c <g_modTable>:
a0008d3c:	0000 0000 0002 0000 0001 0000               ............

a0008d48 <crc32Tab>:
a0008d48:	0000 0000 3096 7707 612c ee0e 51ba 9909     .....0.w,a...Q..
a0008d58:	c419 076d f48f 706a a535 e963 95a3 9e64     ..m...jp5.c...d.
a0008d68:	8832 0edb b8a4 79dc e91e e0d5 d988 97d2     2......y........
a0008d78:	4c2b 09b6 7cbd 7eb1 2d07 e7b8 1d91 90bf     +L...|.~.-......
a0008d88:	1064 1db7 20f2 6ab0 7148 f3b9 41de 84be     d.... .jHq...A..
a0008d98:	d47d 1ada e4eb 6ddd b551 f4d4 85c7 83d3     }......mQ.......
a0008da8:	9856 136c a8c0 646b f97a fd62 c9ec 8a65     V.l...kdz.b...e.
a0008db8:	5c4f 1401 6cd9 6306 3d63 fa0f 0df5 8d08     O\...l.cc=......
a0008dc8:	20c8 3b6e 105e 4c69 41e4 d560 7172 a267     . n;^.iL.A`.rqg.
a0008dd8:	e4d1 3c03 d447 4b04 85fd d20d b56b a50a     ...<G..K....k...
a0008de8:	a8fa 35b5 986c 42b2 c9d6 dbbb f940 acbc     ...5l..B....@...
a0008df8:	6ce3 32d8 5c75 45df 0dcf dcd6 3d59 abd1     .l.2u\.E....Y=..
a0008e08:	30ac 26d9 003a 51de 5180 c8d7 6116 bfd0     .0.&:..Q.Q...a..
a0008e18:	f4b5 21b4 c423 56b3 9599 cfba a50f b8bd     ...!#..V........
a0008e28:	b89e 2802 8808 5f05 d9b2 c60c e924 b10b     ...(..._....$...
a0008e38:	7c87 2f6f 4c11 5868 1dab c161 2d3d b666     .|o/.LhX..a.=-f.
a0008e48:	4190 76dc 7106 01db 20bc 98d2 102a efd5     .A.v.q... ..*...
a0008e58:	8589 71b1 b51f 06b6 e4a5 9fbf d433 e8b8     ...q........3...
a0008e68:	c9a2 7807 f934 0f00 a88e 9609 9818 e10e     ...x4...........
a0008e78:	0dbb 7f6a 3d2d 086d 6c97 9164 5c01 e663     ..j.-=m..ld..\c.
a0008e88:	51f4 6b6b 6162 1c6c 30d8 8565 004e f262     .Qkkbal..0e.N.b.
a0008e98:	95ed 6c06 a57b 1b01 f4c1 8208 c457 f50f     ...l{.......W...
a0008ea8:	d9c6 65b0 e950 12b7 b8ea 8bbe 887c fcb9     ...eP.......|...
a0008eb8:	1ddf 62dd 2d49 15da 7cf3 8cd3 4c65 fbd4     ...bI-...|..eL..
a0008ec8:	6158 4db2 51ce 3ab5 0074 a3bc 30e2 d4bb     Xa.M.Q.:t....0..
a0008ed8:	a541 4adf 95d7 3dd8 c46d a4d1 f4fb d3d6     A..J...=m.......
a0008ee8:	e96a 4369 d9fc 346e 8846 ad67 b8d0 da60     j.iC..n4F.g...`.
a0008ef8:	2d73 4404 1de5 3303 4c5f aa0a 7cc9 dd0d     s-.D...3_L...|..
a0008f08:	713c 5005 41aa 2702 1010 be0b 2086 c90c     <q.P.A.'..... ..
a0008f18:	b525 5768 85b3 206f d409 b966 e49f ce61     %.hW..o ..f...a.
a0008f28:	f90e 5ede c998 29d9 9822 b0d0 a8b4 c7d7     ...^...)".......
a0008f38:	3d17 59b3 0d81 2eb4 5c3b b7bd 6cad c0ba     .=.Y....;\...l..
a0008f48:	8320 edb8 b3b6 9abf e20c 03b6 d29a 74b1      ..............t
a0008f58:	4739 ead5 77af 9dd2 2615 04db 1683 73dc     9G...w...&.....s
a0008f68:	0b12 e363 3b84 9464 6a3e 0d6d 5aa8 7a6a     ..c..;d.>jm..Zjz
a0008f78:	cf0b e40e ff9d 9309 ae27 0a00 9eb1 7d07     ........'......}
a0008f88:	9344 f00f a3d2 8708 f268 1e01 c2fe 6906     D.......h......i
a0008f98:	575d f762 67cb 8065 3671 196c 06e7 6e6b     ]Wb..ge.q6l...kn
a0008fa8:	1b76 fed4 2be0 89d3 7a5a 10da 4acc 67dd     v....+..Zz...J.g
a0008fb8:	df6f f9b9 eff9 8ebe be43 17b7 8ed5 60b0     o.......C......`
a0008fc8:	a3e8 d6d6 937e a1d1 c2c4 38d8 f252 4fdf     ....~......8R..O
a0008fd8:	67f1 d1bb 5767 a6bc 06dd 3fb5 364b 48b2     .g..gW.....?K6.H
a0008fe8:	2bda d80d 1b4c af0a 4af6 3603 7a60 4104     .+..L....J.6`z.A
a0008ff8:	efc3 df60 df55 a867 8eef 316e be79 4669     ..`.U.g...n1y.iF
a0009008:	b38c cb61 831a bc66 d2a0 256f e236 5268     ..a...f...o%6.hR
a0009018:	7795 cc0c 4703 bb0b 16b9 2202 262f 5505     .w...G....."/&.U
a0009028:	3bbe c5ba 0b28 b2bd 5a92 2bb4 6a04 5cb3     .;..(....Z.+.j.\
a0009038:	ffa7 c2d7 cf31 b5d0 9e8b 2cd9 ae1d 5bde     ....1......,...[
a0009048:	c2b0 9b64 f226 ec63 a39c 756a 930a 026d     ..d.&.c...ju..m.
a0009058:	06a9 9c09 363f eb0e 6785 7207 5713 0500     ....?6...g.r.W..
a0009068:	4a82 95bf 7a14 e2b8 2bae 7bb1 1b38 0cb6     .J...z...+.{8...
a0009078:	8e9b 92d2 be0d e5d5 efb7 7cdc df21 0bdb     ...........|!...
a0009088:	d2d4 86d3 e242 f1d4 b3f8 68dd 836e 1fda     ....B......hn...
a0009098:	16cd 81be 265b f6b9 77e1 6fb0 4777 18b7     ....[&...w.owG..
a00090a8:	5ae6 8808 6a70 ff0f 3bca 6606 0b5c 1101     .Z..pj...;.f\...
a00090b8:	9eff 8f65 ae69 f862 ffd3 616b cf45 166c     ..e.i.b...kaE.l.
a00090c8:	e278 a00a d2ee d70d 8354 4e04 b3c2 3903     x.......T..N...9
a00090d8:	2661 a767 16f7 d060 474d 4969 77db 3e6e     a&g...`.MGiI.wn>
a00090e8:	6a4a aed1 5adc d9d6 0b66 40df 3bf0 37d8     Jj...Z..f..@.;.7
a00090f8:	ae53 a9bc 9ec5 debb cf7f 47b2 ffe9 30b5     S..........G...0
a0009108:	f21c bdbd c28a caba 9330 53b3 a3a6 24b4     ........0..S...$
a0009118:	3605 bad0 0693 cdd7 5729 54de 67bf 23d9     .6......)W.T.g.#
a0009128:	7a2e b366 4ab8 c461 1b02 5d68 2b94 2a6f     .zf..Ja...h].+o*
a0009138:	be37 b40b 8ea1 c30c df1b 5a05 ef8d 2d02     7..........Z...-

a0009148 <hex_asc_upper>:
a0009148:	3130 3332 3534 3736 3938 4241 4443 4645     0123456789ABCDEF
a0009158:	0000 0000 0000 4720 0000 c2e8 1893 40f8     ...... G.......@
a0009168:	7269 2071 253a 2064 6e75 6572 6967 7473     irq :%d unregist
a0009178:	7265 6465 0a0d 0000 6164 0063 6665 635f     ered....dac.ef_c
a0009188:	7274 006c 6175 7472 0030 0000 7073 3069     trl.uart0...spi0
a0009198:	0000 0000 7770 5f6d 3276 305f 0000 0000     ....pwm_v2_0....
a00091a8:	6d64 3061 635f 3068 0000 0000 6d64 3061     dma0_ch0....dma0
a00091b8:	635f 3168 0000 0000 6d64 3061 635f 3268     _ch1....dma0_ch2
a00091c8:	0000 0000 6d64 3061 635f 3368 0000 0000     ....dma0_ch3....
a00091d8:	3269 3163 0000 0000 3269 3073 0000 0000     i2c1....i2s0....
a00091e8:	6974 656d 3072 0000 6974 656d 3172 0000     timer0..timer1..
a00091f8:	7472 0063 6561 0073 6873 0061 7274 676e     rtc.aes.sha.trng
a0009208:	0000 0000 6b70 0061 6d65 6361 0030 0000     ....pka.emac0...
a0009218:	6177 6374 6468 676f 0000 0000 6b63 0073     watchdog....cks.
a0009228:	6a6d 6570 0067 0000 7269 7872 0000 0000     mjpeg...irrx....
a0009238:	6163 306d 0000 0000 6163 316d 0000 0000     cam0....cam1....
a0009248:	7561 6461 0063 0000 7561 6164 0063 0000     auadc...audac...
a0009258:	6473 6f69 0032 0000 6473 0068 6264 0069     sdio2...sdh.dbi.
a0009268:	6c70 6d66 645f 616d 635f 3068 0000 0000     plfm_dma_ch0....
a0009278:	6c70 6d66 645f 616d 635f 3168 0000 0000     plfm_dma_ch1....
a0009288:	6c70 6d66 645f 616d 635f 3268 0000 0000     plfm_dma_ch2....
a0009298:	6c70 6d66 645f 616d 635f 3368 0000 0000     plfm_dma_ch3....
a00092a8:	6c70 6d66 645f 616d 635f 3468 0000 0000     plfm_dma_ch4....
a00092b8:	6f77 0000 7375 5f62 3276 0000 6e49 7473     wo..usb_v2..Inst
a00092c8:	7572 7463 6f69 206e 6461 7264 7365 2073     ruction address 
a00092d8:	696d 6173 696c 6e67 6465 0000 6e49 7473     misaligned..Inst
a00092e8:	7572 7463 6f69 206e 6361 6563 7373 6620     ruction access f
a00092f8:	7561 746c 0000 0000 6c49 656c 6167 206c     ault....Illegal 
a0009308:	6e69 7473 7572 7463 6f69 006e 7242 6165     instruction.Brea
a0009318:	706b 696f 746e 0000 6f4c 6461 6120 6464     kpoint..Load add
a0009328:	6572 7373 6d20 7369 6c61 6769 656e 0064     ress misaligned.
a0009338:	6f4c 6461 6120 6363 7365 2073 6166 6c75     Load access faul
a0009348:	0074 0000 7453 726f 2f65 4d41 204f 6461     t...Store/AMO ad
a0009358:	7264 7365 2073 696d 6173 696c 6e67 6465     dress misaligned
a0009368:	0000 0000 7453 726f 2f65 4d41 204f 6361     ....Store/AMO ac
a0009378:	6563 7373 6620 7561 746c 0000 6e45 6976     cess fault..Envi
a0009388:	6f72 6d6e 6e65 2074 6163 6c6c 6620 6f72     ronment call fro
a0009398:	206d 2d55 6f6d 6564 0000 0000 6e45 6976     m U-mode....Envi
a00093a8:	6f72 6d6e 6e65 2074 6163 6c6c 6620 6f72     ronment call fro
a00093b8:	206d 2d53 6f6d 6564 0000 0000 5352 4456     m S-mode....RSVD
a00093c8:	0000 0000 6e45 6976 6f72 6d6e 6e65 2074     ....Environment 
a00093d8:	6163 6c6c 6620 6f72 206d 2d4d 6f6d 6564     call from M-mode
a00093e8:	0000 0000 6e49 7473 7572 7463 6f69 206e     ....Instruction 
a00093f8:	6170 6567 6620 7561 746c 0000 6f4c 6461     page fault..Load
a0009408:	7020 6761 2065 6166 6c75 0074 7453 726f      page fault.Stor
a0009418:	2f65 4d41 204f 6170 6567 6620 7561 746c     e/AMO page fault
a0009428:	0000 0000 7865 6563 7470 6f69 5f6e 6e65     ....exception_en
a0009438:	7274 0d79 000a 0000 636d 7561 6573 253d     try.....mcause=%
a0009448:	3830 0d78 000a 0000 656d 6370 253a 3830     08x.....mepc:%08
a0009458:	0d78 000a 746d 6176 3a6c 3025 7838 0a0d     x...mtval:%08x..
a0009468:	0000 0000 7325 0a0d 0000 0000 92c4 a000     ....%s..........
a0009478:	92e4 a000 9300 a000 9314 a000 9320 a000     ............ ...
a0009488:	9338 a000 934c a000 936c a000 9384 a000     8...L...l.......
a0009498:	93a4 a000 93c4 a000 93cc a000 93ec a000     ................
a00094a8:	9404 a000 93c4 a000 9414 a000               ............

a00094b4 <CSWTCH.86>:
a00094b4:	0000 0000 3600 016e 4800 01e8 f000 0249     .....6n..H....I.
a00094c4:	5a00 0262 ba80 018c 4800 01e8 4651 344e     .Zb......H..QFN4
a00094d4:	0030 0000 4651 344e 4d30 0000 4651 354e     0...QFN40M..QFN5
a00094e4:	0036 0000 5245 4f52 0052 0000 4f4e 0000     6...ERROR...NO..
a00094f4:	4d32 0042 4d34 0042 4d38 0042 4257 345f     2MB.4MB.8MB.WB_4
a0009504:	424d 0000 4257 385f 424d 0000 4257 315f     MB..WB_8MB..WB_1
a0009514:	4d36 0042 5353 0000 5425 2b54 0000 0000     6MB.SS..%TT+....
a0009524:	5325 0053 5454 0000 4625 0046 4646 0000     %SS.TT..%FF.FF..
a0009534:	646c 316f 0035 0000 7069 6174 0074 0000     ldo15...iptat...
a0009544:	6369 0078 6364 6364 745f 6972 006d 0000     icx.dcdc_trim...
a0009554:	646c 316f 5f38 6573 006c 0000 646c 316f     ldo18_sel...ldo1
a0009564:	5f38 7274 6d69 0000 646c 336f 5f33 7274     8_trim..ldo33_tr
a0009574:	6d69 0000 646c 316f 5f31 6974 6d72 0000     im..ldo11_tirm..
a0009584:	6372 3233 006d 0000 7068 705f 666f 7366     rc32m...hp_poffs
a0009594:	7465 0030 7068 705f 666f 7366 7465 0031     et0.hp_poffset1.
a00095a4:	7068 705f 666f 7366 7465 0032 706c 705f     hp_poffset2.lp_p
a00095b4:	666f 7366 7465 0030 706c 705f 666f 7366     offset0.lp_poffs
a00095c4:	7465 0031 706c 705f 666f 7366 7465 0032     et1.lp_poffset2.
a00095d4:	7a62 705f 666f 7366 7465 0030 7a62 705f     bz_poffset0.bz_p
a00095e4:	666f 7366 7465 0031 7a62 705f 666f 7366     offset1.bz_poffs
a00095f4:	7465 0032 6d74 5f70 706d 0030 6d74 5f70     et2.tmp_mp0.tmp_
a0009604:	706d 0031 6d74 5f70 706d 0032 7561 6461     mp1.tmp_mp2.auad
a0009614:	5f63 6167 6e69 0000 7561 6461 5f63 666f     c_gain..auadc_of
a0009624:	7366 7465 0000 0000 7370 6172 5f6d 7274     fset....psram_tr
a0009634:	6d69 0000 6372 3233 006b 0000 7478 6c61     im..rc32k...xtal
a0009644:	0030 0000 7478 6c61 0031 0000 7478 6c61     0...xtal1...xtal
a0009654:	0032 0000 6364 6364 645f 7369 0000 0000     2...dcdc_dis....
a0009664:	6364 6364 765f 756f 0074 0000 646c 316f     dcdc_vout...ldo1
a0009674:	5f38 7962 6170 7373 0000 0000 7375 3262     8_bypass....usb2
a0009684:	0030 0000 7067 6461 5f63 6167 6e69 0000     0...gpadc_gain..
a0009694:	7374 6e65 0000 0000 0000 3a00               tsen.......:

a00096a0 <trim_list>:
a00096a0:	9534 a000 035f 035e 035b 0003 953c a000     4..._.^.[...<...
a00096b0:	03bf 03be 0356 0005 9544 a000 03bd 03bc     ....V...D.......
a00096c0:	03b6 0006 9548 a000 03df 03de 03da 0004     ....H...........
a00096d0:	9554 a000 03d9 03d8 03d4 0004 9560 a000     T...........`...
a00096e0:	03d3 03d2 03ce 0004 956c a000 03cd 03cc     ........l.......
a00096f0:	03c8 0004 9578 a000 03c7 03c6 03c2 0004     ....x...........
a0009700:	9584 a000 03c1 03c0 03e4 0008 958c a000     ................
a0009710:	067a 060f 0600 000f 9598 a000 067b 061f     z...........{...
a0009720:	0610 000f 95a4 a000 067c 062f 0620 000f     ........|./. ...
a0009730:	95b0 a000 067d 063f 0630 000f 95bc a000     ....}.?.0.......
a0009740:	067e 064f 0640 000f 95c8 a000 067f 065f     ~.O.@........._.
a0009750:	0650 000f 95d4 a000 069a 0679 0660 0019     P.........y.`...
a0009760:	95e0 a000 069b 0699 0680 0019 95ec a000     ................
a0009770:	069c 06b9 06a0 0019 95f8 a000 06c9 06c8     ................
a0009780:	06c0 0008 9600 a000 06d3 06d2 06ca 0008     ................
a0009790:	9608 a000 06dd 06dc 06d4 0008 9610 a000     ................
a00097a0:	06f9 06f8 06e0 0018 961c a000 0719 0718     ................
a00097b0:	0700 0018 962c a000 074c 074b 0740 000b     ....,...L.K.@...
a00097c0:	9638 a000 0773 0772 0768 000a 9640 a000     8...s.r.h...@...
a00097d0:	0767 0766 0760 0006 9648 a000 079f 079e     g.f.`...H.......
a00097e0:	07ba 0006 9650 a000 079d 079c 07b4 0006     ....P...........
a00097f0:	9688 a000 079b 079a 078e 000c 9694 a000     ................
a0009800:	078d 078c 0780 000c 9658 a000 07b3 07b2     ........X.......
a0009810:	07b1 0001 9664 a000 07b0 07af 07aa 0005     ....d...........
a0009820:	9670 a000 07a9 07a8 07a4 0001 9680 a000     p...............
a0009830:	07cf 07ce 07c8 0006 5753 6920 616d 6567     ........SW image
a0009840:	693a 6332 315f 5f30 6962 5f74 6371 3763     :i2c_10_bit_qcc7
a0009850:	7834 6b64 0000 0000 6f63 706d 6c69 5f65     4xdk....compile_
a0009860:	6974 656d 463a 6265 2020 2033 3032 3632     time:Feb  3 2026
a0009870:	3120 3a34 3034 303a 0035 0000 6f63 706d      14:40:05...comp
a0009880:	6e6f 6e65 5f74 6576 7372 6f69 5f6e 6473     onent_version_sd
a0009890:	5f6b 2e32 2e30 3739 0000 0000 6546 2062     k_2.0.97....Feb 
a00098a0:	3320 3220 3230 0036 3431 343a 3a30 3630      3 2026.14:40:06
a00098b0:	0000 0000 7542 6c69 3a64 7325 252c 0d73     ....Build:%s,%s.
a00098c0:	000a 0000 6556 7372 6f69 206e 666f 7520     ....Version of u
a00098d0:	6573 2064 6f63 706d 6e6f 6e65 7374 0d3a     sed components:.
a00098e0:	000a 0000 5609 7265 6973 6e6f 203a 0000     .....Version: ..
a00098f0:	3d3d 3d3d 3d3d 3d3d 6320 6968 2070 6e69     ======== chip in
a0009900:	6f66 3d20 3d3d 3d3d 3d3d 0d3d 000a 0000     fo ========.....
a0009910:	6170 6b63 6761 2065 2020 2020 2020 2020     package         
a0009920:	2520 0d73 000a 0000 6c66 7361 5f68 6e69      %s.....flash_in
a0009930:	6f66 2020 2020 2020 2520 0d73 000a 0000     fo       %s.....
a0009940:	7370 6172 5f6d 6e69 6f66 2020 2020 2020     psram_info      
a0009950:	2520 0d73 000a 0000 6576 7372 6f69 206e      %s.....version 
a0009960:	2020 2020 2020 2020 4120 6425 0a0d 0000              A%d....
a0009970:	736f 6963 6c6c 7461 726f 0000 7263 7379     oscillator..crys
a0009980:	6174 006c 7370 6172 206d 6164 6174 6120     tal.psram data a
a0009990:	726c 6165 7964 6520 6978 7473 2c73 7020     lready exists, p
a00099a0:	656c 7361 2065 6e65 6261 656c 4320 4e4f     lease enable CON
a00099b0:	4946 5f47 5350 4152 0d4d 000a 7964 616e     FIG_PSRAM...dyna
a00099c0:	696d 2063 656d 6f6d 7972 6920 696e 2074     mic memory init 
a00099d0:	7573 6363 7365 2c73 6f20 7263 6d61 6820     success, ocram h
a00099e0:	6165 2070 6973 657a 3d20 2520 2064 624b     eap size = %d Kb
a00099f0:	7479 2065 0a0d 0000 6c66 7361 2068 6e69     yte ....flash in
a0009a00:	7469 6620 6961 216c 2121 0a0d 0000 0000     it fail!!!......
a0009a10:	6175 7472 2020 6973 3167 253a 3830 2c78     uart  sig1:%08x,
a0009a20:	7320 6769 3a32 3025 7838 0a0d 0000 0000      sig2:%08x......
a0009a30:	6c63 636f 206b 6567 316e 253a 3830 2c78     clock gen1:%08x,
a0009a40:	6720 6e65 3a32 3025 7838 0a0d 0000 0000      gen2:%08x......
a0009a50:	7478 6c61 253a 4864 287a 7325 0d29 000a     xtal:%dHz(%s)...
a0009a60:	6f62 7261 2064 6e69 7469 6420 6e6f 0d65     board init done.
a0009a70:	000a 0000 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d     ....============
a0009a80:	3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 3d3d 0d3d     ===============.
a0009a90:	000a 0000 27a4 a000 29b6 a000 27a0 a000     .....'...)...'..
a0009aa0:	29b6 a000 29a6 a000 29b6 a000 27a0 a000     .)...)...)...'..
a0009ab0:	27a8 a000 27a8 a000 29a6 a000 27a0 a000     .'...'...)...'..
a0009ac0:	2784 a000 2784 a000 2784 a000 27b2 a000     .'...'...'...'..
a0009ad0:	2f82 a000 2f82 a000 2f9a a000 2f7c a000     ./.../.../..|/..
a0009ae0:	2f7c a000 2d94 a000 2f9a a000 2f7c a000     |/...-.../..|/..
a0009af0:	2d94 a000 2f7c a000 2f9a a000 2f7a a000     .-..|/.../..z/..
a0009b00:	2f7a a000 2f7a a000 315c a000               z/..z/..\1..

a0009b0c <__clz_tab>:
a0009b0c:	0100 0202 0303 0303 0404 0404 0404 0404     ................
a0009b1c:	0505 0505 0505 0505 0505 0505 0505 0505     ................
a0009b2c:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a0009b3c:	0606 0606 0606 0606 0606 0606 0606 0606     ................
a0009b4c:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0009b5c:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0009b6c:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0009b7c:	0707 0707 0707 0707 0707 0707 0707 0707     ................
a0009b8c:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009b9c:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009bac:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009bbc:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009bcc:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009bdc:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009bec:	0808 0808 0808 0808 0808 0808 0808 0808     ................
a0009bfc:	0808 0808 0808 0808 0808 0808 0808 0808     ................

a0009c0c <__init_array_end>:
a0009c0c:	0400                	addi	s0,sp,512
a0009c0e:	62fc                	flw	fa5,68(a3)
a0009c10:	fc00                	fsw	fs0,56(s0)
a0009c12:	0006                	c.slli	zero,0x1
a0009c14:	0400                	addi	s0,sp,512
a0009c16:	22fc                	fld	fa5,192(a3)
a0009c18:	0000                	unimp
a0009c1a:	0000                	unimp
a0009c1c:	0000                	unimp
a0009c1e:	80002303          	lw	t1,-2048(zero) # fffff800 <__psram_limit+0x57bff800>
a0009c22:	0000                	unimp
a0009c24:	0000                	unimp
a0009c26:	2801                	jal	a0009c36 <__nocache_ram_load_addr+0x2>
a0009c28:	0000                	unimp
a0009c2a:	0000                	unimp
a0009c2c:	ffffffff          	0xffffffff
a0009c30:	ffffffff          	0xffffffff

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
62fc0516:	3a10006f          	j	62fc10b6 <arch_delay_us>

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
62fc054a:	36d000ef          	jal	ra,62fc10b6 <arch_delay_us>
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
62fc05aa:	2951                	jal	62fc0a3e <qcc74x_irq_save>
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
62fc05c2:	a151                	j	62fc0a46 <qcc74x_irq_restore>
62fc05c4:	00f59363          	bne	a1,a5,62fc05ca <qcc74x_ef_ctrl_read_direct+0x4a>
62fc05c8:	4481                	li	s1,0
62fc05ca:	c63a                	sw	a4,12(sp)
62fc05cc:	298d                	jal	62fc0a3e <qcc74x_irq_save>
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
62fc061c:	210d                	jal	62fc0a3e <qcc74x_irq_save>
62fc061e:	46b2                	lw	a3,12(sp)
62fc0620:	892a                	mv	s2,a0
62fc0622:	c299                	beqz	a3,62fc0628 <qcc74x_ef_ctrl_read_common_trim+0x2a>
62fc0624:	8556                	mv	a0,s5
62fc0626:	3dd5                	jal	62fc051a <qcc74x_ef_ctrl_load_efuse_r0>
62fc0628:	67c1                	lui	a5,0x10
62fc062a:	c09c                	sw	a5,0(s1)
62fc062c:	0868                	addi	a0,sp,28
62fc062e:	3d048097          	auipc	ra,0x3d048
62fc0632:	b7c080e7          	jalr	-1156(ra) # a00081aa <qcc74x_ef_ctrl_get_common_trim_list>
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
62fc06e6:	fff50413          	addi	s0,a0,-1
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
62fc070c:	2e2d                	jal	62fc0a46 <qcc74x_irq_restore>
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

62fc076c <qcc74x_uart_putchar>:
62fc076c:	1101                	addi	sp,sp,-32
62fc076e:	cc22                	sw	s0,24(sp)
62fc0770:	ca26                	sw	s1,20(sp)
62fc0772:	c84a                	sw	s2,16(sp)
62fc0774:	c64e                	sw	s3,12(sp)
62fc0776:	c452                	sw	s4,8(sp)
62fc0778:	4144                	lw	s1,4(a0)
62fc077a:	ce06                	sw	ra,28(sp)
62fc077c:	842e                	mv	s0,a1
62fc077e:	2685                	jal	62fc0ade <qcc74x_mtimer_get_time_ms>
62fc0780:	892a                	mv	s2,a0
62fc0782:	89ae                	mv	s3,a1
62fc0784:	06400a13          	li	s4,100
62fc0788:	0844a783          	lw	a5,132(s1)
62fc078c:	03f7f793          	andi	a5,a5,63
62fc0790:	cf91                	beqz	a5,62fc07ac <qcc74x_uart_putchar+0x40>
62fc0792:	0ff47413          	zext.b	s0,s0
62fc0796:	08848423          	sb	s0,136(s1)
62fc079a:	4501                	li	a0,0
62fc079c:	40f2                	lw	ra,28(sp)
62fc079e:	4462                	lw	s0,24(sp)
62fc07a0:	44d2                	lw	s1,20(sp)
62fc07a2:	4942                	lw	s2,16(sp)
62fc07a4:	49b2                	lw	s3,12(sp)
62fc07a6:	4a22                	lw	s4,8(sp)
62fc07a8:	6105                	addi	sp,sp,32
62fc07aa:	8082                	ret
62fc07ac:	2e0d                	jal	62fc0ade <qcc74x_mtimer_get_time_ms>
62fc07ae:	c3251577          	sub64	a0,a0,s2
62fc07b2:	e199                	bnez	a1,62fc07b8 <qcc74x_uart_putchar+0x4c>
62fc07b4:	fcaa7ae3          	bgeu	s4,a0,62fc0788 <qcc74x_uart_putchar+0x1c>
62fc07b8:	f8c00513          	li	a0,-116
62fc07bc:	b7c5                	j	62fc079c <qcc74x_uart_putchar+0x30>

62fc07be <qcc74x_uart_put>:
62fc07be:	1141                	addi	sp,sp,-16
62fc07c0:	c422                	sw	s0,8(sp)
62fc07c2:	c226                	sw	s1,4(sp)
62fc07c4:	c04a                	sw	s2,0(sp)
62fc07c6:	c606                	sw	ra,12(sp)
62fc07c8:	892a                	mv	s2,a0
62fc07ca:	842e                	mv	s0,a1
62fc07cc:	00c584b3          	add	s1,a1,a2
62fc07d0:	00941463          	bne	s0,s1,62fc07d8 <qcc74x_uart_put+0x1a>
62fc07d4:	4501                	li	a0,0
62fc07d6:	a039                	j	62fc07e4 <qcc74x_uart_put+0x26>
62fc07d8:	9814458b          	lbuia	a1,(s0),1,0
62fc07dc:	854a                	mv	a0,s2
62fc07de:	3779                	jal	62fc076c <qcc74x_uart_putchar>
62fc07e0:	fe0558e3          	bgez	a0,62fc07d0 <qcc74x_uart_put+0x12>
62fc07e4:	40b2                	lw	ra,12(sp)
62fc07e6:	4422                	lw	s0,8(sp)
62fc07e8:	4492                	lw	s1,4(sp)
62fc07ea:	4902                	lw	s2,0(sp)
62fc07ec:	0141                	addi	sp,sp,16
62fc07ee:	8082                	ret

62fc07f0 <flash_get_size_from_jedecid>:
62fc07f0:	01051793          	slli	a5,a0,0x10
62fc07f4:	00ff0737          	lui	a4,0xff0
62fc07f8:	8ff9                	and	a5,a5,a4
62fc07fa:	6741                	lui	a4,0x10
62fc07fc:	f0070713          	addi	a4,a4,-256 # ff00 <wifi_ram_max_size+0x7f00>
62fc0800:	8f69                	and	a4,a4,a0
62fc0802:	8fd9                	or	a5,a5,a4
62fc0804:	5d05350b          	extu	a0,a0,23,16
62fc0808:	953e                	add	a0,a0,a5
62fc080a:	c519                	beqz	a0,62fc0818 <flash_get_size_from_jedecid+0x28>
62fc080c:	897d                	andi	a0,a0,31
62fc080e:	1535                	addi	a0,a0,-19
62fc0810:	000807b7          	lui	a5,0x80
62fc0814:	00a79533          	sll	a0,a5,a0
62fc0818:	8082                	ret

62fc081a <qcc74x_flash_set_cmds.constprop.0>:
62fc081a:	010107b7          	lui	a5,0x1010
62fc081e:	1101                	addi	sp,sp,-32
62fc0820:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc0824:	c43e                	sw	a5,8(sp)
62fc0826:	47a5                	li	a5,9
62fc0828:	00f10623          	sb	a5,12(sp)
62fc082c:	85c1c783          	lbu	a5,-1956(gp) # 62fc1bd4 <g_flash_cfg>
62fc0830:	ce06                	sw	ra,28(sp)
62fc0832:	4711                	li	a4,4
62fc0834:	8bfd                	andi	a5,a5,31
62fc0836:	00e79763          	bne	a5,a4,62fc0844 <qcc74x_flash_set_cmds.constprop.0+0x2a>
62fc083a:	4789                	li	a5,2
62fc083c:	00f105a3          	sb	a5,11(sp)
62fc0840:	00f10623          	sb	a5,12(sp)
62fc0844:	0028                	addi	a0,sp,8
62fc0846:	4581                	li	a1,0
62fc0848:	2939                	jal	62fc0c66 <qcc74x_sf_ctrl_cmds_set>
62fc084a:	40f2                	lw	ra,28(sp)
62fc084c:	6105                	addi	sp,sp,32
62fc084e:	8082                	ret

62fc0850 <flash_set_l1c_wrap.constprop.0>:
62fc0850:	85c1c783          	lbu	a5,-1956(gp) # 62fc1bd4 <g_flash_cfg>
62fc0854:	4711                	li	a4,4
62fc0856:	85c18513          	addi	a0,gp,-1956 # 62fc1bd4 <g_flash_cfg>
62fc085a:	8bfd                	andi	a5,a5,31
62fc085c:	00e79363          	bne	a5,a4,62fc0862 <flash_set_l1c_wrap.constprop.0+0x12>
62fc0860:	a995                	j	62fc0cd4 <qcc74x_sflash_set_burst_wrap>
62fc0862:	a991                	j	62fc0cb6 <qcc74x_sflash_disable_burst_wrap>

62fc0864 <flash_set_qspi_enable.constprop.0>:
62fc0864:	85c1c783          	lbu	a5,-1956(gp) # 62fc1bd4 <g_flash_cfg>
62fc0868:	8bbd                	andi	a5,a5,15
62fc086a:	17f9                	addi	a5,a5,-2
62fc086c:	0fd7f793          	andi	a5,a5,253
62fc0870:	e781                	bnez	a5,62fc0878 <flash_set_qspi_enable.constprop.0+0x14>
62fc0872:	85c18513          	addi	a0,gp,-1956 # 62fc1bd4 <g_flash_cfg>
62fc0876:	a10d                	j	62fc0c98 <qcc74x_sflash_qspi_enable>
62fc0878:	8082                	ret

62fc087a <flash2_init.isra.0>:
62fc087a:	7179                	addi	sp,sp,-48
62fc087c:	4785                	li	a5,1
62fc087e:	ca3e                	sw	a5,20(sp)
62fc0880:	cc3e                	sw	a5,24(sp)
62fc0882:	10300793          	li	a5,259
62fc0886:	00f11e23          	sh	a5,28(sp)
62fc088a:	010107b7          	lui	a5,0x1010
62fc088e:	10178793          	addi	a5,a5,257 # 1010101 <remain_wifi_ram+0xff0101>
62fc0892:	c63e                	sw	a5,12(sp)
62fc0894:	47a5                	li	a5,9
62fc0896:	00f10823          	sb	a5,16(sp)
62fc089a:	62fc37b7          	lui	a5,0x62fc3
62fc089e:	f117c703          	lbu	a4,-239(a5) # 62fc2f11 <device_info+0x1>
62fc08a2:	d606                	sw	ra,44(sp)
62fc08a4:	d422                	sw	s0,40(sp)
62fc08a6:	d226                	sw	s1,36(sp)
62fc08a8:	d04a                	sw	s2,32(sp)
62fc08aa:	c402                	sw	zero,8(sp)
62fc08ac:	478d                	li	a5,3
62fc08ae:	06f71b63          	bne	a4,a5,62fc0924 <flash2_init.isra.0+0xaa>
62fc08b2:	084c                	addi	a1,sp,20
62fc08b4:	03400513          	li	a0,52
62fc08b8:	2e41                	jal	62fc0c48 <qcc74x_sf_cfg_sbus2_flash_init>
62fc08ba:	4505                	li	a0,1
62fc08bc:	2e55                	jal	62fc0c70 <qcc74x_sf_ctrl_sbus2_replace>
62fc08be:	4785                	li	a5,1
62fc08c0:	4701                	li	a4,0
62fc08c2:	80818693          	addi	a3,gp,-2040 # 62fc1b80 <g_flash2_cfg>
62fc08c6:	4601                	li	a2,0
62fc08c8:	03400593          	li	a1,52
62fc08cc:	4501                	li	a0,0
62fc08ce:	80818913          	addi	s2,gp,-2040 # 62fc1b80 <g_flash2_cfg>
62fc08d2:	2915                	jal	62fc0d06 <qcc74x_sf_cfg_flash_identify_ext>
62fc08d4:	04055863          	bgez	a0,62fc0924 <flash2_init.isra.0+0xaa>
62fc08d8:	47c5                	li	a5,17
62fc08da:	00f91023          	sh	a5,0(s2)
62fc08de:	002c                	addi	a1,sp,8
62fc08e0:	57fd                	li	a5,-1
62fc08e2:	80818513          	addi	a0,gp,-2040 # 62fc1b80 <g_flash2_cfg>
62fc08e6:	02f90f23          	sb	a5,62(s2)
62fc08ea:	2ed9                	jal	62fc0cc0 <qcc74x_sflash_get_jedecid>
62fc08ec:	47a2                	lw	a5,8(sp)
62fc08ee:	01000737          	lui	a4,0x1000
62fc08f2:	177d                	addi	a4,a4,-1
62fc08f4:	62fc3437          	lui	s0,0x62fc3
62fc08f8:	8ff9                	and	a5,a5,a4
62fc08fa:	4585                	li	a1,1
62fc08fc:	0068                	addi	a0,sp,12
62fc08fe:	f3840413          	addi	s0,s0,-200 # 62fc2f38 <g_jedec_id2>
62fc0902:	c43e                	sw	a5,8(sp)
62fc0904:	c01c                	sw	a5,0(s0)
62fc0906:	2685                	jal	62fc0c66 <qcc74x_sf_ctrl_cmds_set>
62fc0908:	00094583          	lbu	a1,0(s2)
62fc090c:	4685                	li	a3,1
62fc090e:	4601                	li	a2,0
62fc0910:	89bd                	andi	a1,a1,15
62fc0912:	80818513          	addi	a0,gp,-2040 # 62fc1b80 <g_flash2_cfg>
62fc0916:	2a39                	jal	62fc0a34 <qcc74x_sflash_xip_read_enable>
62fc0918:	e511                	bnez	a0,62fc0924 <flash2_init.isra.0+0xaa>
62fc091a:	2685                	jal	62fc0c7a <qcc74x_sf_ctrl_sbus2_revoke_replace>
62fc091c:	4008                	lw	a0,0(s0)
62fc091e:	3dc9                	jal	62fc07f0 <flash_get_size_from_jedecid>
62fc0920:	80a1a223          	sw	a0,-2044(gp) # 62fc1b7c <flash2_size>
62fc0924:	50b2                	lw	ra,44(sp)
62fc0926:	5422                	lw	s0,40(sp)
62fc0928:	5492                	lw	s1,36(sp)
62fc092a:	5902                	lw	s2,32(sp)
62fc092c:	6145                	addi	sp,sp,48
62fc092e:	8082                	ret

62fc0930 <qcc74x_flash_init>:
62fc0930:	62fc3537          	lui	a0,0x62fc3
62fc0934:	7139                	addi	sp,sp,-64
62fc0936:	f1050513          	addi	a0,a0,-240 # 62fc2f10 <device_info>
62fc093a:	de06                	sw	ra,60(sp)
62fc093c:	dc22                	sw	s0,56(sp)
62fc093e:	da26                	sw	s1,52(sp)
62fc0940:	d64e                	sw	s3,44(sp)
62fc0942:	d452                	sw	s4,40(sp)
62fc0944:	d84a                	sw	s2,48(sp)
62fc0946:	d256                	sw	s5,36(sp)
62fc0948:	ca02                	sw	zero,20(sp)
62fc094a:	035000ef          	jal	ra,62fc117e <qcc74x_efuse_get_device_info>
62fc094e:	2be5                	jal	62fc0f46 <GLB_Get_Flash_Id_Value>
62fc0950:	62fc3437          	lui	s0,0x62fc3
62fc0954:	62fc29b7          	lui	s3,0x62fc2
62fc0958:	ca2a                	sw	a0,20(sp)
62fc095a:	85c18a13          	addi	s4,gp,-1956 # 62fc1bd4 <g_flash_cfg>
62fc095e:	f3440413          	addi	s0,s0,-204 # 62fc2f34 <g_jedec_id>
62fc0962:	b7898993          	addi	s3,s3,-1160 # 62fc1b78 <__tcm_code_end__>
62fc0966:	c121                	beqz	a0,62fc09a6 <qcc74x_flash_init+0x76>
62fc0968:	4681                	li	a3,0
62fc096a:	4601                	li	a2,0
62fc096c:	85c18593          	addi	a1,gp,-1956 # 62fc1bd4 <g_flash_cfg>
62fc0970:	299d                	jal	62fc0de6 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc0972:	892a                	mv	s2,a0
62fc0974:	e90d                	bnez	a0,62fc09a6 <qcc74x_flash_init+0x76>
62fc0976:	4552                	lw	a0,20(sp)
62fc0978:	c008                	sw	a0,0(s0)
62fc097a:	00aa06a3          	sb	a0,13(s4)
62fc097e:	c62a                	sw	a0,12(sp)
62fc0980:	3d046097          	auipc	ra,0x3d046
62fc0984:	2e0080e7          	jalr	736(ra) # a0006c60 <flash_get_clock_delay.constprop.0.isra.0>
62fc0988:	4532                	lw	a0,12(sp)
62fc098a:	359d                	jal	62fc07f0 <flash_get_size_from_jedecid>
62fc098c:	00a9a023          	sw	a0,0(s3)
62fc0990:	35ed                	jal	62fc087a <flash2_init.isra.0>
62fc0992:	50f2                	lw	ra,60(sp)
62fc0994:	5462                	lw	s0,56(sp)
62fc0996:	54d2                	lw	s1,52(sp)
62fc0998:	59b2                	lw	s3,44(sp)
62fc099a:	5a22                	lw	s4,40(sp)
62fc099c:	5a92                	lw	s5,36(sp)
62fc099e:	854a                	mv	a0,s2
62fc09a0:	5942                	lw	s2,48(sp)
62fc09a2:	6121                	addi	sp,sp,64
62fc09a4:	8082                	ret
62fc09a6:	000109a3          	sb	zero,19(sp)
62fc09aa:	cc02                	sw	zero,24(sp)
62fc09ac:	ce02                	sw	zero,28(sp)
62fc09ae:	2841                	jal	62fc0a3e <qcc74x_irq_save>
62fc09b0:	8aaa                	mv	s5,a0
62fc09b2:	01310513          	addi	a0,sp,19
62fc09b6:	2e35                	jal	62fc0cf2 <qcc74x_xip_sflash_opt_enter>
62fc09b8:	4681                	li	a3,0
62fc09ba:	4601                	li	a2,0
62fc09bc:	086c                	addi	a1,sp,28
62fc09be:	85c18513          	addi	a0,gp,-1956 # 62fc1bd4 <g_flash_cfg>
62fc09c2:	29cd                	jal	62fc0eb4 <qcc74x_xip_sflash_state_save>
62fc09c4:	082c                	addi	a1,sp,24
62fc09c6:	85c18513          	addi	a0,gp,-1956 # 62fc1bd4 <g_flash_cfg>
62fc09ca:	2cdd                	jal	62fc0cc0 <qcc74x_sflash_get_jedecid>
62fc09cc:	460d                	li	a2,3
62fc09ce:	082c                	addi	a1,sp,24
62fc09d0:	0848                	addi	a0,sp,20
62fc09d2:	343d                	jal	62fc0400 <arch_memcpy>
62fc09d4:	4562                	lw	a0,24(sp)
62fc09d6:	010007b7          	lui	a5,0x1000
62fc09da:	17fd                	addi	a5,a5,-1
62fc09dc:	8d7d                	and	a0,a0,a5
62fc09de:	4681                	li	a3,0
62fc09e0:	4601                	li	a2,0
62fc09e2:	85c18593          	addi	a1,gp,-1956 # 62fc1bd4 <g_flash_cfg>
62fc09e6:	cc2a                	sw	a0,24(sp)
62fc09e8:	c008                	sw	a0,0(s0)
62fc09ea:	2ef5                	jal	62fc0de6 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>
62fc09ec:	4762                	lw	a4,24(sp)
62fc09ee:	892a                	mv	s2,a0
62fc09f0:	e119                	bnez	a0,62fc09f6 <qcc74x_flash_init+0xc6>
62fc09f2:	00ea06a3          	sb	a4,13(s4)
62fc09f6:	001667b7          	lui	a5,0x166
62fc09fa:	0ef78793          	addi	a5,a5,239 # 1660ef <remain_wifi_ram+0x1460ef>
62fc09fe:	00f71563          	bne	a4,a5,62fc0a08 <qcc74x_flash_init+0xd8>
62fc0a02:	4791                	li	a5,4
62fc0a04:	00fa1023          	sh	a5,0(s4)
62fc0a08:	3d09                	jal	62fc081a <qcc74x_flash_set_cmds.constprop.0>
62fc0a0a:	3da9                	jal	62fc0864 <flash_set_qspi_enable.constprop.0>
62fc0a0c:	3591                	jal	62fc0850 <flash_set_l1c_wrap.constprop.0>
62fc0a0e:	45f2                	lw	a1,28(sp)
62fc0a10:	4681                	li	a3,0
62fc0a12:	4601                	li	a2,0
62fc0a14:	85c18513          	addi	a0,gp,-1956 # 62fc1bd4 <g_flash_cfg>
62fc0a18:	24d9                	jal	62fc0cde <qcc74x_xip_sflash_state_restore>
62fc0a1a:	01314503          	lbu	a0,19(sp)
62fc0a1e:	2cf9                	jal	62fc0cfc <qcc74x_xip_sflash_opt_exit>
62fc0a20:	8556                	mv	a0,s5
62fc0a22:	2015                	jal	62fc0a46 <qcc74x_irq_restore>
62fc0a24:	3d046097          	auipc	ra,0x3d046
62fc0a28:	23c080e7          	jalr	572(ra) # a0006c60 <flash_get_clock_delay.constprop.0.isra.0>
62fc0a2c:	4008                	lw	a0,0(s0)
62fc0a2e:	29fd                	jal	62fc0f2c <GLB_Set_Flash_Id_Value>
62fc0a30:	4008                	lw	a0,0(s0)
62fc0a32:	bfa1                	j	62fc098a <qcc74x_flash_init+0x5a>

62fc0a34 <qcc74x_sflash_xip_read_enable>:
62fc0a34:	87b6                	mv	a5,a3
62fc0a36:	02000713          	li	a4,32
62fc0a3a:	4681                	li	a3,0
62fc0a3c:	ac85                	j	62fc0cac <qcc74x_sflash_set_xip_cfg>

62fc0a3e <qcc74x_irq_save>:
62fc0a3e:	4521                	li	a0,8
62fc0a40:	30053573          	csrrc	a0,mstatus,a0
62fc0a44:	8082                	ret

62fc0a46 <qcc74x_irq_restore>:
62fc0a46:	30051073          	csrw	mstatus,a0
62fc0a4a:	8082                	ret

62fc0a4c <qcc74x_mtimer_get_time_us>:
62fc0a4c:	7139                	addi	sp,sp,-64
62fc0a4e:	de22                	sw	s0,60(sp)
62fc0a50:	c602                	sw	zero,12(sp)
62fc0a52:	e000c7b7          	lui	a5,0xe000c
62fc0a56:	3e800413          	li	s0,1000
62fc0a5a:	ff87a603          	lw	a2,-8(a5) # e000bff8 <__psram_limit+0x37c0bff8>
62fc0a5e:	ffc7a683          	lw	a3,-4(a5)
62fc0a62:	4f81                	li	t6,0
62fc0a64:	4381                	li	t2,0
62fc0a66:	cc36                	sw	a3,24(sp)
62fc0a68:	ce7e                	sw	t6,28(sp)
62fc0a6a:	ff87a603          	lw	a2,-8(a5)
62fc0a6e:	ffc7a683          	lw	a3,-4(a5)
62fc0a72:	4881                	li	a7,0
62fc0a74:	c832                	sw	a2,16(sp)
62fc0a76:	ca1e                	sw	t2,20(sp)
62fc0a78:	ff87a603          	lw	a2,-8(a5)
62fc0a7c:	ffc7a683          	lw	a3,-4(a5)
62fc0a80:	4e81                	li	t4,0
62fc0a82:	d032                	sw	a2,32(sp)
62fc0a84:	d246                	sw	a7,36(sp)
62fc0a86:	ff87a603          	lw	a2,-8(a5)
62fc0a8a:	ffc7a683          	lw	a3,-4(a5)
62fc0a8e:	d436                	sw	a3,40(sp)
62fc0a90:	d676                	sw	t4,44(sp)
62fc0a92:	4732                	lw	a4,12(sp)
62fc0a94:	0705                	addi	a4,a4,1
62fc0a96:	c63a                	sw	a4,12(sp)
62fc0a98:	4732                	lw	a4,12(sp)
62fc0a9a:	02870f63          	beq	a4,s0,62fc0ad8 <qcc74x_mtimer_get_time_us+0x8c>
62fc0a9e:	4642                	lw	a2,16(sp)
62fc0aa0:	46d2                	lw	a3,20(sp)
62fc0aa2:	5502                	lw	a0,32(sp)
62fc0aa4:	5592                	lw	a1,36(sp)
62fc0aa6:	fad5eae3          	bltu	a1,a3,62fc0a5a <qcc74x_mtimer_get_time_us+0xe>
62fc0aaa:	00b69463          	bne	a3,a1,62fc0ab2 <qcc74x_mtimer_get_time_us+0x66>
62fc0aae:	fac566e3          	bltu	a0,a2,62fc0a5a <qcc74x_mtimer_get_time_us+0xe>
62fc0ab2:	4662                	lw	a2,24(sp)
62fc0ab4:	46f2                	lw	a3,28(sp)
62fc0ab6:	5522                	lw	a0,40(sp)
62fc0ab8:	55b2                	lw	a1,44(sp)
62fc0aba:	fac510e3          	bne	a0,a2,62fc0a5a <qcc74x_mtimer_get_time_us+0xe>
62fc0abe:	f8d59ee3          	bne	a1,a3,62fc0a5a <qcc74x_mtimer_get_time_us+0xe>
62fc0ac2:	5622                	lw	a2,40(sp)
62fc0ac4:	56b2                	lw	a3,44(sp)
62fc0ac6:	5702                	lw	a4,32(sp)
62fc0ac8:	5792                	lw	a5,36(sp)
62fc0aca:	4501                	li	a0,0
62fc0acc:	85b2                	mv	a1,a2
62fc0ace:	c0e51577          	add64	a0,a0,a4
62fc0ad2:	5472                	lw	s0,60(sp)
62fc0ad4:	6121                	addi	sp,sp,64
62fc0ad6:	8082                	ret
62fc0ad8:	4501                	li	a0,0
62fc0ada:	4581                	li	a1,0
62fc0adc:	bfdd                	j	62fc0ad2 <qcc74x_mtimer_get_time_us+0x86>

62fc0ade <qcc74x_mtimer_get_time_ms>:
62fc0ade:	1141                	addi	sp,sp,-16
62fc0ae0:	c606                	sw	ra,12(sp)
62fc0ae2:	37ad                	jal	62fc0a4c <qcc74x_mtimer_get_time_us>
62fc0ae4:	3e800613          	li	a2,1000
62fc0ae8:	4681                	li	a3,0
62fc0aea:	3d041097          	auipc	ra,0x3d041
62fc0aee:	916080e7          	jalr	-1770(ra) # a0001400 <__udivdi3>
62fc0af2:	40b2                	lw	ra,12(sp)
62fc0af4:	0141                	addi	sp,sp,16
62fc0af6:	8082                	ret

62fc0af8 <qcc74x_mtimer_delay_us>:
62fc0af8:	1141                	addi	sp,sp,-16
62fc0afa:	c422                	sw	s0,8(sp)
62fc0afc:	c24a                	sw	s2,4(sp)
62fc0afe:	c04e                	sw	s3,0(sp)
62fc0b00:	c606                	sw	ra,12(sp)
62fc0b02:	842a                	mv	s0,a0
62fc0b04:	37a1                	jal	62fc0a4c <qcc74x_mtimer_get_time_us>
62fc0b06:	892a                	mv	s2,a0
62fc0b08:	89ae                	mv	s3,a1
62fc0b0a:	3789                	jal	62fc0a4c <qcc74x_mtimer_get_time_us>
62fc0b0c:	c3251577          	sub64	a0,a0,s2
62fc0b10:	e199                	bnez	a1,62fc0b16 <qcc74x_mtimer_delay_us+0x1e>
62fc0b12:	fe856ce3          	bltu	a0,s0,62fc0b0a <qcc74x_mtimer_delay_us+0x12>
62fc0b16:	40b2                	lw	ra,12(sp)
62fc0b18:	4422                	lw	s0,8(sp)
62fc0b1a:	4912                	lw	s2,4(sp)
62fc0b1c:	4982                	lw	s3,0(sp)
62fc0b1e:	0141                	addi	sp,sp,16
62fc0b20:	8082                	ret

62fc0b22 <qcc74x_mtimer_delay_ms>:
62fc0b22:	1101                	addi	sp,sp,-32
62fc0b24:	cc22                	sw	s0,24(sp)
62fc0b26:	ca26                	sw	s1,20(sp)
62fc0b28:	842a                	mv	s0,a0
62fc0b2a:	c84a                	sw	s2,16(sp)
62fc0b2c:	c64e                	sw	s3,12(sp)
62fc0b2e:	ce06                	sw	ra,28(sp)
62fc0b30:	3f31                	jal	62fc0a4c <qcc74x_mtimer_get_time_us>
62fc0b32:	892a                	mv	s2,a0
62fc0b34:	3e800513          	li	a0,1000
62fc0b38:	89ae                	mv	s3,a1
62fc0b3a:	f0a41577          	mulr64	a0,s0,a0
62fc0b3e:	84ae                	mv	s1,a1
62fc0b40:	842a                	mv	s0,a0
62fc0b42:	3729                	jal	62fc0a4c <qcc74x_mtimer_get_time_us>
62fc0b44:	c3251577          	sub64	a0,a0,s2
62fc0b48:	fe95ede3          	bltu	a1,s1,62fc0b42 <qcc74x_mtimer_delay_ms+0x20>
62fc0b4c:	00b49463          	bne	s1,a1,62fc0b54 <qcc74x_mtimer_delay_ms+0x32>
62fc0b50:	fe8569e3          	bltu	a0,s0,62fc0b42 <qcc74x_mtimer_delay_ms+0x20>
62fc0b54:	40f2                	lw	ra,28(sp)
62fc0b56:	4462                	lw	s0,24(sp)
62fc0b58:	44d2                	lw	s1,20(sp)
62fc0b5a:	4942                	lw	s2,16(sp)
62fc0b5c:	49b2                	lw	s3,12(sp)
62fc0b5e:	6105                	addi	sp,sp,32
62fc0b60:	8082                	ret

62fc0b62 <system_setup_xtal_config.isra.0>:
62fc0b62:	1141                	addi	sp,sp,-16
62fc0b64:	c606                	sw	ra,12(sp)
62fc0b66:	c422                	sw	s0,8(sp)
62fc0b68:	c226                	sw	s1,4(sp)
62fc0b6a:	28d1                	jal	62fc0c3e <HBN_Get_MCU_XCLK_Sel>
62fc0b6c:	84aa                	mv	s1,a0
62fc0b6e:	20d9                	jal	62fc0c34 <HBN_Get_MCU_Root_CLK_Sel>
62fc0b70:	842a                	mv	s0,a0
62fc0b72:	4501                	li	a0,0
62fc0b74:	285d                	jal	62fc0c2a <HBN_Set_MCU_XCLK_Sel>
62fc0b76:	4501                	li	a0,0
62fc0b78:	2065                	jal	62fc0c20 <HBN_Set_MCU_Root_CLK_Sel>
62fc0b7a:	200106b7          	lui	a3,0x20010
62fc0b7e:	8846a783          	lw	a5,-1916(a3) # 2000f884 <remain_wifi_ram+0x1ffef884>
62fc0b82:	7751                	lui	a4,0xffff4
62fc0b84:	175d                	addi	a4,a4,-9
62fc0b86:	8ff9                	and	a5,a5,a4
62fc0b88:	6721                	lui	a4,0x8
62fc0b8a:	8fd9                	or	a5,a5,a4
62fc0b8c:	88f6a223          	sw	a5,-1916(a3)
62fc0b90:	47c1                	li	a5,16
62fc0b92:	0001                	nop
62fc0b94:	17fd                	addi	a5,a5,-1
62fc0b96:	fff5                	bnez	a5,62fc0b92 <system_setup_xtal_config.isra.0+0x30>
62fc0b98:	8526                	mv	a0,s1
62fc0b9a:	2841                	jal	62fc0c2a <HBN_Set_MCU_XCLK_Sel>
62fc0b9c:	8522                	mv	a0,s0
62fc0b9e:	4422                	lw	s0,8(sp)
62fc0ba0:	40b2                	lw	ra,12(sp)
62fc0ba2:	4492                	lw	s1,4(sp)
62fc0ba4:	0141                	addi	sp,sp,16
62fc0ba6:	a8ad                	j	62fc0c20 <HBN_Set_MCU_Root_CLK_Sel>

62fc0ba8 <GLB_AHB_MCU_Software_Reset>:
62fc0ba8:	900167b7          	lui	a5,0x90016
62fc0bac:	9647a783          	lw	a5,-1692(a5) # 90015964 <__psram_limit+0xe7c15964>
62fc0bb0:	8782                	jr	a5

62fc0bb2 <GLB_Power_On_XTAL_And_PLL_CLK>:
62fc0bb2:	900167b7          	lui	a5,0x90016
62fc0bb6:	9cc7a783          	lw	a5,-1588(a5) # 900159cc <__psram_limit+0xe7c159cc>
62fc0bba:	8782                	jr	a5

62fc0bbc <GLB_SW_POR_Reset>:
62fc0bbc:	900167b7          	lui	a5,0x90016
62fc0bc0:	9d87a783          	lw	a5,-1576(a5) # 900159d8 <__psram_limit+0xe7c159d8>
62fc0bc4:	8782                	jr	a5

62fc0bc6 <GLB_Set_DIG_512K_CLK>:
62fc0bc6:	900167b7          	lui	a5,0x90016
62fc0bca:	a0c7a783          	lw	a5,-1524(a5) # 90015a0c <__psram_limit+0xe7c15a0c>
62fc0bce:	8782                	jr	a5

62fc0bd0 <GLB_Set_DIG_CLK_Sel>:
62fc0bd0:	900167b7          	lui	a5,0x90016
62fc0bd4:	a107a783          	lw	a5,-1520(a5) # 90015a10 <__psram_limit+0xe7c15a10>
62fc0bd8:	8782                	jr	a5

62fc0bda <GLB_Set_MCU_System_CLK>:
62fc0bda:	900167b7          	lui	a5,0x90016
62fc0bde:	a407a783          	lw	a5,-1472(a5) # 90015a40 <__psram_limit+0xe7c15a40>
62fc0be2:	8782                	jr	a5

62fc0be4 <GLB_Set_PKA_CLK_Sel>:
62fc0be4:	900167b7          	lui	a5,0x90016
62fc0be8:	a4c7a783          	lw	a5,-1460(a5) # 90015a4c <__psram_limit+0xe7c15a4c>
62fc0bec:	8782                	jr	a5

62fc0bee <GLB_Set_PWM1_IO_Sel>:
62fc0bee:	900167b7          	lui	a5,0x90016
62fc0bf2:	a547a783          	lw	a5,-1452(a5) # 90015a54 <__psram_limit+0xe7c15a54>
62fc0bf6:	8782                	jr	a5

62fc0bf8 <GLB_Set_UART_CLK>:
62fc0bf8:	900167b7          	lui	a5,0x90016
62fc0bfc:	a847a783          	lw	a5,-1404(a5) # 90015a84 <__psram_limit+0xe7c15a84>
62fc0c00:	8782                	jr	a5

62fc0c02 <GLB_Set_USB_CLK_From_WIFIPLL>:
62fc0c02:	900167b7          	lui	a5,0x90016
62fc0c06:	a887a783          	lw	a5,-1400(a5) # 90015a88 <__psram_limit+0xe7c15a88>
62fc0c0a:	8782                	jr	a5

62fc0c0c <GLB_Swap_MCU_SPI_0_MOSI_With_MISO>:
62fc0c0c:	900167b7          	lui	a5,0x90016
62fc0c10:	a8c7a783          	lw	a5,-1396(a5) # 90015a8c <__psram_limit+0xe7c15a8c>
62fc0c14:	8782                	jr	a5

62fc0c16 <HBN_Get_Xtal_Type>:
62fc0c16:	900167b7          	lui	a5,0x90016
62fc0c1a:	b8c7a783          	lw	a5,-1140(a5) # 90015b8c <__psram_limit+0xe7c15b8c>
62fc0c1e:	8782                	jr	a5

62fc0c20 <HBN_Set_MCU_Root_CLK_Sel>:
62fc0c20:	900167b7          	lui	a5,0x90016
62fc0c24:	bf47a783          	lw	a5,-1036(a5) # 90015bf4 <__psram_limit+0xe7c15bf4>
62fc0c28:	8782                	jr	a5

62fc0c2a <HBN_Set_MCU_XCLK_Sel>:
62fc0c2a:	900167b7          	lui	a5,0x90016
62fc0c2e:	bf87a783          	lw	a5,-1032(a5) # 90015bf8 <__psram_limit+0xe7c15bf8>
62fc0c32:	8782                	jr	a5

62fc0c34 <HBN_Get_MCU_Root_CLK_Sel>:
62fc0c34:	900167b7          	lui	a5,0x90016
62fc0c38:	c307a783          	lw	a5,-976(a5) # 90015c30 <__psram_limit+0xe7c15c30>
62fc0c3c:	8782                	jr	a5

62fc0c3e <HBN_Get_MCU_XCLK_Sel>:
62fc0c3e:	900167b7          	lui	a5,0x90016
62fc0c42:	c347a783          	lw	a5,-972(a5) # 90015c34 <__psram_limit+0xe7c15c34>
62fc0c46:	8782                	jr	a5

62fc0c48 <qcc74x_sf_cfg_sbus2_flash_init>:
62fc0c48:	900167b7          	lui	a5,0x90016
62fc0c4c:	d107a783          	lw	a5,-752(a5) # 90015d10 <__psram_limit+0xe7c15d10>
62fc0c50:	8782                	jr	a5

62fc0c52 <qcc74x_sf_cfg_flash_identify>:
62fc0c52:	90016837          	lui	a6,0x90016
62fc0c56:	d1482803          	lw	a6,-748(a6) # 90015d14 <__psram_limit+0xe7c15d14>
62fc0c5a:	8802                	jr	a6

62fc0c5c <qcc74x_sf_ctrl_get_flash_image_offset>:
62fc0c5c:	900167b7          	lui	a5,0x90016
62fc0c60:	d247a783          	lw	a5,-732(a5) # 90015d24 <__psram_limit+0xe7c15d24>
62fc0c64:	8782                	jr	a5

62fc0c66 <qcc74x_sf_ctrl_cmds_set>:
62fc0c66:	900167b7          	lui	a5,0x90016
62fc0c6a:	d707a783          	lw	a5,-656(a5) # 90015d70 <__psram_limit+0xe7c15d70>
62fc0c6e:	8782                	jr	a5

62fc0c70 <qcc74x_sf_ctrl_sbus2_replace>:
62fc0c70:	900167b7          	lui	a5,0x90016
62fc0c74:	d987a783          	lw	a5,-616(a5) # 90015d98 <__psram_limit+0xe7c15d98>
62fc0c78:	8782                	jr	a5

62fc0c7a <qcc74x_sf_ctrl_sbus2_revoke_replace>:
62fc0c7a:	900167b7          	lui	a5,0x90016
62fc0c7e:	d9c7a783          	lw	a5,-612(a5) # 90015d9c <__psram_limit+0xe7c15d9c>
62fc0c82:	8782                	jr	a5

62fc0c84 <qcc74x_sf_ctrl_set_flash_image_offset>:
62fc0c84:	900167b7          	lui	a5,0x90016
62fc0c88:	db47a783          	lw	a5,-588(a5) # 90015db4 <__psram_limit+0xe7c15db4>
62fc0c8c:	8782                	jr	a5

62fc0c8e <qcc74x_sf_ctrl_set_owner>:
62fc0c8e:	900167b7          	lui	a5,0x90016
62fc0c92:	dbc7a783          	lw	a5,-580(a5) # 90015dbc <__psram_limit+0xe7c15dbc>
62fc0c96:	8782                	jr	a5

62fc0c98 <qcc74x_sflash_qspi_enable>:
62fc0c98:	900167b7          	lui	a5,0x90016
62fc0c9c:	de47a783          	lw	a5,-540(a5) # 90015de4 <__psram_limit+0xe7c15de4>
62fc0ca0:	8782                	jr	a5

62fc0ca2 <qcc74x_sflash_set_32bits_addr_mode>:
62fc0ca2:	900167b7          	lui	a5,0x90016
62fc0ca6:	e047a783          	lw	a5,-508(a5) # 90015e04 <__psram_limit+0xe7c15e04>
62fc0caa:	8782                	jr	a5

62fc0cac <qcc74x_sflash_set_xip_cfg>:
62fc0cac:	90016837          	lui	a6,0x90016
62fc0cb0:	e0c82803          	lw	a6,-500(a6) # 90015e0c <__psram_limit+0xe7c15e0c>
62fc0cb4:	8802                	jr	a6

62fc0cb6 <qcc74x_sflash_disable_burst_wrap>:
62fc0cb6:	900167b7          	lui	a5,0x90016
62fc0cba:	e247a783          	lw	a5,-476(a5) # 90015e24 <__psram_limit+0xe7c15e24>
62fc0cbe:	8782                	jr	a5

62fc0cc0 <qcc74x_sflash_get_jedecid>:
62fc0cc0:	900167b7          	lui	a5,0x90016
62fc0cc4:	e2c7a783          	lw	a5,-468(a5) # 90015e2c <__psram_limit+0xe7c15e2c>
62fc0cc8:	8782                	jr	a5

62fc0cca <qcc74x_sflash_reset_continue_read>:
62fc0cca:	900167b7          	lui	a5,0x90016
62fc0cce:	e447a783          	lw	a5,-444(a5) # 90015e44 <__psram_limit+0xe7c15e44>
62fc0cd2:	8782                	jr	a5

62fc0cd4 <qcc74x_sflash_set_burst_wrap>:
62fc0cd4:	900167b7          	lui	a5,0x90016
62fc0cd8:	e487a783          	lw	a5,-440(a5) # 90015e48 <__psram_limit+0xe7c15e48>
62fc0cdc:	8782                	jr	a5

62fc0cde <qcc74x_xip_sflash_state_restore>:
62fc0cde:	900167b7          	lui	a5,0x90016
62fc0ce2:	ef87a783          	lw	a5,-264(a5) # 90015ef8 <__psram_limit+0xe7c15ef8>
62fc0ce6:	1141                	addi	sp,sp,-16
62fc0ce8:	c606                	sw	ra,12(sp)
62fc0cea:	9782                	jalr	a5
62fc0cec:	40b2                	lw	ra,12(sp)
62fc0cee:	0141                	addi	sp,sp,16
62fc0cf0:	8082                	ret

62fc0cf2 <qcc74x_xip_sflash_opt_enter>:
62fc0cf2:	900167b7          	lui	a5,0x90016
62fc0cf6:	f047a783          	lw	a5,-252(a5) # 90015f04 <__psram_limit+0xe7c15f04>
62fc0cfa:	8782                	jr	a5

62fc0cfc <qcc74x_xip_sflash_opt_exit>:
62fc0cfc:	900167b7          	lui	a5,0x90016
62fc0d00:	f087a783          	lw	a5,-248(a5) # 90015f08 <__psram_limit+0xe7c15f08>
62fc0d04:	8782                	jr	a5

62fc0d06 <qcc74x_sf_cfg_flash_identify_ext>:
62fc0d06:	1101                	addi	sp,sp,-32
62fc0d08:	cc22                	sw	s0,24(sp)
62fc0d0a:	ca26                	sw	s1,20(sp)
62fc0d0c:	c84a                	sw	s2,16(sp)
62fc0d0e:	c63e                	sw	a5,12(sp)
62fc0d10:	ce06                	sw	ra,28(sp)
62fc0d12:	892a                	mv	s2,a0
62fc0d14:	84b6                	mv	s1,a3
62fc0d16:	3f35                	jal	62fc0c52 <qcc74x_sf_cfg_flash_identify>
62fc0d18:	47b2                	lw	a5,12(sp)
62fc0d1a:	842a                	mv	s0,a0
62fc0d1c:	00090b63          	beqz	s2,62fc0d32 <qcc74x_sf_cfg_flash_identify_ext+0x2c>
62fc0d20:	0004c583          	lbu	a1,0(s1)
62fc0d24:	02000713          	li	a4,32
62fc0d28:	4681                	li	a3,0
62fc0d2a:	4605                	li	a2,1
62fc0d2c:	89bd                	andi	a1,a1,15
62fc0d2e:	8526                	mv	a0,s1
62fc0d30:	3fb5                	jal	62fc0cac <qcc74x_sflash_set_xip_cfg>
62fc0d32:	02044e63          	bltz	s0,62fc0d6e <qcc74x_sf_cfg_flash_identify_ext+0x68>
62fc0d36:	010007b7          	lui	a5,0x1000
62fc0d3a:	17fd                	addi	a5,a5,-1
62fc0d3c:	8c7d                	and	s0,s0,a5
62fc0d3e:	62fc17b7          	lui	a5,0x62fc1
62fc0d42:	4701                	li	a4,0
62fc0d44:	5f878793          	addi	a5,a5,1528 # 62fc15f8 <flash_infos>
62fc0d48:	45b1                	li	a1,12
62fc0d4a:	02b00613          	li	a2,43
62fc0d4e:	02b706b3          	mul	a3,a4,a1
62fc0d52:	40f6c50b          	lrw	a0,a3,a5,0
62fc0d56:	02851363          	bne	a0,s0,62fc0d7c <qcc74x_sf_cfg_flash_identify_ext+0x76>
62fc0d5a:	97b6                	add	a5,a5,a3
62fc0d5c:	478c                	lw	a1,8(a5)
62fc0d5e:	05400613          	li	a2,84
62fc0d62:	8526                	mv	a0,s1
62fc0d64:	ec4ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0d68:	800007b7          	lui	a5,0x80000
62fc0d6c:	8c5d                	or	s0,s0,a5
62fc0d6e:	40f2                	lw	ra,28(sp)
62fc0d70:	8522                	mv	a0,s0
62fc0d72:	4462                	lw	s0,24(sp)
62fc0d74:	44d2                	lw	s1,20(sp)
62fc0d76:	4942                	lw	s2,16(sp)
62fc0d78:	6105                	addi	sp,sp,32
62fc0d7a:	8082                	ret
62fc0d7c:	0705                	addi	a4,a4,1
62fc0d7e:	fcc718e3          	bne	a4,a2,62fc0d4e <qcc74x_sf_cfg_flash_identify_ext+0x48>
62fc0d82:	b7f5                	j	62fc0d6e <qcc74x_sf_cfg_flash_identify_ext+0x68>

62fc0d84 <qcc74x_xip_sflash_read_via_cache_need_lock>:
62fc0d84:	1101                	addi	sp,sp,-32
62fc0d86:	cc22                	sw	s0,24(sp)
62fc0d88:	04000437          	lui	s0,0x4000
62fc0d8c:	147d                	addi	s0,s0,-1
62fc0d8e:	c452                	sw	s4,8(sp)
62fc0d90:	8c69                	and	s0,s0,a0
62fc0d92:	8a2e                	mv	s4,a1
62fc0d94:	8536                	mv	a0,a3
62fc0d96:	85ba                	mv	a1,a4
62fc0d98:	ce06                	sw	ra,28(sp)
62fc0d9a:	ca26                	sw	s1,20(sp)
62fc0d9c:	c84a                	sw	s2,16(sp)
62fc0d9e:	c64e                	sw	s3,12(sp)
62fc0da0:	c256                	sw	s5,4(sp)
62fc0da2:	84b6                	mv	s1,a3
62fc0da4:	893a                	mv	s2,a4
62fc0da6:	8ab2                	mv	s5,a2
62fc0da8:	3d55                	jal	62fc0c5c <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0daa:	864a                	mv	a2,s2
62fc0dac:	89aa                	mv	s3,a0
62fc0dae:	85a6                	mv	a1,s1
62fc0db0:	4501                	li	a0,0
62fc0db2:	3dc9                	jal	62fc0c84 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0db4:	85ca                	mv	a1,s2
62fc0db6:	8526                	mv	a0,s1
62fc0db8:	3555                	jal	62fc0c5c <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0dba:	a00005b7          	lui	a1,0xa0000
62fc0dbe:	8dc1                	or	a1,a1,s0
62fc0dc0:	8656                	mv	a2,s5
62fc0dc2:	8d89                	sub	a1,a1,a0
62fc0dc4:	8552                	mv	a0,s4
62fc0dc6:	e62ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0dca:	854e                	mv	a0,s3
62fc0dcc:	864a                	mv	a2,s2
62fc0dce:	85a6                	mv	a1,s1
62fc0dd0:	3d55                	jal	62fc0c84 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0dd2:	40f2                	lw	ra,28(sp)
62fc0dd4:	4462                	lw	s0,24(sp)
62fc0dd6:	44d2                	lw	s1,20(sp)
62fc0dd8:	4942                	lw	s2,16(sp)
62fc0dda:	49b2                	lw	s3,12(sp)
62fc0ddc:	4a22                	lw	s4,8(sp)
62fc0dde:	4a92                	lw	s5,4(sp)
62fc0de0:	4501                	li	a0,0
62fc0de2:	6105                	addi	sp,sp,32
62fc0de4:	8082                	ret

62fc0de6 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext>:
62fc0de6:	474647b7          	lui	a5,0x47464
62fc0dea:	7175                	addi	sp,sp,-144
62fc0dec:	34678793          	addi	a5,a5,838 # 47464346 <__RFTLV_HEAD1_H+0xf3f704>
62fc0df0:	dece                	sw	s3,124(sp)
62fc0df2:	c706                	sw	ra,140(sp)
62fc0df4:	c522                	sw	s0,136(sp)
62fc0df6:	c326                	sw	s1,132(sp)
62fc0df8:	c14a                	sw	s2,128(sp)
62fc0dfa:	c63e                	sw	a5,12(sp)
62fc0dfc:	00010823          	sb	zero,16(sp)
62fc0e00:	89ae                	mv	s3,a1
62fc0e02:	e52d                	bnez	a0,62fc0e6c <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x86>
62fc0e04:	85b6                	mv	a1,a3
62fc0e06:	8532                	mv	a0,a2
62fc0e08:	8432                	mv	s0,a2
62fc0e0a:	84b6                	mv	s1,a3
62fc0e0c:	3d81                	jal	62fc0c5c <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0e0e:	85a2                	mv	a1,s0
62fc0e10:	892a                	mv	s2,a0
62fc0e12:	8626                	mv	a2,s1
62fc0e14:	4501                	li	a0,0
62fc0e16:	35bd                	jal	62fc0c84 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0e18:	a0000537          	lui	a0,0xa0000
62fc0e1c:	86a2                	mv	a3,s0
62fc0e1e:	8726                	mv	a4,s1
62fc0e20:	05c00613          	li	a2,92
62fc0e24:	084c                	addi	a1,sp,20
62fc0e26:	0521                	addi	a0,a0,8
62fc0e28:	3fb1                	jal	62fc0d84 <qcc74x_xip_sflash_read_via_cache_need_lock>
62fc0e2a:	85a2                	mv	a1,s0
62fc0e2c:	8626                	mv	a2,s1
62fc0e2e:	854a                	mv	a0,s2
62fc0e30:	3d91                	jal	62fc0c84 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0e32:	4611                	li	a2,4
62fc0e34:	006c                	addi	a1,sp,12
62fc0e36:	0848                	addi	a0,sp,20
62fc0e38:	e32ff0ef          	jal	ra,62fc046a <arch_memcmp>
62fc0e3c:	842a                	mv	s0,a0
62fc0e3e:	e92d                	bnez	a0,62fc0eb0 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0e40:	05400593          	li	a1,84
62fc0e44:	0828                	addi	a0,sp,24
62fc0e46:	e7cff0ef          	jal	ra,62fc04c2 <qcc74x_soft_crc32>
62fc0e4a:	57b6                	lw	a5,108(sp)
62fc0e4c:	06a79263          	bne	a5,a0,62fc0eb0 <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xca>
62fc0e50:	05400613          	li	a2,84
62fc0e54:	082c                	addi	a1,sp,24
62fc0e56:	854e                	mv	a0,s3
62fc0e58:	dd0ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0e5c:	40ba                	lw	ra,140(sp)
62fc0e5e:	8522                	mv	a0,s0
62fc0e60:	442a                	lw	s0,136(sp)
62fc0e62:	449a                	lw	s1,132(sp)
62fc0e64:	490a                	lw	s2,128(sp)
62fc0e66:	59f6                	lw	s3,124(sp)
62fc0e68:	6149                	addi	sp,sp,144
62fc0e6a:	8082                	ret
62fc0e6c:	900167b7          	lui	a5,0x90016
62fc0e70:	d007a783          	lw	a5,-768(a5) # 90015d00 <__psram_limit+0xe7c15d00>
62fc0e74:	892a                	mv	s2,a0
62fc0e76:	9782                	jalr	a5
62fc0e78:	842a                	mv	s0,a0
62fc0e7a:	d16d                	beqz	a0,62fc0e5c <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0e7c:	62fc17b7          	lui	a5,0x62fc1
62fc0e80:	4701                	li	a4,0
62fc0e82:	5f878793          	addi	a5,a5,1528 # 62fc15f8 <flash_infos>
62fc0e86:	45b1                	li	a1,12
62fc0e88:	02b00613          	li	a2,43
62fc0e8c:	02b706b3          	mul	a3,a4,a1
62fc0e90:	40f6c50b          	lrw	a0,a3,a5,0
62fc0e94:	01251b63          	bne	a0,s2,62fc0eaa <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xc4>
62fc0e98:	97b6                	add	a5,a5,a3
62fc0e9a:	478c                	lw	a1,8(a5)
62fc0e9c:	05400613          	li	a2,84
62fc0ea0:	854e                	mv	a0,s3
62fc0ea2:	d86ff0ef          	jal	ra,62fc0428 <arch_memcpy_fast>
62fc0ea6:	4401                	li	s0,0
62fc0ea8:	bf55                	j	62fc0e5c <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>
62fc0eaa:	0705                	addi	a4,a4,1
62fc0eac:	fec710e3          	bne	a4,a2,62fc0e8c <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0xa6>
62fc0eb0:	547d                	li	s0,-1
62fc0eb2:	b76d                	j	62fc0e5c <qcc74x_sf_cfg_get_flash_cfg_need_lock_ext+0x76>

62fc0eb4 <qcc74x_xip_sflash_state_save>:
62fc0eb4:	7179                	addi	sp,sp,-48
62fc0eb6:	04000793          	li	a5,64
62fc0eba:	d422                	sw	s0,40(sp)
62fc0ebc:	d226                	sw	s1,36(sp)
62fc0ebe:	d04a                	sw	s2,32(sp)
62fc0ec0:	ce4e                	sw	s3,28(sp)
62fc0ec2:	d606                	sw	ra,44(sp)
62fc0ec4:	842a                	mv	s0,a0
62fc0ec6:	89ae                	mv	s3,a1
62fc0ec8:	8932                	mv	s2,a2
62fc0eca:	84b6                	mv	s1,a3
62fc0ecc:	c63e                	sw	a5,12(sp)
62fc0ece:	47b2                	lw	a5,12(sp)
62fc0ed0:	fff78713          	addi	a4,a5,-1
62fc0ed4:	c63a                	sw	a4,12(sp)
62fc0ed6:	ffe5                	bnez	a5,62fc0ece <qcc74x_xip_sflash_state_save+0x1a>
62fc0ed8:	4785                	li	a5,1
62fc0eda:	00f49463          	bne	s1,a5,62fc0ee2 <qcc74x_xip_sflash_state_save+0x2e>
62fc0ede:	4505                	li	a0,1
62fc0ee0:	3b41                	jal	62fc0c70 <qcc74x_sf_ctrl_sbus2_replace>
62fc0ee2:	4501                	li	a0,0
62fc0ee4:	336d                	jal	62fc0c8e <qcc74x_sf_ctrl_set_owner>
62fc0ee6:	8522                	mv	a0,s0
62fc0ee8:	33cd                	jal	62fc0cca <qcc74x_sflash_reset_continue_read>
62fc0eea:	8522                	mv	a0,s0
62fc0eec:	33e9                	jal	62fc0cb6 <qcc74x_sflash_disable_burst_wrap>
62fc0eee:	4585                	li	a1,1
62fc0ef0:	8522                	mv	a0,s0
62fc0ef2:	3b45                	jal	62fc0ca2 <qcc74x_sflash_set_32bits_addr_mode>
62fc0ef4:	00044783          	lbu	a5,0(s0) # 4000000 <remain_wifi_ram+0x3fe0000>
62fc0ef8:	8bbd                	andi	a5,a5,15
62fc0efa:	17f9                	addi	a5,a5,-2
62fc0efc:	0fd7f793          	andi	a5,a5,253
62fc0f00:	e399                	bnez	a5,62fc0f06 <qcc74x_xip_sflash_state_save+0x52>
62fc0f02:	8522                	mv	a0,s0
62fc0f04:	3b51                	jal	62fc0c98 <qcc74x_sflash_qspi_enable>
62fc0f06:	8522                	mv	a0,s0
62fc0f08:	337d                	jal	62fc0cb6 <qcc74x_sflash_disable_burst_wrap>
62fc0f0a:	85a6                	mv	a1,s1
62fc0f0c:	854a                	mv	a0,s2
62fc0f0e:	33b9                	jal	62fc0c5c <qcc74x_sf_ctrl_get_flash_image_offset>
62fc0f10:	00a9a023          	sw	a0,0(s3)
62fc0f14:	8626                	mv	a2,s1
62fc0f16:	85ca                	mv	a1,s2
62fc0f18:	4501                	li	a0,0
62fc0f1a:	33ad                	jal	62fc0c84 <qcc74x_sf_ctrl_set_flash_image_offset>
62fc0f1c:	50b2                	lw	ra,44(sp)
62fc0f1e:	5422                	lw	s0,40(sp)
62fc0f20:	5492                	lw	s1,36(sp)
62fc0f22:	5902                	lw	s2,32(sp)
62fc0f24:	49f2                	lw	s3,28(sp)
62fc0f26:	4501                	li	a0,0
62fc0f28:	6145                	addi	sp,sp,48
62fc0f2a:	8082                	ret

62fc0f2c <GLB_Set_Flash_Id_Value>:
62fc0f2c:	010007b7          	lui	a5,0x1000
62fc0f30:	17fd                	addi	a5,a5,-1
62fc0f32:	8d7d                	and	a0,a0,a5
62fc0f34:	5a0007b7          	lui	a5,0x5a000
62fc0f38:	8d5d                	or	a0,a0,a5
62fc0f3a:	200007b7          	lui	a5,0x20000
62fc0f3e:	5ca7a223          	sw	a0,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc0f42:	4501                	li	a0,0
62fc0f44:	8082                	ret

62fc0f46 <GLB_Get_Flash_Id_Value>:
62fc0f46:	200007b7          	lui	a5,0x20000
62fc0f4a:	5c47a703          	lw	a4,1476(a5) # 200005c4 <remain_wifi_ram+0x1ffe05c4>
62fc0f4e:	7f0007b7          	lui	a5,0x7f000
62fc0f52:	5a0006b7          	lui	a3,0x5a000
62fc0f56:	8ff9                	and	a5,a5,a4
62fc0f58:	4501                	li	a0,0
62fc0f5a:	00d79663          	bne	a5,a3,62fc0f66 <GLB_Get_Flash_Id_Value+0x20>
62fc0f5e:	01000537          	lui	a0,0x1000
62fc0f62:	157d                	addi	a0,a0,-1
62fc0f64:	8d79                	and	a0,a0,a4
62fc0f66:	8082                	ret

62fc0f68 <GLB_Get_Package_Type>:
62fc0f68:	200567b7          	lui	a5,0x20056
62fc0f6c:	4f88                	lw	a0,24(a5)
62fc0f6e:	5d65350b          	extu	a0,a0,23,22
62fc0f72:	8082                	ret

62fc0f74 <GLB_GPIO_Pad_LeadOut_Sts>:
62fc0f74:	1141                	addi	sp,sp,-16
62fc0f76:	c422                	sw	s0,8(sp)
62fc0f78:	c606                	sw	ra,12(sp)
62fc0f7a:	842a                	mv	s0,a0
62fc0f7c:	37f5                	jal	62fc0f68 <GLB_Get_Package_Type>
62fc0f7e:	4789                	li	a5,2
62fc0f80:	02f50563          	beq	a0,a5,62fc0faa <GLB_GPIO_Pad_LeadOut_Sts+0x36>
62fc0f84:	47f9                	li	a5,30
62fc0f86:	4505                	li	a0,1
62fc0f88:	0087eb63          	bltu	a5,s0,62fc0f9e <GLB_GPIO_Pad_LeadOut_Sts+0x2a>
62fc0f8c:	78740537          	lui	a0,0x78740
62fc0f90:	c0f50513          	addi	a0,a0,-1009 # 7873fc0f <__HeapLimit+0x1570fc0f>
62fc0f94:	00855533          	srl	a0,a0,s0
62fc0f98:	fff54513          	not	a0,a0
62fc0f9c:	8905                	andi	a0,a0,1
62fc0f9e:	00154513          	xori	a0,a0,1
62fc0fa2:	40b2                	lw	ra,12(sp)
62fc0fa4:	4422                	lw	s0,8(sp)
62fc0fa6:	0141                	addi	sp,sp,16
62fc0fa8:	8082                	ret
62fc0faa:	4505                	li	a0,1
62fc0fac:	bfdd                	j	62fc0fa2 <GLB_GPIO_Pad_LeadOut_Sts+0x2e>

62fc0fae <HBN_Get_Xtal_Value>:
62fc0fae:	cd2d                	beqz	a0,62fc1028 <HBN_Get_Xtal_Value+0x7a>
62fc0fb0:	2000f7b7          	lui	a5,0x2000f
62fc0fb4:	10c7a783          	lw	a5,268(a5) # 2000f10c <remain_wifi_ram+0x1ffef10c>
62fc0fb8:	4721                	li	a4,8
62fc0fba:	1c47b68b          	extu	a3,a5,7,4
62fc0fbe:	06e69363          	bne	a3,a4,62fc1024 <HBN_Get_Xtal_Value+0x76>
62fc0fc2:	8bbd                	andi	a5,a5,15
62fc0fc4:	4711                	li	a4,4
62fc0fc6:	04e78563          	beq	a5,a4,62fc1010 <HBN_Get_Xtal_Value+0x62>
62fc0fca:	00f76f63          	bltu	a4,a5,62fc0fe8 <HBN_Get_Xtal_Value+0x3a>
62fc0fce:	4709                	li	a4,2
62fc0fd0:	02e78263          	beq	a5,a4,62fc0ff4 <HBN_Get_Xtal_Value+0x46>
62fc0fd4:	470d                	li	a4,3
62fc0fd6:	02e78a63          	beq	a5,a4,62fc100a <HBN_Get_Xtal_Value+0x5c>
62fc0fda:	4705                	li	a4,1
62fc0fdc:	02e78163          	beq	a5,a4,62fc0ffe <HBN_Get_Xtal_Value+0x50>
62fc0fe0:	00052023          	sw	zero,0(a0)
62fc0fe4:	4501                	li	a0,0
62fc0fe6:	8082                	ret
62fc0fe8:	4715                	li	a4,5
62fc0fea:	02e78863          	beq	a5,a4,62fc101a <HBN_Get_Xtal_Value+0x6c>
62fc0fee:	4719                	li	a4,6
62fc0ff0:	fee798e3          	bne	a5,a4,62fc0fe0 <HBN_Get_Xtal_Value+0x32>
62fc0ff4:	01e857b7          	lui	a5,0x1e85
62fc0ff8:	80078793          	addi	a5,a5,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc0ffc:	a029                	j	62fc1006 <HBN_Get_Xtal_Value+0x58>
62fc0ffe:	016e37b7          	lui	a5,0x16e3
62fc1002:	60078793          	addi	a5,a5,1536 # 16e3600 <remain_wifi_ram+0x16c3600>
62fc1006:	c11c                	sw	a5,0(a0)
62fc1008:	bff1                	j	62fc0fe4 <HBN_Get_Xtal_Value+0x36>
62fc100a:	0249f7b7          	lui	a5,0x249f
62fc100e:	bfe5                	j	62fc1006 <HBN_Get_Xtal_Value+0x58>
62fc1010:	026267b7          	lui	a5,0x2626
62fc1014:	a0078793          	addi	a5,a5,-1536 # 2625a00 <remain_wifi_ram+0x2605a00>
62fc1018:	b7fd                	j	62fc1006 <HBN_Get_Xtal_Value+0x58>
62fc101a:	018cc7b7          	lui	a5,0x18cc
62fc101e:	a8078793          	addi	a5,a5,-1408 # 18cba80 <remain_wifi_ram+0x18aba80>
62fc1022:	b7d5                	j	62fc1006 <HBN_Get_Xtal_Value+0x58>
62fc1024:	00052023          	sw	zero,0(a0)
62fc1028:	4505                	li	a0,1
62fc102a:	8082                	ret
62fc102c:	0000                	unimp
	...

62fc1030 <ASM_Delay_Us>:
62fc1030:	1141                	addi	sp,sp,-16
62fc1032:	c232                	sw	a2,4(sp)
62fc1034:	c402                	sw	zero,8(sp)
62fc1036:	000f46b7          	lui	a3,0xf4
62fc103a:	c602                	sw	zero,12(sp)
62fc103c:	23f68693          	addi	a3,a3,575 # f423f <remain_wifi_ram+0xd423f>
62fc1040:	04a6f963          	bgeu	a3,a0,62fc1092 <ASM_Delay_Us+0x62>
62fc1044:	66e1                	lui	a3,0x18
62fc1046:	6a068693          	addi	a3,a3,1696 # 186a0 <wifi_ram_max_size+0x106a0>
62fc104a:	02d55533          	divu	a0,a0,a3
62fc104e:	4729                	li	a4,10
62fc1050:	c42a                	sw	a0,8(sp)
62fc1052:	47a2                	lw	a5,8(sp)
62fc1054:	02b787b3          	mul	a5,a5,a1
62fc1058:	c63e                	sw	a5,12(sp)
62fc105a:	47b2                	lw	a5,12(sp)
62fc105c:	02e7d7b3          	divu	a5,a5,a4
62fc1060:	c63e                	sw	a5,12(sp)
62fc1062:	47b2                	lw	a5,12(sp)
62fc1064:	4712                	lw	a4,4(sp)
62fc1066:	02e7d7b3          	divu	a5,a5,a4
62fc106a:	c63e                	sw	a5,12(sp)
62fc106c:	47b2                	lw	a5,12(sp)
62fc106e:	c385                	beqz	a5,62fc108e <ASM_Delay_Us+0x5e>
62fc1070:	46b2                	lw	a3,12(sp)
62fc1072:	8736                	mv	a4,a3
62fc1074:	4781                	li	a5,0
62fc1076:	0001                	nop
62fc1078:	0001                	nop
62fc107a:	0001                	nop
62fc107c:	00000013          	nop
62fc1080:	00e78663          	beq	a5,a4,62fc108c <ASM_Delay_Us+0x5c>
62fc1084:	0785                	addi	a5,a5,1
62fc1086:	bfed                	j	62fc1080 <ASM_Delay_Us+0x50>
62fc1088:	0001                	nop
62fc108a:	0001                	nop
62fc108c:	0001                	nop
62fc108e:	0141                	addi	sp,sp,16
62fc1090:	8082                	ret
62fc1092:	3e800693          	li	a3,1000
62fc1096:	02d55533          	divu	a0,a0,a3
62fc109a:	c42a                	sw	a0,8(sp)
62fc109c:	4722                	lw	a4,8(sp)
62fc109e:	02b70733          	mul	a4,a4,a1
62fc10a2:	c63a                	sw	a4,12(sp)
62fc10a4:	47b2                	lw	a5,12(sp)
62fc10a6:	02d7d7b3          	divu	a5,a5,a3
62fc10aa:	bf5d                	j	62fc1060 <ASM_Delay_Us+0x30>
	...

62fc10b6 <arch_delay_us>:
62fc10b6:	1101                	addi	sp,sp,-32
62fc10b8:	ce06                	sw	ra,28(sp)
62fc10ba:	85aa                	mv	a1,a0
62fc10bc:	7c1027f3          	csrr	a5,mhcr
62fc10c0:	7c102673          	csrr	a2,mhcr
62fc10c4:	0017f713          	andi	a4,a5,1
62fc10c8:	8205                	srli	a2,a2,0x1
62fc10ca:	c705                	beqz	a4,62fc10f2 <arch_delay_us+0x3c>
62fc10cc:	8a05                	andi	a2,a2,1
62fc10ce:	4791                	li	a5,4
62fc10d0:	40c78633          	sub	a2,a5,a2
62fc10d4:	4505                	li	a0,1
62fc10d6:	c62e                	sw	a1,12(sp)
62fc10d8:	c432                	sw	a2,8(sp)
62fc10da:	18d000ef          	jal	ra,62fc1a66 <Clock_System_Clock_Get>
62fc10de:	4622                	lw	a2,8(sp)
62fc10e0:	45b2                	lw	a1,12(sp)
62fc10e2:	e509                	bnez	a0,62fc10ec <arch_delay_us+0x36>
62fc10e4:	01e85537          	lui	a0,0x1e85
62fc10e8:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc10ec:	40f2                	lw	ra,28(sp)
62fc10ee:	6105                	addi	sp,sp,32
62fc10f0:	b781                	j	62fc1030 <ASM_Delay_Us>
62fc10f2:	8e5d                	or	a2,a2,a5
62fc10f4:	00167793          	andi	a5,a2,1
62fc10f8:	460d                	li	a2,3
62fc10fa:	ffe9                	bnez	a5,62fc10d4 <arch_delay_us+0x1e>
62fc10fc:	4661                	li	a2,24
62fc10fe:	bfd9                	j	62fc10d4 <arch_delay_us+0x1e>

62fc1100 <arch_delay_ms>:
62fc1100:	1141                	addi	sp,sp,-16
62fc1102:	c422                	sw	s0,8(sp)
62fc1104:	c606                	sw	ra,12(sp)
62fc1106:	c226                	sw	s1,4(sp)
62fc1108:	c04a                	sw	s2,0(sp)
62fc110a:	3ff00793          	li	a5,1023
62fc110e:	842a                	mv	s0,a0
62fc1110:	00a7fb63          	bgeu	a5,a0,62fc1126 <arch_delay_ms+0x26>
62fc1114:	00a55913          	srli	s2,a0,0xa
62fc1118:	4481                	li	s1,0
62fc111a:	000fa537          	lui	a0,0xfa
62fc111e:	0485                	addi	s1,s1,1
62fc1120:	3f59                	jal	62fc10b6 <arch_delay_us>
62fc1122:	fe991ce3          	bne	s2,s1,62fc111a <arch_delay_ms+0x1a>
62fc1126:	3ff47413          	andi	s0,s0,1023
62fc112a:	c819                	beqz	s0,62fc1140 <arch_delay_ms+0x40>
62fc112c:	3e800513          	li	a0,1000
62fc1130:	02a40533          	mul	a0,s0,a0
62fc1134:	4422                	lw	s0,8(sp)
62fc1136:	40b2                	lw	ra,12(sp)
62fc1138:	4492                	lw	s1,4(sp)
62fc113a:	4902                	lw	s2,0(sp)
62fc113c:	0141                	addi	sp,sp,16
62fc113e:	bfa5                	j	62fc10b6 <arch_delay_us>
62fc1140:	40b2                	lw	ra,12(sp)
62fc1142:	4422                	lw	s0,8(sp)
62fc1144:	4492                	lw	s1,4(sp)
62fc1146:	4902                	lw	s2,0(sp)
62fc1148:	0141                	addi	sp,sp,16
62fc114a:	8082                	ret

62fc114c <qcc74x_efuse_print_number>:
62fc114c:	47a5                	li	a5,9
62fc114e:	02b7f263          	bgeu	a5,a1,62fc1172 <qcc74x_efuse_print_number+0x26>
62fc1152:	4729                	li	a4,10
62fc1154:	02e5d7b3          	divu	a5,a1,a4
62fc1158:	02e5f5b3          	remu	a1,a1,a4
62fc115c:	03078793          	addi	a5,a5,48
62fc1160:	00f50023          	sb	a5,0(a0) # fa000 <remain_wifi_ram+0xda000>
62fc1164:	4789                	li	a5,2
62fc1166:	03058593          	addi	a1,a1,48 # a0000030 <__psram_limit+0xf7c00030>
62fc116a:	00b500a3          	sb	a1,1(a0)
62fc116e:	953e                	add	a0,a0,a5
62fc1170:	8082                	ret
62fc1172:	03058593          	addi	a1,a1,48
62fc1176:	00b50023          	sb	a1,0(a0)
62fc117a:	4785                	li	a5,1
62fc117c:	bfcd                	j	62fc116e <qcc74x_efuse_print_number+0x22>

62fc117e <qcc74x_efuse_get_device_info>:
62fc117e:	1101                	addi	sp,sp,-32
62fc1180:	cc22                	sw	s0,24(sp)
62fc1182:	4705                	li	a4,1
62fc1184:	842a                	mv	s0,a0
62fc1186:	4685                	li	a3,1
62fc1188:	0070                	addi	a2,sp,12
62fc118a:	45e1                	li	a1,24
62fc118c:	4501                	li	a0,0
62fc118e:	ce06                	sw	ra,28(sp)
62fc1190:	ca26                	sw	s1,20(sp)
62fc1192:	beeff0ef          	jal	ra,62fc0580 <qcc74x_ef_ctrl_read_direct>
62fc1196:	4732                	lw	a4,12(sp)
62fc1198:	5d67360b          	extu	a2,a4,23,22
62fc119c:	71a7378b          	extu	a5,a4,28,26
62fc11a0:	6587368b          	extu	a3,a4,25,24
62fc11a4:	8375                	srli	a4,a4,0x1d
62fc11a6:	00e401a3          	sb	a4,3(s0)
62fc11aa:	00c40023          	sb	a2,0(s0)
62fc11ae:	00f400a3          	sb	a5,1(s0)
62fc11b2:	00d40123          	sb	a3,2(s0)
62fc11b6:	4705                	li	a4,1
62fc11b8:	02e60963          	beq	a2,a4,62fc11ea <qcc74x_efuse_get_device_info+0x6c>
62fc11bc:	4709                	li	a4,2
62fc11be:	02e60b63          	beq	a2,a4,62fc11f4 <qcc74x_efuse_get_device_info+0x76>
62fc11c2:	ee15                	bnez	a2,62fc11fe <qcc74x_efuse_get_device_info+0x80>
62fc11c4:	a0009737          	lui	a4,0xa0009
62fc11c8:	4d070713          	addi	a4,a4,1232 # a00094d0 <__psram_limit+0xf7c094d0>
62fc11cc:	c418                	sw	a4,8(s0)
62fc11ce:	4709                	li	a4,2
62fc11d0:	0ee78363          	beq	a5,a4,62fc12b6 <qcc74x_efuse_get_device_info+0x138>
62fc11d4:	02f76a63          	bltu	a4,a5,62fc1208 <qcc74x_efuse_get_device_info+0x8a>
62fc11d8:	c3b9                	beqz	a5,62fc121e <qcc74x_efuse_get_device_info+0xa0>
62fc11da:	4705                	li	a4,1
62fc11dc:	0ce78863          	beq	a5,a4,62fc12ac <qcc74x_efuse_get_device_info+0x12e>
62fc11e0:	a00097b7          	lui	a5,0xa0009
62fc11e4:	4e878793          	addi	a5,a5,1256 # a00094e8 <__psram_limit+0xf7c094e8>
62fc11e8:	a83d                	j	62fc1226 <qcc74x_efuse_get_device_info+0xa8>
62fc11ea:	a0009737          	lui	a4,0xa0009
62fc11ee:	4d870713          	addi	a4,a4,1240 # a00094d8 <__psram_limit+0xf7c094d8>
62fc11f2:	bfe9                	j	62fc11cc <qcc74x_efuse_get_device_info+0x4e>
62fc11f4:	a0009737          	lui	a4,0xa0009
62fc11f8:	4e070713          	addi	a4,a4,1248 # a00094e0 <__psram_limit+0xf7c094e0>
62fc11fc:	bfc1                	j	62fc11cc <qcc74x_efuse_get_device_info+0x4e>
62fc11fe:	a0009737          	lui	a4,0xa0009
62fc1202:	4e870713          	addi	a4,a4,1256 # a00094e8 <__psram_limit+0xf7c094e8>
62fc1206:	b7d9                	j	62fc11cc <qcc74x_efuse_get_device_info+0x4e>
62fc1208:	470d                	li	a4,3
62fc120a:	0ae78b63          	beq	a5,a4,62fc12c0 <qcc74x_efuse_get_device_info+0x142>
62fc120e:	4711                	li	a4,4
62fc1210:	fce798e3          	bne	a5,a4,62fc11e0 <qcc74x_efuse_get_device_info+0x62>
62fc1214:	a00097b7          	lui	a5,0xa0009
62fc1218:	4fc78793          	addi	a5,a5,1276 # a00094fc <__psram_limit+0xf7c094fc>
62fc121c:	a029                	j	62fc1226 <qcc74x_efuse_get_device_info+0xa8>
62fc121e:	a00097b7          	lui	a5,0xa0009
62fc1222:	4f078793          	addi	a5,a5,1264 # a00094f0 <__psram_limit+0xf7c094f0>
62fc1226:	c45c                	sw	a5,12(s0)
62fc1228:	4789                	li	a5,2
62fc122a:	0af68563          	beq	a3,a5,62fc12d4 <qcc74x_efuse_get_device_info+0x156>
62fc122e:	478d                	li	a5,3
62fc1230:	0af68763          	beq	a3,a5,62fc12de <qcc74x_efuse_get_device_info+0x160>
62fc1234:	4785                	li	a5,1
62fc1236:	08f68a63          	beq	a3,a5,62fc12ca <qcc74x_efuse_get_device_info+0x14c>
62fc123a:	a00097b7          	lui	a5,0xa0009
62fc123e:	4f078793          	addi	a5,a5,1264 # a00094f0 <__psram_limit+0xf7c094f0>
62fc1242:	200004b7          	lui	s1,0x20000
62fc1246:	68048493          	addi	s1,s1,1664 # 20000680 <remain_wifi_ram+0x1ffe0680>
62fc124a:	c81c                	sw	a5,16(s0)
62fc124c:	40100793          	li	a5,1025
62fc1250:	d8bc                	sw	a5,112(s1)
62fc1252:	06e00513          	li	a0,110
62fc1256:	3585                	jal	62fc10b6 <arch_delay_us>
62fc1258:	40300793          	li	a5,1027
62fc125c:	d8bc                	sw	a5,112(s1)
62fc125e:	06e00513          	li	a0,110
62fc1262:	3d91                	jal	62fc10b6 <arch_delay_us>
62fc1264:	41300793          	li	a5,1043
62fc1268:	d8bc                	sw	a5,112(s1)
62fc126a:	06e00513          	li	a0,110
62fc126e:	35a1                	jal	62fc10b6 <arch_delay_us>
62fc1270:	43300793          	li	a5,1075
62fc1274:	d8bc                	sw	a5,112(s1)
62fc1276:	44c00513          	li	a0,1100
62fc127a:	3d35                	jal	62fc10b6 <arch_delay_us>
62fc127c:	58b8                	lw	a4,112(s1)
62fc127e:	1e000693          	li	a3,480
62fc1282:	01440513          	addi	a0,s0,20
62fc1286:	6cc7378b          	extu	a5,a4,27,12
62fc128a:	c63e                	sw	a5,12(sp)
62fc128c:	00f41223          	sh	a5,4(s0)
62fc1290:	04f6ec63          	bltu	a3,a5,62fc12e8 <qcc74x_efuse_get_device_info+0x16a>
62fc1294:	a00095b7          	lui	a1,0xa0009
62fc1298:	460d                	li	a2,3
62fc129a:	51858593          	addi	a1,a1,1304 # a0009518 <__psram_limit+0xf7c09518>
62fc129e:	962ff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc12a2:	40f2                	lw	ra,28(sp)
62fc12a4:	4462                	lw	s0,24(sp)
62fc12a6:	44d2                	lw	s1,20(sp)
62fc12a8:	6105                	addi	sp,sp,32
62fc12aa:	8082                	ret
62fc12ac:	a00097b7          	lui	a5,0xa0009
62fc12b0:	4f478793          	addi	a5,a5,1268 # a00094f4 <__psram_limit+0xf7c094f4>
62fc12b4:	bf8d                	j	62fc1226 <qcc74x_efuse_get_device_info+0xa8>
62fc12b6:	a00097b7          	lui	a5,0xa0009
62fc12ba:	4f878793          	addi	a5,a5,1272 # a00094f8 <__psram_limit+0xf7c094f8>
62fc12be:	b7a5                	j	62fc1226 <qcc74x_efuse_get_device_info+0xa8>
62fc12c0:	a00097b7          	lui	a5,0xa0009
62fc12c4:	51478793          	addi	a5,a5,1300 # a0009514 <__psram_limit+0xf7c09514>
62fc12c8:	bfb9                	j	62fc1226 <qcc74x_efuse_get_device_info+0xa8>
62fc12ca:	a00097b7          	lui	a5,0xa0009
62fc12ce:	50078793          	addi	a5,a5,1280 # a0009500 <__psram_limit+0xf7c09500>
62fc12d2:	bf85                	j	62fc1242 <qcc74x_efuse_get_device_info+0xc4>
62fc12d4:	a00097b7          	lui	a5,0xa0009
62fc12d8:	50878793          	addi	a5,a5,1288 # a0009508 <__psram_limit+0xf7c09508>
62fc12dc:	b79d                	j	62fc1242 <qcc74x_efuse_get_device_info+0xc4>
62fc12de:	a00097b7          	lui	a5,0xa0009
62fc12e2:	51078793          	addi	a5,a5,1296 # a0009510 <__psram_limit+0xf7c09510>
62fc12e6:	bfb1                	j	62fc1242 <qcc74x_efuse_get_device_info+0xc4>
62fc12e8:	21b00693          	li	a3,539
62fc12ec:	04f6e663          	bltu	a3,a5,62fc1338 <qcc74x_efuse_get_device_info+0x1ba>
62fc12f0:	e2078413          	addi	s0,a5,-480
62fc12f4:	06400793          	li	a5,100
62fc12f8:	02f40433          	mul	s0,s0,a5
62fc12fc:	03c00593          	li	a1,60
62fc1300:	0479                	addi	s0,s0,30
62fc1302:	02b44433          	div	s0,s0,a1
62fc1306:	0ff47593          	zext.b	a1,s0
62fc130a:	3589                	jal	62fc114c <qcc74x_efuse_print_number>
62fc130c:	a00095b7          	lui	a1,0xa0009
62fc1310:	4615                	li	a2,5
62fc1312:	51c58593          	addi	a1,a1,1308 # a000951c <__psram_limit+0xf7c0951c>
62fc1316:	84aa                	mv	s1,a0
62fc1318:	8e8ff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc131c:	06400593          	li	a1,100
62fc1320:	8d81                	sub	a1,a1,s0
62fc1322:	0ff5f593          	zext.b	a1,a1
62fc1326:	00448513          	addi	a0,s1,4
62fc132a:	350d                	jal	62fc114c <qcc74x_efuse_print_number>
62fc132c:	a00095b7          	lui	a1,0xa0009
62fc1330:	4611                	li	a2,4
62fc1332:	52458593          	addi	a1,a1,1316 # a0009524 <__psram_limit+0xf7c09524>
62fc1336:	b7a5                	j	62fc129e <qcc74x_efuse_get_device_info+0x120>
62fc1338:	21c00693          	li	a3,540
62fc133c:	00d79863          	bne	a5,a3,62fc134c <qcc74x_efuse_get_device_info+0x1ce>
62fc1340:	a00095b7          	lui	a1,0xa0009
62fc1344:	460d                	li	a2,3
62fc1346:	52858593          	addi	a1,a1,1320 # a0009528 <__psram_limit+0xf7c09528>
62fc134a:	bf91                	j	62fc129e <qcc74x_efuse_get_device_info+0x120>
62fc134c:	26100693          	li	a3,609
62fc1350:	04f6e763          	bltu	a3,a5,62fc139e <qcc74x_efuse_get_device_info+0x220>
62fc1354:	de478413          	addi	s0,a5,-540
62fc1358:	06400793          	li	a5,100
62fc135c:	02f40433          	mul	s0,s0,a5
62fc1360:	04600793          	li	a5,70
62fc1364:	06400593          	li	a1,100
62fc1368:	02340413          	addi	s0,s0,35
62fc136c:	02f44433          	div	s0,s0,a5
62fc1370:	8d81                	sub	a1,a1,s0
62fc1372:	0ff5f593          	zext.b	a1,a1
62fc1376:	3bd9                	jal	62fc114c <qcc74x_efuse_print_number>
62fc1378:	a00095b7          	lui	a1,0xa0009
62fc137c:	4615                	li	a2,5
62fc137e:	51c58593          	addi	a1,a1,1308 # a000951c <__psram_limit+0xf7c0951c>
62fc1382:	84aa                	mv	s1,a0
62fc1384:	87cff0ef          	jal	ra,62fc0400 <arch_memcpy>
62fc1388:	0ff47593          	zext.b	a1,s0
62fc138c:	00448513          	addi	a0,s1,4
62fc1390:	3b75                	jal	62fc114c <qcc74x_efuse_print_number>
62fc1392:	a00095b7          	lui	a1,0xa0009
62fc1396:	4611                	li	a2,4
62fc1398:	52c58593          	addi	a1,a1,1324 # a000952c <__psram_limit+0xf7c0952c>
62fc139c:	b709                	j	62fc129e <qcc74x_efuse_get_device_info+0x120>
62fc139e:	a00095b7          	lui	a1,0xa0009
62fc13a2:	460d                	li	a2,3
62fc13a4:	53058593          	addi	a1,a1,1328 # a0009530 <__psram_limit+0xf7c09530>
62fc13a8:	bddd                	j	62fc129e <qcc74x_efuse_get_device_info+0x120>
	...

62fc13ac <flash_cfg_GD_LQ64E>:
62fc13ac:	0104 3d01 9966 03ff 009f e9b7 c804 0100     ...=f...........
62fc13bc:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc13cc:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc13dc:	0102 01ab 3505 0000 0101 0000 ff38 ffa0     .....5......8...
62fc13ec:	0377 4002 0377 f002 0bb8 0fa0 0fa0 0005     w..@w...........
62fc13fc:	fde8 0003                                   ....

62fc1400 <flash_cfg_GD_Q64E>:
62fc1400:	0104 3f01 9966 03ff 009f e9b7 c804 0100     ...?f...........
62fc1410:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc1420:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1430:	0101 01ab 3505 0000 3101 0000 ff38 ff20     .....5...1..8. .
62fc1440:	0377 4002 0377 f002 012c 04b0 04b0 0005     w..@w...,.......
62fc1450:	80e8 0014                                   ....

62fc1454 <flash_cfg_Winb_16JV>:
62fc1454:	0104 3d01 9966 03ff 009f e9b7 ef04 0100     ...=f...........
62fc1464:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc1474:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc1484:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc1494:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc14a4:	80e8 0014                                   ....

62fc14a8 <flash_cfg_Winb_64JV>:
62fc14a8:	0004 3f01 9966 03ff 009f e9b7 ef04 0100     ...?f...........
62fc14b8:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc14c8:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc14d8:	0101 01ab 3505 0000 3101 0000 ff38 ffff     .....5...1..8...
62fc14e8:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc14f8:	80e8 0003                                   ....

62fc14fc <flash_cfg_Winb_256FV>:
62fc14fc:	0124 3f01 9966 03ff 009f e9b7 ef04 0100     $..?f...........
62fc150c:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc151c:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc152c:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc153c:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc154c:	80e8 0003                                   ....

62fc1550 <flash_cfg_Mxic_25U256>:
62fc1550:	0124 3f01 9966 03ff 009f e9b7 c204 0100     $..?f...........
62fc1560:	20c7 d852 0206 0238 010b 010b 013b 00bb     . R...8.....;...
62fc1570:	016b 02eb 02eb 5002 0000 0100 0006 0100     k......P........
62fc1580:	0102 01ab 1505 0000 0101 0000 ff38 ffa5     ............8...
62fc1590:	00c0 0200 00c0 1000 0190 03e8 07d0 0005     ................
62fc15a0:	80e8 0014                                   ....

62fc15a4 <flash_cfg_Puya_Q32H>:
62fc15a4:	0104 3f01 9966 03ff 009f e9b7 8504 0100     ...?f...........
62fc15b4:	20c7 d852 0206 0032 010b 010b 013b 00bb     . R...2.....;...
62fc15c4:	016b 02eb 02eb 5002 0100 0100 0001 0100     k......P........
62fc15d4:	0101 01ab 3505 0000 3101 0000 ff38 ffa0     .....5...1..8...
62fc15e4:	0377 4002 0377 f002 0190 0640 07d0 0005     w..@w.....@.....
62fc15f4:	80e8 0008                                   ....

62fc15f8 <flash_infos>:
62fc15f8:	40ef 0017 0000 0000 14a8 62fc 40ef 0019     .@.........b.@..
62fc1608:	0000 0000 14fc 62fc 60ef 0017 0000 0000     .......b.`......
62fc1618:	14a8 62fc 70ef 0015 0000 0000 1454 62fc     ...b.p......T..b
62fc1628:	40c8 0017 0000 0000 1400 62fc 60c8 0017     .@.........b.`..
62fc1638:	0000 0000 13ac 62fc 60c8 0018 0000 0000     .......b.`......
62fc1648:	13ac 62fc 65c8 0018 0000 0000 1400 62fc     ...b.e.........b
62fc1658:	345e 0015 0000 0000 1400 62fc 405e 0015     ^4.........b^@..
62fc1668:	0000 0000 1400 62fc 405e 0016 0000 0000     .......b^@......
62fc1678:	1400 62fc 405e 0017 0000 0000 1400 62fc     ...b^@.........b
62fc1688:	405e 0018 0000 0000 1400 62fc 605e 0015     ^@.........b^`..
62fc1698:	0000 0000 1400 62fc 25c2 0039 0000 0000     .......b.%9.....
62fc16a8:	1550 62fc 4020 0014 0000 0000 1454 62fc     P..b @......T..b
62fc16b8:	4020 0015 0000 0000 1454 62fc 4020 0016      @......T..b @..
62fc16c8:	0000 0000 1454 62fc 4020 0017 0000 0000     ....T..b @......
62fc16d8:	1454 62fc 4020 0018 0000 0000 1454 62fc     T..b @......T..b
62fc16e8:	5020 0016 0000 0000 1454 62fc 4220 0017      P......T..b B..
62fc16f8:	0000 0000 1454 62fc 400b 0017 0000 0000     ....T..b.@......
62fc1708:	13ac 62fc 400b 0018 0000 0000 13ac 62fc     ...b.@.........b
62fc1718:	6085 0017 0000 0000 15a4 62fc 6085 0018     .`.........b.`..
62fc1728:	0000 0000 15a4 62fc 2085 0014 0000 0000     .......b. ......
62fc1738:	13ac 62fc 2085 0015 0000 0000 13ac 62fc     ...b. .........b
62fc1748:	2085 0016 0000 0000 13ac 62fc 2085 0017     . .........b. ..
62fc1758:	0000 0000 13ac 62fc 2085 0018 0000 0000     .......b. ......
62fc1768:	13ac 62fc 2085 0019 0000 0000 13ac 62fc     ...b. .........b
62fc1778:	40a1 0015 0000 0000 1454 62fc 40a1 0016     .@......T..b.@..
62fc1788:	0000 0000 13ac 62fc 40a1 0017 0000 0000     .......b.@......
62fc1798:	1454 62fc 40a1 0018 0000 0000 1454 62fc     T..b.@......T..b
62fc17a8:	28a1 0018 0000 0000 1454 62fc 60c4 0016     .(......T..b.`..
62fc17b8:	0000 0000 1454 62fc 60c4 0015 0000 0000     ....T..b.`......
62fc17c8:	1454 62fc 60c4 0017 0000 0000 1454 62fc     T..b.`......T..b
62fc17d8:	6125 0016 0000 0000 13ac 62fc 65c8 0017     %a.........b.e..
62fc17e8:	0000 0000 1400 62fc 60c4 0014 0000 0000     .......b.`......
62fc17f8:	1454 62fc                                   T..b

62fc17fc <Clock_Get_AUPLL_Output>:
62fc17fc:	1101                	addi	sp,sp,-32
62fc17fe:	ca26                	sw	s1,20(sp)
62fc1800:	000107a3          	sb	zero,15(sp)
62fc1804:	84aa                	mv	s1,a0
62fc1806:	200087b7          	lui	a5,0x20008
62fc180a:	00f10513          	addi	a0,sp,15
62fc180e:	cc22                	sw	s0,24(sp)
62fc1810:	ce06                	sw	ra,28(sp)
62fc1812:	7687a403          	lw	s0,1896(a5) # 20008768 <remain_wifi_ram+0x1ffe8768>
62fc1816:	c00ff0ef          	jal	ra,62fc0c16 <HBN_Get_Xtal_Type>
62fc181a:	e121                	bnez	a0,62fc185a <Clock_Get_AUPLL_Output+0x5e>
62fc181c:	00f14703          	lbu	a4,15(sp)
62fc1820:	000807b7          	lui	a5,0x80
62fc1824:	17fd                	addi	a5,a5,-1
62fc1826:	4691                	li	a3,4
62fc1828:	8fe1                	and	a5,a5,s0
62fc182a:	0cd70463          	beq	a4,a3,62fc18f2 <Clock_Get_AUPLL_Output+0xf6>
62fc182e:	02e6e063          	bltu	a3,a4,62fc184e <Clock_Get_AUPLL_Output+0x52>
62fc1832:	4689                	li	a3,2
62fc1834:	0cd70763          	beq	a4,a3,62fc1902 <Clock_Get_AUPLL_Output+0x106>
62fc1838:	468d                	li	a3,3
62fc183a:	0ad70363          	beq	a4,a3,62fc18e0 <Clock_Get_AUPLL_Output+0xe4>
62fc183e:	4685                	li	a3,1
62fc1840:	00d70f63          	beq	a4,a3,62fc185e <Clock_Get_AUPLL_Output+0x62>
62fc1844:	40f2                	lw	ra,28(sp)
62fc1846:	4462                	lw	s0,24(sp)
62fc1848:	44d2                	lw	s1,20(sp)
62fc184a:	6105                	addi	sp,sp,32
62fc184c:	8082                	ret
62fc184e:	4695                	li	a3,5
62fc1850:	0ad70563          	beq	a4,a3,62fc18fa <Clock_Get_AUPLL_Output+0xfe>
62fc1854:	4699                	li	a3,6
62fc1856:	0ad70663          	beq	a4,a3,62fc1902 <Clock_Get_AUPLL_Output+0x106>
62fc185a:	4501                	li	a0,0
62fc185c:	b7e5                	j	62fc1844 <Clock_Get_AUPLL_Output+0x48>
62fc185e:	6719                	lui	a4,0x6
62fc1860:	dc070713          	addi	a4,a4,-576 # 5dc0 <HeapMinSize+0x4dc0>
62fc1864:	02e787b3          	mul	a5,a5,a4
62fc1868:	1f400713          	li	a4,500
62fc186c:	83ad                	srli	a5,a5,0xb
62fc186e:	02e787b3          	mul	a5,a5,a4
62fc1872:	e2bbf737          	lui	a4,0xe2bbf
62fc1876:	f4070713          	addi	a4,a4,-192 # e2bbef40 <__psram_limit+0x3a7bef40>
62fc187a:	000f46b7          	lui	a3,0xf4
62fc187e:	24068693          	addi	a3,a3,576 # f4240 <remain_wifi_ram+0xd4240>
62fc1882:	973e                	add	a4,a4,a5
62fc1884:	08e6f363          	bgeu	a3,a4,62fc190a <Clock_Get_AUPLL_Output+0x10e>
62fc1888:	e51e5737          	lui	a4,0xe51e5
62fc188c:	94070713          	addi	a4,a4,-1728 # e51e4940 <__psram_limit+0x3cde4940>
62fc1890:	973e                	add	a4,a4,a5
62fc1892:	06e6ff63          	bgeu	a3,a4,62fc1910 <Clock_Get_AUPLL_Output+0x114>
62fc1896:	e837c737          	lui	a4,0xe837c
62fc189a:	e4070713          	addi	a4,a4,-448 # e837be40 <__psram_limit+0x3ff7be40>
62fc189e:	001e86b7          	lui	a3,0x1e8
62fc18a2:	973e                	add	a4,a4,a5
62fc18a4:	48068693          	addi	a3,a3,1152 # 1e8480 <remain_wifi_ram+0x1c8480>
62fc18a8:	06e6f963          	bgeu	a3,a4,62fc191a <Clock_Get_AUPLL_Output+0x11e>
62fc18ac:	e92be737          	lui	a4,0xe92be
62fc18b0:	24070713          	addi	a4,a4,576 # e92be240 <__psram_limit+0x40ebe240>
62fc18b4:	97ba                	add	a5,a5,a4
62fc18b6:	4501                	li	a0,0
62fc18b8:	f8f6e6e3          	bltu	a3,a5,62fc1844 <Clock_Get_AUPLL_Output+0x48>
62fc18bc:	16e36537          	lui	a0,0x16e36
62fc18c0:	4791                	li	a5,4
62fc18c2:	06f48c63          	beq	s1,a5,62fc193a <Clock_Get_AUPLL_Output+0x13e>
62fc18c6:	0497ef63          	bltu	a5,s1,62fc1924 <Clock_Get_AUPLL_Output+0x128>
62fc18ca:	4789                	li	a5,2
62fc18cc:	06f48263          	beq	s1,a5,62fc1930 <Clock_Get_AUPLL_Output+0x134>
62fc18d0:	478d                	li	a5,3
62fc18d2:	04f48c63          	beq	s1,a5,62fc192a <Clock_Get_AUPLL_Output+0x12e>
62fc18d6:	4785                	li	a5,1
62fc18d8:	f6f496e3          	bne	s1,a5,62fc1844 <Clock_Get_AUPLL_Output+0x48>
62fc18dc:	8105                	srli	a0,a0,0x1
62fc18de:	b79d                	j	62fc1844 <Clock_Get_AUPLL_Output+0x48>
62fc18e0:	6725                	lui	a4,0x9
62fc18e2:	60070713          	addi	a4,a4,1536 # 9600 <wifi_ram_max_size+0x1600>
62fc18e6:	02e787b3          	mul	a5,a5,a4
62fc18ea:	0fa00713          	li	a4,250
62fc18ee:	83ad                	srli	a5,a5,0xb
62fc18f0:	bfbd                	j	62fc186e <Clock_Get_AUPLL_Output+0x72>
62fc18f2:	6729                	lui	a4,0xa
62fc18f4:	c4070713          	addi	a4,a4,-960 # 9c40 <wifi_ram_max_size+0x1c40>
62fc18f8:	b7fd                	j	62fc18e6 <Clock_Get_AUPLL_Output+0xea>
62fc18fa:	6719                	lui	a4,0x6
62fc18fc:	59070713          	addi	a4,a4,1424 # 6590 <HeapMinSize+0x5590>
62fc1900:	b795                	j	62fc1864 <Clock_Get_AUPLL_Output+0x68>
62fc1902:	6721                	lui	a4,0x8
62fc1904:	d0070713          	addi	a4,a4,-768 # 7d00 <HeapMinSize+0x6d00>
62fc1908:	bff9                	j	62fc18e6 <Clock_Get_AUPLL_Output+0xea>
62fc190a:	1d4c0537          	lui	a0,0x1d4c0
62fc190e:	bf4d                	j	62fc18c0 <Clock_Get_AUPLL_Output+0xc4>
62fc1910:	1aea9537          	lui	a0,0x1aea9
62fc1914:	06050513          	addi	a0,a0,96 # 1aea9060 <remain_wifi_ram+0x1ae89060>
62fc1918:	b765                	j	62fc18c0 <Clock_Get_AUPLL_Output+0xc4>
62fc191a:	17d78537          	lui	a0,0x17d78
62fc191e:	40050513          	addi	a0,a0,1024 # 17d78400 <remain_wifi_ram+0x17d58400>
62fc1922:	bf79                	j	62fc18c0 <Clock_Get_AUPLL_Output+0xc4>
62fc1924:	4795                	li	a5,5
62fc1926:	00f49c63          	bne	s1,a5,62fc193e <Clock_Get_AUPLL_Output+0x142>
62fc192a:	02955533          	divu	a0,a0,s1
62fc192e:	bf19                	j	62fc1844 <Clock_Get_AUPLL_Output+0x48>
62fc1930:	0506                	slli	a0,a0,0x1
62fc1932:	4795                	li	a5,5
62fc1934:	02f55533          	divu	a0,a0,a5
62fc1938:	b731                	j	62fc1844 <Clock_Get_AUPLL_Output+0x48>
62fc193a:	8109                	srli	a0,a0,0x2
62fc193c:	b721                	j	62fc1844 <Clock_Get_AUPLL_Output+0x48>
62fc193e:	4799                	li	a5,6
62fc1940:	bfd5                	j	62fc1934 <Clock_Get_AUPLL_Output+0x138>

62fc1942 <Clock_Get_Audio_PLL_Output>:
62fc1942:	1141                	addi	sp,sp,-16
62fc1944:	200087b7          	lui	a5,0x20008
62fc1948:	c422                	sw	s0,8(sp)
62fc194a:	7547a403          	lw	s0,1876(a5) # 20008754 <remain_wifi_ram+0x1ffe8754>
62fc194e:	4501                	li	a0,0
62fc1950:	c606                	sw	ra,12(sp)
62fc1952:	07f47413          	andi	s0,s0,127
62fc1956:	355d                	jal	62fc17fc <Clock_Get_AUPLL_Output>
62fc1958:	02855533          	divu	a0,a0,s0
62fc195c:	40b2                	lw	ra,12(sp)
62fc195e:	4422                	lw	s0,8(sp)
62fc1960:	0141                	addi	sp,sp,16
62fc1962:	8082                	ret

62fc1964 <Clock_160M_Clk_Mux_Output>:
62fc1964:	c10d                	beqz	a0,62fc1986 <Clock_160M_Clk_Mux_Output+0x22>
62fc1966:	4785                	li	a5,1
62fc1968:	00f51463          	bne	a0,a5,62fc1970 <Clock_160M_Clk_Mux_Output+0xc>
62fc196c:	450d                	li	a0,3
62fc196e:	b579                	j	62fc17fc <Clock_Get_AUPLL_Output>
62fc1970:	4789                	li	a5,2
62fc1972:	00f51463          	bne	a0,a5,62fc197a <Clock_160M_Clk_Mux_Output+0x16>
62fc1976:	4505                	li	a0,1
62fc1978:	bfdd                	j	62fc196e <Clock_160M_Clk_Mux_Output+0xa>
62fc197a:	470d                	li	a4,3
62fc197c:	4781                	li	a5,0
62fc197e:	00e51863          	bne	a0,a4,62fc198e <Clock_160M_Clk_Mux_Output+0x2a>
62fc1982:	4509                	li	a0,2
62fc1984:	b7ed                	j	62fc196e <Clock_160M_Clk_Mux_Output+0xa>
62fc1986:	098977b7          	lui	a5,0x9897
62fc198a:	80078793          	addi	a5,a5,-2048 # 9896800 <remain_wifi_ram+0x9876800>
62fc198e:	853e                	mv	a0,a5
62fc1990:	8082                	ret

62fc1992 <Clock_Xtal_Output>:
62fc1992:	1101                	addi	sp,sp,-32
62fc1994:	00f10513          	addi	a0,sp,15
62fc1998:	ce06                	sw	ra,28(sp)
62fc199a:	000107a3          	sb	zero,15(sp)
62fc199e:	a78ff0ef          	jal	ra,62fc0c16 <HBN_Get_Xtal_Type>
62fc19a2:	ed19                	bnez	a0,62fc19c0 <Clock_Xtal_Output+0x2e>
62fc19a4:	00f14703          	lbu	a4,15(sp)
62fc19a8:	4799                	li	a5,6
62fc19aa:	00e7e863          	bltu	a5,a4,62fc19ba <Clock_Xtal_Output+0x28>
62fc19ae:	a00097b7          	lui	a5,0xa0009
62fc19b2:	4b478793          	addi	a5,a5,1204 # a00094b4 <__psram_limit+0xf7c094b4>
62fc19b6:	44e7c50b          	lrw	a0,a5,a4,2
62fc19ba:	40f2                	lw	ra,28(sp)
62fc19bc:	6105                	addi	sp,sp,32
62fc19be:	8082                	ret
62fc19c0:	02626537          	lui	a0,0x2626
62fc19c4:	a0050513          	addi	a0,a0,-1536 # 2625a00 <remain_wifi_ram+0x2605a00>
62fc19c8:	bfcd                	j	62fc19ba <Clock_Xtal_Output+0x28>

62fc19ca <Clock_F32k_Mux_Output>:
62fc19ca:	200007b7          	lui	a5,0x20000
62fc19ce:	2507a783          	lw	a5,592(a5) # 20000250 <remain_wifi_ram+0x1ffe0250>
62fc19d2:	4709                	li	a4,2
62fc19d4:	02a77e63          	bgeu	a4,a0,62fc1a10 <Clock_F32k_Mux_Output+0x46>
62fc19d8:	6505                	lui	a0,0x1
62fc19da:	8d7d                	and	a0,a0,a5
62fc19dc:	cd05                	beqz	a0,62fc1a14 <Clock_F32k_Mux_Output+0x4a>
62fc19de:	1141                	addi	sp,sp,-16
62fc19e0:	c422                	sw	s0,8(sp)
62fc19e2:	c606                	sw	ra,12(sp)
62fc19e4:	7ff7f413          	andi	s0,a5,2047
62fc19e8:	75c7b78b          	extu	a5,a5,29,28
62fc19ec:	eb99                	bnez	a5,62fc1a02 <Clock_F32k_Mux_Output+0x38>
62fc19ee:	01e85537          	lui	a0,0x1e85
62fc19f2:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc19f6:	02855533          	divu	a0,a0,s0
62fc19fa:	40b2                	lw	ra,12(sp)
62fc19fc:	4422                	lw	s0,8(sp)
62fc19fe:	0141                	addi	sp,sp,16
62fc1a00:	8082                	ret
62fc1a02:	4705                	li	a4,1
62fc1a04:	00e79463          	bne	a5,a4,62fc1a0c <Clock_F32k_Mux_Output+0x42>
62fc1a08:	3769                	jal	62fc1992 <Clock_Xtal_Output>
62fc1a0a:	b7f5                	j	62fc19f6 <Clock_F32k_Mux_Output+0x2c>
62fc1a0c:	3f1d                	jal	62fc1942 <Clock_Get_Audio_PLL_Output>
62fc1a0e:	b7e5                	j	62fc19f6 <Clock_F32k_Mux_Output+0x2c>
62fc1a10:	6521                	lui	a0,0x8
62fc1a12:	8082                	ret
62fc1a14:	8082                	ret

62fc1a16 <Clock_MCU_Root_Clk_Mux_Output>:
62fc1a16:	e519                	bnez	a0,62fc1a24 <Clock_MCU_Root_Clk_Mux_Output+0xe>
62fc1a18:	2000f7b7          	lui	a5,0x2000f
62fc1a1c:	5b9c                	lw	a5,48(a5)
62fc1a1e:	8b85                	andi	a5,a5,1
62fc1a20:	cb8d                	beqz	a5,62fc1a52 <Clock_MCU_Root_Clk_Mux_Output+0x3c>
62fc1a22:	bf85                	j	62fc1992 <Clock_Xtal_Output>
62fc1a24:	4685                	li	a3,1
62fc1a26:	4781                	li	a5,0
62fc1a28:	02d51363          	bne	a0,a3,62fc1a4e <Clock_MCU_Root_Clk_Mux_Output+0x38>
62fc1a2c:	2000e7b7          	lui	a5,0x2000e
62fc1a30:	1147a783          	lw	a5,276(a5) # 2000e114 <remain_wifi_ram+0x1ffee114>
62fc1a34:	1447b78b          	extu	a5,a5,5,4
62fc1a38:	e391                	bnez	a5,62fc1a3c <Clock_MCU_Root_Clk_Mux_Output+0x26>
62fc1a3a:	b3c9                	j	62fc17fc <Clock_Get_AUPLL_Output>
62fc1a3c:	00a79463          	bne	a5,a0,62fc1a44 <Clock_MCU_Root_Clk_Mux_Output+0x2e>
62fc1a40:	4501                	li	a0,0
62fc1a42:	bfe5                	j	62fc1a3a <Clock_MCU_Root_Clk_Mux_Output+0x24>
62fc1a44:	4709                	li	a4,2
62fc1a46:	00e78b63          	beq	a5,a4,62fc1a5c <Clock_MCU_Root_Clk_Mux_Output+0x46>
62fc1a4a:	1312d7b7          	lui	a5,0x1312d
62fc1a4e:	853e                	mv	a0,a5
62fc1a50:	8082                	ret
62fc1a52:	01e857b7          	lui	a5,0x1e85
62fc1a56:	80078793          	addi	a5,a5,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc1a5a:	bfd5                	j	62fc1a4e <Clock_MCU_Root_Clk_Mux_Output+0x38>
62fc1a5c:	0e4e27b7          	lui	a5,0xe4e2
62fc1a60:	c0078793          	addi	a5,a5,-1024 # e4e1c00 <remain_wifi_ram+0xe4c1c00>
62fc1a64:	b7ed                	j	62fc1a4e <Clock_MCU_Root_Clk_Mux_Output+0x38>

62fc1a66 <Clock_System_Clock_Get>:
62fc1a66:	4791                	li	a5,4
62fc1a68:	06f50a63          	beq	a0,a5,62fc1adc <Clock_System_Clock_Get+0x76>
62fc1a6c:	00a7ef63          	bltu	a5,a0,62fc1a8a <Clock_System_Clock_Get+0x24>
62fc1a70:	1141                	addi	sp,sp,-16
62fc1a72:	c606                	sw	ra,12(sp)
62fc1a74:	4785                	li	a5,1
62fc1a76:	02f50a63          	beq	a0,a5,62fc1aaa <Clock_System_Clock_Get+0x44>
62fc1a7a:	478d                	li	a5,3
62fc1a7c:	04f50763          	beq	a0,a5,62fc1aca <Clock_System_Clock_Get+0x64>
62fc1a80:	cd09                	beqz	a0,62fc1a9a <Clock_System_Clock_Get+0x34>
62fc1a82:	4501                	li	a0,0
62fc1a84:	40b2                	lw	ra,12(sp)
62fc1a86:	0141                	addi	sp,sp,16
62fc1a88:	8082                	ret
62fc1a8a:	4795                	li	a5,5
62fc1a8c:	04f50e63          	beq	a0,a5,62fc1ae8 <Clock_System_Clock_Get+0x82>
62fc1a90:	4799                	li	a5,6
62fc1a92:	06f50063          	beq	a0,a5,62fc1af2 <Clock_System_Clock_Get+0x8c>
62fc1a96:	4501                	li	a0,0
62fc1a98:	8082                	ret
62fc1a9a:	2000f7b7          	lui	a5,0x2000f
62fc1a9e:	5b88                	lw	a0,48(a5)
62fc1aa0:	40b2                	lw	ra,12(sp)
62fc1aa2:	0415350b          	extu	a0,a0,1,1
62fc1aa6:	0141                	addi	sp,sp,16
62fc1aa8:	b7bd                	j	62fc1a16 <Clock_MCU_Root_Clk_Mux_Output>
62fc1aaa:	2000f7b7          	lui	a5,0x2000f
62fc1aae:	5b88                	lw	a0,48(a5)
62fc1ab0:	0415350b          	extu	a0,a0,1,1
62fc1ab4:	378d                	jal	62fc1a16 <Clock_MCU_Root_Clk_Mux_Output>
62fc1ab6:	200007b7          	lui	a5,0x20000
62fc1aba:	0907a783          	lw	a5,144(a5) # 20000090 <remain_wifi_ram+0x1ffe0090>
62fc1abe:	3c87b78b          	extu	a5,a5,15,8
62fc1ac2:	0785                	addi	a5,a5,1
62fc1ac4:	02f55533          	divu	a0,a0,a5
62fc1ac8:	bf75                	j	62fc1a84 <Clock_System_Clock_Get+0x1e>
62fc1aca:	4505                	li	a0,1
62fc1acc:	3f69                	jal	62fc1a66 <Clock_System_Clock_Get>
62fc1ace:	200007b7          	lui	a5,0x20000
62fc1ad2:	0907a783          	lw	a5,144(a5) # 20000090 <remain_wifi_ram+0x1ffe0090>
62fc1ad6:	5d07b78b          	extu	a5,a5,23,16
62fc1ada:	b7e5                	j	62fc1ac2 <Clock_System_Clock_Get+0x5c>
62fc1adc:	2000f7b7          	lui	a5,0x2000f
62fc1ae0:	5b88                	lw	a0,48(a5)
62fc1ae2:	1035350b          	extu	a0,a0,4,3
62fc1ae6:	b5d5                	j	62fc19ca <Clock_F32k_Mux_Output>
62fc1ae8:	2000f7b7          	lui	a5,0x2000f
62fc1aec:	5b9c                	lw	a5,48(a5)
62fc1aee:	8b85                	andi	a5,a5,1
62fc1af0:	c391                	beqz	a5,62fc1af4 <Clock_System_Clock_Get+0x8e>
62fc1af2:	b545                	j	62fc1992 <Clock_Xtal_Output>
62fc1af4:	01e85537          	lui	a0,0x1e85
62fc1af8:	80050513          	addi	a0,a0,-2048 # 1e84800 <remain_wifi_ram+0x1e64800>
62fc1afc:	8082                	ret

62fc1afe <CPU_Set_MTimer_CLK>:
62fc1afe:	200097b7          	lui	a5,0x20009
62fc1b02:	4bd8                	lw	a4,20(a5)
62fc1b04:	e00006b7          	lui	a3,0xe0000
62fc1b08:	16fd                	addi	a3,a3,-1
62fc1b0a:	8f75                	and	a4,a4,a3
62fc1b0c:	05f6                	slli	a1,a1,0x1d
62fc1b0e:	8dd9                	or	a1,a1,a4
62fc1b10:	cbcc                	sw	a1,20(a5)
62fc1b12:	4bd4                	lw	a3,20(a5)
62fc1b14:	800005b7          	lui	a1,0x80000
62fc1b18:	fff5c713          	not	a4,a1
62fc1b1c:	8ef9                	and	a3,a3,a4
62fc1b1e:	cbd4                	sw	a3,20(a5)
62fc1b20:	4bd4                	lw	a3,20(a5)
62fc1b22:	c006f693          	andi	a3,a3,-1024
62fc1b26:	8e55                	or	a2,a2,a3
62fc1b28:	cbd0                	sw	a2,20(a5)
62fc1b2a:	4bdc                	lw	a5,20(a5)
62fc1b2c:	8f7d                	and	a4,a4,a5
62fc1b2e:	c119                	beqz	a0,62fc1b34 <CPU_Set_MTimer_CLK+0x36>
62fc1b30:	00b7e733          	or	a4,a5,a1
62fc1b34:	200097b7          	lui	a5,0x20009
62fc1b38:	cbd8                	sw	a4,20(a5)
62fc1b3a:	4501                	li	a0,0
62fc1b3c:	8082                	ret

62fc1b3e <system_clock_init>:
62fc1b3e:	1141                	addi	sp,sp,-16
62fc1b40:	458d                	li	a1,3
62fc1b42:	4511                	li	a0,4
62fc1b44:	c606                	sw	ra,12(sp)
62fc1b46:	86cff0ef          	jal	ra,62fc0bb2 <GLB_Power_On_XTAL_And_PLL_CLK>
62fc1b4a:	4515                	li	a0,5
62fc1b4c:	88eff0ef          	jal	ra,62fc0bda <GLB_Set_MCU_System_CLK>
62fc1b50:	4505                	li	a0,1
62fc1b52:	8d8ff0ef          	jal	ra,62fc0c2a <HBN_Set_MCU_XCLK_Sel>
62fc1b56:	4515                	li	a0,5
62fc1b58:	3739                	jal	62fc1a66 <Clock_System_Clock_Get>
62fc1b5a:	000f4637          	lui	a2,0xf4
62fc1b5e:	24060613          	addi	a2,a2,576 # f4240 <remain_wifi_ram+0xd4240>
62fc1b62:	02c55633          	divu	a2,a0,a2
62fc1b66:	40b2                	lw	ra,12(sp)
62fc1b68:	4581                	li	a1,0
62fc1b6a:	4505                	li	a0,1
62fc1b6c:	0141                	addi	sp,sp,16
62fc1b6e:	167d                	addi	a2,a2,-1
62fc1b70:	3c06360b          	extu	a2,a2,15,0
62fc1b74:	b769                	j	62fc1afe <CPU_Set_MTimer_CLK>
	...
