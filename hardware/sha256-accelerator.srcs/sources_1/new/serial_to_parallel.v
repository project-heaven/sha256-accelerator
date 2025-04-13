`timescale 1ns / 1ps

module serial_to_parallel(
    input clk,
    
    input [7:0] data,
    input data_valid,
    
    output reg [255:0] message,
    output reg message_valid = 0
);

    always @(posedge clk) begin
        //
    end
endmodule
