`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/12/2025 11:31:55 AM
// Design Name: 
// Module Name: pwm
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


module pwm(
    input logic ck, reset,
    output logic led1, led2, led3 
    );
    
    logic [7:0] numOut;
    
    always@(posedge ck) // always_ff
        if(reset) numOut <= 0;
        else if (numOut < 100) numOut <= numOut + 1;
        else numOut <= 0;
    
    always_comb
    begin
    
    if(numOut < 10) led1 <= 1;
    else led1 <= 0;
    if(numOut < 50) led2 <= 1;
    else led2 <= 0;
    if(numOut < 90) led3 <= 1;
    else led3 <= 0;
    
    end
    
    
endmodule

