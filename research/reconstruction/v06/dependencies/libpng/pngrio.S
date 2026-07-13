/* Reconstructed mnemonic source for pngrio.o. */
.syntax unified
.arch armv5te

.global png_set_read_fn
.type png_set_read_fn, %function
.global png_default_read_data
.type png_default_read_data, %function
.global png_read_data
.type png_read_data, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_set_read_fn:
    cmp r2, #0
    ldreq r3, [pc, #72]
    streq r3, [r0, #108]
    ldr r3, [r0, #104]
    strne r2, [r0, #108]
    cmp r3, #0
    stmdb sp!, {r4, lr}
    str r1, [r0, #112]
    mov r4, r0
    ldr r1, [pc, #44]
    beq .Lsec01_00000044
    mov r3, #0
    str r3, [r4, #104]
.Lsec01_00000034:
    bl png_warning
    mov r0, r4
    ldr r1, [pc, #24]
.Lsec01_00000040:
    bl png_warning
.Lsec01_00000044:
    mov r3, #0
    str r3, [r4, #360]
    ldmia sp!, {r4, lr}
    bx lr
    .long png_default_read_data
    .long .Lsec05_00000000
    .long .Lsec05_00000044
.arm
png_default_read_data:
    stmdb sp!, {r4, r5, lr}
    mov r5, r0
    sub sp, sp, #4
    mov r0, r1
    ldr r3, [r5, #112]
    mov r1, #1
    mov r4, r2
.Lsec01_0000007c:
    bl fread
    cmp r0, r4
    ldr r1, [pc, #16]
    mov r0, r5
.Lsec01_0000008c:
    blne png_error
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_00000078
.arm
png_read_data:
    str lr, [sp, #-4]!
    ldr r3, [r0, #108]
    cmp r3, #0
    sub sp, sp, #4
    beq .Lsec01_000000c0
    mov lr, pc
    bx r3
    b .Lsec01_000000c8
.Lsec01_000000c0:
    ldr r1, [pc, #12]
.Lsec01_000000c4:
    bl png_error
.Lsec01_000000c8:
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
    .long .Lsec05_00000084

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "It's an error to set both read_data_fn and write_data_fn in the "
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000044:
    .asciz "same structure.  Resetting write_data_fn to NULL."
    .asciz ""
    .asciz ""
.Lsec05_00000078:
    .asciz "Read Error"
    .asciz ""
.Lsec05_00000084:
    .asciz "Call to NULL read function"
    .asciz ""

.size png_set_read_fn, 96
.size png_default_read_data, 64
.size png_read_data, 56

.section .note.GNU-stack,"",%progbits
