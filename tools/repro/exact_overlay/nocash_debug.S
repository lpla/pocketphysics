.syntax unified
.thumb
.section .text.pp_nocash_message,"ax",%progbits
.balign 2
.global pp_nocash_message
.type pp_nocash_message,%function
.thumb_func
pp_nocash_message:
    movs r1, #120
    push {r4}
    adr r4, 1f
    movs r2, #0
0:
    ldrb r3, [r0, r2]
    strb r3, [r4, r2]
    cmp r3, #0
    beq 2f
    adds r2, #1
    cmp r2, r1
    bne 0b
    movs r0, #0
    strb r0, [r4, r2]
2:
    mov r12, r12
    b 3f
    .hword 0x6464
1:
    .space 121
    .balign 2
3:
    pop {r4}
    bx lr
.size pp_nocash_message, .-pp_nocash_message
.section .note.GNU-stack,"",%progbits
