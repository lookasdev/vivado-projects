`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/05/2025 11:26:18 AM
// Design Name: 
// Module Name: num
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


module num(
input logic ck,
input logic reset,
//output logic [31:0] outNum,
output logic [6:0] out
    );
    
    logic [31:0] outNum; // ca sa nu mai apara la pini
    
    
    always_ff@(posedge ck) begin
     if(reset) begin
      outNum <= 0;
     end
     else begin
      outNum <= outNum + 1;
     end
    end
      
    // afisor 7 segmente
    
    always_comb begin
    case(outNum[29:26])
      4'd0: out = 7'b1000000;
      4'd1: out = 7'b1111001;
      4'd2: out = 7'b0100100;
      4'd3: out = 7'b0110000;
      4'd4: out = 7'b0011001;
      4'd5: out = 7'b0010010;
      4'd6: out = 7'b0000010;
      4'd7: out = 7'b1111000;
      default: out = 7'b0000110;
    endcase 
  end
      
      
      
endmodule
