`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2025 10:18:20 PM
// Design Name: 
// Module Name: mux2_2
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


module mux2_2(
    input logic sel,
    input logic [1:0] in0, in1,
    output logic [1:0] out
    );
    
    always_comb
    
    if (sel) out = in1;
    else out = in0;
        
endmodule
