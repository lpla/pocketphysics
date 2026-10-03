/* Unrecovered release velocity method; not high-level source recovery. */
.syntax unified
.arch armv5te
.section .text.contact.velocity,"ax",%progbits
.align 2
.arm
.global _ZN15b2ContactSolver24SolveVelocityConstraintsEv
.type _ZN15b2ContactSolver24SolveVelocityConstraintsEv, %function
_ZN15b2ContactSolver24SolveVelocityConstraintsEv:
.L020482b0:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020482b4:
    ldr r3, [r0, #20]
.L020482b8:
    sub sp, sp, #812
.L020482bc:
    cmp r3, #0
.L020482c0:
    str r0, [sp, #440]
.L020482c4:
    ble .L020496d0
.L020482c8:
    ldr r0, [r0, #16]
.L020482cc:
    mov r1, #0
.L020482d0:
    str r0, [sp, #48]
.L020482d4:
    str r1, [sp, #464]
.L020482d8:
    ldr r2, [sp, #48]
.L020482dc:
    add r8, sp, #496
.L020482e0:
    ldr r3, [r2, #96]
.L020482e4:
    ldr r9, [r2, #112]
.L020482e8:
    mov r6, r3
.L020482ec:
    mov r7, r6, asr #31
.L020482f0:
    ldr r4, [r2, #108]
.L020482f4:
    ldr r2, [pc, #428]
.L020482f8:
    rsb r1, r6, #0
.L020482fc:
    mov r0, r7
.L02048300:
    mla r0, r2, r0, r1
.L02048304:
    ldr r1, [sp, #48]
.L02048308:
    stmdb r8, {r6, r7}
.L0204830c:
    str r4, [sp, #468]
.L02048310:
    ldr r3, [r1, #100]
.L02048314:
    ldr sl, [sp, #488]
.L02048318:
    ldr fp, [sp, #468]
.L0204831c:
    umull r4, r5, sl, r2
.L02048320:
    add ip, r9, #64
.L02048324:
    str r9, [sp, #472]
.L02048328:
    add sl, sp, #512
.L0204832c:
    mov r8, r3
.L02048330:
    mov r9, r8, asr #31
.L02048334:
    stmdb sl, {r8, r9}
.L02048338:
    add fp, fp, #64
.L0204833c:
    ldr r2, [fp, #4]
.L02048340:
    str fp, [sp, #444]
.L02048344:
    ldr fp, [sp, #504]
.L02048348:
    mov r3, r9, lsl #16
.L0204834c:
    add r5, r0, r5
.L02048350:
    orr r3, r3, r8, lsr #16
.L02048354:
    str r2, [sp, #672]
.L02048358:
    mov r2, fp, lsl #16
.L0204835c:
    ldr r6, [ip, #4]
.L02048360:
    str ip, [sp, #452]
.L02048364:
    ldr lr, [sp, #48]
.L02048368:
    mov ip, r4, lsr #16
.L0204836c:
    mov r0, r2, lsr #16
.L02048370:
    mov r4, r5, asr #16
.L02048374:
    mov r2, r3, asr #16
.L02048378:
    str r4, [sp, #500]
.L0204837c:
    orr r1, r0, r3, lsl #16
.L02048380:
    str r2, [sp, #516]
.L02048384:
    ldr r3, [sp, #468]
.L02048388:
    ldr r2, [sp, #468]
.L0204838c:
    ldr r4, [sp, #472]
.L02048390:
    ldr lr, [lr, #124]
.L02048394:
    ldr r2, [r2, #120]
.L02048398:
    ldr r3, [r3, #128]
.L0204839c:
    ldr r4, [r4, #120]
.L020483a0:
    str lr, [sp, #80]
.L020483a4:
    cmp lr, #0
.L020483a8:
    orr lr, ip, r5, lsl #16
.L020483ac:
    str r6, [sp, #684]
.L020483b0:
    str lr, [sp, #496]
.L020483b4:
    str r1, [sp, #512]
.L020483b8:
    str r2, [sp, #656]
.L020483bc:
    str r3, [sp, #660]
.L020483c0:
    str r4, [sp, #664]
.L020483c4:
    ldr r5, [sp, #472]
.L020483c8:
    ldr r6, [sp, #468]
.L020483cc:
    ldr r9, [sp, #468]
.L020483d0:
    ldr sl, [sp, #472]
.L020483d4:
    ldr lr, [sp, #472]
.L020483d8:
    ldr r8, [sp, #468]
.L020483dc:
    ldr ip, [sp, #472]
.L020483e0:
    ldr r5, [r5, #128]
.L020483e4:
    ldr r6, [r6, #64]
.L020483e8:
    ldr r7, [sp, #672]
.L020483ec:
    ldr r9, [r9, #72]
.L020483f0:
    ldr sl, [sl, #64]
.L020483f4:
    ldr fp, [sp, #684]
.L020483f8:
    ldr lr, [lr, #72]
.L020483fc:
    add r8, r8, #72
.L02048400:
    add ip, ip, #72
.L02048404:
    str r5, [sp, #668]
.L02048408:
    str r6, [sp, #676]
.L0204840c:
    str r7, [sp, #56]
.L02048410:
    str r8, [sp, #448]
.L02048414:
    str r9, [sp, #680]
.L02048418:
    str sl, [sp, #688]
.L0204841c:
    str fp, [sp, #60]
.L02048420:
    str ip, [sp, #456]
.L02048424:
    str lr, [sp, #692]
.L02048428:
    ble .L02048d40
.L0204842c:
    mov r0, r2
.L02048430:
    mov r1, r0, asr #31
.L02048434:
    add r2, sp, #704
.L02048438:
    add r4, sp, #720
.L0204843c:
    stmia r2, {r0, r1}
.L02048440:
    mov r2, r3
.L02048444:
    mov r3, r2, asr #31
.L02048448:
    stmdb r4, {r2, r3}
.L0204844c:
    ldr r4, [sp, #664]
.L02048450:
    add r6, sp, #720
.L02048454:
    mov r5, r4, asr #31
.L02048458:
    stmia r6, {r4, r5}
.L0204845c:
    ldr r6, [sp, #668]
.L02048460:
    add r8, sp, #736
.L02048464:
    mov r7, r6, asr #31
.L02048468:
    stmdb r8, {r6, r7}
.L0204846c:
    ldr r9, [sp, #468]
.L02048470:
    ldr r8, [sp, #468]
.L02048474:
    ldr sl, [sp, #472]
.L02048478:
    ldr fp, [sp, #472]
.L0204847c:
    mov r7, #0
.L02048480:
    add r8, r8, #28
.L02048484:
    add r9, r9, #12
.L02048488:
    add sl, sl, #28
.L0204848c:
    add fp, fp, #12
.L02048490:
    str r7, [sp, #476]
.L02048494:
    str r8, [sp, #64]
.L02048498:
    str r9, [sp, #72]
.L0204849c:
    str sl, [sp, #68]
.L020484a0:
    str fp, [sp, #76]
.L020484a4:
    b .L020484c4
.L020484a8:
    .long 0xffff0000  /* literal data */
.L020484ac:
    ldr ip, [sp, #444]
.L020484b0:
    ldr lr, [sp, #452]
.L020484b4:
    ldr ip, [ip, #4]
.L020484b8:
    ldr lr, [lr, #4]
.L020484bc:
    str ip, [sp, #56]
.L020484c0:
    str lr, [sp, #60]
.L020484c4:
    ldr r0, [sp, #476]
.L020484c8:
    ldr r1, [sp, #48]
.L020484cc:
    mov r3, r0, lsl #6
.L020484d0:
    sub r3, r3, r0, lsl #4
.L020484d4:
    add r1, r1, r3
.L020484d8:
    str r1, [sp, #480]
.L020484dc:
    ldr r4, [sp, #480]
.L020484e0:
    ldr r2, [sp, #472]
.L020484e4:
    ldr r0, [r4, #8]
.L020484e8:
    ldr r1, [r2, #28]
.L020484ec:
    ldr r5, [sp, #68]
.L020484f0:
    ldr r7, [sp, #472]
.L020484f4:
    ldr r2, [r5, #4]
.L020484f8:
    ldr r6, [r7, #12]
.L020484fc:
    rsb lr, r1, r0
.L02048500:
    ldr r8, [r4, #12]
.L02048504:
    ldr r0, [sp, #48]
.L02048508:
    ldr r1, [sp, #468]
.L0204850c:
    ldr r5, [sp, #64]
.L02048510:
    ldr r7, [sp, #480]
.L02048514:
    ldr r9, [sp, #76]
.L02048518:
    ldr r4, [r0, r3]
.L0204851c:
    rsb r8, r2, r8
.L02048520:
    ldr r3, [r5, #4]
.L02048524:
    ldr r2, [r1, #28]
.L02048528:
    ldr r5, [r7, #4]
.L0204852c:
    mov r0, lr
.L02048530:
    mov r1, r0, asr #31
.L02048534:
    add r7, sp, #544
.L02048538:
    stmdb r7, {r0, r1}
.L0204853c:
    ldr ip, [r9, #8]
.L02048540:
    rsb r4, r2, r4
.L02048544:
    ldr r2, [sp, #540]
.L02048548:
    mov r0, r6
.L0204854c:
    mov r1, r0, asr #31
.L02048550:
    ldr fp, [r9, #4]
.L02048554:
    mov r6, ip
.L02048558:
    mov r7, r6, asr #31
.L0204855c:
    mul r2, r0, r2
.L02048560:
    add lr, sp, #336
.L02048564:
    ldr sl, [r9, #12]
.L02048568:
    stmia lr, {r6, r7}
.L0204856c:
    add ip, sp, #336
.L02048570:
    mov r6, fp
.L02048574:
    mov r7, r6, asr #31
.L02048578:
    ldr lr, [sp, #72]
.L0204857c:
    stmdb ip, {r6, r7}
.L02048580:
    ldr ip, [sp, #468]
.L02048584:
    mov r6, sl
.L02048588:
    mov r7, r6, asr #31
.L0204858c:
    add fp, sp, #320
.L02048590:
    stmia fp, {r6, r7}
.L02048594:
    ldr sl, [ip, #12]
.L02048598:
    ldr r6, [lr, #8]
.L0204859c:
    ldr r7, [lr, #4]
.L020485a0:
    ldr fp, [lr, #12]
.L020485a4:
    rsb r5, r3, r5
.L020485a8:
    str r2, [sp, #24]
.L020485ac:
    ldr lr, [sp, #536]
.L020485b0:
    ldr r3, [sp, #336]
.L020485b4:
    ldr ip, [sp, #332]
.L020485b8:
    ldr r2, [sp, #324]
.L020485bc:
    mov r9, r8, asr #31
.L020485c0:
    mul r3, r9, r3
.L020485c4:
    mul ip, lr, ip
.L020485c8:
    mul r2, r8, r2
.L020485cc:
    str r3, [sp, #20]
.L020485d0:
    str ip, [sp, #16]
.L020485d4:
    str r2, [sp, #316]
.L020485d8:
    add ip, sp, #528
.L020485dc:
    mov r2, r4
.L020485e0:
    mov r3, r2, asr #31
.L020485e4:
    stmia ip, {r2, r3}
.L020485e8:
    add r4, sp, #528
.L020485ec:
    mov r2, r5
.L020485f0:
    mov r3, r2, asr #31
.L020485f4:
    stmdb r4, {r2, r3}
.L020485f8:
    mov r2, sl
.L020485fc:
    mov r3, r2, asr #31
.L02048600:
    add r4, sp, #432
.L02048604:
    stmia r4, {r2, r3}
.L02048608:
    mov r2, r6
.L0204860c:
    mov r3, r2, asr #31
.L02048610:
    add r4, sp, #416
.L02048614:
    stmdb r4, {r2, r3}
.L02048618:
    ldr ip, [sp, #432]
.L0204861c:
    mov r2, r7
.L02048620:
    mov r3, r2, asr #31
.L02048624:
    add r4, sp, #400
.L02048628:
    mov r6, fp
.L0204862c:
    mov r7, r6, asr #31
.L02048630:
    ldr fp, [sp, #532]
.L02048634:
    stmdb r4, {r2, r3}
.L02048638:
    ldr lr, [sp, #524]
.L0204863c:
    ldr r2, [sp, #408]
.L02048640:
    mul fp, ip, fp
.L02048644:
    ldr r5, [sp, #520]
.L02048648:
    mul lr, r2, lr
.L0204864c:
    add sl, sp, #368
.L02048650:
    stmia sl, {r6, r7}
.L02048654:
    mul r7, r5, r7
.L02048658:
    ldr sl, [sp, #536]
.L0204865c:
    ldr r4, [sp, #528]
.L02048660:
    ldr ip, [sp, #320]
.L02048664:
    ldr r2, [sp, #24]
.L02048668:
    str fp, [sp, #28]
.L0204866c:
    ldr fp, [sp, #328]
.L02048670:
    mul r3, r4, r3
.L02048674:
    str lr, [sp, #400]
.L02048678:
    umull r4, r5, r8, ip
.L0204867c:
    mov lr, sl
.L02048680:
    mov ip, sl
.L02048684:
    mla lr, r1, lr, r2
.L02048688:
    str r7, [sp, #360]
.L0204868c:
    umull r6, r7, sl, fp
.L02048690:
    umull sl, fp, r0, ip
.L02048694:
    str lr, [sp, #348]
.L02048698:
    mov r0, sl
.L0204869c:
    ldr lr, [sp, #20]
.L020486a0:
    ldr sl, [sp, #336]
.L020486a4:
    mov r1, fp
.L020486a8:
    ldr fp, [sp, #340]
.L020486ac:
    str r3, [sp, #388]
.L020486b0:
    mla fp, r8, fp, lr
.L020486b4:
    umull r2, r3, sl, r8
.L020486b8:
    ldr lr, [sp, #328]
.L020486bc:
    ldr sl, [sp, #16]
.L020486c0:
    ldr ip, [sp, #540]
.L020486c4:
    add r3, fp, r3
.L020486c8:
    mla ip, lr, ip, sl
.L020486cc:
    str ip, [sp, #20]
.L020486d0:
    ldr lr, [sp, #320]
.L020486d4:
    ldr ip, [sp, #316]
.L020486d8:
    ldr sl, [sp, #528]
.L020486dc:
    mla ip, lr, r9, ip
.L020486e0:
    str ip, [sp, #16]
.L020486e4:
    ldr ip, [sp, #392]
.L020486e8:
    ldr lr, [sp, #436]
.L020486ec:
    umull r8, r9, sl, ip
.L020486f0:
    add sl, sp, #384
.L020486f4:
    stmdb sl, {r8, r9}
.L020486f8:
    ldr ip, [sp, #368]
.L020486fc:
    ldr sl, [sp, #520]
.L02048700:
    ldr fp, [sp, #20]
.L02048704:
    umull r8, r9, sl, ip
.L02048708:
    add sl, sp, #352
.L0204870c:
    stmia sl, {r8, r9}
.L02048710:
    ldr r8, [sp, #528]
.L02048714:
    ldr r9, [sp, #28]
.L02048718:
    ldr sl, [sp, #432]
.L0204871c:
    mov ip, r8
.L02048720:
    mla lr, r8, lr, r9
.L02048724:
    umull r8, r9, sl, ip
.L02048728:
    add sl, sp, #416
.L0204872c:
    stmia sl, {r8, r9}
.L02048730:
    str lr, [sp, #428]
.L02048734:
    ldr r8, [sp, #520]
.L02048738:
    ldr r9, [sp, #400]
.L0204873c:
    ldr lr, [sp, #412]
.L02048740:
    ldr sl, [sp, #408]
.L02048744:
    mla lr, r8, lr, r9
.L02048748:
    mov ip, r8
.L0204874c:
    umull r8, r9, sl, ip
.L02048750:
    str lr, [sp, #404]
.L02048754:
    ldr sl, [sp, #392]
.L02048758:
    ldr ip, [sp, #388]
.L0204875c:
    ldr lr, [sp, #532]
.L02048760:
    add r7, fp, r7
.L02048764:
    mla lr, sl, lr, ip
.L02048768:
    ldr sl, [sp, #368]
.L0204876c:
    ldr ip, [sp, #360]
.L02048770:
    str lr, [sp, #28]
.L02048774:
    ldr lr, [sp, #524]
.L02048778:
    mov r0, r0, lsr #16
.L0204877c:
    mla lr, sl, lr, ip
.L02048780:
    str lr, [sp, #364]
.L02048784:
    ldr lr, [sp, #456]
.L02048788:
    ldr sl, [sp, #348]
.L0204878c:
    ldr ip, [sp, #16]
.L02048790:
    ldr lr, [lr]
.L02048794:
    add r1, sl, r1
.L02048798:
    add r5, ip, r5
.L0204879c:
    mov r2, r2, lsr #16
.L020487a0:
    mov r6, r6, lsr #16
.L020487a4:
    mov r4, r4, lsr #16
.L020487a8:
    str lr, [sp, #40]
.L020487ac:
    orr r2, r2, r3, lsl #16
.L020487b0:
    orr r0, r0, r1, lsl #16
.L020487b4:
    orr r6, r6, r7, lsl #16
.L020487b8:
    orr r4, r4, r5, lsl #16
.L020487bc:
    add r0, r0, r2
.L020487c0:
    ldr r1, [sp, #448]
.L020487c4:
    ldr r2, [sp, #40]
.L020487c8:
    add r6, r6, r4
.L020487cc:
    mov r4, r6
.L020487d0:
    mov r5, r4, asr #31
.L020487d4:
    add r7, sp, #560
.L020487d8:
    ldr lr, [r1]
.L020487dc:
    stmdb r7, {r4, r5}
.L020487e0:
    rsb r1, r2, #0
.L020487e4:
    ldr r6, [sp, #40]
.L020487e8:
    mov sl, r1
.L020487ec:
    mov fp, sl, asr #31
.L020487f0:
    add ip, sp, #304
.L020487f4:
    stmia ip, {sl, fp}
.L020487f8:
    mov r2, r0
.L020487fc:
    mov r3, r2, asr #31
.L02048800:
    mov r7, r6, asr #31
.L02048804:
    add r4, sp, #544
.L02048808:
    add sl, sp, #304
.L0204880c:
    stmdb sl, {r6, r7}
.L02048810:
    stmia r4, {r2, r3}
.L02048814:
    ldr sl, [sp, #420]
.L02048818:
    ldr r3, [sp, #416]
.L0204881c:
    ldr r7, [sp, #428]
.L02048820:
    ldr r2, [sp, #356]
.L02048824:
    add r7, r7, sl
.L02048828:
    ldr r1, [sp, #364]
.L0204882c:
    mov r4, r3, lsr #16
.L02048830:
    ldr r0, [sp, #380]
.L02048834:
    ldr fp, [sp, #404]
.L02048838:
    orr r4, r4, r7, lsl #16
.L0204883c:
    str r7, [sp, #420]
.L02048840:
    ldr ip, [sp, #28]
.L02048844:
    ldr r7, [sp, #376]
.L02048848:
    add r1, r1, r2
.L0204884c:
    add ip, ip, r0
.L02048850:
    add r9, fp, r9
.L02048854:
    str r1, [sp, #356]
.L02048858:
    ldr fp, [sp, #352]
.L0204885c:
    mov r0, r7, lsr #16
.L02048860:
    orr r0, r0, ip, lsl #16
.L02048864:
    str ip, [sp, #380]
.L02048868:
    ldr ip, [sp, #356]
.L0204886c:
    mov r2, fp, lsr #16
.L02048870:
    orr r2, r2, ip, lsl #16
.L02048874:
    add ip, r0, r2
.L02048878:
    ldr r1, [sp, #556]
.L0204887c:
    ldr r0, [sp, #304]
.L02048880:
    ldr r2, [sp, #296]
.L02048884:
    ldr r6, [sp, #548]
.L02048888:
    mov r8, r8, lsr #16
.L0204888c:
    orr r8, r8, r9, lsl #16
.L02048890:
    add r3, r4, r8
.L02048894:
    mul r1, r0, r1
.L02048898:
    mul r6, r2, r6
.L0204889c:
    mov r8, ip
.L020488a0:
    mov r9, r8, asr #31
.L020488a4:
    add sl, sp, #576
.L020488a8:
    stmdb sl, {r8, r9}
.L020488ac:
    mov r8, r3
.L020488b0:
    mov r9, r8, asr #31
.L020488b4:
    add sl, sp, #560
.L020488b8:
    stmia sl, {r8, r9}
.L020488bc:
    ldr r0, [sp, #552]
.L020488c0:
    ldr r7, [sp, #544]
.L020488c4:
    rsb r4, lr, #0
.L020488c8:
    ldr ip, [sp, #572]
.L020488cc:
    ldr fp, [sp, #308]
.L020488d0:
    ldr sl, [sp, #300]
.L020488d4:
    mov r5, r4, asr #31
.L020488d8:
    mla fp, r0, fp, r1
.L020488dc:
    mla sl, r7, sl, r6
.L020488e0:
    mul ip, r4, ip
.L020488e4:
    ldr r1, [sp, #304]
.L020488e8:
    ldr r6, [sp, #296]
.L020488ec:
    umull r2, r3, r1, r0
.L020488f0:
    umull r0, r1, r6, r7
.L020488f4:
    ldr r7, [sp, #568]
.L020488f8:
    mov r8, lr
.L020488fc:
    mov r9, r8, asr #31
.L02048900:
    mla r7, r5, r7, ip
.L02048904:
    ldr lr, [sp, #564]
.L02048908:
    str r7, [sp, #292]
.L0204890c:
    mul lr, r8, lr
.L02048910:
    ldr ip, [sp, #568]
.L02048914:
    add r1, sl, r1
.L02048918:
    umull r6, r7, r4, ip
.L0204891c:
    ldr r4, [sp, #560]
.L02048920:
    ldr sl, [sp, #444]
.L02048924:
    mla lr, r4, r9, lr
.L02048928:
    ldr r9, [sp, #452]
.L0204892c:
    mov ip, r4
.L02048930:
    mov r0, r0, lsr #16
.L02048934:
    umull r4, r5, r8, ip
.L02048938:
    add r3, fp, r3
.L0204893c:
    ldr r8, [r9]
.L02048940:
    orr r0, r0, r1, lsl #16
.L02048944:
    mov r2, r2, lsr #16
.L02048948:
    ldr r1, [sp, #292]
.L0204894c:
    ldr ip, [sl]
.L02048950:
    orr r2, r2, r3, lsl #16
.L02048954:
    ldr fp, [sp, #60]
.L02048958:
    add r7, r1, r7
.L0204895c:
    add r8, r8, r2
.L02048960:
    mov r6, r6, lsr #16
.L02048964:
    rsb r8, ip, r8
.L02048968:
    orr r6, r6, r7, lsl #16
.L0204896c:
    ldr ip, [sp, #56]
.L02048970:
    add r5, lr, r5
.L02048974:
    add r0, fp, r0
.L02048978:
    rsb r8, r6, r8
.L0204897c:
    ldr r3, [sp, #488]
.L02048980:
    mov r4, r4, lsr #16
.L02048984:
    mov r9, r8, asr #31
.L02048988:
    rsb r0, ip, r0
.L0204898c:
    orr r4, r4, r5, lsl #16
.L02048990:
    rsb r0, r4, r0
.L02048994:
    mul r3, r9, r3
.L02048998:
    ldr r1, [sp, #504]
.L0204899c:
    mov r6, r0
.L020489a0:
    mov r7, r6, asr #31
.L020489a4:
    mul r1, r7, r1
.L020489a8:
    ldr r2, [sp, #488]
.L020489ac:
    ldr lr, [sp, #492]
.L020489b0:
    umull r4, r5, r2, r8
.L020489b4:
    mla lr, r8, lr, r3
.L020489b8:
    ldr r9, [sp, #440]
.L020489bc:
    ldr r8, [sp, #504]
.L020489c0:
    ldr r0, [sp, #508]
.L020489c4:
    ldr sl, [sp, #480]
.L020489c8:
    ldr ip, [r9, #4]
.L020489cc:
    umull r2, r3, r8, r6
.L020489d0:
    mla r0, r6, r0, r1
.L020489d4:
    add r5, lr, r5
.L020489d8:
    mov ip, ip, asr #7
.L020489dc:
    ldr lr, [sl, #28]
.L020489e0:
    rsb ip, ip, #0
.L020489e4:
    add r3, r0, r3
.L020489e8:
    smull r0, r1, ip, lr
.L020489ec:
    mov r4, r4, lsr #16
.L020489f0:
    mov r2, r2, lsr #16
.L020489f4:
    ldr r6, [sl, #44]
.L020489f8:
    orr r4, r4, r5, lsl #16
.L020489fc:
    orr r2, r2, r3, lsl #16
.L02048a00:
    add r4, r4, r2
.L02048a04:
    mov r0, r0, lsr #16
.L02048a08:
    orr r0, r0, r1, lsl #16
.L02048a0c:
    rsb r4, r6, r4
.L02048a10:
    smull r2, r3, r4, r0
.L02048a14:
    ldr ip, [sl, #16]
.L02048a18:
    mov r2, r2, lsr #16
.L02048a1c:
    orr r2, r2, r3, lsl #16
.L02048a20:
    add ip, ip, r2
.L02048a24:
    cmp ip, #0
.L02048a28:
    mov r3, #0
.L02048a2c:
    str r3, [sp, #788]
.L02048a30:
    str ip, [sp, #784]
.L02048a34:
    add fp, sl, #16
.L02048a38:
    addgt r0, sp, #784
.L02048a3c:
    addle r0, sp, #788
.L02048a40:
    str fp, [sp, #460]
.L02048a44:
    ldr r0, [r0]
.L02048a48:
    ldr ip, [sp, #460]
.L02048a4c:
    ldr lr, [sp, #440]
.L02048a50:
    str r0, [sp, #696]
.L02048a54:
    ldr r1, [lr]
.L02048a58:
    ldr r0, [ip]
.L02048a5c:
    ldr r2, [sp, #696]
.L02048a60:
    mov r1, r1, lsl #7
.L02048a64:
    rsb r0, r0, r2
.L02048a68:
    smull r2, r3, r1, r0
.L02048a6c:
    mov r2, r2, lsr #16
.L02048a70:
    ldr r1, [sp, #488]
.L02048a74:
    ldr r0, [sp, #504]
.L02048a78:
    orr r2, r2, r3, lsl #16
.L02048a7c:
    mov r3, r2, asr #31
.L02048a80:
    mul r1, r3, r1
.L02048a84:
    mul r0, r3, r0
.L02048a88:
    ldr r4, [sp, #504]
.L02048a8c:
    ldr lr, [sp, #492]
.L02048a90:
    ldr ip, [sp, #508]
.L02048a94:
    mla lr, r2, lr, r1
.L02048a98:
    mla ip, r2, ip, r0
.L02048a9c:
    umull r0, r1, r4, r2
.L02048aa0:
    ldr r5, [sp, #488]
.L02048aa4:
    add r1, ip, r1
.L02048aa8:
    umull r8, r9, r5, r2
.L02048aac:
    mov r2, r0, lsr #16
.L02048ab0:
    orr r2, r2, r1, lsl #16
.L02048ab4:
    mov r6, r2
.L02048ab8:
    mov r7, r6, asr #31
.L02048abc:
    add sl, sp, #576
.L02048ac0:
    stmia sl, {r6, r7}
.L02048ac4:
    add r9, lr, r9
.L02048ac8:
    ldr lr, [sp, #544]
.L02048acc:
    mov r8, r8, lsr #16
.L02048ad0:
    mov r3, r7
.L02048ad4:
    ldr ip, [sp, #568]
.L02048ad8:
    mul r7, lr, r7
.L02048adc:
    orr r8, r8, r9, lsl #16
.L02048ae0:
    mov r9, r8, asr #31
.L02048ae4:
    ldr fp, [sp, #560]
.L02048ae8:
    mul ip, r9, ip
.L02048aec:
    ldr r2, [sp, #552]
.L02048af0:
    ldr r0, [sp, #552]
.L02048af4:
    umull r4, r5, lr, r6
.L02048af8:
    mul r3, fp, r3
.L02048afc:
    str r7, [sp, #16]
.L02048b00:
    mul r0, r9, r0
.L02048b04:
    umull r6, r7, r2, r8
.L02048b08:
    ldr r2, [sp, #572]
.L02048b0c:
    ldr sl, [sp, #576]
.L02048b10:
    mla r2, r8, r2, ip
.L02048b14:
    ldr lr, [sp, #560]
.L02048b18:
    ldr fp, [sp, #564]
.L02048b1c:
    str r0, [sp, #268]
.L02048b20:
    mla fp, sl, fp, r3
.L02048b24:
    umull r0, r1, lr, sl
.L02048b28:
    ldr sl, [sp, #568]
.L02048b2c:
    str r2, [sp, #28]
.L02048b30:
    ldr lr, [sp, #576]
.L02048b34:
    umull r2, r3, sl, r8
.L02048b38:
    ldr ip, [sp, #548]
.L02048b3c:
    ldr sl, [sp, #16]
.L02048b40:
    add r1, fp, r1
.L02048b44:
    mla ip, lr, ip, sl
.L02048b48:
    ldr sl, [sp, #28]
.L02048b4c:
    mov r0, r0, lsr #16
.L02048b50:
    add r3, sl, r3
.L02048b54:
    mov r2, r2, lsr #16
.L02048b58:
    str ip, [sp, #20]
.L02048b5c:
    ldr lr, [sp, #556]
.L02048b60:
    ldr ip, [sp, #268]
.L02048b64:
    orr r0, r0, r1, lsl #16
.L02048b68:
    orr r2, r2, r3, lsl #16
.L02048b6c:
    ldr r1, [sp, #704]
.L02048b70:
    rsb r0, r2, r0
.L02048b74:
    mov r2, r0
.L02048b78:
    mov r3, r2, asr #31
.L02048b7c:
    mla lr, r8, lr, ip
.L02048b80:
    ldr fp, [sp, #20]
.L02048b84:
    mul r1, r9, r1
.L02048b88:
    ldr ip, [sp, #704]
.L02048b8c:
    ldr r0, [sp, #580]
.L02048b90:
    add r5, fp, r5
.L02048b94:
    mul r0, ip, r0
.L02048b98:
    ldr fp, [sp, #708]
.L02048b9c:
    ldr sl, [sp, #708]
.L02048ba0:
    mla fp, r8, fp, r1
.L02048ba4:
    ldr r1, [sp, #576]
.L02048ba8:
    ldr ip, [sp, #712]
.L02048bac:
    mla sl, r1, sl, r0
.L02048bb0:
    mul ip, r3, ip
.L02048bb4:
    str sl, [sp, #288]
.L02048bb8:
    ldr sl, [sp, #716]
.L02048bbc:
    add r7, lr, r7
.L02048bc0:
    mov r4, r4, lsr #16
.L02048bc4:
    mov r6, r6, lsr #16
.L02048bc8:
    mla sl, r2, sl, ip
.L02048bcc:
    orr r4, r4, r5, lsl #16
.L02048bd0:
    orr r6, r6, r7, lsl #16
.L02048bd4:
    rsb r4, r6, r4
.L02048bd8:
    mov r6, r4
.L02048bdc:
    mov r7, r6, asr #31
.L02048be0:
    ldr r5, [sp, #720]
.L02048be4:
    ldr r4, [sp, #580]
.L02048be8:
    ldr lr, [sp, #720]
.L02048bec:
    mul r4, r5, r4
.L02048bf0:
    ldr r5, [sp, #728]
.L02048bf4:
    str sl, [sp, #284]
.L02048bf8:
    ldr sl, [sp, #712]
.L02048bfc:
    mul lr, r9, lr
.L02048c00:
    umull r0, r1, sl, r2
.L02048c04:
    ldr ip, [sp, #724]
.L02048c08:
    add sl, sp, #272
.L02048c0c:
    stmia sl, {r0, r1}
.L02048c10:
    mla ip, r8, ip, lr
.L02048c14:
    mul r5, r7, r5
.L02048c18:
    ldr lr, [sp, #576]
.L02048c1c:
    ldr r2, [sp, #728]
.L02048c20:
    ldr sl, [sp, #724]
.L02048c24:
    umull r0, r1, r2, r6
.L02048c28:
    mla sl, lr, sl, r4
.L02048c2c:
    ldr lr, [sp, #732]
.L02048c30:
    ldr r4, [sp, #704]
.L02048c34:
    mla lr, r6, lr, r5
.L02048c38:
    ldr r6, [sp, #720]
.L02048c3c:
    ldr r5, [sp, #576]
.L02048c40:
    ldr r9, [sp, #576]
.L02048c44:
    add r2, sp, #256
.L02048c48:
    stmia r2, {r0, r1}
.L02048c4c:
    umull r2, r3, r4, r8
.L02048c50:
    umull r0, r1, r4, r5
.L02048c54:
    umull r4, r5, r6, r8
.L02048c58:
    mov r8, r6
.L02048c5c:
    umull r6, r7, r8, r9
.L02048c60:
    ldr r8, [sp, #476]
.L02048c64:
    ldr r9, [sp, #288]
.L02048c68:
    add r8, r8, #1
.L02048c6c:
    str r8, [sp, #476]
.L02048c70:
    add r3, fp, r3
.L02048c74:
    ldr r8, [sp, #276]
.L02048c78:
    ldr fp, [sp, #284]
.L02048c7c:
    add r1, r9, r1
.L02048c80:
    ldr r9, [sp, #260]
.L02048c84:
    add fp, fp, r8
.L02048c88:
    str fp, [sp, #276]
.L02048c8c:
    add r5, ip, r5
.L02048c90:
    add r7, sl, r7
.L02048c94:
    ldr ip, [sp, #272]
.L02048c98:
    ldr sl, [sp, #80]
.L02048c9c:
    add lr, lr, r9
.L02048ca0:
    ldr fp, [sp, #476]
.L02048ca4:
    str lr, [sp, #260]
.L02048ca8:
    ldr lr, [sp, #276]
.L02048cac:
    cmp sl, fp
.L02048cb0:
    mov sl, ip, lsr #16
.L02048cb4:
    ldr ip, [sp, #256]
.L02048cb8:
    orr sl, sl, lr, lsl #16
.L02048cbc:
    ldr lr, [sp, #260]
.L02048cc0:
    mov r8, ip, lsr #16
.L02048cc4:
    orr r8, r8, lr, lsl #16
.L02048cc8:
    ldr ip, [sp, #460]
.L02048ccc:
    ldr lr, [sp, #696]
.L02048cd0:
    mov r0, r0, lsr #16
.L02048cd4:
    str lr, [ip]
.L02048cd8:
    ldr lr, [sp, #672]
.L02048cdc:
    orr r0, r0, r1, lsl #16
.L02048ce0:
    ldr ip, [sp, #676]
.L02048ce4:
    rsb lr, r0, lr
.L02048ce8:
    mov r2, r2, lsr #16
.L02048cec:
    ldr r0, [sp, #680]
.L02048cf0:
    orr r2, r2, r3, lsl #16
.L02048cf4:
    rsb ip, r2, ip
.L02048cf8:
    rsb r0, sl, r0
.L02048cfc:
    mov r4, r4, lsr #16
.L02048d00:
    mov r6, r6, lsr #16
.L02048d04:
    str ip, [sp, #676]
.L02048d08:
    str lr, [sp, #672]
.L02048d0c:
    str r0, [sp, #680]
.L02048d10:
    ldr r1, [sp, #688]
.L02048d14:
    ldr r2, [sp, #684]
.L02048d18:
    ldr r3, [sp, #692]
.L02048d1c:
    orr r4, r4, r5, lsl #16
.L02048d20:
    orr r6, r6, r7, lsl #16
.L02048d24:
    add r1, r1, r4
.L02048d28:
    add r2, r2, r6
.L02048d2c:
    add r3, r3, r8
.L02048d30:
    str r1, [sp, #688]
.L02048d34:
    str r2, [sp, #684]
.L02048d38:
    str r3, [sp, #692]
.L02048d3c:
    bgt .L020484ac
.L02048d40:
    ldr r4, [sp, #80]
.L02048d44:
    ldr r5, [sp, #444]
.L02048d48:
    ldr sl, [sp, #452]
.L02048d4c:
    ldr r6, [sp, #676]
.L02048d50:
    ldr r7, [sp, #672]
.L02048d54:
    ldr r9, [sp, #680]
.L02048d58:
    ldr r8, [sp, #448]
.L02048d5c:
    ldr fp, [sp, #688]
.L02048d60:
    ldr ip, [sp, #684]
.L02048d64:
    ldr r0, [sp, #692]
.L02048d68:
    ldr lr, [sp, #456]
.L02048d6c:
    cmp r4, #0
.L02048d70:
    stmia r5, {r6, r7}
.L02048d74:
    str r9, [r8]
.L02048d78:
    stmia sl, {fp, ip}
.L02048d7c:
    str r0, [lr]
.L02048d80:
    ble .L020496a8
.L02048d84:
    ldr r2, [sp, #512]
.L02048d88:
    add r4, sp, #736
.L02048d8c:
    mov r3, r2, asr #31
.L02048d90:
    stmia r4, {r2, r3}
.L02048d94:
    ldr r4, [sp, #496]
.L02048d98:
    add r6, sp, #752
.L02048d9c:
    mov r5, r4, asr #31
.L02048da0:
    stmdb r6, {r4, r5}
.L02048da4:
    ldr r6, [sp, #656]
.L02048da8:
    add r8, sp, #752
.L02048dac:
    mov r7, r6, asr #31
.L02048db0:
    stmia r8, {r6, r7}
.L02048db4:
    ldr r8, [sp, #660]
.L02048db8:
    add sl, sp, #768
.L02048dbc:
    mov r9, r8, asr #31
.L02048dc0:
    ldr r0, [sp, #668]
.L02048dc4:
    stmdb sl, {r8, r9}
.L02048dc8:
    ldr sl, [sp, #664]
.L02048dcc:
    mov r1, r0, asr #31
.L02048dd0:
    add r2, sp, #784
.L02048dd4:
    stmdb r2, {r0, r1}
.L02048dd8:
    mov fp, sl, asr #31
.L02048ddc:
    add ip, sp, #768
.L02048de0:
    ldr r2, [sp, #468]
.L02048de4:
    ldr r3, [sp, #468]
.L02048de8:
    ldr r4, [sp, #472]
.L02048dec:
    ldr r5, [sp, #472]
.L02048df0:
    ldr r6, [sp, #48]
.L02048df4:
    stmia ip, {sl, fp}
.L02048df8:
    mov r1, #0
.L02048dfc:
    add r2, r2, #28
.L02048e00:
    add r3, r3, #12
.L02048e04:
    add r4, r4, #28
.L02048e08:
    add r5, r5, #12
.L02048e0c:
    str r1, [sp, #484]
.L02048e10:
    str r2, [sp, #64]
.L02048e14:
    str r3, [sp, #72]
.L02048e18:
    str r4, [sp, #68]
.L02048e1c:
    str r5, [sp, #76]
.L02048e20:
    str r6, [sp, #52]
.L02048e24:
    ldr r7, [sp, #472]
.L02048e28:
    ldr r8, [sp, #52]
.L02048e2c:
    ldr r9, [sp, #68]
.L02048e30:
    ldr sl, [sp, #76]
.L02048e34:
    ldr r0, [r7, #28]
.L02048e38:
    ldr r3, [r8, #8]
.L02048e3c:
    ldr ip, [sp, #52]
.L02048e40:
    ldr r1, [r9, #4]
.L02048e44:
    ldr fp, [sp, #468]
.L02048e48:
    ldr r6, [sp, #64]
.L02048e4c:
    ldr r8, [r8, #12]
.L02048e50:
    ldr lr, [sl, #8]
.L02048e54:
    rsb r3, r0, r3
.L02048e58:
    ldr ip, [ip]
.L02048e5c:
    ldr r4, [sl, #4]
.L02048e60:
    ldr r5, [sl, #12]
.L02048e64:
    ldr r0, [fp, #28]
.L02048e68:
    ldr r2, [r7, #12]
.L02048e6c:
    mov sl, r3
.L02048e70:
    mov fp, sl, asr #31
.L02048e74:
    ldr r7, [sp, #52]
.L02048e78:
    rsb r8, r1, r8
.L02048e7c:
    ldr r1, [r6, #4]
.L02048e80:
    add r6, sp, #608
.L02048e84:
    stmdb r6, {sl, fp}
.L02048e88:
    str ip, [sp, #36]
.L02048e8c:
    mov sl, lr
.L02048e90:
    mov fp, sl, asr #31
.L02048e94:
    ldr ip, [r7, #4]
.L02048e98:
    strd sl, [sp, #152]
.L02048e9c:
    mov sl, r5
.L02048ea0:
    mov fp, sl, asr #31
.L02048ea4:
    ldr r5, [sp, #36]
.L02048ea8:
    mov r6, r4
.L02048eac:
    mov r7, r6, asr #31
.L02048eb0:
    rsb r4, r0, r5
.L02048eb4:
    rsb r5, r1, ip
.L02048eb8:
    ldr ip, [sp, #604]
.L02048ebc:
    mov r3, r2, asr #31
.L02048ec0:
    mul ip, r2, ip
.L02048ec4:
    ldr lr, [sp, #72]
.L02048ec8:
    strd sl, [sp, #128]
.L02048ecc:
    ldr fp, [sp, #468]
.L02048ed0:
    strd r6, [sp, #144]
.L02048ed4:
    ldr sl, [fp, #12]
.L02048ed8:
    ldr r6, [lr, #8]
.L02048edc:
    ldr r7, [lr, #4]
.L02048ee0:
    ldr fp, [lr, #12]
.L02048ee4:
    str ip, [sp, #20]
.L02048ee8:
    ldr r1, [sp, #600]
.L02048eec:
    ldr r0, [sp, #148]
.L02048ef0:
    ldr ip, [sp, #132]
.L02048ef4:
    mov r9, r8, asr #31
.L02048ef8:
    mul ip, r8, ip
.L02048efc:
    mul r0, r1, r0
.L02048f00:
    str ip, [sp, #124]
.L02048f04:
    str r0, [sp, #140]
.L02048f08:
    add ip, sp, #592
.L02048f0c:
    mov r0, r4
.L02048f10:
    mov r1, r0, asr #31
.L02048f14:
    stmia ip, {r0, r1}
.L02048f18:
    add r4, sp, #592
.L02048f1c:
    mov r0, r5
.L02048f20:
    mov r1, r0, asr #31
.L02048f24:
    stmdb r4, {r0, r1}
.L02048f28:
    mov r4, r6
.L02048f2c:
    mov r5, r4, asr #31
.L02048f30:
    mov r0, sl
.L02048f34:
    mov r1, r0, asr #31
.L02048f38:
    strd r4, [sp, #224]
.L02048f3c:
    mov r4, fp
.L02048f40:
    mov r5, r4, asr #31
.L02048f44:
    strd r4, [sp, #184]
.L02048f48:
    strd r0, [sp, #248]
.L02048f4c:
    ldr fp, [sp, #592]
.L02048f50:
    mov r0, r7
.L02048f54:
    mov r1, r0, asr #31
.L02048f58:
    strd r0, [sp, #208]
.L02048f5c:
    ldr ip, [sp, #188]
.L02048f60:
    ldr r0, [sp, #584]
.L02048f64:
    mul r1, fp, r1
.L02048f68:
    mul ip, r0, ip
.L02048f6c:
    str r1, [sp, #204]
.L02048f70:
    ldr r1, [sp, #600]
.L02048f74:
    str ip, [sp, #176]
.L02048f78:
    ldr ip, [sp, #20]
.L02048f7c:
    ldr r6, [sp, #248]
.L02048f80:
    ldr sl, [sp, #224]
.L02048f84:
    ldr r5, [sp, #596]
.L02048f88:
    ldr r7, [sp, #588]
.L02048f8c:
    mov fp, r1
.L02048f90:
    mla fp, r3, fp, ip
.L02048f94:
    ldr lr, [sp, #152]
.L02048f98:
    mul r5, r6, r5
.L02048f9c:
    mul r7, sl, r7
.L02048fa0:
    mul lr, r9, lr
.L02048fa4:
    ldr r4, [sp, #144]
.L02048fa8:
    ldr sl, [sp, #128]
.L02048fac:
    ldr ip, [sp, #152]
.L02048fb0:
    str fp, [sp, #164]
.L02048fb4:
    ldr fp, [sp, #156]
.L02048fb8:
    str r5, [sp, #28]
.L02048fbc:
    str r7, [sp, #216]
.L02048fc0:
    umull r6, r7, r1, r4
.L02048fc4:
    umull r4, r5, r8, sl
.L02048fc8:
    mov sl, r1
.L02048fcc:
    umull r0, r1, r2, sl
.L02048fd0:
    mla fp, r8, fp, lr
.L02048fd4:
    umull r2, r3, ip, r8
.L02048fd8:
    ldr sl, [sp, #144]
.L02048fdc:
    ldr ip, [sp, #140]
.L02048fe0:
    ldr lr, [sp, #604]
.L02048fe4:
    add r3, fp, r3
.L02048fe8:
    mla lr, sl, lr, ip
.L02048fec:
    str lr, [sp, #20]
.L02048ff0:
    ldr sl, [sp, #128]
.L02048ff4:
    ldr lr, [sp, #124]
.L02048ff8:
    ldr ip, [sp, #208]
.L02048ffc:
    mla lr, sl, r9, lr
.L02049000:
    ldr sl, [sp, #592]
.L02049004:
    str lr, [sp, #16]
.L02049008:
    umull r8, r9, sl, ip
.L0204900c:
    ldr sl, [sp, #584]
.L02049010:
    ldr ip, [sp, #184]
.L02049014:
    strd r8, [sp, #192]
.L02049018:
    umull r8, r9, sl, ip
.L0204901c:
    strd r8, [sp, #168]
.L02049020:
    ldr r8, [sp, #592]
.L02049024:
    ldr r9, [sp, #28]
.L02049028:
    ldr sl, [sp, #248]
.L0204902c:
    ldr lr, [sp, #252]
.L02049030:
    mov ip, r8
.L02049034:
    mla lr, r8, lr, r9
.L02049038:
    umull r8, r9, sl, ip
.L0204903c:
    str lr, [sp, #244]
.L02049040:
    strd r8, [sp, #232]
.L02049044:
    ldr lr, [sp, #228]
.L02049048:
    ldr r8, [sp, #584]
.L0204904c:
    ldr r9, [sp, #216]
.L02049050:
    ldr sl, [sp, #224]
.L02049054:
    mla lr, r8, lr, r9
.L02049058:
    mov ip, r8
.L0204905c:
    umull r8, r9, sl, ip
.L02049060:
    str lr, [sp, #220]
.L02049064:
    ldr sl, [sp, #208]
.L02049068:
    ldr ip, [sp, #204]
.L0204906c:
    ldr lr, [sp, #596]
.L02049070:
    ldr fp, [sp, #20]
.L02049074:
    mla lr, sl, lr, ip
.L02049078:
    ldr sl, [sp, #184]
.L0204907c:
    ldr ip, [sp, #176]
.L02049080:
    str lr, [sp, #28]
.L02049084:
    ldr lr, [sp, #588]
.L02049088:
    add r7, fp, r7
.L0204908c:
    mla lr, sl, lr, ip
.L02049090:
    ldr sl, [sp, #164]
.L02049094:
    ldr ip, [sp, #16]
.L02049098:
    str lr, [sp, #180]
.L0204909c:
    ldr lr, [sp, #456]
.L020490a0:
    add r1, sl, r1
.L020490a4:
    add r5, ip, r5
.L020490a8:
    mov r0, r0, lsr #16
.L020490ac:
    mov r2, r2, lsr #16
.L020490b0:
    mov r6, r6, lsr #16
.L020490b4:
    mov r4, r4, lsr #16
.L020490b8:
    ldr lr, [lr]
.L020490bc:
    orr r2, r2, r3, lsl #16
.L020490c0:
    orr r0, r0, r1, lsl #16
.L020490c4:
    orr r6, r6, r7, lsl #16
.L020490c8:
    orr r4, r4, r5, lsl #16
.L020490cc:
    add r0, r0, r2
.L020490d0:
    ldr r1, [sp, #448]
.L020490d4:
    add r6, r6, r4
.L020490d8:
    mov r4, r6
.L020490dc:
    mov r5, r4, asr #31
.L020490e0:
    mov sl, r0
.L020490e4:
    mov fp, sl, asr #31
.L020490e8:
    str lr, [sp, #44]
.L020490ec:
    add r7, sp, #624
.L020490f0:
    add ip, sp, #608
.L020490f4:
    ldr lr, [r1]
.L020490f8:
    ldr r3, [sp, #44]
.L020490fc:
    stmdb r7, {r4, r5}
.L02049100:
    stmia ip, {sl, fp}
.L02049104:
    ldr r7, [sp, #28]
.L02049108:
    ldr sl, [sp, #196]
.L0204910c:
    ldr ip, [sp, #172]
.L02049110:
    add sl, r7, sl
.L02049114:
    ldr fp, [sp, #180]
.L02049118:
    ldr r1, [sp, #44]
.L0204911c:
    ldr r5, [sp, #236]
.L02049120:
    ldr r4, [sp, #244]
.L02049124:
    str sl, [sp, #196]
.L02049128:
    ldr sl, [sp, #192]
.L0204912c:
    mov r0, r1
.L02049130:
    mov r1, r0, asr #31
.L02049134:
    add ip, fp, ip
.L02049138:
    ldr fp, [sp, #196]
.L0204913c:
    strd r0, [sp, #112]
.L02049140:
    add r5, r4, r5
.L02049144:
    ldr r6, [sp, #220]
.L02049148:
    str ip, [sp, #172]
.L0204914c:
    ldr r0, [sp, #232]
.L02049150:
    mov r4, sl, lsr #16
.L02049154:
    ldr sl, [sp, #168]
.L02049158:
    orr r4, r4, fp, lsl #16
.L0204915c:
    ldr fp, [sp, #172]
.L02049160:
    add r9, r6, r9
.L02049164:
    mov r8, r8, lsr #16
.L02049168:
    mov r6, r0, lsr #16
.L0204916c:
    mov r0, sl, lsr #16
.L02049170:
    orr r6, r6, r5, lsl #16
.L02049174:
    orr r0, r0, fp, lsl #16
.L02049178:
    orr r8, r8, r9, lsl #16
.L0204917c:
    add ip, r4, r0
.L02049180:
    add r8, r6, r8
.L02049184:
    ldr r0, [sp, #112]
.L02049188:
    ldr r6, [sp, #620]
.L0204918c:
    ldr r7, [sp, #612]
.L02049190:
    rsb r2, r3, #0
.L02049194:
    mov r3, r2, asr #31
.L02049198:
    mul r6, r2, r6
.L0204919c:
    mul r7, r0, r7
.L020491a0:
    mov sl, ip
.L020491a4:
    mov fp, sl, asr #31
.L020491a8:
    add r0, sp, #640
.L020491ac:
    stmdb r0, {sl, fp}
.L020491b0:
    add ip, sp, #624
.L020491b4:
    mov sl, r8
.L020491b8:
    mov fp, sl, asr #31
.L020491bc:
    stmia ip, {sl, fp}
.L020491c0:
    mov r8, lr
.L020491c4:
    mov r9, r8, asr #31
.L020491c8:
    rsb r4, lr, #0
.L020491cc:
    mov lr, fp
.L020491d0:
    ldr fp, [sp, #616]
.L020491d4:
    ldr ip, [sp, #636]
.L020491d8:
    mla fp, r3, fp, r6
.L020491dc:
    ldr r6, [sp, #616]
.L020491e0:
    str r5, [sp, #236]
.L020491e4:
    umull r0, r1, r2, r6
.L020491e8:
    mov r5, r4, asr #31
.L020491ec:
    ldr r2, [sp, #608]
.L020491f0:
    ldr sl, [sp, #116]
.L020491f4:
    mul ip, r4, ip
.L020491f8:
    ldr r6, [sp, #112]
.L020491fc:
    mla sl, r2, sl, r7
.L02049200:
    mov r7, r2
.L02049204:
    umull r2, r3, r6, r7
.L02049208:
    ldr r6, [sp, #632]
.L0204920c:
    mul lr, r8, lr
.L02049210:
    mla r6, r5, r6, ip
.L02049214:
    ldr ip, [sp, #632]
.L02049218:
    str r6, [sp, #108]
.L0204921c:
    umull r6, r7, r4, ip
.L02049220:
    ldr r4, [sp, #624]
.L02049224:
    add r3, sl, r3
.L02049228:
    mla r4, r9, r4, lr
.L0204922c:
    str r4, [sp, #104]
.L02049230:
    ldr lr, [sp, #452]
.L02049234:
    ldr ip, [sp, #624]
.L02049238:
    ldr sl, [sp, #444]
.L0204923c:
    umull r4, r5, r8, ip
.L02049240:
    add r1, fp, r1
.L02049244:
    ldr r8, [lr]
.L02049248:
    mov r0, r0, lsr #16
.L0204924c:
    ldr ip, [sl]
.L02049250:
    orr r0, r0, r1, lsl #16
.L02049254:
    add r8, r8, r0
.L02049258:
    ldr r9, [lr, #4]
.L0204925c:
    rsb r8, ip, r8
.L02049260:
    mov r2, r2, lsr #16
.L02049264:
    ldr ip, [sp, #104]
.L02049268:
    ldr lr, [sl, #4]
.L0204926c:
    ldr fp, [sp, #108]
.L02049270:
    orr r2, r2, r3, lsl #16
.L02049274:
    add r3, r9, r2
.L02049278:
    add r5, ip, r5
.L0204927c:
    mov r4, r4, lsr #16
.L02049280:
    rsb r3, lr, r3
.L02049284:
    add r7, fp, r7
.L02049288:
    orr r4, r4, r5, lsl #16
.L0204928c:
    mov r6, r6, lsr #16
.L02049290:
    rsb r1, r4, r3
.L02049294:
    orr r6, r6, r7, lsl #16
.L02049298:
    rsb r8, r6, r8
.L0204929c:
    mov r6, r1
.L020492a0:
    mov r7, r6, asr #31
.L020492a4:
    ldr r1, [sp, #748]
.L020492a8:
    ldr r3, [sp, #740]
.L020492ac:
    mul r1, r6, r1
.L020492b0:
    mov r9, r8, asr #31
.L020492b4:
    mul r3, r8, r3
.L020492b8:
    ldr r0, [sp, #744]
.L020492bc:
    ldr lr, [sp, #736]
.L020492c0:
    mla r0, r7, r0, r1
.L020492c4:
    ldr ip, [sp, #736]
.L020492c8:
    ldr r1, [sp, #744]
.L020492cc:
    mla ip, r9, ip, r3
.L020492d0:
    umull r4, r5, r8, lr
.L020492d4:
    umull r2, r3, r6, r1
.L020492d8:
    ldr r6, [sp, #440]
.L020492dc:
    ldr r7, [sp, #52]
.L020492e0:
    ldr r1, [r6, #4]
.L020492e4:
    add r5, ip, r5
.L020492e8:
    add r3, r0, r3
.L020492ec:
    ldr ip, [r7, #32]
.L020492f0:
    mov r4, r4, lsr #16
.L020492f4:
    mov r2, r2, lsr #16
.L020492f8:
    orr r4, r4, r5, lsl #16
.L020492fc:
    orr r2, r2, r3, lsl #16
.L02049300:
    mov r1, r1, asr #7
.L02049304:
    add r4, r4, r2
.L02049308:
    smull r2, r3, r1, ip
.L0204930c:
    ldr r8, [sp, #48]
.L02049310:
    mov r2, r2, lsr #16
.L02049314:
    ldr r6, [r8, #116]
.L02049318:
    ldr r7, [r7, #16]
.L0204931c:
    orr r2, r2, r3, lsl #16
.L02049320:
    rsb r4, r4, #0
.L02049324:
    smull r0, r1, r4, r2
.L02049328:
    smull r2, r3, r7, r6
.L0204932c:
    ldr r9, [sp, #52]
.L02049330:
    mov r0, r0, lsr #16
.L02049334:
    ldr lr, [r9, #20]
.L02049338:
    orr r0, r0, r1, lsl #16
.L0204933c:
    mov r2, r2, lsr #16
.L02049340:
    orr r2, r2, r3, lsl #16
.L02049344:
    add lr, lr, r0
.L02049348:
    cmp r2, lr
.L0204934c:
    rsb ip, r2, #0
.L02049350:
    str ip, [sp, #796]
.L02049354:
    str r2, [sp, #800]
.L02049358:
    str lr, [sp, #792]
.L0204935c:
    addgt r2, sp, #792
.L02049360:
    addle r2, sp, #800
.L02049364:
    ldr r2, [r2]
.L02049368:
    ldr r3, [sp, #796]
.L0204936c:
    str r2, [sp, #804]
.L02049370:
    cmp r2, r3
.L02049374:
    addlt r0, sp, #796
.L02049378:
    addge r0, sp, #804
.L0204937c:
    ldr r0, [r0]
.L02049380:
    ldr sl, [sp, #52]
.L02049384:
    ldr fp, [sp, #440]
.L02049388:
    str r0, [sp, #700]
.L0204938c:
    ldr r1, [fp]
.L02049390:
    ldr r0, [sl, #20]
.L02049394:
    ldr ip, [sp, #700]
.L02049398:
    mov r1, r1, lsl #7
.L0204939c:
    rsb r0, r0, ip
.L020493a0:
    smull r2, r3, r1, r0
.L020493a4:
    mov r2, r2, lsr #16
.L020493a8:
    ldr r1, [sp, #740]
.L020493ac:
    ldr r0, [sp, #744]
.L020493b0:
    orr r2, r2, r3, lsl #16
.L020493b4:
    mov r3, r2, asr #31
.L020493b8:
    mul r1, r2, r1
.L020493bc:
    mul r0, r3, r0
.L020493c0:
    ldr r4, [sp, #744]
.L020493c4:
    ldr r6, [sp, #736]
.L020493c8:
    ldr lr, [sp, #736]
.L020493cc:
    ldr ip, [sp, #748]
.L020493d0:
    mla lr, r3, lr, r1
.L020493d4:
    mla ip, r2, ip, r0
.L020493d8:
    umull r0, r1, r4, r2
.L020493dc:
    umull r4, r5, r2, r6
.L020493e0:
    add r5, lr, r5
.L020493e4:
    mov r2, r4, lsr #16
.L020493e8:
    orr r2, r2, r5, lsl #16
.L020493ec:
    mov r8, r2
.L020493f0:
    mov r9, r8, asr #31
.L020493f4:
    add sl, sp, #656
.L020493f8:
    stmdb sl, {r8, r9}
.L020493fc:
    add r1, ip, r1
.L02049400:
    ldr r5, [sp, #632]
.L02049404:
    mov r6, r0, lsr #16
.L02049408:
    orr r6, r6, r1, lsl #16
.L0204940c:
    mov ip, r9
.L02049410:
    mov r0, r6
.L02049414:
    mov r1, r0, asr #31
.L02049418:
    ldr r4, [sp, #624]
.L0204941c:
    mul ip, r5, ip
.L02049420:
    mov r3, r1
.L02049424:
    mul r3, r4, r3
.L02049428:
    add r2, sp, #640
.L0204942c:
    ldr lr, [sp, #636]
.L02049430:
    stmia r2, {r0, r1}
.L02049434:
    ldr r7, [sp, #640]
.L02049438:
    mla lr, r8, lr, ip
.L0204943c:
    ldr r6, [sp, #624]
.L02049440:
    ldr r8, [sp, #648]
.L02049444:
    ldr r4, [sp, #628]
.L02049448:
    ldr sl, [sp, #608]
.L0204944c:
    mla r4, r0, r4, r3
.L02049450:
    umull r0, r1, r6, r7
.L02049454:
    umull r2, r3, r5, r8
.L02049458:
    ldr r9, [sp, #644]
.L0204945c:
    add r1, r4, r1
.L02049460:
    add r3, lr, r3
.L02049464:
    ldr r5, [sp, #756]
.L02049468:
    mov r0, r0, lsr #16
.L0204946c:
    mov r2, r2, lsr #16
.L02049470:
    mul r9, sl, r9
.L02049474:
    ldr r6, [sp, #756]
.L02049478:
    orr r0, r0, r1, lsl #16
.L0204947c:
    orr r2, r2, r3, lsl #16
.L02049480:
    mul r5, r8, r5
.L02049484:
    rsb r0, r2, r0
.L02049488:
    mov r2, r0
.L0204948c:
    mov r3, r2, asr #31
.L02049490:
    mul r6, r7, r6
.L02049494:
    strd r2, [sp, #96]
.L02049498:
    ldr sl, [sp, #652]
.L0204949c:
    ldr r3, [sp, #752]
.L020494a0:
    str r9, [sp, #20]
.L020494a4:
    ldr ip, [sp, #616]
.L020494a8:
    ldr fp, [sp, #652]
.L020494ac:
    ldr r9, [sp, #644]
.L020494b0:
    mla sl, r3, sl, r5
.L020494b4:
    mov r5, r3
.L020494b8:
    mla r9, r3, r9, r6
.L020494bc:
    umull r0, r1, r7, r5
.L020494c0:
    umull r2, r3, r8, r5
.L020494c4:
    mov r6, r7
.L020494c8:
    mul fp, ip, fp
.L020494cc:
    ldr r8, [sp, #96]
.L020494d0:
    ldr r7, [sp, #764]
.L020494d4:
    str fp, [sp, #16]
.L020494d8:
    mul r7, r8, r7
.L020494dc:
    ldr fp, [sp, #608]
.L020494e0:
    ldr r8, [sp, #648]
.L020494e4:
    ldr lr, [sp, #616]
.L020494e8:
    umull r4, r5, fp, r6
.L020494ec:
    mov ip, r6
.L020494f0:
    str r7, [sp, #4]
.L020494f4:
    ldr fp, [sp, #612]
.L020494f8:
    umull r6, r7, lr, r8
.L020494fc:
    ldr lr, [sp, #20]
.L02049500:
    add r1, r9, r1
.L02049504:
    mla fp, ip, fp, lr
.L02049508:
    ldr lr, [sp, #16]
.L0204950c:
    ldr ip, [sp, #620]
.L02049510:
    add r3, sl, r3
.L02049514:
    mla ip, r8, ip, lr
.L02049518:
    ldr r8, [sp, #444]
.L0204951c:
    str ip, [sp, #84]
.L02049520:
    ldr r8, [r8]
.L02049524:
    mov r2, r2, lsr #16
.L02049528:
    str r8, [sp, #12]
.L0204952c:
    ldr r8, [sp, #760]
.L02049530:
    ldr r9, [sp, #4]
.L02049534:
    ldr lr, [sp, #100]
.L02049538:
    ldr ip, [sp, #444]
.L0204953c:
    mla lr, r8, lr, r9
.L02049540:
    ldr ip, [ip, #4]
.L02049544:
    ldr sl, [sp, #96]
.L02049548:
    str ip, [sp, #8]
.L0204954c:
    mov ip, r8
.L02049550:
    umull r8, r9, sl, ip
.L02049554:
    str lr, [sp, #92]
.L02049558:
    ldr ip, [sp, #644]
.L0204955c:
    ldr lr, [sp, #768]
.L02049560:
    ldr sl, [sp, #652]
.L02049564:
    mul ip, lr, ip
.L02049568:
    mul sl, lr, sl
.L0204956c:
    ldr lr, [sp, #12]
.L02049570:
    orr r2, r2, r3, lsl #16
.L02049574:
    ldr r3, [sp, #84]
.L02049578:
    str ip, [sp, #88]
.L0204957c:
    mov r0, r0, lsr #16
.L02049580:
    rsb ip, r2, lr
.L02049584:
    ldr r2, [sp, #8]
.L02049588:
    orr r0, r0, r1, lsl #16
.L0204958c:
    add r5, fp, r5
.L02049590:
    add r7, r3, r7
.L02049594:
    ldr fp, [sp, #444]
.L02049598:
    mov r4, r4, lsr #16
.L0204959c:
    mov r6, r6, lsr #16
.L020495a0:
    rsb lr, r0, r2
.L020495a4:
    orr r4, r4, r5, lsl #16
.L020495a8:
    orr r6, r6, r7, lsl #16
.L020495ac:
    stmia fp, {ip, lr}
.L020495b0:
    ldr r0, [sp, #648]
.L020495b4:
    ldr lr, [sp, #92]
.L020495b8:
    rsb r4, r6, r4
.L020495bc:
    ldr fp, [sp, #772]
.L020495c0:
    mov r6, r4
.L020495c4:
    mov r7, r6, asr #31
.L020495c8:
    ldr ip, [sp, #448]
.L020495cc:
    ldr r4, [sp, #768]
.L020495d0:
    mla fp, r0, fp, sl
.L020495d4:
    add r9, lr, r9
.L020495d8:
    ldr r1, [sp, #640]
.L020495dc:
    ldr r2, [sp, #88]
.L020495e0:
    ldr lr, [sp, #640]
.L020495e4:
    ldr sl, [sp, #772]
.L020495e8:
    ldr r3, [ip]
.L020495ec:
    mov r5, r0
.L020495f0:
    mov ip, r4
.L020495f4:
    mla sl, r1, sl, r2
.L020495f8:
    mov r8, r8, lsr #16
.L020495fc:
    umull r0, r1, r4, r5
.L02049600:
    ldr r2, [sp, #776]
.L02049604:
    umull r4, r5, ip, lr
.L02049608:
    orr r8, r8, r9, lsl #16
.L0204960c:
    rsb r3, r8, r3
.L02049610:
    mul r2, r7, r2
.L02049614:
    ldr r8, [sp, #448]
.L02049618:
    ldr r9, [sp, #452]
.L0204961c:
    str r3, [r8]
.L02049620:
    add r5, sl, r5
.L02049624:
    ldr r8, [sp, #780]
.L02049628:
    ldr sl, [sp, #776]
.L0204962c:
    add r1, fp, r1
.L02049630:
    ldr ip, [r9]
.L02049634:
    mov r0, r0, lsr #16
.L02049638:
    orr r0, r0, r1, lsl #16
.L0204963c:
    ldr lr, [r9, #4]
.L02049640:
    mla r8, r6, r8, r2
.L02049644:
    mov r4, r4, lsr #16
.L02049648:
    umull r2, r3, sl, r6
.L0204964c:
    add ip, ip, r0
.L02049650:
    orr r4, r4, r5, lsl #16
.L02049654:
    str ip, [r9]
.L02049658:
    add lr, lr, r4
.L0204965c:
    ldr fp, [sp, #456]
.L02049660:
    str lr, [r9, #4]
.L02049664:
    ldr r1, [fp]
.L02049668:
    add r3, r8, r3
.L0204966c:
    mov r2, r2, lsr #16
.L02049670:
    orr r2, r2, r3, lsl #16
.L02049674:
    ldr ip, [sp, #484]
.L02049678:
    add r1, r1, r2
.L0204967c:
    ldr r0, [sp, #52]
.L02049680:
    str r1, [fp]
.L02049684:
    ldr lr, [sp, #80]
.L02049688:
    ldr r1, [sp, #700]
.L0204968c:
    add ip, ip, #1
.L02049690:
    str r1, [r0, #20]
.L02049694:
    cmp lr, ip
.L02049698:
    add r0, r0, #48
.L0204969c:
    str ip, [sp, #484]
.L020496a0:
    str r0, [sp, #52]
.L020496a4:
    bgt .L02048e24
.L020496a8:
    ldr r2, [sp, #440]
.L020496ac:
    ldr r4, [sp, #464]
.L020496b0:
    ldr r5, [sp, #48]
.L020496b4:
    ldr r3, [r2, #20]
.L020496b8:
    add r4, r4, #1
.L020496bc:
    add r5, r5, #128
.L020496c0:
    cmp r3, r4
.L020496c4:
    str r4, [sp, #464]
.L020496c8:
    str r5, [sp, #48]
.L020496cc:
    bgt .L020482d8
.L020496d0:
    add sp, sp, #812
.L020496d4:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.size _ZN15b2ContactSolver24SolveVelocityConstraintsEv, .-_ZN15b2ContactSolver24SolveVelocityConstraintsEv
