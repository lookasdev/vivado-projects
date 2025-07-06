module freq_div(
    input logic clock,
    input logic reset,
    //output logic clkout2
    output logic [9:0] count
);

// logic [9:0] count;

always_ff @(posedge clock) begin
    if(reset == 1)
        count <= 0;
    else
        count <= count + 1;  
end

// assign clkout2 = count[5]; // 1.5Mhz
// assign clkout3 = count[25]; // 1.5hz
endmodule