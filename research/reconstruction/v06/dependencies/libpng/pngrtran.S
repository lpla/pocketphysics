/* Reconstructed mnemonic source for pngrtran.o. */
.syntax unified
.arch armv5te

.type png_gamma_shift, %object
.global png_set_strip_16
.type png_set_strip_16, %function
.global png_set_strip_alpha
.type png_set_strip_alpha, %function
.global png_set_gamma
.type png_set_gamma, %function
.global png_set_expand
.type png_set_expand, %function
.global png_set_palette_to_rgb
.type png_set_palette_to_rgb, %function
.global png_set_gray_1_2_4_to_8
.type png_set_gray_1_2_4_to_8, %function
.global png_set_tRNS_to_alpha
.type png_set_tRNS_to_alpha, %function
.global png_set_gray_to_rgb
.type png_set_gray_to_rgb, %function
.global png_set_read_user_transform_fn
.type png_set_read_user_transform_fn, %function
.global png_read_transform_info
.type png_read_transform_info, %function
.global png_do_unpack
.type png_do_unpack, %function
.global png_do_unshift
.type png_do_unshift, %function
.global png_do_chop
.type png_do_chop, %function
.global png_do_read_swap_alpha
.type png_do_read_swap_alpha, %function
.global png_do_read_invert_alpha
.type png_do_read_invert_alpha, %function
.global png_do_read_filler
.type png_do_read_filler, %function
.global png_do_gray_to_rgb
.type png_do_gray_to_rgb, %function
.global png_do_rgb_to_gray
.type png_do_rgb_to_gray, %function
.global png_build_grayscale_palette
.type png_build_grayscale_palette, %function
.global png_do_gamma
.type png_do_gamma, %function
.global png_do_expand_palette
.type png_do_expand_palette, %function
.global png_do_expand
.type png_do_expand, %function
.global png_do_dither
.type png_do_dither, %function
.global png_build_gamma_table
.type png_build_gamma_table, %function
.global png_init_read_transformations
.type png_init_read_transformations, %function
.global png_do_background
.type png_do_background, %function
.global png_set_rgb_to_gray_fixed
.type png_set_rgb_to_gray_fixed, %function
.global png_set_rgb_to_gray
.type png_set_rgb_to_gray, %function
.global png_set_background
.type png_set_background, %function
.global png_set_crc_action
.type png_set_crc_action, %function
.global png_do_read_transformations
.type png_do_read_transformations, %function
.global png_set_dither
.type png_set_dither, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_set_strip_16:
    ldr r3, [r0, #140]
    orr r3, r3, #1024
    str r3, [r0, #140]
    bx lr
png_set_strip_alpha:
    ldr r3, [r0, #136]
    orr r3, r3, #4194304
    str r3, [r0, #136]
    bx lr
png_set_gamma:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    add r4, sp, #24
    ldmia r4, {r4, r5}
    mov r7, r2
    mov r8, r3
    mov r2, r4
    mov r3, r5
    mov r6, r0
    mov r1, r8
    mov r0, r7
.Lsec01_00000048:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #96]
.Lsec01_00000054:
    bl __aeabi_dsub
    ldr r2, [pc, #92]
    bic r1, r1, #-2147483648
    ldr r3, [pc, #88]
.Lsec01_00000064:
    bl __aeabi_dcmpgt
    cmp r0, #0
    mov r1, r5
    mov r0, r4
    bne .Lsec01_0000008c
    ldrb r3, [r6, #322]
    tst r3, #4
    bne .Lsec01_0000008c
    cmp r3, #3
    bne .Lsec01_00000098
.Lsec01_0000008c:
    ldr r3, [r6, #140]
    orr r3, r3, #8192
    str r3, [r6, #140]
.Lsec01_00000098:
    bl __aeabi_d2f
    mov r1, r8
    str r0, [r6, #376]
    mov r0, r7
.Lsec01_000000a8:
    bl __aeabi_d2f
    str r0, [r6, #380]
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long 0x3ff00000
    .long 0x9999999a
    .long 0x3fa99999
.arm
png_set_expand:
    ldr r3, [r0, #140]
    orr r3, r3, #4096
    str r3, [r0, #140]
    bx lr
png_set_palette_to_rgb:
    ldr r3, [r0, #140]
    orr r3, r3, #4096
    str r3, [r0, #140]
    bx lr
png_set_gray_1_2_4_to_8:
    ldr r3, [r0, #140]
    orr r3, r3, #4096
    str r3, [r0, #140]
    bx lr
png_set_tRNS_to_alpha:
    ldr r3, [r0, #140]
    orr r3, r3, #4096
    str r3, [r0, #140]
    bx lr
png_set_gray_to_rgb:
    ldr r3, [r0, #140]
    orr r3, r3, #16384
    str r3, [r0, #140]
    bx lr
png_set_read_user_transform_fn:
    ldr r3, [r0, #140]
    orr r3, r3, #1048576
    str r1, [r0, #116]
    str r3, [r0, #140]
    bx lr
png_read_transform_info:
    stmdb sp!, {r4, r5, lr}
    ldr r3, [r0, #140]
    tst r3, #4096
    sub sp, sp, #4
    mov r5, r0
    mov r4, r1
    beq .Lsec01_0000019c
    ldrb r2, [r1, #25]
    cmp r2, #3
    bne .Lsec01_0000016c
    ldr r3, [pc, #528]
    ldrh r3, [r0, r3]
    cmp r3, #0
    movne r3, #6
    moveq r3, #2
    strb r3, [r1, #25]
    b .Lsec01_0000018c
.Lsec01_0000016c:
    ldr r3, [pc, #500]
    ldrh r3, [r0, r3]
    cmp r3, #0
    orrne r3, r2, #4
    strneb r3, [r1, #25]
    ldrb r3, [r1, #24]
    cmp r3, #7
    bhi .Lsec01_00000194
.Lsec01_0000018c:
    mov r3, #8
    strb r3, [r4, #24]
.Lsec01_00000194:
    mov r3, #0
    strh r3, [r4, #22]
.Lsec01_0000019c:
    ldr r3, [r5, #140]
    tst r3, #128
    beq .Lsec01_000001cc
    ldrb r3, [r4, #25]
    bic r3, r3, #4
    strb r3, [r4, #25]
    mov r3, #0
    strh r3, [r4, #22]
    add r0, r4, #90
    add r1, r5, #340
    mov r2, #10
.Lsec01_000001c8:
    bl memcpy
.Lsec01_000001cc:
    ldr r3, [r5, #140]
    tst r3, #8192
    ldrne r2, [r5, #592]
    ldrne r3, [r5, #376]
    strne r2, [r4, #252]
    strne r3, [r4, #40]
    ldr r3, [r5, #140]
    tst r3, #1024
    beq .Lsec01_00000200
    ldrb r3, [r4, #24]
    cmp r3, #16
    moveq r3, #8
    streqb r3, [r4, #24]
.Lsec01_00000200:
    ldr r3, [r5, #140]
    tst r3, #64
    beq .Lsec01_00000238
    ldrb r3, [r4, #25]
    cmp r3, #6
    cmpne r3, #2
    bne .Lsec01_00000238
    ldr r3, [r5, #520]
    cmp r3, #0
    beq .Lsec01_00000238
    ldrb r3, [r4, #24]
    cmp r3, #8
    moveq r3, #3
    streqb r3, [r4, #25]
.Lsec01_00000238:
    ldr r3, [r5, #140]
    tst r3, #4
    beq .Lsec01_00000254
    ldrb r3, [r4, #24]
    cmp r3, #7
    movls r3, #8
    strlsb r3, [r4, #24]
.Lsec01_00000254:
    ldr r3, [r5, #140]
    tst r3, #16384
    ldrneb r3, [r4, #25]
    orrne r3, r3, #2
    strneb r3, [r4, #25]
    ldr r3, [r5, #140]
    tst r3, #6291456
    ldrneb r3, [r4, #25]
    bicne r3, r3, #2
    strneb r3, [r4, #25]
    ldrb r3, [r4, #25]
    cmp r3, #3
    beq .Lsec01_00000294
    tst r3, #2
    movne r3, #3
    bne .Lsec01_00000298
.Lsec01_00000294:
    mov r3, #1
.Lsec01_00000298:
    strb r3, [r4, #29]
    ldr r3, [r5, #136]
    tst r3, #4194304
    ldrneb r3, [r4, #25]
    bicne r3, r3, #4
    strneb r3, [r4, #25]
    ldrb r3, [r4, #25]
    tst r3, #4
    ldrneb r3, [r4, #29]
    addne r3, r3, #1
    strneb r3, [r4, #29]
    ldr r3, [r5, #140]
    tst r3, #32768
    beq .Lsec01_000002fc
    ldrb r2, [r4, #25]
    cmp r2, #0
    cmpne r2, #2
    bne .Lsec01_000002fc
    ldrb r3, [r4, #29]
    add r3, r3, #1
    strb r3, [r4, #29]
    ldr r3, [r5, #140]
    tst r3, #16777216
    orrne r3, r2, #4
    strneb r3, [r4, #25]
.Lsec01_000002fc:
    ldr r3, [r5, #140]
    tst r3, #1048576
    beq .Lsec01_00000328
    ldrb r2, [r5, #128]
    ldrb r3, [r4, #24]
    cmp r3, r2
    strccb r2, [r4, #24]
    ldrb r3, [r4, #29]
    ldrb r0, [r5, #129]
    cmp r3, r0
    strccb r0, [r4, #29]
.Lsec01_00000328:
    ldrb r2, [r4, #24]
    ldrb r3, [r4, #29]
    mul r3, r2, r3
    ldr r2, [r4]
    and r3, r3, #255
    cmp r3, #7
    strb r3, [r4, #30]
    mulls r3, r2, r3
    movhi r3, r3, lsr #3
    mulhi r3, r2, r3
    addls r3, r3, #7
    movls r3, r3, lsr #3
    str r3, [r4, #12]
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long 0x00000136
.arm
png_do_unpack:
    ldrb r3, [r0, #9]
    cmp r3, #7
    stmdb sp!, {r4, lr}
    bhi .Lsec01_000004b4
    cmp r3, #2
    ldr lr, [r0]
    beq .Lsec01_000003ec
    cmp r3, #4
    beq .Lsec01_00000444
    cmp r3, #1
    bne .Lsec01_00000498
    add r2, lr, #7
    add r4, r1, lr
    mvn r2, r2
    sub r3, lr, #1
    add r1, r1, r3, lsr #3
    and r2, r2, #7
    mov ip, r4
    b .Lsec01_000003dc
.Lsec01_000003b8:
    ldrb r3, [r1]
    mov r3, r3, asr r2
    cmp r2, #7
    and r3, r3, #1
    add r2, r2, #1
    strb r3, [ip, #-1]
    subeq r1, r1, #1
    moveq r2, #0
    sub ip, ip, #1
.Lsec01_000003dc:
    rsb r3, lr, r4
    cmp ip, r3
    bne .Lsec01_000003b8
    b .Lsec01_00000498
.Lsec01_000003ec:
    add r3, lr, #3
    mvn r3, r3
    add r4, r1, lr
    sub r2, lr, #1
    and r3, r3, #3
    add r1, r1, r2, lsr #2
    mov ip, r4
    mov r2, r3, lsl #1
    b .Lsec01_00000434
.Lsec01_00000410:
    ldrb r3, [r1]
    mov r3, r3, asr r2
    cmp r2, #6
    and r3, r3, #3
    add r2, r2, #2
    strb r3, [ip, #-1]
    subeq r1, r1, #1
    moveq r2, #0
    sub ip, ip, #1
.Lsec01_00000434:
    rsb r3, lr, r4
    cmp ip, r3
    bne .Lsec01_00000410
    b .Lsec01_00000498
.Lsec01_00000444:
    add r3, lr, #1
    mvn r3, r3
    add r4, r1, lr
    sub r2, lr, #1
    and r3, r3, #1
    add r1, r1, r2, lsr #1
    mov ip, r4
    mov r2, r3, lsl #2
    b .Lsec01_0000048c
.Lsec01_00000468:
    ldrb r3, [r1]
    mov r3, r3, asr r2
    cmp r2, #4
    and r3, r3, #15
    mov r2, #4
    strb r3, [ip, #-1]
    subeq r1, r1, #1
    moveq r2, #0
    sub ip, ip, #1
.Lsec01_0000048c:
    rsb r3, lr, r4
    cmp ip, r3
    bne .Lsec01_00000468
.Lsec01_00000498:
    ldrb r3, [r0, #10]
    mul r2, r3, lr
    mov r3, r3, lsl #3
    str r2, [r0, #4]
    mov r2, #8
    strb r2, [r0, #9]
    strb r3, [r0, #11]
.Lsec01_000004b4:
    ldmia sp!, {r4, lr}
    bx lr
png_do_unshift:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    ldrb r4, [r0, #8]
    cmp r4, #3
    sub sp, sp, #16
    mov r5, r1
    mov lr, r2
    beq .Lsec01_000006c8
    tst r4, #2
    ldr r6, [r0]
    ldrb ip, [r0, #9]
    beq .Lsec01_00000514
    ldrb r3, [r2]
    ldrb r1, [lr, #2]
    ldrb r2, [r2, #1]
    rsb r1, r1, ip
    rsb r3, r3, ip
    rsb r2, r2, ip
    mov r7, #3
    str r3, [sp]
    str r2, [sp, #4]
    str r1, [sp, #8]
    b .Lsec01_00000524
.Lsec01_00000514:
    ldrb r3, [r2, #3]
    rsb r3, r3, ip
    str r3, [sp]
    mov r7, #1
.Lsec01_00000524:
    tst r4, #4
    beq .Lsec01_00000548
    ldrb r3, [lr, #4]
    ldrb r2, [r0, #9]
    add r1, sp, #16
    rsb r2, r3, r2
    add r3, r1, r7, lsl #2
    str r2, [r3, #-16]
    add r7, r7, #1
.Lsec01_00000548:
    mov r1, #0
    mov ip, r1
    mov r2, r1
    b .Lsec01_00000574
.Lsec01_00000558:
    ldr r3, [r2, lr]
    cmp r3, #0
    movle r3, #0
    strle r3, [r2, lr]
    movgt r1, #1
    add ip, ip, #1
    add r2, r2, #4
.Lsec01_00000574:
    cmp ip, r7
    mov lr, sp
    blt .Lsec01_00000558
    cmp r1, #0
    beq .Lsec01_000006c8
    ldrb r3, [r0, #9]
    cmp r3, #4
    beq .Lsec01_000005e4
    bhi .Lsec01_000005a4
    cmp r3, #2
    bne .Lsec01_000006c8
    b .Lsec01_000005b8
.Lsec01_000005a4:
    cmp r3, #8
    beq .Lsec01_00000628
    cmp r3, #16
    bne .Lsec01_000006c8
    b .Lsec01_00000668
.Lsec01_000005b8:
    ldr r0, [r0, #4]
    mov r2, #0
    b .Lsec01_000005d8
.Lsec01_000005c4:
    ldrb r3, [r2, r5]
    mov r3, r3, lsr #1
    and r3, r3, #85
    strb r3, [r2, r5]
    add r2, r2, #1
.Lsec01_000005d8:
    cmp r2, r0
    bne .Lsec01_000005c4
    b .Lsec01_000006c8
.Lsec01_000005e4:
    ldr r1, [sp]
    mov r3, #240
    mov r3, r3, asr r1
    mov r2, #15
    bic r3, r3, #15
    orr r3, r3, r2, asr r1
    ldr r0, [r0, #4]
    and ip, r3, #255
    mov r2, #0
    b .Lsec01_0000061c
.Lsec01_0000060c:
    ldrb r3, [r2, r5]
    and r3, ip, r3, asr r1
    strb r3, [r2, r5]
    add r2, r2, #1
.Lsec01_0000061c:
    cmp r2, r0
    bne .Lsec01_0000060c
    b .Lsec01_000006c8
.Lsec01_00000628:
    mul r6, r7, r6
    mov r4, #0
    b .Lsec01_00000654
.Lsec01_00000634:
    bl __aeabi_uidivmod
    add r3, sp, #16
    add r1, r3, r1, lsl #2
    ldr r2, [r1, #-16]
    ldrb r3, [r4, r5]
    mov r3, r3, asr r2
    strb r3, [r4, r5]
    add r4, r4, #1
.Lsec01_00000654:
    cmp r4, r6
    mov r0, r4
    mov r1, r7
    bne .Lsec01_00000634
    b .Lsec01_000006c8
.Lsec01_00000668:
    mul r8, r6, r7
    mov r6, #0
    b .Lsec01_000006b0
.Lsec01_00000674:
    ldrb r3, [r5, #-2]
    ldrb r4, [r5, #-1]
    add r4, r4, r3, lsl #8
.Lsec01_00000680:
    bl __aeabi_uidivmod
    add r3, sp, #16
    add r1, r3, r1, lsl #2
    ldr r3, [r1, #-16]
    mov r4, r4, lsl #16
    mov r4, r4, lsr #16
    mov r4, r4, asr r3
    mov r4, r4, lsl #16
    mov r3, r4, lsr #24
    mov r4, r4, lsr #16
    strb r3, [r5, #-2]
    strb r4, [r5, #-1]
.Lsec01_000006b0:
    cmp r6, r8
    mov r0, r6
    mov r1, r7
    add r6, r6, #1
    add r5, r5, #2
    bne .Lsec01_00000674
.Lsec01_000006c8:
    add sp, sp, #16
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
png_do_chop:
    ldrb r3, [r0, #9]
    cmp r3, #16
    bxne lr
    ldrb r2, [r0, #10]
    ldr r3, [r0]
    mul ip, r3, r2
    mov r2, #0
    b .Lsec01_00000700
.Lsec01_000006f4:
    ldrb r3, [r1, r2, lsl #1]
    strb r3, [r2, r1]
    add r2, r2, #1
.Lsec01_00000700:
    cmp r2, ip
    bne .Lsec01_000006f4
    ldrb r2, [r0, #10]
    ldr r3, [r0]
    mul r3, r2, r3
    mov r2, r2, lsl #3
    str r3, [r0, #4]
    mov r3, #8
    strb r3, [r0, #9]
    strb r2, [r0, #11]
    bx lr
png_do_read_swap_alpha:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    ldrb r3, [r0, #8]
    cmp r3, #6
    ldr r8, [r0]
    bne .Lsec01_000007e8
    ldrb r3, [r0, #9]
    ldr r0, [r0, #4]
    cmp r3, #8
    addeq ip, r1, r0
    moveq lr, #0
    beq .Lsec01_0000077c
    b .Lsec01_0000078c
.Lsec01_0000075c:
    ldrb r2, [ip, #-2]
    ldrb r1, [ip, #-3]
    ldrb r0, [ip, #-1]
    ldrb r3, [ip, #-4]
    strb r2, [ip, #-1]
    strb r1, [ip, #-2]
    strb r3, [ip, #-3]
    strb r0, [ip, #-4]!
.Lsec01_0000077c:
    cmp lr, r8
    add lr, lr, #1
    bne .Lsec01_0000075c
    b .Lsec01_00000864
.Lsec01_0000078c:
    add r6, r1, r0
    mov r7, #0
    b .Lsec01_000007d8
.Lsec01_00000798:
    ldrb r5, [r6, #-1]
    ldrb r2, [r6, #-3]
    ldrb r1, [r6, #-4]
    ldrb r0, [r6, #-5]
    ldrb ip, [r6, #-6]
    ldrb lr, [r6, #-7]
    ldrb r4, [r6, #-2]
    ldrb r3, [r6, #-8]
    strb r2, [r6, #-1]
    strb r1, [r6, #-2]
    strb r0, [r6, #-3]
    strb ip, [r6, #-4]
    strb lr, [r6, #-5]
    strb r3, [r6, #-6]
    strb r5, [r6, #-7]
    strb r4, [r6, #-8]!
.Lsec01_000007d8:
    cmp r7, r8
    add r7, r7, #1
    bne .Lsec01_00000798
    b .Lsec01_00000864
.Lsec01_000007e8:
    cmp r3, #4
    bne .Lsec01_00000864
    ldrb r3, [r0, #9]
    ldr r0, [r0, #4]
    cmp r3, #8
    addeq r0, r1, r0
    moveq r1, #0
    beq .Lsec01_0000081c
    b .Lsec01_0000082c
.Lsec01_0000080c:
    ldrb r2, [r0, #-1]
    ldrb r3, [r0, #-2]
    strb r3, [r0, #-1]
    strb r2, [r0, #-2]!
.Lsec01_0000081c:
    cmp r1, r8
    add r1, r1, #1
    bne .Lsec01_0000080c
    b .Lsec01_00000864
.Lsec01_0000082c:
    add ip, r1, r0
    mov lr, #0
    b .Lsec01_00000858
.Lsec01_00000838:
    ldrb r0, [ip, #-1]
    ldrb r2, [ip, #-3]
    ldrb r1, [ip, #-2]
    ldrb r3, [ip, #-4]
    strb r2, [ip, #-1]
    strb r3, [ip, #-2]
    strb r0, [ip, #-3]
    strb r1, [ip, #-4]!
.Lsec01_00000858:
    cmp lr, r8
    add lr, lr, #1
    bne .Lsec01_00000838
.Lsec01_00000864:
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
png_do_read_invert_alpha:
    ldrb r3, [r0, #8]
    cmp r3, #6
    ldr ip, [r0]
    bne .Lsec01_000008f0
    ldrb r3, [r0, #9]
    ldr r0, [r0, #4]
    cmp r3, #8
    addeq r0, r1, r0
    moveq r2, #0
    beq .Lsec01_000008a8
    b .Lsec01_000008b8
.Lsec01_00000898:
    ldrb r3, [r0, #-1]
    mvn r3, r3
    strb r3, [r0, #-1]
    sub r0, r0, #4
.Lsec01_000008a8:
    cmp r2, ip
    add r2, r2, #1
    bne .Lsec01_00000898
    bx lr
.Lsec01_000008b8:
    add r0, r1, r0
    mov r1, #0
    b .Lsec01_000008e0
.Lsec01_000008c4:
    ldrb r3, [r0, #-1]
    ldrb r2, [r0, #-2]
    mvn r3, r3
    mvn r2, r2
    strb r3, [r0, #-1]
    strb r2, [r0, #-2]
    sub r0, r0, #8
.Lsec01_000008e0:
    cmp r1, ip
    add r1, r1, #1
    bne .Lsec01_000008c4
    bx lr
.Lsec01_000008f0:
    cmp r3, #4
    bxne lr
    ldrb r3, [r0, #9]
    ldr r0, [r0, #4]
    cmp r3, #8
    addeq r0, r1, r0
    moveq r2, #0
    beq .Lsec01_00000924
    b .Lsec01_00000934
.Lsec01_00000914:
    ldrb r3, [r0, #-1]
    mvn r3, r3
    strb r3, [r0, #-1]
    sub r0, r0, #2
.Lsec01_00000924:
    cmp r2, ip
    add r2, r2, #1
    bne .Lsec01_00000914
    bx lr
.Lsec01_00000934:
    add r0, r1, r0
    mov r1, #0
    b .Lsec01_0000095c
.Lsec01_00000940:
    ldrb r3, [r0, #-1]
    ldrb r2, [r0, #-2]
    mvn r3, r3
    mvn r2, r2
    strb r3, [r0, #-1]
    strb r2, [r0, #-2]
    sub r0, r0, #4
.Lsec01_0000095c:
    cmp r1, ip
    add r1, r1, #1
    bne .Lsec01_00000940
    bx lr
png_do_read_filler:
    stmdb sp!, {r4, r5, lr}
    ldrb r5, [r0, #8]
    mov r4, r0
    cmp r5, #0
    mov r0, r2, lsr #8
    and r0, r0, #255
    and r2, r2, #255
    ldr lr, [r4]
    bne .Lsec01_00000ab8
    ldrb ip, [r4, #9]
    cmp ip, #8
    bne .Lsec01_00000a18
    tst r3, #128
    add r1, r1, lr
    movne ip, r5
    addne r0, r1, lr
    bne .Lsec01_000009c0
    b .Lsec01_000009dc
.Lsec01_000009b4:
    strb r2, [r0, #-1]
    ldrb r3, [ip, r1]
    strb r3, [r0, #-2]!
.Lsec01_000009c0:
    sub ip, ip, #1
    rsb r3, ip, #0
    cmp r3, lr
    bcc .Lsec01_000009b4
    mov r3, lr, lsl #1
    strb r2, [r0, #-1]
    b .Lsec01_00000a04
.Lsec01_000009dc:
    mov ip, r5
    add r0, r1, lr
    b .Lsec01_000009f4
.Lsec01_000009e8:
    ldrb r3, [r1, #-1]!
    strb r3, [r0, #-1]
    strb r2, [r0, #-2]!
.Lsec01_000009f4:
    cmp ip, lr
    add ip, ip, #1
    bne .Lsec01_000009e8
    mov r3, lr, lsl #1
.Lsec01_00000a04:
    str r3, [r4, #4]
    mov r3, #2
    strb r3, [r4, #10]
    add r3, r3, #14
    b .Lsec01_00000c54
.Lsec01_00000a18:
    cmp ip, #16
    bne .Lsec01_00000c58
    tst r3, #128
    mov ip, lr, lsl #1
    addne r1, r1, ip
    addne ip, r1, ip
    movne r5, #1
    bne .Lsec01_00000a54
    b .Lsec01_00000a70
.Lsec01_00000a3c:
    strb r0, [ip, #-1]
    strb r2, [ip, #-2]
    ldrb r3, [r1, #-1]
    strb r3, [ip, #-3]
    ldrb r3, [r1, #-2]!
    strb r3, [ip, #-4]!
.Lsec01_00000a54:
    cmp r5, lr
    add r5, r5, #1
    bcc .Lsec01_00000a3c
    mov r3, lr, lsl #2
    strb r2, [ip, #-2]
    strb r0, [ip, #-1]
    b .Lsec01_00000aa4
.Lsec01_00000a70:
    add r1, r1, ip
    add ip, r1, ip
    b .Lsec01_00000a94
.Lsec01_00000a7c:
    ldrb r3, [r1, #-1]
    strb r3, [ip, #-1]
    ldrb r3, [r1, #-2]!
    strb r0, [ip, #-3]
    strb r3, [ip, #-2]
    strb r2, [ip, #-4]!
.Lsec01_00000a94:
    cmp r5, lr
    add r5, r5, #1
    bne .Lsec01_00000a7c
    mov r3, lr, lsl #2
.Lsec01_00000aa4:
    str r3, [r4, #4]
    mov r3, #2
    strb r3, [r4, #10]
    add r3, r3, #30
    b .Lsec01_00000c54
.Lsec01_00000ab8:
    cmp r5, #2
    bne .Lsec01_00000c58
    ldrb ip, [r4, #9]
    cmp ip, #8
    bne .Lsec01_00000b70
    ands r0, r3, #128
    beq .Lsec01_00000b1c
    mov r3, #3
    mla r1, lr, r3, r1
    mov ip, #1
    add r0, r1, lr
    b .Lsec01_00000b04
.Lsec01_00000ae8:
    strb r2, [r0, #-1]
    ldrb r3, [r1, #-1]
    strb r3, [r0, #-2]
    ldrb r3, [r1, #-2]
    strb r3, [r0, #-3]
    ldrb r3, [r1, #-3]!
    strb r3, [r0, #-4]!
.Lsec01_00000b04:
    cmp ip, lr
    add ip, ip, #1
    bcc .Lsec01_00000ae8
    mov r3, lr, lsl #2
    strb r2, [r0, #-1]
    b .Lsec01_00000b5c
.Lsec01_00000b1c:
    mov r3, #3
    mla r1, lr, r3, r1
    mov ip, r0
    add r0, r1, lr
    b .Lsec01_00000b4c
.Lsec01_00000b30:
    ldrb r3, [r1, #-1]
    strb r3, [r0, #-1]
    ldrb r3, [r1, #-2]
    strb r3, [r0, #-2]
    ldrb r3, [r1, #-3]!
    strb r3, [r0, #-3]
    strb r2, [r0, #-4]!
.Lsec01_00000b4c:
    cmp ip, lr
    add ip, ip, #1
    bne .Lsec01_00000b30
    mov r3, lr, lsl #2
.Lsec01_00000b5c:
    str r3, [r4, #4]
    mov r3, #4
    strb r3, [r4, #10]
    add r3, r3, #28
    b .Lsec01_00000c54
.Lsec01_00000b70:
    cmp ip, #16
    bne .Lsec01_00000c58
    ands r5, r3, #128
    mov ip, lr, lsl #1
    beq .Lsec01_00000bec
    mov r3, #6
    mla r1, lr, r3, r1
    mov r5, #1
    add ip, r1, ip
    b .Lsec01_00000bd0
.Lsec01_00000b98:
    strb r0, [ip, #-1]
    strb r2, [ip, #-2]
    ldrb r3, [r1, #-1]
    strb r3, [ip, #-3]
    ldrb r3, [r1, #-2]
    strb r3, [ip, #-4]
    ldrb r3, [r1, #-3]
    strb r3, [ip, #-5]
    ldrb r3, [r1, #-4]
    strb r3, [ip, #-6]
    ldrb r3, [r1, #-5]
    strb r3, [ip, #-7]
    ldrb r3, [r1, #-6]!
    strb r3, [ip, #-8]!
.Lsec01_00000bd0:
    cmp r5, lr
    add r5, r5, #1
    bcc .Lsec01_00000b98
    mov r3, lr, lsl #3
    strb r2, [ip, #-2]
    strb r0, [ip, #-1]
    b .Lsec01_00000c44
.Lsec01_00000bec:
    mov r3, #6
    mla r1, lr, r3, r1
    add ip, r1, ip
    b .Lsec01_00000c34
.Lsec01_00000bfc:
    ldrb r3, [r1, #-1]
    strb r3, [ip, #-1]
    ldrb r3, [r1, #-2]
    strb r3, [ip, #-2]
    ldrb r3, [r1, #-3]
    strb r3, [ip, #-3]
    ldrb r3, [r1, #-4]
    strb r3, [ip, #-4]
    ldrb r3, [r1, #-5]
    strb r3, [ip, #-5]
    ldrb r3, [r1, #-6]!
    strb r0, [ip, #-7]
    strb r3, [ip, #-6]
    strb r2, [ip, #-8]!
.Lsec01_00000c34:
    cmp r5, lr
    add r5, r5, #1
    bne .Lsec01_00000bfc
    mov r3, lr, lsl #3
.Lsec01_00000c44:
    str r3, [r4, #4]
    mov r3, #4
    strb r3, [r4, #10]
    add r3, r3, #60
.Lsec01_00000c54:
    strb r3, [r4, #11]
.Lsec01_00000c58:
    ldmia sp!, {r4, r5, lr}
    bx lr
png_do_gray_to_rgb:
    stmdb sp!, {r4, lr}
    ldrb r3, [r0, #9]
    cmp r3, #7
    mov r4, r0
    ldr r0, [r0]
    bls .Lsec01_00000e40
    ldrb lr, [r4, #8]
    tst lr, #2
    bne .Lsec01_00000e40
    cmp lr, #0
    bne .Lsec01_00000d34
    cmp r3, #8
    mov r2, r0, lsl #1
    bne .Lsec01_00000cdc
    add r1, r1, r0
    sub r3, r1, #1
    add ip, r3, r2
    mov r2, lr
    b .Lsec01_00000cc4
.Lsec01_00000cac:
    ldrb r3, [r2, r1]
    strb r3, [ip, #3]
    ldrb r3, [r2, r1]
    strb r3, [ip, #2]
    ldrb r3, [r2, r1]
    strb r3, [ip, #1]
.Lsec01_00000cc4:
    sub r2, r2, #1
    mvn r3, r0
    cmp r2, r3
    sub ip, ip, #3
    bne .Lsec01_00000cac
    b .Lsec01_00000df8
.Lsec01_00000cdc:
    add r2, r1, r2
    sub r3, r2, #1
    add ip, r3, r0, lsl #2
    mov r1, #0
    b .Lsec01_00000d20
.Lsec01_00000cf0:
    ldrb r3, [r2, #-1]
    strb r3, [ip, #6]
    ldrb r3, [r2, #-2]
    strb r3, [ip, #5]
    ldrb r3, [r2, #-1]
    strb r3, [ip, #4]
    ldrb r3, [r2, #-2]
    strb r3, [ip, #3]
    ldrb r3, [r2, #-1]
    strb r3, [ip, #2]
    ldrb r3, [r2, #-2]!
    strb r3, [ip, #1]
.Lsec01_00000d20:
    cmp r1, r0
    sub ip, ip, #6
    add r1, r1, #1
    bne .Lsec01_00000cf0
    b .Lsec01_00000df8
.Lsec01_00000d34:
    cmp lr, #4
    bne .Lsec01_00000df8
    cmp r3, #8
    bne .Lsec01_00000d90
    mov r3, r0, lsl #1
    add r1, r1, r3
    sub r2, r1, #1
    add r2, r2, r3
    mov ip, #0
    b .Lsec01_00000d7c
.Lsec01_00000d5c:
    ldrb r3, [r1, #-1]
    strb r3, [r2, #4]
    ldrb r3, [r1, #-2]
    strb r3, [r2, #3]
    ldrb r3, [r1, #-2]
    strb r3, [r2, #2]
    ldrb r3, [r1, #-2]!
    strb r3, [r2, #1]
.Lsec01_00000d7c:
    cmp ip, r0
    sub r2, r2, #4
    add ip, ip, #1
    bne .Lsec01_00000d5c
    b .Lsec01_00000df8
.Lsec01_00000d90:
    mov r3, r0, lsl #2
    add r1, r1, r3
    sub r2, r1, #1
    add r2, r2, r3
    mov ip, #0
    b .Lsec01_00000de8
.Lsec01_00000da8:
    ldrb r3, [r1, #-1]
    strb r3, [r2, #8]
    ldrb r3, [r1, #-2]
    strb r3, [r2, #7]
    ldrb r3, [r1, #-3]
    strb r3, [r2, #6]
    ldrb r3, [r1, #-4]
    strb r3, [r2, #5]
    ldrb r3, [r1, #-3]
    strb r3, [r2, #4]
    ldrb r3, [r1, #-4]
    strb r3, [r2, #3]
    ldrb r3, [r1, #-3]
    strb r3, [r2, #2]
    ldrb r3, [r1, #-4]!
    strb r3, [r2, #1]
.Lsec01_00000de8:
    cmp ip, r0
    sub r2, r2, #8
    add ip, ip, #1
    bne .Lsec01_00000da8
.Lsec01_00000df8:
    ldrb r3, [r4, #10]
    add r3, r3, #2
    strb r3, [r4, #10]
    ldrb r2, [r4, #9]
    ldrb r3, [r4, #10]
    mul r2, r3, r2
    ldrb r3, [r4, #8]
    and r2, r2, #255
    orr r3, r3, #2
    cmp r2, #7
    strb r3, [r4, #8]
    mulls r3, r2, r0
    movhi r3, r2, lsr #3
    strb r2, [r4, #11]
    mulhi r2, r3, r0
    addls r3, r3, #7
    movls r2, r3, lsr #3
    str r2, [r4, #4]
.Lsec01_00000e40:
    ldmia sp!, {r4, lr}
    bx lr
png_do_rgb_to_gray:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldrb r3, [r1, #8]
    mov sl, r1
    sub sp, sp, #44
    ands r1, r3, #2
    mov r6, r0
    mov r7, r2
    ldr fp, [sl]
    streq r1, [sp, #16]
    beq .Lsec01_00001520
    cmp r3, #2
    ldr r3, [pc, #1716]
    ldrh r3, [r0, r3]
    str r3, [sp, #20]
    mov r3, #584
    ldrh r3, [r0, r3]
    str r3, [sp, #24]
    ldr r3, [pc, #1696]
    ldrh r3, [r0, r3]
    movne r0, #0
    str r3, [sp, #28]
    strne r0, [sp, #16]
    bne .Lsec01_000011c4
    ldrb r3, [sl, #9]
    cmp r3, #8
    bne .Lsec01_00000fdc
    ldr r3, [r6, #388]
    cmp r3, #0
    beq .Lsec01_00000fbc
    ldr r3, [r6, #392]
    cmp r3, #0
    beq .Lsec01_00000fbc
    mov r1, #0
    mov ip, r2
    mov lr, r2
    mov r5, r1
    str r1, [sp, #16]
    b .Lsec01_00000f50
.Lsec01_00000ee0:
    ldr r2, [r6, #392]
    ldrb r0, [ip, #1]
    ldrb r3, [ip, #2]
    ldrb r1, [ip]
    ldrb r4, [r2, r3]
    ldrb r1, [r2, r1]
    ldrb r3, [r2, r0]
    add ip, ip, #3
    cmp r1, r4
    cmpeq r1, r3
    ldreqb r3, [ip, #-1]
    add r0, lr, #1
    streqb r3, [lr]
    beq .Lsec01_00000f48
    ldr r2, [sp, #24]
    mul r3, r2, r3
    ldr r2, [sp, #20]
    mla r3, r1, r2, r3
    ldr r2, [sp, #28]
    mla r2, r4, r2, r3
    ldr r3, [r6, #388]
    ldrb r3, [r3, r2, lsr #15]
    strb r3, [lr]
    ldr r3, [sp, #16]
    orr r3, r3, #1
    str r3, [sp, #16]
.Lsec01_00000f48:
    mov lr, r0
    add r5, r5, #1
.Lsec01_00000f50:
    cmp r5, fp
    bne .Lsec01_00000ee0
    b .Lsec01_000011c4
.Lsec01_00000f5c:
    ldrb r3, [r1, #1]
    ldrb r2, [r1]
    ldrb ip, [r1, #2]
    add r1, r1, #3
    cmp r2, ip
    cmpeq r2, r3
    ldreqb r3, [r1, #-1]
    add r4, r0, #1
    streqb r3, [r0]
    beq .Lsec01_00000fb0
    ldr r5, [sp, #24]
    mul r3, r5, r3
    ldr r5, [sp, #20]
    mla r3, r2, r5, r3
    ldr r2, [sp, #28]
    mla r3, ip, r2, r3
    mov r3, r3, lsr #15
    strb r3, [r0]
    ldr r3, [sp, #16]
    orr r3, r3, #1
    str r3, [sp, #16]
.Lsec01_00000fb0:
    mov r0, r4
    add lr, lr, #1
    b .Lsec01_00000fd0
.Lsec01_00000fbc:
    mov r5, #0
    str r5, [sp, #16]
    mov r1, r7
    mov r0, r7
    mov lr, r5
.Lsec01_00000fd0:
    cmp lr, fp
    bne .Lsec01_00000f5c
    b .Lsec01_000011c4
.Lsec01_00000fdc:
    ldr r3, [r6, #404]
    cmp r3, #0
    beq .Lsec01_000011a4
    ldr r3, [r6, #400]
    cmp r3, #0
    beq .Lsec01_000011a4
    mov ip, #0
    mov r5, r2
    mov r8, r2
    str ip, [sp, #16]
    str ip, [sp, #32]
    b .Lsec01_00001120
.Lsec01_0000100c:
    ldrb lr, [r5]
    ldrb r1, [r5, #1]
    ldrb ip, [r5, #2]
    ldrb r3, [r5, #4]
    ldrb r0, [r5, #3]
    ldrb r2, [r5, #5]
    orr r1, r1, lr, lsl #8
    mov r1, r1, lsl #16
    orr r0, r0, ip, lsl #8
    orr r2, r2, r3, lsl #8
    mov r3, r1, lsr #24
    mov r3, r3, lsl #1
    mov r0, r0, lsl #16
    mov r2, r2, lsl #16
    str r3, [sp, #12]
    mov r3, r0, lsr #24
    mov r1, r1, lsr #16
    mov r0, r0, lsr #16
    mov r9, r3, lsl #1
    mov r3, r2, lsr #24
    mov r2, r2, lsr #16
    mov r3, r3, lsl #1
    cmp r1, r0
    cmpeq r1, r2
    str r3, [sp, #8]
    and ip, r1, #255
    and r3, r0, #255
    and lr, r2, #255
    beq .Lsec01_00001100
    ldr r0, [r6, #372]
    mov r3, r3, asr r0
    mov ip, ip, asr r0
    ldr r2, [r6, #404]
    ldr r1, [sp, #16]
    ldr r3, [r2, r3, lsl #2]
    mov lr, lr, asr r0
    orr r1, r1, #1
    ldrh r3, [r9, r3]
    str r1, [sp, #16]
    ldr r1, [sp, #24]
    mul r1, r3, r1
    ldr r3, [r2, ip, lsl #2]
    ldr ip, [sp, #12]
    ldrh r3, [ip, r3]
    ldr ip, [sp, #20]
    mla r1, r3, ip, r1
    ldr r3, [r2, lr, lsl #2]
    ldr r2, [sp, #8]
    ldrh r3, [r2, r3]
    ldr r2, [sp, #28]
    mla r2, r3, r2, r1
    mov r2, r2, lsr #15
    mov r2, r2, lsl #16
    mov r3, r2, lsr #16
    and r3, r3, #255
    mov r3, r3, asr r0
    ldr r4, [r6, #400]
    mov r2, r2, lsr #24
    ldr r3, [r4, r3, lsl #2]
    mov r2, r2, lsl #1
    ldrh r1, [r2, r3]
.Lsec01_00001100:
    strb r1, [r8, #1]
    ldr ip, [sp, #32]
    mov r3, r1, lsr #8
    add ip, ip, #1
    str ip, [sp, #32]
    add r5, r5, #6
    strb r3, [r8]
    add r8, r8, #2
.Lsec01_00001120:
    ldr r0, [sp, #32]
    cmp r0, fp
    bne .Lsec01_0000100c
    b .Lsec01_000011c4
.Lsec01_00001130:
    ldrb r3, [r4, #2]
    ldrb r0, [r4, #3]
    orr r0, r0, r3, lsl #8
    ldr r3, [sp, #24]
    mul r3, r0, r3
    ldrb ip, [r4]
    ldrb r1, [r4, #1]
    orr r1, r1, ip, lsl #8
    ldr ip, [sp, #20]
    mla r3, r1, ip, r3
    ldrb lr, [r4, #4]
    ldrb r2, [r4, #5]
    ldr ip, [sp, #28]
    orr r2, r2, lr, lsl #8
    mla r3, r2, ip, r3
    cmp r1, r2
    cmpeq r1, r0
    ldrne r0, [sp, #16]
    mov r3, r3, lsr #15
    mov r3, r3, lsl #16
    mov ip, r3, lsr #24
    orrne r0, r0, #1
    mov r3, r3, lsr #16
    strne r0, [sp, #16]
    add r4, r4, #6
    strb ip, [r5]
    strb r3, [r5, #1]
    add r5, r5, #2
    b .Lsec01_000011b8
.Lsec01_000011a4:
    mov r1, #0
    str r1, [sp, #16]
    mov r4, r7
    mov r5, r7
    mov r8, r1
.Lsec01_000011b8:
    cmp r8, fp
    add r8, r8, #1
    bne .Lsec01_00001130
.Lsec01_000011c4:
    ldrb r3, [sl, #8]
    cmp r3, #6
    bne .Lsec01_000014d8
    ldrb r3, [sl, #9]
    cmp r3, #8
    bne .Lsec01_000012e8
    ldr r3, [r6, #388]
    cmp r3, #0
    beq .Lsec01_000012cc
    ldr r3, [r6, #392]
    cmp r3, #0
    movne lr, r7
    movne r4, lr
    movne r5, #0
    bne .Lsec01_00001268
    b .Lsec01_000012cc
.Lsec01_00001204:
    ldrb r0, [lr, #1]
    ldrb r3, [lr, #2]
    ldr r1, [r6, #392]
    ldrb r2, [lr]
    ldrb ip, [r1, r3]
    ldrb r2, [r1, r2]
    ldr r3, [sp, #24]
    ldrb r1, [r1, r0]
    mul r3, r1, r3
    ldr r0, [sp, #20]
    mla r3, r2, r0, r3
    ldr r0, [sp, #28]
    mla r0, ip, r0, r3
    cmp r2, ip
    cmpeq r2, r1
    ldrne r1, [sp, #16]
    orrne r1, r1, #1
    strne r1, [sp, #16]
    ldr r3, [r6, #388]
    ldrb r3, [r3, r0, lsr #15]
    strb r3, [r4]
    ldrb r3, [lr, #3]
    add lr, lr, #4
    strb r3, [r4, #1]
    add r4, r4, #2
.Lsec01_00001268:
    cmp r5, fp
    add r5, r5, #1
    bne .Lsec01_00001204
    b .Lsec01_000014d8
.Lsec01_00001278:
    ldrb r0, [ip, #1]
    ldr r3, [sp, #24]
    mul r3, r0, r3
    ldrb r2, [ip]
    ldr r5, [sp, #20]
    mla r3, r2, r5, r3
    ldrb r1, [ip, #2]
    ldr r5, [sp, #28]
    mla r3, r1, r5, r3
    cmp r2, r1
    cmpeq r2, r0
    ldrne r0, [sp, #16]
    mov r3, r3, lsr #15
    orrne r0, r0, #1
    strne r0, [sp, #16]
    strb r3, [lr]
    ldrb r3, [ip, #3]
    add ip, ip, #4
    strb r3, [lr, #1]
    add lr, lr, #2
    b .Lsec01_000012d8
.Lsec01_000012cc:
    mov ip, r7
    mov lr, r7
    mov r4, #0
.Lsec01_000012d8:
    cmp r4, fp
    add r4, r4, #1
    bne .Lsec01_00001278
    b .Lsec01_000014d8
.Lsec01_000012e8:
    ldr r3, [r6, #404]
    cmp r3, #0
    beq .Lsec01_000014c0
    ldr r3, [r6, #400]
    cmp r3, #0
    beq .Lsec01_000014c0
    mov r1, #0
    mov r5, r7
    str r1, [sp, #36]
    b .Lsec01_0000142c
.Lsec01_00001310:
    ldrb lr, [r5]
    ldrb r1, [r5, #1]
    ldrb ip, [r5, #2]
    ldrb r3, [r5, #4]
    ldrb r0, [r5, #3]
    ldrb r2, [r5, #5]
    orr r1, r1, lr, lsl #8
    mov r1, r1, lsl #16
    orr r0, r0, ip, lsl #8
    orr r2, r2, r3, lsl #8
    mov r3, r1, lsr #24
    mov r3, r3, lsl #1
    mov r0, r0, lsl #16
    mov r2, r2, lsl #16
    str r3, [sp, #4]
    mov r3, r0, lsr #24
    mov r1, r1, lsr #16
    mov r0, r0, lsr #16
    mov r8, r3, lsl #1
    mov r3, r2, lsr #24
    mov r2, r2, lsr #16
    cmp r1, r0
    cmpeq r1, r2
    mov r9, r3, lsl #1
    and ip, r1, #255
    and r3, r0, #255
    and lr, r2, #255
    beq .Lsec01_000013fc
    ldr r0, [r6, #372]
    mov r3, r3, asr r0
    mov ip, ip, asr r0
    ldr r2, [r6, #404]
    ldr r1, [sp, #16]
    ldr r3, [r2, r3, lsl #2]
    mov lr, lr, asr r0
    orr r1, r1, #1
    ldrh r3, [r8, r3]
    str r1, [sp, #16]
    ldr r1, [sp, #24]
    mul r1, r3, r1
    ldr r3, [r2, ip, lsl #2]
    ldr ip, [sp, #4]
    ldrh r3, [ip, r3]
    ldr ip, [sp, #20]
    mla r1, r3, ip, r1
    ldr r3, [r2, lr, lsl #2]
    ldr r2, [sp, #28]
    ldrh r3, [r9, r3]
    mla r2, r3, r2, r1
    mov r2, r2, lsr #15
    mov r2, r2, lsl #16
    mov r3, r2, lsr #16
    and r3, r3, #255
    mov r3, r3, asr r0
    ldr r4, [r6, #400]
    mov r2, r2, lsr #24
    ldr r3, [r4, r3, lsl #2]
    mov r2, r2, lsl #1
    ldrh r1, [r2, r3]
.Lsec01_000013fc:
    strb r1, [r7, #1]
    ldr r0, [sp, #36]
    mov r3, r1, lsr #8
    add r0, r0, #1
    str r0, [sp, #36]
    strb r3, [r7]
    ldrb r3, [r5, #6]
    strb r3, [r7, #2]
    ldrb r3, [r5, #7]
    add r5, r5, #8
    strb r3, [r7, #3]
    add r7, r7, #4
.Lsec01_0000142c:
    ldr r1, [sp, #36]
    cmp r1, fp
    bne .Lsec01_00001310
    b .Lsec01_000014d8
.Lsec01_0000143c:
    ldrb r3, [r4, #2]
    ldrb r0, [r4, #3]
    orr r0, r0, r3, lsl #8
    ldr r3, [sp, #24]
    mul r3, r0, r3
    ldrb ip, [r4]
    ldrb r1, [r4, #1]
    orr r1, r1, ip, lsl #8
    ldr ip, [sp, #20]
    mla r3, r1, ip, r3
    ldrb lr, [r4, #4]
    ldrb r2, [r4, #5]
    ldr ip, [sp, #28]
    orr r2, r2, lr, lsl #8
    mla r3, r2, ip, r3
    cmp r1, r2
    cmpeq r1, r0
    ldrne r0, [sp, #16]
    mov r3, r3, lsr #15
    mov r3, r3, lsl #16
    mov ip, r3, lsr #24
    orrne r0, r0, #1
    mov r3, r3, lsr #16
    strne r0, [sp, #16]
    strb ip, [r5]
    strb r3, [r5, #1]
    ldrb r3, [r4, #6]
    strb r3, [r5, #2]
    ldrb r3, [r4, #7]
    add r4, r4, #8
    strb r3, [r5, #3]
    add r5, r5, #4
    b .Lsec01_000014cc
.Lsec01_000014c0:
    mov r4, r7
    mov r5, r7
    mov r6, #0
.Lsec01_000014cc:
    cmp r6, fp
    add r6, r6, #1
    bne .Lsec01_0000143c
.Lsec01_000014d8:
    ldrb r3, [sl, #10]
    sub r3, r3, #2
    strb r3, [sl, #10]
    ldrb r2, [sl, #9]
    ldrb r3, [sl, #10]
    mul r2, r3, r2
    ldrb r3, [sl, #8]
    and r2, r2, #255
    bic r3, r3, #2
    cmp r2, #7
    strb r3, [sl, #8]
    mulls r3, r2, fp
    movhi r3, r2, lsr #3
    strb r2, [sl, #11]
    mulhi r2, r3, fp
    addls r3, r3, #7
    movls r2, r3, lsr #3
    str r2, [sl, #4]
.Lsec01_00001520:
    ldr r0, [sp, #16]
    add sp, sp, #44
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x00000246
    .long 0x0000024a
.arm
png_build_grayscale_palette:
    stmdb sp!, {r4, r5, lr}
    subs r5, r1, #0
    beq .Lsec01_000015e4
    sub r3, r0, #1
    cmp r3, #7
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00001580
    .long .Lsec01_0000158c
    .long .Lsec01_00001598
    .long .Lsec01_00001580
    .long .Lsec01_000015a4
    .long .Lsec01_00001580
    .long .Lsec01_00001580
    .long .Lsec01_00001580
    .long .Lsec01_00001574
.arm
.Lsec01_00001574:
    mov r4, #256
    mov r1, #1
    b .Lsec01_000015ac
.Lsec01_00001580:
    mov r4, #0
    mov r1, r4
    b .Lsec01_000015ac
.Lsec01_0000158c:
    mov r4, #2
    mov r1, #255
    b .Lsec01_000015ac
.Lsec01_00001598:
    mov r4, #4
    mov r1, #85
    b .Lsec01_000015ac
.Lsec01_000015a4:
    mov r4, #16
    mov r1, #17
.Lsec01_000015ac:
    mov r0, #0
    mov lr, r0
    mov ip, r0
    b .Lsec01_000015cc
.Lsec01_000015bc:
    strb r3, [r2, #2]
    strb r3, [r2, #1]
    strb r3, [ip, r5]
    add ip, ip, #3
.Lsec01_000015cc:
    cmp r0, r4
    and r3, lr, #255
    add r2, r5, ip
    add lr, lr, r1
    add r0, r0, #1
    blt .Lsec01_000015bc
.Lsec01_000015e4:
    ldmia sp!, {r4, r5, lr}
    bx lr
png_do_gamma:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    mov sl, r0
    ldrb r0, [r0, #9]
    mov r5, r2
    cmp r0, #8
    movhi r2, #0
    movls r2, #1
    cmp r5, #0
    moveq r2, #0
    cmp r2, #0
    mov r6, r1
    mov r8, r3
    ldr r9, [sl]
    bne .Lsec01_00001640
    cmp r0, #16
    movne r3, #0
    moveq r3, #1
    cmp r8, #0
    moveq r3, #0
    cmp r3, #0
    beq .Lsec01_00001a0c
.Lsec01_00001640:
    ldrb r3, [sl, #8]
    cmp r3, #6
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00001a0c
    .long .Lsec01_00001894
    .long .Lsec01_00001a0c
    .long .Lsec01_0000166c
    .long .Lsec01_00001a0c
    .long .Lsec01_0000181c
    .long .Lsec01_00001a0c
    .long .Lsec01_00001744
.arm
.Lsec01_0000166c:
    cmp r0, #8
    movne ip, r6
    movne lr, #0
    moveq r1, r6
    moveq r0, #0
    beq .Lsec01_000016ac
    b .Lsec01_00001730
.Lsec01_00001688:
    ldrb r3, [r1, #-3]
    ldrb r3, [r5, r3]
    ldrb r2, [r1, #-2]
    strb r3, [r1, #-3]
    ldrb r3, [r5, r2]
    strb r3, [r1, #-2]
    ldrb r3, [r1, #-1]
    ldrb r3, [r5, r3]
    strb r3, [r1, #-1]
.Lsec01_000016ac:
    cmp r0, r9
    add r1, r1, #3
    add r0, r0, #1
    bne .Lsec01_00001688
    b .Lsec01_00001a0c
.Lsec01_000016c0:
    ldr r3, [sp, #36]
    ldrb r2, [ip, #-5]
    mov r2, r2, asr r3
    ldrb r1, [ip, #-3]
    mov r1, r1, asr r3
    ldrb r0, [ip, #-1]
    mov r0, r0, asr r3
    ldrb r3, [ip, #-6]
    ldr r2, [r8, r2, lsl #2]
    mov r3, r3, lsl #1
    ldrh r2, [r3, r2]
    mov r3, r2, lsr #8
    strb r3, [ip, #-6]
    strb r2, [ip, #-5]
    ldrb r3, [ip, #-4]
    ldr r2, [r8, r1, lsl #2]
    mov r3, r3, lsl #1
    ldrh r2, [r3, r2]
    mov r3, r2, lsr #8
    strb r3, [ip, #-4]
    strb r2, [ip, #-3]
    ldrb r3, [ip, #-2]
    ldr r2, [r8, r0, lsl #2]
    mov r3, r3, lsl #1
    ldrh r2, [r3, r2]
    mov r3, r2, lsr #8
    strb r3, [ip, #-2]
    strb r2, [ip, #-1]
.Lsec01_00001730:
    cmp lr, r9
    add ip, ip, #6
    add lr, lr, #1
    bne .Lsec01_000016c0
    b .Lsec01_00001a0c
.Lsec01_00001744:
    cmp r0, #8
    movne ip, r6
    movne lr, #0
    moveq r1, r6
    moveq r0, #0
    beq .Lsec01_00001784
    b .Lsec01_00001808
.Lsec01_00001760:
    ldrb r3, [r1, #-4]
    ldrb r3, [r5, r3]
    ldrb r2, [r1, #-3]
    strb r3, [r1, #-4]
    ldrb r3, [r5, r2]
    strb r3, [r1, #-3]
    ldrb r3, [r1, #-2]
    ldrb r3, [r5, r3]
    strb r3, [r1, #-2]
.Lsec01_00001784:
    cmp r0, r9
    add r1, r1, #4
    add r0, r0, #1
    bne .Lsec01_00001760
    b .Lsec01_00001a0c
.Lsec01_00001798:
    ldr r3, [sp, #36]
    ldrb r2, [ip, #-7]
    mov r2, r2, asr r3
    ldrb r1, [ip, #-5]
    mov r1, r1, asr r3
    ldrb r0, [ip, #-3]
    mov r0, r0, asr r3
    ldrb r3, [ip, #-8]
    ldr r2, [r8, r2, lsl #2]
    mov r3, r3, lsl #1
    ldrh r2, [r3, r2]
    mov r3, r2, lsr #8
    strb r3, [ip, #-8]
    strb r2, [ip, #-7]
    ldrb r3, [ip, #-6]
    ldr r2, [r8, r1, lsl #2]
    mov r3, r3, lsl #1
    ldrh r2, [r3, r2]
    mov r3, r2, lsr #8
    strb r3, [ip, #-6]
    strb r2, [ip, #-5]
    ldrb r3, [ip, #-4]
    ldr r2, [r8, r0, lsl #2]
    mov r3, r3, lsl #1
    ldrh r2, [r3, r2]
    mov r3, r2, lsr #8
    strb r3, [ip, #-4]
    strb r2, [ip, #-3]
.Lsec01_00001808:
    cmp lr, r9
    add ip, ip, #8
    add lr, lr, #1
    bne .Lsec01_00001798
    b .Lsec01_00001a0c
.Lsec01_0000181c:
    cmp r0, #8
    movne r1, r6
    movne r0, #0
    moveq r1, r6
    moveq r2, #0
    beq .Lsec01_00001844
    b .Lsec01_00001880
.Lsec01_00001838:
    ldrb r3, [r1, #-2]
    ldrb r3, [r5, r3]
    strb r3, [r1, #-2]
.Lsec01_00001844:
    cmp r2, r9
    add r1, r1, #2
    add r2, r2, #1
    bne .Lsec01_00001838
    b .Lsec01_00001a0c
.Lsec01_00001858:
    ldr r2, [sp, #36]
    ldrb r3, [r1, #-3]
    mov r3, r3, asr r2
    ldrb r2, [r1, #-4]
    ldr r3, [r8, r3, lsl #2]
    mov r2, r2, lsl #1
    ldrh r2, [r2, r3]
    mov r3, r2, lsr #8
    strb r3, [r1, #-4]
    strb r2, [r1, #-3]
.Lsec01_00001880:
    cmp r0, r9
    add r1, r1, #4
    add r0, r0, #1
    bne .Lsec01_00001858
    b .Lsec01_00001a0c
.Lsec01_00001894:
    cmp r0, #2
    moveq r7, r6
    moveq fp, #0
    beq .Lsec01_00001930
    b .Lsec01_00001940
.Lsec01_000018a8:
    ldrb r3, [r7, #-1]
    and r1, r3, #48
    and r0, r3, #192
    mov r2, r1, asr #2
    and r4, r3, #3
    orr r2, r2, r1, lsr #4
    and r3, r3, #12
    mov ip, r0, asr #4
    orr r1, r1, r1, lsl #2
    orr ip, ip, r0, lsr #6
    orr r1, r1, r2
    mov lr, r3, asr #2
    orr r0, r0, r0, lsr #2
    mov r2, r4, lsl #4
    orr lr, lr, r3, lsl #2
    orr r0, r0, ip
    orr r2, r2, r4, lsl #6
    ldrb ip, [r5, r1]
    orr r3, r3, r3, lsl #4
    ldrb r1, [r5, r0]
    orr r3, r3, lr
    orr r2, r2, r4
    ldrb r3, [r5, r3]
    orr r2, r2, r4, lsl #2
    mov ip, ip, lsr #2
    ldrb r2, [r5, r2]
    bic r1, r1, #63
    and ip, ip, #48
    orr r1, r1, ip
    mov r3, r3, lsr #4
    orr r1, r1, r2, lsr #6
    and r3, r3, #12
    orr r3, r3, r1
    strb r3, [r7, #-1]
.Lsec01_00001930:
    cmp fp, r9
    add r7, r7, #1
    add fp, fp, #4
    bcc .Lsec01_000018a8
.Lsec01_00001940:
    ldrb r0, [sl, #9]
    cmp r0, #4
    moveq r1, r6
    moveq r0, #0
    beq .Lsec01_00001980
    b .Lsec01_00001994
.Lsec01_00001958:
    ldrb r3, [r1, #-1]
    and r2, r3, #240
    orr r2, r2, r2, lsr #4
    and r3, r3, #15
    ldrb r2, [r5, r2]
    orr r3, r3, r3, lsl #4
    ldrb r3, [r5, r3]
    bic r2, r2, #15
    orr r2, r2, r3, lsr #4
    strb r2, [r1, #-1]
.Lsec01_00001980:
    cmp r0, r9
    add r1, r1, #1
    add r0, r0, #2
    bcc .Lsec01_00001958
    b .Lsec01_00001a0c
.Lsec01_00001994:
    cmp r0, #8
    moveq r2, #0
    beq .Lsec01_000019b4
    b .Lsec01_000019c0
.Lsec01_000019a4:
    ldrb r3, [r2, r6]
    ldrb r3, [r5, r3]
    strb r3, [r2, r6]
    add r2, r2, #1
.Lsec01_000019b4:
    cmp r2, r9
    bne .Lsec01_000019a4
    b .Lsec01_00001a0c
.Lsec01_000019c0:
    cmp r0, #16
    moveq r1, r6
    moveq r0, #0
    beq .Lsec01_000019fc
    b .Lsec01_00001a0c
.Lsec01_000019d4:
    ldr r2, [sp, #36]
    ldrb r3, [r1, #-1]
    mov r3, r3, asr r2
    ldrb r2, [r1, #-2]
    ldr r3, [r8, r3, lsl #2]
    mov r2, r2, lsl #1
    ldrh r2, [r2, r3]
    mov r3, r2, lsr #8
    strb r3, [r1, #-2]
    strb r2, [r1, #-1]
.Lsec01_000019fc:
    cmp r0, r9
    add r1, r1, #2
    add r0, r0, #1
    bne .Lsec01_000019d4
.Lsec01_00001a0c:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
png_do_expand_palette:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    mov r4, r0
    ldrb r0, [r0, #8]
    cmp r0, #3
    mov r6, r2
    mov r7, r3
    ldr r8, [sp, #24]
    ldr ip, [r4]
    bne .Lsec01_00001c90
    ldrb r3, [r4, #9]
    cmp r3, #7
    bhi .Lsec01_00001b68
    cmp r3, #2
    beq .Lsec01_00001ab4
    cmp r3, #4
    beq .Lsec01_00001b0c
    cmp r3, #1
    bne .Lsec01_00001b58
    add r3, ip, #7
    sub r2, ip, #1
    mvn r3, r3
    add r5, r1, ip
    add lr, r1, r2, lsr #3
    and r0, r3, #7
    mov r2, r5
    b .Lsec01_00001aa4
.Lsec01_00001a7c:
    ldrb r3, [lr]
    mov r3, r3, asr r0
    ands r3, r3, #1
    movne r3, #1
    cmp r0, #7
    strb r3, [r2, #-1]
    add r0, r0, #1
    subeq lr, lr, #1
    moveq r0, #0
    sub r2, r2, #1
.Lsec01_00001aa4:
    rsb r3, ip, r5
    cmp r2, r3
    bne .Lsec01_00001a7c
    b .Lsec01_00001b58
.Lsec01_00001ab4:
    add r3, ip, #3
    mvn r3, r3
    sub r2, ip, #1
    and r3, r3, #3
    add r5, r1, ip
    add lr, r1, r2, lsr #2
    mov r0, r5
    mov r2, r3, lsl #1
    b .Lsec01_00001afc
.Lsec01_00001ad8:
    ldrb r3, [lr]
    mov r3, r3, asr r2
    cmp r2, #6
    and r3, r3, #3
    add r2, r2, #2
    strb r3, [r0, #-1]
    subeq lr, lr, #1
    moveq r2, #0
    sub r0, r0, #1
.Lsec01_00001afc:
    rsb r3, ip, r5
    cmp r0, r3
    bne .Lsec01_00001ad8
    b .Lsec01_00001b58
.Lsec01_00001b0c:
    sub r2, ip, #1
    add r5, r1, ip
    and r3, ip, #1
    add lr, r1, r2, lsr #1
    mov r0, r5
    mov r2, r3, lsl #2
    b .Lsec01_00001b4c
.Lsec01_00001b28:
    ldrb r3, [lr]
    mov r3, r3, asr r2
    cmp r2, #4
    and r3, r3, #15
    add r2, r2, #4
    strb r3, [r0, #-1]
    subeq lr, lr, #1
    moveq r2, #0
    sub r0, r0, #1
.Lsec01_00001b4c:
    rsb r3, ip, r5
    cmp r0, r3
    bne .Lsec01_00001b28
.Lsec01_00001b58:
    mov r3, #8
    strb r3, [r4, #11]
    strb r3, [r4, #9]
    str ip, [r4, #4]
.Lsec01_00001b68:
    ldrb r3, [r4, #9]
    cmp r3, #8
    bne .Lsec01_00001c90
    cmp r7, #0
    add lr, r1, ip
    beq .Lsec01_00001c18
    add r3, r1, ip, lsl #2
    sub r1, r3, #1
    mov r0, lr
    b .Lsec01_00001be4
.Lsec01_00001b90:
    ldrb r3, [r0, #-1]
    cmp r3, r8
    ldrltb r3, [r7, r3]
    mvnge r3, #0
    strb r3, [r1]
    ldrb r3, [r0, #-1]
    sub r5, r1, #1
    mov r1, #3
    mla r3, r1, r3, r6
    ldrb r3, [r3, #2]
    mov r2, r5
    strb r3, [r2], #-1
    ldrb r3, [r0, #-1]
    mla r3, r1, r3, r6
    ldrb r3, [r3, #1]
    strb r3, [r5, #-1]
    ldrb r3, [r0, #-1]!
    mul r3, r1, r3
    ldrb r3, [r3, r6]
    strb r3, [r2, #-1]
    sub r1, r2, #2
.Lsec01_00001be4:
    rsb r3, ip, lr
    cmp r0, r3
    bne .Lsec01_00001b90
    mov r3, #4
    strb r3, [r4, #10]
    add r3, r3, r3
    strb r3, [r4, #9]
    add r3, r3, #24
    mov r2, ip, lsl #2
    strb r3, [r4, #11]
    mov r3, #6
    str r2, [r4, #4]
    b .Lsec01_00001c8c
.Lsec01_00001c18:
    mov r3, #3
    mul r5, ip, r3
    mov r2, r7
    add r1, r1, r5
    b .Lsec01_00001c5c
.Lsec01_00001c2c:
    ldrb r3, [r2, lr]
    mla r3, r0, r3, r6
    ldrb r3, [r3, #2]
    strb r3, [r1, #-1]
    ldrb r3, [r2, lr]
    mla r3, r0, r3, r6
    ldrb r3, [r3, #1]
    strb r3, [r1, #-2]
    ldrb r3, [r2, lr]
    mul r3, r0, r3
    ldrb r3, [r3, r6]
    strb r3, [r1, #-3]!
.Lsec01_00001c5c:
    sub r2, r2, #1
    mvn r3, ip
    cmp r2, r3
    mov r0, #3
    bne .Lsec01_00001c2c
    add r3, r0, #5
    strb r3, [r4, #9]
    strb r0, [r4, #10]
    add r3, r3, #16
    str r5, [r4, #4]
    strb r3, [r4, #11]
    mov r3, #2
.Lsec01_00001c8c:
    strb r3, [r4, #8]
.Lsec01_00001c90:
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
png_do_expand:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    ldrb r3, [r0, #8]
    mov r6, r0
    cmp r3, #0
    mov r0, r1
    mov r7, r2
    ldr r4, [r6]
    bne .Lsec01_00001f1c
    ldrb r3, [r6, #9]
    cmp r2, #0
    moveq sl, r2
    ldrneh sl, [r2, #8]
    cmp r3, #7
    bhi .Lsec01_00001e28
    cmp r3, #2
    beq .Lsec01_00001d44
    cmp r3, #4
    beq .Lsec01_00001db0
    cmp r3, #1
    bne .Lsec01_00001e18
    add r3, r4, #7
    sub r2, r4, #1
    mvn r3, r3
    add r1, r1, r4
    add lr, r0, r2, lsr #3
    and ip, r3, #7
    mov r2, r1
    b .Lsec01_00001d30
.Lsec01_00001d08:
    ldrb r3, [lr]
    mov r3, r3, asr ip
    ands r3, r3, #1
    mvnne r3, #0
    cmp ip, #7
    strb r3, [r2, #-1]
    add ip, ip, #1
    subeq lr, lr, #1
    moveq ip, #0
    sub r2, r2, #1
.Lsec01_00001d30:
    rsb r3, r4, r1
    cmp r2, r3
    bne .Lsec01_00001d08
    mov r3, #255
    b .Lsec01_00001e0c
.Lsec01_00001d44:
    add r3, r4, #3
    mvn r3, r3
    add r5, r1, r4
    and r3, r3, #3
    sub r2, r4, #1
    add r1, r1, r2, lsr #2
    mov ip, r3, lsl #1
    mov lr, r5
    b .Lsec01_00001d9c
.Lsec01_00001d68:
    ldrb r3, [r1]
    mov r3, r3, asr ip
    and r3, r3, #3
    mov r2, r3, lsl #4
    orr r2, r2, r3, lsl #6
    orr r3, r3, r3, lsl #2
    cmp ip, #6
    orr r3, r3, r2
    add ip, ip, #2
    strb r3, [lr, #-1]
    subeq r1, r1, #1
    moveq ip, #0
    sub lr, lr, #1
.Lsec01_00001d9c:
    rsb r3, r4, r5
    cmp lr, r3
    bne .Lsec01_00001d68
    mov r3, #85
    b .Lsec01_00001e0c
.Lsec01_00001db0:
    add r3, r4, #1
    mvn r3, r3
    sub r2, r4, #1
    and r3, r3, #1
    add r1, r1, r4
    add lr, r0, r2, lsr #1
    mov ip, r1
    mov r2, r3, lsl #2
    b .Lsec01_00001dfc
.Lsec01_00001dd4:
    ldrb r3, [lr]
    mov r3, r3, asr r2
    and r3, r3, #15
    cmp r2, #4
    orr r3, r3, r3, lsl #4
    mov r2, #4
    strb r3, [ip, #-1]
    subeq lr, lr, #1
    moveq r2, #0
    sub ip, ip, #1
.Lsec01_00001dfc:
    rsb r3, r4, r1
    cmp ip, r3
    bne .Lsec01_00001dd4
    mov r3, #17
.Lsec01_00001e0c:
    mul r3, sl, r3
    mov r3, r3, lsl #16
    mov sl, r3, lsr #16
.Lsec01_00001e18:
    mov r3, #8
    strb r3, [r6, #11]
    strb r3, [r6, #9]
    str r4, [r6, #4]
.Lsec01_00001e28:
    cmp r7, #0
    beq .Lsec01_000020e4
    ldrb r3, [r6, #9]
    cmp r3, #8
    bne .Lsec01_00001e84
    add r3, r0, r4, lsl #1
    add r1, r0, r4
    sub ip, r3, #1
    mov lr, r1
    b .Lsec01_00001e74
.Lsec01_00001e50:
    ldrb r3, [lr, #-1]
    cmp r3, sl
    moveq r3, #0
    mvnne r3, #0
    strb r3, [ip]
    ldrb r3, [lr, #-1]!
    sub r2, ip, #1
    strb r3, [r2], #-1
    mov ip, r2
.Lsec01_00001e74:
    rsb r3, r4, r1
    cmp lr, r3
    bne .Lsec01_00001e50
    b .Lsec01_00001efc
.Lsec01_00001e84:
    cmp r3, #16
    bne .Lsec01_00001efc
    ldr r3, [r6, #4]
    add r2, r0, r3, lsl #1
    add r1, r0, r3
    sub ip, r2, #1
    mov r5, #0
    b .Lsec01_00001eec
.Lsec01_00001ea4:
    ldrb r2, [r1, #-2]
    ldrb r3, [r1, #-1]
    orr r3, r3, r2, lsl #8
    cmp r3, sl
    streqb r8, [ip, #-1]
    streqb r8, [ip]
    strneb r7, [ip, #-1]
    strneb r7, [ip]
    sub r0, ip, #1
    sub lr, r0, #1
    ldrb r3, [r1, #-1]
    subne lr, r0, #1
    mov r2, lr
    strb r3, [r2], #-1
    ldrb r3, [r1, #-2]!
    strb r3, [lr, #-1]
    add r5, r5, #1
    sub ip, r2, #1
.Lsec01_00001eec:
    cmp r5, r4
    mov r8, #0
    mvn r7, #0
    bne .Lsec01_00001ea4
.Lsec01_00001efc:
    ldrb r3, [r6, #9]
    mov r3, r3, lsl #1
    and r2, r3, #255
    mov r3, #4
    strb r3, [r6, #8]
    cmp r2, #7
    mov r3, #2
    b .Lsec01_000020c4
.Lsec01_00001f1c:
    cmp r3, #2
    movne r3, #0
    moveq r3, #1
    cmp r2, #0
    moveq r3, #0
    cmp r3, #0
    beq .Lsec01_000020e4
    ldrb r3, [r6, #9]
    cmp r3, #8
    bne .Lsec01_00001fc8
    ldr r3, [r6, #4]
    add r2, r1, r4, lsl #2
    sub ip, r2, #1
    add r1, r1, r3
    mov r0, #0
    b .Lsec01_00001fbc
.Lsec01_00001f5c:
    ldrb r2, [r1, #-3]
    ldrh r3, [r7, #2]
    cmp r2, r3
    bne .Lsec01_00001f90
    ldrb r2, [r1, #-2]
    ldrh r3, [r7, #4]
    cmp r2, r3
    bne .Lsec01_00001f90
    ldrh r3, [r7, #6]
    ldrb r2, [r1, #-1]
    cmp r2, r3
    moveq r3, #0
    beq .Lsec01_00001f94
.Lsec01_00001f90:
    mvn r3, #0
.Lsec01_00001f94:
    strb r3, [ip], #-1
    ldrb r3, [r1, #-1]
    mov r2, ip
    strb r3, [r2], #-1
    ldrb r3, [r1, #-2]
    strb r3, [ip, #-1]
    ldrb r3, [r1, #-3]!
    strb r3, [r2, #-1]
    add r0, r0, #1
    sub ip, r2, #2
.Lsec01_00001fbc:
    cmp r0, r4
    bne .Lsec01_00001f5c
    b .Lsec01_000020a8
.Lsec01_00001fc8:
    cmp r3, #16
    bne .Lsec01_000020a8
    ldr r3, [r6, #4]
    add r2, r1, r4, lsl #3
    add lr, r1, r3
    sub r0, r2, #1
    mov sl, #0
    b .Lsec01_00002098
.Lsec01_00001fe8:
    ldrb r3, [lr, #-5]
    ldrb r2, [lr, #-6]
    ldrh r1, [r7, #2]
    orr r3, r3, r2, lsl #8
    cmp r3, r1
    bne .Lsec01_00002044
    ldrb r3, [lr, #-3]
    ldrb r2, [lr, #-4]
    ldrh r1, [r7, #4]
    orr r3, r3, r2, lsl #8
    cmp r3, r1
    bne .Lsec01_00002044
    ldrb r3, [lr, #-1]
    ldrb r1, [lr, #-2]
    ldrh r2, [r7, #6]
    orr r3, r3, r1, lsl #8
    cmp r3, r2
    mov r8, #0
    mov ip, r0
    streqb r8, [ip], #-1
    subeq r1, ip, #1
    streqb r8, [r0, #-1]
    beq .Lsec01_00002050
.Lsec01_00002044:
    strb r9, [r5], #-1
    strb r9, [r0, #-1]
    sub r1, r5, #1
.Lsec01_00002050:
    ldrb r2, [lr, #-1]
    mov r3, r1
    strb r2, [r3], #-1
    ldrb r2, [lr, #-2]
    strb r2, [r1, #-1]
    ldrb r2, [lr, #-3]
    strb r2, [r3, #-1]
    ldrb r2, [lr, #-4]
    sub r3, r3, #1
    strb r2, [r3, #-1]
    ldrb r2, [lr, #-5]
    sub r3, r3, #1
    strb r2, [r3, #-1]
    ldrb r2, [lr, #-6]!
    sub r3, r3, #1
    strb r2, [r3, #-1]
    add sl, sl, #1
    sub r0, r3, #2
.Lsec01_00002098:
    cmp sl, r4
    mov r5, r0
    mvn r9, #0
    bne .Lsec01_00001fe8
.Lsec01_000020a8:
    ldrb r3, [r6, #9]
    mov r3, r3, lsl #2
    and r2, r3, #255
    mov r3, #6
    strb r3, [r6, #8]
    cmp r2, #7
    mov r3, #4
.Lsec01_000020c4:
    strb r3, [r6, #10]
    mulls r3, r2, r4
    movhi r3, r2, lsr #3
    strb r2, [r6, #11]
    mulhi r2, r3, r4
    addls r3, r3, #7
    movls r2, r3, lsr #3
    str r2, [r6, #4]
.Lsec01_000020e4:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    bx lr
png_do_dither:
    ldrb ip, [r0, #8]
    stmdb sp!, {r4, r5, r6, lr}
    subs r4, r2, #0
    movne r4, #1
    mov r6, r2
    cmp ip, #2
    movne r2, #0
    andeq r2, r4, #1
    cmp r2, #0
    mov r5, r1
    ldr lr, [r0]
    mov r1, r3
    beq .Lsec01_00002174
    ldrb r3, [r0, #9]
    cmp r3, #8
    moveq ip, r5
    moveq r4, #0
    beq .Lsec01_00002164
    b .Lsec01_00002174
.Lsec01_00002138:
    ldrb r3, [ip, #-2]
    ldrb r2, [ip, #-3]
    mov r3, r3, lsr #5
    ldrb r1, [ip, #-1]
    mov r2, r2, lsr #5
    mov r3, r3, lsl #3
    orr r3, r3, r2, lsl #6
    orr r3, r3, r1, lsr #5
    ldrb r3, [r6, r3]
    strb r3, [r4, r5]
    add r4, r4, #1
.Lsec01_00002164:
    cmp r4, lr
    add ip, ip, #3
    bne .Lsec01_00002138
    b .Lsec01_000021d8
.Lsec01_00002174:
    cmp ip, #6
    movne r3, #0
    andeq r3, r4, #1
    cmp r3, #0
    beq .Lsec01_00002210
    ldrb r3, [r0, #9]
    cmp r3, #8
    moveq ip, r5
    moveq r4, #0
    beq .Lsec01_000021cc
    b .Lsec01_00002210
.Lsec01_000021a0:
    ldrb r3, [ip, #-3]
    ldrb r2, [ip, #-4]
    mov r3, r3, lsr #5
    ldrb r1, [ip, #-2]
    mov r2, r2, lsr #5
    mov r3, r3, lsl #3
    orr r3, r3, r2, lsl #6
    orr r3, r3, r1, lsr #5
    ldrb r3, [r6, r3]
    strb r3, [r4, r5]
    add r4, r4, #1
.Lsec01_000021cc:
    cmp r4, lr
    add ip, ip, #4
    bne .Lsec01_000021a0
.Lsec01_000021d8:
    ldrb r2, [r0, #9]
    mov r3, #3
    cmp r2, #7
    strb r3, [r0, #8]
    mov r3, #1
    strb r3, [r0, #10]
    mulls r3, r2, lr
    movhi r3, r2, lsr #3
    mulhi r3, lr, r3
    addls r3, r3, #7
    movls r3, r3, lsr #3
    strb r2, [r0, #11]
    str r3, [r0, #4]
    b .Lsec01_00002258
.Lsec01_00002210:
    cmp ip, #3
    movne r3, #0
    moveq r3, #1
    cmp r1, #0
    moveq r3, #0
    cmp r3, #0
    beq .Lsec01_00002258
    ldrb r3, [r0, #9]
    cmp r3, #8
    moveq r2, #0
    beq .Lsec01_00002250
    b .Lsec01_00002258
.Lsec01_00002240:
    ldrb r3, [r2, r5]
    ldrb r3, [r1, r3]
    strb r3, [r2, r5]
    add r2, r2, #1
.Lsec01_00002250:
    cmp r2, lr
    bne .Lsec01_00002240
.Lsec01_00002258:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
png_build_gamma_table:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr r5, [r0, #376]
    sub sp, sp, #60
    mov r6, r0
    mov r1, #0
    mov r0, r5
.Lsec01_00002278:
    bl __aeabi_fcmpeq
    cmp r0, #0
    bne .Lsec01_00002a14
    ldrb r3, [r6, #323]
    cmp r3, #8
    bhi .Lsec01_00002498
    ldr r4, [r6, #380]
    mov r0, r4
.Lsec01_00002298:
    bl __aeabi_f2d
    ldr r2, [pc, #1916]
    ldr r3, [pc, #1916]
.Lsec01_000022a4:
    bl __aeabi_dcmpgt
    cmp r0, #0
    moveq r7, #0
    ldreq r8, [pc, #1904]
    beq .Lsec01_000022e4
    mov r1, r4
    mov r0, r5
.Lsec01_000022c0:
    bl __aeabi_fmul
.Lsec01_000022c4:
    bl __aeabi_f2d
    mov r2, r0
    mov r3, r1
    mov r0, #0
    ldr r1, [pc, #1868]
.Lsec01_000022d8:
    bl __aeabi_ddiv
    mov r7, r0
    mov r8, r1
.Lsec01_000022e4:
    mov r0, r6
    mov r1, #256
.Lsec01_000022ec:
    bl png_malloc
    str r0, [r6, #384]
    mov r5, #0
.Lsec01_000022f8:
    mov r0, r5
.Lsec01_000022fc:
    bl __aeabi_i2d
    mov r2, #0
    ldr r3, [pc, #1824]
.Lsec01_00002308:
    bl __aeabi_ddiv
    mov r2, r7
    mov r3, r8
    ldr r4, [r6, #384]
.Lsec01_00002318:
    bl pow
    mov r2, #0
    ldr r3, [pc, #1796]
.Lsec01_00002324:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #1788]
.Lsec01_00002330:
    bl __aeabi_dadd
.Lsec01_00002334:
    bl __aeabi_d2uiz
    strb r0, [r5, r4]
    add r5, r5, #1
    cmp r5, #256
    bne .Lsec01_000022f8
    ldr r2, [r6, #140]
    ldr r3, [pc, #1760]
    and r3, r2, r3
    cmp r3, #0
    beq .Lsec01_00002a14
    ldr r0, [r6, #376]
.Lsec01_00002360:
    bl __aeabi_f2d
    mov r2, r0
    mov r3, r1
    mov r0, #0
    ldr r1, [pc, #1712]
.Lsec01_00002374:
    bl __aeabi_ddiv
    mov r7, r0
    mov r8, r1
    mov r0, r6
    mov r1, r5
.Lsec01_00002388:
    bl png_malloc
    str r0, [r6, #392]
    mov r5, #0
.Lsec01_00002394:
    mov r0, r5
.Lsec01_00002398:
    bl __aeabi_i2d
    mov r2, #0
    ldr r3, [pc, #1668]
.Lsec01_000023a4:
    bl __aeabi_ddiv
    mov r2, r7
    mov r3, r8
    ldr r4, [r6, #392]
.Lsec01_000023b4:
    bl pow
    mov r2, #0
    ldr r3, [pc, #1640]
.Lsec01_000023c0:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #1632]
.Lsec01_000023cc:
    bl __aeabi_dadd
.Lsec01_000023d0:
    bl __aeabi_d2uiz
    strb r0, [r5, r4]
    add r5, r5, #1
    cmp r5, #256
    bne .Lsec01_00002394
    mov r1, r5
    mov r0, r6
.Lsec01_000023ec:
    bl png_malloc
    str r0, [r6, #388]
    ldr r0, [r6, #380]
.Lsec01_000023f8:
    bl __aeabi_f2d
    ldr r2, [pc, #1564]
    ldr r3, [pc, #1564]
    mov r4, r0
    mov r5, r1
.Lsec01_0000240c:
    bl __aeabi_dcmpgt
    cmp r0, #0
    beq .Lsec01_00002430
    mov r2, r4
    mov r3, r5
    mov r0, #0
    ldr r1, [pc, #1532]
.Lsec01_00002428:
    bl __aeabi_ddiv
    b .Lsec01_00002438
.Lsec01_00002430:
    ldr r0, [r6, #376]
.Lsec01_00002434:
    bl __aeabi_f2d
.Lsec01_00002438:
    mov r7, r0
    mov r8, r1
    mov r5, #0
.Lsec01_00002444:
    mov r0, r5
.Lsec01_00002448:
    bl __aeabi_i2d
    mov r2, #0
    ldr r3, [pc, #1492]
.Lsec01_00002454:
    bl __aeabi_ddiv
    mov r2, r7
    mov r3, r8
    ldr r4, [r6, #388]
.Lsec01_00002464:
    bl pow
    mov r2, #0
    ldr r3, [pc, #1464]
.Lsec01_00002470:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #1456]
.Lsec01_0000247c:
    bl __aeabi_dadd
.Lsec01_00002480:
    bl __aeabi_d2uiz
    strb r0, [r5, r4]
    add r5, r5, #1
    cmp r5, #256
    beq .Lsec01_00002a14
    b .Lsec01_00002444
.Lsec01_00002498:
    ldrb r3, [r6, #322]
    tst r3, #2
    ldreqb r1, [r6, #411]
    beq .Lsec01_000024c4
    ldrb r2, [r6, #408]
    ldrb r3, [r6, #409]
    ldrb r1, [r6, #410]
    cmp r3, r2
    movlt r3, r2
    cmp r1, r3
    movlt r1, r3
.Lsec01_000024c4:
    ldr r3, [r6, #140]
    cmp r1, #0
    movle r1, #0
    rsbgt r1, r1, #16
    tst r3, #1024
    str r1, [sp, #16]
    beq .Lsec01_000024f4
    ldr r2, [sp, #16]
    cmp r2, #5
    movle r3, #6
    strle r3, [sp, #16]
    ble .Lsec01_00002518
.Lsec01_000024f4:
    ldr r4, [sp, #16]
    cmp r4, #8
    movgt ip, #8
    strgt ip, [sp, #16]
    bgt .Lsec01_00002518
    ldr r1, [sp, #16]
    cmp r1, #0
    movlt r1, #0
    str r1, [sp, #16]
.Lsec01_00002518:
    ldr r2, [sp, #16]
    and r3, r2, #255
    rsb r9, r2, #8
    str r3, [r6, #372]
    mov r3, #1
    mov r3, r3, lsl r9
    ldr r4, [r6, #380]
    mov r0, r4
    str r3, [sp, #20]
.Lsec01_0000253c:
    bl __aeabi_f2d
    ldr r2, [pc, #1240]
    ldr r3, [pc, #1240]
.Lsec01_00002548:
    bl __aeabi_dcmpgt
    cmp r0, #0
    ldreq r4, [pc, #1232]
    moveq r3, #0
    streq r3, [sp, #8]
    streq r4, [sp, #12]
    beq .Lsec01_00002590
    ldr r1, [r6, #376]
    mov r0, r4
.Lsec01_0000256c:
    bl __aeabi_fmul
.Lsec01_00002570:
    bl __aeabi_f2d
    mov r2, r0
    mov r3, r1
    mov r0, #0
    ldr r1, [pc, #1184]
.Lsec01_00002584:
    bl __aeabi_ddiv
    str r0, [sp, #8]
    str r1, [sp, #12]
.Lsec01_00002590:
    ldr r4, [sp, #20]
    mov r4, r4, lsl #2
    mov r0, r6
    mov r1, r4
    str r4, [sp]
.Lsec01_000025a4:
    bl png_malloc
    ldr r3, [r6, #140]
    ands r3, r3, #1152
    str r0, [r6, #396]
    moveq sl, r3
    movne r5, #0
    bne .Lsec01_000025d4
    b .Lsec01_000027b4
.Lsec01_000025c4:
    ldr r4, [r6, #396]
.Lsec01_000025c8:
    bl png_malloc
    str r0, [r4, r5, lsl #2]
    add r5, r5, #1
.Lsec01_000025d4:
    ldr ip, [sp, #20]
    cmp r5, ip
    mov r0, r6
    mov r1, #512
    blt .Lsec01_000025c4
    add r2, sp, #8
    ldmia r2, {r2, r3}
    mov r0, #0
    ldr r1, [pc, #1068]
.Lsec01_000025f8:
    bl __aeabi_ddiv
    str r0, [sp, #48]
    str r1, [sp, #52]
    mov r7, #0
    mov sl, r7
.Lsec01_0000260c:
    mov r0, sl
.Lsec01_00002610:
    bl __aeabi_i2d
    mov r2, #0
    ldr r3, [pc, #1040]
.Lsec01_0000261c:
    bl __aeabi_dadd
    mov r2, #0
    ldr r3, [pc, #1036]
.Lsec01_00002628:
    bl __aeabi_dmul
    add r2, sp, #48
    ldmia r2, {r2, r3}
    ldr r4, [sp, #20]
.Lsec01_00002638:
    bl pow
    mov r8, r4, lsl #8
    mov r4, r0
    mov r0, r8
    mov r5, r1
.Lsec01_0000264c:
    bl __aeabi_i2d
    cmp r8, #0
    movlt r2, #0
    ldrlt r3, [pc, #988]
.Lsec01_0000265c:
    bllt __aeabi_dadd
    mov r2, r0
    mov r3, r1
    mov r0, r4
    mov r1, r5
.Lsec01_00002670:
    bl __aeabi_dmul
.Lsec01_00002674:
    bl __aeabi_d2uiz
    b .Lsec01_000026a0
.Lsec01_0000267c:
    ldr r1, [sp, #16]
    mov r3, #255
    and r3, r7, r3, asr r1
    mov r2, r7, lsr r9
    ldr r1, [r6, #396]
    ldr r3, [r1, r3, lsl #2]
    mov r2, r2, lsl #1
    strh ip, [r2, r3]
    add r7, r7, #1
.Lsec01_000026a0:
    cmp r7, r0
    orr ip, sl, sl, lsl #8
    bls .Lsec01_0000267c
    add sl, sl, #1
    cmp sl, #256
    beq .Lsec01_000026e4
    b .Lsec01_0000260c
.Lsec01_000026bc:
    ldr r2, [sp, #16]
    mov r3, #255
    and r3, r7, r3, asr r2
    mov r2, r7, lsr r9
    ldr r1, [r6, #396]
    ldr r3, [r1, r3, lsl #2]
    mov r2, r2, lsl #1
    mvn r4, #0
    strh r4, [r2, r3]
    add r7, r7, #1
.Lsec01_000026e4:
    cmp r7, r8
    bcc .Lsec01_000026bc
    b .Lsec01_000027c0
.Lsec01_000026f0:
    mov r1, #512
    mov r0, r6
    ldr r4, [r6, #396]
.Lsec01_000026fc:
    bl png_malloc
    ldr r3, [pc, #824]
    ldr ip, [sp, #16]
    ldr r3, [r3, ip, lsl #2]
    mul r3, sl, r3
    mov r1, sl, lsl #2
    str r0, [r4, sl, lsl #2]
    str r1, [sp, #4]
    mov r7, r3, lsr #4
    mov r8, #0
.Lsec01_00002724:
    ldr r3, [r6, #396]
    ldr r2, [sp, #4]
    mov r0, r7
    ldr fp, [r3, r2]
.Lsec01_00002734:
    bl __aeabi_i2d
    cmp r7, #0
    mov r9, r8, lsl #1
    mov r4, r0
    mov r5, r1
    add r7, r7, #256
    mov r2, #0
    ldr r3, [pc, #740]
    add r8, r8, #1
    bge .Lsec01_00002768
.Lsec01_0000275c:
    bl __aeabi_dadd
    mov r4, r0
    mov r5, r1
.Lsec01_00002768:
    mov r2, #0
    ldr r3, [pc, #720]
    mov r0, r4
    mov r1, r5
.Lsec01_00002778:
    bl __aeabi_ddiv
    add r2, sp, #8
    ldmia r2, {r2, r3}
.Lsec01_00002784:
    bl pow
    mov r2, #0
    ldr r3, [pc, #688]
.Lsec01_00002790:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #656]
.Lsec01_0000279c:
    bl __aeabi_dadd
.Lsec01_000027a0:
    bl __aeabi_d2uiz
    cmp r8, #256
    strh r0, [r9, fp]
    bne .Lsec01_00002724
    add sl, sl, #1
.Lsec01_000027b4:
    ldr r3, [sp, #20]
    cmp sl, r3
    blt .Lsec01_000026f0
.Lsec01_000027c0:
    ldr r2, [r6, #140]
    ldr r3, [pc, #616]
    and r3, r2, r3
    cmp r3, #0
    beq .Lsec01_00002a14
    ldr r0, [r6, #376]
.Lsec01_000027d8:
    bl __aeabi_f2d
    mov r2, r0
    mov r3, r1
    mov r0, #0
    ldr r1, [pc, #568]
.Lsec01_000027ec:
    bl __aeabi_ddiv
    str r0, [sp, #40]
    str r1, [sp, #44]
    mov r0, r6
    ldr r1, [sp]
.Lsec01_00002800:
    bl png_malloc
    mov sl, #0
    str r0, [r6, #404]
    b .Lsec01_000028d4
.Lsec01_00002810:
    mov r1, #512
    mov r0, r6
    ldr r4, [r6, #404]
.Lsec01_0000281c:
    bl png_malloc
    ldr r3, [pc, #536]
    ldr ip, [sp, #16]
    ldr r3, [r3, ip, lsl #2]
    mul r3, sl, r3
    mov r1, sl, lsl #2
    str r0, [r4, sl, lsl #2]
    str r1, [sp, #24]
    mov r7, r3, lsr #4
    mov r8, #0
.Lsec01_00002844:
    ldr r3, [r6, #404]
    ldr r2, [sp, #24]
    mov r0, r7
    ldr fp, [r3, r2]
.Lsec01_00002854:
    bl __aeabi_i2d
    cmp r7, #0
    mov r9, r8, lsl #1
    mov r4, r0
    mov r5, r1
    add r7, r7, #256
    mov r2, #0
    ldr r3, [pc, #452]
    add r8, r8, #1
    bge .Lsec01_00002888
.Lsec01_0000287c:
    bl __aeabi_dadd
    mov r4, r0
    mov r5, r1
.Lsec01_00002888:
    mov r2, #0
    ldr r3, [pc, #432]
    mov r0, r4
    mov r1, r5
.Lsec01_00002898:
    bl __aeabi_ddiv
    add r2, sp, #40
    ldmia r2, {r2, r3}
.Lsec01_000028a4:
    bl pow
    mov r2, #0
    ldr r3, [pc, #400]
.Lsec01_000028b0:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #368]
.Lsec01_000028bc:
    bl __aeabi_dadd
.Lsec01_000028c0:
    bl __aeabi_d2uiz
    cmp r8, #256
    strh r0, [r9, fp]
    bne .Lsec01_00002844
    add sl, sl, #1
.Lsec01_000028d4:
    ldr r3, [sp, #20]
    cmp sl, r3
    blt .Lsec01_00002810
    ldr r0, [r6, #380]
.Lsec01_000028e4:
    bl __aeabi_f2d
    ldr r2, [pc, #304]
    ldr r3, [pc, #304]
    mov r4, r0
    mov r5, r1
.Lsec01_000028f8:
    bl __aeabi_dcmpgt
    cmp r0, #0
    beq .Lsec01_0000291c
    mov r2, r4
    mov r3, r5
    mov r0, #0
    ldr r1, [pc, #272]
.Lsec01_00002914:
    bl __aeabi_ddiv
    b .Lsec01_00002924
.Lsec01_0000291c:
    ldr r0, [r6, #376]
.Lsec01_00002920:
    bl __aeabi_f2d
.Lsec01_00002924:
    str r0, [sp, #32]
    str r1, [sp, #36]
    ldr r1, [sp]
    mov r0, r6
.Lsec01_00002934:
    bl png_malloc
    mov sl, #0
    str r0, [r6, #400]
    b .Lsec01_00002a08
.Lsec01_00002944:
    mov r1, #512
    mov r0, r6
    ldr r4, [r6, #400]
.Lsec01_00002950:
    bl png_malloc
    ldr r3, [pc, #228]
    ldr ip, [sp, #16]
    ldr r3, [r3, ip, lsl #2]
    mul r3, sl, r3
    mov r1, sl, lsl #2
    str r0, [r4, sl, lsl #2]
    str r1, [sp, #28]
    mov r7, r3, lsr #4
    mov r8, #0
.Lsec01_00002978:
    ldr r3, [r6, #400]
    ldr r2, [sp, #28]
    mov r0, r7
    ldr fp, [r3, r2]
.Lsec01_00002988:
    bl __aeabi_i2d
    cmp r7, #0
    mov r9, r8, lsl #1
    mov r4, r0
    mov r5, r1
    add r7, r7, #256
    mov r2, #0
    ldr r3, [pc, #144]
    add r8, r8, #1
    bge .Lsec01_000029bc
.Lsec01_000029b0:
    bl __aeabi_dadd
    mov r4, r0
    mov r5, r1
.Lsec01_000029bc:
    mov r2, #0
    ldr r3, [pc, #124]
    mov r0, r4
    mov r1, r5
.Lsec01_000029cc:
    bl __aeabi_ddiv
    add r2, sp, #32
    ldmia r2, {r2, r3}
.Lsec01_000029d8:
    bl pow
    mov r2, #0
    ldr r3, [pc, #92]
.Lsec01_000029e4:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #60]
.Lsec01_000029f0:
    bl __aeabi_dadd
.Lsec01_000029f4:
    bl __aeabi_d2uiz
    cmp r8, #256
    strh r0, [r9, fp]
    bne .Lsec01_00002978
    add sl, sl, #1
.Lsec01_00002a08:
    ldr r3, [sp, #20]
    cmp sl, r3
    blt .Lsec01_00002944
.Lsec01_00002a14:
    add sp, sp, #60
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0xa0b5ed8d
    .long 0x3eb0c6f7
    .long 0x3ff00000
    .long 0x406fe000
    .long 0x3fe00000
    .long 0x00600080
    .long 0x3f700000
    .long 0x41f00000
    .long .Lsec06_00000000
    .long 0x40efffe0
.arm
png_init_read_transformations:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr ip, [r0, #140]
    ldrb r1, [r0, #322]
    and r3, ip, #4352
    sub sp, sp, #36
    cmp r3, #4352
    mov r5, r0
    str r1, [sp]
    bne .Lsec01_00002bc4
    tst r1, #2
    bne .Lsec01_00002b44
    ldrb r3, [r0, #323]
    sub r3, r3, #1
    cmp r3, #15
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00002bc4
    .long .Lsec01_00002ac8
    .long .Lsec01_00002ad8
    .long .Lsec01_00002bc4
    .long .Lsec01_00002ae8
    .long .Lsec01_00002bc4
    .long .Lsec01_00002bc4
    .long .Lsec01_00002bc4
    .long .Lsec01_00002b20
    .long .Lsec01_00002bc4
    .long .Lsec01_00002bc4
    .long .Lsec01_00002bc4
    .long .Lsec01_00002bc4
    .long .Lsec01_00002bc4
    .long .Lsec01_00002bc4
    .long .Lsec01_00002bc4
    .long .Lsec01_00002b20
.arm
.Lsec01_00002ac8:
    mov r1, #348
    ldrh r2, [r0, r1]
    mov r3, #255
    b .Lsec01_00002af4
.Lsec01_00002ad8:
    mov r1, #348
    ldrh r2, [r0, r1]
    mov r3, #85
    b .Lsec01_00002af4
.Lsec01_00002ae8:
    mov r1, #348
    ldrh r2, [r0, r1]
    mov r3, #17
.Lsec01_00002af4:
    mul r3, r2, r3
    ldr r2, [pc, #3308]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r5, r2]
    add r2, r2, #4
    strh r3, [r5, r2]
    mov r2, #344
    strh r3, [r5, r1]
    strh r3, [r5, r2]
    b .Lsec01_00002bc4
.Lsec01_00002b20:
    mov r3, #348
    ldrh r2, [r0, r3]
    sub r3, r3, #6
    strh r2, [r0, r3]
    add r3, r3, #4
    strh r2, [r0, r3]
    mov r3, #344
    strh r2, [r0, r3]
    b .Lsec01_00002bc4
.Lsec01_00002b44:
    ldr r2, [sp]
    cmp r2, #3
    bne .Lsec01_000037c8
    ldrb r3, [r0, #340]
    mul r2, r3, r2
    ldr r0, [r0, #304]
    ldr r3, [pc, #3208]
    ldrb r1, [r2, r0]
    strh r1, [r5, r3]
    add r2, r2, r0
    ldrb r1, [r2, #1]
    add r3, r3, #2
    strh r1, [r5, r3]
    ldrb r2, [r2, #2]
    add r3, r3, #2
    tst ip, #524288
    strh r2, [r5, r3]
    beq .Lsec01_000037b0
    ands r2, ip, #4096
    bne .Lsec01_000037b0
    sub r3, r3, #36
    ldrh r0, [r5, r3]
    mov r1, r2
    b .Lsec01_00002bb8
.Lsec01_00002ba4:
    ldr r2, [r5, #420]
    ldrb r3, [r1, r2]
    mvn r3, r3
    strb r3, [r1, r2]
    add r1, r1, #1
.Lsec01_00002bb8:
    cmp r1, r0
    blt .Lsec01_00002ba4
    b .Lsec01_000037b0
.Lsec01_00002bc4:
    add r0, r5, #348
    add r0, r0, #2
    add r1, r5, #340
    mov r2, #10
.Lsec01_00002bd4:
    bl memcpy
    ldr r3, [sp]
    cmp r3, #3
    bne .Lsec01_00002c68
.Lsec01_00002be4:
    ldr r3, [pc, #3076]
    ldrh r4, [r5, r3]
    cmp r4, #0
    beq .Lsec01_00002c68
    ldr r1, [r5, #376]
    ldr r0, [r5, #380]
.Lsec01_00002bfc:
    bl __aeabi_fmul
.Lsec01_00002c00:
    bl __aeabi_f2d
    mov r2, #0
    ldr r3, [pc, #3044]
.Lsec01_00002c0c:
    bl __aeabi_dsub
    ldr r2, [pc, #3040]
    bic r1, r1, #-2147483648
    ldr r3, [pc, #3036]
.Lsec01_00002c1c:
    bl __aeabi_dcmplt
    cmp r0, #0
    movne r1, #0
    movne r2, r1
    bne .Lsec01_00002c50
    b .Lsec01_00002c68
.Lsec01_00002c34:
    ldr r3, [r5, #420]
    ldrb r3, [r3, r2]
    sub r3, r3, #1
    and r3, r3, #255
    cmp r3, #253
    movls r1, #1
    add r2, r2, #1
.Lsec01_00002c50:
    cmp r2, r4
    bne .Lsec01_00002c34
    cmp r1, #0
    ldreq r3, [r5, #140]
    biceq r3, r3, #8192
    streq r3, [r5, #140]
.Lsec01_00002c68:
    ldr r2, [r5, #140]
    ldr r3, [pc, #2956]
    and r3, r2, r3
    cmp r3, #0
    beq .Lsec01_000035fc
    mov r0, r5
.Lsec01_00002c80:
    bl png_build_gamma_table
    ldr r3, [r5, #140]
    ands r3, r3, #128
    beq .Lsec01_00003590
    ldr r4, [sp]
    cmp r4, #3
    bne .Lsec01_0000316c
    ldrb r2, [r5, #332]
    mov r3, #308
    ldrh r3, [r5, r3]
    cmp r2, #2
    str r3, [sp, #4]
    ldr sl, [r5, #304]
    bne .Lsec01_00002d04
    ldr r3, [pc, #2860]
    ldrh ip, [r5, r3]
    add r3, r3, #2
    ldrh r0, [r5, r3]
    add r3, r3, #2
    ldrh r1, [r5, r3]
    ldr r2, [r5, #384]
    ldr r3, [r5, #392]
    ldrb fp, [r2, r1]
    ldrb r9, [r3, r1]
    ldrb r1, [r3, ip]
    str r1, [sp, #28]
    ldrb r3, [r3, r0]
    str r3, [sp, #24]
    ldrb ip, [r2, ip]
    str ip, [sp, #20]
    ldrb r2, [r2, r0]
    str r2, [sp, #16]
    b .Lsec01_00003000
.Lsec01_00002d04:
    cmp r2, #3
    beq .Lsec01_00002d38
    cmp r2, #1
    ldrne r9, [pc, #2780]
    movne r8, #0
    movne r6, r8
    movne r7, r9
    bne .Lsec01_00002d8c
    ldr r0, [r5, #380]
.Lsec01_00002d28:
    bl __aeabi_f2d
    mov r8, r0
    mov r9, r1
    b .Lsec01_00002db8
.Lsec01_00002d38:
    ldr r4, [r5, #336]
    mov r0, r4
.Lsec01_00002d40:
    bl __aeabi_f2d
    mov r2, r0
    mov r3, r1
    mov r0, #0
    ldr r1, [pc, #2716]
.Lsec01_00002d54:
    bl __aeabi_ddiv
    mov r8, r0
    mov r9, r1
    mov r0, r4
    ldr r1, [r5, #380]
.Lsec01_00002d68:
    bl __aeabi_fmul
.Lsec01_00002d6c:
    bl __aeabi_f2d
    mov r2, r0
    mov r3, r1
    mov r0, #0
    ldr r1, [pc, #2672]
.Lsec01_00002d80:
    bl __aeabi_ddiv
    mov r6, r0
    mov r7, r1
.Lsec01_00002d8c:
    mov r2, #0
    ldr r3, [pc, #2652]
    mov r0, r6
    mov r1, r7
.Lsec01_00002d9c:
    bl __aeabi_dsub
    ldr r2, [pc, #2640]
    bic r1, r1, #-2147483648
    ldr r3, [pc, #2636]
.Lsec01_00002dac:
    bl __aeabi_dcmplt
    cmp r0, #0
    beq .Lsec01_00002dd0
.Lsec01_00002db8:
    ldrb r2, [r5, #342]
    ldrb r3, [r5, #344]
    ldrb fp, [r5, #346]
    str r2, [sp, #20]
    str r3, [sp, #16]
    b .Lsec01_00002ee8
.Lsec01_00002dd0:
    ldr r3, [pc, #2580]
    ldrsh r4, [r5, r3]
    mov r0, r4
.Lsec01_00002ddc:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #2580]
.Lsec01_00002dec:
    bllt __aeabi_dadd
    mov r2, #0
    ldr r3, [pc, #2572]
.Lsec01_00002df8:
    bl __aeabi_ddiv
    mov r2, r6
    mov r3, r7
.Lsec01_00002e04:
    bl pow
    mov r2, #0
    ldr r3, [pc, #2548]
.Lsec01_00002e10:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #2540]
.Lsec01_00002e1c:
    bl __aeabi_dadd
.Lsec01_00002e20:
    bl __aeabi_d2uiz
    mov r2, #344
    ldrsh r4, [r5, r2]
    mov r3, r0
    and r3, r3, #255
    mov r0, r4
    str r3, [sp, #20]
.Lsec01_00002e3c:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #2484]
.Lsec01_00002e4c:
    bllt __aeabi_dadd
    mov r2, #0
    ldr r3, [pc, #2476]
.Lsec01_00002e58:
    bl __aeabi_ddiv
    mov r2, r6
    mov r3, r7
.Lsec01_00002e64:
    bl pow
    mov r2, #0
    ldr r3, [pc, #2452]
.Lsec01_00002e70:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #2444]
.Lsec01_00002e7c:
    bl __aeabi_dadd
.Lsec01_00002e80:
    bl __aeabi_d2uiz
    ldr r2, [pc, #2436]
    ldrsh r4, [r5, r2]
    mov r3, r0
    and r3, r3, #255
    mov r0, r4
    str r3, [sp, #16]
.Lsec01_00002e9c:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #2388]
.Lsec01_00002eac:
    bllt __aeabi_dadd
    mov r2, #0
    ldr r3, [pc, #2380]
.Lsec01_00002eb8:
    bl __aeabi_ddiv
    mov r2, r6
    mov r3, r7
.Lsec01_00002ec4:
    bl pow
    mov r2, #0
    ldr r3, [pc, #2356]
.Lsec01_00002ed0:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #2348]
.Lsec01_00002edc:
    bl __aeabi_dadd
.Lsec01_00002ee0:
    bl __aeabi_d2uiz
    and fp, r0, #255
.Lsec01_00002ee8:
    ldr r3, [pc, #2300]
    ldrsh r4, [r5, r3]
    mov r0, r4
.Lsec01_00002ef4:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #2300]
.Lsec01_00002f04:
    bllt __aeabi_dadd
    mov r2, #0
    ldr r3, [pc, #2292]
.Lsec01_00002f10:
    bl __aeabi_ddiv
    mov r2, r8
    mov r3, r9
.Lsec01_00002f1c:
    bl pow
    mov r2, #0
    ldr r3, [pc, #2268]
.Lsec01_00002f28:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #2260]
.Lsec01_00002f34:
    bl __aeabi_dadd
.Lsec01_00002f38:
    bl __aeabi_d2uiz
    mov r2, #344
    ldrsh r4, [r5, r2]
    mov r3, r0
    and r3, r3, #255
    mov r0, r4
    str r3, [sp, #28]
.Lsec01_00002f54:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #2204]
.Lsec01_00002f64:
    bllt __aeabi_dadd
    mov r2, #0
    ldr r3, [pc, #2196]
.Lsec01_00002f70:
    bl __aeabi_ddiv
    mov r2, r8
    mov r3, r9
.Lsec01_00002f7c:
    bl pow
    mov r2, #0
    ldr r3, [pc, #2172]
.Lsec01_00002f88:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #2164]
.Lsec01_00002f94:
    bl __aeabi_dadd
.Lsec01_00002f98:
    bl __aeabi_d2uiz
    ldr r2, [pc, #2156]
    ldrsh r4, [r5, r2]
    mov r3, r0
    and r3, r3, #255
    mov r0, r4
    str r3, [sp, #24]
.Lsec01_00002fb4:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #2108]
.Lsec01_00002fc4:
    bllt __aeabi_dadd
    mov r2, #0
    ldr r3, [pc, #2100]
.Lsec01_00002fd0:
    bl __aeabi_ddiv
    mov r3, r9
    mov r2, r8
.Lsec01_00002fdc:
    bl pow
    mov r2, #0
    ldr r3, [pc, #2076]
.Lsec01_00002fe8:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #2068]
.Lsec01_00002ff4:
    bl __aeabi_dadd
.Lsec01_00002ff8:
    bl __aeabi_d2uiz
    and r9, r0, #255
.Lsec01_00003000:
    mov r8, #0
    mov r6, r8
    b .Lsec01_00003158
.Lsec01_0000300c:
    ldr r3, [pc, #2012]
    ldrh r3, [r5, r3]
    cmp r8, r3
    bge .Lsec01_00003120
    ldr r3, [r5, #420]
    ldrb lr, [r3, r8]
    cmp lr, #255
    add r4, sl, r6
    beq .Lsec01_00003120
    cmp lr, #0
    rsb r7, lr, #255
    bne .Lsec01_00003054
    ldr r1, [sp, #16]
    strb fp, [r4, #2]
    strb r1, [r4, #1]
    ldr r2, [sp, #20]
    strb r2, [r6, sl]
    b .Lsec01_00003150
.Lsec01_00003054:
    ldr r2, [r5, #392]
    ldrb r3, [r6, sl]
    ldrb r3, [r2, r3]
    mul r3, lr, r3
    ldr r2, [sp, #28]
    add r3, r3, #128
    mla r2, r7, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    ldr r1, [r5, #388]
    mov r3, r3, asr #8
    and r3, r3, #255
    ldrb r3, [r1, r3]
    strb r3, [r6, sl]
    ldrb r0, [r4, #1]
    ldr r2, [r5, #420]
    ldr r3, [r5, #392]
    ldrb r2, [r2, r8]
    ldrb r3, [r3, r0]
    mul r3, r2, r3
    ldr r1, [sp, #24]
    add r3, r3, #128
    rsb r2, r2, #255
    mla r2, r1, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
    ldr r2, [r5, #388]
    and r3, r3, #255
    ldrb r3, [r2, r3]
    strb r3, [r4, #1]
    ldrb ip, [r4, #2]
    ldr r2, [r5, #420]
    ldr r3, [r5, #392]
    ldrb r2, [r2, r8]
    ldrb r3, [r3, ip]
    mul r3, r2, r3
    rsb r2, r2, #255
    add r3, r3, #128
    mla r2, r9, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
    ldr r2, [r5, #388]
    and r3, r3, #255
    ldrb r3, [r2, r3]
    strb r3, [r4, #2]
    b .Lsec01_00003150
.Lsec01_00003120:
    ldr r2, [r5, #384]
    ldrb r3, [r6, sl]
    ldrb r3, [r2, r3]
    strb r3, [r6, sl]
    ldrb r1, [ip, #1]
    ldr r3, [r5, #384]
    ldrb r3, [r3, r1]
    strb r3, [ip, #1]
    ldrb r0, [ip, #2]
    ldr r3, [r5, #384]
    ldrb r3, [r3, r0]
    strb r3, [ip, #2]
.Lsec01_00003150:
    add r8, r8, #1
    add r6, r6, #3
.Lsec01_00003158:
    ldr r2, [sp, #4]
    cmp r8, r2
    add ip, sl, r6
    blt .Lsec01_0000300c
    b .Lsec01_000036fc
.Lsec01_0000316c:
    ldrb r3, [r5, #323]
    mvn r4, #0
    mvn r4, r4, lsl r3
    mov r0, r4
.Lsec01_0000317c:
    bl __aeabi_i2d
    cmp r4, #0
    mov r6, r0
    mov r7, r1
    bge .Lsec01_000031a4
    mov r2, #0
    ldr r3, [pc, #1656]
.Lsec01_00003198:
    bl __aeabi_dadd
    mov r6, r0
    mov r7, r1
.Lsec01_000031a4:
    ldrb r3, [r5, #332]
    cmp r3, #2
    beq .Lsec01_00003200
    cmp r3, #3
    beq .Lsec01_00003208
    cmp r3, #1
    beq .Lsec01_000031dc
    ldr r4, [pc, #1580]
    mov r3, #0
    mov r8, r3
    mov r9, r4
    str r3, [sp, #8]
    str r4, [sp, #12]
    b .Lsec01_0000325c
.Lsec01_000031dc:
    ldr r0, [r5, #380]
.Lsec01_000031e0:
    bl __aeabi_f2d
    ldr r2, [pc, #1544]
    mov r9, r1
    mov r8, r0
    mov r1, #0
    str r1, [sp, #8]
    str r2, [sp, #12]
    b .Lsec01_0000325c
.Lsec01_00003200:
    ldr r4, [r5, #376]
    b .Lsec01_0000320c
.Lsec01_00003208:
    ldr r4, [r5, #336]
.Lsec01_0000320c:
    mov r0, r4
.Lsec01_00003210:
    bl __aeabi_f2d
    mov r2, r0
    mov r3, r1
    mov r0, #0
    ldr r1, [pc, #1484]
.Lsec01_00003224:
    bl __aeabi_ddiv
    mov r8, r0
    mov r9, r1
    mov r0, r4
    ldr r1, [r5, #380]
.Lsec01_00003238:
    bl __aeabi_fmul
.Lsec01_0000323c:
    bl __aeabi_f2d
    mov r2, r0
    mov r3, r1
    mov r0, #0
    ldr r1, [pc, #1440]
.Lsec01_00003250:
    bl __aeabi_ddiv
    str r0, [sp, #8]
    str r1, [sp, #12]
.Lsec01_0000325c:
    mov sl, #348
    ldrsh r4, [r5, sl]
    mov r0, r4
.Lsec01_00003268:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #1416]
.Lsec01_00003278:
    bllt __aeabi_dadd
    mov r2, r6
    mov r3, r7
.Lsec01_00003284:
    bl __aeabi_ddiv
    mov r2, r8
    mov r3, r9
.Lsec01_00003290:
    bl pow
    mov r2, r6
    mov r3, r7
.Lsec01_0000329c:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #1376]
.Lsec01_000032a8:
    bl __aeabi_dadd
.Lsec01_000032ac:
    bl __aeabi_d2uiz
    ldrsh r4, [r5, sl]
    ldr r2, [pc, #1372]
    strh r0, [r5, r2]
    mov r0, r4
.Lsec01_000032c0:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #1328]
.Lsec01_000032d0:
    bllt __aeabi_dadd
    mov r2, r6
    mov r3, r7
.Lsec01_000032dc:
    bl __aeabi_ddiv
    add r2, sp, #8
    ldmia r2, {r2, r3}
.Lsec01_000032e8:
    bl pow
    mov r2, r6
    mov r3, r7
.Lsec01_000032f4:
    bl __aeabi_dmul
    ldr r3, [pc, #1292]
    mov r2, #0
.Lsec01_00003300:
    bl __aeabi_dadd
.Lsec01_00003304:
    bl __aeabi_d2uiz
    ldr lr, [pc, #1244]
    mov fp, #344
    ldrh r4, [r5, lr]
    ldrh r3, [r5, fp]
    mov r0, r0, lsl #16
    mov r0, r0, lsr #16
    cmp r3, r4
    strh r0, [r5, sl]
    bne .Lsec01_00003344
    ldr ip, [pc, #1244]
    ldrh r3, [r5, ip]
    cmp r3, r4
    bne .Lsec01_00003344
    cmp r4, r0
    beq .Lsec01_0000355c
.Lsec01_00003344:
    mov r4, r4, lsl #16
    mov r4, r4, asr #16
    mov r0, r4
.Lsec01_00003350:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #1184]
.Lsec01_00003360:
    bllt __aeabi_dadd
    mov r2, r6
    mov r3, r7
.Lsec01_0000336c:
    bl __aeabi_ddiv
    mov r2, r8
    mov r3, r9
.Lsec01_00003378:
    bl pow
    mov r2, r6
    mov r3, r7
.Lsec01_00003384:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #1144]
.Lsec01_00003390:
    bl __aeabi_dadd
.Lsec01_00003394:
    bl __aeabi_d2uiz
    mov fp, #344
    ldrsh r4, [r5, fp]
    mov r3, #352
    strh r0, [r5, r3]
    mov r0, r4
.Lsec01_000033ac:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #1092]
.Lsec01_000033bc:
    bllt __aeabi_dadd
    mov r2, r6
    mov r3, r7
.Lsec01_000033c8:
    bl __aeabi_ddiv
    mov r2, r8
    mov r3, r9
.Lsec01_000033d4:
    bl pow
    mov r2, r6
    mov r3, r7
.Lsec01_000033e0:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #1052]
.Lsec01_000033ec:
    bl __aeabi_dadd
.Lsec01_000033f0:
    bl __aeabi_d2uiz
    ldr sl, [pc, #1044]
    ldr r3, [pc, #1052]
    ldrsh r4, [r5, sl]
    strh r0, [r5, r3]
    mov r0, r4
.Lsec01_00003408:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #1000]
.Lsec01_00003418:
    bllt __aeabi_dadd
    mov r2, r6
    mov r3, r7
.Lsec01_00003424:
    bl __aeabi_ddiv
    mov r2, r8
    mov r3, r9
.Lsec01_00003430:
    bl pow
    mov r2, r6
    mov r3, r7
.Lsec01_0000343c:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #960]
.Lsec01_00003448:
    bl __aeabi_dadd
.Lsec01_0000344c:
    bl __aeabi_d2uiz
    ldr r8, [pc, #916]
    ldrsh r4, [r5, r8]
    mov r3, #356
    strh r0, [r5, r3]
    mov r0, r4
.Lsec01_00003464:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #908]
.Lsec01_00003474:
    bllt __aeabi_dadd
    mov r2, r6
    mov r3, r7
.Lsec01_00003480:
    bl __aeabi_ddiv
    add r2, sp, #8
    ldmia r2, {r2, r3}
.Lsec01_0000348c:
    bl pow
    mov r2, r6
    mov r3, r7
.Lsec01_00003498:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #868]
.Lsec01_000034a4:
    bl __aeabi_dadd
.Lsec01_000034a8:
    bl __aeabi_d2uiz
    ldrsh r4, [r5, fp]
    strh r0, [r5, r8]
    mov r0, r4
.Lsec01_000034b8:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #824]
.Lsec01_000034c8:
    bllt __aeabi_dadd
    mov r2, r6
    mov r3, r7
.Lsec01_000034d4:
    bl __aeabi_ddiv
    add r2, sp, #8
    ldmia r2, {r2, r3}
.Lsec01_000034e0:
    bl pow
    mov r2, r6
    mov r3, r7
.Lsec01_000034ec:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #784]
.Lsec01_000034f8:
    bl __aeabi_dadd
.Lsec01_000034fc:
    bl __aeabi_d2uiz
    ldrsh r4, [r5, sl]
    strh r0, [r5, fp]
    mov r0, r4
.Lsec01_0000350c:
    bl __aeabi_i2d
    cmp r4, #0
    movlt r2, #0
    ldrlt r3, [pc, #740]
.Lsec01_0000351c:
    bllt __aeabi_dadd
    mov r2, r6
    mov r3, r7
.Lsec01_00003528:
    bl __aeabi_ddiv
    add r2, sp, #8
    ldmia r2, {r2, r3}
.Lsec01_00003534:
    bl pow
    mov r2, r6
    mov r3, r7
.Lsec01_00003540:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #700]
.Lsec01_0000354c:
    bl __aeabi_dadd
.Lsec01_00003550:
    bl __aeabi_d2uiz
    strh r0, [r5, sl]
    b .Lsec01_000036fc
.Lsec01_0000355c:
    ldr r3, [pc, #692]
    ldrh r2, [r5, r3]
    mov r3, #352
    ldrh r1, [r5, sl]
    strh r2, [r5, r3]
    add r3, r3, #4
    strh r2, [r5, r3]
    sub r3, r3, #2
    strh r1, [r5, lr]
    strh r2, [r5, r3]
    strh r1, [r5, ip]
    strh r1, [r5, fp]
    b .Lsec01_000036fc
.Lsec01_00003590:
    ldr r4, [sp]
    cmp r4, #3
    bne .Lsec01_000036fc
    mov r4, r3
    mov r3, #308
    ldrh r6, [r5, r3]
    ldr ip, [r5, #304]
    mov lr, r4
    b .Lsec01_000035e8
.Lsec01_000035b4:
    ldr r2, [r5, #384]
    ldrb r3, [lr, ip]
    ldrb r3, [r2, r3]
    strb r3, [lr, ip]
    ldrb r1, [r0, #1]
    ldr r3, [r5, #384]
    ldrb r3, [r3, r1]
    strb r3, [r0, #1]
    ldrb r2, [r0, #2]
    ldr r3, [r5, #384]
    ldrb r3, [r3, r2]
    strb r3, [r0, #2]
    add lr, lr, #3
.Lsec01_000035e8:
    cmp r4, r6
    add r0, ip, lr
    add r4, r4, #1
    blt .Lsec01_000035b4
    b .Lsec01_000036fc
.Lsec01_000035fc:
    ldr r1, [sp]
    cmp r1, #3
    movne r3, #0
    moveq r3, #1
    ands r2, r3, r2, lsr #7
    beq .Lsec01_000036fc
    ldr r3, [pc, #468]
    mov r6, #0
    ldrh fp, [r5, r3]
    ldr r4, [r5, #304]
    ldrb r9, [r5, #342]
    ldrb sl, [r5, #344]
    ldrb r8, [r5, #346]
    mov lr, r6
    b .Lsec01_000036f0
.Lsec01_00003638:
    ldr r3, [r5, #420]
    ldrb r2, [r3, r6]
    cmp r2, #0
    streqb sl, [r1, #1]
    streqb r8, [r1, #2]
    streqb r9, [lr, r4]
    beq .Lsec01_000036e8
    cmp r2, #255
    rsb r7, r2, #255
    add ip, r4, lr
    beq .Lsec01_000036e8
    ldrb r3, [lr, r4]
    mul r3, r2, r3
    add r3, r3, #128
    mla r2, r7, r9, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
    strb r3, [lr, r4]
    ldr r3, [r5, #420]
    ldrb r1, [ip, #1]
    ldrb r2, [r3, r6]
    mul r3, r1, r2
    rsb r2, r2, #255
    add r3, r3, #128
    mla r2, sl, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
    strb r3, [ip, #1]
    ldr r3, [r5, #420]
    ldrb r0, [ip, #2]
    ldrb r2, [r3, r6]
    mul r3, r0, r2
    rsb r2, r2, #255
    add r3, r3, #128
    mla r2, r8, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
    strb r3, [ip, #2]
.Lsec01_000036e8:
    add r6, r6, #1
    add lr, lr, #3
.Lsec01_000036f0:
    cmp r6, fp
    add r1, r4, lr
    blt .Lsec01_00003638
.Lsec01_000036fc:
    ldr r4, [sp]
    ldr r2, [r5, #140]
    cmp r4, #3
    movne r3, #0
    moveq r3, #1
    ands r2, r3, r2, lsr #3
    beq .Lsec01_000037e0
    ldrb r3, [r5, #408]
    ldrb r2, [r5, #409]
    rsb lr, r3, #8
    ldrb r1, [r5, #410]
    rsb ip, r2, #8
    cmp lr, #8
    rsb r0, r1, #8
    mov r3, #308
    movhi lr, #0
    cmp ip, #8
    movhi ip, #0
    ldrh r6, [r5, r3]
    cmp r0, #8
    movhi r0, #0
    mov r1, #0
    b .Lsec01_0000379c
.Lsec01_00003758:
    mov r3, #3
    mul r1, r3, r1
    ldr r2, [r5, #304]
    ldrb r3, [r1, r2]
    mov r3, r3, asr lr
    strb r3, [r1, r2]
    ldr r2, [r5, #304]
    add r2, r1, r2
    ldrb r3, [r2, #1]
    mov r3, r3, asr ip
    strb r3, [r2, #1]
    ldr r3, [r5, #304]
    add r1, r1, r3
    ldrb r3, [r1, #2]
    mov r3, r3, asr r0
    strb r3, [r1, #2]
    mov r1, r4, lsr #16
.Lsec01_0000379c:
    add r3, r1, #1
    cmp r1, r6
    mov r4, r3, lsl #16
    bne .Lsec01_00003758
    b .Lsec01_000037e0
.Lsec01_000037b0:
    add r0, r5, #348
    add r1, r5, #340
    mov r2, #10
    add r0, r0, #2
.Lsec01_000037c0:
    bl memcpy
    b .Lsec01_00002be4
.Lsec01_000037c8:
    add r0, r0, #348
    add r1, r5, #340
    mov r2, #10
    add r0, r0, #2
.Lsec01_000037d8:
    bl memcpy
    b .Lsec01_00002c68
.Lsec01_000037e0:
    add sp, sp, #36
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x00000156
    .long 0x00000136
    .long 0x3ff00000
    .long 0x9999999a
    .long 0x3fa99999
    .long 0x00602000
    .long 0x40f00000
    .long 0x406fe000
    .long 0x3fe00000
    .long 0x0000015a
    .long 0x41f00000
    .long 0x00000166
    .long 0x00000162
.arm
png_do_background:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    subs r8, r3, #0
    sub sp, sp, #12
    str r0, [sp, #4]
    mov r6, r2
    ldr r7, [sp, #52]
    ldr fp, [sp, #60]
    ldr sl, [sp, #64]
    ldr r5, [sp, #76]
    ldr r9, [r0]
    beq .Lsec01_00004828
    ldrb r3, [r0, #8]
    tst r3, #4
    beq .Lsec01_00003864
    cmp r3, #3
    cmpne r2, #0
    beq .Lsec01_00004828
.Lsec01_00003864:
    cmp r3, #6
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_000047cc
    .long .Lsec01_0000388c
    .long .Lsec01_000047cc
    .long .Lsec01_00003c44
    .long .Lsec01_000047cc
    .long .Lsec01_00003f0c
    .long .Lsec01_000047cc
    .long .Lsec01_000041e4
.arm
.Lsec01_0000388c:
    ldr r0, [sp, #4]
    ldrb r3, [r0, #9]
    sub r3, r3, #1
    cmp r3, #15
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_000047cc
    .long .Lsec01_000038e4
    .long .Lsec01_00003944
    .long .Lsec01_000047cc
    .long .Lsec01_00003a3c
    .long .Lsec01_000047cc
    .long .Lsec01_000047cc
    .long .Lsec01_000047cc
    .long .Lsec01_00003b28
    .long .Lsec01_000047cc
    .long .Lsec01_000047cc
    .long .Lsec01_000047cc
    .long .Lsec01_000047cc
    .long .Lsec01_000047cc
    .long .Lsec01_000047cc
    .long .Lsec01_000047cc
    .long .Lsec01_00003b88
.arm
.Lsec01_000038e4:
    mov r4, #0
    mov r0, #7
    b .Lsec01_00003934
.Lsec01_000038f0:
    ldrb ip, [r1]
    mov r3, ip, asr r0
    ldrh r2, [r6, #8]
    and r3, r3, #1
    cmp r3, r2
    bne .Lsec01_00003920
    ldr r3, [pc, #3876]
    and r3, ip, r3, asr lr
    strb r3, [r1]
    ldrh r2, [r8, #8]
    orr r3, r3, r2, lsl r0
    strb r3, [r1]
.Lsec01_00003920:
    cmp r0, #0
    addeq r1, r1, #1
    sub r0, r0, #1
    add r4, r4, #1
    moveq r0, #7
.Lsec01_00003934:
    cmp r4, r9
    rsb lr, r0, #7
    bne .Lsec01_000038f0
    b .Lsec01_000047cc
.Lsec01_00003944:
    cmp r7, #0
    moveq r4, r7
    moveq r0, #6
    movne r4, r1
    movne sl, #0
    movne lr, #6
    bne .Lsec01_000039dc
    b .Lsec01_00003a2c
.Lsec01_00003964:
    ldrb ip, [r4]
    mov r1, ip, asr lr
    ldrh r0, [r6, #8]
    and r3, r1, #3
    mov r2, r3, lsl #4
    and r1, r1, #3
    orr r2, r2, r3, lsl #6
    cmp r1, r0
    orr r3, r3, r3, lsl #2
    rsb r5, lr, #6
    orr r3, r3, r2
    bne .Lsec01_000039b0
    ldr r3, [pc, #3740]
    and r3, ip, r3, asr r5
    strb r3, [r4]
    ldrh r2, [r8, #8]
    orr r3, r3, r2, lsl lr
    strb r3, [r4]
    b .Lsec01_000039c8
.Lsec01_000039b0:
    ldr r2, [pc, #3712]
    and r2, ip, r2, asr r5
    ldrb r3, [r7, r3]
    mov r3, r3, lsr #6
    orr r2, r2, r3, lsl lr
    strb r2, [r4]
.Lsec01_000039c8:
    cmp lr, #0
    addeq r4, r4, #1
    sub lr, lr, #2
    add sl, sl, #1
    moveq lr, #6
.Lsec01_000039dc:
    cmp sl, r9
    bne .Lsec01_00003964
    b .Lsec01_000047cc
.Lsec01_000039e8:
    ldrb ip, [r1]
    mov r3, ip, asr r0
    ldrh r2, [r6, #8]
    and r3, r3, #3
    cmp r3, r2
    bne .Lsec01_00003a18
    ldr r3, [pc, #3632]
    and r3, ip, r3, asr lr
    strb r3, [r1]
    ldrh r2, [r8, #8]
    orr r3, r3, r2, lsl r0
    strb r3, [r1]
.Lsec01_00003a18:
    cmp r0, #0
    addeq r1, r1, #1
    sub r0, r0, #2
    add r4, r4, #1
    moveq r0, #6
.Lsec01_00003a2c:
    cmp r4, r9
    rsb lr, r0, #6
    bne .Lsec01_000039e8
    b .Lsec01_000047cc
.Lsec01_00003a3c:
    cmp r7, #0
    moveq r4, r7
    moveq r0, #4
    movne lr, r1
    movne r5, #0
    movne ip, #4
    bne .Lsec01_00003ac8
    b .Lsec01_00003b18
.Lsec01_00003a5c:
    ldrb r0, [lr]
    mov r2, r0, asr ip
    ldrh r1, [r6, #8]
    and r3, r2, #15
    and r2, r2, #15
    cmp r2, r1
    rsb r4, ip, #4
    orr r3, r3, r3, lsl #4
    bne .Lsec01_00003a9c
    ldr r3, [pc, #3508]
    and r3, r0, r3, asr r4
    strb r3, [lr]
    ldrh r2, [r8, #8]
    orr r3, r3, r2, lsl ip
    strb r3, [lr]
    b .Lsec01_00003ab4
.Lsec01_00003a9c:
    ldr r2, [pc, #3480]
    and r2, r0, r2, asr r4
    ldrb r3, [r7, r3]
    mov r3, r3, lsr #4
    orr r2, r2, r3, lsl ip
    strb r2, [lr]
.Lsec01_00003ab4:
    cmp ip, #0
    addeq lr, lr, #1
    sub ip, ip, #4
    add r5, r5, #1
    moveq ip, #4
.Lsec01_00003ac8:
    cmp r5, r9
    bne .Lsec01_00003a5c
    b .Lsec01_000047cc
.Lsec01_00003ad4:
    ldrb ip, [r1]
    mov r3, ip, asr r0
    ldrh r2, [r6, #8]
    and r3, r3, #15
    cmp r3, r2
    bne .Lsec01_00003b04
    ldr r3, [pc, #3400]
    and r3, ip, r3, asr lr
    strb r3, [r1]
    ldrh r2, [r8, #8]
    orr r3, r3, r2, lsl r0
    strb r3, [r1]
.Lsec01_00003b04:
    cmp r0, #0
    addeq r1, r1, #1
    sub r0, r0, #4
    add r4, r4, #1
    moveq r0, #4
.Lsec01_00003b18:
    cmp r4, r9
    rsb lr, r0, #4
    bne .Lsec01_00003ad4
    b .Lsec01_000047cc
.Lsec01_00003b28:
    cmp r7, #0
    moveq r0, r7
    movne r0, #0
    bne .Lsec01_00003b58
    b .Lsec01_00003b7c
.Lsec01_00003b3c:
    ldrb r2, [r0, r1]
    ldrh r3, [r6, #8]
    cmp r3, r2
    ldreqh r3, [r8, #8]
    ldrneb r3, [r7, r2]
    strb r3, [r0, r1]
    add r0, r0, #1
.Lsec01_00003b58:
    cmp r0, r9
    bne .Lsec01_00003b3c
    b .Lsec01_000047cc
.Lsec01_00003b64:
    ldrb r2, [r0, r1]
    ldrh r3, [r6, #8]
    cmp r2, r3
    ldreqh r3, [r8, #8]
    streqb r3, [r0, r1]
    add r0, r0, #1
.Lsec01_00003b7c:
    cmp r0, r9
    bne .Lsec01_00003b64
    b .Lsec01_000047cc
.Lsec01_00003b88:
    cmp sl, #0
    moveq r0, sl
    addne r1, r1, #2
    movne lr, #0
    bne .Lsec01_00003bf8
    b .Lsec01_00003c34
.Lsec01_00003ba0:
    ldrb r3, [r1, #-2]
    ldrb r0, [r1, #-1]
    mov ip, r3, lsl #1
    ldrh r2, [r6, #8]
    add r3, r0, r3, lsl #8
    mov r3, r3, lsl #16
    cmp r2, r3, lsr #16
    bne .Lsec01_00003bd8
    ldrh r3, [r8, #8]
    mov r3, r3, lsr #8
    strb r3, [r1, #-2]
    ldrh r3, [r8, #8]
    strb r3, [r1, #-1]
    b .Lsec01_00003bf0
.Lsec01_00003bd8:
    mov r3, r0, asr r5
    ldr r3, [sl, r3, lsl #2]
    ldrh r2, [ip, r3]
    mov r3, r2, lsr #8
    strb r3, [r1, #-2]
    strb r2, [r1, #-1]
.Lsec01_00003bf0:
    add lr, lr, #1
    add r1, r1, #2
.Lsec01_00003bf8:
    cmp lr, r9
    bne .Lsec01_00003ba0
    b .Lsec01_000047cc
.Lsec01_00003c04:
    ldrb r3, [r1]
    ldrb r2, [r1, #1]
    add r2, r2, r3, lsl #8
    ldrh r3, [r6, #8]
    mov r2, r2, lsl #16
    cmp r3, r2, lsr #16
    ldreqh r3, [r8, #8]
    moveq r3, r3, lsr #8
    streqb r3, [r1]
    ldreqh r3, [r8, #8]
    streqb r3, [r1, #1]
    add r1, r1, #2
.Lsec01_00003c34:
    cmp r0, r9
    add r0, r0, #1
    bne .Lsec01_00003c04
    b .Lsec01_000047cc
.Lsec01_00003c44:
    ldr r2, [sp, #4]
    ldrb r3, [r2, #9]
    cmp r3, #8
    bne .Lsec01_00003d44
    cmp r7, #0
    moveq r0, r7
    addne r0, r1, #3
    movne ip, #0
    bne .Lsec01_00003cdc
    b .Lsec01_00003d34
.Lsec01_00003c6c:
    ldrh r3, [r6, #2]
    ldrb r1, [r0, #-3]
    cmp r3, r1
    bne .Lsec01_00003cb4
    ldrh r2, [r6, #4]
    ldrb r3, [r0, #-2]
    cmp r3, r2
    bne .Lsec01_00003cb4
    ldrh r2, [r6, #6]
    ldrb r3, [r0, #-1]
    cmp r3, r2
    bne .Lsec01_00003cb4
    ldrh r3, [r8, #2]
    strb r3, [r0, #-3]
    ldrh r3, [r8, #4]
    strb r3, [r0, #-2]
    ldrh r3, [r8, #6]
    b .Lsec01_00003cd0
.Lsec01_00003cb4:
    ldrb r3, [r7, r1]
    ldrb r2, [r0, #-2]
    strb r3, [r0, #-3]
    ldrb r3, [r7, r2]
    ldrb r1, [r0, #-1]
    strb r3, [r0, #-2]
    ldrb r3, [r7, r1]
.Lsec01_00003cd0:
    strb r3, [r0, #-1]
    add ip, ip, #1
    add r0, r0, #3
.Lsec01_00003cdc:
    cmp ip, r9
    bne .Lsec01_00003c6c
    b .Lsec01_000047cc
.Lsec01_00003ce8:
    ldrh r2, [r6, #2]
    ldrb r3, [r1]
    cmp r3, r2
    bne .Lsec01_00003d30
    ldrh r2, [r6, #4]
    ldrb r3, [r1, #1]
    cmp r3, r2
    bne .Lsec01_00003d30
    ldrh r2, [r6, #6]
    ldrb r3, [r1, #2]
    cmp r3, r2
    bne .Lsec01_00003d30
    ldrh r3, [r8, #2]
    strb r3, [r1]
    ldrh r3, [r8, #4]
    strb r3, [r1, #1]
    ldrh r3, [r8, #6]
    strb r3, [r1, #2]
.Lsec01_00003d30:
    add r1, r1, #3
.Lsec01_00003d34:
    cmp r0, r9
    add r0, r0, #1
    bne .Lsec01_00003ce8
    b .Lsec01_000047cc
.Lsec01_00003d44:
    cmp sl, #0
    moveq lr, sl
    addne r0, r1, #6
    movne r7, #0
    bne .Lsec01_00003e5c
    b .Lsec01_00003efc
.Lsec01_00003d5c:
    ldrb r3, [r0, #-6]
    ldrb lr, [r0, #-5]
    ldrh r2, [r6, #2]
    mov r4, r3, lsl #1
    add r3, lr, r3, lsl #8
    mov r3, r3, lsl #16
    cmp r2, r3, lsr #16
    ldrb r2, [r0, #-4]
    ldrb r3, [r0, #-3]
    add r3, r3, r2, lsl #8
    mov ip, r3, lsl #16
    ldrb r2, [r0, #-2]
    ldrb r3, [r0, #-1]
    bne .Lsec01_00003df4
    add r3, r3, r2, lsl #8
    ldrh r2, [r6, #4]
    cmp r2, ip, lsr #16
    mov r1, r3, lsl #16
    bne .Lsec01_00003df4
    ldrh r3, [r6, #6]
    cmp r3, r1, lsr #16
    bne .Lsec01_00003df4
    ldrh r3, [r8, #2]
    mov r3, r3, lsr #8
    strb r3, [r0, #-6]
    ldrh r3, [r8, #2]
    strb r3, [r0, #-5]
    ldrh r3, [r8, #4]
    mov r3, r3, lsr #8
    strb r3, [r0, #-4]
    ldrh r3, [r8, #4]
    strb r3, [r0, #-3]
    ldrh r3, [r8, #6]
    mov r3, r3, lsr #8
    strb r3, [r0, #-2]
    ldrh r3, [r8, #6]
    strb r3, [r0, #-1]
    b .Lsec01_00003e54
.Lsec01_00003df4:
    mov r3, lr, asr r5
    ldrb r2, [r0, #-3]
    mov r2, r2, asr r5
    ldr r3, [sl, r3, lsl #2]
    ldrh r1, [r4, r3]
    mov r3, r1, lsr #8
    strb r3, [r0, #-6]
    strb r1, [r0, #-5]
    ldrb r3, [r0, #-4]
    ldr r2, [sl, r2, lsl #2]
    mov r3, r3, lsl #1
    ldrh r2, [r3, r2]
    mov r3, r2, lsr #8
    strb r3, [r0, #-4]
    ldrb r3, [r0, #-1]
    mov r3, r3, asr r5
    strb r2, [r0, #-3]
    ldrb r2, [r0, #-2]
    ldr r3, [sl, r3, lsl #2]
    mov r2, r2, lsl #1
    ldrh r2, [r2, r3]
    mov r3, r2, lsr #8
    strb r3, [r0, #-2]
    strb r2, [r0, #-1]
.Lsec01_00003e54:
    add r7, r7, #1
    add r0, r0, #6
.Lsec01_00003e5c:
    cmp r7, r9
    bne .Lsec01_00003d5c
    b .Lsec01_000047cc
.Lsec01_00003e68:
    ldrb r2, [r1]
    ldrb r3, [r1, #1]
    add r3, r3, r2, lsl #8
    ldrh r2, [r6, #2]
    mov r3, r3, lsl #16
    cmp r2, r3, lsr #16
    ldrb r2, [r1, #2]
    ldrb r3, [r1, #3]
    add r3, r3, r2, lsl #8
    mov ip, r3, lsl #16
    ldrb r2, [r1, #4]
    ldrb r3, [r1, #5]
    bne .Lsec01_00003ef8
    add r3, r3, r2, lsl #8
    ldrh r2, [r6, #4]
    cmp r2, ip, lsr #16
    mov r0, r3, lsl #16
    bne .Lsec01_00003ef8
    ldrh r3, [r6, #6]
    cmp r3, r0, lsr #16
    bne .Lsec01_00003ef8
    ldrh r3, [r8, #2]
    mov r3, r3, lsr #8
    strb r3, [r1]
    ldrh r3, [r8, #2]
    strb r3, [r1, #1]
    ldrh r3, [r8, #4]
    mov r3, r3, lsr #8
    strb r3, [r1, #2]
    ldrh r3, [r8, #4]
    strb r3, [r1, #3]
    ldrh r3, [r8, #6]
    mov r3, r3, lsr #8
    strb r3, [r1, #4]
    ldrh r3, [r8, #6]
    strb r3, [r1, #5]
.Lsec01_00003ef8:
    add r1, r1, #6
.Lsec01_00003efc:
    cmp lr, r9
    add lr, lr, #1
    bne .Lsec01_00003e68
    b .Lsec01_000047cc
.Lsec01_00003f0c:
    ldr lr, [sp, #4]
    ldrb r3, [lr, #9]
    cmp r3, #8
    bne .Lsec01_00004020
    ldr r0, [sp, #56]
    cmp fp, #0
    cmpne r0, #0
    beq .Lsec01_0000400c
    cmp r7, #0
    movne ip, r1
    movne r4, #0
    bne .Lsec01_00003fa8
    b .Lsec01_0000400c
.Lsec01_00003f40:
    ldrb r0, [ip, #1]
    cmp r0, #255
    ldreqb r3, [ip]
    ldreqb r3, [r7, r3]
    beq .Lsec01_00003f9c
    cmp r0, #0
    rsb lr, r0, #255
    ldreqh r3, [r8, #8]
    beq .Lsec01_00003f9c
    ldr r2, [sp, #48]
    ldrh r3, [r2, #8]
    mul r3, lr, r3
    ldrb r2, [ip]
    ldrb r2, [fp, r2]
    add r3, r3, #128
    mla r2, r0, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
    ldr r5, [sp, #56]
    and r3, r3, #255
    ldrb r3, [r5, r3]
.Lsec01_00003f9c:
    strb r3, [r4, r1]
    add ip, ip, #2
    add r4, r4, #1
.Lsec01_00003fa8:
    cmp r4, r9
    bne .Lsec01_00003f40
    b .Lsec01_000047cc
.Lsec01_00003fb4:
    ldrb r0, [lr, #1]
    cmp r0, #255
    ldreqb r3, [lr]
    beq .Lsec01_00003ffc
    cmp r0, #0
    rsb r4, r0, #255
    ldreqh r3, [r8, #8]
    beq .Lsec01_00003ffc
    ldrb r3, [lr]
    mul r3, r0, r3
    ldr r7, [sp, #48]
    ldrh r2, [r7, #8]
    add r3, r3, #128
    mla r2, r4, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
.Lsec01_00003ffc:
    strb r3, [ip, r1]
    add lr, lr, #2
    add ip, ip, #1
    b .Lsec01_00004014
.Lsec01_0000400c:
    mov lr, r1
    mov ip, #0
.Lsec01_00004014:
    cmp ip, r9
    bne .Lsec01_00003fb4
    b .Lsec01_000047cc
.Lsec01_00004020:
    ldr lr, [sp, #68]
    cmp sl, #0
    cmpne lr, #0
    beq .Lsec01_000041c0
    ldr r0, [sp, #72]
    cmp r0, #0
    movne r4, r1
    addne lr, r1, #2
    movne r6, #0
    bne .Lsec01_0000411c
    b .Lsec01_000041c0
.Lsec01_0000404c:
    ldrb r2, [r4, #2]
    ldrb r3, [r4, #3]
    add r3, r3, r2, lsl #8
    mov r3, r3, lsl #16
    cmn r3, #65536
    mov ip, r3, lsr #16
    bne .Lsec01_00004080
    ldrb r3, [r4, #1]
    mov r3, r3, asr r5
    ldrb r2, [r4]
    ldr r3, [sl, r3, lsl #2]
    mov r2, r2, lsl #1
    b .Lsec01_00004100
.Lsec01_00004080:
    rsb r0, ip, #65280
    cmp ip, #0
    add r0, r0, #255
    bne .Lsec01_000040a8
    ldrh r3, [r8, #8]
    mov r3, r3, lsr #8
    strb r3, [lr, #-2]
    ldrh r3, [r8, #8]
    strb r3, [lr, #-1]
    b .Lsec01_00004110
.Lsec01_000040a8:
    ldrb r3, [r4, #1]
    mov r3, r3, asr r5
    ldr r2, [sp, #48]
    ldrh r1, [r2, #8]
    mul r1, r0, r1
    ldr r7, [sp, #72]
    ldrb r2, [r4]
    ldr r3, [r7, r3, lsl #2]
    mov r2, r2, lsl #1
    ldrh r3, [r2, r3]
    add r1, r1, #32768
    mla r3, ip, r3, r1
    add r3, r3, r3, lsr #16
    mov r3, r3, lsr #16
    mov r3, r3, lsl #16
    mov r2, r3, lsr #16
    and r2, r2, #255
    mov r2, r2, asr r5
    ldr r0, [sp, #68]
    mov r3, r3, lsr #24
    ldr r2, [r0, r2, lsl #2]
    mov r3, r3, lsl #1
.Lsec01_00004100:
    ldrh r2, [r3, r2]
    mov r3, r2, lsr #8
    strb r3, [lr, #-2]
    strb r2, [lr, #-1]
.Lsec01_00004110:
    add r6, r6, #1
    add r4, r4, #4
    add lr, lr, #2
.Lsec01_0000411c:
    cmp r6, r9
    bne .Lsec01_0000404c
    b .Lsec01_000047cc
.Lsec01_00004128:
    ldrb ip, [r4, #2]
    ldrb r3, [r4, #3]
    add r3, r3, ip, lsl #8
    mov r3, r3, lsl #16
    cmn r3, #65536
    mov ip, r3, lsr #16
    bne .Lsec01_0000414c
.Lsec01_00004144:
    bl memcpy
    b .Lsec01_000041b0
.Lsec01_0000414c:
    rsb r0, ip, #65280
    cmp ip, #0
    add r0, r0, #255
    ldreqh r3, [r8, #8]
    moveq r3, r3, lsr #8
    streqb r3, [r5]
    ldreqh r3, [r8, #8]
    beq .Lsec01_000041ac
    ldrb r2, [r4]
    ldrb r3, [r4, #1]
    add r3, r3, r2, lsl #8
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    mul r3, ip, r3
    ldr r7, [sp, #48]
    ldrh r1, [r7, #8]
    add r3, r3, #32768
    mla r3, r0, r1, r3
    add r3, r3, r3, lsr #16
    mov r3, r3, lsr #16
    mov r3, r3, lsl #16
    mov r2, r3, lsr #24
    strb r2, [r5]
    mov r3, r3, lsr #16
.Lsec01_000041ac:
    strb r3, [r5, #1]
.Lsec01_000041b0:
    add r6, r6, #1
    add r4, r4, #4
    add r5, r5, #2
    b .Lsec01_000041cc
.Lsec01_000041c0:
    mov r4, r1
    mov r5, r1
    mov r6, #0
.Lsec01_000041cc:
    cmp r6, r9
    mov r0, r5
    mov r1, r4
    mov r2, #2
    bne .Lsec01_00004128
    b .Lsec01_000047cc
.Lsec01_000041e4:
    ldr lr, [sp, #4]
    ldrb r3, [lr, #9]
    cmp r3, #8
    bne .Lsec01_00004428
    ldr r0, [sp, #56]
    cmp fp, #0
    cmpne r0, #0
    bne .Lsec01_00004214
.Lsec01_00004204:
    mov r0, r1
    mov r4, #0
    add r1, r1, #3
    b .Lsec01_0000441c
.Lsec01_00004214:
    cmp r7, #0
    movne r0, r1
    movne r4, #0
    addne r1, r1, #3
    bne .Lsec01_00004344
    b .Lsec01_00004204
.Lsec01_0000422c:
    ldrb ip, [r0, #3]
    cmp ip, #255
    bne .Lsec01_0000425c
    ldrb r3, [r0]
    ldrb r3, [r7, r3]
    strb r3, [r1, #-3]
    ldrb r3, [r0, #1]
    ldrb r3, [r7, r3]
    strb r3, [r1, #-2]
    ldrb r3, [r0, #2]
    ldrb r3, [r7, r3]
    b .Lsec01_00004334
.Lsec01_0000425c:
    rsb r3, ip, #255
    mov r3, r3, lsl #16
    cmp ip, #0
    mov lr, r3, lsr #16
    bne .Lsec01_00004288
    ldrh r3, [r8, #2]
    strb r3, [r1, #-3]
    ldrh r3, [r8, #4]
    strb r3, [r1, #-2]
    ldrh r3, [r8, #6]
    b .Lsec01_00004334
.Lsec01_00004288:
    ldr r2, [sp, #48]
    ldrh r3, [r2, #2]
    mul r3, lr, r3
    ldrb r2, [r0]
    ldrb r2, [fp, r2]
    add r3, r3, #128
    mla r2, ip, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    ldr r5, [sp, #56]
    mov r3, r3, asr #8
    and r3, r3, #255
    ldrb r3, [r5, r3]
    strb r3, [r1, #-3]
    ldr r2, [sp, #48]
    ldrh r3, [r2, #4]
    mul r3, lr, r3
    ldrb r2, [r0, #1]
    ldrb r2, [fp, r2]
    add r3, r3, #128
    mla r2, ip, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
    and r3, r3, #255
    ldrb r3, [r5, r3]
    strb r3, [r1, #-2]
    ldr r5, [sp, #48]
    ldrh r3, [r5, #6]
    mul r3, lr, r3
    ldrb r2, [r0, #2]
    ldrb r2, [fp, r2]
    add r3, r3, #128
    mla r2, ip, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
    ldr lr, [sp, #56]
    and r3, r3, #255
    ldrb r3, [lr, r3]
.Lsec01_00004334:
    strb r3, [r1, #-1]
    add r4, r4, #1
    add r0, r0, #4
    add r1, r1, #3
.Lsec01_00004344:
    cmp r4, r9
    bne .Lsec01_0000422c
    b .Lsec01_000047cc
.Lsec01_00004350:
    ldrb ip, [r0, #3]
    cmp ip, #255
    bne .Lsec01_00004374
    ldrb r3, [r0]
    strb r3, [r1, #-3]
    ldrb r3, [r0, #1]
    strb r3, [r1, #-2]
    ldrb r3, [r0, #2]
    b .Lsec01_0000440c
.Lsec01_00004374:
    rsb r3, ip, #255
    mov r3, r3, lsl #16
    cmp ip, #0
    mov lr, r3, lsr #16
    ldrh r5, [r8, #2]
    streqb r5, [r1, #-3]
    ldreqh r3, [r8, #4]
    streqb r3, [r1, #-2]
    ldreqh r3, [r8, #6]
    beq .Lsec01_0000440c
    ldrb r3, [r0]
    mul r3, ip, r3
    add r3, r3, #128
    mla r2, r5, lr, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
    strb r3, [r1, #-3]
    ldrb r3, [r0, #1]
    mul r3, ip, r3
    ldrh r2, [r8, #4]
    add r3, r3, #128
    mla r2, lr, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
    strb r3, [r1, #-2]
    ldrb r3, [r0, #2]
    mul r3, ip, r3
    ldrh r2, [r8, #6]
    add r3, r3, #128
    mla r2, lr, r2, r3
    mov r2, r2, lsl #16
    mov r3, r2, lsr #24
    add r3, r3, r2, lsr #16
    mov r3, r3, asr #8
.Lsec01_0000440c:
    strb r3, [r1, #-1]
    add r4, r4, #1
    add r0, r0, #4
    add r1, r1, #3
.Lsec01_0000441c:
    cmp r4, r9
    bne .Lsec01_00004350
    b .Lsec01_000047cc
.Lsec01_00004428:
    ldr r0, [sp, #68]
    cmp sl, #0
    cmpne r0, #0
    beq .Lsec01_000047ac
    ldr r2, [sp, #72]
    cmp r2, #0
    movne lr, r1
    addne ip, r1, #6
    movne r6, #0
    bne .Lsec01_00004664
    b .Lsec01_000047ac
.Lsec01_00004454:
    ldrb r2, [lr, #6]
    ldrb r3, [lr, #7]
    add r3, r3, r2, lsl #8
    mov r3, r3, lsl #16
    cmn r3, #65536
    mov r4, r3, lsr #16
    bne .Lsec01_000044d0
    ldrb r3, [lr, #1]
    mov r3, r3, asr r5
    ldrb r2, [lr]
    ldr r3, [sl, r3, lsl #2]
    mov r2, r2, lsl #1
    ldrh r2, [r2, r3]
    mov r3, r2, lsr #8
    strb r3, [ip, #-6]
    strb r2, [ip, #-5]
    ldrb r3, [lr, #3]
    mov r3, r3, asr r5
    ldrb r2, [lr, #2]
    ldr r3, [sl, r3, lsl #2]
    mov r2, r2, lsl #1
    ldrh r2, [r2, r3]
    mov r3, r2, lsr #8
    strb r3, [ip, #-4]
    strb r2, [ip, #-3]
    ldrb r3, [lr, #5]
    mov r3, r3, asr r5
    ldrb r2, [lr, #4]
    ldr r3, [sl, r3, lsl #2]
    mov r2, r2, lsl #1
    b .Lsec01_00004648
.Lsec01_000044d0:
    cmp r4, #0
    bne .Lsec01_00004518
    ldrh r3, [r8, #2]
    mov r3, r3, lsr #8
    strb r3, [ip, #-6]
    ldrh r3, [r8, #2]
    strb r3, [ip, #-5]
    ldrh r3, [r8, #4]
    mov r3, r3, lsr #8
    strb r3, [ip, #-4]
    ldrh r3, [r8, #4]
    strb r3, [ip, #-3]
    ldrh r3, [r8, #6]
    mov r3, r3, lsr #8
    strb r3, [ip, #-2]
    ldrh r3, [r8, #6]
    strb r3, [ip, #-1]
    b .Lsec01_00004658
.Lsec01_00004518:
    ldrb r1, [lr, #1]
    mov r1, r1, asr r5
    ldr r7, [sp, #48]
    rsb r0, r4, #65280
    ldrh r3, [r7, #2]
    add r0, r0, #255
    mul r2, r0, r3
    ldr r7, [sp, #72]
    ldrb r3, [lr]
    ldr r1, [r7, r1, lsl #2]
    mov r3, r3, lsl #1
    ldrh r3, [r3, r1]
    add r2, r2, #32768
    mla r3, r4, r3, r2
    add r3, r3, r3, lsr #16
    mov r3, r3, lsr #16
    mov r3, r3, lsl #16
    mov r2, r3, lsr #16
    and r2, r2, #255
    mov r2, r2, asr r5
    ldr r1, [sp, #68]
    mov r3, r3, lsr #24
    ldr r2, [r1, r2, lsl #2]
    mov r3, r3, lsl #1
    ldrh r2, [r3, r2]
    mov r3, r2, lsr #8
    strb r3, [ip, #-6]
    strb r2, [ip, #-5]
    ldrb r2, [lr, #3]
    mov r2, r2, asr r5
    ldr r7, [sp, #48]
    ldrh r3, [r7, #4]
    mul r1, r0, r3
    ldr r7, [sp, #72]
    ldrb r3, [lr, #2]
    ldr r2, [r7, r2, lsl #2]
    mov r3, r3, lsl #1
    ldrh r3, [r3, r2]
    add r1, r1, #32768
    mla r3, r4, r3, r1
    add r3, r3, r3, lsr #16
    mov r3, r3, lsr #16
    mov r3, r3, lsl #16
    mov r2, r3, lsr #16
    and r2, r2, #255
    mov r2, r2, asr r5
    ldr r1, [sp, #68]
    mov r3, r3, lsr #24
    ldr r2, [r1, r2, lsl #2]
    mov r3, r3, lsl #1
    ldrh r2, [r3, r2]
    mov r3, r2, lsr #8
    strb r3, [ip, #-4]
    strb r2, [ip, #-3]
    ldrb r2, [lr, #5]
    mov r2, r2, asr r5
    ldr r7, [sp, #48]
    ldrh r3, [r7, #6]
    mul r1, r0, r3
    ldr r0, [sp, #72]
    ldrb r3, [lr, #4]
    ldr r2, [r0, r2, lsl #2]
    mov r3, r3, lsl #1
    ldrh r3, [r3, r2]
    add r1, r1, #32768
    mla r3, r4, r3, r1
    add r3, r3, r3, lsr #16
    mov r3, r3, lsr #16
    mov r3, r3, lsl #16
    mov r2, r3, lsr #16
    and r2, r2, #255
    mov r2, r2, asr r5
    ldr r1, [sp, #68]
    mov r3, r3, lsr #24
    ldr r2, [r1, r2, lsl #2]
    mov r3, r3, lsl #1
.Lsec01_00004648:
    ldrh r2, [r3, r2]
    mov r3, r2, lsr #8
    strb r3, [ip, #-2]
    strb r2, [ip, #-1]
.Lsec01_00004658:
    add r6, r6, #1
    add lr, lr, #8
    add ip, ip, #6
.Lsec01_00004664:
    cmp r6, r9
    bne .Lsec01_00004454
    b .Lsec01_000047cc
.Lsec01_00004670:
    ldrb ip, [r6, #6]
    ldrb r3, [r6, #7]
    add r3, r3, ip, lsl #8
    mov r3, r3, lsl #16
    cmn r3, #65536
    mov r7, r3, lsr #16
    bne .Lsec01_00004694
.Lsec01_0000468c:
    bl memcpy
    b .Lsec01_0000479c
.Lsec01_00004694:
    rsb sl, r7, #65280
    cmp r7, #0
    add sl, sl, #255
    ldrh r5, [r8, #2]
    bne .Lsec01_000046e0
    mov r3, r5, lsr #8
    strb r3, [r4]
    ldrh r3, [r8, #2]
    strb r3, [r4, #1]
    ldrh r3, [r8, #4]
    mov r3, r3, lsr #8
    strb r3, [r4, #2]
    ldrh r3, [r8, #4]
    strb r3, [r4, #3]
    ldrh r3, [r8, #6]
    mov r3, r3, lsr #8
    strb r3, [r4, #4]
    ldrh r3, [r8, #6]
    b .Lsec01_00004798
.Lsec01_000046e0:
    ldrb r0, [r6]
    ldrb r3, [r6, #1]
    add r3, r3, r0, lsl #8
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    mul r3, r7, r3
    add r3, r3, #32768
    mla r3, sl, r5, r3
    ldrb ip, [r6, #2]
    ldrb r2, [r6, #3]
    add r2, r2, ip, lsl #8
    mov r2, r2, lsl #16
    mov r2, r2, lsr #16
    mul r0, r7, r2
    add r3, r3, r3, lsr #16
    mov r3, r3, lsr #16
    mov r3, r3, lsl #16
    mov r2, r3, lsr #24
    mov r3, r3, lsr #16
    ldrb lr, [r6, #4]
    ldrb r1, [r6, #5]
    strb r2, [r4]
    strb r3, [r4, #1]
    ldrh r3, [r8, #4]
    add r0, r0, #32768
    mla r3, sl, r3, r0
    add r1, r1, lr, lsl #8
    mov r1, r1, lsl #16
    mov r1, r1, lsr #16
    mul r1, r7, r1
    add r3, r3, r3, lsr #16
    mov r3, r3, lsr #16
    mov r3, r3, lsl #16
    mov r2, r3, lsr #24
    mov r3, r3, lsr #16
    strb r2, [r4, #2]
    strb r3, [r4, #3]
    ldrh r3, [r8, #6]
    add r1, r1, #32768
    mla r3, sl, r3, r1
    add r3, r3, r3, lsr #16
    mov r3, r3, lsr #16
    mov r3, r3, lsl #16
    mov r2, r3, lsr #24
    strb r2, [r4, #4]
    mov r3, r3, lsr #16
.Lsec01_00004798:
    strb r3, [r4, #5]
.Lsec01_0000479c:
    add fp, fp, #1
    add r6, r6, #8
    add r4, r4, #6
    b .Lsec01_000047b8
.Lsec01_000047ac:
    mov r6, r1
    mov r4, r1
    mov fp, #0
.Lsec01_000047b8:
    cmp fp, r9
    mov r0, r4
    mov r1, r6
    mov r2, #6
    bne .Lsec01_00004670
.Lsec01_000047cc:
    ldr r2, [sp, #4]
    ldrb r0, [r2, #8]
    tst r0, #4
    beq .Lsec01_00004828
    ldr r5, [sp, #4]
    ldrb r2, [r2, #10]
    ldrb r3, [r5, #9]
    sub r2, r2, #1
    and r2, r2, #255
    mul r3, r2, r3
    and r1, r3, #255
    cmp r1, #7
    bic r3, r0, #4
    strb r3, [r5, #8]
    mulls r3, r1, r9
    movhi r3, r1, lsr #3
    mulhi r3, r9, r3
    strb r2, [r5, #10]
    strb r1, [r5, #11]
    addls r3, r3, #7
    ldr r7, [sp, #4]
    movls r3, r3, lsr #3
    str r3, [r7, #4]
.Lsec01_00004828:
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x00007f7f
    .long 0x00003f3f
    .long 0x00000f0f
.arm
png_set_rgb_to_gray_fixed:
    stmdb sp!, {r4, r5, lr}
    cmp r1, #2
    mov r4, r0
    sub sp, sp, #4
    mov r0, r2
    mov r5, r3
    beq .Lsec01_00004878
    cmp r1, #3
    beq .Lsec01_00004884
    cmp r1, #1
    ldreq r3, [r4, #140]
    orreq r3, r3, #6291456
    beq .Lsec01_0000488c
    b .Lsec01_00004890
.Lsec01_00004878:
    ldr r3, [r4, #140]
    orr r3, r3, #4194304
    b .Lsec01_0000488c
.Lsec01_00004884:
    ldr r3, [r4, #140]
    orr r3, r3, #2097152
.Lsec01_0000488c:
    str r3, [r4, #140]
.Lsec01_00004890:
    ldrb r3, [r4, #322]
    cmp r3, #3
    ldreq r3, [r4, #140]
    orreq r3, r3, #4096
    streq r3, [r4, #140]
    orrs r3, r0, r5
    bmi .Lsec01_000048f4
    ldr r3, [pc, #120]
    add r2, r0, r5
    cmp r2, r3
    bgt .Lsec01_000048e8
    ldr r1, [pc, #108]
    mov r0, r0, lsl #15
.Lsec01_000048c4:
    bl __aeabi_uidiv
    ldr r1, [pc, #96]
    mov r3, r0, lsl #16
    mov r0, r5, lsl #15
    mov r5, r3, lsr #16
.Lsec01_000048d8:
    bl __aeabi_uidiv
    mov r0, r0, lsl #16
    mov r0, r0, lsr #16
    b .Lsec01_000048fc
.Lsec01_000048e8:
    mov r0, r4
    ldr r1, [pc, #64]
.Lsec01_000048f0:
    bl png_warning
.Lsec01_000048f4:
    ldr r5, [pc, #60]
    ldr r0, [pc, #60]
.Lsec01_000048fc:
    rsb r3, r5, #0
    rsb r3, r0, r3
    ldr r2, [pc, #52]
    sub r3, r3, #32768
    strh r3, [r4, r2]
    ldr r3, [pc, #44]
    strh r5, [r4, r3]
    add r3, r3, #2
    strh r0, [r4, r3]
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long 0x0001869f
    .long 0x000186a0
    .long .Lsec05_00000000
    .long 0x00001b38
    .long 0x00005b8a
    .long 0x0000024a
    .long 0x00000246
.arm
png_set_rgb_to_gray:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    mov sl, r0
    mov r9, r1
    mov r0, r2
    mov r1, r3
    ldr r7, [pc, #116]
.Lsec01_00004960:
    bl __aeabi_d2f
    mov r6, #0
    ldr r5, [pc, #108]
.Lsec01_0000496c:
    bl __aeabi_f2d
    mov r4, #0
    mov r2, r6
    mov r3, r7
.Lsec01_0000497c:
    bl __aeabi_dmul
    mov r2, r4
    mov r3, r5
.Lsec01_00004988:
    bl __aeabi_dadd
.Lsec01_0000498c:
    bl __aeabi_d2iz
    mov r8, r0
    add r0, sp, #32
    ldmia r0, {r0, r1}
.Lsec01_0000499c:
    bl __aeabi_d2f
.Lsec01_000049a0:
    bl __aeabi_f2d
    mov r2, r6
    mov r3, r7
.Lsec01_000049ac:
    bl __aeabi_dmul
    mov r2, r4
    mov r3, r5
.Lsec01_000049b8:
    bl __aeabi_dadd
.Lsec01_000049bc:
    bl __aeabi_d2iz
    mov r1, r9
    mov r3, r0
    mov r2, r8
    mov r0, sl
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
.Lsec01_000049d4:
    b png_set_rgb_to_gray_fixed
    .long 0x40f86a00
    .long 0x3fe00000
.arm
png_set_background:
    stmdb sp!, {r4, r5, r6, r7, lr}
    subs r7, r2, #0
    sub sp, sp, #4
    mov r2, #10
    mov r6, r3
    mov r4, r0
    mov r5, r1
    bne .Lsec01_00004a0c
    ldr r1, [pc, #140]
.Lsec01_00004a04:
    bl png_warning
    b .Lsec01_00004a88
.Lsec01_00004a0c:
    ldr r3, [r0, #140]
    orr r3, r3, #128
    str r3, [r0, #140]
    add r0, r0, #340
.Lsec01_00004a1c:
    bl memcpy
    add r0, sp, #24
    ldmia r0, {r0, r1}
.Lsec01_00004a28:
    bl __aeabi_d2f
    ldr r2, [r4, #140]
    cmp r6, #0
    strb r7, [r4, #332]
    str r0, [r4, #336]
    orr r1, r2, #256
    beq .Lsec01_00004a74
    ldrb r3, [r4, #322]
    tst r3, #2
    str r1, [r4, #140]
    beq .Lsec01_00004a64
    b .Lsec01_00004a88
.Lsec01_00004a58:
    ldrh r3, [r5, #6]
    cmp r3, r1
    bne .Lsec01_00004a88
.Lsec01_00004a64:
    ldr r3, [r4, #132]
    orr r3, r3, #2048
    str r3, [r4, #132]
    b .Lsec01_00004a88
.Lsec01_00004a74:
    ldrh r1, [r5, #4]
    ldrh r3, [r5, #2]
    cmp r1, r3
    str r2, [r4, #140]
    beq .Lsec01_00004a58
.Lsec01_00004a88:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000030
.arm
png_set_crc_action:
    stmdb sp!, {r4, r5, lr}
    sub r1, r1, #2
    sub sp, sp, #4
    mov r4, r0
    mov r5, r2
    cmp r1, #3
    ldrls pc, [pc, r1, lsl #2]
    b .Lsec01_00004af0
    .long .Lsec01_00004ae8
    .long .Lsec01_00004ac8
    .long .Lsec01_00004ad8
    .long .Lsec01_00004afc
.arm
.Lsec01_00004ac8:
    ldr r3, [r0, #136]
    bic r3, r3, #3072
    orr r3, r3, #1024
    b .Lsec01_00004af8
.Lsec01_00004ad8:
    ldr r3, [r0, #136]
    bic r3, r3, #3072
    orr r3, r3, #3072
    b .Lsec01_00004af8
.Lsec01_00004ae8:
    ldr r1, [pc, #120]
.Lsec01_00004aec:
    bl png_warning
.Lsec01_00004af0:
    ldr r3, [r4, #136]
    bic r3, r3, #3072
.Lsec01_00004af8:
    str r3, [r4, #136]
.Lsec01_00004afc:
    sub r3, r5, #1
    cmp r3, #4
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00004b50
    .long .Lsec01_00004b40
    .long .Lsec01_00004b50
    .long .Lsec01_00004b20
    .long .Lsec01_00004b30
    .long .Lsec01_00004b5c
.arm
.Lsec01_00004b20:
    ldr r3, [r4, #136]
    bic r3, r3, #768
    orr r3, r3, #256
    b .Lsec01_00004b58
.Lsec01_00004b30:
    ldr r3, [r4, #136]
    bic r3, r3, #768
    orr r3, r3, #768
    b .Lsec01_00004b58
.Lsec01_00004b40:
    ldr r3, [r4, #136]
    bic r3, r3, #768
    orr r3, r3, #512
    b .Lsec01_00004b58
.Lsec01_00004b50:
    ldr r3, [r4, #136]
    bic r3, r3, #768
.Lsec01_00004b58:
    str r3, [r4, #136]
.Lsec01_00004b5c:
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_00000064
.arm
png_do_read_transformations:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    ldr r3, [r0, #264]
    cmp r3, #0
    sub sp, sp, #88
    mov r9, r0
    bne .Lsec01_00004ba8
    add r4, sp, #38
    ldr r1, [pc, #980]
    mov r0, r4
    ldr r2, [r9, #256]
    ldrb r3, [r9, #320]
.Lsec01_00004b98:
    bl sprintf
    mov r0, r9
    mov r1, r4
.Lsec01_00004ba4:
    bl png_error
.Lsec01_00004ba8:
    ldr r3, [r9, #140]
    tst r3, #4096
    beq .Lsec01_00004c0c
    ldrb r3, [r9, #292]
    cmp r3, #3
    bne .Lsec01_00004be8
    ldr r3, [pc, #928]
    ldr r1, [r9, #264]
    ldrh ip, [r9, r3]
    ldr r2, [r9, #304]
    ldr r3, [r9, #420]
    add r1, r1, #1
    add r0, r9, #284
    str ip, [sp]
.Lsec01_00004be0:
    bl png_do_expand_palette
    b .Lsec01_00004c0c
.Lsec01_00004be8:
    ldr r3, [pc, #888]
    ldrh r2, [r9, r3]
    ldr r1, [r9, #264]
    cmp r2, #0
    add r0, r9, #284
    addne r1, r1, #1
    addne r2, r9, #424
    addeq r1, r1, #1
.Lsec01_00004c08:
    bl png_do_expand
.Lsec01_00004c0c:
    ldr r3, [r9, #136]
    ands r2, r3, #4194304
    ldrne r1, [r9, #264]
    orrne r2, r2, #128
    addne r1, r1, #1
    addne r0, r9, #284
.Lsec01_00004c24:
    blne png_do_strip_filler
    ldr r3, [r9, #140]
    tst r3, #6291456
    beq .Lsec01_00004c80
    ldr r2, [r9, #264]
    mov r0, r9
    add r2, r2, #1
    add r1, r9, #284
.Lsec01_00004c44:
    bl png_do_rgb_to_gray
    cmp r0, #0
    beq .Lsec01_00004c80
    ldr r3, [r9, #140]
    cmp r3, #4194304
    mov r3, #1
    strb r3, [r9, #580]
    moveq r0, r9
    ldreq r1, [pc, #768]
.Lsec01_00004c68:
    bleq png_warning
    ldr r3, [r9, #140]
    cmp r3, #2097152
    moveq r0, r9
    ldreq r1, [pc, #748]
.Lsec01_00004c7c:
    bleq png_error
.Lsec01_00004c80:
    ldr r3, [r9, #140]
    tst r3, #16384
    beq .Lsec01_00004ca4
    ldr r3, [r9, #132]
    tst r3, #2048
    ldreq r1, [r9, #264]
    addeq r0, r9, #284
    addeq r1, r1, #1
.Lsec01_00004ca0:
    bleq png_do_gray_to_rgb
.Lsec01_00004ca4:
    ldr r3, [r9, #140]
    tst r3, #128
    beq .Lsec01_00004d1c
    ldr r3, [pc, #688]
    ldrh r3, [r9, r3]
    cmp r3, #0
    bne .Lsec01_00004ccc
    ldrb r3, [r9, #322]
    tst r3, #4
    beq .Lsec01_00004d1c
.Lsec01_00004ccc:
    ldr r1, [r9, #264]
    ldr lr, [r9, #384]
    add r4, r9, #388
    ldmia r4, {r4, r5, r6, r7}
    ldr r8, [r9, #404]
    ldr sl, [r9, #372]
    add ip, r9, #348
    add ip, ip, #2
    add r1, r1, #1
    add r0, r9, #284
    add r2, r9, #424
    add r3, r9, #340
    stmia sp, {ip, lr}
    str r4, [sp, #8]
    str r5, [sp, #12]
    str r6, [sp, #16]
    str r7, [sp, #20]
    str r8, [sp, #24]
    str sl, [sp, #28]
.Lsec01_00004d18:
    bl png_do_background
.Lsec01_00004d1c:
    ldr r3, [r9, #140]
    tst r3, #8192
    beq .Lsec01_00004d78
    tst r3, #128
    beq .Lsec01_00004d4c
    ldr r3, [pc, #560]
    ldrh r3, [r9, r3]
    cmp r3, #0
    bne .Lsec01_00004d78
    ldrb r3, [r9, #322]
    tst r3, #4
    bne .Lsec01_00004d78
.Lsec01_00004d4c:
    ldrb r3, [r9, #322]
    cmp r3, #3
    beq .Lsec01_00004d78
    ldr r1, [r9, #264]
    ldr ip, [r9, #372]
    ldr r2, [r9, #384]
    ldr r3, [r9, #396]
    add r1, r1, #1
    add r0, r9, #284
    str ip, [sp]
.Lsec01_00004d74:
    bl png_do_gamma
.Lsec01_00004d78:
    ldr r3, [r9, #140]
    tst r3, #1024
    ldrne r1, [r9, #264]
    addne r0, r9, #284
    addne r1, r1, #1
.Lsec01_00004d8c:
    blne png_do_chop
    ldr r3, [r9, #140]
    tst r3, #64
    beq .Lsec01_00004dc8
    ldr r1, [r9, #264]
    ldr r3, [r9, #524]
    add r1, r1, #1
    add r0, r9, #284
    ldr r2, [r9, #520]
.Lsec01_00004db0:
    bl png_do_dither
    ldr r3, [r9, #288]
    cmp r3, #0
    moveq r0, r9
    ldreq r1, [pc, #424]
.Lsec01_00004dc4:
    bleq png_error
.Lsec01_00004dc8:
    ldr r3, [r9, #140]
    tst r3, #32
    ldrne r1, [r9, #264]
    addne r0, r9, #284
    addne r1, r1, #1
.Lsec01_00004ddc:
    blne png_do_invert
    ldr r3, [r9, #140]
    tst r3, #8
    beq .Lsec01_00004e04
    ldr r1, [r9, #264]
    add r2, r9, #412
    add r1, r1, #1
    add r2, r2, #1
    add r0, r9, #284
.Lsec01_00004e00:
    bl png_do_unshift
.Lsec01_00004e04:
    ldr r3, [r9, #140]
    tst r3, #4
    ldrne r1, [r9, #264]
    addne r0, r9, #284
    addne r1, r1, #1
.Lsec01_00004e18:
    blne png_do_unpack
    ldr r3, [r9, #140]
    tst r3, #1
    ldrne r1, [r9, #264]
    addne r0, r9, #284
    addne r1, r1, #1
.Lsec01_00004e30:
    blne png_do_bgr
    ldr r3, [r9, #140]
    tst r3, #65536
    ldrne r1, [r9, #264]
    addne r0, r9, #284
    addne r1, r1, #1
.Lsec01_00004e48:
    blne png_do_packswap
    ldr r3, [r9, #140]
    tst r3, #16384
    beq .Lsec01_00004e70
    ldr r3, [r9, #132]
    tst r3, #2048
    ldrne r1, [r9, #264]
    addne r0, r9, #284
    addne r1, r1, #1
.Lsec01_00004e6c:
    blne png_do_gray_to_rgb
.Lsec01_00004e70:
    ldr r3, [r9, #140]
    tst r3, #32768
    beq .Lsec01_00004e98
    ldr r3, [pc, #240]
    ldr r1, [r9, #264]
    ldrh r2, [r9, r3]
    add r1, r1, #1
    add r0, r9, #284
    ldr r3, [r9, #136]
.Lsec01_00004e94:
    bl png_do_read_filler
.Lsec01_00004e98:
    ldr r3, [r9, #140]
    tst r3, #524288
    ldrne r1, [r9, #264]
    addne r0, r9, #284
    addne r1, r1, #1
.Lsec01_00004eac:
    blne png_do_read_invert_alpha
    ldr r3, [r9, #140]
    tst r3, #131072
    ldrne r1, [r9, #264]
    addne r0, r9, #284
    addne r1, r1, #1
.Lsec01_00004ec4:
    blne png_do_read_swap_alpha
    ldr r3, [r9, #140]
    tst r3, #16
    ldrne r1, [r9, #264]
    addne r0, r9, #284
    addne r1, r1, #1
.Lsec01_00004edc:
    blne png_do_swap
    ldr r3, [r9, #140]
    tst r3, #1048576
    beq .Lsec01_00004f58
    ldr r3, [r9, #116]
    cmp r3, #0
    ldrne r2, [r9, #264]
    movne r0, r9
    addne r2, r2, #1
    addne r1, r9, #284
    movne lr, pc
    bxne r3
    ldrb r3, [r9, #128]
    cmp r3, #0
    strneb r3, [r9, #293]
    ldrb r3, [r9, #129]
    cmp r3, #0
    strneb r3, [r9, #294]
    ldrb r3, [r9, #293]
    ldrb r2, [r9, #294]
    mul r3, r2, r3
    ldr r2, [r9, #284]
    and r3, r3, #255
    cmp r3, #7
    strb r3, [r9, #295]
    mulls r3, r2, r3
    movhi r3, r3, lsr #3
    mulhi r3, r2, r3
    addls r3, r3, #7
    movls r3, r3, lsr #3
    str r3, [r9, #288]
.Lsec01_00004f58:
    add sp, sp, #88
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    bx lr
    .long .Lsec05_00000090
    .long 0x00000136
    .long .Lsec05_000000b8
    .long .Lsec05_000000e0
    .long 0x0000014a
.arm
png_set_dither:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    sub sp, sp, #76
    ldr ip, [r0, #140]
    ldr lr, [sp, #116]
    orr ip, ip, #64
    cmp lr, #0
    mov r8, r0
    str ip, [r0, #140]
    str r1, [sp, #12]
    str r2, [sp, #8]
    str r3, [sp, #4]
    ldr r6, [sp, #112]
    bne .Lsec01_00004fd8
    mov r1, r2
.Lsec01_00004fb0:
    bl png_malloc
    ldr r2, [sp, #116]
    str r0, [r8, #524]
    b .Lsec01_00004fcc
.Lsec01_00004fc0:
    ldr r3, [r8, #524]
    strb r2, [r3, r2]
    add r2, r2, #1
.Lsec01_00004fcc:
    ldr r0, [sp, #8]
    cmp r2, r0
    blt .Lsec01_00004fc0
.Lsec01_00004fd8:
    ldr r1, [sp, #8]
    ldr r2, [sp, #4]
    cmp r1, r2
    ble .Lsec01_000055ec
    cmp r6, #0
    beq .Lsec01_000052b4
    mov r0, r8
.Lsec01_00004ff4:
    bl png_malloc
    mov r2, #0
    str r0, [r8, #624]
    b .Lsec01_00005010
.Lsec01_00005004:
    ldr r3, [r8, #624]
    strb r2, [r3, r2]
    add r2, r2, #1
.Lsec01_00005010:
    ldr r3, [sp, #8]
    cmp r2, r3
    blt .Lsec01_00005004
    sub lr, r3, #1
    b .Lsec01_00005074
.Lsec01_00005024:
    ldr ip, [r8, #624]
    add r3, r0, ip
    ldrb r4, [r3, #1]
    ldrb r5, [r0, ip]
    mov r1, r4, lsl #1
    mov r3, r5, lsl #1
    ldrh r2, [r3, r6]
    ldrh r3, [r1, r6]
    cmp r2, r3
    strccb r4, [r0, ip]
    ldrcc r3, [r8, #624]
    addcc r3, r3, r0
    strccb r5, [r3, #1]
    movcc r7, #0
    add r0, r0, #1
.Lsec01_00005060:
    cmp r0, lr
    blt .Lsec01_00005024
    cmp r7, #0
    bne .Lsec01_00005088
    sub lr, lr, #1
.Lsec01_00005074:
    ldr ip, [sp, #4]
    cmp lr, ip
    movge r7, #1
    movge r0, #0
    bge .Lsec01_00005060
.Lsec01_00005088:
    ldr lr, [sp, #116]
    cmp lr, #0
    moveq r9, lr
    movne r5, #0
    ldreq sl, [sp, #8]
    moveq fp, r9
    ldrne r4, [sp, #8]
    movne r6, r5
    bne .Lsec01_00005100
    b .Lsec01_0000519c
.Lsec01_000050b0:
    ldr r2, [r8, #624]
    ldr r0, [sp, #4]
    ldrb r3, [r2, r5]
    cmp r3, r0
    blt .Lsec01_000050f8
    add r2, r2, r4
.Lsec01_000050c8:
    ldrb r3, [r2, #-1]!
    ldr r1, [sp, #4]
    cmp r3, r1
    sub r4, r4, #1
    bge .Lsec01_000050c8
    ldr ip, [sp, #12]
    mov r3, #3
    mov r1, ip
    mov r2, r3
    add r0, r6, ip
    mla r1, r4, r3, r1
.Lsec01_000050f4:
    bl memcpy
.Lsec01_000050f8:
    add r5, r5, #1
    add r6, r6, #3
.Lsec01_00005100:
    ldr lr, [sp, #4]
    cmp r5, lr
    blt .Lsec01_000050b0
    b .Lsec01_00005294
.Lsec01_00005110:
    ldr r2, [r8, #624]
    ldr r0, [sp, #4]
    ldrb r3, [r2, r9]
    cmp r3, r0
    blt .Lsec01_00005194
    add r2, r2, sl
.Lsec01_00005128:
    ldrb r3, [r2, #-1]!
    ldr r1, [sp, #4]
    cmp r3, r1
    sub sl, sl, #1
    bge .Lsec01_00005128
    ldr r5, [sp, #12]
    mov r4, #3
    mla r5, sl, r4, r5
    ldr r3, [sp, #12]
    add r7, sp, #69
    add r6, fp, r3
    mov r1, r5
    mov r2, r4
    mov r0, r7
.Lsec01_00005160:
    bl memcpy
    mov r1, r6
    mov r2, r4
    mov r0, r5
.Lsec01_00005170:
    bl memcpy
    mov r0, r6
    mov r1, r7
    mov r2, r4
.Lsec01_00005180:
    bl memcpy
    ldr r3, [r8, #524]
    strb r9, [r3, sl]
    ldr r3, [r8, #524]
    strb sl, [r3, r9]
.Lsec01_00005194:
    add r9, r9, #1
    add fp, fp, #3
.Lsec01_0000519c:
    ldr ip, [sp, #4]
    cmp r9, ip
    blt .Lsec01_00005110
    mov r4, #0
    b .Lsec01_00005288
.Lsec01_000051b0:
    ldr r3, [r8, #524]
    ldr lr, [sp, #4]
    ldrb r2, [r4, r3]
    cmp r2, lr
    add r9, r4, r3
    blt .Lsec01_00005284
    mov r3, #3
    mul r3, r2, r3
    ldr r0, [sp, #12]
    add r2, r0, r3
    ldrb r7, [r0, r3]
    ldrb r6, [r2, #1]
    ldrb r3, [r0]
    ldrb r1, [r0, #1]
    ldrb r5, [r2, #2]
    ldrb r2, [r0, #2]
    rsb r3, r3, r7
    rsb r1, r1, r6
    cmp r3, #0
    rsblt r3, r3, #0
    cmp r1, #0
    rsblt r1, r1, #0
    rsb r2, r2, r5
    cmp r2, #0
    rsblt r2, r2, #0
    add r3, r3, r1
    add lr, r3, r2
    mov ip, #1
    mov sl, #0
    b .Lsec01_00005274
.Lsec01_00005228:
    ldrb r3, [r0, #3]
    ldrb r2, [r0, #4]
    ldrb r1, [r0, #5]
    rsb r3, r3, r7
    rsb r2, r2, r6
    cmp r3, #0
    rsblt r3, r3, #0
    cmp r2, #0
    rsblt r2, r2, #0
    rsb r1, r1, r5
    cmp r1, #0
    rsblt r1, r1, #0
    add r3, r3, r2
    add r3, r3, r1
    cmp r3, lr
    movlt sl, ip
    movlt lr, r3
    add ip, ip, #1
    add r0, r0, #3
.Lsec01_00005274:
    ldr r1, [sp, #4]
    cmp ip, r1
    blt .Lsec01_00005228
    strb sl, [r9]
.Lsec01_00005284:
    add r4, r4, #1
.Lsec01_00005288:
    ldr r2, [sp, #8]
    cmp r4, r2
    blt .Lsec01_000051b0
.Lsec01_00005294:
    mov r0, r8
    ldr r1, [r8, #624]
.Lsec01_0000529c:
    bl png_free
    ldr r3, [sp, #4]
    str r3, [sp, #8]
    mov r3, #0
    str r3, [r8, #624]
    b .Lsec01_000055ec
.Lsec01_000052b4:
    ldr r1, [sp, #8]
    mov r0, r8
.Lsec01_000052bc:
    bl png_malloc
    ldr r1, [sp, #8]
    str r0, [r8, #628]
    mov r0, r8
.Lsec01_000052cc:
    bl png_malloc
    mov r2, r6
    str r0, [r8, #632]
    b .Lsec01_000052f0
.Lsec01_000052dc:
    ldr r3, [r8, #628]
    strb r1, [r3, r2]
    ldr r3, [r8, #632]
    strb r1, [r3, r2]
    add r2, r2, #1
.Lsec01_000052f0:
    ldr ip, [sp, #8]
    cmp r2, ip
    and r1, r2, #255
    blt .Lsec01_000052dc
    mov r0, r8
    ldr r1, [pc, #1196]
.Lsec01_00005308:
    bl png_malloc
    str r0, [sp, #28]
    mov r2, #0
.Lsec01_00005314:
    ldr lr, [sp, #28]
    mov r1, #0
    ldr r3, [pc, #1172]
    str r1, [r2, lr]
    add r2, r2, #4
    cmp r2, r3
    bne .Lsec01_00005314
    ldr r6, [sp, #8]
    mov r0, #96
    mov r9, r1
    str r1, [sp, #60]
    str r0, [sp, #24]
    b .Lsec01_0000540c
.Lsec01_00005348:
    ldr r7, [sp, #12]
    mov r3, #3
    mla r7, r9, r3, r7
    add r1, r9, #1
    mov fp, r7
    mov sl, r1
    str r1, [sp, #56]
    b .Lsec01_000053ec
.Lsec01_00005368:
    ldrb r4, [r7, #4]
    ldrb lr, [r7, #3]
    ldrb r3, [fp]
    ldrb ip, [fp, #1]
    ldrb r5, [r7, #5]
    ldrb r2, [fp, #2]
    rsb ip, r4, ip
    rsb r3, lr, r3
    cmp r3, #0
    rsblt r3, r3, #0
    cmp ip, #0
    rsblt ip, ip, #0
    rsb r2, r5, r2
    cmp r2, #0
    rsblt r2, r2, #0
    add r3, r3, ip
    add r4, r3, r2
    ldr r2, [sp, #24]
    cmp r4, r2
    add r7, r7, #3
    bgt .Lsec01_000053e8
.Lsec01_000053bc:
    bl png_malloc_warn
    cmp r0, #0
    mov r2, r4, lsl #2
    str r0, [sp, #60]
    beq .Lsec01_0000554c
    ldr ip, [sp, #28]
    ldr r3, [ip, r2]
    strb sl, [r0, #5]
    str r3, [r0]
    strb r9, [r0, #4]
    str r0, [ip, r2]
.Lsec01_000053e8:
    add sl, sl, #1
.Lsec01_000053ec:
    cmp sl, r6
    mov r0, r8
    mov r1, #8
    blt .Lsec01_00005368
    ldr lr, [sp, #60]
    cmp lr, #0
    beq .Lsec01_0000554c
    ldr r9, [sp, #56]
.Lsec01_0000540c:
    sub r3, r6, #1
    cmp r9, r3
    blt .Lsec01_00005348
    ldr r0, [sp, #60]
    cmp r0, #0
    movne sl, #0
    bne .Lsec01_00005540
    b .Lsec01_0000554c
.Lsec01_0000542c:
    ldr r1, [sp, #28]
    ldr r5, [r1, sl, lsl #2]
.Lsec01_00005434:
    cmp r5, #0
    beq .Lsec01_0000553c
    ldr r0, [r8, #628]
    ldrb r1, [r5, #4]
    ldrb r3, [r0, r1]
    cmp r3, r6
    bge .Lsec01_00005528
    ldrb r2, [r5, #5]
    ldrb r3, [r0, r2]
    cmp r3, r6
    bge .Lsec01_00005528
    tst r6, #1
    movne r4, r1
    moveq r4, r2
    movne r7, r2
    moveq r7, r1
    ldrb r2, [r0, r4]
    ldr r1, [sp, #12]
    ldr r0, [sp, #12]
    mov r3, #3
    sub r6, r6, #1
    mla r0, r2, r3, r0
    mla r1, r6, r3, r1
    mov r2, r3
.Lsec01_00005494:
    bl memcpy
    ldr r2, [sp, #116]
    cmp r2, #0
    moveq r1, r2
    beq .Lsec01_000054e4
    b .Lsec01_000054f0
.Lsec01_000054ac:
    ldr r0, [r8, #628]
    ldr ip, [r8, #524]
    ldrb r2, [r0, r4]
    ldrb r3, [r1, ip]
    cmp r3, r2
    ldreqb r3, [r0, r7]
    streqb r3, [r1, ip]
    ldr r2, [r8, #524]
    ldrb r3, [r1, r2]
    cmp r3, r6
    ldreq r3, [r8, #628]
    ldreqb r3, [r3, r4]
    streqb r3, [r1, r2]
    add r1, r1, #1
.Lsec01_000054e4:
    ldr r3, [sp, #8]
    cmp r1, r3
    blt .Lsec01_000054ac
.Lsec01_000054f0:
    add r1, r8, #628
    ldmia r1, {r1, r3}
    ldrb r2, [r3, r6]
    ldrb r3, [r1, r4]
    strb r3, [r1, r2]
    ldr r3, [r8, #628]
    ldr r1, [r8, #632]
    ldrb r2, [r3, r4]
    ldrb r3, [r1, r6]
    strb r3, [r1, r2]
    ldr r3, [r8, #628]
    strb r6, [r3, r4]
    ldr r3, [r8, #632]
    strb r4, [r3, r6]
.Lsec01_00005528:
    ldr ip, [sp, #4]
    cmp r6, ip
    ble .Lsec01_0000554c
    ldr r5, [r5]
    b .Lsec01_00005434
.Lsec01_0000553c:
    add sl, sl, #1
.Lsec01_00005540:
    ldr lr, [sp, #24]
    cmp sl, lr
    ble .Lsec01_0000542c
.Lsec01_0000554c:
    mov r4, #0
.Lsec01_00005550:
    ldr r0, [sp, #28]
    ldr r1, [r4, r0]
    cmp r1, #0
.Lsec01_0000555c:
    beq .Lsec01_00005580
    ldr r2, [r1]
    mov r0, r8
    str r2, [sp, #60]
.Lsec01_0000556c:
    bl png_free
    ldr r3, [sp, #60]
    cmp r3, #0
    mov r1, r3
    b .Lsec01_0000555c
.Lsec01_00005580:
    ldr ip, [sp, #28]
    mov r5, #0
    ldr r3, [pc, #552]
    str r5, [r4, ip]
    add r4, r4, #4
    cmp r4, r3
    bne .Lsec01_00005550
    ldr lr, [sp, #4]
    cmp r6, lr
    ldrgt r0, [sp, #24]
    movgt r9, r5
    addgt r0, r0, #96
    strgt r0, [sp, #24]
    bgt .Lsec01_0000540c
    ldr r1, [sp, #28]
    mov r0, r8
.Lsec01_000055c0:
    bl png_free
    mov r0, r8
    ldr r1, [r8, #632]
.Lsec01_000055cc:
    bl png_free
    ldr r1, [r8, #628]
    mov r0, r8
.Lsec01_000055d8:
    bl png_free
    ldr r1, [sp, #4]
    str r5, [r8, #628]
    str r5, [r8, #632]
    str r1, [sp, #8]
.Lsec01_000055ec:
    ldr r3, [r8, #304]
    cmp r3, #0
    ldreq r2, [sp, #12]
    ldr r3, [sp, #116]
    ldr ip, [sp, #8]
    streq r2, [r8, #304]
    cmp r3, #0
    mov r3, #308
    strh ip, [r8, r3]
    beq .Lsec01_000057ac
    mov r1, #512
    mov r0, r8
.Lsec01_0000561c:
    bl png_malloc
    mov r2, #512
    mov r1, #0
    str r0, [r8, #520]
.Lsec01_0000562c:
    bl memset
    mov r1, #512
    mov r0, r8
.Lsec01_00005638:
    bl png_malloc
    mov r1, #255
    mov r2, #512
    str r0, [sp, #36]
.Lsec01_00005648:
    bl memset
    mov lr, #0
    str lr, [sp, #32]
    str lr, [sp, #52]
    b .Lsec01_00005790
.Lsec01_0000565c:
    ldr r1, [sp, #52]
    ldr r0, [sp, #12]
    ldrb r2, [r1, r0]
    add r3, r0, r1
    mov r2, r2, lsr #5
    ldrb r1, [r3, #2]
    rsb r9, r2, #0
    ldrb r3, [r3, #1]
    str r2, [sp, #16]
    mov r2, #0
    str r2, [sp, #40]
    mov fp, r3, lsr #5
    mov r1, r1, lsr #5
.Lsec01_00005690:
    ldr r3, [sp, #40]
    ldr ip, [sp, #16]
    ldr r2, [sp, #40]
    cmp r3, ip
    ldrle lr, [sp, #16]
    ldrle r0, [sp, #40]
    mov r2, r2, lsl #6
    str r2, [sp, #44]
    movgt r7, r9
    rsble r7, r0, lr
    rsb r6, fp, #0
    mov sl, #0
.Lsec01_000056c0:
    cmp sl, fp
    movgt r5, r6
    rsble r5, sl, fp
    add r3, r7, r5
    mov ip, sl, lsl #3
    str r3, [sp, #48]
    str ip, [sp, #20]
    rsb lr, r1, #0
    mov r4, #0
.Lsec01_000056e4:
    cmp r4, r1
    ldr r2, [sp, #20]
    mov ip, lr
    rsble ip, r4, r1
    ldr r3, [sp, #44]
    orr r0, r4, r2
    cmp r5, ip
    movge r2, r5
    movlt r2, ip
    cmp r7, r2
    addge r2, ip, r7
    addlt r2, ip, r2
    ldr ip, [sp, #36]
    orr r0, r3, r0
    ldrb r3, [ip, r0]
    ldr ip, [sp, #48]
    add r2, ip, r2
    cmp r2, r3
    ldrlt r3, [sp, #36]
    strltb r2, [r3, r0]
    ldrlt r3, [r8, #520]
    ldrlt ip, [sp, #32]
    add r4, r4, #1
    strltb ip, [r3, r0]
    cmp r4, #8
    add lr, lr, #1
    bne .Lsec01_000056e4
    add sl, sl, #1
    cmp sl, #8
    add r6, r6, #1
    bne .Lsec01_000056c0
    ldr lr, [sp, #40]
    add lr, lr, #1
    cmp lr, #8
    str lr, [sp, #40]
    add r9, r9, #1
    bne .Lsec01_00005690
    ldr r0, [sp, #32]
    ldr r1, [sp, #52]
    add r0, r0, #1
    add r1, r1, #3
    str r0, [sp, #32]
    str r1, [sp, #52]
.Lsec01_00005790:
    ldr r2, [sp, #32]
    ldr r3, [sp, #8]
    cmp r2, r3
    blt .Lsec01_0000565c
    mov r0, r8
    ldr r1, [sp, #36]
.Lsec01_000057a8:
    bl png_free
.Lsec01_000057ac:
    add sp, sp, #76
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x00000c04

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "ignoring out of range rgb_to_gray coefficients"
    .asciz ""
.Lsec05_00000030:
    .asciz "Application must supply a known background gamma"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000064:
    .asciz "Can't discard critical data on CRC error."
    .asciz ""
    .asciz ""
.Lsec05_00000090:
    .asciz "NULL row buffer for row %ld, pass %d"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000000b8:
    .asciz "png_do_rgb_to_gray found nongray pixel"
    .asciz ""
.Lsec05_000000e0:
    .asciz "png_do_dither returned rowbytes=0"
    .asciz ""
    .asciz ""

.section .rodata,"a",%progbits
.balign 4
png_gamma_shift:
.Lsec06_00000000:
    .long 0x00000010
    .long 0x00000021
    .long 0x00000042
    .long 0x00000084
    .long 0x00000110
    .long 0x00000248
    .long 0x00000550
    .long 0x00000ff0

.size png_gamma_shift, 32
.size png_set_strip_16, 16
.size png_set_strip_alpha, 16
.size png_set_gamma, 164
.size png_set_expand, 16
.size png_set_palette_to_rgb, 16
.size png_set_gray_1_2_4_to_8, 16
.size png_set_tRNS_to_alpha, 16
.size png_set_gray_to_rgb, 16
.size png_set_read_user_transform_fn, 20
.size png_read_transform_info, 580
.size png_do_unpack, 336
.size png_do_unshift, 536
.size png_do_chop, 88
.size png_do_read_swap_alpha, 320
.size png_do_read_invert_alpha, 256
.size png_do_read_filler, 756
.size png_do_gray_to_rgb, 488
.size png_do_rgb_to_gray, 1776
.size png_build_grayscale_palette, 180
.size png_do_gamma, 1064
.size png_do_expand_palette, 644
.size png_do_expand, 1108
.size png_do_dither, 372
.size png_build_gamma_table, 2024
.size png_init_read_transformations, 3544
.size png_do_background, 4128
.size png_set_rgb_to_gray_fixed, 264
.size png_set_rgb_to_gray, 152
.size png_set_background, 184
.size png_set_crc_action, 212
.size png_do_read_transformations, 1036
.size png_set_dither, 2116

.section .note.GNU-stack,"",%progbits
