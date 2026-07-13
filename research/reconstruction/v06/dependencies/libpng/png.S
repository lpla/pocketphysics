/* Reconstructed mnemonic source for png.o. */
.syntax unified
.arch armv5te

.type C.0.5097, %object
.type short_months.5306, %object
.global png_get_io_ptr
.type png_get_io_ptr, %function
.global png_init_io
.type png_init_io, %function
.global png_get_copyright
.type png_get_copyright, %function
.global png_get_libpng_ver
.type png_get_libpng_ver, %function
.global png_get_header_ver
.type png_get_header_ver, %function
.global png_get_header_version
.type png_get_header_version, %function
.global png_access_version_number
.type png_access_version_number, %function
.global png_init_mmx_flags
.type png_init_mmx_flags, %function
.global png_mmx_support
.type png_mmx_support, %function
.global png_reset_zstream
.type png_reset_zstream, %function
.global png_handle_as_unknown
.type png_handle_as_unknown, %function
.global png_sig_cmp
.type png_sig_cmp, %function
.global png_check_sig
.type png_check_sig, %function
.global png_zalloc
.type png_zalloc, %function
.global png_convert_to_rfc1123
.type png_convert_to_rfc1123, %function
.global png_zfree
.type png_zfree, %function
.global png_free_data
.type png_free_data, %function
.global png_data_freer
.type png_data_freer, %function
.global png_info_init_3
.type png_info_init_3, %function
.global png_info_destroy
.type png_info_destroy, %function
.global png_info_init
.type png_info_init, %function
.global png_destroy_info_struct
.type png_destroy_info_struct, %function
.global png_create_info_struct
.type png_create_info_struct, %function
.global png_calculate_crc
.type png_calculate_crc, %function
.global png_reset_crc
.type png_reset_crc, %function
.global png_set_sig_bytes
.type png_set_sig_bytes, %function
.global png_libpng_ver
.type png_libpng_ver, %object
.global png_sig
.type png_sig, %object
.global png_IHDR
.type png_IHDR, %object
.global png_IDAT
.type png_IDAT, %object
.global png_IEND
.type png_IEND, %object
.global png_PLTE
.type png_PLTE, %object
.global png_bKGD
.type png_bKGD, %object
.global png_cHRM
.type png_cHRM, %object
.global png_gAMA
.type png_gAMA, %object
.global png_hIST
.type png_hIST, %object
.global png_iCCP
.type png_iCCP, %object
.global png_iTXt
.type png_iTXt, %object
.global png_oFFs
.type png_oFFs, %object
.global png_pCAL
.type png_pCAL, %object
.global png_sCAL
.type png_sCAL, %object
.global png_pHYs
.type png_pHYs, %object
.global png_sBIT
.type png_sBIT, %object
.global png_sPLT
.type png_sPLT, %object
.global png_sRGB
.type png_sRGB, %object
.global png_tEXt
.type png_tEXt, %object
.global png_tIME
.type png_tIME, %object
.global png_tRNS
.type png_tRNS, %object
.global png_zTXt
.type png_zTXt, %object
.global png_pass_start
.type png_pass_start, %object
.global png_pass_inc
.type png_pass_inc, %object
.global png_pass_ystart
.type png_pass_ystart, %object
.global png_pass_yinc
.type png_pass_yinc, %object
.global png_pass_mask
.type png_pass_mask, %object
.global png_pass_dsp_mask
.type png_pass_dsp_mask, %object

