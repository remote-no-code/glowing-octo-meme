module tff_tb;

reg clk, rst, t;
wire q, qbar;

tff dut(
	.clk (clk),
	.rst (rst),	
	.t (t),
	.q (q),
	.qbar (qbar)
);

always #5 clk = ~clk;

initial begin 
	$dumpfile("sim/tff.vcd");
	$dumpvars(0, tff_tb);
	clk = 0;
	rst =1;
	t = 0;
	
	#13 rst = 0;
	
	#8 t = 0;
	#8 t = 1;
	#8 t = 0;
	
	#60 $finish;

end 
endmodule
	
