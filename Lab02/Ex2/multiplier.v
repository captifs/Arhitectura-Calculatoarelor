module multiplier(
	output reg [7:0] prod,
	input      [3:0] a,
	input      [3:0] b);
	
	reg [2:0] i;
	
	always@(*) begin : prod_block
		prod =0;
		
		for(i = 0; i < 4; i = i + 1) begin
			if ( b[i] )
				prod = prod + (a << i);
		end
	end
	
endmodule 
	
