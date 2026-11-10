module modulo(
    input reset, clock,
    output [2:0] count,
    output out
);

wire [2:0] YD;
wire [2:0] counter;
wire C12, C23, reset_trigger;

full_adder stage1add(
    .A(counter[0]),
    .B(clock),
    .Cin('b0),
    .Y(YD[0]),
    .Cout(C12)
);
d_flipflop stage1store(
    .D(YD[0]),
    .clock(clock),
    .Q(counter[0]),
    .notQ(),
    .reset(reset)
);
full_adder stage2add(
    .A(counter[1]),
    .B('b0),
    .Cin(C12),
    .Y(YD[1]),
    .Cout(C23)
);
d_flipflop stage2store(
    .D(YD[1]),
    .clock(clock),
    .Q(counter[1]),
    .notQ(),
    .reset(reset)
);
full_adder stage3add(
    .A(counter[2]),
    .B('b0),
    .Cin(C23),
    .Y(YD[2]),
    .Cout()
);
d_flipflop stage3store(
    .D(YD[2]),
    .clock(clcok),
    .Q(counter[2]),
    .notQ(),
    .reset(reset)
);
assign count[0] = counter[0];
assign count[1] = counter[1];
assign count[2] = counter[2];
assign reset_trigger = (~(counter[0]))&(counter[1])&(counter[2]);
d_flipflop final(
    .D(reset_trigger),
    .clock(clock),
    .Q(out),
    .notQ(),
    .reset(reset)
);

endmodule