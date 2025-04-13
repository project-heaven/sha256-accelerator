`timescale 1ns / 1ps

module serial_to_parallel(
    input clk,
    
    input [7:0] data,
    input data_valid,
    
    output reg [255:0] message = 0,
    output wire message_valid
);
    integer stored_bytes = 0;

    assign message_valid = stored_bytes == 32;

    always @(posedge clk) begin
        if (data_valid) begin
            message[255:8] <= message[(255 - 8):0];
            message[7:0] <= data;
            
            stored_bytes <= stored_bytes + 1;
        end else if(message_valid) begin
            stored_bytes <= 0;
        end
    end
endmodule

module serial_to_parallel_testbench();
    reg clk = 0;
    
    always #1 clk <= ~clk;
    
    localparam SOURCE_MESSAGE_LEN = 256 + 32 + 256;
    
    reg[SOURCE_MESSAGE_LEN - 1:0] source_message = 
        'h11223344_55667788_99AABBCC_11223344_11223344_55667788_99AABBCC_11223344_00000000_12121212_34343434_56565656_78787878_9A9A9A9A_BCBCBCBC_DEDEDEDE_10101010;
    
    integer counter = 0;
    wire data_valid = counter < 32 || (counter >= 36 && counter < 68);
    
    wire[255:0] message;
    wire message_valid;
    
    serial_to_parallel serial_to_parallel_inst(
        .clk(clk),
        .data(source_message[SOURCE_MESSAGE_LEN - 1 -: 8]),
        .data_valid(data_valid),
        .message(message),
        .message_valid(message_valid)
    );
    
    always @(posedge clk) begin
        source_message[SOURCE_MESSAGE_LEN:8] <= source_message[(SOURCE_MESSAGE_LEN - 8):0];
        counter <= counter + 1;
    end
endmodule
