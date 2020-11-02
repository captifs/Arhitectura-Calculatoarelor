`timescale 1ns / 1ps
module trecere_test;

	// Inputs
	reg clk;

	// Outputs
	wire p_rosu;
	wire p_verde;
	wire m_rosu;
	wire m_galben;
	wire m_verde;

	// Instantiate the Unit Under Test (UUT)
	trecere uut (
		.p_rosu(p_rosu), 
		.p_verde(p_verde), 
		.m_rosu(m_rosu), 
		.m_galben(m_galben), 
		.m_verde(m_verde), 
		.clk(clk)
	);

	initial begin
		// Initialize Inputs
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	end
    
    always #10 clk = !clk;
      
endmodule
