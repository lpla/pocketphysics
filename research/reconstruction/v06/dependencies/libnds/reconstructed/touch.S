/* Reconstructed mnemonic source for touch.o. */
.syntax unified
.arch armv4t

.type range, %object
.global UpdateRange
.type UpdateRange, %function
.global CheckStylus
.type CheckStylus, %function
.global readTouchValue
.type readTouchValue, %function
.global touchReadXY
.type touchReadXY, %function
.global touchRead
.type touchRead, %function
.global touchReadTemperature
.type touchReadTemperature, %function

.section .text,"ax",%progbits
.balign 4
.thumb
.thumb_func
UpdateRange:
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r0, r1, #0
    adds r1, r2, #0
    adds r2, r3, #0
    cmp r3, #0
    beq.n .Lsec01_00000036
    cmp r1, #0
    beq.n .Lsec01_00000044
    ldr r3, [pc, #100]
    ldr r2, [pc, #100]
    movs r1, #0
    strb r1, [r3, #0]
    ldrb r3, [r2, #0]
    adds r3, #1
    lsls r3, r3, #24
    lsrs r3, r3, #24
    strb r3, [r2, #0]
    cmp r3, #3
    bls.n .Lsec01_0000003e
    strb r1, [r2, #0]
    ldrb r3, [r5, #0]
    cmp r3, #34
    bhi.n .Lsec01_0000003e
    adds r3, #1
    strb r3, [r5, #0]
    b.n .Lsec01_0000003e
.Lsec01_00000036:
    ldr r3, [pc, #68]
    strb r2, [r3, #0]
    ldr r3, [pc, #60]
    strb r2, [r3, #0]
.Lsec01_0000003e:
    pop {r4, r5, r6}
    pop {r0}
    bx r0
.Lsec01_00000044:
    ldr r6, [pc, #52]
    strb r1, [r6, #0]
    ldrb r4, [r5, #0]
    lsrs r3, r4, #1
    cmp r0, r3
    bge.n .Lsec01_00000070
    ldr r2, [pc, #36]
    ldrb r3, [r2, #0]
    adds r3, #1
    lsls r3, r3, #24
    lsrs r3, r3, #24
    strb r3, [r2, #0]
    cmp r3, #3
    bls.n .Lsec01_0000003e
    strb r1, [r2, #0]
    cmp r4, #20
    bls.n .Lsec01_0000003e
    subs r3, r4, #1
    strb r3, [r5, #0]
    movs r3, #3
    strb r3, [r6, #0]
    b.n .Lsec01_0000003e
.Lsec01_00000070:
    ldr r3, [pc, #4]
    strb r1, [r3, #0]
    b.n .Lsec01_0000003e
    lsls r0, r0, #0
    .long .Lsec04_00000003
    .long .Lsec04_00000002
.thumb
.thumb_func
CheckStylus:
    push {r4, r5, lr}
    ldr r2, [pc, #276]
    ldrh r3, [r2, #0]
    sub sp, #4
    lsls r1, r3, #24
    bpl.n .Lsec01_0000009c
    adds r5, r2, #0
    movs r4, #128
.Lsec01_00000090:
    movs r0, #1
.Lsec01_00000092:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_00000090
.Lsec01_0000009c:
    ldr r1, [pc, #248]
    ldr r3, [pc, #252]
    strh r3, [r1, #0]
    ldr r3, [pc, #252]
    movs r2, #132
    strh r2, [r3, #0]
    ldrh r3, [r1, #0]
    lsls r2, r3, #24
    bpl.n .Lsec01_000000be
    adds r5, r1, #0
    movs r4, #128
.Lsec01_000000b2:
    movs r0, #1
.Lsec01_000000b4:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_000000b2
.Lsec01_000000be:
    ldr r2, [pc, #224]
    movs r3, #0
    strh r3, [r2, #0]
    subs r2, #2
    ldrh r3, [r2, #0]
    lsls r1, r3, #24
    bpl.n .Lsec01_000000dc
    adds r5, r2, #0
    movs r4, #128
.Lsec01_000000d0:
    movs r0, #1
.Lsec01_000000d2:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_000000d0
.Lsec01_000000dc:
    ldr r1, [pc, #184]
    ldr r3, [pc, #196]
    strh r3, [r1, #0]
    ldr r3, [pc, #188]
    movs r2, #0
    strh r2, [r3, #0]
    ldrh r3, [r1, #0]
    lsls r2, r3, #24
    bpl.n .Lsec01_000000fe
    adds r5, r1, #0
    movs r4, #128
.Lsec01_000000f2:
    movs r0, #1
.Lsec01_000000f4:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_000000f2
.Lsec01_000000fe:
    ldr r3, [pc, #168]
    ldrb r3, [r3, #0]
    cmp r3, #1
    beq.n .Lsec01_0000011a
    ldr r3, [pc, #164]
    ldrh r3, [r3, #0]
    movs r2, #1
    lsrs r3, r3, #6
    adds r0, r2, #0
    bics r0, r3
.Lsec01_00000112:
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
.Lsec01_0000011a:
    ldr r3, [pc, #144]
    ldrh r3, [r3, #0]
    lsls r1, r3, #25
    bpl.n .Lsec01_00000190
    ldr r1, [pc, #116]
    ldr r3, [pc, #116]
    strh r3, [r1, #0]
    ldr r3, [pc, #116]
    movs r2, #132
    strh r2, [r3, #0]
    ldrh r3, [r1, #0]
    lsls r2, r3, #24
    bpl.n .Lsec01_00000144
    adds r5, r1, #0
    movs r4, #128
.Lsec01_00000138:
    movs r0, #1
.Lsec01_0000013a:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_00000138
.Lsec01_00000144:
    ldr r2, [pc, #88]
    movs r3, #0
    strh r3, [r2, #0]
    subs r2, #2
    ldrh r3, [r2, #0]
    lsls r1, r3, #24
    bpl.n .Lsec01_00000162
    adds r5, r2, #0
    movs r4, #128
.Lsec01_00000156:
    movs r0, #1
.Lsec01_00000158:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_00000156
.Lsec01_00000162:
    ldr r1, [pc, #52]
    ldr r3, [pc, #60]
    strh r3, [r1, #0]
    ldr r3, [pc, #52]
    movs r2, #0
    strh r2, [r3, #0]
    ldrh r3, [r1, #0]
    lsls r2, r3, #24
    bpl.n .Lsec01_00000184
    adds r5, r1, #0
    movs r4, #128
.Lsec01_00000178:
    movs r0, #1
.Lsec01_0000017a:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_00000178
.Lsec01_00000184:
    ldr r3, [pc, #36]
    ldrh r3, [r3, #0]
    lsls r1, r3, #25
    bmi.n .Lsec01_00000194
    movs r0, #2
    b.n .Lsec01_00000112
.Lsec01_00000190:
    movs r0, #1
    b.n .Lsec01_00000112
.Lsec01_00000194:
    movs r0, #0
    b.n .Lsec01_00000112
    .long 0x040001c0
    .long 0xffff8a01
    .long 0x040001c2
    .long 0xffff8201
    .long .Lsec04_00000001
    .long 0x04000136
.thumb
.thumb_func
readTouchValue:
    push {r4, r5, r6, r7, lr}
    mov r7, fp
    mov r6, sl
    mov r5, r9
    mov r4, r8
    push {r4, r5, r6, r7}
    movs r3, #1
    sub sp, #28
    str r1, [sp, #0]
    mov fp, r2
    strb r3, [r2, #0]
    ldr r2, [pc, #508]
    ldrh r3, [r2, #0]
    adds r6, r0, #0
    lsls r1, r3, #24
    bpl.n .Lsec01_000001e0
    adds r5, r2, #0
    movs r4, #128
.Lsec01_000001d4:
    movs r0, #1
.Lsec01_000001d6:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_000001d4
.Lsec01_000001e0:
    ldr r2, [pc, #480]
    ldr r3, [pc, #484]
    strh r3, [r2, #0]
    lsls r3, r6, #16
    lsrs r3, r3, #16
    str r3, [sp, #4]
    mov r6, sp
    ldr r3, [pc, #476]
    ldrh r6, [r6, #4]
    strh r6, [r3, #0]
    ldrh r3, [r2, #0]
    lsls r1, r3, #24
    bpl.n .Lsec01_0000020a
    adds r5, r2, #0
    movs r4, #128
.Lsec01_000001fe:
    movs r0, #1
.Lsec01_00000200:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_000001fe
.Lsec01_0000020a:
    ldr r3, [pc, #448]
    movs r6, #22
    movs r2, #0
    mov r7, sp
    add r6, sp
    mov r9, r2
    adds r7, #14
    mov r8, r3
    mov sl, r6
.Lsec01_0000021c:
    movs r3, #0
    mov r1, r8
    strh r3, [r1, #0]
    ldr r2, [pc, #416]
    ldrh r3, [r2, #0]
    lsls r6, r3, #24
    bpl.n .Lsec01_0000023a
    adds r5, r2, #0
    movs r4, #128
.Lsec01_0000022e:
    movs r0, #1
.Lsec01_00000230:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_0000022e
.Lsec01_0000023a:
    mov r1, r8
    ldrh r3, [r1, #0]
    mov r2, sp
    adds r6, r3, #0
    ldrh r3, [r2, #4]
    mov r2, r8
    strh r3, [r2, #0]
    ldr r2, [pc, #376]
    ldrh r3, [r2, #0]
    lsls r1, r3, #24
    bpl.n .Lsec01_00000260
    adds r5, r2, #0
    movs r4, #128
.Lsec01_00000254:
    movs r0, #1
.Lsec01_00000256:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_00000254
.Lsec01_00000260:
    ldr r0, [pc, #360]
    ldrh r3, [r0, #0]
    lsls r2, r6, #24
    movs r1, #255
    ands r3, r1
    asrs r2, r2, #16
    orrs r2, r3
    lsls r2, r2, #17
    movs r1, #1
    lsrs r2, r2, #20
    mov r3, sl
    movs r6, #2
    add r9, r1
    strh r2, [r3, #0]
    negs r6, r6
    mov r2, r9
    add sl, r6
    cmp r2, #5
    bne.n .Lsec01_0000021c
    ldr r2, [pc, #316]
    ldr r3, [pc, #324]
    strh r3, [r2, #0]
    movs r3, #0
    strh r3, [r0, #0]
    ldrh r3, [r2, #0]
    lsls r6, r3, #24
    bpl.n .Lsec01_000002a6
    adds r5, r2, #0
    movs r4, #128
.Lsec01_0000029a:
    movs r0, #1
.Lsec01_0000029c:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_0000029a
.Lsec01_000002a6:
    ldrh r3, [r7, #0]
    lsls r3, r3, #16
    asrs r5, r3, #16
    mov r9, r3
    adds r1, r5, #0
    movs r0, #0
    movs r2, #1
    movs r4, #1
    b.n .Lsec01_000002c8
.Lsec01_000002b8:
    cmp r0, r3
    bge.n .Lsec01_000002be
    adds r0, r3, #0
.Lsec01_000002be:
    adds r3, r2, #1
    lsls r3, r3, #24
    lsrs r2, r3, #24
    cmp r2, #4
    bhi.n .Lsec01_000002d4
.Lsec01_000002c8:
    lsls r3, r2, #1
    ldrsh r3, [r3, r7]
    subs r3, r1, r3
    bpl.n .Lsec01_000002b8
    negs r3, r3
    b.n .Lsec01_000002b8
.Lsec01_000002d4:
    cmp r4, #3
    bhi.n .Lsec01_000002ea
    lsls r3, r4, #1
    ldrsh r1, [r3, r7]
    adds r3, r4, #1
    lsls r3, r3, #24
    lsrs r4, r3, #24
    cmp r4, #4
    bhi.n .Lsec01_000002d4
    adds r2, r4, #0
    b.n .Lsec01_000002c8
.Lsec01_000002ea:
    movs r2, #0
    ldr r3, [pc, #228]
    ldr r1, [sp, #0]
    mov r8, r2
    movs r2, #1
    mov sl, r2
    mov ip, r3
    strh r0, [r1, #0]
    b.n .Lsec01_00000306
.Lsec01_000002fc:
    adds r3, r2, #1
    lsls r3, r3, #24
    lsrs r2, r3, #24
.Lsec01_00000302:
    cmp r2, #3
    bhi.n .Lsec01_0000035e
.Lsec01_00000306:
    lsls r3, r2, #1
    ldrsh r0, [r3, r7]
    mov r3, ip
    ldrb r4, [r3, #0]
    subs r3, r5, r0
    bmi.n .Lsec01_00000380
.Lsec01_00000312:
    cmp r3, r4
    bgt.n .Lsec01_000002fc
    adds r3, r2, #1
    lsls r3, r3, #24
    lsrs r6, r3, #24
    cmp r6, #4
    bhi.n .Lsec01_0000038c
    lsls r3, r6, #1
    ldrsh r2, [r3, r7]
    subs r3, r5, r2
    bmi.n .Lsec01_00000384
.Lsec01_00000328:
    cmp r4, r3
    bge.n .Lsec01_00000344
    adds r1, r6, #0
.Lsec01_0000032e:
    adds r3, r1, #1
    lsls r3, r3, #24
    lsrs r1, r3, #24
    cmp r1, #5
    beq.n .Lsec01_0000038c
    lsls r2, r1, #1
    ldrsh r2, [r2, r7]
    subs r3, r5, r2
    bmi.n .Lsec01_00000388
.Lsec01_00000340:
    cmp r4, r3
    blt.n .Lsec01_0000032e
.Lsec01_00000344:
    lsls r3, r5, #1
    adds r3, r3, r2
    adds r3, r0, r3
    movs r2, #7
    asrs r3, r3, #2
    bics r3, r2
    mov r8, r3
    mov r1, fp
    movs r3, #0
    adds r2, r6, #0
    strb r3, [r1, #0]
    cmp r2, #3
    bls.n .Lsec01_00000306
.Lsec01_0000035e:
    mov r2, sl
.Lsec01_00000360:
    cmp r2, #2
    bhi.n .Lsec01_00000390
    lsls r3, r2, #1
    ldrsh r5, [r3, r7]
    adds r3, r2, #1
    lsls r3, r3, #24
    lsrs r2, r3, #24
    cmp r2, #3
    bhi.n .Lsec01_00000360
    lsls r3, r2, #1
    ldrsh r0, [r3, r7]
    mov r3, ip
    mov sl, r2
    ldrb r4, [r3, #0]
    subs r3, r5, r0
    bpl.n .Lsec01_00000312
.Lsec01_00000380:
    negs r3, r3
    b.n .Lsec01_00000312
.Lsec01_00000384:
    negs r3, r3
    b.n .Lsec01_00000328
.Lsec01_00000388:
    negs r3, r3
    b.n .Lsec01_00000340
.Lsec01_0000038c:
    adds r2, r6, #0
    b.n .Lsec01_00000302
.Lsec01_00000390:
    mov r2, fp
    ldrb r3, [r2, #0]
    cmp r3, #1
    bne.n .Lsec01_000003aa
    movs r1, #8
    ldrsh r2, [r7, r1]
    mov r6, r9
    asrs r3, r6, #16
    adds r3, r3, r2
    asrs r3, r3, #1
    movs r2, #7
    bics r3, r2
    mov r8, r3
.Lsec01_000003aa:
    ldr r3, [pc, #44]
    mov r0, r8
    ands r0, r3
    add sp, #28
    pop {r2, r3, r4, r5}
    mov r8, r2
    mov r9, r3
    mov sl, r4
    mov fp, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
    lsls r0, r0, #0
    .long 0x040001c0
    .long 0xffff8a01
    .long 0x040001c2
    .long 0xffff8201
    .long .Lsec03_00000000
    .long 0x00000fff
.thumb
.thumb_func
touchReadXY:
    push {r4, r5, r6, r7, lr}
    mov r7, fp
    mov r6, sl
    mov r5, r9
    mov r4, r8
    push {r4, r5, r6, r7}
    ldr r1, [pc, #700]
    ldrb r3, [r1, #0]
    sub sp, #36
    str r0, [sp, #4]
    str r1, [sp, #0]
    cmp r3, #0
    bne.n .Lsec01_0000049e
    ldr r4, [pc, #692]
    movs r3, #98
    ldrb r3, [r4, r3]
    str r3, [sp, #8]
    movs r3, #92
    ldrb r3, [r4, r3]
    mov r9, r3
    movs r3, #94
    ldrb r2, [r4, r3]
    movs r3, #95
    ldrb r3, [r4, r3]
    lsls r3, r3, #8
    orrs r3, r2
    mov sl, r3
    movs r3, #88
    ldrb r2, [r4, r3]
    movs r3, #89
    ldrb r5, [r4, r3]
    ldr r1, [sp, #8]
    lsls r5, r5, #8
    orrs r5, r2
    mov r2, r9
    subs r0, r1, r2
    mov r3, sl
    subs r1, r3, r5
    lsls r0, r0, #19
.Lsec01_0000042a:
    bl __aeabi_idiv
    ldr r3, [pc, #640]
    str r0, [r3, #0]
    movs r3, #99
    ldrb r7, [r4, r3]
    movs r3, #93
    ldrb r3, [r4, r3]
    mov r8, r3
    movs r3, #96
    ldrb r2, [r4, r3]
    movs r3, #97
    ldrb r6, [r4, r3]
    movs r3, #90
    lsls r6, r6, #8
    orrs r6, r2
    ldrb r2, [r4, r3]
    movs r3, #91
    ldrb r4, [r4, r3]
    mov r1, r8
    lsls r4, r4, #8
    orrs r4, r2
    mov fp, r0
    subs r0, r7, r1
    lsls r0, r0, #19
    subs r1, r6, r4
.Lsec01_0000045e:
    bl __aeabi_idiv
    add r5, sl
    mov r2, fp
    muls r2, r5
    ldr r3, [pc, #584]
    str r0, [r3, #0]
    ldr r3, [sp, #8]
    add r9, r3
    mov r3, r9
    lsls r3, r3, #19
    subs r2, r2, r3
    lsrs r3, r2, #31
    adds r4, r4, r6
    adds r3, r3, r2
    adds r2, r4, #0
    muls r2, r0
    ldr r1, [pc, #564]
    asrs r3, r3, #1
    add r8, r7
    str r3, [r1, #0]
    mov r3, r8
    lsls r3, r3, #19
    subs r2, r2, r3
    lsrs r3, r2, #31
    ldr r1, [pc, #552]
    adds r3, r3, r2
    asrs r3, r3, #1
    str r3, [r1, #0]
    ldr r1, [sp, #0]
    movs r3, #1
    strb r3, [r1, #0]
.Lsec01_0000049e:
    ldr r2, [pc, #544]
    ldrh r3, [r2, #0]
    str r3, [sp, #12]
    movs r3, #0
    strh r3, [r2, #0]
.Lsec01_000004a8:
    bl CheckStylus
    mov fp, r0
    cmp r0, #0
    bne.n .Lsec01_00000512
    ldr r5, [pc, #528]
    movs r4, #0
    movs r3, #0
    strb r3, [r5, #0]
    str r4, [sp, #16]
    movs r3, #3
    str r4, [sp, #20]
    mov sl, r3
    movs r6, #0
    mov r8, r4
    mov r9, r4
.Lsec01_000004c8:
    mov r2, sp
    movs r3, #28
    ldrsh r1, [r2, r3]
    ldr r0, [pc, #504]
    ldrb r3, [r5, #0]
    mov r2, sl
.Lsec01_000004d4:
    bl UpdateRange
    ldr r1, [sp, #4]
    ldr r2, [sp, #12]
    ldr r3, [pc, #480]
    strh r2, [r3, #0]
    adds r2, r1, #0
    strh r6, [r1, #6]
    strh r4, [r1, #4]
    mov r1, r8
    mov r3, r9
    strh r1, [r2, #2]
    mov r1, sp
    strh r3, [r2, #0]
    ldrh r2, [r1, #16]
    ldr r1, [sp, #4]
    mov r3, sp
    strh r2, [r1, #10]
    ldrh r1, [r3, #20]
    ldr r3, [sp, #4]
    add sp, #36
    adds r0, r3, #0
    strh r1, [r3, #8]
    pop {r2, r3, r4, r5}
    mov r8, r2
    mov r9, r3
    mov sl, r4
    mov fp, r5
    pop {r4, r5, r6, r7}
    pop {r1}
    bx r1
.Lsec01_00000512:
    mov r4, sp
    adds r4, #31
    add r1, sp, #28
    adds r2, r4, #0
    movs r0, #181
.Lsec01_0000051c:
    bl readTouchValue
    lsls r0, r0, #16
    lsrs r0, r0, #16
    str r0, [sp, #20]
    add r1, sp, #28
    adds r2, r4, #0
    movs r0, #197
.Lsec01_0000052c:
    bl readTouchValue
    lsls r0, r0, #16
    lsrs r0, r0, #16
    mov r1, sp
    str r0, [sp, #16]
    adds r2, r4, #0
    movs r0, #209
    adds r1, #26
.Lsec01_0000053e:
    bl readTouchValue
    ldrb r3, [r4, #0]
    lsls r0, r0, #16
    lsrs r0, r0, #16
    mov r9, r0
    movs r2, #0
    cmp r3, #1
    bne.n .Lsec01_00000552
    b.n .Lsec01_00000688
.Lsec01_00000552:
    mov sl, r2
    movs r0, #145
    add r1, sp, #24
    adds r2, r4, #0
.Lsec01_0000055a:
    bl readTouchValue
    ldrb r3, [r4, #0]
    lsls r0, r0, #16
    lsrs r0, r0, #16
    mov r8, r0
    cmp r3, #1
    bne.n .Lsec01_0000056c
    b.n .Lsec01_0000067c
.Lsec01_0000056c:
    ldr r2, [pc, #348]
    ldr r3, [pc, #352]
    ldr r7, [pc, #352]
    strh r2, [r3, #0]
    movs r6, #0
.Lsec01_00000576:
    movs r3, #0
    strh r3, [r7, #0]
    ldr r2, [pc, #340]
    ldrh r3, [r2, #0]
    lsls r1, r3, #24
    bpl.n .Lsec01_00000592
    adds r5, r2, #0
    movs r4, #128
.Lsec01_00000586:
    movs r0, #1
.Lsec01_00000588:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_00000586
.Lsec01_00000592:
    adds r3, r6, #1
    lsls r3, r3, #24
    lsrs r6, r3, #24
    cmp r6, #12
    bne.n .Lsec01_00000576
    ldr r1, [pc, #304]
    ldr r3, [pc, #312]
    strh r3, [r1, #0]
    ldr r3, [pc, #304]
    movs r2, #0
    strh r2, [r3, #0]
    ldrh r3, [r1, #0]
    lsls r2, r3, #24
    bpl.n .Lsec01_000005be
    adds r5, r1, #0
    movs r4, #128
.Lsec01_000005b2:
    movs r0, #1
.Lsec01_000005b4:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_000005b2
.Lsec01_000005be:
    mov r3, fp
    cmp r3, #2
    beq.n .Lsec01_00000676
.Lsec01_000005c4:
    bl CheckStylus
    cmp r0, #1
    beq.n .Lsec01_0000065e
    cmp r0, #1
    bcc.n .Lsec01_00000656
    cmp r0, #2
    beq.n .Lsec01_0000069a
    ldr r5, [pc, #236]
.Lsec01_000005d6:
    ldr r3, [pc, #216]
    mov r1, r9
    ldr r2, [r3, #0]
    lsls r3, r1, #16
    asrs r3, r3, #16
    adds r1, r2, #0
    muls r1, r3
    ldr r3, [pc, #208]
    ldr r3, [r3, #0]
    subs r1, r1, r3
    lsrs r3, r2, #31
    adds r3, r3, r2
    asrs r3, r3, #1
    adds r1, r1, r3
    ldr r3, [pc, #192]
    mov r2, r8
    ldr r0, [r3, #0]
    lsls r3, r2, #16
    asrs r3, r3, #16
    adds r2, r0, #0
    muls r2, r3
    ldr r3, [pc, #184]
    ldr r3, [r3, #0]
    subs r2, r2, r3
    lsrs r3, r0, #31
    adds r3, r3, r0
    asrs r3, r3, #1
    asrs r1, r1, #19
    adds r2, r2, r3
    lsls r1, r1, #16
    lsrs r1, r1, #16
    asrs r2, r2, #19
    lsls r2, r2, #16
    adds r3, r1, #0
    lsls r1, r1, #16
    lsrs r2, r2, #16
    cmp r1, #0
    blt.n .Lsec01_00000690
.Lsec01_00000622:
    lsls r3, r3, #16
    lsrs r1, r3, #16
    lsls r3, r2, #16
    adds r0, r2, #0
    cmp r3, #0
    blt.n .Lsec01_0000068c
.Lsec01_0000062e:
    lsls r3, r0, #16
    lsrs r0, r3, #16
    lsls r3, r1, #16
    asrs r3, r3, #16
    adds r2, r1, #0
    cmp r3, #255
    ble.n .Lsec01_0000063e
    movs r2, #255
.Lsec01_0000063e:
    lsls r3, r2, #16
    lsrs r1, r3, #16
    lsls r3, r0, #16
    asrs r3, r3, #16
    adds r2, r0, #0
    cmp r3, #191
    ble.n .Lsec01_0000064e
    movs r2, #191
.Lsec01_0000064e:
    lsls r3, r2, #16
    lsrs r6, r3, #16
    adds r4, r1, #0
    b.n .Lsec01_000004c8
.Lsec01_00000656:
    ldr r5, [pc, #108]
    movs r3, #0
    strb r3, [r5, #0]
    b.n .Lsec01_000005d6
.Lsec01_0000065e:
    ldr r5, [pc, #100]
    mov r2, sp
    ldrh r1, [r2, #24]
    strb r0, [r5, #0]
    ldrh r0, [r2, #26]
    lsls r3, r1, #16
    lsls r2, r0, #16
    cmp r3, r2
    blt.n .Lsec01_00000694
    mov r2, sp
    strh r1, [r2, #28]
    b.n .Lsec01_000005d6
.Lsec01_00000676:
    movs r1, #3
    mov sl, r1
    b.n .Lsec01_000005c4
.Lsec01_0000067c:
    mov r3, sl
    adds r3, #2
    lsls r3, r3, #24
    lsrs r3, r3, #24
    mov sl, r3
    b.n .Lsec01_0000056c
.Lsec01_00000688:
    movs r2, #1
    b.n .Lsec01_00000552
.Lsec01_0000068c:
    movs r0, #0
    b.n .Lsec01_0000062e
.Lsec01_00000690:
    movs r3, #0
    b.n .Lsec01_00000622
.Lsec01_00000694:
    mov r3, sp
    strh r0, [r3, #28]
    b.n .Lsec01_000005d6
.Lsec01_0000069a:
    ldr r5, [pc, #40]
    movs r3, #0
    strb r3, [r5, #0]
    movs r3, #3
    mov sl, r3
    b.n .Lsec01_000005d6
    lsls r0, r0, #0
    .long .Lsec04_00000000
    .long 0x027ffc80
    .long .Lsec04_00000004
    .long .Lsec04_00000008
    .long .Lsec04_0000000c
    .long .Lsec04_00000010
    .long 0x04000208
    .long .Lsec04_00000001
    .long .Lsec03_00000000
    .long 0xffff8a01
    .long 0x040001c0
    .long 0x040001c2
    .long 0xffff8201
.thumb
.thumb_func
touchRead:
    push {r4, r5, r6, lr}
    mov r6, r8
    push {r6}
    ldr r2, [pc, #176]
    ldrh r3, [r2, #0]
    mov r8, r3
    movs r3, #0
    strh r3, [r2, #0]
    subs r2, #72
    ldrh r3, [r2, #0]
    sub sp, #4
    adds r6, r0, #0
    lsls r1, r3, #24
    bpl.n .Lsec01_00000708
    adds r5, r2, #0
    movs r4, #128
.Lsec01_000006fc:
    movs r0, #1
.Lsec01_000006fe:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_000006fc
.Lsec01_00000708:
    ldr r1, [pc, #140]
    ldr r3, [pc, #144]
    ldr r2, [pc, #144]
    strh r3, [r1, #0]
    lsls r3, r6, #16
    lsrs r3, r3, #16
    strh r3, [r2, #0]
    ldrh r3, [r1, #0]
    lsls r2, r3, #24
    bpl.n .Lsec01_0000072c
    adds r5, r1, #0
    movs r4, #128
.Lsec01_00000720:
    movs r0, #1
.Lsec01_00000722:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_00000720
.Lsec01_0000072c:
    ldr r2, [pc, #112]
    movs r3, #0
    strh r3, [r2, #0]
    subs r2, #2
    ldrh r3, [r2, #0]
    lsls r1, r3, #24
    bpl.n .Lsec01_0000074a
    adds r5, r2, #0
    movs r4, #128
.Lsec01_0000073e:
    movs r0, #1
.Lsec01_00000740:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_0000073e
.Lsec01_0000074a:
    ldr r2, [pc, #84]
    ldrh r3, [r2, #0]
    ldr r1, [pc, #72]
    adds r6, r3, #0
    ldr r3, [pc, #80]
    strh r3, [r1, #0]
    movs r3, #0
    strh r3, [r2, #0]
    ldrh r3, [r1, #0]
    lsls r2, r3, #24
    bpl.n .Lsec01_00000770
    adds r5, r1, #0
    movs r4, #128
.Lsec01_00000764:
    movs r0, #1
.Lsec01_00000766:
    bl swiDelay
    ldrh r3, [r5, #0]
    tst r3, r4
    bne.n .Lsec01_00000764
.Lsec01_00000770:
    ldr r3, [pc, #44]
    mov r1, r8
    ldrh r2, [r3, #0]
    adds r3, #70
    adds r0, r6, #0
    strh r1, [r3, #0]
    movs r3, #127
    ands r0, r3
    lsrs r2, r2, #3
    lsls r0, r0, #5
    orrs r0, r2
    add sp, #4
    pop {r2}
    mov r8, r2
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    lsls r0, r0, #0
    .long 0x04000208
    .long 0x040001c0
    .long 0xffff8a01
    .long 0x040001c2
    .long 0xffff8201
.thumb
.thumb_func
touchReadTemperature:
    push {r4, r5, lr}
    adds r4, r0, #0
    sub sp, #4
    movs r0, #132
    adds r5, r1, #0
.Lsec01_000007b2:
    bl touchRead
    str r0, [r4, #0]
    movs r0, #244
.Lsec01_000007ba:
    bl touchRead
    str r0, [r5, #0]
    ldr r3, [r4, #0]
    subs r0, r0, r3
    ldr r3, [pc, #12]
    muls r0, r3
    ldr r3, [pc, #12]
    add sp, #4
    adds r0, r0, r3
    pop {r4, r5}
    pop {r1}
    bx r1
    .long 0x0000212a
    .long 0xffeef000

.section .data,"aw",%progbits
.balign 1
range:
.Lsec03_00000000:
    .byte 0x14

.section .bss,"aw",%nobits
.balign 4
touchInit:
.Lsec04_00000000:
    .byte 0x00
last_time_touched:
.Lsec04_00000001:
    .byte 0x00
range_counter_2:
.Lsec04_00000002:
    .byte 0x00
range_counter_1:
.Lsec04_00000003:
    .byte 0x00
xscale:
.Lsec04_00000004:
    .long 0x00000000
yscale:
.Lsec04_00000008:
    .long 0x00000000
xoffset:
.Lsec04_0000000c:
    .long 0x00000000
yoffset:
.Lsec04_00000010:
    .long 0x00000000

.size range, 1
.size UpdateRange, 128
.size CheckStylus, 304
.size readTouchValue, 556
.size touchReadXY, 768
.size touchRead, 204
.size touchReadTemperature, 52

.section .note.GNU-stack,"",%progbits
