/* Reconstructed mnemonic source for pngread.o. */
.syntax unified
.arch armv5te

.global png_set_read_status_fn
.type png_set_read_status_fn, %function
.global png_read_destroy
.type png_read_destroy, %function
.global png_destroy_read_struct
.type png_destroy_read_struct, %function
.global png_read_end
.type png_read_end, %function
.global png_start_read_image
.type png_start_read_image, %function
.global png_read_row
.type png_read_row, %function
.global png_read_image
.type png_read_image, %function
.global png_read_rows
.type png_read_rows, %function
.global png_read_update_info
.type png_read_update_info, %function
.global png_read_info
.type png_read_info, %function
.global png_read_png
.type png_read_png, %function
.global png_read_init_3
.type png_read_init_3, %function
.global png_read_init_2
.type png_read_init_2, %function
.global png_read_init
.type png_read_init, %function
.global png_create_read_struct_2
.type png_create_read_struct_2, %function
.global png_create_read_struct
.type png_create_read_struct, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_set_read_status_fn:
    str r1, [r0, #436]
    bx lr
png_read_destroy:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    cmp r1, #0
    sub sp, sp, #100
    mov r4, r2
    mov sl, r0
.Lsec01_0000001c:
    blne png_info_destroy
    cmp r4, #0
    movne r1, r4
    movne r0, sl
.Lsec01_0000002c:
    blne png_info_destroy
    ldr r1, [sl, #200]
    mov r0, sl
.Lsec01_00000038:
    bl png_free
    mov r0, sl
    ldr r1, [sl, #620]
.Lsec01_00000044:
    bl png_free
    mov r0, sl
    ldr r1, [sl, #260]
.Lsec01_00000050:
    bl png_free
    mov r0, sl
    ldr r1, [sl, #520]
.Lsec01_0000005c:
    bl png_free
    mov r0, sl
    ldr r1, [sl, #524]
.Lsec01_00000068:
    bl png_free
    mov r0, sl
    ldr r1, [sl, #384]
.Lsec01_00000074:
    bl png_free
    mov r0, sl
    ldr r1, [sl, #388]
.Lsec01_00000080:
    bl png_free
    mov r0, sl
    ldr r1, [sl, #392]
.Lsec01_0000008c:
    bl png_free
    ldr r3, [sl, #560]
    tst r3, #4096
    movne r0, sl
    ldrne r1, [sl, #304]
.Lsec01_000000a0:
    blne png_zfree
    ldr r3, [sl, #560]
    tst r3, #8192
    bic r3, r3, #4096
    str r3, [sl, #560]
    movne r0, sl
    ldrne r1, [sl, #420]
.Lsec01_000000bc:
    blne png_free
    ldr r3, [sl, #560]
    tst r3, #8
    bic r3, r3, #8192
    str r3, [sl, #560]
    movne r0, sl
    ldrne r1, [sl, #528]
.Lsec01_000000d8:
    blne png_free
    ldr r3, [sl, #560]
    ldr r2, [sl, #396]
    bic r3, r3, #8
    cmp r2, #0
    str r3, [sl, #560]
    beq .Lsec01_00000130
    ldr r3, [sl, #372]
    mov r2, #1
    rsb r3, r3, #8
    mov r5, r2, lsl r3
    mov r4, #0
    b .Lsec01_0000011c
.Lsec01_0000010c:
    ldr r3, [sl, #396]
    ldr r1, [r3, r4, lsl #2]
.Lsec01_00000114:
    bl png_free
    add r4, r4, #1
.Lsec01_0000011c:
    cmp r4, r5
    mov r0, sl
    blt .Lsec01_0000010c
    ldr r1, [sl, #396]
.Lsec01_0000012c:
    bl png_free
.Lsec01_00000130:
    ldr r3, [sl, #400]
    cmp r3, #0
    beq .Lsec01_00000178
    ldr r3, [sl, #372]
    mov r2, #1
    rsb r3, r3, #8
    mov r5, r2, lsl r3
    mov r4, #0
    b .Lsec01_00000164
.Lsec01_00000154:
    ldr r3, [sl, #400]
    ldr r1, [r3, r4, lsl #2]
.Lsec01_0000015c:
    bl png_free
    add r4, r4, #1
.Lsec01_00000164:
    cmp r4, r5
    mov r0, sl
    blt .Lsec01_00000154
    ldr r1, [sl, #400]
.Lsec01_00000174:
    bl png_free
.Lsec01_00000178:
    ldr r3, [sl, #404]
    cmp r3, #0
    beq .Lsec01_000001c0
    ldr r3, [sl, #372]
    mov r2, #1
    rsb r3, r3, #8
    mov r5, r2, lsl r3
    mov r4, #0
    b .Lsec01_000001ac
.Lsec01_0000019c:
    ldr r3, [sl, #404]
    ldr r1, [r3, r4, lsl #2]
.Lsec01_000001a4:
    bl png_free
    add r4, r4, #1
.Lsec01_000001ac:
    cmp r4, r5
    mov r0, sl
    blt .Lsec01_0000019c
    ldr r1, [sl, #404]
.Lsec01_000001bc:
    bl png_free
.Lsec01_000001c0:
    ldr r1, [sl, #556]
    mov r0, sl
.Lsec01_000001c8:
    bl png_free
    add r0, sl, #144
.Lsec01_000001d0:
    bl inflateEnd
    mov r0, sl
    ldr r1, [sl, #460]
.Lsec01_000001dc:
    bl png_free
    add r8, sp, #4
    mov r0, sl
    ldr r1, [sl, #512]
.Lsec01_000001ec:
    bl png_free
    mov r1, sl
    mov r2, #92
    mov r0, r8
.Lsec01_000001fc:
    bl memcpy
    add r4, sl, #92
    ldmia r4, {r4, r5, r6}
    ldr r7, [sl, #616]
    mov r1, #0
    mov r2, #648
    mov r0, sl
.Lsec01_00000218:
    bl memset
    str r4, [sl, #92]
    str r5, [sl, #96]
    str r6, [sl, #100]
    str r7, [sl, #616]
    mov r0, sl
    mov r1, r8
    mov r2, #92
.Lsec01_00000238:
    bl memcpy
    add sp, sp, #100
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
png_destroy_read_struct:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    subs fp, r0, #0
    ldrne r6, [fp]
    moveq r6, fp
    cmp r1, #0
    ldrne r5, [r1]
    moveq r5, r1
    cmp r2, #0
    ldrne r9, [r2]
    moveq r9, r2
    sub sp, sp, #4
    mov r4, r1
    mov sl, r2
    mov r0, r6
    mov r1, r5
    mov r2, r9
    ldr r8, [r6, #616]
    ldr r7, [r6, #608]
.Lsec01_00000290:
    bl png_read_destroy
    cmp r5, #0
    beq .Lsec01_000002c8
    mvn r3, #0
    mov r0, r6
    mov r1, r5
    mov r2, #16384
.Lsec01_000002ac:
    bl png_free_data
    mov r0, r5
    mov r1, r8
    mov r2, r7
.Lsec01_000002bc:
    bl png_destroy_struct_2
    mov r3, #0
    str r3, [r4]
.Lsec01_000002c8:
    cmp r9, #0
    beq .Lsec01_000002fc
    mvn r3, #0
    mov r0, r6
    mov r1, r9
    mov r2, #16384
.Lsec01_000002e0:
    bl png_free_data
    mov r0, r9
    mov r1, r8
    mov r2, r7
.Lsec01_000002f0:
    bl png_destroy_struct_2
    mov r3, #0
    str r3, [sl]
.Lsec01_000002fc:
    mov r0, r6
    mov r1, r8
    mov r2, r7
.Lsec01_00000308:
    bl png_destroy_struct_2
    mov r3, #0
    str r3, [fp]
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
png_read_end:
    stmdb sp!, {r4, r5, r6, r7, lr}
    mov r7, r1
    sub sp, sp, #12
    mov r1, #0
    mov r5, r0
.Lsec01_00000334:
    bl png_crc_finish
.Lsec01_00000338:
    add r4, sp, #4
    mov r2, #4
    mov r1, r4
    mov r0, r5
.Lsec01_00000348:
    bl png_read_data
    mov r1, r4
    mov r0, r5
.Lsec01_00000354:
    bl png_get_uint_31
    add r4, r5, #312
    mov r6, r0
    mov r0, r5
.Lsec01_00000364:
    bl png_reset_crc
    mov r1, r4
    mov r2, #4
    mov r0, r5
.Lsec01_00000374:
    bl png_crc_read
    mov r0, r4
    ldr r1, [pc, #1076]
    mov r2, #4
.Lsec01_00000384:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000003a4
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_0000039c:
    bl png_handle_IHDR
    b .Lsec01_000007a0
.Lsec01_000003a4:
    mov r0, r4
    ldr r1, [pc, #1036]
    mov r2, #4
.Lsec01_000003b0:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000003d0
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_000003c8:
    bl png_handle_IEND
    b .Lsec01_000007a0
.Lsec01_000003d0:
    mov r0, r5
    mov r1, r4
.Lsec01_000003d8:
    bl png_handle_as_unknown
    cmp r0, #0
    beq .Lsec01_0000045c
    mov r0, r4
    ldr r1, [pc, #976]
    mov r2, #4
.Lsec01_000003f0:
    bl memcmp
    cmp r0, #0
    ldrne r3, [r5, #132]
    orrne r3, r3, #8
    strne r3, [r5, #132]
    bne .Lsec01_00000428
    cmp r6, #0
    bne .Lsec01_0000041c
    ldr r3, [r5, #132]
    tst r3, #8
    beq .Lsec01_00000428
.Lsec01_0000041c:
    mov r0, r5
    ldr r1, [pc, #924]
.Lsec01_00000424:
    bl png_error
.Lsec01_00000428:
    mov r2, r6
    mov r1, r7
    mov r0, r5
.Lsec01_00000434:
    bl png_handle_unknown
    mov r0, r4
    ldr r1, [pc, #900]
    mov r2, #4
.Lsec01_00000444:
    bl memcmp
    cmp r0, #0
    ldreq r3, [r5, #132]
    orreq r3, r3, #2
    streq r3, [r5, #132]
    b .Lsec01_000007a0
.Lsec01_0000045c:
    mov r0, r4
    ldr r1, [pc, #856]
    mov r2, #4
.Lsec01_00000468:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000004a4
    cmp r6, #0
    bne .Lsec01_00000488
    ldr r3, [r5, #132]
    tst r3, #8
    beq .Lsec01_00000494
.Lsec01_00000488:
    mov r0, r5
    ldr r1, [pc, #816]
.Lsec01_00000490:
    bl png_error
.Lsec01_00000494:
    mov r1, r6
    mov r0, r5
.Lsec01_0000049c:
    bl png_crc_finish
    b .Lsec01_000007a0
.Lsec01_000004a4:
    mov r0, r4
    ldr r1, [pc, #792]
    mov r2, #4
.Lsec01_000004b0:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000004d0
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_000004c8:
    bl png_handle_PLTE
    b .Lsec01_000007a0
.Lsec01_000004d0:
    mov r0, r4
    ldr r1, [pc, #752]
    mov r2, #4
.Lsec01_000004dc:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000004fc
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_000004f4:
    bl png_handle_bKGD
    b .Lsec01_000007a0
.Lsec01_000004fc:
    mov r0, r4
    ldr r1, [pc, #712]
    mov r2, #4
.Lsec01_00000508:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000528
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_00000520:
    bl png_handle_cHRM
    b .Lsec01_000007a0
.Lsec01_00000528:
    mov r0, r4
    ldr r1, [pc, #672]
    mov r2, #4
.Lsec01_00000534:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000554
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_0000054c:
    bl png_handle_gAMA
    b .Lsec01_000007a0
.Lsec01_00000554:
    mov r0, r4
    ldr r1, [pc, #632]
    mov r2, #4
.Lsec01_00000560:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000580
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_00000578:
    bl png_handle_hIST
    b .Lsec01_000007a0
.Lsec01_00000580:
    mov r0, r4
    ldr r1, [pc, #592]
    mov r2, #4
.Lsec01_0000058c:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000005ac
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_000005a4:
    bl png_handle_oFFs
    b .Lsec01_000007a0
.Lsec01_000005ac:
    mov r0, r4
    ldr r1, [pc, #552]
    mov r2, #4
.Lsec01_000005b8:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000005d8
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_000005d0:
    bl png_handle_pCAL
    b .Lsec01_000007a0
.Lsec01_000005d8:
    mov r0, r4
    ldr r1, [pc, #512]
    mov r2, #4
.Lsec01_000005e4:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000604
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_000005fc:
    bl png_handle_sCAL
    b .Lsec01_000007a0
.Lsec01_00000604:
    mov r0, r4
    ldr r1, [pc, #472]
    mov r2, #4
.Lsec01_00000610:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000630
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_00000628:
    bl png_handle_pHYs
    b .Lsec01_000007a0
.Lsec01_00000630:
    mov r0, r4
    ldr r1, [pc, #432]
    mov r2, #4
.Lsec01_0000063c:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000065c
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_00000654:
    bl png_handle_sBIT
    b .Lsec01_000007a0
.Lsec01_0000065c:
    mov r0, r4
    ldr r1, [pc, #392]
    mov r2, #4
.Lsec01_00000668:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000688
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_00000680:
    bl png_handle_sRGB
    b .Lsec01_000007a0
.Lsec01_00000688:
    mov r0, r4
    ldr r1, [pc, #352]
    mov r2, #4
.Lsec01_00000694:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000006b4
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_000006ac:
    bl png_handle_iCCP
    b .Lsec01_000007a0
.Lsec01_000006b4:
    mov r0, r4
    ldr r1, [pc, #312]
    mov r2, #4
.Lsec01_000006c0:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000006e0
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_000006d8:
    bl png_handle_sPLT
    b .Lsec01_000007a0
.Lsec01_000006e0:
    mov r0, r4
    ldr r1, [pc, #272]
    mov r2, #4
.Lsec01_000006ec:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000070c
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_00000704:
    bl png_handle_tEXt
    b .Lsec01_000007a0
.Lsec01_0000070c:
    mov r0, r4
    ldr r1, [pc, #232]
    mov r2, #4
.Lsec01_00000718:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000738
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_00000730:
    bl png_handle_tIME
    b .Lsec01_000007a0
.Lsec01_00000738:
    mov r0, r4
    ldr r1, [pc, #192]
    mov r2, #4
.Lsec01_00000744:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000764
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_0000075c:
    bl png_handle_tRNS
    b .Lsec01_000007a0
.Lsec01_00000764:
    mov r0, r4
    ldr r1, [pc, #152]
    mov r2, #4
.Lsec01_00000770:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000790
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_00000788:
    bl png_handle_zTXt
    b .Lsec01_000007a0
.Lsec01_00000790:
    mov r2, r6
    mov r0, r5
    mov r1, r7
.Lsec01_0000079c:
    bl png_handle_unknown
.Lsec01_000007a0:
    ldr r3, [r5, #132]
    tst r3, #16
    beq .Lsec01_00000338
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long png_IHDR
    .long png_IEND
    .long png_IDAT
    .long .Lsec05_00000000
    .long png_PLTE
    .long png_bKGD
    .long png_cHRM
    .long png_gAMA
    .long png_hIST
    .long png_oFFs
    .long png_pCAL
    .long png_sCAL
    .long png_pHYs
    .long png_sBIT
    .long png_sRGB
    .long png_iCCP
    .long png_sPLT
    .long png_tEXt
    .long png_tIME
    .long png_tRNS
    .long png_zTXt
.arm
png_start_read_image:
    str lr, [sp, #-4]!
    ldr r3, [r0, #136]
    tst r3, #64
    sub sp, sp, #4
.Lsec01_0000081c:
    bleq png_read_start_row
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_read_row:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    ldr r3, [r0, #136]
    tst r3, #64
    sub sp, sp, #16
    mov r4, r0
    mov r8, r1
    mov r5, r2
.Lsec01_00000848:
    bleq png_read_start_row
    ldrb r3, [r4, #319]
    cmp r3, #0
    ldr r2, [r4, #256]
    beq .Lsec01_0000094c
    ldr r3, [r4, #140]
    tst r3, #2
    beq .Lsec01_0000094c
    ldrb r1, [r4, #320]
    cmp r1, #6
    ldrls pc, [pc, r1, lsl #2]
    b .Lsec01_0000094c
    .long .Lsec01_00000894
    .long .Lsec01_000008a0
    .long .Lsec01_000008b4
    .long .Lsec01_000008d0
    .long .Lsec01_000008e4
    .long .Lsec01_00000904
    .long .Lsec01_00000938
.arm
.Lsec01_00000894:
    tst r2, #7
    beq .Lsec01_0000094c
    b .Lsec01_00000918
.Lsec01_000008a0:
    tst r2, #7
    bne .Lsec01_00000918
    ldr r3, [r4, #228]
    cmp r3, #4
    b .Lsec01_00000914
.Lsec01_000008b4:
    and r3, r2, #7
    cmp r3, #4
    beq .Lsec01_0000094c
    cmp r5, #0
    beq .Lsec01_00000940
    tst r2, #4
    b .Lsec01_000008fc
.Lsec01_000008d0:
    tst r2, #3
    bne .Lsec01_00000918
    ldr r3, [r4, #228]
    cmp r3, #2
    b .Lsec01_00000914
.Lsec01_000008e4:
    and r3, r2, #3
    cmp r3, #2
    beq .Lsec01_0000094c
    cmp r5, #0
    beq .Lsec01_00000940
    tst r2, #2
.Lsec01_000008fc:
    beq .Lsec01_00000940
    b .Lsec01_00000920
.Lsec01_00000904:
    tst r2, #1
    bne .Lsec01_00000918
    ldr r3, [r4, #228]
    cmp r3, #1
.Lsec01_00000914:
    bhi .Lsec01_0000094c
.Lsec01_00000918:
    cmp r5, #0
    beq .Lsec01_00000940
.Lsec01_00000920:
    ldr r3, [pc, #764]
    mov r0, r4
    ldr r2, [r3, r1, lsl #2]
    mov r1, r5
.Lsec01_00000930:
    bl png_combine_row
    b .Lsec01_00000940
.Lsec01_00000938:
    tst r2, #1
    bne .Lsec01_0000094c
.Lsec01_00000940:
    mov r0, r4
.Lsec01_00000944:
    bl png_read_finish_row
    b .Lsec01_00000c18
.Lsec01_0000094c:
    ldr r3, [r4, #132]
    tst r3, #4
    moveq r0, r4
    ldreq r1, [pc, #712]
.Lsec01_0000095c:
    bleq png_error
    ldr r3, [r4, #264]
    ldr r2, [r4, #248]
    str r3, [r4, #156]
    str r2, [r4, #160]
.Lsec01_00000970:
    ldr r3, [r4, #148]
    cmp r3, #0
    beq .Lsec01_000009dc
    b .Lsec01_00000a2c
.Lsec01_00000980:
    bl png_crc_finish
    mov r2, #4
    mov r0, r4
    mov r1, r7
.Lsec01_00000990:
    bl png_read_data
    mov r1, r7
    mov r0, r4
.Lsec01_0000099c:
    bl png_get_uint_31
    str r0, [r4, #296]
    mov r0, r4
.Lsec01_000009a8:
    bl png_reset_crc
    mov r1, r6
    mov r2, #4
    mov r0, r4
.Lsec01_000009b8:
    bl png_crc_read
    ldr r1, [pc, #616]
    mov r0, r6
    mov r2, #4
.Lsec01_000009c8:
    bl memcmp
    cmp r0, #0
    ldr r1, [pc, #600]
    mov r0, r4
.Lsec01_000009d8:
    blne png_error
.Lsec01_000009dc:
    ldr ip, [r4, #296]
    subs r1, ip, #0
    add r7, sp, #12
    mov r0, r4
    add r6, r4, #312
    beq .Lsec01_00000980
    ldr r2, [r4, #204]
    cmp r2, ip
    ldr r3, [r4, #200]
    str r2, [r4, #148]
    strhi ip, [r4, #148]
    str r3, [r4, #144]
    ldr r2, [r4, #148]
    mov r0, r4
    ldr r1, [r4, #200]
.Lsec01_00000a18:
    bl png_crc_read
    ldr r3, [r4, #296]
    ldr r2, [r4, #148]
    rsb r3, r2, r3
    str r3, [r4, #296]
.Lsec01_00000a2c:
    add r0, r4, #144
    mov r1, #1
.Lsec01_00000a34:
    bl inflate
    cmp r0, #1
    bne .Lsec01_00000a8c
    ldr r3, [r4, #160]
    cmp r3, #0
    bne .Lsec01_00000a64
    ldr r3, [r4, #148]
    cmp r3, #0
    bne .Lsec01_00000a64
    ldr r3, [r4, #296]
    cmp r3, #0
    beq .Lsec01_00000a70
.Lsec01_00000a64:
    mov r0, r4
    ldr r1, [pc, #452]
.Lsec01_00000a6c:
    bl png_error
.Lsec01_00000a70:
    ldr r3, [r4, #132]
    ldr r2, [r4, #136]
    orr r3, r3, #8
    orr r2, r2, #32
    str r3, [r4, #132]
    str r2, [r4, #136]
    b .Lsec01_00000ab8
.Lsec01_00000a8c:
    cmp r0, #0
    beq .Lsec01_00000aac
    ldr r3, [r4, #168]
    cmp r3, #0
    ldr r1, [pc, #404]
    mov r0, r4
    movne r1, r3
.Lsec01_00000aa8:
    bl png_error
.Lsec01_00000aac:
    ldr r3, [r4, #160]
    cmp r3, #0
    bne .Lsec01_00000970
.Lsec01_00000ab8:
    ldrb r0, [r4, #325]
    ldrb r3, [r4, #322]
    ldr ip, [r4, #252]
    cmp r0, #7
    strb r3, [r4, #292]
    mulls r3, ip, r0
    movhi r3, r0, lsr #3
    mulhi r3, ip, r3
    addls r3, r3, #7
    ldrb r2, [r4, #326]
    ldrb r1, [r4, #323]
    movls r3, r3, lsr #3
    strb r2, [r4, #294]
    strb r1, [r4, #293]
    str ip, [r4, #284]
    strb r0, [r4, #295]
    str r3, [r4, #288]
    ldr r2, [r4, #264]
    ldrb ip, [r2]
    cmp ip, #0
    beq .Lsec01_00000b28
    ldr r3, [r4, #260]
    add r2, r2, #1
    add r3, r3, #1
    mov r0, r4
    add r1, r4, #284
    str ip, [sp]
.Lsec01_00000b24:
    bl png_read_filter_row
.Lsec01_00000b28:
    ldr r3, [r4, #244]
    mov r0, r4
    add r3, r3, #1
    add r1, r4, #260
    ldmia r1, {r1, r2}
.Lsec01_00000b3c:
    bl png_memcpy_check
    ldr r3, [r4, #140]
    cmp r3, #0
    bne .Lsec01_00000b58
    ldr r3, [r4, #136]
    tst r3, #4194304
    beq .Lsec01_00000b60
.Lsec01_00000b58:
    mov r0, r4
.Lsec01_00000b5c:
    bl png_do_read_transformations
.Lsec01_00000b60:
    ldrb r3, [r4, #319]
    cmp r3, #0
    beq .Lsec01_00000bc8
    ldr r3, [r4, #140]
    tst r3, #2
    beq .Lsec01_00000bc8
    ldrb r3, [r4, #320]
    cmp r3, #5
    movls r0, r4
.Lsec01_00000b84:
    blls png_do_read_interlace
    cmp r5, #0
    beq .Lsec01_00000ba8
    ldrb r2, [r4, #320]
    ldr r3, [pc, #136]
    mov r1, r5
    ldr r2, [r3, r2, lsl #2]
    mov r0, r4
.Lsec01_00000ba4:
    bl png_combine_row
.Lsec01_00000ba8:
    cmp r8, #0
    beq .Lsec01_00000bf4
    ldrb r2, [r4, #320]
    ldr r3, [pc, #128]
    ldr r2, [r3, r2, lsl #2]
    mov r1, r8
    mov r0, r4
    b .Lsec01_00000bf0
.Lsec01_00000bc8:
    cmp r8, #0
    movne r1, r8
    movne r0, r4
    movne r2, #255
.Lsec01_00000bd8:
    blne png_combine_row
    cmp r5, #0
    beq .Lsec01_00000bf4
    mov r1, r5
    mov r0, r4
    mov r2, #255
.Lsec01_00000bf0:
    bl png_combine_row
.Lsec01_00000bf4:
    mov r0, r4
.Lsec01_00000bf8:
    bl png_read_finish_row
    ldr r3, [r4, #436]
    cmp r3, #0
    movne r0, r4
    ldrne r1, [r4, #256]
    ldrneb r2, [r4, #320]
    movne lr, pc
    bxne r3
.Lsec01_00000c18:
    add sp, sp, #16
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long png_pass_dsp_mask
    .long .Lsec05_00000018
    .long png_IDAT
    .long .Lsec05_0000003c
    .long .Lsec05_00000054
    .long .Lsec05_0000006c
    .long png_pass_mask
.arm
png_read_image:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    sub sp, sp, #4
    mov r5, r0
    mov sl, r1
.Lsec01_00000c50:
    bl png_set_interlace_handling
    ldr r7, [r5, #232]
    mov r8, r0
    mov r6, #0
    str r7, [r5, #236]
    b .Lsec01_00000c88
.Lsec01_00000c68:
    ldr r1, [sl, r4, lsl #2]
    add r4, r4, #1
.Lsec01_00000c70:
    bl png_read_row
.Lsec01_00000c74:
    cmp r4, r7
    mov r0, r5
    mov r2, #0
    bne .Lsec01_00000c68
    add r6, r6, #1
.Lsec01_00000c88:
    cmp r6, r8
    movlt r4, #0
    blt .Lsec01_00000c74
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
png_read_rows:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    mov r7, r2
    mov r6, r1
    subs r2, r1, #0
    movne r2, #1
    subs r1, r7, #0
    movne r1, #1
    tst r2, r1
    movne r5, #0
    sub sp, sp, #4
    mov sl, r0
    mov r8, r3
    movne r4, r5
    bne .Lsec01_00000cec
    b .Lsec01_00000d00
.Lsec01_00000cdc:
    ldr r1, [r4, r6]
    ldr r2, [r4, r7]
.Lsec01_00000ce4:
    bl png_read_row
    add r4, r4, #4
.Lsec01_00000cec:
    cmp r5, r8
    mov r0, sl
    add r5, r5, #1
    bne .Lsec01_00000cdc
    b .Lsec01_00000d5c
.Lsec01_00000d00:
    cmp r2, #0
    movne r4, #0
    bne .Lsec01_00000d1c
    b .Lsec01_00000d30
.Lsec01_00000d10:
    ldr r1, [r6, r4, lsl #2]
    add r4, r4, #1
.Lsec01_00000d18:
    bl png_read_row
.Lsec01_00000d1c:
    cmp r4, r8
    mov r0, sl
    mov r2, #0
    bne .Lsec01_00000d10
    b .Lsec01_00000d5c
.Lsec01_00000d30:
    cmp r1, #0
    movne r4, #0
    bne .Lsec01_00000d4c
    b .Lsec01_00000d5c
.Lsec01_00000d40:
    ldr r2, [r7, r4, lsl #2]
    add r4, r4, #1
.Lsec01_00000d48:
    bl png_read_row
.Lsec01_00000d4c:
    cmp r4, r8
    mov r0, sl
    mov r1, #0
    bne .Lsec01_00000d40
.Lsec01_00000d5c:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
png_read_update_info:
    stmdb sp!, {r4, r5, lr}
    ldr r3, [r0, #136]
    tst r3, #64
    mov r5, r1
    sub sp, sp, #4
    mov r4, r0
    ldr r1, [pc, #36]
    bne .Lsec01_00000d90
.Lsec01_00000d88:
    bl png_read_start_row
    b .Lsec01_00000d94
.Lsec01_00000d90:
    bl png_warning
.Lsec01_00000d94:
    mov r0, r4
    mov r1, r5
.Lsec01_00000d9c:
    bl png_read_transform_info
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_00000080
.arm
png_read_info:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    ldrb r4, [r0, #328]
    cmp r4, #7
    sub sp, sp, #8
    mov r5, r0
    mov r8, r1
    bhi .Lsec01_00000e58
    rsb r7, r4, #8
    add r6, r1, #32
    add r1, r6, r4
    mov r2, r7
.Lsec01_00000ddc:
    bl png_read_data
    mov r3, #8
    strb r3, [r5, #328]
    mov r0, r6
    mov r1, r4
    mov r2, r7
.Lsec01_00000df4:
    bl png_sig_cmp
    cmp r0, #0
    beq .Lsec01_00000e44
    cmp r4, #3
    bhi .Lsec01_00000e38
    mov r1, r4
    mov r0, r6
    sub r2, r7, #4
.Lsec01_00000e14:
    bl png_sig_cmp
    cmp r0, #0
    movne r0, r5
    ldrne r1, [pc, #1248]
    bne .Lsec01_00000e40
    b .Lsec01_00000e38
.Lsec01_00000e2c:
    ldr r1, [pc, #1240]
    mov r0, r5
    b .Lsec01_00000f94
.Lsec01_00000e38:
    ldr r1, [pc, #1232]
    mov r0, r5
.Lsec01_00000e40:
    bl png_error
.Lsec01_00000e44:
    cmp r4, #2
    bhi .Lsec01_00000e58
    ldr r3, [r5, #132]
    orr r3, r3, #4096
.Lsec01_00000e54:
    str r3, [r5, #132]
.Lsec01_00000e58:
    add r4, sp, #4
    mov r2, #4
    mov r1, r4
    mov r0, r5
.Lsec01_00000e68:
    bl png_read_data
    mov r1, r4
    mov r0, r5
.Lsec01_00000e74:
    bl png_get_uint_31
    add r4, r5, #312
    mov r6, r0
    mov r0, r5
.Lsec01_00000e84:
    bl png_reset_crc
    mov r1, r4
    mov r2, #4
    mov r0, r5
.Lsec01_00000e94:
    bl png_crc_read
    mov r0, r4
    ldr r1, [pc, #1136]
    mov r2, #4
.Lsec01_00000ea4:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000ec4
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_00000ebc:
    bl png_handle_IHDR
    b .Lsec01_00000e58
.Lsec01_00000ec4:
    mov r0, r4
    ldr r1, [pc, #1096]
    mov r2, #4
.Lsec01_00000ed0:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000ef0
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_00000ee8:
    bl png_handle_IEND
    b .Lsec01_00000e58
.Lsec01_00000ef0:
    mov r0, r5
    mov r1, r4
.Lsec01_00000ef8:
    bl png_handle_as_unknown
    cmp r0, #0
    beq .Lsec01_00000f9c
    ldr r1, [pc, #1040]
    mov r2, #4
    mov r0, r4
.Lsec01_00000f10:
    bl memcmp
    cmp r0, #0
    ldreq r3, [r5, #132]
    orreq r3, r3, #4
    streq r3, [r5, #132]
    mov r2, r6
    mov r1, r8
    mov r0, r5
.Lsec01_00000f30:
    bl png_handle_unknown
    mov r0, r4
    ldr r1, [pc, #992]
    mov r2, #4
.Lsec01_00000f40:
    bl memcmp
    cmp r0, #0
    ldreq r3, [r5, #132]
    orreq r3, r3, #2
    beq .Lsec01_00000e54
    mov r0, r4
    ldr r1, [pc, #956]
    mov r2, #4
.Lsec01_00000f60:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000e58
    ldr r2, [r5, #132]
    tst r2, #1
    beq .Lsec01_00000e2c
    ldrb r3, [r5, #322]
    cmp r3, #3
    bne .Lsec01_000012fc
    tst r2, #2
    bne .Lsec01_000012fc
    ldr r1, [pc, #912]
    mov r0, r5
.Lsec01_00000f94:
    bl png_error
    b .Lsec01_000012fc
.Lsec01_00000f9c:
    mov r0, r4
    ldr r1, [pc, #888]
    mov r2, #4
.Lsec01_00000fa8:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00000fc8
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_00000fc0:
    bl png_handle_PLTE
    b .Lsec01_00000e58
.Lsec01_00000fc8:
    mov r0, r4
    ldr r1, [pc, #840]
    mov r2, #4
.Lsec01_00000fd4:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001028
    ldr r2, [r5, #132]
    tst r2, #1
    moveq r0, r5
    ldreq r1, [pc, #792]
    beq .Lsec01_00001010
    ldrb r3, [r5, #322]
    cmp r3, #3
    bne .Lsec01_00001014
    tst r2, #2
    bne .Lsec01_00001014
    ldr r1, [pc, #788]
    mov r0, r5
.Lsec01_00001010:
    bl png_error
.Lsec01_00001014:
    ldr r3, [r5, #132]
    orr r3, r3, #4
    str r3, [r5, #132]
    str r6, [r5, #296]
    b .Lsec01_000012fc
.Lsec01_00001028:
    mov r0, r4
    ldr r1, [pc, #756]
    mov r2, #4
.Lsec01_00001034:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001054
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_0000104c:
    bl png_handle_bKGD
    b .Lsec01_00000e58
.Lsec01_00001054:
    mov r0, r4
    ldr r1, [pc, #716]
    mov r2, #4
.Lsec01_00001060:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001080
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_00001078:
    bl png_handle_cHRM
    b .Lsec01_00000e58
.Lsec01_00001080:
    mov r0, r4
    ldr r1, [pc, #676]
    mov r2, #4
.Lsec01_0000108c:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000010ac
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_000010a4:
    bl png_handle_gAMA
    b .Lsec01_00000e58
.Lsec01_000010ac:
    mov r0, r4
    ldr r1, [pc, #636]
    mov r2, #4
.Lsec01_000010b8:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000010d8
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_000010d0:
    bl png_handle_hIST
    b .Lsec01_00000e58
.Lsec01_000010d8:
    mov r0, r4
    ldr r1, [pc, #596]
    mov r2, #4
.Lsec01_000010e4:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001104
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_000010fc:
    bl png_handle_oFFs
    b .Lsec01_00000e58
.Lsec01_00001104:
    mov r0, r4
    ldr r1, [pc, #556]
    mov r2, #4
.Lsec01_00001110:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001130
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_00001128:
    bl png_handle_pCAL
    b .Lsec01_00000e58
.Lsec01_00001130:
    mov r0, r4
    ldr r1, [pc, #516]
    mov r2, #4
.Lsec01_0000113c:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000115c
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_00001154:
    bl png_handle_sCAL
    b .Lsec01_00000e58
.Lsec01_0000115c:
    mov r0, r4
    ldr r1, [pc, #476]
    mov r2, #4
.Lsec01_00001168:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001188
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_00001180:
    bl png_handle_pHYs
    b .Lsec01_00000e58
.Lsec01_00001188:
    mov r0, r4
    ldr r1, [pc, #436]
    mov r2, #4
.Lsec01_00001194:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000011b4
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_000011ac:
    bl png_handle_sBIT
    b .Lsec01_00000e58
.Lsec01_000011b4:
    mov r0, r4
    ldr r1, [pc, #396]
    mov r2, #4
.Lsec01_000011c0:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000011e0
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_000011d8:
    bl png_handle_sRGB
    b .Lsec01_00000e58
.Lsec01_000011e0:
    mov r0, r4
    ldr r1, [pc, #356]
    mov r2, #4
.Lsec01_000011ec:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000120c
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_00001204:
    bl png_handle_iCCP
    b .Lsec01_00000e58
.Lsec01_0000120c:
    mov r0, r4
    ldr r1, [pc, #316]
    mov r2, #4
.Lsec01_00001218:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001238
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_00001230:
    bl png_handle_sPLT
    b .Lsec01_00000e58
.Lsec01_00001238:
    mov r0, r4
    ldr r1, [pc, #276]
    mov r2, #4
.Lsec01_00001244:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001264
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_0000125c:
    bl png_handle_tEXt
    b .Lsec01_00000e58
.Lsec01_00001264:
    mov r0, r4
    ldr r1, [pc, #236]
    mov r2, #4
.Lsec01_00001270:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001290
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_00001288:
    bl png_handle_tIME
    b .Lsec01_00000e58
.Lsec01_00001290:
    mov r0, r4
    ldr r1, [pc, #196]
    mov r2, #4
.Lsec01_0000129c:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000012bc
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_000012b4:
    bl png_handle_tRNS
    b .Lsec01_00000e58
.Lsec01_000012bc:
    mov r0, r4
    ldr r1, [pc, #156]
    mov r2, #4
.Lsec01_000012c8:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000012e8
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_000012e0:
    bl png_handle_zTXt
    b .Lsec01_00000e58
.Lsec01_000012e8:
    mov r2, r6
    mov r0, r5
    mov r1, r8
.Lsec01_000012f4:
    bl png_handle_unknown
    b .Lsec01_00000e58
.Lsec01_000012fc:
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long .Lsec05_000000c8
    .long .Lsec05_00000100
    .long .Lsec05_000000d8
    .long png_IHDR
    .long png_IEND
    .long png_IDAT
    .long png_PLTE
    .long .Lsec05_0000011c
    .long png_bKGD
    .long png_cHRM
    .long png_gAMA
    .long png_hIST
    .long png_oFFs
    .long png_pCAL
    .long png_sCAL
    .long png_pHYs
    .long png_sBIT
    .long png_sRGB
    .long png_iCCP
    .long png_sPLT
    .long png_tEXt
    .long png_tIME
    .long png_tRNS
    .long png_zTXt
.arm
png_read_png:
    stmdb sp!, {r4, r5, r6, r7, lr}
    tst r2, #1024
    sub sp, sp, #12
    mov r4, r2
    mov r6, r1
    mov r5, r0
.Lsec01_00001380:
    blne png_set_invert_alpha
    mov r0, r5
    mov r1, r6
.Lsec01_0000138c:
    bl png_read_info
    ldr r3, [r6, #4]
    cmn r3, #-1073741823
    movhi r0, r5
    ldrhi r1, [pc, #388]
.Lsec01_000013a0:
    blhi png_error
    tst r4, #1
    movne r0, r5
.Lsec01_000013ac:
    blne png_set_strip_16
    tst r4, #2
    movne r0, r5
.Lsec01_000013b8:
    blne png_set_strip_alpha
    tst r4, #8
    movne r0, r5
.Lsec01_000013c4:
    blne png_set_packswap
    tst r4, #16
    beq .Lsec01_00001408
    ldrb r3, [r5, #323]
    cmp r3, #7
    bls .Lsec01_00001400
    ldrb r3, [r5, #322]
    cmp r3, #3
    beq .Lsec01_00001400
    mov r0, r5
    mov r1, r6
    mov r2, #16
.Lsec01_000013f4:
    bl png_get_valid
    cmp r0, #0
    beq .Lsec01_00001408
.Lsec01_00001400:
    mov r0, r5
.Lsec01_00001404:
    bl png_set_expand
.Lsec01_00001408:
    tst r4, #32
    movne r0, r5
.Lsec01_00001410:
    blne png_set_invert_mono
    tst r4, #64
    beq .Lsec01_00001450
    mov r0, r5
    mov r1, r6
    mov r2, #2
.Lsec01_00001428:
    bl png_get_valid
    cmp r0, #0
    beq .Lsec01_00001450
    mov r1, r6
    mov r0, r5
    add r2, sp, #4
.Lsec01_00001440:
    bl png_get_sBIT
    mov r0, r5
    ldr r1, [sp, #4]
.Lsec01_0000144c:
    bl png_set_shift
.Lsec01_00001450:
    tst r4, #128
    movne r0, r5
.Lsec01_00001458:
    blne png_set_bgr
    tst r4, #256
    movne r0, r5
.Lsec01_00001464:
    blne png_set_swap_alpha
    tst r4, #512
    movne r0, r5
.Lsec01_00001470:
    blne png_set_swap
    mov r0, r5
    mov r1, r6
.Lsec01_0000147c:
    bl png_read_update_info
    mov r0, r5
    mov r1, r6
    mov r2, #64
    mov r3, #0
.Lsec01_00001490:
    bl png_free_data
    ldr r4, [r6, #248]
    cmp r4, #0
    bne .Lsec01_000014f8
    ldr r1, [r6, #4]
    mov r0, r5
    mov r1, r1, lsl #2
.Lsec01_000014ac:
    bl png_malloc
    ldr r3, [r6, #184]
    mov r7, r4
    orr r3, r3, #64
    str r0, [r6, #248]
    str r3, [r6, #184]
    b .Lsec01_000014e4
.Lsec01_000014c8:
    ldr r4, [r6, #248]
.Lsec01_000014cc:
    bl png_get_rowbytes
    mov r1, r0
    mov r0, r5
.Lsec01_000014d8:
    bl png_malloc
    str r0, [r4, r7, lsl #2]
    add r7, r7, #1
.Lsec01_000014e4:
    ldr r3, [r6, #4]
    cmp r7, r3
    mov r0, r5
    mov r1, r6
    blt .Lsec01_000014c8
.Lsec01_000014f8:
    mov r0, r5
    ldr r1, [r6, #248]
.Lsec01_00001500:
    bl png_read_image
    ldr r3, [r6, #8]
    orr r3, r3, #32768
    str r3, [r6, #8]
    mov r0, r5
    mov r1, r6
.Lsec01_00001518:
    bl png_read_end
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000138
.arm
png_read_init_3:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr ip, [pc, #352]
    mov r5, r0
    ldr r4, [r0]
    sub sp, sp, #100
    mov r6, r2
    mov r0, #0
.Lsec01_00001548:
    ldrb r3, [r0, r1]
    ldrb r2, [ip]
    cmp r2, r3
    add r0, r0, #1
    bne .Lsec01_00001630
    cmp r2, #0
    add ip, ip, #1
    bne .Lsec01_00001548
.Lsec01_00001568:
    add r7, sp, #4
    mov r0, r7
    mov r1, r4
    mov r2, #92
.Lsec01_00001578:
    bl memcpy
    cmp r6, #648
    bcs .Lsec01_0000159c
    mov r0, r4
.Lsec01_00001588:
    bl png_destroy_struct
    mov r0, #1
.Lsec01_00001590:
    bl png_create_struct
    str r0, [r5]
    mov r4, r0
.Lsec01_0000159c:
    mov r2, #648
    mov r1, #0
    mov r0, r4
.Lsec01_000015a8:
    bl memset
    mov r1, r7
    mov r2, #92
    mov r0, r4
.Lsec01_000015b8:
    bl memcpy
    ldr r3, [pc, #216]
    mov r2, #8192
    mov r1, r2
    str r3, [r4, #644]
    str r3, [r4, #640]
    str r2, [r4, #204]
    mov r0, r4
.Lsec01_000015d8:
    bl png_malloc
    ldr r3, [pc, #188]
    str r3, [r4, #176]
    ldr r3, [pc, #184]
    str r0, [r4, #200]
    str r3, [r4, #180]
    str r4, [r4, #184]
    add r0, r4, #144
    ldr r1, [pc, #168]
    mov r2, #56
.Lsec01_00001600:
    bl inflateInit_
    add r0, r0, #6
    cmp r0, #6
    ldrls pc, [pc, r0, lsl #2]
    b .Lsec01_00001660
    .long .Lsec01_00001654
    .long .Lsec01_00001660
    .long .Lsec01_00001648
    .long .Lsec01_00001660
    .long .Lsec01_00001648
    .long .Lsec01_00001660
    .long .Lsec01_0000166c
.arm
.Lsec01_00001630:
    mov r3, #0
    str r3, [r4, #96]
    mov r0, r4
    ldr r1, [pc, #104]
.Lsec01_00001640:
    bl png_warning
    b .Lsec01_00001568
.Lsec01_00001648:
    ldr r1, [pc, #96]
    mov r0, r4
    b .Lsec01_00001668
.Lsec01_00001654:
    ldr r1, [pc, #88]
    mov r0, r4
    b .Lsec01_00001668
.Lsec01_00001660:
    ldr r1, [pc, #80]
    mov r0, r4
.Lsec01_00001668:
    bl png_error
.Lsec01_0000166c:
    ldr r2, [r4, #204]
    ldr r3, [r4, #200]
    mov r1, #0
    str r2, [r4, #160]
    str r3, [r4, #156]
    mov r0, r4
    mov r2, r1
.Lsec01_00001688:
    bl png_set_read_fn
    add sp, sp, #100
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long png_libpng_ver
    .long 0x00002710
    .long png_zalloc
    .long png_zfree
    .long .Lsec05_000001b4
    .long .Lsec05_0000016c
    .long .Lsec05_000001bc
    .long .Lsec05_000001c8
    .long .Lsec05_000001d8
.arm
png_read_init_2:
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
    beq .Lsec01_0000173c
    mov r3, #0
    subs r2, r4, #0
    str r3, [r0, #96]
    mov r5, sl
    ldr r1, [pc, #140]
    mov r0, sl
    beq .Lsec01_00001720
.Lsec01_00001710:
    bl sprintf
    mov r1, sl
    ldr r0, [sp, #4]
.Lsec01_0000171c:
    bl png_warning
.Lsec01_00001720:
    ldr r1, [pc, #116]
    ldr r2, [pc, #116]
    mov r0, sl
.Lsec01_0000172c:
    bl sprintf
    mov r1, sl
    ldr r0, [sp, #4]
.Lsec01_00001738:
    bl png_warning
.Lsec01_0000173c:
    mov r2, #0
    cmp r6, r2
    ldr r1, [pc, #88]
    ldrne r3, [sp, #4]
    strne r2, [r3, #136]
    movne r0, r3
    strne r2, [r3, #92]
.Lsec01_00001758:
    blne png_error
    mov r2, #0
    cmp r7, r2
    ldr r1, [pc, #60]
    ldrne r3, [sp, #4]
    strne r2, [r3, #136]
    movne r0, r3
    strne r2, [r3, #92]
.Lsec01_00001778:
    blne png_error
    mov r1, r4
    mov r2, r8
    add r0, sp, #4
.Lsec01_00001788:
    bl png_read_init_3
    add sp, sp, #92
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long .Lsec05_000001ec
    .long .Lsec05_00000224
    .long png_libpng_ver
    .long .Lsec05_0000025c
    .long .Lsec05_000002a4
.arm
png_read_init:
    mov r2, #0
    ldr r1, [pc, #4]
    mov r3, r2
.Lsec01_000017b8:
    b png_read_init_2
    .long .Lsec05_000002e8
.arm
png_create_read_struct_2:
    stmdb sp!, {r4, lr}
    sub sp, sp, #104
    str r0, [sp, #12]
    str r1, [sp, #8]
    str r2, [sp, #4]
    mov r0, #1
    ldr r1, [sp, #116]
    ldr r2, [sp, #112]
    str r3, [sp]
.Lsec01_000017e4:
    bl png_create_struct_2
    subs r3, r0, #0
    beq .Lsec01_00001a34
    str r3, [sp, #20]
.Lsec01_000017f4:
    bl png_init_mmx_flags
    ldr r0, [sp, #20]
    ldr r3, [pc, #580]
    str r3, [r0, #644]
    str r3, [r0, #640]
    str r0, [sp, #16]
.Lsec01_0000180c:
    bl setjmp
    subs r4, r0, #0
    beq .Lsec01_00001848
    ldr r0, [sp, #20]
    ldr r1, [r0, #200]
.Lsec01_00001820:
    bl png_free
    ldr r1, [sp, #20]
    mov r4, #0
    str r4, [r1, #200]
    mov r0, r1
    ldr r2, [sp, #112]
    ldr r1, [sp, #120]
.Lsec01_0000183c:
    bl png_destroy_struct_2
    str r4, [sp, #20]
    b .Lsec01_00001a38
.Lsec01_00001848:
    add r1, sp, #112
    ldmia r1, {r1, r2, r3}
    ldr r0, [sp, #20]
.Lsec01_00001854:
    bl png_set_mem_fn
    ldr r0, [sp, #20]
    ldr r1, [sp, #8]
    ldr r2, [sp, #4]
    ldr r3, [sp]
.Lsec01_00001868:
    bl png_set_error_fn
    ldr r1, [pc, #472]
    mov r0, r4
.Lsec01_00001874:
    ldr ip, [sp, #12]
    ldrb r2, [r1]
    ldrb r3, [r0, ip]
    cmp r3, r2
    ldrne ip, [sp, #20]
    ldrne r3, [ip, #136]
    orrne r3, r3, #131072
    strne r3, [ip, #136]
    cmp r2, #0
    add r1, r1, #1
    addne r0, r0, #1
    bne .Lsec01_00001874
    ldr r0, [sp, #20]
    ldr r3, [r0, #136]
    tst r3, #131072
    beq .Lsec01_00001968
    ldr r1, [sp, #12]
    cmp r1, #0
    beq .Lsec01_00001930
    ldr r2, [sp, #12]
    ldr r1, [pc, #384]
    ldrb r3, [r2]
    ldrb r2, [r1]
    cmp r2, r3
    bne .Lsec01_00001910
    cmp r2, #49
    bne .Lsec01_000018f8
    ldr ip, [sp, #12]
    ldrb r2, [r1, #2]
    ldrb r3, [ip, #2]
    cmp r3, r2
    bne .Lsec01_00001910
    b .Lsec01_00001968
.Lsec01_000018f8:
    cmp r2, #48
    bne .Lsec01_00001968
    ldr r0, [sp, #12]
    ldrb r3, [r0, #2]
    cmp r3, #56
    bhi .Lsec01_00001968
.Lsec01_00001910:
    add r4, sp, #24
    ldr r1, [pc, #308]
    ldr r2, [sp, #12]
    mov r0, r4
.Lsec01_00001920:
    bl sprintf
    ldr r0, [sp, #20]
    mov r1, r4
.Lsec01_0000192c:
    bl png_warning
.Lsec01_00001930:
    add r4, sp, #24
    ldr r2, [pc, #272]
    ldr r1, [pc, #276]
    mov r0, r4
.Lsec01_00001940:
    bl sprintf
    ldr r0, [sp, #20]
    mov r1, r4
.Lsec01_0000194c:
    bl png_warning
    ldr r1, [sp, #20]
    mov r3, #0
    str r3, [r1, #136]
    mov r0, r1
    ldr r1, [pc, #240]
.Lsec01_00001964:
    bl png_error
.Lsec01_00001968:
    ldr r2, [sp, #20]
    mov r3, #8192
    mov r1, r3
    str r3, [r2, #204]
    mov r0, r2
.Lsec01_0000197c:
    bl png_malloc
    ldr r3, [sp, #20]
    ldr ip, [sp, #20]
    str r0, [r3, #200]
    ldr r3, [pc, #200]
    str r3, [ip, #176]
    ldr r3, [pc, #196]
    str ip, [ip, #184]
    str r3, [ip, #180]
    add r0, ip, #144
    ldr r1, [pc, #184]
    mov r2, #56
.Lsec01_000019ac:
    bl inflateInit_
    add r0, r0, #6
    cmp r0, #6
    ldrls pc, [pc, r0, lsl #2]
    b .Lsec01_000019f4
    .long .Lsec01_000019e8
    .long .Lsec01_000019f4
    .long .Lsec01_000019dc
    .long .Lsec01_000019f4
    .long .Lsec01_000019dc
    .long .Lsec01_000019f4
    .long .Lsec01_00001a00
.arm
.Lsec01_000019dc:
    ldr r0, [sp, #20]
    ldr r1, [pc, #128]
    b .Lsec01_000019fc
.Lsec01_000019e8:
    ldr r0, [sp, #20]
    ldr r1, [pc, #120]
    b .Lsec01_000019fc
.Lsec01_000019f4:
    ldr r0, [sp, #20]
    ldr r1, [pc, #112]
.Lsec01_000019fc:
    bl png_error
.Lsec01_00001a00:
    ldr r0, [sp, #20]
    ldr r3, [r0, #200]
    ldr r2, [r0, #204]
    mov r1, #0
    str r3, [r0, #156]
    str r2, [r0, #160]
    mov r2, r1
.Lsec01_00001a1c:
    bl png_set_read_fn
    ldr r0, [sp, #16]
.Lsec01_00001a24:
    bl setjmp
    cmp r0, #0
    beq .Lsec01_00001a38
.Lsec01_00001a30:
    bl abort
.Lsec01_00001a34:
    str r3, [sp, #20]
.Lsec01_00001a38:
    ldr r0, [sp, #20]
    add sp, sp, #104
    ldmia sp!, {r4, lr}
    bx lr
    .long 0x00002710
    .long png_libpng_ver
    .long .Lsec05_000001ec
    .long .Lsec05_00000224
    .long .Lsec05_000002fc
    .long png_zalloc
    .long png_zfree
    .long .Lsec05_000001b4
    .long .Lsec05_00000334
    .long .Lsec05_00000348
    .long .Lsec05_000001d8
.arm
png_create_read_struct:
    str lr, [sp, #-4]!
    mov ip, #0
    sub sp, sp, #20
    str ip, [sp, #8]
    str ip, [sp]
    str ip, [sp, #4]
.Lsec01_00001a8c:
    bl png_create_read_struct_2
    add sp, sp, #20
    ldr lr, [sp], #4
    bx lr

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "Too many IDAT's found"
    .asciz ""
    .asciz ""
.Lsec05_00000018:
    .asciz "Invalid attempt to read row data"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000003c:
    .asciz "Not enough image data"
    .asciz ""
    .asciz ""
.Lsec05_00000054:
    .asciz "Extra compressed data"
    .asciz ""
    .asciz ""
.Lsec05_0000006c:
    .asciz "Decompression error"
.Lsec05_00000080:
    .asciz "Ignoring extra png_read_update_info() call; row buffer not reallocated"
    .asciz ""
.Lsec05_000000c8:
    .asciz "Not a PNG file"
    .asciz ""
.Lsec05_000000d8:
    .asciz "PNG file corrupted by ASCII conversion"
    .asciz ""
.Lsec05_00000100:
    .asciz "Missing IHDR before IDAT"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000011c:
    .asciz "Missing PLTE before IDAT"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000138:
    .asciz "Image is too high to process with png_read_png()"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000016c:
    .asciz "Application uses deprecated png_read_init() and should be recompiled."
    .asciz ""
    .asciz ""
.Lsec05_000001b4:
    .asciz "1.2.3"
    .asciz ""
    .asciz ""
.Lsec05_000001bc:
    .asciz "zlib memory"
.Lsec05_000001c8:
    .asciz "zlib version"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000001d8:
    .asciz "Unknown zlib error"
    .asciz ""
.Lsec05_000001ec:
    .asciz "Application was compiled with png.h from libpng-%.20s"
    .asciz ""
    .asciz ""
.Lsec05_00000224:
    .asciz "Application  is  running with png.c from libpng-%.20s"
    .asciz ""
    .asciz ""
.Lsec05_0000025c:
    .asciz "The png struct allocated by the application for reading is too small."
    .asciz ""
    .asciz ""
.Lsec05_000002a4:
    .asciz "The info struct allocated by application for reading is too small."
    .asciz ""
.Lsec05_000002e8:
    .asciz "1.0.6 or earlier"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000002fc:
    .asciz "Incompatible libpng version in application and library"
    .asciz ""
.Lsec05_00000334:
    .asciz "zlib memory error"
    .asciz ""
    .asciz ""
.Lsec05_00000348:
    .asciz "zlib version error"
    .asciz ""

.size png_set_read_status_fn, 8
.size png_read_destroy, 576
.size png_destroy_read_struct, 216
.size png_read_end, 1260
.size png_start_read_image, 32
.size png_read_row, 1044
.size png_read_image, 96
.size png_read_rows, 200
.size png_read_update_info, 72
.size png_read_info, 1464
.size png_read_png, 452
.size png_read_init_3, 400
.size png_read_init_2, 240
.size png_read_init, 20
.size png_create_read_struct_2, 692
.size png_create_read_struct, 40

.section .note.GNU-stack,"",%progbits
