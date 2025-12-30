module seq_101_mealy_fsm(
	input wire clk, rst, din,
	output reg detect
);
typedef enum logic [1:0] {
	S0, S1, S2
}state_t;

state_t current_state, next_state;

always @(posedge clk or posedge rst) begin
	if (rst)
		current_state <= S0;
	else
		current_state <= next_state;
end

always @(*) begin
	next_state = current_state;
	detect = 1'b0;

	case (current_state) 
		S0: begin
			if (din)
				next_state = S1;
		end
			
		S1: begin
			if (din)
				next_state = S1;
			else 
				next_state = S2;
		end
		
		S2: begin 
			if (din) begin
				next_state = S1;
				detect = 1'b1;
			end else
				next_state = S0;
		end
		
		default: next_state = S0;
	endcase
end
endmodule
