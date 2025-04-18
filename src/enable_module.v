module enable_module(E, a0, a1, a2, a3, b0, b1, b2, b3, a0_new, a1_new, a2_new, a3_new, b0_new, b1_new, b2_new, b3_new);

input E, a0, a1, a2, a3, b0, b1, b2, b3;
output a0_new, a1_new, a2_new, a3_new, b0_new, b1_new, b2_new, b3_new;

and(a0_new, E, a0);
and(a1_new, E, a1);
and(a2_new, E, a2);
and(a3_new, E, a3);

and(b0_new, E, b0);
and(b1_new, E, b1);
and(b2_new, E, b2);
and(b3_new, E, b3);

endmodule 