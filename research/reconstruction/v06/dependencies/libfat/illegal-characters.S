.syntax unified
.section .rodata.str1.4,"aMS",%progbits,1
.align 2

.global ILLEGAL_ALIAS_CHARACTERS
.type ILLEGAL_ALIAS_CHARACTERS, %object
ILLEGAL_ALIAS_CHARACTERS:
    .asciz "\\/:;*?\"<>|&+,=[]"
.size ILLEGAL_ALIAS_CHARACTERS, .-ILLEGAL_ALIAS_CHARACTERS
.align 2

.global ILLEGAL_LFN_CHARACTERS
.type ILLEGAL_LFN_CHARACTERS, %object
ILLEGAL_LFN_CHARACTERS:
    .asciz "\\/:*?\"<>|"
.size ILLEGAL_LFN_CHARACTERS, .-ILLEGAL_LFN_CHARACTERS
.align 2

.section .note.GNU-stack,"",%progbits
