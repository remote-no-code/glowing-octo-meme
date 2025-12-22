module mod5_counter_tb;

reg clk, rst, en;
wire [2:0] count;

mod5_counter dut(
	.clk (clk),
	.rst (rst),
	.en (en),
	.count (count)
);

always #5 clk = ~clk;

initial begin
	$dumpfile("sim/mod5_counter.vcd");
	$dumpvars(0,mod5_counter_tb);
	
	clk = 0;
	rst = 1;
	en = 0;
	
	
	#10 rst = 0;
	#10 en = 1;
	
	#60 en = 0;
	#20 en = 1;
	
	#150 $finish;
	
end 

endmodule
