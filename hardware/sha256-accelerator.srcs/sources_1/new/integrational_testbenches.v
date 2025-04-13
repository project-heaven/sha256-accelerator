`timescale 1ns / 1ps

module parallel_to_serial_with_uart_testbench();
    reg clk_primary = 0;
    reg clk_uart = 0;

    always #0.37 clk_primary <= ~clk_primary;
    always #1 clk_uart <= ~clk_uart;

    wire [255:0] digest;
    integer digest_counter = 0;
    wire digest_valid = digest_counter == 0;
    
    assign digest = 'h11223344_55667788_99AABBCC_11223344_55667788_99AABBCC_11223344_55667788;
    
    always @ (posedge clk_primary) begin 
        if (digest_counter == 500_000_000) begin 
            digest_counter <= 0;
        end else begin 
            digest_counter <= digest_counter + 1;
        end
    end 

    wire [7:0] digest_byte;
    wire digest_byte_valid;
    
    parallel_to_serial parallel_to_serial_inst(
        .clk(clk_primary),
        .digest(digest),
        .digest_valid(digest_valid),
        .byte(digest_byte),
        .byte_valid(digest_byte_valid)
    );
    
    wire[7:0] uart_data;
    wire tx_data_valid;
    wire uart_ready;
    
    tx_fifo tx_fifo_inst(
        .wr_clk(clk_primary),
        .rd_clk(clk_uart),
        
        .wr_en(digest_byte_valid),
        .din(digest_byte),
        
        .valid(tx_data_valid),
        .rd_en(uart_ready),
        .dout(uart_data)
    );
    
    uart #(.FREQUENCY_DIVISOR(1)) uart_inst(
        .clk(clk_uart),
        
        .data(uart_data),
        .data_valid(tx_data_valid),
        
        .ready(uart_ready),
        
        .tx(uart_tx)
    );
endmodule
