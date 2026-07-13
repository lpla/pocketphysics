/* Reconstructed mnemonic source for uncompr.o. */
.syntax unified
.arch armv5te

.global uncompress
.type uncompress, %function

.section .text,"ax",%progbits
.balign 4
.arm
uncompress:
    stmdb sp!, {r4, r5, r6, lr}
    ldr lr, [r1]
    sub sp, sp, #56
    mov ip, #0
    str r2, [sp]
    str r0, [sp, #12]
    mov r6, r1
    mov r2, #56
    ldr r1, [pc, #136]
    mov r0, sp
    str r3, [sp, #4]
    str lr, [sp, #16]
    str ip, [sp, #36]
    str ip, [sp, #32]
.Lsec01_00000038:
    bl inflateInit_
    subs r4, r0, #0
    mov r5, sp
    mov r1, #4
    mov r0, sp
    bne .Lsec01_000000a0
.Lsec01_00000050:
    bl inflate
    mov r4, r0
    cmp r4, #1
    mov r0, sp
    beq .Lsec01_00000088
.Lsec01_00000064:
    bl inflateEnd
    cmp r4, #2
    beq .Lsec01_0000009c
    cmn r4, #5
    bne .Lsec01_000000a0
    ldr r3, [sp, #4]
    cmp r3, #0
    bne .Lsec01_000000a0
    b .Lsec01_0000009c
.Lsec01_00000088:
    ldr r3, [sp, #20]
    str r3, [r6]
.Lsec01_00000090:
    bl inflateEnd
    mov r4, r0
    b .Lsec01_000000a0
.Lsec01_0000009c:
    mvn r4, #2
.Lsec01_000000a0:
    mov r0, r4
    add sp, sp, #56
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_00000000

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

.size uncompress, 180

.section .note.GNU-stack,"",%progbits
