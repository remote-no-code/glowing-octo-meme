module sync_down_counter #(
	parameter WIDTH = 3
)(
	input wire clk, rst, en,
	output reg [WIDTH-1:0] count
);

always @(posedge clk or posedge rst) begin
	if (rst)
		count <= {WIDTH{1'b1}};
	else if(en) begin
		if( count == {WIDTH{1'b0}})
			count <= {WIDTH{1'b1}};
		else
			count <= count - 1'b1;
	end		
end
endmodule
