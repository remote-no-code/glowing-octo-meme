module dff_tb;

logic clk, rst_n, d ,q;

dff dut(
	.clk (clk),
	.rst_n (rst_n),
	.d (d),
	.q (q)
);

always #5 clk = ~clk;

initial begin 
	$dumpfile("sim/dff.vcd");
	$dumpvars(0, dff_tb);
	clk = 0;
	rst_n = 0;
	d = 0;
	
	#12 rst_n =1;
	
	#10 d = 1;
	#10 d = 0;
	#10 d = 1;
	

	#50 $finish;
	
end
endmodule
	
