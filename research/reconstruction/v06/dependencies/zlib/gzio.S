/* Reconstructed mnemonic source for gzio.o. */
.syntax unified
.arch armv5te

.type do_flush, %function
.type putLong, %function
.type destroy, %function
.type get_byte, %function
.type getLong, %function
.type check_header, %function
.type gz_open, %function
.global gzungetc
.type gzungetc, %function
.global gzeof
.type gzeof, %function
.global gzdirect
.type gzdirect, %function
.global gzclearerr
.type gzclearerr, %function
.global gzerror
.type gzerror, %function
.global gzclose
.type gzclose, %function
.global gzwrite
.type gzwrite, %function
.global gzputs
.type gzputs, %function
.global gzputc
.type gzputc, %function
.global gzrewind
.type gzrewind, %function
.global gzflush
.type gzflush, %function
.global gzprintf
.type gzprintf, %function
.global gzread
.type gzread, %function
.global gzseek
.type gzseek, %function
.global gztell
.type gztell, %function
.global gzgets
.type gzgets, %function
.global gzgetc
.type gzgetc, %function
.global gzsetparams
.type gzsetparams, %function
.global gzdopen
.type gzdopen, %function
.global gzopen
.type gzopen, %function

.section .text,"ax",%progbits
.balign 4
.arm
gzungetc:
    cmp r1, #0
    beq .Lsec01_0000006c
    ldrb r2, [r1, #92]
    cmn r0, #1
    movne r3, #0
    moveq r3, #1
    cmp r2, #114
    moveq ip, r3
    orrne ip, r3, #1
    cmp ip, #0
    bne .Lsec01_0000006c
    ldr r3, [r1, #108]
    cmn r3, #1
    bne .Lsec01_0000006c
    ldr r2, [r1, #56]
    ldr r3, [r1, #104]
    cmp r2, #1
    movne r2, #0
    moveq r2, #1
    cmp r2, #0
    sub r3, r3, #1
    str r0, [r1, #108]
    str r3, [r1, #104]
    str r2, [r1, #112]
    strne ip, [r1, #56]
    str ip, [r1, #60]
    bx lr
.Lsec01_0000006c:
    mvn r0, #0
    bx lr
gzeof:
    cmp r0, #0
    beq .Lsec01_000000ac
    ldrb r3, [r0, #92]
    cmp r3, #114
    bne .Lsec01_000000ac
    ldr r3, [r0, #60]
    cmp r3, #0
    mov r2, #1
    bne .Lsec01_000000b0
    ldr r3, [r0, #56]
    cmp r3, #1
    movne r2, #0
    moveq r2, #1
    b .Lsec01_000000b0
.Lsec01_000000ac:
    mov r2, #0
.Lsec01_000000b0:
    mov r0, r2
    bx lr
gzdirect:
    cmp r0, #0
    beq .Lsec01_000000d0
    ldrb r3, [r0, #92]
    cmp r3, #114
    ldreq r0, [r0, #88]
    bxeq lr
.Lsec01_000000d0:
    mov r0, #0
    bx lr
gzclearerr:
    cmp r0, #0
    bxeq lr
    ldr r3, [r0, #56]
    cmp r3, #1
    movne r3, #0
    ldr r2, [r0, #64]
    strne r3, [r0, #56]
    mov r3, #0
    str r3, [r0, #60]
    ldrh r3, [r2, #12]
    bic r3, r3, #96
    strh r3, [r2, #12]
    bx lr
gzerror:
    stmdb sp!, {r4, r5, r6, lr}
    subs r5, r0, #0
    ldreq r3, [pc, #204]
    ldreq r0, [r3, #16]
    mvneq r3, #1
    streq r3, [r1]
    beq .Lsec01_000001e0
    ldr r3, [r5, #56]
    cmp r3, #0
    str r3, [r1]
    ldreq r0, [pc, #176]
    beq .Lsec01_000001e0
    cmn r3, #1
    ldrne r6, [r5, #24]
    bne .Lsec01_00000158
.Lsec01_00000148:
    bl __errno
    ldr r0, [r0]
.Lsec01_00000150:
    bl strerror
    mov r6, r0
.Lsec01_00000158:
    cmp r6, #0
    beq .Lsec01_0000016c
    ldrb r3, [r6]
    cmp r3, #0
    bne .Lsec01_0000017c
.Lsec01_0000016c:
    ldr r3, [r5, #56]
    ldr r2, [pc, #112]
    rsb r3, r3, #2
    ldr r6, [r2, r3, lsl #2]
.Lsec01_0000017c:
    ldr r0, [r5, #80]
    cmp r0, #0
.Lsec01_00000184:
    blne free
    mov r0, r6
.Lsec01_0000018c:
    bl strlen
    mov r4, r0
    ldr r0, [r5, #84]
.Lsec01_00000198:
    bl strlen
    add r0, r0, #3
    add r0, r4, r0
.Lsec01_000001a4:
    bl malloc
    cmp r0, #0
    ldreq r3, [pc, #52]
    str r0, [r5, #80]
    ldreq r0, [r3, #24]
    beq .Lsec01_000001e0
    ldr r1, [r5, #84]
.Lsec01_000001c0:
    bl strcpy
    ldr r1, [pc, #36]
    ldr r0, [r5, #80]
.Lsec01_000001cc:
    bl strcat
    mov r1, r6
    ldr r0, [r5, #80]
.Lsec01_000001d8:
    bl strcat
    ldr r0, [r5, #80]
.Lsec01_000001e0:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long z_errmsg
    .long .Lsec05_00000000
    .long .Lsec05_00000004
.arm
do_flush:
    stmdb sp!, {r4, r5, r6, r7, lr}
    subs r4, r0, #0
    sub sp, sp, #4
    mov r7, r1
    beq .Lsec01_000002e8
    ldrb r3, [r4, #92]
    cmp r3, #119
    bne .Lsec01_000002e8
    mov r3, #0
    str r3, [r4, #4]
.Lsec01_0000021c:
    mov r6, r3
.Lsec01_00000220:
    ldr r3, [r4, #16]
    rsbs r5, r3, #4096
    beq .Lsec01_00000258
    ldr r0, [r4, #72]
    mov r1, #1
    mov r2, r5
    ldr r3, [r4, #64]
.Lsec01_0000023c:
    bl fwrite
    cmp r0, r5
    bne .Lsec01_000002d8
    ldr r3, [r4, #72]
    str r3, [r4, #12]
    mov r3, #4096
    str r3, [r4, #16]
.Lsec01_00000258:
    cmp r6, #0
    bne .Lsec01_000002c8
    ldr r3, [r4, #104]
    ldr r2, [r4, #16]
    add r3, r3, r2
    str r3, [r4, #104]
    mov r0, r4
    mov r1, r7
.Lsec01_00000278:
    bl deflate
    ldr r3, [r4, #104]
    ldr r2, [r4, #16]
    cmp r5, #0
    rsb r3, r2, r3
    str r3, [r4, #104]
    str r0, [r4, #56]
    bne .Lsec01_000002a0
    cmn r0, #5
    streq r6, [r4, #56]
.Lsec01_000002a0:
    ldr r3, [r4, #16]
    cmp r3, #0
    movne r6, #1
    bne .Lsec01_000002bc
    ldr r3, [r4, #56]
    cmp r3, #1
    beq .Lsec01_0000021c
.Lsec01_000002bc:
    ldr r3, [r4, #56]
    cmp r3, #1
    bls .Lsec01_00000220
.Lsec01_000002c8:
    ldr r0, [r4, #56]
    cmp r0, #1
    moveq r0, #0
    b .Lsec01_000002ec
.Lsec01_000002d8:
    mvn r3, #0
    mov r0, r3
    str r3, [r4, #56]
    b .Lsec01_000002ec
.Lsec01_000002e8:
    mvn r0, #1
.Lsec01_000002ec:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
putLong:
    stmdb sp!, {r4, r5, r6, lr}
    mov r6, r0
    mov r4, r1
    mov r5, #0
.Lsec01_00000308:
    and r0, r4, #255
    add r5, r5, #1
    mov r1, r6
.Lsec01_00000314:
    bl fputc
    cmp r5, #4
    mov r4, r4, lsr #8
    bne .Lsec01_00000308
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
destroy:
    stmdb sp!, {r4, r5, r6, lr}
    subs r4, r0, #0
    mvneq r6, #1
    beq .Lsec01_000003e8
    ldr r0, [r4, #80]
    cmp r0, #0
.Lsec01_00000344:
    blne free
    ldr r3, [r4, #28]
    cmp r3, #0
    beq .Lsec01_00000384
    ldrb r3, [r4, #92]
    cmp r3, #119
    bne .Lsec01_0000036c
    mov r0, r4
.Lsec01_00000364:
    bl deflateEnd
    b .Lsec01_0000037c
.Lsec01_0000036c:
    cmp r3, #114
    bne .Lsec01_00000384
    mov r0, r4
.Lsec01_00000378:
    bl inflateEnd
.Lsec01_0000037c:
    mov r5, r0
    b .Lsec01_00000388
.Lsec01_00000384:
    mov r5, #0
.Lsec01_00000388:
    ldr r0, [r4, #64]
    cmp r0, #0
    beq .Lsec01_000003b0
.Lsec01_00000394:
    bl fclose
    cmp r0, #0
    beq .Lsec01_000003b0
.Lsec01_000003a0:
    bl __errno
    ldr r3, [r0]
    cmp r3, #29
    mvnne r5, #0
.Lsec01_000003b0:
    ldr r6, [r4, #56]
    ldr r0, [r4, #68]
    cmp r6, #0
    movge r6, r5
    cmp r0, #0
.Lsec01_000003c4:
    blne free
    ldr r0, [r4, #72]
    cmp r0, #0
.Lsec01_000003d0:
    blne free
    ldr r0, [r4, #84]
    cmp r0, #0
.Lsec01_000003dc:
    blne free
    mov r0, r4
.Lsec01_000003e4:
    bl free
.Lsec01_000003e8:
    mov r0, r6
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
gzclose:
    stmdb sp!, {r4, lr}
    subs r4, r0, #0
    beq .Lsec01_00000444
    ldrb r3, [r4, #92]
    cmp r3, #119
    mov r1, #4
    bne .Lsec01_00000438
    bl do_flush
    cmp r0, #0
    mov r0, r4
    bne .Lsec01_0000043c
    ldr r0, [r4, #64]
    ldr r1, [r4, #76]
    bl putLong
    ldr r0, [r4, #64]
    ldr r1, [r4, #100]
    bl putLong
.Lsec01_00000438:
    mov r0, r4
.Lsec01_0000043c:
    ldmia sp!, {r4, lr}
    b destroy
.Lsec01_00000444:
    mvn r0, #1
    ldmia sp!, {r4, lr}
    bx lr
gzwrite:
    stmdb sp!, {r4, r5, r6, lr}
    subs r4, r0, #0
    mov r6, r1
    mov r5, r2
    beq .Lsec01_0000053c
    ldrb r3, [r4, #92]
    cmp r3, #119
    streq r1, [r4]
    streq r2, [r4, #4]
    beq .Lsec01_000004fc
    b .Lsec01_0000053c
.Lsec01_0000047c:
    ldr r3, [r4, #16]
    cmp r3, #0
    bne .Lsec01_000004a4
    ldr r0, [r4, #72]
    ldr r3, [r4, #64]
    str r0, [r4, #12]
.Lsec01_00000494:
    bl fwrite
    cmp r0, #4096
    bne .Lsec01_00000530
    str r0, [r4, #16]
.Lsec01_000004a4:
    ldr r3, [r4, #100]
    ldr r2, [r4, #104]
    ldr r1, [r4, #4]
    ldr r0, [r4, #16]
    add r3, r3, r1
    add r2, r2, r0
    str r3, [r4, #100]
    str r2, [r4, #104]
    mov r1, #0
    mov r0, r4
.Lsec01_000004cc:
    bl deflate
    ldr r3, [r4, #100]
    ldr r2, [r4, #104]
    ldr r1, [r4, #4]
    ldr ip, [r4, #16]
    rsb r3, r1, r3
    rsb r2, ip, r2
    cmp r0, #0
    str r3, [r4, #100]
    str r2, [r4, #104]
    str r0, [r4, #56]
    bne .Lsec01_00000510
.Lsec01_000004fc:
    ldr r3, [r4, #4]
    cmp r3, #0
    mov r1, #1
    mov r2, #4096
    bne .Lsec01_0000047c
.Lsec01_00000510:
    mov r2, r5
    mov r1, r6
    ldr r0, [r4, #76]
.Lsec01_0000051c:
    bl crc32
    ldr r3, [r4, #4]
    rsb r2, r3, r5
    str r0, [r4, #76]
    b .Lsec01_00000540
.Lsec01_00000530:
    mvn r3, #0
    str r3, [r4, #56]
    b .Lsec01_00000510
.Lsec01_0000053c:
    mvn r2, #1
.Lsec01_00000540:
    mov r0, r2
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
gzputs:
    stmdb sp!, {r4, r5, lr}
    mov r5, r0
    sub sp, sp, #4
    mov r0, r1
    mov r4, r1
.Lsec01_00000560:
    bl strlen
    mov r1, r4
    mov r2, r0
    mov r0, r5
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
.Lsec01_00000578:
    b gzwrite
gzputc:
    str lr, [sp, #-4]!
    sub sp, sp, #12
    add r3, sp, #8
    strb r1, [r3, #-1]!
    mov r2, #1
    mov r1, r3
.Lsec01_00000594:
    bl gzwrite
    cmp r0, #1
    mvn r0, #0
    ldreqb r0, [sp, #7]
    add sp, sp, #12
    ldr lr, [sp], #4
    bx lr
gzrewind:
    stmdb sp!, {r4, r5, lr}
    subs r4, r0, #0
    sub sp, sp, #4
    beq .Lsec01_0000062c
    ldrb r3, [r4, #92]
    mov r5, #0
    cmp r3, #114
    mov r1, r5
    mov r2, r5
    mov r0, r5
    bne .Lsec01_0000062c
    ldr r3, [r4, #68]
    mvn ip, #0
    str r3, [r4]
    str ip, [r4, #108]
    str r5, [r4, #56]
    str r5, [r4, #60]
    str r5, [r4, #4]
.Lsec01_000005f8:
    bl crc32
    ldr r3, [r4, #88]
    cmp r3, r5
    str r0, [r4, #76]
    mov r0, r4
.Lsec01_0000060c:
    bleq inflateReset
    str r5, [r4, #100]
    str r5, [r4, #104]
    ldr r1, [r4, #96]
    mov r2, r5
    ldr r0, [r4, #64]
.Lsec01_00000624:
    bl fseek
    b .Lsec01_00000630
.Lsec01_0000062c:
    mvn r0, #0
.Lsec01_00000630:
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
gzflush:
    stmdb sp!, {r4, lr}
    mov r4, r0
    bl do_flush
    cmp r0, #0
    bne .Lsec01_00000668
    ldr r0, [r4, #64]
.Lsec01_00000654:
    bl fflush
    ldr r3, [r4, #56]
    cmp r3, #1
    movne r0, r3
    moveq r0, #0
.Lsec01_00000668:
    ldmia sp!, {r4, lr}
    bx lr
gzprintf:
    stmdb sp!, {r1, r2, r3}
    stmdb sp!, {r4, r5, lr}
    sub sp, sp, #4096
    sub sp, sp, #8
    add r3, sp, #4096
    add r4, sp, #8
    add ip, sp, #4096
    add ip, ip, #24
    add lr, sp, #4096
    ldr r1, [r3, #20]
    sub r4, r4, #4
    mov r3, #0
    mov r2, ip
    strb r3, [lr, #3]
    str ip, [lr, #4]
    mov r5, r0
    mov r0, r4
.Lsec01_000006b4:
    bl vsprintf
    ldr r3, [pc, #72]
    sub r2, r0, #1
    cmp r2, r3
    mov ip, r0
    bhi .Lsec01_000006f0
    mov r2, ip
    add ip, sp, #4096
    ldrb r3, [ip, #3]
    cmp r3, #0
    mov r0, r5
    mov r1, r4
    bne .Lsec01_000006f0
.Lsec01_000006e8:
    bl gzwrite
    b .Lsec01_000006f4
.Lsec01_000006f0:
    mov r0, #0
.Lsec01_000006f4:
    add sp, sp, #8
    add sp, sp, #4096
    ldmia sp!, {r4, r5, lr}
    add sp, sp, #12
    bx lr
    .long 0x00000ffe
.arm
get_byte:
    stmdb sp!, {r4, r5, lr}
    ldr r3, [r0, #60]
    cmp r3, #0
    sub sp, sp, #4
    mov r4, r0
    bne .Lsec01_000007a4
    ldr r5, [r0, #4]
    cmp r5, #0
    bne .Lsec01_00000788
.Lsec01_00000730:
    bl __errno
    ldr r3, [r4, #64]
    str r5, [r0]
    mov r1, #1
    ldr r0, [r4, #68]
    mov r2, #4096
.Lsec01_00000748:
    bl fread
    cmp r0, #0
    ldrne r3, [r4, #68]
    str r0, [r4, #4]
    strne r3, [r4]
    bne .Lsec01_00000788
    ldr r3, [r4, #64]
    ldrh r3, [r3, #12]
    mvn r2, #0
    tst r3, #64
    mov r3, #1
    mov r0, r2
    str r3, [r4, #60]
    strne r2, [r4, #56]
    bne .Lsec01_000007a8
    b .Lsec01_000007a4
.Lsec01_00000788:
    ldr r3, [r4, #4]
    sub r3, r3, #1
    str r3, [r4, #4]
    ldr r3, [r4]
    ldrb r0, [r3], #1
    str r3, [r4]
    b .Lsec01_000007a8
.Lsec01_000007a4:
    mvn r0, #0
.Lsec01_000007a8:
    add sp, sp, #4
    ldmia sp!, {r4, r5, lr}
    bx lr
getLong:
    stmdb sp!, {r4, r5, r6, r7, lr}
    sub sp, sp, #4
    mov r7, r0
    bl get_byte
    mov r6, r0
    mov r0, r7
    bl get_byte
    mov r5, r0
    mov r0, r7
    bl get_byte
    mov r4, r0
    mov r0, r7
    bl get_byte
    mov r4, r4, lsl #16
    cmn r0, #1
    add r1, r4, r0, lsl #24
    add r2, r6, r5, lsl #8
    mvneq r3, #2
    add r0, r2, r1
    streq r3, [r7, #56]
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
check_header:
    stmdb sp!, {r4, r5, r6, lr}
    ldr r4, [r0, #4]
    cmp r4, #1
    mov r5, r0
    bhi .Lsec01_0000089c
    cmp r4, #0
    ldrne r3, [r0]
    ldrneb r2, [r3]
    ldrne r3, [r0, #68]
    strneb r2, [r3]
.Lsec01_00000838:
    bl __errno
    ldr r3, [r5, #68]
    mov r2, #0
    str r2, [r0]
    add r2, r2, #4096
    add r0, r4, r3
    mov r2, r2, asr r4
    mov r1, #1
    ldr r3, [r5, #64]
.Lsec01_0000085c:
    bl fread
    cmp r0, #0
    bne .Lsec01_0000087c
    ldr r3, [r5, #64]
    ldrh r3, [r3, #12]
    tst r3, #64
    mvnne r3, #0
    strne r3, [r5, #56]
.Lsec01_0000087c:
    ldr r3, [r5, #4]
    add r0, r3, r0
    ldr r3, [r5, #68]
    cmp r0, #1
    str r3, [r5]
    str r0, [r5, #4]
    strls r0, [r5, #88]
    bls .Lsec01_000009c4
.Lsec01_0000089c:
    ldr r2, [r5]
    ldrb r3, [r2]
    cmp r3, #31
    bne .Lsec01_000008b8
    ldrb r3, [r2, #1]
    cmp r3, #139
    beq .Lsec01_000008c4
.Lsec01_000008b8:
    mov r3, #1
    str r3, [r5, #88]
    b .Lsec01_000009c4
.Lsec01_000008c4:
    ldr r3, [r5, #4]
    add r2, r2, #2
    sub r3, r3, #2
    stmia r5, {r2, r3}
    mov r0, r5
    bl get_byte
    mov r4, r0
    mov r0, r5
    bl get_byte
    cmp r4, #8
    mov r6, r0
    bne .Lsec01_00000900
    ands r3, r0, #224
    moveq r4, r3
    beq .Lsec01_00000908
.Lsec01_00000900:
    mvn r3, #2
    b .Lsec01_000009c0
.Lsec01_00000908:
    add r4, r4, #1
    mov r0, r5
    bl get_byte
    cmp r4, #6
    bne .Lsec01_00000908
    tst r6, #4
    beq .Lsec01_00000954
    mov r0, r5
    bl get_byte
    mov r4, r0
    mov r0, r5
    bl get_byte
    add r4, r4, r0, lsl #8
.Lsec01_0000093c:
    subs r4, r4, #1
    mov r0, r5
    bcc .Lsec01_00000954
    bl get_byte
    cmn r0, #1
    bne .Lsec01_0000093c
.Lsec01_00000954:
    tst r6, #8
    beq .Lsec01_00000974
.Lsec01_0000095c:
    mov r0, r5
    bl get_byte
    cmp r0, #0
    beq .Lsec01_00000974
    cmn r0, #1
    bne .Lsec01_0000095c
.Lsec01_00000974:
    tst r6, #16
    beq .Lsec01_00000994
.Lsec01_0000097c:
    mov r0, r5
    bl get_byte
    cmp r0, #0
    beq .Lsec01_00000994
    cmn r0, #1
    bne .Lsec01_0000097c
.Lsec01_00000994:
    tst r6, #2
    beq .Lsec01_000009b4
    mov r4, #0
.Lsec01_000009a0:
    add r4, r4, #1
    mov r0, r5
    bl get_byte
    cmp r4, #2
    bne .Lsec01_000009a0
.Lsec01_000009b4:
    ldr r3, [r5, #60]
    cmp r3, #0
    mvnne r3, #2
.Lsec01_000009c0:
    str r3, [r5, #56]
.Lsec01_000009c4:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
gzread:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    subs r4, r0, #0
    mov r8, r2
    beq .Lsec01_00000cd0
    ldrb r3, [r4, #92]
    cmp r3, #114
    bne .Lsec01_00000cd0
    ldr r2, [r4, #56]
    cmn r2, #3
    cmnne r2, #1
    movne r0, #0
    moveq r0, #1
    beq .Lsec01_00000cd8
    cmp r2, #1
    beq .Lsec01_00000cdc
    cmp r8, #0
    mov r6, r1
    str r1, [r4, #12]
    str r8, [r4, #16]
    beq .Lsec01_00000c84
    ldr r3, [r4, #108]
    cmn r3, #1
    beq .Lsec01_00000c84
    strb r3, [r1]
    ldr r3, [r4, #112]
    ldr r2, [r4, #12]
    ldr r1, [r4, #16]
    ldr r0, [r4, #104]
    cmp r3, #0
    mvn r3, #0
    add r0, r0, #1
    add r2, r2, #1
    sub r1, r1, #1
    str r3, [r4, #108]
    addeq r6, r6, #1
    movne r3, #1
    str r0, [r4, #104]
    str r2, [r4, #12]
    str r1, [r4, #16]
    moveq r7, r6
    movne r0, r3
    strne r3, [r4, #56]
    bne .Lsec01_00000cdc
    b .Lsec01_00000c88
.Lsec01_00000a7c:
    mvn r3, #0
    b .Lsec01_00000a88
.Lsec01_00000a84:
    mvn r3, #2
.Lsec01_00000a88:
    str r3, [r4, #56]
    b .Lsec01_00000c94
.Lsec01_00000a90:
    ldr r3, [r4, #88]
    cmp r3, #0
    ldr r3, [r4, #4]
    beq .Lsec01_00000b4c
    cmp r3, r2
    mov r5, r3
    movhi r5, r2
    bhi .Lsec01_00000abc
    cmp r3, #0
    moveq r5, r2
    beq .Lsec01_00000b00
.Lsec01_00000abc:
    mov r2, r5
    ldr r1, [r4]
    ldr r0, [r4, #12]
.Lsec01_00000ac8:
    bl memcpy
    ldr r3, [r4, #16]
    ldr r2, [r4]
    ldr r1, [r4, #4]
    rsb r3, r5, r3
    rsb r1, r5, r1
    add r7, r7, r5
    add r2, r2, r5
    subs r5, r3, #0
    str r2, [r4]
    str r1, [r4, #4]
    str r7, [r4, #12]
    str r3, [r4, #16]
    beq .Lsec01_00000b1c
.Lsec01_00000b00:
    mov r0, r7
    mov r1, #1
    mov r2, r5
    ldr r3, [r4, #64]
.Lsec01_00000b10:
    bl fread
    rsb r0, r0, r5
    str r0, [r4, #16]
.Lsec01_00000b1c:
    ldr r3, [r4, #16]
    ldr r2, [r4, #100]
    rsb r0, r3, r8
    ldr r1, [r4, #104]
    cmp r0, #0
    add r2, r2, r0
    add r1, r1, r0
    moveq r3, #1
    str r2, [r4, #100]
    str r1, [r4, #104]
    streq r3, [r4, #60]
    b .Lsec01_00000cdc
.Lsec01_00000b4c:
    cmp r3, #0
    bne .Lsec01_00000ba8
    ldr r5, [r4, #60]
    cmp r5, #0
    bne .Lsec01_00000ba8
.Lsec01_00000b60:
    bl __errno
    mov r1, #1
    str r5, [r0]
    mov r2, #4096
    ldr r0, [r4, #68]
    ldr r3, [r4, #64]
.Lsec01_00000b78:
    bl fread
    cmp r0, #0
    str r0, [r4, #4]
    bne .Lsec01_00000ba0
    ldr r3, [r4, #64]
    ldrh r3, [r3, #12]
    tst r3, #64
    mov r3, #1
    str r3, [r4, #60]
    bne .Lsec01_00000a7c
.Lsec01_00000ba0:
    ldr r3, [r4, #68]
    str r3, [r4]
.Lsec01_00000ba8:
    ldr r3, [r4, #100]
    ldr r2, [r4, #104]
    ldr r1, [r4, #4]
    ldr r0, [r4, #16]
    add r3, r3, r1
    add r2, r2, r0
    str r3, [r4, #100]
    str r2, [r4, #104]
    mov r1, #0
    mov r0, r4
.Lsec01_00000bd0:
    bl inflate
    ldr r3, [r4, #100]
    ldr r2, [r4, #104]
    ldr r1, [r4, #4]
    ldr ip, [r4, #16]
    rsb r3, r1, r3
    rsb r2, ip, r2
    cmp r0, #1
    str r3, [r4, #100]
    str r2, [r4, #104]
    str r0, [r4, #56]
    bne .Lsec01_00000c68
    ldr r2, [r4, #12]
    mov r1, r6
    rsb r2, r6, r2
    ldr r0, [r4, #76]
.Lsec01_00000c10:
    bl crc32
    str r0, [r4, #76]
    mov r0, r4
    ldr r6, [r4, #12]
    bl getLong
    ldr r3, [r4, #76]
    cmp r0, r3
    bne .Lsec01_00000a84
    mov r0, r4
    bl getLong
    mov r0, r4
    bl check_header
    ldr r5, [r4, #56]
    cmp r5, #0
    bne .Lsec01_00000c94
    mov r0, r4
.Lsec01_00000c50:
    bl inflateReset
    mov r0, r5
    mov r1, r5
    mov r2, r5
.Lsec01_00000c60:
    bl crc32
    str r0, [r4, #76]
.Lsec01_00000c68:
    ldr r3, [r4, #56]
    cmp r3, #0
    bne .Lsec01_00000c94
    ldr r3, [r4, #60]
    cmp r3, #0
    bne .Lsec01_00000c94
    b .Lsec01_00000c88
.Lsec01_00000c84:
    mov r7, r1
.Lsec01_00000c88:
    ldr r2, [r4, #16]
    cmp r2, #0
    bne .Lsec01_00000a90
.Lsec01_00000c94:
    ldr r2, [r4, #12]
    mov r1, r6
    rsb r2, r6, r2
    ldr r0, [r4, #76]
.Lsec01_00000ca4:
    bl crc32
    ldr r2, [r4, #16]
    cmp r8, r2
    str r0, [r4, #76]
    bne .Lsec01_00000cc8
    ldr r3, [r4, #56]
    cmn r3, #3
    cmnne r3, #1
    beq .Lsec01_00000cd8
.Lsec01_00000cc8:
    rsb r0, r2, r8
    b .Lsec01_00000cdc
.Lsec01_00000cd0:
    mvn r0, #1
    b .Lsec01_00000cdc
.Lsec01_00000cd8:
    mvn r0, #0
.Lsec01_00000cdc:
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
gzseek:
    cmp r2, #2
    cmpne r0, #0
    stmdb sp!, {r4, r5, r6, lr}
    movne r6, #0
    moveq r6, #1
    mov r5, r1
    mov r4, r0
    beq .Lsec01_00000e9c
    ldr r3, [r0, #56]
    cmn r3, #1
    beq .Lsec01_00000e9c
    cmn r3, #3
    beq .Lsec01_00000e9c
    ldrb r3, [r0, #92]
    cmp r3, #119
    bne .Lsec01_00000d9c
    cmp r2, #0
    ldreq r3, [r0, #100]
    rsbeq r5, r3, r1
    cmp r5, #0
    blt .Lsec01_00000e9c
    ldr r3, [r0, #68]
    cmp r3, #0
    bne .Lsec01_00000d88
    mov r0, #4096
.Lsec01_00000d48:
    bl malloc
    cmp r0, #0
    str r0, [r4, #68]
    beq .Lsec01_00000e9c
    mov r1, r6
    mov r2, #4096
.Lsec01_00000d60:
    bl memset
    b .Lsec01_00000d88
.Lsec01_00000d68:
    cmp r5, #4096
    movlt r2, r5
    movge r2, #4096
    ldr r1, [r4, #68]
.Lsec01_00000d78:
    bl gzwrite
    cmp r0, #0
    beq .Lsec01_00000e9c
    rsb r5, r0, r5
.Lsec01_00000d88:
    cmp r5, #0
    mov r0, r4
    bgt .Lsec01_00000d68
    ldr r5, [r4, #100]
    b .Lsec01_00000eb4
.Lsec01_00000d9c:
    cmp r2, #1
    ldreq r3, [r0, #104]
    addeq r5, r1, r3
    cmp r5, #0
    blt .Lsec01_00000e9c
    ldr r3, [r0, #88]
    cmp r3, #0
    beq .Lsec01_00000df4
    ldr r2, [r0, #68]
    mvn r3, #0
    str r2, [r0]
    str r3, [r0, #108]
    str r6, [r0, #4]
    mov r2, r6
    ldr r0, [r0, #64]
    mov r1, r5
.Lsec01_00000ddc:
    bl fseek
    cmp r0, #0
    strge r5, [r4, #100]
    strge r5, [r4, #104]
    bge .Lsec01_00000eb4
    b .Lsec01_00000e9c
.Lsec01_00000df4:
    ldr r3, [r0, #104]
    cmp r5, r3
    rsbge r5, r3, r5
    bge .Lsec01_00000e10
.Lsec01_00000e04:
    bl gzrewind
    cmp r0, #0
    blt .Lsec01_00000e9c
.Lsec01_00000e10:
    cmp r5, #0
    beq .Lsec01_00000e94
    ldr r3, [r4, #72]
    cmp r3, #0
    bne .Lsec01_00000ea4
    mov r0, #4096
.Lsec01_00000e28:
    bl malloc
    cmp r0, #0
    str r0, [r4, #72]
    bne .Lsec01_00000ea4
    b .Lsec01_00000e9c
.Lsec01_00000e3c:
    ldr r3, [r4, #104]
    ldr r2, [r4, #112]
    add r3, r3, #1
    cmp r2, #0
    mvn r2, #0
    str r3, [r4, #104]
    add r5, r5, r2
    movne r3, #1
    str r2, [r4, #108]
    strne r3, [r4, #56]
    b .Lsec01_00000e88
.Lsec01_00000e68:
    cmp r5, #4096
    movlt r2, r5
    movge r2, #4096
    ldr r1, [r4, #72]
.Lsec01_00000e78:
    bl gzread
    cmp r0, #0
    ble .Lsec01_00000e9c
    rsb r5, r0, r5
.Lsec01_00000e88:
    cmp r5, #0
    mov r0, r4
    bgt .Lsec01_00000e68
.Lsec01_00000e94:
    ldr r5, [r4, #104]
    b .Lsec01_00000eb4
.Lsec01_00000e9c:
    mvn r5, #0
    b .Lsec01_00000eb4
.Lsec01_00000ea4:
    ldr r3, [r4, #108]
    cmn r3, #1
    bne .Lsec01_00000e3c
    b .Lsec01_00000e88
.Lsec01_00000eb4:
    mov r0, r5
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
gztell:
    mov r1, #0
    mov r2, #1
.Lsec01_00000ec8:
    b gzseek
gzgets:
    stmdb sp!, {r4, r5, r6, r7, lr}
    cmp r1, #0
    cmpne r2, #0
    sub sp, sp, #4
    mov r6, r1
    mov r5, r2
    mov r7, r0
    ble .Lsec01_00000f30
    mov r4, r1
.Lsec01_00000ef0:
    sub r5, r5, #1
    cmp r5, #0
    mov r1, r4
    mov r0, r7
    mov r2, #1
    ble .Lsec01_00000f38
.Lsec01_00000f08:
    bl gzread
    cmp r0, #1
    bne .Lsec01_00000f20
    ldrb r3, [r4], #1
    cmp r3, #10
    bne .Lsec01_00000ef0
.Lsec01_00000f20:
    mov r3, #0
    cmp r6, r4
    strb r3, [r4]
    bne .Lsec01_00000f40
.Lsec01_00000f30:
    mov r0, #0
    b .Lsec01_00000f44
.Lsec01_00000f38:
    mov r3, #0
    strb r3, [r4]
.Lsec01_00000f40:
    mov r0, r6
.Lsec01_00000f44:
    add sp, sp, #4
    ldmia sp!, {r4, r5, r6, r7, lr}
    bx lr
gzgetc:
    str lr, [sp, #-4]!
    sub sp, sp, #12
    add r1, sp, #7
    mov r2, #1
.Lsec01_00000f60:
    bl gzread
    cmp r0, #1
    mvn r0, #0
    ldreqb r0, [sp, #7]
    add sp, sp, #12
    ldr lr, [sp], #4
    bx lr
gzsetparams:
    stmdb sp!, {r4, r5, r6, lr}
    subs r4, r0, #0
    mov r5, r1
    mov r6, r2
    beq .Lsec01_00000fe8
    ldrb r3, [r4, #92]
    cmp r3, #119
    bne .Lsec01_00000fe8
    ldr r3, [r4, #16]
    cmp r3, #0
    mov r1, #1
    mov r2, #4096
    bne .Lsec01_00000fd4
    ldr r0, [r4, #72]
    ldr r3, [r4, #64]
    str r0, [r4, #12]
.Lsec01_00000fbc:
    bl fwrite
    cmp r0, #4096
    mvnne r3, #0
    strne r3, [r4, #56]
    mov r3, #4096
    str r3, [r4, #16]
.Lsec01_00000fd4:
    mov r0, r4
    mov r1, r5
    mov r2, r6
.Lsec01_00000fe0:
    bl deflateParams
    b .Lsec01_00000fec
.Lsec01_00000fe8:
    mvn r0, #1
.Lsec01_00000fec:
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
gz_open:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
    cmp r1, #0
    cmpne r0, #0
    sub sp, sp, #116
    mov r7, r0
    mov r6, r1
    movne r4, #0
    moveq r4, #1
    mov sl, r2
    beq .Lsec01_000012b0
    mov r0, #116
.Lsec01_00001020:
    bl malloc
    subs r5, r0, #0
    beq .Lsec01_000012b0
    mvn r8, #0
    mov r1, r4
    mov r2, r4
    str r4, [r5, #32]
    str r4, [r5, #36]
    str r4, [r5, #40]
    str r4, [r5, #68]
    str r4, [r5]
    str r4, [r5, #72]
    str r4, [r5, #12]
    str r4, [r5, #16]
    str r4, [r5, #4]
    str r4, [r5, #64]
    str r4, [r5, #56]
    str r4, [r5, #60]
    str r4, [r5, #100]
    str r4, [r5, #104]
    str r8, [r5, #108]
    mov r0, r4
.Lsec01_00001078:
    bl crc32
    str r4, [r5, #80]
    str r0, [r5, #76]
    str r4, [r5, #88]
    mov r0, r7
.Lsec01_0000108c:
    bl strlen
    add r0, r0, #1
.Lsec01_00001094:
    bl malloc
    cmp r0, #0
    str r0, [r5, #84]
    bne .Lsec01_000010b4
.Lsec01_000010a4:
    mov r0, r5
    bl destroy
    mov r0, r4
    b .Lsec01_000012c0
.Lsec01_000010b4:
    mov r1, r7
.Lsec01_000010b8:
    bl strcpy
    strb r4, [r5, #92]
    mov r1, r6
    mov lr, r4
    mov r6, r8
    add ip, sp, #32
.Lsec01_000010d0:
    ldrb r3, [r1]
    cmp r3, #114
    streqb r3, [r5, #92]
    ldrb r3, [r1]
    cmp r3, #97
    cmpne r3, #119
    moveq r3, #119
    streqb r3, [r5, #92]
    ldrb r2, [r1]
    sub r0, r2, #48
    and r3, r0, #255
    cmp r3, #9
    movls r6, r0
    bls .Lsec01_0000112c
    cmp r2, #102
    moveq lr, #1
    beq .Lsec01_00001138
    cmp r2, #104
    moveq lr, #2
    beq .Lsec01_00001138
    cmp r2, #82
    beq .Lsec01_000012b8
    strb r2, [ip], #1
.Lsec01_0000112c:
    ldrb r3, [r1]
    cmp r3, #0
    beq .Lsec01_00001148
.Lsec01_00001138:
    add r3, sp, #112
    cmp ip, r3
    add r1, r1, #1
    bne .Lsec01_000010d0
.Lsec01_00001148:
    ldrb r4, [r5, #92]
    cmp r4, #0
    beq .Lsec01_000010a4
    cmp r4, #119
    ldr r4, [pc, #364]
    bne .Lsec01_000011b0
    mov ip, #8
    mov r1, r6
    mov r2, ip
    mvn r3, #14
    str lr, [sp, #4]
    mov r0, r5
    mov lr, #56
    str r4, [sp, #8]
    str lr, [sp, #12]
    str ip, [sp]
.Lsec01_00001188:
    bl deflateInit2_
    mov r4, r0
    mov r0, #4096
.Lsec01_00001194:
    bl malloc
    cmp r4, #0
    str r0, [r5, #72]
    str r0, [r5, #12]
    bne .Lsec01_000011e8
    cmp r0, #0
    b .Lsec01_000011e4
.Lsec01_000011b0:
    mov r0, #4096
.Lsec01_000011b4:
    bl malloc
    mov r2, r4
    str r0, [r5]
    str r0, [r5, #68]
    mvn r1, #14
    mov r0, r5
    mov r3, #56
.Lsec01_000011d0:
    bl inflateInit2_
    cmp r0, #0
    bne .Lsec01_000011e8
    ldr r3, [r5, #68]
    cmp r3, #0
.Lsec01_000011e4:
    bne .Lsec01_000011f4
.Lsec01_000011e8:
    mov r0, r5
    bl destroy
    b .Lsec01_000012b0
.Lsec01_000011f4:
    mov r3, #4096
    str r3, [r5, #16]
.Lsec01_000011fc:
    bl __errno
    mov r3, #0
    cmp sl, #0
    str r3, [r0]
    add r1, sp, #32
    bge .Lsec01_00001220
    mov r0, r7
.Lsec01_00001218:
    bl fopen
    b .Lsec01_00001228
.Lsec01_00001220:
    mov r0, sl
.Lsec01_00001224:
    bl fdopen
.Lsec01_00001228:
    cmp r0, #0
    mov r4, r0
    str r0, [r5, #64]
    beq .Lsec01_000010a4
    ldrb r3, [r5, #92]
    cmp r3, #119
    bne .Lsec01_0000128c
    mov ip, #8
    mov lr, #0
    add r3, r3, #20
    str ip, [sp]
    ldr r1, [pc, #116]
    mov ip, #3
    mov r2, #31
    str lr, [sp, #24]
    str ip, [sp, #28]
    str lr, [sp, #4]
    str lr, [sp, #8]
    str lr, [sp, #12]
    str lr, [sp, #16]
    str lr, [sp, #20]
.Lsec01_0000127c:
    bl fprintf
    mov r3, #10
    str r3, [r5, #96]
    b .Lsec01_000012a8
.Lsec01_0000128c:
    mov r0, r5
    bl check_header
    ldr r0, [r5, #64]
.Lsec01_00001298:
    bl ftell
    ldr r3, [r5, #4]
    rsb r0, r3, r0
    str r0, [r5, #96]
.Lsec01_000012a8:
    mov r0, r5
    b .Lsec01_000012c0
.Lsec01_000012b0:
    mov r0, #0
    b .Lsec01_000012c0
.Lsec01_000012b8:
    mov lr, #3
    b .Lsec01_00001138
.Lsec01_000012c0:
    add sp, sp, #116
    ldmia sp!, {r4, r5, r6, r7, r8, sl, lr}
    bx lr
    .long .Lsec05_00000008
    .long .Lsec05_00000010
.arm
gzdopen:
    stmdb sp!, {r4, r5, r6, lr}
    sub sp, sp, #48
    subs r5, r0, #0
    add r6, sp, #2
    mov r4, r1
    mov r2, r5
    mov r0, r6
    mov r3, #0
    ldr r1, [pc, #40]
    blt .Lsec01_00001314
.Lsec01_000012fc:
    bl sprintf
    mov r0, r6
    mov r1, r4
    mov r2, r5
    bl gz_open
    mov r3, r0
.Lsec01_00001314:
    mov r0, r3
    add sp, sp, #48
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_00000028
.arm
gzopen:
    mvn r2, #0
    b gz_open

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec05_00000000:
    .asciz ""
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000004:
    .asciz ": "
    .asciz ""
.Lsec05_00000008:
    .asciz "1.2.3"
    .asciz ""
    .asciz ""
.Lsec05_00000010:
    .asciz "%c%c%c%c%c%c%c%c%c%c"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000028:
    .asciz "<fd:%d>"

.size do_flush, 260
.size putLong, 52
.size destroy, 200
.size get_byte, 168
.size getLong, 92
.size check_header, 444
.size gz_open, 736
.size gzungetc, 116
.size gzeof, 68
.size gzdirect, 32
.size gzclearerr, 52
.size gzerror, 232
.size gzclose, 92
.size gzwrite, 252
.size gzputs, 48
.size gzputc, 52
.size gzrewind, 140
.size gzflush, 52
.size gzprintf, 156
.size gzread, 792
.size gzseek, 476
.size gztell, 12
.size gzgets, 132
.size gzgetc, 44
.size gzsetparams, 120
.size gzdopen, 84
.size gzopen, 8

.section .note.GNU-stack,"",%progbits
