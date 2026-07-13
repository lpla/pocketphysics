/* Reconstructed mnemonic source for pngwutil.o. */
.syntax unified
.arch armv5te

.type png_text_compress, %function
.type C.0.5128, %object
.type png_write_compressed_data_out, %function
.global png_save_uint_32
.type png_save_uint_32, %function
.global png_save_int_32
.type png_save_int_32, %function
.global png_save_uint_16
.type png_save_uint_16, %function
.global png_do_write_interlace
.type png_do_write_interlace, %function
.global png_write_start_row
.type png_write_start_row, %function
.global png_check_keyword
.type png_check_keyword, %function
.global png_write_sig
.type png_write_sig, %function
.global png_write_chunk_end
.type png_write_chunk_end, %function
.global png_write_chunk_data
.type png_write_chunk_data, %function
.global png_write_chunk_start
.type png_write_chunk_start, %function
.global png_write_sCAL
.type png_write_sCAL, %function
.global png_write_pCAL
.type png_write_pCAL, %function
.global png_write_tEXt
.type png_write_tEXt, %function
.global png_write_zTXt
.type png_write_zTXt, %function
.global png_write_hIST
.type png_write_hIST, %function
.global png_write_sPLT
.type png_write_sPLT, %function
.global png_write_iCCP
.type png_write_iCCP, %function
.global png_write_PLTE
.type png_write_PLTE, %function
.global png_write_chunk
.type png_write_chunk, %function
.global png_write_tIME
.type png_write_tIME, %function
.global png_write_pHYs
.type png_write_pHYs, %function
.global png_write_oFFs
.type png_write_oFFs, %function
.global png_write_bKGD
.type png_write_bKGD, %function
.global png_write_tRNS
.type png_write_tRNS, %function
.global png_write_cHRM_fixed
.type png_write_cHRM_fixed, %function
.global png_write_cHRM
.type png_write_cHRM, %function
.global png_write_sBIT
.type png_write_sBIT, %function
.global png_write_sRGB
.type png_write_sRGB, %function
.global png_write_gAMA_fixed
.type png_write_gAMA_fixed, %function
.global png_write_gAMA
.type png_write_gAMA, %function
.global png_write_IEND
.type png_write_IEND, %function
.global png_write_IDAT
.type png_write_IDAT, %function
.global png_write_finish_row
.type png_write_finish_row, %function
.global png_write_filtered_row
.type png_write_filtered_row, %function
.global png_write_find_filter
.type png_write_find_filter, %function
.global png_write_IHDR
.type png_write_IHDR, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_save_uint_32:
    mov r3, r1, lsr #24
    mov r2, r1, lsr #16
    mov ip, r1, lsr #8
    strb r1, [r0, #3]
    strb r3, [r0]
    strb r2, [r0, #1]
    strb ip, [r0, #2]
    bx lr
png_save_int_32:
    mov r3, r1, asr #24
    mov r2, r1, asr #16
    mov ip, r1, asr #8
    strb r1, [r0, #3]
    strb r3, [r0]
    strb r2, [r0, #1]
    strb ip, [r0, #2]
    bx lr
png_save_uint_16:
    mov r3, r1, lsr #8
    strb r1, [r0, #1]
    strb r3, [r0]
    bx lr
png_do_write_interlace:
    cmp r2, #5
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    mov r7, r2
    mov sl, r0
    mov r8, r1
    bgt .Lsec01_00000240
    ldrb r2, [r0, #11]
    cmp r2, #2
    beq .Lsec01_000000f4
    cmp r2, #4
    beq .Lsec01_00000160
    ldr r3, [pc, #452]
    cmp r2, #1
    ldr r9, [r0]
    ldrne r5, [r3, r7, lsl #2]
    movne r6, r2, lsr #3
    movne r4, r1
    bne .Lsec01_000001e8
    ldr r2, [r3, r7, lsl #2]
    mov ip, r1
    mov r0, #7
    mov lr, #0
    b .Lsec01_000000dc
.Lsec01_000000ac:
    ldrb r3, [r8, r2, lsr #3]
    mov r3, r3, asr r1
    and r3, r3, #1
    orr lr, lr, r3, lsl r0
    ldr r3, [pc, #392]
    ldr r3, [r3, r7, lsl #2]
    cmp r0, #0
    streqb lr, [ip], #1
    sub r0, r0, #1
    moveq lr, #0
    moveq r0, #7
    add r2, r2, r3
.Lsec01_000000dc:
    mvn r3, r2
    cmp r2, r9
    and r1, r3, #7
    bcc .Lsec01_000000ac
    cmp r0, #7
    b .Lsec01_00000158
.Lsec01_000000f4:
    ldr r3, [pc, #332]
    ldr r4, [r0]
    ldr r2, [r3, r7, lsl #2]
    mov ip, r1
    mov r0, #6
    mov lr, #0
    b .Lsec01_00000140
.Lsec01_00000110:
    ldrb r3, [r8, r2, lsr #2]
    mov r3, r3, asr r1
    and r3, r3, #3
    orr lr, lr, r3, lsl r0
    ldr r3, [pc, #292]
    ldr r3, [r3, r7, lsl #2]
    cmp r0, #0
    streqb lr, [ip], #1
    sub r0, r0, #2
    moveq lr, #0
    moveq r0, #6
    add r2, r2, r3
.Lsec01_00000140:
    mvn r3, r2
    and r3, r3, #3
    cmp r2, r4
    mov r1, r3, lsl #1
    bcc .Lsec01_00000110
    cmp r0, #6
.Lsec01_00000158:
    strneb lr, [ip]
    b .Lsec01_000001f8
.Lsec01_00000160:
    ldr r3, [pc, #224]
    ldr r4, [r0]
    ldr r1, [r3, r7, lsl #2]
    mov ip, r2
    mov r0, r8
    mov lr, #0
    b .Lsec01_000001ac
.Lsec01_0000017c:
    ldrb r3, [r8, r1, lsr #1]
    mov r3, r3, asr r2
    and r3, r3, #15
    orr lr, lr, r3, lsl ip
    ldr r3, [pc, #184]
    ldr r3, [r3, r7, lsl #2]
    cmp ip, #0
    streqb lr, [r0], #1
    sub ip, ip, #4
    moveq lr, #0
    moveq ip, #4
    add r1, r1, r3
.Lsec01_000001ac:
    mvn r3, r1
    and r3, r3, #1
    cmp r1, r4
    mov r2, r3, lsl #2
    bcc .Lsec01_0000017c
    cmp ip, #4
    strneb lr, [r0]
    b .Lsec01_000001f8
.Lsec01_000001cc:
    mla r1, r6, r5, r8
    cmp r4, r1
    add r4, r4, r6
.Lsec01_000001d8:
    blne memcpy
    ldr r3, [pc, #104]
    ldr r3, [r3, r7, lsl #2]
    add r5, r5, r3
.Lsec01_000001e8:
    cmp r5, r9
    mov r0, r4
    mov r2, r6
    bcc .Lsec01_000001cc
.Lsec01_000001f8:
    ldr r3, [pc, #76]
    ldr r1, [r3, r7, lsl #2]
    ldr r3, [pc, #64]
    ldr r0, [sl]
    ldr r3, [r3, r7, lsl #2]
    add r0, r1, r0
    rsb r0, r3, r0
    sub r0, r0, #1
.Lsec01_00000218:
    bl __aeabi_uidiv
    ldrb r3, [sl, #11]
    cmp r3, #7
    mulls r3, r0, r3
    movhi r3, r3, lsr #3
    str r0, [sl]
    mulhi r0, r3, r0
    addls r3, r3, #7
    movls r0, r3, lsr #3
    str r0, [sl, #4]
.Lsec01_00000240:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    bx lr
    .long png_pass_start
    .long png_pass_inc
.arm
png_write_start_row:
    stmdb sp!, {r4, r5, r6, lr}
    ldrb r2, [r0, #327]
    ldrb r3, [r0, #324]
    mul r3, r2, r3
    ldr r5, [r0, #228]
    cmp r3, #7
    mulle r3, r5, r3
    movgt r3, r3, lsr #3
    mulgt r3, r5, r3
    addle r3, r3, #7
    movle r3, r3, lsr #3
    add r5, r3, #1
    mov r1, r5
    mov r4, r0
.Lsec01_00000288:
    bl png_malloc
    mov r6, #0
    str r0, [r4, #264]
    strb r6, [r0]
    ldrb r3, [r4, #321]
    tst r3, #16
    beq .Lsec01_000002c0
    ldr r1, [r4, #244]
    mov r0, r4
    add r1, r1, #1
.Lsec01_000002b0:
    bl png_malloc
    mov r3, #1
    str r0, [r4, #268]
    strb r3, [r0]
.Lsec01_000002c0:
    ldrb r3, [r4, #321]
    tst r3, #224
    beq .Lsec01_00000368
    mov r1, r5
    mov r0, r4
.Lsec01_000002d4:
    bl png_malloc
    mov r1, r6
    str r0, [r4, #260]
    mov r2, r5
.Lsec01_000002e4:
    bl memset
    ldrb r3, [r4, #321]
    tst r3, #32
    beq .Lsec01_00000310
    ldr r1, [r4, #244]
    mov r0, r4
    add r1, r1, #1
.Lsec01_00000300:
    bl png_malloc
    mov r3, #2
    str r0, [r4, #272]
    strb r3, [r0]
.Lsec01_00000310:
    ldrb r3, [r4, #321]
    tst r3, #64
    beq .Lsec01_00000338
    ldr r1, [r4, #244]
    mov r0, r4
    add r1, r1, #1
.Lsec01_00000328:
    bl png_malloc
    mov r3, #3
    str r0, [r4, #276]
    strb r3, [r0]
.Lsec01_00000338:
    add r2, r4, #320
    add r2, r2, #1
    ldrsb r3, [r2]
    cmp r3, #0
    bge .Lsec01_00000368
    ldr r1, [r4, #244]
    mov r0, r4
    add r1, r1, #1
.Lsec01_00000358:
    bl png_malloc
    mov r3, #4
    str r0, [r4, #280]
    strb r3, [r0]
.Lsec01_00000368:
    ldrb r3, [r4, #319]
    cmp r3, #0
    beq .Lsec01_000003dc
    ldr r3, [r4, #140]
    ldr r5, [r4, #228]
    ldr r2, [r4, #232]
    tst r3, #2
    strne r2, [r4, #236]
    strne r5, [r4, #240]
    bne .Lsec01_000003ec
    ldr r3, [pc, #108]
    ldr r1, [r3]
    ldr r3, [pc, #104]
    ldr r3, [r3]
    add r0, r1, r2
    rsb r0, r3, r0
    sub r0, r0, #1
.Lsec01_000003ac:
    bl __aeabi_uidiv
    ldr r3, [pc, #84]
    ldr r1, [r3]
    ldr r3, [pc, #80]
    ldr r2, [r3]
    add r3, r1, r5
    rsb r3, r2, r3
    str r0, [r4, #236]
    sub r0, r3, #1
.Lsec01_000003d0:
    bl __aeabi_uidiv
    str r0, [r4, #240]
    b .Lsec01_000003ec
.Lsec01_000003dc:
    add r2, r4, #228
    ldmia r2, {r2, r3}
    str r3, [r4, #236]
    str r2, [r4, #240]
.Lsec01_000003ec:
    ldr r2, [r4, #204]
    ldr r3, [r4, #200]
    str r2, [r4, #160]
    str r3, [r4, #156]
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long png_pass_yinc
    .long png_pass_ystart
    .long png_pass_inc
    .long png_pass_start
.arm
png_text_compress:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    sub sp, sp, #152
    ldr r7, [sp, #176]
    cmn r3, #1
    mov ip, r3
    mov r6, r0
    mov r3, #0
    moveq r0, r2
    str r3, [r7]
    mov r8, r1
    mov r5, r2
    str r3, [r7, #12]
    str r3, [r7, #8]
    str r3, [r7, #16]
    streq r1, [r7]
    streq r0, [r7, #4]
    beq .Lsec01_000006b8
    cmp ip, #2
    ble .Lsec01_00000480
    add r4, sp, #102
    ldr r1, [pc, #600]
    mov r2, ip
    mov r0, r4
.Lsec01_00000470:
    bl sprintf
    mov r0, r6
    mov r1, r4
.Lsec01_0000047c:
    bl png_warning
.Lsec01_00000480:
    add r2, r6, #200
    ldmia r2, {r2, r3}
    str r5, [r6, #148]
    str r8, [r6, #144]
    str r3, [r6, #160]
    str r2, [r6, #156]
.Lsec01_00000498:
    add r8, r6, #144
    mov r0, r8
    mov r1, #0
.Lsec01_000004a4:
    bl deflate
    cmp r0, #0
    beq .Lsec01_000004d8
    add r4, sp, #2
    mov r2, r0
    ldr r1, [pc, #520]
    mov r0, r4
.Lsec01_000004c0:
    bl sprintf
    ldr r1, [r6, #168]
    cmp r1, #0
    moveq r1, r4
    mov r0, r6
.Lsec01_000004d4:
    bl png_error
.Lsec01_000004d8:
    ldr r3, [r6, #160]
    cmp r3, #0
    bne .Lsec01_0000058c
    add r3, r7, #8
    ldmia r3, {r3, r5}
    cmp r3, r5
    blt .Lsec01_00000540
    ldr r4, [r7, #16]
    add r3, r3, #4
    cmp r4, #0
    str r3, [r7, #12]
    mov r1, r3, lsl #2
    beq .Lsec01_00000534
    mov r0, r6
.Lsec01_00000510:
    bl png_malloc
    mov r1, r4
    mov r2, r5, lsl #2
    str r0, [r7, #16]
.Lsec01_00000520:
    bl memcpy
    mov r0, r6
    mov r1, r4
.Lsec01_0000052c:
    bl png_free
    b .Lsec01_00000540
.Lsec01_00000534:
    mov r0, r6
.Lsec01_00000538:
    bl png_malloc
    str r0, [r7, #16]
.Lsec01_00000540:
    ldr r1, [r6, #204]
    mov r0, r6
    ldr r5, [r7, #8]
    ldr r4, [r7, #16]
.Lsec01_00000550:
    bl png_malloc
    ldr r2, [r7, #8]
    ldr r3, [r7, #16]
    str r0, [r4, r5, lsl #2]
    ldr r1, [r6, #200]
    ldr r0, [r3, r2, lsl #2]
    ldr r2, [r6, #204]
.Lsec01_0000056c:
    bl memcpy
    ldr r3, [r7, #8]
    add r3, r3, #1
    str r3, [r7, #8]
    ldr r3, [r6, #200]
    ldr r2, [r6, #204]
    str r3, [r6, #156]
    str r2, [r6, #160]
.Lsec01_0000058c:
    ldr r3, [r6, #148]
    cmp r3, #0
    bne .Lsec01_00000498
.Lsec01_00000598:
    mov r0, r8
    mov r1, #4
.Lsec01_000005a0:
    bl deflate
    cmp r0, #0
    bne .Lsec01_00000664
    ldr r3, [r6, #160]
    cmp r3, #0
    bne .Lsec01_00000598
    add r3, r7, #8
    ldmia r3, {r3, r5}
    cmp r3, r5
    blt .Lsec01_00000614
    ldr r4, [r7, #16]
    add r3, r3, #4
    cmp r4, #0
    str r3, [r7, #12]
    mov r1, r3, lsl #2
    beq .Lsec01_00000608
    mov r0, r6
.Lsec01_000005e4:
    bl png_malloc
    mov r1, r4
    mov r2, r5, lsl #2
    str r0, [r7, #16]
.Lsec01_000005f4:
    bl memcpy
    mov r0, r6
    mov r1, r4
.Lsec01_00000600:
    bl png_free
    b .Lsec01_00000614
.Lsec01_00000608:
    mov r0, r6
.Lsec01_0000060c:
    bl png_malloc
    str r0, [r7, #16]
.Lsec01_00000614:
    ldr r1, [r6, #204]
    mov r0, r6
    ldr r5, [r7, #8]
    ldr r4, [r7, #16]
.Lsec01_00000624:
    bl png_malloc
    ldr r2, [r7, #8]
    ldr r3, [r7, #16]
    str r0, [r4, r5, lsl #2]
    ldr r1, [r6, #200]
    ldr r0, [r3, r2, lsl #2]
    ldr r2, [r6, #204]
.Lsec01_00000640:
    bl memcpy
    ldr r3, [r7, #8]
    add r3, r3, #1
    str r3, [r7, #8]
    ldr r3, [r6, #200]
    ldr r2, [r6, #204]
    str r3, [r6, #156]
    str r2, [r6, #160]
    b .Lsec01_00000598
.Lsec01_00000664:
    cmp r0, #1
    beq .Lsec01_00000698
    add r4, sp, #2
    mov r2, r0
    ldr r1, [pc, #80]
    mov r0, r4
.Lsec01_0000067c:
    bl sprintf
    ldr r1, [r6, #168]
    cmp r1, #0
    moveq r1, r4
    mov r0, r6
.Lsec01_00000690:
    bl png_error
    b .Lsec01_00000598
.Lsec01_00000698:
    ldr r0, [r6, #204]
    ldr r3, [r7, #8]
    mul r2, r3, r0
    ldr r1, [r6, #160]
    cmp r1, r0
    rsbcc r3, r1, r0
    addcc r2, r2, r3
    mov r0, r2
.Lsec01_000006b8:
    add sp, sp, #152
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long .Lsec05_00000000
    .long .Lsec05_0000001c
    .long .Lsec05_0000002c
.arm
png_check_keyword:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    mov r4, #0
    subs r6, r1, #0
    sub sp, sp, #44
    mov r8, r2
    mov r7, r0
    str r4, [r2]
    beq .Lsec01_00000700
    mov r0, r6
.Lsec01_000006f4:
    bl strlen
    subs r5, r0, #0
    bne .Lsec01_0000070c
.Lsec01_00000700:
    ldr r1, [pc, #436]
    mov r0, r7
    b .Lsec01_00000730
.Lsec01_0000070c:
    mov r0, r7
    add r1, r5, #2
.Lsec01_00000714:
    bl png_malloc_warn
    cmp r0, #0
    mov r4, r0
    str r0, [r8]
    bne .Lsec01_00000768
    ldr r1, [pc, #400]
    mov r0, r7
.Lsec01_00000730:
    bl png_warning
    mov r5, r4
    b .Lsec01_000008ac
.Lsec01_0000073c:
    cmp ip, #33
    cmphi r3, #31
    bhi .Lsec01_0000075c
.Lsec01_00000748:
    bl sprintf
    mov r0, r7
    mov r1, sp
.Lsec01_00000754:
    bl png_warning
    mov r3, #32
.Lsec01_0000075c:
    strb r3, [r4]
    add r6, r6, #1
    add r4, r4, #1
.Lsec01_00000768:
    ldrb r3, [r6]
    cmp r3, #0
    mov sl, sp
    mov r0, sp
    ldr r1, [pc, #324]
    mov r2, r3
    sub ip, r3, #127
    bne .Lsec01_0000073c
    strb r3, [r4]
    ldr r3, [r8]
    add r4, r5, r3
    ldrb r3, [r4, #-1]
    cmp r3, #32
    bne .Lsec01_000007cc
    mov r0, r7
    ldr r1, [pc, #284]
.Lsec01_000007a8:
    bl png_warning
    mov r2, r4
    b .Lsec01_000007c0
.Lsec01_000007b4:
    mov r3, #0
    strb r3, [r2, #-1]!
    sub r5, r5, #1
.Lsec01_000007c0:
    ldrb r3, [r2, #-1]
    cmp r3, #32
    beq .Lsec01_000007b4
.Lsec01_000007cc:
    ldr r4, [r8]
    ldrb r3, [r4]
    cmp r3, #32
    bne .Lsec01_00000800
    mov r0, r7
    ldr r1, [pc, #228]
.Lsec01_000007e4:
    bl png_warning
    b .Lsec01_000007f4
.Lsec01_000007ec:
    add r4, r4, #1
    sub r5, r5, #1
.Lsec01_000007f4:
    ldrb r3, [r4]
    cmp r3, #32
    beq .Lsec01_000007ec
.Lsec01_00000800:
    mov ip, #0
    ldr r2, [r8]
    mov r0, ip
    b .Lsec01_00000844
.Lsec01_00000810:
    cmp r6, #32
    movne r3, #0
    moveq r3, #1
    tst r3, r1
    strneb r6, [r2], #1
    movne r0, #1
    bne .Lsec01_00000840
    cmp r3, #0
    streqb r6, [r2], #1
    subne r5, r5, #1
    movne ip, #1
    moveq r0, r3
.Lsec01_00000840:
    add r4, r4, #1
.Lsec01_00000844:
    ldrb r6, [r4]
    cmp r6, #0
    eor r1, r0, #1
    bne .Lsec01_00000810
    cmp ip, #0
    strb r6, [r2]
    movne r0, r7
    ldrne r1, [pc, #104]
.Lsec01_00000864:
    blne png_warning
    cmp r5, #0
    bne .Lsec01_00000890
    mov r0, r7
    ldr r1, [r8]
.Lsec01_00000878:
    bl png_free
    str r5, [r8]
    mov r0, r7
    ldr r1, [pc, #72]
.Lsec01_00000888:
    bl png_warning
    b .Lsec01_000008ac
.Lsec01_00000890:
    cmp r5, #79
    bls .Lsec01_000008ac
    mov r0, r7
    ldr r1, [pc, #52]
.Lsec01_000008a0:
    bl png_warning
    str r6, [r8, #316]
    mov r5, #79
.Lsec01_000008ac:
    mov r0, r5
    add sp, sp, #44
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long .Lsec05_0000003c
    .long .Lsec05_00000050
    .long .Lsec05_00000078
    .long .Lsec05_0000009c
    .long .Lsec05_000000c4
    .long .Lsec05_000000e8
    .long .Lsec05_00000114
    .long .Lsec05_00000128
.arm
png_write_sig:
    stmdb sp!, {r4, r5, lr}
    sub sp, sp, #12
    mov r5, r0
    ldr r1, [pc, #64]
    mov r2, #8
    mov r0, sp
.Lsec01_000008f4:
    bl memcpy
    ldrb r2, [r5, #328]
    mov r0, r5
    add r1, sp, r2
    rsb r2, r2, #8
.Lsec01_00000908:
    bl png_write_data
    ldrb r3, [r5, #328]
    cmp r3, #2
    ldrls r3, [r5, #132]
    mov r4, sp
    orrls r3, r3, #4096
    strls r3, [r5, #132]
    add sp, sp, #12
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec06_00000000
.arm
png_write_chunk_end:
    stmdb sp!, {r4, r5, lr}
    sub sp, sp, #12
    mov r4, r0
    add r5, sp, #4
    mov r0, r5
    ldr r1, [r4, #300]
.Lsec01_0000094c:
    bl png_save_uint_32
    mov r0, r4
    mov r1, r5
    mov r2, #4
.Lsec01_0000095c:
    bl png_write_data
    add sp, sp, #12
    ldmia sp!, {r4, r5, lr}
    bx lr
png_write_chunk_data:
    cmp r1, #0
    cmpne r2, #0
    stmdb sp!, {r4, r5, r6, lr}
    mov r4, r0
    mov r5, r1
    mov r6, r2
    beq .Lsec01_0000099c
.Lsec01_00000988:
    bl png_calculate_crc
    mov r0, r4
    mov r1, r5
    mov r2, r6
.Lsec01_00000998:
    bl png_write_data
.Lsec01_0000099c:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
png_write_compressed_data_out:
    stmdb sp!, {r4, r5, r6, r7, lr}
    mov r5, r1
    ldr r1, [r1]
    cmp r1, #0
    sub sp, sp, #4
    mov r4, r0
    moveq r7, r1
    beq .Lsec01_00000a00
    ldr r2, [r5, #4]
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
.Lsec01_000009d0:
    b png_write_chunk_data
.Lsec01_000009d4:
    ldr r3, [r5, #16]
    ldr r2, [r4, #204]
    ldr r1, [r3, r6]
.Lsec01_000009e0:
    bl png_write_chunk_data
    ldr r3, [r5, #16]
    mov r0, r4
    ldr r1, [r3, r6]
.Lsec01_000009f0:
    bl png_free
    ldr r2, [r5, #16]
    mov r3, #0
    str r3, [r2, r6]
.Lsec01_00000a00:
    ldr r3, [r5, #8]
    cmp r7, r3
    mov r6, r7, lsl #2
    mov r0, r4
    add r7, r7, #1
    blt .Lsec01_000009d4
    ldr r3, [r5, #12]
    cmp r3, #0
    ldrne r1, [r5, #16]
.Lsec01_00000a24:
    blne png_free
    ldr r3, [r4, #160]
    ldr r2, [r4, #204]
    mov r6, #0
    cmp r3, r2
    str r6, [r5, #16]
    rsbcc r2, r3, r2
    movcc r0, r4
    ldrcc r1, [r4, #200]
.Lsec01_00000a48:
    blcc png_write_chunk_data
    add r0, r4, #144
.Lsec01_00000a50:
    bl deflateReset
    str r6, [r4, #188]
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
png_write_chunk_start:
    stmdb sp!, {r4, r5, r6, lr}
    sub sp, sp, #8
    add r4, sp, #4
    mov r5, r0
    mov r6, r1
    mov r0, r4
    mov r1, r2
.Lsec01_00000a80:
    bl png_save_uint_32
    mov r0, r5
    mov r1, r4
    mov r2, #4
.Lsec01_00000a90:
    bl png_write_data
    mov r1, r6
    mov r0, r5
    mov r2, #4
.Lsec01_00000aa0:
    bl png_write_data
    mov r0, r5
.Lsec01_00000aa8:
    bl png_reset_crc
    mov r0, r5
    mov r1, r6
    mov r2, #4
.Lsec01_00000ab8:
    bl png_calculate_crc
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
png_write_sCAL:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr r4, [pc, #172]
    sub sp, sp, #76
    add r5, sp, #7
    mov r6, r0
    add r7, sp, #39
    strb r1, [sp, #71]
    mov r0, r5
    mov r1, r4
.Lsec01_00000aec:
    bl sprintf
    add r2, sp, #96
    ldmia r2, {r2, r3}
    mov r1, r4
    mov r0, r7
.Lsec01_00000b00:
    bl sprintf
    mov r0, r7
.Lsec01_00000b08:
    bl strlen
    mov r4, r0
    mov r0, r5
.Lsec01_00000b14:
    bl strlen
    add r2, r0, #2
    add r2, r4, r2
    mov r0, r6
    ldr r1, [pc, #88]
.Lsec01_00000b28:
    bl png_write_chunk_start
    add r1, sp, #71
    mov r0, r6
    mov r2, #1
.Lsec01_00000b38:
    bl png_write_chunk_data
    mov r0, r5
.Lsec01_00000b40:
    bl strlen
    mov r1, r5
    add r2, r0, #1
    mov r0, r6
.Lsec01_00000b50:
    bl png_write_chunk_data
    mov r0, r7
.Lsec01_00000b58:
    bl strlen
    mov r1, r7
    mov r2, r0
    mov r0, r6
.Lsec01_00000b68:
    bl png_write_chunk_data
    mov r0, r6
.Lsec01_00000b70:
    bl png_write_chunk_end
    add sp, sp, #76
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000154
    .long png_sCAL
.arm
png_write_pCAL:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    sub sp, sp, #28
    ldr ip, [sp, #64]
    cmp ip, #3
    mov r4, r1
    str r2, [sp, #4]
    str r3, [sp]
    mov r5, r0
    ldr r9, [sp, #68]
    ldrgt r1, [pc, #320]
.Lsec01_00000bb0:
    blgt png_warning
    mov r1, r4
    add r2, sp, #20
    mov r0, r5
.Lsec01_00000bc0:
    bl png_check_keyword
    mov r4, r0
    ldr r0, [sp, #72]
.Lsec01_00000bcc:
    bl strlen
    add r3, r4, #11
    cmp r9, #0
    moveq fp, r0
    addne fp, r0, #1
    mov r1, r9, lsl #2
    mov r0, r5
    add r6, fp, r3
.Lsec01_00000bec:
    bl png_malloc
    mov r7, #0
    add sl, r4, #1
    mov r8, r0
    mov r4, r7
    b .Lsec01_00000c2c
.Lsec01_00000c04:
    ldr r3, [sp, #76]
    ldr r0, [r4, r3]
.Lsec01_00000c0c:
    bl strlen
    sub r3, r9, #1
    cmp r7, r3
    addne r0, r0, #1
    str r0, [r4, r8]
    add r6, r6, r0
    add r7, r7, #1
    add r4, r4, #4
.Lsec01_00000c2c:
    cmp r7, r9
    blt .Lsec01_00000c04
    mov r2, r6
    ldr r1, [pc, #184]
    mov r0, r5
.Lsec01_00000c40:
    bl png_write_chunk_start
    add r4, sp, #10
    mov r2, sl
    mov r0, r5
    ldr r1, [sp, #20]
.Lsec01_00000c54:
    bl png_write_chunk_data
    mov r0, r4
    ldr r1, [sp, #4]
.Lsec01_00000c60:
    bl png_save_int_32
    add r0, r4, #4
    ldr r1, [sp]
.Lsec01_00000c6c:
    bl png_save_int_32
    ldr ip, [sp, #64]
    mov r1, r4
    mov r0, r5
    mov r2, #10
    strb ip, [sp, #18]
    strb r9, [sp, #19]
.Lsec01_00000c88:
    bl png_write_chunk_data
    mov r0, r5
    ldr r1, [sp, #72]
    mov r2, fp
.Lsec01_00000c98:
    bl png_write_chunk_data
    mov r0, r5
    ldr r1, [sp, #20]
.Lsec01_00000ca4:
    bl png_free
    mov r6, #0
    mov r4, r6
    b .Lsec01_00000cc8
.Lsec01_00000cb4:
    ldr r3, [sp, #76]
    ldr r2, [r4, r8]
    ldr r1, [r4, r3]
.Lsec01_00000cc0:
    bl png_write_chunk_data
    add r4, r4, #4
.Lsec01_00000cc8:
    cmp r6, r9
    mov r0, r5
    add r6, r6, #1
    blt .Lsec01_00000cb4
    mov r1, r8
.Lsec01_00000cdc:
    bl png_free
    mov r0, r5
.Lsec01_00000ce4:
    bl png_write_chunk_end
    add sp, sp, #28
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_0000015c
    .long png_pCAL
.arm
png_write_tEXt:
    stmdb sp!, {r4, r5, r6, r7, lr}
    cmp r1, #0
    sub sp, sp, #12
    mov r6, r2
    mov r5, r0
    add r2, sp, #4
    beq .Lsec01_00000d24
.Lsec01_00000d18:
    bl png_check_keyword
    subs r3, r0, #0
    bne .Lsec01_00000d34
.Lsec01_00000d24:
    mov r0, r5
    ldr r1, [pc, #168]
.Lsec01_00000d2c:
    bl png_warning
    b .Lsec01_00000dcc
.Lsec01_00000d34:
    add r4, r3, #1
    cmp r6, #0
    mov r2, r4
    mov r0, r5
    ldr r1, [pc, #144]
    beq .Lsec01_00000db8
    ldrb r3, [r6]
    cmp r3, #0
    mov r7, r4
    beq .Lsec01_00000db8
    mov r0, r6
.Lsec01_00000d60:
    bl strlen
    ldr r1, [pc, #112]
    mov r4, r0
    add r2, r0, r7
    mov r0, r5
.Lsec01_00000d74:
    bl png_write_chunk_start
    mov r0, r5
    mov r2, r7
    ldr r1, [sp, #4]
.Lsec01_00000d84:
    bl png_write_chunk_data
    cmp r4, #0
    mov r1, r6
    mov r2, r4
    mov r0, r5
    beq .Lsec01_00000da0
.Lsec01_00000d9c:
    bl png_write_chunk_data
.Lsec01_00000da0:
    mov r0, r5
.Lsec01_00000da4:
    bl png_write_chunk_end
    mov r0, r5
    ldr r1, [sp, #4]
.Lsec01_00000db0:
    bl png_free
    b .Lsec01_00000dcc
.Lsec01_00000db8:
    bl png_write_chunk_start
    ldr r1, [sp, #4]
    mov r0, r5
    mov r2, r4
    b .Lsec01_00000d9c
.Lsec01_00000dcc:
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000188
    .long png_tEXt
.arm
png_write_zTXt:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    subs sl, r1, #0
    sub sp, sp, #40
    mov r6, r2
    mov r5, r0
    add r2, sp, #32
    ldr r7, [sp, #72]
    beq .Lsec01_00000e0c
.Lsec01_00000e00:
    bl png_check_keyword
    subs r8, r0, #0
    bne .Lsec01_00000e1c
.Lsec01_00000e0c:
    mov r0, r5
    ldr r1, [pc, #204]
.Lsec01_00000e14:
    bl png_warning
    b .Lsec01_00000ed8
.Lsec01_00000e1c:
    mov r3, #0
    cmp r6, r3
    mov r2, r6
    mov r0, r5
    beq .Lsec01_00000e44
    ldrb r1, [r6]
    cmn r7, #1
    cmpne r1, r3
    add r9, sp, #12
    bne .Lsec01_00000e5c
.Lsec01_00000e44:
    ldr r1, [sp, #32]
.Lsec01_00000e48:
    bl png_write_tEXt
    mov r0, r5
    ldr r1, [sp, #32]
.Lsec01_00000e54:
    bl png_free
    b .Lsec01_00000ed8
.Lsec01_00000e5c:
    mov r0, r6
.Lsec01_00000e60:
    bl strlen
    ldr r1, [sp, #32]
    mov r4, r0
    mov r0, r5
.Lsec01_00000e70:
    bl png_free
    mov r3, r7
    mov r1, r6
    mov r2, r4
    mov r0, r5
    str r9, [sp]
    bl png_text_compress
    add r2, r0, #2
    add r2, r8, r2
    mov r0, r5
    ldr r1, [pc, #72]
.Lsec01_00000e9c:
    bl png_write_chunk_start
    mov r0, r5
    mov r1, sl
    add r2, r8, #1
.Lsec01_00000eac:
    bl png_write_chunk_data
    add r1, sp, #40
    strb r7, [r1, #-1]!
    mov r2, #1
    mov r0, r5
.Lsec01_00000ec0:
    bl png_write_chunk_data
    mov r0, r5
    mov r1, r9
    bl png_write_compressed_data_out
    mov r0, r5
.Lsec01_00000ed4:
    bl png_write_chunk_end
.Lsec01_00000ed8:
    add sp, sp, #40
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    bx lr
    .long .Lsec05_000001a4
    .long png_zTXt
.arm
png_write_hIST:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    mov r3, #308
    ldrh r3, [r0, r3]
    cmp r2, r3
    sub sp, sp, #8
    mov r6, r0
    mov r4, r2
    mov r8, r1
    ble .Lsec01_00000f1c
    ldr r1, [pc, #92]
.Lsec01_00000f14:
    bl png_warning
    b .Lsec01_00000f68
.Lsec01_00000f1c:
    ldr r1, [pc, #84]
    mov r2, r2, lsl #1
.Lsec01_00000f24:
    bl png_write_chunk_start
    mov r5, #0
    b .Lsec01_00000f48
.Lsec01_00000f30:
    ldrh r1, [r3, r8]
.Lsec01_00000f34:
    bl png_save_uint_16
    mov r0, r6
    mov r1, r7
    mov r2, #2
.Lsec01_00000f44:
    bl png_write_chunk_data
.Lsec01_00000f48:
    add r7, sp, #5
    cmp r5, r4
    mov r3, r5, lsl #1
    mov r0, r7
    add r5, r5, #1
    blt .Lsec01_00000f30
    mov r0, r6
.Lsec01_00000f64:
    bl png_write_chunk_end
.Lsec01_00000f68:
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long .Lsec05_000001c0
    .long png_hIST
.arm
png_write_sPLT:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    ldrb r3, [r1, #4]
    mov r6, r1
    ldr r1, [r1]
    cmp r3, #8
    movne r8, #10
    moveq r8, #6
    cmp r1, #0
    sub sp, sp, #16
    mov r7, r0
    ldr r5, [r6, #12]
    beq .Lsec01_00000fbc
    add r2, sp, #12
.Lsec01_00000fb0:
    bl png_check_keyword
    subs r4, r0, #0
    bne .Lsec01_00000fcc
.Lsec01_00000fbc:
    mov r0, r7
    ldr r1, [pc, #256]
.Lsec01_00000fc4:
    bl png_warning
    b .Lsec01_000010bc
.Lsec01_00000fcc:
    add r3, r4, #2
    mla r2, r5, r8, r3
    ldr r1, [pc, #240]
    mov r0, r7
.Lsec01_00000fdc:
    bl png_write_chunk_start
    add r2, r4, #1
    mov r0, r7
    ldr r1, [sp, #12]
.Lsec01_00000fec:
    bl png_write_chunk_data
    mov r0, r7
    add r1, r6, #4
    mov r2, #1
.Lsec01_00000ffc:
    bl png_write_chunk_data
    ldr r4, [r6, #8]
    b .Lsec01_00001090
.Lsec01_00001008:
    ldrb r3, [r6, #4]
    ldrh r2, [r4]
    add r5, sp, #2
    cmp r3, #8
    add r0, r5, #4
    mov r1, r2
    bne .Lsec01_00001044
    strb r2, [sp, #2]
    ldrh r3, [r4, #2]
    strb r3, [sp, #3]
    ldrh r3, [r4, #4]
    strb r3, [sp, #4]
    ldrh r3, [r4, #6]
    strb r3, [sp, #5]
    b .Lsec01_00001074
.Lsec01_00001044:
    mov r0, r5
.Lsec01_00001048:
    bl png_save_uint_16
    ldrh r1, [r4, #2]
    add r0, r5, #2
.Lsec01_00001054:
    bl png_save_uint_16
    ldrh r1, [r4, #4]
    add r0, r5, #4
.Lsec01_00001060:
    bl png_save_uint_16
    add r0, r5, #6
    ldrh r1, [r4, #6]
.Lsec01_0000106c:
    bl png_save_uint_16
    add r0, r5, #8
.Lsec01_00001074:
    ldrh r1, [r4, #8]
.Lsec01_00001078:
    bl png_save_uint_16
    mov r0, r7
    add r1, sp, #2
    mov r2, r8
    add r4, r4, #10
.Lsec01_0000108c:
    bl png_write_chunk_data
.Lsec01_00001090:
    ldr r1, [r6, #12]
    ldr r2, [r6, #8]
    mov r3, #10
    mla r3, r1, r3, r2
    cmp r4, r3
    bcc .Lsec01_00001008
    mov r0, r7
.Lsec01_000010ac:
    bl png_write_chunk_end
    mov r0, r7
    ldr r1, [sp, #12]
.Lsec01_000010b8:
    bl png_free
.Lsec01_000010bc:
    add sp, sp, #16
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long .Lsec05_000001f0
    .long png_sPLT
.arm
png_write_iCCP:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    cmp r1, #0
    sub sp, sp, #36
    mov r4, r2
    mov r8, r3
    mov r5, r0
    ldr sl, [sp, #64]
    beq .Lsec01_00001100
    add r2, sp, #28
.Lsec01_000010f4:
    bl png_check_keyword
    subs r7, r0, #0
    bne .Lsec01_00001110
.Lsec01_00001100:
    mov r0, r5
    ldr r1, [pc, #260]
.Lsec01_00001108:
    bl png_warning
    b .Lsec01_00001204
.Lsec01_00001110:
    cmp r4, #0
    movne r0, r5
    ldrne r1, [pc, #244]
.Lsec01_0000111c:
    blne png_warning
    cmp r8, #0
    beq .Lsec01_000011ac
    cmp sl, #0
    add r6, r7, #2
    beq .Lsec01_000011d4
    mov r1, r8
    mov r3, #0
    mov r2, sl
    add r8, sp, #8
    mov r0, r5
    str r8, [sp]
    bl png_text_compress
    mov r4, r0
    ldr r1, [pc, #188]
    mov r0, r5
    add r2, r4, r6
.Lsec01_00001160:
    bl png_write_chunk_start
    ldr r3, [sp, #28]
    mov r2, #0
    add r3, r3, r7
    strb r2, [r3, #1]
    mov r0, r5
    mov r2, r6
    ldr r1, [sp, #28]
.Lsec01_00001180:
    bl png_write_chunk_data
    cmp r4, #0
    movne r1, r8
    movne r0, r5
    blne png_write_compressed_data_out
.Lsec01_00001194:
    mov r0, r5
.Lsec01_00001198:
    bl png_write_chunk_end
    mov r0, r5
    ldr r1, [sp, #28]
.Lsec01_000011a4:
    bl png_free
    b .Lsec01_00001204
.Lsec01_000011ac:
    add r4, r7, #2
    mov r2, r4
    mov r0, r5
    ldr r1, [pc, #88]
.Lsec01_000011bc:
    bl png_write_chunk_start
    ldr r3, [sp, #28]
    mov r2, r4
    add r3, r3, r7
    strb r8, [r3, #1]
    b .Lsec01_000011f4
.Lsec01_000011d4:
    mov r2, r6
    mov r0, r5
    ldr r1, [pc, #52]
.Lsec01_000011e0:
    bl png_write_chunk_start
    ldr r3, [sp, #28]
    add r3, r3, r7
    strb sl, [r3, #1]
    mov r2, r6
.Lsec01_000011f4:
    mov r0, r5
    ldr r1, [sp, #28]
.Lsec01_000011fc:
    bl png_write_chunk_data
    b .Lsec01_00001194
.Lsec01_00001204:
    add sp, sp, #36
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long .Lsec05_0000020c
    .long .Lsec05_00000228
    .long png_iCCP
.arm
png_write_PLTE:
    stmdb sp!, {r4, r5, r6, r7, lr}
    sub r3, r2, #1
    cmp r3, #255
    sub sp, sp, #12
    mov r6, r2
    mov r5, r1
    mov r4, r0
    bls .Lsec01_00001254
    ldrb r3, [r0, #322]
    cmp r3, #3
    ldrne r1, [pc, #156]
    bne .Lsec01_00001268
    ldr r1, [pc, #148]
.Lsec01_00001250:
    bl png_error
.Lsec01_00001254:
    ldrb r3, [r4, #322]
    tst r3, #2
    bne .Lsec01_00001270
    ldr r1, [pc, #132]
    mov r0, r4
.Lsec01_00001268:
    bl png_warning
    b .Lsec01_000012dc
.Lsec01_00001270:
    mov r3, #308
    strh r6, [r4, r3]
    mov r3, #3
    mul r2, r6, r3
    mov r0, r4
    ldr r1, [pc, #100]
.Lsec01_00001288:
    bl png_write_chunk_start
    mov r7, #0
    b .Lsec01_000012b0
.Lsec01_00001294:
    ldrb r3, [r5, #-3]
    ldrb ip, [r5, #-2]
    ldrb lr, [r5, #-1]
    strb r3, [sp, #5]
    strb ip, [sp, #6]
    strb lr, [sp, #7]
.Lsec01_000012ac:
    bl png_write_chunk_data
.Lsec01_000012b0:
    mov r2, #3
    cmp r7, r6
    mov r0, r4
    add r1, sp, #5
    add r7, r7, #1
    add r5, r5, r2
    bne .Lsec01_00001294
.Lsec01_000012cc:
    bl png_write_chunk_end
    ldr r3, [r4, #132]
    orr r3, r3, #2
    str r3, [r4, #132]
.Lsec01_000012dc:
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000250
    .long .Lsec05_00000274
    .long png_PLTE
.arm
png_write_chunk:
    stmdb sp!, {r4, r5, r6, lr}
    mov r4, r3
    mov r5, r0
    mov r6, r2
    mov r2, r3
.Lsec01_00001308:
    bl png_write_chunk_start
    mov r0, r5
    mov r1, r6
    mov r2, r4
.Lsec01_00001318:
    bl png_write_chunk_data
    mov r0, r5
    ldmia sp!, {r4, r5, r6, lr}
.Lsec01_00001324:
    b png_write_chunk_end
png_write_tIME:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    mov r5, r1
    ldrb r3, [r5, #2]
    sub r3, r3, #1
    cmp r3, #11
    sub sp, sp, #8
    ldr r1, [pc, #144]
    mov r7, r0
    bhi .Lsec01_0000137c
    ldrb r3, [r5, #3]
    cmp r3, #31
    bhi .Lsec01_0000137c
    cmp r3, #0
    beq .Lsec01_0000137c
    ldrb r3, [r5, #4]
    cmp r3, #23
    bhi .Lsec01_0000137c
    ldrb r3, [r5, #6]
    cmp r3, #60
    add r8, sp, #1
    bls .Lsec01_00001384
.Lsec01_0000137c:
    bl png_warning
    b .Lsec01_000013cc
.Lsec01_00001384:
    ldrh r1, [r5]
    mov r0, r8
.Lsec01_0000138c:
    bl png_save_uint_16
    ldrb r6, [r5, #6]
    ldrb ip, [r5, #2]
    ldrb lr, [r5, #3]
    ldrb r4, [r5, #4]
    ldrb r5, [r5, #5]
    mov r0, r7
    mov r2, r8
    ldr r1, [pc, #40]
    mov r3, #7
    strb ip, [sp, #3]
    strb lr, [sp, #4]
    strb r4, [sp, #5]
    strb r5, [sp, #6]
    strb r6, [sp, #7]
.Lsec01_000013c8:
    bl png_write_chunk
.Lsec01_000013cc:
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long .Lsec05_000002ac
    .long png_tIME
.arm
png_write_pHYs:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    cmp r3, #1
    sub sp, sp, #16
    mov r4, r1
    add r5, sp, #7
    mov r8, r3
    mov r7, r2
    ldr r1, [pc, #64]
    mov r6, r0
.Lsec01_00001404:
    blgt png_warning
    mov r1, r4
    mov r0, r5
.Lsec01_00001410:
    bl png_save_uint_32
    mov r1, r7
    add r0, r5, #4
.Lsec01_0000141c:
    bl png_save_uint_32
    mov r0, r6
    mov r2, r5
    ldr r1, [pc, #24]
    mov r3, #9
    strb r8, [sp, #15]
.Lsec01_00001434:
    bl png_write_chunk
    add sp, sp, #16
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long .Lsec05_000002d4
    .long png_pHYs
.arm
png_write_oFFs:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    cmp r3, #1
    sub sp, sp, #16
    mov r4, r1
    add r5, sp, #7
    mov r8, r3
    mov r7, r2
    ldr r1, [pc, #64]
    mov r6, r0
.Lsec01_00001470:
    blgt png_warning
    mov r1, r4
    mov r0, r5
.Lsec01_0000147c:
    bl png_save_int_32
    mov r1, r7
    add r0, r5, #4
.Lsec01_00001488:
    bl png_save_int_32
    mov r0, r6
    mov r2, r5
    ldr r1, [pc, #24]
    mov r3, #9
    strb r8, [sp, #15]
.Lsec01_000014a0:
    bl png_write_chunk
    add sp, sp, #16
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long .Lsec05_000002fc
    .long png_oFFs
.arm
png_write_bKGD:
    stmdb sp!, {r4, r5, r6, lr}
    cmp r2, #3
    sub sp, sp, #8
    mov r5, r1
    mov r6, r0
    bne .Lsec01_000014fc
    mov r3, #308
    ldrb ip, [r1]
    ldrh r3, [r0, r3]
    cmp r3, ip
    ldrcc r1, [pc, #208]
    bcc .Lsec01_00001558
    ldr r1, [pc, #204]
    add r2, sp, #2
    mov r3, #1
    strb ip, [sp, #2]
    b .Lsec01_000015a8
.Lsec01_000014fc:
    tst r2, #2
    beq .Lsec01_00001574
    add r4, sp, #2
    mov r0, r4
    ldrh r1, [r1, #2]
.Lsec01_00001510:
    bl png_save_uint_16
    add r0, r4, #2
    ldrh r1, [r5, #4]
.Lsec01_0000151c:
    bl png_save_uint_16
    add r0, r4, #4
    ldrh r1, [r5, #6]
.Lsec01_00001528:
    bl png_save_uint_16
    ldrb r3, [r6, #323]
    cmp r3, #8
    bne .Lsec01_00001560
    ldrb r3, [sp, #2]
    ldrb r2, [sp, #4]
    ldrb r1, [sp, #6]
    orr r3, r3, r2
    orrs r3, r3, r1
    beq .Lsec01_00001560
    ldr r1, [pc, #104]
    mov r0, r6
.Lsec01_00001558:
    bl png_warning
    b .Lsec01_000015ac
.Lsec01_00001560:
    ldr r1, [pc, #84]
    mov r0, r6
    add r2, sp, #2
    mov r3, #6
    b .Lsec01_000015a8
.Lsec01_00001574:
    ldrh r1, [r1, #8]
    ldrb r2, [r0, #323]
    mov r3, #1
    cmp r1, r3, lsl r2
    ldrge r1, [pc, #56]
    bge .Lsec01_00001558
    add r4, sp, #2
    mov r0, r4
.Lsec01_00001594:
    bl png_save_uint_16
    ldr r1, [pc, #28]
    mov r0, r6
    mov r2, r4
    mov r3, #2
.Lsec01_000015a8:
    bl png_write_chunk
.Lsec01_000015ac:
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_00000324
    .long png_bKGD
    .long .Lsec05_00000348
    .long .Lsec05_00000388
.arm
png_write_tRNS:
    stmdb sp!, {r4, r5, r6, lr}
    sub sp, sp, #8
    ldr lr, [sp, #24]
    cmp lr, #3
    mov r5, r2
    mov r6, r0
    bne .Lsec01_00001610
    cmp r3, #0
    ble .Lsec01_000015fc
    mov r2, #308
    ldrh r2, [r0, r2]
    cmp r3, r2
    ble .Lsec01_00001604
.Lsec01_000015fc:
    ldr r1, [pc, #212]
    b .Lsec01_000016c8
.Lsec01_00001604:
    mov r2, r1
    ldr r1, [pc, #204]
    b .Lsec01_000016c0
.Lsec01_00001610:
    cmp lr, #0
    bne .Lsec01_00001650
    ldrh r1, [r2, #8]
    ldrb r2, [r0, #323]
    mov r3, #1
    cmp r1, r3, lsl r2
    ldrge r1, [pc, #176]
    bge .Lsec01_000016c8
    add r4, sp, #2
    mov r0, r4
.Lsec01_00001638:
    bl png_save_uint_16
    ldr r1, [pc, #152]
    mov r0, r6
    mov r2, r4
    mov r3, #2
    b .Lsec01_000016c0
.Lsec01_00001650:
    cmp lr, #2
    ldrne r1, [pc, #136]
    bne .Lsec01_000016c8
    add r4, sp, #2
    ldrh r1, [r2, #2]
    mov r0, r4
.Lsec01_00001668:
    bl png_save_uint_16
    add r0, r4, #2
    ldrh r1, [r5, #4]
.Lsec01_00001674:
    bl png_save_uint_16
    add r0, r4, #4
    ldrh r1, [r5, #6]
.Lsec01_00001680:
    bl png_save_uint_16
    ldrb r3, [r6, #323]
    cmp r3, #8
    bne .Lsec01_000016b0
    ldrb r3, [sp, #2]
    ldrb r2, [sp, #4]
    ldrb r1, [sp, #6]
    orr r3, r3, r2
    orrs r3, r3, r1
    movne r0, r6
    ldrne r1, [pc, #56]
    bne .Lsec01_000016c8
.Lsec01_000016b0:
    ldr r1, [pc, #36]
    mov r0, r6
    add r2, sp, #2
    mov r3, #6
.Lsec01_000016c0:
    bl png_write_chunk
    b .Lsec01_000016cc
.Lsec01_000016c8:
    bl png_warning
.Lsec01_000016cc:
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_000003c8
    .long png_tRNS
    .long .Lsec05_000003f8
    .long .Lsec05_00000478
    .long .Lsec05_00000438
.arm
png_write_cHRM_fixed:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr r7, [pc, #344]
    sub sp, sp, #36
    cmp r2, r7
    cmple r1, r7
    mov r5, r2
    mov r4, r1
    mov r6, r3
    mov r8, r0
    add sl, sp, #72
    ldmia sl, {sl, fp}
    bgt .Lsec01_0000172c
    ldr r9, [pc, #304]
    add r3, r1, r2
    cmp r3, r9
    ble .Lsec01_00001754
.Lsec01_0000172c:
    ldr r1, [pc, #292]
.Lsec01_00001730:
    bl png_warning
    ldr r3, [pc, #288]
    ldr r3, [r3]
    mov r2, r4
    ldr r0, [r3, #12]
    ldr r1, [pc, #276]
    mov r3, r5
.Lsec01_0000174c:
    bl fprintf
    b .Lsec01_00001844
.Lsec01_00001754:
    mov r0, sp
.Lsec01_00001758:
    bl png_save_uint_32
    mov r1, r5
    add r0, sp, #4
.Lsec01_00001764:
    bl png_save_uint_32
    cmp sl, r7
    cmple r6, r7
    mov r4, sp
    bgt .Lsec01_00001784
    add r3, r6, sl
    cmp r3, r9
    ble .Lsec01_00001790
.Lsec01_00001784:
    ldr r1, [pc, #216]
    mov r0, r8
    b .Lsec01_000017cc
.Lsec01_00001790:
    mov r1, r6
    add r0, sp, #8
.Lsec01_00001798:
    bl png_save_uint_32
    mov r1, sl
    add r0, sp, #12
.Lsec01_000017a4:
    bl png_save_uint_32
    ldr r1, [sp, #80]
    cmp r1, r7
    cmple fp, r7
    bgt .Lsec01_000017c4
    add r3, fp, r1
    cmp r3, r9
    ble .Lsec01_000017d4
.Lsec01_000017c4:
    ldr r1, [pc, #156]
    mov r0, r8
.Lsec01_000017cc:
    bl png_warning
    b .Lsec01_00001844
.Lsec01_000017d4:
    mov r1, fp
    add r0, sp, #16
.Lsec01_000017dc:
    bl png_save_uint_32
    ldr r1, [sp, #80]
    add r0, sp, #20
.Lsec01_000017e8:
    bl png_save_uint_32
    add r2, sp, #84
    ldmia r2, {r2, r3}
    cmp r3, r7
    cmple r2, r7
    bgt .Lsec01_0000180c
    add r3, r2, r3
    cmp r3, r9
    ble .Lsec01_00001818
.Lsec01_0000180c:
    ldr r1, [pc, #88]
    mov r0, r8
    b .Lsec01_000017cc
.Lsec01_00001818:
    ldr r1, [sp, #84]
    add r0, sp, #24
.Lsec01_00001820:
    bl png_save_uint_32
    ldr r1, [sp, #88]
    add r0, sp, #28
.Lsec01_0000182c:
    bl png_save_uint_32
    mov r0, r8
    mov r2, sp
    ldr r1, [pc, #48]
    mov r3, #32
.Lsec01_00001840:
    bl png_write_chunk
.Lsec01_00001844:
    add sp, sp, #36
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x00013880
    .long 0x000186a0
    .long .Lsec05_000004a0
    .long _impure_ptr
    .long .Lsec05_000004cc
    .long .Lsec05_000004e8
    .long .Lsec05_00000510
    .long .Lsec05_0000053c
    .long png_cHRM
.arm
png_write_cHRM:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    mov r4, r2
    sub sp, sp, #52
    mov r5, r3
    str r0, [sp, #12]
    mov r2, #0
    mov r3, #0
    mov r0, r4
    mov r1, r5
.Lsec01_00001898:
    bl __aeabi_dcmplt
    cmp r0, #0
    add r6, sp, #88
    ldmia r6, {r6, r7}
    add r8, sp, #96
    ldmia r8, {r8, r9}
    add sl, sp, #104
    ldmia sl, {sl, fp}
    bne .Lsec01_00001938
    mov r0, r4
    mov r1, r5
    ldr r2, [pc, #1100]
    ldr r3, [pc, #1100]
.Lsec01_000018cc:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00001938
    mov r0, r6
    mov r1, r7
    mov r2, #0
    mov r3, #0
.Lsec01_000018e8:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00001938
    mov r0, r6
    mov r1, r7
    ldr r2, [pc, #1044]
    ldr r3, [pc, #1044]
.Lsec01_00001904:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00001938
    mov r2, r6
    mov r3, r7
    mov r0, r4
    mov r1, r5
.Lsec01_00001920:
    bl __aeabi_dadd
    mov r2, #0
    ldr r3, [pc, #1008]
.Lsec01_0000192c:
    bl __aeabi_dcmpgt
    cmp r0, #0
    beq .Lsec01_00001968
.Lsec01_00001938:
    ldr r0, [sp, #12]
    ldr r1, [pc, #992]
.Lsec01_00001940:
    bl png_warning
    stmia sp, {r6, r7}
    ldr r3, [pc, #984]
    ldr r1, [r3]
    mov r2, r4
    mov r3, r5
    ldr r0, [r1, #12]
    ldr r1, [pc, #968]
.Lsec01_00001960:
    bl fprintf
    b .Lsec01_00001d0c
.Lsec01_00001968:
    mov r0, r4
    mov r1, r5
    mov r2, #0
    ldr r3, [pc, #948]
.Lsec01_00001978:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #940]
.Lsec01_00001984:
    bl __aeabi_dadd
.Lsec01_00001988:
    bl __aeabi_d2uiz
    add r5, sp, #16
    mov r1, r0
    mov r0, r5
.Lsec01_00001998:
    bl png_save_uint_32
    mov r2, #0
    ldr r3, [pc, #904]
    mov r0, r6
    mov r1, r7
.Lsec01_000019ac:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #888]
.Lsec01_000019b8:
    bl __aeabi_dadd
.Lsec01_000019bc:
    bl __aeabi_d2uiz
    add r4, r5, #4
    mov r1, r0
    mov r0, r4
.Lsec01_000019cc:
    bl png_save_uint_32
    mov r0, r8
    mov r1, r9
    mov r2, #0
    mov r3, #0
.Lsec01_000019e0:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00001a68
    mov r0, r8
    mov r1, r9
    ldr r2, [pc, #796]
    ldr r3, [pc, #796]
.Lsec01_000019fc:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00001a68
    mov r0, sl
    mov r1, fp
    mov r2, #0
    mov r3, #0
.Lsec01_00001a18:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00001a68
    mov r0, sl
    mov r1, fp
    ldr r2, [pc, #740]
    ldr r3, [pc, #740]
.Lsec01_00001a34:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00001a68
    mov r2, sl
    mov r3, fp
    mov r0, r8
    mov r1, r9
.Lsec01_00001a50:
    bl __aeabi_dadd
    mov r2, #0
    ldr r3, [pc, #704]
.Lsec01_00001a5c:
    bl __aeabi_dcmpgt
    cmp r0, #0
    beq .Lsec01_00001a74
.Lsec01_00001a68:
    ldr r0, [sp, #12]
    ldr r1, [pc, #708]
    b .Lsec01_00001b7c
.Lsec01_00001a74:
    mov r2, #0
    ldr r3, [pc, #688]
    mov r0, r8
    mov r1, r9
.Lsec01_00001a84:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #672]
.Lsec01_00001a90:
    bl __aeabi_dadd
.Lsec01_00001a94:
    bl __aeabi_d2uiz
    add r4, r5, #8
    mov r1, r0
    mov r0, r4
.Lsec01_00001aa4:
    bl png_save_uint_32
    mov r2, #0
    ldr r3, [pc, #636]
    mov r0, sl
    mov r1, fp
.Lsec01_00001ab8:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #620]
.Lsec01_00001ac4:
    bl __aeabi_dadd
.Lsec01_00001ac8:
    bl __aeabi_d2uiz
    add r4, r5, #12
    mov r1, r0
    mov r0, r4
.Lsec01_00001ad8:
    bl png_save_uint_32
    add r0, sp, #112
    ldmia r0, {r0, r1}
    mov r2, #0
    mov r3, #0
.Lsec01_00001aec:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00001b74
    add r0, sp, #112
    ldmia r0, {r0, r1}
    ldr r2, [pc, #528]
    ldr r3, [pc, #528]
.Lsec01_00001b08:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00001b74
    add r0, sp, #120
    ldmia r0, {r0, r1}
    mov r2, #0
    mov r3, #0
.Lsec01_00001b24:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00001b74
    add r0, sp, #120
    ldmia r0, {r0, r1}
    ldr r2, [pc, #472]
    ldr r3, [pc, #472]
.Lsec01_00001b40:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00001b74
    add r2, sp, #120
    ldmia r2, {r2, r3}
    add r0, sp, #112
    ldmia r0, {r0, r1}
.Lsec01_00001b5c:
    bl __aeabi_dadd
    mov r2, #0
    ldr r3, [pc, #436]
.Lsec01_00001b68:
    bl __aeabi_dcmpgt
    cmp r0, #0
    beq .Lsec01_00001b84
.Lsec01_00001b74:
    ldr r0, [sp, #12]
    ldr r1, [pc, #444]
.Lsec01_00001b7c:
    bl png_warning
    b .Lsec01_00001d0c
.Lsec01_00001b84:
    add r0, sp, #112
    ldmia r0, {r0, r1}
    mov r2, #0
    ldr r3, [pc, #408]
.Lsec01_00001b94:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #400]
.Lsec01_00001ba0:
    bl __aeabi_dadd
.Lsec01_00001ba4:
    bl __aeabi_d2uiz
    add r4, r5, #16
    mov r1, r0
    mov r0, r4
.Lsec01_00001bb4:
    bl png_save_uint_32
    add r0, sp, #120
    ldmia r0, {r0, r1}
    mov r2, #0
    ldr r3, [pc, #356]
.Lsec01_00001bc8:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #348]
.Lsec01_00001bd4:
    bl __aeabi_dadd
.Lsec01_00001bd8:
    bl __aeabi_d2uiz
    add r4, r5, #20
    mov r1, r0
    mov r0, r4
.Lsec01_00001be8:
    bl png_save_uint_32
    add r0, sp, #128
    ldmia r0, {r0, r1}
    mov r2, #0
    mov r3, #0
.Lsec01_00001bfc:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00001c84
    add r0, sp, #128
    ldmia r0, {r0, r1}
    ldr r2, [pc, #256]
    ldr r3, [pc, #256]
.Lsec01_00001c18:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00001c84
    add r0, sp, #136
    ldmia r0, {r0, r1}
    mov r2, #0
    mov r3, #0
.Lsec01_00001c34:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00001c84
    add r0, sp, #136
    ldmia r0, {r0, r1}
    ldr r2, [pc, #200]
    ldr r3, [pc, #200]
.Lsec01_00001c50:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00001c84
    add r2, sp, #136
    ldmia r2, {r2, r3}
    add r0, sp, #128
    ldmia r0, {r0, r1}
.Lsec01_00001c6c:
    bl __aeabi_dadd
    mov r2, #0
    ldr r3, [pc, #164]
.Lsec01_00001c78:
    bl __aeabi_dcmpgt
    cmp r0, #0
    beq .Lsec01_00001c90
.Lsec01_00001c84:
    ldr r0, [sp, #12]
    ldr r1, [pc, #176]
    b .Lsec01_00001b7c
.Lsec01_00001c90:
    add r0, sp, #128
    ldmia r0, {r0, r1}
    mov r2, #0
    ldr r3, [pc, #140]
.Lsec01_00001ca0:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #132]
.Lsec01_00001cac:
    bl __aeabi_dadd
.Lsec01_00001cb0:
    bl __aeabi_d2uiz
    add r4, r5, #24
    mov r1, r0
    mov r0, r4
.Lsec01_00001cc0:
    bl png_save_uint_32
    add r0, sp, #136
    ldmia r0, {r0, r1}
    mov r2, #0
    ldr r3, [pc, #88]
.Lsec01_00001cd4:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #80]
.Lsec01_00001ce0:
    bl __aeabi_dadd
.Lsec01_00001ce4:
    bl __aeabi_d2uiz
    add r4, r5, #28
    mov r1, r0
    mov r0, r4
.Lsec01_00001cf4:
    bl png_save_uint_32
    ldr r0, [sp, #12]
    mov r2, r5
    ldr r1, [pc, #60]
    mov r3, #32
.Lsec01_00001d08:
    bl png_write_chunk
.Lsec01_00001d0c:
    add sp, sp, #52
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x9999999a
    .long 0x3fe99999
    .long 0x3ff00000
    .long .Lsec05_00000564
    .long _impure_ptr
    .long .Lsec05_00000588
    .long 0x40f86a00
    .long 0x3fe00000
    .long .Lsec05_000005a0
    .long .Lsec05_000005c4
    .long .Lsec05_000005e8
    .long png_cHRM
.arm
png_write_sBIT:
    stmdb sp!, {r4, lr}
    tst r2, #2
    mov r4, r2
    sub sp, sp, #8
    mov r2, r0
    beq .Lsec01_00001dbc
    ldrb ip, [r1]
    cmp r4, #3
    moveq lr, #8
    ldrneb lr, [r0, #324]
    cmp ip, #0
    beq .Lsec01_00001dfc
    cmp ip, lr
    bhi .Lsec01_00001dfc
    ldrb r0, [r1, #1]
    cmp r0, #0
    beq .Lsec01_00001dfc
    cmp r0, lr
    bhi .Lsec01_00001dfc
    ldrb r3, [r1, #2]
    cmp r3, #0
    beq .Lsec01_00001dfc
    cmp r3, lr
    bhi .Lsec01_00001dfc
    mov lr, #3
    strb ip, [sp, #4]
    strb r0, [sp, #5]
    strb r3, [sp, #6]
    b .Lsec01_00001ddc
.Lsec01_00001dbc:
    ldrb ip, [r1, #3]
    cmp ip, #0
    beq .Lsec01_00001e00
    ldrb r3, [r0, #324]
    cmp r3, ip
    bcc .Lsec01_00001e00
    strb ip, [sp, #4]
    mov lr, #1
.Lsec01_00001ddc:
    tst r4, #4
    beq .Lsec01_00001e1c
    ldrb r1, [r1, #4]
    cmp r1, #0
    beq .Lsec01_00001dfc
    ldrb r3, [r2, #324]
    cmp r3, r1
    bcs .Lsec01_00001e0c
.Lsec01_00001dfc:
    mov r0, r2
.Lsec01_00001e00:
    ldr r1, [pc, #52]
.Lsec01_00001e04:
    bl png_warning
    b .Lsec01_00001e30
.Lsec01_00001e0c:
    add r0, sp, #8
    add r3, r0, lr
    strb r1, [r3, #-4]
    add lr, lr, #1
.Lsec01_00001e1c:
    mov r0, r2
    mov r3, lr
    ldr r1, [pc, #20]
    add r2, sp, #4
.Lsec01_00001e2c:
    bl png_write_chunk
.Lsec01_00001e30:
    add sp, sp, #8
    ldmia sp!, {r4, lr}
    bx lr
    .long .Lsec05_0000060c
    .long png_sBIT
.arm
png_write_sRGB:
    stmdb sp!, {r4, r5, lr}
    cmp r1, #3
    mov r4, r1
    sub sp, sp, #12
    ldr r1, [pc, #40]
    mov r5, r0
.Lsec01_00001e5c:
    blgt png_warning
    add r2, sp, #8
    strb r4, [r2, #-1]!
    mov r0, r5
    ldr r1, [pc, #20]
    mov r3, #1
.Lsec01_00001e74:
    bl png_write_chunk
    add sp, sp, #12
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_0000062c
    .long png_sRGB
.arm
png_write_gAMA_fixed:
    stmdb sp!, {r4, r5, lr}
    sub sp, sp, #12
    add r5, sp, #4
    mov r4, r0
    mov r0, r5
.Lsec01_00001ea0:
    bl png_save_uint_32
    mov r0, r4
    mov r2, r5
    ldr r1, [pc, #16]
    mov r3, #4
.Lsec01_00001eb4:
    bl png_write_chunk
    add sp, sp, #12
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long png_gAMA
.arm
png_write_gAMA:
    stmdb sp!, {r4, r5, lr}
    mov r1, r3
    sub sp, sp, #12
    mov r5, r0
    ldr r3, [pc, #72]
    mov r0, r2
    mov r2, #0
.Lsec01_00001ee4:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #56]
.Lsec01_00001ef0:
    bl __aeabi_dadd
.Lsec01_00001ef4:
    bl __aeabi_d2uiz
    add r4, sp, #4
    mov r1, r0
    mov r0, r4
.Lsec01_00001f04:
    bl png_save_uint_32
    mov r0, r5
    mov r2, r4
    ldr r1, [pc, #24]
    mov r3, #4
.Lsec01_00001f18:
    bl png_write_chunk
    add sp, sp, #12
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long 0x40f86a00
    .long 0x3fe00000
    .long png_gAMA
.arm
png_write_IEND:
    mov r2, #0
    stmdb sp!, {r4, lr}
    mov r3, r2
    ldr r1, [pc, #24]
    mov r4, r0
.Lsec01_00001f48:
    bl png_write_chunk
    ldr r3, [r4, #132]
    orr r3, r3, #16
    str r3, [r4, #132]
    ldmia sp!, {r4, lr}
    bx lr
    .long png_IEND
.arm
png_write_IDAT:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr r3, [r0, #132]
    tst r3, #4
    sub sp, sp, #4
    mov r5, r0
    mov r6, r1
    mov r7, r2
    bne .Lsec01_00002070
    ldrb r3, [r0, #636]
    cmp r3, #0
    bne .Lsec01_00002070
    ldrb ip, [r1]
    and r3, ip, #15
    cmp r3, #8
    bne .Lsec01_00002064
    and r3, ip, #240
    cmp r3, #112
    bhi .Lsec01_00002064
    cmp r2, #1
    bls .Lsec01_00002070
    ldr lr, [r0, #232]
    ldr r3, [pc, #220]
    cmp lr, r3
    bhi .Lsec01_00002070
    ldr r2, [r0, #228]
    cmp r2, r3
    bhi .Lsec01_00002070
    ldrb r3, [r0, #326]
    mul r2, r3, r2
    ldrb r3, [r0, #323]
    mov r0, ip, lsr #4
    mul r2, r3, r2
    add r1, r0, #7
    mov r3, #1
    mov r1, r3, lsl r1
    add r2, r2, #15
    mov r2, r2, lsr #3
    mul r2, lr, r2
    b .Lsec01_00002008
.Lsec01_00002000:
    sub r0, r0, #1
    mov r1, r1, lsr #1
.Lsec01_00002008:
    cmp r2, r1
    movhi r3, #0
    movls r3, #1
    cmp r1, #255
    movls r3, #0
    cmp r3, #0
    bne .Lsec01_00002000
    mov r3, r0, lsl #4
    orr r1, r3, #8
    and r2, r1, #255
    cmp ip, r2
    beq .Lsec01_00002070
    ldrb r4, [r6, #1]
    and r4, r4, #224
    add r0, r4, r1, lsl #8
    strb r4, [r6, #1]
    strb r2, [r6]
    mov r1, #31
.Lsec01_00002050:
    bl __aeabi_uidivmod
    rsb r4, r1, r4
    add r4, r4, #31
    strb r4, [r6, #1]
    b .Lsec01_00002070
.Lsec01_00002064:
    mov r0, r5
    ldr r1, [pc, #48]
.Lsec01_0000206c:
    bl png_error
.Lsec01_00002070:
    mov r3, r7
    mov r2, r6
    mov r0, r5
    ldr r1, [pc, #32]
.Lsec01_00002080:
    bl png_write_chunk
    ldr r3, [r5, #132]
    orr r3, r3, #4
    str r3, [r5, #132]
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long 0x00003fff
    .long .Lsec05_00000654
    .long png_IDAT
.arm
png_write_finish_row:
    stmdb sp!, {r4, r5, r6, lr}
    ldr r3, [r0, #256]
    ldr r2, [r0, #236]
    add r3, r3, #1
    cmp r3, r2
    sub sp, sp, #104
    mov r4, r0
    str r3, [r0, #256]
    bcc .Lsec01_00002298
    ldrb r3, [r0, #319]
    cmp r3, #0
    beq .Lsec01_000021dc
    ldr r3, [r0, #140]
    tst r3, #2
    mov r3, #0
    str r3, [r0, #256]
    ldrneb r3, [r0, #320]
    addne r3, r3, #1
    strneb r3, [r0, #320]
    bne .Lsec01_00002188
.Lsec01_000020f8:
    ldrb r3, [r4, #320]
    add r3, r3, #1
    and r1, r3, #255
    cmp r1, #6
    strb r1, [r4, #320]
    bhi .Lsec01_000021dc
    ldr r3, [pc, #396]
    ldr r0, [r3, r1, lsl #2]
    ldr r3, [pc, #392]
    ldr r2, [r4, #228]
    ldr r3, [r3, r1, lsl #2]
    mov r1, r0
    add r0, r0, r2
    rsb r0, r3, r0
    sub r0, r0, #1
.Lsec01_00002134:
    bl __aeabi_uidiv
    ldrb r2, [r4, #320]
    ldr r3, [pc, #360]
    ldr r1, [r3, r2, lsl #2]
    ldr r3, [pc, #356]
    mov r5, r0
    ldr r0, [r4, #232]
    ldr r3, [r3, r2, lsl #2]
    add r0, r1, r0
    rsb r0, r3, r0
    str r5, [r4, #240]
    sub r0, r0, #1
.Lsec01_00002164:
    bl __aeabi_uidiv
    ldr r3, [r4, #140]
    tst r3, #2
    str r0, [r4, #236]
    bne .Lsec01_00002188
    cmp r5, #0
    beq .Lsec01_000020f8
    cmp r0, #0
    beq .Lsec01_000020f8
.Lsec01_00002188:
    ldrb r3, [r4, #320]
    cmp r3, #6
    bhi .Lsec01_000021dc
    ldr r1, [r4, #260]
    cmp r1, #0
    beq .Lsec01_00002298
    ldrb r3, [r4, #324]
    ldrb r2, [r4, #327]
    mul r0, r3, r2
    ldr r2, [r4, #228]
    cmp r0, #7
    mulle r3, r2, r0
    movgt r3, r0, lsr #3
    mulgt r3, r2, r3
    addle r3, r3, #7
    movle r3, r3, lsr #3
    add r2, r3, #1
    mov r0, r1
    mov r1, #0
.Lsec01_000021d4:
    bl memset
    b .Lsec01_00002298
.Lsec01_000021dc:
    add r6, r4, #144
    mov r1, #4
    mov r0, r6
.Lsec01_000021e8:
    bl deflate
    add r5, sp, #4
    subs r3, r0, #0
    ldr r1, [pc, #184]
    mov r2, r3
    mov r0, r5
    bne .Lsec01_00002234
    ldr r3, [r4, #160]
    cmp r3, #0
    mov r0, r4
    bne .Lsec01_000021dc
    add r1, r4, #200
    ldmia r1, {r1, r2}
.Lsec01_0000221c:
    bl png_write_IDAT
    ldr r3, [r4, #200]
    ldr r2, [r4, #204]
    str r3, [r4, #156]
    str r2, [r4, #160]
    b .Lsec01_000021dc
.Lsec01_00002234:
    cmp r3, #1
    beq .Lsec01_00002284
.Lsec01_0000223c:
    bl sprintf
    ldr r3, [r4, #168]
    cmp r3, #0
    mov r1, r5
    mov r0, r4
    movne r1, r3
    moveq r0, r4
.Lsec01_00002258:
    bl png_error
    b .Lsec01_000021dc
.Lsec01_00002260:
    rsb r2, r3, r2
    mov r0, r4
    ldr r1, [r4, #200]
.Lsec01_0000226c:
    bl png_write_IDAT
.Lsec01_00002270:
    mov r0, r6
.Lsec01_00002274:
    bl deflateReset
    mov r3, #0
    str r3, [r4, #188]
    b .Lsec01_00002298
.Lsec01_00002284:
    ldr r3, [r4, #160]
    ldr r2, [r4, #204]
    cmp r3, r2
    bcs .Lsec01_00002270
    b .Lsec01_00002260
.Lsec01_00002298:
    add sp, sp, #104
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long png_pass_inc
    .long png_pass_start
    .long png_pass_yinc
    .long png_pass_ystart
    .long .Lsec05_00000688
.arm
png_write_filtered_row:
    stmdb sp!, {r4, r5, r6, lr}
    ldr r3, [r0, #288]
    add r3, r3, #1
    str r1, [r0, #144]
    str r3, [r0, #148]
    sub sp, sp, #120
    mov r5, r0
.Lsec01_000022d4:
    mov r1, #0
    add r0, r5, #144
.Lsec01_000022dc:
    bl deflate
    add r6, sp, #20
    subs r2, r0, #0
    ldr r1, [pc, #188]
    mov r0, r6
    beq .Lsec01_00002328
    ldr ip, [r5, #148]
    ldr lr, [r5, #156]
    ldr r4, [r5, #172]
    ldr r3, [r5, #144]
    stmia sp, {ip, lr}
    str r4, [sp, #8]
.Lsec01_0000230c:
    bl sprintf
    ldr r3, [r5, #168]
    subs r1, r3, #0
    mov r0, r5
    moveq r1, r6
    moveq r0, r5
.Lsec01_00002324:
    bl png_error
.Lsec01_00002328:
    ldr r3, [r5, #160]
    cmp r3, #0
    mov r0, r5
    bne .Lsec01_00002354
    add r1, r5, #200
    ldmia r1, {r1, r2}
.Lsec01_00002340:
    bl png_write_IDAT
    ldr r3, [r5, #200]
    ldr r2, [r5, #204]
    str r3, [r5, #156]
    str r2, [r5, #160]
.Lsec01_00002354:
    ldr r3, [r5, #148]
    cmp r3, #0
    bne .Lsec01_000022d4
    ldr r2, [r5, #260]
    cmp r2, #0
    ldrne r3, [r5, #264]
    mov r0, r5
    strne r2, [r5, #264]
    strne r3, [r5, #260]
.Lsec01_00002378:
    bl png_write_finish_row
    add r2, r5, #364
    ldmia r2, {r2, r3}
    add r3, r3, #1
    cmp r2, #0
    str r3, [r5, #368]
    beq .Lsec01_000023a0
    cmp r3, r2
    movcs r0, r5
.Lsec01_0000239c:
    blcs png_write_flush
.Lsec01_000023a0:
    add sp, sp, #120
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_00000698
.arm
png_write_find_filter:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    mov r4, r0
    ldrb r0, [r0, #321]
    sub sp, sp, #44
    str r0, [sp, #12]
    ldrb r3, [r1, #11]
    ldr r1, [r1, #4]
    str r1, [sp, #16]
    subs r2, r0, #8
    movne r2, #1
    add r3, r3, #7
    ands r0, r2, r0, lsr #3
    mov sl, r3, asr #3
    ldrb r2, [r4, #533]
    ldr r3, [r4, #260]
    str r2, [sp, #20]
    str r3, [sp, #4]
    ldr r6, [r4, #264]
    movne r0, #0
    movne r1, #1
    bne .Lsec01_00002420
    b .Lsec01_000024c0
.Lsec01_00002408:
    ldrb r3, [r1, r6]
    cmp r3, #127
    mov r2, r3
    rsbgt r2, r3, #256
    add r0, r0, r2
    add r1, r1, #1
.Lsec01_00002420:
    ldr r5, [sp, #16]
    add r3, r5, #1
    cmp r1, r3
    bne .Lsec01_00002408
    ldrb r3, [r4, #532]
    cmp r3, #2
    movne r9, r0
    bne .Lsec01_000024c4
    mov r3, r0, lsr #10
    mov r1, r0, lsl #16
    bic r2, r3, #-1073741761
    mov r1, r1, lsr #16
    bic r2, r2, #1069547520
    mov r0, #0
    b .Lsec01_00002488
.Lsec01_0000245c:
    ldr r3, [r4, #536]
    ldrb r3, [r3, r0]
    cmp r3, #0
    add r0, r0, #1
    bne .Lsec01_00002488
    ldr r3, [r4, #540]
    ldrh r3, [ip, r3]
    mul r2, r3, r2
    mul r3, r1, r3
    mov r2, r2, lsr #8
    mov r1, r3, lsr #8
.Lsec01_00002488:
    ldr r7, [sp, #20]
    cmp r0, r7
    mov ip, r0, lsl #1
    blt .Lsec01_0000245c
    ldr r3, [r4, #548]
    ldrh r0, [r3]
    mul r3, r0, r2
    mov r2, r3, lsr #3
    ldr r3, [pc, #2660]
    cmp r2, r3
    mulls r3, r0, r1
    movls r3, r3, lsr #3
    addls r9, r3, r2, lsl #10
    bls .Lsec01_000024c4
.Lsec01_000024c0:
    mvn r9, #-2147483648
.Lsec01_000024c4:
    ldr r8, [sp, #12]
    cmp r8, #16
    bne .Lsec01_00002544
    ldr r1, [r4, #268]
    add ip, r6, #1
    add r0, r1, #1
    mov r2, #0
    b .Lsec01_000024ec
.Lsec01_000024e4:
    ldrb r3, [r2, r6]
    strb r3, [r2, r1]
.Lsec01_000024ec:
    add r2, r2, #1
    add r3, sl, #1
    cmp r2, r3
    bne .Lsec01_000024e4
    mov r1, #0
    add lr, r0, sl
    add ip, ip, sl
    mov r0, r1
    b .Lsec01_00002524
.Lsec01_00002510:
    ldrb r3, [r1, ip]
    ldrb r2, [r0, r6]
    rsb r3, r2, r3
    strb r3, [r1, lr]
    add r1, r1, #1
.Lsec01_00002524:
    ldr r2, [sp, #16]
    add r3, sl, r1
    cmp r3, r2
    add r0, r0, #1
    bcc .Lsec01_00002510
    ldr r3, [r4, #268]
    str r3, [sp, #8]
    b .Lsec01_00002768
.Lsec01_00002544:
    ldr r5, [sp, #12]
    tst r5, #16
    beq .Lsec01_00002718
    ldrb r3, [r4, #532]
    cmp r3, #2
    movne lr, r9
    bne .Lsec01_000025e0
    mov r3, r9, lsr #10
    bic r2, r3, #-1073741761
    mov r1, r9, lsl #16
    mov r1, r1, lsr #16
    bic r2, r2, #1069547520
    mov r0, #0
    b .Lsec01_000025a8
.Lsec01_0000257c:
    ldr r3, [r4, #536]
    ldrb r3, [r3, r0]
    cmp r3, #1
    add r0, r0, #1
    bne .Lsec01_000025a8
    ldr r3, [r4, #544]
    ldrh r3, [ip, r3]
    mul r2, r3, r2
    mul r3, r1, r3
    mov r2, r2, lsr #8
    mov r1, r3, lsr #8
.Lsec01_000025a8:
    ldr r7, [sp, #20]
    cmp r0, r7
    mov ip, r0, lsl #1
    blt .Lsec01_0000257c
    ldr r3, [r4, #552]
    ldrh r0, [r3, #2]
    mul r3, r0, r2
    mov r2, r3, lsr #3
    ldr r3, [pc, #2372]
    cmp r2, r3
    mulls r3, r0, r1
    movls r3, r3, lsr #3
    mvnhi lr, #-2147483648
    addls lr, r3, r2, lsl #10
.Lsec01_000025e0:
    ldr ip, [r4, #268]
    add r7, r6, #1
    add r5, ip, #1
    mov r0, #0
    mov r1, #1
    b .Lsec01_00002614
.Lsec01_000025f8:
    ldrb r3, [r1, r6]
    cmp r3, #127
    mov r2, r3
    rsbgt r2, r3, #256
    strb r3, [r1, ip]
    add r0, r0, r2
    add r1, r1, #1
.Lsec01_00002614:
    add r3, sl, #1
    cmp r1, r3
    bne .Lsec01_000025f8
    add r8, r5, sl
    mov r1, r6
    add r5, r7, sl
    mov ip, #0
    b .Lsec01_00002668
.Lsec01_00002634:
    ldrb r2, [r1, #1]
    ldrb r3, [ip, r5]
    rsb r3, r2, r3
    and r3, r3, #255
    cmp r3, #127
    mov r2, r3
    rsbgt r2, r3, #256
    add r0, r0, r2
    cmp r0, lr
    strb r3, [ip, r8]
    add r1, r1, #1
    add ip, ip, #1
    bhi .Lsec01_00002678
.Lsec01_00002668:
    ldr r2, [sp, #16]
    add r3, sl, ip
    cmp r3, r2
    bcc .Lsec01_00002634
.Lsec01_00002678:
    ldrb r3, [r4, #532]
    cmp r3, #2
    bne .Lsec01_00002704
    mov r3, r0, lsr #10
    mov r1, r0, lsl #16
    bic r2, r3, #-1073741761
    mov r1, r1, lsr #16
    bic r2, r2, #1069547520
    mov r0, #0
    b .Lsec01_000026cc
.Lsec01_000026a0:
    ldr r3, [r4, #536]
    ldrb r3, [r3, r0]
    cmp r3, #1
    add r0, r0, #1
    bne .Lsec01_000026cc
    ldr r3, [r4, #544]
    ldrh r3, [ip, r3]
    mul r2, r3, r2
    mul r3, r1, r3
    mov r2, r2, lsr #8
    mov r1, r3, lsr #8
.Lsec01_000026cc:
    ldr r3, [sp, #20]
    cmp r0, r3
    mov ip, r0, lsl #1
    blt .Lsec01_000026a0
    ldr r3, [r4, #552]
    ldrh r0, [r3, #2]
    mul r3, r0, r2
    mov r2, r3, lsr #3
    ldr r3, [pc, #2080]
    cmp r2, r3
    mulls r3, r0, r1
    movls r3, r3, lsr #3
    mvnhi r0, #-2147483648
    addls r0, r3, r2, lsl #10
.Lsec01_00002704:
    cmp r0, r9
    ldrcc r5, [r4, #268]
    movcc r9, r0
    strcc r5, [sp, #8]
    bcc .Lsec01_0000271c
.Lsec01_00002718:
    str r6, [sp, #8]
.Lsec01_0000271c:
    ldr r7, [sp, #12]
    cmp r7, #32
    ldreq r0, [r4, #272]
    moveq r1, #0
    beq .Lsec01_00002748
    b .Lsec01_00002768
.Lsec01_00002734:
    ldr r8, [sp, #4]
    ldrb r3, [r1, r6]
    ldrb r2, [r1, r8]
    rsb r3, r2, r3
    strb r3, [r1, r0]
.Lsec01_00002748:
    ldr ip, [sp, #16]
    add r1, r1, #1
    add r3, ip, #1
    cmp r1, r3
    bne .Lsec01_00002734
    ldr r0, [r4, #272]
    str r0, [sp, #8]
    b .Lsec01_00002994
.Lsec01_00002768:
    ldr r2, [sp, #12]
    tst r2, #32
    beq .Lsec01_000028f4
    ldrb r3, [r4, #532]
    cmp r3, #2
    movne ip, r9
    bne .Lsec01_00002804
    mov r3, r9, lsr #10
    bic r2, r3, #-1073741761
    mov r1, r9, lsl #16
    mov r1, r1, lsr #16
    bic r2, r2, #1069547520
    mov r0, #0
    b .Lsec01_000027cc
.Lsec01_000027a0:
    ldr r3, [r4, #536]
    ldrb r3, [r3, r0]
    cmp r3, #2
    add r0, r0, #1
    bne .Lsec01_000027cc
    ldr r3, [r4, #544]
    ldrh r3, [ip, r3]
    mul r2, r3, r2
    mul r3, r1, r3
    mov r2, r2, lsr #8
    mov r1, r3, lsr #8
.Lsec01_000027cc:
    ldr r3, [sp, #20]
    cmp r0, r3
    mov ip, r0, lsl #1
    blt .Lsec01_000027a0
    ldr r3, [r4, #552]
    ldrh r0, [r3, #4]
    mul r3, r0, r2
    mov r2, r3, lsr #3
    ldr r3, [pc, #1824]
    cmp r2, r3
    mulls r3, r0, r1
    movls r3, r3, lsr #3
    mvnhi ip, #-2147483648
    addls ip, r3, r2, lsl #10
.Lsec01_00002804:
    ldr lr, [r4, #272]
    mov r1, #0
    mov r0, #1
    b .Lsec01_00002848
.Lsec01_00002814:
    ldr r5, [sp, #4]
    ldrb r3, [r0, r6]
    ldrb r2, [r0, r5]
    rsb r3, r2, r3
    and r3, r3, #255
    cmp r3, #127
    mov r2, r3
    rsbgt r2, r3, #256
    add r1, r1, r2
    cmp r1, ip
    strb r3, [r0, lr]
    add r0, r0, #1
    bhi .Lsec01_00002858
.Lsec01_00002848:
    ldr r7, [sp, #16]
    add r3, r7, #1
    cmp r0, r3
    bne .Lsec01_00002814
.Lsec01_00002858:
    ldrb r3, [r4, #532]
    cmp r3, #2
    bne .Lsec01_000028e4
    mov r3, r1, lsr #10
    bic r2, r3, #-1073741761
    mov r1, r1, lsl #16
    mov r1, r1, lsr #16
    bic r2, r2, #1069547520
    mov r0, #0
    b .Lsec01_000028ac
.Lsec01_00002880:
    ldr r3, [r4, #536]
    ldrb r3, [r3, r0]
    cmp r3, #2
    add r0, r0, #1
    bne .Lsec01_000028ac
    ldr r3, [r4, #540]
    ldrh r3, [ip, r3]
    mul r2, r3, r2
    mul r3, r1, r3
    mov r2, r2, lsr #8
    mov r1, r3, lsr #8
.Lsec01_000028ac:
    ldr r8, [sp, #20]
    cmp r0, r8
    mov ip, r0, lsl #1
    blt .Lsec01_00002880
    ldr r3, [r4, #548]
    ldrh r0, [r3, #4]
    mul r3, r0, r2
    mov r2, r3, lsr #3
    ldr r3, [pc, #1600]
    cmp r2, r3
    mulls r3, r0, r1
    movls r3, r3, lsr #3
    mvnhi r1, #-2147483648
    addls r1, r3, r2, lsl #10
.Lsec01_000028e4:
    cmp r1, r9
    ldrcc ip, [r4, #272]
    strcc ip, [sp, #8]
    movcc r9, r1
.Lsec01_000028f4:
    ldr r0, [sp, #12]
    cmp r0, #64
    bne .Lsec01_00002994
    ldr r0, [r4, #276]
    ldr r2, [sp, #4]
    add r8, r6, #1
    add lr, r0, #1
    add ip, r2, #1
    mov r1, #0
    b .Lsec01_00002930
.Lsec01_0000291c:
    ldr r3, [sp, #4]
    ldrb r2, [r1, r3]
    ldrb r3, [r1, r6]
    sub r3, r3, r2, lsr #1
    strb r3, [r1, r0]
.Lsec01_00002930:
    add r1, r1, #1
    add r3, sl, #1
    cmp r1, r3
    bne .Lsec01_0000291c
    mov r0, #0
    add r7, ip, sl
    add r5, lr, sl
    mov ip, r0
    add lr, r8, sl
    b .Lsec01_00002974
.Lsec01_00002958:
    ldrb r3, [r0, r7]
    ldrb r1, [ip, r6]
    ldrb r2, [r0, lr]
    add r3, r3, r1
    sub r2, r2, r3, lsr #1
    strb r2, [r0, r5]
    add r0, r0, #1
.Lsec01_00002974:
    ldr r8, [sp, #16]
    add r3, sl, r0
    cmp r3, r8
    add ip, ip, #1
    bcc .Lsec01_00002958
    ldr ip, [r4, #276]
    str ip, [sp, #8]
    b .Lsec01_00002ebc
.Lsec01_00002994:
    ldr r0, [sp, #12]
    tst r0, #64
    beq .Lsec01_00002b90
    ldrb r3, [r4, #532]
    cmp r3, #2
    movne r5, r9
    bne .Lsec01_00002a30
    mov r3, r9, lsr #10
    bic r2, r3, #-1073741761
    mov r1, r9, lsl #16
    mov r1, r1, lsr #16
    bic r2, r2, #1069547520
    mov r0, #0
    b .Lsec01_000029f8
.Lsec01_000029cc:
    ldr r3, [r4, #536]
    ldrb r3, [r3, r0]
    cmp r3, #3
    add r0, r0, #1
    bne .Lsec01_000029f8
    ldr r3, [r4, #544]
    ldrh r3, [ip, r3]
    mul r2, r3, r2
    mul r3, r1, r3
    mov r2, r2, lsr #8
    mov r1, r3, lsr #8
.Lsec01_000029f8:
    ldr r3, [sp, #20]
    cmp r0, r3
    mov ip, r0, lsl #1
    blt .Lsec01_000029cc
    ldr r3, [r4, #552]
    ldrh r0, [r3, #6]
    mul r3, r0, r2
    mov r2, r3, lsr #3
    ldr r3, [pc, #1268]
    cmp r2, r3
    mulls r3, r0, r1
    movls r3, r3, lsr #3
    mvnhi r5, #-2147483648
    addls r5, r3, r2, lsl #10
.Lsec01_00002a30:
    ldr ip, [sp, #4]
    ldr r0, [r4, #276]
    add lr, ip, #1
    add r8, r6, #1
    add r7, r0, #1
    mov ip, #0
    mov r1, #1
    b .Lsec01_00002a7c
.Lsec01_00002a50:
    ldr r3, [sp, #4]
    ldrb r2, [r1, r3]
    ldrb r3, [r1, r6]
    sub r3, r3, r2, lsr #1
    and r3, r3, #255
    cmp r3, #127
    mov r2, r3
    rsbgt r2, r3, #256
    strb r3, [r1, r0]
    add ip, ip, r2
    add r1, r1, #1
.Lsec01_00002a7c:
    add r3, sl, #1
    cmp r1, r3
    bne .Lsec01_00002a50
    add lr, lr, sl
    str lr, [sp, #24]
    add fp, r7, sl
    mov r0, r6
    add r7, r8, sl
    mov lr, #0
    b .Lsec01_00002ae4
.Lsec01_00002aa4:
    ldr r8, [sp, #24]
    ldrb r1, [r0, #1]
    ldrb r3, [lr, r8]
    ldrb r2, [lr, r7]
    add r3, r3, r1
    sub r2, r2, r3, lsr #1
    and r2, r2, #255
    cmp r2, #127
    mov r3, r2
    rsbgt r3, r2, #256
    add ip, ip, r3
    cmp ip, r5
    strb r2, [lr, fp]
    add r0, r0, #1
    add lr, lr, #1
    bhi .Lsec01_00002af4
.Lsec01_00002ae4:
    ldr r2, [sp, #16]
    add r3, sl, lr
    cmp r3, r2
    bcc .Lsec01_00002aa4
.Lsec01_00002af4:
    ldrb r3, [r4, #532]
    cmp r3, #2
    bne .Lsec01_00002b80
    mov r3, ip, lsr #10
    bic r2, r3, #-1073741761
    mov r1, ip, lsl #16
    mov r1, r1, lsr #16
    bic r2, r2, #1069547520
    mov r0, #0
    b .Lsec01_00002b48
.Lsec01_00002b1c:
    ldr r3, [r4, #536]
    ldrb r3, [r3, r0]
    cmp r3, #0
    add r0, r0, #1
    bne .Lsec01_00002b48
    ldr r3, [r4, #540]
    ldrh r3, [ip, r3]
    mul r2, r3, r2
    mul r3, r1, r3
    mov r2, r2, lsr #8
    mov r1, r3, lsr #8
.Lsec01_00002b48:
    ldr r3, [sp, #20]
    cmp r0, r3
    mov ip, r0, lsl #1
    blt .Lsec01_00002b1c
    ldr r3, [r4, #548]
    ldrh r0, [r3, #6]
    mul r3, r0, r2
    mov r2, r3, lsr #3
    ldr r3, [pc, #932]
    cmp r2, r3
    mulls r3, r0, r1
    movls r3, r3, lsr #3
    mvnhi ip, #-2147483648
    addls ip, r3, r2, lsl #10
.Lsec01_00002b80:
    cmp ip, r9
    ldrcc r5, [r4, #276]
    strcc r5, [sp, #8]
    movcc r9, ip
.Lsec01_00002b90:
    ldr r7, [sp, #12]
    cmp r7, #128
    bne .Lsec01_00002c74
    ldr r0, [r4, #280]
    ldr r8, [sp, #4]
    add r5, r6, #1
    add lr, r0, #1
    add ip, r8, #1
    mov r1, #0
    b .Lsec01_00002bcc
.Lsec01_00002bb8:
    ldr r7, [sp, #4]
    ldrb r3, [r1, r6]
    ldrb r2, [r1, r7]
    rsb r3, r2, r3
    strb r3, [r1, r0]
.Lsec01_00002bcc:
    add r1, r1, #1
    add r3, sl, #1
    cmp r1, r3
    bne .Lsec01_00002bb8
    add r8, r5, sl
    ldr r5, [sp, #4]
    add r9, lr, sl
    add fp, ip, sl
    mov lr, r6
    mov r6, #0
    b .Lsec01_00002c58
.Lsec01_00002bf8:
    ldrb ip, [r5, #1]
    ldrb r7, [r6, fp]
    ldrb r0, [lr, #1]
    rsb r3, ip, r7
    rsb r1, ip, r0
    add r2, r3, r1
    cmp r2, #0
    rsblt r2, r2, #0
    cmp r1, #0
    rsblt r1, r1, #0
    cmp r3, #0
    rsblt r3, r3, #0
    cmp r3, r1
    cmple r3, r2
    ble .Lsec01_00002c40
    cmp r1, r2
    movgt r0, ip
    movle r0, r7
.Lsec01_00002c40:
    ldrb r3, [r6, r8]
    rsb r3, r0, r3
    strb r3, [r6, r9]
    add r5, r5, #1
    add lr, lr, #1
    add r6, r6, #1
.Lsec01_00002c58:
    ldr ip, [sp, #16]
    add r3, sl, r6
    cmp r3, ip
    bcc .Lsec01_00002bf8
    ldr r0, [r4, #280]
    str r0, [sp, #8]
    b .Lsec01_00002ebc
.Lsec01_00002c74:
    ldr r2, [sp, #12]
    tst r2, #128
    beq .Lsec01_00002ebc
    ldrb r3, [r4, #532]
    cmp r3, #2
    movne fp, r9
    bne .Lsec01_00002d10
    mov r3, r9, lsr #10
    bic r2, r3, #-1073741761
    mov r1, r9, lsl #16
    mov r1, r1, lsr #16
    bic r2, r2, #1069547520
    mov r0, #0
    b .Lsec01_00002cd8
.Lsec01_00002cac:
    ldr r3, [r4, #536]
    ldrb r3, [r3, r0]
    cmp r3, #4
    add r0, r0, #1
    bne .Lsec01_00002cd8
    ldr r3, [r4, #544]
    ldrh r3, [ip, r3]
    mul r2, r3, r2
    mul r3, r1, r3
    mov r2, r2, lsr #8
    mov r1, r3, lsr #8
.Lsec01_00002cd8:
    ldr r3, [sp, #20]
    cmp r0, r3
    mov ip, r0, lsl #1
    blt .Lsec01_00002cac
    ldr r3, [r4, #552]
    ldrh r0, [r3, #8]
    mul r3, r0, r2
    mov r2, r3, lsr #3
    ldr r3, [pc, #532]
    cmp r2, r3
    mulls r3, r0, r1
    movls r3, r3, lsr #3
    mvnhi fp, #-2147483648
    addls fp, r3, r2, lsl #10
.Lsec01_00002d10:
    ldr r5, [sp, #4]
    ldr r0, [r4, #280]
    add ip, r5, #1
    add r7, r6, #1
    add lr, r0, #1
    mov r5, #0
    mov r1, #1
    b .Lsec01_00002d5c
.Lsec01_00002d30:
    ldr r8, [sp, #4]
    ldrb r3, [r1, r6]
    ldrb r2, [r1, r8]
    rsb r3, r2, r3
    and r3, r3, #255
    cmp r3, #127
    mov r2, r3
    rsbgt r2, r3, #256
    strb r3, [r1, r0]
    add r5, r5, r2
    add r1, r1, #1
.Lsec01_00002d5c:
    add r3, sl, #1
    cmp r1, r3
    bne .Lsec01_00002d30
    add r7, r7, sl
    str r7, [sp, #36]
    ldr r7, [sp, #4]
    add ip, ip, sl
    add lr, lr, sl
    mov r8, #0
    str ip, [sp, #28]
    str lr, [sp, #32]
    b .Lsec01_00002e14
.Lsec01_00002d8c:
    ldr r0, [sp, #28]
    ldrb ip, [r7, #1]
    ldrb lr, [r8, r0]
    ldrb r0, [r6, #1]
    rsb r3, ip, lr
    rsb r1, ip, r0
    add r2, r3, r1
    cmp r2, #0
    rsblt r2, r2, #0
    cmp r1, #0
    rsblt r1, r1, #0
    cmp r3, #0
    rsblt r3, r3, #0
    cmp r3, r1
    cmple r3, r2
    ble .Lsec01_00002dd8
    cmp r1, r2
    movgt r0, ip
    movle r0, lr
.Lsec01_00002dd8:
    ldr r2, [sp, #36]
    ldrb r3, [r8, r2]
    rsb r3, r0, r3
    and r0, r3, #255
    cmp r0, #127
    mov r3, r0
    rsbgt r3, r0, #256
    ldr ip, [sp, #32]
    add r5, r5, r3
    cmp r5, fp
    strb r0, [r8, ip]
    add r7, r7, #1
    add r8, r8, #1
    add r6, r6, #1
    bhi .Lsec01_00002e24
.Lsec01_00002e14:
    ldr r0, [sp, #16]
    add r3, sl, r8
    cmp r3, r0
    bcc .Lsec01_00002d8c
.Lsec01_00002e24:
    ldrb r3, [r4, #532]
    cmp r3, #2
    bne .Lsec01_00002eb0
    mov r3, r5, lsr #10
    bic r2, r3, #-1073741761
    mov r1, r5, lsl #16
    mov r1, r1, lsr #16
    bic r2, r2, #1069547520
    mov r0, #0
    b .Lsec01_00002e78
.Lsec01_00002e4c:
    ldr r3, [r4, #536]
    ldrb r3, [r3, r0]
    cmp r3, #4
    add r0, r0, #1
    bne .Lsec01_00002e78
    ldr r3, [r4, #540]
    ldrh r3, [ip, r3]
    mul r2, r3, r2
    mul r3, r1, r3
    mov r2, r2, lsr #8
    mov r1, r3, lsr #8
.Lsec01_00002e78:
    ldr r3, [sp, #20]
    cmp r0, r3
    mov ip, r0, lsl #1
    blt .Lsec01_00002e4c
    ldr r3, [r4, #548]
    ldrh r0, [r3, #8]
    mul r3, r0, r2
    mov r2, r3, lsr #3
    ldr r3, [pc, #116]
    cmp r2, r3
    mulls r3, r0, r1
    movls r3, r3, lsr #3
    mvnhi r5, #-2147483648
    addls r5, r3, r2, lsl #10
.Lsec01_00002eb0:
    cmp r5, r9
    ldrcc r5, [r4, #280]
    strcc r5, [sp, #8]
.Lsec01_00002ebc:
    ldr r1, [sp, #8]
    mov r0, r4
.Lsec01_00002ec4:
    bl png_write_filtered_row
    ldrb r3, [r4, #533]
    cmp r3, #0
    movne r1, #1
    bne .Lsec01_00002ee8
    b .Lsec01_00002f08
.Lsec01_00002edc:
    ldrb r3, [r3, #-1]
    strb r3, [r1, r2]
    add r1, r1, #1
.Lsec01_00002ee8:
    ldr r7, [sp, #20]
    ldr r2, [r4, #536]
    cmp r1, r7
    add r3, r1, r2
    blt .Lsec01_00002edc
    ldr r8, [sp, #8]
    ldrb r3, [r8]
    strb r3, [r2, r1]
.Lsec01_00002f08:
    add sp, sp, #44
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x003fffc0
.arm
png_write_IHDR:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    sub sp, sp, #32
    ldr r8, [sp, #64]
    mov r5, r0
    mov r7, r1
    mov r9, r2
    mov r4, r3
    ldr r6, [sp, #76]
    cmp r8, #6
    ldrls pc, [pc, r8, lsl #2]
    b .Lsec01_0000300c
    .long .Lsec01_00002f60
    .long .Lsec01_0000300c
    .long .Lsec01_00002f8c
    .long .Lsec01_00002fa4
    .long .Lsec01_00002fd8
    .long .Lsec01_0000300c
    .long .Lsec01_00002ff0
.arm
.Lsec01_00002f60:
    cmp r3, #16
    bhi .Lsec01_00002f80
    mov r1, #1
    mov r2, r1, lsl r3
    ldr r3, [pc, #652]
    and r3, r2, r3
    cmp r3, #0
    bne .Lsec01_00002fc4
.Lsec01_00002f80:
    ldr r1, [pc, #640]
    mov r0, r5
    b .Lsec01_00003010
.Lsec01_00002f8c:
    cmp r3, #8
    cmpne r3, #16
    ldrne r1, [pc, #624]
.Lsec01_00002f98:
    blne png_error
    mov r3, #3
    b .Lsec01_00003004
.Lsec01_00002fa4:
    cmp r3, #8
    bhi .Lsec01_00002fcc
    mov r1, #1
    mov r2, r1, lsl r3
    ldr r3, [pc, #596]
    and r3, r2, r3
    cmp r3, #0
    beq .Lsec01_00002fcc
.Lsec01_00002fc4:
    strb r1, [r5, #326]
    b .Lsec01_00003014
.Lsec01_00002fcc:
    ldr r1, [pc, #576]
    mov r0, r5
    b .Lsec01_00003010
.Lsec01_00002fd8:
    cmp r3, #8
    cmpne r3, #16
    ldrne r1, [pc, #560]
.Lsec01_00002fe4:
    blne png_error
    mov r3, #2
    b .Lsec01_00003004
.Lsec01_00002ff0:
    cmp r3, #8
    cmpne r3, #16
    ldrne r1, [pc, #540]
.Lsec01_00002ffc:
    blne png_error
    mov r3, #4
.Lsec01_00003004:
    strb r3, [r5, #326]
    b .Lsec01_00003014
.Lsec01_0000300c:
    ldr r1, [pc, #524]
.Lsec01_00003010:
    bl png_error
.Lsec01_00003014:
    ldr r3, [sp, #68]
    cmp r3, #0
    movne r0, r5
    ldrne r1, [pc, #508]
.Lsec01_00003024:
    blne png_warning
    ldr r3, [sp, #72]
    cmp r3, #0
    movne r0, r5
    ldrne r1, [pc, #492]
.Lsec01_00003038:
    blne png_warning
    cmp r6, #1
    bls .Lsec01_00003054
    mov r0, r5
    ldr r1, [pc, #476]
.Lsec01_0000304c:
    bl png_warning
    mov r6, #1
.Lsec01_00003054:
    ldrb r3, [r5, #326]
    mul r3, r4, r3
    and r2, r3, #255
    cmp r2, #7
    mov r3, #0
    strb r3, [r5, #636]
    mulls r3, r2, r7
    movhi r3, r2, lsr #3
    mulhi r0, r3, r7
    and sl, r6, #255
    and r6, r4, #255
    strb r6, [r5, #323]
    str r7, [r5, #228]
    addls r3, r3, #7
    movls r0, r3, lsr #3
    ldrb r1, [r5, #326]
    ldr r3, [r5, #228]
    strb r2, [r5, #325]
    ldrb r2, [r5, #323]
    add r4, sp, #19
    and r8, r8, #255
    str r3, [r5, #240]
    strb r2, [r5, #324]
    str r0, [r5, #244]
    strb r1, [r5, #327]
    mov r0, r4
    mov r1, r7
    strb r8, [r5, #322]
    strb sl, [r5, #319]
    str r9, [r5, #232]
.Lsec01_000030cc:
    bl png_save_uint_32
    mov r1, r9
    add r0, r4, #4
.Lsec01_000030d8:
    bl png_save_uint_32
    mov ip, #0
    mov r3, #13
    mov r2, r4
    mov r0, r5
    ldr r1, [pc, #316]
    strb r6, [sp, #27]
    strb r8, [sp, #28]
    strb ip, [sp, #30]
    strb sl, [sp, #31]
    strb ip, [sp, #29]
.Lsec01_00003104:
    bl png_write_chunk
    ldrb r3, [r5, #321]
    cmp r3, #0
    ldr r3, [pc, #284]
    str r3, [r5, #176]
    ldr r3, [pc, #280]
    str r5, [r5, #184]
    str r3, [r5, #180]
    bne .Lsec01_0000314c
    ldrb r3, [r5, #322]
    cmp r3, #3
    beq .Lsec01_00003144
    ldrb r3, [r5, #323]
    cmp r3, #7
    mvnhi r3, #7
    bhi .Lsec01_00003148
.Lsec01_00003144:
    mov r3, #8
.Lsec01_00003148:
    strb r3, [r5, #321]
.Lsec01_0000314c:
    ldr r3, [r5, #136]
    ands r2, r3, #1
    bne .Lsec01_0000316c
    ldrb r3, [r5, #321]
    cmp r3, #8
    movne r3, #1
    strne r3, [r5, #224]
    streq r2, [r5, #224]
.Lsec01_0000316c:
    ldr r3, [r5, #136]
    tst r3, #2
    mvneq r3, #0
    streq r3, [r5, #208]
    ldr r3, [r5, #136]
    tst r3, #4
    moveq r3, #8
    streq r3, [r5, #220]
    ldr r3, [r5, #136]
    tst r3, #8
    moveq r3, #15
    streq r3, [r5, #216]
    ldr r3, [r5, #136]
    tst r3, #16
    moveq r3, #8
    streq r3, [r5, #212]
    add r1, r5, #208
    ldmia r1, {r1, r2, r3, ip}
    ldr lr, [r5, #224]
    str ip, [sp]
    ldr ip, [pc, #120]
    add r0, r5, #144
    str ip, [sp, #8]
    mov ip, #56
    str lr, [sp, #4]
    str ip, [sp, #12]
.Lsec01_000031d4:
    bl deflateInit2_
    mov r3, #1
    ldr r2, [r5, #200]
    ldr r1, [r5, #204]
    str r3, [r5, #132]
    mov r3, #0
    str r2, [r5, #156]
    str r1, [r5, #160]
    str r3, [r5, #188]
    add sp, sp, #32
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    bx lr
    .long 0x00010116
    .long .Lsec05_000006c4
    .long .Lsec05_000006ec
    .long 0x00000116
    .long .Lsec05_0000070c
    .long .Lsec05_00000734
    .long .Lsec05_00000760
    .long .Lsec05_00000784
    .long .Lsec05_000007a8
    .long .Lsec05_000007cc
    .long .Lsec05_000007ec
    .long png_IHDR
    .long png_zalloc
    .long png_zfree
    .long .Lsec05_00000810

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "Unknown compression type %d"
.Lsec05_0000001c:
    .asciz "zlib1 error %d"
    .asciz ""
.Lsec05_0000002c:
    .asciz "zlib2 error %d"
    .asciz ""
.Lsec05_0000003c:
    .asciz "zero length keyword"
.Lsec05_00000050:
    .asciz "Out of memory while procesing keyword"
    .asciz ""
    .asciz ""
.Lsec05_00000078:
    .asciz "invalid keyword character 0x%02X"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000009c:
    .asciz "trailing spaces removed from keyword"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000000c4:
    .asciz "leading spaces removed from keyword"
.Lsec05_000000e8:
    .asciz "extra interior spaces removed from keyword"
    .asciz ""
.Lsec05_00000114:
    .asciz "Zero length keyword"
.Lsec05_00000128:
    .asciz "keyword length must be 1 - 79 characters"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000154:
    .asciz "%12.12e"
.Lsec05_0000015c:
    .asciz "Unrecognized equation type for pCAL chunk"
    .asciz ""
    .asciz ""
.Lsec05_00000188:
    .asciz "Empty keyword in tEXt chunk"
.Lsec05_000001a4:
    .asciz "Empty keyword in zTXt chunk"
.Lsec05_000001c0:
    .asciz "Invalid number of histogram entries specified"
    .asciz ""
    .asciz ""
.Lsec05_000001f0:
    .asciz "Empty keyword in sPLT chunk"
.Lsec05_0000020c:
    .asciz "Empty keyword in iCCP chunk"
.Lsec05_00000228:
    .asciz "Unknown compression type in iCCP chunk"
    .asciz ""
.Lsec05_00000250:
    .asciz "Invalid number of colors in palette"
.Lsec05_00000274:
    .asciz "Ignoring request to write a PLTE chunk in grayscale PNG"
.Lsec05_000002ac:
    .asciz "Invalid time specified for tIME chunk"
    .asciz ""
    .asciz ""
.Lsec05_000002d4:
    .asciz "Unrecognized unit type for pHYs chunk"
    .asciz ""
    .asciz ""
.Lsec05_000002fc:
    .asciz "Unrecognized unit type for oFFs chunk"
    .asciz ""
    .asciz ""
.Lsec05_00000324:
    .asciz "Invalid background palette index"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000348:
    .asciz "Ignoring attempt to write 16-bit bKGD chunk when bit_depth is 8"
.Lsec05_00000388:
    .asciz "Ignoring attempt to write bKGD chunk out-of-range for bit_depth"
.Lsec05_000003c8:
    .asciz "Invalid number of transparent colors specified"
    .asciz ""
.Lsec05_000003f8:
    .asciz "Ignoring attempt to write tRNS chunk out-of-range for bit_depth"
.Lsec05_00000438:
    .asciz "Ignoring attempt to write 16-bit tRNS chunk when bit_depth is 8"
.Lsec05_00000478:
    .asciz "Can't write tRNS with an alpha channel"
    .asciz ""
.Lsec05_000004a0:
    .asciz "Invalid fixed cHRM white point specified"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000004cc:
    .long 0x74696877
    .long 0x3d785f65
    .long 0x2c646c25
    .long 0x69687720
    .long 0x795f6574
    .long 0x646c253d
    .long 0x0000000a
.Lsec05_000004e8:
    .asciz "Invalid cHRM fixed red point specified"
    .asciz ""
.Lsec05_00000510:
    .asciz "Invalid fixed cHRM green point specified"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000053c:
    .asciz "Invalid fixed cHRM blue point specified"
.Lsec05_00000564:
    .asciz "Invalid cHRM white point specified"
    .asciz ""
.Lsec05_00000588:
    .long 0x74696877
    .long 0x3d785f65
    .long 0x202c6625
    .long 0x74696877
    .long 0x3d795f65
    .long 0x000a6625
.Lsec05_000005a0:
    .asciz "Invalid cHRM red point specified"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000005c4:
    .asciz "Invalid cHRM green point specified"
    .asciz ""
.Lsec05_000005e8:
    .asciz "Invalid cHRM blue point specified"
    .asciz ""
    .asciz ""
.Lsec05_0000060c:
    .asciz "Invalid sBIT depth specified"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000062c:
    .asciz "Invalid sRGB rendering intent specified"
.Lsec05_00000654:
    .asciz "Invalid zlib compression method or flags in IDAT"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000688:
    .asciz "zlib3 error %d"
    .asciz ""
.Lsec05_00000698:
    .asciz "zlib4 error %d in:%X avail:%d out:%X ste:%X"
.Lsec05_000006c4:
    .asciz "Invalid bit depth for grayscale image"
    .asciz ""
    .asciz ""
.Lsec05_000006ec:
    .asciz "Invalid bit depth for RGB image"
.Lsec05_0000070c:
    .asciz "Invalid bit depth for paletted image"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000734:
    .asciz "Invalid bit depth for grayscale+alpha image"
.Lsec05_00000760:
    .asciz "Invalid bit depth for RGBA image"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000784:
    .asciz "Invalid image color type specified"
    .asciz ""
.Lsec05_000007a8:
    .asciz "Invalid compression type specified"
    .asciz ""
.Lsec05_000007cc:
    .asciz "Invalid filter type specified"
    .asciz ""
    .asciz ""
.Lsec05_000007ec:
    .asciz "Invalid interlace type specified"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000810:
    .asciz "1.2.3"
    .asciz ""
    .asciz ""

.section .rodata,"a",%progbits
.balign 1
C.0.5128:
.Lsec06_00000000:
    .long 0x474e5089
    .long 0x0a1a0a0d

.size png_text_compress, 700
.size C.0.5128, 8
.size png_write_compressed_data_out, 192
.size png_save_uint_32, 32
.size png_save_int_32, 32
.size png_save_uint_16, 16
.size png_do_write_interlace, 512
.size png_write_start_row, 452
.size png_check_keyword, 524
.size png_write_sig, 88
.size png_write_chunk_end, 56
.size png_write_chunk_data, 56
.size png_write_chunk_start, 100
.size png_write_sCAL, 192
.size png_write_pCAL, 372
.size png_write_tEXt, 228
.size png_write_zTXt, 268
.size png_write_hIST, 144
.size png_write_sPLT, 340
.size png_write_iCCP, 332
.size png_write_PLTE, 216
.size png_write_chunk, 52
.size png_write_tIME, 184
.size png_write_pHYs, 108
.size png_write_oFFs, 108
.size png_write_bKGD, 272
.size png_write_tRNS, 292
.size png_write_cHRM_fixed, 392
.size png_write_cHRM, 1236
.size png_write_sBIT, 252
.size png_write_sRGB, 72
.size png_write_gAMA_fixed, 60
.size png_write_gAMA, 108
.size png_write_IEND, 48
.size png_write_IDAT, 324
.size png_write_finish_row, 528
.size png_write_filtered_row, 248
.size png_write_find_filter, 2920
.size png_write_IHDR, 808

.section .note.GNU-stack,"",%progbits
