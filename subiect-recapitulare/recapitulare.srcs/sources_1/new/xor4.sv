`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2025 03:34:22 PM
// Design Name: 
// Module Name: xor4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module xor4(
input logic [3:0]a, b,
input logic en,
output logic [3:0] out
    );
    always_comb
    if(en)
        out = a ^ b;
    else
        out = 0;
endmodule
