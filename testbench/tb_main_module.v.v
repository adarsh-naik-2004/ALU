`include "main_module.v"

module testbench_adder;

reg s0, s1, a0, a1, a2, a3, b0, b1, b2, b3;
wire s0_as, s1_as, s2_as, s3_as, carry_as, a_gt_b, a_eq_b, a_st_b, ab_0, ab_1, ab_2, ab_3;

main_module uut1 (
    .s0(s0), .s1(s1), .a0(a0), .a1(a1), .a2(a2), .a3(a3),
    .b0(b0), .b1(b1), .b2(b2), .b3(b3),
    .s0_as(s0_as), .s1_as(s1_as), .s2_as(s2_as), .s3_as(s3_as),
    .carry_as(carry_as), .a_gt_b(a_gt_b), .a_eq_b(a_eq_b),
    .a_st_b(a_st_b), .ab_0(ab_0), .ab_1(ab_1), .ab_2(ab_2), .ab_3(ab_3)
);

initial
    begin

    $dumpfile("adder.vcd");
    $dumpvars(0);

    s0 = 1'b0; s1 = 1'b0;

    // Demonstrating Addition

    a0 = 1'b1; a1 = 1'b0; a2 = 1'b1; a3 = 1'b0;
    b0 = 1'b1; b1 = 1'b0; b2 = 1'b0; b3 = 1'b1;
    #10
    a0 = 1'b1; a1 = 1'b0; a2 = 1'b0; a3 = 1'b1;
    b0 = 1'b0; b1 = 1'b1; b2 = 1'b1; b3 = 1'b0;
    #10
    a0 = 1'b1; a1 = 1'b1; a2 = 1'b0; a3 = 1'b0;
    b0 = 1'b0; b1 = 1'b1; b2 = 1'b0; b3 = 1'b0;
    #10
    a0 = 1'b1; a1 = 1'b1; a2 = 1'b0; a3 = 1'b1;
    b0 = 1'b1; b1 = 1'b0; b2 = 1'b1; b3 = 1'b0;
    #10 //Ignore below test case
    a0 = 1'b1; a1 = 1'b1; a2 = 1'b0; a3 = 1'b1;
    b0 = 1'b1; b1 = 1'b0; b2 = 1'b1; b3 = 1'b0;
    end
endmodule
