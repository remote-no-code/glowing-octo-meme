module up_down_counter_tb;

reg clk, rst, en, dir;
wire [3:0] count;

up_down_counter #(.WIDTH(4)) dut(
	.clk (clk),
	.rst (rst),
	.en (en),
	.dir (dir),
	.count (count)
);

always #5 clk = ~clk;

initial begin
	$dumpfile("sim/up_down_counter.vcd");
	$dumpvars(0, up_down_counter_tb);
	
	clk = 0;
	rst = 1;
	en = 0;
	dir = 0;
	
	#10 rst = 0;
	#10 en = 1;
	
	#50 dir = 1;
	#40 en = 0;
	#20 en = 1;
	
	#150 $finish;
	
end
endmodule
	
	
