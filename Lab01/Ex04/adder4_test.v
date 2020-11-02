
module adder4_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [4:0] sum;

	// Instantiate the Unit Under Test (UUT)
	adder4 uut (
		.sum(sum), 
		.a(a), 
		.b(b) 
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;


		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        a = 3;
        b = 5;

        #10;
        a = 10;
        b = 7;

        #10;
        b = 3;
        a = 8;

	end
      
endmodule
