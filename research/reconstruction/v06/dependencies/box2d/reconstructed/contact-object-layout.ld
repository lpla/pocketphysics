/* Separate source and residual executable sections for provenance accounting. */
SECTIONS
{
  .text.contact.prefix 0 :
  {
    *(.text._ZN15b2ContactSolverD1Ev)
    *(.text._ZN15b2ContactSolverD2Ev)
    *(.text._ZN15b2ContactSolver27FinalizeVelocityConstraintsEv)
    *(.text._Z41__static_initialization_and_destruction_0ii)
    *(.text._GLOBAL__I__ZN15b2ContactSolverC2ERK10b2TimeStepPP9b2ContactlP16b2StackAllocator)
  }
  .text.contact.velocity 0 : { *(.text.contact.velocity) }
  .text.contact.suffix 0 :
  {
    *(.text._ZN15b2ContactSolver23InitVelocityConstraintsEv)
    *(.text._ZN15b2ContactSolverC1ERK10b2TimeStepPP9b2ContactlP16b2StackAllocator)
    *(.text._ZN15b2ContactSolverC2ERK10b2TimeStepPP9b2ContactlP16b2StackAllocator)
    *(.text._ZN15b2ContactSolver24SolvePositionConstraintsE5Fixed)
  }
  .data 0 : { *(.data) }
  .bss 0 : { *(.bss) }
  .init_array 0 : { *(.init_array) }
}
