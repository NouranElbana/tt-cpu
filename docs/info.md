## How it works

This project implements a custom 8-bit CPU designed in Verilog using a 16-bit instruction format and implemented using the SKY130 process.
The CPU consists of eight 8-bit general-purpose registers, an Arithmetic Logic Unit (ALU), a control unit, an instruction decoder, a program counter, a 16-instruction ROM, and an 8 × 8-bit data memory (64 bits).
The processor supports arithmetic, logical, shift, immediate loading, memory access (LOAD and STORE), and jump instructions.
During operation, the program counter selects an instruction from ROM. The instruction decoder extracts the opcode and register addresses, while the control unit generates the necessary control signals. Operands are retrieved from the register file and processed by the ALU, or data is accessed from memory. Results are written back to the register file, and the program counter advances or jumps to another instruction.
The design was synthesised and physically implemented using LibreLane and the SKY130 PDK, achieving approximately 83.08% standard-cell utilisation within a fixed 1×1 Tiny Tapeout tile.

## How to test

Hold rst_n low for a few clock cycles, then raise it. The pin table in info.yaml says what each input and output does.

## External hardware

None.
