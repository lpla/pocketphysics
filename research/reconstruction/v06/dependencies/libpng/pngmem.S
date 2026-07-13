/* Reconstructed mnemonic source for pngmem.o. */
.syntax unified
.arch armv5te

.global png_set_mem_fn
.type png_set_mem_fn, %function
.global png_get_mem_ptr
.type png_get_mem_ptr, %function
.global png_memset_check
.type png_memset_check, %function
.global png_memcpy_check
.type png_memcpy_check, %function
.global png_free_default
.type png_free_default, %function
.global png_free
.type png_free, %function
.global png_destroy_struct_2
.type png_destroy_struct_2, %function
.global png_destroy_struct
.type png_destroy_struct, %function
.global png_malloc_default
.type png_malloc_default, %function
.global png_malloc
.type png_malloc, %function
.global png_malloc_warn
.type png_malloc_warn, %function
.global png_create_struct_2
.type png_create_struct_2, %function
.global png_create_struct
.type png_create_struct, %function

.section .text,"ax",%progbits
.balign 4
.arm
png_set_mem_fn:
    str r3, [r0, #616]
    str r1, [r0, #608]
    str r2, [r0, #612]
    bx lr
png_get_mem_ptr:
    ldr r0, [r0, #608]
    bx lr
png_memset_check:
    str lr, [sp, #-4]!
    mov r0, r1
    sub sp, sp, #4
    mov r1, r2
    mov r2, r3
.Lsec01_0000002c:
    bl memset
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_memcpy_check:
    str lr, [sp, #-4]!
    mov r0, r1
    sub sp, sp, #4
    mov r1, r2
    mov r2, r3
.Lsec01_00000050:
    bl memcpy
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_free_default:
    str lr, [sp, #-4]!
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    mov r0, r1
.Lsec01_00000074:
    blne free
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_free:
    str lr, [sp, #-4]!
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    beq .Lsec01_000000bc
    ldr r3, [r0, #616]
    cmp r3, #0
    beq .Lsec01_000000b0
    mov lr, pc
    bx r3
    b .Lsec01_000000bc
.Lsec01_000000b0:
    add sp, sp, #4
    ldr lr, [sp], #4
.Lsec01_000000b8:
    b png_free_default
.Lsec01_000000bc:
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_destroy_struct_2:
    str lr, [sp, #-4]!
    subs r3, r0, #0
    sub sp, sp, #652
    mov ip, r1
    beq .Lsec01_00000100
    cmp ip, #0
    mov r1, r3
    beq .Lsec01_000000fc
    mov r0, sp
    str r2, [sp, #608]
    mov lr, pc
    bx ip
    b .Lsec01_00000100
.Lsec01_000000fc:
    bl free
.Lsec01_00000100:
    add sp, sp, #652
    ldr lr, [sp], #4
    bx lr
png_destroy_struct:
    mov r1, #0
    mov r2, r1
.Lsec01_00000114:
    b png_destroy_struct_2
png_malloc_default:
    str lr, [sp, #-4]!
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    beq .Lsec01_00000140
    cmp r1, #65536
    mov r0, r1
    bhi .Lsec01_00000140
.Lsec01_00000138:
    bl malloc
    b .Lsec01_00000144
.Lsec01_00000140:
    mov r0, #0
.Lsec01_00000144:
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
png_malloc:
    stmdb sp!, {r4, r5, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #4
    mov r5, #0
    mov r4, r0
    beq .Lsec01_000001a8
    ldr r3, [r0, #612]
    cmp r3, #0
    beq .Lsec01_00000184
    mov lr, pc
    bx r3
    b .Lsec01_00000188
.Lsec01_00000184:
    bl png_malloc_default
.Lsec01_00000188:
    cmp r0, #0
    mov r5, r0
    bne .Lsec01_000001a8
    ldr r3, [r4, #136]
    tst r3, #1048576
    mov r0, r4
    ldr r1, [pc, #16]
.Lsec01_000001a4:
    bleq png_error
.Lsec01_000001a8:
    mov r0, r5
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long .Lsec05_00000000
.arm
png_malloc_warn:
    stmdb sp!, {r4, r5, lr}
    ldr r5, [r0, #136]
    orr r3, r5, #1048576
    sub sp, sp, #4
    str r3, [r0, #136]
    mov r4, r0
.Lsec01_000001d4:
    bl png_malloc
    str r5, [r4, #136]
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
png_create_struct_2:
    stmdb sp!, {r4, r5, r6, lr}
    cmp r0, #2
    sub sp, sp, #648
    mov r4, r1
    moveq r5, #288
    beq .Lsec01_00000210
    cmp r0, #1
    movne r6, #0
    bne .Lsec01_0000025c
    mov r5, #648
.Lsec01_00000210:
    cmp r4, #0
    beq .Lsec01_00000240
    mov r1, r5
    str r2, [sp, #608]
    mov r0, sp
    mov lr, pc
    bx r4
    subs r6, r0, #0
    movne r2, r5
    movne r1, #0
    bne .Lsec01_00000258
    b .Lsec01_0000025c
.Lsec01_00000240:
    mov r0, r5
.Lsec01_00000244:
    bl malloc
    subs r6, r0, #0
    beq .Lsec01_0000025c
    mov r1, r4
    mov r2, r5
.Lsec01_00000258:
    bl memset
.Lsec01_0000025c:
    mov r0, r6
    add sp, sp, #648
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
png_create_struct:
    mov r1, #0
    mov r2, r1
.Lsec01_00000274:
    b png_create_struct_2

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "Out of Memory!"
    .asciz ""

.size png_set_mem_fn, 16
.size png_get_mem_ptr, 8
.size png_memset_check, 36
.size png_memcpy_check, 36
.size png_free_default, 36
.size png_free, 68
.size png_destroy_struct_2, 68
.size png_destroy_struct, 12
.size png_malloc_default, 56
.size png_malloc, 108
.size png_malloc_warn, 44
.size png_create_struct_2, 132
.size png_create_struct, 12

.section .note.GNU-stack,"",%progbits
