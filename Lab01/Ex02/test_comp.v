module test_comp;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire lt, gt, eq;

	// Instantiate the Unit Under Test (UUT)
	comp1 uut (
		.a(a), 
		.b(b), 
		.lt(lt),
		.gt(gt),
		.eq(eq)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
		a = 0;
		b = 1;
		
		#100;
      a = 1;
		b = 0;
		
		#100;
		a = 1;
		b = 1;
		
		// Add stimulus here

	end
      
endmodule

