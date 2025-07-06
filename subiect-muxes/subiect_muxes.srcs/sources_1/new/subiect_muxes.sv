`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2025 09:50:53 PM
// Design Name: 
// Module Name: subiect_muxes
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


module subiect_muxes(
    input logic in0, in1, in2, in3,
    input logic [1:0] sel,
    input logic [3:0] data,
    output logic [3:0] out
    );
    
    logic [1:0]wOutMux2_2_0;
    logic wOutParity_0, wOutMux4_0;
    
    mux4 mux4_0(
        .IN0(in0),
        .IN1(in1),
        .IN2(in2),
        .IN3(in3),
        .SEL(sel),
        .OUT(wOutMux4_0)
        );
        
    parity_calc parity_0(
        .data(data),
        .out(wOutParity_0)
        );
    
    mux2_2 mux2_2_0(
        .in0(~sel),
        .in1(sel),
        .sel(wOutParity_0),
        .out(wOutMux2_2_0)
        );

    demux4 demux4_0(
        .in(wOutMux4_0),
        .sel(wOutMux2_2_0),
        .out(out)
        );
    
endmodule
