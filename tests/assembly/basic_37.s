
program.elf:     file format elf32-littleriscv


Disassembly of section .text:

80000000 <_start>:
80000000:	80014137          	lui	sp,0x80014
80000004:	ffc10113          	addi	sp,sp,-4 # 80013ffc <__stack_top>
80000008:	800102b7          	lui	t0,0x80010
8000000c:	0e028293          	addi	t0,t0,224 # 800100e0 <__bss_end>
80000010:	80010337          	lui	t1,0x80010
80000014:	0e030313          	addi	t1,t1,224 # 800100e0 <__bss_end>
80000018:	00628863          	beq	t0,t1,80000028 <_start+0x28>
8000001c:	0002a023          	sw	zero,0(t0)
80000020:	00428293          	addi	t0,t0,4
80000024:	fe62cce3          	blt	t0,t1,8000001c <_start+0x1c>
80000028:	010000ef          	jal	80000038 <main>
8000002c:	06400013          	li	zero,100
80000030:	00100073          	ebreak
80000034:	0000006f          	j	80000034 <_start+0x34>

80000038 <main>:
80000038:	00200193          	li	gp,2
8000003c:	00000593          	li	a1,0
80000040:	00000613          	li	a2,0
80000044:	00c58733          	add	a4,a1,a2
80000048:	00000393          	li	t2,0
8000004c:	4c771663          	bne	a4,t2,80000518 <fail_add>

80000050 <add_test_3>:
80000050:	00300193          	li	gp,3
80000054:	00100593          	li	a1,1
80000058:	00100613          	li	a2,1
8000005c:	00c58733          	add	a4,a1,a2
80000060:	00200393          	li	t2,2
80000064:	4a771a63          	bne	a4,t2,80000518 <fail_add>

80000068 <add_test_4>:
80000068:	00400193          	li	gp,4
8000006c:	00300593          	li	a1,3
80000070:	00700613          	li	a2,7
80000074:	00c58733          	add	a4,a1,a2
80000078:	00a00393          	li	t2,10
8000007c:	48771e63          	bne	a4,t2,80000518 <fail_add>

80000080 <add_test_5>:
80000080:	00500193          	li	gp,5
80000084:	00000593          	li	a1,0
80000088:	ffff8637          	lui	a2,0xffff8
8000008c:	00c58733          	add	a4,a1,a2
80000090:	ffff83b7          	lui	t2,0xffff8
80000094:	48771263          	bne	a4,t2,80000518 <fail_add>

80000098 <add_test_6>:
80000098:	00600193          	li	gp,6
8000009c:	800005b7          	lui	a1,0x80000
800000a0:	00000613          	li	a2,0
800000a4:	00c58733          	add	a4,a1,a2
800000a8:	800003b7          	lui	t2,0x80000
800000ac:	46771663          	bne	a4,t2,80000518 <fail_add>

800000b0 <add_test_7>:
800000b0:	00700193          	li	gp,7
800000b4:	800005b7          	lui	a1,0x80000
800000b8:	ffff8637          	lui	a2,0xffff8
800000bc:	00c58733          	add	a4,a1,a2
800000c0:	7fff83b7          	lui	t2,0x7fff8
800000c4:	44771a63          	bne	a4,t2,80000518 <fail_add>

800000c8 <add_test_8>:
800000c8:	00800193          	li	gp,8
800000cc:	00000593          	li	a1,0
800000d0:	00008637          	lui	a2,0x8
800000d4:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
800000d8:	00c58733          	add	a4,a1,a2
800000dc:	000083b7          	lui	t2,0x8
800000e0:	fff38393          	addi	t2,t2,-1 # 7fff <_size_rom-0xd11>
800000e4:	42771a63          	bne	a4,t2,80000518 <fail_add>

800000e8 <add_test_9>:
800000e8:	00900193          	li	gp,9
800000ec:	800005b7          	lui	a1,0x80000
800000f0:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
800000f4:	00000613          	li	a2,0
800000f8:	00c58733          	add	a4,a1,a2
800000fc:	800003b7          	lui	t2,0x80000
80000100:	fff38393          	addi	t2,t2,-1 # 7fffffff <_size_rom+0x7fff72ef>
80000104:	40771a63          	bne	a4,t2,80000518 <fail_add>

80000108 <add_test_10>:
80000108:	00a00193          	li	gp,10
8000010c:	800005b7          	lui	a1,0x80000
80000110:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
80000114:	00008637          	lui	a2,0x8
80000118:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
8000011c:	00c58733          	add	a4,a1,a2
80000120:	800083b7          	lui	t2,0x80008
80000124:	ffe38393          	addi	t2,t2,-2 # 80007ffe <test_29plus8_sub+0x2>
80000128:	3e771863          	bne	a4,t2,80000518 <fail_add>

8000012c <add_test_11>:
8000012c:	00b00193          	li	gp,11
80000130:	800005b7          	lui	a1,0x80000
80000134:	00008637          	lui	a2,0x8
80000138:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
8000013c:	00c58733          	add	a4,a1,a2
80000140:	800083b7          	lui	t2,0x80008
80000144:	fff38393          	addi	t2,t2,-1 # 80007fff <test_29plus8_sub+0x3>
80000148:	3c771863          	bne	a4,t2,80000518 <fail_add>

8000014c <add_test_12>:
8000014c:	00c00193          	li	gp,12
80000150:	800005b7          	lui	a1,0x80000
80000154:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
80000158:	ffff8637          	lui	a2,0xffff8
8000015c:	00c58733          	add	a4,a1,a2
80000160:	7fff83b7          	lui	t2,0x7fff8
80000164:	fff38393          	addi	t2,t2,-1 # 7fff7fff <_size_rom+0x7ffef2ef>
80000168:	3a771863          	bne	a4,t2,80000518 <fail_add>

8000016c <add_test_13>:
8000016c:	00d00193          	li	gp,13
80000170:	00000593          	li	a1,0
80000174:	fff00613          	li	a2,-1
80000178:	00c58733          	add	a4,a1,a2
8000017c:	fff00393          	li	t2,-1
80000180:	38771c63          	bne	a4,t2,80000518 <fail_add>

80000184 <add_test_14>:
80000184:	00e00193          	li	gp,14
80000188:	fff00593          	li	a1,-1
8000018c:	00100613          	li	a2,1
80000190:	00c58733          	add	a4,a1,a2
80000194:	00000393          	li	t2,0
80000198:	38771063          	bne	a4,t2,80000518 <fail_add>

8000019c <add_test_15>:
8000019c:	00f00193          	li	gp,15
800001a0:	fff00593          	li	a1,-1
800001a4:	fff00613          	li	a2,-1
800001a8:	00c58733          	add	a4,a1,a2
800001ac:	ffe00393          	li	t2,-2
800001b0:	36771463          	bne	a4,t2,80000518 <fail_add>

800001b4 <add_test_16>:
800001b4:	01000193          	li	gp,16
800001b8:	00100593          	li	a1,1
800001bc:	80000637          	lui	a2,0x80000
800001c0:	fff60613          	addi	a2,a2,-1 # 7fffffff <_size_rom+0x7fff72ef>
800001c4:	00c58733          	add	a4,a1,a2
800001c8:	800003b7          	lui	t2,0x80000
800001cc:	34771663          	bne	a4,t2,80000518 <fail_add>

800001d0 <add_test_17>:
800001d0:	01100193          	li	gp,17
800001d4:	00d00593          	li	a1,13
800001d8:	00b00613          	li	a2,11
800001dc:	00c585b3          	add	a1,a1,a2
800001e0:	01800393          	li	t2,24
800001e4:	32759a63          	bne	a1,t2,80000518 <fail_add>

800001e8 <add_test_18>:
800001e8:	01200193          	li	gp,18
800001ec:	00e00593          	li	a1,14
800001f0:	00b00613          	li	a2,11
800001f4:	00c58633          	add	a2,a1,a2
800001f8:	01900393          	li	t2,25
800001fc:	30761e63          	bne	a2,t2,80000518 <fail_add>

80000200 <add_test_19>:
80000200:	01300193          	li	gp,19
80000204:	00d00593          	li	a1,13
80000208:	00b585b3          	add	a1,a1,a1
8000020c:	01a00393          	li	t2,26
80000210:	30759463          	bne	a1,t2,80000518 <fail_add>

80000214 <add_test_20>:
80000214:	01400193          	li	gp,20
80000218:	00000213          	li	tp,0

8000021c <test_20plus8_add>:
8000021c:	00d00093          	li	ra,13
80000220:	00b00113          	li	sp,11
80000224:	00208733          	add	a4,ra,sp
80000228:	00070313          	mv	t1,a4
8000022c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000230:	00200293          	li	t0,2
80000234:	fe5214e3          	bne	tp,t0,8000021c <test_20plus8_add>
80000238:	01800393          	li	t2,24
8000023c:	2c731e63          	bne	t1,t2,80000518 <fail_add>

80000240 <add_test_21>:
80000240:	01500193          	li	gp,21
80000244:	00000213          	li	tp,0

80000248 <test_21plus8_add>:
80000248:	00e00093          	li	ra,14
8000024c:	00b00113          	li	sp,11
80000250:	00208733          	add	a4,ra,sp
80000254:	00000013          	nop
80000258:	00070313          	mv	t1,a4
8000025c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000260:	00200293          	li	t0,2
80000264:	fe5212e3          	bne	tp,t0,80000248 <test_21plus8_add>
80000268:	01900393          	li	t2,25
8000026c:	2a731663          	bne	t1,t2,80000518 <fail_add>

80000270 <add_test_22>:
80000270:	01600193          	li	gp,22
80000274:	00000213          	li	tp,0

80000278 <test_22plus8_add>:
80000278:	00f00093          	li	ra,15
8000027c:	00b00113          	li	sp,11
80000280:	00208733          	add	a4,ra,sp
80000284:	00000013          	nop
80000288:	00000013          	nop
8000028c:	00070313          	mv	t1,a4
80000290:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000294:	00200293          	li	t0,2
80000298:	fe5210e3          	bne	tp,t0,80000278 <test_22plus8_add>
8000029c:	01a00393          	li	t2,26
800002a0:	26731c63          	bne	t1,t2,80000518 <fail_add>

800002a4 <add_test_23>:
800002a4:	01700193          	li	gp,23
800002a8:	00000213          	li	tp,0

800002ac <test_23plus8_add>:
800002ac:	00d00093          	li	ra,13
800002b0:	00b00113          	li	sp,11
800002b4:	00208733          	add	a4,ra,sp
800002b8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800002bc:	00200293          	li	t0,2
800002c0:	fe5216e3          	bne	tp,t0,800002ac <test_23plus8_add>
800002c4:	01800393          	li	t2,24
800002c8:	24771863          	bne	a4,t2,80000518 <fail_add>

800002cc <add_test_24>:
800002cc:	01800193          	li	gp,24
800002d0:	00000213          	li	tp,0

800002d4 <test_24plus8_add>:
800002d4:	00e00093          	li	ra,14
800002d8:	00b00113          	li	sp,11
800002dc:	00000013          	nop
800002e0:	00208733          	add	a4,ra,sp
800002e4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800002e8:	00200293          	li	t0,2
800002ec:	fe5214e3          	bne	tp,t0,800002d4 <test_24plus8_add>
800002f0:	01900393          	li	t2,25
800002f4:	22771263          	bne	a4,t2,80000518 <fail_add>

800002f8 <add_test_25>:
800002f8:	01900193          	li	gp,25
800002fc:	00000213          	li	tp,0

80000300 <test_25plus8_add>:
80000300:	00f00093          	li	ra,15
80000304:	00b00113          	li	sp,11
80000308:	00000013          	nop
8000030c:	00000013          	nop
80000310:	00208733          	add	a4,ra,sp
80000314:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000318:	00200293          	li	t0,2
8000031c:	fe5212e3          	bne	tp,t0,80000300 <test_25plus8_add>
80000320:	01a00393          	li	t2,26
80000324:	1e771a63          	bne	a4,t2,80000518 <fail_add>

80000328 <add_test_26>:
80000328:	01a00193          	li	gp,26
8000032c:	00000213          	li	tp,0

80000330 <test_26plus8_add>:
80000330:	00d00093          	li	ra,13
80000334:	00000013          	nop
80000338:	00b00113          	li	sp,11
8000033c:	00208733          	add	a4,ra,sp
80000340:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000344:	00200293          	li	t0,2
80000348:	fe5214e3          	bne	tp,t0,80000330 <test_26plus8_add>
8000034c:	01800393          	li	t2,24
80000350:	1c771463          	bne	a4,t2,80000518 <fail_add>

80000354 <add_test_27>:
80000354:	01b00193          	li	gp,27
80000358:	00000213          	li	tp,0

8000035c <test_27plus8_add>:
8000035c:	00e00093          	li	ra,14
80000360:	00000013          	nop
80000364:	00b00113          	li	sp,11
80000368:	00000013          	nop
8000036c:	00208733          	add	a4,ra,sp
80000370:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000374:	00200293          	li	t0,2
80000378:	fe5212e3          	bne	tp,t0,8000035c <test_27plus8_add>
8000037c:	01900393          	li	t2,25
80000380:	18771c63          	bne	a4,t2,80000518 <fail_add>

80000384 <add_test_28>:
80000384:	01c00193          	li	gp,28
80000388:	00000213          	li	tp,0

8000038c <test_28plus8_add>:
8000038c:	00f00093          	li	ra,15
80000390:	00000013          	nop
80000394:	00000013          	nop
80000398:	00b00113          	li	sp,11
8000039c:	00208733          	add	a4,ra,sp
800003a0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800003a4:	00200293          	li	t0,2
800003a8:	fe5212e3          	bne	tp,t0,8000038c <test_28plus8_add>
800003ac:	01a00393          	li	t2,26
800003b0:	16771463          	bne	a4,t2,80000518 <fail_add>

800003b4 <add_test_29>:
800003b4:	01d00193          	li	gp,29
800003b8:	00000213          	li	tp,0

800003bc <test_29plus8_add>:
800003bc:	00b00113          	li	sp,11
800003c0:	00d00093          	li	ra,13
800003c4:	00208733          	add	a4,ra,sp
800003c8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800003cc:	00200293          	li	t0,2
800003d0:	fe5216e3          	bne	tp,t0,800003bc <test_29plus8_add>
800003d4:	01800393          	li	t2,24
800003d8:	14771063          	bne	a4,t2,80000518 <fail_add>

800003dc <add_test_30>:
800003dc:	01e00193          	li	gp,30
800003e0:	00000213          	li	tp,0

800003e4 <test_30plus8_add>:
800003e4:	00b00113          	li	sp,11
800003e8:	00e00093          	li	ra,14
800003ec:	00000013          	nop
800003f0:	00208733          	add	a4,ra,sp
800003f4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800003f8:	00200293          	li	t0,2
800003fc:	fe5214e3          	bne	tp,t0,800003e4 <test_30plus8_add>
80000400:	01900393          	li	t2,25
80000404:	10771a63          	bne	a4,t2,80000518 <fail_add>

80000408 <add_test_31>:
80000408:	01f00193          	li	gp,31
8000040c:	00000213          	li	tp,0

80000410 <test_31plus8_add>:
80000410:	00b00113          	li	sp,11
80000414:	00f00093          	li	ra,15
80000418:	00000013          	nop
8000041c:	00000013          	nop
80000420:	00208733          	add	a4,ra,sp
80000424:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000428:	00200293          	li	t0,2
8000042c:	fe5212e3          	bne	tp,t0,80000410 <test_31plus8_add>
80000430:	01a00393          	li	t2,26
80000434:	0e771263          	bne	a4,t2,80000518 <fail_add>

80000438 <add_test_32>:
80000438:	02000193          	li	gp,32
8000043c:	00000213          	li	tp,0

80000440 <test_32plus8_add>:
80000440:	00b00113          	li	sp,11
80000444:	00000013          	nop
80000448:	00d00093          	li	ra,13
8000044c:	00208733          	add	a4,ra,sp
80000450:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000454:	00200293          	li	t0,2
80000458:	fe5214e3          	bne	tp,t0,80000440 <test_32plus8_add>
8000045c:	01800393          	li	t2,24
80000460:	0a771c63          	bne	a4,t2,80000518 <fail_add>

80000464 <add_test_33>:
80000464:	02100193          	li	gp,33
80000468:	00000213          	li	tp,0

8000046c <test_33plus8_add>:
8000046c:	00b00113          	li	sp,11
80000470:	00000013          	nop
80000474:	00e00093          	li	ra,14
80000478:	00000013          	nop
8000047c:	00208733          	add	a4,ra,sp
80000480:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000484:	00200293          	li	t0,2
80000488:	fe5212e3          	bne	tp,t0,8000046c <test_33plus8_add>
8000048c:	01900393          	li	t2,25
80000490:	08771463          	bne	a4,t2,80000518 <fail_add>

80000494 <add_test_34>:
80000494:	02200193          	li	gp,34
80000498:	00000213          	li	tp,0

8000049c <test_34plus8_add>:
8000049c:	00b00113          	li	sp,11
800004a0:	00000013          	nop
800004a4:	00000013          	nop
800004a8:	00f00093          	li	ra,15
800004ac:	00208733          	add	a4,ra,sp
800004b0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800004b4:	00200293          	li	t0,2
800004b8:	fe5212e3          	bne	tp,t0,8000049c <test_34plus8_add>
800004bc:	01a00393          	li	t2,26
800004c0:	04771c63          	bne	a4,t2,80000518 <fail_add>

800004c4 <add_test_35>:
800004c4:	02300193          	li	gp,35
800004c8:	00f00093          	li	ra,15
800004cc:	00100133          	add	sp,zero,ra
800004d0:	00f00393          	li	t2,15
800004d4:	04711263          	bne	sp,t2,80000518 <fail_add>

800004d8 <add_test_36>:
800004d8:	02400193          	li	gp,36
800004dc:	02000093          	li	ra,32
800004e0:	00008133          	add	sp,ra,zero
800004e4:	02000393          	li	t2,32
800004e8:	02711863          	bne	sp,t2,80000518 <fail_add>

800004ec <add_test_37>:
800004ec:	02500193          	li	gp,37
800004f0:	000000b3          	add	ra,zero,zero
800004f4:	00000393          	li	t2,0
800004f8:	02709063          	bne	ra,t2,80000518 <fail_add>

800004fc <add_test_38>:
800004fc:	02600193          	li	gp,38
80000500:	01000093          	li	ra,16
80000504:	01e00113          	li	sp,30
80000508:	00208033          	add	zero,ra,sp
8000050c:	00000393          	li	t2,0
80000510:	00701463          	bne	zero,t2,80000518 <fail_add>
80000514:	00c0006f          	j	80000520 <pass_add>

80000518 <fail_add>:
80000518:	04d00893          	li	a7,77
8000051c:	ffdff06f          	j	80000518 <fail_add>

80000520 <pass_add>:
80000520:	04200893          	li	a7,66

80000524 <addi_test_2>:
80000524:	00200193          	li	gp,2
80000528:	00000693          	li	a3,0
8000052c:	00068713          	mv	a4,a3
80000530:	00000393          	li	t2,0
80000534:	26771c63          	bne	a4,t2,800007ac <fail_addi>

80000538 <addi_test_3>:
80000538:	00300193          	li	gp,3
8000053c:	00100693          	li	a3,1
80000540:	00168713          	addi	a4,a3,1
80000544:	00200393          	li	t2,2
80000548:	26771263          	bne	a4,t2,800007ac <fail_addi>

8000054c <addi_test_4>:
8000054c:	00400193          	li	gp,4
80000550:	00300693          	li	a3,3
80000554:	00768713          	addi	a4,a3,7
80000558:	00a00393          	li	t2,10
8000055c:	24771863          	bne	a4,t2,800007ac <fail_addi>

80000560 <addi_test_5>:
80000560:	00500193          	li	gp,5
80000564:	00000693          	li	a3,0
80000568:	80068713          	addi	a4,a3,-2048
8000056c:	80000393          	li	t2,-2048
80000570:	22771e63          	bne	a4,t2,800007ac <fail_addi>

80000574 <addi_test_6>:
80000574:	00600193          	li	gp,6
80000578:	800006b7          	lui	a3,0x80000
8000057c:	00068713          	mv	a4,a3
80000580:	800003b7          	lui	t2,0x80000
80000584:	22771463          	bne	a4,t2,800007ac <fail_addi>

80000588 <addi_test_7>:
80000588:	00700193          	li	gp,7
8000058c:	800006b7          	lui	a3,0x80000
80000590:	80068713          	addi	a4,a3,-2048 # 7ffff800 <_size_rom+0x7fff6af0>
80000594:	800003b7          	lui	t2,0x80000
80000598:	80038393          	addi	t2,t2,-2048 # 7ffff800 <_size_rom+0x7fff6af0>
8000059c:	20771863          	bne	a4,t2,800007ac <fail_addi>

800005a0 <addi_test_8>:
800005a0:	00800193          	li	gp,8
800005a4:	00000693          	li	a3,0
800005a8:	7ff68713          	addi	a4,a3,2047
800005ac:	7ff00393          	li	t2,2047
800005b0:	1e771e63          	bne	a4,t2,800007ac <fail_addi>

800005b4 <addi_test_9>:
800005b4:	00900193          	li	gp,9
800005b8:	800006b7          	lui	a3,0x80000
800005bc:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
800005c0:	00068713          	mv	a4,a3
800005c4:	800003b7          	lui	t2,0x80000
800005c8:	fff38393          	addi	t2,t2,-1 # 7fffffff <_size_rom+0x7fff72ef>
800005cc:	1e771063          	bne	a4,t2,800007ac <fail_addi>

800005d0 <addi_test_10>:
800005d0:	00a00193          	li	gp,10
800005d4:	800006b7          	lui	a3,0x80000
800005d8:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
800005dc:	7ff68713          	addi	a4,a3,2047
800005e0:	800003b7          	lui	t2,0x80000
800005e4:	7fe38393          	addi	t2,t2,2046 # 800007fe <and_test_3+0x22>
800005e8:	1c771263          	bne	a4,t2,800007ac <fail_addi>

800005ec <addi_test_11>:
800005ec:	00b00193          	li	gp,11
800005f0:	800006b7          	lui	a3,0x80000
800005f4:	7ff68713          	addi	a4,a3,2047 # 800007ff <and_test_3+0x23>
800005f8:	800003b7          	lui	t2,0x80000
800005fc:	7ff38393          	addi	t2,t2,2047 # 800007ff <and_test_3+0x23>
80000600:	1a771663          	bne	a4,t2,800007ac <fail_addi>

80000604 <addi_test_12>:
80000604:	00c00193          	li	gp,12
80000608:	800006b7          	lui	a3,0x80000
8000060c:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80000610:	80068713          	addi	a4,a3,-2048
80000614:	7ffff3b7          	lui	t2,0x7ffff
80000618:	7ff38393          	addi	t2,t2,2047 # 7ffff7ff <_size_rom+0x7fff6aef>
8000061c:	18771863          	bne	a4,t2,800007ac <fail_addi>

80000620 <addi_test_13>:
80000620:	00d00193          	li	gp,13
80000624:	00000693          	li	a3,0
80000628:	fff68713          	addi	a4,a3,-1
8000062c:	fff00393          	li	t2,-1
80000630:	16771e63          	bne	a4,t2,800007ac <fail_addi>

80000634 <addi_test_14>:
80000634:	00e00193          	li	gp,14
80000638:	fff00693          	li	a3,-1
8000063c:	00168713          	addi	a4,a3,1
80000640:	00000393          	li	t2,0
80000644:	16771463          	bne	a4,t2,800007ac <fail_addi>

80000648 <addi_test_15>:
80000648:	00f00193          	li	gp,15
8000064c:	fff00693          	li	a3,-1
80000650:	fff68713          	addi	a4,a3,-1
80000654:	ffe00393          	li	t2,-2
80000658:	14771a63          	bne	a4,t2,800007ac <fail_addi>

8000065c <addi_test_16>:
8000065c:	01000193          	li	gp,16
80000660:	800006b7          	lui	a3,0x80000
80000664:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80000668:	00168713          	addi	a4,a3,1
8000066c:	800003b7          	lui	t2,0x80000
80000670:	12771e63          	bne	a4,t2,800007ac <fail_addi>

80000674 <addi_test_17>:
80000674:	01100193          	li	gp,17
80000678:	00d00593          	li	a1,13
8000067c:	00b58593          	addi	a1,a1,11
80000680:	01800393          	li	t2,24
80000684:	12759463          	bne	a1,t2,800007ac <fail_addi>

80000688 <addi_test_18>:
80000688:	01200193          	li	gp,18
8000068c:	00000213          	li	tp,0

80000690 <test_18plus8_addi>:
80000690:	00d00093          	li	ra,13
80000694:	00b08713          	addi	a4,ra,11
80000698:	00070313          	mv	t1,a4
8000069c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800006a0:	00200293          	li	t0,2
800006a4:	fe5216e3          	bne	tp,t0,80000690 <test_18plus8_addi>
800006a8:	01800393          	li	t2,24
800006ac:	10731063          	bne	t1,t2,800007ac <fail_addi>

800006b0 <addi_test_19>:
800006b0:	01300193          	li	gp,19
800006b4:	00000213          	li	tp,0

800006b8 <test_19plus8_addi>:
800006b8:	00d00093          	li	ra,13
800006bc:	00a08713          	addi	a4,ra,10
800006c0:	00000013          	nop
800006c4:	00070313          	mv	t1,a4
800006c8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800006cc:	00200293          	li	t0,2
800006d0:	fe5214e3          	bne	tp,t0,800006b8 <test_19plus8_addi>
800006d4:	01700393          	li	t2,23
800006d8:	0c731a63          	bne	t1,t2,800007ac <fail_addi>

800006dc <addi_test_20>:
800006dc:	01400193          	li	gp,20
800006e0:	00000213          	li	tp,0

800006e4 <test_20plus8_addi>:
800006e4:	00d00093          	li	ra,13
800006e8:	00908713          	addi	a4,ra,9
800006ec:	00000013          	nop
800006f0:	00000013          	nop
800006f4:	00070313          	mv	t1,a4
800006f8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800006fc:	00200293          	li	t0,2
80000700:	fe5212e3          	bne	tp,t0,800006e4 <test_20plus8_addi>
80000704:	01600393          	li	t2,22
80000708:	0a731263          	bne	t1,t2,800007ac <fail_addi>

8000070c <addi_test_21>:
8000070c:	01500193          	li	gp,21
80000710:	00000213          	li	tp,0

80000714 <test_21plus8_addi>:
80000714:	00d00093          	li	ra,13
80000718:	00b08713          	addi	a4,ra,11
8000071c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000720:	00200293          	li	t0,2
80000724:	fe5218e3          	bne	tp,t0,80000714 <test_21plus8_addi>
80000728:	01800393          	li	t2,24
8000072c:	08771063          	bne	a4,t2,800007ac <fail_addi>

80000730 <addi_test_22>:
80000730:	01600193          	li	gp,22
80000734:	00000213          	li	tp,0

80000738 <test_22plus8_addi>:
80000738:	00d00093          	li	ra,13
8000073c:	00000013          	nop
80000740:	00a08713          	addi	a4,ra,10
80000744:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000748:	00200293          	li	t0,2
8000074c:	fe5216e3          	bne	tp,t0,80000738 <test_22plus8_addi>
80000750:	01700393          	li	t2,23
80000754:	04771c63          	bne	a4,t2,800007ac <fail_addi>

80000758 <addi_test_23>:
80000758:	01700193          	li	gp,23
8000075c:	00000213          	li	tp,0

80000760 <test_23plus8_addi>:
80000760:	00d00093          	li	ra,13
80000764:	00000013          	nop
80000768:	00000013          	nop
8000076c:	00908713          	addi	a4,ra,9
80000770:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000774:	00200293          	li	t0,2
80000778:	fe5214e3          	bne	tp,t0,80000760 <test_23plus8_addi>
8000077c:	01600393          	li	t2,22
80000780:	02771663          	bne	a4,t2,800007ac <fail_addi>

80000784 <addi_test_24>:
80000784:	01800193          	li	gp,24
80000788:	02000093          	li	ra,32
8000078c:	02000393          	li	t2,32
80000790:	00709e63          	bne	ra,t2,800007ac <fail_addi>

80000794 <addi_test_25>:
80000794:	01900193          	li	gp,25
80000798:	02100093          	li	ra,33
8000079c:	03208013          	addi	zero,ra,50
800007a0:	00000393          	li	t2,0
800007a4:	00701463          	bne	zero,t2,800007ac <fail_addi>
800007a8:	00c0006f          	j	800007b4 <pass_addi>

800007ac <fail_addi>:
800007ac:	04d00893          	li	a7,77
800007b0:	ffdff06f          	j	800007ac <fail_addi>

800007b4 <pass_addi>:
800007b4:	04200893          	li	a7,66

800007b8 <and_test_2>:
800007b8:	00200193          	li	gp,2
800007bc:	ff0105b7          	lui	a1,0xff010
800007c0:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
800007c4:	0f0f1637          	lui	a2,0xf0f1
800007c8:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <_size_rom+0xf0e81ff>
800007cc:	00c5f733          	and	a4,a1,a2
800007d0:	0f0013b7          	lui	t2,0xf001
800007d4:	f0038393          	addi	t2,t2,-256 # f000f00 <_size_rom+0xeff81f0>
800007d8:	48771c63          	bne	a4,t2,80000c70 <fail_and>

800007dc <and_test_3>:
800007dc:	00300193          	li	gp,3
800007e0:	0ff015b7          	lui	a1,0xff01
800007e4:	ff058593          	addi	a1,a1,-16 # ff00ff0 <_size_rom+0xfef82e0>
800007e8:	f0f0f637          	lui	a2,0xf0f0f
800007ec:	0f060613          	addi	a2,a2,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
800007f0:	00c5f733          	and	a4,a1,a2
800007f4:	00f003b7          	lui	t2,0xf00
800007f8:	0f038393          	addi	t2,t2,240 # f000f0 <_size_rom+0xef73e0>
800007fc:	46771a63          	bne	a4,t2,80000c70 <fail_and>

80000800 <and_test_4>:
80000800:	00400193          	li	gp,4
80000804:	00ff05b7          	lui	a1,0xff0
80000808:	0ff58593          	addi	a1,a1,255 # ff00ff <_size_rom+0xfe73ef>
8000080c:	0f0f1637          	lui	a2,0xf0f1
80000810:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80000814:	00c5f733          	and	a4,a1,a2
80000818:	000f03b7          	lui	t2,0xf0
8000081c:	00f38393          	addi	t2,t2,15 # f000f <_size_rom+0xe72ff>
80000820:	44771863          	bne	a4,t2,80000c70 <fail_and>

80000824 <and_test_5>:
80000824:	00500193          	li	gp,5
80000828:	f00ff5b7          	lui	a1,0xf00ff
8000082c:	00f58593          	addi	a1,a1,15 # f00ff00f <__stack_top+0x700eb013>
80000830:	f0f0f637          	lui	a2,0xf0f0f
80000834:	0f060613          	addi	a2,a2,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
80000838:	00c5f733          	and	a4,a1,a2
8000083c:	f000f3b7          	lui	t2,0xf000f
80000840:	42771863          	bne	a4,t2,80000c70 <fail_and>

80000844 <and_test_6>:
80000844:	00600193          	li	gp,6
80000848:	ff0105b7          	lui	a1,0xff010
8000084c:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
80000850:	0f0f1637          	lui	a2,0xf0f1
80000854:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80000858:	00c5f5b3          	and	a1,a1,a2
8000085c:	0f0013b7          	lui	t2,0xf001
80000860:	f0038393          	addi	t2,t2,-256 # f000f00 <_size_rom+0xeff81f0>
80000864:	40759663          	bne	a1,t2,80000c70 <fail_and>

80000868 <and_test_7>:
80000868:	00700193          	li	gp,7
8000086c:	0ff015b7          	lui	a1,0xff01
80000870:	ff058593          	addi	a1,a1,-16 # ff00ff0 <_size_rom+0xfef82e0>
80000874:	f0f0f637          	lui	a2,0xf0f0f
80000878:	0f060613          	addi	a2,a2,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
8000087c:	00c5f633          	and	a2,a1,a2
80000880:	00f003b7          	lui	t2,0xf00
80000884:	0f038393          	addi	t2,t2,240 # f000f0 <_size_rom+0xef73e0>
80000888:	3e761463          	bne	a2,t2,80000c70 <fail_and>

8000088c <and_test_8>:
8000088c:	00800193          	li	gp,8
80000890:	ff0105b7          	lui	a1,0xff010
80000894:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
80000898:	00b5f5b3          	and	a1,a1,a1
8000089c:	ff0103b7          	lui	t2,0xff010
800008a0:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
800008a4:	3c759663          	bne	a1,t2,80000c70 <fail_and>

800008a8 <and_test_9>:
800008a8:	00900193          	li	gp,9
800008ac:	00000213          	li	tp,0

800008b0 <test_9plus8_and>:
800008b0:	ff0100b7          	lui	ra,0xff010
800008b4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
800008b8:	0f0f1137          	lui	sp,0xf0f1
800008bc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
800008c0:	0020f733          	and	a4,ra,sp
800008c4:	00070313          	mv	t1,a4
800008c8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800008cc:	00200293          	li	t0,2
800008d0:	fe5210e3          	bne	tp,t0,800008b0 <test_9plus8_and>
800008d4:	0f0013b7          	lui	t2,0xf001
800008d8:	f0038393          	addi	t2,t2,-256 # f000f00 <_size_rom+0xeff81f0>
800008dc:	38731a63          	bne	t1,t2,80000c70 <fail_and>

800008e0 <and_test_10>:
800008e0:	00a00193          	li	gp,10
800008e4:	00000213          	li	tp,0

800008e8 <test_10plus8_and>:
800008e8:	0ff010b7          	lui	ra,0xff01
800008ec:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
800008f0:	f0f0f137          	lui	sp,0xf0f0f
800008f4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
800008f8:	0020f733          	and	a4,ra,sp
800008fc:	00000013          	nop
80000900:	00070313          	mv	t1,a4
80000904:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000908:	00200293          	li	t0,2
8000090c:	fc521ee3          	bne	tp,t0,800008e8 <test_10plus8_and>
80000910:	00f003b7          	lui	t2,0xf00
80000914:	0f038393          	addi	t2,t2,240 # f000f0 <_size_rom+0xef73e0>
80000918:	34731c63          	bne	t1,t2,80000c70 <fail_and>

8000091c <and_test_11>:
8000091c:	00b00193          	li	gp,11
80000920:	00000213          	li	tp,0

80000924 <test_11plus8_and>:
80000924:	00ff00b7          	lui	ra,0xff0
80000928:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
8000092c:	0f0f1137          	lui	sp,0xf0f1
80000930:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80000934:	0020f733          	and	a4,ra,sp
80000938:	00000013          	nop
8000093c:	00000013          	nop
80000940:	00070313          	mv	t1,a4
80000944:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000948:	00200293          	li	t0,2
8000094c:	fc521ce3          	bne	tp,t0,80000924 <test_11plus8_and>
80000950:	000f03b7          	lui	t2,0xf0
80000954:	00f38393          	addi	t2,t2,15 # f000f <_size_rom+0xe72ff>
80000958:	30731c63          	bne	t1,t2,80000c70 <fail_and>

8000095c <and_test_12>:
8000095c:	00c00193          	li	gp,12
80000960:	00000213          	li	tp,0

80000964 <test_12plus8_and>:
80000964:	ff0100b7          	lui	ra,0xff010
80000968:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
8000096c:	0f0f1137          	lui	sp,0xf0f1
80000970:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80000974:	0020f733          	and	a4,ra,sp
80000978:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000097c:	00200293          	li	t0,2
80000980:	fe5212e3          	bne	tp,t0,80000964 <test_12plus8_and>
80000984:	0f0013b7          	lui	t2,0xf001
80000988:	f0038393          	addi	t2,t2,-256 # f000f00 <_size_rom+0xeff81f0>
8000098c:	2e771263          	bne	a4,t2,80000c70 <fail_and>

80000990 <and_test_13>:
80000990:	00d00193          	li	gp,13
80000994:	00000213          	li	tp,0

80000998 <test_13plus8_and>:
80000998:	0ff010b7          	lui	ra,0xff01
8000099c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
800009a0:	f0f0f137          	lui	sp,0xf0f0f
800009a4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
800009a8:	00000013          	nop
800009ac:	0020f733          	and	a4,ra,sp
800009b0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800009b4:	00200293          	li	t0,2
800009b8:	fe5210e3          	bne	tp,t0,80000998 <test_13plus8_and>
800009bc:	00f003b7          	lui	t2,0xf00
800009c0:	0f038393          	addi	t2,t2,240 # f000f0 <_size_rom+0xef73e0>
800009c4:	2a771663          	bne	a4,t2,80000c70 <fail_and>

800009c8 <and_test_14>:
800009c8:	00e00193          	li	gp,14
800009cc:	00000213          	li	tp,0

800009d0 <test_14plus8_and>:
800009d0:	00ff00b7          	lui	ra,0xff0
800009d4:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
800009d8:	0f0f1137          	lui	sp,0xf0f1
800009dc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
800009e0:	00000013          	nop
800009e4:	00000013          	nop
800009e8:	0020f733          	and	a4,ra,sp
800009ec:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800009f0:	00200293          	li	t0,2
800009f4:	fc521ee3          	bne	tp,t0,800009d0 <test_14plus8_and>
800009f8:	000f03b7          	lui	t2,0xf0
800009fc:	00f38393          	addi	t2,t2,15 # f000f <_size_rom+0xe72ff>
80000a00:	26771863          	bne	a4,t2,80000c70 <fail_and>

80000a04 <and_test_15>:
80000a04:	00f00193          	li	gp,15
80000a08:	00000213          	li	tp,0

80000a0c <test_15plus8_and>:
80000a0c:	ff0100b7          	lui	ra,0xff010
80000a10:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80000a14:	00000013          	nop
80000a18:	0f0f1137          	lui	sp,0xf0f1
80000a1c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80000a20:	0020f733          	and	a4,ra,sp
80000a24:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000a28:	00200293          	li	t0,2
80000a2c:	fe5210e3          	bne	tp,t0,80000a0c <test_15plus8_and>
80000a30:	0f0013b7          	lui	t2,0xf001
80000a34:	f0038393          	addi	t2,t2,-256 # f000f00 <_size_rom+0xeff81f0>
80000a38:	22771c63          	bne	a4,t2,80000c70 <fail_and>

80000a3c <and_test_16>:
80000a3c:	01000193          	li	gp,16
80000a40:	00000213          	li	tp,0

80000a44 <test_16plus8_and>:
80000a44:	0ff010b7          	lui	ra,0xff01
80000a48:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80000a4c:	00000013          	nop
80000a50:	f0f0f137          	lui	sp,0xf0f0f
80000a54:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
80000a58:	00000013          	nop
80000a5c:	0020f733          	and	a4,ra,sp
80000a60:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000a64:	00200293          	li	t0,2
80000a68:	fc521ee3          	bne	tp,t0,80000a44 <test_16plus8_and>
80000a6c:	00f003b7          	lui	t2,0xf00
80000a70:	0f038393          	addi	t2,t2,240 # f000f0 <_size_rom+0xef73e0>
80000a74:	1e771e63          	bne	a4,t2,80000c70 <fail_and>

80000a78 <and_test_17>:
80000a78:	01100193          	li	gp,17
80000a7c:	00000213          	li	tp,0

80000a80 <test_17plus8_and>:
80000a80:	00ff00b7          	lui	ra,0xff0
80000a84:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80000a88:	00000013          	nop
80000a8c:	00000013          	nop
80000a90:	0f0f1137          	lui	sp,0xf0f1
80000a94:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80000a98:	0020f733          	and	a4,ra,sp
80000a9c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000aa0:	00200293          	li	t0,2
80000aa4:	fc521ee3          	bne	tp,t0,80000a80 <test_17plus8_and>
80000aa8:	000f03b7          	lui	t2,0xf0
80000aac:	00f38393          	addi	t2,t2,15 # f000f <_size_rom+0xe72ff>
80000ab0:	1c771063          	bne	a4,t2,80000c70 <fail_and>

80000ab4 <and_test_18>:
80000ab4:	01200193          	li	gp,18
80000ab8:	00000213          	li	tp,0

80000abc <test_18plus8_and>:
80000abc:	0f0f1137          	lui	sp,0xf0f1
80000ac0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80000ac4:	ff0100b7          	lui	ra,0xff010
80000ac8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80000acc:	0020f733          	and	a4,ra,sp
80000ad0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000ad4:	00200293          	li	t0,2
80000ad8:	fe5212e3          	bne	tp,t0,80000abc <test_18plus8_and>
80000adc:	0f0013b7          	lui	t2,0xf001
80000ae0:	f0038393          	addi	t2,t2,-256 # f000f00 <_size_rom+0xeff81f0>
80000ae4:	18771663          	bne	a4,t2,80000c70 <fail_and>

80000ae8 <and_test_19>:
80000ae8:	01300193          	li	gp,19
80000aec:	00000213          	li	tp,0

80000af0 <test_19plus8_and>:
80000af0:	f0f0f137          	lui	sp,0xf0f0f
80000af4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
80000af8:	0ff010b7          	lui	ra,0xff01
80000afc:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80000b00:	00000013          	nop
80000b04:	0020f733          	and	a4,ra,sp
80000b08:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000b0c:	00200293          	li	t0,2
80000b10:	fe5210e3          	bne	tp,t0,80000af0 <test_19plus8_and>
80000b14:	00f003b7          	lui	t2,0xf00
80000b18:	0f038393          	addi	t2,t2,240 # f000f0 <_size_rom+0xef73e0>
80000b1c:	14771a63          	bne	a4,t2,80000c70 <fail_and>

80000b20 <and_test_20>:
80000b20:	01400193          	li	gp,20
80000b24:	00000213          	li	tp,0

80000b28 <test_20plus8_and>:
80000b28:	0f0f1137          	lui	sp,0xf0f1
80000b2c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80000b30:	00ff00b7          	lui	ra,0xff0
80000b34:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80000b38:	00000013          	nop
80000b3c:	00000013          	nop
80000b40:	0020f733          	and	a4,ra,sp
80000b44:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000b48:	00200293          	li	t0,2
80000b4c:	fc521ee3          	bne	tp,t0,80000b28 <test_20plus8_and>
80000b50:	000f03b7          	lui	t2,0xf0
80000b54:	00f38393          	addi	t2,t2,15 # f000f <_size_rom+0xe72ff>
80000b58:	10771c63          	bne	a4,t2,80000c70 <fail_and>

80000b5c <and_test_21>:
80000b5c:	01500193          	li	gp,21
80000b60:	00000213          	li	tp,0

80000b64 <test_21plus8_and>:
80000b64:	0f0f1137          	lui	sp,0xf0f1
80000b68:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80000b6c:	00000013          	nop
80000b70:	ff0100b7          	lui	ra,0xff010
80000b74:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80000b78:	0020f733          	and	a4,ra,sp
80000b7c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000b80:	00200293          	li	t0,2
80000b84:	fe5210e3          	bne	tp,t0,80000b64 <test_21plus8_and>
80000b88:	0f0013b7          	lui	t2,0xf001
80000b8c:	f0038393          	addi	t2,t2,-256 # f000f00 <_size_rom+0xeff81f0>
80000b90:	0e771063          	bne	a4,t2,80000c70 <fail_and>

80000b94 <and_test_22>:
80000b94:	01600193          	li	gp,22
80000b98:	00000213          	li	tp,0

80000b9c <test_22plus8_and>:
80000b9c:	f0f0f137          	lui	sp,0xf0f0f
80000ba0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
80000ba4:	00000013          	nop
80000ba8:	0ff010b7          	lui	ra,0xff01
80000bac:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80000bb0:	00000013          	nop
80000bb4:	0020f733          	and	a4,ra,sp
80000bb8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000bbc:	00200293          	li	t0,2
80000bc0:	fc521ee3          	bne	tp,t0,80000b9c <test_22plus8_and>
80000bc4:	00f003b7          	lui	t2,0xf00
80000bc8:	0f038393          	addi	t2,t2,240 # f000f0 <_size_rom+0xef73e0>
80000bcc:	0a771263          	bne	a4,t2,80000c70 <fail_and>

80000bd0 <and_test_23>:
80000bd0:	01700193          	li	gp,23
80000bd4:	00000213          	li	tp,0

80000bd8 <test_23plus8_and>:
80000bd8:	0f0f1137          	lui	sp,0xf0f1
80000bdc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80000be0:	00000013          	nop
80000be4:	00000013          	nop
80000be8:	00ff00b7          	lui	ra,0xff0
80000bec:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80000bf0:	0020f733          	and	a4,ra,sp
80000bf4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000bf8:	00200293          	li	t0,2
80000bfc:	fc521ee3          	bne	tp,t0,80000bd8 <test_23plus8_and>
80000c00:	000f03b7          	lui	t2,0xf0
80000c04:	00f38393          	addi	t2,t2,15 # f000f <_size_rom+0xe72ff>
80000c08:	06771463          	bne	a4,t2,80000c70 <fail_and>

80000c0c <and_test_24>:
80000c0c:	01800193          	li	gp,24
80000c10:	ff0100b7          	lui	ra,0xff010
80000c14:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80000c18:	00107133          	and	sp,zero,ra
80000c1c:	00000393          	li	t2,0
80000c20:	04711863          	bne	sp,t2,80000c70 <fail_and>

80000c24 <and_test_25>:
80000c24:	01900193          	li	gp,25
80000c28:	00ff00b7          	lui	ra,0xff0
80000c2c:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80000c30:	0000f133          	and	sp,ra,zero
80000c34:	00000393          	li	t2,0
80000c38:	02711c63          	bne	sp,t2,80000c70 <fail_and>

80000c3c <and_test_26>:
80000c3c:	01a00193          	li	gp,26
80000c40:	000070b3          	and	ra,zero,zero
80000c44:	00000393          	li	t2,0
80000c48:	02709463          	bne	ra,t2,80000c70 <fail_and>

80000c4c <and_test_27>:
80000c4c:	01b00193          	li	gp,27
80000c50:	111110b7          	lui	ra,0x11111
80000c54:	11108093          	addi	ra,ra,273 # 11111111 <_size_rom+0x11108401>
80000c58:	22222137          	lui	sp,0x22222
80000c5c:	22210113          	addi	sp,sp,546 # 22222222 <_size_rom+0x22219512>
80000c60:	0020f033          	and	zero,ra,sp
80000c64:	00000393          	li	t2,0
80000c68:	00701463          	bne	zero,t2,80000c70 <fail_and>
80000c6c:	00c0006f          	j	80000c78 <pass_and>

80000c70 <fail_and>:
80000c70:	04d00893          	li	a7,77
80000c74:	ffdff06f          	j	80000c70 <fail_and>

80000c78 <pass_and>:
80000c78:	04200893          	li	a7,66

80000c7c <andi_test_2>:
80000c7c:	00200193          	li	gp,2
80000c80:	ff0106b7          	lui	a3,0xff010
80000c84:	f0068693          	addi	a3,a3,-256 # ff00ff00 <__stack_top+0x7effbf04>
80000c88:	f0f6f713          	andi	a4,a3,-241
80000c8c:	ff0103b7          	lui	t2,0xff010
80000c90:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80000c94:	1a771463          	bne	a4,t2,80000e3c <fail_andi>

80000c98 <andi_test_3>:
80000c98:	00300193          	li	gp,3
80000c9c:	0ff016b7          	lui	a3,0xff01
80000ca0:	ff068693          	addi	a3,a3,-16 # ff00ff0 <_size_rom+0xfef82e0>
80000ca4:	0f06f713          	andi	a4,a3,240
80000ca8:	0f000393          	li	t2,240
80000cac:	18771863          	bne	a4,t2,80000e3c <fail_andi>

80000cb0 <andi_test_4>:
80000cb0:	00400193          	li	gp,4
80000cb4:	00ff06b7          	lui	a3,0xff0
80000cb8:	0ff68693          	addi	a3,a3,255 # ff00ff <_size_rom+0xfe73ef>
80000cbc:	70f6f713          	andi	a4,a3,1807
80000cc0:	00f00393          	li	t2,15
80000cc4:	16771c63          	bne	a4,t2,80000e3c <fail_andi>

80000cc8 <andi_test_5>:
80000cc8:	00500193          	li	gp,5
80000ccc:	f00ff6b7          	lui	a3,0xf00ff
80000cd0:	00f68693          	addi	a3,a3,15 # f00ff00f <__stack_top+0x700eb013>
80000cd4:	0f06f713          	andi	a4,a3,240
80000cd8:	00000393          	li	t2,0
80000cdc:	16771063          	bne	a4,t2,80000e3c <fail_andi>

80000ce0 <andi_test_6>:
80000ce0:	00600193          	li	gp,6
80000ce4:	ff0105b7          	lui	a1,0xff010
80000ce8:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
80000cec:	0f05f593          	andi	a1,a1,240
80000cf0:	00000393          	li	t2,0
80000cf4:	14759463          	bne	a1,t2,80000e3c <fail_andi>

80000cf8 <andi_test_7>:
80000cf8:	00700193          	li	gp,7
80000cfc:	00000213          	li	tp,0

80000d00 <test_7plus8_andi>:
80000d00:	0ff010b7          	lui	ra,0xff01
80000d04:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80000d08:	70f0f713          	andi	a4,ra,1807
80000d0c:	00070313          	mv	t1,a4
80000d10:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000d14:	00200293          	li	t0,2
80000d18:	fe5214e3          	bne	tp,t0,80000d00 <test_7plus8_andi>
80000d1c:	70000393          	li	t2,1792
80000d20:	10731e63          	bne	t1,t2,80000e3c <fail_andi>

80000d24 <andi_test_8>:
80000d24:	00800193          	li	gp,8
80000d28:	00000213          	li	tp,0

80000d2c <test_8plus8_andi>:
80000d2c:	00ff00b7          	lui	ra,0xff0
80000d30:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80000d34:	0f00f713          	andi	a4,ra,240
80000d38:	00000013          	nop
80000d3c:	00070313          	mv	t1,a4
80000d40:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000d44:	00200293          	li	t0,2
80000d48:	fe5212e3          	bne	tp,t0,80000d2c <test_8plus8_andi>
80000d4c:	0f000393          	li	t2,240
80000d50:	0e731663          	bne	t1,t2,80000e3c <fail_andi>

80000d54 <andi_test_9>:
80000d54:	00900193          	li	gp,9
80000d58:	00000213          	li	tp,0

80000d5c <test_9plus8_andi>:
80000d5c:	f00ff0b7          	lui	ra,0xf00ff
80000d60:	00f08093          	addi	ra,ra,15 # f00ff00f <__stack_top+0x700eb013>
80000d64:	f0f0f713          	andi	a4,ra,-241
80000d68:	00000013          	nop
80000d6c:	00000013          	nop
80000d70:	00070313          	mv	t1,a4
80000d74:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000d78:	00200293          	li	t0,2
80000d7c:	fe5210e3          	bne	tp,t0,80000d5c <test_9plus8_andi>
80000d80:	f00ff3b7          	lui	t2,0xf00ff
80000d84:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
80000d88:	0a731a63          	bne	t1,t2,80000e3c <fail_andi>

80000d8c <andi_test_10>:
80000d8c:	00a00193          	li	gp,10
80000d90:	00000213          	li	tp,0

80000d94 <test_10plus8_andi>:
80000d94:	0ff010b7          	lui	ra,0xff01
80000d98:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80000d9c:	70f0f713          	andi	a4,ra,1807
80000da0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000da4:	00200293          	li	t0,2
80000da8:	fe5216e3          	bne	tp,t0,80000d94 <test_10plus8_andi>
80000dac:	70000393          	li	t2,1792
80000db0:	08771663          	bne	a4,t2,80000e3c <fail_andi>

80000db4 <andi_test_11>:
80000db4:	00b00193          	li	gp,11
80000db8:	00000213          	li	tp,0

80000dbc <test_11plus8_andi>:
80000dbc:	00ff00b7          	lui	ra,0xff0
80000dc0:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80000dc4:	00000013          	nop
80000dc8:	0f00f713          	andi	a4,ra,240
80000dcc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000dd0:	00200293          	li	t0,2
80000dd4:	fe5214e3          	bne	tp,t0,80000dbc <test_11plus8_andi>
80000dd8:	0f000393          	li	t2,240
80000ddc:	06771063          	bne	a4,t2,80000e3c <fail_andi>

80000de0 <andi_test_12>:
80000de0:	00c00193          	li	gp,12
80000de4:	00000213          	li	tp,0

80000de8 <test_12plus8_andi>:
80000de8:	f00ff0b7          	lui	ra,0xf00ff
80000dec:	00f08093          	addi	ra,ra,15 # f00ff00f <__stack_top+0x700eb013>
80000df0:	00000013          	nop
80000df4:	00000013          	nop
80000df8:	70f0f713          	andi	a4,ra,1807
80000dfc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000e00:	00200293          	li	t0,2
80000e04:	fe5212e3          	bne	tp,t0,80000de8 <test_12plus8_andi>
80000e08:	00f00393          	li	t2,15
80000e0c:	02771863          	bne	a4,t2,80000e3c <fail_andi>

80000e10 <andi_test_13>:
80000e10:	00d00193          	li	gp,13
80000e14:	0f007093          	andi	ra,zero,240
80000e18:	00000393          	li	t2,0
80000e1c:	02709063          	bne	ra,t2,80000e3c <fail_andi>

80000e20 <andi_test_14>:
80000e20:	00e00193          	li	gp,14
80000e24:	00ff00b7          	lui	ra,0xff0
80000e28:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80000e2c:	70f0f013          	andi	zero,ra,1807
80000e30:	00000393          	li	t2,0
80000e34:	00701463          	bne	zero,t2,80000e3c <fail_andi>
80000e38:	00c0006f          	j	80000e44 <pass_andi>

80000e3c <fail_andi>:
80000e3c:	04d00893          	li	a7,77
80000e40:	ffdff06f          	j	80000e3c <fail_andi>

80000e44 <pass_andi>:
80000e44:	04200893          	li	a7,66

80000e48 <auipc_test_2>:
80000e48:	00200193          	li	gp,2
80000e4c:	00002517          	auipc	a0,0x2
80000e50:	71c50513          	addi	a0,a0,1820 # 80003568 <lh_test_2+0x14>
80000e54:	004005ef          	jal	a1,80000e58 <test_2plus10_auipc>

80000e58 <test_2plus10_auipc>:
80000e58:	40b50533          	sub	a0,a0,a1
80000e5c:	000023b7          	lui	t2,0x2
80000e60:	71038393          	addi	t2,t2,1808 # 2710 <_size_rom-0x6600>
80000e64:	02751463          	bne	a0,t2,80000e8c <fail_auipc>

80000e68 <auipc_test_3>:
80000e68:	00300193          	li	gp,3
80000e6c:	ffffe517          	auipc	a0,0xffffe
80000e70:	8fc50513          	addi	a0,a0,-1796 # 7fffe768 <_size_rom+0x7fff5a58>
80000e74:	004005ef          	jal	a1,80000e78 <test_3plus10_auipc>

80000e78 <test_3plus10_auipc>:
80000e78:	40b50533          	sub	a0,a0,a1
80000e7c:	ffffe3b7          	lui	t2,0xffffe
80000e80:	8f038393          	addi	t2,t2,-1808 # ffffd8f0 <__stack_top+0x7ffe98f4>
80000e84:	00751463          	bne	a0,t2,80000e8c <fail_auipc>
80000e88:	00c0006f          	j	80000e94 <pass_auipc>

80000e8c <fail_auipc>:
80000e8c:	04d00893          	li	a7,77
80000e90:	ffdff06f          	j	80000e8c <fail_auipc>

80000e94 <pass_auipc>:
80000e94:	04200893          	li	a7,66

80000e98 <beq_test_2>:
80000e98:	00200193          	li	gp,2
80000e9c:	00000093          	li	ra,0
80000ea0:	00000113          	li	sp,0
80000ea4:	00208663          	beq	ra,sp,80000eb0 <test_2plus18_beq>
80000ea8:	2a301863          	bne	zero,gp,80001158 <fail_beq>

80000eac <test_2plus14_beq>:
80000eac:	00301663          	bne	zero,gp,80000eb8 <beq_test_3>

80000eb0 <test_2plus18_beq>:
80000eb0:	fe208ee3          	beq	ra,sp,80000eac <test_2plus14_beq>
80000eb4:	2a301263          	bne	zero,gp,80001158 <fail_beq>

80000eb8 <beq_test_3>:
80000eb8:	00300193          	li	gp,3
80000ebc:	00100093          	li	ra,1
80000ec0:	00100113          	li	sp,1
80000ec4:	00208663          	beq	ra,sp,80000ed0 <test_3plus18_beq>
80000ec8:	28301863          	bne	zero,gp,80001158 <fail_beq>

80000ecc <test_3plus14_beq>:
80000ecc:	00301663          	bne	zero,gp,80000ed8 <beq_test_4>

80000ed0 <test_3plus18_beq>:
80000ed0:	fe208ee3          	beq	ra,sp,80000ecc <test_3plus14_beq>
80000ed4:	28301263          	bne	zero,gp,80001158 <fail_beq>

80000ed8 <beq_test_4>:
80000ed8:	00400193          	li	gp,4
80000edc:	fff00093          	li	ra,-1
80000ee0:	fff00113          	li	sp,-1
80000ee4:	00208663          	beq	ra,sp,80000ef0 <test_4plus18_beq>
80000ee8:	26301863          	bne	zero,gp,80001158 <fail_beq>

80000eec <test_4plus14_beq>:
80000eec:	00301663          	bne	zero,gp,80000ef8 <beq_test_5>

80000ef0 <test_4plus18_beq>:
80000ef0:	fe208ee3          	beq	ra,sp,80000eec <test_4plus14_beq>
80000ef4:	26301263          	bne	zero,gp,80001158 <fail_beq>

80000ef8 <beq_test_5>:
80000ef8:	00500193          	li	gp,5
80000efc:	00000093          	li	ra,0
80000f00:	00100113          	li	sp,1
80000f04:	00208463          	beq	ra,sp,80000f0c <test_5plus14_beq>
80000f08:	00301463          	bne	zero,gp,80000f10 <test_5plus18_beq>

80000f0c <test_5plus14_beq>:
80000f0c:	24301663          	bne	zero,gp,80001158 <fail_beq>

80000f10 <test_5plus18_beq>:
80000f10:	fe208ee3          	beq	ra,sp,80000f0c <test_5plus14_beq>

80000f14 <beq_test_6>:
80000f14:	00600193          	li	gp,6
80000f18:	00100093          	li	ra,1
80000f1c:	00000113          	li	sp,0
80000f20:	00208463          	beq	ra,sp,80000f28 <test_6plus14_beq>
80000f24:	00301463          	bne	zero,gp,80000f2c <test_6plus18_beq>

80000f28 <test_6plus14_beq>:
80000f28:	22301863          	bne	zero,gp,80001158 <fail_beq>

80000f2c <test_6plus18_beq>:
80000f2c:	fe208ee3          	beq	ra,sp,80000f28 <test_6plus14_beq>

80000f30 <beq_test_7>:
80000f30:	00700193          	li	gp,7
80000f34:	fff00093          	li	ra,-1
80000f38:	00100113          	li	sp,1
80000f3c:	00208463          	beq	ra,sp,80000f44 <test_7plus14_beq>
80000f40:	00301463          	bne	zero,gp,80000f48 <test_7plus18_beq>

80000f44 <test_7plus14_beq>:
80000f44:	20301a63          	bne	zero,gp,80001158 <fail_beq>

80000f48 <test_7plus18_beq>:
80000f48:	fe208ee3          	beq	ra,sp,80000f44 <test_7plus14_beq>

80000f4c <beq_test_8>:
80000f4c:	00800193          	li	gp,8
80000f50:	00100093          	li	ra,1
80000f54:	fff00113          	li	sp,-1
80000f58:	00208463          	beq	ra,sp,80000f60 <test_8plus14_beq>
80000f5c:	00301463          	bne	zero,gp,80000f64 <test_8plus18_beq>

80000f60 <test_8plus14_beq>:
80000f60:	1e301c63          	bne	zero,gp,80001158 <fail_beq>

80000f64 <test_8plus18_beq>:
80000f64:	fe208ee3          	beq	ra,sp,80000f60 <test_8plus14_beq>

80000f68 <beq_test_9>:
80000f68:	00900193          	li	gp,9
80000f6c:	00000213          	li	tp,0

80000f70 <test_9plus8_beq>:
80000f70:	00000093          	li	ra,0
80000f74:	fff00113          	li	sp,-1
80000f78:	1e208063          	beq	ra,sp,80001158 <fail_beq>
80000f7c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000f80:	00200293          	li	t0,2
80000f84:	fe5216e3          	bne	tp,t0,80000f70 <test_9plus8_beq>

80000f88 <beq_test_10>:
80000f88:	00a00193          	li	gp,10
80000f8c:	00000213          	li	tp,0

80000f90 <test_10plus8_beq>:
80000f90:	00000093          	li	ra,0
80000f94:	fff00113          	li	sp,-1
80000f98:	00000013          	nop
80000f9c:	1a208e63          	beq	ra,sp,80001158 <fail_beq>
80000fa0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000fa4:	00200293          	li	t0,2
80000fa8:	fe5214e3          	bne	tp,t0,80000f90 <test_10plus8_beq>

80000fac <beq_test_11>:
80000fac:	00b00193          	li	gp,11
80000fb0:	00000213          	li	tp,0

80000fb4 <test_11plus8_beq>:
80000fb4:	00000093          	li	ra,0
80000fb8:	fff00113          	li	sp,-1
80000fbc:	00000013          	nop
80000fc0:	00000013          	nop
80000fc4:	18208a63          	beq	ra,sp,80001158 <fail_beq>
80000fc8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000fcc:	00200293          	li	t0,2
80000fd0:	fe5212e3          	bne	tp,t0,80000fb4 <test_11plus8_beq>

80000fd4 <beq_test_12>:
80000fd4:	00c00193          	li	gp,12
80000fd8:	00000213          	li	tp,0

80000fdc <test_12plus8_beq>:
80000fdc:	00000093          	li	ra,0
80000fe0:	00000013          	nop
80000fe4:	fff00113          	li	sp,-1
80000fe8:	16208863          	beq	ra,sp,80001158 <fail_beq>
80000fec:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80000ff0:	00200293          	li	t0,2
80000ff4:	fe5214e3          	bne	tp,t0,80000fdc <test_12plus8_beq>

80000ff8 <beq_test_13>:
80000ff8:	00d00193          	li	gp,13
80000ffc:	00000213          	li	tp,0

80001000 <test_13plus8_beq>:
80001000:	00000093          	li	ra,0
80001004:	00000013          	nop
80001008:	fff00113          	li	sp,-1
8000100c:	00000013          	nop
80001010:	14208463          	beq	ra,sp,80001158 <fail_beq>
80001014:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001018:	00200293          	li	t0,2
8000101c:	fe5212e3          	bne	tp,t0,80001000 <test_13plus8_beq>

80001020 <beq_test_14>:
80001020:	00e00193          	li	gp,14
80001024:	00000213          	li	tp,0

80001028 <test_14plus8_beq>:
80001028:	00000093          	li	ra,0
8000102c:	00000013          	nop
80001030:	00000013          	nop
80001034:	fff00113          	li	sp,-1
80001038:	12208063          	beq	ra,sp,80001158 <fail_beq>
8000103c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001040:	00200293          	li	t0,2
80001044:	fe5212e3          	bne	tp,t0,80001028 <test_14plus8_beq>

80001048 <beq_test_15>:
80001048:	00f00193          	li	gp,15
8000104c:	00000213          	li	tp,0

80001050 <test_15plus8_beq>:
80001050:	00000093          	li	ra,0
80001054:	fff00113          	li	sp,-1
80001058:	10208063          	beq	ra,sp,80001158 <fail_beq>
8000105c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001060:	00200293          	li	t0,2
80001064:	fe5216e3          	bne	tp,t0,80001050 <test_15plus8_beq>

80001068 <beq_test_16>:
80001068:	01000193          	li	gp,16
8000106c:	00000213          	li	tp,0

80001070 <test_16plus8_beq>:
80001070:	00000093          	li	ra,0
80001074:	fff00113          	li	sp,-1
80001078:	00000013          	nop
8000107c:	0c208e63          	beq	ra,sp,80001158 <fail_beq>
80001080:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001084:	00200293          	li	t0,2
80001088:	fe5214e3          	bne	tp,t0,80001070 <test_16plus8_beq>

8000108c <beq_test_17>:
8000108c:	01100193          	li	gp,17
80001090:	00000213          	li	tp,0

80001094 <test_17plus8_beq>:
80001094:	00000093          	li	ra,0
80001098:	fff00113          	li	sp,-1
8000109c:	00000013          	nop
800010a0:	00000013          	nop
800010a4:	0a208a63          	beq	ra,sp,80001158 <fail_beq>
800010a8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800010ac:	00200293          	li	t0,2
800010b0:	fe5212e3          	bne	tp,t0,80001094 <test_17plus8_beq>

800010b4 <beq_test_18>:
800010b4:	01200193          	li	gp,18
800010b8:	00000213          	li	tp,0

800010bc <test_18plus8_beq>:
800010bc:	00000093          	li	ra,0
800010c0:	00000013          	nop
800010c4:	fff00113          	li	sp,-1
800010c8:	08208863          	beq	ra,sp,80001158 <fail_beq>
800010cc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800010d0:	00200293          	li	t0,2
800010d4:	fe5214e3          	bne	tp,t0,800010bc <test_18plus8_beq>

800010d8 <beq_test_19>:
800010d8:	01300193          	li	gp,19
800010dc:	00000213          	li	tp,0

800010e0 <test_19plus8_beq>:
800010e0:	00000093          	li	ra,0
800010e4:	00000013          	nop
800010e8:	fff00113          	li	sp,-1
800010ec:	00000013          	nop
800010f0:	06208463          	beq	ra,sp,80001158 <fail_beq>
800010f4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800010f8:	00200293          	li	t0,2
800010fc:	fe5212e3          	bne	tp,t0,800010e0 <test_19plus8_beq>

80001100 <beq_test_20>:
80001100:	01400193          	li	gp,20
80001104:	00000213          	li	tp,0

80001108 <test_20plus8_beq>:
80001108:	00000093          	li	ra,0
8000110c:	00000013          	nop
80001110:	00000013          	nop
80001114:	fff00113          	li	sp,-1
80001118:	04208063          	beq	ra,sp,80001158 <fail_beq>
8000111c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001120:	00200293          	li	t0,2
80001124:	fe5212e3          	bne	tp,t0,80001108 <test_20plus8_beq>

80001128 <beq_test_21>:
80001128:	01500193          	li	gp,21
8000112c:	00100093          	li	ra,1
80001130:	00000a63          	beqz	zero,80001144 <test_21plus1c_beq>
80001134:	00108093          	addi	ra,ra,1
80001138:	00108093          	addi	ra,ra,1
8000113c:	00108093          	addi	ra,ra,1
80001140:	00108093          	addi	ra,ra,1

80001144 <test_21plus1c_beq>:
80001144:	00108093          	addi	ra,ra,1
80001148:	00108093          	addi	ra,ra,1
8000114c:	00300393          	li	t2,3
80001150:	00709463          	bne	ra,t2,80001158 <fail_beq>
80001154:	00c0006f          	j	80001160 <pass_beq>

80001158 <fail_beq>:
80001158:	04d00893          	li	a7,77
8000115c:	ffdff06f          	j	80001158 <fail_beq>

80001160 <pass_beq>:
80001160:	04200893          	li	a7,66

80001164 <bge_test_2>:
80001164:	00200193          	li	gp,2
80001168:	00000093          	li	ra,0
8000116c:	00000113          	li	sp,0
80001170:	0020d663          	bge	ra,sp,8000117c <test_2plus18_bge>
80001174:	30301863          	bne	zero,gp,80001484 <fail_bge>

80001178 <test_2plus14_bge>:
80001178:	00301663          	bne	zero,gp,80001184 <bge_test_3>

8000117c <test_2plus18_bge>:
8000117c:	fe20dee3          	bge	ra,sp,80001178 <test_2plus14_bge>
80001180:	30301263          	bne	zero,gp,80001484 <fail_bge>

80001184 <bge_test_3>:
80001184:	00300193          	li	gp,3
80001188:	00100093          	li	ra,1
8000118c:	00100113          	li	sp,1
80001190:	0020d663          	bge	ra,sp,8000119c <test_3plus18_bge>
80001194:	2e301863          	bne	zero,gp,80001484 <fail_bge>

80001198 <test_3plus14_bge>:
80001198:	00301663          	bne	zero,gp,800011a4 <bge_test_4>

8000119c <test_3plus18_bge>:
8000119c:	fe20dee3          	bge	ra,sp,80001198 <test_3plus14_bge>
800011a0:	2e301263          	bne	zero,gp,80001484 <fail_bge>

800011a4 <bge_test_4>:
800011a4:	00400193          	li	gp,4
800011a8:	fff00093          	li	ra,-1
800011ac:	fff00113          	li	sp,-1
800011b0:	0020d663          	bge	ra,sp,800011bc <test_4plus18_bge>
800011b4:	2c301863          	bne	zero,gp,80001484 <fail_bge>

800011b8 <test_4plus14_bge>:
800011b8:	00301663          	bne	zero,gp,800011c4 <bge_test_5>

800011bc <test_4plus18_bge>:
800011bc:	fe20dee3          	bge	ra,sp,800011b8 <test_4plus14_bge>
800011c0:	2c301263          	bne	zero,gp,80001484 <fail_bge>

800011c4 <bge_test_5>:
800011c4:	00500193          	li	gp,5
800011c8:	00100093          	li	ra,1
800011cc:	00000113          	li	sp,0
800011d0:	0020d663          	bge	ra,sp,800011dc <test_5plus18_bge>
800011d4:	2a301863          	bne	zero,gp,80001484 <fail_bge>

800011d8 <test_5plus14_bge>:
800011d8:	00301663          	bne	zero,gp,800011e4 <bge_test_6>

800011dc <test_5plus18_bge>:
800011dc:	fe20dee3          	bge	ra,sp,800011d8 <test_5plus14_bge>
800011e0:	2a301263          	bne	zero,gp,80001484 <fail_bge>

800011e4 <bge_test_6>:
800011e4:	00600193          	li	gp,6
800011e8:	00100093          	li	ra,1
800011ec:	fff00113          	li	sp,-1
800011f0:	0020d663          	bge	ra,sp,800011fc <test_6plus18_bge>
800011f4:	28301863          	bne	zero,gp,80001484 <fail_bge>

800011f8 <test_6plus14_bge>:
800011f8:	00301663          	bne	zero,gp,80001204 <bge_test_7>

800011fc <test_6plus18_bge>:
800011fc:	fe20dee3          	bge	ra,sp,800011f8 <test_6plus14_bge>
80001200:	28301263          	bne	zero,gp,80001484 <fail_bge>

80001204 <bge_test_7>:
80001204:	00700193          	li	gp,7
80001208:	fff00093          	li	ra,-1
8000120c:	ffe00113          	li	sp,-2
80001210:	0020d663          	bge	ra,sp,8000121c <test_7plus18_bge>
80001214:	26301863          	bne	zero,gp,80001484 <fail_bge>

80001218 <test_7plus14_bge>:
80001218:	00301663          	bne	zero,gp,80001224 <bge_test_8>

8000121c <test_7plus18_bge>:
8000121c:	fe20dee3          	bge	ra,sp,80001218 <test_7plus14_bge>
80001220:	26301263          	bne	zero,gp,80001484 <fail_bge>

80001224 <bge_test_8>:
80001224:	00800193          	li	gp,8
80001228:	00000093          	li	ra,0
8000122c:	00100113          	li	sp,1
80001230:	0020d463          	bge	ra,sp,80001238 <test_8plus14_bge>
80001234:	00301463          	bne	zero,gp,8000123c <test_8plus18_bge>

80001238 <test_8plus14_bge>:
80001238:	24301663          	bne	zero,gp,80001484 <fail_bge>

8000123c <test_8plus18_bge>:
8000123c:	fe20dee3          	bge	ra,sp,80001238 <test_8plus14_bge>

80001240 <bge_test_9>:
80001240:	00900193          	li	gp,9
80001244:	fff00093          	li	ra,-1
80001248:	00100113          	li	sp,1
8000124c:	0020d463          	bge	ra,sp,80001254 <test_9plus14_bge>
80001250:	00301463          	bne	zero,gp,80001258 <test_9plus18_bge>

80001254 <test_9plus14_bge>:
80001254:	22301863          	bne	zero,gp,80001484 <fail_bge>

80001258 <test_9plus18_bge>:
80001258:	fe20dee3          	bge	ra,sp,80001254 <test_9plus14_bge>

8000125c <bge_test_10>:
8000125c:	00a00193          	li	gp,10
80001260:	ffe00093          	li	ra,-2
80001264:	fff00113          	li	sp,-1
80001268:	0020d463          	bge	ra,sp,80001270 <test_10plus14_bge>
8000126c:	00301463          	bne	zero,gp,80001274 <test_10plus18_bge>

80001270 <test_10plus14_bge>:
80001270:	20301a63          	bne	zero,gp,80001484 <fail_bge>

80001274 <test_10plus18_bge>:
80001274:	fe20dee3          	bge	ra,sp,80001270 <test_10plus14_bge>

80001278 <bge_test_11>:
80001278:	00b00193          	li	gp,11
8000127c:	ffe00093          	li	ra,-2
80001280:	00100113          	li	sp,1
80001284:	0020d463          	bge	ra,sp,8000128c <test_11plus14_bge>
80001288:	00301463          	bne	zero,gp,80001290 <test_11plus18_bge>

8000128c <test_11plus14_bge>:
8000128c:	1e301c63          	bne	zero,gp,80001484 <fail_bge>

80001290 <test_11plus18_bge>:
80001290:	fe20dee3          	bge	ra,sp,8000128c <test_11plus14_bge>

80001294 <bge_test_12>:
80001294:	00c00193          	li	gp,12
80001298:	00000213          	li	tp,0

8000129c <test_12plus8_bge>:
8000129c:	fff00093          	li	ra,-1
800012a0:	00000113          	li	sp,0
800012a4:	1e20d063          	bge	ra,sp,80001484 <fail_bge>
800012a8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800012ac:	00200293          	li	t0,2
800012b0:	fe5216e3          	bne	tp,t0,8000129c <test_12plus8_bge>

800012b4 <bge_test_13>:
800012b4:	00d00193          	li	gp,13
800012b8:	00000213          	li	tp,0

800012bc <test_13plus8_bge>:
800012bc:	fff00093          	li	ra,-1
800012c0:	00000113          	li	sp,0
800012c4:	00000013          	nop
800012c8:	1a20de63          	bge	ra,sp,80001484 <fail_bge>
800012cc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800012d0:	00200293          	li	t0,2
800012d4:	fe5214e3          	bne	tp,t0,800012bc <test_13plus8_bge>

800012d8 <bge_test_14>:
800012d8:	00e00193          	li	gp,14
800012dc:	00000213          	li	tp,0

800012e0 <test_14plus8_bge>:
800012e0:	fff00093          	li	ra,-1
800012e4:	00000113          	li	sp,0
800012e8:	00000013          	nop
800012ec:	00000013          	nop
800012f0:	1820da63          	bge	ra,sp,80001484 <fail_bge>
800012f4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800012f8:	00200293          	li	t0,2
800012fc:	fe5212e3          	bne	tp,t0,800012e0 <test_14plus8_bge>

80001300 <bge_test_15>:
80001300:	00f00193          	li	gp,15
80001304:	00000213          	li	tp,0

80001308 <test_15plus8_bge>:
80001308:	fff00093          	li	ra,-1
8000130c:	00000013          	nop
80001310:	00000113          	li	sp,0
80001314:	1620d863          	bge	ra,sp,80001484 <fail_bge>
80001318:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000131c:	00200293          	li	t0,2
80001320:	fe5214e3          	bne	tp,t0,80001308 <test_15plus8_bge>

80001324 <bge_test_16>:
80001324:	01000193          	li	gp,16
80001328:	00000213          	li	tp,0

8000132c <test_16plus8_bge>:
8000132c:	fff00093          	li	ra,-1
80001330:	00000013          	nop
80001334:	00000113          	li	sp,0
80001338:	00000013          	nop
8000133c:	1420d463          	bge	ra,sp,80001484 <fail_bge>
80001340:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001344:	00200293          	li	t0,2
80001348:	fe5212e3          	bne	tp,t0,8000132c <test_16plus8_bge>

8000134c <bge_test_17>:
8000134c:	01100193          	li	gp,17
80001350:	00000213          	li	tp,0

80001354 <test_17plus8_bge>:
80001354:	fff00093          	li	ra,-1
80001358:	00000013          	nop
8000135c:	00000013          	nop
80001360:	00000113          	li	sp,0
80001364:	1220d063          	bge	ra,sp,80001484 <fail_bge>
80001368:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000136c:	00200293          	li	t0,2
80001370:	fe5212e3          	bne	tp,t0,80001354 <test_17plus8_bge>

80001374 <bge_test_18>:
80001374:	01200193          	li	gp,18
80001378:	00000213          	li	tp,0

8000137c <test_18plus8_bge>:
8000137c:	fff00093          	li	ra,-1
80001380:	00000113          	li	sp,0
80001384:	1020d063          	bge	ra,sp,80001484 <fail_bge>
80001388:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000138c:	00200293          	li	t0,2
80001390:	fe5216e3          	bne	tp,t0,8000137c <test_18plus8_bge>

80001394 <bge_test_19>:
80001394:	01300193          	li	gp,19
80001398:	00000213          	li	tp,0

8000139c <test_19plus8_bge>:
8000139c:	fff00093          	li	ra,-1
800013a0:	00000113          	li	sp,0
800013a4:	00000013          	nop
800013a8:	0c20de63          	bge	ra,sp,80001484 <fail_bge>
800013ac:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800013b0:	00200293          	li	t0,2
800013b4:	fe5214e3          	bne	tp,t0,8000139c <test_19plus8_bge>

800013b8 <bge_test_20>:
800013b8:	01400193          	li	gp,20
800013bc:	00000213          	li	tp,0

800013c0 <test_20plus8_bge>:
800013c0:	fff00093          	li	ra,-1
800013c4:	00000113          	li	sp,0
800013c8:	00000013          	nop
800013cc:	00000013          	nop
800013d0:	0a20da63          	bge	ra,sp,80001484 <fail_bge>
800013d4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800013d8:	00200293          	li	t0,2
800013dc:	fe5212e3          	bne	tp,t0,800013c0 <test_20plus8_bge>

800013e0 <bge_test_21>:
800013e0:	01500193          	li	gp,21
800013e4:	00000213          	li	tp,0

800013e8 <test_21plus8_bge>:
800013e8:	fff00093          	li	ra,-1
800013ec:	00000013          	nop
800013f0:	00000113          	li	sp,0
800013f4:	0820d863          	bge	ra,sp,80001484 <fail_bge>
800013f8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800013fc:	00200293          	li	t0,2
80001400:	fe5214e3          	bne	tp,t0,800013e8 <test_21plus8_bge>

80001404 <bge_test_22>:
80001404:	01600193          	li	gp,22
80001408:	00000213          	li	tp,0

8000140c <test_22plus8_bge>:
8000140c:	fff00093          	li	ra,-1
80001410:	00000013          	nop
80001414:	00000113          	li	sp,0
80001418:	00000013          	nop
8000141c:	0620d463          	bge	ra,sp,80001484 <fail_bge>
80001420:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001424:	00200293          	li	t0,2
80001428:	fe5212e3          	bne	tp,t0,8000140c <test_22plus8_bge>

8000142c <bge_test_23>:
8000142c:	01700193          	li	gp,23
80001430:	00000213          	li	tp,0

80001434 <test_23plus8_bge>:
80001434:	fff00093          	li	ra,-1
80001438:	00000013          	nop
8000143c:	00000013          	nop
80001440:	00000113          	li	sp,0
80001444:	0420d063          	bge	ra,sp,80001484 <fail_bge>
80001448:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000144c:	00200293          	li	t0,2
80001450:	fe5212e3          	bne	tp,t0,80001434 <test_23plus8_bge>

80001454 <bge_test_24>:
80001454:	01800193          	li	gp,24
80001458:	00100093          	li	ra,1
8000145c:	0000da63          	bgez	ra,80001470 <test_24plus1c_bge>
80001460:	00108093          	addi	ra,ra,1
80001464:	00108093          	addi	ra,ra,1
80001468:	00108093          	addi	ra,ra,1
8000146c:	00108093          	addi	ra,ra,1

80001470 <test_24plus1c_bge>:
80001470:	00108093          	addi	ra,ra,1
80001474:	00108093          	addi	ra,ra,1
80001478:	00300393          	li	t2,3
8000147c:	00709463          	bne	ra,t2,80001484 <fail_bge>
80001480:	00c0006f          	j	8000148c <pass_bge>

80001484 <fail_bge>:
80001484:	04d00893          	li	a7,77
80001488:	ffdff06f          	j	80001484 <fail_bge>

8000148c <pass_bge>:
8000148c:	04200893          	li	a7,66

80001490 <bgeu_test_2>:
80001490:	00200193          	li	gp,2
80001494:	00000093          	li	ra,0
80001498:	00000113          	li	sp,0
8000149c:	0020f663          	bgeu	ra,sp,800014a8 <test_2plus18_bgeu>
800014a0:	34301263          	bne	zero,gp,800017e4 <fail_bgeu>

800014a4 <test_2plus14_bgeu>:
800014a4:	00301663          	bne	zero,gp,800014b0 <bgeu_test_3>

800014a8 <test_2plus18_bgeu>:
800014a8:	fe20fee3          	bgeu	ra,sp,800014a4 <test_2plus14_bgeu>
800014ac:	32301c63          	bne	zero,gp,800017e4 <fail_bgeu>

800014b0 <bgeu_test_3>:
800014b0:	00300193          	li	gp,3
800014b4:	00100093          	li	ra,1
800014b8:	00100113          	li	sp,1
800014bc:	0020f663          	bgeu	ra,sp,800014c8 <test_3plus18_bgeu>
800014c0:	32301263          	bne	zero,gp,800017e4 <fail_bgeu>

800014c4 <test_3plus14_bgeu>:
800014c4:	00301663          	bne	zero,gp,800014d0 <bgeu_test_4>

800014c8 <test_3plus18_bgeu>:
800014c8:	fe20fee3          	bgeu	ra,sp,800014c4 <test_3plus14_bgeu>
800014cc:	30301c63          	bne	zero,gp,800017e4 <fail_bgeu>

800014d0 <bgeu_test_4>:
800014d0:	00400193          	li	gp,4
800014d4:	fff00093          	li	ra,-1
800014d8:	fff00113          	li	sp,-1
800014dc:	0020f663          	bgeu	ra,sp,800014e8 <test_4plus18_bgeu>
800014e0:	30301263          	bne	zero,gp,800017e4 <fail_bgeu>

800014e4 <test_4plus14_bgeu>:
800014e4:	00301663          	bne	zero,gp,800014f0 <bgeu_test_5>

800014e8 <test_4plus18_bgeu>:
800014e8:	fe20fee3          	bgeu	ra,sp,800014e4 <test_4plus14_bgeu>
800014ec:	2e301c63          	bne	zero,gp,800017e4 <fail_bgeu>

800014f0 <bgeu_test_5>:
800014f0:	00500193          	li	gp,5
800014f4:	00100093          	li	ra,1
800014f8:	00000113          	li	sp,0
800014fc:	0020f663          	bgeu	ra,sp,80001508 <test_5plus18_bgeu>
80001500:	2e301263          	bne	zero,gp,800017e4 <fail_bgeu>

80001504 <test_5plus14_bgeu>:
80001504:	00301663          	bne	zero,gp,80001510 <bgeu_test_6>

80001508 <test_5plus18_bgeu>:
80001508:	fe20fee3          	bgeu	ra,sp,80001504 <test_5plus14_bgeu>
8000150c:	2c301c63          	bne	zero,gp,800017e4 <fail_bgeu>

80001510 <bgeu_test_6>:
80001510:	00600193          	li	gp,6
80001514:	fff00093          	li	ra,-1
80001518:	ffe00113          	li	sp,-2
8000151c:	0020f663          	bgeu	ra,sp,80001528 <test_6plus18_bgeu>
80001520:	2c301263          	bne	zero,gp,800017e4 <fail_bgeu>

80001524 <test_6plus14_bgeu>:
80001524:	00301663          	bne	zero,gp,80001530 <bgeu_test_7>

80001528 <test_6plus18_bgeu>:
80001528:	fe20fee3          	bgeu	ra,sp,80001524 <test_6plus14_bgeu>
8000152c:	2a301c63          	bne	zero,gp,800017e4 <fail_bgeu>

80001530 <bgeu_test_7>:
80001530:	00700193          	li	gp,7
80001534:	fff00093          	li	ra,-1
80001538:	00000113          	li	sp,0
8000153c:	0020f663          	bgeu	ra,sp,80001548 <test_7plus18_bgeu>
80001540:	2a301263          	bne	zero,gp,800017e4 <fail_bgeu>

80001544 <test_7plus14_bgeu>:
80001544:	00301663          	bne	zero,gp,80001550 <bgeu_test_8>

80001548 <test_7plus18_bgeu>:
80001548:	fe20fee3          	bgeu	ra,sp,80001544 <test_7plus14_bgeu>
8000154c:	28301c63          	bne	zero,gp,800017e4 <fail_bgeu>

80001550 <bgeu_test_8>:
80001550:	00800193          	li	gp,8
80001554:	00000093          	li	ra,0
80001558:	00100113          	li	sp,1
8000155c:	0020f463          	bgeu	ra,sp,80001564 <test_8plus14_bgeu>
80001560:	00301463          	bne	zero,gp,80001568 <test_8plus18_bgeu>

80001564 <test_8plus14_bgeu>:
80001564:	28301063          	bne	zero,gp,800017e4 <fail_bgeu>

80001568 <test_8plus18_bgeu>:
80001568:	fe20fee3          	bgeu	ra,sp,80001564 <test_8plus14_bgeu>

8000156c <bgeu_test_9>:
8000156c:	00900193          	li	gp,9
80001570:	ffe00093          	li	ra,-2
80001574:	fff00113          	li	sp,-1
80001578:	0020f463          	bgeu	ra,sp,80001580 <test_9plus14_bgeu>
8000157c:	00301463          	bne	zero,gp,80001584 <test_9plus18_bgeu>

80001580 <test_9plus14_bgeu>:
80001580:	26301263          	bne	zero,gp,800017e4 <fail_bgeu>

80001584 <test_9plus18_bgeu>:
80001584:	fe20fee3          	bgeu	ra,sp,80001580 <test_9plus14_bgeu>

80001588 <bgeu_test_10>:
80001588:	00a00193          	li	gp,10
8000158c:	00000093          	li	ra,0
80001590:	fff00113          	li	sp,-1
80001594:	0020f463          	bgeu	ra,sp,8000159c <test_10plus14_bgeu>
80001598:	00301463          	bne	zero,gp,800015a0 <test_10plus18_bgeu>

8000159c <test_10plus14_bgeu>:
8000159c:	24301463          	bne	zero,gp,800017e4 <fail_bgeu>

800015a0 <test_10plus18_bgeu>:
800015a0:	fe20fee3          	bgeu	ra,sp,8000159c <test_10plus14_bgeu>

800015a4 <bgeu_test_11>:
800015a4:	00b00193          	li	gp,11
800015a8:	800000b7          	lui	ra,0x80000
800015ac:	fff08093          	addi	ra,ra,-1 # 7fffffff <_size_rom+0x7fff72ef>
800015b0:	80000137          	lui	sp,0x80000
800015b4:	0020f463          	bgeu	ra,sp,800015bc <test_11plus18_bgeu>
800015b8:	00301463          	bne	zero,gp,800015c0 <test_11plus1c_bgeu>

800015bc <test_11plus18_bgeu>:
800015bc:	22301463          	bne	zero,gp,800017e4 <fail_bgeu>

800015c0 <test_11plus1c_bgeu>:
800015c0:	fe20fee3          	bgeu	ra,sp,800015bc <test_11plus18_bgeu>

800015c4 <bgeu_test_12>:
800015c4:	00c00193          	li	gp,12
800015c8:	00000213          	li	tp,0

800015cc <test_12plus8_bgeu>:
800015cc:	f00000b7          	lui	ra,0xf0000
800015d0:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
800015d4:	f0000137          	lui	sp,0xf0000
800015d8:	2020f663          	bgeu	ra,sp,800017e4 <fail_bgeu>
800015dc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800015e0:	00200293          	li	t0,2
800015e4:	fe5214e3          	bne	tp,t0,800015cc <test_12plus8_bgeu>

800015e8 <bgeu_test_13>:
800015e8:	00d00193          	li	gp,13
800015ec:	00000213          	li	tp,0

800015f0 <test_13plus8_bgeu>:
800015f0:	f00000b7          	lui	ra,0xf0000
800015f4:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
800015f8:	f0000137          	lui	sp,0xf0000
800015fc:	00000013          	nop
80001600:	1e20f263          	bgeu	ra,sp,800017e4 <fail_bgeu>
80001604:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001608:	00200293          	li	t0,2
8000160c:	fe5212e3          	bne	tp,t0,800015f0 <test_13plus8_bgeu>

80001610 <bgeu_test_14>:
80001610:	00e00193          	li	gp,14
80001614:	00000213          	li	tp,0

80001618 <test_14plus8_bgeu>:
80001618:	f00000b7          	lui	ra,0xf0000
8000161c:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
80001620:	f0000137          	lui	sp,0xf0000
80001624:	00000013          	nop
80001628:	00000013          	nop
8000162c:	1a20fc63          	bgeu	ra,sp,800017e4 <fail_bgeu>
80001630:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001634:	00200293          	li	t0,2
80001638:	fe5210e3          	bne	tp,t0,80001618 <test_14plus8_bgeu>

8000163c <bgeu_test_15>:
8000163c:	00f00193          	li	gp,15
80001640:	00000213          	li	tp,0

80001644 <test_15plus8_bgeu>:
80001644:	f00000b7          	lui	ra,0xf0000
80001648:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
8000164c:	00000013          	nop
80001650:	f0000137          	lui	sp,0xf0000
80001654:	1820f863          	bgeu	ra,sp,800017e4 <fail_bgeu>
80001658:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000165c:	00200293          	li	t0,2
80001660:	fe5212e3          	bne	tp,t0,80001644 <test_15plus8_bgeu>

80001664 <bgeu_test_16>:
80001664:	01000193          	li	gp,16
80001668:	00000213          	li	tp,0

8000166c <test_16plus8_bgeu>:
8000166c:	f00000b7          	lui	ra,0xf0000
80001670:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
80001674:	00000013          	nop
80001678:	f0000137          	lui	sp,0xf0000
8000167c:	00000013          	nop
80001680:	1620f263          	bgeu	ra,sp,800017e4 <fail_bgeu>
80001684:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001688:	00200293          	li	t0,2
8000168c:	fe5210e3          	bne	tp,t0,8000166c <test_16plus8_bgeu>

80001690 <bgeu_test_17>:
80001690:	01100193          	li	gp,17
80001694:	00000213          	li	tp,0

80001698 <test_17plus8_bgeu>:
80001698:	f00000b7          	lui	ra,0xf0000
8000169c:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
800016a0:	00000013          	nop
800016a4:	00000013          	nop
800016a8:	f0000137          	lui	sp,0xf0000
800016ac:	1220fc63          	bgeu	ra,sp,800017e4 <fail_bgeu>
800016b0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800016b4:	00200293          	li	t0,2
800016b8:	fe5210e3          	bne	tp,t0,80001698 <test_17plus8_bgeu>

800016bc <bgeu_test_18>:
800016bc:	01200193          	li	gp,18
800016c0:	00000213          	li	tp,0

800016c4 <test_18plus8_bgeu>:
800016c4:	f00000b7          	lui	ra,0xf0000
800016c8:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
800016cc:	f0000137          	lui	sp,0xf0000
800016d0:	1020fa63          	bgeu	ra,sp,800017e4 <fail_bgeu>
800016d4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800016d8:	00200293          	li	t0,2
800016dc:	fe5214e3          	bne	tp,t0,800016c4 <test_18plus8_bgeu>

800016e0 <bgeu_test_19>:
800016e0:	01300193          	li	gp,19
800016e4:	00000213          	li	tp,0

800016e8 <test_19plus8_bgeu>:
800016e8:	f00000b7          	lui	ra,0xf0000
800016ec:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
800016f0:	f0000137          	lui	sp,0xf0000
800016f4:	00000013          	nop
800016f8:	0e20f663          	bgeu	ra,sp,800017e4 <fail_bgeu>
800016fc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001700:	00200293          	li	t0,2
80001704:	fe5212e3          	bne	tp,t0,800016e8 <test_19plus8_bgeu>

80001708 <bgeu_test_20>:
80001708:	01400193          	li	gp,20
8000170c:	00000213          	li	tp,0

80001710 <test_20plus8_bgeu>:
80001710:	f00000b7          	lui	ra,0xf0000
80001714:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
80001718:	f0000137          	lui	sp,0xf0000
8000171c:	00000013          	nop
80001720:	00000013          	nop
80001724:	0c20f063          	bgeu	ra,sp,800017e4 <fail_bgeu>
80001728:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000172c:	00200293          	li	t0,2
80001730:	fe5210e3          	bne	tp,t0,80001710 <test_20plus8_bgeu>

80001734 <bgeu_test_21>:
80001734:	01500193          	li	gp,21
80001738:	00000213          	li	tp,0

8000173c <test_21plus8_bgeu>:
8000173c:	f00000b7          	lui	ra,0xf0000
80001740:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
80001744:	00000013          	nop
80001748:	f0000137          	lui	sp,0xf0000
8000174c:	0820fc63          	bgeu	ra,sp,800017e4 <fail_bgeu>
80001750:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001754:	00200293          	li	t0,2
80001758:	fe5212e3          	bne	tp,t0,8000173c <test_21plus8_bgeu>

8000175c <bgeu_test_22>:
8000175c:	01600193          	li	gp,22
80001760:	00000213          	li	tp,0

80001764 <test_22plus8_bgeu>:
80001764:	f00000b7          	lui	ra,0xf0000
80001768:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
8000176c:	00000013          	nop
80001770:	f0000137          	lui	sp,0xf0000
80001774:	00000013          	nop
80001778:	0620f663          	bgeu	ra,sp,800017e4 <fail_bgeu>
8000177c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001780:	00200293          	li	t0,2
80001784:	fe5210e3          	bne	tp,t0,80001764 <test_22plus8_bgeu>

80001788 <bgeu_test_23>:
80001788:	01700193          	li	gp,23
8000178c:	00000213          	li	tp,0

80001790 <test_23plus8_bgeu>:
80001790:	f00000b7          	lui	ra,0xf0000
80001794:	fff08093          	addi	ra,ra,-1 # efffffff <__stack_top+0x6ffec003>
80001798:	00000013          	nop
8000179c:	00000013          	nop
800017a0:	f0000137          	lui	sp,0xf0000
800017a4:	0420f063          	bgeu	ra,sp,800017e4 <fail_bgeu>
800017a8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800017ac:	00200293          	li	t0,2
800017b0:	fe5210e3          	bne	tp,t0,80001790 <test_23plus8_bgeu>

800017b4 <bgeu_test_24>:
800017b4:	01800193          	li	gp,24
800017b8:	00100093          	li	ra,1
800017bc:	0000fa63          	bgeu	ra,zero,800017d0 <test_24plus1c_bgeu>
800017c0:	00108093          	addi	ra,ra,1
800017c4:	00108093          	addi	ra,ra,1
800017c8:	00108093          	addi	ra,ra,1
800017cc:	00108093          	addi	ra,ra,1

800017d0 <test_24plus1c_bgeu>:
800017d0:	00108093          	addi	ra,ra,1
800017d4:	00108093          	addi	ra,ra,1
800017d8:	00300393          	li	t2,3
800017dc:	00709463          	bne	ra,t2,800017e4 <fail_bgeu>
800017e0:	00c0006f          	j	800017ec <pass_bgeu>

800017e4 <fail_bgeu>:
800017e4:	04d00893          	li	a7,77
800017e8:	ffdff06f          	j	800017e4 <fail_bgeu>

800017ec <pass_bgeu>:
800017ec:	04200893          	li	a7,66

800017f0 <blt_test_2>:
800017f0:	00200193          	li	gp,2
800017f4:	00000093          	li	ra,0
800017f8:	00100113          	li	sp,1
800017fc:	0020c663          	blt	ra,sp,80001808 <test_2plus18_blt>
80001800:	2a301863          	bne	zero,gp,80001ab0 <fail_blt>

80001804 <test_2plus14_blt>:
80001804:	00301663          	bne	zero,gp,80001810 <blt_test_3>

80001808 <test_2plus18_blt>:
80001808:	fe20cee3          	blt	ra,sp,80001804 <test_2plus14_blt>
8000180c:	2a301263          	bne	zero,gp,80001ab0 <fail_blt>

80001810 <blt_test_3>:
80001810:	00300193          	li	gp,3
80001814:	fff00093          	li	ra,-1
80001818:	00100113          	li	sp,1
8000181c:	0020c663          	blt	ra,sp,80001828 <test_3plus18_blt>
80001820:	28301863          	bne	zero,gp,80001ab0 <fail_blt>

80001824 <test_3plus14_blt>:
80001824:	00301663          	bne	zero,gp,80001830 <blt_test_4>

80001828 <test_3plus18_blt>:
80001828:	fe20cee3          	blt	ra,sp,80001824 <test_3plus14_blt>
8000182c:	28301263          	bne	zero,gp,80001ab0 <fail_blt>

80001830 <blt_test_4>:
80001830:	00400193          	li	gp,4
80001834:	ffe00093          	li	ra,-2
80001838:	fff00113          	li	sp,-1
8000183c:	0020c663          	blt	ra,sp,80001848 <test_4plus18_blt>
80001840:	26301863          	bne	zero,gp,80001ab0 <fail_blt>

80001844 <test_4plus14_blt>:
80001844:	00301663          	bne	zero,gp,80001850 <blt_test_5>

80001848 <test_4plus18_blt>:
80001848:	fe20cee3          	blt	ra,sp,80001844 <test_4plus14_blt>
8000184c:	26301263          	bne	zero,gp,80001ab0 <fail_blt>

80001850 <blt_test_5>:
80001850:	00500193          	li	gp,5
80001854:	00100093          	li	ra,1
80001858:	00000113          	li	sp,0
8000185c:	0020c463          	blt	ra,sp,80001864 <test_5plus14_blt>
80001860:	00301463          	bne	zero,gp,80001868 <test_5plus18_blt>

80001864 <test_5plus14_blt>:
80001864:	24301663          	bne	zero,gp,80001ab0 <fail_blt>

80001868 <test_5plus18_blt>:
80001868:	fe20cee3          	blt	ra,sp,80001864 <test_5plus14_blt>

8000186c <blt_test_6>:
8000186c:	00600193          	li	gp,6
80001870:	00100093          	li	ra,1
80001874:	fff00113          	li	sp,-1
80001878:	0020c463          	blt	ra,sp,80001880 <test_6plus14_blt>
8000187c:	00301463          	bne	zero,gp,80001884 <test_6plus18_blt>

80001880 <test_6plus14_blt>:
80001880:	22301863          	bne	zero,gp,80001ab0 <fail_blt>

80001884 <test_6plus18_blt>:
80001884:	fe20cee3          	blt	ra,sp,80001880 <test_6plus14_blt>

80001888 <blt_test_7>:
80001888:	00700193          	li	gp,7
8000188c:	fff00093          	li	ra,-1
80001890:	ffe00113          	li	sp,-2
80001894:	0020c463          	blt	ra,sp,8000189c <test_7plus14_blt>
80001898:	00301463          	bne	zero,gp,800018a0 <test_7plus18_blt>

8000189c <test_7plus14_blt>:
8000189c:	20301a63          	bne	zero,gp,80001ab0 <fail_blt>

800018a0 <test_7plus18_blt>:
800018a0:	fe20cee3          	blt	ra,sp,8000189c <test_7plus14_blt>

800018a4 <blt_test_8>:
800018a4:	00800193          	li	gp,8
800018a8:	00100093          	li	ra,1
800018ac:	ffe00113          	li	sp,-2
800018b0:	0020c463          	blt	ra,sp,800018b8 <test_8plus14_blt>
800018b4:	00301463          	bne	zero,gp,800018bc <test_8plus18_blt>

800018b8 <test_8plus14_blt>:
800018b8:	1e301c63          	bne	zero,gp,80001ab0 <fail_blt>

800018bc <test_8plus18_blt>:
800018bc:	fe20cee3          	blt	ra,sp,800018b8 <test_8plus14_blt>

800018c0 <blt_test_9>:
800018c0:	00900193          	li	gp,9
800018c4:	00000213          	li	tp,0

800018c8 <test_9plus8_blt>:
800018c8:	00000093          	li	ra,0
800018cc:	fff00113          	li	sp,-1
800018d0:	1e20c063          	blt	ra,sp,80001ab0 <fail_blt>
800018d4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800018d8:	00200293          	li	t0,2
800018dc:	fe5216e3          	bne	tp,t0,800018c8 <test_9plus8_blt>

800018e0 <blt_test_10>:
800018e0:	00a00193          	li	gp,10
800018e4:	00000213          	li	tp,0

800018e8 <test_10plus8_blt>:
800018e8:	00000093          	li	ra,0
800018ec:	fff00113          	li	sp,-1
800018f0:	00000013          	nop
800018f4:	1a20ce63          	blt	ra,sp,80001ab0 <fail_blt>
800018f8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800018fc:	00200293          	li	t0,2
80001900:	fe5214e3          	bne	tp,t0,800018e8 <test_10plus8_blt>

80001904 <blt_test_11>:
80001904:	00b00193          	li	gp,11
80001908:	00000213          	li	tp,0

8000190c <test_11plus8_blt>:
8000190c:	00000093          	li	ra,0
80001910:	fff00113          	li	sp,-1
80001914:	00000013          	nop
80001918:	00000013          	nop
8000191c:	1820ca63          	blt	ra,sp,80001ab0 <fail_blt>
80001920:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001924:	00200293          	li	t0,2
80001928:	fe5212e3          	bne	tp,t0,8000190c <test_11plus8_blt>

8000192c <blt_test_12>:
8000192c:	00c00193          	li	gp,12
80001930:	00000213          	li	tp,0

80001934 <test_12plus8_blt>:
80001934:	00000093          	li	ra,0
80001938:	00000013          	nop
8000193c:	fff00113          	li	sp,-1
80001940:	1620c863          	blt	ra,sp,80001ab0 <fail_blt>
80001944:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001948:	00200293          	li	t0,2
8000194c:	fe5214e3          	bne	tp,t0,80001934 <test_12plus8_blt>

80001950 <blt_test_13>:
80001950:	00d00193          	li	gp,13
80001954:	00000213          	li	tp,0

80001958 <test_13plus8_blt>:
80001958:	00000093          	li	ra,0
8000195c:	00000013          	nop
80001960:	fff00113          	li	sp,-1
80001964:	00000013          	nop
80001968:	1420c463          	blt	ra,sp,80001ab0 <fail_blt>
8000196c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001970:	00200293          	li	t0,2
80001974:	fe5212e3          	bne	tp,t0,80001958 <test_13plus8_blt>

80001978 <blt_test_14>:
80001978:	00e00193          	li	gp,14
8000197c:	00000213          	li	tp,0

80001980 <test_14plus8_blt>:
80001980:	00000093          	li	ra,0
80001984:	00000013          	nop
80001988:	00000013          	nop
8000198c:	fff00113          	li	sp,-1
80001990:	1220c063          	blt	ra,sp,80001ab0 <fail_blt>
80001994:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001998:	00200293          	li	t0,2
8000199c:	fe5212e3          	bne	tp,t0,80001980 <test_14plus8_blt>

800019a0 <blt_test_15>:
800019a0:	00f00193          	li	gp,15
800019a4:	00000213          	li	tp,0

800019a8 <test_15plus8_blt>:
800019a8:	00000093          	li	ra,0
800019ac:	fff00113          	li	sp,-1
800019b0:	1020c063          	blt	ra,sp,80001ab0 <fail_blt>
800019b4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800019b8:	00200293          	li	t0,2
800019bc:	fe5216e3          	bne	tp,t0,800019a8 <test_15plus8_blt>

800019c0 <blt_test_16>:
800019c0:	01000193          	li	gp,16
800019c4:	00000213          	li	tp,0

800019c8 <test_16plus8_blt>:
800019c8:	00000093          	li	ra,0
800019cc:	fff00113          	li	sp,-1
800019d0:	00000013          	nop
800019d4:	0c20ce63          	blt	ra,sp,80001ab0 <fail_blt>
800019d8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800019dc:	00200293          	li	t0,2
800019e0:	fe5214e3          	bne	tp,t0,800019c8 <test_16plus8_blt>

800019e4 <blt_test_17>:
800019e4:	01100193          	li	gp,17
800019e8:	00000213          	li	tp,0

800019ec <test_17plus8_blt>:
800019ec:	00000093          	li	ra,0
800019f0:	fff00113          	li	sp,-1
800019f4:	00000013          	nop
800019f8:	00000013          	nop
800019fc:	0a20ca63          	blt	ra,sp,80001ab0 <fail_blt>
80001a00:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001a04:	00200293          	li	t0,2
80001a08:	fe5212e3          	bne	tp,t0,800019ec <test_17plus8_blt>

80001a0c <blt_test_18>:
80001a0c:	01200193          	li	gp,18
80001a10:	00000213          	li	tp,0

80001a14 <test_18plus8_blt>:
80001a14:	00000093          	li	ra,0
80001a18:	00000013          	nop
80001a1c:	fff00113          	li	sp,-1
80001a20:	0820c863          	blt	ra,sp,80001ab0 <fail_blt>
80001a24:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001a28:	00200293          	li	t0,2
80001a2c:	fe5214e3          	bne	tp,t0,80001a14 <test_18plus8_blt>

80001a30 <blt_test_19>:
80001a30:	01300193          	li	gp,19
80001a34:	00000213          	li	tp,0

80001a38 <test_19plus8_blt>:
80001a38:	00000093          	li	ra,0
80001a3c:	00000013          	nop
80001a40:	fff00113          	li	sp,-1
80001a44:	00000013          	nop
80001a48:	0620c463          	blt	ra,sp,80001ab0 <fail_blt>
80001a4c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001a50:	00200293          	li	t0,2
80001a54:	fe5212e3          	bne	tp,t0,80001a38 <test_19plus8_blt>

80001a58 <blt_test_20>:
80001a58:	01400193          	li	gp,20
80001a5c:	00000213          	li	tp,0

80001a60 <test_20plus8_blt>:
80001a60:	00000093          	li	ra,0
80001a64:	00000013          	nop
80001a68:	00000013          	nop
80001a6c:	fff00113          	li	sp,-1
80001a70:	0420c063          	blt	ra,sp,80001ab0 <fail_blt>
80001a74:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001a78:	00200293          	li	t0,2
80001a7c:	fe5212e3          	bne	tp,t0,80001a60 <test_20plus8_blt>

80001a80 <blt_test_21>:
80001a80:	01500193          	li	gp,21
80001a84:	00100093          	li	ra,1
80001a88:	00104a63          	bgtz	ra,80001a9c <test_21plus1c_blt>
80001a8c:	00108093          	addi	ra,ra,1
80001a90:	00108093          	addi	ra,ra,1
80001a94:	00108093          	addi	ra,ra,1
80001a98:	00108093          	addi	ra,ra,1

80001a9c <test_21plus1c_blt>:
80001a9c:	00108093          	addi	ra,ra,1
80001aa0:	00108093          	addi	ra,ra,1
80001aa4:	00300393          	li	t2,3
80001aa8:	00709463          	bne	ra,t2,80001ab0 <fail_blt>
80001aac:	00c0006f          	j	80001ab8 <pass_blt>

80001ab0 <fail_blt>:
80001ab0:	04d00893          	li	a7,77
80001ab4:	ffdff06f          	j	80001ab0 <fail_blt>

80001ab8 <pass_blt>:
80001ab8:	04200893          	li	a7,66

80001abc <bltu_test_2>:
80001abc:	00200193          	li	gp,2
80001ac0:	00000093          	li	ra,0
80001ac4:	00100113          	li	sp,1
80001ac8:	0020e663          	bltu	ra,sp,80001ad4 <test_2plus18_bltu>
80001acc:	2e301263          	bne	zero,gp,80001db0 <fail_bltu>

80001ad0 <test_2plus14_bltu>:
80001ad0:	00301663          	bne	zero,gp,80001adc <bltu_test_3>

80001ad4 <test_2plus18_bltu>:
80001ad4:	fe20eee3          	bltu	ra,sp,80001ad0 <test_2plus14_bltu>
80001ad8:	2c301c63          	bne	zero,gp,80001db0 <fail_bltu>

80001adc <bltu_test_3>:
80001adc:	00300193          	li	gp,3
80001ae0:	ffe00093          	li	ra,-2
80001ae4:	fff00113          	li	sp,-1
80001ae8:	0020e663          	bltu	ra,sp,80001af4 <test_3plus18_bltu>
80001aec:	2c301263          	bne	zero,gp,80001db0 <fail_bltu>

80001af0 <test_3plus14_bltu>:
80001af0:	00301663          	bne	zero,gp,80001afc <bltu_test_4>

80001af4 <test_3plus18_bltu>:
80001af4:	fe20eee3          	bltu	ra,sp,80001af0 <test_3plus14_bltu>
80001af8:	2a301c63          	bne	zero,gp,80001db0 <fail_bltu>

80001afc <bltu_test_4>:
80001afc:	00400193          	li	gp,4
80001b00:	00000093          	li	ra,0
80001b04:	fff00113          	li	sp,-1
80001b08:	0020e663          	bltu	ra,sp,80001b14 <test_4plus18_bltu>
80001b0c:	2a301263          	bne	zero,gp,80001db0 <fail_bltu>

80001b10 <test_4plus14_bltu>:
80001b10:	00301663          	bne	zero,gp,80001b1c <bltu_test_5>

80001b14 <test_4plus18_bltu>:
80001b14:	fe20eee3          	bltu	ra,sp,80001b10 <test_4plus14_bltu>
80001b18:	28301c63          	bne	zero,gp,80001db0 <fail_bltu>

80001b1c <bltu_test_5>:
80001b1c:	00500193          	li	gp,5
80001b20:	00100093          	li	ra,1
80001b24:	00000113          	li	sp,0
80001b28:	0020e463          	bltu	ra,sp,80001b30 <test_5plus14_bltu>
80001b2c:	00301463          	bne	zero,gp,80001b34 <test_5plus18_bltu>

80001b30 <test_5plus14_bltu>:
80001b30:	28301063          	bne	zero,gp,80001db0 <fail_bltu>

80001b34 <test_5plus18_bltu>:
80001b34:	fe20eee3          	bltu	ra,sp,80001b30 <test_5plus14_bltu>

80001b38 <bltu_test_6>:
80001b38:	00600193          	li	gp,6
80001b3c:	fff00093          	li	ra,-1
80001b40:	ffe00113          	li	sp,-2
80001b44:	0020e463          	bltu	ra,sp,80001b4c <test_6plus14_bltu>
80001b48:	00301463          	bne	zero,gp,80001b50 <test_6plus18_bltu>

80001b4c <test_6plus14_bltu>:
80001b4c:	26301263          	bne	zero,gp,80001db0 <fail_bltu>

80001b50 <test_6plus18_bltu>:
80001b50:	fe20eee3          	bltu	ra,sp,80001b4c <test_6plus14_bltu>

80001b54 <bltu_test_7>:
80001b54:	00700193          	li	gp,7
80001b58:	fff00093          	li	ra,-1
80001b5c:	00000113          	li	sp,0
80001b60:	0020e463          	bltu	ra,sp,80001b68 <test_7plus14_bltu>
80001b64:	00301463          	bne	zero,gp,80001b6c <test_7plus18_bltu>

80001b68 <test_7plus14_bltu>:
80001b68:	24301463          	bne	zero,gp,80001db0 <fail_bltu>

80001b6c <test_7plus18_bltu>:
80001b6c:	fe20eee3          	bltu	ra,sp,80001b68 <test_7plus14_bltu>

80001b70 <bltu_test_8>:
80001b70:	00800193          	li	gp,8
80001b74:	800000b7          	lui	ra,0x80000
80001b78:	80000137          	lui	sp,0x80000
80001b7c:	fff10113          	addi	sp,sp,-1 # 7fffffff <_size_rom+0x7fff72ef>
80001b80:	0020e463          	bltu	ra,sp,80001b88 <test_8plus18_bltu>
80001b84:	00301463          	bne	zero,gp,80001b8c <test_8plus1c_bltu>

80001b88 <test_8plus18_bltu>:
80001b88:	22301463          	bne	zero,gp,80001db0 <fail_bltu>

80001b8c <test_8plus1c_bltu>:
80001b8c:	fe20eee3          	bltu	ra,sp,80001b88 <test_8plus18_bltu>

80001b90 <bltu_test_9>:
80001b90:	00900193          	li	gp,9
80001b94:	00000213          	li	tp,0

80001b98 <test_9plus8_bltu>:
80001b98:	f00000b7          	lui	ra,0xf0000
80001b9c:	f0000137          	lui	sp,0xf0000
80001ba0:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001ba4:	2020e663          	bltu	ra,sp,80001db0 <fail_bltu>
80001ba8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001bac:	00200293          	li	t0,2
80001bb0:	fe5214e3          	bne	tp,t0,80001b98 <test_9plus8_bltu>

80001bb4 <bltu_test_10>:
80001bb4:	00a00193          	li	gp,10
80001bb8:	00000213          	li	tp,0

80001bbc <test_10plus8_bltu>:
80001bbc:	f00000b7          	lui	ra,0xf0000
80001bc0:	f0000137          	lui	sp,0xf0000
80001bc4:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001bc8:	00000013          	nop
80001bcc:	1e20e263          	bltu	ra,sp,80001db0 <fail_bltu>
80001bd0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001bd4:	00200293          	li	t0,2
80001bd8:	fe5212e3          	bne	tp,t0,80001bbc <test_10plus8_bltu>

80001bdc <bltu_test_11>:
80001bdc:	00b00193          	li	gp,11
80001be0:	00000213          	li	tp,0

80001be4 <test_11plus8_bltu>:
80001be4:	f00000b7          	lui	ra,0xf0000
80001be8:	f0000137          	lui	sp,0xf0000
80001bec:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001bf0:	00000013          	nop
80001bf4:	00000013          	nop
80001bf8:	1a20ec63          	bltu	ra,sp,80001db0 <fail_bltu>
80001bfc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001c00:	00200293          	li	t0,2
80001c04:	fe5210e3          	bne	tp,t0,80001be4 <test_11plus8_bltu>

80001c08 <bltu_test_12>:
80001c08:	00c00193          	li	gp,12
80001c0c:	00000213          	li	tp,0

80001c10 <test_12plus8_bltu>:
80001c10:	f00000b7          	lui	ra,0xf0000
80001c14:	00000013          	nop
80001c18:	f0000137          	lui	sp,0xf0000
80001c1c:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001c20:	1820e863          	bltu	ra,sp,80001db0 <fail_bltu>
80001c24:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001c28:	00200293          	li	t0,2
80001c2c:	fe5212e3          	bne	tp,t0,80001c10 <test_12plus8_bltu>

80001c30 <bltu_test_13>:
80001c30:	00d00193          	li	gp,13
80001c34:	00000213          	li	tp,0

80001c38 <test_13plus8_bltu>:
80001c38:	f00000b7          	lui	ra,0xf0000
80001c3c:	00000013          	nop
80001c40:	f0000137          	lui	sp,0xf0000
80001c44:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001c48:	00000013          	nop
80001c4c:	1620e263          	bltu	ra,sp,80001db0 <fail_bltu>
80001c50:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001c54:	00200293          	li	t0,2
80001c58:	fe5210e3          	bne	tp,t0,80001c38 <test_13plus8_bltu>

80001c5c <bltu_test_14>:
80001c5c:	00e00193          	li	gp,14
80001c60:	00000213          	li	tp,0

80001c64 <test_14plus8_bltu>:
80001c64:	f00000b7          	lui	ra,0xf0000
80001c68:	00000013          	nop
80001c6c:	00000013          	nop
80001c70:	f0000137          	lui	sp,0xf0000
80001c74:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001c78:	1220ec63          	bltu	ra,sp,80001db0 <fail_bltu>
80001c7c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001c80:	00200293          	li	t0,2
80001c84:	fe5210e3          	bne	tp,t0,80001c64 <test_14plus8_bltu>

80001c88 <bltu_test_15>:
80001c88:	00f00193          	li	gp,15
80001c8c:	00000213          	li	tp,0

80001c90 <test_15plus8_bltu>:
80001c90:	f00000b7          	lui	ra,0xf0000
80001c94:	f0000137          	lui	sp,0xf0000
80001c98:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001c9c:	1020ea63          	bltu	ra,sp,80001db0 <fail_bltu>
80001ca0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001ca4:	00200293          	li	t0,2
80001ca8:	fe5214e3          	bne	tp,t0,80001c90 <test_15plus8_bltu>

80001cac <bltu_test_16>:
80001cac:	01000193          	li	gp,16
80001cb0:	00000213          	li	tp,0

80001cb4 <test_16plus8_bltu>:
80001cb4:	f00000b7          	lui	ra,0xf0000
80001cb8:	f0000137          	lui	sp,0xf0000
80001cbc:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001cc0:	00000013          	nop
80001cc4:	0e20e663          	bltu	ra,sp,80001db0 <fail_bltu>
80001cc8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001ccc:	00200293          	li	t0,2
80001cd0:	fe5212e3          	bne	tp,t0,80001cb4 <test_16plus8_bltu>

80001cd4 <bltu_test_17>:
80001cd4:	01100193          	li	gp,17
80001cd8:	00000213          	li	tp,0

80001cdc <test_17plus8_bltu>:
80001cdc:	f00000b7          	lui	ra,0xf0000
80001ce0:	f0000137          	lui	sp,0xf0000
80001ce4:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001ce8:	00000013          	nop
80001cec:	00000013          	nop
80001cf0:	0c20e063          	bltu	ra,sp,80001db0 <fail_bltu>
80001cf4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001cf8:	00200293          	li	t0,2
80001cfc:	fe5210e3          	bne	tp,t0,80001cdc <test_17plus8_bltu>

80001d00 <bltu_test_18>:
80001d00:	01200193          	li	gp,18
80001d04:	00000213          	li	tp,0

80001d08 <test_18plus8_bltu>:
80001d08:	f00000b7          	lui	ra,0xf0000
80001d0c:	00000013          	nop
80001d10:	f0000137          	lui	sp,0xf0000
80001d14:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001d18:	0820ec63          	bltu	ra,sp,80001db0 <fail_bltu>
80001d1c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001d20:	00200293          	li	t0,2
80001d24:	fe5212e3          	bne	tp,t0,80001d08 <test_18plus8_bltu>

80001d28 <bltu_test_19>:
80001d28:	01300193          	li	gp,19
80001d2c:	00000213          	li	tp,0

80001d30 <test_19plus8_bltu>:
80001d30:	f00000b7          	lui	ra,0xf0000
80001d34:	00000013          	nop
80001d38:	f0000137          	lui	sp,0xf0000
80001d3c:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001d40:	00000013          	nop
80001d44:	0620e663          	bltu	ra,sp,80001db0 <fail_bltu>
80001d48:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001d4c:	00200293          	li	t0,2
80001d50:	fe5210e3          	bne	tp,t0,80001d30 <test_19plus8_bltu>

80001d54 <bltu_test_20>:
80001d54:	01400193          	li	gp,20
80001d58:	00000213          	li	tp,0

80001d5c <test_20plus8_bltu>:
80001d5c:	f00000b7          	lui	ra,0xf0000
80001d60:	00000013          	nop
80001d64:	00000013          	nop
80001d68:	f0000137          	lui	sp,0xf0000
80001d6c:	fff10113          	addi	sp,sp,-1 # efffffff <__stack_top+0x6ffec003>
80001d70:	0420e063          	bltu	ra,sp,80001db0 <fail_bltu>
80001d74:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001d78:	00200293          	li	t0,2
80001d7c:	fe5210e3          	bne	tp,t0,80001d5c <test_20plus8_bltu>

80001d80 <bltu_test_21>:
80001d80:	01500193          	li	gp,21
80001d84:	00100093          	li	ra,1
80001d88:	00106a63          	bltu	zero,ra,80001d9c <test_21plus1c_bltu>
80001d8c:	00108093          	addi	ra,ra,1 # f0000001 <__stack_top+0x6ffec005>
80001d90:	00108093          	addi	ra,ra,1
80001d94:	00108093          	addi	ra,ra,1
80001d98:	00108093          	addi	ra,ra,1

80001d9c <test_21plus1c_bltu>:
80001d9c:	00108093          	addi	ra,ra,1
80001da0:	00108093          	addi	ra,ra,1
80001da4:	00300393          	li	t2,3
80001da8:	00709463          	bne	ra,t2,80001db0 <fail_bltu>
80001dac:	00c0006f          	j	80001db8 <pass_bltu>

80001db0 <fail_bltu>:
80001db0:	04d00893          	li	a7,77
80001db4:	ffdff06f          	j	80001db0 <fail_bltu>

80001db8 <pass_bltu>:
80001db8:	04200893          	li	a7,66

80001dbc <bne_test_2>:
80001dbc:	00200193          	li	gp,2
80001dc0:	00000093          	li	ra,0
80001dc4:	00100113          	li	sp,1
80001dc8:	00209663          	bne	ra,sp,80001dd4 <test_2plus18_bne>
80001dcc:	2a301a63          	bne	zero,gp,80002080 <fail_bne>

80001dd0 <test_2plus14_bne>:
80001dd0:	00301663          	bne	zero,gp,80001ddc <bne_test_3>

80001dd4 <test_2plus18_bne>:
80001dd4:	fe209ee3          	bne	ra,sp,80001dd0 <test_2plus14_bne>
80001dd8:	2a301463          	bne	zero,gp,80002080 <fail_bne>

80001ddc <bne_test_3>:
80001ddc:	00300193          	li	gp,3
80001de0:	00100093          	li	ra,1
80001de4:	00000113          	li	sp,0
80001de8:	00209663          	bne	ra,sp,80001df4 <test_3plus18_bne>
80001dec:	28301a63          	bne	zero,gp,80002080 <fail_bne>

80001df0 <test_3plus14_bne>:
80001df0:	00301663          	bne	zero,gp,80001dfc <bne_test_4>

80001df4 <test_3plus18_bne>:
80001df4:	fe209ee3          	bne	ra,sp,80001df0 <test_3plus14_bne>
80001df8:	28301463          	bne	zero,gp,80002080 <fail_bne>

80001dfc <bne_test_4>:
80001dfc:	00400193          	li	gp,4
80001e00:	fff00093          	li	ra,-1
80001e04:	00100113          	li	sp,1
80001e08:	00209663          	bne	ra,sp,80001e14 <test_4plus18_bne>
80001e0c:	26301a63          	bne	zero,gp,80002080 <fail_bne>

80001e10 <test_4plus14_bne>:
80001e10:	00301663          	bne	zero,gp,80001e1c <bne_test_5>

80001e14 <test_4plus18_bne>:
80001e14:	fe209ee3          	bne	ra,sp,80001e10 <test_4plus14_bne>
80001e18:	26301463          	bne	zero,gp,80002080 <fail_bne>

80001e1c <bne_test_5>:
80001e1c:	00500193          	li	gp,5
80001e20:	00100093          	li	ra,1
80001e24:	fff00113          	li	sp,-1
80001e28:	00209663          	bne	ra,sp,80001e34 <test_5plus18_bne>
80001e2c:	24301a63          	bne	zero,gp,80002080 <fail_bne>

80001e30 <test_5plus14_bne>:
80001e30:	00301663          	bne	zero,gp,80001e3c <bne_test_6>

80001e34 <test_5plus18_bne>:
80001e34:	fe209ee3          	bne	ra,sp,80001e30 <test_5plus14_bne>
80001e38:	24301463          	bne	zero,gp,80002080 <fail_bne>

80001e3c <bne_test_6>:
80001e3c:	00600193          	li	gp,6
80001e40:	00000093          	li	ra,0
80001e44:	00000113          	li	sp,0
80001e48:	00209463          	bne	ra,sp,80001e50 <test_6plus14_bne>
80001e4c:	00301463          	bne	zero,gp,80001e54 <test_6plus18_bne>

80001e50 <test_6plus14_bne>:
80001e50:	22301863          	bne	zero,gp,80002080 <fail_bne>

80001e54 <test_6plus18_bne>:
80001e54:	fe209ee3          	bne	ra,sp,80001e50 <test_6plus14_bne>

80001e58 <bne_test_7>:
80001e58:	00700193          	li	gp,7
80001e5c:	00100093          	li	ra,1
80001e60:	00100113          	li	sp,1
80001e64:	00209463          	bne	ra,sp,80001e6c <test_7plus14_bne>
80001e68:	00301463          	bne	zero,gp,80001e70 <test_7plus18_bne>

80001e6c <test_7plus14_bne>:
80001e6c:	20301a63          	bne	zero,gp,80002080 <fail_bne>

80001e70 <test_7plus18_bne>:
80001e70:	fe209ee3          	bne	ra,sp,80001e6c <test_7plus14_bne>

80001e74 <bne_test_8>:
80001e74:	00800193          	li	gp,8
80001e78:	fff00093          	li	ra,-1
80001e7c:	fff00113          	li	sp,-1
80001e80:	00209463          	bne	ra,sp,80001e88 <test_8plus14_bne>
80001e84:	00301463          	bne	zero,gp,80001e8c <test_8plus18_bne>

80001e88 <test_8plus14_bne>:
80001e88:	1e301c63          	bne	zero,gp,80002080 <fail_bne>

80001e8c <test_8plus18_bne>:
80001e8c:	fe209ee3          	bne	ra,sp,80001e88 <test_8plus14_bne>

80001e90 <bne_test_9>:
80001e90:	00900193          	li	gp,9
80001e94:	00000213          	li	tp,0

80001e98 <test_9plus8_bne>:
80001e98:	00000093          	li	ra,0
80001e9c:	00000113          	li	sp,0
80001ea0:	1e209063          	bne	ra,sp,80002080 <fail_bne>
80001ea4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001ea8:	00200293          	li	t0,2
80001eac:	fe5216e3          	bne	tp,t0,80001e98 <test_9plus8_bne>

80001eb0 <bne_test_10>:
80001eb0:	00a00193          	li	gp,10
80001eb4:	00000213          	li	tp,0

80001eb8 <test_10plus8_bne>:
80001eb8:	00000093          	li	ra,0
80001ebc:	00000113          	li	sp,0
80001ec0:	00000013          	nop
80001ec4:	1a209e63          	bne	ra,sp,80002080 <fail_bne>
80001ec8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001ecc:	00200293          	li	t0,2
80001ed0:	fe5214e3          	bne	tp,t0,80001eb8 <test_10plus8_bne>

80001ed4 <bne_test_11>:
80001ed4:	00b00193          	li	gp,11
80001ed8:	00000213          	li	tp,0

80001edc <test_11plus8_bne>:
80001edc:	00000093          	li	ra,0
80001ee0:	00000113          	li	sp,0
80001ee4:	00000013          	nop
80001ee8:	00000013          	nop
80001eec:	18209a63          	bne	ra,sp,80002080 <fail_bne>
80001ef0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001ef4:	00200293          	li	t0,2
80001ef8:	fe5212e3          	bne	tp,t0,80001edc <test_11plus8_bne>

80001efc <bne_test_12>:
80001efc:	00c00193          	li	gp,12
80001f00:	00000213          	li	tp,0

80001f04 <test_12plus8_bne>:
80001f04:	00000093          	li	ra,0
80001f08:	00000013          	nop
80001f0c:	00000113          	li	sp,0
80001f10:	16209863          	bne	ra,sp,80002080 <fail_bne>
80001f14:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001f18:	00200293          	li	t0,2
80001f1c:	fe5214e3          	bne	tp,t0,80001f04 <test_12plus8_bne>

80001f20 <bne_test_13>:
80001f20:	00d00193          	li	gp,13
80001f24:	00000213          	li	tp,0

80001f28 <test_13plus8_bne>:
80001f28:	00000093          	li	ra,0
80001f2c:	00000013          	nop
80001f30:	00000113          	li	sp,0
80001f34:	00000013          	nop
80001f38:	14209463          	bne	ra,sp,80002080 <fail_bne>
80001f3c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001f40:	00200293          	li	t0,2
80001f44:	fe5212e3          	bne	tp,t0,80001f28 <test_13plus8_bne>

80001f48 <bne_test_14>:
80001f48:	00e00193          	li	gp,14
80001f4c:	00000213          	li	tp,0

80001f50 <test_14plus8_bne>:
80001f50:	00000093          	li	ra,0
80001f54:	00000013          	nop
80001f58:	00000013          	nop
80001f5c:	00000113          	li	sp,0
80001f60:	12209063          	bne	ra,sp,80002080 <fail_bne>
80001f64:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001f68:	00200293          	li	t0,2
80001f6c:	fe5212e3          	bne	tp,t0,80001f50 <test_14plus8_bne>

80001f70 <bne_test_15>:
80001f70:	00f00193          	li	gp,15
80001f74:	00000213          	li	tp,0

80001f78 <test_15plus8_bne>:
80001f78:	00000093          	li	ra,0
80001f7c:	00000113          	li	sp,0
80001f80:	10209063          	bne	ra,sp,80002080 <fail_bne>
80001f84:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001f88:	00200293          	li	t0,2
80001f8c:	fe5216e3          	bne	tp,t0,80001f78 <test_15plus8_bne>

80001f90 <bne_test_16>:
80001f90:	01000193          	li	gp,16
80001f94:	00000213          	li	tp,0

80001f98 <test_16plus8_bne>:
80001f98:	00000093          	li	ra,0
80001f9c:	00000113          	li	sp,0
80001fa0:	00000013          	nop
80001fa4:	0c209e63          	bne	ra,sp,80002080 <fail_bne>
80001fa8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001fac:	00200293          	li	t0,2
80001fb0:	fe5214e3          	bne	tp,t0,80001f98 <test_16plus8_bne>

80001fb4 <bne_test_17>:
80001fb4:	01100193          	li	gp,17
80001fb8:	00000213          	li	tp,0

80001fbc <test_17plus8_bne>:
80001fbc:	00000093          	li	ra,0
80001fc0:	00000113          	li	sp,0
80001fc4:	00000013          	nop
80001fc8:	00000013          	nop
80001fcc:	0a209a63          	bne	ra,sp,80002080 <fail_bne>
80001fd0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001fd4:	00200293          	li	t0,2
80001fd8:	fe5212e3          	bne	tp,t0,80001fbc <test_17plus8_bne>

80001fdc <bne_test_18>:
80001fdc:	01200193          	li	gp,18
80001fe0:	00000213          	li	tp,0

80001fe4 <test_18plus8_bne>:
80001fe4:	00000093          	li	ra,0
80001fe8:	00000013          	nop
80001fec:	00000113          	li	sp,0
80001ff0:	08209863          	bne	ra,sp,80002080 <fail_bne>
80001ff4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80001ff8:	00200293          	li	t0,2
80001ffc:	fe5214e3          	bne	tp,t0,80001fe4 <test_18plus8_bne>

80002000 <bne_test_19>:
80002000:	01300193          	li	gp,19
80002004:	00000213          	li	tp,0

80002008 <test_19plus8_bne>:
80002008:	00000093          	li	ra,0
8000200c:	00000013          	nop
80002010:	00000113          	li	sp,0
80002014:	00000013          	nop
80002018:	06209463          	bne	ra,sp,80002080 <fail_bne>
8000201c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80002020:	00200293          	li	t0,2
80002024:	fe5212e3          	bne	tp,t0,80002008 <test_19plus8_bne>

80002028 <bne_test_20>:
80002028:	01400193          	li	gp,20
8000202c:	00000213          	li	tp,0

80002030 <test_20plus8_bne>:
80002030:	00000093          	li	ra,0
80002034:	00000013          	nop
80002038:	00000013          	nop
8000203c:	00000113          	li	sp,0
80002040:	04209063          	bne	ra,sp,80002080 <fail_bne>
80002044:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80002048:	00200293          	li	t0,2
8000204c:	fe5212e3          	bne	tp,t0,80002030 <test_20plus8_bne>

80002050 <bne_test_21>:
80002050:	01500193          	li	gp,21
80002054:	00100093          	li	ra,1
80002058:	00009a63          	bnez	ra,8000206c <test_21plus1c_bne>
8000205c:	00108093          	addi	ra,ra,1
80002060:	00108093          	addi	ra,ra,1
80002064:	00108093          	addi	ra,ra,1
80002068:	00108093          	addi	ra,ra,1

8000206c <test_21plus1c_bne>:
8000206c:	00108093          	addi	ra,ra,1
80002070:	00108093          	addi	ra,ra,1
80002074:	00300393          	li	t2,3
80002078:	00709463          	bne	ra,t2,80002080 <fail_bne>
8000207c:	00c0006f          	j	80002088 <pass_bne>

80002080 <fail_bne>:
80002080:	04d00893          	li	a7,77
80002084:	ffdff06f          	j	80002080 <fail_bne>

80002088 <pass_bne>:
80002088:	04200893          	li	a7,66

8000208c <jal_test_2>:
8000208c:	00200193          	li	gp,2
80002090:	00000093          	li	ra,0
80002094:	0100026f          	jal	tp,800020a4 <target_2>
80002098:	00000013          	nop
8000209c:	00000013          	nop
800020a0:	0400006f          	j	800020e0 <fail_jal>

800020a4 <target_2>:
800020a4:	00000117          	auipc	sp,0x0
800020a8:	ff410113          	addi	sp,sp,-12 # 80002098 <jal_test_2+0xc>
800020ac:	02411a63          	bne	sp,tp,800020e0 <fail_jal>

800020b0 <jal_test_3>:
800020b0:	00300193          	li	gp,3
800020b4:	00100093          	li	ra,1
800020b8:	0140006f          	j	800020cc <test_3plus1c_jal>
800020bc:	00108093          	addi	ra,ra,1
800020c0:	00108093          	addi	ra,ra,1
800020c4:	00108093          	addi	ra,ra,1
800020c8:	00108093          	addi	ra,ra,1

800020cc <test_3plus1c_jal>:
800020cc:	00108093          	addi	ra,ra,1
800020d0:	00108093          	addi	ra,ra,1
800020d4:	00300393          	li	t2,3
800020d8:	00709463          	bne	ra,t2,800020e0 <fail_jal>
800020dc:	00c0006f          	j	800020e8 <pass_jal>

800020e0 <fail_jal>:
800020e0:	04d00893          	li	a7,77
800020e4:	ffdff06f          	j	800020e0 <fail_jal>

800020e8 <pass_jal>:
800020e8:	04200893          	li	a7,66

800020ec <jalr_test_2>:
800020ec:	00200193          	li	gp,2
800020f0:	00000293          	li	t0,0
800020f4:	00000317          	auipc	t1,0x0
800020f8:	01030313          	addi	t1,t1,16 # 80002104 <jalr_test_2+0x18>
800020fc:	000302e7          	jalr	t0,t1
80002100:	0e00006f          	j	800021e0 <fail_jalr>
80002104:	00000317          	auipc	t1,0x0
80002108:	ffc30313          	addi	t1,t1,-4 # 80002100 <jalr_test_2+0x14>
8000210c:	0c629a63          	bne	t0,t1,800021e0 <fail_jalr>

80002110 <jalr_test_3>:
80002110:	00300193          	li	gp,3
80002114:	00000297          	auipc	t0,0x0
80002118:	01028293          	addi	t0,t0,16 # 80002124 <jalr_test_3+0x14>
8000211c:	000282e7          	jalr	t0,t0
80002120:	0c00006f          	j	800021e0 <fail_jalr>
80002124:	00000317          	auipc	t1,0x0
80002128:	ffc30313          	addi	t1,t1,-4 # 80002120 <jalr_test_3+0x10>
8000212c:	0a629a63          	bne	t0,t1,800021e0 <fail_jalr>

80002130 <jalr_test_4>:
80002130:	00400193          	li	gp,4
80002134:	00000213          	li	tp,0

80002138 <test_4plus8_jalr>:
80002138:	00000317          	auipc	t1,0x0
8000213c:	01030313          	addi	t1,t1,16 # 80002148 <test_4plus8_jalr+0x10>
80002140:	000306e7          	jalr	a3,t1
80002144:	08301e63          	bne	zero,gp,800021e0 <fail_jalr>
80002148:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000214c:	00200293          	li	t0,2
80002150:	fe5214e3          	bne	tp,t0,80002138 <test_4plus8_jalr>

80002154 <jalr_test_5>:
80002154:	00500193          	li	gp,5
80002158:	00000213          	li	tp,0

8000215c <test_5plus8_jalr>:
8000215c:	00000317          	auipc	t1,0x0
80002160:	01430313          	addi	t1,t1,20 # 80002170 <test_5plus8_jalr+0x14>
80002164:	00000013          	nop
80002168:	000306e7          	jalr	a3,t1
8000216c:	06301a63          	bne	zero,gp,800021e0 <fail_jalr>
80002170:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80002174:	00200293          	li	t0,2
80002178:	fe5212e3          	bne	tp,t0,8000215c <test_5plus8_jalr>

8000217c <jalr_test_6>:
8000217c:	00600193          	li	gp,6
80002180:	00000213          	li	tp,0

80002184 <test_6plus8_jalr>:
80002184:	00000317          	auipc	t1,0x0
80002188:	01830313          	addi	t1,t1,24 # 8000219c <test_6plus8_jalr+0x18>
8000218c:	00000013          	nop
80002190:	00000013          	nop
80002194:	000306e7          	jalr	a3,t1
80002198:	04301463          	bne	zero,gp,800021e0 <fail_jalr>
8000219c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800021a0:	00200293          	li	t0,2
800021a4:	fe5210e3          	bne	tp,t0,80002184 <test_6plus8_jalr>

800021a8 <jalr_test_7>:
800021a8:	00700193          	li	gp,7
800021ac:	00100293          	li	t0,1
800021b0:	00000317          	auipc	t1,0x0
800021b4:	01c30313          	addi	t1,t1,28 # 800021cc <jalr_test_7+0x24>
800021b8:	ffc30067          	jr	-4(t1)
800021bc:	00128293          	addi	t0,t0,1
800021c0:	00128293          	addi	t0,t0,1
800021c4:	00128293          	addi	t0,t0,1
800021c8:	00128293          	addi	t0,t0,1
800021cc:	00128293          	addi	t0,t0,1
800021d0:	00128293          	addi	t0,t0,1
800021d4:	00400393          	li	t2,4
800021d8:	00729463          	bne	t0,t2,800021e0 <fail_jalr>
800021dc:	00c0006f          	j	800021e8 <pass_jalr>

800021e0 <fail_jalr>:
800021e0:	04d00893          	li	a7,77
800021e4:	ffdff06f          	j	800021e0 <fail_jalr>

800021e8 <pass_jalr>:
800021e8:	04200893          	li	a7,66

800021ec <lb_test_2>:
800021ec:	00200193          	li	gp,2
800021f0:	fff00793          	li	a5,-1
800021f4:	0000e117          	auipc	sp,0xe
800021f8:	e0c10113          	addi	sp,sp,-500 # 80010000 <begin_signature_lb>
800021fc:	00010703          	lb	a4,0(sp)
80002200:	fff00393          	li	t2,-1
80002204:	24771a63          	bne	a4,t2,80002458 <fail_lb>

80002208 <lb_test_3>:
80002208:	00300193          	li	gp,3
8000220c:	00000793          	li	a5,0
80002210:	0000e117          	auipc	sp,0xe
80002214:	df010113          	addi	sp,sp,-528 # 80010000 <begin_signature_lb>
80002218:	00110703          	lb	a4,1(sp)
8000221c:	00000393          	li	t2,0
80002220:	22771c63          	bne	a4,t2,80002458 <fail_lb>

80002224 <lb_test_4>:
80002224:	00400193          	li	gp,4
80002228:	ff000793          	li	a5,-16
8000222c:	0000e117          	auipc	sp,0xe
80002230:	dd410113          	addi	sp,sp,-556 # 80010000 <begin_signature_lb>
80002234:	00210703          	lb	a4,2(sp)
80002238:	ff000393          	li	t2,-16
8000223c:	20771e63          	bne	a4,t2,80002458 <fail_lb>

80002240 <lb_test_5>:
80002240:	00500193          	li	gp,5
80002244:	00f00793          	li	a5,15
80002248:	0000e117          	auipc	sp,0xe
8000224c:	db810113          	addi	sp,sp,-584 # 80010000 <begin_signature_lb>
80002250:	00310703          	lb	a4,3(sp)
80002254:	00f00393          	li	t2,15
80002258:	20771063          	bne	a4,t2,80002458 <fail_lb>

8000225c <lb_test_6>:
8000225c:	00600193          	li	gp,6
80002260:	fff00793          	li	a5,-1
80002264:	0000e117          	auipc	sp,0xe
80002268:	d9f10113          	addi	sp,sp,-609 # 80010003 <tdat4_lb>
8000226c:	ffd10703          	lb	a4,-3(sp)
80002270:	fff00393          	li	t2,-1
80002274:	1e771263          	bne	a4,t2,80002458 <fail_lb>

80002278 <lb_test_7>:
80002278:	00700193          	li	gp,7
8000227c:	00000793          	li	a5,0
80002280:	0000e117          	auipc	sp,0xe
80002284:	d8310113          	addi	sp,sp,-637 # 80010003 <tdat4_lb>
80002288:	ffe10703          	lb	a4,-2(sp)
8000228c:	00000393          	li	t2,0
80002290:	1c771463          	bne	a4,t2,80002458 <fail_lb>

80002294 <lb_test_8>:
80002294:	00800193          	li	gp,8
80002298:	ff000793          	li	a5,-16
8000229c:	0000e117          	auipc	sp,0xe
800022a0:	d6710113          	addi	sp,sp,-665 # 80010003 <tdat4_lb>
800022a4:	fff10703          	lb	a4,-1(sp)
800022a8:	ff000393          	li	t2,-16
800022ac:	1a771663          	bne	a4,t2,80002458 <fail_lb>

800022b0 <lb_test_9>:
800022b0:	00900193          	li	gp,9
800022b4:	00f00793          	li	a5,15
800022b8:	0000e117          	auipc	sp,0xe
800022bc:	d4b10113          	addi	sp,sp,-693 # 80010003 <tdat4_lb>
800022c0:	00010703          	lb	a4,0(sp)
800022c4:	00f00393          	li	t2,15
800022c8:	18771863          	bne	a4,t2,80002458 <fail_lb>

800022cc <lb_test_10>:
800022cc:	00a00193          	li	gp,10
800022d0:	0000e097          	auipc	ra,0xe
800022d4:	d3008093          	addi	ra,ra,-720 # 80010000 <begin_signature_lb>
800022d8:	fe008093          	addi	ra,ra,-32
800022dc:	02008283          	lb	t0,32(ra)
800022e0:	fff00393          	li	t2,-1
800022e4:	16729a63          	bne	t0,t2,80002458 <fail_lb>

800022e8 <lb_test_11>:
800022e8:	00b00193          	li	gp,11
800022ec:	0000e097          	auipc	ra,0xe
800022f0:	d1408093          	addi	ra,ra,-748 # 80010000 <begin_signature_lb>
800022f4:	ffa08093          	addi	ra,ra,-6
800022f8:	00708283          	lb	t0,7(ra)
800022fc:	00000393          	li	t2,0
80002300:	14729c63          	bne	t0,t2,80002458 <fail_lb>

80002304 <lb_test_12>:
80002304:	00c00193          	li	gp,12
80002308:	00000213          	li	tp,0

8000230c <test_12plus8_lb>:
8000230c:	0000e697          	auipc	a3,0xe
80002310:	cf568693          	addi	a3,a3,-779 # 80010001 <tdat2_lb>
80002314:	00168703          	lb	a4,1(a3)
80002318:	00070313          	mv	t1,a4
8000231c:	ff000393          	li	t2,-16
80002320:	12731c63          	bne	t1,t2,80002458 <fail_lb>
80002324:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80002328:	00200293          	li	t0,2
8000232c:	fe5210e3          	bne	tp,t0,8000230c <test_12plus8_lb>

80002330 <lb_test_13>:
80002330:	00d00193          	li	gp,13
80002334:	00000213          	li	tp,0

80002338 <test_13plus8_lb>:
80002338:	0000e697          	auipc	a3,0xe
8000233c:	cca68693          	addi	a3,a3,-822 # 80010002 <tdat3_lb>
80002340:	00168703          	lb	a4,1(a3)
80002344:	00000013          	nop
80002348:	00070313          	mv	t1,a4
8000234c:	00f00393          	li	t2,15
80002350:	10731463          	bne	t1,t2,80002458 <fail_lb>
80002354:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80002358:	00200293          	li	t0,2
8000235c:	fc521ee3          	bne	tp,t0,80002338 <test_13plus8_lb>

80002360 <lb_test_14>:
80002360:	00e00193          	li	gp,14
80002364:	00000213          	li	tp,0

80002368 <test_14plus8_lb>:
80002368:	0000e697          	auipc	a3,0xe
8000236c:	c9868693          	addi	a3,a3,-872 # 80010000 <begin_signature_lb>
80002370:	00168703          	lb	a4,1(a3)
80002374:	00000013          	nop
80002378:	00000013          	nop
8000237c:	00070313          	mv	t1,a4
80002380:	00000393          	li	t2,0
80002384:	0c731a63          	bne	t1,t2,80002458 <fail_lb>
80002388:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000238c:	00200293          	li	t0,2
80002390:	fc521ce3          	bne	tp,t0,80002368 <test_14plus8_lb>

80002394 <lb_test_15>:
80002394:	00f00193          	li	gp,15
80002398:	00000213          	li	tp,0

8000239c <test_15plus8_lb>:
8000239c:	0000e697          	auipc	a3,0xe
800023a0:	c6568693          	addi	a3,a3,-923 # 80010001 <tdat2_lb>
800023a4:	00168703          	lb	a4,1(a3)
800023a8:	ff000393          	li	t2,-16
800023ac:	0a771663          	bne	a4,t2,80002458 <fail_lb>
800023b0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800023b4:	00200293          	li	t0,2
800023b8:	fe5212e3          	bne	tp,t0,8000239c <test_15plus8_lb>

800023bc <lb_test_16>:
800023bc:	01000193          	li	gp,16
800023c0:	00000213          	li	tp,0

800023c4 <test_16plus8_lb>:
800023c4:	0000e697          	auipc	a3,0xe
800023c8:	c3e68693          	addi	a3,a3,-962 # 80010002 <tdat3_lb>
800023cc:	00000013          	nop
800023d0:	00168703          	lb	a4,1(a3)
800023d4:	00f00393          	li	t2,15
800023d8:	08771063          	bne	a4,t2,80002458 <fail_lb>
800023dc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800023e0:	00200293          	li	t0,2
800023e4:	fe5210e3          	bne	tp,t0,800023c4 <test_16plus8_lb>

800023e8 <lb_test_17>:
800023e8:	01100193          	li	gp,17
800023ec:	00000213          	li	tp,0

800023f0 <test_17plus8_lb>:
800023f0:	0000e697          	auipc	a3,0xe
800023f4:	c1068693          	addi	a3,a3,-1008 # 80010000 <begin_signature_lb>
800023f8:	00000013          	nop
800023fc:	00000013          	nop
80002400:	00168703          	lb	a4,1(a3)
80002404:	00000393          	li	t2,0
80002408:	04771863          	bne	a4,t2,80002458 <fail_lb>
8000240c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80002410:	00200293          	li	t0,2
80002414:	fc521ee3          	bne	tp,t0,800023f0 <test_17plus8_lb>

80002418 <lb_test_18>:
80002418:	01200193          	li	gp,18
8000241c:	0000e297          	auipc	t0,0xe
80002420:	be428293          	addi	t0,t0,-1052 # 80010000 <begin_signature_lb>
80002424:	00028103          	lb	sp,0(t0)
80002428:	00200113          	li	sp,2
8000242c:	00200393          	li	t2,2
80002430:	02711463          	bne	sp,t2,80002458 <fail_lb>

80002434 <lb_test_19>:
80002434:	01300193          	li	gp,19
80002438:	0000e297          	auipc	t0,0xe
8000243c:	bc828293          	addi	t0,t0,-1080 # 80010000 <begin_signature_lb>
80002440:	00028103          	lb	sp,0(t0)
80002444:	00000013          	nop
80002448:	00200113          	li	sp,2
8000244c:	00200393          	li	t2,2
80002450:	00711463          	bne	sp,t2,80002458 <fail_lb>
80002454:	00c0006f          	j	80002460 <pass_lb>

80002458 <fail_lb>:
80002458:	04d00893          	li	a7,77
8000245c:	ffdff06f          	j	80002458 <fail_lb>

80002460 <pass_lb>:
80002460:	04200893          	li	a7,66

80002464 <lbu_test_2>:
80002464:	00200193          	li	gp,2
80002468:	0ff00793          	li	a5,255
8000246c:	0000e117          	auipc	sp,0xe
80002470:	b9410113          	addi	sp,sp,-1132 # 80010000 <begin_signature_lb>
80002474:	00014703          	lbu	a4,0(sp)
80002478:	0ff00393          	li	t2,255
8000247c:	24771a63          	bne	a4,t2,800026d0 <fail_lbu>

80002480 <lbu_test_3>:
80002480:	00300193          	li	gp,3
80002484:	00000793          	li	a5,0
80002488:	0000e117          	auipc	sp,0xe
8000248c:	b7810113          	addi	sp,sp,-1160 # 80010000 <begin_signature_lb>
80002490:	00114703          	lbu	a4,1(sp)
80002494:	00000393          	li	t2,0
80002498:	22771c63          	bne	a4,t2,800026d0 <fail_lbu>

8000249c <lbu_test_4>:
8000249c:	00400193          	li	gp,4
800024a0:	0f000793          	li	a5,240
800024a4:	0000e117          	auipc	sp,0xe
800024a8:	b5c10113          	addi	sp,sp,-1188 # 80010000 <begin_signature_lb>
800024ac:	00214703          	lbu	a4,2(sp)
800024b0:	0f000393          	li	t2,240
800024b4:	20771e63          	bne	a4,t2,800026d0 <fail_lbu>

800024b8 <lbu_test_5>:
800024b8:	00500193          	li	gp,5
800024bc:	00f00793          	li	a5,15
800024c0:	0000e117          	auipc	sp,0xe
800024c4:	b4010113          	addi	sp,sp,-1216 # 80010000 <begin_signature_lb>
800024c8:	00314703          	lbu	a4,3(sp)
800024cc:	00f00393          	li	t2,15
800024d0:	20771063          	bne	a4,t2,800026d0 <fail_lbu>

800024d4 <lbu_test_6>:
800024d4:	00600193          	li	gp,6
800024d8:	0ff00793          	li	a5,255
800024dc:	0000e117          	auipc	sp,0xe
800024e0:	b2710113          	addi	sp,sp,-1241 # 80010003 <tdat4_lb>
800024e4:	ffd14703          	lbu	a4,-3(sp)
800024e8:	0ff00393          	li	t2,255
800024ec:	1e771263          	bne	a4,t2,800026d0 <fail_lbu>

800024f0 <lbu_test_7>:
800024f0:	00700193          	li	gp,7
800024f4:	00000793          	li	a5,0
800024f8:	0000e117          	auipc	sp,0xe
800024fc:	b0b10113          	addi	sp,sp,-1269 # 80010003 <tdat4_lb>
80002500:	ffe14703          	lbu	a4,-2(sp)
80002504:	00000393          	li	t2,0
80002508:	1c771463          	bne	a4,t2,800026d0 <fail_lbu>

8000250c <lbu_test_8>:
8000250c:	00800193          	li	gp,8
80002510:	0f000793          	li	a5,240
80002514:	0000e117          	auipc	sp,0xe
80002518:	aef10113          	addi	sp,sp,-1297 # 80010003 <tdat4_lb>
8000251c:	fff14703          	lbu	a4,-1(sp)
80002520:	0f000393          	li	t2,240
80002524:	1a771663          	bne	a4,t2,800026d0 <fail_lbu>

80002528 <lbu_test_9>:
80002528:	00900193          	li	gp,9
8000252c:	00f00793          	li	a5,15
80002530:	0000e117          	auipc	sp,0xe
80002534:	ad310113          	addi	sp,sp,-1325 # 80010003 <tdat4_lb>
80002538:	00014703          	lbu	a4,0(sp)
8000253c:	00f00393          	li	t2,15
80002540:	18771863          	bne	a4,t2,800026d0 <fail_lbu>

80002544 <lbu_test_10>:
80002544:	00a00193          	li	gp,10
80002548:	0000e097          	auipc	ra,0xe
8000254c:	ab808093          	addi	ra,ra,-1352 # 80010000 <begin_signature_lb>
80002550:	fe008093          	addi	ra,ra,-32
80002554:	0200c283          	lbu	t0,32(ra)
80002558:	0ff00393          	li	t2,255
8000255c:	16729a63          	bne	t0,t2,800026d0 <fail_lbu>

80002560 <lbu_test_11>:
80002560:	00b00193          	li	gp,11
80002564:	0000e097          	auipc	ra,0xe
80002568:	a9c08093          	addi	ra,ra,-1380 # 80010000 <begin_signature_lb>
8000256c:	ffa08093          	addi	ra,ra,-6
80002570:	0070c283          	lbu	t0,7(ra)
80002574:	00000393          	li	t2,0
80002578:	14729c63          	bne	t0,t2,800026d0 <fail_lbu>

8000257c <lbu_test_12>:
8000257c:	00c00193          	li	gp,12
80002580:	00000213          	li	tp,0

80002584 <test_12plus8_lbu>:
80002584:	0000e697          	auipc	a3,0xe
80002588:	a7d68693          	addi	a3,a3,-1411 # 80010001 <tdat2_lb>
8000258c:	0016c703          	lbu	a4,1(a3)
80002590:	00070313          	mv	t1,a4
80002594:	0f000393          	li	t2,240
80002598:	12731c63          	bne	t1,t2,800026d0 <fail_lbu>
8000259c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800025a0:	00200293          	li	t0,2
800025a4:	fe5210e3          	bne	tp,t0,80002584 <test_12plus8_lbu>

800025a8 <lbu_test_13>:
800025a8:	00d00193          	li	gp,13
800025ac:	00000213          	li	tp,0

800025b0 <test_13plus8_lbu>:
800025b0:	0000e697          	auipc	a3,0xe
800025b4:	a5268693          	addi	a3,a3,-1454 # 80010002 <tdat3_lb>
800025b8:	0016c703          	lbu	a4,1(a3)
800025bc:	00000013          	nop
800025c0:	00070313          	mv	t1,a4
800025c4:	00f00393          	li	t2,15
800025c8:	10731463          	bne	t1,t2,800026d0 <fail_lbu>
800025cc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800025d0:	00200293          	li	t0,2
800025d4:	fc521ee3          	bne	tp,t0,800025b0 <test_13plus8_lbu>

800025d8 <lbu_test_14>:
800025d8:	00e00193          	li	gp,14
800025dc:	00000213          	li	tp,0

800025e0 <test_14plus8_lbu>:
800025e0:	0000e697          	auipc	a3,0xe
800025e4:	a2068693          	addi	a3,a3,-1504 # 80010000 <begin_signature_lb>
800025e8:	0016c703          	lbu	a4,1(a3)
800025ec:	00000013          	nop
800025f0:	00000013          	nop
800025f4:	00070313          	mv	t1,a4
800025f8:	00000393          	li	t2,0
800025fc:	0c731a63          	bne	t1,t2,800026d0 <fail_lbu>
80002600:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80002604:	00200293          	li	t0,2
80002608:	fc521ce3          	bne	tp,t0,800025e0 <test_14plus8_lbu>

8000260c <lbu_test_15>:
8000260c:	00f00193          	li	gp,15
80002610:	00000213          	li	tp,0

80002614 <test_15plus8_lbu>:
80002614:	0000e697          	auipc	a3,0xe
80002618:	9ed68693          	addi	a3,a3,-1555 # 80010001 <tdat2_lb>
8000261c:	0016c703          	lbu	a4,1(a3)
80002620:	0f000393          	li	t2,240
80002624:	0a771663          	bne	a4,t2,800026d0 <fail_lbu>
80002628:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000262c:	00200293          	li	t0,2
80002630:	fe5212e3          	bne	tp,t0,80002614 <test_15plus8_lbu>

80002634 <lbu_test_16>:
80002634:	01000193          	li	gp,16
80002638:	00000213          	li	tp,0

8000263c <test_16plus8_lbu>:
8000263c:	0000e697          	auipc	a3,0xe
80002640:	9c668693          	addi	a3,a3,-1594 # 80010002 <tdat3_lb>
80002644:	00000013          	nop
80002648:	0016c703          	lbu	a4,1(a3)
8000264c:	00f00393          	li	t2,15
80002650:	08771063          	bne	a4,t2,800026d0 <fail_lbu>
80002654:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80002658:	00200293          	li	t0,2
8000265c:	fe5210e3          	bne	tp,t0,8000263c <test_16plus8_lbu>

80002660 <lbu_test_17>:
80002660:	01100193          	li	gp,17
80002664:	00000213          	li	tp,0

80002668 <test_17plus8_lbu>:
80002668:	0000e697          	auipc	a3,0xe
8000266c:	99868693          	addi	a3,a3,-1640 # 80010000 <begin_signature_lb>
80002670:	00000013          	nop
80002674:	00000013          	nop
80002678:	0016c703          	lbu	a4,1(a3)
8000267c:	00000393          	li	t2,0
80002680:	04771863          	bne	a4,t2,800026d0 <fail_lbu>
80002684:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80002688:	00200293          	li	t0,2
8000268c:	fc521ee3          	bne	tp,t0,80002668 <test_17plus8_lbu>

80002690 <lbu_test_18>:
80002690:	01200193          	li	gp,18
80002694:	0000e297          	auipc	t0,0xe
80002698:	96c28293          	addi	t0,t0,-1684 # 80010000 <begin_signature_lb>
8000269c:	0002c103          	lbu	sp,0(t0)
800026a0:	00200113          	li	sp,2
800026a4:	00200393          	li	t2,2
800026a8:	02711463          	bne	sp,t2,800026d0 <fail_lbu>

800026ac <lbu_test_19>:
800026ac:	01300193          	li	gp,19
800026b0:	0000e297          	auipc	t0,0xe
800026b4:	95028293          	addi	t0,t0,-1712 # 80010000 <begin_signature_lb>
800026b8:	0002c103          	lbu	sp,0(t0)
800026bc:	00000013          	nop
800026c0:	00200113          	li	sp,2
800026c4:	00200393          	li	t2,2
800026c8:	00711463          	bne	sp,t2,800026d0 <fail_lbu>
800026cc:	00c0006f          	j	800026d8 <pass_lbu>

800026d0 <fail_lbu>:
800026d0:	04d00893          	li	a7,77
800026d4:	ffdff06f          	j	800026d0 <fail_lbu>

800026d8 <pass_lbu>:
800026d8:	04200893          	li	a7,66

800026dc <ld_st_test_2>:
800026dc:	00200193          	li	gp,2
800026e0:	0000e117          	auipc	sp,0xe
800026e4:	93010113          	addi	sp,sp,-1744 # 80010010 <begin_signature_ldst>
800026e8:	fdd00093          	li	ra,-35
800026ec:	00110023          	sb	ra,0(sp)
800026f0:	00010703          	lb	a4,0(sp)
800026f4:	00e10023          	sb	a4,0(sp)
800026f8:	00010103          	lb	sp,0(sp)
800026fc:	fdd00393          	li	t2,-35
80002700:	647114e3          	bne	sp,t2,80003548 <fail_ld_st>
80002704:	0000e117          	auipc	sp,0xe
80002708:	90c10113          	addi	sp,sp,-1780 # 80010010 <begin_signature_ldst>
8000270c:	00212423          	sw	sp,8(sp)
80002710:	00812203          	lw	tp,8(sp)
80002714:	00120023          	sb	ra,0(tp) # 0 <_size_rom-0x8d10>
80002718:	622218e3          	bne	tp,sp,80003548 <fail_ld_st>
8000271c:	00020703          	lb	a4,0(tp) # 0 <_size_rom-0x8d10>
80002720:	627714e3          	bne	a4,t2,80003548 <fail_ld_st>

80002724 <ld_st_test_3>:
80002724:	00300193          	li	gp,3
80002728:	0000e117          	auipc	sp,0xe
8000272c:	8e810113          	addi	sp,sp,-1816 # 80010010 <begin_signature_ldst>
80002730:	fcd00093          	li	ra,-51
80002734:	001100a3          	sb	ra,1(sp)
80002738:	00110703          	lb	a4,1(sp)
8000273c:	00e100a3          	sb	a4,1(sp)
80002740:	00110103          	lb	sp,1(sp)
80002744:	fcd00393          	li	t2,-51
80002748:	607110e3          	bne	sp,t2,80003548 <fail_ld_st>
8000274c:	0000e117          	auipc	sp,0xe
80002750:	8c410113          	addi	sp,sp,-1852 # 80010010 <begin_signature_ldst>
80002754:	00212423          	sw	sp,8(sp)
80002758:	00812203          	lw	tp,8(sp)
8000275c:	001200a3          	sb	ra,1(tp) # 1 <_size_rom-0x8d0f>
80002760:	5e2214e3          	bne	tp,sp,80003548 <fail_ld_st>
80002764:	00120703          	lb	a4,1(tp) # 1 <_size_rom-0x8d0f>
80002768:	5e7710e3          	bne	a4,t2,80003548 <fail_ld_st>

8000276c <ld_st_test_4>:
8000276c:	00400193          	li	gp,4
80002770:	0000e117          	auipc	sp,0xe
80002774:	8a010113          	addi	sp,sp,-1888 # 80010010 <begin_signature_ldst>
80002778:	fcc00093          	li	ra,-52
8000277c:	00110123          	sb	ra,2(sp)
80002780:	00210703          	lb	a4,2(sp)
80002784:	00e10123          	sb	a4,2(sp)
80002788:	00210103          	lb	sp,2(sp)
8000278c:	fcc00393          	li	t2,-52
80002790:	5a711ce3          	bne	sp,t2,80003548 <fail_ld_st>
80002794:	0000e117          	auipc	sp,0xe
80002798:	87c10113          	addi	sp,sp,-1924 # 80010010 <begin_signature_ldst>
8000279c:	00212423          	sw	sp,8(sp)
800027a0:	00812203          	lw	tp,8(sp)
800027a4:	00120123          	sb	ra,2(tp) # 2 <_size_rom-0x8d0e>
800027a8:	5a2210e3          	bne	tp,sp,80003548 <fail_ld_st>
800027ac:	00220703          	lb	a4,2(tp) # 2 <_size_rom-0x8d0e>
800027b0:	58771ce3          	bne	a4,t2,80003548 <fail_ld_st>

800027b4 <ld_st_test_5>:
800027b4:	00500193          	li	gp,5
800027b8:	0000e117          	auipc	sp,0xe
800027bc:	85810113          	addi	sp,sp,-1960 # 80010010 <begin_signature_ldst>
800027c0:	fbc00093          	li	ra,-68
800027c4:	001101a3          	sb	ra,3(sp)
800027c8:	00310703          	lb	a4,3(sp)
800027cc:	00e101a3          	sb	a4,3(sp)
800027d0:	00310103          	lb	sp,3(sp)
800027d4:	fbc00393          	li	t2,-68
800027d8:	567118e3          	bne	sp,t2,80003548 <fail_ld_st>
800027dc:	0000e117          	auipc	sp,0xe
800027e0:	83410113          	addi	sp,sp,-1996 # 80010010 <begin_signature_ldst>
800027e4:	00212423          	sw	sp,8(sp)
800027e8:	00812203          	lw	tp,8(sp)
800027ec:	001201a3          	sb	ra,3(tp) # 3 <_size_rom-0x8d0d>
800027f0:	54221ce3          	bne	tp,sp,80003548 <fail_ld_st>
800027f4:	00320703          	lb	a4,3(tp) # 3 <_size_rom-0x8d0d>
800027f8:	547718e3          	bne	a4,t2,80003548 <fail_ld_st>

800027fc <ld_st_test_6>:
800027fc:	00600193          	li	gp,6
80002800:	0000e117          	auipc	sp,0xe
80002804:	81010113          	addi	sp,sp,-2032 # 80010010 <begin_signature_ldst>
80002808:	fbb00093          	li	ra,-69
8000280c:	00110223          	sb	ra,4(sp)
80002810:	00410703          	lb	a4,4(sp)
80002814:	00e10223          	sb	a4,4(sp)
80002818:	00410103          	lb	sp,4(sp)
8000281c:	fbb00393          	li	t2,-69
80002820:	527114e3          	bne	sp,t2,80003548 <fail_ld_st>
80002824:	0000d117          	auipc	sp,0xd
80002828:	7ec10113          	addi	sp,sp,2028 # 80010010 <begin_signature_ldst>
8000282c:	00212423          	sw	sp,8(sp)
80002830:	00812203          	lw	tp,8(sp)
80002834:	00120223          	sb	ra,4(tp) # 4 <_size_rom-0x8d0c>
80002838:	502218e3          	bne	tp,sp,80003548 <fail_ld_st>
8000283c:	00420703          	lb	a4,4(tp) # 4 <_size_rom-0x8d0c>
80002840:	507714e3          	bne	a4,t2,80003548 <fail_ld_st>

80002844 <ld_st_test_7>:
80002844:	00700193          	li	gp,7
80002848:	0000d117          	auipc	sp,0xd
8000284c:	7c810113          	addi	sp,sp,1992 # 80010010 <begin_signature_ldst>
80002850:	fab00093          	li	ra,-85
80002854:	001102a3          	sb	ra,5(sp)
80002858:	00510703          	lb	a4,5(sp)
8000285c:	00e102a3          	sb	a4,5(sp)
80002860:	00510103          	lb	sp,5(sp)
80002864:	fab00393          	li	t2,-85
80002868:	4e7110e3          	bne	sp,t2,80003548 <fail_ld_st>
8000286c:	0000d117          	auipc	sp,0xd
80002870:	7a410113          	addi	sp,sp,1956 # 80010010 <begin_signature_ldst>
80002874:	00212423          	sw	sp,8(sp)
80002878:	00812203          	lw	tp,8(sp)
8000287c:	001202a3          	sb	ra,5(tp) # 5 <_size_rom-0x8d0b>
80002880:	4c2214e3          	bne	tp,sp,80003548 <fail_ld_st>
80002884:	00520703          	lb	a4,5(tp) # 5 <_size_rom-0x8d0b>
80002888:	4c7710e3          	bne	a4,t2,80003548 <fail_ld_st>

8000288c <ld_st_test_8>:
8000288c:	00800193          	li	gp,8
80002890:	0000d117          	auipc	sp,0xd
80002894:	78010113          	addi	sp,sp,1920 # 80010010 <begin_signature_ldst>
80002898:	03300093          	li	ra,51
8000289c:	00110023          	sb	ra,0(sp)
800028a0:	00010703          	lb	a4,0(sp)
800028a4:	00e10023          	sb	a4,0(sp)
800028a8:	00010103          	lb	sp,0(sp)
800028ac:	03300393          	li	t2,51
800028b0:	48711ce3          	bne	sp,t2,80003548 <fail_ld_st>
800028b4:	0000d117          	auipc	sp,0xd
800028b8:	75c10113          	addi	sp,sp,1884 # 80010010 <begin_signature_ldst>
800028bc:	00212423          	sw	sp,8(sp)
800028c0:	00812203          	lw	tp,8(sp)
800028c4:	00120023          	sb	ra,0(tp) # 0 <_size_rom-0x8d10>
800028c8:	482210e3          	bne	tp,sp,80003548 <fail_ld_st>
800028cc:	00020703          	lb	a4,0(tp) # 0 <_size_rom-0x8d10>
800028d0:	46771ce3          	bne	a4,t2,80003548 <fail_ld_st>

800028d4 <ld_st_test_9>:
800028d4:	00900193          	li	gp,9
800028d8:	0000d117          	auipc	sp,0xd
800028dc:	73810113          	addi	sp,sp,1848 # 80010010 <begin_signature_ldst>
800028e0:	02300093          	li	ra,35
800028e4:	001100a3          	sb	ra,1(sp)
800028e8:	00110703          	lb	a4,1(sp)
800028ec:	00e100a3          	sb	a4,1(sp)
800028f0:	00110103          	lb	sp,1(sp)
800028f4:	02300393          	li	t2,35
800028f8:	447118e3          	bne	sp,t2,80003548 <fail_ld_st>
800028fc:	0000d117          	auipc	sp,0xd
80002900:	71410113          	addi	sp,sp,1812 # 80010010 <begin_signature_ldst>
80002904:	00212423          	sw	sp,8(sp)
80002908:	00812203          	lw	tp,8(sp)
8000290c:	001200a3          	sb	ra,1(tp) # 1 <_size_rom-0x8d0f>
80002910:	42221ce3          	bne	tp,sp,80003548 <fail_ld_st>
80002914:	00120703          	lb	a4,1(tp) # 1 <_size_rom-0x8d0f>
80002918:	427718e3          	bne	a4,t2,80003548 <fail_ld_st>

8000291c <ld_st_test_10>:
8000291c:	00a00193          	li	gp,10
80002920:	0000d117          	auipc	sp,0xd
80002924:	6f010113          	addi	sp,sp,1776 # 80010010 <begin_signature_ldst>
80002928:	02200093          	li	ra,34
8000292c:	00110123          	sb	ra,2(sp)
80002930:	00210703          	lb	a4,2(sp)
80002934:	00e10123          	sb	a4,2(sp)
80002938:	00210103          	lb	sp,2(sp)
8000293c:	02200393          	li	t2,34
80002940:	407114e3          	bne	sp,t2,80003548 <fail_ld_st>
80002944:	0000d117          	auipc	sp,0xd
80002948:	6cc10113          	addi	sp,sp,1740 # 80010010 <begin_signature_ldst>
8000294c:	00212423          	sw	sp,8(sp)
80002950:	00812203          	lw	tp,8(sp)
80002954:	00120123          	sb	ra,2(tp) # 2 <_size_rom-0x8d0e>
80002958:	3e2218e3          	bne	tp,sp,80003548 <fail_ld_st>
8000295c:	00220703          	lb	a4,2(tp) # 2 <_size_rom-0x8d0e>
80002960:	3e7714e3          	bne	a4,t2,80003548 <fail_ld_st>

80002964 <ld_st_test_11>:
80002964:	00b00193          	li	gp,11
80002968:	0000d117          	auipc	sp,0xd
8000296c:	6a810113          	addi	sp,sp,1704 # 80010010 <begin_signature_ldst>
80002970:	01200093          	li	ra,18
80002974:	001101a3          	sb	ra,3(sp)
80002978:	00310703          	lb	a4,3(sp)
8000297c:	00e101a3          	sb	a4,3(sp)
80002980:	00310103          	lb	sp,3(sp)
80002984:	01200393          	li	t2,18
80002988:	3c7110e3          	bne	sp,t2,80003548 <fail_ld_st>
8000298c:	0000d117          	auipc	sp,0xd
80002990:	68410113          	addi	sp,sp,1668 # 80010010 <begin_signature_ldst>
80002994:	00212423          	sw	sp,8(sp)
80002998:	00812203          	lw	tp,8(sp)
8000299c:	001201a3          	sb	ra,3(tp) # 3 <_size_rom-0x8d0d>
800029a0:	3a2214e3          	bne	tp,sp,80003548 <fail_ld_st>
800029a4:	00320703          	lb	a4,3(tp) # 3 <_size_rom-0x8d0d>
800029a8:	3a7710e3          	bne	a4,t2,80003548 <fail_ld_st>

800029ac <ld_st_test_12>:
800029ac:	00c00193          	li	gp,12
800029b0:	0000d117          	auipc	sp,0xd
800029b4:	66010113          	addi	sp,sp,1632 # 80010010 <begin_signature_ldst>
800029b8:	01100093          	li	ra,17
800029bc:	00110223          	sb	ra,4(sp)
800029c0:	00410703          	lb	a4,4(sp)
800029c4:	00e10223          	sb	a4,4(sp)
800029c8:	00410103          	lb	sp,4(sp)
800029cc:	01100393          	li	t2,17
800029d0:	36711ce3          	bne	sp,t2,80003548 <fail_ld_st>
800029d4:	0000d117          	auipc	sp,0xd
800029d8:	63c10113          	addi	sp,sp,1596 # 80010010 <begin_signature_ldst>
800029dc:	00212423          	sw	sp,8(sp)
800029e0:	00812203          	lw	tp,8(sp)
800029e4:	00120223          	sb	ra,4(tp) # 4 <_size_rom-0x8d0c>
800029e8:	362210e3          	bne	tp,sp,80003548 <fail_ld_st>
800029ec:	00420703          	lb	a4,4(tp) # 4 <_size_rom-0x8d0c>
800029f0:	34771ce3          	bne	a4,t2,80003548 <fail_ld_st>

800029f4 <ld_st_test_13>:
800029f4:	00d00193          	li	gp,13
800029f8:	0000d117          	auipc	sp,0xd
800029fc:	61810113          	addi	sp,sp,1560 # 80010010 <begin_signature_ldst>
80002a00:	00100093          	li	ra,1
80002a04:	001102a3          	sb	ra,5(sp)
80002a08:	00510703          	lb	a4,5(sp)
80002a0c:	00e102a3          	sb	a4,5(sp)
80002a10:	00510103          	lb	sp,5(sp)
80002a14:	00100393          	li	t2,1
80002a18:	327118e3          	bne	sp,t2,80003548 <fail_ld_st>
80002a1c:	0000d117          	auipc	sp,0xd
80002a20:	5f410113          	addi	sp,sp,1524 # 80010010 <begin_signature_ldst>
80002a24:	00212423          	sw	sp,8(sp)
80002a28:	00812203          	lw	tp,8(sp)
80002a2c:	001202a3          	sb	ra,5(tp) # 5 <_size_rom-0x8d0b>
80002a30:	30221ce3          	bne	tp,sp,80003548 <fail_ld_st>
80002a34:	00520703          	lb	a4,5(tp) # 5 <_size_rom-0x8d0b>
80002a38:	307718e3          	bne	a4,t2,80003548 <fail_ld_st>

80002a3c <ld_st_test_14>:
80002a3c:	00e00193          	li	gp,14
80002a40:	0000d117          	auipc	sp,0xd
80002a44:	5d010113          	addi	sp,sp,1488 # 80010010 <begin_signature_ldst>
80002a48:	03300093          	li	ra,51
80002a4c:	00110023          	sb	ra,0(sp)
80002a50:	00014703          	lbu	a4,0(sp)
80002a54:	00e10023          	sb	a4,0(sp)
80002a58:	00014103          	lbu	sp,0(sp)
80002a5c:	03300393          	li	t2,51
80002a60:	2e7114e3          	bne	sp,t2,80003548 <fail_ld_st>
80002a64:	0000d117          	auipc	sp,0xd
80002a68:	5ac10113          	addi	sp,sp,1452 # 80010010 <begin_signature_ldst>
80002a6c:	00212423          	sw	sp,8(sp)
80002a70:	00812203          	lw	tp,8(sp)
80002a74:	00120023          	sb	ra,0(tp) # 0 <_size_rom-0x8d10>
80002a78:	2c2218e3          	bne	tp,sp,80003548 <fail_ld_st>
80002a7c:	00024703          	lbu	a4,0(tp) # 0 <_size_rom-0x8d10>
80002a80:	2c7714e3          	bne	a4,t2,80003548 <fail_ld_st>

80002a84 <ld_st_test_15>:
80002a84:	00f00193          	li	gp,15
80002a88:	0000d117          	auipc	sp,0xd
80002a8c:	58810113          	addi	sp,sp,1416 # 80010010 <begin_signature_ldst>
80002a90:	02300093          	li	ra,35
80002a94:	001100a3          	sb	ra,1(sp)
80002a98:	00114703          	lbu	a4,1(sp)
80002a9c:	00e100a3          	sb	a4,1(sp)
80002aa0:	00114103          	lbu	sp,1(sp)
80002aa4:	02300393          	li	t2,35
80002aa8:	2a7110e3          	bne	sp,t2,80003548 <fail_ld_st>
80002aac:	0000d117          	auipc	sp,0xd
80002ab0:	56410113          	addi	sp,sp,1380 # 80010010 <begin_signature_ldst>
80002ab4:	00212423          	sw	sp,8(sp)
80002ab8:	00812203          	lw	tp,8(sp)
80002abc:	001200a3          	sb	ra,1(tp) # 1 <_size_rom-0x8d0f>
80002ac0:	282214e3          	bne	tp,sp,80003548 <fail_ld_st>
80002ac4:	00124703          	lbu	a4,1(tp) # 1 <_size_rom-0x8d0f>
80002ac8:	287710e3          	bne	a4,t2,80003548 <fail_ld_st>

80002acc <ld_st_test_16>:
80002acc:	01000193          	li	gp,16
80002ad0:	0000d117          	auipc	sp,0xd
80002ad4:	54010113          	addi	sp,sp,1344 # 80010010 <begin_signature_ldst>
80002ad8:	02200093          	li	ra,34
80002adc:	00110123          	sb	ra,2(sp)
80002ae0:	00214703          	lbu	a4,2(sp)
80002ae4:	00e10123          	sb	a4,2(sp)
80002ae8:	00214103          	lbu	sp,2(sp)
80002aec:	02200393          	li	t2,34
80002af0:	24711ce3          	bne	sp,t2,80003548 <fail_ld_st>
80002af4:	0000d117          	auipc	sp,0xd
80002af8:	51c10113          	addi	sp,sp,1308 # 80010010 <begin_signature_ldst>
80002afc:	00212423          	sw	sp,8(sp)
80002b00:	00812203          	lw	tp,8(sp)
80002b04:	00120123          	sb	ra,2(tp) # 2 <_size_rom-0x8d0e>
80002b08:	242210e3          	bne	tp,sp,80003548 <fail_ld_st>
80002b0c:	00224703          	lbu	a4,2(tp) # 2 <_size_rom-0x8d0e>
80002b10:	22771ce3          	bne	a4,t2,80003548 <fail_ld_st>

80002b14 <ld_st_test_17>:
80002b14:	01100193          	li	gp,17
80002b18:	0000d117          	auipc	sp,0xd
80002b1c:	4f810113          	addi	sp,sp,1272 # 80010010 <begin_signature_ldst>
80002b20:	01200093          	li	ra,18
80002b24:	001101a3          	sb	ra,3(sp)
80002b28:	00314703          	lbu	a4,3(sp)
80002b2c:	00e101a3          	sb	a4,3(sp)
80002b30:	00314103          	lbu	sp,3(sp)
80002b34:	01200393          	li	t2,18
80002b38:	207118e3          	bne	sp,t2,80003548 <fail_ld_st>
80002b3c:	0000d117          	auipc	sp,0xd
80002b40:	4d410113          	addi	sp,sp,1236 # 80010010 <begin_signature_ldst>
80002b44:	00212423          	sw	sp,8(sp)
80002b48:	00812203          	lw	tp,8(sp)
80002b4c:	001201a3          	sb	ra,3(tp) # 3 <_size_rom-0x8d0d>
80002b50:	1e221ce3          	bne	tp,sp,80003548 <fail_ld_st>
80002b54:	00324703          	lbu	a4,3(tp) # 3 <_size_rom-0x8d0d>
80002b58:	1e7718e3          	bne	a4,t2,80003548 <fail_ld_st>

80002b5c <ld_st_test_18>:
80002b5c:	01200193          	li	gp,18
80002b60:	0000d117          	auipc	sp,0xd
80002b64:	4b010113          	addi	sp,sp,1200 # 80010010 <begin_signature_ldst>
80002b68:	01100093          	li	ra,17
80002b6c:	00110223          	sb	ra,4(sp)
80002b70:	00414703          	lbu	a4,4(sp)
80002b74:	00e10223          	sb	a4,4(sp)
80002b78:	00414103          	lbu	sp,4(sp)
80002b7c:	01100393          	li	t2,17
80002b80:	1c7114e3          	bne	sp,t2,80003548 <fail_ld_st>
80002b84:	0000d117          	auipc	sp,0xd
80002b88:	48c10113          	addi	sp,sp,1164 # 80010010 <begin_signature_ldst>
80002b8c:	00212423          	sw	sp,8(sp)
80002b90:	00812203          	lw	tp,8(sp)
80002b94:	00120223          	sb	ra,4(tp) # 4 <_size_rom-0x8d0c>
80002b98:	1a2218e3          	bne	tp,sp,80003548 <fail_ld_st>
80002b9c:	00424703          	lbu	a4,4(tp) # 4 <_size_rom-0x8d0c>
80002ba0:	1a7714e3          	bne	a4,t2,80003548 <fail_ld_st>

80002ba4 <ld_st_test_19>:
80002ba4:	01300193          	li	gp,19
80002ba8:	0000d117          	auipc	sp,0xd
80002bac:	46810113          	addi	sp,sp,1128 # 80010010 <begin_signature_ldst>
80002bb0:	00100093          	li	ra,1
80002bb4:	001102a3          	sb	ra,5(sp)
80002bb8:	00514703          	lbu	a4,5(sp)
80002bbc:	00e102a3          	sb	a4,5(sp)
80002bc0:	00514103          	lbu	sp,5(sp)
80002bc4:	00100393          	li	t2,1
80002bc8:	187110e3          	bne	sp,t2,80003548 <fail_ld_st>
80002bcc:	0000d117          	auipc	sp,0xd
80002bd0:	44410113          	addi	sp,sp,1092 # 80010010 <begin_signature_ldst>
80002bd4:	00212423          	sw	sp,8(sp)
80002bd8:	00812203          	lw	tp,8(sp)
80002bdc:	001202a3          	sb	ra,5(tp) # 5 <_size_rom-0x8d0b>
80002be0:	162214e3          	bne	tp,sp,80003548 <fail_ld_st>
80002be4:	00524703          	lbu	a4,5(tp) # 5 <_size_rom-0x8d0b>
80002be8:	167710e3          	bne	a4,t2,80003548 <fail_ld_st>

80002bec <ld_st_test_20>:
80002bec:	01400193          	li	gp,20
80002bf0:	0000d117          	auipc	sp,0xd
80002bf4:	42010113          	addi	sp,sp,1056 # 80010010 <begin_signature_ldst>
80002bf8:	aabbd0b7          	lui	ra,0xaabbd
80002bfc:	cdd08093          	addi	ra,ra,-803 # aabbccdd <__stack_top+0x2aba8ce1>
80002c00:	00112023          	sw	ra,0(sp)
80002c04:	00012703          	lw	a4,0(sp)
80002c08:	00e12023          	sw	a4,0(sp)
80002c0c:	00012103          	lw	sp,0(sp)
80002c10:	aabbd3b7          	lui	t2,0xaabbd
80002c14:	cdd38393          	addi	t2,t2,-803 # aabbccdd <__stack_top+0x2aba8ce1>
80002c18:	127118e3          	bne	sp,t2,80003548 <fail_ld_st>
80002c1c:	0000d117          	auipc	sp,0xd
80002c20:	3f410113          	addi	sp,sp,1012 # 80010010 <begin_signature_ldst>
80002c24:	00212423          	sw	sp,8(sp)
80002c28:	00812203          	lw	tp,8(sp)
80002c2c:	00122023          	sw	ra,0(tp) # 0 <_size_rom-0x8d10>
80002c30:	10221ce3          	bne	tp,sp,80003548 <fail_ld_st>
80002c34:	00022703          	lw	a4,0(tp) # 0 <_size_rom-0x8d10>
80002c38:	107718e3          	bne	a4,t2,80003548 <fail_ld_st>

80002c3c <ld_st_test_21>:
80002c3c:	01500193          	li	gp,21
80002c40:	0000d117          	auipc	sp,0xd
80002c44:	3d010113          	addi	sp,sp,976 # 80010010 <begin_signature_ldst>
80002c48:	daabc0b7          	lui	ra,0xdaabc
80002c4c:	ccd08093          	addi	ra,ra,-819 # daabbccd <__stack_top+0x5aaa7cd1>
80002c50:	00112223          	sw	ra,4(sp)
80002c54:	00412703          	lw	a4,4(sp)
80002c58:	00e12223          	sw	a4,4(sp)
80002c5c:	00412103          	lw	sp,4(sp)
80002c60:	daabc3b7          	lui	t2,0xdaabc
80002c64:	ccd38393          	addi	t2,t2,-819 # daabbccd <__stack_top+0x5aaa7cd1>
80002c68:	0e7110e3          	bne	sp,t2,80003548 <fail_ld_st>
80002c6c:	0000d117          	auipc	sp,0xd
80002c70:	3a410113          	addi	sp,sp,932 # 80010010 <begin_signature_ldst>
80002c74:	00212423          	sw	sp,8(sp)
80002c78:	00812203          	lw	tp,8(sp)
80002c7c:	00122223          	sw	ra,4(tp) # 4 <_size_rom-0x8d0c>
80002c80:	0c2214e3          	bne	tp,sp,80003548 <fail_ld_st>
80002c84:	00422703          	lw	a4,4(tp) # 4 <_size_rom-0x8d0c>
80002c88:	0c7710e3          	bne	a4,t2,80003548 <fail_ld_st>

80002c8c <ld_st_test_22>:
80002c8c:	01600193          	li	gp,22
80002c90:	0000d117          	auipc	sp,0xd
80002c94:	38010113          	addi	sp,sp,896 # 80010010 <begin_signature_ldst>
80002c98:	ddaac0b7          	lui	ra,0xddaac
80002c9c:	bcc08093          	addi	ra,ra,-1076 # ddaabbcc <__stack_top+0x5da97bd0>
80002ca0:	00112423          	sw	ra,8(sp)
80002ca4:	00812703          	lw	a4,8(sp)
80002ca8:	00e12423          	sw	a4,8(sp)
80002cac:	00812103          	lw	sp,8(sp)
80002cb0:	ddaac3b7          	lui	t2,0xddaac
80002cb4:	bcc38393          	addi	t2,t2,-1076 # ddaabbcc <__stack_top+0x5da97bd0>
80002cb8:	087118e3          	bne	sp,t2,80003548 <fail_ld_st>
80002cbc:	0000d117          	auipc	sp,0xd
80002cc0:	35410113          	addi	sp,sp,852 # 80010010 <begin_signature_ldst>
80002cc4:	00212423          	sw	sp,8(sp)
80002cc8:	00812203          	lw	tp,8(sp)
80002ccc:	00122423          	sw	ra,8(tp) # 8 <_size_rom-0x8d08>
80002cd0:	06221ce3          	bne	tp,sp,80003548 <fail_ld_st>
80002cd4:	00822703          	lw	a4,8(tp) # 8 <_size_rom-0x8d08>
80002cd8:	067718e3          	bne	a4,t2,80003548 <fail_ld_st>

80002cdc <ld_st_test_23>:
80002cdc:	01700193          	li	gp,23
80002ce0:	0000d117          	auipc	sp,0xd
80002ce4:	33010113          	addi	sp,sp,816 # 80010010 <begin_signature_ldst>
80002ce8:	cddab0b7          	lui	ra,0xcddab
80002cec:	bbc08093          	addi	ra,ra,-1092 # cddaabbc <__stack_top+0x4dd96bc0>
80002cf0:	00112623          	sw	ra,12(sp)
80002cf4:	00c12703          	lw	a4,12(sp)
80002cf8:	00e12623          	sw	a4,12(sp)
80002cfc:	00c12103          	lw	sp,12(sp)
80002d00:	cddab3b7          	lui	t2,0xcddab
80002d04:	bbc38393          	addi	t2,t2,-1092 # cddaabbc <__stack_top+0x4dd96bc0>
80002d08:	047110e3          	bne	sp,t2,80003548 <fail_ld_st>
80002d0c:	0000d117          	auipc	sp,0xd
80002d10:	30410113          	addi	sp,sp,772 # 80010010 <begin_signature_ldst>
80002d14:	00212423          	sw	sp,8(sp)
80002d18:	00812203          	lw	tp,8(sp)
80002d1c:	00122623          	sw	ra,12(tp) # c <_size_rom-0x8d04>
80002d20:	022214e3          	bne	tp,sp,80003548 <fail_ld_st>
80002d24:	00c22703          	lw	a4,12(tp) # c <_size_rom-0x8d04>
80002d28:	027710e3          	bne	a4,t2,80003548 <fail_ld_st>

80002d2c <ld_st_test_24>:
80002d2c:	01800193          	li	gp,24
80002d30:	0000d117          	auipc	sp,0xd
80002d34:	2e010113          	addi	sp,sp,736 # 80010010 <begin_signature_ldst>
80002d38:	ccddb0b7          	lui	ra,0xccddb
80002d3c:	abb08093          	addi	ra,ra,-1349 # ccddaabb <__stack_top+0x4cdc6abf>
80002d40:	00112823          	sw	ra,16(sp)
80002d44:	01012703          	lw	a4,16(sp)
80002d48:	00e12823          	sw	a4,16(sp)
80002d4c:	01012103          	lw	sp,16(sp)
80002d50:	ccddb3b7          	lui	t2,0xccddb
80002d54:	abb38393          	addi	t2,t2,-1349 # ccddaabb <__stack_top+0x4cdc6abf>
80002d58:	7e711863          	bne	sp,t2,80003548 <fail_ld_st>
80002d5c:	0000d117          	auipc	sp,0xd
80002d60:	2b410113          	addi	sp,sp,692 # 80010010 <begin_signature_ldst>
80002d64:	7f410113          	addi	sp,sp,2036
80002d68:	00212423          	sw	sp,8(sp)
80002d6c:	00812203          	lw	tp,8(sp)
80002d70:	00122823          	sw	ra,16(tp) # 10 <_size_rom-0x8d00>
80002d74:	7c221a63          	bne	tp,sp,80003548 <fail_ld_st>
80002d78:	01022703          	lw	a4,16(tp) # 10 <_size_rom-0x8d00>
80002d7c:	7c771663          	bne	a4,t2,80003548 <fail_ld_st>

80002d80 <ld_st_test_25>:
80002d80:	01900193          	li	gp,25
80002d84:	0000d117          	auipc	sp,0xd
80002d88:	28c10113          	addi	sp,sp,652 # 80010010 <begin_signature_ldst>
80002d8c:	bccde0b7          	lui	ra,0xbccde
80002d90:	aab08093          	addi	ra,ra,-1365 # bccddaab <__stack_top+0x3ccc9aaf>
80002d94:	00112a23          	sw	ra,20(sp)
80002d98:	01412703          	lw	a4,20(sp)
80002d9c:	00e12a23          	sw	a4,20(sp)
80002da0:	01412103          	lw	sp,20(sp)
80002da4:	bccde3b7          	lui	t2,0xbccde
80002da8:	aab38393          	addi	t2,t2,-1365 # bccddaab <__stack_top+0x3ccc9aaf>
80002dac:	78711e63          	bne	sp,t2,80003548 <fail_ld_st>
80002db0:	0000d117          	auipc	sp,0xd
80002db4:	26010113          	addi	sp,sp,608 # 80010010 <begin_signature_ldst>
80002db8:	00212423          	sw	sp,8(sp)
80002dbc:	00812203          	lw	tp,8(sp)
80002dc0:	00122a23          	sw	ra,20(tp) # 14 <_size_rom-0x8cfc>
80002dc4:	78221263          	bne	tp,sp,80003548 <fail_ld_st>
80002dc8:	01422703          	lw	a4,20(tp) # 14 <_size_rom-0x8cfc>
80002dcc:	76771e63          	bne	a4,t2,80003548 <fail_ld_st>

80002dd0 <ld_st_test_26>:
80002dd0:	01a00193          	li	gp,26
80002dd4:	0000d117          	auipc	sp,0xd
80002dd8:	23c10113          	addi	sp,sp,572 # 80010010 <begin_signature_ldst>
80002ddc:	001120b7          	lui	ra,0x112
80002de0:	23308093          	addi	ra,ra,563 # 112233 <_size_rom+0x109523>
80002de4:	00112023          	sw	ra,0(sp)
80002de8:	00012703          	lw	a4,0(sp)
80002dec:	00e12023          	sw	a4,0(sp)
80002df0:	00012103          	lw	sp,0(sp)
80002df4:	001123b7          	lui	t2,0x112
80002df8:	23338393          	addi	t2,t2,563 # 112233 <_size_rom+0x109523>
80002dfc:	74711663          	bne	sp,t2,80003548 <fail_ld_st>
80002e00:	0000d117          	auipc	sp,0xd
80002e04:	21010113          	addi	sp,sp,528 # 80010010 <begin_signature_ldst>
80002e08:	00212423          	sw	sp,8(sp)
80002e0c:	00812203          	lw	tp,8(sp)
80002e10:	00122023          	sw	ra,0(tp) # 0 <_size_rom-0x8d10>
80002e14:	72221a63          	bne	tp,sp,80003548 <fail_ld_st>
80002e18:	00022703          	lw	a4,0(tp) # 0 <_size_rom-0x8d10>
80002e1c:	72771663          	bne	a4,t2,80003548 <fail_ld_st>

80002e20 <ld_st_test_27>:
80002e20:	01b00193          	li	gp,27
80002e24:	0000d117          	auipc	sp,0xd
80002e28:	1ec10113          	addi	sp,sp,492 # 80010010 <begin_signature_ldst>
80002e2c:	300110b7          	lui	ra,0x30011
80002e30:	22308093          	addi	ra,ra,547 # 30011223 <_size_rom+0x30008513>
80002e34:	00112223          	sw	ra,4(sp)
80002e38:	00412703          	lw	a4,4(sp)
80002e3c:	00e12223          	sw	a4,4(sp)
80002e40:	00412103          	lw	sp,4(sp)
80002e44:	300113b7          	lui	t2,0x30011
80002e48:	22338393          	addi	t2,t2,547 # 30011223 <_size_rom+0x30008513>
80002e4c:	6e711e63          	bne	sp,t2,80003548 <fail_ld_st>
80002e50:	0000d117          	auipc	sp,0xd
80002e54:	1c010113          	addi	sp,sp,448 # 80010010 <begin_signature_ldst>
80002e58:	00212423          	sw	sp,8(sp)
80002e5c:	00812203          	lw	tp,8(sp)
80002e60:	00122223          	sw	ra,4(tp) # 4 <_size_rom-0x8d0c>
80002e64:	6e221263          	bne	tp,sp,80003548 <fail_ld_st>
80002e68:	00422703          	lw	a4,4(tp) # 4 <_size_rom-0x8d0c>
80002e6c:	6c771e63          	bne	a4,t2,80003548 <fail_ld_st>

80002e70 <ld_st_test_28>:
80002e70:	01c00193          	li	gp,28
80002e74:	0000d117          	auipc	sp,0xd
80002e78:	19c10113          	addi	sp,sp,412 # 80010010 <begin_signature_ldst>
80002e7c:	330010b7          	lui	ra,0x33001
80002e80:	12208093          	addi	ra,ra,290 # 33001122 <_size_rom+0x32ff8412>
80002e84:	00112423          	sw	ra,8(sp)
80002e88:	00812703          	lw	a4,8(sp)
80002e8c:	00e12423          	sw	a4,8(sp)
80002e90:	00812103          	lw	sp,8(sp)
80002e94:	330013b7          	lui	t2,0x33001
80002e98:	12238393          	addi	t2,t2,290 # 33001122 <_size_rom+0x32ff8412>
80002e9c:	6a711663          	bne	sp,t2,80003548 <fail_ld_st>
80002ea0:	0000d117          	auipc	sp,0xd
80002ea4:	17010113          	addi	sp,sp,368 # 80010010 <begin_signature_ldst>
80002ea8:	00212423          	sw	sp,8(sp)
80002eac:	00812203          	lw	tp,8(sp)
80002eb0:	00122423          	sw	ra,8(tp) # 8 <_size_rom-0x8d08>
80002eb4:	68221a63          	bne	tp,sp,80003548 <fail_ld_st>
80002eb8:	00822703          	lw	a4,8(tp) # 8 <_size_rom-0x8d08>
80002ebc:	68771663          	bne	a4,t2,80003548 <fail_ld_st>

80002ec0 <ld_st_test_29>:
80002ec0:	01d00193          	li	gp,29
80002ec4:	0000d117          	auipc	sp,0xd
80002ec8:	14c10113          	addi	sp,sp,332 # 80010010 <begin_signature_ldst>
80002ecc:	233000b7          	lui	ra,0x23300
80002ed0:	11208093          	addi	ra,ra,274 # 23300112 <_size_rom+0x232f7402>
80002ed4:	00112623          	sw	ra,12(sp)
80002ed8:	00c12703          	lw	a4,12(sp)
80002edc:	00e12623          	sw	a4,12(sp)
80002ee0:	00c12103          	lw	sp,12(sp)
80002ee4:	233003b7          	lui	t2,0x23300
80002ee8:	11238393          	addi	t2,t2,274 # 23300112 <_size_rom+0x232f7402>
80002eec:	64711e63          	bne	sp,t2,80003548 <fail_ld_st>
80002ef0:	0000d117          	auipc	sp,0xd
80002ef4:	12010113          	addi	sp,sp,288 # 80010010 <begin_signature_ldst>
80002ef8:	00212423          	sw	sp,8(sp)
80002efc:	00812203          	lw	tp,8(sp)
80002f00:	00122623          	sw	ra,12(tp) # c <_size_rom-0x8d04>
80002f04:	64221263          	bne	tp,sp,80003548 <fail_ld_st>
80002f08:	00c22703          	lw	a4,12(tp) # c <_size_rom-0x8d04>
80002f0c:	62771e63          	bne	a4,t2,80003548 <fail_ld_st>

80002f10 <ld_st_test_30>:
80002f10:	01e00193          	li	gp,30
80002f14:	0000d117          	auipc	sp,0xd
80002f18:	0fc10113          	addi	sp,sp,252 # 80010010 <begin_signature_ldst>
80002f1c:	223300b7          	lui	ra,0x22330
80002f20:	01108093          	addi	ra,ra,17 # 22330011 <_size_rom+0x22327301>
80002f24:	00112823          	sw	ra,16(sp)
80002f28:	01012703          	lw	a4,16(sp)
80002f2c:	00e12823          	sw	a4,16(sp)
80002f30:	01012103          	lw	sp,16(sp)
80002f34:	223303b7          	lui	t2,0x22330
80002f38:	01138393          	addi	t2,t2,17 # 22330011 <_size_rom+0x22327301>
80002f3c:	60711663          	bne	sp,t2,80003548 <fail_ld_st>
80002f40:	0000d117          	auipc	sp,0xd
80002f44:	0d010113          	addi	sp,sp,208 # 80010010 <begin_signature_ldst>
80002f48:	00212423          	sw	sp,8(sp)
80002f4c:	00812203          	lw	tp,8(sp)
80002f50:	00122823          	sw	ra,16(tp) # 10 <_size_rom-0x8d00>
80002f54:	5e221a63          	bne	tp,sp,80003548 <fail_ld_st>
80002f58:	01022703          	lw	a4,16(tp) # 10 <_size_rom-0x8d00>
80002f5c:	5e771663          	bne	a4,t2,80003548 <fail_ld_st>

80002f60 <ld_st_test_31>:
80002f60:	01f00193          	li	gp,31
80002f64:	0000d117          	auipc	sp,0xd
80002f68:	0ac10113          	addi	sp,sp,172 # 80010010 <begin_signature_ldst>
80002f6c:	122330b7          	lui	ra,0x12233
80002f70:	00108093          	addi	ra,ra,1 # 12233001 <_size_rom+0x1222a2f1>
80002f74:	00112a23          	sw	ra,20(sp)
80002f78:	01412703          	lw	a4,20(sp)
80002f7c:	00e12a23          	sw	a4,20(sp)
80002f80:	01412103          	lw	sp,20(sp)
80002f84:	122333b7          	lui	t2,0x12233
80002f88:	00138393          	addi	t2,t2,1 # 12233001 <_size_rom+0x1222a2f1>
80002f8c:	5a711e63          	bne	sp,t2,80003548 <fail_ld_st>
80002f90:	0000d117          	auipc	sp,0xd
80002f94:	08010113          	addi	sp,sp,128 # 80010010 <begin_signature_ldst>
80002f98:	00212423          	sw	sp,8(sp)
80002f9c:	00812203          	lw	tp,8(sp)
80002fa0:	00122a23          	sw	ra,20(tp) # 14 <_size_rom-0x8cfc>
80002fa4:	5a221263          	bne	tp,sp,80003548 <fail_ld_st>
80002fa8:	01422703          	lw	a4,20(tp) # 14 <_size_rom-0x8cfc>
80002fac:	58771e63          	bne	a4,t2,80003548 <fail_ld_st>

80002fb0 <ld_st_test_32>:
80002fb0:	02000193          	li	gp,32
80002fb4:	0000d117          	auipc	sp,0xd
80002fb8:	05c10113          	addi	sp,sp,92 # 80010010 <begin_signature_ldst>
80002fbc:	ffffd0b7          	lui	ra,0xffffd
80002fc0:	cdd08093          	addi	ra,ra,-803 # ffffccdd <__stack_top+0x7ffe8ce1>
80002fc4:	00111023          	sh	ra,0(sp)
80002fc8:	00011703          	lh	a4,0(sp)
80002fcc:	00e11023          	sh	a4,0(sp)
80002fd0:	00011103          	lh	sp,0(sp)
80002fd4:	ffffd3b7          	lui	t2,0xffffd
80002fd8:	cdd38393          	addi	t2,t2,-803 # ffffccdd <__stack_top+0x7ffe8ce1>
80002fdc:	56711663          	bne	sp,t2,80003548 <fail_ld_st>
80002fe0:	0000d117          	auipc	sp,0xd
80002fe4:	03010113          	addi	sp,sp,48 # 80010010 <begin_signature_ldst>
80002fe8:	00212423          	sw	sp,8(sp)
80002fec:	00812203          	lw	tp,8(sp)
80002ff0:	00121023          	sh	ra,0(tp) # 0 <_size_rom-0x8d10>
80002ff4:	54221a63          	bne	tp,sp,80003548 <fail_ld_st>
80002ff8:	00021703          	lh	a4,0(tp) # 0 <_size_rom-0x8d10>
80002ffc:	54771663          	bne	a4,t2,80003548 <fail_ld_st>

80003000 <ld_st_test_33>:
80003000:	02100193          	li	gp,33
80003004:	0000d117          	auipc	sp,0xd
80003008:	00c10113          	addi	sp,sp,12 # 80010010 <begin_signature_ldst>
8000300c:	ffffc0b7          	lui	ra,0xffffc
80003010:	ccd08093          	addi	ra,ra,-819 # ffffbccd <__stack_top+0x7ffe7cd1>
80003014:	00111123          	sh	ra,2(sp)
80003018:	00211703          	lh	a4,2(sp)
8000301c:	00e11123          	sh	a4,2(sp)
80003020:	00211103          	lh	sp,2(sp)
80003024:	ffffc3b7          	lui	t2,0xffffc
80003028:	ccd38393          	addi	t2,t2,-819 # ffffbccd <__stack_top+0x7ffe7cd1>
8000302c:	50711e63          	bne	sp,t2,80003548 <fail_ld_st>
80003030:	0000d117          	auipc	sp,0xd
80003034:	fe010113          	addi	sp,sp,-32 # 80010010 <begin_signature_ldst>
80003038:	00212423          	sw	sp,8(sp)
8000303c:	00812203          	lw	tp,8(sp)
80003040:	00121123          	sh	ra,2(tp) # 2 <_size_rom-0x8d0e>
80003044:	50221263          	bne	tp,sp,80003548 <fail_ld_st>
80003048:	00221703          	lh	a4,2(tp) # 2 <_size_rom-0x8d0e>
8000304c:	4e771e63          	bne	a4,t2,80003548 <fail_ld_st>

80003050 <ld_st_test_34>:
80003050:	02200193          	li	gp,34
80003054:	0000d117          	auipc	sp,0xd
80003058:	fbc10113          	addi	sp,sp,-68 # 80010010 <begin_signature_ldst>
8000305c:	ffffc0b7          	lui	ra,0xffffc
80003060:	bcc08093          	addi	ra,ra,-1076 # ffffbbcc <__stack_top+0x7ffe7bd0>
80003064:	00111223          	sh	ra,4(sp)
80003068:	00411703          	lh	a4,4(sp)
8000306c:	00e11223          	sh	a4,4(sp)
80003070:	00411103          	lh	sp,4(sp)
80003074:	ffffc3b7          	lui	t2,0xffffc
80003078:	bcc38393          	addi	t2,t2,-1076 # ffffbbcc <__stack_top+0x7ffe7bd0>
8000307c:	4c711663          	bne	sp,t2,80003548 <fail_ld_st>
80003080:	0000d117          	auipc	sp,0xd
80003084:	f9010113          	addi	sp,sp,-112 # 80010010 <begin_signature_ldst>
80003088:	00212423          	sw	sp,8(sp)
8000308c:	00812203          	lw	tp,8(sp)
80003090:	00121223          	sh	ra,4(tp) # 4 <_size_rom-0x8d0c>
80003094:	4a221a63          	bne	tp,sp,80003548 <fail_ld_st>
80003098:	00421703          	lh	a4,4(tp) # 4 <_size_rom-0x8d0c>
8000309c:	4a771663          	bne	a4,t2,80003548 <fail_ld_st>

800030a0 <ld_st_test_35>:
800030a0:	02300193          	li	gp,35
800030a4:	0000d117          	auipc	sp,0xd
800030a8:	f6c10113          	addi	sp,sp,-148 # 80010010 <begin_signature_ldst>
800030ac:	ffffb0b7          	lui	ra,0xffffb
800030b0:	bbc08093          	addi	ra,ra,-1092 # ffffabbc <__stack_top+0x7ffe6bc0>
800030b4:	00111323          	sh	ra,6(sp)
800030b8:	00611703          	lh	a4,6(sp)
800030bc:	00e11323          	sh	a4,6(sp)
800030c0:	00611103          	lh	sp,6(sp)
800030c4:	ffffb3b7          	lui	t2,0xffffb
800030c8:	bbc38393          	addi	t2,t2,-1092 # ffffabbc <__stack_top+0x7ffe6bc0>
800030cc:	46711e63          	bne	sp,t2,80003548 <fail_ld_st>
800030d0:	0000d117          	auipc	sp,0xd
800030d4:	f4010113          	addi	sp,sp,-192 # 80010010 <begin_signature_ldst>
800030d8:	00212423          	sw	sp,8(sp)
800030dc:	00812203          	lw	tp,8(sp)
800030e0:	00121323          	sh	ra,6(tp) # 6 <_size_rom-0x8d0a>
800030e4:	46221263          	bne	tp,sp,80003548 <fail_ld_st>
800030e8:	00621703          	lh	a4,6(tp) # 6 <_size_rom-0x8d0a>
800030ec:	44771e63          	bne	a4,t2,80003548 <fail_ld_st>

800030f0 <ld_st_test_36>:
800030f0:	02400193          	li	gp,36
800030f4:	0000d117          	auipc	sp,0xd
800030f8:	f1c10113          	addi	sp,sp,-228 # 80010010 <begin_signature_ldst>
800030fc:	ffffb0b7          	lui	ra,0xffffb
80003100:	abb08093          	addi	ra,ra,-1349 # ffffaabb <__stack_top+0x7ffe6abf>
80003104:	00111423          	sh	ra,8(sp)
80003108:	00811703          	lh	a4,8(sp)
8000310c:	00e11423          	sh	a4,8(sp)
80003110:	00811103          	lh	sp,8(sp)
80003114:	ffffb3b7          	lui	t2,0xffffb
80003118:	abb38393          	addi	t2,t2,-1349 # ffffaabb <__stack_top+0x7ffe6abf>
8000311c:	42711663          	bne	sp,t2,80003548 <fail_ld_st>
80003120:	0000d117          	auipc	sp,0xd
80003124:	ef010113          	addi	sp,sp,-272 # 80010010 <begin_signature_ldst>
80003128:	00212423          	sw	sp,8(sp)
8000312c:	00812203          	lw	tp,8(sp)
80003130:	00121423          	sh	ra,8(tp) # 8 <_size_rom-0x8d08>
80003134:	40221a63          	bne	tp,sp,80003548 <fail_ld_st>
80003138:	00821703          	lh	a4,8(tp) # 8 <_size_rom-0x8d08>
8000313c:	40771663          	bne	a4,t2,80003548 <fail_ld_st>

80003140 <ld_st_test_37>:
80003140:	02500193          	li	gp,37
80003144:	0000d117          	auipc	sp,0xd
80003148:	ecc10113          	addi	sp,sp,-308 # 80010010 <begin_signature_ldst>
8000314c:	ffffe0b7          	lui	ra,0xffffe
80003150:	aab08093          	addi	ra,ra,-1365 # ffffdaab <__stack_top+0x7ffe9aaf>
80003154:	00111523          	sh	ra,10(sp)
80003158:	00a11703          	lh	a4,10(sp)
8000315c:	00e11523          	sh	a4,10(sp)
80003160:	00a11103          	lh	sp,10(sp)
80003164:	ffffe3b7          	lui	t2,0xffffe
80003168:	aab38393          	addi	t2,t2,-1365 # ffffdaab <__stack_top+0x7ffe9aaf>
8000316c:	3c711e63          	bne	sp,t2,80003548 <fail_ld_st>
80003170:	0000d117          	auipc	sp,0xd
80003174:	ea010113          	addi	sp,sp,-352 # 80010010 <begin_signature_ldst>
80003178:	00212423          	sw	sp,8(sp)
8000317c:	00812203          	lw	tp,8(sp)
80003180:	00121523          	sh	ra,10(tp) # a <_size_rom-0x8d06>
80003184:	3c221263          	bne	tp,sp,80003548 <fail_ld_st>
80003188:	00a21703          	lh	a4,10(tp) # a <_size_rom-0x8d06>
8000318c:	3a771e63          	bne	a4,t2,80003548 <fail_ld_st>

80003190 <ld_st_test_38>:
80003190:	02600193          	li	gp,38
80003194:	0000d117          	auipc	sp,0xd
80003198:	e7c10113          	addi	sp,sp,-388 # 80010010 <begin_signature_ldst>
8000319c:	000020b7          	lui	ra,0x2
800031a0:	23308093          	addi	ra,ra,563 # 2233 <_size_rom-0x6add>
800031a4:	00111023          	sh	ra,0(sp)
800031a8:	00011703          	lh	a4,0(sp)
800031ac:	00e11023          	sh	a4,0(sp)
800031b0:	00011103          	lh	sp,0(sp)
800031b4:	000023b7          	lui	t2,0x2
800031b8:	23338393          	addi	t2,t2,563 # 2233 <_size_rom-0x6add>
800031bc:	38711663          	bne	sp,t2,80003548 <fail_ld_st>
800031c0:	0000d117          	auipc	sp,0xd
800031c4:	e5010113          	addi	sp,sp,-432 # 80010010 <begin_signature_ldst>
800031c8:	00212423          	sw	sp,8(sp)
800031cc:	00812203          	lw	tp,8(sp)
800031d0:	00121023          	sh	ra,0(tp) # 0 <_size_rom-0x8d10>
800031d4:	36221a63          	bne	tp,sp,80003548 <fail_ld_st>
800031d8:	00021703          	lh	a4,0(tp) # 0 <_size_rom-0x8d10>
800031dc:	36771663          	bne	a4,t2,80003548 <fail_ld_st>

800031e0 <ld_st_test_39>:
800031e0:	02700193          	li	gp,39
800031e4:	0000d117          	auipc	sp,0xd
800031e8:	e2c10113          	addi	sp,sp,-468 # 80010010 <begin_signature_ldst>
800031ec:	000010b7          	lui	ra,0x1
800031f0:	22308093          	addi	ra,ra,547 # 1223 <_size_rom-0x7aed>
800031f4:	00111123          	sh	ra,2(sp)
800031f8:	00211703          	lh	a4,2(sp)
800031fc:	00e11123          	sh	a4,2(sp)
80003200:	00211103          	lh	sp,2(sp)
80003204:	000013b7          	lui	t2,0x1
80003208:	22338393          	addi	t2,t2,547 # 1223 <_size_rom-0x7aed>
8000320c:	32711e63          	bne	sp,t2,80003548 <fail_ld_st>
80003210:	0000d117          	auipc	sp,0xd
80003214:	e0010113          	addi	sp,sp,-512 # 80010010 <begin_signature_ldst>
80003218:	00212423          	sw	sp,8(sp)
8000321c:	00812203          	lw	tp,8(sp)
80003220:	00121123          	sh	ra,2(tp) # 2 <_size_rom-0x8d0e>
80003224:	32221263          	bne	tp,sp,80003548 <fail_ld_st>
80003228:	00221703          	lh	a4,2(tp) # 2 <_size_rom-0x8d0e>
8000322c:	30771e63          	bne	a4,t2,80003548 <fail_ld_st>

80003230 <ld_st_test_40>:
80003230:	02800193          	li	gp,40
80003234:	0000d117          	auipc	sp,0xd
80003238:	ddc10113          	addi	sp,sp,-548 # 80010010 <begin_signature_ldst>
8000323c:	000010b7          	lui	ra,0x1
80003240:	12208093          	addi	ra,ra,290 # 1122 <_size_rom-0x7bee>
80003244:	00111223          	sh	ra,4(sp)
80003248:	00411703          	lh	a4,4(sp)
8000324c:	00e11223          	sh	a4,4(sp)
80003250:	00411103          	lh	sp,4(sp)
80003254:	000013b7          	lui	t2,0x1
80003258:	12238393          	addi	t2,t2,290 # 1122 <_size_rom-0x7bee>
8000325c:	2e711663          	bne	sp,t2,80003548 <fail_ld_st>
80003260:	0000d117          	auipc	sp,0xd
80003264:	db010113          	addi	sp,sp,-592 # 80010010 <begin_signature_ldst>
80003268:	00212423          	sw	sp,8(sp)
8000326c:	00812203          	lw	tp,8(sp)
80003270:	00121223          	sh	ra,4(tp) # 4 <_size_rom-0x8d0c>
80003274:	2c221a63          	bne	tp,sp,80003548 <fail_ld_st>
80003278:	00421703          	lh	a4,4(tp) # 4 <_size_rom-0x8d0c>
8000327c:	2c771663          	bne	a4,t2,80003548 <fail_ld_st>

80003280 <ld_st_test_41>:
80003280:	02900193          	li	gp,41
80003284:	0000d117          	auipc	sp,0xd
80003288:	d8c10113          	addi	sp,sp,-628 # 80010010 <begin_signature_ldst>
8000328c:	11200093          	li	ra,274
80003290:	00111323          	sh	ra,6(sp)
80003294:	00611703          	lh	a4,6(sp)
80003298:	00e11323          	sh	a4,6(sp)
8000329c:	00611103          	lh	sp,6(sp)
800032a0:	11200393          	li	t2,274
800032a4:	2a711263          	bne	sp,t2,80003548 <fail_ld_st>
800032a8:	0000d117          	auipc	sp,0xd
800032ac:	d6810113          	addi	sp,sp,-664 # 80010010 <begin_signature_ldst>
800032b0:	00212423          	sw	sp,8(sp)
800032b4:	00812203          	lw	tp,8(sp)
800032b8:	00121323          	sh	ra,6(tp) # 6 <_size_rom-0x8d0a>
800032bc:	28221663          	bne	tp,sp,80003548 <fail_ld_st>
800032c0:	00621703          	lh	a4,6(tp) # 6 <_size_rom-0x8d0a>
800032c4:	28771263          	bne	a4,t2,80003548 <fail_ld_st>

800032c8 <ld_st_test_42>:
800032c8:	02a00193          	li	gp,42
800032cc:	0000d117          	auipc	sp,0xd
800032d0:	d4410113          	addi	sp,sp,-700 # 80010010 <begin_signature_ldst>
800032d4:	01100093          	li	ra,17
800032d8:	00111423          	sh	ra,8(sp)
800032dc:	00811703          	lh	a4,8(sp)
800032e0:	00e11423          	sh	a4,8(sp)
800032e4:	00811103          	lh	sp,8(sp)
800032e8:	01100393          	li	t2,17
800032ec:	24711e63          	bne	sp,t2,80003548 <fail_ld_st>
800032f0:	0000d117          	auipc	sp,0xd
800032f4:	d2010113          	addi	sp,sp,-736 # 80010010 <begin_signature_ldst>
800032f8:	00212423          	sw	sp,8(sp)
800032fc:	00812203          	lw	tp,8(sp)
80003300:	00121423          	sh	ra,8(tp) # 8 <_size_rom-0x8d08>
80003304:	24221263          	bne	tp,sp,80003548 <fail_ld_st>
80003308:	00821703          	lh	a4,8(tp) # 8 <_size_rom-0x8d08>
8000330c:	22771e63          	bne	a4,t2,80003548 <fail_ld_st>

80003310 <ld_st_test_43>:
80003310:	02b00193          	li	gp,43
80003314:	0000d117          	auipc	sp,0xd
80003318:	cfc10113          	addi	sp,sp,-772 # 80010010 <begin_signature_ldst>
8000331c:	000030b7          	lui	ra,0x3
80003320:	00108093          	addi	ra,ra,1 # 3001 <_size_rom-0x5d0f>
80003324:	00111523          	sh	ra,10(sp)
80003328:	00a11703          	lh	a4,10(sp)
8000332c:	00e11523          	sh	a4,10(sp)
80003330:	00a11103          	lh	sp,10(sp)
80003334:	000033b7          	lui	t2,0x3
80003338:	00138393          	addi	t2,t2,1 # 3001 <_size_rom-0x5d0f>
8000333c:	20711663          	bne	sp,t2,80003548 <fail_ld_st>
80003340:	0000d117          	auipc	sp,0xd
80003344:	cd010113          	addi	sp,sp,-816 # 80010010 <begin_signature_ldst>
80003348:	00212423          	sw	sp,8(sp)
8000334c:	00812203          	lw	tp,8(sp)
80003350:	00121523          	sh	ra,10(tp) # a <_size_rom-0x8d06>
80003354:	1e221a63          	bne	tp,sp,80003548 <fail_ld_st>
80003358:	00a21703          	lh	a4,10(tp) # a <_size_rom-0x8d06>
8000335c:	1e771663          	bne	a4,t2,80003548 <fail_ld_st>

80003360 <ld_st_test_44>:
80003360:	02c00193          	li	gp,44
80003364:	0000d117          	auipc	sp,0xd
80003368:	cac10113          	addi	sp,sp,-852 # 80010010 <begin_signature_ldst>
8000336c:	000020b7          	lui	ra,0x2
80003370:	23308093          	addi	ra,ra,563 # 2233 <_size_rom-0x6add>
80003374:	00111023          	sh	ra,0(sp)
80003378:	00015703          	lhu	a4,0(sp)
8000337c:	00e11023          	sh	a4,0(sp)
80003380:	00015103          	lhu	sp,0(sp)
80003384:	000023b7          	lui	t2,0x2
80003388:	23338393          	addi	t2,t2,563 # 2233 <_size_rom-0x6add>
8000338c:	1a711e63          	bne	sp,t2,80003548 <fail_ld_st>
80003390:	0000d117          	auipc	sp,0xd
80003394:	c8010113          	addi	sp,sp,-896 # 80010010 <begin_signature_ldst>
80003398:	00212423          	sw	sp,8(sp)
8000339c:	00812203          	lw	tp,8(sp)
800033a0:	00121023          	sh	ra,0(tp) # 0 <_size_rom-0x8d10>
800033a4:	1a221263          	bne	tp,sp,80003548 <fail_ld_st>
800033a8:	00025703          	lhu	a4,0(tp) # 0 <_size_rom-0x8d10>
800033ac:	18771e63          	bne	a4,t2,80003548 <fail_ld_st>

800033b0 <ld_st_test_45>:
800033b0:	02d00193          	li	gp,45
800033b4:	0000d117          	auipc	sp,0xd
800033b8:	c5c10113          	addi	sp,sp,-932 # 80010010 <begin_signature_ldst>
800033bc:	000010b7          	lui	ra,0x1
800033c0:	22308093          	addi	ra,ra,547 # 1223 <_size_rom-0x7aed>
800033c4:	00111123          	sh	ra,2(sp)
800033c8:	00215703          	lhu	a4,2(sp)
800033cc:	00e11123          	sh	a4,2(sp)
800033d0:	00215103          	lhu	sp,2(sp)
800033d4:	000013b7          	lui	t2,0x1
800033d8:	22338393          	addi	t2,t2,547 # 1223 <_size_rom-0x7aed>
800033dc:	16711663          	bne	sp,t2,80003548 <fail_ld_st>
800033e0:	0000d117          	auipc	sp,0xd
800033e4:	c3010113          	addi	sp,sp,-976 # 80010010 <begin_signature_ldst>
800033e8:	00212423          	sw	sp,8(sp)
800033ec:	00812203          	lw	tp,8(sp)
800033f0:	00121123          	sh	ra,2(tp) # 2 <_size_rom-0x8d0e>
800033f4:	14221a63          	bne	tp,sp,80003548 <fail_ld_st>
800033f8:	00225703          	lhu	a4,2(tp) # 2 <_size_rom-0x8d0e>
800033fc:	14771663          	bne	a4,t2,80003548 <fail_ld_st>

80003400 <ld_st_test_46>:
80003400:	02e00193          	li	gp,46
80003404:	0000d117          	auipc	sp,0xd
80003408:	c0c10113          	addi	sp,sp,-1012 # 80010010 <begin_signature_ldst>
8000340c:	000010b7          	lui	ra,0x1
80003410:	12208093          	addi	ra,ra,290 # 1122 <_size_rom-0x7bee>
80003414:	00111223          	sh	ra,4(sp)
80003418:	00415703          	lhu	a4,4(sp)
8000341c:	00e11223          	sh	a4,4(sp)
80003420:	00415103          	lhu	sp,4(sp)
80003424:	000013b7          	lui	t2,0x1
80003428:	12238393          	addi	t2,t2,290 # 1122 <_size_rom-0x7bee>
8000342c:	10711e63          	bne	sp,t2,80003548 <fail_ld_st>
80003430:	0000d117          	auipc	sp,0xd
80003434:	be010113          	addi	sp,sp,-1056 # 80010010 <begin_signature_ldst>
80003438:	00212423          	sw	sp,8(sp)
8000343c:	00812203          	lw	tp,8(sp)
80003440:	00121223          	sh	ra,4(tp) # 4 <_size_rom-0x8d0c>
80003444:	10221263          	bne	tp,sp,80003548 <fail_ld_st>
80003448:	00425703          	lhu	a4,4(tp) # 4 <_size_rom-0x8d0c>
8000344c:	0e771e63          	bne	a4,t2,80003548 <fail_ld_st>

80003450 <ld_st_test_47>:
80003450:	02f00193          	li	gp,47
80003454:	0000d117          	auipc	sp,0xd
80003458:	bbc10113          	addi	sp,sp,-1092 # 80010010 <begin_signature_ldst>
8000345c:	11200093          	li	ra,274
80003460:	00111323          	sh	ra,6(sp)
80003464:	00615703          	lhu	a4,6(sp)
80003468:	00e11323          	sh	a4,6(sp)
8000346c:	00615103          	lhu	sp,6(sp)
80003470:	11200393          	li	t2,274
80003474:	0c711a63          	bne	sp,t2,80003548 <fail_ld_st>
80003478:	0000d117          	auipc	sp,0xd
8000347c:	b9810113          	addi	sp,sp,-1128 # 80010010 <begin_signature_ldst>
80003480:	00212423          	sw	sp,8(sp)
80003484:	00812203          	lw	tp,8(sp)
80003488:	00121323          	sh	ra,6(tp) # 6 <_size_rom-0x8d0a>
8000348c:	0a221e63          	bne	tp,sp,80003548 <fail_ld_st>
80003490:	00625703          	lhu	a4,6(tp) # 6 <_size_rom-0x8d0a>
80003494:	0a771a63          	bne	a4,t2,80003548 <fail_ld_st>

80003498 <ld_st_test_48>:
80003498:	03000193          	li	gp,48
8000349c:	0000d117          	auipc	sp,0xd
800034a0:	b7410113          	addi	sp,sp,-1164 # 80010010 <begin_signature_ldst>
800034a4:	01100093          	li	ra,17
800034a8:	00111423          	sh	ra,8(sp)
800034ac:	00815703          	lhu	a4,8(sp)
800034b0:	00e11423          	sh	a4,8(sp)
800034b4:	00815103          	lhu	sp,8(sp)
800034b8:	01100393          	li	t2,17
800034bc:	08711663          	bne	sp,t2,80003548 <fail_ld_st>
800034c0:	0000d117          	auipc	sp,0xd
800034c4:	b5010113          	addi	sp,sp,-1200 # 80010010 <begin_signature_ldst>
800034c8:	00212423          	sw	sp,8(sp)
800034cc:	00812203          	lw	tp,8(sp)
800034d0:	00121423          	sh	ra,8(tp) # 8 <_size_rom-0x8d08>
800034d4:	06221a63          	bne	tp,sp,80003548 <fail_ld_st>
800034d8:	00825703          	lhu	a4,8(tp) # 8 <_size_rom-0x8d08>
800034dc:	06771663          	bne	a4,t2,80003548 <fail_ld_st>

800034e0 <ld_st_test_49>:
800034e0:	03100193          	li	gp,49
800034e4:	0000d117          	auipc	sp,0xd
800034e8:	b2c10113          	addi	sp,sp,-1236 # 80010010 <begin_signature_ldst>
800034ec:	000030b7          	lui	ra,0x3
800034f0:	00108093          	addi	ra,ra,1 # 3001 <_size_rom-0x5d0f>
800034f4:	00111523          	sh	ra,10(sp)
800034f8:	00a15703          	lhu	a4,10(sp)
800034fc:	00e11523          	sh	a4,10(sp)
80003500:	00a15103          	lhu	sp,10(sp)
80003504:	000033b7          	lui	t2,0x3
80003508:	00138393          	addi	t2,t2,1 # 3001 <_size_rom-0x5d0f>
8000350c:	02711e63          	bne	sp,t2,80003548 <fail_ld_st>
80003510:	0000d117          	auipc	sp,0xd
80003514:	b0010113          	addi	sp,sp,-1280 # 80010010 <begin_signature_ldst>
80003518:	00212423          	sw	sp,8(sp)
8000351c:	00812203          	lw	tp,8(sp)
80003520:	00121523          	sh	ra,10(tp) # a <_size_rom-0x8d06>
80003524:	02221263          	bne	tp,sp,80003548 <fail_ld_st>
80003528:	00a25703          	lhu	a4,10(tp) # a <_size_rom-0x8d06>
8000352c:	00771e63          	bne	a4,t2,80003548 <fail_ld_st>
80003530:	0ef00513          	li	a0,239
80003534:	0000d597          	auipc	a1,0xd
80003538:	adc58593          	addi	a1,a1,-1316 # 80010010 <begin_signature_ldst>
8000353c:	00a581a3          	sb	a0,3(a1)
80003540:	00358603          	lb	a2,3(a1)
80003544:	00c0006f          	j	80003550 <pass_ld_st>

80003548 <fail_ld_st>:
80003548:	04d00893          	li	a7,77
8000354c:	ffdff06f          	j	80003548 <fail_ld_st>

80003550 <pass_ld_st>:
80003550:	04200893          	li	a7,66

80003554 <lh_test_2>:
80003554:	00200193          	li	gp,2
80003558:	0ff00793          	li	a5,255
8000355c:	0000d117          	auipc	sp,0xd
80003560:	b0410113          	addi	sp,sp,-1276 # 80010060 <begin_signature_lh>
80003564:	00011703          	lh	a4,0(sp)
80003568:	0ff00393          	li	t2,255
8000356c:	28771263          	bne	a4,t2,800037f0 <fail_lh>

80003570 <lh_test_3>:
80003570:	00300193          	li	gp,3
80003574:	f0000793          	li	a5,-256
80003578:	0000d117          	auipc	sp,0xd
8000357c:	ae810113          	addi	sp,sp,-1304 # 80010060 <begin_signature_lh>
80003580:	00211703          	lh	a4,2(sp)
80003584:	f0000393          	li	t2,-256
80003588:	26771463          	bne	a4,t2,800037f0 <fail_lh>

8000358c <lh_test_4>:
8000358c:	00400193          	li	gp,4
80003590:	000017b7          	lui	a5,0x1
80003594:	ff078793          	addi	a5,a5,-16 # ff0 <_size_rom-0x7d20>
80003598:	0000d117          	auipc	sp,0xd
8000359c:	ac810113          	addi	sp,sp,-1336 # 80010060 <begin_signature_lh>
800035a0:	00411703          	lh	a4,4(sp)
800035a4:	000013b7          	lui	t2,0x1
800035a8:	ff038393          	addi	t2,t2,-16 # ff0 <_size_rom-0x7d20>
800035ac:	24771263          	bne	a4,t2,800037f0 <fail_lh>

800035b0 <lh_test_5>:
800035b0:	00500193          	li	gp,5
800035b4:	fffff7b7          	lui	a5,0xfffff
800035b8:	00f78793          	addi	a5,a5,15 # fffff00f <__stack_top+0x7ffeb013>
800035bc:	0000d117          	auipc	sp,0xd
800035c0:	aa410113          	addi	sp,sp,-1372 # 80010060 <begin_signature_lh>
800035c4:	00611703          	lh	a4,6(sp)
800035c8:	fffff3b7          	lui	t2,0xfffff
800035cc:	00f38393          	addi	t2,t2,15 # fffff00f <__stack_top+0x7ffeb013>
800035d0:	22771063          	bne	a4,t2,800037f0 <fail_lh>

800035d4 <lh_test_6>:
800035d4:	00600193          	li	gp,6
800035d8:	0ff00793          	li	a5,255
800035dc:	0000d117          	auipc	sp,0xd
800035e0:	a8a10113          	addi	sp,sp,-1398 # 80010066 <tdat4_lh>
800035e4:	ffa11703          	lh	a4,-6(sp)
800035e8:	0ff00393          	li	t2,255
800035ec:	20771263          	bne	a4,t2,800037f0 <fail_lh>

800035f0 <lh_test_7>:
800035f0:	00700193          	li	gp,7
800035f4:	f0000793          	li	a5,-256
800035f8:	0000d117          	auipc	sp,0xd
800035fc:	a6e10113          	addi	sp,sp,-1426 # 80010066 <tdat4_lh>
80003600:	ffc11703          	lh	a4,-4(sp)
80003604:	f0000393          	li	t2,-256
80003608:	1e771463          	bne	a4,t2,800037f0 <fail_lh>

8000360c <lh_test_8>:
8000360c:	00800193          	li	gp,8
80003610:	000017b7          	lui	a5,0x1
80003614:	ff078793          	addi	a5,a5,-16 # ff0 <_size_rom-0x7d20>
80003618:	0000d117          	auipc	sp,0xd
8000361c:	a4e10113          	addi	sp,sp,-1458 # 80010066 <tdat4_lh>
80003620:	ffe11703          	lh	a4,-2(sp)
80003624:	000013b7          	lui	t2,0x1
80003628:	ff038393          	addi	t2,t2,-16 # ff0 <_size_rom-0x7d20>
8000362c:	1c771263          	bne	a4,t2,800037f0 <fail_lh>

80003630 <lh_test_9>:
80003630:	00900193          	li	gp,9
80003634:	fffff7b7          	lui	a5,0xfffff
80003638:	00f78793          	addi	a5,a5,15 # fffff00f <__stack_top+0x7ffeb013>
8000363c:	0000d117          	auipc	sp,0xd
80003640:	a2a10113          	addi	sp,sp,-1494 # 80010066 <tdat4_lh>
80003644:	00011703          	lh	a4,0(sp)
80003648:	fffff3b7          	lui	t2,0xfffff
8000364c:	00f38393          	addi	t2,t2,15 # fffff00f <__stack_top+0x7ffeb013>
80003650:	1a771063          	bne	a4,t2,800037f0 <fail_lh>

80003654 <lh_test_10>:
80003654:	00a00193          	li	gp,10
80003658:	0000d097          	auipc	ra,0xd
8000365c:	a0808093          	addi	ra,ra,-1528 # 80010060 <begin_signature_lh>
80003660:	fe008093          	addi	ra,ra,-32
80003664:	02009283          	lh	t0,32(ra)
80003668:	0ff00393          	li	t2,255
8000366c:	18729263          	bne	t0,t2,800037f0 <fail_lh>

80003670 <lh_test_11>:
80003670:	00b00193          	li	gp,11
80003674:	0000d097          	auipc	ra,0xd
80003678:	9ec08093          	addi	ra,ra,-1556 # 80010060 <begin_signature_lh>
8000367c:	ffb08093          	addi	ra,ra,-5
80003680:	00709283          	lh	t0,7(ra)
80003684:	f0000393          	li	t2,-256
80003688:	16729463          	bne	t0,t2,800037f0 <fail_lh>

8000368c <lh_test_12>:
8000368c:	00c00193          	li	gp,12
80003690:	00000213          	li	tp,0

80003694 <test_12plus8_lh>:
80003694:	0000d697          	auipc	a3,0xd
80003698:	9ce68693          	addi	a3,a3,-1586 # 80010062 <tdat2_lh>
8000369c:	00269703          	lh	a4,2(a3)
800036a0:	00070313          	mv	t1,a4
800036a4:	000013b7          	lui	t2,0x1
800036a8:	ff038393          	addi	t2,t2,-16 # ff0 <_size_rom-0x7d20>
800036ac:	14731263          	bne	t1,t2,800037f0 <fail_lh>
800036b0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800036b4:	00200293          	li	t0,2
800036b8:	fc521ee3          	bne	tp,t0,80003694 <test_12plus8_lh>

800036bc <lh_test_13>:
800036bc:	00d00193          	li	gp,13
800036c0:	00000213          	li	tp,0

800036c4 <test_13plus8_lh>:
800036c4:	0000d697          	auipc	a3,0xd
800036c8:	9a068693          	addi	a3,a3,-1632 # 80010064 <tdat3_lh>
800036cc:	00269703          	lh	a4,2(a3)
800036d0:	00000013          	nop
800036d4:	00070313          	mv	t1,a4
800036d8:	fffff3b7          	lui	t2,0xfffff
800036dc:	00f38393          	addi	t2,t2,15 # fffff00f <__stack_top+0x7ffeb013>
800036e0:	10731863          	bne	t1,t2,800037f0 <fail_lh>
800036e4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800036e8:	00200293          	li	t0,2
800036ec:	fc521ce3          	bne	tp,t0,800036c4 <test_13plus8_lh>

800036f0 <lh_test_14>:
800036f0:	00e00193          	li	gp,14
800036f4:	00000213          	li	tp,0

800036f8 <test_14plus8_lh>:
800036f8:	0000d697          	auipc	a3,0xd
800036fc:	96868693          	addi	a3,a3,-1688 # 80010060 <begin_signature_lh>
80003700:	00269703          	lh	a4,2(a3)
80003704:	00000013          	nop
80003708:	00000013          	nop
8000370c:	00070313          	mv	t1,a4
80003710:	f0000393          	li	t2,-256
80003714:	0c731e63          	bne	t1,t2,800037f0 <fail_lh>
80003718:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000371c:	00200293          	li	t0,2
80003720:	fc521ce3          	bne	tp,t0,800036f8 <test_14plus8_lh>

80003724 <lh_test_15>:
80003724:	00f00193          	li	gp,15
80003728:	00000213          	li	tp,0

8000372c <test_15plus8_lh>:
8000372c:	0000d697          	auipc	a3,0xd
80003730:	93668693          	addi	a3,a3,-1738 # 80010062 <tdat2_lh>
80003734:	00269703          	lh	a4,2(a3)
80003738:	000013b7          	lui	t2,0x1
8000373c:	ff038393          	addi	t2,t2,-16 # ff0 <_size_rom-0x7d20>
80003740:	0a771863          	bne	a4,t2,800037f0 <fail_lh>
80003744:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003748:	00200293          	li	t0,2
8000374c:	fe5210e3          	bne	tp,t0,8000372c <test_15plus8_lh>

80003750 <lh_test_16>:
80003750:	01000193          	li	gp,16
80003754:	00000213          	li	tp,0

80003758 <test_16plus8_lh>:
80003758:	0000d697          	auipc	a3,0xd
8000375c:	90c68693          	addi	a3,a3,-1780 # 80010064 <tdat3_lh>
80003760:	00000013          	nop
80003764:	00269703          	lh	a4,2(a3)
80003768:	fffff3b7          	lui	t2,0xfffff
8000376c:	00f38393          	addi	t2,t2,15 # fffff00f <__stack_top+0x7ffeb013>
80003770:	08771063          	bne	a4,t2,800037f0 <fail_lh>
80003774:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003778:	00200293          	li	t0,2
8000377c:	fc521ee3          	bne	tp,t0,80003758 <test_16plus8_lh>

80003780 <lh_test_17>:
80003780:	01100193          	li	gp,17
80003784:	00000213          	li	tp,0

80003788 <test_17plus8_lh>:
80003788:	0000d697          	auipc	a3,0xd
8000378c:	8d868693          	addi	a3,a3,-1832 # 80010060 <begin_signature_lh>
80003790:	00000013          	nop
80003794:	00000013          	nop
80003798:	00269703          	lh	a4,2(a3)
8000379c:	f0000393          	li	t2,-256
800037a0:	04771863          	bne	a4,t2,800037f0 <fail_lh>
800037a4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800037a8:	00200293          	li	t0,2
800037ac:	fc521ee3          	bne	tp,t0,80003788 <test_17plus8_lh>

800037b0 <lh_test_18>:
800037b0:	01200193          	li	gp,18
800037b4:	0000d297          	auipc	t0,0xd
800037b8:	8ac28293          	addi	t0,t0,-1876 # 80010060 <begin_signature_lh>
800037bc:	00029103          	lh	sp,0(t0)
800037c0:	00200113          	li	sp,2
800037c4:	00200393          	li	t2,2
800037c8:	02711463          	bne	sp,t2,800037f0 <fail_lh>

800037cc <lh_test_19>:
800037cc:	01300193          	li	gp,19
800037d0:	0000d297          	auipc	t0,0xd
800037d4:	89028293          	addi	t0,t0,-1904 # 80010060 <begin_signature_lh>
800037d8:	00029103          	lh	sp,0(t0)
800037dc:	00000013          	nop
800037e0:	00200113          	li	sp,2
800037e4:	00200393          	li	t2,2
800037e8:	00711463          	bne	sp,t2,800037f0 <fail_lh>
800037ec:	00c0006f          	j	800037f8 <pass_lh>

800037f0 <fail_lh>:
800037f0:	04d00893          	li	a7,77
800037f4:	ffdff06f          	j	800037f0 <fail_lh>

800037f8 <pass_lh>:
800037f8:	04200893          	li	a7,66

800037fc <lhu_test_2>:
800037fc:	00200193          	li	gp,2
80003800:	0ff00793          	li	a5,255
80003804:	0000d117          	auipc	sp,0xd
80003808:	85c10113          	addi	sp,sp,-1956 # 80010060 <begin_signature_lh>
8000380c:	00015703          	lhu	a4,0(sp)
80003810:	0ff00393          	li	t2,255
80003814:	2a771063          	bne	a4,t2,80003ab4 <fail_lhu>

80003818 <lhu_test_3>:
80003818:	00300193          	li	gp,3
8000381c:	000107b7          	lui	a5,0x10
80003820:	f0078793          	addi	a5,a5,-256 # ff00 <_size_rom+0x71f0>
80003824:	0000d117          	auipc	sp,0xd
80003828:	83c10113          	addi	sp,sp,-1988 # 80010060 <begin_signature_lh>
8000382c:	00215703          	lhu	a4,2(sp)
80003830:	000103b7          	lui	t2,0x10
80003834:	f0038393          	addi	t2,t2,-256 # ff00 <_size_rom+0x71f0>
80003838:	26771e63          	bne	a4,t2,80003ab4 <fail_lhu>

8000383c <lhu_test_4>:
8000383c:	00400193          	li	gp,4
80003840:	000017b7          	lui	a5,0x1
80003844:	ff078793          	addi	a5,a5,-16 # ff0 <_size_rom-0x7d20>
80003848:	0000d117          	auipc	sp,0xd
8000384c:	81810113          	addi	sp,sp,-2024 # 80010060 <begin_signature_lh>
80003850:	00415703          	lhu	a4,4(sp)
80003854:	000013b7          	lui	t2,0x1
80003858:	ff038393          	addi	t2,t2,-16 # ff0 <_size_rom-0x7d20>
8000385c:	24771c63          	bne	a4,t2,80003ab4 <fail_lhu>

80003860 <lhu_test_5>:
80003860:	00500193          	li	gp,5
80003864:	0000f7b7          	lui	a5,0xf
80003868:	00f78793          	addi	a5,a5,15 # f00f <_size_rom+0x62ff>
8000386c:	0000c117          	auipc	sp,0xc
80003870:	7f410113          	addi	sp,sp,2036 # 80010060 <begin_signature_lh>
80003874:	00615703          	lhu	a4,6(sp)
80003878:	0000f3b7          	lui	t2,0xf
8000387c:	00f38393          	addi	t2,t2,15 # f00f <_size_rom+0x62ff>
80003880:	22771a63          	bne	a4,t2,80003ab4 <fail_lhu>

80003884 <lhu_test_6>:
80003884:	00600193          	li	gp,6
80003888:	0ff00793          	li	a5,255
8000388c:	0000c117          	auipc	sp,0xc
80003890:	7da10113          	addi	sp,sp,2010 # 80010066 <tdat4_lh>
80003894:	ffa15703          	lhu	a4,-6(sp)
80003898:	0ff00393          	li	t2,255
8000389c:	20771c63          	bne	a4,t2,80003ab4 <fail_lhu>

800038a0 <lhu_test_7>:
800038a0:	00700193          	li	gp,7
800038a4:	000107b7          	lui	a5,0x10
800038a8:	f0078793          	addi	a5,a5,-256 # ff00 <_size_rom+0x71f0>
800038ac:	0000c117          	auipc	sp,0xc
800038b0:	7ba10113          	addi	sp,sp,1978 # 80010066 <tdat4_lh>
800038b4:	ffc15703          	lhu	a4,-4(sp)
800038b8:	000103b7          	lui	t2,0x10
800038bc:	f0038393          	addi	t2,t2,-256 # ff00 <_size_rom+0x71f0>
800038c0:	1e771a63          	bne	a4,t2,80003ab4 <fail_lhu>

800038c4 <lhu_test_8>:
800038c4:	00800193          	li	gp,8
800038c8:	000017b7          	lui	a5,0x1
800038cc:	ff078793          	addi	a5,a5,-16 # ff0 <_size_rom-0x7d20>
800038d0:	0000c117          	auipc	sp,0xc
800038d4:	79610113          	addi	sp,sp,1942 # 80010066 <tdat4_lh>
800038d8:	ffe15703          	lhu	a4,-2(sp)
800038dc:	000013b7          	lui	t2,0x1
800038e0:	ff038393          	addi	t2,t2,-16 # ff0 <_size_rom-0x7d20>
800038e4:	1c771863          	bne	a4,t2,80003ab4 <fail_lhu>

800038e8 <lhu_test_9>:
800038e8:	00900193          	li	gp,9
800038ec:	0000f7b7          	lui	a5,0xf
800038f0:	00f78793          	addi	a5,a5,15 # f00f <_size_rom+0x62ff>
800038f4:	0000c117          	auipc	sp,0xc
800038f8:	77210113          	addi	sp,sp,1906 # 80010066 <tdat4_lh>
800038fc:	00015703          	lhu	a4,0(sp)
80003900:	0000f3b7          	lui	t2,0xf
80003904:	00f38393          	addi	t2,t2,15 # f00f <_size_rom+0x62ff>
80003908:	1a771663          	bne	a4,t2,80003ab4 <fail_lhu>

8000390c <lhu_test_10>:
8000390c:	00a00193          	li	gp,10
80003910:	0000c097          	auipc	ra,0xc
80003914:	75008093          	addi	ra,ra,1872 # 80010060 <begin_signature_lh>
80003918:	fe008093          	addi	ra,ra,-32
8000391c:	0200d283          	lhu	t0,32(ra)
80003920:	0ff00393          	li	t2,255
80003924:	18729863          	bne	t0,t2,80003ab4 <fail_lhu>

80003928 <lhu_test_11>:
80003928:	00b00193          	li	gp,11
8000392c:	0000c097          	auipc	ra,0xc
80003930:	73408093          	addi	ra,ra,1844 # 80010060 <begin_signature_lh>
80003934:	ffb08093          	addi	ra,ra,-5
80003938:	0070d283          	lhu	t0,7(ra)
8000393c:	000103b7          	lui	t2,0x10
80003940:	f0038393          	addi	t2,t2,-256 # ff00 <_size_rom+0x71f0>
80003944:	16729863          	bne	t0,t2,80003ab4 <fail_lhu>

80003948 <lhu_test_12>:
80003948:	00c00193          	li	gp,12
8000394c:	00000213          	li	tp,0

80003950 <test_12plus8_lhu>:
80003950:	0000c697          	auipc	a3,0xc
80003954:	71268693          	addi	a3,a3,1810 # 80010062 <tdat2_lh>
80003958:	0026d703          	lhu	a4,2(a3)
8000395c:	00070313          	mv	t1,a4
80003960:	000013b7          	lui	t2,0x1
80003964:	ff038393          	addi	t2,t2,-16 # ff0 <_size_rom-0x7d20>
80003968:	14731663          	bne	t1,t2,80003ab4 <fail_lhu>
8000396c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003970:	00200293          	li	t0,2
80003974:	fc521ee3          	bne	tp,t0,80003950 <test_12plus8_lhu>

80003978 <lhu_test_13>:
80003978:	00d00193          	li	gp,13
8000397c:	00000213          	li	tp,0

80003980 <test_13plus8_lhu>:
80003980:	0000c697          	auipc	a3,0xc
80003984:	6e468693          	addi	a3,a3,1764 # 80010064 <tdat3_lh>
80003988:	0026d703          	lhu	a4,2(a3)
8000398c:	00000013          	nop
80003990:	00070313          	mv	t1,a4
80003994:	0000f3b7          	lui	t2,0xf
80003998:	00f38393          	addi	t2,t2,15 # f00f <_size_rom+0x62ff>
8000399c:	10731c63          	bne	t1,t2,80003ab4 <fail_lhu>
800039a0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800039a4:	00200293          	li	t0,2
800039a8:	fc521ce3          	bne	tp,t0,80003980 <test_13plus8_lhu>

800039ac <lhu_test_14>:
800039ac:	00e00193          	li	gp,14
800039b0:	00000213          	li	tp,0

800039b4 <test_14plus8_lhu>:
800039b4:	0000c697          	auipc	a3,0xc
800039b8:	6ac68693          	addi	a3,a3,1708 # 80010060 <begin_signature_lh>
800039bc:	0026d703          	lhu	a4,2(a3)
800039c0:	00000013          	nop
800039c4:	00000013          	nop
800039c8:	00070313          	mv	t1,a4
800039cc:	000103b7          	lui	t2,0x10
800039d0:	f0038393          	addi	t2,t2,-256 # ff00 <_size_rom+0x71f0>
800039d4:	0e731063          	bne	t1,t2,80003ab4 <fail_lhu>
800039d8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800039dc:	00200293          	li	t0,2
800039e0:	fc521ae3          	bne	tp,t0,800039b4 <test_14plus8_lhu>

800039e4 <lhu_test_15>:
800039e4:	00f00193          	li	gp,15
800039e8:	00000213          	li	tp,0

800039ec <test_15plus8_lhu>:
800039ec:	0000c697          	auipc	a3,0xc
800039f0:	67668693          	addi	a3,a3,1654 # 80010062 <tdat2_lh>
800039f4:	0026d703          	lhu	a4,2(a3)
800039f8:	000013b7          	lui	t2,0x1
800039fc:	ff038393          	addi	t2,t2,-16 # ff0 <_size_rom-0x7d20>
80003a00:	0a771a63          	bne	a4,t2,80003ab4 <fail_lhu>
80003a04:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003a08:	00200293          	li	t0,2
80003a0c:	fe5210e3          	bne	tp,t0,800039ec <test_15plus8_lhu>

80003a10 <lhu_test_16>:
80003a10:	01000193          	li	gp,16
80003a14:	00000213          	li	tp,0

80003a18 <test_16plus8_lhu>:
80003a18:	0000c697          	auipc	a3,0xc
80003a1c:	64c68693          	addi	a3,a3,1612 # 80010064 <tdat3_lh>
80003a20:	00000013          	nop
80003a24:	0026d703          	lhu	a4,2(a3)
80003a28:	0000f3b7          	lui	t2,0xf
80003a2c:	00f38393          	addi	t2,t2,15 # f00f <_size_rom+0x62ff>
80003a30:	08771263          	bne	a4,t2,80003ab4 <fail_lhu>
80003a34:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003a38:	00200293          	li	t0,2
80003a3c:	fc521ee3          	bne	tp,t0,80003a18 <test_16plus8_lhu>

80003a40 <lhu_test_17>:
80003a40:	01100193          	li	gp,17
80003a44:	00000213          	li	tp,0

80003a48 <test_17plus8_lhu>:
80003a48:	0000c697          	auipc	a3,0xc
80003a4c:	61868693          	addi	a3,a3,1560 # 80010060 <begin_signature_lh>
80003a50:	00000013          	nop
80003a54:	00000013          	nop
80003a58:	0026d703          	lhu	a4,2(a3)
80003a5c:	000103b7          	lui	t2,0x10
80003a60:	f0038393          	addi	t2,t2,-256 # ff00 <_size_rom+0x71f0>
80003a64:	04771863          	bne	a4,t2,80003ab4 <fail_lhu>
80003a68:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003a6c:	00200293          	li	t0,2
80003a70:	fc521ce3          	bne	tp,t0,80003a48 <test_17plus8_lhu>

80003a74 <lhu_test_18>:
80003a74:	01200193          	li	gp,18
80003a78:	0000c297          	auipc	t0,0xc
80003a7c:	5e828293          	addi	t0,t0,1512 # 80010060 <begin_signature_lh>
80003a80:	0002d103          	lhu	sp,0(t0)
80003a84:	00200113          	li	sp,2
80003a88:	00200393          	li	t2,2
80003a8c:	02711463          	bne	sp,t2,80003ab4 <fail_lhu>

80003a90 <lhu_test_19>:
80003a90:	01300193          	li	gp,19
80003a94:	0000c297          	auipc	t0,0xc
80003a98:	5cc28293          	addi	t0,t0,1484 # 80010060 <begin_signature_lh>
80003a9c:	0002d103          	lhu	sp,0(t0)
80003aa0:	00000013          	nop
80003aa4:	00200113          	li	sp,2
80003aa8:	00200393          	li	t2,2
80003aac:	00711463          	bne	sp,t2,80003ab4 <fail_lhu>
80003ab0:	00c0006f          	j	80003abc <pass_lhu>

80003ab4 <fail_lhu>:
80003ab4:	04d00893          	li	a7,77
80003ab8:	ffdff06f          	j	80003ab4 <fail_lhu>

80003abc <pass_lhu>:
80003abc:	04200893          	li	a7,66

80003ac0 <lui_test_2>:
80003ac0:	00200193          	li	gp,2
80003ac4:	000000b7          	lui	ra,0x0
80003ac8:	00000393          	li	t2,0
80003acc:	04709a63          	bne	ra,t2,80003b20 <fail_lui>

80003ad0 <lui_test_3>:
80003ad0:	00300193          	li	gp,3
80003ad4:	fffff0b7          	lui	ra,0xfffff
80003ad8:	4010d093          	srai	ra,ra,0x1
80003adc:	80000393          	li	t2,-2048
80003ae0:	04709063          	bne	ra,t2,80003b20 <fail_lui>

80003ae4 <lui_test_4>:
80003ae4:	00400193          	li	gp,4
80003ae8:	7ffff0b7          	lui	ra,0x7ffff
80003aec:	4140d093          	srai	ra,ra,0x14
80003af0:	7ff00393          	li	t2,2047
80003af4:	02709663          	bne	ra,t2,80003b20 <fail_lui>

80003af8 <lui_test_5>:
80003af8:	00500193          	li	gp,5
80003afc:	800000b7          	lui	ra,0x80000
80003b00:	4140d093          	srai	ra,ra,0x14
80003b04:	80000393          	li	t2,-2048
80003b08:	00709c63          	bne	ra,t2,80003b20 <fail_lui>

80003b0c <lui_test_6>:
80003b0c:	00600193          	li	gp,6
80003b10:	80000037          	lui	zero,0x80000
80003b14:	00000393          	li	t2,0
80003b18:	00701463          	bne	zero,t2,80003b20 <fail_lui>
80003b1c:	00c0006f          	j	80003b28 <pass_lui>

80003b20 <fail_lui>:
80003b20:	04d00893          	li	a7,77
80003b24:	ffdff06f          	j	80003b20 <fail_lui>

80003b28 <pass_lui>:
80003b28:	04200893          	li	a7,66

80003b2c <lw_test_2>:
80003b2c:	00200193          	li	gp,2
80003b30:	00ff07b7          	lui	a5,0xff0
80003b34:	0ff78793          	addi	a5,a5,255 # ff00ff <_size_rom+0xfe73ef>
80003b38:	0000c117          	auipc	sp,0xc
80003b3c:	53810113          	addi	sp,sp,1336 # 80010070 <begin_signature_lw>
80003b40:	00012703          	lw	a4,0(sp)
80003b44:	00ff03b7          	lui	t2,0xff0
80003b48:	0ff38393          	addi	t2,t2,255 # ff00ff <_size_rom+0xfe73ef>
80003b4c:	2a771663          	bne	a4,t2,80003df8 <fail_lw>

80003b50 <lw_test_3>:
80003b50:	00300193          	li	gp,3
80003b54:	ff0107b7          	lui	a5,0xff010
80003b58:	f0078793          	addi	a5,a5,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003b5c:	0000c117          	auipc	sp,0xc
80003b60:	51410113          	addi	sp,sp,1300 # 80010070 <begin_signature_lw>
80003b64:	00412703          	lw	a4,4(sp)
80003b68:	ff0103b7          	lui	t2,0xff010
80003b6c:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003b70:	28771463          	bne	a4,t2,80003df8 <fail_lw>

80003b74 <lw_test_4>:
80003b74:	00400193          	li	gp,4
80003b78:	0ff017b7          	lui	a5,0xff01
80003b7c:	ff078793          	addi	a5,a5,-16 # ff00ff0 <_size_rom+0xfef82e0>
80003b80:	0000c117          	auipc	sp,0xc
80003b84:	4f010113          	addi	sp,sp,1264 # 80010070 <begin_signature_lw>
80003b88:	00812703          	lw	a4,8(sp)
80003b8c:	0ff013b7          	lui	t2,0xff01
80003b90:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
80003b94:	26771263          	bne	a4,t2,80003df8 <fail_lw>

80003b98 <lw_test_5>:
80003b98:	00500193          	li	gp,5
80003b9c:	f00ff7b7          	lui	a5,0xf00ff
80003ba0:	00f78793          	addi	a5,a5,15 # f00ff00f <__stack_top+0x700eb013>
80003ba4:	0000c117          	auipc	sp,0xc
80003ba8:	4cc10113          	addi	sp,sp,1228 # 80010070 <begin_signature_lw>
80003bac:	00c12703          	lw	a4,12(sp)
80003bb0:	f00ff3b7          	lui	t2,0xf00ff
80003bb4:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
80003bb8:	24771063          	bne	a4,t2,80003df8 <fail_lw>

80003bbc <lw_test_6>:
80003bbc:	00600193          	li	gp,6
80003bc0:	00ff07b7          	lui	a5,0xff0
80003bc4:	0ff78793          	addi	a5,a5,255 # ff00ff <_size_rom+0xfe73ef>
80003bc8:	0000c117          	auipc	sp,0xc
80003bcc:	4b410113          	addi	sp,sp,1204 # 8001007c <tdat4_lw>
80003bd0:	ff412703          	lw	a4,-12(sp)
80003bd4:	00ff03b7          	lui	t2,0xff0
80003bd8:	0ff38393          	addi	t2,t2,255 # ff00ff <_size_rom+0xfe73ef>
80003bdc:	20771e63          	bne	a4,t2,80003df8 <fail_lw>

80003be0 <lw_test_7>:
80003be0:	00700193          	li	gp,7
80003be4:	ff0107b7          	lui	a5,0xff010
80003be8:	f0078793          	addi	a5,a5,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003bec:	0000c117          	auipc	sp,0xc
80003bf0:	49010113          	addi	sp,sp,1168 # 8001007c <tdat4_lw>
80003bf4:	ff812703          	lw	a4,-8(sp)
80003bf8:	ff0103b7          	lui	t2,0xff010
80003bfc:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003c00:	1e771c63          	bne	a4,t2,80003df8 <fail_lw>

80003c04 <lw_test_8>:
80003c04:	00800193          	li	gp,8
80003c08:	0ff017b7          	lui	a5,0xff01
80003c0c:	ff078793          	addi	a5,a5,-16 # ff00ff0 <_size_rom+0xfef82e0>
80003c10:	0000c117          	auipc	sp,0xc
80003c14:	46c10113          	addi	sp,sp,1132 # 8001007c <tdat4_lw>
80003c18:	ffc12703          	lw	a4,-4(sp)
80003c1c:	0ff013b7          	lui	t2,0xff01
80003c20:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
80003c24:	1c771a63          	bne	a4,t2,80003df8 <fail_lw>

80003c28 <lw_test_9>:
80003c28:	00900193          	li	gp,9
80003c2c:	f00ff7b7          	lui	a5,0xf00ff
80003c30:	00f78793          	addi	a5,a5,15 # f00ff00f <__stack_top+0x700eb013>
80003c34:	0000c117          	auipc	sp,0xc
80003c38:	44810113          	addi	sp,sp,1096 # 8001007c <tdat4_lw>
80003c3c:	00012703          	lw	a4,0(sp)
80003c40:	f00ff3b7          	lui	t2,0xf00ff
80003c44:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
80003c48:	1a771863          	bne	a4,t2,80003df8 <fail_lw>

80003c4c <lw_test_10>:
80003c4c:	00a00193          	li	gp,10
80003c50:	0000c097          	auipc	ra,0xc
80003c54:	42008093          	addi	ra,ra,1056 # 80010070 <begin_signature_lw>
80003c58:	fe008093          	addi	ra,ra,-32
80003c5c:	0200a283          	lw	t0,32(ra)
80003c60:	00ff03b7          	lui	t2,0xff0
80003c64:	0ff38393          	addi	t2,t2,255 # ff00ff <_size_rom+0xfe73ef>
80003c68:	18729863          	bne	t0,t2,80003df8 <fail_lw>

80003c6c <lw_test_11>:
80003c6c:	00b00193          	li	gp,11
80003c70:	0000c097          	auipc	ra,0xc
80003c74:	40008093          	addi	ra,ra,1024 # 80010070 <begin_signature_lw>
80003c78:	ffd08093          	addi	ra,ra,-3
80003c7c:	0070a283          	lw	t0,7(ra)
80003c80:	ff0103b7          	lui	t2,0xff010
80003c84:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003c88:	16729863          	bne	t0,t2,80003df8 <fail_lw>

80003c8c <lw_test_12>:
80003c8c:	00c00193          	li	gp,12
80003c90:	00000213          	li	tp,0

80003c94 <test_12plus8_lw>:
80003c94:	0000c697          	auipc	a3,0xc
80003c98:	3e068693          	addi	a3,a3,992 # 80010074 <tdat2_lw>
80003c9c:	0046a703          	lw	a4,4(a3)
80003ca0:	00070313          	mv	t1,a4
80003ca4:	0ff013b7          	lui	t2,0xff01
80003ca8:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
80003cac:	14731663          	bne	t1,t2,80003df8 <fail_lw>
80003cb0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003cb4:	00200293          	li	t0,2
80003cb8:	fc521ee3          	bne	tp,t0,80003c94 <test_12plus8_lw>

80003cbc <lw_test_13>:
80003cbc:	00d00193          	li	gp,13
80003cc0:	00000213          	li	tp,0

80003cc4 <test_13plus8_lw>:
80003cc4:	0000c697          	auipc	a3,0xc
80003cc8:	3b468693          	addi	a3,a3,948 # 80010078 <tdat3_lw>
80003ccc:	0046a703          	lw	a4,4(a3)
80003cd0:	00000013          	nop
80003cd4:	00070313          	mv	t1,a4
80003cd8:	f00ff3b7          	lui	t2,0xf00ff
80003cdc:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
80003ce0:	10731c63          	bne	t1,t2,80003df8 <fail_lw>
80003ce4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003ce8:	00200293          	li	t0,2
80003cec:	fc521ce3          	bne	tp,t0,80003cc4 <test_13plus8_lw>

80003cf0 <lw_test_14>:
80003cf0:	00e00193          	li	gp,14
80003cf4:	00000213          	li	tp,0

80003cf8 <test_14plus8_lw>:
80003cf8:	0000c697          	auipc	a3,0xc
80003cfc:	37868693          	addi	a3,a3,888 # 80010070 <begin_signature_lw>
80003d00:	0046a703          	lw	a4,4(a3)
80003d04:	00000013          	nop
80003d08:	00000013          	nop
80003d0c:	00070313          	mv	t1,a4
80003d10:	ff0103b7          	lui	t2,0xff010
80003d14:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003d18:	0e731063          	bne	t1,t2,80003df8 <fail_lw>
80003d1c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003d20:	00200293          	li	t0,2
80003d24:	fc521ae3          	bne	tp,t0,80003cf8 <test_14plus8_lw>

80003d28 <lw_test_15>:
80003d28:	00f00193          	li	gp,15
80003d2c:	00000213          	li	tp,0

80003d30 <test_15plus8_lw>:
80003d30:	0000c697          	auipc	a3,0xc
80003d34:	34468693          	addi	a3,a3,836 # 80010074 <tdat2_lw>
80003d38:	0046a703          	lw	a4,4(a3)
80003d3c:	0ff013b7          	lui	t2,0xff01
80003d40:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
80003d44:	0a771a63          	bne	a4,t2,80003df8 <fail_lw>
80003d48:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003d4c:	00200293          	li	t0,2
80003d50:	fe5210e3          	bne	tp,t0,80003d30 <test_15plus8_lw>

80003d54 <lw_test_16>:
80003d54:	01000193          	li	gp,16
80003d58:	00000213          	li	tp,0

80003d5c <test_16plus8_lw>:
80003d5c:	0000c697          	auipc	a3,0xc
80003d60:	31c68693          	addi	a3,a3,796 # 80010078 <tdat3_lw>
80003d64:	00000013          	nop
80003d68:	0046a703          	lw	a4,4(a3)
80003d6c:	f00ff3b7          	lui	t2,0xf00ff
80003d70:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
80003d74:	08771263          	bne	a4,t2,80003df8 <fail_lw>
80003d78:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003d7c:	00200293          	li	t0,2
80003d80:	fc521ee3          	bne	tp,t0,80003d5c <test_16plus8_lw>

80003d84 <lw_test_17>:
80003d84:	01100193          	li	gp,17
80003d88:	00000213          	li	tp,0

80003d8c <test_17plus8_lw>:
80003d8c:	0000c697          	auipc	a3,0xc
80003d90:	2e468693          	addi	a3,a3,740 # 80010070 <begin_signature_lw>
80003d94:	00000013          	nop
80003d98:	00000013          	nop
80003d9c:	0046a703          	lw	a4,4(a3)
80003da0:	ff0103b7          	lui	t2,0xff010
80003da4:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003da8:	04771863          	bne	a4,t2,80003df8 <fail_lw>
80003dac:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003db0:	00200293          	li	t0,2
80003db4:	fc521ce3          	bne	tp,t0,80003d8c <test_17plus8_lw>

80003db8 <lw_test_18>:
80003db8:	01200193          	li	gp,18
80003dbc:	0000c297          	auipc	t0,0xc
80003dc0:	2b428293          	addi	t0,t0,692 # 80010070 <begin_signature_lw>
80003dc4:	0002a103          	lw	sp,0(t0)
80003dc8:	00200113          	li	sp,2
80003dcc:	00200393          	li	t2,2
80003dd0:	02711463          	bne	sp,t2,80003df8 <fail_lw>

80003dd4 <lw_test_19>:
80003dd4:	01300193          	li	gp,19
80003dd8:	0000c297          	auipc	t0,0xc
80003ddc:	29828293          	addi	t0,t0,664 # 80010070 <begin_signature_lw>
80003de0:	0002a103          	lw	sp,0(t0)
80003de4:	00000013          	nop
80003de8:	00200113          	li	sp,2
80003dec:	00200393          	li	t2,2
80003df0:	00711463          	bne	sp,t2,80003df8 <fail_lw>
80003df4:	00c0006f          	j	80003e00 <pass_lw>

80003df8 <fail_lw>:
80003df8:	04d00893          	li	a7,77
80003dfc:	ffdff06f          	j	80003df8 <fail_lw>

80003e00 <pass_lw>:
80003e00:	04200893          	li	a7,66

80003e04 <or_test_2>:
80003e04:	00200193          	li	gp,2
80003e08:	ff0105b7          	lui	a1,0xff010
80003e0c:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003e10:	0f0f1637          	lui	a2,0xf0f1
80003e14:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80003e18:	00c5e733          	or	a4,a1,a2
80003e1c:	ff1003b7          	lui	t2,0xff100
80003e20:	f0f38393          	addi	t2,t2,-241 # ff0fff0f <__stack_top+0x7f0ebf13>
80003e24:	4a771263          	bne	a4,t2,800042c8 <fail_or>

80003e28 <or_test_3>:
80003e28:	00300193          	li	gp,3
80003e2c:	0ff015b7          	lui	a1,0xff01
80003e30:	ff058593          	addi	a1,a1,-16 # ff00ff0 <_size_rom+0xfef82e0>
80003e34:	f0f0f637          	lui	a2,0xf0f0f
80003e38:	0f060613          	addi	a2,a2,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
80003e3c:	00c5e733          	or	a4,a1,a2
80003e40:	fff103b7          	lui	t2,0xfff10
80003e44:	ff038393          	addi	t2,t2,-16 # fff0fff0 <__stack_top+0x7fefbff4>
80003e48:	48771063          	bne	a4,t2,800042c8 <fail_or>

80003e4c <or_test_4>:
80003e4c:	00400193          	li	gp,4
80003e50:	00ff05b7          	lui	a1,0xff0
80003e54:	0ff58593          	addi	a1,a1,255 # ff00ff <_size_rom+0xfe73ef>
80003e58:	0f0f1637          	lui	a2,0xf0f1
80003e5c:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80003e60:	00c5e733          	or	a4,a1,a2
80003e64:	0fff13b7          	lui	t2,0xfff1
80003e68:	fff38393          	addi	t2,t2,-1 # fff0fff <_size_rom+0xffe82ef>
80003e6c:	44771e63          	bne	a4,t2,800042c8 <fail_or>

80003e70 <or_test_5>:
80003e70:	00500193          	li	gp,5
80003e74:	f00ff5b7          	lui	a1,0xf00ff
80003e78:	00f58593          	addi	a1,a1,15 # f00ff00f <__stack_top+0x700eb013>
80003e7c:	f0f0f637          	lui	a2,0xf0f0f
80003e80:	0f060613          	addi	a2,a2,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
80003e84:	00c5e733          	or	a4,a1,a2
80003e88:	f0fff3b7          	lui	t2,0xf0fff
80003e8c:	0ff38393          	addi	t2,t2,255 # f0fff0ff <__stack_top+0x70feb103>
80003e90:	42771c63          	bne	a4,t2,800042c8 <fail_or>

80003e94 <or_test_6>:
80003e94:	00600193          	li	gp,6
80003e98:	ff0105b7          	lui	a1,0xff010
80003e9c:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003ea0:	0f0f1637          	lui	a2,0xf0f1
80003ea4:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80003ea8:	00c5e5b3          	or	a1,a1,a2
80003eac:	ff1003b7          	lui	t2,0xff100
80003eb0:	f0f38393          	addi	t2,t2,-241 # ff0fff0f <__stack_top+0x7f0ebf13>
80003eb4:	40759a63          	bne	a1,t2,800042c8 <fail_or>

80003eb8 <or_test_7>:
80003eb8:	00700193          	li	gp,7
80003ebc:	ff0105b7          	lui	a1,0xff010
80003ec0:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003ec4:	0f0f1637          	lui	a2,0xf0f1
80003ec8:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80003ecc:	00c5e633          	or	a2,a1,a2
80003ed0:	ff1003b7          	lui	t2,0xff100
80003ed4:	f0f38393          	addi	t2,t2,-241 # ff0fff0f <__stack_top+0x7f0ebf13>
80003ed8:	3e761863          	bne	a2,t2,800042c8 <fail_or>

80003edc <or_test_8>:
80003edc:	00800193          	li	gp,8
80003ee0:	ff0105b7          	lui	a1,0xff010
80003ee4:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003ee8:	00b5e5b3          	or	a1,a1,a1
80003eec:	ff0103b7          	lui	t2,0xff010
80003ef0:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003ef4:	3c759a63          	bne	a1,t2,800042c8 <fail_or>

80003ef8 <or_test_9>:
80003ef8:	00900193          	li	gp,9
80003efc:	00000213          	li	tp,0

80003f00 <test_9plus8_or>:
80003f00:	ff0100b7          	lui	ra,0xff010
80003f04:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003f08:	0f0f1137          	lui	sp,0xf0f1
80003f0c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80003f10:	0020e733          	or	a4,ra,sp
80003f14:	00070313          	mv	t1,a4
80003f18:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003f1c:	00200293          	li	t0,2
80003f20:	fe5210e3          	bne	tp,t0,80003f00 <test_9plus8_or>
80003f24:	ff1003b7          	lui	t2,0xff100
80003f28:	f0f38393          	addi	t2,t2,-241 # ff0fff0f <__stack_top+0x7f0ebf13>
80003f2c:	38731e63          	bne	t1,t2,800042c8 <fail_or>

80003f30 <or_test_10>:
80003f30:	00a00193          	li	gp,10
80003f34:	00000213          	li	tp,0

80003f38 <test_10plus8_or>:
80003f38:	0ff010b7          	lui	ra,0xff01
80003f3c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80003f40:	f0f0f137          	lui	sp,0xf0f0f
80003f44:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
80003f48:	0020e733          	or	a4,ra,sp
80003f4c:	00000013          	nop
80003f50:	00070313          	mv	t1,a4
80003f54:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003f58:	00200293          	li	t0,2
80003f5c:	fc521ee3          	bne	tp,t0,80003f38 <test_10plus8_or>
80003f60:	fff103b7          	lui	t2,0xfff10
80003f64:	ff038393          	addi	t2,t2,-16 # fff0fff0 <__stack_top+0x7fefbff4>
80003f68:	36731063          	bne	t1,t2,800042c8 <fail_or>

80003f6c <or_test_11>:
80003f6c:	00b00193          	li	gp,11
80003f70:	00000213          	li	tp,0

80003f74 <test_11plus8_or>:
80003f74:	00ff00b7          	lui	ra,0xff0
80003f78:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80003f7c:	0f0f1137          	lui	sp,0xf0f1
80003f80:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80003f84:	0020e733          	or	a4,ra,sp
80003f88:	00000013          	nop
80003f8c:	00000013          	nop
80003f90:	00070313          	mv	t1,a4
80003f94:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003f98:	00200293          	li	t0,2
80003f9c:	fc521ce3          	bne	tp,t0,80003f74 <test_11plus8_or>
80003fa0:	0fff13b7          	lui	t2,0xfff1
80003fa4:	fff38393          	addi	t2,t2,-1 # fff0fff <_size_rom+0xffe82ef>
80003fa8:	32731063          	bne	t1,t2,800042c8 <fail_or>

80003fac <or_test_12>:
80003fac:	00c00193          	li	gp,12
80003fb0:	00000213          	li	tp,0

80003fb4 <test_12plus8_or>:
80003fb4:	ff0100b7          	lui	ra,0xff010
80003fb8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80003fbc:	0f0f1137          	lui	sp,0xf0f1
80003fc0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80003fc4:	0020e733          	or	a4,ra,sp
80003fc8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80003fcc:	00200293          	li	t0,2
80003fd0:	fe5212e3          	bne	tp,t0,80003fb4 <test_12plus8_or>
80003fd4:	ff1003b7          	lui	t2,0xff100
80003fd8:	f0f38393          	addi	t2,t2,-241 # ff0fff0f <__stack_top+0x7f0ebf13>
80003fdc:	2e771663          	bne	a4,t2,800042c8 <fail_or>

80003fe0 <or_test_13>:
80003fe0:	00d00193          	li	gp,13
80003fe4:	00000213          	li	tp,0

80003fe8 <test_13plus8_or>:
80003fe8:	0ff010b7          	lui	ra,0xff01
80003fec:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80003ff0:	f0f0f137          	lui	sp,0xf0f0f
80003ff4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
80003ff8:	00000013          	nop
80003ffc:	0020e733          	or	a4,ra,sp
80004000:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004004:	00200293          	li	t0,2
80004008:	fe5210e3          	bne	tp,t0,80003fe8 <test_13plus8_or>
8000400c:	fff103b7          	lui	t2,0xfff10
80004010:	ff038393          	addi	t2,t2,-16 # fff0fff0 <__stack_top+0x7fefbff4>
80004014:	2a771a63          	bne	a4,t2,800042c8 <fail_or>

80004018 <or_test_14>:
80004018:	00e00193          	li	gp,14
8000401c:	00000213          	li	tp,0

80004020 <test_14plus8_or>:
80004020:	00ff00b7          	lui	ra,0xff0
80004024:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80004028:	0f0f1137          	lui	sp,0xf0f1
8000402c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80004030:	00000013          	nop
80004034:	00000013          	nop
80004038:	0020e733          	or	a4,ra,sp
8000403c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004040:	00200293          	li	t0,2
80004044:	fc521ee3          	bne	tp,t0,80004020 <test_14plus8_or>
80004048:	0fff13b7          	lui	t2,0xfff1
8000404c:	fff38393          	addi	t2,t2,-1 # fff0fff <_size_rom+0xffe82ef>
80004050:	26771c63          	bne	a4,t2,800042c8 <fail_or>

80004054 <or_test_15>:
80004054:	00f00193          	li	gp,15
80004058:	00000213          	li	tp,0

8000405c <test_15plus8_or>:
8000405c:	ff0100b7          	lui	ra,0xff010
80004060:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80004064:	00000013          	nop
80004068:	0f0f1137          	lui	sp,0xf0f1
8000406c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80004070:	0020e733          	or	a4,ra,sp
80004074:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004078:	00200293          	li	t0,2
8000407c:	fe5210e3          	bne	tp,t0,8000405c <test_15plus8_or>
80004080:	ff1003b7          	lui	t2,0xff100
80004084:	f0f38393          	addi	t2,t2,-241 # ff0fff0f <__stack_top+0x7f0ebf13>
80004088:	24771063          	bne	a4,t2,800042c8 <fail_or>

8000408c <or_test_16>:
8000408c:	01000193          	li	gp,16
80004090:	00000213          	li	tp,0

80004094 <test_16plus8_or>:
80004094:	0ff010b7          	lui	ra,0xff01
80004098:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
8000409c:	00000013          	nop
800040a0:	f0f0f137          	lui	sp,0xf0f0f
800040a4:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
800040a8:	00000013          	nop
800040ac:	0020e733          	or	a4,ra,sp
800040b0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800040b4:	00200293          	li	t0,2
800040b8:	fc521ee3          	bne	tp,t0,80004094 <test_16plus8_or>
800040bc:	fff103b7          	lui	t2,0xfff10
800040c0:	ff038393          	addi	t2,t2,-16 # fff0fff0 <__stack_top+0x7fefbff4>
800040c4:	20771263          	bne	a4,t2,800042c8 <fail_or>

800040c8 <or_test_17>:
800040c8:	01100193          	li	gp,17
800040cc:	00000213          	li	tp,0

800040d0 <test_17plus8_or>:
800040d0:	00ff00b7          	lui	ra,0xff0
800040d4:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
800040d8:	00000013          	nop
800040dc:	00000013          	nop
800040e0:	0f0f1137          	lui	sp,0xf0f1
800040e4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
800040e8:	0020e733          	or	a4,ra,sp
800040ec:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800040f0:	00200293          	li	t0,2
800040f4:	fc521ee3          	bne	tp,t0,800040d0 <test_17plus8_or>
800040f8:	0fff13b7          	lui	t2,0xfff1
800040fc:	fff38393          	addi	t2,t2,-1 # fff0fff <_size_rom+0xffe82ef>
80004100:	1c771463          	bne	a4,t2,800042c8 <fail_or>

80004104 <or_test_18>:
80004104:	01200193          	li	gp,18
80004108:	00000213          	li	tp,0

8000410c <test_18plus8_or>:
8000410c:	0f0f1137          	lui	sp,0xf0f1
80004110:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80004114:	ff0100b7          	lui	ra,0xff010
80004118:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
8000411c:	0020e733          	or	a4,ra,sp
80004120:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004124:	00200293          	li	t0,2
80004128:	fe5212e3          	bne	tp,t0,8000410c <test_18plus8_or>
8000412c:	ff1003b7          	lui	t2,0xff100
80004130:	f0f38393          	addi	t2,t2,-241 # ff0fff0f <__stack_top+0x7f0ebf13>
80004134:	18771a63          	bne	a4,t2,800042c8 <fail_or>

80004138 <or_test_19>:
80004138:	01300193          	li	gp,19
8000413c:	00000213          	li	tp,0

80004140 <test_19plus8_or>:
80004140:	f0f0f137          	lui	sp,0xf0f0f
80004144:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
80004148:	0ff010b7          	lui	ra,0xff01
8000414c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80004150:	00000013          	nop
80004154:	0020e733          	or	a4,ra,sp
80004158:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000415c:	00200293          	li	t0,2
80004160:	fe5210e3          	bne	tp,t0,80004140 <test_19plus8_or>
80004164:	fff103b7          	lui	t2,0xfff10
80004168:	ff038393          	addi	t2,t2,-16 # fff0fff0 <__stack_top+0x7fefbff4>
8000416c:	14771e63          	bne	a4,t2,800042c8 <fail_or>

80004170 <or_test_20>:
80004170:	01400193          	li	gp,20
80004174:	00000213          	li	tp,0

80004178 <test_20plus8_or>:
80004178:	0f0f1137          	lui	sp,0xf0f1
8000417c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80004180:	00ff00b7          	lui	ra,0xff0
80004184:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80004188:	00000013          	nop
8000418c:	00000013          	nop
80004190:	0020e733          	or	a4,ra,sp
80004194:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004198:	00200293          	li	t0,2
8000419c:	fc521ee3          	bne	tp,t0,80004178 <test_20plus8_or>
800041a0:	0fff13b7          	lui	t2,0xfff1
800041a4:	fff38393          	addi	t2,t2,-1 # fff0fff <_size_rom+0xffe82ef>
800041a8:	12771063          	bne	a4,t2,800042c8 <fail_or>

800041ac <or_test_21>:
800041ac:	01500193          	li	gp,21
800041b0:	00000213          	li	tp,0

800041b4 <test_21plus8_or>:
800041b4:	0f0f1137          	lui	sp,0xf0f1
800041b8:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
800041bc:	00000013          	nop
800041c0:	ff0100b7          	lui	ra,0xff010
800041c4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
800041c8:	0020e733          	or	a4,ra,sp
800041cc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800041d0:	00200293          	li	t0,2
800041d4:	fe5210e3          	bne	tp,t0,800041b4 <test_21plus8_or>
800041d8:	ff1003b7          	lui	t2,0xff100
800041dc:	f0f38393          	addi	t2,t2,-241 # ff0fff0f <__stack_top+0x7f0ebf13>
800041e0:	0e771463          	bne	a4,t2,800042c8 <fail_or>

800041e4 <or_test_22>:
800041e4:	01600193          	li	gp,22
800041e8:	00000213          	li	tp,0

800041ec <test_22plus8_or>:
800041ec:	f0f0f137          	lui	sp,0xf0f0f
800041f0:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
800041f4:	00000013          	nop
800041f8:	0ff010b7          	lui	ra,0xff01
800041fc:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80004200:	00000013          	nop
80004204:	0020e733          	or	a4,ra,sp
80004208:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000420c:	00200293          	li	t0,2
80004210:	fc521ee3          	bne	tp,t0,800041ec <test_22plus8_or>
80004214:	fff103b7          	lui	t2,0xfff10
80004218:	ff038393          	addi	t2,t2,-16 # fff0fff0 <__stack_top+0x7fefbff4>
8000421c:	0a771663          	bne	a4,t2,800042c8 <fail_or>

80004220 <or_test_23>:
80004220:	01700193          	li	gp,23
80004224:	00000213          	li	tp,0

80004228 <test_23plus8_or>:
80004228:	0f0f1137          	lui	sp,0xf0f1
8000422c:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80004230:	00000013          	nop
80004234:	00000013          	nop
80004238:	00ff00b7          	lui	ra,0xff0
8000423c:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80004240:	0020e733          	or	a4,ra,sp
80004244:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004248:	00200293          	li	t0,2
8000424c:	fc521ee3          	bne	tp,t0,80004228 <test_23plus8_or>
80004250:	0fff13b7          	lui	t2,0xfff1
80004254:	fff38393          	addi	t2,t2,-1 # fff0fff <_size_rom+0xffe82ef>
80004258:	06771863          	bne	a4,t2,800042c8 <fail_or>

8000425c <or_test_24>:
8000425c:	01800193          	li	gp,24
80004260:	ff0100b7          	lui	ra,0xff010
80004264:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80004268:	00106133          	or	sp,zero,ra
8000426c:	ff0103b7          	lui	t2,0xff010
80004270:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80004274:	04711a63          	bne	sp,t2,800042c8 <fail_or>

80004278 <or_test_25>:
80004278:	01900193          	li	gp,25
8000427c:	00ff00b7          	lui	ra,0xff0
80004280:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80004284:	0000e133          	or	sp,ra,zero
80004288:	00ff03b7          	lui	t2,0xff0
8000428c:	0ff38393          	addi	t2,t2,255 # ff00ff <_size_rom+0xfe73ef>
80004290:	02711c63          	bne	sp,t2,800042c8 <fail_or>

80004294 <or_test_26>:
80004294:	01a00193          	li	gp,26
80004298:	000060b3          	or	ra,zero,zero
8000429c:	00000393          	li	t2,0
800042a0:	02709463          	bne	ra,t2,800042c8 <fail_or>

800042a4 <or_test_27>:
800042a4:	01b00193          	li	gp,27
800042a8:	111110b7          	lui	ra,0x11111
800042ac:	11108093          	addi	ra,ra,273 # 11111111 <_size_rom+0x11108401>
800042b0:	22222137          	lui	sp,0x22222
800042b4:	22210113          	addi	sp,sp,546 # 22222222 <_size_rom+0x22219512>
800042b8:	0020e033          	or	zero,ra,sp
800042bc:	00000393          	li	t2,0
800042c0:	00701463          	bne	zero,t2,800042c8 <fail_or>
800042c4:	00c0006f          	j	800042d0 <pass_or>

800042c8 <fail_or>:
800042c8:	04d00893          	li	a7,77
800042cc:	ffdff06f          	j	800042c8 <fail_or>

800042d0 <pass_or>:
800042d0:	04200893          	li	a7,66

800042d4 <ori_test_2>:
800042d4:	00200193          	li	gp,2
800042d8:	ff0106b7          	lui	a3,0xff010
800042dc:	f0068693          	addi	a3,a3,-256 # ff00ff00 <__stack_top+0x7effbf04>
800042e0:	f0f6e713          	ori	a4,a3,-241
800042e4:	f0f00393          	li	t2,-241
800042e8:	1c771463          	bne	a4,t2,800044b0 <fail_ori>

800042ec <ori_test_3>:
800042ec:	00300193          	li	gp,3
800042f0:	0ff016b7          	lui	a3,0xff01
800042f4:	ff068693          	addi	a3,a3,-16 # ff00ff0 <_size_rom+0xfef82e0>
800042f8:	0f06e713          	ori	a4,a3,240
800042fc:	0ff013b7          	lui	t2,0xff01
80004300:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
80004304:	1a771663          	bne	a4,t2,800044b0 <fail_ori>

80004308 <ori_test_4>:
80004308:	00400193          	li	gp,4
8000430c:	00ff06b7          	lui	a3,0xff0
80004310:	0ff68693          	addi	a3,a3,255 # ff00ff <_size_rom+0xfe73ef>
80004314:	70f6e713          	ori	a4,a3,1807
80004318:	00ff03b7          	lui	t2,0xff0
8000431c:	7ff38393          	addi	t2,t2,2047 # ff07ff <_size_rom+0xfe7aef>
80004320:	18771863          	bne	a4,t2,800044b0 <fail_ori>

80004324 <ori_test_5>:
80004324:	00500193          	li	gp,5
80004328:	f00ff6b7          	lui	a3,0xf00ff
8000432c:	00f68693          	addi	a3,a3,15 # f00ff00f <__stack_top+0x700eb013>
80004330:	0f06e713          	ori	a4,a3,240
80004334:	f00ff3b7          	lui	t2,0xf00ff
80004338:	0ff38393          	addi	t2,t2,255 # f00ff0ff <__stack_top+0x700eb103>
8000433c:	16771a63          	bne	a4,t2,800044b0 <fail_ori>

80004340 <ori_test_6>:
80004340:	00600193          	li	gp,6
80004344:	ff0105b7          	lui	a1,0xff010
80004348:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
8000434c:	0f05e593          	ori	a1,a1,240
80004350:	ff0103b7          	lui	t2,0xff010
80004354:	ff038393          	addi	t2,t2,-16 # ff00fff0 <__stack_top+0x7effbff4>
80004358:	14759c63          	bne	a1,t2,800044b0 <fail_ori>

8000435c <ori_test_7>:
8000435c:	00700193          	li	gp,7
80004360:	00000213          	li	tp,0

80004364 <test_7plus8_ori>:
80004364:	0ff010b7          	lui	ra,0xff01
80004368:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
8000436c:	0f00e713          	ori	a4,ra,240
80004370:	00070313          	mv	t1,a4
80004374:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004378:	00200293          	li	t0,2
8000437c:	fe5214e3          	bne	tp,t0,80004364 <test_7plus8_ori>
80004380:	0ff013b7          	lui	t2,0xff01
80004384:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
80004388:	12731463          	bne	t1,t2,800044b0 <fail_ori>

8000438c <ori_test_8>:
8000438c:	00800193          	li	gp,8
80004390:	00000213          	li	tp,0

80004394 <test_8plus8_ori>:
80004394:	00ff00b7          	lui	ra,0xff0
80004398:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
8000439c:	70f0e713          	ori	a4,ra,1807
800043a0:	00000013          	nop
800043a4:	00070313          	mv	t1,a4
800043a8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800043ac:	00200293          	li	t0,2
800043b0:	fe5212e3          	bne	tp,t0,80004394 <test_8plus8_ori>
800043b4:	00ff03b7          	lui	t2,0xff0
800043b8:	7ff38393          	addi	t2,t2,2047 # ff07ff <_size_rom+0xfe7aef>
800043bc:	0e731a63          	bne	t1,t2,800044b0 <fail_ori>

800043c0 <ori_test_9>:
800043c0:	00900193          	li	gp,9
800043c4:	00000213          	li	tp,0

800043c8 <test_9plus8_ori>:
800043c8:	f00ff0b7          	lui	ra,0xf00ff
800043cc:	00f08093          	addi	ra,ra,15 # f00ff00f <__stack_top+0x700eb013>
800043d0:	0f00e713          	ori	a4,ra,240
800043d4:	00000013          	nop
800043d8:	00000013          	nop
800043dc:	00070313          	mv	t1,a4
800043e0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800043e4:	00200293          	li	t0,2
800043e8:	fe5210e3          	bne	tp,t0,800043c8 <test_9plus8_ori>
800043ec:	f00ff3b7          	lui	t2,0xf00ff
800043f0:	0ff38393          	addi	t2,t2,255 # f00ff0ff <__stack_top+0x700eb103>
800043f4:	0a731e63          	bne	t1,t2,800044b0 <fail_ori>

800043f8 <ori_test_10>:
800043f8:	00a00193          	li	gp,10
800043fc:	00000213          	li	tp,0

80004400 <test_10plus8_ori>:
80004400:	0ff010b7          	lui	ra,0xff01
80004404:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80004408:	0f00e713          	ori	a4,ra,240
8000440c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004410:	00200293          	li	t0,2
80004414:	fe5216e3          	bne	tp,t0,80004400 <test_10plus8_ori>
80004418:	0ff013b7          	lui	t2,0xff01
8000441c:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
80004420:	08771863          	bne	a4,t2,800044b0 <fail_ori>

80004424 <ori_test_11>:
80004424:	00b00193          	li	gp,11
80004428:	00000213          	li	tp,0

8000442c <test_11plus8_ori>:
8000442c:	00ff00b7          	lui	ra,0xff0
80004430:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80004434:	00000013          	nop
80004438:	f0f0e713          	ori	a4,ra,-241
8000443c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004440:	00200293          	li	t0,2
80004444:	fe5214e3          	bne	tp,t0,8000442c <test_11plus8_ori>
80004448:	fff00393          	li	t2,-1
8000444c:	06771263          	bne	a4,t2,800044b0 <fail_ori>

80004450 <ori_test_12>:
80004450:	00c00193          	li	gp,12
80004454:	00000213          	li	tp,0

80004458 <test_12plus8_ori>:
80004458:	f00ff0b7          	lui	ra,0xf00ff
8000445c:	00f08093          	addi	ra,ra,15 # f00ff00f <__stack_top+0x700eb013>
80004460:	00000013          	nop
80004464:	00000013          	nop
80004468:	0f00e713          	ori	a4,ra,240
8000446c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004470:	00200293          	li	t0,2
80004474:	fe5212e3          	bne	tp,t0,80004458 <test_12plus8_ori>
80004478:	f00ff3b7          	lui	t2,0xf00ff
8000447c:	0ff38393          	addi	t2,t2,255 # f00ff0ff <__stack_top+0x700eb103>
80004480:	02771863          	bne	a4,t2,800044b0 <fail_ori>

80004484 <ori_test_13>:
80004484:	00d00193          	li	gp,13
80004488:	0f006093          	ori	ra,zero,240
8000448c:	0f000393          	li	t2,240
80004490:	02709063          	bne	ra,t2,800044b0 <fail_ori>

80004494 <ori_test_14>:
80004494:	00e00193          	li	gp,14
80004498:	00ff00b7          	lui	ra,0xff0
8000449c:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
800044a0:	70f0e013          	ori	zero,ra,1807
800044a4:	00000393          	li	t2,0
800044a8:	00701463          	bne	zero,t2,800044b0 <fail_ori>
800044ac:	00c0006f          	j	800044b8 <pass_ori>

800044b0 <fail_ori>:
800044b0:	04d00893          	li	a7,77
800044b4:	ffdff06f          	j	800044b0 <fail_ori>

800044b8 <pass_ori>:
800044b8:	04200893          	li	a7,66

800044bc <sb_test_2>:
800044bc:	00200193          	li	gp,2
800044c0:	0000c117          	auipc	sp,0xc
800044c4:	bc010113          	addi	sp,sp,-1088 # 80010080 <begin_signature_sb>
800044c8:	faa00093          	li	ra,-86
800044cc:	00000797          	auipc	a5,0x0
800044d0:	01478793          	addi	a5,a5,20 # 800044e0 <sb_test_2+0x24>
800044d4:	00110023          	sb	ra,0(sp)
800044d8:	00010703          	lb	a4,0(sp)
800044dc:	0080006f          	j	800044e4 <test_2plus28_sb>
800044e0:	00008713          	mv	a4,ra

800044e4 <test_2plus28_sb>:
800044e4:	faa00393          	li	t2,-86
800044e8:	44771463          	bne	a4,t2,80004930 <fail_sb>

800044ec <sb_test_3>:
800044ec:	00300193          	li	gp,3
800044f0:	0000c117          	auipc	sp,0xc
800044f4:	b9010113          	addi	sp,sp,-1136 # 80010080 <begin_signature_sb>
800044f8:	00000093          	li	ra,0
800044fc:	00000797          	auipc	a5,0x0
80004500:	01478793          	addi	a5,a5,20 # 80004510 <sb_test_3+0x24>
80004504:	001100a3          	sb	ra,1(sp)
80004508:	00110703          	lb	a4,1(sp)
8000450c:	0080006f          	j	80004514 <test_3plus28_sb>
80004510:	00008713          	mv	a4,ra

80004514 <test_3plus28_sb>:
80004514:	00000393          	li	t2,0
80004518:	40771c63          	bne	a4,t2,80004930 <fail_sb>

8000451c <sb_test_4>:
8000451c:	00400193          	li	gp,4
80004520:	0000c117          	auipc	sp,0xc
80004524:	b6010113          	addi	sp,sp,-1184 # 80010080 <begin_signature_sb>
80004528:	fffff0b7          	lui	ra,0xfffff
8000452c:	fa008093          	addi	ra,ra,-96 # ffffefa0 <__stack_top+0x7ffeafa4>
80004530:	00000797          	auipc	a5,0x0
80004534:	01478793          	addi	a5,a5,20 # 80004544 <sb_test_4+0x28>
80004538:	00110123          	sb	ra,2(sp)
8000453c:	00211703          	lh	a4,2(sp)
80004540:	0080006f          	j	80004548 <test_4plus2c_sb>
80004544:	00008713          	mv	a4,ra

80004548 <test_4plus2c_sb>:
80004548:	fffff3b7          	lui	t2,0xfffff
8000454c:	fa038393          	addi	t2,t2,-96 # ffffefa0 <__stack_top+0x7ffeafa4>
80004550:	3e771063          	bne	a4,t2,80004930 <fail_sb>

80004554 <sb_test_5>:
80004554:	00500193          	li	gp,5
80004558:	0000c117          	auipc	sp,0xc
8000455c:	b2810113          	addi	sp,sp,-1240 # 80010080 <begin_signature_sb>
80004560:	00a00093          	li	ra,10
80004564:	00000797          	auipc	a5,0x0
80004568:	01478793          	addi	a5,a5,20 # 80004578 <sb_test_5+0x24>
8000456c:	001101a3          	sb	ra,3(sp)
80004570:	00310703          	lb	a4,3(sp)
80004574:	0080006f          	j	8000457c <test_5plus28_sb>
80004578:	00008713          	mv	a4,ra

8000457c <test_5plus28_sb>:
8000457c:	00a00393          	li	t2,10
80004580:	3a771863          	bne	a4,t2,80004930 <fail_sb>

80004584 <sb_test_6>:
80004584:	00600193          	li	gp,6
80004588:	0000c117          	auipc	sp,0xc
8000458c:	aff10113          	addi	sp,sp,-1281 # 80010087 <tdat8_sb>
80004590:	faa00093          	li	ra,-86
80004594:	00000797          	auipc	a5,0x0
80004598:	01478793          	addi	a5,a5,20 # 800045a8 <sb_test_6+0x24>
8000459c:	fe110ea3          	sb	ra,-3(sp)
800045a0:	ffd10703          	lb	a4,-3(sp)
800045a4:	0080006f          	j	800045ac <test_6plus28_sb>
800045a8:	00008713          	mv	a4,ra

800045ac <test_6plus28_sb>:
800045ac:	faa00393          	li	t2,-86
800045b0:	38771063          	bne	a4,t2,80004930 <fail_sb>

800045b4 <sb_test_7>:
800045b4:	00700193          	li	gp,7
800045b8:	0000c117          	auipc	sp,0xc
800045bc:	acf10113          	addi	sp,sp,-1329 # 80010087 <tdat8_sb>
800045c0:	00000093          	li	ra,0
800045c4:	00000797          	auipc	a5,0x0
800045c8:	01478793          	addi	a5,a5,20 # 800045d8 <sb_test_7+0x24>
800045cc:	fe110f23          	sb	ra,-2(sp)
800045d0:	ffe10703          	lb	a4,-2(sp)
800045d4:	0080006f          	j	800045dc <test_7plus28_sb>
800045d8:	00008713          	mv	a4,ra

800045dc <test_7plus28_sb>:
800045dc:	00000393          	li	t2,0
800045e0:	34771863          	bne	a4,t2,80004930 <fail_sb>

800045e4 <sb_test_8>:
800045e4:	00800193          	li	gp,8
800045e8:	0000c117          	auipc	sp,0xc
800045ec:	a9f10113          	addi	sp,sp,-1377 # 80010087 <tdat8_sb>
800045f0:	fa000093          	li	ra,-96
800045f4:	00000797          	auipc	a5,0x0
800045f8:	01478793          	addi	a5,a5,20 # 80004608 <sb_test_8+0x24>
800045fc:	fe110fa3          	sb	ra,-1(sp)
80004600:	fff10703          	lb	a4,-1(sp)
80004604:	0080006f          	j	8000460c <test_8plus28_sb>
80004608:	00008713          	mv	a4,ra

8000460c <test_8plus28_sb>:
8000460c:	fa000393          	li	t2,-96
80004610:	32771063          	bne	a4,t2,80004930 <fail_sb>

80004614 <sb_test_9>:
80004614:	00900193          	li	gp,9
80004618:	0000c117          	auipc	sp,0xc
8000461c:	a6f10113          	addi	sp,sp,-1425 # 80010087 <tdat8_sb>
80004620:	00a00093          	li	ra,10
80004624:	00000797          	auipc	a5,0x0
80004628:	01478793          	addi	a5,a5,20 # 80004638 <sb_test_9+0x24>
8000462c:	00110023          	sb	ra,0(sp)
80004630:	00010703          	lb	a4,0(sp)
80004634:	0080006f          	j	8000463c <test_9plus28_sb>
80004638:	00008713          	mv	a4,ra

8000463c <test_9plus28_sb>:
8000463c:	00a00393          	li	t2,10
80004640:	2e771863          	bne	a4,t2,80004930 <fail_sb>

80004644 <sb_test_10>:
80004644:	00a00193          	li	gp,10
80004648:	0000c097          	auipc	ra,0xc
8000464c:	a4008093          	addi	ra,ra,-1472 # 80010088 <tdat9_sb>
80004650:	12345137          	lui	sp,0x12345
80004654:	67810113          	addi	sp,sp,1656 # 12345678 <_size_rom+0x1233c968>
80004658:	fe008213          	addi	tp,ra,-32
8000465c:	02220023          	sb	sp,32(tp) # 20 <_size_rom-0x8cf0>
80004660:	00008283          	lb	t0,0(ra)
80004664:	07800393          	li	t2,120
80004668:	2c729463          	bne	t0,t2,80004930 <fail_sb>

8000466c <sb_test_11>:
8000466c:	00b00193          	li	gp,11
80004670:	0000c097          	auipc	ra,0xc
80004674:	a1808093          	addi	ra,ra,-1512 # 80010088 <tdat9_sb>
80004678:	00003137          	lui	sp,0x3
8000467c:	09810113          	addi	sp,sp,152 # 3098 <_size_rom-0x5c78>
80004680:	ffa08093          	addi	ra,ra,-6
80004684:	002083a3          	sb	sp,7(ra)
80004688:	0000c217          	auipc	tp,0xc
8000468c:	a0120213          	addi	tp,tp,-1535 # 80010089 <tdat10_sb>
80004690:	00020283          	lb	t0,0(tp) # 0 <_size_rom-0x8d10>
80004694:	f9800393          	li	t2,-104
80004698:	28729c63          	bne	t0,t2,80004930 <fail_sb>

8000469c <sb_test_12>:
8000469c:	00c00193          	li	gp,12
800046a0:	00000213          	li	tp,0

800046a4 <test_12plus8_sb>:
800046a4:	fdd00693          	li	a3,-35
800046a8:	0000c617          	auipc	a2,0xc
800046ac:	9d860613          	addi	a2,a2,-1576 # 80010080 <begin_signature_sb>
800046b0:	00d60023          	sb	a3,0(a2)
800046b4:	00060703          	lb	a4,0(a2)
800046b8:	fdd00393          	li	t2,-35
800046bc:	26771a63          	bne	a4,t2,80004930 <fail_sb>
800046c0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800046c4:	00200293          	li	t0,2
800046c8:	fc521ee3          	bne	tp,t0,800046a4 <test_12plus8_sb>

800046cc <sb_test_13>:
800046cc:	00d00193          	li	gp,13
800046d0:	00000213          	li	tp,0

800046d4 <test_13plus8_sb>:
800046d4:	fcd00693          	li	a3,-51
800046d8:	0000c617          	auipc	a2,0xc
800046dc:	9a860613          	addi	a2,a2,-1624 # 80010080 <begin_signature_sb>
800046e0:	00000013          	nop
800046e4:	00d600a3          	sb	a3,1(a2)
800046e8:	00160703          	lb	a4,1(a2)
800046ec:	fcd00393          	li	t2,-51
800046f0:	24771063          	bne	a4,t2,80004930 <fail_sb>
800046f4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800046f8:	00200293          	li	t0,2
800046fc:	fc521ce3          	bne	tp,t0,800046d4 <test_13plus8_sb>

80004700 <sb_test_14>:
80004700:	00e00193          	li	gp,14
80004704:	00000213          	li	tp,0

80004708 <test_14plus8_sb>:
80004708:	fcc00693          	li	a3,-52
8000470c:	0000c617          	auipc	a2,0xc
80004710:	97460613          	addi	a2,a2,-1676 # 80010080 <begin_signature_sb>
80004714:	00000013          	nop
80004718:	00000013          	nop
8000471c:	00d60123          	sb	a3,2(a2)
80004720:	00260703          	lb	a4,2(a2)
80004724:	fcc00393          	li	t2,-52
80004728:	20771463          	bne	a4,t2,80004930 <fail_sb>
8000472c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004730:	00200293          	li	t0,2
80004734:	fc521ae3          	bne	tp,t0,80004708 <test_14plus8_sb>

80004738 <sb_test_15>:
80004738:	00f00193          	li	gp,15
8000473c:	00000213          	li	tp,0

80004740 <test_15plus8_sb>:
80004740:	fbc00693          	li	a3,-68
80004744:	00000013          	nop
80004748:	0000c617          	auipc	a2,0xc
8000474c:	93860613          	addi	a2,a2,-1736 # 80010080 <begin_signature_sb>
80004750:	00d601a3          	sb	a3,3(a2)
80004754:	00360703          	lb	a4,3(a2)
80004758:	fbc00393          	li	t2,-68
8000475c:	1c771a63          	bne	a4,t2,80004930 <fail_sb>
80004760:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004764:	00200293          	li	t0,2
80004768:	fc521ce3          	bne	tp,t0,80004740 <test_15plus8_sb>

8000476c <sb_test_16>:
8000476c:	01000193          	li	gp,16
80004770:	00000213          	li	tp,0

80004774 <test_16plus8_sb>:
80004774:	fbb00693          	li	a3,-69
80004778:	00000013          	nop
8000477c:	0000c617          	auipc	a2,0xc
80004780:	90460613          	addi	a2,a2,-1788 # 80010080 <begin_signature_sb>
80004784:	00000013          	nop
80004788:	00d60223          	sb	a3,4(a2)
8000478c:	00460703          	lb	a4,4(a2)
80004790:	fbb00393          	li	t2,-69
80004794:	18771e63          	bne	a4,t2,80004930 <fail_sb>
80004798:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000479c:	00200293          	li	t0,2
800047a0:	fc521ae3          	bne	tp,t0,80004774 <test_16plus8_sb>

800047a4 <sb_test_17>:
800047a4:	01100193          	li	gp,17
800047a8:	00000213          	li	tp,0

800047ac <test_17plus8_sb>:
800047ac:	fab00693          	li	a3,-85
800047b0:	00000013          	nop
800047b4:	00000013          	nop
800047b8:	0000c617          	auipc	a2,0xc
800047bc:	8c860613          	addi	a2,a2,-1848 # 80010080 <begin_signature_sb>
800047c0:	00d602a3          	sb	a3,5(a2)
800047c4:	00560703          	lb	a4,5(a2)
800047c8:	fab00393          	li	t2,-85
800047cc:	16771263          	bne	a4,t2,80004930 <fail_sb>
800047d0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800047d4:	00200293          	li	t0,2
800047d8:	fc521ae3          	bne	tp,t0,800047ac <test_17plus8_sb>

800047dc <sb_test_18>:
800047dc:	01200193          	li	gp,18
800047e0:	00000213          	li	tp,0

800047e4 <test_18plus8_sb>:
800047e4:	0000c117          	auipc	sp,0xc
800047e8:	89c10113          	addi	sp,sp,-1892 # 80010080 <begin_signature_sb>
800047ec:	03300093          	li	ra,51
800047f0:	00110023          	sb	ra,0(sp)
800047f4:	00010703          	lb	a4,0(sp)
800047f8:	03300393          	li	t2,51
800047fc:	12771a63          	bne	a4,t2,80004930 <fail_sb>
80004800:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004804:	00200293          	li	t0,2
80004808:	fc521ee3          	bne	tp,t0,800047e4 <test_18plus8_sb>

8000480c <sb_test_19>:
8000480c:	01300193          	li	gp,19
80004810:	00000213          	li	tp,0

80004814 <test_19plus8_sb>:
80004814:	0000c117          	auipc	sp,0xc
80004818:	86c10113          	addi	sp,sp,-1940 # 80010080 <begin_signature_sb>
8000481c:	02300093          	li	ra,35
80004820:	00000013          	nop
80004824:	001100a3          	sb	ra,1(sp)
80004828:	00110703          	lb	a4,1(sp)
8000482c:	02300393          	li	t2,35
80004830:	10771063          	bne	a4,t2,80004930 <fail_sb>
80004834:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004838:	00200293          	li	t0,2
8000483c:	fc521ce3          	bne	tp,t0,80004814 <test_19plus8_sb>

80004840 <sb_test_20>:
80004840:	01400193          	li	gp,20
80004844:	00000213          	li	tp,0

80004848 <test_20plus8_sb>:
80004848:	0000c117          	auipc	sp,0xc
8000484c:	83810113          	addi	sp,sp,-1992 # 80010080 <begin_signature_sb>
80004850:	02200093          	li	ra,34
80004854:	00000013          	nop
80004858:	00000013          	nop
8000485c:	00110123          	sb	ra,2(sp)
80004860:	00210703          	lb	a4,2(sp)
80004864:	02200393          	li	t2,34
80004868:	0c771463          	bne	a4,t2,80004930 <fail_sb>
8000486c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004870:	00200293          	li	t0,2
80004874:	fc521ae3          	bne	tp,t0,80004848 <test_20plus8_sb>

80004878 <sb_test_21>:
80004878:	01500193          	li	gp,21
8000487c:	00000213          	li	tp,0

80004880 <test_21plus8_sb>:
80004880:	0000c117          	auipc	sp,0xc
80004884:	80010113          	addi	sp,sp,-2048 # 80010080 <begin_signature_sb>
80004888:	00000013          	nop
8000488c:	01200093          	li	ra,18
80004890:	001101a3          	sb	ra,3(sp)
80004894:	00310703          	lb	a4,3(sp)
80004898:	01200393          	li	t2,18
8000489c:	08771a63          	bne	a4,t2,80004930 <fail_sb>
800048a0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800048a4:	00200293          	li	t0,2
800048a8:	fc521ce3          	bne	tp,t0,80004880 <test_21plus8_sb>

800048ac <sb_test_22>:
800048ac:	01600193          	li	gp,22
800048b0:	00000213          	li	tp,0

800048b4 <test_22plus8_sb>:
800048b4:	0000b117          	auipc	sp,0xb
800048b8:	7cc10113          	addi	sp,sp,1996 # 80010080 <begin_signature_sb>
800048bc:	00000013          	nop
800048c0:	01100093          	li	ra,17
800048c4:	00000013          	nop
800048c8:	00110223          	sb	ra,4(sp)
800048cc:	00410703          	lb	a4,4(sp)
800048d0:	01100393          	li	t2,17
800048d4:	04771e63          	bne	a4,t2,80004930 <fail_sb>
800048d8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800048dc:	00200293          	li	t0,2
800048e0:	fc521ae3          	bne	tp,t0,800048b4 <test_22plus8_sb>

800048e4 <sb_test_23>:
800048e4:	01700193          	li	gp,23
800048e8:	00000213          	li	tp,0

800048ec <test_23plus8_sb>:
800048ec:	0000b117          	auipc	sp,0xb
800048f0:	79410113          	addi	sp,sp,1940 # 80010080 <begin_signature_sb>
800048f4:	00000013          	nop
800048f8:	00000013          	nop
800048fc:	00100093          	li	ra,1
80004900:	001102a3          	sb	ra,5(sp)
80004904:	00510703          	lb	a4,5(sp)
80004908:	00100393          	li	t2,1
8000490c:	02771263          	bne	a4,t2,80004930 <fail_sb>
80004910:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004914:	00200293          	li	t0,2
80004918:	fc521ae3          	bne	tp,t0,800048ec <test_23plus8_sb>
8000491c:	0ef00513          	li	a0,239
80004920:	0000b597          	auipc	a1,0xb
80004924:	76058593          	addi	a1,a1,1888 # 80010080 <begin_signature_sb>
80004928:	00a581a3          	sb	a0,3(a1)
8000492c:	00c0006f          	j	80004938 <pass_sb>

80004930 <fail_sb>:
80004930:	04d00893          	li	a7,77
80004934:	ffdff06f          	j	80004930 <fail_sb>

80004938 <pass_sb>:
80004938:	04200893          	li	a7,66

8000493c <sh_test_2>:
8000493c:	00200193          	li	gp,2
80004940:	0000b117          	auipc	sp,0xb
80004944:	75010113          	addi	sp,sp,1872 # 80010090 <begin_signature_sh>
80004948:	0aa00093          	li	ra,170
8000494c:	00000797          	auipc	a5,0x0
80004950:	01478793          	addi	a5,a5,20 # 80004960 <sh_test_2+0x24>
80004954:	00111023          	sh	ra,0(sp)
80004958:	00011703          	lh	a4,0(sp)
8000495c:	0080006f          	j	80004964 <test_2plus28_sh>
80004960:	00008713          	mv	a4,ra

80004964 <test_2plus28_sh>:
80004964:	0aa00393          	li	t2,170
80004968:	4c771663          	bne	a4,t2,80004e34 <fail_sh>

8000496c <sh_test_3>:
8000496c:	00300193          	li	gp,3
80004970:	0000b117          	auipc	sp,0xb
80004974:	72010113          	addi	sp,sp,1824 # 80010090 <begin_signature_sh>
80004978:	ffffb0b7          	lui	ra,0xffffb
8000497c:	a0008093          	addi	ra,ra,-1536 # ffffaa00 <__stack_top+0x7ffe6a04>
80004980:	00000797          	auipc	a5,0x0
80004984:	01478793          	addi	a5,a5,20 # 80004994 <sh_test_3+0x28>
80004988:	00111123          	sh	ra,2(sp)
8000498c:	00211703          	lh	a4,2(sp)
80004990:	0080006f          	j	80004998 <test_3plus2c_sh>
80004994:	00008713          	mv	a4,ra

80004998 <test_3plus2c_sh>:
80004998:	ffffb3b7          	lui	t2,0xffffb
8000499c:	a0038393          	addi	t2,t2,-1536 # ffffaa00 <__stack_top+0x7ffe6a04>
800049a0:	48771a63          	bne	a4,t2,80004e34 <fail_sh>

800049a4 <sh_test_4>:
800049a4:	00400193          	li	gp,4
800049a8:	0000b117          	auipc	sp,0xb
800049ac:	6e810113          	addi	sp,sp,1768 # 80010090 <begin_signature_sh>
800049b0:	beef10b7          	lui	ra,0xbeef1
800049b4:	aa008093          	addi	ra,ra,-1376 # beef0aa0 <__stack_top+0x3eedcaa4>
800049b8:	00000797          	auipc	a5,0x0
800049bc:	01478793          	addi	a5,a5,20 # 800049cc <sh_test_4+0x28>
800049c0:	00111223          	sh	ra,4(sp)
800049c4:	00412703          	lw	a4,4(sp)
800049c8:	0080006f          	j	800049d0 <test_4plus2c_sh>
800049cc:	00008713          	mv	a4,ra

800049d0 <test_4plus2c_sh>:
800049d0:	beef13b7          	lui	t2,0xbeef1
800049d4:	aa038393          	addi	t2,t2,-1376 # beef0aa0 <__stack_top+0x3eedcaa4>
800049d8:	44771e63          	bne	a4,t2,80004e34 <fail_sh>

800049dc <sh_test_5>:
800049dc:	00500193          	li	gp,5
800049e0:	0000b117          	auipc	sp,0xb
800049e4:	6b010113          	addi	sp,sp,1712 # 80010090 <begin_signature_sh>
800049e8:	ffffa0b7          	lui	ra,0xffffa
800049ec:	00a08093          	addi	ra,ra,10 # ffffa00a <__stack_top+0x7ffe600e>
800049f0:	00000797          	auipc	a5,0x0
800049f4:	01478793          	addi	a5,a5,20 # 80004a04 <sh_test_5+0x28>
800049f8:	00111323          	sh	ra,6(sp)
800049fc:	00611703          	lh	a4,6(sp)
80004a00:	0080006f          	j	80004a08 <test_5plus2c_sh>
80004a04:	00008713          	mv	a4,ra

80004a08 <test_5plus2c_sh>:
80004a08:	ffffa3b7          	lui	t2,0xffffa
80004a0c:	00a38393          	addi	t2,t2,10 # ffffa00a <__stack_top+0x7ffe600e>
80004a10:	42771263          	bne	a4,t2,80004e34 <fail_sh>

80004a14 <sh_test_6>:
80004a14:	00600193          	li	gp,6
80004a18:	0000b117          	auipc	sp,0xb
80004a1c:	68610113          	addi	sp,sp,1670 # 8001009e <tdat8_sh>
80004a20:	0aa00093          	li	ra,170
80004a24:	00000797          	auipc	a5,0x0
80004a28:	01478793          	addi	a5,a5,20 # 80004a38 <sh_test_6+0x24>
80004a2c:	fe111d23          	sh	ra,-6(sp)
80004a30:	ffa11703          	lh	a4,-6(sp)
80004a34:	0080006f          	j	80004a3c <test_6plus28_sh>
80004a38:	00008713          	mv	a4,ra

80004a3c <test_6plus28_sh>:
80004a3c:	0aa00393          	li	t2,170
80004a40:	3e771a63          	bne	a4,t2,80004e34 <fail_sh>

80004a44 <sh_test_7>:
80004a44:	00700193          	li	gp,7
80004a48:	0000b117          	auipc	sp,0xb
80004a4c:	65610113          	addi	sp,sp,1622 # 8001009e <tdat8_sh>
80004a50:	ffffb0b7          	lui	ra,0xffffb
80004a54:	a0008093          	addi	ra,ra,-1536 # ffffaa00 <__stack_top+0x7ffe6a04>
80004a58:	00000797          	auipc	a5,0x0
80004a5c:	01478793          	addi	a5,a5,20 # 80004a6c <sh_test_7+0x28>
80004a60:	fe111e23          	sh	ra,-4(sp)
80004a64:	ffc11703          	lh	a4,-4(sp)
80004a68:	0080006f          	j	80004a70 <test_7plus2c_sh>
80004a6c:	00008713          	mv	a4,ra

80004a70 <test_7plus2c_sh>:
80004a70:	ffffb3b7          	lui	t2,0xffffb
80004a74:	a0038393          	addi	t2,t2,-1536 # ffffaa00 <__stack_top+0x7ffe6a04>
80004a78:	3a771e63          	bne	a4,t2,80004e34 <fail_sh>

80004a7c <sh_test_8>:
80004a7c:	00800193          	li	gp,8
80004a80:	0000b117          	auipc	sp,0xb
80004a84:	61e10113          	addi	sp,sp,1566 # 8001009e <tdat8_sh>
80004a88:	000010b7          	lui	ra,0x1
80004a8c:	aa008093          	addi	ra,ra,-1376 # aa0 <_size_rom-0x8270>
80004a90:	00000797          	auipc	a5,0x0
80004a94:	01478793          	addi	a5,a5,20 # 80004aa4 <sh_test_8+0x28>
80004a98:	fe111f23          	sh	ra,-2(sp)
80004a9c:	ffe11703          	lh	a4,-2(sp)
80004aa0:	0080006f          	j	80004aa8 <test_8plus2c_sh>
80004aa4:	00008713          	mv	a4,ra

80004aa8 <test_8plus2c_sh>:
80004aa8:	000013b7          	lui	t2,0x1
80004aac:	aa038393          	addi	t2,t2,-1376 # aa0 <_size_rom-0x8270>
80004ab0:	38771263          	bne	a4,t2,80004e34 <fail_sh>

80004ab4 <sh_test_9>:
80004ab4:	00900193          	li	gp,9
80004ab8:	0000b117          	auipc	sp,0xb
80004abc:	5e610113          	addi	sp,sp,1510 # 8001009e <tdat8_sh>
80004ac0:	ffffa0b7          	lui	ra,0xffffa
80004ac4:	00a08093          	addi	ra,ra,10 # ffffa00a <__stack_top+0x7ffe600e>
80004ac8:	00000797          	auipc	a5,0x0
80004acc:	01478793          	addi	a5,a5,20 # 80004adc <sh_test_9+0x28>
80004ad0:	00111023          	sh	ra,0(sp)
80004ad4:	00011703          	lh	a4,0(sp)
80004ad8:	0080006f          	j	80004ae0 <test_9plus2c_sh>
80004adc:	00008713          	mv	a4,ra

80004ae0 <test_9plus2c_sh>:
80004ae0:	ffffa3b7          	lui	t2,0xffffa
80004ae4:	00a38393          	addi	t2,t2,10 # ffffa00a <__stack_top+0x7ffe600e>
80004ae8:	34771663          	bne	a4,t2,80004e34 <fail_sh>

80004aec <sh_test_10>:
80004aec:	00a00193          	li	gp,10
80004af0:	0000b097          	auipc	ra,0xb
80004af4:	5b008093          	addi	ra,ra,1456 # 800100a0 <tdat9_sh>
80004af8:	12345137          	lui	sp,0x12345
80004afc:	67810113          	addi	sp,sp,1656 # 12345678 <_size_rom+0x1233c968>
80004b00:	fe008213          	addi	tp,ra,-32
80004b04:	02221023          	sh	sp,32(tp) # 20 <_size_rom-0x8cf0>
80004b08:	00009283          	lh	t0,0(ra)
80004b0c:	000053b7          	lui	t2,0x5
80004b10:	67838393          	addi	t2,t2,1656 # 5678 <_size_rom-0x3698>
80004b14:	32729063          	bne	t0,t2,80004e34 <fail_sh>

80004b18 <sh_test_11>:
80004b18:	00b00193          	li	gp,11
80004b1c:	0000b097          	auipc	ra,0xb
80004b20:	58408093          	addi	ra,ra,1412 # 800100a0 <tdat9_sh>
80004b24:	00003137          	lui	sp,0x3
80004b28:	09810113          	addi	sp,sp,152 # 3098 <_size_rom-0x5c78>
80004b2c:	ffb08093          	addi	ra,ra,-5
80004b30:	002093a3          	sh	sp,7(ra)
80004b34:	0000b217          	auipc	tp,0xb
80004b38:	56e20213          	addi	tp,tp,1390 # 800100a2 <tdat10_sh>
80004b3c:	00021283          	lh	t0,0(tp) # 0 <_size_rom-0x8d10>
80004b40:	000033b7          	lui	t2,0x3
80004b44:	09838393          	addi	t2,t2,152 # 3098 <_size_rom-0x5c78>
80004b48:	2e729663          	bne	t0,t2,80004e34 <fail_sh>

80004b4c <sh_test_12>:
80004b4c:	00c00193          	li	gp,12
80004b50:	00000213          	li	tp,0

80004b54 <test_12plus8_sh>:
80004b54:	ffffd6b7          	lui	a3,0xffffd
80004b58:	cdd68693          	addi	a3,a3,-803 # ffffccdd <__stack_top+0x7ffe8ce1>
80004b5c:	0000b617          	auipc	a2,0xb
80004b60:	53460613          	addi	a2,a2,1332 # 80010090 <begin_signature_sh>
80004b64:	00d61023          	sh	a3,0(a2)
80004b68:	00061703          	lh	a4,0(a2)
80004b6c:	ffffd3b7          	lui	t2,0xffffd
80004b70:	cdd38393          	addi	t2,t2,-803 # ffffccdd <__stack_top+0x7ffe8ce1>
80004b74:	2c771063          	bne	a4,t2,80004e34 <fail_sh>
80004b78:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004b7c:	00200293          	li	t0,2
80004b80:	fc521ae3          	bne	tp,t0,80004b54 <test_12plus8_sh>

80004b84 <sh_test_13>:
80004b84:	00d00193          	li	gp,13
80004b88:	00000213          	li	tp,0

80004b8c <test_13plus8_sh>:
80004b8c:	ffffc6b7          	lui	a3,0xffffc
80004b90:	ccd68693          	addi	a3,a3,-819 # ffffbccd <__stack_top+0x7ffe7cd1>
80004b94:	0000b617          	auipc	a2,0xb
80004b98:	4fc60613          	addi	a2,a2,1276 # 80010090 <begin_signature_sh>
80004b9c:	00000013          	nop
80004ba0:	00d61123          	sh	a3,2(a2)
80004ba4:	00261703          	lh	a4,2(a2)
80004ba8:	ffffc3b7          	lui	t2,0xffffc
80004bac:	ccd38393          	addi	t2,t2,-819 # ffffbccd <__stack_top+0x7ffe7cd1>
80004bb0:	28771263          	bne	a4,t2,80004e34 <fail_sh>
80004bb4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004bb8:	00200293          	li	t0,2
80004bbc:	fc5218e3          	bne	tp,t0,80004b8c <test_13plus8_sh>

80004bc0 <sh_test_14>:
80004bc0:	00e00193          	li	gp,14
80004bc4:	00000213          	li	tp,0

80004bc8 <test_14plus8_sh>:
80004bc8:	ffffc6b7          	lui	a3,0xffffc
80004bcc:	bcc68693          	addi	a3,a3,-1076 # ffffbbcc <__stack_top+0x7ffe7bd0>
80004bd0:	0000b617          	auipc	a2,0xb
80004bd4:	4c060613          	addi	a2,a2,1216 # 80010090 <begin_signature_sh>
80004bd8:	00000013          	nop
80004bdc:	00000013          	nop
80004be0:	00d61223          	sh	a3,4(a2)
80004be4:	00461703          	lh	a4,4(a2)
80004be8:	ffffc3b7          	lui	t2,0xffffc
80004bec:	bcc38393          	addi	t2,t2,-1076 # ffffbbcc <__stack_top+0x7ffe7bd0>
80004bf0:	24771263          	bne	a4,t2,80004e34 <fail_sh>
80004bf4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004bf8:	00200293          	li	t0,2
80004bfc:	fc5216e3          	bne	tp,t0,80004bc8 <test_14plus8_sh>

80004c00 <sh_test_15>:
80004c00:	00f00193          	li	gp,15
80004c04:	00000213          	li	tp,0

80004c08 <test_15plus8_sh>:
80004c08:	ffffb6b7          	lui	a3,0xffffb
80004c0c:	bbc68693          	addi	a3,a3,-1092 # ffffabbc <__stack_top+0x7ffe6bc0>
80004c10:	00000013          	nop
80004c14:	0000b617          	auipc	a2,0xb
80004c18:	47c60613          	addi	a2,a2,1148 # 80010090 <begin_signature_sh>
80004c1c:	00d61323          	sh	a3,6(a2)
80004c20:	00661703          	lh	a4,6(a2)
80004c24:	ffffb3b7          	lui	t2,0xffffb
80004c28:	bbc38393          	addi	t2,t2,-1092 # ffffabbc <__stack_top+0x7ffe6bc0>
80004c2c:	20771463          	bne	a4,t2,80004e34 <fail_sh>
80004c30:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004c34:	00200293          	li	t0,2
80004c38:	fc5218e3          	bne	tp,t0,80004c08 <test_15plus8_sh>

80004c3c <sh_test_16>:
80004c3c:	01000193          	li	gp,16
80004c40:	00000213          	li	tp,0

80004c44 <test_16plus8_sh>:
80004c44:	ffffb6b7          	lui	a3,0xffffb
80004c48:	abb68693          	addi	a3,a3,-1349 # ffffaabb <__stack_top+0x7ffe6abf>
80004c4c:	00000013          	nop
80004c50:	0000b617          	auipc	a2,0xb
80004c54:	44060613          	addi	a2,a2,1088 # 80010090 <begin_signature_sh>
80004c58:	00000013          	nop
80004c5c:	00d61423          	sh	a3,8(a2)
80004c60:	00861703          	lh	a4,8(a2)
80004c64:	ffffb3b7          	lui	t2,0xffffb
80004c68:	abb38393          	addi	t2,t2,-1349 # ffffaabb <__stack_top+0x7ffe6abf>
80004c6c:	1c771463          	bne	a4,t2,80004e34 <fail_sh>
80004c70:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004c74:	00200293          	li	t0,2
80004c78:	fc5216e3          	bne	tp,t0,80004c44 <test_16plus8_sh>

80004c7c <sh_test_17>:
80004c7c:	01100193          	li	gp,17
80004c80:	00000213          	li	tp,0

80004c84 <test_17plus8_sh>:
80004c84:	ffffe6b7          	lui	a3,0xffffe
80004c88:	aab68693          	addi	a3,a3,-1365 # ffffdaab <__stack_top+0x7ffe9aaf>
80004c8c:	00000013          	nop
80004c90:	00000013          	nop
80004c94:	0000b617          	auipc	a2,0xb
80004c98:	3fc60613          	addi	a2,a2,1020 # 80010090 <begin_signature_sh>
80004c9c:	00d61523          	sh	a3,10(a2)
80004ca0:	00a61703          	lh	a4,10(a2)
80004ca4:	ffffe3b7          	lui	t2,0xffffe
80004ca8:	aab38393          	addi	t2,t2,-1365 # ffffdaab <__stack_top+0x7ffe9aaf>
80004cac:	18771463          	bne	a4,t2,80004e34 <fail_sh>
80004cb0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004cb4:	00200293          	li	t0,2
80004cb8:	fc5216e3          	bne	tp,t0,80004c84 <test_17plus8_sh>

80004cbc <sh_test_18>:
80004cbc:	01200193          	li	gp,18
80004cc0:	00000213          	li	tp,0

80004cc4 <test_18plus8_sh>:
80004cc4:	0000b117          	auipc	sp,0xb
80004cc8:	3cc10113          	addi	sp,sp,972 # 80010090 <begin_signature_sh>
80004ccc:	000020b7          	lui	ra,0x2
80004cd0:	23308093          	addi	ra,ra,563 # 2233 <_size_rom-0x6add>
80004cd4:	00111023          	sh	ra,0(sp)
80004cd8:	00011703          	lh	a4,0(sp)
80004cdc:	000023b7          	lui	t2,0x2
80004ce0:	23338393          	addi	t2,t2,563 # 2233 <_size_rom-0x6add>
80004ce4:	14771863          	bne	a4,t2,80004e34 <fail_sh>
80004ce8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004cec:	00200293          	li	t0,2
80004cf0:	fc521ae3          	bne	tp,t0,80004cc4 <test_18plus8_sh>

80004cf4 <sh_test_19>:
80004cf4:	01300193          	li	gp,19
80004cf8:	00000213          	li	tp,0

80004cfc <test_19plus8_sh>:
80004cfc:	0000b117          	auipc	sp,0xb
80004d00:	39410113          	addi	sp,sp,916 # 80010090 <begin_signature_sh>
80004d04:	000010b7          	lui	ra,0x1
80004d08:	22308093          	addi	ra,ra,547 # 1223 <_size_rom-0x7aed>
80004d0c:	00000013          	nop
80004d10:	00111123          	sh	ra,2(sp)
80004d14:	00211703          	lh	a4,2(sp)
80004d18:	000013b7          	lui	t2,0x1
80004d1c:	22338393          	addi	t2,t2,547 # 1223 <_size_rom-0x7aed>
80004d20:	10771a63          	bne	a4,t2,80004e34 <fail_sh>
80004d24:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004d28:	00200293          	li	t0,2
80004d2c:	fc5218e3          	bne	tp,t0,80004cfc <test_19plus8_sh>

80004d30 <sh_test_20>:
80004d30:	01400193          	li	gp,20
80004d34:	00000213          	li	tp,0

80004d38 <test_20plus8_sh>:
80004d38:	0000b117          	auipc	sp,0xb
80004d3c:	35810113          	addi	sp,sp,856 # 80010090 <begin_signature_sh>
80004d40:	000010b7          	lui	ra,0x1
80004d44:	12208093          	addi	ra,ra,290 # 1122 <_size_rom-0x7bee>
80004d48:	00000013          	nop
80004d4c:	00000013          	nop
80004d50:	00111223          	sh	ra,4(sp)
80004d54:	00411703          	lh	a4,4(sp)
80004d58:	000013b7          	lui	t2,0x1
80004d5c:	12238393          	addi	t2,t2,290 # 1122 <_size_rom-0x7bee>
80004d60:	0c771a63          	bne	a4,t2,80004e34 <fail_sh>
80004d64:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004d68:	00200293          	li	t0,2
80004d6c:	fc5216e3          	bne	tp,t0,80004d38 <test_20plus8_sh>

80004d70 <sh_test_21>:
80004d70:	01500193          	li	gp,21
80004d74:	00000213          	li	tp,0

80004d78 <test_21plus8_sh>:
80004d78:	0000b117          	auipc	sp,0xb
80004d7c:	31810113          	addi	sp,sp,792 # 80010090 <begin_signature_sh>
80004d80:	00000013          	nop
80004d84:	11200093          	li	ra,274
80004d88:	00111323          	sh	ra,6(sp)
80004d8c:	00611703          	lh	a4,6(sp)
80004d90:	11200393          	li	t2,274
80004d94:	0a771063          	bne	a4,t2,80004e34 <fail_sh>
80004d98:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004d9c:	00200293          	li	t0,2
80004da0:	fc521ce3          	bne	tp,t0,80004d78 <test_21plus8_sh>

80004da4 <sh_test_22>:
80004da4:	01600193          	li	gp,22
80004da8:	00000213          	li	tp,0

80004dac <test_22plus8_sh>:
80004dac:	0000b117          	auipc	sp,0xb
80004db0:	2e410113          	addi	sp,sp,740 # 80010090 <begin_signature_sh>
80004db4:	00000013          	nop
80004db8:	01100093          	li	ra,17
80004dbc:	00000013          	nop
80004dc0:	00111423          	sh	ra,8(sp)
80004dc4:	00811703          	lh	a4,8(sp)
80004dc8:	01100393          	li	t2,17
80004dcc:	06771463          	bne	a4,t2,80004e34 <fail_sh>
80004dd0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004dd4:	00200293          	li	t0,2
80004dd8:	fc521ae3          	bne	tp,t0,80004dac <test_22plus8_sh>

80004ddc <sh_test_23>:
80004ddc:	01700193          	li	gp,23
80004de0:	00000213          	li	tp,0

80004de4 <test_23plus8_sh>:
80004de4:	0000b117          	auipc	sp,0xb
80004de8:	2ac10113          	addi	sp,sp,684 # 80010090 <begin_signature_sh>
80004dec:	00000013          	nop
80004df0:	00000013          	nop
80004df4:	000030b7          	lui	ra,0x3
80004df8:	00108093          	addi	ra,ra,1 # 3001 <_size_rom-0x5d0f>
80004dfc:	00111523          	sh	ra,10(sp)
80004e00:	00a11703          	lh	a4,10(sp)
80004e04:	000033b7          	lui	t2,0x3
80004e08:	00138393          	addi	t2,t2,1 # 3001 <_size_rom-0x5d0f>
80004e0c:	02771463          	bne	a4,t2,80004e34 <fail_sh>
80004e10:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80004e14:	00200293          	li	t0,2
80004e18:	fc5216e3          	bne	tp,t0,80004de4 <test_23plus8_sh>
80004e1c:	0000c537          	lui	a0,0xc
80004e20:	eef50513          	addi	a0,a0,-273 # beef <_size_rom+0x31df>
80004e24:	0000b597          	auipc	a1,0xb
80004e28:	26c58593          	addi	a1,a1,620 # 80010090 <begin_signature_sh>
80004e2c:	00a59323          	sh	a0,6(a1)
80004e30:	00c0006f          	j	80004e3c <pass_sh>

80004e34 <fail_sh>:
80004e34:	04d00893          	li	a7,77
80004e38:	ffdff06f          	j	80004e34 <fail_sh>

80004e3c <pass_sh>:
80004e3c:	04200893          	li	a7,66

80004e40 <sll_test_2>:
80004e40:	00200193          	li	gp,2
80004e44:	00100593          	li	a1,1
80004e48:	00000613          	li	a2,0
80004e4c:	00c59733          	sll	a4,a1,a2
80004e50:	00100393          	li	t2,1
80004e54:	52771e63          	bne	a4,t2,80005390 <fail_sll>

80004e58 <sll_test_3>:
80004e58:	00300193          	li	gp,3
80004e5c:	00100593          	li	a1,1
80004e60:	00100613          	li	a2,1
80004e64:	00c59733          	sll	a4,a1,a2
80004e68:	00200393          	li	t2,2
80004e6c:	52771263          	bne	a4,t2,80005390 <fail_sll>

80004e70 <sll_test_4>:
80004e70:	00400193          	li	gp,4
80004e74:	00100593          	li	a1,1
80004e78:	00700613          	li	a2,7
80004e7c:	00c59733          	sll	a4,a1,a2
80004e80:	08000393          	li	t2,128
80004e84:	50771663          	bne	a4,t2,80005390 <fail_sll>

80004e88 <sll_test_5>:
80004e88:	00500193          	li	gp,5
80004e8c:	00100593          	li	a1,1
80004e90:	00e00613          	li	a2,14
80004e94:	00c59733          	sll	a4,a1,a2
80004e98:	000043b7          	lui	t2,0x4
80004e9c:	4e771a63          	bne	a4,t2,80005390 <fail_sll>

80004ea0 <sll_test_6>:
80004ea0:	00600193          	li	gp,6
80004ea4:	00100593          	li	a1,1
80004ea8:	01f00613          	li	a2,31
80004eac:	00c59733          	sll	a4,a1,a2
80004eb0:	800003b7          	lui	t2,0x80000
80004eb4:	4c771e63          	bne	a4,t2,80005390 <fail_sll>

80004eb8 <sll_test_7>:
80004eb8:	00700193          	li	gp,7
80004ebc:	fff00593          	li	a1,-1
80004ec0:	00000613          	li	a2,0
80004ec4:	00c59733          	sll	a4,a1,a2
80004ec8:	fff00393          	li	t2,-1
80004ecc:	4c771263          	bne	a4,t2,80005390 <fail_sll>

80004ed0 <sll_test_8>:
80004ed0:	00800193          	li	gp,8
80004ed4:	fff00593          	li	a1,-1
80004ed8:	00100613          	li	a2,1
80004edc:	00c59733          	sll	a4,a1,a2
80004ee0:	ffe00393          	li	t2,-2
80004ee4:	4a771663          	bne	a4,t2,80005390 <fail_sll>

80004ee8 <sll_test_9>:
80004ee8:	00900193          	li	gp,9
80004eec:	fff00593          	li	a1,-1
80004ef0:	00700613          	li	a2,7
80004ef4:	00c59733          	sll	a4,a1,a2
80004ef8:	f8000393          	li	t2,-128
80004efc:	48771a63          	bne	a4,t2,80005390 <fail_sll>

80004f00 <sll_test_10>:
80004f00:	00a00193          	li	gp,10
80004f04:	fff00593          	li	a1,-1
80004f08:	00e00613          	li	a2,14
80004f0c:	00c59733          	sll	a4,a1,a2
80004f10:	ffffc3b7          	lui	t2,0xffffc
80004f14:	46771e63          	bne	a4,t2,80005390 <fail_sll>

80004f18 <sll_test_11>:
80004f18:	00b00193          	li	gp,11
80004f1c:	fff00593          	li	a1,-1
80004f20:	01f00613          	li	a2,31
80004f24:	00c59733          	sll	a4,a1,a2
80004f28:	800003b7          	lui	t2,0x80000
80004f2c:	46771263          	bne	a4,t2,80005390 <fail_sll>

80004f30 <sll_test_12>:
80004f30:	00c00193          	li	gp,12
80004f34:	212125b7          	lui	a1,0x21212
80004f38:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80004f3c:	00000613          	li	a2,0
80004f40:	00c59733          	sll	a4,a1,a2
80004f44:	212123b7          	lui	t2,0x21212
80004f48:	12138393          	addi	t2,t2,289 # 21212121 <_size_rom+0x21209411>
80004f4c:	44771263          	bne	a4,t2,80005390 <fail_sll>

80004f50 <sll_test_13>:
80004f50:	00d00193          	li	gp,13
80004f54:	212125b7          	lui	a1,0x21212
80004f58:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80004f5c:	00100613          	li	a2,1
80004f60:	00c59733          	sll	a4,a1,a2
80004f64:	424243b7          	lui	t2,0x42424
80004f68:	24238393          	addi	t2,t2,578 # 42424242 <_size_rom+0x4241b532>
80004f6c:	42771263          	bne	a4,t2,80005390 <fail_sll>

80004f70 <sll_test_14>:
80004f70:	00e00193          	li	gp,14
80004f74:	212125b7          	lui	a1,0x21212
80004f78:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80004f7c:	00700613          	li	a2,7
80004f80:	00c59733          	sll	a4,a1,a2
80004f84:	909093b7          	lui	t2,0x90909
80004f88:	08038393          	addi	t2,t2,128 # 90909080 <__stack_top+0x108f5084>
80004f8c:	40771263          	bne	a4,t2,80005390 <fail_sll>

80004f90 <sll_test_15>:
80004f90:	00f00193          	li	gp,15
80004f94:	212125b7          	lui	a1,0x21212
80004f98:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80004f9c:	00e00613          	li	a2,14
80004fa0:	00c59733          	sll	a4,a1,a2
80004fa4:	484843b7          	lui	t2,0x48484
80004fa8:	3e771463          	bne	a4,t2,80005390 <fail_sll>

80004fac <sll_test_16>:
80004fac:	01000193          	li	gp,16
80004fb0:	212125b7          	lui	a1,0x21212
80004fb4:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80004fb8:	01f00613          	li	a2,31
80004fbc:	00c59733          	sll	a4,a1,a2
80004fc0:	800003b7          	lui	t2,0x80000
80004fc4:	3c771663          	bne	a4,t2,80005390 <fail_sll>

80004fc8 <sll_test_17>:
80004fc8:	01100193          	li	gp,17
80004fcc:	212125b7          	lui	a1,0x21212
80004fd0:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80004fd4:	fc000613          	li	a2,-64
80004fd8:	00c59733          	sll	a4,a1,a2
80004fdc:	212123b7          	lui	t2,0x21212
80004fe0:	12138393          	addi	t2,t2,289 # 21212121 <_size_rom+0x21209411>
80004fe4:	3a771663          	bne	a4,t2,80005390 <fail_sll>

80004fe8 <sll_test_18>:
80004fe8:	01200193          	li	gp,18
80004fec:	212125b7          	lui	a1,0x21212
80004ff0:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80004ff4:	fc100613          	li	a2,-63
80004ff8:	00c59733          	sll	a4,a1,a2
80004ffc:	424243b7          	lui	t2,0x42424
80005000:	24238393          	addi	t2,t2,578 # 42424242 <_size_rom+0x4241b532>
80005004:	38771663          	bne	a4,t2,80005390 <fail_sll>

80005008 <sll_test_19>:
80005008:	01300193          	li	gp,19
8000500c:	212125b7          	lui	a1,0x21212
80005010:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80005014:	fc700613          	li	a2,-57
80005018:	00c59733          	sll	a4,a1,a2
8000501c:	909093b7          	lui	t2,0x90909
80005020:	08038393          	addi	t2,t2,128 # 90909080 <__stack_top+0x108f5084>
80005024:	36771663          	bne	a4,t2,80005390 <fail_sll>

80005028 <sll_test_20>:
80005028:	01400193          	li	gp,20
8000502c:	212125b7          	lui	a1,0x21212
80005030:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80005034:	fce00613          	li	a2,-50
80005038:	00c59733          	sll	a4,a1,a2
8000503c:	484843b7          	lui	t2,0x48484
80005040:	34771863          	bne	a4,t2,80005390 <fail_sll>

80005044 <sll_test_22>:
80005044:	01600193          	li	gp,22
80005048:	00100593          	li	a1,1
8000504c:	00700613          	li	a2,7
80005050:	00c595b3          	sll	a1,a1,a2
80005054:	08000393          	li	t2,128
80005058:	32759c63          	bne	a1,t2,80005390 <fail_sll>

8000505c <sll_test_23>:
8000505c:	01700193          	li	gp,23
80005060:	00100593          	li	a1,1
80005064:	00e00613          	li	a2,14
80005068:	00c59633          	sll	a2,a1,a2
8000506c:	000043b7          	lui	t2,0x4
80005070:	32761063          	bne	a2,t2,80005390 <fail_sll>

80005074 <sll_test_24>:
80005074:	01800193          	li	gp,24
80005078:	00300593          	li	a1,3
8000507c:	00b595b3          	sll	a1,a1,a1
80005080:	01800393          	li	t2,24
80005084:	30759663          	bne	a1,t2,80005390 <fail_sll>

80005088 <sll_test_25>:
80005088:	01900193          	li	gp,25
8000508c:	00000213          	li	tp,0

80005090 <test_25plus8_sll>:
80005090:	00100093          	li	ra,1
80005094:	00700113          	li	sp,7
80005098:	00209733          	sll	a4,ra,sp
8000509c:	00070313          	mv	t1,a4
800050a0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800050a4:	00200293          	li	t0,2
800050a8:	fe5214e3          	bne	tp,t0,80005090 <test_25plus8_sll>
800050ac:	08000393          	li	t2,128
800050b0:	2e731063          	bne	t1,t2,80005390 <fail_sll>

800050b4 <sll_test_26>:
800050b4:	01a00193          	li	gp,26
800050b8:	00000213          	li	tp,0

800050bc <test_26plus8_sll>:
800050bc:	00100093          	li	ra,1
800050c0:	00e00113          	li	sp,14
800050c4:	00209733          	sll	a4,ra,sp
800050c8:	00000013          	nop
800050cc:	00070313          	mv	t1,a4
800050d0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800050d4:	00200293          	li	t0,2
800050d8:	fe5212e3          	bne	tp,t0,800050bc <test_26plus8_sll>
800050dc:	000043b7          	lui	t2,0x4
800050e0:	2a731863          	bne	t1,t2,80005390 <fail_sll>

800050e4 <sll_test_27>:
800050e4:	01b00193          	li	gp,27
800050e8:	00000213          	li	tp,0

800050ec <test_27plus8_sll>:
800050ec:	00100093          	li	ra,1
800050f0:	01f00113          	li	sp,31
800050f4:	00209733          	sll	a4,ra,sp
800050f8:	00000013          	nop
800050fc:	00000013          	nop
80005100:	00070313          	mv	t1,a4
80005104:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005108:	00200293          	li	t0,2
8000510c:	fe5210e3          	bne	tp,t0,800050ec <test_27plus8_sll>
80005110:	800003b7          	lui	t2,0x80000
80005114:	26731e63          	bne	t1,t2,80005390 <fail_sll>

80005118 <sll_test_28>:
80005118:	01c00193          	li	gp,28
8000511c:	00000213          	li	tp,0

80005120 <test_28plus8_sll>:
80005120:	00100093          	li	ra,1
80005124:	00700113          	li	sp,7
80005128:	00209733          	sll	a4,ra,sp
8000512c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005130:	00200293          	li	t0,2
80005134:	fe5216e3          	bne	tp,t0,80005120 <test_28plus8_sll>
80005138:	08000393          	li	t2,128
8000513c:	24771a63          	bne	a4,t2,80005390 <fail_sll>

80005140 <sll_test_29>:
80005140:	01d00193          	li	gp,29
80005144:	00000213          	li	tp,0

80005148 <test_29plus8_sll>:
80005148:	00100093          	li	ra,1
8000514c:	00e00113          	li	sp,14
80005150:	00000013          	nop
80005154:	00209733          	sll	a4,ra,sp
80005158:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000515c:	00200293          	li	t0,2
80005160:	fe5214e3          	bne	tp,t0,80005148 <test_29plus8_sll>
80005164:	000043b7          	lui	t2,0x4
80005168:	22771463          	bne	a4,t2,80005390 <fail_sll>

8000516c <sll_test_30>:
8000516c:	01e00193          	li	gp,30
80005170:	00000213          	li	tp,0

80005174 <test_30plus8_sll>:
80005174:	00100093          	li	ra,1
80005178:	01f00113          	li	sp,31
8000517c:	00000013          	nop
80005180:	00000013          	nop
80005184:	00209733          	sll	a4,ra,sp
80005188:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000518c:	00200293          	li	t0,2
80005190:	fe5212e3          	bne	tp,t0,80005174 <test_30plus8_sll>
80005194:	800003b7          	lui	t2,0x80000
80005198:	1e771c63          	bne	a4,t2,80005390 <fail_sll>

8000519c <sll_test_31>:
8000519c:	01f00193          	li	gp,31
800051a0:	00000213          	li	tp,0

800051a4 <test_31plus8_sll>:
800051a4:	00100093          	li	ra,1
800051a8:	00000013          	nop
800051ac:	00700113          	li	sp,7
800051b0:	00209733          	sll	a4,ra,sp
800051b4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800051b8:	00200293          	li	t0,2
800051bc:	fe5214e3          	bne	tp,t0,800051a4 <test_31plus8_sll>
800051c0:	08000393          	li	t2,128
800051c4:	1c771663          	bne	a4,t2,80005390 <fail_sll>

800051c8 <sll_test_32>:
800051c8:	02000193          	li	gp,32
800051cc:	00000213          	li	tp,0

800051d0 <test_32plus8_sll>:
800051d0:	00100093          	li	ra,1
800051d4:	00000013          	nop
800051d8:	00e00113          	li	sp,14
800051dc:	00000013          	nop
800051e0:	00209733          	sll	a4,ra,sp
800051e4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800051e8:	00200293          	li	t0,2
800051ec:	fe5212e3          	bne	tp,t0,800051d0 <test_32plus8_sll>
800051f0:	000043b7          	lui	t2,0x4
800051f4:	18771e63          	bne	a4,t2,80005390 <fail_sll>

800051f8 <sll_test_33>:
800051f8:	02100193          	li	gp,33
800051fc:	00000213          	li	tp,0

80005200 <test_33plus8_sll>:
80005200:	00100093          	li	ra,1
80005204:	00000013          	nop
80005208:	00000013          	nop
8000520c:	01f00113          	li	sp,31
80005210:	00209733          	sll	a4,ra,sp
80005214:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005218:	00200293          	li	t0,2
8000521c:	fe5212e3          	bne	tp,t0,80005200 <test_33plus8_sll>
80005220:	800003b7          	lui	t2,0x80000
80005224:	16771663          	bne	a4,t2,80005390 <fail_sll>

80005228 <sll_test_34>:
80005228:	02200193          	li	gp,34
8000522c:	00000213          	li	tp,0

80005230 <test_34plus8_sll>:
80005230:	00700113          	li	sp,7
80005234:	00100093          	li	ra,1
80005238:	00209733          	sll	a4,ra,sp
8000523c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005240:	00200293          	li	t0,2
80005244:	fe5216e3          	bne	tp,t0,80005230 <test_34plus8_sll>
80005248:	08000393          	li	t2,128
8000524c:	14771263          	bne	a4,t2,80005390 <fail_sll>

80005250 <sll_test_35>:
80005250:	02300193          	li	gp,35
80005254:	00000213          	li	tp,0

80005258 <test_35plus8_sll>:
80005258:	00e00113          	li	sp,14
8000525c:	00100093          	li	ra,1
80005260:	00000013          	nop
80005264:	00209733          	sll	a4,ra,sp
80005268:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000526c:	00200293          	li	t0,2
80005270:	fe5214e3          	bne	tp,t0,80005258 <test_35plus8_sll>
80005274:	000043b7          	lui	t2,0x4
80005278:	10771c63          	bne	a4,t2,80005390 <fail_sll>

8000527c <sll_test_36>:
8000527c:	02400193          	li	gp,36
80005280:	00000213          	li	tp,0

80005284 <test_36plus8_sll>:
80005284:	01f00113          	li	sp,31
80005288:	00100093          	li	ra,1
8000528c:	00000013          	nop
80005290:	00000013          	nop
80005294:	00209733          	sll	a4,ra,sp
80005298:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000529c:	00200293          	li	t0,2
800052a0:	fe5212e3          	bne	tp,t0,80005284 <test_36plus8_sll>
800052a4:	800003b7          	lui	t2,0x80000
800052a8:	0e771463          	bne	a4,t2,80005390 <fail_sll>

800052ac <sll_test_37>:
800052ac:	02500193          	li	gp,37
800052b0:	00000213          	li	tp,0

800052b4 <test_37plus8_sll>:
800052b4:	00700113          	li	sp,7
800052b8:	00000013          	nop
800052bc:	00100093          	li	ra,1
800052c0:	00209733          	sll	a4,ra,sp
800052c4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800052c8:	00200293          	li	t0,2
800052cc:	fe5214e3          	bne	tp,t0,800052b4 <test_37plus8_sll>
800052d0:	08000393          	li	t2,128
800052d4:	0a771e63          	bne	a4,t2,80005390 <fail_sll>

800052d8 <sll_test_38>:
800052d8:	02600193          	li	gp,38
800052dc:	00000213          	li	tp,0

800052e0 <test_38plus8_sll>:
800052e0:	00e00113          	li	sp,14
800052e4:	00000013          	nop
800052e8:	00100093          	li	ra,1
800052ec:	00000013          	nop
800052f0:	00209733          	sll	a4,ra,sp
800052f4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800052f8:	00200293          	li	t0,2
800052fc:	fe5212e3          	bne	tp,t0,800052e0 <test_38plus8_sll>
80005300:	000043b7          	lui	t2,0x4
80005304:	08771663          	bne	a4,t2,80005390 <fail_sll>

80005308 <sll_test_39>:
80005308:	02700193          	li	gp,39
8000530c:	00000213          	li	tp,0

80005310 <test_39plus8_sll>:
80005310:	01f00113          	li	sp,31
80005314:	00000013          	nop
80005318:	00000013          	nop
8000531c:	00100093          	li	ra,1
80005320:	00209733          	sll	a4,ra,sp
80005324:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005328:	00200293          	li	t0,2
8000532c:	fe5212e3          	bne	tp,t0,80005310 <test_39plus8_sll>
80005330:	800003b7          	lui	t2,0x80000
80005334:	04771e63          	bne	a4,t2,80005390 <fail_sll>

80005338 <sll_test_40>:
80005338:	02800193          	li	gp,40
8000533c:	00f00093          	li	ra,15
80005340:	00101133          	sll	sp,zero,ra
80005344:	00000393          	li	t2,0
80005348:	04711463          	bne	sp,t2,80005390 <fail_sll>

8000534c <sll_test_41>:
8000534c:	02900193          	li	gp,41
80005350:	02000093          	li	ra,32
80005354:	00009133          	sll	sp,ra,zero
80005358:	02000393          	li	t2,32
8000535c:	02711a63          	bne	sp,t2,80005390 <fail_sll>

80005360 <sll_test_42>:
80005360:	02a00193          	li	gp,42
80005364:	000010b3          	sll	ra,zero,zero
80005368:	00000393          	li	t2,0
8000536c:	02709263          	bne	ra,t2,80005390 <fail_sll>

80005370 <sll_test_43>:
80005370:	02b00193          	li	gp,43
80005374:	40000093          	li	ra,1024
80005378:	00001137          	lui	sp,0x1
8000537c:	80010113          	addi	sp,sp,-2048 # 800 <_size_rom-0x8510>
80005380:	00209033          	sll	zero,ra,sp
80005384:	00000393          	li	t2,0
80005388:	00701463          	bne	zero,t2,80005390 <fail_sll>
8000538c:	00c0006f          	j	80005398 <pass_sll>

80005390 <fail_sll>:
80005390:	04d00893          	li	a7,77
80005394:	ffdff06f          	j	80005390 <fail_sll>

80005398 <pass_sll>:
80005398:	04200893          	li	a7,66

8000539c <slli_test_2>:
8000539c:	00200193          	li	gp,2
800053a0:	00100693          	li	a3,1
800053a4:	00069713          	slli	a4,a3,0x0
800053a8:	00100393          	li	t2,1
800053ac:	26771a63          	bne	a4,t2,80005620 <fail_slli>

800053b0 <slli_test_3>:
800053b0:	00300193          	li	gp,3
800053b4:	00100693          	li	a3,1
800053b8:	00169713          	slli	a4,a3,0x1
800053bc:	00200393          	li	t2,2
800053c0:	26771063          	bne	a4,t2,80005620 <fail_slli>

800053c4 <slli_test_4>:
800053c4:	00400193          	li	gp,4
800053c8:	00100693          	li	a3,1
800053cc:	00769713          	slli	a4,a3,0x7
800053d0:	08000393          	li	t2,128
800053d4:	24771663          	bne	a4,t2,80005620 <fail_slli>

800053d8 <slli_test_5>:
800053d8:	00500193          	li	gp,5
800053dc:	00100693          	li	a3,1
800053e0:	00e69713          	slli	a4,a3,0xe
800053e4:	000043b7          	lui	t2,0x4
800053e8:	22771c63          	bne	a4,t2,80005620 <fail_slli>

800053ec <slli_test_6>:
800053ec:	00600193          	li	gp,6
800053f0:	00100693          	li	a3,1
800053f4:	01f69713          	slli	a4,a3,0x1f
800053f8:	800003b7          	lui	t2,0x80000
800053fc:	22771263          	bne	a4,t2,80005620 <fail_slli>

80005400 <slli_test_7>:
80005400:	00700193          	li	gp,7
80005404:	fff00693          	li	a3,-1
80005408:	00069713          	slli	a4,a3,0x0
8000540c:	fff00393          	li	t2,-1
80005410:	20771863          	bne	a4,t2,80005620 <fail_slli>

80005414 <slli_test_8>:
80005414:	00800193          	li	gp,8
80005418:	fff00693          	li	a3,-1
8000541c:	00169713          	slli	a4,a3,0x1
80005420:	ffe00393          	li	t2,-2
80005424:	1e771e63          	bne	a4,t2,80005620 <fail_slli>

80005428 <slli_test_9>:
80005428:	00900193          	li	gp,9
8000542c:	fff00693          	li	a3,-1
80005430:	00769713          	slli	a4,a3,0x7
80005434:	f8000393          	li	t2,-128
80005438:	1e771463          	bne	a4,t2,80005620 <fail_slli>

8000543c <slli_test_10>:
8000543c:	00a00193          	li	gp,10
80005440:	fff00693          	li	a3,-1
80005444:	00e69713          	slli	a4,a3,0xe
80005448:	ffffc3b7          	lui	t2,0xffffc
8000544c:	1c771a63          	bne	a4,t2,80005620 <fail_slli>

80005450 <slli_test_11>:
80005450:	00b00193          	li	gp,11
80005454:	fff00693          	li	a3,-1
80005458:	01f69713          	slli	a4,a3,0x1f
8000545c:	800003b7          	lui	t2,0x80000
80005460:	1c771063          	bne	a4,t2,80005620 <fail_slli>

80005464 <slli_test_12>:
80005464:	00c00193          	li	gp,12
80005468:	212126b7          	lui	a3,0x21212
8000546c:	12168693          	addi	a3,a3,289 # 21212121 <_size_rom+0x21209411>
80005470:	00069713          	slli	a4,a3,0x0
80005474:	212123b7          	lui	t2,0x21212
80005478:	12138393          	addi	t2,t2,289 # 21212121 <_size_rom+0x21209411>
8000547c:	1a771263          	bne	a4,t2,80005620 <fail_slli>

80005480 <slli_test_13>:
80005480:	00d00193          	li	gp,13
80005484:	212126b7          	lui	a3,0x21212
80005488:	12168693          	addi	a3,a3,289 # 21212121 <_size_rom+0x21209411>
8000548c:	00169713          	slli	a4,a3,0x1
80005490:	424243b7          	lui	t2,0x42424
80005494:	24238393          	addi	t2,t2,578 # 42424242 <_size_rom+0x4241b532>
80005498:	18771463          	bne	a4,t2,80005620 <fail_slli>

8000549c <slli_test_14>:
8000549c:	00e00193          	li	gp,14
800054a0:	212126b7          	lui	a3,0x21212
800054a4:	12168693          	addi	a3,a3,289 # 21212121 <_size_rom+0x21209411>
800054a8:	00769713          	slli	a4,a3,0x7
800054ac:	909093b7          	lui	t2,0x90909
800054b0:	08038393          	addi	t2,t2,128 # 90909080 <__stack_top+0x108f5084>
800054b4:	16771663          	bne	a4,t2,80005620 <fail_slli>

800054b8 <slli_test_15>:
800054b8:	00f00193          	li	gp,15
800054bc:	212126b7          	lui	a3,0x21212
800054c0:	12168693          	addi	a3,a3,289 # 21212121 <_size_rom+0x21209411>
800054c4:	00e69713          	slli	a4,a3,0xe
800054c8:	484843b7          	lui	t2,0x48484
800054cc:	14771a63          	bne	a4,t2,80005620 <fail_slli>

800054d0 <slli_test_16>:
800054d0:	01000193          	li	gp,16
800054d4:	212126b7          	lui	a3,0x21212
800054d8:	12168693          	addi	a3,a3,289 # 21212121 <_size_rom+0x21209411>
800054dc:	01f69713          	slli	a4,a3,0x1f
800054e0:	800003b7          	lui	t2,0x80000
800054e4:	12771e63          	bne	a4,t2,80005620 <fail_slli>

800054e8 <slli_test_17>:
800054e8:	01100193          	li	gp,17
800054ec:	00100593          	li	a1,1
800054f0:	00759593          	slli	a1,a1,0x7
800054f4:	08000393          	li	t2,128
800054f8:	12759463          	bne	a1,t2,80005620 <fail_slli>

800054fc <slli_test_18>:
800054fc:	01200193          	li	gp,18
80005500:	00000213          	li	tp,0

80005504 <test_18plus8_slli>:
80005504:	00100093          	li	ra,1
80005508:	00709713          	slli	a4,ra,0x7
8000550c:	00070313          	mv	t1,a4
80005510:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005514:	00200293          	li	t0,2
80005518:	fe5216e3          	bne	tp,t0,80005504 <test_18plus8_slli>
8000551c:	08000393          	li	t2,128
80005520:	10731063          	bne	t1,t2,80005620 <fail_slli>

80005524 <slli_test_19>:
80005524:	01300193          	li	gp,19
80005528:	00000213          	li	tp,0

8000552c <test_19plus8_slli>:
8000552c:	00100093          	li	ra,1
80005530:	00e09713          	slli	a4,ra,0xe
80005534:	00000013          	nop
80005538:	00070313          	mv	t1,a4
8000553c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005540:	00200293          	li	t0,2
80005544:	fe5214e3          	bne	tp,t0,8000552c <test_19plus8_slli>
80005548:	000043b7          	lui	t2,0x4
8000554c:	0c731a63          	bne	t1,t2,80005620 <fail_slli>

80005550 <slli_test_20>:
80005550:	01400193          	li	gp,20
80005554:	00000213          	li	tp,0

80005558 <test_20plus8_slli>:
80005558:	00100093          	li	ra,1
8000555c:	01f09713          	slli	a4,ra,0x1f
80005560:	00000013          	nop
80005564:	00000013          	nop
80005568:	00070313          	mv	t1,a4
8000556c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005570:	00200293          	li	t0,2
80005574:	fe5212e3          	bne	tp,t0,80005558 <test_20plus8_slli>
80005578:	800003b7          	lui	t2,0x80000
8000557c:	0a731263          	bne	t1,t2,80005620 <fail_slli>

80005580 <slli_test_21>:
80005580:	01500193          	li	gp,21
80005584:	00000213          	li	tp,0

80005588 <test_21plus8_slli>:
80005588:	00100093          	li	ra,1
8000558c:	00709713          	slli	a4,ra,0x7
80005590:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005594:	00200293          	li	t0,2
80005598:	fe5218e3          	bne	tp,t0,80005588 <test_21plus8_slli>
8000559c:	08000393          	li	t2,128
800055a0:	08771063          	bne	a4,t2,80005620 <fail_slli>

800055a4 <slli_test_22>:
800055a4:	01600193          	li	gp,22
800055a8:	00000213          	li	tp,0

800055ac <test_22plus8_slli>:
800055ac:	00100093          	li	ra,1
800055b0:	00000013          	nop
800055b4:	00e09713          	slli	a4,ra,0xe
800055b8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800055bc:	00200293          	li	t0,2
800055c0:	fe5216e3          	bne	tp,t0,800055ac <test_22plus8_slli>
800055c4:	000043b7          	lui	t2,0x4
800055c8:	04771c63          	bne	a4,t2,80005620 <fail_slli>

800055cc <slli_test_23>:
800055cc:	01700193          	li	gp,23
800055d0:	00000213          	li	tp,0

800055d4 <test_23plus8_slli>:
800055d4:	00100093          	li	ra,1
800055d8:	00000013          	nop
800055dc:	00000013          	nop
800055e0:	01f09713          	slli	a4,ra,0x1f
800055e4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800055e8:	00200293          	li	t0,2
800055ec:	fe5214e3          	bne	tp,t0,800055d4 <test_23plus8_slli>
800055f0:	800003b7          	lui	t2,0x80000
800055f4:	02771663          	bne	a4,t2,80005620 <fail_slli>

800055f8 <slli_test_24>:
800055f8:	01800193          	li	gp,24
800055fc:	01f01093          	slli	ra,zero,0x1f
80005600:	00000393          	li	t2,0
80005604:	00709e63          	bne	ra,t2,80005620 <fail_slli>

80005608 <slli_test_25>:
80005608:	01900193          	li	gp,25
8000560c:	02100093          	li	ra,33
80005610:	01409013          	slli	zero,ra,0x14
80005614:	00000393          	li	t2,0
80005618:	00701463          	bne	zero,t2,80005620 <fail_slli>
8000561c:	00c0006f          	j	80005628 <pass_slli>

80005620 <fail_slli>:
80005620:	04d00893          	li	a7,77
80005624:	ffdff06f          	j	80005620 <fail_slli>

80005628 <pass_slli>:
80005628:	04200893          	li	a7,66

8000562c <slt_test_2>:
8000562c:	00200193          	li	gp,2
80005630:	00000593          	li	a1,0
80005634:	00000613          	li	a2,0
80005638:	00c5a733          	slt	a4,a1,a2
8000563c:	00000393          	li	t2,0
80005640:	4a771a63          	bne	a4,t2,80005af4 <fail_slt>

80005644 <slt_test_3>:
80005644:	00300193          	li	gp,3
80005648:	00100593          	li	a1,1
8000564c:	00100613          	li	a2,1
80005650:	00c5a733          	slt	a4,a1,a2
80005654:	00000393          	li	t2,0
80005658:	48771e63          	bne	a4,t2,80005af4 <fail_slt>

8000565c <slt_test_4>:
8000565c:	00400193          	li	gp,4
80005660:	00300593          	li	a1,3
80005664:	00700613          	li	a2,7
80005668:	00c5a733          	slt	a4,a1,a2
8000566c:	00100393          	li	t2,1
80005670:	48771263          	bne	a4,t2,80005af4 <fail_slt>

80005674 <slt_test_5>:
80005674:	00500193          	li	gp,5
80005678:	00700593          	li	a1,7
8000567c:	00300613          	li	a2,3
80005680:	00c5a733          	slt	a4,a1,a2
80005684:	00000393          	li	t2,0
80005688:	46771663          	bne	a4,t2,80005af4 <fail_slt>

8000568c <slt_test_6>:
8000568c:	00600193          	li	gp,6
80005690:	00000593          	li	a1,0
80005694:	ffff8637          	lui	a2,0xffff8
80005698:	00c5a733          	slt	a4,a1,a2
8000569c:	00000393          	li	t2,0
800056a0:	44771a63          	bne	a4,t2,80005af4 <fail_slt>

800056a4 <slt_test_7>:
800056a4:	00700193          	li	gp,7
800056a8:	800005b7          	lui	a1,0x80000
800056ac:	00000613          	li	a2,0
800056b0:	00c5a733          	slt	a4,a1,a2
800056b4:	00100393          	li	t2,1
800056b8:	42771e63          	bne	a4,t2,80005af4 <fail_slt>

800056bc <slt_test_8>:
800056bc:	00800193          	li	gp,8
800056c0:	800005b7          	lui	a1,0x80000
800056c4:	ffff8637          	lui	a2,0xffff8
800056c8:	00c5a733          	slt	a4,a1,a2
800056cc:	00100393          	li	t2,1
800056d0:	42771263          	bne	a4,t2,80005af4 <fail_slt>

800056d4 <slt_test_9>:
800056d4:	00900193          	li	gp,9
800056d8:	00000593          	li	a1,0
800056dc:	00008637          	lui	a2,0x8
800056e0:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
800056e4:	00c5a733          	slt	a4,a1,a2
800056e8:	00100393          	li	t2,1
800056ec:	40771463          	bne	a4,t2,80005af4 <fail_slt>

800056f0 <slt_test_10>:
800056f0:	00a00193          	li	gp,10
800056f4:	800005b7          	lui	a1,0x80000
800056f8:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
800056fc:	00000613          	li	a2,0
80005700:	00c5a733          	slt	a4,a1,a2
80005704:	00000393          	li	t2,0
80005708:	3e771663          	bne	a4,t2,80005af4 <fail_slt>

8000570c <slt_test_11>:
8000570c:	00b00193          	li	gp,11
80005710:	800005b7          	lui	a1,0x80000
80005714:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
80005718:	00008637          	lui	a2,0x8
8000571c:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
80005720:	00c5a733          	slt	a4,a1,a2
80005724:	00000393          	li	t2,0
80005728:	3c771663          	bne	a4,t2,80005af4 <fail_slt>

8000572c <slt_test_12>:
8000572c:	00c00193          	li	gp,12
80005730:	800005b7          	lui	a1,0x80000
80005734:	00008637          	lui	a2,0x8
80005738:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
8000573c:	00c5a733          	slt	a4,a1,a2
80005740:	00100393          	li	t2,1
80005744:	3a771863          	bne	a4,t2,80005af4 <fail_slt>

80005748 <slt_test_13>:
80005748:	00d00193          	li	gp,13
8000574c:	800005b7          	lui	a1,0x80000
80005750:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
80005754:	ffff8637          	lui	a2,0xffff8
80005758:	00c5a733          	slt	a4,a1,a2
8000575c:	00000393          	li	t2,0
80005760:	38771a63          	bne	a4,t2,80005af4 <fail_slt>

80005764 <slt_test_14>:
80005764:	00e00193          	li	gp,14
80005768:	00000593          	li	a1,0
8000576c:	fff00613          	li	a2,-1
80005770:	00c5a733          	slt	a4,a1,a2
80005774:	00000393          	li	t2,0
80005778:	36771e63          	bne	a4,t2,80005af4 <fail_slt>

8000577c <slt_test_15>:
8000577c:	00f00193          	li	gp,15
80005780:	fff00593          	li	a1,-1
80005784:	00100613          	li	a2,1
80005788:	00c5a733          	slt	a4,a1,a2
8000578c:	00100393          	li	t2,1
80005790:	36771263          	bne	a4,t2,80005af4 <fail_slt>

80005794 <slt_test_16>:
80005794:	01000193          	li	gp,16
80005798:	fff00593          	li	a1,-1
8000579c:	fff00613          	li	a2,-1
800057a0:	00c5a733          	slt	a4,a1,a2
800057a4:	00000393          	li	t2,0
800057a8:	34771663          	bne	a4,t2,80005af4 <fail_slt>

800057ac <slt_test_17>:
800057ac:	01100193          	li	gp,17
800057b0:	00e00593          	li	a1,14
800057b4:	00d00613          	li	a2,13
800057b8:	00c5a5b3          	slt	a1,a1,a2
800057bc:	00000393          	li	t2,0
800057c0:	32759a63          	bne	a1,t2,80005af4 <fail_slt>

800057c4 <slt_test_18>:
800057c4:	01200193          	li	gp,18
800057c8:	00b00593          	li	a1,11
800057cc:	00d00613          	li	a2,13
800057d0:	00c5a633          	slt	a2,a1,a2
800057d4:	00100393          	li	t2,1
800057d8:	30761e63          	bne	a2,t2,80005af4 <fail_slt>

800057dc <slt_test_19>:
800057dc:	01300193          	li	gp,19
800057e0:	00d00593          	li	a1,13
800057e4:	00b5a5b3          	slt	a1,a1,a1
800057e8:	00000393          	li	t2,0
800057ec:	30759463          	bne	a1,t2,80005af4 <fail_slt>

800057f0 <slt_test_20>:
800057f0:	01400193          	li	gp,20
800057f4:	00000213          	li	tp,0

800057f8 <test_20plus8_slt>:
800057f8:	00b00093          	li	ra,11
800057fc:	00d00113          	li	sp,13
80005800:	0020a733          	slt	a4,ra,sp
80005804:	00070313          	mv	t1,a4
80005808:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000580c:	00200293          	li	t0,2
80005810:	fe5214e3          	bne	tp,t0,800057f8 <test_20plus8_slt>
80005814:	00100393          	li	t2,1
80005818:	2c731e63          	bne	t1,t2,80005af4 <fail_slt>

8000581c <slt_test_21>:
8000581c:	01500193          	li	gp,21
80005820:	00000213          	li	tp,0

80005824 <test_21plus8_slt>:
80005824:	00e00093          	li	ra,14
80005828:	00d00113          	li	sp,13
8000582c:	0020a733          	slt	a4,ra,sp
80005830:	00000013          	nop
80005834:	00070313          	mv	t1,a4
80005838:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000583c:	00200293          	li	t0,2
80005840:	fe5212e3          	bne	tp,t0,80005824 <test_21plus8_slt>
80005844:	00000393          	li	t2,0
80005848:	2a731663          	bne	t1,t2,80005af4 <fail_slt>

8000584c <slt_test_22>:
8000584c:	01600193          	li	gp,22
80005850:	00000213          	li	tp,0

80005854 <test_22plus8_slt>:
80005854:	00c00093          	li	ra,12
80005858:	00d00113          	li	sp,13
8000585c:	0020a733          	slt	a4,ra,sp
80005860:	00000013          	nop
80005864:	00000013          	nop
80005868:	00070313          	mv	t1,a4
8000586c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005870:	00200293          	li	t0,2
80005874:	fe5210e3          	bne	tp,t0,80005854 <test_22plus8_slt>
80005878:	00100393          	li	t2,1
8000587c:	26731c63          	bne	t1,t2,80005af4 <fail_slt>

80005880 <slt_test_23>:
80005880:	01700193          	li	gp,23
80005884:	00000213          	li	tp,0

80005888 <test_23plus8_slt>:
80005888:	00e00093          	li	ra,14
8000588c:	00d00113          	li	sp,13
80005890:	0020a733          	slt	a4,ra,sp
80005894:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005898:	00200293          	li	t0,2
8000589c:	fe5216e3          	bne	tp,t0,80005888 <test_23plus8_slt>
800058a0:	00000393          	li	t2,0
800058a4:	24771863          	bne	a4,t2,80005af4 <fail_slt>

800058a8 <slt_test_24>:
800058a8:	01800193          	li	gp,24
800058ac:	00000213          	li	tp,0

800058b0 <test_24plus8_slt>:
800058b0:	00b00093          	li	ra,11
800058b4:	00d00113          	li	sp,13
800058b8:	00000013          	nop
800058bc:	0020a733          	slt	a4,ra,sp
800058c0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800058c4:	00200293          	li	t0,2
800058c8:	fe5214e3          	bne	tp,t0,800058b0 <test_24plus8_slt>
800058cc:	00100393          	li	t2,1
800058d0:	22771263          	bne	a4,t2,80005af4 <fail_slt>

800058d4 <slt_test_25>:
800058d4:	01900193          	li	gp,25
800058d8:	00000213          	li	tp,0

800058dc <test_25plus8_slt>:
800058dc:	00f00093          	li	ra,15
800058e0:	00d00113          	li	sp,13
800058e4:	00000013          	nop
800058e8:	00000013          	nop
800058ec:	0020a733          	slt	a4,ra,sp
800058f0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800058f4:	00200293          	li	t0,2
800058f8:	fe5212e3          	bne	tp,t0,800058dc <test_25plus8_slt>
800058fc:	00000393          	li	t2,0
80005900:	1e771a63          	bne	a4,t2,80005af4 <fail_slt>

80005904 <slt_test_26>:
80005904:	01a00193          	li	gp,26
80005908:	00000213          	li	tp,0

8000590c <test_26plus8_slt>:
8000590c:	00a00093          	li	ra,10
80005910:	00000013          	nop
80005914:	00d00113          	li	sp,13
80005918:	0020a733          	slt	a4,ra,sp
8000591c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005920:	00200293          	li	t0,2
80005924:	fe5214e3          	bne	tp,t0,8000590c <test_26plus8_slt>
80005928:	00100393          	li	t2,1
8000592c:	1c771463          	bne	a4,t2,80005af4 <fail_slt>

80005930 <slt_test_27>:
80005930:	01b00193          	li	gp,27
80005934:	00000213          	li	tp,0

80005938 <test_27plus8_slt>:
80005938:	01000093          	li	ra,16
8000593c:	00000013          	nop
80005940:	00d00113          	li	sp,13
80005944:	00000013          	nop
80005948:	0020a733          	slt	a4,ra,sp
8000594c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005950:	00200293          	li	t0,2
80005954:	fe5212e3          	bne	tp,t0,80005938 <test_27plus8_slt>
80005958:	00000393          	li	t2,0
8000595c:	18771c63          	bne	a4,t2,80005af4 <fail_slt>

80005960 <slt_test_28>:
80005960:	01c00193          	li	gp,28
80005964:	00000213          	li	tp,0

80005968 <test_28plus8_slt>:
80005968:	00900093          	li	ra,9
8000596c:	00000013          	nop
80005970:	00000013          	nop
80005974:	00d00113          	li	sp,13
80005978:	0020a733          	slt	a4,ra,sp
8000597c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005980:	00200293          	li	t0,2
80005984:	fe5212e3          	bne	tp,t0,80005968 <test_28plus8_slt>
80005988:	00100393          	li	t2,1
8000598c:	16771463          	bne	a4,t2,80005af4 <fail_slt>

80005990 <slt_test_29>:
80005990:	01d00193          	li	gp,29
80005994:	00000213          	li	tp,0

80005998 <test_29plus8_slt>:
80005998:	00d00113          	li	sp,13
8000599c:	01100093          	li	ra,17
800059a0:	0020a733          	slt	a4,ra,sp
800059a4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800059a8:	00200293          	li	t0,2
800059ac:	fe5216e3          	bne	tp,t0,80005998 <test_29plus8_slt>
800059b0:	00000393          	li	t2,0
800059b4:	14771063          	bne	a4,t2,80005af4 <fail_slt>

800059b8 <slt_test_30>:
800059b8:	01e00193          	li	gp,30
800059bc:	00000213          	li	tp,0

800059c0 <test_30plus8_slt>:
800059c0:	00d00113          	li	sp,13
800059c4:	00800093          	li	ra,8
800059c8:	00000013          	nop
800059cc:	0020a733          	slt	a4,ra,sp
800059d0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800059d4:	00200293          	li	t0,2
800059d8:	fe5214e3          	bne	tp,t0,800059c0 <test_30plus8_slt>
800059dc:	00100393          	li	t2,1
800059e0:	10771a63          	bne	a4,t2,80005af4 <fail_slt>

800059e4 <slt_test_31>:
800059e4:	01f00193          	li	gp,31
800059e8:	00000213          	li	tp,0

800059ec <test_31plus8_slt>:
800059ec:	00d00113          	li	sp,13
800059f0:	01200093          	li	ra,18
800059f4:	00000013          	nop
800059f8:	00000013          	nop
800059fc:	0020a733          	slt	a4,ra,sp
80005a00:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005a04:	00200293          	li	t0,2
80005a08:	fe5212e3          	bne	tp,t0,800059ec <test_31plus8_slt>
80005a0c:	00000393          	li	t2,0
80005a10:	0e771263          	bne	a4,t2,80005af4 <fail_slt>

80005a14 <slt_test_32>:
80005a14:	02000193          	li	gp,32
80005a18:	00000213          	li	tp,0

80005a1c <test_32plus8_slt>:
80005a1c:	00d00113          	li	sp,13
80005a20:	00000013          	nop
80005a24:	00700093          	li	ra,7
80005a28:	0020a733          	slt	a4,ra,sp
80005a2c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005a30:	00200293          	li	t0,2
80005a34:	fe5214e3          	bne	tp,t0,80005a1c <test_32plus8_slt>
80005a38:	00100393          	li	t2,1
80005a3c:	0a771c63          	bne	a4,t2,80005af4 <fail_slt>

80005a40 <slt_test_33>:
80005a40:	02100193          	li	gp,33
80005a44:	00000213          	li	tp,0

80005a48 <test_33plus8_slt>:
80005a48:	00d00113          	li	sp,13
80005a4c:	00000013          	nop
80005a50:	01300093          	li	ra,19
80005a54:	00000013          	nop
80005a58:	0020a733          	slt	a4,ra,sp
80005a5c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005a60:	00200293          	li	t0,2
80005a64:	fe5212e3          	bne	tp,t0,80005a48 <test_33plus8_slt>
80005a68:	00000393          	li	t2,0
80005a6c:	08771463          	bne	a4,t2,80005af4 <fail_slt>

80005a70 <slt_test_34>:
80005a70:	02200193          	li	gp,34
80005a74:	00000213          	li	tp,0

80005a78 <test_34plus8_slt>:
80005a78:	00d00113          	li	sp,13
80005a7c:	00000013          	nop
80005a80:	00000013          	nop
80005a84:	00600093          	li	ra,6
80005a88:	0020a733          	slt	a4,ra,sp
80005a8c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005a90:	00200293          	li	t0,2
80005a94:	fe5212e3          	bne	tp,t0,80005a78 <test_34plus8_slt>
80005a98:	00100393          	li	t2,1
80005a9c:	04771c63          	bne	a4,t2,80005af4 <fail_slt>

80005aa0 <slt_test_35>:
80005aa0:	02300193          	li	gp,35
80005aa4:	fff00093          	li	ra,-1
80005aa8:	00102133          	sgtz	sp,ra
80005aac:	00000393          	li	t2,0
80005ab0:	04711263          	bne	sp,t2,80005af4 <fail_slt>

80005ab4 <slt_test_36>:
80005ab4:	02400193          	li	gp,36
80005ab8:	fff00093          	li	ra,-1
80005abc:	0000a133          	sltz	sp,ra
80005ac0:	00100393          	li	t2,1
80005ac4:	02711863          	bne	sp,t2,80005af4 <fail_slt>

80005ac8 <slt_test_37>:
80005ac8:	02500193          	li	gp,37
80005acc:	000020b3          	sltz	ra,zero
80005ad0:	00000393          	li	t2,0
80005ad4:	02709063          	bne	ra,t2,80005af4 <fail_slt>

80005ad8 <slt_test_38>:
80005ad8:	02600193          	li	gp,38
80005adc:	01000093          	li	ra,16
80005ae0:	01e00113          	li	sp,30
80005ae4:	0020a033          	slt	zero,ra,sp
80005ae8:	00000393          	li	t2,0
80005aec:	00701463          	bne	zero,t2,80005af4 <fail_slt>
80005af0:	00c0006f          	j	80005afc <pass_slt>

80005af4 <fail_slt>:
80005af4:	04d00893          	li	a7,77
80005af8:	ffdff06f          	j	80005af4 <fail_slt>

80005afc <pass_slt>:
80005afc:	04200893          	li	a7,66

80005b00 <slti_test_2>:
80005b00:	00200193          	li	gp,2
80005b04:	00000693          	li	a3,0
80005b08:	0006a713          	slti	a4,a3,0
80005b0c:	00000393          	li	t2,0
80005b10:	26771263          	bne	a4,t2,80005d74 <fail_slti>

80005b14 <slti_test_3>:
80005b14:	00300193          	li	gp,3
80005b18:	00100693          	li	a3,1
80005b1c:	0016a713          	slti	a4,a3,1
80005b20:	00000393          	li	t2,0
80005b24:	24771863          	bne	a4,t2,80005d74 <fail_slti>

80005b28 <slti_test_4>:
80005b28:	00400193          	li	gp,4
80005b2c:	00300693          	li	a3,3
80005b30:	0076a713          	slti	a4,a3,7
80005b34:	00100393          	li	t2,1
80005b38:	22771e63          	bne	a4,t2,80005d74 <fail_slti>

80005b3c <slti_test_5>:
80005b3c:	00500193          	li	gp,5
80005b40:	00700693          	li	a3,7
80005b44:	0036a713          	slti	a4,a3,3
80005b48:	00000393          	li	t2,0
80005b4c:	22771463          	bne	a4,t2,80005d74 <fail_slti>

80005b50 <slti_test_6>:
80005b50:	00600193          	li	gp,6
80005b54:	00000693          	li	a3,0
80005b58:	8006a713          	slti	a4,a3,-2048
80005b5c:	00000393          	li	t2,0
80005b60:	20771a63          	bne	a4,t2,80005d74 <fail_slti>

80005b64 <slti_test_7>:
80005b64:	00700193          	li	gp,7
80005b68:	800006b7          	lui	a3,0x80000
80005b6c:	0006a713          	slti	a4,a3,0
80005b70:	00100393          	li	t2,1
80005b74:	20771063          	bne	a4,t2,80005d74 <fail_slti>

80005b78 <slti_test_8>:
80005b78:	00800193          	li	gp,8
80005b7c:	800006b7          	lui	a3,0x80000
80005b80:	8006a713          	slti	a4,a3,-2048
80005b84:	00100393          	li	t2,1
80005b88:	1e771663          	bne	a4,t2,80005d74 <fail_slti>

80005b8c <slti_test_9>:
80005b8c:	00900193          	li	gp,9
80005b90:	00000693          	li	a3,0
80005b94:	7ff6a713          	slti	a4,a3,2047
80005b98:	00100393          	li	t2,1
80005b9c:	1c771c63          	bne	a4,t2,80005d74 <fail_slti>

80005ba0 <slti_test_10>:
80005ba0:	00a00193          	li	gp,10
80005ba4:	800006b7          	lui	a3,0x80000
80005ba8:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80005bac:	0006a713          	slti	a4,a3,0
80005bb0:	00000393          	li	t2,0
80005bb4:	1c771063          	bne	a4,t2,80005d74 <fail_slti>

80005bb8 <slti_test_11>:
80005bb8:	00b00193          	li	gp,11
80005bbc:	800006b7          	lui	a3,0x80000
80005bc0:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80005bc4:	7ff6a713          	slti	a4,a3,2047
80005bc8:	00000393          	li	t2,0
80005bcc:	1a771463          	bne	a4,t2,80005d74 <fail_slti>

80005bd0 <slti_test_12>:
80005bd0:	00c00193          	li	gp,12
80005bd4:	800006b7          	lui	a3,0x80000
80005bd8:	7ff6a713          	slti	a4,a3,2047
80005bdc:	00100393          	li	t2,1
80005be0:	18771a63          	bne	a4,t2,80005d74 <fail_slti>

80005be4 <slti_test_13>:
80005be4:	00d00193          	li	gp,13
80005be8:	800006b7          	lui	a3,0x80000
80005bec:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80005bf0:	8006a713          	slti	a4,a3,-2048
80005bf4:	00000393          	li	t2,0
80005bf8:	16771e63          	bne	a4,t2,80005d74 <fail_slti>

80005bfc <slti_test_14>:
80005bfc:	00e00193          	li	gp,14
80005c00:	00000693          	li	a3,0
80005c04:	fff6a713          	slti	a4,a3,-1
80005c08:	00000393          	li	t2,0
80005c0c:	16771463          	bne	a4,t2,80005d74 <fail_slti>

80005c10 <slti_test_15>:
80005c10:	00f00193          	li	gp,15
80005c14:	fff00693          	li	a3,-1
80005c18:	0016a713          	slti	a4,a3,1
80005c1c:	00100393          	li	t2,1
80005c20:	14771a63          	bne	a4,t2,80005d74 <fail_slti>

80005c24 <slti_test_16>:
80005c24:	01000193          	li	gp,16
80005c28:	fff00693          	li	a3,-1
80005c2c:	fff6a713          	slti	a4,a3,-1
80005c30:	00000393          	li	t2,0
80005c34:	14771063          	bne	a4,t2,80005d74 <fail_slti>

80005c38 <slti_test_17>:
80005c38:	01100193          	li	gp,17
80005c3c:	00b00593          	li	a1,11
80005c40:	00d5a593          	slti	a1,a1,13
80005c44:	00100393          	li	t2,1
80005c48:	12759663          	bne	a1,t2,80005d74 <fail_slti>

80005c4c <slti_test_18>:
80005c4c:	01200193          	li	gp,18
80005c50:	00000213          	li	tp,0

80005c54 <test_18plus8_slti>:
80005c54:	00f00093          	li	ra,15
80005c58:	00a0a713          	slti	a4,ra,10
80005c5c:	00070313          	mv	t1,a4
80005c60:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005c64:	00200293          	li	t0,2
80005c68:	fe5216e3          	bne	tp,t0,80005c54 <test_18plus8_slti>
80005c6c:	00000393          	li	t2,0
80005c70:	10731263          	bne	t1,t2,80005d74 <fail_slti>

80005c74 <slti_test_19>:
80005c74:	01300193          	li	gp,19
80005c78:	00000213          	li	tp,0

80005c7c <test_19plus8_slti>:
80005c7c:	00a00093          	li	ra,10
80005c80:	0100a713          	slti	a4,ra,16
80005c84:	00000013          	nop
80005c88:	00070313          	mv	t1,a4
80005c8c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005c90:	00200293          	li	t0,2
80005c94:	fe5214e3          	bne	tp,t0,80005c7c <test_19plus8_slti>
80005c98:	00100393          	li	t2,1
80005c9c:	0c731c63          	bne	t1,t2,80005d74 <fail_slti>

80005ca0 <slti_test_20>:
80005ca0:	01400193          	li	gp,20
80005ca4:	00000213          	li	tp,0

80005ca8 <test_20plus8_slti>:
80005ca8:	01000093          	li	ra,16
80005cac:	0090a713          	slti	a4,ra,9
80005cb0:	00000013          	nop
80005cb4:	00000013          	nop
80005cb8:	00070313          	mv	t1,a4
80005cbc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005cc0:	00200293          	li	t0,2
80005cc4:	fe5212e3          	bne	tp,t0,80005ca8 <test_20plus8_slti>
80005cc8:	00000393          	li	t2,0
80005ccc:	0a731463          	bne	t1,t2,80005d74 <fail_slti>

80005cd0 <slti_test_21>:
80005cd0:	01500193          	li	gp,21
80005cd4:	00000213          	li	tp,0

80005cd8 <test_21plus8_slti>:
80005cd8:	00b00093          	li	ra,11
80005cdc:	00f0a713          	slti	a4,ra,15
80005ce0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005ce4:	00200293          	li	t0,2
80005ce8:	fe5218e3          	bne	tp,t0,80005cd8 <test_21plus8_slti>
80005cec:	00100393          	li	t2,1
80005cf0:	08771263          	bne	a4,t2,80005d74 <fail_slti>

80005cf4 <slti_test_22>:
80005cf4:	01600193          	li	gp,22
80005cf8:	00000213          	li	tp,0

80005cfc <test_22plus8_slti>:
80005cfc:	01100093          	li	ra,17
80005d00:	00000013          	nop
80005d04:	0080a713          	slti	a4,ra,8
80005d08:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005d0c:	00200293          	li	t0,2
80005d10:	fe5216e3          	bne	tp,t0,80005cfc <test_22plus8_slti>
80005d14:	00000393          	li	t2,0
80005d18:	04771e63          	bne	a4,t2,80005d74 <fail_slti>

80005d1c <slti_test_23>:
80005d1c:	01700193          	li	gp,23
80005d20:	00000213          	li	tp,0

80005d24 <test_23plus8_slti>:
80005d24:	00c00093          	li	ra,12
80005d28:	00000013          	nop
80005d2c:	00000013          	nop
80005d30:	00e0a713          	slti	a4,ra,14
80005d34:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005d38:	00200293          	li	t0,2
80005d3c:	fe5214e3          	bne	tp,t0,80005d24 <test_23plus8_slti>
80005d40:	00100393          	li	t2,1
80005d44:	02771863          	bne	a4,t2,80005d74 <fail_slti>

80005d48 <slti_test_24>:
80005d48:	01800193          	li	gp,24
80005d4c:	fff02093          	slti	ra,zero,-1
80005d50:	00000393          	li	t2,0
80005d54:	02709063          	bne	ra,t2,80005d74 <fail_slti>

80005d58 <slti_test_25>:
80005d58:	01900193          	li	gp,25
80005d5c:	00ff00b7          	lui	ra,0xff0
80005d60:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80005d64:	fff0a013          	slti	zero,ra,-1
80005d68:	00000393          	li	t2,0
80005d6c:	00701463          	bne	zero,t2,80005d74 <fail_slti>
80005d70:	00c0006f          	j	80005d7c <pass_slti>

80005d74 <fail_slti>:
80005d74:	04d00893          	li	a7,77
80005d78:	ffdff06f          	j	80005d74 <fail_slti>

80005d7c <pass_slti>:
80005d7c:	04200893          	li	a7,66

80005d80 <sltiu_test_2>:
80005d80:	00200193          	li	gp,2
80005d84:	00000693          	li	a3,0
80005d88:	0006b713          	sltiu	a4,a3,0
80005d8c:	00000393          	li	t2,0
80005d90:	26771263          	bne	a4,t2,80005ff4 <fail_sltiu>

80005d94 <sltiu_test_3>:
80005d94:	00300193          	li	gp,3
80005d98:	00100693          	li	a3,1
80005d9c:	0016b713          	seqz	a4,a3
80005da0:	00000393          	li	t2,0
80005da4:	24771863          	bne	a4,t2,80005ff4 <fail_sltiu>

80005da8 <sltiu_test_4>:
80005da8:	00400193          	li	gp,4
80005dac:	00300693          	li	a3,3
80005db0:	0076b713          	sltiu	a4,a3,7
80005db4:	00100393          	li	t2,1
80005db8:	22771e63          	bne	a4,t2,80005ff4 <fail_sltiu>

80005dbc <sltiu_test_5>:
80005dbc:	00500193          	li	gp,5
80005dc0:	00700693          	li	a3,7
80005dc4:	0036b713          	sltiu	a4,a3,3
80005dc8:	00000393          	li	t2,0
80005dcc:	22771463          	bne	a4,t2,80005ff4 <fail_sltiu>

80005dd0 <sltiu_test_6>:
80005dd0:	00600193          	li	gp,6
80005dd4:	00000693          	li	a3,0
80005dd8:	8006b713          	sltiu	a4,a3,-2048
80005ddc:	00100393          	li	t2,1
80005de0:	20771a63          	bne	a4,t2,80005ff4 <fail_sltiu>

80005de4 <sltiu_test_7>:
80005de4:	00700193          	li	gp,7
80005de8:	800006b7          	lui	a3,0x80000
80005dec:	0006b713          	sltiu	a4,a3,0
80005df0:	00000393          	li	t2,0
80005df4:	20771063          	bne	a4,t2,80005ff4 <fail_sltiu>

80005df8 <sltiu_test_8>:
80005df8:	00800193          	li	gp,8
80005dfc:	800006b7          	lui	a3,0x80000
80005e00:	8006b713          	sltiu	a4,a3,-2048
80005e04:	00100393          	li	t2,1
80005e08:	1e771663          	bne	a4,t2,80005ff4 <fail_sltiu>

80005e0c <sltiu_test_9>:
80005e0c:	00900193          	li	gp,9
80005e10:	00000693          	li	a3,0
80005e14:	7ff6b713          	sltiu	a4,a3,2047
80005e18:	00100393          	li	t2,1
80005e1c:	1c771c63          	bne	a4,t2,80005ff4 <fail_sltiu>

80005e20 <sltiu_test_10>:
80005e20:	00a00193          	li	gp,10
80005e24:	800006b7          	lui	a3,0x80000
80005e28:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80005e2c:	0006b713          	sltiu	a4,a3,0
80005e30:	00000393          	li	t2,0
80005e34:	1c771063          	bne	a4,t2,80005ff4 <fail_sltiu>

80005e38 <sltiu_test_11>:
80005e38:	00b00193          	li	gp,11
80005e3c:	800006b7          	lui	a3,0x80000
80005e40:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80005e44:	7ff6b713          	sltiu	a4,a3,2047
80005e48:	00000393          	li	t2,0
80005e4c:	1a771463          	bne	a4,t2,80005ff4 <fail_sltiu>

80005e50 <sltiu_test_12>:
80005e50:	00c00193          	li	gp,12
80005e54:	800006b7          	lui	a3,0x80000
80005e58:	7ff6b713          	sltiu	a4,a3,2047
80005e5c:	00000393          	li	t2,0
80005e60:	18771a63          	bne	a4,t2,80005ff4 <fail_sltiu>

80005e64 <sltiu_test_13>:
80005e64:	00d00193          	li	gp,13
80005e68:	800006b7          	lui	a3,0x80000
80005e6c:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80005e70:	8006b713          	sltiu	a4,a3,-2048
80005e74:	00100393          	li	t2,1
80005e78:	16771e63          	bne	a4,t2,80005ff4 <fail_sltiu>

80005e7c <sltiu_test_14>:
80005e7c:	00e00193          	li	gp,14
80005e80:	00000693          	li	a3,0
80005e84:	fff6b713          	sltiu	a4,a3,-1
80005e88:	00100393          	li	t2,1
80005e8c:	16771463          	bne	a4,t2,80005ff4 <fail_sltiu>

80005e90 <sltiu_test_15>:
80005e90:	00f00193          	li	gp,15
80005e94:	fff00693          	li	a3,-1
80005e98:	0016b713          	seqz	a4,a3
80005e9c:	00000393          	li	t2,0
80005ea0:	14771a63          	bne	a4,t2,80005ff4 <fail_sltiu>

80005ea4 <sltiu_test_16>:
80005ea4:	01000193          	li	gp,16
80005ea8:	fff00693          	li	a3,-1
80005eac:	fff6b713          	sltiu	a4,a3,-1
80005eb0:	00000393          	li	t2,0
80005eb4:	14771063          	bne	a4,t2,80005ff4 <fail_sltiu>

80005eb8 <sltiu_test_17>:
80005eb8:	01100193          	li	gp,17
80005ebc:	00b00593          	li	a1,11
80005ec0:	00d5b593          	sltiu	a1,a1,13
80005ec4:	00100393          	li	t2,1
80005ec8:	12759663          	bne	a1,t2,80005ff4 <fail_sltiu>

80005ecc <sltiu_test_18>:
80005ecc:	01200193          	li	gp,18
80005ed0:	00000213          	li	tp,0

80005ed4 <test_18plus8_sltiu>:
80005ed4:	00f00093          	li	ra,15
80005ed8:	00a0b713          	sltiu	a4,ra,10
80005edc:	00070313          	mv	t1,a4
80005ee0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005ee4:	00200293          	li	t0,2
80005ee8:	fe5216e3          	bne	tp,t0,80005ed4 <test_18plus8_sltiu>
80005eec:	00000393          	li	t2,0
80005ef0:	10731263          	bne	t1,t2,80005ff4 <fail_sltiu>

80005ef4 <sltiu_test_19>:
80005ef4:	01300193          	li	gp,19
80005ef8:	00000213          	li	tp,0

80005efc <test_19plus8_sltiu>:
80005efc:	00a00093          	li	ra,10
80005f00:	0100b713          	sltiu	a4,ra,16
80005f04:	00000013          	nop
80005f08:	00070313          	mv	t1,a4
80005f0c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005f10:	00200293          	li	t0,2
80005f14:	fe5214e3          	bne	tp,t0,80005efc <test_19plus8_sltiu>
80005f18:	00100393          	li	t2,1
80005f1c:	0c731c63          	bne	t1,t2,80005ff4 <fail_sltiu>

80005f20 <sltiu_test_20>:
80005f20:	01400193          	li	gp,20
80005f24:	00000213          	li	tp,0

80005f28 <test_20plus8_sltiu>:
80005f28:	01000093          	li	ra,16
80005f2c:	0090b713          	sltiu	a4,ra,9
80005f30:	00000013          	nop
80005f34:	00000013          	nop
80005f38:	00070313          	mv	t1,a4
80005f3c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005f40:	00200293          	li	t0,2
80005f44:	fe5212e3          	bne	tp,t0,80005f28 <test_20plus8_sltiu>
80005f48:	00000393          	li	t2,0
80005f4c:	0a731463          	bne	t1,t2,80005ff4 <fail_sltiu>

80005f50 <sltiu_test_21>:
80005f50:	01500193          	li	gp,21
80005f54:	00000213          	li	tp,0

80005f58 <test_21plus8_sltiu>:
80005f58:	00b00093          	li	ra,11
80005f5c:	00f0b713          	sltiu	a4,ra,15
80005f60:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005f64:	00200293          	li	t0,2
80005f68:	fe5218e3          	bne	tp,t0,80005f58 <test_21plus8_sltiu>
80005f6c:	00100393          	li	t2,1
80005f70:	08771263          	bne	a4,t2,80005ff4 <fail_sltiu>

80005f74 <sltiu_test_22>:
80005f74:	01600193          	li	gp,22
80005f78:	00000213          	li	tp,0

80005f7c <test_22plus8_sltiu>:
80005f7c:	01100093          	li	ra,17
80005f80:	00000013          	nop
80005f84:	0080b713          	sltiu	a4,ra,8
80005f88:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005f8c:	00200293          	li	t0,2
80005f90:	fe5216e3          	bne	tp,t0,80005f7c <test_22plus8_sltiu>
80005f94:	00000393          	li	t2,0
80005f98:	04771e63          	bne	a4,t2,80005ff4 <fail_sltiu>

80005f9c <sltiu_test_23>:
80005f9c:	01700193          	li	gp,23
80005fa0:	00000213          	li	tp,0

80005fa4 <test_23plus8_sltiu>:
80005fa4:	00c00093          	li	ra,12
80005fa8:	00000013          	nop
80005fac:	00000013          	nop
80005fb0:	00e0b713          	sltiu	a4,ra,14
80005fb4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80005fb8:	00200293          	li	t0,2
80005fbc:	fe5214e3          	bne	tp,t0,80005fa4 <test_23plus8_sltiu>
80005fc0:	00100393          	li	t2,1
80005fc4:	02771863          	bne	a4,t2,80005ff4 <fail_sltiu>

80005fc8 <sltiu_test_24>:
80005fc8:	01800193          	li	gp,24
80005fcc:	fff03093          	sltiu	ra,zero,-1
80005fd0:	00100393          	li	t2,1
80005fd4:	02709063          	bne	ra,t2,80005ff4 <fail_sltiu>

80005fd8 <sltiu_test_25>:
80005fd8:	01900193          	li	gp,25
80005fdc:	00ff00b7          	lui	ra,0xff0
80005fe0:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80005fe4:	fff0b013          	sltiu	zero,ra,-1
80005fe8:	00000393          	li	t2,0
80005fec:	00701463          	bne	zero,t2,80005ff4 <fail_sltiu>
80005ff0:	00c0006f          	j	80005ffc <pass_sltiu>

80005ff4 <fail_sltiu>:
80005ff4:	04d00893          	li	a7,77
80005ff8:	ffdff06f          	j	80005ff4 <fail_sltiu>

80005ffc <pass_sltiu>:
80005ffc:	04200893          	li	a7,66

80006000 <sltu_test_2>:
80006000:	00200193          	li	gp,2
80006004:	00000593          	li	a1,0
80006008:	00000613          	li	a2,0
8000600c:	00c5b733          	sltu	a4,a1,a2
80006010:	00000393          	li	t2,0
80006014:	4a771a63          	bne	a4,t2,800064c8 <fail_sltu>

80006018 <sltu_test_3>:
80006018:	00300193          	li	gp,3
8000601c:	00100593          	li	a1,1
80006020:	00100613          	li	a2,1
80006024:	00c5b733          	sltu	a4,a1,a2
80006028:	00000393          	li	t2,0
8000602c:	48771e63          	bne	a4,t2,800064c8 <fail_sltu>

80006030 <sltu_test_4>:
80006030:	00400193          	li	gp,4
80006034:	00300593          	li	a1,3
80006038:	00700613          	li	a2,7
8000603c:	00c5b733          	sltu	a4,a1,a2
80006040:	00100393          	li	t2,1
80006044:	48771263          	bne	a4,t2,800064c8 <fail_sltu>

80006048 <sltu_test_5>:
80006048:	00500193          	li	gp,5
8000604c:	00700593          	li	a1,7
80006050:	00300613          	li	a2,3
80006054:	00c5b733          	sltu	a4,a1,a2
80006058:	00000393          	li	t2,0
8000605c:	46771663          	bne	a4,t2,800064c8 <fail_sltu>

80006060 <sltu_test_6>:
80006060:	00600193          	li	gp,6
80006064:	00000593          	li	a1,0
80006068:	ffff8637          	lui	a2,0xffff8
8000606c:	00c5b733          	sltu	a4,a1,a2
80006070:	00100393          	li	t2,1
80006074:	44771a63          	bne	a4,t2,800064c8 <fail_sltu>

80006078 <sltu_test_7>:
80006078:	00700193          	li	gp,7
8000607c:	800005b7          	lui	a1,0x80000
80006080:	00000613          	li	a2,0
80006084:	00c5b733          	sltu	a4,a1,a2
80006088:	00000393          	li	t2,0
8000608c:	42771e63          	bne	a4,t2,800064c8 <fail_sltu>

80006090 <sltu_test_8>:
80006090:	00800193          	li	gp,8
80006094:	800005b7          	lui	a1,0x80000
80006098:	ffff8637          	lui	a2,0xffff8
8000609c:	00c5b733          	sltu	a4,a1,a2
800060a0:	00100393          	li	t2,1
800060a4:	42771263          	bne	a4,t2,800064c8 <fail_sltu>

800060a8 <sltu_test_9>:
800060a8:	00900193          	li	gp,9
800060ac:	00000593          	li	a1,0
800060b0:	00008637          	lui	a2,0x8
800060b4:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
800060b8:	00c5b733          	sltu	a4,a1,a2
800060bc:	00100393          	li	t2,1
800060c0:	40771463          	bne	a4,t2,800064c8 <fail_sltu>

800060c4 <sltu_test_10>:
800060c4:	00a00193          	li	gp,10
800060c8:	800005b7          	lui	a1,0x80000
800060cc:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
800060d0:	00000613          	li	a2,0
800060d4:	00c5b733          	sltu	a4,a1,a2
800060d8:	00000393          	li	t2,0
800060dc:	3e771663          	bne	a4,t2,800064c8 <fail_sltu>

800060e0 <sltu_test_11>:
800060e0:	00b00193          	li	gp,11
800060e4:	800005b7          	lui	a1,0x80000
800060e8:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
800060ec:	00008637          	lui	a2,0x8
800060f0:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
800060f4:	00c5b733          	sltu	a4,a1,a2
800060f8:	00000393          	li	t2,0
800060fc:	3c771663          	bne	a4,t2,800064c8 <fail_sltu>

80006100 <sltu_test_12>:
80006100:	00c00193          	li	gp,12
80006104:	800005b7          	lui	a1,0x80000
80006108:	00008637          	lui	a2,0x8
8000610c:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
80006110:	00c5b733          	sltu	a4,a1,a2
80006114:	00000393          	li	t2,0
80006118:	3a771863          	bne	a4,t2,800064c8 <fail_sltu>

8000611c <sltu_test_13>:
8000611c:	00d00193          	li	gp,13
80006120:	800005b7          	lui	a1,0x80000
80006124:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
80006128:	ffff8637          	lui	a2,0xffff8
8000612c:	00c5b733          	sltu	a4,a1,a2
80006130:	00100393          	li	t2,1
80006134:	38771a63          	bne	a4,t2,800064c8 <fail_sltu>

80006138 <sltu_test_14>:
80006138:	00e00193          	li	gp,14
8000613c:	00000593          	li	a1,0
80006140:	fff00613          	li	a2,-1
80006144:	00c5b733          	sltu	a4,a1,a2
80006148:	00100393          	li	t2,1
8000614c:	36771e63          	bne	a4,t2,800064c8 <fail_sltu>

80006150 <sltu_test_15>:
80006150:	00f00193          	li	gp,15
80006154:	fff00593          	li	a1,-1
80006158:	00100613          	li	a2,1
8000615c:	00c5b733          	sltu	a4,a1,a2
80006160:	00000393          	li	t2,0
80006164:	36771263          	bne	a4,t2,800064c8 <fail_sltu>

80006168 <sltu_test_16>:
80006168:	01000193          	li	gp,16
8000616c:	fff00593          	li	a1,-1
80006170:	fff00613          	li	a2,-1
80006174:	00c5b733          	sltu	a4,a1,a2
80006178:	00000393          	li	t2,0
8000617c:	34771663          	bne	a4,t2,800064c8 <fail_sltu>

80006180 <sltu_test_17>:
80006180:	01100193          	li	gp,17
80006184:	00e00593          	li	a1,14
80006188:	00d00613          	li	a2,13
8000618c:	00c5b5b3          	sltu	a1,a1,a2
80006190:	00000393          	li	t2,0
80006194:	32759a63          	bne	a1,t2,800064c8 <fail_sltu>

80006198 <sltu_test_18>:
80006198:	01200193          	li	gp,18
8000619c:	00b00593          	li	a1,11
800061a0:	00d00613          	li	a2,13
800061a4:	00c5b633          	sltu	a2,a1,a2
800061a8:	00100393          	li	t2,1
800061ac:	30761e63          	bne	a2,t2,800064c8 <fail_sltu>

800061b0 <sltu_test_19>:
800061b0:	01300193          	li	gp,19
800061b4:	00d00593          	li	a1,13
800061b8:	00b5b5b3          	sltu	a1,a1,a1
800061bc:	00000393          	li	t2,0
800061c0:	30759463          	bne	a1,t2,800064c8 <fail_sltu>

800061c4 <sltu_test_20>:
800061c4:	01400193          	li	gp,20
800061c8:	00000213          	li	tp,0

800061cc <test_20plus8_sltu>:
800061cc:	00b00093          	li	ra,11
800061d0:	00d00113          	li	sp,13
800061d4:	0020b733          	sltu	a4,ra,sp
800061d8:	00070313          	mv	t1,a4
800061dc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800061e0:	00200293          	li	t0,2
800061e4:	fe5214e3          	bne	tp,t0,800061cc <test_20plus8_sltu>
800061e8:	00100393          	li	t2,1
800061ec:	2c731e63          	bne	t1,t2,800064c8 <fail_sltu>

800061f0 <sltu_test_21>:
800061f0:	01500193          	li	gp,21
800061f4:	00000213          	li	tp,0

800061f8 <test_21plus8_sltu>:
800061f8:	00e00093          	li	ra,14
800061fc:	00d00113          	li	sp,13
80006200:	0020b733          	sltu	a4,ra,sp
80006204:	00000013          	nop
80006208:	00070313          	mv	t1,a4
8000620c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006210:	00200293          	li	t0,2
80006214:	fe5212e3          	bne	tp,t0,800061f8 <test_21plus8_sltu>
80006218:	00000393          	li	t2,0
8000621c:	2a731663          	bne	t1,t2,800064c8 <fail_sltu>

80006220 <sltu_test_22>:
80006220:	01600193          	li	gp,22
80006224:	00000213          	li	tp,0

80006228 <test_22plus8_sltu>:
80006228:	00c00093          	li	ra,12
8000622c:	00d00113          	li	sp,13
80006230:	0020b733          	sltu	a4,ra,sp
80006234:	00000013          	nop
80006238:	00000013          	nop
8000623c:	00070313          	mv	t1,a4
80006240:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006244:	00200293          	li	t0,2
80006248:	fe5210e3          	bne	tp,t0,80006228 <test_22plus8_sltu>
8000624c:	00100393          	li	t2,1
80006250:	26731c63          	bne	t1,t2,800064c8 <fail_sltu>

80006254 <sltu_test_23>:
80006254:	01700193          	li	gp,23
80006258:	00000213          	li	tp,0

8000625c <test_23plus8_sltu>:
8000625c:	00e00093          	li	ra,14
80006260:	00d00113          	li	sp,13
80006264:	0020b733          	sltu	a4,ra,sp
80006268:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000626c:	00200293          	li	t0,2
80006270:	fe5216e3          	bne	tp,t0,8000625c <test_23plus8_sltu>
80006274:	00000393          	li	t2,0
80006278:	24771863          	bne	a4,t2,800064c8 <fail_sltu>

8000627c <sltu_test_24>:
8000627c:	01800193          	li	gp,24
80006280:	00000213          	li	tp,0

80006284 <test_24plus8_sltu>:
80006284:	00b00093          	li	ra,11
80006288:	00d00113          	li	sp,13
8000628c:	00000013          	nop
80006290:	0020b733          	sltu	a4,ra,sp
80006294:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006298:	00200293          	li	t0,2
8000629c:	fe5214e3          	bne	tp,t0,80006284 <test_24plus8_sltu>
800062a0:	00100393          	li	t2,1
800062a4:	22771263          	bne	a4,t2,800064c8 <fail_sltu>

800062a8 <sltu_test_25>:
800062a8:	01900193          	li	gp,25
800062ac:	00000213          	li	tp,0

800062b0 <test_25plus8_sltu>:
800062b0:	00f00093          	li	ra,15
800062b4:	00d00113          	li	sp,13
800062b8:	00000013          	nop
800062bc:	00000013          	nop
800062c0:	0020b733          	sltu	a4,ra,sp
800062c4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800062c8:	00200293          	li	t0,2
800062cc:	fe5212e3          	bne	tp,t0,800062b0 <test_25plus8_sltu>
800062d0:	00000393          	li	t2,0
800062d4:	1e771a63          	bne	a4,t2,800064c8 <fail_sltu>

800062d8 <sltu_test_26>:
800062d8:	01a00193          	li	gp,26
800062dc:	00000213          	li	tp,0

800062e0 <test_26plus8_sltu>:
800062e0:	00a00093          	li	ra,10
800062e4:	00000013          	nop
800062e8:	00d00113          	li	sp,13
800062ec:	0020b733          	sltu	a4,ra,sp
800062f0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800062f4:	00200293          	li	t0,2
800062f8:	fe5214e3          	bne	tp,t0,800062e0 <test_26plus8_sltu>
800062fc:	00100393          	li	t2,1
80006300:	1c771463          	bne	a4,t2,800064c8 <fail_sltu>

80006304 <sltu_test_27>:
80006304:	01b00193          	li	gp,27
80006308:	00000213          	li	tp,0

8000630c <test_27plus8_sltu>:
8000630c:	01000093          	li	ra,16
80006310:	00000013          	nop
80006314:	00d00113          	li	sp,13
80006318:	00000013          	nop
8000631c:	0020b733          	sltu	a4,ra,sp
80006320:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006324:	00200293          	li	t0,2
80006328:	fe5212e3          	bne	tp,t0,8000630c <test_27plus8_sltu>
8000632c:	00000393          	li	t2,0
80006330:	18771c63          	bne	a4,t2,800064c8 <fail_sltu>

80006334 <sltu_test_28>:
80006334:	01c00193          	li	gp,28
80006338:	00000213          	li	tp,0

8000633c <test_28plus8_sltu>:
8000633c:	00900093          	li	ra,9
80006340:	00000013          	nop
80006344:	00000013          	nop
80006348:	00d00113          	li	sp,13
8000634c:	0020b733          	sltu	a4,ra,sp
80006350:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006354:	00200293          	li	t0,2
80006358:	fe5212e3          	bne	tp,t0,8000633c <test_28plus8_sltu>
8000635c:	00100393          	li	t2,1
80006360:	16771463          	bne	a4,t2,800064c8 <fail_sltu>

80006364 <sltu_test_29>:
80006364:	01d00193          	li	gp,29
80006368:	00000213          	li	tp,0

8000636c <test_29plus8_sltu>:
8000636c:	00d00113          	li	sp,13
80006370:	01100093          	li	ra,17
80006374:	0020b733          	sltu	a4,ra,sp
80006378:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000637c:	00200293          	li	t0,2
80006380:	fe5216e3          	bne	tp,t0,8000636c <test_29plus8_sltu>
80006384:	00000393          	li	t2,0
80006388:	14771063          	bne	a4,t2,800064c8 <fail_sltu>

8000638c <sltu_test_30>:
8000638c:	01e00193          	li	gp,30
80006390:	00000213          	li	tp,0

80006394 <test_30plus8_sltu>:
80006394:	00d00113          	li	sp,13
80006398:	00800093          	li	ra,8
8000639c:	00000013          	nop
800063a0:	0020b733          	sltu	a4,ra,sp
800063a4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800063a8:	00200293          	li	t0,2
800063ac:	fe5214e3          	bne	tp,t0,80006394 <test_30plus8_sltu>
800063b0:	00100393          	li	t2,1
800063b4:	10771a63          	bne	a4,t2,800064c8 <fail_sltu>

800063b8 <sltu_test_31>:
800063b8:	01f00193          	li	gp,31
800063bc:	00000213          	li	tp,0

800063c0 <test_31plus8_sltu>:
800063c0:	00d00113          	li	sp,13
800063c4:	01200093          	li	ra,18
800063c8:	00000013          	nop
800063cc:	00000013          	nop
800063d0:	0020b733          	sltu	a4,ra,sp
800063d4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800063d8:	00200293          	li	t0,2
800063dc:	fe5212e3          	bne	tp,t0,800063c0 <test_31plus8_sltu>
800063e0:	00000393          	li	t2,0
800063e4:	0e771263          	bne	a4,t2,800064c8 <fail_sltu>

800063e8 <sltu_test_32>:
800063e8:	02000193          	li	gp,32
800063ec:	00000213          	li	tp,0

800063f0 <test_32plus8_sltu>:
800063f0:	00d00113          	li	sp,13
800063f4:	00000013          	nop
800063f8:	00700093          	li	ra,7
800063fc:	0020b733          	sltu	a4,ra,sp
80006400:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006404:	00200293          	li	t0,2
80006408:	fe5214e3          	bne	tp,t0,800063f0 <test_32plus8_sltu>
8000640c:	00100393          	li	t2,1
80006410:	0a771c63          	bne	a4,t2,800064c8 <fail_sltu>

80006414 <sltu_test_33>:
80006414:	02100193          	li	gp,33
80006418:	00000213          	li	tp,0

8000641c <test_33plus8_sltu>:
8000641c:	00d00113          	li	sp,13
80006420:	00000013          	nop
80006424:	01300093          	li	ra,19
80006428:	00000013          	nop
8000642c:	0020b733          	sltu	a4,ra,sp
80006430:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006434:	00200293          	li	t0,2
80006438:	fe5212e3          	bne	tp,t0,8000641c <test_33plus8_sltu>
8000643c:	00000393          	li	t2,0
80006440:	08771463          	bne	a4,t2,800064c8 <fail_sltu>

80006444 <sltu_test_34>:
80006444:	02200193          	li	gp,34
80006448:	00000213          	li	tp,0

8000644c <test_34plus8_sltu>:
8000644c:	00d00113          	li	sp,13
80006450:	00000013          	nop
80006454:	00000013          	nop
80006458:	00600093          	li	ra,6
8000645c:	0020b733          	sltu	a4,ra,sp
80006460:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006464:	00200293          	li	t0,2
80006468:	fe5212e3          	bne	tp,t0,8000644c <test_34plus8_sltu>
8000646c:	00100393          	li	t2,1
80006470:	04771c63          	bne	a4,t2,800064c8 <fail_sltu>

80006474 <sltu_test_35>:
80006474:	02300193          	li	gp,35
80006478:	fff00093          	li	ra,-1
8000647c:	00103133          	snez	sp,ra
80006480:	00100393          	li	t2,1
80006484:	04711263          	bne	sp,t2,800064c8 <fail_sltu>

80006488 <sltu_test_36>:
80006488:	02400193          	li	gp,36
8000648c:	fff00093          	li	ra,-1
80006490:	0000b133          	sltu	sp,ra,zero
80006494:	00000393          	li	t2,0
80006498:	02711863          	bne	sp,t2,800064c8 <fail_sltu>

8000649c <sltu_test_37>:
8000649c:	02500193          	li	gp,37
800064a0:	000030b3          	snez	ra,zero
800064a4:	00000393          	li	t2,0
800064a8:	02709063          	bne	ra,t2,800064c8 <fail_sltu>

800064ac <sltu_test_38>:
800064ac:	02600193          	li	gp,38
800064b0:	01000093          	li	ra,16
800064b4:	01e00113          	li	sp,30
800064b8:	0020b033          	sltu	zero,ra,sp
800064bc:	00000393          	li	t2,0
800064c0:	00701463          	bne	zero,t2,800064c8 <fail_sltu>
800064c4:	00c0006f          	j	800064d0 <pass_sltu>

800064c8 <fail_sltu>:
800064c8:	04d00893          	li	a7,77
800064cc:	ffdff06f          	j	800064c8 <fail_sltu>

800064d0 <pass_sltu>:
800064d0:	04200893          	li	a7,66

800064d4 <sra_test_2>:
800064d4:	00200193          	li	gp,2
800064d8:	800005b7          	lui	a1,0x80000
800064dc:	00000613          	li	a2,0
800064e0:	40c5d733          	sra	a4,a1,a2
800064e4:	800003b7          	lui	t2,0x80000
800064e8:	58771463          	bne	a4,t2,80006a70 <fail_sra>

800064ec <sra_test_3>:
800064ec:	00300193          	li	gp,3
800064f0:	800005b7          	lui	a1,0x80000
800064f4:	00100613          	li	a2,1
800064f8:	40c5d733          	sra	a4,a1,a2
800064fc:	c00003b7          	lui	t2,0xc0000
80006500:	56771863          	bne	a4,t2,80006a70 <fail_sra>

80006504 <sra_test_4>:
80006504:	00400193          	li	gp,4
80006508:	800005b7          	lui	a1,0x80000
8000650c:	00700613          	li	a2,7
80006510:	40c5d733          	sra	a4,a1,a2
80006514:	ff0003b7          	lui	t2,0xff000
80006518:	54771c63          	bne	a4,t2,80006a70 <fail_sra>

8000651c <sra_test_5>:
8000651c:	00500193          	li	gp,5
80006520:	800005b7          	lui	a1,0x80000
80006524:	00e00613          	li	a2,14
80006528:	40c5d733          	sra	a4,a1,a2
8000652c:	fffe03b7          	lui	t2,0xfffe0
80006530:	54771063          	bne	a4,t2,80006a70 <fail_sra>

80006534 <sra_test_6>:
80006534:	00600193          	li	gp,6
80006538:	800005b7          	lui	a1,0x80000
8000653c:	00158593          	addi	a1,a1,1 # 80000001 <_start+0x1>
80006540:	01f00613          	li	a2,31
80006544:	40c5d733          	sra	a4,a1,a2
80006548:	fff00393          	li	t2,-1
8000654c:	52771263          	bne	a4,t2,80006a70 <fail_sra>

80006550 <sra_test_7>:
80006550:	00700193          	li	gp,7
80006554:	800005b7          	lui	a1,0x80000
80006558:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
8000655c:	00000613          	li	a2,0
80006560:	40c5d733          	sra	a4,a1,a2
80006564:	800003b7          	lui	t2,0x80000
80006568:	fff38393          	addi	t2,t2,-1 # 7fffffff <_size_rom+0x7fff72ef>
8000656c:	50771263          	bne	a4,t2,80006a70 <fail_sra>

80006570 <sra_test_8>:
80006570:	00800193          	li	gp,8
80006574:	800005b7          	lui	a1,0x80000
80006578:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
8000657c:	00100613          	li	a2,1
80006580:	40c5d733          	sra	a4,a1,a2
80006584:	400003b7          	lui	t2,0x40000
80006588:	fff38393          	addi	t2,t2,-1 # 3fffffff <_size_rom+0x3fff72ef>
8000658c:	4e771263          	bne	a4,t2,80006a70 <fail_sra>

80006590 <sra_test_9>:
80006590:	00900193          	li	gp,9
80006594:	800005b7          	lui	a1,0x80000
80006598:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
8000659c:	00700613          	li	a2,7
800065a0:	40c5d733          	sra	a4,a1,a2
800065a4:	010003b7          	lui	t2,0x1000
800065a8:	fff38393          	addi	t2,t2,-1 # ffffff <_size_rom+0xff72ef>
800065ac:	4c771263          	bne	a4,t2,80006a70 <fail_sra>

800065b0 <sra_test_10>:
800065b0:	00a00193          	li	gp,10
800065b4:	800005b7          	lui	a1,0x80000
800065b8:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
800065bc:	00e00613          	li	a2,14
800065c0:	40c5d733          	sra	a4,a1,a2
800065c4:	000203b7          	lui	t2,0x20
800065c8:	fff38393          	addi	t2,t2,-1 # 1ffff <_size_rom+0x172ef>
800065cc:	4a771263          	bne	a4,t2,80006a70 <fail_sra>

800065d0 <sra_test_11>:
800065d0:	00b00193          	li	gp,11
800065d4:	800005b7          	lui	a1,0x80000
800065d8:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
800065dc:	01f00613          	li	a2,31
800065e0:	40c5d733          	sra	a4,a1,a2
800065e4:	00000393          	li	t2,0
800065e8:	48771463          	bne	a4,t2,80006a70 <fail_sra>

800065ec <sra_test_12>:
800065ec:	00c00193          	li	gp,12
800065f0:	818185b7          	lui	a1,0x81818
800065f4:	18158593          	addi	a1,a1,385 # 81818181 <__stack_top+0x1804185>
800065f8:	00000613          	li	a2,0
800065fc:	40c5d733          	sra	a4,a1,a2
80006600:	818183b7          	lui	t2,0x81818
80006604:	18138393          	addi	t2,t2,385 # 81818181 <__stack_top+0x1804185>
80006608:	46771463          	bne	a4,t2,80006a70 <fail_sra>

8000660c <sra_test_13>:
8000660c:	00d00193          	li	gp,13
80006610:	818185b7          	lui	a1,0x81818
80006614:	18158593          	addi	a1,a1,385 # 81818181 <__stack_top+0x1804185>
80006618:	00100613          	li	a2,1
8000661c:	40c5d733          	sra	a4,a1,a2
80006620:	c0c0c3b7          	lui	t2,0xc0c0c
80006624:	0c038393          	addi	t2,t2,192 # c0c0c0c0 <__stack_top+0x40bf80c4>
80006628:	44771463          	bne	a4,t2,80006a70 <fail_sra>

8000662c <sra_test_14>:
8000662c:	00e00193          	li	gp,14
80006630:	818185b7          	lui	a1,0x81818
80006634:	18158593          	addi	a1,a1,385 # 81818181 <__stack_top+0x1804185>
80006638:	00700613          	li	a2,7
8000663c:	40c5d733          	sra	a4,a1,a2
80006640:	ff0303b7          	lui	t2,0xff030
80006644:	30338393          	addi	t2,t2,771 # ff030303 <__stack_top+0x7f01c307>
80006648:	42771463          	bne	a4,t2,80006a70 <fail_sra>

8000664c <sra_test_15>:
8000664c:	00f00193          	li	gp,15
80006650:	818185b7          	lui	a1,0x81818
80006654:	18158593          	addi	a1,a1,385 # 81818181 <__stack_top+0x1804185>
80006658:	00e00613          	li	a2,14
8000665c:	40c5d733          	sra	a4,a1,a2
80006660:	fffe03b7          	lui	t2,0xfffe0
80006664:	60638393          	addi	t2,t2,1542 # fffe0606 <__stack_top+0x7ffcc60a>
80006668:	40771463          	bne	a4,t2,80006a70 <fail_sra>

8000666c <sra_test_16>:
8000666c:	01000193          	li	gp,16
80006670:	818185b7          	lui	a1,0x81818
80006674:	18158593          	addi	a1,a1,385 # 81818181 <__stack_top+0x1804185>
80006678:	01f00613          	li	a2,31
8000667c:	40c5d733          	sra	a4,a1,a2
80006680:	fff00393          	li	t2,-1
80006684:	3e771663          	bne	a4,t2,80006a70 <fail_sra>

80006688 <sra_test_17>:
80006688:	01100193          	li	gp,17
8000668c:	818185b7          	lui	a1,0x81818
80006690:	18158593          	addi	a1,a1,385 # 81818181 <__stack_top+0x1804185>
80006694:	fc000613          	li	a2,-64
80006698:	40c5d733          	sra	a4,a1,a2
8000669c:	818183b7          	lui	t2,0x81818
800066a0:	18138393          	addi	t2,t2,385 # 81818181 <__stack_top+0x1804185>
800066a4:	3c771663          	bne	a4,t2,80006a70 <fail_sra>

800066a8 <sra_test_18>:
800066a8:	01200193          	li	gp,18
800066ac:	818185b7          	lui	a1,0x81818
800066b0:	18158593          	addi	a1,a1,385 # 81818181 <__stack_top+0x1804185>
800066b4:	fc100613          	li	a2,-63
800066b8:	40c5d733          	sra	a4,a1,a2
800066bc:	c0c0c3b7          	lui	t2,0xc0c0c
800066c0:	0c038393          	addi	t2,t2,192 # c0c0c0c0 <__stack_top+0x40bf80c4>
800066c4:	3a771663          	bne	a4,t2,80006a70 <fail_sra>

800066c8 <sra_test_19>:
800066c8:	01300193          	li	gp,19
800066cc:	818185b7          	lui	a1,0x81818
800066d0:	18158593          	addi	a1,a1,385 # 81818181 <__stack_top+0x1804185>
800066d4:	fc700613          	li	a2,-57
800066d8:	40c5d733          	sra	a4,a1,a2
800066dc:	ff0303b7          	lui	t2,0xff030
800066e0:	30338393          	addi	t2,t2,771 # ff030303 <__stack_top+0x7f01c307>
800066e4:	38771663          	bne	a4,t2,80006a70 <fail_sra>

800066e8 <sra_test_20>:
800066e8:	01400193          	li	gp,20
800066ec:	818185b7          	lui	a1,0x81818
800066f0:	18158593          	addi	a1,a1,385 # 81818181 <__stack_top+0x1804185>
800066f4:	fce00613          	li	a2,-50
800066f8:	40c5d733          	sra	a4,a1,a2
800066fc:	fffe03b7          	lui	t2,0xfffe0
80006700:	60638393          	addi	t2,t2,1542 # fffe0606 <__stack_top+0x7ffcc60a>
80006704:	36771663          	bne	a4,t2,80006a70 <fail_sra>

80006708 <sra_test_21>:
80006708:	01500193          	li	gp,21
8000670c:	818185b7          	lui	a1,0x81818
80006710:	18158593          	addi	a1,a1,385 # 81818181 <__stack_top+0x1804185>
80006714:	fff00613          	li	a2,-1
80006718:	40c5d733          	sra	a4,a1,a2
8000671c:	fff00393          	li	t2,-1
80006720:	34771863          	bne	a4,t2,80006a70 <fail_sra>

80006724 <sra_test_22>:
80006724:	01600193          	li	gp,22
80006728:	800005b7          	lui	a1,0x80000
8000672c:	00700613          	li	a2,7
80006730:	40c5d5b3          	sra	a1,a1,a2
80006734:	ff0003b7          	lui	t2,0xff000
80006738:	32759c63          	bne	a1,t2,80006a70 <fail_sra>

8000673c <sra_test_23>:
8000673c:	01700193          	li	gp,23
80006740:	800005b7          	lui	a1,0x80000
80006744:	00e00613          	li	a2,14
80006748:	40c5d633          	sra	a2,a1,a2
8000674c:	fffe03b7          	lui	t2,0xfffe0
80006750:	32761063          	bne	a2,t2,80006a70 <fail_sra>

80006754 <sra_test_24>:
80006754:	01800193          	li	gp,24
80006758:	00700593          	li	a1,7
8000675c:	40b5d5b3          	sra	a1,a1,a1
80006760:	00000393          	li	t2,0
80006764:	30759663          	bne	a1,t2,80006a70 <fail_sra>

80006768 <sra_test_25>:
80006768:	01900193          	li	gp,25
8000676c:	00000213          	li	tp,0

80006770 <test_25plus8_sra>:
80006770:	800000b7          	lui	ra,0x80000
80006774:	00700113          	li	sp,7
80006778:	4020d733          	sra	a4,ra,sp
8000677c:	00070313          	mv	t1,a4
80006780:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006784:	00200293          	li	t0,2
80006788:	fe5214e3          	bne	tp,t0,80006770 <test_25plus8_sra>
8000678c:	ff0003b7          	lui	t2,0xff000
80006790:	2e731063          	bne	t1,t2,80006a70 <fail_sra>

80006794 <sra_test_26>:
80006794:	01a00193          	li	gp,26
80006798:	00000213          	li	tp,0

8000679c <test_26plus8_sra>:
8000679c:	800000b7          	lui	ra,0x80000
800067a0:	00e00113          	li	sp,14
800067a4:	4020d733          	sra	a4,ra,sp
800067a8:	00000013          	nop
800067ac:	00070313          	mv	t1,a4
800067b0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800067b4:	00200293          	li	t0,2
800067b8:	fe5212e3          	bne	tp,t0,8000679c <test_26plus8_sra>
800067bc:	fffe03b7          	lui	t2,0xfffe0
800067c0:	2a731863          	bne	t1,t2,80006a70 <fail_sra>

800067c4 <sra_test_27>:
800067c4:	01b00193          	li	gp,27
800067c8:	00000213          	li	tp,0

800067cc <test_27plus8_sra>:
800067cc:	800000b7          	lui	ra,0x80000
800067d0:	01f00113          	li	sp,31
800067d4:	4020d733          	sra	a4,ra,sp
800067d8:	00000013          	nop
800067dc:	00000013          	nop
800067e0:	00070313          	mv	t1,a4
800067e4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800067e8:	00200293          	li	t0,2
800067ec:	fe5210e3          	bne	tp,t0,800067cc <test_27plus8_sra>
800067f0:	fff00393          	li	t2,-1
800067f4:	26731e63          	bne	t1,t2,80006a70 <fail_sra>

800067f8 <sra_test_28>:
800067f8:	01c00193          	li	gp,28
800067fc:	00000213          	li	tp,0

80006800 <test_28plus8_sra>:
80006800:	800000b7          	lui	ra,0x80000
80006804:	00700113          	li	sp,7
80006808:	4020d733          	sra	a4,ra,sp
8000680c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006810:	00200293          	li	t0,2
80006814:	fe5216e3          	bne	tp,t0,80006800 <test_28plus8_sra>
80006818:	ff0003b7          	lui	t2,0xff000
8000681c:	24771a63          	bne	a4,t2,80006a70 <fail_sra>

80006820 <sra_test_29>:
80006820:	01d00193          	li	gp,29
80006824:	00000213          	li	tp,0

80006828 <test_29plus8_sra>:
80006828:	800000b7          	lui	ra,0x80000
8000682c:	00e00113          	li	sp,14
80006830:	00000013          	nop
80006834:	4020d733          	sra	a4,ra,sp
80006838:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000683c:	00200293          	li	t0,2
80006840:	fe5214e3          	bne	tp,t0,80006828 <test_29plus8_sra>
80006844:	fffe03b7          	lui	t2,0xfffe0
80006848:	22771463          	bne	a4,t2,80006a70 <fail_sra>

8000684c <sra_test_30>:
8000684c:	01e00193          	li	gp,30
80006850:	00000213          	li	tp,0

80006854 <test_30plus8_sra>:
80006854:	800000b7          	lui	ra,0x80000
80006858:	01f00113          	li	sp,31
8000685c:	00000013          	nop
80006860:	00000013          	nop
80006864:	4020d733          	sra	a4,ra,sp
80006868:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000686c:	00200293          	li	t0,2
80006870:	fe5212e3          	bne	tp,t0,80006854 <test_30plus8_sra>
80006874:	fff00393          	li	t2,-1
80006878:	1e771c63          	bne	a4,t2,80006a70 <fail_sra>

8000687c <sra_test_31>:
8000687c:	01f00193          	li	gp,31
80006880:	00000213          	li	tp,0

80006884 <test_31plus8_sra>:
80006884:	800000b7          	lui	ra,0x80000
80006888:	00000013          	nop
8000688c:	00700113          	li	sp,7
80006890:	4020d733          	sra	a4,ra,sp
80006894:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006898:	00200293          	li	t0,2
8000689c:	fe5214e3          	bne	tp,t0,80006884 <test_31plus8_sra>
800068a0:	ff0003b7          	lui	t2,0xff000
800068a4:	1c771663          	bne	a4,t2,80006a70 <fail_sra>

800068a8 <sra_test_32>:
800068a8:	02000193          	li	gp,32
800068ac:	00000213          	li	tp,0

800068b0 <test_32plus8_sra>:
800068b0:	800000b7          	lui	ra,0x80000
800068b4:	00000013          	nop
800068b8:	00e00113          	li	sp,14
800068bc:	00000013          	nop
800068c0:	4020d733          	sra	a4,ra,sp
800068c4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800068c8:	00200293          	li	t0,2
800068cc:	fe5212e3          	bne	tp,t0,800068b0 <test_32plus8_sra>
800068d0:	fffe03b7          	lui	t2,0xfffe0
800068d4:	18771e63          	bne	a4,t2,80006a70 <fail_sra>

800068d8 <sra_test_33>:
800068d8:	02100193          	li	gp,33
800068dc:	00000213          	li	tp,0

800068e0 <test_33plus8_sra>:
800068e0:	800000b7          	lui	ra,0x80000
800068e4:	00000013          	nop
800068e8:	00000013          	nop
800068ec:	01f00113          	li	sp,31
800068f0:	4020d733          	sra	a4,ra,sp
800068f4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800068f8:	00200293          	li	t0,2
800068fc:	fe5212e3          	bne	tp,t0,800068e0 <test_33plus8_sra>
80006900:	fff00393          	li	t2,-1
80006904:	16771663          	bne	a4,t2,80006a70 <fail_sra>

80006908 <sra_test_34>:
80006908:	02200193          	li	gp,34
8000690c:	00000213          	li	tp,0

80006910 <test_34plus8_sra>:
80006910:	00700113          	li	sp,7
80006914:	800000b7          	lui	ra,0x80000
80006918:	4020d733          	sra	a4,ra,sp
8000691c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006920:	00200293          	li	t0,2
80006924:	fe5216e3          	bne	tp,t0,80006910 <test_34plus8_sra>
80006928:	ff0003b7          	lui	t2,0xff000
8000692c:	14771263          	bne	a4,t2,80006a70 <fail_sra>

80006930 <sra_test_35>:
80006930:	02300193          	li	gp,35
80006934:	00000213          	li	tp,0

80006938 <test_35plus8_sra>:
80006938:	00e00113          	li	sp,14
8000693c:	800000b7          	lui	ra,0x80000
80006940:	00000013          	nop
80006944:	4020d733          	sra	a4,ra,sp
80006948:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000694c:	00200293          	li	t0,2
80006950:	fe5214e3          	bne	tp,t0,80006938 <test_35plus8_sra>
80006954:	fffe03b7          	lui	t2,0xfffe0
80006958:	10771c63          	bne	a4,t2,80006a70 <fail_sra>

8000695c <sra_test_36>:
8000695c:	02400193          	li	gp,36
80006960:	00000213          	li	tp,0

80006964 <test_36plus8_sra>:
80006964:	01f00113          	li	sp,31
80006968:	800000b7          	lui	ra,0x80000
8000696c:	00000013          	nop
80006970:	00000013          	nop
80006974:	4020d733          	sra	a4,ra,sp
80006978:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000697c:	00200293          	li	t0,2
80006980:	fe5212e3          	bne	tp,t0,80006964 <test_36plus8_sra>
80006984:	fff00393          	li	t2,-1
80006988:	0e771463          	bne	a4,t2,80006a70 <fail_sra>

8000698c <sra_test_37>:
8000698c:	02500193          	li	gp,37
80006990:	00000213          	li	tp,0

80006994 <test_37plus8_sra>:
80006994:	00700113          	li	sp,7
80006998:	00000013          	nop
8000699c:	800000b7          	lui	ra,0x80000
800069a0:	4020d733          	sra	a4,ra,sp
800069a4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800069a8:	00200293          	li	t0,2
800069ac:	fe5214e3          	bne	tp,t0,80006994 <test_37plus8_sra>
800069b0:	ff0003b7          	lui	t2,0xff000
800069b4:	0a771e63          	bne	a4,t2,80006a70 <fail_sra>

800069b8 <sra_test_38>:
800069b8:	02600193          	li	gp,38
800069bc:	00000213          	li	tp,0

800069c0 <test_38plus8_sra>:
800069c0:	00e00113          	li	sp,14
800069c4:	00000013          	nop
800069c8:	800000b7          	lui	ra,0x80000
800069cc:	00000013          	nop
800069d0:	4020d733          	sra	a4,ra,sp
800069d4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800069d8:	00200293          	li	t0,2
800069dc:	fe5212e3          	bne	tp,t0,800069c0 <test_38plus8_sra>
800069e0:	fffe03b7          	lui	t2,0xfffe0
800069e4:	08771663          	bne	a4,t2,80006a70 <fail_sra>

800069e8 <sra_test_39>:
800069e8:	02700193          	li	gp,39
800069ec:	00000213          	li	tp,0

800069f0 <test_39plus8_sra>:
800069f0:	01f00113          	li	sp,31
800069f4:	00000013          	nop
800069f8:	00000013          	nop
800069fc:	800000b7          	lui	ra,0x80000
80006a00:	4020d733          	sra	a4,ra,sp
80006a04:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006a08:	00200293          	li	t0,2
80006a0c:	fe5212e3          	bne	tp,t0,800069f0 <test_39plus8_sra>
80006a10:	fff00393          	li	t2,-1
80006a14:	04771e63          	bne	a4,t2,80006a70 <fail_sra>

80006a18 <sra_test_40>:
80006a18:	02800193          	li	gp,40
80006a1c:	00f00093          	li	ra,15
80006a20:	40105133          	sra	sp,zero,ra
80006a24:	00000393          	li	t2,0
80006a28:	04711463          	bne	sp,t2,80006a70 <fail_sra>

80006a2c <sra_test_41>:
80006a2c:	02900193          	li	gp,41
80006a30:	02000093          	li	ra,32
80006a34:	4000d133          	sra	sp,ra,zero
80006a38:	02000393          	li	t2,32
80006a3c:	02711a63          	bne	sp,t2,80006a70 <fail_sra>

80006a40 <sra_test_42>:
80006a40:	02a00193          	li	gp,42
80006a44:	400050b3          	sra	ra,zero,zero
80006a48:	00000393          	li	t2,0
80006a4c:	02709263          	bne	ra,t2,80006a70 <fail_sra>

80006a50 <sra_test_43>:
80006a50:	02b00193          	li	gp,43
80006a54:	40000093          	li	ra,1024
80006a58:	00001137          	lui	sp,0x1
80006a5c:	80010113          	addi	sp,sp,-2048 # 800 <_size_rom-0x8510>
80006a60:	4020d033          	sra	zero,ra,sp
80006a64:	00000393          	li	t2,0
80006a68:	00701463          	bne	zero,t2,80006a70 <fail_sra>
80006a6c:	00c0006f          	j	80006a78 <pass_sra>

80006a70 <fail_sra>:
80006a70:	04d00893          	li	a7,77
80006a74:	ffdff06f          	j	80006a70 <fail_sra>

80006a78 <pass_sra>:
80006a78:	04200893          	li	a7,66

80006a7c <srai_test_2>:
80006a7c:	00200193          	li	gp,2
80006a80:	00000693          	li	a3,0
80006a84:	4006d713          	srai	a4,a3,0x0
80006a88:	00000393          	li	t2,0
80006a8c:	2a771463          	bne	a4,t2,80006d34 <fail_srai>

80006a90 <srai_test_3>:
80006a90:	00300193          	li	gp,3
80006a94:	800006b7          	lui	a3,0x80000
80006a98:	4016d713          	srai	a4,a3,0x1
80006a9c:	c00003b7          	lui	t2,0xc0000
80006aa0:	28771a63          	bne	a4,t2,80006d34 <fail_srai>

80006aa4 <srai_test_4>:
80006aa4:	00400193          	li	gp,4
80006aa8:	800006b7          	lui	a3,0x80000
80006aac:	4076d713          	srai	a4,a3,0x7
80006ab0:	ff0003b7          	lui	t2,0xff000
80006ab4:	28771063          	bne	a4,t2,80006d34 <fail_srai>

80006ab8 <srai_test_5>:
80006ab8:	00500193          	li	gp,5
80006abc:	800006b7          	lui	a3,0x80000
80006ac0:	40e6d713          	srai	a4,a3,0xe
80006ac4:	fffe03b7          	lui	t2,0xfffe0
80006ac8:	26771663          	bne	a4,t2,80006d34 <fail_srai>

80006acc <srai_test_6>:
80006acc:	00600193          	li	gp,6
80006ad0:	800006b7          	lui	a3,0x80000
80006ad4:	00168693          	addi	a3,a3,1 # 80000001 <_start+0x1>
80006ad8:	41f6d713          	srai	a4,a3,0x1f
80006adc:	fff00393          	li	t2,-1
80006ae0:	24771a63          	bne	a4,t2,80006d34 <fail_srai>

80006ae4 <srai_test_7>:
80006ae4:	00700193          	li	gp,7
80006ae8:	800006b7          	lui	a3,0x80000
80006aec:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80006af0:	4006d713          	srai	a4,a3,0x0
80006af4:	800003b7          	lui	t2,0x80000
80006af8:	fff38393          	addi	t2,t2,-1 # 7fffffff <_size_rom+0x7fff72ef>
80006afc:	22771c63          	bne	a4,t2,80006d34 <fail_srai>

80006b00 <srai_test_8>:
80006b00:	00800193          	li	gp,8
80006b04:	800006b7          	lui	a3,0x80000
80006b08:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80006b0c:	4016d713          	srai	a4,a3,0x1
80006b10:	400003b7          	lui	t2,0x40000
80006b14:	fff38393          	addi	t2,t2,-1 # 3fffffff <_size_rom+0x3fff72ef>
80006b18:	20771e63          	bne	a4,t2,80006d34 <fail_srai>

80006b1c <srai_test_9>:
80006b1c:	00900193          	li	gp,9
80006b20:	800006b7          	lui	a3,0x80000
80006b24:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80006b28:	4076d713          	srai	a4,a3,0x7
80006b2c:	010003b7          	lui	t2,0x1000
80006b30:	fff38393          	addi	t2,t2,-1 # ffffff <_size_rom+0xff72ef>
80006b34:	20771063          	bne	a4,t2,80006d34 <fail_srai>

80006b38 <srai_test_10>:
80006b38:	00a00193          	li	gp,10
80006b3c:	800006b7          	lui	a3,0x80000
80006b40:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80006b44:	40e6d713          	srai	a4,a3,0xe
80006b48:	000203b7          	lui	t2,0x20
80006b4c:	fff38393          	addi	t2,t2,-1 # 1ffff <_size_rom+0x172ef>
80006b50:	1e771263          	bne	a4,t2,80006d34 <fail_srai>

80006b54 <srai_test_11>:
80006b54:	00b00193          	li	gp,11
80006b58:	800006b7          	lui	a3,0x80000
80006b5c:	fff68693          	addi	a3,a3,-1 # 7fffffff <_size_rom+0x7fff72ef>
80006b60:	41f6d713          	srai	a4,a3,0x1f
80006b64:	00000393          	li	t2,0
80006b68:	1c771663          	bne	a4,t2,80006d34 <fail_srai>

80006b6c <srai_test_12>:
80006b6c:	00c00193          	li	gp,12
80006b70:	818186b7          	lui	a3,0x81818
80006b74:	18168693          	addi	a3,a3,385 # 81818181 <__stack_top+0x1804185>
80006b78:	4006d713          	srai	a4,a3,0x0
80006b7c:	818183b7          	lui	t2,0x81818
80006b80:	18138393          	addi	t2,t2,385 # 81818181 <__stack_top+0x1804185>
80006b84:	1a771863          	bne	a4,t2,80006d34 <fail_srai>

80006b88 <srai_test_13>:
80006b88:	00d00193          	li	gp,13
80006b8c:	818186b7          	lui	a3,0x81818
80006b90:	18168693          	addi	a3,a3,385 # 81818181 <__stack_top+0x1804185>
80006b94:	4016d713          	srai	a4,a3,0x1
80006b98:	c0c0c3b7          	lui	t2,0xc0c0c
80006b9c:	0c038393          	addi	t2,t2,192 # c0c0c0c0 <__stack_top+0x40bf80c4>
80006ba0:	18771a63          	bne	a4,t2,80006d34 <fail_srai>

80006ba4 <srai_test_14>:
80006ba4:	00e00193          	li	gp,14
80006ba8:	818186b7          	lui	a3,0x81818
80006bac:	18168693          	addi	a3,a3,385 # 81818181 <__stack_top+0x1804185>
80006bb0:	4076d713          	srai	a4,a3,0x7
80006bb4:	ff0303b7          	lui	t2,0xff030
80006bb8:	30338393          	addi	t2,t2,771 # ff030303 <__stack_top+0x7f01c307>
80006bbc:	16771c63          	bne	a4,t2,80006d34 <fail_srai>

80006bc0 <srai_test_15>:
80006bc0:	00f00193          	li	gp,15
80006bc4:	818186b7          	lui	a3,0x81818
80006bc8:	18168693          	addi	a3,a3,385 # 81818181 <__stack_top+0x1804185>
80006bcc:	40e6d713          	srai	a4,a3,0xe
80006bd0:	fffe03b7          	lui	t2,0xfffe0
80006bd4:	60638393          	addi	t2,t2,1542 # fffe0606 <__stack_top+0x7ffcc60a>
80006bd8:	14771e63          	bne	a4,t2,80006d34 <fail_srai>

80006bdc <srai_test_16>:
80006bdc:	01000193          	li	gp,16
80006be0:	818186b7          	lui	a3,0x81818
80006be4:	18168693          	addi	a3,a3,385 # 81818181 <__stack_top+0x1804185>
80006be8:	41f6d713          	srai	a4,a3,0x1f
80006bec:	fff00393          	li	t2,-1
80006bf0:	14771263          	bne	a4,t2,80006d34 <fail_srai>

80006bf4 <srai_test_17>:
80006bf4:	01100193          	li	gp,17
80006bf8:	800005b7          	lui	a1,0x80000
80006bfc:	4075d593          	srai	a1,a1,0x7
80006c00:	ff0003b7          	lui	t2,0xff000
80006c04:	12759863          	bne	a1,t2,80006d34 <fail_srai>

80006c08 <srai_test_18>:
80006c08:	01200193          	li	gp,18
80006c0c:	00000213          	li	tp,0

80006c10 <test_18plus8_srai>:
80006c10:	800000b7          	lui	ra,0x80000
80006c14:	4070d713          	srai	a4,ra,0x7
80006c18:	00070313          	mv	t1,a4
80006c1c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006c20:	00200293          	li	t0,2
80006c24:	fe5216e3          	bne	tp,t0,80006c10 <test_18plus8_srai>
80006c28:	ff0003b7          	lui	t2,0xff000
80006c2c:	10731463          	bne	t1,t2,80006d34 <fail_srai>

80006c30 <srai_test_19>:
80006c30:	01300193          	li	gp,19
80006c34:	00000213          	li	tp,0

80006c38 <test_19plus8_srai>:
80006c38:	800000b7          	lui	ra,0x80000
80006c3c:	40e0d713          	srai	a4,ra,0xe
80006c40:	00000013          	nop
80006c44:	00070313          	mv	t1,a4
80006c48:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006c4c:	00200293          	li	t0,2
80006c50:	fe5214e3          	bne	tp,t0,80006c38 <test_19plus8_srai>
80006c54:	fffe03b7          	lui	t2,0xfffe0
80006c58:	0c731e63          	bne	t1,t2,80006d34 <fail_srai>

80006c5c <srai_test_20>:
80006c5c:	01400193          	li	gp,20
80006c60:	00000213          	li	tp,0

80006c64 <test_20plus8_srai>:
80006c64:	800000b7          	lui	ra,0x80000
80006c68:	00108093          	addi	ra,ra,1 # 80000001 <_start+0x1>
80006c6c:	41f0d713          	srai	a4,ra,0x1f
80006c70:	00000013          	nop
80006c74:	00000013          	nop
80006c78:	00070313          	mv	t1,a4
80006c7c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006c80:	00200293          	li	t0,2
80006c84:	fe5210e3          	bne	tp,t0,80006c64 <test_20plus8_srai>
80006c88:	fff00393          	li	t2,-1
80006c8c:	0a731463          	bne	t1,t2,80006d34 <fail_srai>

80006c90 <srai_test_21>:
80006c90:	01500193          	li	gp,21
80006c94:	00000213          	li	tp,0

80006c98 <test_21plus8_srai>:
80006c98:	800000b7          	lui	ra,0x80000
80006c9c:	4070d713          	srai	a4,ra,0x7
80006ca0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006ca4:	00200293          	li	t0,2
80006ca8:	fe5218e3          	bne	tp,t0,80006c98 <test_21plus8_srai>
80006cac:	ff0003b7          	lui	t2,0xff000
80006cb0:	08771263          	bne	a4,t2,80006d34 <fail_srai>

80006cb4 <srai_test_22>:
80006cb4:	01600193          	li	gp,22
80006cb8:	00000213          	li	tp,0

80006cbc <test_22plus8_srai>:
80006cbc:	800000b7          	lui	ra,0x80000
80006cc0:	00000013          	nop
80006cc4:	40e0d713          	srai	a4,ra,0xe
80006cc8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006ccc:	00200293          	li	t0,2
80006cd0:	fe5216e3          	bne	tp,t0,80006cbc <test_22plus8_srai>
80006cd4:	fffe03b7          	lui	t2,0xfffe0
80006cd8:	04771e63          	bne	a4,t2,80006d34 <fail_srai>

80006cdc <srai_test_23>:
80006cdc:	01700193          	li	gp,23
80006ce0:	00000213          	li	tp,0

80006ce4 <test_23plus8_srai>:
80006ce4:	800000b7          	lui	ra,0x80000
80006ce8:	00108093          	addi	ra,ra,1 # 80000001 <_start+0x1>
80006cec:	00000013          	nop
80006cf0:	00000013          	nop
80006cf4:	41f0d713          	srai	a4,ra,0x1f
80006cf8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006cfc:	00200293          	li	t0,2
80006d00:	fe5212e3          	bne	tp,t0,80006ce4 <test_23plus8_srai>
80006d04:	fff00393          	li	t2,-1
80006d08:	02771663          	bne	a4,t2,80006d34 <fail_srai>

80006d0c <srai_test_24>:
80006d0c:	01800193          	li	gp,24
80006d10:	40405093          	srai	ra,zero,0x4
80006d14:	00000393          	li	t2,0
80006d18:	00709e63          	bne	ra,t2,80006d34 <fail_srai>

80006d1c <srai_test_25>:
80006d1c:	01900193          	li	gp,25
80006d20:	02100093          	li	ra,33
80006d24:	40a0d013          	srai	zero,ra,0xa
80006d28:	00000393          	li	t2,0
80006d2c:	00701463          	bne	zero,t2,80006d34 <fail_srai>
80006d30:	00c0006f          	j	80006d3c <pass_srai>

80006d34 <fail_srai>:
80006d34:	04d00893          	li	a7,77
80006d38:	ffdff06f          	j	80006d34 <fail_srai>

80006d3c <pass_srai>:
80006d3c:	04200893          	li	a7,66

80006d40 <srl_test_2>:
80006d40:	00200193          	li	gp,2
80006d44:	800005b7          	lui	a1,0x80000
80006d48:	00000613          	li	a2,0
80006d4c:	00c5d733          	srl	a4,a1,a2
80006d50:	800003b7          	lui	t2,0x80000
80006d54:	56771863          	bne	a4,t2,800072c4 <fail_srl>

80006d58 <srl_test_3>:
80006d58:	00300193          	li	gp,3
80006d5c:	800005b7          	lui	a1,0x80000
80006d60:	00100613          	li	a2,1
80006d64:	00c5d733          	srl	a4,a1,a2
80006d68:	400003b7          	lui	t2,0x40000
80006d6c:	54771c63          	bne	a4,t2,800072c4 <fail_srl>

80006d70 <srl_test_4>:
80006d70:	00400193          	li	gp,4
80006d74:	800005b7          	lui	a1,0x80000
80006d78:	00700613          	li	a2,7
80006d7c:	00c5d733          	srl	a4,a1,a2
80006d80:	010003b7          	lui	t2,0x1000
80006d84:	54771063          	bne	a4,t2,800072c4 <fail_srl>

80006d88 <srl_test_5>:
80006d88:	00500193          	li	gp,5
80006d8c:	800005b7          	lui	a1,0x80000
80006d90:	00e00613          	li	a2,14
80006d94:	00c5d733          	srl	a4,a1,a2
80006d98:	000203b7          	lui	t2,0x20
80006d9c:	52771463          	bne	a4,t2,800072c4 <fail_srl>

80006da0 <srl_test_6>:
80006da0:	00600193          	li	gp,6
80006da4:	800005b7          	lui	a1,0x80000
80006da8:	00158593          	addi	a1,a1,1 # 80000001 <_start+0x1>
80006dac:	01f00613          	li	a2,31
80006db0:	00c5d733          	srl	a4,a1,a2
80006db4:	00100393          	li	t2,1
80006db8:	50771663          	bne	a4,t2,800072c4 <fail_srl>

80006dbc <srl_test_7>:
80006dbc:	00700193          	li	gp,7
80006dc0:	fff00593          	li	a1,-1
80006dc4:	00000613          	li	a2,0
80006dc8:	00c5d733          	srl	a4,a1,a2
80006dcc:	fff00393          	li	t2,-1
80006dd0:	4e771a63          	bne	a4,t2,800072c4 <fail_srl>

80006dd4 <srl_test_8>:
80006dd4:	00800193          	li	gp,8
80006dd8:	fff00593          	li	a1,-1
80006ddc:	00100613          	li	a2,1
80006de0:	00c5d733          	srl	a4,a1,a2
80006de4:	800003b7          	lui	t2,0x80000
80006de8:	fff38393          	addi	t2,t2,-1 # 7fffffff <_size_rom+0x7fff72ef>
80006dec:	4c771c63          	bne	a4,t2,800072c4 <fail_srl>

80006df0 <srl_test_9>:
80006df0:	00900193          	li	gp,9
80006df4:	fff00593          	li	a1,-1
80006df8:	00700613          	li	a2,7
80006dfc:	00c5d733          	srl	a4,a1,a2
80006e00:	020003b7          	lui	t2,0x2000
80006e04:	fff38393          	addi	t2,t2,-1 # 1ffffff <_size_rom+0x1ff72ef>
80006e08:	4a771e63          	bne	a4,t2,800072c4 <fail_srl>

80006e0c <srl_test_10>:
80006e0c:	00a00193          	li	gp,10
80006e10:	fff00593          	li	a1,-1
80006e14:	00e00613          	li	a2,14
80006e18:	00c5d733          	srl	a4,a1,a2
80006e1c:	000403b7          	lui	t2,0x40
80006e20:	fff38393          	addi	t2,t2,-1 # 3ffff <_size_rom+0x372ef>
80006e24:	4a771063          	bne	a4,t2,800072c4 <fail_srl>

80006e28 <srl_test_11>:
80006e28:	00b00193          	li	gp,11
80006e2c:	fff00593          	li	a1,-1
80006e30:	01f00613          	li	a2,31
80006e34:	00c5d733          	srl	a4,a1,a2
80006e38:	00100393          	li	t2,1
80006e3c:	48771463          	bne	a4,t2,800072c4 <fail_srl>

80006e40 <srl_test_12>:
80006e40:	00c00193          	li	gp,12
80006e44:	212125b7          	lui	a1,0x21212
80006e48:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80006e4c:	00000613          	li	a2,0
80006e50:	00c5d733          	srl	a4,a1,a2
80006e54:	212123b7          	lui	t2,0x21212
80006e58:	12138393          	addi	t2,t2,289 # 21212121 <_size_rom+0x21209411>
80006e5c:	46771463          	bne	a4,t2,800072c4 <fail_srl>

80006e60 <srl_test_13>:
80006e60:	00d00193          	li	gp,13
80006e64:	212125b7          	lui	a1,0x21212
80006e68:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80006e6c:	00100613          	li	a2,1
80006e70:	00c5d733          	srl	a4,a1,a2
80006e74:	109093b7          	lui	t2,0x10909
80006e78:	09038393          	addi	t2,t2,144 # 10909090 <_size_rom+0x10900380>
80006e7c:	44771463          	bne	a4,t2,800072c4 <fail_srl>

80006e80 <srl_test_14>:
80006e80:	00e00193          	li	gp,14
80006e84:	212125b7          	lui	a1,0x21212
80006e88:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80006e8c:	00700613          	li	a2,7
80006e90:	00c5d733          	srl	a4,a1,a2
80006e94:	004243b7          	lui	t2,0x424
80006e98:	24238393          	addi	t2,t2,578 # 424242 <_size_rom+0x41b532>
80006e9c:	42771463          	bne	a4,t2,800072c4 <fail_srl>

80006ea0 <srl_test_15>:
80006ea0:	00f00193          	li	gp,15
80006ea4:	212125b7          	lui	a1,0x21212
80006ea8:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80006eac:	00e00613          	li	a2,14
80006eb0:	00c5d733          	srl	a4,a1,a2
80006eb4:	000083b7          	lui	t2,0x8
80006eb8:	48438393          	addi	t2,t2,1156 # 8484 <_size_rom-0x88c>
80006ebc:	40771463          	bne	a4,t2,800072c4 <fail_srl>

80006ec0 <srl_test_16>:
80006ec0:	01000193          	li	gp,16
80006ec4:	212125b7          	lui	a1,0x21212
80006ec8:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80006ecc:	01f00613          	li	a2,31
80006ed0:	00c5d733          	srl	a4,a1,a2
80006ed4:	00000393          	li	t2,0
80006ed8:	3e771663          	bne	a4,t2,800072c4 <fail_srl>

80006edc <srl_test_17>:
80006edc:	01100193          	li	gp,17
80006ee0:	212125b7          	lui	a1,0x21212
80006ee4:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80006ee8:	fc000613          	li	a2,-64
80006eec:	00c5d733          	srl	a4,a1,a2
80006ef0:	212123b7          	lui	t2,0x21212
80006ef4:	12138393          	addi	t2,t2,289 # 21212121 <_size_rom+0x21209411>
80006ef8:	3c771663          	bne	a4,t2,800072c4 <fail_srl>

80006efc <srl_test_18>:
80006efc:	01200193          	li	gp,18
80006f00:	212125b7          	lui	a1,0x21212
80006f04:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80006f08:	fc100613          	li	a2,-63
80006f0c:	00c5d733          	srl	a4,a1,a2
80006f10:	109093b7          	lui	t2,0x10909
80006f14:	09038393          	addi	t2,t2,144 # 10909090 <_size_rom+0x10900380>
80006f18:	3a771663          	bne	a4,t2,800072c4 <fail_srl>

80006f1c <srl_test_19>:
80006f1c:	01300193          	li	gp,19
80006f20:	212125b7          	lui	a1,0x21212
80006f24:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80006f28:	fc700613          	li	a2,-57
80006f2c:	00c5d733          	srl	a4,a1,a2
80006f30:	004243b7          	lui	t2,0x424
80006f34:	24238393          	addi	t2,t2,578 # 424242 <_size_rom+0x41b532>
80006f38:	38771663          	bne	a4,t2,800072c4 <fail_srl>

80006f3c <srl_test_20>:
80006f3c:	01400193          	li	gp,20
80006f40:	212125b7          	lui	a1,0x21212
80006f44:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80006f48:	fce00613          	li	a2,-50
80006f4c:	00c5d733          	srl	a4,a1,a2
80006f50:	000083b7          	lui	t2,0x8
80006f54:	48438393          	addi	t2,t2,1156 # 8484 <_size_rom-0x88c>
80006f58:	36771663          	bne	a4,t2,800072c4 <fail_srl>

80006f5c <srl_test_21>:
80006f5c:	01500193          	li	gp,21
80006f60:	212125b7          	lui	a1,0x21212
80006f64:	12158593          	addi	a1,a1,289 # 21212121 <_size_rom+0x21209411>
80006f68:	fff00613          	li	a2,-1
80006f6c:	00c5d733          	srl	a4,a1,a2
80006f70:	00000393          	li	t2,0
80006f74:	34771863          	bne	a4,t2,800072c4 <fail_srl>

80006f78 <srl_test_22>:
80006f78:	01600193          	li	gp,22
80006f7c:	800005b7          	lui	a1,0x80000
80006f80:	00700613          	li	a2,7
80006f84:	00c5d5b3          	srl	a1,a1,a2
80006f88:	010003b7          	lui	t2,0x1000
80006f8c:	32759c63          	bne	a1,t2,800072c4 <fail_srl>

80006f90 <srl_test_23>:
80006f90:	01700193          	li	gp,23
80006f94:	800005b7          	lui	a1,0x80000
80006f98:	00e00613          	li	a2,14
80006f9c:	00c5d633          	srl	a2,a1,a2
80006fa0:	000203b7          	lui	t2,0x20
80006fa4:	32761063          	bne	a2,t2,800072c4 <fail_srl>

80006fa8 <srl_test_24>:
80006fa8:	01800193          	li	gp,24
80006fac:	00700593          	li	a1,7
80006fb0:	00b5d5b3          	srl	a1,a1,a1
80006fb4:	00000393          	li	t2,0
80006fb8:	30759663          	bne	a1,t2,800072c4 <fail_srl>

80006fbc <srl_test_25>:
80006fbc:	01900193          	li	gp,25
80006fc0:	00000213          	li	tp,0

80006fc4 <test_25plus8_srl>:
80006fc4:	800000b7          	lui	ra,0x80000
80006fc8:	00700113          	li	sp,7
80006fcc:	0020d733          	srl	a4,ra,sp
80006fd0:	00070313          	mv	t1,a4
80006fd4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80006fd8:	00200293          	li	t0,2
80006fdc:	fe5214e3          	bne	tp,t0,80006fc4 <test_25plus8_srl>
80006fe0:	010003b7          	lui	t2,0x1000
80006fe4:	2e731063          	bne	t1,t2,800072c4 <fail_srl>

80006fe8 <srl_test_26>:
80006fe8:	01a00193          	li	gp,26
80006fec:	00000213          	li	tp,0

80006ff0 <test_26plus8_srl>:
80006ff0:	800000b7          	lui	ra,0x80000
80006ff4:	00e00113          	li	sp,14
80006ff8:	0020d733          	srl	a4,ra,sp
80006ffc:	00000013          	nop
80007000:	00070313          	mv	t1,a4
80007004:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007008:	00200293          	li	t0,2
8000700c:	fe5212e3          	bne	tp,t0,80006ff0 <test_26plus8_srl>
80007010:	000203b7          	lui	t2,0x20
80007014:	2a731863          	bne	t1,t2,800072c4 <fail_srl>

80007018 <srl_test_27>:
80007018:	01b00193          	li	gp,27
8000701c:	00000213          	li	tp,0

80007020 <test_27plus8_srl>:
80007020:	800000b7          	lui	ra,0x80000
80007024:	01f00113          	li	sp,31
80007028:	0020d733          	srl	a4,ra,sp
8000702c:	00000013          	nop
80007030:	00000013          	nop
80007034:	00070313          	mv	t1,a4
80007038:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000703c:	00200293          	li	t0,2
80007040:	fe5210e3          	bne	tp,t0,80007020 <test_27plus8_srl>
80007044:	00100393          	li	t2,1
80007048:	26731e63          	bne	t1,t2,800072c4 <fail_srl>

8000704c <srl_test_28>:
8000704c:	01c00193          	li	gp,28
80007050:	00000213          	li	tp,0

80007054 <test_28plus8_srl>:
80007054:	800000b7          	lui	ra,0x80000
80007058:	00700113          	li	sp,7
8000705c:	0020d733          	srl	a4,ra,sp
80007060:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007064:	00200293          	li	t0,2
80007068:	fe5216e3          	bne	tp,t0,80007054 <test_28plus8_srl>
8000706c:	010003b7          	lui	t2,0x1000
80007070:	24771a63          	bne	a4,t2,800072c4 <fail_srl>

80007074 <srl_test_29>:
80007074:	01d00193          	li	gp,29
80007078:	00000213          	li	tp,0

8000707c <test_29plus8_srl>:
8000707c:	800000b7          	lui	ra,0x80000
80007080:	00e00113          	li	sp,14
80007084:	00000013          	nop
80007088:	0020d733          	srl	a4,ra,sp
8000708c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007090:	00200293          	li	t0,2
80007094:	fe5214e3          	bne	tp,t0,8000707c <test_29plus8_srl>
80007098:	000203b7          	lui	t2,0x20
8000709c:	22771463          	bne	a4,t2,800072c4 <fail_srl>

800070a0 <srl_test_30>:
800070a0:	01e00193          	li	gp,30
800070a4:	00000213          	li	tp,0

800070a8 <test_30plus8_srl>:
800070a8:	800000b7          	lui	ra,0x80000
800070ac:	01f00113          	li	sp,31
800070b0:	00000013          	nop
800070b4:	00000013          	nop
800070b8:	0020d733          	srl	a4,ra,sp
800070bc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800070c0:	00200293          	li	t0,2
800070c4:	fe5212e3          	bne	tp,t0,800070a8 <test_30plus8_srl>
800070c8:	00100393          	li	t2,1
800070cc:	1e771c63          	bne	a4,t2,800072c4 <fail_srl>

800070d0 <srl_test_31>:
800070d0:	01f00193          	li	gp,31
800070d4:	00000213          	li	tp,0

800070d8 <test_31plus8_srl>:
800070d8:	800000b7          	lui	ra,0x80000
800070dc:	00000013          	nop
800070e0:	00700113          	li	sp,7
800070e4:	0020d733          	srl	a4,ra,sp
800070e8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800070ec:	00200293          	li	t0,2
800070f0:	fe5214e3          	bne	tp,t0,800070d8 <test_31plus8_srl>
800070f4:	010003b7          	lui	t2,0x1000
800070f8:	1c771663          	bne	a4,t2,800072c4 <fail_srl>

800070fc <srl_test_32>:
800070fc:	02000193          	li	gp,32
80007100:	00000213          	li	tp,0

80007104 <test_32plus8_srl>:
80007104:	800000b7          	lui	ra,0x80000
80007108:	00000013          	nop
8000710c:	00e00113          	li	sp,14
80007110:	00000013          	nop
80007114:	0020d733          	srl	a4,ra,sp
80007118:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000711c:	00200293          	li	t0,2
80007120:	fe5212e3          	bne	tp,t0,80007104 <test_32plus8_srl>
80007124:	000203b7          	lui	t2,0x20
80007128:	18771e63          	bne	a4,t2,800072c4 <fail_srl>

8000712c <srl_test_33>:
8000712c:	02100193          	li	gp,33
80007130:	00000213          	li	tp,0

80007134 <test_33plus8_srl>:
80007134:	800000b7          	lui	ra,0x80000
80007138:	00000013          	nop
8000713c:	00000013          	nop
80007140:	01f00113          	li	sp,31
80007144:	0020d733          	srl	a4,ra,sp
80007148:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000714c:	00200293          	li	t0,2
80007150:	fe5212e3          	bne	tp,t0,80007134 <test_33plus8_srl>
80007154:	00100393          	li	t2,1
80007158:	16771663          	bne	a4,t2,800072c4 <fail_srl>

8000715c <srl_test_34>:
8000715c:	02200193          	li	gp,34
80007160:	00000213          	li	tp,0

80007164 <test_34plus8_srl>:
80007164:	00700113          	li	sp,7
80007168:	800000b7          	lui	ra,0x80000
8000716c:	0020d733          	srl	a4,ra,sp
80007170:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007174:	00200293          	li	t0,2
80007178:	fe5216e3          	bne	tp,t0,80007164 <test_34plus8_srl>
8000717c:	010003b7          	lui	t2,0x1000
80007180:	14771263          	bne	a4,t2,800072c4 <fail_srl>

80007184 <srl_test_35>:
80007184:	02300193          	li	gp,35
80007188:	00000213          	li	tp,0

8000718c <test_35plus8_srl>:
8000718c:	00e00113          	li	sp,14
80007190:	800000b7          	lui	ra,0x80000
80007194:	00000013          	nop
80007198:	0020d733          	srl	a4,ra,sp
8000719c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800071a0:	00200293          	li	t0,2
800071a4:	fe5214e3          	bne	tp,t0,8000718c <test_35plus8_srl>
800071a8:	000203b7          	lui	t2,0x20
800071ac:	10771c63          	bne	a4,t2,800072c4 <fail_srl>

800071b0 <srl_test_36>:
800071b0:	02400193          	li	gp,36
800071b4:	00000213          	li	tp,0

800071b8 <test_36plus8_srl>:
800071b8:	01f00113          	li	sp,31
800071bc:	800000b7          	lui	ra,0x80000
800071c0:	00000013          	nop
800071c4:	00000013          	nop
800071c8:	0020d733          	srl	a4,ra,sp
800071cc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800071d0:	00200293          	li	t0,2
800071d4:	fe5212e3          	bne	tp,t0,800071b8 <test_36plus8_srl>
800071d8:	00100393          	li	t2,1
800071dc:	0e771463          	bne	a4,t2,800072c4 <fail_srl>

800071e0 <srl_test_37>:
800071e0:	02500193          	li	gp,37
800071e4:	00000213          	li	tp,0

800071e8 <test_37plus8_srl>:
800071e8:	00700113          	li	sp,7
800071ec:	00000013          	nop
800071f0:	800000b7          	lui	ra,0x80000
800071f4:	0020d733          	srl	a4,ra,sp
800071f8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800071fc:	00200293          	li	t0,2
80007200:	fe5214e3          	bne	tp,t0,800071e8 <test_37plus8_srl>
80007204:	010003b7          	lui	t2,0x1000
80007208:	0a771e63          	bne	a4,t2,800072c4 <fail_srl>

8000720c <srl_test_38>:
8000720c:	02600193          	li	gp,38
80007210:	00000213          	li	tp,0

80007214 <test_38plus8_srl>:
80007214:	00e00113          	li	sp,14
80007218:	00000013          	nop
8000721c:	800000b7          	lui	ra,0x80000
80007220:	00000013          	nop
80007224:	0020d733          	srl	a4,ra,sp
80007228:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000722c:	00200293          	li	t0,2
80007230:	fe5212e3          	bne	tp,t0,80007214 <test_38plus8_srl>
80007234:	000203b7          	lui	t2,0x20
80007238:	08771663          	bne	a4,t2,800072c4 <fail_srl>

8000723c <srl_test_39>:
8000723c:	02700193          	li	gp,39
80007240:	00000213          	li	tp,0

80007244 <test_39plus8_srl>:
80007244:	01f00113          	li	sp,31
80007248:	00000013          	nop
8000724c:	00000013          	nop
80007250:	800000b7          	lui	ra,0x80000
80007254:	0020d733          	srl	a4,ra,sp
80007258:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000725c:	00200293          	li	t0,2
80007260:	fe5212e3          	bne	tp,t0,80007244 <test_39plus8_srl>
80007264:	00100393          	li	t2,1
80007268:	04771e63          	bne	a4,t2,800072c4 <fail_srl>

8000726c <srl_test_40>:
8000726c:	02800193          	li	gp,40
80007270:	00f00093          	li	ra,15
80007274:	00105133          	srl	sp,zero,ra
80007278:	00000393          	li	t2,0
8000727c:	04711463          	bne	sp,t2,800072c4 <fail_srl>

80007280 <srl_test_41>:
80007280:	02900193          	li	gp,41
80007284:	02000093          	li	ra,32
80007288:	0000d133          	srl	sp,ra,zero
8000728c:	02000393          	li	t2,32
80007290:	02711a63          	bne	sp,t2,800072c4 <fail_srl>

80007294 <srl_test_42>:
80007294:	02a00193          	li	gp,42
80007298:	000050b3          	srl	ra,zero,zero
8000729c:	00000393          	li	t2,0
800072a0:	02709263          	bne	ra,t2,800072c4 <fail_srl>

800072a4 <srl_test_43>:
800072a4:	02b00193          	li	gp,43
800072a8:	40000093          	li	ra,1024
800072ac:	00001137          	lui	sp,0x1
800072b0:	80010113          	addi	sp,sp,-2048 # 800 <_size_rom-0x8510>
800072b4:	0020d033          	srl	zero,ra,sp
800072b8:	00000393          	li	t2,0
800072bc:	00701463          	bne	zero,t2,800072c4 <fail_srl>
800072c0:	00c0006f          	j	800072cc <pass_srl>

800072c4 <fail_srl>:
800072c4:	04d00893          	li	a7,77
800072c8:	ffdff06f          	j	800072c4 <fail_srl>

800072cc <pass_srl>:
800072cc:	04200893          	li	a7,66

800072d0 <srli_test_2>:
800072d0:	00200193          	li	gp,2
800072d4:	800006b7          	lui	a3,0x80000
800072d8:	0006d713          	srli	a4,a3,0x0
800072dc:	800003b7          	lui	t2,0x80000
800072e0:	28771863          	bne	a4,t2,80007570 <fail_srli>

800072e4 <srli_test_3>:
800072e4:	00300193          	li	gp,3
800072e8:	800006b7          	lui	a3,0x80000
800072ec:	0016d713          	srli	a4,a3,0x1
800072f0:	400003b7          	lui	t2,0x40000
800072f4:	26771e63          	bne	a4,t2,80007570 <fail_srli>

800072f8 <srli_test_4>:
800072f8:	00400193          	li	gp,4
800072fc:	800006b7          	lui	a3,0x80000
80007300:	0076d713          	srli	a4,a3,0x7
80007304:	010003b7          	lui	t2,0x1000
80007308:	26771463          	bne	a4,t2,80007570 <fail_srli>

8000730c <srli_test_5>:
8000730c:	00500193          	li	gp,5
80007310:	800006b7          	lui	a3,0x80000
80007314:	00e6d713          	srli	a4,a3,0xe
80007318:	000203b7          	lui	t2,0x20
8000731c:	24771a63          	bne	a4,t2,80007570 <fail_srli>

80007320 <srli_test_6>:
80007320:	00600193          	li	gp,6
80007324:	800006b7          	lui	a3,0x80000
80007328:	00168693          	addi	a3,a3,1 # 80000001 <_start+0x1>
8000732c:	01f6d713          	srli	a4,a3,0x1f
80007330:	00100393          	li	t2,1
80007334:	22771e63          	bne	a4,t2,80007570 <fail_srli>

80007338 <srli_test_7>:
80007338:	00700193          	li	gp,7
8000733c:	fff00693          	li	a3,-1
80007340:	0006d713          	srli	a4,a3,0x0
80007344:	fff00393          	li	t2,-1
80007348:	22771463          	bne	a4,t2,80007570 <fail_srli>

8000734c <srli_test_8>:
8000734c:	00800193          	li	gp,8
80007350:	fff00693          	li	a3,-1
80007354:	0016d713          	srli	a4,a3,0x1
80007358:	800003b7          	lui	t2,0x80000
8000735c:	fff38393          	addi	t2,t2,-1 # 7fffffff <_size_rom+0x7fff72ef>
80007360:	20771863          	bne	a4,t2,80007570 <fail_srli>

80007364 <srli_test_9>:
80007364:	00900193          	li	gp,9
80007368:	fff00693          	li	a3,-1
8000736c:	0076d713          	srli	a4,a3,0x7
80007370:	020003b7          	lui	t2,0x2000
80007374:	fff38393          	addi	t2,t2,-1 # 1ffffff <_size_rom+0x1ff72ef>
80007378:	1e771c63          	bne	a4,t2,80007570 <fail_srli>

8000737c <srli_test_10>:
8000737c:	00a00193          	li	gp,10
80007380:	fff00693          	li	a3,-1
80007384:	00e6d713          	srli	a4,a3,0xe
80007388:	000403b7          	lui	t2,0x40
8000738c:	fff38393          	addi	t2,t2,-1 # 3ffff <_size_rom+0x372ef>
80007390:	1e771063          	bne	a4,t2,80007570 <fail_srli>

80007394 <srli_test_11>:
80007394:	00b00193          	li	gp,11
80007398:	fff00693          	li	a3,-1
8000739c:	01f6d713          	srli	a4,a3,0x1f
800073a0:	00100393          	li	t2,1
800073a4:	1c771663          	bne	a4,t2,80007570 <fail_srli>

800073a8 <srli_test_12>:
800073a8:	00c00193          	li	gp,12
800073ac:	212126b7          	lui	a3,0x21212
800073b0:	12168693          	addi	a3,a3,289 # 21212121 <_size_rom+0x21209411>
800073b4:	0006d713          	srli	a4,a3,0x0
800073b8:	212123b7          	lui	t2,0x21212
800073bc:	12138393          	addi	t2,t2,289 # 21212121 <_size_rom+0x21209411>
800073c0:	1a771863          	bne	a4,t2,80007570 <fail_srli>

800073c4 <srli_test_13>:
800073c4:	00d00193          	li	gp,13
800073c8:	212126b7          	lui	a3,0x21212
800073cc:	12168693          	addi	a3,a3,289 # 21212121 <_size_rom+0x21209411>
800073d0:	0016d713          	srli	a4,a3,0x1
800073d4:	109093b7          	lui	t2,0x10909
800073d8:	09038393          	addi	t2,t2,144 # 10909090 <_size_rom+0x10900380>
800073dc:	18771a63          	bne	a4,t2,80007570 <fail_srli>

800073e0 <srli_test_14>:
800073e0:	00e00193          	li	gp,14
800073e4:	212126b7          	lui	a3,0x21212
800073e8:	12168693          	addi	a3,a3,289 # 21212121 <_size_rom+0x21209411>
800073ec:	0076d713          	srli	a4,a3,0x7
800073f0:	004243b7          	lui	t2,0x424
800073f4:	24238393          	addi	t2,t2,578 # 424242 <_size_rom+0x41b532>
800073f8:	16771c63          	bne	a4,t2,80007570 <fail_srli>

800073fc <srli_test_15>:
800073fc:	00f00193          	li	gp,15
80007400:	212126b7          	lui	a3,0x21212
80007404:	12168693          	addi	a3,a3,289 # 21212121 <_size_rom+0x21209411>
80007408:	00e6d713          	srli	a4,a3,0xe
8000740c:	000083b7          	lui	t2,0x8
80007410:	48438393          	addi	t2,t2,1156 # 8484 <_size_rom-0x88c>
80007414:	14771e63          	bne	a4,t2,80007570 <fail_srli>

80007418 <srli_test_16>:
80007418:	01000193          	li	gp,16
8000741c:	212126b7          	lui	a3,0x21212
80007420:	12168693          	addi	a3,a3,289 # 21212121 <_size_rom+0x21209411>
80007424:	01f6d713          	srli	a4,a3,0x1f
80007428:	00000393          	li	t2,0
8000742c:	14771263          	bne	a4,t2,80007570 <fail_srli>

80007430 <srli_test_17>:
80007430:	01100193          	li	gp,17
80007434:	800005b7          	lui	a1,0x80000
80007438:	0075d593          	srli	a1,a1,0x7
8000743c:	010003b7          	lui	t2,0x1000
80007440:	12759863          	bne	a1,t2,80007570 <fail_srli>

80007444 <srli_test_18>:
80007444:	01200193          	li	gp,18
80007448:	00000213          	li	tp,0

8000744c <test_18plus8_srli>:
8000744c:	800000b7          	lui	ra,0x80000
80007450:	0070d713          	srli	a4,ra,0x7
80007454:	00070313          	mv	t1,a4
80007458:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000745c:	00200293          	li	t0,2
80007460:	fe5216e3          	bne	tp,t0,8000744c <test_18plus8_srli>
80007464:	010003b7          	lui	t2,0x1000
80007468:	10731463          	bne	t1,t2,80007570 <fail_srli>

8000746c <srli_test_19>:
8000746c:	01300193          	li	gp,19
80007470:	00000213          	li	tp,0

80007474 <test_19plus8_srli>:
80007474:	800000b7          	lui	ra,0x80000
80007478:	00e0d713          	srli	a4,ra,0xe
8000747c:	00000013          	nop
80007480:	00070313          	mv	t1,a4
80007484:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007488:	00200293          	li	t0,2
8000748c:	fe5214e3          	bne	tp,t0,80007474 <test_19plus8_srli>
80007490:	000203b7          	lui	t2,0x20
80007494:	0c731e63          	bne	t1,t2,80007570 <fail_srli>

80007498 <srli_test_20>:
80007498:	01400193          	li	gp,20
8000749c:	00000213          	li	tp,0

800074a0 <test_20plus8_srli>:
800074a0:	800000b7          	lui	ra,0x80000
800074a4:	00108093          	addi	ra,ra,1 # 80000001 <_start+0x1>
800074a8:	01f0d713          	srli	a4,ra,0x1f
800074ac:	00000013          	nop
800074b0:	00000013          	nop
800074b4:	00070313          	mv	t1,a4
800074b8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800074bc:	00200293          	li	t0,2
800074c0:	fe5210e3          	bne	tp,t0,800074a0 <test_20plus8_srli>
800074c4:	00100393          	li	t2,1
800074c8:	0a731463          	bne	t1,t2,80007570 <fail_srli>

800074cc <srli_test_21>:
800074cc:	01500193          	li	gp,21
800074d0:	00000213          	li	tp,0

800074d4 <test_21plus8_srli>:
800074d4:	800000b7          	lui	ra,0x80000
800074d8:	0070d713          	srli	a4,ra,0x7
800074dc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800074e0:	00200293          	li	t0,2
800074e4:	fe5218e3          	bne	tp,t0,800074d4 <test_21plus8_srli>
800074e8:	010003b7          	lui	t2,0x1000
800074ec:	08771263          	bne	a4,t2,80007570 <fail_srli>

800074f0 <srli_test_22>:
800074f0:	01600193          	li	gp,22
800074f4:	00000213          	li	tp,0

800074f8 <test_22plus8_srli>:
800074f8:	800000b7          	lui	ra,0x80000
800074fc:	00000013          	nop
80007500:	00e0d713          	srli	a4,ra,0xe
80007504:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007508:	00200293          	li	t0,2
8000750c:	fe5216e3          	bne	tp,t0,800074f8 <test_22plus8_srli>
80007510:	000203b7          	lui	t2,0x20
80007514:	04771e63          	bne	a4,t2,80007570 <fail_srli>

80007518 <srli_test_23>:
80007518:	01700193          	li	gp,23
8000751c:	00000213          	li	tp,0

80007520 <test_23plus8_srli>:
80007520:	800000b7          	lui	ra,0x80000
80007524:	00108093          	addi	ra,ra,1 # 80000001 <_start+0x1>
80007528:	00000013          	nop
8000752c:	00000013          	nop
80007530:	01f0d713          	srli	a4,ra,0x1f
80007534:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007538:	00200293          	li	t0,2
8000753c:	fe5212e3          	bne	tp,t0,80007520 <test_23plus8_srli>
80007540:	00100393          	li	t2,1
80007544:	02771663          	bne	a4,t2,80007570 <fail_srli>

80007548 <srli_test_24>:
80007548:	01800193          	li	gp,24
8000754c:	00405093          	srli	ra,zero,0x4
80007550:	00000393          	li	t2,0
80007554:	00709e63          	bne	ra,t2,80007570 <fail_srli>

80007558 <srli_test_25>:
80007558:	01900193          	li	gp,25
8000755c:	02100093          	li	ra,33
80007560:	00a0d013          	srli	zero,ra,0xa
80007564:	00000393          	li	t2,0
80007568:	00701463          	bne	zero,t2,80007570 <fail_srli>
8000756c:	00c0006f          	j	80007578 <pass_srli>

80007570 <fail_srli>:
80007570:	04d00893          	li	a7,77
80007574:	ffdff06f          	j	80007570 <fail_srli>

80007578 <pass_srli>:
80007578:	04200893          	li	a7,66

8000757c <st_ld_test_2>:
8000757c:	00200193          	li	gp,2
80007580:	00009117          	auipc	sp,0x9
80007584:	a9010113          	addi	sp,sp,-1392 # 80010010 <begin_signature_ldst>
80007588:	fdd00093          	li	ra,-35
8000758c:	00110023          	sb	ra,0(sp)
80007590:	00010703          	lb	a4,0(sp)
80007594:	fdd00393          	li	t2,-35
80007598:	6c771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000759c <st_ld_test_3>:
8000759c:	00300193          	li	gp,3
800075a0:	00009117          	auipc	sp,0x9
800075a4:	a7010113          	addi	sp,sp,-1424 # 80010010 <begin_signature_ldst>
800075a8:	fcd00093          	li	ra,-51
800075ac:	001100a3          	sb	ra,1(sp)
800075b0:	00110703          	lb	a4,1(sp)
800075b4:	fcd00393          	li	t2,-51
800075b8:	6a771663          	bne	a4,t2,80007c64 <fail_st_ld>

800075bc <st_ld_test_4>:
800075bc:	00400193          	li	gp,4
800075c0:	00009117          	auipc	sp,0x9
800075c4:	a5010113          	addi	sp,sp,-1456 # 80010010 <begin_signature_ldst>
800075c8:	fcc00093          	li	ra,-52
800075cc:	00110123          	sb	ra,2(sp)
800075d0:	00210703          	lb	a4,2(sp)
800075d4:	fcc00393          	li	t2,-52
800075d8:	68771663          	bne	a4,t2,80007c64 <fail_st_ld>

800075dc <st_ld_test_5>:
800075dc:	00500193          	li	gp,5
800075e0:	00009117          	auipc	sp,0x9
800075e4:	a3010113          	addi	sp,sp,-1488 # 80010010 <begin_signature_ldst>
800075e8:	fbc00093          	li	ra,-68
800075ec:	001101a3          	sb	ra,3(sp)
800075f0:	00310703          	lb	a4,3(sp)
800075f4:	fbc00393          	li	t2,-68
800075f8:	66771663          	bne	a4,t2,80007c64 <fail_st_ld>

800075fc <st_ld_test_6>:
800075fc:	00600193          	li	gp,6
80007600:	00009117          	auipc	sp,0x9
80007604:	a1010113          	addi	sp,sp,-1520 # 80010010 <begin_signature_ldst>
80007608:	fbb00093          	li	ra,-69
8000760c:	00110223          	sb	ra,4(sp)
80007610:	00410703          	lb	a4,4(sp)
80007614:	fbb00393          	li	t2,-69
80007618:	64771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000761c <st_ld_test_7>:
8000761c:	00700193          	li	gp,7
80007620:	00009117          	auipc	sp,0x9
80007624:	9f010113          	addi	sp,sp,-1552 # 80010010 <begin_signature_ldst>
80007628:	fab00093          	li	ra,-85
8000762c:	001102a3          	sb	ra,5(sp)
80007630:	00510703          	lb	a4,5(sp)
80007634:	fab00393          	li	t2,-85
80007638:	62771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000763c <st_ld_test_8>:
8000763c:	00800193          	li	gp,8
80007640:	00009117          	auipc	sp,0x9
80007644:	9d010113          	addi	sp,sp,-1584 # 80010010 <begin_signature_ldst>
80007648:	03300093          	li	ra,51
8000764c:	00110023          	sb	ra,0(sp)
80007650:	00010703          	lb	a4,0(sp)
80007654:	03300393          	li	t2,51
80007658:	60771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000765c <st_ld_test_9>:
8000765c:	00900193          	li	gp,9
80007660:	00009117          	auipc	sp,0x9
80007664:	9b010113          	addi	sp,sp,-1616 # 80010010 <begin_signature_ldst>
80007668:	02300093          	li	ra,35
8000766c:	001100a3          	sb	ra,1(sp)
80007670:	00110703          	lb	a4,1(sp)
80007674:	02300393          	li	t2,35
80007678:	5e771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000767c <st_ld_test_10>:
8000767c:	00a00193          	li	gp,10
80007680:	00009117          	auipc	sp,0x9
80007684:	99010113          	addi	sp,sp,-1648 # 80010010 <begin_signature_ldst>
80007688:	02200093          	li	ra,34
8000768c:	00110123          	sb	ra,2(sp)
80007690:	00210703          	lb	a4,2(sp)
80007694:	02200393          	li	t2,34
80007698:	5c771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000769c <st_ld_test_11>:
8000769c:	00b00193          	li	gp,11
800076a0:	00009117          	auipc	sp,0x9
800076a4:	97010113          	addi	sp,sp,-1680 # 80010010 <begin_signature_ldst>
800076a8:	01200093          	li	ra,18
800076ac:	001101a3          	sb	ra,3(sp)
800076b0:	00310703          	lb	a4,3(sp)
800076b4:	01200393          	li	t2,18
800076b8:	5a771663          	bne	a4,t2,80007c64 <fail_st_ld>

800076bc <st_ld_test_12>:
800076bc:	00c00193          	li	gp,12
800076c0:	00009117          	auipc	sp,0x9
800076c4:	95010113          	addi	sp,sp,-1712 # 80010010 <begin_signature_ldst>
800076c8:	01100093          	li	ra,17
800076cc:	00110223          	sb	ra,4(sp)
800076d0:	00410703          	lb	a4,4(sp)
800076d4:	01100393          	li	t2,17
800076d8:	58771663          	bne	a4,t2,80007c64 <fail_st_ld>

800076dc <st_ld_test_13>:
800076dc:	00d00193          	li	gp,13
800076e0:	00009117          	auipc	sp,0x9
800076e4:	93010113          	addi	sp,sp,-1744 # 80010010 <begin_signature_ldst>
800076e8:	00100093          	li	ra,1
800076ec:	001102a3          	sb	ra,5(sp)
800076f0:	00510703          	lb	a4,5(sp)
800076f4:	00100393          	li	t2,1
800076f8:	56771663          	bne	a4,t2,80007c64 <fail_st_ld>

800076fc <st_ld_test_14>:
800076fc:	00e00193          	li	gp,14
80007700:	00009117          	auipc	sp,0x9
80007704:	91010113          	addi	sp,sp,-1776 # 80010010 <begin_signature_ldst>
80007708:	03300093          	li	ra,51
8000770c:	00110023          	sb	ra,0(sp)
80007710:	00014703          	lbu	a4,0(sp)
80007714:	03300393          	li	t2,51
80007718:	54771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000771c <st_ld_test_15>:
8000771c:	00f00193          	li	gp,15
80007720:	00009117          	auipc	sp,0x9
80007724:	8f010113          	addi	sp,sp,-1808 # 80010010 <begin_signature_ldst>
80007728:	02300093          	li	ra,35
8000772c:	001100a3          	sb	ra,1(sp)
80007730:	00114703          	lbu	a4,1(sp)
80007734:	02300393          	li	t2,35
80007738:	52771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000773c <st_ld_test_16>:
8000773c:	01000193          	li	gp,16
80007740:	00009117          	auipc	sp,0x9
80007744:	8d010113          	addi	sp,sp,-1840 # 80010010 <begin_signature_ldst>
80007748:	02200093          	li	ra,34
8000774c:	00110123          	sb	ra,2(sp)
80007750:	00214703          	lbu	a4,2(sp)
80007754:	02200393          	li	t2,34
80007758:	50771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000775c <st_ld_test_17>:
8000775c:	01100193          	li	gp,17
80007760:	00009117          	auipc	sp,0x9
80007764:	8b010113          	addi	sp,sp,-1872 # 80010010 <begin_signature_ldst>
80007768:	01200093          	li	ra,18
8000776c:	001101a3          	sb	ra,3(sp)
80007770:	00314703          	lbu	a4,3(sp)
80007774:	01200393          	li	t2,18
80007778:	4e771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000777c <st_ld_test_18>:
8000777c:	01200193          	li	gp,18
80007780:	00009117          	auipc	sp,0x9
80007784:	89010113          	addi	sp,sp,-1904 # 80010010 <begin_signature_ldst>
80007788:	01100093          	li	ra,17
8000778c:	00110223          	sb	ra,4(sp)
80007790:	00414703          	lbu	a4,4(sp)
80007794:	01100393          	li	t2,17
80007798:	4c771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000779c <st_ld_test_19>:
8000779c:	01300193          	li	gp,19
800077a0:	00009117          	auipc	sp,0x9
800077a4:	87010113          	addi	sp,sp,-1936 # 80010010 <begin_signature_ldst>
800077a8:	00100093          	li	ra,1
800077ac:	001102a3          	sb	ra,5(sp)
800077b0:	00514703          	lbu	a4,5(sp)
800077b4:	00100393          	li	t2,1
800077b8:	4a771663          	bne	a4,t2,80007c64 <fail_st_ld>

800077bc <st_ld_test_20>:
800077bc:	01400193          	li	gp,20
800077c0:	00009117          	auipc	sp,0x9
800077c4:	85010113          	addi	sp,sp,-1968 # 80010010 <begin_signature_ldst>
800077c8:	aabbd0b7          	lui	ra,0xaabbd
800077cc:	cdd08093          	addi	ra,ra,-803 # aabbccdd <__stack_top+0x2aba8ce1>
800077d0:	00112023          	sw	ra,0(sp)
800077d4:	00012703          	lw	a4,0(sp)
800077d8:	aabbd3b7          	lui	t2,0xaabbd
800077dc:	cdd38393          	addi	t2,t2,-803 # aabbccdd <__stack_top+0x2aba8ce1>
800077e0:	48771263          	bne	a4,t2,80007c64 <fail_st_ld>

800077e4 <st_ld_test_21>:
800077e4:	01500193          	li	gp,21
800077e8:	00009117          	auipc	sp,0x9
800077ec:	82810113          	addi	sp,sp,-2008 # 80010010 <begin_signature_ldst>
800077f0:	daabc0b7          	lui	ra,0xdaabc
800077f4:	ccd08093          	addi	ra,ra,-819 # daabbccd <__stack_top+0x5aaa7cd1>
800077f8:	00112223          	sw	ra,4(sp)
800077fc:	00412703          	lw	a4,4(sp)
80007800:	daabc3b7          	lui	t2,0xdaabc
80007804:	ccd38393          	addi	t2,t2,-819 # daabbccd <__stack_top+0x5aaa7cd1>
80007808:	44771e63          	bne	a4,t2,80007c64 <fail_st_ld>

8000780c <st_ld_test_22>:
8000780c:	01600193          	li	gp,22
80007810:	00009117          	auipc	sp,0x9
80007814:	80010113          	addi	sp,sp,-2048 # 80010010 <begin_signature_ldst>
80007818:	ddaac0b7          	lui	ra,0xddaac
8000781c:	bcc08093          	addi	ra,ra,-1076 # ddaabbcc <__stack_top+0x5da97bd0>
80007820:	00112423          	sw	ra,8(sp)
80007824:	00812703          	lw	a4,8(sp)
80007828:	ddaac3b7          	lui	t2,0xddaac
8000782c:	bcc38393          	addi	t2,t2,-1076 # ddaabbcc <__stack_top+0x5da97bd0>
80007830:	42771a63          	bne	a4,t2,80007c64 <fail_st_ld>

80007834 <st_ld_test_23>:
80007834:	01700193          	li	gp,23
80007838:	00008117          	auipc	sp,0x8
8000783c:	7d810113          	addi	sp,sp,2008 # 80010010 <begin_signature_ldst>
80007840:	cddab0b7          	lui	ra,0xcddab
80007844:	bbc08093          	addi	ra,ra,-1092 # cddaabbc <__stack_top+0x4dd96bc0>
80007848:	00112623          	sw	ra,12(sp)
8000784c:	00c12703          	lw	a4,12(sp)
80007850:	cddab3b7          	lui	t2,0xcddab
80007854:	bbc38393          	addi	t2,t2,-1092 # cddaabbc <__stack_top+0x4dd96bc0>
80007858:	40771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000785c <st_ld_test_24>:
8000785c:	01800193          	li	gp,24
80007860:	00008117          	auipc	sp,0x8
80007864:	7b010113          	addi	sp,sp,1968 # 80010010 <begin_signature_ldst>
80007868:	ccddb0b7          	lui	ra,0xccddb
8000786c:	abb08093          	addi	ra,ra,-1349 # ccddaabb <__stack_top+0x4cdc6abf>
80007870:	00112823          	sw	ra,16(sp)
80007874:	01012703          	lw	a4,16(sp)
80007878:	ccddb3b7          	lui	t2,0xccddb
8000787c:	abb38393          	addi	t2,t2,-1349 # ccddaabb <__stack_top+0x4cdc6abf>
80007880:	3e771263          	bne	a4,t2,80007c64 <fail_st_ld>

80007884 <st_ld_test_25>:
80007884:	01900193          	li	gp,25
80007888:	00008117          	auipc	sp,0x8
8000788c:	78810113          	addi	sp,sp,1928 # 80010010 <begin_signature_ldst>
80007890:	bccde0b7          	lui	ra,0xbccde
80007894:	aab08093          	addi	ra,ra,-1365 # bccddaab <__stack_top+0x3ccc9aaf>
80007898:	00112a23          	sw	ra,20(sp)
8000789c:	01412703          	lw	a4,20(sp)
800078a0:	bccde3b7          	lui	t2,0xbccde
800078a4:	aab38393          	addi	t2,t2,-1365 # bccddaab <__stack_top+0x3ccc9aaf>
800078a8:	3a771e63          	bne	a4,t2,80007c64 <fail_st_ld>

800078ac <st_ld_test_26>:
800078ac:	01a00193          	li	gp,26
800078b0:	00008117          	auipc	sp,0x8
800078b4:	76010113          	addi	sp,sp,1888 # 80010010 <begin_signature_ldst>
800078b8:	001120b7          	lui	ra,0x112
800078bc:	23308093          	addi	ra,ra,563 # 112233 <_size_rom+0x109523>
800078c0:	00112023          	sw	ra,0(sp)
800078c4:	00012703          	lw	a4,0(sp)
800078c8:	001123b7          	lui	t2,0x112
800078cc:	23338393          	addi	t2,t2,563 # 112233 <_size_rom+0x109523>
800078d0:	38771a63          	bne	a4,t2,80007c64 <fail_st_ld>

800078d4 <st_ld_test_27>:
800078d4:	01b00193          	li	gp,27
800078d8:	00008117          	auipc	sp,0x8
800078dc:	73810113          	addi	sp,sp,1848 # 80010010 <begin_signature_ldst>
800078e0:	300110b7          	lui	ra,0x30011
800078e4:	22308093          	addi	ra,ra,547 # 30011223 <_size_rom+0x30008513>
800078e8:	00112223          	sw	ra,4(sp)
800078ec:	00412703          	lw	a4,4(sp)
800078f0:	300113b7          	lui	t2,0x30011
800078f4:	22338393          	addi	t2,t2,547 # 30011223 <_size_rom+0x30008513>
800078f8:	36771663          	bne	a4,t2,80007c64 <fail_st_ld>

800078fc <st_ld_test_28>:
800078fc:	01c00193          	li	gp,28
80007900:	00008117          	auipc	sp,0x8
80007904:	71010113          	addi	sp,sp,1808 # 80010010 <begin_signature_ldst>
80007908:	330010b7          	lui	ra,0x33001
8000790c:	12208093          	addi	ra,ra,290 # 33001122 <_size_rom+0x32ff8412>
80007910:	00112423          	sw	ra,8(sp)
80007914:	00812703          	lw	a4,8(sp)
80007918:	330013b7          	lui	t2,0x33001
8000791c:	12238393          	addi	t2,t2,290 # 33001122 <_size_rom+0x32ff8412>
80007920:	34771263          	bne	a4,t2,80007c64 <fail_st_ld>

80007924 <st_ld_test_29>:
80007924:	01d00193          	li	gp,29
80007928:	00008117          	auipc	sp,0x8
8000792c:	6e810113          	addi	sp,sp,1768 # 80010010 <begin_signature_ldst>
80007930:	233000b7          	lui	ra,0x23300
80007934:	11208093          	addi	ra,ra,274 # 23300112 <_size_rom+0x232f7402>
80007938:	00112623          	sw	ra,12(sp)
8000793c:	00c12703          	lw	a4,12(sp)
80007940:	233003b7          	lui	t2,0x23300
80007944:	11238393          	addi	t2,t2,274 # 23300112 <_size_rom+0x232f7402>
80007948:	30771e63          	bne	a4,t2,80007c64 <fail_st_ld>

8000794c <st_ld_test_30>:
8000794c:	01e00193          	li	gp,30
80007950:	00008117          	auipc	sp,0x8
80007954:	6c010113          	addi	sp,sp,1728 # 80010010 <begin_signature_ldst>
80007958:	223300b7          	lui	ra,0x22330
8000795c:	01108093          	addi	ra,ra,17 # 22330011 <_size_rom+0x22327301>
80007960:	00112823          	sw	ra,16(sp)
80007964:	01012703          	lw	a4,16(sp)
80007968:	223303b7          	lui	t2,0x22330
8000796c:	01138393          	addi	t2,t2,17 # 22330011 <_size_rom+0x22327301>
80007970:	2e771a63          	bne	a4,t2,80007c64 <fail_st_ld>

80007974 <st_ld_test_31>:
80007974:	01f00193          	li	gp,31
80007978:	00008117          	auipc	sp,0x8
8000797c:	69810113          	addi	sp,sp,1688 # 80010010 <begin_signature_ldst>
80007980:	122330b7          	lui	ra,0x12233
80007984:	00108093          	addi	ra,ra,1 # 12233001 <_size_rom+0x1222a2f1>
80007988:	00112a23          	sw	ra,20(sp)
8000798c:	01412703          	lw	a4,20(sp)
80007990:	122333b7          	lui	t2,0x12233
80007994:	00138393          	addi	t2,t2,1 # 12233001 <_size_rom+0x1222a2f1>
80007998:	2c771663          	bne	a4,t2,80007c64 <fail_st_ld>

8000799c <st_ld_test_32>:
8000799c:	02000193          	li	gp,32
800079a0:	00008117          	auipc	sp,0x8
800079a4:	67010113          	addi	sp,sp,1648 # 80010010 <begin_signature_ldst>
800079a8:	ffffd0b7          	lui	ra,0xffffd
800079ac:	cdd08093          	addi	ra,ra,-803 # ffffccdd <__stack_top+0x7ffe8ce1>
800079b0:	00111023          	sh	ra,0(sp)
800079b4:	00011703          	lh	a4,0(sp)
800079b8:	ffffd3b7          	lui	t2,0xffffd
800079bc:	cdd38393          	addi	t2,t2,-803 # ffffccdd <__stack_top+0x7ffe8ce1>
800079c0:	2a771263          	bne	a4,t2,80007c64 <fail_st_ld>

800079c4 <st_ld_test_33>:
800079c4:	02100193          	li	gp,33
800079c8:	00008117          	auipc	sp,0x8
800079cc:	64810113          	addi	sp,sp,1608 # 80010010 <begin_signature_ldst>
800079d0:	ffffc0b7          	lui	ra,0xffffc
800079d4:	ccd08093          	addi	ra,ra,-819 # ffffbccd <__stack_top+0x7ffe7cd1>
800079d8:	00111123          	sh	ra,2(sp)
800079dc:	00211703          	lh	a4,2(sp)
800079e0:	ffffc3b7          	lui	t2,0xffffc
800079e4:	ccd38393          	addi	t2,t2,-819 # ffffbccd <__stack_top+0x7ffe7cd1>
800079e8:	26771e63          	bne	a4,t2,80007c64 <fail_st_ld>

800079ec <st_ld_test_34>:
800079ec:	02200193          	li	gp,34
800079f0:	00008117          	auipc	sp,0x8
800079f4:	62010113          	addi	sp,sp,1568 # 80010010 <begin_signature_ldst>
800079f8:	ffffc0b7          	lui	ra,0xffffc
800079fc:	bcc08093          	addi	ra,ra,-1076 # ffffbbcc <__stack_top+0x7ffe7bd0>
80007a00:	00111223          	sh	ra,4(sp)
80007a04:	00411703          	lh	a4,4(sp)
80007a08:	ffffc3b7          	lui	t2,0xffffc
80007a0c:	bcc38393          	addi	t2,t2,-1076 # ffffbbcc <__stack_top+0x7ffe7bd0>
80007a10:	24771a63          	bne	a4,t2,80007c64 <fail_st_ld>

80007a14 <st_ld_test_35>:
80007a14:	02300193          	li	gp,35
80007a18:	00008117          	auipc	sp,0x8
80007a1c:	5f810113          	addi	sp,sp,1528 # 80010010 <begin_signature_ldst>
80007a20:	ffffb0b7          	lui	ra,0xffffb
80007a24:	bbc08093          	addi	ra,ra,-1092 # ffffabbc <__stack_top+0x7ffe6bc0>
80007a28:	00111323          	sh	ra,6(sp)
80007a2c:	00611703          	lh	a4,6(sp)
80007a30:	ffffb3b7          	lui	t2,0xffffb
80007a34:	bbc38393          	addi	t2,t2,-1092 # ffffabbc <__stack_top+0x7ffe6bc0>
80007a38:	22771663          	bne	a4,t2,80007c64 <fail_st_ld>

80007a3c <st_ld_test_36>:
80007a3c:	02400193          	li	gp,36
80007a40:	00008117          	auipc	sp,0x8
80007a44:	5d010113          	addi	sp,sp,1488 # 80010010 <begin_signature_ldst>
80007a48:	ffffb0b7          	lui	ra,0xffffb
80007a4c:	abb08093          	addi	ra,ra,-1349 # ffffaabb <__stack_top+0x7ffe6abf>
80007a50:	00111423          	sh	ra,8(sp)
80007a54:	00811703          	lh	a4,8(sp)
80007a58:	ffffb3b7          	lui	t2,0xffffb
80007a5c:	abb38393          	addi	t2,t2,-1349 # ffffaabb <__stack_top+0x7ffe6abf>
80007a60:	20771263          	bne	a4,t2,80007c64 <fail_st_ld>

80007a64 <st_ld_test_37>:
80007a64:	02500193          	li	gp,37
80007a68:	00008117          	auipc	sp,0x8
80007a6c:	5a810113          	addi	sp,sp,1448 # 80010010 <begin_signature_ldst>
80007a70:	ffffe0b7          	lui	ra,0xffffe
80007a74:	aab08093          	addi	ra,ra,-1365 # ffffdaab <__stack_top+0x7ffe9aaf>
80007a78:	00111523          	sh	ra,10(sp)
80007a7c:	00a11703          	lh	a4,10(sp)
80007a80:	ffffe3b7          	lui	t2,0xffffe
80007a84:	aab38393          	addi	t2,t2,-1365 # ffffdaab <__stack_top+0x7ffe9aaf>
80007a88:	1c771e63          	bne	a4,t2,80007c64 <fail_st_ld>

80007a8c <st_ld_test_38>:
80007a8c:	02600193          	li	gp,38
80007a90:	00008117          	auipc	sp,0x8
80007a94:	58010113          	addi	sp,sp,1408 # 80010010 <begin_signature_ldst>
80007a98:	000020b7          	lui	ra,0x2
80007a9c:	23308093          	addi	ra,ra,563 # 2233 <_size_rom-0x6add>
80007aa0:	00111023          	sh	ra,0(sp)
80007aa4:	00011703          	lh	a4,0(sp)
80007aa8:	000023b7          	lui	t2,0x2
80007aac:	23338393          	addi	t2,t2,563 # 2233 <_size_rom-0x6add>
80007ab0:	1a771a63          	bne	a4,t2,80007c64 <fail_st_ld>

80007ab4 <st_ld_test_39>:
80007ab4:	02700193          	li	gp,39
80007ab8:	00008117          	auipc	sp,0x8
80007abc:	55810113          	addi	sp,sp,1368 # 80010010 <begin_signature_ldst>
80007ac0:	000010b7          	lui	ra,0x1
80007ac4:	22308093          	addi	ra,ra,547 # 1223 <_size_rom-0x7aed>
80007ac8:	00111123          	sh	ra,2(sp)
80007acc:	00211703          	lh	a4,2(sp)
80007ad0:	000013b7          	lui	t2,0x1
80007ad4:	22338393          	addi	t2,t2,547 # 1223 <_size_rom-0x7aed>
80007ad8:	18771663          	bne	a4,t2,80007c64 <fail_st_ld>

80007adc <st_ld_test_40>:
80007adc:	02800193          	li	gp,40
80007ae0:	00008117          	auipc	sp,0x8
80007ae4:	53010113          	addi	sp,sp,1328 # 80010010 <begin_signature_ldst>
80007ae8:	000010b7          	lui	ra,0x1
80007aec:	12208093          	addi	ra,ra,290 # 1122 <_size_rom-0x7bee>
80007af0:	00111223          	sh	ra,4(sp)
80007af4:	00411703          	lh	a4,4(sp)
80007af8:	000013b7          	lui	t2,0x1
80007afc:	12238393          	addi	t2,t2,290 # 1122 <_size_rom-0x7bee>
80007b00:	16771263          	bne	a4,t2,80007c64 <fail_st_ld>

80007b04 <st_ld_test_41>:
80007b04:	02900193          	li	gp,41
80007b08:	00008117          	auipc	sp,0x8
80007b0c:	50810113          	addi	sp,sp,1288 # 80010010 <begin_signature_ldst>
80007b10:	11200093          	li	ra,274
80007b14:	00111323          	sh	ra,6(sp)
80007b18:	00611703          	lh	a4,6(sp)
80007b1c:	11200393          	li	t2,274
80007b20:	14771263          	bne	a4,t2,80007c64 <fail_st_ld>

80007b24 <st_ld_test_42>:
80007b24:	02a00193          	li	gp,42
80007b28:	00008117          	auipc	sp,0x8
80007b2c:	4e810113          	addi	sp,sp,1256 # 80010010 <begin_signature_ldst>
80007b30:	01100093          	li	ra,17
80007b34:	00111423          	sh	ra,8(sp)
80007b38:	00811703          	lh	a4,8(sp)
80007b3c:	01100393          	li	t2,17
80007b40:	12771263          	bne	a4,t2,80007c64 <fail_st_ld>

80007b44 <st_ld_test_43>:
80007b44:	02b00193          	li	gp,43
80007b48:	00008117          	auipc	sp,0x8
80007b4c:	4c810113          	addi	sp,sp,1224 # 80010010 <begin_signature_ldst>
80007b50:	000030b7          	lui	ra,0x3
80007b54:	00108093          	addi	ra,ra,1 # 3001 <_size_rom-0x5d0f>
80007b58:	00111523          	sh	ra,10(sp)
80007b5c:	00a11703          	lh	a4,10(sp)
80007b60:	000033b7          	lui	t2,0x3
80007b64:	00138393          	addi	t2,t2,1 # 3001 <_size_rom-0x5d0f>
80007b68:	0e771e63          	bne	a4,t2,80007c64 <fail_st_ld>

80007b6c <st_ld_test_44>:
80007b6c:	02c00193          	li	gp,44
80007b70:	00008117          	auipc	sp,0x8
80007b74:	4a010113          	addi	sp,sp,1184 # 80010010 <begin_signature_ldst>
80007b78:	000020b7          	lui	ra,0x2
80007b7c:	23308093          	addi	ra,ra,563 # 2233 <_size_rom-0x6add>
80007b80:	00111023          	sh	ra,0(sp)
80007b84:	00015703          	lhu	a4,0(sp)
80007b88:	000023b7          	lui	t2,0x2
80007b8c:	23338393          	addi	t2,t2,563 # 2233 <_size_rom-0x6add>
80007b90:	0c771a63          	bne	a4,t2,80007c64 <fail_st_ld>

80007b94 <st_ld_test_45>:
80007b94:	02d00193          	li	gp,45
80007b98:	00008117          	auipc	sp,0x8
80007b9c:	47810113          	addi	sp,sp,1144 # 80010010 <begin_signature_ldst>
80007ba0:	000010b7          	lui	ra,0x1
80007ba4:	22308093          	addi	ra,ra,547 # 1223 <_size_rom-0x7aed>
80007ba8:	00111123          	sh	ra,2(sp)
80007bac:	00215703          	lhu	a4,2(sp)
80007bb0:	000013b7          	lui	t2,0x1
80007bb4:	22338393          	addi	t2,t2,547 # 1223 <_size_rom-0x7aed>
80007bb8:	0a771663          	bne	a4,t2,80007c64 <fail_st_ld>

80007bbc <st_ld_test_46>:
80007bbc:	02e00193          	li	gp,46
80007bc0:	00008117          	auipc	sp,0x8
80007bc4:	45010113          	addi	sp,sp,1104 # 80010010 <begin_signature_ldst>
80007bc8:	000010b7          	lui	ra,0x1
80007bcc:	12208093          	addi	ra,ra,290 # 1122 <_size_rom-0x7bee>
80007bd0:	00111223          	sh	ra,4(sp)
80007bd4:	00415703          	lhu	a4,4(sp)
80007bd8:	000013b7          	lui	t2,0x1
80007bdc:	12238393          	addi	t2,t2,290 # 1122 <_size_rom-0x7bee>
80007be0:	08771263          	bne	a4,t2,80007c64 <fail_st_ld>

80007be4 <st_ld_test_47>:
80007be4:	02f00193          	li	gp,47
80007be8:	00008117          	auipc	sp,0x8
80007bec:	42810113          	addi	sp,sp,1064 # 80010010 <begin_signature_ldst>
80007bf0:	11200093          	li	ra,274
80007bf4:	00111323          	sh	ra,6(sp)
80007bf8:	00615703          	lhu	a4,6(sp)
80007bfc:	11200393          	li	t2,274
80007c00:	06771263          	bne	a4,t2,80007c64 <fail_st_ld>

80007c04 <st_ld_test_48>:
80007c04:	03000193          	li	gp,48
80007c08:	00008117          	auipc	sp,0x8
80007c0c:	40810113          	addi	sp,sp,1032 # 80010010 <begin_signature_ldst>
80007c10:	01100093          	li	ra,17
80007c14:	00111423          	sh	ra,8(sp)
80007c18:	00815703          	lhu	a4,8(sp)
80007c1c:	01100393          	li	t2,17
80007c20:	04771263          	bne	a4,t2,80007c64 <fail_st_ld>

80007c24 <st_ld_test_49>:
80007c24:	03100193          	li	gp,49
80007c28:	00008117          	auipc	sp,0x8
80007c2c:	3e810113          	addi	sp,sp,1000 # 80010010 <begin_signature_ldst>
80007c30:	000030b7          	lui	ra,0x3
80007c34:	00108093          	addi	ra,ra,1 # 3001 <_size_rom-0x5d0f>
80007c38:	00111523          	sh	ra,10(sp)
80007c3c:	00a15703          	lhu	a4,10(sp)
80007c40:	000033b7          	lui	t2,0x3
80007c44:	00138393          	addi	t2,t2,1 # 3001 <_size_rom-0x5d0f>
80007c48:	00771e63          	bne	a4,t2,80007c64 <fail_st_ld>
80007c4c:	0ef00513          	li	a0,239
80007c50:	00008597          	auipc	a1,0x8
80007c54:	3c058593          	addi	a1,a1,960 # 80010010 <begin_signature_ldst>
80007c58:	00a581a3          	sb	a0,3(a1)
80007c5c:	00358603          	lb	a2,3(a1)
80007c60:	00c0006f          	j	80007c6c <pass_st_ld>

80007c64 <fail_st_ld>:
80007c64:	04d00893          	li	a7,77
80007c68:	ffdff06f          	j	80007c64 <fail_st_ld>

80007c6c <pass_st_ld>:
80007c6c:	04200893          	li	a7,66

80007c70 <sub_test_2>:
80007c70:	00200193          	li	gp,2
80007c74:	00000593          	li	a1,0
80007c78:	00000613          	li	a2,0
80007c7c:	40c58733          	sub	a4,a1,a2
80007c80:	00000393          	li	t2,0
80007c84:	4a771663          	bne	a4,t2,80008130 <fail_sub>

80007c88 <sub_test_3>:
80007c88:	00300193          	li	gp,3
80007c8c:	00100593          	li	a1,1
80007c90:	00100613          	li	a2,1
80007c94:	40c58733          	sub	a4,a1,a2
80007c98:	00000393          	li	t2,0
80007c9c:	48771a63          	bne	a4,t2,80008130 <fail_sub>

80007ca0 <sub_test_4>:
80007ca0:	00400193          	li	gp,4
80007ca4:	00300593          	li	a1,3
80007ca8:	00700613          	li	a2,7
80007cac:	40c58733          	sub	a4,a1,a2
80007cb0:	ffc00393          	li	t2,-4
80007cb4:	46771e63          	bne	a4,t2,80008130 <fail_sub>

80007cb8 <sub_test_5>:
80007cb8:	00500193          	li	gp,5
80007cbc:	00000593          	li	a1,0
80007cc0:	ffff8637          	lui	a2,0xffff8
80007cc4:	40c58733          	sub	a4,a1,a2
80007cc8:	000083b7          	lui	t2,0x8
80007ccc:	46771263          	bne	a4,t2,80008130 <fail_sub>

80007cd0 <sub_test_6>:
80007cd0:	00600193          	li	gp,6
80007cd4:	800005b7          	lui	a1,0x80000
80007cd8:	00000613          	li	a2,0
80007cdc:	40c58733          	sub	a4,a1,a2
80007ce0:	800003b7          	lui	t2,0x80000
80007ce4:	44771663          	bne	a4,t2,80008130 <fail_sub>

80007ce8 <sub_test_7>:
80007ce8:	00700193          	li	gp,7
80007cec:	800005b7          	lui	a1,0x80000
80007cf0:	ffff8637          	lui	a2,0xffff8
80007cf4:	40c58733          	sub	a4,a1,a2
80007cf8:	800083b7          	lui	t2,0x80008
80007cfc:	42771a63          	bne	a4,t2,80008130 <fail_sub>

80007d00 <sub_test_8>:
80007d00:	00800193          	li	gp,8
80007d04:	00000593          	li	a1,0
80007d08:	00008637          	lui	a2,0x8
80007d0c:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
80007d10:	40c58733          	sub	a4,a1,a2
80007d14:	ffff83b7          	lui	t2,0xffff8
80007d18:	00138393          	addi	t2,t2,1 # ffff8001 <__stack_top+0x7ffe4005>
80007d1c:	40771a63          	bne	a4,t2,80008130 <fail_sub>

80007d20 <sub_test_9>:
80007d20:	00900193          	li	gp,9
80007d24:	800005b7          	lui	a1,0x80000
80007d28:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
80007d2c:	00000613          	li	a2,0
80007d30:	40c58733          	sub	a4,a1,a2
80007d34:	800003b7          	lui	t2,0x80000
80007d38:	fff38393          	addi	t2,t2,-1 # 7fffffff <_size_rom+0x7fff72ef>
80007d3c:	3e771a63          	bne	a4,t2,80008130 <fail_sub>

80007d40 <sub_test_10>:
80007d40:	00a00193          	li	gp,10
80007d44:	800005b7          	lui	a1,0x80000
80007d48:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
80007d4c:	00008637          	lui	a2,0x8
80007d50:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
80007d54:	40c58733          	sub	a4,a1,a2
80007d58:	7fff83b7          	lui	t2,0x7fff8
80007d5c:	3c771a63          	bne	a4,t2,80008130 <fail_sub>

80007d60 <sub_test_11>:
80007d60:	00b00193          	li	gp,11
80007d64:	800005b7          	lui	a1,0x80000
80007d68:	00008637          	lui	a2,0x8
80007d6c:	fff60613          	addi	a2,a2,-1 # 7fff <_size_rom-0xd11>
80007d70:	40c58733          	sub	a4,a1,a2
80007d74:	7fff83b7          	lui	t2,0x7fff8
80007d78:	00138393          	addi	t2,t2,1 # 7fff8001 <_size_rom+0x7ffef2f1>
80007d7c:	3a771a63          	bne	a4,t2,80008130 <fail_sub>

80007d80 <sub_test_12>:
80007d80:	00c00193          	li	gp,12
80007d84:	800005b7          	lui	a1,0x80000
80007d88:	fff58593          	addi	a1,a1,-1 # 7fffffff <_size_rom+0x7fff72ef>
80007d8c:	ffff8637          	lui	a2,0xffff8
80007d90:	40c58733          	sub	a4,a1,a2
80007d94:	800083b7          	lui	t2,0x80008
80007d98:	fff38393          	addi	t2,t2,-1 # 80007fff <test_29plus8_sub+0x3>
80007d9c:	38771a63          	bne	a4,t2,80008130 <fail_sub>

80007da0 <sub_test_13>:
80007da0:	00d00193          	li	gp,13
80007da4:	00000593          	li	a1,0
80007da8:	fff00613          	li	a2,-1
80007dac:	40c58733          	sub	a4,a1,a2
80007db0:	00100393          	li	t2,1
80007db4:	36771e63          	bne	a4,t2,80008130 <fail_sub>

80007db8 <sub_test_14>:
80007db8:	00e00193          	li	gp,14
80007dbc:	fff00593          	li	a1,-1
80007dc0:	00100613          	li	a2,1
80007dc4:	40c58733          	sub	a4,a1,a2
80007dc8:	ffe00393          	li	t2,-2
80007dcc:	36771263          	bne	a4,t2,80008130 <fail_sub>

80007dd0 <sub_test_15>:
80007dd0:	00f00193          	li	gp,15
80007dd4:	fff00593          	li	a1,-1
80007dd8:	fff00613          	li	a2,-1
80007ddc:	40c58733          	sub	a4,a1,a2
80007de0:	00000393          	li	t2,0
80007de4:	34771663          	bne	a4,t2,80008130 <fail_sub>

80007de8 <sub_test_16>:
80007de8:	01000193          	li	gp,16
80007dec:	00d00593          	li	a1,13
80007df0:	00b00613          	li	a2,11
80007df4:	40c585b3          	sub	a1,a1,a2
80007df8:	00200393          	li	t2,2
80007dfc:	32759a63          	bne	a1,t2,80008130 <fail_sub>

80007e00 <sub_test_17>:
80007e00:	01100193          	li	gp,17
80007e04:	00e00593          	li	a1,14
80007e08:	00b00613          	li	a2,11
80007e0c:	40c58633          	sub	a2,a1,a2
80007e10:	00300393          	li	t2,3
80007e14:	30761e63          	bne	a2,t2,80008130 <fail_sub>

80007e18 <sub_test_18>:
80007e18:	01200193          	li	gp,18
80007e1c:	00d00593          	li	a1,13
80007e20:	40b585b3          	sub	a1,a1,a1
80007e24:	00000393          	li	t2,0
80007e28:	30759463          	bne	a1,t2,80008130 <fail_sub>

80007e2c <sub_test_19>:
80007e2c:	01300193          	li	gp,19
80007e30:	00000213          	li	tp,0

80007e34 <test_19plus8_sub>:
80007e34:	00d00093          	li	ra,13
80007e38:	00b00113          	li	sp,11
80007e3c:	40208733          	sub	a4,ra,sp
80007e40:	00070313          	mv	t1,a4
80007e44:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007e48:	00200293          	li	t0,2
80007e4c:	fe5214e3          	bne	tp,t0,80007e34 <test_19plus8_sub>
80007e50:	00200393          	li	t2,2
80007e54:	2c731e63          	bne	t1,t2,80008130 <fail_sub>

80007e58 <sub_test_20>:
80007e58:	01400193          	li	gp,20
80007e5c:	00000213          	li	tp,0

80007e60 <test_20plus8_sub>:
80007e60:	00e00093          	li	ra,14
80007e64:	00b00113          	li	sp,11
80007e68:	40208733          	sub	a4,ra,sp
80007e6c:	00000013          	nop
80007e70:	00070313          	mv	t1,a4
80007e74:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007e78:	00200293          	li	t0,2
80007e7c:	fe5212e3          	bne	tp,t0,80007e60 <test_20plus8_sub>
80007e80:	00300393          	li	t2,3
80007e84:	2a731663          	bne	t1,t2,80008130 <fail_sub>

80007e88 <sub_test_21>:
80007e88:	01500193          	li	gp,21
80007e8c:	00000213          	li	tp,0

80007e90 <test_21plus8_sub>:
80007e90:	00f00093          	li	ra,15
80007e94:	00b00113          	li	sp,11
80007e98:	40208733          	sub	a4,ra,sp
80007e9c:	00000013          	nop
80007ea0:	00000013          	nop
80007ea4:	00070313          	mv	t1,a4
80007ea8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007eac:	00200293          	li	t0,2
80007eb0:	fe5210e3          	bne	tp,t0,80007e90 <test_21plus8_sub>
80007eb4:	00400393          	li	t2,4
80007eb8:	26731c63          	bne	t1,t2,80008130 <fail_sub>

80007ebc <sub_test_22>:
80007ebc:	01600193          	li	gp,22
80007ec0:	00000213          	li	tp,0

80007ec4 <test_22plus8_sub>:
80007ec4:	00d00093          	li	ra,13
80007ec8:	00b00113          	li	sp,11
80007ecc:	40208733          	sub	a4,ra,sp
80007ed0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007ed4:	00200293          	li	t0,2
80007ed8:	fe5216e3          	bne	tp,t0,80007ec4 <test_22plus8_sub>
80007edc:	00200393          	li	t2,2
80007ee0:	24771863          	bne	a4,t2,80008130 <fail_sub>

80007ee4 <sub_test_23>:
80007ee4:	01700193          	li	gp,23
80007ee8:	00000213          	li	tp,0

80007eec <test_23plus8_sub>:
80007eec:	00e00093          	li	ra,14
80007ef0:	00b00113          	li	sp,11
80007ef4:	00000013          	nop
80007ef8:	40208733          	sub	a4,ra,sp
80007efc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007f00:	00200293          	li	t0,2
80007f04:	fe5214e3          	bne	tp,t0,80007eec <test_23plus8_sub>
80007f08:	00300393          	li	t2,3
80007f0c:	22771263          	bne	a4,t2,80008130 <fail_sub>

80007f10 <sub_test_24>:
80007f10:	01800193          	li	gp,24
80007f14:	00000213          	li	tp,0

80007f18 <test_24plus8_sub>:
80007f18:	00f00093          	li	ra,15
80007f1c:	00b00113          	li	sp,11
80007f20:	00000013          	nop
80007f24:	00000013          	nop
80007f28:	40208733          	sub	a4,ra,sp
80007f2c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007f30:	00200293          	li	t0,2
80007f34:	fe5212e3          	bne	tp,t0,80007f18 <test_24plus8_sub>
80007f38:	00400393          	li	t2,4
80007f3c:	1e771a63          	bne	a4,t2,80008130 <fail_sub>

80007f40 <sub_test_25>:
80007f40:	01900193          	li	gp,25
80007f44:	00000213          	li	tp,0

80007f48 <test_25plus8_sub>:
80007f48:	00d00093          	li	ra,13
80007f4c:	00000013          	nop
80007f50:	00b00113          	li	sp,11
80007f54:	40208733          	sub	a4,ra,sp
80007f58:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007f5c:	00200293          	li	t0,2
80007f60:	fe5214e3          	bne	tp,t0,80007f48 <test_25plus8_sub>
80007f64:	00200393          	li	t2,2
80007f68:	1c771463          	bne	a4,t2,80008130 <fail_sub>

80007f6c <sub_test_26>:
80007f6c:	01a00193          	li	gp,26
80007f70:	00000213          	li	tp,0

80007f74 <test_26plus8_sub>:
80007f74:	00e00093          	li	ra,14
80007f78:	00000013          	nop
80007f7c:	00b00113          	li	sp,11
80007f80:	00000013          	nop
80007f84:	40208733          	sub	a4,ra,sp
80007f88:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007f8c:	00200293          	li	t0,2
80007f90:	fe5212e3          	bne	tp,t0,80007f74 <test_26plus8_sub>
80007f94:	00300393          	li	t2,3
80007f98:	18771c63          	bne	a4,t2,80008130 <fail_sub>

80007f9c <sub_test_27>:
80007f9c:	01b00193          	li	gp,27
80007fa0:	00000213          	li	tp,0

80007fa4 <test_27plus8_sub>:
80007fa4:	00f00093          	li	ra,15
80007fa8:	00000013          	nop
80007fac:	00000013          	nop
80007fb0:	00b00113          	li	sp,11
80007fb4:	40208733          	sub	a4,ra,sp
80007fb8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007fbc:	00200293          	li	t0,2
80007fc0:	fe5212e3          	bne	tp,t0,80007fa4 <test_27plus8_sub>
80007fc4:	00400393          	li	t2,4
80007fc8:	16771463          	bne	a4,t2,80008130 <fail_sub>

80007fcc <sub_test_28>:
80007fcc:	01c00193          	li	gp,28
80007fd0:	00000213          	li	tp,0

80007fd4 <test_28plus8_sub>:
80007fd4:	00b00113          	li	sp,11
80007fd8:	00d00093          	li	ra,13
80007fdc:	40208733          	sub	a4,ra,sp
80007fe0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80007fe4:	00200293          	li	t0,2
80007fe8:	fe5216e3          	bne	tp,t0,80007fd4 <test_28plus8_sub>
80007fec:	00200393          	li	t2,2
80007ff0:	14771063          	bne	a4,t2,80008130 <fail_sub>

80007ff4 <sub_test_29>:
80007ff4:	01d00193          	li	gp,29
80007ff8:	00000213          	li	tp,0

80007ffc <test_29plus8_sub>:
80007ffc:	00b00113          	li	sp,11
80008000:	00e00093          	li	ra,14
80008004:	00000013          	nop
80008008:	40208733          	sub	a4,ra,sp
8000800c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008010:	00200293          	li	t0,2
80008014:	fe5214e3          	bne	tp,t0,80007ffc <test_29plus8_sub>
80008018:	00300393          	li	t2,3
8000801c:	10771a63          	bne	a4,t2,80008130 <fail_sub>

80008020 <sub_test_30>:
80008020:	01e00193          	li	gp,30
80008024:	00000213          	li	tp,0

80008028 <test_30plus8_sub>:
80008028:	00b00113          	li	sp,11
8000802c:	00f00093          	li	ra,15
80008030:	00000013          	nop
80008034:	00000013          	nop
80008038:	40208733          	sub	a4,ra,sp
8000803c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008040:	00200293          	li	t0,2
80008044:	fe5212e3          	bne	tp,t0,80008028 <test_30plus8_sub>
80008048:	00400393          	li	t2,4
8000804c:	0e771263          	bne	a4,t2,80008130 <fail_sub>

80008050 <sub_test_31>:
80008050:	01f00193          	li	gp,31
80008054:	00000213          	li	tp,0

80008058 <test_31plus8_sub>:
80008058:	00b00113          	li	sp,11
8000805c:	00000013          	nop
80008060:	00d00093          	li	ra,13
80008064:	40208733          	sub	a4,ra,sp
80008068:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000806c:	00200293          	li	t0,2
80008070:	fe5214e3          	bne	tp,t0,80008058 <test_31plus8_sub>
80008074:	00200393          	li	t2,2
80008078:	0a771c63          	bne	a4,t2,80008130 <fail_sub>

8000807c <sub_test_32>:
8000807c:	02000193          	li	gp,32
80008080:	00000213          	li	tp,0

80008084 <test_32plus8_sub>:
80008084:	00b00113          	li	sp,11
80008088:	00000013          	nop
8000808c:	00e00093          	li	ra,14
80008090:	00000013          	nop
80008094:	40208733          	sub	a4,ra,sp
80008098:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000809c:	00200293          	li	t0,2
800080a0:	fe5212e3          	bne	tp,t0,80008084 <test_32plus8_sub>
800080a4:	00300393          	li	t2,3
800080a8:	08771463          	bne	a4,t2,80008130 <fail_sub>

800080ac <sub_test_33>:
800080ac:	02100193          	li	gp,33
800080b0:	00000213          	li	tp,0

800080b4 <test_33plus8_sub>:
800080b4:	00b00113          	li	sp,11
800080b8:	00000013          	nop
800080bc:	00000013          	nop
800080c0:	00f00093          	li	ra,15
800080c4:	40208733          	sub	a4,ra,sp
800080c8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800080cc:	00200293          	li	t0,2
800080d0:	fe5212e3          	bne	tp,t0,800080b4 <test_33plus8_sub>
800080d4:	00400393          	li	t2,4
800080d8:	04771c63          	bne	a4,t2,80008130 <fail_sub>

800080dc <sub_test_34>:
800080dc:	02200193          	li	gp,34
800080e0:	ff100093          	li	ra,-15
800080e4:	40100133          	neg	sp,ra
800080e8:	00f00393          	li	t2,15
800080ec:	04711263          	bne	sp,t2,80008130 <fail_sub>

800080f0 <sub_test_35>:
800080f0:	02300193          	li	gp,35
800080f4:	02000093          	li	ra,32
800080f8:	40008133          	sub	sp,ra,zero
800080fc:	02000393          	li	t2,32
80008100:	02711863          	bne	sp,t2,80008130 <fail_sub>

80008104 <sub_test_36>:
80008104:	02400193          	li	gp,36
80008108:	400000b3          	neg	ra,zero
8000810c:	00000393          	li	t2,0
80008110:	02709063          	bne	ra,t2,80008130 <fail_sub>

80008114 <sub_test_37>:
80008114:	02500193          	li	gp,37
80008118:	01000093          	li	ra,16
8000811c:	01e00113          	li	sp,30
80008120:	40208033          	sub	zero,ra,sp
80008124:	00000393          	li	t2,0
80008128:	00701463          	bne	zero,t2,80008130 <fail_sub>
8000812c:	00c0006f          	j	80008138 <pass_sub>

80008130 <fail_sub>:
80008130:	04d00893          	li	a7,77
80008134:	ffdff06f          	j	80008130 <fail_sub>

80008138 <pass_sub>:
80008138:	04200893          	li	a7,66

8000813c <sw_test_2>:
8000813c:	00200193          	li	gp,2
80008140:	00008117          	auipc	sp,0x8
80008144:	f7010113          	addi	sp,sp,-144 # 800100b0 <begin_signature_sw>
80008148:	00aa00b7          	lui	ra,0xaa0
8000814c:	0aa08093          	addi	ra,ra,170 # aa00aa <_size_rom+0xa9739a>
80008150:	00000797          	auipc	a5,0x0
80008154:	01478793          	addi	a5,a5,20 # 80008164 <sw_test_2+0x28>
80008158:	00112023          	sw	ra,0(sp)
8000815c:	00012703          	lw	a4,0(sp)
80008160:	0080006f          	j	80008168 <test_2plus2c_sw>
80008164:	00008713          	mv	a4,ra

80008168 <test_2plus2c_sw>:
80008168:	00aa03b7          	lui	t2,0xaa0
8000816c:	0aa38393          	addi	t2,t2,170 # aa00aa <_size_rom+0xa9739a>
80008170:	4c771863          	bne	a4,t2,80008640 <fail_sw>

80008174 <sw_test_3>:
80008174:	00300193          	li	gp,3
80008178:	00008117          	auipc	sp,0x8
8000817c:	f3810113          	addi	sp,sp,-200 # 800100b0 <begin_signature_sw>
80008180:	aa00b0b7          	lui	ra,0xaa00b
80008184:	a0008093          	addi	ra,ra,-1536 # aa00aa00 <__stack_top+0x29ff6a04>
80008188:	00000797          	auipc	a5,0x0
8000818c:	01478793          	addi	a5,a5,20 # 8000819c <sw_test_3+0x28>
80008190:	00112223          	sw	ra,4(sp)
80008194:	00412703          	lw	a4,4(sp)
80008198:	0080006f          	j	800081a0 <test_3plus2c_sw>
8000819c:	00008713          	mv	a4,ra

800081a0 <test_3plus2c_sw>:
800081a0:	aa00b3b7          	lui	t2,0xaa00b
800081a4:	a0038393          	addi	t2,t2,-1536 # aa00aa00 <__stack_top+0x29ff6a04>
800081a8:	48771c63          	bne	a4,t2,80008640 <fail_sw>

800081ac <sw_test_4>:
800081ac:	00400193          	li	gp,4
800081b0:	00008117          	auipc	sp,0x8
800081b4:	f0010113          	addi	sp,sp,-256 # 800100b0 <begin_signature_sw>
800081b8:	0aa010b7          	lui	ra,0xaa01
800081bc:	aa008093          	addi	ra,ra,-1376 # aa00aa0 <_size_rom+0xa9f7d90>
800081c0:	00000797          	auipc	a5,0x0
800081c4:	01478793          	addi	a5,a5,20 # 800081d4 <sw_test_4+0x28>
800081c8:	00112423          	sw	ra,8(sp)
800081cc:	00812703          	lw	a4,8(sp)
800081d0:	0080006f          	j	800081d8 <test_4plus2c_sw>
800081d4:	00008713          	mv	a4,ra

800081d8 <test_4plus2c_sw>:
800081d8:	0aa013b7          	lui	t2,0xaa01
800081dc:	aa038393          	addi	t2,t2,-1376 # aa00aa0 <_size_rom+0xa9f7d90>
800081e0:	46771063          	bne	a4,t2,80008640 <fail_sw>

800081e4 <sw_test_5>:
800081e4:	00500193          	li	gp,5
800081e8:	00008117          	auipc	sp,0x8
800081ec:	ec810113          	addi	sp,sp,-312 # 800100b0 <begin_signature_sw>
800081f0:	a00aa0b7          	lui	ra,0xa00aa
800081f4:	00a08093          	addi	ra,ra,10 # a00aa00a <__stack_top+0x2009600e>
800081f8:	00000797          	auipc	a5,0x0
800081fc:	01478793          	addi	a5,a5,20 # 8000820c <sw_test_5+0x28>
80008200:	00112623          	sw	ra,12(sp)
80008204:	00c12703          	lw	a4,12(sp)
80008208:	0080006f          	j	80008210 <test_5plus2c_sw>
8000820c:	00008713          	mv	a4,ra

80008210 <test_5plus2c_sw>:
80008210:	a00aa3b7          	lui	t2,0xa00aa
80008214:	00a38393          	addi	t2,t2,10 # a00aa00a <__stack_top+0x2009600e>
80008218:	42771463          	bne	a4,t2,80008640 <fail_sw>

8000821c <sw_test_6>:
8000821c:	00600193          	li	gp,6
80008220:	00008117          	auipc	sp,0x8
80008224:	eac10113          	addi	sp,sp,-340 # 800100cc <tdat8_sw>
80008228:	00aa00b7          	lui	ra,0xaa0
8000822c:	0aa08093          	addi	ra,ra,170 # aa00aa <_size_rom+0xa9739a>
80008230:	00000797          	auipc	a5,0x0
80008234:	01478793          	addi	a5,a5,20 # 80008244 <sw_test_6+0x28>
80008238:	fe112a23          	sw	ra,-12(sp)
8000823c:	ff412703          	lw	a4,-12(sp)
80008240:	0080006f          	j	80008248 <test_6plus2c_sw>
80008244:	00008713          	mv	a4,ra

80008248 <test_6plus2c_sw>:
80008248:	00aa03b7          	lui	t2,0xaa0
8000824c:	0aa38393          	addi	t2,t2,170 # aa00aa <_size_rom+0xa9739a>
80008250:	3e771863          	bne	a4,t2,80008640 <fail_sw>

80008254 <sw_test_7>:
80008254:	00700193          	li	gp,7
80008258:	00008117          	auipc	sp,0x8
8000825c:	e7410113          	addi	sp,sp,-396 # 800100cc <tdat8_sw>
80008260:	aa00b0b7          	lui	ra,0xaa00b
80008264:	a0008093          	addi	ra,ra,-1536 # aa00aa00 <__stack_top+0x29ff6a04>
80008268:	00000797          	auipc	a5,0x0
8000826c:	01478793          	addi	a5,a5,20 # 8000827c <sw_test_7+0x28>
80008270:	fe112c23          	sw	ra,-8(sp)
80008274:	ff812703          	lw	a4,-8(sp)
80008278:	0080006f          	j	80008280 <test_7plus2c_sw>
8000827c:	00008713          	mv	a4,ra

80008280 <test_7plus2c_sw>:
80008280:	aa00b3b7          	lui	t2,0xaa00b
80008284:	a0038393          	addi	t2,t2,-1536 # aa00aa00 <__stack_top+0x29ff6a04>
80008288:	3a771c63          	bne	a4,t2,80008640 <fail_sw>

8000828c <sw_test_8>:
8000828c:	00800193          	li	gp,8
80008290:	00008117          	auipc	sp,0x8
80008294:	e3c10113          	addi	sp,sp,-452 # 800100cc <tdat8_sw>
80008298:	0aa010b7          	lui	ra,0xaa01
8000829c:	aa008093          	addi	ra,ra,-1376 # aa00aa0 <_size_rom+0xa9f7d90>
800082a0:	00000797          	auipc	a5,0x0
800082a4:	01478793          	addi	a5,a5,20 # 800082b4 <sw_test_8+0x28>
800082a8:	fe112e23          	sw	ra,-4(sp)
800082ac:	ffc12703          	lw	a4,-4(sp)
800082b0:	0080006f          	j	800082b8 <test_8plus2c_sw>
800082b4:	00008713          	mv	a4,ra

800082b8 <test_8plus2c_sw>:
800082b8:	0aa013b7          	lui	t2,0xaa01
800082bc:	aa038393          	addi	t2,t2,-1376 # aa00aa0 <_size_rom+0xa9f7d90>
800082c0:	38771063          	bne	a4,t2,80008640 <fail_sw>

800082c4 <sw_test_9>:
800082c4:	00900193          	li	gp,9
800082c8:	00008117          	auipc	sp,0x8
800082cc:	e0410113          	addi	sp,sp,-508 # 800100cc <tdat8_sw>
800082d0:	a00aa0b7          	lui	ra,0xa00aa
800082d4:	00a08093          	addi	ra,ra,10 # a00aa00a <__stack_top+0x2009600e>
800082d8:	00000797          	auipc	a5,0x0
800082dc:	01478793          	addi	a5,a5,20 # 800082ec <sw_test_9+0x28>
800082e0:	00112023          	sw	ra,0(sp)
800082e4:	00012703          	lw	a4,0(sp)
800082e8:	0080006f          	j	800082f0 <test_9plus2c_sw>
800082ec:	00008713          	mv	a4,ra

800082f0 <test_9plus2c_sw>:
800082f0:	a00aa3b7          	lui	t2,0xa00aa
800082f4:	00a38393          	addi	t2,t2,10 # a00aa00a <__stack_top+0x2009600e>
800082f8:	34771463          	bne	a4,t2,80008640 <fail_sw>

800082fc <sw_test_10>:
800082fc:	00a00193          	li	gp,10
80008300:	00008097          	auipc	ra,0x8
80008304:	dd008093          	addi	ra,ra,-560 # 800100d0 <tdat9_sw>
80008308:	12345137          	lui	sp,0x12345
8000830c:	67810113          	addi	sp,sp,1656 # 12345678 <_size_rom+0x1233c968>
80008310:	fe008213          	addi	tp,ra,-32
80008314:	02222023          	sw	sp,32(tp) # 20 <_size_rom-0x8cf0>
80008318:	0000a283          	lw	t0,0(ra)
8000831c:	123453b7          	lui	t2,0x12345
80008320:	67838393          	addi	t2,t2,1656 # 12345678 <_size_rom+0x1233c968>
80008324:	30729e63          	bne	t0,t2,80008640 <fail_sw>

80008328 <sw_test_11>:
80008328:	00b00193          	li	gp,11
8000832c:	00008097          	auipc	ra,0x8
80008330:	da408093          	addi	ra,ra,-604 # 800100d0 <tdat9_sw>
80008334:	58213137          	lui	sp,0x58213
80008338:	09810113          	addi	sp,sp,152 # 58213098 <_size_rom+0x5820a388>
8000833c:	ffd08093          	addi	ra,ra,-3
80008340:	0020a3a3          	sw	sp,7(ra)
80008344:	00008217          	auipc	tp,0x8
80008348:	d9020213          	addi	tp,tp,-624 # 800100d4 <tdat10_sw>
8000834c:	00022283          	lw	t0,0(tp) # 0 <_size_rom-0x8d10>
80008350:	582133b7          	lui	t2,0x58213
80008354:	09838393          	addi	t2,t2,152 # 58213098 <_size_rom+0x5820a388>
80008358:	2e729463          	bne	t0,t2,80008640 <fail_sw>

8000835c <sw_test_12>:
8000835c:	00c00193          	li	gp,12
80008360:	00000213          	li	tp,0

80008364 <test_12plus8_sw>:
80008364:	aabbd6b7          	lui	a3,0xaabbd
80008368:	cdd68693          	addi	a3,a3,-803 # aabbccdd <__stack_top+0x2aba8ce1>
8000836c:	00008617          	auipc	a2,0x8
80008370:	d4460613          	addi	a2,a2,-700 # 800100b0 <begin_signature_sw>
80008374:	00d62023          	sw	a3,0(a2)
80008378:	00062703          	lw	a4,0(a2)
8000837c:	aabbd3b7          	lui	t2,0xaabbd
80008380:	cdd38393          	addi	t2,t2,-803 # aabbccdd <__stack_top+0x2aba8ce1>
80008384:	2a771e63          	bne	a4,t2,80008640 <fail_sw>
80008388:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000838c:	00200293          	li	t0,2
80008390:	fc521ae3          	bne	tp,t0,80008364 <test_12plus8_sw>

80008394 <sw_test_13>:
80008394:	00d00193          	li	gp,13
80008398:	00000213          	li	tp,0

8000839c <test_13plus8_sw>:
8000839c:	daabc6b7          	lui	a3,0xdaabc
800083a0:	ccd68693          	addi	a3,a3,-819 # daabbccd <__stack_top+0x5aaa7cd1>
800083a4:	00008617          	auipc	a2,0x8
800083a8:	d0c60613          	addi	a2,a2,-756 # 800100b0 <begin_signature_sw>
800083ac:	00000013          	nop
800083b0:	00d62223          	sw	a3,4(a2)
800083b4:	00462703          	lw	a4,4(a2)
800083b8:	daabc3b7          	lui	t2,0xdaabc
800083bc:	ccd38393          	addi	t2,t2,-819 # daabbccd <__stack_top+0x5aaa7cd1>
800083c0:	28771063          	bne	a4,t2,80008640 <fail_sw>
800083c4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800083c8:	00200293          	li	t0,2
800083cc:	fc5218e3          	bne	tp,t0,8000839c <test_13plus8_sw>

800083d0 <sw_test_14>:
800083d0:	00e00193          	li	gp,14
800083d4:	00000213          	li	tp,0

800083d8 <test_14plus8_sw>:
800083d8:	ddaac6b7          	lui	a3,0xddaac
800083dc:	bcc68693          	addi	a3,a3,-1076 # ddaabbcc <__stack_top+0x5da97bd0>
800083e0:	00008617          	auipc	a2,0x8
800083e4:	cd060613          	addi	a2,a2,-816 # 800100b0 <begin_signature_sw>
800083e8:	00000013          	nop
800083ec:	00000013          	nop
800083f0:	00d62423          	sw	a3,8(a2)
800083f4:	00862703          	lw	a4,8(a2)
800083f8:	ddaac3b7          	lui	t2,0xddaac
800083fc:	bcc38393          	addi	t2,t2,-1076 # ddaabbcc <__stack_top+0x5da97bd0>
80008400:	24771063          	bne	a4,t2,80008640 <fail_sw>
80008404:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008408:	00200293          	li	t0,2
8000840c:	fc5216e3          	bne	tp,t0,800083d8 <test_14plus8_sw>

80008410 <sw_test_15>:
80008410:	00f00193          	li	gp,15
80008414:	00000213          	li	tp,0

80008418 <test_15plus8_sw>:
80008418:	cddab6b7          	lui	a3,0xcddab
8000841c:	bbc68693          	addi	a3,a3,-1092 # cddaabbc <__stack_top+0x4dd96bc0>
80008420:	00000013          	nop
80008424:	00008617          	auipc	a2,0x8
80008428:	c8c60613          	addi	a2,a2,-884 # 800100b0 <begin_signature_sw>
8000842c:	00d62623          	sw	a3,12(a2)
80008430:	00c62703          	lw	a4,12(a2)
80008434:	cddab3b7          	lui	t2,0xcddab
80008438:	bbc38393          	addi	t2,t2,-1092 # cddaabbc <__stack_top+0x4dd96bc0>
8000843c:	20771263          	bne	a4,t2,80008640 <fail_sw>
80008440:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008444:	00200293          	li	t0,2
80008448:	fc5218e3          	bne	tp,t0,80008418 <test_15plus8_sw>

8000844c <sw_test_16>:
8000844c:	01000193          	li	gp,16
80008450:	00000213          	li	tp,0

80008454 <test_16plus8_sw>:
80008454:	ccddb6b7          	lui	a3,0xccddb
80008458:	abb68693          	addi	a3,a3,-1349 # ccddaabb <__stack_top+0x4cdc6abf>
8000845c:	00000013          	nop
80008460:	00008617          	auipc	a2,0x8
80008464:	c5060613          	addi	a2,a2,-944 # 800100b0 <begin_signature_sw>
80008468:	00000013          	nop
8000846c:	00d62823          	sw	a3,16(a2)
80008470:	01062703          	lw	a4,16(a2)
80008474:	ccddb3b7          	lui	t2,0xccddb
80008478:	abb38393          	addi	t2,t2,-1349 # ccddaabb <__stack_top+0x4cdc6abf>
8000847c:	1c771263          	bne	a4,t2,80008640 <fail_sw>
80008480:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008484:	00200293          	li	t0,2
80008488:	fc5216e3          	bne	tp,t0,80008454 <test_16plus8_sw>

8000848c <sw_test_17>:
8000848c:	01100193          	li	gp,17
80008490:	00000213          	li	tp,0

80008494 <test_17plus8_sw>:
80008494:	bccde6b7          	lui	a3,0xbccde
80008498:	aab68693          	addi	a3,a3,-1365 # bccddaab <__stack_top+0x3ccc9aaf>
8000849c:	00000013          	nop
800084a0:	00000013          	nop
800084a4:	00008617          	auipc	a2,0x8
800084a8:	c0c60613          	addi	a2,a2,-1012 # 800100b0 <begin_signature_sw>
800084ac:	00d62a23          	sw	a3,20(a2)
800084b0:	01462703          	lw	a4,20(a2)
800084b4:	bccde3b7          	lui	t2,0xbccde
800084b8:	aab38393          	addi	t2,t2,-1365 # bccddaab <__stack_top+0x3ccc9aaf>
800084bc:	18771263          	bne	a4,t2,80008640 <fail_sw>
800084c0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800084c4:	00200293          	li	t0,2
800084c8:	fc5216e3          	bne	tp,t0,80008494 <test_17plus8_sw>

800084cc <sw_test_18>:
800084cc:	01200193          	li	gp,18
800084d0:	00000213          	li	tp,0

800084d4 <test_18plus8_sw>:
800084d4:	00008117          	auipc	sp,0x8
800084d8:	bdc10113          	addi	sp,sp,-1060 # 800100b0 <begin_signature_sw>
800084dc:	001120b7          	lui	ra,0x112
800084e0:	23308093          	addi	ra,ra,563 # 112233 <_size_rom+0x109523>
800084e4:	00112023          	sw	ra,0(sp)
800084e8:	00012703          	lw	a4,0(sp)
800084ec:	001123b7          	lui	t2,0x112
800084f0:	23338393          	addi	t2,t2,563 # 112233 <_size_rom+0x109523>
800084f4:	14771663          	bne	a4,t2,80008640 <fail_sw>
800084f8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800084fc:	00200293          	li	t0,2
80008500:	fc521ae3          	bne	tp,t0,800084d4 <test_18plus8_sw>

80008504 <sw_test_19>:
80008504:	01300193          	li	gp,19
80008508:	00000213          	li	tp,0

8000850c <test_19plus8_sw>:
8000850c:	00008117          	auipc	sp,0x8
80008510:	ba410113          	addi	sp,sp,-1116 # 800100b0 <begin_signature_sw>
80008514:	300110b7          	lui	ra,0x30011
80008518:	22308093          	addi	ra,ra,547 # 30011223 <_size_rom+0x30008513>
8000851c:	00000013          	nop
80008520:	00112223          	sw	ra,4(sp)
80008524:	00412703          	lw	a4,4(sp)
80008528:	300113b7          	lui	t2,0x30011
8000852c:	22338393          	addi	t2,t2,547 # 30011223 <_size_rom+0x30008513>
80008530:	10771863          	bne	a4,t2,80008640 <fail_sw>
80008534:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008538:	00200293          	li	t0,2
8000853c:	fc5218e3          	bne	tp,t0,8000850c <test_19plus8_sw>

80008540 <sw_test_20>:
80008540:	01400193          	li	gp,20
80008544:	00000213          	li	tp,0

80008548 <test_20plus8_sw>:
80008548:	00008117          	auipc	sp,0x8
8000854c:	b6810113          	addi	sp,sp,-1176 # 800100b0 <begin_signature_sw>
80008550:	330010b7          	lui	ra,0x33001
80008554:	12208093          	addi	ra,ra,290 # 33001122 <_size_rom+0x32ff8412>
80008558:	00000013          	nop
8000855c:	00000013          	nop
80008560:	00112423          	sw	ra,8(sp)
80008564:	00812703          	lw	a4,8(sp)
80008568:	330013b7          	lui	t2,0x33001
8000856c:	12238393          	addi	t2,t2,290 # 33001122 <_size_rom+0x32ff8412>
80008570:	0c771863          	bne	a4,t2,80008640 <fail_sw>
80008574:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008578:	00200293          	li	t0,2
8000857c:	fc5216e3          	bne	tp,t0,80008548 <test_20plus8_sw>

80008580 <sw_test_21>:
80008580:	01500193          	li	gp,21
80008584:	00000213          	li	tp,0

80008588 <test_21plus8_sw>:
80008588:	00008117          	auipc	sp,0x8
8000858c:	b2810113          	addi	sp,sp,-1240 # 800100b0 <begin_signature_sw>
80008590:	00000013          	nop
80008594:	233000b7          	lui	ra,0x23300
80008598:	11208093          	addi	ra,ra,274 # 23300112 <_size_rom+0x232f7402>
8000859c:	00112623          	sw	ra,12(sp)
800085a0:	00c12703          	lw	a4,12(sp)
800085a4:	233003b7          	lui	t2,0x23300
800085a8:	11238393          	addi	t2,t2,274 # 23300112 <_size_rom+0x232f7402>
800085ac:	08771a63          	bne	a4,t2,80008640 <fail_sw>
800085b0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800085b4:	00200293          	li	t0,2
800085b8:	fc5218e3          	bne	tp,t0,80008588 <test_21plus8_sw>

800085bc <sw_test_22>:
800085bc:	01600193          	li	gp,22
800085c0:	00000213          	li	tp,0

800085c4 <test_22plus8_sw>:
800085c4:	00008117          	auipc	sp,0x8
800085c8:	aec10113          	addi	sp,sp,-1300 # 800100b0 <begin_signature_sw>
800085cc:	00000013          	nop
800085d0:	223300b7          	lui	ra,0x22330
800085d4:	01108093          	addi	ra,ra,17 # 22330011 <_size_rom+0x22327301>
800085d8:	00000013          	nop
800085dc:	00112823          	sw	ra,16(sp)
800085e0:	01012703          	lw	a4,16(sp)
800085e4:	223303b7          	lui	t2,0x22330
800085e8:	01138393          	addi	t2,t2,17 # 22330011 <_size_rom+0x22327301>
800085ec:	04771a63          	bne	a4,t2,80008640 <fail_sw>
800085f0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800085f4:	00200293          	li	t0,2
800085f8:	fc5216e3          	bne	tp,t0,800085c4 <test_22plus8_sw>

800085fc <sw_test_23>:
800085fc:	01700193          	li	gp,23
80008600:	00000213          	li	tp,0

80008604 <test_23plus8_sw>:
80008604:	00008117          	auipc	sp,0x8
80008608:	aac10113          	addi	sp,sp,-1364 # 800100b0 <begin_signature_sw>
8000860c:	00000013          	nop
80008610:	00000013          	nop
80008614:	122330b7          	lui	ra,0x12233
80008618:	00108093          	addi	ra,ra,1 # 12233001 <_size_rom+0x1222a2f1>
8000861c:	00112a23          	sw	ra,20(sp)
80008620:	01412703          	lw	a4,20(sp)
80008624:	122333b7          	lui	t2,0x12233
80008628:	00138393          	addi	t2,t2,1 # 12233001 <_size_rom+0x1222a2f1>
8000862c:	00771a63          	bne	a4,t2,80008640 <fail_sw>
80008630:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008634:	00200293          	li	t0,2
80008638:	fc5216e3          	bne	tp,t0,80008604 <test_23plus8_sw>
8000863c:	00c0006f          	j	80008648 <pass_sw>

80008640 <fail_sw>:
80008640:	04d00893          	li	a7,77
80008644:	ffdff06f          	j	80008640 <fail_sw>

80008648 <pass_sw>:
80008648:	04200893          	li	a7,66

8000864c <xor_test_2>:
8000864c:	00200193          	li	gp,2
80008650:	ff0105b7          	lui	a1,0xff010
80008654:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
80008658:	0f0f1637          	lui	a2,0xf0f1
8000865c:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80008660:	00c5c733          	xor	a4,a1,a2
80008664:	f00ff3b7          	lui	t2,0xf00ff
80008668:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
8000866c:	4a771063          	bne	a4,t2,80008b0c <fail_xor>

80008670 <xor_test_3>:
80008670:	00300193          	li	gp,3
80008674:	0ff015b7          	lui	a1,0xff01
80008678:	ff058593          	addi	a1,a1,-16 # ff00ff0 <_size_rom+0xfef82e0>
8000867c:	f0f0f637          	lui	a2,0xf0f0f
80008680:	0f060613          	addi	a2,a2,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
80008684:	00c5c733          	xor	a4,a1,a2
80008688:	ff0103b7          	lui	t2,0xff010
8000868c:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80008690:	46771e63          	bne	a4,t2,80008b0c <fail_xor>

80008694 <xor_test_4>:
80008694:	00400193          	li	gp,4
80008698:	00ff05b7          	lui	a1,0xff0
8000869c:	0ff58593          	addi	a1,a1,255 # ff00ff <_size_rom+0xfe73ef>
800086a0:	0f0f1637          	lui	a2,0xf0f1
800086a4:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <_size_rom+0xf0e81ff>
800086a8:	00c5c733          	xor	a4,a1,a2
800086ac:	0ff013b7          	lui	t2,0xff01
800086b0:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
800086b4:	44771c63          	bne	a4,t2,80008b0c <fail_xor>

800086b8 <xor_test_5>:
800086b8:	00500193          	li	gp,5
800086bc:	f00ff5b7          	lui	a1,0xf00ff
800086c0:	00f58593          	addi	a1,a1,15 # f00ff00f <__stack_top+0x700eb013>
800086c4:	f0f0f637          	lui	a2,0xf0f0f
800086c8:	0f060613          	addi	a2,a2,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
800086cc:	00c5c733          	xor	a4,a1,a2
800086d0:	00ff03b7          	lui	t2,0xff0
800086d4:	0ff38393          	addi	t2,t2,255 # ff00ff <_size_rom+0xfe73ef>
800086d8:	42771a63          	bne	a4,t2,80008b0c <fail_xor>

800086dc <xor_test_6>:
800086dc:	00600193          	li	gp,6
800086e0:	ff0105b7          	lui	a1,0xff010
800086e4:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
800086e8:	0f0f1637          	lui	a2,0xf0f1
800086ec:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <_size_rom+0xf0e81ff>
800086f0:	00c5c5b3          	xor	a1,a1,a2
800086f4:	f00ff3b7          	lui	t2,0xf00ff
800086f8:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
800086fc:	40759863          	bne	a1,t2,80008b0c <fail_xor>

80008700 <xor_test_7>:
80008700:	00700193          	li	gp,7
80008704:	ff0105b7          	lui	a1,0xff010
80008708:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
8000870c:	0f0f1637          	lui	a2,0xf0f1
80008710:	f0f60613          	addi	a2,a2,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80008714:	00c5c633          	xor	a2,a1,a2
80008718:	f00ff3b7          	lui	t2,0xf00ff
8000871c:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
80008720:	3e761663          	bne	a2,t2,80008b0c <fail_xor>

80008724 <xor_test_8>:
80008724:	00800193          	li	gp,8
80008728:	ff0105b7          	lui	a1,0xff010
8000872c:	f0058593          	addi	a1,a1,-256 # ff00ff00 <__stack_top+0x7effbf04>
80008730:	00b5c5b3          	xor	a1,a1,a1
80008734:	00000393          	li	t2,0
80008738:	3c759a63          	bne	a1,t2,80008b0c <fail_xor>

8000873c <xor_test_9>:
8000873c:	00900193          	li	gp,9
80008740:	00000213          	li	tp,0

80008744 <test_9plus8_xor>:
80008744:	ff0100b7          	lui	ra,0xff010
80008748:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
8000874c:	0f0f1137          	lui	sp,0xf0f1
80008750:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80008754:	0020c733          	xor	a4,ra,sp
80008758:	00070313          	mv	t1,a4
8000875c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008760:	00200293          	li	t0,2
80008764:	fe5210e3          	bne	tp,t0,80008744 <test_9plus8_xor>
80008768:	f00ff3b7          	lui	t2,0xf00ff
8000876c:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
80008770:	38731e63          	bne	t1,t2,80008b0c <fail_xor>

80008774 <xor_test_10>:
80008774:	00a00193          	li	gp,10
80008778:	00000213          	li	tp,0

8000877c <test_10plus8_xor>:
8000877c:	0ff010b7          	lui	ra,0xff01
80008780:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80008784:	f0f0f137          	lui	sp,0xf0f0f
80008788:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
8000878c:	0020c733          	xor	a4,ra,sp
80008790:	00000013          	nop
80008794:	00070313          	mv	t1,a4
80008798:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
8000879c:	00200293          	li	t0,2
800087a0:	fc521ee3          	bne	tp,t0,8000877c <test_10plus8_xor>
800087a4:	ff0103b7          	lui	t2,0xff010
800087a8:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
800087ac:	36731063          	bne	t1,t2,80008b0c <fail_xor>

800087b0 <xor_test_11>:
800087b0:	00b00193          	li	gp,11
800087b4:	00000213          	li	tp,0

800087b8 <test_11plus8_xor>:
800087b8:	00ff00b7          	lui	ra,0xff0
800087bc:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
800087c0:	0f0f1137          	lui	sp,0xf0f1
800087c4:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
800087c8:	0020c733          	xor	a4,ra,sp
800087cc:	00000013          	nop
800087d0:	00000013          	nop
800087d4:	00070313          	mv	t1,a4
800087d8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800087dc:	00200293          	li	t0,2
800087e0:	fc521ce3          	bne	tp,t0,800087b8 <test_11plus8_xor>
800087e4:	0ff013b7          	lui	t2,0xff01
800087e8:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
800087ec:	32731063          	bne	t1,t2,80008b0c <fail_xor>

800087f0 <xor_test_12>:
800087f0:	00c00193          	li	gp,12
800087f4:	00000213          	li	tp,0

800087f8 <test_12plus8_xor>:
800087f8:	ff0100b7          	lui	ra,0xff010
800087fc:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80008800:	0f0f1137          	lui	sp,0xf0f1
80008804:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80008808:	0020c733          	xor	a4,ra,sp
8000880c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008810:	00200293          	li	t0,2
80008814:	fe5212e3          	bne	tp,t0,800087f8 <test_12plus8_xor>
80008818:	f00ff3b7          	lui	t2,0xf00ff
8000881c:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
80008820:	2e771663          	bne	a4,t2,80008b0c <fail_xor>

80008824 <xor_test_13>:
80008824:	00d00193          	li	gp,13
80008828:	00000213          	li	tp,0

8000882c <test_13plus8_xor>:
8000882c:	0ff010b7          	lui	ra,0xff01
80008830:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80008834:	f0f0f137          	lui	sp,0xf0f0f
80008838:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
8000883c:	00000013          	nop
80008840:	0020c733          	xor	a4,ra,sp
80008844:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008848:	00200293          	li	t0,2
8000884c:	fe5210e3          	bne	tp,t0,8000882c <test_13plus8_xor>
80008850:	ff0103b7          	lui	t2,0xff010
80008854:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80008858:	2a771a63          	bne	a4,t2,80008b0c <fail_xor>

8000885c <xor_test_14>:
8000885c:	00e00193          	li	gp,14
80008860:	00000213          	li	tp,0

80008864 <test_14plus8_xor>:
80008864:	00ff00b7          	lui	ra,0xff0
80008868:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
8000886c:	0f0f1137          	lui	sp,0xf0f1
80008870:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80008874:	00000013          	nop
80008878:	00000013          	nop
8000887c:	0020c733          	xor	a4,ra,sp
80008880:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008884:	00200293          	li	t0,2
80008888:	fc521ee3          	bne	tp,t0,80008864 <test_14plus8_xor>
8000888c:	0ff013b7          	lui	t2,0xff01
80008890:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
80008894:	26771c63          	bne	a4,t2,80008b0c <fail_xor>

80008898 <xor_test_15>:
80008898:	00f00193          	li	gp,15
8000889c:	00000213          	li	tp,0

800088a0 <test_15plus8_xor>:
800088a0:	ff0100b7          	lui	ra,0xff010
800088a4:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
800088a8:	00000013          	nop
800088ac:	0f0f1137          	lui	sp,0xf0f1
800088b0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
800088b4:	0020c733          	xor	a4,ra,sp
800088b8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800088bc:	00200293          	li	t0,2
800088c0:	fe5210e3          	bne	tp,t0,800088a0 <test_15plus8_xor>
800088c4:	f00ff3b7          	lui	t2,0xf00ff
800088c8:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
800088cc:	24771063          	bne	a4,t2,80008b0c <fail_xor>

800088d0 <xor_test_16>:
800088d0:	01000193          	li	gp,16
800088d4:	00000213          	li	tp,0

800088d8 <test_16plus8_xor>:
800088d8:	0ff010b7          	lui	ra,0xff01
800088dc:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
800088e0:	00000013          	nop
800088e4:	f0f0f137          	lui	sp,0xf0f0f
800088e8:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
800088ec:	00000013          	nop
800088f0:	0020c733          	xor	a4,ra,sp
800088f4:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800088f8:	00200293          	li	t0,2
800088fc:	fc521ee3          	bne	tp,t0,800088d8 <test_16plus8_xor>
80008900:	ff0103b7          	lui	t2,0xff010
80008904:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80008908:	20771263          	bne	a4,t2,80008b0c <fail_xor>

8000890c <xor_test_17>:
8000890c:	01100193          	li	gp,17
80008910:	00000213          	li	tp,0

80008914 <test_17plus8_xor>:
80008914:	00ff00b7          	lui	ra,0xff0
80008918:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
8000891c:	00000013          	nop
80008920:	00000013          	nop
80008924:	0f0f1137          	lui	sp,0xf0f1
80008928:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
8000892c:	0020c733          	xor	a4,ra,sp
80008930:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008934:	00200293          	li	t0,2
80008938:	fc521ee3          	bne	tp,t0,80008914 <test_17plus8_xor>
8000893c:	0ff013b7          	lui	t2,0xff01
80008940:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
80008944:	1c771463          	bne	a4,t2,80008b0c <fail_xor>

80008948 <xor_test_18>:
80008948:	01200193          	li	gp,18
8000894c:	00000213          	li	tp,0

80008950 <test_18plus8_xor>:
80008950:	0f0f1137          	lui	sp,0xf0f1
80008954:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80008958:	ff0100b7          	lui	ra,0xff010
8000895c:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80008960:	0020c733          	xor	a4,ra,sp
80008964:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008968:	00200293          	li	t0,2
8000896c:	fe5212e3          	bne	tp,t0,80008950 <test_18plus8_xor>
80008970:	f00ff3b7          	lui	t2,0xf00ff
80008974:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
80008978:	18771a63          	bne	a4,t2,80008b0c <fail_xor>

8000897c <xor_test_19>:
8000897c:	01300193          	li	gp,19
80008980:	00000213          	li	tp,0

80008984 <test_19plus8_xor>:
80008984:	f0f0f137          	lui	sp,0xf0f0f
80008988:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
8000898c:	0ff010b7          	lui	ra,0xff01
80008990:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80008994:	00000013          	nop
80008998:	0020c733          	xor	a4,ra,sp
8000899c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800089a0:	00200293          	li	t0,2
800089a4:	fe5210e3          	bne	tp,t0,80008984 <test_19plus8_xor>
800089a8:	ff0103b7          	lui	t2,0xff010
800089ac:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
800089b0:	14771e63          	bne	a4,t2,80008b0c <fail_xor>

800089b4 <xor_test_20>:
800089b4:	01400193          	li	gp,20
800089b8:	00000213          	li	tp,0

800089bc <test_20plus8_xor>:
800089bc:	0f0f1137          	lui	sp,0xf0f1
800089c0:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
800089c4:	00ff00b7          	lui	ra,0xff0
800089c8:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
800089cc:	00000013          	nop
800089d0:	00000013          	nop
800089d4:	0020c733          	xor	a4,ra,sp
800089d8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
800089dc:	00200293          	li	t0,2
800089e0:	fc521ee3          	bne	tp,t0,800089bc <test_20plus8_xor>
800089e4:	0ff013b7          	lui	t2,0xff01
800089e8:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
800089ec:	12771063          	bne	a4,t2,80008b0c <fail_xor>

800089f0 <xor_test_21>:
800089f0:	01500193          	li	gp,21
800089f4:	00000213          	li	tp,0

800089f8 <test_21plus8_xor>:
800089f8:	0f0f1137          	lui	sp,0xf0f1
800089fc:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80008a00:	00000013          	nop
80008a04:	ff0100b7          	lui	ra,0xff010
80008a08:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80008a0c:	0020c733          	xor	a4,ra,sp
80008a10:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008a14:	00200293          	li	t0,2
80008a18:	fe5210e3          	bne	tp,t0,800089f8 <test_21plus8_xor>
80008a1c:	f00ff3b7          	lui	t2,0xf00ff
80008a20:	00f38393          	addi	t2,t2,15 # f00ff00f <__stack_top+0x700eb013>
80008a24:	0e771463          	bne	a4,t2,80008b0c <fail_xor>

80008a28 <xor_test_22>:
80008a28:	01600193          	li	gp,22
80008a2c:	00000213          	li	tp,0

80008a30 <test_22plus8_xor>:
80008a30:	f0f0f137          	lui	sp,0xf0f0f
80008a34:	0f010113          	addi	sp,sp,240 # f0f0f0f0 <__stack_top+0x70efb0f4>
80008a38:	00000013          	nop
80008a3c:	0ff010b7          	lui	ra,0xff01
80008a40:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80008a44:	00000013          	nop
80008a48:	0020c733          	xor	a4,ra,sp
80008a4c:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008a50:	00200293          	li	t0,2
80008a54:	fc521ee3          	bne	tp,t0,80008a30 <test_22plus8_xor>
80008a58:	ff0103b7          	lui	t2,0xff010
80008a5c:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80008a60:	0a771663          	bne	a4,t2,80008b0c <fail_xor>

80008a64 <xor_test_23>:
80008a64:	01700193          	li	gp,23
80008a68:	00000213          	li	tp,0

80008a6c <test_23plus8_xor>:
80008a6c:	0f0f1137          	lui	sp,0xf0f1
80008a70:	f0f10113          	addi	sp,sp,-241 # f0f0f0f <_size_rom+0xf0e81ff>
80008a74:	00000013          	nop
80008a78:	00000013          	nop
80008a7c:	00ff00b7          	lui	ra,0xff0
80008a80:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80008a84:	0020c733          	xor	a4,ra,sp
80008a88:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008a8c:	00200293          	li	t0,2
80008a90:	fc521ee3          	bne	tp,t0,80008a6c <test_23plus8_xor>
80008a94:	0ff013b7          	lui	t2,0xff01
80008a98:	ff038393          	addi	t2,t2,-16 # ff00ff0 <_size_rom+0xfef82e0>
80008a9c:	06771863          	bne	a4,t2,80008b0c <fail_xor>

80008aa0 <xor_test_24>:
80008aa0:	01800193          	li	gp,24
80008aa4:	ff0100b7          	lui	ra,0xff010
80008aa8:	f0008093          	addi	ra,ra,-256 # ff00ff00 <__stack_top+0x7effbf04>
80008aac:	00104133          	xor	sp,zero,ra
80008ab0:	ff0103b7          	lui	t2,0xff010
80008ab4:	f0038393          	addi	t2,t2,-256 # ff00ff00 <__stack_top+0x7effbf04>
80008ab8:	04711a63          	bne	sp,t2,80008b0c <fail_xor>

80008abc <xor_test_25>:
80008abc:	01900193          	li	gp,25
80008ac0:	00ff00b7          	lui	ra,0xff0
80008ac4:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80008ac8:	0000c133          	xor	sp,ra,zero
80008acc:	00ff03b7          	lui	t2,0xff0
80008ad0:	0ff38393          	addi	t2,t2,255 # ff00ff <_size_rom+0xfe73ef>
80008ad4:	02711c63          	bne	sp,t2,80008b0c <fail_xor>

80008ad8 <xor_test_26>:
80008ad8:	01a00193          	li	gp,26
80008adc:	000040b3          	xor	ra,zero,zero
80008ae0:	00000393          	li	t2,0
80008ae4:	02709463          	bne	ra,t2,80008b0c <fail_xor>

80008ae8 <xor_test_27>:
80008ae8:	01b00193          	li	gp,27
80008aec:	111110b7          	lui	ra,0x11111
80008af0:	11108093          	addi	ra,ra,273 # 11111111 <_size_rom+0x11108401>
80008af4:	22222137          	lui	sp,0x22222
80008af8:	22210113          	addi	sp,sp,546 # 22222222 <_size_rom+0x22219512>
80008afc:	0020c033          	xor	zero,ra,sp
80008b00:	00000393          	li	t2,0
80008b04:	00701463          	bne	zero,t2,80008b0c <fail_xor>
80008b08:	00c0006f          	j	80008b14 <pass_xor>

80008b0c <fail_xor>:
80008b0c:	04d00893          	li	a7,77
80008b10:	ffdff06f          	j	80008b0c <fail_xor>

80008b14 <pass_xor>:
80008b14:	04200893          	li	a7,66

80008b18 <xori_test_2>:
80008b18:	00200193          	li	gp,2
80008b1c:	00ff16b7          	lui	a3,0xff1
80008b20:	f0068693          	addi	a3,a3,-256 # ff0f00 <_size_rom+0xfe81f0>
80008b24:	f0f6c713          	xori	a4,a3,-241
80008b28:	ff00f3b7          	lui	t2,0xff00f
80008b2c:	00f38393          	addi	t2,t2,15 # ff00f00f <__stack_top+0x7effb013>
80008b30:	1c771663          	bne	a4,t2,80008cfc <fail_xori>

80008b34 <xori_test_3>:
80008b34:	00300193          	li	gp,3
80008b38:	0ff016b7          	lui	a3,0xff01
80008b3c:	ff068693          	addi	a3,a3,-16 # ff00ff0 <_size_rom+0xfef82e0>
80008b40:	0f06c713          	xori	a4,a3,240
80008b44:	0ff013b7          	lui	t2,0xff01
80008b48:	f0038393          	addi	t2,t2,-256 # ff00f00 <_size_rom+0xfef81f0>
80008b4c:	1a771863          	bne	a4,t2,80008cfc <fail_xori>

80008b50 <xori_test_4>:
80008b50:	00400193          	li	gp,4
80008b54:	00ff16b7          	lui	a3,0xff1
80008b58:	8ff68693          	addi	a3,a3,-1793 # ff08ff <_size_rom+0xfe7bef>
80008b5c:	70f6c713          	xori	a4,a3,1807
80008b60:	00ff13b7          	lui	t2,0xff1
80008b64:	ff038393          	addi	t2,t2,-16 # ff0ff0 <_size_rom+0xfe82e0>
80008b68:	18771a63          	bne	a4,t2,80008cfc <fail_xori>

80008b6c <xori_test_5>:
80008b6c:	00500193          	li	gp,5
80008b70:	f00ff6b7          	lui	a3,0xf00ff
80008b74:	00f68693          	addi	a3,a3,15 # f00ff00f <__stack_top+0x700eb013>
80008b78:	0f06c713          	xori	a4,a3,240
80008b7c:	f00ff3b7          	lui	t2,0xf00ff
80008b80:	0ff38393          	addi	t2,t2,255 # f00ff0ff <__stack_top+0x700eb103>
80008b84:	16771c63          	bne	a4,t2,80008cfc <fail_xori>

80008b88 <xori_test_6>:
80008b88:	00600193          	li	gp,6
80008b8c:	ff00f5b7          	lui	a1,0xff00f
80008b90:	70058593          	addi	a1,a1,1792 # ff00f700 <__stack_top+0x7effb704>
80008b94:	70f5c593          	xori	a1,a1,1807
80008b98:	ff00f3b7          	lui	t2,0xff00f
80008b9c:	00f38393          	addi	t2,t2,15 # ff00f00f <__stack_top+0x7effb013>
80008ba0:	14759e63          	bne	a1,t2,80008cfc <fail_xori>

80008ba4 <xori_test_7>:
80008ba4:	00700193          	li	gp,7
80008ba8:	00000213          	li	tp,0

80008bac <test_7plus8_xori>:
80008bac:	0ff010b7          	lui	ra,0xff01
80008bb0:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80008bb4:	0f00c713          	xori	a4,ra,240
80008bb8:	00070313          	mv	t1,a4
80008bbc:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008bc0:	00200293          	li	t0,2
80008bc4:	fe5214e3          	bne	tp,t0,80008bac <test_7plus8_xori>
80008bc8:	0ff013b7          	lui	t2,0xff01
80008bcc:	f0038393          	addi	t2,t2,-256 # ff00f00 <_size_rom+0xfef81f0>
80008bd0:	12731663          	bne	t1,t2,80008cfc <fail_xori>

80008bd4 <xori_test_8>:
80008bd4:	00800193          	li	gp,8
80008bd8:	00000213          	li	tp,0

80008bdc <test_8plus8_xori>:
80008bdc:	00ff10b7          	lui	ra,0xff1
80008be0:	8ff08093          	addi	ra,ra,-1793 # ff08ff <_size_rom+0xfe7bef>
80008be4:	70f0c713          	xori	a4,ra,1807
80008be8:	00000013          	nop
80008bec:	00070313          	mv	t1,a4
80008bf0:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008bf4:	00200293          	li	t0,2
80008bf8:	fe5212e3          	bne	tp,t0,80008bdc <test_8plus8_xori>
80008bfc:	00ff13b7          	lui	t2,0xff1
80008c00:	ff038393          	addi	t2,t2,-16 # ff0ff0 <_size_rom+0xfe82e0>
80008c04:	0e731c63          	bne	t1,t2,80008cfc <fail_xori>

80008c08 <xori_test_9>:
80008c08:	00900193          	li	gp,9
80008c0c:	00000213          	li	tp,0

80008c10 <test_9plus8_xori>:
80008c10:	f00ff0b7          	lui	ra,0xf00ff
80008c14:	00f08093          	addi	ra,ra,15 # f00ff00f <__stack_top+0x700eb013>
80008c18:	0f00c713          	xori	a4,ra,240
80008c1c:	00000013          	nop
80008c20:	00000013          	nop
80008c24:	00070313          	mv	t1,a4
80008c28:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008c2c:	00200293          	li	t0,2
80008c30:	fe5210e3          	bne	tp,t0,80008c10 <test_9plus8_xori>
80008c34:	f00ff3b7          	lui	t2,0xf00ff
80008c38:	0ff38393          	addi	t2,t2,255 # f00ff0ff <__stack_top+0x700eb103>
80008c3c:	0c731063          	bne	t1,t2,80008cfc <fail_xori>

80008c40 <xori_test_10>:
80008c40:	00a00193          	li	gp,10
80008c44:	00000213          	li	tp,0

80008c48 <test_10plus8_xori>:
80008c48:	0ff010b7          	lui	ra,0xff01
80008c4c:	ff008093          	addi	ra,ra,-16 # ff00ff0 <_size_rom+0xfef82e0>
80008c50:	0f00c713          	xori	a4,ra,240
80008c54:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008c58:	00200293          	li	t0,2
80008c5c:	fe5216e3          	bne	tp,t0,80008c48 <test_10plus8_xori>
80008c60:	0ff013b7          	lui	t2,0xff01
80008c64:	f0038393          	addi	t2,t2,-256 # ff00f00 <_size_rom+0xfef81f0>
80008c68:	08771a63          	bne	a4,t2,80008cfc <fail_xori>

80008c6c <xori_test_11>:
80008c6c:	00b00193          	li	gp,11
80008c70:	00000213          	li	tp,0

80008c74 <test_11plus8_xori>:
80008c74:	00ff10b7          	lui	ra,0xff1
80008c78:	fff08093          	addi	ra,ra,-1 # ff0fff <_size_rom+0xfe82ef>
80008c7c:	00000013          	nop
80008c80:	00f0c713          	xori	a4,ra,15
80008c84:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008c88:	00200293          	li	t0,2
80008c8c:	fe5214e3          	bne	tp,t0,80008c74 <test_11plus8_xori>
80008c90:	00ff13b7          	lui	t2,0xff1
80008c94:	ff038393          	addi	t2,t2,-16 # ff0ff0 <_size_rom+0xfe82e0>
80008c98:	06771263          	bne	a4,t2,80008cfc <fail_xori>

80008c9c <xori_test_12>:
80008c9c:	00c00193          	li	gp,12
80008ca0:	00000213          	li	tp,0

80008ca4 <test_12plus8_xori>:
80008ca4:	f00ff0b7          	lui	ra,0xf00ff
80008ca8:	00f08093          	addi	ra,ra,15 # f00ff00f <__stack_top+0x700eb013>
80008cac:	00000013          	nop
80008cb0:	00000013          	nop
80008cb4:	0f00c713          	xori	a4,ra,240
80008cb8:	00120213          	addi	tp,tp,1 # 1 <_size_rom-0x8d0f>
80008cbc:	00200293          	li	t0,2
80008cc0:	fe5212e3          	bne	tp,t0,80008ca4 <test_12plus8_xori>
80008cc4:	f00ff3b7          	lui	t2,0xf00ff
80008cc8:	0ff38393          	addi	t2,t2,255 # f00ff0ff <__stack_top+0x700eb103>
80008ccc:	02771863          	bne	a4,t2,80008cfc <fail_xori>

80008cd0 <xori_test_13>:
80008cd0:	00d00193          	li	gp,13
80008cd4:	0f004093          	xori	ra,zero,240
80008cd8:	0f000393          	li	t2,240
80008cdc:	02709063          	bne	ra,t2,80008cfc <fail_xori>

80008ce0 <xori_test_14>:
80008ce0:	00e00193          	li	gp,14
80008ce4:	00ff00b7          	lui	ra,0xff0
80008ce8:	0ff08093          	addi	ra,ra,255 # ff00ff <_size_rom+0xfe73ef>
80008cec:	70f0c013          	xori	zero,ra,1807
80008cf0:	00000393          	li	t2,0
80008cf4:	00701463          	bne	zero,t2,80008cfc <fail_xori>
80008cf8:	00c0006f          	j	80008d04 <pass_xori>

80008cfc <fail_xori>:
80008cfc:	04d00893          	li	a7,77
80008d00:	ffdff06f          	j	80008cfc <fail_xori>

80008d04 <pass_xori>:
80008d04:	04200893          	li	a7,66
80008d08:	05800893          	li	a7,88
80008d0c:	06400013          	li	zero,100

Disassembly of section .data:

80010000 <begin_signature_lb>:
80010000:	    	.insn	10, 0x0ff000ff
80010008:	 

80010001 <tdat2_lb>:
	...

80010002 <tdat3_lb>:
80010002:	                	.insn	2, 0x0ff0

80010003 <tdat4_lb>:
80010003:	0000000f          	fence	unknown,unknown
	...

80010010 <begin_signature_ldst>:
80010010:	deadbeef          	jal	t4,7ffeb5fa <_size_rom+0x7ffe28ea>
80010014:	deadbeef          	jal	t4,7ffeb5fe <_size_rom+0x7ffe28ee>
80010018:	deadbeef          	jal	t4,7ffeb602 <_size_rom+0x7ffe28f2>
8001001c:	deadbeef          	jal	t4,7ffeb606 <_size_rom+0x7ffe28f6>
80010020:	deadbeef          	jal	t4,7ffeb60a <_size_rom+0x7ffe28fa>
80010024:	deadbeef          	jal	t4,7ffeb60e <_size_rom+0x7ffe28fe>
80010028:	deadbeef          	jal	t4,7ffeb612 <_size_rom+0x7ffe2902>
8001002c:	deadbeef          	jal	t4,7ffeb616 <_size_rom+0x7ffe2906>
80010030:	deadbeef          	jal	t4,7ffeb61a <_size_rom+0x7ffe290a>
80010034:	deadbeef          	jal	t4,7ffeb61e <_size_rom+0x7ffe290e>
80010038:	deadbeef          	jal	t4,7ffeb622 <_size_rom+0x7ffe2912>
8001003c:	deadbeef          	jal	t4,7ffeb626 <_size_rom+0x7ffe2916>
80010040:	deadbeef          	jal	t4,7ffeb62a <_size_rom+0x7ffe291a>
80010044:	deadbeef          	jal	t4,7ffeb62e <_size_rom+0x7ffe291e>
80010048:	deadbeef          	jal	t4,7ffeb632 <_size_rom+0x7ffe2922>
8001004c:	deadbeef          	jal	t4,7ffeb636 <_size_rom+0x7ffe2926>
80010050:	deadbeef          	jal	t4,7ffeb63a <_size_rom+0x7ffe292a>
80010054:	deadbeef          	jal	t4,7ffeb63e <_size_rom+0x7ffe292e>
80010058:	deadbeef          	jal	t4,7ffeb642 <_size_rom+0x7ffe2932>
8001005c:	deadbeef          	jal	t4,7ffeb646 <_size_rom+0x7ffe2936>

80010060 <begin_signature_lh>:
80010060:	00ff    	.insn	10, 0xf00f0ff0ff0000ff
80010068:	 

80010062 <tdat2_lh>:
80010062:	ff00                	.insn	2, 0xff00

80010064 <tdat3_lh>:
80010064:	0ff0                	.insn	2, 0x0ff0

80010066 <tdat4_lh>:
80010066:	0000f00f          	.insn	4, 0xf00f
8001006a:	0000                	.insn	2, 0x
8001006c:	0000                	.insn	2, 0x
	...

80010070 <begin_signature_lw>:
80010070:	00ff 00ff   	.insn	10, 0x0ff0ff00ff0000ff00ff
80010078:	 

80010074 <tdat2_lw>:
80010074:	ff00                	.insn	2, 0xff00
80010076:	ff00                	.insn	2, 0xff00

80010078 <tdat3_lw>:
80010078:	0ff0                	.insn	2, 0x0ff0
8001007a:	0ff0                	.insn	2, 0x0ff0

8001007c <tdat4_lw>:
8001007c:	f00ff00f          	.insn	4, 0xf00ff00f

80010080 <begin_signature_sb>:
80010080:	          	jal	t6,8000e77e <_end_rom+0x5a6e>

80010081 <tdat2_sb>:
80010081:	          	jal	t6,8000e77f <_end_rom+0x5a6f>

80010082 <tdat3_sb>:
80010082:	          	jal	t6,8000e780 <_end_rom+0x5a70>

80010083 <tdat4_sb>:
80010083:	          	jal	t6,8000e781 <_end_rom+0x5a71>

80010084 <tdat5_sb>:
80010084:	          	jal	t6,8000e782 <_end_rom+0x5a72>

80010085 <tdat6_sb>:
80010085:	          	jal	t6,8000e783 <_end_rom+0x5a73>

80010086 <tdat7_sb>:
80010086:	          	jal	t6,8000e784 <_end_rom+0x5a74>

80010087 <tdat8_sb>:
80010087:	          	jal	t6,8010e095 <__stack_top+0xfa099>

80010088 <tdat9_sb>:
80010088:	          	jal	t6,8001e088 <__stack_top+0xa08c>

80010089 <tdat10_sb>:
80010089:	000000ef          	jal	80010089 <tdat10_sb>
8001008d:	0000                	.insn	2, 0x
	...

80010090 <begin_signature_sh>:
80010090:	          	jal	t4,8000b47e <_end_rom+0x276e>

80010092 <tdat2_sh>:
80010092:	          	jal	t4,8000b480 <_end_rom+0x2770>

80010094 <tdat3_sh>:
80010094:	          	jal	t4,8000b482 <_end_rom+0x2772>

80010096 <tdat4_sh>:
80010096:	          	jal	t4,8000b484 <_end_rom+0x2774>

80010098 <tdat5_sh>:
80010098:	          	jal	t4,8000b486 <_end_rom+0x2776>

8001009a <tdat6_sh>:
8001009a:	          	jal	t4,8000b488 <_end_rom+0x2778>

8001009c <tdat7_sh>:
8001009c:	          	jal	t4,8000b48a <_end_rom+0x277a>

8001009e <tdat8_sh>:
8001009e:	          	jal	t4,8000b48c <_end_rom+0x277c>

800100a0 <tdat9_sh>:
800100a0:	          	jal	t4,8000b48e <_end_rom+0x277e>

800100a2 <tdat10_sh>:
800100a2:	0000beef          	jal	t4,8001b0a2 <__stack_top+0x70a6>
	...

800100b0 <begin_signature_sw>:
800100b0:	deadbeef          	jal	t4,7ffeb69a <_size_rom+0x7ffe298a>

800100b4 <tdat2_sw>:
800100b4:	deadbeef          	jal	t4,7ffeb69e <_size_rom+0x7ffe298e>

800100b8 <tdat3_sw>:
800100b8:	deadbeef          	jal	t4,7ffeb6a2 <_size_rom+0x7ffe2992>

800100bc <tdat4_sw>:
800100bc:	deadbeef          	jal	t4,7ffeb6a6 <_size_rom+0x7ffe2996>

800100c0 <tdat5_sw>:
800100c0:	deadbeef          	jal	t4,7ffeb6aa <_size_rom+0x7ffe299a>

800100c4 <tdat6_sw>:
800100c4:	deadbeef          	jal	t4,7ffeb6ae <_size_rom+0x7ffe299e>

800100c8 <tdat7_sw>:
800100c8:	deadbeef          	jal	t4,7ffeb6b2 <_size_rom+0x7ffe29a2>

800100cc <tdat8_sw>:
800100cc:	deadbeef          	jal	t4,7ffeb6b6 <_size_rom+0x7ffe29a6>

800100d0 <tdat9_sw>:
800100d0:	deadbeef          	jal	t4,7ffeb6ba <_size_rom+0x7ffe29aa>

800100d4 <tdat10_sw>:
800100d4:	deadbeef          	jal	t4,7ffeb6be <_size_rom+0x7ffe29ae>
	...

Disassembly of section .riscv.attributes:

00000000 <.riscv.attributes>:
   0:	1941                	.insn	2, 0x1941
   2:	0000                	.insn	2, 0x
   4:	7200                	.insn	2, 0x7200
   6:	7369                	.insn	2, 0x7369
   8:	01007663          	bgeu	zero,a6,14 <_size_rom-0x8cfc>
   c:	0000000f          	fence	unknown,unknown
  10:	7205                	.insn	2, 0x7205
  12:	3376                	.insn	2, 0x3376
  14:	6932                	.insn	2, 0x6932
  16:	7032                	.insn	2, 0x7032
  18:	0031                	.insn	2, 0x0031
