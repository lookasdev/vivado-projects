module door_counter(
    input  logic ck,
    input  logic reset,
    input  logic en,
    output logic [1:0] outNum
);

    always_ff @(posedge ck) begin
        if (reset) begin
            outNum <= 2'b00;
        end else begin
            if (en) begin
                outNum <= outNum + 1;
            end else if (!en) begin
                outNum <= 2'b00;
            end
        end
    end

endmodule
