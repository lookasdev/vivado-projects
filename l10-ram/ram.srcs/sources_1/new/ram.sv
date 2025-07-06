`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/28/2025 11:31:37 AM
// Design Name: 
// Module Name: ram
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


module ram( // 128 x 8
    input logic ck,
    input logic we, // 1
    input logic [6:0] adr,
    input logic [7:0] dataIn,
    output logic [7:0] dataOut
    );
    
    // declararea memoriei 128 x 8
    logic [7:0] ram [0:127];
    
    // scriere sincrona
    always_ff@(posedge ck)
     if(we) // activ pe 1 (aici)
      ram[adr]     <= dataIn;
    // pas intermediar: se inscrie in memorie inainte sa ajunga la dataOut
    
    // citire asincrona
    assign dataOut = ram[adr];
    
    
endmodule
