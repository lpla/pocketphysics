/* Reconstructed mnemonic source for trees.o. */
.syntax unified
.arch armv5te

.type init_block, %function
.type static_l_desc, %object
.type static_d_desc, %object
.type static_bl_desc, %object
.type pqdownheap, %function
.type scan_tree, %function
.type send_tree, %function
.type compress_block, %function
.type extra_lbits, %object
.type base_length, %object
.type extra_dbits, %object
.type base_dist, %object
.type build_tree, %function
.type bi_flush, %function
.type static_ltree, %object
.type bi_windup, %function
.type bl_order, %object
.type static_dtree, %object
.type extra_blbits, %object
.global _tr_init
.type _tr_init, %function
.global _tr_tally
.type _tr_tally, %function
.global _length_code
.type _length_code, %object
.global _dist_code
.type _dist_code, %object
.global _tr_align
.type _tr_align, %function
.global _tr_stored_block
.type _tr_stored_block, %function
.global _tr_flush_block
.type _tr_flush_block, %function

.section .text,"ax",%progbits
.balign 4
.arm
init_block:
    mov r2, r0
    mov r1, #0
.Lsec01_00000008:
    ldr r3, [pc, #132]
    add r1, r1, #1
    cmp r1, r3
    mov r3, #0
    strh r3, [r2, #148]
    add r2, r2, #4
    bne .Lsec01_00000008
    mov r1, #0
.Lsec01_00000028:
    add r2, r0, r1
    ldr r3, [pc, #100]
    add r1, r1, #4
    mov ip, #0
    cmp r1, #120
    strh ip, [r2, r3]
    bne .Lsec01_00000028
    mov r1, #0
.Lsec01_00000048:
    add r2, r0, r1
    ldr r3, [pc, #72]
    add r1, r1, #4
    mov ip, #0
    cmp r1, #76
    strh ip, [r2, r3]
    bne .Lsec01_00000048
    ldr r3, [pc, #52]
    str ip, [r0, r3]
    add r3, r3, #12
    str ip, [r0, r3]
    sub r3, r3, #4
    str ip, [r0, r3]
    add r3, r3, #8
    str ip, [r0, r3]
    ldr r3, [pc, #24]
    mov r2, #1
    strh r2, [r0, r3]
    bx lr
    .long 0x0000011e
    .long 0x00000988
    .long 0x00000a7c
    .long 0x000016a0
    .long 0x00000494
.arm
_tr_init:
    ldr r3, [pc, #92]
    mov r1, #8
    stmdb sp!, {r4, r5, lr}
    str r1, [r0, r3]
    mov r5, #0
    add r3, r3, r1
    str r5, [r0, r3]
    ldr r3, [pc, #68]
    str r3, [r0, #2848]
    ldr r3, [pc, #64]
    str r3, [r0, #2860]
    ldr r3, [pc, #60]
    add ip, r0, #2432
    add lr, r0, #2672
    str r3, [r0, #2872]
    ldr r3, [pc, #48]
    add ip, ip, #8
    add lr, lr, #12
    add r4, r0, #148
    str r4, [r0, #2840]
    str ip, [r0, #2852]
    str lr, [r0, #2864]
    strh r5, [r0, r3]
    ldmia sp!, {r4, r5, lr}
    b init_block
    .long 0x000016b4
    .long .Lsec03_00000000
    .long .Lsec03_00000014
    .long .Lsec03_00000028
    .long 0x000016b8
.arm
pqdownheap:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    add r3, r0, r2, lsl #2
    ldr r7, [r3, #2908]
    mov r5, r2
    mov r6, r1
    mov ip, r2, lsl #1
    add fp, r1, r7, lsl #2
    b .Lsec01_000001cc
.Lsec01_00000140:
    bge .Lsec01_00000188
    ldr r4, [r1, #2908]
    ldr lr, [r2, #2908]
    mov r3, r4, lsl #2
    mov r2, lr, lsl #2
    ldrh r1, [r3, r6]
    ldrh r3, [r2, r6]
    cmp r1, r3
    bcc .Lsec01_00000184
    ldr r1, [pc, #148]
    add r3, r4, r0
    add r2, lr, r0
    bne .Lsec01_00000188
    ldrb r2, [r2, r1]
    ldrb r3, [r3, r1]
    cmp r3, r2
    bhi .Lsec01_00000188
.Lsec01_00000184:
    mov ip, r8
.Lsec01_00000188:
    add r3, r0, ip, lsl #2
    ldr r1, [r3, #2908]
    mov r3, r1, lsl #2
    ldrh r2, [fp]
    ldrh r3, [r3, r6]
    cmp r2, r3
    add lr, r1, r0
    bcc .Lsec01_000001f0
    bne .Lsec01_000001c0
    ldr r3, [pc, #76]
    ldrb r2, [lr, r3]
    ldrb r3, [sl, r3]
    cmp r3, r2
    bls .Lsec01_000001f0
.Lsec01_000001c0:
    str r1, [r9, #2908]
    mov r5, ip
    mov ip, ip, lsl #1
.Lsec01_000001cc:
    ldr r3, [pc, #48]
    ldr r3, [r0, r3]
    add r8, ip, #1
    cmp ip, r3
    add r2, r0, ip, lsl #2
    add r1, r0, r8, lsl #2
    add sl, r7, r0
    add r9, r0, r5, lsl #2
    ble .Lsec01_00000140
.Lsec01_000001f0:
    add r3, r0, r5, lsl #2
    str r7, [r3, #2908]
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x00001458
    .long 0x00001450
.arm
scan_tree:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    ldrh r3, [r1, #2]
    mov r8, r2
    cmp r3, #0
    mov r7, #0
    mov ip, r3
    mov r6, r1
    add r3, r1, r8, lsl #2
    mvn lr, #0
    movne r4, #7
    movne r2, #4
    moveq r4, #138
    moveq r2, #3
    mvn r5, #0
    mov r1, r7
    strh lr, [r3, #6]
    b .Lsec01_0000031c
.Lsec01_0000024c:
    add r1, r1, #1
    cmp r1, r4
    ldrh lr, [r6, #6]
    bge .Lsec01_00000264
    cmp ip, lr
    beq .Lsec01_00000310
.Lsec01_00000264:
    cmp r1, r2
    bge .Lsec01_00000288
    add r2, r0, ip, lsl #2
    add r2, r2, #2672
    add r2, r2, #8
    ldrh r3, [r2, #4]
    add r3, r3, r1
    strh r3, [r2, #4]
    b .Lsec01_000002d0
.Lsec01_00000288:
    cmp ip, #0
    beq .Lsec01_000002b8
    cmp ip, r5
    beq .Lsec01_000002b0
    add r2, r0, ip, lsl #2
    add r2, r2, #2672
    add r2, r2, #8
    ldrh r3, [r2, #4]
    add r3, r3, #1
    strh r3, [r2, #4]
.Lsec01_000002b0:
    ldr r2, [pc, #116]
    b .Lsec01_000002c4
.Lsec01_000002b8:
    cmp r1, #10
    ldrgt r2, [pc, #108]
    movle r2, #2752
.Lsec01_000002c4:
    ldrh r3, [r0, r2]
    add r3, r3, #1
    strh r3, [r0, r2]
.Lsec01_000002d0:
    cmp lr, #0
    moveq r5, ip
    moveq r1, lr
    moveq r4, #138
    beq .Lsec01_000002f8
    cmp ip, lr
    bne .Lsec01_00000300
    mov r5, ip
    mov r1, #0
    mov r4, #6
.Lsec01_000002f8:
    mov r2, #3
    b .Lsec01_00000310
.Lsec01_00000300:
    mov r5, ip
    mov r1, #0
    mov r4, #7
    mov r2, #4
.Lsec01_00000310:
    add r7, r7, #1
    add r6, r6, #4
    mov ip, lr
.Lsec01_0000031c:
    cmp r7, r8
    ble .Lsec01_0000024c
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long 0x00000abc
    .long 0x00000ac4
.arm
send_tree:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldrh r3, [r1, #2]
    sub sp, sp, #12
    cmp r3, #0
    mov r4, #0
    mov lr, r0
    str r2, [sp]
    mov r8, r3
    mov fp, r1
    movne r0, #7
    movne r2, #4
    moveq r0, #138
    moveq r2, #3
    mvn r1, #0
    mov r3, r4
    str r4, [sp, #4]
    b .Lsec01_000008d8
.Lsec01_00000378:
    add r6, r3, #1
    cmp r6, r0
    ldrh r9, [fp, #6]
    bge .Lsec01_00000390
    cmp r8, r9
    beq .Lsec01_000008c0
.Lsec01_00000390:
    cmp r6, r2
    bge .Lsec01_00000448
    mov r5, r3
.Lsec01_0000039c:
    add r2, lr, r8, lsl #2
    add r2, r2, #2672
    add r2, r2, #8
    ldr r6, [pc, #1348]
    ldrh ip, [r2, #6]
    ldr r1, [lr, r6]
    ldr r7, [pc, #1340]
    rsb r3, ip, #16
    cmp r1, r3
    mov sl, r7
    add r4, r1, ip
    ldrh r0, [r2, #4]
    ble .Lsec01_0000042c
    ldrh r3, [lr, r7]
    orr r3, r3, r0, lsl r1
    ldr r2, [lr, #8]
    ldr r1, [lr, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, r7]
    strb r3, [r2, r1]
    ldrh r3, [lr, r7]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r3, [lr, r6]
    rsb r2, r3, #16
    mov r2, r0, asr r2
    add r3, ip, r3
    add r1, r1, #1
    sub r3, r3, #16
    strh r2, [lr, r7]
    str r3, [lr, r6]
    str r1, [lr, #20]
    b .Lsec01_0000043c
.Lsec01_0000042c:
    ldrh r3, [lr, r7]
    orr r3, r3, r0, lsl r1
    str r4, [lr, r6]
    strh r3, [lr, r7]
.Lsec01_0000043c:
    subs r5, r5, #1
    bcc .Lsec01_00000880
    b .Lsec01_0000039c
.Lsec01_00000448:
    cmp r8, #0
    beq .Lsec01_00000620
    cmp r8, r1
    beq .Lsec01_000004fc
    add r2, lr, r8, lsl #2
    add r2, r2, #2672
    add r2, r2, #8
    ldr r5, [pc, #1160]
    ldrh r4, [r2, #6]
    ldr r1, [lr, r5]
    rsb r3, r4, #16
    cmp r1, r3
    ldrh ip, [r2, #4]
    ble .Lsec01_000004e0
    ldr r0, [pc, #1136]
    ldrh r3, [lr, r0]
    orr r3, r3, ip, lsl r1
    ldr r2, [lr, #8]
    ldr r1, [lr, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, r0]
    strb r3, [r2, r1]
    ldrh r3, [lr, r0]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r3, [lr, r5]
    rsb r2, r3, #16
    mov r2, ip, asr r2
    add r3, r4, r3
    add r1, r1, #1
    sub r3, r3, #16
    strh r2, [lr, r0]
    str r3, [lr, r5]
    str r1, [lr, #20]
    b .Lsec01_000004f8
.Lsec01_000004e0:
    ldr r3, [pc, #1040]
    ldrh r2, [lr, r3]
    orr r2, r2, ip, lsl r1
    add r1, r1, r4
    strh r2, [lr, r3]
    str r1, [lr, r5]
.Lsec01_000004f8:
    sub r6, r6, #1
.Lsec01_000004fc:
    ldr r3, [pc, #1016]
    ldr r7, [pc, #1004]
    ldrh r5, [lr, r3]
    ldr r4, [lr, r7]
    rsb r3, r5, #16
    cmp r4, r3
    ble .Lsec01_00000580
    ldr ip, [pc, #984]
    ldr r3, [pc, #988]
    ldrh r0, [lr, r3]
    ldrh r3, [lr, ip]
    orr r3, r3, r0, lsl r4
    ldr r1, [lr, #20]
    ldr r2, [lr, #8]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, ip]
    strb r3, [r2, r1]
    ldrh r3, [lr, ip]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r3, [lr, r7]
    rsb r2, r3, #16
    mov r0, r0, asr r2
    add r3, r5, r3
    add r1, r1, #1
    sub r3, r3, #16
    strh r0, [lr, ip]
    str r3, [lr, r7]
    str r1, [lr, #20]
    b .Lsec01_000005a0
.Lsec01_00000580:
    ldr r1, [pc, #880]
    ldr r3, [pc, #884]
    ldrh r2, [lr, r3]
    ldrh r3, [lr, r1]
    orr r3, r3, r2, lsl r4
    add r2, r4, r5
    strh r3, [lr, r1]
    str r2, [lr, r7]
.Lsec01_000005a0:
    ldr r5, [pc, #844]
    ldr r1, [lr, r5]
    cmp r1, #14
    sub r4, r6, #3
    ble .Lsec01_0000060c
    ldr ip, [pc, #828]
    ldrh r3, [lr, ip]
    orr r3, r3, r4, lsl r1
    ldr r2, [lr, #8]
    ldr r1, [lr, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, ip]
    strb r3, [r2, r1]
    ldrh r3, [lr, ip]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r0, [lr, r5]
    mov r3, r4, lsl #16
    rsb r2, r0, #16
    mov r3, r3, lsr #16
    mov r3, r3, asr r2
    add r1, r1, #1
    sub r0, r0, #14
    b .Lsec01_00000734
.Lsec01_0000060c:
    ldr r3, [pc, #740]
    ldrh r2, [lr, r3]
    orr r2, r2, r4, lsl r1
    add r1, r1, #2
    b .Lsec01_00000878
.Lsec01_00000620:
    cmp r6, #10
    bgt .Lsec01_00000758
    ldr r3, [pc, #724]
    ldr r7, [pc, #704]
    ldrh r5, [lr, r3]
    ldr r4, [lr, r7]
    rsb r3, r5, #16
    cmp r4, r3
    ble .Lsec01_000006ac
    ldr ip, [pc, #684]
    mov r3, #2752
    ldrh r0, [lr, r3]
    ldrh r3, [lr, ip]
    orr r3, r3, r0, lsl r4
    ldr r1, [lr, #20]
    ldr r2, [lr, #8]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, ip]
    strb r3, [r2, r1]
    ldrh r3, [lr, ip]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r3, [lr, r7]
    rsb r2, r3, #16
    mov r0, r0, asr r2
    add r3, r5, r3
    add r1, r1, #1
    sub r3, r3, #16
    strh r0, [lr, ip]
    str r3, [lr, r7]
    str r1, [lr, #20]
    b .Lsec01_000006cc
.Lsec01_000006ac:
    ldr r1, [pc, #580]
    mov r3, #2752
    ldrh r2, [lr, r3]
    ldrh r3, [lr, r1]
    orr r3, r3, r2, lsl r4
    add r2, r4, r5
    strh r3, [lr, r1]
    str r2, [lr, r7]
.Lsec01_000006cc:
    ldr r5, [pc, #544]
    ldr r1, [lr, r5]
    cmp r1, #13
    sub r4, r6, #3
    ble .Lsec01_00000744
    ldr ip, [pc, #528]
    ldrh r3, [lr, ip]
    orr r3, r3, r4, lsl r1
    ldr r2, [lr, #8]
    ldr r1, [lr, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, ip]
    strb r3, [r2, r1]
    ldrh r3, [lr, ip]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r0, [lr, r5]
    mov r3, r4, lsl #16
    rsb r2, r0, #16
    mov r3, r3, lsr #16
    mov r3, r3, asr r2
    add r1, r1, #1
    sub r0, r0, #13
.Lsec01_00000734:
    strh r3, [lr, ip]
    str r0, [lr, r5]
    str r1, [lr, #20]
    b .Lsec01_00000880
.Lsec01_00000744:
    ldr r3, [pc, #428]
    ldrh r2, [lr, r3]
    orr r2, r2, r4, lsl r1
    add r1, r1, #3
    b .Lsec01_00000878
.Lsec01_00000758:
    ldr r3, [pc, #424]
    ldr r7, [pc, #400]
    ldrh r5, [lr, r3]
    ldr r4, [lr, r7]
    rsb r3, r5, #16
    cmp r4, r3
    ble .Lsec01_000007dc
    ldr ip, [pc, #380]
    ldr r3, [pc, #396]
    ldrh r0, [lr, r3]
    ldrh r3, [lr, ip]
    orr r3, r3, r0, lsl r4
    ldr r1, [lr, #20]
    ldr r2, [lr, #8]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, ip]
    strb r3, [r2, r1]
    ldrh r3, [lr, ip]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r3, [lr, r7]
    rsb r2, r3, #16
    mov r0, r0, asr r2
    add r3, r5, r3
    add r1, r1, #1
    sub r3, r3, #16
    strh r0, [lr, ip]
    str r3, [lr, r7]
    str r1, [lr, #20]
    b .Lsec01_000007fc
.Lsec01_000007dc:
    ldr r1, [pc, #276]
    ldr r3, [pc, #292]
    ldrh r2, [lr, r3]
    ldrh r3, [lr, r1]
    orr r3, r3, r2, lsl r4
    add r2, r4, r5
    strh r3, [lr, r1]
    str r2, [lr, r7]
.Lsec01_000007fc:
    ldr r5, [pc, #240]
    ldr r1, [lr, r5]
    cmp r1, #9
    sub r4, r6, #11
    ble .Lsec01_00000868
    ldr ip, [pc, #224]
    ldrh r3, [lr, ip]
    orr r3, r3, r4, lsl r1
    ldr r2, [lr, #8]
    ldr r1, [lr, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, ip]
    strb r3, [r2, r1]
    ldrh r3, [lr, ip]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r0, [lr, r5]
    mov r3, r4, lsl #16
    rsb r2, r0, #16
    mov r3, r3, lsr #16
    mov r3, r3, asr r2
    add r1, r1, #1
    sub r0, r0, #9
    b .Lsec01_00000734
.Lsec01_00000868:
    ldr r3, [pc, #136]
    ldrh r2, [lr, r3]
    orr r2, r2, r4, lsl r1
    add r1, r1, #7
.Lsec01_00000878:
    strh r2, [lr, r3]
    str r1, [lr, r5]
.Lsec01_00000880:
    cmp r9, #0
    moveq r1, r8
    moveq r6, r9
    moveq r0, #138
    beq .Lsec01_000008a8
    cmp r8, r9
    bne .Lsec01_000008b0
    mov r1, r8
    mov r6, #0
    mov r0, #6
.Lsec01_000008a8:
    mov r2, #3
    b .Lsec01_000008c0
.Lsec01_000008b0:
    mov r1, r8
    mov r6, #0
    mov r0, #7
    mov r2, #4
.Lsec01_000008c0:
    ldr ip, [sp, #4]
    add ip, ip, #1
    str ip, [sp, #4]
    add fp, fp, #4
    mov r8, r9
    mov r3, r6
.Lsec01_000008d8:
    ldr r4, [sp, #4]
    ldr ip, [sp]
    cmp r4, ip
    ble .Lsec01_00000378
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x000016bc
    .long 0x000016b8
    .long 0x00000abe
    .long 0x00000abc
    .long 0x00000ac2
    .long 0x00000ac6
    .long 0x00000ac4
.arm
_tr_tally:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    ldr r3, [pc, #208]
    ldr r4, [pc, #208]
    mov r5, r0
    ldr lr, [r5, r3]
    ldr r0, [r0, r4]
    sub r3, r3, #12
    ldr ip, [r5, r3]
    add r3, r5, r2, lsl #2
    add r8, r3, #144
    mov r6, r2
    mov r3, r0, lsl #1
    add r2, r0, #1
    strh r1, [r3, lr]
    strb r6, [ip, r0]
    str r2, [r5, r4]
    cmp r1, #0
    ldreqh r3, [r8, #4]
    addeq r3, r3, #1
    ldr sl, [pc, #144]
    sub r7, r1, #1
    streqh r3, [r8, #4]
    beq .Lsec01_000009c4
    ldr r3, [pc, #132]
    ldrb r3, [r3, r6]
    ldr r2, [r5, sl]
    add r3, r3, #256
    add r2, r2, #1
    add r3, r3, #1
    str r2, [r5, sl]
    add r3, r5, r3, lsl #2
    add r3, r3, #144
    ldrh r2, [r3, #4]
    add r2, r2, #1
    strh r2, [r3, #4]
    ldr r3, [pc, #88]
    cmp r7, #255
    add r1, r3, r7, lsr #7
    ldrhib r3, [r1, #256]
    ldrlsb r3, [r3, r7]
    ldr r1, [pc, #72]
    add r2, r5, r3, lsl #2
    ldrh r3, [r2, r1]
    add r3, r3, #1
    strh r3, [r2, r1]
.Lsec01_000009c4:
    ldr r3, [pc, #56]
    ldr r0, [r5, r3]
    add r3, r3, #4
    ldr r3, [r5, r3]
    sub r0, r0, #1
    cmp r3, r0
    movne r0, #0
    moveq r0, #1
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long 0x000016a4
    .long 0x000016a0
    .long 0x000016b0
    .long _length_code
    .long _dist_code
    .long 0x00000988
    .long 0x0000169c
.arm
compress_block:
    ldr r3, [pc, #1124]
    ldr r3, [r0, r3]
    cmp r3, #0
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    mov lr, r0
    mov r8, r1
    mov fp, r2
    beq .Lsec01_00000dc8
    mov r9, #0
.Lsec01_00000a2c:
    ldr r3, [pc, #1092]
    ldr r2, [lr, r3]
    mov r3, r9, lsl #1
    ldrh sl, [r3, r2]
    ldr r3, [pc, #1080]
    ldr r3, [lr, r3]
    cmp sl, #0
    ldrb r6, [r3, r9]
    add r9, r9, #1
    bne .Lsec01_00000af4
    mov r2, r6, lsl #2
    add r3, r8, r2
    ldr r5, [pc, #1052]
    ldrh r4, [r3, #2]
    ldr r1, [lr, r5]
    rsb r3, r4, #16
    cmp r1, r3
    ldrh ip, [r8, r2]
    ble .Lsec01_00000ad8
    ldr r0, [pc, #1028]
    ldrh r3, [lr, r0]
    orr r3, r3, ip, lsl r1
    ldr r2, [lr, #8]
    ldr r1, [lr, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, r0]
    strb r3, [r2, r1]
    ldrh r3, [lr, r0]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r3, [lr, r5]
    rsb r2, r3, #16
    mov r2, ip, asr r2
    add r3, r4, r3
    add r1, r1, #1
    sub r3, r3, #16
    strh r2, [lr, r0]
    str r3, [lr, r5]
    str r1, [lr, #20]
    b .Lsec01_00000db8
.Lsec01_00000ad8:
    ldr r3, [pc, #932]
    ldrh r2, [lr, r3]
    orr r2, r2, ip, lsl r1
    add r1, r1, r4
    strh r2, [lr, r3]
    str r1, [lr, r5]
    b .Lsec01_00000db8
.Lsec01_00000af4:
    ldr r3, [pc, #908]
    ldrb r5, [r3, r6]
    add r2, r8, r5, lsl #2
    add r2, r2, #1024
    add r2, r2, #4
    ldr r7, [pc, #880]
    ldrh r4, [r2, #2]
    ldr r1, [lr, r7]
    rsb r3, r4, #16
    cmp r1, r3
    ldrh ip, [r2]
    ble .Lsec01_00000b84
    ldr r0, [pc, #856]
    ldrh r3, [lr, r0]
    orr r3, r3, ip, lsl r1
    ldr r2, [lr, #8]
    ldr r1, [lr, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, r0]
    strb r3, [r2, r1]
    ldrh r3, [lr, r0]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r3, [lr, r7]
    rsb r2, r3, #16
    mov r2, ip, asr r2
    add r3, r4, r3
    add r1, r1, #1
    sub r3, r3, #16
    strh r2, [lr, r0]
    str r3, [lr, r7]
    str r1, [lr, #20]
    b .Lsec01_00000b9c
.Lsec01_00000b84:
    ldr r3, [pc, #760]
    ldrh r2, [lr, r3]
    orr r2, r2, ip, lsl r1
    add r1, r1, r4
    strh r2, [lr, r3]
    str r1, [lr, r7]
.Lsec01_00000b9c:
    ldr r3, [pc, #744]
    ldr r4, [r3, r5, lsl #2]
    cmp r4, #0
    beq .Lsec01_00000c50
    ldr r3, [pc, #732]
    ldr r7, [pc, #712]
    ldr r2, [r3, r5, lsl #2]
    ldr r1, [lr, r7]
    rsb r3, r4, #16
    rsb r5, r2, r6
    cmp r1, r3
    mov r0, r5, lsl r1
    ble .Lsec01_00000c38
    ldr ip, [pc, #684]
    ldrh r3, [lr, ip]
    orr r3, r3, r0
    ldr r2, [lr, #8]
    ldr r0, [lr, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, ip]
    strb r3, [r2, r0]
    ldrh r3, [lr, ip]
    ldr r2, [lr, #8]
    add r0, r0, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r0]
    ldr r1, [lr, r7]
    mov r2, r5, lsl #16
    rsb r3, r1, #16
    mov r2, r2, lsr #16
    mov r2, r2, asr r3
    add r1, r4, r1
    add r0, r0, #1
    sub r1, r1, #16
    strh r2, [lr, ip]
    str r1, [lr, r7]
    str r0, [lr, #20]
    b .Lsec01_00000c50
.Lsec01_00000c38:
    ldr r3, [pc, #580]
    ldrh r2, [lr, r3]
    add r1, r1, r4
    orr r2, r2, r0
    strh r2, [lr, r3]
    str r1, [lr, r7]
.Lsec01_00000c50:
    sub r6, sl, #1
    ldr r2, [pc, #568]
    cmp r6, #255
    addhi r3, r2, r6, lsr #7
    ldrhib r5, [r3, #256]
    ldrlsb r5, [r2, r6]
    mov r2, r5, lsl #2
    add r3, fp, r2
    ldr r7, [pc, #520]
    ldrh r4, [r3, #2]
    ldr r1, [lr, r7]
    rsb r3, r4, #16
    cmp r1, r3
    ldrh ip, [fp, r2]
    ble .Lsec01_00000cec
    ldr r0, [pc, #496]
    ldrh r3, [lr, r0]
    orr r3, r3, ip, lsl r1
    ldr r2, [lr, #8]
    ldr r1, [lr, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, r0]
    strb r3, [r2, r1]
    ldrh r3, [lr, r0]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r3, [lr, r7]
    rsb r2, r3, #16
    mov r2, ip, asr r2
    add r3, r4, r3
    add r1, r1, #1
    sub r3, r3, #16
    strh r2, [lr, r0]
    str r3, [lr, r7]
    str r1, [lr, #20]
    b .Lsec01_00000d04
.Lsec01_00000cec:
    ldr r3, [pc, #400]
    ldrh r2, [lr, r3]
    orr r2, r2, ip, lsl r1
    add r1, r1, r4
    strh r2, [lr, r3]
    str r1, [lr, r7]
.Lsec01_00000d04:
    ldr r3, [pc, #396]
    ldr r4, [r3, r5, lsl #2]
    cmp r4, #0
    beq .Lsec01_00000db8
    ldr r3, [pc, #384]
    ldr r7, [pc, #352]
    ldr r2, [r3, r5, lsl #2]
    ldr r1, [lr, r7]
    rsb r3, r4, #16
    rsb r5, r2, r6
    cmp r1, r3
    mov r0, r5, lsl r1
    ble .Lsec01_00000da0
    ldr ip, [pc, #324]
    ldrh r3, [lr, ip]
    orr r3, r3, r0
    ldr r2, [lr, #8]
    ldr r0, [lr, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, ip]
    strb r3, [r2, r0]
    ldrh r3, [lr, ip]
    ldr r2, [lr, #8]
    add r0, r0, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r0]
    ldr r1, [lr, r7]
    mov r2, r5, lsl #16
    rsb r3, r1, #16
    mov r2, r2, lsr #16
    mov r2, r2, asr r3
    add r1, r4, r1
    add r0, r0, #1
    sub r1, r1, #16
    strh r2, [lr, ip]
    str r1, [lr, r7]
    str r0, [lr, #20]
    b .Lsec01_00000db8
.Lsec01_00000da0:
    ldr r3, [pc, #220]
    ldrh r2, [lr, r3]
    add r1, r1, r4
    orr r2, r2, r0
    strh r2, [lr, r3]
    str r1, [lr, r7]
.Lsec01_00000db8:
    ldr r3, [pc, #180]
    ldr r3, [lr, r3]
    cmp r9, r3
    bcc .Lsec01_00000a2c
.Lsec01_00000dc8:
    add r5, r8, #1024
    ldr r6, [pc, #172]
    ldrh r4, [r5, #2]
    ldr r1, [lr, r6]
    rsb r3, r4, #16
    cmp r1, r3
    ldrh ip, [r5]
    ble .Lsec01_00000e48
    ldr r0, [pc, #148]
    ldrh r3, [lr, r0]
    orr r3, r3, ip, lsl r1
    ldr r2, [lr, #8]
    ldr r1, [lr, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [lr, r0]
    strb r3, [r2, r1]
    ldrh r3, [lr, r0]
    ldr r2, [lr, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r3, [lr, r6]
    rsb r2, r3, #16
    mov r2, ip, asr r2
    add r3, r4, r3
    add r1, r1, #1
    sub r3, r3, #16
    strh r2, [lr, r0]
    str r3, [lr, r6]
    str r1, [lr, #20]
    b .Lsec01_00000e60
.Lsec01_00000e48:
    ldr r3, [pc, #52]
    ldrh r2, [lr, r3]
    orr r2, r2, ip, lsl r1
    add r1, r1, r4
    strh r2, [lr, r3]
    str r1, [lr, r6]
.Lsec01_00000e60:
    ldrh r2, [r5, #2]
    ldr r3, [pc, #52]
    str r2, [lr, r3]
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x000016a0
    .long 0x000016a4
    .long 0x00001698
    .long 0x000016bc
    .long 0x000016b8
    .long _length_code
    .long .Lsec06_0000080c
    .long .Lsec06_00000880
    .long _dist_code
    .long .Lsec06_000008f4
    .long .Lsec06_0000096c
    .long 0x000016b4
.arm
build_tree:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr r3, [r1, #8]
    mov r8, r1
    ldr r7, [r3, #12]
    ldr r6, [r3]
    ldr r2, [pc, #1376]
    ldr r3, [pc, #1376]
    mov r1, #0
    mov r5, r0
    ldr sl, [r8]
    sub sp, sp, #60
    mvn r0, #0
    str r2, [r5, r3]
    mov ip, r1
    sub r3, r3, #4
    mov lr, r1
    str r0, [sp]
    str r1, [r5, r3]
    b .Lsec01_00000f28
.Lsec01_00000ef0:
    ldrh r3, [lr, sl]
    cmp r3, #0
    ldrne r2, [r5, r4]
    ldrne r3, [pc, #1316]
    addne r2, r2, #1
    movne r1, #0
    strne ip, [sp]
    strne r2, [r5, r4]
    strneb r1, [r0, r3]
    streqh r3, [r2, #2]
    addne r3, r5, r2, lsl #2
    strne ip, [r3, #2908]
    add lr, lr, #4
    add ip, ip, #1
.Lsec01_00000f28:
    cmp ip, r7
    ldr r4, [pc, #1272]
    add r2, sl, lr
    add r0, r5, ip
    blt .Lsec01_00000ef0
    b .Lsec01_00000fac
.Lsec01_00000f40:
    ldr r1, [sp]
    cmp r1, #1
    str r3, [r5, r2]
    ldrle r2, [sp]
    addle r2, r2, #1
    movle r0, r2
    strle r2, [sp]
    mov r1, #1
    add r2, r5, r3, lsl #2
    mov r3, r0, lsl #2
    str r0, [r2, #2908]
    ldr ip, [pc, #1212]
    strh r1, [sl, r3]
    ldr r2, [r5, ip]
    add lr, r6, r3
    ldr r3, [pc, #1188]
    sub r2, r2, #1
    add r0, r0, r5
    mov r1, #0
    strb r1, [r0, r3]
    ldr r4, [pc, #1180]
    str r2, [r5, ip]
    cmp r6, #0
    ldrneh r2, [lr, #2]
    ldrne r3, [r5, r4]
    rsbne r3, r2, r3
    strne r3, [r5, r4]
.Lsec01_00000fac:
    ldr r2, [pc, #1144]
    ldr r3, [r5, r2]
    cmp r3, #1
    mov r0, #0
    add r3, r3, #1
    ble .Lsec01_00000f40
    ldr r3, [sp]
    str r3, [r8, #4]
    ldr r3, [r5, r2]
    add r3, r3, r3, lsr #31
    mov r4, r3, asr #1
    b .Lsec01_00000fe0
.Lsec01_00000fdc:
    bl pqdownheap
.Lsec01_00000fe0:
    cmp r4, #0
    mov r2, r4
    mov r0, r5
    mov r1, sl
    sub r4, r4, #1
    bgt .Lsec01_00000fdc
    add r3, r7, #5184
    add r3, r3, #24
    mov r6, r7
    add r9, r5, r3
    add r7, sl, r7, lsl #2
.Lsec01_0000100c:
    ldr r1, [pc, #1048]
    ldr r3, [r5, r1]
    add r2, r5, r3, lsl #2
    ldr r2, [r2, #2908]
    sub r3, r3, #1
    ldr r4, [r5, #2912]
    str r3, [r5, r1]
    str r2, [r5, #2912]
    mov r0, r5
    mov r1, sl
    mov r2, #1
    bl pqdownheap
    ldr ip, [pc, #992]
    ldr r3, [r5, ip]
    sub r3, r3, #1
    ldr r1, [r5, #2912]
    sub r2, r3, #1
    add r0, r5, r2, lsl #2
    add r3, r5, r3, lsl #2
    str r4, [r3, #2908]
    str r2, [r5, ip]
    str r1, [r0, #2908]
    mov ip, r1, lsl #2
    mov r0, r4, lsl #2
    ldrh r3, [sl, r0]
    ldrh r2, [sl, ip]
    add r3, r3, r2
    strh r3, [r7]
    ldr r3, [pc, #932]
    add r1, r1, r5
    add r4, r4, r5
    ldrb r2, [r1, r3]
    ldrb r3, [r4, r3]
    cmp r3, r2
    add r1, r3, #1
    add r2, r2, #1
    mov r3, r6, lsl #16
    mov r3, r3, lsr #16
    and r1, r1, #255
    add lr, sl, r0
    andcc r1, r2, #255
    add r0, sl, ip
    strb r1, [r9], #1
    mov r2, #1
    strh r3, [r0, #2]
    mov r1, sl
    strh r3, [lr, #2]
    mov r0, r5
    str r6, [r5, #2912]
    bl pqdownheap
    ldr r3, [pc, #848]
    ldr r3, [r5, r3]
    cmp r3, #1
    add r6, r6, #1
    add r7, r7, #4
    bgt .Lsec01_0000100c
    ldr r0, [pc, #816]
    ldr r3, [r5, r0]
    ldr r1, [r5, #2912]
    sub r3, r3, #1
    add r2, r5, r3, lsl #2
    str r3, [r5, r0]
    str r1, [r2, #2908]
    ldr r3, [r8, #8]
    ldr fp, [r8]
    ldr r4, [r3]
    ldr r0, [r3, #4]
    ldr r6, [r3, #16]
    ldr r8, [r8, #4]
    ldr r3, [r3, #8]
    str r8, [sp, #20]
    str r4, [sp, #16]
    str r0, [sp, #12]
    str r3, [sp, #8]
    mov r1, #0
.Lsec01_00001138:
    add r2, r5, r1
    ldr r3, [pc, #756]
    add r1, r1, #2
    mov r4, #0
    cmp r1, #32
    strh r4, [r2, r3]
    bne .Lsec01_00001138
    ldr r2, [pc, #712]
    ldr r3, [r5, r2]
    add r3, r5, r3, lsl #2
    ldr r3, [r3, #2908]
    add r3, fp, r3, lsl #2
    strh r4, [r3, #2]
    ldr r2, [r5, r2]
    add r3, r5, r2, lsl #2
    add lr, r3, #2896
    mov r0, #0
    add lr, lr, #12
    add r8, r2, #1
    str r0, [sp, #4]
    b .Lsec01_00001244
.Lsec01_0000118c:
    ldr r0, [lr, #4]
    mov r7, r0, lsl #2
    add ip, fp, r7
    ldrh r3, [ip, #2]
    add r3, fp, r3, lsl #2
    ldrh r3, [r3, #2]
    add r2, r3, #1
    cmp r2, r6
    ldrgt r1, [sp, #4]
    movgt r2, r6
    ldr r4, [sp, #20]
    addgt r1, r1, #1
    add r3, r5, r2, lsl #1
    strgt r1, [sp, #4]
    add r1, r3, #2864
    cmp r0, r4
    strh r2, [ip, #2]
    add r1, r1, #8
    bgt .Lsec01_0000123c
    ldrh r3, [r1, #4]
    ldr r4, [sp, #8]
    add r3, r3, #1
    cmp r0, r4
    strh r3, [r1, #4]
    ldrge r1, [sp, #12]
    rsb r0, r4, r0
    ldr r3, [sp, #16]
    mov r4, #0
    ldrge r4, [r1, r0, lsl #2]
    ldr r1, [pc, #552]
    ldrh r0, [ip]
    add r7, r3, r7
    ldr r3, [r5, r1]
    add r2, r2, r4
    mla r3, r2, r0, r3
    ldr r2, [sp, #16]
    str r3, [r5, r1]
    cmp r2, #0
    ldr r9, [pc, #520]
    ldrneh r3, [r7, #2]
    ldrne r2, [r5, r9]
    addne r3, r3, r4
    mlane r3, r0, r3, r2
    strne r3, [r5, r9]
.Lsec01_0000123c:
    add r8, r8, #1
    add lr, lr, #4
.Lsec01_00001244:
    cmp r8, #572
    ble .Lsec01_0000118c
    ldr r3, [sp, #4]
    cmp r3, #0
    beq .Lsec01_00001360
.Lsec01_00001258:
    add r3, r5, r6, lsl #1
    add r3, r3, #2864
    add r3, r3, #12
    mov r0, r6
.Lsec01_00001268:
    ldrh r1, [r3, #-2]!
    cmp r1, #0
    sub r0, r0, #1
    beq .Lsec01_00001268
    add r2, r5, r0, lsl #1
    add r3, r0, #1
    add r2, r2, #2864
    add r2, r2, #8
    sub r1, r1, #1
    add r3, r5, r3, lsl #1
    strh r1, [r2, #4]
    add r3, r3, #2864
    add r3, r3, #8
    ldrh r2, [r3, #4]
    mov r0, r6, lsl #1
    add r2, r2, #2
    add r1, r0, r5
    strh r2, [r3, #4]
    add r1, r1, #2864
    add r1, r1, #8
    ldr r4, [sp, #4]
    ldrh r3, [r1, #4]
    sub r4, r4, #2
    sub r3, r3, #1
    cmp r4, #0
    str r4, [sp, #4]
    strh r3, [r1, #4]
    bgt .Lsec01_00001258
    add r3, r0, r5
    add r2, r5, r8, lsl #2
    add r1, r3, #2864
    add r0, r2, #2896
    add r1, r1, #12
    add r0, r0, #8
    b .Lsec01_00001358
.Lsec01_000012f4:
    ldrh lr, [r1]
    add ip, r0, #4
    b .Lsec01_00001348
.Lsec01_00001300:
    ldr r3, [ip, #-4]
    ldr r4, [sp, #20]
    mov r2, r3, lsl #2
    cmp r3, r4
    sub ip, ip, #4
    add r7, fp, r2
    sub r0, r0, #4
    bgt .Lsec01_00001348
    ldrh r3, [r7, #2]
    ldr r8, [pc, #260]
    cmp r3, r6
    rsb r4, r3, r6
    ldrneh r3, [fp, r2]
    ldrne r2, [r5, r8]
    mlane r3, r4, r3, r2
    strne r3, [r5, r8]
    strneh r6, [r7, #2]
    sub lr, lr, #1
.Lsec01_00001348:
    cmp lr, #0
    bne .Lsec01_00001300
    sub r6, r6, #1
    sub r1, r1, #2
.Lsec01_00001358:
    cmp r6, #0
    bne .Lsec01_000012f4
.Lsec01_00001360:
    add r0, r5, #2864
    add r0, r0, #12
    mov r1, #0
    mov ip, #1
.Lsec01_00001370:
    ldrh r3, [r0], #2
    add r3, r1, r3
    mov r3, r3, lsl #17
    mov r2, ip, lsl #1
    add ip, ip, #1
    mov r1, r3, lsr #16
    cmp ip, #16
    add r3, sp, #24
    strh r1, [r2, r3]
    bne .Lsec01_00001370
    mov r4, #0
    mov lr, r4
    b .Lsec01_00001408
.Lsec01_000013a4:
    add r3, sl, lr
    ldrh ip, [r3, #2]
    cmp ip, #0
    beq .Lsec01_00001400
    add r0, sp, #56
    add r3, r0, ip, lsl #1
    ldrh r0, [r3, #-32]
    add r3, r0, #1
    mov r3, r3, lsl #16
    mov r5, r3, lsr #16
    mov r1, ip
    mov r2, #0
.Lsec01_000013d4:
    and r3, r0, #1
    orr r3, r2, r3
    subs r1, r1, #1
    mov r0, r0, lsr #1
    mov r2, r3, lsl #1
    bne .Lsec01_000013d4
    add r1, sp, #56
    add r3, r1, ip, lsl #1
    mov r2, r2, lsr #1
    strh r5, [r3, #-32]
    strh r2, [lr, sl]
.Lsec01_00001400:
    add r4, r4, #1
    add lr, lr, #4
.Lsec01_00001408:
    ldr r2, [sp]
    cmp r4, r2
    ble .Lsec01_000013a4
    add sp, sp, #60
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x0000023d
    .long 0x00001454
    .long 0x00001458
    .long 0x00001450
    .long 0x000016a8
    .long 0x000016ac
    .long 0x00000b3c
.arm
bi_flush:
    stmdb sp!, {r4, r5, lr}
    ldr r4, [pc, #144]
    ldr r3, [r0, r4]
    cmp r3, #16
    ldr lr, [pc, #136]
    mov ip, r0
    mov r5, #0
    bne .Lsec01_00001494
    ldr r2, [r0, #20]
    ldrh r1, [r0, lr]
    ldr r3, [r0, #8]
    strb r1, [r3, r2]
    ldrh r3, [r0, lr]
    add r2, r2, #1
    ldr r1, [r0, #8]
    mov r3, r3, lsr #8
    add r0, r2, #1
    strb r3, [r1, r2]
    str r5, [ip, r4]
    str r0, [ip, #20]
    strh r5, [ip, lr]
    b .Lsec01_000014d0
.Lsec01_00001494:
    cmp r3, #7
    ldr r0, [pc, #60]
    ble .Lsec01_000014d0
    ldr r1, [ip, #20]
    ldrh r2, [ip, r0]
    ldr r3, [ip, #8]
    strb r2, [r3, r1]
    ldrh r2, [ip, r0]
    ldr r3, [ip, r4]
    add r1, r1, #1
    mov r2, r2, lsr #8
    sub r3, r3, #8
    str r3, [ip, r4]
    strh r2, [ip, r0]
    str r1, [ip, #20]
.Lsec01_000014d0:
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long 0x000016bc
    .long 0x000016b8
.arm
_tr_align:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr r5, [pc, #664]
    ldr lr, [r0, r5]
    cmp lr, #13
    sub sp, sp, #4
    mov r4, r0
    ble .Lsec01_0000155c
    ldr ip, [pc, #644]
    ldrh r3, [r0, ip]
    mov r0, #2
    orr r3, r3, r0, lsl lr
    ldr r1, [r4, #20]
    ldr r2, [r4, #8]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r4, ip]
    strb r3, [r2, r1]
    ldrh r3, [r4, ip]
    ldr r2, [r4, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r2, [r4, r5]
    rsb r3, r2, #16
    mov r0, r0, asr r3
    add r1, r1, #1
    sub r2, r2, #13
    strh r0, [r4, ip]
    str r2, [r4, r5]
    str r1, [r4, #20]
    b .Lsec01_00001578
.Lsec01_0000155c:
    ldr r1, [pc, #548]
    ldrh r3, [r0, r1]
    mov r2, #2
    orr r3, r3, r2, lsl lr
    add r2, lr, #3
    strh r3, [r0, r1]
    str r2, [r0, r5]
.Lsec01_00001578:
    ldr r2, [pc, #524]
    ldr r3, [pc, #524]
    ldr r5, [pc, #508]
    ldrh r6, [r2, r3]
    ldr lr, [r4, r5]
    rsb r7, r6, #16
    cmp lr, r7
    ble .Lsec01_00001600
    ldr ip, [pc, #488]
    mov r3, #1024
    ldrh r0, [r2, r3]
    ldrh r3, [r4, ip]
    orr r3, r3, r0, lsl lr
    ldr r1, [r4, #20]
    ldr r2, [r4, #8]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r4, ip]
    strb r3, [r2, r1]
    ldrh r3, [r4, ip]
    ldr r2, [r4, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r3, [r4, r5]
    rsb r2, r3, #16
    mov r0, r0, asr r2
    add r3, r6, r3
    add r1, r1, #1
    sub r3, r3, #16
    strh r0, [r4, ip]
    str r3, [r4, r5]
    str r1, [r4, #20]
    b .Lsec01_00001620
.Lsec01_00001600:
    ldr r1, [pc, #384]
    mov r3, #1024
    ldrh r2, [r2, r3]
    ldrh r3, [r4, r1]
    orr r3, r3, r2, lsl lr
    add r2, lr, r6
    strh r3, [r4, r1]
    str r2, [r4, r5]
.Lsec01_00001620:
    mov r0, r4
    bl bi_flush
    ldr r5, [pc, #340]
    ldr r3, [pc, #352]
    ldr lr, [r4, r5]
    ldr r3, [r4, r3]
    rsb r3, lr, r3
    cmn r3, #2
    bge .Lsec01_0000176c
    cmp lr, #13
    ble .Lsec01_000016ac
    ldr ip, [pc, #308]
    ldrh r3, [r4, ip]
    mov r0, #2
    orr r3, r3, r0, lsl lr
    ldr r1, [r4, #20]
    ldr r2, [r4, #8]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r4, ip]
    strb r3, [r2, r1]
    ldrh r3, [r4, ip]
    ldr r2, [r4, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r2, [r4, r5]
    rsb r3, r2, #16
    mov r0, r0, asr r3
    add r1, r1, #1
    sub r2, r2, #13
    strh r0, [r4, ip]
    str r2, [r4, r5]
    str r1, [r4, #20]
    b .Lsec01_000016c8
.Lsec01_000016ac:
    ldr r1, [pc, #212]
    ldrh r3, [r4, r1]
    mov r2, #2
    orr r3, r3, r2, lsl lr
    add r2, lr, #3
    strh r3, [r4, r1]
    str r2, [r4, r5]
.Lsec01_000016c8:
    ldr r5, [pc, #180]
    ldr lr, [r4, r5]
    cmp lr, r7
    ldr r2, [pc, #176]
    ble .Lsec01_00001744
    ldr ip, [pc, #164]
    mov r3, #1024
    ldrh r0, [r2, r3]
    ldrh r3, [r4, ip]
    orr r3, r3, r0, lsl lr
    ldr r1, [r4, #20]
    ldr r2, [r4, #8]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r4, ip]
    strb r3, [r2, r1]
    ldrh r3, [r4, ip]
    ldr r2, [r4, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r3, [r4, r5]
    rsb r2, r3, #16
    mov r0, r0, asr r2
    add r3, r6, r3
    add r1, r1, #1
    sub r3, r3, #16
    strh r0, [r4, ip]
    str r3, [r4, r5]
    str r1, [r4, #20]
    b .Lsec01_00001764
.Lsec01_00001744:
    ldr r1, [pc, #60]
    mov r3, #1024
    ldrh r2, [r2, r3]
    ldrh r3, [r4, r1]
    orr r3, r3, r2, lsl lr
    add r2, lr, r6
    strh r3, [r4, r1]
    str r2, [r4, r5]
.Lsec01_00001764:
    mov r0, r4
    bl bi_flush
.Lsec01_0000176c:
    ldr r3, [pc, #32]
    mov r2, #7
    str r2, [r4, r3]
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long 0x000016bc
    .long 0x000016b8
    .long .Lsec06_00000300
    .long 0x00000402
    .long 0x000016b4
.arm
bi_windup:
    ldr r3, [pc, #132]
    ldr r3, [r0, r3]
    cmp r3, #8
    str lr, [sp, #-4]!
    mov ip, r0
    ldr lr, [pc, #116]
    ble .Lsec01_000017e4
    ldr r2, [r0, #20]
    ldr r1, [r0, #8]
    ldrh r3, [r0, lr]
    strb r3, [r1, r2]
    ldrh r3, [r0, lr]
    add r2, r2, #1
    ldr r0, [r0, #8]
    mov r3, r3, lsr #8
    add r1, r2, #1
    strb r3, [r0, r2]
    str r1, [ip, #20]
    b .Lsec01_00001808
.Lsec01_000017e4:
    cmp r3, #0
    ble .Lsec01_00001808
    ldr r3, [pc, #52]
    ldr r0, [r0, #20]
    ldrh r1, [ip, r3]
    ldr r3, [ip, #8]
    add r2, r0, #1
    strb r1, [r3, r0]
    str r2, [ip, #20]
.Lsec01_00001808:
    ldr r2, [pc, #20]
    mov r3, #0
    str r3, [ip, r2]
    sub r2, r2, #4
    strh r3, [ip, r2]
    ldr lr, [sp], #4
    bx lr
    .long 0x000016bc
    .long 0x000016b8
.arm
_tr_stored_block:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr r6, [pc, #316]
    mov r4, r0
    ldr r0, [r0, r6]
    cmp r0, #13
    mov r7, r1
    sub sp, sp, #4
    mov lr, r3
    mov r5, r2
    mov r1, r3, lsl r0
    ble .Lsec01_000018bc
    ldr ip, [pc, #280]
    ldrh r3, [r4, ip]
    orr r3, r3, r1
    ldr r2, [r4, #8]
    ldr r1, [r4, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r4, ip]
    strb r3, [r2, r1]
    ldrh r3, [r4, ip]
    ldr r2, [r4, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r0, [r4, r6]
    mov r3, lr, lsl #16
    rsb r2, r0, #16
    mov r3, r3, lsr #16
    mov r3, r3, asr r2
    add r1, r1, #1
    sub r0, r0, #13
    strh r3, [r4, ip]
    str r0, [r4, r6]
    str r1, [r4, #20]
    b .Lsec01_000018d4
.Lsec01_000018bc:
    ldr r3, [pc, #180]
    ldrh r2, [r4, r3]
    orr r2, r2, r1
    add r1, r0, #3
    strh r2, [r4, r3]
    str r1, [r4, r6]
.Lsec01_000018d4:
    mov r0, r4
    bl bi_windup
    ldr r2, [r4, #20]
    ldr r0, [r4, #8]
    ldr r3, [pc, #144]
    mov r1, #8
    str r1, [r4, r3]
    strb r5, [r0, r2]
    mov r1, r5, lsl #16
    ldr r0, [r4, #8]
    mov r3, r1, lsr #24
    add r2, r2, #1
    strb r3, [r0, r2]
    ldr r0, [r4, #8]
    add r2, r2, #1
    mvn r3, r5
    strb r3, [r0, r2]
    eor r1, r1, #-16777216
    add r2, r2, #1
    ldr r0, [r4, #8]
    mov r1, r1, lsr #24
    add r3, r2, #1
    mov lr, r7
    mov ip, r5
    strb r1, [r0, r2]
    str r3, [r4, #20]
    b .Lsec01_00001958
.Lsec01_00001940:
    ldr r1, [r4, #20]
    ldrb r0, [lr, #-1]
    ldr r3, [r4, #8]
    add r2, r1, #1
    strb r0, [r3, r1]
    str r2, [r4, #20]
.Lsec01_00001958:
    sub ip, ip, #1
    cmn ip, #1
    add lr, lr, #1
    bne .Lsec01_00001940
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long 0x000016bc
    .long 0x000016b8
    .long 0x000016b4
.arm
_tr_flush_block:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    mov r6, r0
    ldr r0, [r0, #132]
    cmp r0, #0
    addle ip, r2, #5
    mov r4, r2
    sub sp, sp, #4
    mov r7, r1
    mov r8, r3
    movle r2, ip
    movle r5, #0
    ble .Lsec01_00001adc
    cmp r4, #0
    beq .Lsec01_00001a20
    ldr r0, [r6]
    ldr r3, [r0, #44]
    cmp r3, #2
    bne .Lsec01_00001a20
    mov r2, r6
    mov r1, #0
.Lsec01_000019d0:
    ldrh r3, [r2, #148]
    cmp r3, #0
    add r2, r2, #4
    bne .Lsec01_00001a10
    add r1, r1, #1
    cmp r1, #9
    bne .Lsec01_000019d0
    mov r2, r6
    add r1, r1, #5
.Lsec01_000019f4:
    ldrh r3, [r2, #204]
    cmp r3, #0
    add r2, r2, #4
    bne .Lsec01_00001a10
    add r1, r1, #1
    cmp r1, #32
    bne .Lsec01_000019f4
.Lsec01_00001a10:
    cmp r1, #32
    movne r3, #0
    moveq r3, #1
    str r3, [r0, #44]
.Lsec01_00001a20:
    add r1, r6, #2832
    add r1, r1, #8
    mov r0, r6
    bl build_tree
    add r1, r6, #2848
    mov r0, r6
    add r1, r1, #4
    bl build_tree
    mov r0, r6
    add r1, r6, #148
    ldr r2, [r6, #2844]
    bl scan_tree
    add r1, r6, #2432
    ldr r2, [r6, #2856]
    mov r0, r6
    add r1, r1, #8
    bl scan_tree
    mov r0, r6
    add r1, r6, #2864
    bl build_tree
    ldr r2, [pc, #1228]
    mov r5, #18
.Lsec01_00001a78:
    ldrb r3, [r2, #18]
    add r3, r6, r3, lsl #2
    add r3, r3, #2672
    add r3, r3, #8
    ldrh r3, [r3, #6]
    cmp r3, #0
    sub r2, r2, #1
    bne .Lsec01_00001aa4
    sub r5, r5, #1
    cmp r5, #2
    bne .Lsec01_00001a78
.Lsec01_00001aa4:
    ldr r0, [pc, #1180]
    ldr r3, [r6, r0]
    mov r2, #3
    add r3, r3, #17
    mla r1, r5, r2, r3
    ldr r3, [pc, #1164]
    ldr r3, [r6, r3]
    add r2, r1, #10
    add r3, r3, #10
    mov r2, r2, lsr #3
    mov ip, r3, lsr #3
    cmp ip, r2
    str r1, [r6, r0]
    movls r2, ip
.Lsec01_00001adc:
    add r3, r4, #4
    cmp r3, r2
    movhi r3, #0
    movls r3, #1
    cmp r7, #0
    moveq r3, #0
    cmp r3, #0
    beq .Lsec01_00001b14
    mov r1, r7
    mov r2, r4
    mov r0, r6
    mov r3, r8
.Lsec01_00001b0c:
    bl _tr_stored_block
    b .Lsec01_00001f18
.Lsec01_00001b14:
    ldr r3, [r6, #136]
    cmp ip, r2
    cmpne r3, #4
    bne .Lsec01_00001bc4
    ldr r4, [pc, #1060]
    ldr r1, [r6, r4]
    cmp r1, #13
    add lr, r8, #2
    ble .Lsec01_00001b9c
    ldr ip, [pc, #1044]
    ldrh r3, [r6, ip]
    orr r3, r3, lr, lsl r1
    ldr r2, [r6, #8]
    ldr r1, [r6, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r6, ip]
    strb r3, [r2, r1]
    ldrh r3, [r6, ip]
    ldr r2, [r6, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r0, [r6, r4]
    mov r3, lr, lsl #16
    rsb r2, r0, #16
    mov r3, r3, lsr #16
    mov r3, r3, asr r2
    add r1, r1, #1
    sub r0, r0, #13
    strh r3, [r6, ip]
    str r0, [r6, r4]
    str r1, [r6, #20]
    b .Lsec01_00001bb4
.Lsec01_00001b9c:
    ldr r3, [pc, #944]
    ldrh r2, [r6, r3]
    orr r2, r2, lr, lsl r1
    add r1, r1, #3
    strh r2, [r6, r3]
    str r1, [r6, r4]
.Lsec01_00001bb4:
    ldr r1, [pc, #924]
    ldr r2, [pc, #924]
    mov r0, r6
    b .Lsec01_00001f14
.Lsec01_00001bc4:
    ldr r4, [pc, #900]
    ldr r1, [r6, r4]
    cmp r1, #13
    add lr, r8, #4
    ble .Lsec01_00001c3c
    ldr ip, [pc, #884]
    ldrh r3, [r6, ip]
    orr r3, r3, lr, lsl r1
    ldr r2, [r6, #8]
    ldr r1, [r6, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r6, ip]
    strb r3, [r2, r1]
    ldrh r3, [r6, ip]
    ldr r2, [r6, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r0, [r6, r4]
    mov r3, lr, lsl #16
    rsb r2, r0, #16
    mov r3, r3, lsr #16
    mov r3, r3, asr r2
    add r1, r1, #1
    sub r0, r0, #13
    strh r3, [r6, ip]
    str r0, [r6, r4]
    str r1, [r6, #20]
    b .Lsec01_00001c54
.Lsec01_00001c3c:
    ldr r3, [pc, #784]
    ldrh r2, [r6, r3]
    orr r2, r2, lr, lsl r1
    add r1, r1, #3
    strh r2, [r6, r3]
    str r1, [r6, r4]
.Lsec01_00001c54:
    ldr r4, [pc, #756]
    ldr r1, [r6, r4]
    ldr r2, [r6, #2844]
    ldr r3, [r6, #2856]
    cmp r1, #11
    add r9, r3, #1
    add sl, r5, #1
    sub lr, r2, #256
    add fp, r2, #1
    ble .Lsec01_00001ce0
    ldr ip, [pc, #720]
    ldrh r3, [r6, ip]
    orr r3, r3, lr, lsl r1
    ldr r2, [r6, #8]
    ldr r1, [r6, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r6, ip]
    strb r3, [r2, r1]
    ldrh r3, [r6, ip]
    ldr r2, [r6, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r0, [r6, r4]
    mov r3, lr, lsl #16
    rsb r2, r0, #16
    mov r3, r3, lsr #16
    mov r3, r3, asr r2
    add r1, r1, #1
    sub r0, r0, #11
    strh r3, [r6, ip]
    str r0, [r6, r4]
    str r1, [r6, #20]
    b .Lsec01_00001cf8
.Lsec01_00001ce0:
    ldr r3, [pc, #620]
    ldrh r2, [r6, r3]
    orr r2, r2, lr, lsl r1
    add r1, r1, #5
    strh r2, [r6, r3]
    str r1, [r6, r4]
.Lsec01_00001cf8:
    ldr r4, [pc, #592]
    ldr r1, [r6, r4]
    cmp r1, #11
    sub lr, r9, #1
    ble .Lsec01_00001d70
    ldr ip, [pc, #576]
    ldrh r3, [r6, ip]
    orr r3, r3, lr, lsl r1
    ldr r2, [r6, #8]
    ldr r1, [r6, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r6, ip]
    strb r3, [r2, r1]
    ldrh r3, [r6, ip]
    ldr r2, [r6, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r0, [r6, r4]
    mov r3, lr, lsl #16
    rsb r2, r0, #16
    mov r3, r3, lsr #16
    mov r3, r3, asr r2
    add r1, r1, #1
    sub r0, r0, #11
    strh r3, [r6, ip]
    str r0, [r6, r4]
    str r1, [r6, #20]
    b .Lsec01_00001d88
.Lsec01_00001d70:
    ldr r3, [pc, #476]
    ldrh r2, [r6, r3]
    orr r2, r2, lr, lsl r1
    add r1, r1, #5
    strh r2, [r6, r3]
    str r1, [r6, r4]
.Lsec01_00001d88:
    ldr r4, [pc, #448]
    ldr r1, [r6, r4]
    cmp r1, #12
    sub lr, sl, #4
    ble .Lsec01_00001e00
    ldr ip, [pc, #432]
    ldrh r3, [r6, ip]
    orr r3, r3, lr, lsl r1
    ldr r2, [r6, #8]
    ldr r1, [r6, #20]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r6, ip]
    strb r3, [r2, r1]
    ldrh r3, [r6, ip]
    ldr r2, [r6, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r0, [r6, r4]
    mov r3, lr, lsl #16
    rsb r2, r0, #16
    mov r3, r3, lsr #16
    mov r3, r3, asr r2
    add r1, r1, #1
    sub r0, r0, #12
    strh r3, [r6, ip]
    str r0, [r6, r4]
    str r1, [r6, #20]
    b .Lsec01_00001e18
.Lsec01_00001e00:
    ldr r3, [pc, #332]
    ldrh r2, [r6, r3]
    orr r2, r2, lr, lsl r1
    add r1, r1, #4
    strh r2, [r6, r3]
    str r1, [r6, r4]
.Lsec01_00001e18:
    ldr r7, [pc, #292]
    mov r5, #0
    b .Lsec01_00001ec8
.Lsec01_00001e24:
    ldr ip, [r6, r4]
    cmp ip, #13
    add r1, ip, #3
    ldrb r3, [r7]
    ble .Lsec01_00001ea0
    add r2, r6, r3, lsl #2
    add r2, r2, #2672
    add r2, r2, #8
    ldrh r0, [r2, #6]
    ldrh r3, [r6, lr]
    orr r3, r3, r0, lsl ip
    ldr r1, [r6, #20]
    ldr r2, [r6, #8]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r6, lr]
    strb r3, [r2, r1]
    ldrh r3, [r6, lr]
    ldr r2, [r6, #8]
    add r1, r1, #1
    mov r3, r3, lsr #8
    strb r3, [r2, r1]
    ldr r2, [r6, r4]
    rsb r3, r2, #16
    mov r0, r0, asr r3
    add r1, r1, #1
    sub r2, r2, #13
    strh r0, [r6, lr]
    str r2, [r6, r4]
    str r1, [r6, #20]
    b .Lsec01_00001ec0
.Lsec01_00001ea0:
    add r3, r6, r3, lsl #2
    add r3, r3, #2672
    add r3, r3, #8
    ldrh r3, [r3, #6]
    ldrh r2, [r6, r0]
    orr r2, r2, r3, lsl ip
    str r1, [r6, r4]
    strh r2, [r6, r0]
.Lsec01_00001ec0:
    add r5, r5, #1
    add r7, r7, #1
.Lsec01_00001ec8:
    ldr lr, [pc, #132]
    cmp r5, sl
    mov r0, lr
    ldr r4, [pc, #116]
    blt .Lsec01_00001e24
    add r5, r6, #148
    add r4, r6, #2432
    sub r2, fp, #1
    add r4, r4, #8
    mov r0, r6
    mov r1, r5
    bl send_tree
    sub r2, r9, #1
    mov r0, r6
    mov r1, r4
    bl send_tree
    mov r0, r6
    mov r1, r5
    mov r2, r4
.Lsec01_00001f14:
    bl compress_block
.Lsec01_00001f18:
    mov r0, r6
    bl init_block
    cmp r8, #0
    beq .Lsec01_00001f38
    mov r0, r6
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    b bi_windup
.Lsec01_00001f38:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec06_000007f8
    .long 0x000016a8
    .long 0x000016ac
    .long 0x000016bc
    .long 0x000016b8
    .long .Lsec06_00000300
    .long .Lsec06_00000780

.section .data,"aw",%progbits
.balign 4
static_l_desc:
.Lsec03_00000000:
    .long .Lsec06_00000300
    .long .Lsec06_0000080c
    .long 0x00000101
    .long 0x0000011e
    .long 0x0000000f
static_d_desc:
.Lsec03_00000014:
    .long .Lsec06_00000780
    .long .Lsec06_000008f4
    .long 0x00000000
    .long 0x0000001e
    .long 0x0000000f
static_bl_desc:
.Lsec03_00000028:
    .long 0x00000000
    .long .Lsec06_000009e4
    .long 0x00000000
    .long 0x00000013
    .long 0x00000007

.section .bss,"aw",%nobits
.balign 1

.section .rodata,"a",%progbits
.balign 4
_dist_code:
    .long 0x03020100
    .long 0x05050404
    .long 0x06060606
    .long 0x07070707
    .long 0x08080808
    .long 0x08080808
    .long 0x09090909
    .long 0x09090909
    .long 0x0a0a0a0a
    .long 0x0a0a0a0a
    .long 0x0a0a0a0a
    .long 0x0a0a0a0a
    .long 0x0b0b0b0b
    .long 0x0b0b0b0b
    .long 0x0b0b0b0b
    .long 0x0b0b0b0b
    .long 0x0c0c0c0c
    .long 0x0c0c0c0c
    .long 0x0c0c0c0c
    .long 0x0c0c0c0c
    .long 0x0c0c0c0c
    .long 0x0c0c0c0c
    .long 0x0c0c0c0c
    .long 0x0c0c0c0c
    .long 0x0d0d0d0d
    .long 0x0d0d0d0d
    .long 0x0d0d0d0d
    .long 0x0d0d0d0d
    .long 0x0d0d0d0d
    .long 0x0d0d0d0d
    .long 0x0d0d0d0d
    .long 0x0d0d0d0d
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0e0e0e0e
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x0f0f0f0f
    .long 0x11100000
    .long 0x13131212
    .long 0x14141414
    .long 0x15151515
    .long 0x16161616
    .long 0x16161616
    .long 0x17171717
    .long 0x17171717
    .long 0x18181818
    .long 0x18181818
    .long 0x18181818
    .long 0x18181818
    .long 0x19191919
    .long 0x19191919
    .long 0x19191919
    .long 0x19191919
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1c1c1c1c
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
    .long 0x1d1d1d1d
_length_code:
    .long 0x03020100
    .long 0x07060504
    .long 0x09090808
    .long 0x0b0b0a0a
    .long 0x0c0c0c0c
    .long 0x0d0d0d0d
    .long 0x0e0e0e0e
    .long 0x0f0f0f0f
    .long 0x10101010
    .long 0x10101010
    .long 0x11111111
    .long 0x11111111
    .long 0x12121212
    .long 0x12121212
    .long 0x13131313
    .long 0x13131313
    .long 0x14141414
    .long 0x14141414
    .long 0x14141414
    .long 0x14141414
    .long 0x15151515
    .long 0x15151515
    .long 0x15151515
    .long 0x15151515
    .long 0x16161616
    .long 0x16161616
    .long 0x16161616
    .long 0x16161616
    .long 0x17171717
    .long 0x17171717
    .long 0x17171717
    .long 0x17171717
    .long 0x18181818
    .long 0x18181818
    .long 0x18181818
    .long 0x18181818
    .long 0x18181818
    .long 0x18181818
    .long 0x18181818
    .long 0x18181818
    .long 0x19191919
    .long 0x19191919
    .long 0x19191919
    .long 0x19191919
    .long 0x19191919
    .long 0x19191919
    .long 0x19191919
    .long 0x19191919
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1a1a1a1a
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1b1b1b1b
    .long 0x1c1b1b1b
static_ltree:
.Lsec06_00000300:
    .long 0x0008000c
    .long 0x0008008c
    .long 0x0008004c
    .long 0x000800cc
    .long 0x0008002c
    .long 0x000800ac
    .long 0x0008006c
    .long 0x000800ec
    .long 0x0008001c
    .long 0x0008009c
    .long 0x0008005c
    .long 0x000800dc
    .long 0x0008003c
    .long 0x000800bc
    .long 0x0008007c
    .long 0x000800fc
    .long 0x00080002
    .long 0x00080082
    .long 0x00080042
    .long 0x000800c2
    .long 0x00080022
    .long 0x000800a2
    .long 0x00080062
    .long 0x000800e2
    .long 0x00080012
    .long 0x00080092
    .long 0x00080052
    .long 0x000800d2
    .long 0x00080032
    .long 0x000800b2
    .long 0x00080072
    .long 0x000800f2
    .long 0x0008000a
    .long 0x0008008a
    .long 0x0008004a
    .long 0x000800ca
    .long 0x0008002a
    .long 0x000800aa
    .long 0x0008006a
    .long 0x000800ea
    .long 0x0008001a
    .long 0x0008009a
    .long 0x0008005a
    .long 0x000800da
    .long 0x0008003a
    .long 0x000800ba
    .long 0x0008007a
    .long 0x000800fa
    .long 0x00080006
    .long 0x00080086
    .long 0x00080046
    .long 0x000800c6
    .long 0x00080026
    .long 0x000800a6
    .long 0x00080066
    .long 0x000800e6
    .long 0x00080016
    .long 0x00080096
    .long 0x00080056
    .long 0x000800d6
    .long 0x00080036
    .long 0x000800b6
    .long 0x00080076
    .long 0x000800f6
    .long 0x0008000e
    .long 0x0008008e
    .long 0x0008004e
    .long 0x000800ce
    .long 0x0008002e
    .long 0x000800ae
    .long 0x0008006e
    .long 0x000800ee
    .long 0x0008001e
    .long 0x0008009e
    .long 0x0008005e
    .long 0x000800de
    .long 0x0008003e
    .long 0x000800be
    .long 0x0008007e
    .long 0x000800fe
    .long 0x00080001
    .long 0x00080081
    .long 0x00080041
    .long 0x000800c1
    .long 0x00080021
    .long 0x000800a1
    .long 0x00080061
    .long 0x000800e1
    .long 0x00080011
    .long 0x00080091
    .long 0x00080051
    .long 0x000800d1
    .long 0x00080031
    .long 0x000800b1
    .long 0x00080071
    .long 0x000800f1
    .long 0x00080009
    .long 0x00080089
    .long 0x00080049
    .long 0x000800c9
    .long 0x00080029
    .long 0x000800a9
    .long 0x00080069
    .long 0x000800e9
    .long 0x00080019
    .long 0x00080099
    .long 0x00080059
    .long 0x000800d9
    .long 0x00080039
    .long 0x000800b9
    .long 0x00080079
    .long 0x000800f9
    .long 0x00080005
    .long 0x00080085
    .long 0x00080045
    .long 0x000800c5
    .long 0x00080025
    .long 0x000800a5
    .long 0x00080065
    .long 0x000800e5
    .long 0x00080015
    .long 0x00080095
    .long 0x00080055
    .long 0x000800d5
    .long 0x00080035
    .long 0x000800b5
    .long 0x00080075
    .long 0x000800f5
    .long 0x0008000d
    .long 0x0008008d
    .long 0x0008004d
    .long 0x000800cd
    .long 0x0008002d
    .long 0x000800ad
    .long 0x0008006d
    .long 0x000800ed
    .long 0x0008001d
    .long 0x0008009d
    .long 0x0008005d
    .long 0x000800dd
    .long 0x0008003d
    .long 0x000800bd
    .long 0x0008007d
    .long 0x000800fd
    .long 0x00090013
    .long 0x00090113
    .long 0x00090093
    .long 0x00090193
    .long 0x00090053
    .long 0x00090153
    .long 0x000900d3
    .long 0x000901d3
    .long 0x00090033
    .long 0x00090133
    .long 0x000900b3
    .long 0x000901b3
    .long 0x00090073
    .long 0x00090173
    .long 0x000900f3
    .long 0x000901f3
    .long 0x0009000b
    .long 0x0009010b
    .long 0x0009008b
    .long 0x0009018b
    .long 0x0009004b
    .long 0x0009014b
    .long 0x000900cb
    .long 0x000901cb
    .long 0x0009002b
    .long 0x0009012b
    .long 0x000900ab
    .long 0x000901ab
    .long 0x0009006b
    .long 0x0009016b
    .long 0x000900eb
    .long 0x000901eb
    .long 0x0009001b
    .long 0x0009011b
    .long 0x0009009b
    .long 0x0009019b
    .long 0x0009005b
    .long 0x0009015b
    .long 0x000900db
    .long 0x000901db
    .long 0x0009003b
    .long 0x0009013b
    .long 0x000900bb
    .long 0x000901bb
    .long 0x0009007b
    .long 0x0009017b
    .long 0x000900fb
    .long 0x000901fb
    .long 0x00090007
    .long 0x00090107
    .long 0x00090087
    .long 0x00090187
    .long 0x00090047
    .long 0x00090147
    .long 0x000900c7
    .long 0x000901c7
    .long 0x00090027
    .long 0x00090127
    .long 0x000900a7
    .long 0x000901a7
    .long 0x00090067
    .long 0x00090167
    .long 0x000900e7
    .long 0x000901e7
    .long 0x00090017
    .long 0x00090117
    .long 0x00090097
    .long 0x00090197
    .long 0x00090057
    .long 0x00090157
    .long 0x000900d7
    .long 0x000901d7
    .long 0x00090037
    .long 0x00090137
    .long 0x000900b7
    .long 0x000901b7
    .long 0x00090077
    .long 0x00090177
    .long 0x000900f7
    .long 0x000901f7
    .long 0x0009000f
    .long 0x0009010f
    .long 0x0009008f
    .long 0x0009018f
    .long 0x0009004f
    .long 0x0009014f
    .long 0x000900cf
    .long 0x000901cf
    .long 0x0009002f
    .long 0x0009012f
    .long 0x000900af
    .long 0x000901af
    .long 0x0009006f
    .long 0x0009016f
    .long 0x000900ef
    .long 0x000901ef
    .long 0x0009001f
    .long 0x0009011f
    .long 0x0009009f
    .long 0x0009019f
    .long 0x0009005f
    .long 0x0009015f
    .long 0x000900df
    .long 0x000901df
    .long 0x0009003f
    .long 0x0009013f
    .long 0x000900bf
    .long 0x000901bf
    .long 0x0009007f
    .long 0x0009017f
    .long 0x000900ff
    .long 0x000901ff
    .long 0x00070000
    .long 0x00070040
    .long 0x00070020
    .long 0x00070060
    .long 0x00070010
    .long 0x00070050
    .long 0x00070030
    .long 0x00070070
    .long 0x00070008
    .long 0x00070048
    .long 0x00070028
    .long 0x00070068
    .long 0x00070018
    .long 0x00070058
    .long 0x00070038
    .long 0x00070078
    .long 0x00070004
    .long 0x00070044
    .long 0x00070024
    .long 0x00070064
    .long 0x00070014
    .long 0x00070054
    .long 0x00070034
    .long 0x00070074
    .long 0x00080003
    .long 0x00080083
    .long 0x00080043
    .long 0x000800c3
    .long 0x00080023
    .long 0x000800a3
    .long 0x00080063
    .long 0x000800e3
static_dtree:
.Lsec06_00000780:
    .long 0x00050000
    .long 0x00050010
    .long 0x00050008
    .long 0x00050018
    .long 0x00050004
    .long 0x00050014
    .long 0x0005000c
    .long 0x0005001c
    .long 0x00050002
    .long 0x00050012
    .long 0x0005000a
    .long 0x0005001a
    .long 0x00050006
    .long 0x00050016
    .long 0x0005000e
    .long 0x0005001e
    .long 0x00050001
    .long 0x00050011
    .long 0x00050009
    .long 0x00050019
    .long 0x00050005
    .long 0x00050015
    .long 0x0005000d
    .long 0x0005001d
    .long 0x00050003
    .long 0x00050013
    .long 0x0005000b
    .long 0x0005001b
    .long 0x00050007
    .long 0x00050017
bl_order:
.Lsec06_000007f8:
    .long 0x00121110
    .long 0x06090708
    .long 0x040b050a
    .long 0x020d030c
    .long 0x000f010e
extra_lbits:
.Lsec06_0000080c:
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000001
    .long 0x00000001
    .long 0x00000001
    .long 0x00000001
    .long 0x00000002
    .long 0x00000002
    .long 0x00000002
    .long 0x00000002
    .long 0x00000003
    .long 0x00000003
    .long 0x00000003
    .long 0x00000003
    .long 0x00000004
    .long 0x00000004
    .long 0x00000004
    .long 0x00000004
    .long 0x00000005
    .long 0x00000005
    .long 0x00000005
    .long 0x00000005
    .long 0x00000000
base_length:
.Lsec06_00000880:
    .long 0x00000000
    .long 0x00000001
    .long 0x00000002
    .long 0x00000003
    .long 0x00000004
    .long 0x00000005
    .long 0x00000006
    .long 0x00000007
    .long 0x00000008
    .long 0x0000000a
    .long 0x0000000c
    .long 0x0000000e
    .long 0x00000010
    .long 0x00000014
    .long 0x00000018
    .long 0x0000001c
    .long 0x00000020
    .long 0x00000028
    .long 0x00000030
    .long 0x00000038
    .long 0x00000040
    .long 0x00000050
    .long 0x00000060
    .long 0x00000070
    .long 0x00000080
    .long 0x000000a0
    .long 0x000000c0
    .long 0x000000e0
    .long 0x00000000
extra_dbits:
.Lsec06_000008f4:
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000001
    .long 0x00000001
    .long 0x00000002
    .long 0x00000002
    .long 0x00000003
    .long 0x00000003
    .long 0x00000004
    .long 0x00000004
    .long 0x00000005
    .long 0x00000005
    .long 0x00000006
    .long 0x00000006
    .long 0x00000007
    .long 0x00000007
    .long 0x00000008
    .long 0x00000008
    .long 0x00000009
    .long 0x00000009
    .long 0x0000000a
    .long 0x0000000a
    .long 0x0000000b
    .long 0x0000000b
    .long 0x0000000c
    .long 0x0000000c
    .long 0x0000000d
    .long 0x0000000d
base_dist:
.Lsec06_0000096c:
    .long 0x00000000
    .long 0x00000001
    .long 0x00000002
    .long 0x00000003
    .long 0x00000004
    .long 0x00000006
    .long 0x00000008
    .long 0x0000000c
    .long 0x00000010
    .long 0x00000018
    .long 0x00000020
    .long 0x00000030
    .long 0x00000040
    .long 0x00000060
    .long 0x00000080
    .long 0x000000c0
    .long 0x00000100
    .long 0x00000180
    .long 0x00000200
    .long 0x00000300
    .long 0x00000400
    .long 0x00000600
    .long 0x00000800
    .long 0x00000c00
    .long 0x00001000
    .long 0x00001800
    .long 0x00002000
    .long 0x00003000
    .long 0x00004000
    .long 0x00006000
extra_blbits:
.Lsec06_000009e4:
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000002
    .long 0x00000003
    .long 0x00000007

.size init_block, 168
.size static_l_desc, 20
.size static_d_desc, 20
.size static_bl_desc, 20
.size pqdownheap, 232
.size scan_tree, 300
.size send_tree, 1500
.size compress_block, 1180
.size extra_lbits, 116
.size base_length, 116
.size extra_dbits, 120
.size base_dist, 120
.size build_tree, 1432
.size bi_flush, 164
.size static_ltree, 1152
.size bi_windup, 148
.size bl_order, 19
.size static_dtree, 120
.size extra_blbits, 76
.size _tr_init, 120
.size _tr_tally, 248
.size _length_code, 256
.size _dist_code, 512
.size _tr_align, 696
.size _tr_stored_block, 340
.size _tr_flush_block, 1504

.section .note.GNU-stack,"",%progbits
