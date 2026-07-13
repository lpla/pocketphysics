.syntax unified
.arch armv5te
.arm
.section .text,"ax",%progbits
.align 2

.global ulConvertImageToPalettedAlpha
.type ulConvertImageToPalettedAlpha, %function
ulConvertImageToPalettedAlpha:
.L02061d8c:
    ldr	ip, [pc, #412]
.L02061d90:
    stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L02061d94:
    ldrb	lr, [ip, r3]
.L02061d98:
    mov	r5, #1
.L02061d9c:
    mov	lr, r5, lsl lr
.L02061da0:
    sub	sp, sp, #36
.L02061da4:
    ldrh	fp, [r0, #30]
.L02061da8:
    str	r0, [sp, #12]
.L02061dac:
    ldrh	r0, [r0, #32]
.L02061db0:
    str	r1, [sp, #8]
.L02061db4:
    str	r0, [sp, #20]
.L02061db8:
    ldr	r1, [sp, #20]
.L02061dbc:
    mov	r0, fp
.L02061dc0:
    mov	sl, r3
.L02061dc4:
    str	lr, [sp, #16]
.L02061dc8:
    str	lr, [sp]
.L02061dcc:
    bl ulCreateImage
.L02061dd0:
    subs	r4, r0, #0
.L02061dd4:
    beq .L02061f24
.L02061dd8:
    ldrh	r2, [r4, #34]
.L02061ddc:
    ldrh	r3, [r4, #36]
.L02061de0:
    ldrb	r1, [r4, #38]
.L02061de4:
    mul	lr, r3, r2
.L02061de8:
    ldr	r3, [pc, #324]
.L02061dec:
    ldr	r0, [r4, #48]
.L02061df0:
    ldrb	ip, [r3, r1]
.L02061df4:
    mov	r1, #0
.L02061df8:
    mul	r2, lr, ip
.L02061dfc:
    mov	r2, r2, asr #3
.L02061e00:
    bl memset
.L02061e04:
    ldr	r2, [sp, #20]
.L02061e08:
    ldr	r1, [r4, #52]
.L02061e0c:
    cmp	r2, #0
.L02061e10:
    mov	r3, #0
.L02061e14:
    str	r1, [sp, #24]
.L02061e18:
    strh	r3, [r1]
.L02061e1c:
    strgt	r5, [sp, #28]
.L02061e20:
    movgt	r9, #0
.L02061e24:
    ble .L02061f1c
.L02061e28:
    cmp	fp, #0
.L02061e2c:
    movgt	r8, #0
.L02061e30:
    bgt .L02061e84
.L02061e34:
    b .L02061f0c
.L02061e38:
    ldrh	r1, [r4, #34]
.L02061e3c:
    ldrb	r0, [r4, #38]
.L02061e40:
    mla	r2, r1, r9, r8
.L02061e44:
    ldr	r1, [pc, #236]
.L02061e48:
    and	r3, r7, #224
.L02061e4c:
    orr	lr, r3, ip
.L02061e50:
    ldr	r3, [r1, r0, lsl #2]
.L02061e54:
    ldr	r1, [r4, #48]
.L02061e58:
    mul	r2, r3, r2
.L02061e5c:
    cmp	sl, #1
.L02061e60:
    streqb	lr, [r1, r2, asr #3]
.L02061e64:
    beq .L02061e78
.L02061e68:
    and	r3, r7, #248
.L02061e6c:
    cmp	sl, #6
.L02061e70:
    orr	r0, r3, ip
.L02061e74:
    streqb	r0, [r1, r2, asr #3]
.L02061e78:
    add	r8, r8, #1
.L02061e7c:
    cmp	fp, r8
.L02061e80:
    beq .L02061f0c
.L02061e84:
    ldrh	r3, [r4, #30]
.L02061e88:
    ldr	r0, [sp, #8]
.L02061e8c:
    mla	r2, r9, r3, r8
.L02061e90:
    mov	r2, r2, lsl #2
.L02061e94:
    add	ip, r0, r2
.L02061e98:
    ldrb	r3, [ip, #1]
.L02061e9c:
    ldrb	r1, [r2, r0]
.L02061ea0:
    mov	r3, r3, lsr #3
.L02061ea4:
    ldrb	r2, [ip, #2]
.L02061ea8:
    mov	r3, r3, lsl #5
.L02061eac:
    orr	r3, r3, r1, lsr #3
.L02061eb0:
    ldr	r5, [sp, #28]
.L02061eb4:
    mov	r2, r2, lsr #3
.L02061eb8:
    orr	r6, r3, r2, lsl #10
.L02061ebc:
    ldr	r0, [r4, #52]
.L02061ec0:
    mov	r1, r5
.L02061ec4:
    mov	r2, r6
.L02061ec8:
    ldrb	r7, [ip, #3]
.L02061ecc:
    bl ulFindColorInPalette
.L02061ed0:
    subs	ip, r0, #0
.L02061ed4:
    bge .L02061e38
.L02061ed8:
    ldr	r5, [sp, #28]
.L02061edc:
    ldr	r1, [sp, #16]
.L02061ee0:
    mov	ip, #0
.L02061ee4:
    cmp	r1, r5
.L02061ee8:
    ldrgt	ip, [sp, #24]
.L02061eec:
    add	r3, r5, #1
.L02061ef0:
    mov	r3, r3, lsl #16
.L02061ef4:
    mov	r2, r5, lsl #1
.L02061ef8:
    strgth	r6, [r2, ip]
.L02061efc:
    movgt	r3, r3, lsr #16
.L02061f00:
    movgt	ip, r5
.L02061f04:
    strgt	r3, [sp, #28]
.L02061f08:
    b .L02061e38
.L02061f0c:
    ldr	r2, [sp, #20]
.L02061f10:
    add	r9, r9, #1
.L02061f14:
    cmp	r2, r9
.L02061f18:
    bne .L02061e28
.L02061f1c:
    ldr	r0, [sp, #12]
.L02061f20:
    bl ulDeleteImage
.L02061f24:
    mov	r0, r4
.L02061f28:
    add	sp, sp, #36
.L02061f2c:
    ldmia	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02061f30:
    .long ul_paletteSizes
.L02061f34:
    .long ul_pixelSizes
.L02061f38:
    .long ul_pixelWidth
.size ulConvertImageToPalettedAlpha, .-ulConvertImageToPalettedAlpha

.section .note.GNU-stack,"",%progbits
