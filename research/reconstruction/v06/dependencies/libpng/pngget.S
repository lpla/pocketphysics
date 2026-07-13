/* Reconstructed mnemonic source for pngget.o. */
.syntax unified
.arch armv5te

.global png_get_valid
.type png_get_valid, %function
.global png_get_rowbytes
.type png_get_rowbytes, %function
.global png_get_rows
.type png_get_rows, %function
.global png_get_image_width
.type png_get_image_width, %function
.global png_get_image_height
.type png_get_image_height, %function
.global png_get_bit_depth
.type png_get_bit_depth, %function
.global png_get_color_type
.type png_get_color_type, %function
.global png_get_filter_type
.type png_get_filter_type, %function
.global png_get_interlace_type
.type png_get_interlace_type, %function
.global png_get_compression_type
.type png_get_compression_type, %function
.global png_get_x_pixels_per_meter
.type png_get_x_pixels_per_meter, %function
.global png_get_y_pixels_per_meter
.type png_get_y_pixels_per_meter, %function
.global png_get_pixels_per_meter
.type png_get_pixels_per_meter, %function
.global png_get_pixel_aspect_ratio
.type png_get_pixel_aspect_ratio, %function
.global png_get_x_offset_microns
.type png_get_x_offset_microns, %function
.global png_get_y_offset_microns
.type png_get_y_offset_microns, %function
.global png_get_x_offset_pixels
.type png_get_x_offset_pixels, %function
.global png_get_y_offset_pixels
.type png_get_y_offset_pixels, %function
.global png_get_channels
.type png_get_channels, %function
.global png_get_signature
.type png_get_signature, %function
.global png_get_bKGD
.type png_get_bKGD, %function
.global png_get_cHRM
.type png_get_cHRM, %function
.global png_get_cHRM_fixed
.type png_get_cHRM_fixed, %function
.global png_get_gAMA
.type png_get_gAMA, %function
.global png_get_gAMA_fixed
.type png_get_gAMA_fixed, %function
.global png_get_sRGB
.type png_get_sRGB, %function
.global png_get_iCCP
.type png_get_iCCP, %function
.global png_get_sPLT
.type png_get_sPLT, %function
.global png_get_hIST
.type png_get_hIST, %function
.global png_get_oFFs
.type png_get_oFFs, %function
.global png_get_pCAL
.type png_get_pCAL, %function
.global png_get_sCAL
.type png_get_sCAL, %function
.global png_get_pHYs
.type png_get_pHYs, %function
.global png_get_PLTE
.type png_get_PLTE, %function
.global png_get_sBIT
.type png_get_sBIT, %function
.global png_get_text
.type png_get_text, %function
.global png_get_tIME
.type png_get_tIME, %function
.global png_get_tRNS
.type png_get_tRNS, %function
.global png_get_unknown_chunks
.type png_get_unknown_chunks, %function
.global png_get_rgb_to_gray_status
.type png_get_rgb_to_gray_status, %function
.global png_get_user_chunk_ptr
.type png_get_user_chunk_ptr, %function
.global png_get_compression_buffer_size
.type png_get_compression_buffer_size, %function
.global png_get_asm_flags
.type png_get_asm_flags, %function
.global png_get_asm_flagmask
.type png_get_asm_flagmask, %function
.global png_get_mmx_flagmask
.type png_get_mmx_flagmask, %function
.global png_get_mmx_bitdepth_threshold
.type png_get_mmx_bitdepth_threshold, %function
.global png_get_mmx_rowbytes_threshold
.type png_get_mmx_rowbytes_threshold, %function
.global png_get_user_width_max
.type png_get_user_width_max, %function
.global png_get_user_height_max
.type png_get_user_height_max, %function
.global png_get_IHDR
.type png_get_IHDR, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_get_valid:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    ldrne r3, [r1, #8]
    andne r0, r2, r3
    bx lr
png_get_rowbytes:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    ldrne r0, [r1, #12]
    bx lr
png_get_rows:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    ldrne r0, [r1, #248]
    bx lr
png_get_image_width:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    ldrne r0, [r1]
    bx lr
png_get_image_height:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    ldrne r0, [r1, #4]
    bx lr
png_get_bit_depth:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    ldrneb r0, [r1, #24]
    bx lr
png_get_color_type:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    ldrneb r0, [r1, #25]
    bx lr
png_get_filter_type:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    ldrneb r0, [r1, #27]
    bx lr
png_get_interlace_type:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    ldrneb r0, [r1, #28]
    bx lr
png_get_compression_type:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    ldrneb r0, [r1, #26]
    bx lr
png_get_x_pixels_per_meter:
    cmp r0, #0
    cmpne r1, #0
    beq .Lsec01_00000144
    ldr r3, [r1, #8]
    tst r3, #128
    beq .Lsec01_00000144
    ldrb r3, [r1, #120]
    cmp r3, #1
    ldreq r0, [r1, #112]
    bxeq lr
.Lsec01_00000144:
    mov r0, #0
    bx lr
png_get_y_pixels_per_meter:
    cmp r0, #0
    cmpne r1, #0
    beq .Lsec01_00000174
    ldr r3, [r1, #8]
    tst r3, #128
    beq .Lsec01_00000174
    ldrb r3, [r1, #120]
    cmp r3, #1
    ldreq r0, [r1, #116]
    bxeq lr
.Lsec01_00000174:
    mov r0, #0
    bx lr
png_get_pixels_per_meter:
    cmp r0, #0
    cmpne r1, #0
    beq .Lsec01_000001b0
    ldr r3, [r1, #8]
    tst r3, #128
    beq .Lsec01_000001b0
    ldrb r3, [r1, #120]
    cmp r3, #1
    bne .Lsec01_000001b0
    add r0, r1, #112
    ldmia r0, {r0, r3}
    cmp r0, r3
    bxeq lr
.Lsec01_000001b0:
    mov r0, #0
    bx lr
png_get_pixel_aspect_ratio:
    stmdb sp!, {r4, r5, lr}
    cmp r0, #0
    cmpne r1, #0
    sub sp, sp, #4
    beq .Lsec01_0000024c
    ldr r3, [r1, #8]
    tst r3, #128
    beq .Lsec01_0000024c
    ldr r4, [r1, #112]
    cmp r4, #0
    beq .Lsec01_0000024c
    ldr r1, [r1, #116]
    cmp r1, #0
    blt .Lsec01_000001fc
    mov r0, r1
.Lsec01_000001f4:
    bl __aeabi_i2f
    b .Lsec01_00000210
.Lsec01_000001fc:
    and r0, r1, #1
    orr r0, r0, r1, lsr #1
.Lsec01_00000204:
    bl __aeabi_i2f
    mov r1, r0
.Lsec01_0000020c:
    bl __aeabi_fadd
.Lsec01_00000210:
    cmp r4, #0
    mov r5, r0
    blt .Lsec01_00000228
    mov r0, r4
.Lsec01_00000220:
    bl __aeabi_i2f
    b .Lsec01_0000023c
.Lsec01_00000228:
    and r0, r4, #1
    orr r0, r0, r4, lsr #1
.Lsec01_00000230:
    bl __aeabi_i2f
    mov r1, r0
.Lsec01_00000238:
    bl __aeabi_fadd
.Lsec01_0000023c:
    mov r1, r0
    mov r0, r5
.Lsec01_00000244:
    bl __aeabi_fdiv
    b .Lsec01_00000250
.Lsec01_0000024c:
    mov r0, #0
.Lsec01_00000250:
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
png_get_x_offset_microns:
    cmp r0, #0
    cmpne r1, #0
    beq .Lsec01_00000284
    ldr r3, [r1, #8]
    tst r3, #256
    beq .Lsec01_00000284
    ldrb r3, [r1, #108]
    cmp r3, #1
    ldreq r0, [r1, #100]
    bxeq lr
.Lsec01_00000284:
    mov r0, #0
    bx lr
png_get_y_offset_microns:
    cmp r0, #0
    cmpne r1, #0
    beq .Lsec01_000002b4
    ldr r3, [r1, #8]
    tst r3, #256
    beq .Lsec01_000002b4
    ldrb r3, [r1, #108]
    cmp r3, #1
    ldreq r0, [r1, #104]
    bxeq lr
.Lsec01_000002b4:
    mov r0, #0
    bx lr
png_get_x_offset_pixels:
    cmp r0, #0
    cmpne r1, #0
    beq .Lsec01_000002e4
    ldr r3, [r1, #8]
    tst r3, #256
    beq .Lsec01_000002e4
    ldrb r3, [r1, #108]
    cmp r3, #0
    ldreq r0, [r1, #100]
    bxeq lr
.Lsec01_000002e4:
    mov r0, #0
    bx lr
png_get_y_offset_pixels:
    cmp r0, #0
    cmpne r1, #0
    beq .Lsec01_00000314
    ldr r3, [r1, #8]
    tst r3, #256
    beq .Lsec01_00000314
    ldrb r3, [r1, #108]
    cmp r3, #0
    ldreq r0, [r1, #104]
    bxeq lr
.Lsec01_00000314:
    mov r0, #0
    bx lr
png_get_channels:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    ldrneb r0, [r1, #29]
    bx lr
png_get_signature:
    cmp r0, #0
    cmpne r1, #0
    moveq r3, #0
    movne r3, #1
    mov r0, r3
    addne r0, r1, #32
    bx lr
png_get_bKGD:
    cmp r0, #0
    cmpne r1, #0
    mov ip, r2
    beq .Lsec01_00000384
    ldr r2, [r1, #8]
    subs r3, ip, #0
    movne r3, #1
    ands r2, r3, r2, lsr #5
    add r1, r1, #90
    mov r0, #32
    strne r1, [ip]
    bxne lr
.Lsec01_00000384:
    mov r0, #0
    bx lr
png_get_cHRM:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r0, #0
    cmpne r1, #0
    sub sp, sp, #4
    mov r4, r1
    mov r5, r2
    mov r6, r3
    add r7, sp, #40
    ldmia r7, {r7, r8, sl}
    add r9, sp, #52
    ldmia r9, {r9, fp}
    beq .Lsec01_0000047c
    ldr r3, [r1, #8]
    tst r3, #4
    beq .Lsec01_0000047c
    cmp r2, #0
    beq .Lsec01_000003dc
    ldr r0, [r1, #128]
.Lsec01_000003d4:
    bl __aeabi_f2d
    stmia r5, {r0, r1}
.Lsec01_000003dc:
    cmp r6, #0
    beq .Lsec01_000003f0
    ldr r0, [r4, #132]
.Lsec01_000003e8:
    bl __aeabi_f2d
    stmia r6, {r0, r1}
.Lsec01_000003f0:
    cmp r7, #0
    beq .Lsec01_00000404
    ldr r0, [r4, #136]
.Lsec01_000003fc:
    bl __aeabi_f2d
    stmia r7, {r0, r1}
.Lsec01_00000404:
    cmp r8, #0
    beq .Lsec01_00000418
    ldr r0, [r4, #140]
.Lsec01_00000410:
    bl __aeabi_f2d
    stmia r8, {r0, r1}
.Lsec01_00000418:
    cmp sl, #0
    beq .Lsec01_0000042c
    ldr r0, [r4, #144]
.Lsec01_00000424:
    bl __aeabi_f2d
    stmia sl, {r0, r1}
.Lsec01_0000042c:
    cmp r9, #0
    beq .Lsec01_00000440
    ldr r0, [r4, #148]
.Lsec01_00000438:
    bl __aeabi_f2d
    stmia r9, {r0, r1}
.Lsec01_00000440:
    cmp fp, #0
    beq .Lsec01_00000454
    ldr r0, [r4, #152]
.Lsec01_0000044c:
    bl __aeabi_f2d
    stmia fp, {r0, r1}
.Lsec01_00000454:
    ldr r2, [sp, #60]
    cmp r2, #0
    moveq r3, #4
    beq .Lsec01_00000480
    ldr r0, [r4, #156]
.Lsec01_00000468:
    bl __aeabi_f2d
    ldr r2, [sp, #60]
    mov r3, #4
    stmia r2, {r0, r1}
    b .Lsec01_00000480
.Lsec01_0000047c:
    mov r3, #0
.Lsec01_00000480:
    mov r0, r3
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
png_get_cHRM_fixed:
    stmdb sp!, {r4, r5, r6, r7, lr}
    cmp r0, #0
    cmpne r1, #0
    ldr ip, [sp, #20]
    mov r0, r3
    ldr lr, [sp, #24]
    add r4, sp, #28
    ldmia r4, {r4, r5, r6, r7}
    beq .Lsec01_0000052c
    ldr r3, [r1, #8]
    tst r3, #4
    beq .Lsec01_0000052c
    cmp r2, #0
    ldrne r3, [r1, #256]
    strne r3, [r2]
    cmp r0, #0
    ldrne r3, [r1, #260]
    strne r3, [r0]
    cmp ip, #0
    ldrne r3, [r1, #264]
    strne r3, [ip]
    cmp lr, #0
    ldrne r3, [r1, #268]
    strne r3, [lr]
    cmp r4, #0
    ldrne r3, [r1, #272]
    strne r3, [r4]
    cmp r5, #0
    ldrne r3, [r1, #276]
    strne r3, [r5]
    cmp r6, #0
    ldrne r3, [r1, #280]
    strne r3, [r6]
    cmp r7, #0
    ldrne r3, [r1, #284]
    moveq r0, #4
    movne r0, #4
    strne r3, [r7]
    b .Lsec01_00000530
.Lsec01_0000052c:
    mov r0, #0
.Lsec01_00000530:
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
png_get_gAMA:
    cmp r0, #0
    cmpne r1, #0
    stmdb sp!, {r4, lr}
    mov r4, r2
    beq .Lsec01_00000574
    ldr r3, [r1, #8]
    tst r3, #1
    beq .Lsec01_00000574
    cmp r2, #0
    beq .Lsec01_00000574
    ldr r0, [r1, #40]
.Lsec01_00000564:
    bl __aeabi_f2d
    mov r3, #1
    stmia r4, {r0, r1}
    b .Lsec01_00000578
.Lsec01_00000574:
    mov r3, #0
.Lsec01_00000578:
    mov r0, r3
    ldmia sp!, {r4, lr}
    bx lr
png_get_gAMA_fixed:
    cmp r0, #0
    cmpne r1, #0
    beq .Lsec01_000005b0
    ldr r3, [r1, #8]
    tst r3, #1
    beq .Lsec01_000005b0
    cmp r2, #0
    ldrne r3, [r1, #252]
    mov r0, #1
    strne r3, [r2]
    bxne lr
.Lsec01_000005b0:
    mov r0, #0
    bx lr
png_get_sRGB:
    cmp r0, #0
    cmpne r1, #0
    mov ip, r2
    beq .Lsec01_000005e8
    ldr r2, [r1, #8]
    subs r3, ip, #0
    movne r3, #1
    ands r2, r3, r2, lsr #11
    ldrneb r3, [r1, #44]
    mov r0, #2048
    strne r3, [ip]
    bxne lr
.Lsec01_000005e8:
    mov r0, #0
    bx lr
png_get_iCCP:
    stmdb sp!, {r4, r5, lr}
    cmp r0, #0
    cmpne r1, #0
    mov ip, r2
    mov r4, r3
    add r5, sp, #12
    ldmia r5, {r5, lr}
    beq .Lsec01_00000658
    ldr r2, [r1, #8]
    subs r3, ip, #0
    movne r3, #1
    ands r2, r3, r2, lsr #12
    beq .Lsec01_00000658
    cmp r5, #0
    cmpne lr, #0
    mov r0, #4096
    beq .Lsec01_00000658
    ldr r3, [r1, #196]
    str r3, [ip]
    ldr r2, [r1, #204]
    ldr r3, [r1, #200]
    str r2, [lr]
    str r3, [r5]
    ldrb r3, [r1, #208]
    str r3, [r4]
    b .Lsec01_0000065c
.Lsec01_00000658:
    mov r0, #0
.Lsec01_0000065c:
    ldmia sp!, {r4, r5, lr}
    bx lr
png_get_sPLT:
    cmp r0, #0
    cmpne r1, #0
    beq .Lsec01_0000067c
    cmp r2, #0
    ldrne r3, [r1, #212]
    strne r3, [r2]
.Lsec01_0000067c:
    ldr r0, [r1, #216]
    bx lr
png_get_hIST:
    cmp r0, #0
    cmpne r1, #0
    mov ip, r2
    beq .Lsec01_000006b4
    ldr r2, [r1, #8]
    subs r3, ip, #0
    movne r3, #1
    ands r2, r3, r2, lsr #6
    ldrne r3, [r1, #124]
    mov r0, #64
    strne r3, [ip]
    bxne lr
.Lsec01_000006b4:
    mov r0, #0
    bx lr
png_get_oFFs:
    stmdb sp!, {r4, lr}
    cmp r0, #0
    cmpne r1, #0
    mov ip, r2
    mov lr, r3
    ldr r4, [sp, #8]
    beq .Lsec01_00000718
    ldr r2, [r1, #8]
    subs r3, ip, #0
    movne r3, #1
    ands r2, r3, r2, lsr #8
    beq .Lsec01_00000718
    cmp lr, #0
    cmpne r4, #0
    mov r0, #256
    beq .Lsec01_00000718
    ldr r3, [r1, #100]
    str r3, [ip]
    ldr r3, [r1, #104]
    str r3, [lr]
    ldrb r3, [r1, #108]
    str r3, [r4]
    b .Lsec01_0000071c
.Lsec01_00000718:
    mov r0, #0
.Lsec01_0000071c:
    ldmia sp!, {r4, lr}
    bx lr
png_get_pCAL:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    cmp r0, #0
    cmpne r1, #0
    mov ip, r1
    mov r0, r2
    mov lr, r3
    add r5, sp, #28
    ldmia r5, {r5, r6, sl}
    add r7, sp, #40
    ldmia r7, {r7, r8}
    beq .Lsec01_000007c8
    ldr r2, [r1, #8]
    subs r3, r0, #0
    movne r3, #1
    ands r2, r3, r2, lsr #10
    beq .Lsec01_000007c8
    cmp lr, #0
    cmpne r5, #0
    beq .Lsec01_000007c8
    cmp r6, #0
    cmpne sl, #0
    beq .Lsec01_000007c8
    cmp r7, #0
    cmpne r8, #0
    mov r4, #1024
    beq .Lsec01_000007c8
    ldr r3, [r1, #164]
    str r3, [lr]
    ldr r2, [r1, #160]
    ldr r3, [ip, #168]
    str r2, [r0]
    str r3, [r5]
    ldrb r3, [ip, #180]
    str r3, [r6]
    ldr r1, [r1, #176]
    ldrb r2, [ip, #181]
    ldr r3, [ip, #172]
    str r2, [sl]
    str r3, [r7]
    str r1, [r8]
    b .Lsec01_000007cc
.Lsec01_000007c8:
    mov r4, #0
.Lsec01_000007cc:
    mov r0, r4
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
png_get_sCAL:
    cmp r0, #0
    cmpne r1, #0
    stmdb sp!, {r4, r5, lr}
    mov ip, r3
    mov lr, r2
    beq .Lsec01_00000828
    ldr r3, [r1, #8]
    tst r3, #16384
    mov r0, #16384
    beq .Lsec01_00000828
    add r3, r1, #224
    ldmia r3, {r3, r4}
    ldrb r2, [r1, #220]
    stmia ip, {r3, r4}
    ldr r3, [sp, #12]
    add r4, r1, #232
    ldmia r4, {r4, r5}
    str r2, [lr]
    stmia r3, {r4, r5}
    b .Lsec01_0000082c
.Lsec01_00000828:
    mov r0, #0
.Lsec01_0000082c:
    ldmia sp!, {r4, r5, lr}
    bx lr
png_get_pHYs:
    cmp r0, #0
    cmpne r1, #0
    mov r0, r2
    ldr ip, [sp]
    mov r2, r3
    beq .Lsec01_0000088c
    ldr r3, [r1, #8]
    tst r3, #128
    beq .Lsec01_0000088c
    cmp r0, #0
    ldrne r3, [r1, #112]
    strne r3, [r0]
    movne r0, #128
    cmp r2, #0
    ldrne r3, [r1, #116]
    strne r3, [r2]
    orrne r0, r0, #128
    cmp ip, #0
    ldrneb r3, [r1, #120]
    orrne r0, r0, #128
    strne r3, [ip]
    bx lr
.Lsec01_0000088c:
    mov r0, #0
    bx lr
png_get_PLTE:
    cmp r0, #0
    cmpne r1, #0
    str lr, [sp, #-4]!
    mov ip, r2
    mov lr, r3
    beq .Lsec01_000008d4
    ldr r2, [r1, #8]
    subs r3, ip, #0
    movne r3, #1
    ands r2, r3, r2, lsr #3
    mov r0, #8
    ldrneh r3, [r1, #20]
    ldrne r2, [r1, #16]
    strne r3, [lr]
    strne r2, [ip]
    bne .Lsec01_000008d8
.Lsec01_000008d4:
    mov r0, #0
.Lsec01_000008d8:
    ldr lr, [sp], #4
    bx lr
png_get_sBIT:
    cmp r0, #0
    cmpne r1, #0
    mov ip, r2
    beq .Lsec01_00000910
    ldr r2, [r1, #8]
    subs r3, ip, #0
    movne r3, #1
    ands r2, r3, r2, lsr #1
    add r1, r1, #68
    mov r0, #2
    strne r1, [ip]
    bxne lr
.Lsec01_00000910:
    mov r0, #0
    bx lr
png_get_text:
    cmp r0, #0
    cmpne r1, #0
    mov r0, r3
    beq .Lsec01_00000954
    ldr r3, [r1, #48]
    cmp r3, #0
    ble .Lsec01_00000954
    cmp r2, #0
    ldrne r3, [r1, #56]
    strne r3, [r2]
    cmp r0, #0
    ldrne r3, [r1, #48]
    strne r3, [r0]
    ldr r0, [r1, #48]
    bx lr
.Lsec01_00000954:
    cmp r0, #0
    movne r3, #0
    strne r3, [r0]
    movne r0, r3
    bx lr
png_get_tIME:
    cmp r0, #0
    cmpne r1, #0
    mov ip, r2
    beq .Lsec01_00000998
    ldr r2, [r1, #8]
    subs r3, ip, #0
    movne r3, #1
    ands r2, r3, r2, lsr #9
    add r1, r1, #60
    mov r0, #512
    strne r1, [ip]
    bxne lr
.Lsec01_00000998:
    mov r0, #0
    bx lr
png_get_tRNS:
    str lr, [sp, #-4]!
    cmp r0, #0
    cmpne r1, #0
    mov lr, r3
    ldr ip, [sp, #4]
    beq .Lsec01_00000a28
    ldr r3, [r1, #8]
    tst r3, #16
    beq .Lsec01_00000a28
    ldrb r3, [r1, #25]
    cmp r3, #3
    bne .Lsec01_000009f4
    cmp r2, #0
    ldrne r3, [r1, #76]
    moveq r0, r2
    strne r3, [r2]
    movne r0, #16
    cmp ip, #0
    addne r3, r1, #80
    strne r3, [ip]
    b .Lsec01_00000a14
.Lsec01_000009f4:
    cmp ip, #0
    addne r3, r1, #80
    strne r3, [ip]
    moveq r0, ip
    movne r0, #16
    cmp r2, #0
    movne r3, #0
    strne r3, [r2]
.Lsec01_00000a14:
    cmp lr, #0
    ldrneh r3, [r1, #22]
    orrne r0, r0, #16
    strne r3, [lr]
    b .Lsec01_00000a2c
.Lsec01_00000a28:
    mov r0, #0
.Lsec01_00000a2c:
    ldr lr, [sp], #4
    bx lr
png_get_unknown_chunks:
    cmp r0, #0
    cmpne r1, #0
    beq .Lsec01_00000a4c
    cmp r2, #0
    ldrne r3, [r1, #188]
    strne r3, [r2]
.Lsec01_00000a4c:
    ldr r0, [r1, #192]
    bx lr
png_get_rgb_to_gray_status:
    cmp r0, #0
    mov r3, r0
    ldrneb r3, [r0, #580]
    mov r0, r3
    bx lr
png_get_user_chunk_ptr:
    cmp r0, #0
    mov r3, r0
    ldrne r3, [r0, #564]
    mov r0, r3
    bx lr
png_get_compression_buffer_size:
    cmp r0, #0
    mov r3, r0
    ldrne r3, [r0, #204]
    mov r0, r3
    bx lr
png_get_asm_flags:
    cmp r0, #0
    mov r3, r0
    ldrne r3, [r0, #604]
    mov r0, r3
    bx lr
png_get_asm_flagmask:
    ands r0, r0, #1
    movne r0, #252
    bx lr
png_get_mmx_flagmask:
    ands r0, r0, #1
    movne r0, #252
    cmp r1, #0
    mvnne r3, #0
    strne r3, [r1]
    bx lr
png_get_mmx_bitdepth_threshold:
    cmp r0, #0
    mov r3, r0
    ldrneb r3, [r0, #596]
    mov r0, r3
    bx lr
png_get_mmx_rowbytes_threshold:
    cmp r0, #0
    mov r3, r0
    ldrne r3, [r0, #600]
    mov r0, r3
    bx lr
png_get_user_width_max:
    cmp r0, #0
    mov r3, r0
    ldrne r3, [r0, #640]
    mov r0, r3
    bx lr
png_get_user_height_max:
    cmp r0, #0
    mov r3, r0
    ldrne r3, [r0, #644]
    mov r0, r3
    bx lr
png_get_IHDR:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    cmp r0, #0
    cmpne r1, #0
    sub sp, sp, #4
    mov r6, r2
    mov r4, r1
    mov r7, r3
    add r2, sp, #40
    ldmia r2, {r2, r8, fp}
    ldr sl, [sp, #52]
    ldr r9, [sp, #56]
    mov r5, r0
    beq .Lsec01_00000c18
    cmp r6, #0
    cmpne r3, #0
    beq .Lsec01_00000c18
    cmp r2, #0
    cmpne r8, #0
    beq .Lsec01_00000c18
    ldr r3, [r1]
    str r3, [r6]
    ldr r3, [r1, #4]
    str r3, [r7]
    ldrb r3, [r1, #24]
    str r3, [r2]
    ldrb r3, [r1, #24]
    sub r3, r3, #1
    cmp r3, #15
    ldrhi r1, [pc, #152]
.Lsec01_00000b8c:
    blhi png_error
    ldrb r3, [r4, #25]
    str r3, [r8]
    ldrb r3, [r4, #25]
    cmp r3, #6
    movhi r0, r5
    ldrhi r1, [pc, #128]
.Lsec01_00000ba8:
    blhi png_error
    cmp sl, #0
    ldrneb r3, [r4, #26]
    strne r3, [sl]
    cmp r9, #0
    ldrneb r3, [r4, #27]
    strne r3, [r9]
    cmp fp, #0
    ldrneb r3, [r4, #28]
    strne r3, [fp]
    ldr r3, [r6]
    cmp r3, #0
    movle r0, r5
    ldrle r1, [pc, #76]
.Lsec01_00000be0:
    blle png_error
    ldr r3, [r7]
    cmp r3, #0
    movle r0, r5
    ldrle r1, [pc, #60]
.Lsec01_00000bf4:
    blle png_error
    ldr r2, [r4]
    ldr r3, [pc, #52]
    cmp r2, r3
    movhi r0, r5
    ldrhi r1, [pc, #44]
.Lsec01_00000c0c:
    blhi png_warning
    mov r0, #1
    b .Lsec01_00000c1c
.Lsec01_00000c18:
    mov r0, #0
.Lsec01_00000c1c:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_00000000
    .long .Lsec05_00000014
    .long .Lsec05_00000028
    .long .Lsec05_0000003c
    .long 0x1fffff7e
    .long .Lsec05_00000054

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "Invalid bit depth"
    .asciz ""
    .asciz ""
.Lsec05_00000014:
    .asciz "Invalid color type"
    .asciz ""
.Lsec05_00000028:
    .asciz "Invalid image width"
.Lsec05_0000003c:
    .asciz "Invalid image height"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000054:
    .asciz "Width too large for libpng to process image data."
    .asciz ""
    .asciz ""

.size png_get_valid, 32
.size png_get_rowbytes, 28
.size png_get_rows, 28
.size png_get_image_width, 28
.size png_get_image_height, 28
.size png_get_bit_depth, 28
.size png_get_color_type, 28
.size png_get_filter_type, 28
.size png_get_interlace_type, 28
.size png_get_compression_type, 28
.size png_get_x_pixels_per_meter, 48
.size png_get_y_pixels_per_meter, 48
.size png_get_pixels_per_meter, 60
.size png_get_pixel_aspect_ratio, 164
.size png_get_x_offset_microns, 48
.size png_get_y_offset_microns, 48
.size png_get_x_offset_pixels, 48
.size png_get_y_offset_pixels, 48
.size png_get_channels, 28
.size png_get_signature, 28
.size png_get_bKGD, 56
.size png_get_cHRM, 260
.size png_get_cHRM_fixed, 168
.size png_get_gAMA, 76
.size png_get_gAMA_fixed, 52
.size png_get_sRGB, 56
.size png_get_iCCP, 116
.size png_get_sPLT, 32
.size png_get_hIST, 56
.size png_get_oFFs, 104
.size png_get_pCAL, 180
.size png_get_sCAL, 92
.size png_get_pHYs, 96
.size png_get_PLTE, 76
.size png_get_sBIT, 56
.size png_get_text, 80
.size png_get_tIME, 56
.size png_get_tRNS, 148
.size png_get_unknown_chunks, 32
.size png_get_rgb_to_gray_status, 20
.size png_get_user_chunk_ptr, 20
.size png_get_compression_buffer_size, 20
.size png_get_asm_flags, 20
.size png_get_asm_flagmask, 12
.size png_get_mmx_flagmask, 24
.size png_get_mmx_bitdepth_threshold, 20
.size png_get_mmx_rowbytes_threshold, 20
.size png_get_user_width_max, 20
.size png_get_user_height_max, 20
.size png_get_IHDR, 296

.section .note.GNU-stack,"",%progbits
