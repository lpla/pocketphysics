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
