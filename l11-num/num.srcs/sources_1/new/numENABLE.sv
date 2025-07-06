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


module numENABLE(
input logic ck,
input logic reset,
input logic en,
output logic [3:0] out
    );
    
    always_ff@(posedge ck) 
     if(reset)  out <= 4'b0000;
     else if(en) out <= out + 1;
          else out <= out;
              
         
        
      
endmodule
