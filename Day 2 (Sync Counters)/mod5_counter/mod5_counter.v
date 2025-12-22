module mod5_counter #(
	parameter WIDTH = 3
)(
	input wire clk, rst, en,
	output reg [WIDTH-1:0] count
);

always @(posedge clk or posedge rst) begin
	if(rst)
		count <= 3'd0;
	else if (en) begin
		if (count == 3'd4)
			count <= 3'd0;
		else 
			count <= count + 3'd1;
	end
end 
endmodule
