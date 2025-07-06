`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 11:45:43 AM
// Design Name: 
// Module Name: testBench
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


module testBench(

    );
    logic sCK, sRESET, sEN;
    logic [3:0] sOUT;
    numENABLE dut(
        .ck(sCK),
        .reset(sRESET),
        .en(sEN),
        .out(sOUT)
        );
    
    initial begin
        sCK = 0;
        forever begin
           #10 sCK = ~sCK; 
        end
     end
     
     
     
     
     initial begin
     
     sRESET = 0;
     sEN = 0;
     
     @(negedge sCK);
     #5 sRESET = 1;
     #10 sRESET = 0;
     
     @(negedge sCK);
     #60
     @(negedge sCK);
     #5 sEN = 1;
     #360 sEN = 0;
     #40 $stop;
     
     
     end
    
endmodule
