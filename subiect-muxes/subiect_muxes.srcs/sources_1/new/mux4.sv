`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2025 09:54:35 PM
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
    input logic IN0, IN1, IN2, IN3,
    input logic [1:0] SEL,
    output logic OUT
    );
    
    logic w02, w12;
    
    mux2 mux2_0(.in0(IN0),
               .in1(IN1),
               .sel(SEL[0]),
               .out(w02));
    mux2 mux2_1(.in0(IN2),
               .in1(IN3),
               .sel(SEL[0]),
               .out(w12));
    mux2 mux2_2(.in0(w02),
               .in1(w12),
               .sel(SEL[1]),
               .out(OUT));
    
endmodule
