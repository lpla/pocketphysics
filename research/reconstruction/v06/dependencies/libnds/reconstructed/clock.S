/* Reconstructed mnemonic source for clock.o. */
.syntax unified
.arch armv4t

.global BCDToInteger
.type BCDToInteger, %function
.global rtcTransaction
.type rtcTransaction, %function
.global rtcSetTime
.type rtcSetTime, %function
.global rtcGetTime
.type rtcGetTime, %function
.global rtcSetTimeAndDate
.type rtcSetTimeAndDate, %function
.global rtcGetTimeAndDate
.type rtcGetTimeAndDate, %function
.global rtcReset
.type rtcReset, %function
.global integerToBCD
.type integerToBCD, %function
.global initClockIRQ
.type initClockIRQ, %function
.global syncRTC
.type syncRTC, %function

.section .text,"ax",%progbits
.balign 4
.thumb
.thumb_func
BCDToInteger:
    push {r4, r5, r6, r7, lr}
    adds r4, r0, #0
    adds r5, r1, #0
    cmp r1, #0
    beq.n .Lsec01_00000026
    movs r0, #0
    movs r6, #15
.Lsec01_0000000e:
    ldrb r3, [r0, r4]
    adds r1, r3, #0
    lsrs r3, r3, #4
    lsls r2, r3, #2
    adds r2, r2, r3
    ands r1, r6
    lsls r2, r2, #1
    adds r1, r1, r2
    strb r1, [r0, r4]
    adds r0, #1
    cmp r5, r0
    bne.n .Lsec01_0000000e
