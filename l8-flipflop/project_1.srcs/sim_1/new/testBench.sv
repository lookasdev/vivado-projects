`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2025 11:42:08 AM
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
//    logic D, CK;
//    logic Q;
    
//    latch dut(
//        .D(D),
//        .CK(CK),
//        .Q(Q)
//    );
    
    
//    flipflop_masterslave dut(
//        .D(D),
//        .CK(CK),
//        .QFF(Q)
//        );
    
//    initial begin
//        CK = 0;
//        forever #30 CK = ~CK;
//    end
    

//    initial begin
//    D = 0;
//    #70 D = 1;
//    #10 D = 0;
    
//    #20 D = 1;
//    #10 D = 0;
    
//    #20 D = 1;
//    #70 D = 0;
    
//    #10
    
//    #60
    
//    #20
    
//    D = 1;
//    #10 D = 0;
    
//    #60 $stop;
//    end
    
    
    
//    logic A, B, OUT1, OUT2;
    logic A, B, Q1, Q2;
    
    hazard dut(
        .a(A),
        .b(B),
        .Q1(Q1),
        .Q2(Q2)
        );
    
    logic ck;
    
    initial begin
        ck = 0;
        forever #30 ck = ~ck;
    end
    
    initial begin
        A = 0;
        B = 0;
        #12 B = 1;
        #8 $stop;
    end
endmodule
