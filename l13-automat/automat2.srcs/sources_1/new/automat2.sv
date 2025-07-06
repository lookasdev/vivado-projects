`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/19/2025 11:44:58 AM
// Design Name: 
// Module Name: automat
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


module automat2( // fsm = finite state machine
    input logic ck,
    input logic [2:0] etaj_curent, etaj_cerut,
    input logic reset,
    input logic [1:0] door_cnt_val,
    output logic door_cnt_en,
    output logic sus,
    output logic jos
);

//Se asociaza sirurilor de biti folositi pentru codarea starilor nume ce pot fi folosite mai usor in cod.
//La compilare, numele vor fi inlocuite in cod cu numerele asociate la inceput.
localparam STATE_IDLE = 5'b00001;
localparam STATE_DOOR_CLOSE = 5'b00010;
localparam STATE_DOOR_OPEN = 5'b00100;
localparam STATE_MOVE_UP = 5'b01000;
localparam STATE_MOVE_DOWN = 5'b10000;

//logic [1:0] state, state_next;
logic [4:0] state;

// spatiul starilor clc + reg - secvential

//registrul de stare
always_ff @(posedge ck)
    if (reset) state <= STATE_IDLE;
    else case (state)
            STATE_IDLE: if (etaj_curent != etaj_cerut) state <= STATE_DOOR_CLOSE;
                        else state <= STATE_IDLE;
                         
            STATE_DOOR_CLOSE: if (door_cnt_val == 3 && (etaj_curent < etaj_cerut)) state <= STATE_MOVE_DOWN;
                       else if(door_cnt_val == 3 && (etaj_curent > etaj_cerut)) state <= STATE_MOVE_UP;
                       else state <= STATE_DOOR_CLOSE;
            STATE_MOVE_UP: if (etaj_curent == etaj_cerut) state <= STATE_DOOR_OPEN;
                         else state <= STATE_MOVE_UP;
            STATE_MOVE_DOWN: if (etaj_curent == etaj_cerut) state <= STATE_DOOR_OPEN;
                         else state <= STATE_MOVE_DOWN;
            STATE_DOOR_OPEN: if(door_cnt_val == 3) state <= STATE_IDLE;
                             else state <= STATE_DOOR_OPEN;
            
            default: state <= STATE_IDLE; // ce se intampla in celelalte cazuri - inafara domeniului nostru
         endcase
         
// spatiul out: clc_out - combinational

//circuit combinational pentru calculul starii urmatoare
always_comb
    case(state)
        STATE_IDLE: begin door_cnt_en = 0; sus = 0; jos = 0; end
        STATE_DOOR_CLOSE: begin door_cnt_en = 1; sus = 0; jos = 0; end
        STATE_DOOR_OPEN: begin door_cnt_en = 1; sus = 0; jos = 0; end
        STATE_MOVE_UP: if(etaj_curent != etaj_cerut) begin door_cnt_en = 0; sus = 1; jos = 0; end
        STATE_MOVE_DOWN: if(etaj_curent != etaj_cerut) begin door_cnt_en = 0; sus = 0; jos = 1; end

        default: begin door_cnt_en = 0; sus = 0; jos = 0; end
    endcase

//circuit combinational pentru calculul iesirilor
//assign detectOk   = (state == STATE_READ0) || (state == STATE_READ1);
//assign detectFail = (state == STATE_ERROR);

endmodule

