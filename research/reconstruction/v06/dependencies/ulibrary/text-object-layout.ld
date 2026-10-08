/* Reconstruct unit order from complete source-compiled functions and data. */
SECTIONS
{
  .text 0 :
  {
    text-core.o(.text.ulDrawChar1BitToImage)
    text-core.o(.text.ulDrawTile)
    text-core.o(.text.ulSetTextColor)
    text-core.o(.text.ulDrawTextBox)
    text-core.o(.text.ulDrawString)
    text-core.o(.text.ulDrawChar)
    text-core.o(.text.ulDeleteFont)
    font-source.o(.text)
    text-core.o(.text.ulInitText)
    text-core.o(.text.ulLoadFont)
  }
  .rodata 0 : { text-core.o(.rodata) font-source.o(.rodata) }
  .rodata.str1.4 0 : { *(.rodata.str1.4) }
  .data 0 : { *(.data) }
  .bss 0 : { *(.bss) }
}
