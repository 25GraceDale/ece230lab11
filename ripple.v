module ripple(
    input clock,
    output [2:0] count
);

t_flipflop stage1(
    .T('b1),
    .clock(clock),
    .Q(count[0]),
    .notQ()
);
t_flipflop stage2(
    .T('b1),
    .clock(count[0]),
    .Q(count[1]),
    .notQ()
);
t_flipflop stage3(
    .T('b1),
    .clock(count[1]),
    .Q(count[2]),
    .notQ()
);

endmodule