module up_counter_tb;

reg clk, rst, en;
wire[3:0] count;

up_counter #(.WIDTH(4)) dut(
	.clk (clk),
	.rst (rst),
	.en (en),
	.count (count)
);

always #5 clk = ~clk;

initial begin 
	$dumpfile("sim/counter.vcd");
	$dumpvars(0,up_counter_tb);
	
	clk = 0;
	rst = 1;
	en = 0;
	
	#12 rst = 0;
	#36 rst = 1;
	#48 rst = 0;
	
	#10 en = 1;
	#40 en = 0;
	#20 en = 1;
	
	#150 $finish;
	
end 
endmodule
