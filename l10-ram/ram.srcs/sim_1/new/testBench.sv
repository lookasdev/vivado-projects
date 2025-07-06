`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 11:51:42 AM
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
    logic Sck, Swe;
    logic [6:0] Sadr;
    logic [7:0] SdataIn;
    logic [7:0] SdataOut;
    
    ram dut(
        .ck(Sck),
        .we(Swe),
        .adr(Sadr),
        .dataIn(SdataIn),
        .dataOut(SdataOut)
        );
        
        
     initial begin
        Sck = 0;
        forever begin
           #10 Sck = ~Sck; 
        end
     end
     
     initial begin
        Swe = 0;
        Sadr = 0;
        SdataIn = 0;
        
        @(negedge Sck);
        # 5 Swe = 1; Sadr = 3; SdataIn = 13;
        # 10 Swe = 0;
        
        @(negedge Sck);
        # 5 Swe = 1; Sadr = 4; SdataIn = 14;
        # 10 Swe = 0;

        @(negedge Sck);
        # 5 Swe = 1; Sadr = 5; SdataIn = 15;
        # 10 Swe = 0;

        @(negedge Sck);
        @(negedge Sck);
        @(negedge Sck);
        # 5 Sadr = 4;
        # 10
        
        @(negedge Sck);
        # 5 Sadr = 5;
        # 10
        
        @(negedge Sck);
        # 5 Sadr = 3;
        # 10
        
        # 20 $stop;
        end
endmodule
