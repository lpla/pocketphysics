/* Reconstructed mnemonic source for pngpread.o. */
.syntax unified
.arch armv5te

.global png_push_crc_skip
.type png_push_crc_skip, %function
.global png_push_restore_buffer
.type png_push_restore_buffer, %function
.global png_push_have_info
.type png_push_have_info, %function
.global png_push_have_end
.type png_push_have_end, %function
.global png_push_have_row
.type png_push_have_row, %function
.global png_get_progressive_ptr
.type png_get_progressive_ptr, %function
.global png_set_progressive_read_fn
.type png_set_progressive_read_fn, %function
.global png_push_fill_buffer
.type png_push_fill_buffer, %function
.global png_progressive_combine_row
.type png_progressive_combine_row, %function
.global png_push_handle_unknown
.type png_push_handle_unknown, %function
.global png_push_handle_zTXt
.type png_push_handle_zTXt, %function
.global png_push_handle_tEXt
.type png_push_handle_tEXt, %function
.global png_push_save_buffer
.type png_push_save_buffer, %function
.global png_read_push_finish_row
.type png_read_push_finish_row, %function
.global png_push_process_row
.type png_push_process_row, %function
.global png_process_IDAT_data
.type png_process_IDAT_data, %function
.global png_push_read_IDAT
.type png_push_read_IDAT, %function
.global png_push_crc_finish
.type png_push_crc_finish, %function
.global png_push_read_zTXt
.type png_push_read_zTXt, %function
.global png_push_read_tEXt
.type png_push_read_tEXt, %function
.global png_push_read_chunk
.type png_push_read_chunk, %function
.global png_push_read_sig
.type png_push_read_sig, %function
.global png_process_some_data
.type png_process_some_data, %function
.global png_process_data
.type png_process_data, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_push_crc_skip:
    mov r3, #3
    str r1, [r0, #476]
    str r3, [r0, #496]
    bx lr
png_push_restore_buffer:
    ldr r3, [r0, #480]
    add r3, r2, r3
    str r1, [r0, #464]
    str r3, [r0, #488]
    str r1, [r0, #468]
    str r2, [r0, #492]
    bx lr
png_push_have_info:
    str lr, [sp, #-4]!
    ldr r3, [r0, #444]
    cmp r3, #0
    sub sp, sp, #4
    movne lr, pc
    bxne r3
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_push_have_end:
    str lr, [sp, #-4]!
    ldr r3, [r0, #452]
    cmp r3, #0
    sub sp, sp, #4
    movne lr, pc
    bxne r3
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_push_have_row:
    str lr, [sp, #-4]!
    ldr ip, [r0, #448]
    cmp ip, #0
    sub sp, sp, #4
    ldrneb r3, [r0, #320]
    ldrne r2, [r0, #256]
    movne lr, pc
    bxne ip
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_get_progressive_ptr:
    ldr r0, [r0, #112]
    bx lr
png_set_progressive_read_fn:
    str lr, [sp, #-4]!
    sub sp, sp, #4
    ldr lr, [sp, #8]
    str r3, [r0, #448]
    str r2, [r0, #444]
    str lr, [r0, #452]
    ldr r2, [pc, #12]
.Lsec01_000000c4:
    bl png_set_read_fn
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
    .long png_push_fill_buffer
.arm
png_progressive_combine_row:
    str lr, [sp, #-4]!
    cmp r2, #0
    sub sp, sp, #4
    ldrneb r2, [r0, #320]
    ldrne r3, [pc, #16]
    ldrne r2, [r3, r2, lsl #2]
.Lsec01_000000f0:
    blne png_combine_row
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
    .long png_pass_dsp_mask
.arm
png_push_handle_unknown:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    add r8, r0, #312
    mov r4, r0
    sub sp, sp, #28
    mov sl, r1
    mov r1, r8
    mov r5, r2
.Lsec01_00000120:
    bl png_check_chunk_name
    ldrb r3, [r4, #312]
    tst r3, #32
    bne .Lsec01_00000160
    mov r0, r4
    mov r1, r8
.Lsec01_00000138:
    bl png_handle_as_unknown
    cmp r0, #3
    beq .Lsec01_00000158
    ldr r3, [r4, #568]
    cmp r3, #0
    moveq r0, r4
    ldreq r1, [pc, #264]
.Lsec01_00000154:
    bleq png_chunk_error
.Lsec01_00000158:
    cmp sl, #0
    beq .Lsec01_00000254
.Lsec01_00000160:
    ldr r3, [r4, #136]
    tst r3, #32768
    moveq r6, r5
    beq .Lsec01_00000248
    ldr r7, [pc, #236]
    cmp r5, r7
    movls r6, #0
    bls .Lsec01_00000198
    mov r0, r4
    ldr r1, [pc, #220]
.Lsec01_00000188:
    bl png_warning
    sub r6, r5, #65280
    sub r6, r6, #255
    mov r5, r7
.Lsec01_00000198:
    add r7, sp, #4
    add r1, r4, #312
    mov r0, r7
.Lsec01_000001a4:
    bl strcpy
    mov r1, r5
    mov r0, r4
.Lsec01_000001b0:
    bl png_malloc
    mov r2, r5
    mov r3, r0
    mov r1, r0
    mov r0, r4
    str r3, [sp, #12]
.Lsec01_000001c8:
    bl png_crc_read
    ldr r3, [r4, #568]
    cmp r3, #0
    str r5, [sp, #16]
    moveq r1, sl
    moveq r2, r7
    moveq r0, r4
    beq .Lsec01_00000234
    mov r1, r7
    mov r0, r4
    mov lr, pc
    bx r3
    cmp r0, #0
    bgt .Lsec01_00000228
    ldrb r3, [r4, #312]
    tst r3, #32
    bne .Lsec01_00000228
    mov r1, r8
    mov r0, r4
.Lsec01_00000214:
    bl png_handle_as_unknown
    cmp r0, #3
    movne r0, r4
    ldrne r1, [pc, #56]
.Lsec01_00000224:
    blne png_chunk_error
.Lsec01_00000228:
    mov r1, sl
    mov r0, r4
    add r2, sp, #4
.Lsec01_00000234:
    mov r3, #1
.Lsec01_00000238:
    bl png_set_unknown_chunks
    mov r0, r4
    ldr r1, [sp, #12]
.Lsec01_00000244:
    bl png_free
.Lsec01_00000248:
    mov r3, #3
    str r6, [r4, #476]
    str r3, [r4, #496]
.Lsec01_00000254:
    add sp, sp, #28
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long .Lsec05_00000000
    .long 0x0000ffff
    .long .Lsec05_00000018
.arm
png_push_fill_buffer:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr ip, [r0, #480]
    cmp ip, #0
    mov r5, r0
    sub sp, sp, #4
    mov r7, r1
    mov r0, r1
    mov r3, r1
    mov r6, r2
    beq .Lsec01_000002d8
    cmp r2, ip
    movcc r4, r2
    movcs r4, ip
    ldr r1, [r5, #456]
    mov r2, r4
.Lsec01_000002a8:
    bl memcpy
    ldr r2, [r5, #480]
    ldr r1, [r5, #456]
    ldr r3, [r5, #488]
    add r1, r1, r4
    rsb r2, r4, r2
    rsb r3, r4, r3
    str r2, [r5, #480]
    str r1, [r5, #456]
    str r3, [r5, #488]
    rsb r6, r4, r6
    add r3, r7, r4
.Lsec01_000002d8:
    cmp r6, #0
    beq .Lsec01_0000032c
    ldr r2, [r5, #492]
    cmp r2, #0
    mov r0, r3
    beq .Lsec01_0000032c
    cmp r6, r2
    movcc r4, r6
    movcs r4, r2
    ldr r1, [r5, #464]
    mov r2, r4
.Lsec01_00000304:
    bl memcpy
    ldr r2, [r5, #488]
    ldr r1, [r5, #492]
    ldr r3, [r5, #464]
    rsb r2, r4, r2
    add r3, r3, r4
    rsb r1, r4, r1
    str r3, [r5, #464]
    str r2, [r5, #488]
    str r1, [r5, #492]
.Lsec01_0000032c:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
png_push_handle_zTXt:
    stmdb sp!, {r4, r5, r6, lr}
    ldr r3, [r0, #132]
    and r3, r3, #17
    cmp r3, #1
    mov r6, r1
    mov r4, r0
    mov r5, r2
    ldr r1, [pc, #104]
    beq .Lsec01_00000368
.Lsec01_0000035c:
    bl png_error
    cmp r6, #0
    beq .Lsec01_000003bc
.Lsec01_00000368:
    cmp r5, #65536
    mov r0, r4
    ldr r1, [pc, #80]
    bcc .Lsec01_0000038c
.Lsec01_00000378:
    bl png_warning
    mov r3, #3
    str r5, [r4, #476]
    str r3, [r4, #496]
    b .Lsec01_000003bc
.Lsec01_0000038c:
    mov r0, r4
    add r1, r5, #1
.Lsec01_00000394:
    bl png_malloc
    mov r3, #0
    str r0, [r4, #512]
    strb r3, [r0, r5]
    ldr r2, [r4, #512]
    add r3, r3, #5
    str r3, [r4, #496]
    str r2, [r4, #516]
    str r5, [r4, #508]
    str r5, [r4, #504]
.Lsec01_000003bc:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_00000044
    .long .Lsec05_00000058
.arm
png_push_handle_tEXt:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    ldr r3, [r0, #132]
    and r3, r3, #17
    cmp r3, #1
    mov r6, r1
    mov r4, r0
    ldr r7, [pc, #116]
    mov r8, #0
    mov r5, r2
    ldr r1, [pc, #108]
    beq .Lsec01_00000404
.Lsec01_000003f8:
    bl png_error
    cmp r6, r8
    beq .Lsec01_00000458
.Lsec01_00000404:
    cmp r5, r7
    mov r0, r4
    ldr r1, [pc, #84]
    str r8, [r4, #476]
    bls .Lsec01_0000042c
.Lsec01_00000418:
    bl png_warning
    sub r3, r5, #65280
    sub r3, r3, #255
    str r3, [r4, #476]
    mov r5, r7
.Lsec01_0000042c:
    mov r0, r4
    add r1, r5, #1
.Lsec01_00000434:
    bl png_malloc
    str r0, [r4, #512]
    strb r8, [r0, r5]
    ldr r2, [r4, #512]
    mov r3, #4
    str r3, [r4, #496]
    str r2, [r4, #516]
    str r5, [r4, #508]
    str r5, [r4, #504]
.Lsec01_00000458:
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long 0x0000ffff
    .long .Lsec05_00000080
    .long .Lsec05_00000094
.arm
png_push_save_buffer:
    ldr ip, [r0, #480]
    cmp ip, #0
    stmdb sp!, {r4, r5, r6, lr}
    mov r6, r0
    beq .Lsec01_000004a8
    ldr r0, [r0, #456]
    ldr r1, [r6, #460]
    cmp r0, r1
    movne r2, #0
    beq .Lsec01_000004a8
.Lsec01_00000494:
    ldrb r3, [r2, r0]
    strb r3, [r2, r1]
    add r2, r2, #1
    cmp r2, ip
    bne .Lsec01_00000494
.Lsec01_000004a8:
    ldr r0, [r6, #480]
    ldr r1, [r6, #492]
    ldr r2, [r6, #484]
    add r3, r0, r1
    cmp r3, r2
    bls .Lsec01_00000518
    add r3, r1, #256
    mvn r3, r3
    cmp r0, r3
    movhi r0, r6
    ldrhi r1, [pc, #144]
.Lsec01_000004d4:
    blhi png_error
    ldr r4, [r6, #480]
    ldr r3, [r6, #492]
    add r4, r4, #256
    add r4, r4, r3
    mov r1, r4
    mov r0, r6
    ldr r5, [r6, #460]
.Lsec01_000004f4:
    bl png_malloc
    ldr r2, [r6, #480]
    mov r1, r5
    str r0, [r6, #460]
.Lsec01_00000504:
    bl memcpy
    mov r0, r6
    mov r1, r5
.Lsec01_00000510:
    bl png_free
    str r4, [r6, #484]
.Lsec01_00000518:
    ldr r2, [r6, #492]
    cmp r2, #0
    beq .Lsec01_00000550
    ldr r3, [r6, #460]
    ldr r0, [r6, #480]
    ldr r1, [r6, #464]
    add r0, r3, r0
.Lsec01_00000534:
    bl memcpy
    ldr r3, [r6, #480]
    ldr r2, [r6, #492]
    add r3, r3, r2
    str r3, [r6, #480]
    mov r3, #0
    str r3, [r6, #492]
.Lsec01_00000550:
    ldr r2, [r6, #460]
    mov r3, #0
    str r3, [r6, #488]
    str r2, [r6, #456]
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_000000bc
.arm
png_read_push_finish_row:
    ldr r3, [r0, #256]
    ldr r2, [r0, #236]
    add r3, r3, #1
    cmp r3, r2
    stmdb sp!, {r4, lr}
    str r3, [r0, #256]
    mov r4, r0
    bcc .Lsec01_000006b8
    ldrb r3, [r0, #319]
    cmp r3, #0
    beq .Lsec01_000006b8
    ldr r3, [r0, #244]
    mov r2, #0
    str r2, [r0, #256]
    add r3, r3, #1
    ldr r1, [r0, #260]
.Lsec01_000005ac:
    bl png_memset_check
.Lsec01_000005b0:
    ldrb r3, [r4, #320]
    add r3, r3, #1
    and r2, r3, #255
    cmp r2, #1
    strb r2, [r4, #320]
    bne .Lsec01_000005d4
    ldr r3, [r4, #228]
    cmp r3, #4
    b .Lsec01_000005f8
.Lsec01_000005d4:
    cmp r2, #3
    bne .Lsec01_000005e8
    ldr r3, [r4, #228]
    cmp r3, #2
    b .Lsec01_000005f8
.Lsec01_000005e8:
    cmp r2, #5
    bne .Lsec01_00000604
    ldr r3, [r4, #228]
    cmp r3, #1
.Lsec01_000005f8:
    bhi .Lsec01_00000620
    add r3, r2, #1
    strb r3, [r4, #320]
.Lsec01_00000604:
    ldrb r3, [r4, #320]
    cmp r3, #7
    subhi r3, r3, #1
    strhib r3, [r4, #320]
    ldrb r2, [r4, #320]
    cmp r2, #6
    bhi .Lsec01_000006b8
.Lsec01_00000620:
    ldr r3, [pc, #152]
    ldr r1, [r3, r2, lsl #2]
    ldr r3, [pc, #148]
    ldr r0, [r4, #228]
    ldr r3, [r3, r2, lsl #2]
    add r0, r1, r0
    rsb r0, r3, r0
    sub r0, r0, #1
.Lsec01_00000640:
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
    ldr r3, [r4, #140]
    tst r3, #2
    str r0, [r4, #248]
    bne .Lsec01_000006b8
    ldrb r2, [r4, #320]
    ldr r3, [pc, #68]
    ldr r1, [r3, r2, lsl #2]
    ldr r3, [pc, #64]
    ldr r0, [r4, #232]
    ldr r3, [r3, r2, lsl #2]
    add r0, r1, r0
    rsb r0, r3, r0
    sub r0, r0, #1
.Lsec01_0000069c:
    bl __aeabi_uidiv
    ldr r3, [r4, #252]
    cmp r3, #0
    str r0, [r4, #236]
    beq .Lsec01_000005b0
    cmp r0, #0
    beq .Lsec01_000005b0
.Lsec01_000006b8:
    ldmia sp!, {r4, lr}
    bx lr
    .long png_pass_inc
    .long png_pass_start
    .long png_pass_yinc
    .long png_pass_ystart
.arm
png_push_process_row:
    stmdb sp!, {r4, r5, lr}
    mov r4, r0
    ldrb r0, [r0, #325]
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
    strb r0, [r4, #295]
    str r3, [r4, #288]
    ldr r2, [r4, #264]
    str ip, [r4, #284]
    ldr r3, [r4, #260]
    ldrb ip, [r2]
    sub sp, sp, #12
    add r2, r2, #1
    add r3, r3, #1
    mov r0, r4
    add r1, r4, #284
    str ip, [sp]
.Lsec01_00000740:
    bl png_read_filter_row
    ldr r3, [r4, #244]
    mov r0, r4
    add r3, r3, #1
    add r1, r4, #260
    ldmia r1, {r1, r2}
.Lsec01_00000758:
    bl png_memcpy_check
    ldr r3, [r4, #140]
    cmp r3, #0
    bne .Lsec01_00000774
    ldr r3, [r4, #136]
    tst r3, #4194304
    beq .Lsec01_0000077c
.Lsec01_00000774:
    mov r0, r4
.Lsec01_00000778:
    bl png_do_read_transformations
.Lsec01_0000077c:
    ldrb r3, [r4, #319]
    cmp r3, #0
    beq .Lsec01_00000b08
    ldr r3, [r4, #140]
    tst r3, #2
    beq .Lsec01_00000b08
    ldrb r3, [r4, #320]
    cmp r3, #5
    movls r0, r4
.Lsec01_000007a0:
    blls png_do_read_interlace
    ldrb r3, [r4, #320]
    cmp r3, #6
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00000bb4
    .long .Lsec01_000007d0
    .long .Lsec01_000008a4
    .long .Lsec01_00000918
    .long .Lsec01_000009c0
    .long .Lsec01_00000a34
    .long .Lsec01_00000aa0
    .long .Lsec01_00000ad8
.arm
.Lsec01_000007d0:
    mov r5, #0
.Lsec01_000007d4:
    ldr r1, [r4, #264]
    mov r0, r4
    add r1, r1, #1
.Lsec01_000007e0:
    bl png_push_have_row
    add r5, r5, #1
    mov r0, r4
.Lsec01_000007ec:
    bl png_read_push_finish_row
    cmp r5, #8
    beq .Lsec01_00000804
    ldrb r3, [r4, #320]
    cmp r3, #0
    beq .Lsec01_000007d4
.Lsec01_00000804:
    ldrb r3, [r4, #320]
    cmp r3, #2
    bne .Lsec01_00000840
    b .Lsec01_00000b28
.Lsec01_00000814:
    bl png_push_have_row
    mov r0, r4
.Lsec01_0000081c:
    bl png_read_push_finish_row
    cmp r5, #4
    beq .Lsec01_00000840
.Lsec01_00000828:
    ldrb r3, [r4, #320]
    cmp r3, #2
    mov r1, #0
    mov r0, r4
    add r5, r5, #1
    beq .Lsec01_00000814
.Lsec01_00000840:
    ldrb r3, [r4, #320]
    cmp r3, #4
    bne .Lsec01_00000888
    ldr r3, [r4, #232]
    cmp r3, #4
    bls .Lsec01_00000b44
    b .Lsec01_00000bb4
.Lsec01_0000085c:
    bl png_push_have_row
    mov r0, r4
.Lsec01_00000864:
    bl png_read_push_finish_row
    cmp r5, #2
    beq .Lsec01_00000888
.Lsec01_00000870:
    ldrb r3, [r4, #320]
    cmp r3, #4
    mov r1, #0
    mov r0, r4
    add r5, r5, #1
    beq .Lsec01_0000085c
.Lsec01_00000888:
    ldrb r3, [r4, #320]
    cmp r3, #6
    bne .Lsec01_00000bb4
    ldr r3, [r4, #232]
    cmp r3, #4
    bhi .Lsec01_00000bb4
    b .Lsec01_00000afc
.Lsec01_000008a4:
    mov r5, #0
.Lsec01_000008a8:
    ldr r1, [r4, #264]
    mov r0, r4
    add r1, r1, #1
.Lsec01_000008b4:
    bl png_push_have_row
    add r5, r5, #1
    mov r0, r4
.Lsec01_000008c0:
    bl png_read_push_finish_row
    cmp r5, #8
    beq .Lsec01_000008d8
    ldrb r3, [r4, #320]
    cmp r3, #1
    beq .Lsec01_000008a8
.Lsec01_000008d8:
    ldrb r3, [r4, #320]
    cmp r3, #2
    bne .Lsec01_00000bb4
    b .Lsec01_00000b60
.Lsec01_000008e8:
    bl png_push_have_row
    mov r0, r4
.Lsec01_000008f0:
    bl png_read_push_finish_row
    cmp r5, #4
    beq .Lsec01_00000bb4
.Lsec01_000008fc:
    ldrb r3, [r4, #320]
    cmp r3, #2
    mov r1, #0
    mov r0, r4
    add r5, r5, #1
    beq .Lsec01_000008e8
    b .Lsec01_00000bb4
.Lsec01_00000918:
    mov r5, #0
.Lsec01_0000091c:
    ldr r1, [r4, #264]
    mov r0, r4
    add r1, r1, #1
.Lsec01_00000928:
    bl png_push_have_row
    add r5, r5, #1
    mov r0, r4
.Lsec01_00000934:
    bl png_read_push_finish_row
    cmp r5, #4
    beq .Lsec01_0000094c
    ldrb r3, [r4, #320]
    cmp r3, #2
    beq .Lsec01_0000091c
.Lsec01_0000094c:
    mov r5, #0
    b .Lsec01_00000968
.Lsec01_00000954:
    bl png_push_have_row
    mov r0, r4
.Lsec01_0000095c:
    bl png_read_push_finish_row
    cmp r5, #4
    beq .Lsec01_00000980
.Lsec01_00000968:
    ldrb r3, [r4, #320]
    cmp r3, #2
    mov r1, #0
    mov r0, r4
    add r5, r5, #1
    beq .Lsec01_00000954
.Lsec01_00000980:
    ldrb r3, [r4, #320]
    cmp r3, #4
    bne .Lsec01_00000bb4
    b .Lsec01_00000b7c
.Lsec01_00000990:
    bl png_push_have_row
    mov r0, r4
.Lsec01_00000998:
    bl png_read_push_finish_row
    cmp r5, #2
    beq .Lsec01_00000bb4
.Lsec01_000009a4:
    ldrb r3, [r4, #320]
    cmp r3, #4
    mov r1, #0
    mov r0, r4
    add r5, r5, #1
    beq .Lsec01_00000990
    b .Lsec01_00000bb4
.Lsec01_000009c0:
    mov r5, #0
.Lsec01_000009c4:
    ldr r1, [r4, #264]
    mov r0, r4
    add r1, r1, #1
.Lsec01_000009d0:
    bl png_push_have_row
    add r5, r5, #1
    mov r0, r4
.Lsec01_000009dc:
    bl png_read_push_finish_row
    cmp r5, #4
    beq .Lsec01_000009f4
    ldrb r3, [r4, #320]
    cmp r3, #3
    beq .Lsec01_000009c4
.Lsec01_000009f4:
    ldrb r3, [r4, #320]
    cmp r3, #4
    bne .Lsec01_00000bb4
    b .Lsec01_00000b98
.Lsec01_00000a04:
    bl png_push_have_row
    mov r0, r4
.Lsec01_00000a0c:
    bl png_read_push_finish_row
    cmp r5, #2
    beq .Lsec01_00000bb4
.Lsec01_00000a18:
    ldrb r3, [r4, #320]
    cmp r3, #4
    mov r1, #0
    mov r0, r4
    add r5, r5, #1
    beq .Lsec01_00000a04
    b .Lsec01_00000bb4
.Lsec01_00000a34:
    mov r5, #0
.Lsec01_00000a38:
    ldr r1, [r4, #264]
    mov r0, r4
    add r1, r1, #1
.Lsec01_00000a44:
    bl png_push_have_row
    add r5, r5, #1
    mov r0, r4
.Lsec01_00000a50:
    bl png_read_push_finish_row
    cmp r5, #2
    beq .Lsec01_00000a68
    ldrb r3, [r4, #320]
    cmp r3, #4
    beq .Lsec01_00000a38
.Lsec01_00000a68:
    mov r5, #0
    b .Lsec01_00000a84
.Lsec01_00000a70:
    bl png_push_have_row
    mov r0, r4
.Lsec01_00000a78:
    bl png_read_push_finish_row
    cmp r5, #2
    beq .Lsec01_00000af0
.Lsec01_00000a84:
    ldrb r3, [r4, #320]
    cmp r3, #4
    mov r1, #0
    mov r0, r4
    add r5, r5, #1
    beq .Lsec01_00000a70
    b .Lsec01_00000af0
.Lsec01_00000aa0:
    mov r5, #0
.Lsec01_00000aa4:
    ldr r1, [r4, #264]
    mov r0, r4
    add r1, r1, #1
.Lsec01_00000ab0:
    bl png_push_have_row
    add r5, r5, #1
    mov r0, r4
.Lsec01_00000abc:
    bl png_read_push_finish_row
    cmp r5, #2
    beq .Lsec01_00000af0
    ldrb r3, [r4, #320]
    cmp r3, #5
    beq .Lsec01_00000aa4
    b .Lsec01_00000af0
.Lsec01_00000ad8:
    ldr r1, [r4, #264]
    mov r0, r4
    add r1, r1, #1
.Lsec01_00000ae4:
    bl png_push_have_row
    mov r0, r4
.Lsec01_00000aec:
    bl png_read_push_finish_row
.Lsec01_00000af0:
    ldrb r3, [r4, #320]
    cmp r3, #6
    bne .Lsec01_00000bb4
.Lsec01_00000afc:
    mov r0, r4
    mov r1, #0
    b .Lsec01_00000b14
.Lsec01_00000b08:
    ldr r1, [r4, #264]
    mov r0, r4
    add r1, r1, #1
.Lsec01_00000b14:
    bl png_push_have_row
    mov r0, r4
    add sp, sp, #12
    ldmia sp!, {r4, r5, lr}
.Lsec01_00000b24:
    b png_read_push_finish_row
.Lsec01_00000b28:
    mov r1, #0
    mov r0, r4
.Lsec01_00000b30:
    bl png_push_have_row
    mov r0, r4
.Lsec01_00000b38:
    bl png_read_push_finish_row
    mov r5, #1
    b .Lsec01_00000828
.Lsec01_00000b44:
    mov r1, #0
    mov r0, r4
.Lsec01_00000b4c:
    bl png_push_have_row
    mov r0, r4
.Lsec01_00000b54:
    bl png_read_push_finish_row
    mov r5, #1
    b .Lsec01_00000870
.Lsec01_00000b60:
    mov r1, #0
    mov r0, r4
.Lsec01_00000b68:
    bl png_push_have_row
    mov r0, r4
.Lsec01_00000b70:
    bl png_read_push_finish_row
    mov r5, #1
    b .Lsec01_000008fc
.Lsec01_00000b7c:
    mov r1, #0
    mov r0, r4
.Lsec01_00000b84:
    bl png_push_have_row
    mov r0, r4
.Lsec01_00000b8c:
    bl png_read_push_finish_row
    mov r5, #1
    b .Lsec01_000009a4
.Lsec01_00000b98:
    mov r1, #0
    mov r0, r4
.Lsec01_00000ba0:
    bl png_push_have_row
    mov r0, r4
.Lsec01_00000ba8:
    bl png_read_push_finish_row
    mov r5, #1
    b .Lsec01_00000a18
.Lsec01_00000bb4:
    add sp, sp, #12
    ldmia sp!, {r4, r5, lr}
    bx lr
png_process_IDAT_data:
    stmdb sp!, {r4, r5, r6, lr}
    mov r6, r2
    ldr r2, [r0, #136]
    subs r3, r6, #0
    movne r3, #1
    ands r2, r3, r2, lsr #5
    mov r4, r0
    mov r5, r1
    ldrne r1, [pc, #244]
.Lsec01_00000be4:
    blne png_error
    str r5, [r4, #144]
    str r6, [r4, #148]
.Lsec01_00000bf0:
    mov r1, #1
    add r0, r4, #144
.Lsec01_00000bf8:
    bl inflate
    subs r3, r0, #0
    ldr r1, [pc, #216]
    mov r0, r4
    beq .Lsec01_00000c5c
    cmp r3, #1
    bne .Lsec01_00000c50
    ldr r3, [r4, #148]
    cmp r3, #0
    ldrne r1, [pc, #192]
.Lsec01_00000c20:
    blne png_error
    ldr r3, [r4, #160]
    cmp r3, #0
    moveq r0, r4
.Lsec01_00000c30:
    bleq png_push_process_row
    add r2, r4, #132
    ldmia r2, {r2, r3}
    orr r2, r2, #8
    orr r3, r3, #32
    str r3, [r4, #136]
    str r2, [r4, #132]
    b .Lsec01_00000cd4
.Lsec01_00000c50:
    cmn r3, #5
    beq .Lsec01_00000cd4
.Lsec01_00000c58:
    bl png_error
.Lsec01_00000c5c:
    ldr r3, [r4, #160]
    cmp r3, #0
    mov r0, r4
    bne .Lsec01_00000cd4
    ldrb r3, [r4, #319]
    cmp r3, #0
    beq .Lsec01_00000c88
    ldrb r3, [r4, #320]
    cmp r3, #6
    bls .Lsec01_00000cbc
    b .Lsec01_00000c98
.Lsec01_00000c88:
    ldr r2, [r4, #256]
    ldr r3, [r4, #236]
    cmp r2, r3
    bne .Lsec01_00000cbc
.Lsec01_00000c98:
    ldr r3, [r4, #148]
    cmp r3, #0
    movne r0, r4
    ldrne r1, [pc, #60]
.Lsec01_00000ca8:
    blne png_warning
    ldr r3, [r4, #136]
    orr r3, r3, #32
    str r3, [r4, #136]
    b .Lsec01_00000cd4
.Lsec01_00000cbc:
    bl png_push_process_row
    ldr r3, [r4, #248]
    ldr r2, [r4, #264]
    str r3, [r4, #160]
    str r2, [r4, #156]
    b .Lsec01_00000bf0
.Lsec01_00000cd4:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_000000e0
    .long .Lsec05_00000110
    .long .Lsec05_000000f8
    .long .Lsec05_00000124
.arm
png_push_read_IDAT:
    stmdb sp!, {r4, r5, lr}
    ldr r3, [r0, #132]
    tst r3, #256
    sub sp, sp, #12
    mov r5, r0
    bne .Lsec01_00000d9c
    ldr r3, [r0, #488]
    cmp r3, #7
    bls .Lsec01_00000ea8
    add r4, sp, #4
    mov r2, #4
    mov r1, r4
.Lsec01_00000d1c:
    bl png_push_fill_buffer
    mov r1, r4
    mov r0, r5
.Lsec01_00000d28:
    bl png_get_uint_31
    add r4, r5, #312
    str r0, [r5, #472]
    mov r0, r5
.Lsec01_00000d38:
    bl png_reset_crc
    mov r0, r5
    mov r1, r4
    mov r2, #4
.Lsec01_00000d48:
    bl png_crc_read
    ldr r3, [r5, #132]
    orr r3, r3, #256
    str r3, [r5, #132]
    mov r0, r4
    ldr r1, [pc, #372]
    mov r2, #4
.Lsec01_00000d64:
    bl memcmp
    cmp r0, #0
    ldreq r3, [r5, #472]
    streq r3, [r5, #296]
    beq .Lsec01_00000d9c
    ldr r3, [r5, #136]
    tst r3, #32
    mov r3, #1
    str r3, [r5, #496]
    bne .Lsec01_00000ecc
    mov r0, r5
    ldr r1, [pc, #324]
.Lsec01_00000d94:
    bl png_error
    b .Lsec01_00000ecc
.Lsec01_00000d9c:
    ldr ip, [r5, #296]
    cmp ip, #0
    beq .Lsec01_00000e98
    ldr r2, [r5, #480]
    cmp r2, #0
    beq .Lsec01_00000e20
    cmp ip, r2
    movcc r4, ip
    movcs r4, r2
    mov r0, r5
    ldr r1, [r5, #456]
    mov r2, r4
.Lsec01_00000dcc:
    bl png_calculate_crc
    ldr r3, [r5, #136]
    tst r3, #32
    moveq r0, r5
    ldreq r1, [r5, #456]
    moveq r2, r4
.Lsec01_00000de4:
    bleq png_process_IDAT_data
    ldr r3, [r5, #296]
    ldr r2, [r5, #488]
    ldr r1, [r5, #480]
    ldr r0, [r5, #456]
    rsb r3, r4, r3
    add r0, r0, r4
    rsb r2, r4, r2
    rsb r1, r4, r1
    subs ip, r3, #0
    str r2, [r5, #488]
    str r1, [r5, #480]
    str r0, [r5, #456]
    str r3, [r5, #296]
    beq .Lsec01_00000e98
.Lsec01_00000e20:
    ldr r2, [r5, #492]
    cmp r2, #0
    beq .Lsec01_00000ecc
    cmp ip, r2
    movcc r4, ip
    movcs r4, r2
    mov r0, r5
    ldr r1, [r5, #464]
    mov r2, r4
.Lsec01_00000e44:
    bl png_calculate_crc
    ldr r3, [r5, #136]
    tst r3, #32
    moveq r0, r5
    ldreq r1, [r5, #464]
    moveq r2, r4
.Lsec01_00000e5c:
    bleq png_process_IDAT_data
    ldr r0, [r5, #296]
    ldr r3, [r5, #488]
    ldr r2, [r5, #492]
    ldr r1, [r5, #464]
    rsb r0, r4, r0
    add r1, r1, r4
    rsb r3, r4, r3
    rsb r2, r4, r2
    cmp r0, #0
    str r3, [r5, #488]
    str r2, [r5, #492]
    str r1, [r5, #464]
    str r0, [r5, #296]
    bne .Lsec01_00000ecc
.Lsec01_00000e98:
    ldr r3, [r5, #488]
    cmp r3, #3
    bhi .Lsec01_00000eb0
    mov r0, r5
.Lsec01_00000ea8:
    bl png_push_save_buffer
    b .Lsec01_00000ecc
.Lsec01_00000eb0:
    mov r0, r5
    mov r1, #0
.Lsec01_00000eb8:
    bl png_crc_finish
    ldr r3, [r5, #132]
    bic r3, r3, #256
    orr r3, r3, #8
    str r3, [r5, #132]
.Lsec01_00000ecc:
    add sp, sp, #12
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long png_IDAT
    .long .Lsec05_00000144
.arm
png_push_crc_finish:
    stmdb sp!, {r4, r5, lr}
    ldr ip, [r0, #476]
    cmp ip, #0
    sub sp, sp, #4
    mov r5, r0
    beq .Lsec01_00000fb4
    ldr r3, [r0, #480]
    cmp r3, #0
    beq .Lsec01_00000f54
    cmp ip, r3
    movcc r4, ip
    movcs r4, r3
    ldr r1, [r0, #456]
    mov r2, r4
.Lsec01_00000f18:
    bl png_calculate_crc
    ldr r3, [r5, #476]
    ldr r2, [r5, #488]
    ldr r1, [r5, #480]
    ldr r0, [r5, #456]
    rsb r3, r4, r3
    add r0, r0, r4
    rsb r2, r4, r2
    rsb r1, r4, r1
    subs ip, r3, #0
    str r2, [r5, #488]
    str r1, [r5, #480]
    str r0, [r5, #456]
    str r3, [r5, #476]
    beq .Lsec01_00000fb4
.Lsec01_00000f54:
    ldr r3, [r5, #492]
    cmp r3, #0
    mov r0, r5
    beq .Lsec01_00000fe4
    cmp ip, r3
    movcc r4, ip
    movcs r4, r3
    ldr r1, [r5, #464]
    mov r2, r4
.Lsec01_00000f78:
    bl png_calculate_crc
    ldr r0, [r5, #476]
    ldr r3, [r5, #488]
    ldr r2, [r5, #492]
    ldr r1, [r5, #464]
    rsb r0, r4, r0
    add r1, r1, r4
    rsb r3, r4, r3
    rsb r2, r4, r2
    cmp r0, #0
    str r3, [r5, #488]
    str r2, [r5, #492]
    str r1, [r5, #464]
    str r0, [r5, #476]
    bne .Lsec01_00000fe4
.Lsec01_00000fb4:
    ldr r3, [r5, #488]
    cmp r3, #3
    mov r0, r5
    mov r1, #0
    bhi .Lsec01_00000fd4
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
.Lsec01_00000fd0:
    b png_push_save_buffer
.Lsec01_00000fd4:
    mov r0, r5
.Lsec01_00000fd8:
    bl png_crc_finish
    mov r3, #1
    str r3, [r5, #496]
.Lsec01_00000fe4:
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
png_push_read_zTXt:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr r3, [r0, #488]
    sub sp, sp, #12
    cmp r3, #0
    mov r6, r0
    str r1, [sp]
    beq .Lsec01_00001044
    ldr r4, [r0, #508]
    cmp r4, #0
    beq .Lsec01_00001050
    cmp r3, r4
    movcc r4, r3
    mov r2, r4
    ldr r1, [r0, #516]
.Lsec01_00001028:
    bl png_crc_read
    ldr r3, [r6, #508]
    ldr r2, [r6, #516]
    rsb r3, r4, r3
    add r2, r2, r4
    str r3, [r6, #508]
    str r2, [r6, #516]
.Lsec01_00001044:
    ldr r3, [r6, #508]
    cmp r3, #0
    bne .Lsec01_00001300
.Lsec01_00001050:
    ldr r3, [r6, #488]
    cmp r3, #3
    bhi .Lsec01_0000106c
    mov r0, r6
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.Lsec01_00001068:
    b png_push_save_buffer
.Lsec01_0000106c:
    mov r0, r6
.Lsec01_00001070:
    bl png_push_crc_finish
    ldr r7, [r6, #512]
    mov r0, r7
    b .Lsec01_00001084
.Lsec01_00001080:
    add r0, r0, #1
.Lsec01_00001084:
    ldrb r2, [r0]
    cmp r2, #0
    bne .Lsec01_00001080
    ldr ip, [r6, #504]
    add r3, r7, ip
    cmp r0, r3
    beq .Lsec01_000010b0
    ldrb r1, [r0, #1]
    cmp r1, #0
    add r0, r0, #1
    beq .Lsec01_000010c0
.Lsec01_000010b0:
    mov r0, r6
    mov r1, r7
    str r2, [r6, #512]
    b .Lsec01_000012fc
.Lsec01_000010c0:
    add r0, r0, #1
    mov r8, r1
    rsb sl, r7, r0
    ldr r2, [r6, #200]
    ldr r1, [r6, #204]
    rsb r3, sl, ip
    mov fp, #1
    mov r5, r8
    str r3, [r6, #148]
    str r2, [r6, #156]
    str r1, [r6, #160]
    str r0, [r6, #144]
    b .Lsec01_00001210
.Lsec01_000010f4:
    bl inflate
    mov fp, r0
    cmp fp, #1
    movne r3, #0
    moveq r3, #1
    mov r0, r6
    str r3, [sp, #4]
    bhi .Lsec01_000012d4
    ldr r1, [r6, #160]
    cmp r1, #0
    orreq r3, r3, #1
    cmp r3, #0
    beq .Lsec01_00001228
    cmp r8, #0
    ldr r3, [r6, #204]
    bne .Lsec01_0000118c
    rsb r1, r1, r3
    add r1, r1, #1
    add r1, sl, r1
.Lsec01_00001140:
    bl png_malloc
    ldr r3, [r6, #204]
    ldr r2, [r6, #160]
    mov r8, r0
    rsb r2, r2, r3
    ldr r1, [r6, #200]
    add r0, r0, sl
.Lsec01_0000115c:
    bl memcpy
    mov r2, sl
    mov r0, r8
    mov r1, r7
.Lsec01_0000116c:
    bl memcpy
    ldr r3, [r6, #204]
    ldr r2, [r6, #160]
    add r3, sl, r3
    rsb r5, r2, r3
    mov r3, #0
    strb r3, [r8, r5]
    b .Lsec01_000011f0
.Lsec01_0000118c:
    rsb r1, r1, r3
    add r1, r1, #1
    add r1, r5, r1
    mov r0, r6
.Lsec01_0000119c:
    bl png_malloc
    mov r2, r5
    mov r1, r8
    mov r4, r0
.Lsec01_000011ac:
    bl memcpy
    mov r1, r8
    mov r0, r6
.Lsec01_000011b8:
    bl png_free
    ldr r3, [r6, #204]
    ldr r2, [r6, #160]
    add r0, r4, r5
    rsb r2, r2, r3
    ldr r1, [r6, #200]
.Lsec01_000011d0:
    bl memcpy
    ldr r2, [r6, #160]
    ldr r3, [r6, #204]
    rsb r3, r2, r3
    add r5, r5, r3
    mov r3, #0
    strb r3, [r4, r5]
    mov r8, r4
.Lsec01_000011f0:
    cmp fp, #1
    ldrne r3, [r6, #200]
    ldrne r2, [r6, #204]
    strne r3, [r6, #156]
    ldr r3, [sp, #4]
    strne r2, [r6, #160]
    cmp r3, #0
    bne .Lsec01_000012c0
.Lsec01_00001210:
    ldr r3, [r6, #148]
    add r9, r6, #144
    cmp r3, #0
    mov r1, #1
    mov r0, r9
    bne .Lsec01_000010f4
.Lsec01_00001228:
    add r0, r6, #144
.Lsec01_0000122c:
    bl inflateReset
    mov r3, #0
    cmp fp, #1
    str r3, [r6, #148]
    strne r3, [r6, #512]
    bne .Lsec01_000012e8
.Lsec01_00001244:
    mov r5, #0
    mov r1, r7
    str r5, [r6, #512]
    mov r0, r6
.Lsec01_00001254:
    bl png_free
    mov r1, #16
    mov r0, r6
.Lsec01_00001260:
    bl png_malloc
    add r3, r8, sl
    mov r2, r0
    str r5, [r0]
    str r3, [r0, #8]
    mov r4, r0
    mov r3, #1
    str r8, [r0, #4]
    ldr r1, [sp]
    mov r0, r6
.Lsec01_00001288:
    bl png_set_text_2
    mov r1, r8
    mov r5, r0
    mov r0, r6
.Lsec01_00001298:
    bl png_free
    mov r0, r6
    mov r1, r4
.Lsec01_000012a4:
    bl png_free
    cmp r5, #0
    beq .Lsec01_00001300
    mov r0, r6
    ldr r1, [pc, #80]
.Lsec01_000012b8:
    bl png_warning
    b .Lsec01_00001300
.Lsec01_000012c0:
    mov r0, r9
.Lsec01_000012c4:
    bl inflateReset
    mov r3, #0
    str r3, [r6, #148]
    b .Lsec01_00001244
.Lsec01_000012d4:
    mov r0, r9
.Lsec01_000012d8:
    bl inflateReset
    mov r3, #0
    str r3, [r6, #512]
    str r3, [r6, #148]
.Lsec01_000012e8:
    mov r1, r7
    mov r0, r6
.Lsec01_000012f0:
    bl png_free
    mov r0, r6
    mov r1, r8
.Lsec01_000012fc:
    bl png_free
.Lsec01_00001300:
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_00000160
.arm
png_push_read_tEXt:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    ldr r3, [r0, #488]
    cmp r3, #0
    sub sp, sp, #4
    mov r6, r0
    mov sl, r1
    beq .Lsec01_00001364
    ldr r4, [r0, #508]
    cmp r4, #0
    beq .Lsec01_00001370
    cmp r3, r4
    movcc r4, r3
    mov r2, r4
    ldr r1, [r0, #516]
.Lsec01_00001348:
    bl png_crc_read
    ldr r3, [r6, #508]
    ldr r2, [r6, #516]
    rsb r3, r4, r3
    add r2, r2, r4
    str r3, [r6, #508]
    str r2, [r6, #516]
.Lsec01_00001364:
    ldr r3, [r6, #508]
    cmp r3, #0
    bne .Lsec01_00001430
.Lsec01_00001370:
    ldr r3, [r6, #488]
    cmp r3, #3
    bhi .Lsec01_0000138c
    mov r0, r6
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
.Lsec01_00001388:
    b png_push_save_buffer
.Lsec01_0000138c:
    mov r0, r6
.Lsec01_00001390:
    bl png_push_crc_finish
    ldr r3, [r6, #476]
    cmp r3, #0
    ldreq r7, [r6, #512]
    moveq r5, r7
    beq .Lsec01_000013b0
    b .Lsec01_00001430
.Lsec01_000013ac:
    add r5, r5, #1
.Lsec01_000013b0:
    ldrb r8, [r5]
    cmp r8, #0
    bne .Lsec01_000013ac
    ldr r3, [r6, #504]
    add r3, r7, r3
    cmp r5, r3
    mov r1, #16
    mov r0, r6
    addne r5, r5, #1
.Lsec01_000013d4:
    bl png_malloc
    mvn r3, #0
    mov r2, r0
    str r3, [r0]
    str r5, [r0, #8]
    add r3, r3, #2
    mov r4, r0
    str r7, [r0, #4]
    mov r1, sl
    mov r0, r6
.Lsec01_000013fc:
    bl png_set_text_2
    mov r1, r7
    mov r5, r0
    mov r0, r6
.Lsec01_0000140c:
    bl png_free
    mov r0, r6
    mov r1, r4
.Lsec01_00001418:
    bl png_free
    cmp r5, #0
    str r8, [r6, #512]
    movne r0, r6
    ldrne r1, [pc, #12]
.Lsec01_0000142c:
    blne png_warning
.Lsec01_00001430:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long .Lsec05_00000160
.arm
png_push_read_chunk:
    stmdb sp!, {r4, r5, r6, lr}
    ldr r3, [r0, #132]
    tst r3, #256
    sub sp, sp, #8
    mov r5, r0
    mov r6, r1
    bne .Lsec01_000014ac
    ldr r3, [r0, #488]
    cmp r3, #7
    bls .Lsec01_000014e0
    add r4, sp, #4
    mov r2, #4
    mov r1, r4
.Lsec01_00001474:
    bl png_push_fill_buffer
    mov r1, r4
    mov r0, r5
.Lsec01_00001480:
    bl png_get_uint_31
    str r0, [r5, #472]
    mov r0, r5
.Lsec01_0000148c:
    bl png_reset_crc
    mov r0, r5
    add r1, r5, #312
    mov r2, #4
.Lsec01_0000149c:
    bl png_crc_read
    ldr r3, [r5, #132]
    orr r3, r3, #256
    str r3, [r5, #132]
.Lsec01_000014ac:
    add r4, r5, #312
    mov r0, r4
    ldr r1, [pc, #1660]
    mov r2, #4
.Lsec01_000014bc:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000014fc
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bls .Lsec01_000014e8
.Lsec01_000014dc:
    mov r0, r5
.Lsec01_000014e0:
    bl png_push_save_buffer
    b .Lsec01_00001b2c
.Lsec01_000014e8:
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_000014f4:
    bl png_handle_IHDR
    b .Lsec01_00001b20
.Lsec01_000014fc:
    mov r0, r4
    ldr r1, [pc, #1588]
    mov r2, #4
.Lsec01_00001508:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001550
    ldr r1, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r1, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r1
    mov r0, r5
    mov r1, r6
.Lsec01_00001534:
    bl png_handle_IEND
    mov r3, #6
    str r3, [r5, #496]
    mov r1, r6
    mov r0, r5
.Lsec01_00001548:
    bl png_push_have_end
    b .Lsec01_00001b20
.Lsec01_00001550:
    mov r0, r5
    mov r1, r4
.Lsec01_00001558:
    bl png_handle_as_unknown
    cmp r0, #0
    beq .Lsec01_0000161c
    ldr r3, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r3, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    ldr r1, [pc, #1472]
    mov r2, #4
    mov r0, r4
.Lsec01_00001584:
    bl memcmp
    cmp r0, #0
    ldreq r3, [r5, #132]
    orreq r3, r3, #4
    streq r3, [r5, #132]
    mov r1, r6
    ldr r2, [r5, #472]
    mov r0, r5
.Lsec01_000015a4:
    bl png_handle_unknown
    mov r0, r4
    ldr r1, [pc, #1424]
    mov r2, #4
.Lsec01_000015b4:
    bl memcmp
    cmp r0, #0
    ldreq r3, [r5, #132]
    orreq r3, r3, #2
    streq r3, [r5, #132]
    beq .Lsec01_00001b20
    mov r0, r4
    ldr r1, [pc, #1384]
    mov r2, #4
.Lsec01_000015d8:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001b20
    ldr r2, [r5, #132]
    tst r2, #1
    moveq r0, r5
    ldreq r1, [pc, #1360]
    beq .Lsec01_00001614
    ldrb r3, [r5, #322]
    cmp r3, #3
    bne .Lsec01_00001b20
    tst r2, #2
    bne .Lsec01_00001b20
    ldr r1, [pc, #1336]
    mov r0, r5
.Lsec01_00001614:
    bl png_error
    b .Lsec01_00001b20
.Lsec01_0000161c:
    mov r0, r4
    ldr r1, [pc, #1308]
    mov r2, #4
.Lsec01_00001628:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000165c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001654:
    bl png_handle_PLTE
    b .Lsec01_00001b20
.Lsec01_0000165c:
    mov r0, r4
    ldr r1, [pc, #1240]
    mov r2, #4
.Lsec01_00001668:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000170c
    ldr r2, [r5, #132]
    tst r2, #1
    moveq r0, r5
    ldreq r1, [pc, #1216]
    beq .Lsec01_000016a4
    ldrb r3, [r5, #322]
    cmp r3, #3
    bne .Lsec01_000016a8
    tst r2, #2
    bne .Lsec01_000016a8
    ldr r1, [pc, #1192]
    mov r0, r5
.Lsec01_000016a4:
    bl png_error
.Lsec01_000016a8:
    ldr r2, [r5, #132]
    tst r2, #4
    beq .Lsec01_000016d0
    ldr r3, [r5, #472]
    cmp r3, #0
    beq .Lsec01_00001b2c
    tst r2, #8
    movne r0, r5
    ldrne r1, [pc, #1152]
.Lsec01_000016cc:
    blne png_error
.Lsec01_000016d0:
    ldr r3, [r5, #132]
    ldr r2, [r5, #472]
    orr r3, r3, #4
    str r3, [r5, #132]
    mov r3, #2
    str r2, [r5, #296]
    str r3, [r5, #496]
    mov r1, r6
    mov r0, r5
.Lsec01_000016f4:
    bl png_push_have_info
    ldr r2, [r5, #248]
    ldr r3, [r5, #264]
    str r2, [r5, #160]
    str r3, [r5, #156]
    b .Lsec01_00001b2c
.Lsec01_0000170c:
    mov r0, r4
    ldr r1, [pc, #1084]
    mov r2, #4
.Lsec01_00001718:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000174c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001744:
    bl png_handle_gAMA
    b .Lsec01_00001b20
.Lsec01_0000174c:
    mov r0, r4
    ldr r1, [pc, #1024]
    mov r2, #4
.Lsec01_00001758:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000178c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001784:
    bl png_handle_sBIT
    b .Lsec01_00001b20
.Lsec01_0000178c:
    mov r0, r4
    ldr r1, [pc, #964]
    mov r2, #4
.Lsec01_00001798:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000017cc
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_000017c4:
    bl png_handle_cHRM
    b .Lsec01_00001b20
.Lsec01_000017cc:
    mov r0, r4
    ldr r1, [pc, #904]
    mov r2, #4
.Lsec01_000017d8:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000180c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001804:
    bl png_handle_sRGB
    b .Lsec01_00001b20
.Lsec01_0000180c:
    mov r0, r4
    ldr r1, [pc, #844]
    mov r2, #4
.Lsec01_00001818:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000184c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001844:
    bl png_handle_iCCP
    b .Lsec01_00001b20
.Lsec01_0000184c:
    mov r0, r4
    ldr r1, [pc, #784]
    mov r2, #4
.Lsec01_00001858:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000188c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001884:
    bl png_handle_sPLT
    b .Lsec01_00001b20
.Lsec01_0000188c:
    mov r0, r4
    ldr r1, [pc, #724]
    mov r2, #4
.Lsec01_00001898:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000018cc
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_000018c4:
    bl png_handle_tRNS
    b .Lsec01_00001b20
.Lsec01_000018cc:
    mov r0, r4
    ldr r1, [pc, #664]
    mov r2, #4
.Lsec01_000018d8:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000190c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001904:
    bl png_handle_bKGD
    b .Lsec01_00001b20
.Lsec01_0000190c:
    mov r0, r4
    ldr r1, [pc, #604]
    mov r2, #4
.Lsec01_00001918:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000194c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001944:
    bl png_handle_hIST
    b .Lsec01_00001b20
.Lsec01_0000194c:
    mov r0, r4
    ldr r1, [pc, #544]
    mov r2, #4
.Lsec01_00001958:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_0000198c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001984:
    bl png_handle_pHYs
    b .Lsec01_00001b20
.Lsec01_0000198c:
    mov r0, r4
    ldr r1, [pc, #484]
    mov r2, #4
.Lsec01_00001998:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_000019cc
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_000019c4:
    bl png_handle_oFFs
    b .Lsec01_00001b20
.Lsec01_000019cc:
    mov r0, r4
    ldr r1, [pc, #424]
    mov r2, #4
.Lsec01_000019d8:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001a0c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001a04:
    bl png_handle_pCAL
    b .Lsec01_00001b20
.Lsec01_00001a0c:
    mov r0, r4
    ldr r1, [pc, #364]
    mov r2, #4
.Lsec01_00001a18:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001a4c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001a44:
    bl png_handle_sCAL
    b .Lsec01_00001b20
.Lsec01_00001a4c:
    mov r0, r4
    ldr r1, [pc, #304]
    mov r2, #4
.Lsec01_00001a58:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001a8c
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001a84:
    bl png_handle_tIME
    b .Lsec01_00001b20
.Lsec01_00001a8c:
    mov r0, r4
    ldr r1, [pc, #244]
    mov r2, #4
.Lsec01_00001a98:
    bl memcmp
    cmp r0, #0
    bne .Lsec01_00001acc
    ldr r0, [r5, #472]
    ldr r2, [r5, #488]
    add r3, r0, #4
    cmp r3, r2
    bhi .Lsec01_000014dc
    mov r2, r0
    mov r1, r6
    mov r0, r5
.Lsec01_00001ac4:
    bl png_push_handle_tEXt
    b .Lsec01_00001b20
.Lsec01_00001acc:
    ldr r1, [pc, #188]
    mov r2, #4
    mov r0, r4
.Lsec01_00001ad8:
    bl memcmp
    cmp r0, #0
    ldr r1, [r5, #488]
    ldr r2, [r5, #472]
    bne .Lsec01_00001b08
    add r3, r2, #4
    cmp r3, r1
    bhi .Lsec01_000014dc
    mov r1, r6
    mov r0, r5
.Lsec01_00001b00:
    bl png_push_handle_zTXt
    b .Lsec01_00001b20
.Lsec01_00001b08:
    add r3, r2, #4
    cmp r3, r1
    bhi .Lsec01_000014dc
    mov r1, r6
    mov r0, r5
.Lsec01_00001b1c:
    bl png_push_handle_unknown
.Lsec01_00001b20:
    ldr r3, [r5, #132]
    bic r3, r3, #256
    str r3, [r5, #132]
.Lsec01_00001b2c:
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long png_IHDR
    .long png_IEND
    .long png_IDAT
    .long png_PLTE
    .long .Lsec05_0000018c
    .long .Lsec05_000001a8
    .long .Lsec05_000001c4
    .long png_gAMA
    .long png_sBIT
    .long png_cHRM
    .long png_sRGB
    .long png_iCCP
    .long png_sPLT
    .long png_tRNS
    .long png_bKGD
    .long png_hIST
    .long png_pHYs
    .long png_oFFs
    .long png_pCAL
    .long png_sCAL
    .long png_tIME
    .long png_tEXt
    .long png_zTXt
.arm
png_push_read_sig:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldrb r6, [r0, #328]
    ldr r2, [r0, #488]
    rsb r3, r6, #8
    cmp r3, r2
    movcc r5, r3
    movcs r5, r2
    add r7, r1, #32
    mov r4, r0
    sub sp, sp, #4
    add r1, r7, r6
    mov r2, r5
.Lsec01_00001bc4:
    bl png_push_fill_buffer
    ldrb r3, [r4, #328]
    add r3, r3, r5
    strb r3, [r4, #328]
    mov r1, r6
    mov r2, r5
    mov r0, r7
.Lsec01_00001be0:
    bl png_sig_cmp
    cmp r0, #0
    beq .Lsec01_00001c24
    cmp r6, #3
    mov r1, r6
    sub r2, r5, #4
    mov r0, r7
    bhi .Lsec01_00001c14
.Lsec01_00001c00:
    bl png_sig_cmp
    cmp r0, #0
    ldr r1, [pc, #48]
    mov r0, r4
    bne .Lsec01_00001c1c
.Lsec01_00001c14:
    ldr r1, [pc, #40]
    mov r0, r4
.Lsec01_00001c1c:
    bl png_error
    b .Lsec01_00001c34
.Lsec01_00001c24:
    ldrb r3, [r4, #328]
    cmp r3, #7
    movhi r3, #1
    strhi r3, [r4, #496]
.Lsec01_00001c34:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_000001dc
    .long .Lsec05_000001ec
.arm
png_process_some_data:
    ldr r3, [r0, #496]
    cmp r3, #5
    ldrls pc, [pc, r3, lsl #2]
    b .Lsec01_00001c88
    .long .Lsec01_00001c70
    .long .Lsec01_00001c74
    .long .Lsec01_00001c78
    .long .Lsec01_00001c84
    .long .Lsec01_00001c7c
    .long .Lsec01_00001c80
.arm
.Lsec01_00001c70:
    b png_push_read_sig
.Lsec01_00001c74:
    b png_push_read_chunk
.Lsec01_00001c78:
    b png_push_read_IDAT
.Lsec01_00001c7c:
    b png_push_read_tEXt
.Lsec01_00001c80:
    b png_push_read_zTXt
.Lsec01_00001c84:
    b png_push_crc_finish
.Lsec01_00001c88:
    mov r3, #0
    str r3, [r0, #488]
    bx lr
png_process_data:
    stmdb sp!, {r4, r5, lr}
    mov r5, r1
    sub sp, sp, #4
    mov r1, r2
    mov r2, r3
    mov r4, r0
.Lsec01_00001cac:
    bl png_push_restore_buffer
    b .Lsec01_00001cb8
.Lsec01_00001cb4:
    bl png_process_some_data
.Lsec01_00001cb8:
    ldr r3, [r4, #488]
    cmp r3, #0
    mov r0, r4
    mov r1, r5
    bne .Lsec01_00001cb4
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "unknown critical chunk"
    .asciz ""
.Lsec05_00000018:
    .asciz "unknown chunk too large to fit in memory"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000044:
    .asciz "Out of place zTXt"
    .asciz ""
    .asciz ""
.Lsec05_00000058:
    .asciz "zTXt chunk too large to fit in memory"
    .asciz ""
    .asciz ""
.Lsec05_00000080:
    .asciz "Out of place tEXt"
    .asciz ""
    .asciz ""
.Lsec05_00000094:
    .asciz "tEXt chunk too large to fit in memory"
    .asciz ""
    .asciz ""
.Lsec05_000000bc:
    .asciz "Potential overflow of save_buffer"
    .asciz ""
    .asciz ""
.Lsec05_000000e0:
    .asciz "Extra compression data"
    .asciz ""
.Lsec05_000000f8:
    .asciz "Extra compressed data"
    .asciz ""
    .asciz ""
.Lsec05_00000110:
    .asciz "Decompression Error"
.Lsec05_00000124:
    .asciz "Too much data in IDAT chunks"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000144:
    .asciz "Not enough compressed data"
    .asciz ""
.Lsec05_00000160:
    .asciz "Insufficient memory to store text chunk."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000018c:
    .asciz "Missing IHDR before IDAT"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000001a8:
    .asciz "Missing PLTE before IDAT"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000001c4:
    .asciz "Too many IDAT's found"
    .asciz ""
    .asciz ""
.Lsec05_000001dc:
    .asciz "Not a PNG file"
    .asciz ""
.Lsec05_000001ec:
    .asciz "PNG file corrupted by ASCII conversion"
    .asciz ""

.size png_push_crc_skip, 16
.size png_push_restore_buffer, 28
.size png_push_have_info, 36
.size png_push_have_end, 36
.size png_push_have_row, 44
.size png_get_progressive_ptr, 8
.size png_set_progressive_read_fn, 48
.size png_push_fill_buffer, 204
.size png_progressive_combine_row, 44
.size png_push_handle_unknown, 360
.size png_push_handle_zTXt, 148
.size png_push_handle_tEXt, 160
.size png_push_save_buffer, 256
.size png_read_push_finish_row, 356
.size png_push_process_row, 1264
.size png_process_IDAT_data, 300
.size png_push_read_IDAT, 500
.size png_push_crc_finish, 272
.size png_push_read_zTXt, 800
.size png_push_read_tEXt, 304
.size png_push_read_chunk, 1876
.size png_push_read_sig, 180
.size png_process_some_data, 76
.size png_process_data, 68

.section .note.GNU-stack,"",%progbits
