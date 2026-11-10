module top(
    input btnU, btnC,
    output [6:0] led
);

ripple rip(
    .clock(btnC),
    .count(led[2:0])
);
modulo mod(
    .reset(btnU),
    .clock(btnC),
    .count(led[5:3]),
    .out(led[6])
);

endmodule