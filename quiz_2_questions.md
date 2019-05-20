#Score for this quiz: 0 out of 70 *
Submitted Apr 8 at 8:42pm
This attempt took 58 minutes.
 
#Question 1
Not yet graded / 10 pts

Express the base 10 number (-20.5) in IEEE 754 single precision floating-point format. Express your answer in hexadecimal format
Your Answer:

0b 11000001 10100100 00000000 00000000

0x c1 a4 00 00
 
#Question 2
Not yet graded / 10 pts

Express the base 10 number (18.25) in IEEE 754 single precision floating point format.  Express your answer in hexadecimal format
Your Answer:

0b 01000001 10010010 00000000 00000000

0x 41 92 00 00
 
#Question 3
Not yet graded / 10 pts

Add the following IEEE 754 single-precision floating-point numbers: 0xC0D20000 + 0x40DC0000

give your answer is hexadecimal format. 
Your Answer:

0x 3e a0 00 00
 
#Question 4
Not yet graded / 20 pts

Sketch a schematic of the circuit described by the following HDL code. Simplify the schematic so that it shows a minimum number of gates.

Ch4.1.png
quiz2_180D_tomasz_lewicki.pdf
 
Question 5
Not yet graded / 20 pts

Write an System Verilog HDL module for a 2:4 decoder
Your Answer:

module 2to4decoder( input logic [1:0] a, output logic [3:0] y);

always_comb

    case(a)

       2'b00: y = 3'b0001;

       2'b01: y = 3'b0010;

       2'b10: y = 3'b0100;

       2'b11: y = 3'b1000;

       default: y= 3'bxxxx;

    endcase

endmodule