.Lsec01_00000026:
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
.thumb_func
rtcTransaction:
    push {r4, r5, r6, r7, lr}
    mov r7, fp
    mov r6, sl
    mov r5, r9
    mov r4, r8
    push {r4, r5, r6, r7}
    ldr r4, [pc, #268]
    mov r9, r3
    movs r3, #115
    sub sp, #4
    mov r8, r0
    strb r3, [r4, #0]
    movs r0, #48
    mov sl, r1
    mov fp, r2
.Lsec01_0000004a:
    bl swiDelay
    movs r3, #119
    strb r3, [r4, #0]
    movs r0, #48
.Lsec01_00000054:
    bl swiDelay
    mov r3, r8
    ldrb r5, [r3, #0]
    movs r6, #0
    adds r7, r4, #0
.Lsec01_00000060:
    lsrs r4, r5, #7
    movs r3, #116
    orrs r3, r4
    lsls r3, r3, #24
    lsrs r3, r3, #24
    strb r3, [r7, #0]
    movs r0, #48
.Lsec01_0000006e:
    bl swiDelay
    movs r3, #118
    orrs r4, r3
    lsls r4, r4, #24
    lsrs r4, r4, #24
    strb r4, [r7, #0]
    movs r0, #48
.Lsec01_0000007e:
    bl swiDelay
    adds r6, #1
    lsls r3, r5, #25
    lsrs r5, r3, #24
    cmp r6, #8
    bne.n .Lsec01_00000060
    mov r3, sl
    cmp r3, #1
    bls.n .Lsec01_000000dc
    movs r3, #1
    ldr r7, [pc, #176]
    add r8, r3
.Lsec01_00000098:
    mov r3, r8
    ldrb r5, [r3, #0]
    movs r3, #1
    add r8, r3
    movs r6, #0
.Lsec01_000000a2:
    movs r3, #1
    adds r4, r5, #0
    ands r4, r3
    movs r3, #116
    orrs r3, r4
    lsls r3, r3, #24
    lsrs r3, r3, #24
    strb r3, [r7, #0]
    movs r0, #48
.Lsec01_000000b4:
    bl swiDelay
    movs r3, #118
    orrs r4, r3
    lsls r4, r4, #24
    lsrs r4, r4, #24
    strb r4, [r7, #0]
    movs r0, #48
    adds r6, #1
.Lsec01_000000c6:
    bl swiDelay
    lsrs r5, r5, #1
    cmp r6, #8
    bne.n .Lsec01_000000a2
    movs r3, #1
    negs r3, r3
    add sl, r3
    mov r3, sl
    cmp r3, #1
    bne.n .Lsec01_00000098
.Lsec01_000000dc:
    mov r3, r9
    cmp r3, #0
    beq.n .Lsec01_0000012a
.Lsec01_000000e2:
    movs r5, #0
    movs r6, #0
.Lsec01_000000e6:
    ldr r4, [pc, #96]
    movs r3, #100
    strb r3, [r4, #0]
    movs r0, #48
.Lsec01_000000ee:
    bl swiDelay
    movs r3, #102
    strb r3, [r4, #0]
    movs r0, #48
.Lsec01_000000f8:
    bl swiDelay
    ldrb r3, [r4, #0]
    movs r2, #1
    tst r3, r2
    beq.n .Lsec01_0000010e
    adds r3, r2, #0
    lsls r3, r5
    orrs r3, r6
    lsls r3, r3, #24
    lsrs r6, r3, #24
.Lsec01_0000010e:
    adds r5, #1
    cmp r5, #8
    bne.n .Lsec01_000000e6
    mov r3, fp
    strb r6, [r3, #0]
    movs r3, #1
    negs r3, r3
    add r9, r3
    mov r3, r9
    cmp r3, #0
    beq.n .Lsec01_0000012a
    movs r3, #1
    add fp, r3
    b.n .Lsec01_000000e2
.Lsec01_0000012a:
    ldr r3, [pc, #28]
    movs r2, #98
    strb r2, [r3, #0]
    movs r0, #48
.Lsec01_00000132:
    bl swiDelay
    add sp, #4
    pop {r2, r3, r4, r5}
    mov r8, r2
    mov r9, r3
    mov sl, r4
    mov fp, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
    .long 0x04000138
.thumb
.thumb_func
rtcSetTime:
    push {lr}
    ldrb r3, [r0, #0]
    sub sp, #12
    add r2, sp, #4
    strb r3, [r2, #1]
    ldrb r3, [r0, #1]
    strb r3, [r2, #2]
    ldrb r3, [r0, #2]
    strb r3, [r2, #3]
    movs r3, #102
    strb r3, [r2, #0]
    adds r0, r2, #0
    movs r1, #4
    movs r2, #0
    movs r3, #0
.Lsec01_0000016a:
    bl rtcTransaction
    add sp, #12
    pop {r0}
    bx r0
.thumb_func
rtcGetTime:
    push {r4, r5, r6, lr}
    sub sp, #8
    mov r4, sp
    adds r4, #6
    adds r6, r0, #0
    movs r3, #103
    strb r3, [r4, #0]
    adds r0, r4, #0
    movs r1, #1
    adds r2, r6, #0
    movs r3, #3
    mov r5, sp
.Lsec01_0000018c:
    bl rtcTransaction
    adds r5, #7
    movs r3, #97
    strb r3, [r4, #0]
    adds r0, r4, #0
    movs r3, #1
    movs r1, #1
    adds r2, r5, #0
.Lsec01_0000019e:
    bl rtcTransaction
    ldrb r3, [r5, #0]
    lsls r2, r3, #30
    bpl.n .Lsec01_000001b0
    ldrb r3, [r6, #0]
    movs r2, #63
    ands r3, r2
    strb r3, [r6, #0]
.Lsec01_000001b0:
    adds r0, r6, #0
    movs r1, #3
.Lsec01_000001b4:
    bl BCDToInteger
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
.thumb_func
rtcSetTimeAndDate:
    push {lr}
    sub sp, #12
    movs r2, #0
    mov r1, sp
.Lsec01_000001c8:
    ldrb r3, [r0, #0]
    adds r2, #1
    strb r3, [r2, r1]
    adds r0, #1
    cmp r2, #8
    bne.n .Lsec01_000001c8
    movs r3, #100
    strb r3, [r1, #0]
    mov r0, sp
    movs r1, #8
    movs r2, #0
    movs r3, #0
.Lsec01_000001e0:
    bl rtcTransaction
    add sp, #12
    pop {r0}
    bx r0
    .short 0x0000
.thumb_func
rtcGetTimeAndDate:
    push {r4, r5, r6, lr}
    sub sp, #8
    mov r4, sp
    adds r4, #6
    adds r6, r0, #0
    movs r3, #101
    strb r3, [r4, #0]
    adds r0, r4, #0
    movs r1, #1
    adds r2, r6, #0
    movs r3, #7
    mov r5, sp
.Lsec01_00000204:
    bl rtcTransaction
    adds r5, #7
    movs r3, #97
    strb r3, [r4, #0]
    adds r0, r4, #0
    movs r3, #1
    movs r1, #1
    adds r2, r5, #0
.Lsec01_00000216:
    bl rtcTransaction
    ldrb r3, [r5, #0]
    lsls r2, r3, #30
    bpl.n .Lsec01_00000228
    ldrb r3, [r6, #4]
    movs r2, #63
    ands r3, r2
    strb r3, [r6, #4]
.Lsec01_00000228:
    adds r0, r6, #0
    movs r1, #7
.Lsec01_0000022c:
    bl BCDToInteger
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
.thumb_func
rtcReset:
    push {r4, r5, lr}
    sub sp, #12
    mov r5, sp
    mov r4, sp
    adds r5, #5
    movs r3, #97
    adds r4, #7
    strb r3, [r5, #0]
    adds r2, r4, #0
    movs r3, #1
    adds r0, r5, #0
    movs r1, #1
.Lsec01_00000250:
    bl rtcTransaction
    ldrb r2, [r4, #0]
    movs r3, #192
    tst r2, r3
    beq.n .Lsec01_00000272
    movs r3, #96
    strb r3, [r5, #0]
    movs r3, #1
    orrs r3, r2
    strb r3, [r5, #1]
    adds r0, r5, #0
    movs r1, #2
    movs r2, #0
    movs r3, #0
.Lsec01_0000026e:
    bl rtcTransaction
.Lsec01_00000272:
    add sp, #12
    pop {r4, r5}
    pop {r0}
    bx r0
    .short 0x0000
.thumb_func
integerToBCD:
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    sub sp, #8
    adds r5, r0, #0
    adds r6, r1, #0
    cmp r1, #0
    beq.n .Lsec01_000002ac
    movs r4, #0
    add r7, sp, #4
.Lsec01_00000290:
    ldrb r0, [r4, r5]
    mov r2, sp
    adds r3, r7, #0
    movs r1, #10
.Lsec01_00000298:
    bl swiDivMod
    ldr r3, [sp, #0]
    ldr r2, [sp, #4]
    lsls r3, r3, #4
    orrs r3, r2
    strb r3, [r4, r5]
    adds r4, #1
    cmp r6, r4
    bne.n .Lsec01_00000290
.Lsec01_000002ac:
    add sp, #8
    pop {r2}
    mov r8, r2
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
.thumb_func
initClockIRQ:
    push {r4, lr}
    ldr r2, [pc, #164]
    ldr r3, [pc, #164]
    sub sp, #40
    strh r2, [r3, #0]
    ldr r1, [pc, #164]
    movs r0, #128
    add r4, sp, #36
.Lsec01_000002c8:
    bl irqSet
.Lsec01_000002cc:
    bl rtcReset
    movs r3, #99
    mov r2, sp
    strb r3, [r4, #0]
    adds r0, r4, #0
    movs r1, #1
    adds r2, #37
    movs r3, #1
.Lsec01_000002de:
    bl rtcTransaction
    movs r3, #98
    strb r3, [r4, #0]
    movs r3, #65
    strb r3, [r4, #1]
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0
    movs r3, #0
.Lsec01_000002f2:
    bl rtcTransaction
    movs r3, #104
    strb r3, [r4, #0]
    movs r3, #1
    strb r3, [r4, #1]
    adds r0, r4, #0
    movs r1, #2
    movs r2, #0
    movs r3, #0
.Lsec01_00000306:
    bl rtcTransaction
    movs r3, #107
    strb r3, [r4, #0]
    movs r3, #0
    strb r3, [r4, #1]
    movs r3, #33
    strb r3, [r4, #2]
    movs r3, #53
    movs r1, #4
    movs r2, #0
    strb r3, [r4, #3]
    adds r0, r4, #0
    movs r3, #0
    ldr r4, [pc, #72]
.Lsec01_00000324:
    bl rtcTransaction
    ldr r0, [pc, #68]
.Lsec01_0000032a:
    bl rtcGetTimeAndDate
    ldrb r3, [r4, #29]
    str r3, [sp, #0]
    ldrb r3, [r4, #28]
    str r3, [sp, #4]
    ldrb r3, [r4, #27]
    str r3, [sp, #8]
    ldrb r3, [r4, #25]
    str r3, [sp, #12]
    ldrb r3, [r4, #24]
    subs r3, #1
    str r3, [sp, #16]
    ldrb r3, [r4, #23]
    adds r3, #100
    str r3, [sp, #20]
    movs r3, #1
    negs r3, r3
    mov r0, sp
    str r3, [sp, #32]
.Lsec01_00000352:
    bl mktime
    add sp, #40
    str r0, [r4, #32]
    pop {r4}
    pop {r0}
    bx r0
    .long 0xffff8100
    .long 0x04000134
    .long syncRTC
    .long 0x027ff000
    .long 0x027ff017
.thumb
.thumb_func
syncRTC:
    push {lr}
    ldr r2, [pc, #80]
    ldrb r3, [r2, #29]
    adds r3, #1
    lsls r3, r3, #24
    lsrs r3, r3, #24
    strb r3, [r2, #29]
    ldrb r3, [r2, #29]
    sub sp, #4
    cmp r3, #60
    beq.n .Lsec01_00000398
.Lsec01_0000038a:
    ldr r2, [pc, #60]
    ldr r3, [r2, #32]
    add sp, #4
    adds r3, #1
    str r3, [r2, #32]
    pop {r0}
    bx r0
.Lsec01_00000398:
    movs r1, #0
    strb r1, [r2, #29]
    ldrb r3, [r2, #28]
    adds r3, #1
    lsls r3, r3, #24
    lsrs r3, r3, #24
    strb r3, [r2, #28]
    ldrb r3, [r2, #28]
    cmp r3, #60
    bne.n .Lsec01_0000038a
    strb r1, [r2, #28]
    ldrb r3, [r2, #27]
    adds r3, #1
    lsls r3, r3, #24
    lsrs r3, r3, #24
    strb r3, [r2, #27]
    ldrb r3, [r2, #27]
    cmp r3, #24
    bne.n .Lsec01_0000038a
    ldr r0, [pc, #12]
.Lsec01_000003c0:
    bl rtcGetTimeAndDate
    b.n .Lsec01_0000038a
    lsls r0, r0, #0
    .long 0x027ff000
    .long 0x027ff017

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.size BCDToInteger, 44
.size rtcTransaction, 288
.size rtcSetTime, 40
.size rtcGetTime, 76
.size rtcSetTimeAndDate, 42
.size rtcGetTimeAndDate, 76
.size rtcReset, 66
.size integerToBCD, 60
.size initClockIRQ, 188
.size syncRTC, 92

.section .note.GNU-stack,"",%progbits
