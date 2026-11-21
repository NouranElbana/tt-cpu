## How it works

This project implements a custom 8-bit CPU in Verilog using a 16-bit instruction format. The processor contains eight 8-bit general-purpose registers, an arithmetic logic unit (ALU), a control unit, an instruction decoder, a program counter, instruction ROM, and 16 × 8-bit data memory.
The ALU supports addition, subtraction, AND, OR, XOR, NOT, logical shift left, and logical shift right. The processor also supports immediate loading, LOAD, STORE, and unconditional JUMP instructions.
The CPU executes a predefined program stored in instruction ROM. The program counter and ALU output are exposed through the Tiny Tapeout pins for observation.

## How to test

Hold rst_n low for a few clock cycles, then raise it. The pin table in info.yaml says what each input and output does.

## External hardware

None.
