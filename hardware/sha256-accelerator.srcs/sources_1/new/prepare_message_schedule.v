`timescale 1ns / 1ps

module prepare_message_schedule(
    input clk,
    input [(16 * 32) - 1:0] padded_message,
    output reg [(64 * 32) - 1:0] message_schedule
);
    integer step = 0;

    always @ (posedge clk) begin
        if(step == 0) begin
            message_schedule[(64 * 32) - 1 -:(16 * 32)] <= padded_message;
        end else begin
            message_schedule[((64 - 16 - step + 1) * 32) - 1 -: 32] <= 
                prepare_message_schedule_step(message_schedule, step - 1);
        end
        
        step <= step + 1;
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

module prepare_message_schedule_testbench();
    reg clk;
    reg [511:0] message;
    wire [2047:0] schedule;
    
    integer i;
    
    prepare_message_schedule pms(
        .clk(clk),
        .padded_message(message),
        .message_schedule(schedule)
    );
    
    always #5 clk <= ~clk;
    
    initial begin
        message <= 'h61626364_65800000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000028;
        clk <= 0;      
    end
    
    always @(posedge clk) begin
        print_schedule();
    end
    
    task print_schedule();
        begin
            $display("Message schedule:");
            for (i=0; i<16; i=i+1) begin
                $display("%h", schedule[2047 - (i * 128) -: 128]);
            end
        end
    endtask
endmodule
