/* Reconstructed mnemonic source for deflate.o. */
.syntax unified
.arch armv5te

.type putShortMSB, %function
.type longest_match, %function
.type longest_match_fast, %function
.type fill_window, %function
.type flush_pending, %function
.type deflate_slow, %function
.type deflate_fast, %function
.type deflate_stored, %function
.type configuration_table, %object
.global deflateSetHeader
.type deflateSetHeader, %function
.global deflatePrime
.type deflatePrime, %function
.global deflateTune
.type deflateTune, %function
.global deflateEnd
.type deflateEnd, %function
.global deflateCopy
.type deflateCopy, %function
.global deflate
.type deflate, %function
.global deflateParams
.type deflateParams, %function
.global deflateSetDictionary
.type deflateSetDictionary, %function
.global deflateBound
.type deflateBound, %function
.global deflateReset
.type deflateReset, %function
.global deflateInit2_
.type deflateInit2_, %function
.global deflateInit_
.type deflateInit_, %function
.global deflate_copyright
.type deflate_copyright, %object

.section .text,"ax",%progbits
.balign 4
.arm
deflateSetHeader:
    cmp r0, #0
    beq .Lsec01_00000028
    ldr r0, [r0, #28]
    cmp r0, #0
    beq .Lsec01_00000028
    ldr r3, [r0, #24]
    cmp r3, #2
    streq r1, [r0, #28]
    mov r3, #0
    beq .Lsec01_0000002c
.Lsec01_00000028:
    mvn r3, #1
.Lsec01_0000002c:
    mov r0, r3
    bx lr
deflatePrime:
    cmp r0, #0
    beq .Lsec01_00000068
    ldr r0, [r0, #28]
    cmp r0, #0
    mov ip, #0
    beq .Lsec01_00000068
    mvn r3, #0
    bic r3, r2, r3, lsl r1
    ldr r2, [pc, #24]
    strh r3, [r0, r2]
    ldr r3, [pc, #20]
    str r1, [r0, r3]
    b .Lsec01_0000006c
.Lsec01_00000068:
    mvn ip, #1
.Lsec01_0000006c:
    mov r0, ip
    bx lr
    .long 0x000016b8
    .long 0x000016bc
.arm
deflateTune:
    cmp r0, #0
    str lr, [sp, #-4]!
    mov ip, r3
    beq .Lsec01_000000b4
    ldr r0, [r0, #28]
    cmp r0, #0
    mov lr, #0
    beq .Lsec01_000000b4
    ldr r3, [sp, #4]
    str r1, [r0, #140]
    str r3, [r0, #124]
    str r2, [r0, #128]
    str ip, [r0, #144]
    b .Lsec01_000000b8
.Lsec01_000000b4:
    mvn lr, #1
.Lsec01_000000b8:
    mov r0, lr
    ldr lr, [sp], #4
    bx lr
putShortMSB:
    ldr r2, [r0, #20]
    ldr ip, [r0, #8]
    mov r3, r1, lsr #8
    strb r3, [ip, r2]
    add r2, r2, #1
    ldr r3, [r0, #8]
    add ip, r2, #1
    strb r1, [r3, r2]
    str ip, [r0, #20]
    bx lr
deflateEnd:
    stmdb sp!, {r4, r5, lr}
    subs r4, r0, #0
    sub sp, sp, #4
    beq .Lsec01_000001d4
    ldr r1, [r4, #28]
    cmp r1, #0
    beq .Lsec01_000001d4
    ldr r5, [r1, #4]
    cmp r5, #42
    cmpne r5, #69
    beq .Lsec01_0000013c
    cmp r5, #73
    cmpne r5, #91
    beq .Lsec01_0000013c
    cmp r5, #103
    cmpne r5, #113
    beq .Lsec01_0000013c
    ldr r3, [pc, #172]
    cmp r5, r3
    bne .Lsec01_000001d4
.Lsec01_0000013c:
    ldr r1, [r1, #8]
    cmp r1, #0
    ldrne r0, [r4, #40]
    ldrne ip, [r4, #36]
    movne lr, pc
    bxne ip
    ldr r3, [r4, #28]
    ldr r1, [r3, #68]
    cmp r1, #0
    ldrne r0, [r4, #40]
    ldrne ip, [r4, #36]
    movne lr, pc
    bxne ip
    ldr r3, [r4, #28]
    ldr r1, [r3, #64]
    cmp r1, #0
    ldrne r0, [r4, #40]
    ldrne ip, [r4, #36]
    movne lr, pc
    bxne ip
    ldr r3, [r4, #28]
    ldr r1, [r3, #56]
    cmp r1, #0
    ldrne r0, [r4, #40]
    ldrne ip, [r4, #36]
    movne lr, pc
    bxne ip
    ldr r0, [r4, #40]
    ldr r1, [r4, #28]
    ldr ip, [r4, #36]
    mov lr, pc
    bx ip
    cmp r5, #113
    mov r3, #0
    movne r0, #0
    mvneq r0, #2
    str r3, [r4, #28]
    b .Lsec01_000001d8
.Lsec01_000001d4:
    mvn r0, #1
.Lsec01_000001d8:
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
    .long 0x0000029a
.arm
deflateCopy:
    mvn r0, #1
    bx lr
longest_match:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr lr, [r0, #44]
    ldr ip, [r0, #108]
    sub r3, lr, #260
    sub r3, r3, #2
    cmp ip, r3
    rsbhi r3, lr, ip
    ldr r2, [r0, #56]
    ldr r4, [r0, #120]
    addhi fp, r3, #260
    ldr r3, [r0, #140]
    mov r6, r1
    add r1, ip, r2
    movls fp, #0
    addhi fp, fp, #2
    cmp r4, r3
    add r3, r1, r4
    ldrb r5, [r3, #-1]
    ldr r2, [r0, #64]
    ldr r3, [r0, #52]
    sub sp, sp, #20
    stmib sp, {r2, r3}
    ldr sl, [r0, #124]
    ldr r9, [r0, #144]
    ldr r3, [r0, #116]
    add r8, r1, #256
    ldrb r2, [r1, r4]
    movcs sl, sl, lsr #2
    add r8, r8, #2
    cmp r9, r3
    movcs r9, r3
.Lsec01_0000026c:
    ldr ip, [r0, #56]
    add lr, r6, ip
    ldrb r7, [lr, r4]
    cmp r7, r2
    movne r7, r2
    bne .Lsec01_000003b0
    add r3, lr, r4
    ldrb r3, [r3, #-1]
    cmp r3, r5
    str r3, [sp, #12]
    bne .Lsec01_000003b0
    ldrb r2, [r6, ip]
    ldrb r3, [r1]
    cmp r2, r3
    bne .Lsec01_000003ac
    ldrb r2, [lr, #1]
    ldrb r3, [r1, #1]
    cmp r2, r3
    bne .Lsec01_000003ac
    add ip, r1, #2
    mov r1, lr
.Lsec01_000002c0:
    ldrb r2, [ip, #1]
    ldrb r3, [r1, #3]
    cmp r2, r3
    add lr, ip, #1
    bne .Lsec01_00000370
    ldrb r2, [ip, #2]
    ldrb r3, [r1, #4]
    cmp r2, r3
    add lr, ip, #2
    bne .Lsec01_00000370
    ldrb r2, [ip, #3]
    ldrb r3, [r1, #5]
    cmp r2, r3
    add lr, ip, #3
    bne .Lsec01_00000370
    ldrb r2, [ip, #4]
    ldrb r3, [r1, #6]
    cmp r2, r3
    add lr, ip, #4
    bne .Lsec01_00000370
    ldrb r2, [ip, #5]
    ldrb r3, [r1, #7]
    cmp r2, r3
    add lr, ip, #5
    bne .Lsec01_00000370
    ldrb r2, [ip, #6]
    ldrb r3, [r1, #8]
    cmp r2, r3
    add lr, ip, #6
    bne .Lsec01_00000370
    ldrb r2, [ip, #7]
    ldrb r3, [r1, #9]
    cmp r2, r3
    add lr, ip, #7
    bne .Lsec01_00000370
    ldrb r2, [ip, #8]
    ldrb r3, [r1, #10]
    add lr, ip, #8
    cmp r2, r3
    mov ip, lr
    add r1, r1, #8
    bne .Lsec01_00000370
    cmp lr, r8
    bcc .Lsec01_000002c0
.Lsec01_00000370:
    rsb r3, lr, r8
    rsb r2, r3, #256
    add r2, r2, #2
    sub r1, r8, #256
    cmp r2, r4
    sub r1, r1, #2
    ble .Lsec01_000003ac
    cmp r2, r9
    str r6, [r0, #112]
    bge .Lsec01_000003dc
    add r3, r1, r2
    ldrb r5, [r3, #-1]
    ldrb r7, [r1, r2]
    mov r4, r2
    b .Lsec01_000003b0
.Lsec01_000003ac:
    ldr r5, [sp, #12]
.Lsec01_000003b0:
    ldr r2, [sp, #8]
    and r3, r6, r2
    ldr r2, [sp, #4]
    mov r3, r3, lsl #1
    ldrh r6, [r3, r2]
    cmp r6, fp
    bls .Lsec01_000003e0
    subs sl, sl, #1
    beq .Lsec01_000003e0
    mov r2, r7
    b .Lsec01_0000026c
.Lsec01_000003dc:
    mov r4, r2
.Lsec01_000003e0:
    ldr r0, [r0, #116]
    cmp r4, r0
    movcc r0, r4
    add sp, sp, #20
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
longest_match_fast:
    stmdb sp!, {r4, r5, lr}
    ldr r3, [r0, #56]
    mov r4, r0
    ldr r0, [r0, #108]
    mov r5, r1
    ldrb r2, [r3, r5]
    ldrb r1, [r3, r0]
    add r0, r3, r0
    add lr, r0, #256
    cmp r2, r1
    add lr, lr, #2
    add ip, r3, r5
    bne .Lsec01_00000518
    ldrb r2, [ip, #1]
    ldrb r3, [r0, #1]
    cmp r2, r3
    bne .Lsec01_00000518
    add r1, r0, #2
.Lsec01_00000440:
    ldrb r2, [r1, #1]
    ldrb r3, [ip, #3]
    cmp r2, r3
    add r0, r1, #1
    bne .Lsec01_000004f0
    ldrb r2, [r1, #2]
    ldrb r3, [ip, #4]
    cmp r2, r3
    add r0, r1, #2
    bne .Lsec01_000004f0
    ldrb r2, [r1, #3]
    ldrb r3, [ip, #5]
    cmp r2, r3
    add r0, r1, #3
    bne .Lsec01_000004f0
    ldrb r2, [r1, #4]
    ldrb r3, [ip, #6]
    cmp r2, r3
    add r0, r1, #4
    bne .Lsec01_000004f0
    ldrb r2, [r1, #5]
    ldrb r3, [ip, #7]
    cmp r2, r3
    add r0, r1, #5
    bne .Lsec01_000004f0
    ldrb r2, [r1, #6]
    ldrb r3, [ip, #8]
    cmp r2, r3
    add r0, r1, #6
    bne .Lsec01_000004f0
    ldrb r2, [r1, #7]
    ldrb r3, [ip, #9]
    cmp r2, r3
    add r0, r1, #7
    bne .Lsec01_000004f0
    ldrb r2, [r1, #8]
    ldrb r3, [ip, #10]
    add r0, r1, #8
    cmp r2, r3
    mov r1, r0
    add ip, ip, #8
    bne .Lsec01_000004f0
    cmp r0, lr
    bcc .Lsec01_00000440
.Lsec01_000004f0:
    rsb r3, r0, lr
    rsb r0, r3, #256
    add r0, r0, #2
    cmp r0, #2
    ble .Lsec01_00000518
    ldr r3, [r4, #116]
    cmp r0, r3
    movcs r0, r3
    str r5, [r4, #112]
    b .Lsec01_0000051c
.Lsec01_00000518:
    mov r0, #2
.Lsec01_0000051c:
    ldmia sp!, {r4, r5, lr}
    bx lr
fill_window:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    ldr r7, [r0, #44]
    sub sp, sp, #4
    mov r5, r0
    mov fp, r7, lsl #1
.Lsec01_00000538:
    ldr r3, [r5, #44]
    add r3, r7, r3
    ldr r0, [r5, #108]
    sub r3, r3, #260
    ldr r2, [r5, #60]
    ldr r1, [r5, #116]
    sub r3, r3, #2
    rsb r2, r1, r2
    cmp r0, r3
    rsb r6, r0, r2
    bcc .Lsec01_000005fc
    ldr r0, [r5, #56]
    mov r2, r7
    add r1, r0, r7
.Lsec01_00000570:
    bl memcpy
    add r2, r5, #108
    ldmia r2, {r2, r3}
    ldr r1, [r5, #92]
    rsb r3, r7, r3
    rsb r2, r7, r2
    ldr ip, [r5, #76]
    ldr r0, [r5, #68]
    rsb r1, r7, r1
    str r3, [r5, #112]
    str r2, [r5, #108]
    str r1, [r5, #92]
    add r1, r0, ip, lsl #1
.Lsec01_000005a4:
    ldrh r3, [r1, #-2]
    rsb r2, r7, r3
    cmp r3, r7
    mov r2, r2, lsl #16
    mov r3, #0
    movcs r3, r2, lsr #16
    subs ip, ip, #1
    strh r3, [r1, #-2]!
    bne .Lsec01_000005a4
    ldr r3, [r5, #64]
    mov r1, r7
    add r0, fp, r3
.Lsec01_000005d4:
    ldrh r3, [r0, #-2]
    rsb r2, r7, r3
    cmp r3, r7
    mov r2, r2, lsl #16
    mov r3, #0
    movcs r3, r2, lsr #16
    subs r1, r1, #1
    strh r3, [r0, #-2]!
    bne .Lsec01_000005d4
    add r6, r6, r7
.Lsec01_000005fc:
    ldr r4, [r5]
    ldr r3, [r4, #4]
    cmp r3, #0
    beq .Lsec01_00000700
    cmp r3, r6
    ldr r9, [r5, #56]
    ldr sl, [r5, #108]
    ldr r8, [r5, #116]
    movls r6, r3
    bls .Lsec01_0000062c
    cmp r6, #0
    beq .Lsec01_000006a0
.Lsec01_0000062c:
    rsb r3, r6, r3
    str r3, [r4, #4]
    ldr r3, [r4, #28]
    ldr r3, [r3, #24]
    cmp r3, #1
    bne .Lsec01_00000658
    ldr r0, [r4, #48]
    ldr r1, [r4]
    mov r2, r6
.Lsec01_00000650:
    bl adler32
    b .Lsec01_00000670
.Lsec01_00000658:
    cmp r3, #2
    bne .Lsec01_00000674
    ldr r0, [r4, #48]
    ldr r1, [r4]
    mov r2, r6
.Lsec01_0000066c:
    bl crc32
.Lsec01_00000670:
    str r0, [r4, #48]
.Lsec01_00000674:
    add r0, r9, sl
    mov r2, r6
    add r0, r0, r8
    ldr r1, [r4]
.Lsec01_00000684:
    bl memcpy
    ldr r2, [r4]
    ldr r3, [r4, #8]
    add r2, r2, r6
    add r3, r3, r6
    str r3, [r4, #8]
    str r2, [r4]
.Lsec01_000006a0:
    ldr r3, [r5, #116]
    add r3, r3, r6
    cmp r3, #2
    str r3, [r5, #116]
    bls .Lsec01_000006e0
    ldr r2, [r5, #108]
    ldr r3, [r5, #56]
    ldrb r1, [r3, r2]
    str r1, [r5, #72]
    add r3, r3, r2
    ldrb r3, [r3, #1]
    ldr r2, [r5, #88]
    eor r3, r3, r1, lsl r2
    ldr r2, [r5, #84]
    and r3, r3, r2
    str r3, [r5, #72]
.Lsec01_000006e0:
    ldr r2, [r5, #116]
    ldr r3, [pc, #32]
    cmp r2, r3
    bhi .Lsec01_00000700
    ldr r3, [r5]
    ldr r3, [r3, #4]
    cmp r3, #0
    bne .Lsec01_00000538
.Lsec01_00000700:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x00000105
.arm
flush_pending:
    ldr r1, [r0, #28]
    stmdb sp!, {r4, r5, lr}
    ldr r2, [r0, #16]
    ldr r3, [r1, #20]
    cmp r3, r2
    movcc r5, r3
    movcs r5, r2
    subs r2, r5, #0
    sub sp, sp, #4
    mov r4, r0
    beq .Lsec01_00000794
    ldr r1, [r1, #16]
    ldr r0, [r0, #12]
.Lsec01_00000744:
    bl memcpy
    add r2, r4, #12
    ldmia r2, {r2, r3}
    rsb r3, r5, r3
    ldr r0, [r4, #28]
    str r3, [r4, #16]
    add r2, r2, r5
    str r2, [r4, #12]
    ldr r1, [r0, #20]
    ldr r3, [r0, #16]
    rsb r1, r5, r1
    add r3, r3, r5
    ldr r2, [r4, #20]
    cmp r1, #0
    str r3, [r0, #16]
    ldreq r3, [r0, #8]
    add r2, r2, r5
    str r2, [r4, #20]
    str r1, [r0, #20]
    streq r3, [r0, #16]
.Lsec01_00000794:
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
deflate_slow:
.Lsec01_000007a0:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    mov r8, r0
    mov sl, r1
    mov r9, #0
.Lsec01_000007b0:
    ldr r4, [pc, #1252]
    ldr r3, [r8, #116]
    cmp r3, r4
    bhi .Lsec01_000007e0
    mov r0, r8
    bl fill_window
    ldr r5, [r8, #116]
    cmp r5, r4
    cmpls sl, #0
    beq .Lsec01_00000c90
    cmp r5, #0
    beq .Lsec01_00000bc0
.Lsec01_000007e0:
    ldr r3, [r8, #116]
    cmp r3, #2
    bls .Lsec01_0000083c
    ldr lr, [r8, #108]
    ldr r3, [r8, #56]
    add r3, r3, lr
    ldrb r1, [r3, #2]
    ldr r2, [r8, #72]
    ldr r3, [r8, #88]
    eor r1, r1, r2, lsl r3
    ldr r3, [r8, #84]
    ldr r4, [r8, #68]
    and r1, r1, r3
    ldr r3, [r8, #52]
    mov r0, r1, lsl #1
    ldrh ip, [r0, r4]
    and r3, lr, r3
    ldr r2, [r8, #64]
    mov r3, r3, lsl #1
    strh ip, [r3, r2]
    str r1, [r8, #72]
    strh lr, [r0, r4]
    mov r9, ip
.Lsec01_0000083c:
    ldr r2, [r8, #96]
    ldr r3, [r8, #112]
    mov r0, #2
    cmp r9, #0
    str r3, [r8, #100]
    str r2, [r8, #120]
    str r0, [r8, #96]
    beq .Lsec01_00000904
    ldr r3, [r8, #128]
    cmp r2, r3
    bcs .Lsec01_00000904
    ldr r3, [r8, #44]
    ldr r2, [r8, #108]
    sub r3, r3, #260
    rsb r2, r9, r2
    sub r3, r3, #2
    cmp r2, r3
    bhi .Lsec01_00000904
    ldr r1, [r8, #136]
    sub r3, r1, #2
    cmp r3, #1
    bls .Lsec01_000008a4
    mov r0, r8
    mov r1, r9
    bl longest_match
    b .Lsec01_000008c4
.Lsec01_000008a4:
    cmp r1, #3
    movne r2, r0
    bne .Lsec01_000008d4
    cmp r2, #1
    bne .Lsec01_00000904
    mov r0, r8
    mov r1, r9
    bl longest_match_fast
.Lsec01_000008c4:
    str r0, [r8, #96]
    ldr r2, [r8, #96]
    cmp r2, #5
    bhi .Lsec01_00000904
.Lsec01_000008d4:
    ldr r3, [r8, #136]
    cmp r3, #1
    beq .Lsec01_000008fc
    cmp r2, #3
    bne .Lsec01_00000904
    add r2, r8, #108
    ldmia r2, {r2, r3}
    sub r3, r2, r3
    cmp r3, #4096
    bls .Lsec01_00000904
.Lsec01_000008fc:
    mov r3, #2
    str r3, [r8, #96]
.Lsec01_00000904:
    ldr ip, [r8, #120]
    cmp ip, #2
    bls .Lsec01_00000ac4
    ldr r3, [r8, #96]
    cmp r3, ip
    bhi .Lsec01_00000ac4
    ldr r3, [pc, #892]
    sub ip, ip, #3
    ldr lr, [r8, #108]
    ldr r2, [r8, #100]
    and ip, ip, #255
    ldr r7, [pc, #876]
    ldrb r1, [r3, ip]
    ldr r3, [pc, #872]
    rsb r2, r2, lr
    ldr r0, [r8, r7]
    ldr r5, [r8, r3]
    sub r2, r2, #1
    sub r3, r3, #12
    ldr r6, [r8, r3]
    mov r2, r2, lsl #16
    add r1, r1, #256
    mov r3, r0, lsl #1
    mov r2, r2, lsr #16
    add r4, r0, #1
    add r1, r1, #1
    strh r2, [r3, r5]
    add r1, r8, r1, lsl #2
    ldr r5, [r8, #116]
    strb ip, [r6, r0]
    str r4, [r8, r7]
    add r1, r1, #144
    sub r2, r2, #1
    ldrh r3, [r1, #4]
    mov ip, r2, lsl #16
    mov r0, ip, lsr #16
    ldr r2, [pc, #784]
    add r3, r3, #1
    cmp r0, #255
    strh r3, [r1, #4]
    addhi r3, r2, ip, lsr #23
    ldrhib r2, [r3, #256]
    ldrlsb r2, [r2, r0]
    ldr r1, [pc, #760]
    add r2, r8, r2, lsl #2
    ldrh r3, [r2, r1]
    add r3, r3, #1
    strh r3, [r2, r1]
    ldr r2, [r8, #120]
    ldr r3, [r8, #116]
    rsb r3, r2, r3
    add r3, r3, #1
    str r3, [r8, #116]
    ldr r3, [pc, #708]
    sub r2, r2, #2
    ldr r6, [r8, r3]
    sub r3, r3, #4
    add lr, lr, r5
    str r2, [r8, #120]
    ldr r5, [r8, r3]
    sub r7, lr, #3
.Lsec01_000009f8:
    ldr r3, [r8, #108]
    add r4, r3, #1
    cmp r4, r7
    str r4, [r8, #108]
    bhi .Lsec01_00000a58
    ldr r3, [r8, #56]
    add r3, r3, r4
    ldrb r2, [r3, #2]
    ldr ip, [r8, #72]
    ldr r1, [r8, #88]
    eor r2, r2, ip, lsl r1
    ldr r0, [r8, #84]
    ldr lr, [r8, #68]
    and r2, r2, r0
    ldr r3, [r8, #52]
    mov ip, r2, lsl #1
    ldrh r0, [ip, lr]
    and r3, r4, r3
    ldr r1, [r8, #64]
    mov r3, r3, lsl #1
    strh r0, [r3, r1]
    str r2, [r8, #72]
    strh r4, [ip, lr]
    mov r9, r0
.Lsec01_00000a58:
    ldr r3, [r8, #120]
    sub r1, r3, #1
    cmp r1, #0
    str r1, [r8, #120]
    bne .Lsec01_000009f8
    ldr r3, [r8, #108]
    sub r2, r5, #1
    cmp r6, r2
    add r2, r3, #1
    mov r3, #2
    str r3, [r8, #96]
    str r1, [r8, #104]
    str r2, [r8, #108]
    bne .Lsec01_000007b0
    ldr r0, [r8, #92]
    cmp r0, #0
    ldrge r3, [r8, #56]
    rsb r2, r0, r2
    addge r1, r0, r3
    mov r0, r8
    mov r3, #0
.Lsec01_00000aac:
    bl _tr_flush_block
    ldr r3, [r8, #108]
    ldr r0, [r8]
    str r3, [r8, #92]
    bl flush_pending
    b .Lsec01_00000b8c
.Lsec01_00000ac4:
    ldr r3, [r8, #104]
    cmp r3, #0
    ldr r1, [r8, #108]
    beq .Lsec01_00000ba0
    ldr r3, [r8, #56]
    add r3, r3, r1
    ldrb r2, [r3, #-1]
    ldr lr, [pc, #444]
    ldr r3, [pc, #444]
    ldr r1, [r8, lr]
    ldr r4, [r8, r3]
    sub r3, r3, #12
    ldr r0, [r8, r3]
    add ip, r1, #1
    mov r3, r1, lsl #1
    mov r5, #0
    strh r5, [r3, r4]
    strb r2, [r0, r1]
    str ip, [r8, lr]
    add r2, r8, r2, lsl #2
    add r2, r2, #144
    ldrh r3, [r2, #4]
    add r3, r3, #1
    strh r3, [r2, #4]
    ldr r3, [pc, #392]
    ldr r3, [r8, r3]
    ldr r2, [r8, lr]
    sub r3, r3, #1
    cmp r2, r3
    bne .Lsec01_00000b74
    ldr r0, [r8, #92]
    cmp r0, #0
    ldrge r3, [r8, #56]
    ldr r2, [r8, #108]
    addge r1, r0, r3
    rsb r2, r0, r2
    mov r3, #0
    mov r0, r8
    movlt r1, #0
.Lsec01_00000b60:
    bl _tr_flush_block
    ldr r3, [r8, #108]
    ldr r0, [r8]
    str r3, [r8, #92]
    bl flush_pending
.Lsec01_00000b74:
    ldr r3, [r8, #108]
    ldr r2, [r8, #116]
    add r3, r3, #1
    sub r2, r2, #1
    str r3, [r8, #108]
    str r2, [r8, #116]
.Lsec01_00000b8c:
    ldr r3, [r8]
    ldr r3, [r3, #16]
    cmp r3, #0
    bne .Lsec01_000007b0
    b .Lsec01_00000c90
.Lsec01_00000ba0:
    ldr r3, [r8, #116]
    add r1, r1, #1
    sub r3, r3, #1
    mov r2, #1
    str r2, [r8, #104]
    str r1, [r8, #108]
    str r3, [r8, #116]
    b .Lsec01_000007b0
.Lsec01_00000bc0:
    ldr r3, [r8, #104]
    cmp r3, #0
    beq .Lsec01_00000c20
    ldr r2, [r8, #108]
    ldr r3, [r8, #56]
    add r3, r3, r2
    ldrb r2, [r3, #-1]
    ldr r4, [pc, #192]
    ldr r3, [pc, #192]
    ldr r1, [r8, r4]
    ldr lr, [r8, r3]
    sub r3, r3, #12
    ldr r0, [r8, r3]
    add ip, r1, #1
    mov r3, r1, lsl #1
    strh r5, [r3, lr]
    strb r2, [r0, r1]
    str ip, [r8, r4]
    add r2, r8, r2, lsl #2
    add r2, r2, #144
    ldrh r3, [r2, #4]
    add r3, r3, #1
    strh r3, [r2, #4]
    str r5, [r8, #104]
.Lsec01_00000c20:
    ldr r0, [r8, #92]
    cmp r0, #0
    ldrge r3, [r8, #56]
    ldr r2, [r8, #108]
    addge r1, r0, r3
    movlt r1, r5
    rsb r2, r0, r2
    cmp sl, #4
    movne r3, #0
    moveq r3, #1
    mov r0, r8
.Lsec01_00000c4c:
    bl _tr_flush_block
    ldr r3, [r8, #108]
    ldr r0, [r8]
    str r3, [r8, #92]
    bl flush_pending
    ldr r3, [r8]
    ldr r3, [r3, #16]
    cmp r3, #0
    bne .Lsec01_00000c80
    cmp sl, #4
    moveq r0, #2
    beq .Lsec01_00000c94
    b .Lsec01_00000c90
.Lsec01_00000c80:
    cmp sl, #4
    movne r0, #1
    moveq r0, #3
    b .Lsec01_00000c94
.Lsec01_00000c90:
    mov r0, #0
.Lsec01_00000c94:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
    bx lr
    .long 0x00000105
    .long _length_code
    .long 0x000016a0
    .long 0x000016a4
    .long _dist_code
    .long 0x00000988
    .long 0x0000169c
.arm
deflate_fast:
.Lsec01_00000cb8:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    mov r7, r0
    sub sp, sp, #4
    mov r9, r1
    mov fp, #0
.Lsec01_00000ccc:
    ldr r4, [pc, #1004]
    ldr r3, [r7, #116]
    cmp r3, r4
    bhi .Lsec01_00000cfc
    mov r0, r7
    bl fill_window
    ldr r3, [r7, #116]
    cmp r3, r4
    cmpls r9, #0
    beq .Lsec01_000010b0
    cmp r3, #0
    beq .Lsec01_00001040
.Lsec01_00000cfc:
    ldr r3, [r7, #116]
    cmp r3, #2
    bls .Lsec01_00000d58
    ldr lr, [r7, #108]
    ldr r3, [r7, #56]
    add r3, r3, lr
    ldrb r1, [r3, #2]
    ldr r2, [r7, #72]
    ldr r3, [r7, #88]
    eor r1, r1, r2, lsl r3
    ldr r3, [r7, #84]
    ldr r4, [r7, #68]
    and r1, r1, r3
    ldr r3, [r7, #52]
    mov r0, r1, lsl #1
    ldrh ip, [r0, r4]
    and r3, lr, r3
    ldr r2, [r7, #64]
    mov r3, r3, lsl #1
    strh ip, [r3, r2]
    str r1, [r7, #72]
    strh lr, [r0, r4]
    mov fp, ip
.Lsec01_00000d58:
    cmp fp, #0
    beq .Lsec01_00000dbc
    ldr r3, [r7, #44]
    ldr r2, [r7, #108]
    sub r3, r3, #260
    rsb r2, fp, r2
    sub r3, r3, #2
    cmp r2, r3
    bhi .Lsec01_00000dbc
    ldr r1, [r7, #136]
    sub r3, r1, #2
    cmp r3, #1
    bls .Lsec01_00000d9c
    mov r0, r7
    mov r1, fp
    bl longest_match
    b .Lsec01_00000db8
.Lsec01_00000d9c:
    cmp r1, #3
    bne .Lsec01_00000dbc
    cmp r2, #1
    bne .Lsec01_00000dbc
    mov r0, r7
    mov r1, fp
    bl longest_match_fast
.Lsec01_00000db8:
    str r0, [r7, #96]
.Lsec01_00000dbc:
    ldr ip, [r7, #96]
    cmp ip, #2
    ldr r0, [r7, #108]
    bls .Lsec01_00000f6c
    ldr r3, [pc, #752]
    sub ip, ip, #3
    and ip, ip, #255
    ldr r2, [r7, #112]
    ldrb r1, [r3, ip]
    ldr r6, [pc, #736]
    ldr r3, [pc, #736]
    rsb r2, r2, r0
    ldr r5, [r7, r3]
    ldr r0, [r7, r6]
    sub r3, r3, #12
    ldr r4, [r7, r3]
    mov r2, r2, lsl #16
    add r1, r1, #256
    mov r3, r0, lsl #1
    mov r2, r2, lsr #16
    add lr, r0, #1
    add r1, r1, #1
    strh r2, [r3, r5]
    add r1, r7, r1, lsl #2
    strb ip, [r4, r0]
    str lr, [r7, r6]
    add r1, r1, #144
    sub r2, r2, #1
    ldrh r3, [r1, #4]
    mov ip, r2, lsl #16
    mov r0, ip, lsr #16
    ldr r2, [pc, #656]
    cmp r0, #255
    add r3, r3, #1
    strh r3, [r1, #4]
    addhi r3, r2, ip, lsr #23
    ldrlsb r2, [r2, r0]
    ldrhib r2, [r3, #256]
    ldr r1, [pc, #632]
    add r2, r7, r2, lsl #2
    ldrh r3, [r2, r1]
    add r3, r3, #1
    strh r3, [r2, r1]
    ldr r3, [pc, #616]
    ldr r2, [r7, r3]
    add r3, r3, #4
    ldr r1, [r7, r3]
    ldr r0, [r7, #116]
    ldr ip, [r7, #96]
    ldr r3, [r7, #128]
    sub r2, r2, #1
    cmp r1, r2
    movne sl, #0
    moveq sl, #1
    rsb r0, ip, r0
    cmp ip, r3
    str r0, [r7, #116]
    bhi .Lsec01_00000f2c
    cmp r0, #2
    bls .Lsec01_00000f2c
    sub r3, ip, #1
    str r3, [r7, #96]
    ldr r8, [r7, #88]
    ldr r6, [r7, #56]
.Lsec01_00000ebc:
    ldr r3, [r7, #108]
    add r5, r3, #1
    str r5, [r7, #108]
    add r3, r6, r5
    ldrb r2, [r3, #2]
    ldr r3, [r7, #72]
    eor r2, r2, r3, lsl r8
    ldr r3, [r7, #84]
    ldr r4, [r7, #68]
    and r2, r2, r3
    ldr r1, [r7, #96]
    ldr r3, [r7, #52]
    mov lr, r2, lsl #1
    ldrh ip, [lr, r4]
    sub r1, r1, #1
    and r3, r5, r3
    ldr r0, [r7, #64]
    mov r3, r3, lsl #1
    cmp r1, #0
    strh ip, [r3, r0]
    str r2, [r7, #72]
    strh r5, [lr, r4]
    mov fp, ip
    str r1, [r7, #96]
    bne .Lsec01_00000ebc
    add r3, r5, #1
    str r3, [r7, #108]
    b .Lsec01_00000fec
.Lsec01_00000f2c:
    ldr r2, [r7, #108]
    mov r3, #0
    add r2, r2, ip
    str r3, [r7, #96]
    str r2, [r7, #108]
    ldr r3, [r7, #56]
    ldrb r1, [r3, r2]
    str r1, [r7, #72]
    add r3, r3, r2
    ldrb r3, [r3, #1]
    ldr r2, [r7, #88]
    eor r3, r3, r1, lsl r2
    ldr r2, [r7, #84]
    and r3, r3, r2
    str r3, [r7, #72]
    b .Lsec01_00000fec
.Lsec01_00000f6c:
    ldr r3, [r7, #56]
    ldr r4, [pc, #336]
    ldrb r2, [r3, r0]
    ldr r3, [pc, #332]
    ldr r1, [r7, r4]
    ldr lr, [r7, r3]
    sub r3, r3, #12
    ldr r0, [r7, r3]
    add ip, r1, #1
    mov r3, r1, lsl #1
    mov r5, #0
    strh r5, [r3, lr]
    strb r2, [r0, r1]
    str ip, [r7, r4]
    add r2, r7, r2, lsl #2
    add r2, r2, #144
    ldrh r3, [r2, #4]
    add r3, r3, #1
    strh r3, [r2, #4]
    ldr r3, [pc, #280]
    ldr r2, [r7, #116]
    ldr r1, [r7, #108]
    ldr r3, [r7, r3]
    ldr r0, [r7, r4]
    sub r2, r2, #1
    add r1, r1, #1
    sub r3, r3, #1
    str r2, [r7, #116]
    str r1, [r7, #108]
    cmp r0, r3
    movne sl, #0
    moveq sl, #1
.Lsec01_00000fec:
    cmp sl, #0
    beq .Lsec01_00000ccc
    ldr r0, [r7, #92]
    cmp r0, #0
    ldrge r3, [r7, #56]
    ldr r2, [r7, #108]
    addge r1, r0, r3
    movlt r1, #0
    rsb r2, r0, r2
    mov r3, #0
    mov r0, r7
.Lsec01_00001018:
    bl _tr_flush_block
    ldr r3, [r7, #108]
    ldr r0, [r7]
    str r3, [r7, #92]
    bl flush_pending
    ldr r3, [r7]
    ldr r3, [r3, #16]
    cmp r3, #0
    bne .Lsec01_00000ccc
    b .Lsec01_000010b0
.Lsec01_00001040:
    ldr r0, [r7, #92]
    cmp r0, #0
    ldrge r3, [r7, #56]
    ldr r2, [r7, #108]
    addge r1, r0, r3
    movlt r1, #0
    rsb r2, r0, r2
    cmp r9, #4
    movne r3, #0
    moveq r3, #1
    mov r0, r7
.Lsec01_0000106c:
    bl _tr_flush_block
    ldr r3, [r7, #108]
    ldr r0, [r7]
    str r3, [r7, #92]
    bl flush_pending
    ldr r3, [r7]
    ldr r3, [r3, #16]
    cmp r3, #0
    bne .Lsec01_000010a0
    cmp r9, #4
    moveq r0, #2
    beq .Lsec01_000010b4
    b .Lsec01_000010b0
.Lsec01_000010a0:
    cmp r9, #4
    movne r0, #1
    moveq r0, #3
    b .Lsec01_000010b4
.Lsec01_000010b0:
    mov r0, #0
.Lsec01_000010b4:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long 0x00000105
    .long _length_code
    .long 0x000016a0
    .long 0x000016a4
    .long _dist_code
    .long 0x00000988
    .long 0x0000169c
.arm
deflate_stored:
.Lsec01_000010dc:
    ldr r3, [r0, #12]
    stmdb sp!, {r4, r5, r6, lr}
    sub r5, r3, #5
    ldr r3, [pc, #408]
    cmp r5, r3
    ldrhi r5, [pc, #404]
    mov r4, r0
    mov r6, r1
.Lsec01_000010fc:
    ldr r3, [r4, #116]
    cmp r3, #1
    bhi .Lsec01_00001130
    mov r0, r4
    bl fill_window
    ldr r3, [r4, #116]
    rsbs r2, r3, #1
    movcc r2, #0
    cmp r6, #0
    cmpeq r3, #0
    beq .Lsec01_0000127c
    cmp r2, #0
    bne .Lsec01_0000120c
.Lsec01_00001130:
    ldr r2, [r4, #108]
    ldr r3, [r4, #116]
    ldr ip, [r4, #92]
    add r2, r2, r3
    mov r1, #0
    cmp r2, #0
    str r2, [r4, #108]
    str r1, [r4, #116]
    add r0, r5, ip
    beq .Lsec01_00001160
    cmp r2, r0
    bcc .Lsec01_000011a8
.Lsec01_00001160:
    rsb r3, r0, r2
    cmp ip, #0
    str r3, [r4, #116]
    ldrge r3, [r4, #56]
    rsb r2, ip, r0
    addge r1, ip, r3
    str r0, [r4, #108]
    mov r3, #0
    mov r0, r4
.Lsec01_00001184:
    bl _tr_flush_block
    ldr r3, [r4, #108]
    ldr r0, [r4]
    str r3, [r4, #92]
    bl flush_pending
    ldr r3, [r4]
    ldr r3, [r3, #16]
    cmp r3, #0
    beq .Lsec01_0000127c
.Lsec01_000011a8:
    ldr r3, [r4, #44]
    ldr ip, [r4, #108]
    ldr r0, [r4, #92]
    sub r3, r3, #260
    sub r3, r3, #2
    rsb r2, r0, ip
    cmp r2, r3
    bcc .Lsec01_000010fc
    cmp r0, #0
    ldrge r3, [r4, #56]
    movlt r1, #0
    addge r1, r0, r3
    rsb r2, r0, ip
    mov r3, #0
    mov r0, r4
.Lsec01_000011e4:
    bl _tr_flush_block
    ldr r3, [r4, #108]
    ldr r0, [r4]
    str r3, [r4, #92]
    bl flush_pending
    ldr r3, [r4]
    ldr r3, [r3, #16]
    cmp r3, #0
    bne .Lsec01_000010fc
    b .Lsec01_0000127c
.Lsec01_0000120c:
    ldr r0, [r4, #92]
    cmp r0, #0
    ldrge r3, [r4, #56]
    ldr r2, [r4, #108]
    addge r1, r0, r3
    movlt r1, #0
    rsb r2, r0, r2
    cmp r6, #4
    movne r3, #0
    moveq r3, #1
    mov r0, r4
.Lsec01_00001238:
    bl _tr_flush_block
    ldr r3, [r4, #108]
    ldr r0, [r4]
    str r3, [r4, #92]
    bl flush_pending
    ldr r3, [r4]
    ldr r3, [r3, #16]
    cmp r3, #0
    bne .Lsec01_0000126c
    cmp r6, #4
    moveq r0, #2
    beq .Lsec01_00001280
    b .Lsec01_0000127c
.Lsec01_0000126c:
    cmp r6, #4
    movne r0, #1
    moveq r0, #3
    b .Lsec01_00001280
.Lsec01_0000127c:
    mov r0, #0
.Lsec01_00001280:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long 0x0000fffe
    .long 0x0000ffff
.arm
deflate:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    subs r6, r0, #0
    sub sp, sp, #12
    mov r9, r1
    beq .Lsec01_00001cbc
    ldr r4, [r6, #28]
    cmp r4, #0
    mvneq r0, #1
    ldreq r3, [pc, #2588]
    beq .Lsec01_000012c8
    cmp r1, #4
    bls .Lsec01_000012d0
    ldr r3, [pc, #2576]
    mvn r0, #1
.Lsec01_000012c8:
    str r3, [r6, #24]
    b .Lsec01_00001cc8
.Lsec01_000012d0:
    ldr r3, [r6, #12]
    cmp r3, #0
    ldreq r3, [pc, #2556]
    streq r3, [r6, #24]
    ldr r3, [r6]
    cmp r3, #0
    bne .Lsec01_000012fc
    ldr r3, [r6, #4]
    cmp r3, #0
    ldrne r3, [pc, #2532]
    strne r3, [r6, #24]
.Lsec01_000012fc:
    ldr r0, [pc, #2528]
    ldr r3, [r4, #4]
    subs fp, r9, #4
    movne fp, #1
    cmp r3, r0
    movne r3, #0
    andeq r3, fp, #1
    cmp r3, #0
    ldrne r3, [pc, #2500]
    strne r3, [r6, #24]
    ldr r3, [r6, #12]
    cmp r3, #0
    beq .Lsec01_00001cbc
    ldr r3, [r6]
    cmp r3, #0
    bne .Lsec01_00001348
    ldr r3, [r6, #4]
    cmp r3, #0
    bne .Lsec01_00001cbc
.Lsec01_00001348:
    ldr ip, [r4, #4]
    cmp ip, r0
    movne r8, #0
    andeq r8, fp, #1
    cmp r8, #0
    bne .Lsec01_00001cbc
    ldr r3, [r6, #16]
    cmp r3, #0
    beq .Lsec01_00001abc
    ldr r2, [r4, #40]
    cmp ip, #42
    str r6, [r4]
    str r2, [sp, #4]
    str r9, [r4, #40]
    bne .Lsec01_000016b4
    ldr sl, [r4, #24]
    cmp sl, #2
    bne .Lsec01_00001604
    mov r1, r8
    mov r2, r8
    mov r0, r8
.Lsec01_0000139c:
    bl crc32
    ldr r2, [r4, #20]
    ldr r1, [r4, #8]
    mov r3, #31
    str r0, [r6, #48]
    strb r3, [r1, r2]
    ldr r1, [r4, #8]
    add r2, r2, #1
    mvn r3, #116
    strb r3, [r1, r2]
    ldr r1, [r4, #8]
    add r2, r2, #1
    add r3, r3, #125
    strb r3, [r1, r2]
    ldr lr, [r4, #28]
    add r5, r2, #1
    cmp lr, #0
    str r5, [r4, #20]
    ldr r7, [r4, #8]
    bne .Lsec01_00001480
    strb lr, [r7, r5]
    ldr r2, [r4, #8]
    add r3, r5, #1
    strb lr, [r2, r3]
    ldr r2, [r4, #8]
    add r3, r3, #1
    strb lr, [r2, r3]
    ldr r2, [r4, #8]
    add r3, r3, #1
    strb lr, [r2, r3]
    ldr r2, [r4, #8]
    add r3, r3, #1
    strb lr, [r2, r3]
    ldr r1, [r4, #132]
    add r2, r3, #1
    cmp r1, #9
    str r2, [r4, #20]
    ldr r0, [r4, #8]
    moveq ip, sl
    beq .Lsec01_00001458
    ldr r3, [r4, #136]
    cmp r3, #1
    bgt .Lsec01_00001454
    cmp r1, #1
    movgt ip, lr
    bgt .Lsec01_00001458
.Lsec01_00001454:
    mov ip, #4
.Lsec01_00001458:
    strb ip, [r0, r2]
    ldr r1, [r4, #8]
    add r2, r2, #1
    mov r3, #3
    strb r3, [r1, r2]
    add r0, r2, #1
    add r3, r3, #110
    str r0, [r4, #20]
    str r3, [r4, #4]
    b .Lsec01_000019d0
.Lsec01_00001480:
    ldr r1, [lr, #16]
    ldr r3, [lr, #44]
    ldr ip, [lr]
    cmp r1, #0
    ldr r2, [lr, #28]
    movne r1, #4
    moveq r1, #0
    ldr r0, [lr, #36]
    cmp ip, #0
    addne r1, r1, #1
    cmp r3, #0
    movne r3, #2
    moveq r3, #0
    cmp r2, #0
    movne r2, #8
    moveq r2, #0
    cmp r0, #0
    movne r0, #16
    moveq r0, #0
    add r0, r0, r1
    add r3, r3, r2
    add r3, r3, r0
    strb r3, [r7, r5]
    ldr r3, [r4, #28]
    ldr r1, [r3, #4]
    ldr r3, [r4, #8]
    add r2, r5, #1
    strb r1, [r3, r2]
    ldr r3, [r4, #28]
    ldr r3, [r3, #4]
    ldr r1, [r4, #8]
    add r2, r2, #1
    mov r3, r3, lsr #8
    strb r3, [r1, r2]
    ldr r3, [r4, #28]
    ldrh r1, [r3, #6]
    ldr r3, [r4, #8]
    add r2, r2, #1
    strb r1, [r3, r2]
    ldr r3, [r4, #28]
    ldrb r1, [r3, #7]
    ldr r3, [r4, #8]
    add r2, r2, #1
    strb r1, [r3, r2]
    ldr r0, [r4, #132]
    add r1, r2, #1
    cmp r0, #9
    str r1, [r4, #20]
    ldr r2, [r4, #8]
    moveq r0, sl
    beq .Lsec01_00001568
    ldr r3, [r4, #136]
    cmp r3, #1
    bgt .Lsec01_00001564
    cmp r0, #1
    movgt r0, r8
    bgt .Lsec01_00001568
.Lsec01_00001564:
    mov r0, #4
.Lsec01_00001568:
    strb r0, [r2, r1]
    add r1, r1, #1
    str r1, [r4, #20]
    ldr r3, [r4, #28]
    ldr r2, [r3, #12]
    ldr r3, [r4, #8]
    strb r2, [r3, r1]
    ldr r2, [r4, #28]
    ldr r3, [r2, #16]
    add r1, r1, #1
    cmp r3, #0
    str r1, [r4, #20]
    beq .Lsec01_000015cc
    ldr r2, [r2, #20]
    ldr r3, [r4, #8]
    strb r2, [r3, r1]
    add r2, r1, #1
    str r2, [r4, #20]
    ldr r3, [r4, #28]
    ldr r3, [r3, #20]
    ldr r0, [r4, #8]
    mov r3, r3, lsr #8
    add r1, r2, #1
    strb r3, [r0, r2]
    str r1, [r4, #20]
.Lsec01_000015cc:
    ldr r3, [r4, #28]
    ldr r3, [r3, #44]
    cmp r3, #0
    beq .Lsec01_000015f0
    ldr r0, [r6, #48]
    ldr r1, [r4, #8]
    ldr r2, [r4, #20]
.Lsec01_000015e8:
    bl crc32
    str r0, [r6, #48]
.Lsec01_000015f0:
    mov r3, #0
    str r3, [r4, #32]
    add r3, r3, #69
    str r3, [r4, #4]
    b .Lsec01_000016c0
.Lsec01_00001604:
    ldr r3, [r4, #136]
    cmp r3, #1
    ldr r3, [r4, #48]
    bgt .Lsec01_0000163c
    ldr r2, [r4, #132]
    cmp r2, #1
    ble .Lsec01_0000163c
    cmp r2, #5
    movle r0, #1
    ble .Lsec01_00001640
    cmp r2, #6
    movne r0, #3
    moveq r0, #2
    b .Lsec01_00001640
.Lsec01_0000163c:
    mov r0, #0
.Lsec01_00001640:
    ldr r2, [r4, #108]
    mov r3, r3, lsl #12
    sub r3, r3, #30720
    cmp r2, #0
    orr r5, r3, r0, lsl #6
    orrne r5, r5, #32
    mov r3, #113
    str r3, [r4, #4]
    mov r0, r5
    mov r1, #31
.Lsec01_00001668:
    bl __aeabi_uidivmod
    rsb r1, r1, r5
    add r1, r1, #31
    mov r0, r4
    bl putShortMSB
    ldr r3, [r4, #108]
    cmp r3, #0
    beq .Lsec01_000016a0
    ldrh r1, [r6, #50]
    mov r0, r4
    bl putShortMSB
    mov r0, r4
    ldrh r1, [r6, #48]
    bl putShortMSB
.Lsec01_000016a0:
    mov r0, #0
    mov r1, r0
    mov r2, r0
.Lsec01_000016ac:
    bl adler32
    str r0, [r6, #48]
.Lsec01_000016b4:
    ldr r3, [r4, #4]
    cmp r3, #69
    bne .Lsec01_000017dc
.Lsec01_000016c0:
    ldr r3, [r4, #28]
    ldr r3, [r3, #16]
    cmp r3, #0
    ldrne ip, [r4, #20]
    bne .Lsec01_0000175c
    b .Lsec01_000017c8
.Lsec01_000016d8:
    ldr r1, [r4, #20]
    ldr r3, [r4, #12]
    cmp r1, r3
    bne .Lsec01_0000172c
    ldr r3, [r0, #44]
    cmp r3, #0
    beq .Lsec01_00001714
    cmp r1, ip
    rsb r2, ip, r1
    bls .Lsec01_00001714
    ldr r1, [r4, #8]
    ldr r0, [r6, #48]
    add r1, ip, r1
.Lsec01_0000170c:
    bl crc32
    str r0, [r6, #48]
.Lsec01_00001714:
    mov r0, r6
    bl flush_pending
    ldr ip, [r4, #20]
    ldr r3, [r4, #12]
    cmp ip, r3
    beq .Lsec01_00001770
.Lsec01_0000172c:
    ldr r3, [r4, #28]
    ldr r2, [r3, #16]
    ldr r3, [r4, #32]
    ldrb r1, [r2, r3]
    ldr r2, [r4, #20]
    ldr r3, [r4, #8]
    strb r1, [r3, r2]
    ldr r3, [r4, #32]
    add r2, r2, #1
    add r3, r3, #1
    str r2, [r4, #20]
    str r3, [r4, #32]
.Lsec01_0000175c:
    add r0, r4, #28
    ldmia r0, {r0, r2}
    ldrh r3, [r0, #20]
    cmp r2, r3
    bcc .Lsec01_000016d8
.Lsec01_00001770:
    ldr r3, [r4, #28]
    ldr r3, [r3, #44]
    cmp r3, #0
    beq .Lsec01_000017a4
    ldr r2, [r4, #20]
    cmp r2, ip
    bls .Lsec01_000017a4
    ldr r1, [r4, #8]
    rsb r2, ip, r2
    add r1, ip, r1
    ldr r0, [r6, #48]
.Lsec01_0000179c:
    bl crc32
    str r0, [r6, #48]
.Lsec01_000017a4:
    ldr r3, [r4, #28]
    ldr r2, [r3, #20]
    ldr r3, [r4, #32]
    cmp r3, r2
    moveq r3, #0
    streq r3, [r4, #32]
    addeq r3, r3, #73
    beq .Lsec01_000017cc
    b .Lsec01_000017dc
.Lsec01_000017c8:
    mov r3, #73
.Lsec01_000017cc:
    str r3, [r4, #4]
    b .Lsec01_000017e8
.Lsec01_000017d4:
    mov r5, #1
    b .Lsec01_00001888
.Lsec01_000017dc:
    ldr r3, [r4, #4]
    cmp r3, #73
    bne .Lsec01_000018dc
.Lsec01_000017e8:
    ldr r3, [r4, #28]
    ldr r3, [r3, #28]
    cmp r3, #0
    beq .Lsec01_000018c8
    ldr ip, [r4, #20]
.Lsec01_000017fc:
    ldr r1, [r4, #20]
    ldr r3, [r4, #12]
    cmp r1, r3
    bne .Lsec01_00001854
    ldr r3, [r4, #28]
    ldr r3, [r3, #44]
    cmp r3, #0
    beq .Lsec01_0000183c
    cmp r1, ip
    rsb r2, ip, r1
    bls .Lsec01_0000183c
    ldr r1, [r4, #8]
    ldr r0, [r6, #48]
    add r1, ip, r1
.Lsec01_00001834:
    bl crc32
    str r0, [r6, #48]
.Lsec01_0000183c:
    mov r0, r6
    bl flush_pending
    ldr ip, [r4, #20]
    ldr r3, [r4, #12]
    cmp ip, r3
    beq .Lsec01_000017d4
.Lsec01_00001854:
    ldr r3, [r4, #28]
    ldr r2, [r3, #28]
    ldr r3, [r4, #32]
    ldrb r5, [r2, r3]
    ldr r2, [r4, #20]
    ldr r0, [r4, #8]
    add r3, r3, #1
    add r1, r2, #1
    cmp r5, #0
    str r3, [r4, #32]
    strb r5, [r0, r2]
    str r1, [r4, #20]
    bne .Lsec01_000017fc
.Lsec01_00001888:
    ldr r3, [r4, #28]
    ldr r3, [r3, #44]
    cmp r3, #0
    beq .Lsec01_000018bc
    ldr r2, [r4, #20]
    cmp r2, ip
    bls .Lsec01_000018bc
    ldr r1, [r4, #8]
    rsb r2, ip, r2
    add r1, ip, r1
    ldr r0, [r6, #48]
.Lsec01_000018b4:
    bl crc32
    str r0, [r6, #48]
.Lsec01_000018bc:
    cmp r5, #0
    bne .Lsec01_000018dc
    str r5, [r4, #32]
.Lsec01_000018c8:
    mov r3, #91
    str r3, [r4, #4]
    b .Lsec01_000018e8
.Lsec01_000018d4:
    mov r5, #1
    b .Lsec01_00001988
.Lsec01_000018dc:
    ldr r3, [r4, #4]
    cmp r3, #91
    bne .Lsec01_000019d0
.Lsec01_000018e8:
    ldr r3, [r4, #28]
    ldr r3, [r3, #36]
    cmp r3, #0
    beq .Lsec01_000019c4
    ldr ip, [r4, #20]
.Lsec01_000018fc:
    ldr r1, [r4, #20]
    ldr r3, [r4, #12]
    cmp r1, r3
    bne .Lsec01_00001954
    ldr r3, [r4, #28]
    ldr r3, [r3, #44]
    cmp r3, #0
    beq .Lsec01_0000193c
    cmp r1, ip
    rsb r2, ip, r1
    bls .Lsec01_0000193c
    ldr r1, [r4, #8]
    ldr r0, [r6, #48]
    add r1, ip, r1
.Lsec01_00001934:
    bl crc32
    str r0, [r6, #48]
.Lsec01_0000193c:
    mov r0, r6
    bl flush_pending
    ldr ip, [r4, #20]
    ldr r3, [r4, #12]
    cmp ip, r3
    beq .Lsec01_000018d4
.Lsec01_00001954:
    ldr r3, [r4, #28]
    ldr r2, [r3, #36]
    ldr r3, [r4, #32]
    ldrb r5, [r2, r3]
    ldr r2, [r4, #20]
    ldr r0, [r4, #8]
    add r3, r3, #1
    add r1, r2, #1
    cmp r5, #0
    str r3, [r4, #32]
    strb r5, [r0, r2]
    str r1, [r4, #20]
    bne .Lsec01_000018fc
.Lsec01_00001988:
    ldr r3, [r4, #28]
    ldr r3, [r3, #44]
    cmp r3, #0
    beq .Lsec01_000019bc
    ldr r2, [r4, #20]
    cmp r2, ip
    bls .Lsec01_000019bc
    ldr r1, [r4, #8]
    rsb r2, ip, r2
    add r1, ip, r1
    ldr r0, [r6, #48]
.Lsec01_000019b4:
    bl crc32
    str r0, [r6, #48]
.Lsec01_000019bc:
    cmp r5, #0
    bne .Lsec01_000019d0
.Lsec01_000019c4:
    mov r3, #103
    str r3, [r4, #4]
    b .Lsec01_000019dc
.Lsec01_000019d0:
    ldr r3, [r4, #4]
    cmp r3, #103
    bne .Lsec01_00001a60
.Lsec01_000019dc:
    ldr r3, [r4, #28]
    ldr r3, [r3, #44]
    cmp r3, #0
    beq .Lsec01_00001a58
    ldr r1, [r4, #20]
    ldr r2, [r4, #12]
    add r3, r1, #2
    cmp r3, r2
    bls .Lsec01_00001a1c
    mov r0, r6
    bl flush_pending
    ldr r1, [r4, #20]
    ldr r2, [r4, #12]
    add r3, r1, #2
    cmp r3, r2
    bhi .Lsec01_00001a60
.Lsec01_00001a1c:
    ldr r2, [r4, #8]
    ldr r3, [r6, #48]
    strb r3, [r2, r1]
    ldr r3, [r6, #48]
    add r1, r1, #1
    ldr ip, [r4, #8]
    add r2, r1, #1
    mov r0, #0
    mov r3, r3, lsr #8
    strb r3, [ip, r1]
    str r2, [r4, #20]
    mov r1, r0
    mov r2, r0
.Lsec01_00001a50:
    bl crc32
    str r0, [r6, #48]
.Lsec01_00001a58:
    mov r3, #113
    str r3, [r4, #4]
.Lsec01_00001a60:
    ldr r3, [r4, #20]
    cmp r3, #0
    beq .Lsec01_00001a84
    mov r0, r6
    bl flush_pending
    ldr r0, [r6, #16]
    cmp r0, #0
    bne .Lsec01_00001aa0
    b .Lsec01_00001bbc
.Lsec01_00001a84:
    ldr r3, [r6, #4]
    ldr r2, [sp, #4]
    cmp r9, r2
    cmple r3, #0
    bne .Lsec01_00001aa0
    cmp fp, #0
    bne .Lsec01_00001abc
.Lsec01_00001aa0:
    ldr r3, [pc, #572]
    ldr r2, [r4, #4]
    cmp r2, r3
    ldr r3, [r6, #4]
    bne .Lsec01_00001acc
    cmp r3, #0
    beq .Lsec01_00001ad4
.Lsec01_00001abc:
    ldr r3, [pc, #552]
    ldr r3, [r3, #28]
    mvn r0, #4
    b .Lsec01_000012c8
.Lsec01_00001acc:
    cmp r3, #0
    bne .Lsec01_00001af4
.Lsec01_00001ad4:
    ldr r3, [r4, #116]
    cmp r3, #0
    bne .Lsec01_00001af4
    cmp r9, #0
    beq .Lsec01_00001bc8
    ldr r3, [pc, #500]
    cmp r2, r3
    beq .Lsec01_00001bc8
.Lsec01_00001af4:
    ldr r1, [r4, #132]
    ldr r3, [pc, #496]
    mov r2, #12
    mla r3, r1, r2, r3
    mov r0, r4
    mov r1, r9
    ldr ip, [r3, #8]
    mov lr, pc
    bx ip
    sub r3, r0, #2
    and r3, r3, #255
    cmp r3, #1
    ldrls r3, [pc, #440]
    strls r3, [r4, #4]
    cmp r0, #2
    cmpne r0, #0
    movne r5, #0
    moveq r5, #1
    bne .Lsec01_00001b50
    ldr r0, [r6, #16]
    cmp r0, #0
    bne .Lsec01_00001cc4
    b .Lsec01_00001bbc
.Lsec01_00001b50:
    cmp r0, #1
    bne .Lsec01_00001bc8
    cmp r9, #1
    bne .Lsec01_00001b6c
    mov r0, r4
.Lsec01_00001b64:
    bl _tr_align
    b .Lsec01_00001ba8
.Lsec01_00001b6c:
    mov r0, r4
    mov r1, r5
    mov r2, r5
    mov r3, r5
.Lsec01_00001b7c:
    bl _tr_stored_block
    cmp r9, #3
    bne .Lsec01_00001ba8
    ldr r2, [r4, #76]
    ldr r0, [r4, #68]
    mov r2, r2, lsl #1
    add r3, r2, r0
    strh r5, [r3, #-2]
    mov r1, r5
    sub r2, r2, #2
.Lsec01_00001ba4:
    bl memset
.Lsec01_00001ba8:
    mov r0, r6
    bl flush_pending
    ldr r0, [r6, #16]
    cmp r0, #0
    bne .Lsec01_00001bc8
.Lsec01_00001bbc:
    mvn r3, #0
    str r3, [r4, #40]
    b .Lsec01_00001cc8
.Lsec01_00001bc8:
    cmp fp, #0
    bne .Lsec01_00001cc4
    ldr r3, [r4, #24]
    cmp r3, #0
    movle r0, #1
    ble .Lsec01_00001cc8
    cmp r3, #2
    ldr r1, [r6, #48]
    bne .Lsec01_00001c7c
    ldr r3, [r4, #20]
    ldr r2, [r4, #8]
    strb r1, [r2, r3]
    ldr r2, [r6, #48]
    ldr r1, [r4, #8]
    add r3, r3, #1
    mov r2, r2, lsr #8
    strb r2, [r1, r3]
    ldr r1, [r4, #8]
    ldrh r2, [r6, #50]
    add r3, r3, #1
    strb r2, [r1, r3]
    ldr r1, [r4, #8]
    ldrb r2, [r6, #51]
    add r3, r3, #1
    strb r2, [r1, r3]
    ldr r1, [r4, #8]
    ldr r2, [r6, #8]
    add r3, r3, #1
    strb r2, [r1, r3]
    ldr r2, [r6, #8]
    ldr r1, [r4, #8]
    add r3, r3, #1
    mov r2, r2, lsr #8
    strb r2, [r1, r3]
    ldr r1, [r4, #8]
    ldrh r2, [r6, #10]
    add r3, r3, #1
    strb r2, [r1, r3]
    add r3, r3, #1
    ldr r0, [r4, #8]
    ldrb r2, [r6, #11]
    add r1, r3, #1
    strb r2, [r0, r3]
    str r1, [r4, #20]
    b .Lsec01_00001c94
.Lsec01_00001c7c:
    mov r1, r1, lsr #16
    mov r0, r4
    bl putShortMSB
    mov r0, r4
    ldrh r1, [r6, #48]
    bl putShortMSB
.Lsec01_00001c94:
    mov r0, r6
    bl flush_pending
    ldr r3, [r4, #24]
    cmp r3, #0
    rsbgt r3, r3, #0
    strgt r3, [r4, #24]
    ldr r3, [r4, #20]
    rsbs r0, r3, #1
    movcc r0, #0
    b .Lsec01_00001cc8
.Lsec01_00001cbc:
    mvn r0, #1
    b .Lsec01_00001cc8
.Lsec01_00001cc4:
    mov r0, #0
.Lsec01_00001cc8:
    add sp, sp, #12
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long .Lsec05_00000000
    .long .Lsec05_0000000c
    .long .Lsec05_00000018
    .long .Lsec05_00000028
    .long 0x0000029a
    .long .Lsec05_00000034
    .long z_errmsg
    .long .Lsec06_00000038
.arm
deflateParams:
    stmdb sp!, {r4, r5, r6, lr}
    subs lr, r0, #0
    mov r5, r1
    mov r6, r2
    beq .Lsec01_00001dc4
    ldr r4, [lr, #28]
    cmp r4, #0
    beq .Lsec01_00001dc4
    cmn r1, #1
    moveq r5, #6
    cmp r5, #9
    movls r3, #0
    movhi r3, #1
    orrs r3, r3, r2, lsr #31
    bne .Lsec01_00001dc4
    cmp r2, #4
    bgt .Lsec01_00001dc4
    ldr r1, [pc, #148]
    ldr ip, [r4, #132]
    mov r3, #12
    mla r2, r5, r3, r1
    mla r3, ip, r3, r1
    ldr r2, [r2, #8]
    ldr r3, [r3, #8]
    cmp r3, r2
    beq .Lsec01_00001d78
    ldr r3, [lr, #8]
    cmp r3, #0
    beq .Lsec01_00001d78
    mov r1, #1
.Lsec01_00001d6c:
    bl deflate
    mov ip, r0
    b .Lsec01_00001d7c
.Lsec01_00001d78:
    mov ip, #0
.Lsec01_00001d7c:
    ldr r3, [r4, #132]
    cmp r3, r5
    beq .Lsec01_00001dbc
    mov r3, #12
    mul r1, r5, r3
    ldr r2, [pc, #60]
    add r3, r1, r2
    ldrh r0, [r3, #6]
    ldrh r1, [r1, r2]
    ldrh r2, [r3, #2]
    ldrh r3, [r3, #4]
    str r2, [r4, #128]
    str r1, [r4, #140]
    str r3, [r4, #144]
    str r0, [r4, #124]
    str r5, [r4, #132]
.Lsec01_00001dbc:
    str r6, [r4, #136]
    b .Lsec01_00001dc8
.Lsec01_00001dc4:
    mvn ip, #1
.Lsec01_00001dc8:
    mov r0, ip
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec06_00000038
.arm
deflateSetDictionary:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    subs r4, r0, #0
    mov r7, r1
    mov r6, r2
    beq .Lsec01_00001ef4
    ldr r5, [r4, #28]
    cmp r1, #0
    cmpne r5, #0
    beq .Lsec01_00001ef4
    ldr r3, [r5, #24]
    cmp r3, #2
    beq .Lsec01_00001ef4
    cmp r3, #1
    bne .Lsec01_00001e20
    ldr r3, [r5, #4]
    cmp r3, #42
    bne .Lsec01_00001ef4
    b .Lsec01_00001e28
.Lsec01_00001e20:
    cmp r3, #0
    beq .Lsec01_00001e3c
.Lsec01_00001e28:
    ldr r0, [r4, #48]
    mov r1, r7
    mov r2, r6
.Lsec01_00001e34:
    bl adler32
    str r0, [r4, #48]
.Lsec01_00001e3c:
    cmp r6, #2
    bls .Lsec01_00001efc
    ldr r3, [r5, #44]
    sub r4, r3, #260
    sub r4, r4, #2
    cmp r6, r4
    rsbhi r3, r4, r6
    movls r4, r6
    addhi r7, r7, r3
    mov r2, r4
    mov r1, r7
    ldr r0, [r5, #56]
.Lsec01_00001e6c:
    bl memcpy
    str r4, [r5, #108]
    str r4, [r5, #92]
    ldr r6, [r5, #56]
    ldrb r3, [r6]
    str r3, [r5, #72]
    ldr r7, [r5, #88]
    ldrb r2, [r6, #1]
    eor r2, r2, r3, lsl r7
    ldr r3, [r5, #84]
    and r2, r2, r3
    str r2, [r5, #72]
    sub r4, r4, #3
    mov lr, #0
.Lsec01_00001ea4:
    add r3, r6, lr
    ldrb r1, [r3, #2]
    ldr r3, [r5, #72]
    eor r1, r1, r3, lsl r7
    ldr r2, [r5, #84]
    ldr ip, [r5, #68]
    and r1, r1, r2
    ldr r3, [r5, #52]
    mov r2, r1, lsl #1
    and r3, lr, r3
    ldrh r8, [r2, ip]
    ldr r0, [r5, #64]
    mov r3, r3, lsl #1
    strh r8, [r3, r0]
    strh lr, [r2, ip]
    add lr, lr, #1
    cmp lr, r4
    str r1, [r5, #72]
    bhi .Lsec01_00001efc
    b .Lsec01_00001ea4
.Lsec01_00001ef4:
    mvn r0, #1
    b .Lsec01_00001f00
.Lsec01_00001efc:
    mov r0, #0
.Lsec01_00001f00:
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
deflateBound:
    str lr, [sp, #-4]!
    add r3, r1, #7
    add r3, r1, r3, lsr #3
    add r3, r3, #11
    add r2, r1, #63
    cmp r0, #0
    sub sp, sp, #4
    add r2, r3, r2, lsr #6
    beq .Lsec01_00001f5c
    ldr r0, [r0, #28]
    cmp r0, #0
    beq .Lsec01_00001f5c
    ldr r3, [r0, #48]
    cmp r3, #15
    bne .Lsec01_00001f5c
    ldr r3, [r0, #80]
    cmp r3, #15
    mov r0, r1
    bne .Lsec01_00001f5c
.Lsec01_00001f54:
    bl compressBound
    mov r2, r0
.Lsec01_00001f5c:
    mov r0, r2
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
deflateReset:
    stmdb sp!, {r4, r5, r6, lr}
    subs r6, r0, #0
    beq .Lsec01_000020a4
    ldr r5, [r6, #28]
    cmp r5, #0
    beq .Lsec01_000020a4
    ldr r3, [r6, #32]
    cmp r3, #0
    beq .Lsec01_000020a4
    ldr r3, [r6, #36]
    cmp r3, #0
    beq .Lsec01_000020a4
    mov r3, #2
    str r3, [r6, #44]
    ldr r2, [r5, #24]
    ldr r3, [r5, #8]
    cmp r2, #0
    str r3, [r5, #16]
    rsblt r3, r2, #0
    strlt r3, [r5, #24]
    ldr r3, [r5, #24]
    cmp r3, #0
    mov r0, #0
    moveq r2, #113
    movne r2, #42
    cmp r3, #2
    str r0, [r6, #20]
    str r0, [r6, #8]
    str r0, [r6, #24]
    str r0, [r5, #20]
    str r2, [r5, #4]
    bne .Lsec01_00001ffc
    mov r1, r0
    mov r2, r0
.Lsec01_00001ff4:
    bl crc32
    b .Lsec01_00002008
.Lsec01_00001ffc:
    mov r1, r0
    mov r2, r0
.Lsec01_00002004:
    bl adler32
.Lsec01_00002008:
    mov r4, #0
    str r0, [r6, #48]
    str r4, [r5, #40]
    mov r0, r5
.Lsec01_00002018:
    bl _tr_init
    ldr r2, [r5, #76]
    ldr r0, [r5, #68]
    ldr r3, [r5, #44]
    mov r2, r2, lsl #1
    add r1, r2, r0
    mov r3, r3, lsl #1
    str r3, [r5, #60]
    strh r4, [r1, #-2]
    sub r2, r2, #2
    mov r1, r4
.Lsec01_00002044:
    bl memset
    ldr r2, [r5, #132]
    mov r3, #12
    mul r1, r2, r3
    ldr r2, [pc, #88]
    add r3, r1, r2
    ldrh r0, [r1, r2]
    ldrh ip, [r3, #6]
    ldrh r2, [r3, #2]
    ldrh r3, [r3, #4]
    mov r1, #2
    mov lr, r4
    str r2, [r5, #128]
    str r0, [r5, #140]
    str r3, [r5, #144]
    str ip, [r5, #124]
    str r1, [r5, #96]
    str r4, [r5, #72]
    str r4, [r5, #108]
    str r4, [r5, #92]
    str r4, [r5, #116]
    str r1, [r5, #120]
    str r4, [r5, #104]
    b .Lsec01_000020a8
.Lsec01_000020a4:
    mvn lr, #1
.Lsec01_000020a8:
    mov r0, lr
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec06_00000038
.arm
deflateInit2_:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    sub sp, sp, #44
    ldr ip, [sp, #88]
    str r2, [sp, #32]
    ldr r2, [sp, #84]
    cmp ip, #0
    str r2, [sp, #28]
    mov r7, r0
    mov sl, r1
    mov r8, r3
    ldr r9, [sp, #80]
    ldr r2, [sp, #92]
    beq .Lsec01_0000239c
    ldrb r3, [ip]
    cmp r2, #56
    cmpeq r3, #49
    moveq r2, #0
    movne r2, #1
    bne .Lsec01_0000239c
    cmp r0, #0
    beq .Lsec01_000021e8
    ldr r3, [r0, #32]
    cmp r3, #0
    streq r3, [r0, #40]
    ldreq r3, [pc, #652]
    streq r3, [r0, #32]
    ldr r3, [r0, #36]
    cmp r3, #0
    ldreq r3, [pc, #640]
    streq r3, [r0, #36]
    cmn r1, #1
    moveq sl, #6
    cmp r8, #0
    str r2, [r0, #24]
    rsblt r8, r8, #0
    movlt fp, r2
    blt .Lsec01_0000215c
    cmp r8, #15
    movle fp, #1
    subgt r8, r8, #16
    movgt fp, #2
.Lsec01_0000215c:
    ldr ip, [sp, #32]
    sub r3, r9, #1
    cmp r3, #7
    cmpls ip, #8
    bne .Lsec01_000021b8
    cmp r8, #15
    movle r3, #0
    movgt r3, #1
    cmp r8, #7
    orrle r3, r3, #1
    cmp r3, #0
    bne .Lsec01_000021b8
    cmp sl, #9
    movle r3, #0
    movgt r3, #1
    orrs r3, r3, sl, lsr #31
    bne .Lsec01_000021b8
    ldr r2, [sp, #28]
    cmp r2, #4
    movle r3, #0
    movgt r3, #1
    orrs r5, r3, r2, lsr #31
    beq .Lsec01_000021f0
.Lsec01_000021b8:
    ldr ip, [sp, #28]
    mov lr, #8
    str ip, [sp, #12]
    mov r1, r9
    mov ip, #4
    mov r2, lr
    ldr r3, [sp, #32]
    ldr r0, [pc, #472]
    stmib sp, {r8, sl}
    str ip, [sp, #16]
    str lr, [sp]
.Lsec01_000021e4:
    bl iprintf
.Lsec01_000021e8:
    mvn r0, #1
    b .Lsec01_000023a0
.Lsec01_000021f0:
    ldr r0, [r7, #40]
    mov r1, #1
    mov r2, #5824
    ldr ip, [r7, #32]
    mov lr, pc
    bx ip
    cmp r8, #8
    moveq r8, #9
    subs r6, r0, #0
    bne .Lsec01_00002224
    ldr r0, [pc, #408]
.Lsec01_0000221c:
    bl iprintf
    b .Lsec01_00002350
.Lsec01_00002224:
    add r0, r9, #7
    mov r2, #1
    mov r4, r2, lsl r8
    mov r1, r2, lsl r0
    sub r3, r4, #1
    sub r2, r1, #1
    str r3, [r6, #52]
    str r2, [r6, #84]
    str r4, [r6, #44]
    str r0, [r6, #80]
    str r1, [r6, #76]
    str fp, [r6, #24]
    mov r1, #3
    str r5, [r6, #28]
    str r6, [r7, #28]
    str r7, [r6]
    str r8, [r6, #48]
    add r0, r9, #9
.Lsec01_0000226c:
    bl __aeabi_uidiv
    mov r1, r4
    str r0, [r6, #88]
    mov r2, #2
    ldr r0, [r7, #40]
    ldr ip, [r7, #32]
    mov lr, pc
    bx ip
    ldr r1, [r6, #44]
    str r0, [r6, #56]
    mov r2, #2
    ldr r0, [r7, #40]
    ldr ip, [r7, #32]
    mov lr, pc
    bx ip
    ldr r1, [r6, #76]
    str r0, [r6, #64]
    mov r2, #2
    ldr r0, [r7, #40]
    ldr ip, [r7, #32]
    mov lr, pc
    bx ip
    mov ip, #1
    add r3, r9, #6
    mov r3, ip, lsl r3
    ldr r4, [pc, #228]
    str r3, [sp, #36]
    str r0, [r6, #68]
    str r3, [r6, r4]
    mov r1, r3
    mov r2, #4
    ldr r0, [r7, #40]
    ldr ip, [r7, #32]
    mov lr, pc
    bx ip
    ldr r3, [r6, #56]
    ldr r2, [r6, r4]
    cmp r3, #0
    mov r3, r2, lsl #2
    str r3, [r6, #12]
    str r0, [r6, #8]
    beq .Lsec01_00002334
    ldr r3, [r6, #64]
    cmp r3, #0
    beq .Lsec01_00002334
    ldr r3, [r6, #68]
    cmp r3, #0
    beq .Lsec01_00002334
    cmp r0, #0
    bne .Lsec01_00002358
.Lsec01_00002334:
    ldr r3, [pc, #132]
    str r3, [r6, #4]
    ldr r3, [pc, #128]
    ldr r3, [r3, #24]
    mov r0, r7
    str r3, [r7, #24]
.Lsec01_0000234c:
    bl deflateEnd
.Lsec01_00002350:
    mvn r0, #3
    b .Lsec01_000023a0
.Lsec01_00002358:
    mov r3, #3
    mla r1, r2, r3, r0
    bic r3, r2, #1
    ldr r2, [pc, #92]
    add r3, r0, r3
    str r3, [r6, r2]
    ldr r2, [sp, #32]
    ldr r3, [pc, #80]
    strb r2, [r6, #36]
    str r1, [r6, r3]
    ldr r3, [sp, #28]
    mov r0, r7
    str sl, [r6, #132]
    str r3, [r6, #136]
    add sp, sp, #44
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.Lsec01_00002398:
    b deflateReset
.Lsec01_0000239c:
    mvn r0, #5
.Lsec01_000023a0:
    add sp, sp, #44
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
    bx lr
    .long zcalloc
    .long zcfree
    .long .Lsec05_00000044
    .long .Lsec05_0000008c
    .long 0x0000169c
    .long 0x0000029a
    .long z_errmsg
    .long 0x000016a4
    .long 0x00001698
.arm
deflateInit_:
    str lr, [sp, #-4]!
    mov lr, #8
    sub sp, sp, #20
    str r2, [sp, #8]
    str r3, [sp, #12]
    mov ip, #0
    mov r2, lr
    mov r3, #15
    str ip, [sp, #4]
    str lr, [sp]
.Lsec01_000023f8:
    bl deflateInit2_
    add sp, sp, #20
    ldr lr, [sp], #4
    bx lr

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz "no state"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_0000000c:
    .asciz "bad flush"
    .asciz ""
    .asciz ""
.Lsec05_00000018:
    .asciz "nextout null"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000028:
    .asciz "nextin null"
.Lsec05_00000034:
    .asciz "finish conflict"
.Lsec05_00000044:
    .long 0x45442121
    .long 0x54414c46
    .long 0x4e492045
    .long 0x46205449
    .long 0x214c4941
    .long 0x6c6d2021
    .long 0x2064253a
    .long 0x253a786d
    .long 0x656d2064
    .long 0x2064253a
    .long 0x253a647a
    .long 0x62772064
    .long 0x2064253a
    .long 0x253a656c
    .long 0x74732064
    .long 0x2064253a
    .long 0x253a667a
    .long 0x00000a64
.Lsec05_0000008c:
    .long 0x74617473
    .long 0x61662065
    .long 0x31206c69
    .long 0x0000000a

.section .rodata,"a",%progbits
.balign 4
deflate_copyright:
    .long 0x66656420
    .long 0x6574616c
    .long 0x322e3120
    .long 0x4320332e
    .long 0x7279706f
    .long 0x74686769
    .long 0x39393120
    .long 0x30322d35
    .long 0x4a203530
    .long 0x2d6e6165
    .long 0x70756f6c
    .long 0x69614720
    .long 0x20796c6c
    .long 0x00000000
configuration_table:
.Lsec06_00000038:
    .long 0x00000000
    .long 0x00000000
    .long .Lsec01_000010dc
    .long 0x00040004
    .long 0x00040008
    .long .Lsec01_00000cb8
    .long 0x00050004
    .long 0x00080010
    .long .Lsec01_00000cb8
    .long 0x00060004
    .long 0x00200020
    .long .Lsec01_00000cb8
    .long 0x00040004
    .long 0x00100010
    .long .Lsec01_000007a0
    .long 0x00100008
    .long 0x00200020
    .long .Lsec01_000007a0
    .long 0x00100008
    .long 0x00800080
    .long .Lsec01_000007a0
    .long 0x00200008
    .long 0x01000080
    .long .Lsec01_000007a0
    .long 0x00800020
    .long 0x04000102
    .long .Lsec01_000007a0
    .long 0x01020020
    .long 0x10000102
    .long .Lsec01_000007a0

.size putShortMSB, 40
.size longest_match, 520
.size longest_match_fast, 300
.size fill_window, 492
.size flush_pending, 144
.size deflate_slow, 1304
.size deflate_fast, 1060
.size deflate_stored, 436
.size configuration_table, 120
.size deflateSetHeader, 52
.size deflatePrime, 72
.size deflateTune, 72
.size deflateEnd, 252
.size deflateCopy, 8
.size deflate, 2660
.size deflateParams, 228
.size deflateSetDictionary, 304
.size deflateBound, 100
.size deflateReset, 332
.size deflateInit2_, 792
.size deflateInit_, 56
.size deflate_copyright, 53

.section .note.GNU-stack,"",%progbits
