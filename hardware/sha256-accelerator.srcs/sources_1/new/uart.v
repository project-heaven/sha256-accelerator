`timescale 1ns / 1ps

module uart #(FREQUENCY_DIVISOR = 960) (
    input clk,
    
    input [7:0] data,
    input data_valid,
    
    output ready,
    
    output reg tx = 1
);
    parameter CLOCK_DIVISION = 960;

    reg [7:0] current_packet = 0;
    
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
            // TODO: Remove this workaround.
            case (data[3:0])
                'h0: current_packet <= 48;
                'h1: current_packet <= 49; 
                'h2: current_packet <= 50;
                'h3: current_packet <= 51;
                'h4: current_packet <= 52;
                'h5: current_packet <= 53;
                'h6: current_packet <= 54;
                'h7: current_packet <= 55;
                'h8: current_packet <= 56;
                'h9: current_packet <= 57;
                'hA: current_packet <= 65;
                'hB: current_packet <= 66;
                'hC: current_packet <= 67;
                'hD: current_packet <= 68;
                'hE: current_packet <= 69;
                'hF: current_packet <= 70;
            endcase
            
            tx_bit_idx <= 0;
        end
    end
endmodule

module uart_testbench();
    reg clk = 0;
    reg [7:0] data = 0;
    reg data_valid = 0;
    
    wire ready;
    wire tx;

    uart #(.CLOCK_DIVISION(4)) uart_inst(
        .clk(clk),
        .data(data),
        .data_valid(data_valid),
        .ready(ready),
        .tx(tx)
    );
    
    always #1 clk <= ~clk;
    
    integer counter = 0;
    
    always @ (posedge clk) begin
        counter <= counter + 1;
    
        if (counter == 20) begin
            data <= 'h00;
            data_valid <= 1;
        end else if (counter == 70) begin
            data <= 'h01;
            data_valid <= 1;
        end else if (counter == 150) begin
            data <= 'h02;
            data_valid <= 1;
        end else if (counter == 210) begin
            data <= 'h03;
            data_valid <= 1;
        end else begin
            data_valid <= 0;
        end
    end
endmodule
