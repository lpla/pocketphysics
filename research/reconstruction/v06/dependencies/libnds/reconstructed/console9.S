/* Reconstructed mnemonic source for console.o. */
.syntax unified
.arch armv5te

.type newRow, %function
.type consoleCls, %function
.global consolePrintChar
.type consolePrintChar, %function
.global consoleClear
.type consoleClear, %function
.global consoleInit
.type consoleInit, %function
.global dotab_stdout
.type dotab_stdout, %object
.global consoleInitDefault
.type consoleInitDefault, %function
.global consoleDemoInit
.type consoleDemoInit, %function
.global con_write
.type con_write, %function
.global fontBold
.type fontBold, %object

.section .text,"ax",%progbits
.balign 4
.thumb
.thumb_func
newRow:
    push {r4, lr}
    ldr r2, [pc, #80]
    ldr r1, [r2, #0]
    adds r3, r1, #1
    str r3, [r2, #0]
    cmp r3, #23
    ble.n .Lsec01_00000052
    ldr r3, [pc, #72]
    movs r0, #184
    ldr r4, [r3, #0]
    str r1, [r2, #0]
    lsls r0, r0, #3
    movs r1, #0
.Lsec01_0000001a:
    adds r3, r4, r1
    adds r2, r3, #0
    adds r2, #64
    ldrh r2, [r2, #0]
    adds r1, #2
    strh r2, [r3, #0]
    cmp r1, r0
    bne.n .Lsec01_0000001a
    ldr r3, [pc, #48]
    ldr r2, [pc, #48]
    ldrh r3, [r3, #0]
    ldrh r2, [r2, #0]
    movs r0, #184
    subs r3, r3, r2
    ldr r2, [pc, #44]
    adds r3, #32
    ldrh r2, [r2, #0]
    lsls r0, r0, #3
    orrs r3, r2
    lsls r3, r3, #16
    adds r2, r4, r0
    adds r0, #64
    lsrs r1, r3, #16
    adds r3, r4, r0
.Lsec01_0000004a:
    strh r1, [r2, #0]
    adds r2, #2
    cmp r2, r3
    bne.n .Lsec01_0000004a
.Lsec01_00000052:
    pop {r4, pc}
    .long .Lsec04_0000000c
    .long .Lsec04_00000008
    .long .Lsec04_0000001c
    .long .Lsec04_0000001e
    .long .Lsec04_00000020
.thumb
.thumb_func
consolePrintChar:
    push {r4, r5, r6, lr}
    ldr r5, [pc, #92]
    adds r6, r0, #0
    ldr r3, [r5, #0]
    adds r4, r5, #0
    cmp r3, #31
    bgt.n .Lsec01_000000b6
.Lsec01_00000076:
    cmp r6, #10
    beq.n .Lsec01_000000ac
    cmp r6, #13
    beq.n .Lsec01_000000ac
    cmp r6, #9
    beq.n .Lsec01_000000c0
    ldr r3, [pc, #72]
    ldr r2, [pc, #72]
    ldr r1, [r3, #0]
    ldr r3, [pc, #72]
    ldrh r2, [r2, #0]
    ldr r4, [r3, #0]
    ldr r3, [pc, #72]
    ldr r0, [r5, #0]
    ldrh r3, [r3, #0]
    lsls r1, r1, #5
    adds r3, r6, r3
    subs r3, r3, r2
    ldr r2, [pc, #64]
    adds r1, r1, r0
    ldrh r2, [r2, #0]
    lsls r1, r1, #1
    orrs r3, r2
    adds r0, #1
    strh r3, [r1, r4]
    str r0, [r5, #0]
.Lsec01_000000aa:
    pop {r4, r5, r6, pc}
.Lsec01_000000ac:
    bl newRow
    movs r3, #0
    str r3, [r4, #0]
    b.n .Lsec01_000000aa
.Lsec01_000000b6:
    movs r3, #0
    str r3, [r5, #0]
    bl newRow
    b.n .Lsec01_00000076
.Lsec01_000000c0:
    ldr r3, [r5, #0]
    adds r3, #3
    str r3, [r5, #0]
    b.n .Lsec01_000000aa
    .long .Lsec04_00000010
    .long .Lsec04_0000000c
    .long .Lsec04_0000001e
    .long .Lsec04_00000008
    .long .Lsec04_0000001c
    .long .Lsec04_00000020
.thumb
.thumb_func
consoleCls:
    push {r4, r5, r6, r7, lr}
    mov r7, sl
    mov r6, r8
    push {r6, r7}
    sub sp, #4
    cmp r0, #49
    beq.n .Lsec01_00000100
    cmp r0, #50
    beq.n .Lsec01_00000136
    cmp r0, #48
    beq.n .Lsec01_00000158
.Lsec01_000000f6:
    add sp, #4
    pop {r2, r3}
    mov r8, r2
    mov sl, r3
    pop {r4, r5, r6, r7, pc}
.Lsec01_00000100:
    ldr r7, [pc, #136]
    ldr r6, [pc, #140]
    ldr r3, [r7, #0]
    ldr r2, [r6, #0]
    mov r8, r3
    mov sl, r2
    movs r3, #0
    mov r2, r8
    str r3, [r7, #0]
    str r3, [r6, #0]
    lsls r3, r2, #5
    mov r2, sl
    adds r5, r2, r3
    cmp r5, #0
    ble.n .Lsec01_0000012c
    movs r4, #0
.Lsec01_00000120:
    movs r0, #32
    adds r4, #1
.Lsec01_00000124:
    bl consolePrintChar
    cmp r5, r4
    bne.n .Lsec01_00000120
.Lsec01_0000012c:
    mov r3, sl
    mov r2, r8
    str r3, [r6, #0]
    str r2, [r7, #0]
    b.n .Lsec01_000000f6
.Lsec01_00000136:
    ldr r7, [pc, #84]
    ldr r6, [pc, #84]
    movs r3, #0
    ldr r5, [pc, #84]
    str r3, [r7, #0]
    str r3, [r6, #0]
    movs r4, #1
.Lsec01_00000144:
    movs r0, #32
    adds r4, #1
.Lsec01_00000148:
    bl consolePrintChar
    cmp r4, r5
    bne.n .Lsec01_00000144
    movs r3, #0
    str r3, [r7, #0]
    str r3, [r6, #0]
    b.n .Lsec01_000000f6
.Lsec01_00000158:
    ldr r6, [pc, #52]
    ldr r7, [pc, #48]
    ldr r2, [r6, #0]
    ldr r3, [r7, #0]
    mov sl, r2
    mov r8, r3
    lsls r2, r3, #5
    movs r3, #192
    add r2, sl
    lsls r3, r3, #2
    subs r5, r3, r2
    cmp r5, #0
    ble.n .Lsec01_00000180
    movs r4, #0
.Lsec01_00000174:
    movs r0, #32
    adds r4, #1
.Lsec01_00000178:
    bl consolePrintChar
    cmp r4, r5
    bne.n .Lsec01_00000174
.Lsec01_00000180:
    mov r2, sl
    mov r3, r8
    str r2, [r6, #0]
    str r3, [r7, #0]
    b.n .Lsec01_000000f6
    lsls r0, r0, #0
    .long .Lsec04_0000000c
    .long .Lsec04_00000010
    .long 0x00000301
.thumb
.thumb_func
consoleClear:
    push {lr}
    sub sp, #4
    ldr r0, [pc, #8]
.Lsec01_0000019e:
    bl iprintf
    add sp, #4
    pop {pc}
    lsls r0, r0, #0
    .long .Lsec10_00000000
.thumb
.thumb_func
consoleInit:
    push {r4, r5, r6, r7, lr}
    mov r7, r8
    push {r7}
    adds r5, r2, #0
    add r2, sp, #24
    adds r7, r0, #0
    ldmia r2!, {r0}
    mov r8, r1
    ldrb r6, [r2, #0]
    add r2, sp, #32
    ldrb r1, [r2, #0]
    ldr r2, [pc, #284]
    movs r4, #0
    str r4, [r2, #0]
    ldr r2, [pc, #280]
    str r4, [r2, #0]
    ldr r2, [pc, #280]
    strh r3, [r2, #0]
    ldr r3, [pc, #280]
    strh r4, [r3, #0]
    ldr r3, [pc, #280]
    str r0, [r3, #0]
    cmp r1, #16
    beq.n .Lsec01_00000230
    ldr r3, [pc, #276]
    lsls r6, r5, #4
    strh r4, [r3, #0]
    cmp r6, #0
    ble.n .Lsec01_00000252
    movs r3, #15
    adds r0, r7, #0
    movs r1, #0
    mov ip, r3
    mov r5, r8
    movs r7, #240
    b.n .Lsec01_00000224
.Lsec01_000001f4:
    movs r2, #255
.Lsec01_000001f6:
    tst r4, r7
    beq.n .Lsec01_00000200
    movs r3, #255
    lsls r3, r3, #8
    orrs r2, r3
.Lsec01_00000200:
    movs r3, #240
    lsls r3, r3, #4
    tst r4, r3
    beq.n .Lsec01_0000020e
    movs r3, #255
    lsls r3, r3, #16
    orrs r2, r3
.Lsec01_0000020e:
    movs r3, #240
    lsls r3, r3, #8
    tst r4, r3
    beq.n .Lsec01_0000021a
    ldr r3, [pc, #224]
    orrs r2, r3
.Lsec01_0000021a:
    adds r1, #1
    stmia r5!, {r2}
    adds r0, #2
    cmp r1, r6
    beq.n .Lsec01_00000252
.Lsec01_00000224:
    ldrh r4, [r0, #0]
    mov r3, ip
    tst r4, r3
    bne.n .Lsec01_000001f4
    movs r2, #0
    b.n .Lsec01_000001f6
.Lsec01_00000230:
    cmp r6, #15
    bhi.n .Lsec01_0000028a
    ldr r2, [pc, #188]
    lsls r3, r6, #12
    strh r3, [r2, #0]
    lsls r2, r5, #4
    cmp r2, #0
    ble.n .Lsec01_00000252
    adds r0, r7, #0
    mov r1, r8
.Lsec01_00000244:
    ldrh r3, [r0, #0]
    adds r4, #1
    strh r3, [r1, #0]
    adds r0, #2
    adds r1, #2
    cmp r2, r4
    bne.n .Lsec01_00000244
.Lsec01_00000252:
    ldr r2, [pc, #168]
    ldr r3, [pc, #168]
    ldr r4, [pc, #172]
    str r3, [r2, #4]
    str r3, [r2, #8]
    ldr r3, [r4, #0]
    movs r1, #0
    ldr r0, [r3, #12]
    movs r2, #2
    movs r3, #0
.Lsec01_00000266:
    bl setvbuf
    ldr r3, [r4, #0]
    movs r1, #0
    movs r2, #2
    ldr r0, [r3, #8]
    movs r3, #0
.Lsec01_00000274:
    bl setvbuf
    movs r0, #50
    bl consoleCls
    ldr r2, [pc, #136]
    movs r3, #1
    str r3, [r2, #0]
    pop {r2}
    mov r8, r2
    pop {r4, r5, r6, r7, pc}
.Lsec01_0000028a:
    ldr r2, [pc, #104]
    ldr r3, [pc, #124]
    strh r3, [r2, #0]
    lsls r2, r5, #4
    cmp r2, #0
    ble.n .Lsec01_00000252
    adds r0, r7, #0
    mov r1, r8
    movs r6, #0
    b.n .Lsec01_000002d2
.Lsec01_0000029e:
    movs r5, #15
.Lsec01_000002a0:
    movs r3, #240
    tst r4, r3
    beq.n .Lsec01_000002ac
    orrs r3, r5
    lsls r3, r3, #16
    lsrs r5, r3, #16
.Lsec01_000002ac:
    movs r3, #240
    lsls r3, r3, #4
    tst r4, r3
    beq.n .Lsec01_000002b6
    orrs r5, r3
.Lsec01_000002b6:
    movs r3, #240
    lsls r3, r3, #8
    tst r4, r3
    beq.n .Lsec01_000002c6
    ldr r3, [pc, #76]
    orrs r3, r5
    lsls r3, r3, #16
    lsrs r5, r3, #16
.Lsec01_000002c6:
    adds r6, #1
    strh r5, [r1, #0]
    adds r0, #2
    adds r1, #2
    cmp r2, r6
    beq.n .Lsec01_00000252
.Lsec01_000002d2:
    ldrh r4, [r0, #0]
    movs r3, #15
    tst r4, r3
    bne.n .Lsec01_0000029e
    movs r5, #0
    b.n .Lsec01_000002a0
    lsls r0, r0, #0
    .long .Lsec04_00000010
    .long .Lsec04_0000000c
    .long .Lsec04_0000001e
    .long .Lsec04_0000001c
    .long .Lsec04_00000008
    .long .Lsec04_00000020
    .long 0xff000000
    .long devoptab_list
    .long dotab_stdout
    .long _impure_ptr
    .long .Lsec04_00000004
    .long 0xfffff000
.thumb
.thumb_func
consoleInitDefault:
    push {r4, r5, lr}
    ldr r5, [pc, #28]
    sub sp, #20
    adds r4, r2, #0
    movs r3, #16
    movs r2, #128
    str r0, [sp, #0]
    str r3, [sp, #4]
    adds r0, r5, #0
    lsls r2, r2, #1
    movs r3, #0
    str r4, [sp, #8]
.Lsec01_00000328:
    bl consoleInit
    add sp, #20
    pop {r4, r5, pc}
    .long default_font_bin
.thumb
.thumb_func
consoleDemoInit:
    push {lr}
    ldr r2, [pc, #44]
    ldr r3, [pc, #44]
    sub sp, #4
    str r2, [r3, #0]
    movs r0, #4
.Lsec01_00000340:
    bl vramSetBankC
    ldr r2, [pc, #36]
    movs r3, #248
    lsls r3, r3, #5
    strh r3, [r2, #0]
    ldr r2, [pc, #32]
    ldr r3, [pc, #36]
    movs r1, #196
    strh r2, [r3, #0]
    lsls r1, r1, #19
    ldr r0, [pc, #32]
    movs r2, #16
.Lsec01_0000035a:
    bl consoleInitDefault
    add sp, #4
    pop {pc}
    lsls r0, r0, #0
    .long 0x00010100
    .long 0x04001000
    .long 0x04001008
    .long 0x00007fff
    .long 0x050005fe
    .long 0x0620f800
.thumb
.thumb_func
con_write:
    push {r4, r5, r6, r7, lr}
    mov r7, fp
    mov r6, sl
    mov r5, r9
    mov r4, r8
    push {r4, r5, r6, r7}
    adds r6, r3, #0
    ldr r3, [pc, #460]
    sub sp, #12
    ldr r3, [r3, #0]
    cmp r3, #0
    bne.n .Lsec01_000003a8
.Lsec01_00000394:
    movs r4, #1
    negs r4, r4
.Lsec01_00000398:
    adds r0, r4, #0
    add sp, #12
    pop {r2, r3, r4, r5}
    mov r8, r2
    mov r9, r3
    mov sl, r4
    mov fp, r5
    pop {r4, r5, r6, r7, pc}
.Lsec01_000003a8:
    subs r7, r2, #0
    beq.n .Lsec01_00000394
    cmp r6, #0
    ble.n .Lsec01_00000394
    movs r1, #0
    mov r8, r1
    movs r4, #0
.Lsec01_000003b6:
    ldrb r0, [r7, #0]
    cmp r0, #0
    beq.n .Lsec01_00000398
.Lsec01_000003bc:
    cmp r8, r6
    bge.n .Lsec01_00000398
    movs r2, #1
    adds r5, r7, #1
    add r8, r2
    adds r4, #1
    cmp r0, #27
    bne.n .Lsec01_000003d2
    ldrb r3, [r7, #1]
    cmp r3, #91
    beq.n .Lsec01_000003e0
.Lsec01_000003d2:
    adds r7, r5, #0
.Lsec01_000003d4:
    bl consolePrintChar
    ldrb r0, [r7, #0]
    cmp r0, #0
    bne.n .Lsec01_000003bc
    b.n .Lsec01_00000398
.Lsec01_000003e0:
    movs r1, #1
    ldr r2, [pc, #376]
    adds r7, r5, #1
    add r8, r1
    adds r4, #1
    movs r0, #1
.Lsec01_000003ec:
    ldrb r3, [r7, #0]
    movs r1, #1
    subs r3, #65
    lsls r3, r3, #24
    lsrs r3, r3, #24
    adds r7, #1
    add r8, r1
    adds r4, #1
    adds r0, #1
    cmp r3, #52
    bhi.n .Lsec01_000003ec
    lsls r3, r3, #2
    ldr r3, [r3, r2]
    mov pc, r3
.Lsec01_00000408:
    ldr r1, [pc, #340]
    add r2, sp, #4
    adds r0, r5, #0
.Lsec01_0000040e:
    bl siscanf
    ldr r1, [pc, #336]
    ldr r3, [sp, #4]
    ldr r2, [r1, #0]
    subs r2, r2, r3
    bmi.n .Lsec01_000004da
.Lsec01_0000041c:
    str r2, [r1, #0]
    b.n .Lsec01_000003b6
.Lsec01_00000420:
    ldr r1, [pc, #324]
    add r2, sp, #4
    adds r0, r5, #0
.Lsec01_00000426:
    bl siscanf
    ldr r1, [pc, #312]
    ldr r3, [sp, #4]
    ldr r2, [r1, #0]
    adds r2, r2, r3
    cmp r2, #23
    ble.n .Lsec01_0000041c
    movs r2, #23
    str r2, [r1, #0]
    b.n .Lsec01_000003b6
.Lsec01_0000043c:
    ldr r1, [pc, #300]
    add r2, sp, #4
    adds r0, r5, #0
.Lsec01_00000442:
    bl siscanf
    ldr r1, [pc, #296]
    ldr r3, [sp, #4]
    ldr r2, [r1, #0]
    adds r2, r2, r3
    cmp r2, #31
    ble.n .Lsec01_0000041c
    movs r2, #31
    str r2, [r1, #0]
    b.n .Lsec01_000003b6
.Lsec01_00000458:
    adds r3, r5, r0
    subs r3, #2
    ldrb r0, [r3, #0]
    cmp r0, #49
    beq.n .Lsec01_0000050e
    cmp r0, #50
    beq.n .Lsec01_000004ec
    cmp r0, #48
    beq.n .Lsec01_00000534
    ldr r2, [pc, #260]
    ldr r3, [r2, #0]
    mov sl, r2
    mov fp, r3
    mov r1, fp
    movs r3, #32
    subs r1, r3, r1
    mov r9, r1
    cmp r1, #0
    ble.n .Lsec01_0000048c
    movs r5, #0
.Lsec01_00000480:
    movs r0, #32
    adds r5, #1
.Lsec01_00000484:
    bl consolePrintChar
    cmp r9, r5
    bne.n .Lsec01_00000480
.Lsec01_0000048c:
    mov r2, fp
    mov r3, sl
    str r2, [r3, #0]
    b.n .Lsec01_000003b6
.Lsec01_00000494:
    ldr r1, [pc, #220]
    ldr r2, [pc, #204]
    ldr r3, [pc, #212]
    adds r0, r5, #0
.Lsec01_0000049c:
    bl siscanf
    b.n .Lsec01_000003b6
.Lsec01_000004a2:
    ldr r3, [pc, #204]
    ldr r2, [pc, #208]
    ldr r3, [r3, #0]
    str r3, [r2, #0]
    ldr r3, [pc, #184]
    ldr r2, [pc, #204]
    ldr r3, [r3, #0]
    str r3, [r2, #0]
    b.n .Lsec01_000003b6
.Lsec01_000004b4:
    ldr r3, [pc, #192]
    ldr r2, [pc, #184]
    ldr r3, [r3, #0]
    str r3, [r2, #0]
    ldr r3, [pc, #188]
    ldr r2, [pc, #164]
    ldr r3, [r3, #0]
    str r3, [r2, #0]
    b.n .Lsec01_000003b6
.Lsec01_000004c6:
    ldr r1, [pc, #164]
    add r2, sp, #4
    adds r0, r5, #0
.Lsec01_000004cc:
    bl siscanf
    ldr r1, [pc, #156]
    ldr r3, [sp, #4]
    ldr r2, [r1, #0]
    subs r2, r2, r3
    bpl.n .Lsec01_0000041c
.Lsec01_000004da:
    movs r2, #0
    str r2, [r1, #0]
    b.n .Lsec01_000003b6
.Lsec01_000004e0:
    adds r3, r5, r0
    subs r3, #2
    ldrb r0, [r3, #0]
    bl consoleCls
    b.n .Lsec01_000003b6
.Lsec01_000004ec:
    ldr r1, [pc, #128]
    movs r3, #0
    ldr r2, [r1, #0]
    mov sl, r1
    mov r9, r2
    str r3, [r1, #0]
    movs r5, #1
.Lsec01_000004fa:
    movs r0, #32
    adds r5, #1
.Lsec01_000004fe:
    bl consolePrintChar
    cmp r5, #33
    bne.n .Lsec01_000004fa
    mov r3, r9
    mov r1, sl
    str r3, [r1, #0]
    b.n .Lsec01_000003b6
.Lsec01_0000050e:
    ldr r1, [pc, #96]
    movs r3, #0
    ldr r2, [r1, #0]
    str r3, [r1, #0]
    movs r3, #30
    mov sl, r1
    subs r1, r3, r2
    mov fp, r2
    mov r9, r1
    cmp r1, #0
    ble.n .Lsec01_0000048c
    movs r5, #0
.Lsec01_00000526:
    movs r0, #32
    adds r5, #1
.Lsec01_0000052a:
    bl consolePrintChar
    cmp r9, r5
    bne.n .Lsec01_00000526
    b.n .Lsec01_0000048c
.Lsec01_00000534:
    ldr r2, [pc, #56]
    ldr r3, [r2, #0]
    mov sl, r2
    mov fp, r3
    mov r1, fp
    movs r3, #32
    subs r1, r3, r1
    mov r9, r1
    cmp r1, #0
    ble.n .Lsec01_0000048c
    movs r5, #0
.Lsec01_0000054a:
    movs r0, #32
    adds r5, #1
.Lsec01_0000054e:
    bl consolePrintChar
    cmp r5, r9
    bne.n .Lsec01_0000054a
    b.n .Lsec01_0000048c
    .long .Lsec04_00000004
    .long .Lsec11_00000000
    .long .Lsec10_00000008
    .long .Lsec04_0000000c
    .long .Lsec10_00000010
    .long .Lsec10_00000018
    .long .Lsec04_00000010
    .long .Lsec10_00000020
    .long .Lsec04_00000014
    .long .Lsec04_00000018

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 4
fontBold:
    .long 0x00000000
consoleInitialised:
.Lsec04_00000004:
    .long 0x00000000
fontMap:
.Lsec04_00000008:
    .long 0x00000000
row:
.Lsec04_0000000c:
    .long 0x00000000
col:
.Lsec04_00000010:
    .long 0x00000000
savedX:
.Lsec04_00000014:
    .long 0x00000000
savedY:
.Lsec04_00000018:
    .long 0x00000000
fontOffset:
.Lsec04_0000001c:
    .short 0x0000
fontStart:
.Lsec04_0000001e:
    .short 0x0000
fontPal:
.Lsec04_00000020:
    .long 0x00000000

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec10_00000000:
    .long 0x4a325b1b
    .asciz ""
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec10_00000008:
    .asciz "[%dA"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec10_00000010:
    .asciz "[%dB"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec10_00000018:
    .asciz "[%dC"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec10_00000020:
    .asciz "[%d;%df"
.Lsec10_00000028:
    .asciz "con"

.section .rodata,"a",%progbits
.balign 4
.Lsec11_00000000:
    .long .Lsec01_00000408
    .long .Lsec01_00000420
    .long .Lsec01_0000043c
    .long .Lsec01_000004c6
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_00000494
    .long .Lsec01_000003ec
    .long .Lsec01_000004e0
    .long .Lsec01_00000458
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_00000494
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000003ec
    .long .Lsec01_000004a2
    .long .Lsec01_000003ec
    .long .Lsec01_000004b4
dotab_stdout:
    .long .Lsec10_00000028
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long con_write
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000
    .long 0x00000000

.size newRow, 104
.size consoleCls, 184
.size consolePrintChar, 120
.size consoleClear, 20
.size consoleInit, 356
.size dotab_stdout, 76
.size consoleInitDefault, 36
.size consoleDemoInit, 72
.size con_write, 516
.size fontBold, 1

.section .note.GNU-stack,"",%progbits
