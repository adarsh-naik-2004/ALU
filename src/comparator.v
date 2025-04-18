module comparator #(parameter WIDTH = 4) (
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    output a_gt_b,
    output a_eq_b,
    output a_lt_b
);
    assign a_eq_b = (a == b);
    assign a_gt_b = (a > b);
    assign a_lt_b = (a < b);
endmodule