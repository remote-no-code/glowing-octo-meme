module seq_101_mealy_fsm_tb;

reg clk, rst, din;
wire detect;

seq_101_mealy_fsm dut(
	.clk (clk),
	.rst (rst),
	.din (din),
	.detect (detect)
);

always #5 clk = ~clk;

initial begin
	$dumpfile("sim/seq_101_mealy.vcd");
	$dumpvars(0, seq_101_mealy_fsm_tb);
	
	clk = 0;
	rst = 1;
	din = 0;
	
	#10 rst = 0;
	
	#10 din = 1;
	#10 din = 0;
	#10 din = 1;
	#10 din = 0;
	#10 din = 1;
	
	#50 $finish;
	
end

endmodule
