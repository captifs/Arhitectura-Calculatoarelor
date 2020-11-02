module multiplier_test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire [7:0] prod;

	// Instantiate the Unit Under Test (UUT)
	multiplier uut (
		.prod(prod), 
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
        a = 9;
        b = 0;
        #10;
        a = 13;
        b = 1;
        #10;
        a = 0;
        b = 4;
        #10;
        a = 1;
        b = 5;
        #10;
        a = 15;
        b = 15;
	end
      
endmodule
