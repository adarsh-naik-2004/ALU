module add_sub_module #(parameter WIDTH = 4) (
    input M, 
    input [WIDTH-1:0] a,
    input [WIDTH-1:0] b,
    output [WIDTH-1:0] s,
    output carry,
    output overflow
);
    wire [WIDTH:0] c;
    assign c[0] = M;
    
    genvar i;
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin: adder_chain
            wire b_xor;
            xor(b_xor, b[i], M);
            full_adder_module fa(
                .a(a[i]),
                .b(b_xor),
                .carry_in(c[i]),
                .sum(s[i]),
                .carry_out(c[i+1])
            );
        end
    endgenerate
    
    assign carry = c[WIDTH];
    assign overflow = c[WIDTH] ^ c[WIDTH-1]; 
endmodule