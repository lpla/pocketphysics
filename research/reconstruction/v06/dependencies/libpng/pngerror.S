/* Reconstructed mnemonic source for pngerror.o. */
.syntax unified
.arch armv5te

.type png_format_buffer, %function
.type png_digit, %object
.global png_set_error_fn
.type png_set_error_fn, %function
.global png_get_error_ptr
.type png_get_error_ptr, %function
.global png_set_strip_error_numbers
.type png_set_strip_error_numbers, %function
.global png_warning
.type png_warning, %function
.global png_chunk_warning
.type png_chunk_warning, %function
.global png_error
.type png_error, %function
.global png_chunk_error
.type png_chunk_error, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_set_error_fn:
    str r3, [r0, #96]
    str r1, [r0, #100]
    str r2, [r0, #92]
    bx lr
png_get_error_ptr:
    ldr r0, [r0, #100]
    bx lr
png_set_strip_error_numbers:
    cmp r0, #0
    ldrne r3, [r0, #136]
    bicne r3, r3, #786432
    andne r3, r1, r3
    strne r3, [r0, #136]
    bx lr
png_format_buffer:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    mov r5, #0
    mov lr, r1
    mov r8, r2
    mov r7, r0
    mov sl, r5
.Lsec01_00000048:
    ldrb r4, [r7, #312]
    sub r3, r4, #91
    cmp r3, #5
    movhi r3, #0
    movls r3, #1
    sub r2, r4, #65
    add ip, r5, #1
    cmp r2, #57
    orrhi r3, r3, #1
    cmp r3, #0
    add r6, ip, #1
    streqb r4, [lr, r5]
    ldr r9, [pc, #136]
    and r1, r4, #15
    add sl, sl, #1
    add r0, r6, #1
    moveq r5, ip
    beq .Lsec01_000000b4
    mov r3, #91
    ldrb r1, [r9, r1]
    ldrb r2, [r9, r4, lsr #4]
    strb r3, [lr, r5]
    add r3, r3, #2
    strb r2, [lr, ip]
    strb r1, [lr, r6]
    strb r3, [lr, r0]
    add r5, r0, #1
.Lsec01_000000b4:
    cmp sl, #4
    add r7, r7, #1
    bne .Lsec01_00000048
    cmp r8, #0
    streqb r8, [lr, r5]
    beq .Lsec01_00000100
    add r2, r5, #1
    add r4, r2, #1
    mov r3, #58
    add r4, lr, r4
    strb r3, [lr, r5]
    mov r3, #32
    strb r3, [lr, r2]
    mov r1, r8
    mov r0, r4
    mov r2, #63
.Lsec01_000000f4:
    bl strncpy
    mov r3, #0
    strb r3, [r4, #63]
.Lsec01_00000100:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    bx lr
    .long .Lsec06_00000000
.arm
png_warning:
    str lr, [sp, #-4]!
    ldr r3, [r0, #136]
    tst r3, #786432
    sub sp, sp, #20
    mov ip, r1
    beq .Lsec01_00000150
    ldrb r3, [r1]
    cmp r3, #35
    bne .Lsec01_00000150
    mov r1, #1
.Lsec01_00000134:
    ldrb r3, [r1, ip]
    cmp r3, #32
    beq .Lsec01_00000154
    add r1, r1, #1
    cmp r1, #15
    beq .Lsec01_00000154
    b .Lsec01_00000134
.Lsec01_00000150:
    mov r1, #0
.Lsec01_00000154:
    ldr r2, [r0, #96]
    cmp r2, #0
    add lr, ip, r1
    beq .Lsec01_00000174
    mov r1, lr
    mov lr, pc
    bx r2
    b .Lsec01_0000020c
.Lsec01_00000174:
    ldrb r3, [ip, r1]
    cmp r3, #35
    bne .Lsec01_000001f4
    mov r0, r2
    mvn r1, #1
    mov r2, #1
.Lsec01_0000018c:
    ldrb r3, [r2, lr]
    strb r3, [r0, sp]
    ldrb r3, [r0, lr]
    cmp r3, #32
    bne .Lsec01_000001ac
    cmp r1, #12
    bls .Lsec01_000001c4
    b .Lsec01_000001f4
.Lsec01_000001ac:
    add r0, r0, #1
    cmp r0, #15
    add r1, r1, #1
    add r2, r2, #1
    beq .Lsec01_000001f4
    b .Lsec01_0000018c
.Lsec01_000001c4:
    add r3, sp, #16
    add r2, r3, r0
    mov r3, #0
    strb r3, [r2, #-17]
    ldr r3, [pc, #60]
    ldr r2, [r3]
    ldr r1, [pc, #56]
    add r3, lr, r0
    ldr r0, [r2, #12]
    mov r2, sp
.Lsec01_000001ec:
    bl fprintf
    b .Lsec01_0000020c
.Lsec01_000001f4:
    ldr r3, [pc, #28]
    ldr r3, [r3]
    mov r2, lr
    ldr r0, [r3, #12]
    ldr r1, [pc, #20]
.Lsec01_00000208:
    bl fprintf
.Lsec01_0000020c:
    add sp, sp, #20
    ldr lr, [sp], #4
    bx lr
    .long _impure_ptr
    .long .Lsec05_00000000
    .long .Lsec05_0000001c
.arm
png_chunk_warning:
    stmdb sp!, {r4, r5, lr}
    sub sp, sp, #92
    add r5, sp, #6
    mov r2, r1
    mov r4, r0
    mov r1, r5
    bl png_format_buffer
    mov r0, r4
    mov r1, r5
.Lsec01_00000248:
    bl png_warning
    add sp, sp, #92
    ldmia sp!, {r4, r5, lr}
    bx lr
png_error:
    stmdb sp!, {r4, r5, lr}
    ldr r2, [r0, #136]
    tst r2, #786432
    sub sp, sp, #36
    mov r5, r0
    mov r4, r1
    beq .Lsec01_00000308
    ldrb r3, [r1]
    cmp r3, #35
    bne .Lsec01_000002f0
    mov r0, #1
.Lsec01_00000284:
    ldrb r3, [r0, r4]
    cmp r3, #32
    beq .Lsec01_0000029c
    add r0, r0, #1
    cmp r0, #15
    bne .Lsec01_00000284
.Lsec01_0000029c:
    tst r2, #524288
    movne r2, #0
    movne r1, r2
    bne .Lsec01_000002bc
    b .Lsec01_000002e8
.Lsec01_000002b0:
    ldrb r3, [r1, r4]
    strb r3, [r2, ip]
    add r2, r2, #1
.Lsec01_000002bc:
    sub r3, r0, #1
    cmp r2, r3
    add r1, r1, #1
    mov ip, sp
    blt .Lsec01_000002b0
    add r3, sp, #32
    add r2, r3, r2
    mov r4, sp
    mov r3, #0
    strb r3, [r2, #-32]
    b .Lsec01_00000308
.Lsec01_000002e8:
    add r4, r4, r0
    b .Lsec01_00000308
.Lsec01_000002f0:
    tst r2, #524288
    movne r3, #48
    strneb r3, [sp]
    movne r3, #0
    strneb r3, [sp, #1]
    movne r4, sp
.Lsec01_00000308:
    ldr r3, [r5, #92]
    cmp r3, #0
    movne r0, r5
    movne r1, r4
    movne lr, pc
    bxne r3
    ldrb r3, [r4]
    cmp r3, #35
    bne .Lsec01_000003c0
    mov r1, #0
    mov r2, #1
    mvn r0, #1
.Lsec01_00000338:
    ldrb r3, [r2, r4]
    add ip, sp, #16
    strb r3, [r1, ip]
    ldrb r3, [r1, r4]
    cmp r3, #32
    bne .Lsec01_0000035c
    cmp r0, #12
    bls .Lsec01_00000374
    b .Lsec01_000003a0
.Lsec01_0000035c:
    add r1, r1, #1
    cmp r1, #15
    add r0, r0, #1
    add r2, r2, #1
    beq .Lsec01_000003a0
    b .Lsec01_00000338
.Lsec01_00000374:
    add r3, sp, #32
    add r2, r3, r1
    mov r3, #0
    strb r3, [r2, #-17]
    ldr r3, [pc, #88]
    ldr r2, [r3]
    add r3, r4, r1
    ldr r0, [r2, #12]
    ldr r1, [pc, #76]
    mov r2, ip
    b .Lsec01_000003b8
.Lsec01_000003a0:
    ldr r3, [pc, #60]
    ldr r3, [r3]
    ldr r0, [r3, #12]
    mov r3, r1
    ldr r1, [pc, #52]
    mov r2, r4
.Lsec01_000003b8:
    bl fprintf
    b .Lsec01_000003d8
.Lsec01_000003c0:
    ldr r3, [pc, #28]
    ldr r3, [r3]
    mov r2, r4
    ldr r0, [r3, #12]
    ldr r1, [pc, #24]
.Lsec01_000003d4:
    bl fprintf
.Lsec01_000003d8:
    mov r0, r5
    mov r1, #1
.Lsec01_000003e0:
    bl longjmp
    .long _impure_ptr
    .long .Lsec05_00000030
    .long .Lsec05_0000004c
    .long .Lsec05_0000006c
.arm
png_chunk_error:
    stmdb sp!, {r4, r5, lr}
    sub sp, sp, #92
    add r5, sp, #6
    mov r2, r1
    mov r4, r0
    mov r1, r5
    bl png_format_buffer
    mov r0, r4
    mov r1, r5
.Lsec01_00000418:
    bl png_error
    add sp, sp, #92
    ldmia sp!, {r4, r5, lr}
    bx lr

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .long 0x7062696c
    .long 0x7720676e
    .long 0x696e7261
    .long 0x6e20676e
    .long 0x25202e6f
    .long 0x25203a73
    .long 0x00000a73
.Lsec05_0000001c:
    .long 0x7062696c
    .long 0x7720676e
    .long 0x696e7261
    .long 0x203a676e
    .long 0x000a7325
.Lsec05_00000030:
    .long 0x7062696c
    .long 0x6520676e
    .long 0x726f7272
    .long 0x2e6f6e20
    .long 0x3a732520
    .long 0x0a732520
    .asciz ""
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000004c:
    .long 0x7062696c
    .long 0x6520676e
    .long 0x726f7272
    .long 0x7325203a
    .long 0x666f202c
    .long 0x74657366
    .long 0x0a64253d
    .asciz ""
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000006c:
    .long 0x7062696c
    .long 0x6520676e
    .long 0x726f7272
    .long 0x7325203a
    .long 0x0000000a

.section .rodata,"a",%progbits
.balign 1
png_digit:
.Lsec06_00000000:
    .long 0x33323130
    .long 0x37363534
    .long 0x42413938
    .long 0x46454443

.size png_format_buffer, 220
.size png_digit, 16
.size png_set_error_fn, 16
.size png_get_error_ptr, 8
.size png_set_strip_error_numbers, 24
.size png_warning, 280
.size png_chunk_warning, 52
.size png_error, 412
.size png_chunk_error, 52

.section .note.GNU-stack,"",%progbits
