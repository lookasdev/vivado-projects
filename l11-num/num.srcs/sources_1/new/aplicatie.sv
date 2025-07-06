`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 11:26:18 AM
// Design Name: 
// Module Name: num
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


module aplicatie(
input logic ck,
input logic reset,
output logic f26, f25, f24, f23, f22, f21
    );
    
    logic [31:0] out;
    
    always_ff@(posedge ck) begin
     if(reset) begin
      out <= 0;
     end
     else begin
      out <= out + 1;
     end
    end
    
    
    assign f26 = out[26];
    assign f25 = out[25];
    assign f24 = out[24];
    assign f23 = out[23];
    assign f22 = out[22];
    assign f21 = out[21];
    
endmodule
