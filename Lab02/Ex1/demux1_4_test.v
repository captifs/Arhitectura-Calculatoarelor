module demux1_4_test;

	// Inputs
	reg in;
	reg [1:0] sel;

	// Outputs
	wire out1;
	wire out2;
	wire out3;
	wire out4;

	// Instantiate the Unit Under Test (UUT)
	demux1_4 uut (
		.in(in), 
		.sel(sel), 
		.out1(out1), 
		.out2(out2), 
		.out3(out3), 
		.out4(out4)
	);

	initial begin
		// Initialize Inputs
		in = 0;
		sel = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		in = 1;
		sel = 2;
		
		#10;
		sel = 3;
		
		#10;
		in = 0;
		
		#10;
		sel = 1;
		
		#10;
		in = 1;
	end
      
endmodule

