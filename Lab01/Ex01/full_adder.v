module half_adder(
    output sum,
    output c_out,   // carry out
    input  a,
    input  b);

xor X1 (sum,a,b);
and A1 (c_out,a,b);

endmodule

module full_adder(
    output sum,
    output c_out,   // carry out
    input  a,
    input  b,
    input  c_in);    // carry in
    

//1a. descriere structurala

half_adder h1 (s1, c1, a, b);
half_adder h2 (sum, c2, c_in, s1);
or (c_out,c1,c2);

//1b. ecuatia logica
/*
assign sum   = a ^ b ^ c_in;
assign c_out = ( (a ^ b) && c_in ) || (a && b);
*/
//1c. implementare folosind operatori
/*
assign {c_out,sum} = a + b + c_in;
*/

endmodule
