module sync_down_counter_tb;

reg clk, en, rst;
wire [2: 0] count;

sync_down_counter #(.WIDTH(3)) dut (
	.clk (clk),
	.rst (rst),
	.en (en),
	.count (count)
);

always #5 clk = ~clk;

initial begin
	$dumpfile("sim/down_counter.vcd");
	$dumpvars(0, sync_down_counter_tb);
	
	clk = 0;
	rst = 1;
	en = 0; 
	
	#10 rst = 0;
	#10 en = 1;
	
	#60 en = 0;
	#20 en = 1;
	
	#100 $finish;
	
end

endmodule
