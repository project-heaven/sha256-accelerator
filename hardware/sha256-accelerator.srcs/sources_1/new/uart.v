`timescale 1ns / 1ps

module uart(
    input clk,
    output reg tx
);
    wire [7:0] data = 'h23;
    
    reg [7:0] current_packet;
    
    reg [4:0] tx_bit_idx = 0;
    
    reg clk_divided;
    reg [9:0] clk_division;
    
    always @(posedge clk) begin
        if (clk_division == 960 / 2 - 1) begin
            clk_division <= 0;
            clk_divided <= ~clk_divided;
        end else begin
            clk_division <= clk_division + 1;
        end
    end
    
    always @(posedge clk_divided) begin
        if (tx_bit_idx == 0) begin
            current_packet <= data;
            tx <= 0;
        end else if(tx_bit_idx < 9) begin
            current_packet[6:0] <= current_packet[7:1];
            tx <= current_packet[0];
        end else begin
            tx <= 1;
        end
        
        tx_bit_idx <= tx_bit_idx < 10 ? tx_bit_idx + 1 : 0;
    end
endmodule
