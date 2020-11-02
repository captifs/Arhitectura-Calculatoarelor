module ual(
    input [3:0] a,
    input [3:0] b,
    output [7:0] ual_out,
    input sel
    );

wire [4:0] sum;
wire [7:0] prod;

adder4 		ADD4 ( sum,a,b);
multiplier  MUL4 (prod,a,b);

assign ual_out = sel ? prod : {3'b0,sum};
endmodule
