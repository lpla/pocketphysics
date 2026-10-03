/*
 * Copyright (c) 2007 Eric Jordan
 *
 * This software is provided 'as-is', without any express or implied
 * warranty. In no event will the authors be held liable for any damages
 * arising from the use of this software.
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 * 1. The origin of this software must not be misrepresented; you must not
 * claim that you wrote the original software. If you use this software
 * in a product, an acknowledgment in the product documentation would be
 * appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 * misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 */

/* Residual release instruction reconstruction, not recovered C++.
 * Only the seven unresolved methods are present. Calls and data pointers
 * use symbolic relocations; executable literal pools are data.
 */
.syntax unified
.arch armv5te
.section .text.polygon.residual.23,"ax",%progbits
.balign 4
.arm
.global _ZN9b2Polygon18MergeParallelEdgesE5Fixed
.type _ZN9b2Polygon18MergeParallelEdgesE5Fixed, %function
_ZN9b2Polygon18MergeParallelEdgesE5Fixed:
.L0203f79c:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203f7a0:
    sub sp, sp, #116
.L0203f7a4:
    str r0, [sp, #48]
.L0203f7a8:
    ldr r0, [r0, #8]
.L0203f7ac:
    mov r4, r1
.L0203f7b0:
    cmp r0, #3
.L0203f7b4:
    bgt .L0203f7c0
.L0203f7b8:
    add sp, sp, #116
.L0203f7bc:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203f7c0:
    bl _Znaj
.L0203f7c4:
    str r0, [sp, #52]
.L0203f7c8:
    ldr r0, [sp, #48]
.L0203f7cc:
    ldr r3, [r0, #8]
.L0203f7d0:
    cmp r3, #0
.L0203f7d4:
    ble .L0203fc80
.L0203f7d8:
    ldr r4, [r4]
.L0203f7dc:
    ldmia r0, {r1, r2}
.L0203f7e0:
    str r4, [sp, #24]
.L0203f7e4:
    mov r6, #1
.L0203f7e8:
    mov r4, #0
.L0203f7ec:
    str r1, [sp, #28]
.L0203f7f0:
    str r2, [sp, #20]
.L0203f7f4:
    str r3, [sp, #56]
.L0203f7f8:
    str r4, [sp, #60]
.L0203f7fc:
    str r6, [sp, #108]
.L0203f800:
    ldr sl, [sp, #60]
.L0203f804:
    ldr ip, [sp, #60]
.L0203f808:
    cmp sl, #0
.L0203f80c:
    subeq r3, r3, #1
.L0203f810:
    ldrne fp, [sp, #60]
.L0203f814:
    subne r2, r3, #1
.L0203f818:
    moveq r2, r3
.L0203f81c:
    subne r3, fp, #1
.L0203f820:
    cmp r2, ip
.L0203f824:
    ldr r2, [sp, #60]
.L0203f828:
    ldr r4, [sp, #20]
.L0203f82c:
    mov r1, r2, lsl #2
.L0203f830:
    ldr r6, [r4, r1]
.L0203f834:
    ldr r2, [r4, r3, lsl #2]
.L0203f838:
    ldr sl, [sp, #28]
.L0203f83c:
    ldrne r0, [sp, #108]
.L0203f840:
    ldr r8, [sl, r1]
.L0203f844:
    rsb r2, r2, r6
.L0203f848:
    ldr r3, [sl, r3, lsl #2]
.L0203f84c:
    movne r5, r0, lsl #2
.L0203f850:
    mov r0, r2
.L0203f854:
    mov r1, r0, asr #31
.L0203f858:
    strd r0, [sp, #72]
.L0203f85c:
    rsb r3, r3, r8
.L0203f860:
    mov sl, r3
.L0203f864:
    mov fp, sl, asr #31
.L0203f868:
    ldr lr, [sp, #76]
.L0203f86c:
    ldr r4, [sp, #72]
.L0203f870:
    str r6, [sp, #64]
.L0203f874:
    mul ip, sl, fp
.L0203f878:
    ldr r6, [sp, #20]
.L0203f87c:
    moveq r5, #0
.L0203f880:
    mul lr, r0, lr
.L0203f884:
    umull r2, r3, sl, sl
.L0203f888:
    umull r0, r1, r4, r4
.L0203f88c:
    ldr r6, [r6, r5]
.L0203f890:
    ldr r4, [pc, #1396]
.L0203f894:
    mov ip, ip, lsl #1
.L0203f898:
    str r6, [sp, #68]
.L0203f89c:
    ldr r6, [sp, #28]
.L0203f8a0:
    add r3, ip, r3
.L0203f8a4:
    mov lr, lr, lsl #1
.L0203f8a8:
    mov ip, #1
.L0203f8ac:
    strh ip, [r4, #176]
.L0203f8b0:
    ldr r9, [r6, r5]
.L0203f8b4:
    add r1, lr, r1
.L0203f8b8:
    mov ip, r4
.L0203f8bc:
    mov r6, r2, lsr #16
.L0203f8c0:
    mov r4, r0, lsr #16
.L0203f8c4:
    orr r6, r6, r3, lsl #16
.L0203f8c8:
    orr r4, r4, r1, lsl #16
.L0203f8cc:
    ldrh r3, [ip, #176]
.L0203f8d0:
    tst r3, #32768
.L0203f8d4:
    bne .L0203f8cc
.L0203f8d8:
    add r2, r6, r4
.L0203f8dc:
    mov r3, r2, asr #31
.L0203f8e0:
    mov r3, r3, lsl #16
.L0203f8e4:
    orr r3, r3, r2, lsr #16
.L0203f8e8:
    mov r2, r2, lsl #16
.L0203f8ec:
    strd r2, [ip, #184]
.L0203f8f0:
    ldr lr, [pc, #1300]
.L0203f8f4:
    ldrh r3, [lr, #176]
.L0203f8f8:
    tst r3, #32768
.L0203f8fc:
    bne .L0203f8f4
.L0203f900:
    ldr r0, [sp, #68]
.L0203f904:
    ldr r1, [sp, #64]
.L0203f908:
    rsb r3, r8, r9
.L0203f90c:
    rsb r2, r1, r0
.L0203f910:
    mov r0, r2
.L0203f914:
    mov r1, r0, asr #31
.L0203f918:
    strd r0, [sp, #88]
.L0203f91c:
    ldr r1, [sp, #88]
.L0203f920:
    ldr ip, [sp, #92]
.L0203f924:
    mov r8, r3
.L0203f928:
    mov r9, r8, asr #31
.L0203f92c:
    mul ip, r1, ip
.L0203f930:
    mul r0, r8, r9
.L0203f934:
    umull r4, r5, r1, r1
.L0203f938:
    umull r2, r3, r8, r8
.L0203f93c:
    mov r1, #67108864
.L0203f940:
    ldr r1, [r1, #692]
.L0203f944:
    mov r0, r0, lsl #1
.L0203f948:
    mov ip, ip, lsl #1
.L0203f94c:
    add r3, r0, r3
.L0203f950:
    str r1, [sp, #84]
.L0203f954:
    add r5, ip, r5
.L0203f958:
    mov r1, #1
.L0203f95c:
    mov r6, r2, lsr #16
.L0203f960:
    mov r0, r4, lsr #16
.L0203f964:
    strh r1, [lr, #176]
.L0203f968:
    orr r6, r6, r3, lsl #16
.L0203f96c:
    orr r0, r0, r5, lsl #16
.L0203f970:
    ldr r2, [pc, #1172]
.L0203f974:
    ldrh r3, [r2, #176]
.L0203f978:
    tst r3, #32768
.L0203f97c:
    bne .L0203f970
.L0203f980:
    add r2, r6, r0
.L0203f984:
    mov r3, r2, asr #31
.L0203f988:
    ldr r4, [pc, #1148]
.L0203f98c:
    mov r3, r3, lsl #16
.L0203f990:
    orr r3, r3, r2, lsr #16
.L0203f994:
    mov r2, r2, lsl #16
.L0203f998:
    strd r2, [r4, #184]
.L0203f99c:
    mov r2, r4
.L0203f9a0:
    ldrh r3, [r2, #176]
.L0203f9a4:
    tst r3, #32768
.L0203f9a8:
    bne .L0203f9a0
.L0203f9ac:
    ldr r6, [sp, #84]
.L0203f9b0:
    mov r3, #67108864
.L0203f9b4:
    cmp r6, #0
.L0203f9b8:
    ldr ip, [r3, #692]
.L0203f9bc:
    ble .L0203f9c8
.L0203f9c0:
    cmp ip, #0
.L0203f9c4:
    bgt .L0203f9ec
.L0203f9c8:
    ldr r0, [sp, #56]
.L0203f9cc:
    cmp r0, #3
.L0203f9d0:
    ble .L0203f9ec
.L0203f9d4:
    ldr r1, [sp, #60]
.L0203f9d8:
    ldr r2, [sp, #52]
.L0203f9dc:
    mov r3, #1
.L0203f9e0:
    sub r0, r0, #1
.L0203f9e4:
    strb r3, [r1, r2]
.L0203f9e8:
    str r0, [sp, #56]
.L0203f9ec:
    ldr r3, [pc, #1048]
.L0203f9f0:
    mov r4, #1
.L0203f9f4:
    strh r4, [r3, #128]
.L0203f9f8:
    mov r1, r3
.L0203f9fc:
    ldrh r3, [r1, #128]
.L0203fa00:
    tst r3, #32768
.L0203fa04:
    bne .L0203f9fc
.L0203fa08:
    mov r3, fp, lsl #16
.L0203fa0c:
    orr r3, r3, sl, lsr #16
.L0203fa10:
    mov r2, sl, lsl #16
.L0203fa14:
    ldr r6, [sp, #84]
.L0203fa18:
    strd r2, [r1, #144]
.L0203fa1c:
    ldr r0, [pc, #1000]
.L0203fa20:
    mov r1, #67108864
.L0203fa24:
    str r6, [r1, #664]
.L0203fa28:
    ldrh r3, [r0, #128]
.L0203fa2c:
    tst r3, #32768
.L0203fa30:
    bne .L0203fa28
.L0203fa34:
    mov r3, #67108864
.L0203fa38:
    mov sl, #1
.L0203fa3c:
    ldr r1, [pc, #968]
.L0203fa40:
    ldr r5, [r3, #672]
.L0203fa44:
    strh sl, [r0, #128]
.L0203fa48:
    ldrh r3, [r1, #128]
.L0203fa4c:
    tst r3, #32768
.L0203fa50:
    bne .L0203fa48
.L0203fa54:
    ldr fp, [sp, #76]
.L0203fa58:
    ldr r0, [sp, #72]
.L0203fa5c:
    mov r3, fp, lsl #16
.L0203fa60:
    orr r3, r3, r0, lsr #16
.L0203fa64:
    mov r2, r0, lsl #16
.L0203fa68:
    ldr r6, [sp, #84]
.L0203fa6c:
    strd r2, [r1, #144]
.L0203fa70:
    ldr r0, [pc, #916]
.L0203fa74:
    mov r1, #67108864
.L0203fa78:
    str r6, [r1, #664]
.L0203fa7c:
    ldrh r3, [r0, #128]
.L0203fa80:
    tst r3, #32768
.L0203fa84:
    bne .L0203fa7c
.L0203fa88:
    mov r3, #67108864
.L0203fa8c:
    mov sl, #1
.L0203fa90:
    ldr r1, [pc, #884]
.L0203fa94:
    ldr lr, [r3, #672]
.L0203fa98:
    strh sl, [r0, #128]
.L0203fa9c:
    ldrh r3, [r1, #128]
.L0203faa0:
    tst r3, #32768
.L0203faa4:
    bne .L0203fa9c
.L0203faa8:
    mov r3, r9, lsl #16
.L0203faac:
    orr r3, r3, r8, lsr #16
.L0203fab0:
    mov r2, r8, lsl #16
.L0203fab4:
    strd r2, [r1, #144]
.L0203fab8:
    ldr r0, [pc, #844]
.L0203fabc:
    mov r1, #67108864
.L0203fac0:
    str ip, [r1, #664]
.L0203fac4:
    ldrh r3, [r0, #128]
.L0203fac8:
    tst r3, #32768
.L0203facc:
    bne .L0203fac4
.L0203fad0:
    mov r3, #67108864
.L0203fad4:
    mov fp, #1
.L0203fad8:
    ldr r1, [pc, #812]
.L0203fadc:
    ldr r6, [r3, #672]
.L0203fae0:
    strh fp, [r0, #128]
.L0203fae4:
    ldrh r3, [r1, #128]
.L0203fae8:
    tst r3, #32768
.L0203faec:
    bne .L0203fae4
.L0203faf0:
    ldr r0, [sp, #92]
.L0203faf4:
    ldr r4, [sp, #88]
.L0203faf8:
    mov r3, r0, lsl #16
.L0203fafc:
    orr r3, r3, r4, lsr #16
.L0203fb00:
    mov r2, r4, lsl #16
.L0203fb04:
    strd r2, [r1, #144]
.L0203fb08:
    ldr r0, [pc, #764]
.L0203fb0c:
    mov r1, #67108864
.L0203fb10:
    str ip, [r1, #664]
.L0203fb14:
    ldrh r3, [r0, #128]
.L0203fb18:
    tst r3, #32768
.L0203fb1c:
    bne .L0203fb14
.L0203fb20:
    mov r0, lr
.L0203fb24:
    mov r1, r0, asr #31
.L0203fb28:
    strd r0, [sp, #96]
.L0203fb2c:
    ldr r1, [sp, #100]
.L0203fb30:
    mov r7, r6, asr #31
.L0203fb34:
    mul r1, r6, r1
.L0203fb38:
    mov r3, #67108864
.L0203fb3c:
    mov r8, r5
.L0203fb40:
    mov r9, r8, asr #31
.L0203fb44:
    ldr r4, [r3, #672]
.L0203fb48:
    mla r0, r7, r0, r1
.L0203fb4c:
    mul fp, r8, r7
.L0203fb50:
    ldr ip, [sp, #100]
.L0203fb54:
    mov r5, r4, asr #31
.L0203fb58:
    ldr sl, [sp, #96]
.L0203fb5c:
    mul ip, r4, ip
.L0203fb60:
    str r0, [sp, #12]
.L0203fb64:
    str fp, [sp, #8]
.L0203fb68:
    umull r0, r1, r6, sl
.L0203fb6c:
    umull sl, fp, r8, r6
.L0203fb70:
    mul r3, r8, r5
.L0203fb74:
    str ip, [sp, #4]
.L0203fb78:
    ldr ip, [sp, #96]
.L0203fb7c:
    strd sl, [sp, #40]
.L0203fb80:
    umull sl, fp, r4, ip
.L0203fb84:
    mla lr, r4, r9, r3
.L0203fb88:
    umull r2, r3, r8, r4
.L0203fb8c:
    strd sl, [sp, #32]
.L0203fb90:
    ldr sl, [sp, #12]
.L0203fb94:
    add r3, lr, r3
.L0203fb98:
    add r1, sl, r1
.L0203fb9c:
    ldr fp, [sp, #4]
.L0203fba0:
    mov r2, r2, lsr #16
.L0203fba4:
    mov r0, r0, lsr #16
.L0203fba8:
    orr r0, r0, r1, lsl #16
.L0203fbac:
    orr r2, r2, r3, lsl #16
.L0203fbb0:
    mla ip, r5, ip, fp
.L0203fbb4:
    rsb r2, r0, r2
.L0203fbb8:
    ldr r0, [sp, #24]
.L0203fbbc:
    cmp r2, #0
.L0203fbc0:
    rsblt r2, r2, #0
.L0203fbc4:
    ldr lr, [sp, #8]
.L0203fbc8:
    cmp r2, r0
.L0203fbcc:
    ldr r2, [sp, #36]
.L0203fbd0:
    mla lr, r6, r9, lr
.L0203fbd4:
    add r2, ip, r2
.L0203fbd8:
    ldr r1, [sp, #44]
.L0203fbdc:
    str r2, [sp, #36]
.L0203fbe0:
    ldr r3, [sp, #40]
.L0203fbe4:
    ldr sl, [sp, #32]
.L0203fbe8:
    ldr fp, [sp, #36]
.L0203fbec:
    add r1, lr, r1
.L0203fbf0:
    mov r0, r3, lsr #16
.L0203fbf4:
    mov r2, sl, lsr #16
.L0203fbf8:
    str r1, [sp, #44]
.L0203fbfc:
    orr r0, r0, r1, lsl #16
.L0203fc00:
    orr r2, r2, fp, lsl #16
.L0203fc04:
    bge .L0203fc9c
.L0203fc08:
    add r3, r0, r2
.L0203fc0c:
    cmp r3, #0
.L0203fc10:
    ble .L0203fc9c
.L0203fc14:
    ldr r0, [sp, #56]
.L0203fc18:
    cmp r0, #3
.L0203fc1c:
    ble .L0203fc9c
.L0203fc20:
    ldr r1, [sp, #60]
.L0203fc24:
    ldr r2, [sp, #52]
.L0203fc28:
    mov r3, #1
.L0203fc2c:
    sub r0, r0, #1
.L0203fc30:
    strb r3, [r1, r2]
.L0203fc34:
    str r0, [sp, #56]
.L0203fc38:
    ldr r4, [sp, #48]
.L0203fc3c:
    ldr r6, [sp, #60]
.L0203fc40:
    ldr sl, [sp, #108]
.L0203fc44:
    ldr r3, [r4, #8]
.L0203fc48:
    add r6, r6, #1
.L0203fc4c:
    add sl, sl, #1
.L0203fc50:
    cmp r3, r6
.L0203fc54:
    str r6, [sp, #60]
.L0203fc58:
    str sl, [sp, #108]
.L0203fc5c:
    bgt .L0203f800
.L0203fc60:
    ldr fp, [sp, #56]
.L0203fc64:
    rsbs r8, fp, #1
.L0203fc68:
    movcc r8, #0
.L0203fc6c:
    cmp r3, fp
.L0203fc70:
    movne r4, r8
.L0203fc74:
    orreq r4, r8, #1
.L0203fc78:
    cmp r4, #0
.L0203fc7c:
    beq .L0203fcb0
.L0203fc80:
    ldr ip, [sp, #52]
.L0203fc84:
    cmp ip, #0
.L0203fc88:
    beq .L0203f7b8
.L0203fc8c:
    mov r0, ip
.L0203fc90:
    add sp, sp, #116
.L0203fc94:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203fc98:
    b _ZdaPv
.L0203fc9c:
    ldr r1, [sp, #60]
.L0203fca0:
    ldr r2, [sp, #52]
.L0203fca4:
    mov r3, #0
.L0203fca8:
    strb r3, [r1, r2]
.L0203fcac:
    b .L0203fc38
.L0203fcb0:
    ldr r0, [sp, #56]
.L0203fcb4:
    mov r5, r0, lsl #2
.L0203fcb8:
    mov r0, r5
.L0203fcbc:
    bl _Znaj
.L0203fcc0:
    ldr r1, [sp, #56]
.L0203fcc4:
    mov r7, r0
.L0203fcc8:
    cmp r1, #0
.L0203fccc:
    beq .L0203fdfc
.L0203fcd0:
    mov r3, r4
.L0203fcd4:
    ldr r2, [sp, #56]
.L0203fcd8:
    str r4, [r7, r3, lsl #2]
.L0203fcdc:
    add r3, r3, #1
.L0203fce0:
    cmp r2, r3
.L0203fce4:
    bne .L0203fcd4
.L0203fce8:
    mov r0, r5
.L0203fcec:
    bl _Znaj
.L0203fcf0:
    mov r3, r4
.L0203fcf4:
    mov r6, r0
.L0203fcf8:
    mov r2, r4
.L0203fcfc:
    ldr r4, [sp, #56]
.L0203fd00:
    str r2, [r6, r3, lsl #2]
.L0203fd04:
    add r3, r3, #1
.L0203fd08:
    cmp r4, r3
.L0203fd0c:
    bne .L0203fcfc
.L0203fd10:
    ldr sl, [sp, #48]
.L0203fd14:
    ldr ip, [sl, #8]
.L0203fd18:
    cmp ip, #0
.L0203fd1c:
    ble .L0203fd98
.L0203fd20:
    mov r4, #0
.L0203fd24:
    mov r5, r4
.L0203fd28:
    ldr fp, [sp, #52]
.L0203fd2c:
    ldrb r3, [r4, fp]
.L0203fd30:
    cmp r3, #0
.L0203fd34:
    bne .L0203fd8c
.L0203fd38:
    ldr r0, [sp, #56]
.L0203fd3c:
    cmp r5, r0
.L0203fd40:
    movne r3, r8
.L0203fd44:
    orreq r3, r8, #1
.L0203fd48:
    cmp r3, #0
.L0203fd4c:
    bne .L0203fd8c
.L0203fd50:
    cmp r5, r0
.L0203fd54:
    mov r1, #173
.L0203fd58:
    ldr r0, [pc, #176]
.L0203fd5c:
    ldr r2, [pc, #176]
.L0203fd60:
    bge .L0203fdec
.L0203fd64:
    ldr r2, [sp, #48]
.L0203fd68:
    mov r0, r4, lsl #2
.L0203fd6c:
    ldr r3, [r2]
.L0203fd70:
    ldr r2, [r3, r0]
.L0203fd74:
    ldr r3, [sp, #48]
.L0203fd78:
    str r2, [r7, r5, lsl #2]
.L0203fd7c:
    ldr r1, [r3, #4]
.L0203fd80:
    ldr r3, [r1, r0]
.L0203fd84:
    str r3, [r6, r5, lsl #2]
.L0203fd88:
    add r5, r5, #1
.L0203fd8c:
    add r4, r4, #1
.L0203fd90:
    cmp ip, r4
.L0203fd94:
    bgt .L0203fd28
.L0203fd98:
    ldr r4, [sp, #48]
.L0203fd9c:
    ldr r0, [r4]
.L0203fda0:
    cmp r0, #0
.L0203fda4:
    beq .L0203fdac
.L0203fda8:
    bl _ZdaPv
.L0203fdac:
    ldr sl, [sp, #48]
.L0203fdb0:
    ldr r0, [sl, #4]
.L0203fdb4:
    cmp r0, #0
.L0203fdb8:
    beq .L0203fdc0
.L0203fdbc:
    bl _ZdaPv
.L0203fdc0:
    ldr fp, [sp, #52]
.L0203fdc4:
    cmp fp, #0
.L0203fdc8:
    beq .L0203fdd4
.L0203fdcc:
    mov r0, fp
.L0203fdd0:
    bl _ZdaPv
.L0203fdd4:
    ldr ip, [sp, #48]
.L0203fdd8:
    ldr r0, [sp, #56]
.L0203fddc:
    str r7, [ip]
.L0203fde0:
    str r0, [ip, #8]
.L0203fde4:
    str r6, [ip, #4]
.L0203fde8:
    b .L0203f7b8
.L0203fdec:
    bl __assert
.L0203fdf0:
    ldr r1, [sp, #48]
.L0203fdf4:
    ldr ip, [r1, #8]
.L0203fdf8:
    b .L0203fd64
.L0203fdfc:
    mov r0, r5
.L0203fe00:
    bl _Znaj
.L0203fe04:
    mov r6, r0
.L0203fe08:
    b .L0203fd10
.L0203fe0c:
    .long 0x04000200  /* literal data */
.L0203fe10:
    .long .rodata.str1.4 + 0  /* literal data */
.L0203fe14:
    .long .rodata.str1.4 + 96  /* literal data */
.size _ZN9b2Polygon18MergeParallelEdgesE5Fixed, .-_ZN9b2Polygon18MergeParallelEdgesE5Fixed

.section .text.polygon.residual.40,"ax",%progbits
.balign 4
.arm
.global _Z18TriangulatePolygonP5FixedS0_lP10b2Triangle
.type _Z18TriangulatePolygonP5FixedS0_lP10b2Triangle, %function
_Z18TriangulatePolygonP5FixedS0_lP10b2Triangle:
.L020410c4:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020410c8:
    cmp r2, #2
.L020410cc:
    sub sp, sp, #412
.L020410d0:
    mov r8, r0
.L020410d4:
    mov r6, r2
.L020410d8:
    mov r7, r1
.L020410dc:
    str r3, [sp, #60]
.L020410e0:
    movle r8, #0
.L020410e4:
    bgt .L020410f4
.L020410e8:
    mov r0, r8
.L020410ec:
    add sp, sp, #412
.L020410f0:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L020410f4:
    add r0, sp, #164
.L020410f8:
    bl _ZN9b2PolygonC1Ev
.L020410fc:
    add r0, sp, #144
.L02041100:
    bl _ZN9b2PolygonC1Ev
.L02041104:
    mov r3, r6
.L02041108:
    mov r1, r8
.L0204110c:
    mov r2, r7
.L02041110:
    add r0, sp, #124
.L02041114:
    bl _ZN9b2PolygonC1EP5FixedS1_l
.L02041118:
    add r0, sp, #124
.L0204111c:
    add r1, sp, #164
.L02041120:
    add r2, sp, #144
.L02041124:
    bl _Z17ResolvePinchPointRK9b2PolygonRS_S2_
.L02041128:
    cmp r0, #0
.L0204112c:
    beq .L02041288
.L02041130:
    ldr r6, [sp, #172]
.L02041134:
    mov r0, r6, lsl #3
.L02041138:
    add r0, r0, #8
.L0204113c:
    bl _Znaj
.L02041140:
    mov r3, #8
.L02041144:
    cmp r6, #0
.L02041148:
    stmia r0, {r3, r6}
.L0204114c:
    add r7, r0, r3
.L02041150:
    beq .L02041174
.L02041154:
    mov r4, r7
.L02041158:
    mov r5, #0
.L0204115c:
    mov r0, r4
.L02041160:
    add r5, r5, #1
.L02041164:
    bl _ZN10b2TriangleC1Ev
.L02041168:
    cmp r5, r6
.L0204116c:
    add r4, r4, #8
.L02041170:
    bne .L0204115c
.L02041174:
    ldr r6, [sp, #152]
.L02041178:
    mov r0, r6, lsl #3
.L0204117c:
    add r0, r0, #8
.L02041180:
    bl _Znaj
.L02041184:
    mov r3, #8
.L02041188:
    cmp r6, #0
.L0204118c:
    stmia r0, {r3, r6}
.L02041190:
    add r8, r0, r3
.L02041194:
    beq .L020411b8
.L02041198:
    mov r4, r8
.L0204119c:
    mov r5, #0
.L020411a0:
    mov r0, r4
.L020411a4:
    add r5, r5, #1
.L020411a8:
    bl _ZN10b2TriangleC1Ev
.L020411ac:
    cmp r5, r6
.L020411b0:
    add r4, r4, #8
.L020411b4:
    bne .L020411a0
.L020411b8:
    ldr r1, [sp, #168]
.L020411bc:
    ldr r2, [sp, #172]
.L020411c0:
    mov r3, r7
.L020411c4:
    ldr r0, [sp, #164]
.L020411c8:
    bl .L020410c4
.L020411cc:
    mov r3, r8
.L020411d0:
    mov r9, r0
.L020411d4:
    add r0, sp, #144
.L020411d8:
    ldmia r0, {r0, r1, r2}
.L020411dc:
    bl .L020410c4
.L020411e0:
    cmn r9, #1
.L020411e4:
    cmnne r0, #1
.L020411e8:
    mov sl, r0
.L020411ec:
    movne r3, #0
.L020411f0:
    moveq r3, #1
.L020411f4:
    bne .L02042830
.L020411f8:
    cmp r7, #0
.L020411fc:
    beq .L02041230
.L02041200:
    ldr r3, [r7, #-4]
.L02041204:
    mov r3, r3, lsl #3
.L02041208:
    add r4, r7, r3
.L0204120c:
    cmp r7, r4
.L02041210:
    beq .L02041228
.L02041214:
    sub r4, r4, #8
.L02041218:
    mov r0, r4
.L0204121c:
    bl _ZN10b2TriangleD1Ev
.L02041220:
    cmp r7, r4
.L02041224:
    bne .L02041214
.L02041228:
    sub r0, r7, #8
.L0204122c:
    bl _ZdaPv
.L02041230:
    cmp r8, #0
.L02041234:
    beq .L02042918
.L02041238:
    ldr r3, [r8, #-4]
.L0204123c:
    mov r3, r3, lsl #3
.L02041240:
    add r4, r8, r3
.L02041244:
    cmp r8, r4
.L02041248:
    beq .L02041260
.L0204124c:
    sub r4, r4, #8
.L02041250:
    mov r0, r4
.L02041254:
    bl _ZN10b2TriangleD1Ev
.L02041258:
    cmp r8, r4
.L0204125c:
    bne .L0204124c
.L02041260:
    sub r0, r8, #8
.L02041264:
    bl _ZdaPv
.L02041268:
    mvn r8, #0
.L0204126c:
    add r0, sp, #124
.L02041270:
    bl _ZN9b2PolygonD1Ev
.L02041274:
    add r0, sp, #144
.L02041278:
    bl _ZN9b2PolygonD1Ev
.L0204127c:
    add r0, sp, #164
.L02041280:
    bl _ZN9b2PolygonD1Ev
.L02041284:
    b .L020410e8
.L02041288:
    sub r1, r6, #2
.L0204128c:
    mov r0, r1, lsl #3
.L02041290:
    add r0, r0, #8
.L02041294:
    str r1, [sp, #20]
.L02041298:
    bl _Znaj
.L0204129c:
    ldr r2, [sp, #20]
.L020412a0:
    mov r3, #8
.L020412a4:
    str r3, [r0]
.L020412a8:
    cmp r2, #0
.L020412ac:
    add r3, r0, r3
.L020412b0:
    str r0, [sp, #64]
.L020412b4:
    str r2, [r0, #4]
.L020412b8:
    str r3, [sp, #68]
.L020412bc:
    beq .L020412e0
.L020412c0:
    mov r5, r3
.L020412c4:
    mov r4, r6
.L020412c8:
    mov r0, r5
.L020412cc:
    sub r4, r4, #1
.L020412d0:
    bl _ZN10b2TriangleC1Ev
.L020412d4:
    cmp r4, #2
.L020412d8:
    add r5, r5, #8
.L020412dc:
    bne .L020412c8
.L020412e0:
    mov r5, r6, lsl #2
.L020412e4:
    mov r0, r5
.L020412e8:
    bl _Znaj
.L020412ec:
    cmp r6, #0
.L020412f0:
    str r0, [sp, #72]
.L020412f4:
    beq .L02042b50
.L020412f8:
    mov r3, #0
.L020412fc:
    mov r4, r3
.L02041300:
    ldr ip, [sp, #72]
.L02041304:
    str r4, [ip, r3, lsl #2]
.L02041308:
    add r3, r3, #1
.L0204130c:
    cmp r6, r3
.L02041310:
    bne .L02041300
.L02041314:
    mov r0, r5
.L02041318:
    bl _Znaj
.L0204131c:
    mov r3, r4
.L02041320:
    str r0, [sp, #116]
.L02041324:
    mov r2, r4
.L02041328:
    ldr lr, [sp, #116]
.L0204132c:
    str r2, [lr, r3, lsl #2]
.L02041330:
    add r3, r3, #1
.L02041334:
    cmp r6, r3
.L02041338:
    bne .L02041328
.L0204133c:
    mov r0, #0
.L02041340:
    mov r1, r0
.L02041344:
    ldr r3, [r1, r8]
.L02041348:
    ldr r2, [sp, #72]
.L0204134c:
    add r0, r0, #1
.L02041350:
    str r3, [r1, r2]
.L02041354:
    ldr r2, [r1, r7]
.L02041358:
    ldr r3, [sp, #116]
.L0204135c:
    cmp r6, r0
.L02041360:
    str r2, [r1, r3]
.L02041364:
    add r1, r1, #4
.L02041368:
    bne .L02041344
.L0204136c:
    cmp r6, #3
.L02041370:
    movle r4, #0
.L02041374:
    movle r8, #1
.L02041378:
    ble .L02042930
.L0204137c:
    mov r4, #1
.L02041380:
    str r6, [sp, #112]
.L02041384:
    str r4, [sp, #104]
.L02041388:
    ldr r5, [pc, #3900]
.L0204138c:
    mvn r7, #0
.L02041390:
    mov ip, #0
.L02041394:
    str r5, [sp, #100]
.L02041398:
    str r7, [sp, #76]
.L0204139c:
    str ip, [sp, #108]
.L020413a0:
    b .L020413b8
.L020413a4:
    ldr r2, [sp, #112]
.L020413a8:
    ldr r3, [sp, #80]
.L020413ac:
    cmp r2, r3
.L020413b0:
    ble .L0204172c
.L020413b4:
    str r3, [sp, #108]
.L020413b8:
    ldr r0, [sp, #108]
.L020413bc:
    ldr r1, [sp, #72]
.L020413c0:
    ldr r2, [sp, #116]
.L020413c4:
    ldr r3, [sp, #112]
.L020413c8:
    bl _Z5IsEarlP5FixedS0_l
.L020413cc:
    cmp r0, #0
.L020413d0:
    ldreq lr, [sp, #108]
.L020413d4:
    addeq lr, lr, #1
.L020413d8:
    streq lr, [sp, #80]
.L020413dc:
    beq .L020413a4
.L020413e0:
    ldr r2, [sp, #108]
.L020413e4:
    ldr r1, [sp, #112]
.L020413e8:
    add r3, r2, #1
.L020413ec:
    sub r0, r2, #1
.L020413f0:
    str r3, [sp, #80]
.L020413f4:
    bl _Z9remainderll
.L020413f8:
    ldr r1, [sp, #112]
.L020413fc:
    mov r6, r0
.L02041400:
    ldr r0, [sp, #80]
.L02041404:
    bl _Z9remainderll
.L02041408:
    ldr r7, [sp, #72]
.L0204140c:
    ldr r4, [sp, #116]
.L02041410:
    ldr ip, [r7, r0, lsl #2]
.L02041414:
    ldr r5, [r4, r0, lsl #2]
.L02041418:
    ldr r0, [sp, #108]
.L0204141c:
    ldr r3, [sp, #116]
.L02041420:
    ldr lr, [r7, r0, lsl #2]
.L02041424:
    ldr r4, [r4, r0, lsl #2]
.L02041428:
    ldr r1, [r3, r6, lsl #2]
.L0204142c:
    rsb sl, lr, ip
.L02041430:
    ldr r3, [r7, r6, lsl #2]
.L02041434:
    rsb fp, r4, r5
.L02041438:
    eor r2, fp, fp, asr #31
.L0204143c:
    sub r2, r2, fp, asr #31
.L02041440:
    eor r0, sl, sl, asr #31
.L02041444:
    sub r0, r0, sl, asr #31
.L02041448:
    rsb ip, ip, r3
.L0204144c:
    rsb lr, r3, lr
.L02041450:
    rsb r4, r1, r4
.L02041454:
    add r0, r2, r0
.L02041458:
    rsb r5, r5, r1
.L0204145c:
    str ip, [sp, #92]
.L02041460:
    str lr, [sp, #84]
.L02041464:
    str r4, [sp, #88]
.L02041468:
    str r5, [sp, #96]
.L0204146c:
    bl __floatsisf
.L02041470:
    mov r1, #931135488
.L02041474:
    bl __aeabi_fmul
.L02041478:
    mov r1, #0
.L0204147c:
    mov r4, r0
.L02041480:
    bl __aeabi_fcmpeq
.L02041484:
    cmp r0, #0
.L02041488:
    beq .L02041920
.L0204148c:
    mov r4, sl
.L02041490:
    mov r5, r4, asr #31
.L02041494:
    mov r0, fp
.L02041498:
    mov r1, r0, asr #31
.L0204149c:
    strd r4, [sp, #24]
.L020414a0:
    strd r0, [sp, #32]
.L020414a4:
    ldr r3, [sp, #88]
.L020414a8:
    ldr r0, [sp, #84]
.L020414ac:
    cmp r3, #0
.L020414b0:
    rsblt r3, r3, #0
.L020414b4:
    cmp r0, #0
.L020414b8:
    rsblt r0, r0, #0
.L020414bc:
    add r0, r3, r0
.L020414c0:
    bl __floatsisf
.L020414c4:
    mov r1, #931135488
.L020414c8:
    bl __aeabi_fmul
.L020414cc:
    mov r1, #0
.L020414d0:
    mov r4, r0
.L020414d4:
    bl __aeabi_fcmpeq
.L020414d8:
    cmp r0, #0
.L020414dc:
    bne .L020418fc
.L020414e0:
    mov r0, r4
.L020414e4:
    bl __aeabi_f2d
.L020414e8:
    ldr r2, [pc, #3552]
.L020414ec:
    ldr r3, [pc, #3552]
.L020414f0:
    bl __aeabi_dcmplt
.L020414f4:
    cmp r0, #0
.L020414f8:
    beq .L02041b68
.L020414fc:
    ldr ip, [sp, #88]
.L02041500:
    ldr r7, [sp, #84]
.L02041504:
    mov r6, ip, lsl #8
.L02041508:
    mov r5, r7, lsl #8
.L0204150c:
    eor r3, r6, r6, asr #31
.L02041510:
    sub r3, r3, r6, asr #31
.L02041514:
    eor r0, r5, r5, asr #31
.L02041518:
    sub r0, r0, r5, asr #31
.L0204151c:
    add r0, r3, r0
.L02041520:
    bl __floatsisf
.L02041524:
    mov r1, #931135488
.L02041528:
    bl __aeabi_fmul
.L0204152c:
    mov r1, #0
.L02041530:
    mov r4, r0
.L02041534:
    bl __aeabi_fcmpeq
.L02041538:
    cmp r0, #0
.L0204153c:
    beq .L020420c0
.L02041540:
    ldr r3, [sp, #88]
.L02041544:
    mov r0, r7
.L02041548:
    mov r1, r0, asr #31
.L0204154c:
    mov r2, r3
.L02041550:
    mov r3, r2, asr #31
.L02041554:
    strd r0, [sp, #40]
.L02041558:
    strd r2, [sp, #48]
.L0204155c:
    ldr r3, [sp, #96]
.L02041560:
    ldr r0, [sp, #92]
.L02041564:
    cmp r3, #0
.L02041568:
    rsblt r3, r3, #0
.L0204156c:
    cmp r0, #0
.L02041570:
    rsblt r0, r0, #0
.L02041574:
    add r0, r3, r0
.L02041578:
    bl __floatsisf
.L0204157c:
    mov r1, #931135488
.L02041580:
    bl __aeabi_fmul
.L02041584:
    mov r1, #0
.L02041588:
    mov r4, r0
.L0204158c:
    bl __aeabi_fcmpeq
.L02041590:
    cmp r0, #0
.L02041594:
    beq .L02041994
.L02041598:
    ldr r7, [sp, #92]
.L0204159c:
    ldr ip, [sp, #96]
.L020415a0:
    mov sl, r7
.L020415a4:
    mov fp, sl, asr #31
.L020415a8:
    mov r6, ip
.L020415ac:
    mov r7, r6, asr #31
.L020415b0:
    ldr r5, [sp, #24]
.L020415b4:
    ldr r3, [sp, #52]
.L020415b8:
    ldr ip, [sp, #32]
.L020415bc:
    mul r3, r5, r3
.L020415c0:
    ldr r2, [sp, #44]
.L020415c4:
    ldr lr, [sp, #48]
.L020415c8:
    mul r2, ip, r2
.L020415cc:
    ldr ip, [sp, #28]
.L020415d0:
    ldr r0, [sp, #40]
.L020415d4:
    mla ip, lr, ip, r3
.L020415d8:
    ldr r3, [sp, #48]
.L020415dc:
    ldr lr, [sp, #36]
.L020415e0:
    ldr r4, [sp, #32]
.L020415e4:
    mla lr, r0, lr, r2
.L020415e8:
    umull r0, r1, r5, r3
.L020415ec:
    ldr r5, [sp, #40]
.L020415f0:
    add r1, ip, r1
.L020415f4:
    umull r2, r3, r4, r5
.L020415f8:
    mov r0, r0, lsr #16
.L020415fc:
    add r3, lr, r3
.L02041600:
    mov r2, r2, lsr #16
.L02041604:
    orr r2, r2, r3, lsl #16
.L02041608:
    orr r0, r0, r1, lsl #16
.L0204160c:
    rsb r0, r2, r0
.L02041610:
    cmp r0, #0
.L02041614:
    rsble r3, r0, #0
.L02041618:
    strle r3, [sp, #304]
.L0204161c:
    ldr ip, [sp, #48]
.L02041620:
    ldr r3, [sp, #40]
.L02041624:
    ldr lr, [sp, #40]
.L02041628:
    mul r3, r7, r3
.L0204162c:
    mul ip, fp, ip
.L02041630:
    strgt r0, [sp, #304]
.L02041634:
    ldr r5, [sp, #48]
.L02041638:
    umull r0, r1, lr, r6
.L0204163c:
    ldr r4, [sp, #44]
.L02041640:
    ldr lr, [sp, #52]
.L02041644:
    mla r4, r6, r4, r3
.L02041648:
    mla lr, sl, lr, ip
.L0204164c:
    umull r2, r3, r5, sl
.L02041650:
    add r1, r4, r1
.L02041654:
    add r3, lr, r3
.L02041658:
    mov r0, r0, lsr #16
.L0204165c:
    mov r2, r2, lsr #16
.L02041660:
    orr r2, r2, r3, lsl #16
.L02041664:
    orr r0, r0, r1, lsl #16
.L02041668:
    ldr r4, [sp, #32]
.L0204166c:
    ldr r5, [sp, #24]
.L02041670:
    rsb r0, r2, r0
.L02041674:
    cmp r0, #0
.L02041678:
    ldr ip, [sp, #32]
.L0204167c:
    ldr lr, [sp, #24]
.L02041680:
    mul r4, fp, r4
.L02041684:
    mul r5, r7, r5
.L02041688:
    rsble r3, r0, #0
.L0204168c:
    strgt r0, [sp, #300]
.L02041690:
    strle r3, [sp, #300]
.L02041694:
    umull r0, r1, ip, sl
.L02041698:
    umull r2, r3, lr, r6
.L0204169c:
    ldr ip, [sp, #36]
.L020416a0:
    ldr lr, [sp, #28]
.L020416a4:
    mla ip, sl, ip, r4
.L020416a8:
    mla lr, r6, lr, r5
.L020416ac:
    add r1, ip, r1
.L020416b0:
    add r3, lr, r3
.L020416b4:
    mov r0, r0, lsr #16
.L020416b8:
    mov r2, r2, lsr #16
.L020416bc:
    orr r2, r2, r3, lsl #16
.L020416c0:
    orr r0, r0, r1, lsl #16
.L020416c4:
    rsb r0, r2, r0
.L020416c8:
    cmp r0, #0
.L020416cc:
    rsble r3, r0, #0
.L020416d0:
    strgt r0, [sp, #296]
.L020416d4:
    strle r3, [sp, #296]
.L020416d8:
    ldr r2, [sp, #296]
.L020416dc:
    ldr r3, [sp, #300]
.L020416e0:
    ldr r0, [sp, #100]
.L020416e4:
    cmp r2, r3
.L020416e8:
    addgt r2, sp, #300
.L020416ec:
    addle r2, sp, #296
.L020416f0:
    ldr r3, [sp, #304]
.L020416f4:
    ldr r2, [r2]
.L020416f8:
    cmp r2, r3
.L020416fc:
    str r2, [sp, #308]
.L02041700:
    addgt r3, sp, #304
.L02041704:
    addle r3, sp, #308
.L02041708:
    ldr r3, [r3]
.L0204170c:
    cmp r0, r3
.L02041710:
    ldrlt r1, [sp, #108]
.L02041714:
    strlt r1, [sp, #76]
.L02041718:
    strlt r3, [sp, #100]
.L0204171c:
    ldr r2, [sp, #112]
.L02041720:
    ldr r3, [sp, #80]
.L02041724:
    cmp r2, r3
.L02041728:
    bgt .L020413b4
.L0204172c:
    ldr r4, [sp, #76]
.L02041730:
    cmn r4, #1
.L02041734:
    beq .L02042918
.L02041738:
    ldr r5, [sp, #112]
.L0204173c:
    sub r8, r5, #1
.L02041740:
    mov sl, r8, lsl #2
.L02041744:
    mov r0, sl
.L02041748:
    bl _Znaj
.L0204174c:
    cmp r8, #0
.L02041750:
    mov r7, r0
.L02041754:
    beq .L020425cc
.L02041758:
    ldr r4, [sp, #112]
.L0204175c:
    mov r2, #0
.L02041760:
    mov r3, r4
.L02041764:
    mov r5, r2
.L02041768:
    sub r3, r3, #1
.L0204176c:
    cmp r3, #1
.L02041770:
    str r5, [r2, r7]
.L02041774:
    add r2, r2, #4
.L02041778:
    bne .L02041768
.L0204177c:
    mov r0, sl
.L02041780:
    bl _Znaj
.L02041784:
    mov r3, r5
.L02041788:
    mov r6, r0
.L0204178c:
    mov r2, r5
.L02041790:
    sub r4, r4, #1
.L02041794:
    cmp r4, #1
.L02041798:
    str r2, [r3, r6]
.L0204179c:
    add r3, r3, #4
.L020417a0:
    bne .L02041790
.L020417a4:
    cmp r8, #0
.L020417a8:
    ble .L020417f4
.L020417ac:
    mov r0, r2
.L020417b0:
    mov r1, r4
.L020417b4:
    mov ip, r2
.L020417b8:
    add lr, r8, #1
.L020417bc:
    ldr r2, [sp, #76]
.L020417c0:
    ldr r4, [sp, #72]
.L020417c4:
    cmp r2, r0
.L020417c8:
    addeq r0, r2, #1
.L020417cc:
    ldr r3, [r4, r0, lsl #2]
.L020417d0:
    ldr r5, [sp, #116]
.L020417d4:
    str r3, [ip, r7]
.L020417d8:
    ldr r2, [r5, r0, lsl #2]
.L020417dc:
    add r1, r1, #1
.L020417e0:
    cmp r1, lr
.L020417e4:
    str r2, [ip, r6]
.L020417e8:
    add r0, r0, #1
.L020417ec:
    add ip, ip, #4
.L020417f0:
    bne .L020417bc
.L020417f4:
    ldr ip, [sp, #76]
.L020417f8:
    ldr lr, [sp, #76]
.L020417fc:
    cmp ip, #0
.L02041800:
    subne r3, ip, #1
.L02041804:
    movne sl, r3, lsl #2
.L02041808:
    cmp lr, r8
.L0204180c:
    ldrne r0, [sp, #76]
.L02041810:
    ldr r1, [sp, #76]
.L02041814:
    ldr r2, [sp, #72]
.L02041818:
    addne r3, r0, #1
.L0204181c:
    movne r0, r3, lsl #2
.L02041820:
    ldr r3, [r2, r1, lsl #2]
.L02041824:
    ldr r5, [sp, #72]
.L02041828:
    str r3, [sp, #312]
.L0204182c:
    ldr r3, [sp, #116]
.L02041830:
    moveq r0, #0
.L02041834:
    ldr r2, [r3, r1, lsl #2]
.L02041838:
    ldr lr, [sp, #116]
.L0204183c:
    str r2, [sp, #316]
.L02041840:
    ldr r3, [r5, r0]
.L02041844:
    add r4, sp, #184
.L02041848:
    str r3, [sp, #320]
.L0204184c:
    ldr ip, [lr, r0]
.L02041850:
    add r1, sp, #312
.L02041854:
    str ip, [sp, #324]
.L02041858:
    ldr r0, [sl, r5]
.L0204185c:
    add ip, sp, #324
.L02041860:
    str r0, [sp, #328]
.L02041864:
    ldr lr, [sl, lr]
.L02041868:
    add r2, sp, #316
.L0204186c:
    add r3, sp, #320
.L02041870:
    str lr, [sp, #332]
.L02041874:
    str ip, [sp]
.L02041878:
    add lr, sp, #328
.L0204187c:
    add ip, sp, #332
.L02041880:
    mov r0, r4
.L02041884:
    str lr, [sp, #4]
.L02041888:
    str ip, [sp, #8]
.L0204188c:
    bl _ZN10b2TriangleC1E5FixedS0_S0_S0_S0_S0_
.L02041890:
    ldr r1, [sp, #104]
.L02041894:
    ldr r2, [sp, #64]
.L02041898:
    mov r0, r1, lsl #3
.L0204189c:
    add r0, r0, r2
.L020418a0:
    mov r1, r4
.L020418a4:
    bl _ZN10b2Triangle3SetERKS_
.L020418a8:
    cmp r5, #0
.L020418ac:
    ldr r5, [sp, #104]
.L020418b0:
    beq .L020418bc
.L020418b4:
    ldr r0, [sp, #72]
.L020418b8:
    bl _ZdaPv
.L020418bc:
    ldr r3, [sp, #116]
.L020418c0:
    cmp r3, #0
.L020418c4:
    beq .L020418d0
.L020418c8:
    mov r0, r3
.L020418cc:
    bl _ZdaPv
.L020418d0:
    mov r0, r4
.L020418d4:
    bl _ZN10b2TriangleD1Ev
.L020418d8:
    ldr r4, [sp, #104]
.L020418dc:
    cmp r8, #3
.L020418e0:
    add r4, r4, #1
.L020418e4:
    str r4, [sp, #104]
.L020418e8:
    beq .L02042920
.L020418ec:
    str r8, [sp, #112]
.L020418f0:
    str r7, [sp, #72]
.L020418f4:
    str r6, [sp, #116]
.L020418f8:
    b .L02041388
.L020418fc:
    ldr r3, [sp, #84]
.L02041900:
    ldr r5, [sp, #88]
.L02041904:
    mov r2, r3
.L02041908:
    mov r3, r2, asr #31
.L0204190c:
    mov r4, r5
.L02041910:
    mov r5, r4, asr #31
.L02041914:
    strd r2, [sp, #40]
.L02041918:
    strd r4, [sp, #48]
.L0204191c:
    b .L0204155c
.L02041920:
    mov r0, r4
.L02041924:
    bl __aeabi_f2d
.L02041928:
    ldr r2, [pc, #2464]
.L0204192c:
    ldr r3, [pc, #2464]
.L02041930:
    bl __aeabi_dcmplt
.L02041934:
    cmp r0, #0
.L02041938:
    beq .L02041ce8
.L0204193c:
    mov r5, sl, lsl #8
.L02041940:
    mov r6, fp, lsl #8
.L02041944:
    eor r3, r6, r6, asr #31
.L02041948:
    sub r3, r3, r6, asr #31
.L0204194c:
    eor r0, r5, r5, asr #31
.L02041950:
    sub r0, r0, r5, asr #31
.L02041954:
    add r0, r3, r0
.L02041958:
    bl __floatsisf
.L0204195c:
    mov r1, #931135488
.L02041960:
    bl __aeabi_fmul
.L02041964:
    mov r1, #0
.L02041968:
    mov r4, r0
.L0204196c:
    bl __aeabi_fcmpeq
.L02041970:
    cmp r0, #0
.L02041974:
    beq .L02042160
.L02041978:
    mov r2, sl
.L0204197c:
    mov r3, r2, asr #31
.L02041980:
    mov r4, fp
.L02041984:
    mov r5, r4, asr #31
.L02041988:
    strd r2, [sp, #24]
.L0204198c:
    strd r4, [sp, #32]
.L02041990:
    b .L020414a4
.L02041994:
    mov r0, r4
.L02041998:
    bl __aeabi_f2d
.L0204199c:
    ldr r2, [pc, #2348]
.L020419a0:
    ldr r3, [pc, #2348]
.L020419a4:
    bl __aeabi_dcmplt
.L020419a8:
    cmp r0, #0
.L020419ac:
    beq .L02041a10
.L020419b0:
    ldr lr, [sp, #92]
.L020419b4:
    ldr r0, [sp, #96]
.L020419b8:
    mov r5, lr, lsl #8
.L020419bc:
    mov r6, r0, lsl #8
.L020419c0:
    eor r3, r6, r6, asr #31
.L020419c4:
    sub r3, r3, r6, asr #31
.L020419c8:
    eor r0, r5, r5, asr #31
.L020419cc:
    sub r0, r0, r5, asr #31
.L020419d0:
    add r0, r3, r0
.L020419d4:
    bl __floatsisf
.L020419d8:
    mov r1, #931135488
.L020419dc:
    bl __aeabi_fmul
.L020419e0:
    mov r1, #0
.L020419e4:
    mov r4, r0
.L020419e8:
    bl __aeabi_fcmpeq
.L020419ec:
    cmp r0, #0
.L020419f0:
    beq .L02041eb8
.L020419f4:
    ldr r1, [sp, #92]
.L020419f8:
    ldr r2, [sp, #96]
.L020419fc:
    mov sl, r1
.L02041a00:
    mov fp, sl, asr #31
.L02041a04:
    mov r6, r2
.L02041a08:
    mov r7, r6, asr #31
.L02041a0c:
    b .L020415b0
.L02041a10:
    mov r0, r4
.L02041a14:
    ldr r1, [pc, #2236]
.L02041a18:
    bl __aeabi_fcmplt
.L02041a1c:
    cmp r0, #0
.L02041a20:
    beq .L02042060
.L02041a24:
    ldr lr, [sp, #92]
.L02041a28:
    ldr r0, [sp, #96]
.L02041a2c:
    mov sl, lr
.L02041a30:
    mov fp, sl, asr #31
.L02041a34:
    mov r6, r0
.L02041a38:
    mov r7, r6, asr #31
.L02041a3c:
    mul ip, sl, fp
.L02041a40:
    mul lr, r6, r7
.L02041a44:
    umull r2, r3, sl, sl
.L02041a48:
    umull r0, r1, r6, r6
.L02041a4c:
    ldr r4, [pc, #2184]
.L02041a50:
    mov ip, ip, lsl #1
.L02041a54:
    mov lr, lr, lsl #1
.L02041a58:
    mov r5, #1
.L02041a5c:
    add r3, ip, r3
.L02041a60:
    add r1, lr, r1
.L02041a64:
    strh r5, [r4, #176]
.L02041a68:
    mov r8, r2, lsr #16
.L02041a6c:
    mov r4, r0, lsr #16
.L02041a70:
    orr r8, r8, r3, lsl #16
.L02041a74:
    mov r9, r3, asr #16
.L02041a78:
    orr r4, r4, r1, lsl #16
.L02041a7c:
    ldr ip, [pc, #2136]
.L02041a80:
    ldrh r3, [ip, #176]
.L02041a84:
    tst r3, #32768
.L02041a88:
    bne .L02041a7c
.L02041a8c:
    add r2, r8, r4
.L02041a90:
    mov r3, r2, asr #31
.L02041a94:
    mov r3, r3, lsl #16
.L02041a98:
    orr r3, r3, r2, lsr #16
.L02041a9c:
    mov r2, r2, lsl #16
.L02041aa0:
    strd r2, [ip, #184]
.L02041aa4:
    mov r2, ip
.L02041aa8:
    ldrh r3, [r2, #176]
.L02041aac:
    tst r3, #32768
.L02041ab0:
    bne .L02041aa8
.L02041ab4:
    mov lr, #67108864
.L02041ab8:
    ldr r5, [lr, #692]
.L02041abc:
    cmp r5, #3
.L02041ac0:
    ble .L020415b0
.L02041ac4:
    ldr r1, [pc, #2064]
.L02041ac8:
    mov lr, #1
.L02041acc:
    strh lr, [r1, #128]
.L02041ad0:
    ldrh r3, [r1, #128]
.L02041ad4:
    tst r3, #32768
.L02041ad8:
    bne .L02041ad0
.L02041adc:
    mov r3, fp, lsl #16
.L02041ae0:
    orr r3, r3, sl, lsr #16
.L02041ae4:
    mov r2, sl, lsl #16
.L02041ae8:
    mov r0, #67108864
.L02041aec:
    ldr lr, [pc, #2024]
.L02041af0:
    strd r2, [r1, #144]
.L02041af4:
    str r5, [r0, #664]
.L02041af8:
    ldrh r3, [lr, #128]
.L02041afc:
    tst r3, #32768
.L02041b00:
    bne .L02041af8
.L02041b04:
    mov r1, #67108864
.L02041b08:
    mov r2, #1
.L02041b0c:
    ldr r4, [pc, #1992]
.L02041b10:
    ldr r0, [r1, #672]
.L02041b14:
    strh r2, [lr, #128]
.L02041b18:
    ldrh r3, [r4, #128]
.L02041b1c:
    tst r3, #32768
.L02041b20:
    bne .L02041b18
.L02041b24:
    mov r3, r7, lsl #16
.L02041b28:
    orr r3, r3, r6, lsr #16
.L02041b2c:
    mov r2, r6, lsl #16
.L02041b30:
    strd r2, [r4, #144]
.L02041b34:
    ldr lr, [pc, #1952]
.L02041b38:
    mov r3, #67108864
.L02041b3c:
    str r5, [r3, #664]
.L02041b40:
    ldrh r3, [lr, #128]
.L02041b44:
    tst r3, #32768
.L02041b48:
    bne .L02041b40
.L02041b4c:
    mov r4, #67108864
.L02041b50:
    ldr r4, [r4, #672]
.L02041b54:
    mov sl, r0
.L02041b58:
    mov fp, sl, asr #31
.L02041b5c:
    mov r6, r4
.L02041b60:
    mov r7, r6, asr #31
.L02041b64:
    b .L020415b0
.L02041b68:
    mov r0, r4
.L02041b6c:
    ldr r1, [pc, #1892]
.L02041b70:
    bl __aeabi_fcmplt
.L02041b74:
    cmp r0, #0
.L02041b78:
    beq .L02041f4c
.L02041b7c:
    ldr r5, [sp, #84]
.L02041b80:
    ldr r1, [sp, #88]
.L02041b84:
    mov r4, r5
.L02041b88:
    mov r5, r4, asr #31
.L02041b8c:
    strd r4, [sp, #40]
.L02041b90:
    mov r0, r1
.L02041b94:
    mov r1, r0, asr #31
.L02041b98:
    strd r0, [sp, #48]
.L02041b9c:
    ldr ip, [sp, #44]
.L02041ba0:
    ldr lr, [sp, #52]
.L02041ba4:
    mul ip, r4, ip
.L02041ba8:
    ldr r5, [sp, #48]
.L02041bac:
    ldr r4, [sp, #40]
.L02041bb0:
    mul lr, r0, lr
.L02041bb4:
    umull r2, r3, r4, r4
.L02041bb8:
    umull r0, r1, r5, r5
.L02041bbc:
    mov ip, ip, lsl #1
.L02041bc0:
    mov lr, lr, lsl #1
.L02041bc4:
    ldr r8, [pc, #1808]
.L02041bc8:
    add r3, ip, r3
.L02041bcc:
    add r1, lr, r1
.L02041bd0:
    mov r7, #1
.L02041bd4:
    mov r6, r2, lsr #16
.L02041bd8:
    mov r4, r0, lsr #16
.L02041bdc:
    strh r7, [r8, #176]
.L02041be0:
    orr r6, r6, r3, lsl #16
.L02041be4:
    orr r4, r4, r1, lsl #16
.L02041be8:
    ldrh r3, [r8, #176]
.L02041bec:
    tst r3, #32768
.L02041bf0:
    bne .L02041be8
.L02041bf4:
    add r2, r6, r4
.L02041bf8:
    mov r3, r2, asr #31
.L02041bfc:
    mov r3, r3, lsl #16
.L02041c00:
    orr r3, r3, r2, lsr #16
.L02041c04:
    mov r2, r2, lsl #16
.L02041c08:
    strd r2, [r8, #184]
.L02041c0c:
    ldr r2, [pc, #1736]
.L02041c10:
    ldrh r3, [r2, #176]
.L02041c14:
    tst r3, #32768
.L02041c18:
    bne .L02041c10
.L02041c1c:
    mov ip, #67108864
.L02041c20:
    ldr r6, [ip, #692]
.L02041c24:
    cmp r6, #3
.L02041c28:
    ble .L0204155c
.L02041c2c:
    ldr r1, [pc, #1704]
.L02041c30:
    mov r4, #1
.L02041c34:
    strh r4, [r1, #128]
.L02041c38:
    ldrh r3, [r1, #128]
.L02041c3c:
    tst r3, #32768
.L02041c40:
    bne .L02041c38
.L02041c44:
    ldr r5, [sp, #44]
.L02041c48:
    ldr r7, [sp, #40]
.L02041c4c:
    mov r3, r5, lsl #16
.L02041c50:
    orr r3, r3, r7, lsr #16
.L02041c54:
    mov r2, r7, lsl #16
.L02041c58:
    mov lr, #67108864
.L02041c5c:
    ldr r4, [pc, #1656]
.L02041c60:
    strd r2, [r1, #144]
.L02041c64:
    str r6, [lr, #664]
.L02041c68:
    ldrh r3, [r4, #128]
.L02041c6c:
    tst r3, #32768
.L02041c70:
    bne .L02041c68
.L02041c74:
    mov r1, #67108864
.L02041c78:
    mov r2, #1
.L02041c7c:
    ldr r5, [pc, #1624]
.L02041c80:
    ldr r0, [r1, #672]
.L02041c84:
    strh r2, [r4, #128]
.L02041c88:
    ldrh r3, [r5, #128]
.L02041c8c:
    tst r3, #32768
.L02041c90:
    bne .L02041c88
.L02041c94:
    ldr r4, [sp, #52]
.L02041c98:
    ldr r7, [sp, #48]
.L02041c9c:
    mov r3, r4, lsl #16
.L02041ca0:
    orr r3, r3, r7, lsr #16
.L02041ca4:
    mov r2, r7, lsl #16
.L02041ca8:
    mov lr, #67108864
.L02041cac:
    ldr r4, [pc, #1576]
.L02041cb0:
    strd r2, [r5, #144]
.L02041cb4:
    str r6, [lr, #664]
.L02041cb8:
    ldrh r3, [r4, #128]
.L02041cbc:
    tst r3, #32768
.L02041cc0:
    bne .L02041cb8
.L02041cc4:
    mov r1, #67108864
.L02041cc8:
    ldr r1, [r1, #672]
.L02041ccc:
    mov r2, r0
.L02041cd0:
    mov r3, r2, asr #31
.L02041cd4:
    mov r4, r1
.L02041cd8:
    mov r5, r4, asr #31
.L02041cdc:
    strd r2, [sp, #40]
.L02041ce0:
    strd r4, [sp, #48]
.L02041ce4:
    b .L0204155c
.L02041ce8:
    mov r0, r4
.L02041cec:
    ldr r1, [pc, #1508]
.L02041cf0:
    bl __aeabi_fcmplt
.L02041cf4:
    cmp r0, #0
.L02041cf8:
    beq .L02041e60
.L02041cfc:
    mov r4, fp
.L02041d00:
    mov r5, r4, asr #31
.L02041d04:
    mov r2, sl
.L02041d08:
    mov r3, r2, asr #31
.L02041d0c:
    strd r4, [sp, #32]
.L02041d10:
    strd r2, [sp, #24]
.L02041d14:
    ldr ip, [sp, #28]
.L02041d18:
    ldr lr, [sp, #36]
.L02041d1c:
    ldr r5, [sp, #24]
.L02041d20:
    ldr r7, [sp, #32]
.L02041d24:
    mul ip, r2, ip
.L02041d28:
    mul lr, r4, lr
.L02041d2c:
    umull r2, r3, r5, r5
.L02041d30:
    umull r0, r1, r7, r7
.L02041d34:
    mov ip, ip, lsl #1
.L02041d38:
    mov lr, lr, lsl #1
.L02041d3c:
    ldr r8, [pc, #1432]
.L02041d40:
    add r3, ip, r3
.L02041d44:
    add r1, lr, r1
.L02041d48:
    mov ip, #1
.L02041d4c:
    mov r6, r2, lsr #16
.L02041d50:
    mov r4, r0, lsr #16
.L02041d54:
    strh ip, [r8, #176]
.L02041d58:
    orr r6, r6, r3, lsl #16
.L02041d5c:
    orr r4, r4, r1, lsl #16
.L02041d60:
    ldrh r3, [r8, #176]
.L02041d64:
    tst r3, #32768
.L02041d68:
    bne .L02041d60
.L02041d6c:
    add r2, r6, r4
.L02041d70:
    mov r3, r2, asr #31
.L02041d74:
    mov r3, r3, lsl #16
.L02041d78:
    orr r3, r3, r2, lsr #16
.L02041d7c:
    mov r2, r2, lsl #16
.L02041d80:
    strd r2, [r8, #184]
.L02041d84:
    ldr r2, [pc, #1360]
.L02041d88:
    ldrh r3, [r2, #176]
.L02041d8c:
    tst r3, #32768
.L02041d90:
    bne .L02041d88
.L02041d94:
    mov lr, #67108864
.L02041d98:
    ldr r6, [lr, #692]
.L02041d9c:
    cmp r6, #3
.L02041da0:
    ble .L020414a4
.L02041da4:
    ldr r1, [pc, #1328]
.L02041da8:
    mov r2, #1
.L02041dac:
    strh r2, [r1, #128]
.L02041db0:
    ldrh r3, [r1, #128]
.L02041db4:
    tst r3, #32768
.L02041db8:
    bne .L02041db0
.L02041dbc:
    ldr r4, [sp, #28]
.L02041dc0:
    ldr r5, [sp, #24]
.L02041dc4:
    mov r3, r4, lsl #16
.L02041dc8:
    orr r3, r3, r5, lsr #16
.L02041dcc:
    mov r2, r5, lsl #16
.L02041dd0:
    mov ip, #67108864
.L02041dd4:
    ldr lr, [pc, #1280]
.L02041dd8:
    strd r2, [r1, #144]
.L02041ddc:
    str r6, [ip, #664]
.L02041de0:
    ldrh r3, [lr, #128]
.L02041de4:
    tst r3, #32768
.L02041de8:
    bne .L02041de0
.L02041dec:
    mov r1, #67108864
.L02041df0:
    mov r2, #1
.L02041df4:
    ldr r4, [pc, #1248]
.L02041df8:
    ldr r0, [r1, #672]
.L02041dfc:
    strh r2, [lr, #128]
.L02041e00:
    ldrh r3, [r4, #128]
.L02041e04:
    tst r3, #32768
.L02041e08:
    bne .L02041e00
.L02041e0c:
    ldr r5, [sp, #36]
.L02041e10:
    ldr r7, [sp, #32]
.L02041e14:
    mov r3, r5, lsl #16
.L02041e18:
    orr r3, r3, r7, lsr #16
.L02041e1c:
    mov r2, r7, lsl #16
.L02041e20:
    mov r1, #67108864
.L02041e24:
    ldr lr, [pc, #1200]
.L02041e28:
    strd r2, [r4, #144]
.L02041e2c:
    str r6, [r1, #664]
.L02041e30:
    ldrh r3, [lr, #128]
.L02041e34:
    tst r3, #32768
.L02041e38:
    bne .L02041e30
.L02041e3c:
    mov r2, #67108864
.L02041e40:
    ldr r3, [r2, #672]
.L02041e44:
    mov r4, r0
.L02041e48:
    mov r5, r4, asr #31
.L02041e4c:
    mov r0, r3
.L02041e50:
    mov r1, r0, asr #31
.L02041e54:
    strd r4, [sp, #24]
.L02041e58:
    strd r0, [sp, #32]
.L02041e5c:
    b .L020414a4
.L02041e60:
    mov r5, sl, asr #8
.L02041e64:
    mov r6, fp, asr #8
.L02041e68:
    eor r3, r6, r6, asr #31
.L02041e6c:
    sub r3, r3, r6, asr #31
.L02041e70:
    eor r0, r5, r5, asr #31
.L02041e74:
    sub r0, r0, r5, asr #31
.L02041e78:
    add r0, r3, r0
.L02041e7c:
    bl __floatsisf
.L02041e80:
    mov r1, #931135488
.L02041e84:
    bl __aeabi_fmul
.L02041e88:
    mov r1, #0
.L02041e8c:
    mov r4, r0
.L02041e90:
    bl __aeabi_fcmpeq
.L02041e94:
    cmp r0, #0
.L02041e98:
    beq .L020423a0
.L02041e9c:
    mov r0, sl
.L02041ea0:
    mov r1, r0, asr #31
.L02041ea4:
    mov r2, fp
.L02041ea8:
    mov r3, r2, asr #31
.L02041eac:
    strd r0, [sp, #24]
.L02041eb0:
    strd r2, [sp, #32]
.L02041eb4:
    b .L020414a4
.L02041eb8:
    mov r0, r4
.L02041ebc:
    bl __aeabi_f2d
.L02041ec0:
    ldr r2, [pc, #1032]
.L02041ec4:
    ldr r3, [pc, #1032]
.L02041ec8:
    bl __aeabi_dcmplt
.L02041ecc:
    cmp r0, #0
.L02041ed0:
    beq .L02042430
.L02041ed4:
    ldr r4, [sp, #92]
.L02041ed8:
    ldr r5, [sp, #96]
.L02041edc:
    mov r3, r4, lsl #16
.L02041ee0:
    mov r2, r5, lsl #16
.L02041ee4:
    str r3, [sp, #264]
.L02041ee8:
    str r2, [sp, #268]
.L02041eec:
    add r0, sp, #392
.L02041ef0:
    add r1, sp, #264
.L02041ef4:
    ldr r7, [pc, #1008]
.L02041ef8:
    blx r7
.L02041efc:
    ldr r2, [sp, #392]
.L02041f00:
    mov sl, r4
.L02041f04:
    mov fp, sl, asr #31
.L02041f08:
    mov r3, r2, asr #31
.L02041f0c:
    mov r3, r3, lsl #8
.L02041f10:
    orr r3, r3, r2, lsr #24
.L02041f14:
    mov r2, r2, lsl #8
.L02041f18:
    mov r2, r2, lsr #16
.L02041f1c:
    orr r2, r2, r3, lsl #16
.L02041f20:
    mov r3, r2, asr #31
.L02041f24:
    mov r3, r3, lsl #8
.L02041f28:
    orr r3, r3, r2, lsr #24
.L02041f2c:
    mov r2, r2, lsl #8
.L02041f30:
    mov r2, r2, lsr #16
.L02041f34:
    ldr ip, [sp, #96]
.L02041f38:
    orr r2, r2, r3, lsl #16
.L02041f3c:
    mov r5, r2
.L02041f40:
    mov r6, ip
.L02041f44:
    mov r7, r6, asr #31
.L02041f48:
    b .L02041abc
.L02041f4c:
    ldr lr, [sp, #84]
.L02041f50:
    ldr r0, [sp, #88]
.L02041f54:
    mov r5, lr, asr #8
.L02041f58:
    mov r6, r0, asr #8
.L02041f5c:
    eor r3, r6, r6, asr #31
.L02041f60:
    sub r3, r3, r6, asr #31
.L02041f64:
    eor r0, r5, r5, asr #31
.L02041f68:
    sub r0, r0, r5, asr #31
.L02041f6c:
    add r0, r3, r0
.L02041f70:
    bl __floatsisf
.L02041f74:
    mov r1, #931135488
.L02041f78:
    bl __aeabi_fmul
.L02041f7c:
    mov r1, #0
.L02041f80:
    mov r4, r0
.L02041f84:
    bl __aeabi_fcmpeq
.L02041f88:
    cmp r0, #0
.L02041f8c:
    bne .L020418fc
.L02041f90:
    mov r0, r4
.L02041f94:
    bl __aeabi_f2d
.L02041f98:
    ldr r2, [pc, #816]
.L02041f9c:
    ldr r3, [pc, #816]
.L02041fa0:
    bl __aeabi_dcmplt
.L02041fa4:
    cmp r0, #0
.L02041fa8:
    bne .L020427d0
.L02041fac:
    mov r0, r4
.L02041fb0:
    ldr r1, [pc, #800]
.L02041fb4:
    bl __aeabi_fcmplt
.L02041fb8:
    cmp r0, #0
.L02041fbc:
    beq .L02042a74
.L02041fc0:
    mov r0, r6
.L02041fc4:
    mov r1, r0, asr #31
.L02041fc8:
    mov r2, r5
.L02041fcc:
    mov r3, r2, asr #31
.L02041fd0:
    mul lr, r0, r1
.L02041fd4:
    mul ip, r2, r3
.L02041fd8:
    umull r4, r5, r2, r2
.L02041fdc:
    umull r6, r7, r0, r0
.L02041fe0:
    mov ip, ip, lsl #1
.L02041fe4:
    mov lr, lr, lsl #1
.L02041fe8:
    ldr r1, [pc, #748]
.L02041fec:
    add r5, ip, r5
.L02041ff0:
    mov r8, r4, lsr #16
.L02041ff4:
    add r7, lr, r7
.L02041ff8:
    mov ip, #1
.L02041ffc:
    mov r4, r6, lsr #16
.L02042000:
    strh ip, [r1, #176]
.L02042004:
    orr r8, r8, r5, lsl #16
.L02042008:
    mov r9, r5, asr #16
.L0204200c:
    orr r4, r4, r7, lsl #16
.L02042010:
    ldrh r3, [r1, #176]
.L02042014:
    tst r3, #32768
.L02042018:
    bne .L02042010
.L0204201c:
    add r2, r8, r4
.L02042020:
    mov r3, r2, asr #31
.L02042024:
    mov r3, r3, lsl #16
.L02042028:
    orr r3, r3, r2, lsr #16
.L0204202c:
    mov r2, r2, lsl #16
.L02042030:
    strd r2, [r1, #184]
.L02042034:
    ldr r2, [pc, #672]
.L02042038:
    ldrh r3, [r2, #176]
.L0204203c:
    tst r3, #32768
.L02042040:
    bne .L02042038
.L02042044:
    mov lr, #67108864
.L02042048:
    ldr r1, [sp, #84]
.L0204204c:
    ldr r2, [lr, #692]
.L02042050:
    mov r0, r1
.L02042054:
    mov r1, r0, asr #31
.L02042058:
    strd r0, [sp, #40]
.L0204205c:
    b .L0204281c
.L02042060:
    ldr r1, [sp, #96]
.L02042064:
    ldr r0, [sp, #92]
.L02042068:
    mov r6, r1, asr #8
.L0204206c:
    mov r5, r0, asr #8
.L02042070:
    eor r3, r6, r6, asr #31
.L02042074:
    sub r3, r3, r6, asr #31
.L02042078:
    eor r0, r5, r5, asr #31
.L0204207c:
    sub r0, r0, r5, asr #31
.L02042080:
    add r0, r3, r0
.L02042084:
    bl __floatsisf
.L02042088:
    mov r1, #931135488
.L0204208c:
    bl __aeabi_fmul
.L02042090:
    mov r1, #0
.L02042094:
    mov r4, r0
.L02042098:
    bl __aeabi_fcmpeq
.L0204209c:
    cmp r0, #0
.L020420a0:
    beq .L020421f0
.L020420a4:
    ldr r2, [sp, #92]
.L020420a8:
    ldr r3, [sp, #96]
.L020420ac:
    mov sl, r2
.L020420b0:
    mov fp, sl, asr #31
.L020420b4:
    mov r6, r3
.L020420b8:
    mov r7, r6, asr #31
.L020420bc:
    b .L020415b0
.L020420c0:
    mov r0, r4
.L020420c4:
    bl __aeabi_f2d
.L020420c8:
    ldr r2, [pc, #512]
.L020420cc:
    ldr r3, [pc, #512]
.L020420d0:
    bl __aeabi_dcmplt
.L020420d4:
    cmp r0, #0
.L020420d8:
    beq .L02042508
.L020420dc:
    ldr r4, [sp, #84]
.L020420e0:
    ldr r5, [sp, #88]
.L020420e4:
    mov r3, r4, lsl #16
.L020420e8:
    mov r2, r5, lsl #16
.L020420ec:
    add r0, sp, #376
.L020420f0:
    add r1, sp, #232
.L020420f4:
    str r3, [sp, #232]
.L020420f8:
    str r2, [sp, #236]
.L020420fc:
    ldr r7, [pc, #488]
.L02042100:
    blx r7
.L02042104:
    ldr r1, [sp, #84]
.L02042108:
    ldr r2, [sp, #376]
.L0204210c:
    mov r0, r1
.L02042110:
    mov r1, r0, asr #31
.L02042114:
    mov r3, r2, asr #31
.L02042118:
    strd r0, [sp, #40]
.L0204211c:
    mov r3, r3, lsl #8
.L02042120:
    orr r3, r3, r2, lsr #24
.L02042124:
    mov r2, r2, lsl #8
.L02042128:
    mov r2, r2, lsr #16
.L0204212c:
    orr r2, r2, r3, lsl #16
.L02042130:
    mov r3, r2, asr #31
.L02042134:
    mov r3, r3, lsl #8
.L02042138:
    orr r3, r3, r2, lsr #24
.L0204213c:
    mov r2, r2, lsl #8
.L02042140:
    mov r2, r2, lsr #16
.L02042144:
    orr r2, r2, r3, lsl #16
.L02042148:
    ldr r3, [sp, #88]
.L0204214c:
    mov r6, r2
.L02042150:
    mov r2, r3
.L02042154:
    mov r3, r2, asr #31
.L02042158:
    strd r2, [sp, #48]
.L0204215c:
    b .L02041c24
.L02042160:
    mov r0, r4
.L02042164:
    bl __aeabi_f2d
.L02042168:
    ldr r2, [pc, #352]
.L0204216c:
    ldr r3, [pc, #352]
.L02042170:
    bl __aeabi_dcmplt
.L02042174:
    cmp r0, #0
.L02042178:
    beq .L020422f0
.L0204217c:
    mov r3, sl, lsl #16
.L02042180:
    mov r2, fp, lsl #16
.L02042184:
    add r0, sp, #360
.L02042188:
    add r1, sp, #200
.L0204218c:
    str r3, [sp, #200]
.L02042190:
    str r2, [sp, #204]
.L02042194:
    ldr r5, [pc, #336]
.L02042198:
    blx r5
.L0204219c:
    ldr r2, [sp, #360]
.L020421a0:
    mov r0, sl
.L020421a4:
    mov r1, r0, asr #31
.L020421a8:
    mov r3, r2, asr #31
.L020421ac:
    mov r3, r3, lsl #8
.L020421b0:
    orr r3, r3, r2, lsr #24
.L020421b4:
    strd r0, [sp, #24]
.L020421b8:
    mov r2, r2, lsl #8
.L020421bc:
    mov r2, r2, lsr #16
.L020421c0:
    orr r2, r2, r3, lsl #16
.L020421c4:
    mov r3, r2, asr #31
.L020421c8:
    mov r3, r3, lsl #8
.L020421cc:
    orr r3, r3, r2, lsr #24
.L020421d0:
    mov r2, r2, lsl #8
.L020421d4:
    mov r2, r2, lsr #16
.L020421d8:
    orr r2, r2, r3, lsl #16
.L020421dc:
    mov r6, r2
.L020421e0:
    mov r2, fp
.L020421e4:
    mov r3, r2, asr #31
.L020421e8:
    strd r2, [sp, #32]
.L020421ec:
    b .L02041d9c
.L020421f0:
    mov r0, r4
.L020421f4:
    bl __aeabi_f2d
.L020421f8:
    ldr r2, [pc, #208]
.L020421fc:
    ldr r3, [pc, #208]
.L02042200:
    bl __aeabi_dcmplt
.L02042204:
    cmp r0, #0
.L02042208:
    bne .L02042774
.L0204220c:
    mov r0, r4
.L02042210:
    ldr r1, [pc, #192]
.L02042214:
    bl __aeabi_fcmplt
.L02042218:
    cmp r0, #0
.L0204221c:
    beq .L02042b08
.L02042220:
    mov r0, r6
.L02042224:
    mov r1, r0, asr #31
.L02042228:
    mov r2, r5
.L0204222c:
    mov r3, r2, asr #31
.L02042230:
    mul lr, r0, r1
.L02042234:
    mul ip, r2, r3
.L02042238:
    umull r4, r5, r2, r2
.L0204223c:
    umull r6, r7, r0, r0
.L02042240:
    mov lr, lr, lsl #1
.L02042244:
    mov ip, ip, lsl #1
.L02042248:
    ldr r1, [pc, #140]
.L0204224c:
    add r5, ip, r5
.L02042250:
    add r7, lr, r7
.L02042254:
    mov r8, r4, lsr #16
.L02042258:
    mov lr, #1
.L0204225c:
    mov r4, r6, lsr #16
.L02042260:
    strh lr, [r1, #176]
.L02042264:
    orr r8, r8, r5, lsl #16
.L02042268:
    mov r9, r5, asr #16
.L0204226c:
    orr r4, r4, r7, lsl #16
.L02042270:
    ldrh r3, [r1, #176]
.L02042274:
    tst r3, #32768
.L02042278:
    bne .L02042270
.L0204227c:
    add r2, r8, r4
.L02042280:
    mov r3, r2, asr #31
.L02042284:
    mov r3, r3, lsl #16
.L02042288:
    orr r3, r3, r2, lsr #16
.L0204228c:
    mov r2, r2, lsl #16
.L02042290:
    strd r2, [r1, #184]
.L02042294:
    ldr r2, [pc, #64]
.L02042298:
    ldrh r3, [r2, #176]
.L0204229c:
    tst r3, #32768
.L020422a0:
    bne .L02042298
.L020422a4:
    mov r0, #67108864
.L020422a8:
    ldr r2, [r0, #692]
.L020422ac:
    ldr r1, [sp, #92]
.L020422b0:
    mov r3, r2, asr #31
.L020422b4:
    mov r3, r3, lsl #24
.L020422b8:
    orr r3, r3, r2, lsr #8
.L020422bc:
    mov sl, r1
.L020422c0:
    mov fp, sl, asr #31
.L020422c4:
    mov r2, r2, lsl #24
.L020422c8:
    b .L020424ec
.L020422cc:
    .long 0xfff60000  /* literal data */
.L020422d0:
    .long 0x9999999a  /* literal data */
.L020422d4:
    .long 0x3fb99999  /* literal data */
.L020422d8:
    .long 0x43340000  /* literal data */
.L020422dc:
    .long 0x04000200  /* literal data */
.L020422e0:
    .long .rodata.str1.4 + 0  /* literal data */
.L020422e4:
    .long 0x000002e7  /* literal data */
.L020422e8:
    .long .rodata.str1.4 + 136  /* literal data */
.L020422ec:
    .long _ZNK6b2Vec26LengthEv  /* literal data */
.L020422f0:
    mov r0, r4
.L020422f4:
    ldr r1, [pc, #-36]
.L020422f8:
    bl __aeabi_fcmplt
.L020422fc:
    cmp r0, #0
.L02042300:
    beq .L02042718
.L02042304:
    mov r2, r5
.L02042308:
    mov r3, r2, asr #31
.L0204230c:
    mov r0, r6
.L02042310:
    mov r1, r0, asr #31
.L02042314:
    mul ip, r2, r3
.L02042318:
    mul lr, r0, r1
.L0204231c:
    umull r4, r5, r2, r2
.L02042320:
    umull r6, r7, r0, r0
.L02042324:
    mov ip, ip, lsl #1
.L02042328:
    mov lr, lr, lsl #1
.L0204232c:
    ldr r1, [pc, #-88]
.L02042330:
    add r5, ip, r5
.L02042334:
    mov r8, r4, lsr #16
.L02042338:
    add r7, lr, r7
.L0204233c:
    mov r3, #1
.L02042340:
    mov r4, r6, lsr #16
.L02042344:
    strh r3, [r1, #176]
.L02042348:
    orr r8, r8, r5, lsl #16
.L0204234c:
    mov r9, r5, asr #16
.L02042350:
    orr r4, r4, r7, lsl #16
.L02042354:
    ldrh r3, [r1, #176]
.L02042358:
    tst r3, #32768
.L0204235c:
    bne .L02042354
.L02042360:
    add r2, r8, r4
.L02042364:
    mov r3, r2, asr #31
.L02042368:
    mov r3, r3, lsl #16
.L0204236c:
    orr r3, r3, r2, lsr #16
.L02042370:
    mov r2, r2, lsl #16
.L02042374:
    strd r2, [r1, #184]
.L02042378:
    ldr r2, [pc, #-164]
.L0204237c:
    ldrh r3, [r2, #176]
.L02042380:
    tst r3, #32768
.L02042384:
    bne .L0204237c
.L02042388:
    mov r4, #67108864
.L0204238c:
    ldr r2, [r4, #692]
.L02042390:
    mov r0, sl
.L02042394:
    mov r1, r0, asr #31
.L02042398:
    strd r0, [sp, #24]
.L0204239c:
    b .L020421c4
.L020423a0:
    mov r0, r4
.L020423a4:
    bl __aeabi_f2d
.L020423a8:
    ldr r2, [pc, #-224]
.L020423ac:
    ldr r3, [pc, #-224]
.L020423b0:
    bl __aeabi_dcmplt
.L020423b4:
    cmp r0, #0
.L020423b8:
    beq .L02042668
.L020423bc:
    mov r3, r5, lsl #8
.L020423c0:
    mov r2, r6, lsl #8
.L020423c4:
    str r3, [sp, #216]
.L020423c8:
    str r2, [sp, #220]
.L020423cc:
    ldr r3, [pc, #-232]
.L020423d0:
    add r0, sp, #368
.L020423d4:
    add r1, sp, #216
.L020423d8:
    blx r3
.L020423dc:
    ldr r2, [sp, #368]
.L020423e0:
    mov r4, sl
.L020423e4:
    mov r5, r4, asr #31
.L020423e8:
    mov r3, r2, asr #31
.L020423ec:
    strd r4, [sp, #24]
.L020423f0:
    mov r3, r3, lsl #8
.L020423f4:
    orr r3, r3, r2, lsr #24
.L020423f8:
    mov r2, r2, lsl #8
.L020423fc:
    mov r2, r2, lsr #16
.L02042400:
    orr r2, r2, r3, lsl #16
.L02042404:
    mov r3, r2, asr #31
.L02042408:
    mov r3, r3, lsl #24
.L0204240c:
    orr r3, r3, r2, lsr #8
.L02042410:
    mov r2, r2, lsl #24
.L02042414:
    mov r2, r2, lsr #16
.L02042418:
    orr r2, r2, r3, lsl #16
.L0204241c:
    mov r0, fp
.L02042420:
    mov r1, r0, asr #31
.L02042424:
    mov r6, r2
.L02042428:
    strd r0, [sp, #32]
.L0204242c:
    b .L02041d9c
.L02042430:
    mov r0, r4
.L02042434:
    ldr r1, [pc, #-356]
.L02042438:
    bl __aeabi_fcmplt
.L0204243c:
    cmp r0, #0
.L02042440:
    beq .L02042624
.L02042444:
    mov r0, r6
.L02042448:
    mov r1, r0, asr #31
.L0204244c:
    mov r2, r5
.L02042450:
    mov r3, r2, asr #31
.L02042454:
    mul lr, r0, r1
.L02042458:
    mul ip, r2, r3
.L0204245c:
    umull r4, r5, r2, r2
.L02042460:
    umull r6, r7, r0, r0
.L02042464:
    mov lr, lr, lsl #1
.L02042468:
    mov ip, ip, lsl #1
.L0204246c:
    ldr r1, [pc, #-408]
.L02042470:
    add r5, ip, r5
.L02042474:
    add r7, lr, r7
.L02042478:
    mov r8, r4, lsr #16
.L0204247c:
    mov lr, #1
.L02042480:
    mov r4, r6, lsr #16
.L02042484:
    strh lr, [r1, #176]
.L02042488:
    orr r8, r8, r5, lsl #16
.L0204248c:
    mov r9, r5, asr #16
.L02042490:
    orr r4, r4, r7, lsl #16
.L02042494:
    ldrh r3, [r1, #176]
.L02042498:
    tst r3, #32768
.L0204249c:
    bne .L02042494
.L020424a0:
    add r2, r8, r4
.L020424a4:
    mov r3, r2, asr #31
.L020424a8:
    mov r3, r3, lsl #16
.L020424ac:
    orr r3, r3, r2, lsr #16
.L020424b0:
    mov r2, r2, lsl #16
.L020424b4:
    strd r2, [r1, #184]
.L020424b8:
    ldr r2, [pc, #-484]
.L020424bc:
    ldrh r3, [r2, #176]
.L020424c0:
    tst r3, #32768
.L020424c4:
    bne .L020424bc
.L020424c8:
    mov r0, #67108864
.L020424cc:
    ldr r2, [r0, #692]
.L020424d0:
    ldr r1, [sp, #92]
.L020424d4:
    mov r3, r2, asr #31
.L020424d8:
    mov r3, r3, lsl #8
.L020424dc:
    orr r3, r3, r2, lsr #24
.L020424e0:
    mov sl, r1
.L020424e4:
    mov fp, sl, asr #31
.L020424e8:
    mov r2, r2, lsl #8
.L020424ec:
    mov r2, r2, lsr #16
.L020424f0:
    orr r2, r2, r3, lsl #16
.L020424f4:
    mov r5, r2
.L020424f8:
    ldr r2, [sp, #96]
.L020424fc:
    mov r6, r2
.L02042500:
    mov r7, r6, asr #31
.L02042504:
    b .L02041abc
.L02042508:
    mov r0, r4
.L0204250c:
    ldr r1, [pc, #-572]
.L02042510:
    bl __aeabi_fcmplt
.L02042514:
    cmp r0, #0
.L02042518:
    beq .L020425dc
.L0204251c:
    mov r0, r6
.L02042520:
    mov r1, r0, asr #31
.L02042524:
    mov r2, r5
.L02042528:
    mov r3, r2, asr #31
.L0204252c:
    mul lr, r0, r1
.L02042530:
    mul ip, r2, r3
.L02042534:
    umull r4, r5, r2, r2
.L02042538:
    umull r6, r7, r0, r0
.L0204253c:
    mov ip, ip, lsl #1
.L02042540:
    mov lr, lr, lsl #1
.L02042544:
    ldr r1, [pc, #-624]
.L02042548:
    add r5, ip, r5
.L0204254c:
    mov r8, r4, lsr #16
.L02042550:
    add r7, lr, r7
.L02042554:
    mov ip, #1
.L02042558:
    mov r4, r6, lsr #16
.L0204255c:
    strh ip, [r1, #176]
.L02042560:
    orr r8, r8, r5, lsl #16
.L02042564:
    mov r9, r5, asr #16
.L02042568:
    orr r4, r4, r7, lsl #16
.L0204256c:
    ldrh r3, [r1, #176]
.L02042570:
    tst r3, #32768
.L02042574:
    bne .L0204256c
.L02042578:
    add r2, r8, r4
.L0204257c:
    mov r3, r2, asr #31
.L02042580:
    mov r3, r3, lsl #16
.L02042584:
    orr r3, r3, r2, lsr #16
.L02042588:
    mov r2, r2, lsl #16
.L0204258c:
    strd r2, [r1, #184]
.L02042590:
    ldr r2, [pc, #-700]
.L02042594:
    ldrh r3, [r2, #176]
.L02042598:
    tst r3, #32768
.L0204259c:
    bne .L02042594
.L020425a0:
    mov lr, #67108864
.L020425a4:
    ldr r2, [lr, #692]
.L020425a8:
    ldr r1, [sp, #84]
.L020425ac:
    mov r3, r2, asr #31
.L020425b0:
    mov r3, r3, lsl #8
.L020425b4:
    mov r0, r1
.L020425b8:
    mov r1, r0, asr #31
.L020425bc:
    orr r3, r3, r2, lsr #24
.L020425c0:
    mov r2, r2, lsl #8
.L020425c4:
    strd r0, [sp, #40]
.L020425c8:
    b .L02042140
.L020425cc:
    mov r0, sl
.L020425d0:
    bl _Znaj
.L020425d4:
    mov r6, r0
.L020425d8:
    b .L020417f4
.L020425dc:
    mov r3, r5, asr #8
.L020425e0:
    mov r2, r6, asr #8
.L020425e4:
    add r0, sp, #380
.L020425e8:
    add r1, sp, #240
.L020425ec:
    str r3, [sp, #240]
.L020425f0:
    str r2, [sp, #244]
.L020425f4:
    ldr r4, [pc, #-784]
.L020425f8:
    blx r4
.L020425fc:
    ldr r2, [sp, #380]
.L02042600:
    ldr r1, [sp, #84]
.L02042604:
    mov r3, r2, asr #31
.L02042608:
    mov r3, r3, lsl #24
.L0204260c:
    mov r0, r1
.L02042610:
    mov r1, r0, asr #31
.L02042614:
    orr r3, r3, r2, lsr #8
.L02042618:
    mov r2, r2, lsl #24
.L0204261c:
    strd r0, [sp, #40]
.L02042620:
    b .L02042128
.L02042624:
    mov r2, r6, asr #8
.L02042628:
    mov r3, r5, asr #8
.L0204262c:
    str r3, [sp, #272]
.L02042630:
    str r2, [sp, #276]
.L02042634:
    ldr r3, [pc, #-848]
.L02042638:
    add r0, sp, #396
.L0204263c:
    add r1, sp, #272
.L02042640:
    blx r3
.L02042644:
    ldr r2, [sp, #396]
.L02042648:
    ldr r4, [sp, #92]
.L0204264c:
    mov r3, r2, asr #31
.L02042650:
    mov r3, r3, lsl #24
.L02042654:
    orr r3, r3, r2, lsr #8
.L02042658:
    mov sl, r4
.L0204265c:
    mov fp, sl, asr #31
.L02042660:
    mov r2, r2, lsl #24
.L02042664:
    b .L02041f18
.L02042668:
    mov r0, r4
.L0204266c:
    ldr r1, [pc, #-924]
.L02042670:
    bl __aeabi_fcmplt
.L02042674:
    cmp r0, #0
.L02042678:
    beq .L02042ac4
.L0204267c:
    mov r2, r5
.L02042680:
    mov r3, r2, asr #31
.L02042684:
    mov r0, r6
.L02042688:
    mov r1, r0, asr #31
.L0204268c:
    mul ip, r2, r3
.L02042690:
    mul lr, r0, r1
.L02042694:
    umull r4, r5, r2, r2
.L02042698:
    umull r6, r7, r0, r0
.L0204269c:
    mov ip, ip, lsl #1
.L020426a0:
    mov lr, lr, lsl #1
.L020426a4:
    ldr r1, [pc, #-976]
.L020426a8:
    add r5, ip, r5
.L020426ac:
    mov r8, r4, lsr #16
.L020426b0:
    add r7, lr, r7
.L020426b4:
    mov r2, #1
.L020426b8:
    mov r4, r6, lsr #16
.L020426bc:
    strh r2, [r1, #176]
.L020426c0:
    orr r8, r8, r5, lsl #16
.L020426c4:
    mov r9, r5, asr #16
.L020426c8:
    orr r4, r4, r7, lsl #16
.L020426cc:
    ldrh r3, [r1, #176]
.L020426d0:
    tst r3, #32768
.L020426d4:
    bne .L020426cc
.L020426d8:
    add r2, r8, r4
.L020426dc:
    mov r3, r2, asr #31
.L020426e0:
    mov r3, r3, lsl #16
.L020426e4:
    orr r3, r3, r2, lsr #16
.L020426e8:
    mov r2, r2, lsl #16
.L020426ec:
    strd r2, [r1, #184]
.L020426f0:
    ldr r2, [pc, #-1052]
.L020426f4:
    ldrh r3, [r2, #176]
.L020426f8:
    tst r3, #32768
.L020426fc:
    bne .L020426f4
.L02042700:
    mov r3, #67108864
.L02042704:
    ldr r2, [r3, #692]
.L02042708:
    mov r4, sl
.L0204270c:
    mov r5, r4, asr #31
.L02042710:
    strd r4, [sp, #24]
.L02042714:
    b .L02042404
.L02042718:
    mov r3, r5, asr #8
.L0204271c:
    mov r2, r6, asr #8
.L02042720:
    str r3, [sp, #208]
.L02042724:
    str r2, [sp, #212]
.L02042728:
    ldr r3, [pc, #-1092]
.L0204272c:
    add r0, sp, #364
.L02042730:
    add r1, sp, #208
.L02042734:
    blx r3
.L02042738:
    ldr r2, [sp, #364]
.L0204273c:
    mov r4, sl
.L02042740:
    mov r5, r4, asr #31
.L02042744:
    mov r3, r2, asr #31
.L02042748:
    mov r3, r3, lsl #24
.L0204274c:
    orr r3, r3, r2, lsr #8
.L02042750:
    mov r2, r2, lsl #24
.L02042754:
    mov r2, r2, lsr #16
.L02042758:
    orr r2, r2, r3, lsl #16
.L0204275c:
    mov r3, r2, asr #31
.L02042760:
    mov r3, r3, lsl #8
.L02042764:
    orr r3, r3, r2, lsr #24
.L02042768:
    mov r2, r2, lsl #8
.L0204276c:
    strd r4, [sp, #24]
.L02042770:
    b .L02042414
.L02042774:
    mov r3, r5, lsl #8
.L02042778:
    mov r2, r6, lsl #8
.L0204277c:
    str r3, [sp, #280]
.L02042780:
    str r2, [sp, #284]
.L02042784:
    add r0, sp, #400
.L02042788:
    add r1, sp, #280
.L0204278c:
    ldr r4, [pc, #-1192]
.L02042790:
    blx r4
.L02042794:
    ldr r2, [sp, #400]
.L02042798:
    ldr r5, [sp, #92]
.L0204279c:
    mov r3, r2, asr #31
.L020427a0:
    mov r3, r3, lsl #8
.L020427a4:
    orr r3, r3, r2, lsr #24
.L020427a8:
    mov sl, r5
.L020427ac:
    mov fp, sl, asr #31
.L020427b0:
    mov r2, r2, lsl #8
.L020427b4:
    mov r2, r2, lsr #16
.L020427b8:
    orr r2, r2, r3, lsl #16
.L020427bc:
    mov r3, r2, asr #31
.L020427c0:
    mov r3, r3, lsl #24
.L020427c4:
    orr r3, r3, r2, lsr #8
.L020427c8:
    mov r2, r2, lsl #24
.L020427cc:
    b .L02041f30
.L020427d0:
    mov r3, r5, lsl #8
.L020427d4:
    mov r2, r6, lsl #8
.L020427d8:
    add r0, sp, #384
.L020427dc:
    add r1, sp, #248
.L020427e0:
    str r3, [sp, #248]
.L020427e4:
    str r2, [sp, #252]
.L020427e8:
    ldr r7, [pc, #-1284]
.L020427ec:
    blx r7
.L020427f0:
    ldr r1, [sp, #84]
.L020427f4:
    ldr r2, [sp, #384]
.L020427f8:
    mov r0, r1
.L020427fc:
    mov r1, r0, asr #31
.L02042800:
    mov r3, r2, asr #31
.L02042804:
    strd r0, [sp, #40]
.L02042808:
    mov r3, r3, lsl #8
.L0204280c:
    orr r3, r3, r2, lsr #24
.L02042810:
    mov r2, r2, lsl #8
.L02042814:
    mov r2, r2, lsr #16
.L02042818:
    orr r2, r2, r3, lsl #16
.L0204281c:
    mov r3, r2, asr #31
.L02042820:
    mov r3, r3, lsl #24
.L02042824:
    orr r3, r3, r2, lsr #8
.L02042828:
    mov r2, r2, lsl #24
.L0204282c:
    b .L02042140
.L02042830:
    cmp r9, #0
.L02042834:
    ble .L02042864
.L02042838:
    ldr r5, [sp, #60]
.L0204283c:
    mov r6, r3
.L02042840:
    mov r4, r7
.L02042844:
    mov r0, r5
.L02042848:
    mov r1, r4
.L0204284c:
    add r6, r6, #1
.L02042850:
    bl _ZN10b2Triangle3SetERKS_
.L02042854:
    cmp r9, r6
.L02042858:
    add r5, r5, #8
.L0204285c:
    add r4, r4, #8
.L02042860:
    bne .L02042844
.L02042864:
    cmp sl, #0
.L02042868:
    ble .L020428a0
.L0204286c:
    ldr r0, [sp, #60]
.L02042870:
    mov r3, r9, lsl #3
.L02042874:
    add r5, r0, r3
.L02042878:
    mov r4, r8
.L0204287c:
    mov r6, #0
.L02042880:
    mov r0, r5
.L02042884:
    mov r1, r4
.L02042888:
    add r6, r6, #1
.L0204288c:
    bl _ZN10b2Triangle3SetERKS_
.L02042890:
    cmp sl, r6
.L02042894:
    add r5, r5, #8
.L02042898:
    add r4, r4, #8
.L0204289c:
    bne .L02042880
.L020428a0:
    cmp r7, #0
.L020428a4:
    beq .L020428d8
.L020428a8:
    ldr r3, [r7, #-4]
.L020428ac:
    mov r3, r3, lsl #3
.L020428b0:
    add r4, r7, r3
.L020428b4:
    cmp r7, r4
.L020428b8:
    beq .L020428d0
.L020428bc:
    sub r4, r4, #8
.L020428c0:
    mov r0, r4
.L020428c4:
    bl _ZN10b2TriangleD1Ev
.L020428c8:
    cmp r7, r4
.L020428cc:
    bne .L020428bc
.L020428d0:
    sub r0, r7, #8
.L020428d4:
    bl _ZdaPv
.L020428d8:
    cmp r8, #0
.L020428dc:
    beq .L02042910
.L020428e0:
    ldr r3, [r8, #-4]
.L020428e4:
    mov r3, r3, lsl #3
.L020428e8:
    add r4, r8, r3
.L020428ec:
    cmp r8, r4
.L020428f0:
    beq .L02042908
.L020428f4:
    sub r4, r4, #8
.L020428f8:
    mov r0, r4
.L020428fc:
    bl _ZN10b2TriangleD1Ev
.L02042900:
    cmp r8, r4
.L02042904:
    bne .L020428f4
.L02042908:
    sub r0, r8, #8
.L0204290c:
    bl _ZdaPv
.L02042910:
    add r8, r9, sl
.L02042914:
    b .L0204126c
.L02042918:
    mvn r8, #0
.L0204291c:
    b .L0204126c
.L02042920:
    ldr r8, [sp, #104]
.L02042924:
    mov r4, r5, lsl #3
.L02042928:
    str r7, [sp, #72]
.L0204292c:
    str r6, [sp, #116]
.L02042930:
    ldr r5, [sp, #72]
.L02042934:
    ldr ip, [sp, #116]
.L02042938:
    ldr r3, [r5, #4]
.L0204293c:
    mov lr, ip
.L02042940:
    str r3, [sp, #336]
.L02042944:
    ldr r2, [ip, #4]
.L02042948:
    add r7, sp, #192
.L0204294c:
    str r2, [sp, #340]
.L02042950:
    ldr r3, [r5, #8]
.L02042954:
    add r1, sp, #336
.L02042958:
    str r3, [sp, #344]
.L0204295c:
    ldr ip, [ip, #8]
.L02042960:
    add r2, sp, #340
.L02042964:
    str ip, [sp, #348]
.L02042968:
    ldr r0, [r5]
.L0204296c:
    add ip, sp, #348
.L02042970:
    str r0, [sp, #352]
.L02042974:
    ldr lr, [lr]
.L02042978:
    add r3, sp, #344
.L0204297c:
    str lr, [sp, #356]
.L02042980:
    str ip, [sp]
.L02042984:
    add lr, sp, #352
.L02042988:
    add ip, sp, #356
.L0204298c:
    mov r0, r7
.L02042990:
    str lr, [sp, #4]
.L02042994:
    str ip, [sp, #8]
.L02042998:
    bl _ZN10b2TriangleC1E5FixedS0_S0_S0_S0_S0_
.L0204299c:
    ldr r1, [sp, #68]
.L020429a0:
    add r0, r1, r4
.L020429a4:
    mov r1, r7
.L020429a8:
    bl _ZN10b2Triangle3SetERKS_
.L020429ac:
    cmp r5, #0
.L020429b0:
    beq .L020429bc
.L020429b4:
    ldr r0, [sp, #72]
.L020429b8:
    bl _ZdaPv
.L020429bc:
    ldr r2, [sp, #116]
.L020429c0:
    cmp r2, #0
.L020429c4:
    beq .L020429d0
.L020429c8:
    mov r0, r2
.L020429cc:
    bl _ZdaPv
.L020429d0:
    ldr r3, [sp, #20]
.L020429d4:
    cmp r3, r8
.L020429d8:
    beq .L020429ec
.L020429dc:
    ldr r0, [pc, #-1796]
.L020429e0:
    ldr r1, [pc, #-1796]
.L020429e4:
    ldr r2, [pc, #-1796]
.L020429e8:
    bl __assert
.L020429ec:
    cmp r8, #0
.L020429f0:
    ble .L02042a20
.L020429f4:
    ldr r5, [sp, #60]
.L020429f8:
    ldr r4, [sp, #68]
.L020429fc:
    mov r6, #0
.L02042a00:
    mov r0, r5
.L02042a04:
    mov r1, r4
.L02042a08:
    add r6, r6, #1
.L02042a0c:
    bl _ZN10b2Triangle3SetERKS_
.L02042a10:
    cmp r6, r8
.L02042a14:
    add r5, r5, #8
.L02042a18:
    add r4, r4, #8
.L02042a1c:
    bne .L02042a00
.L02042a20:
    ldr r4, [sp, #68]
.L02042a24:
    cmp r4, #0
.L02042a28:
    beq .L02042a68
.L02042a2c:
    ldr r3, [r4, #-4]
.L02042a30:
    ldr r5, [sp, #68]
.L02042a34:
    mov r3, r3, lsl #3
.L02042a38:
    add r4, r4, r3
.L02042a3c:
    cmp r5, r4
.L02042a40:
    beq .L02042a5c
.L02042a44:
    sub r4, r4, #8
.L02042a48:
    mov r0, r4
.L02042a4c:
    bl _ZN10b2TriangleD1Ev
.L02042a50:
    ldr ip, [sp, #68]
.L02042a54:
    cmp ip, r4
.L02042a58:
    bne .L02042a44
.L02042a5c:
    ldr lr, [sp, #68]
.L02042a60:
    sub r0, lr, #8
.L02042a64:
    bl _ZdaPv
.L02042a68:
    mov r0, r7
.L02042a6c:
    bl _ZN10b2TriangleD1Ev
.L02042a70:
    b .L0204126c
.L02042a74:
    ldr r4, [sp, #84]
.L02042a78:
    ldr r5, [sp, #88]
.L02042a7c:
    mov r3, r4, asr #16
.L02042a80:
    mov r2, r5, asr #16
.L02042a84:
    add r0, sp, #388
.L02042a88:
    add r1, sp, #256
.L02042a8c:
    str r3, [sp, #256]
.L02042a90:
    str r2, [sp, #260]
.L02042a94:
    ldr r7, [pc, #-1968]
.L02042a98:
    blx r7
.L02042a9c:
    ldr r2, [sp, #388]
.L02042aa0:
    ldr r1, [sp, #84]
.L02042aa4:
    mov r3, r2, asr #31
.L02042aa8:
    mov r3, r3, lsl #24
.L02042aac:
    mov r0, r1
.L02042ab0:
    mov r1, r0, asr #31
.L02042ab4:
    orr r3, r3, r2, lsr #8
.L02042ab8:
    mov r2, r2, lsl #24
.L02042abc:
    strd r0, [sp, #40]
.L02042ac0:
    b .L02042814
.L02042ac4:
    mov r3, sl, asr #16
.L02042ac8:
    mov r2, fp, asr #16
.L02042acc:
    str r3, [sp, #224]
.L02042ad0:
    str r2, [sp, #228]
.L02042ad4:
    add r0, sp, #372
.L02042ad8:
    ldr r2, [pc, #-2036]
.L02042adc:
    add r1, sp, #224
.L02042ae0:
    blx r2
.L02042ae4:
    ldr r2, [sp, #372]
.L02042ae8:
    mov r4, sl
.L02042aec:
    mov r5, r4, asr #31
.L02042af0:
    mov r3, r2, asr #31
.L02042af4:
    mov r3, r3, lsl #24
.L02042af8:
    orr r3, r3, r2, lsr #8
.L02042afc:
    mov r2, r2, lsl #24
.L02042b00:
    strd r4, [sp, #24]
.L02042b04:
    b .L020423fc
.L02042b08:
    ldr r4, [sp, #92]
.L02042b0c:
    ldr r5, [sp, #96]
.L02042b10:
    mov r3, r4, asr #16
.L02042b14:
    mov r2, r5, asr #16
.L02042b18:
    str r3, [sp, #288]
.L02042b1c:
    str r2, [sp, #292]
.L02042b20:
    add r0, sp, #404
.L02042b24:
    add r1, sp, #288
.L02042b28:
    ldr r7, [pc, #-2116]
.L02042b2c:
    blx r7
.L02042b30:
    ldr r2, [sp, #404]
.L02042b34:
    mov sl, r4
.L02042b38:
    mov fp, sl, asr #31
.L02042b3c:
    mov r3, r2, asr #31
.L02042b40:
    mov r3, r3, lsl #24
.L02042b44:
    orr r3, r3, r2, lsr #8
.L02042b48:
    mov r2, r2, lsl #24
.L02042b4c:
    b .L020427b4
.L02042b50:
    mov r0, r5
.L02042b54:
    bl _Znaj
.L02042b58:
    str r0, [sp, #116]
.L02042b5c:
    b .L0204133c
.size _Z18TriangulatePolygonP5FixedS0_lP10b2Triangle, .-_Z18TriangulatePolygonP5FixedS0_lP10b2Triangle

.section .text.polygon.residual.42,"ax",%progbits
.balign 4
.arm
.global _ZN9b2Polygon8IsUsableEb
.type _ZN9b2Polygon8IsUsableEb, %function
_ZN9b2Polygon8IsUsableEb:
.L02042c90:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L02042c94:
    ldr r3, [r0, #8]
.L02042c98:
    sub sp, sp, #228
.L02042c9c:
    sub r3, r3, #3
.L02042ca0:
    cmp r3, #5
.L02042ca4:
    str r0, [sp, #96]
.L02042ca8:
    movhi r0, #0
.L02042cac:
    movls r2, #1
.L02042cb0:
    str r1, [sp, #92]
.L02042cb4:
    strhi r0, [sp, #104]
.L02042cb8:
    mvnls r1, #0
.L02042cbc:
    strhi r0, [sp, #140]
.L02042cc0:
    ldr r0, [sp, #96]
.L02042cc4:
    strls r2, [sp, #140]
.L02042cc8:
    strls r1, [sp, #104]
.L02042ccc:
    bl _ZN9b2Polygon8IsConvexEv
.L02042cd0:
    cmp r0, #0
.L02042cd4:
    moveq r3, #1
.L02042cd8:
    streq r0, [sp, #140]
.L02042cdc:
    ldr r0, [sp, #96]
.L02042ce0:
    streq r3, [sp, #104]
.L02042ce4:
    bl _ZN9b2Polygon8IsSimpleEv
.L02042ce8:
    cmp r0, #0
.L02042cec:
    moveq r4, #2
.L02042cf0:
    streq r0, [sp, #140]
.L02042cf4:
    ldr r1, [sp, #96]
.L02042cf8:
    add r0, sp, #188
.L02042cfc:
    streq r4, [sp, #104]
.L02042d00:
    bl _ZN9b2Polygon7GetAreaEv
.L02042d04:
    ldr r9, [sp, #96]
.L02042d08:
    ldr r3, [sp, #188]
.L02042d0c:
    ldr r4, [r9, #8]
.L02042d10:
    cmp r3, #3
.L02042d14:
    movle r5, #3
.L02042d18:
    movle r8, #0
.L02042d1c:
    mov r0, r4, lsl #3
.L02042d20:
    strle r5, [sp, #104]
.L02042d24:
    strle r8, [sp, #140]
.L02042d28:
    bl _Znaj
.L02042d2c:
    cmp r4, #0
.L02042d30:
    str r0, [sp, #108]
.L02042d34:
    beq .L02042d64
.L02042d38:
    mov r1, #0
.L02042d3c:
    mov r2, r1
.L02042d40:
    mov r0, r1
.L02042d44:
    ldr sl, [sp, #108]
.L02042d48:
    add r1, r1, #1
.L02042d4c:
    add r3, r2, sl
.L02042d50:
    cmp r4, r1
.L02042d54:
    str r0, [r2, sl]
.L02042d58:
    str r0, [r3, #4]
.L02042d5c:
    add r2, r2, #8
.L02042d60:
    bne .L02042d44
.L02042d64:
    ldr fp, [sp, #96]
.L02042d68:
    ldr r4, [fp, #8]
.L02042d6c:
    mov r0, r4, lsl #3
.L02042d70:
    bl _Znaj
.L02042d74:
    cmp r4, #0
.L02042d78:
    str r0, [sp, #112]
.L02042d7c:
    beq .L02042dac
.L02042d80:
    mov r1, #0
.L02042d84:
    mov r2, r1
.L02042d88:
    mov r0, r1
.L02042d8c:
    ldr ip, [sp, #112]
.L02042d90:
    add r1, r1, #1
.L02042d94:
    add r3, r2, ip
.L02042d98:
    cmp r4, r1
.L02042d9c:
    str r0, [r2, ip]
.L02042da0:
    str r0, [r3, #4]
.L02042da4:
    add r2, r2, #8
.L02042da8:
    bne .L02042d8c
.L02042dac:
    ldr ip, [sp, #96]
.L02042db0:
    mov r0, #0
.L02042db4:
    ldr ip, [ip, #8]
.L02042db8:
    str r0, [sp, #136]
.L02042dbc:
    cmp r0, ip
.L02042dc0:
    str ip, [sp, #144]
.L02042dc4:
    bge .L02043050
.L02042dc8:
    ldr lr, [sp, #96]
.L02042dcc:
    ldr r5, [sp, #112]
.L02042dd0:
    ldmia lr, {r4, lr}
.L02042dd4:
    ldr r8, [sp, #136]
.L02042dd8:
    ldr r3, [sp, #144]
.L02042ddc:
    ldr r1, [r4, r0, lsl #2]
.L02042de0:
    ldr r2, [lr, r0, lsl #2]
.L02042de4:
    add r9, r0, #1
.L02042de8:
    cmp r9, r3
.L02042dec:
    add r3, r5, r8
.L02042df0:
    str r2, [r3, #4]
.L02042df4:
    str r1, [r8, r5]
.L02042df8:
    movge r3, #0
.L02042dfc:
    movlt r3, r9, lsl #2
.L02042e00:
    mov r0, r0, lsl #2
.L02042e04:
    ldr r1, [r0, lr]
.L02042e08:
    ldr r2, [lr, r3]
.L02042e0c:
    ldr ip, [r4, r3]
.L02042e10:
    ldr lr, [r0, r4]
.L02042e14:
    ldr r0, [pc, #2944]
.L02042e18:
    rsb ip, lr, ip
.L02042e1c:
    smull r4, r5, ip, r0
.L02042e20:
    rsb r2, r1, r2
.L02042e24:
    mov r3, r2, asr #31
.L02042e28:
    mov r3, r3, lsl #16
.L02042e2c:
    orr r3, r3, r2, lsr #16
.L02042e30:
    mov r2, r2, lsl #16
.L02042e34:
    ldr fp, [sp, #136]
.L02042e38:
    mov r4, r4, lsr #16
.L02042e3c:
    mov r2, r2, lsr #16
.L02042e40:
    ldr sl, [sp, #108]
.L02042e44:
    orr r2, r2, r3, lsl #16
.L02042e48:
    orr r4, r4, r5, lsl #16
.L02042e4c:
    ldr ip, [sp, #108]
.L02042e50:
    eor r1, r4, r4, asr #31
.L02042e54:
    sub r1, r1, r4, asr #31
.L02042e58:
    eor r0, r2, r2, asr #31
.L02042e5c:
    sub r0, r0, r2, asr #31
.L02042e60:
    add sl, sl, fp
.L02042e64:
    str r2, [fp, ip]
.L02042e68:
    add r0, r1, r0
.L02042e6c:
    str r4, [sl, #4]
.L02042e70:
    mov r6, r2
.L02042e74:
    str sl, [sp, #116]
.L02042e78:
    bl __floatsisf
.L02042e7c:
    mov r1, #931135488
.L02042e80:
    bl __aeabi_fmul
.L02042e84:
    mov r1, #0
.L02042e88:
    mov r8, r4
.L02042e8c:
    mov r4, r0
.L02042e90:
    bl __aeabi_fcmpeq
.L02042e94:
    cmp r0, #0
.L02042e98:
    mov r5, r5, asr #16
.L02042e9c:
    bne .L0204302c
.L02042ea0:
    mov r0, r4
.L02042ea4:
    bl __aeabi_f2d
.L02042ea8:
    ldr r2, [pc, #2800]
.L02042eac:
    ldr r3, [pc, #2800]
.L02042eb0:
    bl __aeabi_dcmplt
.L02042eb4:
    cmp r0, #0
.L02042eb8:
    beq .L020435a0
.L02042ebc:
    mov sl, r6, lsl #8
.L02042ec0:
    mov fp, r8, lsl #8
.L02042ec4:
    eor r3, fp, fp, asr #31
.L02042ec8:
    sub r3, r3, fp, asr #31
.L02042ecc:
    eor r0, sl, sl, asr #31
.L02042ed0:
    sub r0, r0, sl, asr #31
.L02042ed4:
    add r0, r3, r0
.L02042ed8:
    bl __floatsisf
.L02042edc:
    mov r1, #931135488
.L02042ee0:
    bl __aeabi_fmul
.L02042ee4:
    mov r1, #0
.L02042ee8:
    mov r4, r0
.L02042eec:
    bl __aeabi_fcmpeq
.L02042ef0:
    cmp r0, #0
.L02042ef4:
    bne .L0204302c
.L02042ef8:
    mov r0, r4
.L02042efc:
    bl __aeabi_f2d
.L02042f00:
    ldr r2, [pc, #2712]
.L02042f04:
    ldr r3, [pc, #2712]
.L02042f08:
    bl __aeabi_dcmplt
.L02042f0c:
    cmp r0, #0
.L02042f10:
    beq .L02043738
.L02042f14:
    mov r3, r6, lsl #16
.L02042f18:
    mov r2, r8, lsl #16
.L02042f1c:
    str r3, [sp, #156]
.L02042f20:
    str r2, [sp, #160]
.L02042f24:
    add r0, sp, #208
.L02042f28:
    add r1, sp, #156
.L02042f2c:
    ldr ip, [pc, #2676]
.L02042f30:
    blx ip
.L02042f34:
    ldr r2, [sp, #208]
.L02042f38:
    mov r3, r2, asr #31
.L02042f3c:
    mov r3, r3, lsl #8
.L02042f40:
    orr r3, r3, r2, lsr #24
.L02042f44:
    mov r2, r2, lsl #8
.L02042f48:
    mov r2, r2, lsr #16
.L02042f4c:
    orr r2, r2, r3, lsl #16
.L02042f50:
    mov r3, r2, asr #31
.L02042f54:
    mov r3, r3, lsl #8
.L02042f58:
    orr r3, r3, r2, lsr #24
.L02042f5c:
    mov r2, r2, lsl #8
.L02042f60:
    mov r2, r2, lsr #16
.L02042f64:
    orr r2, r2, r3, lsl #16
.L02042f68:
    mov lr, r2
.L02042f6c:
    cmp lr, #3
.L02042f70:
    ble .L0204302c
.L02042f74:
    ldr fp, [sp, #116]
.L02042f78:
    ldr r3, [pc, #2604]
.L02042f7c:
    mov ip, #1
.L02042f80:
    ldr r2, [fp]
.L02042f84:
    strh ip, [r3, #128]
.L02042f88:
    mov r1, r3
.L02042f8c:
    ldrh r3, [r1, #128]
.L02042f90:
    tst r3, #32768
.L02042f94:
    bne .L02042f8c
.L02042f98:
    mov r3, r2, asr #31
.L02042f9c:
    mov r3, r3, lsl #16
.L02042fa0:
    orr r3, r3, r2, lsr #16
.L02042fa4:
    mov r0, #67108864
.L02042fa8:
    mov r2, r2, lsl #16
.L02042fac:
    ldr r4, [pc, #2552]
.L02042fb0:
    strd r2, [r1, #144]
.L02042fb4:
    str lr, [r0, #664]
.L02042fb8:
    ldrh r3, [r4, #128]
.L02042fbc:
    tst r3, #32768
.L02042fc0:
    bne .L02042fb8
.L02042fc4:
    mov r1, #67108864
.L02042fc8:
    ldr r3, [r1, #672]
.L02042fcc:
    ldr ip, [sp, #116]
.L02042fd0:
    mov r5, #1
.L02042fd4:
    str r3, [ip], #4
.L02042fd8:
    ldr r3, [sp, #116]
.L02042fdc:
    ldr r0, [pc, #2504]
.L02042fe0:
    ldr r2, [r3, #4]
.L02042fe4:
    strh r5, [r4, #128]
.L02042fe8:
    ldrh r3, [r0, #128]
.L02042fec:
    tst r3, #32768
.L02042ff0:
    bne .L02042fe8
.L02042ff4:
    mov r3, r2, asr #31
.L02042ff8:
    mov r3, r3, lsl #16
.L02042ffc:
    orr r3, r3, r2, lsr #16
.L02043000:
    mov r8, #67108864
.L02043004:
    mov r2, r2, lsl #16
.L02043008:
    ldr r1, [pc, #2460]
.L0204300c:
    strd r2, [r0, #144]
.L02043010:
    str lr, [r8, #664]
.L02043014:
    ldrh r3, [r1, #128]
.L02043018:
    tst r3, #32768
.L0204301c:
    bne .L02043014
.L02043020:
    mov sl, #67108864
.L02043024:
    ldr r3, [sl, #672]
.L02043028:
    str r3, [ip]
.L0204302c:
    ldr ip, [sp, #96]
.L02043030:
    ldr fp, [sp, #136]
.L02043034:
    ldr ip, [ip, #8]
.L02043038:
    mov r0, r9
.L0204303c:
    add fp, fp, #8
.L02043040:
    cmp r0, ip
.L02043044:
    str fp, [sp, #136]
.L02043048:
    str ip, [sp, #144]
.L0204304c:
    blt .L02042dc8
.L02043050:
    cmp ip, #0
.L02043054:
    ble .L02043550
.L02043058:
    ldr r3, [pc, #2384]
.L0204305c:
    ldr r2, [pc, #2384]
.L02043060:
    ldr r1, [r3]
.L02043064:
    ldr r2, [r2]
.L02043068:
    mov r0, #0
.L0204306c:
    rsb r1, r1, #0
.L02043070:
    str r2, [sp, #12]
.L02043074:
    str r0, [sp, #132]
.L02043078:
    str r1, [sp, #16]
.L0204307c:
    mov r6, r0
.L02043080:
    cmp r6, #0
.L02043084:
    ldreq r2, [sp, #144]
.L02043088:
    subne r1, r6, #1
.L0204308c:
    subeq r1, r2, #1
.L02043090:
    ldr r4, [sp, #108]
.L02043094:
    mov r3, r1, lsl #3
.L02043098:
    add r4, r4, r3
.L0204309c:
    str r4, [sp, #100]
.L020430a0:
    ldr r9, [sp, #108]
.L020430a4:
    ldr r5, [sp, #132]
.L020430a8:
    ldr sl, [sp, #100]
.L020430ac:
    add r8, r5, r9
.L020430b0:
    ldr ip, [r9, r3]
.L020430b4:
    ldr lr, [sl, #4]
.L020430b8:
    ldr r2, [r8, #4]
.L020430bc:
    ldr r4, [r5, r9]
.L020430c0:
    smull r0, r1, r2, ip
.L020430c4:
    smull r2, r3, r4, lr
.L020430c8:
    mov r0, r0, lsr #16
.L020430cc:
    mov r2, r2, lsr #16
.L020430d0:
    orr r0, r0, r1, lsl #16
.L020430d4:
    orr r2, r2, r3, lsl #16
.L020430d8:
    rsb r0, r2, r0
.L020430dc:
    ldr r3, [pc, #2232]
.L020430e0:
    cmp r0, #65536
.L020430e4:
    mov r2, #65536
.L020430e8:
    str r2, [sp, #200]
.L020430ec:
    str r0, [sp, #192]
.L020430f0:
    str r3, [sp, #196]
.L020430f4:
    addlt r2, sp, #192
.L020430f8:
    addge r2, sp, #200
.L020430fc:
    ldr r2, [r2]
.L02043100:
    ldr r3, [sp, #196]
.L02043104:
    str r2, [sp, #204]
.L02043108:
    cmp r2, r3
.L0204310c:
    addlt r0, sp, #196
.L02043110:
    addge r0, sp, #204
.L02043114:
    ldr r0, [r0]
.L02043118:
    bl __floatsisf
.L0204311c:
    mov r1, #931135488
.L02043120:
    bl __aeabi_fmul
.L02043124:
    bl asinf
.L02043128:
    ldr r1, [pc, #2184]
.L0204312c:
    bl __aeabi_fmul
.L02043130:
    bl __aeabi_f2iz
.L02043134:
    ldr fp, [pc, #2176]
.L02043138:
    ldr r3, [fp]
.L0204313c:
    cmp r0, r3
.L02043140:
    ble .L020438ec
.L02043144:
    ldr ip, [sp, #96]
.L02043148:
    ldr ip, [ip, #8]
.L0204314c:
    cmp ip, #0
.L02043150:
    str ip, [sp, #144]
.L02043154:
    ble .L020436f8
.L02043158:
    ldr r0, [sp, #108]
.L0204315c:
    ldr lr, [sp, #132]
.L02043160:
    ldr r1, [sp, #112]
.L02043164:
    ldr lr, [lr, r0]
.L02043168:
    ldr r0, [sp, #132]
.L0204316c:
    ldr r2, [sp, #132]
.L02043170:
    ldr r3, [sp, #112]
.L02043174:
    ldr r0, [r0, r1]
.L02043178:
    ldr r8, [r8, #4]
.L0204317c:
    add r1, r6, #1
.L02043180:
    add r2, r2, r3
.L02043184:
    str r8, [sp, #20]
.L02043188:
    str lr, [sp, #28]
.L0204318c:
    str r0, [sp, #32]
.L02043190:
    mov r4, #0
.L02043194:
    str r1, [sp, #24]
.L02043198:
    str r2, [sp, #36]
.L0204319c:
    cmp r6, r4
.L020431a0:
    ldr r0, [sp, #24]
.L020431a4:
    ldr r1, [sp, #144]
.L020431a8:
    beq .L0204321c
.L020431ac:
    bl __aeabi_idivmod
.L020431b0:
    ldr r5, [sp, #112]
.L020431b4:
    mov r3, r4, lsl #3
.L020431b8:
    cmp r1, r4
.L020431bc:
    add r3, r3, r5
.L020431c0:
    beq .L0204321c
.L020431c4:
    ldr r8, [sp, #36]
.L020431c8:
    ldr ip, [r3, #4]
.L020431cc:
    ldr r2, [r8, #4]
.L020431d0:
    ldr r3, [r5, r4, lsl #3]
.L020431d4:
    ldr r9, [sp, #32]
.L020431d8:
    ldr sl, [sp, #28]
.L020431dc:
    ldr fp, [sp, #20]
.L020431e0:
    rsb r3, r9, r3
.L020431e4:
    rsb ip, r2, ip
.L020431e8:
    smull r0, r1, r3, sl
.L020431ec:
    smull r2, r3, ip, fp
.L020431f0:
    mov r0, r0, lsr #16
.L020431f4:
    mov r2, r2, lsr #16
.L020431f8:
    orr r0, r0, r1, lsl #16
.L020431fc:
    orr r2, r2, r3, lsl #16
.L02043200:
    ldr ip, [sp, #16]
.L02043204:
    add r0, r0, r2
.L02043208:
    cmp r0, ip
.L0204320c:
    movge lr, #5
.L02043210:
    movge r0, #0
.L02043214:
    strge lr, [sp, #104]
.L02043218:
    strge r0, [sp, #140]
.L0204321c:
    ldr r1, [sp, #144]
.L02043220:
    add r4, r4, #1
.L02043224:
    cmp r4, r1
.L02043228:
    bne .L0204319c
.L0204322c:
    ldr r8, [sp, #144]
.L02043230:
    cmp r8, #0
.L02043234:
    movle r9, #0
.L02043238:
    strle r9, [sp, #124]
.L0204323c:
    strle r9, [sp, #148]
.L02043240:
    strle r9, [sp, #128]
.L02043244:
    ble .L0204335c
.L02043248:
    ldr ip, [sp, #112]
.L0204324c:
    mov sl, #0
.L02043250:
    str sl, [sp, #124]
.L02043254:
    add fp, ip, #8
.L02043258:
    str sl, [sp, #120]
.L0204325c:
    str sl, [sp, #148]
.L02043260:
    str sl, [sp, #128]
.L02043264:
    ldr lr, [sp, #120]
.L02043268:
    ldr r0, [sp, #144]
.L0204326c:
    add lr, lr, #1
.L02043270:
    ldr r3, [sp, #112]
.L02043274:
    cmp lr, r0
.L02043278:
    movlt r3, fp
.L0204327c:
    ldr r4, [fp, #-4]
.L02043280:
    ldr r8, [fp, #-8]
.L02043284:
    ldr ip, [r3]
.L02043288:
    str lr, [sp, #120]
.L0204328c:
    ldr lr, [r3, #4]
.L02043290:
    smull r2, r3, r4, ip
.L02043294:
    smull r0, r1, r8, lr
.L02043298:
    mov r2, r2, lsr #16
.L0204329c:
    mov r0, r0, lsr #16
.L020432a0:
    orr r0, r0, r1, lsl #16
.L020432a4:
    orr r2, r2, r3, lsl #16
.L020432a8:
    rsb r0, r2, r0
.L020432ac:
    mov r6, r0
.L020432b0:
    mov r7, r6, asr #31
.L020432b4:
    mov r7, r7, lsl #15
.L020432b8:
    orr r7, r7, r6, lsr #17
.L020432bc:
    mov r6, r6, lsl #15
.L020432c0:
    ldr r0, [pc, #1784]
.L020432c4:
    mov r6, r6, lsr #16
.L020432c8:
    orr r6, r6, r7, lsl #16
.L020432cc:
    smull r2, r3, r6, r0
.L020432d0:
    add r1, r4, lr
.L020432d4:
    mov r2, r2, lsr #16
.L020432d8:
    mov r4, r1
.L020432dc:
    mov r5, r4, asr #31
.L020432e0:
    add r8, r8, ip
.L020432e4:
    orr r2, r2, r3, lsl #16
.L020432e8:
    mov r3, r2, asr #31
.L020432ec:
    strd r4, [sp, #80]
.L020432f0:
    mov r9, r8, asr #31
.L020432f4:
    mul ip, r2, r9
.L020432f8:
    ldr sl, [sp, #84]
.L020432fc:
    ldr lr, [sp, #80]
.L02043300:
    mul sl, r2, sl
.L02043304:
    umull r4, r5, r2, lr
.L02043308:
    mla lr, r8, r3, ip
.L0204330c:
    ldr ip, [sp, #80]
.L02043310:
    umull r0, r1, r2, r8
.L02043314:
    mla ip, r3, ip, sl
.L02043318:
    mov r4, r4, lsr #16
.L0204331c:
    ldr r3, [sp, #124]
.L02043320:
    add r5, ip, r5
.L02043324:
    orr r4, r4, r5, lsl #16
.L02043328:
    ldr r2, [sp, #148]
.L0204332c:
    add r3, r3, r4
.L02043330:
    add r1, lr, r1
.L02043334:
    ldr r4, [sp, #128]
.L02043338:
    mov r0, r0, lsr #16
.L0204333c:
    orr r0, r0, r1, lsl #16
.L02043340:
    add r2, r2, r0
.L02043344:
    add r4, r4, r6
.L02043348:
    str r2, [sp, #148]
.L0204334c:
    str r3, [sp, #124]
.L02043350:
    str r4, [sp, #128]
.L02043354:
    add fp, fp, #8
.L02043358:
    bne .L02043264
.L0204335c:
    ldr r3, [pc, #1608]
.L02043360:
    mov r5, #1
.L02043364:
    strh r5, [r3, #128]
.L02043368:
    mov r1, r3
.L0204336c:
    ldrh r3, [r1, #128]
.L02043370:
    tst r3, #32768
.L02043374:
    bne .L0204336c
.L02043378:
    mov r9, #1
.L0204337c:
    mov r8, #0
.L02043380:
    strd r8, [r1, #144]
.L02043384:
    ldr r9, [sp, #128]
.L02043388:
    mov r3, #67108864
.L0204338c:
    ldr r2, [pc, #1560]
.L02043390:
    str r9, [r3, #664]
.L02043394:
    ldrh r3, [r2, #128]
.L02043398:
    tst r3, #32768
.L0204339c:
    bne .L02043394
.L020433a0:
    mov r3, #67108864
.L020433a4:
    ldr r4, [r3, #672]
.L020433a8:
    ldr sl, [sp, #148]
.L020433ac:
    mov r5, r4, asr #31
.L020433b0:
    mov r6, sl
.L020433b4:
    mov r7, r6, asr #31
.L020433b8:
    mul r1, r6, r5
.L020433bc:
    ldr fp, [sp, #124]
.L020433c0:
    mla lr, r4, r7, r1
.L020433c4:
    mov r8, fp
.L020433c8:
    mov r9, r8, asr #31
.L020433cc:
    mul ip, r4, r9
.L020433d0:
    umull r2, r3, r6, r4
.L020433d4:
    umull r0, r1, r4, r8
.L020433d8:
    mla r6, r8, r5, ip
.L020433dc:
    ldr r5, [sp, #100]
.L020433e0:
    add r3, lr, r3
.L020433e4:
    ldr ip, [sp, #36]
.L020433e8:
    ldr r8, [sp, #32]
.L020433ec:
    mov r2, r2, lsr #16
.L020433f0:
    ldr lr, [r5]
.L020433f4:
    orr r2, r2, r3, lsl #16
.L020433f8:
    rsb r2, r2, r8
.L020433fc:
    ldr r4, [ip, #4]
.L02043400:
    ldr ip, [r5, #4]
.L02043404:
    add r1, r6, r1
.L02043408:
    mov r0, r0, lsr #16
.L0204340c:
    mov r6, r2
.L02043410:
    mov r7, r6, asr #31
.L02043414:
    mov r2, lr
.L02043418:
    mov r3, r2, asr #31
.L0204341c:
    mov sl, ip
.L02043420:
    mov fp, sl, asr #31
.L02043424:
    orr r0, r0, r1, lsl #16
.L02043428:
    mul r1, r2, r7
.L0204342c:
    strd sl, [sp, #72]
.L02043430:
    ldr fp, [sp, #20]
.L02043434:
    rsb r4, r0, r4
.L02043438:
    mov sl, fp
.L0204343c:
    mov fp, sl, asr #31
.L02043440:
    strd sl, [sp, #48]
.L02043444:
    ldr ip, [sp, #72]
.L02043448:
    mla fp, r6, r3, r1
.L0204344c:
    umull r0, r1, r2, r6
.L02043450:
    mov r5, r4, asr #31
.L02043454:
    mul ip, r5, ip
.L02043458:
    mov r3, r1
.L0204345c:
    ldr r9, [sp, #28]
.L02043460:
    ldr r1, [sp, #76]
.L02043464:
    mov r8, r9
.L02043468:
    mov r9, r8, asr #31
.L0204346c:
    mla r1, r4, r1, ip
.L02043470:
    stmia sp, {r8, r9}
.L02043474:
    ldr ip, [sp]
.L02043478:
    ldr r8, [sp, #72]
.L0204347c:
    mov r2, r0
.L02043480:
    str r1, [sp, #68]
.L02043484:
    ldr lr, [sp, #4]
.L02043488:
    umull r0, r1, r8, r4
.L0204348c:
    umull r8, r9, r6, ip
.L02043490:
    mul lr, r6, lr
.L02043494:
    ldr ip, [sp, #48]
.L02043498:
    ldr sl, [sp, #52]
.L0204349c:
    strd r8, [sp, #56]
.L020434a0:
    mul sl, r4, sl
.L020434a4:
    umull r8, r9, r4, ip
.L020434a8:
    ldr ip, [sp]
.L020434ac:
    strd r8, [sp, #40]
.L020434b0:
    mla ip, r7, ip, lr
.L020434b4:
    ldr lr, [sp, #48]
.L020434b8:
    ldr r8, [sp, #60]
.L020434bc:
    mla lr, r5, lr, sl
.L020434c0:
    ldr r4, [sp, #68]
.L020434c4:
    add r9, lr, r9
.L020434c8:
    add r3, fp, r3
.L020434cc:
    mov r2, r2, lsr #16
.L020434d0:
    ldr r5, [sp, #12]
.L020434d4:
    add r8, ip, r8
.L020434d8:
    str r9, [sp, #44]
.L020434dc:
    orr r2, r2, r3, lsl #16
.L020434e0:
    add r1, r4, r1
.L020434e4:
    mov r0, r0, lsr #16
.L020434e8:
    ldr r9, [sp, #56]
.L020434ec:
    ldr ip, [sp, #40]
.L020434f0:
    rsb r2, r5, r2
.L020434f4:
    orr r0, r0, r1, lsl #16
.L020434f8:
    ldr lr, [sp, #44]
.L020434fc:
    cmn r2, r0
.L02043500:
    mov r2, r9, lsr #16
.L02043504:
    mov r0, ip, lsr #16
.L02043508:
    str r8, [sp, #60]
.L0204350c:
    orr r2, r2, r8, lsl #16
.L02043510:
    orr r0, r0, lr, lsl #16
.L02043514:
    bmi .L02043524
.L02043518:
    rsb r3, r5, r2
.L0204351c:
    cmn r3, r0
.L02043520:
    bpl .L02043534
.L02043524:
    mov r5, #6
.L02043528:
    mov r8, #0
.L0204352c:
    str r5, [sp, #104]
.L02043530:
    str r8, [sp, #140]
.L02043534:
    ldr sl, [sp, #132]
.L02043538:
    ldr r6, [sp, #24]
.L0204353c:
    ldr r9, [sp, #144]
.L02043540:
    add sl, sl, #8
.L02043544:
    cmp r6, r9
.L02043548:
    str sl, [sp, #132]
.L0204354c:
    blt .L02043080
.L02043550:
    ldr r4, [sp, #140]
.L02043554:
    ldr fp, [sp, #112]
.L02043558:
    cmp fp, #0
.L0204355c:
    beq .L02043568
.L02043560:
    mov r0, fp
.L02043564:
    bl _ZdaPv
.L02043568:
    ldr ip, [sp, #108]
.L0204356c:
    cmp ip, #0
.L02043570:
    beq .L0204357c
.L02043574:
    mov r0, ip
.L02043578:
    bl _ZdaPv
.L0204357c:
    ldr lr, [sp, #140]
.L02043580:
    cmp lr, #0
.L02043584:
    bne .L02043594
.L02043588:
    ldr r0, [sp, #92]
.L0204358c:
    cmp r0, #0
.L02043590:
    bne .L020437dc
.L02043594:
    mov r0, r4
.L02043598:
    add sp, sp, #228
.L0204359c:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L020435a0:
    mov r0, r4
.L020435a4:
    ldr r1, [pc, #1048]
.L020435a8:
    bl __aeabi_fcmplt
.L020435ac:
    cmp r0, #0
.L020435b0:
    beq .L02043644
.L020435b4:
    mov r2, r6
.L020435b8:
    mov r3, r2, asr #31
.L020435bc:
    mov r0, r8
.L020435c0:
    mov r1, r0, asr #31
.L020435c4:
    mul lr, r0, r1
.L020435c8:
    mul ip, r2, r3
.L020435cc:
    umull r6, r7, r0, r0
.L020435d0:
    umull r4, r5, r2, r2
.L020435d4:
    ldr r3, [pc, #976]
.L020435d8:
    mov ip, ip, lsl #1
.L020435dc:
    mov lr, lr, lsl #1
.L020435e0:
    add r5, ip, r5
.L020435e4:
    add r7, lr, r7
.L020435e8:
    mov r1, #1
.L020435ec:
    mov r0, r4, lsr #16
.L020435f0:
    mov sl, r6, lsr #16
.L020435f4:
    strh r1, [r3, #176]
.L020435f8:
    mov ip, r3
.L020435fc:
    orr r0, r0, r5, lsl #16
.L02043600:
    orr sl, sl, r7, lsl #16
.L02043604:
    ldrh r3, [ip, #176]
.L02043608:
    tst r3, #32768
.L0204360c:
    bne .L02043604
.L02043610:
    add r2, r0, sl
.L02043614:
    mov r3, r2, asr #31
.L02043618:
    mov r3, r3, lsl #16
.L0204361c:
    orr r3, r3, r2, lsr #16
.L02043620:
    mov r2, r2, lsl #16
.L02043624:
    strd r2, [ip, #184]
.L02043628:
    ldr r2, [pc, #892]
.L0204362c:
    ldrh r3, [r2, #176]
.L02043630:
    tst r3, #32768
.L02043634:
    bne .L0204362c
.L02043638:
    mov r2, #67108864
.L0204363c:
    ldr lr, [r2, #692]
.L02043640:
    b .L02042f6c
.L02043644:
    mov sl, r6, asr #8
.L02043648:
    mov fp, r8, asr #8
.L0204364c:
    eor r3, fp, fp, asr #31
.L02043650:
    sub r3, r3, fp, asr #31
.L02043654:
    eor r0, sl, sl, asr #31
.L02043658:
    sub r0, r0, sl, asr #31
.L0204365c:
    add r0, r3, r0
.L02043660:
    bl __floatsisf
.L02043664:
    mov r1, #931135488
.L02043668:
    bl __aeabi_fmul
.L0204366c:
    mov r1, #0
.L02043670:
    mov r4, r0
.L02043674:
    bl __aeabi_fcmpeq
.L02043678:
    cmp r0, #0
.L0204367c:
    bne .L0204302c
.L02043680:
    mov r0, r4
.L02043684:
    bl __aeabi_f2d
.L02043688:
    ldr r2, [pc, #784]
.L0204368c:
    ldr r3, [pc, #784]
.L02043690:
    bl __aeabi_dcmplt
.L02043694:
    cmp r0, #0
.L02043698:
    beq .L02043810
.L0204369c:
    mov r3, sl, lsl #8
.L020436a0:
    mov r2, fp, lsl #8
.L020436a4:
    str r3, [sp, #172]
.L020436a8:
    str r2, [sp, #176]
.L020436ac:
    add r0, sp, #216
.L020436b0:
    add r1, sp, #172
.L020436b4:
    ldr ip, [pc, #748]
.L020436b8:
    blx ip
.L020436bc:
    ldr r2, [sp, #216]
.L020436c0:
    mov r3, r2, asr #31
.L020436c4:
    mov r3, r3, lsl #8
.L020436c8:
    orr r3, r3, r2, lsr #24
.L020436cc:
    mov r2, r2, lsl #8
.L020436d0:
    mov r2, r2, lsr #16
.L020436d4:
    orr r2, r2, r3, lsl #16
.L020436d8:
    mov r3, r2, asr #31
.L020436dc:
    mov r3, r3, lsl #24
.L020436e0:
    orr r3, r3, r2, lsr #8
.L020436e4:
    mov r2, r2, lsl #24
.L020436e8:
    mov r2, r2, lsr #16
.L020436ec:
    orr r2, r2, r3, lsl #16
.L020436f0:
    mov lr, r2
.L020436f4:
    b .L02042f6c
.L020436f8:
    ldr r3, [sp, #108]
.L020436fc:
    ldr r2, [sp, #132]
.L02043700:
    ldr r4, [sp, #112]
.L02043704:
    ldr r2, [r2, r3]
.L02043708:
    ldr r3, [sp, #132]
.L0204370c:
    ldr r5, [sp, #132]
.L02043710:
    ldr r3, [r3, r4]
.L02043714:
    ldr r8, [r8, #4]
.L02043718:
    add r6, r6, #1
.L0204371c:
    add r4, r5, r4
.L02043720:
    str r8, [sp, #20]
.L02043724:
    str r2, [sp, #28]
.L02043728:
    str r3, [sp, #32]
.L0204372c:
    str r6, [sp, #24]
.L02043730:
    str r4, [sp, #36]
.L02043734:
    b .L0204322c
.L02043738:
    mov r0, r4
.L0204373c:
    ldr r1, [pc, #640]
.L02043740:
    bl __aeabi_fcmplt
.L02043744:
    cmp r0, #0
.L02043748:
    beq .L020438b4
.L0204374c:
    mov r2, sl
.L02043750:
    mov r3, r2, asr #31
.L02043754:
    mov r0, fp
.L02043758:
    mov r1, r0, asr #31
.L0204375c:
    mul ip, r2, r3
.L02043760:
    mul lr, r0, r1
.L02043764:
    umull r6, r7, r0, r0
.L02043768:
    umull r4, r5, r2, r2
.L0204376c:
    ldr r3, [pc, #568]
.L02043770:
    mov ip, ip, lsl #1
.L02043774:
    mov lr, lr, lsl #1
.L02043778:
    add r5, ip, r5
.L0204377c:
    add r7, lr, r7
.L02043780:
    mov r0, r4, lsr #16
.L02043784:
    mov lr, #1
.L02043788:
    mov sl, r6, lsr #16
.L0204378c:
    strh lr, [r3, #176]
.L02043790:
    mov ip, r3
.L02043794:
    orr r0, r0, r5, lsl #16
.L02043798:
    orr sl, sl, r7, lsl #16
.L0204379c:
    ldrh r3, [ip, #176]
.L020437a0:
    tst r3, #32768
.L020437a4:
    bne .L0204379c
.L020437a8:
    add r2, r0, sl
.L020437ac:
    mov r3, r2, asr #31
.L020437b0:
    mov r3, r3, lsl #16
.L020437b4:
    orr r3, r3, r2, lsr #16
.L020437b8:
    mov r2, r2, lsl #16
.L020437bc:
    strd r2, [ip, #184]
.L020437c0:
    ldr r2, [pc, #484]
.L020437c4:
    ldrh r3, [r2, #176]
.L020437c8:
    tst r3, #32768
.L020437cc:
    bne .L020437c4
.L020437d0:
    mov r0, #67108864
.L020437d4:
    ldr r2, [r0, #692]
.L020437d8:
    b .L02042f50
.L020437dc:
    ldr r0, [pc, #484]
.L020437e0:
    bl printf
.L020437e4:
    ldr r1, [sp, #104]
.L020437e8:
    cmp r1, #6
.L020437ec:
    ldrls pc, [pc, r1, lsl #2]
.L020437f0:
    b .L02043938
.L020437f4:
    .long .L02043944  /* switch target */
.L020437f8:
    .long .L02043954  /* switch target */
.L020437fc:
    .long .L02043960  /* switch target */
.L02043800:
    .long .L0204396c  /* switch target */
.L02043804:
    .long .L02043978  /* switch target */
.L02043808:
    .long .L02043984  /* switch target */
.L0204380c:
    .long .L02043990  /* switch target */
.L02043810:
    mov r0, r4
.L02043814:
    ldr r1, [pc, #424]
.L02043818:
    bl __aeabi_fcmplt
.L0204381c:
    cmp r0, #0
.L02043820:
    beq .L02043900
.L02043824:
    mov r2, sl
.L02043828:
    mov r3, r2, asr #31
.L0204382c:
    mov r0, fp
.L02043830:
    mov r1, r0, asr #31
.L02043834:
    mul ip, r2, r3
.L02043838:
    mul lr, r0, r1
.L0204383c:
    umull r6, r7, r0, r0
.L02043840:
    umull r4, r5, r2, r2
.L02043844:
    ldr r3, [pc, #352]
.L02043848:
    mov ip, ip, lsl #1
.L0204384c:
    mov lr, lr, lsl #1
.L02043850:
    add r5, ip, r5
.L02043854:
    add r7, lr, r7
.L02043858:
    mov r8, #1
.L0204385c:
    mov r0, r4, lsr #16
.L02043860:
    mov sl, r6, lsr #16
.L02043864:
    strh r8, [r3, #176]
.L02043868:
    mov ip, r3
.L0204386c:
    orr r0, r0, r5, lsl #16
.L02043870:
    orr sl, sl, r7, lsl #16
.L02043874:
    ldrh r3, [ip, #176]
.L02043878:
    tst r3, #32768
.L0204387c:
    bne .L02043874
.L02043880:
    add r2, r0, sl
.L02043884:
    mov r3, r2, asr #31
.L02043888:
    mov r3, r3, lsl #16
.L0204388c:
    orr r3, r3, r2, lsr #16
.L02043890:
    mov r2, r2, lsl #16
.L02043894:
    strd r2, [ip, #184]
.L02043898:
    ldr r2, [pc, #268]
.L0204389c:
    ldrh r3, [r2, #176]
.L020438a0:
    tst r3, #32768
.L020438a4:
    bne .L0204389c
.L020438a8:
    mov sl, #67108864
.L020438ac:
    ldr r2, [sl, #692]
.L020438b0:
    b .L020436d8
.L020438b4:
    mov r3, sl, asr #8
.L020438b8:
    mov r2, fp, asr #8
.L020438bc:
    str r3, [sp, #164]
.L020438c0:
    str r2, [sp, #168]
.L020438c4:
    add r0, sp, #212
.L020438c8:
    add r1, sp, #164
.L020438cc:
    ldr ip, [pc, #212]
.L020438d0:
    blx ip
.L020438d4:
    ldr r2, [sp, #212]
.L020438d8:
    mov r3, r2, asr #31
.L020438dc:
    mov r3, r3, lsl #24
.L020438e0:
    orr r3, r3, r2, lsr #8
.L020438e4:
    mov r2, r2, lsl #24
.L020438e8:
    b .L02042f48
.L020438ec:
    mov r4, #0
.L020438f0:
    mov lr, #4
.L020438f4:
    str lr, [sp, #104]
.L020438f8:
    str r4, [sp, #140]
.L020438fc:
    b .L02043554
.L02043900:
    mov r3, r6, asr #16
.L02043904:
    mov r2, r8, asr #16
.L02043908:
    str r3, [sp, #180]
.L0204390c:
    str r2, [sp, #184]
.L02043910:
    add r0, sp, #220
.L02043914:
    add r1, sp, #180
.L02043918:
    ldr ip, [pc, #136]
.L0204391c:
    blx ip
.L02043920:
    ldr r2, [sp, #220]
.L02043924:
    mov r3, r2, asr #31
.L02043928:
    mov r3, r3, lsl #24
.L0204392c:
    orr r3, r3, r2, lsr #8
.L02043930:
    mov r2, r2, lsl #24
.L02043934:
    b .L020436d0
.L02043938:
    ldr r0, [pc, #140]
.L0204393c:
    bl puts
.L02043940:
    b .L02043594
.L02043944:
    mov r1, #8
.L02043948:
    ldr r0, [pc, #128]
.L0204394c:
    bl printf
.L02043950:
    b .L02043594
.L02043954:
    ldr r0, [pc, #120]
.L02043958:
    bl puts
.L0204395c:
    b .L02043594
.L02043960:
    ldr r0, [pc, #112]
.L02043964:
    bl puts
.L02043968:
    b .L02043594
.L0204396c:
    ldr r0, [pc, #104]
.L02043970:
    bl puts
.L02043974:
    b .L02043594
.L02043978:
    ldr r0, [pc, #96]
.L0204397c:
    bl puts
.L02043980:
    b .L02043594
.L02043984:
    ldr r0, [pc, #88]
.L02043988:
    bl puts
.L0204398c:
    b .L02043594
.L02043990:
    ldr r0, [pc, #80]
.L02043994:
    bl puts
.L02043998:
    b .L02043594
.L0204399c:
    .long 0xffff0000  /* literal data */
.L020439a0:
    .long 0x9999999a  /* literal data */
.L020439a4:
    .long 0x3fb99999  /* literal data */
.L020439a8:
    .long _ZNK6b2Vec26LengthEv  /* literal data */
.L020439ac:
    .long 0x04000200  /* literal data */
.L020439b0:
    .long b2_linearSlop  /* literal data */
.L020439b4:
    .long COLLAPSE_DIST_SQR  /* literal data */
.L020439b8:
    .long 0x47800000  /* literal data */
.L020439bc:
    .long b2_angularSlop  /* literal data */
.L020439c0:
    .long 0x00005555  /* literal data */
.L020439c4:
    .long 0x43340000  /* literal data */
.L020439c8:
    .long .rodata.str1.4 + 164  /* literal data */
.L020439cc:
    .long .rodata.str1.4 + 432  /* literal data */
.L020439d0:
    .long .rodata.str1.4 + 188  /* literal data */
.L020439d4:
    .long .rodata.str1.4 + 228  /* literal data */
.L020439d8:
    .long .rodata.str1.4 + 244  /* literal data */
.L020439dc:
    .long .rodata.str1.4 + 288  /* literal data */
.L020439e0:
    .long .rodata.str1.4 + 308  /* literal data */
.L020439e4:
    .long .rodata.str1.4 + 344  /* literal data */
.L020439e8:
    .long .rodata.str1.4 + 368  /* literal data */
.size _ZN9b2Polygon8IsUsableEb, .-_ZN9b2Polygon8IsUsableEb

.section .text.polygon.residual.44,"ax",%progbits
.balign 4
.arm
.global _Z23DecomposeConvexAndAddToP7b2WorldP9b2PolygonP6b2BodyP12b2PolygonDef
.type _Z23DecomposeConvexAndAddToP7b2WorldP9b2PolygonP6b2BodyP12b2PolygonDef, %function
_Z23DecomposeConvexAndAddToP7b2WorldP9b2PolygonP6b2BodyP12b2PolygonDef:
.L02043a04:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L02043a08:
    ldr r5, [r1, #8]
.L02043a0c:
    sub sp, sp, #268
.L02043a10:
    cmp r5, #2
.L02043a14:
    mov r6, r1
.L02043a18:
    str r2, [sp, #36]
.L02043a1c:
    str r3, [sp, #32]
.L02043a20:
    bgt .L02043a38
.L02043a24:
    mov fp, #0
.L02043a28:
    str fp, [sp, #60]
.L02043a2c:
    ldr r0, [sp, #60]
.L02043a30:
    add sp, sp, #268
.L02043a34:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02043a38:
    sub r4, r5, #2
.L02043a3c:
    mov r3, r4, lsl #4
.L02043a40:
    mov r0, r4, lsl #2
.L02043a44:
    add r0, r0, r3
.L02043a48:
    add r0, r0, #8
.L02043a4c:
    bl _Znaj
.L02043a50:
    mov r3, #20
.L02043a54:
    stmia r0, {r3, r4}
.L02043a58:
    cmp r4, #0
.L02043a5c:
    add r0, r0, #8
.L02043a60:
    str r0, [sp, #40]
.L02043a64:
    beq .L02043a88
.L02043a68:
    mov r4, r5
.L02043a6c:
    mov r5, r0
.L02043a70:
    mov r0, r5
.L02043a74:
    sub r4, r4, #1
.L02043a78:
    bl _ZN9b2PolygonC1Ev
.L02043a7c:
    cmp r4, #2
.L02043a80:
    add r5, r5, #20
.L02043a84:
    bne .L02043a70
.L02043a88:
    ldr r2, [r6, #8]
.L02043a8c:
    mov r0, r6
.L02043a90:
    sub r2, r2, #2
.L02043a94:
    ldr r1, [sp, #40]
.L02043a98:
    bl _Z15DecomposeConvexP9b2PolygonS0_l
.L02043a9c:
    cmn r0, #1
.L02043aa0:
    str r0, [sp, #56]
.L02043aa4:
    beq .L02043a24
.L02043aa8:
    ldr r2, [r6, #8]
.L02043aac:
    mov r1, r2, lsl #5
.L02043ab0:
    mov r0, r2, lsl #3
.L02043ab4:
    add r0, r0, r1
.L02043ab8:
    mov r3, r0, lsl #2
.L02043abc:
    add r0, r0, r3
.L02043ac0:
    add r0, r0, #8
.L02043ac4:
    mov r4, r2, lsl #1
.L02043ac8:
    bl _Znaj
.L02043acc:
    mov r3, #100
.L02043ad0:
    add r1, r0, #8
.L02043ad4:
    cmp r4, #0
.L02043ad8:
    str r1, [sp, #44]
.L02043adc:
    stmia r0, {r3, r4}
.L02043ae0:
    str r1, [sp, #60]
.L02043ae4:
    beq .L02043b6c
.L02043ae8:
    mov ip, #0
.L02043aec:
    ldr r6, [pc, #2660]
.L02043af0:
    add r0, r0, #40
.L02043af4:
    mov r1, ip
.L02043af8:
    mvn r5, #0
.L02043afc:
    mov lr, ip
.L02043b00:
    ldr r3, [pc, #2644]
.L02043b04:
    mov r2, #1
.L02043b08:
    str r3, [r0, #-20]
.L02043b0c:
    mvn r3, #0
.L02043b10:
    strh r2, [r0, #-8]
.L02043b14:
    strb r5, [r0, #-28]
.L02043b18:
    str r1, [r0, #-24]
.L02043b1c:
    str r1, [r0, #-16]
.L02043b20:
    str r1, [r0, #-12]
.L02043b24:
    strh r3, [r0, #-6]
.L02043b28:
    strh r1, [r0, #-4]
.L02043b2c:
    strb lr, [r0, #-2]
.L02043b30:
    str r6, [r0, #-32]
.L02043b34:
    mov r2, r1
.L02043b38:
    add r3, r0, r2
.L02043b3c:
    str r1, [r2, r0]
.L02043b40:
    add r2, r2, #8
.L02043b44:
    cmp r2, #64
.L02043b48:
    str r1, [r3, #4]
.L02043b4c:
    bne .L02043b38
.L02043b50:
    add ip, ip, #1
.L02043b54:
    mov r3, #1
.L02043b58:
    cmp r4, ip
.L02043b5c:
    strb r3, [r0, #-28]
.L02043b60:
    str r1, [r0, #64]
.L02043b64:
    addne r0, r0, #100
.L02043b68:
    bne .L02043b00
.L02043b6c:
    ldr r4, [sp, #56]
.L02043b70:
    cmp r4, #0
.L02043b74:
    ble .L02044174
.L02043b78:
    ldr r6, [sp, #40]
.L02043b7c:
    mov r5, #0
.L02043b80:
    str r5, [sp, #68]
.L02043b84:
    str r6, [sp, #148]
.L02043b88:
    str r5, [sp, #64]
.L02043b8c:
    ldr sl, [sp, #64]
.L02043b90:
    ldr fp, [sp, #68]
.L02043b94:
    ldr ip, [sp, #32]
.L02043b98:
    add r3, sl, fp
.L02043b9c:
    mov r1, r3, lsl #4
.L02043ba0:
    mov r3, r3, lsl #2
.L02043ba4:
    add r3, r3, r1
.L02043ba8:
    ldr r4, [sp, #44]
.L02043bac:
    mov r2, r3, lsl #2
.L02043bb0:
    add r3, r3, r2
.L02043bb4:
    add r3, r4, r3
.L02043bb8:
    ldr r2, [ip, #16]
.L02043bbc:
    str r3, [sp, #72]
.L02043bc0:
    ldr r0, [ip, #20]
.L02043bc4:
    str r2, [r3, #16]
.L02043bc8:
    ldr sl, [sp, #72]
.L02043bcc:
    ldr r2, [ip, #8]
.L02043bd0:
    ldr r1, [ip, #12]
.L02043bd4:
    str r0, [r3, #20]
.L02043bd8:
    ldr r6, [sp, #148]
.L02043bdc:
    str r2, [sl, #8]
.L02043be0:
    ldr fp, [sp, #32]
.L02043be4:
    ldr r0, [sp, #32]
.L02043be8:
    ldr r2, [sp, #32]
.L02043bec:
    mov r5, #0
.L02043bf0:
    str r1, [r3, #12]
.L02043bf4:
    ldr r4, [r6, #8]
.L02043bf8:
    str r5, [sp, #204]
.L02043bfc:
    ldrb r3, [ip, #4]
.L02043c00:
    ldrh r0, [r0, #26]
.L02043c04:
    ldrh fp, [fp, #24]
.L02043c08:
    ldrh r2, [r2, #28]
.L02043c0c:
    ldr r1, [r6, #12]
.L02043c10:
    ldrb ip, [r6, #16]
.L02043c14:
    strh r0, [sl, #26]
.L02043c18:
    strb r3, [sl, #4]
.L02043c1c:
    strh fp, [sl, #24]
.L02043c20:
    strh r2, [sl, #28]
.L02043c24:
    mov r0, r4, lsl #2
.L02043c28:
    str r1, [sp, #204]
.L02043c2c:
    strb ip, [sp, #208]
.L02043c30:
    str r4, [sp, #200]
.L02043c34:
    bl _Znaj
.L02043c38:
    cmp r4, r5
.L02043c3c:
    beq .L02043c58
.L02043c40:
    mov r3, r5
.L02043c44:
    mov r2, r5
.L02043c48:
    str r2, [r0, r3, lsl #2]
.L02043c4c:
    add r3, r3, #1
.L02043c50:
    cmp r4, r3
.L02043c54:
    bne .L02043c48
.L02043c58:
    ldr r4, [sp, #200]
.L02043c5c:
    str r0, [sp, #192]
.L02043c60:
    mov r0, r4, lsl #2
.L02043c64:
    bl _Znaj
.L02043c68:
    cmp r4, #0
.L02043c6c:
    mov ip, r0
.L02043c70:
    beq .L02043c8c
.L02043c74:
    mov r3, #0
.L02043c78:
    mov r2, r3
.L02043c7c:
    str r2, [ip, r3, lsl #2]
.L02043c80:
    add r3, r3, #1
.L02043c84:
    cmp r4, r3
.L02043c88:
    bne .L02043c7c
.L02043c8c:
    ldr r3, [sp, #148]
.L02043c90:
    ldr r2, [sp, #200]
.L02043c94:
    ldr r1, [r3]
.L02043c98:
    mov r2, r2, lsl #2
.L02043c9c:
    ldr r0, [sp, #192]
.L02043ca0:
    str ip, [sp, #196]
.L02043ca4:
    bl memcpy
.L02043ca8:
    ldr r2, [sp, #200]
.L02043cac:
    ldr r4, [sp, #148]
.L02043cb0:
    ldr r0, [sp, #196]
.L02043cb4:
    mov r2, r2, lsl #2
.L02043cb8:
    ldr r1, [r4, #4]
.L02043cbc:
    bl memcpy
.L02043cc0:
    ldr r3, [sp, #200]
.L02043cc4:
    cmp r3, #3
.L02043cc8:
    bne .L02044134
.L02043ccc:
    ldr r3, [pc, #2188]
.L02043cd0:
    ldr r6, [sp, #192]
.L02043cd4:
    ldr r3, [r3]
.L02043cd8:
    ldr sl, [sp, #196]
.L02043cdc:
    mov r5, #0
.L02043ce0:
    mvn fp, #3
.L02043ce4:
    str r5, [sp, #76]
.L02043ce8:
    str r3, [sp, #128]
.L02043cec:
    str r6, [sp, #48]
.L02043cf0:
    str sl, [sp, #52]
.L02043cf4:
    str r5, [sp, #140]
.L02043cf8:
    str fp, [sp, #144]
.L02043cfc:
    ldr ip, [sp, #76]
.L02043d00:
    cmp ip, #0
.L02043d04:
    moveq r0, #8
.L02043d08:
    streq r0, [sp, #136]
.L02043d0c:
    beq .L020441d0
.L02043d10:
    ldr r1, [sp, #76]
.L02043d14:
    cmp r1, #2
.L02043d18:
    bne .L020441c8
.L02043d1c:
    ldr r2, [sp, #144]
.L02043d20:
    mov r3, #0
.L02043d24:
    str r2, [sp, #136]
.L02043d28:
    str r3, [sp, #132]
.L02043d2c:
    ldr fp, [sp, #140]
.L02043d30:
    ldr r0, [sp, #52]
.L02043d34:
    ldr ip, [sp, #136]
.L02043d38:
    ldr sl, [sp, #48]
.L02043d3c:
    ldr ip, [ip, r0]
.L02043d40:
    ldr r8, [fp, r0]
.L02043d44:
    ldr r6, [sp, #136]
.L02043d48:
    rsb r2, ip, r8
.L02043d4c:
    ldr r6, [r6, sl]
.L02043d50:
    ldr r9, [fp, sl]
.L02043d54:
    mov r0, r2
.L02043d58:
    mov r1, r0, asr #31
.L02043d5c:
    rsb r3, r6, r9
.L02043d60:
    strd r0, [sp, #88]
.L02043d64:
    str r6, [sp, #120]
.L02043d68:
    ldr r5, [sp, #132]
.L02043d6c:
    ldr r6, [sp, #48]
.L02043d70:
    mov sl, r3
.L02043d74:
    mov fp, sl, asr #31
.L02043d78:
    ldr lr, [sp, #92]
.L02043d7c:
    ldr r5, [r5, r6]
.L02043d80:
    ldr r4, [sp, #88]
.L02043d84:
    str ip, [sp, #124]
.L02043d88:
    mul ip, sl, fp
.L02043d8c:
    mul lr, r0, lr
.L02043d90:
    umull r2, r3, sl, sl
.L02043d94:
    umull r0, r1, r4, r4
.L02043d98:
    str r5, [sp, #80]
.L02043d9c:
    ldr r6, [sp, #132]
.L02043da0:
    ldr r5, [sp, #52]
.L02043da4:
    ldr r4, [pc, #1976]
.L02043da8:
    mov ip, ip, lsl #1
.L02043dac:
    ldr r6, [r6, r5]
.L02043db0:
    add r3, ip, r3
.L02043db4:
    mov lr, lr, lsl #1
.L02043db8:
    mov ip, #1
.L02043dbc:
    strh ip, [r4, #176]
.L02043dc0:
    str r6, [sp, #84]
.L02043dc4:
    add r1, lr, r1
.L02043dc8:
    mov ip, r4
.L02043dcc:
    mov r6, r0, lsr #16
.L02043dd0:
    mov r4, r2, lsr #16
.L02043dd4:
    orr r4, r4, r3, lsl #16
.L02043dd8:
    orr r6, r6, r1, lsl #16
.L02043ddc:
    ldrh r3, [ip, #176]
.L02043de0:
    tst r3, #32768
.L02043de4:
    bne .L02043ddc
.L02043de8:
    add r2, r4, r6
.L02043dec:
    mov r3, r2, asr #31
.L02043df0:
    mov r3, r3, lsl #16
.L02043df4:
    orr r3, r3, r2, lsr #16
.L02043df8:
    mov r2, r2, lsl #16
.L02043dfc:
    strd r2, [ip, #184]
.L02043e00:
    ldr lr, [pc, #1884]
.L02043e04:
    ldrh r3, [lr, #176]
.L02043e08:
    tst r3, #32768
.L02043e0c:
    bne .L02043e04
.L02043e10:
    ldr r1, [sp, #84]
.L02043e14:
    ldr r0, [sp, #80]
.L02043e18:
    rsb r2, r8, r1
.L02043e1c:
    mov r4, r2
.L02043e20:
    mov r5, r4, asr #31
.L02043e24:
    strd r4, [sp, #104]
.L02043e28:
    rsb r3, r9, r0
.L02043e2c:
    ldr ip, [sp, #108]
.L02043e30:
    mov r8, r3
.L02043e34:
    mov r9, r8, asr #31
.L02043e38:
    ldr r6, [sp, #104]
.L02043e3c:
    mul ip, r4, ip
.L02043e40:
    mul r0, r8, r9
.L02043e44:
    umull r4, r5, r6, r6
.L02043e48:
    umull r2, r3, r8, r8
.L02043e4c:
    mov r1, #67108864
.L02043e50:
    ldr r1, [r1, #692]
.L02043e54:
    mov r0, r0, lsl #1
.L02043e58:
    mov ip, ip, lsl #1
.L02043e5c:
    add r3, r0, r3
.L02043e60:
    str r1, [sp, #100]
.L02043e64:
    add r5, ip, r5
.L02043e68:
    mov r1, #1
.L02043e6c:
    mov r6, r2, lsr #16
.L02043e70:
    mov r0, r4, lsr #16
.L02043e74:
    strh r1, [lr, #176]
.L02043e78:
    orr r6, r6, r3, lsl #16
.L02043e7c:
    mov r7, r3, asr #16
.L02043e80:
    orr r0, r0, r5, lsl #16
.L02043e84:
    ldr r2, [pc, #1752]
.L02043e88:
    ldrh r3, [r2, #176]
.L02043e8c:
    tst r3, #32768
.L02043e90:
    bne .L02043e84
.L02043e94:
    add r2, r6, r0
.L02043e98:
    mov r3, r2, asr #31
.L02043e9c:
    ldr r4, [pc, #1728]
.L02043ea0:
    mov r3, r3, lsl #16
.L02043ea4:
    orr r3, r3, r2, lsr #16
.L02043ea8:
    mov r2, r2, lsl #16
.L02043eac:
    strd r2, [r4, #184]
.L02043eb0:
    mov r2, r4
.L02043eb4:
    ldrh r3, [r2, #176]
.L02043eb8:
    tst r3, #32768
.L02043ebc:
    bne .L02043eb4
.L02043ec0:
    ldr r5, [sp, #100]
.L02043ec4:
    mov r3, #67108864
.L02043ec8:
    cmp r5, #0
.L02043ecc:
    ldr ip, [r3, #692]
.L02043ed0:
    ble .L02044144
.L02043ed4:
    cmp ip, #0
.L02043ed8:
    ble .L02044144
.L02043edc:
    mov r6, #1
.L02043ee0:
    ldr r1, [pc, #1660]
.L02043ee4:
    strh r6, [r2, #128]
.L02043ee8:
    ldrh r3, [r1, #128]
.L02043eec:
    tst r3, #32768
.L02043ef0:
    bne .L02043ee8
.L02043ef4:
    mov r3, fp, lsl #16
.L02043ef8:
    orr r3, r3, sl, lsr #16
.L02043efc:
    mov r2, sl, lsl #16
.L02043f00:
    ldr sl, [sp, #100]
.L02043f04:
    strd r2, [r1, #144]
.L02043f08:
    ldr r0, [pc, #1620]
.L02043f0c:
    mov r1, #67108864
.L02043f10:
    str sl, [r1, #664]
.L02043f14:
    ldrh r3, [r0, #128]
.L02043f18:
    tst r3, #32768
.L02043f1c:
    bne .L02043f14
.L02043f20:
    mov r3, #67108864
.L02043f24:
    mov fp, #1
.L02043f28:
    ldr r1, [pc, #1588]
.L02043f2c:
    ldr r5, [r3, #672]
.L02043f30:
    strh fp, [r0, #128]
.L02043f34:
    ldrh r3, [r1, #128]
.L02043f38:
    tst r3, #32768
.L02043f3c:
    bne .L02043f34
.L02043f40:
    ldr r0, [sp, #92]
.L02043f44:
    ldr r4, [sp, #88]
.L02043f48:
    mov r3, r0, lsl #16
.L02043f4c:
    orr r3, r3, r4, lsr #16
.L02043f50:
    mov r2, r4, lsl #16
.L02043f54:
    ldr sl, [sp, #100]
.L02043f58:
    strd r2, [r1, #144]
.L02043f5c:
    ldr r0, [pc, #1536]
.L02043f60:
    mov r1, #67108864
.L02043f64:
    str sl, [r1, #664]
.L02043f68:
    ldrh r3, [r0, #128]
.L02043f6c:
    tst r3, #32768
.L02043f70:
    bne .L02043f68
.L02043f74:
    mov r3, #67108864
.L02043f78:
    mov fp, #1
.L02043f7c:
    ldr r1, [pc, #1504]
.L02043f80:
    ldr lr, [r3, #672]
.L02043f84:
    strh fp, [r0, #128]
.L02043f88:
    ldrh r3, [r1, #128]
.L02043f8c:
    tst r3, #32768
.L02043f90:
    bne .L02043f88
.L02043f94:
    mov r3, r9, lsl #16
.L02043f98:
    orr r3, r3, r8, lsr #16
.L02043f9c:
    mov r2, r8, lsl #16
.L02043fa0:
    strd r2, [r1, #144]
.L02043fa4:
    ldr r0, [pc, #1464]
.L02043fa8:
    mov r1, #67108864
.L02043fac:
    str ip, [r1, #664]
.L02043fb0:
    ldrh r3, [r0, #128]
.L02043fb4:
    tst r3, #32768
.L02043fb8:
    bne .L02043fb0
.L02043fbc:
    mov r3, #67108864
.L02043fc0:
    mov r2, #1
.L02043fc4:
    ldr r1, [pc, #1432]
.L02043fc8:
    ldr r6, [r3, #672]
.L02043fcc:
    strh r2, [r0, #128]
.L02043fd0:
    ldrh r3, [r1, #128]
.L02043fd4:
    tst r3, #32768
.L02043fd8:
    bne .L02043fd0
.L02043fdc:
    ldr r4, [sp, #108]
.L02043fe0:
    ldr sl, [sp, #104]
.L02043fe4:
    mov r3, r4, lsl #16
.L02043fe8:
    orr r3, r3, sl, lsr #16
.L02043fec:
    mov r2, sl, lsl #16
.L02043ff0:
    strd r2, [r1, #144]
.L02043ff4:
    mov r1, #67108864
.L02043ff8:
    str ip, [r1, #664]
.L02043ffc:
    ldr ip, [pc, #1376]
.L02044000:
    ldrh r3, [ip, #128]
.L02044004:
    tst r3, #32768
.L02044008:
    bne .L02043ffc
.L0204400c:
    mov r0, lr
.L02044010:
    mov r1, r0, asr #31
.L02044014:
    strd r0, [sp, #112]
.L02044018:
    ldr r1, [sp, #116]
.L0204401c:
    mov r7, r6, asr #31
.L02044020:
    mul r1, r6, r1
.L02044024:
    mov r3, #67108864
.L02044028:
    mov r8, r5
.L0204402c:
    mov r9, r8, asr #31
.L02044030:
    ldr r4, [r3, #672]
.L02044034:
    mla r0, r7, r0, r1
.L02044038:
    mul fp, r8, r7
.L0204403c:
    ldr ip, [sp, #116]
.L02044040:
    mov r5, r4, asr #31
.L02044044:
    ldr sl, [sp, #112]
.L02044048:
    mul ip, r4, ip
.L0204404c:
    str r0, [sp, #12]
.L02044050:
    str fp, [sp, #8]
.L02044054:
    umull r0, r1, r6, sl
.L02044058:
    umull sl, fp, r8, r6
.L0204405c:
    mul r3, r8, r5
.L02044060:
    str ip, [sp, #4]
.L02044064:
    ldr ip, [sp, #112]
.L02044068:
    strd sl, [sp, #24]
.L0204406c:
    umull sl, fp, r4, ip
.L02044070:
    mla lr, r4, r9, r3
.L02044074:
    umull r2, r3, r8, r4
.L02044078:
    strd sl, [sp, #16]
.L0204407c:
    ldr sl, [sp, #12]
.L02044080:
    add r3, lr, r3
.L02044084:
    add r1, sl, r1
.L02044088:
    ldr fp, [sp, #4]
.L0204408c:
    mov r2, r2, lsr #16
.L02044090:
    mov r0, r0, lsr #16
.L02044094:
    orr r0, r0, r1, lsl #16
.L02044098:
    orr r2, r2, r3, lsl #16
.L0204409c:
    mla ip, r5, ip, fp
.L020440a0:
    rsb r2, r0, r2
.L020440a4:
    ldr r0, [sp, #128]
.L020440a8:
    cmp r2, #0
.L020440ac:
    rsblt r2, r2, #0
.L020440b0:
    ldr lr, [sp, #8]
.L020440b4:
    cmp r0, r2
.L020440b8:
    ldr r2, [sp, #20]
.L020440bc:
    mla lr, r6, r9, lr
.L020440c0:
    add r2, ip, r2
.L020440c4:
    ldr r1, [sp, #28]
.L020440c8:
    str r2, [sp, #20]
.L020440cc:
    ldr r3, [sp, #24]
.L020440d0:
    ldr r6, [sp, #16]
.L020440d4:
    ldr sl, [sp, #20]
.L020440d8:
    add r1, lr, r1
.L020440dc:
    mov r0, r3, lsr #16
.L020440e0:
    mov r2, r6, lsr #16
.L020440e4:
    str r1, [sp, #28]
.L020440e8:
    orr r0, r0, r1, lsl #16
.L020440ec:
    mov r5, r1
.L020440f0:
    orr r2, r2, sl, lsl #16
.L020440f4:
    mov fp, sl
.L020440f8:
    ble .L02044108
.L020440fc:
    add r3, r0, r2
.L02044100:
    cmp r3, #0
.L02044104:
    bgt .L02044204
.L02044108:
    ldr ip, [sp, #76]
.L0204410c:
    ldr r0, [sp, #140]
.L02044110:
    ldr r1, [sp, #144]
.L02044114:
    add ip, ip, #1
.L02044118:
    add r0, r0, #4
.L0204411c:
    add r1, r1, #4
.L02044120:
    cmp ip, #3
.L02044124:
    str ip, [sp, #76]
.L02044128:
    str r0, [sp, #140]
.L0204412c:
    str r1, [sp, #144]
.L02044130:
    bne .L02043cfc
.L02044134:
    ldr r0, [sp, #148]
.L02044138:
    bl _ZN9b2Polygon8IsUsableEv
.L0204413c:
    cmp r0, #0
.L02044140:
    bne .L020441e0
.L02044144:
    ldr r0, [sp, #68]
.L02044148:
    add r0, r0, #1
.L0204414c:
    str r0, [sp, #68]
.L02044150:
    add r0, sp, #192
.L02044154:
    bl _ZN9b2PolygonD1Ev
.L02044158:
    ldr r3, [sp, #148]
.L0204415c:
    ldr r1, [sp, #56]
.L02044160:
    ldr r2, [sp, #68]
.L02044164:
    add r3, r3, #20
.L02044168:
    cmp r1, r2
.L0204416c:
    str r3, [sp, #148]
.L02044170:
    bne .L02043b8c
.L02044174:
    ldr r4, [sp, #40]
.L02044178:
    cmp r4, #0
.L0204417c:
    beq .L02043a2c
.L02044180:
    ldr r3, [r4, #-4]
.L02044184:
    ldr r5, [sp, #40]
.L02044188:
    mov r2, r3, lsl #4
.L0204418c:
    mov r3, r3, lsl #2
.L02044190:
    add r3, r3, r2
.L02044194:
    add r4, r4, r3
.L02044198:
    cmp r5, r4
.L0204419c:
    beq .L020441b8
.L020441a0:
    sub r4, r4, #20
.L020441a4:
    mov r0, r4
.L020441a8:
    bl _ZN9b2PolygonD1Ev
.L020441ac:
    ldr r6, [sp, #40]
.L020441b0:
    cmp r6, r4
.L020441b4:
    bne .L020441a0
.L020441b8:
    ldr sl, [sp, #40]
.L020441bc:
    sub r0, sl, #8
.L020441c0:
    bl _ZdaPv
.L020441c4:
    b .L02043a2c
.L020441c8:
    ldr r4, [sp, #144]
.L020441cc:
    str r4, [sp, #136]
.L020441d0:
    ldr r5, [sp, #140]
.L020441d4:
    add r5, r5, #4
.L020441d8:
    str r5, [sp, #132]
.L020441dc:
    b .L02043d2c
.L020441e0:
    ldr r0, [sp, #148]
.L020441e4:
    ldr r1, [sp, #72]
.L020441e8:
    bl _ZN9b2Polygon5AddToER12b2PolygonDef
.L020441ec:
    ldr r0, [sp, #36]
.L020441f0:
    ldr r1, [sp, #72]
.L020441f4:
    bl _ZN6b2Body11CreateShapeEP10b2ShapeDef
.L020441f8:
    ldr r0, [sp, #36]
.L020441fc:
    bl _ZN6b2Body17SetMassFromShapesEv
.L02044200:
    b .L02044144
.L02044204:
    ldr ip, [sp, #120]
.L02044208:
    ldr r0, [sp, #80]
.L0204420c:
    ldr r1, [sp, #124]
.L02044210:
    ldr r4, [sp, #84]
.L02044214:
    rsb r3, r0, ip
.L02044218:
    rsb r2, r4, r1
.L0204421c:
    mov sl, r2
.L02044220:
    mov fp, sl, asr #31
.L02044224:
    mov r8, r3
.L02044228:
    mov r9, r8, asr #31
.L0204422c:
    mul ip, r8, r9
.L02044230:
    mul lr, sl, fp
.L02044234:
    umull r2, r3, r8, r8
.L02044238:
    umull r0, r1, sl, sl
.L0204423c:
    ldr r5, [pc, #800]
.L02044240:
    mov r6, #1
.L02044244:
    mov ip, ip, lsl #1
.L02044248:
    mov lr, lr, lsl #1
.L0204424c:
    add r3, ip, r3
.L02044250:
    strh r6, [r5, #176]
.L02044254:
    add r1, lr, r1
.L02044258:
    mov r6, r2, lsr #16
.L0204425c:
    mov r4, r0, lsr #16
.L02044260:
    orr r6, r6, r3, lsl #16
.L02044264:
    mov r7, r3, asr #16
.L02044268:
    orr r4, r4, r1, lsl #16
.L0204426c:
    ldr ip, [pc, #752]
.L02044270:
    ldrh r3, [ip, #176]
.L02044274:
    tst r3, #32768
.L02044278:
    bne .L0204426c
.L0204427c:
    add r2, r6, r4
.L02044280:
    mov r3, r2, asr #31
.L02044284:
    mov r3, r3, lsl #16
.L02044288:
    orr r3, r3, r2, lsr #16
.L0204428c:
    mov r2, r2, lsl #16
.L02044290:
    strd r2, [ip, #184]
.L02044294:
    mov r2, ip
.L02044298:
    ldrh r3, [r2, #176]
.L0204429c:
    tst r3, #32768
.L020442a0:
    bne .L02044298
.L020442a4:
    mov r3, #67108864
.L020442a8:
    ldr r5, [r3, #692]
.L020442ac:
    cmp r5, #0
.L020442b0:
    beq .L02044144
.L020442b4:
    mov r0, #1
.L020442b8:
    ldr r1, [pc, #676]
.L020442bc:
    strh r0, [r2, #128]
.L020442c0:
    ldrh r3, [r1, #128]
.L020442c4:
    tst r3, #32768
.L020442c8:
    bne .L020442c0
.L020442cc:
    mov r3, r9, lsl #16
.L020442d0:
    orr r3, r3, r8, lsr #16
.L020442d4:
    mov r2, r8, lsl #16
.L020442d8:
    strd r2, [r1, #144]
.L020442dc:
    ldr r0, [pc, #640]
.L020442e0:
    mov r1, #67108864
.L020442e4:
    str r5, [r1, #664]
.L020442e8:
    ldrh r3, [r0, #128]
.L020442ec:
    tst r3, #32768
.L020442f0:
    bne .L020442e8
.L020442f4:
    mov r3, #67108864
.L020442f8:
    mov r2, #1
.L020442fc:
    ldr r1, [pc, #608]
.L02044300:
    ldr r9, [r3, #672]
.L02044304:
    strh r2, [r0, #128]
.L02044308:
    ldrh r3, [r1, #128]
.L0204430c:
    tst r3, #32768
.L02044310:
    bne .L02044308
.L02044314:
    mov r3, fp, lsl #16
.L02044318:
    orr r3, r3, sl, lsr #16
.L0204431c:
    mov r2, sl, lsl #16
.L02044320:
    strd r2, [r1, #144]
.L02044324:
    ldr r4, [pc, #568]
.L02044328:
    mov r1, #67108864
.L0204432c:
    str r5, [r1, #664]
.L02044330:
    ldrh r3, [r4, #128]
.L02044334:
    tst r3, #32768
.L02044338:
    bne .L02044330
.L0204433c:
    mov r3, #67108864
.L02044340:
    add r0, sp, #260
.L02044344:
    add r1, sp, #192
.L02044348:
    ldr r6, [r3, #672]
.L0204434c:
    bl _ZN9b2Polygon7GetAreaEv
.L02044350:
    ldr r2, [sp, #260]
.L02044354:
    mov r3, #1
.L02044358:
    strh r3, [r4, #128]
.L0204435c:
    mov r3, r2, asr #31
.L02044360:
    mov r3, r3, lsl #17
.L02044364:
    orr r3, r3, r2, lsr #15
.L02044368:
    mov r2, r2, lsl #17
.L0204436c:
    mov r0, r2, lsr #16
.L02044370:
    ldr ip, [pc, #492]
.L02044374:
    orr r0, r0, r3, lsl #16
.L02044378:
    ldrh r3, [ip, #128]
.L0204437c:
    tst r3, #32768
.L02044380:
    bne .L02044378
.L02044384:
    mov r2, r0
.L02044388:
    mov r3, r2, asr #31
.L0204438c:
    mov r3, r3, lsl #16
.L02044390:
    orr r3, r3, r2, lsr #16
.L02044394:
    mov r1, #67108864
.L02044398:
    mov r2, r2, lsl #16
.L0204439c:
    ldr r0, [pc, #448]
.L020443a0:
    strd r2, [ip, #144]
.L020443a4:
    str r5, [r1, #664]
.L020443a8:
    ldrh r3, [r0, #128]
.L020443ac:
    tst r3, #32768
.L020443b0:
    bne .L020443a8
.L020443b4:
    mov r3, #67108864
.L020443b8:
    ldr r4, [r3, #672]
.L020443bc:
    mov r0, r6
.L020443c0:
    mov r1, r0, asr #31
.L020443c4:
    mov r5, r4, asr #31
.L020443c8:
    mul ip, r0, r5
.L020443cc:
    umull r2, r3, r0, r4
.L020443d0:
    mla lr, r4, r1, ip
.L020443d4:
    ldr r7, [sp, #192]
.L020443d8:
    ldr r6, [sp, #140]
.L020443dc:
    add r3, lr, r3
.L020443e0:
    ldr r8, [r6, r7]
.L020443e4:
    rsb r0, r9, #0
.L020443e8:
    mov r2, r2, lsr #16
.L020443ec:
    mov r1, r0, asr #31
.L020443f0:
    orr r2, r2, r3, lsl #16
.L020443f4:
    add r8, r8, r2
.L020443f8:
    mul lr, r4, r1
.L020443fc:
    ldr sl, [sp, #136]
.L02044400:
    str r8, [sp, #248]
.L02044404:
    ldr ip, [sl, r7]
.L02044408:
    ldr fp, [sp, #140]
.L0204440c:
    str ip, [sp, #252]
.L02044410:
    mla r6, r0, r5, lr
.L02044414:
    umull r2, r3, r4, r0
.L02044418:
    ldr ip, [fp, r7]
.L0204441c:
    ldr r0, [sp, #196]
.L02044420:
    str ip, [sp, #256]
.L02044424:
    ldr lr, [fp, r0]
.L02044428:
    add r3, r6, r3
.L0204442c:
    mov r2, r2, lsr #16
.L02044430:
    orr r2, r2, r3, lsl #16
.L02044434:
    add lr, lr, r2
.L02044438:
    str lr, [sp, #236]
.L0204443c:
    ldr r3, [sl, r0]
.L02044440:
    ldr ip, [sp, #132]
.L02044444:
    str r3, [sp, #240]
.L02044448:
    ldr r2, [fp, r0]
.L0204444c:
    str r8, [sp, #224]
.L02044450:
    str r2, [sp, #244]
.L02044454:
    ldr r3, [fp, r7]
.L02044458:
    add r6, sp, #172
.L0204445c:
    str r3, [sp, #228]
.L02044460:
    ldr r2, [ip, r7]
.L02044464:
    str lr, [sp, #212]
.L02044468:
    str r2, [sp, #232]
.L0204446c:
    ldr r3, [fp, r0]
.L02044470:
    add r1, sp, #248
.L02044474:
    str r3, [sp, #216]
.L02044478:
    ldr ip, [ip, r0]
.L0204447c:
    add r2, sp, #236
.L02044480:
    mov r3, #3
.L02044484:
    mov r0, r6
.L02044488:
    add r5, sp, #152
.L0204448c:
    str ip, [sp, #220]
.L02044490:
    bl _ZN9b2PolygonC1EP5FixedS1_l
.L02044494:
    add r1, sp, #224
.L02044498:
    add r2, sp, #212
.L0204449c:
    mov r3, #3
.L020444a0:
    mov r0, r5
.L020444a4:
    bl _ZN9b2PolygonC1EP5FixedS1_l
.L020444a8:
    mov r0, r6
.L020444ac:
    bl _ZN9b2Polygon8IsUsableEv
.L020444b0:
    cmp r0, #0
.L020444b4:
    bne .L020444dc
.L020444b8:
    mov r0, r5
.L020444bc:
    bl _ZN9b2Polygon8IsUsableEv
.L020444c0:
    cmp r0, #0
.L020444c4:
    bne .L0204450c
.L020444c8:
    mov r0, r5
.L020444cc:
    bl _ZN9b2PolygonD1Ev
.L020444d0:
    mov r0, r6
.L020444d4:
    bl _ZN9b2PolygonD1Ev
.L020444d8:
    b .L02044144
.L020444dc:
    mov r0, r6
.L020444e0:
    ldr r1, [sp, #72]
.L020444e4:
    bl _ZN9b2Polygon5AddToER12b2PolygonDef
.L020444e8:
    ldr r1, [sp, #72]
.L020444ec:
    ldr r0, [sp, #36]
.L020444f0:
    bl _ZN6b2Body11CreateShapeEP10b2ShapeDef
.L020444f4:
    ldr r0, [sp, #36]
.L020444f8:
    bl _ZN6b2Body17SetMassFromShapesEv
.L020444fc:
    ldr r4, [sp, #64]
.L02044500:
    add r4, r4, #1
.L02044504:
    str r4, [sp, #64]
.L02044508:
    b .L020444b8
.L0204450c:
    ldr sl, [sp, #64]
.L02044510:
    ldr fp, [sp, #68]
.L02044514:
    ldr ip, [sp, #44]
.L02044518:
    add r4, sl, fp
.L0204451c:
    mov r2, r4, lsl #4
.L02044520:
    mov r4, r4, lsl #2
.L02044524:
    add r4, r4, r2
.L02044528:
    mov r3, r4, lsl #2
.L0204452c:
    add r4, r4, r3
.L02044530:
    add r4, ip, r4
.L02044534:
    mov r0, r5
.L02044538:
    mov r1, r4
.L0204453c:
    bl _ZN9b2Polygon5AddToER12b2PolygonDef
.L02044540:
    ldr r0, [sp, #36]
.L02044544:
    mov r1, r4
.L02044548:
    bl _ZN6b2Body11CreateShapeEP10b2ShapeDef
.L0204454c:
    ldr r0, [sp, #36]
.L02044550:
    bl _ZN6b2Body17SetMassFromShapesEv
.L02044554:
    b .L020444c8
.L02044558:
    .long _ZTV12b2PolygonDef + 8  /* literal data */
.L0204455c:
    .long 0x00003333  /* literal data */
.L02044560:
    .long b2_angularSlop  /* literal data */
.L02044564:
    .long 0x04000200  /* literal data */
.size _Z23DecomposeConvexAndAddToP7b2WorldP9b2PolygonP6b2BodyP12b2PolygonDef, .-_Z23DecomposeConvexAndAddToP7b2WorldP9b2PolygonP6b2BodyP12b2PolygonDef

.section .text.polygon.residual.45,"ax",%progbits
.balign 4
.arm
.global _ZN10b2PolyNode21GetRightestConnectionEPS_
.type _ZN10b2PolyNode21GetRightestConnectionEPS_, %function
_ZN10b2PolyNode21GetRightestConnectionEPS_:
.L02044568:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0204456c:
    sub sp, sp, #252
.L02044570:
    str r0, [sp, #36]
.L02044574:
    ldr r0, [r0, #136]
.L02044578:
    str r1, [sp, #32]
.L0204457c:
    cmp r0, #0
.L02044580:
    streq r0, [sp, #40]
.L02044584:
    beq .L020449fc
.L02044588:
    ldr r1, [sp, #32]
.L0204458c:
    ldr r3, [sp, #36]
.L02044590:
    ldr r0, [r1]
.L02044594:
    ldr r2, [r3]
.L02044598:
    ldr r1, [r1, #4]
.L0204459c:
    ldr r3, [r3, #4]
.L020445a0:
    rsb sl, r0, r2
.L020445a4:
    rsb fp, r1, r3
.L020445a8:
    eor r2, fp, fp, asr #31
.L020445ac:
    sub r2, r2, fp, asr #31
.L020445b0:
    eor r0, sl, sl, asr #31
.L020445b4:
    sub r0, r0, sl, asr #31
.L020445b8:
    add r0, r2, r0
.L020445bc:
    str sl, [sp, #104]
.L020445c0:
    str fp, [sp, #108]
.L020445c4:
    bl __floatsisf
.L020445c8:
    mov r1, #931135488
.L020445cc:
    bl __aeabi_fmul
.L020445d0:
    mov r1, #0
.L020445d4:
    mov r4, r0
.L020445d8:
    bl __aeabi_fcmpeq
.L020445dc:
    cmp r0, #0
.L020445e0:
    beq .L02044f40
.L020445e4:
    ldr r0, [pc, #3776]
.L020445e8:
    ldr r1, [pc, #3776]
.L020445ec:
    ldr r2, [pc, #3776]
.L020445f0:
    bl __assert
.L020445f4:
    ldr r3, [sp, #36]
.L020445f8:
    ldr r0, [r3, #136]
.L020445fc:
    cmp r0, #0
.L02044600:
    ble .L02045490
.L02044604:
    ldr r3, [sp, #104]
.L02044608:
    mov r4, #0
.L0204460c:
    ldr r2, [sp, #108]
.L02044610:
    str r4, [sp, #40]
.L02044614:
    mov r4, r3
.L02044618:
    mov r5, r4, asr #31
.L0204461c:
    strd r4, [sp, #64]
.L02044620:
    mov r4, r2
.L02044624:
    mov r5, r4, asr #31
.L02044628:
    strd r4, [sp, #48]
.L0204462c:
    ldr r5, [sp, #36]
.L02044630:
    mov r9, #0
.L02044634:
    str r5, [sp, #100]
.L02044638:
    str r9, [sp, #44]
.L0204463c:
    b .L020448f0
.L02044640:
    mov r4, sl
.L02044644:
    mov r5, r4, asr #31
.L02044648:
    mov r0, fp
.L0204464c:
    mov r1, r0, asr #31
.L02044650:
    strd r4, [sp, #8]
.L02044654:
    stmia sp, {r0, r1}
.L02044658:
    ldr r0, [pc, #3660]
.L0204465c:
    ldr r1, [pc, #3668]
.L02044660:
    ldr r2, [pc, #3668]
.L02044664:
    bl __assert
.L02044668:
    ldr r1, [sp, #64]
.L0204466c:
    ldr r3, [sp, #12]
.L02044670:
    ldr r5, [sp, #64]
.L02044674:
    mul r3, r1, r3
.L02044678:
    ldr r4, [sp, #48]
.L0204467c:
    ldr r2, [sp, #4]
.L02044680:
    ldr r1, [sp, #4]
.L02044684:
    mul r2, r4, r2
.L02044688:
    mul r1, r5, r1
.L0204468c:
    ldr r9, [sp, #8]
.L02044690:
    ldr r0, [sp, #52]
.L02044694:
    ldr lr, [sp, #68]
.L02044698:
    ldr ip, [sp]
.L0204469c:
    mul r0, r9, r0
.L020446a0:
    ldr r8, [sp, #52]
.L020446a4:
    ldr sl, [sp, #68]
.L020446a8:
    mla lr, r9, lr, r3
.L020446ac:
    mov r3, r5
.L020446b0:
    umull r4, r5, r3, ip
.L020446b4:
    ldr fp, [sp, #48]
.L020446b8:
    mla r8, ip, r8, r2
.L020446bc:
    mla sl, ip, sl, r1
.L020446c0:
    ldr ip, [sp, #12]
.L020446c4:
    mov r1, fp
.L020446c8:
    mla ip, fp, ip, r0
.L020446cc:
    ldr r0, [sp, #8]
.L020446d0:
    mov r9, r3
.L020446d4:
    umull r6, r7, r0, fp
.L020446d8:
    ldr fp, [sp]
.L020446dc:
    umull r2, r3, r9, r0
.L020446e0:
    mov r9, r1
.L020446e4:
    umull r0, r1, r9, fp
.L020446e8:
    add r3, lr, r3
.L020446ec:
    mov fp, r2, lsr #16
.L020446f0:
    ldr r9, [sp, #40]
.L020446f4:
    add r7, ip, r7
.L020446f8:
    mov r2, r3, asr #16
.L020446fc:
    orr ip, fp, r3, lsl #16
.L02044700:
    add r1, r8, r1
.L02044704:
    add r5, sl, r5
.L02044708:
    cmp r9, #0
.L0204470c:
    str ip, [sp, #72]
.L02044710:
    mov r9, r4, lsr #16
.L02044714:
    mov ip, r6, lsr #16
.L02044718:
    str r2, [sp, #76]
.L0204471c:
    mov r2, r0, lsr #16
.L02044720:
    mov r0, r1, asr #16
.L02044724:
    orr r3, r2, r1, lsl #16
.L02044728:
    str r0, [sp, #60]
.L0204472c:
    orr fp, r9, r5, lsl #16
.L02044730:
    mov r4, r5, asr #16
.L02044734:
    orr r0, ip, r7, lsl #16
.L02044738:
    mov r6, r7, asr #16
.L0204473c:
    str r3, [sp, #56]
.L02044740:
    str fp, [sp, #88]
.L02044744:
    str r4, [sp, #92]
.L02044748:
    str r0, [sp, #80]
.L0204474c:
    str r6, [sp, #84]
.L02044750:
    beq .L02044d88
.L02044754:
    ldr r1, [sp, #36]
.L02044758:
    ldr r3, [sp, #40]
.L0204475c:
    ldr r0, [r1]
.L02044760:
    ldr r2, [r3]
.L02044764:
    ldr r1, [r1, #4]
.L02044768:
    ldr r3, [r3, #4]
.L0204476c:
    rsb r5, r0, r2
.L02044770:
    rsb r6, r1, r3
.L02044774:
    eor r2, r6, r6, asr #31
.L02044778:
    sub r2, r2, r6, asr #31
.L0204477c:
    eor r0, r5, r5, asr #31
.L02044780:
    sub r0, r0, r5, asr #31
.L02044784:
    add r0, r2, r0
.L02044788:
    bl __floatsisf
.L0204478c:
    mov r1, #931135488
.L02044790:
    bl __aeabi_fmul
.L02044794:
    mov r1, #0
.L02044798:
    mov r4, r0
.L0204479c:
    bl __aeabi_fcmpeq
.L020447a0:
    cmp r0, #0
.L020447a4:
    beq .L02044a08
.L020447a8:
    mov r0, r5
.L020447ac:
    mov r1, r0, asr #31
.L020447b0:
    mov r2, r6
.L020447b4:
    mov r3, r2, asr #31
.L020447b8:
    strd r0, [sp, #24]
.L020447bc:
    strd r2, [sp, #16]
.L020447c0:
    ldr r4, [sp, #48]
.L020447c4:
    ldr r1, [sp, #64]
.L020447c8:
    ldr r3, [sp, #28]
.L020447cc:
    ldr ip, [sp, #28]
.L020447d0:
    ldr r2, [sp, #20]
.L020447d4:
    ldr r5, [sp, #64]
.L020447d8:
    mul r3, r1, r3
.L020447dc:
    mul ip, r4, ip
.L020447e0:
    ldr r1, [sp, #20]
.L020447e4:
    mul r2, r4, r2
.L020447e8:
    ldr fp, [sp, #24]
.L020447ec:
    ldr r0, [sp, #16]
.L020447f0:
    mul r1, r5, r1
.L020447f4:
    ldr r8, [sp, #68]
.L020447f8:
    ldr lr, [sp, #52]
.L020447fc:
    ldr sl, [sp, #52]
.L02044800:
    umull r6, r7, r5, r0
.L02044804:
    mla lr, fp, lr, ip
.L02044808:
    mla r8, fp, r8, r3
.L0204480c:
    ldr r9, [sp, #68]
.L02044810:
    mov r3, r5
.L02044814:
    mov r5, fp
.L02044818:
    ldr fp, [sp, #48]
.L0204481c:
    mla sl, r0, sl, r2
.L02044820:
    mov ip, r5
.L02044824:
    mov r2, r3
.L02044828:
    mla r9, r0, r9, r1
.L0204482c:
    umull r0, r1, fp, r5
.L02044830:
    umull r4, r5, r2, ip
.L02044834:
    ldr ip, [sp, #16]
.L02044838:
    add r7, r9, r7
.L0204483c:
    umull r2, r3, fp, ip
.L02044840:
    add r1, lr, r1
.L02044844:
    add r5, r8, r5
.L02044848:
    add r3, sl, r3
.L0204484c:
    mov r4, r4, lsr #16
.L02044850:
    mov r2, r2, lsr #16
.L02044854:
    mov r6, r6, lsr #16
.L02044858:
    mov r0, r0, lsr #16
.L0204485c:
    orr r2, r2, r3, lsl #16
.L02044860:
    orr r0, r0, r1, lsl #16
.L02044864:
    orr r4, r4, r5, lsl #16
.L02044868:
    orr r6, r6, r7, lsl #16
.L0204486c:
    rsb r6, r0, r6
.L02044870:
    add r4, r4, r2
.L02044874:
    ldr r0, [sp, #88]
.L02044878:
    ldr r2, [sp, #80]
.L0204487c:
    ldr r5, [sp, #72]
.L02044880:
    ldr r9, [sp, #56]
.L02044884:
    rsb r1, r2, r0
.L02044888:
    add r3, r5, r9
.L0204488c:
    str r1, [sp, #192]
.L02044890:
    str r3, [sp, #196]
.L02044894:
    str r6, [sp, #200]
.L02044898:
    str r4, [sp, #204]
.L0204489c:
    add r0, sp, #192
.L020448a0:
    add r1, sp, #196
.L020448a4:
    add r2, sp, #200
.L020448a8:
    add r3, sp, #204
.L020448ac:
    bl _Z9IsRighter5FixedS_S_S_
.L020448b0:
    cmp r0, #0
.L020448b4:
    mov r7, r7, asr #16
.L020448b8:
    beq .L020449c8
.L020448bc:
    ldr fp, [sp, #100]
.L020448c0:
    ldr ip, [sp, #36]
.L020448c4:
    ldr fp, [fp, #8]
.L020448c8:
    ldr r0, [ip, #136]
.L020448cc:
    str fp, [sp, #40]
.L020448d0:
    ldr r3, [sp, #44]
.L020448d4:
    ldr r4, [sp, #100]
.L020448d8:
    add r3, r3, #1
.L020448dc:
    add r4, r4, #4
.L020448e0:
    cmp r0, r3
.L020448e4:
    str r3, [sp, #44]
.L020448e8:
    str r4, [sp, #100]
.L020448ec:
    ble .L020449f0
.L020448f0:
    ldr fp, [sp, #100]
.L020448f4:
    ldr ip, [sp, #32]
.L020448f8:
    ldr r1, [fp, #8]
.L020448fc:
    cmp ip, r1
.L02044900:
    beq .L020448d0
.L02044904:
    ldr r2, [sp, #36]
.L02044908:
    ldr r0, [r1, #4]
.L0204490c:
    ldr r3, [r2]
.L02044910:
    ldr r1, [r1]
.L02044914:
    ldr r2, [r2, #4]
.L02044918:
    rsb sl, r3, r1
.L0204491c:
    rsb fp, r2, r0
.L02044920:
    eor r3, fp, fp, asr #31
.L02044924:
    sub r3, r3, fp, asr #31
.L02044928:
    eor r0, sl, sl, asr #31
.L0204492c:
    sub r0, r0, sl, asr #31
.L02044930:
    add r0, r3, r0
.L02044934:
    bl __floatsisf
.L02044938:
    mov r1, #931135488
.L0204493c:
    bl __aeabi_fmul
.L02044940:
    mov r1, #0
.L02044944:
    mov r4, r0
.L02044948:
    bl __aeabi_fcmpeq
.L0204494c:
    cmp r0, #0
.L02044950:
    bne .L02044640
.L02044954:
    mov r0, r4
.L02044958:
    bl __aeabi_f2d
.L0204495c:
    ldr r2, [pc, #2908]
.L02044960:
    ldr r3, [pc, #2908]
.L02044964:
    bl __aeabi_dcmplt
.L02044968:
    cmp r0, #0
.L0204496c:
    beq .L02044b44
.L02044970:
    mov r5, sl, lsl #8
.L02044974:
    mov r6, fp, lsl #8
.L02044978:
    eor r3, r6, r6, asr #31
.L0204497c:
    sub r3, r3, r6, asr #31
.L02044980:
    eor r0, r5, r5, asr #31
.L02044984:
    sub r0, r0, r5, asr #31
.L02044988:
    add r0, r3, r0
.L0204498c:
    bl __floatsisf
.L02044990:
    mov r1, #931135488
.L02044994:
    bl __aeabi_fmul
.L02044998:
    mov r1, #0
.L0204499c:
    mov r4, r0
.L020449a0:
    bl __aeabi_fcmpeq
.L020449a4:
    cmp r0, #0
.L020449a8:
    beq .L02044e6c
.L020449ac:
    mov r2, sl
.L020449b0:
    mov r3, r2, asr #31
.L020449b4:
    mov r4, fp
.L020449b8:
    mov r5, r4, asr #31
.L020449bc:
    strd r2, [sp, #8]
.L020449c0:
    stmia sp, {r4, r5}
.L020449c4:
    b .L02044658
.L020449c8:
    ldr r2, [sp, #36]
.L020449cc:
    ldr r3, [sp, #44]
.L020449d0:
    ldr r4, [sp, #100]
.L020449d4:
    ldr r0, [r2, #136]
.L020449d8:
    add r3, r3, #1
.L020449dc:
    add r4, r4, #4
.L020449e0:
    cmp r0, r3
.L020449e4:
    str r3, [sp, #44]
.L020449e8:
    str r4, [sp, #100]
.L020449ec:
    bgt .L020448f0
.L020449f0:
    ldr r5, [sp, #40]
.L020449f4:
    cmp r5, #0
.L020449f8:
    beq .L02045490
.L020449fc:
    ldr r0, [sp, #40]
.L02044a00:
    add sp, sp, #252
.L02044a04:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02044a08:
    mov r0, r4
.L02044a0c:
    bl __aeabi_f2d
.L02044a10:
    ldr r2, [pc, #2728]
.L02044a14:
    ldr r3, [pc, #2728]
.L02044a18:
    bl __aeabi_dcmplt
.L02044a1c:
    cmp r0, #0
.L02044a20:
    beq .L02044ccc
.L02044a24:
    mov r2, r6, lsl #8
.L02044a28:
    mov r3, r5, lsl #8
.L02044a2c:
    add r0, sp, #240
.L02044a30:
    add r1, sp, #176
.L02044a34:
    str r3, [sp, #176]
.L02044a38:
    str r2, [sp, #180]
.L02044a3c:
    ldr r3, [pc, #2708]
.L02044a40:
    blx r3
.L02044a44:
    ldr r2, [sp, #240]
.L02044a48:
    mov r0, r5
.L02044a4c:
    mov r1, r0, asr #31
.L02044a50:
    mov r3, r2, asr #31
.L02044a54:
    strd r0, [sp, #24]
.L02044a58:
    mov r3, r3, lsl #8
.L02044a5c:
    orr r3, r3, r2, lsr #24
.L02044a60:
    mov r2, r2, lsl #8
.L02044a64:
    mov r2, r2, lsr #16
.L02044a68:
    orr r2, r2, r3, lsl #16
.L02044a6c:
    mov r5, r2
.L02044a70:
    mov r2, r6
.L02044a74:
    mov r3, r2, asr #31
.L02044a78:
    strd r2, [sp, #16]
.L02044a7c:
    cmp r5, #3
.L02044a80:
    ble .L020447c0
.L02044a84:
    ldr r3, [pc, #2632]
.L02044a88:
    mov r4, #1
.L02044a8c:
    strh r4, [r3, #128]
.L02044a90:
    mov r1, r3
.L02044a94:
    ldrh r3, [r1, #128]
.L02044a98:
    tst r3, #32768
.L02044a9c:
    bne .L02044a94
.L02044aa0:
    ldr r9, [sp, #28]
.L02044aa4:
    ldr fp, [sp, #24]
.L02044aa8:
    mov r3, r9, lsl #16
.L02044aac:
    orr r3, r3, fp, lsr #16
.L02044ab0:
    mov r2, fp, lsl #16
.L02044ab4:
    mov r0, #67108864
.L02044ab8:
    ldr lr, [pc, #2580]
.L02044abc:
    strd r2, [r1, #144]
.L02044ac0:
    str r5, [r0, #664]
.L02044ac4:
    ldrh r3, [lr, #128]
.L02044ac8:
    tst r3, #32768
.L02044acc:
    bne .L02044ac4
.L02044ad0:
    mov r1, #67108864
.L02044ad4:
    mov r2, #1
.L02044ad8:
    ldr r4, [pc, #2548]
.L02044adc:
    ldr r0, [r1, #672]
.L02044ae0:
    strh r2, [lr, #128]
.L02044ae4:
    ldrh r3, [r4, #128]
.L02044ae8:
    tst r3, #32768
.L02044aec:
    bne .L02044ae4
.L02044af0:
    ldr r9, [sp, #20]
.L02044af4:
    ldr fp, [sp, #16]
.L02044af8:
    mov r3, r9, lsl #16
.L02044afc:
    orr r3, r3, fp, lsr #16
.L02044b00:
    mov r2, fp, lsl #16
.L02044b04:
    mov r1, #67108864
.L02044b08:
    ldr lr, [pc, #2500]
.L02044b0c:
    strd r2, [r4, #144]
.L02044b10:
    str r5, [r1, #664]
.L02044b14:
    ldrh r3, [lr, #128]
.L02044b18:
    tst r3, #32768
.L02044b1c:
    bne .L02044b14
.L02044b20:
    mov r2, #67108864
.L02044b24:
    ldr r3, [r2, #672]
.L02044b28:
    mov r4, r0
.L02044b2c:
    mov r5, r4, asr #31
.L02044b30:
    mov r0, r3
.L02044b34:
    mov r1, r0, asr #31
.L02044b38:
    strd r4, [sp, #24]
.L02044b3c:
    strd r0, [sp, #16]
.L02044b40:
    b .L020447c0
.L02044b44:
    mov r0, r4
.L02044b48:
    ldr r1, [pc, #2432]
.L02044b4c:
    bl __aeabi_fcmplt
.L02044b50:
    cmp r0, #0
.L02044b54:
    beq .L02044da0
.L02044b58:
    mov r4, fp
.L02044b5c:
    mov r5, r4, asr #31
.L02044b60:
    mov r2, sl
.L02044b64:
    mov r3, r2, asr #31
.L02044b68:
    stmia sp, {r4, r5}
.L02044b6c:
    strd r2, [sp, #8]
.L02044b70:
    ldr ip, [sp, #12]
.L02044b74:
    ldr lr, [sp, #4]
.L02044b78:
    ldr r5, [sp, #8]
.L02044b7c:
    ldr r9, [sp]
.L02044b80:
    mul ip, r2, ip
.L02044b84:
    mul lr, r4, lr
.L02044b88:
    umull r2, r3, r5, r5
.L02044b8c:
    umull r0, r1, r9, r9
.L02044b90:
    ldr r4, [pc, #2364]
.L02044b94:
    mov ip, ip, lsl #1
.L02044b98:
    mov lr, lr, lsl #1
.L02044b9c:
    mov fp, #1
.L02044ba0:
    add r3, ip, r3
.L02044ba4:
    add r1, lr, r1
.L02044ba8:
    strh fp, [r4, #176]
.L02044bac:
    mov ip, r4
.L02044bb0:
    mov r8, r0, lsr #16
.L02044bb4:
    mov r4, r2, lsr #16
.L02044bb8:
    orr r4, r4, r3, lsl #16
.L02044bbc:
    orr r8, r8, r1, lsl #16
.L02044bc0:
    ldrh r3, [ip, #176]
.L02044bc4:
    tst r3, #32768
.L02044bc8:
    bne .L02044bc0
.L02044bcc:
    add r2, r4, r8
.L02044bd0:
    mov r3, r2, asr #31
.L02044bd4:
    mov r3, r3, lsl #16
.L02044bd8:
    orr r3, r3, r2, lsr #16
.L02044bdc:
    mov r2, r2, lsl #16
.L02044be0:
    strd r2, [ip, #184]
.L02044be4:
    ldr r2, [pc, #2280]
.L02044be8:
    ldrh r3, [r2, #176]
.L02044bec:
    tst r3, #32768
.L02044bf0:
    bne .L02044be8
.L02044bf4:
    mov ip, #67108864
.L02044bf8:
    ldr r5, [ip, #692]
.L02044bfc:
    cmp r5, #3
.L02044c00:
    ble .L02044658
.L02044c04:
    ldr r3, [pc, #2248]
.L02044c08:
    mov r1, #1
.L02044c0c:
    strh r1, [r3, #128]
.L02044c10:
    mov r1, r3
.L02044c14:
    ldrh r3, [r1, #128]
.L02044c18:
    tst r3, #32768
.L02044c1c:
    bne .L02044c14
.L02044c20:
    ldr r4, [sp, #12]
.L02044c24:
    ldr r9, [sp, #8]
.L02044c28:
    mov r3, r4, lsl #16
.L02044c2c:
    orr r3, r3, r9, lsr #16
.L02044c30:
    mov r2, r9, lsl #16
.L02044c34:
    mov ip, #67108864
.L02044c38:
    ldr lr, [pc, #2196]
.L02044c3c:
    strd r2, [r1, #144]
.L02044c40:
    str r5, [ip, #664]
.L02044c44:
    ldrh r3, [lr, #128]
.L02044c48:
    tst r3, #32768
.L02044c4c:
    bne .L02044c44
.L02044c50:
    mov r1, #67108864
.L02044c54:
    mov r2, #1
.L02044c58:
    ldr r4, [pc, #2164]
.L02044c5c:
    ldr r0, [r1, #672]
.L02044c60:
    strh r2, [lr, #128]
.L02044c64:
    ldrh r3, [r4, #128]
.L02044c68:
    tst r3, #32768
.L02044c6c:
    bne .L02044c64
.L02044c70:
    ldr r9, [sp, #4]
.L02044c74:
    ldr fp, [sp]
.L02044c78:
    mov r3, r9, lsl #16
.L02044c7c:
    orr r3, r3, fp, lsr #16
.L02044c80:
    mov r2, fp, lsl #16
.L02044c84:
    mov r1, #67108864
.L02044c88:
    ldr lr, [pc, #2116]
.L02044c8c:
    strd r2, [r4, #144]
.L02044c90:
    str r5, [r1, #664]
.L02044c94:
    ldrh r3, [lr, #128]
.L02044c98:
    tst r3, #32768
.L02044c9c:
    bne .L02044c94
.L02044ca0:
    mov r2, #67108864
.L02044ca4:
    ldr r3, [r2, #672]
.L02044ca8:
    cmp r5, #4
.L02044cac:
    mov r4, r0
.L02044cb0:
    mov r5, r4, asr #31
.L02044cb4:
    mov r0, r3
.L02044cb8:
    mov r1, r0, asr #31
.L02044cbc:
    strd r4, [sp, #8]
.L02044cc0:
    stmia sp, {r0, r1}
.L02044cc4:
    bgt .L02044668
.L02044cc8:
    b .L02044658
.L02044ccc:
    mov r0, r4
.L02044cd0:
    ldr r1, [pc, #2040]
.L02044cd4:
    bl __aeabi_fcmplt
.L02044cd8:
    cmp r0, #0
.L02044cdc:
    beq .L02044efc
.L02044ce0:
    mov r0, r5
.L02044ce4:
    mov r1, r0, asr #31
.L02044ce8:
    mov r2, r6
.L02044cec:
    mov r3, r2, asr #31
.L02044cf0:
    strd r0, [sp, #24]
.L02044cf4:
    strd r2, [sp, #16]
.L02044cf8:
    ldr ip, [sp, #28]
.L02044cfc:
    ldr lr, [sp, #20]
.L02044d00:
    ldr r4, [sp, #24]
.L02044d04:
    ldr r5, [sp, #16]
.L02044d08:
    mul ip, r0, ip
.L02044d0c:
    mul lr, r2, lr
.L02044d10:
    umull r0, r1, r5, r5
.L02044d14:
    umull r2, r3, r4, r4
.L02044d18:
    ldr r4, [pc, #1972]
.L02044d1c:
    mov ip, ip, lsl #1
.L02044d20:
    mov lr, lr, lsl #1
.L02044d24:
    mov r9, #1
.L02044d28:
    add r3, ip, r3
.L02044d2c:
    add r1, lr, r1
.L02044d30:
    strh r9, [r4, #176]
.L02044d34:
    mov ip, r4
.L02044d38:
    mov r8, r0, lsr #16
.L02044d3c:
    mov r4, r2, lsr #16
.L02044d40:
    orr r4, r4, r3, lsl #16
.L02044d44:
    orr r8, r8, r1, lsl #16
.L02044d48:
    ldrh r3, [ip, #176]
.L02044d4c:
    tst r3, #32768
.L02044d50:
    bne .L02044d48
.L02044d54:
    add r2, r4, r8
.L02044d58:
    mov r3, r2, asr #31
.L02044d5c:
    mov r3, r3, lsl #16
.L02044d60:
    orr r3, r3, r2, lsr #16
.L02044d64:
    mov r2, r2, lsl #16
.L02044d68:
    strd r2, [ip, #184]
.L02044d6c:
    ldr r2, [pc, #1888]
.L02044d70:
    ldrh r3, [r2, #176]
.L02044d74:
    tst r3, #32768
.L02044d78:
    bne .L02044d70
.L02044d7c:
    mov fp, #67108864
.L02044d80:
    ldr r5, [fp, #692]
.L02044d84:
    b .L02044a7c
.L02044d88:
    ldr r0, [sp, #100]
.L02044d8c:
    ldr r1, [sp, #36]
.L02044d90:
    ldr r0, [r0, #8]
.L02044d94:
    str r0, [sp, #40]
.L02044d98:
    ldr r0, [r1, #136]
.L02044d9c:
    b .L020448d0
.L02044da0:
    mov r5, sl, asr #8
.L02044da4:
    mov r6, fp, asr #8
.L02044da8:
    eor r3, r6, r6, asr #31
.L02044dac:
    sub r3, r3, r6, asr #31
.L02044db0:
    eor r0, r5, r5, asr #31
.L02044db4:
    sub r0, r0, r5, asr #31
.L02044db8:
    add r0, r3, r0
.L02044dbc:
    bl __floatsisf
.L02044dc0:
    mov r1, #931135488
.L02044dc4:
    bl __aeabi_fmul
.L02044dc8:
    mov r1, #0
.L02044dcc:
    mov r4, r0
.L02044dd0:
    bl __aeabi_fcmpeq
.L02044dd4:
    cmp r0, #0
.L02044dd8:
    bne .L02045170
.L02044ddc:
    mov r0, r4
.L02044de0:
    bl __aeabi_f2d
.L02044de4:
    ldr r2, [pc, #1748]
.L02044de8:
    ldr r3, [pc, #1748]
.L02044dec:
    bl __aeabi_dcmplt
.L02044df0:
    cmp r0, #0
.L02044df4:
    beq .L0204528c
.L02044df8:
    mov r3, r5, lsl #8
.L02044dfc:
    mov r2, r6, lsl #8
.L02044e00:
    str r3, [sp, #160]
.L02044e04:
    str r2, [sp, #164]
.L02044e08:
    ldr r3, [pc, #1736]
.L02044e0c:
    add r0, sp, #232
.L02044e10:
    add r1, sp, #160
.L02044e14:
    blx r3
.L02044e18:
    ldr r2, [sp, #232]
.L02044e1c:
    mov r4, sl
.L02044e20:
    mov r5, r4, asr #31
.L02044e24:
    mov r3, r2, asr #31
.L02044e28:
    strd r4, [sp, #8]
.L02044e2c:
    mov r3, r3, lsl #8
.L02044e30:
    orr r3, r3, r2, lsr #24
.L02044e34:
    mov r2, r2, lsl #8
.L02044e38:
    mov r2, r2, lsr #16
.L02044e3c:
    orr r2, r2, r3, lsl #16
.L02044e40:
    mov r3, r2, asr #31
.L02044e44:
    mov r3, r3, lsl #24
.L02044e48:
    orr r3, r3, r2, lsr #8
.L02044e4c:
    mov r2, r2, lsl #24
.L02044e50:
    mov r2, r2, lsr #16
.L02044e54:
    orr r2, r2, r3, lsl #16
.L02044e58:
    mov r0, fp
.L02044e5c:
    mov r1, r0, asr #31
.L02044e60:
    mov r5, r2
.L02044e64:
    stmia sp, {r0, r1}
.L02044e68:
    b .L02044bfc
.L02044e6c:
    mov r0, r4
.L02044e70:
    bl __aeabi_f2d
.L02044e74:
    ldr r2, [pc, #1604]
.L02044e78:
    ldr r3, [pc, #1604]
.L02044e7c:
    bl __aeabi_dcmplt
.L02044e80:
    cmp r0, #0
.L02044e84:
    beq .L020450c0
.L02044e88:
    mov r2, fp, lsl #16
.L02044e8c:
    mov r3, sl, lsl #16
.L02044e90:
    add r0, sp, #224
.L02044e94:
    add r1, sp, #144
.L02044e98:
    str r3, [sp, #144]
.L02044e9c:
    str r2, [sp, #148]
.L02044ea0:
    ldr r3, [pc, #1584]
.L02044ea4:
    blx r3
.L02044ea8:
    ldr r2, [sp, #224]
.L02044eac:
    mov r0, sl
.L02044eb0:
    mov r1, r0, asr #31
.L02044eb4:
    mov r3, r2, asr #31
.L02044eb8:
    mov r3, r3, lsl #8
.L02044ebc:
    orr r3, r3, r2, lsr #24
.L02044ec0:
    strd r0, [sp, #8]
.L02044ec4:
    mov r2, r2, lsl #8
.L02044ec8:
    mov r2, r2, lsr #16
.L02044ecc:
    orr r2, r2, r3, lsl #16
.L02044ed0:
    mov r3, r2, asr #31
.L02044ed4:
    mov r3, r3, lsl #8
.L02044ed8:
    orr r3, r3, r2, lsr #24
.L02044edc:
    mov r2, r2, lsl #8
.L02044ee0:
    mov r2, r2, lsr #16
.L02044ee4:
    orr r2, r2, r3, lsl #16
.L02044ee8:
    mov r5, r2
.L02044eec:
    mov r2, fp
.L02044ef0:
    mov r3, r2, asr #31
.L02044ef4:
    stmia sp, {r2, r3}
.L02044ef8:
    b .L02044bfc
.L02044efc:
    mov r2, r6, asr #8
.L02044f00:
    mov r3, r5, asr #8
.L02044f04:
    add r0, sp, #244
.L02044f08:
    add r1, sp, #184
.L02044f0c:
    str r3, [sp, #184]
.L02044f10:
    str r2, [sp, #188]
.L02044f14:
    ldr r3, [pc, #1468]
.L02044f18:
    blx r3
.L02044f1c:
    ldr r2, [sp, #244]
.L02044f20:
    mov r0, r5
.L02044f24:
    mov r1, r0, asr #31
.L02044f28:
    mov r3, r2, asr #31
.L02044f2c:
    mov r3, r3, lsl #24
.L02044f30:
    orr r3, r3, r2, lsr #8
.L02044f34:
    mov r2, r2, lsl #24
.L02044f38:
    strd r0, [sp, #24]
.L02044f3c:
    b .L02044a64
.L02044f40:
    mov r0, r4
.L02044f44:
    bl __aeabi_f2d
.L02044f48:
    ldr r2, [pc, #1392]
.L02044f4c:
    ldr r3, [pc, #1392]
.L02044f50:
    bl __aeabi_dcmplt
.L02044f54:
    cmp r0, #0
.L02044f58:
    bne .L0204518c
.L02044f5c:
    mov r0, r4
.L02044f60:
    ldr r1, [pc, #1384]
.L02044f64:
    bl __aeabi_fcmplt
.L02044f68:
    cmp r0, #0
.L02044f6c:
    beq .L02045398
.L02044f70:
    mov r2, sl
.L02044f74:
    mov r3, r2, asr #31
.L02044f78:
    mov r0, fp
.L02044f7c:
    mov r1, r0, asr #31
.L02044f80:
    mul ip, r2, r3
.L02044f84:
    mul lr, r0, r1
.L02044f88:
    umull r4, r5, r2, r2
.L02044f8c:
    umull r6, r7, r0, r0
.L02044f90:
    ldr r3, [pc, #1340]
.L02044f94:
    mov ip, ip, lsl #1
.L02044f98:
    mov lr, lr, lsl #1
.L02044f9c:
    add r5, ip, r5
.L02044fa0:
    add r7, lr, r7
.L02044fa4:
    mov ip, #1
.L02044fa8:
    mov r0, r4, lsr #16
.L02044fac:
    mov r4, r6, lsr #16
.L02044fb0:
    strh ip, [r3, #176]
.L02044fb4:
    orr r0, r0, r5, lsl #16
.L02044fb8:
    mov ip, r3
.L02044fbc:
    orr r4, r4, r7, lsl #16
.L02044fc0:
    mov r5, r7, asr #16
.L02044fc4:
    ldrh r3, [ip, #176]
.L02044fc8:
    tst r3, #32768
.L02044fcc:
    bne .L02044fc4
.L02044fd0:
    add r2, r0, r4
.L02044fd4:
    mov r3, r2, asr #31
.L02044fd8:
    mov r3, r3, lsl #16
.L02044fdc:
    orr r3, r3, r2, lsr #16
.L02044fe0:
    mov r2, r2, lsl #16
.L02044fe4:
    strd r2, [ip, #184]
.L02044fe8:
    ldr r2, [pc, #1252]
.L02044fec:
    ldrh r3, [r2, #176]
.L02044ff0:
    tst r3, #32768
.L02044ff4:
    bne .L02044fec
.L02044ff8:
    mov r3, #67108864
.L02044ffc:
    ldr ip, [r3, #692]
.L02045000:
    cmp ip, #3
.L02045004:
    ble .L020445e4
.L02045008:
    ldr r3, [pc, #1220]
.L0204500c:
    mov r1, #1
.L02045010:
    strh r1, [r3, #128]
.L02045014:
    mov r1, r3
.L02045018:
    ldrh r3, [r1, #128]
.L0204501c:
    tst r3, #32768
.L02045020:
    bne .L02045018
.L02045024:
    mov r2, sl
.L02045028:
    mov r3, r2, asr #31
.L0204502c:
    mov r3, r3, lsl #16
.L02045030:
    orr r3, r3, r2, lsr #16
.L02045034:
    mov r2, r2, lsl #16
.L02045038:
    strd r2, [r1, #144]
.L0204503c:
    ldr r0, [pc, #1168]
.L02045040:
    mov r1, #67108864
.L02045044:
    str ip, [r1, #664]
.L02045048:
    ldrh r3, [r0, #128]
.L0204504c:
    tst r3, #32768
.L02045050:
    bne .L02045048
.L02045054:
    mov r3, #67108864
.L02045058:
    mov r2, #1
.L0204505c:
    ldr r1, [pc, #1136]
.L02045060:
    ldr lr, [r3, #672]
.L02045064:
    strh r2, [r0, #128]
.L02045068:
    ldrh r3, [r1, #128]
.L0204506c:
    tst r3, #32768
.L02045070:
    bne .L02045068
.L02045074:
    mov r2, fp
.L02045078:
    mov r3, r2, asr #31
.L0204507c:
    mov r3, r3, lsl #16
.L02045080:
    orr r3, r3, r2, lsr #16
.L02045084:
    mov r2, r2, lsl #16
.L02045088:
    strd r2, [r1, #144]
.L0204508c:
    ldr r0, [pc, #1088]
.L02045090:
    mov r1, #67108864
.L02045094:
    str ip, [r1, #664]
.L02045098:
    ldrh r3, [r0, #128]
.L0204509c:
    tst r3, #32768
.L020450a0:
    bne .L02045098
.L020450a4:
    mov r3, #67108864
.L020450a8:
    ldr r2, [r3, #672]
.L020450ac:
    cmp ip, #4
.L020450b0:
    str lr, [sp, #104]
.L020450b4:
    str r2, [sp, #108]
.L020450b8:
    bgt .L020445f4
.L020450bc:
    b .L020445e4
.L020450c0:
    mov r0, r4
.L020450c4:
    ldr r1, [pc, #1028]
.L020450c8:
    bl __aeabi_fcmplt
.L020450cc:
    cmp r0, #0
.L020450d0:
    beq .L0204533c
.L020450d4:
    mov r2, r5
.L020450d8:
    mov r3, r2, asr #31
.L020450dc:
    mov r0, r6
.L020450e0:
    mov r1, r0, asr #31
.L020450e4:
    mul ip, r2, r3
.L020450e8:
    mul lr, r0, r1
.L020450ec:
    umull r4, r5, r2, r2
.L020450f0:
    umull r6, r7, r0, r0
.L020450f4:
    ldr r3, [pc, #984]
.L020450f8:
    mov ip, ip, lsl #1
.L020450fc:
    mov lr, lr, lsl #1
.L02045100:
    mov r8, r4, lsr #16
.L02045104:
    add r5, ip, r5
.L02045108:
    add r7, lr, r7
.L0204510c:
    mov r9, #1
.L02045110:
    mov r4, r6, lsr #16
.L02045114:
    strh r9, [r3, #176]
.L02045118:
    mov r1, r3
.L0204511c:
    orr r8, r8, r5, lsl #16
.L02045120:
    orr r4, r4, r7, lsl #16
.L02045124:
    ldrh r3, [r1, #176]
.L02045128:
    tst r3, #32768
.L0204512c:
    bne .L02045124
.L02045130:
    add r2, r8, r4
.L02045134:
    mov r3, r2, asr #31
.L02045138:
    mov r3, r3, lsl #16
.L0204513c:
    orr r3, r3, r2, lsr #16
.L02045140:
    mov r2, r2, lsl #16
.L02045144:
    strd r2, [r1, #184]
.L02045148:
    ldr r2, [pc, #900]
.L0204514c:
    ldrh r3, [r2, #176]
.L02045150:
    tst r3, #32768
.L02045154:
    bne .L0204514c
.L02045158:
    mov ip, #67108864
.L0204515c:
    ldr r2, [ip, #692]
.L02045160:
    mov r0, sl
.L02045164:
    mov r1, r0, asr #31
.L02045168:
    strd r0, [sp, #8]
.L0204516c:
    b .L02044ed0
.L02045170:
    mov r0, sl
.L02045174:
    mov r1, r0, asr #31
.L02045178:
    mov r2, fp
.L0204517c:
    mov r3, r2, asr #31
.L02045180:
    strd r0, [sp, #8]
.L02045184:
    stmia sp, {r2, r3}
.L02045188:
    b .L02044658
.L0204518c:
    mov r5, sl, lsl #8
.L02045190:
    mov r6, fp, lsl #8
.L02045194:
    eor r3, r6, r6, asr #31
.L02045198:
    sub r3, r3, r6, asr #31
.L0204519c:
    eor r0, r5, r5, asr #31
.L020451a0:
    sub r0, r0, r5, asr #31
.L020451a4:
    add r0, r3, r0
.L020451a8:
    bl __floatsisf
.L020451ac:
    mov r1, #931135488
.L020451b0:
    bl __aeabi_fmul
.L020451b4:
    mov r1, #0
.L020451b8:
    mov r4, r0
.L020451bc:
    bl __aeabi_fcmpeq
.L020451c0:
    cmp r0, #0
.L020451c4:
    bne .L020445e4
.L020451c8:
    mov r0, r4
.L020451cc:
    bl __aeabi_f2d
.L020451d0:
    ldr r2, [pc, #744]
.L020451d4:
    ldr r3, [pc, #744]
.L020451d8:
    bl __aeabi_dcmplt
.L020451dc:
    cmp r0, #0
.L020451e0:
    bne .L020454dc
.L020451e4:
    mov r0, r4
.L020451e8:
    ldr r1, [pc, #736]
.L020451ec:
    bl __aeabi_fcmplt
.L020451f0:
    cmp r0, #0
.L020451f4:
    beq .L02045538
.L020451f8:
    mov r2, r5
.L020451fc:
    mov r3, r2, asr #31
.L02045200:
    mov r0, r6
.L02045204:
    mov r1, r0, asr #31
.L02045208:
    mul ip, r2, r3
.L0204520c:
    mul lr, r0, r1
.L02045210:
    umull r4, r5, r2, r2
.L02045214:
    umull r6, r7, r0, r0
.L02045218:
    ldr r3, [pc, #692]
.L0204521c:
    mov ip, ip, lsl #1
.L02045220:
    mov lr, lr, lsl #1
.L02045224:
    add r5, ip, r5
.L02045228:
    add r7, lr, r7
.L0204522c:
    mov r8, r4, lsr #16
.L02045230:
    mov r9, #1
.L02045234:
    mov r4, r6, lsr #16
.L02045238:
    orr r8, r8, r5, lsl #16
.L0204523c:
    strh r9, [r3, #176]
.L02045240:
    mov r1, r3
.L02045244:
    orr r4, r4, r7, lsl #16
.L02045248:
    mov r5, r7, asr #16
.L0204524c:
    ldrh r3, [r1, #176]
.L02045250:
    tst r3, #32768
.L02045254:
    bne .L0204524c
.L02045258:
    add r2, r8, r4
.L0204525c:
    mov r3, r2, asr #31
.L02045260:
    mov r3, r3, lsl #16
.L02045264:
    orr r3, r3, r2, lsr #16
.L02045268:
    mov r2, r2, lsl #16
.L0204526c:
    strd r2, [r1, #184]
.L02045270:
    ldr r2, [pc, #604]
.L02045274:
    ldrh r3, [r2, #176]
.L02045278:
    tst r3, #32768
.L0204527c:
    bne .L02045274
.L02045280:
    mov r1, #67108864
.L02045284:
    ldr r2, [r1, #692]
.L02045288:
    b .L02045518
.L0204528c:
    mov r0, r4
.L02045290:
    ldr r1, [pc, #568]
.L02045294:
    bl __aeabi_fcmplt
.L02045298:
    cmp r0, #0
.L0204529c:
    beq .L0204544c
.L020452a0:
    mov r2, r5
.L020452a4:
    mov r3, r2, asr #31
.L020452a8:
    mov r0, r6
.L020452ac:
    mov r1, r0, asr #31
.L020452b0:
    mul ip, r2, r3
.L020452b4:
    mul lr, r0, r1
.L020452b8:
    umull r4, r5, r2, r2
.L020452bc:
    umull r6, r7, r0, r0
.L020452c0:
    ldr r3, [pc, #524]
.L020452c4:
    mov ip, ip, lsl #1
.L020452c8:
    mov lr, lr, lsl #1
.L020452cc:
    mov r1, #1
.L020452d0:
    mov r8, r4, lsr #16
.L020452d4:
    add r5, ip, r5
.L020452d8:
    add r7, lr, r7
.L020452dc:
    mov r4, r6, lsr #16
.L020452e0:
    strh r1, [r3, #176]
.L020452e4:
    orr r8, r8, r5, lsl #16
.L020452e8:
    mov r1, r3
.L020452ec:
    orr r4, r4, r7, lsl #16
.L020452f0:
    ldrh r3, [r1, #176]
.L020452f4:
    tst r3, #32768
.L020452f8:
    bne .L020452f0
.L020452fc:
    add r2, r8, r4
.L02045300:
    mov r3, r2, asr #31
.L02045304:
    mov r3, r3, lsl #16
.L02045308:
    orr r3, r3, r2, lsr #16
.L0204530c:
    mov r2, r2, lsl #16
.L02045310:
    strd r2, [r1, #184]
.L02045314:
    ldr r2, [pc, #440]
.L02045318:
    ldrh r3, [r2, #176]
.L0204531c:
    tst r3, #32768
.L02045320:
    bne .L02045318
.L02045324:
    mov r3, #67108864
.L02045328:
    ldr r2, [r3, #692]
.L0204532c:
    mov r4, sl
.L02045330:
    mov r5, r4, asr #31
.L02045334:
    strd r4, [sp, #8]
.L02045338:
    b .L02044e40
.L0204533c:
    mov r3, r5, asr #8
.L02045340:
    mov r2, r6, asr #8
.L02045344:
    str r3, [sp, #152]
.L02045348:
    str r2, [sp, #156]
.L0204534c:
    ldr r3, [pc, #388]
.L02045350:
    add r0, sp, #228
.L02045354:
    add r1, sp, #152
.L02045358:
    blx r3
.L0204535c:
    ldr r2, [sp, #228]
.L02045360:
    mov r4, sl
.L02045364:
    mov r5, r4, asr #31
.L02045368:
    mov r3, r2, asr #31
.L0204536c:
    mov r3, r3, lsl #24
.L02045370:
    orr r3, r3, r2, lsr #8
.L02045374:
    mov r2, r2, lsl #24
.L02045378:
    mov r2, r2, lsr #16
.L0204537c:
    orr r2, r2, r3, lsl #16
.L02045380:
    mov r3, r2, asr #31
.L02045384:
    mov r3, r3, lsl #8
.L02045388:
    orr r3, r3, r2, lsr #24
.L0204538c:
    mov r2, r2, lsl #8
.L02045390:
    strd r4, [sp, #8]
.L02045394:
    b .L02044e50
.L02045398:
    mov r6, sl, asr #8
.L0204539c:
    mov r5, fp, asr #8
.L020453a0:
    eor r3, r5, r5, asr #31
.L020453a4:
    sub r3, r3, r5, asr #31
.L020453a8:
    eor r0, r6, r6, asr #31
.L020453ac:
    sub r0, r0, r6, asr #31
.L020453b0:
    add r0, r3, r0
.L020453b4:
    bl __floatsisf
.L020453b8:
    mov r1, #931135488
.L020453bc:
    bl __aeabi_fmul
.L020453c0:
    mov r1, #0
.L020453c4:
    mov r4, r0
.L020453c8:
    bl __aeabi_fcmpeq
.L020453cc:
    cmp r0, #0
.L020453d0:
    bne .L020445e4
.L020453d4:
    mov r0, r4
.L020453d8:
    bl __aeabi_f2d
.L020453dc:
    ldr r2, [pc, #220]
.L020453e0:
    ldr r3, [pc, #220]
.L020453e4:
    bl __aeabi_dcmplt
.L020453e8:
    cmp r0, #0
.L020453ec:
    beq .L02045570
.L020453f0:
    mov r3, r6, lsl #8
.L020453f4:
    mov r2, r5, lsl #8
.L020453f8:
    str r3, [sp, #128]
.L020453fc:
    str r2, [sp, #132]
.L02045400:
    add r0, sp, #216
.L02045404:
    add r1, sp, #128
.L02045408:
    ldr ip, [pc, #200]
.L0204540c:
    blx ip
.L02045410:
    ldr r2, [sp, #216]
.L02045414:
    mov r3, r2, asr #31
.L02045418:
    mov r3, r3, lsl #8
.L0204541c:
    orr r3, r3, r2, lsr #24
.L02045420:
    mov r2, r2, lsl #8
.L02045424:
    mov r2, r2, lsr #16
.L02045428:
    orr r2, r2, r3, lsl #16
.L0204542c:
    mov r3, r2, asr #31
.L02045430:
    mov r3, r3, lsl #24
.L02045434:
    orr r3, r3, r2, lsr #8
.L02045438:
    mov r2, r2, lsl #24
.L0204543c:
    mov r2, r2, lsr #16
.L02045440:
    orr r2, r2, r3, lsl #16
.L02045444:
    mov ip, r2
.L02045448:
    b .L02045000
.L0204544c:
    mov r2, fp, asr #16
.L02045450:
    mov r3, sl, asr #16
.L02045454:
    str r3, [sp, #168]
.L02045458:
    str r2, [sp, #172]
.L0204545c:
    ldr r3, [pc, #116]
.L02045460:
    add r0, sp, #236
.L02045464:
    add r1, sp, #168
.L02045468:
    blx r3
.L0204546c:
    mov r2, sl
.L02045470:
    mov r3, r2, asr #31
.L02045474:
    strd r2, [sp, #8]
.L02045478:
    ldr r2, [sp, #236]
.L0204547c:
    mov r3, r2, asr #31
.L02045480:
    mov r3, r3, lsl #24
.L02045484:
    orr r3, r3, r2, lsr #8
.L02045488:
    mov r2, r2, lsl #24
.L0204548c:
    b .L02044e38
.L02045490:
    ldr r0, [pc, #20]
.L02045494:
    ldr r1, [pc, #44]
.L02045498:
    ldr r2, [pc, #44]
.L0204549c:
    bl __assert
.L020454a0:
    mov r9, #0
.L020454a4:
    str r9, [sp, #40]
.L020454a8:
    b .L020449fc
.L020454ac:
    .long .rodata.str1.4 + 0  /* literal data */
.L020454b0:
    .long 0x00000622  /* literal data */
.L020454b4:
    .long .rodata.str1.4 + 448  /* literal data */
.L020454b8:
    .long 0x00000629  /* literal data */
.L020454bc:
    .long .rodata.str1.4 + 480  /* literal data */
.L020454c0:
    .long 0x9999999a  /* literal data */
.L020454c4:
    .long 0x3fb99999  /* literal data */
.L020454c8:
    .long 0x00000638  /* literal data */
.L020454cc:
    .long .rodata.str1.4 + 512  /* literal data */
.L020454d0:
    .long 0x43340000  /* literal data */
.L020454d4:
    .long 0x04000200  /* literal data */
.L020454d8:
    .long _ZNK6b2Vec26LengthEv  /* literal data */
.L020454dc:
    mov r3, sl, lsl #16
.L020454e0:
    mov r2, fp, lsl #16
.L020454e4:
    str r3, [sp, #112]
.L020454e8:
    str r2, [sp, #116]
.L020454ec:
    add r0, sp, #208
.L020454f0:
    add r1, sp, #112
.L020454f4:
    ldr ip, [pc, #-36]
.L020454f8:
    blx ip
.L020454fc:
    ldr r2, [sp, #208]
.L02045500:
    mov r3, r2, asr #31
.L02045504:
    mov r3, r3, lsl #8
.L02045508:
    orr r3, r3, r2, lsr #24
.L0204550c:
    mov r2, r2, lsl #8
.L02045510:
    mov r2, r2, lsr #16
.L02045514:
    orr r2, r2, r3, lsl #16
.L02045518:
    mov r3, r2, asr #31
.L0204551c:
    mov r3, r3, lsl #8
.L02045520:
    orr r3, r3, r2, lsr #24
.L02045524:
    mov r2, r2, lsl #8
.L02045528:
    mov r2, r2, lsr #16
.L0204552c:
    orr r2, r2, r3, lsl #16
.L02045530:
    mov ip, r2
.L02045534:
    b .L02045000
.L02045538:
    mov r3, r5, asr #8
.L0204553c:
    mov r2, r6, asr #8
.L02045540:
    str r3, [sp, #120]
.L02045544:
    str r2, [sp, #124]
.L02045548:
    add r0, sp, #212
.L0204554c:
    add r1, sp, #120
.L02045550:
    ldr ip, [pc, #-128]
.L02045554:
    blx ip
.L02045558:
    ldr r2, [sp, #212]
.L0204555c:
    mov r3, r2, asr #31
.L02045560:
    mov r3, r3, lsl #24
.L02045564:
    orr r3, r3, r2, lsr #8
.L02045568:
    mov r2, r2, lsl #24
.L0204556c:
    b .L02045510
.L02045570:
    mov r0, r4
.L02045574:
    ldr r1, [pc, #-172]
.L02045578:
    bl __aeabi_fcmplt
.L0204557c:
    cmp r0, #0
.L02045580:
    beq .L02045618
.L02045584:
    mov r0, r5
.L02045588:
    mov r1, r0, asr #31
.L0204558c:
    mov r2, r6
.L02045590:
    mov r3, r2, asr #31
.L02045594:
    mul lr, r0, r1
.L02045598:
    mul ip, r2, r3
.L0204559c:
    umull r4, r5, r2, r2
.L020455a0:
    umull r6, r7, r0, r0
.L020455a4:
    ldr r3, [pc, #-216]
.L020455a8:
    mov ip, ip, lsl #1
.L020455ac:
    mov lr, lr, lsl #1
.L020455b0:
    add r5, ip, r5
.L020455b4:
    add r7, lr, r7
.L020455b8:
    mov r8, r4, lsr #16
.L020455bc:
    mov r0, #1
.L020455c0:
    mov r4, r6, lsr #16
.L020455c4:
    orr r8, r8, r5, lsl #16
.L020455c8:
    strh r0, [r3, #176]
.L020455cc:
    mov r1, r3
.L020455d0:
    orr r4, r4, r7, lsl #16
.L020455d4:
    mov r5, r7, asr #16
.L020455d8:
    ldrh r3, [r1, #176]
.L020455dc:
    tst r3, #32768
.L020455e0:
    bne .L020455d8
.L020455e4:
    add r2, r8, r4
.L020455e8:
    mov r3, r2, asr #31
.L020455ec:
    mov r3, r3, lsl #16
.L020455f0:
    orr r3, r3, r2, lsr #16
.L020455f4:
    mov r2, r2, lsl #16
.L020455f8:
    strd r2, [r1, #184]
.L020455fc:
    ldr r2, [pc, #-304]
.L02045600:
    ldrh r3, [r2, #176]
.L02045604:
    tst r3, #32768
.L02045608:
    bne .L02045600
.L0204560c:
    mov r1, #67108864
.L02045610:
    ldr r2, [r1, #692]
.L02045614:
    b .L0204542c
.L02045618:
    mov r3, sl, asr #16
.L0204561c:
    mov r2, fp, asr #16
.L02045620:
    str r3, [sp, #136]
.L02045624:
    str r2, [sp, #140]
.L02045628:
    add r0, sp, #220
.L0204562c:
    add r1, sp, #136
.L02045630:
    ldr ip, [pc, #-352]
.L02045634:
    blx ip
.L02045638:
    ldr r2, [sp, #220]
.L0204563c:
    mov r3, r2, asr #31
.L02045640:
    mov r3, r3, lsl #24
.L02045644:
    orr r3, r3, r2, lsr #8
.L02045648:
    mov r2, r2, lsl #24
.L0204564c:
    b .L02045424
.size _ZN10b2PolyNode21GetRightestConnectionEPS_, .-_ZN10b2PolyNode21GetRightestConnectionEPS_

.section .text.polygon.residual.46,"ax",%progbits
.balign 4
.arm
.global _ZN10b2PolyNode21GetRightestConnectionER6b2Vec2
.type _ZN10b2PolyNode21GetRightestConnectionER6b2Vec2, %function
_ZN10b2PolyNode21GetRightestConnectionER6b2Vec2:
.L02045650:
    stmdb sp!, {r4, r5, lr}
.L02045654:
    mov r4, r0
.L02045658:
    sub sp, sp, #156
.L0204565c:
    ldr r0, [r1, #4]
.L02045660:
    ldr ip, [r1]
.L02045664:
    ldmia r4, {r2, r3}
.L02045668:
    add r5, sp, #4
.L0204566c:
    rsb r3, r0, r3
.L02045670:
    rsb r2, ip, r2
.L02045674:
    add r1, sp, #144
.L02045678:
    mov r0, r5
.L0204567c:
    str r2, [sp, #144]
.L02045680:
    str r3, [sp, #148]
.L02045684:
    bl _ZN10b2PolyNodeC1ER6b2Vec2
.L02045688:
    mov r0, r4
.L0204568c:
    mov r1, r5
.L02045690:
    bl _ZN10b2PolyNode21GetRightestConnectionEPS_
.L02045694:
    subs r4, r0, #0
.L02045698:
    ldr r1, [pc, #28]
.L0204569c:
    ldr r0, [pc, #28]
.L020456a0:
    ldr r2, [pc, #28]
.L020456a4:
    beq .L020456b4
.L020456a8:
    mov r0, r4
.L020456ac:
    add sp, sp, #156
.L020456b0:
    ldmia sp!, {r4, r5, pc}
.L020456b4:
    bl __assert
.L020456b8:
    b .L020456a8
.L020456bc:
    .long 0x00000641  /* literal data */
.L020456c0:
    .long .rodata.str1.4 + 0  /* literal data */
.L020456c4:
    .long .rodata.str1.4 + 520  /* literal data */
.size _ZN10b2PolyNode21GetRightestConnectionER6b2Vec2, .-_ZN10b2PolyNode21GetRightestConnectionER6b2Vec2

.section .text.polygon.residual.47,"ax",%progbits
.balign 4
.arm
.global _Z9TraceEdgeP9b2Polygon
.type _Z9TraceEdgeP9b2Polygon, %function
_Z9TraceEdgeP9b2Polygon:
.L020456c8:
    ldr r3, [r0, #8]
.L020456cc:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020456d0:
    mul r6, r3, r3
.L020456d4:
    mov sl, r0
.L020456d8:
    mov r3, r6, lsl #4
.L020456dc:
    mov r0, r6, lsl #2
.L020456e0:
    add r0, r0, r3
.L020456e4:
    mov r2, r0, lsl #3
.L020456e8:
    sub sp, sp, #236
.L020456ec:
    rsb r0, r0, r2
.L020456f0:
    bl _Znaj
.L020456f4:
    cmp r6, #0
.L020456f8:
    str r0, [sp, #16]
.L020456fc:
    beq .L02045720
.L02045700:
    mov r4, r0
.L02045704:
    mov r5, #0
.L02045708:
    mov r0, r4
.L0204570c:
    add r5, r5, #1
.L02045710:
    bl _ZN10b2PolyNodeC1Ev
.L02045714:
    cmp r6, r5
.L02045718:
    add r4, r4, #140
.L0204571c:
    bne .L02045708
.L02045720:
    ldr r6, [sl, #8]
.L02045724:
    cmp r6, #0
.L02045728:
    movle ip, #0
.L0204572c:
    strle ip, [sp, #20]
.L02045730:
    ble .L020457f8
.L02045734:
    mov r1, #0
.L02045738:
    str r1, [sp, #20]
.L0204573c:
    mov r7, r1
.L02045740:
    mov ip, r7, lsl #2
.L02045744:
    add r5, r7, #1
.L02045748:
    ldr lr, [sl]
.L0204574c:
    mov r3, r7, lsl #4
.L02045750:
    add r3, ip, r3
.L02045754:
    mov r2, r5, lsl #4
.L02045758:
    mov r0, r5, lsl #2
.L0204575c:
    add r0, r0, r2
.L02045760:
    ldr r4, [sl, #4]
.L02045764:
    ldr r2, [lr, ip]
.L02045768:
    ldr r9, [sp, #16]
.L0204576c:
    mov r1, r3, lsl #3
.L02045770:
    rsb r1, r3, r1
.L02045774:
    mov r8, r6
.L02045778:
    ldr r3, [r4, r7, lsl #2]
.L0204577c:
    sub r4, r6, #1
.L02045780:
    str r2, [r9, r1]
.L02045784:
    add r6, r9, r1
.L02045788:
    ldr r1, [sp, #20]
.L0204578c:
    cmp r7, r4
.L02045790:
    mov ip, r0, lsl #3
.L02045794:
    ldr r2, [sp, #16]
.L02045798:
    mov lr, #0
.L0204579c:
    movne r8, r5
.L020457a0:
    rsbne lr, r0, ip
.L020457a4:
    add r1, r1, #1
.L020457a8:
    cmp r7, #0
.L020457ac:
    subne r4, r7, #1
.L020457b0:
    str r3, [r6, #4]
.L020457b4:
    mov r0, r6
.L020457b8:
    str r1, [sp, #20]
.L020457bc:
    add r1, r2, lr
.L020457c0:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L020457c4:
    mov r3, r4, lsl #4
.L020457c8:
    mov r2, r4, lsl #2
.L020457cc:
    add r2, r2, r3
.L020457d0:
    mov r1, r2, lsl #3
.L020457d4:
    ldr r3, [sp, #16]
.L020457d8:
    rsb r1, r2, r1
.L020457dc:
    mov r0, r6
.L020457e0:
    add r1, r3, r1
.L020457e4:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L020457e8:
    ldr r6, [sl, #8]
.L020457ec:
    mov r7, r8
.L020457f0:
    cmp r6, r8
.L020457f4:
    bgt .L02045740
.L020457f8:
    ldr r1, [sp, #20]
.L020457fc:
    cmp r1, #0
.L02045800:
    ble .L02045b04
.L02045804:
    mov r2, #0
.L02045808:
    ldr sl, [sp, #16]
.L0204580c:
    str r2, [sp, #24]
.L02045810:
    mov r5, r2
.L02045814:
    ldr r3, [sl, #136]
.L02045818:
    cmp r3, #0
.L0204581c:
    movgt r9, #0
.L02045820:
    strgt sl, [sp, #40]
.L02045824:
    strgt r9, [sp, #28]
.L02045828:
    ble .L02045a34
.L0204582c:
    ldr r1, [sp, #20]
.L02045830:
    cmp r1, #0
.L02045834:
    ble .L02045a14
.L02045838:
    ldr r9, [sp, #20]
.L0204583c:
    mov ip, #0
.L02045840:
    mov r3, r9, lsl #2
.L02045844:
    mov r2, r9, lsl #4
.L02045848:
    add r3, r3, r2
.L0204584c:
    mov r1, r3, lsl #3
.L02045850:
    ldr r7, [sp, #16]
.L02045854:
    rsb fp, r3, r1
.L02045858:
    str ip, [sp, #32]
.L0204585c:
    ldr r1, [sp, #32]
.L02045860:
    ldr r2, [sp, #24]
.L02045864:
    cmp r1, r2
.L02045868:
    beq .L020459f4
.L0204586c:
    ldr r3, [sp, #40]
.L02045870:
    ldr r1, [r3, #8]
.L02045874:
    cmp r1, r7
.L02045878:
    beq .L020459f4
.L0204587c:
    ldr r4, [r7, #136]
.L02045880:
    cmp r4, #0
.L02045884:
    movgt r8, r7
.L02045888:
    movgt r9, #0
.L0204588c:
    bgt .L020458ac
.L02045890:
    b .L020459f4
.L02045894:
    add r9, r9, #1
.L02045898:
    cmp r4, r9
.L0204589c:
    add r8, r8, #4
.L020458a0:
    ble .L020459f4
.L020458a4:
    ldr ip, [sp, #40]
.L020458a8:
    ldr r1, [ip, #8]
.L020458ac:
    ldr ip, [r8, #8]
.L020458b0:
    cmp ip, r1
.L020458b4:
    beq .L02045894
.L020458b8:
    cmp sl, ip
.L020458bc:
    mov r3, ip
.L020458c0:
    mov r2, r7
.L020458c4:
    mov lr, #0
.L020458c8:
    mov r0, sl
.L020458cc:
    beq .L02045894
.L020458d0:
    ldr ip, [sp, #16]
.L020458d4:
    str lr, [sp, #196]
.L020458d8:
    add r6, ip, fp
.L020458dc:
    add ip, sp, #192
.L020458e0:
    str lr, [sp, #192]
.L020458e4:
    str ip, [sp]
.L020458e8:
    bl _Z9intersectRK6b2Vec2S1_S1_S1_RS_
.L020458ec:
    cmp r0, #0
.L020458f0:
    mov r1, sl
.L020458f4:
    ldreq r4, [r7, #136]
.L020458f8:
    beq .L02045894
.L020458fc:
    ldr r2, [sp, #40]
.L02045900:
    ldr r5, [r8, #8]
.L02045904:
    ldr r4, [r2, #8]
.L02045908:
    add r9, r9, #1
.L0204590c:
    mov r0, r4
.L02045910:
    bl _ZN10b2PolyNode16RemoveConnectionERS_
.L02045914:
    mov r1, r4
.L02045918:
    mov r0, sl
.L0204591c:
    bl _ZN10b2PolyNode16RemoveConnectionERS_
.L02045920:
    ldr r0, [r8, #8]
.L02045924:
    mov r1, r7
.L02045928:
    bl _ZN10b2PolyNode16RemoveConnectionERS_
.L0204592c:
    mov r1, r5
.L02045930:
    mov r0, r7
.L02045934:
    bl _ZN10b2PolyNode16RemoveConnectionERS_
.L02045938:
    add r1, sp, #192
.L0204593c:
    add r0, sp, #52
.L02045940:
    bl _ZN10b2PolyNodeC1ER6b2Vec2
.L02045944:
    ldr ip, [sp, #16]
.L02045948:
    ldr r3, [sp, #52]
.L0204594c:
    ldr r2, [sp, #56]
.L02045950:
    str r3, [fp, ip]
.L02045954:
    str r2, [r6, #4]
.L02045958:
    add r1, sp, #60
.L0204595c:
    mov r2, #128
.L02045960:
    add r0, r6, #8
.L02045964:
    bl memcpy
.L02045968:
    ldr r3, [sp, #188]
.L0204596c:
    mov r0, r6
.L02045970:
    str r3, [r6, #136]
.L02045974:
    mov r1, sl
.L02045978:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L0204597c:
    mov r0, sl
.L02045980:
    mov r1, r6
.L02045984:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L02045988:
    mov r0, r6
.L0204598c:
    mov r1, r7
.L02045990:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L02045994:
    mov r0, r7
.L02045998:
    mov r1, r6
.L0204599c:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L020459a0:
    mov r1, r4
.L020459a4:
    mov r0, r6
.L020459a8:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L020459ac:
    mov r0, r4
.L020459b0:
    mov r1, r6
.L020459b4:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L020459b8:
    mov r1, r5
.L020459bc:
    mov r0, r6
.L020459c0:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L020459c4:
    mov r0, r5
.L020459c8:
    mov r1, r6
.L020459cc:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L020459d0:
    ldr r1, [sp, #20]
.L020459d4:
    ldr r4, [r7, #136]
.L020459d8:
    add r1, r1, #1
.L020459dc:
    cmp r4, r9
.L020459e0:
    str r1, [sp, #20]
.L020459e4:
    add fp, fp, #140
.L020459e8:
    mov r5, #1
.L020459ec:
    add r8, r8, #4
.L020459f0:
    bgt .L020458a4
.L020459f4:
    ldr r2, [sp, #32]
.L020459f8:
    ldr r3, [sp, #20]
.L020459fc:
    add r2, r2, #1
.L02045a00:
    cmp r3, r2
.L02045a04:
    str r2, [sp, #32]
.L02045a08:
    add r7, r7, #140
.L02045a0c:
    bgt .L0204585c
.L02045a10:
    ldr r3, [sl, #136]
.L02045a14:
    ldr r9, [sp, #28]
.L02045a18:
    ldr ip, [sp, #40]
.L02045a1c:
    add r9, r9, #1
.L02045a20:
    add ip, ip, #4
.L02045a24:
    cmp r3, r9
.L02045a28:
    str r9, [sp, #28]
.L02045a2c:
    str ip, [sp, #40]
.L02045a30:
    bgt .L0204582c
.L02045a34:
    ldr r2, [sp, #24]
.L02045a38:
    ldr r3, [sp, #20]
.L02045a3c:
    add r2, r2, #1
.L02045a40:
    cmp r2, r3
.L02045a44:
    str r2, [sp, #24]
.L02045a48:
    add sl, sl, #140
.L02045a4c:
    blt .L02045814
.L02045a50:
    cmp r5, #0
.L02045a54:
    bne .L020457f8
.L02045a58:
    ldr r3, [sp, #20]
.L02045a5c:
    cmp r3, #0
.L02045a60:
    ble .L02045b04
.L02045a64:
    ldr r9, [sp, #16]
.L02045a68:
    mov r3, r5
.L02045a6c:
    str r9, [sp, #44]
.L02045a70:
    ldr ip, [sp, #20]
.L02045a74:
    add r3, r3, #1
.L02045a78:
    cmp r3, ip
.L02045a7c:
    str r3, [sp, #36]
.L02045a80:
    bne .L02045d00
.L02045a84:
    ldr r2, [sp, #20]
.L02045a88:
    cmp r2, #0
.L02045a8c:
    ble .L02045b04
.L02045a90:
    ldr lr, [pc, #1232]
.L02045a94:
    ldr r4, [pc, #1232]
.L02045a98:
    ldr r2, [sp, #16]
.L02045a9c:
    mvn r5, #0
.L02045aa0:
    mov ip, #0
.L02045aa4:
    b .L02045ad0
.L02045aa8:
    ldr r3, [r2, #136]
.L02045aac:
    cmp r3, #0
.L02045ab0:
    ldrgt r4, [r2]
.L02045ab4:
    movgt lr, r1
.L02045ab8:
    movgt r5, ip
.L02045abc:
    ldr r3, [sp, #20]
.L02045ac0:
    add ip, ip, #1
.L02045ac4:
    cmp ip, r3
.L02045ac8:
    add r2, r2, #140
.L02045acc:
    beq .L02045b08
.L02045ad0:
    ldr r1, [r2, #4]
.L02045ad4:
    cmp r1, lr
.L02045ad8:
    blt .L02045aa8
.L02045adc:
    bne .L02045abc
.L02045ae0:
    ldr r0, [r2]
.L02045ae4:
    mov lr, r1
.L02045ae8:
    cmp r0, r4
.L02045aec:
    ble .L02045abc
.L02045af0:
    ldr r3, [r2, #136]
.L02045af4:
    cmp r3, #0
.L02045af8:
    movgt r4, r0
.L02045afc:
    movgt r5, ip
.L02045b00:
    b .L02045abc
.L02045b04:
    mvn r5, #0
.L02045b08:
    ldr r9, [sp, #20]
.L02045b0c:
    mov r4, #0
.L02045b10:
    mov ip, r9
.L02045b14:
    mul r9, ip, r9
.L02045b18:
    mov r3, #65536
.L02045b1c:
    mov r0, r9, lsl #3
.L02045b20:
    str r3, [sp, #200]
.L02045b24:
    str r4, [sp, #204]
.L02045b28:
    bl _Znaj
.L02045b2c:
    cmp r9, r4
.L02045b30:
    mov r7, r0
.L02045b34:
    beq .L02045b60
.L02045b38:
    mov r1, r4
.L02045b3c:
    mov r2, r4
.L02045b40:
    mov r0, r4
.L02045b44:
    add r1, r1, #1
.L02045b48:
    add r3, r2, r7
.L02045b4c:
    cmp r9, r1
.L02045b50:
    str r0, [r2, r7]
.L02045b54:
    str r0, [r3, #4]
.L02045b58:
    add r2, r2, #8
.L02045b5c:
    bne .L02045b44
.L02045b60:
    mov r2, r5, lsl #4
.L02045b64:
    mov r3, r5, lsl #2
.L02045b68:
    add r3, r3, r2
.L02045b6c:
    mov r4, r3, lsl #3
.L02045b70:
    ldr r1, [sp, #16]
.L02045b74:
    rsb r4, r3, r4
.L02045b78:
    add r6, r1, r4
.L02045b7c:
    mov r0, r6
.L02045b80:
    add r1, sp, #200
.L02045b84:
    bl _ZN10b2PolyNode21GetRightestConnectionER6b2Vec2
.L02045b88:
    ldr r2, [sp, #16]
.L02045b8c:
    cmp r6, r0
.L02045b90:
    ldr r3, [r2, r4]
.L02045b94:
    ldr r2, [r6, #4]
.L02045b98:
    mov r5, r0
.L02045b9c:
    str r3, [r7]
.L02045ba0:
    str r2, [r7, #4]
.L02045ba4:
    beq .L02045c08
.L02045ba8:
    mov r8, r6
.L02045bac:
    mov r4, r7
.L02045bb0:
    mov sl, #1
.L02045bb4:
    b .L02045bec
.L02045bb8:
    ldr r3, [r5]
.L02045bbc:
    ldr r2, [r5, #4]
.L02045bc0:
    mov r1, r8
.L02045bc4:
    mov r0, r5
.L02045bc8:
    str r3, [r4, #8]
.L02045bcc:
    str r2, [r4, #12]
.L02045bd0:
    bl _ZN10b2PolyNode21GetRightestConnectionEPS_
.L02045bd4:
    cmp r6, r0
.L02045bd8:
    mov r8, r5
.L02045bdc:
    add sl, sl, #1
.L02045be0:
    mov r5, r0
.L02045be4:
    add r4, r4, #8
.L02045be8:
    beq .L02045e58
.L02045bec:
    cmp r9, sl
.L02045bf0:
    ldr r2, [pc, #888]
.L02045bf4:
    ldr r0, [pc, #888]
.L02045bf8:
    ldr r1, [pc, #888]
.L02045bfc:
    bge .L02045bb8
.L02045c00:
    bl __assert
.L02045c04:
    b .L02045bb8
.L02045c08:
    mov r0, #4
.L02045c0c:
    bl _Znaj
.L02045c10:
    mov r3, #0
.L02045c14:
    mov r5, r0
.L02045c18:
    mov r4, #4
.L02045c1c:
    mov r8, r3
.L02045c20:
    mov sl, #1
.L02045c24:
    mov r2, r5
.L02045c28:
    sub r3, r3, #1
.L02045c2c:
    mov r6, #0
.L02045c30:
    cmn r3, #1
.L02045c34:
    str r6, [r2], #4
.L02045c38:
    bne .L02045c28
.L02045c3c:
    mov r0, r4
.L02045c40:
    bl _Znaj
.L02045c44:
    mov r3, r6
.L02045c48:
    mov r4, r0
.L02045c4c:
    mov r2, r6
.L02045c50:
    cmp r8, r3
.L02045c54:
    str r2, [r4, r3, lsl #2]
.L02045c58:
    add r3, r3, #1
.L02045c5c:
    bne .L02045c50
.L02045c60:
    cmp sl, #0
.L02045c64:
    ble .L02045c9c
.L02045c68:
    mov ip, #0
.L02045c6c:
    mov lr, ip
.L02045c70:
    mov r0, ip
.L02045c74:
    ldr r3, [lr, r7]
.L02045c78:
    add r2, lr, r7
.L02045c7c:
    str r3, [r0, r5]
.L02045c80:
    ldr r1, [r2, #4]
.L02045c84:
    add ip, ip, #1
.L02045c88:
    cmp sl, ip
.L02045c8c:
    str r1, [r0, r4]
.L02045c90:
    add lr, lr, #8
.L02045c94:
    add r0, r0, #4
.L02045c98:
    bne .L02045c74
.L02045c9c:
    mov r0, #20
.L02045ca0:
    bl _Znwj
.L02045ca4:
    mov r1, r5
.L02045ca8:
    mov r2, r4
.L02045cac:
    mov r3, sl
.L02045cb0:
    mov r6, r0
.L02045cb4:
    bl _ZN9b2PolygonC1EP5FixedS1_l
.L02045cb8:
    mov r0, r7
.L02045cbc:
    bl _ZdaPv
.L02045cc0:
    cmp r4, #0
.L02045cc4:
    beq .L02045cd0
.L02045cc8:
    mov r0, r4
.L02045ccc:
    bl _ZdaPv
.L02045cd0:
    cmp r5, #0
.L02045cd4:
    beq .L02045ce0
.L02045cd8:
    mov r0, r5
.L02045cdc:
    bl _ZdaPv
.L02045ce0:
    ldr r3, [sp, #16]
.L02045ce4:
    cmp r3, #0
.L02045ce8:
    beq .L02045cf4
.L02045cec:
    mov r0, r3
.L02045cf0:
    bl _ZdaPv
.L02045cf4:
    mov r0, r6
.L02045cf8:
    add sp, sp, #236
.L02045cfc:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02045d00:
    ldr r1, [sp, #44]
.L02045d04:
    mov fp, r3
.L02045d08:
    add r1, r1, #140
.L02045d0c:
    str r1, [sp, #12]
.L02045d10:
    mov sl, r1
.L02045d14:
    ldr r3, [sp, #44]
.L02045d18:
    ldr r1, [sl, #4]
.L02045d1c:
    ldr r2, [r3]
.L02045d20:
    ldr r0, [sl]
.L02045d24:
    ldr r3, [r3, #4]
.L02045d28:
    rsb r5, r0, r2
.L02045d2c:
    rsb r6, r1, r3
.L02045d30:
    eor r2, r6, r6, asr #31
.L02045d34:
    sub r2, r2, r6, asr #31
.L02045d38:
    eor r0, r5, r5, asr #31
.L02045d3c:
    sub r0, r0, r5, asr #31
.L02045d40:
    add r0, r2, r0
.L02045d44:
    bl __floatsisf
.L02045d48:
    mov r1, #931135488
.L02045d4c:
    bl __aeabi_fmul
.L02045d50:
    mov r1, #0
.L02045d54:
    mov r4, r0
.L02045d58:
    bl __aeabi_fcmpeq
.L02045d5c:
    cmp r0, #0
.L02045d60:
    bne .L02045dc4
.L02045d64:
    mov r0, r4
.L02045d68:
    bl __aeabi_f2d
.L02045d6c:
    ldr r2, [pc, #520]
.L02045d70:
    ldr r3, [pc, #520]
.L02045d74:
    bl __aeabi_dcmplt
.L02045d78:
    cmp r0, #0
.L02045d7c:
    beq .L02045e84
.L02045d80:
    mov r3, r5, lsl #8
.L02045d84:
    mov r2, r6, lsl #8
.L02045d88:
    str r3, [sp, #208]
.L02045d8c:
    str r2, [sp, #212]
.L02045d90:
    add r0, sp, #224
.L02045d94:
    add r1, sp, #208
.L02045d98:
    ldr ip, [pc, #484]
.L02045d9c:
    blx ip
.L02045da0:
    ldr r2, [sp, #224]
.L02045da4:
    mov r3, r2, asr #31
.L02045da8:
    mov r3, r3, lsl #8
.L02045dac:
    orr r3, r3, r2, lsr #24
.L02045db0:
    mov r2, r2, lsl #8
.L02045db4:
    mov r2, r2, lsr #16
.L02045db8:
    orr r2, r2, r3, lsl #16
.L02045dbc:
    cmp r2, #3
.L02045dc0:
    bgt .L02045e34
.L02045dc4:
    ldr r5, [sl, #136]
.L02045dc8:
    cmp r5, #0
.L02045dcc:
    ble .L02045e1c
.L02045dd0:
    mov r4, sl
.L02045dd4:
    mov r6, #0
.L02045dd8:
    ldr r1, [r4, #8]
.L02045ddc:
    ldr r0, [sp, #44]
.L02045de0:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L02045de4:
    ldr r0, [r4, #8]
.L02045de8:
    ldr r1, [sp, #44]
.L02045dec:
    bl _ZN10b2PolyNode13AddConnectionERS_
.L02045df0:
    ldr r0, [r4, #8]
.L02045df4:
    mov r1, sl
.L02045df8:
    bl _ZN10b2PolyNode16RemoveConnectionERS_
.L02045dfc:
    mov r1, r6
.L02045e00:
    mov r0, sl
.L02045e04:
    add r6, r6, #1
.L02045e08:
    bl _ZN10b2PolyNode23RemoveConnectionByIndexEl
.L02045e0c:
    cmp r5, r6
.L02045e10:
    add r4, r4, #4
.L02045e14:
    bne .L02045dd8
.L02045e18:
    ldr r5, [sl, #136]
.L02045e1c:
    cmp r5, #0
.L02045e20:
    beq .L02045e34
.L02045e24:
    ldr r0, [pc, #328]
.L02045e28:
    ldr r1, [pc, #344]
.L02045e2c:
    ldr r2, [pc, #344]
.L02045e30:
    bl __assert
.L02045e34:
    ldr ip, [sp, #20]
.L02045e38:
    add fp, fp, #1
.L02045e3c:
    cmp fp, ip
.L02045e40:
    add sl, sl, #140
.L02045e44:
    blt .L02045d14
.L02045e48:
    ldr r1, [sp, #12]
.L02045e4c:
    ldr r3, [sp, #36]
.L02045e50:
    str r1, [sp, #44]
.L02045e54:
    b .L02045a70
.L02045e58:
    mov r4, sl, lsl #2
.L02045e5c:
    mov r0, r4
.L02045e60:
    bl _Znaj
.L02045e64:
    subs r3, sl, #1
.L02045e68:
    mov r5, r0
.L02045e6c:
    movcs r8, r3
.L02045e70:
    bcs .L02045c24
.L02045e74:
    mov r0, r4
.L02045e78:
    bl _Znaj
.L02045e7c:
    mov r4, r0
.L02045e80:
    b .L02045c60
.L02045e84:
    mov r0, r4
.L02045e88:
    ldr r1, [pc, #256]
.L02045e8c:
    bl __aeabi_fcmplt
.L02045e90:
    cmp r0, #0
.L02045e94:
    beq .L02045f28
.L02045e98:
    mov r2, r5
.L02045e9c:
    mov r3, r2, asr #31
.L02045ea0:
    mov r0, r6
.L02045ea4:
    mov r1, r0, asr #31
.L02045ea8:
    mul ip, r2, r3
.L02045eac:
    mul lr, r0, r1
.L02045eb0:
    umull r4, r5, r2, r2
.L02045eb4:
    umull r6, r7, r0, r0
.L02045eb8:
    ldr r3, [pc, #212]
.L02045ebc:
    mov ip, ip, lsl #1
.L02045ec0:
    mov lr, lr, lsl #1
.L02045ec4:
    mov r8, r4, lsr #16
.L02045ec8:
    add r5, ip, r5
.L02045ecc:
    add r7, lr, r7
.L02045ed0:
    mov r9, #1
.L02045ed4:
    mov r4, r6, lsr #16
.L02045ed8:
    strh r9, [r3, #176]
.L02045edc:
    mov r1, r3
.L02045ee0:
    orr r8, r8, r5, lsl #16
.L02045ee4:
    orr r4, r4, r7, lsl #16
.L02045ee8:
    ldrh r3, [r1, #176]
.L02045eec:
    tst r3, #32768
.L02045ef0:
    bne .L02045ee8
.L02045ef4:
    add r2, r8, r4
.L02045ef8:
    mov r3, r2, asr #31
.L02045efc:
    mov r3, r3, lsl #16
.L02045f00:
    orr r3, r3, r2, lsr #16
.L02045f04:
    mov r2, r2, lsl #16
.L02045f08:
    strd r2, [r1, #184]
.L02045f0c:
    ldr r2, [pc, #128]
.L02045f10:
    ldrh r3, [r2, #176]
.L02045f14:
    tst r3, #32768
.L02045f18:
    bne .L02045f10
.L02045f1c:
    mov r3, #67108864
.L02045f20:
    ldr r2, [r3, #692]
.L02045f24:
    b .L02045dbc
.L02045f28:
    mov r3, r5, asr #8
.L02045f2c:
    mov r2, r6, asr #8
.L02045f30:
    str r3, [sp, #216]
.L02045f34:
    str r2, [sp, #220]
.L02045f38:
    add r0, sp, #228
.L02045f3c:
    add r1, sp, #216
.L02045f40:
    ldr ip, [pc, #60]
.L02045f44:
    blx ip
.L02045f48:
    ldr r2, [sp, #228]
.L02045f4c:
    mov r3, r2, asr #31
.L02045f50:
    mov r3, r3, lsl #24
.L02045f54:
    orr r3, r3, r2, lsr #8
.L02045f58:
    mov r2, r2, lsl #24
.L02045f5c:
    mov r2, r2, lsr #16
.L02045f60:
    orr r2, r2, r3, lsl #16
.L02045f64:
    b .L02045dbc
.L02045f68:
    .long 0x7fff0000  /* literal data */
.L02045f6c:
    .long 0x80010000  /* literal data */
.L02045f70:
    .long .rodata.trace.str1.4 + 48  /* literal data */
.L02045f74:
    .long .rodata.trace.str1.4 + 0  /* literal data */
.L02045f78:
    .long 0x000005d9  /* literal data */
.L02045f7c:
    .long 0x9999999a  /* literal data */
.L02045f80:
    .long 0x3fb99999  /* literal data */
.L02045f84:
    .long _ZNK6b2Vec26LengthEv  /* literal data */
.L02045f88:
    .long 0x000005b9  /* literal data */
.L02045f8c:
    .long .rodata.trace.str1.4 + 24  /* literal data */
.L02045f90:
    .long 0x43340000  /* literal data */
.L02045f94:
    .long 0x04000200  /* literal data */
.size _Z9TraceEdgeP9b2Polygon, .-_Z9TraceEdgeP9b2Polygon

.section .rodata.str1.4,"aMS",%progbits,1
.balign 4
.Lsec38_00000000:
    .asciz "Contrib/b2Polygon.cpp"
    .asciz ""
    .asciz ""
.Lsec38_00000018:
    .asciz "isFound"
.Lsec38_00000020:
    .asciz "nConnected < MAX_CONNECTED"
    .asciz ""
.Lsec38_0000003c:
    .asciz "nVertices <= b2_maxPolygonVertices"
    .asciz ""
.Lsec38_00000060:
    .asciz "currIndex < newNVertices"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec38_0000007c:
    .asciz "nVert > 2"
    .asciz ""
    .asciz ""
.Lsec38_00000088:
    .asciz "bufferSize == xremLength-2"
    .asciz ""
.Lsec38_000000a4:
    .asciz "Found invalid polygon, "
.Lsec38_000000bc:
    .asciz "must have between 3 and %d vertices.\n"
    .balign 4
.Lsec38_000000e4:
    .asciz "must be convex."
.Lsec38_000000f4:
    .asciz "must be simple (cannot intersect itself)."
    .asciz ""
    .asciz ""
.Lsec38_00000120:
    .asciz "area is too small."
    .asciz ""
.Lsec38_00000134:
    .asciz "sides are too close to parallel."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec38_00000158:
    .asciz "polygon is too thin."
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec38_00000170:
    .asciz "core shape generation would move edge past centroid (too thin)."
.Lsec38_000001b0:
    .asciz "don't know why."
.Lsec38_000001c0:
    .asciz "inLength > (Fixed(0.00007f))"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec38_000001e0:
    .asciz "testLength > (Fixed(0.00007f))"
    .asciz ""
.Lsec38_00000200:
    .asciz "result"
    .asciz ""
.Lsec38_00000208:
    .asciz "res"
.Lsec38_0000020c:
    .asciz "jnode->nConnected == 0"
    .asciz ""
.Lsec38_00000224:
    .asciz "false"
    .asciz ""
    .asciz ""

.section .rodata.trace.str1.4,"aMS",%progbits,1
.balign 4
.asciz "Contrib/b2Polygon.cpp"
.balign 4
.asciz "jnode->nConnected == 0"
.balign 4
.asciz "false"
.balign 4
.section .note.GNU-stack,"",%progbits
