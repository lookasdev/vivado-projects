`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2025 12:37:15 PM
// Design Name: 
// Module Name: hazard
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


module hazard(
    input logic a, b, ck,
    output logic Q1, Q2 // ,out1, out2
    );
    
    
    assign #1 out1 = ~(a | b);
    assign #1 out2 = (out1 & b);
    
    logic D1, D2;
    assign D1 = out1;
    assign D2 = out2;
    
    always_ff@(posedge ck) begin
        Q1 <= D1;
        Q2 <= D2;
    end
endmodule
