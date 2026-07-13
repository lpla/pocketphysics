/* Reconstructed mnemonic source for pngwrite.o. */
.syntax unified
.arch armv5te

.global png_convert_from_struct_tm
.type png_convert_from_struct_tm, %function
.global png_set_flush
.type png_set_flush, %function
.global png_set_compression_level
.type png_set_compression_level, %function
.global png_set_compression_mem_level
.type png_set_compression_mem_level, %function
.global png_set_compression_strategy
.type png_set_compression_strategy, %function
.global png_set_write_status_fn
.type png_set_write_status_fn, %function
.global png_set_write_user_transform_fn
.type png_set_write_user_transform_fn, %function
.global png_set_compression_method
.type png_set_compression_method, %function
.global png_set_compression_window_bits
.type png_set_compression_window_bits, %function
.global png_set_filter_heuristics
.type png_set_filter_heuristics, %function
.global png_set_filter
.type png_set_filter, %function
.global png_write_destroy
.type png_write_destroy, %function
.global png_destroy_write_struct
.type png_destroy_write_struct, %function
.global png_write_flush
.type png_write_flush, %function
.global png_write_row
.type png_write_row, %function
.global png_write_rows
.type png_write_rows, %function
.global png_write_image
.type png_write_image, %function
.global png_write_init_3
.type png_write_init_3, %function
.global png_write_init_2
.type png_write_init_2, %function
.global png_write_init
.type png_write_init, %function
.global png_create_write_struct_2
.type png_create_write_struct_2, %function
.global png_create_write_struct
.type png_create_write_struct, %function
.global png_convert_from_time_t
.type png_convert_from_time_t, %function
.global png_write_end
.type png_write_end, %function
.global png_write_info_before_PLTE
.type png_write_info_before_PLTE, %function
.global png_write_info
.type png_write_info, %function
.global png_write_png
.type png_write_png, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_convert_from_struct_tm:
    ldr r3, [r1, #16]
    add r3, r3, #1
    ldr r2, [r1, #20]
    strb r3, [r0, #2]
    ldr r3, [r1, #12]
    strb r3, [r0, #3]
    ldr r3, [r1, #8]
    strb r3, [r0, #4]
    ldr r3, [r1, #4]
    strb r3, [r0, #5]
    add r2, r2, #1888
    ldr r3, [r1]
    add r2, r2, #12
    strb r3, [r0, #6]
    strh r2, [r0]
    bx lr
png_set_flush:
    cmp r1, #0
    movlt r1, #0
    str r1, [r0, #364]
    bx lr
png_set_compression_level:
    ldr r3, [r0, #136]
    orr r3, r3, #2
    str r1, [r0, #208]
    str r3, [r0, #136]
    bx lr
png_set_compression_mem_level:
    ldr r3, [r0, #136]
    orr r3, r3, #4
    str r1, [r0, #220]
    str r3, [r0, #136]
    bx lr
png_set_compression_strategy:
    ldr r3, [r0, #136]
    orr r3, r3, #1
    str r1, [r0, #224]
    str r3, [r0, #136]
    bx lr
png_set_write_status_fn:
    str r1, [r0, #440]
    bx lr
png_set_write_user_transform_fn:
    ldr r3, [r0, #140]
    orr r3, r3, #1048576
    str r1, [r0, #120]
    str r3, [r0, #140]
    bx lr
png_set_compression_method:
    stmdb sp!, {r4, r5, lr}
    cmp r1, #8
    mov r5, r1
    sub sp, sp, #4
    ldr r1, [pc, #32]
    mov r4, r0
.Lsec01_000000c0:
    blne png_warning
    ldr r3, [r4, #136]
    orr r3, r3, #16
    str r5, [r4, #212]
    str r3, [r4, #136]
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_00000000
.arm
png_set_compression_window_bits:
    stmdb sp!, {r4, r5, lr}
    mov r4, r1
    cmp r4, #15
    sub sp, sp, #4
    ldr r1, [pc, #72]
    mov r5, r0
    bgt .Lsec01_0000010c
    cmp r4, #7
    ldr r1, [pc, #60]
    bgt .Lsec01_00000114
.Lsec01_0000010c:
    bl png_warning
    b .Lsec01_00000128
.Lsec01_00000114:
    cmp r4, #8
    ldr r1, [pc, #44]
    bne .Lsec01_00000128
.Lsec01_00000120:
    bl png_warning
    add r4, r4, #1
.Lsec01_00000128:
    ldr r3, [r5, #136]
    orr r3, r3, #8
    str r4, [r5, #216]
    str r3, [r5, #136]
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_00000030
    .long .Lsec05_00000064
    .long .Lsec05_00000098
.arm
png_set_filter_heuristics:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r1, #2
    sub sp, sp, #12
    mov r8, r2
    str r3, [sp]
    mov r6, r0
    ble .Lsec01_00000178
    ldr r1, [pc, #696]
.Lsec01_00000170:
    bl png_warning
    b .Lsec01_00000420
.Lsec01_00000178:
    ldr r2, [sp]
    rsbs r3, r2, #1
    movcc r3, #0
    cmp r1, #0
    moveq r1, #1
    orrs r3, r3, r8, lsr #31
    bne .Lsec01_00000410
    cmp r1, #1
    beq .Lsec01_00000410
    cmp r8, #0
    strb r1, [r0, #532]
    strb r8, [r0, #533]
    ble .Lsec01_000002e8
    ldr r4, [r0, #536]
    cmp r4, #0
    bne .Lsec01_000001e0
    mov r1, r8
.Lsec01_000001bc:
    bl png_malloc
    str r0, [r6, #536]
    mov r1, r4
.Lsec01_000001c8:
    ldr r2, [r6, #536]
    mvn r3, #0
    strb r3, [r2, r1]
    add r1, r1, #1
    cmp r1, r8
    bne .Lsec01_000001c8
.Lsec01_000001e0:
    ldr r5, [r6, #540]
    cmp r5, #0
    bne .Lsec01_00000234
    mov r4, r8, lsl #1
    mov r1, r4
    mov r0, r6
.Lsec01_000001f8:
    bl png_malloc
    mov r1, r4
    str r0, [r6, #540]
    mov r0, r6
.Lsec01_00000208:
    bl png_malloc
    ldr r1, [r6, #540]
    str r0, [r6, #544]
    mov r2, r5
.Lsec01_00000218:
    mov r3, r2, lsl #1
    add r2, r2, #1
    mov ip, #256
    cmp r2, r8
    strh ip, [r1, r3]
    strh ip, [r3, r0]
    bne .Lsec01_00000218
.Lsec01_00000234:
    mov fp, #0
    str fp, [sp, #4]
    mov sl, fp
.Lsec01_00000240:
    ldmia sp, {r1, r2}
    add r3, r1, r2
    ldmia r3, {r4, r5}
    mov r2, #0
    mov r3, #0
    mov r1, r5
    mov r0, r4
.Lsec01_0000025c:
    bl __aeabi_dcmplt
    ldr r3, [pc, #456]
    cmp r0, #0
    ldr r9, [r6, #540]
    ldr r7, [r6, #544]
    movne r3, #256
    strneh r3, [r9, sl]
    mov r2, #0
    mov r0, r4
    mov r1, r5
    strneh r3, [sl, r7]
    bne .Lsec01_000002cc
.Lsec01_0000028c:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #408]
.Lsec01_00000298:
    bl __aeabi_dadd
.Lsec01_0000029c:
    bl __aeabi_d2uiz
    mov r2, r4
    strh r0, [r7, sl]
    mov r3, r5
    mov r0, #0
    ldr r1, [pc, #376]
.Lsec01_000002b4:
    bl __aeabi_ddiv
    mov r2, #0
    ldr r3, [pc, #368]
.Lsec01_000002c0:
    bl __aeabi_dadd
.Lsec01_000002c4:
    bl __aeabi_d2uiz
    strh r0, [r9, sl]
.Lsec01_000002cc:
    ldr ip, [sp, #4]
    add fp, fp, #1
    add ip, ip, #8
    cmp fp, r8
    add sl, sl, #2
    str ip, [sp, #4]
    bne .Lsec01_00000240
.Lsec01_000002e8:
    ldr r4, [r6, #548]
    cmp r4, #0
    bne .Lsec01_00000334
    mov r1, #10
    mov r0, r6
.Lsec01_000002fc:
    bl png_malloc
    mov r1, #10
    str r0, [r6, #548]
    mov r0, r6
.Lsec01_0000030c:
    bl png_malloc
    ldr r2, [r6, #548]
    str r0, [r6, #552]
    mov r3, r4
.Lsec01_0000031c:
    mov r1, #8
    strh r1, [r2, r3]
    strh r1, [r3, r0]
    add r3, r3, #2
    cmp r3, #10
    bne .Lsec01_0000031c
.Lsec01_00000334:
    mov r7, #0
    mov r8, r7
.Lsec01_0000033c:
    ldr ip, [sp, #48]
    ldr r2, [sp, #48]
    cmp ip, #0
    add r0, r2, r8
    mov r3, #0
    mov r2, #0
    beq .Lsec01_00000380
    ldmia r0, {r4, r5}
    mov r1, r5
    mov r0, r4
.Lsec01_00000364:
    bl __aeabi_dcmplt
    cmp r0, #0
    mov r2, #0
    ldr r3, [pc, #192]
    mov r0, r4
    mov r1, r5
    beq .Lsec01_00000398
.Lsec01_00000380:
    ldr r2, [r6, #552]
    ldr r3, [r6, #548]
    mov r1, #8
    strh r1, [r3, r7]
    strh r1, [r7, r2]
    b .Lsec01_000003fc
.Lsec01_00000398:
    bl __aeabi_dcmpge
    cmp r0, #0
    mov r2, r4
    mov r3, r5
    mov r0, #0
    ldr r1, [pc, #136]
    beq .Lsec01_000003fc
.Lsec01_000003b4:
    bl __aeabi_ddiv
    mov r2, #0
    ldr r3, [pc, #112]
.Lsec01_000003c0:
    bl __aeabi_dadd
.Lsec01_000003c4:
    bl __aeabi_d2uiz
    ldr r3, [r6, #552]
    mov r2, r4
    strh r0, [r3, r7]
    ldr r1, [pc, #96]
    mov r3, r5
    mov r0, #0
.Lsec01_000003e0:
    bl __aeabi_dmul
    ldr r3, [pc, #72]
    mov r2, #0
.Lsec01_000003ec:
    bl __aeabi_dadd
.Lsec01_000003f0:
    bl __aeabi_d2uiz
    ldr r3, [r6, #548]
    strh r0, [r3, r7]
.Lsec01_000003fc:
    add r7, r7, #2
    cmp r7, #10
    add r8, r8, #8
    beq .Lsec01_00000420
    b .Lsec01_0000033c
.Lsec01_00000410:
    mov r3, #0
    strb r3, [r6, #533]
    strb r1, [r6, #532]
    b .Lsec01_000002e8
.Lsec01_00000420:
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_000000c4
    .long 0x40700000
    .long 0x3fe00000
    .long 0x3ff00000
    .long 0x40200000
.arm
png_set_filter:
    cmp r1, #0
    stmdb sp!, {r4, lr}
    mov r4, r0
    bne .Lsec01_00000628
    and r3, r2, #255
    cmp r3, #7
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_000004b4
    .long .Lsec01_00000488
    .long .Lsec01_00000490
    .long .Lsec01_0000049c
    .long .Lsec01_000004a4
    .long .Lsec01_000004ac
    .long .Lsec01_00000480
    .long .Lsec01_00000480
    .long .Lsec01_00000480
.arm
.Lsec01_00000480:
    ldr r1, [pc, #432]
.Lsec01_00000484:
    bl png_warning
.Lsec01_00000488:
    mov r3, #8
    b .Lsec01_00000494
.Lsec01_00000490:
    mov r3, #16
.Lsec01_00000494:
    strb r3, [r4, #321]
    b .Lsec01_000004b8
.Lsec01_0000049c:
    mov r3, #32
    b .Lsec01_00000494
.Lsec01_000004a4:
    mov r3, #64
    b .Lsec01_00000494
.Lsec01_000004ac:
    mvn r3, #127
    b .Lsec01_00000494
.Lsec01_000004b4:
    strb r2, [r0, #321]
.Lsec01_000004b8:
    ldr r3, [r4, #264]
    cmp r3, #0
    beq .Lsec01_00000630
    ldrb r3, [r4, #321]
    tst r3, #16
    beq .Lsec01_000004f8
    ldr r3, [r4, #268]
    cmp r3, #0
    bne .Lsec01_000004f8
    ldr r1, [r4, #244]
    mov r0, r4
    add r1, r1, #1
.Lsec01_000004e8:
    bl png_malloc
    mov r3, #1
    str r0, [r4, #268]
    strb r3, [r0]
.Lsec01_000004f8:
    ldrb r3, [r4, #321]
    tst r3, #32
    beq .Lsec01_00000554
    ldr r3, [r4, #272]
    cmp r3, #0
    bne .Lsec01_00000554
    ldr r3, [r4, #260]
    cmp r3, #0
    bne .Lsec01_00000538
    mov r0, r4
    ldr r1, [pc, #276]
.Lsec01_00000524:
    bl png_warning
    ldrb r3, [r4, #321]
    bic r3, r3, #32
    strb r3, [r4, #321]
    b .Lsec01_00000554
.Lsec01_00000538:
    ldr r1, [r4, #244]
    mov r0, r4
    add r1, r1, #1
.Lsec01_00000544:
    bl png_malloc
    mov r3, #2
    str r0, [r4, #272]
    strb r3, [r0]
.Lsec01_00000554:
    ldrb r3, [r4, #321]
    tst r3, #64
    beq .Lsec01_000005b0
    ldr r3, [r4, #276]
    cmp r3, #0
    bne .Lsec01_000005b0
    ldr r3, [r4, #260]
    cmp r3, #0
    bne .Lsec01_00000594
    mov r0, r4
    ldr r1, [pc, #188]
.Lsec01_00000580:
    bl png_warning
    ldrb r3, [r4, #321]
    bic r3, r3, #64
    strb r3, [r4, #321]
    b .Lsec01_000005b0
.Lsec01_00000594:
    ldr r1, [r4, #244]
    mov r0, r4
    add r1, r1, #1
.Lsec01_000005a0:
    bl png_malloc
    mov r3, #3
    str r0, [r4, #276]
    strb r3, [r0]
.Lsec01_000005b0:
    add r2, r4, #320
    add r2, r2, #1
    ldrsb r3, [r2]
    cmp r3, #0
    bge .Lsec01_00000614
    ldr r3, [r4, #280]
    cmp r3, #0
    bne .Lsec01_00000614
    ldr r3, [r4, #260]
    cmp r3, #0
    bne .Lsec01_000005f8
    mov r0, r4
    ldr r1, [pc, #92]
.Lsec01_000005e4:
    bl png_warning
    ldrb r3, [r4, #321]
    and r3, r3, #127
    strb r3, [r4, #321]
    b .Lsec01_00000614
.Lsec01_000005f8:
    ldr r1, [r4, #244]
    mov r0, r4
    add r1, r1, #1
.Lsec01_00000604:
    bl png_malloc
    mov r3, #4
    str r0, [r4, #280]
    strb r3, [r0]
.Lsec01_00000614:
    ldrb r3, [r4, #321]
    cmp r3, #0
    addeq r3, r3, #8
    streqb r3, [r4, #321]
    b .Lsec01_00000630
.Lsec01_00000628:
    ldr r1, [pc, #24]
.Lsec01_0000062c:
    bl png_error
.Lsec01_00000630:
    ldmia sp!, {r4, lr}
    bx lr
    .long .Lsec05_000000e4
    .long .Lsec05_00000104
    .long .Lsec05_00000128
    .long .Lsec05_00000150
    .long .Lsec05_00000178
.arm
png_write_destroy:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    mov r4, r0
    sub sp, sp, #96
    add r0, r0, #144
.Lsec01_0000065c:
    bl deflateEnd
    mov r0, r4
    ldr r1, [r4, #200]
.Lsec01_00000668:
    bl png_free
    mov r0, r4
    ldr r1, [r4, #264]
.Lsec01_00000674:
    bl png_free
    mov r0, r4
    ldr r1, [r4, #260]
.Lsec01_00000680:
    bl png_free
    mov r0, r4
    ldr r1, [r4, #268]
.Lsec01_0000068c:
    bl png_free
    mov r0, r4
    ldr r1, [r4, #272]
.Lsec01_00000698:
    bl png_free
    mov r0, r4
    ldr r1, [r4, #276]
.Lsec01_000006a4:
    bl png_free
    mov r0, r4
    ldr r1, [r4, #280]
.Lsec01_000006b0:
    bl png_free
    mov r0, r4
    ldr r1, [r4, #556]
.Lsec01_000006bc:
    bl png_free
    mov r0, r4
    ldr r1, [r4, #536]
.Lsec01_000006c8:
    bl png_free
    mov r0, r4
    ldr r1, [r4, #540]
.Lsec01_000006d4:
    bl png_free
    mov r0, r4
    ldr r1, [r4, #544]
.Lsec01_000006e0:
    bl png_free
    mov r0, r4
    ldr r1, [r4, #548]
.Lsec01_000006ec:
    bl png_free
    add sl, sp, #4
    mov r0, r4
    ldr r1, [r4, #552]
    mov r9, #92
.Lsec01_00000700:
    bl png_free
    mov r1, r4
    mov r2, r9
    mov r0, sl
.Lsec01_00000710:
    bl memcpy
    add r5, r4, #92
    ldmia r5, {r5, r6, r7}
    ldr r8, [r4, #616]
    mov r1, #0
    mov r2, #648
    mov r0, r4
.Lsec01_0000072c:
    bl memset
    str r5, [r4, #92]
    str r6, [r4, #96]
    str r7, [r4, #100]
    str r8, [r4, #616]
    mov r0, r4
    mov r1, sl
    mov r2, r9
.Lsec01_0000074c:
    bl memcpy
    add sp, sp, #96
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    bx lr
png_destroy_write_struct:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    subs r6, r0, #0
    ldrne r4, [r6]
    moveq r4, r6
    moveq sl, r6
    moveq r8, r6
    ldrne sl, [r4, #616]
    ldrne r8, [r4, #608]
    cmp r1, #0
    sub sp, sp, #4
    mov r7, r1
    beq .Lsec01_000007ec
    ldr r5, [r1]
    cmp r5, #0
    beq .Lsec01_000007ec
    mvn r3, #0
    mov r0, r4
    mov r1, r5
    ldr r2, [pc, #116]
.Lsec01_000007a8:
    bl png_free_data
    ldr r3, [r4, #572]
    cmp r3, #0
    beq .Lsec01_000007d0
    mov r0, r4
    ldr r1, [r4, #576]
.Lsec01_000007c0:
    bl png_free
    mov r3, #0
    str r3, [r4, #572]
    str r3, [r4, #576]
.Lsec01_000007d0:
    mov r0, r5
    mov r1, sl
    mov r2, r8
.Lsec01_000007dc:
    bl png_destroy_struct_2
    mov r3, #0
    str r3, [r7]
    b .Lsec01_000007f4
.Lsec01_000007ec:
    cmp r4, #0
    beq .Lsec01_00000814
.Lsec01_000007f4:
    mov r0, r4
.Lsec01_000007f8:
    bl png_write_destroy
    mov r0, r4
    mov r1, sl
    mov r2, r8
.Lsec01_00000808:
    bl png_destroy_struct_2
    mov r3, #0
    str r3, [r6]
.Lsec01_00000814:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long 0x00007fff
.arm
png_write_flush:
    stmdb sp!, {r4, r5, lr}
    ldr r2, [r0, #256]
    ldr r3, [r0, #236]
    cmp r2, r3
    sub sp, sp, #108
    mov r4, r0
    bcs .Lsec01_000008ec
.Lsec01_00000840:
    mov r1, #2
    add r0, r4, #144
.Lsec01_00000848:
    bl deflate
    add r5, sp, #4
    subs r2, r0, #0
    ldr r1, [pc, #156]
    mov r0, r5
    beq .Lsec01_0000087c
.Lsec01_00000860:
    bl sprintf
    ldr r3, [r4, #168]
    subs r1, r3, #0
    mov r0, r4
    moveq r1, r5
    moveq r0, r4
.Lsec01_00000878:
    bl png_error
.Lsec01_0000087c:
    ldr r3, [r4, #160]
    cmp r3, #0
    mov r0, r4
    bne .Lsec01_000008ac
    add r1, r4, #200
    ldmia r1, {r1, r2}
.Lsec01_00000894:
    bl png_write_IDAT
    ldr r3, [r4, #200]
    ldr r2, [r4, #204]
    str r3, [r4, #156]
    str r2, [r4, #160]
    b .Lsec01_00000840
.Lsec01_000008ac:
    ldr r2, [r4, #204]
    ldr r3, [r4, #160]
    cmp r2, r3
    beq .Lsec01_000008dc
    rsb r2, r3, r2
    mov r0, r4
    ldr r1, [r4, #200]
.Lsec01_000008c8:
    bl png_write_IDAT
    ldr r3, [r4, #200]
    ldr r2, [r4, #204]
    str r3, [r4, #156]
    str r2, [r4, #160]
.Lsec01_000008dc:
    mov r3, #0
    str r3, [r4, #368]
    mov r0, r4
.Lsec01_000008e8:
    bl png_flush
.Lsec01_000008ec:
    add sp, sp, #108
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_00000198
.arm
png_write_row:
    stmdb sp!, {r4, r5, lr}
    ldr r3, [r0, #256]
    cmp r3, #0
    sub sp, sp, #4
    mov r4, r0
    mov r5, r1
    bne .Lsec01_0000093c
    ldrb r3, [r0, #320]
    cmp r3, #0
    bne .Lsec01_0000093c
    ldr r3, [r0, #132]
    tst r3, #1024
    ldreq r1, [pc, #456]
.Lsec01_00000930:
    bleq png_error
    mov r0, r4
.Lsec01_00000938:
    bl png_write_start_row
.Lsec01_0000093c:
    ldrb r3, [r4, #319]
    cmp r3, #0
    beq .Lsec01_00000a0c
    ldr r3, [r4, #140]
    tst r3, #2
    beq .Lsec01_00000a0c
    ldrb r3, [r4, #320]
    cmp r3, #6
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00000a0c
    .long .Lsec01_00000980
    .long .Lsec01_00000990
    .long .Lsec01_000009a8
    .long .Lsec01_000009b8
    .long .Lsec01_000009d0
    .long .Lsec01_000009e4
    .long .Lsec01_00000a00
.arm
.Lsec01_00000980:
    ldr r3, [r4, #256]
    tst r3, #7
    beq .Lsec01_00000a0c
    b .Lsec01_00000aac
.Lsec01_00000990:
    ldr r3, [r4, #256]
    tst r3, #7
    bne .Lsec01_00000aac
    ldr r3, [r4, #228]
    cmp r3, #4
    b .Lsec01_000009f8
.Lsec01_000009a8:
    ldr r3, [r4, #256]
    and r3, r3, #7
    cmp r3, #4
    b .Lsec01_000009dc
.Lsec01_000009b8:
    ldr r3, [r4, #256]
    tst r3, #3
    bne .Lsec01_00000aac
    ldr r3, [r4, #228]
    cmp r3, #2
    b .Lsec01_000009f8
.Lsec01_000009d0:
    ldr r3, [r4, #256]
    and r3, r3, #3
    cmp r3, #2
.Lsec01_000009dc:
    beq .Lsec01_00000a0c
    b .Lsec01_00000aac
.Lsec01_000009e4:
    ldr r3, [r4, #256]
    tst r3, #1
    bne .Lsec01_00000aac
    ldr r3, [r4, #228]
    cmp r3, #1
.Lsec01_000009f8:
    bhi .Lsec01_00000a0c
    b .Lsec01_00000aac
.Lsec01_00000a00:
    ldr r3, [r4, #256]
    tst r3, #1
    beq .Lsec01_00000aac
.Lsec01_00000a0c:
    ldrb r3, [r4, #327]
    strb r3, [r4, #294]
    ldrb r2, [r4, #324]
    ldrb r3, [r4, #294]
    mul r3, r2, r3
    ldr r0, [r4, #240]
    and r1, r3, #255
    ldrb r3, [r4, #322]
    cmp r1, #7
    strb r3, [r4, #292]
    mulls r3, r0, r1
    movhi r3, r1, lsr #3
    mulhi r3, r0, r3
    addls r3, r3, #7
    strb r1, [r4, #295]
    ldr r1, [r4, #264]
    movls r3, r3, lsr #3
    str r0, [r4, #284]
    strb r2, [r4, #293]
    str r3, [r4, #288]
    add r1, r1, #1
    mov r2, r5
    mov r0, r4
.Lsec01_00000a68:
    bl png_memcpy_check
    ldrb r3, [r4, #319]
    cmp r3, #0
    beq .Lsec01_00000ab8
    ldrb r2, [r4, #320]
    cmp r2, #5
    bhi .Lsec01_00000ab8
    ldr r3, [r4, #140]
    tst r3, #2
    beq .Lsec01_00000ab8
    ldr r1, [r4, #264]
    add r0, r4, #284
    add r1, r1, #1
.Lsec01_00000a9c:
    bl png_do_write_interlace
    ldr r3, [r4, #284]
    cmp r3, #0
    bne .Lsec01_00000ab8
.Lsec01_00000aac:
    mov r0, r4
.Lsec01_00000ab0:
    bl png_write_finish_row
    b .Lsec01_00000af0
.Lsec01_00000ab8:
    ldr r3, [r4, #140]
    cmp r3, #0
    movne r0, r4
.Lsec01_00000ac4:
    blne png_do_write_transformations
    mov r0, r4
    add r1, r4, #284
.Lsec01_00000ad0:
    bl png_write_find_filter
    ldr r3, [r4, #440]
    cmp r3, #0
    movne r0, r4
    ldrne r1, [r4, #256]
    ldrneb r2, [r4, #320]
    movne lr, pc
    bxne r3
.Lsec01_00000af0:
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_000001a8
.arm
png_write_rows:
    stmdb sp!, {r4, r5, r6, r7, lr}
    mov r7, r0
    sub sp, sp, #4
    mov r6, r1
    mov r5, r2
    mov r4, #0
    b .Lsec01_00000b28
.Lsec01_00000b1c:
    ldr r1, [r6, r4, lsl #2]
    add r4, r4, #1
.Lsec01_00000b24:
    bl png_write_row
.Lsec01_00000b28:
    cmp r4, r5
    mov r0, r7
    bne .Lsec01_00000b1c
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
png_write_image:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    mov r8, r1
    mov r6, r0
.Lsec01_00000b4c:
    bl png_set_interlace_handling
    mov r5, #0
    mov r7, r0
    b .Lsec01_00000b7c
.Lsec01_00000b5c:
    ldr r1, [r8, r4, lsl #2]
    add r4, r4, #1
.Lsec01_00000b64:
    bl png_write_row
.Lsec01_00000b68:
    ldr r3, [r6, #232]
    cmp r4, r3
    mov r0, r6
    bcc .Lsec01_00000b5c
    add r5, r5, #1
.Lsec01_00000b7c:
    cmp r5, r7
    movlt r4, #0
    blt .Lsec01_00000b68
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
png_write_init_3:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr ip, [pc, #260]
    mov r5, r0
    ldr r4, [r0]
    sub sp, sp, #108
    mov r6, r2
    mov r0, #0
.Lsec01_00000bac:
    ldrb r3, [r0, r1]
    ldrb r2, [ip]
    cmp r2, r3
    add r0, r0, #1
    beq .Lsec01_00000bd8
    mov r3, #0
    str r3, [r4, #96]
    mov r0, r4
    ldr r1, [pc, #208]
.Lsec01_00000bd0:
    bl png_warning
    b .Lsec01_00000be4
.Lsec01_00000bd8:
    cmp r2, #0
    add ip, ip, #1
    bne .Lsec01_00000bac
.Lsec01_00000be4:
    add r7, sp, #12
    mov r0, r7
    mov r1, r4
    mov r2, #92
.Lsec01_00000bf4:
    bl memcpy
    cmp r6, #648
    bcs .Lsec01_00000c18
    mov r0, r4
.Lsec01_00000c04:
    bl png_destroy_struct
    mov r0, #1
.Lsec01_00000c0c:
    bl png_create_struct
    str r0, [r5]
    mov r4, r0
.Lsec01_00000c18:
    mov r2, #648
    mov r1, #0
    mov r0, r4
.Lsec01_00000c24:
    bl memset
    ldr r3, [pc, #120]
    mov r0, r4
    str r3, [r4, #644]
    str r3, [r4, #640]
.Lsec01_00000c38:
    bl png_init_mmx_flags
    mov r1, r7
    mov r0, r4
    mov r2, #92
.Lsec01_00000c48:
    bl memcpy
    mov r1, #0
    mov r2, r1
    mov r0, r4
    mov r3, r1
.Lsec01_00000c5c:
    bl png_set_write_fn
    mov r3, #8192
    mov r1, r3
    str r3, [r4, #204]
    mov r0, r4
.Lsec01_00000c70:
    bl png_malloc
    mov ip, #0
    str r0, [r4, #200]
    mov r1, ip
    mov r0, r4
    mov r2, #1
    mov r3, ip
    str ip, [sp]
.Lsec01_00000c90:
    bl png_set_filter_heuristics
    add sp, sp, #108
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long png_libpng_ver
    .long .Lsec05_000001e0
    .long 0x00002710
.arm
png_write_init_2:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    cmp r3, #288
    movcs r7, #0
    movcc r7, #1
    cmp r2, #648
    movcs r6, #0
    movcc r6, #1
    sub sp, sp, #92
    orrs r3, r6, r7
    mov r8, r2
    add sl, sp, #8
    str r0, [sp, #4]
    mov r4, r1
    beq .Lsec01_00000d2c
    mov r3, #0
    subs r2, r4, #0
    str r3, [r0, #96]
    mov r5, sl
    ldr r1, [pc, #140]
    mov r0, sl
    beq .Lsec01_00000d10
.Lsec01_00000d00:
    bl sprintf
    mov r1, sl
    ldr r0, [sp, #4]
.Lsec01_00000d0c:
    bl png_warning
.Lsec01_00000d10:
    ldr r1, [pc, #116]
    ldr r2, [pc, #116]
    mov r0, sl
.Lsec01_00000d1c:
    bl sprintf
    mov r1, sl
    ldr r0, [sp, #4]
.Lsec01_00000d28:
    bl png_warning
.Lsec01_00000d2c:
    mov r2, #0
    cmp r6, r2
    ldr r1, [pc, #88]
    ldrne r3, [sp, #4]
    strne r2, [r3, #136]
    movne r0, r3
    strne r2, [r3, #92]
.Lsec01_00000d48:
    blne png_error
    mov r2, #0
    cmp r7, r2
    ldr r1, [pc, #60]
    ldrne r3, [sp, #4]
    strne r2, [r3, #136]
    movne r0, r3
    strne r2, [r3, #92]
.Lsec01_00000d68:
    blne png_error
    mov r1, r4
    mov r2, r8
    add r0, sp, #4
.Lsec01_00000d78:
    bl png_write_init_3
    add sp, sp, #92
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long .Lsec05_00000228
    .long .Lsec05_00000260
    .long png_libpng_ver
    .long .Lsec05_00000298
    .long .Lsec05_000002e0
.arm
png_write_init:
    mov r2, #0
    ldr r1, [pc, #4]
    mov r3, r2
.Lsec01_00000da8:
    b png_write_init_2
    .long .Lsec05_00000328
.arm
png_create_write_struct_2:
    stmdb sp!, {r4, lr}
    sub sp, sp, #112
    str r0, [sp, #20]
    str r1, [sp, #16]
    str r2, [sp, #12]
    mov r0, #1
    ldr r1, [sp, #124]
    ldr r2, [sp, #120]
    str r3, [sp, #8]
.Lsec01_00000dd4:
    bl png_create_struct_2
    subs r3, r0, #0
    beq .Lsec01_00000fb4
    str r3, [sp, #28]
.Lsec01_00000de4:
    bl png_init_mmx_flags
    ldr r1, [sp, #28]
    ldr r3, [pc, #468]
    str r3, [r1, #644]
    str r3, [r1, #640]
    str r1, [sp, #24]
    mov r0, r1
.Lsec01_00000e00:
    bl setjmp
    subs r4, r0, #0
    beq .Lsec01_00000e34
    ldr r0, [sp, #28]
    ldr r1, [r0, #200]
.Lsec01_00000e14:
    bl png_free
    ldr r2, [sp, #28]
    mov r4, #0
    str r4, [r2, #200]
    mov r0, r2
.Lsec01_00000e28:
    bl png_destroy_struct
    str r4, [sp, #28]
    b .Lsec01_00000fb8
.Lsec01_00000e34:
    add r1, sp, #120
    ldmia r1, {r1, r2, r3}
    ldr r0, [sp, #28]
.Lsec01_00000e40:
    bl png_set_mem_fn
    ldr r0, [sp, #28]
    ldr r1, [sp, #16]
    ldr r2, [sp, #12]
    ldr r3, [sp, #8]
.Lsec01_00000e54:
    bl png_set_error_fn
    ldr r1, [pc, #364]
    mov r0, r4
.Lsec01_00000e60:
    ldr ip, [sp, #20]
    ldrb r2, [r1]
    ldrb r3, [r0, ip]
    cmp r3, r2
    ldrne ip, [sp, #28]
    ldrne r3, [ip, #136]
    orrne r3, r3, #131072
    strne r3, [ip, #136]
    cmp r2, #0
    add r1, r1, #1
    addne r0, r0, #1
    bne .Lsec01_00000e60
    ldr r1, [sp, #28]
    ldr r3, [r1, #136]
    tst r3, #131072
    beq .Lsec01_00000f50
    ldr r2, [sp, #20]
    cmp r2, #0
    beq .Lsec01_00000f18
    ldr r1, [pc, #280]
    ldrb r3, [r2]
    ldrb r2, [r1]
    cmp r2, r3
    bne .Lsec01_00000ef8
    cmp r2, #49
    bne .Lsec01_00000ee0
    ldr ip, [sp, #20]
    ldrb r2, [r1, #2]
    ldrb r3, [ip, #2]
    cmp r3, r2
    bne .Lsec01_00000ef8
    b .Lsec01_00000f50
.Lsec01_00000ee0:
    cmp r2, #48
    bne .Lsec01_00000f50
    ldr r1, [sp, #20]
    ldrb r3, [r1, #2]
    cmp r3, #56
    bhi .Lsec01_00000f50
.Lsec01_00000ef8:
    add r4, sp, #32
    ldr r1, [pc, #204]
    ldr r2, [sp, #20]
    mov r0, r4
.Lsec01_00000f08:
    bl sprintf
    ldr r0, [sp, #28]
    mov r1, r4
.Lsec01_00000f14:
    bl png_warning
.Lsec01_00000f18:
    add r4, sp, #32
    ldr r2, [pc, #168]
    ldr r1, [pc, #172]
    mov r0, r4
.Lsec01_00000f28:
    bl sprintf
    ldr r0, [sp, #28]
    mov r1, r4
.Lsec01_00000f34:
    bl png_warning
    ldr r2, [sp, #28]
    mov r3, #0
    str r3, [r2, #136]
    mov r0, r2
    ldr r1, [pc, #136]
.Lsec01_00000f4c:
    bl png_error
.Lsec01_00000f50:
    ldr ip, [sp, #28]
    mov r3, #8192
    str r3, [ip, #204]
    mov r1, r3
    mov r0, ip
.Lsec01_00000f64:
    bl png_malloc
    ldr r2, [sp, #28]
    mov r1, #0
    str r0, [r2, #200]
    mov r3, r1
    mov r2, r1
    ldr r0, [sp, #28]
.Lsec01_00000f80:
    bl png_set_write_fn
    mov ip, #0
    ldr r0, [sp, #28]
    mov r1, ip
    mov r2, #1
    mov r3, ip
    str ip, [sp]
.Lsec01_00000f9c:
    bl png_set_filter_heuristics
    ldr r0, [sp, #24]
.Lsec01_00000fa4:
    bl setjmp
    cmp r0, #0
    beq .Lsec01_00000fb8
.Lsec01_00000fb0:
    bl abort
.Lsec01_00000fb4:
    str r3, [sp, #28]
.Lsec01_00000fb8:
    ldr r0, [sp, #28]
    add sp, sp, #112
    ldmia sp!, {r4, lr}
    bx lr
    .long 0x00002710
    .long png_libpng_ver
    .long .Lsec05_00000228
    .long .Lsec05_00000260
    .long .Lsec05_0000033c
.arm
png_create_write_struct:
    str lr, [sp, #-4]!
    mov ip, #0
    sub sp, sp, #20
    str ip, [sp, #8]
    str ip, [sp]
    str ip, [sp, #4]
.Lsec01_00000ff4:
    bl png_create_write_struct_2
    add sp, sp, #20
    ldr lr, [sp], #4
    bx lr
png_convert_from_time_t:
    stmdb sp!, {r4, lr}
    sub sp, sp, #8
    add r3, sp, #8
    str r1, [r3, #-4]!
    mov r4, r0
    mov r0, r3
.Lsec01_0000101c:
    bl gmtime
    mov r1, r0
    mov r0, r4
.Lsec01_00001028:
    bl png_convert_from_struct_tm
    add sp, sp, #8
    ldmia sp!, {r4, lr}
    bx lr
png_write_end:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr r3, [r0, #132]
    tst r3, #4
    sub sp, sp, #12
    mov r6, r0
    mov r5, r1
    ldreq r1, [pc, #356]
.Lsec01_00001054:
    bleq png_error
    cmp r5, #0
    beq .Lsec01_0000119c
    ldr r3, [r5, #8]
    tst r3, #512
    beq .Lsec01_00001080
    ldr r3, [r6, #132]
    tst r3, #512
    moveq r0, r6
    addeq r1, r5, #60
.Lsec01_0000107c:
    bleq png_write_tIME
.Lsec01_00001080:
    mov r7, #0
    b .Lsec01_000010f0
.Lsec01_00001088:
    ldr r3, [r5, #56]
    ldr r2, [r4, r3]
    cmp r2, #0
    add ip, r4, r3
    ble .Lsec01_000010a4
.Lsec01_0000109c:
    bl png_warning
    b .Lsec01_000010e0
.Lsec01_000010a4:
    mov r3, r2
    mov r0, r6
    bne .Lsec01_000010c8
    str r2, [sp]
    ldmib ip, {r1, r2}
.Lsec01_000010b8:
    bl png_write_zTXt
    ldr r2, [r5, #56]
    mvn r3, #1
    b .Lsec01_000010e8
.Lsec01_000010c8:
    cmn r2, #1
    mov r0, r6
    mov r3, #0
    bne .Lsec01_000010ec
    ldmib ip, {r1, r2}
.Lsec01_000010dc:
    bl png_write_tEXt
.Lsec01_000010e0:
    ldr r2, [r5, #56]
    mvn r3, #2
.Lsec01_000010e8:
    str r3, [r2, r4]
.Lsec01_000010ec:
    add r7, r7, #1
.Lsec01_000010f0:
    ldr r3, [r5, #48]
    cmp r7, r3
    mov r0, r6
    ldr r1, [pc, #188]
    mov r4, r7, lsl #4
    blt .Lsec01_00001088
    ldr r3, [r5, #192]
    cmp r3, #0
    ldrne r4, [r5, #188]
    bne .Lsec01_0000117c
    b .Lsec01_0000119c
.Lsec01_0000111c:
    bl png_handle_as_unknown
    cmp r0, #1
    mov r2, r0
    beq .Lsec01_00001178
    ldrb r3, [r4, #16]
    cmp r3, #0
    beq .Lsec01_00001178
    tst r3, #8
    beq .Lsec01_00001178
    ldrb r3, [r4, #3]
    mov r3, r3, lsr #5
    cmp r2, #3
    orreq r3, r3, #1
    tst r3, #1
    mov r1, r4
    mov r0, r6
    bne .Lsec01_0000116c
    ldr r3, [r6, #136]
    tst r3, #65536
    beq .Lsec01_00001178
.Lsec01_0000116c:
    add r2, r4, #8
    ldmia r2, {r2, r3}
.Lsec01_00001174:
    bl png_write_chunk
.Lsec01_00001178:
    add r4, r4, #20
.Lsec01_0000117c:
    ldr r1, [r5, #192]
    ldr r2, [r5, #188]
    mov r3, #20
    mla r3, r1, r3, r2
    cmp r4, r3
    mov r1, r4
    mov r0, r6
    bcc .Lsec01_0000111c
.Lsec01_0000119c:
    ldr r3, [r6, #132]
    orr r3, r3, #8
    str r3, [r6, #132]
    mov r0, r6
.Lsec01_000011ac:
    bl png_write_IEND
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000374
    .long .Lsec05_00000390
.arm
png_write_info_before_PLTE:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    ldr r3, [r0, #132]
    ands r8, r3, #1024
    sub sp, sp, #56
    mov r7, r0
    mov r6, r1
    bne .Lsec01_000013bc
.Lsec01_000011e0:
    bl png_write_sig
    ldrb ip, [r6, #25]
    ldrb lr, [r6, #26]
    ldrb r4, [r6, #27]
    ldrb r5, [r6, #28]
    ldrb r3, [r6, #24]
    ldmia r6, {r1, r2}
    mov r0, r7
    stmia sp, {ip, lr}
    str r4, [sp, #8]
    str r5, [sp, #12]
.Lsec01_0000120c:
    bl png_write_IHDR
    ldr r3, [r6, #8]
    tst r3, #1
    beq .Lsec01_00001234
    ldr r0, [r6, #40]
.Lsec01_00001220:
    bl __aeabi_f2d
    mov r2, r0
    mov r3, r1
    mov r0, r7
.Lsec01_00001230:
    bl png_write_gAMA
.Lsec01_00001234:
    ldr r3, [r6, #8]
    tst r3, #2048
    movne r0, r7
    ldrneb r1, [r6, #44]
.Lsec01_00001244:
    blne png_write_sRGB
    ldr r3, [r6, #8]
    tst r3, #4096
    beq .Lsec01_0000126c
    add r1, r6, #196
    ldmia r1, {r1, r3, ip}
    mov r2, r8
    mov r0, r7
    str ip, [sp]
.Lsec01_00001268:
    bl png_write_iCCP
.Lsec01_0000126c:
    ldr r3, [r6, #8]
    tst r3, #2
    movne r0, r7
    addne r1, r6, #68
    ldrneb r2, [r6, #25]
.Lsec01_00001280:
    blne png_write_sBIT
    ldr r3, [r6, #8]
    tst r3, #4
    beq .Lsec01_0000131c
    ldr r0, [r6, #128]
.Lsec01_00001294:
    bl __aeabi_f2d
    mov r4, r0
    ldr r0, [r6, #132]
    mov r5, r1
.Lsec01_000012a4:
    bl __aeabi_f2d
    stmia sp, {r0, r1}
    ldr r0, [r6, #136]
.Lsec01_000012b0:
    bl __aeabi_f2d
    str r0, [sp, #8]
    str r1, [sp, #12]
    ldr r0, [r6, #140]
.Lsec01_000012c0:
    bl __aeabi_f2d
    str r0, [sp, #16]
    str r1, [sp, #20]
    ldr r0, [r6, #144]
.Lsec01_000012d0:
    bl __aeabi_f2d
    str r0, [sp, #24]
    str r1, [sp, #28]
    ldr r0, [r6, #148]
.Lsec01_000012e0:
    bl __aeabi_f2d
    str r0, [sp, #32]
    str r1, [sp, #36]
    ldr r0, [r6, #152]
.Lsec01_000012f0:
    bl __aeabi_f2d
    str r0, [sp, #40]
    str r1, [sp, #44]
    ldr r0, [r6, #156]
.Lsec01_00001300:
    bl __aeabi_f2d
    mov r2, r4
    str r0, [sp, #48]
    str r1, [sp, #52]
    mov r3, r5
    mov r0, r7
.Lsec01_00001318:
    bl png_write_cHRM
.Lsec01_0000131c:
    ldr r3, [r6, #192]
    cmp r3, #0
    ldrne r4, [r6, #188]
    bne .Lsec01_00001390
    b .Lsec01_000013b0
.Lsec01_00001330:
    bl png_handle_as_unknown
    cmp r0, #1
    mov r2, r0
    beq .Lsec01_0000138c
    ldrb r3, [r4, #16]
    cmp r3, #0
    beq .Lsec01_0000138c
    tst r3, #6
    bne .Lsec01_0000138c
    ldrb r3, [r4, #3]
    mov r3, r3, lsr #5
    cmp r2, #3
    orreq r3, r3, #1
    tst r3, #1
    mov r1, r4
    mov r0, r7
    bne .Lsec01_00001380
    ldr r3, [r7, #136]
    tst r3, #65536
    beq .Lsec01_0000138c
.Lsec01_00001380:
    add r2, r4, #8
    ldmia r2, {r2, r3}
.Lsec01_00001388:
    bl png_write_chunk
.Lsec01_0000138c:
    add r4, r4, #20
.Lsec01_00001390:
    ldr r1, [r6, #192]
    ldr r2, [r6, #188]
    mov r3, #20
    mla r3, r1, r3, r2
    cmp r4, r3
    mov r1, r4
    mov r0, r7
    bcc .Lsec01_00001330
.Lsec01_000013b0:
    ldr r3, [r7, #132]
    orr r3, r3, #1024
    str r3, [r7, #132]
.Lsec01_000013bc:
    add sp, sp, #56
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
png_write_info:
    stmdb sp!, {r4, r5, r6, r7, lr}
    mov r6, r1
    sub sp, sp, #20
    mov r7, r0
.Lsec01_000013d8:
    bl png_write_info_before_PLTE
    ldr r3, [r6, #8]
    tst r3, #8
    beq .Lsec01_000013fc
    mov r0, r7
    ldr r1, [r6, #16]
    ldrh r2, [r6, #20]
.Lsec01_000013f4:
    bl png_write_PLTE
    b .Lsec01_00001410
.Lsec01_000013fc:
    ldrb r3, [r6, #25]
    cmp r3, #3
    moveq r0, r7
    ldreq r1, [pc, #696]
.Lsec01_0000140c:
    bleq png_error
.Lsec01_00001410:
    ldr r3, [r6, #8]
    tst r3, #16
    beq .Lsec01_00001478
    ldr r3, [r7, #140]
    tst r3, #524288
    beq .Lsec01_0000145c
    ldrb r3, [r6, #25]
    cmp r3, #3
    moveq r1, #0
    beq .Lsec01_00001450
    b .Lsec01_0000145c
.Lsec01_0000143c:
    ldr r2, [r6, #76]
    ldrb r3, [r1, r2]
    mvn r3, r3
    strb r3, [r1, r2]
    add r1, r1, #1
.Lsec01_00001450:
    ldrh r3, [r6, #22]
    cmp r1, r3
    blt .Lsec01_0000143c
.Lsec01_0000145c:
    ldrb ip, [r6, #25]
    ldrh r3, [r6, #22]
    ldr r1, [r6, #76]
    mov r0, r7
    add r2, r6, #80
    str ip, [sp]
.Lsec01_00001474:
    bl png_write_tRNS
.Lsec01_00001478:
    ldr r3, [r6, #8]
    tst r3, #32
    movne r0, r7
    addne r1, r6, #90
    ldrneb r2, [r6, #25]
.Lsec01_0000148c:
    blne png_write_bKGD
    ldr r3, [r6, #8]
    tst r3, #64
    movne r0, r7
    ldrne r1, [r6, #124]
    ldrneh r2, [r6, #20]
.Lsec01_000014a4:
    blne png_write_hIST
    ldr r3, [r6, #8]
    tst r3, #256
    movne r0, r7
    addne r1, r6, #100
    ldmneia r1, {r1, r2}
    ldrneb r3, [r6, #108]
.Lsec01_000014c0:
    blne png_write_oFFs
    ldr r3, [r6, #8]
    tst r3, #1024
    beq .Lsec01_000014fc
    ldrb ip, [r6, #180]
    ldrb lr, [r6, #181]
    add r4, r6, #172
    ldmia r4, {r4, r5}
    add r1, r6, #160
    ldmia r1, {r1, r2, r3}
    mov r0, r7
    stmia sp, {ip, lr}
    str r4, [sp, #8]
    str r5, [sp, #12]
.Lsec01_000014f8:
    bl png_write_pCAL
.Lsec01_000014fc:
    ldr r3, [r6, #8]
    tst r3, #16384
    beq .Lsec01_00001528
    add r4, r6, #232
    ldmia r4, {r4, r5}
    ldrb r1, [r6, #220]
    add r2, r6, #224
    ldmia r2, {r2, r3}
    mov r0, r7
    stmia sp, {r4, r5}
.Lsec01_00001524:
    bl png_write_sCAL
.Lsec01_00001528:
    ldr r3, [r6, #8]
    tst r3, #128
    movne r0, r7
    addne r1, r6, #112
    ldmneia r1, {r1, r2}
    ldrneb r3, [r6, #120]
.Lsec01_00001540:
    blne png_write_pHYs
    ldr r3, [r6, #8]
    tst r3, #512
    beq .Lsec01_00001568
    mov r0, r7
    add r1, r6, #60
.Lsec01_00001558:
    bl png_write_tIME
    ldr r3, [r7, #132]
    orr r3, r3, #512
    str r3, [r7, #132]
.Lsec01_00001568:
    ldr r3, [r6, #8]
    tst r3, #8192
    movne r4, #0
    bne .Lsec01_0000158c
    b .Lsec01_0000159c
.Lsec01_0000157c:
    ldr r1, [r6, #212]
    add r1, r1, r4, lsl #4
.Lsec01_00001584:
    bl png_write_sPLT
    add r4, r4, #1
.Lsec01_0000158c:
    ldr r3, [r6, #216]
    cmp r4, r3
    mov r0, r7
    blt .Lsec01_0000157c
.Lsec01_0000159c:
    mov r5, #0
    b .Lsec01_0000160c
.Lsec01_000015a4:
    ldr r3, [r6, #56]
    ldr r2, [r4, r3]
    cmp r2, #0
    add ip, r4, r3
    ble .Lsec01_000015c0
.Lsec01_000015b8:
    bl png_warning
    b .Lsec01_000015fc
.Lsec01_000015c0:
    mov r3, r2
    mov r0, r7
    bne .Lsec01_000015e4
    str r2, [sp]
    ldmib ip, {r1, r2}
.Lsec01_000015d4:
    bl png_write_zTXt
    ldr r2, [r6, #56]
    mvn r3, #1
    b .Lsec01_00001604
.Lsec01_000015e4:
    cmn r2, #1
    mov r0, r7
    mov r3, #0
    bne .Lsec01_00001608
    ldmib ip, {r1, r2}
.Lsec01_000015f8:
    bl png_write_tEXt
.Lsec01_000015fc:
    ldr r2, [r6, #56]
    mvn r3, #2
.Lsec01_00001604:
    str r3, [r2, r4]
.Lsec01_00001608:
    add r5, r5, #1
.Lsec01_0000160c:
    ldr r3, [r6, #48]
    cmp r5, r3
    mov r0, r7
    ldr r1, [pc, #172]
    mov r4, r5, lsl #4
    blt .Lsec01_000015a4
    ldr r3, [r6, #192]
    cmp r3, #0
    ldrne r4, [r6, #188]
    bne .Lsec01_0000169c
    b .Lsec01_000016bc
.Lsec01_00001638:
    bl png_handle_as_unknown
    cmp r0, #1
    mov ip, r0
    beq .Lsec01_00001698
    ldrb r3, [r4, #16]
    cmp r3, #0
    and r2, r3, #6
    beq .Lsec01_00001698
    cmp r2, #2
    bne .Lsec01_00001698
    ldrb r3, [r4, #3]
    mov r3, r3, lsr #5
    cmp ip, #3
    orreq r3, r3, #1
    tst r3, #1
    mov r1, r4
    mov r0, r7
    bne .Lsec01_0000168c
    ldr r3, [r7, #136]
    tst r3, #65536
    beq .Lsec01_00001698
.Lsec01_0000168c:
    add r2, r4, #8
    ldmia r2, {r2, r3}
.Lsec01_00001694:
    bl png_write_chunk
.Lsec01_00001698:
    add r4, r4, #20
.Lsec01_0000169c:
    ldr r1, [r6, #192]
    ldr r2, [r6, #188]
    mov r3, #20
    mla r3, r1, r3, r2
    cmp r4, r3
    mov r1, r4
    mov r0, r7
    bcc .Lsec01_00001638
.Lsec01_000016bc:
    add sp, sp, #20
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_000003b4
    .long .Lsec05_00000390
.arm
png_write_png:
    tst r2, #1024
    stmdb sp!, {r4, r5, r6, lr}
    mov r5, r2
    mov r6, r1
    mov r4, r0
.Lsec01_000016e4:
    blne png_set_invert_alpha
    mov r0, r4
    mov r1, r6
.Lsec01_000016f0:
    bl png_write_info
    tst r5, #32
    movne r0, r4
.Lsec01_000016fc:
    blne png_set_invert_mono
    tst r5, #64
    beq .Lsec01_0000171c
    ldr r3, [r6, #8]
    tst r3, #2
    movne r0, r4
    addne r1, r6, #68
.Lsec01_00001718:
    blne png_set_shift
.Lsec01_0000171c:
    tst r5, #4
    movne r0, r4
.Lsec01_00001724:
    blne png_set_packing
    tst r5, #256
    movne r0, r4
.Lsec01_00001730:
    blne png_set_swap_alpha
    tst r5, #2048
    movne r1, #0
    movne r0, r4
    movne r2, r1
.Lsec01_00001744:
    blne png_set_filler
    tst r5, #128
    movne r0, r4
.Lsec01_00001750:
    blne png_set_bgr
    tst r5, #512
    movne r0, r4
.Lsec01_0000175c:
    blne png_set_swap
    tst r5, #8
    movne r0, r4
.Lsec01_00001768:
    blne png_set_packswap
    ldr r3, [r6, #8]
    tst r3, #32768
    movne r0, r4
    ldrne r1, [r6, #248]
.Lsec01_0000177c:
    blne png_write_image
    mov r0, r4
    mov r1, r6
    ldmia sp!, {r4, r5, r6, lr}
.Lsec01_0000178c:
    b png_write_end

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "Only compression method 8 is supported by PNG"
    .asciz ""
    .asciz ""
.Lsec05_00000030:
    .asciz "Only compression windows <= 32k supported by PNG"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000064:
    .asciz "Only compression windows >= 256 supported by PNG"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000098:
    .asciz "Compression window is being reset to 512"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000000c4:
    .asciz "Unknown filter heuristic method"
.Lsec05_000000e4:
    .asciz "Unknown row filter for method 0"
.Lsec05_00000104:
    .asciz "Can't add Up filter after starting"
    .asciz ""
.Lsec05_00000128:
    .asciz "Can't add Average filter after starting"
.Lsec05_00000150:
    .asciz "Can't add Paeth filter after starting"
    .asciz ""
    .asciz ""
.Lsec05_00000178:
    .asciz "Unknown custom filter method"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000198:
    .asciz "zlib0 error %d"
    .asciz ""
.Lsec05_000001a8:
    .asciz "png_write_info was never called before png_write_row."
    .asciz ""
    .asciz ""
.Lsec05_000001e0:
    .asciz "Application uses deprecated png_write_init() and should be recompiled."
    .asciz ""
.Lsec05_00000228:
    .asciz "Application was compiled with png.h from libpng-%.20s"
    .asciz ""
    .asciz ""
.Lsec05_00000260:
    .asciz "Application  is  running with png.c from libpng-%.20s"
    .asciz ""
    .asciz ""
.Lsec05_00000298:
    .asciz "The png struct allocated by the application for writing is too small."
    .asciz ""
    .asciz ""
.Lsec05_000002e0:
    .asciz "The info struct allocated by the application for writing is too small."
    .asciz ""
.Lsec05_00000328:
    .asciz "1.0.6 or earlier"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000033c:
    .asciz "Incompatible libpng version in application and library"
    .asciz ""
.Lsec05_00000374:
    .asciz "No IDATs written into file"
    .asciz ""
.Lsec05_00000390:
    .long 0x62616e55
    .long 0x7420656c
    .long 0x7277206f
    .long 0x20657469
    .long 0x65746e69
    .long 0x74616e72
    .long 0x616e6f69
    .long 0x6574206c
    .long 0x000a7478
.Lsec05_000003b4:
    .long 0x696c6156
    .long 0x61702064
    .long 0x7474656c
    .long 0x65722065
    .long 0x72697571
    .long 0x66206465
    .long 0x7020726f
    .long 0x74656c61
    .long 0x20646574
    .long 0x67616d69
    .long 0x000a7365

.size png_convert_from_struct_tm, 64
.size png_set_flush, 16
.size png_set_compression_level, 20
.size png_set_compression_mem_level, 20
.size png_set_compression_strategy, 20
.size png_set_write_status_fn, 8
.size png_set_write_user_transform_fn, 20
.size png_set_compression_method, 60
.size png_set_compression_window_bits, 108
.size png_set_filter_heuristics, 752
.size png_set_filter, 524
.size png_write_destroy, 272
.size png_destroy_write_struct, 200
.size png_write_flush, 216
.size png_write_row, 516
.size png_write_rows, 64
.size png_write_image, 80
.size png_write_init_3, 284
.size png_write_init_2, 240
.size png_write_init, 20
.size png_create_write_struct_2, 556
.size png_create_write_struct, 40
.size png_convert_from_time_t, 52
.size png_write_end, 396
.size png_write_info_before_PLTE, 516
.size png_write_info, 776
.size png_write_png, 192

.section .note.GNU-stack,"",%progbits
