/* Reconstructed mnemonic source for zutil.o. */
.syntax unified
.arch armv5te

.global zlibVersion
.type zlibVersion, %function
.global zlibCompileFlags
.type zlibCompileFlags, %function
.global zError
.type zError, %function
.global z_errmsg
.type z_errmsg, %object
.global zcfree
.type zcfree, %function
.global zcalloc
.type zcalloc, %function

.section .text,"ax",%progbits
.balign 4
.arm
zlibVersion:
    ldr r0, [pc, #0]
    bx lr
    .long .Lsec05_00000068
.arm
zlibCompileFlags:
    ldr r0, [pc, #0]
    bx lr
    .long 0x02000055
.arm
zError:
    ldr r3, [pc, #8]
    rsb r0, r0, #2
    ldr r0, [r3, r0, lsl #2]
    bx lr
    .long z_errmsg
.arm
zcfree:
    str lr, [sp, #-4]!
    mov r0, r1
    sub sp, sp, #4
.Lsec01_00000038:
    bl free
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr
zcalloc:
    str lr, [sp, #-4]!
    mul r0, r2, r1
    sub sp, sp, #4
.Lsec01_00000054:
    bl malloc
    add sp, sp, #4
    ldr lr, [sp], #4
    bx lr

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
    .asciz "file error"
    .asciz ""
.Lsec05_00000010:
    .asciz "stream error"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000020:
    .asciz "data error"
    .asciz ""
.Lsec05_0000002c:
    .asciz "insufficient memory"
.Lsec05_00000040:
    .asciz "buffer error"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000050:
    .asciz "incompatible version"
    .asciz ""
    .asciz ""
    .asciz ""
.Lsec05_00000068:
    .asciz "1.2.3"
    .asciz ""
    .asciz ""
.Lsec05_00000070:
    .asciz "need dictionary"
.Lsec05_00000080:
    .asciz "stream end"
    .asciz ""

.section .rodata,"a",%progbits
.balign 4
z_errmsg:
    .long .Lsec05_00000070
    .long .Lsec05_00000080
    .long .Lsec05_00000000
    .long .Lsec05_00000004
    .long .Lsec05_00000010
    .long .Lsec05_00000020
    .long .Lsec05_0000002c
    .long .Lsec05_00000040
    .long .Lsec05_00000050
    .long .Lsec05_00000000

.size zlibVersion, 12
.size zlibCompileFlags, 12
.size zError, 20
.size z_errmsg, 40
.size zcfree, 28
.size zcalloc, 28

.section .note.GNU-stack,"",%progbits
