/* Reconstructed mnemonic source for card.o. */
.syntax unified
.arch armv5te

.type C.43.1772, %object
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
    ldr r2, [pc, #20]
    negs r3, r3
    ldr r4, [pc, #20]
    strb r3, [r2, #0]
    movs r1, #0
.Lsec01_0000000e:
    ldrb r3, [r1, r0]
    subs r2, r4, r1
    adds r1, #1
    strb r3, [r2, #0]
    cmp r1, #8
    bne.n .Lsec01_0000000e
    pop {r4, pc}
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
.Lsec01_0000002e:
    bl cardWriteCommand
    ldr r3, [pc, #40]
    lsls r4, r4, #2
    movs r2, #128
    ldr r0, [pc, #36]
    str r5, [r3, #0]
    adds r4, r4, r6
    adds r1, r3, #0
    lsls r2, r2, #16
.Lsec01_00000042:
    ldr r3, [r1, #0]
    tst r3, r2
    beq.n .Lsec01_00000052
    ldr r3, [r0, #0]
    cmp r6, r4
    bcs.n .Lsec01_00000050
    str r3, [r6, #0]
.Lsec01_00000050:
    adds r6, #4
.Lsec01_00000052:
    ldr r3, [r1, #0]
    cmp r3, #0
    blt.n .Lsec01_00000042
    pop {r4, r5, r6, pc}
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
.Lsec01_0000006c:
    bl cardWriteCommand
    lsls r3, r4, #1
    adds r3, r3, r4
    ldr r2, [pc, #28]
    lsls r3, r3, #2
    adds r1, r3, r2
    ldr r2, [pc, #28]
    str r2, [r1, #0]
    ldr r1, [pc, #28]
    adds r2, r3, r1
    str r5, [r2, #0]
    ldr r2, [pc, #24]
    adds r3, r3, r2
    ldr r2, [pc, #24]
    str r2, [r3, #0]
    ldr r3, [pc, #24]
    str r6, [r3, #0]
    pop {r4, r5, r6, pc}
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
.Lsec01_000000b0:
    bl cardWriteCommand
    ldr r3, [pc, #24]
    movs r2, #128
    orrs r4, r3
    ldr r3, [pc, #24]
    lsls r2, r2, #16
    str r4, [r3, #0]
    adds r1, r3, #0
.Lsec01_000000c2:
    ldr r3, [r1, #0]
    tst r3, r2
    beq.n .Lsec01_000000c2
    ldr r3, [pc, #12]
    ldr r0, [r3, #0]
    pop {r4, pc}
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
.Lsec01_000000fe:
    bl cardPolledTransfer
    add sp, #8
    pop {r4, r5, r6, pc}
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
.Lsec01_00000116:
    bl cardRead00
    add sp, #4
    pop {pc}
    lsls r0, r0, #0
    .long 0xa93f1fff
.thumb
.thumb_func
cardReadID:
    push {r4, r5, lr}
    sub sp, #12
    adds r5, r0, #0
    movs r2, #8
    ldr r1, [pc, #16]
    mov r0, sp
.Lsec01_00000130:
    bl memcpy
    adds r1, r5, #0
    mov r0, sp
.Lsec01_00000138:
    bl cardWriteAndRead
    add sp, #12
    pop {r4, r5, pc}
    .long .Lsec10_00000000
.thumb
.thumb_func
cardEepromCommand:
    push {r4, r5, r6, lr}
    ldr r2, [pc, #120]
    ldr r3, [pc, #120]
    strh r3, [r2, #0]
    movs r3, #1
    negs r3, r3
    strh r3, [r2, #0]
    ldr r3, [pc, #116]
    strb r0, [r3, #0]
    movs r0, #128
.Lsec01_00000158:
    ldrh r3, [r2, #0]
    tst r3, r0
    bne.n .Lsec01_00000158
    ldr r2, [pc, #104]
    lsls r3, r1, #8
    lsrs r3, r3, #24
    ldr r0, [pc, #88]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_0000016a:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_0000016a
    ldr r2, [pc, #84]
    lsls r3, r1, #16
    lsrs r3, r3, #24
    ldr r0, [pc, #72]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_0000017c:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_0000017c
    lsls r3, r1, #24
    ldr r2, [pc, #64]
    lsrs r3, r3, #24
    ldr r1, [pc, #52]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_0000018e:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_0000018e
    movs r5, #128
    ldr r6, [pc, #48]
    ldr r1, [pc, #36]
    movs r4, #0
    movs r2, #128
    lsls r5, r5, #1
.Lsec01_000001a0:
    ldrb r3, [r6, #0]
    adds r0, r3, #0
    cmp r3, #255
    bne.n .Lsec01_000001b6
.Lsec01_000001a8:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000001a8
    adds r4, #1
    cmp r4, r5
    bne.n .Lsec01_000001a0
    movs r0, #255
.Lsec01_000001b6:
    ldr r3, [pc, #8]
    movs r2, #64
    strh r2, [r3, #0]
    pop {r4, r5, r6, pc}
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
.Lsec01_000001d8:
    bl cardEepromCommand
    add sp, #4
    pop {pc}
.thumb_func
cardEepromGetType:
    push {r4, r5, lr}
    ldr r3, [pc, #128]
    ldr r1, [pc, #128]
    ldrh r2, [r3, #0]
    sub sp, #4
    ands r2, r1
    strh r2, [r3, #0]
    movs r1, #0
    movs r0, #3
.Lsec01_000001f2:
    bl cardEepromCommand
    movs r1, #0
    movs r0, #5
.Lsec01_000001fa:
    bl cardEepromCommand
    movs r1, #0
    adds r5, r0, #0
    movs r0, #159
.Lsec01_00000204:
    bl cardEepromCommand
    movs r1, #0
    adds r4, r0, #0
    movs r0, #0
.Lsec01_0000020e:
    bl cardEepromCommand
    cmp r0, #0
    beq.n .Lsec01_0000021a
    cmp r0, #255
    beq.n .Lsec01_00000220
.Lsec01_0000021a:
    movs r0, #0
.Lsec01_0000021c:
    add sp, #4
    pop {r4, r5, pc}
.Lsec01_00000220:
    cmp r5, #255
    beq.n .Lsec01_00000254
    movs r3, #253
    adds r0, r5, #0
    ands r0, r3
    cmp r0, #240
    beq.n .Lsec01_0000024a
    cmp r0, #0
    bne.n .Lsec01_0000021a
    cmp r4, #255
    beq.n .Lsec01_0000025e
    cmp r4, #0
    beq.n .Lsec01_00000246
    cmp r4, #18
    beq.n .Lsec01_00000246
    cmp r4, #19
    beq.n .Lsec01_00000246
    cmp r4, #20
    bne.n .Lsec01_0000021a
.Lsec01_00000246:
    movs r0, #3
    b.n .Lsec01_0000021c
.Lsec01_0000024a:
    movs r0, #0
    cmp r4, #255
    bne.n .Lsec01_0000021c
    movs r0, #1
    b.n .Lsec01_0000021c
.Lsec01_00000254:
    cmp r4, #255
    bne.n .Lsec01_0000021a
    movs r0, #1
    negs r0, r0
    b.n .Lsec01_0000021c
.Lsec01_0000025e:
    movs r0, #2
    b.n .Lsec01_0000021c
    lsls r0, r0, #0
    .long 0x04000204
    .long 0xfffff77f
.thumb
.thumb_func
cardReadEeprom:
    push {r4, r5, r6, lr}
    adds r4, r2, #0
    adds r6, r3, #0
    ldr r2, [pc, #152]
    ldr r3, [pc, #152]
    adds r5, r1, #0
    strh r2, [r3, #0]
    cmp r6, #1
    beq.n .Lsec01_000002ea
    movs r2, #3
.Lsec01_00000280:
    ldr r3, [pc, #144]
    ldr r1, [pc, #140]
    strb r2, [r3, #0]
    movs r2, #128
.Lsec01_00000288:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000288
    cmp r6, #3
    beq.n .Lsec01_000002f8
    cmp r6, #1
    bls.n .Lsec01_000002a8
.Lsec01_00000296:
    ldr r2, [pc, #124]
    lsls r3, r0, #16
    lsrs r3, r3, #24
    ldr r1, [pc, #112]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000002a2:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000002a2
.Lsec01_000002a8:
    lsls r3, r0, #24
    ldr r2, [pc, #104]
    lsrs r3, r3, #24
    ldr r0, [pc, #96]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000002b4:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_000002b4
    cmp r4, #0
    beq.n .Lsec01_000002dc
    ldr r1, [pc, #84]
    ldr r0, [pc, #76]
    movs r6, #0
    movs r2, #128
.Lsec01_000002c6:
    strb r6, [r1, #0]
.Lsec01_000002c8:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_000002c8
    ldrb r3, [r1, #0]
    subs r4, #1
    strb r3, [r5, #0]
    cmp r4, #0
    beq.n .Lsec01_000002dc
    adds r5, #1
    b.n .Lsec01_000002c6
.Lsec01_000002dc:
    ldr r2, [pc, #48]
    ldrh r3, [r2, #0]
    lsls r1, r3, #24
    bmi.n .Lsec01_000002dc
    movs r3, #64
    strh r3, [r2, #0]
    pop {r4, r5, r6, pc}
.Lsec01_000002ea:
    lsrs r3, r0, #8
    movs r2, #3
    lsls r3, r3, #3
    orrs r3, r2
    lsls r3, r3, #24
    lsrs r2, r3, #24
    b.n .Lsec01_00000280
.Lsec01_000002f8:
    ldr r2, [pc, #24]
    lsls r3, r0, #8
    lsrs r3, r3, #24
    ldr r1, [pc, #16]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000304:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000304
    b.n .Lsec01_00000296
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
    bne.n .Lsec01_00000334
    b.n .Lsec01_000004ae
.Lsec01_00000334:
    cmp r3, #2
    beq.n .Lsec01_0000033e
    cmp r3, #3
    bne.n .Lsec01_0000033e
    b.n .Lsec01_000004a6
.Lsec01_0000033e:
    movs r2, #32
    mov r9, r2
.Lsec01_00000342:
    cmp r6, r8
    bcs.n .Lsec01_000003ec
    ldr r3, [pc, #364]
    ldr r2, [pc, #364]
    mov ip, r3
    mov fp, r2
.Lsec01_0000034e:
    ldr r2, [pc, #364]
    mov r3, ip
    strh r2, [r3, #0]
    movs r3, #6
    mov r2, fp
    strb r3, [r2, #0]
.Lsec01_0000035a:
    mov r2, ip
    ldrh r3, [r2, #0]
    movs r2, #128
    tst r3, r2
    bne.n .Lsec01_0000035a
    mov r3, ip
    movs r2, #64
    strh r2, [r3, #0]
    ldr r2, [pc, #336]
    strh r2, [r3, #0]
    mov r3, sl
    cmp r3, #1
    beq.n .Lsec01_000003f8
    mov r3, sl
    cmp r3, #2
    beq.n .Lsec01_0000042a
    mov r3, sl
    cmp r3, #3
    bne.n .Lsec01_00000382
    b.n .Lsec01_0000045e
.Lsec01_00000382:
    mov r3, r9
    cmp r3, #0
    ble.n .Lsec01_000003a8
    ldr r4, [pc, #300]
    ldr r1, [pc, #296]
    movs r0, #0
    movs r2, #128
.Lsec01_00000390:
    ldrb r3, [r7, #0]
    adds r7, #1
    strb r3, [r4, #0]
.Lsec01_00000396:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000396
    adds r6, #1
    cmp r8, r6
    bls.n .Lsec01_000003a8
    adds r0, #1
    cmp r9, r0
    bne.n .Lsec01_00000390
.Lsec01_000003a8:
    mov r2, ip
    movs r3, #64
    strh r3, [r2, #0]
    ldr r3, [pc, #268]
    ldr r1, [pc, #256]
    strh r3, [r2, #0]
    mov r2, fp
    movs r3, #5
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000003bc:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000003bc
    ldr r0, [pc, #244]
    ldr r1, [pc, #236]
    movs r5, #0
    movs r2, #128
    movs r4, #1
.Lsec01_000003cc:
    strb r5, [r0, #0]
.Lsec01_000003ce:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000003ce
    ldrb r3, [r0, #0]
    tst r3, r4
    bne.n .Lsec01_000003cc
    ldr r1, [pc, #216]
    movs r2, #128
.Lsec01_000003de:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000003de
    movs r3, #64
    strh r3, [r1, #0]
    cmp r8, r6
    bhi.n .Lsec01_0000034e
.Lsec01_000003ec:
    pop {r2, r3, r4, r5}
    mov r8, r2
    mov r9, r3
    mov sl, r4
    mov fp, r5
    pop {r4, r5, r6, r7, pc}
.Lsec01_000003f8:
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
.Lsec01_00000410:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_00000410
    lsls r3, r6, #24
    mov r2, fp
    lsrs r3, r3, #24
    ldr r0, [pc, #148]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000422:
    ldrh r3, [r0, #0]
    tst r3, r2
    bne.n .Lsec01_00000422
    b.n .Lsec01_00000382
.Lsec01_0000042a:
    mov r2, fp
    ldr r1, [pc, #132]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000432:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000432
    lsls r3, r6, #16
    mov r2, fp
    lsrs r3, r3, #24
    ldr r1, [pc, #116]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000444:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000444
    lsls r3, r6, #24
    mov r2, fp
    lsrs r3, r3, #24
    ldr r1, [pc, #96]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000456:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000456
    b.n .Lsec01_00000382
.Lsec01_0000045e:
    mov r2, fp
    movs r3, #2
    ldr r1, [pc, #80]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_00000468:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000468
    lsls r3, r6, #8
    mov r2, fp
    lsrs r3, r3, #24
    ldr r1, [pc, #60]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_0000047a:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_0000047a
    lsls r3, r6, #16
    mov r2, fp
    lsrs r3, r3, #24
    ldr r1, [pc, #44]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_0000048c:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_0000048c
    lsls r3, r6, #24
    mov r2, fp
    lsrs r3, r3, #24
    ldr r1, [pc, #24]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_0000049e:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_0000049e
    b.n .Lsec01_00000382
.Lsec01_000004a6:
    movs r2, #128
    lsls r3, r2, #1
    mov r9, r3
    b.n .Lsec01_00000342
.Lsec01_000004ae:
    movs r2, #16
    mov r9, r2
    b.n .Lsec01_00000342
    .long 0x040001a0
    .long 0x040001a2
    .long 0xffffa040
.thumb
.thumb_func
cardEepromGetSize:
    push {r4, r5, r6, lr}
    sub sp, #8
.Lsec01_000004c4:
    bl cardEepromGetType
    adds r3, r0, #1
    beq.n .Lsec01_00000556
    cmp r0, #0
    beq.n .Lsec01_0000052e
    cmp r0, #1
    beq.n .Lsec01_00000536
    cmp r0, #2
    bne.n .Lsec01_0000053c
    add r4, sp, #4
    mov r6, sp
    ldr r0, [pc, #140]
    adds r1, r4, #0
    movs r2, #1
    movs r3, #2
    adds r6, #7
.Lsec01_000004e6:
    bl cardReadEeprom
    ldr r0, [pc, #132]
    adds r1, r6, #0
    movs r2, #1
    movs r3, #2
.Lsec01_000004f2:
    bl cardReadEeprom
    ldrb r3, [r4, #0]
    mov r1, sp
    adds r1, #6
    mvns r3, r3
    mov r5, sp
    strb r3, [r1, #0]
    ldr r0, [pc, #104]
    movs r2, #1
    movs r3, #2
    adds r5, #5
.Lsec01_0000050a:
    bl cardWriteEeprom
    ldr r0, [pc, #96]
    adds r1, r5, #0
    movs r2, #1
    movs r3, #2
.Lsec01_00000516:
    bl cardReadEeprom
    movs r2, #1
    movs r3, #2
    ldr r0, [pc, #76]
    adds r1, r4, #0
.Lsec01_00000522:
    bl cardWriteEeprom
    ldrb r2, [r5, #0]
    ldrb r3, [r6, #0]
    cmp r2, r3
    beq.n .Lsec01_00000560
.Lsec01_0000052e:
    movs r0, #128
    lsls r0, r0, #6
.Lsec01_00000532:
    add sp, #8
    pop {r4, r5, r6, pc}
.Lsec01_00000536:
    movs r0, #128
    lsls r0, r0, #2
    b.n .Lsec01_00000532
.Lsec01_0000053c:
    cmp r0, #3
    bne.n .Lsec01_00000556
    movs r0, #159
    movs r1, #0
.Lsec01_00000544:
    bl cardEepromCommand
    cmp r0, #20
    beq.n .Lsec01_00000566
    cmp r0, #19
    bne.n .Lsec01_0000055a
    movs r0, #128
    lsls r0, r0, #12
    b.n .Lsec01_00000532
.Lsec01_00000556:
    movs r0, #0
    b.n .Lsec01_00000532
.Lsec01_0000055a:
    movs r0, #128
    lsls r0, r0, #11
    b.n .Lsec01_00000532
.Lsec01_00000560:
    movs r0, #128
    lsls r0, r0, #9
    b.n .Lsec01_00000532
.Lsec01_00000566:
    movs r0, #128
    lsls r0, r0, #13
    b.n .Lsec01_00000532
    .long 0x00001fff
    .long 0x00003fff
.thumb
.thumb_func
cardEepromSectorErase:
    push {r4, r5, lr}
    ldr r3, [pc, #152]
    ldr r1, [pc, #152]
    movs r2, #6
    strh r3, [r1, #0]
    ldr r3, [pc, #152]
    strb r2, [r3, #0]
    movs r2, #128
.Lsec01_00000584:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_00000584
    movs r3, #64
    strh r3, [r1, #0]
    ldr r3, [pc, #128]
    ldr r2, [pc, #132]
    strh r3, [r1, #0]
    movs r3, #40
    negs r3, r3
    ldr r1, [pc, #120]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_0000059e:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_0000059e
    ldr r2, [pc, #112]
    lsls r3, r0, #8
    lsrs r3, r3, #24
    ldr r1, [pc, #104]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000005b0:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000005b0
    ldr r2, [pc, #96]
    lsls r3, r0, #16
    lsrs r3, r3, #24
    ldr r1, [pc, #84]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000005c2:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000005c2
    ldr r2, [pc, #76]
    lsls r3, r0, #24
    lsrs r3, r3, #24
    ldr r1, [pc, #68]
    strb r3, [r2, #0]
    movs r2, #128
.Lsec01_000005d4:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000005d4
    movs r3, #64
    strh r3, [r1, #0]
    ldr r3, [pc, #48]
    movs r2, #5
    strh r3, [r1, #0]
    ldr r3, [pc, #48]
    ldr r1, [pc, #44]
    strb r2, [r3, #0]
    movs r2, #128
.Lsec01_000005ec:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000005ec
    ldr r0, [pc, #36]
    ldr r1, [pc, #28]
    movs r5, #0
    movs r2, #128
    movs r4, #1
.Lsec01_000005fc:
    strb r5, [r0, #0]
.Lsec01_000005fe:
    ldrh r3, [r1, #0]
    tst r3, r2
    bne.n .Lsec01_000005fe
    ldrb r3, [r0, #0]
    tst r3, r4
    bne.n .Lsec01_000005fc
    movs r3, #64
    strh r3, [r1, #0]
    pop {r4, r5, pc}
    .long 0xffffa040
    .long 0x040001a0
    .long 0x040001a2
.thumb
.thumb_func
cardEepromChipErase:
    push {r4, lr}
.Lsec01_0000061e:
    bl cardEepromGetSize
    adds r4, r0, #0
    movs r0, #0
.Lsec01_00000626:
    bl cardEepromSectorErase
    movs r0, #128
    lsls r0, r0, #9
.Lsec01_0000062e:
    bl cardEepromSectorErase
    movs r0, #128
    lsls r0, r0, #10
.Lsec01_00000636:
    bl cardEepromSectorErase
    movs r0, #192
    lsls r0, r0, #10
.Lsec01_0000063e:
    bl cardEepromSectorErase
    movs r3, #128
    lsls r3, r3, #12
    cmp r4, r3
    beq.n .Lsec01_0000064c
.Lsec01_0000064a:
    pop {r4, pc}
.Lsec01_0000064c:
    movs r0, #128
    lsls r0, r0, #11
.Lsec01_00000650:
    bl cardEepromSectorErase
    movs r0, #160
    lsls r0, r0, #11
.Lsec01_00000658:
    bl cardEepromSectorErase
    movs r0, #192
    lsls r0, r0, #11
.Lsec01_00000660:
    bl cardEepromSectorErase
    movs r0, #224
    lsls r0, r0, #11
.Lsec01_00000668:
    bl cardEepromSectorErase
    b.n .Lsec01_0000064a
    mov r8, r8

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata,"a",%progbits
.balign 1
C.43.1772:
.Lsec10_00000000:
    .long 0x00000000
    .long 0x90000000

.size C.43.1772, 8
.size cardWriteCommand, 36
.size cardPolledTransfer, 64
.size cardStartTransfer, 72
.size cardWriteAndRead, 48
.size cardRead00, 42
.size cardReadHeader, 28
.size cardReadID, 32
.size cardEepromCommand, 136
.size cardEepromReadID, 20
.size cardEepromGetType, 140
.size cardReadEeprom, 172
.size cardWriteEeprom, 424
.size cardEepromGetSize, 180
.size cardEepromSectorErase, 168
.size cardEepromChipErase, 82

.section .note.GNU-stack,"",%progbits
