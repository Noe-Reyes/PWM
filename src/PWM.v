module PWM 
	
	(
		input clk,			//System Clock
		input reset,		//System Reset 
		input [2:0]load,	//Value of PWM
		output reg pwm			//PWM Led
	);

	reg [15:0]r_load; 
	reg [15:0]r_counter;
	reg state;
	
	always@(posedge clk or negedge reset)
		begin 
			if (reset == 1'b0)
				begin
					r_counter <= 16'b1100001101010000;
					state <= 0;
					pwm <= 1'b0;
				end
			else 
				case (state)
				0:
					begin
						pwm <= 1'b0;
						if (r_counter == r_load)
							state <= 1;
						else 
							r_counter <= r_counter - 1'b1;
					end
				1:
					begin
						pwm <= 1'b1;
						if (r_counter == 0)	
							begin
								r_counter <= 16'b1100001101010000;
								state <= 0;
							end
						else 
							r_counter <= r_counter - 1'b1;
					end
				endcase
		end
	always@(*)
		begin 
			case (load)
				0:r_load = 16'b0001001110001000;
				1:r_load = 16'b0010011100010000;
				2:r_load = 16'b0011101010011000;
				3:r_load = 16'b0100111000100000;
				4:r_load = 16'b0110000110101000;
				5:r_load = 16'b0111010100110000;
				6:r_load = 16'b1000100010111000;
				7:r_load = 16'b1001110001000000;
			endcase
	end
endmodule
