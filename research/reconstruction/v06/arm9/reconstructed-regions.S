/* Reconstructed from the v0.6 release after C/C++ semantic recovery. */
.syntax unified
.arch armv5te


/* Keyboard-showKeyLabels-region at 0x0200c3ec, 232 bytes, Thumb. */
.section .reconstructed.fn01,"ax",%progbits
.align 1
.thumb
.global reconstructed_01_Keyboard_showKeyLabels_region
reconstructed_01_Keyboard_showKeyLabels_region:
.L0200c3ec:
    push {r4, r5, r6, r7, lr}
.L0200c3ee:
    mov r7, fp
.L0200c3f0:
    mov r6, sl
.L0200c3f2:
    mov r5, r9
.L0200c3f4:
    mov r4, r8
.L0200c3f6:
    push {r4, r5, r6, r7}
.L0200c3f8:
    movs r2, #1
.L0200c3fa:
    movs r3, #64
.L0200c3fc:
    sub sp, #28
.L0200c3fe:
    strb r2, [r0, r3]
.L0200c400:
    movs r3, #22
.L0200c402:
    movs r1, #0
.L0200c404:
    ldr r2, [pc, #192]
.L0200c406:
    add r3, sp
.L0200c408:
    adds r7, r0, #0
.L0200c40a:
    ldr r5, [pc, #192]
.L0200c40c:
    mov sl, r1
.L0200c40e:
    mov r9, r3
.L0200c410:
    adds r7, #40
.L0200c412:
    str r0, [sp, #12]
.L0200c414:
    str r2, [sp, #8]
.L0200c416:
    b.n .L0200c4a0
.L0200c418:
    ldrb r3, [r5, #1]
.L0200c41a:
    cmp r3, r4
.L0200c41c:
    beq.n .L0200c4ac
.L0200c41e:
    ldrb r3, [r5, #2]
.L0200c420:
    cmp r3, r4
.L0200c422:
    beq.n .L0200c4ac
.L0200c424:
    ldrb r3, [r5, #3]
.L0200c426:
    cmp r3, r4
.L0200c428:
    beq.n .L0200c4ac
.L0200c42a:
    ldrb r3, [r5, #4]
.L0200c42c:
    cmp r3, r4
.L0200c42e:
    beq.n .L0200c4ac
.L0200c430:
    ldrb r3, [r5, #5]
.L0200c432:
    cmp r3, r4
.L0200c434:
    beq.n .L0200c4ac
.L0200c436:
    ldrb r3, [r5, #6]
.L0200c438:
    cmp r3, r4
.L0200c43a:
    beq.n .L0200c4ac
.L0200c43c:
    ldrb r3, [r5, #7]
.L0200c43e:
    cmp r3, r4
.L0200c440:
    beq.n .L0200c4ac
.L0200c442:
    ldrb r3, [r5, #8]
.L0200c444:
    cmp r3, r4
.L0200c446:
    beq.n .L0200c4ac
.L0200c448:
    ldrb r3, [r5, #9]
.L0200c44a:
    cmp r3, r4
.L0200c44c:
    beq.n .L0200c4ac
.L0200c44e:
    movs r1, #5
.L0200c450:
    movs r2, #28
.L0200c452:
    movs r6, #128
.L0200c454:
    mov r8, r1
.L0200c456:
    mov fp, r2
.L0200c458:
    lsls r6, r6, #8
.L0200c45a:
    adds r0, r4, #0
.L0200c45c:
    movs r1, #12
.L0200c45e:
    bl reconstructed_external_thumb_02082848
.L0200c462:
    ldr r2, [sp, #8]
.L0200c464:
    lsls r1, r1, #24
.L0200c466:
    lsrs r1, r1, #24
.L0200c468:
    ldrb r3, [r2, r1]
.L0200c46a:
    add r3, r8
.L0200c46c:
    lsls r3, r3, #24
.L0200c46e:
    lsrs r2, r3, #24
.L0200c470:
    cmp r4, #11
.L0200c472:
    bls.n .L0200c47c
.L0200c474:
    adds r3, r2, #0
.L0200c476:
    adds r3, #111
.L0200c478:
    lsls r3, r3, #24
.L0200c47a:
    lsrs r2, r3, #24
.L0200c47c:
    mov r1, r9
.L0200c47e:
    movs r3, #0
.L0200c480:
    strh r3, [r1, #0]
.L0200c482:
    ldrb r3, [r7, #0]
.L0200c484:
    adds r7, #1
.L0200c486:
    strb r3, [r1, #0]
.L0200c488:
    movs r3, #255
.L0200c48a:
    str r3, [sp, #0]
.L0200c48c:
    ldr r0, [sp, #12]
.L0200c48e:
    mov r3, fp
.L0200c490:
    str r6, [sp, #4]
.L0200c492:
    bl reconstructed_external_thumb_02011c14
.L0200c496:
    movs r2, #1
.L0200c498:
    add sl, r2
.L0200c49a:
    mov r3, sl
.L0200c49c:
    cmp r3, #24
.L0200c49e:
    beq.n .L0200c4b8
.L0200c4a0:
    mov r1, sl
.L0200c4a2:
    lsls r3, r1, #24
.L0200c4a4:
    lsrs r4, r3, #24
.L0200c4a6:
    ldrb r3, [r5, #0]
.L0200c4a8:
    cmp r3, r4
.L0200c4aa:
    bne.n .L0200c418
.L0200c4ac:
    movs r3, #3
.L0200c4ae:
    movs r1, #12
.L0200c4b0:
    ldr r6, [pc, #28]
.L0200c4b2:
    mov r8, r3
.L0200c4b4:
    mov fp, r1
.L0200c4b6:
    b.n .L0200c45a
.L0200c4b8:
    add sp, #28
.L0200c4ba:
    pop {r2, r3, r4, r5}
.L0200c4bc:
    mov r8, r2
.L0200c4be:
    mov r9, r3
.L0200c4c0:
    mov sl, r4
.L0200c4c2:
    mov fp, r5
.L0200c4c4:
    pop {r4, r5, r6, r7, pc}
.L0200c4c6:
    .short 0x0000  /* literal data */
.L0200c4c8:
    .short 0x8b12  /* literal data */
.L0200c4ca:
    .short 0x020c  /* literal data */
.L0200c4cc:
    .short 0x8b08  /* literal data */
.L0200c4ce:
    .short 0x020c  /* literal data */
.L0200c4d0:
    .short 0xffff  /* literal data */
.L0200c4d2:
    .short 0x0000  /* literal data */


/* b2Polygon-compilation-unit at 0x0203e768, 30768 bytes, ARM. */
.section .reconstructed.fn04,"ax",%progbits
.align 2
.arm
.global reconstructed_04_b2Polygon_compilation_unit
reconstructed_04_b2Polygon_compilation_unit:
.L0203e768:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203e76c:
    ldr sl, [r0, #4]
.L0203e770:
    ldr r6, [r2, #4]
.L0203e774:
    ldr r0, [r0]
.L0203e778:
    ldr r8, [r2]
.L0203e77c:
    ldr lr, [r3, #4]
.L0203e780:
    ldmia r1, {r2, ip}
.L0203e784:
    sub sp, sp, #92
.L0203e788:
    ldr r4, [r3]
.L0203e78c:
    rsb r2, r0, r2
.L0203e790:
    rsb r3, r6, lr
.L0203e794:
    str sl, [sp, #80]
.L0203e798:
    str r0, [sp, #76]
.L0203e79c:
    rsb ip, sl, ip
.L0203e7a0:
    mov r0, r3
.L0203e7a4:
    mov r1, r0, asr #31
.L0203e7a8:
    mov sl, r2
.L0203e7ac:
    mov fp, sl, asr #31
.L0203e7b0:
    strd sl, [sp, #56]
.L0203e7b4:
    strd r0, [sp, #48]
.L0203e7b8:
    mov r0, ip
.L0203e7bc:
    mov r1, r0, asr #31
.L0203e7c0:
    strd r0, [sp, #64]
.L0203e7c4:
    ldr r3, [sp, #60]
.L0203e7c8:
    ldr r1, [sp, #48]
.L0203e7cc:
    ldr r0, [sp, #56]
.L0203e7d0:
    mul r3, r1, r3
.L0203e7d4:
    rsb r4, r8, r4
.L0203e7d8:
    ldr ip, [sp, #68]
.L0203e7dc:
    ldr fp, [sp, #52]
.L0203e7e0:
    mov r5, r4, asr #31
.L0203e7e4:
    mla fp, r0, fp, r3
.L0203e7e8:
    mul ip, r4, ip
.L0203e7ec:
    ldr sl, [sp, #80]
.L0203e7f0:
    ldr r2, [sp, #76]
.L0203e7f4:
    rsb r6, r6, sl
.L0203e7f8:
    ldr sl, [sp, #64]
.L0203e7fc:
    mov r7, r6, asr #31
.L0203e800:
    mla sl, r5, sl, ip
.L0203e804:
    str fp, [sp, #12]
.L0203e808:
    mul ip, r4, r7
.L0203e80c:
    ldr fp, [sp, #64]
.L0203e810:
    rsb r8, r8, r2
.L0203e814:
    mov r3, r0
.L0203e818:
    mov r2, r1
.L0203e81c:
    umull r0, r1, r2, r3
.L0203e820:
    umull r2, r3, r4, fp
.L0203e824:
    ldr fp, [sp, #68]
.L0203e828:
    mov r9, r8, asr #31
.L0203e82c:
    mla ip, r6, r5, ip
.L0203e830:
    mul fp, r8, fp
.L0203e834:
    str sl, [sp, #8]
.L0203e838:
    ldr lr, [sp, #48]
.L0203e83c:
    ldr sl, [sp, #60]
.L0203e840:
    mul lr, r9, lr
.L0203e844:
    mul sl, r6, sl
.L0203e848:
    str fp, [sp, #4]
.L0203e84c:
    str ip, [sp, #44]
.L0203e850:
    ldr fp, [sp, #56]
.L0203e854:
    ldr ip, [sp, #52]
.L0203e858:
    mla fp, r7, fp, sl
.L0203e85c:
    mla ip, r8, ip, lr
.L0203e860:
    str ip, [sp, #40]
.L0203e864:
    str fp, [sp, #36]
.L0203e868:
    ldr ip, [sp, #56]
.L0203e86c:
    ldr lr, [sp, #64]
.L0203e870:
    umull sl, fp, r6, ip
.L0203e874:
    ldr ip, [sp, #64]
.L0203e878:
    strd sl, [sp, #24]
.L0203e87c:
    ldr sl, [sp, #4]
.L0203e880:
    mov r0, r0, lsr #16
.L0203e884:
    mla lr, r9, lr, sl
.L0203e888:
    umull sl, fp, r8, ip
.L0203e88c:
    strd sl, [sp, #16]
.L0203e890:
    ldr sl, [sp, #12]
.L0203e894:
    ldr fp, [sp, #8]
.L0203e898:
    add r1, sl, r1
.L0203e89c:
    add r3, fp, r3
.L0203e8a0:
    mov r2, r2, lsr #16
.L0203e8a4:
    umull sl, fp, r4, r6
.L0203e8a8:
    orr r2, r2, r3, lsl #16
.L0203e8ac:
    orr r0, r0, r1, lsl #16
.L0203e8b0:
    ldr ip, [sp, #48]
.L0203e8b4:
    rsb r0, r2, r0
.L0203e8b8:
    umull r4, r5, ip, r8
.L0203e8bc:
    str r0, [sp, #84]
.L0203e8c0:
    mov ip, r0
.L0203e8c4:
    ldr r0, [sp, #44]
.L0203e8c8:
    ldr r3, [sp, #28]
.L0203e8cc:
    ldr r2, [sp, #36]
.L0203e8d0:
    add fp, r0, fp
.L0203e8d4:
    cmp ip, #0
.L0203e8d8:
    rsblt ip, ip, #0
.L0203e8dc:
    mov r6, sl, lsr #16
.L0203e8e0:
    add r3, r2, r3
.L0203e8e4:
    cmp ip, #3
.L0203e8e8:
    ldr r1, [sp, #40]
.L0203e8ec:
    ldr ip, [sp, #20]
.L0203e8f0:
    orr r6, r6, fp, lsl #16
.L0203e8f4:
    mov r7, fp, asr #16
.L0203e8f8:
    ldr r2, [sp, #24]
.L0203e8fc:
    ldr fp, [sp, #16]
.L0203e900:
    add ip, lr, ip
.L0203e904:
    add r5, r1, r5
.L0203e908:
    mov r0, r4, lsr #16
.L0203e90c:
    mov r8, r2, lsr #16
.L0203e910:
    mov r4, fp, lsr #16
.L0203e914:
    orr r0, r0, r5, lsl #16
.L0203e918:
    str r3, [sp, #28]
.L0203e91c:
    str ip, [sp, #20]
.L0203e920:
    orr r8, r8, r3, lsl #16
.L0203e924:
    mov r9, r3, asr #16
.L0203e928:
    orr r4, r4, ip, lsl #16
.L0203e92c:
    mov r5, ip, asr #16
.L0203e930:
    ldr sl, [sp, #128]
.L0203e934:
    ble .L0203e9ec
.L0203e938:
    ldr r3, [pc, #328]
.L0203e93c:
    mov fp, #1
.L0203e940:
    strh fp, [r3, #128]
.L0203e944:
    mov lr, r3
.L0203e948:
    ldrh r3, [lr, #128]
.L0203e94c:
    tst r3, #32768
.L0203e950:
    bne .L0203e948
.L0203e954:
    rsb r2, r0, r6
.L0203e958:
    mov r3, r2, asr #31
.L0203e95c:
    mov r3, r3, lsl #16
.L0203e960:
    ldr r0, [sp, #84]
.L0203e964:
    orr r3, r3, r2, lsr #16
.L0203e968:
    mov r1, #67108864
.L0203e96c:
    mov r2, r2, lsl #16
.L0203e970:
    ldr ip, [pc, #272]
.L0203e974:
    strd r2, [lr, #144]
.L0203e978:
    str r0, [r1, #664]
.L0203e97c:
    ldrh r3, [ip, #128]
.L0203e980:
    tst r3, #32768
.L0203e984:
    bne .L0203e97c
.L0203e988:
    mov r3, #67108864
.L0203e98c:
    mov r2, #1
.L0203e990:
    ldr r1, [pc, #240]
.L0203e994:
    ldr lr, [r3, #672]
.L0203e998:
    strh r2, [ip, #128]
.L0203e99c:
    ldrh r3, [r1, #128]
.L0203e9a0:
    tst r3, #32768
.L0203e9a4:
    bne .L0203e99c
.L0203e9a8:
    rsb r2, r4, r8
.L0203e9ac:
    mov r3, r2, asr #31
.L0203e9b0:
    mov r3, r3, lsl #16
.L0203e9b4:
    orr r3, r3, r2, lsr #16
.L0203e9b8:
    mov r2, r2, lsl #16
.L0203e9bc:
    strd r2, [r1, #144]
.L0203e9c0:
    ldr r3, [sp, #84]
.L0203e9c4:
    mov r1, #67108864
.L0203e9c8:
    ldr ip, [pc, #184]
.L0203e9cc:
    str r3, [r1, #664]
.L0203e9d0:
    ldrh r3, [ip, #128]
.L0203e9d4:
    tst r3, #32768
.L0203e9d8:
    bne .L0203e9d0
.L0203e9dc:
    mov r3, #67108864
.L0203e9e0:
    cmp lr, #0
.L0203e9e4:
    ldr r3, [r3, #672]
.L0203e9e8:
    bgt .L0203e9fc
.L0203e9ec:
    mov r3, #0
.L0203e9f0:
    mov r0, r3
.L0203e9f4:
    add sp, sp, #92
.L0203e9f8:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203e9fc:
    ldr r2, [pc, #136]
.L0203ea00:
    cmp lr, r2
.L0203ea04:
    bgt .L0203e9ec
.L0203ea08:
    cmp r3, #0
.L0203ea0c:
    ble .L0203e9ec
.L0203ea10:
    cmp r3, r2
.L0203ea14:
    bgt .L0203e9ec
.L0203ea18:
    ldr ip, [sp, #56]
.L0203ea1c:
    mov r4, lr
.L0203ea20:
    mov r5, r4, asr #31
.L0203ea24:
    mul ip, r5, ip
.L0203ea28:
    ldr r6, [sp, #64]
.L0203ea2c:
    ldr lr, [sp, #60]
.L0203ea30:
    mul r6, r5, r6
.L0203ea34:
    mla lr, r4, lr, ip
.L0203ea38:
    ldr ip, [sp, #56]
.L0203ea3c:
    ldr fp, [sp, #64]
.L0203ea40:
    umull r2, r3, ip, r4
.L0203ea44:
    ldr ip, [sp, #68]
.L0203ea48:
    umull r0, r1, fp, r4
.L0203ea4c:
    mla ip, r4, ip, r6
.L0203ea50:
    add r3, lr, r3
.L0203ea54:
    add r1, ip, r1
.L0203ea58:
    mov r2, r2, lsr #16
.L0203ea5c:
    mov r0, r0, lsr #16
.L0203ea60:
    ldr fp, [sp, #76]
.L0203ea64:
    ldr ip, [sp, #80]
.L0203ea68:
    orr r2, r2, r3, lsl #16
.L0203ea6c:
    orr r0, r0, r1, lsl #16
.L0203ea70:
    add r2, fp, r2
.L0203ea74:
    add r0, ip, r0
.L0203ea78:
    mov r3, #1
.L0203ea7c:
    str r0, [sl, #4]
.L0203ea80:
    str r2, [sl]
.L0203ea84:
    b .L0203e9f0
.L0203ea88:
    .long 0x04000200  /* literal data */
.L0203ea8c:
    .long 0x0000ffff  /* literal data */
.L0203ea90:
    stmdb sp!, {r4, lr}
.L0203ea94:
    sub sp, sp, #16
.L0203ea98:
    mov r4, #0
.L0203ea9c:
    add ip, sp, #8
.L0203eaa0:
    str r4, [sp, #8]
.L0203eaa4:
    str ip, [sp]
.L0203eaa8:
    str r4, [sp, #12]
.L0203eaac:
    bl .L0203e768
.L0203eab0:
    add sp, sp, #16
.L0203eab4:
    ldmia sp!, {r4, pc}
.L0203eab8:
    mov r3, #0
.L0203eabc:
    strb r3, [r0, #16]
.L0203eac0:
    str r3, [r0, #12]
.L0203eac4:
    str r3, [r0]
.L0203eac8:
    str r3, [r0, #4]
.L0203eacc:
    str r3, [r0, #8]
.L0203ead0:
    bx lr
.L0203ead4:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203ead8:
    ldrb r6, [r1, #16]
.L0203eadc:
    sub sp, sp, #12
.L0203eae0:
    cmp r6, #0
.L0203eae4:
    ldrne r3, [r1, #12]
.L0203eae8:
    mov fp, r1
.L0203eaec:
    str r0, [sp, #4]
.L0203eaf0:
    strne r3, [r0]
.L0203eaf4:
    bne .L0203ebd8
.L0203eaf8:
    ldr r5, [r1, #8]
.L0203eafc:
    ldr sl, [r1]
.L0203eb00:
    ldr r8, [r1, #4]
.L0203eb04:
    mov r3, r5, lsl #2
.L0203eb08:
    str r6, [r1, #12]
.L0203eb0c:
    add r2, r3, r8
.L0203eb10:
    add r3, sl, r3
.L0203eb14:
    ldr ip, [r3, #-4]
.L0203eb18:
    ldr r4, [r2, #-4]
.L0203eb1c:
    ldr r3, [r8]
.L0203eb20:
    ldr lr, [sl]
.L0203eb24:
    smull r0, r1, r3, ip
.L0203eb28:
    smull r2, r3, r4, lr
.L0203eb2c:
    mov r0, r0, lsr #16
.L0203eb30:
    mov r2, r2, lsr #16
.L0203eb34:
    orr r0, r0, r1, lsl #16
.L0203eb38:
    orr r2, r2, r3, lsl #16
.L0203eb3c:
    sub r5, r5, #1
.L0203eb40:
    rsb r0, r2, r0
.L0203eb44:
    cmp r5, #0
.L0203eb48:
    str r0, [fp, #12]
.L0203eb4c:
    add r9, fp, #12
.L0203eb50:
    ldrle r6, [r9]
.L0203eb54:
    ble .L0203ebb8
.L0203eb58:
    mov r7, r6
.L0203eb5c:
    str r5, [sp]
.L0203eb60:
    mov r6, r0
.L0203eb64:
    mov r5, r7
.L0203eb68:
    add r3, r5, r8
.L0203eb6c:
    add r2, sl, r5
.L0203eb70:
    ldr ip, [r3, #4]
.L0203eb74:
    ldr lr, [r5, r8]
.L0203eb78:
    ldr r3, [sl, r5]
.L0203eb7c:
    ldr r4, [r2, #4]
.L0203eb80:
    smull r0, r1, ip, r3
.L0203eb84:
    smull r2, r3, lr, r4
.L0203eb88:
    mov r0, r0, lsr #16
.L0203eb8c:
    mov r2, r2, lsr #16
.L0203eb90:
    orr r2, r2, r3, lsl #16
.L0203eb94:
    orr r0, r0, r1, lsl #16
.L0203eb98:
    rsb r0, r2, r0
.L0203eb9c:
    ldr r2, [sp]
.L0203eba0:
    add r7, r7, #1
.L0203eba4:
    add r6, r0, r6
.L0203eba8:
    cmp r2, r7
.L0203ebac:
    str r6, [r9]
.L0203ebb0:
    add r5, r5, #4
.L0203ebb4:
    bgt .L0203eb68
.L0203ebb8:
    mov r3, r6, asr #8
.L0203ebbc:
    mov r3, r3, lsl #7
.L0203ebc0:
    str r3, [r9]
.L0203ebc4:
    mov r2, r3
.L0203ebc8:
    mov r3, #1
.L0203ebcc:
    strb r3, [fp, #16]
.L0203ebd0:
    ldr r3, [sp, #4]
.L0203ebd4:
    str r2, [r3]
.L0203ebd8:
    ldr r0, [sp, #4]
.L0203ebdc:
    add sp, sp, #12
.L0203ebe0:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203ebe4:
    str lr, [sp, #-4]!
.L0203ebe8:
    sub sp, sp, #12
.L0203ebec:
    mov r1, r0
.L0203ebf0:
    add r0, sp, #4
.L0203ebf4:
    bl .L0203ead4
.L0203ebf8:
    ldr r0, [sp, #4]
.L0203ebfc:
    cmp r0, #0
.L0203ec00:
    movle r0, #0
.L0203ec04:
    movgt r0, #1
.L0203ec08:
    add sp, sp, #12
.L0203ec0c:
    ldmia sp!, {pc}
.L0203ec10:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203ec14:
    ldr sl, [r0, #8]
.L0203ec18:
    cmp sl, #0
.L0203ec1c:
    ble .L0203ecbc
.L0203ec20:
    mov r5, #0
.L0203ec24:
    ldmia r0, {r6, r7}
.L0203ec28:
    sub r9, sl, #1
.L0203ec2c:
    mov fp, r5
.L0203ec30:
    mov r8, r5
.L0203ec34:
    cmp r5, #0
.L0203ec38:
    mov r1, r9
.L0203ec3c:
    subne r1, r5, #1
.L0203ec40:
    cmp r9, r5
.L0203ec44:
    mov r0, #0
.L0203ec48:
    addne r0, r8, #4
.L0203ec4c:
    ldr r3, [r8, r6]
.L0203ec50:
    ldr r4, [r8, r7]
.L0203ec54:
    ldr lr, [r7, r1, lsl #2]
.L0203ec58:
    ldr r2, [r7, r0]
.L0203ec5c:
    ldr r1, [r6, r1, lsl #2]
.L0203ec60:
    ldr ip, [r6, r0]
.L0203ec64:
    rsb r2, r4, r2
.L0203ec68:
    rsb ip, r3, ip
.L0203ec6c:
    rsb lr, lr, r4
.L0203ec70:
    rsb r3, r1, r3
.L0203ec74:
    smull r0, r1, r3, r2
.L0203ec78:
    smull r2, r3, ip, lr
.L0203ec7c:
    mov r0, r0, lsr #16
.L0203ec80:
    mov r2, r2, lsr #16
.L0203ec84:
    orr r0, r0, r1, lsl #16
.L0203ec88:
    orr r2, r2, r3, lsl #16
.L0203ec8c:
    rsb r0, r2, r0
.L0203ec90:
    cmp r5, #0
.L0203ec94:
    mvn r0, r0
.L0203ec98:
    add r8, r8, #4
.L0203ec9c:
    add r5, r5, #1
.L0203eca0:
    mov r0, r0, lsr #31
.L0203eca4:
    beq .L0203ecb0
.L0203eca8:
    cmp fp, r0
.L0203ecac:
    bne .L0203ecc4
.L0203ecb0:
    cmp sl, r5
.L0203ecb4:
    mov fp, r0
.L0203ecb8:
    bne .L0203ec34
.L0203ecbc:
    mov r0, #1
.L0203ecc0:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203ecc4:
    mov r0, #0
.L0203ecc8:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203eccc:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203ecd0:
    ldr r4, [r0, #8]
.L0203ecd4:
    sub sp, sp, #44
.L0203ecd8:
    mov r9, r0
.L0203ecdc:
    mov ip, #0
.L0203ece0:
    mov r5, #4
.L0203ece4:
    b .L0203ecf0
.L0203ece8:
    mov r5, fp
.L0203ecec:
    mov ip, r8
.L0203ecf0:
    cmp ip, r4
.L0203ecf4:
    bge .L0203edc4
.L0203ecf8:
    ldr lr, [r9]
.L0203ecfc:
    ldr r1, [r9, #4]
.L0203ed00:
    sub r3, r5, #4
.L0203ed04:
    ldr r2, [lr, r3]
.L0203ed08:
    ldr r0, [r1, r3]
.L0203ed0c:
    add r8, ip, #1
.L0203ed10:
    sub r3, r4, #1
.L0203ed14:
    cmp r8, r3
.L0203ed18:
    movle r3, r5
.L0203ed1c:
    movgt r3, #0
.L0203ed20:
    str r2, [sp, #32]
.L0203ed24:
    str r0, [sp, #36]
.L0203ed28:
    ldr r2, [lr, r3]
.L0203ed2c:
    ldr ip, [r1, r3]
.L0203ed30:
    add fp, r5, #4
.L0203ed34:
    mov sl, fp
.L0203ed38:
    mov lr, r8
.L0203ed3c:
    str r2, [sp, #24]
.L0203ed40:
    str ip, [sp, #28]
.L0203ed44:
    cmp lr, r4
.L0203ed48:
    sub r7, sl, #4
.L0203ed4c:
    add r6, lr, #1
.L0203ed50:
    sub ip, r4, #1
.L0203ed54:
    add r0, sp, #32
.L0203ed58:
    add r1, sp, #24
.L0203ed5c:
    add r2, sp, #16
.L0203ed60:
    add r3, sp, #8
.L0203ed64:
    bge .L0203ece8
.L0203ed68:
    ldr r5, [r9, #4]
.L0203ed6c:
    cmp r6, ip
.L0203ed70:
    ldr ip, [r7, r5]
.L0203ed74:
    movle r4, sl
.L0203ed78:
    str ip, [sp, #4]
.L0203ed7c:
    ldr ip, [r9]
.L0203ed80:
    movgt r4, #0
.L0203ed84:
    ldr lr, [r7, ip]
.L0203ed88:
    ldr ip, [sp, #4]
.L0203ed8c:
    str lr, [sp, #16]
.L0203ed90:
    ldr lr, [r9]
.L0203ed94:
    str ip, [sp, #20]
.L0203ed98:
    ldr ip, [r4, r5]
.L0203ed9c:
    ldr r4, [r4, lr]
.L0203eda0:
    str ip, [sp, #12]
.L0203eda4:
    str r4, [sp, #8]
.L0203eda8:
    bl .L0203ea90
.L0203edac:
    cmp r0, #0
.L0203edb0:
    add sl, sl, #4
.L0203edb4:
    mov lr, r6
.L0203edb8:
    bne .L0203edd0
.L0203edbc:
    ldr r4, [r9, #8]
.L0203edc0:
    b .L0203ed44
.L0203edc4:
    mov r0, #1
.L0203edc8:
    add sp, sp, #44
.L0203edcc:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203edd0:
    mov r0, #0
.L0203edd4:
    b .L0203edc8
.L0203edd8:
    cmp r2, #1
.L0203eddc:
    stmdb sp!, {r4, r5, r6, lr}
.L0203ede0:
    mov r6, r0
.L0203ede4:
    mov r4, r1
.L0203ede8:
    ldmeqia sp!, {r4, r5, r6, pc}
.L0203edec:
    sub ip, r2, #1
.L0203edf0:
    cmp ip, #0
.L0203edf4:
    ldmleia sp!, {r4, r5, r6, pc}
.L0203edf8:
    mov r3, r2, lsl #2
.L0203edfc:
    add r2, r0, r3
.L0203ee00:
    mov r5, #0
.L0203ee04:
    add r3, r1, r3
.L0203ee08:
    mov lr, ip
.L0203ee0c:
    sub r0, r3, #4
.L0203ee10:
    sub r1, r2, #4
.L0203ee14:
    mov ip, r5
.L0203ee18:
    ldr r2, [ip, r6]
.L0203ee1c:
    ldr r3, [r1]
.L0203ee20:
    add r5, r5, #1
.L0203ee24:
    str r3, [ip, r6]
.L0203ee28:
    str r2, [r1], #-4
.L0203ee2c:
    ldr r2, [ip, r4]
.L0203ee30:
    ldr r3, [r0]
.L0203ee34:
    sub lr, lr, #1
.L0203ee38:
    cmp lr, r5
.L0203ee3c:
    str r3, [ip, r4]
.L0203ee40:
    str r2, [r0], #-4
.L0203ee44:
    add ip, ip, #4
.L0203ee48:
    bgt .L0203ee18
.L0203ee4c:
    ldmia sp!, {r4, r5, r6, pc}
.L0203ee50:
    mov r3, r0
.L0203ee54:
    ldr r2, [r0, #8]
.L0203ee58:
    ldr r1, [r3, #4]
.L0203ee5c:
    ldr r0, [r0]
.L0203ee60:
    b .L0203edd8
.L0203ee64:
    ldr ip, [r0]
.L0203ee68:
    cmp ip, #0
.L0203ee6c:
    mov ip, r3
.L0203ee70:
    bge .L0203ee9c
.L0203ee74:
    ldr r3, [r2]
.L0203ee78:
    mov r0, #1
.L0203ee7c:
    cmp r3, #0
.L0203ee80:
    bxgt lr
.L0203ee84:
    ldr r2, [ip]
.L0203ee88:
    ldr r3, [r1]
.L0203ee8c:
    cmp r2, r3
.L0203ee90:
    movlt r0, #0
.L0203ee94:
    movge r0, #1
.L0203ee98:
    bx lr
.L0203ee9c:
    ldr r3, [r2]
.L0203eea0:
    mov r0, #0
.L0203eea4:
    cmp r3, r0
.L0203eea8:
    bxlt lr
.L0203eeac:
    ldr r2, [ip]
.L0203eeb0:
    ldr r3, [r1]
.L0203eeb4:
    cmp r2, r3
.L0203eeb8:
    movge r0, #0
.L0203eebc:
    movlt r0, #1
.L0203eec0:
    bx lr
.L0203eec4:
    stmdb sp!, {r4, lr}
.L0203eec8:
    mov r4, r1
.L0203eecc:
    bl reconstructed_external_arm_02097870
.L0203eed0:
    subs r0, r1, #0
.L0203eed4:
    ldmgeia sp!, {r4, pc}
.L0203eed8:
    add r0, r4, r0
.L0203eedc:
    add r0, r0, r4
.L0203eee0:
    subs r1, r0, r4
.L0203eee4:
    bmi .L0203eedc
.L0203eee8:
    mov r0, r1
.L0203eeec:
    ldmia sp!, {r4, pc}
.L0203eef0:
    mov r3, #0
.L0203eef4:
    str r3, [r0, #136]
.L0203eef8:
    str r3, [r0]
.L0203eefc:
    str r3, [r0, #4]
.L0203ef00:
    bx lr
.L0203ef04:
    str lr, [sp, #-4]!
.L0203ef08:
    mov r2, #0
.L0203ef0c:
    str r2, [r0]
.L0203ef10:
    str r2, [r0, #4]
.L0203ef14:
    ldmia r1, {ip, lr}
.L0203ef18:
    str r2, [r0, #136]
.L0203ef1c:
    stmia r0, {ip, lr}
.L0203ef20:
    ldr pc, [sp], #4
.L0203ef24:
    ldr r3, [r0, #136]
.L0203ef28:
    sub r2, r3, #1
.L0203ef2c:
    cmp r2, r1
.L0203ef30:
    str r2, [r0, #136]
.L0203ef34:
    bxle lr
.L0203ef38:
    mov r3, r1, lsl #2
.L0203ef3c:
    add r3, r3, #12
.L0203ef40:
    add r0, r0, r3
.L0203ef44:
    ldr r3, [r0]
.L0203ef48:
    add r1, r1, #1
.L0203ef4c:
    cmp r2, r1
.L0203ef50:
    str r3, [r0, #-4]
.L0203ef54:
    add r0, r0, #4
.L0203ef58:
    bgt .L0203ef44
.L0203ef5c:
    bx lr
.L0203ef60:
    stmdb sp!, {r4, lr}
.L0203ef64:
    ldr r4, [r0, #136]
.L0203ef68:
    cmp r4, #0
.L0203ef6c:
    ble .L0203efa8
.L0203ef70:
    ldr lr, [r1]
.L0203ef74:
    mov ip, #0
.L0203ef78:
    ldr r2, [r0, #8]
.L0203ef7c:
    add ip, ip, #1
.L0203ef80:
    ldr r3, [r2]
.L0203ef84:
    add r0, r0, #4
.L0203ef88:
    cmp r3, lr
.L0203ef8c:
    bne .L0203efa0
.L0203ef90:
    ldr r2, [r2, #4]
.L0203ef94:
    ldr r3, [r1, #4]
.L0203ef98:
    cmp r2, r3
.L0203ef9c:
    beq .L0203efb0
.L0203efa0:
    cmp r4, ip
.L0203efa4:
    bne .L0203ef78
.L0203efa8:
    mov r0, #0
.L0203efac:
    ldmia sp!, {r4, pc}
.L0203efb0:
    mov r0, #1
.L0203efb4:
    ldmia sp!, {r4, pc}
.L0203efb8:
    stmdb sp!, {r4, r5, lr}
.L0203efbc:
    ldr lr, [r0, #136]
.L0203efc0:
    sub sp, sp, #4
.L0203efc4:
    cmp lr, #0
.L0203efc8:
    mov r5, r0
.L0203efcc:
    mov r4, r1
.L0203efd0:
    ble .L0203f00c
.L0203efd4:
    ldr r1, [r1]
.L0203efd8:
    mov ip, #0
.L0203efdc:
    ldr r2, [r0, #8]
.L0203efe0:
    add r0, r0, #4
.L0203efe4:
    ldr r3, [r2]
.L0203efe8:
    cmp r3, r1
.L0203efec:
    bne .L0203f000
.L0203eff0:
    ldr r2, [r2, #4]
.L0203eff4:
    ldr r3, [r4, #4]
.L0203eff8:
    cmp r2, r3
.L0203effc:
    beq .L0203f060
.L0203f000:
    add ip, ip, #1
.L0203f004:
    cmp lr, ip
.L0203f008:
    bne .L0203efdc
.L0203f00c:
    ldr r2, [pc, #84]
.L0203f010:
    ldr r0, [pc, #84]
.L0203f014:
    ldr r1, [pc, #84]
.L0203f018:
    bl reconstructed_external_arm_02097804
.L0203f01c:
    ldr lr, [r5, #136]
.L0203f020:
    mvn r2, #0
.L0203f024:
    sub lr, lr, #1
.L0203f028:
    cmp lr, r2
.L0203f02c:
    str lr, [r5, #136]
.L0203f030:
    ble .L0203f058
.L0203f034:
    mov r3, r2, lsl #2
.L0203f038:
    add r3, r3, #12
.L0203f03c:
    add r0, r5, r3
.L0203f040:
    ldr r3, [r0]
.L0203f044:
    add r2, r2, #1
.L0203f048:
    cmp lr, r2
.L0203f04c:
    str r3, [r0, #-4]
.L0203f050:
    add r0, r0, #4
.L0203f054:
    bgt .L0203f040
.L0203f058:
    add sp, sp, #4
.L0203f05c:
    ldmia sp!, {r4, r5, pc}
.L0203f060:
    mov r2, ip
.L0203f064:
    b .L0203f024
.L0203f068:
    .long 0x020c3900  /* literal data */
.L0203f06c:
    .long 0x020c38e8  /* literal data */
.L0203f070:
    .long 0x00000607  /* literal data */
.L0203f074:
    stmdb sp!, {r4, r5, lr}
.L0203f078:
    ldr ip, [r0, #136]
.L0203f07c:
    mov r4, r0
.L0203f080:
    cmp ip, #31
.L0203f084:
    mov r5, r1
.L0203f088:
    sub sp, sp, #4
.L0203f08c:
    ldr r0, [pc, #44]
.L0203f090:
    ldr r2, [pc, #44]
.L0203f094:
    ldr r1, [pc, #44]
.L0203f098:
    ble .L0203f0a4
.L0203f09c:
    bl reconstructed_external_arm_02097804
.L0203f0a0:
    ldr ip, [r4, #136]
.L0203f0a4:
    mov r3, ip, lsl #2
.L0203f0a8:
    add r2, ip, #1
.L0203f0ac:
    add r3, r3, r4
.L0203f0b0:
    str r5, [r3, #8]
.L0203f0b4:
    str r2, [r4, #136]
.L0203f0b8:
    add sp, sp, #4
.L0203f0bc:
    ldmia sp!, {r4, r5, pc}
.L0203f0c0:
    .long 0x020c38e8  /* literal data */
.L0203f0c4:
    .long 0x020c3908  /* literal data */
.L0203f0c8:
    .long 0x000005f8  /* literal data */
.L0203f0cc:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
.L0203f0d0:
    mov r5, #0
.L0203f0d4:
    mov r6, #3
.L0203f0d8:
    mov r7, r0
.L0203f0dc:
    str r6, [r0, #8]
.L0203f0e0:
    str r5, [r0, #12]
.L0203f0e4:
    mov r0, #12
.L0203f0e8:
    mov r8, r1
.L0203f0ec:
    bl reconstructed_external_arm_0209787c
.L0203f0f0:
    ldr r4, [r7, #8]
.L0203f0f4:
    mov r3, r0
.L0203f0f8:
    str r5, [r3], #4
.L0203f0fc:
    str r0, [r7]
.L0203f100:
    str r5, [r0, #4]
.L0203f104:
    str r5, [r3, #4]
.L0203f108:
    mov r0, r4, lsl #2
.L0203f10c:
    bl reconstructed_external_arm_0209787c
.L0203f110:
    cmp r4, r5
.L0203f114:
    beq .L0203f130
.L0203f118:
    mov r3, r5
.L0203f11c:
    mov r2, r5
.L0203f120:
    str r2, [r0, r3, lsl #2]
.L0203f124:
    add r3, r3, #1
.L0203f128:
    cmp r4, r3
.L0203f12c:
    bne .L0203f120
.L0203f130:
    ldr r6, [r7, #8]
.L0203f134:
    str r0, [r7, #4]
.L0203f138:
    cmp r6, #0
.L0203f13c:
    ble .L0203f170
.L0203f140:
    mov lr, #0
.L0203f144:
    ldmia r8, {r1, r5}
.L0203f148:
    ldr r4, [r7]
.L0203f14c:
    mov ip, lr
.L0203f150:
    ldr r3, [ip, r1]
.L0203f154:
    add lr, lr, #1
.L0203f158:
    str r3, [ip, r4]
.L0203f15c:
    ldr r2, [ip, r5]
.L0203f160:
    cmp r6, lr
.L0203f164:
    str r2, [ip, r0]
.L0203f168:
    add ip, ip, #4
.L0203f16c:
    bgt .L0203f150
.L0203f170:
    mov r0, r7
.L0203f174:
    ldmia sp!, {r4, r5, r6, r7, r8, pc}
.L0203f178:
    stmdb sp!, {r4, r5, r6, r7, lr}
.L0203f17c:
    ldr r4, [r0, #8]
.L0203f180:
    sub sp, sp, #4
.L0203f184:
    mov r7, r0
.L0203f188:
    mov r0, r4, lsl #3
.L0203f18c:
    bl reconstructed_external_arm_0209787c
.L0203f190:
    cmp r4, #0
.L0203f194:
    beq .L0203f1c0
.L0203f198:
    mov r1, #0
.L0203f19c:
    mov r2, r1
.L0203f1a0:
    mov ip, r1
.L0203f1a4:
    add r1, r1, #1
.L0203f1a8:
    add r3, r0, r2
.L0203f1ac:
    cmp r4, r1
.L0203f1b0:
    str ip, [r2, r0]
.L0203f1b4:
    str ip, [r3, #4]
.L0203f1b8:
    add r2, r2, #8
.L0203f1bc:
    bne .L0203f1a4
.L0203f1c0:
    ldr r6, [r7, #8]
.L0203f1c4:
    cmp r6, #0
.L0203f1c8:
    ble .L0203f200
.L0203f1cc:
    mov lr, #0
.L0203f1d0:
    ldmia r7, {r4, r5}
.L0203f1d4:
    mov ip, lr
.L0203f1d8:
    mov r1, r0
.L0203f1dc:
    ldr r3, [ip, r4]
.L0203f1e0:
    ldr r2, [ip, r5]
.L0203f1e4:
    str r3, [r0, lr, lsl #3]
.L0203f1e8:
    add lr, lr, #1
.L0203f1ec:
    cmp lr, r6
.L0203f1f0:
    str r2, [r1, #4]
.L0203f1f4:
    add ip, ip, #4
.L0203f1f8:
    add r1, r1, #8
.L0203f1fc:
    bne .L0203f1dc
.L0203f200:
    add sp, sp, #4
.L0203f204:
    ldmia sp!, {r4, r5, r6, r7, pc}
.L0203f208:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
.L0203f20c:
    mov r5, r0
.L0203f210:
    mov sl, #0
.L0203f214:
    mov r6, r3
.L0203f218:
    str sl, [r0, #12]
.L0203f21c:
    sub sp, sp, #4
.L0203f220:
    str r3, [r5, #8]
.L0203f224:
    mov r0, r3, lsl #2
.L0203f228:
    mov r8, r1
.L0203f22c:
    mov r7, r2
.L0203f230:
    bl reconstructed_external_arm_0209787c
.L0203f234:
    cmp r6, sl
.L0203f238:
    beq .L0203f254
.L0203f23c:
    mov r3, sl
.L0203f240:
    mov r2, sl
.L0203f244:
    str r2, [r0, r3, lsl #2]
.L0203f248:
    add r3, r3, #1
.L0203f24c:
    cmp r3, r6
.L0203f250:
    bne .L0203f244
.L0203f254:
    ldr r4, [r5, #8]
.L0203f258:
    str r0, [r5]
.L0203f25c:
    mov r0, r4, lsl #2
.L0203f260:
    bl reconstructed_external_arm_0209787c
.L0203f264:
    cmp r4, #0
.L0203f268:
    beq .L0203f284
.L0203f26c:
    mov r3, #0
.L0203f270:
    mov r2, r3
.L0203f274:
    str r2, [r0, r3, lsl #2]
.L0203f278:
    add r3, r3, #1
.L0203f27c:
    cmp r4, r3
.L0203f280:
    bne .L0203f274
.L0203f284:
    ldr r4, [r5, #8]
.L0203f288:
    str r0, [r5, #4]
.L0203f28c:
    cmp r4, #0
.L0203f290:
    ble .L0203f2c0
.L0203f294:
    mov ip, #0
.L0203f298:
    ldr lr, [r5]
.L0203f29c:
    mov r1, ip
.L0203f2a0:
    ldr r3, [r1, r8]
.L0203f2a4:
    add ip, ip, #1
.L0203f2a8:
    str r3, [lr, r1]
.L0203f2ac:
    ldr r2, [r1, r7]
.L0203f2b0:
    cmp r4, ip
.L0203f2b4:
    str r2, [r0, r1]
.L0203f2b8:
    add r1, r1, #4
.L0203f2bc:
    bgt .L0203f2a0
.L0203f2c0:
    mov r3, #0
.L0203f2c4:
    mov r0, r5
.L0203f2c8:
    strb r3, [r5, #16]
.L0203f2cc:
    add sp, sp, #4
.L0203f2d0:
    ldmia sp!, {r4, r5, r6, r7, r8, sl, pc}
.L0203f2d4:
    ldr r3, [r0, #8]
.L0203f2d8:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
.L0203f2dc:
    cmp r3, #2
.L0203f2e0:
    mov sl, r0
.L0203f2e4:
    mov r8, r1
.L0203f2e8:
    ldmleia sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L0203f2ec:
    bl .L0203f178
.L0203f2f0:
    ldr r3, [sl, #8]
.L0203f2f4:
    mov r5, r0
.L0203f2f8:
    cmp r3, #8
.L0203f2fc:
    bgt .L0203f3b4
.L0203f300:
    mov r9, #0
.L0203f304:
    mov r6, r9
.L0203f308:
    mov r7, r9
.L0203f30c:
    b .L0203f338
.L0203f310:
    rsb r3, r9, r6
.L0203f314:
    mov r3, r3, lsl #3
.L0203f318:
    add r3, r3, #32
.L0203f31c:
    ldr r1, [r1, #4]
.L0203f320:
    add r2, r8, r3
.L0203f324:
    str ip, [r8, r3]
.L0203f328:
    str r1, [r2, #4]
.L0203f32c:
    ldr r3, [sl, #8]
.L0203f330:
    add r7, r7, #8
.L0203f334:
    mov r6, r4
.L0203f338:
    add r4, r6, #1
.L0203f33c:
    cmp r6, r3
.L0203f340:
    mov r1, r3
.L0203f344:
    mov r0, r4
.L0203f348:
    bge .L0203f398
.L0203f34c:
    bl .L0203eec4
.L0203f350:
    ldr ip, [r7, r5]
.L0203f354:
    ldr r3, [r5, r0, lsl #3]
.L0203f358:
    add r1, r5, r7
.L0203f35c:
    cmp r3, ip
.L0203f360:
    mov r0, r4
.L0203f364:
    bne .L0203f310
.L0203f368:
    ldr r1, [sl, #8]
.L0203f36c:
    bl .L0203eec4
.L0203f370:
    mov r0, r0, lsl #3
.L0203f374:
    add r0, r0, r5
.L0203f378:
    add r1, r5, r7
.L0203f37c:
    ldr r2, [r0, #4]
.L0203f380:
    ldr r3, [r1, #4]
.L0203f384:
    cmp r2, r3
.L0203f388:
    addeq r9, r9, #1
.L0203f38c:
    beq .L0203f32c
.L0203f390:
    ldr ip, [r7, r5]
.L0203f394:
    b .L0203f310
.L0203f398:
    rsb r3, r9, r3
.L0203f39c:
    cmp r5, #0
.L0203f3a0:
    str r3, [r8, #96]
.L0203f3a4:
    ldmeqia sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L0203f3a8:
    mov r0, r5
.L0203f3ac:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
.L0203f3b0:
    b reconstructed_external_arm_02097888
.L0203f3b4:
    ldr r0, [pc, #16]
.L0203f3b8:
    mov r1, #512
.L0203f3bc:
    ldr r2, [pc, #12]
.L0203f3c0:
    bl reconstructed_external_arm_02097804
.L0203f3c4:
    ldr r3, [sl, #8]
.L0203f3c8:
    b .L0203f300
.L0203f3cc:
    .long 0x020c38e8  /* literal data */
.L0203f3d0:
    .long 0x020c3924  /* literal data */
.L0203f3d4:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203f3d8:
    ldr r5, [r0, #8]
.L0203f3dc:
    sub sp, sp, #28
.L0203f3e0:
    cmp r5, #0
.L0203f3e4:
    mov r8, r0
.L0203f3e8:
    mov fp, r1
.L0203f3ec:
    ble .L0203f6a8
.L0203f3f0:
    ldr r3, [r1]
.L0203f3f4:
    ldr r9, [r0]
.L0203f3f8:
    mov r6, r3
.L0203f3fc:
    mvn r1, #0
.L0203f400:
    ldr sl, [r6], #4
.L0203f404:
    add r3, r3, #8
.L0203f408:
    mov r7, r1
.L0203f40c:
    mov r4, #0
.L0203f410:
    str r1, [sp, #4]
.L0203f414:
    str r3, [sp, #20]
.L0203f418:
    str r1, [sp, #8]
.L0203f41c:
    str r1, [sp, #12]
.L0203f420:
    b .L0203f464
.L0203f424:
    ldr r2, [fp, #4]
.L0203f428:
    ldr r1, [r8, #4]
.L0203f42c:
    ldr r0, [r2]
.L0203f430:
    ldr r3, [r1, lr]
.L0203f434:
    cmp r3, r0
.L0203f438:
    bne .L0203f474
.L0203f43c:
    cmn r7, #1
.L0203f440:
    moveq r2, #0
.L0203f444:
    movne r3, #0
.L0203f448:
    moveq r7, r4
.L0203f44c:
    streq r2, [sp, #4]
.L0203f450:
    strne r4, [sp, #8]
.L0203f454:
    strne r3, [sp, #12]
.L0203f458:
    add r4, r4, #1
.L0203f45c:
    cmp r5, r4
.L0203f460:
    beq .L0203f4c0
.L0203f464:
    ldr ip, [r9, r4, lsl #2]
.L0203f468:
    mov lr, r4, lsl #2
.L0203f46c:
    cmp ip, sl
.L0203f470:
    beq .L0203f424
.L0203f474:
    ldr r3, [r6]
.L0203f478:
    cmp ip, r3
.L0203f47c:
    bne .L0203f640
.L0203f480:
    ldr r2, [fp, #4]
.L0203f484:
    ldr r1, [r8, #4]
.L0203f488:
    ldr r0, [r2, #4]
.L0203f48c:
    ldr r3, [r1, lr]
.L0203f490:
    cmp r3, r0
.L0203f494:
    bne .L0203f640
.L0203f498:
    cmn r7, #1
.L0203f49c:
    moveq r7, r4
.L0203f4a0:
    moveq r1, #1
.L0203f4a4:
    strne r4, [sp, #8]
.L0203f4a8:
    movne r2, #1
.L0203f4ac:
    add r4, r4, #1
.L0203f4b0:
    streq r1, [sp, #4]
.L0203f4b4:
    strne r2, [sp, #12]
.L0203f4b8:
    cmp r5, r4
.L0203f4bc:
    bne .L0203f464
.L0203f4c0:
    cmp r7, #0
.L0203f4c4:
    bne .L0203f4d8
.L0203f4c8:
    ldr r1, [sp, #8]
.L0203f4cc:
    sub r9, r5, #1
.L0203f4d0:
    cmp r9, r1
.L0203f4d4:
    beq .L0203f4e8
.L0203f4d8:
    ldr r2, [sp, #8]
.L0203f4dc:
    cmn r2, #1
.L0203f4e0:
    beq .L0203f6a8
.L0203f4e4:
    mov r9, r7
.L0203f4e8:
    ldr r1, [sp, #4]
.L0203f4ec:
    ldr r2, [sp, #12]
.L0203f4f0:
    cmp r2, #0
.L0203f4f4:
    cmpne r1, #0
.L0203f4f8:
    movne r3, #0
.L0203f4fc:
    moveq r3, #1
.L0203f500:
    strne r3, [sp, #16]
.L0203f504:
    beq .L0203f688
.L0203f508:
    add r4, r5, #1
.L0203f50c:
    mov r0, r4, lsl #2
.L0203f510:
    bl reconstructed_external_arm_0209787c
.L0203f514:
    cmp r4, #0
.L0203f518:
    mov r7, r0
.L0203f51c:
    beq .L0203f538
.L0203f520:
    mov r3, #0
.L0203f524:
    mov r2, r3
.L0203f528:
    cmp r5, r3
.L0203f52c:
    str r2, [r7, r3, lsl #2]
.L0203f530:
    add r3, r3, #1
.L0203f534:
    bne .L0203f528
.L0203f538:
    ldr r6, [r8, #8]
.L0203f53c:
    add r4, r6, #1
.L0203f540:
    mov r0, r4, lsl #2
.L0203f544:
    bl reconstructed_external_arm_0209787c
.L0203f548:
    cmp r4, #0
.L0203f54c:
    mov r5, r0
.L0203f550:
    beq .L0203f56c
.L0203f554:
    mov r3, #0
.L0203f558:
    mov r2, r3
.L0203f55c:
    cmp r3, r6
.L0203f560:
    str r2, [r5, r3, lsl #2]
.L0203f564:
    add r3, r3, #1
.L0203f568:
    bne .L0203f55c
.L0203f56c:
    ldr sl, [r8, #8]
.L0203f570:
    cmp sl, #0
.L0203f574:
    ble .L0203f5f4
.L0203f578:
    ldr r3, [sp, #16]
.L0203f57c:
    mov lr, #0
.L0203f580:
    ldr r6, [r8]
.L0203f584:
    ldr r4, [r8, #4]
.L0203f588:
    mov r3, r3, lsl #2
.L0203f58c:
    mov ip, lr
.L0203f590:
    str r3, [sp]
.L0203f594:
    b .L0203f5a4
.L0203f598:
    cmp sl, ip
.L0203f59c:
    add lr, lr, #1
.L0203f5a0:
    ble .L0203f5f4
.L0203f5a4:
    ldr r3, [r6, ip, lsl #2]
.L0203f5a8:
    mov r1, lr, lsl #2
.L0203f5ac:
    str r3, [r7, r1]
.L0203f5b0:
    ldr r2, [r4, ip, lsl #2]
.L0203f5b4:
    cmp r9, ip
.L0203f5b8:
    str r2, [r5, r1]
.L0203f5bc:
    add ip, ip, #1
.L0203f5c0:
    bne .L0203f598
.L0203f5c4:
    ldr r3, [sp]
.L0203f5c8:
    ldr r2, [fp]
.L0203f5cc:
    add lr, lr, #1
.L0203f5d0:
    ldr r2, [r2, r3]
.L0203f5d4:
    mov r0, lr, lsl #2
.L0203f5d8:
    ldr r1, [fp, #4]
.L0203f5dc:
    str r2, [r7, r0]
.L0203f5e0:
    ldr r2, [r3, r1]
.L0203f5e4:
    cmp sl, ip
.L0203f5e8:
    str r2, [r5, r0]
.L0203f5ec:
    add lr, lr, #1
.L0203f5f0:
    bgt .L0203f5a4
.L0203f5f4:
    mov r0, #20
.L0203f5f8:
    bl reconstructed_external_arm_02097894
.L0203f5fc:
    ldr r3, [r8, #8]
.L0203f600:
    mov r1, r7
.L0203f604:
    add r3, r3, #1
.L0203f608:
    mov r2, r5
.L0203f60c:
    mov r4, r0
.L0203f610:
    bl .L0203f208
.L0203f614:
    cmp r7, #0
.L0203f618:
    beq .L0203f624
.L0203f61c:
    mov r0, r7
.L0203f620:
    bl reconstructed_external_arm_02097888
.L0203f624:
    cmp r5, #0
.L0203f628:
    beq .L0203f634
.L0203f62c:
    mov r0, r5
.L0203f630:
    bl reconstructed_external_arm_02097888
.L0203f634:
    mov r0, r4
.L0203f638:
    add sp, sp, #28
.L0203f63c:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203f640:
    ldr r1, [sp, #20]
.L0203f644:
    ldr r3, [r1]
.L0203f648:
    cmp ip, r3
.L0203f64c:
    bne .L0203f458
.L0203f650:
    ldr r2, [fp, #4]
.L0203f654:
    ldr r1, [r8, #4]
.L0203f658:
    ldr r0, [r2, #8]
.L0203f65c:
    ldr r3, [r1, lr]
.L0203f660:
    cmp r3, r0
.L0203f664:
    bne .L0203f458
.L0203f668:
    cmn r7, #1
.L0203f66c:
    moveq r2, #2
.L0203f670:
    movne r3, #2
.L0203f674:
    moveq r7, r4
.L0203f678:
    streq r2, [sp, #4]
.L0203f67c:
    strne r4, [sp, #8]
.L0203f680:
    strne r3, [sp, #12]
.L0203f684:
    b .L0203f458
.L0203f688:
    ldr r3, [sp, #4]
.L0203f68c:
    ldr r1, [sp, #12]
.L0203f690:
    cmp r1, #1
.L0203f694:
    cmpne r3, #1
.L0203f698:
    movne r2, #1
.L0203f69c:
    moveq r2, #2
.L0203f6a0:
    str r2, [sp, #16]
.L0203f6a4:
    b .L0203f508
.L0203f6a8:
    mov r4, #0
.L0203f6ac:
    b .L0203f634
.L0203f6b0:
    ldr r3, [r1, #8]
.L0203f6b4:
    ldr ip, [r0, #8]
.L0203f6b8:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
.L0203f6bc:
    cmp ip, r3
.L0203f6c0:
    mov r7, r0
.L0203f6c4:
    mov r8, r1
.L0203f6c8:
    beq .L0203f754
.L0203f6cc:
    ldr r0, [r0]
.L0203f6d0:
    str r3, [r7, #8]
.L0203f6d4:
    cmp r0, #0
.L0203f6d8:
    beq .L0203f6e0
.L0203f6dc:
    bl reconstructed_external_arm_02097888
.L0203f6e0:
    ldr r0, [r7, #4]
.L0203f6e4:
    cmp r0, #0
.L0203f6e8:
    beq .L0203f6f0
.L0203f6ec:
    bl reconstructed_external_arm_02097888
.L0203f6f0:
    ldr r4, [r7, #8]
.L0203f6f4:
    mov r0, r4, lsl #2
.L0203f6f8:
    bl reconstructed_external_arm_0209787c
.L0203f6fc:
    cmp r4, #0
.L0203f700:
    beq .L0203f71c
.L0203f704:
    mov r3, #0
.L0203f708:
    mov r2, r3
.L0203f70c:
    str r2, [r0, r3, lsl #2]
.L0203f710:
    add r3, r3, #1
.L0203f714:
    cmp r4, r3
.L0203f718:
    bne .L0203f70c
.L0203f71c:
    ldr r4, [r7, #8]
.L0203f720:
    str r0, [r7]
.L0203f724:
    mov r0, r4, lsl #2
.L0203f728:
    bl reconstructed_external_arm_0209787c
.L0203f72c:
    cmp r4, #0
.L0203f730:
    beq .L0203f74c
.L0203f734:
    mov r3, #0
.L0203f738:
    mov r2, r3
.L0203f73c:
    str r2, [r0, r3, lsl #2]
.L0203f740:
    add r3, r3, #1
.L0203f744:
    cmp r4, r3
.L0203f748:
    bne .L0203f73c
.L0203f74c:
    ldr ip, [r7, #8]
.L0203f750:
    str r0, [r7, #4]
.L0203f754:
    cmp ip, #0
.L0203f758:
    ble .L0203f790
.L0203f75c:
    ldr r6, [r8, #4]
.L0203f760:
    ldr r5, [r7]
.L0203f764:
    ldr r4, [r7, #4]
.L0203f768:
    ldr lr, [r8]
.L0203f76c:
    mov r0, #0
.L0203f770:
    mov r3, r0, lsl #2
.L0203f774:
    ldr r2, [lr, r3]
.L0203f778:
    add r0, r0, #1
.L0203f77c:
    str r2, [r5, r3]
.L0203f780:
    ldr r1, [r6, r3]
.L0203f784:
    cmp ip, r0
.L0203f788:
    str r1, [r4, r3]
.L0203f78c:
    bgt .L0203f770
.L0203f790:
    mov r3, #0
.L0203f794:
    strb r3, [r7, #16]
.L0203f798:
    ldmia sp!, {r4, r5, r6, r7, r8, pc}
.L0203f79c:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203f7a0:
    sub sp, sp, #116
.L0203f7a4:
    str r0, [sp, #48]
.L0203f7a8:
    ldr r0, [r0, #8]
.L0203f7ac:
    mov r4, r1
.L0203f7b0:
    cmp r0, #3
.L0203f7b4:
    bgt .L0203f7c0
.L0203f7b8:
    add sp, sp, #116
.L0203f7bc:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203f7c0:
    bl reconstructed_external_arm_0209787c
.L0203f7c4:
    str r0, [sp, #52]
.L0203f7c8:
    ldr r0, [sp, #48]
.L0203f7cc:
    ldr r3, [r0, #8]
.L0203f7d0:
    cmp r3, #0
.L0203f7d4:
    ble .L0203fc80
.L0203f7d8:
    ldr r4, [r4]
.L0203f7dc:
    ldmia r0, {r1, r2}
.L0203f7e0:
    str r4, [sp, #24]
.L0203f7e4:
    mov r6, #1
.L0203f7e8:
    mov r4, #0
.L0203f7ec:
    str r1, [sp, #28]
.L0203f7f0:
    str r2, [sp, #20]
.L0203f7f4:
    str r3, [sp, #56]
.L0203f7f8:
    str r4, [sp, #60]
.L0203f7fc:
    str r6, [sp, #108]
.L0203f800:
    ldr sl, [sp, #60]
.L0203f804:
    ldr ip, [sp, #60]
.L0203f808:
    cmp sl, #0
.L0203f80c:
    subeq r3, r3, #1
.L0203f810:
    ldrne fp, [sp, #60]
.L0203f814:
    subne r2, r3, #1
.L0203f818:
    moveq r2, r3
.L0203f81c:
    subne r3, fp, #1
.L0203f820:
    cmp r2, ip
.L0203f824:
    ldr r2, [sp, #60]
.L0203f828:
    ldr r4, [sp, #20]
.L0203f82c:
    mov r1, r2, lsl #2
.L0203f830:
    ldr r6, [r4, r1]
.L0203f834:
    ldr r2, [r4, r3, lsl #2]
.L0203f838:
    ldr sl, [sp, #28]
.L0203f83c:
    ldrne r0, [sp, #108]
.L0203f840:
    ldr r8, [sl, r1]
.L0203f844:
    rsb r2, r2, r6
.L0203f848:
    ldr r3, [sl, r3, lsl #2]
.L0203f84c:
    movne r5, r0, lsl #2
.L0203f850:
    mov r0, r2
.L0203f854:
    mov r1, r0, asr #31
.L0203f858:
    strd r0, [sp, #72]
.L0203f85c:
    rsb r3, r3, r8
.L0203f860:
    mov sl, r3
.L0203f864:
    mov fp, sl, asr #31
.L0203f868:
    ldr lr, [sp, #76]
.L0203f86c:
    ldr r4, [sp, #72]
.L0203f870:
    str r6, [sp, #64]
.L0203f874:
    mul ip, sl, fp
.L0203f878:
    ldr r6, [sp, #20]
.L0203f87c:
    moveq r5, #0
.L0203f880:
    mul lr, r0, lr
.L0203f884:
    umull r2, r3, sl, sl
.L0203f888:
    umull r0, r1, r4, r4
.L0203f88c:
    ldr r6, [r6, r5]
.L0203f890:
    ldr r4, [pc, #1396]
.L0203f894:
    mov ip, ip, lsl #1
.L0203f898:
    str r6, [sp, #68]
.L0203f89c:
    ldr r6, [sp, #28]
.L0203f8a0:
    add r3, ip, r3
.L0203f8a4:
    mov lr, lr, lsl #1
.L0203f8a8:
    mov ip, #1
.L0203f8ac:
    strh ip, [r4, #176]
.L0203f8b0:
    ldr r9, [r6, r5]
.L0203f8b4:
    add r1, lr, r1
.L0203f8b8:
    mov ip, r4
.L0203f8bc:
    mov r6, r2, lsr #16
.L0203f8c0:
    mov r4, r0, lsr #16
.L0203f8c4:
    orr r6, r6, r3, lsl #16
.L0203f8c8:
    orr r4, r4, r1, lsl #16
.L0203f8cc:
    ldrh r3, [ip, #176]
.L0203f8d0:
    tst r3, #32768
.L0203f8d4:
    bne .L0203f8cc
.L0203f8d8:
    add r2, r6, r4
.L0203f8dc:
    mov r3, r2, asr #31
.L0203f8e0:
    mov r3, r3, lsl #16
.L0203f8e4:
    orr r3, r3, r2, lsr #16
.L0203f8e8:
    mov r2, r2, lsl #16
.L0203f8ec:
    strd r2, [ip, #184]
.L0203f8f0:
    ldr lr, [pc, #1300]
.L0203f8f4:
    ldrh r3, [lr, #176]
.L0203f8f8:
    tst r3, #32768
.L0203f8fc:
    bne .L0203f8f4
.L0203f900:
    ldr r0, [sp, #68]
.L0203f904:
    ldr r1, [sp, #64]
.L0203f908:
    rsb r3, r8, r9
.L0203f90c:
    rsb r2, r1, r0
.L0203f910:
    mov r0, r2
.L0203f914:
    mov r1, r0, asr #31
.L0203f918:
    strd r0, [sp, #88]
.L0203f91c:
    ldr r1, [sp, #88]
.L0203f920:
    ldr ip, [sp, #92]
.L0203f924:
    mov r8, r3
.L0203f928:
    mov r9, r8, asr #31
.L0203f92c:
    mul ip, r1, ip
.L0203f930:
    mul r0, r8, r9
.L0203f934:
    umull r4, r5, r1, r1
.L0203f938:
    umull r2, r3, r8, r8
.L0203f93c:
    mov r1, #67108864
.L0203f940:
    ldr r1, [r1, #692]
.L0203f944:
    mov r0, r0, lsl #1
.L0203f948:
    mov ip, ip, lsl #1
.L0203f94c:
    add r3, r0, r3
.L0203f950:
    str r1, [sp, #84]
.L0203f954:
    add r5, ip, r5
.L0203f958:
    mov r1, #1
.L0203f95c:
    mov r6, r2, lsr #16
.L0203f960:
    mov r0, r4, lsr #16
.L0203f964:
    strh r1, [lr, #176]
.L0203f968:
    orr r6, r6, r3, lsl #16
.L0203f96c:
    orr r0, r0, r5, lsl #16
.L0203f970:
    ldr r2, [pc, #1172]
.L0203f974:
    ldrh r3, [r2, #176]
.L0203f978:
    tst r3, #32768
.L0203f97c:
    bne .L0203f970
.L0203f980:
    add r2, r6, r0
.L0203f984:
    mov r3, r2, asr #31
.L0203f988:
    ldr r4, [pc, #1148]
.L0203f98c:
    mov r3, r3, lsl #16
.L0203f990:
    orr r3, r3, r2, lsr #16
.L0203f994:
    mov r2, r2, lsl #16
.L0203f998:
    strd r2, [r4, #184]
.L0203f99c:
    mov r2, r4
.L0203f9a0:
    ldrh r3, [r2, #176]
.L0203f9a4:
    tst r3, #32768
.L0203f9a8:
    bne .L0203f9a0
.L0203f9ac:
    ldr r6, [sp, #84]
.L0203f9b0:
    mov r3, #67108864
.L0203f9b4:
    cmp r6, #0
.L0203f9b8:
    ldr ip, [r3, #692]
.L0203f9bc:
    ble .L0203f9c8
.L0203f9c0:
    cmp ip, #0
.L0203f9c4:
    bgt .L0203f9ec
.L0203f9c8:
    ldr r0, [sp, #56]
.L0203f9cc:
    cmp r0, #3
.L0203f9d0:
    ble .L0203f9ec
.L0203f9d4:
    ldr r1, [sp, #60]
.L0203f9d8:
    ldr r2, [sp, #52]
.L0203f9dc:
    mov r3, #1
.L0203f9e0:
    sub r0, r0, #1
.L0203f9e4:
    strb r3, [r1, r2]
.L0203f9e8:
    str r0, [sp, #56]
.L0203f9ec:
    ldr r3, [pc, #1048]
.L0203f9f0:
    mov r4, #1
.L0203f9f4:
    strh r4, [r3, #128]
.L0203f9f8:
    mov r1, r3
.L0203f9fc:
    ldrh r3, [r1, #128]
.L0203fa00:
    tst r3, #32768
.L0203fa04:
    bne .L0203f9fc
.L0203fa08:
    mov r3, fp, lsl #16
.L0203fa0c:
    orr r3, r3, sl, lsr #16
.L0203fa10:
    mov r2, sl, lsl #16
.L0203fa14:
    ldr r6, [sp, #84]
.L0203fa18:
    strd r2, [r1, #144]
.L0203fa1c:
    ldr r0, [pc, #1000]
.L0203fa20:
    mov r1, #67108864
.L0203fa24:
    str r6, [r1, #664]
.L0203fa28:
    ldrh r3, [r0, #128]
.L0203fa2c:
    tst r3, #32768
.L0203fa30:
    bne .L0203fa28
.L0203fa34:
    mov r3, #67108864
.L0203fa38:
    mov sl, #1
.L0203fa3c:
    ldr r1, [pc, #968]
.L0203fa40:
    ldr r5, [r3, #672]
.L0203fa44:
    strh sl, [r0, #128]
.L0203fa48:
    ldrh r3, [r1, #128]
.L0203fa4c:
    tst r3, #32768
.L0203fa50:
    bne .L0203fa48
.L0203fa54:
    ldr fp, [sp, #76]
.L0203fa58:
    ldr r0, [sp, #72]
.L0203fa5c:
    mov r3, fp, lsl #16
.L0203fa60:
    orr r3, r3, r0, lsr #16
.L0203fa64:
    mov r2, r0, lsl #16
.L0203fa68:
    ldr r6, [sp, #84]
.L0203fa6c:
    strd r2, [r1, #144]
.L0203fa70:
    ldr r0, [pc, #916]
.L0203fa74:
    mov r1, #67108864
.L0203fa78:
    str r6, [r1, #664]
.L0203fa7c:
    ldrh r3, [r0, #128]
.L0203fa80:
    tst r3, #32768
.L0203fa84:
    bne .L0203fa7c
.L0203fa88:
    mov r3, #67108864
.L0203fa8c:
    mov sl, #1
.L0203fa90:
    ldr r1, [pc, #884]
.L0203fa94:
    ldr lr, [r3, #672]
.L0203fa98:
    strh sl, [r0, #128]
.L0203fa9c:
    ldrh r3, [r1, #128]
.L0203faa0:
    tst r3, #32768
.L0203faa4:
    bne .L0203fa9c
.L0203faa8:
    mov r3, r9, lsl #16
.L0203faac:
    orr r3, r3, r8, lsr #16
.L0203fab0:
    mov r2, r8, lsl #16
.L0203fab4:
    strd r2, [r1, #144]
.L0203fab8:
    ldr r0, [pc, #844]
.L0203fabc:
    mov r1, #67108864
.L0203fac0:
    str ip, [r1, #664]
.L0203fac4:
    ldrh r3, [r0, #128]
.L0203fac8:
    tst r3, #32768
.L0203facc:
    bne .L0203fac4
.L0203fad0:
    mov r3, #67108864
.L0203fad4:
    mov fp, #1
.L0203fad8:
    ldr r1, [pc, #812]
.L0203fadc:
    ldr r6, [r3, #672]
.L0203fae0:
    strh fp, [r0, #128]
.L0203fae4:
    ldrh r3, [r1, #128]
.L0203fae8:
    tst r3, #32768
.L0203faec:
    bne .L0203fae4
.L0203faf0:
    ldr r0, [sp, #92]
.L0203faf4:
    ldr r4, [sp, #88]
.L0203faf8:
    mov r3, r0, lsl #16
.L0203fafc:
    orr r3, r3, r4, lsr #16
.L0203fb00:
    mov r2, r4, lsl #16
.L0203fb04:
    strd r2, [r1, #144]
.L0203fb08:
    ldr r0, [pc, #764]
.L0203fb0c:
    mov r1, #67108864
.L0203fb10:
    str ip, [r1, #664]
.L0203fb14:
    ldrh r3, [r0, #128]
.L0203fb18:
    tst r3, #32768
.L0203fb1c:
    bne .L0203fb14
.L0203fb20:
    mov r0, lr
.L0203fb24:
    mov r1, r0, asr #31
.L0203fb28:
    strd r0, [sp, #96]
.L0203fb2c:
    ldr r1, [sp, #100]
.L0203fb30:
    mov r7, r6, asr #31
.L0203fb34:
    mul r1, r6, r1
.L0203fb38:
    mov r3, #67108864
.L0203fb3c:
    mov r8, r5
.L0203fb40:
    mov r9, r8, asr #31
.L0203fb44:
    ldr r4, [r3, #672]
.L0203fb48:
    mla r0, r7, r0, r1
.L0203fb4c:
    mul fp, r8, r7
.L0203fb50:
    ldr ip, [sp, #100]
.L0203fb54:
    mov r5, r4, asr #31
.L0203fb58:
    ldr sl, [sp, #96]
.L0203fb5c:
    mul ip, r4, ip
.L0203fb60:
    str r0, [sp, #12]
.L0203fb64:
    str fp, [sp, #8]
.L0203fb68:
    umull r0, r1, r6, sl
.L0203fb6c:
    umull sl, fp, r8, r6
.L0203fb70:
    mul r3, r8, r5
.L0203fb74:
    str ip, [sp, #4]
.L0203fb78:
    ldr ip, [sp, #96]
.L0203fb7c:
    strd sl, [sp, #40]
.L0203fb80:
    umull sl, fp, r4, ip
.L0203fb84:
    mla lr, r4, r9, r3
.L0203fb88:
    umull r2, r3, r8, r4
.L0203fb8c:
    strd sl, [sp, #32]
.L0203fb90:
    ldr sl, [sp, #12]
.L0203fb94:
    add r3, lr, r3
.L0203fb98:
    add r1, sl, r1
.L0203fb9c:
    ldr fp, [sp, #4]
.L0203fba0:
    mov r2, r2, lsr #16
.L0203fba4:
    mov r0, r0, lsr #16
.L0203fba8:
    orr r0, r0, r1, lsl #16
.L0203fbac:
    orr r2, r2, r3, lsl #16
.L0203fbb0:
    mla ip, r5, ip, fp
.L0203fbb4:
    rsb r2, r0, r2
.L0203fbb8:
    ldr r0, [sp, #24]
.L0203fbbc:
    cmp r2, #0
.L0203fbc0:
    rsblt r2, r2, #0
.L0203fbc4:
    ldr lr, [sp, #8]
.L0203fbc8:
    cmp r2, r0
.L0203fbcc:
    ldr r2, [sp, #36]
.L0203fbd0:
    mla lr, r6, r9, lr
.L0203fbd4:
    add r2, ip, r2
.L0203fbd8:
    ldr r1, [sp, #44]
.L0203fbdc:
    str r2, [sp, #36]
.L0203fbe0:
    ldr r3, [sp, #40]
.L0203fbe4:
    ldr sl, [sp, #32]
.L0203fbe8:
    ldr fp, [sp, #36]
.L0203fbec:
    add r1, lr, r1
.L0203fbf0:
    mov r0, r3, lsr #16
.L0203fbf4:
    mov r2, sl, lsr #16
.L0203fbf8:
    str r1, [sp, #44]
.L0203fbfc:
    orr r0, r0, r1, lsl #16
.L0203fc00:
    orr r2, r2, fp, lsl #16
.L0203fc04:
    bge .L0203fc9c
.L0203fc08:
    add r3, r0, r2
.L0203fc0c:
    cmp r3, #0
.L0203fc10:
    ble .L0203fc9c
.L0203fc14:
    ldr r0, [sp, #56]
.L0203fc18:
    cmp r0, #3
.L0203fc1c:
    ble .L0203fc9c
.L0203fc20:
    ldr r1, [sp, #60]
.L0203fc24:
    ldr r2, [sp, #52]
.L0203fc28:
    mov r3, #1
.L0203fc2c:
    sub r0, r0, #1
.L0203fc30:
    strb r3, [r1, r2]
.L0203fc34:
    str r0, [sp, #56]
.L0203fc38:
    ldr r4, [sp, #48]
.L0203fc3c:
    ldr r6, [sp, #60]
.L0203fc40:
    ldr sl, [sp, #108]
.L0203fc44:
    ldr r3, [r4, #8]
.L0203fc48:
    add r6, r6, #1
.L0203fc4c:
    add sl, sl, #1
.L0203fc50:
    cmp r3, r6
.L0203fc54:
    str r6, [sp, #60]
.L0203fc58:
    str sl, [sp, #108]
.L0203fc5c:
    bgt .L0203f800
.L0203fc60:
    ldr fp, [sp, #56]
.L0203fc64:
    rsbs r8, fp, #1
.L0203fc68:
    movcc r8, #0
.L0203fc6c:
    cmp r3, fp
.L0203fc70:
    movne r4, r8
.L0203fc74:
    orreq r4, r8, #1
.L0203fc78:
    cmp r4, #0
.L0203fc7c:
    beq .L0203fcb0
.L0203fc80:
    ldr ip, [sp, #52]
.L0203fc84:
    cmp ip, #0
.L0203fc88:
    beq .L0203f7b8
.L0203fc8c:
    mov r0, ip
.L0203fc90:
    add sp, sp, #116
.L0203fc94:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203fc98:
    b reconstructed_external_arm_02097888
.L0203fc9c:
    ldr r1, [sp, #60]
.L0203fca0:
    ldr r2, [sp, #52]
.L0203fca4:
    mov r3, #0
.L0203fca8:
    strb r3, [r1, r2]
.L0203fcac:
    b .L0203fc38
.L0203fcb0:
    ldr r0, [sp, #56]
.L0203fcb4:
    mov r5, r0, lsl #2
.L0203fcb8:
    mov r0, r5
.L0203fcbc:
    bl reconstructed_external_arm_0209787c
.L0203fcc0:
    ldr r1, [sp, #56]
.L0203fcc4:
    mov r7, r0
.L0203fcc8:
    cmp r1, #0
.L0203fccc:
    beq .L0203fdfc
.L0203fcd0:
    mov r3, r4
.L0203fcd4:
    ldr r2, [sp, #56]
.L0203fcd8:
    str r4, [r7, r3, lsl #2]
.L0203fcdc:
    add r3, r3, #1
.L0203fce0:
    cmp r2, r3
.L0203fce4:
    bne .L0203fcd4
.L0203fce8:
    mov r0, r5
.L0203fcec:
    bl reconstructed_external_arm_0209787c
.L0203fcf0:
    mov r3, r4
.L0203fcf4:
    mov r6, r0
.L0203fcf8:
    mov r2, r4
.L0203fcfc:
    ldr r4, [sp, #56]
.L0203fd00:
    str r2, [r6, r3, lsl #2]
.L0203fd04:
    add r3, r3, #1
.L0203fd08:
    cmp r4, r3
.L0203fd0c:
    bne .L0203fcfc
.L0203fd10:
    ldr sl, [sp, #48]
.L0203fd14:
    ldr ip, [sl, #8]
.L0203fd18:
    cmp ip, #0
.L0203fd1c:
    ble .L0203fd98
.L0203fd20:
    mov r4, #0
.L0203fd24:
    mov r5, r4
.L0203fd28:
    ldr fp, [sp, #52]
.L0203fd2c:
    ldrb r3, [r4, fp]
.L0203fd30:
    cmp r3, #0
.L0203fd34:
    bne .L0203fd8c
.L0203fd38:
    ldr r0, [sp, #56]
.L0203fd3c:
    cmp r5, r0
.L0203fd40:
    movne r3, r8
.L0203fd44:
    orreq r3, r8, #1
.L0203fd48:
    cmp r3, #0
.L0203fd4c:
    bne .L0203fd8c
.L0203fd50:
    cmp r5, r0
.L0203fd54:
    mov r1, #173
.L0203fd58:
    ldr r0, [pc, #176]
.L0203fd5c:
    ldr r2, [pc, #176]
.L0203fd60:
    bge .L0203fdec
.L0203fd64:
    ldr r2, [sp, #48]
.L0203fd68:
    mov r0, r4, lsl #2
.L0203fd6c:
    ldr r3, [r2]
.L0203fd70:
    ldr r2, [r3, r0]
.L0203fd74:
    ldr r3, [sp, #48]
.L0203fd78:
    str r2, [r7, r5, lsl #2]
.L0203fd7c:
    ldr r1, [r3, #4]
.L0203fd80:
    ldr r3, [r1, r0]
.L0203fd84:
    str r3, [r6, r5, lsl #2]
.L0203fd88:
    add r5, r5, #1
.L0203fd8c:
    add r4, r4, #1
.L0203fd90:
    cmp ip, r4
.L0203fd94:
    bgt .L0203fd28
.L0203fd98:
    ldr r4, [sp, #48]
.L0203fd9c:
    ldr r0, [r4]
.L0203fda0:
    cmp r0, #0
.L0203fda4:
    beq .L0203fdac
.L0203fda8:
    bl reconstructed_external_arm_02097888
.L0203fdac:
    ldr sl, [sp, #48]
.L0203fdb0:
    ldr r0, [sl, #4]
.L0203fdb4:
    cmp r0, #0
.L0203fdb8:
    beq .L0203fdc0
.L0203fdbc:
    bl reconstructed_external_arm_02097888
.L0203fdc0:
    ldr fp, [sp, #52]
.L0203fdc4:
    cmp fp, #0
.L0203fdc8:
    beq .L0203fdd4
.L0203fdcc:
    mov r0, fp
.L0203fdd0:
    bl reconstructed_external_arm_02097888
.L0203fdd4:
    ldr ip, [sp, #48]
.L0203fdd8:
    ldr r0, [sp, #56]
.L0203fddc:
    str r7, [ip]
.L0203fde0:
    str r0, [ip, #8]
.L0203fde4:
    str r6, [ip, #4]
.L0203fde8:
    b .L0203f7b8
.L0203fdec:
    bl reconstructed_external_arm_02097804
.L0203fdf0:
    ldr r1, [sp, #48]
.L0203fdf4:
    ldr ip, [r1, #8]
.L0203fdf8:
    b .L0203fd64
.L0203fdfc:
    mov r0, r5
.L0203fe00:
    bl reconstructed_external_arm_0209787c
.L0203fe04:
    mov r6, r0
.L0203fe08:
    b .L0203fd10
.L0203fe0c:
    .long 0x04000200  /* literal data */
.L0203fe10:
    .long 0x020c38e8  /* literal data */
.L0203fe14:
    .long 0x020c3948  /* literal data */
.L0203fe18:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203fe1c:
    cmp r3, #2
.L0203fe20:
    sub sp, sp, #84
.L0203fe24:
    str r3, [sp, #8]
.L0203fe28:
    str r0, [sp, #20]
.L0203fe2c:
    str r1, [sp, #16]
.L0203fe30:
    str r2, [sp, #12]
.L0203fe34:
    ble .L02040340
.L0203fe38:
    ldr r1, [sp, #8]
.L0203fe3c:
    mov r0, r1, lsl #2
.L0203fe40:
    bl reconstructed_external_arm_0209787c
.L0203fe44:
    ldr r2, [sp, #8]
.L0203fe48:
    str r0, [sp, #24]
.L0203fe4c:
    cmp r2, #0
.L0203fe50:
    strle r2, [sp, #32]
.L0203fe54:
    ble .L0203fe8c
.L0203fe58:
    ldr r3, [sp, #8]
.L0203fe5c:
    ldr r1, [pc, #1316]
.L0203fe60:
    str r3, [sp, #32]
.L0203fe64:
    mov r2, #0
.L0203fe68:
    ldr r4, [sp, #12]
.L0203fe6c:
    ldr r5, [sp, #8]
.L0203fe70:
    ldr r3, [r4, r2, lsl #2]
.L0203fe74:
    cmp r1, r3
.L0203fe78:
    strgt r2, [sp, #32]
.L0203fe7c:
    add r2, r2, #1
.L0203fe80:
    movgt r1, r3
.L0203fe84:
    cmp r5, r2
.L0203fe88:
    bne .L0203fe68
.L0203fe8c:
    ldr r6, [sp, #32]
.L0203fe90:
    cmn r6, #1
.L0203fe94:
    beq .L02040354
.L0203fe98:
    ldr lr, [pc, #1260]
.L0203fe9c:
    mov ip, #0
.L0203fea0:
    mvn r0, #0
.L0203fea4:
    str ip, [sp, #28]
.L0203fea8:
    str lr, [sp, #60]
.L0203feac:
    str r6, [sp, #36]
.L0203feb0:
    str r0, [sp, #40]
.L0203feb4:
    str ip, [sp, #64]
.L0203feb8:
    ldr r1, [sp, #8]
.L0203febc:
    cmp r1, #0
.L0203fec0:
    ldrle r5, [sp, #36]
.L0203fec4:
    movle r5, r5, lsl #2
.L0203fec8:
    strle r5, [sp]
.L0203fecc:
    ble .L020400b0
.L0203fed0:
    ldr r2, [sp, #36]
.L0203fed4:
    ldr r4, [sp, #16]
.L0203fed8:
    ldr r5, [sp, #12]
.L0203fedc:
    mov r2, r2, lsl #2
.L0203fee0:
    ldr r3, [pc, #1192]
.L0203fee4:
    add r4, r4, r2
.L0203fee8:
    add r5, r5, r2
.L0203feec:
    mov r6, #0
.L0203fef0:
    str r2, [sp]
.L0203fef4:
    str r3, [sp, #68]
.L0203fef8:
    str r4, [sp, #48]
.L0203fefc:
    str r5, [sp, #52]
.L0203ff00:
    str r6, [sp, #44]
.L0203ff04:
    ldr ip, [sp, #44]
.L0203ff08:
    ldr lr, [sp, #36]
.L0203ff0c:
    cmp ip, lr
.L0203ff10:
    beq .L02040098
.L0203ff14:
    ldr r1, [sp, #48]
.L0203ff18:
    ldr r3, [sp, #16]
.L0203ff1c:
    ldr r4, [sp, #52]
.L0203ff20:
    ldr r5, [sp, #12]
.L0203ff24:
    ldr r0, [r1]
.L0203ff28:
    ldr r2, [r3, ip, lsl #2]
.L0203ff2c:
    ldr r1, [r4]
.L0203ff30:
    ldr r3, [r5, ip, lsl #2]
.L0203ff34:
    rsb r2, r0, r2
.L0203ff38:
    rsb r3, r1, r3
.L0203ff3c:
    mov sl, r3
.L0203ff40:
    mov fp, sl, asr #31
.L0203ff44:
    mov r8, r2
.L0203ff48:
    mov r9, r8, asr #31
.L0203ff4c:
    mul r6, r8, r9
.L0203ff50:
    mul lr, sl, fp
.L0203ff54:
    umull r2, r3, r8, r8
.L0203ff58:
    umull r0, r1, sl, sl
.L0203ff5c:
    mov r6, r6, lsl #1
.L0203ff60:
    mov lr, lr, lsl #1
.L0203ff64:
    ldr ip, [pc, #1064]
.L0203ff68:
    add r3, r6, r3
.L0203ff6c:
    add r1, lr, r1
.L0203ff70:
    mov r6, r2, lsr #16
.L0203ff74:
    mov lr, #1
.L0203ff78:
    mov r4, r0, lsr #16
.L0203ff7c:
    strh lr, [ip, #176]
.L0203ff80:
    orr r6, r6, r3, lsl #16
.L0203ff84:
    orr r4, r4, r1, lsl #16
.L0203ff88:
    ldrh r3, [ip, #176]
.L0203ff8c:
    tst r3, #32768
.L0203ff90:
    bne .L0203ff88
.L0203ff94:
    add r2, r6, r4
.L0203ff98:
    mov r3, r2, asr #31
.L0203ff9c:
    mov r3, r3, lsl #16
.L0203ffa0:
    orr r3, r3, r2, lsr #16
.L0203ffa4:
    mov r2, r2, lsl #16
.L0203ffa8:
    strd r2, [ip, #184]
.L0203ffac:
    ldr r2, [pc, #992]
.L0203ffb0:
    ldrh r3, [r2, #176]
.L0203ffb4:
    tst r3, #32768
.L0203ffb8:
    bne .L0203ffb0
.L0203ffbc:
    mov r0, #67108864
.L0203ffc0:
    ldr r3, [r0, #692]
.L0203ffc4:
    mov r1, #1
.L0203ffc8:
    cmp r3, #0
.L0203ffcc:
    add r0, r0, #512
.L0203ffd0:
    movne ip, r3
.L0203ffd4:
    moveq ip, #65536
.L0203ffd8:
    strh r1, [r0, #128]
.L0203ffdc:
    ldrh r3, [r0, #128]
.L0203ffe0:
    tst r3, #32768
.L0203ffe4:
    bne .L0203ffdc
.L0203ffe8:
    mov r3, r9, lsl #16
.L0203ffec:
    mov r2, r8, lsl #16
.L0203fff0:
    orr r3, r3, r8, lsr #16
.L0203fff4:
    strd r2, [r0, #144]
.L0203fff8:
    ldr r1, [pc, #916]
.L0203fffc:
    mov r2, #67108864
.L02040000:
    str ip, [r2, #664]
.L02040004:
    ldrh r3, [r1, #128]
.L02040008:
    tst r3, #32768
.L0204000c:
    bne .L02040004
.L02040010:
    mov r3, #67108864
.L02040014:
    mov r4, #1
.L02040018:
    ldr r0, [pc, #884]
.L0204001c:
    ldr lr, [r3, #672]
.L02040020:
    strh r4, [r1, #128]
.L02040024:
    ldrh r3, [r0, #128]
.L02040028:
    tst r3, #32768
.L0204002c:
    bne .L02040024
.L02040030:
    mov r3, fp, lsl #16
.L02040034:
    orr r3, r3, sl, lsr #16
.L02040038:
    mov r2, sl, lsl #16
.L0204003c:
    mov r5, #67108864
.L02040040:
    ldr r1, [pc, #844]
.L02040044:
    strd r2, [r0, #144]
.L02040048:
    str ip, [r5, #664]
.L0204004c:
    ldrh r3, [r1, #128]
.L02040050:
    tst r3, #32768
.L02040054:
    bne .L0204004c
.L02040058:
    ldr ip, [sp, #60]
.L0204005c:
    mov r6, #67108864
.L02040060:
    smull r0, r1, lr, ip
.L02040064:
    ldr r6, [r6, #672]
.L02040068:
    ldr lr, [sp, #64]
.L0204006c:
    mov r0, r0, lsr #16
.L02040070:
    smull r2, r3, r6, lr
.L02040074:
    mov r2, r2, lsr #16
.L02040078:
    orr r2, r2, r3, lsl #16
.L0204007c:
    orr r0, r0, r1, lsl #16
.L02040080:
    ldr r1, [sp, #68]
.L02040084:
    add r0, r0, r2
.L02040088:
    cmp r1, r0
.L0204008c:
    ldrlt r2, [sp, #44]
.L02040090:
    strlt r0, [sp, #68]
.L02040094:
    strlt r2, [sp, #40]
.L02040098:
    ldr r3, [sp, #44]
.L0204009c:
    ldr r4, [sp, #8]
.L020400a0:
    add r3, r3, #1
.L020400a4:
    cmp r4, r3
.L020400a8:
    str r3, [sp, #44]
.L020400ac:
    bne .L0203ff04
.L020400b0:
    ldr r6, [sp, #40]
.L020400b4:
    ldr ip, [sp, #12]
.L020400b8:
    ldr r0, [sp]
.L020400bc:
    mov r1, r6, lsl #2
.L020400c0:
    ldr r3, [sp, #16]
.L020400c4:
    ldr lr, [ip, r0]
.L020400c8:
    ldr r2, [ip, r1]
.L020400cc:
    ldr r0, [r3, r0]
.L020400d0:
    ldr r3, [r3, r1]
.L020400d4:
    rsb r2, lr, r2
.L020400d8:
    rsb r3, r0, r3
.L020400dc:
    mov sl, r2
.L020400e0:
    mov fp, sl, asr #31
.L020400e4:
    mov r8, r3
.L020400e8:
    mov r9, r8, asr #31
.L020400ec:
    mul lr, sl, fp
.L020400f0:
    umull r0, r1, sl, sl
.L020400f4:
    mul r4, r8, r9
.L020400f8:
    umull r2, r3, r8, r8
.L020400fc:
    mov lr, lr, lsl #1
.L02040100:
    ldr r5, [sp, #28]
.L02040104:
    mov r4, r4, lsl #1
.L02040108:
    add r1, lr, r1
.L0204010c:
    ldr ip, [sp, #24]
.L02040110:
    ldr lr, [pc, #636]
.L02040114:
    add r3, r4, r3
.L02040118:
    mov r4, #1
.L0204011c:
    str r6, [ip, r5, lsl #2]
.L02040120:
    strh r4, [lr, #176]
.L02040124:
    add r5, r5, #1
.L02040128:
    mov r6, r2, lsr #16
.L0204012c:
    mov r4, r0, lsr #16
.L02040130:
    str r5, [sp, #28]
.L02040134:
    orr r6, r6, r3, lsl #16
.L02040138:
    mov r7, r3, asr #16
.L0204013c:
    orr r4, r4, r1, lsl #16
.L02040140:
    ldr ip, [pc, #588]
.L02040144:
    ldrh r3, [ip, #176]
.L02040148:
    tst r3, #32768
.L0204014c:
    bne .L02040140
.L02040150:
    add r2, r6, r4
.L02040154:
    mov r3, r2, asr #31
.L02040158:
    mov r3, r3, lsl #16
.L0204015c:
    orr r3, r3, r2, lsr #16
.L02040160:
    mov r2, r2, lsl #16
.L02040164:
    strd r2, [ip, #184]
.L02040168:
    mov r2, ip
.L0204016c:
    ldrh r3, [r2, #176]
.L02040170:
    tst r3, #32768
.L02040174:
    bne .L0204016c
.L02040178:
    mov lr, #67108864
.L0204017c:
    ldr r3, [lr, #692]
.L02040180:
    ldr r0, [pc, #524]
.L02040184:
    cmp r3, #0
.L02040188:
    mov r1, #1
.L0204018c:
    movne ip, r3
.L02040190:
    moveq ip, #65536
.L02040194:
    strh r1, [r0, #128]
.L02040198:
    ldrh r3, [r0, #128]
.L0204019c:
    tst r3, #32768
.L020401a0:
    bne .L02040198
.L020401a4:
    mov r3, r9, lsl #16
.L020401a8:
    mov r2, r8, lsl #16
.L020401ac:
    orr r3, r3, r8, lsr #16
.L020401b0:
    strd r2, [r0, #144]
.L020401b4:
    ldr r1, [pc, #472]
.L020401b8:
    mov r2, #67108864
.L020401bc:
    str ip, [r2, #664]
.L020401c0:
    ldrh r3, [r1, #128]
.L020401c4:
    tst r3, #32768
.L020401c8:
    bne .L020401c0
.L020401cc:
    mov r3, #67108864
.L020401d0:
    mov r4, #1
.L020401d4:
    ldr r0, [pc, #440]
.L020401d8:
    ldr lr, [r3, #672]
.L020401dc:
    strh r4, [r1, #128]
.L020401e0:
    ldrh r3, [r0, #128]
.L020401e4:
    tst r3, #32768
.L020401e8:
    bne .L020401e0
.L020401ec:
    mov r3, fp, lsl #16
.L020401f0:
    orr r3, r3, sl, lsr #16
.L020401f4:
    mov r2, sl, lsl #16
.L020401f8:
    mov r5, #67108864
.L020401fc:
    ldr r1, [pc, #400]
.L02040200:
    strd r2, [r0, #144]
.L02040204:
    str ip, [r5, #664]
.L02040208:
    ldrh r3, [r1, #128]
.L0204020c:
    tst r3, #32768
.L02040210:
    bne .L02040208
.L02040214:
    ldr ip, [sp, #40]
.L02040218:
    mov r6, #67108864
.L0204021c:
    ldr r0, [sp, #32]
.L02040220:
    ldr r3, [r6, #672]
.L02040224:
    cmp ip, r0
.L02040228:
    str r3, [sp, #64]
.L0204022c:
    str lr, [sp, #60]
.L02040230:
    str ip, [sp, #36]
.L02040234:
    bne .L0203feb8
.L02040238:
    ldr r5, [sp, #28]
.L0204023c:
    mov r4, r5, lsl #2
.L02040240:
    mov r0, r4
.L02040244:
    bl reconstructed_external_arm_0209787c
.L02040248:
    cmp r5, #0
.L0204024c:
    mov r6, r0
.L02040250:
    beq .L02040374
.L02040254:
    mov r3, #0
.L02040258:
    mov r7, r3
.L0204025c:
    ldr r1, [sp, #28]
.L02040260:
    str r7, [r6, r3, lsl #2]
.L02040264:
    add r3, r3, #1
.L02040268:
    cmp r1, r3
.L0204026c:
    bne .L0204025c
.L02040270:
    mov r0, r4
.L02040274:
    bl reconstructed_external_arm_0209787c
.L02040278:
    mov r3, r7
.L0204027c:
    mov r4, r0
.L02040280:
    mov r2, #0
.L02040284:
    ldr ip, [sp, #28]
.L02040288:
    str r2, [r4, r3, lsl #2]
.L0204028c:
    add r3, r3, #1
.L02040290:
    cmp ip, r3
.L02040294:
    bne .L02040280
.L02040298:
    cmp r5, r2
.L0204029c:
    ble .L020402d8
.L020402a0:
    mov ip, r2
.L020402a4:
    mov r0, r2
.L020402a8:
    ldr lr, [sp, #24]
.L020402ac:
    ldr r3, [sp, #16]
.L020402b0:
    ldr r1, [lr, r0]
.L020402b4:
    ldr lr, [sp, #12]
.L020402b8:
    ldr r2, [r3, r1, lsl #2]
.L020402bc:
    add ip, ip, #1
.L020402c0:
    str r2, [r0, r6]
.L020402c4:
    ldr r3, [lr, r1, lsl #2]
.L020402c8:
    cmp ip, r5
.L020402cc:
    str r3, [r0, r4]
.L020402d0:
    add r0, r0, #4
.L020402d4:
    bne .L020402a8
.L020402d8:
    mov r3, r5
.L020402dc:
    ldr r0, [sp, #20]
.L020402e0:
    mov r1, r6
.L020402e4:
    mov r2, r4
.L020402e8:
    bl .L0203f208
.L020402ec:
    cmp r6, #0
.L020402f0:
    beq .L020402fc
.L020402f4:
    mov r0, r6
.L020402f8:
    bl reconstructed_external_arm_02097888
.L020402fc:
    cmp r4, #0
.L02040300:
    beq .L0204030c
.L02040304:
    mov r0, r4
.L02040308:
    bl reconstructed_external_arm_02097888
.L0204030c:
    ldr r0, [sp, #24]
.L02040310:
    cmp r0, #0
.L02040314:
    beq .L0204031c
.L02040318:
    bl reconstructed_external_arm_02097888
.L0204031c:
    ldr r3, [pc, #116]
.L02040320:
    add r1, sp, #80
.L02040324:
    ldr r2, [r3]
.L02040328:
    ldr r0, [sp, #20]
.L0204032c:
    str r2, [r1, #-4]!
.L02040330:
    bl .L0203f79c
.L02040334:
    ldr r0, [sp, #20]
.L02040338:
    add sp, sp, #84
.L0204033c:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02040340:
    ldr r0, [pc, #84]
.L02040344:
    ldr r1, [pc, #84]
.L02040348:
    ldr r2, [pc, #84]
.L0204034c:
    bl reconstructed_external_arm_02097804
.L02040350:
    b .L0203fe38
.L02040354:
    mov r0, #0
.L02040358:
    bl reconstructed_external_arm_0209787c
.L0204035c:
    mov r6, r0
.L02040360:
    mov r0, #0
.L02040364:
    bl reconstructed_external_arm_0209787c
.L02040368:
    mov r5, #0
.L0204036c:
    mov r4, r0
.L02040370:
    b .L020402d8
.L02040374:
    mov r0, r4
.L02040378:
    bl reconstructed_external_arm_0209787c
.L0204037c:
    ldr r5, [sp, #28]
.L02040380:
    mov r4, r0
.L02040384:
    b .L020402d8
.L02040388:
    .long 0x7fff0000  /* literal data */
.L0204038c:
    .long 0xffff0000  /* literal data */
.L02040390:
    .long 0xfffe0000  /* literal data */
.L02040394:
    .long 0x04000200  /* literal data */
.L02040398:
    .long 0x020cae64  /* literal data */
.L0204039c:
    .long 0x020c38e8  /* literal data */
.L020403a0:
    .long 0x00000452  /* literal data */
.L020403a4:
    .long 0x020c3964  /* literal data */
.L020403a8:
    stmdb sp!, {r4, lr}
.L020403ac:
    mov r4, r0
.L020403b0:
    ldr r0, [r0]
.L020403b4:
    cmp r0, #0
.L020403b8:
    beq .L020403c0
.L020403bc:
    bl reconstructed_external_arm_02097888
.L020403c0:
    ldr r0, [r4, #4]
.L020403c4:
    cmp r0, #0
.L020403c8:
    beq .L020403d0
.L020403cc:
    bl reconstructed_external_arm_02097888
.L020403d0:
    mov r0, r4
.L020403d4:
    ldmia sp!, {r4, pc}
.L020403d8:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020403dc:
    ldr lr, [r0, #8]
.L020403e0:
    sub sp, sp, #52
.L020403e4:
    cmp lr, #2
.L020403e8:
    mov r8, r0
.L020403ec:
    str r1, [sp, #4]
.L020403f0:
    str r2, [sp]
.L020403f4:
    movgt sl, #0
.L020403f8:
    ble .L02040498
.L020403fc:
    mov r2, sl, lsl #2
.L02040400:
    cmp sl, lr
.L02040404:
    mov r6, r2
.L02040408:
    bge .L02040498
.L0204040c:
    add r7, sl, #1
.L02040410:
    cmp lr, r7
.L02040414:
    ble .L02040678
.L02040418:
    ldr r3, [r8]
.L0204041c:
    add r9, r2, #4
.L02040420:
    ldr r5, [r6, r3]
.L02040424:
    add r0, r2, r3
.L02040428:
    mov ip, r9
.L0204042c:
    mov r4, r7
.L02040430:
    ldr r3, [r0, #4]
.L02040434:
    add r0, r0, #4
.L02040438:
    rsb r3, r3, r5
.L0204043c:
    cmp r3, #0
.L02040440:
    rsblt r3, r3, #0
.L02040444:
    cmp r3, #64
.L02040448:
    bgt .L02040474
.L0204044c:
    ldr r3, [r8, #4]
.L02040450:
    ldr r2, [r6, r3]
.L02040454:
    ldr r1, [ip, r3]
.L02040458:
    rsb r2, r1, r2
.L0204045c:
    cmp r2, #0
.L02040460:
    rsblt r2, r2, #0
.L02040464:
    cmp r2, #64
.L02040468:
    bgt .L02040474
.L0204046c:
    cmp r7, r4
.L02040470:
    bne .L020404a4
.L02040474:
    add r4, r4, #1
.L02040478:
    cmp lr, r4
.L0204047c:
    add ip, ip, #4
.L02040480:
    bgt .L02040430
.L02040484:
    mov sl, r7
.L02040488:
    cmp sl, lr
.L0204048c:
    add r6, r6, #4
.L02040490:
    mov r2, r9
.L02040494:
    blt .L0204040c
.L02040498:
    mov r0, #0
.L0204049c:
    add sp, sp, #52
.L020404a0:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L020404a4:
    rsb r6, sl, r4
.L020404a8:
    cmp lr, r6
.L020404ac:
    beq .L02040498
.L020404b0:
    mov r7, r6, lsl #2
.L020404b4:
    mov r0, r7
.L020404b8:
    bl reconstructed_external_arm_0209787c
.L020404bc:
    cmp r6, #0
.L020404c0:
    mov r9, r0
.L020404c4:
    beq .L02040690
.L020404c8:
    mov r3, #0
.L020404cc:
    mov r5, r3
.L020404d0:
    str r5, [r9, r3, lsl #2]
.L020404d4:
    add r3, r3, #1
.L020404d8:
    cmp r6, r3
.L020404dc:
    bne .L020404d0
.L020404e0:
    mov r0, r7
.L020404e4:
    bl reconstructed_external_arm_0209787c
.L020404e8:
    mov r3, r5
.L020404ec:
    mov r7, r0
.L020404f0:
    mov r0, r5
.L020404f4:
    str r0, [r7, r3, lsl #2]
.L020404f8:
    add r3, r3, #1
.L020404fc:
    cmp r6, r3
.L02040500:
    bne .L020404f4
.L02040504:
    cmp r6, #0
.L02040508:
    ble .L02040540
.L0204050c:
    mov r5, r0
.L02040510:
    add r0, r5, sl
.L02040514:
    ldr r1, [r8, #8]
.L02040518:
    bl .L0203eec4
.L0204051c:
    ldr r2, [r8]
.L02040520:
    ldr r1, [r8, #4]
.L02040524:
    ldr r3, [r2, r0, lsl #2]
.L02040528:
    str r3, [r9, r5, lsl #2]
.L0204052c:
    ldr r2, [r1, r0, lsl #2]
.L02040530:
    str r2, [r7, r5, lsl #2]
.L02040534:
    add r5, r5, #1
.L02040538:
    cmp r6, r5
.L0204053c:
    bne .L02040510
.L02040540:
    add fp, sp, #28
.L02040544:
    mov r2, r7
.L02040548:
    mov r3, r6
.L0204054c:
    mov r1, r9
.L02040550:
    mov r0, fp
.L02040554:
    bl .L0203f208
.L02040558:
    ldr r0, [sp, #4]
.L0204055c:
    mov r1, fp
.L02040560:
    bl .L0203f6b0
.L02040564:
    cmp r9, #0
.L02040568:
    beq .L02040574
.L0204056c:
    mov r0, r9
.L02040570:
    bl reconstructed_external_arm_02097888
.L02040574:
    cmp r7, #0
.L02040578:
    beq .L02040584
.L0204057c:
    mov r0, r7
.L02040580:
    bl reconstructed_external_arm_02097888
.L02040584:
    ldr r3, [r8, #8]
.L02040588:
    rsb r6, r6, r3
.L0204058c:
    mov r7, r6, lsl #2
.L02040590:
    mov r0, r7
.L02040594:
    bl reconstructed_external_arm_0209787c
.L02040598:
    cmp r6, #0
.L0204059c:
    mov sl, r0
.L020405a0:
    beq .L02040680
.L020405a4:
    mov r3, #0
.L020405a8:
    mov r5, r3
.L020405ac:
    str r5, [sl, r3, lsl #2]
.L020405b0:
    add r3, r3, #1
.L020405b4:
    cmp r6, r3
.L020405b8:
    bne .L020405ac
.L020405bc:
    mov r0, r7
.L020405c0:
    bl reconstructed_external_arm_0209787c
.L020405c4:
    mov r3, r5
.L020405c8:
    mov r7, r0
.L020405cc:
    mov r0, r5
.L020405d0:
    str r0, [r7, r3, lsl #2]
.L020405d4:
    add r3, r3, #1
.L020405d8:
    cmp r6, r3
.L020405dc:
    bne .L020405d0
.L020405e0:
    cmp r6, #0
.L020405e4:
    ble .L0204061c
.L020405e8:
    mov r5, r0
.L020405ec:
    add r0, r5, r4
.L020405f0:
    ldr r1, [r8, #8]
.L020405f4:
    bl .L0203eec4
.L020405f8:
    ldr r2, [r8]
.L020405fc:
    ldr r1, [r8, #4]
.L02040600:
    ldr r3, [r2, r0, lsl #2]
.L02040604:
    str r3, [sl, r5, lsl #2]
.L02040608:
    ldr r2, [r1, r0, lsl #2]
.L0204060c:
    str r2, [r7, r5, lsl #2]
.L02040610:
    add r5, r5, #1
.L02040614:
    cmp r6, r5
.L02040618:
    bne .L020405ec
.L0204061c:
    add r4, sp, #8
.L02040620:
    mov r3, r6
.L02040624:
    mov r2, r7
.L02040628:
    mov r1, sl
.L0204062c:
    mov r0, r4
.L02040630:
    bl .L0203f208
.L02040634:
    ldr r0, [sp]
.L02040638:
    mov r1, r4
.L0204063c:
    bl .L0203f6b0
.L02040640:
    cmp sl, #0
.L02040644:
    beq .L02040650
.L02040648:
    mov r0, sl
.L0204064c:
    bl reconstructed_external_arm_02097888
.L02040650:
    cmp r7, #0
.L02040654:
    beq .L02040660
.L02040658:
    mov r0, r7
.L0204065c:
    bl reconstructed_external_arm_02097888
.L02040660:
    mov r0, r4
.L02040664:
    bl .L020403a8
.L02040668:
    mov r0, fp
.L0204066c:
    bl .L020403a8
.L02040670:
    mov r0, #1
.L02040674:
    b .L0204049c
.L02040678:
    mov sl, r7
.L0204067c:
    b .L020403fc
.L02040680:
    mov r0, r7
.L02040684:
    bl reconstructed_external_arm_0209787c
.L02040688:
    mov r7, r0
.L0204068c:
    b .L0204061c
.L02040690:
    mov r0, r7
.L02040694:
    bl reconstructed_external_arm_0209787c
.L02040698:
    mov r7, r0
.L0204069c:
    b .L02040540
.L020406a0:
    stmdb sp!, {r4, lr}
.L020406a4:
    mov r4, r0
.L020406a8:
    ldr r0, [r0]
.L020406ac:
    cmp r0, #0
.L020406b0:
    beq .L020406b8
.L020406b4:
    bl reconstructed_external_arm_02097888
.L020406b8:
    ldr r0, [r4, #4]
.L020406bc:
    cmp r0, #0
.L020406c0:
    beq .L020406c8
.L020406c4:
    bl reconstructed_external_arm_02097888
.L020406c8:
    mov r0, r4
.L020406cc:
    ldmia sp!, {r4, pc}
.L020406d0:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020406d4:
    subs sl, r1, #0
.L020406d8:
    sub sp, sp, #44
.L020406dc:
    mov r9, r2
.L020406e0:
    movle r2, #0
.L020406e4:
    mov r7, r0
.L020406e8:
    str r3, [sp, #8]
.L020406ec:
    strle r2, [sp, #12]
.L020406f0:
    ble .L0204088c
.L020406f4:
    mov r0, sl, lsl #2
.L020406f8:
    bl reconstructed_external_arm_0209787c
.L020406fc:
    mov r6, #0
.L02040700:
    mov r8, r0
.L02040704:
    mov r5, r6
.L02040708:
    mov lr, r6
.L0204070c:
    b .L02040738
.L02040710:
    ldr r3, [r2, #4]
.L02040714:
    ldmia r3, {r1, r2}
.L02040718:
    cmp r2, r1
.L0204071c:
    bne .L02040758
.L02040720:
    mov r3, #1
.L02040724:
    str r3, [r5, r8]
.L02040728:
    cmp sl, r6
.L0204072c:
    add r5, r5, #4
.L02040730:
    add lr, lr, #8
.L02040734:
    beq .L020407a8
.L02040738:
    ldr r0, [lr, r7]
.L0204073c:
    mov r3, #0
.L02040740:
    str r3, [r5, r8]
.L02040744:
    ldmia r0, {r4, ip}
.L02040748:
    add r6, r6, #1
.L0204074c:
    cmp ip, r4
.L02040750:
    add r2, lr, r7
.L02040754:
    beq .L02040710
.L02040758:
    ldr r0, [r0, #8]
.L0204075c:
    add r3, lr, r7
.L02040760:
    cmp ip, r0
.L02040764:
    bne .L02040778
.L02040768:
    ldr r3, [r3, #4]
.L0204076c:
    ldmib r3, {r1, r2}
.L02040770:
    cmp r2, r1
.L02040774:
    beq .L02040720
.L02040778:
    cmp r4, r0
.L0204077c:
    add r3, lr, r7
.L02040780:
    bne .L02040728
.L02040784:
    ldr r3, [r3, #4]
.L02040788:
    ldr r1, [r3]
.L0204078c:
    ldr r2, [r3, #8]
.L02040790:
    cmp r2, r1
.L02040794:
    beq .L02040720
.L02040798:
    cmp sl, r6
.L0204079c:
    add r5, r5, #4
.L020407a0:
    add lr, lr, #8
.L020407a4:
    bne .L02040738
.L020407a8:
    mov r3, #0
.L020407ac:
    str r3, [sp, #12]
.L020407b0:
    str r9, [sp, #4]
.L020407b4:
    mov r1, r3
.L020407b8:
    add fp, sp, #16
.L020407bc:
    cmp r1, sl
.L020407c0:
    bge .L0204087c
.L020407c4:
    mov r5, r1, lsl #2
.L020407c8:
    ldr r4, [r8, r5]
.L020407cc:
    cmp r4, #0
.L020407d0:
    bne .L02040898
.L020407d4:
    cmn r1, #1
.L020407d8:
    beq .L0204087c
.L020407dc:
    mov r1, r1, lsl #3
.L020407e0:
    add r1, r1, r7
.L020407e4:
    mov r0, fp
.L020407e8:
    bl .L0203f0cc
.L020407ec:
    mov r3, #1
.L020407f0:
    str r3, [r8, r5]
.L020407f4:
    mov r9, r4
.L020407f8:
    mov r5, r7
.L020407fc:
    mov r6, r4
.L02040800:
    b .L02040818
.L02040804:
    add r9, r9, #1
.L02040808:
    cmp sl, r9
.L0204080c:
    add r6, r6, #4
.L02040810:
    add r5, r5, #8
.L02040814:
    beq .L020408c0
.L02040818:
    ldr r3, [r6, r8]
.L0204081c:
    mov r1, r5
.L02040820:
    cmp r3, #0
.L02040824:
    mov r0, fp
.L02040828:
    bne .L02040804
.L0204082c:
    bl .L0203f3d4
.L02040830:
    subs r4, r0, #0
.L02040834:
    beq .L02040804
.L02040838:
    ldr r3, [r4, #8]
.L0204083c:
    cmp r3, #8
.L02040840:
    bgt .L020408a0
.L02040844:
    bl .L0203ec10
.L02040848:
    cmp r0, #0
.L0204084c:
    mov r1, r4
.L02040850:
    mov r0, fp
.L02040854:
    moveq r0, r4
.L02040858:
    beq .L020408a0
.L0204085c:
    bl .L0203f6b0
.L02040860:
    mov r0, r4
.L02040864:
    bl .L020403a8
.L02040868:
    mov r0, r4
.L0204086c:
    bl reconstructed_external_arm_02097810
.L02040870:
    mov r3, #1
.L02040874:
    str r3, [r6, r8]
.L02040878:
    b .L02040804
.L0204087c:
    cmp r8, #0
.L02040880:
    beq .L0204088c
.L02040884:
    mov r0, r8
.L02040888:
    bl reconstructed_external_arm_02097888
.L0204088c:
    ldr r0, [sp, #12]
.L02040890:
    add sp, sp, #44
.L02040894:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02040898:
    add r1, r1, #1
.L0204089c:
    b .L020407bc
.L020408a0:
    bl .L020403a8
.L020408a4:
    add r9, r9, #1
.L020408a8:
    mov r0, r4
.L020408ac:
    bl reconstructed_external_arm_02097810
.L020408b0:
    cmp sl, r9
.L020408b4:
    add r6, r6, #4
.L020408b8:
    add r5, r5, #8
.L020408bc:
    bne .L02040818
.L020408c0:
    ldr r2, [sp, #8]
.L020408c4:
    ldr r3, [sp, #12]
.L020408c8:
    cmp r2, r3
.L020408cc:
    ble .L02040910
.L020408d0:
    ldr r3, [pc, #96]
.L020408d4:
    add r1, sp, #40
.L020408d8:
    ldr r2, [r3]
.L020408dc:
    mov r0, fp
.L020408e0:
    str r2, [r1, #-4]!
.L020408e4:
    bl .L0203f79c
.L020408e8:
    ldr r3, [sp, #24]
.L020408ec:
    cmp r3, #2
.L020408f0:
    bgt .L02040904
.L020408f4:
    mov r0, fp
.L020408f8:
    bl .L020403a8
.L020408fc:
    mov r1, #0
.L02040900:
    b .L020407bc
.L02040904:
    ldr r0, [sp, #4]
.L02040908:
    mov r1, fp
.L0204090c:
    bl .L0203f6b0
.L02040910:
    ldr r3, [sp, #24]
.L02040914:
    cmp r3, #2
.L02040918:
    ble .L020408f4
.L0204091c:
    ldr r2, [sp, #12]
.L02040920:
    ldr r3, [sp, #4]
.L02040924:
    add r2, r2, #1
.L02040928:
    add r3, r3, #20
.L0204092c:
    str r2, [sp, #12]
.L02040930:
    str r3, [sp, #4]
.L02040934:
    b .L020408f4
.L02040938:
    .long 0x020cae64  /* literal data */
.L0204093c:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L02040940:
    mov r9, r3
.L02040944:
    mov r3, r0, lsr #31
.L02040948:
    cmp r0, r9
.L0204094c:
    movlt r5, r3
.L02040950:
    orrge r5, r3, #1
.L02040954:
    cmp r5, #0
.L02040958:
    sub sp, sp, #76
.L0204095c:
    mov r8, r0
.L02040960:
    mov r7, r1
.L02040964:
    mov fp, r2
.L02040968:
    bne .L02040abc
.L0204096c:
    cmp r9, #2
.L02040970:
    ble .L02040abc
.L02040974:
    add r1, r0, #1
.L02040978:
    cmp r0, #0
.L0204097c:
    str r1, [sp, #20]
.L02040980:
    sub sl, r0, #1
.L02040984:
    bne .L02040acc
.L02040988:
    mov r3, r9, lsl #2
.L0204098c:
    add r2, r2, r3
.L02040990:
    add r3, r7, r3
.L02040994:
    ldr ip, [r3, #-4]
.L02040998:
    ldmia r7, {r1, r3}
.L0204099c:
    ldr lr, [r2, #-4]
.L020409a0:
    ldmia fp, {r0, r2}
.L020409a4:
    rsb r3, r1, r3
.L020409a8:
    rsb r6, r0, r2
.L020409ac:
    str r3, [sp, #28]
.L020409b0:
    rsb r1, ip, r1
.L020409b4:
    rsb r2, lr, r0
.L020409b8:
    sub sl, r9, #1
.L020409bc:
    smull r4, r5, r1, r6
.L020409c0:
    ldr ip, [sp, #28]
.L020409c4:
    mov r0, r4, lsr #16
.L020409c8:
    orr r0, r0, r5, lsl #16
.L020409cc:
    smull r4, r5, ip, r2
.L020409d0:
    mov r2, r4, lsr #16
.L020409d4:
    orr r2, r2, r5, lsl #16
.L020409d8:
    rsb r0, r2, r0
.L020409dc:
    cmp r0, #0
.L020409e0:
    bgt .L02040abc
.L020409e4:
    mov r2, sl, lsl #2
.L020409e8:
    ldr r4, [fp, r2]
.L020409ec:
    ldr r1, [sp, #20]
.L020409f0:
    ldr r5, [r7, r2]
.L020409f4:
    ldr ip, [r7, r8, lsl #2]
.L020409f8:
    ldr lr, [fp, r8, lsl #2]
.L020409fc:
    mov r3, r1, lsl #2
.L02040a00:
    str r4, [sp, #24]
.L02040a04:
    ldr r6, [fp, r3]
.L02040a08:
    ldr r4, [r7, r3]
.L02040a0c:
    str ip, [sp, #40]
.L02040a10:
    str r5, [sp, #56]
.L02040a14:
    add ip, sp, #52
.L02040a18:
    ldr r5, [sp, #24]
.L02040a1c:
    str lr, [sp, #44]
.L02040a20:
    str ip, [sp]
.L02040a24:
    add lr, sp, #56
.L02040a28:
    add ip, sp, #60
.L02040a2c:
    add r0, sp, #32
.L02040a30:
    add r1, sp, #40
.L02040a34:
    add r2, sp, #44
.L02040a38:
    add r3, sp, #48
.L02040a3c:
    str r4, [sp, #48]
.L02040a40:
    str r6, [sp, #52]
.L02040a44:
    str r5, [sp, #60]
.L02040a48:
    str lr, [sp, #4]
.L02040a4c:
    str ip, [sp, #8]
.L02040a50:
    bl reconstructed_external_arm_020460d8
.L02040a54:
    mov r4, #0
.L02040a58:
    cmp sl, r4
.L02040a5c:
    cmpne r8, r4
.L02040a60:
    movne r5, #0
.L02040a64:
    moveq r5, #1
.L02040a68:
    beq .L02040aa0
.L02040a6c:
    ldr ip, [sp, #20]
.L02040a70:
    add r0, sp, #32
.L02040a74:
    cmp ip, r4
.L02040a78:
    add r1, sp, #64
.L02040a7c:
    add r2, sp, #68
.L02040a80:
    beq .L02040aa0
.L02040a84:
    ldr r3, [r7, r4, lsl #2]
.L02040a88:
    ldr ip, [fp, r4, lsl #2]
.L02040a8c:
    str r3, [sp, #64]
.L02040a90:
    str ip, [sp, #68]
.L02040a94:
    bl reconstructed_external_arm_02046328
.L02040a98:
    cmp r0, #0
.L02040a9c:
    bne .L02040b54
.L02040aa0:
    add r4, r4, #1
.L02040aa4:
    cmp r9, r4
.L02040aa8:
    bne .L02040a58
.L02040aac:
    mov r4, #1
.L02040ab0:
    add r0, sp, #32
.L02040ab4:
    bl reconstructed_external_arm_02045f98
.L02040ab8:
    b .L02040ac0
.L02040abc:
    mov r4, #0
.L02040ac0:
    mov r0, r4
.L02040ac4:
    add sp, sp, #76
.L02040ac8:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02040acc:
    sub r3, r9, #1
.L02040ad0:
    cmp r0, r3
.L02040ad4:
    beq .L02040b14
.L02040ad8:
    mov r3, r0, lsl #2
.L02040adc:
    add r1, r7, r3
.L02040ae0:
    add r0, r2, r3
.L02040ae4:
    ldr r5, [r2, r3]
.L02040ae8:
    ldr lr, [r1, #4]
.L02040aec:
    ldr r2, [r7, r3]
.L02040af0:
    ldr r4, [r0, #4]
.L02040af4:
    ldr ip, [r1, #-4]
.L02040af8:
    ldr r3, [r0, #-4]
.L02040afc:
    rsb lr, r2, lr
.L02040b00:
    rsb r1, ip, r2
.L02040b04:
    rsb r6, r5, r4
.L02040b08:
    rsb r2, r3, r5
.L02040b0c:
    str lr, [sp, #28]
.L02040b10:
    b .L020409bc
.L02040b14:
    mov r3, r0, lsl #2
.L02040b18:
    add r2, r7, r3
.L02040b1c:
    add r1, fp, r3
.L02040b20:
    ldr r0, [r7, r3]
.L02040b24:
    ldr lr, [r2, #-4]
.L02040b28:
    ldr r2, [r7]
.L02040b2c:
    ldr ip, [fp, r3]
.L02040b30:
    ldr r4, [r1, #-4]
.L02040b34:
    ldr r3, [fp]
.L02040b38:
    rsb r2, r0, r2
.L02040b3c:
    str r2, [sp, #28]
.L02040b40:
    rsb r6, ip, r3
.L02040b44:
    rsb r1, lr, r0
.L02040b48:
    rsb r2, r4, ip
.L02040b4c:
    str r5, [sp, #20]
.L02040b50:
    b .L020409bc
.L02040b54:
    mov r4, r5
.L02040b58:
    b .L02040ab0
.L02040b5c:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
.L02040b60:
    mov r5, r0
.L02040b64:
    mov sl, #0
.L02040b68:
    mov r6, r3
.L02040b6c:
    str sl, [r0, #12]
.L02040b70:
    sub sp, sp, #4
.L02040b74:
    str r3, [r5, #8]
.L02040b78:
    mov r0, r3, lsl #2
.L02040b7c:
    mov r8, r1
.L02040b80:
    mov r7, r2
.L02040b84:
    bl reconstructed_external_arm_0209787c
.L02040b88:
    cmp r6, sl
.L02040b8c:
    beq .L02040ba8
.L02040b90:
    mov r3, sl
.L02040b94:
    mov r2, sl
.L02040b98:
    str r2, [r0, r3, lsl #2]
.L02040b9c:
    add r3, r3, #1
.L02040ba0:
    cmp r6, r3
.L02040ba4:
    bne .L02040b98
.L02040ba8:
    ldr r4, [r5, #8]
.L02040bac:
    str r0, [r5]
.L02040bb0:
    mov r0, r4, lsl #2
.L02040bb4:
    bl reconstructed_external_arm_0209787c
.L02040bb8:
    cmp r4, #0
.L02040bbc:
    beq .L02040bd8
.L02040bc0:
    mov r3, #0
.L02040bc4:
    mov r2, r3
.L02040bc8:
    str r2, [r0, r3, lsl #2]
.L02040bcc:
    add r3, r3, #1
.L02040bd0:
    cmp r4, r3
.L02040bd4:
    bne .L02040bc8
.L02040bd8:
    ldr r4, [r5, #8]
.L02040bdc:
    str r0, [r5, #4]
.L02040be0:
    cmp r4, #0
.L02040be4:
    ble .L02040c14
.L02040be8:
    mov ip, #0
.L02040bec:
    ldr lr, [r5]
.L02040bf0:
    mov r1, ip
.L02040bf4:
    ldr r3, [r1, r8]
.L02040bf8:
    add ip, ip, #1
.L02040bfc:
    str r3, [lr, r1]
.L02040c00:
    ldr r2, [r1, r7]
.L02040c04:
    cmp r4, ip
.L02040c08:
    str r2, [r0, r1]
.L02040c0c:
    add r1, r1, #4
.L02040c10:
    bgt .L02040bf4
.L02040c14:
    mov r3, #0
.L02040c18:
    mov r0, r5
.L02040c1c:
    strb r3, [r5, #16]
.L02040c20:
    add sp, sp, #4
.L02040c24:
    ldmia sp!, {r4, r5, r6, r7, r8, sl, pc}
.L02040c28:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
.L02040c2c:
    mov r5, #0
.L02040c30:
    mov r6, #3
.L02040c34:
    mov r7, r0
.L02040c38:
    str r6, [r0, #8]
.L02040c3c:
    str r5, [r0, #12]
.L02040c40:
    mov r0, #12
.L02040c44:
    mov r8, r1
.L02040c48:
    bl reconstructed_external_arm_0209787c
.L02040c4c:
    ldr r4, [r7, #8]
.L02040c50:
    mov r3, r0
.L02040c54:
    str r5, [r3], #4
.L02040c58:
    str r0, [r7]
.L02040c5c:
    str r5, [r0, #4]
.L02040c60:
    str r5, [r3, #4]
.L02040c64:
    mov r0, r4, lsl #2
.L02040c68:
    bl reconstructed_external_arm_0209787c
.L02040c6c:
    cmp r4, r5
.L02040c70:
    beq .L02040c8c
.L02040c74:
    mov r3, r5
.L02040c78:
    mov r2, r5
.L02040c7c:
    str r2, [r0, r3, lsl #2]
.L02040c80:
    add r3, r3, #1
.L02040c84:
    cmp r4, r3
.L02040c88:
    bne .L02040c7c
.L02040c8c:
    ldr r6, [r7, #8]
.L02040c90:
    str r0, [r7, #4]
.L02040c94:
    cmp r6, #0
.L02040c98:
    ble .L02040ccc
.L02040c9c:
    mov lr, #0
.L02040ca0:
    ldmia r8, {r1, r5}
.L02040ca4:
    ldr r4, [r7]
.L02040ca8:
    mov ip, lr
.L02040cac:
    ldr r3, [ip, r1]
.L02040cb0:
    add lr, lr, #1
.L02040cb4:
    str r3, [ip, r4]
.L02040cb8:
    ldr r2, [ip, r5]
.L02040cbc:
    cmp r6, lr
.L02040cc0:
    str r2, [ip, r0]
.L02040cc4:
    add ip, ip, #4
.L02040cc8:
    bgt .L02040cac
.L02040ccc:
    mov r0, r7
.L02040cd0:
    ldmia sp!, {r4, r5, r6, r7, r8, pc}
.L02040cd4:
    mov r3, #0
.L02040cd8:
    strb r3, [r0, #16]
.L02040cdc:
    str r3, [r0, #12]
.L02040ce0:
    str r3, [r0]
.L02040ce4:
    str r3, [r0, #4]
.L02040ce8:
    str r3, [r0, #8]
.L02040cec:
    bx lr
.L02040cf0:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
.L02040cf4:
    mov r6, r0
.L02040cf8:
    mov r8, #0
.L02040cfc:
    mov r5, r2
.L02040d00:
    str r8, [r0, #12]
.L02040d04:
    str r2, [r6, #8]
.L02040d08:
    mov r0, r2, lsl #2
.L02040d0c:
    mov r7, r1
.L02040d10:
    bl reconstructed_external_arm_0209787c
.L02040d14:
    cmp r5, r8
.L02040d18:
    beq .L02040d34
.L02040d1c:
    mov r3, r8
.L02040d20:
    mov r2, r8
.L02040d24:
    str r2, [r0, r3, lsl #2]
.L02040d28:
    add r3, r3, #1
.L02040d2c:
    cmp r5, r3
.L02040d30:
    bne .L02040d24
.L02040d34:
    ldr r4, [r6, #8]
.L02040d38:
    str r0, [r6]
.L02040d3c:
    mov r0, r4, lsl #2
.L02040d40:
    bl reconstructed_external_arm_0209787c
.L02040d44:
    cmp r4, #0
.L02040d48:
    beq .L02040d64
.L02040d4c:
    mov r3, #0
.L02040d50:
    mov r2, r3
.L02040d54:
    str r2, [r0, r3, lsl #2]
.L02040d58:
    add r3, r3, #1
.L02040d5c:
    cmp r3, r4
.L02040d60:
    bne .L02040d54
.L02040d64:
    ldr r4, [r6, #8]
.L02040d68:
    str r0, [r6, #4]
.L02040d6c:
    cmp r4, #0
.L02040d70:
    ble .L02040da4
.L02040d74:
    mov ip, #0
.L02040d78:
    ldr r5, [r6]
.L02040d7c:
    mov lr, ip
.L02040d80:
    ldr r3, [lr, r7]
.L02040d84:
    add r2, lr, r7
.L02040d88:
    str r3, [r5, ip, lsl #2]
.L02040d8c:
    ldr r1, [r2, #4]
.L02040d90:
    add lr, lr, #8
.L02040d94:
    str r1, [r0, ip, lsl #2]
.L02040d98:
    add ip, ip, #1
.L02040d9c:
    cmp r4, ip
.L02040da0:
    bgt .L02040d80
.L02040da4:
    mov r3, #0
.L02040da8:
    mov r0, r6
.L02040dac:
    strb r3, [r6, #16]
.L02040db0:
    ldmia sp!, {r4, r5, r6, r7, r8, pc}
.L02040db4:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
.L02040db8:
    mov r6, r0
.L02040dbc:
    mov r8, #0
.L02040dc0:
    mov r5, r2
.L02040dc4:
    str r8, [r0, #12]
.L02040dc8:
    str r2, [r6, #8]
.L02040dcc:
    mov r0, r2, lsl #2
.L02040dd0:
    mov r7, r1
.L02040dd4:
    bl reconstructed_external_arm_0209787c
.L02040dd8:
    cmp r5, r8
.L02040ddc:
    beq .L02040df8
.L02040de0:
    mov r3, r8
.L02040de4:
    mov r2, r8
.L02040de8:
    str r2, [r0, r3, lsl #2]
.L02040dec:
    add r3, r3, #1
.L02040df0:
    cmp r5, r3
.L02040df4:
    bne .L02040de8
.L02040df8:
    ldr r4, [r6, #8]
.L02040dfc:
    str r0, [r6]
.L02040e00:
    mov r0, r4, lsl #2
.L02040e04:
    bl reconstructed_external_arm_0209787c
.L02040e08:
    cmp r4, #0
.L02040e0c:
    beq .L02040e28
.L02040e10:
    mov r3, #0
.L02040e14:
    mov r2, r3
.L02040e18:
    str r2, [r0, r3, lsl #2]
.L02040e1c:
    add r3, r3, #1
.L02040e20:
    cmp r4, r3
.L02040e24:
    bne .L02040e18
.L02040e28:
    ldr r4, [r6, #8]
.L02040e2c:
    str r0, [r6, #4]
.L02040e30:
    cmp r4, #0
.L02040e34:
    ble .L02040e68
.L02040e38:
    mov ip, #0
.L02040e3c:
    ldr r5, [r6]
.L02040e40:
    mov lr, ip
.L02040e44:
    ldr r3, [lr, r7]
.L02040e48:
    add r2, lr, r7
.L02040e4c:
    str r3, [r5, ip, lsl #2]
.L02040e50:
    ldr r1, [r2, #4]
.L02040e54:
    add lr, lr, #8
.L02040e58:
    str r1, [r0, ip, lsl #2]
.L02040e5c:
    add ip, ip, #1
.L02040e60:
    cmp r4, ip
.L02040e64:
    bgt .L02040e44
.L02040e68:
    mov r3, #0
.L02040e6c:
    mov r0, r6
.L02040e70:
    strb r3, [r6, #16]
.L02040e74:
    ldmia sp!, {r4, r5, r6, r7, r8, pc}
.L02040e78:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
.L02040e7c:
    mov r5, r2, lsl #2
.L02040e80:
    sub sp, sp, #4
.L02040e84:
    mov sl, r0
.L02040e88:
    mov r0, r5
.L02040e8c:
    mov r4, r2
.L02040e90:
    mov r8, r1
.L02040e94:
    bl reconstructed_external_arm_0209787c
.L02040e98:
    cmp r4, #0
.L02040e9c:
    mov r6, r0
.L02040ea0:
    beq .L02040f5c
.L02040ea4:
    mov r3, #0
.L02040ea8:
    mov r7, r3
.L02040eac:
    str r7, [r6, r3, lsl #2]
.L02040eb0:
    add r3, r3, #1
.L02040eb4:
    cmp r4, r3
.L02040eb8:
    bne .L02040eac
.L02040ebc:
    mov r0, r5
.L02040ec0:
    bl reconstructed_external_arm_0209787c
.L02040ec4:
    mov r3, r7
.L02040ec8:
    mov r5, r0
.L02040ecc:
    mov r2, r7
.L02040ed0:
    str r2, [r5, r3, lsl #2]
.L02040ed4:
    add r3, r3, #1
.L02040ed8:
    cmp r3, r4
.L02040edc:
    bne .L02040ed0
.L02040ee0:
    cmp r4, #0
.L02040ee4:
    ble .L02040f1c
.L02040ee8:
    mov lr, r2
.L02040eec:
    mov ip, r2
.L02040ef0:
    mov r0, r2
.L02040ef4:
    ldr r3, [ip, r8]
.L02040ef8:
    add r2, ip, r8
.L02040efc:
    str r3, [r0, r6]
.L02040f00:
    ldr r1, [r2, #4]
.L02040f04:
    add lr, lr, #1
.L02040f08:
    cmp r4, lr
.L02040f0c:
    str r1, [r0, r5]
.L02040f10:
    add ip, ip, #8
.L02040f14:
    add r0, r0, #4
.L02040f18:
    bne .L02040ef4
.L02040f1c:
    mov r3, r4
.L02040f20:
    mov r0, sl
.L02040f24:
    mov r1, r6
.L02040f28:
    mov r2, r5
.L02040f2c:
    bl .L0203fe18
.L02040f30:
    cmp r6, #0
.L02040f34:
    beq .L02040f40
.L02040f38:
    mov r0, r6
.L02040f3c:
    bl reconstructed_external_arm_02097888
.L02040f40:
    cmp r5, #0
.L02040f44:
    beq .L02040f50
.L02040f48:
    mov r0, r5
.L02040f4c:
    bl reconstructed_external_arm_02097888
.L02040f50:
    mov r0, sl
.L02040f54:
    add sp, sp, #4
.L02040f58:
    ldmia sp!, {r4, r5, r6, r7, r8, sl, pc}
.L02040f5c:
    mov r0, r5
.L02040f60:
    bl reconstructed_external_arm_0209787c
.L02040f64:
    mov r5, r0
.L02040f68:
    b .L02040f1c
.L02040f6c:
    mov r3, #0
.L02040f70:
    str r3, [r0, #136]
.L02040f74:
    str r3, [r0]
.L02040f78:
    str r3, [r0, #4]
.L02040f7c:
    bx lr
.L02040f80:
    str lr, [sp, #-4]!
.L02040f84:
    mov r2, #0
.L02040f88:
    str r2, [r0]
.L02040f8c:
    str r2, [r0, #4]
.L02040f90:
    ldmia r1, {ip, lr}
.L02040f94:
    str r2, [r0, #136]
.L02040f98:
    stmia r0, {ip, lr}
.L02040f9c:
    ldr pc, [sp], #4
.L02040fa0:
    cmp r0, #1
.L02040fa4:
    str lr, [sp, #-4]!
.L02040fa8:
    ldrne pc, [sp], #4
.L02040fac:
    ldr r3, [pc, #168]
.L02040fb0:
    ldr ip, [pc, #168]
.L02040fb4:
    cmp r1, r3
.L02040fb8:
    ldr lr, [pc, #164]
.L02040fbc:
    ldrne pc, [sp], #4
.L02040fc0:
    ldr r2, [pc, #160]
.L02040fc4:
    ldr r3, [pc, #160]
.L02040fc8:
    ldr r1, [pc, #160]
.L02040fcc:
    str r2, [r3]
.L02040fd0:
    ldr r3, [pc, #156]
.L02040fd4:
    ldr r2, [pc, #156]
.L02040fd8:
    str r1, [r3]
.L02040fdc:
    ldr r3, [pc, #152]
.L02040fe0:
    mov r1, #65536
.L02040fe4:
    str r2, [r3]
.L02040fe8:
    ldr r3, [pc, #144]
.L02040fec:
    ldr r2, [pc, #144]
.L02040ff0:
    str r1, [r3]
.L02040ff4:
    ldr r3, [pc, #140]
.L02040ff8:
    add r1, r1, #6488064
.L02040ffc:
    str r2, [r3]
.L02041000:
    ldr r3, [pc, #132]
.L02041004:
    mov r0, #16384000
.L02041008:
    str r1, [r3]
.L0204100c:
    ldr r3, [pc, #124]
.L02041010:
    ldr r2, [pc, #124]
.L02041014:
    str r0, [r3]
.L02041018:
    ldr r3, [pc, #120]
.L0204101c:
    mov r1, #32768
.L02041020:
    str r1, [r3]
.L02041024:
    str lr, [r2]
.L02041028:
    ldr r3, [pc, #108]
.L0204102c:
    ldr r2, [pc, #108]
.L02041030:
    mov r1, #728
.L02041034:
    str r2, [r3]
.L02041038:
    ldr r3, [pc, #100]
.L0204103c:
    ldr r2, [pc, #100]
.L02041040:
    str r1, [r3]
.L02041044:
    str ip, [r2]
.L02041048:
    ldr r3, [pc, #92]
.L0204104c:
    ldr r2, [pc, #92]
.L02041050:
    str ip, [r3]
.L02041054:
    str lr, [r2]
.L02041058:
    ldr pc, [sp], #4
.L0204105c:
    .long 0x0000ffff  /* literal data */
.L02041060:
    .long 0x00000a38  /* literal data */
.L02041064:
    .long 0x00003333  /* literal data */
.L02041068:
    .long 0x0003243f  /* literal data */
.L0204106c:
    .long 0x020cae5c  /* literal data */
.L02041070:
    .long 0x00000147  /* literal data */
.L02041074:
    .long 0x020cae60  /* literal data */
.L02041078:
    .long 0x000008ef  /* literal data */
.L0204107c:
    .long 0x020cae64  /* literal data */
.L02041080:
    .long 0x020cae6c  /* literal data */
.L02041084:
    .long 0x000023bc  /* literal data */
.L02041088:
    .long 0x020cae74  /* literal data */
.L0204108c:
    .long 0x020cae78  /* literal data */
.L02041090:
    .long 0x020cae7c  /* literal data */
.L02041094:
    .long 0x020cae80  /* literal data */
.L02041098:
    .long 0x020cae84  /* literal data */
.L0204109c:
    .long 0x020cae88  /* literal data */
.L020410a0:
    .long 0x0000028f  /* literal data */
.L020410a4:
    .long 0x020cae8c  /* literal data */
.L020410a8:
    .long 0x020cae90  /* literal data */
.L020410ac:
    .long 0x020cae68  /* literal data */
.L020410b0:
    .long 0x020cae70  /* literal data */
.L020410b4:
    ldr r1, [pc, #4]
.L020410b8:
    mov r0, #1
.L020410bc:
    b .L02040fa0
.L020410c0:
    .long 0x0000ffff  /* literal data */
.L020410c4:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020410c8:
    cmp r2, #2
.L020410cc:
    sub sp, sp, #412
.L020410d0:
    mov r8, r0
.L020410d4:
    mov r6, r2
.L020410d8:
    mov r7, r1
.L020410dc:
    str r3, [sp, #60]
.L020410e0:
    movle r8, #0
.L020410e4:
    bgt .L020410f4
.L020410e8:
    mov r0, r8
.L020410ec:
    add sp, sp, #412
.L020410f0:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L020410f4:
    add r0, sp, #164
.L020410f8:
    bl .L0203eab8
.L020410fc:
    add r0, sp, #144
.L02041100:
    bl .L0203eab8
.L02041104:
    mov r3, r6
.L02041108:
    mov r1, r8
.L0204110c:
    mov r2, r7
.L02041110:
    add r0, sp, #124
.L02041114:
    bl .L0203f208
.L02041118:
    add r0, sp, #124
.L0204111c:
    add r1, sp, #164
.L02041120:
    add r2, sp, #144
.L02041124:
    bl .L020403d8
.L02041128:
    cmp r0, #0
.L0204112c:
    beq .L02041288
.L02041130:
    ldr r6, [sp, #172]
.L02041134:
    mov r0, r6, lsl #3
.L02041138:
    add r0, r0, #8
.L0204113c:
    bl reconstructed_external_arm_0209787c
.L02041140:
    mov r3, #8
.L02041144:
    cmp r6, #0
.L02041148:
    stmia r0, {r3, r6}
.L0204114c:
    add r7, r0, r3
.L02041150:
    beq .L02041174
.L02041154:
    mov r4, r7
.L02041158:
    mov r5, #0
.L0204115c:
    mov r0, r4
.L02041160:
    add r5, r5, #1
.L02041164:
    bl reconstructed_external_arm_02046030
.L02041168:
    cmp r5, r6
.L0204116c:
    add r4, r4, #8
.L02041170:
    bne .L0204115c
.L02041174:
    ldr r6, [sp, #152]
.L02041178:
    mov r0, r6, lsl #3
.L0204117c:
    add r0, r0, #8
.L02041180:
    bl reconstructed_external_arm_0209787c
.L02041184:
    mov r3, #8
.L02041188:
    cmp r6, #0
.L0204118c:
    stmia r0, {r3, r6}
.L02041190:
    add r8, r0, r3
.L02041194:
    beq .L020411b8
.L02041198:
    mov r4, r8
.L0204119c:
    mov r5, #0
.L020411a0:
    mov r0, r4
.L020411a4:
    add r5, r5, #1
.L020411a8:
    bl reconstructed_external_arm_02046030
.L020411ac:
    cmp r5, r6
.L020411b0:
    add r4, r4, #8
.L020411b4:
    bne .L020411a0
.L020411b8:
    ldr r1, [sp, #168]
.L020411bc:
    ldr r2, [sp, #172]
.L020411c0:
    mov r3, r7
.L020411c4:
    ldr r0, [sp, #164]
.L020411c8:
    bl .L020410c4
.L020411cc:
    mov r3, r8
.L020411d0:
    mov r9, r0
.L020411d4:
    add r0, sp, #144
.L020411d8:
    ldmia r0, {r0, r1, r2}
.L020411dc:
    bl .L020410c4
.L020411e0:
    cmn r9, #1
.L020411e4:
    cmnne r0, #1
.L020411e8:
    mov sl, r0
.L020411ec:
    movne r3, #0
.L020411f0:
    moveq r3, #1
.L020411f4:
    bne .L02042830
.L020411f8:
    cmp r7, #0
.L020411fc:
    beq .L02041230
.L02041200:
    ldr r3, [r7, #-4]
.L02041204:
    mov r3, r3, lsl #3
.L02041208:
    add r4, r7, r3
.L0204120c:
    cmp r7, r4
.L02041210:
    beq .L02041228
.L02041214:
    sub r4, r4, #8
.L02041218:
    mov r0, r4
.L0204121c:
    bl reconstructed_external_arm_02045f98
.L02041220:
    cmp r7, r4
.L02041224:
    bne .L02041214
.L02041228:
    sub r0, r7, #8
.L0204122c:
    bl reconstructed_external_arm_02097888
.L02041230:
    cmp r8, #0
.L02041234:
    beq .L02042918
.L02041238:
    ldr r3, [r8, #-4]
.L0204123c:
    mov r3, r3, lsl #3
.L02041240:
    add r4, r8, r3
.L02041244:
    cmp r8, r4
.L02041248:
    beq .L02041260
.L0204124c:
    sub r4, r4, #8
.L02041250:
    mov r0, r4
.L02041254:
    bl reconstructed_external_arm_02045f98
.L02041258:
    cmp r8, r4
.L0204125c:
    bne .L0204124c
.L02041260:
    sub r0, r8, #8
.L02041264:
    bl reconstructed_external_arm_02097888
.L02041268:
    mvn r8, #0
.L0204126c:
    add r0, sp, #124
.L02041270:
    bl .L020403a8
.L02041274:
    add r0, sp, #144
.L02041278:
    bl .L020403a8
.L0204127c:
    add r0, sp, #164
.L02041280:
    bl .L020403a8
.L02041284:
    b .L020410e8
.L02041288:
    sub r1, r6, #2
.L0204128c:
    mov r0, r1, lsl #3
.L02041290:
    add r0, r0, #8
.L02041294:
    str r1, [sp, #20]
.L02041298:
    bl reconstructed_external_arm_0209787c
.L0204129c:
    ldr r2, [sp, #20]
.L020412a0:
    mov r3, #8
.L020412a4:
    str r3, [r0]
.L020412a8:
    cmp r2, #0
.L020412ac:
    add r3, r0, r3
.L020412b0:
    str r0, [sp, #64]
.L020412b4:
    str r2, [r0, #4]
.L020412b8:
    str r3, [sp, #68]
.L020412bc:
    beq .L020412e0
.L020412c0:
    mov r5, r3
.L020412c4:
    mov r4, r6
.L020412c8:
    mov r0, r5
.L020412cc:
    sub r4, r4, #1
.L020412d0:
    bl reconstructed_external_arm_02046030
.L020412d4:
    cmp r4, #2
.L020412d8:
    add r5, r5, #8
.L020412dc:
    bne .L020412c8
.L020412e0:
    mov r5, r6, lsl #2
.L020412e4:
    mov r0, r5
.L020412e8:
    bl reconstructed_external_arm_0209787c
.L020412ec:
    cmp r6, #0
.L020412f0:
    str r0, [sp, #72]
.L020412f4:
    beq .L02042b50
.L020412f8:
    mov r3, #0
.L020412fc:
    mov r4, r3
.L02041300:
    ldr ip, [sp, #72]
.L02041304:
    str r4, [ip, r3, lsl #2]
.L02041308:
    add r3, r3, #1
.L0204130c:
    cmp r6, r3
.L02041310:
    bne .L02041300
.L02041314:
    mov r0, r5
.L02041318:
    bl reconstructed_external_arm_0209787c
.L0204131c:
    mov r3, r4
.L02041320:
    str r0, [sp, #116]
.L02041324:
    mov r2, r4
.L02041328:
    ldr lr, [sp, #116]
.L0204132c:
    str r2, [lr, r3, lsl #2]
.L02041330:
    add r3, r3, #1
.L02041334:
    cmp r6, r3
.L02041338:
    bne .L02041328
.L0204133c:
    mov r0, #0
.L02041340:
    mov r1, r0
.L02041344:
    ldr r3, [r1, r8]
.L02041348:
    ldr r2, [sp, #72]
.L0204134c:
    add r0, r0, #1
.L02041350:
    str r3, [r1, r2]
.L02041354:
    ldr r2, [r1, r7]
.L02041358:
    ldr r3, [sp, #116]
.L0204135c:
    cmp r6, r0
.L02041360:
    str r2, [r1, r3]
.L02041364:
    add r1, r1, #4
.L02041368:
    bne .L02041344
.L0204136c:
    cmp r6, #3
.L02041370:
    movle r4, #0
.L02041374:
    movle r8, #1
.L02041378:
    ble .L02042930
.L0204137c:
    mov r4, #1
.L02041380:
    str r6, [sp, #112]
.L02041384:
    str r4, [sp, #104]
.L02041388:
    ldr r5, [pc, #3900]
.L0204138c:
    mvn r7, #0
.L02041390:
    mov ip, #0
.L02041394:
    str r5, [sp, #100]
.L02041398:
    str r7, [sp, #76]
.L0204139c:
    str ip, [sp, #108]
.L020413a0:
    b .L020413b8
.L020413a4:
    ldr r2, [sp, #112]
.L020413a8:
    ldr r3, [sp, #80]
.L020413ac:
    cmp r2, r3
.L020413b0:
    ble .L0204172c
.L020413b4:
    str r3, [sp, #108]
.L020413b8:
    ldr r0, [sp, #108]
.L020413bc:
    ldr r1, [sp, #72]
.L020413c0:
    ldr r2, [sp, #116]
.L020413c4:
    ldr r3, [sp, #112]
.L020413c8:
    bl .L0204093c
.L020413cc:
    cmp r0, #0
.L020413d0:
    ldreq lr, [sp, #108]
.L020413d4:
    addeq lr, lr, #1
.L020413d8:
    streq lr, [sp, #80]
.L020413dc:
    beq .L020413a4
.L020413e0:
    ldr r2, [sp, #108]
.L020413e4:
    ldr r1, [sp, #112]
.L020413e8:
    add r3, r2, #1
.L020413ec:
    sub r0, r2, #1
.L020413f0:
    str r3, [sp, #80]
.L020413f4:
    bl .L0203eec4
.L020413f8:
    ldr r1, [sp, #112]
.L020413fc:
    mov r6, r0
.L02041400:
    ldr r0, [sp, #80]
.L02041404:
    bl .L0203eec4
.L02041408:
    ldr r7, [sp, #72]
.L0204140c:
    ldr r4, [sp, #116]
.L02041410:
    ldr ip, [r7, r0, lsl #2]
.L02041414:
    ldr r5, [r4, r0, lsl #2]
.L02041418:
    ldr r0, [sp, #108]
.L0204141c:
    ldr r3, [sp, #116]
.L02041420:
    ldr lr, [r7, r0, lsl #2]
.L02041424:
    ldr r4, [r4, r0, lsl #2]
.L02041428:
    ldr r1, [r3, r6, lsl #2]
.L0204142c:
    rsb sl, lr, ip
.L02041430:
    ldr r3, [r7, r6, lsl #2]
.L02041434:
    rsb fp, r4, r5
.L02041438:
    eor r2, fp, fp, asr #31
.L0204143c:
    sub r2, r2, fp, asr #31
.L02041440:
    eor r0, sl, sl, asr #31
.L02041444:
    sub r0, r0, sl, asr #31
.L02041448:
    rsb ip, ip, r3
.L0204144c:
    rsb lr, r3, lr
.L02041450:
    rsb r4, r1, r4
.L02041454:
    add r0, r2, r0
.L02041458:
    rsb r5, r5, r1
.L0204145c:
    str ip, [sp, #92]
.L02041460:
    str lr, [sp, #84]
.L02041464:
    str r4, [sp, #88]
.L02041468:
    str r5, [sp, #96]
.L0204146c:
    bl reconstructed_external_arm_02083618
.L02041470:
    mov r1, #931135488
.L02041474:
    bl reconstructed_external_arm_020836f4
.L02041478:
    mov r1, #0
.L0204147c:
    mov r4, r0
.L02041480:
    bl reconstructed_external_arm_02083a84
.L02041484:
    cmp r0, #0
.L02041488:
    beq .L02041920
.L0204148c:
    mov r4, sl
.L02041490:
    mov r5, r4, asr #31
.L02041494:
    mov r0, fp
.L02041498:
    mov r1, r0, asr #31
.L0204149c:
    strd r4, [sp, #24]
.L020414a0:
    strd r0, [sp, #32]
.L020414a4:
    ldr r3, [sp, #88]
.L020414a8:
    ldr r0, [sp, #84]
.L020414ac:
    cmp r3, #0
.L020414b0:
    rsblt r3, r3, #0
.L020414b4:
    cmp r0, #0
.L020414b8:
    rsblt r0, r0, #0
.L020414bc:
    add r0, r3, r0
.L020414c0:
    bl reconstructed_external_arm_02083618
.L020414c4:
    mov r1, #931135488
.L020414c8:
    bl reconstructed_external_arm_020836f4
.L020414cc:
    mov r1, #0
.L020414d0:
    mov r4, r0
.L020414d4:
    bl reconstructed_external_arm_02083a84
.L020414d8:
    cmp r0, #0
.L020414dc:
    bne .L020418fc
.L020414e0:
    mov r0, r4
.L020414e4:
    bl reconstructed_external_arm_02082c68
.L020414e8:
    ldr r2, [pc, #3552]
.L020414ec:
    ldr r3, [pc, #3552]
.L020414f0:
    bl reconstructed_external_arm_02083298
.L020414f4:
    cmp r0, #0
.L020414f8:
    beq .L02041b68
.L020414fc:
    ldr ip, [sp, #88]
.L02041500:
    ldr r7, [sp, #84]
.L02041504:
    mov r6, ip, lsl #8
.L02041508:
    mov r5, r7, lsl #8
.L0204150c:
    eor r3, r6, r6, asr #31
.L02041510:
    sub r3, r3, r6, asr #31
.L02041514:
    eor r0, r5, r5, asr #31
.L02041518:
    sub r0, r0, r5, asr #31
.L0204151c:
    add r0, r3, r0
.L02041520:
    bl reconstructed_external_arm_02083618
.L02041524:
    mov r1, #931135488
.L02041528:
    bl reconstructed_external_arm_020836f4
.L0204152c:
    mov r1, #0
.L02041530:
    mov r4, r0
.L02041534:
    bl reconstructed_external_arm_02083a84
.L02041538:
    cmp r0, #0
.L0204153c:
    beq .L020420c0
.L02041540:
    ldr r3, [sp, #88]
.L02041544:
    mov r0, r7
.L02041548:
    mov r1, r0, asr #31
.L0204154c:
    mov r2, r3
.L02041550:
    mov r3, r2, asr #31
.L02041554:
    strd r0, [sp, #40]
.L02041558:
    strd r2, [sp, #48]
.L0204155c:
    ldr r3, [sp, #96]
.L02041560:
    ldr r0, [sp, #92]
.L02041564:
    cmp r3, #0
.L02041568:
    rsblt r3, r3, #0
.L0204156c:
    cmp r0, #0
.L02041570:
    rsblt r0, r0, #0
.L02041574:
    add r0, r3, r0
.L02041578:
    bl reconstructed_external_arm_02083618
.L0204157c:
    mov r1, #931135488
.L02041580:
    bl reconstructed_external_arm_020836f4
.L02041584:
    mov r1, #0
.L02041588:
    mov r4, r0
.L0204158c:
    bl reconstructed_external_arm_02083a84
.L02041590:
    cmp r0, #0
.L02041594:
    beq .L02041994
.L02041598:
    ldr r7, [sp, #92]
.L0204159c:
    ldr ip, [sp, #96]
.L020415a0:
    mov sl, r7
.L020415a4:
    mov fp, sl, asr #31
.L020415a8:
    mov r6, ip
.L020415ac:
    mov r7, r6, asr #31
.L020415b0:
    ldr r5, [sp, #24]
.L020415b4:
    ldr r3, [sp, #52]
.L020415b8:
    ldr ip, [sp, #32]
.L020415bc:
    mul r3, r5, r3
.L020415c0:
    ldr r2, [sp, #44]
.L020415c4:
    ldr lr, [sp, #48]
.L020415c8:
    mul r2, ip, r2
.L020415cc:
    ldr ip, [sp, #28]
.L020415d0:
    ldr r0, [sp, #40]
.L020415d4:
    mla ip, lr, ip, r3
.L020415d8:
    ldr r3, [sp, #48]
.L020415dc:
    ldr lr, [sp, #36]
.L020415e0:
    ldr r4, [sp, #32]
.L020415e4:
    mla lr, r0, lr, r2
.L020415e8:
    umull r0, r1, r5, r3
.L020415ec:
    ldr r5, [sp, #40]
.L020415f0:
    add r1, ip, r1
.L020415f4:
    umull r2, r3, r4, r5
.L020415f8:
    mov r0, r0, lsr #16
.L020415fc:
    add r3, lr, r3
.L02041600:
    mov r2, r2, lsr #16
.L02041604:
    orr r2, r2, r3, lsl #16
.L02041608:
    orr r0, r0, r1, lsl #16
.L0204160c:
    rsb r0, r2, r0
.L02041610:
    cmp r0, #0
.L02041614:
    rsble r3, r0, #0
.L02041618:
    strle r3, [sp, #304]
.L0204161c:
    ldr ip, [sp, #48]
.L02041620:
    ldr r3, [sp, #40]
.L02041624:
    ldr lr, [sp, #40]
.L02041628:
    mul r3, r7, r3
.L0204162c:
    mul ip, fp, ip
.L02041630:
    strgt r0, [sp, #304]
.L02041634:
    ldr r5, [sp, #48]
.L02041638:
    umull r0, r1, lr, r6
.L0204163c:
    ldr r4, [sp, #44]
.L02041640:
    ldr lr, [sp, #52]
.L02041644:
    mla r4, r6, r4, r3
.L02041648:
    mla lr, sl, lr, ip
.L0204164c:
    umull r2, r3, r5, sl
.L02041650:
    add r1, r4, r1
.L02041654:
    add r3, lr, r3
.L02041658:
    mov r0, r0, lsr #16
.L0204165c:
    mov r2, r2, lsr #16
.L02041660:
    orr r2, r2, r3, lsl #16
.L02041664:
    orr r0, r0, r1, lsl #16
.L02041668:
    ldr r4, [sp, #32]
.L0204166c:
    ldr r5, [sp, #24]
.L02041670:
    rsb r0, r2, r0
.L02041674:
    cmp r0, #0
.L02041678:
    ldr ip, [sp, #32]
.L0204167c:
    ldr lr, [sp, #24]
.L02041680:
    mul r4, fp, r4
.L02041684:
    mul r5, r7, r5
.L02041688:
    rsble r3, r0, #0
.L0204168c:
    strgt r0, [sp, #300]
.L02041690:
    strle r3, [sp, #300]
.L02041694:
    umull r0, r1, ip, sl
.L02041698:
    umull r2, r3, lr, r6
.L0204169c:
    ldr ip, [sp, #36]
.L020416a0:
    ldr lr, [sp, #28]
.L020416a4:
    mla ip, sl, ip, r4
.L020416a8:
    mla lr, r6, lr, r5
.L020416ac:
    add r1, ip, r1
.L020416b0:
    add r3, lr, r3
.L020416b4:
    mov r0, r0, lsr #16
.L020416b8:
    mov r2, r2, lsr #16
.L020416bc:
    orr r2, r2, r3, lsl #16
.L020416c0:
    orr r0, r0, r1, lsl #16
.L020416c4:
    rsb r0, r2, r0
.L020416c8:
    cmp r0, #0
.L020416cc:
    rsble r3, r0, #0
.L020416d0:
    strgt r0, [sp, #296]
.L020416d4:
    strle r3, [sp, #296]
.L020416d8:
    ldr r2, [sp, #296]
.L020416dc:
    ldr r3, [sp, #300]
.L020416e0:
    ldr r0, [sp, #100]
.L020416e4:
    cmp r2, r3
.L020416e8:
    addgt r2, sp, #300
.L020416ec:
    addle r2, sp, #296
.L020416f0:
    ldr r3, [sp, #304]
.L020416f4:
    ldr r2, [r2]
.L020416f8:
    cmp r2, r3
.L020416fc:
    str r2, [sp, #308]
.L02041700:
    addgt r3, sp, #304
.L02041704:
    addle r3, sp, #308
.L02041708:
    ldr r3, [r3]
.L0204170c:
    cmp r0, r3
.L02041710:
    ldrlt r1, [sp, #108]
.L02041714:
    strlt r1, [sp, #76]
.L02041718:
    strlt r3, [sp, #100]
.L0204171c:
    ldr r2, [sp, #112]
.L02041720:
    ldr r3, [sp, #80]
.L02041724:
    cmp r2, r3
.L02041728:
    bgt .L020413b4
.L0204172c:
    ldr r4, [sp, #76]
.L02041730:
    cmn r4, #1
.L02041734:
    beq .L02042918
.L02041738:
    ldr r5, [sp, #112]
.L0204173c:
    sub r8, r5, #1
.L02041740:
    mov sl, r8, lsl #2
.L02041744:
    mov r0, sl
.L02041748:
    bl reconstructed_external_arm_0209787c
.L0204174c:
    cmp r8, #0
.L02041750:
    mov r7, r0
.L02041754:
    beq .L020425cc
.L02041758:
    ldr r4, [sp, #112]
.L0204175c:
    mov r2, #0
.L02041760:
    mov r3, r4
.L02041764:
    mov r5, r2
.L02041768:
    sub r3, r3, #1
.L0204176c:
    cmp r3, #1
.L02041770:
    str r5, [r2, r7]
.L02041774:
    add r2, r2, #4
.L02041778:
    bne .L02041768
.L0204177c:
    mov r0, sl
.L02041780:
    bl reconstructed_external_arm_0209787c
.L02041784:
    mov r3, r5
.L02041788:
    mov r6, r0
.L0204178c:
    mov r2, r5
.L02041790:
    sub r4, r4, #1
.L02041794:
    cmp r4, #1
.L02041798:
    str r2, [r3, r6]
.L0204179c:
    add r3, r3, #4
.L020417a0:
    bne .L02041790
.L020417a4:
    cmp r8, #0
.L020417a8:
    ble .L020417f4
.L020417ac:
    mov r0, r2
.L020417b0:
    mov r1, r4
.L020417b4:
    mov ip, r2
.L020417b8:
    add lr, r8, #1
.L020417bc:
    ldr r2, [sp, #76]
.L020417c0:
    ldr r4, [sp, #72]
.L020417c4:
    cmp r2, r0
.L020417c8:
    addeq r0, r2, #1
.L020417cc:
    ldr r3, [r4, r0, lsl #2]
.L020417d0:
    ldr r5, [sp, #116]
.L020417d4:
    str r3, [ip, r7]
.L020417d8:
    ldr r2, [r5, r0, lsl #2]
.L020417dc:
    add r1, r1, #1
.L020417e0:
    cmp r1, lr
.L020417e4:
    str r2, [ip, r6]
.L020417e8:
    add r0, r0, #1
.L020417ec:
    add ip, ip, #4
.L020417f0:
    bne .L020417bc
.L020417f4:
    ldr ip, [sp, #76]
.L020417f8:
    ldr lr, [sp, #76]
.L020417fc:
    cmp ip, #0
.L02041800:
    subne r3, ip, #1
.L02041804:
    movne sl, r3, lsl #2
.L02041808:
    cmp lr, r8
.L0204180c:
    ldrne r0, [sp, #76]
.L02041810:
    ldr r1, [sp, #76]
.L02041814:
    ldr r2, [sp, #72]
.L02041818:
    addne r3, r0, #1
.L0204181c:
    movne r0, r3, lsl #2
.L02041820:
    ldr r3, [r2, r1, lsl #2]
.L02041824:
    ldr r5, [sp, #72]
.L02041828:
    str r3, [sp, #312]
.L0204182c:
    ldr r3, [sp, #116]
.L02041830:
    moveq r0, #0
.L02041834:
    ldr r2, [r3, r1, lsl #2]
.L02041838:
    ldr lr, [sp, #116]
.L0204183c:
    str r2, [sp, #316]
.L02041840:
    ldr r3, [r5, r0]
.L02041844:
    add r4, sp, #184
.L02041848:
    str r3, [sp, #320]
.L0204184c:
    ldr ip, [lr, r0]
.L02041850:
    add r1, sp, #312
.L02041854:
    str ip, [sp, #324]
.L02041858:
    ldr r0, [sl, r5]
.L0204185c:
    add ip, sp, #324
.L02041860:
    str r0, [sp, #328]
.L02041864:
    ldr lr, [sl, lr]
.L02041868:
    add r2, sp, #316
.L0204186c:
    add r3, sp, #320
.L02041870:
    str lr, [sp, #332]
.L02041874:
    str ip, [sp]
.L02041878:
    add lr, sp, #328
.L0204187c:
    add ip, sp, #332
.L02041880:
    mov r0, r4
.L02041884:
    str lr, [sp, #4]
.L02041888:
    str ip, [sp, #8]
.L0204188c:
    bl reconstructed_external_arm_020460d8
.L02041890:
    ldr r1, [sp, #104]
.L02041894:
    ldr r2, [sp, #64]
.L02041898:
    mov r0, r1, lsl #3
.L0204189c:
    add r0, r0, r2
.L020418a0:
    mov r1, r4
.L020418a4:
    bl reconstructed_external_arm_02045ff8
.L020418a8:
    cmp r5, #0
.L020418ac:
    ldr r5, [sp, #104]
.L020418b0:
    beq .L020418bc
.L020418b4:
    ldr r0, [sp, #72]
.L020418b8:
    bl reconstructed_external_arm_02097888
.L020418bc:
    ldr r3, [sp, #116]
.L020418c0:
    cmp r3, #0
.L020418c4:
    beq .L020418d0
.L020418c8:
    mov r0, r3
.L020418cc:
    bl reconstructed_external_arm_02097888
.L020418d0:
    mov r0, r4
.L020418d4:
    bl reconstructed_external_arm_02045f98
.L020418d8:
    ldr r4, [sp, #104]
.L020418dc:
    cmp r8, #3
.L020418e0:
    add r4, r4, #1
.L020418e4:
    str r4, [sp, #104]
.L020418e8:
    beq .L02042920
.L020418ec:
    str r8, [sp, #112]
.L020418f0:
    str r7, [sp, #72]
.L020418f4:
    str r6, [sp, #116]
.L020418f8:
    b .L02041388
.L020418fc:
    ldr r3, [sp, #84]
.L02041900:
    ldr r5, [sp, #88]
.L02041904:
    mov r2, r3
.L02041908:
    mov r3, r2, asr #31
.L0204190c:
    mov r4, r5
.L02041910:
    mov r5, r4, asr #31
.L02041914:
    strd r2, [sp, #40]
.L02041918:
    strd r4, [sp, #48]
.L0204191c:
    b .L0204155c
.L02041920:
    mov r0, r4
.L02041924:
    bl reconstructed_external_arm_02082c68
.L02041928:
    ldr r2, [pc, #2464]
.L0204192c:
    ldr r3, [pc, #2464]
.L02041930:
    bl reconstructed_external_arm_02083298
.L02041934:
    cmp r0, #0
.L02041938:
    beq .L02041ce8
.L0204193c:
    mov r5, sl, lsl #8
.L02041940:
    mov r6, fp, lsl #8
.L02041944:
    eor r3, r6, r6, asr #31
.L02041948:
    sub r3, r3, r6, asr #31
.L0204194c:
    eor r0, r5, r5, asr #31
.L02041950:
    sub r0, r0, r5, asr #31
.L02041954:
    add r0, r3, r0
.L02041958:
    bl reconstructed_external_arm_02083618
.L0204195c:
    mov r1, #931135488
.L02041960:
    bl reconstructed_external_arm_020836f4
.L02041964:
    mov r1, #0
.L02041968:
    mov r4, r0
.L0204196c:
    bl reconstructed_external_arm_02083a84
.L02041970:
    cmp r0, #0
.L02041974:
    beq .L02042160
.L02041978:
    mov r2, sl
.L0204197c:
    mov r3, r2, asr #31
.L02041980:
    mov r4, fp
.L02041984:
    mov r5, r4, asr #31
.L02041988:
    strd r2, [sp, #24]
.L0204198c:
    strd r4, [sp, #32]
.L02041990:
    b .L020414a4
.L02041994:
    mov r0, r4
.L02041998:
    bl reconstructed_external_arm_02082c68
.L0204199c:
    ldr r2, [pc, #2348]
.L020419a0:
    ldr r3, [pc, #2348]
.L020419a4:
    bl reconstructed_external_arm_02083298
.L020419a8:
    cmp r0, #0
.L020419ac:
    beq .L02041a10
.L020419b0:
    ldr lr, [sp, #92]
.L020419b4:
    ldr r0, [sp, #96]
.L020419b8:
    mov r5, lr, lsl #8
.L020419bc:
    mov r6, r0, lsl #8
.L020419c0:
    eor r3, r6, r6, asr #31
.L020419c4:
    sub r3, r3, r6, asr #31
.L020419c8:
    eor r0, r5, r5, asr #31
.L020419cc:
    sub r0, r0, r5, asr #31
.L020419d0:
    add r0, r3, r0
.L020419d4:
    bl reconstructed_external_arm_02083618
.L020419d8:
    mov r1, #931135488
.L020419dc:
    bl reconstructed_external_arm_020836f4
.L020419e0:
    mov r1, #0
.L020419e4:
    mov r4, r0
.L020419e8:
    bl reconstructed_external_arm_02083a84
.L020419ec:
    cmp r0, #0
.L020419f0:
    beq .L02041eb8
.L020419f4:
    ldr r1, [sp, #92]
.L020419f8:
    ldr r2, [sp, #96]
.L020419fc:
    mov sl, r1
.L02041a00:
    mov fp, sl, asr #31
.L02041a04:
    mov r6, r2
.L02041a08:
    mov r7, r6, asr #31
.L02041a0c:
    b .L020415b0
.L02041a10:
    mov r0, r4
.L02041a14:
    ldr r1, [pc, #2236]
.L02041a18:
    bl reconstructed_external_arm_02083a9c
.L02041a1c:
    cmp r0, #0
.L02041a20:
    beq .L02042060
.L02041a24:
    ldr lr, [sp, #92]
.L02041a28:
    ldr r0, [sp, #96]
.L02041a2c:
    mov sl, lr
.L02041a30:
    mov fp, sl, asr #31
.L02041a34:
    mov r6, r0
.L02041a38:
    mov r7, r6, asr #31
.L02041a3c:
    mul ip, sl, fp
.L02041a40:
    mul lr, r6, r7
.L02041a44:
    umull r2, r3, sl, sl
.L02041a48:
    umull r0, r1, r6, r6
.L02041a4c:
    ldr r4, [pc, #2184]
.L02041a50:
    mov ip, ip, lsl #1
.L02041a54:
    mov lr, lr, lsl #1
.L02041a58:
    mov r5, #1
.L02041a5c:
    add r3, ip, r3
.L02041a60:
    add r1, lr, r1
.L02041a64:
    strh r5, [r4, #176]
.L02041a68:
    mov r8, r2, lsr #16
.L02041a6c:
    mov r4, r0, lsr #16
.L02041a70:
    orr r8, r8, r3, lsl #16
.L02041a74:
    mov r9, r3, asr #16
.L02041a78:
    orr r4, r4, r1, lsl #16
.L02041a7c:
    ldr ip, [pc, #2136]
.L02041a80:
    ldrh r3, [ip, #176]
.L02041a84:
    tst r3, #32768
.L02041a88:
    bne .L02041a7c
.L02041a8c:
    add r2, r8, r4
.L02041a90:
    mov r3, r2, asr #31
.L02041a94:
    mov r3, r3, lsl #16
.L02041a98:
    orr r3, r3, r2, lsr #16
.L02041a9c:
    mov r2, r2, lsl #16
.L02041aa0:
    strd r2, [ip, #184]
.L02041aa4:
    mov r2, ip
.L02041aa8:
    ldrh r3, [r2, #176]
.L02041aac:
    tst r3, #32768
.L02041ab0:
    bne .L02041aa8
.L02041ab4:
    mov lr, #67108864
.L02041ab8:
    ldr r5, [lr, #692]
.L02041abc:
    cmp r5, #3
.L02041ac0:
    ble .L020415b0
.L02041ac4:
    ldr r1, [pc, #2064]
.L02041ac8:
    mov lr, #1
.L02041acc:
    strh lr, [r1, #128]
.L02041ad0:
    ldrh r3, [r1, #128]
.L02041ad4:
    tst r3, #32768
.L02041ad8:
    bne .L02041ad0
.L02041adc:
    mov r3, fp, lsl #16
.L02041ae0:
    orr r3, r3, sl, lsr #16
.L02041ae4:
    mov r2, sl, lsl #16
.L02041ae8:
    mov r0, #67108864
.L02041aec:
    ldr lr, [pc, #2024]
.L02041af0:
    strd r2, [r1, #144]
.L02041af4:
    str r5, [r0, #664]
.L02041af8:
    ldrh r3, [lr, #128]
.L02041afc:
    tst r3, #32768
.L02041b00:
    bne .L02041af8
.L02041b04:
    mov r1, #67108864
.L02041b08:
    mov r2, #1
.L02041b0c:
    ldr r4, [pc, #1992]
.L02041b10:
    ldr r0, [r1, #672]
.L02041b14:
    strh r2, [lr, #128]
.L02041b18:
    ldrh r3, [r4, #128]
.L02041b1c:
    tst r3, #32768
.L02041b20:
    bne .L02041b18
.L02041b24:
    mov r3, r7, lsl #16
.L02041b28:
    orr r3, r3, r6, lsr #16
.L02041b2c:
    mov r2, r6, lsl #16
.L02041b30:
    strd r2, [r4, #144]
.L02041b34:
    ldr lr, [pc, #1952]
.L02041b38:
    mov r3, #67108864
.L02041b3c:
    str r5, [r3, #664]
.L02041b40:
    ldrh r3, [lr, #128]
.L02041b44:
    tst r3, #32768
.L02041b48:
    bne .L02041b40
.L02041b4c:
    mov r4, #67108864
.L02041b50:
    ldr r4, [r4, #672]
.L02041b54:
    mov sl, r0
.L02041b58:
    mov fp, sl, asr #31
.L02041b5c:
    mov r6, r4
.L02041b60:
    mov r7, r6, asr #31
.L02041b64:
    b .L020415b0
.L02041b68:
    mov r0, r4
.L02041b6c:
    ldr r1, [pc, #1892]
.L02041b70:
    bl reconstructed_external_arm_02083a9c
.L02041b74:
    cmp r0, #0
.L02041b78:
    beq .L02041f4c
.L02041b7c:
    ldr r5, [sp, #84]
.L02041b80:
    ldr r1, [sp, #88]
.L02041b84:
    mov r4, r5
.L02041b88:
    mov r5, r4, asr #31
.L02041b8c:
    strd r4, [sp, #40]
.L02041b90:
    mov r0, r1
.L02041b94:
    mov r1, r0, asr #31
.L02041b98:
    strd r0, [sp, #48]
.L02041b9c:
    ldr ip, [sp, #44]
.L02041ba0:
    ldr lr, [sp, #52]
.L02041ba4:
    mul ip, r4, ip
.L02041ba8:
    ldr r5, [sp, #48]
.L02041bac:
    ldr r4, [sp, #40]
.L02041bb0:
    mul lr, r0, lr
.L02041bb4:
    umull r2, r3, r4, r4
.L02041bb8:
    umull r0, r1, r5, r5
.L02041bbc:
    mov ip, ip, lsl #1
.L02041bc0:
    mov lr, lr, lsl #1
.L02041bc4:
    ldr r8, [pc, #1808]
.L02041bc8:
    add r3, ip, r3
.L02041bcc:
    add r1, lr, r1
.L02041bd0:
    mov r7, #1
.L02041bd4:
    mov r6, r2, lsr #16
.L02041bd8:
    mov r4, r0, lsr #16
.L02041bdc:
    strh r7, [r8, #176]
.L02041be0:
    orr r6, r6, r3, lsl #16
.L02041be4:
    orr r4, r4, r1, lsl #16
.L02041be8:
    ldrh r3, [r8, #176]
.L02041bec:
    tst r3, #32768
.L02041bf0:
    bne .L02041be8
.L02041bf4:
    add r2, r6, r4
.L02041bf8:
    mov r3, r2, asr #31
.L02041bfc:
    mov r3, r3, lsl #16
.L02041c00:
    orr r3, r3, r2, lsr #16
.L02041c04:
    mov r2, r2, lsl #16
.L02041c08:
    strd r2, [r8, #184]
.L02041c0c:
    ldr r2, [pc, #1736]
.L02041c10:
    ldrh r3, [r2, #176]
.L02041c14:
    tst r3, #32768
.L02041c18:
    bne .L02041c10
.L02041c1c:
    mov ip, #67108864
.L02041c20:
    ldr r6, [ip, #692]
.L02041c24:
    cmp r6, #3
.L02041c28:
    ble .L0204155c
.L02041c2c:
    ldr r1, [pc, #1704]
.L02041c30:
    mov r4, #1
.L02041c34:
    strh r4, [r1, #128]
.L02041c38:
    ldrh r3, [r1, #128]
.L02041c3c:
    tst r3, #32768
.L02041c40:
    bne .L02041c38
.L02041c44:
    ldr r5, [sp, #44]
.L02041c48:
    ldr r7, [sp, #40]
.L02041c4c:
    mov r3, r5, lsl #16
.L02041c50:
    orr r3, r3, r7, lsr #16
.L02041c54:
    mov r2, r7, lsl #16
.L02041c58:
    mov lr, #67108864
.L02041c5c:
    ldr r4, [pc, #1656]
.L02041c60:
    strd r2, [r1, #144]
.L02041c64:
    str r6, [lr, #664]
.L02041c68:
    ldrh r3, [r4, #128]
.L02041c6c:
    tst r3, #32768
.L02041c70:
    bne .L02041c68
.L02041c74:
    mov r1, #67108864
.L02041c78:
    mov r2, #1
.L02041c7c:
    ldr r5, [pc, #1624]
.L02041c80:
    ldr r0, [r1, #672]
.L02041c84:
    strh r2, [r4, #128]
.L02041c88:
    ldrh r3, [r5, #128]
.L02041c8c:
    tst r3, #32768
.L02041c90:
    bne .L02041c88
.L02041c94:
    ldr r4, [sp, #52]
.L02041c98:
    ldr r7, [sp, #48]
.L02041c9c:
    mov r3, r4, lsl #16
.L02041ca0:
    orr r3, r3, r7, lsr #16
.L02041ca4:
    mov r2, r7, lsl #16
.L02041ca8:
    mov lr, #67108864
.L02041cac:
    ldr r4, [pc, #1576]
.L02041cb0:
    strd r2, [r5, #144]
.L02041cb4:
    str r6, [lr, #664]
.L02041cb8:
    ldrh r3, [r4, #128]
.L02041cbc:
    tst r3, #32768
.L02041cc0:
    bne .L02041cb8
.L02041cc4:
    mov r1, #67108864
.L02041cc8:
    ldr r1, [r1, #672]
.L02041ccc:
    mov r2, r0
.L02041cd0:
    mov r3, r2, asr #31
.L02041cd4:
    mov r4, r1
.L02041cd8:
    mov r5, r4, asr #31
.L02041cdc:
    strd r2, [sp, #40]
.L02041ce0:
    strd r4, [sp, #48]
.L02041ce4:
    b .L0204155c
.L02041ce8:
    mov r0, r4
.L02041cec:
    ldr r1, [pc, #1508]
.L02041cf0:
    bl reconstructed_external_arm_02083a9c
.L02041cf4:
    cmp r0, #0
.L02041cf8:
    beq .L02041e60
.L02041cfc:
    mov r4, fp
.L02041d00:
    mov r5, r4, asr #31
.L02041d04:
    mov r2, sl
.L02041d08:
    mov r3, r2, asr #31
.L02041d0c:
    strd r4, [sp, #32]
.L02041d10:
    strd r2, [sp, #24]
.L02041d14:
    ldr ip, [sp, #28]
.L02041d18:
    ldr lr, [sp, #36]
.L02041d1c:
    ldr r5, [sp, #24]
.L02041d20:
    ldr r7, [sp, #32]
.L02041d24:
    mul ip, r2, ip
.L02041d28:
    mul lr, r4, lr
.L02041d2c:
    umull r2, r3, r5, r5
.L02041d30:
    umull r0, r1, r7, r7
.L02041d34:
    mov ip, ip, lsl #1
.L02041d38:
    mov lr, lr, lsl #1
.L02041d3c:
    ldr r8, [pc, #1432]
.L02041d40:
    add r3, ip, r3
.L02041d44:
    add r1, lr, r1
.L02041d48:
    mov ip, #1
.L02041d4c:
    mov r6, r2, lsr #16
.L02041d50:
    mov r4, r0, lsr #16
.L02041d54:
    strh ip, [r8, #176]
.L02041d58:
    orr r6, r6, r3, lsl #16
.L02041d5c:
    orr r4, r4, r1, lsl #16
.L02041d60:
    ldrh r3, [r8, #176]
.L02041d64:
    tst r3, #32768
.L02041d68:
    bne .L02041d60
.L02041d6c:
    add r2, r6, r4
.L02041d70:
    mov r3, r2, asr #31
.L02041d74:
    mov r3, r3, lsl #16
.L02041d78:
    orr r3, r3, r2, lsr #16
.L02041d7c:
    mov r2, r2, lsl #16
.L02041d80:
    strd r2, [r8, #184]
.L02041d84:
    ldr r2, [pc, #1360]
.L02041d88:
    ldrh r3, [r2, #176]
.L02041d8c:
    tst r3, #32768
.L02041d90:
    bne .L02041d88
.L02041d94:
    mov lr, #67108864
.L02041d98:
    ldr r6, [lr, #692]
.L02041d9c:
    cmp r6, #3
.L02041da0:
    ble .L020414a4
.L02041da4:
    ldr r1, [pc, #1328]
.L02041da8:
    mov r2, #1
.L02041dac:
    strh r2, [r1, #128]
.L02041db0:
    ldrh r3, [r1, #128]
.L02041db4:
    tst r3, #32768
.L02041db8:
    bne .L02041db0
.L02041dbc:
    ldr r4, [sp, #28]
.L02041dc0:
    ldr r5, [sp, #24]
.L02041dc4:
    mov r3, r4, lsl #16
.L02041dc8:
    orr r3, r3, r5, lsr #16
.L02041dcc:
    mov r2, r5, lsl #16
.L02041dd0:
    mov ip, #67108864
.L02041dd4:
    ldr lr, [pc, #1280]
.L02041dd8:
    strd r2, [r1, #144]
.L02041ddc:
    str r6, [ip, #664]
.L02041de0:
    ldrh r3, [lr, #128]
.L02041de4:
    tst r3, #32768
.L02041de8:
    bne .L02041de0
.L02041dec:
    mov r1, #67108864
.L02041df0:
    mov r2, #1
.L02041df4:
    ldr r4, [pc, #1248]
.L02041df8:
    ldr r0, [r1, #672]
.L02041dfc:
    strh r2, [lr, #128]
.L02041e00:
    ldrh r3, [r4, #128]
.L02041e04:
    tst r3, #32768
.L02041e08:
    bne .L02041e00
.L02041e0c:
    ldr r5, [sp, #36]
.L02041e10:
    ldr r7, [sp, #32]
.L02041e14:
    mov r3, r5, lsl #16
.L02041e18:
    orr r3, r3, r7, lsr #16
.L02041e1c:
    mov r2, r7, lsl #16
.L02041e20:
    mov r1, #67108864
.L02041e24:
    ldr lr, [pc, #1200]
.L02041e28:
    strd r2, [r4, #144]
.L02041e2c:
    str r6, [r1, #664]
.L02041e30:
    ldrh r3, [lr, #128]
.L02041e34:
    tst r3, #32768
.L02041e38:
    bne .L02041e30
.L02041e3c:
    mov r2, #67108864
.L02041e40:
    ldr r3, [r2, #672]
.L02041e44:
    mov r4, r0
.L02041e48:
    mov r5, r4, asr #31
.L02041e4c:
    mov r0, r3
.L02041e50:
    mov r1, r0, asr #31
.L02041e54:
    strd r4, [sp, #24]
.L02041e58:
    strd r0, [sp, #32]
.L02041e5c:
    b .L020414a4
.L02041e60:
    mov r5, sl, asr #8
.L02041e64:
    mov r6, fp, asr #8
.L02041e68:
    eor r3, r6, r6, asr #31
.L02041e6c:
    sub r3, r3, r6, asr #31
.L02041e70:
    eor r0, r5, r5, asr #31
.L02041e74:
    sub r0, r0, r5, asr #31
.L02041e78:
    add r0, r3, r0
.L02041e7c:
    bl reconstructed_external_arm_02083618
.L02041e80:
    mov r1, #931135488
.L02041e84:
    bl reconstructed_external_arm_020836f4
.L02041e88:
    mov r1, #0
.L02041e8c:
    mov r4, r0
.L02041e90:
    bl reconstructed_external_arm_02083a84
.L02041e94:
    cmp r0, #0
.L02041e98:
    beq .L020423a0
.L02041e9c:
    mov r0, sl
.L02041ea0:
    mov r1, r0, asr #31
.L02041ea4:
    mov r2, fp
.L02041ea8:
    mov r3, r2, asr #31
.L02041eac:
    strd r0, [sp, #24]
.L02041eb0:
    strd r2, [sp, #32]
.L02041eb4:
    b .L020414a4
.L02041eb8:
    mov r0, r4
.L02041ebc:
    bl reconstructed_external_arm_02082c68
.L02041ec0:
    ldr r2, [pc, #1032]
.L02041ec4:
    ldr r3, [pc, #1032]
.L02041ec8:
    bl reconstructed_external_arm_02083298
.L02041ecc:
    cmp r0, #0
.L02041ed0:
    beq .L02042430
.L02041ed4:
    ldr r4, [sp, #92]
.L02041ed8:
    ldr r5, [sp, #96]
.L02041edc:
    mov r3, r4, lsl #16
.L02041ee0:
    mov r2, r5, lsl #16
.L02041ee4:
    str r3, [sp, #264]
.L02041ee8:
    str r2, [sp, #268]
.L02041eec:
    add r0, sp, #392
.L02041ef0:
    add r1, sp, #264
.L02041ef4:
    ldr r7, [pc, #1008]
.L02041ef8:
    blx r7
.L02041efc:
    ldr r2, [sp, #392]
.L02041f00:
    mov sl, r4
.L02041f04:
    mov fp, sl, asr #31
.L02041f08:
    mov r3, r2, asr #31
.L02041f0c:
    mov r3, r3, lsl #8
.L02041f10:
    orr r3, r3, r2, lsr #24
.L02041f14:
    mov r2, r2, lsl #8
.L02041f18:
    mov r2, r2, lsr #16
.L02041f1c:
    orr r2, r2, r3, lsl #16
.L02041f20:
    mov r3, r2, asr #31
.L02041f24:
    mov r3, r3, lsl #8
.L02041f28:
    orr r3, r3, r2, lsr #24
.L02041f2c:
    mov r2, r2, lsl #8
.L02041f30:
    mov r2, r2, lsr #16
.L02041f34:
    ldr ip, [sp, #96]
.L02041f38:
    orr r2, r2, r3, lsl #16
.L02041f3c:
    mov r5, r2
.L02041f40:
    mov r6, ip
.L02041f44:
    mov r7, r6, asr #31
.L02041f48:
    b .L02041abc
.L02041f4c:
    ldr lr, [sp, #84]
.L02041f50:
    ldr r0, [sp, #88]
.L02041f54:
    mov r5, lr, asr #8
.L02041f58:
    mov r6, r0, asr #8
.L02041f5c:
    eor r3, r6, r6, asr #31
.L02041f60:
    sub r3, r3, r6, asr #31
.L02041f64:
    eor r0, r5, r5, asr #31
.L02041f68:
    sub r0, r0, r5, asr #31
.L02041f6c:
    add r0, r3, r0
.L02041f70:
    bl reconstructed_external_arm_02083618
.L02041f74:
    mov r1, #931135488
.L02041f78:
    bl reconstructed_external_arm_020836f4
.L02041f7c:
    mov r1, #0
.L02041f80:
    mov r4, r0
.L02041f84:
    bl reconstructed_external_arm_02083a84
.L02041f88:
    cmp r0, #0
.L02041f8c:
    bne .L020418fc
.L02041f90:
    mov r0, r4
.L02041f94:
    bl reconstructed_external_arm_02082c68
.L02041f98:
    ldr r2, [pc, #816]
.L02041f9c:
    ldr r3, [pc, #816]
.L02041fa0:
    bl reconstructed_external_arm_02083298
.L02041fa4:
    cmp r0, #0
.L02041fa8:
    bne .L020427d0
.L02041fac:
    mov r0, r4
.L02041fb0:
    ldr r1, [pc, #800]
.L02041fb4:
    bl reconstructed_external_arm_02083a9c
.L02041fb8:
    cmp r0, #0
.L02041fbc:
    beq .L02042a74
.L02041fc0:
    mov r0, r6
.L02041fc4:
    mov r1, r0, asr #31
.L02041fc8:
    mov r2, r5
.L02041fcc:
    mov r3, r2, asr #31
.L02041fd0:
    mul lr, r0, r1
.L02041fd4:
    mul ip, r2, r3
.L02041fd8:
    umull r4, r5, r2, r2
.L02041fdc:
    umull r6, r7, r0, r0
.L02041fe0:
    mov ip, ip, lsl #1
.L02041fe4:
    mov lr, lr, lsl #1
.L02041fe8:
    ldr r1, [pc, #748]
.L02041fec:
    add r5, ip, r5
.L02041ff0:
    mov r8, r4, lsr #16
.L02041ff4:
    add r7, lr, r7
.L02041ff8:
    mov ip, #1
.L02041ffc:
    mov r4, r6, lsr #16
.L02042000:
    strh ip, [r1, #176]
.L02042004:
    orr r8, r8, r5, lsl #16
.L02042008:
    mov r9, r5, asr #16
.L0204200c:
    orr r4, r4, r7, lsl #16
.L02042010:
    ldrh r3, [r1, #176]
.L02042014:
    tst r3, #32768
.L02042018:
    bne .L02042010
.L0204201c:
    add r2, r8, r4
.L02042020:
    mov r3, r2, asr #31
.L02042024:
    mov r3, r3, lsl #16
.L02042028:
    orr r3, r3, r2, lsr #16
.L0204202c:
    mov r2, r2, lsl #16
.L02042030:
    strd r2, [r1, #184]
.L02042034:
    ldr r2, [pc, #672]
.L02042038:
    ldrh r3, [r2, #176]
.L0204203c:
    tst r3, #32768
.L02042040:
    bne .L02042038
.L02042044:
    mov lr, #67108864
.L02042048:
    ldr r1, [sp, #84]
.L0204204c:
    ldr r2, [lr, #692]
.L02042050:
    mov r0, r1
.L02042054:
    mov r1, r0, asr #31
.L02042058:
    strd r0, [sp, #40]
.L0204205c:
    b .L0204281c
.L02042060:
    ldr r1, [sp, #96]
.L02042064:
    ldr r0, [sp, #92]
.L02042068:
    mov r6, r1, asr #8
.L0204206c:
    mov r5, r0, asr #8
.L02042070:
    eor r3, r6, r6, asr #31
.L02042074:
    sub r3, r3, r6, asr #31
.L02042078:
    eor r0, r5, r5, asr #31
.L0204207c:
    sub r0, r0, r5, asr #31
.L02042080:
    add r0, r3, r0
.L02042084:
    bl reconstructed_external_arm_02083618
.L02042088:
    mov r1, #931135488
.L0204208c:
    bl reconstructed_external_arm_020836f4
.L02042090:
    mov r1, #0
.L02042094:
    mov r4, r0
.L02042098:
    bl reconstructed_external_arm_02083a84
.L0204209c:
    cmp r0, #0
.L020420a0:
    beq .L020421f0
.L020420a4:
    ldr r2, [sp, #92]
.L020420a8:
    ldr r3, [sp, #96]
.L020420ac:
    mov sl, r2
.L020420b0:
    mov fp, sl, asr #31
.L020420b4:
    mov r6, r3
.L020420b8:
    mov r7, r6, asr #31
.L020420bc:
    b .L020415b0
.L020420c0:
    mov r0, r4
.L020420c4:
    bl reconstructed_external_arm_02082c68
.L020420c8:
    ldr r2, [pc, #512]
.L020420cc:
    ldr r3, [pc, #512]
.L020420d0:
    bl reconstructed_external_arm_02083298
.L020420d4:
    cmp r0, #0
.L020420d8:
    beq .L02042508
.L020420dc:
    ldr r4, [sp, #84]
.L020420e0:
    ldr r5, [sp, #88]
.L020420e4:
    mov r3, r4, lsl #16
.L020420e8:
    mov r2, r5, lsl #16
.L020420ec:
    add r0, sp, #376
.L020420f0:
    add r1, sp, #232
.L020420f4:
    str r3, [sp, #232]
.L020420f8:
    str r2, [sp, #236]
.L020420fc:
    ldr r7, [pc, #488]
.L02042100:
    blx r7
.L02042104:
    ldr r1, [sp, #84]
.L02042108:
    ldr r2, [sp, #376]
.L0204210c:
    mov r0, r1
.L02042110:
    mov r1, r0, asr #31
.L02042114:
    mov r3, r2, asr #31
.L02042118:
    strd r0, [sp, #40]
.L0204211c:
    mov r3, r3, lsl #8
.L02042120:
    orr r3, r3, r2, lsr #24
.L02042124:
    mov r2, r2, lsl #8
.L02042128:
    mov r2, r2, lsr #16
.L0204212c:
    orr r2, r2, r3, lsl #16
.L02042130:
    mov r3, r2, asr #31
.L02042134:
    mov r3, r3, lsl #8
.L02042138:
    orr r3, r3, r2, lsr #24
.L0204213c:
    mov r2, r2, lsl #8
.L02042140:
    mov r2, r2, lsr #16
.L02042144:
    orr r2, r2, r3, lsl #16
.L02042148:
    ldr r3, [sp, #88]
.L0204214c:
    mov r6, r2
.L02042150:
    mov r2, r3
.L02042154:
    mov r3, r2, asr #31
.L02042158:
    strd r2, [sp, #48]
.L0204215c:
    b .L02041c24
.L02042160:
    mov r0, r4
.L02042164:
    bl reconstructed_external_arm_02082c68
.L02042168:
    ldr r2, [pc, #352]
.L0204216c:
    ldr r3, [pc, #352]
.L02042170:
    bl reconstructed_external_arm_02083298
.L02042174:
    cmp r0, #0
.L02042178:
    beq .L020422f0
.L0204217c:
    mov r3, sl, lsl #16
.L02042180:
    mov r2, fp, lsl #16
.L02042184:
    add r0, sp, #360
.L02042188:
    add r1, sp, #200
.L0204218c:
    str r3, [sp, #200]
.L02042190:
    str r2, [sp, #204]
.L02042194:
    ldr r5, [pc, #336]
.L02042198:
    blx r5
.L0204219c:
    ldr r2, [sp, #360]
.L020421a0:
    mov r0, sl
.L020421a4:
    mov r1, r0, asr #31
.L020421a8:
    mov r3, r2, asr #31
.L020421ac:
    mov r3, r3, lsl #8
.L020421b0:
    orr r3, r3, r2, lsr #24
.L020421b4:
    strd r0, [sp, #24]
.L020421b8:
    mov r2, r2, lsl #8
.L020421bc:
    mov r2, r2, lsr #16
.L020421c0:
    orr r2, r2, r3, lsl #16
.L020421c4:
    mov r3, r2, asr #31
.L020421c8:
    mov r3, r3, lsl #8
.L020421cc:
    orr r3, r3, r2, lsr #24
.L020421d0:
    mov r2, r2, lsl #8
.L020421d4:
    mov r2, r2, lsr #16
.L020421d8:
    orr r2, r2, r3, lsl #16
.L020421dc:
    mov r6, r2
.L020421e0:
    mov r2, fp
.L020421e4:
    mov r3, r2, asr #31
.L020421e8:
    strd r2, [sp, #32]
.L020421ec:
    b .L02041d9c
.L020421f0:
    mov r0, r4
.L020421f4:
    bl reconstructed_external_arm_02082c68
.L020421f8:
    ldr r2, [pc, #208]
.L020421fc:
    ldr r3, [pc, #208]
.L02042200:
    bl reconstructed_external_arm_02083298
.L02042204:
    cmp r0, #0
.L02042208:
    bne .L02042774
.L0204220c:
    mov r0, r4
.L02042210:
    ldr r1, [pc, #192]
.L02042214:
    bl reconstructed_external_arm_02083a9c
.L02042218:
    cmp r0, #0
.L0204221c:
    beq .L02042b08
.L02042220:
    mov r0, r6
.L02042224:
    mov r1, r0, asr #31
.L02042228:
    mov r2, r5
.L0204222c:
    mov r3, r2, asr #31
.L02042230:
    mul lr, r0, r1
.L02042234:
    mul ip, r2, r3
.L02042238:
    umull r4, r5, r2, r2
.L0204223c:
    umull r6, r7, r0, r0
.L02042240:
    mov lr, lr, lsl #1
.L02042244:
    mov ip, ip, lsl #1
.L02042248:
    ldr r1, [pc, #140]
.L0204224c:
    add r5, ip, r5
.L02042250:
    add r7, lr, r7
.L02042254:
    mov r8, r4, lsr #16
.L02042258:
    mov lr, #1
.L0204225c:
    mov r4, r6, lsr #16
.L02042260:
    strh lr, [r1, #176]
.L02042264:
    orr r8, r8, r5, lsl #16
.L02042268:
    mov r9, r5, asr #16
.L0204226c:
    orr r4, r4, r7, lsl #16
.L02042270:
    ldrh r3, [r1, #176]
.L02042274:
    tst r3, #32768
.L02042278:
    bne .L02042270
.L0204227c:
    add r2, r8, r4
.L02042280:
    mov r3, r2, asr #31
.L02042284:
    mov r3, r3, lsl #16
.L02042288:
    orr r3, r3, r2, lsr #16
.L0204228c:
    mov r2, r2, lsl #16
.L02042290:
    strd r2, [r1, #184]
.L02042294:
    ldr r2, [pc, #64]
.L02042298:
    ldrh r3, [r2, #176]
.L0204229c:
    tst r3, #32768
.L020422a0:
    bne .L02042298
.L020422a4:
    mov r0, #67108864
.L020422a8:
    ldr r2, [r0, #692]
.L020422ac:
    ldr r1, [sp, #92]
.L020422b0:
    mov r3, r2, asr #31
.L020422b4:
    mov r3, r3, lsl #24
.L020422b8:
    orr r3, r3, r2, lsr #8
.L020422bc:
    mov sl, r1
.L020422c0:
    mov fp, sl, asr #31
.L020422c4:
    mov r2, r2, lsl #24
.L020422c8:
    b .L020424ec
.L020422cc:
    .long 0xfff60000  /* literal data */
.L020422d0:
    .long 0x9999999a  /* literal data */
.L020422d4:
    .long 0x3fb99999  /* literal data */
.L020422d8:
    .long 0x43340000  /* literal data */
.L020422dc:
    .long 0x04000200  /* literal data */
.L020422e0:
    .long 0x020c38e8  /* literal data */
.L020422e4:
    .long 0x000002e7  /* literal data */
.L020422e8:
    .long 0x020c3970  /* literal data */
.L020422ec:
    .long 0x0209390c  /* literal data */
.L020422f0:
    mov r0, r4
.L020422f4:
    ldr r1, [pc, #-36]
.L020422f8:
    bl reconstructed_external_arm_02083a9c
.L020422fc:
    cmp r0, #0
.L02042300:
    beq .L02042718
.L02042304:
    mov r2, r5
.L02042308:
    mov r3, r2, asr #31
.L0204230c:
    mov r0, r6
.L02042310:
    mov r1, r0, asr #31
.L02042314:
    mul ip, r2, r3
.L02042318:
    mul lr, r0, r1
.L0204231c:
    umull r4, r5, r2, r2
.L02042320:
    umull r6, r7, r0, r0
.L02042324:
    mov ip, ip, lsl #1
.L02042328:
    mov lr, lr, lsl #1
.L0204232c:
    ldr r1, [pc, #-88]
.L02042330:
    add r5, ip, r5
.L02042334:
    mov r8, r4, lsr #16
.L02042338:
    add r7, lr, r7
.L0204233c:
    mov r3, #1
.L02042340:
    mov r4, r6, lsr #16
.L02042344:
    strh r3, [r1, #176]
.L02042348:
    orr r8, r8, r5, lsl #16
.L0204234c:
    mov r9, r5, asr #16
.L02042350:
    orr r4, r4, r7, lsl #16
.L02042354:
    ldrh r3, [r1, #176]
.L02042358:
    tst r3, #32768
.L0204235c:
    bne .L02042354
.L02042360:
    add r2, r8, r4
.L02042364:
    mov r3, r2, asr #31
.L02042368:
    mov r3, r3, lsl #16
.L0204236c:
    orr r3, r3, r2, lsr #16
.L02042370:
    mov r2, r2, lsl #16
.L02042374:
    strd r2, [r1, #184]
.L02042378:
    ldr r2, [pc, #-164]
.L0204237c:
    ldrh r3, [r2, #176]
.L02042380:
    tst r3, #32768
.L02042384:
    bne .L0204237c
.L02042388:
    mov r4, #67108864
.L0204238c:
    ldr r2, [r4, #692]
.L02042390:
    mov r0, sl
.L02042394:
    mov r1, r0, asr #31
.L02042398:
    strd r0, [sp, #24]
.L0204239c:
    b .L020421c4
.L020423a0:
    mov r0, r4
.L020423a4:
    bl reconstructed_external_arm_02082c68
.L020423a8:
    ldr r2, [pc, #-224]
.L020423ac:
    ldr r3, [pc, #-224]
.L020423b0:
    bl reconstructed_external_arm_02083298
.L020423b4:
    cmp r0, #0
.L020423b8:
    beq .L02042668
.L020423bc:
    mov r3, r5, lsl #8
.L020423c0:
    mov r2, r6, lsl #8
.L020423c4:
    str r3, [sp, #216]
.L020423c8:
    str r2, [sp, #220]
.L020423cc:
    ldr r3, [pc, #-232]
.L020423d0:
    add r0, sp, #368
.L020423d4:
    add r1, sp, #216
.L020423d8:
    blx r3
.L020423dc:
    ldr r2, [sp, #368]
.L020423e0:
    mov r4, sl
.L020423e4:
    mov r5, r4, asr #31
.L020423e8:
    mov r3, r2, asr #31
.L020423ec:
    strd r4, [sp, #24]
.L020423f0:
    mov r3, r3, lsl #8
.L020423f4:
    orr r3, r3, r2, lsr #24
.L020423f8:
    mov r2, r2, lsl #8
.L020423fc:
    mov r2, r2, lsr #16
.L02042400:
    orr r2, r2, r3, lsl #16
.L02042404:
    mov r3, r2, asr #31
.L02042408:
    mov r3, r3, lsl #24
.L0204240c:
    orr r3, r3, r2, lsr #8
.L02042410:
    mov r2, r2, lsl #24
.L02042414:
    mov r2, r2, lsr #16
.L02042418:
    orr r2, r2, r3, lsl #16
.L0204241c:
    mov r0, fp
.L02042420:
    mov r1, r0, asr #31
.L02042424:
    mov r6, r2
.L02042428:
    strd r0, [sp, #32]
.L0204242c:
    b .L02041d9c
.L02042430:
    mov r0, r4
.L02042434:
    ldr r1, [pc, #-356]
.L02042438:
    bl reconstructed_external_arm_02083a9c
.L0204243c:
    cmp r0, #0
.L02042440:
    beq .L02042624
.L02042444:
    mov r0, r6
.L02042448:
    mov r1, r0, asr #31
.L0204244c:
    mov r2, r5
.L02042450:
    mov r3, r2, asr #31
.L02042454:
    mul lr, r0, r1
.L02042458:
    mul ip, r2, r3
.L0204245c:
    umull r4, r5, r2, r2
.L02042460:
    umull r6, r7, r0, r0
.L02042464:
    mov lr, lr, lsl #1
.L02042468:
    mov ip, ip, lsl #1
.L0204246c:
    ldr r1, [pc, #-408]
.L02042470:
    add r5, ip, r5
.L02042474:
    add r7, lr, r7
.L02042478:
    mov r8, r4, lsr #16
.L0204247c:
    mov lr, #1
.L02042480:
    mov r4, r6, lsr #16
.L02042484:
    strh lr, [r1, #176]
.L02042488:
    orr r8, r8, r5, lsl #16
.L0204248c:
    mov r9, r5, asr #16
.L02042490:
    orr r4, r4, r7, lsl #16
.L02042494:
    ldrh r3, [r1, #176]
.L02042498:
    tst r3, #32768
.L0204249c:
    bne .L02042494
.L020424a0:
    add r2, r8, r4
.L020424a4:
    mov r3, r2, asr #31
.L020424a8:
    mov r3, r3, lsl #16
.L020424ac:
    orr r3, r3, r2, lsr #16
.L020424b0:
    mov r2, r2, lsl #16
.L020424b4:
    strd r2, [r1, #184]
.L020424b8:
    ldr r2, [pc, #-484]
.L020424bc:
    ldrh r3, [r2, #176]
.L020424c0:
    tst r3, #32768
.L020424c4:
    bne .L020424bc
.L020424c8:
    mov r0, #67108864
.L020424cc:
    ldr r2, [r0, #692]
.L020424d0:
    ldr r1, [sp, #92]
.L020424d4:
    mov r3, r2, asr #31
.L020424d8:
    mov r3, r3, lsl #8
.L020424dc:
    orr r3, r3, r2, lsr #24
.L020424e0:
    mov sl, r1
.L020424e4:
    mov fp, sl, asr #31
.L020424e8:
    mov r2, r2, lsl #8
.L020424ec:
    mov r2, r2, lsr #16
.L020424f0:
    orr r2, r2, r3, lsl #16
.L020424f4:
    mov r5, r2
.L020424f8:
    ldr r2, [sp, #96]
.L020424fc:
    mov r6, r2
.L02042500:
    mov r7, r6, asr #31
.L02042504:
    b .L02041abc
.L02042508:
    mov r0, r4
.L0204250c:
    ldr r1, [pc, #-572]
.L02042510:
    bl reconstructed_external_arm_02083a9c
.L02042514:
    cmp r0, #0
.L02042518:
    beq .L020425dc
.L0204251c:
    mov r0, r6
.L02042520:
    mov r1, r0, asr #31
.L02042524:
    mov r2, r5
.L02042528:
    mov r3, r2, asr #31
.L0204252c:
    mul lr, r0, r1
.L02042530:
    mul ip, r2, r3
.L02042534:
    umull r4, r5, r2, r2
.L02042538:
    umull r6, r7, r0, r0
.L0204253c:
    mov ip, ip, lsl #1
.L02042540:
    mov lr, lr, lsl #1
.L02042544:
    ldr r1, [pc, #-624]
.L02042548:
    add r5, ip, r5
.L0204254c:
    mov r8, r4, lsr #16
.L02042550:
    add r7, lr, r7
.L02042554:
    mov ip, #1
.L02042558:
    mov r4, r6, lsr #16
.L0204255c:
    strh ip, [r1, #176]
.L02042560:
    orr r8, r8, r5, lsl #16
.L02042564:
    mov r9, r5, asr #16
.L02042568:
    orr r4, r4, r7, lsl #16
.L0204256c:
    ldrh r3, [r1, #176]
.L02042570:
    tst r3, #32768
.L02042574:
    bne .L0204256c
.L02042578:
    add r2, r8, r4
.L0204257c:
    mov r3, r2, asr #31
.L02042580:
    mov r3, r3, lsl #16
.L02042584:
    orr r3, r3, r2, lsr #16
.L02042588:
    mov r2, r2, lsl #16
.L0204258c:
    strd r2, [r1, #184]
.L02042590:
    ldr r2, [pc, #-700]
.L02042594:
    ldrh r3, [r2, #176]
.L02042598:
    tst r3, #32768
.L0204259c:
    bne .L02042594
.L020425a0:
    mov lr, #67108864
.L020425a4:
    ldr r2, [lr, #692]
.L020425a8:
    ldr r1, [sp, #84]
.L020425ac:
    mov r3, r2, asr #31
.L020425b0:
    mov r3, r3, lsl #8
.L020425b4:
    mov r0, r1
.L020425b8:
    mov r1, r0, asr #31
.L020425bc:
    orr r3, r3, r2, lsr #24
.L020425c0:
    mov r2, r2, lsl #8
.L020425c4:
    strd r0, [sp, #40]
.L020425c8:
    b .L02042140
.L020425cc:
    mov r0, sl
.L020425d0:
    bl reconstructed_external_arm_0209787c
.L020425d4:
    mov r6, r0
.L020425d8:
    b .L020417f4
.L020425dc:
    mov r3, r5, asr #8
.L020425e0:
    mov r2, r6, asr #8
.L020425e4:
    add r0, sp, #380
.L020425e8:
    add r1, sp, #240
.L020425ec:
    str r3, [sp, #240]
.L020425f0:
    str r2, [sp, #244]
.L020425f4:
    ldr r4, [pc, #-784]
.L020425f8:
    blx r4
.L020425fc:
    ldr r2, [sp, #380]
.L02042600:
    ldr r1, [sp, #84]
.L02042604:
    mov r3, r2, asr #31
.L02042608:
    mov r3, r3, lsl #24
.L0204260c:
    mov r0, r1
.L02042610:
    mov r1, r0, asr #31
.L02042614:
    orr r3, r3, r2, lsr #8
.L02042618:
    mov r2, r2, lsl #24
.L0204261c:
    strd r0, [sp, #40]
.L02042620:
    b .L02042128
.L02042624:
    mov r2, r6, asr #8
.L02042628:
    mov r3, r5, asr #8
.L0204262c:
    str r3, [sp, #272]
.L02042630:
    str r2, [sp, #276]
.L02042634:
    ldr r3, [pc, #-848]
.L02042638:
    add r0, sp, #396
.L0204263c:
    add r1, sp, #272
.L02042640:
    blx r3
.L02042644:
    ldr r2, [sp, #396]
.L02042648:
    ldr r4, [sp, #92]
.L0204264c:
    mov r3, r2, asr #31
.L02042650:
    mov r3, r3, lsl #24
.L02042654:
    orr r3, r3, r2, lsr #8
.L02042658:
    mov sl, r4
.L0204265c:
    mov fp, sl, asr #31
.L02042660:
    mov r2, r2, lsl #24
.L02042664:
    b .L02041f18
.L02042668:
    mov r0, r4
.L0204266c:
    ldr r1, [pc, #-924]
.L02042670:
    bl reconstructed_external_arm_02083a9c
.L02042674:
    cmp r0, #0
.L02042678:
    beq .L02042ac4
.L0204267c:
    mov r2, r5
.L02042680:
    mov r3, r2, asr #31
.L02042684:
    mov r0, r6
.L02042688:
    mov r1, r0, asr #31
.L0204268c:
    mul ip, r2, r3
.L02042690:
    mul lr, r0, r1
.L02042694:
    umull r4, r5, r2, r2
.L02042698:
    umull r6, r7, r0, r0
.L0204269c:
    mov ip, ip, lsl #1
.L020426a0:
    mov lr, lr, lsl #1
.L020426a4:
    ldr r1, [pc, #-976]
.L020426a8:
    add r5, ip, r5
.L020426ac:
    mov r8, r4, lsr #16
.L020426b0:
    add r7, lr, r7
.L020426b4:
    mov r2, #1
.L020426b8:
    mov r4, r6, lsr #16
.L020426bc:
    strh r2, [r1, #176]
.L020426c0:
    orr r8, r8, r5, lsl #16
.L020426c4:
    mov r9, r5, asr #16
.L020426c8:
    orr r4, r4, r7, lsl #16
.L020426cc:
    ldrh r3, [r1, #176]
.L020426d0:
    tst r3, #32768
.L020426d4:
    bne .L020426cc
.L020426d8:
    add r2, r8, r4
.L020426dc:
    mov r3, r2, asr #31
.L020426e0:
    mov r3, r3, lsl #16
.L020426e4:
    orr r3, r3, r2, lsr #16
.L020426e8:
    mov r2, r2, lsl #16
.L020426ec:
    strd r2, [r1, #184]
.L020426f0:
    ldr r2, [pc, #-1052]
.L020426f4:
    ldrh r3, [r2, #176]
.L020426f8:
    tst r3, #32768
.L020426fc:
    bne .L020426f4
.L02042700:
    mov r3, #67108864
.L02042704:
    ldr r2, [r3, #692]
.L02042708:
    mov r4, sl
.L0204270c:
    mov r5, r4, asr #31
.L02042710:
    strd r4, [sp, #24]
.L02042714:
    b .L02042404
.L02042718:
    mov r3, r5, asr #8
.L0204271c:
    mov r2, r6, asr #8
.L02042720:
    str r3, [sp, #208]
.L02042724:
    str r2, [sp, #212]
.L02042728:
    ldr r3, [pc, #-1092]
.L0204272c:
    add r0, sp, #364
.L02042730:
    add r1, sp, #208
.L02042734:
    blx r3
.L02042738:
    ldr r2, [sp, #364]
.L0204273c:
    mov r4, sl
.L02042740:
    mov r5, r4, asr #31
.L02042744:
    mov r3, r2, asr #31
.L02042748:
    mov r3, r3, lsl #24
.L0204274c:
    orr r3, r3, r2, lsr #8
.L02042750:
    mov r2, r2, lsl #24
.L02042754:
    mov r2, r2, lsr #16
.L02042758:
    orr r2, r2, r3, lsl #16
.L0204275c:
    mov r3, r2, asr #31
.L02042760:
    mov r3, r3, lsl #8
.L02042764:
    orr r3, r3, r2, lsr #24
.L02042768:
    mov r2, r2, lsl #8
.L0204276c:
    strd r4, [sp, #24]
.L02042770:
    b .L02042414
.L02042774:
    mov r3, r5, lsl #8
.L02042778:
    mov r2, r6, lsl #8
.L0204277c:
    str r3, [sp, #280]
.L02042780:
    str r2, [sp, #284]
.L02042784:
    add r0, sp, #400
.L02042788:
    add r1, sp, #280
.L0204278c:
    ldr r4, [pc, #-1192]
.L02042790:
    blx r4
.L02042794:
    ldr r2, [sp, #400]
.L02042798:
    ldr r5, [sp, #92]
.L0204279c:
    mov r3, r2, asr #31
.L020427a0:
    mov r3, r3, lsl #8
.L020427a4:
    orr r3, r3, r2, lsr #24
.L020427a8:
    mov sl, r5
.L020427ac:
    mov fp, sl, asr #31
.L020427b0:
    mov r2, r2, lsl #8
.L020427b4:
    mov r2, r2, lsr #16
.L020427b8:
    orr r2, r2, r3, lsl #16
.L020427bc:
    mov r3, r2, asr #31
.L020427c0:
    mov r3, r3, lsl #24
.L020427c4:
    orr r3, r3, r2, lsr #8
.L020427c8:
    mov r2, r2, lsl #24
.L020427cc:
    b .L02041f30
.L020427d0:
    mov r3, r5, lsl #8
.L020427d4:
    mov r2, r6, lsl #8
.L020427d8:
    add r0, sp, #384
.L020427dc:
    add r1, sp, #248
.L020427e0:
    str r3, [sp, #248]
.L020427e4:
    str r2, [sp, #252]
.L020427e8:
    ldr r7, [pc, #-1284]
.L020427ec:
    blx r7
.L020427f0:
    ldr r1, [sp, #84]
.L020427f4:
    ldr r2, [sp, #384]
.L020427f8:
    mov r0, r1
.L020427fc:
    mov r1, r0, asr #31
.L02042800:
    mov r3, r2, asr #31
.L02042804:
    strd r0, [sp, #40]
.L02042808:
    mov r3, r3, lsl #8
.L0204280c:
    orr r3, r3, r2, lsr #24
.L02042810:
    mov r2, r2, lsl #8
.L02042814:
    mov r2, r2, lsr #16
.L02042818:
    orr r2, r2, r3, lsl #16
.L0204281c:
    mov r3, r2, asr #31
.L02042820:
    mov r3, r3, lsl #24
.L02042824:
    orr r3, r3, r2, lsr #8
.L02042828:
    mov r2, r2, lsl #24
.L0204282c:
    b .L02042140
.L02042830:
    cmp r9, #0
.L02042834:
    ble .L02042864
.L02042838:
    ldr r5, [sp, #60]
.L0204283c:
    mov r6, r3
.L02042840:
    mov r4, r7
.L02042844:
    mov r0, r5
.L02042848:
    mov r1, r4
.L0204284c:
    add r6, r6, #1
.L02042850:
    bl reconstructed_external_arm_02045ff8
.L02042854:
    cmp r9, r6
.L02042858:
    add r5, r5, #8
.L0204285c:
    add r4, r4, #8
.L02042860:
    bne .L02042844
.L02042864:
    cmp sl, #0
.L02042868:
    ble .L020428a0
.L0204286c:
    ldr r0, [sp, #60]
.L02042870:
    mov r3, r9, lsl #3
.L02042874:
    add r5, r0, r3
.L02042878:
    mov r4, r8
.L0204287c:
    mov r6, #0
.L02042880:
    mov r0, r5
.L02042884:
    mov r1, r4
.L02042888:
    add r6, r6, #1
.L0204288c:
    bl reconstructed_external_arm_02045ff8
.L02042890:
    cmp sl, r6
.L02042894:
    add r5, r5, #8
.L02042898:
    add r4, r4, #8
.L0204289c:
    bne .L02042880
.L020428a0:
    cmp r7, #0
.L020428a4:
    beq .L020428d8
.L020428a8:
    ldr r3, [r7, #-4]
.L020428ac:
    mov r3, r3, lsl #3
.L020428b0:
    add r4, r7, r3
.L020428b4:
    cmp r7, r4
.L020428b8:
    beq .L020428d0
.L020428bc:
    sub r4, r4, #8
.L020428c0:
    mov r0, r4
.L020428c4:
    bl reconstructed_external_arm_02045f98
.L020428c8:
    cmp r7, r4
.L020428cc:
    bne .L020428bc
.L020428d0:
    sub r0, r7, #8
.L020428d4:
    bl reconstructed_external_arm_02097888
.L020428d8:
    cmp r8, #0
.L020428dc:
    beq .L02042910
.L020428e0:
    ldr r3, [r8, #-4]
.L020428e4:
    mov r3, r3, lsl #3
.L020428e8:
    add r4, r8, r3
.L020428ec:
    cmp r8, r4
.L020428f0:
    beq .L02042908
.L020428f4:
    sub r4, r4, #8
.L020428f8:
    mov r0, r4
.L020428fc:
    bl reconstructed_external_arm_02045f98
.L02042900:
    cmp r8, r4
.L02042904:
    bne .L020428f4
.L02042908:
    sub r0, r8, #8
.L0204290c:
    bl reconstructed_external_arm_02097888
.L02042910:
    add r8, r9, sl
.L02042914:
    b .L0204126c
.L02042918:
    mvn r8, #0
.L0204291c:
    b .L0204126c
.L02042920:
    ldr r8, [sp, #104]
.L02042924:
    mov r4, r5, lsl #3
.L02042928:
    str r7, [sp, #72]
.L0204292c:
    str r6, [sp, #116]
.L02042930:
    ldr r5, [sp, #72]
.L02042934:
    ldr ip, [sp, #116]
.L02042938:
    ldr r3, [r5, #4]
.L0204293c:
    mov lr, ip
.L02042940:
    str r3, [sp, #336]
.L02042944:
    ldr r2, [ip, #4]
.L02042948:
    add r7, sp, #192
.L0204294c:
    str r2, [sp, #340]
.L02042950:
    ldr r3, [r5, #8]
.L02042954:
    add r1, sp, #336
.L02042958:
    str r3, [sp, #344]
.L0204295c:
    ldr ip, [ip, #8]
.L02042960:
    add r2, sp, #340
.L02042964:
    str ip, [sp, #348]
.L02042968:
    ldr r0, [r5]
.L0204296c:
    add ip, sp, #348
.L02042970:
    str r0, [sp, #352]
.L02042974:
    ldr lr, [lr]
.L02042978:
    add r3, sp, #344
.L0204297c:
    str lr, [sp, #356]
.L02042980:
    str ip, [sp]
.L02042984:
    add lr, sp, #352
.L02042988:
    add ip, sp, #356
.L0204298c:
    mov r0, r7
.L02042990:
    str lr, [sp, #4]
.L02042994:
    str ip, [sp, #8]
.L02042998:
    bl reconstructed_external_arm_020460d8
.L0204299c:
    ldr r1, [sp, #68]
.L020429a0:
    add r0, r1, r4
.L020429a4:
    mov r1, r7
.L020429a8:
    bl reconstructed_external_arm_02045ff8
.L020429ac:
    cmp r5, #0
.L020429b0:
    beq .L020429bc
.L020429b4:
    ldr r0, [sp, #72]
.L020429b8:
    bl reconstructed_external_arm_02097888
.L020429bc:
    ldr r2, [sp, #116]
.L020429c0:
    cmp r2, #0
.L020429c4:
    beq .L020429d0
.L020429c8:
    mov r0, r2
.L020429cc:
    bl reconstructed_external_arm_02097888
.L020429d0:
    ldr r3, [sp, #20]
.L020429d4:
    cmp r3, r8
.L020429d8:
    beq .L020429ec
.L020429dc:
    ldr r0, [pc, #-1796]
.L020429e0:
    ldr r1, [pc, #-1796]
.L020429e4:
    ldr r2, [pc, #-1796]
.L020429e8:
    bl reconstructed_external_arm_02097804
.L020429ec:
    cmp r8, #0
.L020429f0:
    ble .L02042a20
.L020429f4:
    ldr r5, [sp, #60]
.L020429f8:
    ldr r4, [sp, #68]
.L020429fc:
    mov r6, #0
.L02042a00:
    mov r0, r5
.L02042a04:
    mov r1, r4
.L02042a08:
    add r6, r6, #1
.L02042a0c:
    bl reconstructed_external_arm_02045ff8
.L02042a10:
    cmp r6, r8
.L02042a14:
    add r5, r5, #8
.L02042a18:
    add r4, r4, #8
.L02042a1c:
    bne .L02042a00
.L02042a20:
    ldr r4, [sp, #68]
.L02042a24:
    cmp r4, #0
.L02042a28:
    beq .L02042a68
.L02042a2c:
    ldr r3, [r4, #-4]
.L02042a30:
    ldr r5, [sp, #68]
.L02042a34:
    mov r3, r3, lsl #3
.L02042a38:
    add r4, r4, r3
.L02042a3c:
    cmp r5, r4
.L02042a40:
    beq .L02042a5c
.L02042a44:
    sub r4, r4, #8
.L02042a48:
    mov r0, r4
.L02042a4c:
    bl reconstructed_external_arm_02045f98
.L02042a50:
    ldr ip, [sp, #68]
.L02042a54:
    cmp ip, r4
.L02042a58:
    bne .L02042a44
.L02042a5c:
    ldr lr, [sp, #68]
.L02042a60:
    sub r0, lr, #8
.L02042a64:
    bl reconstructed_external_arm_02097888
.L02042a68:
    mov r0, r7
.L02042a6c:
    bl reconstructed_external_arm_02045f98
.L02042a70:
    b .L0204126c
.L02042a74:
    ldr r4, [sp, #84]
.L02042a78:
    ldr r5, [sp, #88]
.L02042a7c:
    mov r3, r4, asr #16
.L02042a80:
    mov r2, r5, asr #16
.L02042a84:
    add r0, sp, #388
.L02042a88:
    add r1, sp, #256
.L02042a8c:
    str r3, [sp, #256]
.L02042a90:
    str r2, [sp, #260]
.L02042a94:
    ldr r7, [pc, #-1968]
.L02042a98:
    blx r7
.L02042a9c:
    ldr r2, [sp, #388]
.L02042aa0:
    ldr r1, [sp, #84]
.L02042aa4:
    mov r3, r2, asr #31
.L02042aa8:
    mov r3, r3, lsl #24
.L02042aac:
    mov r0, r1
.L02042ab0:
    mov r1, r0, asr #31
.L02042ab4:
    orr r3, r3, r2, lsr #8
.L02042ab8:
    mov r2, r2, lsl #24
.L02042abc:
    strd r0, [sp, #40]
.L02042ac0:
    b .L02042814
.L02042ac4:
    mov r3, sl, asr #16
.L02042ac8:
    mov r2, fp, asr #16
.L02042acc:
    str r3, [sp, #224]
.L02042ad0:
    str r2, [sp, #228]
.L02042ad4:
    add r0, sp, #372
.L02042ad8:
    ldr r2, [pc, #-2036]
.L02042adc:
    add r1, sp, #224
.L02042ae0:
    blx r2
.L02042ae4:
    ldr r2, [sp, #372]
.L02042ae8:
    mov r4, sl
.L02042aec:
    mov r5, r4, asr #31
.L02042af0:
    mov r3, r2, asr #31
.L02042af4:
    mov r3, r3, lsl #24
.L02042af8:
    orr r3, r3, r2, lsr #8
.L02042afc:
    mov r2, r2, lsl #24
.L02042b00:
    strd r4, [sp, #24]
.L02042b04:
    b .L020423fc
.L02042b08:
    ldr r4, [sp, #92]
.L02042b0c:
    ldr r5, [sp, #96]
.L02042b10:
    mov r3, r4, asr #16
.L02042b14:
    mov r2, r5, asr #16
.L02042b18:
    str r3, [sp, #288]
.L02042b1c:
    str r2, [sp, #292]
.L02042b20:
    add r0, sp, #404
.L02042b24:
    add r1, sp, #288
.L02042b28:
    ldr r7, [pc, #-2116]
.L02042b2c:
    blx r7
.L02042b30:
    ldr r2, [sp, #404]
.L02042b34:
    mov sl, r4
.L02042b38:
    mov fp, sl, asr #31
.L02042b3c:
    mov r3, r2, asr #31
.L02042b40:
    mov r3, r3, lsl #24
.L02042b44:
    orr r3, r3, r2, lsr #8
.L02042b48:
    mov r2, r2, lsl #24
.L02042b4c:
    b .L020427b4
.L02042b50:
    mov r0, r5
.L02042b54:
    bl reconstructed_external_arm_0209787c
.L02042b58:
    str r0, [sp, #116]
.L02042b5c:
    b .L0204133c
.L02042b60:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
.L02042b64:
    ldr r5, [r0, #8]
.L02042b68:
    sub sp, sp, #28
.L02042b6c:
    cmp r5, #2
.L02042b70:
    mov r6, r0
.L02042b74:
    mov r8, r1
.L02042b78:
    mov r7, r2
.L02042b7c:
    movle r5, #0
.L02042b80:
    bgt .L02042b90
.L02042b84:
    mov r0, r5
.L02042b88:
    add sp, sp, #28
.L02042b8c:
    ldmia sp!, {r4, r5, r6, r7, r8, sl, pc}
.L02042b90:
    sub r4, r5, #2
.L02042b94:
    mov r0, r4, lsl #3
.L02042b98:
    add r0, r0, #8
.L02042b9c:
    bl reconstructed_external_arm_0209787c
.L02042ba0:
    mov r3, #8
.L02042ba4:
    cmp r4, #0
.L02042ba8:
    stmia r0, {r3, r4}
.L02042bac:
    add sl, r0, r3
.L02042bb0:
    beq .L02042bd4
.L02042bb4:
    mov r4, r5
.L02042bb8:
    mov r5, sl
.L02042bbc:
    mov r0, r5
.L02042bc0:
    sub r4, r4, #1
.L02042bc4:
    bl reconstructed_external_arm_02046030
.L02042bc8:
    cmp r4, #2
.L02042bcc:
    add r5, r5, #8
.L02042bd0:
    bne .L02042bbc
.L02042bd4:
    mov r0, r6
.L02042bd8:
    bl .L0203ebe4
.L02042bdc:
    cmp r0, #0
.L02042be0:
    beq .L02042c7c
.L02042be4:
    add r4, sp, #4
.L02042be8:
    mov r0, r4
.L02042bec:
    bl .L0203eab8
.L02042bf0:
    mov r0, r4
.L02042bf4:
    mov r1, r6
.L02042bf8:
    bl .L0203f6b0
.L02042bfc:
    ldmib sp, {r0, r1, r2}
.L02042c00:
    bl .L0203edd8
.L02042c04:
    ldmib sp, {r0, r1, r2}
.L02042c08:
    mov r3, sl
.L02042c0c:
    bl .L020410c4
.L02042c10:
    mov r5, r0
.L02042c14:
    mov r0, r4
.L02042c18:
    bl .L020403a8
.L02042c1c:
    cmp r5, #0
.L02042c20:
    mvnle r5, #0
.L02042c24:
    ble .L02042b84
.L02042c28:
    mov r1, r5
.L02042c2c:
    mov r2, r8
.L02042c30:
    mov r3, r7
.L02042c34:
    mov r0, sl
.L02042c38:
    bl .L020406d0
.L02042c3c:
    cmp sl, #0
.L02042c40:
    mov r5, r0
.L02042c44:
    beq .L02042b84
.L02042c48:
    ldr r3, [sl, #-4]
.L02042c4c:
    mov r3, r3, lsl #3
.L02042c50:
    add r4, sl, r3
.L02042c54:
    cmp sl, r4
.L02042c58:
    beq .L02042c70
.L02042c5c:
    sub r4, r4, #8
.L02042c60:
    mov r0, r4
.L02042c64:
    bl reconstructed_external_arm_02045f98
.L02042c68:
    cmp sl, r4
.L02042c6c:
    bne .L02042c5c
.L02042c70:
    sub r0, sl, #8
.L02042c74:
    bl reconstructed_external_arm_02097888
.L02042c78:
    b .L02042b84
.L02042c7c:
    ldmia r6, {r0, r1, r2}
.L02042c80:
    mov r3, sl
.L02042c84:
    bl .L020410c4
.L02042c88:
    mov r5, r0
.L02042c8c:
    b .L02042c1c
.L02042c90:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L02042c94:
    ldr r3, [r0, #8]
.L02042c98:
    sub sp, sp, #228
.L02042c9c:
    sub r3, r3, #3
.L02042ca0:
    cmp r3, #5
.L02042ca4:
    str r0, [sp, #96]
.L02042ca8:
    movhi r0, #0
.L02042cac:
    movls r2, #1
.L02042cb0:
    str r1, [sp, #92]
.L02042cb4:
    strhi r0, [sp, #104]
.L02042cb8:
    mvnls r1, #0
.L02042cbc:
    strhi r0, [sp, #140]
.L02042cc0:
    ldr r0, [sp, #96]
.L02042cc4:
    strls r2, [sp, #140]
.L02042cc8:
    strls r1, [sp, #104]
.L02042ccc:
    bl .L0203ec10
.L02042cd0:
    cmp r0, #0
.L02042cd4:
    moveq r3, #1
.L02042cd8:
    streq r0, [sp, #140]
.L02042cdc:
    ldr r0, [sp, #96]
.L02042ce0:
    streq r3, [sp, #104]
.L02042ce4:
    bl .L0203eccc
.L02042ce8:
    cmp r0, #0
.L02042cec:
    moveq r4, #2
.L02042cf0:
    streq r0, [sp, #140]
.L02042cf4:
    ldr r1, [sp, #96]
.L02042cf8:
    add r0, sp, #188
.L02042cfc:
    streq r4, [sp, #104]
.L02042d00:
    bl .L0203ead4
.L02042d04:
    ldr r9, [sp, #96]
.L02042d08:
    ldr r3, [sp, #188]
.L02042d0c:
    ldr r4, [r9, #8]
.L02042d10:
    cmp r3, #3
.L02042d14:
    movle r5, #3
.L02042d18:
    movle r8, #0
.L02042d1c:
    mov r0, r4, lsl #3
.L02042d20:
    strle r5, [sp, #104]
.L02042d24:
    strle r8, [sp, #140]
.L02042d28:
    bl reconstructed_external_arm_0209787c
.L02042d2c:
    cmp r4, #0
.L02042d30:
    str r0, [sp, #108]
.L02042d34:
    beq .L02042d64
.L02042d38:
    mov r1, #0
.L02042d3c:
    mov r2, r1
.L02042d40:
    mov r0, r1
.L02042d44:
    ldr sl, [sp, #108]
.L02042d48:
    add r1, r1, #1
.L02042d4c:
    add r3, r2, sl
.L02042d50:
    cmp r4, r1
.L02042d54:
    str r0, [r2, sl]
.L02042d58:
    str r0, [r3, #4]
.L02042d5c:
    add r2, r2, #8
.L02042d60:
    bne .L02042d44
.L02042d64:
    ldr fp, [sp, #96]
.L02042d68:
    ldr r4, [fp, #8]
.L02042d6c:
    mov r0, r4, lsl #3
.L02042d70:
    bl reconstructed_external_arm_0209787c
.L02042d74:
    cmp r4, #0
.L02042d78:
    str r0, [sp, #112]
.L02042d7c:
    beq .L02042dac
.L02042d80:
    mov r1, #0
.L02042d84:
    mov r2, r1
.L02042d88:
    mov r0, r1
.L02042d8c:
    ldr ip, [sp, #112]
.L02042d90:
    add r1, r1, #1
.L02042d94:
    add r3, r2, ip
.L02042d98:
    cmp r4, r1
.L02042d9c:
    str r0, [r2, ip]
.L02042da0:
    str r0, [r3, #4]
.L02042da4:
    add r2, r2, #8
.L02042da8:
    bne .L02042d8c
.L02042dac:
    ldr ip, [sp, #96]
.L02042db0:
    mov r0, #0
.L02042db4:
    ldr ip, [ip, #8]
.L02042db8:
    str r0, [sp, #136]
.L02042dbc:
    cmp r0, ip
.L02042dc0:
    str ip, [sp, #144]
.L02042dc4:
    bge .L02043050
.L02042dc8:
    ldr lr, [sp, #96]
.L02042dcc:
    ldr r5, [sp, #112]
.L02042dd0:
    ldmia lr, {r4, lr}
.L02042dd4:
    ldr r8, [sp, #136]
.L02042dd8:
    ldr r3, [sp, #144]
.L02042ddc:
    ldr r1, [r4, r0, lsl #2]
.L02042de0:
    ldr r2, [lr, r0, lsl #2]
.L02042de4:
    add r9, r0, #1
.L02042de8:
    cmp r9, r3
.L02042dec:
    add r3, r5, r8
.L02042df0:
    str r2, [r3, #4]
.L02042df4:
    str r1, [r8, r5]
.L02042df8:
    movge r3, #0
.L02042dfc:
    movlt r3, r9, lsl #2
.L02042e00:
    mov r0, r0, lsl #2
.L02042e04:
    ldr r1, [r0, lr]
.L02042e08:
    ldr r2, [lr, r3]
.L02042e0c:
    ldr ip, [r4, r3]
.L02042e10:
    ldr lr, [r0, r4]
.L02042e14:
    ldr r0, [pc, #2944]
.L02042e18:
    rsb ip, lr, ip
.L02042e1c:
    smull r4, r5, ip, r0
.L02042e20:
    rsb r2, r1, r2
.L02042e24:
    mov r3, r2, asr #31
.L02042e28:
    mov r3, r3, lsl #16
.L02042e2c:
    orr r3, r3, r2, lsr #16
.L02042e30:
    mov r2, r2, lsl #16
.L02042e34:
    ldr fp, [sp, #136]
.L02042e38:
    mov r4, r4, lsr #16
.L02042e3c:
    mov r2, r2, lsr #16
.L02042e40:
    ldr sl, [sp, #108]
.L02042e44:
    orr r2, r2, r3, lsl #16
.L02042e48:
    orr r4, r4, r5, lsl #16
.L02042e4c:
    ldr ip, [sp, #108]
.L02042e50:
    eor r1, r4, r4, asr #31
.L02042e54:
    sub r1, r1, r4, asr #31
.L02042e58:
    eor r0, r2, r2, asr #31
.L02042e5c:
    sub r0, r0, r2, asr #31
.L02042e60:
    add sl, sl, fp
.L02042e64:
    str r2, [fp, ip]
.L02042e68:
    add r0, r1, r0
.L02042e6c:
    str r4, [sl, #4]
.L02042e70:
    mov r6, r2
.L02042e74:
    str sl, [sp, #116]
.L02042e78:
    bl reconstructed_external_arm_02083618
.L02042e7c:
    mov r1, #931135488
.L02042e80:
    bl reconstructed_external_arm_020836f4
.L02042e84:
    mov r1, #0
.L02042e88:
    mov r8, r4
.L02042e8c:
    mov r4, r0
.L02042e90:
    bl reconstructed_external_arm_02083a84
.L02042e94:
    cmp r0, #0
.L02042e98:
    mov r5, r5, asr #16
.L02042e9c:
    bne .L0204302c
.L02042ea0:
    mov r0, r4
.L02042ea4:
    bl reconstructed_external_arm_02082c68
.L02042ea8:
    ldr r2, [pc, #2800]
.L02042eac:
    ldr r3, [pc, #2800]
.L02042eb0:
    bl reconstructed_external_arm_02083298
.L02042eb4:
    cmp r0, #0
.L02042eb8:
    beq .L020435a0
.L02042ebc:
    mov sl, r6, lsl #8
.L02042ec0:
    mov fp, r8, lsl #8
.L02042ec4:
    eor r3, fp, fp, asr #31
.L02042ec8:
    sub r3, r3, fp, asr #31
.L02042ecc:
    eor r0, sl, sl, asr #31
.L02042ed0:
    sub r0, r0, sl, asr #31
.L02042ed4:
    add r0, r3, r0
.L02042ed8:
    bl reconstructed_external_arm_02083618
.L02042edc:
    mov r1, #931135488
.L02042ee0:
    bl reconstructed_external_arm_020836f4
.L02042ee4:
    mov r1, #0
.L02042ee8:
    mov r4, r0
.L02042eec:
    bl reconstructed_external_arm_02083a84
.L02042ef0:
    cmp r0, #0
.L02042ef4:
    bne .L0204302c
.L02042ef8:
    mov r0, r4
.L02042efc:
    bl reconstructed_external_arm_02082c68
.L02042f00:
    ldr r2, [pc, #2712]
.L02042f04:
    ldr r3, [pc, #2712]
.L02042f08:
    bl reconstructed_external_arm_02083298
.L02042f0c:
    cmp r0, #0
.L02042f10:
    beq .L02043738
.L02042f14:
    mov r3, r6, lsl #16
.L02042f18:
    mov r2, r8, lsl #16
.L02042f1c:
    str r3, [sp, #156]
.L02042f20:
    str r2, [sp, #160]
.L02042f24:
    add r0, sp, #208
.L02042f28:
    add r1, sp, #156
.L02042f2c:
    ldr ip, [pc, #2676]
.L02042f30:
    blx ip
.L02042f34:
    ldr r2, [sp, #208]
.L02042f38:
    mov r3, r2, asr #31
.L02042f3c:
    mov r3, r3, lsl #8
.L02042f40:
    orr r3, r3, r2, lsr #24
.L02042f44:
    mov r2, r2, lsl #8
.L02042f48:
    mov r2, r2, lsr #16
.L02042f4c:
    orr r2, r2, r3, lsl #16
.L02042f50:
    mov r3, r2, asr #31
.L02042f54:
    mov r3, r3, lsl #8
.L02042f58:
    orr r3, r3, r2, lsr #24
.L02042f5c:
    mov r2, r2, lsl #8
.L02042f60:
    mov r2, r2, lsr #16
.L02042f64:
    orr r2, r2, r3, lsl #16
.L02042f68:
    mov lr, r2
.L02042f6c:
    cmp lr, #3
.L02042f70:
    ble .L0204302c
.L02042f74:
    ldr fp, [sp, #116]
.L02042f78:
    ldr r3, [pc, #2604]
.L02042f7c:
    mov ip, #1
.L02042f80:
    ldr r2, [fp]
.L02042f84:
    strh ip, [r3, #128]
.L02042f88:
    mov r1, r3
.L02042f8c:
    ldrh r3, [r1, #128]
.L02042f90:
    tst r3, #32768
.L02042f94:
    bne .L02042f8c
.L02042f98:
    mov r3, r2, asr #31
.L02042f9c:
    mov r3, r3, lsl #16
.L02042fa0:
    orr r3, r3, r2, lsr #16
.L02042fa4:
    mov r0, #67108864
.L02042fa8:
    mov r2, r2, lsl #16
.L02042fac:
    ldr r4, [pc, #2552]
.L02042fb0:
    strd r2, [r1, #144]
.L02042fb4:
    str lr, [r0, #664]
.L02042fb8:
    ldrh r3, [r4, #128]
.L02042fbc:
    tst r3, #32768
.L02042fc0:
    bne .L02042fb8
.L02042fc4:
    mov r1, #67108864
.L02042fc8:
    ldr r3, [r1, #672]
.L02042fcc:
    ldr ip, [sp, #116]
.L02042fd0:
    mov r5, #1
.L02042fd4:
    str r3, [ip], #4
.L02042fd8:
    ldr r3, [sp, #116]
.L02042fdc:
    ldr r0, [pc, #2504]
.L02042fe0:
    ldr r2, [r3, #4]
.L02042fe4:
    strh r5, [r4, #128]
.L02042fe8:
    ldrh r3, [r0, #128]
.L02042fec:
    tst r3, #32768
.L02042ff0:
    bne .L02042fe8
.L02042ff4:
    mov r3, r2, asr #31
.L02042ff8:
    mov r3, r3, lsl #16
.L02042ffc:
    orr r3, r3, r2, lsr #16
.L02043000:
    mov r8, #67108864
.L02043004:
    mov r2, r2, lsl #16
.L02043008:
    ldr r1, [pc, #2460]
.L0204300c:
    strd r2, [r0, #144]
.L02043010:
    str lr, [r8, #664]
.L02043014:
    ldrh r3, [r1, #128]
.L02043018:
    tst r3, #32768
.L0204301c:
    bne .L02043014
.L02043020:
    mov sl, #67108864
.L02043024:
    ldr r3, [sl, #672]
.L02043028:
    str r3, [ip]
.L0204302c:
    ldr ip, [sp, #96]
.L02043030:
    ldr fp, [sp, #136]
.L02043034:
    ldr ip, [ip, #8]
.L02043038:
    mov r0, r9
.L0204303c:
    add fp, fp, #8
.L02043040:
    cmp r0, ip
.L02043044:
    str fp, [sp, #136]
.L02043048:
    str ip, [sp, #144]
.L0204304c:
    blt .L02042dc8
.L02043050:
    cmp ip, #0
.L02043054:
    ble .L02043550
.L02043058:
    ldr r3, [pc, #2384]
.L0204305c:
    ldr r2, [pc, #2384]
.L02043060:
    ldr r1, [r3]
.L02043064:
    ldr r2, [r2]
.L02043068:
    mov r0, #0
.L0204306c:
    rsb r1, r1, #0
.L02043070:
    str r2, [sp, #12]
.L02043074:
    str r0, [sp, #132]
.L02043078:
    str r1, [sp, #16]
.L0204307c:
    mov r6, r0
.L02043080:
    cmp r6, #0
.L02043084:
    ldreq r2, [sp, #144]
.L02043088:
    subne r1, r6, #1
.L0204308c:
    subeq r1, r2, #1
.L02043090:
    ldr r4, [sp, #108]
.L02043094:
    mov r3, r1, lsl #3
.L02043098:
    add r4, r4, r3
.L0204309c:
    str r4, [sp, #100]
.L020430a0:
    ldr r9, [sp, #108]
.L020430a4:
    ldr r5, [sp, #132]
.L020430a8:
    ldr sl, [sp, #100]
.L020430ac:
    add r8, r5, r9
.L020430b0:
    ldr ip, [r9, r3]
.L020430b4:
    ldr lr, [sl, #4]
.L020430b8:
    ldr r2, [r8, #4]
.L020430bc:
    ldr r4, [r5, r9]
.L020430c0:
    smull r0, r1, r2, ip
.L020430c4:
    smull r2, r3, r4, lr
.L020430c8:
    mov r0, r0, lsr #16
.L020430cc:
    mov r2, r2, lsr #16
.L020430d0:
    orr r0, r0, r1, lsl #16
.L020430d4:
    orr r2, r2, r3, lsl #16
.L020430d8:
    rsb r0, r2, r0
.L020430dc:
    ldr r3, [pc, #2232]
.L020430e0:
    cmp r0, #65536
.L020430e4:
    mov r2, #65536
.L020430e8:
    str r2, [sp, #200]
.L020430ec:
    str r0, [sp, #192]
.L020430f0:
    str r3, [sp, #196]
.L020430f4:
    addlt r2, sp, #192
.L020430f8:
    addge r2, sp, #200
.L020430fc:
    ldr r2, [r2]
.L02043100:
    ldr r3, [sp, #196]
.L02043104:
    str r2, [sp, #204]
.L02043108:
    cmp r2, r3
.L0204310c:
    addlt r0, sp, #196
.L02043110:
    addge r0, sp, #204
.L02043114:
    ldr r0, [r0]
.L02043118:
    bl reconstructed_external_arm_02083618
.L0204311c:
    mov r1, #931135488
.L02043120:
    bl reconstructed_external_arm_020836f4
.L02043124:
    bl reconstructed_external_arm_020978a0
.L02043128:
    ldr r1, [pc, #2184]
.L0204312c:
    bl reconstructed_external_arm_020836f4
.L02043130:
    bl reconstructed_external_arm_02083afc
.L02043134:
    ldr fp, [pc, #2176]
.L02043138:
    ldr r3, [fp]
.L0204313c:
    cmp r0, r3
.L02043140:
    ble .L020438ec
.L02043144:
    ldr ip, [sp, #96]
.L02043148:
    ldr ip, [ip, #8]
.L0204314c:
    cmp ip, #0
.L02043150:
    str ip, [sp, #144]
.L02043154:
    ble .L020436f8
.L02043158:
    ldr r0, [sp, #108]
.L0204315c:
    ldr lr, [sp, #132]
.L02043160:
    ldr r1, [sp, #112]
.L02043164:
    ldr lr, [lr, r0]
.L02043168:
    ldr r0, [sp, #132]
.L0204316c:
    ldr r2, [sp, #132]
.L02043170:
    ldr r3, [sp, #112]
.L02043174:
    ldr r0, [r0, r1]
.L02043178:
    ldr r8, [r8, #4]
.L0204317c:
    add r1, r6, #1
.L02043180:
    add r2, r2, r3
.L02043184:
    str r8, [sp, #20]
.L02043188:
    str lr, [sp, #28]
.L0204318c:
    str r0, [sp, #32]
.L02043190:
    mov r4, #0
.L02043194:
    str r1, [sp, #24]
.L02043198:
    str r2, [sp, #36]
.L0204319c:
    cmp r6, r4
.L020431a0:
    ldr r0, [sp, #24]
.L020431a4:
    ldr r1, [sp, #144]
.L020431a8:
    beq .L0204321c
.L020431ac:
    bl reconstructed_external_arm_02097870
.L020431b0:
    ldr r5, [sp, #112]
.L020431b4:
    mov r3, r4, lsl #3
.L020431b8:
    cmp r1, r4
.L020431bc:
    add r3, r3, r5
.L020431c0:
    beq .L0204321c
.L020431c4:
    ldr r8, [sp, #36]
.L020431c8:
    ldr ip, [r3, #4]
.L020431cc:
    ldr r2, [r8, #4]
.L020431d0:
    ldr r3, [r5, r4, lsl #3]
.L020431d4:
    ldr r9, [sp, #32]
.L020431d8:
    ldr sl, [sp, #28]
.L020431dc:
    ldr fp, [sp, #20]
.L020431e0:
    rsb r3, r9, r3
.L020431e4:
    rsb ip, r2, ip
.L020431e8:
    smull r0, r1, r3, sl
.L020431ec:
    smull r2, r3, ip, fp
.L020431f0:
    mov r0, r0, lsr #16
.L020431f4:
    mov r2, r2, lsr #16
.L020431f8:
    orr r0, r0, r1, lsl #16
.L020431fc:
    orr r2, r2, r3, lsl #16
.L02043200:
    ldr ip, [sp, #16]
.L02043204:
    add r0, r0, r2
.L02043208:
    cmp r0, ip
.L0204320c:
    movge lr, #5
.L02043210:
    movge r0, #0
.L02043214:
    strge lr, [sp, #104]
.L02043218:
    strge r0, [sp, #140]
.L0204321c:
    ldr r1, [sp, #144]
.L02043220:
    add r4, r4, #1
.L02043224:
    cmp r4, r1
.L02043228:
    bne .L0204319c
.L0204322c:
    ldr r8, [sp, #144]
.L02043230:
    cmp r8, #0
.L02043234:
    movle r9, #0
.L02043238:
    strle r9, [sp, #124]
.L0204323c:
    strle r9, [sp, #148]
.L02043240:
    strle r9, [sp, #128]
.L02043244:
    ble .L0204335c
.L02043248:
    ldr ip, [sp, #112]
.L0204324c:
    mov sl, #0
.L02043250:
    str sl, [sp, #124]
.L02043254:
    add fp, ip, #8
.L02043258:
    str sl, [sp, #120]
.L0204325c:
    str sl, [sp, #148]
.L02043260:
    str sl, [sp, #128]
.L02043264:
    ldr lr, [sp, #120]
.L02043268:
    ldr r0, [sp, #144]
.L0204326c:
    add lr, lr, #1
.L02043270:
    ldr r3, [sp, #112]
.L02043274:
    cmp lr, r0
.L02043278:
    movlt r3, fp
.L0204327c:
    ldr r4, [fp, #-4]
.L02043280:
    ldr r8, [fp, #-8]
.L02043284:
    ldr ip, [r3]
.L02043288:
    str lr, [sp, #120]
.L0204328c:
    ldr lr, [r3, #4]
.L02043290:
    smull r2, r3, r4, ip
.L02043294:
    smull r0, r1, r8, lr
.L02043298:
    mov r2, r2, lsr #16
.L0204329c:
    mov r0, r0, lsr #16
.L020432a0:
    orr r0, r0, r1, lsl #16
.L020432a4:
    orr r2, r2, r3, lsl #16
.L020432a8:
    rsb r0, r2, r0
.L020432ac:
    mov r6, r0
.L020432b0:
    mov r7, r6, asr #31
.L020432b4:
    mov r7, r7, lsl #15
.L020432b8:
    orr r7, r7, r6, lsr #17
.L020432bc:
    mov r6, r6, lsl #15
.L020432c0:
    ldr r0, [pc, #1784]
.L020432c4:
    mov r6, r6, lsr #16
.L020432c8:
    orr r6, r6, r7, lsl #16
.L020432cc:
    smull r2, r3, r6, r0
.L020432d0:
    add r1, r4, lr
.L020432d4:
    mov r2, r2, lsr #16
.L020432d8:
    mov r4, r1
.L020432dc:
    mov r5, r4, asr #31
.L020432e0:
    add r8, r8, ip
.L020432e4:
    orr r2, r2, r3, lsl #16
.L020432e8:
    mov r3, r2, asr #31
.L020432ec:
    strd r4, [sp, #80]
.L020432f0:
    mov r9, r8, asr #31
.L020432f4:
    mul ip, r2, r9
.L020432f8:
    ldr sl, [sp, #84]
.L020432fc:
    ldr lr, [sp, #80]
.L02043300:
    mul sl, r2, sl
.L02043304:
    umull r4, r5, r2, lr
.L02043308:
    mla lr, r8, r3, ip
.L0204330c:
    ldr ip, [sp, #80]
.L02043310:
    umull r0, r1, r2, r8
.L02043314:
    mla ip, r3, ip, sl
.L02043318:
    mov r4, r4, lsr #16
.L0204331c:
    ldr r3, [sp, #124]
.L02043320:
    add r5, ip, r5
.L02043324:
    orr r4, r4, r5, lsl #16
.L02043328:
    ldr r2, [sp, #148]
.L0204332c:
    add r3, r3, r4
.L02043330:
    add r1, lr, r1
.L02043334:
    ldr r4, [sp, #128]
.L02043338:
    mov r0, r0, lsr #16
.L0204333c:
    orr r0, r0, r1, lsl #16
.L02043340:
    add r2, r2, r0
.L02043344:
    add r4, r4, r6
.L02043348:
    str r2, [sp, #148]
.L0204334c:
    str r3, [sp, #124]
.L02043350:
    str r4, [sp, #128]
.L02043354:
    add fp, fp, #8
.L02043358:
    bne .L02043264
.L0204335c:
    ldr r3, [pc, #1608]
.L02043360:
    mov r5, #1
.L02043364:
    strh r5, [r3, #128]
.L02043368:
    mov r1, r3
.L0204336c:
    ldrh r3, [r1, #128]
.L02043370:
    tst r3, #32768
.L02043374:
    bne .L0204336c
.L02043378:
    mov r9, #1
.L0204337c:
    mov r8, #0
.L02043380:
    strd r8, [r1, #144]
.L02043384:
    ldr r9, [sp, #128]
.L02043388:
    mov r3, #67108864
.L0204338c:
    ldr r2, [pc, #1560]
.L02043390:
    str r9, [r3, #664]
.L02043394:
    ldrh r3, [r2, #128]
.L02043398:
    tst r3, #32768
.L0204339c:
    bne .L02043394
.L020433a0:
    mov r3, #67108864
.L020433a4:
    ldr r4, [r3, #672]
.L020433a8:
    ldr sl, [sp, #148]
.L020433ac:
    mov r5, r4, asr #31
.L020433b0:
    mov r6, sl
.L020433b4:
    mov r7, r6, asr #31
.L020433b8:
    mul r1, r6, r5
.L020433bc:
    ldr fp, [sp, #124]
.L020433c0:
    mla lr, r4, r7, r1
.L020433c4:
    mov r8, fp
.L020433c8:
    mov r9, r8, asr #31
.L020433cc:
    mul ip, r4, r9
.L020433d0:
    umull r2, r3, r6, r4
.L020433d4:
    umull r0, r1, r4, r8
.L020433d8:
    mla r6, r8, r5, ip
.L020433dc:
    ldr r5, [sp, #100]
.L020433e0:
    add r3, lr, r3
.L020433e4:
    ldr ip, [sp, #36]
.L020433e8:
    ldr r8, [sp, #32]
.L020433ec:
    mov r2, r2, lsr #16
.L020433f0:
    ldr lr, [r5]
.L020433f4:
    orr r2, r2, r3, lsl #16
.L020433f8:
    rsb r2, r2, r8
.L020433fc:
    ldr r4, [ip, #4]
.L02043400:
    ldr ip, [r5, #4]
.L02043404:
    add r1, r6, r1
.L02043408:
    mov r0, r0, lsr #16
.L0204340c:
    mov r6, r2
.L02043410:
    mov r7, r6, asr #31
.L02043414:
    mov r2, lr
.L02043418:
    mov r3, r2, asr #31
.L0204341c:
    mov sl, ip
.L02043420:
    mov fp, sl, asr #31
.L02043424:
    orr r0, r0, r1, lsl #16
.L02043428:
    mul r1, r2, r7
.L0204342c:
    strd sl, [sp, #72]
.L02043430:
    ldr fp, [sp, #20]
.L02043434:
    rsb r4, r0, r4
.L02043438:
    mov sl, fp
.L0204343c:
    mov fp, sl, asr #31
.L02043440:
    strd sl, [sp, #48]
.L02043444:
    ldr ip, [sp, #72]
.L02043448:
    mla fp, r6, r3, r1
.L0204344c:
    umull r0, r1, r2, r6
.L02043450:
    mov r5, r4, asr #31
.L02043454:
    mul ip, r5, ip
.L02043458:
    mov r3, r1
.L0204345c:
    ldr r9, [sp, #28]
.L02043460:
    ldr r1, [sp, #76]
.L02043464:
    mov r8, r9
.L02043468:
    mov r9, r8, asr #31
.L0204346c:
    mla r1, r4, r1, ip
.L02043470:
    stmia sp, {r8, r9}
.L02043474:
    ldr ip, [sp]
.L02043478:
    ldr r8, [sp, #72]
.L0204347c:
    mov r2, r0
.L02043480:
    str r1, [sp, #68]
.L02043484:
    ldr lr, [sp, #4]
.L02043488:
    umull r0, r1, r8, r4
.L0204348c:
    umull r8, r9, r6, ip
.L02043490:
    mul lr, r6, lr
.L02043494:
    ldr ip, [sp, #48]
.L02043498:
    ldr sl, [sp, #52]
.L0204349c:
    strd r8, [sp, #56]
.L020434a0:
    mul sl, r4, sl
.L020434a4:
    umull r8, r9, r4, ip
.L020434a8:
    ldr ip, [sp]
.L020434ac:
    strd r8, [sp, #40]
.L020434b0:
    mla ip, r7, ip, lr
.L020434b4:
    ldr lr, [sp, #48]
.L020434b8:
    ldr r8, [sp, #60]
.L020434bc:
    mla lr, r5, lr, sl
.L020434c0:
    ldr r4, [sp, #68]
.L020434c4:
    add r9, lr, r9
.L020434c8:
    add r3, fp, r3
.L020434cc:
    mov r2, r2, lsr #16
.L020434d0:
    ldr r5, [sp, #12]
.L020434d4:
    add r8, ip, r8
.L020434d8:
    str r9, [sp, #44]
.L020434dc:
    orr r2, r2, r3, lsl #16
.L020434e0:
    add r1, r4, r1
.L020434e4:
    mov r0, r0, lsr #16
.L020434e8:
    ldr r9, [sp, #56]
.L020434ec:
    ldr ip, [sp, #40]
.L020434f0:
    rsb r2, r5, r2
.L020434f4:
    orr r0, r0, r1, lsl #16
.L020434f8:
    ldr lr, [sp, #44]
.L020434fc:
    cmn r2, r0
.L02043500:
    mov r2, r9, lsr #16
.L02043504:
    mov r0, ip, lsr #16
.L02043508:
    str r8, [sp, #60]
.L0204350c:
    orr r2, r2, r8, lsl #16
.L02043510:
    orr r0, r0, lr, lsl #16
.L02043514:
    bmi .L02043524
.L02043518:
    rsb r3, r5, r2
.L0204351c:
    cmn r3, r0
.L02043520:
    bpl .L02043534
.L02043524:
    mov r5, #6
.L02043528:
    mov r8, #0
.L0204352c:
    str r5, [sp, #104]
.L02043530:
    str r8, [sp, #140]
.L02043534:
    ldr sl, [sp, #132]
.L02043538:
    ldr r6, [sp, #24]
.L0204353c:
    ldr r9, [sp, #144]
.L02043540:
    add sl, sl, #8
.L02043544:
    cmp r6, r9
.L02043548:
    str sl, [sp, #132]
.L0204354c:
    blt .L02043080
.L02043550:
    ldr r4, [sp, #140]
.L02043554:
    ldr fp, [sp, #112]
.L02043558:
    cmp fp, #0
.L0204355c:
    beq .L02043568
.L02043560:
    mov r0, fp
.L02043564:
    bl reconstructed_external_arm_02097888
.L02043568:
    ldr ip, [sp, #108]
.L0204356c:
    cmp ip, #0
.L02043570:
    beq .L0204357c
.L02043574:
    mov r0, ip
.L02043578:
    bl reconstructed_external_arm_02097888
.L0204357c:
    ldr lr, [sp, #140]
.L02043580:
    cmp lr, #0
.L02043584:
    bne .L02043594
.L02043588:
    ldr r0, [sp, #92]
.L0204358c:
    cmp r0, #0
.L02043590:
    bne .L020437dc
.L02043594:
    mov r0, r4
.L02043598:
    add sp, sp, #228
.L0204359c:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L020435a0:
    mov r0, r4
.L020435a4:
    ldr r1, [pc, #1048]
.L020435a8:
    bl reconstructed_external_arm_02083a9c
.L020435ac:
    cmp r0, #0
.L020435b0:
    beq .L02043644
.L020435b4:
    mov r2, r6
.L020435b8:
    mov r3, r2, asr #31
.L020435bc:
    mov r0, r8
.L020435c0:
    mov r1, r0, asr #31
.L020435c4:
    mul lr, r0, r1
.L020435c8:
    mul ip, r2, r3
.L020435cc:
    umull r6, r7, r0, r0
.L020435d0:
    umull r4, r5, r2, r2
.L020435d4:
    ldr r3, [pc, #976]
.L020435d8:
    mov ip, ip, lsl #1
.L020435dc:
    mov lr, lr, lsl #1
.L020435e0:
    add r5, ip, r5
.L020435e4:
    add r7, lr, r7
.L020435e8:
    mov r1, #1
.L020435ec:
    mov r0, r4, lsr #16
.L020435f0:
    mov sl, r6, lsr #16
.L020435f4:
    strh r1, [r3, #176]
.L020435f8:
    mov ip, r3
.L020435fc:
    orr r0, r0, r5, lsl #16
.L02043600:
    orr sl, sl, r7, lsl #16
.L02043604:
    ldrh r3, [ip, #176]
.L02043608:
    tst r3, #32768
.L0204360c:
    bne .L02043604
.L02043610:
    add r2, r0, sl
.L02043614:
    mov r3, r2, asr #31
.L02043618:
    mov r3, r3, lsl #16
.L0204361c:
    orr r3, r3, r2, lsr #16
.L02043620:
    mov r2, r2, lsl #16
.L02043624:
    strd r2, [ip, #184]
.L02043628:
    ldr r2, [pc, #892]
.L0204362c:
    ldrh r3, [r2, #176]
.L02043630:
    tst r3, #32768
.L02043634:
    bne .L0204362c
.L02043638:
    mov r2, #67108864
.L0204363c:
    ldr lr, [r2, #692]
.L02043640:
    b .L02042f6c
.L02043644:
    mov sl, r6, asr #8
.L02043648:
    mov fp, r8, asr #8
.L0204364c:
    eor r3, fp, fp, asr #31
.L02043650:
    sub r3, r3, fp, asr #31
.L02043654:
    eor r0, sl, sl, asr #31
.L02043658:
    sub r0, r0, sl, asr #31
.L0204365c:
    add r0, r3, r0
.L02043660:
    bl reconstructed_external_arm_02083618
.L02043664:
    mov r1, #931135488
.L02043668:
    bl reconstructed_external_arm_020836f4
.L0204366c:
    mov r1, #0
.L02043670:
    mov r4, r0
.L02043674:
    bl reconstructed_external_arm_02083a84
.L02043678:
    cmp r0, #0
.L0204367c:
    bne .L0204302c
.L02043680:
    mov r0, r4
.L02043684:
    bl reconstructed_external_arm_02082c68
.L02043688:
    ldr r2, [pc, #784]
.L0204368c:
    ldr r3, [pc, #784]
.L02043690:
    bl reconstructed_external_arm_02083298
.L02043694:
    cmp r0, #0
.L02043698:
    beq .L02043810
.L0204369c:
    mov r3, sl, lsl #8
.L020436a0:
    mov r2, fp, lsl #8
.L020436a4:
    str r3, [sp, #172]
.L020436a8:
    str r2, [sp, #176]
.L020436ac:
    add r0, sp, #216
.L020436b0:
    add r1, sp, #172
.L020436b4:
    ldr ip, [pc, #748]
.L020436b8:
    blx ip
.L020436bc:
    ldr r2, [sp, #216]
.L020436c0:
    mov r3, r2, asr #31
.L020436c4:
    mov r3, r3, lsl #8
.L020436c8:
    orr r3, r3, r2, lsr #24
.L020436cc:
    mov r2, r2, lsl #8
.L020436d0:
    mov r2, r2, lsr #16
.L020436d4:
    orr r2, r2, r3, lsl #16
.L020436d8:
    mov r3, r2, asr #31
.L020436dc:
    mov r3, r3, lsl #24
.L020436e0:
    orr r3, r3, r2, lsr #8
.L020436e4:
    mov r2, r2, lsl #24
.L020436e8:
    mov r2, r2, lsr #16
.L020436ec:
    orr r2, r2, r3, lsl #16
.L020436f0:
    mov lr, r2
.L020436f4:
    b .L02042f6c
.L020436f8:
    ldr r3, [sp, #108]
.L020436fc:
    ldr r2, [sp, #132]
.L02043700:
    ldr r4, [sp, #112]
.L02043704:
    ldr r2, [r2, r3]
.L02043708:
    ldr r3, [sp, #132]
.L0204370c:
    ldr r5, [sp, #132]
.L02043710:
    ldr r3, [r3, r4]
.L02043714:
    ldr r8, [r8, #4]
.L02043718:
    add r6, r6, #1
.L0204371c:
    add r4, r5, r4
.L02043720:
    str r8, [sp, #20]
.L02043724:
    str r2, [sp, #28]
.L02043728:
    str r3, [sp, #32]
.L0204372c:
    str r6, [sp, #24]
.L02043730:
    str r4, [sp, #36]
.L02043734:
    b .L0204322c
.L02043738:
    mov r0, r4
.L0204373c:
    ldr r1, [pc, #640]
.L02043740:
    bl reconstructed_external_arm_02083a9c
.L02043744:
    cmp r0, #0
.L02043748:
    beq .L020438b4
.L0204374c:
    mov r2, sl
.L02043750:
    mov r3, r2, asr #31
.L02043754:
    mov r0, fp
.L02043758:
    mov r1, r0, asr #31
.L0204375c:
    mul ip, r2, r3
.L02043760:
    mul lr, r0, r1
.L02043764:
    umull r6, r7, r0, r0
.L02043768:
    umull r4, r5, r2, r2
.L0204376c:
    ldr r3, [pc, #568]
.L02043770:
    mov ip, ip, lsl #1
.L02043774:
    mov lr, lr, lsl #1
.L02043778:
    add r5, ip, r5
.L0204377c:
    add r7, lr, r7
.L02043780:
    mov r0, r4, lsr #16
.L02043784:
    mov lr, #1
.L02043788:
    mov sl, r6, lsr #16
.L0204378c:
    strh lr, [r3, #176]
.L02043790:
    mov ip, r3
.L02043794:
    orr r0, r0, r5, lsl #16
.L02043798:
    orr sl, sl, r7, lsl #16
.L0204379c:
    ldrh r3, [ip, #176]
.L020437a0:
    tst r3, #32768
.L020437a4:
    bne .L0204379c
.L020437a8:
    add r2, r0, sl
.L020437ac:
    mov r3, r2, asr #31
.L020437b0:
    mov r3, r3, lsl #16
.L020437b4:
    orr r3, r3, r2, lsr #16
.L020437b8:
    mov r2, r2, lsl #16
.L020437bc:
    strd r2, [ip, #184]
.L020437c0:
    ldr r2, [pc, #484]
.L020437c4:
    ldrh r3, [r2, #176]
.L020437c8:
    tst r3, #32768
.L020437cc:
    bne .L020437c4
.L020437d0:
    mov r0, #67108864
.L020437d4:
    ldr r2, [r0, #692]
.L020437d8:
    b .L02042f50
.L020437dc:
    ldr r0, [pc, #484]
.L020437e0:
    bl reconstructed_external_arm_020978ac
.L020437e4:
    ldr r1, [sp, #104]
.L020437e8:
    cmp r1, #6
.L020437ec:
    ldrls pc, [pc, r1, lsl #2]
.L020437f0:
    b .L02043938
.L020437f4:
    .long .L02043944  /* switch target */
.L020437f8:
    .long .L02043954  /* switch target */
.L020437fc:
    .long .L02043960  /* switch target */
.L02043800:
    .long .L0204396c  /* switch target */
.L02043804:
    .long .L02043978  /* switch target */
.L02043808:
    .long .L02043984  /* switch target */
.L0204380c:
    .long .L02043990  /* switch target */
.L02043810:
    mov r0, r4
.L02043814:
    ldr r1, [pc, #424]
.L02043818:
    bl reconstructed_external_arm_02083a9c
.L0204381c:
    cmp r0, #0
.L02043820:
    beq .L02043900
.L02043824:
    mov r2, sl
.L02043828:
    mov r3, r2, asr #31
.L0204382c:
    mov r0, fp
.L02043830:
    mov r1, r0, asr #31
.L02043834:
    mul ip, r2, r3
.L02043838:
    mul lr, r0, r1
.L0204383c:
    umull r6, r7, r0, r0
.L02043840:
    umull r4, r5, r2, r2
.L02043844:
    ldr r3, [pc, #352]
.L02043848:
    mov ip, ip, lsl #1
.L0204384c:
    mov lr, lr, lsl #1
.L02043850:
    add r5, ip, r5
.L02043854:
    add r7, lr, r7
.L02043858:
    mov r8, #1
.L0204385c:
    mov r0, r4, lsr #16
.L02043860:
    mov sl, r6, lsr #16
.L02043864:
    strh r8, [r3, #176]
.L02043868:
    mov ip, r3
.L0204386c:
    orr r0, r0, r5, lsl #16
.L02043870:
    orr sl, sl, r7, lsl #16
.L02043874:
    ldrh r3, [ip, #176]
.L02043878:
    tst r3, #32768
.L0204387c:
    bne .L02043874
.L02043880:
    add r2, r0, sl
.L02043884:
    mov r3, r2, asr #31
.L02043888:
    mov r3, r3, lsl #16
.L0204388c:
    orr r3, r3, r2, lsr #16
.L02043890:
    mov r2, r2, lsl #16
.L02043894:
    strd r2, [ip, #184]
.L02043898:
    ldr r2, [pc, #268]
.L0204389c:
    ldrh r3, [r2, #176]
.L020438a0:
    tst r3, #32768
.L020438a4:
    bne .L0204389c
.L020438a8:
    mov sl, #67108864
.L020438ac:
    ldr r2, [sl, #692]
.L020438b0:
    b .L020436d8
.L020438b4:
    mov r3, sl, asr #8
.L020438b8:
    mov r2, fp, asr #8
.L020438bc:
    str r3, [sp, #164]
.L020438c0:
    str r2, [sp, #168]
.L020438c4:
    add r0, sp, #212
.L020438c8:
    add r1, sp, #164
.L020438cc:
    ldr ip, [pc, #212]
.L020438d0:
    blx ip
.L020438d4:
    ldr r2, [sp, #212]
.L020438d8:
    mov r3, r2, asr #31
.L020438dc:
    mov r3, r3, lsl #24
.L020438e0:
    orr r3, r3, r2, lsr #8
.L020438e4:
    mov r2, r2, lsl #24
.L020438e8:
    b .L02042f48
.L020438ec:
    mov r4, #0
.L020438f0:
    mov lr, #4
.L020438f4:
    str lr, [sp, #104]
.L020438f8:
    str r4, [sp, #140]
.L020438fc:
    b .L02043554
.L02043900:
    mov r3, r6, asr #16
.L02043904:
    mov r2, r8, asr #16
.L02043908:
    str r3, [sp, #180]
.L0204390c:
    str r2, [sp, #184]
.L02043910:
    add r0, sp, #220
.L02043914:
    add r1, sp, #180
.L02043918:
    ldr ip, [pc, #136]
.L0204391c:
    blx ip
.L02043920:
    ldr r2, [sp, #220]
.L02043924:
    mov r3, r2, asr #31
.L02043928:
    mov r3, r3, lsl #24
.L0204392c:
    orr r3, r3, r2, lsr #8
.L02043930:
    mov r2, r2, lsl #24
.L02043934:
    b .L020436d0
.L02043938:
    ldr r0, [pc, #140]
.L0204393c:
    bl reconstructed_external_arm_020978b8
.L02043940:
    b .L02043594
.L02043944:
    mov r1, #8
.L02043948:
    ldr r0, [pc, #128]
.L0204394c:
    bl reconstructed_external_arm_020978ac
.L02043950:
    b .L02043594
.L02043954:
    ldr r0, [pc, #120]
.L02043958:
    bl reconstructed_external_arm_020978b8
.L0204395c:
    b .L02043594
.L02043960:
    ldr r0, [pc, #112]
.L02043964:
    bl reconstructed_external_arm_020978b8
.L02043968:
    b .L02043594
.L0204396c:
    ldr r0, [pc, #104]
.L02043970:
    bl reconstructed_external_arm_020978b8
.L02043974:
    b .L02043594
.L02043978:
    ldr r0, [pc, #96]
.L0204397c:
    bl reconstructed_external_arm_020978b8
.L02043980:
    b .L02043594
.L02043984:
    ldr r0, [pc, #88]
.L02043988:
    bl reconstructed_external_arm_020978b8
.L0204398c:
    b .L02043594
.L02043990:
    ldr r0, [pc, #80]
.L02043994:
    bl reconstructed_external_arm_020978b8
.L02043998:
    b .L02043594
.L0204399c:
    .long 0xffff0000  /* literal data */
.L020439a0:
    .long 0x9999999a  /* literal data */
.L020439a4:
    .long 0x3fb99999  /* literal data */
.L020439a8:
    .long 0x0209390c  /* literal data */
.L020439ac:
    .long 0x04000200  /* literal data */
.L020439b0:
    .long 0x020cae60  /* literal data */
.L020439b4:
    .long 0x020cae90  /* literal data */
.L020439b8:
    .long 0x47800000  /* literal data */
.L020439bc:
    .long 0x020cae64  /* literal data */
.L020439c0:
    .long 0x00005555  /* literal data */
.L020439c4:
    .long 0x43340000  /* literal data */
.L020439c8:
    .long 0x020c398c  /* literal data */
.L020439cc:
    .long 0x020c3a98  /* literal data */
.L020439d0:
    .long 0x020c39a4  /* literal data */
.L020439d4:
    .long 0x020c39cc  /* literal data */
.L020439d8:
    .long 0x020c39dc  /* literal data */
.L020439dc:
    .long 0x020c3a08  /* literal data */
.L020439e0:
    .long 0x020c3a1c  /* literal data */
.L020439e4:
    .long 0x020c3a40  /* literal data */
.L020439e8:
    .long 0x020c3a58  /* literal data */
.L020439ec:
    str lr, [sp, #-4]!
.L020439f0:
    mov r1, #0
.L020439f4:
    sub sp, sp, #4
.L020439f8:
    bl .L02042c90
.L020439fc:
    add sp, sp, #4
.L02043a00:
    ldmia sp!, {pc}
.L02043a04:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L02043a08:
    ldr r5, [r1, #8]
.L02043a0c:
    sub sp, sp, #268
.L02043a10:
    cmp r5, #2
.L02043a14:
    mov r6, r1
.L02043a18:
    str r2, [sp, #36]
.L02043a1c:
    str r3, [sp, #32]
.L02043a20:
    bgt .L02043a38
.L02043a24:
    mov fp, #0
.L02043a28:
    str fp, [sp, #60]
.L02043a2c:
    ldr r0, [sp, #60]
.L02043a30:
    add sp, sp, #268
.L02043a34:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02043a38:
    sub r4, r5, #2
.L02043a3c:
    mov r3, r4, lsl #4
.L02043a40:
    mov r0, r4, lsl #2
.L02043a44:
    add r0, r0, r3
.L02043a48:
    add r0, r0, #8
.L02043a4c:
    bl reconstructed_external_arm_0209787c
.L02043a50:
    mov r3, #20
.L02043a54:
    stmia r0, {r3, r4}
.L02043a58:
    cmp r4, #0
.L02043a5c:
    add r0, r0, #8
.L02043a60:
    str r0, [sp, #40]
.L02043a64:
    beq .L02043a88
.L02043a68:
    mov r4, r5
.L02043a6c:
    mov r5, r0
.L02043a70:
    mov r0, r5
.L02043a74:
    sub r4, r4, #1
.L02043a78:
    bl .L0203eab8
.L02043a7c:
    cmp r4, #2
.L02043a80:
    add r5, r5, #20
.L02043a84:
    bne .L02043a70
.L02043a88:
    ldr r2, [r6, #8]
.L02043a8c:
    mov r0, r6
.L02043a90:
    sub r2, r2, #2
.L02043a94:
    ldr r1, [sp, #40]
.L02043a98:
    bl .L02042b60
.L02043a9c:
    cmn r0, #1
.L02043aa0:
    str r0, [sp, #56]
.L02043aa4:
    beq .L02043a24
.L02043aa8:
    ldr r2, [r6, #8]
.L02043aac:
    mov r1, r2, lsl #5
.L02043ab0:
    mov r0, r2, lsl #3
.L02043ab4:
    add r0, r0, r1
.L02043ab8:
    mov r3, r0, lsl #2
.L02043abc:
    add r0, r0, r3
.L02043ac0:
    add r0, r0, #8
.L02043ac4:
    mov r4, r2, lsl #1
.L02043ac8:
    bl reconstructed_external_arm_0209787c
.L02043acc:
    mov r3, #100
.L02043ad0:
    add r1, r0, #8
.L02043ad4:
    cmp r4, #0
.L02043ad8:
    str r1, [sp, #44]
.L02043adc:
    stmia r0, {r3, r4}
.L02043ae0:
    str r1, [sp, #60]
.L02043ae4:
    beq .L02043b6c
.L02043ae8:
    mov ip, #0
.L02043aec:
    ldr r6, [pc, #2660]
.L02043af0:
    add r0, r0, #40
.L02043af4:
    mov r1, ip
.L02043af8:
    mvn r5, #0
.L02043afc:
    mov lr, ip
.L02043b00:
    ldr r3, [pc, #2644]
.L02043b04:
    mov r2, #1
.L02043b08:
    str r3, [r0, #-20]
.L02043b0c:
    mvn r3, #0
.L02043b10:
    strh r2, [r0, #-8]
.L02043b14:
    strb r5, [r0, #-28]
.L02043b18:
    str r1, [r0, #-24]
.L02043b1c:
    str r1, [r0, #-16]
.L02043b20:
    str r1, [r0, #-12]
.L02043b24:
    strh r3, [r0, #-6]
.L02043b28:
    strh r1, [r0, #-4]
.L02043b2c:
    strb lr, [r0, #-2]
.L02043b30:
    str r6, [r0, #-32]
.L02043b34:
    mov r2, r1
.L02043b38:
    add r3, r0, r2
.L02043b3c:
    str r1, [r2, r0]
.L02043b40:
    add r2, r2, #8
.L02043b44:
    cmp r2, #64
.L02043b48:
    str r1, [r3, #4]
.L02043b4c:
    bne .L02043b38
.L02043b50:
    add ip, ip, #1
.L02043b54:
    mov r3, #1
.L02043b58:
    cmp r4, ip
.L02043b5c:
    strb r3, [r0, #-28]
.L02043b60:
    str r1, [r0, #64]
.L02043b64:
    addne r0, r0, #100
.L02043b68:
    bne .L02043b00
.L02043b6c:
    ldr r4, [sp, #56]
.L02043b70:
    cmp r4, #0
.L02043b74:
    ble .L02044174
.L02043b78:
    ldr r6, [sp, #40]
.L02043b7c:
    mov r5, #0
.L02043b80:
    str r5, [sp, #68]
.L02043b84:
    str r6, [sp, #148]
.L02043b88:
    str r5, [sp, #64]
.L02043b8c:
    ldr sl, [sp, #64]
.L02043b90:
    ldr fp, [sp, #68]
.L02043b94:
    ldr ip, [sp, #32]
.L02043b98:
    add r3, sl, fp
.L02043b9c:
    mov r1, r3, lsl #4
.L02043ba0:
    mov r3, r3, lsl #2
.L02043ba4:
    add r3, r3, r1
.L02043ba8:
    ldr r4, [sp, #44]
.L02043bac:
    mov r2, r3, lsl #2
.L02043bb0:
    add r3, r3, r2
.L02043bb4:
    add r3, r4, r3
.L02043bb8:
    ldr r2, [ip, #16]
.L02043bbc:
    str r3, [sp, #72]
.L02043bc0:
    ldr r0, [ip, #20]
.L02043bc4:
    str r2, [r3, #16]
.L02043bc8:
    ldr sl, [sp, #72]
.L02043bcc:
    ldr r2, [ip, #8]
.L02043bd0:
    ldr r1, [ip, #12]
.L02043bd4:
    str r0, [r3, #20]
.L02043bd8:
    ldr r6, [sp, #148]
.L02043bdc:
    str r2, [sl, #8]
.L02043be0:
    ldr fp, [sp, #32]
.L02043be4:
    ldr r0, [sp, #32]
.L02043be8:
    ldr r2, [sp, #32]
.L02043bec:
    mov r5, #0
.L02043bf0:
    str r1, [r3, #12]
.L02043bf4:
    ldr r4, [r6, #8]
.L02043bf8:
    str r5, [sp, #204]
.L02043bfc:
    ldrb r3, [ip, #4]
.L02043c00:
    ldrh r0, [r0, #26]
.L02043c04:
    ldrh fp, [fp, #24]
.L02043c08:
    ldrh r2, [r2, #28]
.L02043c0c:
    ldr r1, [r6, #12]
.L02043c10:
    ldrb ip, [r6, #16]
.L02043c14:
    strh r0, [sl, #26]
.L02043c18:
    strb r3, [sl, #4]
.L02043c1c:
    strh fp, [sl, #24]
.L02043c20:
    strh r2, [sl, #28]
.L02043c24:
    mov r0, r4, lsl #2
.L02043c28:
    str r1, [sp, #204]
.L02043c2c:
    strb ip, [sp, #208]
.L02043c30:
    str r4, [sp, #200]
.L02043c34:
    bl reconstructed_external_arm_0209787c
.L02043c38:
    cmp r4, r5
.L02043c3c:
    beq .L02043c58
.L02043c40:
    mov r3, r5
.L02043c44:
    mov r2, r5
.L02043c48:
    str r2, [r0, r3, lsl #2]
.L02043c4c:
    add r3, r3, #1
.L02043c50:
    cmp r4, r3
.L02043c54:
    bne .L02043c48
.L02043c58:
    ldr r4, [sp, #200]
.L02043c5c:
    str r0, [sp, #192]
.L02043c60:
    mov r0, r4, lsl #2
.L02043c64:
    bl reconstructed_external_arm_0209787c
.L02043c68:
    cmp r4, #0
.L02043c6c:
    mov ip, r0
.L02043c70:
    beq .L02043c8c
.L02043c74:
    mov r3, #0
.L02043c78:
    mov r2, r3
.L02043c7c:
    str r2, [ip, r3, lsl #2]
.L02043c80:
    add r3, r3, #1
.L02043c84:
    cmp r4, r3
.L02043c88:
    bne .L02043c7c
.L02043c8c:
    ldr r3, [sp, #148]
.L02043c90:
    ldr r2, [sp, #200]
.L02043c94:
    ldr r1, [r3]
.L02043c98:
    mov r2, r2, lsl #2
.L02043c9c:
    ldr r0, [sp, #192]
.L02043ca0:
    str ip, [sp, #196]
.L02043ca4:
    bl reconstructed_external_arm_0209781c
.L02043ca8:
    ldr r2, [sp, #200]
.L02043cac:
    ldr r4, [sp, #148]
.L02043cb0:
    ldr r0, [sp, #196]
.L02043cb4:
    mov r2, r2, lsl #2
.L02043cb8:
    ldr r1, [r4, #4]
.L02043cbc:
    bl reconstructed_external_arm_0209781c
.L02043cc0:
    ldr r3, [sp, #200]
.L02043cc4:
    cmp r3, #3
.L02043cc8:
    bne .L02044134
.L02043ccc:
    ldr r3, [pc, #2188]
.L02043cd0:
    ldr r6, [sp, #192]
.L02043cd4:
    ldr r3, [r3]
.L02043cd8:
    ldr sl, [sp, #196]
.L02043cdc:
    mov r5, #0
.L02043ce0:
    mvn fp, #3
.L02043ce4:
    str r5, [sp, #76]
.L02043ce8:
    str r3, [sp, #128]
.L02043cec:
    str r6, [sp, #48]
.L02043cf0:
    str sl, [sp, #52]
.L02043cf4:
    str r5, [sp, #140]
.L02043cf8:
    str fp, [sp, #144]
.L02043cfc:
    ldr ip, [sp, #76]
.L02043d00:
    cmp ip, #0
.L02043d04:
    moveq r0, #8
.L02043d08:
    streq r0, [sp, #136]
.L02043d0c:
    beq .L020441d0
.L02043d10:
    ldr r1, [sp, #76]
.L02043d14:
    cmp r1, #2
.L02043d18:
    bne .L020441c8
.L02043d1c:
    ldr r2, [sp, #144]
.L02043d20:
    mov r3, #0
.L02043d24:
    str r2, [sp, #136]
.L02043d28:
    str r3, [sp, #132]
.L02043d2c:
    ldr fp, [sp, #140]
.L02043d30:
    ldr r0, [sp, #52]
.L02043d34:
    ldr ip, [sp, #136]
.L02043d38:
    ldr sl, [sp, #48]
.L02043d3c:
    ldr ip, [ip, r0]
.L02043d40:
    ldr r8, [fp, r0]
.L02043d44:
    ldr r6, [sp, #136]
.L02043d48:
    rsb r2, ip, r8
.L02043d4c:
    ldr r6, [r6, sl]
.L02043d50:
    ldr r9, [fp, sl]
.L02043d54:
    mov r0, r2
.L02043d58:
    mov r1, r0, asr #31
.L02043d5c:
    rsb r3, r6, r9
.L02043d60:
    strd r0, [sp, #88]
.L02043d64:
    str r6, [sp, #120]
.L02043d68:
    ldr r5, [sp, #132]
.L02043d6c:
    ldr r6, [sp, #48]
.L02043d70:
    mov sl, r3
.L02043d74:
    mov fp, sl, asr #31
.L02043d78:
    ldr lr, [sp, #92]
.L02043d7c:
    ldr r5, [r5, r6]
.L02043d80:
    ldr r4, [sp, #88]
.L02043d84:
    str ip, [sp, #124]
.L02043d88:
    mul ip, sl, fp
.L02043d8c:
    mul lr, r0, lr
.L02043d90:
    umull r2, r3, sl, sl
.L02043d94:
    umull r0, r1, r4, r4
.L02043d98:
    str r5, [sp, #80]
.L02043d9c:
    ldr r6, [sp, #132]
.L02043da0:
    ldr r5, [sp, #52]
.L02043da4:
    ldr r4, [pc, #1976]
.L02043da8:
    mov ip, ip, lsl #1
.L02043dac:
    ldr r6, [r6, r5]
.L02043db0:
    add r3, ip, r3
.L02043db4:
    mov lr, lr, lsl #1
.L02043db8:
    mov ip, #1
.L02043dbc:
    strh ip, [r4, #176]
.L02043dc0:
    str r6, [sp, #84]
.L02043dc4:
    add r1, lr, r1
.L02043dc8:
    mov ip, r4
.L02043dcc:
    mov r6, r0, lsr #16
.L02043dd0:
    mov r4, r2, lsr #16
.L02043dd4:
    orr r4, r4, r3, lsl #16
.L02043dd8:
    orr r6, r6, r1, lsl #16
.L02043ddc:
    ldrh r3, [ip, #176]
.L02043de0:
    tst r3, #32768
.L02043de4:
    bne .L02043ddc
.L02043de8:
    add r2, r4, r6
.L02043dec:
    mov r3, r2, asr #31
.L02043df0:
    mov r3, r3, lsl #16
.L02043df4:
    orr r3, r3, r2, lsr #16
.L02043df8:
    mov r2, r2, lsl #16
.L02043dfc:
    strd r2, [ip, #184]
.L02043e00:
    ldr lr, [pc, #1884]
.L02043e04:
    ldrh r3, [lr, #176]
.L02043e08:
    tst r3, #32768
.L02043e0c:
    bne .L02043e04
.L02043e10:
    ldr r1, [sp, #84]
.L02043e14:
    ldr r0, [sp, #80]
.L02043e18:
    rsb r2, r8, r1
.L02043e1c:
    mov r4, r2
.L02043e20:
    mov r5, r4, asr #31
.L02043e24:
    strd r4, [sp, #104]
.L02043e28:
    rsb r3, r9, r0
.L02043e2c:
    ldr ip, [sp, #108]
.L02043e30:
    mov r8, r3
.L02043e34:
    mov r9, r8, asr #31
.L02043e38:
    ldr r6, [sp, #104]
.L02043e3c:
    mul ip, r4, ip
.L02043e40:
    mul r0, r8, r9
.L02043e44:
    umull r4, r5, r6, r6
.L02043e48:
    umull r2, r3, r8, r8
.L02043e4c:
    mov r1, #67108864
.L02043e50:
    ldr r1, [r1, #692]
.L02043e54:
    mov r0, r0, lsl #1
.L02043e58:
    mov ip, ip, lsl #1
.L02043e5c:
    add r3, r0, r3
.L02043e60:
    str r1, [sp, #100]
.L02043e64:
    add r5, ip, r5
.L02043e68:
    mov r1, #1
.L02043e6c:
    mov r6, r2, lsr #16
.L02043e70:
    mov r0, r4, lsr #16
.L02043e74:
    strh r1, [lr, #176]
.L02043e78:
    orr r6, r6, r3, lsl #16
.L02043e7c:
    mov r7, r3, asr #16
.L02043e80:
    orr r0, r0, r5, lsl #16
.L02043e84:
    ldr r2, [pc, #1752]
.L02043e88:
    ldrh r3, [r2, #176]
.L02043e8c:
    tst r3, #32768
.L02043e90:
    bne .L02043e84
.L02043e94:
    add r2, r6, r0
.L02043e98:
    mov r3, r2, asr #31
.L02043e9c:
    ldr r4, [pc, #1728]
.L02043ea0:
    mov r3, r3, lsl #16
.L02043ea4:
    orr r3, r3, r2, lsr #16
.L02043ea8:
    mov r2, r2, lsl #16
.L02043eac:
    strd r2, [r4, #184]
.L02043eb0:
    mov r2, r4
.L02043eb4:
    ldrh r3, [r2, #176]
.L02043eb8:
    tst r3, #32768
.L02043ebc:
    bne .L02043eb4
.L02043ec0:
    ldr r5, [sp, #100]
.L02043ec4:
    mov r3, #67108864
.L02043ec8:
    cmp r5, #0
.L02043ecc:
    ldr ip, [r3, #692]
.L02043ed0:
    ble .L02044144
.L02043ed4:
    cmp ip, #0
.L02043ed8:
    ble .L02044144
.L02043edc:
    mov r6, #1
.L02043ee0:
    ldr r1, [pc, #1660]
.L02043ee4:
    strh r6, [r2, #128]
.L02043ee8:
    ldrh r3, [r1, #128]
.L02043eec:
    tst r3, #32768
.L02043ef0:
    bne .L02043ee8
.L02043ef4:
    mov r3, fp, lsl #16
.L02043ef8:
    orr r3, r3, sl, lsr #16
.L02043efc:
    mov r2, sl, lsl #16
.L02043f00:
    ldr sl, [sp, #100]
.L02043f04:
    strd r2, [r1, #144]
.L02043f08:
    ldr r0, [pc, #1620]
.L02043f0c:
    mov r1, #67108864
.L02043f10:
    str sl, [r1, #664]
.L02043f14:
    ldrh r3, [r0, #128]
.L02043f18:
    tst r3, #32768
.L02043f1c:
    bne .L02043f14
.L02043f20:
    mov r3, #67108864
.L02043f24:
    mov fp, #1
.L02043f28:
    ldr r1, [pc, #1588]
.L02043f2c:
    ldr r5, [r3, #672]
.L02043f30:
    strh fp, [r0, #128]
.L02043f34:
    ldrh r3, [r1, #128]
.L02043f38:
    tst r3, #32768
.L02043f3c:
    bne .L02043f34
.L02043f40:
    ldr r0, [sp, #92]
.L02043f44:
    ldr r4, [sp, #88]
.L02043f48:
    mov r3, r0, lsl #16
.L02043f4c:
    orr r3, r3, r4, lsr #16
.L02043f50:
    mov r2, r4, lsl #16
.L02043f54:
    ldr sl, [sp, #100]
.L02043f58:
    strd r2, [r1, #144]
.L02043f5c:
    ldr r0, [pc, #1536]
.L02043f60:
    mov r1, #67108864
.L02043f64:
    str sl, [r1, #664]
.L02043f68:
    ldrh r3, [r0, #128]
.L02043f6c:
    tst r3, #32768
.L02043f70:
    bne .L02043f68
.L02043f74:
    mov r3, #67108864
.L02043f78:
    mov fp, #1
.L02043f7c:
    ldr r1, [pc, #1504]
.L02043f80:
    ldr lr, [r3, #672]
.L02043f84:
    strh fp, [r0, #128]
.L02043f88:
    ldrh r3, [r1, #128]
.L02043f8c:
    tst r3, #32768
.L02043f90:
    bne .L02043f88
.L02043f94:
    mov r3, r9, lsl #16
.L02043f98:
    orr r3, r3, r8, lsr #16
.L02043f9c:
    mov r2, r8, lsl #16
.L02043fa0:
    strd r2, [r1, #144]
.L02043fa4:
    ldr r0, [pc, #1464]
.L02043fa8:
    mov r1, #67108864
.L02043fac:
    str ip, [r1, #664]
.L02043fb0:
    ldrh r3, [r0, #128]
.L02043fb4:
    tst r3, #32768
.L02043fb8:
    bne .L02043fb0
.L02043fbc:
    mov r3, #67108864
.L02043fc0:
    mov r2, #1
.L02043fc4:
    ldr r1, [pc, #1432]
.L02043fc8:
    ldr r6, [r3, #672]
.L02043fcc:
    strh r2, [r0, #128]
.L02043fd0:
    ldrh r3, [r1, #128]
.L02043fd4:
    tst r3, #32768
.L02043fd8:
    bne .L02043fd0
.L02043fdc:
    ldr r4, [sp, #108]
.L02043fe0:
    ldr sl, [sp, #104]
.L02043fe4:
    mov r3, r4, lsl #16
.L02043fe8:
    orr r3, r3, sl, lsr #16
.L02043fec:
    mov r2, sl, lsl #16
.L02043ff0:
    strd r2, [r1, #144]
.L02043ff4:
    mov r1, #67108864
.L02043ff8:
    str ip, [r1, #664]
.L02043ffc:
    ldr ip, [pc, #1376]
.L02044000:
    ldrh r3, [ip, #128]
.L02044004:
    tst r3, #32768
.L02044008:
    bne .L02043ffc
.L0204400c:
    mov r0, lr
.L02044010:
    mov r1, r0, asr #31
.L02044014:
    strd r0, [sp, #112]
.L02044018:
    ldr r1, [sp, #116]
.L0204401c:
    mov r7, r6, asr #31
.L02044020:
    mul r1, r6, r1
.L02044024:
    mov r3, #67108864
.L02044028:
    mov r8, r5
.L0204402c:
    mov r9, r8, asr #31
.L02044030:
    ldr r4, [r3, #672]
.L02044034:
    mla r0, r7, r0, r1
.L02044038:
    mul fp, r8, r7
.L0204403c:
    ldr ip, [sp, #116]
.L02044040:
    mov r5, r4, asr #31
.L02044044:
    ldr sl, [sp, #112]
.L02044048:
    mul ip, r4, ip
.L0204404c:
    str r0, [sp, #12]
.L02044050:
    str fp, [sp, #8]
.L02044054:
    umull r0, r1, r6, sl
.L02044058:
    umull sl, fp, r8, r6
.L0204405c:
    mul r3, r8, r5
.L02044060:
    str ip, [sp, #4]
.L02044064:
    ldr ip, [sp, #112]
.L02044068:
    strd sl, [sp, #24]
.L0204406c:
    umull sl, fp, r4, ip
.L02044070:
    mla lr, r4, r9, r3
.L02044074:
    umull r2, r3, r8, r4
.L02044078:
    strd sl, [sp, #16]
.L0204407c:
    ldr sl, [sp, #12]
.L02044080:
    add r3, lr, r3
.L02044084:
    add r1, sl, r1
.L02044088:
    ldr fp, [sp, #4]
.L0204408c:
    mov r2, r2, lsr #16
.L02044090:
    mov r0, r0, lsr #16
.L02044094:
    orr r0, r0, r1, lsl #16
.L02044098:
    orr r2, r2, r3, lsl #16
.L0204409c:
    mla ip, r5, ip, fp
.L020440a0:
    rsb r2, r0, r2
.L020440a4:
    ldr r0, [sp, #128]
.L020440a8:
    cmp r2, #0
.L020440ac:
    rsblt r2, r2, #0
.L020440b0:
    ldr lr, [sp, #8]
.L020440b4:
    cmp r0, r2
.L020440b8:
    ldr r2, [sp, #20]
.L020440bc:
    mla lr, r6, r9, lr
.L020440c0:
    add r2, ip, r2
.L020440c4:
    ldr r1, [sp, #28]
.L020440c8:
    str r2, [sp, #20]
.L020440cc:
    ldr r3, [sp, #24]
.L020440d0:
    ldr r6, [sp, #16]
.L020440d4:
    ldr sl, [sp, #20]
.L020440d8:
    add r1, lr, r1
.L020440dc:
    mov r0, r3, lsr #16
.L020440e0:
    mov r2, r6, lsr #16
.L020440e4:
    str r1, [sp, #28]
.L020440e8:
    orr r0, r0, r1, lsl #16
.L020440ec:
    mov r5, r1
.L020440f0:
    orr r2, r2, sl, lsl #16
.L020440f4:
    mov fp, sl
.L020440f8:
    ble .L02044108
.L020440fc:
    add r3, r0, r2
.L02044100:
    cmp r3, #0
.L02044104:
    bgt .L02044204
.L02044108:
    ldr ip, [sp, #76]
.L0204410c:
    ldr r0, [sp, #140]
.L02044110:
    ldr r1, [sp, #144]
.L02044114:
    add ip, ip, #1
.L02044118:
    add r0, r0, #4
.L0204411c:
    add r1, r1, #4
.L02044120:
    cmp ip, #3
.L02044124:
    str ip, [sp, #76]
.L02044128:
    str r0, [sp, #140]
.L0204412c:
    str r1, [sp, #144]
.L02044130:
    bne .L02043cfc
.L02044134:
    ldr r0, [sp, #148]
.L02044138:
    bl .L020439ec
.L0204413c:
    cmp r0, #0
.L02044140:
    bne .L020441e0
.L02044144:
    ldr r0, [sp, #68]
.L02044148:
    add r0, r0, #1
.L0204414c:
    str r0, [sp, #68]
.L02044150:
    add r0, sp, #192
.L02044154:
    bl .L020403a8
.L02044158:
    ldr r3, [sp, #148]
.L0204415c:
    ldr r1, [sp, #56]
.L02044160:
    ldr r2, [sp, #68]
.L02044164:
    add r3, r3, #20
.L02044168:
    cmp r1, r2
.L0204416c:
    str r3, [sp, #148]
.L02044170:
    bne .L02043b8c
.L02044174:
    ldr r4, [sp, #40]
.L02044178:
    cmp r4, #0
.L0204417c:
    beq .L02043a2c
.L02044180:
    ldr r3, [r4, #-4]
.L02044184:
    ldr r5, [sp, #40]
.L02044188:
    mov r2, r3, lsl #4
.L0204418c:
    mov r3, r3, lsl #2
.L02044190:
    add r3, r3, r2
.L02044194:
    add r4, r4, r3
.L02044198:
    cmp r5, r4
.L0204419c:
    beq .L020441b8
.L020441a0:
    sub r4, r4, #20
.L020441a4:
    mov r0, r4
.L020441a8:
    bl .L020403a8
.L020441ac:
    ldr r6, [sp, #40]
.L020441b0:
    cmp r6, r4
.L020441b4:
    bne .L020441a0
.L020441b8:
    ldr sl, [sp, #40]
.L020441bc:
    sub r0, sl, #8
.L020441c0:
    bl reconstructed_external_arm_02097888
.L020441c4:
    b .L02043a2c
.L020441c8:
    ldr r4, [sp, #144]
.L020441cc:
    str r4, [sp, #136]
.L020441d0:
    ldr r5, [sp, #140]
.L020441d4:
    add r5, r5, #4
.L020441d8:
    str r5, [sp, #132]
.L020441dc:
    b .L02043d2c
.L020441e0:
    ldr r0, [sp, #148]
.L020441e4:
    ldr r1, [sp, #72]
.L020441e8:
    bl .L0203f2d4
.L020441ec:
    ldr r0, [sp, #36]
.L020441f0:
    ldr r1, [sp, #72]
.L020441f4:
    bl reconstructed_external_arm_02012360
.L020441f8:
    ldr r0, [sp, #36]
.L020441fc:
    bl reconstructed_external_arm_02012530
.L02044200:
    b .L02044144
.L02044204:
    ldr ip, [sp, #120]
.L02044208:
    ldr r0, [sp, #80]
.L0204420c:
    ldr r1, [sp, #124]
.L02044210:
    ldr r4, [sp, #84]
.L02044214:
    rsb r3, r0, ip
.L02044218:
    rsb r2, r4, r1
.L0204421c:
    mov sl, r2
.L02044220:
    mov fp, sl, asr #31
.L02044224:
    mov r8, r3
.L02044228:
    mov r9, r8, asr #31
.L0204422c:
    mul ip, r8, r9
.L02044230:
    mul lr, sl, fp
.L02044234:
    umull r2, r3, r8, r8
.L02044238:
    umull r0, r1, sl, sl
.L0204423c:
    ldr r5, [pc, #800]
.L02044240:
    mov r6, #1
.L02044244:
    mov ip, ip, lsl #1
.L02044248:
    mov lr, lr, lsl #1
.L0204424c:
    add r3, ip, r3
.L02044250:
    strh r6, [r5, #176]
.L02044254:
    add r1, lr, r1
.L02044258:
    mov r6, r2, lsr #16
.L0204425c:
    mov r4, r0, lsr #16
.L02044260:
    orr r6, r6, r3, lsl #16
.L02044264:
    mov r7, r3, asr #16
.L02044268:
    orr r4, r4, r1, lsl #16
.L0204426c:
    ldr ip, [pc, #752]
.L02044270:
    ldrh r3, [ip, #176]
.L02044274:
    tst r3, #32768
.L02044278:
    bne .L0204426c
.L0204427c:
    add r2, r6, r4
.L02044280:
    mov r3, r2, asr #31
.L02044284:
    mov r3, r3, lsl #16
.L02044288:
    orr r3, r3, r2, lsr #16
.L0204428c:
    mov r2, r2, lsl #16
.L02044290:
    strd r2, [ip, #184]
.L02044294:
    mov r2, ip
.L02044298:
    ldrh r3, [r2, #176]
.L0204429c:
    tst r3, #32768
.L020442a0:
    bne .L02044298
.L020442a4:
    mov r3, #67108864
.L020442a8:
    ldr r5, [r3, #692]
.L020442ac:
    cmp r5, #0
.L020442b0:
    beq .L02044144
.L020442b4:
    mov r0, #1
.L020442b8:
    ldr r1, [pc, #676]
.L020442bc:
    strh r0, [r2, #128]
.L020442c0:
    ldrh r3, [r1, #128]
.L020442c4:
    tst r3, #32768
.L020442c8:
    bne .L020442c0
.L020442cc:
    mov r3, r9, lsl #16
.L020442d0:
    orr r3, r3, r8, lsr #16
.L020442d4:
    mov r2, r8, lsl #16
.L020442d8:
    strd r2, [r1, #144]
.L020442dc:
    ldr r0, [pc, #640]
.L020442e0:
    mov r1, #67108864
.L020442e4:
    str r5, [r1, #664]
.L020442e8:
    ldrh r3, [r0, #128]
.L020442ec:
    tst r3, #32768
.L020442f0:
    bne .L020442e8
.L020442f4:
    mov r3, #67108864
.L020442f8:
    mov r2, #1
.L020442fc:
    ldr r1, [pc, #608]
.L02044300:
    ldr r9, [r3, #672]
.L02044304:
    strh r2, [r0, #128]
.L02044308:
    ldrh r3, [r1, #128]
.L0204430c:
    tst r3, #32768
.L02044310:
    bne .L02044308
.L02044314:
    mov r3, fp, lsl #16
.L02044318:
    orr r3, r3, sl, lsr #16
.L0204431c:
    mov r2, sl, lsl #16
.L02044320:
    strd r2, [r1, #144]
.L02044324:
    ldr r4, [pc, #568]
.L02044328:
    mov r1, #67108864
.L0204432c:
    str r5, [r1, #664]
.L02044330:
    ldrh r3, [r4, #128]
.L02044334:
    tst r3, #32768
.L02044338:
    bne .L02044330
.L0204433c:
    mov r3, #67108864
.L02044340:
    add r0, sp, #260
.L02044344:
    add r1, sp, #192
.L02044348:
    ldr r6, [r3, #672]
.L0204434c:
    bl .L0203ead4
.L02044350:
    ldr r2, [sp, #260]
.L02044354:
    mov r3, #1
.L02044358:
    strh r3, [r4, #128]
.L0204435c:
    mov r3, r2, asr #31
.L02044360:
    mov r3, r3, lsl #17
.L02044364:
    orr r3, r3, r2, lsr #15
.L02044368:
    mov r2, r2, lsl #17
.L0204436c:
    mov r0, r2, lsr #16
.L02044370:
    ldr ip, [pc, #492]
.L02044374:
    orr r0, r0, r3, lsl #16
.L02044378:
    ldrh r3, [ip, #128]
.L0204437c:
    tst r3, #32768
.L02044380:
    bne .L02044378
.L02044384:
    mov r2, r0
.L02044388:
    mov r3, r2, asr #31
.L0204438c:
    mov r3, r3, lsl #16
.L02044390:
    orr r3, r3, r2, lsr #16
.L02044394:
    mov r1, #67108864
.L02044398:
    mov r2, r2, lsl #16
.L0204439c:
    ldr r0, [pc, #448]
.L020443a0:
    strd r2, [ip, #144]
.L020443a4:
    str r5, [r1, #664]
.L020443a8:
    ldrh r3, [r0, #128]
.L020443ac:
    tst r3, #32768
.L020443b0:
    bne .L020443a8
.L020443b4:
    mov r3, #67108864
.L020443b8:
    ldr r4, [r3, #672]
.L020443bc:
    mov r0, r6
.L020443c0:
    mov r1, r0, asr #31
.L020443c4:
    mov r5, r4, asr #31
.L020443c8:
    mul ip, r0, r5
.L020443cc:
    umull r2, r3, r0, r4
.L020443d0:
    mla lr, r4, r1, ip
.L020443d4:
    ldr r7, [sp, #192]
.L020443d8:
    ldr r6, [sp, #140]
.L020443dc:
    add r3, lr, r3
.L020443e0:
    ldr r8, [r6, r7]
.L020443e4:
    rsb r0, r9, #0
.L020443e8:
    mov r2, r2, lsr #16
.L020443ec:
    mov r1, r0, asr #31
.L020443f0:
    orr r2, r2, r3, lsl #16
.L020443f4:
    add r8, r8, r2
.L020443f8:
    mul lr, r4, r1
.L020443fc:
    ldr sl, [sp, #136]
.L02044400:
    str r8, [sp, #248]
.L02044404:
    ldr ip, [sl, r7]
.L02044408:
    ldr fp, [sp, #140]
.L0204440c:
    str ip, [sp, #252]
.L02044410:
    mla r6, r0, r5, lr
.L02044414:
    umull r2, r3, r4, r0
.L02044418:
    ldr ip, [fp, r7]
.L0204441c:
    ldr r0, [sp, #196]
.L02044420:
    str ip, [sp, #256]
.L02044424:
    ldr lr, [fp, r0]
.L02044428:
    add r3, r6, r3
.L0204442c:
    mov r2, r2, lsr #16
.L02044430:
    orr r2, r2, r3, lsl #16
.L02044434:
    add lr, lr, r2
.L02044438:
    str lr, [sp, #236]
.L0204443c:
    ldr r3, [sl, r0]
.L02044440:
    ldr ip, [sp, #132]
.L02044444:
    str r3, [sp, #240]
.L02044448:
    ldr r2, [fp, r0]
.L0204444c:
    str r8, [sp, #224]
.L02044450:
    str r2, [sp, #244]
.L02044454:
    ldr r3, [fp, r7]
.L02044458:
    add r6, sp, #172
.L0204445c:
    str r3, [sp, #228]
.L02044460:
    ldr r2, [ip, r7]
.L02044464:
    str lr, [sp, #212]
.L02044468:
    str r2, [sp, #232]
.L0204446c:
    ldr r3, [fp, r0]
.L02044470:
    add r1, sp, #248
.L02044474:
    str r3, [sp, #216]
.L02044478:
    ldr ip, [ip, r0]
.L0204447c:
    add r2, sp, #236
.L02044480:
    mov r3, #3
.L02044484:
    mov r0, r6
.L02044488:
    add r5, sp, #152
.L0204448c:
    str ip, [sp, #220]
.L02044490:
    bl .L0203f208
.L02044494:
    add r1, sp, #224
.L02044498:
    add r2, sp, #212
.L0204449c:
    mov r3, #3
.L020444a0:
    mov r0, r5
.L020444a4:
    bl .L0203f208
.L020444a8:
    mov r0, r6
.L020444ac:
    bl .L020439ec
.L020444b0:
    cmp r0, #0
.L020444b4:
    bne .L020444dc
.L020444b8:
    mov r0, r5
.L020444bc:
    bl .L020439ec
.L020444c0:
    cmp r0, #0
.L020444c4:
    bne .L0204450c
.L020444c8:
    mov r0, r5
.L020444cc:
    bl .L020403a8
.L020444d0:
    mov r0, r6
.L020444d4:
    bl .L020403a8
.L020444d8:
    b .L02044144
.L020444dc:
    mov r0, r6
.L020444e0:
    ldr r1, [sp, #72]
.L020444e4:
    bl .L0203f2d4
.L020444e8:
    ldr r1, [sp, #72]
.L020444ec:
    ldr r0, [sp, #36]
.L020444f0:
    bl reconstructed_external_arm_02012360
.L020444f4:
    ldr r0, [sp, #36]
.L020444f8:
    bl reconstructed_external_arm_02012530
.L020444fc:
    ldr r4, [sp, #64]
.L02044500:
    add r4, r4, #1
.L02044504:
    str r4, [sp, #64]
.L02044508:
    b .L020444b8
.L0204450c:
    ldr sl, [sp, #64]
.L02044510:
    ldr fp, [sp, #68]
.L02044514:
    ldr ip, [sp, #44]
.L02044518:
    add r4, sl, fp
.L0204451c:
    mov r2, r4, lsl #4
.L02044520:
    mov r4, r4, lsl #2
.L02044524:
    add r4, r4, r2
.L02044528:
    mov r3, r4, lsl #2
.L0204452c:
    add r4, r4, r3
.L02044530:
    add r4, ip, r4
.L02044534:
    mov r0, r5
.L02044538:
    mov r1, r4
.L0204453c:
    bl .L0203f2d4
.L02044540:
    ldr r0, [sp, #36]
.L02044544:
    mov r1, r4
.L02044548:
    bl reconstructed_external_arm_02012360
.L0204454c:
    ldr r0, [sp, #36]
.L02044550:
    bl reconstructed_external_arm_02012530
.L02044554:
    b .L020444c8
.L02044558:
    .long 0x020c2640  /* literal data */
.L0204455c:
    .long 0x00003333  /* literal data */
.L02044560:
    .long 0x020cae64  /* literal data */
.L02044564:
    .long 0x04000200  /* literal data */
.L02044568:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0204456c:
    sub sp, sp, #252
.L02044570:
    str r0, [sp, #36]
.L02044574:
    ldr r0, [r0, #136]
.L02044578:
    str r1, [sp, #32]
.L0204457c:
    cmp r0, #0
.L02044580:
    streq r0, [sp, #40]
.L02044584:
    beq .L020449fc
.L02044588:
    ldr r1, [sp, #32]
.L0204458c:
    ldr r3, [sp, #36]
.L02044590:
    ldr r0, [r1]
.L02044594:
    ldr r2, [r3]
.L02044598:
    ldr r1, [r1, #4]
.L0204459c:
    ldr r3, [r3, #4]
.L020445a0:
    rsb sl, r0, r2
.L020445a4:
    rsb fp, r1, r3
.L020445a8:
    eor r2, fp, fp, asr #31
.L020445ac:
    sub r2, r2, fp, asr #31
.L020445b0:
    eor r0, sl, sl, asr #31
.L020445b4:
    sub r0, r0, sl, asr #31
.L020445b8:
    add r0, r2, r0
.L020445bc:
    str sl, [sp, #104]
.L020445c0:
    str fp, [sp, #108]
.L020445c4:
    bl reconstructed_external_arm_02083618
.L020445c8:
    mov r1, #931135488
.L020445cc:
    bl reconstructed_external_arm_020836f4
.L020445d0:
    mov r1, #0
.L020445d4:
    mov r4, r0
.L020445d8:
    bl reconstructed_external_arm_02083a84
.L020445dc:
    cmp r0, #0
.L020445e0:
    beq .L02044f40
.L020445e4:
    ldr r0, [pc, #3776]
.L020445e8:
    ldr r1, [pc, #3776]
.L020445ec:
    ldr r2, [pc, #3776]
.L020445f0:
    bl reconstructed_external_arm_02097804
.L020445f4:
    ldr r3, [sp, #36]
.L020445f8:
    ldr r0, [r3, #136]
.L020445fc:
    cmp r0, #0
.L02044600:
    ble .L02045490
.L02044604:
    ldr r3, [sp, #104]
.L02044608:
    mov r4, #0
.L0204460c:
    ldr r2, [sp, #108]
.L02044610:
    str r4, [sp, #40]
.L02044614:
    mov r4, r3
.L02044618:
    mov r5, r4, asr #31
.L0204461c:
    strd r4, [sp, #64]
.L02044620:
    mov r4, r2
.L02044624:
    mov r5, r4, asr #31
.L02044628:
    strd r4, [sp, #48]
.L0204462c:
    ldr r5, [sp, #36]
.L02044630:
    mov r9, #0
.L02044634:
    str r5, [sp, #100]
.L02044638:
    str r9, [sp, #44]
.L0204463c:
    b .L020448f0
.L02044640:
    mov r4, sl
.L02044644:
    mov r5, r4, asr #31
.L02044648:
    mov r0, fp
.L0204464c:
    mov r1, r0, asr #31
.L02044650:
    strd r4, [sp, #8]
.L02044654:
    stmia sp, {r0, r1}
.L02044658:
    ldr r0, [pc, #3660]
.L0204465c:
    ldr r1, [pc, #3668]
.L02044660:
    ldr r2, [pc, #3668]
.L02044664:
    bl reconstructed_external_arm_02097804
.L02044668:
    ldr r1, [sp, #64]
.L0204466c:
    ldr r3, [sp, #12]
.L02044670:
    ldr r5, [sp, #64]
.L02044674:
    mul r3, r1, r3
.L02044678:
    ldr r4, [sp, #48]
.L0204467c:
    ldr r2, [sp, #4]
.L02044680:
    ldr r1, [sp, #4]
.L02044684:
    mul r2, r4, r2
.L02044688:
    mul r1, r5, r1
.L0204468c:
    ldr r9, [sp, #8]
.L02044690:
    ldr r0, [sp, #52]
.L02044694:
    ldr lr, [sp, #68]
.L02044698:
    ldr ip, [sp]
.L0204469c:
    mul r0, r9, r0
.L020446a0:
    ldr r8, [sp, #52]
.L020446a4:
    ldr sl, [sp, #68]
.L020446a8:
    mla lr, r9, lr, r3
.L020446ac:
    mov r3, r5
.L020446b0:
    umull r4, r5, r3, ip
.L020446b4:
    ldr fp, [sp, #48]
.L020446b8:
    mla r8, ip, r8, r2
.L020446bc:
    mla sl, ip, sl, r1
.L020446c0:
    ldr ip, [sp, #12]
.L020446c4:
    mov r1, fp
.L020446c8:
    mla ip, fp, ip, r0
.L020446cc:
    ldr r0, [sp, #8]
.L020446d0:
    mov r9, r3
.L020446d4:
    umull r6, r7, r0, fp
.L020446d8:
    ldr fp, [sp]
.L020446dc:
    umull r2, r3, r9, r0
.L020446e0:
    mov r9, r1
.L020446e4:
    umull r0, r1, r9, fp
.L020446e8:
    add r3, lr, r3
.L020446ec:
    mov fp, r2, lsr #16
.L020446f0:
    ldr r9, [sp, #40]
.L020446f4:
    add r7, ip, r7
.L020446f8:
    mov r2, r3, asr #16
.L020446fc:
    orr ip, fp, r3, lsl #16
.L02044700:
    add r1, r8, r1
.L02044704:
    add r5, sl, r5
.L02044708:
    cmp r9, #0
.L0204470c:
    str ip, [sp, #72]
.L02044710:
    mov r9, r4, lsr #16
.L02044714:
    mov ip, r6, lsr #16
.L02044718:
    str r2, [sp, #76]
.L0204471c:
    mov r2, r0, lsr #16
.L02044720:
    mov r0, r1, asr #16
.L02044724:
    orr r3, r2, r1, lsl #16
.L02044728:
    str r0, [sp, #60]
.L0204472c:
    orr fp, r9, r5, lsl #16
.L02044730:
    mov r4, r5, asr #16
.L02044734:
    orr r0, ip, r7, lsl #16
.L02044738:
    mov r6, r7, asr #16
.L0204473c:
    str r3, [sp, #56]
.L02044740:
    str fp, [sp, #88]
.L02044744:
    str r4, [sp, #92]
.L02044748:
    str r0, [sp, #80]
.L0204474c:
    str r6, [sp, #84]
.L02044750:
    beq .L02044d88
.L02044754:
    ldr r1, [sp, #36]
.L02044758:
    ldr r3, [sp, #40]
.L0204475c:
    ldr r0, [r1]
.L02044760:
    ldr r2, [r3]
.L02044764:
    ldr r1, [r1, #4]
.L02044768:
    ldr r3, [r3, #4]
.L0204476c:
    rsb r5, r0, r2
.L02044770:
    rsb r6, r1, r3
.L02044774:
    eor r2, r6, r6, asr #31
.L02044778:
    sub r2, r2, r6, asr #31
.L0204477c:
    eor r0, r5, r5, asr #31
.L02044780:
    sub r0, r0, r5, asr #31
.L02044784:
    add r0, r2, r0
.L02044788:
    bl reconstructed_external_arm_02083618
.L0204478c:
    mov r1, #931135488
.L02044790:
    bl reconstructed_external_arm_020836f4
.L02044794:
    mov r1, #0
.L02044798:
    mov r4, r0
.L0204479c:
    bl reconstructed_external_arm_02083a84
.L020447a0:
    cmp r0, #0
.L020447a4:
    beq .L02044a08
.L020447a8:
    mov r0, r5
.L020447ac:
    mov r1, r0, asr #31
.L020447b0:
    mov r2, r6
.L020447b4:
    mov r3, r2, asr #31
.L020447b8:
    strd r0, [sp, #24]
.L020447bc:
    strd r2, [sp, #16]
.L020447c0:
    ldr r4, [sp, #48]
.L020447c4:
    ldr r1, [sp, #64]
.L020447c8:
    ldr r3, [sp, #28]
.L020447cc:
    ldr ip, [sp, #28]
.L020447d0:
    ldr r2, [sp, #20]
.L020447d4:
    ldr r5, [sp, #64]
.L020447d8:
    mul r3, r1, r3
.L020447dc:
    mul ip, r4, ip
.L020447e0:
    ldr r1, [sp, #20]
.L020447e4:
    mul r2, r4, r2
.L020447e8:
    ldr fp, [sp, #24]
.L020447ec:
    ldr r0, [sp, #16]
.L020447f0:
    mul r1, r5, r1
.L020447f4:
    ldr r8, [sp, #68]
.L020447f8:
    ldr lr, [sp, #52]
.L020447fc:
    ldr sl, [sp, #52]
.L02044800:
    umull r6, r7, r5, r0
.L02044804:
    mla lr, fp, lr, ip
.L02044808:
    mla r8, fp, r8, r3
.L0204480c:
    ldr r9, [sp, #68]
.L02044810:
    mov r3, r5
.L02044814:
    mov r5, fp
.L02044818:
    ldr fp, [sp, #48]
.L0204481c:
    mla sl, r0, sl, r2
.L02044820:
    mov ip, r5
.L02044824:
    mov r2, r3
.L02044828:
    mla r9, r0, r9, r1
.L0204482c:
    umull r0, r1, fp, r5
.L02044830:
    umull r4, r5, r2, ip
.L02044834:
    ldr ip, [sp, #16]
.L02044838:
    add r7, r9, r7
.L0204483c:
    umull r2, r3, fp, ip
.L02044840:
    add r1, lr, r1
.L02044844:
    add r5, r8, r5
.L02044848:
    add r3, sl, r3
.L0204484c:
    mov r4, r4, lsr #16
.L02044850:
    mov r2, r2, lsr #16
.L02044854:
    mov r6, r6, lsr #16
.L02044858:
    mov r0, r0, lsr #16
.L0204485c:
    orr r2, r2, r3, lsl #16
.L02044860:
    orr r0, r0, r1, lsl #16
.L02044864:
    orr r4, r4, r5, lsl #16
.L02044868:
    orr r6, r6, r7, lsl #16
.L0204486c:
    rsb r6, r0, r6
.L02044870:
    add r4, r4, r2
.L02044874:
    ldr r0, [sp, #88]
.L02044878:
    ldr r2, [sp, #80]
.L0204487c:
    ldr r5, [sp, #72]
.L02044880:
    ldr r9, [sp, #56]
.L02044884:
    rsb r1, r2, r0
.L02044888:
    add r3, r5, r9
.L0204488c:
    str r1, [sp, #192]
.L02044890:
    str r3, [sp, #196]
.L02044894:
    str r6, [sp, #200]
.L02044898:
    str r4, [sp, #204]
.L0204489c:
    add r0, sp, #192
.L020448a0:
    add r1, sp, #196
.L020448a4:
    add r2, sp, #200
.L020448a8:
    add r3, sp, #204
.L020448ac:
    bl .L0203ee64
.L020448b0:
    cmp r0, #0
.L020448b4:
    mov r7, r7, asr #16
.L020448b8:
    beq .L020449c8
.L020448bc:
    ldr fp, [sp, #100]
.L020448c0:
    ldr ip, [sp, #36]
.L020448c4:
    ldr fp, [fp, #8]
.L020448c8:
    ldr r0, [ip, #136]
.L020448cc:
    str fp, [sp, #40]
.L020448d0:
    ldr r3, [sp, #44]
.L020448d4:
    ldr r4, [sp, #100]
.L020448d8:
    add r3, r3, #1
.L020448dc:
    add r4, r4, #4
.L020448e0:
    cmp r0, r3
.L020448e4:
    str r3, [sp, #44]
.L020448e8:
    str r4, [sp, #100]
.L020448ec:
    ble .L020449f0
.L020448f0:
    ldr fp, [sp, #100]
.L020448f4:
    ldr ip, [sp, #32]
.L020448f8:
    ldr r1, [fp, #8]
.L020448fc:
    cmp ip, r1
.L02044900:
    beq .L020448d0
.L02044904:
    ldr r2, [sp, #36]
.L02044908:
    ldr r0, [r1, #4]
.L0204490c:
    ldr r3, [r2]
.L02044910:
    ldr r1, [r1]
.L02044914:
    ldr r2, [r2, #4]
.L02044918:
    rsb sl, r3, r1
.L0204491c:
    rsb fp, r2, r0
.L02044920:
    eor r3, fp, fp, asr #31
.L02044924:
    sub r3, r3, fp, asr #31
.L02044928:
    eor r0, sl, sl, asr #31
.L0204492c:
    sub r0, r0, sl, asr #31
.L02044930:
    add r0, r3, r0
.L02044934:
    bl reconstructed_external_arm_02083618
.L02044938:
    mov r1, #931135488
.L0204493c:
    bl reconstructed_external_arm_020836f4
.L02044940:
    mov r1, #0
.L02044944:
    mov r4, r0
.L02044948:
    bl reconstructed_external_arm_02083a84
.L0204494c:
    cmp r0, #0
.L02044950:
    bne .L02044640
.L02044954:
    mov r0, r4
.L02044958:
    bl reconstructed_external_arm_02082c68
.L0204495c:
    ldr r2, [pc, #2908]
.L02044960:
    ldr r3, [pc, #2908]
.L02044964:
    bl reconstructed_external_arm_02083298
.L02044968:
    cmp r0, #0
.L0204496c:
    beq .L02044b44
.L02044970:
    mov r5, sl, lsl #8
.L02044974:
    mov r6, fp, lsl #8
.L02044978:
    eor r3, r6, r6, asr #31
.L0204497c:
    sub r3, r3, r6, asr #31
.L02044980:
    eor r0, r5, r5, asr #31
.L02044984:
    sub r0, r0, r5, asr #31
.L02044988:
    add r0, r3, r0
.L0204498c:
    bl reconstructed_external_arm_02083618
.L02044990:
    mov r1, #931135488
.L02044994:
    bl reconstructed_external_arm_020836f4
.L02044998:
    mov r1, #0
.L0204499c:
    mov r4, r0
.L020449a0:
    bl reconstructed_external_arm_02083a84
.L020449a4:
    cmp r0, #0
.L020449a8:
    beq .L02044e6c
.L020449ac:
    mov r2, sl
.L020449b0:
    mov r3, r2, asr #31
.L020449b4:
    mov r4, fp
.L020449b8:
    mov r5, r4, asr #31
.L020449bc:
    strd r2, [sp, #8]
.L020449c0:
    stmia sp, {r4, r5}
.L020449c4:
    b .L02044658
.L020449c8:
    ldr r2, [sp, #36]
.L020449cc:
    ldr r3, [sp, #44]
.L020449d0:
    ldr r4, [sp, #100]
.L020449d4:
    ldr r0, [r2, #136]
.L020449d8:
    add r3, r3, #1
.L020449dc:
    add r4, r4, #4
.L020449e0:
    cmp r0, r3
.L020449e4:
    str r3, [sp, #44]
.L020449e8:
    str r4, [sp, #100]
.L020449ec:
    bgt .L020448f0
.L020449f0:
    ldr r5, [sp, #40]
.L020449f4:
    cmp r5, #0
.L020449f8:
    beq .L02045490
.L020449fc:
    ldr r0, [sp, #40]
.L02044a00:
    add sp, sp, #252
.L02044a04:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02044a08:
    mov r0, r4
.L02044a0c:
    bl reconstructed_external_arm_02082c68
.L02044a10:
    ldr r2, [pc, #2728]
.L02044a14:
    ldr r3, [pc, #2728]
.L02044a18:
    bl reconstructed_external_arm_02083298
.L02044a1c:
    cmp r0, #0
.L02044a20:
    beq .L02044ccc
.L02044a24:
    mov r2, r6, lsl #8
.L02044a28:
    mov r3, r5, lsl #8
.L02044a2c:
    add r0, sp, #240
.L02044a30:
    add r1, sp, #176
.L02044a34:
    str r3, [sp, #176]
.L02044a38:
    str r2, [sp, #180]
.L02044a3c:
    ldr r3, [pc, #2708]
.L02044a40:
    blx r3
.L02044a44:
    ldr r2, [sp, #240]
.L02044a48:
    mov r0, r5
.L02044a4c:
    mov r1, r0, asr #31
.L02044a50:
    mov r3, r2, asr #31
.L02044a54:
    strd r0, [sp, #24]
.L02044a58:
    mov r3, r3, lsl #8
.L02044a5c:
    orr r3, r3, r2, lsr #24
.L02044a60:
    mov r2, r2, lsl #8
.L02044a64:
    mov r2, r2, lsr #16
.L02044a68:
    orr r2, r2, r3, lsl #16
.L02044a6c:
    mov r5, r2
.L02044a70:
    mov r2, r6
.L02044a74:
    mov r3, r2, asr #31
.L02044a78:
    strd r2, [sp, #16]
.L02044a7c:
    cmp r5, #3
.L02044a80:
    ble .L020447c0
.L02044a84:
    ldr r3, [pc, #2632]
.L02044a88:
    mov r4, #1
.L02044a8c:
    strh r4, [r3, #128]
.L02044a90:
    mov r1, r3
.L02044a94:
    ldrh r3, [r1, #128]
.L02044a98:
    tst r3, #32768
.L02044a9c:
    bne .L02044a94
.L02044aa0:
    ldr r9, [sp, #28]
.L02044aa4:
    ldr fp, [sp, #24]
.L02044aa8:
    mov r3, r9, lsl #16
.L02044aac:
    orr r3, r3, fp, lsr #16
.L02044ab0:
    mov r2, fp, lsl #16
.L02044ab4:
    mov r0, #67108864
.L02044ab8:
    ldr lr, [pc, #2580]
.L02044abc:
    strd r2, [r1, #144]
.L02044ac0:
    str r5, [r0, #664]
.L02044ac4:
    ldrh r3, [lr, #128]
.L02044ac8:
    tst r3, #32768
.L02044acc:
    bne .L02044ac4
.L02044ad0:
    mov r1, #67108864
.L02044ad4:
    mov r2, #1
.L02044ad8:
    ldr r4, [pc, #2548]
.L02044adc:
    ldr r0, [r1, #672]
.L02044ae0:
    strh r2, [lr, #128]
.L02044ae4:
    ldrh r3, [r4, #128]
.L02044ae8:
    tst r3, #32768
.L02044aec:
    bne .L02044ae4
.L02044af0:
    ldr r9, [sp, #20]
.L02044af4:
    ldr fp, [sp, #16]
.L02044af8:
    mov r3, r9, lsl #16
.L02044afc:
    orr r3, r3, fp, lsr #16
.L02044b00:
    mov r2, fp, lsl #16
.L02044b04:
    mov r1, #67108864
.L02044b08:
    ldr lr, [pc, #2500]
.L02044b0c:
    strd r2, [r4, #144]
.L02044b10:
    str r5, [r1, #664]
.L02044b14:
    ldrh r3, [lr, #128]
.L02044b18:
    tst r3, #32768
.L02044b1c:
    bne .L02044b14
.L02044b20:
    mov r2, #67108864
.L02044b24:
    ldr r3, [r2, #672]
.L02044b28:
    mov r4, r0
.L02044b2c:
    mov r5, r4, asr #31
.L02044b30:
    mov r0, r3
.L02044b34:
    mov r1, r0, asr #31
.L02044b38:
    strd r4, [sp, #24]
.L02044b3c:
    strd r0, [sp, #16]
.L02044b40:
    b .L020447c0
.L02044b44:
    mov r0, r4
.L02044b48:
    ldr r1, [pc, #2432]
.L02044b4c:
    bl reconstructed_external_arm_02083a9c
.L02044b50:
    cmp r0, #0
.L02044b54:
    beq .L02044da0
.L02044b58:
    mov r4, fp
.L02044b5c:
    mov r5, r4, asr #31
.L02044b60:
    mov r2, sl
.L02044b64:
    mov r3, r2, asr #31
.L02044b68:
    stmia sp, {r4, r5}
.L02044b6c:
    strd r2, [sp, #8]
.L02044b70:
    ldr ip, [sp, #12]
.L02044b74:
    ldr lr, [sp, #4]
.L02044b78:
    ldr r5, [sp, #8]
.L02044b7c:
    ldr r9, [sp]
.L02044b80:
    mul ip, r2, ip
.L02044b84:
    mul lr, r4, lr
.L02044b88:
    umull r2, r3, r5, r5
.L02044b8c:
    umull r0, r1, r9, r9
.L02044b90:
    ldr r4, [pc, #2364]
.L02044b94:
    mov ip, ip, lsl #1
.L02044b98:
    mov lr, lr, lsl #1
.L02044b9c:
    mov fp, #1
.L02044ba0:
    add r3, ip, r3
.L02044ba4:
    add r1, lr, r1
.L02044ba8:
    strh fp, [r4, #176]
.L02044bac:
    mov ip, r4
.L02044bb0:
    mov r8, r0, lsr #16
.L02044bb4:
    mov r4, r2, lsr #16
.L02044bb8:
    orr r4, r4, r3, lsl #16
.L02044bbc:
    orr r8, r8, r1, lsl #16
.L02044bc0:
    ldrh r3, [ip, #176]
.L02044bc4:
    tst r3, #32768
.L02044bc8:
    bne .L02044bc0
.L02044bcc:
    add r2, r4, r8
.L02044bd0:
    mov r3, r2, asr #31
.L02044bd4:
    mov r3, r3, lsl #16
.L02044bd8:
    orr r3, r3, r2, lsr #16
.L02044bdc:
    mov r2, r2, lsl #16
.L02044be0:
    strd r2, [ip, #184]
.L02044be4:
    ldr r2, [pc, #2280]
.L02044be8:
    ldrh r3, [r2, #176]
.L02044bec:
    tst r3, #32768
.L02044bf0:
    bne .L02044be8
.L02044bf4:
    mov ip, #67108864
.L02044bf8:
    ldr r5, [ip, #692]
.L02044bfc:
    cmp r5, #3
.L02044c00:
    ble .L02044658
.L02044c04:
    ldr r3, [pc, #2248]
.L02044c08:
    mov r1, #1
.L02044c0c:
    strh r1, [r3, #128]
.L02044c10:
    mov r1, r3
.L02044c14:
    ldrh r3, [r1, #128]
.L02044c18:
    tst r3, #32768
.L02044c1c:
    bne .L02044c14
.L02044c20:
    ldr r4, [sp, #12]
.L02044c24:
    ldr r9, [sp, #8]
.L02044c28:
    mov r3, r4, lsl #16
.L02044c2c:
    orr r3, r3, r9, lsr #16
.L02044c30:
    mov r2, r9, lsl #16
.L02044c34:
    mov ip, #67108864
.L02044c38:
    ldr lr, [pc, #2196]
.L02044c3c:
    strd r2, [r1, #144]
.L02044c40:
    str r5, [ip, #664]
.L02044c44:
    ldrh r3, [lr, #128]
.L02044c48:
    tst r3, #32768
.L02044c4c:
    bne .L02044c44
.L02044c50:
    mov r1, #67108864
.L02044c54:
    mov r2, #1
.L02044c58:
    ldr r4, [pc, #2164]
.L02044c5c:
    ldr r0, [r1, #672]
.L02044c60:
    strh r2, [lr, #128]
.L02044c64:
    ldrh r3, [r4, #128]
.L02044c68:
    tst r3, #32768
.L02044c6c:
    bne .L02044c64
.L02044c70:
    ldr r9, [sp, #4]
.L02044c74:
    ldr fp, [sp]
.L02044c78:
    mov r3, r9, lsl #16
.L02044c7c:
    orr r3, r3, fp, lsr #16
.L02044c80:
    mov r2, fp, lsl #16
.L02044c84:
    mov r1, #67108864
.L02044c88:
    ldr lr, [pc, #2116]
.L02044c8c:
    strd r2, [r4, #144]
.L02044c90:
    str r5, [r1, #664]
.L02044c94:
    ldrh r3, [lr, #128]
.L02044c98:
    tst r3, #32768
.L02044c9c:
    bne .L02044c94
.L02044ca0:
    mov r2, #67108864
.L02044ca4:
    ldr r3, [r2, #672]
.L02044ca8:
    cmp r5, #4
.L02044cac:
    mov r4, r0
.L02044cb0:
    mov r5, r4, asr #31
.L02044cb4:
    mov r0, r3
.L02044cb8:
    mov r1, r0, asr #31
.L02044cbc:
    strd r4, [sp, #8]
.L02044cc0:
    stmia sp, {r0, r1}
.L02044cc4:
    bgt .L02044668
.L02044cc8:
    b .L02044658
.L02044ccc:
    mov r0, r4
.L02044cd0:
    ldr r1, [pc, #2040]
.L02044cd4:
    bl reconstructed_external_arm_02083a9c
.L02044cd8:
    cmp r0, #0
.L02044cdc:
    beq .L02044efc
.L02044ce0:
    mov r0, r5
.L02044ce4:
    mov r1, r0, asr #31
.L02044ce8:
    mov r2, r6
.L02044cec:
    mov r3, r2, asr #31
.L02044cf0:
    strd r0, [sp, #24]
.L02044cf4:
    strd r2, [sp, #16]
.L02044cf8:
    ldr ip, [sp, #28]
.L02044cfc:
    ldr lr, [sp, #20]
.L02044d00:
    ldr r4, [sp, #24]
.L02044d04:
    ldr r5, [sp, #16]
.L02044d08:
    mul ip, r0, ip
.L02044d0c:
    mul lr, r2, lr
.L02044d10:
    umull r0, r1, r5, r5
.L02044d14:
    umull r2, r3, r4, r4
.L02044d18:
    ldr r4, [pc, #1972]
.L02044d1c:
    mov ip, ip, lsl #1
.L02044d20:
    mov lr, lr, lsl #1
.L02044d24:
    mov r9, #1
.L02044d28:
    add r3, ip, r3
.L02044d2c:
    add r1, lr, r1
.L02044d30:
    strh r9, [r4, #176]
.L02044d34:
    mov ip, r4
.L02044d38:
    mov r8, r0, lsr #16
.L02044d3c:
    mov r4, r2, lsr #16
.L02044d40:
    orr r4, r4, r3, lsl #16
.L02044d44:
    orr r8, r8, r1, lsl #16
.L02044d48:
    ldrh r3, [ip, #176]
.L02044d4c:
    tst r3, #32768
.L02044d50:
    bne .L02044d48
.L02044d54:
    add r2, r4, r8
.L02044d58:
    mov r3, r2, asr #31
.L02044d5c:
    mov r3, r3, lsl #16
.L02044d60:
    orr r3, r3, r2, lsr #16
.L02044d64:
    mov r2, r2, lsl #16
.L02044d68:
    strd r2, [ip, #184]
.L02044d6c:
    ldr r2, [pc, #1888]
.L02044d70:
    ldrh r3, [r2, #176]
.L02044d74:
    tst r3, #32768
.L02044d78:
    bne .L02044d70
.L02044d7c:
    mov fp, #67108864
.L02044d80:
    ldr r5, [fp, #692]
.L02044d84:
    b .L02044a7c
.L02044d88:
    ldr r0, [sp, #100]
.L02044d8c:
    ldr r1, [sp, #36]
.L02044d90:
    ldr r0, [r0, #8]
.L02044d94:
    str r0, [sp, #40]
.L02044d98:
    ldr r0, [r1, #136]
.L02044d9c:
    b .L020448d0
.L02044da0:
    mov r5, sl, asr #8
.L02044da4:
    mov r6, fp, asr #8
.L02044da8:
    eor r3, r6, r6, asr #31
.L02044dac:
    sub r3, r3, r6, asr #31
.L02044db0:
    eor r0, r5, r5, asr #31
.L02044db4:
    sub r0, r0, r5, asr #31
.L02044db8:
    add r0, r3, r0
.L02044dbc:
    bl reconstructed_external_arm_02083618
.L02044dc0:
    mov r1, #931135488
.L02044dc4:
    bl reconstructed_external_arm_020836f4
.L02044dc8:
    mov r1, #0
.L02044dcc:
    mov r4, r0
.L02044dd0:
    bl reconstructed_external_arm_02083a84
.L02044dd4:
    cmp r0, #0
.L02044dd8:
    bne .L02045170
.L02044ddc:
    mov r0, r4
.L02044de0:
    bl reconstructed_external_arm_02082c68
.L02044de4:
    ldr r2, [pc, #1748]
.L02044de8:
    ldr r3, [pc, #1748]
.L02044dec:
    bl reconstructed_external_arm_02083298
.L02044df0:
    cmp r0, #0
.L02044df4:
    beq .L0204528c
.L02044df8:
    mov r3, r5, lsl #8
.L02044dfc:
    mov r2, r6, lsl #8
.L02044e00:
    str r3, [sp, #160]
.L02044e04:
    str r2, [sp, #164]
.L02044e08:
    ldr r3, [pc, #1736]
.L02044e0c:
    add r0, sp, #232
.L02044e10:
    add r1, sp, #160
.L02044e14:
    blx r3
.L02044e18:
    ldr r2, [sp, #232]
.L02044e1c:
    mov r4, sl
.L02044e20:
    mov r5, r4, asr #31
.L02044e24:
    mov r3, r2, asr #31
.L02044e28:
    strd r4, [sp, #8]
.L02044e2c:
    mov r3, r3, lsl #8
.L02044e30:
    orr r3, r3, r2, lsr #24
.L02044e34:
    mov r2, r2, lsl #8
.L02044e38:
    mov r2, r2, lsr #16
.L02044e3c:
    orr r2, r2, r3, lsl #16
.L02044e40:
    mov r3, r2, asr #31
.L02044e44:
    mov r3, r3, lsl #24
.L02044e48:
    orr r3, r3, r2, lsr #8
.L02044e4c:
    mov r2, r2, lsl #24
.L02044e50:
    mov r2, r2, lsr #16
.L02044e54:
    orr r2, r2, r3, lsl #16
.L02044e58:
    mov r0, fp
.L02044e5c:
    mov r1, r0, asr #31
.L02044e60:
    mov r5, r2
.L02044e64:
    stmia sp, {r0, r1}
.L02044e68:
    b .L02044bfc
.L02044e6c:
    mov r0, r4
.L02044e70:
    bl reconstructed_external_arm_02082c68
.L02044e74:
    ldr r2, [pc, #1604]
.L02044e78:
    ldr r3, [pc, #1604]
.L02044e7c:
    bl reconstructed_external_arm_02083298
.L02044e80:
    cmp r0, #0
.L02044e84:
    beq .L020450c0
.L02044e88:
    mov r2, fp, lsl #16
.L02044e8c:
    mov r3, sl, lsl #16
.L02044e90:
    add r0, sp, #224
.L02044e94:
    add r1, sp, #144
.L02044e98:
    str r3, [sp, #144]
.L02044e9c:
    str r2, [sp, #148]
.L02044ea0:
    ldr r3, [pc, #1584]
.L02044ea4:
    blx r3
.L02044ea8:
    ldr r2, [sp, #224]
.L02044eac:
    mov r0, sl
.L02044eb0:
    mov r1, r0, asr #31
.L02044eb4:
    mov r3, r2, asr #31
.L02044eb8:
    mov r3, r3, lsl #8
.L02044ebc:
    orr r3, r3, r2, lsr #24
.L02044ec0:
    strd r0, [sp, #8]
.L02044ec4:
    mov r2, r2, lsl #8
.L02044ec8:
    mov r2, r2, lsr #16
.L02044ecc:
    orr r2, r2, r3, lsl #16
.L02044ed0:
    mov r3, r2, asr #31
.L02044ed4:
    mov r3, r3, lsl #8
.L02044ed8:
    orr r3, r3, r2, lsr #24
.L02044edc:
    mov r2, r2, lsl #8
.L02044ee0:
    mov r2, r2, lsr #16
.L02044ee4:
    orr r2, r2, r3, lsl #16
.L02044ee8:
    mov r5, r2
.L02044eec:
    mov r2, fp
.L02044ef0:
    mov r3, r2, asr #31
.L02044ef4:
    stmia sp, {r2, r3}
.L02044ef8:
    b .L02044bfc
.L02044efc:
    mov r2, r6, asr #8
.L02044f00:
    mov r3, r5, asr #8
.L02044f04:
    add r0, sp, #244
.L02044f08:
    add r1, sp, #184
.L02044f0c:
    str r3, [sp, #184]
.L02044f10:
    str r2, [sp, #188]
.L02044f14:
    ldr r3, [pc, #1468]
.L02044f18:
    blx r3
.L02044f1c:
    ldr r2, [sp, #244]
.L02044f20:
    mov r0, r5
.L02044f24:
    mov r1, r0, asr #31
.L02044f28:
    mov r3, r2, asr #31
.L02044f2c:
    mov r3, r3, lsl #24
.L02044f30:
    orr r3, r3, r2, lsr #8
.L02044f34:
    mov r2, r2, lsl #24
.L02044f38:
    strd r0, [sp, #24]
.L02044f3c:
    b .L02044a64
.L02044f40:
    mov r0, r4
.L02044f44:
    bl reconstructed_external_arm_02082c68
.L02044f48:
    ldr r2, [pc, #1392]
.L02044f4c:
    ldr r3, [pc, #1392]
.L02044f50:
    bl reconstructed_external_arm_02083298
.L02044f54:
    cmp r0, #0
.L02044f58:
    bne .L0204518c
.L02044f5c:
    mov r0, r4
.L02044f60:
    ldr r1, [pc, #1384]
.L02044f64:
    bl reconstructed_external_arm_02083a9c
.L02044f68:
    cmp r0, #0
.L02044f6c:
    beq .L02045398
.L02044f70:
    mov r2, sl
.L02044f74:
    mov r3, r2, asr #31
.L02044f78:
    mov r0, fp
.L02044f7c:
    mov r1, r0, asr #31
.L02044f80:
    mul ip, r2, r3
.L02044f84:
    mul lr, r0, r1
.L02044f88:
    umull r4, r5, r2, r2
.L02044f8c:
    umull r6, r7, r0, r0
.L02044f90:
    ldr r3, [pc, #1340]
.L02044f94:
    mov ip, ip, lsl #1
.L02044f98:
    mov lr, lr, lsl #1
.L02044f9c:
    add r5, ip, r5
.L02044fa0:
    add r7, lr, r7
.L02044fa4:
    mov ip, #1
.L02044fa8:
    mov r0, r4, lsr #16
.L02044fac:
    mov r4, r6, lsr #16
.L02044fb0:
    strh ip, [r3, #176]
.L02044fb4:
    orr r0, r0, r5, lsl #16
.L02044fb8:
    mov ip, r3
.L02044fbc:
    orr r4, r4, r7, lsl #16
.L02044fc0:
    mov r5, r7, asr #16
.L02044fc4:
    ldrh r3, [ip, #176]
.L02044fc8:
    tst r3, #32768
.L02044fcc:
    bne .L02044fc4
.L02044fd0:
    add r2, r0, r4
.L02044fd4:
    mov r3, r2, asr #31
.L02044fd8:
    mov r3, r3, lsl #16
.L02044fdc:
    orr r3, r3, r2, lsr #16
.L02044fe0:
    mov r2, r2, lsl #16
.L02044fe4:
    strd r2, [ip, #184]
.L02044fe8:
    ldr r2, [pc, #1252]
.L02044fec:
    ldrh r3, [r2, #176]
.L02044ff0:
    tst r3, #32768
.L02044ff4:
    bne .L02044fec
.L02044ff8:
    mov r3, #67108864
.L02044ffc:
    ldr ip, [r3, #692]
.L02045000:
    cmp ip, #3
.L02045004:
    ble .L020445e4
.L02045008:
    ldr r3, [pc, #1220]
.L0204500c:
    mov r1, #1
.L02045010:
    strh r1, [r3, #128]
.L02045014:
    mov r1, r3
.L02045018:
    ldrh r3, [r1, #128]
.L0204501c:
    tst r3, #32768
.L02045020:
    bne .L02045018
.L02045024:
    mov r2, sl
.L02045028:
    mov r3, r2, asr #31
.L0204502c:
    mov r3, r3, lsl #16
.L02045030:
    orr r3, r3, r2, lsr #16
.L02045034:
    mov r2, r2, lsl #16
.L02045038:
    strd r2, [r1, #144]
.L0204503c:
    ldr r0, [pc, #1168]
.L02045040:
    mov r1, #67108864
.L02045044:
    str ip, [r1, #664]
.L02045048:
    ldrh r3, [r0, #128]
.L0204504c:
    tst r3, #32768
.L02045050:
    bne .L02045048
.L02045054:
    mov r3, #67108864
.L02045058:
    mov r2, #1
.L0204505c:
    ldr r1, [pc, #1136]
.L02045060:
    ldr lr, [r3, #672]
.L02045064:
    strh r2, [r0, #128]
.L02045068:
    ldrh r3, [r1, #128]
.L0204506c:
    tst r3, #32768
.L02045070:
    bne .L02045068
.L02045074:
    mov r2, fp
.L02045078:
    mov r3, r2, asr #31
.L0204507c:
    mov r3, r3, lsl #16
.L02045080:
    orr r3, r3, r2, lsr #16
.L02045084:
    mov r2, r2, lsl #16
.L02045088:
    strd r2, [r1, #144]
.L0204508c:
    ldr r0, [pc, #1088]
.L02045090:
    mov r1, #67108864
.L02045094:
    str ip, [r1, #664]
.L02045098:
    ldrh r3, [r0, #128]
.L0204509c:
    tst r3, #32768
.L020450a0:
    bne .L02045098
.L020450a4:
    mov r3, #67108864
.L020450a8:
    ldr r2, [r3, #672]
.L020450ac:
    cmp ip, #4
.L020450b0:
    str lr, [sp, #104]
.L020450b4:
    str r2, [sp, #108]
.L020450b8:
    bgt .L020445f4
.L020450bc:
    b .L020445e4
.L020450c0:
    mov r0, r4
.L020450c4:
    ldr r1, [pc, #1028]
.L020450c8:
    bl reconstructed_external_arm_02083a9c
.L020450cc:
    cmp r0, #0
.L020450d0:
    beq .L0204533c
.L020450d4:
    mov r2, r5
.L020450d8:
    mov r3, r2, asr #31
.L020450dc:
    mov r0, r6
.L020450e0:
    mov r1, r0, asr #31
.L020450e4:
    mul ip, r2, r3
.L020450e8:
    mul lr, r0, r1
.L020450ec:
    umull r4, r5, r2, r2
.L020450f0:
    umull r6, r7, r0, r0
.L020450f4:
    ldr r3, [pc, #984]
.L020450f8:
    mov ip, ip, lsl #1
.L020450fc:
    mov lr, lr, lsl #1
.L02045100:
    mov r8, r4, lsr #16
.L02045104:
    add r5, ip, r5
.L02045108:
    add r7, lr, r7
.L0204510c:
    mov r9, #1
.L02045110:
    mov r4, r6, lsr #16
.L02045114:
    strh r9, [r3, #176]
.L02045118:
    mov r1, r3
.L0204511c:
    orr r8, r8, r5, lsl #16
.L02045120:
    orr r4, r4, r7, lsl #16
.L02045124:
    ldrh r3, [r1, #176]
.L02045128:
    tst r3, #32768
.L0204512c:
    bne .L02045124
.L02045130:
    add r2, r8, r4
.L02045134:
    mov r3, r2, asr #31
.L02045138:
    mov r3, r3, lsl #16
.L0204513c:
    orr r3, r3, r2, lsr #16
.L02045140:
    mov r2, r2, lsl #16
.L02045144:
    strd r2, [r1, #184]
.L02045148:
    ldr r2, [pc, #900]
.L0204514c:
    ldrh r3, [r2, #176]
.L02045150:
    tst r3, #32768
.L02045154:
    bne .L0204514c
.L02045158:
    mov ip, #67108864
.L0204515c:
    ldr r2, [ip, #692]
.L02045160:
    mov r0, sl
.L02045164:
    mov r1, r0, asr #31
.L02045168:
    strd r0, [sp, #8]
.L0204516c:
    b .L02044ed0
.L02045170:
    mov r0, sl
.L02045174:
    mov r1, r0, asr #31
.L02045178:
    mov r2, fp
.L0204517c:
    mov r3, r2, asr #31
.L02045180:
    strd r0, [sp, #8]
.L02045184:
    stmia sp, {r2, r3}
.L02045188:
    b .L02044658
.L0204518c:
    mov r5, sl, lsl #8
.L02045190:
    mov r6, fp, lsl #8
.L02045194:
    eor r3, r6, r6, asr #31
.L02045198:
    sub r3, r3, r6, asr #31
.L0204519c:
    eor r0, r5, r5, asr #31
.L020451a0:
    sub r0, r0, r5, asr #31
.L020451a4:
    add r0, r3, r0
.L020451a8:
    bl reconstructed_external_arm_02083618
.L020451ac:
    mov r1, #931135488
.L020451b0:
    bl reconstructed_external_arm_020836f4
.L020451b4:
    mov r1, #0
.L020451b8:
    mov r4, r0
.L020451bc:
    bl reconstructed_external_arm_02083a84
.L020451c0:
    cmp r0, #0
.L020451c4:
    bne .L020445e4
.L020451c8:
    mov r0, r4
.L020451cc:
    bl reconstructed_external_arm_02082c68
.L020451d0:
    ldr r2, [pc, #744]
.L020451d4:
    ldr r3, [pc, #744]
.L020451d8:
    bl reconstructed_external_arm_02083298
.L020451dc:
    cmp r0, #0
.L020451e0:
    bne .L020454dc
.L020451e4:
    mov r0, r4
.L020451e8:
    ldr r1, [pc, #736]
.L020451ec:
    bl reconstructed_external_arm_02083a9c
.L020451f0:
    cmp r0, #0
.L020451f4:
    beq .L02045538
.L020451f8:
    mov r2, r5
.L020451fc:
    mov r3, r2, asr #31
.L02045200:
    mov r0, r6
.L02045204:
    mov r1, r0, asr #31
.L02045208:
    mul ip, r2, r3
.L0204520c:
    mul lr, r0, r1
.L02045210:
    umull r4, r5, r2, r2
.L02045214:
    umull r6, r7, r0, r0
.L02045218:
    ldr r3, [pc, #692]
.L0204521c:
    mov ip, ip, lsl #1
.L02045220:
    mov lr, lr, lsl #1
.L02045224:
    add r5, ip, r5
.L02045228:
    add r7, lr, r7
.L0204522c:
    mov r8, r4, lsr #16
.L02045230:
    mov r9, #1
.L02045234:
    mov r4, r6, lsr #16
.L02045238:
    orr r8, r8, r5, lsl #16
.L0204523c:
    strh r9, [r3, #176]
.L02045240:
    mov r1, r3
.L02045244:
    orr r4, r4, r7, lsl #16
.L02045248:
    mov r5, r7, asr #16
.L0204524c:
    ldrh r3, [r1, #176]
.L02045250:
    tst r3, #32768
.L02045254:
    bne .L0204524c
.L02045258:
    add r2, r8, r4
.L0204525c:
    mov r3, r2, asr #31
.L02045260:
    mov r3, r3, lsl #16
.L02045264:
    orr r3, r3, r2, lsr #16
.L02045268:
    mov r2, r2, lsl #16
.L0204526c:
    strd r2, [r1, #184]
.L02045270:
    ldr r2, [pc, #604]
.L02045274:
    ldrh r3, [r2, #176]
.L02045278:
    tst r3, #32768
.L0204527c:
    bne .L02045274
.L02045280:
    mov r1, #67108864
.L02045284:
    ldr r2, [r1, #692]
.L02045288:
    b .L02045518
.L0204528c:
    mov r0, r4
.L02045290:
    ldr r1, [pc, #568]
.L02045294:
    bl reconstructed_external_arm_02083a9c
.L02045298:
    cmp r0, #0
.L0204529c:
    beq .L0204544c
.L020452a0:
    mov r2, r5
.L020452a4:
    mov r3, r2, asr #31
.L020452a8:
    mov r0, r6
.L020452ac:
    mov r1, r0, asr #31
.L020452b0:
    mul ip, r2, r3
.L020452b4:
    mul lr, r0, r1
.L020452b8:
    umull r4, r5, r2, r2
.L020452bc:
    umull r6, r7, r0, r0
.L020452c0:
    ldr r3, [pc, #524]
.L020452c4:
    mov ip, ip, lsl #1
.L020452c8:
    mov lr, lr, lsl #1
.L020452cc:
    mov r1, #1
.L020452d0:
    mov r8, r4, lsr #16
.L020452d4:
    add r5, ip, r5
.L020452d8:
    add r7, lr, r7
.L020452dc:
    mov r4, r6, lsr #16
.L020452e0:
    strh r1, [r3, #176]
.L020452e4:
    orr r8, r8, r5, lsl #16
.L020452e8:
    mov r1, r3
.L020452ec:
    orr r4, r4, r7, lsl #16
.L020452f0:
    ldrh r3, [r1, #176]
.L020452f4:
    tst r3, #32768
.L020452f8:
    bne .L020452f0
.L020452fc:
    add r2, r8, r4
.L02045300:
    mov r3, r2, asr #31
.L02045304:
    mov r3, r3, lsl #16
.L02045308:
    orr r3, r3, r2, lsr #16
.L0204530c:
    mov r2, r2, lsl #16
.L02045310:
    strd r2, [r1, #184]
.L02045314:
    ldr r2, [pc, #440]
.L02045318:
    ldrh r3, [r2, #176]
.L0204531c:
    tst r3, #32768
.L02045320:
    bne .L02045318
.L02045324:
    mov r3, #67108864
.L02045328:
    ldr r2, [r3, #692]
.L0204532c:
    mov r4, sl
.L02045330:
    mov r5, r4, asr #31
.L02045334:
    strd r4, [sp, #8]
.L02045338:
    b .L02044e40
.L0204533c:
    mov r3, r5, asr #8
.L02045340:
    mov r2, r6, asr #8
.L02045344:
    str r3, [sp, #152]
.L02045348:
    str r2, [sp, #156]
.L0204534c:
    ldr r3, [pc, #388]
.L02045350:
    add r0, sp, #228
.L02045354:
    add r1, sp, #152
.L02045358:
    blx r3
.L0204535c:
    ldr r2, [sp, #228]
.L02045360:
    mov r4, sl
.L02045364:
    mov r5, r4, asr #31
.L02045368:
    mov r3, r2, asr #31
.L0204536c:
    mov r3, r3, lsl #24
.L02045370:
    orr r3, r3, r2, lsr #8
.L02045374:
    mov r2, r2, lsl #24
.L02045378:
    mov r2, r2, lsr #16
.L0204537c:
    orr r2, r2, r3, lsl #16
.L02045380:
    mov r3, r2, asr #31
.L02045384:
    mov r3, r3, lsl #8
.L02045388:
    orr r3, r3, r2, lsr #24
.L0204538c:
    mov r2, r2, lsl #8
.L02045390:
    strd r4, [sp, #8]
.L02045394:
    b .L02044e50
.L02045398:
    mov r6, sl, asr #8
.L0204539c:
    mov r5, fp, asr #8
.L020453a0:
    eor r3, r5, r5, asr #31
.L020453a4:
    sub r3, r3, r5, asr #31
.L020453a8:
    eor r0, r6, r6, asr #31
.L020453ac:
    sub r0, r0, r6, asr #31
.L020453b0:
    add r0, r3, r0
.L020453b4:
    bl reconstructed_external_arm_02083618
.L020453b8:
    mov r1, #931135488
.L020453bc:
    bl reconstructed_external_arm_020836f4
.L020453c0:
    mov r1, #0
.L020453c4:
    mov r4, r0
.L020453c8:
    bl reconstructed_external_arm_02083a84
.L020453cc:
    cmp r0, #0
.L020453d0:
    bne .L020445e4
.L020453d4:
    mov r0, r4
.L020453d8:
    bl reconstructed_external_arm_02082c68
.L020453dc:
    ldr r2, [pc, #220]
.L020453e0:
    ldr r3, [pc, #220]
.L020453e4:
    bl reconstructed_external_arm_02083298
.L020453e8:
    cmp r0, #0
.L020453ec:
    beq .L02045570
.L020453f0:
    mov r3, r6, lsl #8
.L020453f4:
    mov r2, r5, lsl #8
.L020453f8:
    str r3, [sp, #128]
.L020453fc:
    str r2, [sp, #132]
.L02045400:
    add r0, sp, #216
.L02045404:
    add r1, sp, #128
.L02045408:
    ldr ip, [pc, #200]
.L0204540c:
    blx ip
.L02045410:
    ldr r2, [sp, #216]
.L02045414:
    mov r3, r2, asr #31
.L02045418:
    mov r3, r3, lsl #8
.L0204541c:
    orr r3, r3, r2, lsr #24
.L02045420:
    mov r2, r2, lsl #8
.L02045424:
    mov r2, r2, lsr #16
.L02045428:
    orr r2, r2, r3, lsl #16
.L0204542c:
    mov r3, r2, asr #31
.L02045430:
    mov r3, r3, lsl #24
.L02045434:
    orr r3, r3, r2, lsr #8
.L02045438:
    mov r2, r2, lsl #24
.L0204543c:
    mov r2, r2, lsr #16
.L02045440:
    orr r2, r2, r3, lsl #16
.L02045444:
    mov ip, r2
.L02045448:
    b .L02045000
.L0204544c:
    mov r2, fp, asr #16
.L02045450:
    mov r3, sl, asr #16
.L02045454:
    str r3, [sp, #168]
.L02045458:
    str r2, [sp, #172]
.L0204545c:
    ldr r3, [pc, #116]
.L02045460:
    add r0, sp, #236
.L02045464:
    add r1, sp, #168
.L02045468:
    blx r3
.L0204546c:
    mov r2, sl
.L02045470:
    mov r3, r2, asr #31
.L02045474:
    strd r2, [sp, #8]
.L02045478:
    ldr r2, [sp, #236]
.L0204547c:
    mov r3, r2, asr #31
.L02045480:
    mov r3, r3, lsl #24
.L02045484:
    orr r3, r3, r2, lsr #8
.L02045488:
    mov r2, r2, lsl #24
.L0204548c:
    b .L02044e38
.L02045490:
    ldr r0, [pc, #20]
.L02045494:
    ldr r1, [pc, #44]
.L02045498:
    ldr r2, [pc, #44]
.L0204549c:
    bl reconstructed_external_arm_02097804
.L020454a0:
    mov r9, #0
.L020454a4:
    str r9, [sp, #40]
.L020454a8:
    b .L020449fc
.L020454ac:
    .long 0x020c38e8  /* literal data */
.L020454b0:
    .long 0x00000622  /* literal data */
.L020454b4:
    .long 0x020c3aa8  /* literal data */
.L020454b8:
    .long 0x00000629  /* literal data */
.L020454bc:
    .long 0x020c3ac8  /* literal data */
.L020454c0:
    .long 0x9999999a  /* literal data */
.L020454c4:
    .long 0x3fb99999  /* literal data */
.L020454c8:
    .long 0x00000638  /* literal data */
.L020454cc:
    .long 0x020c3ae8  /* literal data */
.L020454d0:
    .long 0x43340000  /* literal data */
.L020454d4:
    .long 0x04000200  /* literal data */
.L020454d8:
    .long 0x0209390c  /* literal data */
.L020454dc:
    mov r3, sl, lsl #16
.L020454e0:
    mov r2, fp, lsl #16
.L020454e4:
    str r3, [sp, #112]
.L020454e8:
    str r2, [sp, #116]
.L020454ec:
    add r0, sp, #208
.L020454f0:
    add r1, sp, #112
.L020454f4:
    ldr ip, [pc, #-36]
.L020454f8:
    blx ip
.L020454fc:
    ldr r2, [sp, #208]
.L02045500:
    mov r3, r2, asr #31
.L02045504:
    mov r3, r3, lsl #8
.L02045508:
    orr r3, r3, r2, lsr #24
.L0204550c:
    mov r2, r2, lsl #8
.L02045510:
    mov r2, r2, lsr #16
.L02045514:
    orr r2, r2, r3, lsl #16
.L02045518:
    mov r3, r2, asr #31
.L0204551c:
    mov r3, r3, lsl #8
.L02045520:
    orr r3, r3, r2, lsr #24
.L02045524:
    mov r2, r2, lsl #8
.L02045528:
    mov r2, r2, lsr #16
.L0204552c:
    orr r2, r2, r3, lsl #16
.L02045530:
    mov ip, r2
.L02045534:
    b .L02045000
.L02045538:
    mov r3, r5, asr #8
.L0204553c:
    mov r2, r6, asr #8
.L02045540:
    str r3, [sp, #120]
.L02045544:
    str r2, [sp, #124]
.L02045548:
    add r0, sp, #212
.L0204554c:
    add r1, sp, #120
.L02045550:
    ldr ip, [pc, #-128]
.L02045554:
    blx ip
.L02045558:
    ldr r2, [sp, #212]
.L0204555c:
    mov r3, r2, asr #31
.L02045560:
    mov r3, r3, lsl #24
.L02045564:
    orr r3, r3, r2, lsr #8
.L02045568:
    mov r2, r2, lsl #24
.L0204556c:
    b .L02045510
.L02045570:
    mov r0, r4
.L02045574:
    ldr r1, [pc, #-172]
.L02045578:
    bl reconstructed_external_arm_02083a9c
.L0204557c:
    cmp r0, #0
.L02045580:
    beq .L02045618
.L02045584:
    mov r0, r5
.L02045588:
    mov r1, r0, asr #31
.L0204558c:
    mov r2, r6
.L02045590:
    mov r3, r2, asr #31
.L02045594:
    mul lr, r0, r1
.L02045598:
    mul ip, r2, r3
.L0204559c:
    umull r4, r5, r2, r2
.L020455a0:
    umull r6, r7, r0, r0
.L020455a4:
    ldr r3, [pc, #-216]
.L020455a8:
    mov ip, ip, lsl #1
.L020455ac:
    mov lr, lr, lsl #1
.L020455b0:
    add r5, ip, r5
.L020455b4:
    add r7, lr, r7
.L020455b8:
    mov r8, r4, lsr #16
.L020455bc:
    mov r0, #1
.L020455c0:
    mov r4, r6, lsr #16
.L020455c4:
    orr r8, r8, r5, lsl #16
.L020455c8:
    strh r0, [r3, #176]
.L020455cc:
    mov r1, r3
.L020455d0:
    orr r4, r4, r7, lsl #16
.L020455d4:
    mov r5, r7, asr #16
.L020455d8:
    ldrh r3, [r1, #176]
.L020455dc:
    tst r3, #32768
.L020455e0:
    bne .L020455d8
.L020455e4:
    add r2, r8, r4
.L020455e8:
    mov r3, r2, asr #31
.L020455ec:
    mov r3, r3, lsl #16
.L020455f0:
    orr r3, r3, r2, lsr #16
.L020455f4:
    mov r2, r2, lsl #16
.L020455f8:
    strd r2, [r1, #184]
.L020455fc:
    ldr r2, [pc, #-304]
.L02045600:
    ldrh r3, [r2, #176]
.L02045604:
    tst r3, #32768
.L02045608:
    bne .L02045600
.L0204560c:
    mov r1, #67108864
.L02045610:
    ldr r2, [r1, #692]
.L02045614:
    b .L0204542c
.L02045618:
    mov r3, sl, asr #16
.L0204561c:
    mov r2, fp, asr #16
.L02045620:
    str r3, [sp, #136]
.L02045624:
    str r2, [sp, #140]
.L02045628:
    add r0, sp, #220
.L0204562c:
    add r1, sp, #136
.L02045630:
    ldr ip, [pc, #-352]
.L02045634:
    blx ip
.L02045638:
    ldr r2, [sp, #220]
.L0204563c:
    mov r3, r2, asr #31
.L02045640:
    mov r3, r3, lsl #24
.L02045644:
    orr r3, r3, r2, lsr #8
.L02045648:
    mov r2, r2, lsl #24
.L0204564c:
    b .L02045424
.L02045650:
    stmdb sp!, {r4, r5, lr}
.L02045654:
    mov r4, r0
.L02045658:
    sub sp, sp, #156
.L0204565c:
    ldr r0, [r1, #4]
.L02045660:
    ldr ip, [r1]
.L02045664:
    ldmia r4, {r2, r3}
.L02045668:
    add r5, sp, #4
.L0204566c:
    rsb r3, r0, r3
.L02045670:
    rsb r2, ip, r2
.L02045674:
    add r1, sp, #144
.L02045678:
    mov r0, r5
.L0204567c:
    str r2, [sp, #144]
.L02045680:
    str r3, [sp, #148]
.L02045684:
    bl .L0203ef04
.L02045688:
    mov r0, r4
.L0204568c:
    mov r1, r5
.L02045690:
    bl .L02044568
.L02045694:
    subs r4, r0, #0
.L02045698:
    ldr r1, [pc, #28]
.L0204569c:
    ldr r0, [pc, #28]
.L020456a0:
    ldr r2, [pc, #28]
.L020456a4:
    beq .L020456b4
.L020456a8:
    mov r0, r4
.L020456ac:
    add sp, sp, #156
.L020456b0:
    ldmia sp!, {r4, r5, pc}
.L020456b4:
    bl reconstructed_external_arm_02097804
.L020456b8:
    b .L020456a8
.L020456bc:
    .long 0x00000641  /* literal data */
.L020456c0:
    .long 0x020c38e8  /* literal data */
.L020456c4:
    .long 0x020c3af0  /* literal data */
.L020456c8:
    ldr r3, [r0, #8]
.L020456cc:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020456d0:
    mul r6, r3, r3
.L020456d4:
    mov sl, r0
.L020456d8:
    mov r3, r6, lsl #4
.L020456dc:
    mov r0, r6, lsl #2
.L020456e0:
    add r0, r0, r3
.L020456e4:
    mov r2, r0, lsl #3
.L020456e8:
    sub sp, sp, #236
.L020456ec:
    rsb r0, r0, r2
.L020456f0:
    bl reconstructed_external_arm_0209787c
.L020456f4:
    cmp r6, #0
.L020456f8:
    str r0, [sp, #16]
.L020456fc:
    beq .L02045720
.L02045700:
    mov r4, r0
.L02045704:
    mov r5, #0
.L02045708:
    mov r0, r4
.L0204570c:
    add r5, r5, #1
.L02045710:
    bl .L0203eef0
.L02045714:
    cmp r6, r5
.L02045718:
    add r4, r4, #140
.L0204571c:
    bne .L02045708
.L02045720:
    ldr r6, [sl, #8]
.L02045724:
    cmp r6, #0
.L02045728:
    movle ip, #0
.L0204572c:
    strle ip, [sp, #20]
.L02045730:
    ble .L020457f8
.L02045734:
    mov r1, #0
.L02045738:
    str r1, [sp, #20]
.L0204573c:
    mov r7, r1
.L02045740:
    mov ip, r7, lsl #2
.L02045744:
    add r5, r7, #1
.L02045748:
    ldr lr, [sl]
.L0204574c:
    mov r3, r7, lsl #4
.L02045750:
    add r3, ip, r3
.L02045754:
    mov r2, r5, lsl #4
.L02045758:
    mov r0, r5, lsl #2
.L0204575c:
    add r0, r0, r2
.L02045760:
    ldr r4, [sl, #4]
.L02045764:
    ldr r2, [lr, ip]
.L02045768:
    ldr r9, [sp, #16]
.L0204576c:
    mov r1, r3, lsl #3
.L02045770:
    rsb r1, r3, r1
.L02045774:
    mov r8, r6
.L02045778:
    ldr r3, [r4, r7, lsl #2]
.L0204577c:
    sub r4, r6, #1
.L02045780:
    str r2, [r9, r1]
.L02045784:
    add r6, r9, r1
.L02045788:
    ldr r1, [sp, #20]
.L0204578c:
    cmp r7, r4
.L02045790:
    mov ip, r0, lsl #3
.L02045794:
    ldr r2, [sp, #16]
.L02045798:
    mov lr, #0
.L0204579c:
    movne r8, r5
.L020457a0:
    rsbne lr, r0, ip
.L020457a4:
    add r1, r1, #1
.L020457a8:
    cmp r7, #0
.L020457ac:
    subne r4, r7, #1
.L020457b0:
    str r3, [r6, #4]
.L020457b4:
    mov r0, r6
.L020457b8:
    str r1, [sp, #20]
.L020457bc:
    add r1, r2, lr
.L020457c0:
    bl .L0203f074
.L020457c4:
    mov r3, r4, lsl #4
.L020457c8:
    mov r2, r4, lsl #2
.L020457cc:
    add r2, r2, r3
.L020457d0:
    mov r1, r2, lsl #3
.L020457d4:
    ldr r3, [sp, #16]
.L020457d8:
    rsb r1, r2, r1
.L020457dc:
    mov r0, r6
.L020457e0:
    add r1, r3, r1
.L020457e4:
    bl .L0203f074
.L020457e8:
    ldr r6, [sl, #8]
.L020457ec:
    mov r7, r8
.L020457f0:
    cmp r6, r8
.L020457f4:
    bgt .L02045740
.L020457f8:
    ldr r1, [sp, #20]
.L020457fc:
    cmp r1, #0
.L02045800:
    ble .L02045b04
.L02045804:
    mov r2, #0
.L02045808:
    ldr sl, [sp, #16]
.L0204580c:
    str r2, [sp, #24]
.L02045810:
    mov r5, r2
.L02045814:
    ldr r3, [sl, #136]
.L02045818:
    cmp r3, #0
.L0204581c:
    movgt r9, #0
.L02045820:
    strgt sl, [sp, #40]
.L02045824:
    strgt r9, [sp, #28]
.L02045828:
    ble .L02045a34
.L0204582c:
    ldr r1, [sp, #20]
.L02045830:
    cmp r1, #0
.L02045834:
    ble .L02045a14
.L02045838:
    ldr r9, [sp, #20]
.L0204583c:
    mov ip, #0
.L02045840:
    mov r3, r9, lsl #2
.L02045844:
    mov r2, r9, lsl #4
.L02045848:
    add r3, r3, r2
.L0204584c:
    mov r1, r3, lsl #3
.L02045850:
    ldr r7, [sp, #16]
.L02045854:
    rsb fp, r3, r1
.L02045858:
    str ip, [sp, #32]
.L0204585c:
    ldr r1, [sp, #32]
.L02045860:
    ldr r2, [sp, #24]
.L02045864:
    cmp r1, r2
.L02045868:
    beq .L020459f4
.L0204586c:
    ldr r3, [sp, #40]
.L02045870:
    ldr r1, [r3, #8]
.L02045874:
    cmp r1, r7
.L02045878:
    beq .L020459f4
.L0204587c:
    ldr r4, [r7, #136]
.L02045880:
    cmp r4, #0
.L02045884:
    movgt r8, r7
.L02045888:
    movgt r9, #0
.L0204588c:
    bgt .L020458ac
.L02045890:
    b .L020459f4
.L02045894:
    add r9, r9, #1
.L02045898:
    cmp r4, r9
.L0204589c:
    add r8, r8, #4
.L020458a0:
    ble .L020459f4
.L020458a4:
    ldr ip, [sp, #40]
.L020458a8:
    ldr r1, [ip, #8]
.L020458ac:
    ldr ip, [r8, #8]
.L020458b0:
    cmp ip, r1
.L020458b4:
    beq .L02045894
.L020458b8:
    cmp sl, ip
.L020458bc:
    mov r3, ip
.L020458c0:
    mov r2, r7
.L020458c4:
    mov lr, #0
.L020458c8:
    mov r0, sl
.L020458cc:
    beq .L02045894
.L020458d0:
    ldr ip, [sp, #16]
.L020458d4:
    str lr, [sp, #196]
.L020458d8:
    add r6, ip, fp
.L020458dc:
    add ip, sp, #192
.L020458e0:
    str lr, [sp, #192]
.L020458e4:
    str ip, [sp]
.L020458e8:
    bl .L0203e768
.L020458ec:
    cmp r0, #0
.L020458f0:
    mov r1, sl
.L020458f4:
    ldreq r4, [r7, #136]
.L020458f8:
    beq .L02045894
.L020458fc:
    ldr r2, [sp, #40]
.L02045900:
    ldr r5, [r8, #8]
.L02045904:
    ldr r4, [r2, #8]
.L02045908:
    add r9, r9, #1
.L0204590c:
    mov r0, r4
.L02045910:
    bl .L0203efb8
.L02045914:
    mov r1, r4
.L02045918:
    mov r0, sl
.L0204591c:
    bl .L0203efb8
.L02045920:
    ldr r0, [r8, #8]
.L02045924:
    mov r1, r7
.L02045928:
    bl .L0203efb8
.L0204592c:
    mov r1, r5
.L02045930:
    mov r0, r7
.L02045934:
    bl .L0203efb8
.L02045938:
    add r1, sp, #192
.L0204593c:
    add r0, sp, #52
.L02045940:
    bl .L0203ef04
.L02045944:
    ldr ip, [sp, #16]
.L02045948:
    ldr r3, [sp, #52]
.L0204594c:
    ldr r2, [sp, #56]
.L02045950:
    str r3, [fp, ip]
.L02045954:
    str r2, [r6, #4]
.L02045958:
    add r1, sp, #60
.L0204595c:
    mov r2, #128
.L02045960:
    add r0, r6, #8
.L02045964:
    bl reconstructed_external_arm_0209781c
.L02045968:
    ldr r3, [sp, #188]
.L0204596c:
    mov r0, r6
.L02045970:
    str r3, [r6, #136]
.L02045974:
    mov r1, sl
.L02045978:
    bl .L0203f074
.L0204597c:
    mov r0, sl
.L02045980:
    mov r1, r6
.L02045984:
    bl .L0203f074
.L02045988:
    mov r0, r6
.L0204598c:
    mov r1, r7
.L02045990:
    bl .L0203f074
.L02045994:
    mov r0, r7
.L02045998:
    mov r1, r6
.L0204599c:
    bl .L0203f074
.L020459a0:
    mov r1, r4
.L020459a4:
    mov r0, r6
.L020459a8:
    bl .L0203f074
.L020459ac:
    mov r0, r4
.L020459b0:
    mov r1, r6
.L020459b4:
    bl .L0203f074
.L020459b8:
    mov r1, r5
.L020459bc:
    mov r0, r6
.L020459c0:
    bl .L0203f074
.L020459c4:
    mov r0, r5
.L020459c8:
    mov r1, r6
.L020459cc:
    bl .L0203f074
.L020459d0:
    ldr r1, [sp, #20]
.L020459d4:
    ldr r4, [r7, #136]
.L020459d8:
    add r1, r1, #1
.L020459dc:
    cmp r4, r9
.L020459e0:
    str r1, [sp, #20]
.L020459e4:
    add fp, fp, #140
.L020459e8:
    mov r5, #1
.L020459ec:
    add r8, r8, #4
.L020459f0:
    bgt .L020458a4
.L020459f4:
    ldr r2, [sp, #32]
.L020459f8:
    ldr r3, [sp, #20]
.L020459fc:
    add r2, r2, #1
.L02045a00:
    cmp r3, r2
.L02045a04:
    str r2, [sp, #32]
.L02045a08:
    add r7, r7, #140
.L02045a0c:
    bgt .L0204585c
.L02045a10:
    ldr r3, [sl, #136]
.L02045a14:
    ldr r9, [sp, #28]
.L02045a18:
    ldr ip, [sp, #40]
.L02045a1c:
    add r9, r9, #1
.L02045a20:
    add ip, ip, #4
.L02045a24:
    cmp r3, r9
.L02045a28:
    str r9, [sp, #28]
.L02045a2c:
    str ip, [sp, #40]
.L02045a30:
    bgt .L0204582c
.L02045a34:
    ldr r2, [sp, #24]
.L02045a38:
    ldr r3, [sp, #20]
.L02045a3c:
    add r2, r2, #1
.L02045a40:
    cmp r2, r3
.L02045a44:
    str r2, [sp, #24]
.L02045a48:
    add sl, sl, #140
.L02045a4c:
    blt .L02045814
.L02045a50:
    cmp r5, #0
.L02045a54:
    bne .L020457f8
.L02045a58:
    ldr r3, [sp, #20]
.L02045a5c:
    cmp r3, #0
.L02045a60:
    ble .L02045b04
.L02045a64:
    ldr r9, [sp, #16]
.L02045a68:
    mov r3, r5
.L02045a6c:
    str r9, [sp, #44]
.L02045a70:
    ldr ip, [sp, #20]
.L02045a74:
    add r3, r3, #1
.L02045a78:
    cmp r3, ip
.L02045a7c:
    str r3, [sp, #36]
.L02045a80:
    bne .L02045d00
.L02045a84:
    ldr r2, [sp, #20]
.L02045a88:
    cmp r2, #0
.L02045a8c:
    ble .L02045b04
.L02045a90:
    ldr lr, [pc, #1232]
.L02045a94:
    ldr r4, [pc, #1232]
.L02045a98:
    ldr r2, [sp, #16]
.L02045a9c:
    mvn r5, #0
.L02045aa0:
    mov ip, #0
.L02045aa4:
    b .L02045ad0
.L02045aa8:
    ldr r3, [r2, #136]
.L02045aac:
    cmp r3, #0
.L02045ab0:
    ldrgt r4, [r2]
.L02045ab4:
    movgt lr, r1
.L02045ab8:
    movgt r5, ip
.L02045abc:
    ldr r3, [sp, #20]
.L02045ac0:
    add ip, ip, #1
.L02045ac4:
    cmp ip, r3
.L02045ac8:
    add r2, r2, #140
.L02045acc:
    beq .L02045b08
.L02045ad0:
    ldr r1, [r2, #4]
.L02045ad4:
    cmp r1, lr
.L02045ad8:
    blt .L02045aa8
.L02045adc:
    bne .L02045abc
.L02045ae0:
    ldr r0, [r2]
.L02045ae4:
    mov lr, r1
.L02045ae8:
    cmp r0, r4
.L02045aec:
    ble .L02045abc
.L02045af0:
    ldr r3, [r2, #136]
.L02045af4:
    cmp r3, #0
.L02045af8:
    movgt r4, r0
.L02045afc:
    movgt r5, ip
.L02045b00:
    b .L02045abc
.L02045b04:
    mvn r5, #0
.L02045b08:
    ldr r9, [sp, #20]
.L02045b0c:
    mov r4, #0
.L02045b10:
    mov ip, r9
.L02045b14:
    mul r9, ip, r9
.L02045b18:
    mov r3, #65536
.L02045b1c:
    mov r0, r9, lsl #3
.L02045b20:
    str r3, [sp, #200]
.L02045b24:
    str r4, [sp, #204]
.L02045b28:
    bl reconstructed_external_arm_0209787c
.L02045b2c:
    cmp r9, r4
.L02045b30:
    mov r7, r0
.L02045b34:
    beq .L02045b60
.L02045b38:
    mov r1, r4
.L02045b3c:
    mov r2, r4
.L02045b40:
    mov r0, r4
.L02045b44:
    add r1, r1, #1
.L02045b48:
    add r3, r2, r7
.L02045b4c:
    cmp r9, r1
.L02045b50:
    str r0, [r2, r7]
.L02045b54:
    str r0, [r3, #4]
.L02045b58:
    add r2, r2, #8
.L02045b5c:
    bne .L02045b44
.L02045b60:
    mov r2, r5, lsl #4
.L02045b64:
    mov r3, r5, lsl #2
.L02045b68:
    add r3, r3, r2
.L02045b6c:
    mov r4, r3, lsl #3
.L02045b70:
    ldr r1, [sp, #16]
.L02045b74:
    rsb r4, r3, r4
.L02045b78:
    add r6, r1, r4
.L02045b7c:
    mov r0, r6
.L02045b80:
    add r1, sp, #200
.L02045b84:
    bl .L02045650
.L02045b88:
    ldr r2, [sp, #16]
.L02045b8c:
    cmp r6, r0
.L02045b90:
    ldr r3, [r2, r4]
.L02045b94:
    ldr r2, [r6, #4]
.L02045b98:
    mov r5, r0
.L02045b9c:
    str r3, [r7]
.L02045ba0:
    str r2, [r7, #4]
.L02045ba4:
    beq .L02045c08
.L02045ba8:
    mov r8, r6
.L02045bac:
    mov r4, r7
.L02045bb0:
    mov sl, #1
.L02045bb4:
    b .L02045bec
.L02045bb8:
    ldr r3, [r5]
.L02045bbc:
    ldr r2, [r5, #4]
.L02045bc0:
    mov r1, r8
.L02045bc4:
    mov r0, r5
.L02045bc8:
    str r3, [r4, #8]
.L02045bcc:
    str r2, [r4, #12]
.L02045bd0:
    bl .L02044568
.L02045bd4:
    cmp r6, r0
.L02045bd8:
    mov r8, r5
.L02045bdc:
    add sl, sl, #1
.L02045be0:
    mov r5, r0
.L02045be4:
    add r4, r4, #8
.L02045be8:
    beq .L02045e58
.L02045bec:
    cmp r9, sl
.L02045bf0:
    ldr r2, [pc, #888]
.L02045bf4:
    ldr r0, [pc, #888]
.L02045bf8:
    ldr r1, [pc, #888]
.L02045bfc:
    bge .L02045bb8
.L02045c00:
    bl reconstructed_external_arm_02097804
.L02045c04:
    b .L02045bb8
.L02045c08:
    mov r0, #4
.L02045c0c:
    bl reconstructed_external_arm_0209787c
.L02045c10:
    mov r3, #0
.L02045c14:
    mov r5, r0
.L02045c18:
    mov r4, #4
.L02045c1c:
    mov r8, r3
.L02045c20:
    mov sl, #1
.L02045c24:
    mov r2, r5
.L02045c28:
    sub r3, r3, #1
.L02045c2c:
    mov r6, #0
.L02045c30:
    cmn r3, #1
.L02045c34:
    str r6, [r2], #4
.L02045c38:
    bne .L02045c28
.L02045c3c:
    mov r0, r4
.L02045c40:
    bl reconstructed_external_arm_0209787c
.L02045c44:
    mov r3, r6
.L02045c48:
    mov r4, r0
.L02045c4c:
    mov r2, r6
.L02045c50:
    cmp r8, r3
.L02045c54:
    str r2, [r4, r3, lsl #2]
.L02045c58:
    add r3, r3, #1
.L02045c5c:
    bne .L02045c50
.L02045c60:
    cmp sl, #0
.L02045c64:
    ble .L02045c9c
.L02045c68:
    mov ip, #0
.L02045c6c:
    mov lr, ip
.L02045c70:
    mov r0, ip
.L02045c74:
    ldr r3, [lr, r7]
.L02045c78:
    add r2, lr, r7
.L02045c7c:
    str r3, [r0, r5]
.L02045c80:
    ldr r1, [r2, #4]
.L02045c84:
    add ip, ip, #1
.L02045c88:
    cmp sl, ip
.L02045c8c:
    str r1, [r0, r4]
.L02045c90:
    add lr, lr, #8
.L02045c94:
    add r0, r0, #4
.L02045c98:
    bne .L02045c74
.L02045c9c:
    mov r0, #20
.L02045ca0:
    bl reconstructed_external_arm_02097894
.L02045ca4:
    mov r1, r5
.L02045ca8:
    mov r2, r4
.L02045cac:
    mov r3, sl
.L02045cb0:
    mov r6, r0
.L02045cb4:
    bl .L0203f208
.L02045cb8:
    mov r0, r7
.L02045cbc:
    bl reconstructed_external_arm_02097888
.L02045cc0:
    cmp r4, #0
.L02045cc4:
    beq .L02045cd0
.L02045cc8:
    mov r0, r4
.L02045ccc:
    bl reconstructed_external_arm_02097888
.L02045cd0:
    cmp r5, #0
.L02045cd4:
    beq .L02045ce0
.L02045cd8:
    mov r0, r5
.L02045cdc:
    bl reconstructed_external_arm_02097888
.L02045ce0:
    ldr r3, [sp, #16]
.L02045ce4:
    cmp r3, #0
.L02045ce8:
    beq .L02045cf4
.L02045cec:
    mov r0, r3
.L02045cf0:
    bl reconstructed_external_arm_02097888
.L02045cf4:
    mov r0, r6
.L02045cf8:
    add sp, sp, #236
.L02045cfc:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02045d00:
    ldr r1, [sp, #44]
.L02045d04:
    mov fp, r3
.L02045d08:
    add r1, r1, #140
.L02045d0c:
    str r1, [sp, #12]
.L02045d10:
    mov sl, r1
.L02045d14:
    ldr r3, [sp, #44]
.L02045d18:
    ldr r1, [sl, #4]
.L02045d1c:
    ldr r2, [r3]
.L02045d20:
    ldr r0, [sl]
.L02045d24:
    ldr r3, [r3, #4]
.L02045d28:
    rsb r5, r0, r2
.L02045d2c:
    rsb r6, r1, r3
.L02045d30:
    eor r2, r6, r6, asr #31
.L02045d34:
    sub r2, r2, r6, asr #31
.L02045d38:
    eor r0, r5, r5, asr #31
.L02045d3c:
    sub r0, r0, r5, asr #31
.L02045d40:
    add r0, r2, r0
.L02045d44:
    bl reconstructed_external_arm_02083618
.L02045d48:
    mov r1, #931135488
.L02045d4c:
    bl reconstructed_external_arm_020836f4
.L02045d50:
    mov r1, #0
.L02045d54:
    mov r4, r0
.L02045d58:
    bl reconstructed_external_arm_02083a84
.L02045d5c:
    cmp r0, #0
.L02045d60:
    bne .L02045dc4
.L02045d64:
    mov r0, r4
.L02045d68:
    bl reconstructed_external_arm_02082c68
.L02045d6c:
    ldr r2, [pc, #520]
.L02045d70:
    ldr r3, [pc, #520]
.L02045d74:
    bl reconstructed_external_arm_02083298
.L02045d78:
    cmp r0, #0
.L02045d7c:
    beq .L02045e84
.L02045d80:
    mov r3, r5, lsl #8
.L02045d84:
    mov r2, r6, lsl #8
.L02045d88:
    str r3, [sp, #208]
.L02045d8c:
    str r2, [sp, #212]
.L02045d90:
    add r0, sp, #224
.L02045d94:
    add r1, sp, #208
.L02045d98:
    ldr ip, [pc, #484]
.L02045d9c:
    blx ip
.L02045da0:
    ldr r2, [sp, #224]
.L02045da4:
    mov r3, r2, asr #31
.L02045da8:
    mov r3, r3, lsl #8
.L02045dac:
    orr r3, r3, r2, lsr #24
.L02045db0:
    mov r2, r2, lsl #8
.L02045db4:
    mov r2, r2, lsr #16
.L02045db8:
    orr r2, r2, r3, lsl #16
.L02045dbc:
    cmp r2, #3
.L02045dc0:
    bgt .L02045e34
.L02045dc4:
    ldr r5, [sl, #136]
.L02045dc8:
    cmp r5, #0
.L02045dcc:
    ble .L02045e1c
.L02045dd0:
    mov r4, sl
.L02045dd4:
    mov r6, #0
.L02045dd8:
    ldr r1, [r4, #8]
.L02045ddc:
    ldr r0, [sp, #44]
.L02045de0:
    bl .L0203f074
.L02045de4:
    ldr r0, [r4, #8]
.L02045de8:
    ldr r1, [sp, #44]
.L02045dec:
    bl .L0203f074
.L02045df0:
    ldr r0, [r4, #8]
.L02045df4:
    mov r1, sl
.L02045df8:
    bl .L0203efb8
.L02045dfc:
    mov r1, r6
.L02045e00:
    mov r0, sl
.L02045e04:
    add r6, r6, #1
.L02045e08:
    bl .L0203ef24
.L02045e0c:
    cmp r5, r6
.L02045e10:
    add r4, r4, #4
.L02045e14:
    bne .L02045dd8
.L02045e18:
    ldr r5, [sl, #136]
.L02045e1c:
    cmp r5, #0
.L02045e20:
    beq .L02045e34
.L02045e24:
    ldr r0, [pc, #328]
.L02045e28:
    ldr r1, [pc, #344]
.L02045e2c:
    ldr r2, [pc, #344]
.L02045e30:
    bl reconstructed_external_arm_02097804
.L02045e34:
    ldr ip, [sp, #20]
.L02045e38:
    add fp, fp, #1
.L02045e3c:
    cmp fp, ip
.L02045e40:
    add sl, sl, #140
.L02045e44:
    blt .L02045d14
.L02045e48:
    ldr r1, [sp, #12]
.L02045e4c:
    ldr r3, [sp, #36]
.L02045e50:
    str r1, [sp, #44]
.L02045e54:
    b .L02045a70
.L02045e58:
    mov r4, sl, lsl #2
.L02045e5c:
    mov r0, r4
.L02045e60:
    bl reconstructed_external_arm_0209787c
.L02045e64:
    subs r3, sl, #1
.L02045e68:
    mov r5, r0
.L02045e6c:
    movcs r8, r3
.L02045e70:
    bcs .L02045c24
.L02045e74:
    mov r0, r4
.L02045e78:
    bl reconstructed_external_arm_0209787c
.L02045e7c:
    mov r4, r0
.L02045e80:
    b .L02045c60
.L02045e84:
    mov r0, r4
.L02045e88:
    ldr r1, [pc, #256]
.L02045e8c:
    bl reconstructed_external_arm_02083a9c
.L02045e90:
    cmp r0, #0
.L02045e94:
    beq .L02045f28
.L02045e98:
    mov r2, r5
.L02045e9c:
    mov r3, r2, asr #31
.L02045ea0:
    mov r0, r6
.L02045ea4:
    mov r1, r0, asr #31
.L02045ea8:
    mul ip, r2, r3
.L02045eac:
    mul lr, r0, r1
.L02045eb0:
    umull r4, r5, r2, r2
.L02045eb4:
    umull r6, r7, r0, r0
.L02045eb8:
    ldr r3, [pc, #212]
.L02045ebc:
    mov ip, ip, lsl #1
.L02045ec0:
    mov lr, lr, lsl #1
.L02045ec4:
    mov r8, r4, lsr #16
.L02045ec8:
    add r5, ip, r5
.L02045ecc:
    add r7, lr, r7
.L02045ed0:
    mov r9, #1
.L02045ed4:
    mov r4, r6, lsr #16
.L02045ed8:
    strh r9, [r3, #176]
.L02045edc:
    mov r1, r3
.L02045ee0:
    orr r8, r8, r5, lsl #16
.L02045ee4:
    orr r4, r4, r7, lsl #16
.L02045ee8:
    ldrh r3, [r1, #176]
.L02045eec:
    tst r3, #32768
.L02045ef0:
    bne .L02045ee8
.L02045ef4:
    add r2, r8, r4
.L02045ef8:
    mov r3, r2, asr #31
.L02045efc:
    mov r3, r3, lsl #16
.L02045f00:
    orr r3, r3, r2, lsr #16
.L02045f04:
    mov r2, r2, lsl #16
.L02045f08:
    strd r2, [r1, #184]
.L02045f0c:
    ldr r2, [pc, #128]
.L02045f10:
    ldrh r3, [r2, #176]
.L02045f14:
    tst r3, #32768
.L02045f18:
    bne .L02045f10
.L02045f1c:
    mov r3, #67108864
.L02045f20:
    ldr r2, [r3, #692]
.L02045f24:
    b .L02045dbc
.L02045f28:
    mov r3, r5, asr #8
.L02045f2c:
    mov r2, r6, asr #8
.L02045f30:
    str r3, [sp, #216]
.L02045f34:
    str r2, [sp, #220]
.L02045f38:
    add r0, sp, #228
.L02045f3c:
    add r1, sp, #216
.L02045f40:
    ldr ip, [pc, #60]
.L02045f44:
    blx ip
.L02045f48:
    ldr r2, [sp, #228]
.L02045f4c:
    mov r3, r2, asr #31
.L02045f50:
    mov r3, r3, lsl #24
.L02045f54:
    orr r3, r3, r2, lsr #8
.L02045f58:
    mov r2, r2, lsl #24
.L02045f5c:
    mov r2, r2, lsr #16
.L02045f60:
    orr r2, r2, r3, lsl #16
.L02045f64:
    b .L02045dbc
.L02045f68:
    .long 0x7fff0000  /* literal data */
.L02045f6c:
    .long 0x80010000  /* literal data */
.L02045f70:
    .long 0x020c2f1c  /* literal data */
.L02045f74:
    .long 0x020c38e8  /* literal data */
.L02045f78:
    .long 0x000005d9  /* literal data */
.L02045f7c:
    .long 0x9999999a  /* literal data */
.L02045f80:
    .long 0x3fb99999  /* literal data */
.L02045f84:
    .long 0x0209390c  /* literal data */
.L02045f88:
    .long 0x000005b9  /* literal data */
.L02045f8c:
    .long 0x020c3af4  /* literal data */
.L02045f90:
    .long 0x43340000  /* literal data */
.L02045f94:
    .long 0x04000200  /* literal data */


/* b2Island-Solve-region at 0x0204737c, 3444 bytes, ARM. */
.section .reconstructed.fn06,"ax",%progbits
.align 2
.arm
.global reconstructed_06_b2Island_Solve_region
reconstructed_06_b2Island_Solve_region:
.L0204737c:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L02047380:
    sub sp, sp, #252
.L02047384:
    str r0, [sp, #84]
.L02047388:
    ldr r0, [r0, #20]
.L0204738c:
    str r1, [sp, #80]
.L02047390:
    ldrb r1, [sp, #288]
.L02047394:
    cmp r0, #0
.L02047398:
    str r0, [sp, #28]
.L0204739c:
    str r2, [sp, #76]
.L020473a0:
    str r3, [sp, #72]
.L020473a4:
    str r1, [sp, #68]
.L020473a8:
    ble .L020477bc
.L020473ac:
    mov r2, #0
.L020473b0:
    str r2, [sp, #96]
.L020473b4:
    ldr r5, [sp, #84]
.L020473b8:
    ldr r8, [sp, #96]
.L020473bc:
    ldr r3, [r5, #8]
.L020473c0:
    ldr fp, [r3, r8, lsl #2]
.L020473c4:
    ldrh r2, [fp, #2]
.L020473c8:
    cmp r2, #0
.L020473cc:
    beq .L020477a4
.L020473d0:
    add sl, fp, #76
.L020473d4:
    ldr r8, [sl, #4]
.L020473d8:
    ldr r4, [fp, #120]
.L020473dc:
    ldr r6, [fp, #76]
.L020473e0:
    mov r5, r4, asr #31
.L020473e4:
    mov r7, r6, asr #31
.L020473e8:
    mov r9, r8, asr #31
.L020473ec:
    mul ip, r4, r7
.L020473f0:
    mul lr, r4, r9
.L020473f4:
    umull r0, r1, r4, r8
.L020473f8:
    umull r2, r3, r4, r6
.L020473fc:
    str sl, [sp, #88]
.L02047400:
    mla sl, r6, r5, ip
.L02047404:
    mla ip, r8, r5, lr
.L02047408:
    ldr lr, [sp, #76]
.L0204740c:
    ldr r5, [sp, #80]
.L02047410:
    ldmia lr, {r6, r8}
.L02047414:
    add r3, sl, r3
.L02047418:
    add r1, ip, r1
.L0204741c:
    mov r2, r2, lsr #16
.L02047420:
    mov r0, r0, lsr #16
.L02047424:
    ldr r4, [r5]
.L02047428:
    orr r2, r2, r3, lsl #16
.L0204742c:
    orr r0, r0, r1, lsl #16
.L02047430:
    add r6, r6, r2
.L02047434:
    add r8, r8, r0
.L02047438:
    mov r5, r4, asr #31
.L0204743c:
    mov r9, r8, asr #31
.L02047440:
    mov r7, r6, asr #31
.L02047444:
    mul lr, r4, r9
.L02047448:
    mul ip, r4, r7
.L0204744c:
    umull r0, r1, r4, r8
.L02047450:
    umull r2, r3, r4, r6
.L02047454:
    mla sl, r6, r5, ip
.L02047458:
    mla ip, r8, r5, lr
.L0204745c:
    ldr r6, [fp, #64]
.L02047460:
    ldr lr, [fp, #68]
.L02047464:
    add r3, sl, r3
.L02047468:
    add r1, ip, r1
.L0204746c:
    mov r2, r2, lsr #16
.L02047470:
    mov r0, r0, lsr #16
.L02047474:
    orr r2, r2, r3, lsl #16
.L02047478:
    orr r0, r0, r1, lsl #16
.L0204747c:
    ldr r8, [sp, #80]
.L02047480:
    add r6, r6, r2
.L02047484:
    add lr, lr, r0
.L02047488:
    str r6, [fp, #64]
.L0204748c:
    str lr, [fp, #68]
.L02047490:
    ldr r3, [r8]
.L02047494:
    ldr r2, [fp, #128]
.L02047498:
    ldr lr, [fp, #84]
.L0204749c:
    smull r0, r1, r2, r3
.L020474a0:
    mov r0, r0, lsr #16
.L020474a4:
    orr r0, r0, r1, lsl #16
.L020474a8:
    smull r2, r3, lr, r0
.L020474ac:
    ldr ip, [fp, #72]
.L020474b0:
    mov r2, r2, lsr #16
.L020474b4:
    orr r2, r2, r3, lsl #16
.L020474b8:
    add ip, ip, r2
.L020474bc:
    ldr sl, [sp, #88]
.L020474c0:
    str ip, [fp, #72]
.L020474c4:
    mov ip, #0
.L020474c8:
    str ip, [sl, #4]
.L020474cc:
    str ip, [fp, #76]
.L020474d0:
    str ip, [fp, #84]
.L020474d4:
    ldr r1, [r8]
.L020474d8:
    ldr r0, [fp, #132]
.L020474dc:
    str ip, [sp, #184]
.L020474e0:
    smull r2, r3, r0, r1
.L020474e4:
    mov r2, r2, lsr #16
.L020474e8:
    orr r2, r2, r3, lsl #16
.L020474ec:
    rsb r2, r2, #65536
.L020474f0:
    cmp r2, #65536
.L020474f4:
    mov r1, #65536
.L020474f8:
    str r2, [sp, #180]
.L020474fc:
    str r1, [sp, #188]
.L02047500:
    addlt r2, sp, #180
.L02047504:
    addge r2, sp, #188
.L02047508:
    ldr r2, [r2]
.L0204750c:
    ldr r3, [sp, #184]
.L02047510:
    add r9, fp, #64
.L02047514:
    cmp r2, r3
.L02047518:
    str r2, [sp, #220]
.L0204751c:
    add r0, fp, #72
.L02047520:
    addlt r4, sp, #184
.L02047524:
    addge r4, sp, #220
.L02047528:
    str r0, [sp, #104]
.L0204752c:
    ldr r4, [r4]
.L02047530:
    ldr r0, [r9]
.L02047534:
    mov r5, r4, asr #31
.L02047538:
    mov r1, r0, asr #31
.L0204753c:
    add lr, fp, #68
.L02047540:
    str lr, [sp, #108]
.L02047544:
    mul lr, r0, r5
.L02047548:
    umull r2, r3, r0, r4
.L0204754c:
    mla ip, r4, r1, lr
.L02047550:
    mov r2, r2, lsr #16
.L02047554:
    add r3, ip, r3
.L02047558:
    orr r2, r2, r3, lsl #16
.L0204755c:
    str r2, [r9]
.L02047560:
    ldr r1, [sp, #108]
.L02047564:
    ldr r8, [sp, #80]
.L02047568:
    ldr r0, [r1]
.L0204756c:
    mov sl, #0
.L02047570:
    mov r1, r0, asr #31
.L02047574:
    mul lr, r4, r1
.L02047578:
    umull r2, r3, r4, r0
.L0204757c:
    mla ip, r0, r5, lr
.L02047580:
    mov r2, r2, lsr #16
.L02047584:
    add r3, ip, r3
.L02047588:
    ldr r5, [sp, #108]
.L0204758c:
    orr r2, r2, r3, lsl #16
.L02047590:
    str r2, [r5]
.L02047594:
    ldr r0, [r8]
.L02047598:
    ldr ip, [fp, #136]
.L0204759c:
    mov r1, #65536
.L020475a0:
    smull r2, r3, ip, r0
.L020475a4:
    mov r2, r2, lsr #16
.L020475a8:
    orr r2, r2, r3, lsl #16
.L020475ac:
    rsb r2, r2, r1
.L020475b0:
    cmp r2, r1
.L020475b4:
    str r2, [sp, #192]
.L020475b8:
    str sl, [sp, #196]
.L020475bc:
    str r1, [sp, #200]
.L020475c0:
    addlt r2, sp, #192
.L020475c4:
    addge r2, sp, #200
.L020475c8:
    ldr r2, [r2]
.L020475cc:
    ldr r3, [sp, #196]
.L020475d0:
    ldr ip, [sp, #104]
.L020475d4:
    cmp r2, r3
.L020475d8:
    str r2, [sp, #224]
.L020475dc:
    addlt r0, sp, #196
.L020475e0:
    addge r0, sp, #224
.L020475e4:
    ldr r1, [ip]
.L020475e8:
    ldr r0, [r0]
.L020475ec:
    smull r2, r3, r0, r1
.L020475f0:
    mov r2, r2, lsr #16
.L020475f4:
    orr r2, r2, r3, lsl #16
.L020475f8:
    str r2, [ip]
.L020475fc:
    ldmia r9, {r6, r8}
.L02047600:
    eor r3, r6, r6, asr #31
.L02047604:
    sub r3, r3, r6, asr #31
.L02047608:
    eor r0, r8, r8, asr #31
.L0204760c:
    sub r0, r0, r8, asr #31
.L02047610:
    add r0, r0, r3
.L02047614:
    bl reconstructed_external_arm_02083618
.L02047618:
    mov r1, #931135488
.L0204761c:
    bl reconstructed_external_arm_020836f4
.L02047620:
    mov r1, #0
.L02047624:
    mov r4, r0
.L02047628:
    bl reconstructed_external_arm_02083a84
.L0204762c:
    cmp r0, #0
.L02047630:
    movne ip, #0
.L02047634:
    bne .L02047694
.L02047638:
    mov r0, r4
.L0204763c:
    bl reconstructed_external_arm_02082c68
.L02047640:
    ldr r2, [pc, #2660]
.L02047644:
    ldr r3, [pc, #2660]
.L02047648:
    bl reconstructed_external_arm_02083298
.L0204764c:
    cmp r0, #0
.L02047650:
    beq .L02047dd0
.L02047654:
    mov r3, r6, lsl #8
.L02047658:
    mov r2, r8, lsl #8
.L0204765c:
    str r3, [sp, #144]
.L02047660:
    str r2, [sp, #148]
.L02047664:
    ldr ip, [pc, #2632]
.L02047668:
    add r0, sp, #228
.L0204766c:
    add r1, sp, #144
.L02047670:
    blx ip
.L02047674:
    ldr r2, [sp, #228]
.L02047678:
    mov r3, r2, asr #31
.L0204767c:
    mov r3, r3, lsl #8
.L02047680:
    orr r3, r3, r2, lsr #24
.L02047684:
    mov r2, r2, lsl #8
.L02047688:
    mov r2, r2, lsr #16
.L0204768c:
    orr r2, r2, r3, lsl #16
.L02047690:
    mov ip, r2
.L02047694:
    ldr r3, [pc, #2588]
.L02047698:
    ldr r2, [r3]
.L0204769c:
    cmp ip, r2
.L020476a0:
    ble .L02047748
.L020476a4:
    ldr r3, [pc, #2576]
.L020476a8:
    mov r0, #1
.L020476ac:
    strh r0, [r3, #128]
.L020476b0:
    mov r1, r3
.L020476b4:
    ldrh r3, [r1, #128]
.L020476b8:
    tst r3, #32768
.L020476bc:
    bne .L020476b4
.L020476c0:
    mov r3, r2, asr #31
.L020476c4:
    mov r3, r3, lsl #16
.L020476c8:
    orr r3, r3, r2, lsr #16
.L020476cc:
    mov r2, r2, lsl #16
.L020476d0:
    strd r2, [r1, #144]
.L020476d4:
    ldr r0, [pc, #2528]
.L020476d8:
    mov r1, #67108864
.L020476dc:
    str ip, [r1, #664]
.L020476e0:
    ldrh r3, [r0, #128]
.L020476e4:
    tst r3, #32768
.L020476e8:
    bne .L020476e0
.L020476ec:
    mov r3, #67108864
.L020476f0:
    ldr r0, [r9]
.L020476f4:
    ldr r4, [r3, #672]
.L020476f8:
    mov r1, r0, asr #31
.L020476fc:
    mov r5, r4, asr #31
.L02047700:
    mul lr, r0, r5
.L02047704:
    umull r2, r3, r0, r4
.L02047708:
    mla ip, r4, r1, lr
.L0204770c:
    mov r2, r2, lsr #16
.L02047710:
    add r3, ip, r3
.L02047714:
    orr r2, r2, r3, lsl #16
.L02047718:
    ldr r1, [sp, #108]
.L0204771c:
    str r2, [r9]
.L02047720:
    ldr r0, [r1]
.L02047724:
    mov r1, r0, asr #31
.L02047728:
    mul lr, r4, r1
.L0204772c:
    umull r2, r3, r4, r0
.L02047730:
    mla ip, r0, r5, lr
.L02047734:
    mov r2, r2, lsr #16
.L02047738:
    add r3, ip, r3
.L0204773c:
    ldr r5, [sp, #108]
.L02047740:
    orr r2, r2, r3, lsl #16
.L02047744:
    str r2, [r5]
.L02047748:
    ldr r3, [pc, #2416]
.L0204774c:
    ldr r8, [sp, #104]
.L02047750:
    ldr r2, [r3]
.L02047754:
    ldr r1, [r8]
.L02047758:
    rsb r3, r2, #0
.L0204775c:
    cmp r2, r1
.L02047760:
    str r2, [sp, #212]
.L02047764:
    str r3, [sp, #208]
.L02047768:
    str r1, [sp, #204]
.L0204776c:
    addgt r2, sp, #204
.L02047770:
    addle r2, sp, #212
.L02047774:
    ldr r3, [sp, #208]
.L02047778:
    ldr r2, [r2]
.L0204777c:
    ldr sl, [sp, #84]
.L02047780:
    cmp r2, r3
.L02047784:
    str r2, [sp, #236]
.L02047788:
    addlt r3, sp, #208
.L0204778c:
    addge r3, sp, #236
.L02047790:
    ldr r3, [r3]
.L02047794:
    ldr sl, [sl, #20]
.L02047798:
    ldr ip, [sp, #104]
.L0204779c:
    str sl, [sp, #28]
.L020477a0:
    str r3, [ip]
.L020477a4:
    ldr lr, [sp, #96]
.L020477a8:
    ldr r0, [sp, #28]
.L020477ac:
    add lr, lr, #1
.L020477b0:
    cmp r0, lr
.L020477b4:
    str lr, [sp, #96]
.L020477b8:
    bgt .L020473b4
.L020477bc:
    ldr r1, [sp, #84]
.L020477c0:
    add r0, sp, #120
.L020477c4:
    ldr ip, [r1]
.L020477c8:
    ldr r2, [r1, #12]
.L020477cc:
    ldr r3, [r1, #28]
.L020477d0:
    ldr r1, [sp, #80]
.L020477d4:
    str ip, [sp]
.L020477d8:
    bl reconstructed_external_arm_0204a0cc
.L020477dc:
    add r0, sp, #120
.L020477e0:
    bl reconstructed_external_arm_020496d8
.L020477e4:
    ldr r2, [sp, #84]
.L020477e8:
    ldr r3, [r2, #24]
.L020477ec:
    cmp r3, #0
.L020477f0:
    ble .L02047828
.L020477f4:
    mov r4, #0
.L020477f8:
    ldr r5, [sp, #84]
.L020477fc:
    ldr r1, [sp, #80]
.L02047800:
    ldr r3, [r5, #16]
.L02047804:
    ldr r2, [r3, r4, lsl #2]
.L02047808:
    add r4, r4, #1
.L0204780c:
    mov r0, r2
.L02047810:
    ldr r3, [r2]
.L02047814:
    mov lr, pc
.L02047818:
    ldr pc, [r3, #24]
.L0204781c:
    ldr r2, [r5, #24]
.L02047820:
    cmp r2, r4
.L02047824:
    bgt .L020477f8
.L02047828:
    ldr r8, [sp, #80]
.L0204782c:
    ldr r3, [r8, #8]
.L02047830:
    cmp r3, #0
.L02047834:
    ble .L020478a0
.L02047838:
    mov r6, #0
.L0204783c:
    add r0, sp, #120
.L02047840:
    bl reconstructed_external_arm_020482b0
.L02047844:
    ldr sl, [sp, #84]
.L02047848:
    ldr r3, [sl, #24]
.L0204784c:
    cmp r3, #0
.L02047850:
    ble .L0204788c
.L02047854:
    mov r4, #0
.L02047858:
    ldr ip, [sp, #84]
.L0204785c:
    ldr r1, [sp, #80]
.L02047860:
    ldr r3, [ip, #16]
.L02047864:
    ldr r2, [r3, r4, lsl #2]
.L02047868:
    add r4, r4, #1
.L0204786c:
    mov r0, r2
.L02047870:
    ldr r3, [r2]
.L02047874:
    mov lr, pc
.L02047878:
    ldr pc, [r3, #28]
.L0204787c:
    ldr lr, [sp, #84]
.L02047880:
    ldr r2, [lr, #24]
.L02047884:
    cmp r2, r4
.L02047888:
    bgt .L02047858
.L0204788c:
    ldr r0, [sp, #80]
.L02047890:
    add r6, r6, #1
.L02047894:
    ldr r3, [r0, #8]
.L02047898:
    cmp r3, r6
.L0204789c:
    bgt .L0204783c
.L020478a0:
    add r0, sp, #120
.L020478a4:
    bl reconstructed_external_arm_02048128
.L020478a8:
    ldr r1, [sp, #84]
.L020478ac:
    ldr r1, [r1, #20]
.L020478b0:
    cmp r1, #0
.L020478b4:
    str r1, [sp, #28]
.L020478b8:
    ble .L02047b4c
.L020478bc:
    ldr r2, [sp, #84]
.L020478c0:
    mov r3, #0
.L020478c4:
    ldr r2, [r2, #8]
.L020478c8:
    str r3, [sp, #100]
.L020478cc:
    str r2, [sp, #32]
.L020478d0:
    ldr r5, [sp, #100]
.L020478d4:
    ldr r8, [sp, #32]
.L020478d8:
    ldr fp, [r8, r5, lsl #2]
.L020478dc:
    ldrh r3, [fp, #2]
.L020478e0:
    cmp r3, #0
.L020478e4:
    beq .L02047b34
.L020478e8:
    add sl, fp, #44
.L020478ec:
    ldr r3, [sl, #4]
.L020478f0:
    ldr lr, [fp, #56]
.L020478f4:
    ldr ip, [fp, #44]
.L020478f8:
    ldr r0, [sp, #80]
.L020478fc:
    str lr, [fp, #52]
.L02047900:
    str r3, [fp, #40]
.L02047904:
    str ip, [fp, #36]
.L02047908:
    ldr r4, [r0]
.L0204790c:
    ldr r6, [fp, #64]
.L02047910:
    ldr r8, [fp, #68]
.L02047914:
    mov r5, r4, asr #31
.L02047918:
    mov r7, r6, asr #31
.L0204791c:
    mov r9, r8, asr #31
.L02047920:
    mul ip, r4, r7
.L02047924:
    mul lr, r4, r9
.L02047928:
    umull r0, r1, r4, r8
.L0204792c:
    umull r2, r3, r4, r6
.L02047930:
    str sl, [sp, #92]
.L02047934:
    mla sl, r6, r5, ip
.L02047938:
    mla ip, r8, r5, lr
.L0204793c:
    ldr r6, [fp, #48]
.L02047940:
    ldr r5, [fp, #44]
.L02047944:
    add r3, sl, r3
.L02047948:
    add r1, ip, r1
.L0204794c:
    mov r2, r2, lsr #16
.L02047950:
    mov r0, r0, lsr #16
.L02047954:
    orr r0, r0, r1, lsl #16
.L02047958:
    orr r2, r2, r3, lsl #16
.L0204795c:
    add r3, r5, r2
.L02047960:
    add r6, r6, r0
.L02047964:
    ldr r8, [sp, #80]
.L02047968:
    str r3, [fp, #44]
.L0204796c:
    str r6, [fp, #48]
.L02047970:
    ldr r0, [r8]
.L02047974:
    ldr r1, [fp, #72]
.L02047978:
    ldr sl, [fp, #56]
.L0204797c:
    smull r2, r3, r1, r0
.L02047980:
    mov r2, r2, lsr #16
.L02047984:
    orr r2, r2, r3, lsl #16
.L02047988:
    ldr r4, [pc, #1844]
.L0204798c:
    add lr, sl, r2
.L02047990:
    smull r0, r1, lr, r4
.L02047994:
    mov r0, r0, lsr #24
.L02047998:
    orr r0, r0, r1, lsl #8
.L0204799c:
    mov r1, r1, asr #24
.L020479a0:
    mov r2, r1
.L020479a4:
    mov r3, r2, asr #31
.L020479a8:
    mov r3, r3, asr #31
.L020479ac:
    mov r2, r3, lsr #23
.L020479b0:
    adds r0, r0, r2
.L020479b4:
    mov r3, #0
.L020479b8:
    ldr r4, [pc, #1800]
.L020479bc:
    adc r1, r1, r3
.L020479c0:
    mov r5, #0
.L020479c4:
    and r0, r0, r4
.L020479c8:
    and r1, r1, r5
.L020479cc:
    subs r0, r0, r2
.L020479d0:
    sbc r1, r1, r3
.L020479d4:
    subs ip, r0, #0
.L020479d8:
    addlt r0, ip, #512
.L020479dc:
    ldr r2, [pc, #1768]
.L020479e0:
    mov r3, r0, lsl #1
.L020479e4:
    ldrsh r1, [r3, r2]
.L020479e8:
    cmp ip, #0
.L020479ec:
    mov r3, r1, lsl #4
.L020479f0:
    addlt ip, ip, #512
.L020479f4:
    ldr r1, [pc, #1748]
.L020479f8:
    mov r0, ip, lsl #1
.L020479fc:
    ldrsh r2, [r0, r1]
.L02047a00:
    str lr, [fp, #56]
.L02047a04:
    mov r2, r2, lsl #4
.L02047a08:
    add lr, fp, #12
.L02047a0c:
    rsb ip, r2, #0
.L02047a10:
    str r3, [lr]
.L02047a14:
    str ip, [lr, #8]
.L02047a18:
    ldr sl, [fp, #28]
.L02047a1c:
    str r3, [lr, #12]
.L02047a20:
    str r2, [lr, #4]
.L02047a24:
    mov r0, sl
.L02047a28:
    mov r1, r0, asr #31
.L02047a2c:
    ldr r8, [fp, #32]
.L02047a30:
    strd r0, [sp, #112]
.L02047a34:
    mov r0, r3
.L02047a38:
    mov r1, r0, asr #31
.L02047a3c:
    mov r9, r8, asr #31
.L02047a40:
    strd r0, [sp, #56]
.L02047a44:
    mov r0, ip
.L02047a48:
    mov r1, r0, asr #31
.L02047a4c:
    strd r0, [sp, #40]
.L02047a50:
    mul r0, r9, r0
.L02047a54:
    ldr r5, [sp, #56]
.L02047a58:
    ldr r1, [sp, #116]
.L02047a5c:
    str r0, [sp, #12]
.L02047a60:
    mul r1, r5, r1
.L02047a64:
    ldr ip, [sp, #112]
.L02047a68:
    ldr r0, [sp, #56]
.L02047a6c:
    mov r3, r2, asr #31
.L02047a70:
    umull r4, r5, ip, r2
.L02047a74:
    umull r6, r7, r8, r0
.L02047a78:
    ldr ip, [sp, #60]
.L02047a7c:
    ldr r0, [sp, #112]
.L02047a80:
    ldr sl, [sp, #112]
.L02047a84:
    mla ip, r0, ip, r1
.L02047a88:
    ldr r1, [sp, #44]
.L02047a8c:
    str ip, [sp, #52]
.L02047a90:
    ldr ip, [sp, #12]
.L02047a94:
    mul sl, r3, sl
.L02047a98:
    mla r1, r8, r1, ip
.L02047a9c:
    ldr ip, [sp, #40]
.L02047aa0:
    ldr lr, [sp, #60]
.L02047aa4:
    str r1, [sp, #36]
.L02047aa8:
    umull r0, r1, ip, r8
.L02047aac:
    ldr ip, [sp, #116]
.L02047ab0:
    mul lr, r8, lr
.L02047ab4:
    mla ip, r2, ip, sl
.L02047ab8:
    ldr r2, [sp, #56]
.L02047abc:
    ldr sl, [sp, #112]
.L02047ac0:
    mov r8, r2
.L02047ac4:
    mla lr, r2, r9, lr
.L02047ac8:
    umull r2, r3, r8, sl
.L02047acc:
    ldr sl, [sp, #92]
.L02047ad0:
    add r7, lr, r7
.L02047ad4:
    ldr r8, [sl, #4]
.L02047ad8:
    ldr sl, [sp, #52]
.L02047adc:
    ldr lr, [sp, #92]
.L02047ae0:
    add r3, sl, r3
.L02047ae4:
    ldr sl, [sp, #36]
.L02047ae8:
    add r5, ip, r5
.L02047aec:
    add r1, sl, r1
.L02047af0:
    mov r2, r2, lsr #16
.L02047af4:
    mov r0, r0, lsr #16
.L02047af8:
    mov r4, r4, lsr #16
.L02047afc:
    mov r6, r6, lsr #16
.L02047b00:
    ldr ip, [lr]
.L02047b04:
    orr r4, r4, r5, lsl #16
.L02047b08:
    orr r6, r6, r7, lsl #16
.L02047b0c:
    orr r2, r2, r3, lsl #16
.L02047b10:
    orr r0, r0, r1, lsl #16
.L02047b14:
    add r2, r2, r0
.L02047b18:
    add r4, r4, r6
.L02047b1c:
    rsb ip, r2, ip
.L02047b20:
    rsb r8, r4, r8
.L02047b24:
    mov r5, r5, asr #16
.L02047b28:
    mov r7, r7, asr #16
.L02047b2c:
    str r8, [fp, #8]
.L02047b30:
    str ip, [fp, #4]
.L02047b34:
    ldr r0, [sp, #100]
.L02047b38:
    ldr r1, [sp, #28]
.L02047b3c:
    add r0, r0, #1
.L02047b40:
    cmp r1, r0
.L02047b44:
    str r0, [sp, #100]
.L02047b48:
    bgt .L020478d0
.L02047b4c:
    ldr r2, [sp, #72]
.L02047b50:
    cmp r2, #0
.L02047b54:
    beq .L02047c94
.L02047b58:
    ldr r5, [sp, #84]
.L02047b5c:
    ldr r3, [r5, #24]
.L02047b60:
    cmp r3, #0
.L02047b64:
    ble .L02047b98
.L02047b68:
    mov r4, #0
.L02047b6c:
    ldr r8, [sp, #84]
.L02047b70:
    ldr r3, [r8, #16]
.L02047b74:
    ldr r2, [r3, r4, lsl #2]
.L02047b78:
    add r4, r4, #1
.L02047b7c:
    mov r0, r2
.L02047b80:
    ldr r3, [r2]
.L02047b84:
    mov lr, pc
.L02047b88:
    ldr pc, [r3, #32]
.L02047b8c:
    ldr r2, [r8, #24]
.L02047b90:
    cmp r2, r4
.L02047b94:
    bgt .L02047b6c
.L02047b98:
    ldr sl, [sp, #84]
.L02047b9c:
    mov r3, #0
.L02047ba0:
    ldr ip, [sp, #80]
.L02047ba4:
    str r3, [sl, #44]
.L02047ba8:
    ldr r2, [ip, #8]
.L02047bac:
    cmp r2, r3
.L02047bb0:
    ble .L02047c94
.L02047bb4:
    ldr fp, [pc, #1304]
.L02047bb8:
    add r9, sp, #216
.L02047bbc:
    ldr r3, [fp]
.L02047bc0:
    add r0, sp, #120
.L02047bc4:
    mov r1, r9
.L02047bc8:
    str r3, [sp, #216]
.L02047bcc:
    bl reconstructed_external_arm_0204c154
.L02047bd0:
    ldr lr, [sp, #84]
.L02047bd4:
    mov sl, r0
.L02047bd8:
    ldr r3, [lr, #24]
.L02047bdc:
    cmp r3, #0
.L02047be0:
    movle r8, #1
.L02047be4:
    ble .L02047c64
.L02047be8:
    ldr r8, [sp, #84]
.L02047bec:
    mov r6, #0
.L02047bf0:
    ldr r3, [r8, #16]
.L02047bf4:
    ldr r2, [r3]
.L02047bf8:
    mov r0, r2
.L02047bfc:
    ldr r3, [r2]
.L02047c00:
    mov lr, pc
.L02047c04:
    ldr pc, [r3, #36]
.L02047c08:
    ldr r1, [sp, #84]
.L02047c0c:
    mov r3, r6, lsl #2
.L02047c10:
    add r4, r3, #4
.L02047c14:
    ldr r3, [r1, #24]
.L02047c18:
    add r6, r6, #1
.L02047c1c:
    cmp r3, r6
.L02047c20:
    mov r8, r0
.L02047c24:
    ble .L02047c64
.L02047c28:
    ldr r0, [sp, #84]
.L02047c2c:
    ldr r3, [r0, #16]
.L02047c30:
    ldr r2, [r4, r3]
.L02047c34:
    add r4, r4, #4
.L02047c38:
    mov r0, r2
.L02047c3c:
    ldr r3, [r2]
.L02047c40:
    mov lr, pc
.L02047c44:
    ldr pc, [r3, #36]
.L02047c48:
    cmp r8, #0
.L02047c4c:
    bne .L02047c08
.L02047c50:
    ldr r1, [sp, #84]
.L02047c54:
    add r6, r6, #1
.L02047c58:
    ldr r3, [r1, #24]
.L02047c5c:
    cmp r3, r6
.L02047c60:
    bgt .L02047c28
.L02047c64:
    cmp sl, #0
.L02047c68:
    beq .L02047c74
.L02047c6c:
    cmp r8, #0
.L02047c70:
    bne .L02047c94
.L02047c74:
    ldr r2, [sp, #84]
.L02047c78:
    ldr r5, [sp, #80]
.L02047c7c:
    ldr r3, [r2, #44]
.L02047c80:
    add r3, r3, #1
.L02047c84:
    str r3, [r2, #44]
.L02047c88:
    ldr r2, [r5, #8]
.L02047c8c:
    cmp r2, r3
.L02047c90:
    bgt .L02047bbc
.L02047c94:
    ldr r0, [sp, #84]
.L02047c98:
    ldr r1, [sp, #136]
.L02047c9c:
    bl reconstructed_external_arm_02046a2c
.L02047ca0:
    ldr r8, [sp, #68]
.L02047ca4:
    cmp r8, #0
.L02047ca8:
    beq .L02047dc0
.L02047cac:
    ldr sl, [sp, #84]
.L02047cb0:
    ldr r3, [pc, #1056]
.L02047cb4:
    ldr sl, [sl, #20]
.L02047cb8:
    str r3, [sp, #176]
.L02047cbc:
    cmp sl, #0
.L02047cc0:
    str sl, [sp, #28]
.L02047cc4:
    ble .L02047d50
.L02047cc8:
    mov r9, #0
.L02047ccc:
    ldr ip, [sp, #84]
.L02047cd0:
    ldr ip, [ip, #8]
.L02047cd4:
    ldr r8, [ip, r9, lsl #2]
.L02047cd8:
    str ip, [sp, #32]
.L02047cdc:
    ldr r3, [r8, #120]
.L02047ce0:
    cmp r3, #0
.L02047ce4:
    beq .L02047d40
.L02047ce8:
    ldrh r3, [r8]
.L02047cec:
    ands r3, r3, #16
.L02047cf0:
    streq r3, [r8, #140]
.L02047cf4:
    streq r3, [sp, #176]
.L02047cf8:
    beq .L02047d34
.L02047cfc:
    ldr r2, [pc, #984]
.L02047d00:
    ldr r3, [r8, #72]
.L02047d04:
    ldr r1, [r2]
.L02047d08:
    cmp r3, #0
.L02047d0c:
    rsblt r3, r3, #0
.L02047d10:
    cmp r1, r3
.L02047d14:
    blt .L02047d34
.L02047d18:
    ldr lr, [pc, #960]
.L02047d1c:
    ldr r3, [r8, #64]
.L02047d20:
    ldr r2, [lr]
.L02047d24:
    cmp r3, #0
.L02047d28:
    rsblt r3, r3, #0
.L02047d2c:
    cmp r3, r2
.L02047d30:
    ble .L02047ebc
.L02047d34:
    mov r3, #0
.L02047d38:
    str r3, [r8, #140]
.L02047d3c:
    str r3, [sp, #176]
.L02047d40:
    ldr ip, [sp, #28]
.L02047d44:
    add r9, r9, #1
.L02047d48:
    cmp ip, r9
.L02047d4c:
    bgt .L02047ccc
.L02047d50:
    ldr r3, [pc, #908]
.L02047d54:
    ldr r2, [sp, #176]
.L02047d58:
    ldr r1, [r3]
.L02047d5c:
    cmp r1, r2
.L02047d60:
    bgt .L02047dc0
.L02047d64:
    ldr lr, [sp, #28]
.L02047d68:
    cmp lr, #0
.L02047d6c:
    ble .L02047dc0
.L02047d70:
    ldr r0, [sp, #84]
.L02047d74:
    mov ip, #0
.L02047d78:
    ldr r0, [r0, #8]
.L02047d7c:
    ldr lr, [pc, #868]
.L02047d80:
    str r0, [sp, #32]
.L02047d84:
    mov r4, ip
.L02047d88:
    ldr r1, [sp, #32]
.L02047d8c:
    ldr r5, [sp, #28]
.L02047d90:
    ldr r2, [r1, ip, lsl #2]
.L02047d94:
    ldr r0, [lr, #4]
.L02047d98:
    ldrh r3, [r2]
.L02047d9c:
    ldr r1, [lr]
.L02047da0:
    add ip, ip, #1
.L02047da4:
    orr r3, r3, #8
.L02047da8:
    cmp r5, ip
.L02047dac:
    strh r3, [r2]
.L02047db0:
    str r1, [r2, #64]
.L02047db4:
    str r0, [r2, #68]
.L02047db8:
    str r4, [r2, #72]
.L02047dbc:
    bgt .L02047d88
.L02047dc0:
    add r0, sp, #120
.L02047dc4:
    bl reconstructed_external_arm_020480f0
.L02047dc8:
    add sp, sp, #252
.L02047dcc:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02047dd0:
    mov r0, r4
.L02047dd4:
    ldr r1, [pc, #784]
.L02047dd8:
    bl reconstructed_external_arm_02083a9c
.L02047ddc:
    cmp r0, #0
.L02047de0:
    beq .L02047e78
.L02047de4:
    mov r2, r6
.L02047de8:
    mov r3, r2, asr #31
.L02047dec:
    mov r0, r8
.L02047df0:
    mov r1, r0, asr #31
.L02047df4:
    mul ip, r2, r3
.L02047df8:
    mul lr, r0, r1
.L02047dfc:
    umull r6, r7, r0, r0
.L02047e00:
    umull r4, r5, r2, r2
.L02047e04:
    ldr r3, [pc, #688]
.L02047e08:
    mov ip, ip, lsl #1
.L02047e0c:
    mov lr, lr, lsl #1
.L02047e10:
    add r7, lr, r7
.L02047e14:
    add r5, ip, r5
.L02047e18:
    mov lr, #1
.L02047e1c:
    mov r0, r4, lsr #16
.L02047e20:
    mov sl, r6, lsr #16
.L02047e24:
    strh lr, [r3, #176]
.L02047e28:
    mov ip, r3
.L02047e2c:
    orr r0, r0, r5, lsl #16
.L02047e30:
    orr sl, sl, r7, lsl #16
.L02047e34:
    mov fp, r7, asr #16
.L02047e38:
    ldrh r3, [ip, #176]
.L02047e3c:
    tst r3, #32768
.L02047e40:
    bne .L02047e38
.L02047e44:
    add r2, r0, sl
.L02047e48:
    mov r3, r2, asr #31
.L02047e4c:
    mov r3, r3, lsl #16
.L02047e50:
    orr r3, r3, r2, lsr #16
.L02047e54:
    mov r2, r2, lsl #16
.L02047e58:
    strd r2, [ip, #184]
.L02047e5c:
    ldr r2, [pc, #600]
.L02047e60:
    ldrh r3, [r2, #176]
.L02047e64:
    tst r3, #32768
.L02047e68:
    bne .L02047e60
.L02047e6c:
    mov r3, #67108864
.L02047e70:
    ldr ip, [r3, #692]
.L02047e74:
    b .L02047694
.L02047e78:
    mov r3, r6, asr #8
.L02047e7c:
    mov r2, r8, asr #8
.L02047e80:
    str r3, [sp, #152]
.L02047e84:
    str r2, [sp, #156]
.L02047e88:
    ldr ip, [pc, #548]
.L02047e8c:
    add r0, sp, #232
.L02047e90:
    add r1, sp, #152
.L02047e94:
    blx ip
.L02047e98:
    ldr r2, [sp, #232]
.L02047e9c:
    mov r3, r2, asr #31
.L02047ea0:
    mov r3, r3, lsl #24
.L02047ea4:
    orr r3, r3, r2, lsr #8
.L02047ea8:
    mov r2, r2, lsl #24
.L02047eac:
    mov r2, r2, lsr #16
.L02047eb0:
    orr r2, r2, r3, lsl #16
.L02047eb4:
    mov ip, r2
.L02047eb8:
    b .L02047694
.L02047ebc:
    ldr r3, [r8, #68]
.L02047ec0:
    cmp r3, #0
.L02047ec4:
    rsblt r3, r3, #0
.L02047ec8:
    cmp r2, r3
.L02047ecc:
    blt .L02047d34
.L02047ed0:
    ldr r6, [r8, #64]
.L02047ed4:
    ldr sl, [r8, #68]
.L02047ed8:
    eor r3, r6, r6, asr #31
.L02047edc:
    sub r3, r3, r6, asr #31
.L02047ee0:
    eor r0, sl, sl, asr #31
.L02047ee4:
    sub r0, r0, sl, asr #31
.L02047ee8:
    add r0, r0, r3
.L02047eec:
    bl reconstructed_external_arm_02083618
.L02047ef0:
    mov r1, #931135488
.L02047ef4:
    bl reconstructed_external_arm_020836f4
.L02047ef8:
    mov r1, #0
.L02047efc:
    mov r4, r0
.L02047f00:
    bl reconstructed_external_arm_02083a84
.L02047f04:
    cmp r0, #0
.L02047f08:
    movne r2, #0
.L02047f0c:
    beq .L02047f50
.L02047f10:
    ldr r5, [pc, #456]
.L02047f14:
    ldr r3, [r5]
.L02047f18:
    cmp r2, r3
.L02047f1c:
    bgt .L02047d34
.L02047f20:
    ldr sl, [sp, #80]
.L02047f24:
    ldr r2, [r8, #140]
.L02047f28:
    ldr r3, [sl]
.L02047f2c:
    add r1, r8, #140
.L02047f30:
    add r3, r3, r2
.L02047f34:
    str r3, [r8, #140]
.L02047f38:
    ldr r2, [sp, #176]
.L02047f3c:
    cmp r3, r2
.L02047f40:
    addgt r1, sp, #176
.L02047f44:
    ldr r3, [r1]
.L02047f48:
    str r3, [sp, #176]
.L02047f4c:
    b .L02047d40
.L02047f50:
    mov r0, r4
.L02047f54:
    bl reconstructed_external_arm_02082c68
.L02047f58:
    ldr r2, [pc, #332]
.L02047f5c:
    ldr r3, [pc, #332]
.L02047f60:
    bl reconstructed_external_arm_02083298
.L02047f64:
    cmp r0, #0
.L02047f68:
    beq .L02047fb8
.L02047f6c:
    mov r2, sl, lsl #8
.L02047f70:
    mov r3, r6, lsl #8
.L02047f74:
    add r0, sp, #240
.L02047f78:
    str r3, [sp, #160]
.L02047f7c:
    str r2, [sp, #164]
.L02047f80:
    ldr r3, [pc, #300]
.L02047f84:
    add r1, sp, #160
.L02047f88:
    blx r3
.L02047f8c:
    ldr r2, [sp, #240]
.L02047f90:
    ldr r0, [sp, #84]
.L02047f94:
    mov r3, r2, asr #31
.L02047f98:
    mov r3, r3, lsl #8
.L02047f9c:
    orr r3, r3, r2, lsr #24
.L02047fa0:
    mov r2, r2, lsl #8
.L02047fa4:
    ldr r0, [r0, #20]
.L02047fa8:
    mov r2, r2, lsr #16
.L02047fac:
    orr r2, r2, r3, lsl #16
.L02047fb0:
    str r0, [sp, #28]
.L02047fb4:
    b .L02047f10
.L02047fb8:
    mov r0, r4
.L02047fbc:
    ldr r1, [pc, #296]
.L02047fc0:
    bl reconstructed_external_arm_02083a9c
.L02047fc4:
    cmp r0, #0
.L02047fc8:
    beq .L02048060
.L02047fcc:
    mov r0, sl
.L02047fd0:
    mov r1, r0, asr #31
.L02047fd4:
    mov r2, r6
.L02047fd8:
    mov r3, r2, asr #31
.L02047fdc:
    mul lr, r0, r1
.L02047fe0:
    mul ip, r2, r3
.L02047fe4:
    umull r6, r7, r0, r0
.L02047fe8:
    umull r4, r5, r2, r2
.L02047fec:
    ldr r3, [pc, #200]
.L02047ff0:
    mov ip, ip, lsl #1
.L02047ff4:
    mov lr, lr, lsl #1
.L02047ff8:
    add r5, ip, r5
.L02047ffc:
    add r7, lr, r7
.L02048000:
    mov r1, #1
.L02048004:
    mov r0, r4, lsr #16
.L02048008:
    mov sl, r6, lsr #16
.L0204800c:
    strh r1, [r3, #176]
.L02048010:
    mov ip, r3
.L02048014:
    orr r0, r0, r5, lsl #16
.L02048018:
    orr sl, sl, r7, lsl #16
.L0204801c:
    mov fp, r7, asr #16
.L02048020:
    ldrh r3, [ip, #176]
.L02048024:
    tst r3, #32768
.L02048028:
    bne .L02048020
.L0204802c:
    add r2, r0, sl
.L02048030:
    mov r3, r2, asr #31
.L02048034:
    mov r3, r3, lsl #16
.L02048038:
    orr r3, r3, r2, lsr #16
.L0204803c:
    mov r2, r2, lsl #16
.L02048040:
    strd r2, [ip, #184]
.L02048044:
    ldr r2, [pc, #112]
.L02048048:
    ldrh r3, [r2, #176]
.L0204804c:
    tst r3, #32768
.L02048050:
    bne .L02048048
.L02048054:
    mov r3, #67108864
.L02048058:
    ldr r2, [r3, #692]
.L0204805c:
    b .L02047f10
.L02048060:
    mov r2, sl, asr #8
.L02048064:
    mov r3, r6, asr #8
.L02048068:
    str r3, [sp, #168]
.L0204806c:
    str r2, [sp, #172]
.L02048070:
    ldr r3, [pc, #60]
.L02048074:
    add r0, sp, #244
.L02048078:
    add r1, sp, #168
.L0204807c:
    blx r3
.L02048080:
    ldr r2, [sp, #84]
.L02048084:
    ldr r2, [r2, #20]
.L02048088:
    str r2, [sp, #28]
.L0204808c:
    ldr r2, [sp, #244]
.L02048090:
    mov r3, r2, asr #31
.L02048094:
    mov r3, r3, lsl #24
.L02048098:
    orr r3, r3, r2, lsr #8
.L0204809c:
    mov r2, r2, lsl #24
.L020480a0:
    mov r2, r2, lsr #16
.L020480a4:
    orr r2, r2, r3, lsl #16
.L020480a8:
    b .L02047f10
.L020480ac:
    .long 0x9999999a  /* literal data */
.L020480b0:
    .long 0x3fb99999  /* literal data */
.L020480b4:
    .long 0x0209390c  /* literal data */
.L020480b8:
    .long 0x020caee4  /* literal data */
.L020480bc:
    .long 0x04000200  /* literal data */
.L020480c0:
    .long 0x020caee8  /* literal data */
.L020480c4:
    .long 0x0000517d  /* literal data */
.L020480c8:
    .long 0x000001ff  /* literal data */
.L020480cc:
    .long 0x020bd61c  /* literal data */
.L020480d0:
    .long 0x020bda20  /* literal data */
.L020480d4:
    .long 0x020caeec  /* literal data */
.L020480d8:
    .long 0x7fff0000  /* literal data */
.L020480dc:
    .long 0x020caef8  /* literal data */
.L020480e0:
    .long 0x020caef4  /* literal data */
.L020480e4:
    .long 0x020caef0  /* literal data */
.L020480e8:
    .long 0x020ca998  /* literal data */
.L020480ec:
    .long 0x43340000  /* literal data */


/* libfat-directory-addEntry-region at 0x0205d318, 1448 bytes, Thumb. */
.section .reconstructed.fn08,"ax",%progbits
.align 1
.thumb
.global reconstructed_08_libfat_directory_addEntry_region
reconstructed_08_libfat_directory_addEntry_region:
.L0205d318:
    push {r4, r5, r6, r7, lr}
.L0205d31a:
    mov r7, fp
.L0205d31c:
    mov r6, sl
.L0205d31e:
    mov r5, r9
.L0205d320:
    mov r4, r8
.L0205d322:
    push {r4, r5, r6, r7}
.L0205d324:
    adds r5, r1, #0
.L0205d326:
    adds r6, r1, #0
.L0205d328:
    adds r5, #56
.L0205d32a:
    movs r1, #128
.L0205d32c:
    adds r7, r0, #0
.L0205d32e:
    sub sp, #148
.L0205d330:
    adds r0, r5, #0
.L0205d332:
    lsls r1, r1, #1
.L0205d334:
    mov r8, r2
.L0205d336:
    bl reconstructed_external_thumb_020876dc
.L0205d33a:
    cmp r0, #0
.L0205d33c:
    bne.n .L0205d34e
.L0205d33e:
    movs r0, #0
.L0205d340:
    add sp, #148
.L0205d342:
    pop {r2, r3, r4, r5}
.L0205d344:
    mov r8, r2
.L0205d346:
    mov r9, r3
.L0205d348:
    mov sl, r4
.L0205d34a:
    mov fp, r5
.L0205d34c:
    pop {r4, r5, r6, r7, pc}
.L0205d34e:
    adds r0, r5, #0
.L0205d350:
    bl reconstructed_external_thumb_0205d02c
.L0205d354:
    cmp r0, #0
.L0205d356:
    beq.n .L0205d33e
.L0205d358:
    adds r0, r5, #0
.L0205d35a:
    bl reconstructed_external_thumb_020874d0
.L0205d35e:
    subs r0, #1
.L0205d360:
    cmp r0, #0
.L0205d362:
    bgt.n .L0205d372
.L0205d364:
    b.n .L0205d37e
.L0205d366:
    adds r2, #56
.L0205d368:
    movs r3, #0
.L0205d36a:
    subs r0, #1
.L0205d36c:
    strb r3, [r2, #0]
.L0205d36e:
    cmp r0, #0
.L0205d370:
    ble.n .L0205d37e
.L0205d372:
    adds r2, r0, r6
.L0205d374:
    adds r3, r2, #0
.L0205d376:
    adds r3, #56
.L0205d378:
    ldrb r3, [r3, #0]
.L0205d37a:
    cmp r3, #32
.L0205d37c:
    beq.n .L0205d366
.L0205d37e:
    adds r0, r5, #0
.L0205d380:
    bl reconstructed_external_thumb_020874d0
.L0205d384:
    movs r2, #0
.L0205d386:
    b.n .L0205d394
.L0205d388:
    adds r3, r6, r2
.L0205d38a:
    adds r3, #56
.L0205d38c:
    ldrb r3, [r3, #0]
.L0205d38e:
    cmp r3, #32
.L0205d390:
    bne.n .L0205d398
.L0205d392:
    adds r2, #1
.L0205d394:
    cmp r2, r0
.L0205d396:
    bne.n .L0205d388
.L0205d398:
    cmp r2, #0
.L0205d39a:
    ble.n .L0205d3ae
.L0205d39c:
    adds r4, r5, r2
.L0205d39e:
    adds r0, r4, #0
.L0205d3a0:
    bl reconstructed_external_thumb_020874d0
.L0205d3a4:
    adds r1, r4, #0
.L0205d3a6:
    adds r2, r0, #0
.L0205d3a8:
    adds r0, r5, #0
.L0205d3aa:
    bl reconstructed_external_thumb_02086428
.L0205d3ae:
    adds r0, r5, #0
.L0205d3b0:
    bl reconstructed_external_thumb_020874d0
.L0205d3b4:
    movs r4, #128
.L0205d3b6:
    lsls r4, r4, #1
.L0205d3b8:
    subs r2, r4, r0
.L0205d3ba:
    movs r1, #0
.L0205d3bc:
    adds r0, r5, r0
.L0205d3be:
    bl reconstructed_external_thumb_020864ac
.L0205d3c2:
    adds r0, r7, #0
.L0205d3c4:
    adds r1, r5, #0
.L0205d3c6:
    mov r2, r8
.L0205d3c8:
    bl reconstructed_external_thumb_0205cd3c
.L0205d3cc:
    cmp r0, #0
.L0205d3ce:
    bne.n .L0205d33e
.L0205d3d0:
    movs r1, #32
.L0205d3d2:
    movs r2, #11
.L0205d3d4:
    adds r0, r6, #0
.L0205d3d6:
    bl reconstructed_external_thumb_020864ac
.L0205d3da:
    ldr r1, [pc, #776]
.L0205d3dc:
    adds r0, r5, #0
.L0205d3de:
    adds r2, r4, #0
.L0205d3e0:
    bl reconstructed_external_thumb_020875dc
.L0205d3e4:
    cmp r0, #0
.L0205d3e6:
    beq.n .L0205d3ea
.L0205d3e8:
    b.n .L0205d63a
.L0205d3ea:
    movs r3, #46
.L0205d3ec:
    strb r3, [r6, #0]
.L0205d3ee:
    add r0, sp, #108
.L0205d3f0:
    movs r3, #0
.L0205d3f2:
    mov r1, r8
.L0205d3f4:
    str r3, [sp, #116]
.L0205d3f6:
    str r3, [sp, #112]
.L0205d3f8:
    str r1, [sp, #108]
.L0205d3fa:
    add r2, sp, #120
.L0205d3fc:
    adds r3, r0, #0
.L0205d3fe:
    mov r9, r0
.L0205d400:
    mov r8, r2
.L0205d402:
    movs r1, #0
.L0205d404:
    ldmia r3!, {r0, r4, r5}
.L0205d406:
    stmia r2!, {r0, r4, r5}
.L0205d408:
    movs r4, #1
.L0205d40a:
    str r4, [sp, #16]
.L0205d40c:
    str r1, [sp, #20]
.L0205d40e:
    movs r5, #31
.L0205d410:
    movs r3, #1
.L0205d412:
    add r5, sp
.L0205d414:
    mov sl, r3
.L0205d416:
    mov fp, r5
.L0205d418:
    b.n .L0205d436
.L0205d41a:
    mov r2, r8
.L0205d41c:
    mov r3, r9
.L0205d41e:
    ldmia r3!, {r0, r1, r5}
.L0205d420:
    stmia r2!, {r0, r1, r5}
.L0205d422:
    subs r4, #1
.L0205d424:
    movs r3, #1
.L0205d426:
    mov r2, sl
.L0205d428:
    cmp r2, #0
.L0205d42a:
    bne.n .L0205d42e
.L0205d42c:
    b.n .L0205d33e
.L0205d42e:
    cmp r3, #0
.L0205d430:
    bne.n .L0205d48e
.L0205d432:
    cmp r4, #0
.L0205d434:
    beq.n .L0205d506
.L0205d436:
    ldr r2, [sp, #108]
.L0205d438:
    ldr r0, [r7, #4]
.L0205d43a:
    cmp r2, #1
.L0205d43c:
    bls.n .L0205d478
.L0205d43e:
    ldr r3, [r7, #36]
.L0205d440:
    subs r2, #2
.L0205d442:
    muls r2, r3
.L0205d444:
    ldr r3, [r7, #28]
.L0205d446:
    adds r3, r2, r3
.L0205d448:
    ldr r2, [sp, #112]
.L0205d44a:
    movs r1, #32
.L0205d44c:
    adds r2, r3, r2
.L0205d44e:
    ldr r3, [sp, #116]
.L0205d450:
    str r1, [sp, #0]
.L0205d452:
    lsls r3, r3, #5
.L0205d454:
    mov r1, fp
.L0205d456:
    bl reconstructed_external_thumb_0205ae68
.L0205d45a:
    mov r2, fp
.L0205d45c:
    ldrb r3, [r2, #0]
.L0205d45e:
    cmp r3, #0
.L0205d460:
    beq.n .L0205d41a
.L0205d462:
    cmp r3, #229
.L0205d464:
    beq.n .L0205d47c
.L0205d466:
    ldr r4, [sp, #16]
.L0205d468:
    adds r0, r7, #0
.L0205d46a:
    mov r1, r9
.L0205d46c:
    movs r2, #1
.L0205d46e:
    bl reconstructed_external_thumb_0205cae0
.L0205d472:
    movs r3, #0
.L0205d474:
    mov sl, r0
.L0205d476:
    b.n .L0205d426
.L0205d478:
    ldr r3, [r7, #16]
.L0205d47a:
    b.n .L0205d448
.L0205d47c:
    ldr r2, [sp, #16]
.L0205d47e:
    cmp r2, r4
.L0205d480:
    bne.n .L0205d484
.L0205d482:
    b.n .L0205d65a
.L0205d484:
    subs r4, #1
.L0205d486:
    cmp r4, #0
.L0205d488:
    bne.n .L0205d468
.L0205d48a:
    movs r3, #0
.L0205d48c:
    b.n .L0205d426
.L0205d48e:
    movs r3, #32
.L0205d490:
    adds r3, r3, r6
.L0205d492:
    adds r2, r3, #0
.L0205d494:
    mov sl, r3
.L0205d496:
    mov r3, r8
.L0205d498:
    ldmia r3!, {r0, r1, r5}
.L0205d49a:
    stmia r2!, {r0, r1, r5}
.L0205d49c:
    adds r4, #1
.L0205d49e:
    mov r0, fp
.L0205d4a0:
    movs r1, #0
.L0205d4a2:
    movs r2, #32
.L0205d4a4:
    bl reconstructed_external_thumb_020864ac
.L0205d4a8:
    str r4, [sp, #12]
.L0205d4aa:
    cmp r4, #0
.L0205d4ac:
    beq.n .L0205d520
.L0205d4ae:
    adds r4, r6, #0
.L0205d4b0:
    adds r4, #44
.L0205d4b2:
    b.n .L0205d4e0
.L0205d4b4:
    ldr r3, [r7, #36]
.L0205d4b6:
    subs r2, #2
.L0205d4b8:
    muls r2, r3
.L0205d4ba:
    ldr r3, [r7, #28]
.L0205d4bc:
    adds r3, r2, r3
.L0205d4be:
    ldr r2, [sp, #112]
.L0205d4c0:
    movs r1, #32
.L0205d4c2:
    adds r2, r3, r2
.L0205d4c4:
    ldr r3, [sp, #116]
.L0205d4c6:
    str r1, [sp, #0]
.L0205d4c8:
    lsls r3, r3, #5
.L0205d4ca:
    mov r1, fp
.L0205d4cc:
    bl reconstructed_external_thumb_0205ae1c
.L0205d4d0:
    ldr r3, [sp, #12]
.L0205d4d2:
    cmp r3, #0
.L0205d4d4:
    bne.n .L0205d4d8
.L0205d4d6:
    b.n .L0205d650
.L0205d4d8:
    mov r5, r8
.L0205d4da:
    cmp r5, #0
.L0205d4dc:
    bne.n .L0205d4e0
.L0205d4de:
    b.n .L0205d33e
.L0205d4e0:
    adds r2, r4, #0
.L0205d4e2:
    mov r3, r9
.L0205d4e4:
    ldmia r3!, {r0, r1, r5}
.L0205d4e6:
    stmia r2!, {r0, r1, r5}
.L0205d4e8:
    movs r2, #1
.L0205d4ea:
    adds r0, r7, #0
.L0205d4ec:
    mov r1, r9
.L0205d4ee:
    bl reconstructed_external_thumb_0205cae0
.L0205d4f2:
    ldr r2, [sp, #12]
.L0205d4f4:
    mov r8, r0
.L0205d4f6:
    subs r2, #1
.L0205d4f8:
    str r2, [sp, #12]
.L0205d4fa:
    ldr r2, [sp, #108]
.L0205d4fc:
    ldr r0, [r7, #4]
.L0205d4fe:
    cmp r2, #1
.L0205d500:
    bhi.n .L0205d4b4
.L0205d502:
    ldr r3, [r7, #16]
.L0205d504:
    b.n .L0205d4be
.L0205d506:
    ldr r4, [sp, #16]
.L0205d508:
    movs r2, #32
.L0205d50a:
    adds r2, r2, r6
.L0205d50c:
    mov r3, r8
.L0205d50e:
    mov sl, r2
.L0205d510:
    ldmia r3!, {r0, r1, r5}
.L0205d512:
    stmia r2!, {r0, r1, r5}
.L0205d514:
    adds r3, r6, #0
.L0205d516:
    adds r3, #44
.L0205d518:
    mov r2, r9
.L0205d51a:
    ldmia r2!, {r0, r1, r5}
.L0205d51c:
    stmia r3!, {r0, r1, r5}
.L0205d51e:
    str r4, [sp, #16]
.L0205d520:
    add r2, sp, #132
.L0205d522:
    mov r3, sl
.L0205d524:
    mov fp, r2
.L0205d526:
    ldmia r3!, {r0, r4, r5}
.L0205d528:
    stmia r2!, {r0, r4, r5}
.L0205d52a:
    ldr r1, [sp, #16]
.L0205d52c:
    mov sl, r1
.L0205d52e:
    cmp r1, #0
.L0205d530:
    ble.n .L0205d5fc
.L0205d532:
    lsls r3, r1, #1
.L0205d534:
    adds r3, r3, r1
.L0205d536:
    lsls r3, r3, #2
.L0205d538:
    adds r3, r3, r1
.L0205d53a:
    subs r3, #26
.L0205d53c:
    mov r9, r3
.L0205d53e:
    mov r1, sl
.L0205d540:
    cmp r1, #1
.L0205d542:
    beq.n .L0205d60c
.L0205d544:
    ldr r2, [sp, #16]
.L0205d546:
    cmp r2, sl
.L0205d548:
    beq.n .L0205d632
.L0205d54a:
    movs r2, #0
.L0205d54c:
    mov r3, sl
.L0205d54e:
    mov r5, sp
.L0205d550:
    subs r3, #1
.L0205d552:
    orrs r3, r2
.L0205d554:
    adds r5, #63
.L0205d556:
    strb r3, [r5, #0]
.L0205d558:
    mov r3, r9
.L0205d55a:
    adds r3, #56
.L0205d55c:
    adds r1, r6, r3
.L0205d55e:
    movs r3, #1
.L0205d560:
    movs r4, #0
.L0205d562:
    negs r2, r3
.L0205d564:
    ldr r0, [pc, #384]
.L0205d566:
    mov ip, r2
.L0205d568:
    mov r8, r4
.L0205d56a:
    b.n .L0205d58c
.L0205d56c:
    cmp r4, #1
.L0205d56e:
    ble.n .L0205d600
.L0205d570:
    subs r3, r1, #1
.L0205d572:
    ldrb r3, [r3, #0]
.L0205d574:
    cmp r3, #0
.L0205d576:
    bne.n .L0205d600
.L0205d578:
    ldr r3, [r0, #0]
.L0205d57a:
    mov r2, ip
.L0205d57c:
    strb r2, [r5, r3]
.L0205d57e:
    adds r3, r5, r3
.L0205d580:
    strb r2, [r3, #1]
.L0205d582:
    adds r4, #1
.L0205d584:
    adds r1, #1
.L0205d586:
    adds r0, #4
.L0205d588:
    cmp r4, #13
.L0205d58a:
    beq.n .L0205d5a6
.L0205d58c:
    ldrb r2, [r1, #0]
.L0205d58e:
    cmp r2, #0
.L0205d590:
    beq.n .L0205d56c
.L0205d592:
    ldr r3, [r0, #0]
.L0205d594:
    adds r4, #1
.L0205d596:
    strb r2, [r5, r3]
.L0205d598:
    adds r3, r5, r3
.L0205d59a:
    lsrs r2, r2, #8
.L0205d59c:
    strb r2, [r3, #1]
.L0205d59e:
    adds r1, #1
.L0205d5a0:
    adds r0, #4
.L0205d5a2:
    cmp r4, #13
.L0205d5a4:
    bne.n .L0205d58c
.L0205d5a6:
    mov r3, sp
.L0205d5a8:
    ldrb r3, [r3, #20]
.L0205d5aa:
    ldr r2, [sp, #132]
.L0205d5ac:
    strb r3, [r5, #13]
.L0205d5ae:
    movs r3, #15
.L0205d5b0:
    strb r3, [r5, #11]
.L0205d5b2:
    movs r3, #0
.L0205d5b4:
    strb r3, [r5, #12]
.L0205d5b6:
    strb r3, [r5, #26]
.L0205d5b8:
    strb r3, [r5, #27]
.L0205d5ba:
    ldr r0, [r7, #4]
.L0205d5bc:
    cmp r2, #1
.L0205d5be:
    bls.n .L0205d636
.L0205d5c0:
    ldr r3, [r7, #36]
.L0205d5c2:
    subs r2, #2
.L0205d5c4:
    muls r2, r3
.L0205d5c6:
    ldr r3, [r7, #28]
.L0205d5c8:
    adds r3, r2, r3
.L0205d5ca:
    ldr r2, [sp, #136]
.L0205d5cc:
    movs r1, #32
.L0205d5ce:
    adds r2, r3, r2
.L0205d5d0:
    ldr r3, [sp, #140]
.L0205d5d2:
    str r1, [sp, #0]
.L0205d5d4:
    lsls r3, r3, #5
.L0205d5d6:
    adds r1, r5, #0
.L0205d5d8:
    bl reconstructed_external_thumb_0205ae1c
.L0205d5dc:
    adds r0, r7, #0
.L0205d5de:
    mov r1, fp
.L0205d5e0:
    movs r2, #0
.L0205d5e2:
    bl reconstructed_external_thumb_0205cae0
.L0205d5e6:
    cmp r0, #0
.L0205d5e8:
    beq.n .L0205d5fc
.L0205d5ea:
    movs r4, #1
.L0205d5ec:
    negs r4, r4
.L0205d5ee:
    add sl, r4
.L0205d5f0:
    movs r5, #13
.L0205d5f2:
    negs r5, r5
.L0205d5f4:
    mov r0, sl
.L0205d5f6:
    add r9, r5
.L0205d5f8:
    cmp r0, #0
.L0205d5fa:
    bne.n .L0205d53e
.L0205d5fc:
    movs r0, #1
.L0205d5fe:
    b.n .L0205d340
.L0205d600:
    ldr r3, [r0, #0]
.L0205d602:
    mov r2, r8
.L0205d604:
    strb r2, [r5, r3]
.L0205d606:
    adds r3, r5, r3
.L0205d608:
    strb r2, [r3, #1]
.L0205d60a:
    b.n .L0205d582
.L0205d60c:
    ldr r2, [sp, #132]
.L0205d60e:
    ldr r0, [r7, #4]
.L0205d610:
    cmp r2, #1
.L0205d612:
    bls.n .L0205d664
.L0205d614:
    ldr r3, [r7, #36]
.L0205d616:
    subs r2, #2
.L0205d618:
    muls r2, r3
.L0205d61a:
    ldr r3, [r7, #28]
.L0205d61c:
    adds r3, r2, r3
.L0205d61e:
    ldr r2, [sp, #136]
.L0205d620:
    movs r1, #32
.L0205d622:
    adds r2, r3, r2
.L0205d624:
    ldr r3, [sp, #140]
.L0205d626:
    str r1, [sp, #0]
.L0205d628:
    lsls r3, r3, #5
.L0205d62a:
    adds r1, r6, #0
.L0205d62c:
    bl reconstructed_external_thumb_0205ae1c
.L0205d630:
    b.n .L0205d5dc
.L0205d632:
    movs r2, #64
.L0205d634:
    b.n .L0205d54c
.L0205d636:
    ldr r3, [r7, #16]
.L0205d638:
    b.n .L0205d5ca
.L0205d63a:
    ldr r1, [pc, #176]
.L0205d63c:
    adds r0, r5, #0
.L0205d63e:
    adds r2, r4, #0
.L0205d640:
    bl reconstructed_external_thumb_020875dc
.L0205d644:
    cmp r0, #0
.L0205d646:
    bne.n .L0205d668
.L0205d648:
    movs r3, #46
.L0205d64a:
    strb r3, [r6, #0]
.L0205d64c:
    strb r3, [r6, #1]
.L0205d64e:
    b.n .L0205d3ee
.L0205d650:
    mov r0, r8
.L0205d652:
    cmp r0, #0
.L0205d654:
    bne.n .L0205d658
.L0205d656:
    b.n .L0205d33e
.L0205d658:
    b.n .L0205d520
.L0205d65a:
    mov r2, r8
.L0205d65c:
    mov r3, r9
.L0205d65e:
    ldmia r3!, {r0, r1, r5}
.L0205d660:
    stmia r2!, {r0, r1, r5}
.L0205d662:
    b.n .L0205d484
.L0205d664:
    ldr r3, [r7, #16]
.L0205d666:
    b.n .L0205d61e
.L0205d668:
    adds r0, r5, #0
.L0205d66a:
    bl reconstructed_external_thumb_0205cf90
.L0205d66e:
    cmp r0, #0
.L0205d670:
    beq.n .L0205d6be
.L0205d672:
    adds r0, r5, #0
.L0205d674:
    bl reconstructed_external_thumb_02088764
.L0205d678:
    movs r4, #0
.L0205d67a:
    adds r1, r6, r4
.L0205d67c:
    adds r3, r1, #0
.L0205d67e:
    adds r3, #56
.L0205d680:
    ldrb r3, [r3, #0]
.L0205d682:
    cmp r3, #46
.L0205d684:
    bne.n .L0205d688
.L0205d686:
    b.n .L0205d838
.L0205d688:
    cmp r3, #0
.L0205d68a:
    bne.n .L0205d68e
.L0205d68c:
    b.n .L0205d838
.L0205d68e:
    adds r4, #1
.L0205d690:
    strb r3, [r1, #0]
.L0205d692:
    cmp r4, #8
.L0205d694:
    bne.n .L0205d67a
.L0205d696:
    adds r1, r6, #0
.L0205d698:
    movs r2, #8
.L0205d69a:
    adds r1, #8
.L0205d69c:
    adds r3, r1, #0
.L0205d69e:
    adds r3, #56
.L0205d6a0:
    ldrb r3, [r3, #0]
.L0205d6a2:
    cmp r3, #46
.L0205d6a4:
    bne.n .L0205d6a8
.L0205d6a6:
    b.n .L0205d850
.L0205d6a8:
    cmp r2, #10
.L0205d6aa:
    ble.n .L0205d6ae
.L0205d6ac:
    b.n .L0205d3ee
.L0205d6ae:
    adds r3, r6, r2
.L0205d6b0:
    movs r1, #32
.L0205d6b2:
    adds r2, #1
.L0205d6b4:
    strb r1, [r3, #0]
.L0205d6b6:
    adds r3, #1
.L0205d6b8:
    cmp r2, #11
.L0205d6ba:
    bne.n .L0205d6b2
.L0205d6bc:
    b.n .L0205d3ee
.L0205d6be:
    adds r1, r4, #0
.L0205d6c0:
    adds r0, r5, #0
.L0205d6c2:
    bl reconstructed_external_thumb_020876dc
.L0205d6c6:
    movs r1, #46
.L0205d6c8:
    mov r9, r0
.L0205d6ca:
    adds r0, r5, #0
.L0205d6cc:
    bl reconstructed_external_thumb_02087730
.L0205d6d0:
    mov ip, r0
.L0205d6d2:
    cmp r0, #0
.L0205d6d4:
    bne.n .L0205d6d8
.L0205d6d6:
    b.n .L0205d8ae
.L0205d6d8:
    movs r1, #95
.L0205d6da:
    add r1, sp
.L0205d6dc:
    movs r0, #0
.L0205d6de:
    movs r4, #0
.L0205d6e0:
    mov sl, r1
.L0205d6e2:
    b.n .L0205d6f2
.L0205d6e4:
    .short 0x3a04  /* literal data */
.L0205d6e6:
    .short 0x020c  /* literal data */
.L0205d6e8:
    .short 0x9b54  /* literal data */
.L0205d6ea:
    .short 0x020b  /* literal data */
.L0205d6ec:
    .short 0x2668  /* literal data */
.L0205d6ee:
    .short 0x020c  /* literal data */
.L0205d6f0:
    adds r0, #1
.L0205d6f2:
    adds r3, r5, r0
.L0205d6f4:
    cmp ip, r3
.L0205d6f6:
    bls.n .L0205d714
.L0205d6f8:
    adds r3, r0, r6
.L0205d6fa:
    adds r3, #56
.L0205d6fc:
    ldrb r1, [r3, #0]
.L0205d6fe:
    ldr r3, [pc, #444]
.L0205d700:
    ldr r3, [r3, #0]
.L0205d702:
    ldrb r2, [r1, r3]
.L0205d704:
    movs r3, #7
.L0205d706:
    tst r2, r3
.L0205d708:
    beq.n .L0205d710
.L0205d70a:
    mov r2, sl
.L0205d70c:
    strb r1, [r2, r4]
.L0205d70e:
    adds r4, #1
.L0205d710:
    cmp r4, #5
.L0205d712:
    ble.n .L0205d6f0
.L0205d714:
    cmp r4, #7
.L0205d716:
    bgt.n .L0205d72c
.L0205d718:
    mov r0, sl
.L0205d71a:
    mov r1, sp
.L0205d71c:
    adds r3, r0, r4
.L0205d71e:
    adds r1, #103
.L0205d720:
    movs r2, #95
.L0205d722:
    strb r2, [r3, #0]
.L0205d724:
    adds r3, #1
.L0205d726:
    cmp r3, r1
.L0205d728:
    bne.n .L0205d722
.L0205d72a:
    movs r4, #8
.L0205d72c:
    adds r0, r5, #0
.L0205d72e:
    movs r1, #46
.L0205d730:
    bl reconstructed_external_thumb_02087730
.L0205d734:
    cmp r0, #0
.L0205d736:
    bne.n .L0205d73a
.L0205d738:
    b.n .L0205d8a0
.L0205d73a:
    movs r3, #46
.L0205d73c:
    mov r1, sl
.L0205d73e:
    strb r3, [r1, #8]
.L0205d740:
    cmp r4, #11
.L0205d742:
    bgt.n .L0205d764
.L0205d744:
    ldrb r3, [r0, #0]
.L0205d746:
    adds r0, #1
.L0205d748:
    strb r3, [r1, r4]
.L0205d74a:
    adds r4, #1
.L0205d74c:
    cmp r0, #0
.L0205d74e:
    beq.n .L0205d764
.L0205d750:
    adds r2, r1, r4
.L0205d752:
    cmp r4, #12
.L0205d754:
    beq.n .L0205d764
.L0205d756:
    ldrb r3, [r0, #0]
.L0205d758:
    adds r0, #1
.L0205d75a:
    strb r3, [r2, #0]
.L0205d75c:
    adds r4, #1
.L0205d75e:
    adds r2, #1
.L0205d760:
    cmp r0, #0
.L0205d762:
    bne.n .L0205d752
.L0205d764:
    movs r3, #0
.L0205d766:
    mov r2, sl
.L0205d768:
    strb r3, [r2, r4]
.L0205d76a:
    mov r4, sl
.L0205d76c:
    movs r3, #126
.L0205d76e:
    strb r3, [r4, #5]
.L0205d770:
    movs r4, #0
.L0205d772:
    b.n .L0205d77a
.L0205d774:
    cmp r4, #100
.L0205d776:
    bne.n .L0205d77a
.L0205d778:
    b.n .L0205d33e
.L0205d77a:
    adds r4, #1
.L0205d77c:
    movs r1, #10
.L0205d77e:
    adds r0, r4, #0
.L0205d780:
    bl reconstructed_external_thumb_02082858
.L0205d784:
    movs r1, #10
.L0205d786:
    bl reconstructed_external_thumb_020828ec
.L0205d78a:
    mov r5, sl
.L0205d78c:
    adds r1, #48
.L0205d78e:
    strb r1, [r5, #6]
.L0205d790:
    adds r0, r4, #0
.L0205d792:
    movs r1, #10
.L0205d794:
    bl reconstructed_external_thumb_020828ec
.L0205d798:
    adds r1, #48
.L0205d79a:
    strb r1, [r5, #7]
.L0205d79c:
    adds r0, r7, #0
.L0205d79e:
    mov r1, sl
.L0205d7a0:
    mov r2, r8
.L0205d7a2:
    bl reconstructed_external_thumb_0205cd3c
.L0205d7a6:
    cmp r0, #0
.L0205d7a8:
    bne.n .L0205d774
.L0205d7aa:
    cmp r4, #100
.L0205d7ac:
    bne.n .L0205d7b0
.L0205d7ae:
    b.n .L0205d33e
.L0205d7b0:
    mov r0, sl
.L0205d7b2:
    bl reconstructed_external_thumb_02088764
.L0205d7b6:
    mov r1, sl
.L0205d7b8:
    movs r2, #8
.L0205d7ba:
    adds r0, r6, #0
.L0205d7bc:
    bl reconstructed_external_thumb_020863cc
.L0205d7c0:
    adds r0, r6, #0
.L0205d7c2:
    add r1, sp, #104
.L0205d7c4:
    movs r2, #3
.L0205d7c6:
    adds r0, #8
.L0205d7c8:
    bl reconstructed_external_thumb_020863cc
.L0205d7cc:
    movs r2, #0
.L0205d7ce:
    movs r1, #32
.L0205d7d0:
    ldrb r3, [r2, r6]
.L0205d7d2:
    cmp r3, #31
.L0205d7d4:
    bhi.n .L0205d7d8
.L0205d7d6:
    strb r1, [r2, r6]
.L0205d7d8:
    adds r2, #1
.L0205d7da:
    cmp r2, #10
.L0205d7dc:
    bne.n .L0205d7d0
.L0205d7de:
    ldrb r1, [r6, #0]
.L0205d7e0:
    str r1, [sp, #20]
.L0205d7e2:
    movs r1, #1
.L0205d7e4:
    b.n .L0205d7fe
.L0205d7e6:
    movs r2, #128
.L0205d7e8:
    ldr r4, [sp, #20]
.L0205d7ea:
    lsrs r3, r4, #1
.L0205d7ec:
    adds r3, r2, r3
.L0205d7ee:
    ldrb r2, [r1, r6]
.L0205d7f0:
    adds r1, #1
.L0205d7f2:
    adds r3, r3, r2
.L0205d7f4:
    lsls r3, r3, #24
.L0205d7f6:
    lsrs r3, r3, #24
.L0205d7f8:
    str r3, [sp, #20]
.L0205d7fa:
    cmp r1, #11
.L0205d7fc:
    beq.n .L0205d808
.L0205d7fe:
    ldr r0, [sp, #20]
.L0205d800:
    lsls r0, r0, #31
.L0205d802:
    bmi.n .L0205d7e6
.L0205d804:
    movs r2, #0
.L0205d806:
    b.n .L0205d7e8
.L0205d808:
    mov r0, r9
.L0205d80a:
    movs r1, #13
.L0205d80c:
    adds r0, #12
.L0205d80e:
    bl reconstructed_external_thumb_020827cc
.L0205d812:
    add r5, sp, #108
.L0205d814:
    movs r3, #0
.L0205d816:
    add r1, sp, #120
.L0205d818:
    adds r4, r0, #1
.L0205d81a:
    mov r0, r8
.L0205d81c:
    str r3, [sp, #116]
.L0205d81e:
    str r3, [sp, #112]
.L0205d820:
    str r0, [sp, #108]
.L0205d822:
    adds r2, r1, #0
.L0205d824:
    adds r3, r5, #0
.L0205d826:
    mov r9, r5
.L0205d828:
    mov r8, r1
.L0205d82a:
    ldmia r3!, {r0, r1, r5}
.L0205d82c:
    stmia r2!, {r0, r1, r5}
.L0205d82e:
    cmp r4, #0
.L0205d830:
    bne.n .L0205d834
.L0205d832:
    b.n .L0205d508
.L0205d834:
    str r4, [sp, #16]
.L0205d836:
    b.n .L0205d40e
.L0205d838:
    adds r2, r4, #0
.L0205d83a:
    cmp r4, #7
.L0205d83c:
    ble.n .L0205d840
.L0205d83e:
    b.n .L0205d69c
.L0205d840:
    adds r3, r1, #0
.L0205d842:
    movs r0, #32
.L0205d844:
    adds r2, #1
.L0205d846:
    strb r0, [r3, #0]
.L0205d848:
    adds r3, #1
.L0205d84a:
    cmp r2, #7
.L0205d84c:
    ble.n .L0205d844
.L0205d84e:
    b.n .L0205d69c
.L0205d850:
    adds r3, r1, #0
.L0205d852:
    adds r3, #57
.L0205d854:
    ldrb r1, [r3, #0]
.L0205d856:
    cmp r1, #0
.L0205d858:
    bne.n .L0205d85c
.L0205d85a:
    b.n .L0205d6a8
.L0205d85c:
    cmp r2, #10
.L0205d85e:
    bgt.n .L0205d87c
.L0205d860:
    adds r3, r4, #0
.L0205d862:
    adds r3, #58
.L0205d864:
    adds r0, r6, r2
.L0205d866:
    adds r3, r6, r3
.L0205d868:
    strb r1, [r0, #0]
.L0205d86a:
    ldrb r1, [r3, #0]
.L0205d86c:
    adds r2, #1
.L0205d86e:
    cmp r1, #0
.L0205d870:
    bne.n .L0205d874
.L0205d872:
    b.n .L0205d6a8
.L0205d874:
    adds r0, #1
.L0205d876:
    adds r3, #1
.L0205d878:
    cmp r2, #11
.L0205d87a:
    bne.n .L0205d868
.L0205d87c:
    movs r3, #0
.L0205d87e:
    add r2, sp, #108
.L0205d880:
    add r4, sp, #120
.L0205d882:
    mov r9, r2
.L0205d884:
    str r3, [sp, #116]
.L0205d886:
    str r3, [sp, #112]
.L0205d888:
    mov r3, r8
.L0205d88a:
    str r3, [sp, #108]
.L0205d88c:
    adds r2, r4, #0
.L0205d88e:
    mov r3, r9
.L0205d890:
    ldmia r3!, {r0, r1, r5}
.L0205d892:
    stmia r2!, {r0, r1, r5}
.L0205d894:
    mov r8, r4
.L0205d896:
    movs r2, #0
.L0205d898:
    movs r4, #1
.L0205d89a:
    str r4, [sp, #16]
.L0205d89c:
    str r2, [sp, #20]
.L0205d89e:
    b.n .L0205d40e
.L0205d8a0:
    mov r3, sl
.L0205d8a2:
    strb r0, [r3, #8]
.L0205d8a4:
    strb r0, [r3, #9]
.L0205d8a6:
    strb r0, [r3, #10]
.L0205d8a8:
    strb r0, [r3, #11]
.L0205d8aa:
    strb r0, [r3, #12]
.L0205d8ac:
    b.n .L0205d76a
.L0205d8ae:
    adds r0, r5, #0
.L0205d8b0:
    movs r1, #0
.L0205d8b2:
    bl reconstructed_external_thumb_0208739c
.L0205d8b6:
    mov ip, r0
.L0205d8b8:
    b.n .L0205d6d8
.L0205d8ba:
    .short 0x0000  /* literal data */
.L0205d8bc:
    .short 0x92bc  /* literal data */
.L0205d8be:
    .short 0x020c  /* literal data */

/* uLibrary-createFont-region at 0x0205f21c, 808 bytes, ARM. */
.section .reconstructed.fn09,"ax",%progbits
.align 2
.arm
.global reconstructed_09_uLibrary_createFont_region
reconstructed_09_uLibrary_createFont_region:
.L0205f21c:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0205f220:
    mov sl, r0
.L0205f224:
    sub sp, sp, #36
.L0205f228:
    mov r0, #32
.L0205f22c:
    bl reconstructed_external_arm_02097858
.L0205f230:
    subs r8, r0, #0
.L0205f234:
    streq r8, [sp, #24]
.L0205f238:
    beq .L0205f49c
.L0205f23c:
    mov r0, #256
.L0205f240:
    bl reconstructed_external_arm_02097858
.L0205f244:
    cmp r0, #0
.L0205f248:
    mov r4, r0
.L0205f24c:
    str r8, [sp, #24]
.L0205f250:
    str r0, [r8, #4]
.L0205f254:
    beq .L0205f510
.L0205f258:
    ldr r3, [sl, #8]
.L0205f25c:
    cmp r3, #0
.L0205f260:
    movne r1, #0
.L0205f264:
    bne .L0205f270
.L0205f268:
    b .L0205f4d8
.L0205f26c:
    ldr r3, [sl, #8]
.L0205f270:
    ldrb r2, [r3, r1]
.L0205f274:
    ldr r3, [r8, #4]
.L0205f278:
    strb r2, [r3, r1]
.L0205f27c:
    add r1, r1, #1
.L0205f280:
    cmp r1, #256
.L0205f284:
    bne .L0205f26c
.L0205f288:
    mov r3, #0
.L0205f28c:
    str r3, [r8, #12]
.L0205f290:
    mov r0, #512
.L0205f294:
    bl reconstructed_external_arm_02097858
.L0205f298:
    cmp r0, #0
.L0205f29c:
    mov r5, r0
.L0205f2a0:
    str r0, [r8, #8]
.L0205f2a4:
    beq .L0205f520
.L0205f2a8:
    ldrb r3, [sl, #28]
.L0205f2ac:
    mov ip, #0
.L0205f2b0:
    strb r3, [r8, #28]
.L0205f2b4:
    ldr r4, [r8, #4]
.L0205f2b8:
    ldrb r1, [r8, #28]
.L0205f2bc:
    ldr r6, [pc, #628]
.L0205f2c0:
    mov r0, ip
.L0205f2c4:
    mov lr, ip
.L0205f2c8:
    ldrb r3, [r0, r4]
.L0205f2cc:
    add r2, r1, ip
.L0205f2d0:
    add r3, r3, r2
.L0205f2d4:
    cmp r3, r6
.L0205f2d8:
    mov r1, ip, lsl #16
.L0205f2dc:
    addgt lr, lr, #1
.L0205f2e0:
    movgt ip, #0
.L0205f2e4:
    mov r1, r1, lsr #16
.L0205f2e8:
    mov r3, lr, lsl #9
.L0205f2ec:
    movgt r1, ip
.L0205f2f0:
    mov r2, r0, lsl #1
.L0205f2f4:
    add r3, r1, r3
.L0205f2f8:
    strh r3, [r2, r5]
.L0205f2fc:
    ldrb r1, [r8, #28]
.L0205f300:
    ldrb r2, [r0, r4]
.L0205f304:
    add r0, r0, #1
.L0205f308:
    add r3, ip, r1
.L0205f30c:
    cmp r0, #256
.L0205f310:
    add ip, r2, r3
.L0205f314:
    bne .L0205f2c8
.L0205f318:
    ldrsh r3, [sl, #4]
.L0205f31c:
    cmp r3, #2
.L0205f320:
    bgt .L0205f4a8
.L0205f324:
    ldr r3, [sl, #16]
.L0205f328:
    mov ip, #4
.L0205f32c:
    mla r1, lr, r3, r3
.L0205f330:
    mov r0, #512
.L0205f334:
    mov r3, #2
.L0205f338:
    mov r2, #0
.L0205f33c:
    str ip, [sp]
.L0205f340:
    bl reconstructed_external_arm_0205dd48
.L0205f344:
    mov r3, #2
.L0205f348:
    str r3, [sp, #28]
.L0205f34c:
    str r0, [r8]
.L0205f350:
    ldr r4, [r8]
.L0205f354:
    cmp r4, #0
.L0205f358:
    beq .L0205f500
.L0205f35c:
    ldr r2, [sl, #16]
.L0205f360:
    ldrh r1, [r4, #34]
.L0205f364:
    ldrh r3, [r4, #36]
.L0205f368:
    str r2, [r8, #20]
.L0205f36c:
    mul lr, r3, r1
.L0205f370:
    ldrb r2, [r4, #38]
.L0205f374:
    ldr r3, [pc, #448]
.L0205f378:
    ldr r0, [r4, #48]
.L0205f37c:
    ldr ip, [r3, r2, lsl #2]
.L0205f380:
    mov r1, #0
.L0205f384:
    mul r2, ip, lr
.L0205f388:
    mov r2, r2, asr #3
.L0205f38c:
    bl reconstructed_external_arm_02097834
.L0205f390:
    ldr r9, [r8]
.L0205f394:
    mvn r3, #32768
.L0205f398:
    ldr r2, [r9, #52]
.L0205f39c:
    strh r3, [r2, #2]
.L0205f3a0:
    mov r3, #0
.L0205f3a4:
    strh r3, [r2]
.L0205f3a8:
    ldrh lr, [sl, #30]
.L0205f3ac:
    ldrsh r3, [r9, #46]
.L0205f3b0:
    cmp lr, r3
.L0205f3b4:
    movge lr, r3
.L0205f3b8:
    cmp lr, #0
.L0205f3bc:
    ble .L0205f400
.L0205f3c0:
    ldr r5, [sl, #32]
.L0205f3c4:
    mov r4, r2
.L0205f3c8:
    mov ip, #0
.L0205f3cc:
    ldr r2, [r5, ip, lsl #2]
.L0205f3d0:
    mov r0, ip, lsl #1
.L0205f3d4:
    mov r3, r2, lsr #6
.L0205f3d8:
    mov r1, r2, lsr #9
.L0205f3dc:
    and r3, r3, #992
.L0205f3e0:
    and r2, r2, #255
.L0205f3e4:
    orr r3, r3, r2, lsr #3
.L0205f3e8:
    and r1, r1, #31744
.L0205f3ec:
    add ip, ip, #1
.L0205f3f0:
    orr r3, r3, r1
.L0205f3f4:
    cmp lr, ip
.L0205f3f8:
    strh r3, [r0, r4]
.L0205f3fc:
    bne .L0205f3cc
.L0205f400:
    ldr fp, [pc, #312]
.L0205f404:
    mov r7, #0
.L0205f408:
    b .L0205f410
.L0205f40c:
    ldr r9, [r8]
.L0205f410:
    ldrsh r6, [sl, #4]
.L0205f414:
    ldr r1, [sl, #20]
.L0205f418:
    mov r3, r6, lsl #2
.L0205f41c:
    add r3, r3, fp
.L0205f420:
    ldr lr, [r3, #-4]
.L0205f424:
    ldr r2, [sl, #16]
.L0205f428:
    mov lr, r1, lsl lr
.L0205f42c:
    mul r4, r2, r1
.L0205f430:
    ldr ip, [r8, #8]
.L0205f434:
    ldr r2, [sl]
.L0205f438:
    ldr r1, [r8, #4]
.L0205f43c:
    mov r3, r7, lsl #1
.L0205f440:
    ldrh r0, [r3, ip]
.L0205f444:
    mla r5, r7, r4, r2
.L0205f448:
    ldrb ip, [r1, r7]
.L0205f44c:
    ldrb r3, [r8, #28]
.L0205f450:
    ldr r4, [r8, #20]
.L0205f454:
    mov r1, r0, lsl #23
.L0205f458:
    add r3, ip, r3
.L0205f45c:
    mov r0, r0, lsr #9
.L0205f460:
    ldr ip, [sp, #28]
.L0205f464:
    mul r2, r4, r0
.L0205f468:
    mov r1, r1, lsr #23
.L0205f46c:
    mov r0, r9
.L0205f470:
    add r7, r7, #1
.L0205f474:
    str lr, [sp, #4]
.L0205f478:
    str r6, [sp, #8]
.L0205f47c:
    str r5, [sp, #16]
.L0205f480:
    str r4, [sp]
.L0205f484:
    str ip, [sp, #12]
.L0205f488:
    bl reconstructed_external_arm_0205ecbc
.L0205f48c:
    cmp r7, #256
.L0205f490:
    bne .L0205f40c
.L0205f494:
    ldr r0, [r8]
.L0205f498:
    bl reconstructed_external_arm_0205db7c
.L0205f49c:
    ldr r0, [sp, #24]
.L0205f4a0:
    add sp, sp, #36
.L0205f4a4:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0205f4a8:
    ldr r3, [sl, #16]
.L0205f4ac:
    mov ip, #16
.L0205f4b0:
    mla r1, lr, r3, r3
.L0205f4b4:
    mov r0, #512
.L0205f4b8:
    mov r2, #0
.L0205f4bc:
    mov r3, #3
.L0205f4c0:
    str ip, [sp]
.L0205f4c4:
    bl reconstructed_external_arm_0205dd48
.L0205f4c8:
    mov ip, #4
.L0205f4cc:
    str r0, [r8]
.L0205f4d0:
    str ip, [sp, #28]
.L0205f4d4:
    b .L0205f350
.L0205f4d8:
    mov r1, r3
.L0205f4dc:
    ldr r2, [r8, #4]
.L0205f4e0:
    ldr r3, [sl, #12]
.L0205f4e4:
    strb r3, [r1, r2]
.L0205f4e8:
    add r1, r1, #1
.L0205f4ec:
    cmp r1, #256
.L0205f4f0:
    bne .L0205f4dc
.L0205f4f4:
    mov r3, #1
.L0205f4f8:
    str r3, [r8, #12]
.L0205f4fc:
    b .L0205f290
.L0205f500:
    ldr r0, [r8, #8]
.L0205f504:
    bl reconstructed_external_arm_0209784c
.L0205f508:
    ldr r0, [r8, #4]
.L0205f50c:
    bl reconstructed_external_arm_0209784c
.L0205f510:
    mov r0, r8
.L0205f514:
    bl reconstructed_external_arm_0209784c
.L0205f518:
    str r4, [sp, #24]
.L0205f51c:
    b .L0205f49c
.L0205f520:
    ldr r0, [r8, #4]
.L0205f524:
    bl reconstructed_external_arm_0209784c
.L0205f528:
    mov r0, r8
.L0205f52c:
    bl reconstructed_external_arm_0209784c
.L0205f530:
    str r5, [sp, #24]
.L0205f534:
    b .L0205f49c
.L0205f538:
    .long 0x000001ff  /* literal data */
.L0205f53c:
    .long 0x020b9b88  /* literal data */
.L0205f540:
    .long 0x020ba3c8  /* literal data */

.section .reconstructed.thumb_target_02009608,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02009608:

.section .reconstructed.thumb_target_020096d0,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020096d0:

.section .reconstructed.thumb_target_0200add0,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0200add0:

.section .reconstructed.thumb_target_0200ae64,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0200ae64:

.section .reconstructed.thumb_target_0200ae9c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0200ae9c:

.section .reconstructed.thumb_target_0200af94,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0200af94:

.section .reconstructed.thumb_target_0200b35c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0200b35c:

.section .reconstructed.thumb_target_02010048,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02010048:

.section .reconstructed.thumb_target_02010158,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02010158:

.section .reconstructed.thumb_target_020101e0,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020101e0:

.section .reconstructed.thumb_target_0201021c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0201021c:

.section .reconstructed.thumb_target_02011694,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02011694:

.section .reconstructed.thumb_target_02011748,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02011748:

.section .reconstructed.thumb_target_02011a60,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02011a60:

.section .reconstructed.thumb_target_02011ae4,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02011ae4:

.section .reconstructed.thumb_target_02011c14,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02011c14:

.section .reconstructed.thumb_target_0205ae1c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205ae1c:

.section .reconstructed.thumb_target_0205ae68,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205ae68:

.section .reconstructed.thumb_target_0205cae0,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205cae0:

.section .reconstructed.thumb_target_0205cd3c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205cd3c:

.section .reconstructed.thumb_target_0205cf90,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205cf90:

.section .reconstructed.thumb_target_0205d02c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205d02c:

.section .reconstructed.thumb_target_0207a7f4,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0207a7f4:

.section .reconstructed.thumb_target_020827cc,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020827cc:

.section .reconstructed.thumb_target_02082848,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02082848:

.section .reconstructed.thumb_target_02082858,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02082858:

.section .reconstructed.thumb_target_020828ec,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020828ec:

.section .reconstructed.thumb_target_020863cc,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020863cc:

.section .reconstructed.thumb_target_02086428,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02086428:

.section .reconstructed.thumb_target_020864ac,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020864ac:

.section .reconstructed.thumb_target_0208739c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0208739c:

.section .reconstructed.thumb_target_020874d0,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020874d0:

.section .reconstructed.thumb_target_020875dc,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020875dc:

.section .reconstructed.thumb_target_020876dc,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020876dc:

.section .reconstructed.thumb_target_02087730,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02087730:

.section .reconstructed.thumb_target_02088764,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02088764:


.section .note.GNU-stack,"",%progbits
