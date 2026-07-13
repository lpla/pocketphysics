/* Reconstructed mnemonic source for inffast.o. */
.syntax unified
.arch armv5te

.global inflate_fast
.type inflate_fast, %function

.section .text,"ax",%progbits
.balign 4
.arm
inflate_fast:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr sl, [r0, #28]
    add r3, sl, #84
    ldmia r3, {r3, r4}
    mov lr, #1
    mov r4, lr, lsl r4
    mov lr, lr, lsl r3
    add r3, r0, #12
    ldmia r3, {r3, ip}
    sub r5, r3, #1
    ldr r2, [r0]
    add r3, r5, ip
    sub sp, sp, #52
    sub r3, r3, #256
    mov fp, r0
    ldr r0, [r0, #4]
    str r3, [sp, #12]
    sub r8, r2, #1
    add r2, sl, #40
    ldmia r2, {r2, r3}
    add r0, r8, r0
    sub r0, r0, #5
    str r2, [sp, #16]
    str r3, [sp, #20]
    add r2, sl, #48
    ldmia r2, {r2, r3}
    str r0, [sp, #4]
    ldr r0, [sp, #12]
    rsb r1, ip, r1
    str r2, [sp, #24]
    str r3, [sp, #28]
    add r2, sl, #76
    ldmia r2, {r2, r3}
    rsb r1, r1, r5
    sub r0, r0, #1
    sub lr, lr, #1
    sub r4, r4, #1
    ldr r7, [sl, #56]
    ldr r6, [sl, #60]
    str r2, [sp, #32]
    str r3, [sp, #36]
    str r1, [sp, #8]
    str r0, [sp, #12]
    str lr, [sp, #40]
    str r4, [sp, #44]
.Lsec01_000000b4:
    cmp r6, #14
    bhi .Lsec01_000000dc
    ldrb r3, [r8, #1]
    add r3, r7, r3, lsl r6
    add r0, r8, #1
    ldrb r1, [r0, #1]
    add r2, r6, #8
    add r7, r3, r1, lsl r2
    add r6, r2, #8
    add r8, r0, #1
.Lsec01_000000dc:
    ldr r1, [sp, #40]
    ldr lr, [sp, #32]
    and r3, r7, r1
    mov r3, r3, lsl #2
    ldrb r1, [lr, r3]
    add r2, lr, r3
.Lsec01_000000f4:
    ldrb r3, [r2, #1]
    cmp r1, #0
    ldrh r0, [r2, #2]
    rsb r6, r3, r6
    mov r7, r7, lsr r3
    beq .Lsec01_000003fc
    tst r1, #16
    beq .Lsec01_000003c4
    ands r2, r1, #15
    mov ip, r0
    beq .Lsec01_00000144
    cmp r6, r2
    ldrccb r3, [r8, #1]!
    addcc r7, r7, r3, lsl r6
    mvn r3, #0
    bic r3, r7, r3, lsl r2
    mov r7, r7, lsr r2
    addcc r6, r6, #8
    add ip, r0, r3
    rsb r6, r2, r6
.Lsec01_00000144:
    cmp r6, #14
    bhi .Lsec01_0000016c
    ldrb r3, [r8, #1]
    add r3, r7, r3, lsl r6
    add r0, r8, #1
    ldrb r1, [r0, #1]
    add r2, r6, #8
    add r7, r3, r1, lsl r2
    add r6, r2, #8
    add r8, r0, #1
.Lsec01_0000016c:
    ldr r0, [sp, #44]
    ldr r1, [sp, #36]
    and r3, r7, r0
    mov r3, r3, lsl #2
    add r2, r1, r3
    ldrb r1, [r1, r3]
.Lsec01_00000184:
    ldrb r3, [r2, #1]
    tst r1, #16
    ldrh r0, [r2, #2]
    rsb r6, r3, r6
    mov r7, r7, lsr r3
    beq .Lsec01_00000394
    and r2, r1, #15
    cmp r6, r2
    bcs .Lsec01_000001c4
    ldrb r3, [r8, #1]!
    add r7, r7, r3, lsl r6
    add r6, r6, #8
    cmp r6, r2
    ldrccb r3, [r8, #1]!
    addcc r7, r7, r3, lsl r6
    addcc r6, r6, #8
.Lsec01_000001c4:
    mvn r3, #0
    bic r3, r7, r3, lsl r2
    ldr lr, [sp, #8]
    add r9, r0, r3
    rsb r3, lr, r5
    cmp r9, r3
    movls r1, r5
    rsb r6, r2, r6
    mov r7, r7, lsr r2
    rsbls r2, r9, r1
    bls .Lsec01_00000348
    ldr r0, [sp, #20]
    rsb r1, r3, r9
    cmp r1, r0
    bhi .Lsec01_00000450
    add r2, sp, #24
    ldmia r2, {r2, r3}
    cmp r2, #0
    sub r4, r3, #1
    bne .Lsec01_00000254
    ldr lr, [sp, #16]
    rsb r3, r1, lr
    cmp r1, ip
    add r3, r4, r3
    movcc lr, r3
    movcc r0, r5
    movcc r2, r1
    bcc .Lsec01_00000240
.Lsec01_00000234:
    mov r1, r5
    mov r2, r3
    b .Lsec01_0000033c
.Lsec01_00000240:
    ldrb r3, [lr, #1]!
    subs r2, r2, #1
    strb r3, [r0, #1]!
    bne .Lsec01_00000240
    b .Lsec01_00000310
.Lsec01_00000254:
    ldr r0, [sp, #24]
    cmp r0, r1
    bcs .Lsec01_000002e0
    ldr r2, [sp, #16]
    ldr lr, [sp, #24]
    rsb r0, r0, r1
    add r3, r2, lr
    rsb r3, r1, r3
    cmp r0, ip
    add r3, r4, r3
    bcs .Lsec01_00000234
    rsb ip, r0, ip
    mov lr, r3
    mov r1, r5
    mov r2, r0
.Lsec01_00000290:
    ldrb r3, [lr, #1]!
    subs r2, r2, #1
    strb r3, [r1, #1]!
    bne .Lsec01_00000290
    ldr r1, [sp, #24]
    cmp r1, ip
    add r5, r5, r0
    movcs r3, r4
    bcs .Lsec01_00000234
    mov r1, r5
.Lsec01_000002b8:
    add r0, sp, #24
    ldmia r0, {r0, lr}
    ldrb r3, [r2, lr]
    add r2, r2, #1
    cmp r2, r0
    strb r3, [r1, #1]!
    bne .Lsec01_000002b8
    add r5, r5, r0
    rsb ip, r0, ip
    b .Lsec01_00000318
.Lsec01_000002e0:
    ldr r2, [sp, #24]
    cmp r1, ip
    rsb r3, r1, r2
    add r3, r4, r3
    bcs .Lsec01_00000234
    mov lr, r3
    mov r0, r5
    mov r2, r1
.Lsec01_00000300:
    ldrb r3, [lr, #1]!
    subs r2, r2, #1
    strb r3, [r0, #1]!
    bne .Lsec01_00000300
.Lsec01_00000310:
    add r5, r5, r1
    rsb ip, r1, ip
.Lsec01_00000318:
    rsb r3, r9, r5
    b .Lsec01_00000234
.Lsec01_00000320:
    ldrb r3, [r2, #1]
    strb r3, [r1, #1]
    ldrb r3, [r2, #2]
    strb r3, [r1, #2]
    ldrb r3, [r2, #3]!
    strb r3, [r1, #3]!
    sub ip, ip, #3
.Lsec01_0000033c:
    cmp ip, #2
    bhi .Lsec01_00000320
    b .Lsec01_0000036c
.Lsec01_00000348:
    ldrb r3, [r2, #1]
    strb r3, [r1, #1]
    ldrb r3, [r2, #2]
    strb r3, [r1, #2]
    sub ip, ip, #3
    ldrb r3, [r2, #3]!
    cmp ip, #2
    strb r3, [r1, #3]!
    bhi .Lsec01_00000348
.Lsec01_0000036c:
    cmp ip, #0
    mov r5, r1
    beq .Lsec01_00000400
    ldrb r3, [r2, #1]
    strb r3, [r5, #1]!
    cmp ip, #2
    add r3, r2, #1
    ldreqb r3, [r3, #1]
    streqb r3, [r5, #1]!
    b .Lsec01_00000400
.Lsec01_00000394:
    tst r1, #64
    bne .Lsec01_000003bc
    mvn r3, #0
    bic r3, r7, r3, lsl r1
    ldr lr, [sp, #36]
    add r3, r0, r3
    mov r3, r3, lsl #2
    ldrb r1, [lr, r3]
    add r2, lr, r3
    b .Lsec01_00000184
.Lsec01_000003bc:
    ldr r3, [pc, #240]
    b .Lsec01_00000454
.Lsec01_000003c4:
    tst r1, #64
    bne .Lsec01_000003ec
    mvn r3, #0
    bic r3, r7, r3, lsl r1
    add r3, r0, r3
    ldr r0, [sp, #32]
    mov r3, r3, lsl #2
    ldrb r1, [r0, r3]
    add r2, r0, r3
    b .Lsec01_000000f4
.Lsec01_000003ec:
    tst r1, #32
    ldreq r3, [pc, #192]
    beq .Lsec01_00000454
    b .Lsec01_00000448
.Lsec01_000003fc:
    strb r0, [r5, #1]!
.Lsec01_00000400:
    ldr r1, [sp, #4]
    ldr r2, [sp, #12]
    cmp r8, r1
    cmpcc r5, r2
    bcc .Lsec01_000000b4
.Lsec01_00000414:
    mov r3, r6, lsr #3
    ldr lr, [sp, #4]
    rsb r0, r3, r8
    cmp r0, lr
    add r2, r0, #1
    add r1, r5, #1
    sub ip, r6, r3, lsl #3
    rsbcc r3, r0, lr
    str r2, [fp]
    str r1, [fp, #12]
    addcc r0, r3, #5
    bcc .Lsec01_00000470
    b .Lsec01_00000464
.Lsec01_00000448:
    mov r3, #11
    b .Lsec01_0000045c
.Lsec01_00000450:
    ldr r3, [pc, #100]
.Lsec01_00000454:
    str r3, [fp, #24]
    mov r3, #27
.Lsec01_0000045c:
    strb r3, [sl]
    b .Lsec01_00000414
.Lsec01_00000464:
    ldr r1, [sp, #4]
    rsb r3, r1, r0
    rsb r0, r3, #5
.Lsec01_00000470:
    ldr r2, [sp, #12]
    cmp r5, r2
    ldrcs lr, [sp, #12]
    rsbcc r3, r5, r2
    rsbcs r3, lr, r5
    addcc r1, r3, #256
    rsbcs r1, r3, #256
    mvn r3, #0
    bic r3, r7, r3, lsl ip
    add r1, r1, #1
    str r0, [fp, #4]
    str r1, [fp, #16]
    str r3, [sl, #56]
    str ip, [sl, #60]
    add sp, sp, #52
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_00000020
    .long .Lsec05_00000038
    .long .Lsec05_00000000

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "invalid distance too far back"
    .asciz ""
    .asciz ""
.Lsec05_00000020:
    .asciz "invalid distance code"
    .asciz ""
    .asciz ""
.Lsec05_00000038:
    .asciz "invalid literal/length code"

.size inflate_fast, 1216

.section .note.GNU-stack,"",%progbits
