/* Reconstructed mnemonic source for userSettings.o. */
.syntax unified
.arch armv4t

.global readUserSettings
.type readUserSettings, %function

.section .text,"ax",%progbits
.balign 4
.thumb
.thumb_func
readUserSettings:
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, r8
    push {r6, r7}
    sub sp, #244
    movs r0, #32
    add r1, sp, #228
    movs r2, #2
.Lsec01_00000010:
    bl readFirmware
    ldr r4, [sp, #228]
    movs r1, #128
    lsls r4, r4, #3
    add r2, sp, #4
    lsls r1, r1, #1
    adds r5, r4, r1
    adds r0, r4, #0
    adds r1, r2, #0
    mov r8, r2
    add r7, sp, #116
    movs r2, #112
.Lsec01_0000002a:
    bl readFirmware
    adds r0, r5, #0
    adds r1, r7, #0
    movs r2, #112
.Lsec01_00000034:
    bl readFirmware
    adds r0, r4, #0
    adds r0, #112
    add r1, sp, #236
    movs r2, #2
.Lsec01_00000040:
    bl readFirmware
    movs r3, #184
    lsls r3, r3, #1
    movs r1, #234
    adds r0, r4, r3
    add r1, sp
    movs r2, #2
    mov sl, r1
    add r5, sp, #232
.Lsec01_00000054:
    bl readFirmware
    adds r0, r4, #0
    adds r0, #114
    adds r1, r5, #0
    movs r2, #2
.Lsec01_00000060:
    bl readFirmware
    movs r2, #185
    lsls r2, r2, #1
    mov r6, sp
    adds r4, r4, r2
    adds r6, #238
    adds r0, r4, #0
    adds r1, r6, #0
    movs r2, #2
.Lsec01_00000074:
    bl readFirmware
    mov r1, r8
    movs r2, #112
    ldr r0, [pc, #108]
.Lsec01_0000007e:
    bl swiCRC16
    adds r1, r7, #0
    adds r4, r0, #0
    movs r2, #112
    ldr r0, [pc, #96]
.Lsec01_0000008a:
    bl swiCRC16
    lsls r4, r4, #16
    movs r1, #0
    ldrsh r3, [r5, r1]
    asrs r4, r4, #16
    cmp r3, r4
    beq.n .Lsec01_000000c0
    movs r3, #0
    ldrsh r2, [r6, r3]
    lsls r3, r0, #16
    asrs r3, r3, #16
    cmp r2, r3
    beq.n .Lsec01_000000b4
.Lsec01_000000a6:
    add sp, #244
    pop {r2, r3}
    mov r8, r2
    mov sl, r3
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
.Lsec01_000000b4:
    adds r1, r7, #0
.Lsec01_000000b6:
    movs r2, #112
    ldr r0, [pc, #52]
.Lsec01_000000ba:
    bl memcpy
    b.n .Lsec01_000000a6
.Lsec01_000000c0:
    lsls r3, r0, #16
    movs r1, #0
    ldrsh r2, [r6, r1]
    asrs r3, r3, #16
    cmp r2, r3
    beq.n .Lsec01_000000d0
    mov r1, r8
    b.n .Lsec01_000000b6
.Lsec01_000000d0:
    mov r2, sl
    movs r1, #0
    ldrsh r3, [r2, r1]
    movs r1, #127
    adds r2, r3, #1
    ands r2, r1
    cmp r3, r2
    beq.n .Lsec01_000000e6
    mov ip, r8
    mov r1, ip
    b.n .Lsec01_000000b6
.Lsec01_000000e6:
    mov ip, r7
    mov r1, ip
    b.n .Lsec01_000000b6
    .long 0x0000ffff
    .long 0x027ffc80

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.size readUserSettings, 244

.section .note.GNU-stack,"",%progbits
