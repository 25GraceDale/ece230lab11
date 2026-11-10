module d_flipflop(
    input D,
    input clock,
    input reset,
    output reg Q, notQ
);

initial begin
    Q <= 'b0;
    notQ <= 'b1;
end
always @(posedge clock)
    Q <= D;
always @(posedge clock)
    notQ <= ~D;
always @(reset)
    Q <= 'b0;
always @(reset)
    notQ <= 'b0;

endmodule
