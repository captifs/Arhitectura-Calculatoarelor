`timescale 1ns / 1ps

module debouncer(
		clk,
		in,
		out
	);

parameter counter_width = 20;
parameter counter_value = 1000000;

input			clk;
input			in;
output reg	out = 0;

reg prev_in = 0;
reg[counter_width-1 : 0] counter = 0;

always @(posedge clk) begin
	if(counter == counter_value)
		out <= prev_in;
		
	if(in != prev_in)
		counter <= 0;
	else
		counter <= counter + 1;
	
	prev_in <= in;
end

endmodule