.section .text,"ax",%progbits
.balign 4
.arm
png_get_io_ptr:
    ldr r0, [r0, #112]
    bx lr
png_init_io:
    str r1, [r0, #112]
    bx lr
png_get_copyright:
    ldr r0, [pc, #8]
    sub sp, sp, #8
    add sp, sp, #8
    bx lr
    .long .Lsec05_00000004
.arm
png_get_libpng_ver:
    ldr r0, [pc, #8]
    sub sp, sp, #8
    add sp, sp, #8
    bx lr
    .long .Lsec05_000000c8
.arm
png_get_header_ver:
    ldr r0, [pc, #8]
    sub sp, sp, #8
    add sp, sp, #8
    bx lr
    .long .Lsec05_000000c8
.arm
png_get_header_version:
    ldr r0, [pc, #8]
    sub sp, sp, #8
    add sp, sp, #8
    bx lr
    .long .Lsec05_000000d0
.arm
png_access_version_number:
    ldr r0, [pc, #0]
    bx lr
    .long 0x000027e0
.arm
png_init_mmx_flags:
    ldr r3, [r0, #604]
    mov r2, #0
    bic r3, r3, #255
    str r3, [r0, #604]
    strb r2, [r0, #596]
    str r2, [r0, #600]
    bx lr
png_mmx_support:
    mvn r0, #0
    bx lr
png_reset_zstream:
    str lr, [sp, #-4]!
    add r0, r0, #144
    sub sp, sp, #4
.Lsec01_0000009c:
    bl inflateReset
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_handle_as_unknown:
    orrs r3, r0, r1
    stmdb sp!, {r4, r5, r6, lr}
    mov r6, r1
    beq .Lsec01_00000100
    ldr r5, [r0, #572]
    cmp r5, #0
    ble .Lsec01_00000100
    ldr r3, [r0, #576]
    mov r2, #5
    mla r3, r5, r2, r3
    sub r4, r3, #5
.Lsec01_000000d8:
    mov r1, r4
    mov r0, r6
    mov r2, #4
.Lsec01_000000e4:
    bl memcmp
    cmp r0, #0
    ldreqb r0, [r4, #4]
    beq .Lsec01_00000104
    subs r5, r5, #1
    sub r4, r4, #5
    bne .Lsec01_000000d8
.Lsec01_00000100:
    mov r0, #0
.Lsec01_00000104:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
png_sig_cmp:
    stmdb sp!, {r4, r5, r6, lr}
    sub sp, sp, #8
    mov r4, r2
    mov r5, r1
    mov r6, r0
    ldr r1, [pc, #84]
    mov r0, sp
    mov r2, #8
.Lsec01_0000012c:
    bl memcpy
    cmp r4, #8
    movhi r4, #8
    bhi .Lsec01_00000144
    cmp r4, #0
    beq .Lsec01_0000016c
.Lsec01_00000144:
    cmp r5, #7
    add r0, r6, r5
    add r3, r5, r4
    add r1, sp, r5
    bhi .Lsec01_0000016c
    cmp r3, #8
    rsbhi r4, r5, #8
    mov r2, r4
.Lsec01_00000164:
    bl memcmp
    b .Lsec01_00000170
.Lsec01_0000016c:
    mov r0, #0
.Lsec01_00000170:
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec06_0000015c
.arm
png_check_sig:
    str lr, [sp, #-4]!
    mov r2, r1
    sub sp, sp, #4
    mov r1, #0
.Lsec01_00000190:
    bl png_sig_cmp
    rsbs r0, r0, #1
    movcc r0, #0
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_zalloc:
    stmdb sp!, {r4, r5, lr}
    ldr r5, [r0, #136]
    orr r3, r5, #1048576
    sub sp, sp, #4
    str r3, [r0, #136]
    mul r1, r2, r1
    mov r4, r0
.Lsec01_000001c4:
    bl png_malloc
    str r5, [r4, #136]
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
png_convert_to_rfc1123:
    stmdb sp!, {r4, r5, r6, r7, lr}
    ldr r3, [r0, #556]
    cmp r3, #0
    mov r6, r1
    sub sp, sp, #20
    mov r7, r0
    mov r1, #29
    bne .Lsec01_00000200
.Lsec01_000001f8:
    bl png_malloc
    str r0, [r7, #556]
.Lsec01_00000200:
    ldrb r0, [r6, #2]
    mov r1, #12
    sub r0, r0, #1
.Lsec01_0000020c:
    bl __aeabi_idivmod
    ldr r4, [pc, #112]
    ldrh r3, [r6]
    ldrb r0, [r6, #4]
    add r4, r4, r1, lsl #2
    mov r1, #24
    ldrb r5, [r6, #3]
    str r3, [sp]
.Lsec01_0000022c:
    bl __aeabi_uidivmod
    ldrb r0, [r6, #5]
    and r3, r1, #255
    mov r1, #60
    str r3, [sp, #4]
.Lsec01_00000240:
    bl __aeabi_uidivmod
    ldrb r0, [r6, #6]
    and r3, r1, #255
    mov r1, #61
    str r3, [sp, #8]
.Lsec01_00000254:
    bl __aeabi_uidivmod
    and r5, r5, #31
    and ip, r1, #255
    ldr r0, [r7, #556]
    mov r2, r5
    mov r3, r4
    ldr r1, [pc, #24]
    str ip, [sp, #12]
.Lsec01_00000274:
    bl sprintf
    ldr r0, [r7, #556]
    add sp, sp, #20
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec06_0000012c
    .long .Lsec05_00000104
.arm
png_zfree:
    str lr, [sp, #-4]!
    sub sp, sp, #4
.Lsec01_00000298:
    bl png_free
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_free_data:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    mov r5, r1
    movne r7, #0
    moveq r7, #1
    mov r8, r2
    mov sl, r3
    mov r6, r0
    beq .Lsec01_000006bc
    ldr r3, [r1, #184]
    and r3, r3, #16384
    tst r2, r3
    beq .Lsec01_0000035c
    cmn sl, #1
    moveq r4, r7
    beq .Lsec01_00000328
    ldr r3, [r1, #56]
    cmp r3, #0
    beq .Lsec01_0000035c
    mov r4, sl, lsl #4
    add r3, r3, r4
    ldr r1, [r3, #4]
    cmp r1, #0
    beq .Lsec01_0000035c
.Lsec01_00000310:
    bl png_free
    ldr r3, [r5, #56]
    add r3, r3, r4
    str r7, [r3, #4]
    b .Lsec01_0000035c
.Lsec01_00000324:
    bl png_free_data
.Lsec01_00000328:
    ldr ip, [r5, #48]
    cmp r4, ip
    mov r3, r4
    mov r0, r6
    mov r1, r5
    mov r2, #16384
    add r4, r4, #1
    blt .Lsec01_00000324
    ldr r1, [r5, #56]
.Lsec01_0000034c:
    bl png_free
    mov r3, #0
    str r3, [r5, #48]
    str r3, [r5, #56]
.Lsec01_0000035c:
    ldr r3, [r5, #184]
    and r3, r3, #8192
    tst r8, r3
    beq .Lsec01_0000038c
    mov r0, r6
    ldr r1, [r5, #76]
.Lsec01_00000374:
    bl png_free
    ldr r3, [r5, #8]
    bic r3, r3, #16
    str r3, [r5, #8]
    mov r3, #0
    str r3, [r5, #76]
.Lsec01_0000038c:
    ldr r3, [r5, #184]
    and r3, r3, #256
    tst r8, r3
    ldrne r3, [r5, #8]
    bicne r3, r3, #16384
    strne r3, [r5, #8]
    ldr r3, [r5, #184]
    and r3, r3, #128
    tst r8, r3
    beq .Lsec01_00000438
    ldr r1, [r5, #160]
    mov r0, r6
.Lsec01_000003bc:
    bl png_free
    mov r0, r6
    ldr r1, [r5, #172]
.Lsec01_000003c8:
    bl png_free
    ldr r3, [r5, #176]
    cmp r3, #0
    mov r3, #0
    str r3, [r5, #160]
    str r3, [r5, #172]
    movne r4, r3
    bne .Lsec01_00000404
    b .Lsec01_0000042c
.Lsec01_000003ec:
    ldr r3, [r5, #176]
    ldr r1, [r3, r7]
.Lsec01_000003f4:
    bl png_free
    ldr r2, [r5, #176]
    mov r3, #0
    str r3, [r2, r7]
.Lsec01_00000404:
    ldrb r3, [r5, #181]
    cmp r4, r3
    mov r7, r4, lsl #2
    mov r0, r6
    add r4, r4, #1
    blt .Lsec01_000003ec
    ldr r1, [r5, #176]
.Lsec01_00000420:
    bl png_free
    mov r3, #0
    str r3, [r5, #176]
.Lsec01_0000042c:
    ldr r3, [r5, #8]
    bic r3, r3, #1024
    str r3, [r5, #8]
.Lsec01_00000438:
    ldr r3, [r5, #184]
    and r3, r3, #16
    tst r8, r3
    beq .Lsec01_00000478
    ldr r1, [r5, #196]
    mov r0, r6
.Lsec01_00000450:
    bl png_free
    mov r0, r6
    ldr r1, [r5, #200]
.Lsec01_0000045c:
    bl png_free
    ldr r3, [r5, #8]
    mov r2, #0
    bic r3, r3, #4096
    str r2, [r5, #200]
    str r3, [r5, #8]
    str r2, [r5, #196]
.Lsec01_00000478:
    ldr r3, [r5, #184]
    and r3, r3, #32
    tst r8, r3
    beq .Lsec01_00000530
    cmn sl, #1
    beq .Lsec01_000004d8
    ldr r3, [r5, #212]
    cmp r3, #0
    beq .Lsec01_00000530
    mov r4, sl, lsl #4
    ldr r1, [r3, r4]
    mov r0, r6
.Lsec01_000004a8:
    bl png_free
    ldr r3, [r5, #212]
    add r3, r3, r4
    ldr r1, [r3, #8]
    mov r0, r6
.Lsec01_000004bc:
    bl png_free
    ldr r1, [r5, #212]
    mov r3, #0
    add r2, r1, r4
    str r3, [r2, #8]
    str r3, [r1, r4]
    b .Lsec01_00000530
.Lsec01_000004d8:
    ldr r3, [r5, #216]
    cmp r3, #0
    movne r4, #0
    bne .Lsec01_000004f0
    b .Lsec01_00000524
.Lsec01_000004ec:
    bl png_free_data
.Lsec01_000004f0:
    ldr ip, [r5, #216]
    cmp r4, ip
    mov r3, r4
    mov r0, r6
    mov r1, r5
    mov r2, #32
    add r4, r4, #1
    blt .Lsec01_000004ec
    ldr r1, [r5, #212]
.Lsec01_00000514:
    bl png_free
    mov r3, #0
    str r3, [r5, #216]
    str r3, [r5, #212]
.Lsec01_00000524:
    ldr r3, [r5, #8]
    bic r3, r3, #8192
    str r3, [r5, #8]
.Lsec01_00000530:
    ldr r3, [r5, #184]
    and r3, r3, #512
    tst r8, r3
    beq .Lsec01_000005cc
    cmn sl, #1
    beq .Lsec01_00000580
    ldr r2, [r5, #188]
    cmp r2, #0
    beq .Lsec01_000005cc
    mov r3, #20
    mul r4, sl, r3
    add r3, r2, r4
    ldr r1, [r3, #8]
    mov r0, r6
.Lsec01_00000568:
    bl png_free
    ldr r3, [r5, #188]
    mov r2, #0
    add r3, r3, r4
    str r2, [r3, #8]
    b .Lsec01_000005cc
.Lsec01_00000580:
    ldr r3, [r5, #192]
    cmp r3, #0
    movne r4, #0
    bne .Lsec01_00000598
    b .Lsec01_000005cc
.Lsec01_00000594:
    bl png_free_data
.Lsec01_00000598:
    ldr ip, [r5, #192]
    cmp r4, ip
    mov r3, r4
    mov r0, r6
    mov r1, r5
    mov r2, #512
    add r4, r4, #1
    blt .Lsec01_00000594
    ldr r1, [r5, #188]
.Lsec01_000005bc:
    bl png_free
    mov r3, #0
    str r3, [r5, #192]
    str r3, [r5, #188]
.Lsec01_000005cc:
    ldr r3, [r5, #184]
    and r3, r3, #8
    tst r8, r3
    beq .Lsec01_000005fc
    mov r0, r6
    ldr r1, [r5, #124]
.Lsec01_000005e4:
    bl png_free
    ldr r3, [r5, #8]
    mov r2, #0
    bic r3, r3, #64
    str r2, [r5, #124]
    str r3, [r5, #8]
.Lsec01_000005fc:
    ldr r3, [r5, #184]
    and r3, r3, #4096
    tst r8, r3
    beq .Lsec01_00000630
    mov r0, r6
    ldr r1, [r5, #16]
.Lsec01_00000614:
    bl png_zfree
    ldr r3, [r5, #8]
    mov r2, #0
    bic r3, r3, #8
    str r3, [r5, #8]
    strh r2, [r5, #20]
    str r2, [r5, #16]
.Lsec01_00000630:
    ldr r3, [r5, #184]
    and r3, r3, #64
    tst r8, r3
    beq .Lsec01_000006a0
    ldr r3, [r5, #248]
    cmp r3, #0
    movne r4, #0
    bne .Lsec01_0000066c
    b .Lsec01_00000694
.Lsec01_00000654:
    ldr r3, [r5, #248]
    ldr r1, [r3, r7]
.Lsec01_0000065c:
    bl png_free
    ldr r2, [r5, #248]
    mov r3, #0
    str r3, [r2, r7]
.Lsec01_0000066c:
    ldr r3, [r5, #4]
    cmp r4, r3
    mov r7, r4, lsl #2
    mov r0, r6
    add r4, r4, #1
    blt .Lsec01_00000654
    ldr r1, [r5, #248]
.Lsec01_00000688:
    bl png_free
    mov r3, #0
    str r3, [r5, #248]
.Lsec01_00000694:
    ldr r3, [r5, #8]
    bic r3, r3, #32768
    str r3, [r5, #8]
.Lsec01_000006a0:
    cmn sl, #1
    ldr r2, [r5, #184]
    bicne r3, r8, #16896
    bicne r3, r3, #32
    biceq r3, r2, r8
    bicne r3, r2, r3
    str r3, [r5, #184]
.Lsec01_000006bc:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
png_data_freer:
    str lr, [sp, #-4]!
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    mov ip, r1
    mov lr, r3
    beq .Lsec01_00000714
    cmp r2, #1
    ldreq r3, [r1, #184]
    orreq r3, r3, lr
    beq .Lsec01_00000708
    cmp r2, #2
    ldr r1, [pc, #32]
    bne .Lsec01_00000710
    ldr r3, [ip, #184]
    bic r3, r3, lr
.Lsec01_00000708:
    str r3, [ip, #184]
    b .Lsec01_00000714
.Lsec01_00000710:
    bl png_warning
.Lsec01_00000714:
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
    .long .Lsec05_00000124
.arm
png_info_init_3:
    ldr r3, [r0]
    cmp r1, #288
    stmdb sp!, {r4, lr}
    mov r4, r0
    mov r0, r3
    bcs .Lsec01_00000750
.Lsec01_0000073c:
    bl png_destroy_struct
    mov r0, #2
.Lsec01_00000744:
    bl png_create_struct
    str r0, [r4]
    mov r3, r0
.Lsec01_00000750:
    mov r0, r3
    mov r1, #0
    mov r2, #288
.Lsec01_0000075c:
    bl memset
    ldmia sp!, {r4, lr}
    bx lr
png_info_destroy:
    stmdb sp!, {r4, lr}
    mvn r3, #0
    mov r4, r0
    sub sp, sp, #8
    ldr r2, [pc, #64]
    str r1, [sp, #4]
.Lsec01_00000780:
    bl png_free_data
    ldr r3, [r4, #572]
    cmp r3, #0
    mov r0, r4
    beq .Lsec01_000007a8
    ldr r1, [r4, #576]
.Lsec01_00000798:
    bl png_free
    mov r3, #0
    str r3, [r4, #572]
    str r3, [r4, #576]
.Lsec01_000007a8:
    add r0, sp, #4
    mov r1, #288
.Lsec01_000007b0:
    bl png_info_init_3
    add sp, sp, #8
    ldmia sp!, {r4, lr}
    bx lr
    .long 0x00007fff
.arm
png_info_init:
    str lr, [sp, #-4]!
    sub sp, sp, #12
    add r3, sp, #8
    str r0, [r3, #-4]!
    mov r1, #0
    mov r0, r3
.Lsec01_000007dc:
    bl png_info_init_3
    add sp, sp, #12
    ldr lr, [sp], #4
    bx lr
png_destroy_info_struct:
    stmdb sp!, {r4, r5, r6, lr}
    subs r6, r1, #0
    mov r5, r0
    beq .Lsec01_00000824
    ldr r4, [r6]
    subs r1, r4, #0
    beq .Lsec01_00000824
.Lsec01_00000808:
    bl png_info_destroy
    mov r0, r4
    ldr r2, [r5, #608]
    ldr r1, [r5, #616]
.Lsec01_00000818:
    bl png_destroy_struct_2
    mov r3, #0
    str r3, [r6]
.Lsec01_00000824:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
png_create_info_struct:
    str lr, [sp, #-4]!
    subs r3, r0, #0
    sub sp, sp, #12
    mov r0, #2
    mov r2, r3
    beq .Lsec01_0000086c
    ldr r1, [r3, #612]
    ldr r2, [r3, #608]
.Lsec01_0000084c:
    bl png_create_struct_2
    mov r3, r0
    cmp r0, #0
    mov r1, #288
    add r0, sp, #4
    str r3, [sp, #4]
.Lsec01_00000864:
    blne png_info_init_3
    ldr r2, [sp, #4]
.Lsec01_0000086c:
    mov r0, r2
    add sp, sp, #12
    ldr lr, [sp], #4
    bx lr
png_calculate_crc:
    stmdb sp!, {r4, lr}
    ldrb r3, [r0, #312]
    tst r3, #32
    ldr r3, [r0, #136]
    mov r4, r0
    and r0, r3, #768
    beq .Lsec01_000008a4
    cmp r0, #768
    bne .Lsec01_000008ac
    b .Lsec01_000008b8
.Lsec01_000008a4:
    tst r3, #2048
    bne .Lsec01_000008b8
.Lsec01_000008ac:
    ldr r0, [r4, #300]
.Lsec01_000008b0:
    bl crc32
    str r0, [r4, #300]
.Lsec01_000008b8:
    ldmia sp!, {r4, lr}
    bx lr
png_reset_crc:
    stmdb sp!, {r4, lr}
    mov r4, r0
    mov r0, #0
    mov r1, r0
    mov r2, r0
.Lsec01_000008d4:
    bl crc32
    str r0, [r4, #300]
    ldmia sp!, {r4, lr}
    bx lr
png_set_sig_bytes:
    stmdb sp!, {r4, r5, lr}
    cmp r1, #8
    mov r4, r1
    sub sp, sp, #4
    ldr r1, [pc, #32]
    mov r5, r0
.Lsec01_000008fc:
    blgt png_error
    cmp r4, #0
    movge r3, r4
    movlt r3, #0
    strb r3, [r5, #328]
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_00000150

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
    .asciz ""
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000004:
    .long 0x696c200a
    .long 0x676e7062
    .long 0x72657620
    .long 0x6e6f6973
    .long 0x322e3120
    .long 0x2d20382e
    .long 0x63654420
    .long 0x65626d65
    .long 0x2c332072
    .long 0x30303220
    .long 0x20200a34
    .long 0x706f4320
    .long 0x67697279
    .long 0x28207468
    .long 0x31202963
    .long 0x2d383939
    .long 0x34303032
    .long 0x656c4720
    .long 0x52206e6e
    .long 0x65646e61
    .long 0x502d7372
    .long 0x73726865
    .long 0x200a6e6f
    .long 0x6f432020
    .long 0x69727970
    .long 0x20746867
    .long 0x20296328
    .long 0x36393931
    .long 0x3939312d
    .long 0x6e412037
    .long 0x61657264
    .long 0x69442073
    .long 0x7265676c
    .long 0x2020200a
    .long 0x79706f43
    .long 0x68676972
    .long 0x63282074
    .long 0x39312029
    .long 0x312d3539
    .long 0x20363939
    .long 0x20797547
    .long 0x63697245
    .long 0x68635320
    .long 0x616e6c61
    .long 0x47202c74
    .long 0x70756f72
    .long 0x2c323420
    .long 0x636e4920
    .long 0x00000a2e
.Lsec05_000000c8:
    .asciz "1.2.8"
    .asciz ""
    .asciz ""
.Lsec05_000000d0:
    .long 0x62696c20
    .long 0x20676e70
    .long 0x73726576
    .long 0x206e6f69
    .long 0x2e322e31
    .long 0x202d2038
    .long 0x65636544
    .long 0x7265626d
    .long 0x202c3320
    .long 0x34303032
    .long 0x65682820
    .long 0x72656461
    .long 0x00000a29
.Lsec05_00000104:
    .asciz "%d %s %d %02d:%02d:%02d +0000"
    .asciz ""
    .asciz ""
.Lsec05_00000124:
    .asciz "Unknown freer parameter in png_data_freer."
    .asciz ""
.Lsec05_00000150:
    .asciz "Too many bytes for PNG signature."
    .asciz ""
    .asciz ""

.section .rodata,"a",%progbits
.balign 4
png_libpng_ver:
    .long 0x2e322e31
    .long 0x00000038
    .long 0x00000000
    .long 0x00000000
    .short 0x0000
png_sig:
    .short 0x5089
    .long 0x0a0d474e
    .short 0x0a1a
png_IHDR:
    .short 0x4849
    .short 0x5244
    .byte 0x00
png_IDAT:
    .byte 0x49
    .long 0x00544144
png_IEND:
    .long 0x444e4549
    .byte 0x00
png_PLTE:
    .byte 0x50
    .short 0x544c
    .short 0x0045
png_bKGD:
    .short 0x4b62
    .short 0x4447
    .byte 0x00
png_cHRM:
    .byte 0x63
    .long 0x004d5248
png_gAMA:
    .long 0x414d4167
    .byte 0x00
png_hIST:
    .byte 0x68
    .short 0x5349
    .short 0x0054
png_iCCP:
    .short 0x4369
    .short 0x5043
    .byte 0x00
png_iTXt:
    .byte 0x69
    .long 0x00745854
png_oFFs:
    .long 0x7346466f
    .byte 0x00
png_pCAL:
    .byte 0x70
    .short 0x4143
    .short 0x004c
png_sCAL:
    .short 0x4373
    .short 0x4c41
    .byte 0x00
png_pHYs:
    .byte 0x70
    .long 0x00735948
png_sBIT:
    .long 0x54494273
    .byte 0x00
png_sPLT:
    .byte 0x73
    .short 0x4c50
    .short 0x0054
png_sRGB:
    .short 0x5273
    .short 0x4247
    .byte 0x00
png_tEXt:
    .byte 0x74
    .long 0x00745845
png_tIME:
    .long 0x454d4974
    .byte 0x00
png_tRNS:
    .byte 0x74
    .short 0x4e52
    .short 0x0053
png_zTXt:
    .short 0x547a
    .long 0x00007458
png_pass_start:
    .long 0x00000000
    .long 0x00000004
    .long 0x00000000
    .long 0x00000002
    .long 0x00000000
    .long 0x00000001
    .long 0x00000000
png_pass_inc:
    .long 0x00000008
    .long 0x00000008
    .long 0x00000004
    .long 0x00000004
    .long 0x00000002
    .long 0x00000002
    .long 0x00000001
png_pass_ystart:
    .long 0x00000000
    .long 0x00000000
    .long 0x00000004
    .long 0x00000000
    .long 0x00000002
    .long 0x00000000
    .long 0x00000001
png_pass_yinc:
    .long 0x00000008
    .long 0x00000008
    .long 0x00000008
    .long 0x00000004
    .long 0x00000004
    .long 0x00000002
    .long 0x00000002
png_pass_mask:
    .long 0x00000080
    .long 0x00000008
    .long 0x00000088
    .long 0x00000022
    .long 0x000000aa
    .long 0x00000055
    .long 0x000000ff
png_pass_dsp_mask:
    .long 0x000000ff
    .long 0x0000000f
    .long 0x000000ff
    .long 0x00000033
    .long 0x000000ff
    .long 0x00000055
    .long 0x000000ff
short_months.5306:
.Lsec06_0000012c:
    .long 0x006e614a
    .long 0x00626546
    .long 0x0072614d
    .long 0x00727041
    .long 0x0079614d
    .long 0x006e754a
    .long 0x006c754a
    .long 0x00677541
    .long 0x00706553
    .long 0x0074634f
    .long 0x00766f4e
    .long 0x00636544
C.0.5097:
.Lsec06_0000015c:
    .long 0x474e5089
    .long 0x0a1a0a0d

.size C.0.5097, 8
.size short_months.5306, 48
.size png_get_io_ptr, 8
.size png_init_io, 8
.size png_get_copyright, 20
.size png_get_libpng_ver, 20
.size png_get_header_ver, 20
.size png_get_header_version, 20
.size png_access_version_number, 12
.size png_init_mmx_flags, 28
.size png_mmx_support, 8
.size png_reset_zstream, 28
.size png_handle_as_unknown, 96
.size png_sig_cmp, 116
.size png_check_sig, 40
.size png_zalloc, 48
.size png_convert_to_rfc1123, 184
.size png_zfree, 24
.size png_free_data, 1056
.size png_data_freer, 92
.size png_info_init_3, 68
.size png_info_destroy, 92
.size png_info_init, 40
.size png_destroy_info_struct, 64
.size png_create_info_struct, 80
.size png_calculate_crc, 68
.size png_reset_crc, 36
.size png_set_sig_bytes, 60
.size png_libpng_ver, 18
.size png_sig, 8
.size png_IHDR, 5
.size png_IDAT, 5
.size png_IEND, 5
.size png_PLTE, 5
.size png_bKGD, 5
.size png_cHRM, 5
.size png_gAMA, 5
.size png_hIST, 5
.size png_iCCP, 5
.size png_iTXt, 5
.size png_oFFs, 5
.size png_pCAL, 5
.size png_sCAL, 5
.size png_pHYs, 5
.size png_sBIT, 5
.size png_sPLT, 5
.size png_sRGB, 5
.size png_tEXt, 5
.size png_tIME, 5
.size png_tRNS, 5
.size png_zTXt, 5
.size png_pass_start, 28
.size png_pass_inc, 28
.size png_pass_ystart, 28
.size png_pass_yinc, 28
.size png_pass_mask, 28
.size png_pass_dsp_mask, 28

.section .note.GNU-stack,"",%progbits
