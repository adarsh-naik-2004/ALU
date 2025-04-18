module full_adder_module(a, b, carry_in, sum, carry_out);
input a, b, carry_in;
output sum, carry_out;
wire t1, t2, t3;

xor(t1, a, b);
and(t2, a, b);
and(t3, t1, carry_in);
or(carry_out, t2, t3);
xor(sum, t1, carry_in);

endmodule