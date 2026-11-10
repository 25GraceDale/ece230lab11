module t_flipflop(
    input T, clock,
    output Q, notQ
);

jk_flipflop t_jk(
    .J(T),
    .K(T),
    .clock(clock),
    .Q(Q),
    .notQ(notQ)
);

endmodule