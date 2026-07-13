/* Reconstructed mnemonic source for pngtrans.o. */
.syntax unified
.arch armv5te

.type onebppswaptable, %object
.type twobppswaptable, %object
.type fourbppswaptable, %object
.global png_set_bgr
.type png_set_bgr, %function
.global png_set_swap
.type png_set_swap, %function
.global png_set_packing
.type png_set_packing, %function
.global png_set_packswap
.type png_set_packswap, %function
.global png_set_shift
.type png_set_shift, %function
.global png_set_interlace_handling
.type png_set_interlace_handling, %function
.global png_set_filler
.type png_set_filler, %function
.global png_set_add_alpha
.type png_set_add_alpha, %function
.global png_set_swap_alpha
.type png_set_swap_alpha, %function
.global png_set_invert_alpha
.type png_set_invert_alpha, %function
.global png_set_invert_mono
.type png_set_invert_mono, %function
.global png_do_invert
.type png_do_invert, %function
.global png_do_swap
.type png_do_swap, %function
.global png_do_packswap
.type png_do_packswap, %function
.global png_do_strip_filler
.type png_do_strip_filler, %function
.global png_do_bgr
.type png_do_bgr, %function
.global png_set_user_transform_info
.type png_set_user_transform_info, %function
.global png_get_user_transform_ptr
.type png_get_user_transform_ptr, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_set_bgr:
    ldr r3, [r0, #140]
    orr r3, r3, #1
    str r3, [r0, #140]
    bx lr
png_set_swap:
    ldrb r3, [r0, #323]
    cmp r3, #16
    ldreq r3, [r0, #140]
    orreq r3, r3, #16
    streq r3, [r0, #140]
    bx lr
png_set_packing:
    ldrb r3, [r0, #323]
    cmp r3, #7
    ldrls r3, [r0, #140]
    movls r2, #8
    orrls r3, r3, #4
    strlsb r2, [r0, #324]
    strls r3, [r0, #140]
    bx lr
png_set_packswap:
    ldrb r3, [r0, #323]
    cmp r3, #7
    ldrls r3, [r0, #140]
    orrls r3, r3, #65536
    strls r3, [r0, #140]
    bx lr
png_set_shift:
    str lr, [sp, #-4]!
    ldr r3, [r0, #140]
    mov r2, r0
    orr r3, r3, #8
    add r0, r0, #412
    str r3, [r2, #140]
    sub sp, sp, #4
    mov r2, #5
    add r0, r0, #1
.Lsec01_00000084:
    bl memcpy
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_set_interlace_handling:
    ldrb r3, [r0, #319]
    cmp r3, #0
    mov r3, #1
    ldrne r3, [r0, #140]
    orrne r3, r3, #2
    strne r3, [r0, #140]
    movne r3, #7
    mov r0, r3
    bx lr
png_set_filler:
    ldr r3, [pc, #92]
    mov ip, r0
    and r1, r1, #255
    strh r1, [ip, r3]
    ldr r3, [ip, #136]
    cmp r2, #1
    orr r2, r3, #128
    bic r3, r3, #128
    strne r3, [ip, #136]
    ldrb r3, [ip, #322]
    streq r2, [ip, #136]
    cmp r3, #2
    addeq r3, r3, #2
    ldr r0, [r0, #140]
    streqb r3, [ip, #327]
    ldrb r3, [ip, #322]
    orr r0, r0, #32768
    cmp r3, #0
    str r0, [ip, #140]
    bxne lr
    ldrb r3, [ip, #323]
    cmp r3, #7
    movhi r3, #2
    strhib r3, [ip, #327]
    bx lr
    .long 0x0000014a
.arm
png_set_add_alpha:
    stmdb sp!, {r4, lr}
    mov r4, r0
.Lsec01_00000128:
    bl png_set_filler
    ldr r3, [r4, #140]
    orr r3, r3, #16777216
    str r3, [r4, #140]
    ldmia sp!, {r4, lr}
    bx lr
png_set_swap_alpha:
    ldr r3, [r0, #140]
    orr r3, r3, #131072
    str r3, [r0, #140]
    bx lr
png_set_invert_alpha:
    ldr r3, [r0, #140]
    orr r3, r3, #524288
    str r3, [r0, #140]
    bx lr
png_set_invert_mono:
    ldr r3, [r0, #140]
    orr r3, r3, #32
    str r3, [r0, #140]
    bx lr
png_do_invert:
    ldrb r3, [r0, #8]
    cmp r3, #0
    ldreq r0, [r0, #4]
    moveq r2, r3
    beq .Lsec01_00000198
    b .Lsec01_000001a4
.Lsec01_00000188:
    ldrb r3, [r2, r1]
    mvn r3, r3
    strb r3, [r2, r1]
    add r2, r2, #1
.Lsec01_00000198:
    cmp r2, r0
    bne .Lsec01_00000188
    bx lr
.Lsec01_000001a4:
    ldrh r2, [r0, #8]
    ldr r3, [pc, #112]
    cmp r2, r3
    ldreq r0, [r0, #4]
    moveq r2, #0
    beq .Lsec01_000001d0
    b .Lsec01_000001dc
.Lsec01_000001c0:
    ldrb r3, [r2, r1]
    mvn r3, r3
    strb r3, [r2, r1]
    add r2, r2, #2
.Lsec01_000001d0:
    cmp r2, r0
    bcc .Lsec01_000001c0
    bx lr
.Lsec01_000001dc:
    ldr r3, [pc, #64]
    cmp r2, r3
    ldreq r0, [r0, #4]
    moveq ip, r1
    bxne lr
    b .Lsec01_00000210
.Lsec01_000001f4:
    ldrb r3, [ip]
    ldrb r2, [ip, #1]
    mvn r3, r3
    mvn r2, r2
    strb r3, [ip]
    strb r2, [ip, #1]
    add ip, ip, #4
.Lsec01_00000210:
    rsb r3, r1, ip
    cmp r3, r0
    bcc .Lsec01_000001f4
    bx lr
    .long 0x00000804
    .long 0x00001004
.arm
png_do_swap:
    ldrb r3, [r0, #9]
    cmp r3, #16
    bxne lr
    ldr r2, [r0]
    ldrb r3, [r0, #10]
    mul r0, r2, r3
    mov ip, #0
    b .Lsec01_00000258
.Lsec01_00000248:
    ldrb r3, [r1, #-2]
    ldrb r2, [r1, #-1]
    strb r3, [r1, #-1]
    strb r2, [r1, #-2]
.Lsec01_00000258:
    cmp ip, r0
    add r1, r1, #2
    add ip, ip, #1
    bne .Lsec01_00000248
    bx lr
png_do_packswap:
    ldrb r2, [r0, #9]
    cmp r2, #7
    bxhi lr
    ldr r3, [r0, #4]
    cmp r2, #1
    add r0, r1, r3
    ldreq r2, [pc, #52]
    beq .Lsec01_000002b4
    cmp r2, #2
    ldreq r2, [pc, #44]
    beq .Lsec01_000002b4
    cmp r2, #4
    ldreq r2, [pc, #36]
    bxne lr
    b .Lsec01_000002b4
.Lsec01_000002a8:
    ldrb r3, [r1]
    ldrb r3, [r2, r3]
    strb r3, [r1], #1
.Lsec01_000002b4:
    cmp r1, r0
    bcc .Lsec01_000002a8
    bx lr
    .long .Lsec03_00000000
    .long .Lsec03_00000100
    .long .Lsec03_00000200
.arm
png_do_strip_filler:
    ldrb ip, [r0, #8]
    cmp ip, #2
    stmdb sp!, {r4, lr}
    mov r4, r2
    ldr r2, [r0]
    beq .Lsec01_000002f4
    cmp ip, #6
    bne .Lsec01_0000045c
    tst r4, #4194304
    beq .Lsec01_00000570
.Lsec01_000002f4:
    ldrb r3, [r0, #10]
    cmp r3, #4
    bne .Lsec01_0000045c
    ldrb r3, [r0, #9]
    cmp r3, #8
    and r3, r4, #128
    bne .Lsec01_00000398
    cmp r3, #0
    moveq lr, r3
    moveq ip, r1
    movne ip, r1
    movne lr, #1
    bne .Lsec01_0000034c
    b .Lsec01_00000378
.Lsec01_0000032c:
    ldrb r3, [r1, #4]
    strb r3, [ip, #3]
    ldrb r3, [r1, #5]
    strb r3, [ip, #4]
    ldrb r3, [r1, #6]
    add r1, r1, #4
    strb r3, [ip, #5]
    add ip, ip, #3
.Lsec01_0000034c:
    cmp lr, r2
    add lr, lr, #1
    bcc .Lsec01_0000032c
    b .Lsec01_00000388
.Lsec01_0000035c:
    ldrb r3, [ip, #1]
    strb r3, [r1, #-3]
    ldrb r3, [ip, #2]
    strb r3, [r1, #-2]
    ldrb r3, [ip, #3]
    strb r3, [r1, #-1]
    add ip, ip, #4
.Lsec01_00000378:
    cmp lr, r2
    add r1, r1, #3
    add lr, lr, #1
    bne .Lsec01_0000035c
.Lsec01_00000388:
    mov r3, #3
    mul r2, r3, r2
    add r3, r3, #21
    b .Lsec01_0000044c
.Lsec01_00000398:
    cmp r3, #0
    moveq lr, r3
    moveq ip, r1
    movne ip, r1
    movne lr, #1
    bne .Lsec01_000003ec
    b .Lsec01_00000430
.Lsec01_000003b4:
    ldrb r3, [r1, #8]
    strb r3, [ip, #6]
    ldrb r3, [r1, #9]
    strb r3, [ip, #7]
    ldrb r3, [r1, #10]
    strb r3, [ip, #8]
    ldrb r3, [r1, #11]
    strb r3, [ip, #9]
    ldrb r3, [r1, #12]
    strb r3, [ip, #10]
    ldrb r3, [r1, #13]
    add r1, r1, #8
    strb r3, [ip, #11]
    add ip, ip, #6
.Lsec01_000003ec:
    cmp lr, r2
    add lr, lr, #1
    bcc .Lsec01_000003b4
    b .Lsec01_00000440
.Lsec01_000003fc:
    ldrb r3, [ip, #2]
    strb r3, [r1, #-6]
    ldrb r3, [ip, #3]
    strb r3, [r1, #-5]
    ldrb r3, [ip, #4]
    strb r3, [r1, #-4]
    ldrb r3, [ip, #5]
    strb r3, [r1, #-3]
    ldrb r3, [ip, #6]
    strb r3, [r1, #-2]
    ldrb r3, [ip, #7]
    strb r3, [r1, #-1]
    add ip, ip, #8
.Lsec01_00000430:
    cmp lr, r2
    add r1, r1, #6
    add lr, lr, #1
    bne .Lsec01_000003fc
.Lsec01_00000440:
    mov r3, #6
    mul r2, r3, r2
    add r3, r3, #42
.Lsec01_0000044c:
    strb r3, [r0, #11]
    mov r3, #3
    str r2, [r0, #4]
    b .Lsec01_0000055c
.Lsec01_0000045c:
    cmp ip, #0
    beq .Lsec01_00000474
    cmp ip, #4
    bne .Lsec01_00000560
    tst r4, #4194304
    beq .Lsec01_00000570
.Lsec01_00000474:
    ldrb r3, [r0, #10]
    cmp r3, #2
    bne .Lsec01_00000560
    ldrb r3, [r0, #9]
    cmp r3, #8
    and r3, r4, #128
    bne .Lsec01_000004e0
    cmp r3, #0
    moveq lr, r3
    moveq ip, r1
    movne ip, #0
    bne .Lsec01_000004b4
    b .Lsec01_000004d0
.Lsec01_000004a8:
    ldrb r3, [r1, ip, lsl #1]
    strb r3, [ip, r1]
    add ip, ip, #1
.Lsec01_000004b4:
    cmp ip, r2
    bne .Lsec01_000004a8
    b .Lsec01_000004d8
.Lsec01_000004c0:
    ldrb r3, [ip, #1]
    add ip, ip, #2
    strb r3, [lr, r1]
    add lr, lr, #1
.Lsec01_000004d0:
    cmp lr, r2
    bne .Lsec01_000004c0
.Lsec01_000004d8:
    mov r3, #8
    b .Lsec01_00000550
.Lsec01_000004e0:
    cmp r3, #0
    moveq lr, r3
    moveq ip, r1
    movne ip, r1
    movne lr, #1
    bne .Lsec01_00000514
    b .Lsec01_00000538
.Lsec01_000004fc:
    ldrb r3, [ip, #4]
    strb r3, [r1, #2]
    ldrb r3, [ip, #5]
    add ip, ip, #4
    strb r3, [r1, #3]
    add r1, r1, #2
.Lsec01_00000514:
    cmp lr, r2
    add lr, lr, #1
    bcc .Lsec01_000004fc
    b .Lsec01_00000548
.Lsec01_00000524:
    ldrb r3, [ip, #2]
    strb r3, [r1, #-2]
    ldrb r3, [ip, #3]
    strb r3, [r1, #-1]
    add ip, ip, #4
.Lsec01_00000538:
    cmp lr, r2
    add r1, r1, #2
    add lr, lr, #1
    bne .Lsec01_00000524
.Lsec01_00000548:
    mov r2, r2, lsl #1
    mov r3, #16
.Lsec01_00000550:
    str r2, [r0, #4]
    strb r3, [r0, #11]
    mov r3, #1
.Lsec01_0000055c:
    strb r3, [r0, #10]
.Lsec01_00000560:
    tst r4, #4194304
    ldrneb r3, [r0, #8]
    bicne r3, r3, #4
    strneb r3, [r0, #8]
.Lsec01_00000570:
    ldmia sp!, {r4, lr}
    bx lr
png_do_bgr:
    stmdb sp!, {r4, lr}
    ldrb r3, [r0, #8]
    tst r3, #2
    beq .Lsec01_00000694
    ldrb r2, [r0, #9]
    cmp r2, #8
    ldr r4, [r0]
    bne .Lsec01_00000600
    cmp r3, #2
    moveq r0, #0
    beq .Lsec01_000005b8
    b .Lsec01_000005cc
.Lsec01_000005a8:
    ldrb r3, [r1, #-3]
    ldrb r2, [r1, #-1]
    strb r3, [r1, #-1]
    strb r2, [r1, #-3]
.Lsec01_000005b8:
    cmp r0, r4
    add r1, r1, #3
    add r0, r0, #1
    bne .Lsec01_000005a8
    b .Lsec01_00000694
.Lsec01_000005cc:
    cmp r3, #6
    moveq r0, #0
    beq .Lsec01_000005ec
    b .Lsec01_00000694
.Lsec01_000005dc:
    ldrb r3, [r1, #-4]
    ldrb r2, [r1, #-2]
    strb r3, [r1, #-2]
    strb r2, [r1, #-4]
.Lsec01_000005ec:
    cmp r0, r4
    add r1, r1, #4
    add r0, r0, #1
    bne .Lsec01_000005dc
    b .Lsec01_00000694
.Lsec01_00000600:
    cmp r2, #16
    bne .Lsec01_00000694
    cmp r3, #2
    moveq ip, r1
    moveq lr, #0
    beq .Lsec01_0000063c
    b .Lsec01_00000650
.Lsec01_0000061c:
    ldrb r1, [ip, #-6]
    ldrb r3, [ip, #-2]
    ldrb r0, [ip, #-5]
    ldrb r2, [ip, #-1]
    strb r3, [ip, #-6]
    strb r1, [ip, #-2]
    strb r2, [ip, #-5]
    strb r0, [ip, #-1]
.Lsec01_0000063c:
    cmp lr, r4
    add ip, ip, #6
    add lr, lr, #1
    bne .Lsec01_0000061c
    b .Lsec01_00000694
.Lsec01_00000650:
    cmp r3, #6
    moveq ip, r1
    moveq lr, #0
    beq .Lsec01_00000684
    b .Lsec01_00000694
.Lsec01_00000664:
    ldrb r1, [ip, #-8]
    ldrb r3, [ip, #-4]
    ldrb r0, [ip, #-7]
    ldrb r2, [ip, #-3]
    strb r3, [ip, #-8]
    strb r1, [ip, #-4]
    strb r2, [ip, #-7]
    strb r0, [ip, #-3]
.Lsec01_00000684:
    cmp lr, r4
    add ip, ip, #8
    add lr, lr, #1
    bne .Lsec01_00000664
.Lsec01_00000694:
    ldmia sp!, {r4, lr}
    bx lr
png_set_user_transform_info:
    strb r3, [r0, #129]
    str r1, [r0, #124]
    strb r2, [r0, #128]
    bx lr
png_get_user_transform_ptr:
    ldr r0, [r0, #124]
    bx lr

.section .data,"aw",%progbits
.balign 1
onebppswaptable:
.Lsec03_00000000:
    .long 0xc0408000
    .long 0xe060a020
    .long 0xd0509010
    .long 0xf070b030
    .long 0xc8488808
    .long 0xe868a828
    .long 0xd8589818
    .long 0xf878b838
    .long 0xc4448404
    .long 0xe464a424
    .long 0xd4549414
    .long 0xf474b434
    .long 0xcc4c8c0c
    .long 0xec6cac2c
    .long 0xdc5c9c1c
    .long 0xfc7cbc3c
    .long 0xc2428202
    .long 0xe262a222
    .long 0xd2529212
    .long 0xf272b232
    .long 0xca4a8a0a
    .long 0xea6aaa2a
    .long 0xda5a9a1a
    .long 0xfa7aba3a
    .long 0xc6468606
    .long 0xe666a626
    .long 0xd6569616
    .long 0xf676b636
    .long 0xce4e8e0e
    .long 0xee6eae2e
    .long 0xde5e9e1e
    .long 0xfe7ebe3e
    .long 0xc1418101
    .long 0xe161a121
    .long 0xd1519111
    .long 0xf171b131
    .long 0xc9498909
    .long 0xe969a929
    .long 0xd9599919
    .long 0xf979b939
    .long 0xc5458505
    .long 0xe565a525
    .long 0xd5559515
    .long 0xf575b535
    .long 0xcd4d8d0d
    .long 0xed6dad2d
    .long 0xdd5d9d1d
    .long 0xfd7dbd3d
    .long 0xc3438303
    .long 0xe363a323
    .long 0xd3539313
    .long 0xf373b333
    .long 0xcb4b8b0b
    .long 0xeb6bab2b
    .long 0xdb5b9b1b
    .long 0xfb7bbb3b
    .long 0xc7478707
    .long 0xe767a727
    .long 0xd7579717
    .long 0xf777b737
    .long 0xcf4f8f0f
    .long 0xef6faf2f
    .long 0xdf5f9f1f
    .long 0xff7fbf3f
twobppswaptable:
.Lsec03_00000100:
    .long 0xc0804000
    .long 0xd0905010
    .long 0xe0a06020
    .long 0xf0b07030
    .long 0xc4844404
    .long 0xd4945414
    .long 0xe4a46424
    .long 0xf4b47434
    .long 0xc8884808
    .long 0xd8985818
    .long 0xe8a86828
    .long 0xf8b87838
    .long 0xcc8c4c0c
    .long 0xdc9c5c1c
    .long 0xecac6c2c
    .long 0xfcbc7c3c
    .long 0xc1814101
    .long 0xd1915111
    .long 0xe1a16121
    .long 0xf1b17131
    .long 0xc5854505
    .long 0xd5955515
    .long 0xe5a56525
    .long 0xf5b57535
    .long 0xc9894909
    .long 0xd9995919
    .long 0xe9a96929
    .long 0xf9b97939
    .long 0xcd8d4d0d
    .long 0xdd9d5d1d
    .long 0xedad6d2d
    .long 0xfdbd7d3d
    .long 0xc2824202
    .long 0xd2925212
    .long 0xe2a26222
    .long 0xf2b27232
    .long 0xc6864606
    .long 0xd6965616
    .long 0xe6a66626
    .long 0xf6b67636
    .long 0xca8a4a0a
    .long 0xda9a5a1a
    .long 0xeaaa6a2a
    .long 0xfaba7a3a
    .long 0xce8e4e0e
    .long 0xde9e5e1e
    .long 0xeeae6e2e
    .long 0xfebe7e3e
    .long 0xc3834303
    .long 0xd3935313
    .long 0xe3a36323
    .long 0xf3b37333
    .long 0xc7874707
    .long 0xd7975717
    .long 0xe7a76727
    .long 0xf7b77737
    .long 0xcb8b4b0b
    .long 0xdb9b5b1b
    .long 0xebab6b2b
    .long 0xfbbb7b3b
    .long 0xcf8f4f0f
    .long 0xdf9f5f1f
    .long 0xefaf6f2f
    .long 0xffbf7f3f
fourbppswaptable:
.Lsec03_00000200:
    .long 0x30201000
    .long 0x70605040
    .long 0xb0a09080
    .long 0xf0e0d0c0
    .long 0x31211101
    .long 0x71615141
    .long 0xb1a19181
    .long 0xf1e1d1c1
    .long 0x32221202
    .long 0x72625242
    .long 0xb2a29282
    .long 0xf2e2d2c2
    .long 0x33231303
    .long 0x73635343
    .long 0xb3a39383
    .long 0xf3e3d3c3
    .long 0x34241404
    .long 0x74645444
    .long 0xb4a49484
    .long 0xf4e4d4c4
    .long 0x35251505
    .long 0x75655545
    .long 0xb5a59585
    .long 0xf5e5d5c5
    .long 0x36261606
    .long 0x76665646
    .long 0xb6a69686
    .long 0xf6e6d6c6
    .long 0x37271707
    .long 0x77675747
    .long 0xb7a79787
    .long 0xf7e7d7c7
    .long 0x38281808
    .long 0x78685848
    .long 0xb8a89888
    .long 0xf8e8d8c8
    .long 0x39291909
    .long 0x79695949
    .long 0xb9a99989
    .long 0xf9e9d9c9
    .long 0x3a2a1a0a
    .long 0x7a6a5a4a
    .long 0xbaaa9a8a
    .long 0xfaeadaca
    .long 0x3b2b1b0b
    .long 0x7b6b5b4b
    .long 0xbbab9b8b
    .long 0xfbebdbcb
    .long 0x3c2c1c0c
    .long 0x7c6c5c4c
    .long 0xbcac9c8c
    .long 0xfcecdccc
    .long 0x3d2d1d0d
    .long 0x7d6d5d4d
    .long 0xbdad9d8d
    .long 0xfdedddcd
    .long 0x3e2e1e0e
    .long 0x7e6e5e4e
    .long 0xbeae9e8e
    .long 0xfeeedece
    .long 0x3f2f1f0f
    .long 0x7f6f5f4f
    .long 0xbfaf9f8f
    .long 0xffefdfcf

.section .bss,"aw",%nobits
.balign 1

.size onebppswaptable, 256
.size twobppswaptable, 256
.size fourbppswaptable, 256
.size png_set_bgr, 16
.size png_set_swap, 24
.size png_set_packing, 32
.size png_set_packswap, 24
.size png_set_shift, 52
.size png_set_interlace_handling, 36
.size png_set_filler, 104
.size png_set_add_alpha, 32
.size png_set_swap_alpha, 16
.size png_set_invert_alpha, 16
.size png_set_invert_mono, 16
.size png_do_invert, 184
.size png_do_swap, 68
.size png_do_packswap, 96
.size png_do_strip_filler, 684
.size png_do_bgr, 292
.size png_set_user_transform_info, 16
.size png_get_user_transform_ptr, 8

.section .note.GNU-stack,"",%progbits
