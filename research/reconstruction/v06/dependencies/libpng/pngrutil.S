/* Reconstructed mnemonic source for pngrutil.o. */
.syntax unified
.arch armv5te

.type msg.5167, %object
.global png_get_uint_32
.type png_get_uint_32, %function
.global png_get_int_32
.type png_get_int_32, %function
.global png_get_uint_16
.type png_get_uint_16, %function
.global png_get_uint_31
.type png_get_uint_31, %function
.global png_read_start_row
.type png_read_start_row, %function
.global png_crc_error
.type png_crc_error, %function
.global png_read_filter_row
.type png_read_filter_row, %function
.global png_do_read_interlace
.type png_do_read_interlace, %function
.global png_combine_row
.type png_combine_row, %function
.global png_check_chunk_name
.type png_check_chunk_name, %function
.global png_decompress_chunk
.type png_decompress_chunk, %function
.global png_crc_read
.type png_crc_read, %function
.global png_crc_finish
.type png_crc_finish, %function
.global png_read_finish_row
.type png_read_finish_row, %function
.global png_handle_unknown
.type png_handle_unknown, %function
.global png_handle_zTXt
.type png_handle_zTXt, %function
.global png_handle_tEXt
.type png_handle_tEXt, %function
.global png_handle_sCAL
.type png_handle_sCAL, %function
.global png_handle_pCAL
.type png_handle_pCAL, %function
.global png_handle_oFFs
.type png_handle_oFFs, %function
.global png_handle_pHYs
.type png_handle_pHYs, %function
.global png_handle_iCCP
.type png_handle_iCCP, %function
.global png_handle_sRGB
.type png_handle_sRGB, %function
.global png_handle_cHRM
.type png_handle_cHRM, %function
.global png_handle_sBIT
.type png_handle_sBIT, %function
.global png_handle_gAMA
.type png_handle_gAMA, %function
.global png_handle_IEND
.type png_handle_IEND, %function
.global png_handle_PLTE
.type png_handle_PLTE, %function
.global png_handle_IHDR
.type png_handle_IHDR, %function
.global png_handle_tIME
.type png_handle_tIME, %function
.global png_handle_hIST
.type png_handle_hIST, %function
.global png_handle_bKGD
.type png_handle_bKGD, %function
.global png_handle_tRNS
.type png_handle_tRNS, %function
.global png_handle_sPLT
.type png_handle_sPLT, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_get_uint_32:
    mov r3, r0
    ldrb r0, [r0, #1]
    ldrb r2, [r3]
    ldrb r1, [r3, #3]
    mov r0, r0, lsl #16
    add r0, r0, r2, lsl #24
    ldrb r3, [r3, #2]
    add r0, r0, r1
    add r0, r0, r3, lsl #8
    bx lr
png_get_int_32:
    mov r3, r0
    ldrb r0, [r0, #1]
    ldrb r2, [r3]
    ldrb r1, [r3, #3]
    mov r0, r0, lsl #16
    add r0, r0, r2, lsl #24
    ldrb r3, [r3, #2]
    add r0, r0, r1
    add r0, r0, r3, lsl #8
    bx lr
png_get_uint_16:
    mov r3, r0
    ldrb r3, [r3]
    ldrb r0, [r0, #1]
    add r0, r0, r3, lsl #8
    mov r0, r0, lsl #16
    mov r0, r0, lsr #16
    bx lr
png_get_uint_31:
    stmdb sp!, {r4, r5, lr}
    mov r4, r0
    sub sp, sp, #4
    mov r0, r1
.Lsec01_0000007c:
    bl png_get_uint_32
    subs r5, r0, #0
    ldr r1, [pc, #20]
    mov r0, r4
.Lsec01_0000008c:
    bllt png_error
    mov r0, r5
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_00000000
.arm
png_read_start_row:
    mov r3, #0
    stmdb sp!, {r4, r5, r6, lr}
    str r3, [r0, #148]
    mov r4, r0
.Lsec01_000000b4:
    bl png_init_read_transformations
    ldrb r3, [r4, #319]
    cmp r3, #0
    beq .Lsec01_00000150
    ldr r3, [r4, #140]
    ldr r2, [r4, #232]
    tst r3, #2
    strne r2, [r4, #236]
    bne .Lsec01_000000fc
    ldr r3, [pc, #680]
    ldr r1, [r3]
    ldr r3, [pc, #676]
    ldr r3, [r3]
    add r0, r1, r2
    rsb r0, r3, r0
    sub r0, r0, #1
.Lsec01_000000f4:
    bl __aeabi_uidiv
    str r0, [r4, #236]
.Lsec01_000000fc:
    ldrb r2, [r4, #320]
    ldr r3, [pc, #648]
    ldr r1, [r3, r2, lsl #2]
    ldr r3, [pc, #644]
    ldr r0, [r4, #228]
    ldr r3, [r3, r2, lsl #2]
    add r0, r1, r0
    rsb r0, r3, r0
    sub r0, r0, #1
.Lsec01_00000120:
    bl __aeabi_uidiv
    ldrb r3, [r4, #325]
    cmp r3, #7
    mulls r3, r0, r3
    movhi r3, r3, lsr #3
    mulhi r3, r0, r3
    addls r3, r3, #7
    movls r3, r3, lsr #3
    str r0, [r4, #252]
    add r0, r3, #1
    str r0, [r4, #248]
    b .Lsec01_0000016c
.Lsec01_00000150:
    ldr r3, [r4, #244]
    add r1, r4, #228
    ldmia r1, {r1, r2}
    add r3, r3, #1
    str r2, [r4, #236]
    str r1, [r4, #252]
    str r3, [r4, #248]
.Lsec01_0000016c:
    ldr r5, [r4, #140]
    tst r5, #4
    ldrb r0, [r4, #325]
    beq .Lsec01_00000188
    ldrb r3, [r4, #323]
    cmp r3, #7
    movls r0, #8
.Lsec01_00000188:
    ands r6, r5, #4096
    beq .Lsec01_000001f8
    ldrb r3, [r4, #322]
    cmp r3, #3
    bne .Lsec01_000001b4
    ldr r3, [pc, #500]
    ldrh r3, [r4, r3]
    cmp r3, #0
    moveq r0, #24
    movne r0, #32
    b .Lsec01_000001f8
.Lsec01_000001b4:
    cmp r3, #0
    bne .Lsec01_000001d8
    ldr r3, [pc, #468]
    ldrh r3, [r4, r3]
    cmp r0, #8
    movlt r0, #8
    cmp r3, #0
    movne r0, r0, lsl #1
    b .Lsec01_000001f8
.Lsec01_000001d8:
    cmp r3, #2
    bne .Lsec01_000001f8
    add r3, r3, #308
    ldrh r3, [r4, r3]
    cmp r3, #0
    movne r0, r0, lsl #2
    movne r1, #3
.Lsec01_000001f4:
    blne __aeabi_idiv
.Lsec01_000001f8:
    ands r2, r5, #32768
    beq .Lsec01_0000023c
    ldrb r3, [r4, #322]
    cmp r3, #3
    beq .Lsec01_00000238
    cmp r3, #0
    bne .Lsec01_00000224
    cmp r0, #8
    movle r0, #16
    ble .Lsec01_0000023c
    b .Lsec01_00000238
.Lsec01_00000224:
    cmp r3, #2
    bne .Lsec01_0000023c
    cmp r0, #32
    movgt r0, #64
    bgt .Lsec01_0000023c
.Lsec01_00000238:
    mov r0, #32
.Lsec01_0000023c:
    tst r5, #16384
    beq .Lsec01_000002ac
    ldr r3, [pc, #332]
    ldrh r3, [r4, r3]
    cmp r3, #0
    beq .Lsec01_0000025c
    cmp r6, #0
    bne .Lsec01_00000270
.Lsec01_0000025c:
    cmp r2, #0
    bne .Lsec01_00000270
    ldrb r3, [r4, #322]
    cmp r3, #4
    bne .Lsec01_0000027c
.Lsec01_00000270:
    cmp r0, #16
    ble .Lsec01_000002a8
    b .Lsec01_000002a0
.Lsec01_0000027c:
    cmp r0, #8
    bgt .Lsec01_00000294
    cmp r3, #6
    movne r0, #24
    bne .Lsec01_000002ac
    b .Lsec01_000002a8
.Lsec01_00000294:
    cmp r3, #6
    movne r0, #48
    bne .Lsec01_000002ac
.Lsec01_000002a0:
    mov r0, #64
    b .Lsec01_000002ac
.Lsec01_000002a8:
    mov r0, #32
.Lsec01_000002ac:
    tst r5, #1048576
    beq .Lsec01_000002c8
    ldrb r3, [r4, #128]
    ldrb r2, [r4, #129]
    mul r3, r2, r3
    cmp r0, r3
    movlt r0, r3
.Lsec01_000002c8:
    ldr r3, [r4, #228]
    add r3, r3, #7
    cmp r0, #7
    bic r2, r3, #7
    mulle r3, r0, r2
    movgt r3, r0, lsr #3
    mulgt r3, r2, r3
    movle r3, r3, lsr #3
    add r1, r3, #1
    add r3, r0, #7
    add r5, r1, r3, asr #3
    cmp r5, #65536
    movhi r0, r4
    ldrhi r1, [pc, #152]
.Lsec01_00000300:
    blhi png_error
    add r1, r5, #64
    mov r0, r4
.Lsec01_0000030c:
    bl png_malloc
    ldr r3, [r4, #244]
    add r3, r3, #1
    cmp r3, #65536
    add r3, r0, #32
    str r3, [r4, #264]
    str r0, [r4, #620]
    movhi r0, r4
    ldrhi r1, [pc, #104]
.Lsec01_00000330:
    blhi png_error
    ldr r3, [r4, #244]
    cmn r3, #1
    moveq r0, r4
    ldreq r1, [pc, #88]
.Lsec01_00000344:
    bleq png_error
    ldr r1, [r4, #244]
    mov r0, r4
    add r1, r1, #1
.Lsec01_00000354:
    bl png_malloc
    ldr r3, [r4, #244]
    mov r1, r0
    str r0, [r4, #260]
    add r3, r3, #1
    mov r0, r4
    mov r2, #0
.Lsec01_00000370:
    bl png_memset_check
    ldr r3, [r4, #136]
    orr r3, r3, #64
    str r3, [r4, #136]
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long png_pass_yinc
    .long png_pass_ystart
    .long png_pass_inc
    .long png_pass_start
    .long 0x00000136
    .long .Lsec05_00000024
    .long .Lsec05_00000050
.arm
png_crc_error:
    stmdb sp!, {r4, r5, lr}
    mov r4, r0
    ldrb r3, [r4, #312]
    sub sp, sp, #12
    mov r2, #4
    tst r3, #32
    ldr r3, [r4, #136]
    add r5, sp, r2
    and ip, r3, #768
    mov r1, r5
    beq .Lsec01_000003dc
    cmp ip, #768
    bne .Lsec01_000003fc
    b .Lsec01_000003e4
.Lsec01_000003dc:
    tst r3, #2048
    beq .Lsec01_000003fc
.Lsec01_000003e4:
    mov r0, r4
    mov r1, r5
    mov r2, #4
.Lsec01_000003f0:
    bl png_read_data
    mov r0, #0
    b .Lsec01_00000414
.Lsec01_000003fc:
    bl png_read_data
    mov r0, r5
.Lsec01_00000404:
    bl png_get_uint_32
    ldr r3, [r4, #300]
    subs r0, r0, r3
    movne r0, #1
.Lsec01_00000414:
    add sp, sp, #12
    ldmia sp!, {r4, r5, lr}
    bx lr
png_read_filter_row:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    sub sp, sp, #4
    ldr ip, [sp, #32]
    mov r4, r2
    mov r6, r3
    cmp ip, #4
    ldrls pc, [pc, ip, lsl #2]
    b .Lsec01_000005dc
    .long .Lsec01_000005ec
    .long .Lsec01_00000454
    .long .Lsec01_00000494
    .long .Lsec01_000004c0
    .long .Lsec01_00000530
.arm
.Lsec01_00000454:
    ldrb r3, [r1, #11]
    add r3, r3, #7
    mov lr, r3, asr #3
    ldr r1, [r1, #4]
    add ip, r2, lr
    mov r0, #0
    b .Lsec01_00000484
.Lsec01_00000470:
    ldrb r3, [r0, ip]
    ldrb r2, [r0, r4]
    add r3, r3, r2
    strb r3, [r0, ip]
    add r0, r0, #1
.Lsec01_00000484:
    add r3, lr, r0
    cmp r3, r1
    bcc .Lsec01_00000470
    b .Lsec01_000005ec
.Lsec01_00000494:
    ldr r1, [r1, #4]
    mov r0, #0
    b .Lsec01_000004b4
.Lsec01_000004a0:
    ldrb r3, [r0, r4]
    ldrb r2, [r0, r6]
    add r3, r3, r2
    strb r3, [r0, r4]
    add r0, r0, #1
.Lsec01_000004b4:
    cmp r0, r1
    bne .Lsec01_000004a0
    b .Lsec01_000005ec
.Lsec01_000004c0:
    ldrb r3, [r1, #11]
    ldr r2, [r1, #4]
    add r3, r3, #7
    mov r0, r3, asr #3
    rsb r5, r0, r2
    mov r1, #0
    b .Lsec01_000004f0
.Lsec01_000004dc:
    ldrb r2, [r1, r6]
    ldrb r3, [r1, r4]
    add r3, r3, r2, lsr #1
    strb r3, [r1, r4]
    add r1, r1, #1
.Lsec01_000004f0:
    cmp r1, r0
    bne .Lsec01_000004dc
    add lr, r6, r0
    add ip, r4, r0
    mov r0, #0
    b .Lsec01_00000524
.Lsec01_00000508:
    ldrb r3, [r0, lr]
    ldrb r1, [r0, r4]
    ldrb r2, [r0, ip]
    add r3, r3, r1
    add r2, r2, r3, lsr #1
    strb r2, [r0, ip]
    add r0, r0, #1
.Lsec01_00000524:
    cmp r0, r5
    bne .Lsec01_00000508
    b .Lsec01_000005ec
.Lsec01_00000530:
    ldrb r3, [r1, #11]
    ldr r2, [r1, #4]
    add r3, r3, #7
    mov r0, r3, asr #3
    rsb sl, r0, r2
    mov r1, #0
    b .Lsec01_00000560
.Lsec01_0000054c:
    ldrb r3, [r1, r4]
    ldrb r2, [r1, r6]
    add r3, r3, r2
    strb r3, [r1, r4]
    add r1, r1, #1
.Lsec01_00000560:
    cmp r1, r0
    bne .Lsec01_0000054c
    add r7, r4, r0
    add r8, r6, r0
    mov lr, #0
    b .Lsec01_000005d0
.Lsec01_00000578:
    ldrb ip, [lr, r6]
    ldrb r0, [lr, r4]
    ldrb r5, [lr, r8]
    rsb r1, ip, r0
    rsb r3, ip, r5
    add r2, r3, r1
    cmp r2, #0
    rsblt r2, r2, #0
    cmp r1, #0
    rsblt r1, r1, #0
    cmp r3, #0
    rsblt r3, r3, #0
    cmp r3, r1
    cmple r3, r2
    ble .Lsec01_000005c0
    cmp r1, r2
    movgt r0, ip
    movle r0, r5
.Lsec01_000005c0:
    ldrb r3, [lr, r7]
    add r3, r3, r0
    strb r3, [lr, r7]
    add lr, lr, #1
.Lsec01_000005d0:
    cmp lr, sl
    bne .Lsec01_00000578
    b .Lsec01_000005ec
.Lsec01_000005dc:
    ldr r1, [pc, #20]
.Lsec01_000005e0:
    bl png_warning
    mov r3, #0
    strb r3, [r4]
.Lsec01_000005ec:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long .Lsec05_00000080
.arm
png_do_read_interlace:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr r3, [r0, #264]
    cmn r0, #284
    cmnne r3, #1
    sub sp, sp, #28
    ldrb lr, [r0, #320]
    ldr r2, [r0, #140]
    add r1, r3, #1
    add fp, r0, #284
    beq .Lsec01_0000097c
    ldr r3, [pc, #860]
    ldrb ip, [r0, #295]
    ldr lr, [r3, lr, lsl #2]
    ldr r0, [r0, #284]
    mov r9, lr
    cmp ip, #2
    str lr, [sp]
    mul r9, r0, r9
    beq .Lsec01_00000728
    cmp ip, #4
    beq .Lsec01_00000808
    cmp ip, #1
    bne .Lsec01_000008e8
    ands r5, r2, #65536
    add r3, r0, #7
    add r2, r9, #7
    beq .Lsec01_00000684
    and r4, r3, #7
    and lr, r2, #7
    mov r3, #7
    mov sl, #0
    mvn r8, #0
    str r3, [sp, #4]
    b .Lsec01_000006a0
.Lsec01_00000684:
    mvn r3, r3
    mvn r2, r2
    str r5, [sp, #4]
    and r4, r3, #7
    and lr, r2, #7
    mov r8, ip
    mov sl, #7
.Lsec01_000006a0:
    sub r2, r0, #1
    sub r3, r9, #1
    add ip, r1, r3, lsr #3
    add r0, r1, r2, lsr #3
    mov r6, #0
    b .Lsec01_00000718
.Lsec01_000006b8:
    ldrb r3, [r0]
    mov r3, r3, asr r4
    mov r5, #0
    and r7, r3, #1
    b .Lsec01_000006f4
.Lsec01_000006cc:
    ldrb r3, [ip]
    ldr r2, [pc, #692]
    and r3, r3, r2, asr r1
    orr r3, r3, r7, lsl lr
    strb r3, [ip]
    cmp lr, sl
    add lr, lr, r8
    ldreq lr, [sp, #4]
    subeq ip, ip, #1
    add r5, r5, #1
.Lsec01_000006f4:
    ldr r3, [sp]
    cmp r5, r3
    rsb r1, lr, #7
    blt .Lsec01_000006cc
    cmp r4, sl
    ldreq r4, [sp, #4]
    subeq r0, r0, #1
    addne r4, r4, r8
    add r6, r6, #1
.Lsec01_00000718:
    ldr r3, [fp]
    cmp r6, r3
    bcc .Lsec01_000006b8
    b .Lsec01_00000958
.Lsec01_00000728:
    ands r4, r2, #65536
    add r3, r0, #3
    add r2, r9, #3
    beq .Lsec01_0000075c
    and r3, r3, #3
    and r2, r2, #3
    mov lr, r3, lsl #1
    mov ip, r2, lsl #1
    mov r3, #6
    mov sl, #0
    mvn r8, #1
    str r3, [sp, #8]
    b .Lsec01_00000780
.Lsec01_0000075c:
    mvn r3, r3
    mvn r2, r2
    and r3, r3, #3
    and r2, r2, #3
    str r4, [sp, #8]
    mov lr, r3, lsl #1
    mov ip, r2, lsl #1
    mov sl, #6
    mov r8, #2
.Lsec01_00000780:
    sub r2, r0, #1
    sub r3, r9, #1
    add r4, r1, r3, lsr #2
    add r0, r1, r2, lsr #2
    mov r6, #0
    b .Lsec01_000007f8
.Lsec01_00000798:
    ldrb r3, [r0]
    mov r3, r3, asr lr
    mov r5, #0
    and r7, r3, #3
    b .Lsec01_000007d4
.Lsec01_000007ac:
    ldrb r3, [r4]
    ldr r2, [pc, #472]
    and r3, r3, r2, asr r1
    orr r3, r3, r7, lsl ip
    strb r3, [r4]
    cmp ip, sl
    add ip, ip, r8
    ldreq ip, [sp, #8]
    subeq r4, r4, #1
    add r5, r5, #1
.Lsec01_000007d4:
    ldr r3, [sp]
    cmp r5, r3
    rsb r1, ip, #6
    blt .Lsec01_000007ac
    cmp lr, sl
    ldreq lr, [sp, #8]
    subeq r0, r0, #1
    addne lr, lr, r8
    add r6, r6, #1
.Lsec01_000007f8:
    ldr r3, [fp]
    cmp r6, r3
    bcc .Lsec01_00000798
    b .Lsec01_00000958
.Lsec01_00000808:
    ands r4, r2, #65536
    add r3, r0, #1
    add r2, r9, #1
    beq .Lsec01_0000083c
    and r3, r3, #1
    and r2, r2, #1
    mov lr, r3, lsl #2
    mov ip, r2, lsl #2
    mov r3, #4
    mov sl, #0
    mvn r7, #3
    str r3, [sp, #12]
    b .Lsec01_00000860
.Lsec01_0000083c:
    mvn r3, r3
    mvn r2, r2
    and r3, r3, #1
    and r2, r2, #1
    mov r7, #4
    str r4, [sp, #12]
    mov lr, r3, lsl #2
    mov ip, r2, lsl #2
    mov sl, r7
.Lsec01_00000860:
    sub r2, r0, #1
    sub r3, r9, #1
    add r4, r1, r3, lsr #1
    add r0, r1, r2, lsr #1
    mov r6, #0
    b .Lsec01_000008d8
.Lsec01_00000878:
    ldrb r3, [r0]
    mov r3, r3, asr lr
    mov r5, #0
    and r8, r3, #15
    b .Lsec01_000008b4
.Lsec01_0000088c:
    ldrb r3, [r4]
    ldr r2, [pc, #252]
    and r3, r3, r2, asr r1
    orr r3, r3, r8, lsl ip
    strb r3, [r4]
    cmp ip, sl
    add ip, ip, r7
    ldreq ip, [sp, #12]
    subeq r4, r4, #1
    add r5, r5, #1
.Lsec01_000008b4:
    ldr r3, [sp]
    cmp r5, r3
    rsb r1, ip, #4
    blt .Lsec01_0000088c
    cmp lr, sl
    ldreq lr, [sp, #12]
    subeq r0, r0, #1
    addne lr, lr, r7
    add r6, r6, #1
.Lsec01_000008d8:
    ldr r3, [fp]
    cmp r6, r3
    bcc .Lsec01_00000878
    b .Lsec01_00000958
.Lsec01_000008e8:
    mov r5, ip, lsr #3
    sub r2, r0, #1
    sub r3, r9, #1
    mla r8, r5, r3, r1
    mla r7, r5, r2, r1
    mov sl, #0
    b .Lsec01_0000094c
.Lsec01_00000904:
    add r0, sp, #16
    mov r1, r7
    mov r2, r5
.Lsec01_00000910:
    bl memcpy
    mov r6, #0
    b .Lsec01_00000924
.Lsec01_0000091c:
    bl memcpy
    add r8, r8, r4
.Lsec01_00000924:
    ldr r3, [sp]
    cmp r6, r3
    mov r0, r8
    add r1, sp, #16
    mov r2, r5
    add r6, r6, #1
    rsb r4, r5, #0
    blt .Lsec01_0000091c
    add r7, r7, r4
    add sl, sl, #1
.Lsec01_0000094c:
    ldr r3, [fp]
    cmp sl, r3
    bcc .Lsec01_00000904
.Lsec01_00000958:
    ldrb r3, [fp, #11]
    cmp r3, #7
    mulls r3, r9, r3
    movhi r3, r3, lsr #3
    mulhi r3, r9, r3
    addls r3, r3, #7
    movls r3, r3, lsr #3
    str r9, [fp]
    str r3, [fp, #4]
.Lsec01_0000097c:
    add sp, sp, #28
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long png_pass_inc
    .long 0x00007f7f
    .long 0x00003f3f
    .long 0x00000f0f
.arm
png_combine_row:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r2, #255
    mov r9, r2
    sub sp, sp, #4
    mov ip, r1
    ldrb r2, [r0, #295]
    bne .Lsec01_000009e4
    ldr sl, [r0, #228]
    cmp r2, #7
    mulls r3, sl, r2
    ldr r1, [r0, #264]
    movhi r3, r2, lsr #3
    addls r3, r3, #7
    mulhi r2, sl, r3
    movls r2, r3, lsr #3
    mov r0, ip
    add r1, r1, #1
.Lsec01_000009dc:
    bl memcpy
    b .Lsec01_00000c1c
.Lsec01_000009e4:
    cmp r2, #2
    beq .Lsec01_00000a98
    cmp r2, #4
    beq .Lsec01_00000b34
    cmp r2, #1
    ldr r1, [r0, #264]
    ldr sl, [r0, #228]
    bne .Lsec01_00000bd0
    ldr r3, [r0, #140]
    ands r3, r3, #65536
    movne r7, #0
    moveq r7, #7
    mov r0, ip
    movne fp, r2
    movne r8, #7
    moveq r8, r3
    mvneq fp, #0
    add lr, r1, #1
    mov ip, r7
    mov r5, #128
    mov r6, #0
    b .Lsec01_00000a88
.Lsec01_00000a3c:
    tst r5, r9
    beq .Lsec01_00000a64
    ldrb r3, [lr]
    ldrb r2, [r0]
    ldr r1, [pc, #468]
    mov r3, r3, asr ip
    and r2, r2, r1, asr r4
    and r3, r3, #1
    orr r2, r2, r3, lsl ip
    strb r2, [r0]
.Lsec01_00000a64:
    cmp ip, r8
    addeq lr, lr, #1
    add ip, ip, fp
    addeq r0, r0, #1
    moveq ip, r7
    cmp r5, #1
    add r6, r6, #1
    mov r5, r5, asr #1
    moveq r5, #128
.Lsec01_00000a88:
    cmp r6, sl
    rsb r4, ip, #7
    bne .Lsec01_00000a3c
    b .Lsec01_00000c1c
.Lsec01_00000a98:
    ldr r3, [r0, #140]
    ldr r2, [r0, #264]
    ands r3, r3, #65536
    ldr r8, [r0, #228]
    movne r7, #0
    moveq r7, #6
    movne fp, #6
    movne sl, #2
    moveq fp, r3
    mvneq sl, #1
    add lr, r2, #1
    mov r0, r1
    mov ip, r7
    mov r5, #128
    mov r6, #0
    b .Lsec01_00000b24
.Lsec01_00000ad8:
    tst r5, r9
    beq .Lsec01_00000b00
    ldrb r3, [lr]
    ldrb r2, [r0]
    ldr r1, [pc, #316]
    mov r3, r3, asr ip
    and r2, r2, r1, asr r4
    and r3, r3, #3
    orr r2, r2, r3, lsl ip
    strb r2, [r0]
.Lsec01_00000b00:
    cmp ip, fp
    addeq lr, lr, #1
    add ip, ip, sl
    addeq r0, r0, #1
    moveq ip, r7
    cmp r5, #1
    add r6, r6, #1
    mov r5, r5, asr #1
    moveq r5, #128
.Lsec01_00000b24:
    cmp r6, r8
    rsb r4, ip, #6
    bne .Lsec01_00000ad8
    b .Lsec01_00000c1c
.Lsec01_00000b34:
    ldr r3, [r0, #140]
    ldr r2, [r0, #264]
    ands r3, r3, #65536
    ldr sl, [r0, #228]
    movne r7, #4
    movne r8, #0
    moveq r8, #4
    movne fp, r7
    moveq fp, r3
    mvneq r7, #3
    add lr, r2, #1
    mov r0, r1
    mov ip, r8
    mov r5, #128
    mov r6, #0
    b .Lsec01_00000bc0
.Lsec01_00000b74:
    tst r5, r9
    beq .Lsec01_00000b9c
    ldrb r3, [lr]
    ldrb r2, [r0]
    ldr r1, [pc, #164]
    mov r3, r3, asr ip
    and r2, r2, r1, asr r4
    and r3, r3, #15
    orr r2, r2, r3, lsl ip
    strb r2, [r0]
.Lsec01_00000b9c:
    cmp ip, fp
    addeq lr, lr, #1
    add ip, ip, r7
    addeq r0, r0, #1
    moveq ip, r8
    cmp r5, #1
    add r6, r6, #1
    mov r5, r5, asr #1
    moveq r5, #128
.Lsec01_00000bc0:
    cmp r6, sl
    rsb r4, ip, #4
    bne .Lsec01_00000b74
    b .Lsec01_00000c1c
.Lsec01_00000bd0:
    add r6, r1, #1
    mov r4, r2, lsr #3
    mov r5, ip
    mov r8, #0
    mov r7, #128
    b .Lsec01_00000c08
.Lsec01_00000be8:
    tst r7, r9
.Lsec01_00000bec:
    blne memcpy
    cmp r7, #1
    add r6, r6, r4
    mov r7, r7, lsr #1
    add r5, r5, r4
    moveq r7, #128
    add r8, r8, #1
.Lsec01_00000c08:
    cmp r8, sl
    mov r0, r5
    mov r1, r6
    mov r2, r4
    bne .Lsec01_00000be8
.Lsec01_00000c1c:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x00007f7f
    .long 0x00003f3f
    .long 0x00000f0f
.arm
png_check_chunk_name:
    str lr, [sp, #-4]!
    mov ip, r1
    ldrb r3, [ip]
    sub r2, r3, #91
    cmp r2, #5
    movhi r2, #0
    movls r2, #1
    sub r3, r3, #65
    cmp r3, #57
    orrhi r2, r2, #1
    cmp r2, #0
    sub sp, sp, #4
    ldr r1, [pc, #136]
    bne .Lsec01_00000ce4
    ldrb r2, [ip, #1]
    sub r3, r2, #91
    cmp r3, #5
    movhi r3, #0
    movls r3, #1
    sub r2, r2, #65
    cmp r2, #57
    orrhi r3, r3, #1
    cmp r3, #0
    bne .Lsec01_00000ce4
    ldrb r2, [ip, #2]
    sub r3, r2, #91
    cmp r3, #5
    movhi r3, #0
    movls r3, #1
    sub r2, r2, #65
    cmp r2, #57
    orrhi r3, r3, #1
    cmp r3, #0
    bne .Lsec01_00000ce4
    ldrb r2, [ip, #3]
    sub r3, r2, #91
    cmp r3, #5
    movhi r3, #0
    movls r3, #1
    sub r2, r2, #65
    cmp r2, #57
    orrhi r3, r3, #1
    cmp r3, #0
    beq .Lsec01_00000ce8
.Lsec01_00000ce4:
    bl png_chunk_error
.Lsec01_00000ce8:
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
    .long .Lsec05_000000a4
.arm
png_decompress_chunk:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r1, #0
    sub sp, sp, #68
    mov r5, r0
    mov r8, r2
    str r3, [sp, #4]
    ldr sl, [sp, #104]
    bne .Lsec01_00001010
    ldr ip, [sp, #4]
    mov r6, r1
    ldr r1, [r0, #200]
    ldr r0, [r0, #204]
    add r3, r2, sl
    mov r7, r6
    rsb r2, sl, ip
    mov r9, r6
    str r3, [r5, #144]
    str r2, [r5, #148]
    str r1, [r5, #156]
    str r0, [r5, #160]
    b .Lsec01_00000f48
.Lsec01_00000d4c:
    add r4, r5, #144
    mov r0, r4
    mov r1, #1
.Lsec01_00000d58:
    bl inflate
    cmp r0, #1
    mov r9, r0
    bls .Lsec01_00000e14
    ldr r1, [r5, #168]
    cmp r1, #0
    movne r0, r5
    moveq r0, r5
    ldreq r1, [pc, #720]
.Lsec01_00000d7c:
    bl png_warning
    mov r0, r4
.Lsec01_00000d84:
    bl inflateReset
    mov r3, #0
    cmp r6, #0
    str r3, [r5, #148]
    bne .Lsec01_00000dd8
    add r7, sl, #32
    mov r0, r5
    mov r1, r7
.Lsec01_00000da4:
    bl png_malloc_warn
    subs r6, r0, #0
    bne .Lsec01_00000dc8
    mov r1, r8
    mov r0, r5
.Lsec01_00000db8:
    bl png_free
    mov r0, r5
    ldr r1, [pc, #652]
.Lsec01_00000dc4:
    bl png_error
.Lsec01_00000dc8:
    mov r0, r6
    mov r1, r8
    mov r2, sl
.Lsec01_00000dd4:
    bl memcpy
.Lsec01_00000dd8:
    ldr r2, [sp, #4]
    rsb r3, r8, r6
    rsb r3, r3, r2
    sub r3, r3, #1
    add r2, r6, r7
    cmp r3, #31
    movcc r7, r3
    movcs r7, #31
    mov r3, #0
    strb r3, [r2, #-1]
    add r0, r6, sl
    ldr r1, [pc, #580]
    add r2, r7, #1
.Lsec01_00000e0c:
    bl memcpy
    b .Lsec01_00000f54
.Lsec01_00000e14:
    ldr r2, [r5, #160]
    movne fp, #0
    moveq fp, #1
    cmp r2, #0
    movne r3, fp
    orreq r3, fp, #1
    cmp r3, #0
    beq .Lsec01_00000f48
    cmp r6, #0
    ldr r3, [r5, #204]
    bne .Lsec01_00000ea0
    add r3, sl, r3
    rsb r7, r2, r3
    mov r0, r5
    add r1, r7, #1
.Lsec01_00000e50:
    bl png_malloc_warn
    subs r6, r0, #0
    bne .Lsec01_00000e74
    mov r1, r8
    mov r0, r5
.Lsec01_00000e64:
    bl png_free
    mov r0, r5
    ldr r1, [pc, #484]
.Lsec01_00000e70:
    bl png_error
.Lsec01_00000e74:
    ldr r1, [r5, #200]
    rsb r2, sl, r7
    add r0, r6, sl
.Lsec01_00000e80:
    bl memcpy
    mov r0, r6
    mov r1, r8
    mov r2, sl
.Lsec01_00000e90:
    bl memcpy
    mov r3, #0
    strb r3, [r6, r7]
    b .Lsec01_00000f30
.Lsec01_00000ea0:
    add r1, r7, r3
    rsb r1, r2, r1
    add r1, r1, #1
    mov r0, r5
.Lsec01_00000eb0:
    bl png_malloc_warn
    subs r4, r0, #0
    bne .Lsec01_00000ee0
    mov r0, r5
    mov r1, r6
.Lsec01_00000ec4:
    bl png_free
    mov r0, r5
    mov r1, r8
.Lsec01_00000ed0:
    bl png_free
    mov r0, r5
    ldr r1, [pc, #380]
.Lsec01_00000edc:
    bl png_error
.Lsec01_00000ee0:
    mov r2, r7
    mov r1, r6
    mov r0, r4
.Lsec01_00000eec:
    bl memcpy
    mov r1, r6
    mov r0, r5
.Lsec01_00000ef8:
    bl png_free
    ldr r3, [r5, #204]
    ldr r2, [r5, #160]
    add r0, r4, r7
    rsb r2, r2, r3
    ldr r1, [r5, #200]
.Lsec01_00000f10:
    bl memcpy
    ldr r3, [r5, #204]
    ldr r2, [r5, #160]
    rsb r3, r2, r3
    add r7, r7, r3
    mov r3, #0
    strb r3, [r4, r7]
    mov r6, r4
.Lsec01_00000f30:
    cmp fp, #0
    bne .Lsec01_00000fe4
    ldr r3, [r5, #200]
    ldr r2, [r5, #204]
    str r3, [r5, #156]
    str r2, [r5, #160]
.Lsec01_00000f48:
    ldr r3, [r5, #148]
    cmp r3, #0
    bne .Lsec01_00000d4c
.Lsec01_00000f54:
    cmp r9, #1
    beq .Lsec01_00000fe4
    cmn r9, #5
    ldreq r1, [pc, #248]
    addeq r0, sp, #14
    addeq r2, r5, #312
    beq .Lsec01_00000f84
    cmn r9, #3
    ldreq r1, [pc, #232]
    ldrne r1, [pc, #232]
    add r0, sp, #14
    add r2, r5, #312
.Lsec01_00000f84:
    bl sprintf
    mov r0, r5
    add r1, sp, #14
.Lsec01_00000f90:
    bl png_warning
    cmp r6, #0
    bne .Lsec01_00000fd8
    mov r0, r5
    add r1, sl, #1
.Lsec01_00000fa4:
    bl png_malloc_warn
    subs r6, r0, #0
    bne .Lsec01_00000fc8
    mov r1, r8
    mov r0, r5
.Lsec01_00000fb8:
    bl png_free
    mov r0, r5
    ldr r1, [pc, #164]
.Lsec01_00000fc4:
    bl png_error
.Lsec01_00000fc8:
    mov r0, r6
    mov r1, r8
    mov r2, sl
.Lsec01_00000fd4:
    bl memcpy
.Lsec01_00000fd8:
    mov r3, #0
    strb r3, [r6, sl]
    mov r7, sl
.Lsec01_00000fe4:
    add r0, r5, #144
.Lsec01_00000fe8:
    bl inflateReset
    mov r3, #0
    str r3, [r5, #148]
    mov r1, r8
    mov r0, r5
.Lsec01_00000ffc:
    bl png_free
    ldr r3, [sp, #108]
    mov r8, r6
    str r7, [r3]
    b .Lsec01_00001040
.Lsec01_00001010:
    add r4, sp, #14
    mov r2, r1
    mov r0, r4
    ldr r1, [pc, #76]
.Lsec01_00001020:
    bl sprintf
    mov r0, r5
    mov r1, r4
.Lsec01_0000102c:
    bl png_warning
    mov r3, #0
    strb r3, [r8, sl]
    ldr ip, [sp, #108]
    str sl, [ip]
.Lsec01_00001040:
    mov r0, r8
    add sp, sp, #68
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec03_00000000
    .long .Lsec05_000000b8
    .long .Lsec05_000000e0
    .long .Lsec05_00000108
    .long .Lsec05_00000130
    .long .Lsec05_00000164
    .long .Lsec05_00000194
    .long .Lsec05_000001c4
    .long .Lsec05_000001e0
.arm
png_crc_read:
    stmdb sp!, {r4, r5, r6, lr}
    mov r4, r0
    mov r5, r1
    mov r6, r2
.Lsec01_00001084:
    bl png_read_data
    mov r0, r4
    mov r1, r5
    mov r2, r6
.Lsec01_00001094:
    bl png_calculate_crc
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
png_crc_finish:
    stmdb sp!, {r4, r5, r6, lr}
    ldr r6, [r0, #204]
    mov r4, r0
    mov r5, r1
    b .Lsec01_000010c4
.Lsec01_000010b4:
    add r1, r4, #200
    ldmia r1, {r1, r2}
.Lsec01_000010bc:
    bl png_crc_read
    rsb r5, r6, r5
.Lsec01_000010c4:
    cmp r5, r6
    mov r0, r4
    bhi .Lsec01_000010b4
    cmp r5, #0
    movne r2, r5
    ldrne r1, [r4, #200]
.Lsec01_000010dc:
    blne png_crc_read
    mov r0, r4
.Lsec01_000010e4:
    bl png_crc_error
    cmp r0, #0
    beq .Lsec01_00001134
    ldrb r3, [r4, #312]
    tst r3, #32
    ldr r3, [r4, #136]
    beq .Lsec01_0000110c
    tst r3, #512
    beq .Lsec01_00001114
    b .Lsec01_00001124
.Lsec01_0000110c:
    tst r3, #1024
    beq .Lsec01_00001124
.Lsec01_00001114:
    mov r0, r4
    ldr r1, [pc, #28]
.Lsec01_0000111c:
    bl png_chunk_warning
    b .Lsec01_00001130
.Lsec01_00001124:
    mov r0, r4
    ldr r1, [pc, #12]
.Lsec01_0000112c:
    bl png_chunk_error
.Lsec01_00001130:
    mov r0, #1
.Lsec01_00001134:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_00000204
.arm
png_read_finish_row:
    stmdb sp!, {r4, r5, r6, lr}
    ldr r3, [r0, #256]
    ldr r2, [r0, #236]
    add r3, r3, #1
    cmp r3, r2
    sub sp, sp, #8
    mov r4, r0
    str r3, [r0, #256]
    bcc .Lsec01_000013ec
    ldrb r3, [r0, #319]
    cmp r3, #0
    beq .Lsec01_00001240
    ldr r3, [r0, #244]
    mov r2, #0
    str r2, [r0, #256]
    add r3, r3, #1
    ldr r1, [r0, #260]
.Lsec01_00001184:
    bl png_memset_check
.Lsec01_00001188:
    ldrb r3, [r4, #320]
    add r3, r3, #1
    and r1, r3, #255
    cmp r1, #6
    strb r1, [r4, #320]
    bhi .Lsec01_00001240
    ldr r3, [pc, #592]
    ldr r0, [r3, r1, lsl #2]
    ldr r3, [pc, #588]
    ldr r2, [r4, #228]
    ldr r3, [r3, r1, lsl #2]
    mov r1, r0
    add r0, r0, r2
    rsb r0, r3, r0
    sub r0, r0, #1
.Lsec01_000011c4:
    bl __aeabi_uidiv
    ldrb r3, [r4, #325]
    cmp r3, #7
    mov r2, r3, lsr #3
    mulls r3, r0, r3
    mulhi r3, r2, r0
    addls r3, r3, #7
    movls r3, r3, lsr #3
    str r0, [r4, #252]
    add r0, r3, #1
    ldr r3, [r4, #140]
    tst r3, #2
    str r0, [r4, #248]
    bne .Lsec01_00001234
    ldrb r2, [r4, #320]
    ldr r3, [pc, #504]
    ldr r1, [r3, r2, lsl #2]
    ldr r3, [pc, #500]
    ldr r0, [r4, #232]
    ldr r3, [r3, r2, lsl #2]
    add r0, r1, r0
    rsb r0, r3, r0
    sub r0, r0, #1
.Lsec01_00001220:
    bl __aeabi_uidiv
    ldr r3, [r4, #252]
    cmp r3, #0
    str r0, [r4, #236]
    beq .Lsec01_00001188
.Lsec01_00001234:
    ldrb r3, [r4, #320]
    cmp r3, #6
    bls .Lsec01_000013ec
.Lsec01_00001240:
    ldr r3, [r4, #136]
    tst r3, #32
    bne .Lsec01_000013b4
    add r3, sp, #7
    str r3, [r4, #156]
    mov r3, #1
    str r3, [r4, #160]
.Lsec01_0000125c:
    ldr r3, [r4, #148]
    cmp r3, #0
    beq .Lsec01_000012c8
    b .Lsec01_00001318
.Lsec01_0000126c:
    bl png_crc_finish
    mov r2, #4
    mov r0, r4
    mov r1, r6
.Lsec01_0000127c:
    bl png_read_data
    mov r1, r6
    mov r0, r4
.Lsec01_00001288:
    bl png_get_uint_31
    str r0, [r4, #296]
    mov r0, r4
.Lsec01_00001294:
    bl png_reset_crc
    mov r1, r5
    mov r2, #4
    mov r0, r4
.Lsec01_000012a4:
    bl png_crc_read
    ldr r1, [pc, #344]
    mov r0, r5
    mov r2, #4
.Lsec01_000012b4:
    bl memcmp
    cmp r0, #0
    ldr r1, [pc, #328]
    mov r0, r4
.Lsec01_000012c4:
    blne png_error
.Lsec01_000012c8:
    ldr ip, [r4, #296]
    subs r1, ip, #0
    add r6, sp, #3
    mov r0, r4
    add r5, r4, #312
    beq .Lsec01_0000126c
    ldr r2, [r4, #204]
    cmp r2, ip
    ldr r3, [r4, #200]
    str r2, [r4, #148]
    strhi ip, [r4, #148]
    str r3, [r4, #144]
    ldr r2, [r4, #148]
    mov r0, r4
    ldr r1, [r4, #200]
.Lsec01_00001304:
    bl png_crc_read
    ldr r3, [r4, #296]
    ldr r2, [r4, #148]
    rsb r3, r2, r3
    str r3, [r4, #296]
.Lsec01_00001318:
    add r0, r4, #144
    mov r1, #1
.Lsec01_00001320:
    bl inflate
    cmp r0, #1
    bne .Lsec01_0000135c
    ldr r3, [r4, #160]
    cmp r3, #0
    beq .Lsec01_00001350
    ldr r3, [r4, #148]
    cmp r3, #0
    bne .Lsec01_00001350
    ldr r3, [r4, #296]
    cmp r3, #0
    beq .Lsec01_00001394
.Lsec01_00001350:
    ldr r1, [pc, #184]
    mov r0, r4
    b .Lsec01_00001390
.Lsec01_0000135c:
    cmp r0, #0
    beq .Lsec01_0000137c
    ldr r3, [r4, #168]
    cmp r3, #0
    ldr r1, [pc, #160]
    mov r0, r4
    movne r1, r3
.Lsec01_00001378:
    bl png_error
.Lsec01_0000137c:
    ldr r3, [r4, #160]
    cmp r3, #0
    bne .Lsec01_0000125c
    ldr r1, [pc, #136]
    mov r0, r4
.Lsec01_00001390:
    bl png_warning
.Lsec01_00001394:
    ldr r3, [r4, #132]
    ldr r2, [r4, #136]
    orr r3, r3, #8
    orr r2, r2, #32
    str r3, [r4, #132]
    mov r3, #0
    str r2, [r4, #136]
    str r3, [r4, #160]
.Lsec01_000013b4:
    ldr r3, [r4, #296]
    cmp r3, #0
    bne .Lsec01_000013cc
    ldr r3, [r4, #148]
    cmp r3, #0
    beq .Lsec01_000013d8
.Lsec01_000013cc:
    mov r0, r4
    ldr r1, [pc, #68]
.Lsec01_000013d4:
    bl png_warning
.Lsec01_000013d8:
    add r0, r4, #144
.Lsec01_000013dc:
    bl inflateReset
    ldr r3, [r4, #132]
    orr r3, r3, #8
    str r3, [r4, #132]
.Lsec01_000013ec:
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long png_pass_inc
    .long png_pass_start
    .long png_pass_yinc
    .long png_pass_ystart
    .long png_IDAT
    .long .Lsec05_00000210
    .long .Lsec05_00000228
    .long .Lsec05_00000240
    .long .Lsec05_00000254
    .long .Lsec05_0000026c
.arm
png_handle_unknown:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    ldr r6, [r0, #132]
    tst r6, #4
    sub sp, sp, #28
    mov r4, r0
    mov sl, r1
    mov r5, r2
    beq .Lsec01_0000145c
    add r0, r0, #312
    ldr r1, [pc, #360]
    mov r2, #4
.Lsec01_0000144c:
    bl memcmp
    cmp r0, #0
    orrne r3, r6, #8
    strne r3, [r4, #132]
.Lsec01_0000145c:
    add r8, r4, #312
    mov r0, r4
    mov r1, r8
.Lsec01_00001468:
    bl png_check_chunk_name
    ldrb r3, [r4, #312]
    tst r3, #32
    bne .Lsec01_000014a0
    mov r0, r4
    mov r1, r8
.Lsec01_00001480:
    bl png_handle_as_unknown
    cmp r0, #3
    beq .Lsec01_000014a0
    ldr r3, [r4, #568]
    cmp r3, #0
    moveq r0, r4
    ldreq r1, [pc, #280]
.Lsec01_0000149c:
    bleq png_chunk_error
.Lsec01_000014a0:
    ldr r3, [r4, #136]
    tst r3, #32768
    moveq r6, r5
    beq .Lsec01_0000159c
    ldr r7, [pc, #260]
    cmp r5, r7
    movls r6, #0
    bls .Lsec01_000014d8
    mov r0, r4
    ldr r1, [pc, #244]
.Lsec01_000014c8:
    bl png_warning
    sub r6, r5, #65280
    sub r6, r6, #255
    mov r5, r7
.Lsec01_000014d8:
    add r7, sp, #4
    add r1, r4, #312
    mov r0, r7
.Lsec01_000014e4:
    bl strcpy
    mov r1, r5
    mov r0, r4
.Lsec01_000014f0:
    bl png_malloc
    mov r2, r5
    mov r3, r0
    mov r1, r0
    mov r0, r4
    str r3, [sp, #12]
    str r5, [sp, #16]
.Lsec01_0000150c:
    bl png_crc_read
    ldr r3, [r4, #568]
    cmp r3, #0
    beq .Lsec01_0000157c
    mov r1, r7
    mov r0, r4
    mov lr, pc
    bx r3
    cmp r0, #0
    bgt .Lsec01_00001590
    ldrb r3, [r4, #312]
    tst r3, #32
    bne .Lsec01_0000156c
    mov r1, r8
    mov r0, r4
.Lsec01_00001548:
    bl png_handle_as_unknown
    cmp r0, #3
    beq .Lsec01_0000156c
    ldr r1, [sp, #12]
    mov r0, r4
.Lsec01_0000155c:
    bl png_free
    mov r0, r4
    ldr r1, [pc, #76]
.Lsec01_00001568:
    bl png_chunk_error
.Lsec01_0000156c:
    mov r1, sl
    mov r0, r4
    add r2, sp, #4
    b .Lsec01_00001588
.Lsec01_0000157c:
    mov r1, sl
    mov r2, r7
    mov r0, r4
.Lsec01_00001588:
    mov r3, #1
.Lsec01_0000158c:
    bl png_set_unknown_chunks
.Lsec01_00001590:
    mov r0, r4
    ldr r1, [sp, #12]
.Lsec01_00001598:
    bl png_free
.Lsec01_0000159c:
    mov r0, r4
    mov r1, r6
.Lsec01_000015a4:
    bl png_crc_finish
    add sp, sp, #28
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long png_IDAT
    .long .Lsec05_00000284
    .long 0x0000ffff
    .long .Lsec05_0000029c
.arm
png_handle_zTXt:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    sub sp, sp, #20
    mov r6, r0
    mov sl, r1
    mov r7, r2
    ldreq r1, [pc, #404]
.Lsec01_000015e4:
    bleq png_error
    ldr r3, [r6, #132]
    tst r3, #4
    orrne r3, r3, #8
    strne r3, [r6, #132]
    cmp r7, #65536
    bcc .Lsec01_0000161c
    mov r0, r6
    ldr r1, [pc, #372]
.Lsec01_00001608:
    bl png_warning
    mov r0, r6
    mov r1, r7
.Lsec01_00001614:
    bl png_crc_finish
    b .Lsec01_00001770
.Lsec01_0000161c:
    mov r0, r6
    add r1, r7, #1
.Lsec01_00001624:
    bl png_malloc_warn
    subs r5, r0, #0
    bne .Lsec01_00001640
    mov r0, r6
    ldr r1, [pc, #328]
.Lsec01_00001638:
    bl png_warning
    b .Lsec01_00001770
.Lsec01_00001640:
    mov r1, r5
    mov r2, r7
    mov r0, r6
.Lsec01_0000164c:
    bl png_crc_read
    mov r1, #0
    mov r0, r6
.Lsec01_00001658:
    bl png_crc_finish
    cmp r0, #0
    movne r0, r6
    movne r1, r5
    addeq r3, r5, r7
    moveq r4, r5
    streqb r0, [r5, r7]
    beq .Lsec01_00001680
    b .Lsec01_00001710
.Lsec01_0000167c:
    add r4, r4, #1
.Lsec01_00001680:
    ldrb r8, [r4]
    cmp r8, #0
    bne .Lsec01_0000167c
    cmp r4, r3
    bne .Lsec01_000016a8
    mov r0, r6
    ldr r1, [pc, #232]
.Lsec01_0000169c:
    bl png_warning
    mvn r8, #0
    b .Lsec01_000016c4
.Lsec01_000016a8:
    ldrb r3, [r4, #1]
    cmp r3, #0
    add r4, r4, #1
    movne r0, r6
    ldrne r1, [pc, #204]
.Lsec01_000016bc:
    blne png_warning
    add r4, r4, #1
.Lsec01_000016c4:
    mov r2, r5
    mov r3, r7
    add ip, sp, #12
    rsb r4, r5, r4
    mov r1, r8
    mov r0, r6
    stmia sp, {r4, ip}
.Lsec01_000016e0:
    bl png_decompress_chunk
    mov r1, #16
    mov r7, r0
    mov r0, r6
.Lsec01_000016f0:
    bl png_malloc_warn
    subs r5, r0, #0
    bne .Lsec01_00001718
    mov r0, r6
    ldr r1, [pc, #136]
.Lsec01_00001704:
    bl png_warning
    mov r0, r6
    mov r1, r7
.Lsec01_00001710:
    bl png_free
    b .Lsec01_00001770
.Lsec01_00001718:
    add r3, r7, r4
    str r8, [r5]
    str r3, [r5, #8]
    ldr r3, [sp, #12]
    mov r2, r5
    str r3, [r5, #12]
    mov r1, sl
    mov r3, #1
    str r7, [r5, #4]
    mov r0, r6
.Lsec01_00001740:
    bl png_set_text_2
    mov r1, r5
    mov r4, r0
    mov r0, r6
.Lsec01_00001750:
    bl png_free
    mov r0, r6
    mov r1, r7
.Lsec01_0000175c:
    bl png_free
    cmp r4, #0
    movne r0, r6
    ldrne r1, [pc, #36]
.Lsec01_0000176c:
    blne png_error
.Lsec01_00001770:
    add sp, sp, #20
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long .Lsec05_000002c8
    .long .Lsec05_000002e4
    .long .Lsec05_0000030c
    .long .Lsec05_00000334
    .long .Lsec05_0000034c
    .long .Lsec05_00000374
    .long .Lsec05_000003a0
.arm
png_handle_tEXt:
    ldr r3, [r0, #132]
    tst r3, #1
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    mov r5, r0
    mov r8, r1
    mov r6, r2
    ldreq r1, [pc, #312]
.Lsec01_000017b4:
    bleq png_error
    ldr r3, [r5, #132]
    ldr r7, [pc, #304]
    tst r3, #4
    orrne r3, r3, #8
    strne r3, [r5, #132]
    cmp r6, r7
    movls r4, #0
    bls .Lsec01_000017f0
    mov r0, r5
    ldr r1, [pc, #276]
.Lsec01_000017e0:
    bl png_warning
    sub r4, r6, #65280
    sub r4, r4, #255
    mov r6, r7
.Lsec01_000017f0:
    add r1, r6, #1
    mov r0, r5
.Lsec01_000017f8:
    bl png_malloc_warn
    subs r7, r0, #0
    moveq r0, r5
    ldreq r1, [pc, #240]
    beq .Lsec01_000018e4
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_00001818:
    bl png_crc_read
    mov r1, r4
    mov r0, r5
.Lsec01_00001824:
    bl png_crc_finish
    cmp r0, #0
    addeq r2, r7, r6
    moveq r4, r7
    streqb r0, [r7, r6]
    beq .Lsec01_00001844
    b .Lsec01_00001878
.Lsec01_00001840:
    add r4, r4, #1
.Lsec01_00001844:
    ldrb r3, [r4]
    cmp r3, #0
    bne .Lsec01_00001840
    cmp r4, r2
    mov r0, r5
    mov r1, #16
    addne r4, r4, #1
.Lsec01_00001860:
    bl png_malloc_warn
    subs r6, r0, #0
    bne .Lsec01_00001888
    mov r0, r5
    ldr r1, [pc, #136]
.Lsec01_00001874:
    bl png_warning
.Lsec01_00001878:
    mov r0, r5
    mov r1, r7
.Lsec01_00001880:
    bl png_free
    b .Lsec01_000018e8
.Lsec01_00001888:
    mvn r3, #0
    str r3, [r6]
    str r4, [r6, #8]
    mov r0, r4
    str r7, [r6, #4]
.Lsec01_0000189c:
    bl strlen
    mov r2, r6
    mov r3, #1
    str r0, [r6, #12]
    mov r1, r8
    mov r0, r5
.Lsec01_000018b4:
    bl png_set_text_2
    mov r1, r7
    mov r4, r0
    mov r0, r5
.Lsec01_000018c4:
    bl png_free
    mov r0, r5
    mov r1, r6
.Lsec01_000018d0:
    bl png_free
    cmp r4, #0
    beq .Lsec01_000018e8
    ldr r1, [pc, #32]
    mov r0, r5
.Lsec01_000018e4:
    bl png_warning
.Lsec01_000018e8:
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long .Lsec05_000003cc
    .long 0x0000ffff
    .long .Lsec05_000003e8
    .long .Lsec05_00000410
    .long .Lsec05_00000434
    .long .Lsec05_00000460
.arm
png_handle_sCAL:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    sub sp, sp, #36
    mov r5, r0
    mov r9, r1
    mov r4, r2
    bne .Lsec01_00001934
    ldr r1, [pc, #392]
.Lsec01_0000192c:
    bl png_error
    b .Lsec01_0000196c
.Lsec01_00001934:
    tst r3, #4
    ldrne r1, [pc, #380]
    bne .Lsec01_00001958
    cmp r9, #0
    beq .Lsec01_0000196c
    ldr r3, [r9, #8]
    tst r3, #16384
    beq .Lsec01_0000196c
    ldr r1, [pc, #356]
.Lsec01_00001958:
    bl png_warning
    mov r0, r5
    mov r1, r4
.Lsec01_00001964:
    bl png_crc_finish
    b .Lsec01_00001aac
.Lsec01_0000196c:
    add r1, r4, #1
    mov r0, r5
.Lsec01_00001974:
    bl png_malloc_warn
    subs r6, r0, #0
    moveq r0, r5
    ldreq r1, [pc, #316]
    beq .Lsec01_00001a28
    mov r1, r6
    mov r2, r4
    mov r0, r5
.Lsec01_00001994:
    bl png_crc_read
    mov r0, r5
    mov r1, #0
.Lsec01_000019a0:
    bl png_crc_finish
    cmp r0, #0
    bne .Lsec01_00001aa0
    strb r0, [r6, r4]
    add r1, sp, #28
    add r0, r6, #1
.Lsec01_000019b8:
    bl strtod
    ldr r3, [sp, #28]
    ldrb r3, [r3]
    add r4, r6, r4
    cmp r3, #0
    mov sl, r0
    mov fp, r1
    str r4, [sp, #20]
    moveq r0, r6
    movne r0, r5
    ldrne r1, [pc, #224]
    bne .Lsec01_00001a28
    b .Lsec01_000019f0
.Lsec01_000019ec:
    mov r0, r4
.Lsec01_000019f0:
    ldrb r3, [r0], #1
    cmp r3, #0
    mov r4, r0
    bne .Lsec01_000019ec
    add r1, sp, #28
.Lsec01_00001a04:
    bl strtod
    ldr r3, [sp, #28]
    ldrb r3, [r3]
    cmp r3, #0
    mov r7, r0
    mov r8, r1
    beq .Lsec01_00001a30
    ldr r1, [pc, #164]
    mov r0, r5
.Lsec01_00001a28:
    bl png_warning
    b .Lsec01_00001aac
.Lsec01_00001a30:
    ldr r3, [sp, #20]
    cmp r3, r4
    bcc .Lsec01_00001a74
    mov r0, sl
    mov r1, fp
    mov r2, #0
    mov r3, #0
.Lsec01_00001a4c:
    bl __aeabi_dcmple
    cmp r0, #0
    bne .Lsec01_00001a74
    mov r0, r7
    mov r1, r8
    mov r2, #0
    mov r3, #0
.Lsec01_00001a68:
    bl __aeabi_dcmple
    cmp r0, #0
    beq .Lsec01_00001a84
.Lsec01_00001a74:
    mov r0, r5
    ldr r1, [pc, #80]
.Lsec01_00001a7c:
    bl png_warning
    b .Lsec01_00001aa0
.Lsec01_00001a84:
    ldrb r2, [r6]
    mov r1, r9
    mov r0, r5
    stmia sp, {sl, fp}
    str r7, [sp, #8]
    str r8, [sp, #12]
.Lsec01_00001a9c:
    bl png_set_sCAL
.Lsec01_00001aa0:
    mov r0, r5
    mov r1, r6
.Lsec01_00001aa8:
    bl png_free
.Lsec01_00001aac:
    add sp, sp, #36
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_0000048c
    .long .Lsec05_000004a8
    .long .Lsec05_000004c0
    .long .Lsec05_000004d8
    .long .Lsec05_00000504
    .long .Lsec05_0000052c
    .long .Lsec05_00000554
.arm
png_handle_pCAL:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr r3, [r0, #132]
    sub sp, sp, #44
    tst r3, #1
    mov r5, r0
    str r1, [sp, #24]
    mov r6, r2
    bne .Lsec01_00001b00
    ldr r1, [pc, #604]
.Lsec01_00001af8:
    bl png_error
    b .Lsec01_00001b40
.Lsec01_00001b00:
    tst r3, #4
    ldrne r1, [pc, #592]
    bne .Lsec01_00001b28
    ldr r2, [sp, #24]
    cmp r2, #0
    beq .Lsec01_00001b40
    ldr r3, [r2, #8]
    tst r3, #1024
    beq .Lsec01_00001b40
    ldr r1, [pc, #564]
.Lsec01_00001b28:
    bl png_warning
    mov r0, r5
    mov r1, r6
    add sp, sp, #44
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.Lsec01_00001b3c:
    b png_crc_finish
.Lsec01_00001b40:
    add r1, r6, #1
    mov r0, r5
.Lsec01_00001b48:
    bl png_malloc_warn
    subs r7, r0, #0
    moveq r0, r5
    ldreq r1, [pc, #520]
    beq .Lsec01_00001cac
    mov r1, r7
    mov r2, r6
    mov r0, r5
.Lsec01_00001b68:
    bl png_crc_read
    mov r0, r5
    mov r1, #0
.Lsec01_00001b74:
    bl png_crc_finish
    cmp r0, #0
    addeq fp, r7, r6
    moveq r4, r7
    streqb r0, [r7, r6]
    beq .Lsec01_00001b94
    b .Lsec01_00001c44
.Lsec01_00001b90:
    add r4, r4, #1
.Lsec01_00001b94:
    ldrb r3, [r4]
    cmp r3, #0
    bne .Lsec01_00001b90
    add r3, r4, #12
    cmp fp, r3
    movls r0, r5
    ldrls r1, [pc, #436]
    bls .Lsec01_00001c40
    add r0, r4, #1
.Lsec01_00001bb8:
    bl png_get_int_32
    str r0, [sp, #28]
    add r0, r4, #5
.Lsec01_00001bc4:
    bl png_get_int_32
    str r0, [sp, #32]
    ldrb sl, [r4, #9]
    ldrb r8, [r4, #10]
    rsbs r3, sl, #1
    movcc r3, #0
    cmp r8, #2
    moveq r3, #0
    cmp r3, #0
    bne .Lsec01_00001c38
    subs r2, r8, #3
    movne r2, #1
    cmp sl, #1
    movne r3, #0
    andeq r3, r2, #1
    cmp r3, #0
    bne .Lsec01_00001c38
    cmp sl, #2
    movne r3, #0
    andeq r3, r2, #1
    cmp r3, #0
    bne .Lsec01_00001c38
    cmp sl, #3
    movne r3, #0
    moveq r3, #1
    cmp r8, #4
    moveq r3, #0
    cmp r3, #0
    beq .Lsec01_00001c50
.Lsec01_00001c38:
    ldr r1, [pc, #300]
    mov r0, r5
.Lsec01_00001c40:
    bl png_warning
.Lsec01_00001c44:
    mov r0, r5
    mov r1, r7
    b .Lsec01_00001d48
.Lsec01_00001c50:
    cmp sl, #3
    movhi r0, r5
    ldrhi r1, [pc, #272]
.Lsec01_00001c5c:
    blhi png_warning
    mov r3, r4
    add r4, r4, #11
    str r4, [sp, #36]
.Lsec01_00001c6c:
    ldrb r6, [r3, #11]
    cmp r6, #0
    add r3, r3, #1
    bne .Lsec01_00001c6c
    mov r0, r5
    mov r1, r8, lsl #2
    add r4, r3, #10
.Lsec01_00001c88:
    bl png_malloc_warn
    subs r9, r0, #0
    movne r2, r6
    bne .Lsec01_00001cfc
    mov r1, r7
    mov r0, r5
.Lsec01_00001ca0:
    bl png_free
    ldr r1, [pc, #200]
    mov r0, r5
.Lsec01_00001cac:
    bl png_warning
    b .Lsec01_00001d4c
.Lsec01_00001cb4:
    mov r0, r5
    ldr r1, [pc, #168]
.Lsec01_00001cbc:
    bl png_warning
    b .Lsec01_00001d34
.Lsec01_00001cc4:
    add r4, r4, #1
    str r4, [r9, r2, lsl #2]
    b .Lsec01_00001cd4
.Lsec01_00001cd0:
    add r4, r4, #1
.Lsec01_00001cd4:
    ldrb r3, [r4]
    subs r3, r3, #0
    movne r3, #1
    cmp r4, fp
    movhi r3, #0
    cmp r3, #0
    bne .Lsec01_00001cd0
    cmp r4, fp
    bhi .Lsec01_00001cb4
    add r2, r2, #1
.Lsec01_00001cfc:
    cmp r2, r8
    blt .Lsec01_00001cc4
    ldr ip, [sp, #32]
    str ip, [sp]
    ldr ip, [sp, #36]
    add r1, sp, #24
    ldmia r1, {r1, r3}
    mov r2, r7
    mov r0, r5
    str sl, [sp, #4]
    str r8, [sp, #8]
    str ip, [sp, #12]
    str r9, [sp, #16]
.Lsec01_00001d30:
    bl png_set_pCAL
.Lsec01_00001d34:
    mov r0, r5
    mov r1, r7
.Lsec01_00001d3c:
    bl png_free
    mov r0, r5
    mov r1, r9
.Lsec01_00001d48:
    bl png_free
.Lsec01_00001d4c:
    add sp, sp, #44
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_00000568
    .long .Lsec05_00000584
    .long .Lsec05_0000059c
    .long .Lsec05_000005b4
    .long .Lsec05_000005d0
    .long .Lsec05_000005e4
    .long .Lsec05_00000610
    .long .Lsec05_0000063c
.arm
png_handle_oFFs:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    sub sp, sp, #28
    mov r5, r0
    mov r7, r1
    mov r4, r2
    bne .Lsec01_00001da4
    ldr r1, [pc, #176]
.Lsec01_00001d9c:
    bl png_error
    b .Lsec01_00001ddc
.Lsec01_00001da4:
    tst r3, #4
    ldrne r1, [pc, #164]
    bne .Lsec01_00001dc8
    cmp r7, #0
    beq .Lsec01_00001ddc
    ldr r3, [r7, #8]
    tst r3, #256
    beq .Lsec01_00001ddc
    ldr r1, [pc, #140]
.Lsec01_00001dc8:
    bl png_warning
    mov r0, r5
    mov r1, r4
.Lsec01_00001dd4:
    bl png_crc_finish
    b .Lsec01_00001e44
.Lsec01_00001ddc:
    cmp r4, #9
    movne r0, r5
    ldrne r1, [pc, #112]
    bne .Lsec01_00001dc8
    add r6, sp, #15
    mov r2, r4
    mov r1, r6
    mov r0, r5
.Lsec01_00001dfc:
    bl png_crc_read
    mov r0, r5
    mov r1, #0
.Lsec01_00001e08:
    bl png_crc_finish
    cmp r0, #0
    bne .Lsec01_00001e44
    mov r0, r6
.Lsec01_00001e18:
    bl png_get_int_32
    mov r4, r0
    add r0, r6, #4
.Lsec01_00001e24:
    bl png_get_int_32
    ldrb ip, [sp, #23]
    mov r3, r0
    mov r1, r7
    mov r0, r5
    mov r2, r4
    str ip, [sp]
.Lsec01_00001e40:
    bl png_set_oFFs
.Lsec01_00001e44:
    add sp, sp, #28
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000658
    .long .Lsec05_00000674
    .long .Lsec05_0000068c
    .long .Lsec05_000006a4
.arm
png_handle_pHYs:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    sub sp, sp, #28
    mov r5, r0
    mov r7, r1
    mov r4, r2
    bne .Lsec01_00001e8c
    ldr r1, [pc, #176]
.Lsec01_00001e84:
    bl png_error
    b .Lsec01_00001ec4
.Lsec01_00001e8c:
    tst r3, #4
    ldrne r1, [pc, #164]
    bne .Lsec01_00001eb0
    cmp r7, #0
    beq .Lsec01_00001ec4
    ldr r3, [r7, #8]
    tst r3, #128
    beq .Lsec01_00001ec4
    ldr r1, [pc, #140]
.Lsec01_00001eb0:
    bl png_warning
    mov r0, r5
    mov r1, r4
.Lsec01_00001ebc:
    bl png_crc_finish
    b .Lsec01_00001f2c
.Lsec01_00001ec4:
    cmp r4, #9
    movne r0, r5
    ldrne r1, [pc, #112]
    bne .Lsec01_00001eb0
    add r6, sp, #15
    mov r2, r4
    mov r1, r6
    mov r0, r5
.Lsec01_00001ee4:
    bl png_crc_read
    mov r0, r5
    mov r1, #0
.Lsec01_00001ef0:
    bl png_crc_finish
    cmp r0, #0
    bne .Lsec01_00001f2c
    mov r0, r6
.Lsec01_00001f00:
    bl png_get_uint_32
    mov r4, r0
    add r0, r6, #4
.Lsec01_00001f0c:
    bl png_get_uint_32
    ldrb ip, [sp, #23]
    mov r3, r0
    mov r1, r7
    mov r0, r5
    mov r2, r4
    str ip, [sp]
.Lsec01_00001f28:
    bl png_set_pHYs
.Lsec01_00001f2c:
    add sp, sp, #28
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_000006c0
    .long .Lsec05_000006dc
    .long .Lsec05_000006f4
    .long .Lsec05_0000070c
.arm
png_handle_iCCP:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    sub sp, sp, #20
    mov r6, r0
    mov sl, r1
    mov r7, r2
    bne .Lsec01_00001f74
    ldr r1, [pc, #484]
.Lsec01_00001f6c:
    bl png_error
    b .Lsec01_00001f8c
.Lsec01_00001f74:
    tst r3, #4
    ldrne r1, [pc, #472]
    bne .Lsec01_00001fa8
    tst r3, #2
    ldrne r1, [pc, #464]
.Lsec01_00001f88:
    blne png_warning
.Lsec01_00001f8c:
    cmp sl, #0
    beq .Lsec01_00001fbc
    ldr r3, [sl, #8]
    tst r3, #4096
    beq .Lsec01_00001fbc
    ldr r1, [pc, #440]
    mov r0, r6
.Lsec01_00001fa8:
    bl png_warning
    mov r0, r6
    mov r1, r7
.Lsec01_00001fb4:
    bl png_crc_finish
    b .Lsec01_00002148
.Lsec01_00001fbc:
    ldr r5, [pc, #416]
    cmp r7, r5
    movls r4, #0
    bls .Lsec01_00001fe4
    mov r0, r6
    ldr r1, [pc, #400]
.Lsec01_00001fd4:
    bl png_warning
    sub r4, r7, #65280
    sub r4, r4, #255
    mov r7, r5
.Lsec01_00001fe4:
    add r1, r7, #1
    mov r0, r6
.Lsec01_00001fec:
    bl png_malloc
    mov r5, r0
    mov r2, r7
    mov r0, r6
    mov r1, r5
.Lsec01_00002000:
    bl png_crc_read
    mov r0, r6
    mov r1, r4
.Lsec01_0000200c:
    bl png_crc_finish
    cmp r0, #0
    addeq r2, r5, r7
    moveq r3, r5
    streqb r0, [r5, r7]
    beq .Lsec01_0000202c
    b .Lsec01_0000213c
.Lsec01_00002028:
    mov r3, r4
.Lsec01_0000202c:
    mov r4, r3
    ldrb r8, [r4], #1
    cmp r8, #0
    bne .Lsec01_00002028
    cmp r4, r2
    bcc .Lsec01_0000205c
    mov r1, r5
    mov r0, r6
.Lsec01_0000204c:
    bl png_free
    ldr r1, [pc, #276]
    mov r0, r6
    b .Lsec01_0000211c
.Lsec01_0000205c:
    ldrb r3, [r3, #1]
    cmp r3, #0
    movne r0, r6
    ldrne r1, [pc, #256]
.Lsec01_0000206c:
    blne png_warning
    add r3, r4, #1
    rsb r4, r5, r3
    mov r2, r5
    mov r3, r7
    add ip, sp, #12
    mov r1, r8
    mov r0, r6
    stmia sp, {r4, ip}
.Lsec01_00002090:
    bl png_decompress_chunk
    ldr r2, [sp, #12]
    rsb lr, r4, r2
    cmp lr, #3
    movhi r3, #0
    movls r3, #1
    cmp r4, r2
    orrhi r3, r3, #1
    cmp r3, #0
    mov r5, r0
    beq .Lsec01_000020d4
    mov r1, r0
    mov r0, r6
.Lsec01_000020c4:
    bl png_free
    ldr r1, [pc, #164]
    mov r0, r6
    b .Lsec01_0000211c
.Lsec01_000020d4:
    add ip, r0, r4
    ldrb r3, [ip, #1]
    ldrb r2, [r0, r4]
    mov r3, r3, lsl #16
    ldrb r1, [ip, #3]
    orr r3, r3, r2, lsl #24
    ldrb r2, [ip, #2]
    orr r3, r3, r1
    orr r3, r3, r2, lsl #8
    cmp r3, lr
    movcc lr, r3
    bcc .Lsec01_00002124
    bls .Lsec01_00002124
    mov r1, r0
    mov r0, r6
.Lsec01_00002110:
    bl png_free
    ldr r1, [pc, #92]
    mov r0, r6
.Lsec01_0000211c:
    bl png_warning
    b .Lsec01_00002148
.Lsec01_00002124:
    mov r1, sl
    mov r0, r6
    mov r2, r5
    mov r3, #0
    stmia sp, {ip, lr}
.Lsec01_00002138:
    bl png_set_iCCP
.Lsec01_0000213c:
    mov r0, r6
    mov r1, r5
.Lsec01_00002144:
    bl png_free
.Lsec01_00002148:
    add sp, sp, #20
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long .Lsec05_00000728
    .long .Lsec05_00000744
    .long .Lsec05_0000075c
    .long .Lsec05_00000774
    .long 0x0000ffff
    .long .Lsec05_0000078c
    .long .Lsec05_000007b4
    .long .Lsec05_000007cc
    .long .Lsec05_000007fc
    .long .Lsec05_00000828
.arm
png_handle_sRGB:
    stmdb sp!, {r4, r5, r6, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    sub sp, sp, #8
    mov r5, r0
    mov r4, r1
    mov r6, r2
    bne .Lsec01_000021a8
    ldr r1, [pc, #432]
.Lsec01_000021a0:
    bl png_error
    b .Lsec01_000021c0
.Lsec01_000021a8:
    tst r3, #4
    ldrne r1, [pc, #420]
    bne .Lsec01_000021dc
    tst r3, #2
    ldrne r1, [pc, #412]
.Lsec01_000021bc:
    blne png_warning
.Lsec01_000021c0:
    cmp r4, #0
    beq .Lsec01_000021f0
    ldr r3, [r4, #8]
    tst r3, #2048
    beq .Lsec01_000021f0
    ldr r1, [pc, #388]
    mov r0, r5
.Lsec01_000021dc:
    bl png_warning
    mov r0, r5
    mov r1, r6
.Lsec01_000021e8:
    bl png_crc_finish
    b .Lsec01_00002348
.Lsec01_000021f0:
    cmp r6, #1
    movne r0, r5
    ldrne r1, [pc, #356]
    bne .Lsec01_000021dc
    mov r2, r6
    add r1, sp, #7
    mov r0, r5
.Lsec01_0000220c:
    bl png_crc_read
    mov r0, r5
    mov r1, #0
.Lsec01_00002218:
    bl png_crc_finish
    cmp r0, #0
    bne .Lsec01_00002348
    ldrb r6, [sp, #7]
    cmp r6, #3
    ble .Lsec01_00002240
    mov r0, r5
    ldr r1, [pc, #300]
.Lsec01_00002238:
    bl png_warning
    b .Lsec01_00002348
.Lsec01_00002240:
    ldr r3, [r4, #8]
    tst r3, #1
    beq .Lsec01_00002284
    ldr r3, [r4, #252]
    sub r3, r3, #44800
    sub r3, r3, #200
    cmp r3, #1000
    bls .Lsec01_00002284
    mov r0, r5
    ldr r1, [pc, #256]
.Lsec01_00002268:
    bl png_warning
    ldr r3, [pc, #252]
    ldr r3, [r3]
    ldr r1, [pc, #248]
    ldr r0, [r3, #12]
    ldr r2, [r5, #592]
.Lsec01_00002280:
    bl fprintf
.Lsec01_00002284:
    ldr r3, [r4, #8]
    tst r3, #4
    beq .Lsec01_00002338
    ldr r3, [r4, #256]
    sub r3, r3, #30208
    sub r3, r3, #62
    cmp r3, #2000
    bhi .Lsec01_0000232c
    ldr r3, [r4, #260]
    sub r3, r3, #31744
    sub r3, r3, #156
    cmp r3, #2000
    bhi .Lsec01_0000232c
    ldr r3, [r4, #264]
    sub r3, r3, #62976
    sub r3, r3, #24
    cmp r3, #2000
    bhi .Lsec01_0000232c
    ldr r3, [r4, #268]
    sub r3, r3, #32000
    cmp r3, #2000
    bhi .Lsec01_0000232c
    ldr r3, [r4, #272]
    sub r3, r3, #28928
    sub r3, r3, #72
    cmp r3, #2000
    bhi .Lsec01_0000232c
    ldr r3, [r4, #276]
    sub r3, r3, #58880
    sub r3, r3, #120
    cmp r3, #2000
    bhi .Lsec01_0000232c
    ldr r3, [r4, #280]
    sub r3, r3, #13952
    sub r3, r3, #48
    cmp r3, #2000
    bhi .Lsec01_0000232c
    ldr r3, [r4, #284]
    sub r3, r3, #4992
    sub r3, r3, #8
    cmp r3, #2000
    bls .Lsec01_00002338
.Lsec01_0000232c:
    mov r0, r5
    ldr r1, [pc, #64]
.Lsec01_00002334:
    bl png_warning
.Lsec01_00002338:
    mov r0, r5
    mov r1, r4
    mov r2, r6
.Lsec01_00002344:
    bl png_set_sRGB_gAMA_and_cHRM
.Lsec01_00002348:
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_0000084c
    .long .Lsec05_00000868
    .long .Lsec05_00000880
    .long .Lsec05_00000898
    .long .Lsec05_000008b0
    .long .Lsec05_000008cc
    .long .Lsec05_000008e0
    .long _impure_ptr
    .long .Lsec05_00000918
    .long .Lsec05_00000938
.arm
png_handle_cHRM:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr r3, [r0, #132]
    sub sp, sp, #124
    tst r3, #1
    mov r7, r0
    str r1, [sp, #64]
    mov r4, r2
    bne .Lsec01_000023a8
    ldr r1, [pc, #1280]
.Lsec01_000023a0:
    bl png_error
    b .Lsec01_000023c0
.Lsec01_000023a8:
    tst r3, #4
    ldrne r1, [pc, #1268]
    bne .Lsec01_000023f8
    tst r3, #2
    ldrne r1, [pc, #1260]
.Lsec01_000023bc:
    blne png_warning
.Lsec01_000023c0:
    ldr r1, [sp, #64]
    cmp r1, #0
    beq .Lsec01_000023e8
    ldr r2, [r1, #8]
    ldr r3, [pc, #1240]
    and r3, r2, r3
    cmp r3, #4
    moveq r0, r7
    ldreq r1, [pc, #1228]
    beq .Lsec01_000023f8
.Lsec01_000023e8:
    cmp r4, #32
    beq .Lsec01_00002408
    ldr r1, [pc, #1216]
    mov r0, r7
.Lsec01_000023f8:
    bl png_warning
    mov r0, r7
    mov r1, r4
    b .Lsec01_00002894
.Lsec01_00002408:
    add r4, sp, #116
    mov r2, #4
    mov r1, r4
    mov r0, r7
.Lsec01_00002418:
    bl png_crc_read
    mov r0, r4
.Lsec01_00002420:
    bl png_get_uint_32
    mov r2, #4
    str r0, [sp, #96]
    mov r1, r4
    mov r0, r7
.Lsec01_00002434:
    bl png_crc_read
    mov r0, r4
.Lsec01_0000243c:
    bl png_get_uint_32
    ldr r6, [pc, #1140]
    ldr r2, [sp, #96]
    cmp r0, r6
    cmpls r2, r6
    str r0, [sp, #100]
    bhi .Lsec01_00002468
    ldr r5, [pc, #1120]
    add r3, r2, r0
    cmp r3, r5
    bls .Lsec01_00002480
.Lsec01_00002468:
    mov r0, r7
    ldr r1, [pc, #1104]
.Lsec01_00002470:
    bl png_warning
    mov r0, r7
    mov r1, #24
    b .Lsec01_00002894
.Lsec01_00002480:
    mov r2, #4
    mov r1, r4
    mov r0, r7
.Lsec01_0000248c:
    bl png_crc_read
    mov r0, r4
.Lsec01_00002494:
    bl png_get_uint_32
    mov r1, r4
    str r0, [sp, #108]
    mov r2, #4
    mov r0, r7
.Lsec01_000024a8:
    bl png_crc_read
    mov r0, r4
.Lsec01_000024b0:
    bl png_get_uint_32
    ldr r3, [sp, #108]
    cmp r0, r6
    cmpls r3, r6
    str r0, [sp, #104]
    bhi .Lsec01_000024d4
    add r3, r3, r0
    cmp r3, r5
    bls .Lsec01_000024ec
.Lsec01_000024d4:
    mov r0, r7
    ldr r1, [pc, #1000]
.Lsec01_000024dc:
    bl png_warning
    mov r0, r7
    mov r1, #16
    b .Lsec01_00002894
.Lsec01_000024ec:
    mov r2, #4
    mov r1, r4
    mov r0, r7
.Lsec01_000024f8:
    bl png_crc_read
    mov r0, r4
.Lsec01_00002500:
    bl png_get_uint_32
    mov r1, r4
    mov sl, r0
    mov r2, #4
    mov r0, r7
.Lsec01_00002514:
    bl png_crc_read
    mov r0, r4
.Lsec01_0000251c:
    bl png_get_uint_32
    cmp r0, r6
    cmpls sl, r6
    movls ip, #0
    movhi ip, #1
    mov r8, r0
    str ip, [sp, #60]
    bhi .Lsec01_00002548
    add r3, sl, r0
    cmp r3, r5
    bls .Lsec01_00002560
.Lsec01_00002548:
    mov r0, r7
    ldr r1, [pc, #888]
.Lsec01_00002550:
    bl png_warning
    mov r0, r7
    mov r1, #8
    b .Lsec01_00002894
.Lsec01_00002560:
    mov r2, #4
    mov r1, r4
    mov r0, r7
.Lsec01_0000256c:
    bl png_crc_read
    mov r0, r4
.Lsec01_00002574:
    bl png_get_uint_32
    mov r1, r4
    mov fp, r0
    mov r2, #4
    mov r0, r7
.Lsec01_00002588:
    bl png_crc_read
    mov r0, r4
.Lsec01_00002590:
    bl png_get_uint_32
    cmp r0, r6
    cmpls fp, r6
    mov r9, r0
    bhi .Lsec01_000025b0
    add r3, fp, r0
    cmp r3, r5
    bls .Lsec01_000025c8
.Lsec01_000025b0:
    mov r0, r7
    ldr r1, [pc, #788]
.Lsec01_000025b8:
    bl png_warning
    ldr r1, [sp, #60]
    mov r0, r7
    b .Lsec01_00002894
.Lsec01_000025c8:
    ldr r0, [sp, #96]
.Lsec01_000025cc:
    bl __aeabi_i2f
    ldr r1, [pc, #764]
.Lsec01_000025d4:
    bl __aeabi_fdiv
    mov r4, r0
    ldr r0, [sp, #100]
.Lsec01_000025e0:
    bl __aeabi_i2f
    ldr r1, [pc, #744]
.Lsec01_000025e8:
    bl __aeabi_fdiv
    str r0, [sp, #68]
    ldr r0, [sp, #108]
.Lsec01_000025f4:
    bl __aeabi_i2f
    ldr r1, [pc, #724]
.Lsec01_000025fc:
    bl __aeabi_fdiv
    str r0, [sp, #72]
    ldr r0, [sp, #104]
.Lsec01_00002608:
    bl __aeabi_i2f
    ldr r1, [pc, #704]
.Lsec01_00002610:
    bl __aeabi_fdiv
    str r0, [sp, #76]
    mov r0, sl
.Lsec01_0000261c:
    bl __aeabi_i2f
    ldr r1, [pc, #684]
.Lsec01_00002624:
    bl __aeabi_fdiv
    str r0, [sp, #80]
    mov r0, r8
.Lsec01_00002630:
    bl __aeabi_i2f
    ldr r1, [pc, #664]
.Lsec01_00002638:
    bl __aeabi_fdiv
    str r0, [sp, #84]
    mov r0, fp
.Lsec01_00002644:
    bl __aeabi_i2f
    ldr r1, [pc, #644]
.Lsec01_0000264c:
    bl __aeabi_fdiv
    str r0, [sp, #88]
    mov r0, r9
.Lsec01_00002658:
    bl __aeabi_i2f
    ldr r1, [pc, #624]
.Lsec01_00002660:
    bl __aeabi_fdiv
    ldr r1, [sp, #64]
    ldr r3, [r1, #8]
    ands r6, r3, #2048
    str r0, [sp, #92]
    beq .Lsec01_000027c8
    ldr r2, [sp, #96]
    sub r3, r2, #30208
    sub r3, r3, #62
    cmp r3, #2000
    bhi .Lsec01_00002704
    ldr ip, [sp, #100]
    sub r3, ip, #31744
    sub r3, r3, #156
    cmp r3, #2000
    bhi .Lsec01_00002704
    ldr r1, [sp, #108]
    sub r3, r1, #62976
    sub r3, r3, #24
    cmp r3, #2000
    bhi .Lsec01_00002704
    ldr r2, [sp, #104]
    sub r3, r2, #32000
    cmp r3, #2000
    bhi .Lsec01_00002704
    sub r3, sl, #28928
    sub r3, r3, #72
    cmp r3, #2000
    bhi .Lsec01_00002704
    sub r3, r8, #58880
    sub r3, r3, #120
    cmp r3, #2000
    bhi .Lsec01_00002704
    sub r3, fp, #13952
    sub r3, r3, #48
    cmp r3, #2000
    bhi .Lsec01_00002704
    sub r3, r9, #4992
    sub r3, r3, #8
    cmp r3, #2000
    bls .Lsec01_000027bc
.Lsec01_00002704:
    mov r0, r7
    ldr r1, [pc, #456]
.Lsec01_0000270c:
    bl png_warning
    mov r0, r4
.Lsec01_00002714:
    bl __aeabi_f2d
    mov r4, r0
    ldr r0, [sp, #68]
    mov r5, r1
.Lsec01_00002724:
    bl __aeabi_f2d
    stmia sp, {r0, r1}
    ldr r0, [sp, #72]
.Lsec01_00002730:
    bl __aeabi_f2d
    str r0, [sp, #8]
    str r1, [sp, #12]
    ldr r0, [sp, #76]
.Lsec01_00002740:
    bl __aeabi_f2d
    str r0, [sp, #16]
    str r1, [sp, #20]
    ldr r6, [pc, #392]
    ldr r1, [r6]
    mov r2, r4
    mov r3, r5
    ldr r0, [r1, #12]
    ldr r1, [pc, #376]
.Lsec01_00002764:
    bl fprintf
    ldr r0, [sp, #80]
.Lsec01_0000276c:
    bl __aeabi_f2d
    mov r4, r0
    ldr r0, [sp, #84]
    mov r5, r1
.Lsec01_0000277c:
    bl __aeabi_f2d
    stmia sp, {r0, r1}
    ldr r0, [sp, #88]
.Lsec01_00002788:
    bl __aeabi_f2d
    str r0, [sp, #8]
    str r1, [sp, #12]
    ldr r0, [sp, #92]
.Lsec01_00002798:
    bl __aeabi_f2d
    str r0, [sp, #16]
    str r1, [sp, #20]
    ldr r1, [r6]
    mov r2, r4
    ldr r0, [r1, #12]
    mov r3, r5
    ldr r1, [pc, #296]
.Lsec01_000027b8:
    bl fprintf
.Lsec01_000027bc:
    mov r0, r7
    mov r1, #0
    b .Lsec01_00002894
.Lsec01_000027c8:
    mov r0, r4
.Lsec01_000027cc:
    bl __aeabi_f2d
    mov r4, r0
    ldr r0, [sp, #68]
    mov r5, r1
.Lsec01_000027dc:
    bl __aeabi_f2d
    stmia sp, {r0, r1}
    ldr r0, [sp, #72]
.Lsec01_000027e8:
    bl __aeabi_f2d
    str r0, [sp, #8]
    str r1, [sp, #12]
    ldr r0, [sp, #76]
.Lsec01_000027f8:
    bl __aeabi_f2d
    str r0, [sp, #16]
    str r1, [sp, #20]
    ldr r0, [sp, #80]
.Lsec01_00002808:
    bl __aeabi_f2d
    str r0, [sp, #24]
    str r1, [sp, #28]
    ldr r0, [sp, #84]
.Lsec01_00002818:
    bl __aeabi_f2d
    str r0, [sp, #32]
    str r1, [sp, #36]
    ldr r0, [sp, #88]
.Lsec01_00002828:
    bl __aeabi_f2d
    str r0, [sp, #40]
    str r1, [sp, #44]
    ldr r0, [sp, #92]
.Lsec01_00002838:
    bl __aeabi_f2d
    mov r2, r4
    str r0, [sp, #48]
    str r1, [sp, #52]
    mov r3, r5
    mov r0, r7
    ldr r1, [sp, #64]
.Lsec01_00002854:
    bl png_set_cHRM
    ldr ip, [sp, #108]
    str ip, [sp]
    ldr ip, [sp, #104]
    ldr r1, [sp, #64]
    mov r0, r7
    add r2, sp, #96
    ldmia r2, {r2, r3}
    str ip, [sp, #4]
    str sl, [sp, #8]
    str r8, [sp, #12]
    str fp, [sp, #16]
    str r9, [sp, #20]
.Lsec01_00002888:
    bl png_set_cHRM_fixed
    mov r0, r7
    mov r1, r6
.Lsec01_00002894:
    bl png_crc_finish
    add sp, sp, #124
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_00000970
    .long .Lsec05_0000098c
    .long .Lsec05_000009a4
    .long 0x00000804
    .long .Lsec05_000009c0
    .long .Lsec05_000009d8
    .long 0x00013880
    .long 0x000186a0
    .long .Lsec05_000009f4
    .long .Lsec05_00000a10
    .long .Lsec05_00000a28
    .long .Lsec05_00000a44
    .long 0x47c35000
    .long .Lsec05_00000938
    .long _impure_ptr
    .long .Lsec05_00000a5c
    .long .Lsec05_00000a78
.arm
png_handle_sBIT:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr ip, [r0, #132]
    sub sp, sp, #12
    mov r3, #0
    tst ip, #1
    mov r4, r0
    strb r3, [sp, #4]
    mov r7, r1
    mov r5, r2
    strb r3, [sp, #7]
    strb r3, [sp, #6]
    strb r3, [sp, #5]
    bne .Lsec01_00002928
    ldr r1, [pc, #244]
.Lsec01_00002920:
    bl png_error
    b .Lsec01_00002940
.Lsec01_00002928:
    tst ip, #4
    ldrne r1, [pc, #232]
    bne .Lsec01_0000295c
    tst ip, #2
    ldrne r1, [pc, #224]
.Lsec01_0000293c:
    blne png_warning
.Lsec01_00002940:
    cmp r7, #0
    beq .Lsec01_00002970
    ldr r3, [r7, #8]
    tst r3, #2
    beq .Lsec01_00002970
    ldr r1, [pc, #200]
    mov r0, r4
.Lsec01_0000295c:
    bl png_warning
    mov r0, r4
    mov r1, r5
.Lsec01_00002968:
    bl png_crc_finish
    b .Lsec01_00002a0c
.Lsec01_00002970:
    ldrb r2, [r4, #322]
    cmp r2, #3
    ldrneb r2, [r4, #326]
    cmp r5, #4
    cmpls r5, r2
    moveq r6, #0
    movne r6, #1
    movne r0, r4
    ldrne r1, [pc, #144]
    bne .Lsec01_0000295c
    mov r0, r4
    add r1, sp, #4
.Lsec01_000029a0:
    bl png_crc_read
    mov r0, r4
    mov r1, r6
.Lsec01_000029ac:
    bl png_crc_finish
    cmp r0, #0
    bne .Lsec01_00002a0c
    ldrb r3, [r4, #322]
    tst r3, #2
    ldrb r1, [sp, #4]
    ldrb r0, [sp, #5]
    beq .Lsec01_000029e8
    ldrb r3, [sp, #6]
    ldrb r2, [sp, #7]
    strb r1, [r4, #408]
    strb r0, [r4, #409]
    strb r3, [r4, #410]
    strb r2, [r4, #412]
    b .Lsec01_000029fc
.Lsec01_000029e8:
    strb r1, [r4, #410]
    strb r0, [r4, #412]
    strb r1, [r4, #411]
    strb r1, [r4, #408]
    strb r1, [r4, #409]
.Lsec01_000029fc:
    mov r0, r4
    mov r1, r7
    add r2, r4, #408
.Lsec01_00002a08:
    bl png_set_sBIT
.Lsec01_00002a0c:
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000a94
    .long .Lsec05_00000ab0
    .long .Lsec05_00000ac8
    .long .Lsec05_00000ae0
    .long .Lsec05_00000af8
.arm
png_handle_gAMA:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    sub sp, sp, #12
    mov r4, r0
    mov r6, r1
    mov r5, r2
    bne .Lsec01_00002a58
    ldr r1, [pc, #312]
.Lsec01_00002a50:
    bl png_error
    b .Lsec01_00002a70
.Lsec01_00002a58:
    tst r3, #4
    ldrne r1, [pc, #300]
    bne .Lsec01_00002a94
    tst r3, #2
    ldrne r1, [pc, #292]
.Lsec01_00002a6c:
    blne png_warning
.Lsec01_00002a70:
    cmp r6, #0
    beq .Lsec01_00002aa8
    ldr r3, [r6, #8]
    tst r3, #1
    beq .Lsec01_00002aa8
    tst r3, #2048
    bne .Lsec01_00002aa8
    ldr r1, [pc, #260]
    mov r0, r4
.Lsec01_00002a94:
    bl png_warning
    mov r0, r4
    mov r1, r5
.Lsec01_00002aa0:
    bl png_crc_finish
    b .Lsec01_00002b80
.Lsec01_00002aa8:
    cmp r5, #4
    movne r0, r4
    ldrne r1, [pc, #228]
    bne .Lsec01_00002a94
    add r7, sp, #4
    mov r2, r5
    mov r1, r7
    mov r0, r4
.Lsec01_00002ac8:
    bl png_crc_read
    mov r0, r4
    mov r1, #0
.Lsec01_00002ad4:
    bl png_crc_finish
    cmp r0, #0
    bne .Lsec01_00002b80
    mov r0, r7
.Lsec01_00002ae4:
    bl png_get_uint_32
    subs r5, r0, #0
    bne .Lsec01_00002b00
    mov r0, r4
    ldr r1, [pc, #164]
.Lsec01_00002af8:
    bl png_warning
    b .Lsec01_00002b80
.Lsec01_00002b00:
    ldr r3, [r6, #8]
    tst r3, #2048
    beq .Lsec01_00002b44
    sub r3, r5, #44800
    sub r3, r3, #200
    cmp r3, #1000
    bls .Lsec01_00002b44
    mov r0, r4
    ldr r1, [pc, #124]
.Lsec01_00002b24:
    bl png_warning
    ldr r3, [pc, #120]
    ldr r3, [r3]
    mov r2, r5
    ldr r0, [r3, #12]
    ldr r1, [pc, #108]
.Lsec01_00002b3c:
    bl fprintf
    b .Lsec01_00002b80
.Lsec01_00002b44:
    mov r0, r5
.Lsec01_00002b48:
    bl __aeabi_i2f
    ldr r1, [pc, #92]
.Lsec01_00002b50:
    bl __aeabi_fdiv
    str r0, [r4, #376]
.Lsec01_00002b58:
    bl __aeabi_f2d
    mov r2, r0
    mov r3, r1
    mov r0, r4
    mov r1, r6
.Lsec01_00002b6c:
    bl png_set_gAMA
    mov r0, r4
    mov r1, r6
    mov r2, r5
.Lsec01_00002b7c:
    bl png_set_gAMA_fixed
.Lsec01_00002b80:
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000b14
    .long .Lsec05_00000b30
    .long .Lsec05_00000b48
    .long .Lsec05_00000b60
    .long .Lsec05_00000b78
    .long .Lsec05_00000b94
    .long .Lsec05_000008e0
    .long _impure_ptr
    .long .Lsec05_00000bb8
    .long 0x47c35000
.arm
png_handle_IEND:
    stmdb sp!, {r4, r5, lr}
    ldr r3, [r0, #132]
    and r3, r3, #5
    sub sp, sp, #12
    cmp r3, #5
    str r1, [sp, #4]
    mov r4, r0
    ldr r1, [pc, #56]
    mov r5, r2
.Lsec01_00002bd8:
    blne png_error
    ldr r3, [r4, #132]
    cmp r5, #0
    orr r3, r3, #24
    mov r0, r4
    ldr r1, [pc, #32]
    str r3, [r4, #132]
.Lsec01_00002bf4:
    blne png_warning
    mov r0, r4
    mov r1, r5
.Lsec01_00002c00:
    bl png_crc_finish
    add sp, sp, #12
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_00000bd0
    .long .Lsec05_00000be4
.arm
png_handle_PLTE:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    mov r8, r1
    sub sp, sp, #776
    mov r4, r0
    mov r5, r2
    ldreq r1, [pc, #372]
    beq .Lsec01_00002c54
    tst r3, #4
    ldrne r1, [pc, #364]
    bne .Lsec01_00002c78
    tst r3, #2
    beq .Lsec01_00002c58
    ldr r1, [pc, #352]
.Lsec01_00002c54:
    bl png_error
.Lsec01_00002c58:
    ldr r3, [r4, #132]
    ldrb r6, [r4, #322]
    orr r3, r3, #2
    tst r6, #2
    str r3, [r4, #132]
    bne .Lsec01_00002c8c
    ldr r1, [pc, #324]
    mov r0, r4
.Lsec01_00002c78:
    bl png_warning
    mov r0, r4
    mov r1, r5
.Lsec01_00002c84:
    bl png_crc_finish
    b .Lsec01_00002da4
.Lsec01_00002c8c:
    cmp r5, #768
    bhi .Lsec01_00002ca8
    mov r0, r5
    mov r1, #3
.Lsec01_00002c9c:
    bl __aeabi_uidivmod
    cmp r1, #0
    beq .Lsec01_00002cc4
.Lsec01_00002ca8:
    cmp r6, #3
    movne r0, r4
    ldrne r1, [pc, #264]
    bne .Lsec01_00002c78
    mov r0, r4
    ldr r1, [pc, #252]
.Lsec01_00002cc0:
    bl png_error
.Lsec01_00002cc4:
    mov r0, r5
    mov r1, #3
.Lsec01_00002ccc:
    bl __aeabi_idiv
    add r5, sp, #8
    mov r7, r0
    sub r5, r5, #3
    mov r6, #0
    b .Lsec01_00002d00
.Lsec01_00002ce4:
    bl png_crc_read
    ldrb r3, [sp, #773]
    strb r3, [r5, #-3]
    ldrb r3, [sp, #774]
    strb r3, [r5, #-2]
    ldrb r3, [sp, #775]
    strb r3, [r5, #-1]
.Lsec01_00002d00:
    add r1, sp, #772
    mov r2, #3
    cmp r6, r7
    mov r0, r4
    add r1, r1, #1
    add r6, r6, #1
    add r5, r5, r2
    blt .Lsec01_00002ce4
    mov r1, #0
.Lsec01_00002d24:
    bl png_crc_finish
    add r2, sp, #8
    mov r3, r7
    mov r0, r4
    mov r1, r8
    sub r2, r2, #3
.Lsec01_00002d3c:
    bl png_set_PLTE
    ldrb r3, [r4, #322]
    cmp r3, #3
    bne .Lsec01_00002da4
    cmp r8, #0
    beq .Lsec01_00002da4
    ldr r3, [r8, #8]
    tst r3, #16
    beq .Lsec01_00002da4
    ldr r6, [pc, #92]
    mov r3, r7, lsl #16
    ldrh r2, [r4, r6]
    mov r5, r3, lsr #16
    cmp r2, r5
    bls .Lsec01_00002d88
    mov r0, r4
    ldr r1, [pc, #68]
.Lsec01_00002d80:
    bl png_warning
    strh r5, [r4, r6]
.Lsec01_00002d88:
    ldrh r3, [r8, #22]
    cmp r3, r5
    bls .Lsec01_00002da4
    mov r0, r4
    ldr r1, [pc, #44]
.Lsec01_00002d9c:
    bl png_warning
    strh r5, [r8, #22]
.Lsec01_00002da4:
    add sp, sp, #776
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long .Lsec05_00000c00
    .long .Lsec05_00000c1c
    .long .Lsec05_00000c34
    .long .Lsec05_00000c4c
    .long .Lsec05_00000c74
    .long 0x00000136
    .long .Lsec05_00000c8c
    .long .Lsec05_00000cb4
.arm
png_handle_IHDR:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    sub sp, sp, #40
    mov r5, r0
    mov r9, r1
    mov r4, r2
    ldrne r1, [pc, #312]
.Lsec01_00002df0:
    blne png_error
    cmp r4, #13
    movne r0, r5
    ldrne r1, [pc, #300]
.Lsec01_00002e00:
    blne png_error
    ldr r3, [r5, #132]
    add r4, sp, #27
    orr r3, r3, #1
    str r3, [r5, #132]
    mov r2, #13
    mov r1, r4
    mov r0, r5
.Lsec01_00002e20:
    bl png_crc_read
    mov r1, #0
    mov r0, r5
.Lsec01_00002e2c:
    bl png_crc_finish
    mov r1, r4
    mov r0, r5
.Lsec01_00002e38:
    bl png_get_uint_31
    add r1, r4, #4
    mov r8, r0
    mov r0, r5
.Lsec01_00002e48:
    bl png_get_uint_31
    ldrb r7, [sp, #36]
    strb r7, [r5, #322]
    ldrb lr, [sp, #35]
    ldrb r4, [sp, #37]
    ldrb ip, [sp, #39]
    ldrb r3, [r5, #322]
    str r8, [r5, #228]
    str r0, [r5, #232]
    strb lr, [r5, #323]
    strb ip, [r5, #319]
    strb r4, [r5, #636]
    mov r6, r0
    ldrb sl, [sp, #38]
    cmp r3, #6
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00002ec8
    .long .Lsec01_00002ea8
    .long .Lsec01_00002ec8
    .long .Lsec01_00002eb0
    .long .Lsec01_00002ea8
    .long .Lsec01_00002eb8
    .long .Lsec01_00002ec8
    .long .Lsec01_00002ec0
.arm
.Lsec01_00002ea8:
    mov r3, #1
    b .Lsec01_00002ec4
.Lsec01_00002eb0:
    mov r3, #3
    b .Lsec01_00002ec4
.Lsec01_00002eb8:
    mov r3, #2
    b .Lsec01_00002ec4
.Lsec01_00002ec0:
    mov r3, #4
.Lsec01_00002ec4:
    strb r3, [r5, #326]
.Lsec01_00002ec8:
    ldrb r2, [r5, #326]
    ldrb r3, [r5, #323]
    mul r3, r2, r3
    ldr r2, [r5, #228]
    and r3, r3, #255
    cmp r3, #7
    strb r3, [r5, #325]
    mulls r3, r2, r3
    movhi r3, r3, lsr #3
    mulhi r3, r2, r3
    addls r3, r3, #7
    movls r3, r3, lsr #3
    str r3, [r5, #244]
    mov r0, r5
    mov r1, r9
    mov r2, r8
    mov r3, r6
    str lr, [sp]
    stmib sp, {r7, ip}
    str r4, [sp, #12]
    str sl, [sp, #16]
.Lsec01_00002f1c:
    bl png_set_IHDR
    add sp, sp, #40
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    bx lr
    .long .Lsec05_00000ce0
    .long .Lsec05_00000cf4
.arm
png_handle_tIME:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    sub sp, sp, #16
    mov r7, r0
    mov r8, r1
    mov r4, r2
    bne .Lsec01_00002f60
    ldr r1, [pc, #200]
.Lsec01_00002f58:
    bl png_error
    b .Lsec01_00002f78
.Lsec01_00002f60:
    cmp r1, #0
    beq .Lsec01_00002f78
    ldr r3, [r1, #8]
    tst r3, #512
    ldrne r1, [pc, #176]
    bne .Lsec01_00002f98
.Lsec01_00002f78:
    ldr r3, [r7, #132]
    tst r3, #4
    orrne r3, r3, #8
    strne r3, [r7, #132]
    cmp r4, #7
    beq .Lsec01_00002fac
    ldr r1, [pc, #148]
    mov r0, r7
.Lsec01_00002f98:
    bl png_warning
    mov r0, r7
    mov r1, r4
.Lsec01_00002fa4:
    bl png_crc_finish
    b .Lsec01_00003018
.Lsec01_00002fac:
    mov r2, r4
    add r1, sp, #9
    mov r0, r7
.Lsec01_00002fb8:
    bl png_crc_read
    mov r0, r7
    mov r1, #0
.Lsec01_00002fc4:
    bl png_crc_finish
    cmp r0, #0
    bne .Lsec01_00003018
    ldrb r2, [sp, #9]
    ldrb r3, [sp, #10]
    ldrb ip, [sp, #15]
    ldrb lr, [sp, #14]
    ldrb r4, [sp, #13]
    ldrb r5, [sp, #12]
    ldrb r6, [sp, #11]
    add r3, r3, r2, lsl #8
    mov r0, r7
    mov r1, r8
    mov r2, sp
    strb ip, [sp, #6]
    strb lr, [sp, #5]
    strb r4, [sp, #4]
    strb r5, [sp, #3]
    strb r6, [sp, #2]
    strh r3, [sp]
.Lsec01_00003014:
    bl png_set_tIME
.Lsec01_00003018:
    add sp, sp, #16
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long .Lsec05_00000d08
    .long .Lsec05_00000d20
    .long .Lsec05_00000d38
.arm
png_handle_hIST:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    sub sp, sp, #524
    mov r5, r0
    mov r7, r1
    mov r6, r2
    bne .Lsec01_0000305c
    ldr r1, [pc, #224]
.Lsec01_00003054:
    bl png_error
    b .Lsec01_000030a0
.Lsec01_0000305c:
    tst r3, #4
    ldrne r1, [pc, #212]
    bne .Lsec01_00003074
    tst r3, #2
    bne .Lsec01_00003088
    ldr r1, [pc, #200]
.Lsec01_00003074:
    bl png_warning
    mov r0, r5
    mov r1, r6
.Lsec01_00003080:
    bl png_crc_finish
    b .Lsec01_0000312c
.Lsec01_00003088:
    cmp r7, #0
    beq .Lsec01_000030a0
    ldr r3, [r7, #8]
    tst r3, #64
    ldrne r1, [pc, #164]
    bne .Lsec01_00003074
.Lsec01_000030a0:
    mov r3, #308
    ldrh r3, [r5, r3]
    mov r4, r6, lsr #1
    cmp r4, #256
    cmpls r4, r3
    moveq r2, #0
    movne r2, #1
    moveq r6, r2
    movne r0, r5
    ldrne r1, [pc, #124]
    bne .Lsec01_00003074
    b .Lsec01_000030f4
.Lsec01_000030d0:
    bl png_crc_read
    ldrb r2, [sp, #518]
    ldrb r1, [sp, #519]
    add r3, sp, #8
    add r1, r1, r2, lsl #8
    sub r3, r3, #2
    mov r2, r6, lsl #1
    strh r1, [r2, r3]
    add r6, r6, #1
.Lsec01_000030f4:
    add r1, sp, #516
    cmp r6, r4
    mov r0, r5
    add r1, r1, #2
    mov r2, #2
    bne .Lsec01_000030d0
    mov r1, #0
.Lsec01_00003110:
    bl png_crc_finish
    cmp r0, #0
    addeq r2, sp, #8
    moveq r0, r5
    moveq r1, r7
    subeq r2, r2, #2
.Lsec01_00003128:
    bleq png_set_hIST
.Lsec01_0000312c:
    add sp, sp, #524
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000d54
    .long .Lsec05_00000d70
    .long .Lsec05_00000d88
    .long .Lsec05_00000da4
    .long .Lsec05_00000dbc
.arm
png_handle_bKGD:
    stmdb sp!, {r4, r5, r6, lr}
    ldr ip, [r0, #132]
    tst ip, #1
    sub sp, sp, #8
    mov r4, r0
    mov r6, r1
    mov r5, r2
    bne .Lsec01_00003178
    ldr r1, [pc, #420]
.Lsec01_00003170:
    bl png_error
    b .Lsec01_000031cc
.Lsec01_00003178:
    tst ip, #4
    ldrne r1, [pc, #408]
    bne .Lsec01_0000319c
    ldrb r3, [r0, #322]
    cmp r3, #3
    bne .Lsec01_000031b0
    tst ip, #2
    bne .Lsec01_000031b0
    ldr r1, [pc, #384]
.Lsec01_0000319c:
    bl png_warning
    mov r0, r4
    mov r1, r5
.Lsec01_000031a8:
    bl png_crc_finish
    b .Lsec01_0000330c
.Lsec01_000031b0:
    cmp r6, #0
    beq .Lsec01_000031cc
    ldr r3, [r6, #8]
    tst r3, #32
    movne r0, r4
    ldrne r1, [pc, #344]
    bne .Lsec01_0000319c
.Lsec01_000031cc:
    ldrb r3, [r4, #322]
    cmp r3, #3
    moveq r3, #1
    beq .Lsec01_000031e8
    tst r3, #2
    moveq r3, #2
    movne r3, #6
.Lsec01_000031e8:
    cmp r5, r3
    movne r0, r4
    ldrne r1, [pc, #304]
    bne .Lsec01_0000319c
    mov r2, r5
    add r1, sp, #2
    mov r0, r4
.Lsec01_00003204:
    bl png_crc_read
    mov r0, r4
    mov r1, #0
.Lsec01_00003210:
    bl png_crc_finish
    cmp r0, #0
    bne .Lsec01_0000330c
    ldrb r1, [r4, #322]
    cmp r1, #3
    bne .Lsec01_00003288
    ldrb r2, [sp, #2]
    strb r2, [r4, #340]
    ldrh r3, [r6, #20]
    cmp r3, #0
    beq .Lsec01_000032fc
    cmp r2, r3
    bls .Lsec01_00003254
    mov r0, r4
    ldr r1, [pc, #220]
.Lsec01_0000324c:
    bl png_warning
    b .Lsec01_0000330c
.Lsec01_00003254:
    mul r2, r1, r2
    ldr r0, [r4, #304]
    ldr r3, [pc, #204]
    ldrb r1, [r2, r0]
    strh r1, [r4, r3]
    add r2, r2, r0
    ldrb r1, [r2, #1]
    add r3, r3, #2
    strh r1, [r4, r3]
    ldrb r2, [r2, #2]
    add r3, r3, #2
    strh r2, [r4, r3]
    b .Lsec01_000032fc
.Lsec01_00003288:
    tst r1, #2
    ldrb lr, [sp, #2]
    ldrb r0, [sp, #3]
    bne .Lsec01_000032c8
    add r3, r0, lr, lsl #8
    ldr r2, [pc, #140]
    mov r3, r3, lsl #16
    mov r3, r3, lsr #16
    strh r3, [r4, r2]
    add r2, r2, #6
    strh r3, [r4, r2]
    sub r2, r2, #2
    strh r3, [r4, r2]
    mov r2, #344
    strh r3, [r4, r2]
    b .Lsec01_000032fc
.Lsec01_000032c8:
    ldrb r3, [sp, #6]
    ldrb r1, [sp, #7]
    ldrb ip, [sp, #4]
    ldrb r2, [sp, #5]
    add r1, r1, r3, lsl #8
    ldr r3, [pc, #76]
    add r0, r0, lr, lsl #8
    add r2, r2, ip, lsl #8
    strh r0, [r4, r3]
    add r3, r3, #2
    strh r2, [r4, r3]
    add r3, r3, #2
    strh r1, [r4, r3]
.Lsec01_000032fc:
    mov r0, r4
    mov r1, r6
    add r2, r4, #340
.Lsec01_00003308:
    bl png_set_bKGD
.Lsec01_0000330c:
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_00000dd8
    .long .Lsec05_00000df4
    .long .Lsec05_00000e0c
    .long .Lsec05_00000e28
    .long .Lsec05_00000e40
    .long .Lsec05_00000e5c
    .long 0x00000156
.arm
png_handle_tRNS:
    stmdb sp!, {r4, r5, r6, lr}
    ldr r3, [r0, #132]
    tst r3, #1
    sub sp, sp, #272
    mov r4, r0
    mov r6, r1
    mov r5, r2
    bne .Lsec01_00003360
    ldr r1, [pc, #408]
.Lsec01_00003358:
    bl png_error
    b .Lsec01_00003398
.Lsec01_00003360:
    tst r3, #4
    ldrne r1, [pc, #396]
    bne .Lsec01_00003384
    cmp r6, #0
    beq .Lsec01_00003398
    ldr r3, [r6, #8]
    tst r3, #16
    beq .Lsec01_00003398
    ldr r1, [pc, #372]
.Lsec01_00003384:
    bl png_warning
    mov r0, r4
    mov r1, r5
.Lsec01_00003390:
    bl png_crc_finish
    b .Lsec01_000034e8
.Lsec01_00003398:
    ldrb r3, [r4, #322]
    cmp r3, #0
    bne .Lsec01_000033dc
    cmp r5, #2
    bne .Lsec01_00003480
    add r1, sp, #268
    mov r2, r5
    mov r0, r4
    add r1, r1, #2
.Lsec01_000033bc:
    bl png_crc_read
    ldrb r2, [sp, #270]
    ldrb r3, [sp, #271]
    add r3, r3, r2, lsl #8
    mov r2, #432
    strh r3, [r4, r2]
    ldr r3, [pc, #292]
    b .Lsec01_0000343c
.Lsec01_000033dc:
    cmp r3, #2
    bne .Lsec01_00003448
    cmp r5, #6
    bne .Lsec01_00003480
    mov r2, r5
    mov r0, r4
    add r1, sp, #264
.Lsec01_000033f8:
    bl png_crc_read
    ldrb r3, [sp, #268]
    ldrb r0, [sp, #269]
    ldrb lr, [sp, #264]
    ldrb r2, [sp, #265]
    ldrb ip, [sp, #266]
    ldrb r1, [sp, #267]
    add r0, r0, r3, lsl #8
    ldr r3, [pc, #228]
    add r2, r2, lr, lsl #8
    add r1, r1, ip, lsl #8
    strh r2, [r4, r3]
    add r3, r3, #2
    strh r1, [r4, r3]
    add r3, r3, #2
    strh r0, [r4, r3]
    sub r3, r3, #120
.Lsec01_0000343c:
    mov r2, #1
    strh r2, [r4, r3]
    b .Lsec01_000034b4
.Lsec01_00003448:
    cmp r3, #3
    movne r0, r4
    ldrne r1, [pc, #176]
    bne .Lsec01_00003384
    ldr r3, [r4, #132]
    tst r3, #2
    moveq r0, r4
    ldreq r1, [pc, #160]
.Lsec01_00003468:
    bleq png_warning
    mov r3, #308
    ldrh r3, [r4, r3]
    cmp r5, #256
    cmpls r5, r3
    bls .Lsec01_0000348c
.Lsec01_00003480:
    ldr r1, [pc, #136]
    mov r0, r4
    b .Lsec01_00003384
.Lsec01_0000348c:
    cmp r5, #0
    moveq r0, r4
    ldreq r1, [pc, #120]
    beq .Lsec01_00003384
    mov r0, r4
    add r1, sp, #8
    mov r2, r5
.Lsec01_000034a8:
    bl png_crc_read
    ldr r3, [pc, #76]
    strh r5, [r4, r3]
.Lsec01_000034b4:
    mov r0, r4
    mov r1, #0
.Lsec01_000034bc:
    bl png_crc_finish
    cmp r0, #0
    bne .Lsec01_000034e8
    ldr r3, [pc, #48]
    add ip, r4, #424
    ldrh r3, [r4, r3]
    mov r0, r4
    mov r1, r6
    add r2, sp, #8
    str ip, [sp]
.Lsec01_000034e4:
    bl png_set_tRNS
.Lsec01_000034e8:
    add sp, sp, #272
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_00000e80
    .long .Lsec05_00000e9c
    .long .Lsec05_00000eb4
    .long 0x00000136
    .long 0x000001aa
    .long .Lsec05_00000f1c
    .long .Lsec05_00000ee8
    .long .Lsec05_00000ecc
    .long .Lsec05_00000f04
.arm
png_handle_sPLT:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr r3, [r0, #132]
    sub sp, sp, #28
    tst r3, #1
    mov r6, r0
    str r1, [sp, #4]
    mov r4, r2
    bne .Lsec01_00003544
    ldr r1, [pc, #596]
.Lsec01_0000353c:
    bl png_error
    b .Lsec01_00003564
.Lsec01_00003544:
    tst r3, #4
    beq .Lsec01_00003564
    ldr r1, [pc, #580]
.Lsec01_00003550:
    bl png_warning
    mov r0, r6
    mov r1, r4
.Lsec01_0000355c:
    bl png_crc_finish
    b .Lsec01_00003788
.Lsec01_00003564:
    ldr r7, [pc, #560]
    cmp r4, r7
    movls r5, #0
    bls .Lsec01_0000358c
    mov r0, r6
    ldr r1, [pc, #544]
.Lsec01_0000357c:
    bl png_warning
    sub r5, r4, #65280
    sub r5, r5, #255
    mov r4, r7
.Lsec01_0000358c:
    add r1, r4, #1
    mov r0, r6
.Lsec01_00003594:
    bl png_malloc
    mov r7, r0
    mov r2, r4
    mov r0, r6
    mov r1, r7
.Lsec01_000035a8:
    bl png_crc_read
    mov r1, r5
    mov r0, r6
.Lsec01_000035b4:
    bl png_crc_finish
    cmp r0, #0
    movne r0, r6
    movne r1, r7
    addeq ip, r7, r4
    moveq r2, r7
    streqb r0, [r7, r4]
    beq .Lsec01_000035dc
    b .Lsec01_00003784
.Lsec01_000035d8:
    mov r2, r1
.Lsec01_000035dc:
    mov r1, r2
    ldrb r3, [r1], #1
    cmp r3, #0
    bne .Lsec01_000035d8
    cmp r1, ip
    bls .Lsec01_0000360c
    mov r1, r7
    mov r0, r6
.Lsec01_000035fc:
    bl png_free
    ldr r1, [pc, #412]
    mov r0, r6
    b .Lsec01_000036ac
.Lsec01_0000360c:
    ldrb r2, [r2, #1]
    add r5, r1, #1
    cmp r2, #8
    rsb r3, r7, r5
    movne r8, #10
    moveq r8, #6
    rsb r4, r3, r4
    mov r0, r4
    mov r1, r8
    strb r2, [sp, #12]
.Lsec01_00003634:
    bl __aeabi_idivmod
    subs sl, r1, #0
    beq .Lsec01_00003658
    mov r1, r7
    mov r0, r6
.Lsec01_00003648:
    bl png_free
    ldr r1, [pc, #340]
    mov r0, r6
    b .Lsec01_000036ac
.Lsec01_00003658:
    mov r1, r8
    mov r0, r4
.Lsec01_00003660:
    bl __aeabi_idiv
    ldr r3, [pc, #320]
    cmp r0, r3
    str r0, [sp, #20]
    ldrhi r1, [pc, #312]
    movhi r0, r6
    bhi .Lsec01_000036ac
    mov r3, #10
    mul r1, r0, r3
    mov r0, r6
.Lsec01_00003688:
    bl png_malloc_warn
    cmp r0, #0
    str r0, [sp, #16]
    ldrne fp, [sp, #20]
    addne r0, r0, #8
    movne r9, sl
    bne .Lsec01_00003738
    ldr r1, [pc, #264]
    mov r0, r6
.Lsec01_000036ac:
    bl png_warning
    b .Lsec01_00003788
.Lsec01_000036b4:
    ldrb r3, [sp, #12]
    cmp r3, #8
    ldrb r2, [r5]
    bne .Lsec01_000036e0
    strh r2, [r0, #-8]
    ldrb r3, [r5, #1]
    strh r3, [r0, #-6]
    ldrb r3, [r1, #1]
    strh r3, [r0, #-4]
    ldrb r3, [r8, #1]
    b .Lsec01_0000371c
.Lsec01_000036e0:
    ldrb r3, [r5, #1]
    add r3, r3, r2, lsl #8
    strh r3, [r0, #-8]
    ldrb r2, [r5, #2]
    ldrb r3, [ip, #1]
    add r3, r3, r2, lsl #8
    strh r3, [r0, #-6]
    ldrb r2, [ip, #2]
    ldrb r3, [lr, #1]
    add r3, r3, r2, lsl #8
    strh r3, [r0, #-4]
    ldrb r2, [lr, #2]
    ldrb r3, [sl, #1]
    add r4, sl, #2
    add r3, r3, r2, lsl #8
.Lsec01_0000371c:
    strh r3, [r0, #-2]
    ldrb r2, [r4]
    ldrb r3, [r4, #1]
    add r3, r3, r2, lsl #8
    strh r3, [r0], #10
    add r5, r4, #2
    add r9, r9, #1
.Lsec01_00003738:
    add ip, r5, #2
    add r1, r5, #1
    add lr, ip, #2
    add r8, r1, #1
    cmp r9, fp
    add sl, lr, #2
    add r4, r8, #2
    blt .Lsec01_000036b4
    ldr r1, [sp, #4]
    add r2, sp, #8
    mov r3, #1
    mov r0, r6
    str r7, [sp, #8]
.Lsec01_0000376c:
    bl png_set_sPLT
    mov r0, r6
    mov r1, r7
.Lsec01_00003778:
    bl png_free
    ldr r1, [sp, #16]
    mov r0, r6
.Lsec01_00003784:
    bl png_free
.Lsec01_00003788:
    add sp, sp, #28
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_00000f48
    .long .Lsec05_00000f64
    .long 0x0000ffff
    .long .Lsec05_00000f7c
    .long .Lsec05_00000fa4
    .long .Lsec05_00000fbc
    .long 0x19999999
    .long .Lsec05_00000fd8
    .long .Lsec05_00000fec

.section .data,"aw",%progbits
.balign 4
msg.5167:
.Lsec03_00000000:
    .long 0x6f727245
    .long 0x65642072
    .long 0x69646f63
    .long 0x6320676e
    .long 0x72706d6f
    .long 0x65737365
    .long 0x65742064
    .long 0x00007478

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .long 0x20474e50
    .long 0x69736e75
    .long 0x64656e67
    .long 0x746e6920
    .long 0x72656765
    .long 0x74756f20
    .long 0x20666f20
    .long 0x676e6172
    .long 0x000a2e65
.Lsec05_00000024:
    .asciz "This image requires a row greater than 64KB"
.Lsec05_00000050:
    .asciz "Row has too many bytes to allocate in memory."
    .asciz ""
    .asciz ""
.Lsec05_00000080:
    .asciz "Ignoring bad adaptive filter type"
    .asciz ""
    .asciz ""
.Lsec05_000000a4:
    .asciz "invalid chunk type"
    .asciz ""
.Lsec05_000000b8:
    .asciz "Not enough memory to decompress chunk"
    .asciz ""
    .asciz ""
.Lsec05_000000e0:
    .asciz "Not enough memory to decompress chunk."
    .asciz ""
.Lsec05_00000108:
    .asciz "Not enough memory to decompress chunk.."
.Lsec05_00000130:
    .asciz "Buffer error in compressed datastream in %s chunk"
    .asciz ""
    .asciz ""
.Lsec05_00000164:
    .asciz "Data error in compressed datastream in %s chunk"
.Lsec05_00000194:
    .asciz "Incomplete compressed datastream in %s chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000001c4:
    .asciz "Not enough memory for text."
.Lsec05_000001e0:
    .asciz "Unknown zTXt compression type %d"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000204:
    .asciz "CRC error"
    .asciz ""
    .asciz ""
.Lsec05_00000210:
    .asciz "Not enough image data"
    .asciz ""
    .asciz ""
.Lsec05_00000228:
    .asciz "Extra compressed data"
    .asciz ""
    .asciz ""
.Lsec05_00000240:
    .asciz "Decompression Error"
.Lsec05_00000254:
    .asciz "Extra compressed data."
    .asciz ""
.Lsec05_0000026c:
    .asciz "Extra compression data"
    .asciz ""
.Lsec05_00000284:
    .asciz "unknown critical chunk"
    .asciz ""
.Lsec05_0000029c:
    .asciz "unknown chunk too large to fit in memory"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000002c8:
    .asciz "Missing IHDR before zTXt"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000002e4:
    .asciz "zTXt chunk too large to fit in memory"
    .asciz ""
    .asciz ""
.Lsec05_0000030c:
    .asciz "Out of memory processing zTXt chunk."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000334:
    .asciz "Zero length zTXt chunk"
    .asciz ""
.Lsec05_0000034c:
    .asciz "Unknown compression type in zTXt chunk"
    .asciz ""
.Lsec05_00000374:
    .asciz "Not enough memory to process zTXt chunk."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000003a0:
    .asciz "Insufficient memory to store zTXt chunk."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000003cc:
    .asciz "Missing IHDR before tEXt"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000003e8:
    .asciz "tEXt chunk too large to fit in memory"
    .asciz ""
    .asciz ""
.Lsec05_00000410:
    .asciz "No memory to process text chunk."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000434:
    .asciz "Not enough memory to process text chunk."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000460:
    .asciz "Insufficient memory to process text chunk."
    .asciz ""
.Lsec05_0000048c:
    .asciz "Missing IHDR before sCAL"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000004a8:
    .asciz "Invalid sCAL after IDAT"
.Lsec05_000004c0:
    .asciz "Duplicate sCAL chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000004d8:
    .asciz "Out of memory while processing sCAL chunk"
    .asciz ""
    .asciz ""
.Lsec05_00000504:
    .asciz "malformed width string in sCAL chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000052c:
    .asciz "malformed height string in sCAL chunk"
    .asciz ""
    .asciz ""
.Lsec05_00000554:
    .asciz "Invalid sCAL data"
    .asciz ""
    .asciz ""
.Lsec05_00000568:
    .asciz "Missing IHDR before pCAL"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000584:
    .asciz "Invalid pCAL after IDAT"
.Lsec05_0000059c:
    .asciz "Duplicate pCAL chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000005b4:
    .asciz "No memory for pCAL purpose."
.Lsec05_000005d0:
    .asciz "Invalid pCAL data"
    .asciz ""
    .asciz ""
.Lsec05_000005e4:
    .asciz "Invalid pCAL parameters for equation type"
    .asciz ""
    .asciz ""
.Lsec05_00000610:
    .asciz "Unrecognized equation type for pCAL chunk"
    .asciz ""
    .asciz ""
.Lsec05_0000063c:
    .asciz "No memory for pCAL params."
    .asciz ""
.Lsec05_00000658:
    .asciz "Missing IHDR before oFFs"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000674:
    .asciz "Invalid oFFs after IDAT"
.Lsec05_0000068c:
    .asciz "Duplicate oFFs chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000006a4:
    .asciz "Incorrect oFFs chunk length"
.Lsec05_000006c0:
    .asciz "Missing IHDR before pHYs"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000006dc:
    .asciz "Invalid pHYs after IDAT"
.Lsec05_000006f4:
    .asciz "Duplicate pHYs chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000070c:
    .asciz "Incorrect pHYs chunk length"
.Lsec05_00000728:
    .asciz "Missing IHDR before iCCP"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000744:
    .asciz "Invalid iCCP after IDAT"
.Lsec05_0000075c:
    .asciz "Out of place iCCP chunk"
.Lsec05_00000774:
    .asciz "Duplicate iCCP chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000078c:
    .asciz "iCCP chunk too large to fit in memory"
    .asciz ""
    .asciz ""
.Lsec05_000007b4:
    .asciz "Malformed iCCP chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000007cc:
    .asciz "Ignoring nonzero compression type in iCCP chunk"
.Lsec05_000007fc:
    .asciz "Profile size field missing from iCCP chunk"
    .asciz ""
.Lsec05_00000828:
    .long 0x6f6e6749
    .long 0x676e6972
    .long 0x75727420
    .long 0x7461636e
    .long 0x69206465
    .long 0x20504343
    .long 0x666f7270
    .long 0x2e656c69
    .long 0x0000000a
.Lsec05_0000084c:
    .asciz "Missing IHDR before sRGB"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000868:
    .asciz "Invalid sRGB after IDAT"
.Lsec05_00000880:
    .asciz "Out of place sRGB chunk"
.Lsec05_00000898:
    .asciz "Duplicate sRGB chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000008b0:
    .asciz "Incorrect sRGB chunk length"
.Lsec05_000008cc:
    .asciz "Unknown sRGB intent"
.Lsec05_000008e0:
    .asciz "Ignoring incorrect gAMA value when sRGB is also present"
.Lsec05_00000918:
    .long 0x6f636e69
    .long 0x63657272
    .long 0x61672074
    .long 0x3d616d6d
    .long 0x2f642528
    .long 0x30303031
    .long 0x0a293030
    .asciz ""
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000938:
    .asciz "Ignoring incorrect cHRM value when sRGB is also present"
.Lsec05_00000970:
    .asciz "Missing IHDR before cHRM"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000098c:
    .asciz "Invalid cHRM after IDAT"
.Lsec05_000009a4:
    .asciz "Missing PLTE before cHRM"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000009c0:
    .asciz "Duplicate cHRM chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000009d8:
    .asciz "Incorrect cHRM chunk length"
.Lsec05_000009f4:
    .asciz "Invalid cHRM white point"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000a10:
    .asciz "Invalid cHRM red point"
    .asciz ""
.Lsec05_00000a28:
    .asciz "Invalid cHRM green point"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000a44:
    .asciz "Invalid cHRM blue point"
.Lsec05_00000a5c:
    .long 0x253d7877
    .long 0x77202c66
    .long 0x66253d79
    .long 0x7872202c
    .long 0x2c66253d
    .long 0x3d797220
    .long 0x000a6625
.Lsec05_00000a78:
    .long 0x253d7867
    .long 0x67202c66
    .long 0x66253d79
    .long 0x7862202c
    .long 0x2c66253d
    .long 0x3d796220
    .long 0x000a6625
.Lsec05_00000a94:
    .asciz "Missing IHDR before sBIT"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000ab0:
    .asciz "Invalid sBIT after IDAT"
.Lsec05_00000ac8:
    .asciz "Out of place sBIT chunk"
.Lsec05_00000ae0:
    .asciz "Duplicate sBIT chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000af8:
    .asciz "Incorrect sBIT chunk length"
.Lsec05_00000b14:
    .asciz "Missing IHDR before gAMA"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000b30:
    .asciz "Invalid gAMA after IDAT"
.Lsec05_00000b48:
    .asciz "Out of place gAMA chunk"
.Lsec05_00000b60:
    .asciz "Duplicate gAMA chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000b78:
    .asciz "Incorrect gAMA chunk length"
.Lsec05_00000b94:
    .asciz "Ignoring gAMA chunk with gamma=0"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000bb8:
    .long 0x6d6d6167
    .long 0x203d2061
    .long 0x2f642528
    .long 0x30303031
    .long 0x0a293030
    .asciz ""
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000bd0:
    .asciz "No image in file"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000be4:
    .asciz "Incorrect IEND chunk length"
.Lsec05_00000c00:
    .asciz "Missing IHDR before PLTE"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000c1c:
    .asciz "Invalid PLTE after IDAT"
.Lsec05_00000c34:
    .asciz "Duplicate PLTE chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000c4c:
    .asciz "Ignoring PLTE chunk in grayscale PNG"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000c74:
    .asciz "Invalid palette chunk"
    .asciz ""
    .asciz ""
.Lsec05_00000c8c:
    .asciz "Truncating incorrect tRNS chunk length"
    .asciz ""
.Lsec05_00000cb4:
    .asciz "Truncating incorrect info tRNS chunk length"
.Lsec05_00000ce0:
    .asciz "Out of place IHDR"
    .asciz ""
    .asciz ""
.Lsec05_00000cf4:
    .asciz "Invalid IHDR chunk"
    .asciz ""
.Lsec05_00000d08:
    .asciz "Out of place tIME chunk"
.Lsec05_00000d20:
    .asciz "Duplicate tIME chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000d38:
    .asciz "Incorrect tIME chunk length"
.Lsec05_00000d54:
    .asciz "Missing IHDR before hIST"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000d70:
    .asciz "Invalid hIST after IDAT"
.Lsec05_00000d88:
    .asciz "Missing PLTE before hIST"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000da4:
    .asciz "Duplicate hIST chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000dbc:
    .asciz "Incorrect hIST chunk length"
.Lsec05_00000dd8:
    .asciz "Missing IHDR before bKGD"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000df4:
    .asciz "Invalid bKGD after IDAT"
.Lsec05_00000e0c:
    .asciz "Missing PLTE before bKGD"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000e28:
    .asciz "Duplicate bKGD chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000e40:
    .asciz "Incorrect bKGD chunk length"
.Lsec05_00000e5c:
    .asciz "Incorrect bKGD chunk index value"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000e80:
    .asciz "Missing IHDR before tRNS"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000e9c:
    .asciz "Invalid tRNS after IDAT"
.Lsec05_00000eb4:
    .asciz "Duplicate tRNS chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000ecc:
    .asciz "Incorrect tRNS chunk length"
.Lsec05_00000ee8:
    .asciz "Missing PLTE before tRNS"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000f04:
    .asciz "Zero length tRNS chunk"
    .asciz ""
.Lsec05_00000f1c:
    .asciz "tRNS chunk not allowed with alpha channel"
    .asciz ""
    .asciz ""
.Lsec05_00000f48:
    .asciz "Missing IHDR before sPLT"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000f64:
    .asciz "Invalid sPLT after IDAT"
.Lsec05_00000f7c:
    .asciz "sPLT chunk too large to fit in memory"
    .asciz ""
    .asciz ""
.Lsec05_00000fa4:
    .asciz "malformed sPLT chunk"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000fbc:
    .asciz "sPLT chunk has bad length"
    .asciz ""
    .asciz ""
.Lsec05_00000fd8:
    .asciz "sPLT chunk too long"
.Lsec05_00000fec:
    .asciz "sPLT chunk requires too much memory"

.size msg.5167, 31
.size png_get_uint_32, 40
.size png_get_int_32, 40
.size png_get_uint_16, 28
.size png_get_uint_31, 56
.size png_read_start_row, 768
.size png_crc_error, 124
.size png_read_filter_row, 476
.size png_do_read_interlace, 924
.size png_combine_row, 668
.size png_check_chunk_name, 196
.size png_decompress_chunk, 892
.size png_crc_read, 44
.size png_crc_finish, 160
.size png_read_finish_row, 736
.size png_handle_unknown, 420
.size png_handle_zTXt, 468
.size png_handle_tEXt, 368
.size png_handle_sCAL, 460
.size png_handle_pCAL, 676
.size png_handle_oFFs, 232
.size png_handle_pHYs, 232
.size png_handle_iCCP, 564
.size png_handle_sRGB, 512
.size png_handle_cHRM, 1388
.size png_handle_sBIT, 324
.size png_handle_gAMA, 392
.size png_handle_IEND, 100
.size png_handle_PLTE, 440
.size png_handle_IHDR, 356
.size png_handle_tIME, 252
.size png_handle_hIST, 284
.size png_handle_bKGD, 488
.size png_handle_tRNS, 484
.size png_handle_sPLT, 672

.section .note.GNU-stack,"",%progbits
