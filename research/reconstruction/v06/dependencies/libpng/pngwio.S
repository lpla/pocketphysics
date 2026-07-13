/* Reconstructed mnemonic source for pngwio.o. */
.syntax unified
.arch armv5te

.global png_flush
.type png_flush, %function
.global png_set_write_fn
.type png_set_write_fn, %function
.global png_default_write_data
.type png_default_write_data, %function
.global png_default_flush
.type png_default_flush, %function
.global png_write_data
.type png_write_data, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_flush:
    str lr, [sp, #-4]!
    ldr r3, [r0, #360]
    cmp r3, #0
    sub sp, sp, #4
    movne lr, pc
    bxne r3
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_set_write_fn:
    cmp r2, #0
    str r1, [r0, #112]
    mov r1, r3
    ldreq r3, [pc, #76]
    strne r2, [r0, #104]
    streq r3, [r0, #104]
    cmp r1, #0
    ldreq r3, [pc, #64]
    stmdb sp!, {r4, lr}
    mov r4, r0
    streq r3, [r0, #360]
    ldr r3, [r4, #108]
    strne r1, [r0, #360]
    cmp r3, #0
    ldr r1, [pc, #40]
    beq .Lsec01_0000007c
    mov r3, #0
    str r3, [r4, #108]
.Lsec01_0000006c:
    bl png_warning
    mov r0, r4
    ldr r1, [pc, #20]
.Lsec01_00000078:
    bl png_warning
.Lsec01_0000007c:
    ldmia sp!, {r4, lr}
    bx lr
    .long png_default_write_data
    .long png_default_flush
    .long .Lsec05_00000000
    .long .Lsec05_00000038
.arm
png_default_flush:
    str lr, [sp, #-4]!
    ldr r3, [r0, #112]
    subs r0, r3, #0
    sub sp, sp, #4
.Lsec01_000000a4:
    blne fflush
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_default_write_data:
    stmdb sp!, {r4, r5, lr}
    mov r5, r0
    sub sp, sp, #4
    mov r0, r1
    ldr r3, [r5, #112]
    mov r1, #1
    mov r4, r2
.Lsec01_000000d0:
    bl fwrite
    cmp r0, r4
    ldr r1, [pc, #16]
    mov r0, r5
.Lsec01_000000e0:
    blne png_error
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_00000070
.arm
png_write_data:
    str lr, [sp, #-4]!
    ldr r3, [r0, #104]
    cmp r3, #0
    sub sp, sp, #4
    beq .Lsec01_00000114
    mov lr, pc
    bx r3
    b .Lsec01_0000011c
.Lsec01_00000114:
    ldr r1, [pc, #12]
.Lsec01_00000118:
    bl png_error
.Lsec01_0000011c:
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
    .long .Lsec05_0000007c

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "Attempted to set both read_data_fn and write_data_fn in"
.Lsec05_00000038:
    .asciz "the same structure.  Resetting read_data_fn to NULL."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000070:
    .asciz "Write Error"
.Lsec05_0000007c:
    .asciz "Call to NULL write function"

.size png_flush, 36
.size png_set_write_fn, 112
.size png_default_write_data, 64
.size png_default_flush, 32
.size png_write_data, 56

.section .note.GNU-stack,"",%progbits
