# ARITHMATIC-LOGICAL-UNITS(ongoing)
Designing different ALUs using Verilog HDL.
4-Bit Arithmetic Logic Unit (ALU)

A 4-bit Arithmetic Logic Unit designed using Verilog HDL to perform arithmetic, bitwise logical, shift and rotate operations using combinational logic.

Project Overview

This project implements a 4-bit ALU that performs 16 different operations on two 4-bit binary inputs.

The operation is selected using a 4-bit control signal. The design uses combinational logic with an "always @(*)" block and a "case" statement.

Supported Operations

Arithmetic Operations

Opcode| Operation| Function

0000| ADD| A + B

0001| SUB| A - B

0010| MUL| A × B

0011| INC| A + 1

0100| DEC| A - 1


Bitwise Logic Operations

Opcode| Operation| Function

0101| AND| A & B

0110| OR| A | B

0111| XOR| A ^ B

1000| NOT| ~A

1001| NAND| ~(A & B)

1010| NOR| ~(A | B)

1011| XNOR| ~(A ^ B)


Shift and Rotate Operations

Opcode| Operation| Function

1100| SHL| Shift Left

1101| SHR| Shift Right

1110| ROL| Rotate Left

1111| ROR| Rotate Right


Input and Output Specifications

Signal| Width| Description

A| 4-bit| First input operand

B| 4-bit| Second input operand

S| 4-bit| Operation select

Y| 8-bit| Result output

Carry| 1-bit| Carry indication

Zero| 1-bit| Zero-result flag


Example Operations

Operation| A| B| Result

ADD| 0101| 0011| 00001000

SUB| 1001| 0011| 00000110

MUL| 1111| 1111| 11100001

AND| 1100| 1010| 00001000

OR| 1100| 1010| 00001110

XOR| 1100| 1010| 00000110


Working Principle

1. Two 4-bit binary operands are applied at the inputs.
2. A 4-bit selection signal determines the required operation.
3. The combinational logic performs the selected operation.
4. The result is generated at the output without requiring a clock signal.

Tools and Technologies

- Verilog HDL
- Visual Studio Code
- Icarus Verilog
- DigitalJS

Applications

- Digital system design
- Processor datapath fundamentals
- Arithmetic and logic processing
- Computer architecture
- VLSI and RTL design

Project Category

Academic Project | Digital Electronics | Verilog HDL | RTL Design | Electronics and Communication Engineering
