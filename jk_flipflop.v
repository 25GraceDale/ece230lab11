module jk_flipflop(
    input J, K, clock,
    output reg Q, notQ
);

initial begin
    Q <= 'b0;
    notQ <= 'b1;
end
always @(posedge clock)
    Q <= (notQ & J)|(Q & ~(K));
always @(posedge clock)
    notQ <= ~((notQ & J)|(Q & ~(K)));

endmodule