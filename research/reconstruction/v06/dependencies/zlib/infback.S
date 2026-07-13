/* Reconstructed mnemonic source for infback.o. */
.syntax unified
.arch armv5te

.type lenfix.2563, %object
.type distfix.2564, %object
.type order.2585, %object
.global inflateBackInit_
.type inflateBackInit_, %function
.global inflateBackEnd
.type inflateBackEnd, %function
.global inflateBack
.type inflateBack, %function

.section .text,"ax",%progbits
.balign 4
.arm
inflateBackInit_:
    stmdb sp!, {r4, r5, r6, r7, lr}
    cmp r3, #0
    sub sp, sp, #4
    mov r4, r0
    mov r6, r1
    mov r7, r2
    beq .Lsec01_000000d8
    ldrb r2, [r3]
    ldr r3, [sp, #24]
    cmp r3, #56
    cmpeq r2, #49
    bne .Lsec01_000000d8
    cmp r7, #0
    cmpne r0, #0
    beq .Lsec01_000000e0
    cmp r1, #15
    movle r3, #0
    movgt r3, #1
    cmp r1, #7
    movgt r5, r3
    orrle r5, r3, #1
    cmp r5, #0
    bne .Lsec01_000000e0
    ldr r3, [r0, #32]
    cmp r3, #0
    ldreq r3, [pc, #136]
    streq r3, [r0, #32]
    ldr r3, [r0, #36]
    streq r5, [r0, #40]
    cmp r3, #0
    ldreq r3, [pc, #120]
    str r5, [r0, #24]
    streq r3, [r0, #36]
    mov r1, #1
    ldr r0, [r0, #40]
    ldr r2, [pc, #104]
    ldr ip, [r4, #32]
    mov lr, pc
    bx ip
    cmp r0, #0
    mvneq r1, #3
    beq .Lsec01_000000e4
    mov r2, #1
    mov r2, r2, lsl r6
    mov r3, #32768
    mov r1, r5
    str r0, [r4, #28]
    str r3, [r0, #20]
    str r2, [r0, #40]
    str r7, [r0, #52]
    str r5, [r0, #44]
    str r6, [r0, #36]
    str r5, [r0, #48]
    b .Lsec01_000000e4
.Lsec01_000000d8:
    mvn r1, #5
    b .Lsec01_000000e4
.Lsec01_000000e0:
    mvn r1, #1
.Lsec01_000000e4:
    mov r0, r1
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long zcalloc
    .long zcfree
    .long 0x00002530
.arm
inflateBackEnd:
    stmdb sp!, {r4, lr}
    subs r4, r0, #0
    beq .Lsec01_00000140
    ldr r1, [r4, #28]
    cmp r1, #0
    beq .Lsec01_00000140
    ldr r3, [r4, #36]
    cmp r3, #0
    beq .Lsec01_00000140
    ldr r0, [r4, #40]
    mov lr, pc
    bx r3
    mov r3, #0
    mov r0, r3
    str r3, [r4, #28]
    b .Lsec01_00000144
.Lsec01_00000140:
    mvn r0, #1
.Lsec01_00000144:
    ldmia sp!, {r4, lr}
    bx lr
inflateBack:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r0, #0
    sub sp, sp, #68
    str r0, [sp, #24]
    str r1, [sp, #20]
    str r2, [sp, #16]
    str r3, [sp, #12]
    beq .Lsec01_00000e94
    ldr r5, [r0, #28]
    cmp r5, #0
    beq .Lsec01_00000e94
    ldr r0, [r0]
    ldr r1, [sp, #24]
    str r0, [sp, #60]
    mov r2, #0
    cmp r0, #0
    mov r3, #11
    str r2, [r5, #44]
    str r2, [r5, #4]
    strb r3, [r5]
    str r2, [r1, #24]
    ldr r3, [r5, #52]
    ldrne r2, [sp, #24]
    mov r7, #0
    ldrne sl, [r2, #4]
    str r3, [sp, #44]
    ldr fp, [r5, #40]
    moveq sl, r0
    mov r8, r7
.Lsec01_000001c0:
    ldrb r3, [r5]
    sub r3, r3, #11
    cmp r3, #16
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00000220
    .long .Lsec01_00000228
    .long .Lsec01_00000220
    .long .Lsec01_00000310
    .long .Lsec01_00000220
    .long .Lsec01_00000490
    .long .Lsec01_00000220
    .long .Lsec01_00000220
    .long .Lsec01_00000944
    .long .Lsec01_00000220
    .long .Lsec01_00000220
    .long .Lsec01_00000220
    .long .Lsec01_00000220
    .long .Lsec01_00000220
    .long .Lsec01_00000220
    .long .Lsec01_00000220
    .long .Lsec01_00000e40
    .long .Lsec01_00000218
.arm
.Lsec01_00000218:
    mvn r0, #2
    b .Lsec01_00000e84
.Lsec01_00000220:
    mvn r0, #1
    b .Lsec01_00000e84
.Lsec01_00000228:
    ldr r3, [r5, #4]
    cmp r3, #0
    beq .Lsec01_0000027c
    and r3, r7, #7
    mov r8, r8, lsr r3
    bic r7, r7, #7
    mov r3, #26
    b .Lsec01_0000038c
.Lsec01_00000248:
    cmp sl, #0
    bne .Lsec01_00000264
    ldr ip, [sp, #20]
    mov lr, pc
    bx ip
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_00000264:
    ldr r3, [sp, #60]
    ldrb r2, [r3], #1
    str r3, [sp, #60]
    add r8, r8, r2, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
.Lsec01_0000027c:
    cmp r7, #2
    ldr r0, [sp, #16]
    add r1, sp, #60
    bls .Lsec01_00000248
    mov r1, r8, lsr #1
    and r2, r8, #1
    and r3, r1, #3
    str r2, [r5, #4]
    cmp r3, #3
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00000304
    .long .Lsec01_000002b8
    .long .Lsec01_000002c0
    .long .Lsec01_000002e8
    .long .Lsec01_000002f0
.arm
.Lsec01_000002b8:
    mov r3, #13
    b .Lsec01_00000300
.Lsec01_000002c0:
    ldr r3, [pc, #3036]
    str r3, [r5, #76]
    mov r3, #9
    str r3, [r5, #84]
    ldr r3, [pc, #3024]
    str r3, [r5, #80]
    mov r3, #5
    str r3, [r5, #88]
    add r3, r3, #13
    b .Lsec01_00000300
.Lsec01_000002e8:
    mov r3, #15
    b .Lsec01_00000300
.Lsec01_000002f0:
    ldr r3, [pc, #2996]
    ldr r2, [sp, #24]
    str r3, [r2, #24]
    mov r3, #27
.Lsec01_00000300:
    strb r3, [r5]
.Lsec01_00000304:
    mov r8, r1, lsr #2
    sub r7, r7, #3
    b .Lsec01_000001c0
.Lsec01_00000310:
    and r3, r7, #7
    mov r8, r8, lsr r3
    bic r7, r7, #7
    b .Lsec01_00000354
.Lsec01_00000320:
    cmp sl, #0
    bne .Lsec01_0000033c
    ldr r3, [sp, #20]
    mov lr, pc
    bx r3
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_0000033c:
    ldr r3, [sp, #60]
    ldrb r2, [r3], #1
    str r3, [sp, #60]
    add r8, r8, r2, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
.Lsec01_00000354:
    cmp r7, #31
    ldr r0, [sp, #16]
    add r1, sp, #60
    bls .Lsec01_00000320
    ldr r3, [pc, #2884]
    mov r2, r8, lsl #16
    mov r2, r2, lsr #16
    eor r3, r3, r8, lsr #16
    cmp r2, r3
    beq .Lsec01_00000394
    ldr r3, [pc, #2864]
.Lsec01_00000380:
    ldr ip, [sp, #24]
    str r3, [ip, #24]
.Lsec01_00000388:
    mov r3, #27
.Lsec01_0000038c:
    strb r3, [r5]
    b .Lsec01_000001c0
.Lsec01_00000394:
    str r2, [r5, #64]
    b .Lsec01_0000043c
.Lsec01_0000039c:
    cmp sl, #0
    bne .Lsec01_000003b8
    ldr r2, [sp, #20]
    mov lr, pc
    bx r2
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_000003b8:
    cmp fp, #0
    ldr r0, [sp, #104]
    bne .Lsec01_000003f0
    ldr fp, [r5, #40]
    ldr r3, [r5, #52]
    str fp, [r5, #44]
    str r3, [sp, #44]
    mov r1, r3
    mov r2, fp
    ldr ip, [sp, #12]
    mov lr, pc
    bx ip
    cmp r0, #0
    bne .Lsec01_00000e6c
.Lsec01_000003f0:
    cmp fp, r4
    movcc r4, fp
    cmp sl, r4
    movcc r4, sl
    ldr r1, [sp, #60]
    mov r2, r4
    ldr r0, [sp, #44]
.Lsec01_0000040c:
    bl memcpy
    ldr r2, [r5, #64]
    ldr r3, [sp, #60]
    ldr r1, [sp, #44]
    rsb r2, r4, r2
    add r3, r3, r4
    add r1, r1, r4
    str r3, [sp, #60]
    str r2, [r5, #64]
    str r1, [sp, #44]
    rsb sl, r4, sl
    rsb fp, r4, fp
.Lsec01_0000043c:
    ldr r4, [r5, #64]
    cmp r4, #0
    add r1, sp, #60
    ldr r0, [sp, #16]
    bne .Lsec01_0000039c
    mov r7, r4
    mov r8, r4
    b .Lsec01_00000b50
.Lsec01_0000045c:
    cmp sl, #0
    bne .Lsec01_00000478
    ldr r2, [sp, #20]
    mov lr, pc
    bx r2
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_00000478:
    ldr r3, [sp, #60]
    ldrb r2, [r3], #1
    str r3, [sp, #60]
    add r8, r8, r2, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
.Lsec01_00000490:
    cmp r7, #13
    ldr r0, [sp, #16]
    add r1, sp, #60
    bls .Lsec01_0000045c
    and r1, r8, #31
    mov r0, r8, lsr #5
    mov r2, r8, lsr #10
    add r1, r1, #256
    ldr r3, [pc, #2560]
    add r1, r1, #1
    and r0, r0, #31
    and r2, r2, #15
    add r0, r0, #1
    add r2, r2, #4
    cmp r1, r3
    str r2, [r5, #92]
    str r1, [r5, #96]
    str r0, [r5, #100]
    mov r8, r8, lsr #14
    sub r7, r7, #14
    bhi .Lsec01_000004f4
    cmp r0, #30
    movls r3, #0
    strls r3, [r5, #104]
    bls .Lsec01_0000056c
.Lsec01_000004f4:
    ldr r3, [pc, #2496]
    b .Lsec01_00000380
.Lsec01_000004fc:
    cmp sl, #0
    bne .Lsec01_00000518
    ldr r2, [sp, #20]
    mov lr, pc
    bx r2
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_00000518:
    ldr r3, [sp, #60]
    ldrb r2, [r3], #1
    str r3, [sp, #60]
    add r8, r8, r2, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
.Lsec01_00000530:
    cmp r7, #2
    ldr r0, [sp, #16]
    add r1, sp, #60
    bls .Lsec01_000004fc
    ldr r1, [r5, #104]
    ldr r3, [pc, #2420]
    mov r2, r1, lsl #1
    ldrh r3, [r2, r3]
    add r1, r1, #1
    and r2, r8, #7
    add r3, r5, r3, lsl #1
    strh r2, [r3, #112]
    str r1, [r5, #104]
    mov r8, r8, lsr #3
    sub r7, r7, #3
.Lsec01_0000056c:
    ldr r2, [r5, #104]
    ldr r3, [r5, #92]
    cmp r2, r3
    bcc .Lsec01_00000530
    b .Lsec01_00000598
.Lsec01_00000580:
    ldr r3, [pc, #2360]
    ldrh r3, [r2, r3]
    mov ip, #0
    add r3, r5, r3, lsl #1
    str r1, [r5, #104]
    strh ip, [r3, #112]
.Lsec01_00000598:
    ldr r3, [r5, #104]
    cmp r3, #18
    mov r2, r3, lsl #1
    add r1, r3, #1
    bls .Lsec01_00000580
    mov r3, #7
    str r3, [r5, #84]
    add r3, r5, #84
    str r3, [sp, #36]
    add ip, r5, #752
    str ip, [sp, #40]
    ldr ip, [sp, #36]
    add r9, r5, #1328
    add r2, r5, #108
    str r2, [sp, #32]
    str r9, [r5, #108]
    str r9, [r5, #76]
    str ip, [sp]
    ldr ip, [sp, #40]
    add r1, r5, #112
    ldr r3, [sp, #32]
    mov r0, #0
    mov r2, #19
    str r1, [sp, #28]
    str ip, [sp, #4]
.Lsec01_000005fc:
    bl inflate_table
    cmp r0, #0
    ldrne r3, [pc, #2232]
    streq r0, [r5, #104]
    beq .Lsec01_0000088c
    b .Lsec01_00000754
.Lsec01_00000614:
    ldr r3, [r5, #84]
    mvn r2, #0
    bic r2, r8, r2, lsl r3
    ldr r3, [r5, #76]
    add r3, r3, r2, lsl #2
    ldrb r4, [r3, #1]
    cmp r4, r7
    ldr r0, [sp, #16]
    add r1, sp, #60
    ldrh r6, [r3, #2]
    bls .Lsec01_00000678
    cmp sl, #0
    bne .Lsec01_0000065c
    ldr r2, [sp, #20]
    mov lr, pc
    bx r2
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_0000065c:
    ldr r2, [sp, #60]
    ldrb r3, [r2], #1
    add r8, r8, r3, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
    str r2, [sp, #60]
    b .Lsec01_00000614
.Lsec01_00000678:
    cmp r6, #15
    bls .Lsec01_000006b8
    b .Lsec01_000006e8
.Lsec01_00000684:
    cmp sl, #0
    bne .Lsec01_000006a0
    ldr r3, [sp, #20]
    mov lr, pc
    bx r3
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_000006a0:
    ldr r3, [sp, #60]
    ldrb r2, [r3], #1
    str r3, [sp, #60]
    add r8, r8, r2, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
.Lsec01_000006b8:
    cmp r7, r4
    ldr r0, [sp, #16]
    add r1, sp, #60
    bcc .Lsec01_00000684
    mov r8, r8, lsr r4
    ldr r3, [r5, #104]
    rsb r7, r4, r7
    add r2, r3, #1
    add r3, r5, r3, lsl #1
    strh r6, [r3, #112]
    str r2, [r5, #104]
    b .Lsec01_0000088c
.Lsec01_000006e8:
    cmp r6, #16
    bne .Lsec01_0000077c
    b .Lsec01_00000728
.Lsec01_000006f4:
    cmp sl, #0
    bne .Lsec01_00000710
    ldr ip, [sp, #20]
    mov lr, pc
    bx ip
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_00000710:
    ldr r3, [sp, #60]
    ldrb r2, [r3], #1
    str r3, [sp, #60]
    add r8, r8, r2, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
.Lsec01_00000728:
    add r3, r4, #2
    cmp r7, r3
    ldr r0, [sp, #16]
    add r1, sp, #60
    bcc .Lsec01_000006f4
    ldr r3, [r5, #104]
    cmp r3, #0
    rsb r7, r4, r7
    mov r8, r8, lsr r4
    bne .Lsec01_00000760
.Lsec01_00000750:
    ldr r3, [pc, #1904]
.Lsec01_00000754:
    ldr r1, [sp, #24]
    str r3, [r1, #24]
    b .Lsec01_00000388
.Lsec01_00000760:
    add r3, r5, r3, lsl #1
    ldrh r1, [r3, #110]
    and r3, r8, #3
    add r0, r3, #3
    mov r8, r8, lsr #2
    sub r7, r7, #2
    b .Lsec01_00000850
.Lsec01_0000077c:
    cmp r6, #17
    bne .Lsec01_00000820
    b .Lsec01_000007bc
.Lsec01_00000788:
    cmp sl, #0
    bne .Lsec01_000007a4
    ldr r2, [sp, #20]
    mov lr, pc
    bx r2
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_000007a4:
    ldr r3, [sp, #60]
    ldrb r2, [r3], #1
    str r3, [sp, #60]
    add r8, r8, r2, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
.Lsec01_000007bc:
    add r3, r4, #3
    cmp r7, r3
    ldr r0, [sp, #16]
    add r1, sp, #60
    bcc .Lsec01_00000788
    mov r3, r8, lsr r4
    rsb r1, r4, r7
    and r2, r3, #7
    add r0, r2, #3
    mov r8, r3, lsr #3
    sub r7, r1, #3
    b .Lsec01_0000084c
.Lsec01_000007ec:
    cmp sl, #0
    bne .Lsec01_00000808
    ldr r3, [sp, #20]
    mov lr, pc
    bx r3
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_00000808:
    ldr r3, [sp, #60]
    ldrb r2, [r3], #1
    str r3, [sp, #60]
    add r8, r8, r2, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
.Lsec01_00000820:
    add r3, r4, #7
    cmp r7, r3
    ldr r0, [sp, #16]
    add r1, sp, #60
    bcc .Lsec01_000007ec
    mov r3, r8, lsr r4
    rsb r1, r4, r7
    and r2, r3, #127
    add r0, r2, #11
    mov r8, r3, lsr #7
    sub r7, r1, #7
.Lsec01_0000084c:
    mov r1, #0
.Lsec01_00000850:
    ldr r3, [r5, #104]
    add ip, r5, #96
    ldmia ip, {r2, ip}
    add r2, r2, ip
    add r3, r0, r3
    cmp r3, r2
    bls .Lsec01_00000884
    b .Lsec01_00000750
.Lsec01_00000870:
    ldr r3, [r5, #104]
    add r2, r3, #1
    add r3, r5, r3, lsl #1
    strh r1, [r3, #112]
    str r2, [r5, #104]
.Lsec01_00000884:
    subs r0, r0, #1
    bcs .Lsec01_00000870
.Lsec01_0000088c:
    add r3, r5, #96
    ldmia r3, {r2, r3}
    add r2, r2, r3
    ldr r3, [r5, #104]
    cmp r3, r2
    bcc .Lsec01_00000614
    ldrb r3, [r5]
    cmp r3, #27
    beq .Lsec01_000001c0
    ldr r1, [sp, #40]
    ldr ip, [sp, #36]
    mov r3, #9
    str r3, [r5, #84]
    str r9, [r5, #76]
    str r9, [r5, #108]
    str r1, [sp, #4]
    str ip, [sp]
    mov r0, #1
    ldr r1, [sp, #28]
    ldr r2, [r5, #96]
    ldr r3, [sp, #32]
.Lsec01_000008e0:
    bl inflate_table
    cmp r0, #0
    ldrne r3, [pc, #1500]
    ldrne r2, [sp, #24]
    strne r3, [r2, #24]
    bne .Lsec01_00000388
    ldr r3, [r5, #108]
    str r3, [r5, #80]
    mov r3, #6
    str r3, [r5, #88]
    ldr r3, [sp, #40]
    add r2, r5, #88
    ldr r1, [r5, #96]
    ldr ip, [sp, #28]
    stmia sp, {r2, r3}
    ldr r3, [sp, #32]
    add r1, ip, r1, lsl #1
    mov r0, #2
    ldr r2, [r5, #100]
.Lsec01_0000092c:
    bl inflate_table
    cmp r0, #0
    ldrne r3, [pc, #1428]
    bne .Lsec01_00000754
    mov r3, #18
    strb r3, [r5]
.Lsec01_00000944:
    ldr r3, [pc, #1416]
    cmp sl, #5
    cmphi fp, r3
    bls .Lsec01_000009cc
    ldr r2, [sp, #24]
    str sl, [r2, #4]
    str fp, [r2, #16]
    add r2, r5, #40
    ldmia r2, {r2, r3}
    ldr ip, [sp, #44]
    cmp r3, r2
    ldr r3, [sp, #24]
    str ip, [r3, #12]
    ldr r3, [sp, #60]
    ldr r1, [sp, #24]
    str r3, [r1]
    rsbcc r3, fp, r2
    str r8, [r5, #56]
    str r7, [r5, #60]
    strcc r3, [r5, #44]
    ldr r0, [sp, #24]
    ldr r1, [r5, #40]
.Lsec01_0000099c:
    bl inflate_fast
    ldr ip, [sp, #24]
    ldr r2, [sp, #24]
    ldr r3, [ip]
    ldr r2, [r2, #12]
    ldr fp, [ip, #16]
    ldr sl, [ip, #4]
    ldr r8, [r5, #56]
    ldr r7, [r5, #60]
    str r2, [sp, #44]
    str r3, [sp, #60]
    b .Lsec01_000001c0
.Lsec01_000009cc:
    ldr r2, [r5, #84]
    mvn r3, #0
    bic r3, r8, r3, lsl r2
    ldr ip, [r5, #76]
    mov r3, r3, lsl #2
    add r2, r3, ip
    ldrb r4, [r2, #1]
    cmp r4, r7
    ldr r0, [sp, #16]
    add r1, sp, #60
    ldrb lr, [r3, ip]
    ldrh r9, [r2, #2]
    bls .Lsec01_00000a38
    cmp sl, #0
    bne .Lsec01_00000a1c
    ldr r2, [sp, #20]
    mov lr, pc
    bx r2
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_00000a1c:
    ldr r2, [sp, #60]
    ldrb r3, [r2], #1
    add r8, r8, r3, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
    str r2, [sp, #60]
    b .Lsec01_000009cc
.Lsec01_00000a38:
    cmp lr, #0
    moveq r8, r8, lsr r4
    rsbeq r7, r4, r7
    streq r9, [r5, #64]
    beq .Lsec01_00000af8
    tst lr, #240
    str lr, [sp, #52]
    movne r8, r8, lsr r4
    rsbne r7, r4, r7
    strne r9, [r5, #64]
    bne .Lsec01_00000b48
.Lsec01_00000a64:
    ldr r3, [sp, #52]
    add r2, r4, r3
    mvn r3, #0
    bic r3, r8, r3, lsl r2
    add r3, r9, r3, lsr r4
    ldr lr, [r5, #76]
    mov r3, r3, lsl #2
    add ip, r3, lr
    ldrb r6, [ip, #1]
    add r2, r4, r6
    cmp r2, r7
    ldr r0, [sp, #16]
    add r1, sp, #60
    ldrb lr, [r3, lr]
    ldrh ip, [ip, #2]
    bls .Lsec01_00000adc
    cmp sl, #0
    bne .Lsec01_00000ac0
    ldr ip, [sp, #20]
    mov lr, pc
    bx ip
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_00000ac0:
    ldr r2, [sp, #60]
    ldrb r3, [r2], #1
    add r8, r8, r3, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
    str r2, [sp, #60]
    b .Lsec01_00000a64
.Lsec01_00000adc:
    mov r2, r8, lsr r4
    rsb r3, r4, r7
    cmp lr, #0
    rsb r7, r6, r3
    str ip, [r5, #64]
    mov r8, r2, lsr r6
    bne .Lsec01_00000b48
.Lsec01_00000af8:
    cmp fp, #0
    bne .Lsec01_00000b2c
    ldr fp, [r5, #40]
    ldr r1, [r5, #52]
    str fp, [r5, #44]
    str r1, [sp, #44]
    ldr r0, [sp, #104]
    mov r2, fp
    ldr r3, [sp, #12]
    mov lr, pc
    bx r3
    cmp r0, #0
    bne .Lsec01_00000e6c
.Lsec01_00000b2c:
    ldr r3, [r5, #64]
    ldr ip, [sp, #44]
    strb r3, [ip], #1
    sub fp, fp, #1
    mov r3, #18
    str ip, [sp, #44]
    b .Lsec01_0000038c
.Lsec01_00000b48:
    tst lr, #32
    beq .Lsec01_00000b58
.Lsec01_00000b50:
    mov r3, #11
    b .Lsec01_0000038c
.Lsec01_00000b58:
    tst lr, #64
    ldrne r3, [pc, #884]
    bne .Lsec01_00000754
    and r3, lr, #15
    cmp r3, #0
    str r3, [r5, #72]
    bne .Lsec01_00000bac
    b .Lsec01_00000bdc
.Lsec01_00000b78:
    cmp sl, #0
    bne .Lsec01_00000b94
    ldr r2, [sp, #20]
    mov lr, pc
    bx r2
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_00000b94:
    ldr r3, [sp, #60]
    ldrb r2, [r3], #1
    str r3, [sp, #60]
    add r8, r8, r2, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
.Lsec01_00000bac:
    ldr ip, [r5, #72]
    cmp r7, ip
    ldr r0, [sp, #16]
    add r1, sp, #60
    bcc .Lsec01_00000b78
    mvn r2, #0
    bic r2, r8, r2, lsl ip
    mov r8, r8, lsr ip
    ldr r3, [r5, #64]
    add r3, r3, r2
    str r3, [r5, #64]
    rsb r7, ip, r7
.Lsec01_00000bdc:
    ldr r2, [r5, #88]
    mvn r3, #0
    bic r3, r8, r3, lsl r2
    ldr ip, [r5, #80]
    mov r3, r3, lsl #2
    add r2, r3, ip
    ldrb r4, [r2, #1]
    cmp r4, r7
    ldr r0, [sp, #16]
    add r1, sp, #60
    ldrb r3, [r3, ip]
    ldrh r2, [r2, #2]
    bls .Lsec01_00000c48
    cmp sl, #0
    bne .Lsec01_00000c2c
    ldr r3, [sp, #20]
    mov lr, pc
    bx r3
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_00000c2c:
    ldr r2, [sp, #60]
    ldrb r3, [r2], #1
    add r8, r8, r3, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
    str r2, [sp, #60]
    b .Lsec01_00000bdc
.Lsec01_00000c48:
    tst r3, #240
    str r2, [sp, #48]
    mov r6, r4
    mov r9, r3
    bne .Lsec01_00000cdc
.Lsec01_00000c5c:
    add r2, r6, r9
    mvn r3, #0
    bic r3, r8, r3, lsl r2
    ldr ip, [sp, #48]
    add r3, ip, r3, lsr r6
    ldr lr, [r5, #80]
    mov r3, r3, lsl #2
    add ip, r3, lr
    ldrb r4, [ip, #1]
    add r2, r6, r4
    cmp r2, r7
    ldr r0, [sp, #16]
    add r1, sp, #60
    ldrb r3, [r3, lr]
    ldrh r2, [ip, #2]
    bls .Lsec01_00000cd4
    cmp sl, #0
    bne .Lsec01_00000cb8
    ldr r2, [sp, #20]
    mov lr, pc
    bx r2
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_00000cb8:
    ldr r2, [sp, #60]
    ldrb r3, [r2], #1
    add r8, r8, r3, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
    str r2, [sp, #60]
    b .Lsec01_00000c5c
.Lsec01_00000cd4:
    mov r8, r8, lsr r6
    rsb r7, r6, r7
.Lsec01_00000cdc:
    tst r3, #64
    rsb r7, r4, r7
    mov r8, r8, lsr r4
    ldrne r3, [pc, #492]
    bne .Lsec01_00000380
    and r3, r3, #15
    cmp r3, #0
    str r2, [r5, #68]
    str r3, [r5, #72]
    bne .Lsec01_00000d3c
    b .Lsec01_00000d6c
.Lsec01_00000d08:
    cmp sl, #0
    bne .Lsec01_00000d24
    ldr r2, [sp, #20]
    mov lr, pc
    bx r2
    subs sl, r0, #0
    beq .Lsec01_00000e74
.Lsec01_00000d24:
    ldr r3, [sp, #60]
    ldrb r2, [r3], #1
    str r3, [sp, #60]
    add r8, r8, r2, lsl r7
    sub sl, sl, #1
    add r7, r7, #8
.Lsec01_00000d3c:
    ldr ip, [r5, #72]
    cmp r7, ip
    ldr r0, [sp, #16]
    add r1, sp, #60
    bcc .Lsec01_00000d08
    mvn r2, #0
    bic r2, r8, r2, lsl ip
    mov r8, r8, lsr ip
    ldr r3, [r5, #68]
    add r3, r3, r2
    str r3, [r5, #68]
    rsb r7, ip, r7
.Lsec01_00000d6c:
    ldr r2, [r5, #44]
    ldr r3, [r5, #40]
    cmp r2, r3
    movcc r2, fp
    movcs r2, #0
    ldr r1, [r5, #68]
    rsb r3, r2, r3
    cmp r1, r3
    ldrhi r3, [pc, #332]
    bhi .Lsec01_00000380
.Lsec01_00000d94:
    cmp fp, #0
    bne .Lsec01_00000dc8
    ldr fp, [r5, #40]
    ldr r1, [r5, #52]
    str fp, [r5, #44]
    str r1, [sp, #44]
    ldr r0, [sp, #104]
    mov r2, fp
    ldr r3, [sp, #12]
    mov lr, pc
    bx r3
    cmp r0, #0
    bne .Lsec01_00000e6c
.Lsec01_00000dc8:
    ldr r2, [r5, #68]
    ldr r3, [r5, #40]
    rsb r3, r2, r3
    cmp r3, fp
    ldrcc ip, [sp, #44]
    ldrcs r1, [sp, #44]
    rsbcc r2, r3, fp
    addcc r0, ip, r3
    ldr r3, [r5, #64]
    rsbcs r0, r2, r1
    movcs r2, fp
    cmp r3, r2
    movcc r1, r3
    movcs r1, r2
    rsb r3, r1, r3
    str r3, [r5, #64]
    ldr ip, [sp, #44]
    rsb fp, r1, fp
    mov r2, r1
.Lsec01_00000e14:
    ldrb r3, [r0], #1
    subs r2, r2, #1
    strb r3, [ip], #1
    bne .Lsec01_00000e14
    ldr r2, [sp, #44]
    ldr r3, [r5, #64]
    add r2, r2, r1
    cmp r3, #0
    str r2, [sp, #44]
    beq .Lsec01_000001c0
    b .Lsec01_00000d94
.Lsec01_00000e40:
    ldr r2, [r5, #40]
    cmp fp, r2
    bcs .Lsec01_00000e80
    rsb r2, fp, r2
    ldr r0, [sp, #104]
    ldr r1, [r5, #52]
    ldr r3, [sp, #12]
    mov lr, pc
    bx r3
    cmp r0, #0
    beq .Lsec01_00000e80
.Lsec01_00000e6c:
    mvn r0, #4
    b .Lsec01_00000e84
.Lsec01_00000e74:
    mvn r0, #4
    str sl, [sp, #60]
    b .Lsec01_00000e84
.Lsec01_00000e80:
    mov r0, #1
.Lsec01_00000e84:
    ldr ip, [sp, #24]
    ldr r3, [sp, #60]
    stmia ip, {r3, sl}
    b .Lsec01_00000e98
.Lsec01_00000e94:
    mvn r0, #1
.Lsec01_00000e98:
    add sp, sp, #68
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec06_000000a6
    .long .Lsec06_00000026
    .long .Lsec05_00000000
    .long 0x0000ffff
    .long .Lsec05_00000014
    .long 0x0000011e
    .long .Lsec05_00000034
    .long .Lsec06_00000000
    .long .Lsec05_00000058
    .long .Lsec05_00000074
    .long .Lsec05_00000090
    .long .Lsec05_000000ac
    .long 0x00000101
    .long .Lsec05_000000c4
    .long .Lsec05_000000e0
    .long .Lsec05_000000f8

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "invalid block type"
    .asciz ""
.Lsec05_00000014:
    .asciz "invalid stored block lengths"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000034:
    .asciz "too many length or distance symbols"
.Lsec05_00000058:
    .asciz "invalid code lengths set"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000074:
    .asciz "invalid bit length repeat"
    .asciz ""
    .asciz ""
.Lsec05_00000090:
    .asciz "invalid literal/lengths set"
.Lsec05_000000ac:
    .asciz "invalid distances set"
    .asciz ""
    .asciz ""
.Lsec05_000000c4:
    .asciz "invalid literal/length code"
.Lsec05_000000e0:
    .asciz "invalid distance code"
    .asciz ""
    .asciz ""
.Lsec05_000000f8:
    .asciz "invalid distance too far back"
    .asciz ""
    .asciz ""

.section .rodata,"a",%progbits
.balign 2
order.2585:
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
distfix.2564:
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
lenfix.2563:
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

.size lenfix.2563, 2048
.size distfix.2564, 128
.size order.2585, 38
.size inflateBackInit_, 256
.size inflateBackEnd, 76
.size inflateBack, 3480

.section .note.GNU-stack,"",%progbits
