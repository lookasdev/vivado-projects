`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/25/2025 06:49:47 PM
// Design Name: 
// Module Name: TOP
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


module TOP(
    input logic [2:0] etaj_cerut_t,
    input logic reset_t,
    input logic clock_t,
    output logic [7:0] out_t
    );
    
    logic w_clkout2, w_sus, w_jos, w_door_cnt_en;
    logic [7:0] w_out_floor;
    logic [1:0] w_out_door;
    logic [9:0] w_count;
    
    freq_div freq_div_inst1(
    .clock(clock_t),
    .reset(reset_t),
    //.clkout2(w_clkout2)
    .count(w_count)
    );
    
    floor_counter floor_counter_inst1(
    .ck(w_count[5]),
    .reset(reset_t),
    .sus(w_sus),
    .jos(w_jos),
    .outNum(w_out_floor)
    );
    
    door_counter door_counter_inst1(
    .ck(w_count[5]),
    .reset(reset_t),
    .en(w_door_cnt_en),
    .outNum(w_out_door)
    );
    
    
    decoder_1_hot decoder_1_hot_inst1(
    .in(w_out_floor),
    .out(out_t)
    );
    
    automatLift automatLift_inst1(
    .ck(w_count[5]),
    .etaj_curent(w_out_floor),
    .etaj_cerut(etaj_cerut_t),
    .reset(reset_t),
    .door_cnt_val(w_out_door),
    .door_cnt_en(w_door_cnt_en),
    .sus(w_sus),
    .jos(w_jos)
    );
    
    
endmodule
