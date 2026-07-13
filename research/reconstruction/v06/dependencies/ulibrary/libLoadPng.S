.syntax unified
.arch armv5te
.arm
.section .text,"ax",%progbits
.align 2

.global ulPngFlushFn
.type ulPngFlushFn, %function
ulPngFlushFn:
    bx lr
.size ulPngFlushFn, .-ulPngFlushFn

.global ulLoadImagePNG
.type ulLoadImagePNG, %function
ulLoadImagePNG:
.L0206121c:
    mov	ip, sp
.L02061220:
    stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
.L02061224:
    sub	fp, ip, #4
.L02061228:
    sub	sp, sp, #100
.L0206122c:
    ldrh	r3, [r0, #4]
.L02061230:
    str	r0, [fp, #-124]
.L02061234:
    str	sp, [fp, #-104]
.L02061238:
    ldr	r0, [pc, #2124]
.L0206123c:
    sub	sp, sp, #16
.L02061240:
    add	r4, sp, #8
.L02061244:
    ldr	ip, [r0, r3, lsl #2]
.L02061248:
    str	r1, [fp, #-128]
.L0206124c:
    str	r2, [fp, #-132]
.L02061250:
    mov	r0, r4
.L02061254:
    mov	r1, #1
.L02061258:
    mov	r2, #8
.L0206125c:
    ldr	r3, [fp, #-124]
.L02061260:
    mov	lr, pc
.L02061264:
    ldr	pc, [ip, #8]
.L02061268:
    cmp	r0, #0
.L0206126c:
    beq .L02061a74
.L02061270:
    mov	r0, r4
.L02061274:
    mov	r1, #8
.L02061278:
    bl png_check_sig
.L0206127c:
    cmp	r0, #0
.L02061280:
    beq .L02061a74
.L02061284:
    mov	r1, #0
.L02061288:
    ldr	r0, [pc, #2048]
.L0206128c:
    mov	r2, r1
.L02061290:
    mov	r3, r1
.L02061294:
    bl png_create_read_struct
.L02061298:
    cmp	r0, #0
.L0206129c:
    str	r0, [fp, #-48]
.L020612a0:
    beq .L02061a74
.L020612a4:
    bl png_create_info_struct
.L020612a8:
    cmp	r0, #0
.L020612ac:
    mov	r4, r0
.L020612b0:
    str	r0, [fp, #-52]
.L020612b4:
    bne .L020612cc
.L020612b8:
    sub	r0, fp, #48
.L020612bc:
    mov	r1, r4
.L020612c0:
    mov	r2, r4
.L020612c4:
    bl png_destroy_read_struct
.L020612c8:
    b .L02061a6c
.L020612cc:
    ldr	r0, [fp, #-48]
.L020612d0:
    bl setjmp
.L020612d4:
    subs	r4, r0, #0
.L020612d8:
    beq .L020612f8
.L020612dc:
    mov	r1, #0
.L020612e0:
    sub	r0, fp, #48
.L020612e4:
    mov	r2, r1
.L020612e8:
    bl png_destroy_read_struct
.L020612ec:
    mov	r0, #0
.L020612f0:
    str	r0, [fp, #-100]
.L020612f4:
    b .L02061a7c
.L020612f8:
    ldr	r2, [pc, #1940]
.L020612fc:
    ldr	r1, [fp, #-124]
.L02061300:
    ldr	r0, [fp, #-48]
.L02061304:
    bl png_set_read_fn
.L02061308:
    ldr	r0, [fp, #-48]
.L0206130c:
    mov	r1, #8
.L02061310:
    bl png_set_sig_bytes
.L02061314:
    mov	r3, r4
.L02061318:
    ldr	r1, [fp, #-52]
.L0206131c:
    mov	r2, #133
.L02061320:
    ldr	r0, [fp, #-48]
.L02061324:
    bl png_read_png
.L02061328:
    ldr	r3, [fp, #-52]
.L0206132c:
    ldr	r2, [fp, #-132]
.L02061330:
    ldr	ip, [r3, #248]
.L02061334:
    cmp	r2, #6
.L02061338:
    cmpne	r2, #1
.L0206133c:
    str	ip, [fp, #-92]
.L02061340:
    ldrb	r7, [r3, #24]
.L02061344:
    ldr	r5, [r3]
.L02061348:
    ldr	r4, [r3, #4]
.L0206134c:
    ldrb	r3, [r3, #25]
.L02061350:
    movne	r1, #0
.L02061354:
    moveq	r1, #1
.L02061358:
    str	r3, [fp, #-120]
.L0206135c:
    strne	r1, [fp, #-84]
.L02061360:
    strne	r1, [fp, #-80]
.L02061364:
    bne .L02061380
.L02061368:
    mov	r3, r5, lsl #2
.L0206136c:
    mul	r0, r3, r4
.L02061370:
    bl malloc
.L02061374:
    str	r0, [fp, #-80]
.L02061378:
    mov	r0, #1
.L0206137c:
    str	r0, [fp, #-84]
.L02061380:
    ldr	r3, [fp, #-52]
.L02061384:
    ldrh	r3, [r3, #20]
.L02061388:
    cmp	r3, #0
.L0206138c:
    bne .L020613a8
.L02061390:
    ldr	r3, [pc, #1792]
.L02061394:
    ldr	r1, [fp, #-132]
.L02061398:
    ldr	r3, [r3, r1, lsl #2]
.L0206139c:
    cmp	r3, #8
.L020613a0:
    movle	r9, #7
.L020613a4:
    ble .L020613ac
.L020613a8:
    ldr	r9, [fp, #-132]
.L020613ac:
    str	r5, [fp, #-116]
.L020613b0:
    mov	r5, #0
.L020613b4:
    str	r4, [fp, #-112]
.L020613b8:
    str	r5, [sp]
.L020613bc:
    mov	r2, r5
.L020613c0:
    ldr	r0, [fp, #-116]
.L020613c4:
    ldr	r1, [fp, #-112]
.L020613c8:
    mov	r3, r9
.L020613cc:
    bl ulCreateImage
.L020613d0:
    subs	r2, r0, #0
.L020613d4:
    str	r2, [fp, #-100]
.L020613d8:
    beq .L020619e0
.L020613dc:
    ldr	r3, [pc, #1716]
.L020613e0:
    ldr	r3, [r3, r9, lsl #2]
.L020613e4:
    cmp	r3, #8
.L020613e8:
    bgt .L02061630
.L020613ec:
    ldr	r3, [pc, #1704]
.L020613f0:
    mov	ip, #1
.L020613f4:
    ldrb	r3, [r3, r9]
.L020613f8:
    mov	r1, r5
.L020613fc:
    mov	ip, ip, lsl r3
.L02061400:
    ldr	r3, [fp, #-52]
.L02061404:
    ldrh	r2, [r3, #20]
.L02061408:
    add	r2, r2, #1
.L0206140c:
    cmp	ip, r2
.L02061410:
    movlt	r2, ip
.L02061414:
    bl ulCreateImagePalette
.L02061418:
    ldr	ip, [fp, #-100]
.L0206141c:
    ldr	r3, [ip, #52]
.L02061420:
    cmp	r3, r5
.L02061424:
    beq .L02061630
.L02061428:
    ldr	r0, [fp, #-52]
.L0206142c:
    ldr	r3, [pc, #1644]
.L02061430:
    ldrsh	r2, [ip, #46]
.L02061434:
    ldrb	r1, [r3]
.L02061438:
    ldrh	r3, [r0, #20]
.L0206143c:
    cmp	r2, r3
.L02061440:
    movge	r2, r3
.L02061444:
    cmp	r1, r5
.L02061448:
    strh	r2, [r0, #20]
.L0206144c:
    mvneq	r0, #0
.L02061450:
    streq	r0, [fp, #-56]
.L02061454:
    beq .L020614d0
.L02061458:
    ldr	r3, [pc, #1604]
.L0206145c:
    mov	lr, r5
.L02061460:
    ldrh	r6, [r3]
.L02061464:
    ldrh	r5, [r0, #20]
.L02061468:
    mvn	r1, #0
.L0206146c:
    mov	r4, r0
.L02061470:
    mov	ip, lr
.L02061474:
    str	r1, [fp, #-56]
.L02061478:
    b .L020614bc
.L0206147c:
    ldr	r2, [r4, #16]
.L02061480:
    add	r1, ip, r2
.L02061484:
    ldrb	r3, [r1, #1]
.L02061488:
    ldrb	r0, [ip, r2]
.L0206148c:
    mov	r3, r3, lsr #3
.L02061490:
    ldrb	r2, [r1, #2]
.L02061494:
    mov	r3, r3, lsl #5
.L02061498:
    mov	r2, r2, lsr #3
.L0206149c:
    orr	r3, r3, r0, lsr #3
.L020614a0:
    orr	r3, r3, r2, lsl #10
.L020614a4:
    cmp	r3, r6
.L020614a8:
    ldr	r2, [fp, #-56]
.L020614ac:
    moveq	r2, lr
.L020614b0:
    str	r2, [fp, #-56]
.L020614b4:
    add	ip, ip, #3
.L020614b8:
    add	lr, lr, #1
.L020614bc:
    cmp	lr, r5
.L020614c0:
    blt .L0206147c
.L020614c4:
    ldr	r3, [fp, #-56]
.L020614c8:
    cmn	r3, #1
.L020614cc:
    bne .L02061570
.L020614d0:
    ldr	r3, [pc, #1488]
.L020614d4:
    ldrb	r2, [r3]
.L020614d8:
    cmp	r2, #0
.L020614dc:
    bne .L02061570
.L020614e0:
    ldr	r3, [fp, #-52]
.L020614e4:
    ldr	ip, [fp, #-100]
.L020614e8:
    ldrh	r6, [r3, #20]
.L020614ec:
    ldr	r3, [ip, #52]
.L020614f0:
    mov	lr, r2
.L020614f4:
    mov	r5, r2
.L020614f8:
    mov	r4, r2
.L020614fc:
    strh	r2, [r3]
.L02061500:
    b .L02061554
.L02061504:
    ldr	r0, [fp, #-100]
.L02061508:
    ldrsh	r3, [r0, #46]
.L0206150c:
    cmp	lr, r3
.L02061510:
    bge .L0206154c
.L02061514:
    ldr	r2, [r2, #16]
.L02061518:
    ldr	r1, [r0, #52]
.L0206151c:
    add	r0, r4, r2
.L02061520:
    ldrb	r3, [r0, #1]
.L02061524:
    ldrb	ip, [r4, r2]
.L02061528:
    mov	r3, r3, lsr #3
.L0206152c:
    ldrb	r2, [r0, #2]
.L02061530:
    mov	r3, r3, lsl #5
.L02061534:
    orr	r3, r3, ip, lsr #3
.L02061538:
    mov	r2, r2, lsr #3
.L0206153c:
    orr	r3, r3, #32768
.L02061540:
    orr	r3, r3, r2, lsl #10
.L02061544:
    add	r1, r1, r5
.L02061548:
    strh	r3, [r1, #2]
.L0206154c:
    add	r5, r5, #2
.L02061550:
    add	r4, r4, #3
.L02061554:
    ldr	r2, [fp, #-52]
.L02061558:
    ldrh	r3, [r2, #20]
.L0206155c:
    cmp	lr, r3
.L02061560:
    add	lr, lr, #1
.L02061564:
    blt .L02061504
.L02061568:
    str	r6, [fp, #-56]
.L0206156c:
    b .L02061638
.L02061570:
    ldr	r5, [fp, #-56]
.L02061574:
    mov	r3, #3
.L02061578:
    mul	r5, r3, r5
.L0206157c:
    ldr	r3, [fp, #-52]
.L02061580:
    ldrh	lr, [r3, #20]
.L02061584:
    mov	r4, lr
.L02061588:
    b .L02061624
.L0206158c:
    ldr	r1, [fp, #-56]
.L02061590:
    cmp	lr, r1
.L02061594:
    bne .L020615d8
.L02061598:
    ldr	r3, [fp, #-52]
.L0206159c:
    ldr	r2, [fp, #-100]
.L020615a0:
    ldr	r1, [r3, #16]
.L020615a4:
    ldr	r0, [r2, #52]
.L020615a8:
    add	r2, r5, r1
.L020615ac:
    ldrb	r3, [r2, #1]
.L020615b0:
    ldrb	r1, [r5, r1]
.L020615b4:
    ldrb	r2, [r2, #2]
.L020615b8:
    mov	r3, r3, lsr #3
.L020615bc:
    mov	r3, r3, lsl #5
.L020615c0:
    orr	r3, r3, r1, lsr #3
.L020615c4:
    mov	r2, r2, lsr #3
.L020615c8:
    ldr	lr, [fp, #-56]
.L020615cc:
    orr	r3, r3, r2, lsl #10
.L020615d0:
    strh	r3, [r0]
.L020615d4:
    b .L02061624
.L020615d8:
    mov	r3, #3
.L020615dc:
    mul	r0, lr, r3
.L020615e0:
    ldr	r3, [fp, #-52]
.L020615e4:
    sub	r4, r4, #1
.L020615e8:
    ldr	r2, [r3, #16]
.L020615ec:
    ldr	r3, [fp, #-100]
.L020615f0:
    add	r1, r0, r2
.L020615f4:
    ldr	ip, [r3, #52]
.L020615f8:
    ldrb	r3, [r1, #1]
.L020615fc:
    ldrb	r0, [r0, r2]
.L02061600:
    mov	r3, r3, lsr #3
.L02061604:
    ldrb	r2, [r1, #2]
.L02061608:
    mov	r3, r3, lsl #5
.L0206160c:
    orr	r3, r3, r0, lsr #3
.L02061610:
    mov	r2, r2, lsr #3
.L02061614:
    orr	r3, r3, #32768
.L02061618:
    orr	r3, r3, r2, lsl #10
.L0206161c:
    mov	r2, r4, lsl #1
.L02061620:
    strh	r3, [r2, ip]
.L02061624:
    subs	lr, lr, #1
.L02061628:
    bpl .L0206158c
.L0206162c:
    b .L02061638
.L02061630:
    mvn	ip, #0
.L02061634:
    str	ip, [fp, #-56]
.L02061638:
    mov	r1, r7
.L0206163c:
    mov	r0, #8
.L02061640:
    str	r7, [fp, #-96]
.L02061644:
    bl __aeabi_uidiv
.L02061648:
    mvn	r3, #0
.L0206164c:
    mvn	r3, r3, lsl r7
.L02061650:
    ldr	r1, [fp, #-100]
.L02061654:
    mov	sl, #0
.L02061658:
    ldr	r1, [r1, #48]
.L0206165c:
    mov	r8, sl
.L02061660:
    mov	r5, r1
.L02061664:
    mov	ip, sl
.L02061668:
    mov	lr, sl
.L0206166c:
    str	r0, [fp, #-68]
.L02061670:
    str	r3, [fp, #-64]
.L02061674:
    str	r1, [fp, #-76]
.L02061678:
    str	sl, [fp, #-72]
.L0206167c:
    str	sl, [fp, #-88]
.L02061680:
    b .L020619cc
.L02061684:
    ldr	r2, [fp, #-72]
.L02061688:
    ldr	r3, [fp, #-92]
.L0206168c:
    ldr	r0, [fp, #-76]
.L02061690:
    ldr	r4, [r3, r2, lsl #2]
.L02061694:
    mov	r6, #0
.L02061698:
    str	r0, [fp, #-60]
.L0206169c:
    b .L0206198c
.L020616a0:
    ldr	r1, [fp, #-120]
.L020616a4:
    cmp	r1, #6
.L020616a8:
    ldrls	pc, [pc, r1, lsl #2]
.L020616ac:
    b .L020617b0
.L020616b0:
    .long .L020616cc
.L020616b4:
    .long .L020617b0
.L020616b8:
    .long .L0206170c
.L020616bc:
    .long .L02061750
.L020616c0:
    .long .L020616f0
.L020616c4:
    .long .L020617b0
.L020616c8:
    .long .L0206172c
.L020616cc:
    ldrb	ip, [r4], #1
.L020616d0:
    cmp	ip, #0
.L020616d4:
    streq	ip, [fp, #-88]
.L020616d8:
    moveq	sl, ip
.L020616dc:
    moveq	r8, ip
.L020616e0:
    strne	ip, [fp, #-88]
.L020616e4:
    movne	sl, ip
.L020616e8:
    bne .L02061724
.L020616ec:
    b .L020617b0
.L020616f0:
    ldrb	ip, [r4], #2
.L020616f4:
    cmp	ip, #0
.L020616f8:
    movne	r8, #255
.L020616fc:
    moveq	r8, #0
.L02061700:
    mov	sl, ip
.L02061704:
    str	ip, [fp, #-88]
.L02061708:
    b .L020617b0
.L0206170c:
    mov	r3, r4
.L02061710:
    ldrb	ip, [r3], #1
.L02061714:
    ldrb	sl, [r4, #1]
.L02061718:
    ldrb	r2, [r3, #1]
.L0206171c:
    add	r4, r3, #2
.L02061720:
    str	r2, [fp, #-88]
.L02061724:
    mov	r8, #255
.L02061728:
    b .L020617b0
.L0206172c:
    mov	r3, r4
.L02061730:
    ldrb	ip, [r3], #1
.L02061734:
    ldrb	sl, [r4, #1]
.L02061738:
    add	r2, r3, #1
.L0206173c:
    ldrb	r3, [r3, #1]
.L02061740:
    add	r4, r2, #2
.L02061744:
    str	r3, [fp, #-88]
.L02061748:
    ldrb	r8, [r2, #1]
.L0206174c:
    b .L020617b0
.L02061750:
    mov	r0, r6
.L02061754:
    ldr	r1, [fp, #-68]
.L02061758:
    bl __aeabi_idivmod
.L0206175c:
    ldr	r2, [fp, #-96]
.L02061760:
    add	r3, r1, #1
.L02061764:
    mul	r2, r3, r2
.L02061768:
    ldr	ip, [fp, #-68]
.L0206176c:
    ldrb	r0, [r4]
.L02061770:
    sub	r3, ip, #1
.L02061774:
    cmp	r1, r3
.L02061778:
    ldr	r1, [fp, #-64]
.L0206177c:
    rsb	r2, r2, #8
.L02061780:
    and	lr, r1, r0, asr r2
.L02061784:
    mov	r3, #3
.L02061788:
    mul	r1, lr, r3
.L0206178c:
    ldr	r3, [fp, #-52]
.L02061790:
    addeq	r4, r4, #1
.L02061794:
    ldr	r3, [r3, #16]
.L02061798:
    mov	r8, #255
.L0206179c:
    add	r2, r1, r3
.L020617a0:
    ldrb	r1, [r1, r3]
.L020617a4:
    str	r1, [fp, #-88]
.L020617a8:
    ldrb	sl, [r2, #1]
.L020617ac:
    ldrb	ip, [r2, #2]
.L020617b0:
    ldr	r2, [fp, #-56]
.L020617b4:
    cmp	lr, r2
.L020617b8:
    moveq	lr, #0
.L020617bc:
    beq .L020617c4
.L020617c0:
    addlt	lr, lr, #1
.L020617c4:
    ldr	r3, [pc, #724]
.L020617c8:
    ldrb	r3, [r3]
.L020617cc:
    cmp	r3, #0
.L020617d0:
    beq .L0206181c
.L020617d4:
    ldr	r2, [pc, #712]
.L020617d8:
    ldr	r0, [fp, #-88]
.L020617dc:
    ldrh	r1, [r2]
.L020617e0:
    mov	r3, r0, lsr #3
.L020617e4:
    and	r3, r3, #255
.L020617e8:
    and	r2, r1, #31
.L020617ec:
    cmp	r3, r2
.L020617f0:
    bne .L0206181c
.L020617f4:
    mov	r2, sl, lsr #3
.L020617f8:
    mov	r3, r1, lsr #5
.L020617fc:
    and	r2, r2, #255
.L02061800:
    and	r3, r3, #31
.L02061804:
    cmp	r2, r3
.L02061808:
    bne .L0206181c
.L0206180c:
    mov	r3, r1, lsr #10
.L02061810:
    and	r3, r3, #31
.L02061814:
    cmp	r3, ip, lsr #3
.L02061818:
    moveq	r8, #0
.L0206181c:
    ldr	r1, [fp, #-84]
.L02061820:
    cmp	r1, #0
.L02061824:
    beq .L02061884
.L02061828:
    ldr	r3, [fp, #-52]
.L0206182c:
    ldr	r2, [fp, #-108]
.L02061830:
    ldr	r3, [r3]
.L02061834:
    ldr	r0, [fp, #-80]
.L02061838:
    mla	r3, r2, r3, r7
.L0206183c:
    ldr	r1, [fp, #-88]
.L02061840:
    strb	r1, [r0, r3, lsl #2]
.L02061844:
    ldr	r3, [fp, #-52]
.L02061848:
    ldr	r3, [r3]
.L0206184c:
    mla	r3, r2, r3, r7
.L02061850:
    add	r3, r0, r3, lsl #2
.L02061854:
    strb	sl, [r3, #1]
.L02061858:
    ldr	r3, [fp, #-52]
.L0206185c:
    ldr	r3, [r3]
.L02061860:
    mla	r3, r2, r3, r7
.L02061864:
    add	r3, r0, r3, lsl #2
.L02061868:
    strb	ip, [r3, #2]
.L0206186c:
    ldr	r3, [fp, #-52]
.L02061870:
    ldr	r3, [r3]
.L02061874:
    mla	r3, r2, r3, r7
.L02061878:
    add	r3, r0, r3, lsl #2
.L0206187c:
    strb	r8, [r3, #3]
.L02061880:
    b .L0206197c
.L02061884:
    cmp	r9, #7
.L02061888:
    bne .L020618c4
.L0206188c:
    ldr	r2, [fp, #-88]
.L02061890:
    mov	r1, sl, lsr #3
.L02061894:
    mov	r3, r2, lsr #3
.L02061898:
    and	r3, r3, #255
.L0206189c:
    and	r1, r1, #255
.L020618a0:
    mov	r2, r8, lsr #7
.L020618a4:
    and	r2, r2, #255
.L020618a8:
    orr	r3, r3, r1, lsl #5
.L020618ac:
    orr	r3, r3, r2, lsl #15
.L020618b0:
    ldr	r0, [fp, #-60]
.L020618b4:
    mov	r2, ip, lsr #3
.L020618b8:
    orr	r3, r3, r2, lsl #10
.L020618bc:
    strh	r3, [r0]
.L020618c0:
    b .L0206197c
.L020618c4:
    cmp	r9, #8
.L020618c8:
    bne .L020618f8
.L020618cc:
    ldr	r1, [fp, #-88]
.L020618d0:
    mov	r2, sl, lsr #3
.L020618d4:
    mov	r3, r1, lsr #3
.L020618d8:
    and	r2, r2, #255
.L020618dc:
    and	r3, r3, #255
.L020618e0:
    orr	r3, r3, r2, lsl #5
.L020618e4:
    mov	r2, ip, lsr #3
.L020618e8:
    orr	r3, r3, r2, lsl #10
.L020618ec:
    ldr	r2, [fp, #-60]
.L020618f0:
    strh	r3, [r2]
.L020618f4:
    b .L0206197c
.L020618f8:
    cmp	r9, #4
.L020618fc:
    streqb	lr, [r6, r5]
.L02061900:
    beq .L0206197c
.L02061904:
    cmp	r9, #1
.L02061908:
    andeq	r3, lr, #31
.L0206190c:
    biceq	r2, r8, #31
.L02061910:
    beq .L02061924
.L02061914:
    cmp	r9, #6
.L02061918:
    bne .L02061930
.L0206191c:
    and	r3, lr, #7
.L02061920:
    bic	r2, r8, #7
.L02061924:
    orr	r3, r3, r2
.L02061928:
    strb	r3, [r6, r5]
.L0206192c:
    b .L0206197c
.L02061930:
    cmp	r9, #3
.L02061934:
    bne .L02061950
.L02061938:
    mov	r0, r6, asr #1
.L0206193c:
    and	r3, r6, #1
.L02061940:
    ldrb	r1, [r5, r0]
.L02061944:
    mov	r3, r3, lsl #2
.L02061948:
    mov	r2, #15
.L0206194c:
    b .L0206196c
.L02061950:
    cmp	r9, #2
.L02061954:
    bne .L0206197c
.L02061958:
    mov	r0, r6, asr #2
.L0206195c:
    and	r3, r6, #3
.L02061960:
    ldrb	r1, [r5, r0]
.L02061964:
    mov	r3, r3, lsl #1
.L02061968:
    mov	r2, #3
.L0206196c:
    bic	r1, r1, r2, lsl r3
.L02061970:
    and	r2, lr, r2
.L02061974:
    orr	r1, r1, r2, lsl r3
.L02061978:
    strb	r1, [r5, r0]
.L0206197c:
    ldr	r3, [fp, #-60]
.L02061980:
    add	r6, r6, #1
.L02061984:
    add	r3, r3, #2
.L02061988:
    str	r3, [fp, #-60]
.L0206198c:
    ldr	r0, [fp, #-116]
.L02061990:
    mov	r7, r6
.L02061994:
    cmp	r6, r0
.L02061998:
    bne .L020616a0
.L0206199c:
    ldr	r1, [fp, #-100]
.L020619a0:
    ldr	r3, [pc, #260]
.L020619a4:
    ldrh	r2, [r1, #34]
.L020619a8:
    ldrb	r3, [r3, r9]
.L020619ac:
    ldr	r0, [fp, #-76]
.L020619b0:
    mul	r3, r2, r3
.L020619b4:
    ldr	r1, [fp, #-72]
.L020619b8:
    add	r0, r0, r2, lsl #1
.L020619bc:
    add	r1, r1, #1
.L020619c0:
    str	r0, [fp, #-76]
.L020619c4:
    add	r5, r5, r3, lsr #3
.L020619c8:
    str	r1, [fp, #-72]
.L020619cc:
    ldr	r2, [fp, #-72]
.L020619d0:
    ldr	r3, [fp, #-112]
.L020619d4:
    str	r2, [fp, #-108]
.L020619d8:
    cmp	r2, r3
.L020619dc:
    bne .L02061684
.L020619e0:
    sub	r0, fp, #48
.L020619e4:
    sub	r1, fp, #52
.L020619e8:
    mov	r2, #0
.L020619ec:
    bl png_destroy_read_struct
.L020619f0:
    ldr	ip, [fp, #-84]
.L020619f4:
    cmp	ip, #0
.L020619f8:
    beq .L02061a20
.L020619fc:
    ldr	r3, [fp, #-132]
.L02061a00:
    ldr	r0, [fp, #-100]
.L02061a04:
    ldr	r1, [fp, #-80]
.L02061a08:
    mov	r2, #0
.L02061a0c:
    bl ulConvertImageToPalettedAlpha
.L02061a10:
    str	r0, [fp, #-100]
.L02061a14:
    ldr	r0, [fp, #-80]
.L02061a18:
    bl free
.L02061a1c:
    b .L02061a40
.L02061a20:
    ldr	r0, [fp, #-132]
.L02061a24:
    cmp	r0, r9
.L02061a28:
    beq .L02061a40
.L02061a2c:
    ldr	r0, [fp, #-100]
.L02061a30:
    ldr	r1, [fp, #-84]
.L02061a34:
    ldr	r2, [fp, #-132]
.L02061a38:
    bl ulConvertImageToPaletted
.L02061a3c:
    str	r0, [fp, #-100]
.L02061a40:
    ldr	r1, [fp, #-128]
.L02061a44:
    cmp	r1, #1
.L02061a48:
    bne .L02061a7c
.L02061a4c:
    ldr	r0, [fp, #-100]
.L02061a50:
    bl ulRealizeImage
.L02061a54:
    subs	r4, r0, #0
.L02061a58:
    bne .L02061a7c
.L02061a5c:
    ldr	r0, [pc, #76]
.L02061a60:
    bl puts
.L02061a64:
    ldr	r0, [fp, #-100]
.L02061a68:
    bl ulDeleteImage
.L02061a6c:
    str	r4, [fp, #-100]
.L02061a70:
    b .L02061a7c
.L02061a74:
    mov	r2, #0
.L02061a78:
    str	r2, [fp, #-100]
.L02061a7c:
    ldr	r0, [fp, #-100]
.L02061a80:
    ldr	sp, [fp, #-104]
.L02061a84:
    sub	sp, fp, #40
.L02061a88:
    ldmia	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, pc}
.L02061a8c:
    .long VirtualFileSources
.L02061a90:
    .long .Lpng_version
.L02061a94:
    .long ulPngReadFn
.L02061a98:
    .long ul_pixelWidth
.L02061a9c:
    .long ul_paletteSizes
.L02061aa0:
    .long ul_colorKeyEnabled
.L02061aa4:
    .long ul_colorKeyValue
.L02061aa8:
    .long ul_firstPaletteColorOpaque
.L02061aac:
    .long ul_pixelSizes
.L02061ab0:
    .long .Lrealize_fail
.size ulLoadImagePNG, .-ulLoadImagePNG

.global ulPngReadFn
.type ulPngReadFn, %function
ulPngReadFn:
    stmdb sp!, {r4, r5, lr}
    sub sp, sp, #4
    mov r4, r1
    mov r5, r2
    bl png_get_io_ptr
    ldr r2, [pc, #36]
    ldrh r1, [r0, #4]
    mov r3, r0
    ldr ip, [r2, r1, lsl #2]
    mov r0, r4
    mov r1, r5
    mov r2, #1
    mov lr, pc
    ldr pc, [ip, #8]
    add sp, sp, #4
    ldmia sp!, {r4, r5, pc}
    .long VirtualFileSources
.size ulPngReadFn, .-ulPngReadFn

.section .rodata.str1.4,"aMS",%progbits,1
.align 2
.Lpng_version:
    .asciz "1.2.8"
.align 2
.Lrealize_fail:
    .asciz "realize fail!"
.align 2

.section .note.GNU-stack,"",%progbits
