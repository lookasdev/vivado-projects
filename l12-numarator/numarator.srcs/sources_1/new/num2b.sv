`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2025 12:41:32 PM
// Design Name: 
// Module Name: num2b
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


module num2b(
    input logic ck, reset,
    output logic [1:0] out
    
    );
    
    always@(posedge ck)
        if(reset) out <= 0;
        else out <= out + 1;
    
endmodule
