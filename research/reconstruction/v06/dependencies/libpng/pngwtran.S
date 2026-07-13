/* Reconstructed mnemonic source for pngwtran.o. */
.syntax unified
.arch armv5te

.global png_do_pack
.type png_do_pack, %function
.global png_do_shift
.type png_do_shift, %function
.global png_do_write_swap_alpha
.type png_do_write_swap_alpha, %function
.global png_do_write_invert_alpha
.type png_do_write_invert_alpha, %function
.global png_do_write_transformations
.type png_do_write_transformations, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_do_pack:
    ldr r3, [r0, #8]
    bic r3, r3, #-16777216
    bic r3, r3, #255
    cmp r3, #67584
    stmdb sp!, {r4, r5, r6, lr}
    mov r4, r1
    mov r5, r2
    bne .Lsec01_00000150
    cmp r2, #2
    beq .Lsec01_00000084
    cmp r2, #4
    beq .Lsec01_000000d0
    cmp r2, #1
    bne .Lsec01_0000011c
    mov r2, #0
    ldr r6, [r0]
    mov lr, r1
    mov ip, #128
    mov r1, r2
    b .Lsec01_00000074
.Lsec01_00000050:
    ldrb r3, [r1, r4]
    cmp r3, #0
    orrne r2, r2, ip
    cmp ip, #1
    strleb r2, [lr], #1
    mov ip, ip, asr #1
    movle r2, #0
    movle ip, #128
    add r1, r1, #1
.Lsec01_00000074:
    cmp r1, r6
    bne .Lsec01_00000050
    cmp ip, #128
    b .Lsec01_00000118
.Lsec01_00000084:
    mov r2, #0
    ldr r6, [r0]
    mov lr, r1
    mov ip, #6
    mov r1, r2
    b .Lsec01_000000c0
.Lsec01_0000009c:
    ldrb r3, [r1, r4]
    and r3, r3, #3
    orr r2, r2, r3, lsl ip
    cmp ip, #0
    streqb r2, [lr], #1
    sub ip, ip, #2
    moveq r2, #0
    moveq ip, #6
    add r1, r1, #1
.Lsec01_000000c0:
    cmp r1, r6
    bne .Lsec01_0000009c
    cmp ip, #6
    b .Lsec01_00000118
.Lsec01_000000d0:
    mov r2, #0
    ldr r6, [r0]
    mov lr, r1
    mov ip, r5
    mov r1, r2
    b .Lsec01_0000010c
.Lsec01_000000e8:
    ldrb r3, [r1, r4]
    and r3, r3, #15
    orr r2, r2, r3, lsl ip
    cmp ip, #0
    streqb r2, [lr], #1
    sub ip, ip, #4
    moveq r2, #0
    moveq ip, #4
    add r1, r1, #1
.Lsec01_0000010c:
    cmp r1, r6
    bne .Lsec01_000000e8
    cmp ip, #4
.Lsec01_00000118:
    strneb r2, [lr]
.Lsec01_0000011c:
    ldrb r3, [r0, #10]
    mul r3, r5, r3
    ldr r2, [r0]
    and r3, r3, #255
    cmp r3, #7
    strb r3, [r0, #11]
    mulls r3, r2, r3
    movhi r3, r3, lsr #3
    mulhi r3, r2, r3
    addls r3, r3, #7
    movls r3, r3, lsr #3
    strb r5, [r0, #9]
    str r3, [r0, #4]
.Lsec01_00000150:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
png_do_shift:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    ldrb r8, [r0, #8]
    cmp r8, #3
    sub sp, sp, #36
    mov r7, r0
    mov r6, r1
    mov r5, r2
    beq .Lsec01_000003ac
    tst r8, #2
    ldrb r4, [r0, #9]
    beq .Lsec01_000001bc
    ldrb r1, [r2]
    ldrb ip, [r2, #2]
    ldrb r0, [r2, #1]
    rsb lr, ip, r4
    rsb r3, r1, r4
    rsb r2, r0, r4
    mov sl, #3
    str r3, [sp]
    str r1, [sp, #16]
    str r2, [sp, #4]
    str r0, [sp, #20]
    str lr, [sp, #8]
    str ip, [sp, #24]
    b .Lsec01_000001d0
.Lsec01_000001bc:
    ldrb r2, [r2, #3]
    rsb r3, r2, r4
    str r3, [sp]
    str r2, [sp, #16]
    mov sl, #1
.Lsec01_000001d0:
    tst r8, #4
    beq .Lsec01_000001f8
    ldrb r3, [r5, #4]
    ldrb r2, [r7, #9]
    add r0, sp, #32
    add r1, r0, sl, lsl #2
    rsb r2, r3, r2
    str r3, [r1, #-16]
    str r2, [r1, #-32]
    add sl, sl, #1
.Lsec01_000001f8:
    ldrb r3, [r7, #9]
    cmp r3, #7
    bhi .Lsec01_0000029c
    ldrb r2, [r5, #3]
    cmp r2, #1
    ldr r0, [r7, #4]
    bne .Lsec01_00000220
    cmp r3, #2
    moveq r5, #85
    beq .Lsec01_00000238
.Lsec01_00000220:
    cmp r3, #4
    bne .Lsec01_00000234
    cmp r2, #3
    moveq r5, #17
    beq .Lsec01_00000238
.Lsec01_00000234:
    mov r5, #255
.Lsec01_00000238:
    ldr sl, [sp, #16]
    ldr r8, [sp]
    rsb r7, sl, #0
    mov ip, #0
    b .Lsec01_00000290
.Lsec01_0000024c:
    ldrb r4, [ip, r6]
    mov r3, #0
    rsb lr, r8, #0
    mov r2, r8
    strb r3, [ip, r6]
    b .Lsec01_00000284
.Lsec01_00000264:
    cmp r2, #0
    ldrb r1, [ip, r6]
    andle r3, r5, r4, asr lr
    orrgt r3, r1, r4, lsl r2
    orrle r3, r1, r3
    strb r3, [ip, r6]
    add r2, r2, r7
    add lr, lr, sl
.Lsec01_00000284:
    cmp r2, r7
    bgt .Lsec01_00000264
    add ip, ip, #1
.Lsec01_00000290:
    cmp ip, r0
    bne .Lsec01_0000024c
    b .Lsec01_000003ac
.Lsec01_0000029c:
    ldr r0, [r7]
    cmp r3, #8
    muleq r5, r0, sl
    moveq r4, #0
    beq .Lsec01_00000310
    b .Lsec01_0000031c
.Lsec01_000002b4:
    mov r0, r4
    mov r1, sl
.Lsec01_000002bc:
    bl __aeabi_uidivmod
    add r3, sp, #32
    add r1, r3, r1, lsl #2
    ldr lr, [r1, #-16]
    ldr r2, [r1, #-32]
    ldrb ip, [r4, r6]
    mov r3, #0
    rsb r0, lr, #0
    rsb r1, r2, #0
    strb r3, [r4, r6]
    b .Lsec01_00000304
.Lsec01_000002e8:
    ldrb r3, [r4, r6]
    cmp r2, #0
    orrgt r3, r3, ip, lsl r2
    orrle r3, r3, ip, asr r1
    strb r3, [r4, r6]
    add r2, r2, r0
    add r1, r1, lr
.Lsec01_00000304:
    cmp r2, r0
    bgt .Lsec01_000002e8
    add r4, r4, #1
.Lsec01_00000310:
    cmp r4, r5
    bne .Lsec01_000002b4
    b .Lsec01_000003ac
.Lsec01_0000031c:
    mul r7, r0, sl
    mov r4, r6
    mov r6, #0
    b .Lsec01_000003a4
.Lsec01_0000032c:
    mov r0, r6
    mov r1, sl
.Lsec01_00000334:
    bl __aeabi_uidivmod
    add r0, sp, #32
    ldrb r3, [r4]
    ldrb r2, [r4, #1]
    add r1, r0, r1, lsl #2
    ldr r5, [r1, #-16]
    add r2, r2, r3, lsl #8
    ldr r1, [r1, #-32]
    mov r2, r2, lsl #16
    mov r2, r2, lsr #16
    rsb lr, r5, #0
    rsb r0, r1, #0
    mov ip, #0
    b .Lsec01_00000388
.Lsec01_0000036c:
    cmp r1, #0
    orrgt r3, ip, r2, lsl r1
    orrle r3, ip, r2, asr r0
    mov r3, r3, lsl #16
    mov ip, r3, lsr #16
    add r1, r1, lr
    add r0, r0, r5
.Lsec01_00000388:
    cmp r1, lr
    bgt .Lsec01_0000036c
    mov r3, ip, lsr #8
    strb r3, [r4]
    strb ip, [r4, #1]
    add r6, r6, #1
    add r4, r4, #2
.Lsec01_000003a4:
    cmp r6, r7
    bne .Lsec01_0000032c
.Lsec01_000003ac:
    add sp, sp, #36
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
png_do_write_swap_alpha:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    ldrb r3, [r0, #8]
    cmp r3, #6
    bne .Lsec01_00000478
    ldrb r3, [r0, #9]
    cmp r3, #8
    ldr r7, [r0]
    moveq ip, r1
    moveq lr, #0
    beq .Lsec01_00000404
    b .Lsec01_00000418
.Lsec01_000003e4:
    ldrb r0, [ip, #-4]
    ldrb r3, [ip, #-3]
    ldrb r2, [ip, #-2]
    ldrb r1, [ip, #-1]
    strb r3, [ip, #-4]
    strb r2, [ip, #-3]
    strb r1, [ip, #-2]
    strb r0, [ip, #-1]
.Lsec01_00000404:
    cmp lr, r7
    add ip, ip, #4
    add lr, lr, #1
    bne .Lsec01_000003e4
    b .Lsec01_000004f8
.Lsec01_00000418:
    mov r6, r1
    mov r8, #0
    b .Lsec01_00000464
.Lsec01_00000424:
    ldrb r4, [r6, #-8]
    ldrb r5, [r6, #-7]
    ldrb r3, [r6, #-6]
    ldrb r2, [r6, #-5]
    ldrb r1, [r6, #-4]
    ldrb r0, [r6, #-3]
    ldrb ip, [r6, #-2]
    ldrb lr, [r6, #-1]
    strb r3, [r6, #-8]
    strb r2, [r6, #-7]
    strb r1, [r6, #-6]
    strb r0, [r6, #-5]
    strb ip, [r6, #-4]
    strb lr, [r6, #-3]
    strb r4, [r6, #-2]
    strb r5, [r6, #-1]
.Lsec01_00000464:
    cmp r8, r7
    add r6, r6, #8
    add r8, r8, #1
    bne .Lsec01_00000424
    b .Lsec01_000004f8
.Lsec01_00000478:
    cmp r3, #4
    bne .Lsec01_000004f8
    ldrb r3, [r0, #9]
    cmp r3, #8
    ldr r7, [r0]
    moveq r0, #0
    beq .Lsec01_000004a8
    b .Lsec01_000004bc
.Lsec01_00000498:
    ldrb r3, [r1, #-2]
    ldrb r2, [r1, #-1]
    strb r3, [r1, #-1]
    strb r2, [r1, #-2]
.Lsec01_000004a8:
    cmp r0, r7
    add r1, r1, #2
    add r0, r0, #1
    bne .Lsec01_00000498
    b .Lsec01_000004f8
.Lsec01_000004bc:
    mov ip, r1
    mov lr, #0
    b .Lsec01_000004e8
.Lsec01_000004c8:
    ldrb r1, [ip, #-4]
    ldrb r0, [ip, #-3]
    ldrb r3, [ip, #-2]
    ldrb r2, [ip, #-1]
    strb r3, [ip, #-4]
    strb r2, [ip, #-3]
    strb r1, [ip, #-2]
    strb r0, [ip, #-1]
.Lsec01_000004e8:
    cmp lr, r7
    add ip, ip, #4
    add lr, lr, #1
    bne .Lsec01_000004c8
.Lsec01_000004f8:
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
png_do_write_invert_alpha:
    ldrb r3, [r0, #8]
    cmp r3, #6
    bne .Lsec01_00000578
    ldrb r3, [r0, #9]
    cmp r3, #8
    ldr r0, [r0]
    moveq r2, #0
    beq .Lsec01_00000530
    b .Lsec01_00000544
.Lsec01_00000524:
    ldrb r3, [r1, #-1]
    mvn r3, r3
    strb r3, [r1, #-1]
.Lsec01_00000530:
    cmp r2, r0
    add r1, r1, #4
    add r2, r2, #1
    bne .Lsec01_00000524
    bx lr
.Lsec01_00000544:
    mov ip, #0
    b .Lsec01_00000564
.Lsec01_0000054c:
    ldrb r3, [r1, #-2]
    ldrb r2, [r1, #-1]
    mvn r3, r3
    mvn r2, r2
    strb r3, [r1, #-2]
    strb r2, [r1, #-1]
.Lsec01_00000564:
    cmp ip, r0
    add r1, r1, #8
    add ip, ip, #1
    bne .Lsec01_0000054c
    bx lr
.Lsec01_00000578:
    cmp r3, #4
    bxne lr
    ldrb r3, [r0, #9]
    cmp r3, #8
    ldr r0, [r0]
    moveq r2, #0
    beq .Lsec01_000005a4
    b .Lsec01_000005b8
.Lsec01_00000598:
    ldrb r3, [r1, #-1]
    mvn r3, r3
    strb r3, [r1, #-1]
.Lsec01_000005a4:
    cmp r2, r0
    add r1, r1, #2
    add r2, r2, #1
    bne .Lsec01_00000598
    bx lr
.Lsec01_000005b8:
    mov ip, #0
    b .Lsec01_000005d8
.Lsec01_000005c0:
    ldrb r3, [r1, #-2]
    ldrb r2, [r1, #-1]
    mvn r3, r3
    mvn r2, r2
    strb r3, [r1, #-2]
    strb r2, [r1, #-1]
.Lsec01_000005d8:
    cmp ip, r0
    add r1, r1, #4
    add ip, ip, #1
    bne .Lsec01_000005c0
    bx lr
png_do_write_transformations:
    stmdb sp!, {r4, lr}
    subs r4, r0, #0
    beq .Lsec01_0000070c
    ldr r3, [r4, #140]
    tst r3, #1048576
    beq .Lsec01_00000620
    ldr r3, [r4, #120]
    cmp r3, #0
    ldrne r2, [r4, #264]
    addne r1, r4, #284
    addne r2, r2, #1
    movne lr, pc
    bxne r3
.Lsec01_00000620:
    ldr r3, [r4, #140]
    tst r3, #32768
    ldrne r1, [r4, #264]
    addne r0, r4, #284
    addne r1, r1, #1
    ldrne r2, [r4, #136]
.Lsec01_00000638:
    blne png_do_strip_filler
    ldr r3, [r4, #140]
    tst r3, #65536
    ldrne r1, [r4, #264]
    addne r0, r4, #284
    addne r1, r1, #1
.Lsec01_00000650:
    blne png_do_packswap
    ldr r3, [r4, #140]
    tst r3, #4
    ldrne r1, [r4, #264]
    addne r0, r4, #284
    addne r1, r1, #1
    ldrneb r2, [r4, #323]
.Lsec01_0000066c:
    blne png_do_pack
    ldr r3, [r4, #140]
    tst r3, #16
    ldrne r1, [r4, #264]
    addne r0, r4, #284
    addne r1, r1, #1
.Lsec01_00000684:
    blne png_do_swap
    ldr r3, [r4, #140]
    tst r3, #8
    beq .Lsec01_000006ac
    ldr r1, [r4, #264]
    add r2, r4, #412
    add r1, r1, #1
    add r2, r2, #1
    add r0, r4, #284
.Lsec01_000006a8:
    bl png_do_shift
.Lsec01_000006ac:
    ldr r3, [r4, #140]
    tst r3, #524288
    ldrne r1, [r4, #264]
    addne r0, r4, #284
    addne r1, r1, #1
.Lsec01_000006c0:
    blne png_do_write_invert_alpha
    ldr r3, [r4, #140]
    tst r3, #131072
    ldrne r1, [r4, #264]
    addne r0, r4, #284
    addne r1, r1, #1
.Lsec01_000006d8:
    blne png_do_write_swap_alpha
    ldr r3, [r4, #140]
    tst r3, #1
    ldrne r1, [r4, #264]
    addne r0, r4, #284
    addne r1, r1, #1
.Lsec01_000006f0:
    blne png_do_bgr
    ldr r3, [r4, #140]
    tst r3, #32
    ldrne r1, [r4, #264]
    addne r0, r4, #284
    addne r1, r1, #1
.Lsec01_00000708:
    blne png_do_invert
.Lsec01_0000070c:
    ldmia sp!, {r4, lr}
    bx lr

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.size png_do_pack, 344
.size png_do_shift, 608
.size png_do_write_swap_alpha, 328
.size png_do_write_invert_alpha, 236
.size png_do_write_transformations, 296

.section .note.GNU-stack,"",%progbits
