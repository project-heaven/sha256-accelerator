`timescale 1ns / 1ps

module uart_rx #(FREQUENCY_DIVISOR = 960) (
    input clk,
    
    input rx,
    
    output reg [7:0] data,
    output reg data_valid = 0
);
    localparam IDLE = 0;
    localparam START_BIT = 1;
    localparam DATA_BITS = 2;
    localparam STOP_BIT = 3;
    localparam SUBMIT_DATA = 4;

    reg[2:0] state = IDLE;
    
    integer clk_count = 0;

    reg rx_metastable = 1;
    reg rx_stable = 1;

    reg[2:0] rx_bit_idx = 0;
    localparam TOTAL_BITS_TO_RECEIVE = 8;

    always @(posedge clk) begin
        rx_metastable <= rx;
        rx_stable <= rx_metastable;
    end
    
    always @(posedge clk) begin
        case (state) 
            IDLE: begin
                clk_count <= 0;
                data_valid <= 0;
                
                if (rx_stable == 0) begin
                    state <= START_BIT;
                end else begin
                    state <= IDLE;
                end   
            end
            START_BIT: begin
                if (clk_count == FREQUENCY_DIVISOR / 2) begin
                    clk_count <= 0;
                    
                    if (rx_stable == 0) begin
                        state <= DATA_BITS;
                    end else begin
                        state <= IDLE;
                    end
                end else begin
                    clk_count <= clk_count + 1;
                    state <= START_BIT;
                    rx_bit_idx <= 0;
                end
            end
            DATA_BITS: begin
                if (clk_count == FREQUENCY_DIVISOR - 1) begin
                    clk_count <= 0;
                        
                    data[6:0] <= data[7:1];
                    data[7] <= rx_stable;
                    
                    if (rx_bit_idx == TOTAL_BITS_TO_RECEIVE - 1) begin
                        state <= STOP_BIT;
                    end else begin
                        state <= DATA_BITS;
                        rx_bit_idx <= rx_bit_idx + 1;
                    end
                end else begin
                    clk_count <= clk_count + 1;
                    state <= DATA_BITS;
                end
            end
            STOP_BIT: begin
                if (clk_count == FREQUENCY_DIVISOR - 1) begin 
                    state <= SUBMIT_DATA;
                end else begin
                    clk_count <= clk_count + 1;
                    state <= STOP_BIT;
                end
            end
            SUBMIT_DATA: begin
                data_valid <= 1;
                state <= IDLE;
            end
        endcase
    end
endmodule

module uart_rx_testbench();
    reg clk = 0;

    always #1 clk <= ~clk;
    
    reg [31:0] rx_sequence = 'b1110_1010_1010_1110_0011_0011_1111_1111;
    wire rx = rx_sequence[31];
    
    wire[7:0] data;
    wire data_valid;
    
    localparam FREQUENCY_DIVISOR = 4;
    
    uart_rx #(.FREQUENCY_DIVISOR(FREQUENCY_DIVISOR)) uart_rx_instance (
        .clk(clk),
        .rx(rx),
        .data(data),
        .data_valid(data_valid)
    );
    
    integer counter = 0;
     
    always @(posedge clk) begin
        if (counter == FREQUENCY_DIVISOR - 1) begin
            counter <= 0;
            
            rx_sequence[31:1] <= rx_sequence[30:0];
        end else begin
            counter <= counter + 1;
        end
    end
endmodule
