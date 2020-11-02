
module mux4_1_test;

	// Inputs
	reg i1;
	reg i2;
	reg i3;
	reg i4;
	reg s1;
	reg s2;

	// Outputs
	wire out;

	// Instantiate the Unit Under Test (UUT)
	mux4_1 uut (
		.out(out), 
		.i1(i1), 
		.i2(i2), 
		.i3(i3), 
		.i4(i4), 
		.s1(s1), 
		.s2(s2)
	);

	initial begin
		// Initialize Inputs
		i1 = 0;
		i2 = 0;
		i3 = 0;
		i4 = 0;
		s1 = 0;
		s2 = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        s1 = 0;
        s2 = 0;
        i1 = 1;
        #10;
        i1 = 0;
        #10;
        i2 = 1;
        #10;
        i2 = 0;
        #10;
        i3 = 1;
        #10;
        s1 = 0;
        s2 = 1;
        #10;
        s1 = 1;
        s2 = 1;
	end
      
endmodule
