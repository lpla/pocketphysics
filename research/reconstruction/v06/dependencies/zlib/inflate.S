/* Reconstructed mnemonic source for inflate.o. */
.syntax unified
.arch armv5te

.type syncsearch, %function
.type updatewindow, %function
.type lenfix.2606, %object
.type distfix.2607, %object
.type order.2658, %object
.global inflateReset
.type inflateReset, %function
.global inflatePrime
.type inflatePrime, %function
.global inflateInit2_
.type inflateInit2_, %function
.global inflateInit_
.type inflateInit_, %function
.global inflateEnd
.type inflateEnd, %function
.global inflateGetHeader
.type inflateGetHeader, %function
.global inflateSync
.type inflateSync, %function
.global inflateSyncPoint
.type inflateSyncPoint, %function
.global inflateCopy
.type inflateCopy, %function
.global inflateSetDictionary
.type inflateSetDictionary, %function
.global inflate
.type inflate, %function

.section .text,"ax",%progbits
.balign 4
.arm
inflateReset:
    cmp r0, #0
    str lr, [sp, #-4]!
    beq .Lsec01_00000078
    ldr r2, [r0, #28]
    mov r1, #0
    cmp r2, r1
    mov lr, r1
    add ip, r2, #1328
    beq .Lsec01_00000078
    mov r3, #32768
    str r3, [r2, #20]
    mov r3, #1
    str r1, [r2, #28]
    str ip, [r2, #76]
    str r3, [r0, #48]
    str r1, [r0, #20]
    str r1, [r0, #8]
    str r1, [r0, #24]
    strb r1, [r2]
    str r1, [r2, #4]
    str r1, [r2, #12]
    str r1, [r2, #32]
    str r1, [r2, #40]
    str r1, [r2, #44]
    str r1, [r2, #48]
    str r1, [r2, #56]
    str r1, [r2, #60]
    str ip, [r2, #108]
    str ip, [r2, #80]
    b .Lsec01_0000007c
.Lsec01_00000078:
    mvn lr, #1
.Lsec01_0000007c:
    mov r0, lr
    ldr lr, [sp], #4
    bx lr
inflatePrime:
    cmp r0, #0
    stmdb sp!, {r4, lr}
    beq .Lsec01_000000d8
    ldr r0, [r0, #28]
    cmp r0, #0
    beq .Lsec01_000000d8
    cmp r1, #16
    bgt .Lsec01_000000d8
    ldr lr, [r0, #60]
    add ip, lr, r1
    cmp ip, #32
    mov r4, #0
    bhi .Lsec01_000000d8
    mvn r3, #0
    bic r3, r2, r3, lsl r1
    ldr r2, [r0, #56]
    add r2, r2, r3, lsl lr
    str ip, [r0, #60]
    str r2, [r0, #56]
    b .Lsec01_000000dc
.Lsec01_000000d8:
    mvn r4, #1
.Lsec01_000000dc:
    mov r0, r4
    ldmia sp!, {r4, lr}
    bx lr
inflateInit2_:
    cmp r2, #0
    stmdb sp!, {r4, r5, r6, lr}
    mov r5, r1
    mov r4, r0
    mov r1, r3
    beq .Lsec01_000001e0
    ldrb r3, [r2]
    cmp r1, #56
    cmpeq r3, #49
    moveq r6, #0
    movne r6, #1
    bne .Lsec01_000001e0
    cmp r0, #0
    mvneq r0, #1
    beq .Lsec01_000001e4
    ldr r3, [r4, #32]
    cmp r3, #0
    ldreq r3, [pc, #184]
    streq r3, [r4, #32]
    ldr r3, [r4, #36]
    streq r6, [r4, #40]
    cmp r3, #0
    ldreq r3, [pc, #168]
    str r6, [r4, #24]
    streq r3, [r4, #36]
    ldr r0, [r4, #40]
    mov r1, #1
    ldr r2, [pc, #152]
    ldr ip, [r4, #32]
    mov lr, pc
    bx ip
    cmp r0, #0
    mvneq r0, #3
    beq .Lsec01_000001e4
    cmp r5, #0
    str r0, [r4, #28]
    rsblt r5, r5, #0
    strlt r6, [r0, #8]
    blt .Lsec01_00000198
    mov r3, r5, asr #4
    add r3, r3, #1
    cmp r5, #47
    str r3, [r0, #8]
    andle r5, r5, #15
.Lsec01_00000198:
    sub r3, r5, #8
    cmp r3, #7
    bls .Lsec01_000001c8
    mov r1, r0
    ldr r0, [r4, #40]
    ldr ip, [r4, #36]
    mov lr, pc
    bx ip
    mov r3, #0
    mvn r0, #1
    str r3, [r4, #28]
    b .Lsec01_000001e4
.Lsec01_000001c8:
    mov r3, #0
    str r3, [r0, #52]
    str r5, [r0, #36]
    mov r0, r4
    ldmia sp!, {r4, r5, r6, lr}
.Lsec01_000001dc:
    b inflateReset
.Lsec01_000001e0:
    mvn r0, #5
.Lsec01_000001e4:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long zcalloc
    .long zcfree
    .long 0x00002530
.arm
inflateInit_:
    mov r3, r2
    mov r2, r1
    mov r1, #15
.Lsec01_00000204:
    b inflateInit2_
inflateEnd:
    stmdb sp!, {r4, lr}
    subs r4, r0, #0
    beq .Lsec01_00000264
    ldr r3, [r4, #28]
    cmp r3, #0
    beq .Lsec01_00000264
    ldr r2, [r4, #36]
    cmp r2, #0
    beq .Lsec01_00000264
    ldr r1, [r3, #52]
    cmp r1, #0
    ldrne r0, [r4, #40]
    movne lr, pc
    bxne r2
    ldr r0, [r4, #40]
    ldr r1, [r4, #28]
    ldr ip, [r4, #36]
    mov lr, pc
    bx ip
    mov r3, #0
    mov r0, r3
    str r3, [r4, #28]
    b .Lsec01_00000268
.Lsec01_00000264:
    mvn r0, #1
.Lsec01_00000268:
    ldmia sp!, {r4, lr}
    bx lr
inflateGetHeader:
    cmp r0, #0
    beq .Lsec01_000002a0
    ldr r0, [r0, #28]
    cmp r0, #0
    beq .Lsec01_000002a0
    ldr r3, [r0, #8]
    mov r2, #0
    tst r3, #2
    strne r1, [r0, #32]
    mov r3, r2
    strne r2, [r1, #48]
    bne .Lsec01_000002a4
.Lsec01_000002a0:
    mvn r3, #1
.Lsec01_000002a4:
    mov r0, r3
    bx lr
syncsearch:
    stmdb sp!, {r4, lr}
    ldr ip, [r0]
    mov r4, r0
    mov r0, #0
    b .Lsec01_000002ec
.Lsec01_000002c0:
    cmp ip, #1
    ldrb lr, [r0, r1]
    movhi r3, #255
    movls r3, #0
    cmp lr, r3
    addeq ip, ip, #1
    beq .Lsec01_000002e8
    cmp lr, #0
    rsb ip, ip, #4
    movne ip, #0
.Lsec01_000002e8:
    add r0, r0, #1
.Lsec01_000002ec:
    cmp ip, #3
    cmpls r0, r2
    bcc .Lsec01_000002c0
    str ip, [r4]
    ldmia sp!, {r4, lr}
    bx lr
inflateSync:
    stmdb sp!, {r4, r5, r6, r7, lr}
    subs r6, r0, #0
    sub sp, sp, #12
    beq .Lsec01_00000420
    ldr r5, [r6, #28]
    cmp r5, #0
    beq .Lsec01_00000420
    ldr r3, [r6, #4]
    cmp r3, #0
    bne .Lsec01_0000033c
    ldr r3, [r5, #60]
    cmp r3, #7
    mvnls r0, #4
    bls .Lsec01_00000424
.Lsec01_0000033c:
    ldrb r3, [r5]
    cmp r3, #29
    beq .Lsec01_000003bc
    ldr r1, [r5, #60]
    ldr r2, [r5, #56]
    and r3, r1, #7
    mov r2, r2, lsl r3
    bic r1, r1, #7
    mov r3, #29
    mov r0, #0
    strb r3, [r5]
    str r2, [r5, #56]
    str r1, [r5, #60]
    b .Lsec01_00000398
.Lsec01_00000374:
    ldr r3, [r5, #56]
    strb r3, [r0, r1]
    ldr r3, [r5, #56]
    ldr r2, [r5, #60]
    mov r3, r3, lsr #8
    sub r2, r2, #8
    str r3, [r5, #56]
    str r2, [r5, #60]
    add r0, r0, #1
.Lsec01_00000398:
    ldr r3, [r5, #60]
    cmp r3, #7
    add r1, sp, #4
    bhi .Lsec01_00000374
    mov r3, #0
    mov r2, r0
    str r3, [r5, #104]
    add r0, r5, #104
    bl syncsearch
.Lsec01_000003bc:
    ldmia r6, {r1, r2}
    add r0, r5, #104
    bl syncsearch
    ldr r3, [r6, #4]
    rsb r3, r0, r3
    str r3, [r6, #4]
    ldr r2, [r6, #8]
    ldr r3, [r6]
    ldr r1, [r5, #104]
    add r7, r0, r2
    add r3, r3, r0
    cmp r1, #4
    str r3, [r6]
    str r7, [r6, #8]
    mvnne r0, #2
    bne .Lsec01_00000424
    mov r0, r6
    ldr r4, [r6, #20]
.Lsec01_00000404:
    bl inflateReset
    mov r3, #11
    mov r0, #0
    str r4, [r6, #20]
    strb r3, [r5]
    str r7, [r6, #8]
    b .Lsec01_00000424
.Lsec01_00000420:
    mvn r0, #1
.Lsec01_00000424:
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
inflateSyncPoint:
    cmp r0, #0
    beq .Lsec01_00000464
    ldr r0, [r0, #28]
    cmp r0, #0
    beq .Lsec01_00000464
    ldrb r3, [r0]
    cmp r3, #13
    mov r3, #0
    bne .Lsec01_00000468
    ldr r3, [r0, #60]
    rsbs r3, r3, #1
    movcc r3, #0
    b .Lsec01_00000468
.Lsec01_00000464:
    mvn r3, #1
.Lsec01_00000468:
    mov r0, r3
    bx lr
inflateCopy:
    cmp r1, #0
    cmpne r0, #0
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    mov r7, r0
    mov r4, r1
    beq .Lsec01_000005d8
    ldr r5, [r1, #28]
    cmp r5, #0
    beq .Lsec01_000005d8
    ldr ip, [r1, #32]
    cmp ip, #0
    beq .Lsec01_000005d8
    ldr r3, [r1, #36]
    cmp r3, #0
    beq .Lsec01_000005d8
    ldr r0, [r1, #40]
    ldr r2, [pc, #300]
    mov r1, #1
    mov lr, pc
    bx ip
    subs r6, r0, #0
    beq .Lsec01_0000050c
    ldr r0, [r5, #52]
    cmp r0, #0
    beq .Lsec01_00000514
    ldr r1, [r5, #36]
    mov r2, #1
    mov r1, r2, lsl r1
    ldr r0, [r4, #40]
    ldr ip, [r4, #32]
    mov lr, pc
    bx ip
    cmp r0, #0
    bne .Lsec01_00000514
    mov r1, r6
    ldr r0, [r4, #40]
    ldr ip, [r4, #36]
    mov lr, pc
    bx ip
.Lsec01_0000050c:
    mvn r0, #3
    b .Lsec01_000005dc
.Lsec01_00000514:
    mov ip, r4
    mov r8, r0
    ldmia ip!, {r0, r1, r2, r3}
    mov lr, r7
    stmia lr!, {r0, r1, r2, r3}
    ldmia ip!, {r0, r1, r2, r3}
    stmia lr!, {r0, r1, r2, r3}
    ldmia ip!, {r0, r1, r2, r3}
    stmia lr!, {r0, r1, r2, r3}
    ldmia ip, {r0, r1}
    ldr r2, [pc, #160]
    stmia lr, {r0, r1}
    mov r1, r5
    mov r0, r6
.Lsec01_0000054c:
    bl memcpy
    ldr r2, [r5, #76]
    add r1, r5, #1328
    cmp r2, r1
    bcc .Lsec01_00000590
    add r3, r5, #9472
    add r3, r3, #44
    cmp r2, r3
    bhi .Lsec01_00000590
    ldr r3, [r5, #80]
    rsb r3, r1, r3
    rsb r1, r1, r2
    add r2, r6, #1328
    add r3, r2, r3
    add r2, r2, r1
    str r2, [r6, #76]
    str r3, [r6, #80]
.Lsec01_00000590:
    ldr r3, [r5, #108]
    add r2, r5, #1328
    rsb r3, r2, r3
    add r2, r6, #1328
    add r2, r2, r3
    cmp r8, #0
    str r2, [r6, #108]
    beq .Lsec01_000005c8
    ldr r3, [r5, #36]
    mov r2, #1
    mov r2, r2, lsl r3
    ldr r1, [r5, #52]
    mov r0, r8
.Lsec01_000005c4:
    bl memcpy
.Lsec01_000005c8:
    mov r0, #0
    str r6, [r7, #28]
    str r8, [r6, #52]
    b .Lsec01_000005dc
.Lsec01_000005d8:
    mvn r0, #1
.Lsec01_000005dc:
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long 0x00002530
.arm
updatewindow:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr r5, [r0, #28]
    ldr r3, [r5, #52]
    cmp r3, #0
    sub sp, sp, #4
    mov r7, r0
    mov r6, r1
    bne .Lsec01_00000638
    ldr r1, [r5, #36]
    mov r4, #1
    mov r1, r4, lsl r1
    ldr r0, [r0, #40]
    mov r2, r4
    ldr ip, [r7, #32]
    mov lr, pc
    bx ip
    cmp r0, #0
    str r0, [r5, #52]
    moveq r0, r4
    beq .Lsec01_00000748
.Lsec01_00000638:
    ldr r1, [r5, #40]
    cmp r1, #0
    bne .Lsec01_0000065c
    ldr r2, [r5, #36]
    mov r3, #1
    mov r3, r3, lsl r2
    str r1, [r5, #44]
    str r3, [r5, #40]
    str r1, [r5, #48]
.Lsec01_0000065c:
    ldr r3, [r7, #16]
    ldr ip, [r5, #40]
    rsb r4, r3, r6
    cmp r4, ip
    bcc .Lsec01_0000069c
    ldr r1, [r7, #12]
    mov r2, ip
    rsb r1, ip, r1
    ldr r0, [r5, #52]
.Lsec01_00000680:
    bl memcpy
    mov r2, #0
    ldr r3, [r5, #40]
    mov r0, r2
    str r3, [r5, #44]
    str r2, [r5, #48]
    b .Lsec01_00000748
.Lsec01_0000069c:
    ldr r0, [r5, #48]
    rsb r6, r0, ip
    cmp r6, r4
    ldr r3, [r5, #52]
    ldr r1, [r7, #12]
    bhi .Lsec01_00000730
    rsb r1, r4, r1
    add r0, r0, r3
    mov r2, r6
.Lsec01_000006c0:
    bl memcpy
    subs r4, r4, r6
    beq .Lsec01_000006f4
    ldr r1, [r7, #12]
    ldr r0, [r5, #52]
    rsb r1, r4, r1
    mov r2, r4
.Lsec01_000006dc:
    bl memcpy
    ldr r3, [r5, #40]
    mov r0, #0
    str r3, [r5, #44]
    str r4, [r5, #48]
    b .Lsec01_00000748
.Lsec01_000006f4:
    ldr r3, [r5, #48]
    ldr r2, [r5, #40]
    add r3, r3, r6
    cmp r3, r2
    str r3, [r5, #48]
    moveq r3, #0
    ldr r2, [r5, #44]
    streq r3, [r5, #48]
    ldr r3, [r5, #40]
    cmp r2, r3
    addcc r3, r2, r6
    movcs r0, #0
    movcc r0, #0
    strcc r3, [r5, #44]
    b .Lsec01_00000748
.Lsec01_00000730:
    add r0, r0, r3
    rsb r1, r4, r1
    mov r2, r4
.Lsec01_0000073c:
    bl memcpy
    mov r6, r4
    b .Lsec01_000006f4
.Lsec01_00000748:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
inflateSetDictionary:
    stmdb sp!, {r4, r5, r6, r7, lr}
    subs r7, r0, #0
    sub sp, sp, #4
    mov r6, r1
    mov r5, r2
    beq .Lsec01_00000838
    ldr r4, [r7, #28]
    cmp r4, #0
    beq .Lsec01_00000838
    ldr r3, [r4, #8]
    cmp r3, #0
    ldrb r3, [r4]
    beq .Lsec01_00000794
    cmp r3, #10
    bne .Lsec01_00000838
    b .Lsec01_0000079c
.Lsec01_00000794:
    cmp r3, #10
    bne .Lsec01_000007c8
.Lsec01_0000079c:
    mov r0, #0
    mov r1, r0
    mov r2, r0
.Lsec01_000007a8:
    bl adler32
    mov r1, r6
    mov r2, r5
.Lsec01_000007b4:
    bl adler32
    ldr r3, [r4, #24]
    cmp r0, r3
    mvnne r0, #2
    bne .Lsec01_0000083c
.Lsec01_000007c8:
    mov r0, r7
    ldr r1, [r7, #16]
    bl updatewindow
    cmp r0, #0
    movne r3, #28
    mvnne r0, #3
    strneb r3, [r4]
    bne .Lsec01_0000083c
    ldr r2, [r4, #40]
    cmp r5, r2
    ldr r0, [r4, #52]
    bls .Lsec01_00000810
    add r1, r6, r5
    rsb r1, r2, r1
.Lsec01_00000800:
    bl memcpy
    ldr r3, [r4, #40]
    str r3, [r4, #44]
    b .Lsec01_00000828
.Lsec01_00000810:
    add r0, r2, r0
    rsb r0, r5, r0
    mov r1, r6
    mov r2, r5
.Lsec01_00000820:
    bl memcpy
    str r5, [r4, #44]
.Lsec01_00000828:
    mov r3, #1
    mov r0, #0
    str r3, [r4, #12]
    b .Lsec01_0000083c
.Lsec01_00000838:
    mvn r0, #1
.Lsec01_0000083c:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
inflate:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    subs r9, r0, #0
    sub sp, sp, #60
    str r1, [sp, #8]
    beq .Lsec01_00001d9c
    ldr r5, [r9, #28]
    cmp r5, #0
    beq .Lsec01_00001d9c
    ldr r3, [r9, #12]
    cmp r3, #0
    beq .Lsec01_00001d9c
    ldr r3, [r9]
    cmp r3, #0
    bne .Lsec01_0000088c
    ldr r3, [r9, #4]
    cmp r3, #0
    bne .Lsec01_00001d9c
.Lsec01_0000088c:
    ldrb r3, [r5]
    cmp r3, #11
    addeq r3, r3, #1
    ldr r0, [r9, #16]
    ldr r1, [r9, #4]
    ldr r2, [r9, #12]
    streqb r3, [r5]
    mov r3, #0
    str r0, [sp, #24]
    str r1, [sp, #44]
    str r2, [sp, #20]
    ldr r8, [r9]
    ldr r7, [r5, #56]
    ldr r6, [r5, #60]
    str r0, [sp, #28]
    str r3, [sp, #32]
    mov sl, r1
.Lsec01_000008d0:
    ldrb r3, [r5]
    cmp r3, #28
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00001d9c
    .long .Lsec01_00000984
    .long .Lsec01_0000097c
    .long .Lsec01_00000b60
    .long .Lsec01_00000be8
    .long .Lsec01_00000c6c
    .long .Lsec01_00000d0c
    .long .Lsec01_00000dc0
    .long .Lsec01_00000e74
    .long .Lsec01_00000f20
    .long .Lsec01_00000974
    .long .Lsec01_00001010
    .long .Lsec01_00001068
    .long .Lsec01_00001074
    .long .Lsec01_00001140
    .long .Lsec01_000011ac
    .long .Lsec01_0000096c
    .long .Lsec01_000012f4
    .long .Lsec01_0000155c
    .long .Lsec01_0000161c
    .long .Lsec01_000017b8
    .long .Lsec01_0000181c
    .long .Lsec01_00001914
    .long .Lsec01_000019fc
    .long .Lsec01_00001ab0
    .long .Lsec01_00001adc
    .long .Lsec01_00001bc8
    .long .Lsec01_00001c40
    .long .Lsec01_00000960
    .long .Lsec01_00000954
.arm
.Lsec01_00000954:
    mvn r4, #3
    str r4, [sp, #32]
    b .Lsec01_00001da4
.Lsec01_00000960:
    mvn ip, #2
    str ip, [sp, #32]
    b .Lsec01_00001c48
.Lsec01_0000096c:
    mov r2, r8
    b .Lsec01_00001230
.Lsec01_00000974:
    mov r2, r8
    b .Lsec01_00000fd0
.Lsec01_0000097c:
    mov r2, r8
    b .Lsec01_00000ae0
.Lsec01_00000984:
    ldr r1, [r5, #8]
    cmp r1, #0
    movne r2, r8
    moveq r3, #12
    beq .Lsec01_00001c28
    b .Lsec01_000009b8
.Lsec01_0000099c:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_000009b8:
    cmp r6, #15
    mov r8, r2
    bls .Lsec01_0000099c
    ldr r3, [pc, #3932]
    cmp r7, r3
    movne r3, #0
    moveq r3, #1
    ands r3, r3, r1, lsr #1
    beq .Lsec01_00000a20
    mov r0, #0
    mov r1, r0
    mov r2, r0
.Lsec01_000009e8:
    bl crc32
    mov r3, r7, lsr #8
    str r0, [r5, #24]
    strb r3, [sp, #53]
    strb r7, [sp, #52]
    add r1, sp, #52
    ldr r0, [r5, #24]
    mov r2, #2
.Lsec01_00000a08:
    bl crc32
    mov r6, #0
    mov r7, r6
    mov r3, #1
    str r0, [r5, #24]
    b .Lsec01_00001c28
.Lsec01_00000a20:
    ldr r2, [r5, #32]
    cmp r2, #0
    str r3, [r5, #16]
    mvnne r3, #0
    strne r3, [r2, #48]
    ldr r3, [r5, #8]
    tst r3, #1
    beq .Lsec01_00000a5c
    and r3, r7, #255
    mov r0, r7, lsr #8
    add r0, r0, r3, lsl #8
    mov r1, #31
.Lsec01_00000a50:
    bl __aeabi_uidivmod
    subs r4, r1, #0
    beq .Lsec01_00000a64
.Lsec01_00000a5c:
    ldr r3, [pc, #3784]
    b .Lsec01_00001c20
.Lsec01_00000a64:
    and r3, r7, #15
    cmp r3, #8
    bne .Lsec01_00000afc
    mov r7, r7, lsr #4
    and r3, r7, #15
    ldr r2, [r5, #36]
    add r1, r3, #8
    cmp r1, r2
    ldrhi r3, [pc, #3748]
    subhi r6, r6, #4
    bhi .Lsec01_00001c20
    mov r3, #1
    mov r3, r3, lsl r1
    mov r0, r4
    str r3, [r5, #20]
    mov r1, r4
    mov r2, r4
.Lsec01_00000aa8:
    bl adler32
    tst r7, #512
    mov r6, r4
    moveq r3, #11
    movne r3, #9
    mov r7, r4
    b .Lsec01_00000fa4
.Lsec01_00000ac4:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00000ae0:
    cmp r6, #15
    mov r8, r2
    bls .Lsec01_00000ac4
    and r3, r7, #255
    cmp r3, #8
    str r7, [r5, #16]
    beq .Lsec01_00000b04
.Lsec01_00000afc:
    ldr r3, [pc, #3632]
    b .Lsec01_00001c20
.Lsec01_00000b04:
    ands r4, r7, #57344
    ldrne r3, [pc, #3624]
    bne .Lsec01_00001c20
    ldr r2, [r5, #32]
    cmp r2, #0
    movne r3, r7, lsr #8
    andne r3, r3, #1
    strne r3, [r2]
    ldr r3, [r5, #16]
    tst r3, #512
    beq .Lsec01_00000b50
    mov r3, r7, lsr #8
    strb r3, [sp, #53]
    strb r7, [sp, #52]
    add r1, sp, #52
    ldr r0, [r5, #24]
    mov r2, #2
.Lsec01_00000b48:
    bl crc32
    str r0, [r5, #24]
.Lsec01_00000b50:
    mov r3, #2
    strb r3, [r5]
    mov r6, r4
    mov r7, r4
.Lsec01_00000b60:
    mov r2, r8
    b .Lsec01_00000b84
.Lsec01_00000b68:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00000b84:
    cmp r6, #31
    mov r8, r2
    bls .Lsec01_00000b68
    ldr r3, [r5, #32]
    cmp r3, #0
    strne r7, [r3, #4]
    ldr r3, [r5, #16]
    tst r3, #512
    beq .Lsec01_00000bd8
    mov r3, r7, lsr #24
    mov r2, r7, lsr #8
    mov r1, r7, lsr #16
    strb r2, [sp, #53]
    strb r1, [sp, #54]
    strb r3, [sp, #55]
    strb r7, [sp, #52]
    add r1, sp, #52
    ldr r0, [r5, #24]
    mov r2, #4
.Lsec01_00000bd0:
    bl crc32
    str r0, [r5, #24]
.Lsec01_00000bd8:
    mov r3, #3
    mov r6, #0
    strb r3, [r5]
    mov r7, r6
.Lsec01_00000be8:
    mov r2, r8
    b .Lsec01_00000c0c
.Lsec01_00000bf0:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00000c0c:
    cmp r6, #15
    mov r8, r2
    bls .Lsec01_00000bf0
    ldr r1, [r5, #32]
    cmp r1, #0
    movne r3, r7, lsr #8
    andne r2, r7, #255
    strne r3, [r1, #12]
    strne r2, [r1, #8]
    ldr r3, [r5, #16]
    tst r3, #512
    beq .Lsec01_00000c5c
    mov r3, r7, lsr #8
    strb r3, [sp, #53]
    strb r7, [sp, #52]
    add r1, sp, #52
    ldr r0, [r5, #24]
    mov r2, #2
.Lsec01_00000c54:
    bl crc32
    str r0, [r5, #24]
.Lsec01_00000c5c:
    mov r3, #4
    mov r6, #0
    strb r3, [r5]
    mov r7, r6
.Lsec01_00000c6c:
    ldr r3, [r5, #16]
    ands r3, r3, #1024
    movne r2, r8
    bne .Lsec01_00000c9c
    b .Lsec01_00000cf8
.Lsec01_00000c80:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00000c9c:
    cmp r6, #15
    mov r8, r2
    bls .Lsec01_00000c80
    ldr r3, [r5, #32]
    cmp r3, #0
    str r7, [r5, #64]
    strne r7, [r3, #20]
    ldr r3, [r5, #16]
    ands r1, r3, #512
    moveq r6, r1
    moveq r7, r6
    beq .Lsec01_00000d04
    mov r3, r7, lsr #8
    strb r7, [sp, #52]
    strb r3, [sp, #53]
    add r1, sp, #52
    ldr r0, [r5, #24]
    mov r2, #2
.Lsec01_00000ce4:
    bl crc32
    mov r6, #0
    mov r7, r6
    str r0, [r5, #24]
    b .Lsec01_00000d04
.Lsec01_00000cf8:
    ldr r2, [r5, #32]
    cmp r2, #0
    strne r3, [r2, #16]
.Lsec01_00000d04:
    mov r3, #5
    strb r3, [r5]
.Lsec01_00000d0c:
    ldr r3, [r5, #16]
    tst r3, #1024
    beq .Lsec01_00000db0
    ldr r1, [r5, #64]
    cmp sl, r1
    movcc r4, sl
    movcs r4, r1
    cmp r4, #0
    beq .Lsec01_00000da4
    ldr r2, [r5, #32]
    cmp r2, #0
    beq .Lsec01_00000d70
    ldr r0, [r2, #16]
    cmp r0, #0
    beq .Lsec01_00000d70
    ldr r3, [r2, #20]
    ldr r2, [r2, #24]
    rsb r1, r1, r3
    add r3, r1, r4
    cmp r3, r2
    rsbhi r2, r1, r2
    add r0, r0, r1
    movls r2, r4
    mov r1, r8
.Lsec01_00000d6c:
    bl memcpy
.Lsec01_00000d70:
    ldr r3, [r5, #16]
    tst r3, #512
    beq .Lsec01_00000d90
    ldr r0, [r5, #24]
    mov r1, r8
    mov r2, r4
.Lsec01_00000d88:
    bl crc32
    str r0, [r5, #24]
.Lsec01_00000d90:
    ldr r3, [r5, #64]
    rsb r3, r4, r3
    str r3, [r5, #64]
    rsb sl, r4, sl
    add r8, r8, r4
.Lsec01_00000da4:
    ldr r3, [r5, #64]
    cmp r3, #0
    bne .Lsec01_00001c48
.Lsec01_00000db0:
    mov r3, #0
    str r3, [r5, #64]
    add r3, r3, #6
    strb r3, [r5]
.Lsec01_00000dc0:
    ldr r3, [r5, #16]
    ands r3, r3, #2048
    beq .Lsec01_00000e58
    cmp sl, #0
    beq .Lsec01_00001c48
    mov r4, #0
.Lsec01_00000dd8:
    ldr r3, [r5, #32]
    cmp r3, #0
    ldrb r1, [r4, r8]
    add r4, r4, #1
    beq .Lsec01_00000e10
    ldr r0, [r3, #28]
    cmp r0, #0
    beq .Lsec01_00000e10
    ldr r3, [r3, #32]
    ldr r2, [r5, #64]
    cmp r2, r3
    add r3, r2, #1
    strccb r1, [r0, r2]
    strcc r3, [r5, #64]
.Lsec01_00000e10:
    subs fp, r1, #0
    movne fp, #1
    cmp r1, #0
    cmpne r4, sl
    bcc .Lsec01_00000dd8
    ldr r3, [r5, #16]
    tst r3, #512
    beq .Lsec01_00000e44
    ldr r0, [r5, #24]
    mov r1, r8
    mov r2, r4
.Lsec01_00000e3c:
    bl crc32
    str r0, [r5, #24]
.Lsec01_00000e44:
    cmp fp, #0
    add r8, r8, r4
    rsb sl, r4, sl
    beq .Lsec01_00000e64
    b .Lsec01_00001c48
.Lsec01_00000e58:
    ldr r2, [r5, #32]
    cmp r2, #0
    strne r3, [r2, #28]
.Lsec01_00000e64:
    mov r3, #0
    str r3, [r5, #64]
    add r3, r3, #7
    strb r3, [r5]
.Lsec01_00000e74:
    ldr r3, [r5, #16]
    ands r3, r3, #4096
    beq .Lsec01_00000f0c
    cmp sl, #0
    beq .Lsec01_00001c48
    mov r4, #0
.Lsec01_00000e8c:
    ldr r3, [r5, #32]
    cmp r3, #0
    ldrb r1, [r4, r8]
    add r4, r4, #1
    beq .Lsec01_00000ec4
    ldr r0, [r3, #36]
    cmp r0, #0
    beq .Lsec01_00000ec4
    ldr r3, [r3, #40]
    ldr r2, [r5, #64]
    cmp r2, r3
    add r3, r2, #1
    strccb r1, [r0, r2]
    strcc r3, [r5, #64]
.Lsec01_00000ec4:
    subs fp, r1, #0
    movne fp, #1
    cmp r1, #0
    cmpne r4, sl
    bcc .Lsec01_00000e8c
    ldr r3, [r5, #16]
    tst r3, #512
    beq .Lsec01_00000ef8
    ldr r0, [r5, #24]
    mov r1, r8
    mov r2, r4
.Lsec01_00000ef0:
    bl crc32
    str r0, [r5, #24]
.Lsec01_00000ef8:
    cmp fp, #0
    add r8, r8, r4
    rsb sl, r4, sl
    beq .Lsec01_00000f18
    b .Lsec01_00001c48
.Lsec01_00000f0c:
    ldr r2, [r5, #32]
    cmp r2, #0
    strne r3, [r2, #36]
.Lsec01_00000f18:
    mov r3, #8
    strb r3, [r5]
.Lsec01_00000f20:
    ldr r0, [r5, #16]
    tst r0, #512
    movne r2, r8
    bne .Lsec01_00000f50
    b .Lsec01_00000f74
.Lsec01_00000f34:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00000f50:
    cmp r6, #15
    mov r8, r2
    bls .Lsec01_00000f34
    ldrh r3, [r5, #24]
    cmp r7, r3
    ldrne r3, [pc, #2512]
    bne .Lsec01_00001c20
    mov r6, #0
    mov r7, r6
.Lsec01_00000f74:
    ldr r1, [r5, #32]
    cmp r1, #0
    movne r3, r0, asr #9
    andne r3, r3, #1
    movne r2, #1
    mov r0, #0
    strne r2, [r1, #48]
    strne r3, [r1, #44]
    mov r2, r0
    mov r1, r0
.Lsec01_00000f9c:
    bl crc32
    mov r3, #11
.Lsec01_00000fa4:
    str r0, [r5, #24]
    strb r3, [r5]
    str r0, [r9, #48]
    b .Lsec01_000008d0
.Lsec01_00000fb4:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00000fd0:
    cmp r6, #31
    mov r8, r2
    bls .Lsec01_00000fb4
    mov r3, r7, lsr #8
    and r2, r7, #65280
    and r3, r3, #65280
    mov r2, r2, lsl #8
    add r2, r2, r7, lsl #24
    add r3, r3, r7, lsr #24
    add r3, r3, r2
    mov r2, #10
    str r3, [r5, #24]
    mov r6, #0
    strb r2, [r5]
    str r3, [r9, #48]
    mov r7, r6
.Lsec01_00001010:
    ldr r3, [r5, #12]
    cmp r3, #0
    bne .Lsec01_00001048
    ldr r2, [sp, #24]
    ldr r3, [sp, #20]
    mov r1, #2
    str sl, [r9, #4]
    str r2, [r9, #16]
    str r1, [sp, #32]
    str r6, [r5, #60]
    str r3, [r9, #12]
    str r8, [r9]
    str r7, [r5, #56]
    b .Lsec01_00001da4
.Lsec01_00001048:
    mov r0, #0
    mov r1, r0
    mov r2, r0
.Lsec01_00001054:
    bl adler32
    mov r3, #11
    str r0, [r5, #24]
    strb r3, [r5]
    str r0, [r9, #48]
.Lsec01_00001068:
    ldr r4, [sp, #8]
    cmp r4, #5
    beq .Lsec01_00001c48
.Lsec01_00001074:
    ldr r3, [r5, #4]
    cmp r3, #0
    moveq r2, r8
    beq .Lsec01_000010b4
    and r3, r6, #7
    mov r7, r7, lsr r3
    bic r6, r6, #7
    mov r3, #24
    b .Lsec01_00001c28
.Lsec01_00001098:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_000010b4:
    cmp r6, #2
    mov r8, r2
    bls .Lsec01_00001098
    mov r1, r7, lsr #1
    and r2, r7, #1
    and r3, r1, #3
    str r2, [r5, #4]
    cmp r3, #3
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00001134
    .long .Lsec01_000010ec
    .long .Lsec01_000010f4
    .long .Lsec01_0000111c
    .long .Lsec01_00001124
.arm
.Lsec01_000010ec:
    mov r3, #13
    b .Lsec01_00001130
.Lsec01_000010f4:
    ldr r3, [pc, #2116]
    str r3, [r5, #76]
    mov r3, #9
    str r3, [r5, #84]
    ldr r3, [pc, #2104]
    str r3, [r5, #80]
    mov r3, #5
    str r3, [r5, #88]
    add r3, r3, #13
    b .Lsec01_00001130
.Lsec01_0000111c:
    mov r3, #15
    b .Lsec01_00001130
.Lsec01_00001124:
    ldr r3, [pc, #2076]
    str r3, [r9, #24]
    mov r3, #27
.Lsec01_00001130:
    strb r3, [r5]
.Lsec01_00001134:
    mov r7, r1, lsr #2
    sub r6, r6, #3
    b .Lsec01_000008d0
.Lsec01_00001140:
    and r3, r6, #7
    mov r7, r7, lsr r3
    bic r6, r6, #7
    mov r2, r8
    b .Lsec01_00001170
.Lsec01_00001154:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00001170:
    cmp r6, #31
    mov r8, r2
    bls .Lsec01_00001154
    ldr r3, [pc, #1992]
    mov r2, r7, lsl #16
    eor r3, r3, r7, lsr #16
    mov r2, r2, lsr #16
    cmp r2, r3
    ldrne r3, [pc, #1976]
    bne .Lsec01_00001c20
    mov r3, #14
    mov r6, #0
    str r2, [r5, #64]
    strb r3, [r5]
    mov r7, r6
.Lsec01_000011ac:
    ldr r3, [r5, #64]
    cmp r3, #0
    beq .Lsec01_00001794
    ldr r4, [sp, #24]
    cmp sl, r3
    movcc r3, sl
    cmp r4, r3
    movcs r4, r3
    cmp r4, #0
    beq .Lsec01_00001c48
    mov r1, r8
    ldr r0, [sp, #20]
    mov r2, r4
.Lsec01_000011e0:
    bl memcpy
    ldr r3, [r5, #64]
    add r0, sp, #20
    ldmia r0, {r0, ip}
    rsb r3, r4, r3
    rsb ip, r4, ip
    add r0, r0, r4
    rsb sl, r4, sl
    add r8, r8, r4
    str ip, [sp, #24]
    str r0, [sp, #20]
    str r3, [r5, #64]
    b .Lsec01_000008d0
.Lsec01_00001214:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00001230:
    cmp r6, #13
    mov r8, r2
    bls .Lsec01_00001214
    and r1, r7, #31
    mov r0, r7, lsr #5
    mov r2, r7, lsr #10
    add r1, r1, #256
    ldr r3, [pc, #1792]
    add r1, r1, #1
    and r0, r0, #31
    and r2, r2, #15
    add r0, r0, #1
    add r2, r2, #4
    cmp r1, r3
    str r2, [r5, #92]
    str r1, [r5, #96]
    str r0, [r5, #100]
    mov r7, r7, lsr #14
    sub r6, r6, #14
    bhi .Lsec01_00001288
    cmp r0, #30
    bls .Lsec01_00001290
.Lsec01_00001288:
    ldr r3, [pc, #1736]
    b .Lsec01_00001c20
.Lsec01_00001290:
    mov r3, #0
    str r3, [r5, #104]
    add r3, r3, #16
    strb r3, [r5]
    b .Lsec01_000012f4
.Lsec01_000012a4:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_000012c0:
    cmp r6, #2
    mov r8, r2
    bls .Lsec01_000012a4
    ldr r3, [pc, #1672]
    mov r2, r1, lsl #1
    ldrh r3, [r2, r3]
    add r1, r1, #1
    and r2, r7, #7
    add r3, r5, r3, lsl #1
    strh r2, [r3, #112]
    str r1, [r5, #104]
    mov r7, r7, lsr #3
    sub r6, r6, #3
.Lsec01_000012f4:
    ldr r1, [r5, #104]
    ldr r3, [r5, #92]
    cmp r1, r3
    bcs .Lsec01_00001324
    mov r2, r8
    b .Lsec01_000012c0
.Lsec01_0000130c:
    ldr r3, [pc, #1608]
    ldrh r3, [r2, r3]
    str r1, [r5, #104]
    add r3, r5, r3, lsl #1
    mov r1, #0
    strh r1, [r3, #112]
.Lsec01_00001324:
    ldr r3, [r5, #104]
    cmp r3, #18
    mov r2, r3, lsl #1
    add r1, r3, #1
    bls .Lsec01_0000130c
    add r2, r5, #1328
    mov r3, #7
    str r2, [r5, #76]
    str r3, [r5, #84]
    str r2, [r5, #108]
    add r3, r5, #108
    add ip, r5, #84
    add lr, r5, #752
    mov r2, #19
    mov r0, #0
    add r1, r5, #112
    stmia sp, {ip, lr}
.Lsec01_00001368:
    bl inflate_table
    cmp r0, #0
    str r0, [sp, #32]
    moveq r3, #17
    ldrne r3, [pc, #1504]
    streqb r3, [r5]
    ldreq r2, [sp, #32]
    beq .Lsec01_00001424
    b .Lsec01_00001c20
.Lsec01_0000138c:
    ldr r2, [r5, #84]
    mvn r3, #0
    ldr lr, [r5, #76]
    mvn r4, r3, lsl r2
    mov r2, r8
.Lsec01_000013a0:
    and r3, r7, r4
    add r3, lr, r3, lsl #2
    ldrb r1, [r3, #1]
    cmp r1, r6
    mov r8, r2
    ldrh r0, [r3, #2]
    bls .Lsec01_000013dc
    cmp sl, #0
    add r2, r2, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    add r7, r7, r3, lsl r6
    sub sl, sl, #1
    add r6, r6, #8
    b .Lsec01_000013a0
.Lsec01_000013dc:
    cmp r0, #15
    bhi .Lsec01_0000142c
    b .Lsec01_00001404
.Lsec01_000013e8:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00001404:
    cmp r6, r1
    mov r8, r2
    bcc .Lsec01_000013e8
    mov r7, r7, lsr r1
    add r3, r5, ip, lsl #1
    strh r0, [r3, #112]
    rsb r6, r1, r6
    add r2, ip, #1
.Lsec01_00001424:
    str r2, [r5, #104]
    b .Lsec01_0000155c
.Lsec01_0000142c:
    cmp r0, #16
    bne .Lsec01_00001490
    b .Lsec01_00001454
.Lsec01_00001438:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00001454:
    add r3, r1, #2
    cmp r6, r3
    mov r8, r2
    bcc .Lsec01_00001438
    cmp ip, #0
    rsb r6, r1, r6
    mov r7, r7, lsr r1
    beq .Lsec01_00001538
    add r3, r5, ip, lsl #1
    ldrh r1, [r3, #110]
    and r3, r7, #3
    add r0, r3, #3
    mov r7, r7, lsr #2
    sub r6, r6, #2
    b .Lsec01_0000152c
.Lsec01_00001490:
    cmp r0, #17
    bne .Lsec01_00001500
    b .Lsec01_000014b8
.Lsec01_0000149c:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_000014b8:
    add r3, r1, #3
    cmp r6, r3
    mov r8, r2
    bcc .Lsec01_0000149c
    mov r3, r7, lsr r1
    rsb r1, r1, r6
    and r2, r3, #7
    add r0, r2, #3
    mov r7, r3, lsr #3
    sub r6, r1, #3
    b .Lsec01_00001528
.Lsec01_000014e4:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00001500:
    add r3, r1, #7
    cmp r6, r3
    mov r8, r2
    bcc .Lsec01_000014e4
    mov r3, r7, lsr r1
    rsb r1, r1, r6
    and r2, r3, #127
    add r0, r2, #11
    mov r7, r3, lsr #7
    sub r6, r1, #7
.Lsec01_00001528:
    mov r1, #0
.Lsec01_0000152c:
    add r3, ip, r0
    cmp r3, fp
    bls .Lsec01_00001554
.Lsec01_00001538:
    ldr r3, [pc, #1060]
    b .Lsec01_00001c20
.Lsec01_00001540:
    ldr r3, [r5, #104]
    add r2, r3, #1
    add r3, r5, r3, lsl #1
    strh r1, [r3, #112]
    str r2, [r5, #104]
.Lsec01_00001554:
    subs r0, r0, #1
    bcs .Lsec01_00001540
.Lsec01_0000155c:
    add r3, r5, #96
    ldmia r3, {r3, fp}
    add fp, r3, fp
    ldr ip, [r5, #104]
    cmp ip, fp
    bcc .Lsec01_0000138c
    ldrb r3, [r5]
    cmp r3, #27
    beq .Lsec01_000008d0
    add r3, r5, #1328
    add r4, r5, #752
    add r1, r5, #84
    mov r2, #9
    str r3, [r5, #76]
    str r2, [r5, #84]
    str r3, [r5, #108]
    stmia sp, {r1, r4}
    str r4, [sp, #12]
    add fp, r5, #112
    add r4, r5, #108
    mov r3, r4
    mov r0, #1
    mov r1, fp
    ldr r2, [r5, #96]
.Lsec01_000015bc:
    bl inflate_table
    cmp r0, #0
    str r0, [sp, #32]
    ldrne r3, [pc, #920]
    bne .Lsec01_00001c20
    ldr r3, [r5, #108]
    ldr ip, [sp, #12]
    str r3, [r5, #80]
    add r2, r5, #88
    mov r3, #6
    str r3, [r5, #88]
    ldr r1, [r5, #96]
    stmia sp, {r2, ip}
    mov r3, r4
    add r1, fp, r1, lsl #1
    mov r0, #2
    ldr r2, [r5, #100]
.Lsec01_00001600:
    bl inflate_table
    cmp r0, #0
    str r0, [sp, #32]
    ldrne r3, [pc, #856]
    bne .Lsec01_00001c20
    mov r3, #18
    strb r3, [r5]
.Lsec01_0000161c:
    ldr r3, [pc, #844]
    ldr r0, [sp, #24]
    cmp sl, #5
    cmphi r0, r3
    bls .Lsec01_00001678
    ldr r1, [sp, #20]
    str r0, [r9, #16]
    str sl, [r9, #4]
    str r1, [r9, #12]
    str r8, [r9]
    str r7, [r5, #56]
    str r6, [r5, #60]
    mov r0, r9
    ldr r1, [sp, #28]
.Lsec01_00001654:
    bl inflate_fast
    add r2, r9, #12
    ldmia r2, {r2, r3}
    ldmia r9, {r8, sl}
    ldr r7, [r5, #56]
    ldr r6, [r5, #60]
    str r2, [sp, #20]
    str r3, [sp, #24]
    b .Lsec01_000008d0
.Lsec01_00001678:
    ldr r2, [r5, #84]
    mvn r3, #0
    mvn r0, r3, lsl r2
    ldr r4, [r5, #76]
    str r4, [sp, #16]
    mov r1, r8
.Lsec01_00001690:
    ldr ip, [sp, #16]
    and r3, r7, r0
    mov r3, r3, lsl #2
    add r2, ip, r3
    ldrb lr, [r2, #1]
    cmp lr, r6
    ldrb ip, [ip, r3]
    mov r8, r1
    ldrh fp, [r2, #2]
    bls .Lsec01_000016d8
    cmp sl, #0
    add r1, r1, #1
    beq .Lsec01_00001c48
    ldrb r3, [r1, #-1]
    add r7, r7, r3, lsl r6
    sub sl, sl, #1
    add r6, r6, #8
    b .Lsec01_00001690
.Lsec01_000016d8:
    cmp ip, #0
    moveq r7, r7, lsr lr
    rsbeq r6, lr, r6
    streq fp, [r5, #64]
    beq .Lsec01_00001784
    tst ip, #240
    str ip, [sp, #40]
    movne r7, r7, lsr lr
    rsbne r6, lr, r6
    strne fp, [r5, #64]
    bne .Lsec01_0000178c
    mov r0, r1
.Lsec01_00001708:
    ldr r1, [sp, #40]
    mvn r3, #0
    add r2, lr, r1
    bic r3, r7, r3, lsl r2
    add r3, fp, r3, lsr lr
    ldr r2, [sp, #16]
    mov r3, r3, lsl #2
    add r1, r2, r3
    ldrb r4, [r1, #1]
    mov r8, r0
    add r2, lr, r4
    ldr r0, [sp, #16]
    cmp r2, r6
    ldrb ip, [r0, r3]
    ldrh r1, [r1, #2]
    bls .Lsec01_00001768
    cmp sl, #0
    add r0, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r0, #-1]
    add r7, r7, r3, lsl r6
    sub sl, sl, #1
    add r6, r6, #8
    b .Lsec01_00001708
.Lsec01_00001768:
    mov r2, r7, lsr lr
    rsb r3, lr, r6
    cmp ip, #0
    rsb r6, r4, r3
    str r1, [r5, #64]
    mov r7, r2, lsr r4
    bne .Lsec01_0000178c
.Lsec01_00001784:
    mov r3, #23
    b .Lsec01_00001c28
.Lsec01_0000178c:
    tst ip, #32
    beq .Lsec01_0000179c
.Lsec01_00001794:
    mov r3, #11
    b .Lsec01_00001c28
.Lsec01_0000179c:
    tst ip, #64
    ldrne r3, [pc, #460]
    bne .Lsec01_00001c20
    and r3, ip, #15
    str r3, [r5, #72]
    mov r3, #19
    strb r3, [r5]
.Lsec01_000017b8:
    ldr r1, [r5, #72]
    cmp r1, #0
    movne r2, r8
    bne .Lsec01_000017e8
    b .Lsec01_00001814
.Lsec01_000017cc:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_000017e8:
    cmp r6, r1
    mov r8, r2
    bcc .Lsec01_000017cc
    mvn r3, #0
    bic r3, r7, r3, lsl r1
    ldr r1, [r5, #72]
    mov r7, r7, lsr r1
    ldr r2, [r5, #64]
    add r2, r2, r3
    str r2, [r5, #64]
    rsb r6, r1, r6
.Lsec01_00001814:
    mov r3, #20
    strb r3, [r5]
.Lsec01_0000181c:
    ldr r2, [r5, #88]
    mvn r3, #0
    mvn ip, r3, lsl r2
    ldr r4, [r5, #80]
    mov r1, r8
.Lsec01_00001830:
    and r3, r7, ip
    mov r3, r3, lsl #2
    add r2, r4, r3
    ldrb r0, [r2, #1]
    cmp r0, r6
    ldrb r3, [r4, r3]
    mov r8, r1
    ldrh r2, [r2, #2]
    bls .Lsec01_00001874
    cmp sl, #0
    add r1, r1, #1
    beq .Lsec01_00001c48
    ldrb r3, [r1, #-1]
    add r7, r7, r3, lsl r6
    sub sl, sl, #1
    add r6, r6, #8
    b .Lsec01_00001830
.Lsec01_00001874:
    tst r3, #240
    str r2, [sp, #36]
    mov ip, r0
    mov fp, r3
    bne .Lsec01_000018ec
    mov lr, r1
.Lsec01_0000188c:
    add r2, ip, fp
    mvn r3, #0
    bic r3, r7, r3, lsl r2
    ldr r1, [sp, #36]
    add r3, r1, r3, lsr ip
    mov r3, r3, lsl #2
    add r1, r4, r3
    ldrb r0, [r1, #1]
    add r2, ip, r0
    cmp r2, r6
    mov r8, lr
    ldrb r3, [r4, r3]
    ldrh r2, [r1, #2]
    bls .Lsec01_000018e4
    cmp sl, #0
    add lr, lr, #1
    beq .Lsec01_00001c48
    ldrb r3, [lr, #-1]
    add r7, r7, r3, lsl r6
    sub sl, sl, #1
    add r6, r6, #8
    b .Lsec01_0000188c
.Lsec01_000018e4:
    mov r7, r7, lsr ip
    rsb r6, ip, r6
.Lsec01_000018ec:
    tst r3, #64
    rsb r6, r0, r6
    mov r7, r7, lsr r0
    ldrne r3, [pc, #120]
    bne .Lsec01_00001c20
    and r3, r3, #15
    str r3, [r5, #72]
    mov r3, #21
    str r2, [r5, #68]
    strb r3, [r5]
.Lsec01_00001914:
    ldr r1, [r5, #72]
    cmp r1, #0
    movne r2, r8
    bne .Lsec01_000019a4
    b .Lsec01_000019d0
    .long 0x00008b1f
    .long .Lsec05_00000000
    .long .Lsec05_00000034
    .long .Lsec05_00000018
    .long .Lsec05_00000048
    .long .Lsec05_00000064
    .long .Lsec06_000000a6
    .long .Lsec06_00000026
    .long .Lsec05_00000078
    .long 0x0000ffff
    .long .Lsec05_0000008c
    .long 0x0000011e
    .long .Lsec05_000000ac
    .long .Lsec06_00000000
    .long .Lsec05_000000d0
    .long .Lsec05_000000ec
    .long .Lsec05_00000108
    .long .Lsec05_00000124
    .long 0x00000101
    .long .Lsec05_0000013c
    .long .Lsec05_00000158
    .long .Lsec05_00000170
    .long .Lsec05_00000190
    .long .Lsec05_000001a8
.arm
.Lsec01_00001988:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_000019a4:
    cmp r6, r1
    mov r8, r2
    bcc .Lsec01_00001988
    mvn r3, #0
    bic r3, r7, r3, lsl r1
    ldr r1, [r5, #72]
    mov r7, r7, lsr r1
    ldr r2, [r5, #68]
    add r2, r2, r3
    str r2, [r5, #68]
    rsb r6, r1, r6
.Lsec01_000019d0:
    ldr r2, [sp, #28]
    ldr r3, [r5, #44]
    ldr r4, [sp, #24]
    add r3, r2, r3
    ldr r2, [r5, #68]
    rsb r3, r4, r3
    cmp r2, r3
    ldrhi r3, [pc, #-120]
    bhi .Lsec01_00001c20
    mov r3, #22
    strb r3, [r5]
.Lsec01_000019fc:
    ldr ip, [sp, #24]
    cmp ip, #0
    beq .Lsec01_00001c48
    ldr r0, [sp, #28]
    ldr r3, [r5, #68]
    rsb r2, ip, r0
    cmp r3, r2
    ldrls r2, [sp, #20]
    ldrls r1, [r5, #64]
    rsbls r0, r3, r2
    bls .Lsec01_00001a58
    ldr r1, [r5, #48]
    rsb r2, r2, r3
    cmp r2, r1
    rsbhi r2, r1, r2
    ldrhi r3, [r5, #40]
    rsbls r3, r2, r1
    ldr r1, [r5, #64]
    ldr r0, [r5, #52]
    rsbhi r3, r2, r3
    cmp r2, r1
    add r0, r3, r0
    movls r1, r2
.Lsec01_00001a58:
    ldr r4, [sp, #24]
    ldr r3, [r5, #64]
    cmp r4, r1
    movcc r1, r4
    rsb r3, r1, r3
    rsb r4, r1, r4
    str r3, [r5, #64]
    str r4, [sp, #24]
    ldr ip, [sp, #20]
    mov r2, r1
.Lsec01_00001a80:
    ldrb r3, [r0], #1
    subs r2, r2, #1
    strb r3, [ip], #1
    bne .Lsec01_00001a80
    ldr r3, [r5, #64]
    ldr ip, [sp, #20]
    cmp r3, #0
    add ip, ip, r1
    str ip, [sp, #20]
    addeq r3, r3, #18
    beq .Lsec01_00001c28
    b .Lsec01_000008d0
.Lsec01_00001ab0:
    ldr r0, [sp, #24]
    cmp r0, #0
    beq .Lsec01_00001c48
    ldr r3, [r5, #64]
    ldr r1, [sp, #20]
    strb r3, [r1], #1
    sub r0, r0, #1
    mov r3, #18
    str r1, [sp, #20]
    str r0, [sp, #24]
    b .Lsec01_00001c28
.Lsec01_00001adc:
    ldr r3, [r5, #8]
    cmp r3, #0
    movne r2, r8
    bne .Lsec01_00001b0c
    b .Lsec01_00001bc0
.Lsec01_00001af0:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00001b0c:
    cmp r6, #31
    mov r8, r2
    bls .Lsec01_00001af0
    ldr r4, [sp, #28]
    ldr ip, [sp, #24]
    ldr r3, [r9, #20]
    rsb r2, ip, r4
    add r3, r3, r2
    str r3, [r9, #20]
    ldr r3, [r5, #28]
    cmp r2, #0
    add r3, r3, r2
    str r3, [r5, #28]
    beq .Lsec01_00001b70
    ldr r3, [r5, #16]
    cmp r3, #0
    ldr r3, [sp, #20]
    ldr r0, [r5, #24]
    rsb r1, r2, r3
    beq .Lsec01_00001b64
.Lsec01_00001b5c:
    bl crc32
    b .Lsec01_00001b68
.Lsec01_00001b64:
    bl adler32
.Lsec01_00001b68:
    str r0, [r5, #24]
    str r0, [r9, #48]
.Lsec01_00001b70:
    ldr r3, [r5, #16]
    cmp r3, #0
    andeq r3, r7, #65280
    moveq r2, r7, lsr #8
    moveq r3, r3, lsl #8
    andeq r2, r2, #65280
    addeq r3, r3, r7, lsl #24
    addeq r2, r2, r7, lsr #24
    addeq r2, r2, r3
    ldr r3, [r5, #24]
    movne r2, r7
    cmp r2, r3
    ldrne r4, [sp, #24]
    ldrne r3, [pc, #-556]
    strne r4, [sp, #28]
    bne .Lsec01_00001c20
    ldr ip, [sp, #24]
    mov r6, #0
    str ip, [sp, #28]
    mov r7, r6
.Lsec01_00001bc0:
    mov r3, #25
    strb r3, [r5]
.Lsec01_00001bc8:
    ldr r3, [r5, #8]
    cmp r3, #0
    beq .Lsec01_00001c38
    ldr r3, [r5, #16]
    cmp r3, #0
    beq .Lsec01_00001c38
    mov r2, r8
    b .Lsec01_00001c04
.Lsec01_00001be8:
    cmp sl, #0
    add r2, r8, #1
    beq .Lsec01_00001c48
    ldrb r3, [r2, #-1]
    sub sl, sl, #1
    add r7, r7, r3, lsl r6
    add r6, r6, #8
.Lsec01_00001c04:
    cmp r6, #31
    mov r8, r2
    bls .Lsec01_00001be8
    ldr r3, [r5, #28]
    cmp r7, r3
    beq .Lsec01_00001c30
    ldr r3, [pc, #-672]
.Lsec01_00001c20:
    str r3, [r9, #24]
    mov r3, #27
.Lsec01_00001c28:
    strb r3, [r5]
    b .Lsec01_000008d0
.Lsec01_00001c30:
    mov r6, #0
    mov r7, r6
.Lsec01_00001c38:
    mov r3, #26
    strb r3, [r5]
.Lsec01_00001c40:
    mov r0, #1
    str r0, [sp, #32]
.Lsec01_00001c48:
    ldr r1, [sp, #24]
    str sl, [r9, #4]
    str r1, [r9, #16]
    ldr r3, [r5, #40]
    ldr r2, [sp, #20]
    cmp r3, #0
    str r2, [r9, #12]
    str r8, [r9]
    str r7, [r5, #56]
    str r6, [r5, #60]
    bne .Lsec01_00001c90
    ldrb r3, [r5]
    cmp r3, #23
    bhi .Lsec01_00001cb4
    ldr r3, [r9, #16]
    ldr r4, [sp, #28]
    cmp r4, r3
    beq .Lsec01_00001cb4
.Lsec01_00001c90:
    mov r0, r9
    ldr r1, [sp, #28]
    bl updatewindow
    cmp r0, #0
    mvnne ip, #3
    movne r3, #28
    strne ip, [sp, #32]
    strneb r3, [r5]
    bne .Lsec01_00001da4
.Lsec01_00001cb4:
    ldr r1, [r9, #16]
    ldr ip, [sp, #28]
    ldr r0, [r9, #4]
    rsb r4, r1, ip
    ldr r1, [sp, #44]
    ldr r3, [r9, #8]
    ldr r2, [r9, #20]
    rsb r6, r0, r1
    add r3, r3, r6
    add r2, r2, r4
    str r2, [r9, #20]
    str r3, [r9, #8]
    ldr r2, [r5, #8]
    ldr r3, [r5, #28]
    cmp r2, #0
    cmpne r4, #0
    add r3, r3, r4
    str r3, [r5, #28]
    beq .Lsec01_00001d38
    ldr r3, [r5, #16]
    cmp r3, #0
    ldr r1, [r9, #12]
    ldr r0, [r5, #24]
    beq .Lsec01_00001d24
    rsb r1, r4, r1
    mov r2, r4
.Lsec01_00001d1c:
    bl crc32
    b .Lsec01_00001d30
.Lsec01_00001d24:
    rsb r1, r4, r1
    mov r2, r4
.Lsec01_00001d2c:
    bl adler32
.Lsec01_00001d30:
    str r0, [r5, #24]
    str r0, [r9, #48]
.Lsec01_00001d38:
    ldrb r0, [r5]
    ldr r1, [r5, #4]
    cmp r0, #11
    moveq r0, #128
    movne r0, #0
    cmp r1, #0
    movne r1, #64
    moveq r1, #0
    ldr r3, [r5, #60]
    orrs r6, r6, r4
    ldr r4, [sp, #8]
    movne r2, #0
    moveq r2, #1
    cmp r4, #4
    orreq r2, r2, #1
    add r3, r3, r0
    add r1, r1, r3
    cmp r2, #0
    str r1, [r9, #44]
    beq .Lsec01_00001da4
    ldr ip, [sp, #32]
    cmp ip, #0
    mvneq r0, #4
    streq r0, [sp, #32]
    b .Lsec01_00001da4
.Lsec01_00001d9c:
    mvn r1, #1
    str r1, [sp, #32]
.Lsec01_00001da4:
    ldr r0, [sp, #32]
    add sp, sp, #60
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "incorrect header check"
    .asciz ""
.Lsec05_00000018:
    .asciz "unknown compression method"
    .asciz ""
.Lsec05_00000034:
    .asciz "invalid window size"
.Lsec05_00000048:
    .asciz "unknown header flags set"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000064:
    .asciz "header crc mismatch"
.Lsec05_00000078:
    .asciz "invalid block type"
    .asciz ""
.Lsec05_0000008c:
    .asciz "invalid stored block lengths"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000000ac:
    .asciz "too many length or distance symbols"
.Lsec05_000000d0:
    .asciz "invalid code lengths set"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000000ec:
    .asciz "invalid bit length repeat"
    .asciz ""
    .asciz ""
.Lsec05_00000108:
    .asciz "invalid literal/lengths set"
.Lsec05_00000124:
    .asciz "invalid distances set"
    .asciz ""
    .asciz ""
.Lsec05_0000013c:
    .asciz "invalid literal/length code"
.Lsec05_00000158:
    .asciz "invalid distance code"
    .asciz ""
    .asciz ""
.Lsec05_00000170:
    .asciz "invalid distance too far back"
    .asciz ""
    .asciz ""
.Lsec05_00000190:
    .asciz "incorrect data check"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000001a8:
    .asciz "incorrect length check"
    .asciz ""

.section .rodata,"a",%progbits
.balign 2
order.2658:
.Lsec06_00000000:
    .long 0x00110010
    .long 0x00000012
    .long 0x00070008
    .long 0x00060009
    .long 0x0005000a
    .long 0x0004000b
    .long 0x0003000c
    .long 0x0002000d
    .long 0x0001000e
    .short 0x000f
distfix.2607:
.Lsec06_00000026:
    .short 0x0510
    .long 0x05170001
    .long 0x05130101
    .long 0x051b0011
    .long 0x05111001
    .long 0x05190005
    .long 0x05150401
    .long 0x051d0041
    .long 0x05104001
    .long 0x05180003
    .long 0x05140201
    .long 0x051c0021
    .long 0x05122001
    .long 0x051a0009
    .long 0x05160801
    .long 0x05400081
    .long 0x05100000
    .long 0x05170002
    .long 0x05130181
    .long 0x051b0019
    .long 0x05111801
    .long 0x05190007
    .long 0x05150601
    .long 0x051d0061
    .long 0x05106001
    .long 0x05180004
    .long 0x05140301
    .long 0x051c0031
    .long 0x05123001
    .long 0x051a000d
    .long 0x05160c01
    .long 0x054000c1
    .short 0x0000
lenfix.2606:
.Lsec06_000000a6:
    .short 0x0760
    .long 0x08000000
    .long 0x08000050
    .long 0x08140010
    .long 0x07120073
    .long 0x0800001f
    .long 0x08000070
    .long 0x09000030
    .long 0x071000c0
    .long 0x0800000a
    .long 0x08000060
    .long 0x09000020
    .long 0x080000a0
    .long 0x08000000
    .long 0x08000080
    .long 0x09000040
    .long 0x071000e0
    .long 0x08000006
    .long 0x08000058
    .long 0x09000018
    .long 0x07130090
    .long 0x0800003b
    .long 0x08000078
    .long 0x09000038
    .long 0x071100d0
    .long 0x08000011
    .long 0x08000068
    .long 0x09000028
    .long 0x080000b0
    .long 0x08000008
    .long 0x08000088
    .long 0x09000048
    .long 0x071000f0
    .long 0x08000004
    .long 0x08000054
    .long 0x08150014
    .long 0x071300e3
    .long 0x0800002b
    .long 0x08000074
    .long 0x09000034
    .long 0x071100c8
    .long 0x0800000d
    .long 0x08000064
    .long 0x09000024
    .long 0x080000a8
    .long 0x08000004
    .long 0x08000084
    .long 0x09000044
    .long 0x071000e8
    .long 0x08000008
    .long 0x0800005c
    .long 0x0900001c
    .long 0x07140098
    .long 0x08000053
    .long 0x0800007c
    .long 0x0900003c
    .long 0x071200d8
    .long 0x08000017
    .long 0x0800006c
    .long 0x0900002c
    .long 0x080000b8
    .long 0x0800000c
    .long 0x0800008c
    .long 0x0900004c
    .long 0x071000f8
    .long 0x08000003
    .long 0x08000052
    .long 0x08150012
    .long 0x071300a3
    .long 0x08000023
    .long 0x08000072
    .long 0x09000032
    .long 0x071100c4
    .long 0x0800000b
    .long 0x08000062
    .long 0x09000022
    .long 0x080000a4
    .long 0x08000002
    .long 0x08000082
    .long 0x09000042
    .long 0x071000e4
    .long 0x08000007
    .long 0x0800005a
    .long 0x0900001a
    .long 0x07140094
    .long 0x08000043
    .long 0x0800007a
    .long 0x0900003a
    .long 0x071200d4
    .long 0x08000013
    .long 0x0800006a
    .long 0x0900002a
    .long 0x080000b4
    .long 0x0800000a
    .long 0x0800008a
    .long 0x0900004a
    .long 0x071000f4
    .long 0x08000005
    .long 0x08000056
    .long 0x08400016
    .long 0x07130000
    .long 0x08000033
    .long 0x08000076
    .long 0x09000036
    .long 0x071100cc
    .long 0x0800000f
    .long 0x08000066
    .long 0x09000026
    .long 0x080000ac
    .long 0x08000006
    .long 0x08000086
    .long 0x09000046
    .long 0x071000ec
    .long 0x08000009
    .long 0x0800005e
    .long 0x0900001e
    .long 0x0714009c
    .long 0x08000063
    .long 0x0800007e
    .long 0x0900003e
    .long 0x071200dc
    .long 0x0800001b
    .long 0x0800006e
    .long 0x0900002e
    .long 0x080000bc
    .long 0x0800000e
    .long 0x0800008e
    .long 0x0900004e
    .long 0x076000fc
    .long 0x08000000
    .long 0x08000051
    .long 0x08150011
    .long 0x07120083
    .long 0x0800001f
    .long 0x08000071
    .long 0x09000031
    .long 0x071000c2
    .long 0x0800000a
    .long 0x08000061
    .long 0x09000021
    .long 0x080000a2
    .long 0x08000001
    .long 0x08000081
    .long 0x09000041
    .long 0x071000e2
    .long 0x08000006
    .long 0x08000059
    .long 0x09000019
    .long 0x07130092
    .long 0x0800003b
    .long 0x08000079
    .long 0x09000039
    .long 0x071100d2
    .long 0x08000011
    .long 0x08000069
    .long 0x09000029
    .long 0x080000b2
    .long 0x08000009
    .long 0x08000089
    .long 0x09000049
    .long 0x071000f2
    .long 0x08000004
    .long 0x08000055
    .long 0x08100015
    .long 0x07130102
    .long 0x0800002b
    .long 0x08000075
    .long 0x09000035
    .long 0x071100ca
    .long 0x0800000d
    .long 0x08000065
    .long 0x09000025
    .long 0x080000aa
    .long 0x08000005
    .long 0x08000085
    .long 0x09000045
    .long 0x071000ea
    .long 0x08000008
    .long 0x0800005d
    .long 0x0900001d
    .long 0x0714009a
    .long 0x08000053
    .long 0x0800007d
    .long 0x0900003d
    .long 0x071200da
    .long 0x08000017
    .long 0x0800006d
    .long 0x0900002d
    .long 0x080000ba
    .long 0x0800000d
    .long 0x0800008d
    .long 0x0900004d
    .long 0x071000fa
    .long 0x08000003
    .long 0x08000053
    .long 0x08150013
    .long 0x071300c3
    .long 0x08000023
    .long 0x08000073
    .long 0x09000033
    .long 0x071100c6
    .long 0x0800000b
    .long 0x08000063
    .long 0x09000023
    .long 0x080000a6
    .long 0x08000003
    .long 0x08000083
    .long 0x09000043
    .long 0x071000e6
    .long 0x08000007
    .long 0x0800005b
    .long 0x0900001b
    .long 0x07140096
    .long 0x08000043
    .long 0x0800007b
    .long 0x0900003b
    .long 0x071200d6
    .long 0x08000013
    .long 0x0800006b
    .long 0x0900002b
    .long 0x080000b6
    .long 0x0800000b
    .long 0x0800008b
    .long 0x0900004b
    .long 0x071000f6
    .long 0x08000005
    .long 0x08000057
    .long 0x08400017
    .long 0x07130000
    .long 0x08000033
    .long 0x08000077
    .long 0x09000037
    .long 0x071100ce
    .long 0x0800000f
    .long 0x08000067
    .long 0x09000027
    .long 0x080000ae
    .long 0x08000007
    .long 0x08000087
    .long 0x09000047
    .long 0x071000ee
    .long 0x08000009
    .long 0x0800005f
    .long 0x0900001f
    .long 0x0714009e
    .long 0x08000063
    .long 0x0800007f
    .long 0x0900003f
    .long 0x071200de
    .long 0x0800001b
    .long 0x0800006f
    .long 0x0900002f
    .long 0x080000be
    .long 0x0800000f
    .long 0x0800008f
    .long 0x0900004f
    .long 0x076000fe
    .long 0x08000000
    .long 0x08000050
    .long 0x08140010
    .long 0x07120073
    .long 0x0800001f
    .long 0x08000070
    .long 0x09000030
    .long 0x071000c1
    .long 0x0800000a
    .long 0x08000060
    .long 0x09000020
    .long 0x080000a1
    .long 0x08000000
    .long 0x08000080
    .long 0x09000040
    .long 0x071000e1
    .long 0x08000006
    .long 0x08000058
    .long 0x09000018
    .long 0x07130091
    .long 0x0800003b
    .long 0x08000078
    .long 0x09000038
    .long 0x071100d1
    .long 0x08000011
    .long 0x08000068
    .long 0x09000028
    .long 0x080000b1
    .long 0x08000008
    .long 0x08000088
    .long 0x09000048
    .long 0x071000f1
    .long 0x08000004
    .long 0x08000054
    .long 0x08150014
    .long 0x071300e3
    .long 0x0800002b
    .long 0x08000074
    .long 0x09000034
    .long 0x071100c9
    .long 0x0800000d
    .long 0x08000064
    .long 0x09000024
    .long 0x080000a9
    .long 0x08000004
    .long 0x08000084
    .long 0x09000044
    .long 0x071000e9
    .long 0x08000008
    .long 0x0800005c
    .long 0x0900001c
    .long 0x07140099
    .long 0x08000053
    .long 0x0800007c
    .long 0x0900003c
    .long 0x071200d9
    .long 0x08000017
    .long 0x0800006c
    .long 0x0900002c
    .long 0x080000b9
    .long 0x0800000c
    .long 0x0800008c
    .long 0x0900004c
    .long 0x071000f9
    .long 0x08000003
    .long 0x08000052
    .long 0x08150012
    .long 0x071300a3
    .long 0x08000023
    .long 0x08000072
    .long 0x09000032
    .long 0x071100c5
    .long 0x0800000b
    .long 0x08000062
    .long 0x09000022
    .long 0x080000a5
    .long 0x08000002
    .long 0x08000082
    .long 0x09000042
    .long 0x071000e5
    .long 0x08000007
    .long 0x0800005a
    .long 0x0900001a
    .long 0x07140095
    .long 0x08000043
    .long 0x0800007a
    .long 0x0900003a
    .long 0x071200d5
    .long 0x08000013
    .long 0x0800006a
    .long 0x0900002a
    .long 0x080000b5
    .long 0x0800000a
    .long 0x0800008a
    .long 0x0900004a
    .long 0x071000f5
    .long 0x08000005
    .long 0x08000056
    .long 0x08400016
    .long 0x07130000
    .long 0x08000033
    .long 0x08000076
    .long 0x09000036
    .long 0x071100cd
    .long 0x0800000f
    .long 0x08000066
    .long 0x09000026
    .long 0x080000ad
    .long 0x08000006
    .long 0x08000086
    .long 0x09000046
    .long 0x071000ed
    .long 0x08000009
    .long 0x0800005e
    .long 0x0900001e
    .long 0x0714009d
    .long 0x08000063
    .long 0x0800007e
    .long 0x0900003e
    .long 0x071200dd
    .long 0x0800001b
    .long 0x0800006e
    .long 0x0900002e
    .long 0x080000bd
    .long 0x0800000e
    .long 0x0800008e
    .long 0x0900004e
    .long 0x076000fd
    .long 0x08000000
    .long 0x08000051
    .long 0x08150011
    .long 0x07120083
    .long 0x0800001f
    .long 0x08000071
    .long 0x09000031
    .long 0x071000c3
    .long 0x0800000a
    .long 0x08000061
    .long 0x09000021
    .long 0x080000a3
    .long 0x08000001
    .long 0x08000081
    .long 0x09000041
    .long 0x071000e3
    .long 0x08000006
    .long 0x08000059
    .long 0x09000019
    .long 0x07130093
    .long 0x0800003b
    .long 0x08000079
    .long 0x09000039
    .long 0x071100d3
    .long 0x08000011
    .long 0x08000069
    .long 0x09000029
    .long 0x080000b3
    .long 0x08000009
    .long 0x08000089
    .long 0x09000049
    .long 0x071000f3
    .long 0x08000004
    .long 0x08000055
    .long 0x08100015
    .long 0x07130102
    .long 0x0800002b
    .long 0x08000075
    .long 0x09000035
    .long 0x071100cb
    .long 0x0800000d
    .long 0x08000065
    .long 0x09000025
    .long 0x080000ab
    .long 0x08000005
    .long 0x08000085
    .long 0x09000045
    .long 0x071000eb
    .long 0x08000008
    .long 0x0800005d
    .long 0x0900001d
    .long 0x0714009b
    .long 0x08000053
    .long 0x0800007d
    .long 0x0900003d
    .long 0x071200db
    .long 0x08000017
    .long 0x0800006d
    .long 0x0900002d
    .long 0x080000bb
    .long 0x0800000d
    .long 0x0800008d
    .long 0x0900004d
    .long 0x071000fb
    .long 0x08000003
    .long 0x08000053
    .long 0x08150013
    .long 0x071300c3
    .long 0x08000023
    .long 0x08000073
    .long 0x09000033
    .long 0x071100c7
    .long 0x0800000b
    .long 0x08000063
    .long 0x09000023
    .long 0x080000a7
    .long 0x08000003
    .long 0x08000083
    .long 0x09000043
    .long 0x071000e7
    .long 0x08000007
    .long 0x0800005b
    .long 0x0900001b
    .long 0x07140097
    .long 0x08000043
    .long 0x0800007b
    .long 0x0900003b
    .long 0x071200d7
    .long 0x08000013
    .long 0x0800006b
    .long 0x0900002b
    .long 0x080000b7
    .long 0x0800000b
    .long 0x0800008b
    .long 0x0900004b
    .long 0x071000f7
    .long 0x08000005
    .long 0x08000057
    .long 0x08400017
    .long 0x07130000
    .long 0x08000033
    .long 0x08000077
    .long 0x09000037
    .long 0x071100cf
    .long 0x0800000f
    .long 0x08000067
    .long 0x09000027
    .long 0x080000af
    .long 0x08000007
    .long 0x08000087
    .long 0x09000047
    .long 0x071000ef
    .long 0x08000009
    .long 0x0800005f
    .long 0x0900001f
    .long 0x0714009f
    .long 0x08000063
    .long 0x0800007f
    .long 0x0900003f
    .long 0x071200df
    .long 0x0800001b
    .long 0x0800006f
    .long 0x0900002f
    .long 0x080000bf
    .long 0x0800000f
    .long 0x0800008f
    .long 0x0900004f
    .short 0x00ff

.size syncsearch, 88
.size updatewindow, 364
.size lenfix.2606, 2048
.size distfix.2607, 128
.size order.2658, 38
.size inflateReset, 136
.size inflatePrime, 96
.size inflateInit2_, 272
.size inflateInit_, 16
.size inflateEnd, 104
.size inflateGetHeader, 60
.size inflateSync, 300
.size inflateSyncPoint, 64
.size inflateCopy, 376
.size inflateSetDictionary, 244
.size inflate, 5484

.section .note.GNU-stack,"",%progbits
