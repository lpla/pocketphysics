/* Reconstructed mnemonic source for pngset.o. */
.syntax unified
.arch armv5te

.global png_set_oFFs
.type png_set_oFFs, %function
.global png_set_sCAL
.type png_set_sCAL, %function
.global png_set_pHYs
.type png_set_pHYs, %function
.global png_set_sRGB
.type png_set_sRGB, %function
.global png_set_unknown_chunk_location
.type png_set_unknown_chunk_location, %function
.global png_permit_empty_plte
.type png_permit_empty_plte, %function
.global png_set_read_user_chunk_fn
.type png_set_read_user_chunk_fn, %function
.global png_set_invalid
.type png_set_invalid, %function
.global png_set_asm_flags
.type png_set_asm_flags, %function
.global png_set_mmx_thresholds
.type png_set_mmx_thresholds, %function
.global png_set_user_limits
.type png_set_user_limits, %function
.global png_set_compression_buffer_size
.type png_set_compression_buffer_size, %function
.global png_set_rows
.type png_set_rows, %function
.global png_set_keep_unknown_chunks
.type png_set_keep_unknown_chunks, %function
.global png_set_tRNS
.type png_set_tRNS, %function
.global png_set_tIME
.type png_set_tIME, %function
.global png_set_sBIT
.type png_set_sBIT, %function
.global png_set_bKGD
.type png_set_bKGD, %function
.global png_set_hIST
.type png_set_hIST, %function
.global png_set_gAMA_fixed
.type png_set_gAMA_fixed, %function
.global png_set_gAMA
.type png_set_gAMA, %function
.global png_set_cHRM_fixed
.type png_set_cHRM_fixed, %function
.global png_set_cHRM
.type png_set_cHRM, %function
.global png_set_sRGB_gAMA_and_cHRM
.type png_set_sRGB_gAMA_and_cHRM, %function
.global png_set_unknown_chunks
.type png_set_unknown_chunks, %function
.global png_set_text_2
.type png_set_text_2, %function
.global png_set_pCAL
.type png_set_pCAL, %function
.global png_set_sPLT
.type png_set_sPLT, %function
.global png_set_iCCP
.type png_set_iCCP, %function
.global png_set_text
.type png_set_text, %function
.global png_set_IHDR
.type png_set_IHDR, %function
.global png_set_PLTE
.type png_set_PLTE, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_set_oFFs:
    cmp r1, #0
    cmpne r0, #0
    mov r0, r3
    bxeq lr
    ldr r3, [r1, #8]
    orr r3, r3, #256
    str r3, [r1, #8]
    ldr r3, [sp]
    str r2, [r1, #100]
    str r0, [r1, #104]
    strb r3, [r1, #108]
    bx lr
png_set_sCAL:
    cmp r1, #0
    cmpne r0, #0
    stmdb sp!, {r4, r5}
    beq .Lsec01_00000070
    add r4, sp, #8
    ldmia r4, {r4, r5}
    ldr r3, [r1, #8]
    str r4, [r1, #224]
    str r5, [r1, #228]
    add r4, sp, #16
    ldmia r4, {r4, r5}
    orr r3, r3, #16384
    str r4, [r1, #232]
    str r5, [r1, #236]
    str r3, [r1, #8]
    strb r2, [r1, #220]
.Lsec01_00000070:
    ldmia sp!, {r4, r5}
    bx lr
png_set_pHYs:
    cmp r1, #0
    cmpne r0, #0
    mov r0, r3
    bxeq lr
    ldr r3, [r1, #8]
    orr r3, r3, #128
    str r3, [r1, #8]
    ldr r3, [sp]
    str r2, [r1, #112]
    str r0, [r1, #116]
    strb r3, [r1, #120]
    bx lr
png_set_sRGB:
    cmp r1, #0
    cmpne r0, #0
    ldrne r3, [r1, #8]
    orrne r3, r3, #2048
    strne r3, [r1, #8]
    strneb r2, [r1, #44]
    bx lr
png_set_unknown_chunk_location:
    cmp r0, #0
    cmpne r1, #0
    mov r0, r2
    mov ip, r3
    bxeq lr
    cmp r2, #0
    bxlt lr
    ldr r3, [r1, #192]
    cmp r2, r3
    ldrlt r3, [r1, #188]
    movlt r2, #20
    mlalt r3, r0, r2, r3
    strltb ip, [r3, #16]
    bx lr
png_permit_empty_plte:
    cmp r0, #0
    ldrne r3, [r0, #588]
    and r1, r1, #1
    andne r3, r3, #254
    orrne r3, r3, r1
    strne r3, [r0, #588]
    bx lr
png_set_read_user_chunk_fn:
    str r1, [r0, #564]
    str r2, [r0, #568]
    bx lr
png_set_invalid:
    cmp r0, #0
    cmpne r1, #0
    ldrne r3, [r1, #8]
    bicne r3, r3, r2
    strne r3, [r1, #8]
    bx lr
png_set_asm_flags:
    bx lr
png_set_mmx_thresholds:
    str r2, [r0, #600]
    strb r1, [r0, #596]
    bx lr
png_set_user_limits:
    str r2, [r0, #644]
    str r1, [r0, #640]
    bx lr
png_set_compression_buffer_size:
    stmdb sp!, {r4, r5, lr}
    ldr r3, [r0, #200]
    cmp r3, #0
    mov r5, r1
    sub sp, sp, #4
    mov r4, r0
    mov r1, r3
.Lsec01_00000174:
    blne png_free
    str r5, [r4, #204]
    mov r1, r5
    mov r0, r4
.Lsec01_00000184:
    bl png_malloc
    ldr r3, [r4, #204]
    str r0, [r4, #156]
    str r3, [r4, #160]
    str r0, [r4, #200]
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
png_set_rows:
    stmdb sp!, {r4, r5, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    movne r3, #0
    moveq r3, #1
    mov r5, r2
    mov r4, r1
    beq .Lsec01_000001f4
    ldr r2, [r1, #248]
    cmp r2, #0
    beq .Lsec01_000001e0
    cmp r2, r5
    mov r2, #64
.Lsec01_000001dc:
    blne png_free_data
.Lsec01_000001e0:
    cmp r5, #0
    ldrne r3, [r4, #8]
    orrne r3, r3, #32768
    str r5, [r4, #248]
    strne r3, [r4, #8]
.Lsec01_000001f4:
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
png_set_keep_unknown_chunks:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    subs r7, r3, #0
    sub sp, sp, #4
    mov r8, r1
    mov sl, r2
    mov r5, r0
    bne .Lsec01_0000024c
    sub r3, r1, #2
    cmp r3, #1
    ldr r3, [r0, #136]
    orrls r3, r3, #32768
    bichi r3, r3, #32768
    str r3, [r0, #136]
    ldr r3, [r0, #136]
    cmp r1, #3
    orreq r3, r3, #65536
    bicne r3, r3, #65536
    str r3, [r0, #136]
    b .Lsec01_000002d8
.Lsec01_0000024c:
    cmp r2, #0
    beq .Lsec01_000002d8
    ldr r4, [r0, #572]
    mov r6, #5
    add fp, r7, r4
    mul r1, fp, r6
.Lsec01_00000264:
    bl png_malloc
    ldr r1, [r5, #576]
    cmp r1, #0
    mov r9, r0
    beq .Lsec01_00000294
    mul r2, r4, r6
.Lsec01_0000027c:
    bl memcpy
    mov r0, r5
    ldr r1, [r5, #576]
.Lsec01_00000288:
    bl png_free
    mov r3, #0
    str r3, [r5, #576]
.Lsec01_00000294:
    mla r4, r6, r4, r9
    mov r1, sl
    mul r2, r7, r6
    mov r0, r4
.Lsec01_000002a4:
    bl memcpy
    mov r3, #0
    b .Lsec01_000002b4
.Lsec01_000002b0:
    strb r8, [r4, #-1]
.Lsec01_000002b4:
    cmp r3, r7
    add r4, r4, #5
    add r3, r3, #1
    blt .Lsec01_000002b0
    ldr r3, [r5, #560]
    orr r3, r3, #1024
    str r3, [r5, #560]
    str fp, [r5, #572]
    str r9, [r5, #576]
.Lsec01_000002d8:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
png_set_tRNS:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    cmp r1, #0
    cmpne r0, #0
    movne ip, #0
    moveq ip, #1
    mov r5, r3
    mov r7, r2
    mov r4, r1
    ldr r8, [sp, #24]
    mov r6, r0
    beq .Lsec01_00000384
    cmp r7, #0
    mov r3, ip
    mov r2, #8192
    beq .Lsec01_00000354
.Lsec01_00000320:
    bl png_free_data
    mov r1, #256
    mov r0, r6
.Lsec01_0000032c:
    bl png_malloc
    str r0, [r4, #76]
    str r0, [r6, #420]
    mov r1, r7
    mov r2, r5
    ldr r0, [r4, #76]
.Lsec01_00000344:
    bl memcpy
    ldr r3, [r4, #184]
    orr r3, r3, #8192
    str r3, [r4, #184]
.Lsec01_00000354:
    cmp r8, #0
    mov r1, r8
    add r0, r4, #80
    mov r2, #10
    beq .Lsec01_00000374
.Lsec01_00000368:
    bl memcpy
    cmp r5, #0
    moveq r5, #1
.Lsec01_00000374:
    ldr r3, [r4, #8]
    orr r3, r3, #16
    str r3, [r4, #8]
    strh r5, [r4, #22]
.Lsec01_00000384:
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
png_set_tIME:
    cmp r1, #0
    cmpne r0, #0
    stmdb sp!, {r4, lr}
    mov r3, r0
    mov r4, r1
    mov r1, r2
    beq .Lsec01_000003cc
    ldr r3, [r3, #132]
    tst r3, #512
    add r0, r4, #60
    mov r2, #8
    bne .Lsec01_000003cc
.Lsec01_000003bc:
    bl memcpy
    ldr r3, [r4, #8]
    orr r3, r3, #512
    str r3, [r4, #8]
.Lsec01_000003cc:
    ldmia sp!, {r4, lr}
    bx lr
png_set_sBIT:
    cmp r1, #0
    cmpne r0, #0
    stmdb sp!, {r4, lr}
    add r0, r1, #68
    mov r4, r1
    mov r1, r2
    mov r2, #5
    beq .Lsec01_00000404
.Lsec01_000003f4:
    bl memcpy
    ldr r3, [r4, #8]
    orr r3, r3, #2
    str r3, [r4, #8]
.Lsec01_00000404:
    ldmia sp!, {r4, lr}
    bx lr
png_set_bKGD:
    cmp r1, #0
    cmpne r0, #0
    stmdb sp!, {r4, lr}
    add r0, r1, #90
    mov r4, r1
    mov r1, r2
    mov r2, #10
    beq .Lsec01_0000043c
.Lsec01_0000042c:
    bl memcpy
    ldr r3, [r4, #8]
    orr r3, r3, #32
    str r3, [r4, #8]
.Lsec01_0000043c:
    ldmia sp!, {r4, lr}
    bx lr
png_set_hIST:
    stmdb sp!, {r4, r5, r6, r7, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    movne r6, #0
    moveq r6, #1
    mov r7, r2
    mov r5, r0
    mov r4, r1
    beq .Lsec01_000004f4
    ldrh r3, [r1, #20]
    cmp r3, #0
    ldreq r1, [pc, #132]
    beq .Lsec01_000004b0
    mov r2, #8
    mov r3, r6
.Lsec01_00000484:
    bl png_free_data
    mov r1, #512
    mov r0, r5
.Lsec01_00000490:
    bl png_malloc_warn
    cmp r0, #0
    movne r1, r6
    str r0, [r5, #528]
    movne r2, r1
    bne .Lsec01_000004c4
    ldr r1, [pc, #84]
    mov r0, r5
.Lsec01_000004b0:
    bl png_warning
    b .Lsec01_000004f4
.Lsec01_000004b8:
    ldrh r3, [r2, r7]
    strh r3, [r0, r2]
    add r2, r2, #2
.Lsec01_000004c4:
    ldrh r3, [r4, #20]
    cmp r1, r3
    ldr r0, [r5, #528]
    add r1, r1, #1
    blt .Lsec01_000004b8
    ldr r2, [r4, #8]
    ldr r3, [r4, #184]
    orr r2, r2, #64
    orr r3, r3, #8
    str r3, [r4, #184]
    str r0, [r4, #124]
    str r2, [r4, #8]
.Lsec01_000004f4:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000000
    .long .Lsec05_0000002c
.arm
png_set_gAMA_fixed:
    stmdb sp!, {r4, r5, r6, r7, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    mov r4, r1
    movne r6, #0
    moveq r6, #1
    mov r5, r2
    mov r7, r0
    beq .Lsec01_0000059c
    cmp r2, #0
    ldr r1, [pc, #108]
    bge .Lsec01_0000055c
.Lsec01_0000053c:
    bl png_warning
    ldr r3, [r4, #8]
    orr r3, r3, #1
    str r3, [r4, #8]
    mov r3, #0
    str r3, [r4, #40]
    str r6, [r4, #252]
    b .Lsec01_00000590
.Lsec01_0000055c:
    mov r0, r2
.Lsec01_00000560:
    bl __aeabi_i2d
    ldr r3, [pc, #64]
    mov r2, #0
.Lsec01_0000056c:
    bl __aeabi_ddiv
.Lsec01_00000570:
    bl __aeabi_d2f
    ldr r3, [r4, #8]
    cmp r5, #0
    orr r3, r3, #1
    str r3, [r4, #8]
    str r0, [r4, #40]
    str r5, [r4, #252]
    bne .Lsec01_0000059c
.Lsec01_00000590:
    mov r0, r7
    ldr r1, [pc, #20]
.Lsec01_00000598:
    bl png_warning
.Lsec01_0000059c:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long .Lsec05_00000058
    .long 0x40f86a00
    .long .Lsec05_00000078
.arm
png_set_gAMA:
    stmdb sp!, {r4, r5, r6, r7, lr}
    cmp r1, #0
    cmpne r0, #0
    mov r4, r1
    mov r7, r0
    mov r5, r2
    mov r6, r3
    mov r0, r2
    mov r1, r3
    sub sp, sp, #4
    ldr r2, [pc, #176]
    ldr r3, [pc, #176]
    beq .Lsec01_00000688
.Lsec01_000005e8:
    bl __aeabi_dcmpgt
    cmp r0, #0
    ldr r1, [pc, #164]
    mov r0, r7
    beq .Lsec01_00000620
.Lsec01_000005fc:
    bl png_warning
    ldr r3, [r4, #8]
    orr r3, r3, #1
    str r3, [r4, #8]
    ldr r3, [pc, #140]
    str r3, [r4, #40]
    ldr r3, [pc, #136]
    str r3, [r4, #252]
    b .Lsec01_00000688
.Lsec01_00000620:
    mov r1, r6
    mov r0, r5
.Lsec01_00000628:
    bl __aeabi_d2f
    mov r2, #0
    str r0, [r4, #40]
    ldr r3, [pc, #108]
    mov r0, r5
    mov r1, r6
.Lsec01_00000640:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #92]
.Lsec01_0000064c:
    bl __aeabi_dadd
.Lsec01_00000650:
    bl __aeabi_d2iz
    ldr r3, [r4, #8]
    orr r3, r3, #1
    str r3, [r4, #8]
    str r0, [r4, #252]
    mov r1, r6
    mov r0, r5
    mov r2, #0
    mov r3, #0
.Lsec01_00000674:
    bl __aeabi_dcmpeq
    cmp r0, #0
    ldr r1, [pc, #44]
    mov r0, r7
.Lsec01_00000684:
    blne png_warning
.Lsec01_00000688:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long 0x1eb851ec
    .long 0x40d4f8b5
    .long .Lsec05_00000088
    .long 0x46a7c5a9
    .long 0x7ffffd78
    .long 0x40f86a00
    .long 0x3fe00000
    .long .Lsec05_00000078
.arm
png_set_cHRM_fixed:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #52
    str r0, [sp, #4]
    mov r4, r1
    mov r9, r2
    str r3, [sp]
    beq .Lsec01_00000974
    orrs r3, r2, r3
    bmi .Lsec01_00000710
    add r1, sp, #88
    ldmia r1, {r1, r2}
    orrs r1, r1, r2
    bmi .Lsec01_00000710
    ldr r3, [sp, #96]
    ldr r1, [sp, #100]
    orrs r3, r3, r1
    bmi .Lsec01_00000710
    add r2, sp, #104
    ldmia r2, {r2, r3}
    orrs r2, r2, r3
    bpl .Lsec01_0000071c
.Lsec01_00000710:
    ldr r0, [sp, #4]
    ldr r1, [pc, #612]
    b .Lsec01_00000844
.Lsec01_0000071c:
    mov r0, r9
.Lsec01_00000720:
    bl __aeabi_i2d
    ldr r2, [pc, #600]
    ldr r3, [pc, #600]
    str r0, [sp, #8]
    str r1, [sp, #12]
.Lsec01_00000734:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_0000083c
    ldr r0, [sp]
.Lsec01_00000744:
    bl __aeabi_i2d
    ldr r2, [pc, #564]
    ldr r3, [pc, #564]
    str r0, [sp, #16]
    str r1, [sp, #20]
.Lsec01_00000758:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_0000083c
    ldr r0, [sp, #88]
.Lsec01_00000768:
    bl __aeabi_i2d
    ldr r2, [pc, #528]
    ldr r3, [pc, #528]
    str r0, [sp, #24]
    str r1, [sp, #28]
.Lsec01_0000077c:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_0000083c
    ldr r0, [sp, #92]
.Lsec01_0000078c:
    bl __aeabi_i2d
    ldr r2, [pc, #492]
    ldr r3, [pc, #492]
    str r0, [sp, #32]
    str r1, [sp, #36]
.Lsec01_000007a0:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_0000083c
    ldr r0, [sp, #96]
.Lsec01_000007b0:
    bl __aeabi_i2d
    ldr r2, [pc, #456]
    ldr r3, [pc, #456]
    str r0, [sp, #40]
    str r1, [sp, #44]
.Lsec01_000007c4:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_0000083c
    ldr r0, [sp, #100]
.Lsec01_000007d4:
    bl __aeabi_i2d
    ldr r2, [pc, #420]
    ldr r3, [pc, #420]
    mov sl, r0
    mov fp, r1
.Lsec01_000007e8:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_0000083c
    ldr r0, [sp, #104]
.Lsec01_000007f8:
    bl __aeabi_i2d
    ldr r2, [pc, #384]
    ldr r3, [pc, #384]
    mov r7, r0
    mov r8, r1
.Lsec01_0000080c:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_0000083c
    ldr r0, [sp, #108]
.Lsec01_0000081c:
    bl __aeabi_i2d
    ldr r2, [pc, #348]
    ldr r3, [pc, #348]
    mov r5, r0
    mov r6, r1
.Lsec01_00000830:
    bl __aeabi_dcmpgt
    cmp r0, #0
    beq .Lsec01_0000084c
.Lsec01_0000083c:
    ldr r0, [sp, #4]
    ldr r1, [pc, #324]
.Lsec01_00000844:
    bl png_warning
    b .Lsec01_00000974
.Lsec01_0000084c:
    ldr r1, [sp]
    str r9, [r4, #256]
    str r1, [r4, #260]
    ldr r2, [sp, #88]
    str r2, [r4, #264]
    ldr r3, [sp, #92]
    str r3, [r4, #268]
    ldr r1, [sp, #96]
    str r1, [r4, #272]
    ldr r2, [sp, #100]
    str r2, [r4, #276]
    ldr r3, [sp, #104]
    str r3, [r4, #280]
    ldr r1, [sp, #108]
    mov r2, #0
    ldr r3, [pc, #256]
    str r1, [r4, #284]
    add r0, sp, #8
    ldmia r0, {r0, r1}
.Lsec01_00000898:
    bl __aeabi_ddiv
.Lsec01_0000089c:
    bl __aeabi_d2f
    mov r2, #0
    ldr r3, [pc, #228]
    str r0, [r4, #128]
    add r0, sp, #16
    ldmia r0, {r0, r1}
.Lsec01_000008b4:
    bl __aeabi_ddiv
.Lsec01_000008b8:
    bl __aeabi_d2f
    mov r2, #0
    ldr r3, [pc, #200]
    str r0, [r4, #132]
    add r0, sp, #24
    ldmia r0, {r0, r1}
.Lsec01_000008d0:
    bl __aeabi_ddiv
.Lsec01_000008d4:
    bl __aeabi_d2f
    mov r2, #0
    ldr r3, [pc, #172]
    str r0, [r4, #136]
    add r0, sp, #32
    ldmia r0, {r0, r1}
.Lsec01_000008ec:
    bl __aeabi_ddiv
.Lsec01_000008f0:
    bl __aeabi_d2f
    mov r2, #0
    ldr r3, [pc, #144]
    str r0, [r4, #140]
    add r0, sp, #40
    ldmia r0, {r0, r1}
.Lsec01_00000908:
    bl __aeabi_ddiv
.Lsec01_0000090c:
    bl __aeabi_d2f
    mov r2, #0
    ldr r3, [pc, #116]
    str r0, [r4, #144]
    mov r1, fp
    mov r0, sl
.Lsec01_00000924:
    bl __aeabi_ddiv
.Lsec01_00000928:
    bl __aeabi_d2f
    mov r2, #0
    ldr r3, [pc, #88]
    str r0, [r4, #148]
    mov r1, r8
    mov r0, r7
.Lsec01_00000940:
    bl __aeabi_ddiv
.Lsec01_00000944:
    bl __aeabi_d2f
    ldr r3, [pc, #64]
    str r0, [r4, #152]
    mov r2, #0
    mov r0, r5
    mov r1, r6
.Lsec01_0000095c:
    bl __aeabi_ddiv
.Lsec01_00000960:
    bl __aeabi_d2f
    ldr r3, [r4, #8]
    orr r3, r3, #4
    str r3, [r4, #8]
    str r0, [r4, #156]
.Lsec01_00000974:
    add sp, sp, #52
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_000000a4
    .long 0xffc00000
    .long 0x41dfffff
    .long .Lsec05_000000d8
    .long 0x40f86a00
.arm
png_set_cHRM:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    mov r7, r0
    mov r4, r1
    mov r5, r2
    mov r6, r3
    add r8, sp, #40
    ldmia r8, {r8, r9}
    add sl, sp, #48
    ldmia sl, {sl, fp}
    beq .Lsec01_00000d70
    mov r0, r2
    mov r1, r3
    mov r2, #0
    mov r3, #0
.Lsec01_000009d8:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00000aa8
    mov r0, r8
    mov r1, r9
    mov r2, #0
    mov r3, #0
.Lsec01_000009f4:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00000aa8
    mov r0, sl
    mov r1, fp
    mov r2, #0
    mov r3, #0
.Lsec01_00000a10:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00000aa8
    add r0, sp, #56
    ldmia r0, {r0, r1}
    mov r2, #0
    mov r3, #0
.Lsec01_00000a2c:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00000aa8
    add r0, sp, #64
    ldmia r0, {r0, r1}
    mov r2, #0
    mov r3, #0
.Lsec01_00000a48:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00000aa8
    add r0, sp, #72
    ldmia r0, {r0, r1}
    mov r2, #0
    mov r3, #0
.Lsec01_00000a64:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00000aa8
    add r0, sp, #80
    ldmia r0, {r0, r1}
    mov r2, #0
    mov r3, #0
.Lsec01_00000a80:
    bl __aeabi_dcmplt
    cmp r0, #0
    bne .Lsec01_00000aa8
    add r0, sp, #88
    ldmia r0, {r0, r1}
    mov r2, #0
    mov r3, #0
.Lsec01_00000a9c:
    bl __aeabi_dcmplt
    cmp r0, #0
    beq .Lsec01_00000ab4
.Lsec01_00000aa8:
    ldr r1, [pc, #716]
    mov r0, r7
    b .Lsec01_00000b9c
.Lsec01_00000ab4:
    mov r0, r5
    mov r1, r6
    ldr r2, [pc, #700]
    ldr r3, [pc, #700]
.Lsec01_00000ac4:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00000b94
    mov r0, r8
    mov r1, r9
    ldr r2, [pc, #672]
    ldr r3, [pc, #672]
.Lsec01_00000ae0:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00000b94
    mov r0, sl
    mov r1, fp
    ldr r2, [pc, #644]
    ldr r3, [pc, #644]
.Lsec01_00000afc:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00000b94
    add r0, sp, #56
    ldmia r0, {r0, r1}
    ldr r2, [pc, #616]
    ldr r3, [pc, #616]
.Lsec01_00000b18:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00000b94
    add r0, sp, #64
    ldmia r0, {r0, r1}
    ldr r2, [pc, #588]
    ldr r3, [pc, #588]
.Lsec01_00000b34:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00000b94
    add r0, sp, #72
    ldmia r0, {r0, r1}
    ldr r2, [pc, #560]
    ldr r3, [pc, #560]
.Lsec01_00000b50:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00000b94
    add r0, sp, #80
    ldmia r0, {r0, r1}
    ldr r2, [pc, #532]
    ldr r3, [pc, #532]
.Lsec01_00000b6c:
    bl __aeabi_dcmpgt
    cmp r0, #0
    bne .Lsec01_00000b94
    add r0, sp, #88
    ldmia r0, {r0, r1}
    ldr r2, [pc, #504]
    ldr r3, [pc, #504]
.Lsec01_00000b88:
    bl __aeabi_dcmpgt
    cmp r0, #0
    beq .Lsec01_00000ba4
.Lsec01_00000b94:
    ldr r1, [pc, #492]
    mov r0, r7
.Lsec01_00000b9c:
    bl png_warning
    b .Lsec01_00000d70
.Lsec01_00000ba4:
    mov r1, r6
    mov r0, r5
.Lsec01_00000bac:
    bl __aeabi_d2f
    mov r1, r9
    str r0, [r4, #128]
    mov r0, r8
.Lsec01_00000bbc:
    bl __aeabi_d2f
    mov r1, fp
    str r0, [r4, #132]
    mov r0, sl
.Lsec01_00000bcc:
    bl __aeabi_d2f
    str r0, [r4, #136]
    add r0, sp, #56
    ldmia r0, {r0, r1}
.Lsec01_00000bdc:
    bl __aeabi_d2f
    str r0, [r4, #140]
    add r0, sp, #64
    ldmia r0, {r0, r1}
.Lsec01_00000bec:
    bl __aeabi_d2f
    str r0, [r4, #144]
    add r0, sp, #72
    ldmia r0, {r0, r1}
.Lsec01_00000bfc:
    bl __aeabi_d2f
    str r0, [r4, #148]
    add r0, sp, #80
    ldmia r0, {r0, r1}
.Lsec01_00000c0c:
    bl __aeabi_d2f
    str r0, [r4, #152]
    add r0, sp, #88
    ldmia r0, {r0, r1}
.Lsec01_00000c1c:
    bl __aeabi_d2f
    mov r2, #0
    str r0, [r4, #156]
    ldr r3, [pc, #348]
    mov r0, r5
    mov r1, r6
.Lsec01_00000c34:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #332]
.Lsec01_00000c40:
    bl __aeabi_dadd
.Lsec01_00000c44:
    bl __aeabi_d2iz
    mov r2, #0
    str r0, [r4, #256]
    ldr r3, [pc, #308]
    mov r0, r8
    mov r1, r9
.Lsec01_00000c5c:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #292]
.Lsec01_00000c68:
    bl __aeabi_dadd
.Lsec01_00000c6c:
    bl __aeabi_d2iz
    mov r2, #0
    str r0, [r4, #260]
    ldr r3, [pc, #268]
    mov r0, sl
    mov r1, fp
.Lsec01_00000c84:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #252]
.Lsec01_00000c90:
    bl __aeabi_dadd
.Lsec01_00000c94:
    bl __aeabi_d2iz
    mov r2, #0
    str r0, [r4, #264]
    ldr r3, [pc, #228]
    add r0, sp, #56
    ldmia r0, {r0, r1}
.Lsec01_00000cac:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #212]
.Lsec01_00000cb8:
    bl __aeabi_dadd
.Lsec01_00000cbc:
    bl __aeabi_d2iz
    mov r2, #0
    str r0, [r4, #268]
    ldr r3, [pc, #188]
    add r0, sp, #64
    ldmia r0, {r0, r1}
.Lsec01_00000cd4:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #172]
.Lsec01_00000ce0:
    bl __aeabi_dadd
.Lsec01_00000ce4:
    bl __aeabi_d2iz
    mov r2, #0
    str r0, [r4, #272]
    ldr r3, [pc, #148]
    add r0, sp, #72
    ldmia r0, {r0, r1}
.Lsec01_00000cfc:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #132]
.Lsec01_00000d08:
    bl __aeabi_dadd
.Lsec01_00000d0c:
    bl __aeabi_d2iz
    mov r2, #0
    str r0, [r4, #276]
    ldr r3, [pc, #108]
    add r0, sp, #80
    ldmia r0, {r0, r1}
.Lsec01_00000d24:
    bl __aeabi_dmul
    mov r2, #0
    ldr r3, [pc, #92]
.Lsec01_00000d30:
    bl __aeabi_dadd
.Lsec01_00000d34:
    bl __aeabi_d2iz
    mov r2, #0
    str r0, [r4, #280]
    ldr r3, [pc, #68]
    add r0, sp, #88
    ldmia r0, {r0, r1}
.Lsec01_00000d4c:
    bl __aeabi_dmul
    ldr r3, [pc, #56]
    mov r2, #0
.Lsec01_00000d58:
    bl __aeabi_dadd
.Lsec01_00000d5c:
    bl __aeabi_d2iz
    ldr r3, [r4, #8]
    orr r3, r3, #4
    str r3, [r4, #8]
    str r0, [r4, #284]
.Lsec01_00000d70:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_000000a4
    .long 0x1eb851ec
    .long 0x40d4f8b5
    .long .Lsec05_000000d8
    .long 0x40f86a00
    .long 0x3fe00000
.arm
png_set_sRGB_gAMA_and_cHRM:
    stmdb sp!, {r4, r5, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #60
    mov r4, r0
    mov r5, r1
    beq .Lsec01_00000e9c
.Lsec01_00000db0:
    bl png_set_sRGB
    mov r0, r4
    mov r1, r5
    ldr r3, [pc, #228]
    mov r2, #-536870912
.Lsec01_00000dc4:
    bl png_set_gAMA
    mov r0, r4
    mov r1, r5
    ldr r2, [pc, #212]
.Lsec01_00000dd4:
    bl png_set_gAMA_fixed
    mov ip, #64000
    str ip, [sp]
    ldr ip, [pc, #200]
    str ip, [sp, #4]
    ldr ip, [pc, #196]
    str ip, [sp, #8]
    ldr ip, [pc, #192]
    str ip, [sp, #12]
    ldr ip, [pc, #188]
    str ip, [sp, #16]
    ldr ip, [pc, #184]
    mov r0, r4
    mov r1, r5
    ldr r2, [pc, #176]
    ldr r3, [pc, #176]
    str ip, [sp, #20]
.Lsec01_00000e18:
    bl png_set_cHRM_fixed
    mov r1, r5
    ldr r5, [pc, #164]
    mov r0, r4
    mov r4, #0
    stmia sp, {r4, r5}
    ldr r5, [pc, #152]
    mov r4, #1073741824
    str r4, [sp, #8]
    str r5, [sp, #12]
    ldr r5, [pc, #140]
    mov r4, #1610612736
    str r4, [sp, #16]
    str r5, [sp, #20]
    ldr r5, [pc, #128]
    mov r4, #1073741824
    str r4, [sp, #24]
    str r5, [sp, #28]
    ldr r5, [pc, #116]
    mov r4, #1073741824
    str r4, [sp, #32]
    str r5, [sp, #36]
    ldr r5, [pc, #104]
    mov r4, #1073741824
    str r4, [sp, #40]
    str r5, [sp, #44]
    ldr r5, [pc, #92]
    mov r4, #-536870912
    mov r2, #-536870912
    ldr r3, [pc, #84]
    str r4, [sp, #48]
    str r5, [sp, #52]
.Lsec01_00000e98:
    bl png_set_cHRM
.Lsec01_00000e9c:
    add sp, sp, #60
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long 0x3fdd1758
    .long 0x0000b18f
    .long 0x000080e8
    .long 0x00007530
    .long 0x0000ea60
    .long 0x00003a98
    .long 0x00001770
    .long 0x00007a26
    .long 0x00008084
    .long 0x3fd50e56
    .long 0x3fe47ae1
    .long 0x3fd51eb8
    .long 0x3fd33333
    .long 0x3fe33333
    .long 0x3fc33333
    .long 0x3faeb851
    .long 0x3fd40346
.arm
png_set_unknown_chunks:
    cmp r1, #0
    cmpne r0, #0
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    mov r5, r1
    movne r6, #0
    moveq r6, #1
    mov sl, r2
    mov r8, r3
    mov r7, r0
    beq .Lsec01_00001000
    cmp r3, #0
    beq .Lsec01_00001000
    ldr r3, [r1, #192]
    mov r4, #20
    add r3, r8, r3
    mul r1, r3, r4
.Lsec01_00000f2c:
    bl png_malloc_warn
    subs r9, r0, #0
    bne .Lsec01_00000f48
    mov r0, r7
    ldr r1, [pc, #196]
.Lsec01_00000f40:
    bl png_warning
    b .Lsec01_00001000
.Lsec01_00000f48:
    add r1, r5, #188
    ldmia r1, {r1, r3}
    mul r2, r3, r4
.Lsec01_00000f54:
    bl memcpy
    mov r0, r7
    ldr r1, [r5, #188]
.Lsec01_00000f60:
    bl png_free
    mov r4, sl
    mov sl, r6
    str r6, [r5, #188]
    b .Lsec01_00000fd0
.Lsec01_00000f74:
    mov r3, #20
    mla r6, r0, r3, r9
    mov r0, r6
.Lsec01_00000f80:
    bl strncpy
    ldr r1, [r4, #12]
    mov r0, r7
.Lsec01_00000f8c:
    bl png_malloc_warn
    cmp r0, #0
    ldr r1, [pc, #112]
    str r0, [r6, #8]
    bne .Lsec01_00000fac
    mov r0, r7
.Lsec01_00000fa4:
    bl png_warning
    b .Lsec01_00000fc8
.Lsec01_00000fac:
    add r1, r4, #8
    ldmia r1, {r1, r2}
.Lsec01_00000fb4:
    bl memcpy
    ldr r2, [r4, #12]
    ldr r3, [r7, #132]
    str r2, [r6, #12]
    strb r3, [r6, #16]
.Lsec01_00000fc8:
    add sl, sl, #1
    add r4, r4, #20
.Lsec01_00000fd0:
    ldr ip, [r5, #192]
    cmp sl, r8
    mov r2, #5
    mov r1, r4
    add r0, sl, ip
    blt .Lsec01_00000f74
    ldr r3, [r5, #184]
    add r2, ip, r8
    orr r3, r3, #512
    str r3, [r5, #184]
    str r9, [r5, #188]
    str r2, [r5, #192]
.Lsec01_00001000:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    bx lr
    .long .Lsec05_00000118
    .long .Lsec05_00000148
.arm
png_set_text_2:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #20
    mov r5, r1
    mov r7, r2
    str r3, [sp, #4]
    str r0, [sp, #8]
    beq .Lsec01_00001200
    cmp r3, #0
    beq .Lsec01_00001200
    ldr r3, [r1, #48]
    ldr r2, [sp, #4]
    ldr r6, [r1, #52]
    add r1, r2, r3
    cmp r1, r6
    ble .Lsec01_000010d8
    ldr r4, [r5, #56]
    cmp r4, #0
    beq .Lsec01_000010a8
    add r1, r1, #8
    str r1, [r5, #52]
    mov r1, r1, lsl #4
.Lsec01_0000106c:
    bl png_malloc_warn
    cmp r0, #0
    str r0, [r5, #56]
    bne .Lsec01_0000108c
    ldr r0, [sp, #8]
    mov r1, r4
.Lsec01_00001084:
    bl png_free
    b .Lsec01_00001208
.Lsec01_0000108c:
    mov r1, r4
    mov r2, r6, lsl #4
.Lsec01_00001094:
    bl memcpy
    ldr r0, [sp, #8]
    mov r1, r4
.Lsec01_000010a0:
    bl png_free
    b .Lsec01_000010d8
.Lsec01_000010a8:
    ldr r3, [sp, #4]
    add r1, r3, #8
    str r1, [r5, #52]
    str r4, [r5, #48]
    mov r1, r1, lsl #4
.Lsec01_000010bc:
    bl png_malloc_warn
    cmp r0, #0
    str r0, [r5, #56]
    beq .Lsec01_00001208
    ldr r3, [r5, #184]
    orr r3, r3, #16384
    str r3, [r5, #184]
.Lsec01_000010d8:
    mov r2, #0
    mov r6, r7
    str r2, [sp, #12]
    b .Lsec01_000011f0
.Lsec01_000010e8:
    ldr r0, [r6, #4]
    cmp r0, #0
    ldr fp, [r5, #56]
    ldr r4, [r5, #48]
    beq .Lsec01_000011e0
.Lsec01_000010fc:
    bl strlen
    ldr r9, [r6]
    cmp r9, #0
    mov r8, r0
    bgt .Lsec01_00001128
    ldr r0, [r6, #8]
    mov r7, r4, lsl #4
    cmp r0, #0
    add r4, fp, r7
    bne .Lsec01_00001138
    b .Lsec01_00001144
.Lsec01_00001128:
    ldr r0, [sp, #8]
    ldr r1, [pc, #228]
.Lsec01_00001130:
    bl png_warning
    b .Lsec01_000011e0
.Lsec01_00001138:
    ldrb r3, [r0]
    cmp r3, #0
    bne .Lsec01_00001154
.Lsec01_00001144:
    mvn r3, #0
    mov sl, #0
    str r3, [r4]
    b .Lsec01_00001160
.Lsec01_00001154:
    bl strlen
    str r9, [fp, r7]
    mov sl, r0
.Lsec01_00001160:
    add r1, r8, #4
    add r1, sl, r1
    ldr r0, [sp, #8]
.Lsec01_0000116c:
    bl png_malloc_warn
    cmp r0, #0
    str r0, [r4, #4]
    beq .Lsec01_00001208
    ldr r1, [r6, #4]
    mov r2, r8
.Lsec01_00001184:
    bl memcpy
    ldr r3, [r4, #4]
    mov r7, #0
    strb r7, [r3, r8]
    ldr r3, [r4, #4]
    add r3, r8, r3
    add r0, r3, #1
    cmp sl, r7
    str r0, [r4, #8]
    ldrne r1, [r6, #8]
    movne r2, sl
.Lsec01_000011b0:
    blne memcpy
    ldr r3, [r4, #8]
    strb r7, [r3, sl]
    str sl, [r4, #12]
    ldr ip, [r5, #56]
    ldr lr, [r5, #48]
    ldmia r4, {r0, r1, r2, r3}
    add ip, ip, lr, lsl #4
    stmia ip, {r0, r1, r2, r3}
    ldr r3, [r5, #48]
    add r3, r3, #1
    str r3, [r5, #48]
.Lsec01_000011e0:
    ldr r3, [sp, #12]
    add r3, r3, #1
    str r3, [sp, #12]
    add r6, r6, #16
.Lsec01_000011f0:
    ldr r2, [sp, #12]
    ldr r3, [sp, #4]
    cmp r2, r3
    blt .Lsec01_000010e8
.Lsec01_00001200:
    mov r0, #0
    b .Lsec01_0000120c
.Lsec01_00001208:
    mov r0, #1
.Lsec01_0000120c:
    add sp, sp, #20
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_00000170
.arm
png_set_pCAL:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    mov r7, r0
    mov r6, r1
    movne fp, #0
    moveq fp, #1
    mov r5, r2
    mov r8, r3
    add r9, sp, #48
    ldmia r9, {r9, sl}
    beq .Lsec01_00001390
    mov r0, r2
.Lsec01_00001254:
    bl strlen
    add r4, r0, #1
    mov r1, r4
    mov r0, r7
.Lsec01_00001264:
    bl png_malloc_warn
    cmp r0, #0
    str r0, [r6, #160]
    ldreq r1, [pc, #292]
    moveq r0, r7
    beq .Lsec01_000012cc
    mov r2, r4
    mov r1, r5
.Lsec01_00001284:
    bl memcpy
    str r8, [r6, #164]
    ldr r3, [sp, #40]
    str r3, [r6, #168]
    ldr r3, [sp, #44]
    mov r0, sl
    strb r3, [r6, #180]
    strb r9, [r6, #181]
.Lsec01_000012a4:
    bl strlen
    add r4, r0, #1
    mov r1, r4
    mov r0, r7
.Lsec01_000012b4:
    bl png_malloc_warn
    cmp r0, #0
    str r0, [r6, #172]
    bne .Lsec01_000012d4
    ldr r1, [pc, #212]
    mov r0, r7
.Lsec01_000012cc:
    bl png_warning
    b .Lsec01_00001390
.Lsec01_000012d4:
    mov r1, sl
    mov r2, r4
.Lsec01_000012dc:
    bl memcpy
    mov r1, r9, lsl #2
    add r1, r1, #4
    mov r0, r7
.Lsec01_000012ec:
    bl png_malloc_warn
    cmp r0, #0
    str r0, [r6, #176]
    ldreq r1, [pc, #164]
    moveq r0, r7
    beq .Lsec01_000012cc
    b .Lsec01_00001314
.Lsec01_00001308:
    ldr r1, [pc, #152]
    mov r0, r7
    b .Lsec01_000012cc
.Lsec01_00001314:
    mov sl, fp
    mov r8, fp
    str fp, [r0, r9, lsl #2]
    b .Lsec01_0000136c
.Lsec01_00001324:
    ldr r3, [sp, #56]
    ldr r0, [r8, r3]
.Lsec01_0000132c:
    bl strlen
    add r5, r0, #1
    mov r1, r5
    mov r0, r7
    ldr r4, [r6, #176]
.Lsec01_00001340:
    bl png_malloc_warn
    ldr r3, [r6, #176]
    str r0, [r8, r4]
    ldr r3, [r3, r8]
    subs r0, r3, #0
    mov r2, r5
    beq .Lsec01_00001308
    ldr r3, [sp, #56]
    ldr r1, [r8, r3]
.Lsec01_00001364:
    bl memcpy
    add r8, r8, #4
.Lsec01_0000136c:
    cmp sl, r9
    add sl, sl, #1
    blt .Lsec01_00001324
    ldr r2, [r6, #8]
    ldr r3, [r6, #184]
    orr r2, r2, #1024
    orr r3, r3, #128
    str r3, [r6, #184]
    str r2, [r6, #8]
.Lsec01_00001390:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_0000018c
    .long .Lsec05_000001b4
    .long .Lsec05_000001d8
    .long .Lsec05_00000200
.arm
png_set_sPLT:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    mov r5, r1
    ldr r1, [r1, #216]
    add r1, r3, r1
    sub sp, sp, #4
    mov r1, r1, lsl #4
    mov r9, r3
    mov r4, r2
    mov r8, r0
.Lsec01_000013d0:
    bl png_malloc_warn
    subs sl, r0, #0
    bne .Lsec01_000013ec
    mov r0, r8
    ldr r1, [pc, #212]
.Lsec01_000013e4:
    bl png_warning
    b .Lsec01_000014b0
.Lsec01_000013ec:
    add r1, r5, #212
    ldmia r1, {r1, r2}
    mov r2, r2, lsl #4
.Lsec01_000013f8:
    bl memcpy
    mov r0, r8
    ldr r1, [r5, #212]
.Lsec01_00001404:
    bl png_free
    mov r3, #0
    mov fp, r3
    str r3, [r5, #212]
    b .Lsec01_0000146c
.Lsec01_00001418:
    ldr r0, [r4, #-16]
.Lsec01_0000141c:
    bl strlen
    add r1, r0, #1
    mov r0, r8
.Lsec01_00001428:
    bl png_malloc
    str r0, [sl, r7]
    ldr r1, [r4, #-16]
.Lsec01_00001434:
    bl strcpy
    ldr r1, [r4, #-4]
    mov r0, r8
    mov r1, r1, lsl #4
.Lsec01_00001444:
    bl png_malloc
    ldr r2, [r4, #-4]
    str r0, [r6, #8]
    mov r2, r2, lsl #4
    ldr r1, [r4, #-8]
.Lsec01_00001458:
    bl memcpy
    ldr r2, [r4, #-4]
    ldrb r3, [r4, #-12]
    str r2, [r6, #12]
    strb r3, [r6, #4]
.Lsec01_0000146c:
    ldr r1, [r5, #216]
    add r3, fp, r1
    cmp fp, r9
    mov r7, r3, lsl #4
    add r4, r4, #16
    add r6, sl, r7
    add fp, fp, #1
    blt .Lsec01_00001418
    ldr r3, [r5, #8]
    ldr r2, [r5, #184]
    add r1, r1, r9
    orr r3, r3, #8192
    orr r2, r2, #32
    str r2, [r5, #184]
    str sl, [r5, #212]
    str r1, [r5, #216]
    str r3, [r5, #8]
.Lsec01_000014b0:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_00000228
.arm
png_set_iCCP:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    mov r4, r1
    mov r5, r0
    mov r6, r2
    mov fp, r3
    add r7, sp, #40
    ldmia r7, {r7, sl}
    beq .Lsec01_000015a4
    cmp r7, #0
    cmpne r2, #0
    mov r0, r2
    movne r9, #0
    moveq r9, #1
    beq .Lsec01_000015a4
.Lsec01_00001504:
    bl strlen
    add r1, r0, #1
    mov r0, r5
.Lsec01_00001510:
    bl png_malloc_warn
    mov r1, r6
    subs r6, r0, #0
    moveq r0, r5
    ldreq r1, [pc, #136]
    beq .Lsec01_00001558
.Lsec01_00001528:
    bl strcpy
    mov r1, sl
    mov r0, r5
.Lsec01_00001534:
    bl png_malloc_warn
    subs r8, r0, #0
    mov r1, r6
    mov r2, sl
    bne .Lsec01_00001560
    mov r0, r5
.Lsec01_0000154c:
    bl png_free
    ldr r1, [pc, #92]
    mov r0, r5
.Lsec01_00001558:
    bl png_warning
    b .Lsec01_000015a4
.Lsec01_00001560:
    mov r1, r7
.Lsec01_00001564:
    bl memcpy
    mov r3, r9
    mov r2, #16
    mov r0, r5
    mov r1, r4
.Lsec01_00001578:
    bl png_free_data
    ldr r2, [r4, #184]
    ldr r3, [r4, #8]
    orr r2, r2, #16
    orr r3, r3, #4096
    str r3, [r4, #8]
    str sl, [r4, #204]
    str r6, [r4, #196]
    str r8, [r4, #200]
    strb fp, [r4, #208]
    str r2, [r4, #184]
.Lsec01_000015a4:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_00000248
    .long .Lsec05_00000274
.arm
png_set_text:
    stmdb sp!, {r4, lr}
    mov r4, r0
.Lsec01_000015c0:
    bl png_set_text_2
    cmp r0, #0
    ldr r1, [pc, #12]
    mov r0, r4
.Lsec01_000015d0:
    blne png_error
    ldmia sp!, {r4, lr}
    bx lr
    .long .Lsec05_000002a4
.arm
png_set_IHDR:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    mov r4, r1
    mov r6, r2
    mov sl, r3
    ldr r8, [sp, #40]
    ldr r7, [sp, #44]
    add r9, sp, #52
    ldmia r9, {r9, fp}
    mov r5, r0
    beq .Lsec01_000017dc
    cmp r3, #0
    cmpne r2, #0
    ldreq r1, [pc, #452]
.Lsec01_00001620:
    bleq png_error
    ldr r3, [r5, #640]
    cmp r6, r3
    bhi .Lsec01_0000163c
    ldr r3, [r5, #644]
    cmp sl, r3
    bls .Lsec01_00001648
.Lsec01_0000163c:
    mov r0, r5
    ldr r1, [pc, #420]
.Lsec01_00001644:
    bl png_error
.Lsec01_00001648:
    orrs r2, r6, sl
    movmi r0, r5
    ldrmi r1, [pc, #408]
.Lsec01_00001654:
    blmi png_error
    ldr r3, [pc, #404]
    cmp r6, r3
    movhi r0, r5
    ldrhi r1, [pc, #396]
.Lsec01_00001668:
    blhi png_warning
    sub r3, r8, #1
    cmp r8, #4
    cmpne r3, #1
    bls .Lsec01_00001690
    cmp r8, #8
    cmpne r8, #16
    movne r0, r5
    ldrne r1, [pc, #364]
.Lsec01_0000168c:
    blne png_error
.Lsec01_00001690:
    cmp r7, #1
    movne r3, #0
    moveq r3, #1
    orrs r3, r3, r7, lsr #31
    bne .Lsec01_000016c0
    cmp r7, #6
    movle r3, #0
    movgt r3, #1
    cmp r7, #5
    orreq r3, r3, #1
    cmp r3, #0
    beq .Lsec01_000016cc
.Lsec01_000016c0:
    mov r0, r5
    ldr r1, [pc, #308]
.Lsec01_000016c8:
    bl png_error
.Lsec01_000016cc:
    cmp r7, #3
    movne r3, #0
    moveq r3, #1
    cmp r8, #8
    movle r3, #0
    cmp r3, #0
    bne .Lsec01_00001704
    cmp r7, #4
    cmpne r7, #2
    beq .Lsec01_000016fc
    cmp r7, #6
    bne .Lsec01_00001710
.Lsec01_000016fc:
    cmp r8, #7
    bgt .Lsec01_00001710
.Lsec01_00001704:
    mov r0, r5
    ldr r1, [pc, #244]
.Lsec01_0000170c:
    bl png_error
.Lsec01_00001710:
    ldr r3, [sp, #48]
    cmp r3, #1
    movgt r0, r5
    ldrgt r1, [pc, #228]
.Lsec01_00001720:
    blgt png_error
    cmp r9, #0
    movne r0, r5
    ldrne r1, [pc, #216]
.Lsec01_00001730:
    blne png_error
    cmp fp, #0
    movne r0, r5
    ldrne r1, [pc, #204]
.Lsec01_00001740:
    blne png_error
    strb r7, [r4, #25]
    strb r8, [r4, #24]
    ldrb r3, [r4, #25]
    strb r9, [r4, #26]
    strb fp, [r4, #27]
    ldr r2, [sp, #48]
    cmp r3, #3
    str sl, [r4, #4]
    strb r2, [r4, #28]
    str r6, [r4]
    beq .Lsec01_0000177c
    tst r3, #2
    movne r3, #3
    bne .Lsec01_00001780
.Lsec01_0000177c:
    mov r3, #1
.Lsec01_00001780:
    strb r3, [r4, #29]
    ldrb r3, [r4, #25]
    tst r3, #4
    ldrneb r3, [r4, #29]
    addne r3, r3, #1
    strneb r3, [r4, #29]
    ldrb r3, [r4, #24]
    ldrb r2, [r4, #29]
    mul r2, r3, r2
    ldr r3, [pc, #72]
    cmp r6, r3
    and r2, r2, #255
    movhi r3, #0
    strb r2, [r4, #30]
    strhi r3, [r4, #12]
    bhi .Lsec01_000017dc
    cmp r2, #7
    mulls r3, r2, r6
    movhi r3, r2, lsr #3
    mulhi r2, r3, r6
    addls r3, r3, #7
    movls r2, r3, lsr #3
    str r2, [r4, #12]
.Lsec01_000017dc:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_000002c8
    .long .Lsec05_000002f0
    .long .Lsec05_00000318
    .long 0x1fffff7e
    .long .Lsec05_00000334
    .long .Lsec05_00000364
    .long .Lsec05_00000380
    .long .Lsec05_0000039c
    .long .Lsec05_000003d0
    .long .Lsec05_000003f4
    .long .Lsec05_00000418
.arm
png_set_PLTE:
    cmp r1, #0
    cmpne r0, #0
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    movne r6, #0
    moveq r6, #1
    mov r8, r3
    mov r7, r2
    mov r3, r6
    mov r2, #4096
    mov r5, r1
    mov r4, r0
    beq .Lsec01_000018ac
.Lsec01_00001844:
    bl png_free_data
    mov r1, #768
    mov r0, r4
.Lsec01_00001850:
    bl png_malloc
    mov r1, r6
    mov r2, #768
    str r0, [r4, #304]
.Lsec01_00001860:
    bl memset
    mov r3, #3
    mul r2, r8, r3
    mov r1, r7
    ldr r0, [r4, #304]
.Lsec01_00001874:
    bl memcpy
    ldr r0, [r5, #184]
    ldr r1, [r5, #8]
    mov r2, r8, lsl #16
    ldr ip, [r4, #304]
    mov r2, r2, lsr #16
    orr r0, r0, #4096
    orr r1, r1, #8
    mov r3, #308
    strh r2, [r4, r3]
    str r1, [r5, #8]
    str ip, [r5, #16]
    strh r2, [r5, #20]
    str r0, [r5, #184]
.Lsec01_000018ac:
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "Palette size 0, hIST allocation skipped."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000002c:
    .asciz "Insufficient memory for hIST chunk data."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000058:
    .asciz "Setting negative gamma to zero"
    .asciz ""
.Lsec05_00000078:
    .asciz "Setting gamma=0"
.Lsec05_00000088:
    .asciz "Limiting gamma to 21474.83"
    .asciz ""
.Lsec05_000000a4:
    .asciz "Ignoring attempt to set negative chromaticity value"
.Lsec05_000000d8:
    .asciz "Ignoring attempt to set chromaticity value exceeding 21474.83"
    .asciz ""
    .asciz ""
.Lsec05_00000118:
    .asciz "Out of memory while processing unknown chunk."
    .asciz ""
    .asciz ""
.Lsec05_00000148:
    .asciz "Out of memory processing unknown chunk."
.Lsec05_00000170:
    .asciz "iTXt chunk not supported."
    .asciz ""
    .asciz ""
.Lsec05_0000018c:
    .asciz "Insufficient memory for pCAL purpose."
    .asciz ""
    .asciz ""
.Lsec05_000001b4:
    .asciz "Insufficient memory for pCAL units."
.Lsec05_000001d8:
    .asciz "Insufficient memory for pCAL params."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000200:
    .asciz "Insufficient memory for pCAL parameter."
.Lsec05_00000228:
    .asciz "No memory for sPLT palettes."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000248:
    .asciz "Insufficient memory to process iCCP chunk."
    .asciz ""
.Lsec05_00000274:
    .asciz "Insufficient memory to process iCCP profile."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000002a4:
    .asciz "Insufficient memory to store text"
    .asciz ""
    .asciz ""
.Lsec05_000002c8:
    .asciz "Image width or height is zero in IHDR"
    .asciz ""
    .asciz ""
.Lsec05_000002f0:
    .asciz "image size exceeds user limits in IHDR"
    .asciz ""
.Lsec05_00000318:
    .asciz "Invalid image size in IHDR"
    .asciz ""
.Lsec05_00000334:
    .asciz "Width is too large for libpng to process pixels"
.Lsec05_00000364:
    .asciz "Invalid bit depth in IHDR"
    .asciz ""
    .asciz ""
.Lsec05_00000380:
    .asciz "Invalid color type in IHDR"
    .asciz ""
.Lsec05_0000039c:
    .asciz "Invalid color type/bit depth combination in IHDR"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000003d0:
    .asciz "Unknown interlace method in IHDR"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_000003f4:
    .asciz "Unknown compression method in IHDR"
    .asciz ""
.Lsec05_00000418:
    .asciz "Unknown filter method in IHDR"
    .asciz ""
    .asciz ""

.size png_set_oFFs, 48
.size png_set_sCAL, 72
.size png_set_pHYs, 48
.size png_set_sRGB, 28
.size png_set_unknown_chunk_location, 56
.size png_permit_empty_plte, 28
.size png_set_read_user_chunk_fn, 12
.size png_set_invalid, 24
.size png_set_asm_flags, 4
.size png_set_mmx_thresholds, 12
.size png_set_user_limits, 12
.size png_set_compression_buffer_size, 76
.size png_set_rows, 92
.size png_set_keep_unknown_chunks, 228
.size png_set_tRNS, 168
.size png_set_tIME, 72
.size png_set_sBIT, 56
.size png_set_bKGD, 56
.size png_set_hIST, 196
.size png_set_gAMA_fixed, 172
.size png_set_gAMA, 256
.size png_set_cHRM_fixed, 736
.size png_set_cHRM, 1024
.size png_set_sRGB_gAMA_and_cHRM, 344
.size png_set_unknown_chunks, 292
.size png_set_text_2, 524
.size png_set_pCAL, 400
.size png_set_sPLT, 276
.size png_set_iCCP, 248
.size png_set_text, 40
.size png_set_IHDR, 564
.size png_set_PLTE, 160

.section .note.GNU-stack,"",%progbits
