/* Reconstructed mnemonic source for card.o. */
.syntax unified
.arch armv4t

.type C.38.1740, %object
.global cardWriteCommand
.type cardWriteCommand, %function
.global cardPolledTransfer
.type cardPolledTransfer, %function
.global cardStartTransfer
.type cardStartTransfer, %function
.global cardWriteAndRead
.type cardWriteAndRead, %function
.global cardRead00
.type cardRead00, %function
.global cardReadHeader
.type cardReadHeader, %function
.global cardReadID
.type cardReadID, %function
.global cardEepromCommand
.type cardEepromCommand, %function
.global cardEepromReadID
.type cardEepromReadID, %function
.global cardEepromGetType
.type cardEepromGetType, %function
.global cardReadEeprom
.type cardReadEeprom, %function
.global cardWriteEeprom
.type cardWriteEeprom, %function
.global cardEepromGetSize
.type cardEepromGetSize, %function
.global cardEepromSectorErase
.type cardEepromSectorErase, %function
.global cardEepromChipErase
.type cardEepromChipErase, %function

.section .text,"ax",%progbits
.balign 4
.thumb
.thumb_func
cardWriteCommand:
    push {r4, lr}
    movs r3, #64
    ldr r2, [pc, #24]
    negs r3, r3
    strb r3, [r2, #0]
    ldr r4, [pc, #24]
    movs r1, #0
.Lsec01_0000000e:
    ldrb r3, [r1, r0]
    subs r2, r4, r1
    adds r1, #1
    strb r3, [r2, #0]
    cmp r1, #8
    bne.n .Lsec01_0000000e
    pop {r4}
    pop {r0}
    bx r0
    .long 0x040001a1
    .long 0x040001af
.thumb
.thumb_func
cardPolledTransfer:
    push {r4, r5, r6, lr}
    adds r5, r0, #0
    adds r0, r3, #0
    adds r6, r1, #0
    adds r4, r2, #0
.Lsec01_00000032:
    bl cardWriteCommand
    ldr r3, [pc, #44]
    lsls r4, r4, #2
    movs r2, #128
    str r5, [r3, #0]
    ldr r0, [pc, #40]
    adds r4, r4, r6
    adds r1, r3, #0
    lsls r2, r2, #16
.Lsec01_00000046:
    ldr r3, [r1, #0]
    tst r3, r2
    beq.n .Lsec01_00000056
    ldr r3, [r0, #0]
    cmp r6, r4
    bcs.n .Lsec01_00000054
    str r3, [r6, #0]
.Lsec01_00000054:
    adds r6, #4
.Lsec01_00000056:
    ldr r3, [r1, #0]
    cmp r3, #0
    blt.n .Lsec01_00000046
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    lsls r0, r0, #0
    .long 0x040001a4
    .long 0x04100010
.thumb
.thumb_func
cardStartTransfer:
    push {r4, r5, r6, lr}
    adds r5, r1, #0
    adds r4, r2, #0
    adds r6, r3, #0
.Lsec01_00000074:
    bl cardWriteCommand
    lsls r3, r4, #1
    adds r3, r3, r4
    ldr r2, [pc, #32]
    lsls r3, r3, #2
    adds r1, r3, r2
    ldr r2, [pc, #32]
    str r2, [r1, #0]
    ldr r1, [pc, #32]
    adds r2, r3, r1
    str r5, [r2, #0]
    ldr r2, [pc, #28]
    adds r3, r3, r2
    ldr r2, [pc, #28]
    str r2, [r3, #0]
    ldr r3, [pc, #28]
    str r6, [r3, #0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    lsls r0, r0, #0
    .long 0x040000b0
    .long 0x04100010
    .long 0x040000b4
    .long 0x040000b8
    .long 0xaf000001
    .long 0x040001a4
.thumb
.thumb_func
cardWriteAndRead:
    push {r4, lr}
    adds r4, r1, #0
.Lsec01_000000bc:
    bl cardWriteCommand
    ldr r3, [pc, #28]
    orrs r4, r3
    ldr r3, [pc, #28]
    movs r2, #128
    str r4, [r3, #0]
    adds r1, r3, #0
    lsls r2, r2, #16
.Lsec01_000000ce:
    ldr r3, [r1, #0]
    tst r3, r2
    beq.n .Lsec01_000000ce
    ldr r3, [pc, #16]
    ldr r0, [r3, #0]
    pop {r4}
    pop {r1}
    bx r1
    lsls r0, r0, #0
    .long 0xa7000000
    .long 0x040001a4
    .long 0x04100010
.thumb
.thumb_func
cardRead00:
    push {r4, r5, r6, lr}
    sub sp, #8
    adds r6, r3, #0
    lsrs r4, r0, #24
    mov r3, sp
    strb r4, [r3, #6]
    lsrs r4, r0, #16
    movs r5, #0
    strb r4, [r3, #5]
    lsrs r4, r0, #8
    strb r5, [r3, #7]
    strb r0, [r3, #3]
    strb r5, [r3, #2]
    strb r5, [r3, #1]
    strb r5, [r3, #0]
    adds r0, r6, #0
    strb r4, [r3, #4]
.Lsec01_0000010e:
    bl cardPolledTransfer
    add sp, #8
    pop {r4, r5, r6}
    pop {r0}
    bx r0
    .short 0x0000
.thumb_func
cardReadHeader:
    push {lr}
    movs r2, #128
    sub sp, #4
    adds r1, r0, #0
    lsls r2, r2, #2
    movs r0, #0
    ldr r3, [pc, #8]
.Lsec01_0000012a:
    bl cardRead00
    add sp, #4
    pop {r0}
    bx r0
    .long 0xa93f1fff
.thumb
.thumb_func
cardReadID:
    push {r4, r5, lr}
    sub sp, #12
    adds r5, r0, #0
    movs r2, #8
    ldr r1, [pc, #20]
    mov r0, sp
.Lsec01_00000144:
    bl memcpy
    adds r1, r5, #0
    mov r0, sp
.Lsec01_0000014c:
    bl cardWriteAndRead
    add sp, #12
    pop {r4, r5}
    pop {r1}
    bx r1
    .long .Lsec10_00000000
.thumb
.thumb_func
cardEepromCommand:
    push {r4, r5, r6, lr}
    ldr r2, [pc, #124]
    ldr r3, [pc, #124]
    strh r3, [r2, #0]
    movs r3, #1
    negs r3, r3
    strh r3, [r2, #0]
    ldr r3, [pc, #120]
    strb r0, [r3, #0]
    movs r0, #128
.Lsec01_00000170:
    ldrh r3, [r2, #0]
    tst r3, r0
    bne.n .Lsec01_00000170
    ldr r2, [pc, #108]
    lsls r3, r1, #8
    lsrs r3, r3, #24
    ldr r0, [pc, #92]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000182:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_00000182
    ldr r2, [pc, #88]
    lsls r3, r1, #16
    lsrs r3, r3, #24
    ldr r0, [pc, #76]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000194:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_00000194
    lsls r3, r1, #24
    ldr r2, [pc, #68]
    lsrs r3, r3, #24
    ldr r1, [pc, #56]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000001a6:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000001a6
    movs r5, #128
    ldr r6, [pc, #52]
    ldr r1, [pc, #40]
    movs r4, #0
    movs r2, #128
    lsls r5, r5, #1
.Lsec01_000001b8:
    ldrb r3, [r6, #0]
    adds r0, r3, #0
    cmp r3, #255
    bne.n .Lsec01_000001ce
.Lsec01_000001c0:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000001c0
    adds r4, #1
    cmp r4, r5
    bne.n .Lsec01_000001b8
    movs r0, #255
.Lsec01_000001ce:
    ldr r3, [pc, #12]
    movs r2, #64
    strh r2, [r3, #0]
    pop {r4, r5, r6}
    pop {r1}
    bx r1
    lsls r0, r0, #0
    .long 0x040001a0
    .long 0xffffa040
    .long 0x040001a2
.thumb
.thumb_func
cardEepromReadID:
    push {lr}
    adds r1, r0, #0
    movs r3, #1
    sub sp, #4
    ands r1, r3
    movs r0, #171
.Lsec01_000001f4:
    bl cardEepromCommand
    add sp, #4
    pop {r1}
    bx r1
    .short 0x0000
.thumb_func
cardEepromGetType:
    push {r4, r5, lr}
    sub sp, #4
    movs r1, #0
    movs r0, #3
.Lsec01_00000208:
    bl cardEepromCommand
    movs r1, #0
    movs r0, #5
.Lsec01_00000210:
    bl cardEepromCommand
    movs r1, #0
    adds r5, r0, #0
    movs r0, #159
.Lsec01_0000021a:
    bl cardEepromCommand
    movs r1, #0
    adds r4, r0, #0
    movs r0, #0
.Lsec01_00000224:
    bl cardEepromCommand
    cmp r0, #0
    beq.n .Lsec01_00000230
    cmp r0, #255
    beq.n .Lsec01_0000023a
.Lsec01_00000230:
    movs r0, #0
.Lsec01_00000232:
    add sp, #4
    pop {r4, r5}
    pop {r1}
    bx r1
.Lsec01_0000023a:
    cmp r5, #255
    beq.n .Lsec01_0000026e
    movs r3, #253
    adds r0, r5, #0
    ands r0, r3
    cmp r0, #240
    beq.n .Lsec01_00000264
    cmp r0, #0
    bne.n .Lsec01_00000230
    cmp r4, #255
    beq.n .Lsec01_00000278
    cmp r4, #0
    beq.n .Lsec01_00000260
    cmp r4, #18
    beq.n .Lsec01_00000260
    cmp r4, #19
    beq.n .Lsec01_00000260
    cmp r4, #20
    bne.n .Lsec01_00000230
.Lsec01_00000260:
    movs r0, #3
    b.n .Lsec01_00000232
.Lsec01_00000264:
    movs r0, #0
    cmp r4, #255
    bne.n .Lsec01_00000232
    movs r0, #1
    b.n .Lsec01_00000232
.Lsec01_0000026e:
    cmp r4, #255
    bne.n .Lsec01_00000230
    movs r0, #1
    negs r0, r0
    b.n .Lsec01_00000232
.Lsec01_00000278:
    movs r0, #2
    b.n .Lsec01_00000232
.thumb_func
cardReadEeprom:
    push {r4, r5, r6, lr}
    adds r4, r2, #0
    adds r6, r3, #0
    ldr r2, [pc, #156]
    ldr r3, [pc, #156]
    adds r5, r1, #0
    strh r2, [r3, #0]
    cmp r6, #1
    beq.n .Lsec01_000002fe
    movs r2, #3
.Lsec01_00000290:
    ldr r3, [pc, #148]
    ldr r1, [pc, #144]
    strb r2, [r3, #0]
    movs r2, #128
.Lsec01_00000298:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000298
    cmp r6, #3
    beq.n .Lsec01_0000030c
    cmp r6, #1
    bls.n .Lsec01_000002b8
.Lsec01_000002a6:
    ldr r2, [pc, #128]
    lsls r3, r0, #16
    lsrs r3, r3, #24
    ldr r1, [pc, #116]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000002b2:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000002b2
.Lsec01_000002b8:
    lsls r3, r0, #24
    ldr r2, [pc, #108]
    lsrs r3, r3, #24
    ldr r0, [pc, #100]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000002c4:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_000002c4
    cmp r4, #0
    beq.n .Lsec01_000002ec
    ldr r1, [pc, #88]
    ldr r0, [pc, #80]
    movs r6, #0
    movs r2, #128
.Lsec01_000002d6:
    strb r6, [r1, #0]
.Lsec01_000002d8:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_000002d8
    ldrb r3, [r1, #0]
    subs r4, #1
    strb r3, [r5, #0]
    cmp r4, #0
    beq.n .Lsec01_000002ec
    adds r5, #1
    b.n .Lsec01_000002d6
.Lsec01_000002ec:
    ldr r2, [pc, #52]
    ldrh r3, [r2, #0]
    lsls r1, r3, #24
    bmi.n .Lsec01_000002ec
    movs r3, #64
    strh r3, [r2, #0]
    pop {r4, r5, r6}
    pop {r0}
    bx r0
.Lsec01_000002fe:
    lsrs r3, r0, #8
    movs r2, #3
    lsls r3, r3, #3
    orrs r3, r2
    lsls r3, r3, #24
    lsrs r2, r3, #24
    b.n .Lsec01_00000290
.Lsec01_0000030c:
    ldr r2, [pc, #24]
    lsls r3, r0, #8
    lsrs r3, r3, #24
    ldr r1, [pc, #16]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000318:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000318
    b.n .Lsec01_000002a6
    .long 0xffffa040
    .long 0x040001a0
    .long 0x040001a2
.thumb
.thumb_func
cardWriteEeprom:
    push {r4, r5, r6, r7, lr}
    mov r7, fp
    mov r6, sl
    mov r5, r9
    mov r4, r8
    push {r4, r5, r6, r7}
    adds r2, r2, r0
    adds r6, r0, #0
    adds r7, r1, #0
    mov sl, r3
    mov r8, r2
    cmp r3, #1
    bne.n .Lsec01_00000348
    b.n .Lsec01_000004c6
.Lsec01_00000348:
    cmp r3, #2
    beq.n .Lsec01_00000352
    cmp r3, #3
    bne.n .Lsec01_00000352
    b.n .Lsec01_000004be
.Lsec01_00000352:
    movs r2, #32
    mov r9, r2
.Lsec01_00000356:
    cmp r6, r8
    bcs.n .Lsec01_00000400
    ldr r3, [pc, #368]
    ldr r2, [pc, #368]
    mov ip, r3
    mov fp, r2
.Lsec01_00000362:
    ldr r2, [pc, #368]
    mov r3, ip
    strh r2, [r3, #0]
    movs r3, #6
    mov r2, fp
    strb r3, [r2, #0]
.Lsec01_0000036e:
    mov r2, ip
    ldrh r3, [r2, #0]
    movs r2, #128
    tst r3, r2
    bne.n .Lsec01_0000036e
    mov r3, ip
    movs r2, #64
    strh r2, [r3, #0]
    ldr r2, [pc, #340]
    strh r2, [r3, #0]
    mov r3, sl
    cmp r3, #1
    beq.n .Lsec01_00000410
    mov r3, sl
    cmp r3, #2
    beq.n .Lsec01_00000442
    mov r3, sl
    cmp r3, #3
    bne.n .Lsec01_00000396
    b.n .Lsec01_00000476
.Lsec01_00000396:
    mov r3, r9
    cmp r3, #0
    ble.n .Lsec01_000003bc
    ldr r4, [pc, #304]
    ldr r1, [pc, #300]
    movs r0, #0
    movs r2, #128
.Lsec01_000003a4:
    ldrb r3, [r7, #0]
    strb r3, [r4, #0]
    adds r7, #1
.Lsec01_000003aa:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000003aa
    adds r6, #1
    cmp r8, r6
    bls.n .Lsec01_000003bc
    adds r0, #1
    cmp r0, r9
    bne.n .Lsec01_000003a4
.Lsec01_000003bc:
    mov r2, ip
    movs r3, #64
    strh r3, [r2, #0]
    ldr r3, [pc, #272]
    ldr r1, [pc, #260]
    strh r3, [r2, #0]
    mov r2, fp
    movs r3, #5
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000003d0:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000003d0
    ldr r0, [pc, #248]
    ldr r1, [pc, #240]
    movs r5, #0
    movs r2, #128
    movs r4, #1
.Lsec01_000003e0:
    strb r5, [r0, #0]
.Lsec01_000003e2:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000003e2
    ldrb r3, [r0, #0]
    tst r3, r4
    bne.n .Lsec01_000003e0
    ldr r1, [pc, #220]
    movs r2, #128
.Lsec01_000003f2:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000003f2
    movs r3, #64
    strh r3, [r1, #0]
    cmp r8, r6
    bhi.n .Lsec01_00000362
.Lsec01_00000400:
    pop {r2, r3, r4, r5}
    mov r8, r2
    mov r9, r3
    mov sl, r4
    mov fp, r5
    pop {r4, r5, r6, r7}
    pop {r0}
    bx r0
.Lsec01_00000410:
    movs r3, #128
    lsls r3, r3, #1
    ands r3, r6
    movs r2, #2
    lsrs r3, r3, #5
    orrs r3, r2
    lsls r3, r3, #24
    mov r2, fp
    lsrs r3, r3, #24
    ldr r0, [pc, #168]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000428:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_00000428
    lsls r3, r6, #24
    mov r2, fp
    lsrs r3, r3, #24
    ldr r0, [pc, #148]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_0000043a:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_0000043a
    b.n .Lsec01_00000396
.Lsec01_00000442:
    mov r2, fp
    ldr r1, [pc, #132]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_0000044a:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_0000044a
    lsls r3, r6, #16
    mov r2, fp
    lsrs r3, r3, #24
    ldr r1, [pc, #116]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_0000045c:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_0000045c
    lsls r3, r6, #24
    mov r2, fp
    lsrs r3, r3, #24
    ldr r1, [pc, #96]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_0000046e:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_0000046e
    b.n .Lsec01_00000396
.Lsec01_00000476:
    mov r2, fp
    movs r3, #2
    ldr r1, [pc, #80]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000480:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000480
    lsls r3, r6, #8
    mov r2, fp
    lsrs r3, r3, #24
    ldr r1, [pc, #60]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000492:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000492
    lsls r3, r6, #16
    mov r2, fp
    lsrs r3, r3, #24
    ldr r1, [pc, #44]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000004a4:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000004a4
    lsls r3, r6, #24
    mov r2, fp
    lsrs r3, r3, #24
    ldr r1, [pc, #24]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000004b6:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000004b6
    b.n .Lsec01_00000396
.Lsec01_000004be:
    movs r2, #128
    lsls r3, r2, #1
    mov r9, r3
    b.n .Lsec01_00000356
.Lsec01_000004c6:
    movs r2, #16
    mov r9, r2
    b.n .Lsec01_00000356
    .long 0x040001a0
    .long 0x040001a2
    .long 0xffffa040
.thumb
.thumb_func
cardEepromGetSize:
    push {r4, r5, r6, lr}
    sub sp, #8
.Lsec01_000004dc:
    bl cardEepromGetType
    adds r3, r0, #1
    beq.n .Lsec01_00000572
    cmp r0, #0
    beq.n .Lsec01_00000546
    cmp r0, #1
    beq.n .Lsec01_00000552
    cmp r0, #2
    bne.n .Lsec01_00000558
    add r4, sp, #4
    mov r6, sp
    ldr r0, [pc, #144]
    adds r1, r4, #0
    movs r2, #1
    movs r3, #2
    adds r6, #7
.Lsec01_000004fe:
    bl cardReadEeprom
    ldr r0, [pc, #136]
    adds r1, r6, #0
    movs r2, #1
    movs r3, #2
.Lsec01_0000050a:
    bl cardReadEeprom
    ldrb r3, [r4, #0]
    mov r1, sp
    adds r1, #6
    mvns r3, r3
    mov r5, sp
    strb r3, [r1, #0]
    ldr r0, [pc, #108]
    movs r2, #1
    movs r3, #2
    adds r5, #5
.Lsec01_00000522:
    bl cardWriteEeprom
    ldr r0, [pc, #100]
    adds r1, r5, #0
    movs r2, #1
    movs r3, #2
.Lsec01_0000052e:
    bl cardReadEeprom
    movs r2, #1
    movs r3, #2
    ldr r0, [pc, #80]
    adds r1, r4, #0
.Lsec01_0000053a:
    bl cardWriteEeprom
    ldrb r2, [r5, #0]
    ldrb r3, [r6, #0]
    cmp r2, r3
    beq.n .Lsec01_0000057c
.Lsec01_00000546:
    movs r0, #128
    lsls r0, r0, #6
.Lsec01_0000054a:
    add sp, #8
    pop {r4, r5, r6}
    pop {r1}
    bx r1
.Lsec01_00000552:
    movs r0, #128
    lsls r0, r0, #2
    b.n .Lsec01_0000054a
.Lsec01_00000558:
    cmp r0, #3
    bne.n .Lsec01_00000572
    movs r0, #159
    movs r1, #0
.Lsec01_00000560:
    bl cardEepromCommand
    cmp r0, #20
    beq.n .Lsec01_00000582
    cmp r0, #19
    bne.n .Lsec01_00000576
    movs r0, #128
    lsls r0, r0, #12
    b.n .Lsec01_0000054a
.Lsec01_00000572:
    movs r0, #0
    b.n .Lsec01_0000054a
.Lsec01_00000576:
    movs r0, #128
    lsls r0, r0, #11
    b.n .Lsec01_0000054a
.Lsec01_0000057c:
    movs r0, #128
    lsls r0, r0, #9
    b.n .Lsec01_0000054a
.Lsec01_00000582:
    movs r0, #128
    lsls r0, r0, #13
    b.n .Lsec01_0000054a
    .long 0x00001fff
    .long 0x00003fff
.thumb
.thumb_func
cardEepromSectorErase:
    push {r4, r5, lr}
    ldr r3, [pc, #156]
    ldr r1, [pc, #156]
    strh r3, [r1, #0]
    ldr r3, [pc, #156]
    movs r2, #6
    strb r2, [r3, #0]
    movs r2, #128
.Lsec01_000005a0:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000005a0
    movs r3, #64
    strh r3, [r1, #0]
    ldr r3, [pc, #132]
    ldr r2, [pc, #136]
    strh r3, [r1, #0]
    movs r3, #40
    negs r3, r3
    ldr r1, [pc, #124]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000005ba:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000005ba
    ldr r2, [pc, #116]
    lsls r3, r0, #8
    lsrs r3, r3, #24
    ldr r1, [pc, #108]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000005cc:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000005cc
    ldr r2, [pc, #100]
    lsls r3, r0, #16
    lsrs r3, r3, #24
    ldr r1, [pc, #88]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000005de:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000005de
    ldr r2, [pc, #80]
    lsls r3, r0, #24
    lsrs r3, r3, #24
    ldr r1, [pc, #72]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000005f0:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000005f0
    movs r3, #64
    strh r3, [r1, #0]
    ldr r3, [pc, #52]
    strh r3, [r1, #0]
    ldr r3, [pc, #56]
    movs r2, #5
    ldr r1, [pc, #48]
    strb r2, [r3, #0]
    movs r2, #128
.Lsec01_00000608:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000608
    ldr r0, [pc, #40]
    ldr r1, [pc, #32]
    movs r5, #0
    movs r2, #128
    movs r4, #1
.Lsec01_00000618:
    strb r5, [r0, #0]
.Lsec01_0000061a:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_0000061a
    ldrb r3, [r0, #0]
    tst r3, r4
    bne.n .Lsec01_00000618
    movs r3, #64
    strh r3, [r1, #0]
    pop {r4, r5}
    pop {r0}
    bx r0
    .long 0xffffa040
    .long 0x040001a0
    .long 0x040001a2
.thumb
.thumb_func
cardEepromChipErase:
    push {r4, lr}
.Lsec01_0000063e:
    bl cardEepromGetSize
    adds r4, r0, #0
    movs r0, #0
.Lsec01_00000646:
    bl cardEepromSectorErase
    movs r0, #128
    lsls r0, r0, #9
.Lsec01_0000064e:
    bl cardEepromSectorErase
    movs r0, #128
    lsls r0, r0, #10
.Lsec01_00000656:
    bl cardEepromSectorErase
    movs r0, #192
    lsls r0, r0, #10
.Lsec01_0000065e:
    bl cardEepromSectorErase
    movs r3, #128
    lsls r3, r3, #12
    cmp r4, r3
    beq.n .Lsec01_00000670
.Lsec01_0000066a:
    pop {r4}
    pop {r0}
    bx r0
.Lsec01_00000670:
    movs r0, #128
    lsls r0, r0, #11
.Lsec01_00000674:
    bl cardEepromSectorErase
    movs r0, #160
    lsls r0, r0, #11
.Lsec01_0000067c:
    bl cardEepromSectorErase
    movs r0, #192
    lsls r0, r0, #11
.Lsec01_00000684:
    bl cardEepromSectorErase
    movs r0, #224
    lsls r0, r0, #11
.Lsec01_0000068c:
    bl cardEepromSectorErase
    b.n .Lsec01_0000066a
    mov r8, r8

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata,"a",%progbits
.balign 1
C.38.1740:
.Lsec10_00000000:
    .long 0x00000000
    .long 0x90000000

.size C.38.1740, 8
.size cardWriteCommand, 40
.size cardPolledTransfer, 68
.size cardStartTransfer, 76
.size cardWriteAndRead, 52
.size cardRead00, 46
.size cardReadHeader, 28
.size cardReadID, 36
.size cardEepromCommand, 140
.size cardEepromReadID, 22
.size cardEepromGetType, 124
.size cardReadEeprom, 176
.size cardWriteEeprom, 428
.size cardEepromGetSize, 184
.size cardEepromSectorErase, 172
.size cardEepromChipErase, 86

.section .note.GNU-stack,"",%progbits
