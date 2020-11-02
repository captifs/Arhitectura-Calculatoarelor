module divider(
		f,
		in,
		out
	);

parameter f_width = 32;

input [f_width-1 : 0] f;
input in;
output reg out;

reg [f_width-1 : 0] counter = 0;

always @(posedge in) begin
    out <= 0;
	counter <= counter + 1;
    
    if(counter == f) begin
        out <= 1;
        counter <= 0;
    end
end

endmodule
