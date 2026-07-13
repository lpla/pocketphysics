/* Reconstructed mnemonic source for inftrees.o. */
.syntax unified
.arch armv5te

.type dbase.2492, %object
.type dext.2493, %object
.type lbase.2490, %object
.type lext.2491, %object
.global inflate_table
.type inflate_table, %function
.global inflate_copyright
.type inflate_copyright, %object

.section .text,"ax",%progbits
.balign 4
.arm
inflate_table:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    sub sp, sp, #124
    ldr sl, [sp, #164]
    str r1, [sp, #8]
    mov r5, r2
    mov fp, r3
    mov r2, #0
.Lsec01_0000001c:
    add r3, sp, #56
    mov r1, #0
    strh r1, [r2, r3]
    add r2, r2, #2
    cmp r2, #32
    bne .Lsec01_0000001c
    mov r1, #0
    b .Lsec01_00000058
.Lsec01_0000003c:
    ldr r2, [sp, #8]
    ldrh r3, [r3, r2]
    add ip, sp, #120
    add r2, ip, r3, lsl #1
    ldrh r3, [r2, #-64]
    add r3, r3, #1
    strh r3, [r2, #-64]
.Lsec01_00000058:
    cmp r1, r5
    mov r3, r1, lsl #1
    add r1, r1, #1
    bne .Lsec01_0000003c
    ldr r1, [sp, #160]
    mov r2, #15
    ldr r6, [r1]
    str r2, [sp, #16]
.Lsec01_00000078:
    ldr ip, [sp, #16]
    add r2, sp, #56
    mov r3, ip, lsl #1
    ldrh r3, [r3, r2]
    cmp r3, #0
    bne .Lsec01_000000a0
    subs ip, ip, #1
    str ip, [sp, #16]
    beq .Lsec01_000000ac
    b .Lsec01_00000078
.Lsec01_000000a0:
    ldr r1, [sp, #16]
    cmp r1, #0
    bne .Lsec01_000000f0
.Lsec01_000000ac:
    ldr r3, [fp]
    mov r2, #1
    add r0, r3, #4
    mov r1, #64
    strb r2, [r3, #1]
    strb r1, [r3, #4]
    strb r1, [r3]
    strb r2, [r0, #1]
    add ip, r0, #4
    ldr sl, [sp, #160]
    str ip, [fp]
    mov lr, #0
    mov ip, #0
    strh ip, [r3, #2]
    str r2, [sl]
    strh ip, [r0, #2]
    b .Lsec01_00000580
.Lsec01_000000f0:
    mov r4, #1
.Lsec01_000000f4:
    mov r3, r4, lsl #1
    add r2, sp, #56
    ldrh r3, [r3, r2]
    cmp r3, #0
    bne .Lsec01_00000114
    add r4, r4, #1
    cmp r4, #16
    bne .Lsec01_000000f4
.Lsec01_00000114:
    mov r1, r2
    mov r2, #1
.Lsec01_0000011c:
    ldrh r3, [r1, #2]
    rsb r2, r3, r2, lsl #1
    add lr, sp, #56
    cmp r2, #0
    add ip, lr, #30
    add r1, r1, #2
    blt .Lsec01_00000574
    cmp r1, ip
    bne .Lsec01_0000011c
    cmp r2, #0
    ble .Lsec01_00000164
    ldr r1, [sp, #16]
    subs r3, r1, #1
    movne r3, #1
    cmp r0, #0
    orreq r3, r3, #1
    cmp r3, #0
    bne .Lsec01_00000574
.Lsec01_00000164:
    mov r2, #0
    strh r2, [sp, #90]
    mov ip, lr
    add r1, sp, #88
.Lsec01_00000174:
    ldrh r3, [r1, #2]
    ldrh r2, [ip, #2]!
    add r3, r3, r2
    strh r3, [r1, #4]
    add r1, r1, #2
    add r3, sp, #116
    cmp r1, r3
    bne .Lsec01_00000174
    mov ip, #0
    b .Lsec01_000001c8
.Lsec01_0000019c:
    ldr r1, [sp, #8]
    ldrh r3, [r3, r1]
    add r2, sp, #120
    cmp r3, #0
    add r1, r2, r3, lsl #1
    ldrneh r3, [r1, #-32]
    addne r2, r3, #1
    movne r3, r3, lsl #1
    strneh r2, [r1, #-32]
    strneh ip, [r3, sl]
    add ip, ip, #1
.Lsec01_000001c8:
    cmp ip, r5
    mov r3, ip, lsl #1
    bne .Lsec01_0000019c
    ldr r3, [sp, #16]
    cmp r3, r6
    movcs r3, r6
    cmp r4, r3
    movcs r7, r4
    movcc r7, r3
    cmp r0, #0
    beq .Lsec01_00000218
    cmp r0, #1
    beq .Lsec01_00000244
    ldr r3, [pc, #908]
    ldr ip, [pc, #908]
    mvn r1, #0
    str r3, [sp, #32]
    str ip, [sp, #36]
    str r1, [sp, #40]
    b .Lsec01_0000025c
.Lsec01_00000218:
    mov r3, #1
    mov r8, r3, lsl r7
    ldr r6, [fp]
    sub r2, r8, #1
    add r3, r3, #18
    str sl, [sp, #36]
    str r0, [sp, #12]
    str r2, [sp, #28]
    str sl, [sp, #32]
    str r3, [sp, #40]
    b .Lsec01_0000028c
.Lsec01_00000244:
    ldr ip, [pc, #844]
    ldr r1, [pc, #844]
    mov r2, #256
    str ip, [sp, #32]
    str r1, [sp, #36]
    str r2, [sp, #40]
.Lsec01_0000025c:
    mov r3, #1
    mov r8, r3, lsl r7
    cmp r0, r3
    movne r3, #0
    moveq r3, #1
    cmp r8, #1456
    cmpcs r0, #1
    str r3, [sp, #12]
    ldr r6, [fp]
    beq .Lsec01_0000057c
    sub ip, r8, #1
    str ip, [sp, #28]
.Lsec01_0000028c:
    mov r1, #0
    mov lr, r4
    mvn r2, #0
    mov r4, r7
    mov r9, r1
    str r1, [sp, #20]
    str sl, [sp, #48]
    str r2, [sp, #24]
    b .Lsec01_000002c4
.Lsec01_000002b0:
    ldr r3, [sp, #48]
    add r3, r3, #2
    str r3, [sp, #48]
    str r0, [sp, #24]
    mov lr, r5
.Lsec01_000002c4:
    ldr sl, [sp, #48]
    ldr ip, [sp, #40]
    ldrh r0, [sl]
    rsb r3, r9, lr
    cmp r0, ip
    and r3, r3, #255
    str r3, [sp, #44]
    movlt r5, #0
    blt .Lsec01_00000304
    ldrgt r1, [sp, #32]
    ldrgt r2, [sp, #36]
    movgt r3, r0, lsl #1
    ldrgth r0, [r1, r3]
    ldrgtb r5, [r2, r3]
    movle r0, #0
    movle r5, #96
.Lsec01_00000304:
    mov r2, #1
    rsb r3, r9, lr
    mov ip, r2, lsl r3
    mov r2, r2, lsl r4
    rsb r3, ip, #0
    str r2, [sp, #52]
    str r3, [sp, #4]
    rsb r1, ip, r2
.Lsec01_00000324:
    ldr sl, [sp, #20]
    add r3, r1, sl, lsr r9
    ldr r2, [sp, #4]
    add r1, r1, r2
    mov r3, r3, lsl #2
    add r2, ip, r1
    ldr sl, [sp, #44]
    cmp r2, #0
    add r2, r6, r3
    strb sl, [r2, #1]
    strb r5, [r6, r3]
    strh r0, [r2, #2]
    bne .Lsec01_00000324
    sub r2, lr, #1
    mov r3, #1
    mov r1, r3, lsl r2
    b .Lsec01_0000036c
.Lsec01_00000368:
    mov r1, r1, lsr #1
.Lsec01_0000036c:
    ldr ip, [sp, #20]
    tst ip, r1
    bne .Lsec01_00000368
    cmp r1, #0
    ldrne r2, [sp, #20]
    subne r3, r1, #1
    andne r3, r2, r3
    addne r3, r3, r1
    add sl, sp, #120
    strne r3, [sp, #20]
    add r3, sl, lr, lsl #1
    ldrh r3, [r3, #-64]
    sub r3, r3, #1
    mov r3, r3, lsl #16
    streq r1, [sp, #20]
    movs r2, r3, lsr #16
    movne r5, lr
    bne .Lsec01_000003d4
    ldr ip, [sp, #16]
    cmp lr, ip
    beq .Lsec01_00000530
    ldr r1, [sp, #48]
    ldrh r3, [r1, #2]
    ldr sl, [sp, #8]
    mov r3, r3, lsl #1
    ldrh r5, [r3, sl]
.Lsec01_000003d4:
    add ip, sp, #120
    add r3, ip, lr, lsl #1
    cmp r5, r7
    strh r2, [r3, #-64]
    ldrls r0, [sp, #24]
    bls .Lsec01_000002b0
    ldr r1, [sp, #20]
    ldr r2, [sp, #28]
    ldr r3, [sp, #24]
    and r0, r1, r2
    cmp r0, r3
    beq .Lsec01_000002b0
    cmp r9, #0
    moveq r9, r7
    rsb r4, r9, r5
    mov r3, #1
    mov r1, r3, lsl r4
    add r2, r4, r9
    add r3, sp, #56
    add ip, r3, r2, lsl #1
    b .Lsec01_00000440
.Lsec01_00000428:
    ldrh r3, [ip], #2
    rsb r3, r3, r1
    cmp r3, #0
    ble .Lsec01_00000450
    add r4, r4, #1
    mov r1, r3, lsl #1
.Lsec01_00000440:
    ldr sl, [sp, #16]
    cmp r2, sl
    add r2, r2, #1
    bcc .Lsec01_00000428
.Lsec01_00000450:
    mov r3, #1
    add r8, r8, r3, lsl r4
    ldr r3, [sp, #12]
    cmp r8, #1456
    movcc r3, #0
    andcs r3, r3, #1
    cmp r3, #0
    bne .Lsec01_0000057c
    ldr r3, [fp]
    mov r1, r0, lsl #2
    strb r4, [r3, r1]
    ldr r3, [fp]
    add r3, r3, r1
    strb r7, [r3, #1]
    ldr ip, [sp, #52]
    ldr r2, [fp]
    add r6, r6, ip, lsl #2
    rsb r3, r2, r6
    mov r3, r3, asr #2
    add r2, r2, r1
    strh r3, [r2, #2]
    b .Lsec01_000002b0
.Lsec01_000004a8:
    cmp r9, #0
    beq .Lsec01_000004d8
    ldr r1, [sp, #20]
    ldr r2, [sp, #28]
    ldr sl, [sp, #24]
    and r3, r1, r2
    cmp r3, sl
    andne ip, r7, #255
    ldrne r6, [fp]
    strne ip, [sp, #44]
    movne r0, r7
    movne r9, #0
.Lsec01_000004d8:
    ldr r1, [sp, #20]
    mov r2, r1, lsr r9
    mov r3, #1
    sub r1, r0, #1
    mov ip, r3, lsl r1
    mov r2, r2, lsl #2
    add r3, r3, #63
    strb r3, [r6, r2]
    add r1, r6, r2
    ldr r2, [sp, #44]
    mov r3, #0
    strb r2, [r1, #1]
    strh r3, [r1, #2]
    b .Lsec01_00000514
.Lsec01_00000510:
    mov ip, ip, lsr #1
.Lsec01_00000514:
    ldr sl, [sp, #20]
    tst sl, ip
    bne .Lsec01_00000510
    cmp ip, #0
    bne .Lsec01_00000538
    str ip, [sp, #20]
    b .Lsec01_00000558
.Lsec01_00000530:
    ldr r0, [sp, #16]
    b .Lsec01_0000054c
.Lsec01_00000538:
    ldr r1, [sp, #20]
    sub r3, ip, #1
    and r3, r1, r3
    add r3, r3, ip
    str r3, [sp, #20]
.Lsec01_0000054c:
    ldr r2, [sp, #20]
    cmp r2, #0
    bne .Lsec01_000004a8
.Lsec01_00000558:
    ldr r3, [fp]
    add r3, r3, r8, lsl #2
    str r3, [fp]
    ldr lr, [sp, #20]
    ldr r3, [sp, #160]
    str r7, [r3]
    b .Lsec01_00000580
.Lsec01_00000574:
    mvn lr, #0
    b .Lsec01_00000580
.Lsec01_0000057c:
    mov lr, #1
.Lsec01_00000580:
    mov r0, lr
    add sp, sp, #124
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_00000070
    .long .Lsec05_00000030
    .long .rodata - 0x114
    .long .rodata - 0x152

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata,"a",%progbits
.balign 4
inflate_copyright:
    .long 0x666e6920
    .long 0x6574616c
    .long 0x322e3120
    .long 0x4320332e
    .long 0x7279706f
    .long 0x74686769
    .long 0x39393120
    .long 0x30322d35
    .long 0x4d203530
    .long 0x206b7261
    .long 0x656c6441
    .long 0x00002072
dext.2493:
.Lsec05_00000030:
    .long 0x00100010
    .long 0x00100010
    .long 0x00110011
    .long 0x00120012
    .long 0x00130013
    .long 0x00140014
    .long 0x00150015
    .long 0x00160016
    .long 0x00170017
    .long 0x00180018
    .long 0x00190019
    .long 0x001a001a
    .long 0x001b001b
    .long 0x001c001c
    .long 0x001d001d
    .long 0x00400040
dbase.2492:
.Lsec05_00000070:
    .long 0x00020001
    .long 0x00040003
    .long 0x00070005
    .long 0x000d0009
    .long 0x00190011
    .long 0x00310021
    .long 0x00610041
    .long 0x00c10081
    .long 0x01810101
    .long 0x03010201
    .long 0x06010401
    .long 0x0c010801
    .long 0x18011001
    .long 0x30012001
    .long 0x60014001
    .long 0x00000000
lext.2491:
    .long 0x00100010
    .long 0x00100010
    .long 0x00100010
    .long 0x00100010
    .long 0x00110011
    .long 0x00110011
    .long 0x00120012
    .long 0x00120012
    .long 0x00130013
    .long 0x00130013
    .long 0x00140014
    .long 0x00140014
    .long 0x00150015
    .long 0x00150015
    .long 0x00c90010
    .short 0x00c4
lbase.2490:
    .short 0x0003
    .long 0x00050004
    .long 0x00070006
    .long 0x00090008
    .long 0x000b000a
    .long 0x000f000d
    .long 0x00130011
    .long 0x001b0017
    .long 0x0023001f
    .long 0x0033002b
    .long 0x0043003b
    .long 0x00630053
    .long 0x00830073
    .long 0x00c300a3
    .long 0x010200e3
    .long 0x00000000

.size dbase.2492, 64
.size dext.2493, 64
.size lbase.2490, 62
.size lext.2491, 62
.size inflate_table, 1440
.size inflate_copyright, 47

.section .note.GNU-stack,"",%progbits
