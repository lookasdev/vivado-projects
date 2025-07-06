module freq_div(
    input logic clock,
    input logic reset,
//    output logic clkout1,
    output logic clkout2
//    output logic clkout4,
//    output logic clkout8,
);

logic [26:0] count;

always_ff @(posedge clock) begin
    if(reset == 1)
        count <= 0;
    else
        count <= count + 1;  
end

//assign clkout1 = count[26];
assign clkout2 = count[25]; // 1.5hz
//assign clkout4 = count[24];
//assign clkout8 = count[23];

endmodule