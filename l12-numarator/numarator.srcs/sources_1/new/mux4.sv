`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2025 12:47:05 PM
// Design Name: 
// Module Name: mux4
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


module mux4(
    input logic [15:0]in,
    input logic [1:0] sel,
    output logic [3:0] out
    );
    
    always_comb
    case(sel)
    2'b00: out = in[3:0];
    2'b01: out = in[7:4];
    2'b10: out = in[11:8];
    2'b11: out = in[15:12];
    
    endcase
endmodule
