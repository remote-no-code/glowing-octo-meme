module tff(
	input wire t, clk, rst,
	output reg q, 
	output wire qbar 
);

always @(posedge clk or posedge rst) begin
	if(rst) 
		q <= 1'b0;
	else 
		q <= t ^ q;
end
assign qbar = ~q ;
endmodule
