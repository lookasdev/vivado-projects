`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2025 07:05:28 PM
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
    
    logic [2:0] S_etaj_cerut_t; // in
    logic S_reset_t; // in
    logic S_clock_t; // in
    logic [7:0] S_out_t; // out
    
    TOP dut(
    .etaj_cerut_t(S_etaj_cerut_t),
    .reset_t(S_reset_t),
    .clock_t(S_clock_t),
    .out_t(S_out_t)
    );
    
    initial begin
        S_clock_t = 0;
        forever begin
            #5 S_clock_t = ~S_clock_t; // perioada 10
        end
    end
    
    initial begin
        
        @(negedge S_clock_t);
        # 3 S_reset_t = 1;
        # 4 S_reset_t = 0;
        
        @(negedge S_clock_t);
        # 3 S_etaj_cerut_t = 5;
        
        // # 4 S_etaj_cerut_t = 0;
        # 1000000 $stop;
    end
    
endmodule
