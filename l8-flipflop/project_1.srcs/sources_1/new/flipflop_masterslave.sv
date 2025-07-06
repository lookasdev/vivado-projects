`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/14/2025 12:09:56 PM
// Design Name: 
// Module Name: flipflop_masterslave
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


module flipflop_masterslave(
    input logic D, CK,
    output logic QFF
    );
    
    logic wLatch_0;
    
    latch latch_0(
        .D(D),
        .CK(CK), // .CK(~CK), -> activare pe front crescator
        .Q(wLatch_0)
    );
    latch latch_1(
        .D(wLatch_0),
        .CK(~CK), // .CK(CK), -> activare pe front crescator
        .Q(QFF)
    );

endmodule
