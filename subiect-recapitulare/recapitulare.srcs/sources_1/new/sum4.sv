`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2025 03:27:02 PM
// Design Name: 
// Module Name: sum4
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


module sum4(
input logic [3:0]a, b,
input logic en,
output logic [3:0] out,
output logic cout
    );
    always_comb
    if(en)
        {cout, out} = a + b;
    else begin
        out = 0;
        cout = 0;
    end
endmodule
