module up_down_counter #(
	parameter WIDTH = 4
)(
	input wire clk, rst, en, dir,
	output reg [WIDTH-1:0] count
);

always @(posedge clk or posedge rst) begin
	if(rst)
		count <= {WIDTH{1'b0}};
	else if (en) begin
		if (dir)
			count <= count + 1'b1;
		else
			count <= count - 1'b1;
	end
end 
endmodule
