`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2025 09:58:31 PM
// Design Name: 
// Module Name: demux4
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


module demux4(
input logic in,
input logic [1:0] sel,
output logic [3:0] out
    );
    always_comb begin
        out = 4'b0000;
        if (in == 1)
            case (sel)
                2'b00: out[0] = 1;
                2'b01: out[1] = 1;
                2'b10: out[2] = 1;
                2'b11: out[3] = 1;
                default: out = 4'b0000;
            endcase
        else
            out = 4'b0000;
    end

endmodule
