`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2025 03:37:47 PM
// Design Name: 
// Module Name: top
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


module top(
input logic EN,
input logic [1:0] SEL_D,
input logic [1:0] SEL_M,
input logic [3:0] A,
input logic [3:0] B,
output logic COUT,
output logic [3:0] OUT
    );
    
logic [3:0] wire_dmux, wire_sum4, wire_dif4, wire_and4, wire_xor4;
    
recapitulare dmux_inst0(
    .en(EN),
    .sel(SEL_D),
    .out(wire_dmux)
    );
    
sum4 sum4_inst0(
    .a(A),
    .b(B),
    .en(wire_dmux[0]),
    .out(wire_sum4),
    .cout(COUT)
    );

dif4 dif4_inst0(
    .a(A),
    .b(B),
    .en(wire_dmux[1]),
    .out(wire_dif4)
    );
    
and4 and4_inst0(
    .a(A),
    .b(B),
    .en(wire_dmux[2]),
    .out(wire_and4)
    );
    
xor4 xor4_inst0(
    .a(A),
    .b(B),
    .en(wire_dmux[3]),
    .out(wire_xor4)
    );
    
mux4 mux4_inst0(
    .in0(wire_sum4),
    .in1(wire_dif4),
    .in2(wire_and4),
    .in3(wire_xor4),
    .sel(SEL_M),
    .out(OUT)
    );

endmodule
