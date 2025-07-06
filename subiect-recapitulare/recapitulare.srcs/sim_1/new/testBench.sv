`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2025 04:00:14 PM
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
logic EN_TEST; // input
logic [1:0] SEL_D_TEST; // input
logic [1:0] SEL_M_TEST; // input
logic [3:0] A_TEST; // input
logic [3:0] B_TEST; // input
logic COUT_TEST; // output
logic [3:0] OUT_TEST; // output

top dut( // device under test
    .EN(EN_TEST),
    .SEL_D(SEL_D_TEST),
    .SEL_M(SEL_M_TEST),
    .A(A_TEST),
    .B(B_TEST),
    .COUT(COUT_TEST),
    .OUT(OUT_TEST)
    );

    initial begin
        EN_TEST = 1'b1;
        SEL_D_TEST = 2'b00;
        SEL_M_TEST = 2'b00;
        A_TEST = 4'b1000;
        B_TEST = 4'b1111;
        #20 $stop;
    end

endmodule
