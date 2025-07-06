module decoder_1_hot (
    input  logic [2:0] in,    // 3-bit input (valori între 0 ?i 7)
    output logic [7:0] out    // 1-hot output
);

    always_comb begin
        out = 8'b00000000;    // default: toate ie?irile 0
        out[in] = 1'b1;       // doar bitul corespunz?tor indexului e 1
    end

endmodule
