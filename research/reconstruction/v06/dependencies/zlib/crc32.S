/* Reconstructed mnemonic source for crc32.o. */
.syntax unified
.arch armv5te

.type crc_table, %object
.type gf2_matrix_times, %function
.type gf2_matrix_square, %function
.global get_crc_table
.type get_crc_table, %function
.global crc32
.type crc32, %function
.global crc32_combine
.type crc32_combine, %function

.section .text,"ax",%progbits
.balign 4
.arm
get_crc_table:
    ldr r0, [pc, #0]
    bx lr
    .long .Lsec05_00000000
.arm
crc32:
    stmdb sp!, {r4, r5, r6, lr}
    cmp r1, #0
    sub sp, sp, #8
    mov r6, r2
    moveq r0, r1
    beq .Lsec01_00000780
    mov r3, #1
    str r3, [sp, #4]
    ldrb r3, [sp, #4]
    cmp r3, #0
    mvnne r0, r0
    bne .Lsec01_0000005c
    b .Lsec01_00000364
.Lsec01_00000040:
    ldrb r3, [r1, #-1]
    ldr r2, [pc, #1856]
    eor r3, r0, r3
    and r3, r3, #255
    ldr r3, [r2, r3, lsl #2]
    sub r6, r6, #1
    eor r0, r3, r0, lsr #8
.Lsec01_0000005c:
    cmp r6, #0
    mov r3, r1
    beq .Lsec01_00000074
    tst r1, #3
    add r1, r1, #1
    bne .Lsec01_00000040
.Lsec01_00000074:
    mov r5, r3
    b .Lsec01_000002c8
.Lsec01_0000007c:
    ldr r3, [r5]
    eor r3, r0, r3
    ldr lr, [pc, #1792]
    mov r1, r3, lsr #6
    mov r0, r3, lsr #14
    and r2, r3, #255
    and r1, r1, #1020
    add r1, r1, lr
    and r0, r0, #1020
    add r2, lr, r2, lsl #2
    ldr ip, [r1, #2048]
    add r0, r0, lr
    mov r3, r3, lsr #24
    ldr r2, [r2, #3072]
    ldr r1, [r0, #1024]
    ldr r0, [lr, r3, lsl #2]
    ldr r3, [r5, #4]
    eor r2, r2, ip
    eor r1, r1, r3
    eor r2, r2, r0
    eor r2, r2, r1
    mov r1, r2, lsr #6
    mov r0, r2, lsr #14
    and r3, r2, #255
    and r1, r1, #1020
    add r1, r1, lr
    and r0, r0, #1020
    add r3, lr, r3, lsl #2
    ldr ip, [r1, #2048]
    add r0, r0, lr
    mov r2, r2, lsr #24
    ldr r3, [r3, #3072]
    ldr r1, [r0, #1024]
    ldr r0, [lr, r2, lsl #2]
    ldr r2, [r5, #8]
    eor r3, r3, ip
    eor r1, r1, r2
    eor r3, r3, r0
    eor r3, r3, r1
    mov r1, r3, lsr #6
    mov r0, r3, lsr #14
    and r2, r3, #255
    and r1, r1, #1020
    add r1, r1, lr
    and r0, r0, #1020
    add r2, lr, r2, lsl #2
    ldr ip, [r1, #2048]
    add r0, r0, lr
    mov r3, r3, lsr #24
    ldr r2, [r2, #3072]
    ldr r1, [r0, #1024]
    ldr r0, [lr, r3, lsl #2]
    ldr r3, [r5, #12]
    eor r2, r2, ip
    eor r1, r1, r3
    eor r2, r2, r0
    eor r2, r2, r1
    mov r1, r2, lsr #6
    mov r0, r2, lsr #14
    and r3, r2, #255
    and r1, r1, #1020
    add r1, r1, lr
    and r0, r0, #1020
    add r3, lr, r3, lsl #2
    ldr ip, [r1, #2048]
    add r0, r0, lr
    mov r2, r2, lsr #24
    ldr r3, [r3, #3072]
    ldr r1, [r0, #1024]
    ldr r0, [lr, r2, lsl #2]
    ldr r2, [r5, #16]
    eor r3, r3, ip
    eor r1, r1, r2
    eor r3, r3, r0
    eor r3, r3, r1
    mov r1, r3, lsr #6
    mov r0, r3, lsr #14
    and r2, r3, #255
    and r1, r1, #1020
    add r1, r1, lr
    and r0, r0, #1020
    add r2, lr, r2, lsl #2
    ldr ip, [r1, #2048]
    add r0, r0, lr
    mov r3, r3, lsr #24
    ldr r2, [r2, #3072]
    ldr r1, [r0, #1024]
    ldr r0, [lr, r3, lsl #2]
    ldr r3, [r5, #20]
    eor r2, r2, ip
    eor r1, r1, r3
    eor r2, r2, r0
    eor r2, r2, r1
    mov r0, r2, lsr #6
    mov ip, r2, lsr #14
    and r3, r2, #255
    and r0, r0, #1020
    add r3, lr, r3, lsl #2
    add r0, r0, lr
    and ip, ip, #1020
    add ip, ip, lr
    ldr r1, [r3, #3072]
    ldr r4, [r0, #2048]
    mov r2, r2, lsr #24
    ldr r0, [lr, r2, lsl #2]
    ldr r3, [ip, #1024]
    ldr r2, [r5, #24]
    eor r1, r1, r4
    eor r3, r3, r2
    eor r1, r1, r0
    eor r1, r1, r3
    mov r2, r1, lsr #6
    mov r0, r1, lsr #14
    and r3, r1, #255
    and r2, r2, #1020
    add r2, r2, lr
    and r0, r0, #1020
    add r3, lr, r3, lsl #2
    ldr ip, [r2, #2048]
    add r0, r0, lr
    mov r1, r1, lsr #24
    ldr r3, [r3, #3072]
    ldr r2, [r0, #1024]
    ldr r0, [lr, r1, lsl #2]
    ldr r1, [r5, #28]
    eor r3, r3, ip
    eor r2, r2, r1
    eor r3, r3, r0
    eor r3, r3, r2
    mov r1, r3, lsr #6
    and r2, r3, #255
    and r1, r1, #1020
    mov r0, r3, lsr #14
    add r2, lr, r2, lsl #2
    add r1, r1, lr
    mov r3, r3, lsr #24
    and r0, r0, #1020
    ldr r2, [r2, #3072]
    ldr r1, [r1, #2048]
    ldr ip, [lr, r3, lsl #2]
    add r0, r0, lr
    eor r2, r2, r1
    ldr r3, [r0, #1024]
    eor r2, r2, ip
    eor r0, r2, r3
    add r5, r5, #32
    sub r6, r6, #32
.Lsec01_000002c8:
    cmp r6, #31
    bhi .Lsec01_0000007c
    b .Lsec01_00000320
.Lsec01_000002d4:
    ldr r3, [r5], #4
    eor r3, r0, r3
    mov r1, r3, lsr #6
    and r2, r3, #255
    and r1, r1, #1020
    mov r0, r3, lsr #14
    add r2, lr, r2, lsl #2
    add r1, r1, lr
    mov r3, r3, lsr #24
    and r0, r0, #1020
    ldr r2, [r2, #3072]
    ldr r1, [r1, #2048]
    ldr ip, [lr, r3, lsl #2]
    add r0, r0, lr
    eor r2, r2, r1
    ldr r3, [r0, #1024]
    eor r2, r2, ip
    sub r6, r6, #4
    eor r0, r2, r3
.Lsec01_00000320:
    cmp r6, #3
    ldr lr, [pc, #1120]
    bhi .Lsec01_000002d4
    cmp r6, #0
    beq .Lsec01_0000035c
    mov r1, #0
.Lsec01_00000338:
    ldrb r3, [r1, r5]
    ldr r2, [pc, #1096]
    eor r3, r0, r3
    and r3, r3, #255
    ldr r3, [r2, r3, lsl #2]
    add r1, r1, #1
    cmp r1, r6
    eor r0, r3, r0, lsr #8
    bne .Lsec01_00000338
.Lsec01_0000035c:
    mvn r0, r0
    b .Lsec01_00000780
.Lsec01_00000364:
    mov r3, r0, lsr #8
    and r2, r0, #65280
    and r3, r3, #65280
    mov r2, r2, lsl #8
    add r2, r2, r0, lsl #24
    add r3, r3, r0, lsr #24
    add r3, r3, r2
    mvn r0, r3
    b .Lsec01_000003a8
.Lsec01_00000388:
    ldrb r3, [r1, #-1]
    ldr r2, [pc, #1016]
    eor r3, r3, r0, lsr #24
    add r2, r2, r3, lsl #2
    add r2, r2, #4096
    ldr r3, [r2]
    sub r6, r6, #1
    eor r0, r3, r0, lsl #8
.Lsec01_000003a8:
    cmp r6, #0
    mov r3, r1
    beq .Lsec01_000003c0
    tst r1, #3
    add r1, r1, #1
    bne .Lsec01_00000388
.Lsec01_000003c0:
    sub r4, r3, #4
    b .Lsec01_000006b0
.Lsec01_000003c8:
    ldr r2, [r4, #4]
    eor r2, r0, r2
    ldr ip, [pc, #948]
    mov r1, r2, lsr #6
    mov r0, r2, lsr #14
    and r3, r2, #255
    and r1, r1, #1020
    add r3, ip, r3, lsl #2
    add r1, r1, ip
    and r0, r0, #1020
    mov r2, r2, lsr #24
    add r0, r0, ip
    add r1, r1, #5120
    add r2, ip, r2, lsl #2
    add r3, r3, #4096
    ldr lr, [r1]
    add r0, r0, #6144
    add r2, r2, #7168
    ldr r3, [r3]
    ldr r1, [r0]
    ldr r0, [r2]
    ldr r2, [r4, #8]
    eor r3, r3, lr
    eor r1, r1, r2
    eor r3, r3, r0
    eor r3, r3, r1
    mov r1, r3, lsr #6
    mov r0, r3, lsr #14
    and r2, r3, #255
    and r1, r1, #1020
    add r2, ip, r2, lsl #2
    add r1, r1, ip
    and r0, r0, #1020
    mov r3, r3, lsr #24
    add r0, r0, ip
    add r1, r1, #5120
    add r3, ip, r3, lsl #2
    add r2, r2, #4096
    ldr lr, [r1]
    add r0, r0, #6144
    add r3, r3, #7168
    ldr r2, [r2]
    ldr r1, [r0]
    ldr r0, [r3]
    ldr r3, [r4, #12]
    eor r2, r2, lr
    eor r1, r1, r3
    eor r2, r2, r0
    eor r2, r2, r1
    mov r1, r2, lsr #6
    mov r0, r2, lsr #14
    and r3, r2, #255
    and r1, r1, #1020
    add r3, ip, r3, lsl #2
    add r1, r1, ip
    and r0, r0, #1020
    mov r2, r2, lsr #24
    add r0, r0, ip
    add r1, r1, #5120
    add r2, ip, r2, lsl #2
    add r3, r3, #4096
    ldr lr, [r1]
    add r0, r0, #6144
    add r2, r2, #7168
    ldr r3, [r3]
    ldr r1, [r0]
    ldr r0, [r2]
    ldr r2, [r4, #16]
    eor r3, r3, lr
    eor r1, r1, r2
    eor r3, r3, r0
    eor r3, r3, r1
    mov r1, r3, lsr #6
    mov r0, r3, lsr #14
    and r2, r3, #255
    and r1, r1, #1020
    add r2, ip, r2, lsl #2
    add r1, r1, ip
    and r0, r0, #1020
    mov r3, r3, lsr #24
    add r0, r0, ip
    add r1, r1, #5120
    add r3, ip, r3, lsl #2
    add r2, r2, #4096
    ldr lr, [r1]
    add r0, r0, #6144
    add r3, r3, #7168
    ldr r2, [r2]
    ldr r1, [r0]
    ldr r0, [r3]
    ldr r3, [r4, #20]
    eor r2, r2, lr
    eor r1, r1, r3
    eor r2, r2, r0
    eor r2, r2, r1
    mov r1, r2, lsr #6
    mov r0, r2, lsr #14
    and r3, r2, #255
    and r1, r1, #1020
    add r3, ip, r3, lsl #2
    add r1, r1, ip
    and r0, r0, #1020
    mov r2, r2, lsr #24
    add r0, r0, ip
    add r1, r1, #5120
    add r2, ip, r2, lsl #2
    add r3, r3, #4096
    ldr lr, [r1]
    add r0, r0, #6144
    add r2, r2, #7168
    ldr r3, [r3]
    ldr r1, [r0]
    ldr r0, [r2]
    ldr r2, [r4, #24]
    eor r3, r3, lr
    eor r1, r1, r2
    eor r3, r3, r0
    eor r3, r3, r1
    mov r1, r3, lsr #6
    mov r0, r3, lsr #14
    and r2, r3, #255
    and r1, r1, #1020
    add r2, ip, r2, lsl #2
    add r1, r1, ip
    and r0, r0, #1020
    mov r3, r3, lsr #24
    add r0, r0, ip
    add r1, r1, #5120
    add r3, ip, r3, lsl #2
    add r2, r2, #4096
    ldr lr, [r1]
    add r0, r0, #6144
    add r3, r3, #7168
    ldr r2, [r2]
    ldr r1, [r0]
    ldr r0, [r3]
    ldr r3, [r4, #28]
    eor r2, r2, lr
    eor r1, r1, r3
    eor r2, r2, r0
    eor r2, r2, r1
    mov r1, r2, lsr #6
    mov r0, r2, lsr #14
    and r3, r2, #255
    and r1, r1, #1020
    add r3, ip, r3, lsl #2
    add r1, r1, ip
    and r0, r0, #1020
    mov r2, r2, lsr #24
    add r0, r0, ip
    add r1, r1, #5120
    add r2, ip, r2, lsl #2
    add r3, r3, #4096
    add r0, r0, #6144
    ldr lr, [r1]
    add r2, r2, #7168
    ldr r3, [r3]
    ldr r1, [r0]
    ldr r0, [r2]
    ldr r2, [r4, #32]!
    eor r3, r3, lr
    eor r1, r1, r2
    eor r3, r3, r0
    eor r3, r3, r1
    mov r2, r3, lsr #6
    and r1, r3, #255
    and r2, r2, #1020
    add r1, ip, r1, lsl #2
    add r2, r2, ip
    mov r0, r3, lsr #24
    mov r3, r3, lsr #14
    add r0, ip, r0, lsl #2
    add r2, r2, #5120
    and r3, r3, #1020
    add r1, r1, #4096
    add r3, r3, ip
    add r0, r0, #7168
    ldr ip, [r2]
    ldr r1, [r1]
    ldr r2, [r0]
    add r3, r3, #6144
    eor r1, r1, ip
    ldr r3, [r3]
    eor r1, r1, r2
    eor r0, r1, r3
    sub r6, r6, #32
.Lsec01_000006b0:
    cmp r6, #31
    bhi .Lsec01_000003c8
    mov lr, r4
    b .Lsec01_00000720
.Lsec01_000006c0:
    ldr r3, [lr, #4]!
    eor r3, r0, r3
    mov r2, r3, lsr #6
    and r1, r3, #255
    and r2, r2, #1020
    add r1, ip, r1, lsl #2
    add r2, r2, ip
    mov r0, r3, lsr #24
    mov r3, r3, lsr #14
    add r0, ip, r0, lsl #2
    add r2, r2, #5120
    and r3, r3, #1020
    add r1, r1, #4096
    add r3, r3, ip
    add r0, r0, #7168
    ldr ip, [r2]
    ldr r1, [r1]
    ldr r2, [r0]
    add r3, r3, #6144
    eor r1, r1, ip
    ldr r3, [r3]
    eor r1, r1, r2
    sub r6, r6, #4
    eor r0, r1, r3
.Lsec01_00000720:
    cmp r6, #3
    ldr ip, [pc, #96]
    bhi .Lsec01_000006c0
    cmp r6, #0
    beq .Lsec01_00000760
    mov r1, lr
.Lsec01_00000738:
    ldrb r3, [r1, #4]
    ldr r2, [pc, #72]
    eor r3, r3, r0, lsr #24
    add r2, r2, r3, lsl #2
    add r2, r2, #4096
    ldr r3, [r2]
    subs r6, r6, #1
    eor r0, r3, r0, lsl #8
    add r1, r1, #1
    bne .Lsec01_00000738
.Lsec01_00000760:
    mvn r1, r0
    mov r2, r1, lsr #8
    and r3, r1, #65280
    and r2, r2, #65280
    mov r3, r3, lsl #8
    add r3, r3, r1, lsl #24
    add r2, r2, r1, lsr #24
    add r0, r2, r3
.Lsec01_00000780:
    add sp, sp, #8
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
    .long .Lsec05_00000000
.arm
gf2_matrix_times:
    mov r2, #0
    b .Lsec01_000007ac
.Lsec01_00000798:
    tst r1, #1
    ldrne r3, [r0]
    mov r1, r1, lsr #1
    eorne r2, r2, r3
    add r0, r0, #4
.Lsec01_000007ac:
    cmp r1, #0
    bne .Lsec01_00000798
    mov r0, r2
    bx lr
gf2_matrix_square:
    stmdb sp!, {r4, r5, r6, lr}
    mov r6, r0
    mov r5, r1
    mov r4, #0
.Lsec01_000007cc:
    ldr r1, [r4, r5]
    mov r0, r5
    bl gf2_matrix_times
    str r0, [r4, r6]
    add r4, r4, #4
    cmp r4, #128
    bne .Lsec01_000007cc
    ldmia sp!, {r4, r5, r6, lr}
    bx lr
crc32_combine:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
    subs r7, r2, #0
    sub sp, sp, #256
    mov r5, r0
    mov r8, r1
    beq .Lsec01_000008a8
    ldr r3, [pc, #168]
    str r3, [sp, #128]
    mov r1, #1
    add r2, sp, #128
.Lsec01_00000818:
    str r1, [r2, #4]!
    add r6, sp, #128
    add r3, r6, #124
    cmp r2, r3
    mov r1, r1, lsl #1
    bne .Lsec01_00000818
    mov r0, sp
    mov r1, r6
    bl gf2_matrix_square
    mov r0, r6
    mov r1, sp
    bl gf2_matrix_square
.Lsec01_00000848:
    add r6, sp, #128
    mov r0, sp
    mov r1, r6
    bl gf2_matrix_square
    tst r7, #1
    mov r1, r5
    mov r0, sp
    beq .Lsec01_00000870
    bl gf2_matrix_times
    mov r5, r0
.Lsec01_00000870:
    movs r4, r7, asr #1
    mov r1, sp
    mov r0, r6
    beq .Lsec01_000008a4
    bl gf2_matrix_square
    tst r4, #1
    mov r0, r6
    mov r1, r5
    beq .Lsec01_0000089c
    bl gf2_matrix_times
    mov r5, r0
.Lsec01_0000089c:
    movs r7, r7, asr #2
    bne .Lsec01_00000848
.Lsec01_000008a4:
    eor r5, r5, r8
.Lsec01_000008a8:
    mov r0, r5
    add sp, sp, #256
    ldmia sp!, {r4, r5, r6, r7, r8, lr}
    bx lr
    .long 0xedb88320

.section .data,"aw",%progbits
.balign 1

.section .bss,"aw",%nobits
.balign 1

.section .rodata,"a",%progbits
.balign 4
crc_table:
.Lsec05_00000000:
    .long 0x00000000
    .long 0x77073096
    .long 0xee0e612c
    .long 0x990951ba
    .long 0x076dc419
    .long 0x706af48f
    .long 0xe963a535
    .long 0x9e6495a3
    .long 0x0edb8832
    .long 0x79dcb8a4
    .long 0xe0d5e91e
    .long 0x97d2d988
    .long 0x09b64c2b
    .long 0x7eb17cbd
    .long 0xe7b82d07
    .long 0x90bf1d91
    .long 0x1db71064
    .long 0x6ab020f2
    .long 0xf3b97148
    .long 0x84be41de
    .long 0x1adad47d
    .long 0x6ddde4eb
    .long 0xf4d4b551
    .long 0x83d385c7
    .long 0x136c9856
    .long 0x646ba8c0
    .long 0xfd62f97a
    .long 0x8a65c9ec
    .long 0x14015c4f
    .long 0x63066cd9
    .long 0xfa0f3d63
    .long 0x8d080df5
    .long 0x3b6e20c8
    .long 0x4c69105e
    .long 0xd56041e4
    .long 0xa2677172
    .long 0x3c03e4d1
    .long 0x4b04d447
    .long 0xd20d85fd
    .long 0xa50ab56b
    .long 0x35b5a8fa
    .long 0x42b2986c
    .long 0xdbbbc9d6
    .long 0xacbcf940
    .long 0x32d86ce3
    .long 0x45df5c75
    .long 0xdcd60dcf
    .long 0xabd13d59
    .long 0x26d930ac
    .long 0x51de003a
    .long 0xc8d75180
    .long 0xbfd06116
    .long 0x21b4f4b5
    .long 0x56b3c423
    .long 0xcfba9599
    .long 0xb8bda50f
    .long 0x2802b89e
    .long 0x5f058808
    .long 0xc60cd9b2
    .long 0xb10be924
    .long 0x2f6f7c87
    .long 0x58684c11
    .long 0xc1611dab
    .long 0xb6662d3d
    .long 0x76dc4190
    .long 0x01db7106
    .long 0x98d220bc
    .long 0xefd5102a
    .long 0x71b18589
    .long 0x06b6b51f
    .long 0x9fbfe4a5
    .long 0xe8b8d433
    .long 0x7807c9a2
    .long 0x0f00f934
    .long 0x9609a88e
    .long 0xe10e9818
    .long 0x7f6a0dbb
    .long 0x086d3d2d
    .long 0x91646c97
    .long 0xe6635c01
    .long 0x6b6b51f4
    .long 0x1c6c6162
    .long 0x856530d8
    .long 0xf262004e
    .long 0x6c0695ed
    .long 0x1b01a57b
    .long 0x8208f4c1
    .long 0xf50fc457
    .long 0x65b0d9c6
    .long 0x12b7e950
    .long 0x8bbeb8ea
    .long 0xfcb9887c
    .long 0x62dd1ddf
    .long 0x15da2d49
    .long 0x8cd37cf3
    .long 0xfbd44c65
    .long 0x4db26158
    .long 0x3ab551ce
    .long 0xa3bc0074
    .long 0xd4bb30e2
    .long 0x4adfa541
    .long 0x3dd895d7
    .long 0xa4d1c46d
    .long 0xd3d6f4fb
    .long 0x4369e96a
    .long 0x346ed9fc
    .long 0xad678846
    .long 0xda60b8d0
    .long 0x44042d73
    .long 0x33031de5
    .long 0xaa0a4c5f
    .long 0xdd0d7cc9
    .long 0x5005713c
    .long 0x270241aa
    .long 0xbe0b1010
    .long 0xc90c2086
    .long 0x5768b525
    .long 0x206f85b3
    .long 0xb966d409
    .long 0xce61e49f
    .long 0x5edef90e
    .long 0x29d9c998
    .long 0xb0d09822
    .long 0xc7d7a8b4
    .long 0x59b33d17
    .long 0x2eb40d81
    .long 0xb7bd5c3b
    .long 0xc0ba6cad
    .long 0xedb88320
    .long 0x9abfb3b6
    .long 0x03b6e20c
    .long 0x74b1d29a
    .long 0xead54739
    .long 0x9dd277af
    .long 0x04db2615
    .long 0x73dc1683
    .long 0xe3630b12
    .long 0x94643b84
    .long 0x0d6d6a3e
    .long 0x7a6a5aa8
    .long 0xe40ecf0b
    .long 0x9309ff9d
    .long 0x0a00ae27
    .long 0x7d079eb1
    .long 0xf00f9344
    .long 0x8708a3d2
    .long 0x1e01f268
    .long 0x6906c2fe
    .long 0xf762575d
    .long 0x806567cb
    .long 0x196c3671
    .long 0x6e6b06e7
    .long 0xfed41b76
    .long 0x89d32be0
    .long 0x10da7a5a
    .long 0x67dd4acc
    .long 0xf9b9df6f
    .long 0x8ebeeff9
    .long 0x17b7be43
    .long 0x60b08ed5
    .long 0xd6d6a3e8
    .long 0xa1d1937e
    .long 0x38d8c2c4
    .long 0x4fdff252
    .long 0xd1bb67f1
    .long 0xa6bc5767
    .long 0x3fb506dd
    .long 0x48b2364b
    .long 0xd80d2bda
    .long 0xaf0a1b4c
    .long 0x36034af6
    .long 0x41047a60
    .long 0xdf60efc3
    .long 0xa867df55
    .long 0x316e8eef
    .long 0x4669be79
    .long 0xcb61b38c
    .long 0xbc66831a
    .long 0x256fd2a0
    .long 0x5268e236
    .long 0xcc0c7795
    .long 0xbb0b4703
    .long 0x220216b9
    .long 0x5505262f
    .long 0xc5ba3bbe
    .long 0xb2bd0b28
    .long 0x2bb45a92
    .long 0x5cb36a04
    .long 0xc2d7ffa7
    .long 0xb5d0cf31
    .long 0x2cd99e8b
    .long 0x5bdeae1d
    .long 0x9b64c2b0
    .long 0xec63f226
    .long 0x756aa39c
    .long 0x026d930a
    .long 0x9c0906a9
    .long 0xeb0e363f
    .long 0x72076785
    .long 0x05005713
    .long 0x95bf4a82
    .long 0xe2b87a14
    .long 0x7bb12bae
    .long 0x0cb61b38
    .long 0x92d28e9b
    .long 0xe5d5be0d
    .long 0x7cdcefb7
    .long 0x0bdbdf21
    .long 0x86d3d2d4
    .long 0xf1d4e242
    .long 0x68ddb3f8
    .long 0x1fda836e
    .long 0x81be16cd
    .long 0xf6b9265b
    .long 0x6fb077e1
    .long 0x18b74777
    .long 0x88085ae6
    .long 0xff0f6a70
    .long 0x66063bca
    .long 0x11010b5c
    .long 0x8f659eff
    .long 0xf862ae69
    .long 0x616bffd3
    .long 0x166ccf45
    .long 0xa00ae278
    .long 0xd70dd2ee
    .long 0x4e048354
    .long 0x3903b3c2
    .long 0xa7672661
    .long 0xd06016f7
    .long 0x4969474d
    .long 0x3e6e77db
    .long 0xaed16a4a
    .long 0xd9d65adc
    .long 0x40df0b66
    .long 0x37d83bf0
    .long 0xa9bcae53
    .long 0xdebb9ec5
    .long 0x47b2cf7f
    .long 0x30b5ffe9
    .long 0xbdbdf21c
    .long 0xcabac28a
    .long 0x53b39330
    .long 0x24b4a3a6
    .long 0xbad03605
    .long 0xcdd70693
    .long 0x54de5729
    .long 0x23d967bf
    .long 0xb3667a2e
    .long 0xc4614ab8
    .long 0x5d681b02
    .long 0x2a6f2b94
    .long 0xb40bbe37
    .long 0xc30c8ea1
    .long 0x5a05df1b
    .long 0x2d02ef8d
    .long 0x00000000
    .long 0x191b3141
    .long 0x32366282
    .long 0x2b2d53c3
    .long 0x646cc504
    .long 0x7d77f445
    .long 0x565aa786
    .long 0x4f4196c7
    .long 0xc8d98a08
    .long 0xd1c2bb49
    .long 0xfaefe88a
    .long 0xe3f4d9cb
    .long 0xacb54f0c
    .long 0xb5ae7e4d
    .long 0x9e832d8e
    .long 0x87981ccf
    .long 0x4ac21251
    .long 0x53d92310
    .long 0x78f470d3
    .long 0x61ef4192
    .long 0x2eaed755
    .long 0x37b5e614
    .long 0x1c98b5d7
    .long 0x05838496
    .long 0x821b9859
    .long 0x9b00a918
    .long 0xb02dfadb
    .long 0xa936cb9a
    .long 0xe6775d5d
    .long 0xff6c6c1c
    .long 0xd4413fdf
    .long 0xcd5a0e9e
    .long 0x958424a2
    .long 0x8c9f15e3
    .long 0xa7b24620
    .long 0xbea97761
    .long 0xf1e8e1a6
    .long 0xe8f3d0e7
    .long 0xc3de8324
    .long 0xdac5b265
    .long 0x5d5daeaa
    .long 0x44469feb
    .long 0x6f6bcc28
    .long 0x7670fd69
    .long 0x39316bae
    .long 0x202a5aef
    .long 0x0b07092c
    .long 0x121c386d
    .long 0xdf4636f3
    .long 0xc65d07b2
    .long 0xed705471
    .long 0xf46b6530
    .long 0xbb2af3f7
    .long 0xa231c2b6
    .long 0x891c9175
    .long 0x9007a034
    .long 0x179fbcfb
    .long 0x0e848dba
    .long 0x25a9de79
    .long 0x3cb2ef38
    .long 0x73f379ff
    .long 0x6ae848be
    .long 0x41c51b7d
    .long 0x58de2a3c
    .long 0xf0794f05
    .long 0xe9627e44
    .long 0xc24f2d87
    .long 0xdb541cc6
    .long 0x94158a01
    .long 0x8d0ebb40
    .long 0xa623e883
    .long 0xbf38d9c2
    .long 0x38a0c50d
    .long 0x21bbf44c
    .long 0x0a96a78f
    .long 0x138d96ce
    .long 0x5ccc0009
    .long 0x45d73148
    .long 0x6efa628b
    .long 0x77e153ca
    .long 0xbabb5d54
    .long 0xa3a06c15
    .long 0x888d3fd6
    .long 0x91960e97
    .long 0xded79850
    .long 0xc7cca911
    .long 0xece1fad2
    .long 0xf5facb93
    .long 0x7262d75c
    .long 0x6b79e61d
    .long 0x4054b5de
    .long 0x594f849f
    .long 0x160e1258
    .long 0x0f152319
    .long 0x243870da
    .long 0x3d23419b
    .long 0x65fd6ba7
    .long 0x7ce65ae6
    .long 0x57cb0925
    .long 0x4ed03864
    .long 0x0191aea3
    .long 0x188a9fe2
    .long 0x33a7cc21
    .long 0x2abcfd60
    .long 0xad24e1af
    .long 0xb43fd0ee
    .long 0x9f12832d
    .long 0x8609b26c
    .long 0xc94824ab
    .long 0xd05315ea
    .long 0xfb7e4629
    .long 0xe2657768
    .long 0x2f3f79f6
    .long 0x362448b7
    .long 0x1d091b74
    .long 0x04122a35
    .long 0x4b53bcf2
    .long 0x52488db3
    .long 0x7965de70
    .long 0x607eef31
    .long 0xe7e6f3fe
    .long 0xfefdc2bf
    .long 0xd5d0917c
    .long 0xcccba03d
    .long 0x838a36fa
    .long 0x9a9107bb
    .long 0xb1bc5478
    .long 0xa8a76539
    .long 0x3b83984b
    .long 0x2298a90a
    .long 0x09b5fac9
    .long 0x10aecb88
    .long 0x5fef5d4f
    .long 0x46f46c0e
    .long 0x6dd93fcd
    .long 0x74c20e8c
    .long 0xf35a1243
    .long 0xea412302
    .long 0xc16c70c1
    .long 0xd8774180
    .long 0x9736d747
    .long 0x8e2de606
    .long 0xa500b5c5
    .long 0xbc1b8484
    .long 0x71418a1a
    .long 0x685abb5b
    .long 0x4377e898
    .long 0x5a6cd9d9
    .long 0x152d4f1e
    .long 0x0c367e5f
    .long 0x271b2d9c
    .long 0x3e001cdd
    .long 0xb9980012
    .long 0xa0833153
    .long 0x8bae6290
    .long 0x92b553d1
    .long 0xddf4c516
    .long 0xc4eff457
    .long 0xefc2a794
    .long 0xf6d996d5
    .long 0xae07bce9
    .long 0xb71c8da8
    .long 0x9c31de6b
    .long 0x852aef2a
    .long 0xca6b79ed
    .long 0xd37048ac
    .long 0xf85d1b6f
    .long 0xe1462a2e
    .long 0x66de36e1
    .long 0x7fc507a0
    .long 0x54e85463
    .long 0x4df36522
    .long 0x02b2f3e5
    .long 0x1ba9c2a4
    .long 0x30849167
    .long 0x299fa026
    .long 0xe4c5aeb8
    .long 0xfdde9ff9
    .long 0xd6f3cc3a
    .long 0xcfe8fd7b
    .long 0x80a96bbc
    .long 0x99b25afd
    .long 0xb29f093e
    .long 0xab84387f
    .long 0x2c1c24b0
    .long 0x350715f1
    .long 0x1e2a4632
    .long 0x07317773
    .long 0x4870e1b4
    .long 0x516bd0f5
    .long 0x7a468336
    .long 0x635db277
    .long 0xcbfad74e
    .long 0xd2e1e60f
    .long 0xf9ccb5cc
    .long 0xe0d7848d
    .long 0xaf96124a
    .long 0xb68d230b
    .long 0x9da070c8
    .long 0x84bb4189
    .long 0x03235d46
    .long 0x1a386c07
    .long 0x31153fc4
    .long 0x280e0e85
    .long 0x674f9842
    .long 0x7e54a903
    .long 0x5579fac0
    .long 0x4c62cb81
    .long 0x8138c51f
    .long 0x9823f45e
    .long 0xb30ea79d
    .long 0xaa1596dc
    .long 0xe554001b
    .long 0xfc4f315a
    .long 0xd7626299
    .long 0xce7953d8
    .long 0x49e14f17
    .long 0x50fa7e56
    .long 0x7bd72d95
    .long 0x62cc1cd4
    .long 0x2d8d8a13
    .long 0x3496bb52
    .long 0x1fbbe891
    .long 0x06a0d9d0
    .long 0x5e7ef3ec
    .long 0x4765c2ad
    .long 0x6c48916e
    .long 0x7553a02f
    .long 0x3a1236e8
    .long 0x230907a9
    .long 0x0824546a
    .long 0x113f652b
    .long 0x96a779e4
    .long 0x8fbc48a5
    .long 0xa4911b66
    .long 0xbd8a2a27
    .long 0xf2cbbce0
    .long 0xebd08da1
    .long 0xc0fdde62
    .long 0xd9e6ef23
    .long 0x14bce1bd
    .long 0x0da7d0fc
    .long 0x268a833f
    .long 0x3f91b27e
    .long 0x70d024b9
    .long 0x69cb15f8
    .long 0x42e6463b
    .long 0x5bfd777a
    .long 0xdc656bb5
    .long 0xc57e5af4
    .long 0xee530937
    .long 0xf7483876
    .long 0xb809aeb1
    .long 0xa1129ff0
    .long 0x8a3fcc33
    .long 0x9324fd72
    .long 0x00000000
    .long 0x01c26a37
    .long 0x0384d46e
    .long 0x0246be59
    .long 0x0709a8dc
    .long 0x06cbc2eb
    .long 0x048d7cb2
    .long 0x054f1685
    .long 0x0e1351b8
    .long 0x0fd13b8f
    .long 0x0d9785d6
    .long 0x0c55efe1
    .long 0x091af964
    .long 0x08d89353
    .long 0x0a9e2d0a
    .long 0x0b5c473d
    .long 0x1c26a370
    .long 0x1de4c947
    .long 0x1fa2771e
    .long 0x1e601d29
    .long 0x1b2f0bac
    .long 0x1aed619b
    .long 0x18abdfc2
    .long 0x1969b5f5
    .long 0x1235f2c8
    .long 0x13f798ff
    .long 0x11b126a6
    .long 0x10734c91
    .long 0x153c5a14
    .long 0x14fe3023
    .long 0x16b88e7a
    .long 0x177ae44d
    .long 0x384d46e0
    .long 0x398f2cd7
    .long 0x3bc9928e
    .long 0x3a0bf8b9
    .long 0x3f44ee3c
    .long 0x3e86840b
    .long 0x3cc03a52
    .long 0x3d025065
    .long 0x365e1758
    .long 0x379c7d6f
    .long 0x35dac336
    .long 0x3418a901
    .long 0x3157bf84
    .long 0x3095d5b3
    .long 0x32d36bea
    .long 0x331101dd
    .long 0x246be590
    .long 0x25a98fa7
    .long 0x27ef31fe
    .long 0x262d5bc9
    .long 0x23624d4c
    .long 0x22a0277b
    .long 0x20e69922
    .long 0x2124f315
    .long 0x2a78b428
    .long 0x2bbade1f
    .long 0x29fc6046
    .long 0x283e0a71
    .long 0x2d711cf4
    .long 0x2cb376c3
    .long 0x2ef5c89a
    .long 0x2f37a2ad
    .long 0x709a8dc0
    .long 0x7158e7f7
    .long 0x731e59ae
    .long 0x72dc3399
    .long 0x7793251c
    .long 0x76514f2b
    .long 0x7417f172
    .long 0x75d59b45
    .long 0x7e89dc78
    .long 0x7f4bb64f
    .long 0x7d0d0816
    .long 0x7ccf6221
    .long 0x798074a4
    .long 0x78421e93
    .long 0x7a04a0ca
    .long 0x7bc6cafd
    .long 0x6cbc2eb0
    .long 0x6d7e4487
    .long 0x6f38fade
    .long 0x6efa90e9
    .long 0x6bb5866c
    .long 0x6a77ec5b
    .long 0x68315202
    .long 0x69f33835
    .long 0x62af7f08
    .long 0x636d153f
    .long 0x612bab66
    .long 0x60e9c151
    .long 0x65a6d7d4
    .long 0x6464bde3
    .long 0x662203ba
    .long 0x67e0698d
    .long 0x48d7cb20
    .long 0x4915a117
    .long 0x4b531f4e
    .long 0x4a917579
    .long 0x4fde63fc
    .long 0x4e1c09cb
    .long 0x4c5ab792
    .long 0x4d98dda5
    .long 0x46c49a98
    .long 0x4706f0af
    .long 0x45404ef6
    .long 0x448224c1
    .long 0x41cd3244
    .long 0x400f5873
    .long 0x4249e62a
    .long 0x438b8c1d
    .long 0x54f16850
    .long 0x55330267
    .long 0x5775bc3e
    .long 0x56b7d609
    .long 0x53f8c08c
    .long 0x523aaabb
    .long 0x507c14e2
    .long 0x51be7ed5
    .long 0x5ae239e8
    .long 0x5b2053df
    .long 0x5966ed86
    .long 0x58a487b1
    .long 0x5deb9134
    .long 0x5c29fb03
    .long 0x5e6f455a
    .long 0x5fad2f6d
    .long 0xe1351b80
    .long 0xe0f771b7
    .long 0xe2b1cfee
    .long 0xe373a5d9
    .long 0xe63cb35c
    .long 0xe7fed96b
    .long 0xe5b86732
    .long 0xe47a0d05
    .long 0xef264a38
    .long 0xeee4200f
    .long 0xeca29e56
    .long 0xed60f461
    .long 0xe82fe2e4
    .long 0xe9ed88d3
    .long 0xebab368a
    .long 0xea695cbd
    .long 0xfd13b8f0
    .long 0xfcd1d2c7
    .long 0xfe976c9e
    .long 0xff5506a9
    .long 0xfa1a102c
    .long 0xfbd87a1b
    .long 0xf99ec442
    .long 0xf85cae75
    .long 0xf300e948
    .long 0xf2c2837f
    .long 0xf0843d26
    .long 0xf1465711
    .long 0xf4094194
    .long 0xf5cb2ba3
    .long 0xf78d95fa
    .long 0xf64fffcd
    .long 0xd9785d60
    .long 0xd8ba3757
    .long 0xdafc890e
    .long 0xdb3ee339
    .long 0xde71f5bc
    .long 0xdfb39f8b
    .long 0xddf521d2
    .long 0xdc374be5
    .long 0xd76b0cd8
    .long 0xd6a966ef
    .long 0xd4efd8b6
    .long 0xd52db281
    .long 0xd062a404
    .long 0xd1a0ce33
    .long 0xd3e6706a
    .long 0xd2241a5d
    .long 0xc55efe10
    .long 0xc49c9427
    .long 0xc6da2a7e
    .long 0xc7184049
    .long 0xc25756cc
    .long 0xc3953cfb
    .long 0xc1d382a2
    .long 0xc011e895
    .long 0xcb4dafa8
    .long 0xca8fc59f
    .long 0xc8c97bc6
    .long 0xc90b11f1
    .long 0xcc440774
    .long 0xcd866d43
    .long 0xcfc0d31a
    .long 0xce02b92d
    .long 0x91af9640
    .long 0x906dfc77
    .long 0x922b422e
    .long 0x93e92819
    .long 0x96a63e9c
    .long 0x976454ab
    .long 0x9522eaf2
    .long 0x94e080c5
    .long 0x9fbcc7f8
    .long 0x9e7eadcf
    .long 0x9c381396
    .long 0x9dfa79a1
    .long 0x98b56f24
    .long 0x99770513
    .long 0x9b31bb4a
    .long 0x9af3d17d
    .long 0x8d893530
    .long 0x8c4b5f07
    .long 0x8e0de15e
    .long 0x8fcf8b69
    .long 0x8a809dec
    .long 0x8b42f7db
    .long 0x89044982
    .long 0x88c623b5
    .long 0x839a6488
    .long 0x82580ebf
    .long 0x801eb0e6
    .long 0x81dcdad1
    .long 0x8493cc54
    .long 0x8551a663
    .long 0x8717183a
    .long 0x86d5720d
    .long 0xa9e2d0a0
    .long 0xa820ba97
    .long 0xaa6604ce
    .long 0xaba46ef9
    .long 0xaeeb787c
    .long 0xaf29124b
    .long 0xad6fac12
    .long 0xacadc625
    .long 0xa7f18118
    .long 0xa633eb2f
    .long 0xa4755576
    .long 0xa5b73f41
    .long 0xa0f829c4
    .long 0xa13a43f3
    .long 0xa37cfdaa
    .long 0xa2be979d
    .long 0xb5c473d0
    .long 0xb40619e7
    .long 0xb640a7be
    .long 0xb782cd89
    .long 0xb2cddb0c
    .long 0xb30fb13b
    .long 0xb1490f62
    .long 0xb08b6555
    .long 0xbbd72268
    .long 0xba15485f
    .long 0xb853f606
    .long 0xb9919c31
    .long 0xbcde8ab4
    .long 0xbd1ce083
    .long 0xbf5a5eda
    .long 0xbe9834ed
    .long 0x00000000
    .long 0xb8bc6765
    .long 0xaa09c88b
    .long 0x12b5afee
    .long 0x8f629757
    .long 0x37def032
    .long 0x256b5fdc
    .long 0x9dd738b9
    .long 0xc5b428ef
    .long 0x7d084f8a
    .long 0x6fbde064
    .long 0xd7018701
    .long 0x4ad6bfb8
    .long 0xf26ad8dd
    .long 0xe0df7733
    .long 0x58631056
    .long 0x5019579f
    .long 0xe8a530fa
    .long 0xfa109f14
    .long 0x42acf871
    .long 0xdf7bc0c8
    .long 0x67c7a7ad
    .long 0x75720843
    .long 0xcdce6f26
    .long 0x95ad7f70
    .long 0x2d111815
    .long 0x3fa4b7fb
    .long 0x8718d09e
    .long 0x1acfe827
    .long 0xa2738f42
    .long 0xb0c620ac
    .long 0x087a47c9
    .long 0xa032af3e
    .long 0x188ec85b
    .long 0x0a3b67b5
    .long 0xb28700d0
    .long 0x2f503869
    .long 0x97ec5f0c
    .long 0x8559f0e2
    .long 0x3de59787
    .long 0x658687d1
    .long 0xdd3ae0b4
    .long 0xcf8f4f5a
    .long 0x7733283f
    .long 0xeae41086
    .long 0x525877e3
    .long 0x40edd80d
    .long 0xf851bf68
    .long 0xf02bf8a1
    .long 0x48979fc4
    .long 0x5a22302a
    .long 0xe29e574f
    .long 0x7f496ff6
    .long 0xc7f50893
    .long 0xd540a77d
    .long 0x6dfcc018
    .long 0x359fd04e
    .long 0x8d23b72b
    .long 0x9f9618c5
    .long 0x272a7fa0
    .long 0xbafd4719
    .long 0x0241207c
    .long 0x10f48f92
    .long 0xa848e8f7
    .long 0x9b14583d
    .long 0x23a83f58
    .long 0x311d90b6
    .long 0x89a1f7d3
    .long 0x1476cf6a
    .long 0xaccaa80f
    .long 0xbe7f07e1
    .long 0x06c36084
    .long 0x5ea070d2
    .long 0xe61c17b7
    .long 0xf4a9b859
    .long 0x4c15df3c
    .long 0xd1c2e785
    .long 0x697e80e0
    .long 0x7bcb2f0e
    .long 0xc377486b
    .long 0xcb0d0fa2
    .long 0x73b168c7
    .long 0x6104c729
    .long 0xd9b8a04c
    .long 0x446f98f5
    .long 0xfcd3ff90
    .long 0xee66507e
    .long 0x56da371b
    .long 0x0eb9274d
    .long 0xb6054028
    .long 0xa4b0efc6
    .long 0x1c0c88a3
    .long 0x81dbb01a
    .long 0x3967d77f
    .long 0x2bd27891
    .long 0x936e1ff4
    .long 0x3b26f703
    .long 0x839a9066
    .long 0x912f3f88
    .long 0x299358ed
    .long 0xb4446054
    .long 0x0cf80731
    .long 0x1e4da8df
    .long 0xa6f1cfba
    .long 0xfe92dfec
    .long 0x462eb889
    .long 0x549b1767
    .long 0xec277002
    .long 0x71f048bb
    .long 0xc94c2fde
    .long 0xdbf98030
    .long 0x6345e755
    .long 0x6b3fa09c
    .long 0xd383c7f9
    .long 0xc1366817
    .long 0x798a0f72
    .long 0xe45d37cb
    .long 0x5ce150ae
    .long 0x4e54ff40
    .long 0xf6e89825
    .long 0xae8b8873
    .long 0x1637ef16
    .long 0x048240f8
    .long 0xbc3e279d
    .long 0x21e91f24
    .long 0x99557841
    .long 0x8be0d7af
    .long 0x335cb0ca
    .long 0xed59b63b
    .long 0x55e5d15e
    .long 0x47507eb0
    .long 0xffec19d5
    .long 0x623b216c
    .long 0xda874609
    .long 0xc832e9e7
    .long 0x708e8e82
    .long 0x28ed9ed4
    .long 0x9051f9b1
    .long 0x82e4565f
    .long 0x3a58313a
    .long 0xa78f0983
    .long 0x1f336ee6
    .long 0x0d86c108
    .long 0xb53aa66d
    .long 0xbd40e1a4
    .long 0x05fc86c1
    .long 0x1749292f
    .long 0xaff54e4a
    .long 0x322276f3
    .long 0x8a9e1196
    .long 0x982bbe78
    .long 0x2097d91d
    .long 0x78f4c94b
    .long 0xc048ae2e
    .long 0xd2fd01c0
    .long 0x6a4166a5
    .long 0xf7965e1c
    .long 0x4f2a3979
    .long 0x5d9f9697
    .long 0xe523f1f2
    .long 0x4d6b1905
    .long 0xf5d77e60
    .long 0xe762d18e
    .long 0x5fdeb6eb
    .long 0xc2098e52
    .long 0x7ab5e937
    .long 0x680046d9
    .long 0xd0bc21bc
    .long 0x88df31ea
    .long 0x3063568f
    .long 0x22d6f961
    .long 0x9a6a9e04
    .long 0x07bda6bd
    .long 0xbf01c1d8
    .long 0xadb46e36
    .long 0x15080953
    .long 0x1d724e9a
    .long 0xa5ce29ff
    .long 0xb77b8611
    .long 0x0fc7e174
    .long 0x9210d9cd
    .long 0x2aacbea8
    .long 0x38191146
    .long 0x80a57623
    .long 0xd8c66675
    .long 0x607a0110
    .long 0x72cfaefe
    .long 0xca73c99b
    .long 0x57a4f122
    .long 0xef189647
    .long 0xfdad39a9
    .long 0x45115ecc
    .long 0x764dee06
    .long 0xcef18963
    .long 0xdc44268d
    .long 0x64f841e8
    .long 0xf92f7951
    .long 0x41931e34
    .long 0x5326b1da
    .long 0xeb9ad6bf
    .long 0xb3f9c6e9
    .long 0x0b45a18c
    .long 0x19f00e62
    .long 0xa14c6907
    .long 0x3c9b51be
    .long 0x842736db
    .long 0x96929935
    .long 0x2e2efe50
    .long 0x2654b999
    .long 0x9ee8defc
    .long 0x8c5d7112
    .long 0x34e11677
    .long 0xa9362ece
    .long 0x118a49ab
    .long 0x033fe645
    .long 0xbb838120
    .long 0xe3e09176
    .long 0x5b5cf613
    .long 0x49e959fd
    .long 0xf1553e98
    .long 0x6c820621
    .long 0xd43e6144
    .long 0xc68bceaa
    .long 0x7e37a9cf
    .long 0xd67f4138
    .long 0x6ec3265d
    .long 0x7c7689b3
    .long 0xc4caeed6
    .long 0x591dd66f
    .long 0xe1a1b10a
    .long 0xf3141ee4
    .long 0x4ba87981
    .long 0x13cb69d7
    .long 0xab770eb2
    .long 0xb9c2a15c
    .long 0x017ec639
    .long 0x9ca9fe80
    .long 0x241599e5
    .long 0x36a0360b
    .long 0x8e1c516e
    .long 0x866616a7
    .long 0x3eda71c2
    .long 0x2c6fde2c
    .long 0x94d3b949
    .long 0x090481f0
    .long 0xb1b8e695
    .long 0xa30d497b
    .long 0x1bb12e1e
    .long 0x43d23e48
    .long 0xfb6e592d
    .long 0xe9dbf6c3
    .long 0x516791a6
    .long 0xccb0a91f
    .long 0x740cce7a
    .long 0x66b96194
    .long 0xde0506f1
    .long 0x00000000
    .long 0x96300777
    .long 0x2c610eee
    .long 0xba510999
    .long 0x19c46d07
    .long 0x8ff46a70
    .long 0x35a563e9
    .long 0xa395649e
    .long 0x3288db0e
    .long 0xa4b8dc79
    .long 0x1ee9d5e0
    .long 0x88d9d297
    .long 0x2b4cb609
    .long 0xbd7cb17e
    .long 0x072db8e7
    .long 0x911dbf90
    .long 0x6410b71d
    .long 0xf220b06a
    .long 0x4871b9f3
    .long 0xde41be84
    .long 0x7dd4da1a
    .long 0xebe4dd6d
    .long 0x51b5d4f4
    .long 0xc785d383
    .long 0x56986c13
    .long 0xc0a86b64
    .long 0x7af962fd
    .long 0xecc9658a
    .long 0x4f5c0114
    .long 0xd96c0663
    .long 0x633d0ffa
    .long 0xf50d088d
    .long 0xc8206e3b
    .long 0x5e10694c
    .long 0xe44160d5
    .long 0x727167a2
    .long 0xd1e4033c
    .long 0x47d4044b
    .long 0xfd850dd2
    .long 0x6bb50aa5
    .long 0xfaa8b535
    .long 0x6c98b242
    .long 0xd6c9bbdb
    .long 0x40f9bcac
    .long 0xe36cd832
    .long 0x755cdf45
    .long 0xcf0dd6dc
    .long 0x593dd1ab
    .long 0xac30d926
    .long 0x3a00de51
    .long 0x8051d7c8
    .long 0x1661d0bf
    .long 0xb5f4b421
    .long 0x23c4b356
    .long 0x9995bacf
    .long 0x0fa5bdb8
    .long 0x9eb80228
    .long 0x0888055f
    .long 0xb2d90cc6
    .long 0x24e90bb1
    .long 0x877c6f2f
    .long 0x114c6858
    .long 0xab1d61c1
    .long 0x3d2d66b6
    .long 0x9041dc76
    .long 0x0671db01
    .long 0xbc20d298
    .long 0x2a10d5ef
    .long 0x8985b171
    .long 0x1fb5b606
    .long 0xa5e4bf9f
    .long 0x33d4b8e8
    .long 0xa2c90778
    .long 0x34f9000f
    .long 0x8ea80996
    .long 0x18980ee1
    .long 0xbb0d6a7f
    .long 0x2d3d6d08
    .long 0x976c6491
    .long 0x015c63e6
    .long 0xf4516b6b
    .long 0x62616c1c
    .long 0xd8306585
    .long 0x4e0062f2
    .long 0xed95066c
    .long 0x7ba5011b
    .long 0xc1f40882
    .long 0x57c40ff5
    .long 0xc6d9b065
    .long 0x50e9b712
    .long 0xeab8be8b
    .long 0x7c88b9fc
    .long 0xdf1ddd62
    .long 0x492dda15
    .long 0xf37cd38c
    .long 0x654cd4fb
    .long 0x5861b24d
    .long 0xce51b53a
    .long 0x7400bca3
    .long 0xe230bbd4
    .long 0x41a5df4a
    .long 0xd795d83d
    .long 0x6dc4d1a4
    .long 0xfbf4d6d3
    .long 0x6ae96943
    .long 0xfcd96e34
    .long 0x468867ad
    .long 0xd0b860da
    .long 0x732d0444
    .long 0xe51d0333
    .long 0x5f4c0aaa
    .long 0xc97c0ddd
    .long 0x3c710550
    .long 0xaa410227
    .long 0x10100bbe
    .long 0x86200cc9
    .long 0x25b56857
    .long 0xb3856f20
    .long 0x09d466b9
    .long 0x9fe461ce
    .long 0x0ef9de5e
    .long 0x98c9d929
    .long 0x2298d0b0
    .long 0xb4a8d7c7
    .long 0x173db359
    .long 0x810db42e
    .long 0x3b5cbdb7
    .long 0xad6cbac0
    .long 0x2083b8ed
    .long 0xb6b3bf9a
    .long 0x0ce2b603
    .long 0x9ad2b174
    .long 0x3947d5ea
    .long 0xaf77d29d
    .long 0x1526db04
    .long 0x8316dc73
    .long 0x120b63e3
    .long 0x843b6494
    .long 0x3e6a6d0d
    .long 0xa85a6a7a
    .long 0x0bcf0ee4
    .long 0x9dff0993
    .long 0x27ae000a
    .long 0xb19e077d
    .long 0x44930ff0
    .long 0xd2a30887
    .long 0x68f2011e
    .long 0xfec20669
    .long 0x5d5762f7
    .long 0xcb676580
    .long 0x71366c19
    .long 0xe7066b6e
    .long 0x761bd4fe
    .long 0xe02bd389
    .long 0x5a7ada10
    .long 0xcc4add67
    .long 0x6fdfb9f9
    .long 0xf9efbe8e
    .long 0x43beb717
    .long 0xd58eb060
    .long 0xe8a3d6d6
    .long 0x7e93d1a1
    .long 0xc4c2d838
    .long 0x52f2df4f
    .long 0xf167bbd1
    .long 0x6757bca6
    .long 0xdd06b53f
    .long 0x4b36b248
    .long 0xda2b0dd8
    .long 0x4c1b0aaf
    .long 0xf64a0336
    .long 0x607a0441
    .long 0xc3ef60df
    .long 0x55df67a8
    .long 0xef8e6e31
    .long 0x79be6946
    .long 0x8cb361cb
    .long 0x1a8366bc
    .long 0xa0d26f25
    .long 0x36e26852
    .long 0x95770ccc
    .long 0x03470bbb
    .long 0xb9160222
    .long 0x2f260555
    .long 0xbe3bbac5
    .long 0x280bbdb2
    .long 0x925ab42b
    .long 0x046ab35c
    .long 0xa7ffd7c2
    .long 0x31cfd0b5
    .long 0x8b9ed92c
    .long 0x1daede5b
    .long 0xb0c2649b
    .long 0x26f263ec
    .long 0x9ca36a75
    .long 0x0a936d02
    .long 0xa906099c
    .long 0x3f360eeb
    .long 0x85670772
    .long 0x13570005
    .long 0x824abf95
    .long 0x147ab8e2
    .long 0xae2bb17b
    .long 0x381bb60c
    .long 0x9b8ed292
    .long 0x0dbed5e5
    .long 0xb7efdc7c
    .long 0x21dfdb0b
    .long 0xd4d2d386
    .long 0x42e2d4f1
    .long 0xf8b3dd68
    .long 0x6e83da1f
    .long 0xcd16be81
    .long 0x5b26b9f6
    .long 0xe177b06f
    .long 0x7747b718
    .long 0xe65a0888
    .long 0x706a0fff
    .long 0xca3b0666
    .long 0x5c0b0111
    .long 0xff9e658f
    .long 0x69ae62f8
    .long 0xd3ff6b61
    .long 0x45cf6c16
    .long 0x78e20aa0
    .long 0xeed20dd7
    .long 0x5483044e
    .long 0xc2b30339
    .long 0x612667a7
    .long 0xf71660d0
    .long 0x4d476949
    .long 0xdb776e3e
    .long 0x4a6ad1ae
    .long 0xdc5ad6d9
    .long 0x660bdf40
    .long 0xf03bd837
    .long 0x53aebca9
    .long 0xc59ebbde
    .long 0x7fcfb247
    .long 0xe9ffb530
    .long 0x1cf2bdbd
    .long 0x8ac2baca
    .long 0x3093b353
    .long 0xa6a3b424
    .long 0x0536d0ba
    .long 0x9306d7cd
    .long 0x2957de54
    .long 0xbf67d923
    .long 0x2e7a66b3
    .long 0xb84a61c4
    .long 0x021b685d
    .long 0x942b6f2a
    .long 0x37be0bb4
    .long 0xa18e0cc3
    .long 0x1bdf055a
    .long 0x8def022d
    .long 0x00000000
    .long 0x41311b19
    .long 0x82623632
    .long 0xc3532d2b
    .long 0x04c56c64
    .long 0x45f4777d
    .long 0x86a75a56
    .long 0xc796414f
    .long 0x088ad9c8
    .long 0x49bbc2d1
    .long 0x8ae8effa
    .long 0xcbd9f4e3
    .long 0x0c4fb5ac
    .long 0x4d7eaeb5
    .long 0x8e2d839e
    .long 0xcf1c9887
    .long 0x5112c24a
    .long 0x1023d953
    .long 0xd370f478
    .long 0x9241ef61
    .long 0x55d7ae2e
    .long 0x14e6b537
    .long 0xd7b5981c
    .long 0x96848305
    .long 0x59981b82
    .long 0x18a9009b
    .long 0xdbfa2db0
    .long 0x9acb36a9
    .long 0x5d5d77e6
    .long 0x1c6c6cff
    .long 0xdf3f41d4
    .long 0x9e0e5acd
    .long 0xa2248495
    .long 0xe3159f8c
    .long 0x2046b2a7
    .long 0x6177a9be
    .long 0xa6e1e8f1
    .long 0xe7d0f3e8
    .long 0x2483dec3
    .long 0x65b2c5da
    .long 0xaaae5d5d
    .long 0xeb9f4644
    .long 0x28cc6b6f
    .long 0x69fd7076
    .long 0xae6b3139
    .long 0xef5a2a20
    .long 0x2c09070b
    .long 0x6d381c12
    .long 0xf33646df
    .long 0xb2075dc6
    .long 0x715470ed
    .long 0x30656bf4
    .long 0xf7f32abb
    .long 0xb6c231a2
    .long 0x75911c89
    .long 0x34a00790
    .long 0xfbbc9f17
    .long 0xba8d840e
    .long 0x79dea925
    .long 0x38efb23c
    .long 0xff79f373
    .long 0xbe48e86a
    .long 0x7d1bc541
    .long 0x3c2ade58
    .long 0x054f79f0
    .long 0x447e62e9
    .long 0x872d4fc2
    .long 0xc61c54db
    .long 0x018a1594
    .long 0x40bb0e8d
    .long 0x83e823a6
    .long 0xc2d938bf
    .long 0x0dc5a038
    .long 0x4cf4bb21
    .long 0x8fa7960a
    .long 0xce968d13
    .long 0x0900cc5c
    .long 0x4831d745
    .long 0x8b62fa6e
    .long 0xca53e177
    .long 0x545dbbba
    .long 0x156ca0a3
    .long 0xd63f8d88
    .long 0x970e9691
    .long 0x5098d7de
    .long 0x11a9ccc7
    .long 0xd2fae1ec
    .long 0x93cbfaf5
    .long 0x5cd76272
    .long 0x1de6796b
    .long 0xdeb55440
    .long 0x9f844f59
    .long 0x58120e16
    .long 0x1923150f
    .long 0xda703824
    .long 0x9b41233d
    .long 0xa76bfd65
    .long 0xe65ae67c
    .long 0x2509cb57
    .long 0x6438d04e
    .long 0xa3ae9101
    .long 0xe29f8a18
    .long 0x21cca733
    .long 0x60fdbc2a
    .long 0xafe124ad
    .long 0xeed03fb4
    .long 0x2d83129f
    .long 0x6cb20986
    .long 0xab2448c9
    .long 0xea1553d0
    .long 0x29467efb
    .long 0x687765e2
    .long 0xf6793f2f
    .long 0xb7482436
    .long 0x741b091d
    .long 0x352a1204
    .long 0xf2bc534b
    .long 0xb38d4852
    .long 0x70de6579
    .long 0x31ef7e60
    .long 0xfef3e6e7
    .long 0xbfc2fdfe
    .long 0x7c91d0d5
    .long 0x3da0cbcc
    .long 0xfa368a83
    .long 0xbb07919a
    .long 0x7854bcb1
    .long 0x3965a7a8
    .long 0x4b98833b
    .long 0x0aa99822
    .long 0xc9fab509
    .long 0x88cbae10
    .long 0x4f5def5f
    .long 0x0e6cf446
    .long 0xcd3fd96d
    .long 0x8c0ec274
    .long 0x43125af3
    .long 0x022341ea
    .long 0xc1706cc1
    .long 0x804177d8
    .long 0x47d73697
    .long 0x06e62d8e
    .long 0xc5b500a5
    .long 0x84841bbc
    .long 0x1a8a4171
    .long 0x5bbb5a68
    .long 0x98e87743
    .long 0xd9d96c5a
    .long 0x1e4f2d15
    .long 0x5f7e360c
    .long 0x9c2d1b27
    .long 0xdd1c003e
    .long 0x120098b9
    .long 0x533183a0
    .long 0x9062ae8b
    .long 0xd153b592
    .long 0x16c5f4dd
    .long 0x57f4efc4
    .long 0x94a7c2ef
    .long 0xd596d9f6
    .long 0xe9bc07ae
    .long 0xa88d1cb7
    .long 0x6bde319c
    .long 0x2aef2a85
    .long 0xed796bca
    .long 0xac4870d3
    .long 0x6f1b5df8
    .long 0x2e2a46e1
    .long 0xe136de66
    .long 0xa007c57f
    .long 0x6354e854
    .long 0x2265f34d
    .long 0xe5f3b202
    .long 0xa4c2a91b
    .long 0x67918430
    .long 0x26a09f29
    .long 0xb8aec5e4
    .long 0xf99fdefd
    .long 0x3accf3d6
    .long 0x7bfde8cf
    .long 0xbc6ba980
    .long 0xfd5ab299
    .long 0x3e099fb2
    .long 0x7f3884ab
    .long 0xb0241c2c
    .long 0xf1150735
    .long 0x32462a1e
    .long 0x73773107
    .long 0xb4e17048
    .long 0xf5d06b51
    .long 0x3683467a
    .long 0x77b25d63
    .long 0x4ed7facb
    .long 0x0fe6e1d2
    .long 0xccb5ccf9
    .long 0x8d84d7e0
    .long 0x4a1296af
    .long 0x0b238db6
    .long 0xc870a09d
    .long 0x8941bb84
    .long 0x465d2303
    .long 0x076c381a
    .long 0xc43f1531
    .long 0x850e0e28
    .long 0x42984f67
    .long 0x03a9547e
    .long 0xc0fa7955
    .long 0x81cb624c
    .long 0x1fc53881
    .long 0x5ef42398
    .long 0x9da70eb3
    .long 0xdc9615aa
    .long 0x1b0054e5
    .long 0x5a314ffc
    .long 0x996262d7
    .long 0xd85379ce
    .long 0x174fe149
    .long 0x567efa50
    .long 0x952dd77b
    .long 0xd41ccc62
    .long 0x138a8d2d
    .long 0x52bb9634
    .long 0x91e8bb1f
    .long 0xd0d9a006
    .long 0xecf37e5e
    .long 0xadc26547
    .long 0x6e91486c
    .long 0x2fa05375
    .long 0xe836123a
    .long 0xa9070923
    .long 0x6a542408
    .long 0x2b653f11
    .long 0xe479a796
    .long 0xa548bc8f
    .long 0x661b91a4
    .long 0x272a8abd
    .long 0xe0bccbf2
    .long 0xa18dd0eb
    .long 0x62defdc0
    .long 0x23efe6d9
    .long 0xbde1bc14
    .long 0xfcd0a70d
    .long 0x3f838a26
    .long 0x7eb2913f
    .long 0xb924d070
    .long 0xf815cb69
    .long 0x3b46e642
    .long 0x7a77fd5b
    .long 0xb56b65dc
    .long 0xf45a7ec5
    .long 0x370953ee
    .long 0x763848f7
    .long 0xb1ae09b8
    .long 0xf09f12a1
    .long 0x33cc3f8a
    .long 0x72fd2493
    .long 0x00000000
    .long 0x376ac201
    .long 0x6ed48403
    .long 0x59be4602
    .long 0xdca80907
    .long 0xebc2cb06
    .long 0xb27c8d04
    .long 0x85164f05
    .long 0xb851130e
    .long 0x8f3bd10f
    .long 0xd685970d
    .long 0xe1ef550c
    .long 0x64f91a09
    .long 0x5393d808
    .long 0x0a2d9e0a
    .long 0x3d475c0b
    .long 0x70a3261c
    .long 0x47c9e41d
    .long 0x1e77a21f
    .long 0x291d601e
    .long 0xac0b2f1b
    .long 0x9b61ed1a
    .long 0xc2dfab18
    .long 0xf5b56919
    .long 0xc8f23512
    .long 0xff98f713
    .long 0xa626b111
    .long 0x914c7310
    .long 0x145a3c15
    .long 0x2330fe14
    .long 0x7a8eb816
    .long 0x4de47a17
    .long 0xe0464d38
    .long 0xd72c8f39
    .long 0x8e92c93b
    .long 0xb9f80b3a
    .long 0x3cee443f
    .long 0x0b84863e
    .long 0x523ac03c
    .long 0x6550023d
    .long 0x58175e36
    .long 0x6f7d9c37
    .long 0x36c3da35
    .long 0x01a91834
    .long 0x84bf5731
    .long 0xb3d59530
    .long 0xea6bd332
    .long 0xdd011133
    .long 0x90e56b24
    .long 0xa78fa925
    .long 0xfe31ef27
    .long 0xc95b2d26
    .long 0x4c4d6223
    .long 0x7b27a022
    .long 0x2299e620
    .long 0x15f32421
    .long 0x28b4782a
    .long 0x1fdeba2b
    .long 0x4660fc29
    .long 0x710a3e28
    .long 0xf41c712d
    .long 0xc376b32c
    .long 0x9ac8f52e
    .long 0xada2372f
    .long 0xc08d9a70
    .long 0xf7e75871
    .long 0xae591e73
    .long 0x9933dc72
    .long 0x1c259377
    .long 0x2b4f5176
    .long 0x72f11774
    .long 0x459bd575
    .long 0x78dc897e
    .long 0x4fb64b7f
    .long 0x16080d7d
    .long 0x2162cf7c
    .long 0xa4748079
    .long 0x931e4278
    .long 0xcaa0047a
    .long 0xfdcac67b
    .long 0xb02ebc6c
    .long 0x87447e6d
    .long 0xdefa386f
    .long 0xe990fa6e
    .long 0x6c86b56b
    .long 0x5bec776a
    .long 0x02523168
    .long 0x3538f369
    .long 0x087faf62
    .long 0x3f156d63
    .long 0x66ab2b61
    .long 0x51c1e960
    .long 0xd4d7a665
    .long 0xe3bd6464
    .long 0xba032266
    .long 0x8d69e067
    .long 0x20cbd748
    .long 0x17a11549
    .long 0x4e1f534b
    .long 0x7975914a
    .long 0xfc63de4f
    .long 0xcb091c4e
    .long 0x92b75a4c
    .long 0xa5dd984d
    .long 0x989ac446
    .long 0xaff00647
    .long 0xf64e4045
    .long 0xc1248244
    .long 0x4432cd41
    .long 0x73580f40
    .long 0x2ae64942
    .long 0x1d8c8b43
    .long 0x5068f154
    .long 0x67023355
    .long 0x3ebc7557
    .long 0x09d6b756
    .long 0x8cc0f853
    .long 0xbbaa3a52
    .long 0xe2147c50
    .long 0xd57ebe51
    .long 0xe839e25a
    .long 0xdf53205b
    .long 0x86ed6659
    .long 0xb187a458
    .long 0x3491eb5d
    .long 0x03fb295c
    .long 0x5a456f5e
    .long 0x6d2fad5f
    .long 0x801b35e1
    .long 0xb771f7e0
    .long 0xeecfb1e2
    .long 0xd9a573e3
    .long 0x5cb33ce6
    .long 0x6bd9fee7
    .long 0x3267b8e5
    .long 0x050d7ae4
    .long 0x384a26ef
    .long 0x0f20e4ee
    .long 0x569ea2ec
    .long 0x61f460ed
    .long 0xe4e22fe8
    .long 0xd388ede9
    .long 0x8a36abeb
    .long 0xbd5c69ea
    .long 0xf0b813fd
    .long 0xc7d2d1fc
    .long 0x9e6c97fe
    .long 0xa90655ff
    .long 0x2c101afa
    .long 0x1b7ad8fb
    .long 0x42c49ef9
    .long 0x75ae5cf8
    .long 0x48e900f3
    .long 0x7f83c2f2
    .long 0x263d84f0
    .long 0x115746f1
    .long 0x944109f4
    .long 0xa32bcbf5
    .long 0xfa958df7
    .long 0xcdff4ff6
    .long 0x605d78d9
    .long 0x5737bad8
    .long 0x0e89fcda
    .long 0x39e33edb
    .long 0xbcf571de
    .long 0x8b9fb3df
    .long 0xd221f5dd
    .long 0xe54b37dc
    .long 0xd80c6bd7
    .long 0xef66a9d6
    .long 0xb6d8efd4
    .long 0x81b22dd5
    .long 0x04a462d0
    .long 0x33cea0d1
    .long 0x6a70e6d3
    .long 0x5d1a24d2
    .long 0x10fe5ec5
    .long 0x27949cc4
    .long 0x7e2adac6
    .long 0x494018c7
    .long 0xcc5657c2
    .long 0xfb3c95c3
    .long 0xa282d3c1
    .long 0x95e811c0
    .long 0xa8af4dcb
    .long 0x9fc58fca
    .long 0xc67bc9c8
    .long 0xf1110bc9
    .long 0x740744cc
    .long 0x436d86cd
    .long 0x1ad3c0cf
    .long 0x2db902ce
    .long 0x4096af91
    .long 0x77fc6d90
    .long 0x2e422b92
    .long 0x1928e993
    .long 0x9c3ea696
    .long 0xab546497
    .long 0xf2ea2295
    .long 0xc580e094
    .long 0xf8c7bc9f
    .long 0xcfad7e9e
    .long 0x9613389c
    .long 0xa179fa9d
    .long 0x246fb598
    .long 0x13057799
    .long 0x4abb319b
    .long 0x7dd1f39a
    .long 0x3035898d
    .long 0x075f4b8c
    .long 0x5ee10d8e
    .long 0x698bcf8f
    .long 0xec9d808a
    .long 0xdbf7428b
    .long 0x82490489
    .long 0xb523c688
    .long 0x88649a83
    .long 0xbf0e5882
    .long 0xe6b01e80
    .long 0xd1dadc81
    .long 0x54cc9384
    .long 0x63a65185
    .long 0x3a181787
    .long 0x0d72d586
    .long 0xa0d0e2a9
    .long 0x97ba20a8
    .long 0xce0466aa
    .long 0xf96ea4ab
    .long 0x7c78ebae
    .long 0x4b1229af
    .long 0x12ac6fad
    .long 0x25c6adac
    .long 0x1881f1a7
    .long 0x2feb33a6
    .long 0x765575a4
    .long 0x413fb7a5
    .long 0xc429f8a0
    .long 0xf3433aa1
    .long 0xaafd7ca3
    .long 0x9d97bea2
    .long 0xd073c4b5
    .long 0xe71906b4
    .long 0xbea740b6
    .long 0x89cd82b7
    .long 0x0cdbcdb2
    .long 0x3bb10fb3
    .long 0x620f49b1
    .long 0x55658bb0
    .long 0x6822d7bb
    .long 0x5f4815ba
    .long 0x06f653b8
    .long 0x319c91b9
    .long 0xb48adebc
    .long 0x83e01cbd
    .long 0xda5e5abf
    .long 0xed3498be
    .long 0x00000000
    .long 0x6567bcb8
    .long 0x8bc809aa
    .long 0xeeafb512
    .long 0x5797628f
    .long 0x32f0de37
    .long 0xdc5f6b25
    .long 0xb938d79d
    .long 0xef28b4c5
    .long 0x8a4f087d
    .long 0x64e0bd6f
    .long 0x018701d7
    .long 0xb8bfd64a
    .long 0xddd86af2
    .long 0x3377dfe0
    .long 0x56106358
    .long 0x9f571950
    .long 0xfa30a5e8
    .long 0x149f10fa
    .long 0x71f8ac42
    .long 0xc8c07bdf
    .long 0xada7c767
    .long 0x43087275
    .long 0x266fcecd
    .long 0x707fad95
    .long 0x1518112d
    .long 0xfbb7a43f
    .long 0x9ed01887
    .long 0x27e8cf1a
    .long 0x428f73a2
    .long 0xac20c6b0
    .long 0xc9477a08
    .long 0x3eaf32a0
    .long 0x5bc88e18
    .long 0xb5673b0a
    .long 0xd00087b2
    .long 0x6938502f
    .long 0x0c5fec97
    .long 0xe2f05985
    .long 0x8797e53d
    .long 0xd1878665
    .long 0xb4e03add
    .long 0x5a4f8fcf
    .long 0x3f283377
    .long 0x8610e4ea
    .long 0xe3775852
    .long 0x0dd8ed40
    .long 0x68bf51f8
    .long 0xa1f82bf0
    .long 0xc49f9748
    .long 0x2a30225a
    .long 0x4f579ee2
    .long 0xf66f497f
    .long 0x9308f5c7
    .long 0x7da740d5
    .long 0x18c0fc6d
    .long 0x4ed09f35
    .long 0x2bb7238d
    .long 0xc518969f
    .long 0xa07f2a27
    .long 0x1947fdba
    .long 0x7c204102
    .long 0x928ff410
    .long 0xf7e848a8
    .long 0x3d58149b
    .long 0x583fa823
    .long 0xb6901d31
    .long 0xd3f7a189
    .long 0x6acf7614
    .long 0x0fa8caac
    .long 0xe1077fbe
    .long 0x8460c306
    .long 0xd270a05e
    .long 0xb7171ce6
    .long 0x59b8a9f4
    .long 0x3cdf154c
    .long 0x85e7c2d1
    .long 0xe0807e69
    .long 0x0e2fcb7b
    .long 0x6b4877c3
    .long 0xa20f0dcb
    .long 0xc768b173
    .long 0x29c70461
    .long 0x4ca0b8d9
    .long 0xf5986f44
    .long 0x90ffd3fc
    .long 0x7e5066ee
    .long 0x1b37da56
    .long 0x4d27b90e
    .long 0x284005b6
    .long 0xc6efb0a4
    .long 0xa3880c1c
    .long 0x1ab0db81
    .long 0x7fd76739
    .long 0x9178d22b
    .long 0xf41f6e93
    .long 0x03f7263b
    .long 0x66909a83
    .long 0x883f2f91
    .long 0xed589329
    .long 0x546044b4
    .long 0x3107f80c
    .long 0xdfa84d1e
    .long 0xbacff1a6
    .long 0xecdf92fe
    .long 0x89b82e46
    .long 0x67179b54
    .long 0x027027ec
    .long 0xbb48f071
    .long 0xde2f4cc9
    .long 0x3080f9db
    .long 0x55e74563
    .long 0x9ca03f6b
    .long 0xf9c783d3
    .long 0x176836c1
    .long 0x720f8a79
    .long 0xcb375de4
    .long 0xae50e15c
    .long 0x40ff544e
    .long 0x2598e8f6
    .long 0x73888bae
    .long 0x16ef3716
    .long 0xf8408204
    .long 0x9d273ebc
    .long 0x241fe921
    .long 0x41785599
    .long 0xafd7e08b
    .long 0xcab05c33
    .long 0x3bb659ed
    .long 0x5ed1e555
    .long 0xb07e5047
    .long 0xd519ecff
    .long 0x6c213b62
    .long 0x094687da
    .long 0xe7e932c8
    .long 0x828e8e70
    .long 0xd49eed28
    .long 0xb1f95190
    .long 0x5f56e482
    .long 0x3a31583a
    .long 0x83098fa7
    .long 0xe66e331f
    .long 0x08c1860d
    .long 0x6da63ab5
    .long 0xa4e140bd
    .long 0xc186fc05
    .long 0x2f294917
    .long 0x4a4ef5af
    .long 0xf3762232
    .long 0x96119e8a
    .long 0x78be2b98
    .long 0x1dd99720
    .long 0x4bc9f478
    .long 0x2eae48c0
    .long 0xc001fdd2
    .long 0xa566416a
    .long 0x1c5e96f7
    .long 0x79392a4f
    .long 0x97969f5d
    .long 0xf2f123e5
    .long 0x05196b4d
    .long 0x607ed7f5
    .long 0x8ed162e7
    .long 0xebb6de5f
    .long 0x528e09c2
    .long 0x37e9b57a
    .long 0xd9460068
    .long 0xbc21bcd0
    .long 0xea31df88
    .long 0x8f566330
    .long 0x61f9d622
    .long 0x049e6a9a
    .long 0xbda6bd07
    .long 0xd8c101bf
    .long 0x366eb4ad
    .long 0x53090815
    .long 0x9a4e721d
    .long 0xff29cea5
    .long 0x11867bb7
    .long 0x74e1c70f
    .long 0xcdd91092
    .long 0xa8beac2a
    .long 0x46111938
    .long 0x2376a580
    .long 0x7566c6d8
    .long 0x10017a60
    .long 0xfeaecf72
    .long 0x9bc973ca
    .long 0x22f1a457
    .long 0x479618ef
    .long 0xa939adfd
    .long 0xcc5e1145
    .long 0x06ee4d76
    .long 0x6389f1ce
    .long 0x8d2644dc
    .long 0xe841f864
    .long 0x51792ff9
    .long 0x341e9341
    .long 0xdab12653
    .long 0xbfd69aeb
    .long 0xe9c6f9b3
    .long 0x8ca1450b
    .long 0x620ef019
    .long 0x07694ca1
    .long 0xbe519b3c
    .long 0xdb362784
    .long 0x35999296
    .long 0x50fe2e2e
    .long 0x99b95426
    .long 0xfcdee89e
    .long 0x12715d8c
    .long 0x7716e134
    .long 0xce2e36a9
    .long 0xab498a11
    .long 0x45e63f03
    .long 0x208183bb
    .long 0x7691e0e3
    .long 0x13f65c5b
    .long 0xfd59e949
    .long 0x983e55f1
    .long 0x2106826c
    .long 0x44613ed4
    .long 0xaace8bc6
    .long 0xcfa9377e
    .long 0x38417fd6
    .long 0x5d26c36e
    .long 0xb389767c
    .long 0xd6eecac4
    .long 0x6fd61d59
    .long 0x0ab1a1e1
    .long 0xe41e14f3
    .long 0x8179a84b
    .long 0xd769cb13
    .long 0xb20e77ab
    .long 0x5ca1c2b9
    .long 0x39c67e01
    .long 0x80fea99c
    .long 0xe5991524
    .long 0x0b36a036
    .long 0x6e511c8e
    .long 0xa7166686
    .long 0xc271da3e
    .long 0x2cde6f2c
    .long 0x49b9d394
    .long 0xf0810409
    .long 0x95e6b8b1
    .long 0x7b490da3
    .long 0x1e2eb11b
    .long 0x483ed243
    .long 0x2d596efb
    .long 0xc3f6dbe9
    .long 0xa6916751
    .long 0x1fa9b0cc
    .long 0x7ace0c74
    .long 0x9461b966
    .long 0xf10605de

.size crc_table, 8192
.size gf2_matrix_times, 44
.size gf2_matrix_square, 52
.size get_crc_table, 12
.size crc32, 1924
.size crc32_combine, 204

.section .note.GNU-stack,"",%progbits
