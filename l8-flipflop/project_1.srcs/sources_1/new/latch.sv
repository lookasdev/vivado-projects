`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2025 11:32:09 AM
// Design Name: 
// Module Name: latch
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


module latch(
    input logic D, CK,
    output logic Q
    );
    
//    logic wAnd4_0, wAnd4_1;
//    and4 and4_0(
//        .in0(~CK),
//        .in1(Q),
//        .out(wAnd4_0)
//        );
//    and4 and4_1(
//        .in0(D),
//        .in1(CK),
//        .out(wAnd4_1)
//        );
//    or4 or4_0(
//        .in0(wAnd4_0),
//        .in1(wAnd4_1),
//        .out(Q)
//        );
        
    assign Q = (D & CK) | ((~CK) & Q);
endmodule
