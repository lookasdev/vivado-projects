module freq_div_corect (
    input  logic clk,
    input  logic reset,
    output logic out
);

    // Pentru 0.25s HIGH + 0.25s LOW = 0.5s perioad? complet?
    parameter LIMIT_PERIOD = 25_000_000;

    logic [24:0] counter;  // suficient pentru 25 milioane
    logic toggle;

    // Contor pân? la limit?
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            counter <= 0;
        else if (counter == LIMIT_PERIOD - 1)
            counter <= 0;
        else
            counter <= counter + 1;
    end

    // Flip-flop: semnalul de ie?ire se inverseaz? la atingerea limitei
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            toggle <= 0;
        else if (counter == LIMIT_PERIOD - 1)
            toggle <= ~toggle;
    end

    assign out = toggle;

endmodule
