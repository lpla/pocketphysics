ENTRY(benchmark_entry)
SECTIONS
{
    . = 0x02300000;
    .text :
    {
        *(.text.benchmark_entry)
        *(.text*)
    }
    .rodata : { *(.rodata*) }
    .data : { *(.data*) }
    .bss : { *(.bss*) *(COMMON) }
}
