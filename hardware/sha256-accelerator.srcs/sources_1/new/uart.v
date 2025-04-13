`timescale 1ns / 1ps

module uart #(FREQUENCY_DIVISOR = 960) (
    input clk,
    
    input [7:0] data,
    input data_valid,
    
    output ready,
    
    output reg tx = 1
);
    reg [7:0] current_packet;
    
    reg [4:0] tx_bit_idx = 10;
    
    integer clk_division = 0;
    
    assign ready = tx_bit_idx == 10;
    
    always @(posedge clk) begin
        if (clk_division == FREQUENCY_DIVISOR - 1) begin
            clk_division <= 0;
            
            if (tx_bit_idx == 0) begin
                tx <= 0;
            end else if(tx_bit_idx < 9) begin
                current_packet[6:0] <= current_packet[7:1];
                tx <= current_packet[0];
            end else begin
                tx <= 1;
            end
            
            if (tx_bit_idx < 10) begin
                tx_bit_idx <= tx_bit_idx + 1;
            end
        end else begin
            clk_division <= clk_division + 1;
        end
        
        if (ready && data_valid) begin 
            current_packet <= data;
            tx_bit_idx <= 0;
        end
    end
endmodule
