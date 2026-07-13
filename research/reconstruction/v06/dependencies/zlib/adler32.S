/* Reconstructed mnemonic source for adler32.o. */
.syntax unified
.arch armv5te

.global adler32
.type adler32, %function
.global adler32_combine
.type adler32_combine, %function

.section .text,"ax",%progbits
.balign 4
.arm
adler32:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    cmp r2, #1
    mov r4, r0, lsl #16
    mov r7, r2
    mov r5, r1
    mov r4, r4, lsr #16
    mov r6, r0, lsr #16
    bne .Lsec01_00000050
    ldrb r3, [r1]
    ldr r2, [pc, #700]
    add r0, r4, r3
    cmp r0, r2
    subhi r0, r0, #65280
    subhi r0, r0, #241
    add r1, r6, r0
    cmp r1, r2
    subhi r1, r1, #65280
    subhi r1, r1, #241
    orr r0, r0, r1, lsl #16
    b .Lsec01_000002e0
.Lsec01_00000050:
    cmp r1, #0
    moveq r0, #1
    beq .Lsec01_000002e0
    cmp r2, #15
    movls r1, r1
    bls .Lsec01_00000078
    b .Lsec01_000001b0
.Lsec01_0000006c:
    ldrb r3, [r1, #-1]
    add r4, r4, r3
    add r6, r6, r4
.Lsec01_00000078:
    sub r7, r7, #1
    cmn r7, #1
    add r1, r1, #1
    bne .Lsec01_0000006c
    ldr r3, [pc, #600]
    cmp r4, r3
    subhi r4, r4, #65280
    mov r0, r6
    ldr r1, [pc, #588]
    subhi r4, r4, #241
.Lsec01_000000a0:
    bl __aeabi_uidivmod
    orr r0, r4, r1, lsl #16
    b .Lsec01_000002e0
.Lsec01_000000ac:
    ldr r8, [pc, #572]
    mov lr, r5
.Lsec01_000000b4:
    ldrb r3, [lr]
    ldrb r2, [lr, #1]
    add r3, r4, r3
    ldrb r1, [lr, #2]
    add r2, r3, r2
    ldrb r0, [lr, #3]
    add r3, r6, r3
    add r1, r2, r1
    add r3, r3, r2
    ldrb r2, [lr, #4]
    add r0, r1, r0
    add r3, r3, r1
    ldrb r1, [lr, #5]
    add r2, r0, r2
    add r3, r3, r0
    ldrb r0, [lr, #6]
    add r1, r2, r1
    add r3, r3, r2
    ldrb r2, [lr, #7]
    add r0, r1, r0
    add r3, r3, r1
    ldrb r1, [lr, #8]
    add r2, r0, r2
    add r3, r3, r0
    ldrb r0, [lr, #9]
    add r1, r2, r1
    add r3, r3, r2
    ldrb r2, [lr, #10]
    add r0, r1, r0
    add r3, r3, r1
    ldrb r1, [lr, #11]
    add r2, r0, r2
    add r3, r3, r0
    ldrb r0, [lr, #12]
    add r1, r2, r1
    add r3, r3, r2
    ldrb ip, [lr, #13]
    add r0, r1, r0
    add r3, r3, r1
    ldrb r2, [lr, #14]
    add ip, r0, ip
    ldrb r1, [lr, #15]
    add r3, r3, r0
    add r2, ip, r2
    add r3, r3, ip
    add r4, r2, r1
    add r3, r3, r2
    subs r8, r8, #1
    add r6, r3, r4
    add lr, lr, #16
    bne .Lsec01_000000b4
    mov r0, r4
    ldr r1, [pc, #352]
.Lsec01_00000188:
    bl __aeabi_uidivmod
    mov r0, r6
    mov r4, r1
    ldr r1, [pc, #336]
.Lsec01_00000198:
    bl __aeabi_uidivmod
    add r5, r5, #5504
    sub r7, r7, #5504
    mov r6, r1
    add r5, r5, #48
    sub r7, r7, #48
.Lsec01_000001b0:
    ldr r3, [pc, #316]
    cmp r7, r3
    bhi .Lsec01_000000ac
    cmp r7, #0
    bne .Lsec01_00000290
    b .Lsec01_000002dc
.Lsec01_000001c8:
    ldrb r3, [r5]
    ldrb r2, [r5, #1]
    add r3, r4, r3
    ldrb r1, [r5, #2]
    add r2, r3, r2
    ldrb r0, [r5, #3]
    add r3, r6, r3
    add r1, r2, r1
    add r3, r3, r2
    ldrb r2, [r5, #4]
    add r0, r1, r0
    add r3, r3, r1
    ldrb r1, [r5, #5]
    add r2, r0, r2
    add r3, r3, r0
    ldrb r0, [r5, #6]
    add r1, r2, r1
    add r3, r3, r2
    ldrb r2, [r5, #7]
    add r0, r1, r0
    add r3, r3, r1
    ldrb r1, [r5, #8]
    add r2, r0, r2
    add r3, r3, r0
    ldrb r0, [r5, #9]
    add r1, r2, r1
    add r3, r3, r2
    ldrb r2, [r5, #10]
    add r0, r1, r0
    add r3, r3, r1
    ldrb r1, [r5, #11]
    add r2, r0, r2
    add r3, r3, r0
    ldrb r0, [r5, #12]
    add r1, r2, r1
    add r3, r3, r2
    ldrb ip, [r5, #13]
    add r0, r1, r0
    add r3, r3, r1
    ldrb r2, [r5, #14]
    add ip, r0, ip
    ldrb r1, [r5, #15]
    add r3, r3, r0
    add r2, ip, r2
    add r3, r3, ip
    add r4, r2, r1
    add r3, r3, r2
    sub r7, r7, #16
    add r6, r3, r4
    add r5, r5, #16
.Lsec01_00000290:
    cmp r7, #15
    bhi .Lsec01_000001c8
    mov r1, r5
    b .Lsec01_000002ac
.Lsec01_000002a0:
    ldrb r3, [r1, #-1]
    add r4, r4, r3
    add r6, r6, r4
.Lsec01_000002ac:
    sub r7, r7, #1
    cmn r7, #1
    add r1, r1, #1
    bne .Lsec01_000002a0
    mov r0, r4
    ldr r1, [pc, #36]
.Lsec01_000002c4:
    bl __aeabi_uidivmod
    mov r0, r6
    mov r4, r1
    ldr r1, [pc, #20]
.Lsec01_000002d4:
    bl __aeabi_uidivmod
    mov r6, r1
.Lsec01_000002dc:
    orr r0, r4, r6, lsl #16
.Lsec01_000002e0:
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long 0x0000fff0
    .long 0x0000fff1
    .long 0x0000015b
    .long 0x000015af
.arm
adler32_combine:
    stmdb sp!, {r4, r5, r6, r7, lr}
    mov r7, r0
    mov r5, r1
    mov r0, r2
    sub sp, sp, #4
    ldr r1, [pc, #152]
.Lsec01_00000310:
    bl __aeabi_uidivmod
    mov r4, r7, lsl #16
    mov r4, r4, lsr #16
    mul r0, r4, r1
    mov r6, r1
    ldr r1, [pc, #128]
.Lsec01_00000328:
    bl __aeabi_uidivmod
    mov r3, r5, lsr #16
    add r3, r3, r7, lsr #16
    add r4, r4, #65280
    mov r5, r5, lsl #16
    rsb r3, r6, r3
    mov r5, r5, lsr #16
    add r4, r4, #240
    ldr r2, [pc, #92]
    add r5, r5, r4
    add r3, r3, #65280
    add r3, r3, #241
    cmp r5, r2
    add r1, r1, r3
    bls .Lsec01_00000378
    sub r5, r5, #65280
    sub r5, r5, #241
    cmp r5, r2
    subhi r5, r5, #65280
    subhi r5, r5, #241
.Lsec01_00000378:
    ldr r3, [pc, #48]
    cmp r1, r3
    subhi r1, r1, #130048
    subhi r1, r1, #992
    ldr r3, [pc, #28]
    subhi r1, r1, #2
    cmp r1, r3
    subhi r1, r1, #65280
    subhi r1, r1, #241
    orr r0, r5, r1, lsl #16
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
    .long 0x0000fff1
    .long 0x0001ffe2

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.size adler32, 760
.size adler32_combine, 188

.section .note.GNU-stack,"",%progbits
