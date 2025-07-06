module testBench();

logic  Sck;
logic  Sreset;
logic  [1:0] Sin;
logic Sciocolata;

automat2 dut(
    .ck(Sck),
    .reset(Sreset),
    .in(Sin),
    .ciocolata(Sciocolata)
);

initial begin
    Sck = 0;
    forever #1 Sck = ~Sck;
end

initial begin
    Sin <= 2'b00;
    Sreset <= 1;
        
    #2  Sreset <= 0;
    

    #2	Sin <= 2'b10;
    #2	Sin <= 2'b10;
    #2	Sin <= 2'b00;
    #2	Sin <= 2'b10;
    #2	Sin <= 2'b00;
//    #10 Sin <= 2'b01;
//    #5	Sin <= 2'b01;
    
    #10 $stop();
end


   
endmodule