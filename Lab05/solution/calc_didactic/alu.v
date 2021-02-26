`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date:    19:42:47 11/26/2011
// Design Name:
// Module Name:    alu
// Project Name:
// Target Devices:
// Tool versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////
module alu(
        oe,
        opcode,
        in1,
        in2,
        carry,
        out,
        flags
    );

parameter width = 16;
parameter flags_width = 5;

input                       oe;
input [3:0]                 opcode;
input [width-1 : 0]         in1;
input [width-1 : 0]         in2;
input                       carry;
output[width-1 : 0]         out;
output[flags_width-1 : 0]   flags;  // P, S, Z, O, C

endmodule
