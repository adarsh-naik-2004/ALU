module decoder_module(s1, s0, d0, d1, d2, d3);

    input s1, s0;
    output d0, d1, d2, d3;
    
    wire s1_not, s0_not;
    not(s1_not, s1);
    not(s0_not, s0);

    and(d0, s1_not, s0_not);
    and(d1, s1_not, s0);
    and(d2, s1, s0_not);
    and(d3, s1, s0);

endmodule