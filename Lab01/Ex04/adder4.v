/** Full adder can be also copied here, instead of importing it inside the project*/
module full_adder(
    output sum,
    output c_out,   // carry out
    input  a,
    input  b,
    input  c_in);    // carry in
    
	assign {c_out,sum} = a + b + c_in;

endmodule


module adder4(
	output [4:0] sum,	      //an extra bit for the 'carry'
    input  [3:0] a, b);       //operands

//a.
	full_adder ADD1 (sum[0], c_in1,a[0],b[0],'b0);
	full_adder ADD2 (sum[1], c_in2,a[1],b[1],c_in1);
	full_adder ADD3 (sum[2], c_in3,a[2],b[2],c_in2);
	full_adder ADD4 (sum[3],sum[4],a[3],b[3],c_in3);

//b.
	//assign sum = a + b;
endmodule
