`include "add_sub_module.v"
`include "and_module.v"
`include "comparator.v"
`include "decoder_module.v"
`include "enable_module.v"
`include "full_adder_module.v"

module main_module(s0, s1, a0, a1, a2, a3, b0, b1, b2, b3, s0_as, s1_as, s2_as, s3_as, carry_as, a_gt_b ,a_eq_b, a_st_b, ab_0, ab_1, ab_2, ab_3);

    input s1, s0, a0, a1, a2, a3, b0, b1, b2, b3;
    output s0_as, s1_as, s2_as, s3_as, carry_as; //Output for ADD/SUB block
    output a_gt_b, a_st_b, a_eq_b; //Output for comparator block
    output ab_0, ab_1, ab_2, ab_3; //Output for AND Blocks

    wire d0, d1, d2, d3;
    decoder_module utt1(s1, s0, d0, d1, d2, d3);

    wire temp, a0_as, a1_as, a2_as, a3_as, b0_as, b1_as, b2_as, b3_as;
    or(temp, d0, d1);

    enable_module enable_block1(temp, a0, a1, a2, a3, b0, b1, b2, b3, a0_as, a1_as, a2_as, a3_as, b0_as, b1_as, b2_as, b3_as);
    add_sub_module adder_sub1(d1, a0_as, a1_as, a2_as, a3_as, b0_as, b1_as, b2_as, b3_as, s0_as, s1_as, s2_as, s3_as, carry_as);

    wire a0_c, a1_c, a2_c, a3_c, b0_c, b1_c, b2_c, b3_c;
    enable_module enable_block2(d2, a0, a1, a2, a3, b0, b1, b2, b3, a0_c, a1_c, a2_c, a3_c, b0_c, b1_c, b2_c, b3_c);
    comparator comp1(a0_c, b0_c, a1_c, b1_c, a2_c, b2_c, a3_c, b3_c, a_gt_b, a_eq_b, a_st_b);

    wire a0_and, a1_and, a2_and, a3_and, b0_and, b1_and, b2_and, b3_and;
    enable_module enable_block3(d3, a0, a1, a2, a3, b0, b1, b2, b3, a0_and, a1_and, a2_and, a3_and, b0_and, b1_and, b2_and, b3_and);
    and_module andblock1(a0_and, a1_and, a2_and, a3_and, b0_and, b1_and, b2_and, b3_and, ab_0, ab_1, ab_2, ab_3);

endmodule