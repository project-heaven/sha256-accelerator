`timescale 1ns / 1ps

module uart_rx #(FREQUENCY_DIVISOR = 960) (
    input clk,
    
    input rx,
    
    output reg [7:0] data,
    output wire data_valid
);
    integer clk_division = 0;

    integer rx_bit_idx = 9;

    assign data_valid = (rx_bit_idx == 8) && rx;

    always @(posedge clk) begin
        if (clk_division == FREQUENCY_DIVISOR - 1) begin
            clk_division <= 0;
            
            if (rx_bit_idx == 9 && rx == 0) begin
                rx_bit_idx <= 0;
            end else if (rx_bit_idx < 8) begin
                rx_bit_idx <= rx_bit_idx + 1;
                
                data[6:0] <= data[7:1];
                data[7] <= rx;
            end else if (rx_bit_idx == 8) begin
                rx_bit_idx <= rx_bit_idx + 1;
            end
        end else begin
            clk_division <= clk_division + 1;
        end

    end
endmodule

module uart_rx_testbench();
    reg clk = 0;

    always #1 clk <= ~clk;
    
    reg [31:0] rx_sequence = 'b1110_1010_1010_1110_0011_0011_1111_1111;
    wire rx = rx_sequence[31];
    
    wire[7:0] data;
    wire data_valid;
    
    uart_rx #(.FREQUENCY_DIVISOR(1)) uart_rx_instance (
        .clk(clk),
        .rx(rx),
        .data(data),
        .data_valid(data_valid)
    );
    
    always @(posedge clk) begin
        rx_sequence[31:1] <= rx_sequence[30:0];
    end
endmodule
