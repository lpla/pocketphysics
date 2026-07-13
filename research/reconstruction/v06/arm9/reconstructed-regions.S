/* Reconstructed from the v0.6 release after C/C++ semantic recovery. */
.syntax unified
.arch armv5te

/* setupGui-region at 0x0200273c, 1368 bytes, Thumb. */
.section .reconstructed.fn00,"ax",%progbits
.align 1
.thumb
.global reconstructed_00_setupGui_region
reconstructed_00_setupGui_region:
.L0200273c:
    push {r4, r5, r6, r7, lr}
.L0200273e:
    mov r7, fp
.L02002740:
    mov r6, sl
.L02002742:
    mov r5, r9
.L02002744:
    mov r4, r8
.L02002746:
    push {r4, r5, r6, r7}
.L02002748:
    sub sp, #92
.L0200274a:
    movs r0, #60
.L0200274c:
    bl reconstructed_external_thumb_0207a7f4
.L02002750:
    adds r4, r0, #0
.L02002752:
    bl reconstructed_external_thumb_0200ae9c
.L02002756:
    ldr r3, [pc, #1012]
.L02002758:
    ldr r7, [pc, #1012]
.L0200275a:
    ldr r1, [r3, #0]
.L0200275c:
    adds r0, r4, #0
.L0200275e:
    str r4, [r7, #0]
.L02002760:
    bl reconstructed_external_thumb_0200add0
.L02002764:
    movs r0, #20
.L02002766:
    bl reconstructed_external_thumb_0207a7f4
.L0200276a:
    movs r1, #1
.L0200276c:
    adds r4, r0, #0
.L0200276e:
    bl reconstructed_external_thumb_020101e0
.L02002772:
    ldr r2, [pc, #992]
.L02002774:
    movs r0, #44
.L02002776:
    str r4, [r2, #0]
.L02002778:
    str r2, [sp, #84]
.L0200277a:
    bl reconstructed_external_thumb_0207a7f4
.L0200277e:
    movs r2, #19
.L02002780:
    str r2, [sp, #0]
.L02002782:
    ldr r2, [pc, #980]
.L02002784:
    ldr r3, [pc, #980]
.L02002786:
    mov fp, r2
.L02002788:
    str r2, [sp, #4]
.L0200278a:
    movs r2, #15
.L0200278c:
    str r3, [sp, #8]
.L0200278e:
    str r2, [sp, #16]
.L02002790:
    movs r3, #18
.L02002792:
    movs r2, #2
.L02002794:
    mov r9, r2
.L02002796:
    str r3, [sp, #12]
.L02002798:
    str r2, [sp, #24]
.L0200279a:
    movs r3, #1
.L0200279c:
    ldr r2, [sp, #84]
.L0200279e:
    str r3, [sp, #20]
.L020027a0:
    ldr r3, [r2, #0]
.L020027a2:
    movs r1, #233
.L020027a4:
    str r3, [sp, #28]
.L020027a6:
    movs r3, #0
.L020027a8:
    str r3, [sp, #32]
.L020027aa:
    movs r2, #1
.L020027ac:
    movs r3, #22
.L020027ae:
    adds r4, r0, #0
.L020027b0:
    bl reconstructed_external_thumb_02010048
.L020027b4:
    ldr r2, [pc, #936]
.L020027b6:
    movs r0, #44
.L020027b8:
    str r4, [r2, #0]
.L020027ba:
    str r2, [sp, #80]
.L020027bc:
    bl reconstructed_external_thumb_0207a7f4
.L020027c0:
    movs r2, #19
.L020027c2:
    ldr r3, [pc, #928]
.L020027c4:
    str r2, [sp, #0]
.L020027c6:
    mov r2, fp
.L020027c8:
    str r2, [sp, #4]
.L020027ca:
    movs r2, #15
.L020027cc:
    str r3, [sp, #8]
.L020027ce:
    str r2, [sp, #16]
.L020027d0:
    movs r3, #18
.L020027d2:
    mov r2, r9
.L020027d4:
    str r3, [sp, #12]
.L020027d6:
    str r2, [sp, #24]
.L020027d8:
    movs r3, #1
.L020027da:
    ldr r2, [sp, #84]
.L020027dc:
    str r3, [sp, #20]
.L020027de:
    ldr r3, [r2, #0]
.L020027e0:
    movs r1, #233
.L020027e2:
    str r3, [sp, #28]
.L020027e4:
    movs r3, #0
.L020027e6:
    str r3, [sp, #32]
.L020027e8:
    movs r2, #21
.L020027ea:
    movs r3, #22
.L020027ec:
    adds r4, r0, #0
.L020027ee:
    bl reconstructed_external_thumb_02010048
.L020027f2:
    ldr r2, [pc, #884]
.L020027f4:
    ldr r3, [sp, #84]
.L020027f6:
    str r4, [r2, #0]
.L020027f8:
    ldr r0, [r3, #0]
.L020027fa:
    ldr r1, [pc, #880]
.L020027fc:
    str r2, [sp, #76]
.L020027fe:
    bl reconstructed_external_thumb_02010158
.L02002802:
    movs r0, #40
.L02002804:
    bl reconstructed_external_thumb_0207a7f4
.L02002808:
    ldr r3, [pc, #868]
.L0200280a:
    movs r2, #19
.L0200280c:
    str r2, [sp, #0]
.L0200280e:
    str r3, [sp, #8]
.L02002810:
    mov r2, fp
.L02002812:
    movs r3, #18
.L02002814:
    str r2, [sp, #4]
.L02002816:
    str r3, [sp, #12]
.L02002818:
    movs r2, #15
.L0200281a:
    mov r3, r9
.L0200281c:
    str r2, [sp, #16]
.L0200281e:
    str r3, [sp, #20]
.L02002820:
    movs r2, #1
.L02002822:
    movs r3, #0
.L02002824:
    str r2, [sp, #24]
.L02002826:
    str r3, [sp, #28]
.L02002828:
    movs r1, #233
.L0200282a:
    movs r3, #22
.L0200282c:
    movs r2, #101
.L0200282e:
    adds r4, r0, #0
.L02002830:
    bl reconstructed_external_thumb_020096d0
.L02002834:
    ldr r2, [pc, #828]
.L02002836:
    ldr r1, [pc, #832]
.L02002838:
    str r4, [r2, #0]
.L0200283a:
    adds r0, r4, #0
.L0200283c:
    str r2, [sp, #72]
.L0200283e:
    bl reconstructed_external_thumb_02009608
.L02002842:
    movs r0, #40
.L02002844:
    bl reconstructed_external_thumb_0207a7f4
.L02002848:
    ldr r3, [pc, #816]
.L0200284a:
    movs r2, #19
.L0200284c:
    str r2, [sp, #0]
.L0200284e:
    str r3, [sp, #8]
.L02002850:
    mov r2, fp
.L02002852:
    movs r3, #18
.L02002854:
    str r2, [sp, #4]
.L02002856:
    str r3, [sp, #12]
.L02002858:
    movs r2, #15
.L0200285a:
    mov r3, r9
.L0200285c:
    str r2, [sp, #16]
.L0200285e:
    str r3, [sp, #20]
.L02002860:
    movs r2, #1
.L02002862:
    movs r3, #0
.L02002864:
    str r2, [sp, #24]
.L02002866:
    str r3, [sp, #28]
.L02002868:
    movs r1, #233
.L0200286a:
    movs r3, #22
.L0200286c:
    movs r2, #121
.L0200286e:
    adds r4, r0, #0
.L02002870:
    bl reconstructed_external_thumb_020096d0
.L02002874:
    ldr r2, [pc, #776]
.L02002876:
    ldr r1, [pc, #780]
.L02002878:
    str r4, [r2, #0]
.L0200287a:
    adds r0, r4, #0
.L0200287c:
    str r2, [sp, #68]
.L0200287e:
    bl reconstructed_external_thumb_02009608
.L02002882:
    movs r0, #40
.L02002884:
    bl reconstructed_external_thumb_0207a7f4
.L02002888:
    ldr r3, [pc, #764]
.L0200288a:
    movs r2, #19
.L0200288c:
    str r2, [sp, #0]
.L0200288e:
    mov r2, fp
.L02002890:
    str r2, [sp, #4]
.L02002892:
    str r3, [sp, #8]
.L02002894:
    movs r2, #0
.L02002896:
    movs r3, #1
.L02002898:
    movs r5, #12
.L0200289a:
    movs r6, #5
.L0200289c:
    str r3, [sp, #24]
.L0200289e:
    str r2, [sp, #28]
.L020028a0:
    movs r1, #233
.L020028a2:
    movs r2, #152
.L020028a4:
    movs r3, #22
.L020028a6:
    adds r4, r0, #0
.L020028a8:
    str r5, [sp, #12]
.L020028aa:
    str r5, [sp, #16]
.L020028ac:
    str r6, [sp, #20]
.L020028ae:
    bl reconstructed_external_thumb_020096d0
.L020028b2:
    ldr r3, [pc, #728]
.L020028b4:
    ldr r1, [pc, #728]
.L020028b6:
    str r4, [r3, #0]
.L020028b8:
    adds r0, r4, #0
.L020028ba:
    str r3, [sp, #64]
.L020028bc:
    bl reconstructed_external_thumb_02009608
.L020028c0:
    movs r0, #40
.L020028c2:
    bl reconstructed_external_thumb_0207a7f4
.L020028c6:
    ldr r3, [pc, #716]
.L020028c8:
    movs r2, #19
.L020028ca:
    str r2, [sp, #0]
.L020028cc:
    mov r2, fp
.L020028ce:
    str r2, [sp, #4]
.L020028d0:
    str r3, [sp, #8]
.L020028d2:
    movs r2, #0
.L020028d4:
    movs r3, #1
.L020028d6:
    str r3, [sp, #24]
.L020028d8:
    str r2, [sp, #28]
.L020028da:
    movs r1, #233
.L020028dc:
    movs r2, #172
.L020028de:
    movs r3, #22
.L020028e0:
    adds r4, r0, #0
.L020028e2:
    str r5, [sp, #12]
.L020028e4:
    str r5, [sp, #16]
.L020028e6:
    str r6, [sp, #20]
.L020028e8:
    bl reconstructed_external_thumb_020096d0
.L020028ec:
    ldr r3, [pc, #680]
.L020028ee:
    ldr r1, [pc, #684]
.L020028f0:
    str r4, [r3, #0]
.L020028f2:
    adds r0, r4, #0
.L020028f4:
    mov sl, r3
.L020028f6:
    bl reconstructed_external_thumb_02009608
.L020028fa:
    movs r0, #40
.L020028fc:
    bl reconstructed_external_thumb_0207a7f4
.L02002900:
    ldr r3, [pc, #668]
.L02002902:
    movs r2, #19
.L02002904:
    str r2, [sp, #0]
.L02002906:
    mov r2, fp
.L02002908:
    str r2, [sp, #4]
.L0200290a:
    str r3, [sp, #8]
.L0200290c:
    movs r2, #0
.L0200290e:
    movs r3, #1
.L02002910:
    str r3, [sp, #24]
.L02002912:
    str r2, [sp, #28]
.L02002914:
    movs r1, #233
.L02002916:
    movs r2, #172
.L02002918:
    movs r3, #22
.L0200291a:
    adds r4, r0, #0
.L0200291c:
    str r5, [sp, #12]
.L0200291e:
    str r5, [sp, #16]
.L02002920:
    str r6, [sp, #20]
.L02002922:
    bl reconstructed_external_thumb_020096d0
.L02002926:
    ldr r3, [pc, #636]
.L02002928:
    ldr r1, [pc, #636]
.L0200292a:
    str r4, [r3, #0]
.L0200292c:
    adds r0, r4, #0
.L0200292e:
    str r3, [sp, #60]
.L02002930:
    bl reconstructed_external_thumb_02009608
.L02002934:
    ldr r2, [sp, #80]
.L02002936:
    ldr r0, [r7, #0]
.L02002938:
    ldr r1, [r2, #0]
.L0200293a:
    movs r3, #0
.L0200293c:
    movs r2, #0
.L0200293e:
    bl reconstructed_external_thumb_0200af94
.L02002942:
    ldr r3, [sp, #76]
.L02002944:
    ldr r0, [r7, #0]
.L02002946:
    ldr r1, [r3, #0]
.L02002948:
    movs r2, #0
.L0200294a:
    movs r3, #0
.L0200294c:
    bl reconstructed_external_thumb_0200af94
.L02002950:
    ldr r3, [pc, #600]
.L02002952:
    ldrb r3, [r3, #0]
.L02002954:
    cmp r3, #0
.L02002956:
    beq.n .L02002974
.L02002958:
    ldr r2, [sp, #72]
.L0200295a:
    ldr r0, [r7, #0]
.L0200295c:
    ldr r1, [r2, #0]
.L0200295e:
    movs r3, #0
.L02002960:
    movs r2, #0
.L02002962:
    bl reconstructed_external_thumb_0200af94
.L02002966:
    ldr r3, [sp, #68]
.L02002968:
    ldr r0, [r7, #0]
.L0200296a:
    ldr r1, [r3, #0]
.L0200296c:
    movs r2, #0
.L0200296e:
    movs r3, #0
.L02002970:
    bl reconstructed_external_thumb_0200af94
.L02002974:
    ldr r2, [sp, #60]
.L02002976:
    ldr r0, [r7, #0]
.L02002978:
    ldr r1, [r2, #0]
.L0200297a:
    movs r3, #0
.L0200297c:
    movs r2, #0
.L0200297e:
    bl reconstructed_external_thumb_0200af94
.L02002982:
    mov r3, sl
.L02002984:
    ldr r0, [r7, #0]
.L02002986:
    ldr r1, [r3, #0]
.L02002988:
    movs r2, #0
.L0200298a:
    movs r3, #0
.L0200298c:
    bl reconstructed_external_thumb_0200af94
.L02002990:
    ldr r2, [sp, #64]
.L02002992:
    movs r3, #0
.L02002994:
    ldr r0, [r7, #0]
.L02002996:
    ldr r1, [r2, #0]
.L02002998:
    movs r2, #0
.L0200299a:
    bl reconstructed_external_thumb_0200af94
.L0200299e:
    movs r0, #20
.L020029a0:
    bl reconstructed_external_thumb_0207a7f4
.L020029a4:
    movs r1, #1
.L020029a6:
    adds r4, r0, #0
.L020029a8:
    bl reconstructed_external_thumb_020101e0
.L020029ac:
    ldr r5, [pc, #512]
.L020029ae:
    movs r0, #44
.L020029b0:
    str r4, [r5, #0]
.L020029b2:
    bl reconstructed_external_thumb_0207a7f4
.L020029b6:
    ldr r3, [pc, #508]
.L020029b8:
    movs r2, #19
.L020029ba:
    str r2, [sp, #0]
.L020029bc:
    str r3, [sp, #8]
.L020029be:
    mov r2, fp
.L020029c0:
    movs r3, #18
.L020029c2:
    str r2, [sp, #4]
.L020029c4:
    str r3, [sp, #12]
.L020029c6:
    movs r2, #15
.L020029c8:
    mov r3, r9
.L020029ca:
    str r2, [sp, #16]
.L020029cc:
    str r3, [sp, #20]
.L020029ce:
    str r3, [sp, #24]
.L020029d0:
    ldr r3, [r5, #0]
.L020029d2:
    movs r2, #0
.L020029d4:
    str r3, [sp, #28]
.L020029d6:
    str r2, [sp, #32]
.L020029d8:
    movs r1, #1
.L020029da:
    movs r2, #172
.L020029dc:
    movs r3, #22
.L020029de:
    adds r4, r0, #0
.L020029e0:
    bl reconstructed_external_thumb_02010048
.L020029e4:
    ldr r3, [pc, #464]
.L020029e6:
    movs r0, #44
.L020029e8:
    str r4, [r3, #0]
.L020029ea:
    str r3, [sp, #56]
.L020029ec:
    bl reconstructed_external_thumb_0207a7f4
.L020029f0:
    ldr r3, [pc, #456]
.L020029f2:
    movs r2, #19
.L020029f4:
    str r2, [sp, #0]
.L020029f6:
    str r3, [sp, #8]
.L020029f8:
    mov r2, fp
.L020029fa:
    movs r3, #18
.L020029fc:
    str r2, [sp, #4]
.L020029fe:
    str r3, [sp, #12]
.L02002a00:
    movs r2, #15
.L02002a02:
    mov r3, r9
.L02002a04:
    str r2, [sp, #16]
.L02002a06:
    str r3, [sp, #20]
.L02002a08:
    str r3, [sp, #24]
.L02002a0a:
    ldr r3, [r5, #0]
.L02002a0c:
    movs r2, #0
.L02002a0e:
    str r3, [sp, #28]
.L02002a10:
    str r2, [sp, #32]
.L02002a12:
    movs r1, #24
.L02002a14:
    movs r2, #172
.L02002a16:
    movs r3, #22
.L02002a18:
    adds r4, r0, #0
.L02002a1a:
    bl reconstructed_external_thumb_02010048
.L02002a1e:
    ldr r3, [pc, #416]
.L02002a20:
    movs r0, #44
.L02002a22:
    str r4, [r3, #0]
.L02002a24:
    str r3, [sp, #52]
.L02002a26:
    bl reconstructed_external_thumb_0207a7f4
.L02002a2a:
    ldr r3, [pc, #408]
.L02002a2c:
    movs r2, #19
.L02002a2e:
    str r2, [sp, #0]
.L02002a30:
    str r3, [sp, #8]
.L02002a32:
    mov r2, fp
.L02002a34:
    movs r3, #18
.L02002a36:
    str r2, [sp, #4]
.L02002a38:
    str r3, [sp, #12]
.L02002a3a:
    movs r2, #15
.L02002a3c:
    mov r3, r9
.L02002a3e:
    str r2, [sp, #16]
.L02002a40:
    str r3, [sp, #20]
.L02002a42:
    str r3, [sp, #24]
.L02002a44:
    ldr r3, [r5, #0]
.L02002a46:
    movs r2, #0
.L02002a48:
    str r3, [sp, #28]
.L02002a4a:
    str r2, [sp, #32]
.L02002a4c:
    movs r1, #47
.L02002a4e:
    movs r2, #172
.L02002a50:
    movs r3, #22
.L02002a52:
    adds r4, r0, #0
.L02002a54:
    bl reconstructed_external_thumb_02010048
.L02002a58:
    ldr r3, [pc, #364]
.L02002a5a:
    movs r0, #44
.L02002a5c:
    str r4, [r3, #0]
.L02002a5e:
    str r3, [sp, #48]
.L02002a60:
    bl reconstructed_external_thumb_0207a7f4
.L02002a64:
    ldr r3, [pc, #356]
.L02002a66:
    movs r2, #19
.L02002a68:
    str r2, [sp, #0]
.L02002a6a:
    str r3, [sp, #8]
.L02002a6c:
    mov r2, fp
.L02002a6e:
    movs r3, #18
.L02002a70:
    str r2, [sp, #4]
.L02002a72:
    str r3, [sp, #12]
.L02002a74:
    movs r2, #15
.L02002a76:
    mov r3, r9
.L02002a78:
    str r2, [sp, #16]
.L02002a7a:
    str r3, [sp, #20]
.L02002a7c:
    str r3, [sp, #24]
.L02002a7e:
    ldr r3, [r5, #0]
.L02002a80:
    movs r2, #0
.L02002a82:
    str r3, [sp, #28]
.L02002a84:
    str r2, [sp, #32]
.L02002a86:
    movs r1, #70
.L02002a88:
    movs r2, #172
.L02002a8a:
    movs r3, #22
.L02002a8c:
    adds r4, r0, #0
.L02002a8e:
    bl reconstructed_external_thumb_02010048
.L02002a92:
    ldr r3, [pc, #316]
.L02002a94:
    movs r0, #44
.L02002a96:
    str r4, [r3, #0]
.L02002a98:
    str r3, [sp, #44]
.L02002a9a:
    bl reconstructed_external_thumb_0207a7f4
.L02002a9e:
    ldr r3, [pc, #308]
.L02002aa0:
    movs r2, #19
.L02002aa2:
    str r2, [sp, #0]
.L02002aa4:
    str r3, [sp, #8]
.L02002aa6:
    mov r2, fp
.L02002aa8:
    movs r3, #18
.L02002aaa:
    str r2, [sp, #4]
.L02002aac:
    str r3, [sp, #12]
.L02002aae:
    movs r2, #15
.L02002ab0:
    mov r3, r9
.L02002ab2:
    str r2, [sp, #16]
.L02002ab4:
    str r3, [sp, #20]
.L02002ab6:
    str r3, [sp, #24]
.L02002ab8:
    ldr r3, [r5, #0]
.L02002aba:
    movs r2, #0
.L02002abc:
    str r3, [sp, #28]
.L02002abe:
    str r2, [sp, #32]
.L02002ac0:
    movs r1, #152
.L02002ac2:
    movs r2, #172
.L02002ac4:
    movs r3, #22
.L02002ac6:
    adds r4, r0, #0
.L02002ac8:
    bl reconstructed_external_thumb_02010048
.L02002acc:
    ldr r3, [pc, #264]
.L02002ace:
    movs r0, #44
.L02002ad0:
    str r4, [r3, #0]
.L02002ad2:
    mov r8, r3
.L02002ad4:
    bl reconstructed_external_thumb_0207a7f4
.L02002ad8:
    ldr r3, [pc, #256]
.L02002ada:
    movs r2, #19
.L02002adc:
    str r2, [sp, #0]
.L02002ade:
    str r3, [sp, #8]
.L02002ae0:
    mov r2, fp
.L02002ae2:
    movs r3, #18
.L02002ae4:
    str r2, [sp, #4]
.L02002ae6:
    str r3, [sp, #12]
.L02002ae8:
    movs r2, #15
.L02002aea:
    mov r3, r9
.L02002aec:
    str r2, [sp, #16]
.L02002aee:
    str r3, [sp, #20]
.L02002af0:
    str r3, [sp, #24]
.L02002af2:
    ldr r3, [r5, #0]
.L02002af4:
    movs r2, #0
.L02002af6:
    str r3, [sp, #28]
.L02002af8:
    str r2, [sp, #32]
.L02002afa:
    movs r1, #175
.L02002afc:
    movs r2, #172
.L02002afe:
    movs r3, #22
.L02002b00:
    adds r4, r0, #0
.L02002b02:
    bl reconstructed_external_thumb_02010048
.L02002b06:
    ldr r3, [pc, #216]
.L02002b08:
    ldr r0, [r5, #0]
.L02002b0a:
    str r4, [r3, #0]
.L02002b0c:
    ldr r1, [pc, #212]
.L02002b0e:
    str r3, [sp, #40]
.L02002b10:
    bl reconstructed_external_thumb_02010158
.L02002b14:
    movs r0, #40
.L02002b16:
    bl reconstructed_external_thumb_0207a7f4
.L02002b1a:
    ldr r3, [pc, #204]
.L02002b1c:
    movs r2, #19
.L02002b1e:
    str r2, [sp, #0]
.L02002b20:
    mov r2, fp
.L02002b22:
    str r2, [sp, #4]
.L02002b24:
    str r3, [sp, #8]
.L02002b26:
    movs r2, #15
.L02002b28:
    movs r3, #18
.L02002b2a:
    str r3, [sp, #12]
.L02002b2c:
    str r2, [sp, #16]
.L02002b2e:
    mov r3, r9
.L02002b30:
    movs r2, #0
.L02002b32:
    str r3, [sp, #20]
.L02002b34:
    str r3, [sp, #24]
.L02002b36:
    str r2, [sp, #28]
.L02002b38:
    movs r3, #22
.L02002b3a:
    movs r2, #172
.L02002b3c:
    movs r1, #198
.L02002b3e:
    adds r4, r0, #0
.L02002b40:
    bl reconstructed_external_thumb_020096d0
.L02002b44:
    ldr r6, [pc, #164]
.L02002b46:
    adds r0, r4, #0
.L02002b48:
    b.n .L02002bf0
.L02002b4a:
    .short 0x0000  /* literal data */
.L02002b4c:
    .short 0xa210  /* literal data */
.L02002b4e:
    .short 0x020c  /* literal data */
.L02002b50:
    .short 0xa214  /* literal data */
.L02002b52:
    .short 0x020c  /* literal data */
.L02002b54:
    .short 0xa24c  /* literal data */
.L02002b56:
    .short 0x020c  /* literal data */
.L02002b58:
    .short 0x8790  /* literal data */
.L02002b5a:
    .short 0x020c  /* literal data */
.L02002b5c:
    .short 0x8060  /* literal data */
.L02002b5e:
    .short 0x0209  /* literal data */
.L02002b60:
    .short 0xa250  /* literal data */
.L02002b62:
    .short 0x020c  /* literal data */
.L02002b64:
    .short 0x8200  /* literal data */
.L02002b66:
    .short 0x0209  /* literal data */
.L02002b68:
    .short 0xa254  /* literal data */
.L02002b6a:
    .short 0x020c  /* literal data */
.L02002b6c:
    .short 0x2e41  /* literal data */
.L02002b6e:
    .short 0x0200  /* literal data */
.L02002b70:
    .short 0x80b8  /* literal data */
.L02002b72:
    .short 0x0209  /* literal data */
.L02002b74:
    .short 0xa244  /* literal data */
.L02002b76:
    .short 0x020c  /* literal data */
.L02002b78:
    .short 0x3061  /* literal data */
.L02002b7a:
    .short 0x0200  /* literal data */
.L02002b7c:
    .short 0x81b0  /* literal data */
.L02002b7e:
    .short 0x0209  /* literal data */
.L02002b80:
    .short 0xa248  /* literal data */
.L02002b82:
    .short 0x020c  /* literal data */
.L02002b84:
    .short 0x319d  /* literal data */
.L02002b86:
    .short 0x0200  /* literal data */
.L02002b88:
    .short 0x8228  /* literal data */
.L02002b8a:
    .short 0x0209  /* literal data */
.L02002b8c:
    .short 0xa23c  /* literal data */
.L02002b8e:
    .short 0x020c  /* literal data */
.L02002b90:
    .short 0x2c95  /* literal data */
.L02002b92:
    .short 0x0200  /* literal data */
.L02002b94:
    .short 0x8170  /* literal data */
.L02002b96:
    .short 0x0209  /* literal data */
.L02002b98:
    .short 0xa238  /* literal data */
.L02002b9a:
    .short 0x020c  /* literal data */
.L02002b9c:
    .short 0x2d55  /* literal data */
.L02002b9e:
    .short 0x0200  /* literal data */
.L02002ba0:
    .short 0x8130  /* literal data */
.L02002ba2:
    .short 0x0209  /* literal data */
.L02002ba4:
    .short 0xa240  /* literal data */
.L02002ba6:
    .short 0x020c  /* literal data */
.L02002ba8:
    .short 0x2d09  /* literal data */
.L02002baa:
    .short 0x0200  /* literal data */
.L02002bac:
    .short 0xa1ff  /* literal data */
.L02002bae:
    .short 0x020c  /* literal data */
.L02002bb0:
    .short 0xa274  /* literal data */
.L02002bb2:
    .short 0x020c  /* literal data */
.L02002bb4:
    .short 0x8188  /* literal data */
.L02002bb6:
    .short 0x0209  /* literal data */
.L02002bb8:
    .short 0xa260  /* literal data */
.L02002bba:
    .short 0x020c  /* literal data */
.L02002bbc:
    .short 0x7fdc  /* literal data */
.L02002bbe:
    .short 0x0209  /* literal data */
.L02002bc0:
    .short 0xa25c  /* literal data */
.L02002bc2:
    .short 0x020c  /* literal data */
.L02002bc4:
    .short 0x8004  /* literal data */
.L02002bc6:
    .short 0x0209  /* literal data */
.L02002bc8:
    .short 0xa264  /* literal data */
.L02002bca:
    .short 0x020c  /* literal data */
.L02002bcc:
    .short 0x8148  /* literal data */
.L02002bce:
    .short 0x0209  /* literal data */
.L02002bd0:
    .short 0xa268  /* literal data */
.L02002bd2:
    .short 0x020c  /* literal data */
.L02002bd4:
    .short 0x80e0  /* literal data */
.L02002bd6:
    .short 0x0209  /* literal data */
.L02002bd8:
    .short 0xa270  /* literal data */
.L02002bda:
    .short 0x020c  /* literal data */
.L02002bdc:
    .short 0x8038  /* literal data */
.L02002bde:
    .short 0x0209  /* literal data */
.L02002be0:
    .short 0xa26c  /* literal data */
.L02002be2:
    .short 0x020c  /* literal data */
.L02002be4:
    .short 0x2da1  /* literal data */
.L02002be6:
    .short 0x0200  /* literal data */
.L02002be8:
    .short 0x8240  /* literal data */
.L02002bea:
    .short 0x0209  /* literal data */
.L02002bec:
    .short 0xa278  /* literal data */
.L02002bee:
    .short 0x020c  /* literal data */
.L02002bf0:
    str r4, [r6, #0]
.L02002bf2:
    ldr r1, [pc, #156]
.L02002bf4:
    bl reconstructed_external_thumb_02009608
.L02002bf8:
    ldr r3, [sp, #56]
.L02002bfa:
    ldr r0, [r7, #0]
.L02002bfc:
    ldr r1, [r3, #0]
.L02002bfe:
    movs r2, #0
.L02002c00:
    movs r3, #0
.L02002c02:
    bl reconstructed_external_thumb_0200af94
.L02002c06:
    ldr r2, [sp, #52]
.L02002c08:
    ldr r0, [r7, #0]
.L02002c0a:
    ldr r1, [r2, #0]
.L02002c0c:
    movs r3, #0
.L02002c0e:
    movs r2, #0
.L02002c10:
    bl reconstructed_external_thumb_0200af94
.L02002c14:
    ldr r3, [sp, #48]
.L02002c16:
    ldr r0, [r7, #0]
.L02002c18:
    ldr r1, [r3, #0]
.L02002c1a:
    movs r2, #0
.L02002c1c:
    movs r3, #0
.L02002c1e:
    bl reconstructed_external_thumb_0200af94
.L02002c22:
    ldr r2, [sp, #44]
.L02002c24:
    ldr r0, [r7, #0]
.L02002c26:
    ldr r1, [r2, #0]
.L02002c28:
    movs r3, #0
.L02002c2a:
    movs r2, #0
.L02002c2c:
    bl reconstructed_external_thumb_0200af94
.L02002c30:
    mov r3, r8
.L02002c32:
    ldr r0, [r7, #0]
.L02002c34:
    ldr r1, [r3, #0]
.L02002c36:
    movs r2, #0
.L02002c38:
    movs r3, #0
.L02002c3a:
    bl reconstructed_external_thumb_0200af94
.L02002c3e:
    ldr r2, [sp, #40]
.L02002c40:
    ldr r0, [r7, #0]
.L02002c42:
    ldr r1, [r2, #0]
.L02002c44:
    movs r3, #0
.L02002c46:
    movs r2, #0
.L02002c48:
    bl reconstructed_external_thumb_0200af94
.L02002c4c:
    ldr r1, [r6, #0]
.L02002c4e:
    movs r2, #0
.L02002c50:
    ldr r0, [r7, #0]
.L02002c52:
    movs r3, #0
.L02002c54:
    bl reconstructed_external_thumb_0200af94
.L02002c58:
    ldr r0, [r7, #0]
.L02002c5a:
    bl reconstructed_external_thumb_0200ae64
.L02002c5e:
    ldr r3, [sp, #60]
.L02002c60:
    ldr r0, [r3, #0]
.L02002c62:
    ldr r3, [r0, #0]
.L02002c64:
    ldr r3, [r3, #16]
.L02002c66:
    blx r3
.L02002c68:
    ldr r0, [r7, #0]
.L02002c6a:
    bl reconstructed_external_thumb_0200b35c
.L02002c6e:
    ldr r2, [sp, #84]
.L02002c70:
    movs r1, #0
.L02002c72:
    ldr r0, [r2, #0]
.L02002c74:
    bl reconstructed_external_thumb_0201021c
.L02002c78:
    ldr r0, [r5, #0]
.L02002c7a:
    movs r1, #0
.L02002c7c:
    bl reconstructed_external_thumb_0201021c
.L02002c80:
    add sp, #92
.L02002c82:
    pop {r2, r3, r4, r5}
.L02002c84:
    mov r8, r2
.L02002c86:
    mov r9, r3
.L02002c88:
    mov sl, r4
.L02002c8a:
    mov fp, r5
.L02002c8c:
    pop {r4, r5, r6, r7, pc}
.L02002c8e:
    .short 0x0000  /* literal data */
.L02002c90:
    .short 0x26d1  /* literal data */
.L02002c92:
    .short 0x0200  /* literal data */

/* Keyboard-showKeyLabels-region at 0x0200c3ec, 232 bytes, Thumb. */
.section .reconstructed.fn01,"ax",%progbits
.align 1
.thumb
.global reconstructed_01_Keyboard_showKeyLabels_region
reconstructed_01_Keyboard_showKeyLabels_region:
.L0200c3ec:
    push {r4, r5, r6, r7, lr}
.L0200c3ee:
    mov r7, fp
.L0200c3f0:
    mov r6, sl
.L0200c3f2:
    mov r5, r9
.L0200c3f4:
    mov r4, r8
.L0200c3f6:
    push {r4, r5, r6, r7}
.L0200c3f8:
    movs r2, #1
.L0200c3fa:
    movs r3, #64
.L0200c3fc:
    sub sp, #28
.L0200c3fe:
    strb r2, [r0, r3]
.L0200c400:
    movs r3, #22
.L0200c402:
    movs r1, #0
.L0200c404:
    ldr r2, [pc, #192]
.L0200c406:
    add r3, sp
.L0200c408:
    adds r7, r0, #0
.L0200c40a:
    ldr r5, [pc, #192]
.L0200c40c:
    mov sl, r1
.L0200c40e:
    mov r9, r3
.L0200c410:
    adds r7, #40
.L0200c412:
    str r0, [sp, #12]
.L0200c414:
    str r2, [sp, #8]
.L0200c416:
    b.n .L0200c4a0
.L0200c418:
    ldrb r3, [r5, #1]
.L0200c41a:
    cmp r3, r4
.L0200c41c:
    beq.n .L0200c4ac
.L0200c41e:
    ldrb r3, [r5, #2]
.L0200c420:
    cmp r3, r4
.L0200c422:
    beq.n .L0200c4ac
.L0200c424:
    ldrb r3, [r5, #3]
.L0200c426:
    cmp r3, r4
.L0200c428:
    beq.n .L0200c4ac
.L0200c42a:
    ldrb r3, [r5, #4]
.L0200c42c:
    cmp r3, r4
.L0200c42e:
    beq.n .L0200c4ac
.L0200c430:
    ldrb r3, [r5, #5]
.L0200c432:
    cmp r3, r4
.L0200c434:
    beq.n .L0200c4ac
.L0200c436:
    ldrb r3, [r5, #6]
.L0200c438:
    cmp r3, r4
.L0200c43a:
    beq.n .L0200c4ac
.L0200c43c:
    ldrb r3, [r5, #7]
.L0200c43e:
    cmp r3, r4
.L0200c440:
    beq.n .L0200c4ac
.L0200c442:
    ldrb r3, [r5, #8]
.L0200c444:
    cmp r3, r4
.L0200c446:
    beq.n .L0200c4ac
.L0200c448:
    ldrb r3, [r5, #9]
.L0200c44a:
    cmp r3, r4
.L0200c44c:
    beq.n .L0200c4ac
.L0200c44e:
    movs r1, #5
.L0200c450:
    movs r2, #28
.L0200c452:
    movs r6, #128
.L0200c454:
    mov r8, r1
.L0200c456:
    mov fp, r2
.L0200c458:
    lsls r6, r6, #8
.L0200c45a:
    adds r0, r4, #0
.L0200c45c:
    movs r1, #12
.L0200c45e:
    bl reconstructed_external_thumb_02082848
.L0200c462:
    ldr r2, [sp, #8]
.L0200c464:
    lsls r1, r1, #24
.L0200c466:
    lsrs r1, r1, #24
.L0200c468:
    ldrb r3, [r2, r1]
.L0200c46a:
    add r3, r8
.L0200c46c:
    lsls r3, r3, #24
.L0200c46e:
    lsrs r2, r3, #24
.L0200c470:
    cmp r4, #11
.L0200c472:
    bls.n .L0200c47c
.L0200c474:
    adds r3, r2, #0
.L0200c476:
    adds r3, #111
.L0200c478:
    lsls r3, r3, #24
.L0200c47a:
    lsrs r2, r3, #24
.L0200c47c:
    mov r1, r9
.L0200c47e:
    movs r3, #0
.L0200c480:
    strh r3, [r1, #0]
.L0200c482:
    ldrb r3, [r7, #0]
.L0200c484:
    adds r7, #1
.L0200c486:
    strb r3, [r1, #0]
.L0200c488:
    movs r3, #255
.L0200c48a:
    str r3, [sp, #0]
.L0200c48c:
    ldr r0, [sp, #12]
.L0200c48e:
    mov r3, fp
.L0200c490:
    str r6, [sp, #4]
.L0200c492:
    bl reconstructed_external_thumb_02011c14
.L0200c496:
    movs r2, #1
.L0200c498:
    add sl, r2
.L0200c49a:
    mov r3, sl
.L0200c49c:
    cmp r3, #24
.L0200c49e:
    beq.n .L0200c4b8
.L0200c4a0:
    mov r1, sl
.L0200c4a2:
    lsls r3, r1, #24
.L0200c4a4:
    lsrs r4, r3, #24
.L0200c4a6:
    ldrb r3, [r5, #0]
.L0200c4a8:
    cmp r3, r4
.L0200c4aa:
    bne.n .L0200c418
.L0200c4ac:
    movs r3, #3
.L0200c4ae:
    movs r1, #12
.L0200c4b0:
    ldr r6, [pc, #28]
.L0200c4b2:
    mov r8, r3
.L0200c4b4:
    mov fp, r1
.L0200c4b6:
    b.n .L0200c45a
.L0200c4b8:
    add sp, #28
.L0200c4ba:
    pop {r2, r3, r4, r5}
.L0200c4bc:
    mov r8, r2
.L0200c4be:
    mov r9, r3
.L0200c4c0:
    mov sl, r4
.L0200c4c2:
    mov fp, r5
.L0200c4c4:
    pop {r4, r5, r6, r7, pc}
.L0200c4c6:
    .short 0x0000  /* literal data */
.L0200c4c8:
    .short 0x8b12  /* literal data */
.L0200c4ca:
    .short 0x020c  /* literal data */
.L0200c4cc:
    .short 0x8b08  /* literal data */
.L0200c4ce:
    .short 0x020c  /* literal data */
.L0200c4d0:
    .short 0xffff  /* literal data */
.L0200c4d2:
    .short 0x0000  /* literal data */

/* PPLoadDialog-drawPolaroid-region at 0x0200d678, 204 bytes, Thumb. */
.section .reconstructed.fn02,"ax",%progbits
.align 1
.thumb
.global reconstructed_02_PPLoadDialog_drawPolaroid_region
reconstructed_02_PPLoadDialog_drawPolaroid_region:
.L0200d678:
    push {r4, r5, r6, r7, lr}
.L0200d67a:
    mov r7, sl
.L0200d67c:
    mov r6, r8
.L0200d67e:
    push {r6, r7}
.L0200d680:
    sub sp, #20
.L0200d682:
    adds r5, r3, #0
.L0200d684:
    add r3, sp, #48
.L0200d686:
    ldrb r3, [r3, #0]
.L0200d688:
    movs r4, #65
.L0200d68a:
    mov sl, r3
.L0200d68c:
    ldr r3, [pc, #168]
.L0200d68e:
    adds r6, r0, #0
.L0200d690:
    str r3, [sp, #4]
.L0200d692:
    movs r3, #68
.L0200d694:
    adds r7, r1, #0
.L0200d696:
    mov r8, r2
.L0200d698:
    str r4, [sp, #0]
.L0200d69a:
    bl reconstructed_external_thumb_02011748
.L0200d69e:
    movs r3, #128
.L0200d6a0:
    lsls r3, r3, #8
.L0200d6a2:
    str r3, [sp, #4]
.L0200d6a4:
    adds r0, r6, #0
.L0200d6a6:
    movs r3, #68
.L0200d6a8:
    adds r1, r7, #0
.L0200d6aa:
    mov r2, r8
.L0200d6ac:
    str r4, [sp, #0]
.L0200d6ae:
    bl reconstructed_external_thumb_02011694
.L0200d6b2:
    lsls r4, r5, #2
.L0200d6b4:
    ldr r5, [r6, #40]
.L0200d6b6:
    ldr r3, [r5, r4]
.L0200d6b8:
    cmp r3, #0
.L0200d6ba:
    beq.n .L0200d702
.L0200d6bc:
    ldr r3, [r6, #36]
.L0200d6be:
    ldr r0, [r3, r4]
.L0200d6c0:
    cmp r0, #0
.L0200d6c2:
    beq.n .L0200d6e2
.L0200d6c4:
    mov r2, r8
.L0200d6c6:
    adds r1, r7, #2
.L0200d6c8:
    adds r2, #2
.L0200d6ca:
    movs r3, #48
.L0200d6cc:
    lsls r1, r1, #24
.L0200d6ce:
    lsls r2, r2, #24
.L0200d6d0:
    str r3, [sp, #0]
.L0200d6d2:
    str r0, [sp, #4]
.L0200d6d4:
    lsrs r1, r1, #24
.L0200d6d6:
    lsrs r2, r2, #24
.L0200d6d8:
    adds r0, r6, #0
.L0200d6da:
    movs r3, #64
.L0200d6dc:
    bl reconstructed_external_thumb_02011ae4
.L0200d6e0:
    ldr r5, [r6, #40]
.L0200d6e2:
    movs r0, #64
.L0200d6e4:
    ldr r1, [r4, r5]
.L0200d6e6:
    str r0, [sp, #0]
.L0200d6e8:
    ldr r0, [r6, #20]
.L0200d6ea:
    mov r3, r8
.L0200d6ec:
    ldrh r0, [r0, #30]
.L0200d6ee:
    adds r2, r7, #3
.L0200d6f0:
    adds r3, #51
.L0200d6f2:
    lsls r2, r2, #24
.L0200d6f4:
    lsls r3, r3, #24
.L0200d6f6:
    str r0, [sp, #4]
.L0200d6f8:
    lsrs r2, r2, #24
.L0200d6fa:
    lsrs r3, r3, #24
.L0200d6fc:
    adds r0, r6, #0
.L0200d6fe:
    bl reconstructed_external_thumb_02011c14
.L0200d702:
    mov r3, sl
.L0200d704:
    cmp r3, #0
.L0200d706:
    beq.n .L0200d72c
.L0200d708:
    movs r3, #7
.L0200d70a:
    adds r1, r7, #0
.L0200d70c:
    mov r2, r8
.L0200d70e:
    ldr r0, [pc, #44]
.L0200d710:
    adds r1, #59
.L0200d712:
    adds r2, #2
.L0200d714:
    str r3, [sp, #0]
.L0200d716:
    ldr r3, [pc, #40]
.L0200d718:
    lsls r1, r1, #24
.L0200d71a:
    lsls r2, r2, #24
.L0200d71c:
    str r0, [sp, #4]
.L0200d71e:
    str r3, [sp, #8]
.L0200d720:
    lsrs r1, r1, #24
.L0200d722:
    lsrs r2, r2, #24
.L0200d724:
    adds r0, r6, #0
.L0200d726:
    movs r3, #7
.L0200d728:
    bl reconstructed_external_thumb_02011a60
.L0200d72c:
    add sp, #20
.L0200d72e:
    pop {r2, r3}
.L0200d730:
    mov r8, r2
.L0200d732:
    mov sl, r3
.L0200d734:
    pop {r4, r5, r6, r7, pc}
.L0200d736:
    .short 0x0000  /* literal data */
.L0200d738:
    .short 0xffff  /* literal data */
.L0200d73a:
    .short 0x0000  /* literal data */
.L0200d73c:
    .short 0x802c  /* literal data */
.L0200d73e:
    .short 0x0209  /* literal data */
.L0200d740:
    .short 0x801f  /* literal data */
.L0200d742:
    .short 0x0000  /* literal data */

/* b2Shape-ResetProxy-region at 0x02031424, 284 bytes, ARM. */
.section .reconstructed.fn03,"ax",%progbits
.align 2
.arm
.global reconstructed_03_b2Shape_ResetProxy_region
reconstructed_03_b2Shape_ResetProxy_region:
.L02031424:
    stmdb sp!, {r4, r5, r6, r7, lr}
.L02031428:
    ldr r3, [pc, #268]
.L0203142c:
    mov r5, r0
.L02031430:
    ldrh r0, [r0, #32]
.L02031434:
    sub sp, sp, #44
.L02031438:
    cmp r0, r3
.L0203143c:
    mov r6, r1
.L02031440:
    mov r4, r2
.L02031444:
    beq .L02031454
.L02031448:
    mov r1, r0
.L0203144c:
    mov r0, r6
.L02031450:
    bl reconstructed_external_arm_0203cf34
.L02031454:
    mov r3, #0
.L02031458:
    mov r2, r4
.L0203145c:
    str r3, [sp, #12]
.L02031460:
    str r3, [sp]
.L02031464:
    str r3, [sp, #4]
.L02031468:
    str r3, [sp, #8]
.L0203146c:
    ldr ip, [r5]
.L02031470:
    mov r0, r5
.L02031474:
    mov r1, sp
.L02031478:
    mov lr, pc
.L0203147c:
    ldr pc, [ip, #8]
.L02031480:
    add r3, r6, #95232
.L02031484:
    add r2, r6, #95232
.L02031488:
    add r3, r3, #36
.L0203148c:
    add r2, r2, #28
.L02031490:
    ldr ip, [r3]
.L02031494:
    ldr r0, [r2]
.L02031498:
    ldr lr, [r3, #4]
.L0203149c:
    ldr r3, [sp, #8]
.L020314a0:
    ldr r1, [sp]
.L020314a4:
    ldr r4, [r2, #4]
.L020314a8:
    rsb r0, r3, r0
.L020314ac:
    ldr r2, [sp, #12]
.L020314b0:
    ldr r3, [sp, #4]
.L020314b4:
    rsb r1, ip, r1
.L020314b8:
    rsb r3, lr, r3
.L020314bc:
    rsb r4, r2, r4
.L020314c0:
    cmp r1, r0
.L020314c4:
    str r3, [sp, #36]
.L020314c8:
    str r1, [sp, #32]
.L020314cc:
    str r0, [sp, #24]
.L020314d0:
    str r4, [sp, #28]
.L020314d4:
    addgt r2, sp, #32
.L020314d8:
    addle r2, sp, #24
.L020314dc:
    ldr r2, [r2]
.L020314e0:
    cmp r3, r4
.L020314e4:
    str r2, [sp, #16]
.L020314e8:
    addgt r3, sp, #36
.L020314ec:
    addle r3, sp, #28
.L020314f0:
    ldr r3, [r3]
.L020314f4:
    mov r7, sp
.L020314f8:
    cmp r2, r3
.L020314fc:
    str r3, [sp, #20]
.L02031500:
    addgt r3, sp, #16
.L02031504:
    addle r3, sp, #20
.L02031508:
    ldr r3, [r3]
.L0203150c:
    cmp r3, #0
.L02031510:
    mvnge r3, #0
.L02031514:
    strgeh r3, [r5, #32]
.L02031518:
    blt .L02031524
.L0203151c:
    add sp, sp, #44
.L02031520:
    ldmia sp!, {r4, r5, r6, r7, pc}
.L02031524:
    mov r0, r6
.L02031528:
    mov r1, sp
.L0203152c:
    mov r2, r5
.L02031530:
    bl reconstructed_external_arm_0203df5c
.L02031534:
    strh r0, [r5, #32]
.L02031538:
    b .L0203151c
.L0203153c:
    .long 0x0000ffff  /* literal data */

/* b2Polygon-compilation-unit at 0x0203e768, 30768 bytes, ARM. */
.section .reconstructed.fn04,"ax",%progbits
.align 2
.arm
.global reconstructed_04_b2Polygon_compilation_unit
reconstructed_04_b2Polygon_compilation_unit:
.L0203e768:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203e76c:
    ldr sl, [r0, #4]
.L0203e770:
    ldr r6, [r2, #4]
.L0203e774:
    ldr r0, [r0]
.L0203e778:
    ldr r8, [r2]
.L0203e77c:
    ldr lr, [r3, #4]
.L0203e780:
    ldmia r1, {r2, ip}
.L0203e784:
    sub sp, sp, #92
.L0203e788:
    ldr r4, [r3]
.L0203e78c:
    rsb r2, r0, r2
.L0203e790:
    rsb r3, r6, lr
.L0203e794:
    str sl, [sp, #80]
.L0203e798:
    str r0, [sp, #76]
.L0203e79c:
    rsb ip, sl, ip
.L0203e7a0:
    mov r0, r3
.L0203e7a4:
    mov r1, r0, asr #31
.L0203e7a8:
    mov sl, r2
.L0203e7ac:
    mov fp, sl, asr #31
.L0203e7b0:
    strd sl, [sp, #56]
.L0203e7b4:
    strd r0, [sp, #48]
.L0203e7b8:
    mov r0, ip
.L0203e7bc:
    mov r1, r0, asr #31
.L0203e7c0:
    strd r0, [sp, #64]
.L0203e7c4:
    ldr r3, [sp, #60]
.L0203e7c8:
    ldr r1, [sp, #48]
.L0203e7cc:
    ldr r0, [sp, #56]
.L0203e7d0:
    mul r3, r1, r3
.L0203e7d4:
    rsb r4, r8, r4
.L0203e7d8:
    ldr ip, [sp, #68]
.L0203e7dc:
    ldr fp, [sp, #52]
.L0203e7e0:
    mov r5, r4, asr #31
.L0203e7e4:
    mla fp, r0, fp, r3
.L0203e7e8:
    mul ip, r4, ip
.L0203e7ec:
    ldr sl, [sp, #80]
.L0203e7f0:
    ldr r2, [sp, #76]
.L0203e7f4:
    rsb r6, r6, sl
.L0203e7f8:
    ldr sl, [sp, #64]
.L0203e7fc:
    mov r7, r6, asr #31
.L0203e800:
    mla sl, r5, sl, ip
.L0203e804:
    str fp, [sp, #12]
.L0203e808:
    mul ip, r4, r7
.L0203e80c:
    ldr fp, [sp, #64]
.L0203e810:
    rsb r8, r8, r2
.L0203e814:
    mov r3, r0
.L0203e818:
    mov r2, r1
.L0203e81c:
    umull r0, r1, r2, r3
.L0203e820:
    umull r2, r3, r4, fp
.L0203e824:
    ldr fp, [sp, #68]
.L0203e828:
    mov r9, r8, asr #31
.L0203e82c:
    mla ip, r6, r5, ip
.L0203e830:
    mul fp, r8, fp
.L0203e834:
    str sl, [sp, #8]
.L0203e838:
    ldr lr, [sp, #48]
.L0203e83c:
    ldr sl, [sp, #60]
.L0203e840:
    mul lr, r9, lr
.L0203e844:
    mul sl, r6, sl
.L0203e848:
    str fp, [sp, #4]
.L0203e84c:
    str ip, [sp, #44]
.L0203e850:
    ldr fp, [sp, #56]
.L0203e854:
    ldr ip, [sp, #52]
.L0203e858:
    mla fp, r7, fp, sl
.L0203e85c:
    mla ip, r8, ip, lr
.L0203e860:
    str ip, [sp, #40]
.L0203e864:
    str fp, [sp, #36]
.L0203e868:
    ldr ip, [sp, #56]
.L0203e86c:
    ldr lr, [sp, #64]
.L0203e870:
    umull sl, fp, r6, ip
.L0203e874:
    ldr ip, [sp, #64]
.L0203e878:
    strd sl, [sp, #24]
.L0203e87c:
    ldr sl, [sp, #4]
.L0203e880:
    mov r0, r0, lsr #16
.L0203e884:
    mla lr, r9, lr, sl
.L0203e888:
    umull sl, fp, r8, ip
.L0203e88c:
    strd sl, [sp, #16]
.L0203e890:
    ldr sl, [sp, #12]
.L0203e894:
    ldr fp, [sp, #8]
.L0203e898:
    add r1, sl, r1
.L0203e89c:
    add r3, fp, r3
.L0203e8a0:
    mov r2, r2, lsr #16
.L0203e8a4:
    umull sl, fp, r4, r6
.L0203e8a8:
    orr r2, r2, r3, lsl #16
.L0203e8ac:
    orr r0, r0, r1, lsl #16
.L0203e8b0:
    ldr ip, [sp, #48]
.L0203e8b4:
    rsb r0, r2, r0
.L0203e8b8:
    umull r4, r5, ip, r8
.L0203e8bc:
    str r0, [sp, #84]
.L0203e8c0:
    mov ip, r0
.L0203e8c4:
    ldr r0, [sp, #44]
.L0203e8c8:
    ldr r3, [sp, #28]
.L0203e8cc:
    ldr r2, [sp, #36]
.L0203e8d0:
    add fp, r0, fp
.L0203e8d4:
    cmp ip, #0
.L0203e8d8:
    rsblt ip, ip, #0
.L0203e8dc:
    mov r6, sl, lsr #16
.L0203e8e0:
    add r3, r2, r3
.L0203e8e4:
    cmp ip, #3
.L0203e8e8:
    ldr r1, [sp, #40]
.L0203e8ec:
    ldr ip, [sp, #20]
.L0203e8f0:
    orr r6, r6, fp, lsl #16
.L0203e8f4:
    mov r7, fp, asr #16
.L0203e8f8:
    ldr r2, [sp, #24]
.L0203e8fc:
    ldr fp, [sp, #16]
.L0203e900:
    add ip, lr, ip
.L0203e904:
    add r5, r1, r5
.L0203e908:
    mov r0, r4, lsr #16
.L0203e90c:
    mov r8, r2, lsr #16
.L0203e910:
    mov r4, fp, lsr #16
.L0203e914:
    orr r0, r0, r5, lsl #16
.L0203e918:
    str r3, [sp, #28]
.L0203e91c:
    str ip, [sp, #20]
.L0203e920:
    orr r8, r8, r3, lsl #16
.L0203e924:
    mov r9, r3, asr #16
.L0203e928:
    orr r4, r4, ip, lsl #16
.L0203e92c:
    mov r5, ip, asr #16
.L0203e930:
    ldr sl, [sp, #128]
.L0203e934:
    ble .L0203e9ec
.L0203e938:
    ldr r3, [pc, #328]
.L0203e93c:
    mov fp, #1
.L0203e940:
    strh fp, [r3, #128]
.L0203e944:
    mov lr, r3
.L0203e948:
    ldrh r3, [lr, #128]
.L0203e94c:
    tst r3, #32768
.L0203e950:
    bne .L0203e948
.L0203e954:
    rsb r2, r0, r6
.L0203e958:
    mov r3, r2, asr #31
.L0203e95c:
    mov r3, r3, lsl #16
.L0203e960:
    ldr r0, [sp, #84]
.L0203e964:
    orr r3, r3, r2, lsr #16
.L0203e968:
    mov r1, #67108864
.L0203e96c:
    mov r2, r2, lsl #16
.L0203e970:
    ldr ip, [pc, #272]
.L0203e974:
    strd r2, [lr, #144]
.L0203e978:
    str r0, [r1, #664]
.L0203e97c:
    ldrh r3, [ip, #128]
.L0203e980:
    tst r3, #32768
.L0203e984:
    bne .L0203e97c
.L0203e988:
    mov r3, #67108864
.L0203e98c:
    mov r2, #1
.L0203e990:
    ldr r1, [pc, #240]
.L0203e994:
    ldr lr, [r3, #672]
.L0203e998:
    strh r2, [ip, #128]
.L0203e99c:
    ldrh r3, [r1, #128]
.L0203e9a0:
    tst r3, #32768
.L0203e9a4:
    bne .L0203e99c
.L0203e9a8:
    rsb r2, r4, r8
.L0203e9ac:
    mov r3, r2, asr #31
.L0203e9b0:
    mov r3, r3, lsl #16
.L0203e9b4:
    orr r3, r3, r2, lsr #16
.L0203e9b8:
    mov r2, r2, lsl #16
.L0203e9bc:
    strd r2, [r1, #144]
.L0203e9c0:
    ldr r3, [sp, #84]
.L0203e9c4:
    mov r1, #67108864
.L0203e9c8:
    ldr ip, [pc, #184]
.L0203e9cc:
    str r3, [r1, #664]
.L0203e9d0:
    ldrh r3, [ip, #128]
.L0203e9d4:
    tst r3, #32768
.L0203e9d8:
    bne .L0203e9d0
.L0203e9dc:
    mov r3, #67108864
.L0203e9e0:
    cmp lr, #0
.L0203e9e4:
    ldr r3, [r3, #672]
.L0203e9e8:
    bgt .L0203e9fc
.L0203e9ec:
    mov r3, #0
.L0203e9f0:
    mov r0, r3
.L0203e9f4:
    add sp, sp, #92
.L0203e9f8:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203e9fc:
    ldr r2, [pc, #136]
.L0203ea00:
    cmp lr, r2
.L0203ea04:
    bgt .L0203e9ec
.L0203ea08:
    cmp r3, #0
.L0203ea0c:
    ble .L0203e9ec
.L0203ea10:
    cmp r3, r2
.L0203ea14:
    bgt .L0203e9ec
.L0203ea18:
    ldr ip, [sp, #56]
.L0203ea1c:
    mov r4, lr
.L0203ea20:
    mov r5, r4, asr #31
.L0203ea24:
    mul ip, r5, ip
.L0203ea28:
    ldr r6, [sp, #64]
.L0203ea2c:
    ldr lr, [sp, #60]
.L0203ea30:
    mul r6, r5, r6
.L0203ea34:
    mla lr, r4, lr, ip
.L0203ea38:
    ldr ip, [sp, #56]
.L0203ea3c:
    ldr fp, [sp, #64]
.L0203ea40:
    umull r2, r3, ip, r4
.L0203ea44:
    ldr ip, [sp, #68]
.L0203ea48:
    umull r0, r1, fp, r4
.L0203ea4c:
    mla ip, r4, ip, r6
.L0203ea50:
    add r3, lr, r3
.L0203ea54:
    add r1, ip, r1
.L0203ea58:
    mov r2, r2, lsr #16
.L0203ea5c:
    mov r0, r0, lsr #16
.L0203ea60:
    ldr fp, [sp, #76]
.L0203ea64:
    ldr ip, [sp, #80]
.L0203ea68:
    orr r2, r2, r3, lsl #16
.L0203ea6c:
    orr r0, r0, r1, lsl #16
.L0203ea70:
    add r2, fp, r2
.L0203ea74:
    add r0, ip, r0
.L0203ea78:
    mov r3, #1
.L0203ea7c:
    str r0, [sl, #4]
.L0203ea80:
    str r2, [sl]
.L0203ea84:
    b .L0203e9f0
.L0203ea88:
    .long 0x04000200  /* literal data */
.L0203ea8c:
    .long 0x0000ffff  /* literal data */
.L0203ea90:
    stmdb sp!, {r4, lr}
.L0203ea94:
    sub sp, sp, #16
.L0203ea98:
    mov r4, #0
.L0203ea9c:
    add ip, sp, #8
.L0203eaa0:
    str r4, [sp, #8]
.L0203eaa4:
    str ip, [sp]
.L0203eaa8:
    str r4, [sp, #12]
.L0203eaac:
    bl .L0203e768
.L0203eab0:
    add sp, sp, #16
.L0203eab4:
    ldmia sp!, {r4, pc}
.L0203eab8:
    mov r3, #0
.L0203eabc:
    strb r3, [r0, #16]
.L0203eac0:
    str r3, [r0, #12]
.L0203eac4:
    str r3, [r0]
.L0203eac8:
    str r3, [r0, #4]
.L0203eacc:
    str r3, [r0, #8]
.L0203ead0:
    bx lr
.L0203ead4:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203ead8:
    ldrb r6, [r1, #16]
.L0203eadc:
    sub sp, sp, #12
.L0203eae0:
    cmp r6, #0
.L0203eae4:
    ldrne r3, [r1, #12]
.L0203eae8:
    mov fp, r1
.L0203eaec:
    str r0, [sp, #4]
.L0203eaf0:
    strne r3, [r0]
.L0203eaf4:
    bne .L0203ebd8
.L0203eaf8:
    ldr r5, [r1, #8]
.L0203eafc:
    ldr sl, [r1]
.L0203eb00:
    ldr r8, [r1, #4]
.L0203eb04:
    mov r3, r5, lsl #2
.L0203eb08:
    str r6, [r1, #12]
.L0203eb0c:
    add r2, r3, r8
.L0203eb10:
    add r3, sl, r3
.L0203eb14:
    ldr ip, [r3, #-4]
.L0203eb18:
    ldr r4, [r2, #-4]
.L0203eb1c:
    ldr r3, [r8]
.L0203eb20:
    ldr lr, [sl]
.L0203eb24:
    smull r0, r1, r3, ip
.L0203eb28:
    smull r2, r3, r4, lr
.L0203eb2c:
    mov r0, r0, lsr #16
.L0203eb30:
    mov r2, r2, lsr #16
.L0203eb34:
    orr r0, r0, r1, lsl #16
.L0203eb38:
    orr r2, r2, r3, lsl #16
.L0203eb3c:
    sub r5, r5, #1
.L0203eb40:
    rsb r0, r2, r0
.L0203eb44:
    cmp r5, #0
.L0203eb48:
    str r0, [fp, #12]
.L0203eb4c:
    add r9, fp, #12
.L0203eb50:
    ldrle r6, [r9]
.L0203eb54:
    ble .L0203ebb8
.L0203eb58:
    mov r7, r6
.L0203eb5c:
    str r5, [sp]
.L0203eb60:
    mov r6, r0
.L0203eb64:
    mov r5, r7
.L0203eb68:
    add r3, r5, r8
.L0203eb6c:
    add r2, sl, r5
.L0203eb70:
    ldr ip, [r3, #4]
.L0203eb74:
    ldr lr, [r5, r8]
.L0203eb78:
    ldr r3, [sl, r5]
.L0203eb7c:
    ldr r4, [r2, #4]
.L0203eb80:
    smull r0, r1, ip, r3
.L0203eb84:
    smull r2, r3, lr, r4
.L0203eb88:
    mov r0, r0, lsr #16
.L0203eb8c:
    mov r2, r2, lsr #16
.L0203eb90:
    orr r2, r2, r3, lsl #16
.L0203eb94:
    orr r0, r0, r1, lsl #16
.L0203eb98:
    rsb r0, r2, r0
.L0203eb9c:
    ldr r2, [sp]
.L0203eba0:
    add r7, r7, #1
.L0203eba4:
    add r6, r0, r6
.L0203eba8:
    cmp r2, r7
.L0203ebac:
    str r6, [r9]
.L0203ebb0:
    add r5, r5, #4
.L0203ebb4:
    bgt .L0203eb68
.L0203ebb8:
    mov r3, r6, asr #8
.L0203ebbc:
    mov r3, r3, lsl #7
.L0203ebc0:
    str r3, [r9]
.L0203ebc4:
    mov r2, r3
.L0203ebc8:
    mov r3, #1
.L0203ebcc:
    strb r3, [fp, #16]
.L0203ebd0:
    ldr r3, [sp, #4]
.L0203ebd4:
    str r2, [r3]
.L0203ebd8:
    ldr r0, [sp, #4]
.L0203ebdc:
    add sp, sp, #12
.L0203ebe0:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203ebe4:
    str lr, [sp, #-4]!
.L0203ebe8:
    sub sp, sp, #12
.L0203ebec:
    mov r1, r0
.L0203ebf0:
    add r0, sp, #4
.L0203ebf4:
    bl .L0203ead4
.L0203ebf8:
    ldr r0, [sp, #4]
.L0203ebfc:
    cmp r0, #0
.L0203ec00:
    movle r0, #0
.L0203ec04:
    movgt r0, #1
.L0203ec08:
    add sp, sp, #12
.L0203ec0c:
    ldmia sp!, {pc}
.L0203ec10:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203ec14:
    ldr sl, [r0, #8]
.L0203ec18:
    cmp sl, #0
.L0203ec1c:
    ble .L0203ecbc
.L0203ec20:
    mov r5, #0
.L0203ec24:
    ldmia r0, {r6, r7}
.L0203ec28:
    sub r9, sl, #1
.L0203ec2c:
    mov fp, r5
.L0203ec30:
    mov r8, r5
.L0203ec34:
    cmp r5, #0
.L0203ec38:
    mov r1, r9
.L0203ec3c:
    subne r1, r5, #1
.L0203ec40:
    cmp r9, r5
.L0203ec44:
    mov r0, #0
.L0203ec48:
    addne r0, r8, #4
.L0203ec4c:
    ldr r3, [r8, r6]
.L0203ec50:
    ldr r4, [r8, r7]
.L0203ec54:
    ldr lr, [r7, r1, lsl #2]
.L0203ec58:
    ldr r2, [r7, r0]
.L0203ec5c:
    ldr r1, [r6, r1, lsl #2]
.L0203ec60:
    ldr ip, [r6, r0]
.L0203ec64:
    rsb r2, r4, r2
.L0203ec68:
    rsb ip, r3, ip
.L0203ec6c:
    rsb lr, lr, r4
.L0203ec70:
    rsb r3, r1, r3
.L0203ec74:
    smull r0, r1, r3, r2
.L0203ec78:
    smull r2, r3, ip, lr
.L0203ec7c:
    mov r0, r0, lsr #16
.L0203ec80:
    mov r2, r2, lsr #16
.L0203ec84:
    orr r0, r0, r1, lsl #16
.L0203ec88:
    orr r2, r2, r3, lsl #16
.L0203ec8c:
    rsb r0, r2, r0
.L0203ec90:
    cmp r5, #0
.L0203ec94:
    mvn r0, r0
.L0203ec98:
    add r8, r8, #4
.L0203ec9c:
    add r5, r5, #1
.L0203eca0:
    mov r0, r0, lsr #31
.L0203eca4:
    beq .L0203ecb0
.L0203eca8:
    cmp fp, r0
.L0203ecac:
    bne .L0203ecc4
.L0203ecb0:
    cmp sl, r5
.L0203ecb4:
    mov fp, r0
.L0203ecb8:
    bne .L0203ec34
.L0203ecbc:
    mov r0, #1
.L0203ecc0:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203ecc4:
    mov r0, #0
.L0203ecc8:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203eccc:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203ecd0:
    ldr r4, [r0, #8]
.L0203ecd4:
    sub sp, sp, #44
.L0203ecd8:
    mov r9, r0
.L0203ecdc:
    mov ip, #0
.L0203ece0:
    mov r5, #4
.L0203ece4:
    b .L0203ecf0
.L0203ece8:
    mov r5, fp
.L0203ecec:
    mov ip, r8
.L0203ecf0:
    cmp ip, r4
.L0203ecf4:
    bge .L0203edc4
.L0203ecf8:
    ldr lr, [r9]
.L0203ecfc:
    ldr r1, [r9, #4]
.L0203ed00:
    sub r3, r5, #4
.L0203ed04:
    ldr r2, [lr, r3]
.L0203ed08:
    ldr r0, [r1, r3]
.L0203ed0c:
    add r8, ip, #1
.L0203ed10:
    sub r3, r4, #1
.L0203ed14:
    cmp r8, r3
.L0203ed18:
    movle r3, r5
.L0203ed1c:
    movgt r3, #0
.L0203ed20:
    str r2, [sp, #32]
.L0203ed24:
    str r0, [sp, #36]
.L0203ed28:
    ldr r2, [lr, r3]
.L0203ed2c:
    ldr ip, [r1, r3]
.L0203ed30:
    add fp, r5, #4
.L0203ed34:
    mov sl, fp
.L0203ed38:
    mov lr, r8
.L0203ed3c:
    str r2, [sp, #24]
.L0203ed40:
    str ip, [sp, #28]
.L0203ed44:
    cmp lr, r4
.L0203ed48:
    sub r7, sl, #4
.L0203ed4c:
    add r6, lr, #1
.L0203ed50:
    sub ip, r4, #1
.L0203ed54:
    add r0, sp, #32
.L0203ed58:
    add r1, sp, #24
.L0203ed5c:
    add r2, sp, #16
.L0203ed60:
    add r3, sp, #8
.L0203ed64:
    bge .L0203ece8
.L0203ed68:
    ldr r5, [r9, #4]
.L0203ed6c:
    cmp r6, ip
.L0203ed70:
    ldr ip, [r7, r5]
.L0203ed74:
    movle r4, sl
.L0203ed78:
    str ip, [sp, #4]
.L0203ed7c:
    ldr ip, [r9]
.L0203ed80:
    movgt r4, #0
.L0203ed84:
    ldr lr, [r7, ip]
.L0203ed88:
    ldr ip, [sp, #4]
.L0203ed8c:
    str lr, [sp, #16]
.L0203ed90:
    ldr lr, [r9]
.L0203ed94:
    str ip, [sp, #20]
.L0203ed98:
    ldr ip, [r4, r5]
.L0203ed9c:
    ldr r4, [r4, lr]
.L0203eda0:
    str ip, [sp, #12]
.L0203eda4:
    str r4, [sp, #8]
.L0203eda8:
    bl .L0203ea90
.L0203edac:
    cmp r0, #0
.L0203edb0:
    add sl, sl, #4
.L0203edb4:
    mov lr, r6
.L0203edb8:
    bne .L0203edd0
.L0203edbc:
    ldr r4, [r9, #8]
.L0203edc0:
    b .L0203ed44
.L0203edc4:
    mov r0, #1
.L0203edc8:
    add sp, sp, #44
.L0203edcc:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203edd0:
    mov r0, #0
.L0203edd4:
    b .L0203edc8
.L0203edd8:
    cmp r2, #1
.L0203eddc:
    stmdb sp!, {r4, r5, r6, lr}
.L0203ede0:
    mov r6, r0
.L0203ede4:
    mov r4, r1
.L0203ede8:
    ldmeqia sp!, {r4, r5, r6, pc}
.L0203edec:
    sub ip, r2, #1
.L0203edf0:
    cmp ip, #0
.L0203edf4:
    ldmleia sp!, {r4, r5, r6, pc}
.L0203edf8:
    mov r3, r2, lsl #2
.L0203edfc:
    add r2, r0, r3
.L0203ee00:
    mov r5, #0
.L0203ee04:
    add r3, r1, r3
.L0203ee08:
    mov lr, ip
.L0203ee0c:
    sub r0, r3, #4
.L0203ee10:
    sub r1, r2, #4
.L0203ee14:
    mov ip, r5
.L0203ee18:
    ldr r2, [ip, r6]
.L0203ee1c:
    ldr r3, [r1]
.L0203ee20:
    add r5, r5, #1
.L0203ee24:
    str r3, [ip, r6]
.L0203ee28:
    str r2, [r1], #-4
.L0203ee2c:
    ldr r2, [ip, r4]
.L0203ee30:
    ldr r3, [r0]
.L0203ee34:
    sub lr, lr, #1
.L0203ee38:
    cmp lr, r5
.L0203ee3c:
    str r3, [ip, r4]
.L0203ee40:
    str r2, [r0], #-4
.L0203ee44:
    add ip, ip, #4
.L0203ee48:
    bgt .L0203ee18
.L0203ee4c:
    ldmia sp!, {r4, r5, r6, pc}
.L0203ee50:
    mov r3, r0
.L0203ee54:
    ldr r2, [r0, #8]
.L0203ee58:
    ldr r1, [r3, #4]
.L0203ee5c:
    ldr r0, [r0]
.L0203ee60:
    b .L0203edd8
.L0203ee64:
    ldr ip, [r0]
.L0203ee68:
    cmp ip, #0
.L0203ee6c:
    mov ip, r3
.L0203ee70:
    bge .L0203ee9c
.L0203ee74:
    ldr r3, [r2]
.L0203ee78:
    mov r0, #1
.L0203ee7c:
    cmp r3, #0
.L0203ee80:
    bxgt lr
.L0203ee84:
    ldr r2, [ip]
.L0203ee88:
    ldr r3, [r1]
.L0203ee8c:
    cmp r2, r3
.L0203ee90:
    movlt r0, #0
.L0203ee94:
    movge r0, #1
.L0203ee98:
    bx lr
.L0203ee9c:
    ldr r3, [r2]
.L0203eea0:
    mov r0, #0
.L0203eea4:
    cmp r3, r0
.L0203eea8:
    bxlt lr
.L0203eeac:
    ldr r2, [ip]
.L0203eeb0:
    ldr r3, [r1]
.L0203eeb4:
    cmp r2, r3
.L0203eeb8:
    movge r0, #0
.L0203eebc:
    movlt r0, #1
.L0203eec0:
    bx lr
.L0203eec4:
    stmdb sp!, {r4, lr}
.L0203eec8:
    mov r4, r1
.L0203eecc:
    bl reconstructed_external_arm_02097870
.L0203eed0:
    subs r0, r1, #0
.L0203eed4:
    ldmgeia sp!, {r4, pc}
.L0203eed8:
    add r0, r4, r0
.L0203eedc:
    add r0, r0, r4
.L0203eee0:
    subs r1, r0, r4
.L0203eee4:
    bmi .L0203eedc
.L0203eee8:
    mov r0, r1
.L0203eeec:
    ldmia sp!, {r4, pc}
.L0203eef0:
    mov r3, #0
.L0203eef4:
    str r3, [r0, #136]
.L0203eef8:
    str r3, [r0]
.L0203eefc:
    str r3, [r0, #4]
.L0203ef00:
    bx lr
.L0203ef04:
    str lr, [sp, #-4]!
.L0203ef08:
    mov r2, #0
.L0203ef0c:
    str r2, [r0]
.L0203ef10:
    str r2, [r0, #4]
.L0203ef14:
    ldmia r1, {ip, lr}
.L0203ef18:
    str r2, [r0, #136]
.L0203ef1c:
    stmia r0, {ip, lr}
.L0203ef20:
    ldr pc, [sp], #4
.L0203ef24:
    ldr r3, [r0, #136]
.L0203ef28:
    sub r2, r3, #1
.L0203ef2c:
    cmp r2, r1
.L0203ef30:
    str r2, [r0, #136]
.L0203ef34:
    bxle lr
.L0203ef38:
    mov r3, r1, lsl #2
.L0203ef3c:
    add r3, r3, #12
.L0203ef40:
    add r0, r0, r3
.L0203ef44:
    ldr r3, [r0]
.L0203ef48:
    add r1, r1, #1
.L0203ef4c:
    cmp r2, r1
.L0203ef50:
    str r3, [r0, #-4]
.L0203ef54:
    add r0, r0, #4
.L0203ef58:
    bgt .L0203ef44
.L0203ef5c:
    bx lr
.L0203ef60:
    stmdb sp!, {r4, lr}
.L0203ef64:
    ldr r4, [r0, #136]
.L0203ef68:
    cmp r4, #0
.L0203ef6c:
    ble .L0203efa8
.L0203ef70:
    ldr lr, [r1]
.L0203ef74:
    mov ip, #0
.L0203ef78:
    ldr r2, [r0, #8]
.L0203ef7c:
    add ip, ip, #1
.L0203ef80:
    ldr r3, [r2]
.L0203ef84:
    add r0, r0, #4
.L0203ef88:
    cmp r3, lr
.L0203ef8c:
    bne .L0203efa0
.L0203ef90:
    ldr r2, [r2, #4]
.L0203ef94:
    ldr r3, [r1, #4]
.L0203ef98:
    cmp r2, r3
.L0203ef9c:
    beq .L0203efb0
.L0203efa0:
    cmp r4, ip
.L0203efa4:
    bne .L0203ef78
.L0203efa8:
    mov r0, #0
.L0203efac:
    ldmia sp!, {r4, pc}
.L0203efb0:
    mov r0, #1
.L0203efb4:
    ldmia sp!, {r4, pc}
.L0203efb8:
    stmdb sp!, {r4, r5, lr}
.L0203efbc:
    ldr lr, [r0, #136]
.L0203efc0:
    sub sp, sp, #4
.L0203efc4:
    cmp lr, #0
.L0203efc8:
    mov r5, r0
.L0203efcc:
    mov r4, r1
.L0203efd0:
    ble .L0203f00c
.L0203efd4:
    ldr r1, [r1]
.L0203efd8:
    mov ip, #0
.L0203efdc:
    ldr r2, [r0, #8]
.L0203efe0:
    add r0, r0, #4
.L0203efe4:
    ldr r3, [r2]
.L0203efe8:
    cmp r3, r1
.L0203efec:
    bne .L0203f000
.L0203eff0:
    ldr r2, [r2, #4]
.L0203eff4:
    ldr r3, [r4, #4]
.L0203eff8:
    cmp r2, r3
.L0203effc:
    beq .L0203f060
.L0203f000:
    add ip, ip, #1
.L0203f004:
    cmp lr, ip
.L0203f008:
    bne .L0203efdc
.L0203f00c:
    ldr r2, [pc, #84]
.L0203f010:
    ldr r0, [pc, #84]
.L0203f014:
    ldr r1, [pc, #84]
.L0203f018:
    bl reconstructed_external_arm_02097804
.L0203f01c:
    ldr lr, [r5, #136]
.L0203f020:
    mvn r2, #0
.L0203f024:
    sub lr, lr, #1
.L0203f028:
    cmp lr, r2
.L0203f02c:
    str lr, [r5, #136]
.L0203f030:
    ble .L0203f058
.L0203f034:
    mov r3, r2, lsl #2
.L0203f038:
    add r3, r3, #12
.L0203f03c:
    add r0, r5, r3
.L0203f040:
    ldr r3, [r0]
.L0203f044:
    add r2, r2, #1
.L0203f048:
    cmp lr, r2
.L0203f04c:
    str r3, [r0, #-4]
.L0203f050:
    add r0, r0, #4
.L0203f054:
    bgt .L0203f040
.L0203f058:
    add sp, sp, #4
.L0203f05c:
    ldmia sp!, {r4, r5, pc}
.L0203f060:
    mov r2, ip
.L0203f064:
    b .L0203f024
.L0203f068:
    .long 0x020c3900  /* literal data */
.L0203f06c:
    .long 0x020c38e8  /* literal data */
.L0203f070:
    .long 0x00000607  /* literal data */
.L0203f074:
    stmdb sp!, {r4, r5, lr}
.L0203f078:
    ldr ip, [r0, #136]
.L0203f07c:
    mov r4, r0
.L0203f080:
    cmp ip, #31
.L0203f084:
    mov r5, r1
.L0203f088:
    sub sp, sp, #4
.L0203f08c:
    ldr r0, [pc, #44]
.L0203f090:
    ldr r2, [pc, #44]
.L0203f094:
    ldr r1, [pc, #44]
.L0203f098:
    ble .L0203f0a4
.L0203f09c:
    bl reconstructed_external_arm_02097804
.L0203f0a0:
    ldr ip, [r4, #136]
.L0203f0a4:
    mov r3, ip, lsl #2
.L0203f0a8:
    add r2, ip, #1
.L0203f0ac:
    add r3, r3, r4
.L0203f0b0:
    str r5, [r3, #8]
.L0203f0b4:
    str r2, [r4, #136]
.L0203f0b8:
    add sp, sp, #4
.L0203f0bc:
    ldmia sp!, {r4, r5, pc}
.L0203f0c0:
    .long 0x020c38e8  /* literal data */
.L0203f0c4:
    .long 0x020c3908  /* literal data */
.L0203f0c8:
    .long 0x000005f8  /* literal data */
.L0203f0cc:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
.L0203f0d0:
    mov r5, #0
.L0203f0d4:
    mov r6, #3
.L0203f0d8:
    mov r7, r0
.L0203f0dc:
    str r6, [r0, #8]
.L0203f0e0:
    str r5, [r0, #12]
.L0203f0e4:
    mov r0, #12
.L0203f0e8:
    mov r8, r1
.L0203f0ec:
    bl reconstructed_external_arm_0209787c
.L0203f0f0:
    ldr r4, [r7, #8]
.L0203f0f4:
    mov r3, r0
.L0203f0f8:
    str r5, [r3], #4
.L0203f0fc:
    str r0, [r7]
.L0203f100:
    str r5, [r0, #4]
.L0203f104:
    str r5, [r3, #4]
.L0203f108:
    mov r0, r4, lsl #2
.L0203f10c:
    bl reconstructed_external_arm_0209787c
.L0203f110:
    cmp r4, r5
.L0203f114:
    beq .L0203f130
.L0203f118:
    mov r3, r5
.L0203f11c:
    mov r2, r5
.L0203f120:
    str r2, [r0, r3, lsl #2]
.L0203f124:
    add r3, r3, #1
.L0203f128:
    cmp r4, r3
.L0203f12c:
    bne .L0203f120
.L0203f130:
    ldr r6, [r7, #8]
.L0203f134:
    str r0, [r7, #4]
.L0203f138:
    cmp r6, #0
.L0203f13c:
    ble .L0203f170
.L0203f140:
    mov lr, #0
.L0203f144:
    ldmia r8, {r1, r5}
.L0203f148:
    ldr r4, [r7]
.L0203f14c:
    mov ip, lr
.L0203f150:
    ldr r3, [ip, r1]
.L0203f154:
    add lr, lr, #1
.L0203f158:
    str r3, [ip, r4]
.L0203f15c:
    ldr r2, [ip, r5]
.L0203f160:
    cmp r6, lr
.L0203f164:
    str r2, [ip, r0]
.L0203f168:
    add ip, ip, #4
.L0203f16c:
    bgt .L0203f150
.L0203f170:
    mov r0, r7
.L0203f174:
    ldmia sp!, {r4, r5, r6, r7, r8, pc}
.L0203f178:
    stmdb sp!, {r4, r5, r6, r7, lr}
.L0203f17c:
    ldr r4, [r0, #8]
.L0203f180:
    sub sp, sp, #4
.L0203f184:
    mov r7, r0
.L0203f188:
    mov r0, r4, lsl #3
.L0203f18c:
    bl reconstructed_external_arm_0209787c
.L0203f190:
    cmp r4, #0
.L0203f194:
    beq .L0203f1c0
.L0203f198:
    mov r1, #0
.L0203f19c:
    mov r2, r1
.L0203f1a0:
    mov ip, r1
.L0203f1a4:
    add r1, r1, #1
.L0203f1a8:
    add r3, r0, r2
.L0203f1ac:
    cmp r4, r1
.L0203f1b0:
    str ip, [r2, r0]
.L0203f1b4:
    str ip, [r3, #4]
.L0203f1b8:
    add r2, r2, #8
.L0203f1bc:
    bne .L0203f1a4
.L0203f1c0:
    ldr r6, [r7, #8]
.L0203f1c4:
    cmp r6, #0
.L0203f1c8:
    ble .L0203f200
.L0203f1cc:
    mov lr, #0
.L0203f1d0:
    ldmia r7, {r4, r5}
.L0203f1d4:
    mov ip, lr
.L0203f1d8:
    mov r1, r0
.L0203f1dc:
    ldr r3, [ip, r4]
.L0203f1e0:
    ldr r2, [ip, r5]
.L0203f1e4:
    str r3, [r0, lr, lsl #3]
.L0203f1e8:
    add lr, lr, #1
.L0203f1ec:
    cmp lr, r6
.L0203f1f0:
    str r2, [r1, #4]
.L0203f1f4:
    add ip, ip, #4
.L0203f1f8:
    add r1, r1, #8
.L0203f1fc:
    bne .L0203f1dc
.L0203f200:
    add sp, sp, #4
.L0203f204:
    ldmia sp!, {r4, r5, r6, r7, pc}
.L0203f208:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
.L0203f20c:
    mov r5, r0
.L0203f210:
    mov sl, #0
.L0203f214:
    mov r6, r3
.L0203f218:
    str sl, [r0, #12]
.L0203f21c:
    sub sp, sp, #4
.L0203f220:
    str r3, [r5, #8]
.L0203f224:
    mov r0, r3, lsl #2
.L0203f228:
    mov r8, r1
.L0203f22c:
    mov r7, r2
.L0203f230:
    bl reconstructed_external_arm_0209787c
.L0203f234:
    cmp r6, sl
.L0203f238:
    beq .L0203f254
.L0203f23c:
    mov r3, sl
.L0203f240:
    mov r2, sl
.L0203f244:
    str r2, [r0, r3, lsl #2]
.L0203f248:
    add r3, r3, #1
.L0203f24c:
    cmp r3, r6
.L0203f250:
    bne .L0203f244
.L0203f254:
    ldr r4, [r5, #8]
.L0203f258:
    str r0, [r5]
.L0203f25c:
    mov r0, r4, lsl #2
.L0203f260:
    bl reconstructed_external_arm_0209787c
.L0203f264:
    cmp r4, #0
.L0203f268:
    beq .L0203f284
.L0203f26c:
    mov r3, #0
.L0203f270:
    mov r2, r3
.L0203f274:
    str r2, [r0, r3, lsl #2]
.L0203f278:
    add r3, r3, #1
.L0203f27c:
    cmp r4, r3
.L0203f280:
    bne .L0203f274
.L0203f284:
    ldr r4, [r5, #8]
.L0203f288:
    str r0, [r5, #4]
.L0203f28c:
    cmp r4, #0
.L0203f290:
    ble .L0203f2c0
.L0203f294:
    mov ip, #0
.L0203f298:
    ldr lr, [r5]
.L0203f29c:
    mov r1, ip
.L0203f2a0:
    ldr r3, [r1, r8]
.L0203f2a4:
    add ip, ip, #1
.L0203f2a8:
    str r3, [lr, r1]
.L0203f2ac:
    ldr r2, [r1, r7]
.L0203f2b0:
    cmp r4, ip
.L0203f2b4:
    str r2, [r0, r1]
.L0203f2b8:
    add r1, r1, #4
.L0203f2bc:
    bgt .L0203f2a0
.L0203f2c0:
    mov r3, #0
.L0203f2c4:
    mov r0, r5
.L0203f2c8:
    strb r3, [r5, #16]
.L0203f2cc:
    add sp, sp, #4
.L0203f2d0:
    ldmia sp!, {r4, r5, r6, r7, r8, sl, pc}
.L0203f2d4:
    ldr r3, [r0, #8]
.L0203f2d8:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
.L0203f2dc:
    cmp r3, #2
.L0203f2e0:
    mov sl, r0
.L0203f2e4:
    mov r8, r1
.L0203f2e8:
    ldmleia sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L0203f2ec:
    bl .L0203f178
.L0203f2f0:
    ldr r3, [sl, #8]
.L0203f2f4:
    mov r5, r0
.L0203f2f8:
    cmp r3, #8
.L0203f2fc:
    bgt .L0203f3b4
.L0203f300:
    mov r9, #0
.L0203f304:
    mov r6, r9
.L0203f308:
    mov r7, r9
.L0203f30c:
    b .L0203f338
.L0203f310:
    rsb r3, r9, r6
.L0203f314:
    mov r3, r3, lsl #3
.L0203f318:
    add r3, r3, #32
.L0203f31c:
    ldr r1, [r1, #4]
.L0203f320:
    add r2, r8, r3
.L0203f324:
    str ip, [r8, r3]
.L0203f328:
    str r1, [r2, #4]
.L0203f32c:
    ldr r3, [sl, #8]
.L0203f330:
    add r7, r7, #8
.L0203f334:
    mov r6, r4
.L0203f338:
    add r4, r6, #1
.L0203f33c:
    cmp r6, r3
.L0203f340:
    mov r1, r3
.L0203f344:
    mov r0, r4
.L0203f348:
    bge .L0203f398
.L0203f34c:
    bl .L0203eec4
.L0203f350:
    ldr ip, [r7, r5]
.L0203f354:
    ldr r3, [r5, r0, lsl #3]
.L0203f358:
    add r1, r5, r7
.L0203f35c:
    cmp r3, ip
.L0203f360:
    mov r0, r4
.L0203f364:
    bne .L0203f310
.L0203f368:
    ldr r1, [sl, #8]
.L0203f36c:
    bl .L0203eec4
.L0203f370:
    mov r0, r0, lsl #3
.L0203f374:
    add r0, r0, r5
.L0203f378:
    add r1, r5, r7
.L0203f37c:
    ldr r2, [r0, #4]
.L0203f380:
    ldr r3, [r1, #4]
.L0203f384:
    cmp r2, r3
.L0203f388:
    addeq r9, r9, #1
.L0203f38c:
    beq .L0203f32c
.L0203f390:
    ldr ip, [r7, r5]
.L0203f394:
    b .L0203f310
.L0203f398:
    rsb r3, r9, r3
.L0203f39c:
    cmp r5, #0
.L0203f3a0:
    str r3, [r8, #96]
.L0203f3a4:
    ldmeqia sp!, {r4, r5, r6, r7, r8, r9, sl, pc}
.L0203f3a8:
    mov r0, r5
.L0203f3ac:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, lr}
.L0203f3b0:
    b reconstructed_external_arm_02097888
.L0203f3b4:
    ldr r0, [pc, #16]
.L0203f3b8:
    mov r1, #512
.L0203f3bc:
    ldr r2, [pc, #12]
.L0203f3c0:
    bl reconstructed_external_arm_02097804
.L0203f3c4:
    ldr r3, [sl, #8]
.L0203f3c8:
    b .L0203f300
.L0203f3cc:
    .long 0x020c38e8  /* literal data */
.L0203f3d0:
    .long 0x020c3924  /* literal data */
.L0203f3d4:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203f3d8:
    ldr r5, [r0, #8]
.L0203f3dc:
    sub sp, sp, #28
.L0203f3e0:
    cmp r5, #0
.L0203f3e4:
    mov r8, r0
.L0203f3e8:
    mov fp, r1
.L0203f3ec:
    ble .L0203f6a8
.L0203f3f0:
    ldr r3, [r1]
.L0203f3f4:
    ldr r9, [r0]
.L0203f3f8:
    mov r6, r3
.L0203f3fc:
    mvn r1, #0
.L0203f400:
    ldr sl, [r6], #4
.L0203f404:
    add r3, r3, #8
.L0203f408:
    mov r7, r1
.L0203f40c:
    mov r4, #0
.L0203f410:
    str r1, [sp, #4]
.L0203f414:
    str r3, [sp, #20]
.L0203f418:
    str r1, [sp, #8]
.L0203f41c:
    str r1, [sp, #12]
.L0203f420:
    b .L0203f464
.L0203f424:
    ldr r2, [fp, #4]
.L0203f428:
    ldr r1, [r8, #4]
.L0203f42c:
    ldr r0, [r2]
.L0203f430:
    ldr r3, [r1, lr]
.L0203f434:
    cmp r3, r0
.L0203f438:
    bne .L0203f474
.L0203f43c:
    cmn r7, #1
.L0203f440:
    moveq r2, #0
.L0203f444:
    movne r3, #0
.L0203f448:
    moveq r7, r4
.L0203f44c:
    streq r2, [sp, #4]
.L0203f450:
    strne r4, [sp, #8]
.L0203f454:
    strne r3, [sp, #12]
.L0203f458:
    add r4, r4, #1
.L0203f45c:
    cmp r5, r4
.L0203f460:
    beq .L0203f4c0
.L0203f464:
    ldr ip, [r9, r4, lsl #2]
.L0203f468:
    mov lr, r4, lsl #2
.L0203f46c:
    cmp ip, sl
.L0203f470:
    beq .L0203f424
.L0203f474:
    ldr r3, [r6]
.L0203f478:
    cmp ip, r3
.L0203f47c:
    bne .L0203f640
.L0203f480:
    ldr r2, [fp, #4]
.L0203f484:
    ldr r1, [r8, #4]
.L0203f488:
    ldr r0, [r2, #4]
.L0203f48c:
    ldr r3, [r1, lr]
.L0203f490:
    cmp r3, r0
.L0203f494:
    bne .L0203f640
.L0203f498:
    cmn r7, #1
.L0203f49c:
    moveq r7, r4
.L0203f4a0:
    moveq r1, #1
.L0203f4a4:
    strne r4, [sp, #8]
.L0203f4a8:
    movne r2, #1
.L0203f4ac:
    add r4, r4, #1
.L0203f4b0:
    streq r1, [sp, #4]
.L0203f4b4:
    strne r2, [sp, #12]
.L0203f4b8:
    cmp r5, r4
.L0203f4bc:
    bne .L0203f464
.L0203f4c0:
    cmp r7, #0
.L0203f4c4:
    bne .L0203f4d8
.L0203f4c8:
    ldr r1, [sp, #8]
.L0203f4cc:
    sub r9, r5, #1
.L0203f4d0:
    cmp r9, r1
.L0203f4d4:
    beq .L0203f4e8
.L0203f4d8:
    ldr r2, [sp, #8]
.L0203f4dc:
    cmn r2, #1
.L0203f4e0:
    beq .L0203f6a8
.L0203f4e4:
    mov r9, r7
.L0203f4e8:
    ldr r1, [sp, #4]
.L0203f4ec:
    ldr r2, [sp, #12]
.L0203f4f0:
    cmp r2, #0
.L0203f4f4:
    cmpne r1, #0
.L0203f4f8:
    movne r3, #0
.L0203f4fc:
    moveq r3, #1
.L0203f500:
    strne r3, [sp, #16]
.L0203f504:
    beq .L0203f688
.L0203f508:
    add r4, r5, #1
.L0203f50c:
    mov r0, r4, lsl #2
.L0203f510:
    bl reconstructed_external_arm_0209787c
.L0203f514:
    cmp r4, #0
.L0203f518:
    mov r7, r0
.L0203f51c:
    beq .L0203f538
.L0203f520:
    mov r3, #0
.L0203f524:
    mov r2, r3
.L0203f528:
    cmp r5, r3
.L0203f52c:
    str r2, [r7, r3, lsl #2]
.L0203f530:
    add r3, r3, #1
.L0203f534:
    bne .L0203f528
.L0203f538:
    ldr r6, [r8, #8]
.L0203f53c:
    add r4, r6, #1
.L0203f540:
    mov r0, r4, lsl #2
.L0203f544:
    bl reconstructed_external_arm_0209787c
.L0203f548:
    cmp r4, #0
.L0203f54c:
    mov r5, r0
.L0203f550:
    beq .L0203f56c
.L0203f554:
    mov r3, #0
.L0203f558:
    mov r2, r3
.L0203f55c:
    cmp r3, r6
.L0203f560:
    str r2, [r5, r3, lsl #2]
.L0203f564:
    add r3, r3, #1
.L0203f568:
    bne .L0203f55c
.L0203f56c:
    ldr sl, [r8, #8]
.L0203f570:
    cmp sl, #0
.L0203f574:
    ble .L0203f5f4
.L0203f578:
    ldr r3, [sp, #16]
.L0203f57c:
    mov lr, #0
.L0203f580:
    ldr r6, [r8]
.L0203f584:
    ldr r4, [r8, #4]
.L0203f588:
    mov r3, r3, lsl #2
.L0203f58c:
    mov ip, lr
.L0203f590:
    str r3, [sp]
.L0203f594:
    b .L0203f5a4
.L0203f598:
    cmp sl, ip
.L0203f59c:
    add lr, lr, #1
.L0203f5a0:
    ble .L0203f5f4
.L0203f5a4:
    ldr r3, [r6, ip, lsl #2]
.L0203f5a8:
    mov r1, lr, lsl #2
.L0203f5ac:
    str r3, [r7, r1]
.L0203f5b0:
    ldr r2, [r4, ip, lsl #2]
.L0203f5b4:
    cmp r9, ip
.L0203f5b8:
    str r2, [r5, r1]
.L0203f5bc:
    add ip, ip, #1
.L0203f5c0:
    bne .L0203f598
.L0203f5c4:
    ldr r3, [sp]
.L0203f5c8:
    ldr r2, [fp]
.L0203f5cc:
    add lr, lr, #1
.L0203f5d0:
    ldr r2, [r2, r3]
.L0203f5d4:
    mov r0, lr, lsl #2
.L0203f5d8:
    ldr r1, [fp, #4]
.L0203f5dc:
    str r2, [r7, r0]
.L0203f5e0:
    ldr r2, [r3, r1]
.L0203f5e4:
    cmp sl, ip
.L0203f5e8:
    str r2, [r5, r0]
.L0203f5ec:
    add lr, lr, #1
.L0203f5f0:
    bgt .L0203f5a4
.L0203f5f4:
    mov r0, #20
.L0203f5f8:
    bl reconstructed_external_arm_02097894
.L0203f5fc:
    ldr r3, [r8, #8]
.L0203f600:
    mov r1, r7
.L0203f604:
    add r3, r3, #1
.L0203f608:
    mov r2, r5
.L0203f60c:
    mov r4, r0
.L0203f610:
    bl .L0203f208
.L0203f614:
    cmp r7, #0
.L0203f618:
    beq .L0203f624
.L0203f61c:
    mov r0, r7
.L0203f620:
    bl reconstructed_external_arm_02097888
.L0203f624:
    cmp r5, #0
.L0203f628:
    beq .L0203f634
.L0203f62c:
    mov r0, r5
.L0203f630:
    bl reconstructed_external_arm_02097888
.L0203f634:
    mov r0, r4
.L0203f638:
    add sp, sp, #28
.L0203f63c:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0203f640:
    ldr r1, [sp, #20]
.L0203f644:
    ldr r3, [r1]
.L0203f648:
    cmp ip, r3
.L0203f64c:
    bne .L0203f458
.L0203f650:
    ldr r2, [fp, #4]
.L0203f654:
    ldr r1, [r8, #4]
.L0203f658:
    ldr r0, [r2, #8]
.L0203f65c:
    ldr r3, [r1, lr]
.L0203f660:
    cmp r3, r0
.L0203f664:
    bne .L0203f458
.L0203f668:
    cmn r7, #1
.L0203f66c:
    moveq r2, #2
.L0203f670:
    movne r3, #2
.L0203f674:
    moveq r7, r4
.L0203f678:
    streq r2, [sp, #4]
.L0203f67c:
    strne r4, [sp, #8]
.L0203f680:
    strne r3, [sp, #12]
.L0203f684:
    b .L0203f458
.L0203f688:
    ldr r3, [sp, #4]
.L0203f68c:
    ldr r1, [sp, #12]
.L0203f690:
    cmp r1, #1
.L0203f694:
    cmpne r3, #1
.L0203f698:
    movne r2, #1
.L0203f69c:
    moveq r2, #2
.L0203f6a0:
    str r2, [sp, #16]
.L0203f6a4:
    b .L0203f508
.L0203f6a8:
    mov r4, #0
.L0203f6ac:
    b .L0203f634
.L0203f6b0:
    ldr r3, [r1, #8]
.L0203f6b4:
    ldr ip, [r0, #8]
.L0203f6b8:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
.L0203f6bc:
    cmp ip, r3
.L0203f6c0:
    mov r7, r0
.L0203f6c4:
    mov r8, r1
.L0203f6c8:
    beq .L0203f754
.L0203f6cc:
    ldr r0, [r0]
.L0203f6d0:
    str r3, [r7, #8]
.L0203f6d4:
    cmp r0, #0
.L0203f6d8:
    beq .L0203f6e0
.L0203f6dc:
    bl reconstructed_external_arm_02097888
.L0203f6e0:
    ldr r0, [r7, #4]
.L0203f6e4:
    cmp r0, #0
.L0203f6e8:
    beq .L0203f6f0
.L0203f6ec:
    bl reconstructed_external_arm_02097888
.L0203f6f0:
    ldr r4, [r7, #8]
.L0203f6f4:
    mov r0, r4, lsl #2
.L0203f6f8:
    bl reconstructed_external_arm_0209787c
.L0203f6fc:
    cmp r4, #0
.L0203f700:
    beq .L0203f71c
.L0203f704:
    mov r3, #0
.L0203f708:
    mov r2, r3
.L0203f70c:
    str r2, [r0, r3, lsl #2]
.L0203f710:
    add r3, r3, #1
.L0203f714:
    cmp r4, r3
.L0203f718:
    bne .L0203f70c
.L0203f71c:
    ldr r4, [r7, #8]
.L0203f720:
    str r0, [r7]
.L0203f724:
    mov r0, r4, lsl #2
.L0203f728:
    bl reconstructed_external_arm_0209787c
.L0203f72c:
    cmp r4, #0
.L0203f730:
    beq .L0203f74c
.L0203f734:
    mov r3, #0
.L0203f738:
    mov r2, r3
.L0203f73c:
    str r2, [r0, r3, lsl #2]
.L0203f740:
    add r3, r3, #1
.L0203f744:
    cmp r4, r3
.L0203f748:
    bne .L0203f73c
.L0203f74c:
    ldr ip, [r7, #8]
.L0203f750:
    str r0, [r7, #4]
.L0203f754:
    cmp ip, #0
.L0203f758:
    ble .L0203f790
.L0203f75c:
    ldr r6, [r8, #4]
.L0203f760:
    ldr r5, [r7]
.L0203f764:
    ldr r4, [r7, #4]
.L0203f768:
    ldr lr, [r8]
.L0203f76c:
    mov r0, #0
.L0203f770:
    mov r3, r0, lsl #2
.L0203f774:
    ldr r2, [lr, r3]
.L0203f778:
    add r0, r0, #1
.L0203f77c:
    str r2, [r5, r3]
.L0203f780:
    ldr r1, [r6, r3]
.L0203f784:
    cmp ip, r0
.L0203f788:
    str r1, [r4, r3]
.L0203f78c:
    bgt .L0203f770
.L0203f790:
    mov r3, #0
.L0203f794:
    strb r3, [r7, #16]
.L0203f798:
    ldmia sp!, {r4, r5, r6, r7, r8, pc}
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
    bl reconstructed_external_arm_0209787c
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
    b reconstructed_external_arm_02097888
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_02097888
.L0203fdac:
    ldr sl, [sp, #48]
.L0203fdb0:
    ldr r0, [sl, #4]
.L0203fdb4:
    cmp r0, #0
.L0203fdb8:
    beq .L0203fdc0
.L0203fdbc:
    bl reconstructed_external_arm_02097888
.L0203fdc0:
    ldr fp, [sp, #52]
.L0203fdc4:
    cmp fp, #0
.L0203fdc8:
    beq .L0203fdd4
.L0203fdcc:
    mov r0, fp
.L0203fdd0:
    bl reconstructed_external_arm_02097888
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
    bl reconstructed_external_arm_02097804
.L0203fdf0:
    ldr r1, [sp, #48]
.L0203fdf4:
    ldr ip, [r1, #8]
.L0203fdf8:
    b .L0203fd64
.L0203fdfc:
    mov r0, r5
.L0203fe00:
    bl reconstructed_external_arm_0209787c
.L0203fe04:
    mov r6, r0
.L0203fe08:
    b .L0203fd10
.L0203fe0c:
    .long 0x04000200  /* literal data */
.L0203fe10:
    .long 0x020c38e8  /* literal data */
.L0203fe14:
    .long 0x020c3948  /* literal data */
.L0203fe18:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0203fe1c:
    cmp r3, #2
.L0203fe20:
    sub sp, sp, #84
.L0203fe24:
    str r3, [sp, #8]
.L0203fe28:
    str r0, [sp, #20]
.L0203fe2c:
    str r1, [sp, #16]
.L0203fe30:
    str r2, [sp, #12]
.L0203fe34:
    ble .L02040340
.L0203fe38:
    ldr r1, [sp, #8]
.L0203fe3c:
    mov r0, r1, lsl #2
.L0203fe40:
    bl reconstructed_external_arm_0209787c
.L0203fe44:
    ldr r2, [sp, #8]
.L0203fe48:
    str r0, [sp, #24]
.L0203fe4c:
    cmp r2, #0
.L0203fe50:
    strle r2, [sp, #32]
.L0203fe54:
    ble .L0203fe8c
.L0203fe58:
    ldr r3, [sp, #8]
.L0203fe5c:
    ldr r1, [pc, #1316]
.L0203fe60:
    str r3, [sp, #32]
.L0203fe64:
    mov r2, #0
.L0203fe68:
    ldr r4, [sp, #12]
.L0203fe6c:
    ldr r5, [sp, #8]
.L0203fe70:
    ldr r3, [r4, r2, lsl #2]
.L0203fe74:
    cmp r1, r3
.L0203fe78:
    strgt r2, [sp, #32]
.L0203fe7c:
    add r2, r2, #1
.L0203fe80:
    movgt r1, r3
.L0203fe84:
    cmp r5, r2
.L0203fe88:
    bne .L0203fe68
.L0203fe8c:
    ldr r6, [sp, #32]
.L0203fe90:
    cmn r6, #1
.L0203fe94:
    beq .L02040354
.L0203fe98:
    ldr lr, [pc, #1260]
.L0203fe9c:
    mov ip, #0
.L0203fea0:
    mvn r0, #0
.L0203fea4:
    str ip, [sp, #28]
.L0203fea8:
    str lr, [sp, #60]
.L0203feac:
    str r6, [sp, #36]
.L0203feb0:
    str r0, [sp, #40]
.L0203feb4:
    str ip, [sp, #64]
.L0203feb8:
    ldr r1, [sp, #8]
.L0203febc:
    cmp r1, #0
.L0203fec0:
    ldrle r5, [sp, #36]
.L0203fec4:
    movle r5, r5, lsl #2
.L0203fec8:
    strle r5, [sp]
.L0203fecc:
    ble .L020400b0
.L0203fed0:
    ldr r2, [sp, #36]
.L0203fed4:
    ldr r4, [sp, #16]
.L0203fed8:
    ldr r5, [sp, #12]
.L0203fedc:
    mov r2, r2, lsl #2
.L0203fee0:
    ldr r3, [pc, #1192]
.L0203fee4:
    add r4, r4, r2
.L0203fee8:
    add r5, r5, r2
.L0203feec:
    mov r6, #0
.L0203fef0:
    str r2, [sp]
.L0203fef4:
    str r3, [sp, #68]
.L0203fef8:
    str r4, [sp, #48]
.L0203fefc:
    str r5, [sp, #52]
.L0203ff00:
    str r6, [sp, #44]
.L0203ff04:
    ldr ip, [sp, #44]
.L0203ff08:
    ldr lr, [sp, #36]
.L0203ff0c:
    cmp ip, lr
.L0203ff10:
    beq .L02040098
.L0203ff14:
    ldr r1, [sp, #48]
.L0203ff18:
    ldr r3, [sp, #16]
.L0203ff1c:
    ldr r4, [sp, #52]
.L0203ff20:
    ldr r5, [sp, #12]
.L0203ff24:
    ldr r0, [r1]
.L0203ff28:
    ldr r2, [r3, ip, lsl #2]
.L0203ff2c:
    ldr r1, [r4]
.L0203ff30:
    ldr r3, [r5, ip, lsl #2]
.L0203ff34:
    rsb r2, r0, r2
.L0203ff38:
    rsb r3, r1, r3
.L0203ff3c:
    mov sl, r3
.L0203ff40:
    mov fp, sl, asr #31
.L0203ff44:
    mov r8, r2
.L0203ff48:
    mov r9, r8, asr #31
.L0203ff4c:
    mul r6, r8, r9
.L0203ff50:
    mul lr, sl, fp
.L0203ff54:
    umull r2, r3, r8, r8
.L0203ff58:
    umull r0, r1, sl, sl
.L0203ff5c:
    mov r6, r6, lsl #1
.L0203ff60:
    mov lr, lr, lsl #1
.L0203ff64:
    ldr ip, [pc, #1064]
.L0203ff68:
    add r3, r6, r3
.L0203ff6c:
    add r1, lr, r1
.L0203ff70:
    mov r6, r2, lsr #16
.L0203ff74:
    mov lr, #1
.L0203ff78:
    mov r4, r0, lsr #16
.L0203ff7c:
    strh lr, [ip, #176]
.L0203ff80:
    orr r6, r6, r3, lsl #16
.L0203ff84:
    orr r4, r4, r1, lsl #16
.L0203ff88:
    ldrh r3, [ip, #176]
.L0203ff8c:
    tst r3, #32768
.L0203ff90:
    bne .L0203ff88
.L0203ff94:
    add r2, r6, r4
.L0203ff98:
    mov r3, r2, asr #31
.L0203ff9c:
    mov r3, r3, lsl #16
.L0203ffa0:
    orr r3, r3, r2, lsr #16
.L0203ffa4:
    mov r2, r2, lsl #16
.L0203ffa8:
    strd r2, [ip, #184]
.L0203ffac:
    ldr r2, [pc, #992]
.L0203ffb0:
    ldrh r3, [r2, #176]
.L0203ffb4:
    tst r3, #32768
.L0203ffb8:
    bne .L0203ffb0
.L0203ffbc:
    mov r0, #67108864
.L0203ffc0:
    ldr r3, [r0, #692]
.L0203ffc4:
    mov r1, #1
.L0203ffc8:
    cmp r3, #0
.L0203ffcc:
    add r0, r0, #512
.L0203ffd0:
    movne ip, r3
.L0203ffd4:
    moveq ip, #65536
.L0203ffd8:
    strh r1, [r0, #128]
.L0203ffdc:
    ldrh r3, [r0, #128]
.L0203ffe0:
    tst r3, #32768
.L0203ffe4:
    bne .L0203ffdc
.L0203ffe8:
    mov r3, r9, lsl #16
.L0203ffec:
    mov r2, r8, lsl #16
.L0203fff0:
    orr r3, r3, r8, lsr #16
.L0203fff4:
    strd r2, [r0, #144]
.L0203fff8:
    ldr r1, [pc, #916]
.L0203fffc:
    mov r2, #67108864
.L02040000:
    str ip, [r2, #664]
.L02040004:
    ldrh r3, [r1, #128]
.L02040008:
    tst r3, #32768
.L0204000c:
    bne .L02040004
.L02040010:
    mov r3, #67108864
.L02040014:
    mov r4, #1
.L02040018:
    ldr r0, [pc, #884]
.L0204001c:
    ldr lr, [r3, #672]
.L02040020:
    strh r4, [r1, #128]
.L02040024:
    ldrh r3, [r0, #128]
.L02040028:
    tst r3, #32768
.L0204002c:
    bne .L02040024
.L02040030:
    mov r3, fp, lsl #16
.L02040034:
    orr r3, r3, sl, lsr #16
.L02040038:
    mov r2, sl, lsl #16
.L0204003c:
    mov r5, #67108864
.L02040040:
    ldr r1, [pc, #844]
.L02040044:
    strd r2, [r0, #144]
.L02040048:
    str ip, [r5, #664]
.L0204004c:
    ldrh r3, [r1, #128]
.L02040050:
    tst r3, #32768
.L02040054:
    bne .L0204004c
.L02040058:
    ldr ip, [sp, #60]
.L0204005c:
    mov r6, #67108864
.L02040060:
    smull r0, r1, lr, ip
.L02040064:
    ldr r6, [r6, #672]
.L02040068:
    ldr lr, [sp, #64]
.L0204006c:
    mov r0, r0, lsr #16
.L02040070:
    smull r2, r3, r6, lr
.L02040074:
    mov r2, r2, lsr #16
.L02040078:
    orr r2, r2, r3, lsl #16
.L0204007c:
    orr r0, r0, r1, lsl #16
.L02040080:
    ldr r1, [sp, #68]
.L02040084:
    add r0, r0, r2
.L02040088:
    cmp r1, r0
.L0204008c:
    ldrlt r2, [sp, #44]
.L02040090:
    strlt r0, [sp, #68]
.L02040094:
    strlt r2, [sp, #40]
.L02040098:
    ldr r3, [sp, #44]
.L0204009c:
    ldr r4, [sp, #8]
.L020400a0:
    add r3, r3, #1
.L020400a4:
    cmp r4, r3
.L020400a8:
    str r3, [sp, #44]
.L020400ac:
    bne .L0203ff04
.L020400b0:
    ldr r6, [sp, #40]
.L020400b4:
    ldr ip, [sp, #12]
.L020400b8:
    ldr r0, [sp]
.L020400bc:
    mov r1, r6, lsl #2
.L020400c0:
    ldr r3, [sp, #16]
.L020400c4:
    ldr lr, [ip, r0]
.L020400c8:
    ldr r2, [ip, r1]
.L020400cc:
    ldr r0, [r3, r0]
.L020400d0:
    ldr r3, [r3, r1]
.L020400d4:
    rsb r2, lr, r2
.L020400d8:
    rsb r3, r0, r3
.L020400dc:
    mov sl, r2
.L020400e0:
    mov fp, sl, asr #31
.L020400e4:
    mov r8, r3
.L020400e8:
    mov r9, r8, asr #31
.L020400ec:
    mul lr, sl, fp
.L020400f0:
    umull r0, r1, sl, sl
.L020400f4:
    mul r4, r8, r9
.L020400f8:
    umull r2, r3, r8, r8
.L020400fc:
    mov lr, lr, lsl #1
.L02040100:
    ldr r5, [sp, #28]
.L02040104:
    mov r4, r4, lsl #1
.L02040108:
    add r1, lr, r1
.L0204010c:
    ldr ip, [sp, #24]
.L02040110:
    ldr lr, [pc, #636]
.L02040114:
    add r3, r4, r3
.L02040118:
    mov r4, #1
.L0204011c:
    str r6, [ip, r5, lsl #2]
.L02040120:
    strh r4, [lr, #176]
.L02040124:
    add r5, r5, #1
.L02040128:
    mov r6, r2, lsr #16
.L0204012c:
    mov r4, r0, lsr #16
.L02040130:
    str r5, [sp, #28]
.L02040134:
    orr r6, r6, r3, lsl #16
.L02040138:
    mov r7, r3, asr #16
.L0204013c:
    orr r4, r4, r1, lsl #16
.L02040140:
    ldr ip, [pc, #588]
.L02040144:
    ldrh r3, [ip, #176]
.L02040148:
    tst r3, #32768
.L0204014c:
    bne .L02040140
.L02040150:
    add r2, r6, r4
.L02040154:
    mov r3, r2, asr #31
.L02040158:
    mov r3, r3, lsl #16
.L0204015c:
    orr r3, r3, r2, lsr #16
.L02040160:
    mov r2, r2, lsl #16
.L02040164:
    strd r2, [ip, #184]
.L02040168:
    mov r2, ip
.L0204016c:
    ldrh r3, [r2, #176]
.L02040170:
    tst r3, #32768
.L02040174:
    bne .L0204016c
.L02040178:
    mov lr, #67108864
.L0204017c:
    ldr r3, [lr, #692]
.L02040180:
    ldr r0, [pc, #524]
.L02040184:
    cmp r3, #0
.L02040188:
    mov r1, #1
.L0204018c:
    movne ip, r3
.L02040190:
    moveq ip, #65536
.L02040194:
    strh r1, [r0, #128]
.L02040198:
    ldrh r3, [r0, #128]
.L0204019c:
    tst r3, #32768
.L020401a0:
    bne .L02040198
.L020401a4:
    mov r3, r9, lsl #16
.L020401a8:
    mov r2, r8, lsl #16
.L020401ac:
    orr r3, r3, r8, lsr #16
.L020401b0:
    strd r2, [r0, #144]
.L020401b4:
    ldr r1, [pc, #472]
.L020401b8:
    mov r2, #67108864
.L020401bc:
    str ip, [r2, #664]
.L020401c0:
    ldrh r3, [r1, #128]
.L020401c4:
    tst r3, #32768
.L020401c8:
    bne .L020401c0
.L020401cc:
    mov r3, #67108864
.L020401d0:
    mov r4, #1
.L020401d4:
    ldr r0, [pc, #440]
.L020401d8:
    ldr lr, [r3, #672]
.L020401dc:
    strh r4, [r1, #128]
.L020401e0:
    ldrh r3, [r0, #128]
.L020401e4:
    tst r3, #32768
.L020401e8:
    bne .L020401e0
.L020401ec:
    mov r3, fp, lsl #16
.L020401f0:
    orr r3, r3, sl, lsr #16
.L020401f4:
    mov r2, sl, lsl #16
.L020401f8:
    mov r5, #67108864
.L020401fc:
    ldr r1, [pc, #400]
.L02040200:
    strd r2, [r0, #144]
.L02040204:
    str ip, [r5, #664]
.L02040208:
    ldrh r3, [r1, #128]
.L0204020c:
    tst r3, #32768
.L02040210:
    bne .L02040208
.L02040214:
    ldr ip, [sp, #40]
.L02040218:
    mov r6, #67108864
.L0204021c:
    ldr r0, [sp, #32]
.L02040220:
    ldr r3, [r6, #672]
.L02040224:
    cmp ip, r0
.L02040228:
    str r3, [sp, #64]
.L0204022c:
    str lr, [sp, #60]
.L02040230:
    str ip, [sp, #36]
.L02040234:
    bne .L0203feb8
.L02040238:
    ldr r5, [sp, #28]
.L0204023c:
    mov r4, r5, lsl #2
.L02040240:
    mov r0, r4
.L02040244:
    bl reconstructed_external_arm_0209787c
.L02040248:
    cmp r5, #0
.L0204024c:
    mov r6, r0
.L02040250:
    beq .L02040374
.L02040254:
    mov r3, #0
.L02040258:
    mov r7, r3
.L0204025c:
    ldr r1, [sp, #28]
.L02040260:
    str r7, [r6, r3, lsl #2]
.L02040264:
    add r3, r3, #1
.L02040268:
    cmp r1, r3
.L0204026c:
    bne .L0204025c
.L02040270:
    mov r0, r4
.L02040274:
    bl reconstructed_external_arm_0209787c
.L02040278:
    mov r3, r7
.L0204027c:
    mov r4, r0
.L02040280:
    mov r2, #0
.L02040284:
    ldr ip, [sp, #28]
.L02040288:
    str r2, [r4, r3, lsl #2]
.L0204028c:
    add r3, r3, #1
.L02040290:
    cmp ip, r3
.L02040294:
    bne .L02040280
.L02040298:
    cmp r5, r2
.L0204029c:
    ble .L020402d8
.L020402a0:
    mov ip, r2
.L020402a4:
    mov r0, r2
.L020402a8:
    ldr lr, [sp, #24]
.L020402ac:
    ldr r3, [sp, #16]
.L020402b0:
    ldr r1, [lr, r0]
.L020402b4:
    ldr lr, [sp, #12]
.L020402b8:
    ldr r2, [r3, r1, lsl #2]
.L020402bc:
    add ip, ip, #1
.L020402c0:
    str r2, [r0, r6]
.L020402c4:
    ldr r3, [lr, r1, lsl #2]
.L020402c8:
    cmp ip, r5
.L020402cc:
    str r3, [r0, r4]
.L020402d0:
    add r0, r0, #4
.L020402d4:
    bne .L020402a8
.L020402d8:
    mov r3, r5
.L020402dc:
    ldr r0, [sp, #20]
.L020402e0:
    mov r1, r6
.L020402e4:
    mov r2, r4
.L020402e8:
    bl .L0203f208
.L020402ec:
    cmp r6, #0
.L020402f0:
    beq .L020402fc
.L020402f4:
    mov r0, r6
.L020402f8:
    bl reconstructed_external_arm_02097888
.L020402fc:
    cmp r4, #0
.L02040300:
    beq .L0204030c
.L02040304:
    mov r0, r4
.L02040308:
    bl reconstructed_external_arm_02097888
.L0204030c:
    ldr r0, [sp, #24]
.L02040310:
    cmp r0, #0
.L02040314:
    beq .L0204031c
.L02040318:
    bl reconstructed_external_arm_02097888
.L0204031c:
    ldr r3, [pc, #116]
.L02040320:
    add r1, sp, #80
.L02040324:
    ldr r2, [r3]
.L02040328:
    ldr r0, [sp, #20]
.L0204032c:
    str r2, [r1, #-4]!
.L02040330:
    bl .L0203f79c
.L02040334:
    ldr r0, [sp, #20]
.L02040338:
    add sp, sp, #84
.L0204033c:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02040340:
    ldr r0, [pc, #84]
.L02040344:
    ldr r1, [pc, #84]
.L02040348:
    ldr r2, [pc, #84]
.L0204034c:
    bl reconstructed_external_arm_02097804
.L02040350:
    b .L0203fe38
.L02040354:
    mov r0, #0
.L02040358:
    bl reconstructed_external_arm_0209787c
.L0204035c:
    mov r6, r0
.L02040360:
    mov r0, #0
.L02040364:
    bl reconstructed_external_arm_0209787c
.L02040368:
    mov r5, #0
.L0204036c:
    mov r4, r0
.L02040370:
    b .L020402d8
.L02040374:
    mov r0, r4
.L02040378:
    bl reconstructed_external_arm_0209787c
.L0204037c:
    ldr r5, [sp, #28]
.L02040380:
    mov r4, r0
.L02040384:
    b .L020402d8
.L02040388:
    .long 0x7fff0000  /* literal data */
.L0204038c:
    .long 0xffff0000  /* literal data */
.L02040390:
    .long 0xfffe0000  /* literal data */
.L02040394:
    .long 0x04000200  /* literal data */
.L02040398:
    .long 0x020cae64  /* literal data */
.L0204039c:
    .long 0x020c38e8  /* literal data */
.L020403a0:
    .long 0x00000452  /* literal data */
.L020403a4:
    .long 0x020c3964  /* literal data */
.L020403a8:
    stmdb sp!, {r4, lr}
.L020403ac:
    mov r4, r0
.L020403b0:
    ldr r0, [r0]
.L020403b4:
    cmp r0, #0
.L020403b8:
    beq .L020403c0
.L020403bc:
    bl reconstructed_external_arm_02097888
.L020403c0:
    ldr r0, [r4, #4]
.L020403c4:
    cmp r0, #0
.L020403c8:
    beq .L020403d0
.L020403cc:
    bl reconstructed_external_arm_02097888
.L020403d0:
    mov r0, r4
.L020403d4:
    ldmia sp!, {r4, pc}
.L020403d8:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020403dc:
    ldr lr, [r0, #8]
.L020403e0:
    sub sp, sp, #52
.L020403e4:
    cmp lr, #2
.L020403e8:
    mov r8, r0
.L020403ec:
    str r1, [sp, #4]
.L020403f0:
    str r2, [sp]
.L020403f4:
    movgt sl, #0
.L020403f8:
    ble .L02040498
.L020403fc:
    mov r2, sl, lsl #2
.L02040400:
    cmp sl, lr
.L02040404:
    mov r6, r2
.L02040408:
    bge .L02040498
.L0204040c:
    add r7, sl, #1
.L02040410:
    cmp lr, r7
.L02040414:
    ble .L02040678
.L02040418:
    ldr r3, [r8]
.L0204041c:
    add r9, r2, #4
.L02040420:
    ldr r5, [r6, r3]
.L02040424:
    add r0, r2, r3
.L02040428:
    mov ip, r9
.L0204042c:
    mov r4, r7
.L02040430:
    ldr r3, [r0, #4]
.L02040434:
    add r0, r0, #4
.L02040438:
    rsb r3, r3, r5
.L0204043c:
    cmp r3, #0
.L02040440:
    rsblt r3, r3, #0
.L02040444:
    cmp r3, #64
.L02040448:
    bgt .L02040474
.L0204044c:
    ldr r3, [r8, #4]
.L02040450:
    ldr r2, [r6, r3]
.L02040454:
    ldr r1, [ip, r3]
.L02040458:
    rsb r2, r1, r2
.L0204045c:
    cmp r2, #0
.L02040460:
    rsblt r2, r2, #0
.L02040464:
    cmp r2, #64
.L02040468:
    bgt .L02040474
.L0204046c:
    cmp r7, r4
.L02040470:
    bne .L020404a4
.L02040474:
    add r4, r4, #1
.L02040478:
    cmp lr, r4
.L0204047c:
    add ip, ip, #4
.L02040480:
    bgt .L02040430
.L02040484:
    mov sl, r7
.L02040488:
    cmp sl, lr
.L0204048c:
    add r6, r6, #4
.L02040490:
    mov r2, r9
.L02040494:
    blt .L0204040c
.L02040498:
    mov r0, #0
.L0204049c:
    add sp, sp, #52
.L020404a0:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L020404a4:
    rsb r6, sl, r4
.L020404a8:
    cmp lr, r6
.L020404ac:
    beq .L02040498
.L020404b0:
    mov r7, r6, lsl #2
.L020404b4:
    mov r0, r7
.L020404b8:
    bl reconstructed_external_arm_0209787c
.L020404bc:
    cmp r6, #0
.L020404c0:
    mov r9, r0
.L020404c4:
    beq .L02040690
.L020404c8:
    mov r3, #0
.L020404cc:
    mov r5, r3
.L020404d0:
    str r5, [r9, r3, lsl #2]
.L020404d4:
    add r3, r3, #1
.L020404d8:
    cmp r6, r3
.L020404dc:
    bne .L020404d0
.L020404e0:
    mov r0, r7
.L020404e4:
    bl reconstructed_external_arm_0209787c
.L020404e8:
    mov r3, r5
.L020404ec:
    mov r7, r0
.L020404f0:
    mov r0, r5
.L020404f4:
    str r0, [r7, r3, lsl #2]
.L020404f8:
    add r3, r3, #1
.L020404fc:
    cmp r6, r3
.L02040500:
    bne .L020404f4
.L02040504:
    cmp r6, #0
.L02040508:
    ble .L02040540
.L0204050c:
    mov r5, r0
.L02040510:
    add r0, r5, sl
.L02040514:
    ldr r1, [r8, #8]
.L02040518:
    bl .L0203eec4
.L0204051c:
    ldr r2, [r8]
.L02040520:
    ldr r1, [r8, #4]
.L02040524:
    ldr r3, [r2, r0, lsl #2]
.L02040528:
    str r3, [r9, r5, lsl #2]
.L0204052c:
    ldr r2, [r1, r0, lsl #2]
.L02040530:
    str r2, [r7, r5, lsl #2]
.L02040534:
    add r5, r5, #1
.L02040538:
    cmp r6, r5
.L0204053c:
    bne .L02040510
.L02040540:
    add fp, sp, #28
.L02040544:
    mov r2, r7
.L02040548:
    mov r3, r6
.L0204054c:
    mov r1, r9
.L02040550:
    mov r0, fp
.L02040554:
    bl .L0203f208
.L02040558:
    ldr r0, [sp, #4]
.L0204055c:
    mov r1, fp
.L02040560:
    bl .L0203f6b0
.L02040564:
    cmp r9, #0
.L02040568:
    beq .L02040574
.L0204056c:
    mov r0, r9
.L02040570:
    bl reconstructed_external_arm_02097888
.L02040574:
    cmp r7, #0
.L02040578:
    beq .L02040584
.L0204057c:
    mov r0, r7
.L02040580:
    bl reconstructed_external_arm_02097888
.L02040584:
    ldr r3, [r8, #8]
.L02040588:
    rsb r6, r6, r3
.L0204058c:
    mov r7, r6, lsl #2
.L02040590:
    mov r0, r7
.L02040594:
    bl reconstructed_external_arm_0209787c
.L02040598:
    cmp r6, #0
.L0204059c:
    mov sl, r0
.L020405a0:
    beq .L02040680
.L020405a4:
    mov r3, #0
.L020405a8:
    mov r5, r3
.L020405ac:
    str r5, [sl, r3, lsl #2]
.L020405b0:
    add r3, r3, #1
.L020405b4:
    cmp r6, r3
.L020405b8:
    bne .L020405ac
.L020405bc:
    mov r0, r7
.L020405c0:
    bl reconstructed_external_arm_0209787c
.L020405c4:
    mov r3, r5
.L020405c8:
    mov r7, r0
.L020405cc:
    mov r0, r5
.L020405d0:
    str r0, [r7, r3, lsl #2]
.L020405d4:
    add r3, r3, #1
.L020405d8:
    cmp r6, r3
.L020405dc:
    bne .L020405d0
.L020405e0:
    cmp r6, #0
.L020405e4:
    ble .L0204061c
.L020405e8:
    mov r5, r0
.L020405ec:
    add r0, r5, r4
.L020405f0:
    ldr r1, [r8, #8]
.L020405f4:
    bl .L0203eec4
.L020405f8:
    ldr r2, [r8]
.L020405fc:
    ldr r1, [r8, #4]
.L02040600:
    ldr r3, [r2, r0, lsl #2]
.L02040604:
    str r3, [sl, r5, lsl #2]
.L02040608:
    ldr r2, [r1, r0, lsl #2]
.L0204060c:
    str r2, [r7, r5, lsl #2]
.L02040610:
    add r5, r5, #1
.L02040614:
    cmp r6, r5
.L02040618:
    bne .L020405ec
.L0204061c:
    add r4, sp, #8
.L02040620:
    mov r3, r6
.L02040624:
    mov r2, r7
.L02040628:
    mov r1, sl
.L0204062c:
    mov r0, r4
.L02040630:
    bl .L0203f208
.L02040634:
    ldr r0, [sp]
.L02040638:
    mov r1, r4
.L0204063c:
    bl .L0203f6b0
.L02040640:
    cmp sl, #0
.L02040644:
    beq .L02040650
.L02040648:
    mov r0, sl
.L0204064c:
    bl reconstructed_external_arm_02097888
.L02040650:
    cmp r7, #0
.L02040654:
    beq .L02040660
.L02040658:
    mov r0, r7
.L0204065c:
    bl reconstructed_external_arm_02097888
.L02040660:
    mov r0, r4
.L02040664:
    bl .L020403a8
.L02040668:
    mov r0, fp
.L0204066c:
    bl .L020403a8
.L02040670:
    mov r0, #1
.L02040674:
    b .L0204049c
.L02040678:
    mov sl, r7
.L0204067c:
    b .L020403fc
.L02040680:
    mov r0, r7
.L02040684:
    bl reconstructed_external_arm_0209787c
.L02040688:
    mov r7, r0
.L0204068c:
    b .L0204061c
.L02040690:
    mov r0, r7
.L02040694:
    bl reconstructed_external_arm_0209787c
.L02040698:
    mov r7, r0
.L0204069c:
    b .L02040540
.L020406a0:
    stmdb sp!, {r4, lr}
.L020406a4:
    mov r4, r0
.L020406a8:
    ldr r0, [r0]
.L020406ac:
    cmp r0, #0
.L020406b0:
    beq .L020406b8
.L020406b4:
    bl reconstructed_external_arm_02097888
.L020406b8:
    ldr r0, [r4, #4]
.L020406bc:
    cmp r0, #0
.L020406c0:
    beq .L020406c8
.L020406c4:
    bl reconstructed_external_arm_02097888
.L020406c8:
    mov r0, r4
.L020406cc:
    ldmia sp!, {r4, pc}
.L020406d0:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020406d4:
    subs sl, r1, #0
.L020406d8:
    sub sp, sp, #44
.L020406dc:
    mov r9, r2
.L020406e0:
    movle r2, #0
.L020406e4:
    mov r7, r0
.L020406e8:
    str r3, [sp, #8]
.L020406ec:
    strle r2, [sp, #12]
.L020406f0:
    ble .L0204088c
.L020406f4:
    mov r0, sl, lsl #2
.L020406f8:
    bl reconstructed_external_arm_0209787c
.L020406fc:
    mov r6, #0
.L02040700:
    mov r8, r0
.L02040704:
    mov r5, r6
.L02040708:
    mov lr, r6
.L0204070c:
    b .L02040738
.L02040710:
    ldr r3, [r2, #4]
.L02040714:
    ldmia r3, {r1, r2}
.L02040718:
    cmp r2, r1
.L0204071c:
    bne .L02040758
.L02040720:
    mov r3, #1
.L02040724:
    str r3, [r5, r8]
.L02040728:
    cmp sl, r6
.L0204072c:
    add r5, r5, #4
.L02040730:
    add lr, lr, #8
.L02040734:
    beq .L020407a8
.L02040738:
    ldr r0, [lr, r7]
.L0204073c:
    mov r3, #0
.L02040740:
    str r3, [r5, r8]
.L02040744:
    ldmia r0, {r4, ip}
.L02040748:
    add r6, r6, #1
.L0204074c:
    cmp ip, r4
.L02040750:
    add r2, lr, r7
.L02040754:
    beq .L02040710
.L02040758:
    ldr r0, [r0, #8]
.L0204075c:
    add r3, lr, r7
.L02040760:
    cmp ip, r0
.L02040764:
    bne .L02040778
.L02040768:
    ldr r3, [r3, #4]
.L0204076c:
    ldmib r3, {r1, r2}
.L02040770:
    cmp r2, r1
.L02040774:
    beq .L02040720
.L02040778:
    cmp r4, r0
.L0204077c:
    add r3, lr, r7
.L02040780:
    bne .L02040728
.L02040784:
    ldr r3, [r3, #4]
.L02040788:
    ldr r1, [r3]
.L0204078c:
    ldr r2, [r3, #8]
.L02040790:
    cmp r2, r1
.L02040794:
    beq .L02040720
.L02040798:
    cmp sl, r6
.L0204079c:
    add r5, r5, #4
.L020407a0:
    add lr, lr, #8
.L020407a4:
    bne .L02040738
.L020407a8:
    mov r3, #0
.L020407ac:
    str r3, [sp, #12]
.L020407b0:
    str r9, [sp, #4]
.L020407b4:
    mov r1, r3
.L020407b8:
    add fp, sp, #16
.L020407bc:
    cmp r1, sl
.L020407c0:
    bge .L0204087c
.L020407c4:
    mov r5, r1, lsl #2
.L020407c8:
    ldr r4, [r8, r5]
.L020407cc:
    cmp r4, #0
.L020407d0:
    bne .L02040898
.L020407d4:
    cmn r1, #1
.L020407d8:
    beq .L0204087c
.L020407dc:
    mov r1, r1, lsl #3
.L020407e0:
    add r1, r1, r7
.L020407e4:
    mov r0, fp
.L020407e8:
    bl .L0203f0cc
.L020407ec:
    mov r3, #1
.L020407f0:
    str r3, [r8, r5]
.L020407f4:
    mov r9, r4
.L020407f8:
    mov r5, r7
.L020407fc:
    mov r6, r4
.L02040800:
    b .L02040818
.L02040804:
    add r9, r9, #1
.L02040808:
    cmp sl, r9
.L0204080c:
    add r6, r6, #4
.L02040810:
    add r5, r5, #8
.L02040814:
    beq .L020408c0
.L02040818:
    ldr r3, [r6, r8]
.L0204081c:
    mov r1, r5
.L02040820:
    cmp r3, #0
.L02040824:
    mov r0, fp
.L02040828:
    bne .L02040804
.L0204082c:
    bl .L0203f3d4
.L02040830:
    subs r4, r0, #0
.L02040834:
    beq .L02040804
.L02040838:
    ldr r3, [r4, #8]
.L0204083c:
    cmp r3, #8
.L02040840:
    bgt .L020408a0
.L02040844:
    bl .L0203ec10
.L02040848:
    cmp r0, #0
.L0204084c:
    mov r1, r4
.L02040850:
    mov r0, fp
.L02040854:
    moveq r0, r4
.L02040858:
    beq .L020408a0
.L0204085c:
    bl .L0203f6b0
.L02040860:
    mov r0, r4
.L02040864:
    bl .L020403a8
.L02040868:
    mov r0, r4
.L0204086c:
    bl reconstructed_external_arm_02097810
.L02040870:
    mov r3, #1
.L02040874:
    str r3, [r6, r8]
.L02040878:
    b .L02040804
.L0204087c:
    cmp r8, #0
.L02040880:
    beq .L0204088c
.L02040884:
    mov r0, r8
.L02040888:
    bl reconstructed_external_arm_02097888
.L0204088c:
    ldr r0, [sp, #12]
.L02040890:
    add sp, sp, #44
.L02040894:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02040898:
    add r1, r1, #1
.L0204089c:
    b .L020407bc
.L020408a0:
    bl .L020403a8
.L020408a4:
    add r9, r9, #1
.L020408a8:
    mov r0, r4
.L020408ac:
    bl reconstructed_external_arm_02097810
.L020408b0:
    cmp sl, r9
.L020408b4:
    add r6, r6, #4
.L020408b8:
    add r5, r5, #8
.L020408bc:
    bne .L02040818
.L020408c0:
    ldr r2, [sp, #8]
.L020408c4:
    ldr r3, [sp, #12]
.L020408c8:
    cmp r2, r3
.L020408cc:
    ble .L02040910
.L020408d0:
    ldr r3, [pc, #96]
.L020408d4:
    add r1, sp, #40
.L020408d8:
    ldr r2, [r3]
.L020408dc:
    mov r0, fp
.L020408e0:
    str r2, [r1, #-4]!
.L020408e4:
    bl .L0203f79c
.L020408e8:
    ldr r3, [sp, #24]
.L020408ec:
    cmp r3, #2
.L020408f0:
    bgt .L02040904
.L020408f4:
    mov r0, fp
.L020408f8:
    bl .L020403a8
.L020408fc:
    mov r1, #0
.L02040900:
    b .L020407bc
.L02040904:
    ldr r0, [sp, #4]
.L02040908:
    mov r1, fp
.L0204090c:
    bl .L0203f6b0
.L02040910:
    ldr r3, [sp, #24]
.L02040914:
    cmp r3, #2
.L02040918:
    ble .L020408f4
.L0204091c:
    ldr r2, [sp, #12]
.L02040920:
    ldr r3, [sp, #4]
.L02040924:
    add r2, r2, #1
.L02040928:
    add r3, r3, #20
.L0204092c:
    str r2, [sp, #12]
.L02040930:
    str r3, [sp, #4]
.L02040934:
    b .L020408f4
.L02040938:
    .long 0x020cae64  /* literal data */
.L0204093c:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L02040940:
    mov r9, r3
.L02040944:
    mov r3, r0, lsr #31
.L02040948:
    cmp r0, r9
.L0204094c:
    movlt r5, r3
.L02040950:
    orrge r5, r3, #1
.L02040954:
    cmp r5, #0
.L02040958:
    sub sp, sp, #76
.L0204095c:
    mov r8, r0
.L02040960:
    mov r7, r1
.L02040964:
    mov fp, r2
.L02040968:
    bne .L02040abc
.L0204096c:
    cmp r9, #2
.L02040970:
    ble .L02040abc
.L02040974:
    add r1, r0, #1
.L02040978:
    cmp r0, #0
.L0204097c:
    str r1, [sp, #20]
.L02040980:
    sub sl, r0, #1
.L02040984:
    bne .L02040acc
.L02040988:
    mov r3, r9, lsl #2
.L0204098c:
    add r2, r2, r3
.L02040990:
    add r3, r7, r3
.L02040994:
    ldr ip, [r3, #-4]
.L02040998:
    ldmia r7, {r1, r3}
.L0204099c:
    ldr lr, [r2, #-4]
.L020409a0:
    ldmia fp, {r0, r2}
.L020409a4:
    rsb r3, r1, r3
.L020409a8:
    rsb r6, r0, r2
.L020409ac:
    str r3, [sp, #28]
.L020409b0:
    rsb r1, ip, r1
.L020409b4:
    rsb r2, lr, r0
.L020409b8:
    sub sl, r9, #1
.L020409bc:
    smull r4, r5, r1, r6
.L020409c0:
    ldr ip, [sp, #28]
.L020409c4:
    mov r0, r4, lsr #16
.L020409c8:
    orr r0, r0, r5, lsl #16
.L020409cc:
    smull r4, r5, ip, r2
.L020409d0:
    mov r2, r4, lsr #16
.L020409d4:
    orr r2, r2, r5, lsl #16
.L020409d8:
    rsb r0, r2, r0
.L020409dc:
    cmp r0, #0
.L020409e0:
    bgt .L02040abc
.L020409e4:
    mov r2, sl, lsl #2
.L020409e8:
    ldr r4, [fp, r2]
.L020409ec:
    ldr r1, [sp, #20]
.L020409f0:
    ldr r5, [r7, r2]
.L020409f4:
    ldr ip, [r7, r8, lsl #2]
.L020409f8:
    ldr lr, [fp, r8, lsl #2]
.L020409fc:
    mov r3, r1, lsl #2
.L02040a00:
    str r4, [sp, #24]
.L02040a04:
    ldr r6, [fp, r3]
.L02040a08:
    ldr r4, [r7, r3]
.L02040a0c:
    str ip, [sp, #40]
.L02040a10:
    str r5, [sp, #56]
.L02040a14:
    add ip, sp, #52
.L02040a18:
    ldr r5, [sp, #24]
.L02040a1c:
    str lr, [sp, #44]
.L02040a20:
    str ip, [sp]
.L02040a24:
    add lr, sp, #56
.L02040a28:
    add ip, sp, #60
.L02040a2c:
    add r0, sp, #32
.L02040a30:
    add r1, sp, #40
.L02040a34:
    add r2, sp, #44
.L02040a38:
    add r3, sp, #48
.L02040a3c:
    str r4, [sp, #48]
.L02040a40:
    str r6, [sp, #52]
.L02040a44:
    str r5, [sp, #60]
.L02040a48:
    str lr, [sp, #4]
.L02040a4c:
    str ip, [sp, #8]
.L02040a50:
    bl reconstructed_external_arm_020460d8
.L02040a54:
    mov r4, #0
.L02040a58:
    cmp sl, r4
.L02040a5c:
    cmpne r8, r4
.L02040a60:
    movne r5, #0
.L02040a64:
    moveq r5, #1
.L02040a68:
    beq .L02040aa0
.L02040a6c:
    ldr ip, [sp, #20]
.L02040a70:
    add r0, sp, #32
.L02040a74:
    cmp ip, r4
.L02040a78:
    add r1, sp, #64
.L02040a7c:
    add r2, sp, #68
.L02040a80:
    beq .L02040aa0
.L02040a84:
    ldr r3, [r7, r4, lsl #2]
.L02040a88:
    ldr ip, [fp, r4, lsl #2]
.L02040a8c:
    str r3, [sp, #64]
.L02040a90:
    str ip, [sp, #68]
.L02040a94:
    bl reconstructed_external_arm_02046328
.L02040a98:
    cmp r0, #0
.L02040a9c:
    bne .L02040b54
.L02040aa0:
    add r4, r4, #1
.L02040aa4:
    cmp r9, r4
.L02040aa8:
    bne .L02040a58
.L02040aac:
    mov r4, #1
.L02040ab0:
    add r0, sp, #32
.L02040ab4:
    bl reconstructed_external_arm_02045f98
.L02040ab8:
    b .L02040ac0
.L02040abc:
    mov r4, #0
.L02040ac0:
    mov r0, r4
.L02040ac4:
    add sp, sp, #76
.L02040ac8:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02040acc:
    sub r3, r9, #1
.L02040ad0:
    cmp r0, r3
.L02040ad4:
    beq .L02040b14
.L02040ad8:
    mov r3, r0, lsl #2
.L02040adc:
    add r1, r7, r3
.L02040ae0:
    add r0, r2, r3
.L02040ae4:
    ldr r5, [r2, r3]
.L02040ae8:
    ldr lr, [r1, #4]
.L02040aec:
    ldr r2, [r7, r3]
.L02040af0:
    ldr r4, [r0, #4]
.L02040af4:
    ldr ip, [r1, #-4]
.L02040af8:
    ldr r3, [r0, #-4]
.L02040afc:
    rsb lr, r2, lr
.L02040b00:
    rsb r1, ip, r2
.L02040b04:
    rsb r6, r5, r4
.L02040b08:
    rsb r2, r3, r5
.L02040b0c:
    str lr, [sp, #28]
.L02040b10:
    b .L020409bc
.L02040b14:
    mov r3, r0, lsl #2
.L02040b18:
    add r2, r7, r3
.L02040b1c:
    add r1, fp, r3
.L02040b20:
    ldr r0, [r7, r3]
.L02040b24:
    ldr lr, [r2, #-4]
.L02040b28:
    ldr r2, [r7]
.L02040b2c:
    ldr ip, [fp, r3]
.L02040b30:
    ldr r4, [r1, #-4]
.L02040b34:
    ldr r3, [fp]
.L02040b38:
    rsb r2, r0, r2
.L02040b3c:
    str r2, [sp, #28]
.L02040b40:
    rsb r6, ip, r3
.L02040b44:
    rsb r1, lr, r0
.L02040b48:
    rsb r2, r4, ip
.L02040b4c:
    str r5, [sp, #20]
.L02040b50:
    b .L020409bc
.L02040b54:
    mov r4, r5
.L02040b58:
    b .L02040ab0
.L02040b5c:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
.L02040b60:
    mov r5, r0
.L02040b64:
    mov sl, #0
.L02040b68:
    mov r6, r3
.L02040b6c:
    str sl, [r0, #12]
.L02040b70:
    sub sp, sp, #4
.L02040b74:
    str r3, [r5, #8]
.L02040b78:
    mov r0, r3, lsl #2
.L02040b7c:
    mov r8, r1
.L02040b80:
    mov r7, r2
.L02040b84:
    bl reconstructed_external_arm_0209787c
.L02040b88:
    cmp r6, sl
.L02040b8c:
    beq .L02040ba8
.L02040b90:
    mov r3, sl
.L02040b94:
    mov r2, sl
.L02040b98:
    str r2, [r0, r3, lsl #2]
.L02040b9c:
    add r3, r3, #1
.L02040ba0:
    cmp r6, r3
.L02040ba4:
    bne .L02040b98
.L02040ba8:
    ldr r4, [r5, #8]
.L02040bac:
    str r0, [r5]
.L02040bb0:
    mov r0, r4, lsl #2
.L02040bb4:
    bl reconstructed_external_arm_0209787c
.L02040bb8:
    cmp r4, #0
.L02040bbc:
    beq .L02040bd8
.L02040bc0:
    mov r3, #0
.L02040bc4:
    mov r2, r3
.L02040bc8:
    str r2, [r0, r3, lsl #2]
.L02040bcc:
    add r3, r3, #1
.L02040bd0:
    cmp r4, r3
.L02040bd4:
    bne .L02040bc8
.L02040bd8:
    ldr r4, [r5, #8]
.L02040bdc:
    str r0, [r5, #4]
.L02040be0:
    cmp r4, #0
.L02040be4:
    ble .L02040c14
.L02040be8:
    mov ip, #0
.L02040bec:
    ldr lr, [r5]
.L02040bf0:
    mov r1, ip
.L02040bf4:
    ldr r3, [r1, r8]
.L02040bf8:
    add ip, ip, #1
.L02040bfc:
    str r3, [lr, r1]
.L02040c00:
    ldr r2, [r1, r7]
.L02040c04:
    cmp r4, ip
.L02040c08:
    str r2, [r0, r1]
.L02040c0c:
    add r1, r1, #4
.L02040c10:
    bgt .L02040bf4
.L02040c14:
    mov r3, #0
.L02040c18:
    mov r0, r5
.L02040c1c:
    strb r3, [r5, #16]
.L02040c20:
    add sp, sp, #4
.L02040c24:
    ldmia sp!, {r4, r5, r6, r7, r8, sl, pc}
.L02040c28:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
.L02040c2c:
    mov r5, #0
.L02040c30:
    mov r6, #3
.L02040c34:
    mov r7, r0
.L02040c38:
    str r6, [r0, #8]
.L02040c3c:
    str r5, [r0, #12]
.L02040c40:
    mov r0, #12
.L02040c44:
    mov r8, r1
.L02040c48:
    bl reconstructed_external_arm_0209787c
.L02040c4c:
    ldr r4, [r7, #8]
.L02040c50:
    mov r3, r0
.L02040c54:
    str r5, [r3], #4
.L02040c58:
    str r0, [r7]
.L02040c5c:
    str r5, [r0, #4]
.L02040c60:
    str r5, [r3, #4]
.L02040c64:
    mov r0, r4, lsl #2
.L02040c68:
    bl reconstructed_external_arm_0209787c
.L02040c6c:
    cmp r4, r5
.L02040c70:
    beq .L02040c8c
.L02040c74:
    mov r3, r5
.L02040c78:
    mov r2, r5
.L02040c7c:
    str r2, [r0, r3, lsl #2]
.L02040c80:
    add r3, r3, #1
.L02040c84:
    cmp r4, r3
.L02040c88:
    bne .L02040c7c
.L02040c8c:
    ldr r6, [r7, #8]
.L02040c90:
    str r0, [r7, #4]
.L02040c94:
    cmp r6, #0
.L02040c98:
    ble .L02040ccc
.L02040c9c:
    mov lr, #0
.L02040ca0:
    ldmia r8, {r1, r5}
.L02040ca4:
    ldr r4, [r7]
.L02040ca8:
    mov ip, lr
.L02040cac:
    ldr r3, [ip, r1]
.L02040cb0:
    add lr, lr, #1
.L02040cb4:
    str r3, [ip, r4]
.L02040cb8:
    ldr r2, [ip, r5]
.L02040cbc:
    cmp r6, lr
.L02040cc0:
    str r2, [ip, r0]
.L02040cc4:
    add ip, ip, #4
.L02040cc8:
    bgt .L02040cac
.L02040ccc:
    mov r0, r7
.L02040cd0:
    ldmia sp!, {r4, r5, r6, r7, r8, pc}
.L02040cd4:
    mov r3, #0
.L02040cd8:
    strb r3, [r0, #16]
.L02040cdc:
    str r3, [r0, #12]
.L02040ce0:
    str r3, [r0]
.L02040ce4:
    str r3, [r0, #4]
.L02040ce8:
    str r3, [r0, #8]
.L02040cec:
    bx lr
.L02040cf0:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
.L02040cf4:
    mov r6, r0
.L02040cf8:
    mov r8, #0
.L02040cfc:
    mov r5, r2
.L02040d00:
    str r8, [r0, #12]
.L02040d04:
    str r2, [r6, #8]
.L02040d08:
    mov r0, r2, lsl #2
.L02040d0c:
    mov r7, r1
.L02040d10:
    bl reconstructed_external_arm_0209787c
.L02040d14:
    cmp r5, r8
.L02040d18:
    beq .L02040d34
.L02040d1c:
    mov r3, r8
.L02040d20:
    mov r2, r8
.L02040d24:
    str r2, [r0, r3, lsl #2]
.L02040d28:
    add r3, r3, #1
.L02040d2c:
    cmp r5, r3
.L02040d30:
    bne .L02040d24
.L02040d34:
    ldr r4, [r6, #8]
.L02040d38:
    str r0, [r6]
.L02040d3c:
    mov r0, r4, lsl #2
.L02040d40:
    bl reconstructed_external_arm_0209787c
.L02040d44:
    cmp r4, #0
.L02040d48:
    beq .L02040d64
.L02040d4c:
    mov r3, #0
.L02040d50:
    mov r2, r3
.L02040d54:
    str r2, [r0, r3, lsl #2]
.L02040d58:
    add r3, r3, #1
.L02040d5c:
    cmp r3, r4
.L02040d60:
    bne .L02040d54
.L02040d64:
    ldr r4, [r6, #8]
.L02040d68:
    str r0, [r6, #4]
.L02040d6c:
    cmp r4, #0
.L02040d70:
    ble .L02040da4
.L02040d74:
    mov ip, #0
.L02040d78:
    ldr r5, [r6]
.L02040d7c:
    mov lr, ip
.L02040d80:
    ldr r3, [lr, r7]
.L02040d84:
    add r2, lr, r7
.L02040d88:
    str r3, [r5, ip, lsl #2]
.L02040d8c:
    ldr r1, [r2, #4]
.L02040d90:
    add lr, lr, #8
.L02040d94:
    str r1, [r0, ip, lsl #2]
.L02040d98:
    add ip, ip, #1
.L02040d9c:
    cmp r4, ip
.L02040da0:
    bgt .L02040d80
.L02040da4:
    mov r3, #0
.L02040da8:
    mov r0, r6
.L02040dac:
    strb r3, [r6, #16]
.L02040db0:
    ldmia sp!, {r4, r5, r6, r7, r8, pc}
.L02040db4:
    stmdb sp!, {r4, r5, r6, r7, r8, lr}
.L02040db8:
    mov r6, r0
.L02040dbc:
    mov r8, #0
.L02040dc0:
    mov r5, r2
.L02040dc4:
    str r8, [r0, #12]
.L02040dc8:
    str r2, [r6, #8]
.L02040dcc:
    mov r0, r2, lsl #2
.L02040dd0:
    mov r7, r1
.L02040dd4:
    bl reconstructed_external_arm_0209787c
.L02040dd8:
    cmp r5, r8
.L02040ddc:
    beq .L02040df8
.L02040de0:
    mov r3, r8
.L02040de4:
    mov r2, r8
.L02040de8:
    str r2, [r0, r3, lsl #2]
.L02040dec:
    add r3, r3, #1
.L02040df0:
    cmp r5, r3
.L02040df4:
    bne .L02040de8
.L02040df8:
    ldr r4, [r6, #8]
.L02040dfc:
    str r0, [r6]
.L02040e00:
    mov r0, r4, lsl #2
.L02040e04:
    bl reconstructed_external_arm_0209787c
.L02040e08:
    cmp r4, #0
.L02040e0c:
    beq .L02040e28
.L02040e10:
    mov r3, #0
.L02040e14:
    mov r2, r3
.L02040e18:
    str r2, [r0, r3, lsl #2]
.L02040e1c:
    add r3, r3, #1
.L02040e20:
    cmp r4, r3
.L02040e24:
    bne .L02040e18
.L02040e28:
    ldr r4, [r6, #8]
.L02040e2c:
    str r0, [r6, #4]
.L02040e30:
    cmp r4, #0
.L02040e34:
    ble .L02040e68
.L02040e38:
    mov ip, #0
.L02040e3c:
    ldr r5, [r6]
.L02040e40:
    mov lr, ip
.L02040e44:
    ldr r3, [lr, r7]
.L02040e48:
    add r2, lr, r7
.L02040e4c:
    str r3, [r5, ip, lsl #2]
.L02040e50:
    ldr r1, [r2, #4]
.L02040e54:
    add lr, lr, #8
.L02040e58:
    str r1, [r0, ip, lsl #2]
.L02040e5c:
    add ip, ip, #1
.L02040e60:
    cmp r4, ip
.L02040e64:
    bgt .L02040e44
.L02040e68:
    mov r3, #0
.L02040e6c:
    mov r0, r6
.L02040e70:
    strb r3, [r6, #16]
.L02040e74:
    ldmia sp!, {r4, r5, r6, r7, r8, pc}
.L02040e78:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
.L02040e7c:
    mov r5, r2, lsl #2
.L02040e80:
    sub sp, sp, #4
.L02040e84:
    mov sl, r0
.L02040e88:
    mov r0, r5
.L02040e8c:
    mov r4, r2
.L02040e90:
    mov r8, r1
.L02040e94:
    bl reconstructed_external_arm_0209787c
.L02040e98:
    cmp r4, #0
.L02040e9c:
    mov r6, r0
.L02040ea0:
    beq .L02040f5c
.L02040ea4:
    mov r3, #0
.L02040ea8:
    mov r7, r3
.L02040eac:
    str r7, [r6, r3, lsl #2]
.L02040eb0:
    add r3, r3, #1
.L02040eb4:
    cmp r4, r3
.L02040eb8:
    bne .L02040eac
.L02040ebc:
    mov r0, r5
.L02040ec0:
    bl reconstructed_external_arm_0209787c
.L02040ec4:
    mov r3, r7
.L02040ec8:
    mov r5, r0
.L02040ecc:
    mov r2, r7
.L02040ed0:
    str r2, [r5, r3, lsl #2]
.L02040ed4:
    add r3, r3, #1
.L02040ed8:
    cmp r3, r4
.L02040edc:
    bne .L02040ed0
.L02040ee0:
    cmp r4, #0
.L02040ee4:
    ble .L02040f1c
.L02040ee8:
    mov lr, r2
.L02040eec:
    mov ip, r2
.L02040ef0:
    mov r0, r2
.L02040ef4:
    ldr r3, [ip, r8]
.L02040ef8:
    add r2, ip, r8
.L02040efc:
    str r3, [r0, r6]
.L02040f00:
    ldr r1, [r2, #4]
.L02040f04:
    add lr, lr, #1
.L02040f08:
    cmp r4, lr
.L02040f0c:
    str r1, [r0, r5]
.L02040f10:
    add ip, ip, #8
.L02040f14:
    add r0, r0, #4
.L02040f18:
    bne .L02040ef4
.L02040f1c:
    mov r3, r4
.L02040f20:
    mov r0, sl
.L02040f24:
    mov r1, r6
.L02040f28:
    mov r2, r5
.L02040f2c:
    bl .L0203fe18
.L02040f30:
    cmp r6, #0
.L02040f34:
    beq .L02040f40
.L02040f38:
    mov r0, r6
.L02040f3c:
    bl reconstructed_external_arm_02097888
.L02040f40:
    cmp r5, #0
.L02040f44:
    beq .L02040f50
.L02040f48:
    mov r0, r5
.L02040f4c:
    bl reconstructed_external_arm_02097888
.L02040f50:
    mov r0, sl
.L02040f54:
    add sp, sp, #4
.L02040f58:
    ldmia sp!, {r4, r5, r6, r7, r8, sl, pc}
.L02040f5c:
    mov r0, r5
.L02040f60:
    bl reconstructed_external_arm_0209787c
.L02040f64:
    mov r5, r0
.L02040f68:
    b .L02040f1c
.L02040f6c:
    mov r3, #0
.L02040f70:
    str r3, [r0, #136]
.L02040f74:
    str r3, [r0]
.L02040f78:
    str r3, [r0, #4]
.L02040f7c:
    bx lr
.L02040f80:
    str lr, [sp, #-4]!
.L02040f84:
    mov r2, #0
.L02040f88:
    str r2, [r0]
.L02040f8c:
    str r2, [r0, #4]
.L02040f90:
    ldmia r1, {ip, lr}
.L02040f94:
    str r2, [r0, #136]
.L02040f98:
    stmia r0, {ip, lr}
.L02040f9c:
    ldr pc, [sp], #4
.L02040fa0:
    cmp r0, #1
.L02040fa4:
    str lr, [sp, #-4]!
.L02040fa8:
    ldrne pc, [sp], #4
.L02040fac:
    ldr r3, [pc, #168]
.L02040fb0:
    ldr ip, [pc, #168]
.L02040fb4:
    cmp r1, r3
.L02040fb8:
    ldr lr, [pc, #164]
.L02040fbc:
    ldrne pc, [sp], #4
.L02040fc0:
    ldr r2, [pc, #160]
.L02040fc4:
    ldr r3, [pc, #160]
.L02040fc8:
    ldr r1, [pc, #160]
.L02040fcc:
    str r2, [r3]
.L02040fd0:
    ldr r3, [pc, #156]
.L02040fd4:
    ldr r2, [pc, #156]
.L02040fd8:
    str r1, [r3]
.L02040fdc:
    ldr r3, [pc, #152]
.L02040fe0:
    mov r1, #65536
.L02040fe4:
    str r2, [r3]
.L02040fe8:
    ldr r3, [pc, #144]
.L02040fec:
    ldr r2, [pc, #144]
.L02040ff0:
    str r1, [r3]
.L02040ff4:
    ldr r3, [pc, #140]
.L02040ff8:
    add r1, r1, #6488064
.L02040ffc:
    str r2, [r3]
.L02041000:
    ldr r3, [pc, #132]
.L02041004:
    mov r0, #16384000
.L02041008:
    str r1, [r3]
.L0204100c:
    ldr r3, [pc, #124]
.L02041010:
    ldr r2, [pc, #124]
.L02041014:
    str r0, [r3]
.L02041018:
    ldr r3, [pc, #120]
.L0204101c:
    mov r1, #32768
.L02041020:
    str r1, [r3]
.L02041024:
    str lr, [r2]
.L02041028:
    ldr r3, [pc, #108]
.L0204102c:
    ldr r2, [pc, #108]
.L02041030:
    mov r1, #728
.L02041034:
    str r2, [r3]
.L02041038:
    ldr r3, [pc, #100]
.L0204103c:
    ldr r2, [pc, #100]
.L02041040:
    str r1, [r3]
.L02041044:
    str ip, [r2]
.L02041048:
    ldr r3, [pc, #92]
.L0204104c:
    ldr r2, [pc, #92]
.L02041050:
    str ip, [r3]
.L02041054:
    str lr, [r2]
.L02041058:
    ldr pc, [sp], #4
.L0204105c:
    .long 0x0000ffff  /* literal data */
.L02041060:
    .long 0x00000a38  /* literal data */
.L02041064:
    .long 0x00003333  /* literal data */
.L02041068:
    .long 0x0003243f  /* literal data */
.L0204106c:
    .long 0x020cae5c  /* literal data */
.L02041070:
    .long 0x00000147  /* literal data */
.L02041074:
    .long 0x020cae60  /* literal data */
.L02041078:
    .long 0x000008ef  /* literal data */
.L0204107c:
    .long 0x020cae64  /* literal data */
.L02041080:
    .long 0x020cae6c  /* literal data */
.L02041084:
    .long 0x000023bc  /* literal data */
.L02041088:
    .long 0x020cae74  /* literal data */
.L0204108c:
    .long 0x020cae78  /* literal data */
.L02041090:
    .long 0x020cae7c  /* literal data */
.L02041094:
    .long 0x020cae80  /* literal data */
.L02041098:
    .long 0x020cae84  /* literal data */
.L0204109c:
    .long 0x020cae88  /* literal data */
.L020410a0:
    .long 0x0000028f  /* literal data */
.L020410a4:
    .long 0x020cae8c  /* literal data */
.L020410a8:
    .long 0x020cae90  /* literal data */
.L020410ac:
    .long 0x020cae68  /* literal data */
.L020410b0:
    .long 0x020cae70  /* literal data */
.L020410b4:
    ldr r1, [pc, #4]
.L020410b8:
    mov r0, #1
.L020410bc:
    b .L02040fa0
.L020410c0:
    .long 0x0000ffff  /* literal data */
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
    bl .L0203eab8
.L020410fc:
    add r0, sp, #144
.L02041100:
    bl .L0203eab8
.L02041104:
    mov r3, r6
.L02041108:
    mov r1, r8
.L0204110c:
    mov r2, r7
.L02041110:
    add r0, sp, #124
.L02041114:
    bl .L0203f208
.L02041118:
    add r0, sp, #124
.L0204111c:
    add r1, sp, #164
.L02041120:
    add r2, sp, #144
.L02041124:
    bl .L020403d8
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_02046030
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_02046030
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
    bl reconstructed_external_arm_02045f98
.L02041220:
    cmp r7, r4
.L02041224:
    bne .L02041214
.L02041228:
    sub r0, r7, #8
.L0204122c:
    bl reconstructed_external_arm_02097888
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
    bl reconstructed_external_arm_02045f98
.L02041258:
    cmp r8, r4
.L0204125c:
    bne .L0204124c
.L02041260:
    sub r0, r8, #8
.L02041264:
    bl reconstructed_external_arm_02097888
.L02041268:
    mvn r8, #0
.L0204126c:
    add r0, sp, #124
.L02041270:
    bl .L020403a8
.L02041274:
    add r0, sp, #144
.L02041278:
    bl .L020403a8
.L0204127c:
    add r0, sp, #164
.L02041280:
    bl .L020403a8
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_02046030
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_0209787c
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
    bl .L0204093c
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
    bl .L0203eec4
.L020413f8:
    ldr r1, [sp, #112]
.L020413fc:
    mov r6, r0
.L02041400:
    ldr r0, [sp, #80]
.L02041404:
    bl .L0203eec4
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
    bl reconstructed_external_arm_02083618
.L02041470:
    mov r1, #931135488
.L02041474:
    bl reconstructed_external_arm_020836f4
.L02041478:
    mov r1, #0
.L0204147c:
    mov r4, r0
.L02041480:
    bl reconstructed_external_arm_02083a84
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
    bl reconstructed_external_arm_02083618
.L020414c4:
    mov r1, #931135488
.L020414c8:
    bl reconstructed_external_arm_020836f4
.L020414cc:
    mov r1, #0
.L020414d0:
    mov r4, r0
.L020414d4:
    bl reconstructed_external_arm_02083a84
.L020414d8:
    cmp r0, #0
.L020414dc:
    bne .L020418fc
.L020414e0:
    mov r0, r4
.L020414e4:
    bl reconstructed_external_arm_02082c68
.L020414e8:
    ldr r2, [pc, #3552]
.L020414ec:
    ldr r3, [pc, #3552]
.L020414f0:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02083618
.L02041524:
    mov r1, #931135488
.L02041528:
    bl reconstructed_external_arm_020836f4
.L0204152c:
    mov r1, #0
.L02041530:
    mov r4, r0
.L02041534:
    bl reconstructed_external_arm_02083a84
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
    bl reconstructed_external_arm_02083618
.L0204157c:
    mov r1, #931135488
.L02041580:
    bl reconstructed_external_arm_020836f4
.L02041584:
    mov r1, #0
.L02041588:
    mov r4, r0
.L0204158c:
    bl reconstructed_external_arm_02083a84
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_020460d8
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
    bl reconstructed_external_arm_02045ff8
.L020418a8:
    cmp r5, #0
.L020418ac:
    ldr r5, [sp, #104]
.L020418b0:
    beq .L020418bc
.L020418b4:
    ldr r0, [sp, #72]
.L020418b8:
    bl reconstructed_external_arm_02097888
.L020418bc:
    ldr r3, [sp, #116]
.L020418c0:
    cmp r3, #0
.L020418c4:
    beq .L020418d0
.L020418c8:
    mov r0, r3
.L020418cc:
    bl reconstructed_external_arm_02097888
.L020418d0:
    mov r0, r4
.L020418d4:
    bl reconstructed_external_arm_02045f98
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
    bl reconstructed_external_arm_02082c68
.L02041928:
    ldr r2, [pc, #2464]
.L0204192c:
    ldr r3, [pc, #2464]
.L02041930:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02083618
.L0204195c:
    mov r1, #931135488
.L02041960:
    bl reconstructed_external_arm_020836f4
.L02041964:
    mov r1, #0
.L02041968:
    mov r4, r0
.L0204196c:
    bl reconstructed_external_arm_02083a84
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
    bl reconstructed_external_arm_02082c68
.L0204199c:
    ldr r2, [pc, #2348]
.L020419a0:
    ldr r3, [pc, #2348]
.L020419a4:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02083618
.L020419d8:
    mov r1, #931135488
.L020419dc:
    bl reconstructed_external_arm_020836f4
.L020419e0:
    mov r1, #0
.L020419e4:
    mov r4, r0
.L020419e8:
    bl reconstructed_external_arm_02083a84
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083618
.L02041e80:
    mov r1, #931135488
.L02041e84:
    bl reconstructed_external_arm_020836f4
.L02041e88:
    mov r1, #0
.L02041e8c:
    mov r4, r0
.L02041e90:
    bl reconstructed_external_arm_02083a84
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
    bl reconstructed_external_arm_02082c68
.L02041ec0:
    ldr r2, [pc, #1032]
.L02041ec4:
    ldr r3, [pc, #1032]
.L02041ec8:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02083618
.L02041f74:
    mov r1, #931135488
.L02041f78:
    bl reconstructed_external_arm_020836f4
.L02041f7c:
    mov r1, #0
.L02041f80:
    mov r4, r0
.L02041f84:
    bl reconstructed_external_arm_02083a84
.L02041f88:
    cmp r0, #0
.L02041f8c:
    bne .L020418fc
.L02041f90:
    mov r0, r4
.L02041f94:
    bl reconstructed_external_arm_02082c68
.L02041f98:
    ldr r2, [pc, #816]
.L02041f9c:
    ldr r3, [pc, #816]
.L02041fa0:
    bl reconstructed_external_arm_02083298
.L02041fa4:
    cmp r0, #0
.L02041fa8:
    bne .L020427d0
.L02041fac:
    mov r0, r4
.L02041fb0:
    ldr r1, [pc, #800]
.L02041fb4:
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083618
.L02042088:
    mov r1, #931135488
.L0204208c:
    bl reconstructed_external_arm_020836f4
.L02042090:
    mov r1, #0
.L02042094:
    mov r4, r0
.L02042098:
    bl reconstructed_external_arm_02083a84
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
    bl reconstructed_external_arm_02082c68
.L020420c8:
    ldr r2, [pc, #512]
.L020420cc:
    ldr r3, [pc, #512]
.L020420d0:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02082c68
.L02042168:
    ldr r2, [pc, #352]
.L0204216c:
    ldr r3, [pc, #352]
.L02042170:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02082c68
.L020421f8:
    ldr r2, [pc, #208]
.L020421fc:
    ldr r3, [pc, #208]
.L02042200:
    bl reconstructed_external_arm_02083298
.L02042204:
    cmp r0, #0
.L02042208:
    bne .L02042774
.L0204220c:
    mov r0, r4
.L02042210:
    ldr r1, [pc, #192]
.L02042214:
    bl reconstructed_external_arm_02083a9c
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
    .long 0x020c38e8  /* literal data */
.L020422e4:
    .long 0x000002e7  /* literal data */
.L020422e8:
    .long 0x020c3970  /* literal data */
.L020422ec:
    .long 0x0209390c  /* literal data */
.L020422f0:
    mov r0, r4
.L020422f4:
    ldr r1, [pc, #-36]
.L020422f8:
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02082c68
.L020423a8:
    ldr r2, [pc, #-224]
.L020423ac:
    ldr r3, [pc, #-224]
.L020423b0:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02045ff8
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
    bl reconstructed_external_arm_02045ff8
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
    bl reconstructed_external_arm_02045f98
.L020428c8:
    cmp r7, r4
.L020428cc:
    bne .L020428bc
.L020428d0:
    sub r0, r7, #8
.L020428d4:
    bl reconstructed_external_arm_02097888
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
    bl reconstructed_external_arm_02045f98
.L02042900:
    cmp r8, r4
.L02042904:
    bne .L020428f4
.L02042908:
    sub r0, r8, #8
.L0204290c:
    bl reconstructed_external_arm_02097888
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
    bl reconstructed_external_arm_020460d8
.L0204299c:
    ldr r1, [sp, #68]
.L020429a0:
    add r0, r1, r4
.L020429a4:
    mov r1, r7
.L020429a8:
    bl reconstructed_external_arm_02045ff8
.L020429ac:
    cmp r5, #0
.L020429b0:
    beq .L020429bc
.L020429b4:
    ldr r0, [sp, #72]
.L020429b8:
    bl reconstructed_external_arm_02097888
.L020429bc:
    ldr r2, [sp, #116]
.L020429c0:
    cmp r2, #0
.L020429c4:
    beq .L020429d0
.L020429c8:
    mov r0, r2
.L020429cc:
    bl reconstructed_external_arm_02097888
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
    bl reconstructed_external_arm_02097804
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
    bl reconstructed_external_arm_02045ff8
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
    bl reconstructed_external_arm_02045f98
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
    bl reconstructed_external_arm_02097888
.L02042a68:
    mov r0, r7
.L02042a6c:
    bl reconstructed_external_arm_02045f98
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
    bl reconstructed_external_arm_0209787c
.L02042b58:
    str r0, [sp, #116]
.L02042b5c:
    b .L0204133c
.L02042b60:
    stmdb sp!, {r4, r5, r6, r7, r8, sl, lr}
.L02042b64:
    ldr r5, [r0, #8]
.L02042b68:
    sub sp, sp, #28
.L02042b6c:
    cmp r5, #2
.L02042b70:
    mov r6, r0
.L02042b74:
    mov r8, r1
.L02042b78:
    mov r7, r2
.L02042b7c:
    movle r5, #0
.L02042b80:
    bgt .L02042b90
.L02042b84:
    mov r0, r5
.L02042b88:
    add sp, sp, #28
.L02042b8c:
    ldmia sp!, {r4, r5, r6, r7, r8, sl, pc}
.L02042b90:
    sub r4, r5, #2
.L02042b94:
    mov r0, r4, lsl #3
.L02042b98:
    add r0, r0, #8
.L02042b9c:
    bl reconstructed_external_arm_0209787c
.L02042ba0:
    mov r3, #8
.L02042ba4:
    cmp r4, #0
.L02042ba8:
    stmia r0, {r3, r4}
.L02042bac:
    add sl, r0, r3
.L02042bb0:
    beq .L02042bd4
.L02042bb4:
    mov r4, r5
.L02042bb8:
    mov r5, sl
.L02042bbc:
    mov r0, r5
.L02042bc0:
    sub r4, r4, #1
.L02042bc4:
    bl reconstructed_external_arm_02046030
.L02042bc8:
    cmp r4, #2
.L02042bcc:
    add r5, r5, #8
.L02042bd0:
    bne .L02042bbc
.L02042bd4:
    mov r0, r6
.L02042bd8:
    bl .L0203ebe4
.L02042bdc:
    cmp r0, #0
.L02042be0:
    beq .L02042c7c
.L02042be4:
    add r4, sp, #4
.L02042be8:
    mov r0, r4
.L02042bec:
    bl .L0203eab8
.L02042bf0:
    mov r0, r4
.L02042bf4:
    mov r1, r6
.L02042bf8:
    bl .L0203f6b0
.L02042bfc:
    ldmib sp, {r0, r1, r2}
.L02042c00:
    bl .L0203edd8
.L02042c04:
    ldmib sp, {r0, r1, r2}
.L02042c08:
    mov r3, sl
.L02042c0c:
    bl .L020410c4
.L02042c10:
    mov r5, r0
.L02042c14:
    mov r0, r4
.L02042c18:
    bl .L020403a8
.L02042c1c:
    cmp r5, #0
.L02042c20:
    mvnle r5, #0
.L02042c24:
    ble .L02042b84
.L02042c28:
    mov r1, r5
.L02042c2c:
    mov r2, r8
.L02042c30:
    mov r3, r7
.L02042c34:
    mov r0, sl
.L02042c38:
    bl .L020406d0
.L02042c3c:
    cmp sl, #0
.L02042c40:
    mov r5, r0
.L02042c44:
    beq .L02042b84
.L02042c48:
    ldr r3, [sl, #-4]
.L02042c4c:
    mov r3, r3, lsl #3
.L02042c50:
    add r4, sl, r3
.L02042c54:
    cmp sl, r4
.L02042c58:
    beq .L02042c70
.L02042c5c:
    sub r4, r4, #8
.L02042c60:
    mov r0, r4
.L02042c64:
    bl reconstructed_external_arm_02045f98
.L02042c68:
    cmp sl, r4
.L02042c6c:
    bne .L02042c5c
.L02042c70:
    sub r0, sl, #8
.L02042c74:
    bl reconstructed_external_arm_02097888
.L02042c78:
    b .L02042b84
.L02042c7c:
    ldmia r6, {r0, r1, r2}
.L02042c80:
    mov r3, sl
.L02042c84:
    bl .L020410c4
.L02042c88:
    mov r5, r0
.L02042c8c:
    b .L02042c1c
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
    bl .L0203ec10
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
    bl .L0203eccc
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
    bl .L0203ead4
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_02083618
.L02042e7c:
    mov r1, #931135488
.L02042e80:
    bl reconstructed_external_arm_020836f4
.L02042e84:
    mov r1, #0
.L02042e88:
    mov r8, r4
.L02042e8c:
    mov r4, r0
.L02042e90:
    bl reconstructed_external_arm_02083a84
.L02042e94:
    cmp r0, #0
.L02042e98:
    mov r5, r5, asr #16
.L02042e9c:
    bne .L0204302c
.L02042ea0:
    mov r0, r4
.L02042ea4:
    bl reconstructed_external_arm_02082c68
.L02042ea8:
    ldr r2, [pc, #2800]
.L02042eac:
    ldr r3, [pc, #2800]
.L02042eb0:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02083618
.L02042edc:
    mov r1, #931135488
.L02042ee0:
    bl reconstructed_external_arm_020836f4
.L02042ee4:
    mov r1, #0
.L02042ee8:
    mov r4, r0
.L02042eec:
    bl reconstructed_external_arm_02083a84
.L02042ef0:
    cmp r0, #0
.L02042ef4:
    bne .L0204302c
.L02042ef8:
    mov r0, r4
.L02042efc:
    bl reconstructed_external_arm_02082c68
.L02042f00:
    ldr r2, [pc, #2712]
.L02042f04:
    ldr r3, [pc, #2712]
.L02042f08:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02083618
.L0204311c:
    mov r1, #931135488
.L02043120:
    bl reconstructed_external_arm_020836f4
.L02043124:
    bl reconstructed_external_arm_020978a0
.L02043128:
    ldr r1, [pc, #2184]
.L0204312c:
    bl reconstructed_external_arm_020836f4
.L02043130:
    bl reconstructed_external_arm_02083afc
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
    bl reconstructed_external_arm_02097870
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
    bl reconstructed_external_arm_02097888
.L02043568:
    ldr ip, [sp, #108]
.L0204356c:
    cmp ip, #0
.L02043570:
    beq .L0204357c
.L02043574:
    mov r0, ip
.L02043578:
    bl reconstructed_external_arm_02097888
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083618
.L02043664:
    mov r1, #931135488
.L02043668:
    bl reconstructed_external_arm_020836f4
.L0204366c:
    mov r1, #0
.L02043670:
    mov r4, r0
.L02043674:
    bl reconstructed_external_arm_02083a84
.L02043678:
    cmp r0, #0
.L0204367c:
    bne .L0204302c
.L02043680:
    mov r0, r4
.L02043684:
    bl reconstructed_external_arm_02082c68
.L02043688:
    ldr r2, [pc, #784]
.L0204368c:
    ldr r3, [pc, #784]
.L02043690:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_020978ac
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_020978b8
.L02043940:
    b .L02043594
.L02043944:
    mov r1, #8
.L02043948:
    ldr r0, [pc, #128]
.L0204394c:
    bl reconstructed_external_arm_020978ac
.L02043950:
    b .L02043594
.L02043954:
    ldr r0, [pc, #120]
.L02043958:
    bl reconstructed_external_arm_020978b8
.L0204395c:
    b .L02043594
.L02043960:
    ldr r0, [pc, #112]
.L02043964:
    bl reconstructed_external_arm_020978b8
.L02043968:
    b .L02043594
.L0204396c:
    ldr r0, [pc, #104]
.L02043970:
    bl reconstructed_external_arm_020978b8
.L02043974:
    b .L02043594
.L02043978:
    ldr r0, [pc, #96]
.L0204397c:
    bl reconstructed_external_arm_020978b8
.L02043980:
    b .L02043594
.L02043984:
    ldr r0, [pc, #88]
.L02043988:
    bl reconstructed_external_arm_020978b8
.L0204398c:
    b .L02043594
.L02043990:
    ldr r0, [pc, #80]
.L02043994:
    bl reconstructed_external_arm_020978b8
.L02043998:
    b .L02043594
.L0204399c:
    .long 0xffff0000  /* literal data */
.L020439a0:
    .long 0x9999999a  /* literal data */
.L020439a4:
    .long 0x3fb99999  /* literal data */
.L020439a8:
    .long 0x0209390c  /* literal data */
.L020439ac:
    .long 0x04000200  /* literal data */
.L020439b0:
    .long 0x020cae60  /* literal data */
.L020439b4:
    .long 0x020cae90  /* literal data */
.L020439b8:
    .long 0x47800000  /* literal data */
.L020439bc:
    .long 0x020cae64  /* literal data */
.L020439c0:
    .long 0x00005555  /* literal data */
.L020439c4:
    .long 0x43340000  /* literal data */
.L020439c8:
    .long 0x020c398c  /* literal data */
.L020439cc:
    .long 0x020c3a98  /* literal data */
.L020439d0:
    .long 0x020c39a4  /* literal data */
.L020439d4:
    .long 0x020c39cc  /* literal data */
.L020439d8:
    .long 0x020c39dc  /* literal data */
.L020439dc:
    .long 0x020c3a08  /* literal data */
.L020439e0:
    .long 0x020c3a1c  /* literal data */
.L020439e4:
    .long 0x020c3a40  /* literal data */
.L020439e8:
    .long 0x020c3a58  /* literal data */
.L020439ec:
    str lr, [sp, #-4]!
.L020439f0:
    mov r1, #0
.L020439f4:
    sub sp, sp, #4
.L020439f8:
    bl .L02042c90
.L020439fc:
    add sp, sp, #4
.L02043a00:
    ldmia sp!, {pc}
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
    bl reconstructed_external_arm_0209787c
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
    bl .L0203eab8
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
    bl .L02042b60
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_0209781c
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
    bl reconstructed_external_arm_0209781c
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
    bl .L020439ec
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
    bl .L020403a8
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
    bl .L020403a8
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
    bl reconstructed_external_arm_02097888
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
    bl .L0203f2d4
.L020441ec:
    ldr r0, [sp, #36]
.L020441f0:
    ldr r1, [sp, #72]
.L020441f4:
    bl reconstructed_external_arm_02012360
.L020441f8:
    ldr r0, [sp, #36]
.L020441fc:
    bl reconstructed_external_arm_02012530
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
    bl .L0203ead4
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
    bl .L0203f208
.L02044494:
    add r1, sp, #224
.L02044498:
    add r2, sp, #212
.L0204449c:
    mov r3, #3
.L020444a0:
    mov r0, r5
.L020444a4:
    bl .L0203f208
.L020444a8:
    mov r0, r6
.L020444ac:
    bl .L020439ec
.L020444b0:
    cmp r0, #0
.L020444b4:
    bne .L020444dc
.L020444b8:
    mov r0, r5
.L020444bc:
    bl .L020439ec
.L020444c0:
    cmp r0, #0
.L020444c4:
    bne .L0204450c
.L020444c8:
    mov r0, r5
.L020444cc:
    bl .L020403a8
.L020444d0:
    mov r0, r6
.L020444d4:
    bl .L020403a8
.L020444d8:
    b .L02044144
.L020444dc:
    mov r0, r6
.L020444e0:
    ldr r1, [sp, #72]
.L020444e4:
    bl .L0203f2d4
.L020444e8:
    ldr r1, [sp, #72]
.L020444ec:
    ldr r0, [sp, #36]
.L020444f0:
    bl reconstructed_external_arm_02012360
.L020444f4:
    ldr r0, [sp, #36]
.L020444f8:
    bl reconstructed_external_arm_02012530
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
    bl .L0203f2d4
.L02044540:
    ldr r0, [sp, #36]
.L02044544:
    mov r1, r4
.L02044548:
    bl reconstructed_external_arm_02012360
.L0204454c:
    ldr r0, [sp, #36]
.L02044550:
    bl reconstructed_external_arm_02012530
.L02044554:
    b .L020444c8
.L02044558:
    .long 0x020c2640  /* literal data */
.L0204455c:
    .long 0x00003333  /* literal data */
.L02044560:
    .long 0x020cae64  /* literal data */
.L02044564:
    .long 0x04000200  /* literal data */
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
    bl reconstructed_external_arm_02083618
.L020445c8:
    mov r1, #931135488
.L020445cc:
    bl reconstructed_external_arm_020836f4
.L020445d0:
    mov r1, #0
.L020445d4:
    mov r4, r0
.L020445d8:
    bl reconstructed_external_arm_02083a84
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
    bl reconstructed_external_arm_02097804
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
    bl reconstructed_external_arm_02097804
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
    bl reconstructed_external_arm_02083618
.L0204478c:
    mov r1, #931135488
.L02044790:
    bl reconstructed_external_arm_020836f4
.L02044794:
    mov r1, #0
.L02044798:
    mov r4, r0
.L0204479c:
    bl reconstructed_external_arm_02083a84
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
    bl .L0203ee64
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
    bl reconstructed_external_arm_02083618
.L02044938:
    mov r1, #931135488
.L0204493c:
    bl reconstructed_external_arm_020836f4
.L02044940:
    mov r1, #0
.L02044944:
    mov r4, r0
.L02044948:
    bl reconstructed_external_arm_02083a84
.L0204494c:
    cmp r0, #0
.L02044950:
    bne .L02044640
.L02044954:
    mov r0, r4
.L02044958:
    bl reconstructed_external_arm_02082c68
.L0204495c:
    ldr r2, [pc, #2908]
.L02044960:
    ldr r3, [pc, #2908]
.L02044964:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02083618
.L02044990:
    mov r1, #931135488
.L02044994:
    bl reconstructed_external_arm_020836f4
.L02044998:
    mov r1, #0
.L0204499c:
    mov r4, r0
.L020449a0:
    bl reconstructed_external_arm_02083a84
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
    bl reconstructed_external_arm_02082c68
.L02044a10:
    ldr r2, [pc, #2728]
.L02044a14:
    ldr r3, [pc, #2728]
.L02044a18:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083618
.L02044dc0:
    mov r1, #931135488
.L02044dc4:
    bl reconstructed_external_arm_020836f4
.L02044dc8:
    mov r1, #0
.L02044dcc:
    mov r4, r0
.L02044dd0:
    bl reconstructed_external_arm_02083a84
.L02044dd4:
    cmp r0, #0
.L02044dd8:
    bne .L02045170
.L02044ddc:
    mov r0, r4
.L02044de0:
    bl reconstructed_external_arm_02082c68
.L02044de4:
    ldr r2, [pc, #1748]
.L02044de8:
    ldr r3, [pc, #1748]
.L02044dec:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02082c68
.L02044e74:
    ldr r2, [pc, #1604]
.L02044e78:
    ldr r3, [pc, #1604]
.L02044e7c:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02082c68
.L02044f48:
    ldr r2, [pc, #1392]
.L02044f4c:
    ldr r3, [pc, #1392]
.L02044f50:
    bl reconstructed_external_arm_02083298
.L02044f54:
    cmp r0, #0
.L02044f58:
    bne .L0204518c
.L02044f5c:
    mov r0, r4
.L02044f60:
    ldr r1, [pc, #1384]
.L02044f64:
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083618
.L020451ac:
    mov r1, #931135488
.L020451b0:
    bl reconstructed_external_arm_020836f4
.L020451b4:
    mov r1, #0
.L020451b8:
    mov r4, r0
.L020451bc:
    bl reconstructed_external_arm_02083a84
.L020451c0:
    cmp r0, #0
.L020451c4:
    bne .L020445e4
.L020451c8:
    mov r0, r4
.L020451cc:
    bl reconstructed_external_arm_02082c68
.L020451d0:
    ldr r2, [pc, #744]
.L020451d4:
    ldr r3, [pc, #744]
.L020451d8:
    bl reconstructed_external_arm_02083298
.L020451dc:
    cmp r0, #0
.L020451e0:
    bne .L020454dc
.L020451e4:
    mov r0, r4
.L020451e8:
    ldr r1, [pc, #736]
.L020451ec:
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083a9c
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
    bl reconstructed_external_arm_02083618
.L020453b8:
    mov r1, #931135488
.L020453bc:
    bl reconstructed_external_arm_020836f4
.L020453c0:
    mov r1, #0
.L020453c4:
    mov r4, r0
.L020453c8:
    bl reconstructed_external_arm_02083a84
.L020453cc:
    cmp r0, #0
.L020453d0:
    bne .L020445e4
.L020453d4:
    mov r0, r4
.L020453d8:
    bl reconstructed_external_arm_02082c68
.L020453dc:
    ldr r2, [pc, #220]
.L020453e0:
    ldr r3, [pc, #220]
.L020453e4:
    bl reconstructed_external_arm_02083298
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
    bl reconstructed_external_arm_02097804
.L020454a0:
    mov r9, #0
.L020454a4:
    str r9, [sp, #40]
.L020454a8:
    b .L020449fc
.L020454ac:
    .long 0x020c38e8  /* literal data */
.L020454b0:
    .long 0x00000622  /* literal data */
.L020454b4:
    .long 0x020c3aa8  /* literal data */
.L020454b8:
    .long 0x00000629  /* literal data */
.L020454bc:
    .long 0x020c3ac8  /* literal data */
.L020454c0:
    .long 0x9999999a  /* literal data */
.L020454c4:
    .long 0x3fb99999  /* literal data */
.L020454c8:
    .long 0x00000638  /* literal data */
.L020454cc:
    .long 0x020c3ae8  /* literal data */
.L020454d0:
    .long 0x43340000  /* literal data */
.L020454d4:
    .long 0x04000200  /* literal data */
.L020454d8:
    .long 0x0209390c  /* literal data */
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
    bl reconstructed_external_arm_02083a9c
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
    bl .L0203ef04
.L02045688:
    mov r0, r4
.L0204568c:
    mov r1, r5
.L02045690:
    bl .L02044568
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
    bl reconstructed_external_arm_02097804
.L020456b8:
    b .L020456a8
.L020456bc:
    .long 0x00000641  /* literal data */
.L020456c0:
    .long 0x020c38e8  /* literal data */
.L020456c4:
    .long 0x020c3af0  /* literal data */
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
    bl reconstructed_external_arm_0209787c
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
    bl .L0203eef0
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
    bl .L0203f074
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
    bl .L0203f074
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
    bl .L0203e768
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
    bl .L0203efb8
.L02045914:
    mov r1, r4
.L02045918:
    mov r0, sl
.L0204591c:
    bl .L0203efb8
.L02045920:
    ldr r0, [r8, #8]
.L02045924:
    mov r1, r7
.L02045928:
    bl .L0203efb8
.L0204592c:
    mov r1, r5
.L02045930:
    mov r0, r7
.L02045934:
    bl .L0203efb8
.L02045938:
    add r1, sp, #192
.L0204593c:
    add r0, sp, #52
.L02045940:
    bl .L0203ef04
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
    bl reconstructed_external_arm_0209781c
.L02045968:
    ldr r3, [sp, #188]
.L0204596c:
    mov r0, r6
.L02045970:
    str r3, [r6, #136]
.L02045974:
    mov r1, sl
.L02045978:
    bl .L0203f074
.L0204597c:
    mov r0, sl
.L02045980:
    mov r1, r6
.L02045984:
    bl .L0203f074
.L02045988:
    mov r0, r6
.L0204598c:
    mov r1, r7
.L02045990:
    bl .L0203f074
.L02045994:
    mov r0, r7
.L02045998:
    mov r1, r6
.L0204599c:
    bl .L0203f074
.L020459a0:
    mov r1, r4
.L020459a4:
    mov r0, r6
.L020459a8:
    bl .L0203f074
.L020459ac:
    mov r0, r4
.L020459b0:
    mov r1, r6
.L020459b4:
    bl .L0203f074
.L020459b8:
    mov r1, r5
.L020459bc:
    mov r0, r6
.L020459c0:
    bl .L0203f074
.L020459c4:
    mov r0, r5
.L020459c8:
    mov r1, r6
.L020459cc:
    bl .L0203f074
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
    bl reconstructed_external_arm_0209787c
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
    bl .L02045650
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
    bl .L02044568
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
    bl reconstructed_external_arm_02097804
.L02045c04:
    b .L02045bb8
.L02045c08:
    mov r0, #4
.L02045c0c:
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_02097894
.L02045ca4:
    mov r1, r5
.L02045ca8:
    mov r2, r4
.L02045cac:
    mov r3, sl
.L02045cb0:
    mov r6, r0
.L02045cb4:
    bl .L0203f208
.L02045cb8:
    mov r0, r7
.L02045cbc:
    bl reconstructed_external_arm_02097888
.L02045cc0:
    cmp r4, #0
.L02045cc4:
    beq .L02045cd0
.L02045cc8:
    mov r0, r4
.L02045ccc:
    bl reconstructed_external_arm_02097888
.L02045cd0:
    cmp r5, #0
.L02045cd4:
    beq .L02045ce0
.L02045cd8:
    mov r0, r5
.L02045cdc:
    bl reconstructed_external_arm_02097888
.L02045ce0:
    ldr r3, [sp, #16]
.L02045ce4:
    cmp r3, #0
.L02045ce8:
    beq .L02045cf4
.L02045cec:
    mov r0, r3
.L02045cf0:
    bl reconstructed_external_arm_02097888
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
    bl reconstructed_external_arm_02083618
.L02045d48:
    mov r1, #931135488
.L02045d4c:
    bl reconstructed_external_arm_020836f4
.L02045d50:
    mov r1, #0
.L02045d54:
    mov r4, r0
.L02045d58:
    bl reconstructed_external_arm_02083a84
.L02045d5c:
    cmp r0, #0
.L02045d60:
    bne .L02045dc4
.L02045d64:
    mov r0, r4
.L02045d68:
    bl reconstructed_external_arm_02082c68
.L02045d6c:
    ldr r2, [pc, #520]
.L02045d70:
    ldr r3, [pc, #520]
.L02045d74:
    bl reconstructed_external_arm_02083298
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
    bl .L0203f074
.L02045de4:
    ldr r0, [r4, #8]
.L02045de8:
    ldr r1, [sp, #44]
.L02045dec:
    bl .L0203f074
.L02045df0:
    ldr r0, [r4, #8]
.L02045df4:
    mov r1, sl
.L02045df8:
    bl .L0203efb8
.L02045dfc:
    mov r1, r6
.L02045e00:
    mov r0, sl
.L02045e04:
    add r6, r6, #1
.L02045e08:
    bl .L0203ef24
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
    bl reconstructed_external_arm_02097804
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
    bl reconstructed_external_arm_0209787c
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
    bl reconstructed_external_arm_0209787c
.L02045e7c:
    mov r4, r0
.L02045e80:
    b .L02045c60
.L02045e84:
    mov r0, r4
.L02045e88:
    ldr r1, [pc, #256]
.L02045e8c:
    bl reconstructed_external_arm_02083a9c
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
    .long 0x020c2f1c  /* literal data */
.L02045f74:
    .long 0x020c38e8  /* literal data */
.L02045f78:
    .long 0x000005d9  /* literal data */
.L02045f7c:
    .long 0x9999999a  /* literal data */
.L02045f80:
    .long 0x3fb99999  /* literal data */
.L02045f84:
    .long 0x0209390c  /* literal data */
.L02045f88:
    .long 0x000005b9  /* literal data */
.L02045f8c:
    .long 0x020c3af4  /* literal data */
.L02045f90:
    .long 0x43340000  /* literal data */
.L02045f94:
    .long 0x04000200  /* literal data */

/* b2Triangle-compilation-unit at 0x02045f98, 2708 bytes, ARM. */
.section .reconstructed.fn05,"ax",%progbits
.align 2
.arm
.global reconstructed_05_b2Triangle_compilation_unit
reconstructed_05_b2Triangle_compilation_unit:
.L02045f98:
    stmdb sp!, {r4, lr}
.L02045f9c:
    mov r4, r0
.L02045fa0:
    ldr r0, [r0]
.L02045fa4:
    cmp r0, #0
.L02045fa8:
    beq .L02045fb0
.L02045fac:
    bl reconstructed_external_arm_02097888
.L02045fb0:
    ldr r0, [r4, #4]
.L02045fb4:
    cmp r0, #0
.L02045fb8:
    beq .L02045fc0
.L02045fbc:
    bl reconstructed_external_arm_02097888
.L02045fc0:
    mov r0, r4
.L02045fc4:
    ldmia sp!, {r4, pc}
.L02045fc8:
    stmdb sp!, {r4, lr}
.L02045fcc:
    mov r4, r0
.L02045fd0:
    ldr r0, [r0]
.L02045fd4:
    cmp r0, #0
.L02045fd8:
    beq .L02045fe0
.L02045fdc:
    bl reconstructed_external_arm_02097888
.L02045fe0:
    ldr r0, [r4, #4]
.L02045fe4:
    cmp r0, #0
.L02045fe8:
    beq .L02045ff0
.L02045fec:
    bl reconstructed_external_arm_02097888
.L02045ff0:
    mov r0, r4
.L02045ff4:
    ldmia sp!, {r4, pc}
.L02045ff8:
    stmdb sp!, {r4, lr}
.L02045ffc:
    ldr r4, [r0, #4]
.L02046000:
    ldr lr, [r1, #4]
.L02046004:
    ldr r0, [r0]
.L02046008:
    ldr r1, [r1]
.L0204600c:
    mov ip, #0
.L02046010:
    ldr r3, [ip, r1]
.L02046014:
    str r3, [ip, r0]
.L02046018:
    ldr r2, [ip, lr]
.L0204601c:
    str r2, [ip, r4]
.L02046020:
    add ip, ip, #4
.L02046024:
    cmp ip, #12
.L02046028:
    bne .L02046010
.L0204602c:
    ldmia sp!, {r4, pc}
.L02046030:
    stmdb sp!, {r4, r5, lr}
.L02046034:
    mov r5, r0
.L02046038:
    sub sp, sp, #4
.L0204603c:
    mov r0, #12
.L02046040:
    bl reconstructed_external_arm_0209787c
.L02046044:
    mov r4, #0
.L02046048:
    mov r3, r0
.L0204604c:
    str r4, [r3], #4
.L02046050:
    str r0, [r5]
.L02046054:
    str r4, [r0, #4]
.L02046058:
    str r4, [r3, #4]
.L0204605c:
    mov r0, #12
.L02046060:
    bl reconstructed_external_arm_0209787c
.L02046064:
    mov r3, r0
.L02046068:
    str r4, [r3], #4
.L0204606c:
    str r0, [r5, #4]
.L02046070:
    str r4, [r0, #4]
.L02046074:
    mov r0, r5
.L02046078:
    str r4, [r3, #4]
.L0204607c:
    add sp, sp, #4
.L02046080:
    ldmia sp!, {r4, r5, pc}
.L02046084:
    stmdb sp!, {r4, r5, lr}
.L02046088:
    mov r5, r0
.L0204608c:
    sub sp, sp, #4
.L02046090:
    mov r0, #12
.L02046094:
    bl reconstructed_external_arm_0209787c
.L02046098:
    mov r4, #0
.L0204609c:
    mov r3, r0
.L020460a0:
    str r4, [r3], #4
.L020460a4:
    str r0, [r5]
.L020460a8:
    str r4, [r0, #4]
.L020460ac:
    str r4, [r3, #4]
.L020460b0:
    mov r0, #12
.L020460b4:
    bl reconstructed_external_arm_0209787c
.L020460b8:
    mov r3, r0
.L020460bc:
    str r4, [r3], #4
.L020460c0:
    str r0, [r5, #4]
.L020460c4:
    str r4, [r0, #4]
.L020460c8:
    mov r0, r5
.L020460cc:
    str r4, [r3, #4]
.L020460d0:
    add sp, sp, #4
.L020460d4:
    ldmia sp!, {r4, r5, pc}
.L020460d8:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020460dc:
    mov r7, r0
.L020460e0:
    sub sp, sp, #4
.L020460e4:
    mov r0, #12
.L020460e8:
    mov sl, r2
.L020460ec:
    mov r5, r1
.L020460f0:
    mov r8, r3
.L020460f4:
    ldr r9, [sp, #44]
.L020460f8:
    ldr fp, [sp, #48]
.L020460fc:
    bl reconstructed_external_arm_0209787c
.L02046100:
    mov r4, #0
.L02046104:
    mov r3, r0
.L02046108:
    str r4, [r3], #4
.L0204610c:
    str r0, [r7]
.L02046110:
    str r4, [r0, #4]
.L02046114:
    str r4, [r3, #4]
.L02046118:
    mov r0, #12
.L0204611c:
    bl reconstructed_external_arm_0209787c
.L02046120:
    mov r3, r0
.L02046124:
    str r4, [r3], #4
.L02046128:
    str r4, [r0, #4]
.L0204612c:
    str r4, [r3, #4]
.L02046130:
    ldr r3, [sp, #40]
.L02046134:
    ldr r1, [sl]
.L02046138:
    ldr r5, [r5]
.L0204613c:
    ldr ip, [r3]
.L02046140:
    ldr r2, [r8]
.L02046144:
    ldr lr, [r9]
.L02046148:
    ldr r3, [fp]
.L0204614c:
    rsb ip, r1, ip
.L02046150:
    rsb r2, r5, r2
.L02046154:
    rsb r3, r1, r3
.L02046158:
    rsb lr, r5, lr
.L0204615c:
    mov r6, r0
.L02046160:
    smull r0, r1, r2, r3
.L02046164:
    smull r2, r3, lr, ip
.L02046168:
    mov r0, r0, lsr #16
.L0204616c:
    mov r2, r2, lsr #16
.L02046170:
    orr r0, r0, r1, lsl #16
.L02046174:
    orr r2, r2, r3, lsl #16
.L02046178:
    rsb r0, r2, r0
.L0204617c:
    cmp r0, r4
.L02046180:
    str r6, [r7, #4]
.L02046184:
    ble .L020461c8
.L02046188:
    ldr r1, [r7]
.L0204618c:
    str r5, [r1]
.L02046190:
    ldr r3, [r8]
.L02046194:
    str r3, [r1, #4]
.L02046198:
    ldr r2, [r9]
.L0204619c:
    str r2, [r1, #8]
.L020461a0:
    ldr r3, [sl]
.L020461a4:
    str r3, [r6]
.L020461a8:
    ldr r3, [sp, #40]
.L020461ac:
    ldr r2, [r3]
.L020461b0:
    str r2, [r6, #4]
.L020461b4:
    ldr r3, [fp]
.L020461b8:
    str r3, [r6, #8]
.L020461bc:
    mov r0, r7
.L020461c0:
    add sp, sp, #4
.L020461c4:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L020461c8:
    ldr r1, [r7]
.L020461cc:
    str r5, [r1]
.L020461d0:
    ldr r3, [r9]
.L020461d4:
    str r3, [r1, #4]
.L020461d8:
    ldr r2, [r8]
.L020461dc:
    str r2, [r1, #8]
.L020461e0:
    ldr r3, [sl]
.L020461e4:
    str r3, [r6]
.L020461e8:
    ldr r2, [fp]
.L020461ec:
    str r2, [r6, #4]
.L020461f0:
    ldr r2, [sp, #40]
.L020461f4:
    ldr r3, [r2]
.L020461f8:
    str r3, [r6, #8]
.L020461fc:
    b .L020461bc
.L02046200:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L02046204:
    mov r7, r0
.L02046208:
    sub sp, sp, #4
.L0204620c:
    mov r0, #12
.L02046210:
    mov sl, r2
.L02046214:
    mov r5, r1
.L02046218:
    mov r8, r3
.L0204621c:
    ldr r9, [sp, #44]
.L02046220:
    ldr fp, [sp, #48]
.L02046224:
    bl reconstructed_external_arm_0209787c
.L02046228:
    mov r4, #0
.L0204622c:
    mov r3, r0
.L02046230:
    str r4, [r3], #4
.L02046234:
    str r0, [r7]
.L02046238:
    str r4, [r0, #4]
.L0204623c:
    str r4, [r3, #4]
.L02046240:
    mov r0, #12
.L02046244:
    bl reconstructed_external_arm_0209787c
.L02046248:
    mov r3, r0
.L0204624c:
    str r4, [r3], #4
.L02046250:
    str r4, [r0, #4]
.L02046254:
    str r4, [r3, #4]
.L02046258:
    ldr r3, [sp, #40]
.L0204625c:
    ldr r1, [sl]
.L02046260:
    ldr r5, [r5]
.L02046264:
    ldr ip, [r3]
.L02046268:
    ldr r2, [r8]
.L0204626c:
    ldr lr, [r9]
.L02046270:
    ldr r3, [fp]
.L02046274:
    rsb ip, r1, ip
.L02046278:
    rsb r2, r5, r2
.L0204627c:
    rsb r3, r1, r3
.L02046280:
    rsb lr, r5, lr
.L02046284:
    mov r6, r0
.L02046288:
    smull r0, r1, r2, r3
.L0204628c:
    smull r2, r3, lr, ip
.L02046290:
    mov r0, r0, lsr #16
.L02046294:
    mov r2, r2, lsr #16
.L02046298:
    orr r0, r0, r1, lsl #16
.L0204629c:
    orr r2, r2, r3, lsl #16
.L020462a0:
    rsb r0, r2, r0
.L020462a4:
    cmp r0, r4
.L020462a8:
    str r6, [r7, #4]
.L020462ac:
    ble .L020462f0
.L020462b0:
    ldr r1, [r7]
.L020462b4:
    str r5, [r1]
.L020462b8:
    ldr r3, [r8]
.L020462bc:
    str r3, [r1, #4]
.L020462c0:
    ldr r2, [r9]
.L020462c4:
    str r2, [r1, #8]
.L020462c8:
    ldr r3, [sl]
.L020462cc:
    str r3, [r6]
.L020462d0:
    ldr r3, [sp, #40]
.L020462d4:
    ldr r2, [r3]
.L020462d8:
    str r2, [r6, #4]
.L020462dc:
    ldr r3, [fp]
.L020462e0:
    str r3, [r6, #8]
.L020462e4:
    mov r0, r7
.L020462e8:
    add sp, sp, #4
.L020462ec:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L020462f0:
    ldr r1, [r7]
.L020462f4:
    str r5, [r1]
.L020462f8:
    ldr r3, [r9]
.L020462fc:
    str r3, [r1, #4]
.L02046300:
    ldr r2, [r8]
.L02046304:
    str r2, [r1, #8]
.L02046308:
    ldr r3, [sl]
.L0204630c:
    str r3, [r6]
.L02046310:
    ldr r2, [fp]
.L02046314:
    str r2, [r6, #4]
.L02046318:
    ldr r2, [sp, #40]
.L0204631c:
    ldr r3, [r2]
.L02046320:
    str r3, [r6, #8]
.L02046324:
    b .L020462e4
.L02046328:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0204632c:
    ldr r1, [r1]
.L02046330:
    sub sp, sp, #196
.L02046334:
    ldr ip, [r0]
.L02046338:
    str r1, [sp, #44]
.L0204633c:
    ldr r3, [sp, #44]
.L02046340:
    ldr r1, [ip]
.L02046344:
    cmp r1, r3
.L02046348:
    str r1, [sp, #48]
.L0204634c:
    ble .L02046360
.L02046350:
    ldr r3, [ip, #4]
.L02046354:
    ldr r4, [sp, #44]
.L02046358:
    cmp r4, r3
.L0204635c:
    blt .L020468f4
.L02046360:
    ldr r5, [sp, #48]
.L02046364:
    ldr r6, [sp, #44]
.L02046368:
    cmp r5, r6
.L0204636c:
    bge .L02046394
.L02046370:
    ldr r3, [ip, #4]
.L02046374:
    cmp r6, r3
.L02046378:
    ble .L02046394
.L0204637c:
    ldr r3, [ip, #8]
.L02046380:
    cmp r6, r3
.L02046384:
    ble .L02046394
.L02046388:
    mov r0, #0
.L0204638c:
    add sp, sp, #196
.L02046390:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02046394:
    ldr r0, [r0, #4]
.L02046398:
    ldr r2, [r2]
.L0204639c:
    ldr r7, [r0]
.L020463a0:
    str r2, [sp, #40]
.L020463a4:
    cmp r7, r2
.L020463a8:
    str r7, [sp, #52]
.L020463ac:
    addle r1, r0, #8
.L020463b0:
    addle r2, r0, #4
.L020463b4:
    bgt .L020468a4
.L020463b8:
    ldr sl, [sp, #52]
.L020463bc:
    ldr fp, [sp, #40]
.L020463c0:
    cmp sl, fp
.L020463c4:
    blt .L020468d4
.L020463c8:
    ldr lr, [r2]
.L020463cc:
    ldr r0, [r1]
.L020463d0:
    ldmib ip, {r2, r3}
.L020463d4:
    ldr ip, [sp, #48]
.L020463d8:
    rsb r1, ip, r3
.L020463dc:
    ldr r3, [sp, #52]
.L020463e0:
    rsb r6, ip, r2
.L020463e4:
    rsb r7, r3, lr
.L020463e8:
    rsb r9, r3, r0
.L020463ec:
    mov r2, r7
.L020463f0:
    mov r3, r2, asr #31
.L020463f4:
    strd r2, [sp, #128]
.L020463f8:
    mov r4, r1
.L020463fc:
    mov r5, r4, asr #31
.L02046400:
    mov sl, r9
.L02046404:
    mov fp, sl, asr #31
.L02046408:
    mov r0, r6
.L0204640c:
    mov r1, r0, asr #31
.L02046410:
    ldr r8, [sp, #132]
.L02046414:
    strd r4, [sp, #104]
.L02046418:
    strd sl, [sp, #112]
.L0204641c:
    strd r0, [sp, #120]
.L02046420:
    ldr r3, [sp, #112]
.L02046424:
    mul r8, r2, r8
.L02046428:
    ldr sl, [sp, #108]
.L0204642c:
    ldr r5, [sp, #132]
.L02046430:
    ldr r7, [sp, #124]
.L02046434:
    mul r5, r3, r5
.L02046438:
    mul r7, r0, r7
.L0204643c:
    mul sl, r4, sl
.L02046440:
    ldr r4, [sp, #104]
.L02046444:
    str r8, [sp, #24]
.L02046448:
    mul r1, r4, r1
.L0204644c:
    ldr r8, [sp, #128]
.L02046450:
    ldr fp, [sp, #116]
.L02046454:
    str r7, [sp, #28]
.L02046458:
    str r5, [sp, #32]
.L0204645c:
    umull r6, r7, r4, r4
.L02046460:
    mul fp, r3, fp
.L02046464:
    umull r4, r5, r3, r3
.L02046468:
    umull r2, r3, r8, r8
.L0204646c:
    ldr lr, [sp, #120]
.L02046470:
    str r1, [sp, #36]
.L02046474:
    mov ip, lr
.L02046478:
    umull r0, r1, lr, lr
.L0204647c:
    ldr r9, [sp, #108]
.L02046480:
    ldr lr, [sp, #36]
.L02046484:
    strd r2, [sp, #16]
.L02046488:
    mov r3, r8
.L0204648c:
    ldr r2, [sp, #116]
.L02046490:
    ldr r8, [sp, #32]
.L02046494:
    mla r9, ip, r9, lr
.L02046498:
    mla r2, r3, r2, r8
.L0204649c:
    ldr ip, [sp, #24]
.L020464a0:
    str r9, [sp, #100]
.L020464a4:
    ldr r9, [sp, #28]
.L020464a8:
    ldr lr, [sp, #104]
.L020464ac:
    str r2, [sp, #96]
.L020464b0:
    mov ip, ip, lsl #1
.L020464b4:
    ldr r2, [sp, #120]
.L020464b8:
    mov r9, r9, lsl #1
.L020464bc:
    str ip, [sp, #24]
.L020464c0:
    ldr ip, [sp, #112]
.L020464c4:
    str r9, [sp, #28]
.L020464c8:
    umull r8, r9, lr, r2
.L020464cc:
    mov lr, r3
.L020464d0:
    umull r2, r3, ip, lr
.L020464d4:
    mov sl, sl, lsl #1
.L020464d8:
    mov fp, fp, lsl #1
.L020464dc:
    strd r2, [sp, #88]
.L020464e0:
    add r7, sl, r7
.L020464e4:
    ldr r2, [sp, #28]
.L020464e8:
    add r5, fp, r5
.L020464ec:
    ldr sl, [sp, #20]
.L020464f0:
    ldr r3, [sp, #24]
.L020464f4:
    ldr fp, [sp, #16]
.L020464f8:
    add sl, r3, sl
.L020464fc:
    add r1, r2, r1
.L02046500:
    mov r2, fp, lsr #16
.L02046504:
    orr r2, r2, sl, lsl #16
.L02046508:
    ldr fp, [sp, #48]
.L0204650c:
    str sl, [sp, #20]
.L02046510:
    mov r6, r6, lsr #16
.L02046514:
    ldr sl, [sp, #44]
.L02046518:
    mov r4, r4, lsr #16
.L0204651c:
    mov r0, r0, lsr #16
.L02046520:
    orr r6, r6, r7, lsl #16
.L02046524:
    orr r4, r4, r5, lsl #16
.L02046528:
    orr r0, r0, r1, lsl #16
.L0204652c:
    rsb ip, fp, sl
.L02046530:
    add r0, r0, r2
.L02046534:
    ldr sl, [sp, #40]
.L02046538:
    ldr fp, [sp, #52]
.L0204653c:
    add r6, r6, r4
.L02046540:
    mov r4, r6
.L02046544:
    mov r5, r4, asr #31
.L02046548:
    mov r6, r0
.L0204654c:
    mov r7, r6, asr #31
.L02046550:
    strd r6, [sp, #160]
.L02046554:
    rsb lr, fp, sl
.L02046558:
    ldr r0, [sp, #88]
.L0204655c:
    ldr r6, [sp, #120]
.L02046560:
    mov sl, ip
.L02046564:
    mov fp, sl, asr #31
.L02046568:
    mov r2, lr
.L0204656c:
    mov r3, r2, asr #31
.L02046570:
    strd r4, [sp, #168]
.L02046574:
    ldr lr, [sp, #92]
.L02046578:
    ldr ip, [sp, #96]
.L0204657c:
    strd r2, [sp, #152]
.L02046580:
    ldr r7, [sp, #100]
.L02046584:
    mul r6, fp, r6
.L02046588:
    ldr r4, [sp, #168]
.L0204658c:
    mov r2, r0, lsr #16
.L02046590:
    ldr r0, [sp, #164]
.L02046594:
    add lr, ip, lr
.L02046598:
    add r9, r7, r9
.L0204659c:
    ldr ip, [sp, #128]
.L020465a0:
    orr r2, r2, lr, lsl #16
.L020465a4:
    ldr r5, [sp, #112]
.L020465a8:
    mul r0, r4, r0
.L020465ac:
    str lr, [sp, #92]
.L020465b0:
    ldr r1, [sp, #104]
.L020465b4:
    ldr lr, [sp, #156]
.L020465b8:
    ldr r7, [sp, #156]
.L020465bc:
    mov r8, r8, lsr #16
.L020465c0:
    mul r1, fp, r1
.L020465c4:
    mul lr, r5, lr
.L020465c8:
    mul r7, ip, r7
.L020465cc:
    orr r8, r8, r9, lsl #16
.L020465d0:
    str r6, [sp, #8]
.L020465d4:
    mov r6, ip
.L020465d8:
    ldr ip, [sp, #152]
.L020465dc:
    add r8, r8, r2
.L020465e0:
    mov r2, r8
.L020465e4:
    mov r3, r2, asr #31
.L020465e8:
    str r0, [sp, #72]
.L020465ec:
    umull r8, r9, r6, ip
.L020465f0:
    ldr r0, [sp, #108]
.L020465f4:
    ldr r6, [sp, #116]
.L020465f8:
    mla r0, sl, r0, r1
.L020465fc:
    mla r6, ip, r6, lr
.L02046600:
    strd r2, [sp, #176]
.L02046604:
    mul r3, r2, r3
.L02046608:
    ldr r1, [sp, #104]
.L0204660c:
    str r3, [sp, #28]
.L02046610:
    str r0, [sp, #84]
.L02046614:
    ldr r3, [sp, #120]
.L02046618:
    str r6, [sp, #80]
.L0204661c:
    ldr lr, [sp, #112]
.L02046620:
    umull r4, r5, r3, sl
.L02046624:
    umull r2, r3, r1, sl
.L02046628:
    umull r0, r1, lr, ip
.L0204662c:
    ldr lr, [sp, #8]
.L02046630:
    ldr ip, [sp, #124]
.L02046634:
    ldr r6, [sp, #132]
.L02046638:
    mla ip, sl, ip, lr
.L0204663c:
    ldr sl, [sp, #152]
.L02046640:
    str ip, [sp, #12]
.L02046644:
    mla r6, sl, r6, r7
.L02046648:
    ldr ip, [sp, #160]
.L0204664c:
    ldr lr, [sp, #72]
.L02046650:
    ldr fp, [sp, #172]
.L02046654:
    ldr sl, [sp, #168]
.L02046658:
    mla fp, ip, fp, lr
.L0204665c:
    str r6, [sp, #4]
.L02046660:
    umull r6, r7, sl, ip
.L02046664:
    ldr ip, [sp, #176]
.L02046668:
    str fp, [sp, #76]
.L0204666c:
    umull sl, fp, ip, ip
.L02046670:
    strd sl, [sp, #64]
.L02046674:
    ldr sl, [sp, #28]
.L02046678:
    ldr fp, [sp, #84]
.L0204667c:
    mov sl, sl, lsl #1
.L02046680:
    add r3, fp, r3
.L02046684:
    str sl, [sp, #28]
.L02046688:
    ldr fp, [sp, #4]
.L0204668c:
    ldr sl, [sp, #12]
.L02046690:
    ldr ip, [sp, #80]
.L02046694:
    add r5, sl, r5
.L02046698:
    add r9, fp, r9
.L0204669c:
    ldr sl, [sp, #28]
.L020466a0:
    ldr fp, [sp, #68]
.L020466a4:
    add r1, ip, r1
.L020466a8:
    ldr ip, [sp, #76]
.L020466ac:
    add fp, sl, fp
.L020466b0:
    ldr lr, [pc, #604]
.L020466b4:
    mov sl, r2, lsr #16
.L020466b8:
    add r7, ip, r7
.L020466bc:
    mov r2, r3, asr #16
.L020466c0:
    str fp, [sp, #68]
.L020466c4:
    mov ip, #1
.L020466c8:
    orr fp, sl, r3, lsl #16
.L020466cc:
    ldr r3, [sp, #64]
.L020466d0:
    mov sl, r4, lsr #16
.L020466d4:
    strh ip, [lr, #128]
.L020466d8:
    mov r4, r8, lsr #16
.L020466dc:
    mov ip, r0, lsr #16
.L020466e0:
    ldr r8, [sp, #68]
.L020466e4:
    mov r0, r1, asr #16
.L020466e8:
    str r2, [sp, #140]
.L020466ec:
    str r0, [sp, #148]
.L020466f0:
    orr r2, ip, r1, lsl #16
.L020466f4:
    mov r0, r6, lsr #16
.L020466f8:
    mov r6, r3, lsr #16
.L020466fc:
    str fp, [sp, #136]
.L02046700:
    str r2, [sp, #144]
.L02046704:
    orr sl, sl, r5, lsl #16
.L02046708:
    orr r4, r4, r9, lsl #16
.L0204670c:
    orr r0, r0, r7, lsl #16
.L02046710:
    orr r6, r6, r8, lsl #16
.L02046714:
    ldrh r3, [lr, #128]
.L02046718:
    tst r3, #32768
.L0204671c:
    bne .L02046714
.L02046720:
    rsb r2, r6, r0
.L02046724:
    mov r7, #1
.L02046728:
    mov r6, #0
.L0204672c:
    mov r3, #67108864
.L02046730:
    ldr r1, [pc, #476]
.L02046734:
    strd r6, [lr, #144]
.L02046738:
    str r2, [r3, #664]
.L0204673c:
    ldrh r3, [r1, #128]
.L02046740:
    tst r3, #32768
.L02046744:
    bne .L0204673c
.L02046748:
    ldr r7, [sp, #136]
.L0204674c:
    ldr r8, [sp, #144]
.L02046750:
    ldr r1, [sp, #164]
.L02046754:
    add r0, r7, r8
.L02046758:
    add r8, sl, r4
.L0204675c:
    mov sl, r0
.L02046760:
    mov fp, sl, asr #31
.L02046764:
    strd sl, [sp, #184]
.L02046768:
    ldr r3, [sp, #188]
.L0204676c:
    ldr fp, [sp, #160]
.L02046770:
    ldr r2, [sp, #184]
.L02046774:
    mul r3, fp, r3
.L02046778:
    ldr ip, [sp, #176]
.L0204677c:
    mla r1, r2, r1, r3
.L02046780:
    ldr lr, [sp, #168]
.L02046784:
    mov r9, r8, asr #31
.L02046788:
    mul ip, r9, ip
.L0204678c:
    mul lr, r9, lr
.L02046790:
    ldr r0, [sp, #176]
.L02046794:
    ldr sl, [sp, #188]
.L02046798:
    str r1, [sp, #60]
.L0204679c:
    mul sl, r0, sl
.L020467a0:
    umull r0, r1, fp, r2
.L020467a4:
    ldr fp, [sp, #180]
.L020467a8:
    str lr, [sp, #24]
.L020467ac:
    mla fp, r8, fp, ip
.L020467b0:
    ldr r5, [sp, #176]
.L020467b4:
    ldr r6, [sp, #168]
.L020467b8:
    ldr ip, [sp, #176]
.L020467bc:
    ldr lr, [sp, #184]
.L020467c0:
    umull r2, r3, r5, r8
.L020467c4:
    umull r4, r5, r6, r8
.L020467c8:
    umull r6, r7, ip, lr
.L020467cc:
    ldr lr, [sp, #24]
.L020467d0:
    ldr ip, [sp, #172]
.L020467d4:
    ldr r9, [sp, #60]
.L020467d8:
    mla ip, r8, ip, lr
.L020467dc:
    ldr r8, [sp, #184]
.L020467e0:
    ldr lr, [sp, #180]
.L020467e4:
    str ip, [sp, #56]
.L020467e8:
    mla lr, r8, lr, sl
.L020467ec:
    add r1, r9, r1
.L020467f0:
    mov ip, #67108864
.L020467f4:
    add r3, fp, r3
.L020467f8:
    mov r0, r0, lsr #16
.L020467fc:
    mov r2, r2, lsr #16
.L02046800:
    ldr sl, [sp, #56]
.L02046804:
    ldr r8, [ip, #672]
.L02046808:
    orr r0, r0, r1, lsl #16
.L0204680c:
    orr r2, r2, r3, lsl #16
.L02046810:
    add r7, lr, r7
.L02046814:
    rsb r0, r2, r0
.L02046818:
    add r5, sl, r5
.L0204681c:
    mov r4, r4, lsr #16
.L02046820:
    mov r6, r6, lsr #16
.L02046824:
    mov r9, r8, asr #31
.L02046828:
    mov r2, r0
.L0204682c:
    mov r3, r2, asr #31
.L02046830:
    orr r6, r6, r7, lsl #16
.L02046834:
    orr r4, r4, r5, lsl #16
.L02046838:
    rsb r4, r6, r4
.L0204683c:
    mul ip, r2, r9
.L02046840:
    mov r0, r4
.L02046844:
    mov r1, r0, asr #31
.L02046848:
    mul lr, r8, r1
.L0204684c:
    umull r4, r5, r2, r8
.L02046850:
    mla r6, r8, r3, ip
.L02046854:
    mov r2, r4
.L02046858:
    mov r3, r5
.L0204685c:
    mla ip, r0, r9, lr
.L02046860:
    umull r4, r5, r8, r0
.L02046864:
    add r3, r6, r3
.L02046868:
    mov r2, r2, lsr #16
.L0204686c:
    orr r2, r2, r3, lsl #16
.L02046870:
    add r5, ip, r5
.L02046874:
    mov r0, r4, lsr #16
.L02046878:
    subs r3, r2, #0
.L0204687c:
    mov r7, r7, asr #16
.L02046880:
    orr r0, r0, r5, lsl #16
.L02046884:
    ble .L02046388
.L02046888:
    subs r2, r0, #0
.L0204688c:
    ble .L02046388
.L02046890:
    add r3, r3, r2
.L02046894:
    cmp r3, #65536
.L02046898:
    movge r0, #0
.L0204689c:
    movlt r0, #1
.L020468a0:
    b .L0204638c
.L020468a4:
    ldr r3, [r0, #4]
.L020468a8:
    ldr r8, [sp, #40]
.L020468ac:
    add r2, r0, #4
.L020468b0:
    cmp r8, r3
.L020468b4:
    addge r1, r0, #8
.L020468b8:
    bge .L020463b8
.L020468bc:
    ldr r3, [r0, #8]
.L020468c0:
    ldr r9, [sp, #40]
.L020468c4:
    add r1, r0, #8
.L020468c8:
    cmp r9, r3
.L020468cc:
    blt .L02046388
.L020468d0:
    b .L020463b8
.L020468d4:
    ldr lr, [r2]
.L020468d8:
    cmp fp, lr
.L020468dc:
    ldrle r0, [r1]
.L020468e0:
    ble .L020463d0
.L020468e4:
    ldr r0, [r1]
.L020468e8:
    cmp fp, r0
.L020468ec:
    bgt .L02046388
.L020468f0:
    b .L020463d0
.L020468f4:
    ldr r3, [ip, #8]
.L020468f8:
    cmp r4, r3
.L020468fc:
    blt .L02046388
.L02046900:
    ldr r5, [sp, #48]
.L02046904:
    ldr r6, [sp, #44]
.L02046908:
    cmp r5, r6
.L0204690c:
    bge .L02046394
.L02046910:
    b .L02046370
.L02046914:
    .long 0x04000200  /* literal data */
.L02046918:
    .long 0xe3500001  /* literal data */
.L0204691c:
    .long 0x112fff1e  /* literal data */
.L02046920:
    .long 0xe59f30a0  /* literal data */
.L02046924:
    .long 0xe59f00a0  /* literal data */
.L02046928:
    .long 0xe1510003  /* literal data */
.L0204692c:
    .long 0x112fff1e  /* literal data */
.L02046930:
    .long 0xe59f2098  /* literal data */
.L02046934:
    .long 0xe59f3098  /* literal data */
.L02046938:
    .long 0xe59f1098  /* literal data */
.L0204693c:
    .long 0xe5832000  /* literal data */
.L02046940:
    .long 0xe59f3094  /* literal data */
.L02046944:
    .long 0xe59f2094  /* literal data */
.L02046948:
    .long 0xe5831000  /* literal data */
.L0204694c:
    .long 0xe59f3090  /* literal data */
.L02046950:
    .long 0xe59f1090  /* literal data */
.L02046954:
    .long 0xe5832000  /* literal data */
.L02046958:
    .long 0xe59f308c  /* literal data */
.L0204695c:
    .long 0xe3a02801  /* literal data */
.L02046960:
    .long 0xe5831000  /* literal data */
.L02046964:
    .long 0xe59f3084  /* literal data */
.L02046968:
    .long 0xe59f1084  /* literal data */
.L0204696c:
    .long 0xe5832000  /* literal data */
.L02046970:
    .long 0xe59f3080  /* literal data */
.L02046974:
    .long 0xe2822863  /* literal data */
.L02046978:
    .long 0xe5831000  /* literal data */
.L0204697c:
    .long 0xe59f3078  /* literal data */
.L02046980:
    .long 0xe3a018fa  /* literal data */
.L02046984:
    .long 0xe5832000  /* literal data */
.L02046988:
    .long 0xe59f3070  /* literal data */
.L0204698c:
    .long 0xe59f2070  /* literal data */
.L02046990:
    .long 0xe5831000  /* literal data */
.L02046994:
    .long 0xe59f306c  /* literal data */
.L02046998:
    .long 0xe3a01902  /* literal data */
.L0204699c:
    .long 0xe5831000  /* literal data */
.L020469a0:
    .long 0xe5820000  /* literal data */
.L020469a4:
    .long 0xe59f3060  /* literal data */
.L020469a8:
    .long 0xe59f2060  /* literal data */
.L020469ac:
    .long 0xe3a01fb6  /* literal data */
.L020469b0:
    .long 0xe5832000  /* literal data */
.L020469b4:
    .long 0xe59f3058  /* literal data */
.L020469b8:
    .long 0xe59f2058  /* literal data */
.L020469bc:
    .long 0xe5831000  /* literal data */
.L020469c0:
    .long 0xe5820000  /* literal data */
.L020469c4:
    .long 0xe12fff1e  /* literal data */
.L020469c8:
    .long 0x0000ffff  /* literal data */
.L020469cc:
    .long 0x00003333  /* literal data */
.L020469d0:
    .long 0x0003243f  /* literal data */
.L020469d4:
    .long 0x020cae94  /* literal data */
.L020469d8:
    .long 0x00000147  /* literal data */
.L020469dc:
    .long 0x020cae98  /* literal data */
.L020469e0:
    .long 0x000008ef  /* literal data */
.L020469e4:
    .long 0x020cae9c  /* literal data */
.L020469e8:
    .long 0x00000a38  /* literal data */
.L020469ec:
    .long 0x020caea0  /* literal data */
.L020469f0:
    .long 0x020caea4  /* literal data */
.L020469f4:
    .long 0x000023bc  /* literal data */
.L020469f8:
    .long 0x020caeac  /* literal data */
.L020469fc:
    .long 0x020caeb0  /* literal data */
.L02046a00:
    .long 0x020caeb4  /* literal data */
.L02046a04:
    .long 0x020caeb8  /* literal data */
.L02046a08:
    .long 0x020caebc  /* literal data */
.L02046a0c:
    .long 0x020caec0  /* literal data */
.L02046a10:
    .long 0x0000028f  /* literal data */
.L02046a14:
    .long 0x020caec4  /* literal data */
.L02046a18:
    .long 0x020caea8  /* literal data */
.L02046a1c:
    .long 0xe59f1004  /* literal data */
.L02046a20:
    .long 0xe3a00001  /* literal data */
.L02046a24:
    .long 0xeaffffbb  /* literal data */
.L02046a28:
    .long 0x0000ffff  /* literal data */

/* b2Island-Solve-region at 0x0204737c, 3444 bytes, ARM. */
.section .reconstructed.fn06,"ax",%progbits
.align 2
.arm
.global reconstructed_06_b2Island_Solve_region
reconstructed_06_b2Island_Solve_region:
.L0204737c:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L02047380:
    sub sp, sp, #252
.L02047384:
    str r0, [sp, #84]
.L02047388:
    ldr r0, [r0, #20]
.L0204738c:
    str r1, [sp, #80]
.L02047390:
    ldrb r1, [sp, #288]
.L02047394:
    cmp r0, #0
.L02047398:
    str r0, [sp, #28]
.L0204739c:
    str r2, [sp, #76]
.L020473a0:
    str r3, [sp, #72]
.L020473a4:
    str r1, [sp, #68]
.L020473a8:
    ble .L020477bc
.L020473ac:
    mov r2, #0
.L020473b0:
    str r2, [sp, #96]
.L020473b4:
    ldr r5, [sp, #84]
.L020473b8:
    ldr r8, [sp, #96]
.L020473bc:
    ldr r3, [r5, #8]
.L020473c0:
    ldr fp, [r3, r8, lsl #2]
.L020473c4:
    ldrh r2, [fp, #2]
.L020473c8:
    cmp r2, #0
.L020473cc:
    beq .L020477a4
.L020473d0:
    add sl, fp, #76
.L020473d4:
    ldr r8, [sl, #4]
.L020473d8:
    ldr r4, [fp, #120]
.L020473dc:
    ldr r6, [fp, #76]
.L020473e0:
    mov r5, r4, asr #31
.L020473e4:
    mov r7, r6, asr #31
.L020473e8:
    mov r9, r8, asr #31
.L020473ec:
    mul ip, r4, r7
.L020473f0:
    mul lr, r4, r9
.L020473f4:
    umull r0, r1, r4, r8
.L020473f8:
    umull r2, r3, r4, r6
.L020473fc:
    str sl, [sp, #88]
.L02047400:
    mla sl, r6, r5, ip
.L02047404:
    mla ip, r8, r5, lr
.L02047408:
    ldr lr, [sp, #76]
.L0204740c:
    ldr r5, [sp, #80]
.L02047410:
    ldmia lr, {r6, r8}
.L02047414:
    add r3, sl, r3
.L02047418:
    add r1, ip, r1
.L0204741c:
    mov r2, r2, lsr #16
.L02047420:
    mov r0, r0, lsr #16
.L02047424:
    ldr r4, [r5]
.L02047428:
    orr r2, r2, r3, lsl #16
.L0204742c:
    orr r0, r0, r1, lsl #16
.L02047430:
    add r6, r6, r2
.L02047434:
    add r8, r8, r0
.L02047438:
    mov r5, r4, asr #31
.L0204743c:
    mov r9, r8, asr #31
.L02047440:
    mov r7, r6, asr #31
.L02047444:
    mul lr, r4, r9
.L02047448:
    mul ip, r4, r7
.L0204744c:
    umull r0, r1, r4, r8
.L02047450:
    umull r2, r3, r4, r6
.L02047454:
    mla sl, r6, r5, ip
.L02047458:
    mla ip, r8, r5, lr
.L0204745c:
    ldr r6, [fp, #64]
.L02047460:
    ldr lr, [fp, #68]
.L02047464:
    add r3, sl, r3
.L02047468:
    add r1, ip, r1
.L0204746c:
    mov r2, r2, lsr #16
.L02047470:
    mov r0, r0, lsr #16
.L02047474:
    orr r2, r2, r3, lsl #16
.L02047478:
    orr r0, r0, r1, lsl #16
.L0204747c:
    ldr r8, [sp, #80]
.L02047480:
    add r6, r6, r2
.L02047484:
    add lr, lr, r0
.L02047488:
    str r6, [fp, #64]
.L0204748c:
    str lr, [fp, #68]
.L02047490:
    ldr r3, [r8]
.L02047494:
    ldr r2, [fp, #128]
.L02047498:
    ldr lr, [fp, #84]
.L0204749c:
    smull r0, r1, r2, r3
.L020474a0:
    mov r0, r0, lsr #16
.L020474a4:
    orr r0, r0, r1, lsl #16
.L020474a8:
    smull r2, r3, lr, r0
.L020474ac:
    ldr ip, [fp, #72]
.L020474b0:
    mov r2, r2, lsr #16
.L020474b4:
    orr r2, r2, r3, lsl #16
.L020474b8:
    add ip, ip, r2
.L020474bc:
    ldr sl, [sp, #88]
.L020474c0:
    str ip, [fp, #72]
.L020474c4:
    mov ip, #0
.L020474c8:
    str ip, [sl, #4]
.L020474cc:
    str ip, [fp, #76]
.L020474d0:
    str ip, [fp, #84]
.L020474d4:
    ldr r1, [r8]
.L020474d8:
    ldr r0, [fp, #132]
.L020474dc:
    str ip, [sp, #184]
.L020474e0:
    smull r2, r3, r0, r1
.L020474e4:
    mov r2, r2, lsr #16
.L020474e8:
    orr r2, r2, r3, lsl #16
.L020474ec:
    rsb r2, r2, #65536
.L020474f0:
    cmp r2, #65536
.L020474f4:
    mov r1, #65536
.L020474f8:
    str r2, [sp, #180]
.L020474fc:
    str r1, [sp, #188]
.L02047500:
    addlt r2, sp, #180
.L02047504:
    addge r2, sp, #188
.L02047508:
    ldr r2, [r2]
.L0204750c:
    ldr r3, [sp, #184]
.L02047510:
    add r9, fp, #64
.L02047514:
    cmp r2, r3
.L02047518:
    str r2, [sp, #220]
.L0204751c:
    add r0, fp, #72
.L02047520:
    addlt r4, sp, #184
.L02047524:
    addge r4, sp, #220
.L02047528:
    str r0, [sp, #104]
.L0204752c:
    ldr r4, [r4]
.L02047530:
    ldr r0, [r9]
.L02047534:
    mov r5, r4, asr #31
.L02047538:
    mov r1, r0, asr #31
.L0204753c:
    add lr, fp, #68
.L02047540:
    str lr, [sp, #108]
.L02047544:
    mul lr, r0, r5
.L02047548:
    umull r2, r3, r0, r4
.L0204754c:
    mla ip, r4, r1, lr
.L02047550:
    mov r2, r2, lsr #16
.L02047554:
    add r3, ip, r3
.L02047558:
    orr r2, r2, r3, lsl #16
.L0204755c:
    str r2, [r9]
.L02047560:
    ldr r1, [sp, #108]
.L02047564:
    ldr r8, [sp, #80]
.L02047568:
    ldr r0, [r1]
.L0204756c:
    mov sl, #0
.L02047570:
    mov r1, r0, asr #31
.L02047574:
    mul lr, r4, r1
.L02047578:
    umull r2, r3, r4, r0
.L0204757c:
    mla ip, r0, r5, lr
.L02047580:
    mov r2, r2, lsr #16
.L02047584:
    add r3, ip, r3
.L02047588:
    ldr r5, [sp, #108]
.L0204758c:
    orr r2, r2, r3, lsl #16
.L02047590:
    str r2, [r5]
.L02047594:
    ldr r0, [r8]
.L02047598:
    ldr ip, [fp, #136]
.L0204759c:
    mov r1, #65536
.L020475a0:
    smull r2, r3, ip, r0
.L020475a4:
    mov r2, r2, lsr #16
.L020475a8:
    orr r2, r2, r3, lsl #16
.L020475ac:
    rsb r2, r2, r1
.L020475b0:
    cmp r2, r1
.L020475b4:
    str r2, [sp, #192]
.L020475b8:
    str sl, [sp, #196]
.L020475bc:
    str r1, [sp, #200]
.L020475c0:
    addlt r2, sp, #192
.L020475c4:
    addge r2, sp, #200
.L020475c8:
    ldr r2, [r2]
.L020475cc:
    ldr r3, [sp, #196]
.L020475d0:
    ldr ip, [sp, #104]
.L020475d4:
    cmp r2, r3
.L020475d8:
    str r2, [sp, #224]
.L020475dc:
    addlt r0, sp, #196
.L020475e0:
    addge r0, sp, #224
.L020475e4:
    ldr r1, [ip]
.L020475e8:
    ldr r0, [r0]
.L020475ec:
    smull r2, r3, r0, r1
.L020475f0:
    mov r2, r2, lsr #16
.L020475f4:
    orr r2, r2, r3, lsl #16
.L020475f8:
    str r2, [ip]
.L020475fc:
    ldmia r9, {r6, r8}
.L02047600:
    eor r3, r6, r6, asr #31
.L02047604:
    sub r3, r3, r6, asr #31
.L02047608:
    eor r0, r8, r8, asr #31
.L0204760c:
    sub r0, r0, r8, asr #31
.L02047610:
    add r0, r0, r3
.L02047614:
    bl reconstructed_external_arm_02083618
.L02047618:
    mov r1, #931135488
.L0204761c:
    bl reconstructed_external_arm_020836f4
.L02047620:
    mov r1, #0
.L02047624:
    mov r4, r0
.L02047628:
    bl reconstructed_external_arm_02083a84
.L0204762c:
    cmp r0, #0
.L02047630:
    movne ip, #0
.L02047634:
    bne .L02047694
.L02047638:
    mov r0, r4
.L0204763c:
    bl reconstructed_external_arm_02082c68
.L02047640:
    ldr r2, [pc, #2660]
.L02047644:
    ldr r3, [pc, #2660]
.L02047648:
    bl reconstructed_external_arm_02083298
.L0204764c:
    cmp r0, #0
.L02047650:
    beq .L02047dd0
.L02047654:
    mov r3, r6, lsl #8
.L02047658:
    mov r2, r8, lsl #8
.L0204765c:
    str r3, [sp, #144]
.L02047660:
    str r2, [sp, #148]
.L02047664:
    ldr ip, [pc, #2632]
.L02047668:
    add r0, sp, #228
.L0204766c:
    add r1, sp, #144
.L02047670:
    blx ip
.L02047674:
    ldr r2, [sp, #228]
.L02047678:
    mov r3, r2, asr #31
.L0204767c:
    mov r3, r3, lsl #8
.L02047680:
    orr r3, r3, r2, lsr #24
.L02047684:
    mov r2, r2, lsl #8
.L02047688:
    mov r2, r2, lsr #16
.L0204768c:
    orr r2, r2, r3, lsl #16
.L02047690:
    mov ip, r2
.L02047694:
    ldr r3, [pc, #2588]
.L02047698:
    ldr r2, [r3]
.L0204769c:
    cmp ip, r2
.L020476a0:
    ble .L02047748
.L020476a4:
    ldr r3, [pc, #2576]
.L020476a8:
    mov r0, #1
.L020476ac:
    strh r0, [r3, #128]
.L020476b0:
    mov r1, r3
.L020476b4:
    ldrh r3, [r1, #128]
.L020476b8:
    tst r3, #32768
.L020476bc:
    bne .L020476b4
.L020476c0:
    mov r3, r2, asr #31
.L020476c4:
    mov r3, r3, lsl #16
.L020476c8:
    orr r3, r3, r2, lsr #16
.L020476cc:
    mov r2, r2, lsl #16
.L020476d0:
    strd r2, [r1, #144]
.L020476d4:
    ldr r0, [pc, #2528]
.L020476d8:
    mov r1, #67108864
.L020476dc:
    str ip, [r1, #664]
.L020476e0:
    ldrh r3, [r0, #128]
.L020476e4:
    tst r3, #32768
.L020476e8:
    bne .L020476e0
.L020476ec:
    mov r3, #67108864
.L020476f0:
    ldr r0, [r9]
.L020476f4:
    ldr r4, [r3, #672]
.L020476f8:
    mov r1, r0, asr #31
.L020476fc:
    mov r5, r4, asr #31
.L02047700:
    mul lr, r0, r5
.L02047704:
    umull r2, r3, r0, r4
.L02047708:
    mla ip, r4, r1, lr
.L0204770c:
    mov r2, r2, lsr #16
.L02047710:
    add r3, ip, r3
.L02047714:
    orr r2, r2, r3, lsl #16
.L02047718:
    ldr r1, [sp, #108]
.L0204771c:
    str r2, [r9]
.L02047720:
    ldr r0, [r1]
.L02047724:
    mov r1, r0, asr #31
.L02047728:
    mul lr, r4, r1
.L0204772c:
    umull r2, r3, r4, r0
.L02047730:
    mla ip, r0, r5, lr
.L02047734:
    mov r2, r2, lsr #16
.L02047738:
    add r3, ip, r3
.L0204773c:
    ldr r5, [sp, #108]
.L02047740:
    orr r2, r2, r3, lsl #16
.L02047744:
    str r2, [r5]
.L02047748:
    ldr r3, [pc, #2416]
.L0204774c:
    ldr r8, [sp, #104]
.L02047750:
    ldr r2, [r3]
.L02047754:
    ldr r1, [r8]
.L02047758:
    rsb r3, r2, #0
.L0204775c:
    cmp r2, r1
.L02047760:
    str r2, [sp, #212]
.L02047764:
    str r3, [sp, #208]
.L02047768:
    str r1, [sp, #204]
.L0204776c:
    addgt r2, sp, #204
.L02047770:
    addle r2, sp, #212
.L02047774:
    ldr r3, [sp, #208]
.L02047778:
    ldr r2, [r2]
.L0204777c:
    ldr sl, [sp, #84]
.L02047780:
    cmp r2, r3
.L02047784:
    str r2, [sp, #236]
.L02047788:
    addlt r3, sp, #208
.L0204778c:
    addge r3, sp, #236
.L02047790:
    ldr r3, [r3]
.L02047794:
    ldr sl, [sl, #20]
.L02047798:
    ldr ip, [sp, #104]
.L0204779c:
    str sl, [sp, #28]
.L020477a0:
    str r3, [ip]
.L020477a4:
    ldr lr, [sp, #96]
.L020477a8:
    ldr r0, [sp, #28]
.L020477ac:
    add lr, lr, #1
.L020477b0:
    cmp r0, lr
.L020477b4:
    str lr, [sp, #96]
.L020477b8:
    bgt .L020473b4
.L020477bc:
    ldr r1, [sp, #84]
.L020477c0:
    add r0, sp, #120
.L020477c4:
    ldr ip, [r1]
.L020477c8:
    ldr r2, [r1, #12]
.L020477cc:
    ldr r3, [r1, #28]
.L020477d0:
    ldr r1, [sp, #80]
.L020477d4:
    str ip, [sp]
.L020477d8:
    bl reconstructed_external_arm_0204a0cc
.L020477dc:
    add r0, sp, #120
.L020477e0:
    bl reconstructed_external_arm_020496d8
.L020477e4:
    ldr r2, [sp, #84]
.L020477e8:
    ldr r3, [r2, #24]
.L020477ec:
    cmp r3, #0
.L020477f0:
    ble .L02047828
.L020477f4:
    mov r4, #0
.L020477f8:
    ldr r5, [sp, #84]
.L020477fc:
    ldr r1, [sp, #80]
.L02047800:
    ldr r3, [r5, #16]
.L02047804:
    ldr r2, [r3, r4, lsl #2]
.L02047808:
    add r4, r4, #1
.L0204780c:
    mov r0, r2
.L02047810:
    ldr r3, [r2]
.L02047814:
    mov lr, pc
.L02047818:
    ldr pc, [r3, #24]
.L0204781c:
    ldr r2, [r5, #24]
.L02047820:
    cmp r2, r4
.L02047824:
    bgt .L020477f8
.L02047828:
    ldr r8, [sp, #80]
.L0204782c:
    ldr r3, [r8, #8]
.L02047830:
    cmp r3, #0
.L02047834:
    ble .L020478a0
.L02047838:
    mov r6, #0
.L0204783c:
    add r0, sp, #120
.L02047840:
    bl reconstructed_external_arm_020482b0
.L02047844:
    ldr sl, [sp, #84]
.L02047848:
    ldr r3, [sl, #24]
.L0204784c:
    cmp r3, #0
.L02047850:
    ble .L0204788c
.L02047854:
    mov r4, #0
.L02047858:
    ldr ip, [sp, #84]
.L0204785c:
    ldr r1, [sp, #80]
.L02047860:
    ldr r3, [ip, #16]
.L02047864:
    ldr r2, [r3, r4, lsl #2]
.L02047868:
    add r4, r4, #1
.L0204786c:
    mov r0, r2
.L02047870:
    ldr r3, [r2]
.L02047874:
    mov lr, pc
.L02047878:
    ldr pc, [r3, #28]
.L0204787c:
    ldr lr, [sp, #84]
.L02047880:
    ldr r2, [lr, #24]
.L02047884:
    cmp r2, r4
.L02047888:
    bgt .L02047858
.L0204788c:
    ldr r0, [sp, #80]
.L02047890:
    add r6, r6, #1
.L02047894:
    ldr r3, [r0, #8]
.L02047898:
    cmp r3, r6
.L0204789c:
    bgt .L0204783c
.L020478a0:
    add r0, sp, #120
.L020478a4:
    bl reconstructed_external_arm_02048128
.L020478a8:
    ldr r1, [sp, #84]
.L020478ac:
    ldr r1, [r1, #20]
.L020478b0:
    cmp r1, #0
.L020478b4:
    str r1, [sp, #28]
.L020478b8:
    ble .L02047b4c
.L020478bc:
    ldr r2, [sp, #84]
.L020478c0:
    mov r3, #0
.L020478c4:
    ldr r2, [r2, #8]
.L020478c8:
    str r3, [sp, #100]
.L020478cc:
    str r2, [sp, #32]
.L020478d0:
    ldr r5, [sp, #100]
.L020478d4:
    ldr r8, [sp, #32]
.L020478d8:
    ldr fp, [r8, r5, lsl #2]
.L020478dc:
    ldrh r3, [fp, #2]
.L020478e0:
    cmp r3, #0
.L020478e4:
    beq .L02047b34
.L020478e8:
    add sl, fp, #44
.L020478ec:
    ldr r3, [sl, #4]
.L020478f0:
    ldr lr, [fp, #56]
.L020478f4:
    ldr ip, [fp, #44]
.L020478f8:
    ldr r0, [sp, #80]
.L020478fc:
    str lr, [fp, #52]
.L02047900:
    str r3, [fp, #40]
.L02047904:
    str ip, [fp, #36]
.L02047908:
    ldr r4, [r0]
.L0204790c:
    ldr r6, [fp, #64]
.L02047910:
    ldr r8, [fp, #68]
.L02047914:
    mov r5, r4, asr #31
.L02047918:
    mov r7, r6, asr #31
.L0204791c:
    mov r9, r8, asr #31
.L02047920:
    mul ip, r4, r7
.L02047924:
    mul lr, r4, r9
.L02047928:
    umull r0, r1, r4, r8
.L0204792c:
    umull r2, r3, r4, r6
.L02047930:
    str sl, [sp, #92]
.L02047934:
    mla sl, r6, r5, ip
.L02047938:
    mla ip, r8, r5, lr
.L0204793c:
    ldr r6, [fp, #48]
.L02047940:
    ldr r5, [fp, #44]
.L02047944:
    add r3, sl, r3
.L02047948:
    add r1, ip, r1
.L0204794c:
    mov r2, r2, lsr #16
.L02047950:
    mov r0, r0, lsr #16
.L02047954:
    orr r0, r0, r1, lsl #16
.L02047958:
    orr r2, r2, r3, lsl #16
.L0204795c:
    add r3, r5, r2
.L02047960:
    add r6, r6, r0
.L02047964:
    ldr r8, [sp, #80]
.L02047968:
    str r3, [fp, #44]
.L0204796c:
    str r6, [fp, #48]
.L02047970:
    ldr r0, [r8]
.L02047974:
    ldr r1, [fp, #72]
.L02047978:
    ldr sl, [fp, #56]
.L0204797c:
    smull r2, r3, r1, r0
.L02047980:
    mov r2, r2, lsr #16
.L02047984:
    orr r2, r2, r3, lsl #16
.L02047988:
    ldr r4, [pc, #1844]
.L0204798c:
    add lr, sl, r2
.L02047990:
    smull r0, r1, lr, r4
.L02047994:
    mov r0, r0, lsr #24
.L02047998:
    orr r0, r0, r1, lsl #8
.L0204799c:
    mov r1, r1, asr #24
.L020479a0:
    mov r2, r1
.L020479a4:
    mov r3, r2, asr #31
.L020479a8:
    mov r3, r3, asr #31
.L020479ac:
    mov r2, r3, lsr #23
.L020479b0:
    adds r0, r0, r2
.L020479b4:
    mov r3, #0
.L020479b8:
    ldr r4, [pc, #1800]
.L020479bc:
    adc r1, r1, r3
.L020479c0:
    mov r5, #0
.L020479c4:
    and r0, r0, r4
.L020479c8:
    and r1, r1, r5
.L020479cc:
    subs r0, r0, r2
.L020479d0:
    sbc r1, r1, r3
.L020479d4:
    subs ip, r0, #0
.L020479d8:
    addlt r0, ip, #512
.L020479dc:
    ldr r2, [pc, #1768]
.L020479e0:
    mov r3, r0, lsl #1
.L020479e4:
    ldrsh r1, [r3, r2]
.L020479e8:
    cmp ip, #0
.L020479ec:
    mov r3, r1, lsl #4
.L020479f0:
    addlt ip, ip, #512
.L020479f4:
    ldr r1, [pc, #1748]
.L020479f8:
    mov r0, ip, lsl #1
.L020479fc:
    ldrsh r2, [r0, r1]
.L02047a00:
    str lr, [fp, #56]
.L02047a04:
    mov r2, r2, lsl #4
.L02047a08:
    add lr, fp, #12
.L02047a0c:
    rsb ip, r2, #0
.L02047a10:
    str r3, [lr]
.L02047a14:
    str ip, [lr, #8]
.L02047a18:
    ldr sl, [fp, #28]
.L02047a1c:
    str r3, [lr, #12]
.L02047a20:
    str r2, [lr, #4]
.L02047a24:
    mov r0, sl
.L02047a28:
    mov r1, r0, asr #31
.L02047a2c:
    ldr r8, [fp, #32]
.L02047a30:
    strd r0, [sp, #112]
.L02047a34:
    mov r0, r3
.L02047a38:
    mov r1, r0, asr #31
.L02047a3c:
    mov r9, r8, asr #31
.L02047a40:
    strd r0, [sp, #56]
.L02047a44:
    mov r0, ip
.L02047a48:
    mov r1, r0, asr #31
.L02047a4c:
    strd r0, [sp, #40]
.L02047a50:
    mul r0, r9, r0
.L02047a54:
    ldr r5, [sp, #56]
.L02047a58:
    ldr r1, [sp, #116]
.L02047a5c:
    str r0, [sp, #12]
.L02047a60:
    mul r1, r5, r1
.L02047a64:
    ldr ip, [sp, #112]
.L02047a68:
    ldr r0, [sp, #56]
.L02047a6c:
    mov r3, r2, asr #31
.L02047a70:
    umull r4, r5, ip, r2
.L02047a74:
    umull r6, r7, r8, r0
.L02047a78:
    ldr ip, [sp, #60]
.L02047a7c:
    ldr r0, [sp, #112]
.L02047a80:
    ldr sl, [sp, #112]
.L02047a84:
    mla ip, r0, ip, r1
.L02047a88:
    ldr r1, [sp, #44]
.L02047a8c:
    str ip, [sp, #52]
.L02047a90:
    ldr ip, [sp, #12]
.L02047a94:
    mul sl, r3, sl
.L02047a98:
    mla r1, r8, r1, ip
.L02047a9c:
    ldr ip, [sp, #40]
.L02047aa0:
    ldr lr, [sp, #60]
.L02047aa4:
    str r1, [sp, #36]
.L02047aa8:
    umull r0, r1, ip, r8
.L02047aac:
    ldr ip, [sp, #116]
.L02047ab0:
    mul lr, r8, lr
.L02047ab4:
    mla ip, r2, ip, sl
.L02047ab8:
    ldr r2, [sp, #56]
.L02047abc:
    ldr sl, [sp, #112]
.L02047ac0:
    mov r8, r2
.L02047ac4:
    mla lr, r2, r9, lr
.L02047ac8:
    umull r2, r3, r8, sl
.L02047acc:
    ldr sl, [sp, #92]
.L02047ad0:
    add r7, lr, r7
.L02047ad4:
    ldr r8, [sl, #4]
.L02047ad8:
    ldr sl, [sp, #52]
.L02047adc:
    ldr lr, [sp, #92]
.L02047ae0:
    add r3, sl, r3
.L02047ae4:
    ldr sl, [sp, #36]
.L02047ae8:
    add r5, ip, r5
.L02047aec:
    add r1, sl, r1
.L02047af0:
    mov r2, r2, lsr #16
.L02047af4:
    mov r0, r0, lsr #16
.L02047af8:
    mov r4, r4, lsr #16
.L02047afc:
    mov r6, r6, lsr #16
.L02047b00:
    ldr ip, [lr]
.L02047b04:
    orr r4, r4, r5, lsl #16
.L02047b08:
    orr r6, r6, r7, lsl #16
.L02047b0c:
    orr r2, r2, r3, lsl #16
.L02047b10:
    orr r0, r0, r1, lsl #16
.L02047b14:
    add r2, r2, r0
.L02047b18:
    add r4, r4, r6
.L02047b1c:
    rsb ip, r2, ip
.L02047b20:
    rsb r8, r4, r8
.L02047b24:
    mov r5, r5, asr #16
.L02047b28:
    mov r7, r7, asr #16
.L02047b2c:
    str r8, [fp, #8]
.L02047b30:
    str ip, [fp, #4]
.L02047b34:
    ldr r0, [sp, #100]
.L02047b38:
    ldr r1, [sp, #28]
.L02047b3c:
    add r0, r0, #1
.L02047b40:
    cmp r1, r0
.L02047b44:
    str r0, [sp, #100]
.L02047b48:
    bgt .L020478d0
.L02047b4c:
    ldr r2, [sp, #72]
.L02047b50:
    cmp r2, #0
.L02047b54:
    beq .L02047c94
.L02047b58:
    ldr r5, [sp, #84]
.L02047b5c:
    ldr r3, [r5, #24]
.L02047b60:
    cmp r3, #0
.L02047b64:
    ble .L02047b98
.L02047b68:
    mov r4, #0
.L02047b6c:
    ldr r8, [sp, #84]
.L02047b70:
    ldr r3, [r8, #16]
.L02047b74:
    ldr r2, [r3, r4, lsl #2]
.L02047b78:
    add r4, r4, #1
.L02047b7c:
    mov r0, r2
.L02047b80:
    ldr r3, [r2]
.L02047b84:
    mov lr, pc
.L02047b88:
    ldr pc, [r3, #32]
.L02047b8c:
    ldr r2, [r8, #24]
.L02047b90:
    cmp r2, r4
.L02047b94:
    bgt .L02047b6c
.L02047b98:
    ldr sl, [sp, #84]
.L02047b9c:
    mov r3, #0
.L02047ba0:
    ldr ip, [sp, #80]
.L02047ba4:
    str r3, [sl, #44]
.L02047ba8:
    ldr r2, [ip, #8]
.L02047bac:
    cmp r2, r3
.L02047bb0:
    ble .L02047c94
.L02047bb4:
    ldr fp, [pc, #1304]
.L02047bb8:
    add r9, sp, #216
.L02047bbc:
    ldr r3, [fp]
.L02047bc0:
    add r0, sp, #120
.L02047bc4:
    mov r1, r9
.L02047bc8:
    str r3, [sp, #216]
.L02047bcc:
    bl reconstructed_external_arm_0204c154
.L02047bd0:
    ldr lr, [sp, #84]
.L02047bd4:
    mov sl, r0
.L02047bd8:
    ldr r3, [lr, #24]
.L02047bdc:
    cmp r3, #0
.L02047be0:
    movle r8, #1
.L02047be4:
    ble .L02047c64
.L02047be8:
    ldr r8, [sp, #84]
.L02047bec:
    mov r6, #0
.L02047bf0:
    ldr r3, [r8, #16]
.L02047bf4:
    ldr r2, [r3]
.L02047bf8:
    mov r0, r2
.L02047bfc:
    ldr r3, [r2]
.L02047c00:
    mov lr, pc
.L02047c04:
    ldr pc, [r3, #36]
.L02047c08:
    ldr r1, [sp, #84]
.L02047c0c:
    mov r3, r6, lsl #2
.L02047c10:
    add r4, r3, #4
.L02047c14:
    ldr r3, [r1, #24]
.L02047c18:
    add r6, r6, #1
.L02047c1c:
    cmp r3, r6
.L02047c20:
    mov r8, r0
.L02047c24:
    ble .L02047c64
.L02047c28:
    ldr r0, [sp, #84]
.L02047c2c:
    ldr r3, [r0, #16]
.L02047c30:
    ldr r2, [r4, r3]
.L02047c34:
    add r4, r4, #4
.L02047c38:
    mov r0, r2
.L02047c3c:
    ldr r3, [r2]
.L02047c40:
    mov lr, pc
.L02047c44:
    ldr pc, [r3, #36]
.L02047c48:
    cmp r8, #0
.L02047c4c:
    bne .L02047c08
.L02047c50:
    ldr r1, [sp, #84]
.L02047c54:
    add r6, r6, #1
.L02047c58:
    ldr r3, [r1, #24]
.L02047c5c:
    cmp r3, r6
.L02047c60:
    bgt .L02047c28
.L02047c64:
    cmp sl, #0
.L02047c68:
    beq .L02047c74
.L02047c6c:
    cmp r8, #0
.L02047c70:
    bne .L02047c94
.L02047c74:
    ldr r2, [sp, #84]
.L02047c78:
    ldr r5, [sp, #80]
.L02047c7c:
    ldr r3, [r2, #44]
.L02047c80:
    add r3, r3, #1
.L02047c84:
    str r3, [r2, #44]
.L02047c88:
    ldr r2, [r5, #8]
.L02047c8c:
    cmp r2, r3
.L02047c90:
    bgt .L02047bbc
.L02047c94:
    ldr r0, [sp, #84]
.L02047c98:
    ldr r1, [sp, #136]
.L02047c9c:
    bl reconstructed_external_arm_02046a2c
.L02047ca0:
    ldr r8, [sp, #68]
.L02047ca4:
    cmp r8, #0
.L02047ca8:
    beq .L02047dc0
.L02047cac:
    ldr sl, [sp, #84]
.L02047cb0:
    ldr r3, [pc, #1056]
.L02047cb4:
    ldr sl, [sl, #20]
.L02047cb8:
    str r3, [sp, #176]
.L02047cbc:
    cmp sl, #0
.L02047cc0:
    str sl, [sp, #28]
.L02047cc4:
    ble .L02047d50
.L02047cc8:
    mov r9, #0
.L02047ccc:
    ldr ip, [sp, #84]
.L02047cd0:
    ldr ip, [ip, #8]
.L02047cd4:
    ldr r8, [ip, r9, lsl #2]
.L02047cd8:
    str ip, [sp, #32]
.L02047cdc:
    ldr r3, [r8, #120]
.L02047ce0:
    cmp r3, #0
.L02047ce4:
    beq .L02047d40
.L02047ce8:
    ldrh r3, [r8]
.L02047cec:
    ands r3, r3, #16
.L02047cf0:
    streq r3, [r8, #140]
.L02047cf4:
    streq r3, [sp, #176]
.L02047cf8:
    beq .L02047d34
.L02047cfc:
    ldr r2, [pc, #984]
.L02047d00:
    ldr r3, [r8, #72]
.L02047d04:
    ldr r1, [r2]
.L02047d08:
    cmp r3, #0
.L02047d0c:
    rsblt r3, r3, #0
.L02047d10:
    cmp r1, r3
.L02047d14:
    blt .L02047d34
.L02047d18:
    ldr lr, [pc, #960]
.L02047d1c:
    ldr r3, [r8, #64]
.L02047d20:
    ldr r2, [lr]
.L02047d24:
    cmp r3, #0
.L02047d28:
    rsblt r3, r3, #0
.L02047d2c:
    cmp r3, r2
.L02047d30:
    ble .L02047ebc
.L02047d34:
    mov r3, #0
.L02047d38:
    str r3, [r8, #140]
.L02047d3c:
    str r3, [sp, #176]
.L02047d40:
    ldr ip, [sp, #28]
.L02047d44:
    add r9, r9, #1
.L02047d48:
    cmp ip, r9
.L02047d4c:
    bgt .L02047ccc
.L02047d50:
    ldr r3, [pc, #908]
.L02047d54:
    ldr r2, [sp, #176]
.L02047d58:
    ldr r1, [r3]
.L02047d5c:
    cmp r1, r2
.L02047d60:
    bgt .L02047dc0
.L02047d64:
    ldr lr, [sp, #28]
.L02047d68:
    cmp lr, #0
.L02047d6c:
    ble .L02047dc0
.L02047d70:
    ldr r0, [sp, #84]
.L02047d74:
    mov ip, #0
.L02047d78:
    ldr r0, [r0, #8]
.L02047d7c:
    ldr lr, [pc, #868]
.L02047d80:
    str r0, [sp, #32]
.L02047d84:
    mov r4, ip
.L02047d88:
    ldr r1, [sp, #32]
.L02047d8c:
    ldr r5, [sp, #28]
.L02047d90:
    ldr r2, [r1, ip, lsl #2]
.L02047d94:
    ldr r0, [lr, #4]
.L02047d98:
    ldrh r3, [r2]
.L02047d9c:
    ldr r1, [lr]
.L02047da0:
    add ip, ip, #1
.L02047da4:
    orr r3, r3, #8
.L02047da8:
    cmp r5, ip
.L02047dac:
    strh r3, [r2]
.L02047db0:
    str r1, [r2, #64]
.L02047db4:
    str r0, [r2, #68]
.L02047db8:
    str r4, [r2, #72]
.L02047dbc:
    bgt .L02047d88
.L02047dc0:
    add r0, sp, #120
.L02047dc4:
    bl reconstructed_external_arm_020480f0
.L02047dc8:
    add sp, sp, #252
.L02047dcc:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L02047dd0:
    mov r0, r4
.L02047dd4:
    ldr r1, [pc, #784]
.L02047dd8:
    bl reconstructed_external_arm_02083a9c
.L02047ddc:
    cmp r0, #0
.L02047de0:
    beq .L02047e78
.L02047de4:
    mov r2, r6
.L02047de8:
    mov r3, r2, asr #31
.L02047dec:
    mov r0, r8
.L02047df0:
    mov r1, r0, asr #31
.L02047df4:
    mul ip, r2, r3
.L02047df8:
    mul lr, r0, r1
.L02047dfc:
    umull r6, r7, r0, r0
.L02047e00:
    umull r4, r5, r2, r2
.L02047e04:
    ldr r3, [pc, #688]
.L02047e08:
    mov ip, ip, lsl #1
.L02047e0c:
    mov lr, lr, lsl #1
.L02047e10:
    add r7, lr, r7
.L02047e14:
    add r5, ip, r5
.L02047e18:
    mov lr, #1
.L02047e1c:
    mov r0, r4, lsr #16
.L02047e20:
    mov sl, r6, lsr #16
.L02047e24:
    strh lr, [r3, #176]
.L02047e28:
    mov ip, r3
.L02047e2c:
    orr r0, r0, r5, lsl #16
.L02047e30:
    orr sl, sl, r7, lsl #16
.L02047e34:
    mov fp, r7, asr #16
.L02047e38:
    ldrh r3, [ip, #176]
.L02047e3c:
    tst r3, #32768
.L02047e40:
    bne .L02047e38
.L02047e44:
    add r2, r0, sl
.L02047e48:
    mov r3, r2, asr #31
.L02047e4c:
    mov r3, r3, lsl #16
.L02047e50:
    orr r3, r3, r2, lsr #16
.L02047e54:
    mov r2, r2, lsl #16
.L02047e58:
    strd r2, [ip, #184]
.L02047e5c:
    ldr r2, [pc, #600]
.L02047e60:
    ldrh r3, [r2, #176]
.L02047e64:
    tst r3, #32768
.L02047e68:
    bne .L02047e60
.L02047e6c:
    mov r3, #67108864
.L02047e70:
    ldr ip, [r3, #692]
.L02047e74:
    b .L02047694
.L02047e78:
    mov r3, r6, asr #8
.L02047e7c:
    mov r2, r8, asr #8
.L02047e80:
    str r3, [sp, #152]
.L02047e84:
    str r2, [sp, #156]
.L02047e88:
    ldr ip, [pc, #548]
.L02047e8c:
    add r0, sp, #232
.L02047e90:
    add r1, sp, #152
.L02047e94:
    blx ip
.L02047e98:
    ldr r2, [sp, #232]
.L02047e9c:
    mov r3, r2, asr #31
.L02047ea0:
    mov r3, r3, lsl #24
.L02047ea4:
    orr r3, r3, r2, lsr #8
.L02047ea8:
    mov r2, r2, lsl #24
.L02047eac:
    mov r2, r2, lsr #16
.L02047eb0:
    orr r2, r2, r3, lsl #16
.L02047eb4:
    mov ip, r2
.L02047eb8:
    b .L02047694
.L02047ebc:
    ldr r3, [r8, #68]
.L02047ec0:
    cmp r3, #0
.L02047ec4:
    rsblt r3, r3, #0
.L02047ec8:
    cmp r2, r3
.L02047ecc:
    blt .L02047d34
.L02047ed0:
    ldr r6, [r8, #64]
.L02047ed4:
    ldr sl, [r8, #68]
.L02047ed8:
    eor r3, r6, r6, asr #31
.L02047edc:
    sub r3, r3, r6, asr #31
.L02047ee0:
    eor r0, sl, sl, asr #31
.L02047ee4:
    sub r0, r0, sl, asr #31
.L02047ee8:
    add r0, r0, r3
.L02047eec:
    bl reconstructed_external_arm_02083618
.L02047ef0:
    mov r1, #931135488
.L02047ef4:
    bl reconstructed_external_arm_020836f4
.L02047ef8:
    mov r1, #0
.L02047efc:
    mov r4, r0
.L02047f00:
    bl reconstructed_external_arm_02083a84
.L02047f04:
    cmp r0, #0
.L02047f08:
    movne r2, #0
.L02047f0c:
    beq .L02047f50
.L02047f10:
    ldr r5, [pc, #456]
.L02047f14:
    ldr r3, [r5]
.L02047f18:
    cmp r2, r3
.L02047f1c:
    bgt .L02047d34
.L02047f20:
    ldr sl, [sp, #80]
.L02047f24:
    ldr r2, [r8, #140]
.L02047f28:
    ldr r3, [sl]
.L02047f2c:
    add r1, r8, #140
.L02047f30:
    add r3, r3, r2
.L02047f34:
    str r3, [r8, #140]
.L02047f38:
    ldr r2, [sp, #176]
.L02047f3c:
    cmp r3, r2
.L02047f40:
    addgt r1, sp, #176
.L02047f44:
    ldr r3, [r1]
.L02047f48:
    str r3, [sp, #176]
.L02047f4c:
    b .L02047d40
.L02047f50:
    mov r0, r4
.L02047f54:
    bl reconstructed_external_arm_02082c68
.L02047f58:
    ldr r2, [pc, #332]
.L02047f5c:
    ldr r3, [pc, #332]
.L02047f60:
    bl reconstructed_external_arm_02083298
.L02047f64:
    cmp r0, #0
.L02047f68:
    beq .L02047fb8
.L02047f6c:
    mov r2, sl, lsl #8
.L02047f70:
    mov r3, r6, lsl #8
.L02047f74:
    add r0, sp, #240
.L02047f78:
    str r3, [sp, #160]
.L02047f7c:
    str r2, [sp, #164]
.L02047f80:
    ldr r3, [pc, #300]
.L02047f84:
    add r1, sp, #160
.L02047f88:
    blx r3
.L02047f8c:
    ldr r2, [sp, #240]
.L02047f90:
    ldr r0, [sp, #84]
.L02047f94:
    mov r3, r2, asr #31
.L02047f98:
    mov r3, r3, lsl #8
.L02047f9c:
    orr r3, r3, r2, lsr #24
.L02047fa0:
    mov r2, r2, lsl #8
.L02047fa4:
    ldr r0, [r0, #20]
.L02047fa8:
    mov r2, r2, lsr #16
.L02047fac:
    orr r2, r2, r3, lsl #16
.L02047fb0:
    str r0, [sp, #28]
.L02047fb4:
    b .L02047f10
.L02047fb8:
    mov r0, r4
.L02047fbc:
    ldr r1, [pc, #296]
.L02047fc0:
    bl reconstructed_external_arm_02083a9c
.L02047fc4:
    cmp r0, #0
.L02047fc8:
    beq .L02048060
.L02047fcc:
    mov r0, sl
.L02047fd0:
    mov r1, r0, asr #31
.L02047fd4:
    mov r2, r6
.L02047fd8:
    mov r3, r2, asr #31
.L02047fdc:
    mul lr, r0, r1
.L02047fe0:
    mul ip, r2, r3
.L02047fe4:
    umull r6, r7, r0, r0
.L02047fe8:
    umull r4, r5, r2, r2
.L02047fec:
    ldr r3, [pc, #200]
.L02047ff0:
    mov ip, ip, lsl #1
.L02047ff4:
    mov lr, lr, lsl #1
.L02047ff8:
    add r5, ip, r5
.L02047ffc:
    add r7, lr, r7
.L02048000:
    mov r1, #1
.L02048004:
    mov r0, r4, lsr #16
.L02048008:
    mov sl, r6, lsr #16
.L0204800c:
    strh r1, [r3, #176]
.L02048010:
    mov ip, r3
.L02048014:
    orr r0, r0, r5, lsl #16
.L02048018:
    orr sl, sl, r7, lsl #16
.L0204801c:
    mov fp, r7, asr #16
.L02048020:
    ldrh r3, [ip, #176]
.L02048024:
    tst r3, #32768
.L02048028:
    bne .L02048020
.L0204802c:
    add r2, r0, sl
.L02048030:
    mov r3, r2, asr #31
.L02048034:
    mov r3, r3, lsl #16
.L02048038:
    orr r3, r3, r2, lsr #16
.L0204803c:
    mov r2, r2, lsl #16
.L02048040:
    strd r2, [ip, #184]
.L02048044:
    ldr r2, [pc, #112]
.L02048048:
    ldrh r3, [r2, #176]
.L0204804c:
    tst r3, #32768
.L02048050:
    bne .L02048048
.L02048054:
    mov r3, #67108864
.L02048058:
    ldr r2, [r3, #692]
.L0204805c:
    b .L02047f10
.L02048060:
    mov r2, sl, asr #8
.L02048064:
    mov r3, r6, asr #8
.L02048068:
    str r3, [sp, #168]
.L0204806c:
    str r2, [sp, #172]
.L02048070:
    ldr r3, [pc, #60]
.L02048074:
    add r0, sp, #244
.L02048078:
    add r1, sp, #168
.L0204807c:
    blx r3
.L02048080:
    ldr r2, [sp, #84]
.L02048084:
    ldr r2, [r2, #20]
.L02048088:
    str r2, [sp, #28]
.L0204808c:
    ldr r2, [sp, #244]
.L02048090:
    mov r3, r2, asr #31
.L02048094:
    mov r3, r3, lsl #24
.L02048098:
    orr r3, r3, r2, lsr #8
.L0204809c:
    mov r2, r2, lsl #24
.L020480a0:
    mov r2, r2, lsr #16
.L020480a4:
    orr r2, r2, r3, lsl #16
.L020480a8:
    b .L02047f10
.L020480ac:
    .long 0x9999999a  /* literal data */
.L020480b0:
    .long 0x3fb99999  /* literal data */
.L020480b4:
    .long 0x0209390c  /* literal data */
.L020480b8:
    .long 0x020caee4  /* literal data */
.L020480bc:
    .long 0x04000200  /* literal data */
.L020480c0:
    .long 0x020caee8  /* literal data */
.L020480c4:
    .long 0x0000517d  /* literal data */
.L020480c8:
    .long 0x000001ff  /* literal data */
.L020480cc:
    .long 0x020bd61c  /* literal data */
.L020480d0:
    .long 0x020bda20  /* literal data */
.L020480d4:
    .long 0x020caeec  /* literal data */
.L020480d8:
    .long 0x7fff0000  /* literal data */
.L020480dc:
    .long 0x020caef8  /* literal data */
.L020480e0:
    .long 0x020caef4  /* literal data */
.L020480e4:
    .long 0x020caef0  /* literal data */
.L020480e8:
    .long 0x020ca998  /* literal data */
.L020480ec:
    .long 0x43340000  /* literal data */

/* b2ContactSolver-compilation-unit at 0x020480f0, 20100 bytes, ARM. */
.section .reconstructed.fn07,"ax",%progbits
.align 2
.arm
.global reconstructed_07_b2ContactSolver_compilation_unit
reconstructed_07_b2ContactSolver_compilation_unit:
.L020480f0:
    stmdb sp!, {r4, lr}
.L020480f4:
    mov r4, r0
.L020480f8:
    ldr r1, [r4, #16]
.L020480fc:
    ldr r0, [r0, #12]
.L02048100:
    bl reconstructed_external_arm_0202fa58
.L02048104:
    mov r0, r4
.L02048108:
    ldmia sp!, {r4, pc}
.L0204810c:
    stmdb sp!, {r4, lr}
.L02048110:
    mov r4, r0
.L02048114:
    ldr r1, [r4, #16]
.L02048118:
    ldr r0, [r0, #12]
.L0204811c:
    bl reconstructed_external_arm_0202fa58
.L02048120:
    mov r0, r4
.L02048124:
    ldmia sp!, {r4, pc}
.L02048128:
    ldr r2, [r0, #20]
.L0204812c:
    stmdb sp!, {r4, r5, r6, lr}
.L02048130:
    cmp r2, #0
.L02048134:
    mov r6, r0
.L02048138:
    ldmleia sp!, {r4, r5, r6, pc}
.L0204813c:
    ldr r4, [r0, #16]
.L02048140:
    mov r5, #0
.L02048144:
    ldr r0, [r4, #124]
.L02048148:
    ldr r3, [r4, #104]
.L0204814c:
    cmp r0, #0
.L02048150:
    ble .L02048188
.L02048154:
    mov ip, r3
.L02048158:
    mov r1, r4
.L0204815c:
    mov lr, #0
.L02048160:
    ldr r3, [r1, #16]
.L02048164:
    add lr, lr, #1
.L02048168:
    str r3, [ip, #20]
.L0204816c:
    ldr r2, [r1, #20]
.L02048170:
    cmp r0, lr
.L02048174:
    str r2, [ip, #24]
.L02048178:
    add r1, r1, #48
.L0204817c:
    add ip, ip, #32
.L02048180:
    bgt .L02048160
.L02048184:
    ldr r2, [r6, #20]
.L02048188:
    add r5, r5, #1
.L0204818c:
    cmp r2, r5
.L02048190:
    add r4, r4, #128
.L02048194:
    bgt .L02048144
.L02048198:
    ldmia sp!, {r4, r5, r6, pc}
.L0204819c:
    cmp r0, #1
.L020481a0:
    bxne lr
.L020481a4:
    ldr r3, [pc, #160]
.L020481a8:
    ldr r0, [pc, #160]
.L020481ac:
    cmp r1, r3
.L020481b0:
    bxne lr
.L020481b4:
    ldr r2, [pc, #152]
.L020481b8:
    ldr r3, [pc, #152]
.L020481bc:
    ldr r1, [pc, #152]
.L020481c0:
    str r2, [r3]
.L020481c4:
    ldr r3, [pc, #148]
.L020481c8:
    ldr r2, [pc, #148]
.L020481cc:
    str r1, [r3]
.L020481d0:
    ldr r3, [pc, #144]
.L020481d4:
    ldr r1, [pc, #144]
.L020481d8:
    str r2, [r3]
.L020481dc:
    ldr r3, [pc, #140]
.L020481e0:
    mov r2, #65536
.L020481e4:
    str r1, [r3]
.L020481e8:
    ldr r3, [pc, #132]
.L020481ec:
    ldr r1, [pc, #132]
.L020481f0:
    str r2, [r3]
.L020481f4:
    ldr r3, [pc, #128]
.L020481f8:
    add r2, r2, #6488064
.L020481fc:
    str r1, [r3]
.L02048200:
    ldr r3, [pc, #120]
.L02048204:
    mov r1, #16384000
.L02048208:
    str r2, [r3]
.L0204820c:
    ldr r3, [pc, #112]
.L02048210:
    ldr r2, [pc, #112]
.L02048214:
    str r1, [r3]
.L02048218:
    ldr r3, [pc, #108]
.L0204821c:
    mov r1, #32768
.L02048220:
    str r1, [r3]
.L02048224:
    str r0, [r2]
.L02048228:
    ldr r3, [pc, #96]
.L0204822c:
    ldr r2, [pc, #96]
.L02048230:
    mov r1, #728
.L02048234:
    str r2, [r3]
.L02048238:
    ldr r3, [pc, #88]
.L0204823c:
    ldr r2, [pc, #88]
.L02048240:
    str r1, [r3]
.L02048244:
    str r0, [r2]
.L02048248:
    bx lr
.L0204824c:
    .long 0x0000ffff  /* literal data */
.L02048250:
    .long 0x00003333  /* literal data */
.L02048254:
    .long 0x0003243f  /* literal data */
.L02048258:
    .long 0x020caefc  /* literal data */
.L0204825c:
    .long 0x00000147  /* literal data */
.L02048260:
    .long 0x020caf00  /* literal data */
.L02048264:
    .long 0x000008ef  /* literal data */
.L02048268:
    .long 0x020caf04  /* literal data */
.L0204826c:
    .long 0x00000a38  /* literal data */
.L02048270:
    .long 0x020caf08  /* literal data */
.L02048274:
    .long 0x020caf0c  /* literal data */
.L02048278:
    .long 0x000023bc  /* literal data */
.L0204827c:
    .long 0x020caf14  /* literal data */
.L02048280:
    .long 0x020caf18  /* literal data */
.L02048284:
    .long 0x020caf1c  /* literal data */
.L02048288:
    .long 0x020caf20  /* literal data */
.L0204828c:
    .long 0x020caf24  /* literal data */
.L02048290:
    .long 0x020caf28  /* literal data */
.L02048294:
    .long 0x0000028f  /* literal data */
.L02048298:
    .long 0x020caf2c  /* literal data */
.L0204829c:
    .long 0x020caf10  /* literal data */
.L020482a0:
    ldr r1, [pc, #4]
.L020482a4:
    mov r0, #1
.L020482a8:
    b .L0204819c
.L020482ac:
    .long 0x0000ffff  /* literal data */
.L020482b0:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020482b4:
    ldr r3, [r0, #20]
.L020482b8:
    sub sp, sp, #812
.L020482bc:
    cmp r3, #0
.L020482c0:
    str r0, [sp, #440]
.L020482c4:
    ble .L020496d0
.L020482c8:
    ldr r0, [r0, #16]
.L020482cc:
    mov r1, #0
.L020482d0:
    str r0, [sp, #48]
.L020482d4:
    str r1, [sp, #464]
.L020482d8:
    ldr r2, [sp, #48]
.L020482dc:
    add r8, sp, #496
.L020482e0:
    ldr r3, [r2, #96]
.L020482e4:
    ldr r9, [r2, #112]
.L020482e8:
    mov r6, r3
.L020482ec:
    mov r7, r6, asr #31
.L020482f0:
    ldr r4, [r2, #108]
.L020482f4:
    ldr r2, [pc, #428]
.L020482f8:
    rsb r1, r6, #0
.L020482fc:
    mov r0, r7
.L02048300:
    mla r0, r2, r0, r1
.L02048304:
    ldr r1, [sp, #48]
.L02048308:
    stmdb r8, {r6, r7}
.L0204830c:
    str r4, [sp, #468]
.L02048310:
    ldr r3, [r1, #100]
.L02048314:
    ldr sl, [sp, #488]
.L02048318:
    ldr fp, [sp, #468]
.L0204831c:
    umull r4, r5, sl, r2
.L02048320:
    add ip, r9, #64
.L02048324:
    str r9, [sp, #472]
.L02048328:
    add sl, sp, #512
.L0204832c:
    mov r8, r3
.L02048330:
    mov r9, r8, asr #31
.L02048334:
    stmdb sl, {r8, r9}
.L02048338:
    add fp, fp, #64
.L0204833c:
    ldr r2, [fp, #4]
.L02048340:
    str fp, [sp, #444]
.L02048344:
    ldr fp, [sp, #504]
.L02048348:
    mov r3, r9, lsl #16
.L0204834c:
    add r5, r0, r5
.L02048350:
    orr r3, r3, r8, lsr #16
.L02048354:
    str r2, [sp, #672]
.L02048358:
    mov r2, fp, lsl #16
.L0204835c:
    ldr r6, [ip, #4]
.L02048360:
    str ip, [sp, #452]
.L02048364:
    ldr lr, [sp, #48]
.L02048368:
    mov ip, r4, lsr #16
.L0204836c:
    mov r0, r2, lsr #16
.L02048370:
    mov r4, r5, asr #16
.L02048374:
    mov r2, r3, asr #16
.L02048378:
    str r4, [sp, #500]
.L0204837c:
    orr r1, r0, r3, lsl #16
.L02048380:
    str r2, [sp, #516]
.L02048384:
    ldr r3, [sp, #468]
.L02048388:
    ldr r2, [sp, #468]
.L0204838c:
    ldr r4, [sp, #472]
.L02048390:
    ldr lr, [lr, #124]
.L02048394:
    ldr r2, [r2, #120]
.L02048398:
    ldr r3, [r3, #128]
.L0204839c:
    ldr r4, [r4, #120]
.L020483a0:
    str lr, [sp, #80]
.L020483a4:
    cmp lr, #0
.L020483a8:
    orr lr, ip, r5, lsl #16
.L020483ac:
    str r6, [sp, #684]
.L020483b0:
    str lr, [sp, #496]
.L020483b4:
    str r1, [sp, #512]
.L020483b8:
    str r2, [sp, #656]
.L020483bc:
    str r3, [sp, #660]
.L020483c0:
    str r4, [sp, #664]
.L020483c4:
    ldr r5, [sp, #472]
.L020483c8:
    ldr r6, [sp, #468]
.L020483cc:
    ldr r9, [sp, #468]
.L020483d0:
    ldr sl, [sp, #472]
.L020483d4:
    ldr lr, [sp, #472]
.L020483d8:
    ldr r8, [sp, #468]
.L020483dc:
    ldr ip, [sp, #472]
.L020483e0:
    ldr r5, [r5, #128]
.L020483e4:
    ldr r6, [r6, #64]
.L020483e8:
    ldr r7, [sp, #672]
.L020483ec:
    ldr r9, [r9, #72]
.L020483f0:
    ldr sl, [sl, #64]
.L020483f4:
    ldr fp, [sp, #684]
.L020483f8:
    ldr lr, [lr, #72]
.L020483fc:
    add r8, r8, #72
.L02048400:
    add ip, ip, #72
.L02048404:
    str r5, [sp, #668]
.L02048408:
    str r6, [sp, #676]
.L0204840c:
    str r7, [sp, #56]
.L02048410:
    str r8, [sp, #448]
.L02048414:
    str r9, [sp, #680]
.L02048418:
    str sl, [sp, #688]
.L0204841c:
    str fp, [sp, #60]
.L02048420:
    str ip, [sp, #456]
.L02048424:
    str lr, [sp, #692]
.L02048428:
    ble .L02048d40
.L0204842c:
    mov r0, r2
.L02048430:
    mov r1, r0, asr #31
.L02048434:
    add r2, sp, #704
.L02048438:
    add r4, sp, #720
.L0204843c:
    stmia r2, {r0, r1}
.L02048440:
    mov r2, r3
.L02048444:
    mov r3, r2, asr #31
.L02048448:
    stmdb r4, {r2, r3}
.L0204844c:
    ldr r4, [sp, #664]
.L02048450:
    add r6, sp, #720
.L02048454:
    mov r5, r4, asr #31
.L02048458:
    stmia r6, {r4, r5}
.L0204845c:
    ldr r6, [sp, #668]
.L02048460:
    add r8, sp, #736
.L02048464:
    mov r7, r6, asr #31
.L02048468:
    stmdb r8, {r6, r7}
.L0204846c:
    ldr r9, [sp, #468]
.L02048470:
    ldr r8, [sp, #468]
.L02048474:
    ldr sl, [sp, #472]
.L02048478:
    ldr fp, [sp, #472]
.L0204847c:
    mov r7, #0
.L02048480:
    add r8, r8, #28
.L02048484:
    add r9, r9, #12
.L02048488:
    add sl, sl, #28
.L0204848c:
    add fp, fp, #12
.L02048490:
    str r7, [sp, #476]
.L02048494:
    str r8, [sp, #64]
.L02048498:
    str r9, [sp, #72]
.L0204849c:
    str sl, [sp, #68]
.L020484a0:
    str fp, [sp, #76]
.L020484a4:
    b .L020484c4
.L020484a8:
    .long 0xffff0000  /* literal data */
.L020484ac:
    ldr ip, [sp, #444]
.L020484b0:
    ldr lr, [sp, #452]
.L020484b4:
    ldr ip, [ip, #4]
.L020484b8:
    ldr lr, [lr, #4]
.L020484bc:
    str ip, [sp, #56]
.L020484c0:
    str lr, [sp, #60]
.L020484c4:
    ldr r0, [sp, #476]
.L020484c8:
    ldr r1, [sp, #48]
.L020484cc:
    mov r3, r0, lsl #6
.L020484d0:
    sub r3, r3, r0, lsl #4
.L020484d4:
    add r1, r1, r3
.L020484d8:
    str r1, [sp, #480]
.L020484dc:
    ldr r4, [sp, #480]
.L020484e0:
    ldr r2, [sp, #472]
.L020484e4:
    ldr r0, [r4, #8]
.L020484e8:
    ldr r1, [r2, #28]
.L020484ec:
    ldr r5, [sp, #68]
.L020484f0:
    ldr r7, [sp, #472]
.L020484f4:
    ldr r2, [r5, #4]
.L020484f8:
    ldr r6, [r7, #12]
.L020484fc:
    rsb lr, r1, r0
.L02048500:
    ldr r8, [r4, #12]
.L02048504:
    ldr r0, [sp, #48]
.L02048508:
    ldr r1, [sp, #468]
.L0204850c:
    ldr r5, [sp, #64]
.L02048510:
    ldr r7, [sp, #480]
.L02048514:
    ldr r9, [sp, #76]
.L02048518:
    ldr r4, [r0, r3]
.L0204851c:
    rsb r8, r2, r8
.L02048520:
    ldr r3, [r5, #4]
.L02048524:
    ldr r2, [r1, #28]
.L02048528:
    ldr r5, [r7, #4]
.L0204852c:
    mov r0, lr
.L02048530:
    mov r1, r0, asr #31
.L02048534:
    add r7, sp, #544
.L02048538:
    stmdb r7, {r0, r1}
.L0204853c:
    ldr ip, [r9, #8]
.L02048540:
    rsb r4, r2, r4
.L02048544:
    ldr r2, [sp, #540]
.L02048548:
    mov r0, r6
.L0204854c:
    mov r1, r0, asr #31
.L02048550:
    ldr fp, [r9, #4]
.L02048554:
    mov r6, ip
.L02048558:
    mov r7, r6, asr #31
.L0204855c:
    mul r2, r0, r2
.L02048560:
    add lr, sp, #336
.L02048564:
    ldr sl, [r9, #12]
.L02048568:
    stmia lr, {r6, r7}
.L0204856c:
    add ip, sp, #336
.L02048570:
    mov r6, fp
.L02048574:
    mov r7, r6, asr #31
.L02048578:
    ldr lr, [sp, #72]
.L0204857c:
    stmdb ip, {r6, r7}
.L02048580:
    ldr ip, [sp, #468]
.L02048584:
    mov r6, sl
.L02048588:
    mov r7, r6, asr #31
.L0204858c:
    add fp, sp, #320
.L02048590:
    stmia fp, {r6, r7}
.L02048594:
    ldr sl, [ip, #12]
.L02048598:
    ldr r6, [lr, #8]
.L0204859c:
    ldr r7, [lr, #4]
.L020485a0:
    ldr fp, [lr, #12]
.L020485a4:
    rsb r5, r3, r5
.L020485a8:
    str r2, [sp, #24]
.L020485ac:
    ldr lr, [sp, #536]
.L020485b0:
    ldr r3, [sp, #336]
.L020485b4:
    ldr ip, [sp, #332]
.L020485b8:
    ldr r2, [sp, #324]
.L020485bc:
    mov r9, r8, asr #31
.L020485c0:
    mul r3, r9, r3
.L020485c4:
    mul ip, lr, ip
.L020485c8:
    mul r2, r8, r2
.L020485cc:
    str r3, [sp, #20]
.L020485d0:
    str ip, [sp, #16]
.L020485d4:
    str r2, [sp, #316]
.L020485d8:
    add ip, sp, #528
.L020485dc:
    mov r2, r4
.L020485e0:
    mov r3, r2, asr #31
.L020485e4:
    stmia ip, {r2, r3}
.L020485e8:
    add r4, sp, #528
.L020485ec:
    mov r2, r5
.L020485f0:
    mov r3, r2, asr #31
.L020485f4:
    stmdb r4, {r2, r3}
.L020485f8:
    mov r2, sl
.L020485fc:
    mov r3, r2, asr #31
.L02048600:
    add r4, sp, #432
.L02048604:
    stmia r4, {r2, r3}
.L02048608:
    mov r2, r6
.L0204860c:
    mov r3, r2, asr #31
.L02048610:
    add r4, sp, #416
.L02048614:
    stmdb r4, {r2, r3}
.L02048618:
    ldr ip, [sp, #432]
.L0204861c:
    mov r2, r7
.L02048620:
    mov r3, r2, asr #31
.L02048624:
    add r4, sp, #400
.L02048628:
    mov r6, fp
.L0204862c:
    mov r7, r6, asr #31
.L02048630:
    ldr fp, [sp, #532]
.L02048634:
    stmdb r4, {r2, r3}
.L02048638:
    ldr lr, [sp, #524]
.L0204863c:
    ldr r2, [sp, #408]
.L02048640:
    mul fp, ip, fp
.L02048644:
    ldr r5, [sp, #520]
.L02048648:
    mul lr, r2, lr
.L0204864c:
    add sl, sp, #368
.L02048650:
    stmia sl, {r6, r7}
.L02048654:
    mul r7, r5, r7
.L02048658:
    ldr sl, [sp, #536]
.L0204865c:
    ldr r4, [sp, #528]
.L02048660:
    ldr ip, [sp, #320]
.L02048664:
    ldr r2, [sp, #24]
.L02048668:
    str fp, [sp, #28]
.L0204866c:
    ldr fp, [sp, #328]
.L02048670:
    mul r3, r4, r3
.L02048674:
    str lr, [sp, #400]
.L02048678:
    umull r4, r5, r8, ip
.L0204867c:
    mov lr, sl
.L02048680:
    mov ip, sl
.L02048684:
    mla lr, r1, lr, r2
.L02048688:
    str r7, [sp, #360]
.L0204868c:
    umull r6, r7, sl, fp
.L02048690:
    umull sl, fp, r0, ip
.L02048694:
    str lr, [sp, #348]
.L02048698:
    mov r0, sl
.L0204869c:
    ldr lr, [sp, #20]
.L020486a0:
    ldr sl, [sp, #336]
.L020486a4:
    mov r1, fp
.L020486a8:
    ldr fp, [sp, #340]
.L020486ac:
    str r3, [sp, #388]
.L020486b0:
    mla fp, r8, fp, lr
.L020486b4:
    umull r2, r3, sl, r8
.L020486b8:
    ldr lr, [sp, #328]
.L020486bc:
    ldr sl, [sp, #16]
.L020486c0:
    ldr ip, [sp, #540]
.L020486c4:
    add r3, fp, r3
.L020486c8:
    mla ip, lr, ip, sl
.L020486cc:
    str ip, [sp, #20]
.L020486d0:
    ldr lr, [sp, #320]
.L020486d4:
    ldr ip, [sp, #316]
.L020486d8:
    ldr sl, [sp, #528]
.L020486dc:
    mla ip, lr, r9, ip
.L020486e0:
    str ip, [sp, #16]
.L020486e4:
    ldr ip, [sp, #392]
.L020486e8:
    ldr lr, [sp, #436]
.L020486ec:
    umull r8, r9, sl, ip
.L020486f0:
    add sl, sp, #384
.L020486f4:
    stmdb sl, {r8, r9}
.L020486f8:
    ldr ip, [sp, #368]
.L020486fc:
    ldr sl, [sp, #520]
.L02048700:
    ldr fp, [sp, #20]
.L02048704:
    umull r8, r9, sl, ip
.L02048708:
    add sl, sp, #352
.L0204870c:
    stmia sl, {r8, r9}
.L02048710:
    ldr r8, [sp, #528]
.L02048714:
    ldr r9, [sp, #28]
.L02048718:
    ldr sl, [sp, #432]
.L0204871c:
    mov ip, r8
.L02048720:
    mla lr, r8, lr, r9
.L02048724:
    umull r8, r9, sl, ip
.L02048728:
    add sl, sp, #416
.L0204872c:
    stmia sl, {r8, r9}
.L02048730:
    str lr, [sp, #428]
.L02048734:
    ldr r8, [sp, #520]
.L02048738:
    ldr r9, [sp, #400]
.L0204873c:
    ldr lr, [sp, #412]
.L02048740:
    ldr sl, [sp, #408]
.L02048744:
    mla lr, r8, lr, r9
.L02048748:
    mov ip, r8
.L0204874c:
    umull r8, r9, sl, ip
.L02048750:
    str lr, [sp, #404]
.L02048754:
    ldr sl, [sp, #392]
.L02048758:
    ldr ip, [sp, #388]
.L0204875c:
    ldr lr, [sp, #532]
.L02048760:
    add r7, fp, r7
.L02048764:
    mla lr, sl, lr, ip
.L02048768:
    ldr sl, [sp, #368]
.L0204876c:
    ldr ip, [sp, #360]
.L02048770:
    str lr, [sp, #28]
.L02048774:
    ldr lr, [sp, #524]
.L02048778:
    mov r0, r0, lsr #16
.L0204877c:
    mla lr, sl, lr, ip
.L02048780:
    str lr, [sp, #364]
.L02048784:
    ldr lr, [sp, #456]
.L02048788:
    ldr sl, [sp, #348]
.L0204878c:
    ldr ip, [sp, #16]
.L02048790:
    ldr lr, [lr]
.L02048794:
    add r1, sl, r1
.L02048798:
    add r5, ip, r5
.L0204879c:
    mov r2, r2, lsr #16
.L020487a0:
    mov r6, r6, lsr #16
.L020487a4:
    mov r4, r4, lsr #16
.L020487a8:
    str lr, [sp, #40]
.L020487ac:
    orr r2, r2, r3, lsl #16
.L020487b0:
    orr r0, r0, r1, lsl #16
.L020487b4:
    orr r6, r6, r7, lsl #16
.L020487b8:
    orr r4, r4, r5, lsl #16
.L020487bc:
    add r0, r0, r2
.L020487c0:
    ldr r1, [sp, #448]
.L020487c4:
    ldr r2, [sp, #40]
.L020487c8:
    add r6, r6, r4
.L020487cc:
    mov r4, r6
.L020487d0:
    mov r5, r4, asr #31
.L020487d4:
    add r7, sp, #560
.L020487d8:
    ldr lr, [r1]
.L020487dc:
    stmdb r7, {r4, r5}
.L020487e0:
    rsb r1, r2, #0
.L020487e4:
    ldr r6, [sp, #40]
.L020487e8:
    mov sl, r1
.L020487ec:
    mov fp, sl, asr #31
.L020487f0:
    add ip, sp, #304
.L020487f4:
    stmia ip, {sl, fp}
.L020487f8:
    mov r2, r0
.L020487fc:
    mov r3, r2, asr #31
.L02048800:
    mov r7, r6, asr #31
.L02048804:
    add r4, sp, #544
.L02048808:
    add sl, sp, #304
.L0204880c:
    stmdb sl, {r6, r7}
.L02048810:
    stmia r4, {r2, r3}
.L02048814:
    ldr sl, [sp, #420]
.L02048818:
    ldr r3, [sp, #416]
.L0204881c:
    ldr r7, [sp, #428]
.L02048820:
    ldr r2, [sp, #356]
.L02048824:
    add r7, r7, sl
.L02048828:
    ldr r1, [sp, #364]
.L0204882c:
    mov r4, r3, lsr #16
.L02048830:
    ldr r0, [sp, #380]
.L02048834:
    ldr fp, [sp, #404]
.L02048838:
    orr r4, r4, r7, lsl #16
.L0204883c:
    str r7, [sp, #420]
.L02048840:
    ldr ip, [sp, #28]
.L02048844:
    ldr r7, [sp, #376]
.L02048848:
    add r1, r1, r2
.L0204884c:
    add ip, ip, r0
.L02048850:
    add r9, fp, r9
.L02048854:
    str r1, [sp, #356]
.L02048858:
    ldr fp, [sp, #352]
.L0204885c:
    mov r0, r7, lsr #16
.L02048860:
    orr r0, r0, ip, lsl #16
.L02048864:
    str ip, [sp, #380]
.L02048868:
    ldr ip, [sp, #356]
.L0204886c:
    mov r2, fp, lsr #16
.L02048870:
    orr r2, r2, ip, lsl #16
.L02048874:
    add ip, r0, r2
.L02048878:
    ldr r1, [sp, #556]
.L0204887c:
    ldr r0, [sp, #304]
.L02048880:
    ldr r2, [sp, #296]
.L02048884:
    ldr r6, [sp, #548]
.L02048888:
    mov r8, r8, lsr #16
.L0204888c:
    orr r8, r8, r9, lsl #16
.L02048890:
    add r3, r4, r8
.L02048894:
    mul r1, r0, r1
.L02048898:
    mul r6, r2, r6
.L0204889c:
    mov r8, ip
.L020488a0:
    mov r9, r8, asr #31
.L020488a4:
    add sl, sp, #576
.L020488a8:
    stmdb sl, {r8, r9}
.L020488ac:
    mov r8, r3
.L020488b0:
    mov r9, r8, asr #31
.L020488b4:
    add sl, sp, #560
.L020488b8:
    stmia sl, {r8, r9}
.L020488bc:
    ldr r0, [sp, #552]
.L020488c0:
    ldr r7, [sp, #544]
.L020488c4:
    rsb r4, lr, #0
.L020488c8:
    ldr ip, [sp, #572]
.L020488cc:
    ldr fp, [sp, #308]
.L020488d0:
    ldr sl, [sp, #300]
.L020488d4:
    mov r5, r4, asr #31
.L020488d8:
    mla fp, r0, fp, r1
.L020488dc:
    mla sl, r7, sl, r6
.L020488e0:
    mul ip, r4, ip
.L020488e4:
    ldr r1, [sp, #304]
.L020488e8:
    ldr r6, [sp, #296]
.L020488ec:
    umull r2, r3, r1, r0
.L020488f0:
    umull r0, r1, r6, r7
.L020488f4:
    ldr r7, [sp, #568]
.L020488f8:
    mov r8, lr
.L020488fc:
    mov r9, r8, asr #31
.L02048900:
    mla r7, r5, r7, ip
.L02048904:
    ldr lr, [sp, #564]
.L02048908:
    str r7, [sp, #292]
.L0204890c:
    mul lr, r8, lr
.L02048910:
    ldr ip, [sp, #568]
.L02048914:
    add r1, sl, r1
.L02048918:
    umull r6, r7, r4, ip
.L0204891c:
    ldr r4, [sp, #560]
.L02048920:
    ldr sl, [sp, #444]
.L02048924:
    mla lr, r4, r9, lr
.L02048928:
    ldr r9, [sp, #452]
.L0204892c:
    mov ip, r4
.L02048930:
    mov r0, r0, lsr #16
.L02048934:
    umull r4, r5, r8, ip
.L02048938:
    add r3, fp, r3
.L0204893c:
    ldr r8, [r9]
.L02048940:
    orr r0, r0, r1, lsl #16
.L02048944:
    mov r2, r2, lsr #16
.L02048948:
    ldr r1, [sp, #292]
.L0204894c:
    ldr ip, [sl]
.L02048950:
    orr r2, r2, r3, lsl #16
.L02048954:
    ldr fp, [sp, #60]
.L02048958:
    add r7, r1, r7
.L0204895c:
    add r8, r8, r2
.L02048960:
    mov r6, r6, lsr #16
.L02048964:
    rsb r8, ip, r8
.L02048968:
    orr r6, r6, r7, lsl #16
.L0204896c:
    ldr ip, [sp, #56]
.L02048970:
    add r5, lr, r5
.L02048974:
    add r0, fp, r0
.L02048978:
    rsb r8, r6, r8
.L0204897c:
    ldr r3, [sp, #488]
.L02048980:
    mov r4, r4, lsr #16
.L02048984:
    mov r9, r8, asr #31
.L02048988:
    rsb r0, ip, r0
.L0204898c:
    orr r4, r4, r5, lsl #16
.L02048990:
    rsb r0, r4, r0
.L02048994:
    mul r3, r9, r3
.L02048998:
    ldr r1, [sp, #504]
.L0204899c:
    mov r6, r0
.L020489a0:
    mov r7, r6, asr #31
.L020489a4:
    mul r1, r7, r1
.L020489a8:
    ldr r2, [sp, #488]
.L020489ac:
    ldr lr, [sp, #492]
.L020489b0:
    umull r4, r5, r2, r8
.L020489b4:
    mla lr, r8, lr, r3
.L020489b8:
    ldr r9, [sp, #440]
.L020489bc:
    ldr r8, [sp, #504]
.L020489c0:
    ldr r0, [sp, #508]
.L020489c4:
    ldr sl, [sp, #480]
.L020489c8:
    ldr ip, [r9, #4]
.L020489cc:
    umull r2, r3, r8, r6
.L020489d0:
    mla r0, r6, r0, r1
.L020489d4:
    add r5, lr, r5
.L020489d8:
    mov ip, ip, asr #7
.L020489dc:
    ldr lr, [sl, #28]
.L020489e0:
    rsb ip, ip, #0
.L020489e4:
    add r3, r0, r3
.L020489e8:
    smull r0, r1, ip, lr
.L020489ec:
    mov r4, r4, lsr #16
.L020489f0:
    mov r2, r2, lsr #16
.L020489f4:
    ldr r6, [sl, #44]
.L020489f8:
    orr r4, r4, r5, lsl #16
.L020489fc:
    orr r2, r2, r3, lsl #16
.L02048a00:
    add r4, r4, r2
.L02048a04:
    mov r0, r0, lsr #16
.L02048a08:
    orr r0, r0, r1, lsl #16
.L02048a0c:
    rsb r4, r6, r4
.L02048a10:
    smull r2, r3, r4, r0
.L02048a14:
    ldr ip, [sl, #16]
.L02048a18:
    mov r2, r2, lsr #16
.L02048a1c:
    orr r2, r2, r3, lsl #16
.L02048a20:
    add ip, ip, r2
.L02048a24:
    cmp ip, #0
.L02048a28:
    mov r3, #0
.L02048a2c:
    str r3, [sp, #788]
.L02048a30:
    str ip, [sp, #784]
.L02048a34:
    add fp, sl, #16
.L02048a38:
    addgt r0, sp, #784
.L02048a3c:
    addle r0, sp, #788
.L02048a40:
    str fp, [sp, #460]
.L02048a44:
    ldr r0, [r0]
.L02048a48:
    ldr ip, [sp, #460]
.L02048a4c:
    ldr lr, [sp, #440]
.L02048a50:
    str r0, [sp, #696]
.L02048a54:
    ldr r1, [lr]
.L02048a58:
    ldr r0, [ip]
.L02048a5c:
    ldr r2, [sp, #696]
.L02048a60:
    mov r1, r1, lsl #7
.L02048a64:
    rsb r0, r0, r2
.L02048a68:
    smull r2, r3, r1, r0
.L02048a6c:
    mov r2, r2, lsr #16
.L02048a70:
    ldr r1, [sp, #488]
.L02048a74:
    ldr r0, [sp, #504]
.L02048a78:
    orr r2, r2, r3, lsl #16
.L02048a7c:
    mov r3, r2, asr #31
.L02048a80:
    mul r1, r3, r1
.L02048a84:
    mul r0, r3, r0
.L02048a88:
    ldr r4, [sp, #504]
.L02048a8c:
    ldr lr, [sp, #492]
.L02048a90:
    ldr ip, [sp, #508]
.L02048a94:
    mla lr, r2, lr, r1
.L02048a98:
    mla ip, r2, ip, r0
.L02048a9c:
    umull r0, r1, r4, r2
.L02048aa0:
    ldr r5, [sp, #488]
.L02048aa4:
    add r1, ip, r1
.L02048aa8:
    umull r8, r9, r5, r2
.L02048aac:
    mov r2, r0, lsr #16
.L02048ab0:
    orr r2, r2, r1, lsl #16
.L02048ab4:
    mov r6, r2
.L02048ab8:
    mov r7, r6, asr #31
.L02048abc:
    add sl, sp, #576
.L02048ac0:
    stmia sl, {r6, r7}
.L02048ac4:
    add r9, lr, r9
.L02048ac8:
    ldr lr, [sp, #544]
.L02048acc:
    mov r8, r8, lsr #16
.L02048ad0:
    mov r3, r7
.L02048ad4:
    ldr ip, [sp, #568]
.L02048ad8:
    mul r7, lr, r7
.L02048adc:
    orr r8, r8, r9, lsl #16
.L02048ae0:
    mov r9, r8, asr #31
.L02048ae4:
    ldr fp, [sp, #560]
.L02048ae8:
    mul ip, r9, ip
.L02048aec:
    ldr r2, [sp, #552]
.L02048af0:
    ldr r0, [sp, #552]
.L02048af4:
    umull r4, r5, lr, r6
.L02048af8:
    mul r3, fp, r3
.L02048afc:
    str r7, [sp, #16]
.L02048b00:
    mul r0, r9, r0
.L02048b04:
    umull r6, r7, r2, r8
.L02048b08:
    ldr r2, [sp, #572]
.L02048b0c:
    ldr sl, [sp, #576]
.L02048b10:
    mla r2, r8, r2, ip
.L02048b14:
    ldr lr, [sp, #560]
.L02048b18:
    ldr fp, [sp, #564]
.L02048b1c:
    str r0, [sp, #268]
.L02048b20:
    mla fp, sl, fp, r3
.L02048b24:
    umull r0, r1, lr, sl
.L02048b28:
    ldr sl, [sp, #568]
.L02048b2c:
    str r2, [sp, #28]
.L02048b30:
    ldr lr, [sp, #576]
.L02048b34:
    umull r2, r3, sl, r8
.L02048b38:
    ldr ip, [sp, #548]
.L02048b3c:
    ldr sl, [sp, #16]
.L02048b40:
    add r1, fp, r1
.L02048b44:
    mla ip, lr, ip, sl
.L02048b48:
    ldr sl, [sp, #28]
.L02048b4c:
    mov r0, r0, lsr #16
.L02048b50:
    add r3, sl, r3
.L02048b54:
    mov r2, r2, lsr #16
.L02048b58:
    str ip, [sp, #20]
.L02048b5c:
    ldr lr, [sp, #556]
.L02048b60:
    ldr ip, [sp, #268]
.L02048b64:
    orr r0, r0, r1, lsl #16
.L02048b68:
    orr r2, r2, r3, lsl #16
.L02048b6c:
    ldr r1, [sp, #704]
.L02048b70:
    rsb r0, r2, r0
.L02048b74:
    mov r2, r0
.L02048b78:
    mov r3, r2, asr #31
.L02048b7c:
    mla lr, r8, lr, ip
.L02048b80:
    ldr fp, [sp, #20]
.L02048b84:
    mul r1, r9, r1
.L02048b88:
    ldr ip, [sp, #704]
.L02048b8c:
    ldr r0, [sp, #580]
.L02048b90:
    add r5, fp, r5
.L02048b94:
    mul r0, ip, r0
.L02048b98:
    ldr fp, [sp, #708]
.L02048b9c:
    ldr sl, [sp, #708]
.L02048ba0:
    mla fp, r8, fp, r1
.L02048ba4:
    ldr r1, [sp, #576]
.L02048ba8:
    ldr ip, [sp, #712]
.L02048bac:
    mla sl, r1, sl, r0
.L02048bb0:
    mul ip, r3, ip
.L02048bb4:
    str sl, [sp, #288]
.L02048bb8:
    ldr sl, [sp, #716]
.L02048bbc:
    add r7, lr, r7
.L02048bc0:
    mov r4, r4, lsr #16
.L02048bc4:
    mov r6, r6, lsr #16
.L02048bc8:
    mla sl, r2, sl, ip
.L02048bcc:
    orr r4, r4, r5, lsl #16
.L02048bd0:
    orr r6, r6, r7, lsl #16
.L02048bd4:
    rsb r4, r6, r4
.L02048bd8:
    mov r6, r4
.L02048bdc:
    mov r7, r6, asr #31
.L02048be0:
    ldr r5, [sp, #720]
.L02048be4:
    ldr r4, [sp, #580]
.L02048be8:
    ldr lr, [sp, #720]
.L02048bec:
    mul r4, r5, r4
.L02048bf0:
    ldr r5, [sp, #728]
.L02048bf4:
    str sl, [sp, #284]
.L02048bf8:
    ldr sl, [sp, #712]
.L02048bfc:
    mul lr, r9, lr
.L02048c00:
    umull r0, r1, sl, r2
.L02048c04:
    ldr ip, [sp, #724]
.L02048c08:
    add sl, sp, #272
.L02048c0c:
    stmia sl, {r0, r1}
.L02048c10:
    mla ip, r8, ip, lr
.L02048c14:
    mul r5, r7, r5
.L02048c18:
    ldr lr, [sp, #576]
.L02048c1c:
    ldr r2, [sp, #728]
.L02048c20:
    ldr sl, [sp, #724]
.L02048c24:
    umull r0, r1, r2, r6
.L02048c28:
    mla sl, lr, sl, r4
.L02048c2c:
    ldr lr, [sp, #732]
.L02048c30:
    ldr r4, [sp, #704]
.L02048c34:
    mla lr, r6, lr, r5
.L02048c38:
    ldr r6, [sp, #720]
.L02048c3c:
    ldr r5, [sp, #576]
.L02048c40:
    ldr r9, [sp, #576]
.L02048c44:
    add r2, sp, #256
.L02048c48:
    stmia r2, {r0, r1}
.L02048c4c:
    umull r2, r3, r4, r8
.L02048c50:
    umull r0, r1, r4, r5
.L02048c54:
    umull r4, r5, r6, r8
.L02048c58:
    mov r8, r6
.L02048c5c:
    umull r6, r7, r8, r9
.L02048c60:
    ldr r8, [sp, #476]
.L02048c64:
    ldr r9, [sp, #288]
.L02048c68:
    add r8, r8, #1
.L02048c6c:
    str r8, [sp, #476]
.L02048c70:
    add r3, fp, r3
.L02048c74:
    ldr r8, [sp, #276]
.L02048c78:
    ldr fp, [sp, #284]
.L02048c7c:
    add r1, r9, r1
.L02048c80:
    ldr r9, [sp, #260]
.L02048c84:
    add fp, fp, r8
.L02048c88:
    str fp, [sp, #276]
.L02048c8c:
    add r5, ip, r5
.L02048c90:
    add r7, sl, r7
.L02048c94:
    ldr ip, [sp, #272]
.L02048c98:
    ldr sl, [sp, #80]
.L02048c9c:
    add lr, lr, r9
.L02048ca0:
    ldr fp, [sp, #476]
.L02048ca4:
    str lr, [sp, #260]
.L02048ca8:
    ldr lr, [sp, #276]
.L02048cac:
    cmp sl, fp
.L02048cb0:
    mov sl, ip, lsr #16
.L02048cb4:
    ldr ip, [sp, #256]
.L02048cb8:
    orr sl, sl, lr, lsl #16
.L02048cbc:
    ldr lr, [sp, #260]
.L02048cc0:
    mov r8, ip, lsr #16
.L02048cc4:
    orr r8, r8, lr, lsl #16
.L02048cc8:
    ldr ip, [sp, #460]
.L02048ccc:
    ldr lr, [sp, #696]
.L02048cd0:
    mov r0, r0, lsr #16
.L02048cd4:
    str lr, [ip]
.L02048cd8:
    ldr lr, [sp, #672]
.L02048cdc:
    orr r0, r0, r1, lsl #16
.L02048ce0:
    ldr ip, [sp, #676]
.L02048ce4:
    rsb lr, r0, lr
.L02048ce8:
    mov r2, r2, lsr #16
.L02048cec:
    ldr r0, [sp, #680]
.L02048cf0:
    orr r2, r2, r3, lsl #16
.L02048cf4:
    rsb ip, r2, ip
.L02048cf8:
    rsb r0, sl, r0
.L02048cfc:
    mov r4, r4, lsr #16
.L02048d00:
    mov r6, r6, lsr #16
.L02048d04:
    str ip, [sp, #676]
.L02048d08:
    str lr, [sp, #672]
.L02048d0c:
    str r0, [sp, #680]
.L02048d10:
    ldr r1, [sp, #688]
.L02048d14:
    ldr r2, [sp, #684]
.L02048d18:
    ldr r3, [sp, #692]
.L02048d1c:
    orr r4, r4, r5, lsl #16
.L02048d20:
    orr r6, r6, r7, lsl #16
.L02048d24:
    add r1, r1, r4
.L02048d28:
    add r2, r2, r6
.L02048d2c:
    add r3, r3, r8
.L02048d30:
    str r1, [sp, #688]
.L02048d34:
    str r2, [sp, #684]
.L02048d38:
    str r3, [sp, #692]
.L02048d3c:
    bgt .L020484ac
.L02048d40:
    ldr r4, [sp, #80]
.L02048d44:
    ldr r5, [sp, #444]
.L02048d48:
    ldr sl, [sp, #452]
.L02048d4c:
    ldr r6, [sp, #676]
.L02048d50:
    ldr r7, [sp, #672]
.L02048d54:
    ldr r9, [sp, #680]
.L02048d58:
    ldr r8, [sp, #448]
.L02048d5c:
    ldr fp, [sp, #688]
.L02048d60:
    ldr ip, [sp, #684]
.L02048d64:
    ldr r0, [sp, #692]
.L02048d68:
    ldr lr, [sp, #456]
.L02048d6c:
    cmp r4, #0
.L02048d70:
    stmia r5, {r6, r7}
.L02048d74:
    str r9, [r8]
.L02048d78:
    stmia sl, {fp, ip}
.L02048d7c:
    str r0, [lr]
.L02048d80:
    ble .L020496a8
.L02048d84:
    ldr r2, [sp, #512]
.L02048d88:
    add r4, sp, #736
.L02048d8c:
    mov r3, r2, asr #31
.L02048d90:
    stmia r4, {r2, r3}
.L02048d94:
    ldr r4, [sp, #496]
.L02048d98:
    add r6, sp, #752
.L02048d9c:
    mov r5, r4, asr #31
.L02048da0:
    stmdb r6, {r4, r5}
.L02048da4:
    ldr r6, [sp, #656]
.L02048da8:
    add r8, sp, #752
.L02048dac:
    mov r7, r6, asr #31
.L02048db0:
    stmia r8, {r6, r7}
.L02048db4:
    ldr r8, [sp, #660]
.L02048db8:
    add sl, sp, #768
.L02048dbc:
    mov r9, r8, asr #31
.L02048dc0:
    ldr r0, [sp, #668]
.L02048dc4:
    stmdb sl, {r8, r9}
.L02048dc8:
    ldr sl, [sp, #664]
.L02048dcc:
    mov r1, r0, asr #31
.L02048dd0:
    add r2, sp, #784
.L02048dd4:
    stmdb r2, {r0, r1}
.L02048dd8:
    mov fp, sl, asr #31
.L02048ddc:
    add ip, sp, #768
.L02048de0:
    ldr r2, [sp, #468]
.L02048de4:
    ldr r3, [sp, #468]
.L02048de8:
    ldr r4, [sp, #472]
.L02048dec:
    ldr r5, [sp, #472]
.L02048df0:
    ldr r6, [sp, #48]
.L02048df4:
    stmia ip, {sl, fp}
.L02048df8:
    mov r1, #0
.L02048dfc:
    add r2, r2, #28
.L02048e00:
    add r3, r3, #12
.L02048e04:
    add r4, r4, #28
.L02048e08:
    add r5, r5, #12
.L02048e0c:
    str r1, [sp, #484]
.L02048e10:
    str r2, [sp, #64]
.L02048e14:
    str r3, [sp, #72]
.L02048e18:
    str r4, [sp, #68]
.L02048e1c:
    str r5, [sp, #76]
.L02048e20:
    str r6, [sp, #52]
.L02048e24:
    ldr r7, [sp, #472]
.L02048e28:
    ldr r8, [sp, #52]
.L02048e2c:
    ldr r9, [sp, #68]
.L02048e30:
    ldr sl, [sp, #76]
.L02048e34:
    ldr r0, [r7, #28]
.L02048e38:
    ldr r3, [r8, #8]
.L02048e3c:
    ldr ip, [sp, #52]
.L02048e40:
    ldr r1, [r9, #4]
.L02048e44:
    ldr fp, [sp, #468]
.L02048e48:
    ldr r6, [sp, #64]
.L02048e4c:
    ldr r8, [r8, #12]
.L02048e50:
    ldr lr, [sl, #8]
.L02048e54:
    rsb r3, r0, r3
.L02048e58:
    ldr ip, [ip]
.L02048e5c:
    ldr r4, [sl, #4]
.L02048e60:
    ldr r5, [sl, #12]
.L02048e64:
    ldr r0, [fp, #28]
.L02048e68:
    ldr r2, [r7, #12]
.L02048e6c:
    mov sl, r3
.L02048e70:
    mov fp, sl, asr #31
.L02048e74:
    ldr r7, [sp, #52]
.L02048e78:
    rsb r8, r1, r8
.L02048e7c:
    ldr r1, [r6, #4]
.L02048e80:
    add r6, sp, #608
.L02048e84:
    stmdb r6, {sl, fp}
.L02048e88:
    str ip, [sp, #36]
.L02048e8c:
    mov sl, lr
.L02048e90:
    mov fp, sl, asr #31
.L02048e94:
    ldr ip, [r7, #4]
.L02048e98:
    strd sl, [sp, #152]
.L02048e9c:
    mov sl, r5
.L02048ea0:
    mov fp, sl, asr #31
.L02048ea4:
    ldr r5, [sp, #36]
.L02048ea8:
    mov r6, r4
.L02048eac:
    mov r7, r6, asr #31
.L02048eb0:
    rsb r4, r0, r5
.L02048eb4:
    rsb r5, r1, ip
.L02048eb8:
    ldr ip, [sp, #604]
.L02048ebc:
    mov r3, r2, asr #31
.L02048ec0:
    mul ip, r2, ip
.L02048ec4:
    ldr lr, [sp, #72]
.L02048ec8:
    strd sl, [sp, #128]
.L02048ecc:
    ldr fp, [sp, #468]
.L02048ed0:
    strd r6, [sp, #144]
.L02048ed4:
    ldr sl, [fp, #12]
.L02048ed8:
    ldr r6, [lr, #8]
.L02048edc:
    ldr r7, [lr, #4]
.L02048ee0:
    ldr fp, [lr, #12]
.L02048ee4:
    str ip, [sp, #20]
.L02048ee8:
    ldr r1, [sp, #600]
.L02048eec:
    ldr r0, [sp, #148]
.L02048ef0:
    ldr ip, [sp, #132]
.L02048ef4:
    mov r9, r8, asr #31
.L02048ef8:
    mul ip, r8, ip
.L02048efc:
    mul r0, r1, r0
.L02048f00:
    str ip, [sp, #124]
.L02048f04:
    str r0, [sp, #140]
.L02048f08:
    add ip, sp, #592
.L02048f0c:
    mov r0, r4
.L02048f10:
    mov r1, r0, asr #31
.L02048f14:
    stmia ip, {r0, r1}
.L02048f18:
    add r4, sp, #592
.L02048f1c:
    mov r0, r5
.L02048f20:
    mov r1, r0, asr #31
.L02048f24:
    stmdb r4, {r0, r1}
.L02048f28:
    mov r4, r6
.L02048f2c:
    mov r5, r4, asr #31
.L02048f30:
    mov r0, sl
.L02048f34:
    mov r1, r0, asr #31
.L02048f38:
    strd r4, [sp, #224]
.L02048f3c:
    mov r4, fp
.L02048f40:
    mov r5, r4, asr #31
.L02048f44:
    strd r4, [sp, #184]
.L02048f48:
    strd r0, [sp, #248]
.L02048f4c:
    ldr fp, [sp, #592]
.L02048f50:
    mov r0, r7
.L02048f54:
    mov r1, r0, asr #31
.L02048f58:
    strd r0, [sp, #208]
.L02048f5c:
    ldr ip, [sp, #188]
.L02048f60:
    ldr r0, [sp, #584]
.L02048f64:
    mul r1, fp, r1
.L02048f68:
    mul ip, r0, ip
.L02048f6c:
    str r1, [sp, #204]
.L02048f70:
    ldr r1, [sp, #600]
.L02048f74:
    str ip, [sp, #176]
.L02048f78:
    ldr ip, [sp, #20]
.L02048f7c:
    ldr r6, [sp, #248]
.L02048f80:
    ldr sl, [sp, #224]
.L02048f84:
    ldr r5, [sp, #596]
.L02048f88:
    ldr r7, [sp, #588]
.L02048f8c:
    mov fp, r1
.L02048f90:
    mla fp, r3, fp, ip
.L02048f94:
    ldr lr, [sp, #152]
.L02048f98:
    mul r5, r6, r5
.L02048f9c:
    mul r7, sl, r7
.L02048fa0:
    mul lr, r9, lr
.L02048fa4:
    ldr r4, [sp, #144]
.L02048fa8:
    ldr sl, [sp, #128]
.L02048fac:
    ldr ip, [sp, #152]
.L02048fb0:
    str fp, [sp, #164]
.L02048fb4:
    ldr fp, [sp, #156]
.L02048fb8:
    str r5, [sp, #28]
.L02048fbc:
    str r7, [sp, #216]
.L02048fc0:
    umull r6, r7, r1, r4
.L02048fc4:
    umull r4, r5, r8, sl
.L02048fc8:
    mov sl, r1
.L02048fcc:
    umull r0, r1, r2, sl
.L02048fd0:
    mla fp, r8, fp, lr
.L02048fd4:
    umull r2, r3, ip, r8
.L02048fd8:
    ldr sl, [sp, #144]
.L02048fdc:
    ldr ip, [sp, #140]
.L02048fe0:
    ldr lr, [sp, #604]
.L02048fe4:
    add r3, fp, r3
.L02048fe8:
    mla lr, sl, lr, ip
.L02048fec:
    str lr, [sp, #20]
.L02048ff0:
    ldr sl, [sp, #128]
.L02048ff4:
    ldr lr, [sp, #124]
.L02048ff8:
    ldr ip, [sp, #208]
.L02048ffc:
    mla lr, sl, r9, lr
.L02049000:
    ldr sl, [sp, #592]
.L02049004:
    str lr, [sp, #16]
.L02049008:
    umull r8, r9, sl, ip
.L0204900c:
    ldr sl, [sp, #584]
.L02049010:
    ldr ip, [sp, #184]
.L02049014:
    strd r8, [sp, #192]
.L02049018:
    umull r8, r9, sl, ip
.L0204901c:
    strd r8, [sp, #168]
.L02049020:
    ldr r8, [sp, #592]
.L02049024:
    ldr r9, [sp, #28]
.L02049028:
    ldr sl, [sp, #248]
.L0204902c:
    ldr lr, [sp, #252]
.L02049030:
    mov ip, r8
.L02049034:
    mla lr, r8, lr, r9
.L02049038:
    umull r8, r9, sl, ip
.L0204903c:
    str lr, [sp, #244]
.L02049040:
    strd r8, [sp, #232]
.L02049044:
    ldr lr, [sp, #228]
.L02049048:
    ldr r8, [sp, #584]
.L0204904c:
    ldr r9, [sp, #216]
.L02049050:
    ldr sl, [sp, #224]
.L02049054:
    mla lr, r8, lr, r9
.L02049058:
    mov ip, r8
.L0204905c:
    umull r8, r9, sl, ip
.L02049060:
    str lr, [sp, #220]
.L02049064:
    ldr sl, [sp, #208]
.L02049068:
    ldr ip, [sp, #204]
.L0204906c:
    ldr lr, [sp, #596]
.L02049070:
    ldr fp, [sp, #20]
.L02049074:
    mla lr, sl, lr, ip
.L02049078:
    ldr sl, [sp, #184]
.L0204907c:
    ldr ip, [sp, #176]
.L02049080:
    str lr, [sp, #28]
.L02049084:
    ldr lr, [sp, #588]
.L02049088:
    add r7, fp, r7
.L0204908c:
    mla lr, sl, lr, ip
.L02049090:
    ldr sl, [sp, #164]
.L02049094:
    ldr ip, [sp, #16]
.L02049098:
    str lr, [sp, #180]
.L0204909c:
    ldr lr, [sp, #456]
.L020490a0:
    add r1, sl, r1
.L020490a4:
    add r5, ip, r5
.L020490a8:
    mov r0, r0, lsr #16
.L020490ac:
    mov r2, r2, lsr #16
.L020490b0:
    mov r6, r6, lsr #16
.L020490b4:
    mov r4, r4, lsr #16
.L020490b8:
    ldr lr, [lr]
.L020490bc:
    orr r2, r2, r3, lsl #16
.L020490c0:
    orr r0, r0, r1, lsl #16
.L020490c4:
    orr r6, r6, r7, lsl #16
.L020490c8:
    orr r4, r4, r5, lsl #16
.L020490cc:
    add r0, r0, r2
.L020490d0:
    ldr r1, [sp, #448]
.L020490d4:
    add r6, r6, r4
.L020490d8:
    mov r4, r6
.L020490dc:
    mov r5, r4, asr #31
.L020490e0:
    mov sl, r0
.L020490e4:
    mov fp, sl, asr #31
.L020490e8:
    str lr, [sp, #44]
.L020490ec:
    add r7, sp, #624
.L020490f0:
    add ip, sp, #608
.L020490f4:
    ldr lr, [r1]
.L020490f8:
    ldr r3, [sp, #44]
.L020490fc:
    stmdb r7, {r4, r5}
.L02049100:
    stmia ip, {sl, fp}
.L02049104:
    ldr r7, [sp, #28]
.L02049108:
    ldr sl, [sp, #196]
.L0204910c:
    ldr ip, [sp, #172]
.L02049110:
    add sl, r7, sl
.L02049114:
    ldr fp, [sp, #180]
.L02049118:
    ldr r1, [sp, #44]
.L0204911c:
    ldr r5, [sp, #236]
.L02049120:
    ldr r4, [sp, #244]
.L02049124:
    str sl, [sp, #196]
.L02049128:
    ldr sl, [sp, #192]
.L0204912c:
    mov r0, r1
.L02049130:
    mov r1, r0, asr #31
.L02049134:
    add ip, fp, ip
.L02049138:
    ldr fp, [sp, #196]
.L0204913c:
    strd r0, [sp, #112]
.L02049140:
    add r5, r4, r5
.L02049144:
    ldr r6, [sp, #220]
.L02049148:
    str ip, [sp, #172]
.L0204914c:
    ldr r0, [sp, #232]
.L02049150:
    mov r4, sl, lsr #16
.L02049154:
    ldr sl, [sp, #168]
.L02049158:
    orr r4, r4, fp, lsl #16
.L0204915c:
    ldr fp, [sp, #172]
.L02049160:
    add r9, r6, r9
.L02049164:
    mov r8, r8, lsr #16
.L02049168:
    mov r6, r0, lsr #16
.L0204916c:
    mov r0, sl, lsr #16
.L02049170:
    orr r6, r6, r5, lsl #16
.L02049174:
    orr r0, r0, fp, lsl #16
.L02049178:
    orr r8, r8, r9, lsl #16
.L0204917c:
    add ip, r4, r0
.L02049180:
    add r8, r6, r8
.L02049184:
    ldr r0, [sp, #112]
.L02049188:
    ldr r6, [sp, #620]
.L0204918c:
    ldr r7, [sp, #612]
.L02049190:
    rsb r2, r3, #0
.L02049194:
    mov r3, r2, asr #31
.L02049198:
    mul r6, r2, r6
.L0204919c:
    mul r7, r0, r7
.L020491a0:
    mov sl, ip
.L020491a4:
    mov fp, sl, asr #31
.L020491a8:
    add r0, sp, #640
.L020491ac:
    stmdb r0, {sl, fp}
.L020491b0:
    add ip, sp, #624
.L020491b4:
    mov sl, r8
.L020491b8:
    mov fp, sl, asr #31
.L020491bc:
    stmia ip, {sl, fp}
.L020491c0:
    mov r8, lr
.L020491c4:
    mov r9, r8, asr #31
.L020491c8:
    rsb r4, lr, #0
.L020491cc:
    mov lr, fp
.L020491d0:
    ldr fp, [sp, #616]
.L020491d4:
    ldr ip, [sp, #636]
.L020491d8:
    mla fp, r3, fp, r6
.L020491dc:
    ldr r6, [sp, #616]
.L020491e0:
    str r5, [sp, #236]
.L020491e4:
    umull r0, r1, r2, r6
.L020491e8:
    mov r5, r4, asr #31
.L020491ec:
    ldr r2, [sp, #608]
.L020491f0:
    ldr sl, [sp, #116]
.L020491f4:
    mul ip, r4, ip
.L020491f8:
    ldr r6, [sp, #112]
.L020491fc:
    mla sl, r2, sl, r7
.L02049200:
    mov r7, r2
.L02049204:
    umull r2, r3, r6, r7
.L02049208:
    ldr r6, [sp, #632]
.L0204920c:
    mul lr, r8, lr
.L02049210:
    mla r6, r5, r6, ip
.L02049214:
    ldr ip, [sp, #632]
.L02049218:
    str r6, [sp, #108]
.L0204921c:
    umull r6, r7, r4, ip
.L02049220:
    ldr r4, [sp, #624]
.L02049224:
    add r3, sl, r3
.L02049228:
    mla r4, r9, r4, lr
.L0204922c:
    str r4, [sp, #104]
.L02049230:
    ldr lr, [sp, #452]
.L02049234:
    ldr ip, [sp, #624]
.L02049238:
    ldr sl, [sp, #444]
.L0204923c:
    umull r4, r5, r8, ip
.L02049240:
    add r1, fp, r1
.L02049244:
    ldr r8, [lr]
.L02049248:
    mov r0, r0, lsr #16
.L0204924c:
    ldr ip, [sl]
.L02049250:
    orr r0, r0, r1, lsl #16
.L02049254:
    add r8, r8, r0
.L02049258:
    ldr r9, [lr, #4]
.L0204925c:
    rsb r8, ip, r8
.L02049260:
    mov r2, r2, lsr #16
.L02049264:
    ldr ip, [sp, #104]
.L02049268:
    ldr lr, [sl, #4]
.L0204926c:
    ldr fp, [sp, #108]
.L02049270:
    orr r2, r2, r3, lsl #16
.L02049274:
    add r3, r9, r2
.L02049278:
    add r5, ip, r5
.L0204927c:
    mov r4, r4, lsr #16
.L02049280:
    rsb r3, lr, r3
.L02049284:
    add r7, fp, r7
.L02049288:
    orr r4, r4, r5, lsl #16
.L0204928c:
    mov r6, r6, lsr #16
.L02049290:
    rsb r1, r4, r3
.L02049294:
    orr r6, r6, r7, lsl #16
.L02049298:
    rsb r8, r6, r8
.L0204929c:
    mov r6, r1
.L020492a0:
    mov r7, r6, asr #31
.L020492a4:
    ldr r1, [sp, #748]
.L020492a8:
    ldr r3, [sp, #740]
.L020492ac:
    mul r1, r6, r1
.L020492b0:
    mov r9, r8, asr #31
.L020492b4:
    mul r3, r8, r3
.L020492b8:
    ldr r0, [sp, #744]
.L020492bc:
    ldr lr, [sp, #736]
.L020492c0:
    mla r0, r7, r0, r1
.L020492c4:
    ldr ip, [sp, #736]
.L020492c8:
    ldr r1, [sp, #744]
.L020492cc:
    mla ip, r9, ip, r3
.L020492d0:
    umull r4, r5, r8, lr
.L020492d4:
    umull r2, r3, r6, r1
.L020492d8:
    ldr r6, [sp, #440]
.L020492dc:
    ldr r7, [sp, #52]
.L020492e0:
    ldr r1, [r6, #4]
.L020492e4:
    add r5, ip, r5
.L020492e8:
    add r3, r0, r3
.L020492ec:
    ldr ip, [r7, #32]
.L020492f0:
    mov r4, r4, lsr #16
.L020492f4:
    mov r2, r2, lsr #16
.L020492f8:
    orr r4, r4, r5, lsl #16
.L020492fc:
    orr r2, r2, r3, lsl #16
.L02049300:
    mov r1, r1, asr #7
.L02049304:
    add r4, r4, r2
.L02049308:
    smull r2, r3, r1, ip
.L0204930c:
    ldr r8, [sp, #48]
.L02049310:
    mov r2, r2, lsr #16
.L02049314:
    ldr r6, [r8, #116]
.L02049318:
    ldr r7, [r7, #16]
.L0204931c:
    orr r2, r2, r3, lsl #16
.L02049320:
    rsb r4, r4, #0
.L02049324:
    smull r0, r1, r4, r2
.L02049328:
    smull r2, r3, r7, r6
.L0204932c:
    ldr r9, [sp, #52]
.L02049330:
    mov r0, r0, lsr #16
.L02049334:
    ldr lr, [r9, #20]
.L02049338:
    orr r0, r0, r1, lsl #16
.L0204933c:
    mov r2, r2, lsr #16
.L02049340:
    orr r2, r2, r3, lsl #16
.L02049344:
    add lr, lr, r0
.L02049348:
    cmp r2, lr
.L0204934c:
    rsb ip, r2, #0
.L02049350:
    str ip, [sp, #796]
.L02049354:
    str r2, [sp, #800]
.L02049358:
    str lr, [sp, #792]
.L0204935c:
    addgt r2, sp, #792
.L02049360:
    addle r2, sp, #800
.L02049364:
    ldr r2, [r2]
.L02049368:
    ldr r3, [sp, #796]
.L0204936c:
    str r2, [sp, #804]
.L02049370:
    cmp r2, r3
.L02049374:
    addlt r0, sp, #796
.L02049378:
    addge r0, sp, #804
.L0204937c:
    ldr r0, [r0]
.L02049380:
    ldr sl, [sp, #52]
.L02049384:
    ldr fp, [sp, #440]
.L02049388:
    str r0, [sp, #700]
.L0204938c:
    ldr r1, [fp]
.L02049390:
    ldr r0, [sl, #20]
.L02049394:
    ldr ip, [sp, #700]
.L02049398:
    mov r1, r1, lsl #7
.L0204939c:
    rsb r0, r0, ip
.L020493a0:
    smull r2, r3, r1, r0
.L020493a4:
    mov r2, r2, lsr #16
.L020493a8:
    ldr r1, [sp, #740]
.L020493ac:
    ldr r0, [sp, #744]
.L020493b0:
    orr r2, r2, r3, lsl #16
.L020493b4:
    mov r3, r2, asr #31
.L020493b8:
    mul r1, r2, r1
.L020493bc:
    mul r0, r3, r0
.L020493c0:
    ldr r4, [sp, #744]
.L020493c4:
    ldr r6, [sp, #736]
.L020493c8:
    ldr lr, [sp, #736]
.L020493cc:
    ldr ip, [sp, #748]
.L020493d0:
    mla lr, r3, lr, r1
.L020493d4:
    mla ip, r2, ip, r0
.L020493d8:
    umull r0, r1, r4, r2
.L020493dc:
    umull r4, r5, r2, r6
.L020493e0:
    add r5, lr, r5
.L020493e4:
    mov r2, r4, lsr #16
.L020493e8:
    orr r2, r2, r5, lsl #16
.L020493ec:
    mov r8, r2
.L020493f0:
    mov r9, r8, asr #31
.L020493f4:
    add sl, sp, #656
.L020493f8:
    stmdb sl, {r8, r9}
.L020493fc:
    add r1, ip, r1
.L02049400:
    ldr r5, [sp, #632]
.L02049404:
    mov r6, r0, lsr #16
.L02049408:
    orr r6, r6, r1, lsl #16
.L0204940c:
    mov ip, r9
.L02049410:
    mov r0, r6
.L02049414:
    mov r1, r0, asr #31
.L02049418:
    ldr r4, [sp, #624]
.L0204941c:
    mul ip, r5, ip
.L02049420:
    mov r3, r1
.L02049424:
    mul r3, r4, r3
.L02049428:
    add r2, sp, #640
.L0204942c:
    ldr lr, [sp, #636]
.L02049430:
    stmia r2, {r0, r1}
.L02049434:
    ldr r7, [sp, #640]
.L02049438:
    mla lr, r8, lr, ip
.L0204943c:
    ldr r6, [sp, #624]
.L02049440:
    ldr r8, [sp, #648]
.L02049444:
    ldr r4, [sp, #628]
.L02049448:
    ldr sl, [sp, #608]
.L0204944c:
    mla r4, r0, r4, r3
.L02049450:
    umull r0, r1, r6, r7
.L02049454:
    umull r2, r3, r5, r8
.L02049458:
    ldr r9, [sp, #644]
.L0204945c:
    add r1, r4, r1
.L02049460:
    add r3, lr, r3
.L02049464:
    ldr r5, [sp, #756]
.L02049468:
    mov r0, r0, lsr #16
.L0204946c:
    mov r2, r2, lsr #16
.L02049470:
    mul r9, sl, r9
.L02049474:
    ldr r6, [sp, #756]
.L02049478:
    orr r0, r0, r1, lsl #16
.L0204947c:
    orr r2, r2, r3, lsl #16
.L02049480:
    mul r5, r8, r5
.L02049484:
    rsb r0, r2, r0
.L02049488:
    mov r2, r0
.L0204948c:
    mov r3, r2, asr #31
.L02049490:
    mul r6, r7, r6
.L02049494:
    strd r2, [sp, #96]
.L02049498:
    ldr sl, [sp, #652]
.L0204949c:
    ldr r3, [sp, #752]
.L020494a0:
    str r9, [sp, #20]
.L020494a4:
    ldr ip, [sp, #616]
.L020494a8:
    ldr fp, [sp, #652]
.L020494ac:
    ldr r9, [sp, #644]
.L020494b0:
    mla sl, r3, sl, r5
.L020494b4:
    mov r5, r3
.L020494b8:
    mla r9, r3, r9, r6
.L020494bc:
    umull r0, r1, r7, r5
.L020494c0:
    umull r2, r3, r8, r5
.L020494c4:
    mov r6, r7
.L020494c8:
    mul fp, ip, fp
.L020494cc:
    ldr r8, [sp, #96]
.L020494d0:
    ldr r7, [sp, #764]
.L020494d4:
    str fp, [sp, #16]
.L020494d8:
    mul r7, r8, r7
.L020494dc:
    ldr fp, [sp, #608]
.L020494e0:
    ldr r8, [sp, #648]
.L020494e4:
    ldr lr, [sp, #616]
.L020494e8:
    umull r4, r5, fp, r6
.L020494ec:
    mov ip, r6
.L020494f0:
    str r7, [sp, #4]
.L020494f4:
    ldr fp, [sp, #612]
.L020494f8:
    umull r6, r7, lr, r8
.L020494fc:
    ldr lr, [sp, #20]
.L02049500:
    add r1, r9, r1
.L02049504:
    mla fp, ip, fp, lr
.L02049508:
    ldr lr, [sp, #16]
.L0204950c:
    ldr ip, [sp, #620]
.L02049510:
    add r3, sl, r3
.L02049514:
    mla ip, r8, ip, lr
.L02049518:
    ldr r8, [sp, #444]
.L0204951c:
    str ip, [sp, #84]
.L02049520:
    ldr r8, [r8]
.L02049524:
    mov r2, r2, lsr #16
.L02049528:
    str r8, [sp, #12]
.L0204952c:
    ldr r8, [sp, #760]
.L02049530:
    ldr r9, [sp, #4]
.L02049534:
    ldr lr, [sp, #100]
.L02049538:
    ldr ip, [sp, #444]
.L0204953c:
    mla lr, r8, lr, r9
.L02049540:
    ldr ip, [ip, #4]
.L02049544:
    ldr sl, [sp, #96]
.L02049548:
    str ip, [sp, #8]
.L0204954c:
    mov ip, r8
.L02049550:
    umull r8, r9, sl, ip
.L02049554:
    str lr, [sp, #92]
.L02049558:
    ldr ip, [sp, #644]
.L0204955c:
    ldr lr, [sp, #768]
.L02049560:
    ldr sl, [sp, #652]
.L02049564:
    mul ip, lr, ip
.L02049568:
    mul sl, lr, sl
.L0204956c:
    ldr lr, [sp, #12]
.L02049570:
    orr r2, r2, r3, lsl #16
.L02049574:
    ldr r3, [sp, #84]
.L02049578:
    str ip, [sp, #88]
.L0204957c:
    mov r0, r0, lsr #16
.L02049580:
    rsb ip, r2, lr
.L02049584:
    ldr r2, [sp, #8]
.L02049588:
    orr r0, r0, r1, lsl #16
.L0204958c:
    add r5, fp, r5
.L02049590:
    add r7, r3, r7
.L02049594:
    ldr fp, [sp, #444]
.L02049598:
    mov r4, r4, lsr #16
.L0204959c:
    mov r6, r6, lsr #16
.L020495a0:
    rsb lr, r0, r2
.L020495a4:
    orr r4, r4, r5, lsl #16
.L020495a8:
    orr r6, r6, r7, lsl #16
.L020495ac:
    stmia fp, {ip, lr}
.L020495b0:
    ldr r0, [sp, #648]
.L020495b4:
    ldr lr, [sp, #92]
.L020495b8:
    rsb r4, r6, r4
.L020495bc:
    ldr fp, [sp, #772]
.L020495c0:
    mov r6, r4
.L020495c4:
    mov r7, r6, asr #31
.L020495c8:
    ldr ip, [sp, #448]
.L020495cc:
    ldr r4, [sp, #768]
.L020495d0:
    mla fp, r0, fp, sl
.L020495d4:
    add r9, lr, r9
.L020495d8:
    ldr r1, [sp, #640]
.L020495dc:
    ldr r2, [sp, #88]
.L020495e0:
    ldr lr, [sp, #640]
.L020495e4:
    ldr sl, [sp, #772]
.L020495e8:
    ldr r3, [ip]
.L020495ec:
    mov r5, r0
.L020495f0:
    mov ip, r4
.L020495f4:
    mla sl, r1, sl, r2
.L020495f8:
    mov r8, r8, lsr #16
.L020495fc:
    umull r0, r1, r4, r5
.L02049600:
    ldr r2, [sp, #776]
.L02049604:
    umull r4, r5, ip, lr
.L02049608:
    orr r8, r8, r9, lsl #16
.L0204960c:
    rsb r3, r8, r3
.L02049610:
    mul r2, r7, r2
.L02049614:
    ldr r8, [sp, #448]
.L02049618:
    ldr r9, [sp, #452]
.L0204961c:
    str r3, [r8]
.L02049620:
    add r5, sl, r5
.L02049624:
    ldr r8, [sp, #780]
.L02049628:
    ldr sl, [sp, #776]
.L0204962c:
    add r1, fp, r1
.L02049630:
    ldr ip, [r9]
.L02049634:
    mov r0, r0, lsr #16
.L02049638:
    orr r0, r0, r1, lsl #16
.L0204963c:
    ldr lr, [r9, #4]
.L02049640:
    mla r8, r6, r8, r2
.L02049644:
    mov r4, r4, lsr #16
.L02049648:
    umull r2, r3, sl, r6
.L0204964c:
    add ip, ip, r0
.L02049650:
    orr r4, r4, r5, lsl #16
.L02049654:
    str ip, [r9]
.L02049658:
    add lr, lr, r4
.L0204965c:
    ldr fp, [sp, #456]
.L02049660:
    str lr, [r9, #4]
.L02049664:
    ldr r1, [fp]
.L02049668:
    add r3, r8, r3
.L0204966c:
    mov r2, r2, lsr #16
.L02049670:
    orr r2, r2, r3, lsl #16
.L02049674:
    ldr ip, [sp, #484]
.L02049678:
    add r1, r1, r2
.L0204967c:
    ldr r0, [sp, #52]
.L02049680:
    str r1, [fp]
.L02049684:
    ldr lr, [sp, #80]
.L02049688:
    ldr r1, [sp, #700]
.L0204968c:
    add ip, ip, #1
.L02049690:
    str r1, [r0, #20]
.L02049694:
    cmp lr, ip
.L02049698:
    add r0, r0, #48
.L0204969c:
    str ip, [sp, #484]
.L020496a0:
    str r0, [sp, #52]
.L020496a4:
    bgt .L02048e24
.L020496a8:
    ldr r2, [sp, #440]
.L020496ac:
    ldr r4, [sp, #464]
.L020496b0:
    ldr r5, [sp, #48]
.L020496b4:
    ldr r3, [r2, #20]
.L020496b8:
    add r4, r4, #1
.L020496bc:
    add r5, r5, #128
.L020496c0:
    cmp r3, r4
.L020496c4:
    str r4, [sp, #464]
.L020496c8:
    str r5, [sp, #48]
.L020496cc:
    bgt .L020482d8
.L020496d0:
    add sp, sp, #812
.L020496d4:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L020496d8:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L020496dc:
    ldr r6, [r0, #20]
.L020496e0:
    sub sp, sp, #492
.L020496e4:
    cmp r6, #0
.L020496e8:
    str r0, [sp, #356]
.L020496ec:
    ble .L0204a074
.L020496f0:
    ldr r3, [pc, #2508]
.L020496f4:
    ldr r0, [r0, #16]
.L020496f8:
    ldr r3, [r3]
.L020496fc:
    mov r1, #0
.L02049700:
    str r0, [sp, #76]
.L02049704:
    str r3, [sp, #80]
.L02049708:
    str r1, [sp, #360]
.L0204970c:
    ldr r3, [sp, #76]
.L02049710:
    ldr r4, [pc, #2480]
.L02049714:
    ldr r2, [r3, #96]
.L02049718:
    add ip, sp, #384
.L0204971c:
    mov sl, r2
.L02049720:
    mov fp, sl, asr #31
.L02049724:
    stmdb ip, {sl, fp}
.L02049728:
    rsb r3, sl, #0
.L0204972c:
    mov ip, fp
.L02049730:
    mla ip, r4, ip, r3
.L02049734:
    ldr lr, [sp, #376]
.L02049738:
    ldr r3, [sp, #76]
.L0204973c:
    umull r0, r1, lr, r4
.L02049740:
    ldr r3, [r3, #112]
.L02049744:
    ldr r4, [sp, #76]
.L02049748:
    str r3, [sp, #368]
.L0204974c:
    ldr r3, [r4, #100]
.L02049750:
    ldr r2, [sp, #76]
.L02049754:
    mov sl, r3
.L02049758:
    mov fp, sl, asr #31
.L0204975c:
    add lr, sp, #384
.L02049760:
    ldr r2, [r2, #108]
.L02049764:
    stmia lr, {sl, fp}
.L02049768:
    ldr r5, [sp, #80]
.L0204976c:
    ldr r4, [sp, #384]
.L02049770:
    str r2, [sp, #364]
.L02049774:
    ldr r7, [sp, #368]
.L02049778:
    mov r2, r4, lsl #16
.L0204977c:
    cmp r5, #0
.L02049780:
    mov r3, fp, lsl #16
.L02049784:
    ldr r5, [sp, #364]
.L02049788:
    add r1, ip, r1
.L0204978c:
    orr r3, r3, sl, lsr #16
.L02049790:
    mov r8, r0, lsr #16
.L02049794:
    mov r0, r2, lsr #16
.L02049798:
    orr r0, r0, r3, lsl #16
.L0204979c:
    orr r8, r8, r1, lsl #16
.L020497a0:
    mov r9, r1, asr #16
.L020497a4:
    ldr lr, [r5, #120]
.L020497a8:
    ldr r2, [r5, #128]
.L020497ac:
    ldr ip, [r7, #120]
.L020497b0:
    ldr r3, [r7, #128]
.L020497b4:
    beq .L0204a07c
.L020497b8:
    ldr sl, [sp, #76]
.L020497bc:
    ldr sl, [sl, #124]
.L020497c0:
    cmp sl, #0
.L020497c4:
    str sl, [sp, #88]
.L020497c8:
    ble .L0204a054
.L020497cc:
    mov r4, #0
.L020497d0:
    mov r6, r0
.L020497d4:
    mov r7, r6, asr #31
.L020497d8:
    add sl, sp, #448
.L020497dc:
    mov r0, r8
.L020497e0:
    mov r1, r0, asr #31
.L020497e4:
    str r4, [sp, #372]
.L020497e8:
    add r4, sp, #448
.L020497ec:
    stmdb sl, {r6, r7}
.L020497f0:
    stmia r4, {r0, r1}
.L020497f4:
    mov r6, r2
.L020497f8:
    mov r7, r6, asr #31
.L020497fc:
    mov r0, lr
.L02049800:
    mov r1, r0, asr #31
.L02049804:
    add sl, sp, #464
.L02049808:
    add r2, sp, #464
.L0204980c:
    stmia r2, {r0, r1}
.L02049810:
    mov r4, r3
.L02049814:
    mov r5, r4, asr #31
.L02049818:
    stmdb sl, {r6, r7}
.L0204981c:
    add lr, sp, #480
.L02049820:
    mov sl, ip
.L02049824:
    mov fp, sl, asr #31
.L02049828:
    ldr r0, [sp, #364]
.L0204982c:
    ldr r1, [sp, #364]
.L02049830:
    ldr r2, [sp, #368]
.L02049834:
    ldr r3, [sp, #368]
.L02049838:
    add r6, sp, #480
.L0204983c:
    stmia lr, {sl, fp}
.L02049840:
    stmdb r6, {r4, r5}
.L02049844:
    add r0, r0, #28
.L02049848:
    add r1, r1, #12
.L0204984c:
    add r2, r2, #28
.L02049850:
    add r3, r3, #12
.L02049854:
    mov r4, #0
.L02049858:
    str r0, [sp, #92]
.L0204985c:
    str r1, [sp, #100]
.L02049860:
    str r2, [sp, #96]
.L02049864:
    str r3, [sp, #104]
.L02049868:
    str r4, [sp, #84]
.L0204986c:
    ldr r5, [sp, #76]
.L02049870:
    ldr r6, [sp, #84]
.L02049874:
    ldr r3, [sp, #376]
.L02049878:
    add sl, r5, r6
.L0204987c:
    ldr r0, [sl, #16]
.L02049880:
    ldr r2, [sp, #384]
.L02049884:
    mov r1, r0, asr #31
.L02049888:
    mul r3, r1, r3
.L0204988c:
    ldr fp, [sp, #380]
.L02049890:
    ldr r4, [sl, #20]
.L02049894:
    mul r2, r1, r2
.L02049898:
    mla fp, r0, fp, r3
.L0204989c:
    ldr ip, [sp, #444]
.L020498a0:
    ldr r7, [sp, #452]
.L020498a4:
    mov r5, r4, asr #31
.L020498a8:
    ldr r6, [sp, #384]
.L020498ac:
    ldr lr, [sp, #388]
.L020498b0:
    mul ip, r4, ip
.L020498b4:
    mul r7, r4, r7
.L020498b8:
    mla lr, r0, lr, r2
.L020498bc:
    umull r2, r3, r6, r0
.L020498c0:
    str fp, [sp, #352]
.L020498c4:
    ldr fp, [sp, #440]
.L020498c8:
    add r6, sp, #336
.L020498cc:
    mla fp, r5, fp, ip
.L020498d0:
    mov ip, r7
.L020498d4:
    ldr r7, [sp, #448]
.L020498d8:
    stmia r6, {r2, r3}
.L020498dc:
    ldr r2, [sp, #376]
.L020498e0:
    str lr, [sp, #348]
.L020498e4:
    mov lr, r7
.L020498e8:
    mla ip, r7, r5, ip
.L020498ec:
    umull r8, r9, r2, r0
.L020498f0:
    umull r6, r7, r4, lr
.L020498f4:
    ldr r0, [sp, #76]
.L020498f8:
    ldr lr, [sp, #440]
.L020498fc:
    ldr r1, [sp, #84]
.L02049900:
    ldr r5, [sp, #364]
.L02049904:
    umull r2, r3, r4, lr
.L02049908:
    ldr lr, [r0, r1]
.L0204990c:
    ldr r1, [r5, #28]
.L02049910:
    ldr r5, [sp, #356]
.L02049914:
    ldr r4, [sp, #92]
.L02049918:
    ldr r5, [r5]
.L0204991c:
    ldr r0, [r4, #4]
.L02049920:
    str r5, [sp, #64]
.L02049924:
    ldr r5, [sp, #100]
.L02049928:
    ldr r4, [sl, #4]
.L0204992c:
    ldr r5, [r5, #8]
.L02049930:
    rsb lr, r1, lr
.L02049934:
    str r5, [sp, #56]
.L02049938:
    ldr r5, [sp, #100]
.L0204993c:
    add r3, fp, r3
.L02049940:
    ldr r5, [r5, #4]
.L02049944:
    rsb r4, r0, r4
.L02049948:
    str r5, [sp, #52]
.L0204994c:
    ldr r5, [sp, #100]
.L02049950:
    ldr r0, [sp, #352]
.L02049954:
    ldr r5, [r5, #12]
.L02049958:
    ldr fp, [sp, #336]
.L0204995c:
    str r5, [sp, #48]
.L02049960:
    ldr r5, [sp, #364]
.L02049964:
    ldr r1, [sp, #348]
.L02049968:
    ldr r5, [r5, #12]
.L0204996c:
    add r9, r0, r9
.L02049970:
    str r5, [sp, #60]
.L02049974:
    ldr r5, [sp, #340]
.L02049978:
    add r7, ip, r7
.L0204997c:
    add r1, r1, r5
.L02049980:
    mov r0, fp, lsr #16
.L02049984:
    mov r8, r8, lsr #16
.L02049988:
    mov r2, r2, lsr #16
.L0204998c:
    mov r6, r6, lsr #16
.L02049990:
    orr r2, r2, r3, lsl #16
.L02049994:
    orr r8, r8, r9, lsl #16
.L02049998:
    orr r0, r0, r1, lsl #16
.L0204999c:
    orr r6, r6, r7, lsl #16
.L020499a0:
    add r8, r8, r2
.L020499a4:
    str r1, [sp, #340]
.L020499a8:
    add r2, r0, r6
.L020499ac:
    add r3, sp, #400
.L020499b0:
    mov r0, lr
.L020499b4:
    mov r1, r0, asr #31
.L020499b8:
    stmia r3, {r0, r1}
.L020499bc:
    ldr r0, [sp, #56]
.L020499c0:
    add r3, sp, #272
.L020499c4:
    mov r1, r0, asr #31
.L020499c8:
    stmdb r3, {r0, r1}
.L020499cc:
    ldr r1, [sp, #52]
.L020499d0:
    ldr fp, [sp, #60]
.L020499d4:
    mov r0, r1
.L020499d8:
    mov r1, r0, asr #31
.L020499dc:
    mov r6, fp
.L020499e0:
    mov r7, r6, asr #31
.L020499e4:
    strd r0, [sp, #248]
.L020499e8:
    ldr fp, [sp, #64]
.L020499ec:
    ldr r1, [sp, #48]
.L020499f0:
    mov r3, fp, lsl #7
.L020499f4:
    mov r0, r1
.L020499f8:
    mov r1, r0, asr #31
.L020499fc:
    strd r0, [sp, #240]
.L02049a00:
    add fp, sp, #400
.L02049a04:
    mov r0, r3
.L02049a08:
    mov r1, r0, asr #31
.L02049a0c:
    stmdb fp, {r0, r1}
.L02049a10:
    add r3, sp, #320
.L02049a14:
    mov r0, r8
.L02049a18:
    mov r1, r0, asr #31
.L02049a1c:
    stmia r3, {r0, r1}
.L02049a20:
    mov r0, r2
.L02049a24:
    mov r1, r0, asr #31
.L02049a28:
    add r3, sp, #304
.L02049a2c:
    stmdb r3, {r0, r1}
.L02049a30:
    ldr r0, [sp, #244]
.L02049a34:
    mov r5, r4, asr #31
.L02049a38:
    mul r0, r4, r0
.L02049a3c:
    ldr fp, [sp, #368]
.L02049a40:
    ldr r9, [sl, #12]
.L02049a44:
    ldr r1, [sl, #8]
.L02049a48:
    ldr fp, [fp, #28]
.L02049a4c:
    ldr sl, [sp, #96]
.L02049a50:
    ldr lr, [sp, #400]
.L02049a54:
    ldr r2, [sl, #4]
.L02049a58:
    str fp, [sp, #12]
.L02049a5c:
    ldr ip, [sp, #404]
.L02049a60:
    ldr fp, [sp, #264]
.L02049a64:
    ldr sl, [sp, #252]
.L02049a68:
    str r0, [sp, #236]
.L02049a6c:
    ldr r3, [sp, #104]
.L02049a70:
    mul sl, lr, sl
.L02049a74:
    ldr r8, [r3, #8]
.L02049a78:
    ldr lr, [r3, #4]
.L02049a7c:
    ldr r0, [r3, #12]
.L02049a80:
    ldr r3, [sp, #368]
.L02049a84:
    str r0, [sp, #40]
.L02049a88:
    ldr r3, [r3, #12]
.L02049a8c:
    ldr r0, [sp, #392]
.L02049a90:
    str r3, [sp, #4]
.L02049a94:
    ldr r3, [sp, #300]
.L02049a98:
    str lr, [sp, #44]
.L02049a9c:
    ldr lr, [sp, #324]
.L02049aa0:
    mul r3, r0, r3
.L02049aa4:
    mul lr, r0, lr
.L02049aa8:
    ldr r0, [sp, #12]
.L02049aac:
    str r3, [sp, #288]
.L02049ab0:
    rsb r3, r0, r1
.L02049ab4:
    rsb r2, r2, r9
.L02049ab8:
    mov r0, r3
.L02049abc:
    mov r1, r0, asr #31
.L02049ac0:
    str lr, [sp, #312]
.L02049ac4:
    add lr, sp, #416
.L02049ac8:
    stmia lr, {r0, r1}
.L02049acc:
    add r3, sp, #416
.L02049ad0:
    mov r0, r2
.L02049ad4:
    mov r1, r0, asr #31
.L02049ad8:
    stmdb r3, {r0, r1}
.L02049adc:
    mov r2, r8
.L02049ae0:
    mov r3, r2, asr #31
.L02049ae4:
    mul ip, r6, ip
.L02049ae8:
    strd r2, [sp, #200]
.L02049aec:
    ldr r1, [sp, #4]
.L02049af0:
    ldr r3, [sp, #40]
.L02049af4:
    ldr lr, [sp, #400]
.L02049af8:
    mov r0, r1
.L02049afc:
    mov r1, r0, asr #31
.L02049b00:
    mov r2, r3
.L02049b04:
    mov r3, r2, asr #31
.L02049b08:
    strd r0, [sp, #224]
.L02049b0c:
    strd r2, [sp, #168]
.L02049b10:
    ldr r1, [sp, #44]
.L02049b14:
    mov r3, lr
.L02049b18:
    mla r3, r7, r3, ip
.L02049b1c:
    mov r0, r1
.L02049b20:
    mov r1, r0, asr #31
.L02049b24:
    mul fp, r5, fp
.L02049b28:
    strd r0, [sp, #192]
.L02049b2c:
    ldr r2, [sp, #240]
.L02049b30:
    ldr r0, [sp, #248]
.L02049b34:
    str r3, [sp, #276]
.L02049b38:
    umull r8, r9, lr, r0
.L02049b3c:
    umull r0, r1, r4, r2
.L02049b40:
    umull r2, r3, r6, lr
.L02049b44:
    ldr lr, [sp, #268]
.L02049b48:
    ldr ip, [sp, #404]
.L02049b4c:
    mla lr, r4, lr, fp
.L02049b50:
    str lr, [sp, #260]
.L02049b54:
    ldr lr, [sp, #248]
.L02049b58:
    ldr fp, [sp, #264]
.L02049b5c:
    mla ip, lr, ip, sl
.L02049b60:
    mov r6, r2
.L02049b64:
    str ip, [sp, #28]
.L02049b68:
    mov r7, r3
.L02049b6c:
    ldr lr, [sp, #412]
.L02049b70:
    umull r2, r3, fp, r4
.L02049b74:
    ldr r4, [sp, #200]
.L02049b78:
    ldr sl, [sp, #240]
.L02049b7c:
    mul lr, r4, lr
.L02049b80:
    ldr fp, [sp, #236]
.L02049b84:
    ldr ip, [sp, #224]
.L02049b88:
    mla fp, sl, r5, fp
.L02049b8c:
    ldr r4, [sp, #408]
.L02049b90:
    ldr sl, [sp, #420]
.L02049b94:
    str lr, [sp, #24]
.L02049b98:
    ldr lr, [sp, #172]
.L02049b9c:
    mul sl, ip, sl
.L02049ba0:
    mul lr, r4, lr
.L02049ba4:
    ldr ip, [sp, #416]
.L02049ba8:
    ldr r5, [sp, #196]
.L02049bac:
    str lr, [sp, #164]
.L02049bb0:
    mul r5, ip, r5
.L02049bb4:
    ldr lr, [sp, #296]
.L02049bb8:
    ldr ip, [sp, #392]
.L02049bbc:
    str r5, [sp, #188]
.L02049bc0:
    umull r4, r5, ip, lr
.L02049bc4:
    add ip, sp, #288
.L02049bc8:
    stmdb ip, {r4, r5}
.L02049bcc:
    ldr r5, [sp, #320]
.L02049bd0:
    ldr ip, [sp, #312]
.L02049bd4:
    ldr r4, [sp, #396]
.L02049bd8:
    mov lr, r5
.L02049bdc:
    mla r4, r5, r4, ip
.L02049be0:
    ldr ip, [sp, #392]
.L02049be4:
    str r4, [sp, #316]
.L02049be8:
    umull r4, r5, ip, lr
.L02049bec:
    add ip, sp, #304
.L02049bf0:
    stmia ip, {r4, r5}
.L02049bf4:
    ldr r5, [sp, #296]
.L02049bf8:
    ldr ip, [sp, #288]
.L02049bfc:
    ldr r4, [sp, #396]
.L02049c00:
    ldr lr, [sp, #192]
.L02049c04:
    mla r4, r5, r4, ip
.L02049c08:
    ldr ip, [sp, #416]
.L02049c0c:
    str r4, [sp, #292]
.L02049c10:
    umull r4, r5, ip, lr
.L02049c14:
    ldr ip, [sp, #408]
.L02049c18:
    ldr lr, [sp, #168]
.L02049c1c:
    strd r4, [sp, #176]
.L02049c20:
    umull r4, r5, ip, lr
.L02049c24:
    strd r4, [sp, #152]
.L02049c28:
    ldr r4, [sp, #276]
.L02049c2c:
    ldr lr, [sp, #228]
.L02049c30:
    add r7, r4, r7
.L02049c34:
    ldr r4, [sp, #416]
.L02049c38:
    ldr ip, [sp, #28]
.L02049c3c:
    mla lr, r4, lr, sl
.L02049c40:
    ldr r5, [sp, #260]
.L02049c44:
    add r9, ip, r9
.L02049c48:
    str lr, [sp, #220]
.L02049c4c:
    ldr ip, [sp, #224]
.L02049c50:
    add r1, fp, r1
.L02049c54:
    umull sl, fp, ip, r4
.L02049c58:
    ldr r4, [sp, #408]
.L02049c5c:
    strd sl, [sp, #208]
.L02049c60:
    add r3, r5, r3
.L02049c64:
    ldr fp, [sp, #200]
.L02049c68:
    ldr r5, [sp, #24]
.L02049c6c:
    ldr sl, [sp, #204]
.L02049c70:
    mov ip, r4
.L02049c74:
    mla sl, r4, sl, r5
.L02049c78:
    ldr lr, [sp, #420]
.L02049c7c:
    umull r4, r5, fp, ip
.L02049c80:
    ldr fp, [sp, #192]
.L02049c84:
    ldr ip, [sp, #188]
.L02049c88:
    mov r6, r6, lsr #16
.L02049c8c:
    mla lr, fp, lr, ip
.L02049c90:
    mov r2, r2, lsr #16
.L02049c94:
    orr r2, r2, r3, lsl #16
.L02049c98:
    orr r6, r6, r7, lsl #16
.L02049c9c:
    mov r0, r0, lsr #16
.L02049ca0:
    orr r0, r0, r1, lsl #16
.L02049ca4:
    add r6, r6, r2
.L02049ca8:
    ldr r1, [sp, #292]
.L02049cac:
    ldr r2, [sp, #284]
.L02049cb0:
    str lr, [sp, #28]
.L02049cb4:
    ldr ip, [sp, #164]
.L02049cb8:
    ldr lr, [sp, #168]
.L02049cbc:
    add r1, r1, r2
.L02049cc0:
    ldr fp, [sp, #412]
.L02049cc4:
    str r1, [sp, #284]
.L02049cc8:
    ldr r7, [sp, #280]
.L02049ccc:
    mov r8, r8, lsr #16
.L02049cd0:
    mla fp, lr, fp, ip
.L02049cd4:
    orr r8, r8, r9, lsl #16
.L02049cd8:
    ldr ip, [sp, #284]
.L02049cdc:
    add r8, r8, r0
.L02049ce0:
    ldr r3, [sp, #304]
.L02049ce4:
    ldr r0, [sp, #308]
.L02049ce8:
    ldr lr, [sp, #316]
.L02049cec:
    mov r2, r7, lsr #16
.L02049cf0:
    orr r2, r2, ip, lsl #16
.L02049cf4:
    add lr, lr, r0
.L02049cf8:
    str r6, [sp, #20]
.L02049cfc:
    mov r0, r3, lsr #16
.L02049d00:
    mov r6, r2
.L02049d04:
    mov r7, r6, asr #31
.L02049d08:
    add ip, sp, #432
.L02049d0c:
    stmia ip, {r6, r7}
.L02049d10:
    orr r0, r0, lr, lsl #16
.L02049d14:
    ldr r7, [sp, #20]
.L02049d18:
    mov r2, r0
.L02049d1c:
    mov r3, r2, asr #31
.L02049d20:
    add r6, sp, #432
.L02049d24:
    mov r0, r7
.L02049d28:
    mov r1, r0, asr #31
.L02049d2c:
    stmdb r6, {r2, r3}
.L02049d30:
    mov r6, r8
.L02049d34:
    mov r7, r6, asr #31
.L02049d38:
    mul r3, r6, r3
.L02049d3c:
    ldr ip, [sp, #436]
.L02049d40:
    ldr r2, [sp, #212]
.L02049d44:
    mul ip, r0, ip
.L02049d48:
    add r5, sl, r5
.L02049d4c:
    str lr, [sp, #308]
.L02049d50:
    str r3, [sp, #140]
.L02049d54:
    ldr lr, [sp, #220]
.L02049d58:
    ldr r3, [sp, #28]
.L02049d5c:
    ldr sl, [sp, #180]
.L02049d60:
    add r2, lr, r2
.L02049d64:
    add sl, r3, sl
.L02049d68:
    str ip, [sp, #148]
.L02049d6c:
    str r2, [sp, #212]
.L02049d70:
    str sl, [sp, #180]
.L02049d74:
    ldr ip, [sp, #156]
.L02049d78:
    ldr lr, [sp, #208]
.L02049d7c:
    add ip, fp, ip
.L02049d80:
    str ip, [sp, #156]
.L02049d84:
    ldr ip, [sp, #176]
.L02049d88:
    mov sl, lr, lsr #16
.L02049d8c:
    ldr lr, [sp, #180]
.L02049d90:
    orr sl, sl, r2, lsl #16
.L02049d94:
    mov r2, ip, lsr #16
.L02049d98:
    orr r2, r2, lr, lsl #16
.L02049d9c:
    ldr lr, [sp, #152]
.L02049da0:
    ldr ip, [sp, #156]
.L02049da4:
    mov r4, r4, lsr #16
.L02049da8:
    orr r4, r4, r5, lsl #16
.L02049dac:
    mov r8, lr, lsr #16
.L02049db0:
    orr r8, r8, ip, lsl #16
.L02049db4:
    add ip, sl, r4
.L02049db8:
    ldr lr, [sp, #424]
.L02049dbc:
    add r8, r2, r8
.L02049dc0:
    mov r2, ip
.L02049dc4:
    mov r3, r2, asr #31
.L02049dc8:
    ldr ip, [sp, #140]
.L02049dcc:
    ldr r4, [sp, #432]
.L02049dd0:
    mla ip, lr, r7, ip
.L02049dd4:
    str ip, [sp, #144]
.L02049dd8:
    ldr ip, [sp, #432]
.L02049ddc:
    ldr sl, [sp, #148]
.L02049de0:
    mul ip, r3, ip
.L02049de4:
    mov fp, r4
.L02049de8:
    mov r9, r8, asr #31
.L02049dec:
    mla sl, r4, r1, sl
.L02049df0:
    umull r4, r5, r0, fp
.L02049df4:
    mov fp, lr
.L02049df8:
    umull r0, r1, r6, lr
.L02049dfc:
    mul fp, r9, fp
.L02049e00:
    ldr r6, [sp, #436]
.L02049e04:
    add r5, sl, r5
.L02049e08:
    mla r6, r2, r6, ip
.L02049e0c:
    ldr ip, [sp, #428]
.L02049e10:
    ldr sl, [sp, #432]
.L02049e14:
    mla ip, r8, ip, fp
.L02049e18:
    ldr fp, [sp, #424]
.L02049e1c:
    ldr lr, [sp, #144]
.L02049e20:
    str r6, [sp, #136]
.L02049e24:
    umull r6, r7, sl, r2
.L02049e28:
    umull r2, r3, fp, r8
.L02049e2c:
    add r1, lr, r1
.L02049e30:
    mov r4, r4, lsr #16
.L02049e34:
    mov r0, r0, lsr #16
.L02049e38:
    orr r4, r4, r5, lsl #16
.L02049e3c:
    orr r0, r0, r1, lsl #16
.L02049e40:
    ldr r5, [sp, #136]
.L02049e44:
    ldr lr, [sp, #432]
.L02049e48:
    rsb r4, r0, r4
.L02049e4c:
    ldr r8, [sp, #460]
.L02049e50:
    ldr sl, [sp, #468]
.L02049e54:
    mov r0, r4
.L02049e58:
    mov r1, r0, asr #31
.L02049e5c:
    add r7, r5, r7
.L02049e60:
    add r3, ip, r3
.L02049e64:
    mov r6, r6, lsr #16
.L02049e68:
    mov r2, r2, lsr #16
.L02049e6c:
    mul r8, r0, r8
.L02049e70:
    mul sl, lr, sl
.L02049e74:
    ldr r4, [sp, #468]
.L02049e78:
    orr r6, r6, r7, lsl #16
.L02049e7c:
    orr r2, r2, r3, lsl #16
.L02049e80:
    rsb r6, r2, r6
.L02049e84:
    mov r2, r6
.L02049e88:
    mov r3, r2, asr #31
.L02049e8c:
    ldr r7, [sp, #464]
.L02049e90:
    mul r4, fp, r4
.L02049e94:
    ldr r6, [sp, #456]
.L02049e98:
    ldr lr, [sp, #456]
.L02049e9c:
    ldr fp, [sp, #436]
.L02049ea0:
    mla lr, r1, lr, r8
.L02049ea4:
    mla fp, r7, fp, sl
.L02049ea8:
    umull r8, r9, r0, r6
.L02049eac:
    ldr sl, [sp, #424]
.L02049eb0:
    ldr ip, [sp, #432]
.L02049eb4:
    ldr r0, [sp, #428]
.L02049eb8:
    mov r1, r7
.L02049ebc:
    mla r0, r7, r0, r4
.L02049ec0:
    umull r4, r5, sl, r7
.L02049ec4:
    umull r6, r7, ip, r1
.L02049ec8:
    ldr sl, [sp, #476]
.L02049ecc:
    ldr r1, [sp, #424]
.L02049ed0:
    ldr ip, [sp, #484]
.L02049ed4:
    mul sl, r2, sl
.L02049ed8:
    mul ip, r1, ip
.L02049edc:
    str sl, [sp, #16]
.L02049ee0:
    str ip, [sp, #112]
.L02049ee4:
    ldr ip, [sp, #432]
.L02049ee8:
    ldr sl, [sp, #484]
.L02049eec:
    ldr r1, [sp, #364]
.L02049ef0:
    mul sl, ip, sl
.L02049ef4:
    ldr r1, [r1, #72]
.L02049ef8:
    add r9, lr, r9
.L02049efc:
    add r5, r0, r5
.L02049f00:
    add r7, fp, r7
.L02049f04:
    ldr r0, [sp, #16]
.L02049f08:
    ldr fp, [sp, #472]
.L02049f0c:
    ldr lr, [sp, #472]
.L02049f10:
    str sl, [sp, #108]
.L02049f14:
    mla lr, r3, lr, r0
.L02049f18:
    str r1, [sp, #8]
.L02049f1c:
    ldr sl, [sp, #364]
.L02049f20:
    umull r0, r1, r2, fp
.L02049f24:
    ldr sl, [sl, #64]
.L02049f28:
    ldr ip, [sp, #364]
.L02049f2c:
    strd r0, [sp, #120]
.L02049f30:
    str sl, [sp, #68]
.L02049f34:
    str lr, [sp, #132]
.L02049f38:
    ldr sl, [ip, #68]
.L02049f3c:
    ldr lr, [sp, #480]
.L02049f40:
    ldr r0, [sp, #112]
.L02049f44:
    ldr ip, [sp, #428]
.L02049f48:
    ldr r2, [sp, #424]
.L02049f4c:
    mla ip, lr, ip, r0
.L02049f50:
    ldr fp, [sp, #436]
.L02049f54:
    str ip, [sp, #116]
.L02049f58:
    ldr ip, [sp, #108]
.L02049f5c:
    umull r0, r1, r2, lr
.L02049f60:
    mla fp, lr, fp, ip
.L02049f64:
    mov r3, lr
.L02049f68:
    ldr lr, [sp, #432]
.L02049f6c:
    mov ip, r3
.L02049f70:
    umull r2, r3, lr, ip
.L02049f74:
    mov r8, r8, lsr #16
.L02049f78:
    ldr lr, [sp, #8]
.L02049f7c:
    orr r8, r8, r9, lsl #16
.L02049f80:
    rsb ip, r8, lr
.L02049f84:
    mov r4, r4, lsr #16
.L02049f88:
    ldr lr, [sp, #68]
.L02049f8c:
    orr r4, r4, r5, lsl #16
.L02049f90:
    rsb r4, r4, lr
.L02049f94:
    mov r6, r6, lsr #16
.L02049f98:
    orr r6, r6, r7, lsl #16
.L02049f9c:
    str r4, [sp, #36]
.L02049fa0:
    ldr r4, [sp, #364]
.L02049fa4:
    rsb sl, r6, sl
.L02049fa8:
    str sl, [r4, #68]
.L02049fac:
    ldr r5, [sp, #36]
.L02049fb0:
    ldr sl, [sp, #132]
.L02049fb4:
    ldr lr, [sp, #124]
.L02049fb8:
    ldr r6, [sp, #368]
.L02049fbc:
    ldr r7, [sp, #368]
.L02049fc0:
    str r5, [r4, #64]
.L02049fc4:
    add lr, sl, lr
.L02049fc8:
    str ip, [r4, #72]
.L02049fcc:
    ldr ip, [r6, #72]
.L02049fd0:
    ldr r4, [r7, #68]
.L02049fd4:
    ldr r6, [r6, #64]
.L02049fd8:
    str lr, [sp, #124]
.L02049fdc:
    ldr r5, [sp, #116]
.L02049fe0:
    add r3, fp, r3
.L02049fe4:
    add r1, r5, r1
.L02049fe8:
    ldr sl, [sp, #120]
.L02049fec:
    mov r0, r0, lsr #16
.L02049ff0:
    mov r2, r2, lsr #16
.L02049ff4:
    orr r0, r0, r1, lsl #16
.L02049ff8:
    ldr r7, [sp, #372]
.L02049ffc:
    orr r2, r2, r3, lsl #16
.L0204a000:
    add r6, r6, r0
.L0204a004:
    add r4, r4, r2
.L0204a008:
    mov r8, sl, lsr #16
.L0204a00c:
    ldr r2, [sp, #84]
.L0204a010:
    ldr r0, [sp, #88]
.L0204a014:
    ldr r1, [sp, #368]
.L0204a018:
    add r7, r7, #1
.L0204a01c:
    orr r8, r8, lr, lsl #16
.L0204a020:
    add ip, ip, r8
.L0204a024:
    add r2, r2, #48
.L0204a028:
    cmp r0, r7
.L0204a02c:
    str r7, [sp, #372]
.L0204a030:
    mov fp, lr
.L0204a034:
    mov r9, lr, asr #16
.L0204a038:
    str ip, [r1, #72]
.L0204a03c:
    str r6, [r1, #64]
.L0204a040:
    str r4, [r1, #68]
.L0204a044:
    str r2, [sp, #84]
.L0204a048:
    bgt .L0204986c
.L0204a04c:
    ldr r3, [sp, #356]
.L0204a050:
    ldr r6, [r3, #20]
.L0204a054:
    ldr r7, [sp, #360]
.L0204a058:
    ldr sl, [sp, #76]
.L0204a05c:
    add r7, r7, #1
.L0204a060:
    add sl, sl, #128
.L0204a064:
    cmp r6, r7
.L0204a068:
    str r7, [sp, #360]
.L0204a06c:
    str sl, [sp, #76]
.L0204a070:
    bgt .L0204970c
.L0204a074:
    add sp, sp, #492
.L0204a078:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0204a07c:
    ldr fp, [sp, #76]
.L0204a080:
    ldr fp, [fp, #124]
.L0204a084:
    cmp fp, #0
.L0204a088:
    str fp, [sp, #88]
.L0204a08c:
    ble .L0204a054
.L0204a090:
    ldr r2, [sp, #80]
.L0204a094:
    ldr r3, [sp, #76]
.L0204a098:
    mov r1, r2
.L0204a09c:
    ldr r4, [sp, #88]
.L0204a0a0:
    add r2, r2, #1
.L0204a0a4:
    cmp r4, r2
.L0204a0a8:
    str r1, [r3, #16]
.L0204a0ac:
    str r1, [r3, #20]
.L0204a0b0:
    add r3, r3, #48
.L0204a0b4:
    bgt .L0204a09c
.L0204a0b8:
    ldr r5, [sp, #356]
.L0204a0bc:
    ldr r6, [r5, #20]
.L0204a0c0:
    b .L0204a054
.L0204a0c4:
    .long 0x020c8e08  /* literal data */
.L0204a0c8:
    .long 0xffff0000  /* literal data */
.L0204a0cc:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0204a0d0:
    mov r4, #0
.L0204a0d4:
    sub sp, sp, #652
.L0204a0d8:
    str r4, [r0, #4]
.L0204a0dc:
    str r4, [r0]
.L0204a0e0:
    str r0, [sp, #384]
.L0204a0e4:
    cmp r3, #0
.L0204a0e8:
    ldr r0, [r1]
.L0204a0ec:
    ldr lr, [r1, #8]
.L0204a0f0:
    ldr r6, [sp, #688]
.L0204a0f4:
    ldr r1, [r1, #4]
.L0204a0f8:
    str r3, [sp, #376]
.L0204a0fc:
    ldr r3, [sp, #384]
.L0204a100:
    str r2, [sp, #380]
.L0204a104:
    stmia r3, {r0, r1, lr}
.L0204a108:
    str r6, [r3, #12]
.L0204a10c:
    str r4, [r3, #20]
.L0204a110:
    ble .L0204b0e0
.L0204a114:
    mov r6, r4
.L0204a118:
    b .L0204a140
.L0204a11c:
    ldr r7, [sp, #384]
.L0204a120:
    ldr r2, [ip, #8]
.L0204a124:
    ldr r3, [r7, #20]
.L0204a128:
    ldr r8, [sp, #376]
.L0204a12c:
    add r1, r3, r2
.L0204a130:
    cmp r8, r6
.L0204a134:
    add r4, r4, #4
.L0204a138:
    str r1, [r7, #20]
.L0204a13c:
    beq .L0204a190
.L0204a140:
    ldr r5, [sp, #380]
.L0204a144:
    add r6, r6, #1
.L0204a148:
    ldr ip, [r4, r5]
.L0204a14c:
    ldr r0, [pc, #52]
.L0204a150:
    ldr r3, [ip, #4]
.L0204a154:
    mov r1, #42
.L0204a158:
    tst r3, #1
.L0204a15c:
    ldr r2, [pc, #12]
.L0204a160:
    beq .L0204a11c
.L0204a164:
    bl reconstructed_external_arm_02097804
.L0204a168:
    ldr ip, [r4, r5]
.L0204a16c:
    b .L0204a11c
.L0204a170:
    .long 0x020c3b34  /* literal data */
.L0204a174:
    .long 0xffff0000  /* literal data */
.L0204a178:
    .long 0x04000200  /* literal data */
.L0204a17c:
    .long 0xffc40000  /* literal data */
.L0204a180:
    .long 0x020caf0c  /* literal data */
.L0204a184:
    .long 0x020c3be0  /* literal data */
.L0204a188:
    .long 0x020c3b0c  /* literal data */
.L0204a18c:
    .long 0x020c3bc0  /* literal data */
.L0204a190:
    mov r1, r1, lsl #7
.L0204a194:
    ldr r0, [r7, #12]
.L0204a198:
    bl reconstructed_external_arm_0202fb28
.L0204a19c:
    mov r9, #0
.L0204a1a0:
    str r9, [sp, #644]
.L0204a1a4:
    str r0, [r7, #16]
.L0204a1a8:
    str r9, [sp, #388]
.L0204a1ac:
    ldr sl, [sp, #388]
.L0204a1b0:
    ldr ip, [sp, #380]
.L0204a1b4:
    ldr r4, [ip, sl, lsl #2]
.L0204a1b8:
    ldr r3, [r4, #52]
.L0204a1bc:
    ldr r2, [r4, #56]
.L0204a1c0:
    ldr lr, [r4, #8]
.L0204a1c4:
    ldr r3, [r3, #12]
.L0204a1c8:
    ldr r2, [r2, #12]
.L0204a1cc:
    str r3, [sp, #392]
.L0204a1d0:
    str r2, [sp, #396]
.L0204a1d4:
    ldr r3, [r4]
.L0204a1d8:
    mov r0, r4
.L0204a1dc:
    str lr, [sp, #400]
.L0204a1e0:
    mov lr, pc
.L0204a1e4:
    ldr pc, [r3]
.L0204a1e8:
    ldr r2, [r4, #64]
.L0204a1ec:
    ldr r4, [r4, #60]
.L0204a1f0:
    ldr r3, [sp, #392]
.L0204a1f4:
    str r4, [sp, #588]
.L0204a1f8:
    ldr r5, [sp, #396]
.L0204a1fc:
    ldr r4, [sp, #392]
.L0204a200:
    ldr r6, [sp, #396]
.L0204a204:
    ldr r7, [sp, #392]
.L0204a208:
    mov r1, r0
.L0204a20c:
    ldr r0, [sp, #400]
.L0204a210:
    ldr r3, [r3, #64]
.L0204a214:
    ldr r4, [r4, #68]
.L0204a218:
    ldr r5, [r5, #64]
.L0204a21c:
    ldr r6, [r6, #68]
.L0204a220:
    ldr r7, [r7, #72]
.L0204a224:
    ldr r8, [sp, #396]
.L0204a228:
    cmp r0, #0
.L0204a22c:
    str r2, [sp, #592]
.L0204a230:
    str r3, [sp, #600]
.L0204a234:
    str r4, [sp, #596]
.L0204a238:
    str r5, [sp, #608]
.L0204a23c:
    str r6, [sp, #604]
.L0204a240:
    str r7, [sp, #612]
.L0204a244:
    ldr r0, [r8, #72]
.L0204a248:
    ble .L0204b034
.L0204a24c:
    ldr r4, [sp, #392]
.L0204a250:
    ldr r7, [sp, #392]
.L0204a254:
    ldr r9, [sp, #392]
.L0204a258:
    ldr sl, [sp, #396]
.L0204a25c:
    ldr ip, [sp, #612]
.L0204a260:
    mov r2, r0
.L0204a264:
    mov r3, r2, asr #31
.L0204a268:
    add r5, r8, #28
.L0204a26c:
    add r6, r8, #12
.L0204a270:
    strd r2, [sp, #40]
.L0204a274:
    add r4, r4, #12
.L0204a278:
    mov r3, #0
.L0204a27c:
    add r7, r7, #120
.L0204a280:
    add r8, r8, #120
.L0204a284:
    add r9, r9, #128
.L0204a288:
    add sl, sl, #128
.L0204a28c:
    rsb r0, r0, #0
.L0204a290:
    rsb ip, ip, #0
.L0204a294:
    str r1, [sp, #640]
.L0204a298:
    str r3, [sp, #404]
.L0204a29c:
    str r4, [sp, #80]
.L0204a2a0:
    str r5, [sp, #76]
.L0204a2a4:
    str r6, [sp, #72]
.L0204a2a8:
    str r7, [sp, #68]
.L0204a2ac:
    str r8, [sp, #64]
.L0204a2b0:
    str r9, [sp, #60]
.L0204a2b4:
    str sl, [sp, #56]
.L0204a2b8:
    str r0, [sp, #52]
.L0204a2bc:
    str ip, [sp, #36]
.L0204a2c0:
    ldr lr, [sp, #640]
.L0204a2c4:
    ldr r0, [sp, #404]
.L0204a2c8:
    ldr r3, [lr, #72]
.L0204a2cc:
    ldr r1, [sp, #644]
.L0204a2d0:
    cmp r3, #0
.L0204a2d4:
    add r4, r0, r1
.L0204a2d8:
    ble .L0204b0cc
.L0204a2dc:
    ldr r2, [sp, #384]
.L0204a2e0:
    ldr r5, [sp, #640]
.L0204a2e4:
    ldr r3, [r2, #20]
.L0204a2e8:
    ldr r6, [r5, #64]
.L0204a2ec:
    cmp r3, r4
.L0204a2f0:
    ldr r7, [r5, #68]
.L0204a2f4:
    ble .L0204b0b8
.L0204a2f8:
    ldr r8, [sp, #384]
.L0204a2fc:
    ldr r9, [sp, #640]
.L0204a300:
    ldr r3, [r8, #16]
.L0204a304:
    ldr r1, [r9, #72]
.L0204a308:
    mov r2, r4, lsl #7
.L0204a30c:
    add r2, r2, r3
.L0204a310:
    str r1, [r2, #124]
.L0204a314:
    cmp r1, #0
.L0204a318:
    ldr ip, [sp, #392]
.L0204a31c:
    ldr lr, [sp, #396]
.L0204a320:
    ldr r0, [sp, #588]
.L0204a324:
    ldr r1, [sp, #592]
.L0204a328:
    add sl, r2, #96
.L0204a32c:
    str r7, [sl, #4]
.L0204a330:
    str r2, [sp, #408]
.L0204a334:
    str ip, [r2, #108]
.L0204a338:
    str lr, [r2, #112]
.L0204a33c:
    str r9, [r2, #104]
.L0204a340:
    str r6, [r2, #96]
.L0204a344:
    str r0, [r2, #116]
.L0204a348:
    str r1, [r2, #120]
.L0204a34c:
    add r2, r2, #120
.L0204a350:
    str sl, [sp, #420]
.L0204a354:
    str r2, [sp, #424]
.L0204a358:
    ble .L0204b004
.L0204a35c:
    mov r4, r6
.L0204a360:
    mov r5, r4, asr #31
.L0204a364:
    add r8, sp, #624
.L0204a368:
    stmia r8, {r4, r5}
.L0204a36c:
    ldr r2, [pc, #-512]
.L0204a370:
    ldr r9, [sp, #624]
.L0204a374:
    rsb r1, r4, #0
.L0204a378:
    mov lr, r5
.L0204a37c:
    mla lr, r2, lr, r1
.L0204a380:
    add r4, sp, #640
.L0204a384:
    umull r0, r1, r9, r2
.L0204a388:
    mov r2, r7
.L0204a38c:
    mov r3, r2, asr #31
.L0204a390:
    stmdb r4, {r2, r3}
.L0204a394:
    ldr r6, [sp, #632]
.L0204a398:
    ldr r5, [sp, #636]
.L0204a39c:
    mov r2, r6, lsl #16
.L0204a3a0:
    mov r3, r5, lsl #16
.L0204a3a4:
    mov r7, #0
.L0204a3a8:
    orr r3, r3, r6, lsr #16
.L0204a3ac:
    add r1, lr, r1
.L0204a3b0:
    mov r0, r0, lsr #16
.L0204a3b4:
    mov r2, r2, lsr #16
.L0204a3b8:
    str r7, [sp, #412]
.L0204a3bc:
    ldr r7, [sp, #612]
.L0204a3c0:
    orr r2, r2, r3, lsl #16
.L0204a3c4:
    orr r0, r0, r1, lsl #16
.L0204a3c8:
    mov r8, r2
.L0204a3cc:
    mov r9, r8, asr #31
.L0204a3d0:
    add r4, sp, #576
.L0204a3d4:
    mov r2, r0
.L0204a3d8:
    mov r3, r2, asr #31
.L0204a3dc:
    mov r6, r7
.L0204a3e0:
    mov r7, r6, asr #31
.L0204a3e4:
    add sl, sp, #576
.L0204a3e8:
    stmdb r4, {r2, r3}
.L0204a3ec:
    strd r6, [sp, #88]
.L0204a3f0:
    stmia sl, {r8, r9}
.L0204a3f4:
    add r5, ip, #28
.L0204a3f8:
    mov r8, #0
.L0204a3fc:
    str r5, [sp, #96]
.L0204a400:
    str r8, [sp, #84]
.L0204a404:
    ldr r9, [sp, #412]
.L0204a408:
    ldr sl, [sp, #640]
.L0204a40c:
    mov r0, r9, lsl #5
.L0204a410:
    add r1, sl, r0
.L0204a414:
    ldr lr, [sp, #84]
.L0204a418:
    ldr ip, [sp, #408]
.L0204a41c:
    ldr r2, [r1, #20]
.L0204a420:
    add ip, ip, lr
.L0204a424:
    str r2, [ip, #16]
.L0204a428:
    ldr r3, [r1, #24]
.L0204a42c:
    ldr r5, [sp, #80]
.L0204a430:
    str r3, [ip, #20]
.L0204a434:
    ldr r2, [r1, #16]
.L0204a438:
    mov r3, #0
.L0204a43c:
    str r3, [ip, #24]
.L0204a440:
    str r2, [ip, #40]
.L0204a444:
    ldr r3, [sl, r0]
.L0204a448:
    ldr r2, [r1, #4]
.L0204a44c:
    ldr r0, [sp, #408]
.L0204a450:
    str r2, [ip, #4]
.L0204a454:
    str r3, [r0, lr]
.L0204a458:
    ldr r7, [r1, #12]
.L0204a45c:
    ldr r3, [r1, #8]
.L0204a460:
    ldr r8, [sp, #80]
.L0204a464:
    str r3, [ip, #8]
.L0204a468:
    str r7, [ip, #12]
.L0204a46c:
    ldr r1, [sp, #392]
.L0204a470:
    ldr r2, [sp, #84]
.L0204a474:
    ldr r4, [sp, #96]
.L0204a478:
    ldr r5, [r5, #8]
.L0204a47c:
    ldr r8, [r8, #4]
.L0204a480:
    ldr lr, [r1, #28]
.L0204a484:
    ldr r6, [r0, r2]
.L0204a488:
    ldr sl, [r4, #4]
.L0204a48c:
    ldr r2, [r1, #12]
.L0204a490:
    ldr r4, [ip, #4]
.L0204a494:
    str ip, [sp, #416]
.L0204a498:
    str r5, [sp, #4]
.L0204a49c:
    str r8, [sp, #24]
.L0204a4a0:
    ldr r8, [sp, #72]
.L0204a4a4:
    ldr ip, [sp, #396]
.L0204a4a8:
    ldr r9, [sp, #80]
.L0204a4ac:
    ldr r1, [ip, #28]
.L0204a4b0:
    ldr fp, [r8, #12]
.L0204a4b4:
    ldr r9, [r9, #12]
.L0204a4b8:
    rsb r6, lr, r6
.L0204a4bc:
    rsb r4, sl, r4
.L0204a4c0:
    ldmib r8, {sl, lr}
.L0204a4c4:
    ldr r8, [sp, #4]
.L0204a4c8:
    str r9, [sp, #20]
.L0204a4cc:
    rsb r3, r1, r3
.L0204a4d0:
    mov r9, r8, asr #31
.L0204a4d4:
    add r1, sp, #352
.L0204a4d8:
    stmia r1, {r8, r9}
.L0204a4dc:
    ldr r8, [sp, #24]
.L0204a4e0:
    add r1, sp, #336
.L0204a4e4:
    mov r9, r8, asr #31
.L0204a4e8:
    stmia r1, {r8, r9}
.L0204a4ec:
    ldr r8, [sp, #20]
.L0204a4f0:
    ldr r5, [sp, #76]
.L0204a4f4:
    str r3, [sp, #12]
.L0204a4f8:
    mov r9, r8, asr #31
.L0204a4fc:
    add r1, sp, #320
.L0204a500:
    stmdb r1, {r8, r9}
.L0204a504:
    ldr r0, [r5, #4]
.L0204a508:
    ldr r8, [sp, #12]
.L0204a50c:
    ldr ip, [ip, #12]
.L0204a510:
    rsb r0, r0, r7
.L0204a514:
    add r1, sp, #464
.L0204a518:
    mov r9, r8, asr #31
.L0204a51c:
    stmia r1, {r8, r9}
.L0204a520:
    mov r8, r0
.L0204a524:
    mov r9, r8, asr #31
.L0204a528:
    stmdb r1, {r8, r9}
.L0204a52c:
    add r0, sp, #304
.L0204a530:
    mov r8, ip
.L0204a534:
    mov r9, r8, asr #31
.L0204a538:
    stmdb r0, {r8, r9}
.L0204a53c:
    add ip, sp, #288
.L0204a540:
    mov r8, lr
.L0204a544:
    mov r9, r8, asr #31
.L0204a548:
    stmdb ip, {r8, r9}
.L0204a54c:
    mov r0, sl
.L0204a550:
    mov r1, r0, asr #31
.L0204a554:
    add r8, sp, #272
.L0204a558:
    stmdb r8, {r0, r1}
.L0204a55c:
    mov r0, fp
.L0204a560:
    mov r1, r0, asr #31
.L0204a564:
    strd r0, [sp, #240]
.L0204a568:
    ldr sl, [sp, #296]
.L0204a56c:
    ldr r1, [sp, #340]
.L0204a570:
    ldr r8, [sp, #316]
.L0204a574:
    ldr r9, [sp, #468]
.L0204a578:
    mov r7, r6, asr #31
.L0204a57c:
    mov r5, r4, asr #31
.L0204a580:
    mul r1, r6, r1
.L0204a584:
    mul r8, r4, r8
.L0204a588:
    mul r9, sl, r9
.L0204a58c:
    ldr lr, [sp, #352]
.L0204a590:
    str r1, [sp, #332]
.L0204a594:
    str r8, [sp, #308]
.L0204a598:
    str r9, [sp, #288]
.L0204a59c:
    ldr r8, [sp, #464]
.L0204a5a0:
    ldr r1, [sp, #268]
.L0204a5a4:
    ldr sl, [sp, #456]
.L0204a5a8:
    mul r1, r8, r1
.L0204a5ac:
    ldr r9, [sp, #244]
.L0204a5b0:
    ldr r0, [sp, #280]
.L0204a5b4:
    mul r9, sl, r9
.L0204a5b8:
    ldr r8, [sp, #336]
.L0204a5bc:
    ldr ip, [sp, #460]
.L0204a5c0:
    mov r3, r2, asr #31
.L0204a5c4:
    mul fp, r2, r7
.L0204a5c8:
    mul ip, r0, ip
.L0204a5cc:
    str r1, [sp, #256]
.L0204a5d0:
    umull r0, r1, r6, r8
.L0204a5d4:
    str r9, [sp, #232]
.L0204a5d8:
    ldr r9, [sp, #312]
.L0204a5dc:
    add r8, sp, #320
.L0204a5e0:
    mla fp, r6, r3, fp
.L0204a5e4:
    mul lr, r5, lr
.L0204a5e8:
    stmia r8, {r0, r1}
.L0204a5ec:
    umull r0, r1, r4, r9
.L0204a5f0:
    umull r8, r9, r2, r6
.L0204a5f4:
    str ip, [sp, #272]
.L0204a5f8:
    ldr ip, [sp, #356]
.L0204a5fc:
    add sl, sp, #368
.L0204a600:
    stmdb sl, {r8, r9}
.L0204a604:
    mla ip, r4, ip, lr
.L0204a608:
    ldr r8, [sp, #336]
.L0204a60c:
    ldr lr, [sp, #352]
.L0204a610:
    str fp, [sp, #372]
.L0204a614:
    ldr fp, [sp, #332]
.L0204a618:
    umull r2, r3, lr, r4
.L0204a61c:
    ldr r6, [sp, #464]
.L0204a620:
    mla fp, r8, r7, fp
.L0204a624:
    ldr r9, [sp, #312]
.L0204a628:
    ldr r7, [sp, #264]
.L0204a62c:
    ldr lr, [sp, #308]
.L0204a630:
    ldr sl, [sp, #456]
.L0204a634:
    mla lr, r9, r5, lr
.L0204a638:
    umull r4, r5, r6, r7
.L0204a63c:
    strd r4, [sp, #248]
.L0204a640:
    mov r5, r6
.L0204a644:
    ldr r4, [sp, #300]
.L0204a648:
    ldr r6, [sp, #288]
.L0204a64c:
    str ip, [sp, #348]
.L0204a650:
    mla r4, r5, r4, r6
.L0204a654:
    ldr ip, [sp, #240]
.L0204a658:
    str r4, [sp, #292]
.L0204a65c:
    umull r8, r9, sl, ip
.L0204a660:
    ldr r4, [sp, #272]
.L0204a664:
    ldr ip, [sp, #456]
.L0204a668:
    ldr sl, [sp, #284]
.L0204a66c:
    strd r8, [sp, #224]
.L0204a670:
    mla sl, ip, sl, r4
.L0204a674:
    ldr r8, [sp, #296]
.L0204a678:
    str sl, [sp, #276]
.L0204a67c:
    umull r6, r7, r8, r5
.L0204a680:
    ldr r8, [sp, #280]
.L0204a684:
    ldr sl, [sp, #468]
.L0204a688:
    umull r4, r5, r8, ip
.L0204a68c:
    ldr ip, [sp, #264]
.L0204a690:
    ldr r8, [sp, #256]
.L0204a694:
    ldr r9, [sp, #460]
.L0204a698:
    mla sl, ip, sl, r8
.L0204a69c:
    ldr ip, [sp, #232]
.L0204a6a0:
    str sl, [sp, #260]
.L0204a6a4:
    ldr sl, [sp, #240]
.L0204a6a8:
    ldr r8, [sp, #372]
.L0204a6ac:
    mla r9, sl, r9, ip
.L0204a6b0:
    ldr sl, [sp, #348]
.L0204a6b4:
    str r9, [sp, #236]
.L0204a6b8:
    ldr r9, [sp, #364]
.L0204a6bc:
    ldr ip, [sp, #324]
.L0204a6c0:
    add r8, r8, r9
.L0204a6c4:
    add r3, sl, r3
.L0204a6c8:
    ldr sl, [sp, #320]
.L0204a6cc:
    str r8, [sp, #364]
.L0204a6d0:
    add fp, fp, ip
.L0204a6d4:
    ldr r9, [sp, #364]
.L0204a6d8:
    mov sl, sl, lsr #16
.L0204a6dc:
    orr ip, sl, fp, lsl #16
.L0204a6e0:
    add r1, lr, r1
.L0204a6e4:
    ldr lr, [sp, #360]
.L0204a6e8:
    str ip, [sp, #432]
.L0204a6ec:
    mov r9, r9, asr #16
.L0204a6f0:
    mov lr, lr, lsr #16
.L0204a6f4:
    str r9, [sp, #444]
.L0204a6f8:
    mov r2, r2, lsr #16
.L0204a6fc:
    ldr r9, [sp, #432]
.L0204a700:
    mov r0, r0, lsr #16
.L0204a704:
    orr r8, lr, r8, lsl #16
.L0204a708:
    orr r2, r2, r3, lsl #16
.L0204a70c:
    mov lr, fp, asr #16
.L0204a710:
    orr r0, r0, r1, lsl #16
.L0204a714:
    add ip, r8, r2
.L0204a718:
    ldr r1, [sp, #260]
.L0204a71c:
    ldr r2, [sp, #252]
.L0204a720:
    str lr, [sp, #436]
.L0204a724:
    add lr, r9, r0
.L0204a728:
    ldr r9, [sp, #248]
.L0204a72c:
    ldr sl, [sp, #292]
.L0204a730:
    ldr r0, [sp, #276]
.L0204a734:
    ldr r3, [sp, #236]
.L0204a738:
    str r8, [sp, #440]
.L0204a73c:
    ldr r8, [sp, #228]
.L0204a740:
    add r2, r1, r2
.L0204a744:
    mov r9, r9, lsr #16
.L0204a748:
    add r8, r3, r8
.L0204a74c:
    add r7, sl, r7
.L0204a750:
    add r5, r0, r5
.L0204a754:
    orr sl, r9, r2, lsl #16
.L0204a758:
    mov r0, r2, asr #16
.L0204a75c:
    str fp, [sp, #324]
.L0204a760:
    str r2, [sp, #252]
.L0204a764:
    str r8, [sp, #228]
.L0204a768:
    str sl, [sp, #448]
.L0204a76c:
    str r0, [sp, #452]
.L0204a770:
    ldr r1, [sp, #224]
.L0204a774:
    mov r6, r6, lsr #16
.L0204a778:
    mov r2, r1, lsr #16
.L0204a77c:
    orr r2, r2, r8, lsl #16
.L0204a780:
    add r2, sl, r2
.L0204a784:
    mov r0, ip
.L0204a788:
    mov r1, r0, asr #31
.L0204a78c:
    str r2, [sp, #212]
.L0204a790:
    add r2, sp, #480
.L0204a794:
    stmia r2, {r0, r1}
.L0204a798:
    ldr r0, [sp, #212]
.L0204a79c:
    add r2, sp, #496
.L0204a7a0:
    mov r1, r0, asr #31
.L0204a7a4:
    mov r4, r4, lsr #16
.L0204a7a8:
    stmdb r2, {r0, r1}
.L0204a7ac:
    orr r6, r6, r7, lsl #16
.L0204a7b0:
    orr r4, r4, r5, lsl #16
.L0204a7b4:
    ldr r2, [sp, #636]
.L0204a7b8:
    add r6, r6, r4
.L0204a7bc:
    ldr r1, [sp, #480]
.L0204a7c0:
    mov r4, lr
.L0204a7c4:
    mov r5, r4, asr #31
.L0204a7c8:
    add r7, sp, #480
.L0204a7cc:
    ldr r3, [sp, #628]
.L0204a7d0:
    stmdb r7, {r4, r5}
.L0204a7d4:
    mul r2, r4, r2
.L0204a7d8:
    ldr r0, [sp, #636]
.L0204a7dc:
    ldr r4, [sp, #488]
.L0204a7e0:
    mul r3, r1, r3
.L0204a7e4:
    ldr r1, [sp, #628]
.L0204a7e8:
    mov r8, r6
.L0204a7ec:
    mov r9, r8, asr #31
.L0204a7f0:
    mul r0, r4, r0
.L0204a7f4:
    add sl, sp, #496
.L0204a7f8:
    stmia sl, {r8, r9}
.L0204a7fc:
    ldr r5, [sp, #624]
.L0204a800:
    ldr sl, [sp, #632]
.L0204a804:
    mul r1, r8, r1
.L0204a808:
    ldr r6, [sp, #632]
.L0204a80c:
    ldr r9, [sp, #472]
.L0204a810:
    ldr fp, [sp, #484]
.L0204a814:
    ldr lr, [sp, #476]
.L0204a818:
    ldr r8, [sp, #480]
.L0204a81c:
    ldr ip, [sp, #492]
.L0204a820:
    mla fp, r5, fp, r3
.L0204a824:
    mla lr, r6, lr, r2
.L0204a828:
    umull r2, r3, r9, sl
.L0204a82c:
    ldr r9, [sp, #500]
.L0204a830:
    umull r6, r7, r8, r5
.L0204a834:
    mla ip, sl, ip, r0
.L0204a838:
    ldr r8, [sp, #488]
.L0204a83c:
    ldr r0, [sp, #496]
.L0204a840:
    mla r9, r5, r9, r1
.L0204a844:
    mov r1, r5
.L0204a848:
    umull r4, r5, r0, r1
.L0204a84c:
    umull r0, r1, r8, sl
.L0204a850:
    add r7, fp, r7
.L0204a854:
    add r3, lr, r3
.L0204a858:
    mov r6, r6, lsr #16
.L0204a85c:
    mov r2, r2, lsr #16
.L0204a860:
    orr r2, r2, r3, lsl #16
.L0204a864:
    add r5, r9, r5
.L0204a868:
    add r1, ip, r1
.L0204a86c:
    orr r6, r6, r7, lsl #16
.L0204a870:
    mov r4, r4, lsr #16
.L0204a874:
    mov r0, r0, lsr #16
.L0204a878:
    add r6, r6, r2
.L0204a87c:
    orr r4, r4, r5, lsl #16
.L0204a880:
    orr r0, r0, r1, lsl #16
.L0204a884:
    ldr r5, [sp, #480]
.L0204a888:
    ldr r3, [sp, #484]
.L0204a88c:
    add r4, r4, r0
.L0204a890:
    add r2, sp, #512
.L0204a894:
    mov r0, r6
.L0204a898:
    mov r1, r0, asr #31
.L0204a89c:
    ldr r7, [sp, #472]
.L0204a8a0:
    stmdb r2, {r0, r1}
.L0204a8a4:
    mul r3, r5, r3
.L0204a8a8:
    mov r8, r4
.L0204a8ac:
    mov r9, r8, asr #31
.L0204a8b0:
    umull r0, r1, r5, r5
.L0204a8b4:
    ldr r6, [sp, #476]
.L0204a8b8:
    ldr r5, [sp, #496]
.L0204a8bc:
    ldr r4, [sp, #500]
.L0204a8c0:
    mul r6, r7, r6
.L0204a8c4:
    mul r4, r5, r4
.L0204a8c8:
    add sl, sp, #528
.L0204a8cc:
    stmia sl, {r8, r9}
.L0204a8d0:
    str r3, [sp, #220]
.L0204a8d4:
    str r6, [sp, #8]
.L0204a8d8:
    umull r2, r3, r7, r7
.L0204a8dc:
    str r4, [sp, #216]
.L0204a8e0:
    ldr r7, [sp, #504]
.L0204a8e4:
    ldr ip, [sp, #528]
.L0204a8e8:
    umull r8, r9, r7, r7
.L0204a8ec:
    strd r8, [sp, #200]
.L0204a8f0:
    ldr r9, [sp, #532]
.L0204a8f4:
    ldr r6, [sp, #488]
.L0204a8f8:
    mul r9, ip, r9
.L0204a8fc:
    ldr r8, [sp, #488]
.L0204a900:
    ldr fp, [sp, #492]
.L0204a904:
    ldr sl, [sp, #508]
.L0204a908:
    str r9, [sp, #192]
.L0204a90c:
    mul fp, r6, fp
.L0204a910:
    mul sl, r7, sl
.L0204a914:
    umull r6, r7, r5, r5
.L0204a918:
    umull r4, r5, r8, r8
.L0204a91c:
    umull r8, r9, ip, ip
.L0204a920:
    ldr lr, [sp, #220]
.L0204a924:
    strd r8, [sp, #184]
.L0204a928:
    ldr r8, [sp, #8]
.L0204a92c:
    mov lr, lr, lsl #1
.L0204a930:
    mov r8, r8, lsl #1
.L0204a934:
    add r1, lr, r1
.L0204a938:
    add r3, r8, r3
.L0204a93c:
    mov r0, r0, lsr #16
.L0204a940:
    mov r2, r2, lsr #16
.L0204a944:
    orr r2, r2, r3, lsl #16
.L0204a948:
    ldr r9, [sp, #216]
.L0204a94c:
    orr r0, r0, r1, lsl #16
.L0204a950:
    add r0, r0, r2
.L0204a954:
    ldr lr, [sp, #192]
.L0204a958:
    str r0, [sp, #616]
.L0204a95c:
    ldr ip, [sp, #204]
.L0204a960:
    ldr r0, [sp, #200]
.L0204a964:
    mov r9, r9, lsl #1
.L0204a968:
    mov fp, fp, lsl #1
.L0204a96c:
    add r7, r9, r7
.L0204a970:
    mov sl, sl, lsl #1
.L0204a974:
    add r5, fp, r5
.L0204a978:
    mov lr, lr, lsl #1
.L0204a97c:
    mov r6, r6, lsr #16
.L0204a980:
    mov r4, r4, lsr #16
.L0204a984:
    add ip, sl, ip
.L0204a988:
    str lr, [sp, #192]
.L0204a98c:
    orr r4, r4, r5, lsl #16
.L0204a990:
    ldr r9, [sp, #392]
.L0204a994:
    orr r6, r6, r7, lsl #16
.L0204a998:
    mov r2, r0, lsr #16
.L0204a99c:
    orr r2, r2, ip, lsl #16
.L0204a9a0:
    add r6, r6, r4
.L0204a9a4:
    ldr sl, [sp, #616]
.L0204a9a8:
    ldr r1, [sp, #188]
.L0204a9ac:
    str ip, [sp, #204]
.L0204a9b0:
    ldr r3, [sp, #184]
.L0204a9b4:
    ldr ip, [sp, #192]
.L0204a9b8:
    ldr r0, [r9, #128]
.L0204a9bc:
    str r6, [sp, #620]
.L0204a9c0:
    add r1, ip, r1
.L0204a9c4:
    rsb lr, r2, sl
.L0204a9c8:
    mov r3, r3, lsr #16
.L0204a9cc:
    ldr r2, [sp, #396]
.L0204a9d0:
    ldr ip, [sp, #620]
.L0204a9d4:
    orr r5, r3, r1, lsl #16
.L0204a9d8:
    mov r8, lr
.L0204a9dc:
    mov r9, r8, asr #31
.L0204a9e0:
    mov r6, r1, asr #16
.L0204a9e4:
    str r1, [sp, #188]
.L0204a9e8:
    add sl, sp, #512
.L0204a9ec:
    mov r1, r0, asr #31
.L0204a9f0:
    stmia sl, {r8, r9}
.L0204a9f4:
    ldr r4, [r2, #128]
.L0204a9f8:
    rsb ip, r5, ip
.L0204a9fc:
    mul r9, r0, r9
.L0204aa00:
    mov r2, ip
.L0204aa04:
    mov r3, r2, asr #31
.L0204aa08:
    str r5, [sp, #520]
.L0204aa0c:
    add r5, sp, #544
.L0204aa10:
    str r6, [sp, #524]
.L0204aa14:
    mov lr, r3
.L0204aa18:
    stmdb r5, {r2, r3}
.L0204aa1c:
    mov r5, r4, asr #31
.L0204aa20:
    mul lr, r4, lr
.L0204aa24:
    ldr r7, [sp, #512]
.L0204aa28:
    mov r6, r9
.L0204aa2c:
    umull r2, r3, r0, r7
.L0204aa30:
    mla r6, r8, r1, r6
.L0204aa34:
    ldr r7, [sp, #536]
.L0204aa38:
    ldr r8, [sp, #536]
.L0204aa3c:
    mla r7, r5, r7, lr
.L0204aa40:
    umull r0, r1, r4, r8
.L0204aa44:
    ldr r9, [sp, #396]
.L0204aa48:
    ldr sl, [sp, #392]
.L0204aa4c:
    ldr lr, [r9, #120]
.L0204aa50:
    ldr sl, [sl, #120]
.L0204aa54:
    add r3, r6, r3
.L0204aa58:
    mov r2, r2, lsr #16
.L0204aa5c:
    add lr, lr, sl
.L0204aa60:
    orr r2, r2, r3, lsl #16
.L0204aa64:
    add r1, r7, r1
.L0204aa68:
    mov r0, r0, lsr #16
.L0204aa6c:
    add lr, lr, r2
.L0204aa70:
    orr r0, r0, r1, lsl #16
.L0204aa74:
    ldr ip, [sp, #416]
.L0204aa78:
    add r4, lr, r0
.L0204aa7c:
    add ip, ip, #40
.L0204aa80:
    cmp r4, #4
.L0204aa84:
    str ip, [sp, #428]
.L0204aa88:
    ble .L0204b0a4
.L0204aa8c:
    ldr r3, [pc, #-2332]
.L0204aa90:
    mov lr, #1
.L0204aa94:
    strh lr, [r3, #128]
.L0204aa98:
    mov r2, r3
.L0204aa9c:
    ldrh r3, [r2, #128]
.L0204aaa0:
    tst r3, #32768
.L0204aaa4:
    bne .L0204aa9c
.L0204aaa8:
    mov r0, #0
.L0204aaac:
    mov r1, #1
.L0204aab0:
    mov r3, #67108864
.L0204aab4:
    strd r0, [r2, #144]
.L0204aab8:
    str r4, [r3, #664]
.L0204aabc:
    ldr r1, [pc, #-2380]
.L0204aac0:
    ldrh r3, [r1, #128]
.L0204aac4:
    tst r3, #32768
.L0204aac8:
    bne .L0204aabc
.L0204aacc:
    mov r3, #67108864
.L0204aad0:
    ldr r2, [r3, #672]
.L0204aad4:
    ldr r3, [sp, #416]
.L0204aad8:
    ldr r4, [sp, #392]
.L0204aadc:
    ldr r5, [sp, #60]
.L0204aae0:
    str r2, [r3, #28]
.L0204aae4:
    ldr sl, [r4, #116]
.L0204aae8:
    ldr r2, [r5]
.L0204aaec:
    mov r8, sl
.L0204aaf0:
    mov r9, r8, asr #31
.L0204aaf4:
    mov r3, r2, asr #31
.L0204aaf8:
    add lr, sp, #560
.L0204aafc:
    stmdb lr, {r8, r9}
.L0204ab00:
    ldr r6, [sp, #396]
.L0204ab04:
    mul r8, r3, r8
.L0204ab08:
    ldr r7, [sp, #56]
.L0204ab0c:
    ldr ip, [r6, #116]
.L0204ab10:
    ldr r0, [r7]
.L0204ab14:
    mov r4, ip
.L0204ab18:
    mov r5, r4, asr #31
.L0204ab1c:
    mla r9, r2, r9, r8
.L0204ab20:
    mov r1, r0, asr #31
.L0204ab24:
    mov lr, r4
.L0204ab28:
    add r6, sp, #560
.L0204ab2c:
    mul lr, r1, lr
.L0204ab30:
    stmia r6, {r4, r5}
.L0204ab34:
    ldr r7, [sp, #552]
.L0204ab38:
    str r9, [sp, #160]
.L0204ab3c:
    ldr r8, [sp, #560]
.L0204ab40:
    ldr r9, [sp, #564]
.L0204ab44:
    umull r4, r5, r7, r2
.L0204ab48:
    mla lr, r0, r9, lr
.L0204ab4c:
    umull r6, r7, r8, r0
.L0204ab50:
    ldr sl, [sp, #68]
.L0204ab54:
    ldr ip, [sp, #64]
.L0204ab58:
    add r7, lr, r7
.L0204ab5c:
    mov r6, r6, lsr #16
.L0204ab60:
    ldr r2, [sl]
.L0204ab64:
    ldr r8, [sp, #160]
.L0204ab68:
    ldr sl, [sp, #536]
.L0204ab6c:
    orr r6, r6, r7, lsl #16
.L0204ab70:
    mov r7, r6, asr #31
.L0204ab74:
    ldr r0, [ip]
.L0204ab78:
    add r5, r8, r5
.L0204ab7c:
    mul sl, r7, sl
.L0204ab80:
    ldr r8, [sp, #552]
.L0204ab84:
    ldr r9, [sp, #560]
.L0204ab88:
    mov r3, r2, asr #31
.L0204ab8c:
    mov r1, r0, asr #31
.L0204ab90:
    mov r4, r4, lsr #16
.L0204ab94:
    mul r8, r3, r8
.L0204ab98:
    mul r9, r1, r9
.L0204ab9c:
    ldr lr, [sp, #512]
.L0204aba0:
    orr r4, r4, r5, lsl #16
.L0204aba4:
    mov r5, r4, asr #31
.L0204aba8:
    mul lr, r5, lr
.L0204abac:
    str sl, [sp, #148]
.L0204abb0:
    ldr ip, [sp, #556]
.L0204abb4:
    ldr sl, [sp, #552]
.L0204abb8:
    mla ip, r2, ip, r8
.L0204abbc:
    str r9, [sp, #164]
.L0204abc0:
    umull r8, r9, sl, r2
.L0204abc4:
    ldr sl, [sp, #516]
.L0204abc8:
    strd r8, [sp, #168]
.L0204abcc:
    mla sl, r4, sl, lr
.L0204abd0:
    ldr r8, [sp, #560]
.L0204abd4:
    str ip, [sp, #176]
.L0204abd8:
    ldr fp, [sp, #564]
.L0204abdc:
    ldr ip, [sp, #164]
.L0204abe0:
    ldr r9, [sp, #512]
.L0204abe4:
    umull r2, r3, r8, r0
.L0204abe8:
    str sl, [sp, #152]
.L0204abec:
    mla fp, r0, fp, ip
.L0204abf0:
    ldr r8, [sp, #148]
.L0204abf4:
    ldr ip, [sp, #536]
.L0204abf8:
    ldr lr, [sp, #540]
.L0204abfc:
    umull r0, r1, r9, r4
.L0204ac00:
    ldr sl, [sp, #172]
.L0204ac04:
    ldr r9, [sp, #176]
.L0204ac08:
    umull r4, r5, ip, r6
.L0204ac0c:
    mla lr, r6, lr, r8
.L0204ac10:
    ldr ip, [sp, #168]
.L0204ac14:
    add sl, r9, sl
.L0204ac18:
    ldr r9, [sp, #152]
.L0204ac1c:
    add r3, fp, r3
.L0204ac20:
    mov ip, ip, lsr #16
.L0204ac24:
    mov r2, r2, lsr #16
.L0204ac28:
    orr r6, ip, sl, lsl #16
.L0204ac2c:
    orr r2, r2, r3, lsl #16
.L0204ac30:
    add r1, r9, r1
.L0204ac34:
    mov r0, r0, lsr #16
.L0204ac38:
    add r2, r6, r2
.L0204ac3c:
    orr r0, r0, r1, lsl #16
.L0204ac40:
    add r5, lr, r5
.L0204ac44:
    mov r4, r4, lsr #16
.L0204ac48:
    add r0, r2, r0
.L0204ac4c:
    orr r4, r4, r5, lsl #16
.L0204ac50:
    add r8, r0, r4
.L0204ac54:
    mov r7, sl, asr #16
.L0204ac58:
    cmp r8, #4
.L0204ac5c:
    str sl, [sp, #172]
.L0204ac60:
    str r6, [sp, #544]
.L0204ac64:
    str r7, [sp, #548]
.L0204ac68:
    ble .L0204b090
.L0204ac6c:
    ldr r2, [pc, #-2812]
.L0204ac70:
    mov sl, #1
.L0204ac74:
    strh sl, [r2, #128]
.L0204ac78:
    ldrh r3, [r2, #128]
.L0204ac7c:
    tst r3, #32768
.L0204ac80:
    bne .L0204ac78
.L0204ac84:
    mov r0, #0
.L0204ac88:
    mov r1, #1
.L0204ac8c:
    mov r3, #67108864
.L0204ac90:
    strd r0, [r2, #144]
.L0204ac94:
    str r8, [r3, #664]
.L0204ac98:
    ldr r1, [pc, #-2856]
.L0204ac9c:
    ldrh r3, [r1, #128]
.L0204aca0:
    tst r3, #32768
.L0204aca4:
    bne .L0204ac98
.L0204aca8:
    ldr r2, [sp, #480]
.L0204acac:
    ldr r3, [sp, #580]
.L0204acb0:
    ldr r6, [sp, #488]
.L0204acb4:
    ldr r0, [sp, #572]
.L0204acb8:
    mul r3, r2, r3
.L0204acbc:
    ldr r4, [sp, #472]
.L0204acc0:
    ldr r5, [sp, #496]
.L0204acc4:
    ldr r2, [sp, #572]
.L0204acc8:
    ldr r1, [sp, #580]
.L0204accc:
    mul r0, r6, r0
.L0204acd0:
    ldr r7, [sp, #576]
.L0204acd4:
    mul r2, r4, r2
.L0204acd8:
    mul r1, r5, r1
.L0204acdc:
    ldr r9, [sp, #480]
.L0204ace0:
    ldr fp, [sp, #484]
.L0204ace4:
    ldr r8, [sp, #568]
.L0204ace8:
    mov sl, r7
.L0204acec:
    ldr ip, [sp, #492]
.L0204acf0:
    mla fp, r7, fp, r3
.L0204acf4:
    ldr lr, [sp, #476]
.L0204acf8:
    umull r6, r7, r9, sl
.L0204acfc:
    ldr r9, [sp, #500]
.L0204ad00:
    mla ip, r8, ip, r0
.L0204ad04:
    mov r0, r5
.L0204ad08:
    mla lr, r8, lr, r2
.L0204ad0c:
    mla r9, sl, r9, r1
.L0204ad10:
    umull r2, r3, r4, r8
.L0204ad14:
    umull r4, r5, r0, sl
.L0204ad18:
    ldr r8, [sp, #488]
.L0204ad1c:
    ldr sl, [sp, #568]
.L0204ad20:
    add r7, fp, r7
.L0204ad24:
    umull r0, r1, r8, sl
.L0204ad28:
    add r3, lr, r3
.L0204ad2c:
    mov r6, r6, lsr #16
.L0204ad30:
    mov r2, r2, lsr #16
.L0204ad34:
    add r5, r9, r5
.L0204ad38:
    add r1, ip, r1
.L0204ad3c:
    orr r6, r6, r7, lsl #16
.L0204ad40:
    orr r2, r2, r3, lsl #16
.L0204ad44:
    mov r4, r4, lsr #16
.L0204ad48:
    mov r0, r0, lsr #16
.L0204ad4c:
    add r6, r6, r2
.L0204ad50:
    orr r4, r4, r5, lsl #16
.L0204ad54:
    orr r0, r0, r1, lsl #16
.L0204ad58:
    mov r2, r6
.L0204ad5c:
    mov r3, r2, asr #31
.L0204ad60:
    add r4, r4, r0
.L0204ad64:
    mov r0, r4
.L0204ad68:
    mov r1, r0, asr #31
.L0204ad6c:
    mul ip, r2, r3
.L0204ad70:
    umull r4, r5, r2, r2
.L0204ad74:
    mul lr, r0, r1
.L0204ad78:
    umull r6, r7, r0, r0
.L0204ad7c:
    mov r3, #67108864
.L0204ad80:
    ldr r2, [r3, #672]
.L0204ad84:
    ldr r0, [sp, #416]
.L0204ad88:
    mov ip, ip, lsl #1
.L0204ad8c:
    ldr r8, [sp, #60]
.L0204ad90:
    str r2, [r0, #36]
.L0204ad94:
    add r5, ip, r5
.L0204ad98:
    mov lr, lr, lsl #1
.L0204ad9c:
    ldr r2, [sp, #68]
.L0204ada0:
    mov r4, r4, lsr #16
.L0204ada4:
    ldr sl, [sp, #616]
.L0204ada8:
    ldr ip, [sp, #56]
.L0204adac:
    ldr r1, [sp, #64]
.L0204adb0:
    orr r4, r4, r5, lsl #16
.L0204adb4:
    add r7, lr, r7
.L0204adb8:
    ldr r3, [r8]
.L0204adbc:
    mov r6, r6, lsr #16
.L0204adc0:
    ldr lr, [sp, #620]
.L0204adc4:
    ldr r9, [r2]
.L0204adc8:
    rsb r4, r4, sl
.L0204adcc:
    ldr r2, [ip]
.L0204add0:
    orr r6, r6, r7, lsl #16
.L0204add4:
    ldr fp, [r1]
.L0204add8:
    rsb r6, r6, lr
.L0204addc:
    smull r0, r1, r4, r3
.L0204ade0:
    smull r4, r5, r6, r2
.L0204ade4:
    mov r0, r0, lsr #16
.L0204ade8:
    add fp, fp, r9
.L0204adec:
    mov r2, r4, lsr #16
.L0204adf0:
    orr r0, r0, r1, lsl #16
.L0204adf4:
    orr r2, r2, r5, lsl #16
.L0204adf8:
    add r0, fp, r0
.L0204adfc:
    add r4, r0, r2
.L0204ae00:
    cmp r4, #4
.L0204ae04:
    str fp, [sp, #128]
.L0204ae08:
    ble .L0204b07c
.L0204ae0c:
    ldr r1, [pc, #-3228]
.L0204ae10:
    mov r5, #1
.L0204ae14:
    strh r5, [r1, #128]
.L0204ae18:
    ldrh r3, [r1, #128]
.L0204ae1c:
    tst r3, #32768
.L0204ae20:
    bne .L0204ae18
.L0204ae24:
    mov r6, #0
.L0204ae28:
    mov r7, #1
.L0204ae2c:
    mov r3, #67108864
.L0204ae30:
    ldr r2, [pc, #-3264]
.L0204ae34:
    strd r6, [r1, #144]
.L0204ae38:
    str r4, [r3, #664]
.L0204ae3c:
    ldrh r3, [r2, #128]
.L0204ae40:
    tst r3, #32768
.L0204ae44:
    bne .L0204ae3c
.L0204ae48:
    mov r3, #67108864
.L0204ae4c:
    ldr r2, [r3, #672]
.L0204ae50:
    ldr r7, [sp, #416]
.L0204ae54:
    add r3, r3, #-67108864
.L0204ae58:
    ldr r8, [sp, #428]
.L0204ae5c:
    str r2, [r7, #32]
.L0204ae60:
    str r3, [r7, #44]
.L0204ae64:
    ldr r3, [r8]
.L0204ae68:
    cmp r3, #0
.L0204ae6c:
    ble .L0204ae84
.L0204ae70:
    ldr r0, [pc, #-3324]
.L0204ae74:
    smull r4, r5, r3, r0
.L0204ae78:
    mov r2, r4, lsr #16
.L0204ae7c:
    orr r2, r2, r5, lsl #16
.L0204ae80:
    str r2, [r7, #44]
.L0204ae84:
    ldr r5, [sp, #52]
.L0204ae88:
    ldr r6, [sp, #488]
.L0204ae8c:
    mov r0, r5
.L0204ae90:
    mov r1, r0, asr #31
.L0204ae94:
    mul r6, r1, r6
.L0204ae98:
    ldr r7, [sp, #496]
.L0204ae9c:
    ldr lr, [sp, #44]
.L0204aea0:
    ldr r9, [sp, #36]
.L0204aea4:
    mul lr, r7, lr
.L0204aea8:
    ldr fp, [sp, #492]
.L0204aeac:
    mov r8, r9
.L0204aeb0:
    mov r9, r8, asr #31
.L0204aeb4:
    mla fp, r0, fp, r6
.L0204aeb8:
    ldr r5, [sp, #500]
.L0204aebc:
    ldr r6, [sp, #40]
.L0204aec0:
    strd r8, [sp, #104]
.L0204aec4:
    mla r5, r6, r5, lr
.L0204aec8:
    ldr sl, [sp, #472]
.L0204aecc:
    ldr r8, [sp, #108]
.L0204aed0:
    ldr r2, [sp, #480]
.L0204aed4:
    mul r8, sl, r8
.L0204aed8:
    ldr r4, [sp, #488]
.L0204aedc:
    ldr lr, [sp, #104]
.L0204aee0:
    ldr ip, [sp, #92]
.L0204aee4:
    str r5, [sp, #116]
.L0204aee8:
    mul ip, r2, ip
.L0204aeec:
    umull r2, r3, r4, r0
.L0204aef0:
    umull r4, r5, r7, r6
.L0204aef4:
    ldr r0, [sp, #104]
.L0204aef8:
    umull r6, r7, sl, lr
.L0204aefc:
    ldr lr, [sp, #476]
.L0204af00:
    ldr r1, [sp, #88]
.L0204af04:
    mla lr, r0, lr, r8
.L0204af08:
    ldr sl, [sp, #484]
.L0204af0c:
    ldr r8, [sp, #480]
.L0204af10:
    mov r9, r1
.L0204af14:
    mla sl, r1, sl, ip
.L0204af18:
    umull r0, r1, r8, r9
.L0204af1c:
    ldr ip, [sp, #116]
.L0204af20:
    add r3, fp, r3
.L0204af24:
    add r5, ip, r5
.L0204af28:
    ldr r8, [sp, #608]
.L0204af2c:
    ldr r9, [sp, #604]
.L0204af30:
    mov r2, r2, lsr #16
.L0204af34:
    mov r4, r4, lsr #16
.L0204af38:
    add r1, sl, r1
.L0204af3c:
    orr r2, r2, r3, lsl #16
.L0204af40:
    orr r4, r4, r5, lsl #16
.L0204af44:
    ldr r3, [sp, #420]
.L0204af48:
    ldr sl, [sp, #600]
.L0204af4c:
    ldr ip, [sp, #596]
.L0204af50:
    add r2, r8, r2
.L0204af54:
    add r4, r9, r4
.L0204af58:
    add r7, lr, r7
.L0204af5c:
    mov r6, r6, lsr #16
.L0204af60:
    mov r0, r0, lsr #16
.L0204af64:
    orr r6, r6, r7, lsl #16
.L0204af68:
    orr r0, r0, r1, lsl #16
.L0204af6c:
    ldr lr, [r3]
.L0204af70:
    rsb r2, sl, r2
.L0204af74:
    rsb r4, ip, r4
.L0204af78:
    ldr r3, [r3, #4]
.L0204af7c:
    rsb r2, r6, r2
.L0204af80:
    rsb r4, r0, r4
.L0204af84:
    smull r8, r9, r4, r3
.L0204af88:
    smull r0, r1, r2, lr
.L0204af8c:
    ldr r5, [pc, #-3604]
.L0204af90:
    mov r0, r0, lsr #16
.L0204af94:
    ldr r6, [r5]
.L0204af98:
    mov r2, r8, lsr #16
.L0204af9c:
    orr r0, r0, r1, lsl #16
.L0204afa0:
    orr r2, r2, r9, lsl #16
.L0204afa4:
    add r0, r0, r2
.L0204afa8:
    rsb r6, r6, #0
.L0204afac:
    cmp r0, r6
.L0204afb0:
    bge .L0204afdc
.L0204afb4:
    ldr r9, [sp, #424]
.L0204afb8:
    ldr sl, [sp, #416]
.L0204afbc:
    ldr r3, [r9]
.L0204afc0:
    ldr r2, [sl, #44]
.L0204afc4:
    rsb r3, r3, #0
.L0204afc8:
    smull r4, r5, r3, r0
.L0204afcc:
    mov r0, r4, lsr #16
.L0204afd0:
    orr r0, r0, r5, lsl #16
.L0204afd4:
    add r2, r2, r0
.L0204afd8:
    str r2, [sl, #44]
.L0204afdc:
    ldr r5, [sp, #408]
.L0204afe0:
    ldr r6, [sp, #412]
.L0204afe4:
    ldr r7, [sp, #84]
.L0204afe8:
    ldr r3, [r5, #124]
.L0204afec:
    add r6, r6, #1
.L0204aff0:
    add r7, r7, #48
.L0204aff4:
    cmp r3, r6
.L0204aff8:
    str r6, [sp, #412]
.L0204affc:
    str r7, [sp, #84]
.L0204b000:
    bgt .L0204a404
.L0204b004:
    ldr r8, [sp, #404]
.L0204b008:
    ldr sl, [sp, #640]
.L0204b00c:
    ldr r9, [sp, #400]
.L0204b010:
    add r8, r8, #1
.L0204b014:
    add sl, sl, #76
.L0204b018:
    cmp r9, r8
.L0204b01c:
    str r8, [sp, #404]
.L0204b020:
    str sl, [sp, #640]
.L0204b024:
    bne .L0204a2c0
.L0204b028:
    ldr ip, [sp, #644]
.L0204b02c:
    add ip, ip, r9
.L0204b030:
    str ip, [sp, #644]
.L0204b034:
    ldr lr, [sp, #388]
.L0204b038:
    ldr r0, [sp, #376]
.L0204b03c:
    add lr, lr, #1
.L0204b040:
    cmp r0, lr
.L0204b044:
    str lr, [sp, #388]
.L0204b048:
    bne .L0204a1ac
.L0204b04c:
    ldr r1, [sp, #384]
.L0204b050:
    ldr r2, [sp, #644]
.L0204b054:
    ldr r3, [r1, #20]
.L0204b058:
    cmp r3, r2
.L0204b05c:
    beq .L0204b070
.L0204b060:
    ldr r0, [pc, #-3808]
.L0204b064:
    mov r1, #144
.L0204b068:
    ldr r2, [pc, #-3820]
.L0204b06c:
    bl reconstructed_external_arm_02097804
.L0204b070:
    ldr r0, [sp, #384]
.L0204b074:
    add sp, sp, #652
.L0204b078:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0204b07c:
    ldr r0, [pc, #-3836]
.L0204b080:
    mov r1, #123
.L0204b084:
    ldr r2, [pc, #-3840]
.L0204b088:
    bl reconstructed_external_arm_02097804
.L0204b08c:
    b .L0204ae0c
.L0204b090:
    ldr r0, [pc, #100]
.L0204b094:
    mov r1, #113
.L0204b098:
    ldr r2, [pc, #96]
.L0204b09c:
    bl reconstructed_external_arm_02097804
.L0204b0a0:
    b .L0204ac6c
.L0204b0a4:
    ldr r0, [pc, #80]
.L0204b0a8:
    mov r1, #107
.L0204b0ac:
    ldr r2, [pc, #80]
.L0204b0b0:
    bl reconstructed_external_arm_02097804
.L0204b0b4:
    b .L0204aa8c
.L0204b0b8:
    ldr r0, [pc, #60]
.L0204b0bc:
    mov r1, #73
.L0204b0c0:
    ldr r2, [pc, #64]
.L0204b0c4:
    bl reconstructed_external_arm_02097804
.L0204b0c8:
    b .L0204a2f8
.L0204b0cc:
    ldr r0, [pc, #40]
.L0204b0d0:
    mov r1, #69
.L0204b0d4:
    ldr r2, [pc, #48]
.L0204b0d8:
    bl reconstructed_external_arm_02097804
.L0204b0dc:
    b .L0204a2dc
.L0204b0e0:
    mov r0, r6
.L0204b0e4:
    mov r1, r4
.L0204b0e8:
    bl reconstructed_external_arm_0202fb28
.L0204b0ec:
    ldr r3, [sp, #384]
.L0204b0f0:
    str r4, [sp, #644]
.L0204b0f4:
    str r0, [r3, #16]
.L0204b0f8:
    b .L0204b04c
.L0204b0fc:
    .long 0x020c3b0c  /* literal data */
.L0204b100:
    .long 0x020c3ba0  /* literal data */
.L0204b104:
    .long 0x020c3b84  /* literal data */
.L0204b108:
    .long 0x020c3b68  /* literal data */
.L0204b10c:
    .long 0x020c3b4c  /* literal data */
.L0204b110:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0204b114:
    mov r4, #0
.L0204b118:
    sub sp, sp, #652
.L0204b11c:
    str r4, [r0, #4]
.L0204b120:
    str r4, [r0]
.L0204b124:
    str r0, [sp, #384]
.L0204b128:
    cmp r3, #0
.L0204b12c:
    ldr r0, [r1]
.L0204b130:
    ldr lr, [r1, #8]
.L0204b134:
    ldr r6, [sp, #688]
.L0204b138:
    ldr r1, [r1, #4]
.L0204b13c:
    str r3, [sp, #376]
.L0204b140:
    ldr r3, [sp, #384]
.L0204b144:
    str r2, [sp, #380]
.L0204b148:
    stmia r3, {r0, r1, lr}
.L0204b14c:
    str r6, [r3, #12]
.L0204b150:
    str r4, [r3, #20]
.L0204b154:
    ble .L0204c124
.L0204b158:
    mov r6, r4
.L0204b15c:
    b .L0204b184
.L0204b160:
    ldr r7, [sp, #384]
.L0204b164:
    ldr r2, [ip, #8]
.L0204b168:
    ldr r3, [r7, #20]
.L0204b16c:
    ldr r8, [sp, #376]
.L0204b170:
    add r1, r3, r2
.L0204b174:
    cmp r8, r6
.L0204b178:
    add r4, r4, #4
.L0204b17c:
    str r1, [r7, #20]
.L0204b180:
    beq .L0204b1d4
.L0204b184:
    ldr r5, [sp, #380]
.L0204b188:
    add r6, r6, #1
.L0204b18c:
    ldr ip, [r4, r5]
.L0204b190:
    ldr r0, [pc, #52]
.L0204b194:
    ldr r3, [ip, #4]
.L0204b198:
    mov r1, #42
.L0204b19c:
    tst r3, #1
.L0204b1a0:
    ldr r2, [pc, #12]
.L0204b1a4:
    beq .L0204b160
.L0204b1a8:
    bl reconstructed_external_arm_02097804
.L0204b1ac:
    ldr ip, [r4, r5]
.L0204b1b0:
    b .L0204b160
.L0204b1b4:
    .long 0x020c3b34  /* literal data */
.L0204b1b8:
    .long 0xffff0000  /* literal data */
.L0204b1bc:
    .long 0x04000200  /* literal data */
.L0204b1c0:
    .long 0xffc40000  /* literal data */
.L0204b1c4:
    .long 0x020caf0c  /* literal data */
.L0204b1c8:
    .long 0x020c3be0  /* literal data */
.L0204b1cc:
    .long 0x020c3b0c  /* literal data */
.L0204b1d0:
    .long 0x020c3bc0  /* literal data */
.L0204b1d4:
    mov r1, r1, lsl #7
.L0204b1d8:
    ldr r0, [r7, #12]
.L0204b1dc:
    bl reconstructed_external_arm_0202fb28
.L0204b1e0:
    mov r9, #0
.L0204b1e4:
    str r9, [sp, #644]
.L0204b1e8:
    str r0, [r7, #16]
.L0204b1ec:
    str r9, [sp, #388]
.L0204b1f0:
    ldr sl, [sp, #388]
.L0204b1f4:
    ldr ip, [sp, #380]
.L0204b1f8:
    ldr r4, [ip, sl, lsl #2]
.L0204b1fc:
    ldr r3, [r4, #52]
.L0204b200:
    ldr r2, [r4, #56]
.L0204b204:
    ldr lr, [r4, #8]
.L0204b208:
    ldr r3, [r3, #12]
.L0204b20c:
    ldr r2, [r2, #12]
.L0204b210:
    str r3, [sp, #392]
.L0204b214:
    str r2, [sp, #396]
.L0204b218:
    ldr r3, [r4]
.L0204b21c:
    mov r0, r4
.L0204b220:
    str lr, [sp, #400]
.L0204b224:
    mov lr, pc
.L0204b228:
    ldr pc, [r3]
.L0204b22c:
    ldr r2, [r4, #64]
.L0204b230:
    ldr r4, [r4, #60]
.L0204b234:
    ldr r3, [sp, #392]
.L0204b238:
    str r4, [sp, #588]
.L0204b23c:
    ldr r5, [sp, #396]
.L0204b240:
    ldr r4, [sp, #392]
.L0204b244:
    ldr r6, [sp, #396]
.L0204b248:
    ldr r7, [sp, #392]
.L0204b24c:
    mov r1, r0
.L0204b250:
    ldr r0, [sp, #400]
.L0204b254:
    ldr r3, [r3, #64]
.L0204b258:
    ldr r4, [r4, #68]
.L0204b25c:
    ldr r5, [r5, #64]
.L0204b260:
    ldr r6, [r6, #68]
.L0204b264:
    ldr r7, [r7, #72]
.L0204b268:
    ldr r8, [sp, #396]
.L0204b26c:
    cmp r0, #0
.L0204b270:
    str r2, [sp, #592]
.L0204b274:
    str r3, [sp, #600]
.L0204b278:
    str r4, [sp, #596]
.L0204b27c:
    str r5, [sp, #608]
.L0204b280:
    str r6, [sp, #604]
.L0204b284:
    str r7, [sp, #612]
.L0204b288:
    ldr r0, [r8, #72]
.L0204b28c:
    ble .L0204c078
.L0204b290:
    ldr r4, [sp, #392]
.L0204b294:
    ldr r7, [sp, #392]
.L0204b298:
    ldr r9, [sp, #392]
.L0204b29c:
    ldr sl, [sp, #396]
.L0204b2a0:
    ldr ip, [sp, #612]
.L0204b2a4:
    mov r2, r0
.L0204b2a8:
    mov r3, r2, asr #31
.L0204b2ac:
    add r5, r8, #28
.L0204b2b0:
    add r6, r8, #12
.L0204b2b4:
    strd r2, [sp, #40]
.L0204b2b8:
    add r4, r4, #12
.L0204b2bc:
    mov r3, #0
.L0204b2c0:
    add r7, r7, #120
.L0204b2c4:
    add r8, r8, #120
.L0204b2c8:
    add r9, r9, #128
.L0204b2cc:
    add sl, sl, #128
.L0204b2d0:
    rsb r0, r0, #0
.L0204b2d4:
    rsb ip, ip, #0
.L0204b2d8:
    str r1, [sp, #640]
.L0204b2dc:
    str r3, [sp, #404]
.L0204b2e0:
    str r4, [sp, #80]
.L0204b2e4:
    str r5, [sp, #76]
.L0204b2e8:
    str r6, [sp, #72]
.L0204b2ec:
    str r7, [sp, #68]
.L0204b2f0:
    str r8, [sp, #64]
.L0204b2f4:
    str r9, [sp, #60]
.L0204b2f8:
    str sl, [sp, #56]
.L0204b2fc:
    str r0, [sp, #52]
.L0204b300:
    str ip, [sp, #36]
.L0204b304:
    ldr lr, [sp, #640]
.L0204b308:
    ldr r0, [sp, #644]
.L0204b30c:
    ldr r3, [lr, #72]
.L0204b310:
    ldr r1, [sp, #404]
.L0204b314:
    cmp r3, #0
.L0204b318:
    add r4, r0, r1
.L0204b31c:
    ble .L0204c110
.L0204b320:
    ldr r2, [sp, #384]
.L0204b324:
    ldr r5, [sp, #640]
.L0204b328:
    ldr r3, [r2, #20]
.L0204b32c:
    ldr r6, [r5, #64]
.L0204b330:
    cmp r4, r3
.L0204b334:
    ldr r7, [r5, #68]
.L0204b338:
    bge .L0204c0fc
.L0204b33c:
    ldr r8, [sp, #384]
.L0204b340:
    ldr r9, [sp, #640]
.L0204b344:
    ldr r3, [r8, #16]
.L0204b348:
    ldr r1, [r9, #72]
.L0204b34c:
    mov r2, r4, lsl #7
.L0204b350:
    add r2, r2, r3
.L0204b354:
    str r1, [r2, #124]
.L0204b358:
    cmp r1, #0
.L0204b35c:
    ldr ip, [sp, #392]
.L0204b360:
    ldr lr, [sp, #396]
.L0204b364:
    ldr r0, [sp, #588]
.L0204b368:
    ldr r1, [sp, #592]
.L0204b36c:
    add sl, r2, #96
.L0204b370:
    str r7, [sl, #4]
.L0204b374:
    str r2, [sp, #408]
.L0204b378:
    str ip, [r2, #108]
.L0204b37c:
    str lr, [r2, #112]
.L0204b380:
    str r9, [r2, #104]
.L0204b384:
    str r6, [r2, #96]
.L0204b388:
    str r0, [r2, #116]
.L0204b38c:
    str r1, [r2, #120]
.L0204b390:
    add r2, r2, #120
.L0204b394:
    str sl, [sp, #420]
.L0204b398:
    str r2, [sp, #424]
.L0204b39c:
    ble .L0204c048
.L0204b3a0:
    mov r4, r6
.L0204b3a4:
    mov r5, r4, asr #31
.L0204b3a8:
    add r8, sp, #624
.L0204b3ac:
    stmia r8, {r4, r5}
.L0204b3b0:
    ldr r2, [pc, #-512]
.L0204b3b4:
    ldr r9, [sp, #624]
.L0204b3b8:
    rsb r1, r4, #0
.L0204b3bc:
    mov lr, r5
.L0204b3c0:
    mla lr, r2, lr, r1
.L0204b3c4:
    add r4, sp, #640
.L0204b3c8:
    umull r0, r1, r9, r2
.L0204b3cc:
    mov r2, r7
.L0204b3d0:
    mov r3, r2, asr #31
.L0204b3d4:
    stmdb r4, {r2, r3}
.L0204b3d8:
    ldr r6, [sp, #632]
.L0204b3dc:
    ldr r5, [sp, #636]
.L0204b3e0:
    mov r2, r6, lsl #16
.L0204b3e4:
    mov r3, r5, lsl #16
.L0204b3e8:
    mov r7, #0
.L0204b3ec:
    orr r3, r3, r6, lsr #16
.L0204b3f0:
    add r1, lr, r1
.L0204b3f4:
    mov r0, r0, lsr #16
.L0204b3f8:
    mov r2, r2, lsr #16
.L0204b3fc:
    str r7, [sp, #412]
.L0204b400:
    ldr r7, [sp, #612]
.L0204b404:
    orr r2, r2, r3, lsl #16
.L0204b408:
    orr r0, r0, r1, lsl #16
.L0204b40c:
    mov r8, r2
.L0204b410:
    mov r9, r8, asr #31
.L0204b414:
    add r4, sp, #576
.L0204b418:
    mov r2, r0
.L0204b41c:
    mov r3, r2, asr #31
.L0204b420:
    mov r6, r7
.L0204b424:
    mov r7, r6, asr #31
.L0204b428:
    add sl, sp, #576
.L0204b42c:
    stmdb r4, {r2, r3}
.L0204b430:
    strd r6, [sp, #88]
.L0204b434:
    stmia sl, {r8, r9}
.L0204b438:
    add r5, ip, #28
.L0204b43c:
    mov r8, #0
.L0204b440:
    str r5, [sp, #96]
.L0204b444:
    str r8, [sp, #84]
.L0204b448:
    ldr r9, [sp, #412]
.L0204b44c:
    ldr sl, [sp, #640]
.L0204b450:
    mov r0, r9, lsl #5
.L0204b454:
    add r1, sl, r0
.L0204b458:
    ldr lr, [sp, #84]
.L0204b45c:
    ldr ip, [sp, #408]
.L0204b460:
    ldr r2, [r1, #20]
.L0204b464:
    add ip, ip, lr
.L0204b468:
    str r2, [ip, #16]
.L0204b46c:
    ldr r3, [r1, #24]
.L0204b470:
    ldr r5, [sp, #80]
.L0204b474:
    str r3, [ip, #20]
.L0204b478:
    ldr r2, [r1, #16]
.L0204b47c:
    mov r3, #0
.L0204b480:
    str r3, [ip, #24]
.L0204b484:
    str r2, [ip, #40]
.L0204b488:
    ldr r3, [sl, r0]
.L0204b48c:
    ldr r2, [r1, #4]
.L0204b490:
    ldr r0, [sp, #408]
.L0204b494:
    str r2, [ip, #4]
.L0204b498:
    str r3, [r0, lr]
.L0204b49c:
    ldr r7, [r1, #12]
.L0204b4a0:
    ldr r3, [r1, #8]
.L0204b4a4:
    ldr r8, [sp, #80]
.L0204b4a8:
    str r3, [ip, #8]
.L0204b4ac:
    str r7, [ip, #12]
.L0204b4b0:
    ldr r1, [sp, #392]
.L0204b4b4:
    ldr r2, [sp, #84]
.L0204b4b8:
    ldr r4, [sp, #96]
.L0204b4bc:
    ldr r5, [r5, #8]
.L0204b4c0:
    ldr r8, [r8, #4]
.L0204b4c4:
    ldr lr, [r1, #28]
.L0204b4c8:
    ldr r6, [r0, r2]
.L0204b4cc:
    ldr sl, [r4, #4]
.L0204b4d0:
    ldr r2, [r1, #12]
.L0204b4d4:
    ldr r4, [ip, #4]
.L0204b4d8:
    str ip, [sp, #416]
.L0204b4dc:
    str r5, [sp, #4]
.L0204b4e0:
    str r8, [sp, #24]
.L0204b4e4:
    ldr r8, [sp, #72]
.L0204b4e8:
    ldr ip, [sp, #396]
.L0204b4ec:
    ldr r9, [sp, #80]
.L0204b4f0:
    ldr r1, [ip, #28]
.L0204b4f4:
    ldr fp, [r8, #12]
.L0204b4f8:
    ldr r9, [r9, #12]
.L0204b4fc:
    rsb r6, lr, r6
.L0204b500:
    rsb r4, sl, r4
.L0204b504:
    ldmib r8, {sl, lr}
.L0204b508:
    ldr r8, [sp, #4]
.L0204b50c:
    str r9, [sp, #20]
.L0204b510:
    rsb r3, r1, r3
.L0204b514:
    mov r9, r8, asr #31
.L0204b518:
    add r1, sp, #352
.L0204b51c:
    stmia r1, {r8, r9}
.L0204b520:
    ldr r8, [sp, #24]
.L0204b524:
    add r1, sp, #336
.L0204b528:
    mov r9, r8, asr #31
.L0204b52c:
    stmia r1, {r8, r9}
.L0204b530:
    ldr r8, [sp, #20]
.L0204b534:
    ldr r5, [sp, #76]
.L0204b538:
    str r3, [sp, #12]
.L0204b53c:
    mov r9, r8, asr #31
.L0204b540:
    add r1, sp, #320
.L0204b544:
    stmdb r1, {r8, r9}
.L0204b548:
    ldr r0, [r5, #4]
.L0204b54c:
    ldr r8, [sp, #12]
.L0204b550:
    ldr ip, [ip, #12]
.L0204b554:
    rsb r0, r0, r7
.L0204b558:
    add r1, sp, #464
.L0204b55c:
    mov r9, r8, asr #31
.L0204b560:
    stmia r1, {r8, r9}
.L0204b564:
    mov r8, r0
.L0204b568:
    mov r9, r8, asr #31
.L0204b56c:
    stmdb r1, {r8, r9}
.L0204b570:
    add r0, sp, #304
.L0204b574:
    mov r8, ip
.L0204b578:
    mov r9, r8, asr #31
.L0204b57c:
    stmdb r0, {r8, r9}
.L0204b580:
    add ip, sp, #288
.L0204b584:
    mov r8, lr
.L0204b588:
    mov r9, r8, asr #31
.L0204b58c:
    stmdb ip, {r8, r9}
.L0204b590:
    mov r0, sl
.L0204b594:
    mov r1, r0, asr #31
.L0204b598:
    add r8, sp, #272
.L0204b59c:
    stmdb r8, {r0, r1}
.L0204b5a0:
    mov r0, fp
.L0204b5a4:
    mov r1, r0, asr #31
.L0204b5a8:
    strd r0, [sp, #240]
.L0204b5ac:
    ldr sl, [sp, #296]
.L0204b5b0:
    ldr r1, [sp, #340]
.L0204b5b4:
    ldr r8, [sp, #316]
.L0204b5b8:
    ldr r9, [sp, #468]
.L0204b5bc:
    mov r7, r6, asr #31
.L0204b5c0:
    mov r5, r4, asr #31
.L0204b5c4:
    mul r1, r6, r1
.L0204b5c8:
    mul r8, r4, r8
.L0204b5cc:
    mul r9, sl, r9
.L0204b5d0:
    ldr lr, [sp, #352]
.L0204b5d4:
    str r1, [sp, #332]
.L0204b5d8:
    str r8, [sp, #308]
.L0204b5dc:
    str r9, [sp, #288]
.L0204b5e0:
    ldr r8, [sp, #464]
.L0204b5e4:
    ldr r1, [sp, #268]
.L0204b5e8:
    ldr sl, [sp, #456]
.L0204b5ec:
    mul r1, r8, r1
.L0204b5f0:
    ldr r9, [sp, #244]
.L0204b5f4:
    ldr r0, [sp, #280]
.L0204b5f8:
    mul r9, sl, r9
.L0204b5fc:
    ldr r8, [sp, #336]
.L0204b600:
    ldr ip, [sp, #460]
.L0204b604:
    mov r3, r2, asr #31
.L0204b608:
    mul fp, r2, r7
.L0204b60c:
    mul ip, r0, ip
.L0204b610:
    str r1, [sp, #256]
.L0204b614:
    umull r0, r1, r6, r8
.L0204b618:
    str r9, [sp, #232]
.L0204b61c:
    ldr r9, [sp, #312]
.L0204b620:
    add r8, sp, #320
.L0204b624:
    mla fp, r6, r3, fp
.L0204b628:
    mul lr, r5, lr
.L0204b62c:
    stmia r8, {r0, r1}
.L0204b630:
    umull r0, r1, r4, r9
.L0204b634:
    umull r8, r9, r2, r6
.L0204b638:
    str ip, [sp, #272]
.L0204b63c:
    ldr ip, [sp, #356]
.L0204b640:
    add sl, sp, #368
.L0204b644:
    stmdb sl, {r8, r9}
.L0204b648:
    mla ip, r4, ip, lr
.L0204b64c:
    ldr r8, [sp, #336]
.L0204b650:
    ldr lr, [sp, #352]
.L0204b654:
    str fp, [sp, #372]
.L0204b658:
    ldr fp, [sp, #332]
.L0204b65c:
    umull r2, r3, lr, r4
.L0204b660:
    ldr r6, [sp, #464]
.L0204b664:
    mla fp, r8, r7, fp
.L0204b668:
    ldr r9, [sp, #312]
.L0204b66c:
    ldr r7, [sp, #264]
.L0204b670:
    ldr lr, [sp, #308]
.L0204b674:
    ldr sl, [sp, #456]
.L0204b678:
    mla lr, r9, r5, lr
.L0204b67c:
    umull r4, r5, r6, r7
.L0204b680:
    strd r4, [sp, #248]
.L0204b684:
    mov r5, r6
.L0204b688:
    ldr r4, [sp, #300]
.L0204b68c:
    ldr r6, [sp, #288]
.L0204b690:
    str ip, [sp, #348]
.L0204b694:
    mla r4, r5, r4, r6
.L0204b698:
    ldr ip, [sp, #240]
.L0204b69c:
    str r4, [sp, #292]
.L0204b6a0:
    umull r8, r9, sl, ip
.L0204b6a4:
    ldr r4, [sp, #272]
.L0204b6a8:
    ldr ip, [sp, #456]
.L0204b6ac:
    ldr sl, [sp, #284]
.L0204b6b0:
    strd r8, [sp, #224]
.L0204b6b4:
    mla sl, ip, sl, r4
.L0204b6b8:
    ldr r8, [sp, #296]
.L0204b6bc:
    str sl, [sp, #276]
.L0204b6c0:
    umull r6, r7, r8, r5
.L0204b6c4:
    ldr r8, [sp, #280]
.L0204b6c8:
    ldr sl, [sp, #468]
.L0204b6cc:
    umull r4, r5, r8, ip
.L0204b6d0:
    ldr ip, [sp, #264]
.L0204b6d4:
    ldr r8, [sp, #256]
.L0204b6d8:
    ldr r9, [sp, #460]
.L0204b6dc:
    mla sl, ip, sl, r8
.L0204b6e0:
    ldr ip, [sp, #232]
.L0204b6e4:
    str sl, [sp, #260]
.L0204b6e8:
    ldr sl, [sp, #240]
.L0204b6ec:
    ldr r8, [sp, #372]
.L0204b6f0:
    mla r9, sl, r9, ip
.L0204b6f4:
    ldr sl, [sp, #348]
.L0204b6f8:
    str r9, [sp, #236]
.L0204b6fc:
    ldr r9, [sp, #364]
.L0204b700:
    ldr ip, [sp, #324]
.L0204b704:
    add r8, r8, r9
.L0204b708:
    add r3, sl, r3
.L0204b70c:
    ldr sl, [sp, #320]
.L0204b710:
    str r8, [sp, #364]
.L0204b714:
    add fp, fp, ip
.L0204b718:
    ldr r9, [sp, #364]
.L0204b71c:
    mov sl, sl, lsr #16
.L0204b720:
    orr ip, sl, fp, lsl #16
.L0204b724:
    add r1, lr, r1
.L0204b728:
    ldr lr, [sp, #360]
.L0204b72c:
    str ip, [sp, #432]
.L0204b730:
    mov r9, r9, asr #16
.L0204b734:
    mov lr, lr, lsr #16
.L0204b738:
    str r9, [sp, #444]
.L0204b73c:
    mov r2, r2, lsr #16
.L0204b740:
    ldr r9, [sp, #432]
.L0204b744:
    mov r0, r0, lsr #16
.L0204b748:
    orr r8, lr, r8, lsl #16
.L0204b74c:
    orr r2, r2, r3, lsl #16
.L0204b750:
    mov lr, fp, asr #16
.L0204b754:
    orr r0, r0, r1, lsl #16
.L0204b758:
    add ip, r8, r2
.L0204b75c:
    ldr r1, [sp, #260]
.L0204b760:
    ldr r2, [sp, #252]
.L0204b764:
    str lr, [sp, #436]
.L0204b768:
    add lr, r9, r0
.L0204b76c:
    ldr r9, [sp, #248]
.L0204b770:
    ldr sl, [sp, #292]
.L0204b774:
    ldr r0, [sp, #276]
.L0204b778:
    ldr r3, [sp, #236]
.L0204b77c:
    str r8, [sp, #440]
.L0204b780:
    ldr r8, [sp, #228]
.L0204b784:
    add r2, r1, r2
.L0204b788:
    mov r9, r9, lsr #16
.L0204b78c:
    add r8, r3, r8
.L0204b790:
    add r7, sl, r7
.L0204b794:
    add r5, r0, r5
.L0204b798:
    orr sl, r9, r2, lsl #16
.L0204b79c:
    mov r0, r2, asr #16
.L0204b7a0:
    str fp, [sp, #324]
.L0204b7a4:
    str r2, [sp, #252]
.L0204b7a8:
    str r8, [sp, #228]
.L0204b7ac:
    str sl, [sp, #448]
.L0204b7b0:
    str r0, [sp, #452]
.L0204b7b4:
    ldr r1, [sp, #224]
.L0204b7b8:
    mov r6, r6, lsr #16
.L0204b7bc:
    mov r2, r1, lsr #16
.L0204b7c0:
    orr r2, r2, r8, lsl #16
.L0204b7c4:
    add r2, sl, r2
.L0204b7c8:
    mov r0, ip
.L0204b7cc:
    mov r1, r0, asr #31
.L0204b7d0:
    str r2, [sp, #212]
.L0204b7d4:
    add r2, sp, #480
.L0204b7d8:
    stmia r2, {r0, r1}
.L0204b7dc:
    ldr r0, [sp, #212]
.L0204b7e0:
    add r2, sp, #496
.L0204b7e4:
    mov r1, r0, asr #31
.L0204b7e8:
    mov r4, r4, lsr #16
.L0204b7ec:
    stmdb r2, {r0, r1}
.L0204b7f0:
    orr r6, r6, r7, lsl #16
.L0204b7f4:
    orr r4, r4, r5, lsl #16
.L0204b7f8:
    ldr r2, [sp, #636]
.L0204b7fc:
    add r6, r6, r4
.L0204b800:
    ldr r1, [sp, #480]
.L0204b804:
    mov r4, lr
.L0204b808:
    mov r5, r4, asr #31
.L0204b80c:
    add r7, sp, #480
.L0204b810:
    ldr r3, [sp, #628]
.L0204b814:
    stmdb r7, {r4, r5}
.L0204b818:
    mul r2, r4, r2
.L0204b81c:
    ldr r0, [sp, #636]
.L0204b820:
    ldr r4, [sp, #488]
.L0204b824:
    mul r3, r1, r3
.L0204b828:
    ldr r1, [sp, #628]
.L0204b82c:
    mov r8, r6
.L0204b830:
    mov r9, r8, asr #31
.L0204b834:
    mul r0, r4, r0
.L0204b838:
    add sl, sp, #496
.L0204b83c:
    stmia sl, {r8, r9}
.L0204b840:
    ldr r5, [sp, #624]
.L0204b844:
    ldr sl, [sp, #632]
.L0204b848:
    mul r1, r8, r1
.L0204b84c:
    ldr r6, [sp, #632]
.L0204b850:
    ldr r9, [sp, #472]
.L0204b854:
    ldr fp, [sp, #484]
.L0204b858:
    ldr lr, [sp, #476]
.L0204b85c:
    ldr r8, [sp, #480]
.L0204b860:
    ldr ip, [sp, #492]
.L0204b864:
    mla fp, r5, fp, r3
.L0204b868:
    mla lr, r6, lr, r2
.L0204b86c:
    umull r2, r3, r9, sl
.L0204b870:
    ldr r9, [sp, #500]
.L0204b874:
    umull r6, r7, r8, r5
.L0204b878:
    mla ip, sl, ip, r0
.L0204b87c:
    ldr r8, [sp, #488]
.L0204b880:
    ldr r0, [sp, #496]
.L0204b884:
    mla r9, r5, r9, r1
.L0204b888:
    mov r1, r5
.L0204b88c:
    umull r4, r5, r0, r1
.L0204b890:
    umull r0, r1, r8, sl
.L0204b894:
    add r7, fp, r7
.L0204b898:
    add r3, lr, r3
.L0204b89c:
    mov r6, r6, lsr #16
.L0204b8a0:
    mov r2, r2, lsr #16
.L0204b8a4:
    orr r2, r2, r3, lsl #16
.L0204b8a8:
    add r5, r9, r5
.L0204b8ac:
    add r1, ip, r1
.L0204b8b0:
    orr r6, r6, r7, lsl #16
.L0204b8b4:
    mov r4, r4, lsr #16
.L0204b8b8:
    mov r0, r0, lsr #16
.L0204b8bc:
    add r6, r6, r2
.L0204b8c0:
    orr r4, r4, r5, lsl #16
.L0204b8c4:
    orr r0, r0, r1, lsl #16
.L0204b8c8:
    ldr r5, [sp, #480]
.L0204b8cc:
    ldr r3, [sp, #484]
.L0204b8d0:
    add r4, r4, r0
.L0204b8d4:
    add r2, sp, #512
.L0204b8d8:
    mov r0, r6
.L0204b8dc:
    mov r1, r0, asr #31
.L0204b8e0:
    ldr r7, [sp, #472]
.L0204b8e4:
    stmdb r2, {r0, r1}
.L0204b8e8:
    mul r3, r5, r3
.L0204b8ec:
    mov r8, r4
.L0204b8f0:
    mov r9, r8, asr #31
.L0204b8f4:
    umull r0, r1, r5, r5
.L0204b8f8:
    ldr r6, [sp, #476]
.L0204b8fc:
    ldr r5, [sp, #496]
.L0204b900:
    ldr r4, [sp, #500]
.L0204b904:
    mul r6, r7, r6
.L0204b908:
    mul r4, r5, r4
.L0204b90c:
    add sl, sp, #528
.L0204b910:
    stmia sl, {r8, r9}
.L0204b914:
    str r3, [sp, #220]
.L0204b918:
    str r6, [sp, #8]
.L0204b91c:
    umull r2, r3, r7, r7
.L0204b920:
    str r4, [sp, #216]
.L0204b924:
    ldr r7, [sp, #504]
.L0204b928:
    ldr ip, [sp, #528]
.L0204b92c:
    umull r8, r9, r7, r7
.L0204b930:
    strd r8, [sp, #200]
.L0204b934:
    ldr r9, [sp, #532]
.L0204b938:
    ldr r6, [sp, #488]
.L0204b93c:
    mul r9, ip, r9
.L0204b940:
    ldr r8, [sp, #488]
.L0204b944:
    ldr fp, [sp, #492]
.L0204b948:
    ldr sl, [sp, #508]
.L0204b94c:
    str r9, [sp, #192]
.L0204b950:
    mul fp, r6, fp
.L0204b954:
    mul sl, r7, sl
.L0204b958:
    umull r6, r7, r5, r5
.L0204b95c:
    umull r4, r5, r8, r8
.L0204b960:
    umull r8, r9, ip, ip
.L0204b964:
    ldr lr, [sp, #220]
.L0204b968:
    strd r8, [sp, #184]
.L0204b96c:
    ldr r8, [sp, #8]
.L0204b970:
    mov lr, lr, lsl #1
.L0204b974:
    mov r8, r8, lsl #1
.L0204b978:
    add r1, lr, r1
.L0204b97c:
    add r3, r8, r3
.L0204b980:
    mov r0, r0, lsr #16
.L0204b984:
    mov r2, r2, lsr #16
.L0204b988:
    orr r2, r2, r3, lsl #16
.L0204b98c:
    ldr r9, [sp, #216]
.L0204b990:
    orr r0, r0, r1, lsl #16
.L0204b994:
    add r0, r0, r2
.L0204b998:
    ldr lr, [sp, #192]
.L0204b99c:
    str r0, [sp, #616]
.L0204b9a0:
    ldr ip, [sp, #204]
.L0204b9a4:
    ldr r0, [sp, #200]
.L0204b9a8:
    mov r9, r9, lsl #1
.L0204b9ac:
    mov fp, fp, lsl #1
.L0204b9b0:
    add r7, r9, r7
.L0204b9b4:
    mov sl, sl, lsl #1
.L0204b9b8:
    add r5, fp, r5
.L0204b9bc:
    mov lr, lr, lsl #1
.L0204b9c0:
    mov r6, r6, lsr #16
.L0204b9c4:
    mov r4, r4, lsr #16
.L0204b9c8:
    add ip, sl, ip
.L0204b9cc:
    str lr, [sp, #192]
.L0204b9d0:
    orr r4, r4, r5, lsl #16
.L0204b9d4:
    ldr r9, [sp, #392]
.L0204b9d8:
    orr r6, r6, r7, lsl #16
.L0204b9dc:
    mov r2, r0, lsr #16
.L0204b9e0:
    orr r2, r2, ip, lsl #16
.L0204b9e4:
    add r6, r6, r4
.L0204b9e8:
    ldr sl, [sp, #616]
.L0204b9ec:
    ldr r1, [sp, #188]
.L0204b9f0:
    str ip, [sp, #204]
.L0204b9f4:
    ldr r3, [sp, #184]
.L0204b9f8:
    ldr ip, [sp, #192]
.L0204b9fc:
    ldr r0, [r9, #128]
.L0204ba00:
    str r6, [sp, #620]
.L0204ba04:
    add r1, ip, r1
.L0204ba08:
    rsb lr, r2, sl
.L0204ba0c:
    mov r3, r3, lsr #16
.L0204ba10:
    ldr r2, [sp, #396]
.L0204ba14:
    ldr ip, [sp, #620]
.L0204ba18:
    orr r5, r3, r1, lsl #16
.L0204ba1c:
    mov r8, lr
.L0204ba20:
    mov r9, r8, asr #31
.L0204ba24:
    mov r6, r1, asr #16
.L0204ba28:
    str r1, [sp, #188]
.L0204ba2c:
    add sl, sp, #512
.L0204ba30:
    mov r1, r0, asr #31
.L0204ba34:
    stmia sl, {r8, r9}
.L0204ba38:
    ldr r4, [r2, #128]
.L0204ba3c:
    rsb ip, r5, ip
.L0204ba40:
    mul r9, r0, r9
.L0204ba44:
    mov r2, ip
.L0204ba48:
    mov r3, r2, asr #31
.L0204ba4c:
    str r5, [sp, #520]
.L0204ba50:
    add r5, sp, #544
.L0204ba54:
    str r6, [sp, #524]
.L0204ba58:
    mov lr, r3
.L0204ba5c:
    stmdb r5, {r2, r3}
.L0204ba60:
    mov r5, r4, asr #31
.L0204ba64:
    mul lr, r4, lr
.L0204ba68:
    ldr r7, [sp, #512]
.L0204ba6c:
    mov r6, r9
.L0204ba70:
    umull r2, r3, r0, r7
.L0204ba74:
    mla r6, r8, r1, r6
.L0204ba78:
    ldr r7, [sp, #536]
.L0204ba7c:
    ldr r8, [sp, #536]
.L0204ba80:
    mla r7, r5, r7, lr
.L0204ba84:
    umull r0, r1, r4, r8
.L0204ba88:
    ldr r9, [sp, #396]
.L0204ba8c:
    ldr sl, [sp, #392]
.L0204ba90:
    ldr lr, [r9, #120]
.L0204ba94:
    ldr sl, [sl, #120]
.L0204ba98:
    add r3, r6, r3
.L0204ba9c:
    mov r2, r2, lsr #16
.L0204baa0:
    add lr, lr, sl
.L0204baa4:
    orr r2, r2, r3, lsl #16
.L0204baa8:
    add r1, r7, r1
.L0204baac:
    mov r0, r0, lsr #16
.L0204bab0:
    add lr, lr, r2
.L0204bab4:
    orr r0, r0, r1, lsl #16
.L0204bab8:
    ldr ip, [sp, #416]
.L0204babc:
    add r4, lr, r0
.L0204bac0:
    add ip, ip, #40
.L0204bac4:
    cmp r4, #4
.L0204bac8:
    str ip, [sp, #428]
.L0204bacc:
    ble .L0204c0e8
.L0204bad0:
    ldr r3, [pc, #-2332]
.L0204bad4:
    mov lr, #1
.L0204bad8:
    strh lr, [r3, #128]
.L0204badc:
    mov r2, r3
.L0204bae0:
    ldrh r3, [r2, #128]
.L0204bae4:
    tst r3, #32768
.L0204bae8:
    bne .L0204bae0
.L0204baec:
    mov r0, #0
.L0204baf0:
    mov r1, #1
.L0204baf4:
    mov r3, #67108864
.L0204baf8:
    strd r0, [r2, #144]
.L0204bafc:
    str r4, [r3, #664]
.L0204bb00:
    ldr r1, [pc, #-2380]
.L0204bb04:
    ldrh r3, [r1, #128]
.L0204bb08:
    tst r3, #32768
.L0204bb0c:
    bne .L0204bb00
.L0204bb10:
    mov r3, #67108864
.L0204bb14:
    ldr r2, [r3, #672]
.L0204bb18:
    ldr r3, [sp, #416]
.L0204bb1c:
    ldr r4, [sp, #392]
.L0204bb20:
    ldr r5, [sp, #60]
.L0204bb24:
    str r2, [r3, #28]
.L0204bb28:
    ldr sl, [r4, #116]
.L0204bb2c:
    ldr r2, [r5]
.L0204bb30:
    mov r8, sl
.L0204bb34:
    mov r9, r8, asr #31
.L0204bb38:
    mov r3, r2, asr #31
.L0204bb3c:
    add lr, sp, #560
.L0204bb40:
    stmdb lr, {r8, r9}
.L0204bb44:
    ldr r6, [sp, #396]
.L0204bb48:
    mul r8, r3, r8
.L0204bb4c:
    ldr r7, [sp, #56]
.L0204bb50:
    ldr ip, [r6, #116]
.L0204bb54:
    ldr r0, [r7]
.L0204bb58:
    mov r4, ip
.L0204bb5c:
    mov r5, r4, asr #31
.L0204bb60:
    mla r9, r2, r9, r8
.L0204bb64:
    mov r1, r0, asr #31
.L0204bb68:
    mov lr, r4
.L0204bb6c:
    add r6, sp, #560
.L0204bb70:
    mul lr, r1, lr
.L0204bb74:
    stmia r6, {r4, r5}
.L0204bb78:
    ldr r7, [sp, #552]
.L0204bb7c:
    str r9, [sp, #160]
.L0204bb80:
    ldr r8, [sp, #560]
.L0204bb84:
    ldr r9, [sp, #564]
.L0204bb88:
    umull r4, r5, r7, r2
.L0204bb8c:
    mla lr, r0, r9, lr
.L0204bb90:
    umull r6, r7, r8, r0
.L0204bb94:
    ldr sl, [sp, #68]
.L0204bb98:
    ldr ip, [sp, #64]
.L0204bb9c:
    add r7, lr, r7
.L0204bba0:
    mov r6, r6, lsr #16
.L0204bba4:
    ldr r2, [sl]
.L0204bba8:
    ldr r8, [sp, #160]
.L0204bbac:
    ldr sl, [sp, #536]
.L0204bbb0:
    orr r6, r6, r7, lsl #16
.L0204bbb4:
    mov r7, r6, asr #31
.L0204bbb8:
    ldr r0, [ip]
.L0204bbbc:
    add r5, r8, r5
.L0204bbc0:
    mul sl, r7, sl
.L0204bbc4:
    ldr r8, [sp, #552]
.L0204bbc8:
    ldr r9, [sp, #560]
.L0204bbcc:
    mov r3, r2, asr #31
.L0204bbd0:
    mov r1, r0, asr #31
.L0204bbd4:
    mov r4, r4, lsr #16
.L0204bbd8:
    mul r8, r3, r8
.L0204bbdc:
    mul r9, r1, r9
.L0204bbe0:
    ldr lr, [sp, #512]
.L0204bbe4:
    orr r4, r4, r5, lsl #16
.L0204bbe8:
    mov r5, r4, asr #31
.L0204bbec:
    mul lr, r5, lr
.L0204bbf0:
    str sl, [sp, #148]
.L0204bbf4:
    ldr ip, [sp, #556]
.L0204bbf8:
    ldr sl, [sp, #552]
.L0204bbfc:
    mla ip, r2, ip, r8
.L0204bc00:
    str r9, [sp, #164]
.L0204bc04:
    umull r8, r9, sl, r2
.L0204bc08:
    ldr sl, [sp, #516]
.L0204bc0c:
    strd r8, [sp, #168]
.L0204bc10:
    mla sl, r4, sl, lr
.L0204bc14:
    ldr r8, [sp, #560]
.L0204bc18:
    str ip, [sp, #176]
.L0204bc1c:
    ldr fp, [sp, #564]
.L0204bc20:
    ldr ip, [sp, #164]
.L0204bc24:
    ldr r9, [sp, #512]
.L0204bc28:
    umull r2, r3, r8, r0
.L0204bc2c:
    str sl, [sp, #152]
.L0204bc30:
    mla fp, r0, fp, ip
.L0204bc34:
    ldr r8, [sp, #148]
.L0204bc38:
    ldr ip, [sp, #536]
.L0204bc3c:
    ldr lr, [sp, #540]
.L0204bc40:
    umull r0, r1, r9, r4
.L0204bc44:
    ldr sl, [sp, #172]
.L0204bc48:
    ldr r9, [sp, #176]
.L0204bc4c:
    umull r4, r5, ip, r6
.L0204bc50:
    mla lr, r6, lr, r8
.L0204bc54:
    ldr ip, [sp, #168]
.L0204bc58:
    add sl, r9, sl
.L0204bc5c:
    ldr r9, [sp, #152]
.L0204bc60:
    add r3, fp, r3
.L0204bc64:
    mov ip, ip, lsr #16
.L0204bc68:
    mov r2, r2, lsr #16
.L0204bc6c:
    orr r6, ip, sl, lsl #16
.L0204bc70:
    orr r2, r2, r3, lsl #16
.L0204bc74:
    add r1, r9, r1
.L0204bc78:
    mov r0, r0, lsr #16
.L0204bc7c:
    add r2, r6, r2
.L0204bc80:
    orr r0, r0, r1, lsl #16
.L0204bc84:
    add r5, lr, r5
.L0204bc88:
    mov r4, r4, lsr #16
.L0204bc8c:
    add r0, r2, r0
.L0204bc90:
    orr r4, r4, r5, lsl #16
.L0204bc94:
    add r8, r0, r4
.L0204bc98:
    mov r7, sl, asr #16
.L0204bc9c:
    cmp r8, #4
.L0204bca0:
    str sl, [sp, #172]
.L0204bca4:
    str r6, [sp, #544]
.L0204bca8:
    str r7, [sp, #548]
.L0204bcac:
    ble .L0204c0d4
.L0204bcb0:
    ldr r2, [pc, #-2812]
.L0204bcb4:
    mov sl, #1
.L0204bcb8:
    strh sl, [r2, #128]
.L0204bcbc:
    ldrh r3, [r2, #128]
.L0204bcc0:
    tst r3, #32768
.L0204bcc4:
    bne .L0204bcbc
.L0204bcc8:
    mov r0, #0
.L0204bccc:
    mov r1, #1
.L0204bcd0:
    mov r3, #67108864
.L0204bcd4:
    strd r0, [r2, #144]
.L0204bcd8:
    str r8, [r3, #664]
.L0204bcdc:
    ldr r1, [pc, #-2856]
.L0204bce0:
    ldrh r3, [r1, #128]
.L0204bce4:
    tst r3, #32768
.L0204bce8:
    bne .L0204bcdc
.L0204bcec:
    ldr r2, [sp, #480]
.L0204bcf0:
    ldr r3, [sp, #580]
.L0204bcf4:
    ldr r6, [sp, #488]
.L0204bcf8:
    ldr r0, [sp, #572]
.L0204bcfc:
    mul r3, r2, r3
.L0204bd00:
    ldr r4, [sp, #472]
.L0204bd04:
    ldr r5, [sp, #496]
.L0204bd08:
    ldr r2, [sp, #572]
.L0204bd0c:
    ldr r1, [sp, #580]
.L0204bd10:
    mul r0, r6, r0
.L0204bd14:
    ldr r7, [sp, #576]
.L0204bd18:
    mul r2, r4, r2
.L0204bd1c:
    mul r1, r5, r1
.L0204bd20:
    ldr r9, [sp, #480]
.L0204bd24:
    ldr fp, [sp, #484]
.L0204bd28:
    ldr r8, [sp, #568]
.L0204bd2c:
    mov sl, r7
.L0204bd30:
    ldr ip, [sp, #492]
.L0204bd34:
    mla fp, r7, fp, r3
.L0204bd38:
    ldr lr, [sp, #476]
.L0204bd3c:
    umull r6, r7, r9, sl
.L0204bd40:
    ldr r9, [sp, #500]
.L0204bd44:
    mla ip, r8, ip, r0
.L0204bd48:
    mov r0, r5
.L0204bd4c:
    mla lr, r8, lr, r2
.L0204bd50:
    mla r9, sl, r9, r1
.L0204bd54:
    umull r2, r3, r4, r8
.L0204bd58:
    umull r4, r5, r0, sl
.L0204bd5c:
    ldr r8, [sp, #488]
.L0204bd60:
    ldr sl, [sp, #568]
.L0204bd64:
    add r7, fp, r7
.L0204bd68:
    umull r0, r1, r8, sl
.L0204bd6c:
    add r3, lr, r3
.L0204bd70:
    mov r6, r6, lsr #16
.L0204bd74:
    mov r2, r2, lsr #16
.L0204bd78:
    add r5, r9, r5
.L0204bd7c:
    add r1, ip, r1
.L0204bd80:
    orr r6, r6, r7, lsl #16
.L0204bd84:
    orr r2, r2, r3, lsl #16
.L0204bd88:
    mov r4, r4, lsr #16
.L0204bd8c:
    mov r0, r0, lsr #16
.L0204bd90:
    add r6, r6, r2
.L0204bd94:
    orr r4, r4, r5, lsl #16
.L0204bd98:
    orr r0, r0, r1, lsl #16
.L0204bd9c:
    mov r2, r6
.L0204bda0:
    mov r3, r2, asr #31
.L0204bda4:
    add r4, r4, r0
.L0204bda8:
    mov r0, r4
.L0204bdac:
    mov r1, r0, asr #31
.L0204bdb0:
    mul ip, r2, r3
.L0204bdb4:
    umull r4, r5, r2, r2
.L0204bdb8:
    mul lr, r0, r1
.L0204bdbc:
    umull r6, r7, r0, r0
.L0204bdc0:
    mov r3, #67108864
.L0204bdc4:
    ldr r2, [r3, #672]
.L0204bdc8:
    ldr r0, [sp, #416]
.L0204bdcc:
    mov ip, ip, lsl #1
.L0204bdd0:
    ldr r8, [sp, #60]
.L0204bdd4:
    str r2, [r0, #36]
.L0204bdd8:
    add r5, ip, r5
.L0204bddc:
    mov lr, lr, lsl #1
.L0204bde0:
    ldr r2, [sp, #68]
.L0204bde4:
    mov r4, r4, lsr #16
.L0204bde8:
    ldr sl, [sp, #616]
.L0204bdec:
    ldr ip, [sp, #56]
.L0204bdf0:
    ldr r1, [sp, #64]
.L0204bdf4:
    orr r4, r4, r5, lsl #16
.L0204bdf8:
    add r7, lr, r7
.L0204bdfc:
    ldr r3, [r8]
.L0204be00:
    mov r6, r6, lsr #16
.L0204be04:
    ldr lr, [sp, #620]
.L0204be08:
    ldr r9, [r2]
.L0204be0c:
    rsb r4, r4, sl
.L0204be10:
    ldr r2, [ip]
.L0204be14:
    orr r6, r6, r7, lsl #16
.L0204be18:
    ldr fp, [r1]
.L0204be1c:
    rsb r6, r6, lr
.L0204be20:
    smull r0, r1, r4, r3
.L0204be24:
    smull r4, r5, r6, r2
.L0204be28:
    mov r0, r0, lsr #16
.L0204be2c:
    add fp, fp, r9
.L0204be30:
    mov r2, r4, lsr #16
.L0204be34:
    orr r0, r0, r1, lsl #16
.L0204be38:
    orr r2, r2, r5, lsl #16
.L0204be3c:
    add r0, fp, r0
.L0204be40:
    add r4, r0, r2
.L0204be44:
    cmp r4, #4
.L0204be48:
    str fp, [sp, #128]
.L0204be4c:
    ble .L0204c0c0
.L0204be50:
    ldr r1, [pc, #-3228]
.L0204be54:
    mov r5, #1
.L0204be58:
    strh r5, [r1, #128]
.L0204be5c:
    ldrh r3, [r1, #128]
.L0204be60:
    tst r3, #32768
.L0204be64:
    bne .L0204be5c
.L0204be68:
    mov r6, #0
.L0204be6c:
    mov r7, #1
.L0204be70:
    mov r3, #67108864
.L0204be74:
    ldr r2, [pc, #-3264]
.L0204be78:
    strd r6, [r1, #144]
.L0204be7c:
    str r4, [r3, #664]
.L0204be80:
    ldrh r3, [r2, #128]
.L0204be84:
    tst r3, #32768
.L0204be88:
    bne .L0204be80
.L0204be8c:
    mov r3, #67108864
.L0204be90:
    ldr r2, [r3, #672]
.L0204be94:
    ldr r7, [sp, #416]
.L0204be98:
    add r3, r3, #-67108864
.L0204be9c:
    ldr r8, [sp, #428]
.L0204bea0:
    str r2, [r7, #32]
.L0204bea4:
    str r3, [r7, #44]
.L0204bea8:
    ldr r3, [r8]
.L0204beac:
    cmp r3, #0
.L0204beb0:
    ble .L0204bec8
.L0204beb4:
    ldr r0, [pc, #-3324]
.L0204beb8:
    smull r4, r5, r3, r0
.L0204bebc:
    mov r2, r4, lsr #16
.L0204bec0:
    orr r2, r2, r5, lsl #16
.L0204bec4:
    str r2, [r7, #44]
.L0204bec8:
    ldr r5, [sp, #52]
.L0204becc:
    ldr r6, [sp, #488]
.L0204bed0:
    mov r0, r5
.L0204bed4:
    mov r1, r0, asr #31
.L0204bed8:
    mul r6, r1, r6
.L0204bedc:
    ldr r7, [sp, #496]
.L0204bee0:
    ldr lr, [sp, #44]
.L0204bee4:
    ldr r9, [sp, #36]
.L0204bee8:
    mul lr, r7, lr
.L0204beec:
    ldr fp, [sp, #492]
.L0204bef0:
    mov r8, r9
.L0204bef4:
    mov r9, r8, asr #31
.L0204bef8:
    mla fp, r0, fp, r6
.L0204befc:
    ldr r5, [sp, #500]
.L0204bf00:
    ldr r6, [sp, #40]
.L0204bf04:
    strd r8, [sp, #104]
.L0204bf08:
    mla r5, r6, r5, lr
.L0204bf0c:
    ldr sl, [sp, #472]
.L0204bf10:
    ldr r8, [sp, #108]
.L0204bf14:
    ldr r2, [sp, #480]
.L0204bf18:
    mul r8, sl, r8
.L0204bf1c:
    ldr r4, [sp, #488]
.L0204bf20:
    ldr lr, [sp, #104]
.L0204bf24:
    ldr ip, [sp, #92]
.L0204bf28:
    str r5, [sp, #116]
.L0204bf2c:
    mul ip, r2, ip
.L0204bf30:
    umull r2, r3, r4, r0
.L0204bf34:
    umull r4, r5, r7, r6
.L0204bf38:
    ldr r0, [sp, #104]
.L0204bf3c:
    umull r6, r7, sl, lr
.L0204bf40:
    ldr lr, [sp, #476]
.L0204bf44:
    ldr r1, [sp, #88]
.L0204bf48:
    mla lr, r0, lr, r8
.L0204bf4c:
    ldr sl, [sp, #484]
.L0204bf50:
    ldr r8, [sp, #480]
.L0204bf54:
    mov r9, r1
.L0204bf58:
    mla sl, r1, sl, ip
.L0204bf5c:
    umull r0, r1, r8, r9
.L0204bf60:
    ldr ip, [sp, #116]
.L0204bf64:
    add r3, fp, r3
.L0204bf68:
    add r5, ip, r5
.L0204bf6c:
    ldr r8, [sp, #608]
.L0204bf70:
    ldr r9, [sp, #604]
.L0204bf74:
    mov r2, r2, lsr #16
.L0204bf78:
    mov r4, r4, lsr #16
.L0204bf7c:
    add r1, sl, r1
.L0204bf80:
    orr r2, r2, r3, lsl #16
.L0204bf84:
    orr r4, r4, r5, lsl #16
.L0204bf88:
    ldr r3, [sp, #420]
.L0204bf8c:
    ldr sl, [sp, #600]
.L0204bf90:
    ldr ip, [sp, #596]
.L0204bf94:
    add r2, r8, r2
.L0204bf98:
    add r4, r9, r4
.L0204bf9c:
    add r7, lr, r7
.L0204bfa0:
    mov r6, r6, lsr #16
.L0204bfa4:
    mov r0, r0, lsr #16
.L0204bfa8:
    orr r6, r6, r7, lsl #16
.L0204bfac:
    orr r0, r0, r1, lsl #16
.L0204bfb0:
    ldr lr, [r3]
.L0204bfb4:
    rsb r2, sl, r2
.L0204bfb8:
    rsb r4, ip, r4
.L0204bfbc:
    ldr r3, [r3, #4]
.L0204bfc0:
    rsb r2, r6, r2
.L0204bfc4:
    rsb r4, r0, r4
.L0204bfc8:
    smull r8, r9, r4, r3
.L0204bfcc:
    smull r0, r1, r2, lr
.L0204bfd0:
    ldr r5, [pc, #-3604]
.L0204bfd4:
    mov r0, r0, lsr #16
.L0204bfd8:
    ldr r6, [r5]
.L0204bfdc:
    mov r2, r8, lsr #16
.L0204bfe0:
    orr r0, r0, r1, lsl #16
.L0204bfe4:
    orr r2, r2, r9, lsl #16
.L0204bfe8:
    add r0, r0, r2
.L0204bfec:
    rsb r6, r6, #0
.L0204bff0:
    cmp r0, r6
.L0204bff4:
    bge .L0204c020
.L0204bff8:
    ldr r9, [sp, #424]
.L0204bffc:
    ldr sl, [sp, #416]
.L0204c000:
    ldr r3, [r9]
.L0204c004:
    ldr r2, [sl, #44]
.L0204c008:
    rsb r3, r3, #0
.L0204c00c:
    smull r4, r5, r3, r0
.L0204c010:
    mov r0, r4, lsr #16
.L0204c014:
    orr r0, r0, r5, lsl #16
.L0204c018:
    add r2, r2, r0
.L0204c01c:
    str r2, [sl, #44]
.L0204c020:
    ldr r5, [sp, #408]
.L0204c024:
    ldr r6, [sp, #412]
.L0204c028:
    ldr r7, [sp, #84]
.L0204c02c:
    ldr r3, [r5, #124]
.L0204c030:
    add r6, r6, #1
.L0204c034:
    add r7, r7, #48
.L0204c038:
    cmp r3, r6
.L0204c03c:
    str r6, [sp, #412]
.L0204c040:
    str r7, [sp, #84]
.L0204c044:
    bgt .L0204b448
.L0204c048:
    ldr r8, [sp, #404]
.L0204c04c:
    ldr sl, [sp, #640]
.L0204c050:
    ldr r9, [sp, #400]
.L0204c054:
    add r8, r8, #1
.L0204c058:
    add sl, sl, #76
.L0204c05c:
    cmp r9, r8
.L0204c060:
    str r8, [sp, #404]
.L0204c064:
    str sl, [sp, #640]
.L0204c068:
    bne .L0204b304
.L0204c06c:
    ldr ip, [sp, #644]
.L0204c070:
    add ip, ip, r9
.L0204c074:
    str ip, [sp, #644]
.L0204c078:
    ldr lr, [sp, #388]
.L0204c07c:
    ldr r0, [sp, #376]
.L0204c080:
    add lr, lr, #1
.L0204c084:
    cmp r0, lr
.L0204c088:
    str lr, [sp, #388]
.L0204c08c:
    bne .L0204b1f0
.L0204c090:
    ldr r1, [sp, #384]
.L0204c094:
    ldr r2, [sp, #644]
.L0204c098:
    ldr r3, [r1, #20]
.L0204c09c:
    cmp r3, r2
.L0204c0a0:
    beq .L0204c0b4
.L0204c0a4:
    ldr r0, [pc, #-3808]
.L0204c0a8:
    mov r1, #144
.L0204c0ac:
    ldr r2, [pc, #-3820]
.L0204c0b0:
    bl reconstructed_external_arm_02097804
.L0204c0b4:
    ldr r0, [sp, #384]
.L0204c0b8:
    add sp, sp, #652
.L0204c0bc:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0204c0c0:
    ldr r0, [pc, #-3836]
.L0204c0c4:
    mov r1, #123
.L0204c0c8:
    ldr r2, [pc, #-3840]
.L0204c0cc:
    bl reconstructed_external_arm_02097804
.L0204c0d0:
    b .L0204be50
.L0204c0d4:
    ldr r0, [pc, #100]
.L0204c0d8:
    mov r1, #113
.L0204c0dc:
    ldr r2, [pc, #96]
.L0204c0e0:
    bl reconstructed_external_arm_02097804
.L0204c0e4:
    b .L0204bcb0
.L0204c0e8:
    ldr r0, [pc, #80]
.L0204c0ec:
    mov r1, #107
.L0204c0f0:
    ldr r2, [pc, #80]
.L0204c0f4:
    bl reconstructed_external_arm_02097804
.L0204c0f8:
    b .L0204bad0
.L0204c0fc:
    ldr r0, [pc, #60]
.L0204c100:
    mov r1, #73
.L0204c104:
    ldr r2, [pc, #64]
.L0204c108:
    bl reconstructed_external_arm_02097804
.L0204c10c:
    b .L0204b33c
.L0204c110:
    ldr r0, [pc, #40]
.L0204c114:
    mov r1, #69
.L0204c118:
    ldr r2, [pc, #48]
.L0204c11c:
    bl reconstructed_external_arm_02097804
.L0204c120:
    b .L0204b320
.L0204c124:
    mov r0, r6
.L0204c128:
    mov r1, r4
.L0204c12c:
    bl reconstructed_external_arm_0202fb28
.L0204c130:
    ldr r3, [sp, #384]
.L0204c134:
    str r4, [sp, #644]
.L0204c138:
    str r0, [r3, #16]
.L0204c13c:
    b .L0204c090
.L0204c140:
    .long 0x020c3b0c  /* literal data */
.L0204c144:
    .long 0x020c3ba0  /* literal data */
.L0204c148:
    .long 0x020c3b84  /* literal data */
.L0204c14c:
    .long 0x020c3b68  /* literal data */
.L0204c150:
    .long 0x020c3b4c  /* literal data */
.L0204c154:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0204c158:
    sub sp, sp, #580
.L0204c15c:
    str r0, [sp, #364]
.L0204c160:
    ldr r0, [r0, #20]
.L0204c164:
    mov r3, #0
.L0204c168:
    cmp r0, r3
.L0204c16c:
    str r0, [sp, #24]
.L0204c170:
    str r1, [sp, #360]
.L0204c174:
    str r3, [sp, #548]
.L0204c178:
    ble .L0204cf28
.L0204c17c:
    ldr r1, [sp, #364]
.L0204c180:
    str r3, [sp, #368]
.L0204c184:
    ldr r1, [r1, #16]
.L0204c188:
    str r1, [sp, #28]
.L0204c18c:
    ldr r2, [sp, #368]
.L0204c190:
    ldr r4, [sp, #28]
.L0204c194:
    mov r3, r2, lsl #7
.L0204c198:
    add r3, r3, r4
.L0204c19c:
    ldr r6, [r3, #112]
.L0204c1a0:
    add sl, sp, #352
.L0204c1a4:
    str r6, [sp, #380]
.L0204c1a8:
    ldr r7, [sp, #380]
.L0204c1ac:
    ldr r5, [r3, #108]
.L0204c1b0:
    ldr lr, [r7, #120]
.L0204c1b4:
    ldr ip, [r7, #128]
.L0204c1b8:
    ldr r0, [r7, #116]
.L0204c1bc:
    mov r8, lr
.L0204c1c0:
    mov r9, r8, asr #31
.L0204c1c4:
    mov r1, r0, asr #31
.L0204c1c8:
    stmdb sl, {r8, r9}
.L0204c1cc:
    mov r8, ip
.L0204c1d0:
    mov r9, r8, asr #31
.L0204c1d4:
    add sl, sp, #336
.L0204c1d8:
    stmia sl, {r8, r9}
.L0204c1dc:
    mul r9, r0, r9
.L0204c1e0:
    ldr r2, [r5, #116]
.L0204c1e4:
    ldr r6, [r5, #128]
.L0204c1e8:
    str r3, [sp, #372]
.L0204c1ec:
    mov r7, r6, asr #31
.L0204c1f0:
    mov r3, r2, asr #31
.L0204c1f4:
    str r9, [sp, #332]
.L0204c1f8:
    umull r8, r9, r2, r6
.L0204c1fc:
    add fp, sp, #352
.L0204c200:
    stmia fp, {r8, r9}
.L0204c204:
    ldr fp, [sp, #336]
.L0204c208:
    ldr r4, [r5, #120]
.L0204c20c:
    umull r8, r9, r0, fp
.L0204c210:
    mul lr, r2, r7
.L0204c214:
    ldr sl, [sp, #348]
.L0204c218:
    str r5, [sp, #376]
.L0204c21c:
    mov r5, r4, asr #31
.L0204c220:
    mul ip, r2, r5
.L0204c224:
    mul sl, r0, sl
.L0204c228:
    add fp, sp, #320
.L0204c22c:
    stmia fp, {r8, r9}
.L0204c230:
    umull r8, r9, r2, r4
.L0204c234:
    mla r6, r3, r6, lr
.L0204c238:
    ldr lr, [sp, #344]
.L0204c23c:
    mla fp, r4, r3, ip
.L0204c240:
    mla lr, r1, lr, sl
.L0204c244:
    ldr ip, [sp, #332]
.L0204c248:
    ldr sl, [sp, #336]
.L0204c24c:
    mov r5, r9
.L0204c250:
    ldr r9, [sp, #344]
.L0204c254:
    mla ip, sl, r1, ip
.L0204c258:
    ldr r1, [sp, #356]
.L0204c25c:
    umull r2, r3, r0, r9
.L0204c260:
    ldr r0, [sp, #372]
.L0204c264:
    add r6, r6, r1
.L0204c268:
    mov r4, r8
.L0204c26c:
    ldr r0, [r0, #124]
.L0204c270:
    str r6, [sp, #356]
.L0204c274:
    ldr r8, [sp, #352]
.L0204c278:
    ldr r6, [sp, #324]
.L0204c27c:
    ldr sl, [sp, #320]
.L0204c280:
    add r5, fp, r5
.L0204c284:
    ldr r9, [sp, #356]
.L0204c288:
    ldr fp, [sp, #372]
.L0204c28c:
    add ip, ip, r6
.L0204c290:
    add r3, lr, r3
.L0204c294:
    mov r6, r4, lsr #16
.L0204c298:
    str r0, [sp, #64]
.L0204c29c:
    cmp r0, #0
.L0204c2a0:
    mov r4, r8, lsr #16
.L0204c2a4:
    mov r0, r2, lsr #16
.L0204c2a8:
    mov r2, sl, lsr #16
.L0204c2ac:
    str ip, [sp, #324]
.L0204c2b0:
    orr r2, r2, ip, lsl #16
.L0204c2b4:
    orr r6, r6, r5, lsl #16
.L0204c2b8:
    mov r7, r5, asr #16
.L0204c2bc:
    orr r4, r4, r9, lsl #16
.L0204c2c0:
    orr r0, r0, r3, lsl #16
.L0204c2c4:
    ldr ip, [fp, #96]
.L0204c2c8:
    ldr lr, [fp, #100]
.L0204c2cc:
    ble .L0204cf10
.L0204c2d0:
    ldr r8, [sp, #380]
.L0204c2d4:
    mov sl, ip
.L0204c2d8:
    mov fp, sl, asr #31
.L0204c2dc:
    ldr r8, [r8, #28]
.L0204c2e0:
    add ip, sp, #512
.L0204c2e4:
    str r8, [sp, #20]
.L0204c2e8:
    add r8, sp, #496
.L0204c2ec:
    stmia r8, {sl, fp}
.L0204c2f0:
    mov sl, lr
.L0204c2f4:
    mov fp, sl, asr #31
.L0204c2f8:
    mov r8, r6
.L0204c2fc:
    mov r9, r8, asr #31
.L0204c300:
    stmdb ip, {sl, fp}
.L0204c304:
    add sl, sp, #512
.L0204c308:
    mov r6, r4
.L0204c30c:
    mov r7, r6, asr #31
.L0204c310:
    stmia sl, {r8, r9}
.L0204c314:
    add ip, sp, #528
.L0204c318:
    mov sl, r0
.L0204c31c:
    mov fp, sl, asr #31
.L0204c320:
    add r8, sp, #528
.L0204c324:
    stmdb r8, {r6, r7}
.L0204c328:
    stmia ip, {sl, fp}
.L0204c32c:
    mov r0, r2
.L0204c330:
    mov r1, r0, asr #31
.L0204c334:
    add r4, sp, #544
.L0204c338:
    ldr r6, [sp, #376]
.L0204c33c:
    ldr r7, [sp, #376]
.L0204c340:
    ldr r8, [sp, #380]
.L0204c344:
    ldr r9, [sp, #380]
.L0204c348:
    ldr sl, [sp, #376]
.L0204c34c:
    ldr fp, [sp, #380]
.L0204c350:
    ldr ip, [sp, #376]
.L0204c354:
    ldr lr, [sp, #380]
.L0204c358:
    stmdb r4, {r0, r1}
.L0204c35c:
    mov r5, #0
.L0204c360:
    add r6, r6, #28
.L0204c364:
    add r7, r7, #12
.L0204c368:
    add r8, r8, #28
.L0204c36c:
    add r9, r9, #12
.L0204c370:
    add sl, sl, #44
.L0204c374:
    add fp, fp, #44
.L0204c378:
    add ip, ip, #4
.L0204c37c:
    add lr, lr, #4
.L0204c380:
    str r5, [sp, #384]
.L0204c384:
    str r6, [sp, #40]
.L0204c388:
    str r7, [sp, #48]
.L0204c38c:
    str r8, [sp, #44]
.L0204c390:
    str r9, [sp, #52]
.L0204c394:
    str sl, [sp, #32]
.L0204c398:
    str fp, [sp, #36]
.L0204c39c:
    str ip, [sp, #56]
.L0204c3a0:
    str lr, [sp, #60]
.L0204c3a4:
    ldr r0, [sp, #384]
.L0204c3a8:
    ldr r1, [sp, #372]
.L0204c3ac:
    mov r3, r0, lsl #6
.L0204c3b0:
    sub r3, r3, r0, lsl #4
.L0204c3b4:
    add r1, r1, r3
.L0204c3b8:
    str r1, [sp, #388]
.L0204c3bc:
    ldr r2, [sp, #372]
.L0204c3c0:
    ldr r4, [sp, #376]
.L0204c3c4:
    ldr r7, [sp, #388]
.L0204c3c8:
    ldr r5, [sp, #40]
.L0204c3cc:
    ldr r8, [sp, #44]
.L0204c3d0:
    ldr r9, [sp, #376]
.L0204c3d4:
    ldr lr, [r4, #28]
.L0204c3d8:
    ldr r3, [r2, r3]
.L0204c3dc:
    ldr r4, [r5, #4]
.L0204c3e0:
    ldr r6, [r7, #8]
.L0204c3e4:
    ldr r5, [r7, #12]
.L0204c3e8:
    ldr ip, [r8, #4]
.L0204c3ec:
    ldr r2, [r9, #12]
.L0204c3f0:
    ldr r8, [sp, #20]
.L0204c3f4:
    ldr r9, [sp, #48]
.L0204c3f8:
    ldr r1, [r1, #4]
.L0204c3fc:
    rsb r3, lr, r3
.L0204c400:
    ldr sl, [sp, #48]
.L0204c404:
    rsb lr, r8, r6
.L0204c408:
    ldr fp, [sp, #380]
.L0204c40c:
    rsb r1, r4, r1
.L0204c410:
    rsb ip, ip, r5
.L0204c414:
    ldr r4, [r9, #4]
.L0204c418:
    ldr r5, [r9, #12]
.L0204c41c:
    mov r8, r3
.L0204c420:
    mov r9, r8, asr #31
.L0204c424:
    add r3, sp, #400
.L0204c428:
    ldr r7, [sp, #52]
.L0204c42c:
    stmia r3, {r8, r9}
.L0204c430:
    mov r8, r1
.L0204c434:
    mov r9, r8, asr #31
.L0204c438:
    ldr r0, [sl, #8]
.L0204c43c:
    stmdb r3, {r8, r9}
.L0204c440:
    ldr sl, [fp, #12]
.L0204c444:
    mov r8, lr
.L0204c448:
    mov r9, r8, asr #31
.L0204c44c:
    add r1, sp, #432
.L0204c450:
    ldr fp, [r7, #8]
.L0204c454:
    stmdb r1, {r8, r9}
.L0204c458:
    add lr, sp, #416
.L0204c45c:
    mov r8, ip
.L0204c460:
    mov r9, r8, asr #31
.L0204c464:
    stmia lr, {r8, r9}
.L0204c468:
    add ip, sp, #256
.L0204c46c:
    mov r8, sl
.L0204c470:
    mov r9, r8, asr #31
.L0204c474:
    ldr r6, [r7, #4]
.L0204c478:
    ldr r7, [r7, #12]
.L0204c47c:
    stmia ip, {r8, r9}
.L0204c480:
    mov r8, fp
.L0204c484:
    mov r9, r8, asr #31
.L0204c488:
    add ip, sp, #304
.L0204c48c:
    mov sl, r4
.L0204c490:
    mov fp, sl, asr #31
.L0204c494:
    stmia ip, {sl, fp}
.L0204c498:
    strd r8, [sp, #248]
.L0204c49c:
    add sl, sp, #288
.L0204c4a0:
    mov r8, r5
.L0204c4a4:
    mov r9, r8, asr #31
.L0204c4a8:
    stmdb sl, {r8, r9}
.L0204c4ac:
    mov r4, r6
.L0204c4b0:
    mov r5, r4, asr #31
.L0204c4b4:
    mov r8, r7
.L0204c4b8:
    mov r9, r8, asr #31
.L0204c4bc:
    strd r4, [sp, #240]
.L0204c4c0:
    strd r8, [sp, #216]
.L0204c4c4:
    ldr r4, [sp, #248]
.L0204c4c8:
    ldr r9, [sp, #256]
.L0204c4cc:
    ldr sl, [sp, #428]
.L0204c4d0:
    ldr fp, [sp, #420]
.L0204c4d4:
    mul sl, r9, sl
.L0204c4d8:
    mul fp, r4, fp
.L0204c4dc:
    ldr r8, [sp, #392]
.L0204c4e0:
    ldr r4, [sp, #424]
.L0204c4e4:
    ldr r7, [sp, #284]
.L0204c4e8:
    ldr r9, [sp, #244]
.L0204c4ec:
    mul r7, r8, r7
.L0204c4f0:
    mul r9, r4, r9
.L0204c4f4:
    ldr ip, [sp, #404]
.L0204c4f8:
    ldr lr, [sp, #396]
.L0204c4fc:
    mov r3, r2, asr #31
.L0204c500:
    mov r1, r0, asr #31
.L0204c504:
    mul ip, r2, ip
.L0204c508:
    mul lr, r0, lr
.L0204c50c:
    ldr r6, [sp, #400]
.L0204c510:
    ldr r5, [sp, #308]
.L0204c514:
    str r7, [sp, #276]
.L0204c518:
    mul r5, r6, r5
.L0204c51c:
    str r9, [sp, #232]
.L0204c520:
    ldr r7, [sp, #400]
.L0204c524:
    ldr r9, [sp, #392]
.L0204c528:
    mla r7, r3, r7, ip
.L0204c52c:
    mla r9, r1, r9, lr
.L0204c530:
    ldr r6, [sp, #416]
.L0204c534:
    ldr r8, [sp, #400]
.L0204c538:
    str r5, [sp, #300]
.L0204c53c:
    ldr r5, [sp, #220]
.L0204c540:
    str r7, [sp, #316]
.L0204c544:
    mul r5, r6, r5
.L0204c548:
    str r9, [sp, #312]
.L0204c54c:
    umull r6, r7, r2, r8
.L0204c550:
    ldr r9, [sp, #416]
.L0204c554:
    ldr r8, [sp, #252]
.L0204c558:
    ldr ip, [sp, #392]
.L0204c55c:
    mla r8, r9, r8, fp
.L0204c560:
    str r5, [sp, #208]
.L0204c564:
    ldr lr, [sp, #260]
.L0204c568:
    umull r4, r5, r0, ip
.L0204c56c:
    ldr r0, [sp, #424]
.L0204c570:
    ldr r2, [sp, #256]
.L0204c574:
    mla lr, r0, lr, sl
.L0204c578:
    str r8, [sp]
.L0204c57c:
    ldr sl, [sp, #248]
.L0204c580:
    mov r3, r0
.L0204c584:
    umull r0, r1, r2, r3
.L0204c588:
    ldr fp, [sp, #304]
.L0204c58c:
    umull r2, r3, sl, r9
.L0204c590:
    ldr sl, [sp, #400]
.L0204c594:
    add r1, lr, r1
.L0204c598:
    umull r8, r9, sl, fp
.L0204c59c:
    ldr fp, [sp, #280]
.L0204c5a0:
    add sl, sp, #288
.L0204c5a4:
    stmia sl, {r8, r9}
.L0204c5a8:
    umull r8, r9, ip, fp
.L0204c5ac:
    add sl, sp, #272
.L0204c5b0:
    stmdb sl, {r8, r9}
.L0204c5b4:
    ldr fp, [sp, #240]
.L0204c5b8:
    ldr sl, [sp, #424]
.L0204c5bc:
    ldr ip, [sp, #304]
.L0204c5c0:
    umull r8, r9, sl, fp
.L0204c5c4:
    ldr sl, [sp, #416]
.L0204c5c8:
    ldr fp, [sp, #216]
.L0204c5cc:
    strd r8, [sp, #224]
.L0204c5d0:
    umull r8, r9, sl, fp
.L0204c5d4:
    ldr sl, [sp, #404]
.L0204c5d8:
    strd r8, [sp, #200]
.L0204c5dc:
    ldr r8, [sp, #300]
.L0204c5e0:
    ldr r9, [sp, #280]
.L0204c5e4:
    mla sl, ip, sl, r8
.L0204c5e8:
    ldr fp, [sp, #396]
.L0204c5ec:
    ldr ip, [sp, #276]
.L0204c5f0:
    ldr r8, [sp, #428]
.L0204c5f4:
    mla fp, r9, fp, ip
.L0204c5f8:
    ldr r9, [sp, #240]
.L0204c5fc:
    ldr ip, [sp, #232]
.L0204c600:
    mov r6, r6, lsr #16
.L0204c604:
    mla r8, r9, r8, ip
.L0204c608:
    ldr r9, [sp, #216]
.L0204c60c:
    ldr ip, [sp, #208]
.L0204c610:
    str r8, [sp, #236]
.L0204c614:
    ldr r8, [sp, #420]
.L0204c618:
    mov r4, r4, lsr #16
.L0204c61c:
    mla r8, r9, r8, ip
.L0204c620:
    ldr r9, [sp, #312]
.L0204c624:
    ldr ip, [sp]
.L0204c628:
    str r8, [sp, #212]
.L0204c62c:
    ldr r8, [sp, #316]
.L0204c630:
    add r5, r9, r5
.L0204c634:
    add r7, r8, r7
.L0204c638:
    add r3, ip, r3
.L0204c63c:
    mov r0, r0, lsr #16
.L0204c640:
    mov r2, r2, lsr #16
.L0204c644:
    ldr r8, [sp, #376]
.L0204c648:
    ldr r9, [sp, #380]
.L0204c64c:
    orr r4, r4, r5, lsl #16
.L0204c650:
    orr r2, r2, r3, lsl #16
.L0204c654:
    orr r6, r6, r7, lsl #16
.L0204c658:
    orr r0, r0, r1, lsl #16
.L0204c65c:
    add r6, r6, r4
.L0204c660:
    add r0, r0, r2
.L0204c664:
    ldr ip, [r9, #44]
.L0204c668:
    ldr lr, [r8, #44]
.L0204c66c:
    str r6, [sp, #488]
.L0204c670:
    str r0, [sp, #492]
.L0204c674:
    ldr r0, [sp, #292]
.L0204c678:
    ldr r3, [sp, #228]
.L0204c67c:
    add sl, sl, r0
.L0204c680:
    str sl, [sp, #292]
.L0204c684:
    ldr r2, [sp, #236]
.L0204c688:
    ldr r5, [sp, #204]
.L0204c68c:
    ldr r4, [sp, #212]
.L0204c690:
    ldr r8, [sp, #288]
.L0204c694:
    ldr r1, [sp, #268]
.L0204c698:
    ldr r9, [sp, #292]
.L0204c69c:
    add r3, r2, r3
.L0204c6a0:
    add r5, r4, r5
.L0204c6a4:
    ldr r6, [sp, #32]
.L0204c6a8:
    ldr r0, [sp, #264]
.L0204c6ac:
    ldr r2, [sp, #224]
.L0204c6b0:
    mov sl, r8, lsr #16
.L0204c6b4:
    str r5, [sp, #204]
.L0204c6b8:
    add fp, fp, r1
.L0204c6bc:
    orr sl, sl, r9, lsl #16
.L0204c6c0:
    ldr r9, [sp, #200]
.L0204c6c4:
    str fp, [sp, #268]
.L0204c6c8:
    str r3, [sp, #228]
.L0204c6cc:
    ldr r3, [r6, #4]
.L0204c6d0:
    mov r6, r0, lsr #16
.L0204c6d4:
    mov r0, r2, lsr #16
.L0204c6d8:
    ldr r2, [sp, #204]
.L0204c6dc:
    ldr r7, [sp, #36]
.L0204c6e0:
    ldr r1, [sp, #268]
.L0204c6e4:
    ldr r5, [sp, #228]
.L0204c6e8:
    mov r9, r9, lsr #16
.L0204c6ec:
    orr r2, r9, r2, lsl #16
.L0204c6f0:
    ldr r8, [sp, #492]
.L0204c6f4:
    ldr r9, [sp, #488]
.L0204c6f8:
    ldr r4, [r7, #4]
.L0204c6fc:
    orr r6, r6, r1, lsl #16
.L0204c700:
    orr r0, r0, r5, lsl #16
.L0204c704:
    add fp, r0, r2
.L0204c708:
    add r7, sl, r6
.L0204c70c:
    add lr, r9, lr
.L0204c710:
    str r2, [sp, #408]
.L0204c714:
    add r2, r8, ip
.L0204c718:
    rsb r1, lr, r2
.L0204c71c:
    add r3, r7, r3
.L0204c720:
    add r4, fp, r4
.L0204c724:
    rsb r4, r3, r4
.L0204c728:
    mov r2, r1
.L0204c72c:
    mov r3, r2, asr #31
.L0204c730:
    ldr r1, [sp, #500]
.L0204c734:
    ldr r5, [sp, #204]
.L0204c738:
    mul r1, r2, r1
.L0204c73c:
    ldr r6, [sp, #496]
.L0204c740:
    mov r5, r5, asr #16
.L0204c744:
    ldr ip, [sp, #508]
.L0204c748:
    ldr lr, [sp, #496]
.L0204c74c:
    str r5, [sp, #412]
.L0204c750:
    mov r5, r4, asr #31
.L0204c754:
    mla lr, r3, lr, r1
.L0204c758:
    mul ip, r4, ip
.L0204c75c:
    umull r0, r1, r2, r6
.L0204c760:
    ldr r8, [sp, #504]
.L0204c764:
    ldr r6, [sp, #504]
.L0204c768:
    mov r2, r0
.L0204c76c:
    mla r6, r5, r6, ip
.L0204c770:
    mov r3, r1
.L0204c774:
    umull r0, r1, r4, r8
.L0204c778:
    ldr r9, [sp, #388]
.L0204c77c:
    add r3, lr, r3
.L0204c780:
    ldr ip, [r9, #40]
.L0204c784:
    mov r2, r2, lsr #16
.L0204c788:
    orr r2, r2, r3, lsl #16
.L0204c78c:
    add r1, r6, r1
.L0204c790:
    mov r0, r0, lsr #16
.L0204c794:
    orr r0, r0, r1, lsl #16
.L0204c798:
    ldr r3, [sp, #548]
.L0204c79c:
    add ip, ip, r2
.L0204c7a0:
    add ip, ip, r0
.L0204c7a4:
    ldr sl, [pc, #1964]
.L0204c7a8:
    str ip, [sp, #544]
.L0204c7ac:
    cmp ip, r3
.L0204c7b0:
    ldr ip, [pc, #1956]
.L0204c7b4:
    ldr r1, [sl]
.L0204c7b8:
    ldr r3, [sp, #544]
.L0204c7bc:
    ldr r2, [ip]
.L0204c7c0:
    addgt r0, sp, #548
.L0204c7c4:
    addle r0, sp, #544
.L0204c7c8:
    ldr r0, [r0]
.L0204c7cc:
    add r1, r1, r3
.L0204c7d0:
    cmp r1, #0
.L0204c7d4:
    rsb r2, r2, #0
.L0204c7d8:
    mov r3, #0
.L0204c7dc:
    str r2, [sp, #556]
.L0204c7e0:
    str r0, [sp, #548]
.L0204c7e4:
    str r3, [sp, #560]
.L0204c7e8:
    str r1, [sp, #552]
.L0204c7ec:
    addlt r2, sp, #552
.L0204c7f0:
    addge r2, sp, #560
.L0204c7f4:
    ldr r2, [r2]
.L0204c7f8:
    ldr r3, [sp, #556]
.L0204c7fc:
    ldr r0, [sp, #360]
.L0204c800:
    cmp r2, r3
.L0204c804:
    str r2, [sp, #572]
.L0204c808:
    addlt r2, sp, #556
.L0204c80c:
    addge r2, sp, #572
.L0204c810:
    ldr r2, [r2]
.L0204c814:
    ldr r3, [r0]
.L0204c818:
    ldr lr, [sp, #388]
.L0204c81c:
    smull r0, r1, r2, r3
.L0204c820:
    ldr ip, [lr, #36]
.L0204c824:
    mov r0, r0, lsr #16
.L0204c828:
    orr r0, r0, r1, lsl #16
.L0204c82c:
    rsb ip, ip, #0
.L0204c830:
    smull r2, r3, ip, r0
.L0204c834:
    ldr lr, [lr, #24]
.L0204c838:
    mov r2, r2, lsr #16
.L0204c83c:
    orr r2, r2, r3, lsl #16
.L0204c840:
    add r2, lr, r2
.L0204c844:
    cmp r2, #0
.L0204c848:
    mov r1, #0
.L0204c84c:
    str r1, [sp, #568]
.L0204c850:
    str r2, [sp, #564]
.L0204c854:
    ldr r1, [sp, #388]
.L0204c858:
    addgt r3, sp, #564
.L0204c85c:
    addle r3, sp, #568
.L0204c860:
    ldr r3, [r3]
.L0204c864:
    add r4, r1, #24
.L0204c868:
    str r3, [r4]
.L0204c86c:
    ldr r2, [sp, #508]
.L0204c870:
    rsb r4, lr, r3
.L0204c874:
    ldr r3, [sp, #500]
.L0204c878:
    mov r5, r4, asr #31
.L0204c87c:
    ldr r9, [sp, #488]
.L0204c880:
    mul r3, r4, r3
.L0204c884:
    mul r2, r4, r2
.L0204c888:
    mov r8, r9
.L0204c88c:
    mov r9, r8, asr #31
.L0204c890:
    strd r8, [sp, #184]
.L0204c894:
    ldr lr, [sp, #496]
.L0204c898:
    ldr r8, [sp, #496]
.L0204c89c:
    ldr ip, [sp, #504]
.L0204c8a0:
    ldr sl, [sp, #504]
.L0204c8a4:
    mla lr, r5, lr, r3
.L0204c8a8:
    mla ip, r5, ip, r2
.L0204c8ac:
    umull r2, r3, r4, r8
.L0204c8b0:
    umull r0, r1, r4, sl
.L0204c8b4:
    add r3, lr, r3
.L0204c8b8:
    mov r2, r2, lsr #16
.L0204c8bc:
    add r1, ip, r1
.L0204c8c0:
    orr r2, r2, r3, lsl #16
.L0204c8c4:
    mov r0, r0, lsr #16
.L0204c8c8:
    mov r4, r2
.L0204c8cc:
    mov r5, r4, asr #31
.L0204c8d0:
    orr r0, r0, r1, lsl #16
.L0204c8d4:
    add r8, sp, #448
.L0204c8d8:
    stmdb r8, {r4, r5}
.L0204c8dc:
    mov r2, r0
.L0204c8e0:
    mov r3, r2, asr #31
.L0204c8e4:
    add r4, sp, #432
.L0204c8e8:
    stmia r4, {r2, r3}
.L0204c8ec:
    ldr ip, [sp, #440]
.L0204c8f0:
    ldr r3, [sp, #188]
.L0204c8f4:
    mov r6, r7
.L0204c8f8:
    mov r7, r6, asr #31
.L0204c8fc:
    mul ip, r7, ip
.L0204c900:
    mul r3, r2, r3
.L0204c904:
    ldr sl, [sp, #440]
.L0204c908:
    ldr r8, [sp, #184]
.L0204c90c:
    ldr r4, [sp, #436]
.L0204c910:
    ldr lr, [sp, #444]
.L0204c914:
    mla r4, r8, r4, r3
.L0204c918:
    umull r0, r1, r2, r8
.L0204c91c:
    mla lr, r6, lr, ip
.L0204c920:
    umull r2, r3, sl, r6
.L0204c924:
    ldr r5, [sp, #516]
.L0204c928:
    ldr r6, [sp, #432]
.L0204c92c:
    ldr ip, [sp, #516]
.L0204c930:
    mul r5, r6, r5
.L0204c934:
    mul ip, sl, ip
.L0204c938:
    add r1, r4, r1
.L0204c93c:
    add r3, lr, r3
.L0204c940:
    mov r0, r0, lsr #16
.L0204c944:
    mov r2, r2, lsr #16
.L0204c948:
    ldr r8, [sp, #512]
.L0204c94c:
    orr r2, r2, r3, lsl #16
.L0204c950:
    ldr lr, [sp, #432]
.L0204c954:
    orr r0, r0, r1, lsl #16
.L0204c958:
    ldr r9, [sp, #436]
.L0204c95c:
    rsb r0, r2, r0
.L0204c960:
    ldr r2, [sp, #444]
.L0204c964:
    mla r9, r8, r9, r5
.L0204c968:
    ldr r3, [sp, #524]
.L0204c96c:
    umull r4, r5, lr, r8
.L0204c970:
    mov r6, r0
.L0204c974:
    mov r7, r6, asr #31
.L0204c978:
    mla r2, r8, r2, ip
.L0204c97c:
    umull r0, r1, sl, r8
.L0204c980:
    mul r3, r6, r3
.L0204c984:
    ldr r8, [sp, #32]
.L0204c988:
    add r5, r9, r5
.L0204c98c:
    ldr sl, [sp, #520]
.L0204c990:
    ldr r9, [sp, #520]
.L0204c994:
    ldmia r8, {ip, lr}
.L0204c998:
    add r1, r2, r1
.L0204c99c:
    mov r0, r0, lsr #16
.L0204c9a0:
    mov r4, r4, lsr #16
.L0204c9a4:
    mla sl, r7, sl, r3
.L0204c9a8:
    orr r4, r4, r5, lsl #16
.L0204c9ac:
    umull r2, r3, r6, r9
.L0204c9b0:
    orr r0, r0, r1, lsl #16
.L0204c9b4:
    rsb ip, r0, ip
.L0204c9b8:
    rsb lr, r4, lr
.L0204c9bc:
    stmia r8, {ip, lr}
.L0204c9c0:
    ldr lr, [sp, #376]
.L0204c9c4:
    add r3, sl, r3
.L0204c9c8:
    ldr ip, [lr, #56]
.L0204c9cc:
    mov r2, r2, lsr #16
.L0204c9d0:
    orr r2, r2, r3, lsl #16
.L0204c9d4:
    ldr r4, [pc, #1412]
.L0204c9d8:
    rsb ip, r2, ip
.L0204c9dc:
    smull r0, r1, ip, r4
.L0204c9e0:
    mov r0, r0, lsr #24
.L0204c9e4:
    orr r0, r0, r1, lsl #8
.L0204c9e8:
    mov r1, r1, asr #24
.L0204c9ec:
    mov r2, r1
.L0204c9f0:
    mov r3, r2, asr #31
.L0204c9f4:
    mov r3, r3, asr #31
.L0204c9f8:
    mov r2, r3, lsr #23
.L0204c9fc:
    adds r0, r0, r2
.L0204ca00:
    mov r3, #0
.L0204ca04:
    ldr r4, [pc, #1368]
.L0204ca08:
    adc r1, r1, r3
.L0204ca0c:
    mov r5, #0
.L0204ca10:
    and r0, r0, r4
.L0204ca14:
    and r1, r1, r5
.L0204ca18:
    subs r0, r0, r2
.L0204ca1c:
    sbc r1, r1, r3
.L0204ca20:
    subs lr, r0, #0
.L0204ca24:
    addlt r0, lr, #512
.L0204ca28:
    ldr r2, [sp, #376]
.L0204ca2c:
    cmp lr, #0
.L0204ca30:
    ldr r4, [pc, #1328]
.L0204ca34:
    mov r3, r0, lsl #1
.L0204ca38:
    addlt lr, lr, #512
.L0204ca3c:
    ldr r5, [pc, #1320]
.L0204ca40:
    str ip, [r2, #56]
.L0204ca44:
    ldrsh r2, [r3, r4]
.L0204ca48:
    mov r3, lr, lsl #1
.L0204ca4c:
    ldrsh r3, [r3, r5]
.L0204ca50:
    ldr r6, [sp, #48]
.L0204ca54:
    mov r3, r3, lsl #4
.L0204ca58:
    ldr r8, [sp, #492]
.L0204ca5c:
    mov r0, r2, lsl #4
.L0204ca60:
    rsb lr, r3, #0
.L0204ca64:
    mov r4, fp
.L0204ca68:
    mov r5, r4, asr #31
.L0204ca6c:
    ldr fp, [sp, #432]
.L0204ca70:
    stmia r6, {r0, r3, lr}
.L0204ca74:
    str r0, [r6, #12]
.L0204ca78:
    mov r6, r8
.L0204ca7c:
    mov r7, r6, asr #31
.L0204ca80:
    ldr r9, [sp, #376]
.L0204ca84:
    mul fp, r7, fp
.L0204ca88:
    ldr r8, [sp, #40]
.L0204ca8c:
    ldr sl, [r9, #28]
.L0204ca90:
    ldr r2, [r8, #4]
.L0204ca94:
    str fp, [sp, #120]
.L0204ca98:
    mov r8, sl
.L0204ca9c:
    mov r9, r8, asr #31
.L0204caa0:
    add fp, sp, #464
.L0204caa4:
    stmia fp, {r8, r9}
.L0204caa8:
    add sl, sp, #464
.L0204caac:
    mov r8, r2
.L0204cab0:
    mov r9, r8, asr #31
.L0204cab4:
    stmdb sl, {r8, r9}
.L0204cab8:
    mov sl, r3
.L0204cabc:
    mov fp, sl, asr #31
.L0204cac0:
    mov r8, lr
.L0204cac4:
    mov r9, r8, asr #31
.L0204cac8:
    mov r2, r0
.L0204cacc:
    mov r3, r2, asr #31
.L0204cad0:
    strd sl, [sp, #152]
.L0204cad4:
    ldr lr, [sp, #460]
.L0204cad8:
    strd r2, [sp, #136]
.L0204cadc:
    strd r8, [sp, #168]
.L0204cae0:
    ldr r3, [sp, #464]
.L0204cae4:
    ldr r9, [sp, #432]
.L0204cae8:
    ldr sl, [sp, #156]
.L0204caec:
    strd r4, [sp, #112]
.L0204caf0:
    ldr r1, [sp, #440]
.L0204caf4:
    mul lr, r8, lr
.L0204caf8:
    ldr fp, [sp, #140]
.L0204cafc:
    ldr r8, [sp, #456]
.L0204cb00:
    mul sl, r3, sl
.L0204cb04:
    ldr ip, [sp, #116]
.L0204cb08:
    umull r2, r3, r9, r6
.L0204cb0c:
    ldr r9, [sp, #112]
.L0204cb10:
    mul fp, r8, fp
.L0204cb14:
    mov r8, r1
.L0204cb18:
    mov r4, r0
.L0204cb1c:
    mov r5, r4, asr #31
.L0204cb20:
    mul ip, r1, ip
.L0204cb24:
    umull r0, r1, r8, r9
.L0204cb28:
    ldr r9, [sp, #120]
.L0204cb2c:
    ldr r8, [sp, #436]
.L0204cb30:
    str ip, [sp, #104]
.L0204cb34:
    mla r8, r6, r8, r9
.L0204cb38:
    ldr ip, [sp, #468]
.L0204cb3c:
    str r8, [sp, #124]
.L0204cb40:
    ldr r7, [sp, #112]
.L0204cb44:
    ldr r8, [sp, #104]
.L0204cb48:
    ldr r6, [sp, #444]
.L0204cb4c:
    ldr r9, [sp, #152]
.L0204cb50:
    mla r6, r7, r6, r8
.L0204cb54:
    ldr r8, [sp, #464]
.L0204cb58:
    str r6, [sp, #108]
.L0204cb5c:
    umull r6, r7, r8, r9
.L0204cb60:
    ldr r8, [sp, #456]
.L0204cb64:
    ldr r9, [sp, #136]
.L0204cb68:
    strd r6, [sp, #144]
.L0204cb6c:
    umull r6, r7, r8, r9
.L0204cb70:
    mul ip, r4, ip
.L0204cb74:
    strd r6, [sp, #128]
.L0204cb78:
    ldr r6, [sp, #464]
.L0204cb7c:
    ldr r9, [sp, #172]
.L0204cb80:
    mla r6, r5, r6, ip
.L0204cb84:
    ldr ip, [sp, #456]
.L0204cb88:
    ldr r8, [sp, #464]
.L0204cb8c:
    mla r9, ip, r9, lr
.L0204cb90:
    ldr lr, [sp, #168]
.L0204cb94:
    str r6, [sp, #180]
.L0204cb98:
    str r9, [sp, #164]
.L0204cb9c:
    umull r6, r7, r4, r8
.L0204cba0:
    ldr r9, [sp, #152]
.L0204cba4:
    umull r4, r5, lr, ip
.L0204cba8:
    ldr ip, [sp, #468]
.L0204cbac:
    ldr lr, [sp, #460]
.L0204cbb0:
    mla ip, r9, ip, sl
.L0204cbb4:
    ldr sl, [sp, #136]
.L0204cbb8:
    ldr r8, [sp, #432]
.L0204cbbc:
    mla lr, sl, lr, fp
.L0204cbc0:
    ldr fp, [sp, #440]
.L0204cbc4:
    ldr sl, [sp, #532]
.L0204cbc8:
    ldr r9, [sp, #124]
.L0204cbcc:
    mul sl, fp, sl
.L0204cbd0:
    ldr fp, [sp, #532]
.L0204cbd4:
    add r3, r9, r3
.L0204cbd8:
    mul fp, r8, fp
.L0204cbdc:
    ldr r8, [sp, #108]
.L0204cbe0:
    mov r2, r2, lsr #16
.L0204cbe4:
    add r1, r8, r1
.L0204cbe8:
    mov r0, r0, lsr #16
.L0204cbec:
    orr r2, r2, r3, lsl #16
.L0204cbf0:
    orr r0, r0, r1, lsl #16
.L0204cbf4:
    ldr r3, [sp, #148]
.L0204cbf8:
    ldr r8, [sp, #132]
.L0204cbfc:
    rsb r2, r0, r2
.L0204cc00:
    mov r0, r2
.L0204cc04:
    mov r1, r0, asr #31
.L0204cc08:
    add r3, ip, r3
.L0204cc0c:
    add r8, lr, r8
.L0204cc10:
    strd r0, [sp, #96]
.L0204cc14:
    ldr r2, [sp, #164]
.L0204cc18:
    ldr r1, [sp, #180]
.L0204cc1c:
    str r3, [sp, #148]
.L0204cc20:
    str r8, [sp, #132]
.L0204cc24:
    ldr r9, [sp, #32]
.L0204cc28:
    ldr ip, [sp, #144]
.L0204cc2c:
    ldr r3, [r9]
.L0204cc30:
    add r5, r2, r5
.L0204cc34:
    ldr r2, [r9, #4]
.L0204cc38:
    ldr r9, [sp, #128]
.L0204cc3c:
    mov r0, ip, lsr #16
.L0204cc40:
    ldr ip, [sp, #132]
.L0204cc44:
    add r7, r1, r7
.L0204cc48:
    ldr lr, [sp, #148]
.L0204cc4c:
    mov r9, r9, lsr #16
.L0204cc50:
    mov r6, r6, lsr #16
.L0204cc54:
    orr ip, r9, ip, lsl #16
.L0204cc58:
    orr r6, r6, r7, lsl #16
.L0204cc5c:
    ldr r9, [sp, #436]
.L0204cc60:
    ldr r7, [sp, #528]
.L0204cc64:
    orr r0, r0, lr, lsl #16
.L0204cc68:
    mov r4, r4, lsr #16
.L0204cc6c:
    ldr lr, [sp, #132]
.L0204cc70:
    mla r9, r7, r9, fp
.L0204cc74:
    orr r4, r4, r5, lsl #16
.L0204cc78:
    ldr r8, [sp, #440]
.L0204cc7c:
    ldr r5, [sp, #444]
.L0204cc80:
    ldr fp, [sp, #432]
.L0204cc84:
    mov lr, lr, asr #16
.L0204cc88:
    mla sl, r7, r5, sl
.L0204cc8c:
    add r6, r6, r4
.L0204cc90:
    str ip, [sp, #448]
.L0204cc94:
    umull r4, r5, fp, r7
.L0204cc98:
    add ip, r0, ip
.L0204cc9c:
    str lr, [sp, #452]
.L0204cca0:
    umull r0, r1, r8, r7
.L0204cca4:
    ldr lr, [sp, #96]
.L0204cca8:
    ldr r7, [sp, #540]
.L0204ccac:
    rsb r3, r6, r3
.L0204ccb0:
    mul r7, lr, r7
.L0204ccb4:
    ldr r6, [sp, #376]
.L0204ccb8:
    ldr r8, [sp, #56]
.L0204ccbc:
    rsb r2, ip, r2
.L0204ccc0:
    str r3, [r6, #4]
.L0204ccc4:
    str r2, [r8, #4]
.L0204ccc8:
    ldr r6, [sp, #100]
.L0204cccc:
    ldr r2, [sp, #536]
.L0204ccd0:
    ldr fp, [sp, #36]
.L0204ccd4:
    mla r6, r2, r6, r7
.L0204ccd8:
    ldr r7, [sp, #96]
.L0204ccdc:
    mov r8, r2
.L0204cce0:
    ldmia fp, {ip, lr}
.L0204cce4:
    umull r2, r3, r7, r8
.L0204cce8:
    add r1, sl, r1
.L0204ccec:
    add r5, r9, r5
.L0204ccf0:
    mov r0, r0, lsr #16
.L0204ccf4:
    mov r4, r4, lsr #16
.L0204ccf8:
    orr r4, r4, r5, lsl #16
.L0204ccfc:
    orr r0, r0, r1, lsl #16
.L0204cd00:
    ldr r9, [sp, #380]
.L0204cd04:
    add ip, ip, r0
.L0204cd08:
    add lr, lr, r4
.L0204cd0c:
    stmia fp, {ip, lr}
.L0204cd10:
    ldr ip, [r9, #56]
.L0204cd14:
    add r3, r6, r3
.L0204cd18:
    mov r2, r2, lsr #16
.L0204cd1c:
    orr r2, r2, r3, lsl #16
.L0204cd20:
    ldr r4, [pc, #568]
.L0204cd24:
    add ip, ip, r2
.L0204cd28:
    smull r0, r1, ip, r4
.L0204cd2c:
    mov r0, r0, lsr #24
.L0204cd30:
    orr r0, r0, r1, lsl #8
.L0204cd34:
    mov r1, r1, asr #24
.L0204cd38:
    mov r2, r1
.L0204cd3c:
    mov r3, r2, asr #31
.L0204cd40:
    mov r3, r3, asr #31
.L0204cd44:
    mov r2, r3, lsr #23
.L0204cd48:
    adds r0, r0, r2
.L0204cd4c:
    mov r3, #0
.L0204cd50:
    ldr r4, [pc, #524]
.L0204cd54:
    adc r1, r1, r3
.L0204cd58:
    mov r5, #0
.L0204cd5c:
    and r0, r0, r4
.L0204cd60:
    and r1, r1, r5
.L0204cd64:
    subs r0, r0, r2
.L0204cd68:
    sbc r1, r1, r3
.L0204cd6c:
    subs lr, r0, #0
.L0204cd70:
    addlt r0, lr, #512
.L0204cd74:
    ldr sl, [pc, #492]
.L0204cd78:
    cmp lr, #0
.L0204cd7c:
    mov r3, r0, lsl #1
.L0204cd80:
    addlt lr, lr, #512
.L0204cd84:
    ldr fp, [pc, #480]
.L0204cd88:
    ldrsh r2, [r3, sl]
.L0204cd8c:
    mov r3, lr, lsl #1
.L0204cd90:
    ldrsh r3, [r3, fp]
.L0204cd94:
    str ip, [r9, #56]
.L0204cd98:
    ldr ip, [sp, #52]
.L0204cd9c:
    mov r0, r2, lsl #4
.L0204cda0:
    str r0, [ip]
.L0204cda4:
    mov ip, r3, lsl #4
.L0204cda8:
    ldr r1, [sp, #52]
.L0204cdac:
    rsb lr, ip, #0
.L0204cdb0:
    ldr r3, [sp, #44]
.L0204cdb4:
    ldr r4, [sp, #380]
.L0204cdb8:
    stmib r1, {ip, lr}
.L0204cdbc:
    str r0, [r1, #12]
.L0204cdc0:
    ldr r3, [r3, #4]
.L0204cdc4:
    ldr r4, [r4, #28]
.L0204cdc8:
    mov r6, r3
.L0204cdcc:
    mov r7, r6, asr #31
.L0204cdd0:
    str r4, [sp, #20]
.L0204cdd4:
    add r8, sp, #480
.L0204cdd8:
    stmdb r8, {r6, r7}
.L0204cddc:
    ldr r6, [sp, #20]
.L0204cde0:
    mov r8, lr
.L0204cde4:
    mov r9, r8, asr #31
.L0204cde8:
    mov r7, r6, asr #31
.L0204cdec:
    strd r8, [sp, #88]
.L0204cdf0:
    mov sl, ip
.L0204cdf4:
    mov fp, sl, asr #31
.L0204cdf8:
    mov r2, r0
.L0204cdfc:
    mov r3, r2, asr #31
.L0204ce00:
    add r8, sp, #480
.L0204ce04:
    mov ip, r7
.L0204ce08:
    stmia r8, {r6, r7}
.L0204ce0c:
    ldr r9, [sp, #472]
.L0204ce10:
    mul ip, r2, ip
.L0204ce14:
    ldr r7, [sp, #88]
.L0204ce18:
    ldr lr, [sp, #476]
.L0204ce1c:
    strd sl, [sp, #80]
.L0204ce20:
    mov r4, r0
.L0204ce24:
    mov r5, r4, asr #31
.L0204ce28:
    strd r4, [sp, #72]
.L0204ce2c:
    mul lr, r7, lr
.L0204ce30:
    mul r5, r9, r5
.L0204ce34:
    ldr fp, [sp, #480]
.L0204ce38:
    ldr r8, [sp, #84]
.L0204ce3c:
    ldr r1, [sp, #72]
.L0204ce40:
    mul r8, r6, r8
.L0204ce44:
    umull r6, r7, fp, sl
.L0204ce48:
    mla fp, r3, fp, ip
.L0204ce4c:
    ldr sl, [sp, #92]
.L0204ce50:
    ldr ip, [sp, #472]
.L0204ce54:
    str r5, [sp, #68]
.L0204ce58:
    mla sl, ip, sl, lr
.L0204ce5c:
    umull r4, r5, r9, r1
.L0204ce60:
    ldr lr, [sp, #88]
.L0204ce64:
    ldr r9, [sp, #480]
.L0204ce68:
    mov r6, r6, lsr #16
.L0204ce6c:
    umull r0, r1, r2, r9
.L0204ce70:
    umull r2, r3, lr, ip
.L0204ce74:
    ldr r9, [sp, #80]
.L0204ce78:
    ldr ip, [sp, #484]
.L0204ce7c:
    ldr lr, [sp, #476]
.L0204ce80:
    mla ip, r9, ip, r8
.L0204ce84:
    ldr r8, [sp, #72]
.L0204ce88:
    ldr r9, [sp, #68]
.L0204ce8c:
    add r3, sl, r3
.L0204ce90:
    mla lr, r8, lr, r9
.L0204ce94:
    ldr sl, [sp, #36]
.L0204ce98:
    add r1, fp, r1
.L0204ce9c:
    mov r0, r0, lsr #16
.L0204cea0:
    ldr fp, [sp, #384]
.L0204cea4:
    mov r2, r2, lsr #16
.L0204cea8:
    add r7, ip, r7
.L0204ceac:
    orr r0, r0, r1, lsl #16
.L0204ceb0:
    ldr ip, [sl]
.L0204ceb4:
    orr r2, r2, r3, lsl #16
.L0204ceb8:
    add r0, r0, r2
.L0204cebc:
    add r5, lr, r5
.L0204cec0:
    add fp, fp, #1
.L0204cec4:
    mov r4, r4, lsr #16
.L0204cec8:
    ldr lr, [sl, #4]
.L0204cecc:
    orr r6, r6, r7, lsl #16
.L0204ced0:
    str fp, [sp, #384]
.L0204ced4:
    rsb ip, r0, ip
.L0204ced8:
    orr r4, r4, r5, lsl #16
.L0204cedc:
    ldr r0, [sp, #64]
.L0204cee0:
    add r6, r6, r4
.L0204cee4:
    ldr r1, [sp, #380]
.L0204cee8:
    ldr r2, [sp, #60]
.L0204ceec:
    rsb lr, r6, lr
.L0204cef0:
    cmp r0, fp
.L0204cef4:
    mov r7, r7, asr #16
.L0204cef8:
    str ip, [r1, #4]
.L0204cefc:
    str lr, [r2, #4]
.L0204cf00:
    bgt .L0204c3a4
.L0204cf04:
    ldr r3, [sp, #364]
.L0204cf08:
    ldr r3, [r3, #20]
.L0204cf0c:
    str r3, [sp, #24]
.L0204cf10:
    ldr r4, [sp, #368]
.L0204cf14:
    ldr r5, [sp, #24]
.L0204cf18:
    add r4, r4, #1
.L0204cf1c:
    cmp r5, r4
.L0204cf20:
    str r4, [sp, #368]
.L0204cf24:
    bgt .L0204c18c
.L0204cf28:
    ldr r6, [pc, #40]
.L0204cf2c:
    ldr r2, [pc, #60]
.L0204cf30:
    ldr ip, [r6]
.L0204cf34:
    ldr r3, [sp, #548]
.L0204cf38:
    smull r0, r1, ip, r2
.L0204cf3c:
    mov r0, r0, lsr #16
.L0204cf40:
    orr r0, r0, r1, lsl #16
.L0204cf44:
    cmp r3, r0
.L0204cf48:
    movlt r0, #0
.L0204cf4c:
    movge r0, #1
.L0204cf50:
    add sp, sp, #580
.L0204cf54:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0204cf58:
    .long 0x020caf00  /* literal data */
.L0204cf5c:
    .long 0x020caf10  /* literal data */
.L0204cf60:
    .long 0x0000517d  /* literal data */
.L0204cf64:
    .long 0x000001ff  /* literal data */
.L0204cf68:
    .long 0x020bd61c  /* literal data */
.L0204cf6c:
    .long 0x020bda20  /* literal data */
.L0204cf70:
    .long 0xfffe8000  /* literal data */

/* libfat-directory-addEntry-region at 0x0205d318, 1448 bytes, Thumb. */
.section .reconstructed.fn08,"ax",%progbits
.align 1
.thumb
.global reconstructed_08_libfat_directory_addEntry_region
reconstructed_08_libfat_directory_addEntry_region:
.L0205d318:
    push {r4, r5, r6, r7, lr}
.L0205d31a:
    mov r7, fp
.L0205d31c:
    mov r6, sl
.L0205d31e:
    mov r5, r9
.L0205d320:
    mov r4, r8
.L0205d322:
    push {r4, r5, r6, r7}
.L0205d324:
    adds r5, r1, #0
.L0205d326:
    adds r6, r1, #0
.L0205d328:
    adds r5, #56
.L0205d32a:
    movs r1, #128
.L0205d32c:
    adds r7, r0, #0
.L0205d32e:
    sub sp, #148
.L0205d330:
    adds r0, r5, #0
.L0205d332:
    lsls r1, r1, #1
.L0205d334:
    mov r8, r2
.L0205d336:
    bl reconstructed_external_thumb_020876dc
.L0205d33a:
    cmp r0, #0
.L0205d33c:
    bne.n .L0205d34e
.L0205d33e:
    movs r0, #0
.L0205d340:
    add sp, #148
.L0205d342:
    pop {r2, r3, r4, r5}
.L0205d344:
    mov r8, r2
.L0205d346:
    mov r9, r3
.L0205d348:
    mov sl, r4
.L0205d34a:
    mov fp, r5
.L0205d34c:
    pop {r4, r5, r6, r7, pc}
.L0205d34e:
    adds r0, r5, #0
.L0205d350:
    bl reconstructed_external_thumb_0205d02c
.L0205d354:
    cmp r0, #0
.L0205d356:
    beq.n .L0205d33e
.L0205d358:
    adds r0, r5, #0
.L0205d35a:
    bl reconstructed_external_thumb_020874d0
.L0205d35e:
    subs r0, #1
.L0205d360:
    cmp r0, #0
.L0205d362:
    bgt.n .L0205d372
.L0205d364:
    b.n .L0205d37e
.L0205d366:
    adds r2, #56
.L0205d368:
    movs r3, #0
.L0205d36a:
    subs r0, #1
.L0205d36c:
    strb r3, [r2, #0]
.L0205d36e:
    cmp r0, #0
.L0205d370:
    ble.n .L0205d37e
.L0205d372:
    adds r2, r0, r6
.L0205d374:
    adds r3, r2, #0
.L0205d376:
    adds r3, #56
.L0205d378:
    ldrb r3, [r3, #0]
.L0205d37a:
    cmp r3, #32
.L0205d37c:
    beq.n .L0205d366
.L0205d37e:
    adds r0, r5, #0
.L0205d380:
    bl reconstructed_external_thumb_020874d0
.L0205d384:
    movs r2, #0
.L0205d386:
    b.n .L0205d394
.L0205d388:
    adds r3, r6, r2
.L0205d38a:
    adds r3, #56
.L0205d38c:
    ldrb r3, [r3, #0]
.L0205d38e:
    cmp r3, #32
.L0205d390:
    bne.n .L0205d398
.L0205d392:
    adds r2, #1
.L0205d394:
    cmp r2, r0
.L0205d396:
    bne.n .L0205d388
.L0205d398:
    cmp r2, #0
.L0205d39a:
    ble.n .L0205d3ae
.L0205d39c:
    adds r4, r5, r2
.L0205d39e:
    adds r0, r4, #0
.L0205d3a0:
    bl reconstructed_external_thumb_020874d0
.L0205d3a4:
    adds r1, r4, #0
.L0205d3a6:
    adds r2, r0, #0
.L0205d3a8:
    adds r0, r5, #0
.L0205d3aa:
    bl reconstructed_external_thumb_02086428
.L0205d3ae:
    adds r0, r5, #0
.L0205d3b0:
    bl reconstructed_external_thumb_020874d0
.L0205d3b4:
    movs r4, #128
.L0205d3b6:
    lsls r4, r4, #1
.L0205d3b8:
    subs r2, r4, r0
.L0205d3ba:
    movs r1, #0
.L0205d3bc:
    adds r0, r5, r0
.L0205d3be:
    bl reconstructed_external_thumb_020864ac
.L0205d3c2:
    adds r0, r7, #0
.L0205d3c4:
    adds r1, r5, #0
.L0205d3c6:
    mov r2, r8
.L0205d3c8:
    bl reconstructed_external_thumb_0205cd3c
.L0205d3cc:
    cmp r0, #0
.L0205d3ce:
    bne.n .L0205d33e
.L0205d3d0:
    movs r1, #32
.L0205d3d2:
    movs r2, #11
.L0205d3d4:
    adds r0, r6, #0
.L0205d3d6:
    bl reconstructed_external_thumb_020864ac
.L0205d3da:
    ldr r1, [pc, #776]
.L0205d3dc:
    adds r0, r5, #0
.L0205d3de:
    adds r2, r4, #0
.L0205d3e0:
    bl reconstructed_external_thumb_020875dc
.L0205d3e4:
    cmp r0, #0
.L0205d3e6:
    beq.n .L0205d3ea
.L0205d3e8:
    b.n .L0205d63a
.L0205d3ea:
    movs r3, #46
.L0205d3ec:
    strb r3, [r6, #0]
.L0205d3ee:
    add r0, sp, #108
.L0205d3f0:
    movs r3, #0
.L0205d3f2:
    mov r1, r8
.L0205d3f4:
    str r3, [sp, #116]
.L0205d3f6:
    str r3, [sp, #112]
.L0205d3f8:
    str r1, [sp, #108]
.L0205d3fa:
    add r2, sp, #120
.L0205d3fc:
    adds r3, r0, #0
.L0205d3fe:
    mov r9, r0
.L0205d400:
    mov r8, r2
.L0205d402:
    movs r1, #0
.L0205d404:
    ldmia r3!, {r0, r4, r5}
.L0205d406:
    stmia r2!, {r0, r4, r5}
.L0205d408:
    movs r4, #1
.L0205d40a:
    str r4, [sp, #16]
.L0205d40c:
    str r1, [sp, #20]
.L0205d40e:
    movs r5, #31
.L0205d410:
    movs r3, #1
.L0205d412:
    add r5, sp
.L0205d414:
    mov sl, r3
.L0205d416:
    mov fp, r5
.L0205d418:
    b.n .L0205d436
.L0205d41a:
    mov r2, r8
.L0205d41c:
    mov r3, r9
.L0205d41e:
    ldmia r3!, {r0, r1, r5}
.L0205d420:
    stmia r2!, {r0, r1, r5}
.L0205d422:
    subs r4, #1
.L0205d424:
    movs r3, #1
.L0205d426:
    mov r2, sl
.L0205d428:
    cmp r2, #0
.L0205d42a:
    bne.n .L0205d42e
.L0205d42c:
    b.n .L0205d33e
.L0205d42e:
    cmp r3, #0
.L0205d430:
    bne.n .L0205d48e
.L0205d432:
    cmp r4, #0
.L0205d434:
    beq.n .L0205d506
.L0205d436:
    ldr r2, [sp, #108]
.L0205d438:
    ldr r0, [r7, #4]
.L0205d43a:
    cmp r2, #1
.L0205d43c:
    bls.n .L0205d478
.L0205d43e:
    ldr r3, [r7, #36]
.L0205d440:
    subs r2, #2
.L0205d442:
    muls r2, r3
.L0205d444:
    ldr r3, [r7, #28]
.L0205d446:
    adds r3, r2, r3
.L0205d448:
    ldr r2, [sp, #112]
.L0205d44a:
    movs r1, #32
.L0205d44c:
    adds r2, r3, r2
.L0205d44e:
    ldr r3, [sp, #116]
.L0205d450:
    str r1, [sp, #0]
.L0205d452:
    lsls r3, r3, #5
.L0205d454:
    mov r1, fp
.L0205d456:
    bl reconstructed_external_thumb_0205ae68
.L0205d45a:
    mov r2, fp
.L0205d45c:
    ldrb r3, [r2, #0]
.L0205d45e:
    cmp r3, #0
.L0205d460:
    beq.n .L0205d41a
.L0205d462:
    cmp r3, #229
.L0205d464:
    beq.n .L0205d47c
.L0205d466:
    ldr r4, [sp, #16]
.L0205d468:
    adds r0, r7, #0
.L0205d46a:
    mov r1, r9
.L0205d46c:
    movs r2, #1
.L0205d46e:
    bl reconstructed_external_thumb_0205cae0
.L0205d472:
    movs r3, #0
.L0205d474:
    mov sl, r0
.L0205d476:
    b.n .L0205d426
.L0205d478:
    ldr r3, [r7, #16]
.L0205d47a:
    b.n .L0205d448
.L0205d47c:
    ldr r2, [sp, #16]
.L0205d47e:
    cmp r2, r4
.L0205d480:
    bne.n .L0205d484
.L0205d482:
    b.n .L0205d65a
.L0205d484:
    subs r4, #1
.L0205d486:
    cmp r4, #0
.L0205d488:
    bne.n .L0205d468
.L0205d48a:
    movs r3, #0
.L0205d48c:
    b.n .L0205d426
.L0205d48e:
    movs r3, #32
.L0205d490:
    adds r3, r3, r6
.L0205d492:
    adds r2, r3, #0
.L0205d494:
    mov sl, r3
.L0205d496:
    mov r3, r8
.L0205d498:
    ldmia r3!, {r0, r1, r5}
.L0205d49a:
    stmia r2!, {r0, r1, r5}
.L0205d49c:
    adds r4, #1
.L0205d49e:
    mov r0, fp
.L0205d4a0:
    movs r1, #0
.L0205d4a2:
    movs r2, #32
.L0205d4a4:
    bl reconstructed_external_thumb_020864ac
.L0205d4a8:
    str r4, [sp, #12]
.L0205d4aa:
    cmp r4, #0
.L0205d4ac:
    beq.n .L0205d520
.L0205d4ae:
    adds r4, r6, #0
.L0205d4b0:
    adds r4, #44
.L0205d4b2:
    b.n .L0205d4e0
.L0205d4b4:
    ldr r3, [r7, #36]
.L0205d4b6:
    subs r2, #2
.L0205d4b8:
    muls r2, r3
.L0205d4ba:
    ldr r3, [r7, #28]
.L0205d4bc:
    adds r3, r2, r3
.L0205d4be:
    ldr r2, [sp, #112]
.L0205d4c0:
    movs r1, #32
.L0205d4c2:
    adds r2, r3, r2
.L0205d4c4:
    ldr r3, [sp, #116]
.L0205d4c6:
    str r1, [sp, #0]
.L0205d4c8:
    lsls r3, r3, #5
.L0205d4ca:
    mov r1, fp
.L0205d4cc:
    bl reconstructed_external_thumb_0205ae1c
.L0205d4d0:
    ldr r3, [sp, #12]
.L0205d4d2:
    cmp r3, #0
.L0205d4d4:
    bne.n .L0205d4d8
.L0205d4d6:
    b.n .L0205d650
.L0205d4d8:
    mov r5, r8
.L0205d4da:
    cmp r5, #0
.L0205d4dc:
    bne.n .L0205d4e0
.L0205d4de:
    b.n .L0205d33e
.L0205d4e0:
    adds r2, r4, #0
.L0205d4e2:
    mov r3, r9
.L0205d4e4:
    ldmia r3!, {r0, r1, r5}
.L0205d4e6:
    stmia r2!, {r0, r1, r5}
.L0205d4e8:
    movs r2, #1
.L0205d4ea:
    adds r0, r7, #0
.L0205d4ec:
    mov r1, r9
.L0205d4ee:
    bl reconstructed_external_thumb_0205cae0
.L0205d4f2:
    ldr r2, [sp, #12]
.L0205d4f4:
    mov r8, r0
.L0205d4f6:
    subs r2, #1
.L0205d4f8:
    str r2, [sp, #12]
.L0205d4fa:
    ldr r2, [sp, #108]
.L0205d4fc:
    ldr r0, [r7, #4]
.L0205d4fe:
    cmp r2, #1
.L0205d500:
    bhi.n .L0205d4b4
.L0205d502:
    ldr r3, [r7, #16]
.L0205d504:
    b.n .L0205d4be
.L0205d506:
    ldr r4, [sp, #16]
.L0205d508:
    movs r2, #32
.L0205d50a:
    adds r2, r2, r6
.L0205d50c:
    mov r3, r8
.L0205d50e:
    mov sl, r2
.L0205d510:
    ldmia r3!, {r0, r1, r5}
.L0205d512:
    stmia r2!, {r0, r1, r5}
.L0205d514:
    adds r3, r6, #0
.L0205d516:
    adds r3, #44
.L0205d518:
    mov r2, r9
.L0205d51a:
    ldmia r2!, {r0, r1, r5}
.L0205d51c:
    stmia r3!, {r0, r1, r5}
.L0205d51e:
    str r4, [sp, #16]
.L0205d520:
    add r2, sp, #132
.L0205d522:
    mov r3, sl
.L0205d524:
    mov fp, r2
.L0205d526:
    ldmia r3!, {r0, r4, r5}
.L0205d528:
    stmia r2!, {r0, r4, r5}
.L0205d52a:
    ldr r1, [sp, #16]
.L0205d52c:
    mov sl, r1
.L0205d52e:
    cmp r1, #0
.L0205d530:
    ble.n .L0205d5fc
.L0205d532:
    lsls r3, r1, #1
.L0205d534:
    adds r3, r3, r1
.L0205d536:
    lsls r3, r3, #2
.L0205d538:
    adds r3, r3, r1
.L0205d53a:
    subs r3, #26
.L0205d53c:
    mov r9, r3
.L0205d53e:
    mov r1, sl
.L0205d540:
    cmp r1, #1
.L0205d542:
    beq.n .L0205d60c
.L0205d544:
    ldr r2, [sp, #16]
.L0205d546:
    cmp r2, sl
.L0205d548:
    beq.n .L0205d632
.L0205d54a:
    movs r2, #0
.L0205d54c:
    mov r3, sl
.L0205d54e:
    mov r5, sp
.L0205d550:
    subs r3, #1
.L0205d552:
    orrs r3, r2
.L0205d554:
    adds r5, #63
.L0205d556:
    strb r3, [r5, #0]
.L0205d558:
    mov r3, r9
.L0205d55a:
    adds r3, #56
.L0205d55c:
    adds r1, r6, r3
.L0205d55e:
    movs r3, #1
.L0205d560:
    movs r4, #0
.L0205d562:
    negs r2, r3
.L0205d564:
    ldr r0, [pc, #384]
.L0205d566:
    mov ip, r2
.L0205d568:
    mov r8, r4
.L0205d56a:
    b.n .L0205d58c
.L0205d56c:
    cmp r4, #1
.L0205d56e:
    ble.n .L0205d600
.L0205d570:
    subs r3, r1, #1
.L0205d572:
    ldrb r3, [r3, #0]
.L0205d574:
    cmp r3, #0
.L0205d576:
    bne.n .L0205d600
.L0205d578:
    ldr r3, [r0, #0]
.L0205d57a:
    mov r2, ip
.L0205d57c:
    strb r2, [r5, r3]
.L0205d57e:
    adds r3, r5, r3
.L0205d580:
    strb r2, [r3, #1]
.L0205d582:
    adds r4, #1
.L0205d584:
    adds r1, #1
.L0205d586:
    adds r0, #4
.L0205d588:
    cmp r4, #13
.L0205d58a:
    beq.n .L0205d5a6
.L0205d58c:
    ldrb r2, [r1, #0]
.L0205d58e:
    cmp r2, #0
.L0205d590:
    beq.n .L0205d56c
.L0205d592:
    ldr r3, [r0, #0]
.L0205d594:
    adds r4, #1
.L0205d596:
    strb r2, [r5, r3]
.L0205d598:
    adds r3, r5, r3
.L0205d59a:
    lsrs r2, r2, #8
.L0205d59c:
    strb r2, [r3, #1]
.L0205d59e:
    adds r1, #1
.L0205d5a0:
    adds r0, #4
.L0205d5a2:
    cmp r4, #13
.L0205d5a4:
    bne.n .L0205d58c
.L0205d5a6:
    mov r3, sp
.L0205d5a8:
    ldrb r3, [r3, #20]
.L0205d5aa:
    ldr r2, [sp, #132]
.L0205d5ac:
    strb r3, [r5, #13]
.L0205d5ae:
    movs r3, #15
.L0205d5b0:
    strb r3, [r5, #11]
.L0205d5b2:
    movs r3, #0
.L0205d5b4:
    strb r3, [r5, #12]
.L0205d5b6:
    strb r3, [r5, #26]
.L0205d5b8:
    strb r3, [r5, #27]
.L0205d5ba:
    ldr r0, [r7, #4]
.L0205d5bc:
    cmp r2, #1
.L0205d5be:
    bls.n .L0205d636
.L0205d5c0:
    ldr r3, [r7, #36]
.L0205d5c2:
    subs r2, #2
.L0205d5c4:
    muls r2, r3
.L0205d5c6:
    ldr r3, [r7, #28]
.L0205d5c8:
    adds r3, r2, r3
.L0205d5ca:
    ldr r2, [sp, #136]
.L0205d5cc:
    movs r1, #32
.L0205d5ce:
    adds r2, r3, r2
.L0205d5d0:
    ldr r3, [sp, #140]
.L0205d5d2:
    str r1, [sp, #0]
.L0205d5d4:
    lsls r3, r3, #5
.L0205d5d6:
    adds r1, r5, #0
.L0205d5d8:
    bl reconstructed_external_thumb_0205ae1c
.L0205d5dc:
    adds r0, r7, #0
.L0205d5de:
    mov r1, fp
.L0205d5e0:
    movs r2, #0
.L0205d5e2:
    bl reconstructed_external_thumb_0205cae0
.L0205d5e6:
    cmp r0, #0
.L0205d5e8:
    beq.n .L0205d5fc
.L0205d5ea:
    movs r4, #1
.L0205d5ec:
    negs r4, r4
.L0205d5ee:
    add sl, r4
.L0205d5f0:
    movs r5, #13
.L0205d5f2:
    negs r5, r5
.L0205d5f4:
    mov r0, sl
.L0205d5f6:
    add r9, r5
.L0205d5f8:
    cmp r0, #0
.L0205d5fa:
    bne.n .L0205d53e
.L0205d5fc:
    movs r0, #1
.L0205d5fe:
    b.n .L0205d340
.L0205d600:
    ldr r3, [r0, #0]
.L0205d602:
    mov r2, r8
.L0205d604:
    strb r2, [r5, r3]
.L0205d606:
    adds r3, r5, r3
.L0205d608:
    strb r2, [r3, #1]
.L0205d60a:
    b.n .L0205d582
.L0205d60c:
    ldr r2, [sp, #132]
.L0205d60e:
    ldr r0, [r7, #4]
.L0205d610:
    cmp r2, #1
.L0205d612:
    bls.n .L0205d664
.L0205d614:
    ldr r3, [r7, #36]
.L0205d616:
    subs r2, #2
.L0205d618:
    muls r2, r3
.L0205d61a:
    ldr r3, [r7, #28]
.L0205d61c:
    adds r3, r2, r3
.L0205d61e:
    ldr r2, [sp, #136]
.L0205d620:
    movs r1, #32
.L0205d622:
    adds r2, r3, r2
.L0205d624:
    ldr r3, [sp, #140]
.L0205d626:
    str r1, [sp, #0]
.L0205d628:
    lsls r3, r3, #5
.L0205d62a:
    adds r1, r6, #0
.L0205d62c:
    bl reconstructed_external_thumb_0205ae1c
.L0205d630:
    b.n .L0205d5dc
.L0205d632:
    movs r2, #64
.L0205d634:
    b.n .L0205d54c
.L0205d636:
    ldr r3, [r7, #16]
.L0205d638:
    b.n .L0205d5ca
.L0205d63a:
    ldr r1, [pc, #176]
.L0205d63c:
    adds r0, r5, #0
.L0205d63e:
    adds r2, r4, #0
.L0205d640:
    bl reconstructed_external_thumb_020875dc
.L0205d644:
    cmp r0, #0
.L0205d646:
    bne.n .L0205d668
.L0205d648:
    movs r3, #46
.L0205d64a:
    strb r3, [r6, #0]
.L0205d64c:
    strb r3, [r6, #1]
.L0205d64e:
    b.n .L0205d3ee
.L0205d650:
    mov r0, r8
.L0205d652:
    cmp r0, #0
.L0205d654:
    bne.n .L0205d658
.L0205d656:
    b.n .L0205d33e
.L0205d658:
    b.n .L0205d520
.L0205d65a:
    mov r2, r8
.L0205d65c:
    mov r3, r9
.L0205d65e:
    ldmia r3!, {r0, r1, r5}
.L0205d660:
    stmia r2!, {r0, r1, r5}
.L0205d662:
    b.n .L0205d484
.L0205d664:
    ldr r3, [r7, #16]
.L0205d666:
    b.n .L0205d61e
.L0205d668:
    adds r0, r5, #0
.L0205d66a:
    bl reconstructed_external_thumb_0205cf90
.L0205d66e:
    cmp r0, #0
.L0205d670:
    beq.n .L0205d6be
.L0205d672:
    adds r0, r5, #0
.L0205d674:
    bl reconstructed_external_thumb_02088764
.L0205d678:
    movs r4, #0
.L0205d67a:
    adds r1, r6, r4
.L0205d67c:
    adds r3, r1, #0
.L0205d67e:
    adds r3, #56
.L0205d680:
    ldrb r3, [r3, #0]
.L0205d682:
    cmp r3, #46
.L0205d684:
    bne.n .L0205d688
.L0205d686:
    b.n .L0205d838
.L0205d688:
    cmp r3, #0
.L0205d68a:
    bne.n .L0205d68e
.L0205d68c:
    b.n .L0205d838
.L0205d68e:
    adds r4, #1
.L0205d690:
    strb r3, [r1, #0]
.L0205d692:
    cmp r4, #8
.L0205d694:
    bne.n .L0205d67a
.L0205d696:
    adds r1, r6, #0
.L0205d698:
    movs r2, #8
.L0205d69a:
    adds r1, #8
.L0205d69c:
    adds r3, r1, #0
.L0205d69e:
    adds r3, #56
.L0205d6a0:
    ldrb r3, [r3, #0]
.L0205d6a2:
    cmp r3, #46
.L0205d6a4:
    bne.n .L0205d6a8
.L0205d6a6:
    b.n .L0205d850
.L0205d6a8:
    cmp r2, #10
.L0205d6aa:
    ble.n .L0205d6ae
.L0205d6ac:
    b.n .L0205d3ee
.L0205d6ae:
    adds r3, r6, r2
.L0205d6b0:
    movs r1, #32
.L0205d6b2:
    adds r2, #1
.L0205d6b4:
    strb r1, [r3, #0]
.L0205d6b6:
    adds r3, #1
.L0205d6b8:
    cmp r2, #11
.L0205d6ba:
    bne.n .L0205d6b2
.L0205d6bc:
    b.n .L0205d3ee
.L0205d6be:
    adds r1, r4, #0
.L0205d6c0:
    adds r0, r5, #0
.L0205d6c2:
    bl reconstructed_external_thumb_020876dc
.L0205d6c6:
    movs r1, #46
.L0205d6c8:
    mov r9, r0
.L0205d6ca:
    adds r0, r5, #0
.L0205d6cc:
    bl reconstructed_external_thumb_02087730
.L0205d6d0:
    mov ip, r0
.L0205d6d2:
    cmp r0, #0
.L0205d6d4:
    bne.n .L0205d6d8
.L0205d6d6:
    b.n .L0205d8ae
.L0205d6d8:
    movs r1, #95
.L0205d6da:
    add r1, sp
.L0205d6dc:
    movs r0, #0
.L0205d6de:
    movs r4, #0
.L0205d6e0:
    mov sl, r1
.L0205d6e2:
    b.n .L0205d6f2
.L0205d6e4:
    .short 0x3a04  /* literal data */
.L0205d6e6:
    .short 0x020c  /* literal data */
.L0205d6e8:
    .short 0x9b54  /* literal data */
.L0205d6ea:
    .short 0x020b  /* literal data */
.L0205d6ec:
    .short 0x2668  /* literal data */
.L0205d6ee:
    .short 0x020c  /* literal data */
.L0205d6f0:
    adds r0, #1
.L0205d6f2:
    adds r3, r5, r0
.L0205d6f4:
    cmp ip, r3
.L0205d6f6:
    bls.n .L0205d714
.L0205d6f8:
    adds r3, r0, r6
.L0205d6fa:
    adds r3, #56
.L0205d6fc:
    ldrb r1, [r3, #0]
.L0205d6fe:
    ldr r3, [pc, #444]
.L0205d700:
    ldr r3, [r3, #0]
.L0205d702:
    ldrb r2, [r1, r3]
.L0205d704:
    movs r3, #7
.L0205d706:
    tst r2, r3
.L0205d708:
    beq.n .L0205d710
.L0205d70a:
    mov r2, sl
.L0205d70c:
    strb r1, [r2, r4]
.L0205d70e:
    adds r4, #1
.L0205d710:
    cmp r4, #5
.L0205d712:
    ble.n .L0205d6f0
.L0205d714:
    cmp r4, #7
.L0205d716:
    bgt.n .L0205d72c
.L0205d718:
    mov r0, sl
.L0205d71a:
    mov r1, sp
.L0205d71c:
    adds r3, r0, r4
.L0205d71e:
    adds r1, #103
.L0205d720:
    movs r2, #95
.L0205d722:
    strb r2, [r3, #0]
.L0205d724:
    adds r3, #1
.L0205d726:
    cmp r3, r1
.L0205d728:
    bne.n .L0205d722
.L0205d72a:
    movs r4, #8
.L0205d72c:
    adds r0, r5, #0
.L0205d72e:
    movs r1, #46
.L0205d730:
    bl reconstructed_external_thumb_02087730
.L0205d734:
    cmp r0, #0
.L0205d736:
    bne.n .L0205d73a
.L0205d738:
    b.n .L0205d8a0
.L0205d73a:
    movs r3, #46
.L0205d73c:
    mov r1, sl
.L0205d73e:
    strb r3, [r1, #8]
.L0205d740:
    cmp r4, #11
.L0205d742:
    bgt.n .L0205d764
.L0205d744:
    ldrb r3, [r0, #0]
.L0205d746:
    adds r0, #1
.L0205d748:
    strb r3, [r1, r4]
.L0205d74a:
    adds r4, #1
.L0205d74c:
    cmp r0, #0
.L0205d74e:
    beq.n .L0205d764
.L0205d750:
    adds r2, r1, r4
.L0205d752:
    cmp r4, #12
.L0205d754:
    beq.n .L0205d764
.L0205d756:
    ldrb r3, [r0, #0]
.L0205d758:
    adds r0, #1
.L0205d75a:
    strb r3, [r2, #0]
.L0205d75c:
    adds r4, #1
.L0205d75e:
    adds r2, #1
.L0205d760:
    cmp r0, #0
.L0205d762:
    bne.n .L0205d752
.L0205d764:
    movs r3, #0
.L0205d766:
    mov r2, sl
.L0205d768:
    strb r3, [r2, r4]
.L0205d76a:
    mov r4, sl
.L0205d76c:
    movs r3, #126
.L0205d76e:
    strb r3, [r4, #5]
.L0205d770:
    movs r4, #0
.L0205d772:
    b.n .L0205d77a
.L0205d774:
    cmp r4, #100
.L0205d776:
    bne.n .L0205d77a
.L0205d778:
    b.n .L0205d33e
.L0205d77a:
    adds r4, #1
.L0205d77c:
    movs r1, #10
.L0205d77e:
    adds r0, r4, #0
.L0205d780:
    bl reconstructed_external_thumb_02082858
.L0205d784:
    movs r1, #10
.L0205d786:
    bl reconstructed_external_thumb_020828ec
.L0205d78a:
    mov r5, sl
.L0205d78c:
    adds r1, #48
.L0205d78e:
    strb r1, [r5, #6]
.L0205d790:
    adds r0, r4, #0
.L0205d792:
    movs r1, #10
.L0205d794:
    bl reconstructed_external_thumb_020828ec
.L0205d798:
    adds r1, #48
.L0205d79a:
    strb r1, [r5, #7]
.L0205d79c:
    adds r0, r7, #0
.L0205d79e:
    mov r1, sl
.L0205d7a0:
    mov r2, r8
.L0205d7a2:
    bl reconstructed_external_thumb_0205cd3c
.L0205d7a6:
    cmp r0, #0
.L0205d7a8:
    bne.n .L0205d774
.L0205d7aa:
    cmp r4, #100
.L0205d7ac:
    bne.n .L0205d7b0
.L0205d7ae:
    b.n .L0205d33e
.L0205d7b0:
    mov r0, sl
.L0205d7b2:
    bl reconstructed_external_thumb_02088764
.L0205d7b6:
    mov r1, sl
.L0205d7b8:
    movs r2, #8
.L0205d7ba:
    adds r0, r6, #0
.L0205d7bc:
    bl reconstructed_external_thumb_020863cc
.L0205d7c0:
    adds r0, r6, #0
.L0205d7c2:
    add r1, sp, #104
.L0205d7c4:
    movs r2, #3
.L0205d7c6:
    adds r0, #8
.L0205d7c8:
    bl reconstructed_external_thumb_020863cc
.L0205d7cc:
    movs r2, #0
.L0205d7ce:
    movs r1, #32
.L0205d7d0:
    ldrb r3, [r2, r6]
.L0205d7d2:
    cmp r3, #31
.L0205d7d4:
    bhi.n .L0205d7d8
.L0205d7d6:
    strb r1, [r2, r6]
.L0205d7d8:
    adds r2, #1
.L0205d7da:
    cmp r2, #10
.L0205d7dc:
    bne.n .L0205d7d0
.L0205d7de:
    ldrb r1, [r6, #0]
.L0205d7e0:
    str r1, [sp, #20]
.L0205d7e2:
    movs r1, #1
.L0205d7e4:
    b.n .L0205d7fe
.L0205d7e6:
    movs r2, #128
.L0205d7e8:
    ldr r4, [sp, #20]
.L0205d7ea:
    lsrs r3, r4, #1
.L0205d7ec:
    adds r3, r2, r3
.L0205d7ee:
    ldrb r2, [r1, r6]
.L0205d7f0:
    adds r1, #1
.L0205d7f2:
    adds r3, r3, r2
.L0205d7f4:
    lsls r3, r3, #24
.L0205d7f6:
    lsrs r3, r3, #24
.L0205d7f8:
    str r3, [sp, #20]
.L0205d7fa:
    cmp r1, #11
.L0205d7fc:
    beq.n .L0205d808
.L0205d7fe:
    ldr r0, [sp, #20]
.L0205d800:
    lsls r0, r0, #31
.L0205d802:
    bmi.n .L0205d7e6
.L0205d804:
    movs r2, #0
.L0205d806:
    b.n .L0205d7e8
.L0205d808:
    mov r0, r9
.L0205d80a:
    movs r1, #13
.L0205d80c:
    adds r0, #12
.L0205d80e:
    bl reconstructed_external_thumb_020827cc
.L0205d812:
    add r5, sp, #108
.L0205d814:
    movs r3, #0
.L0205d816:
    add r1, sp, #120
.L0205d818:
    adds r4, r0, #1
.L0205d81a:
    mov r0, r8
.L0205d81c:
    str r3, [sp, #116]
.L0205d81e:
    str r3, [sp, #112]
.L0205d820:
    str r0, [sp, #108]
.L0205d822:
    adds r2, r1, #0
.L0205d824:
    adds r3, r5, #0
.L0205d826:
    mov r9, r5
.L0205d828:
    mov r8, r1
.L0205d82a:
    ldmia r3!, {r0, r1, r5}
.L0205d82c:
    stmia r2!, {r0, r1, r5}
.L0205d82e:
    cmp r4, #0
.L0205d830:
    bne.n .L0205d834
.L0205d832:
    b.n .L0205d508
.L0205d834:
    str r4, [sp, #16]
.L0205d836:
    b.n .L0205d40e
.L0205d838:
    adds r2, r4, #0
.L0205d83a:
    cmp r4, #7
.L0205d83c:
    ble.n .L0205d840
.L0205d83e:
    b.n .L0205d69c
.L0205d840:
    adds r3, r1, #0
.L0205d842:
    movs r0, #32
.L0205d844:
    adds r2, #1
.L0205d846:
    strb r0, [r3, #0]
.L0205d848:
    adds r3, #1
.L0205d84a:
    cmp r2, #7
.L0205d84c:
    ble.n .L0205d844
.L0205d84e:
    b.n .L0205d69c
.L0205d850:
    adds r3, r1, #0
.L0205d852:
    adds r3, #57
.L0205d854:
    ldrb r1, [r3, #0]
.L0205d856:
    cmp r1, #0
.L0205d858:
    bne.n .L0205d85c
.L0205d85a:
    b.n .L0205d6a8
.L0205d85c:
    cmp r2, #10
.L0205d85e:
    bgt.n .L0205d87c
.L0205d860:
    adds r3, r4, #0
.L0205d862:
    adds r3, #58
.L0205d864:
    adds r0, r6, r2
.L0205d866:
    adds r3, r6, r3
.L0205d868:
    strb r1, [r0, #0]
.L0205d86a:
    ldrb r1, [r3, #0]
.L0205d86c:
    adds r2, #1
.L0205d86e:
    cmp r1, #0
.L0205d870:
    bne.n .L0205d874
.L0205d872:
    b.n .L0205d6a8
.L0205d874:
    adds r0, #1
.L0205d876:
    adds r3, #1
.L0205d878:
    cmp r2, #11
.L0205d87a:
    bne.n .L0205d868
.L0205d87c:
    movs r3, #0
.L0205d87e:
    add r2, sp, #108
.L0205d880:
    add r4, sp, #120
.L0205d882:
    mov r9, r2
.L0205d884:
    str r3, [sp, #116]
.L0205d886:
    str r3, [sp, #112]
.L0205d888:
    mov r3, r8
.L0205d88a:
    str r3, [sp, #108]
.L0205d88c:
    adds r2, r4, #0
.L0205d88e:
    mov r3, r9
.L0205d890:
    ldmia r3!, {r0, r1, r5}
.L0205d892:
    stmia r2!, {r0, r1, r5}
.L0205d894:
    mov r8, r4
.L0205d896:
    movs r2, #0
.L0205d898:
    movs r4, #1
.L0205d89a:
    str r4, [sp, #16]
.L0205d89c:
    str r2, [sp, #20]
.L0205d89e:
    b.n .L0205d40e
.L0205d8a0:
    mov r3, sl
.L0205d8a2:
    strb r0, [r3, #8]
.L0205d8a4:
    strb r0, [r3, #9]
.L0205d8a6:
    strb r0, [r3, #10]
.L0205d8a8:
    strb r0, [r3, #11]
.L0205d8aa:
    strb r0, [r3, #12]
.L0205d8ac:
    b.n .L0205d76a
.L0205d8ae:
    adds r0, r5, #0
.L0205d8b0:
    movs r1, #0
.L0205d8b2:
    bl reconstructed_external_thumb_0208739c
.L0205d8b6:
    mov ip, r0
.L0205d8b8:
    b.n .L0205d6d8
.L0205d8ba:
    .short 0x0000  /* literal data */
.L0205d8bc:
    .short 0x92bc  /* literal data */
.L0205d8be:
    .short 0x020c  /* literal data */

/* uLibrary-createFont-region at 0x0205f21c, 808 bytes, ARM. */
.section .reconstructed.fn09,"ax",%progbits
.align 2
.arm
.global reconstructed_09_uLibrary_createFont_region
reconstructed_09_uLibrary_createFont_region:
.L0205f21c:
    stmdb sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
.L0205f220:
    mov sl, r0
.L0205f224:
    sub sp, sp, #36
.L0205f228:
    mov r0, #32
.L0205f22c:
    bl reconstructed_external_arm_02097858
.L0205f230:
    subs r8, r0, #0
.L0205f234:
    streq r8, [sp, #24]
.L0205f238:
    beq .L0205f49c
.L0205f23c:
    mov r0, #256
.L0205f240:
    bl reconstructed_external_arm_02097858
.L0205f244:
    cmp r0, #0
.L0205f248:
    mov r4, r0
.L0205f24c:
    str r8, [sp, #24]
.L0205f250:
    str r0, [r8, #4]
.L0205f254:
    beq .L0205f510
.L0205f258:
    ldr r3, [sl, #8]
.L0205f25c:
    cmp r3, #0
.L0205f260:
    movne r1, #0
.L0205f264:
    bne .L0205f270
.L0205f268:
    b .L0205f4d8
.L0205f26c:
    ldr r3, [sl, #8]
.L0205f270:
    ldrb r2, [r3, r1]
.L0205f274:
    ldr r3, [r8, #4]
.L0205f278:
    strb r2, [r3, r1]
.L0205f27c:
    add r1, r1, #1
.L0205f280:
    cmp r1, #256
.L0205f284:
    bne .L0205f26c
.L0205f288:
    mov r3, #0
.L0205f28c:
    str r3, [r8, #12]
.L0205f290:
    mov r0, #512
.L0205f294:
    bl reconstructed_external_arm_02097858
.L0205f298:
    cmp r0, #0
.L0205f29c:
    mov r5, r0
.L0205f2a0:
    str r0, [r8, #8]
.L0205f2a4:
    beq .L0205f520
.L0205f2a8:
    ldrb r3, [sl, #28]
.L0205f2ac:
    mov ip, #0
.L0205f2b0:
    strb r3, [r8, #28]
.L0205f2b4:
    ldr r4, [r8, #4]
.L0205f2b8:
    ldrb r1, [r8, #28]
.L0205f2bc:
    ldr r6, [pc, #628]
.L0205f2c0:
    mov r0, ip
.L0205f2c4:
    mov lr, ip
.L0205f2c8:
    ldrb r3, [r0, r4]
.L0205f2cc:
    add r2, r1, ip
.L0205f2d0:
    add r3, r3, r2
.L0205f2d4:
    cmp r3, r6
.L0205f2d8:
    mov r1, ip, lsl #16
.L0205f2dc:
    addgt lr, lr, #1
.L0205f2e0:
    movgt ip, #0
.L0205f2e4:
    mov r1, r1, lsr #16
.L0205f2e8:
    mov r3, lr, lsl #9
.L0205f2ec:
    movgt r1, ip
.L0205f2f0:
    mov r2, r0, lsl #1
.L0205f2f4:
    add r3, r1, r3
.L0205f2f8:
    strh r3, [r2, r5]
.L0205f2fc:
    ldrb r1, [r8, #28]
.L0205f300:
    ldrb r2, [r0, r4]
.L0205f304:
    add r0, r0, #1
.L0205f308:
    add r3, ip, r1
.L0205f30c:
    cmp r0, #256
.L0205f310:
    add ip, r2, r3
.L0205f314:
    bne .L0205f2c8
.L0205f318:
    ldrsh r3, [sl, #4]
.L0205f31c:
    cmp r3, #2
.L0205f320:
    bgt .L0205f4a8
.L0205f324:
    ldr r3, [sl, #16]
.L0205f328:
    mov ip, #4
.L0205f32c:
    mla r1, lr, r3, r3
.L0205f330:
    mov r0, #512
.L0205f334:
    mov r3, #2
.L0205f338:
    mov r2, #0
.L0205f33c:
    str ip, [sp]
.L0205f340:
    bl reconstructed_external_arm_0205dd48
.L0205f344:
    mov r3, #2
.L0205f348:
    str r3, [sp, #28]
.L0205f34c:
    str r0, [r8]
.L0205f350:
    ldr r4, [r8]
.L0205f354:
    cmp r4, #0
.L0205f358:
    beq .L0205f500
.L0205f35c:
    ldr r2, [sl, #16]
.L0205f360:
    ldrh r1, [r4, #34]
.L0205f364:
    ldrh r3, [r4, #36]
.L0205f368:
    str r2, [r8, #20]
.L0205f36c:
    mul lr, r3, r1
.L0205f370:
    ldrb r2, [r4, #38]
.L0205f374:
    ldr r3, [pc, #448]
.L0205f378:
    ldr r0, [r4, #48]
.L0205f37c:
    ldr ip, [r3, r2, lsl #2]
.L0205f380:
    mov r1, #0
.L0205f384:
    mul r2, ip, lr
.L0205f388:
    mov r2, r2, asr #3
.L0205f38c:
    bl reconstructed_external_arm_02097834
.L0205f390:
    ldr r9, [r8]
.L0205f394:
    mvn r3, #32768
.L0205f398:
    ldr r2, [r9, #52]
.L0205f39c:
    strh r3, [r2, #2]
.L0205f3a0:
    mov r3, #0
.L0205f3a4:
    strh r3, [r2]
.L0205f3a8:
    ldrh lr, [sl, #30]
.L0205f3ac:
    ldrsh r3, [r9, #46]
.L0205f3b0:
    cmp lr, r3
.L0205f3b4:
    movge lr, r3
.L0205f3b8:
    cmp lr, #0
.L0205f3bc:
    ble .L0205f400
.L0205f3c0:
    ldr r5, [sl, #32]
.L0205f3c4:
    mov r4, r2
.L0205f3c8:
    mov ip, #0
.L0205f3cc:
    ldr r2, [r5, ip, lsl #2]
.L0205f3d0:
    mov r0, ip, lsl #1
.L0205f3d4:
    mov r3, r2, lsr #6
.L0205f3d8:
    mov r1, r2, lsr #9
.L0205f3dc:
    and r3, r3, #992
.L0205f3e0:
    and r2, r2, #255
.L0205f3e4:
    orr r3, r3, r2, lsr #3
.L0205f3e8:
    and r1, r1, #31744
.L0205f3ec:
    add ip, ip, #1
.L0205f3f0:
    orr r3, r3, r1
.L0205f3f4:
    cmp lr, ip
.L0205f3f8:
    strh r3, [r0, r4]
.L0205f3fc:
    bne .L0205f3cc
.L0205f400:
    ldr fp, [pc, #312]
.L0205f404:
    mov r7, #0
.L0205f408:
    b .L0205f410
.L0205f40c:
    ldr r9, [r8]
.L0205f410:
    ldrsh r6, [sl, #4]
.L0205f414:
    ldr r1, [sl, #20]
.L0205f418:
    mov r3, r6, lsl #2
.L0205f41c:
    add r3, r3, fp
.L0205f420:
    ldr lr, [r3, #-4]
.L0205f424:
    ldr r2, [sl, #16]
.L0205f428:
    mov lr, r1, lsl lr
.L0205f42c:
    mul r4, r2, r1
.L0205f430:
    ldr ip, [r8, #8]
.L0205f434:
    ldr r2, [sl]
.L0205f438:
    ldr r1, [r8, #4]
.L0205f43c:
    mov r3, r7, lsl #1
.L0205f440:
    ldrh r0, [r3, ip]
.L0205f444:
    mla r5, r7, r4, r2
.L0205f448:
    ldrb ip, [r1, r7]
.L0205f44c:
    ldrb r3, [r8, #28]
.L0205f450:
    ldr r4, [r8, #20]
.L0205f454:
    mov r1, r0, lsl #23
.L0205f458:
    add r3, ip, r3
.L0205f45c:
    mov r0, r0, lsr #9
.L0205f460:
    ldr ip, [sp, #28]
.L0205f464:
    mul r2, r4, r0
.L0205f468:
    mov r1, r1, lsr #23
.L0205f46c:
    mov r0, r9
.L0205f470:
    add r7, r7, #1
.L0205f474:
    str lr, [sp, #4]
.L0205f478:
    str r6, [sp, #8]
.L0205f47c:
    str r5, [sp, #16]
.L0205f480:
    str r4, [sp]
.L0205f484:
    str ip, [sp, #12]
.L0205f488:
    bl reconstructed_external_arm_0205ecbc
.L0205f48c:
    cmp r7, #256
.L0205f490:
    bne .L0205f40c
.L0205f494:
    ldr r0, [r8]
.L0205f498:
    bl reconstructed_external_arm_0205db7c
.L0205f49c:
    ldr r0, [sp, #24]
.L0205f4a0:
    add sp, sp, #36
.L0205f4a4:
    ldmia sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
.L0205f4a8:
    ldr r3, [sl, #16]
.L0205f4ac:
    mov ip, #16
.L0205f4b0:
    mla r1, lr, r3, r3
.L0205f4b4:
    mov r0, #512
.L0205f4b8:
    mov r2, #0
.L0205f4bc:
    mov r3, #3
.L0205f4c0:
    str ip, [sp]
.L0205f4c4:
    bl reconstructed_external_arm_0205dd48
.L0205f4c8:
    mov ip, #4
.L0205f4cc:
    str r0, [r8]
.L0205f4d0:
    str ip, [sp, #28]
.L0205f4d4:
    b .L0205f350
.L0205f4d8:
    mov r1, r3
.L0205f4dc:
    ldr r2, [r8, #4]
.L0205f4e0:
    ldr r3, [sl, #12]
.L0205f4e4:
    strb r3, [r1, r2]
.L0205f4e8:
    add r1, r1, #1
.L0205f4ec:
    cmp r1, #256
.L0205f4f0:
    bne .L0205f4dc
.L0205f4f4:
    mov r3, #1
.L0205f4f8:
    str r3, [r8, #12]
.L0205f4fc:
    b .L0205f290
.L0205f500:
    ldr r0, [r8, #8]
.L0205f504:
    bl reconstructed_external_arm_0209784c
.L0205f508:
    ldr r0, [r8, #4]
.L0205f50c:
    bl reconstructed_external_arm_0209784c
.L0205f510:
    mov r0, r8
.L0205f514:
    bl reconstructed_external_arm_0209784c
.L0205f518:
    str r4, [sp, #24]
.L0205f51c:
    b .L0205f49c
.L0205f520:
    ldr r0, [r8, #4]
.L0205f524:
    bl reconstructed_external_arm_0209784c
.L0205f528:
    mov r0, r8
.L0205f52c:
    bl reconstructed_external_arm_0209784c
.L0205f530:
    str r5, [sp, #24]
.L0205f534:
    b .L0205f49c
.L0205f538:
    .long 0x000001ff  /* literal data */
.L0205f53c:
    .long 0x020b9b88  /* literal data */
.L0205f540:
    .long 0x020ba3c8  /* literal data */

.section .reconstructed.thumb_target_02009608,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02009608:

.section .reconstructed.thumb_target_020096d0,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020096d0:

.section .reconstructed.thumb_target_0200add0,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0200add0:

.section .reconstructed.thumb_target_0200ae64,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0200ae64:

.section .reconstructed.thumb_target_0200ae9c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0200ae9c:

.section .reconstructed.thumb_target_0200af94,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0200af94:

.section .reconstructed.thumb_target_0200b35c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0200b35c:

.section .reconstructed.thumb_target_02010048,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02010048:

.section .reconstructed.thumb_target_02010158,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02010158:

.section .reconstructed.thumb_target_020101e0,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020101e0:

.section .reconstructed.thumb_target_0201021c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0201021c:

.section .reconstructed.thumb_target_02011694,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02011694:

.section .reconstructed.thumb_target_02011748,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02011748:

.section .reconstructed.thumb_target_02011a60,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02011a60:

.section .reconstructed.thumb_target_02011ae4,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02011ae4:

.section .reconstructed.thumb_target_02011c14,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02011c14:

.section .reconstructed.thumb_target_0205ae1c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205ae1c:

.section .reconstructed.thumb_target_0205ae68,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205ae68:

.section .reconstructed.thumb_target_0205cae0,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205cae0:

.section .reconstructed.thumb_target_0205cd3c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205cd3c:

.section .reconstructed.thumb_target_0205cf90,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205cf90:

.section .reconstructed.thumb_target_0205d02c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0205d02c:

.section .reconstructed.thumb_target_0207a7f4,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0207a7f4:

.section .reconstructed.thumb_target_020827cc,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020827cc:

.section .reconstructed.thumb_target_02082848,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02082848:

.section .reconstructed.thumb_target_02082858,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02082858:

.section .reconstructed.thumb_target_020828ec,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020828ec:

.section .reconstructed.thumb_target_020863cc,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020863cc:

.section .reconstructed.thumb_target_02086428,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02086428:

.section .reconstructed.thumb_target_020864ac,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020864ac:

.section .reconstructed.thumb_target_0208739c,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_0208739c:

.section .reconstructed.thumb_target_020874d0,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020874d0:

.section .reconstructed.thumb_target_020875dc,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020875dc:

.section .reconstructed.thumb_target_020876dc,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_020876dc:

.section .reconstructed.thumb_target_02087730,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02087730:

.section .reconstructed.thumb_target_02088764,"ax",%progbits
.thumb
.thumb_func
reconstructed_external_thumb_02088764:

/* Static-constructor table entry owned by the reconstructed b2Triangle unit. */
.section .reconstructed.init_b2Triangle,"a",%progbits
.align 2
    .long .L02046a1c

.section .note.GNU-stack,"",%progbits
