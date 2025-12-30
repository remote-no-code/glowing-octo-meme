module seq_101_fsm (
	input wire clk, rst, din, 
	output reg detect
);

typedef enum logic [1:0] {
	S0, S1, S2, S3
} state_t;

state_t current_state, next_state;

always @(posedge clk or posedge rst) begin
	if (rst) 
		current_state <= S0;
	else 
		current_state <= next_state;
end 

always @(*) begin
	case(current_state)
		S0: begin
			if (din) 
				next_state = S1;
			else 
				next_state = S0;
		end
		
		S1: begin if (din) next_state = S1;
			else next_state = S2;
		end
		
		S2: begin 
			if (din) 
				next_state = S3; 
			else
				next_state = S0;
		end
		S3: begin
			if (din) 
				next_state = S1;
			else 
				next_state = S0;
		end
		default: next_state = S0;
	endcase
end

always @(*) begin
	detect = (current_state == S3);
end


endmodule
