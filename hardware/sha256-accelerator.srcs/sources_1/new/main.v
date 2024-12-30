`timescale 1ns / 1ps

module main();
    wire [511:0] msg;
    wire [2047:0] mss;

    prepare_message_schedule pms(msg, mss);
endmodule

module prepare_message_schedule(
    input clk,
    input [(16 * 32) - 1:0] padded_message,
    output reg [(64 * 32) - 1:0] message_schedule
);
    integer step;

    always @ (posedge clk) begin
        if(step == 0) begin
            message_schedule[(64 * 32) - 1 -:(16 * 32)] = padded_message;
            
            step = step + 1;
        end else begin
            message_schedule[((64 - 16 - step - 1) * 32) - 1 -: 32] = 
                prepare_message_schedule_step(message_schedule, step - 1);
                
            step = step + 1;
        end
	end
	
	function [31:0] prepare_message_schedule_step(
	   input [(64 * 32) - 1:0] schedule,
	   input [31:0] step
	);
        begin
           prepare_message_schedule_step = 
            ssig1(schedule[((48 - step + 2) * 32) - 1 -: 32])
                + schedule[((48 - step + 7) * 32) - 1 -: 32]
                + ssig0(schedule[((48 - step + 15) * 32) - 1 -: 32])
                + schedule[((48 - step + 16) * 32) - 1 -: 32];
        end
	endfunction
	
	//==============================================================================================
	// Basic functions.
	//==============================================================================================
	
	function [31:0] ch(
	   input [31:0] x, y, z
	);
	   begin
	       ch = (x & y) ^ ((!x) & z);
	   end
	endfunction
	
	function [31:0] maj(
	   input [31:0] x, y, z
	);
	   begin
	       maj = (x & y) ^ (x & z) ^ (y & z);
	   end
	endfunction
	
	function [31:0] bsig0(
	   input [31:0] x
	);
	   begin
	       bsig0 = {x[1:0], x[31:2]} ^ {x[12:0], x[31:13]} ^ {x[21:0], x[31:22]};
	   end
	endfunction
	
	function [31:0] bsig1(
	   input [31:0] x
	);
	   begin
	       bsig1 = {x[5:0], x[31:6]} ^ {x[10:0], x[31:11]} ^ {x[24:0], x[31:25]};
	   end
	endfunction
	
	function [31:0] ssig0(
	   input [31:0] x
	);
	   begin
	       ssig0 = {x[6:0], x[31:7]} ^ {x[17:0], x[31:18]} ^ (x >> 3);
	   end
	endfunction
	
	function [31:0] ssig1(
	   input [31:0] x
	);
	   begin
	       ssig1 = {x[16:0], x[31:17]} ^ {x[18:0], x[31:19]} ^ (x >> 10);
	   end
	endfunction
endmodule



















