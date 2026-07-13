/* Reconstructed mnemonic source for compress.o. */
.syntax unified
.arch armv5te

.global compressBound
.type compressBound, %function
.global compress2
.type compress2, %function
.global compress
.type compress, %function

.section .text,"ax",%progbits
.balign 4
.arm
compressBound:
    mov r3, r0
    add r0, r0, r0, lsr #12
    add r0, r0, #11
    add r0, r0, r3, lsr #14
    bx lr
compress2:
    stmdb sp!, {r4, r5, r6, lr}
    ldr lr, [r1]
    sub sp, sp, #56
    mov ip, #0
    stmia sp, {r2, r3}
    str r0, [sp, #12]
    mov r6, r1
    ldr r2, [pc, #120]
    ldr r1, [sp, #72]
    mov r3, #56
    mov r0, sp
    str lr, [sp, #16]
    str ip, [sp, #40]
    str ip, [sp, #32]
    str ip, [sp, #36]
.Lsec01_00000050:
    bl deflateInit_
    subs r4, r0, #0
    mov r5, sp
    mov r1, #4
    mov r0, sp
    bne .Lsec01_000000a0
.Lsec01_00000068:
    bl deflate
    mov r4, r0
    cmp r4, #1
    mov r0, sp
    beq .Lsec01_0000008c
.Lsec01_0000007c:
    bl deflateEnd
    cmp r4, #0
    mvneq r4, #4
    b .Lsec01_000000a0
.Lsec01_0000008c:
    ldr r3, [sp, #20]
    mov r0, sp
    str r3, [r6]
.Lsec01_00000098:
    bl deflateEnd
    mov r4, r0
.Lsec01_000000a0:
    mov r0, r4
    add sp, sp, #56
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_00000000
.arm
compress:
    str lr, [sp, #-4]!
    mvn ip, #0
    sub sp, sp, #12
    str ip, [sp]
.Lsec01_000000c4:
    bl compress2
    add sp, sp, #12
    ldr lr, [sp], #4
    bx lr

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "1.2.3"
    .asciz ""
    .asciz ""

.size compressBound, 20
.size compress2, 160
.size compress, 32

.section .note.GNU-stack,"",%progbits
