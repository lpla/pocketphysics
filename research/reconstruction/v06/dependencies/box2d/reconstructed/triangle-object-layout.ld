/* Preserve the historical unit order without rewriting compiler output. */
SECTIONS
{
  .text 0 :
  {
    *(.text._ZN10b2TriangleD1Ev)
    *(.text._ZN10b2TriangleD2Ev)
    *(.text._ZN10b2Triangle3SetERKS_)
    *(.text._ZN10b2TriangleC1Ev)
    *(.text._ZN10b2TriangleC2Ev)
    *(.text._ZN10b2TriangleC1E5FixedS0_S0_S0_S0_S0_)
    *(.text._ZN10b2TriangleC2E5FixedS0_S0_S0_S0_S0_)
    *(.text._ZN10b2Triangle8IsInsideE5FixedS0_)
    *(.text._Z41__static_initialization_and_destruction_0ii)
    *(.text._GLOBAL__I__ZN10b2TriangleC2E5FixedS0_S0_S0_S0_S0_)
    *(.text .text.*)
  }
  .data 0 : { *(.data) }
  .bss 0 : { *(.bss) }
  .init_array 0 : { *(.init_array) }
}
