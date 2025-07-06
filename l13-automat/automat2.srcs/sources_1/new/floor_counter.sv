module floor_counter(
    input  logic ck,
    input  logic reset,
    input  logic sus,
    input  logic jos,
    output logic [2:0] outNum
);

    always_ff @(posedge ck) begin
        if (reset) begin
            outNum <= 3'b000;
        end else begin
            if (sus && !jos) begin
                outNum <= outNum + 1;
            end else if (!sus && jos) begin
                outNum <= outNum - 1;
            end
            // daca sus==jos, nu se schimba valoarea
        end
    end

endmodule
