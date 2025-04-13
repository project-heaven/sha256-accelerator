`timescale 1ns / 1ps

module main(
    input clk,
    input uart_rx,
    output uart_tx
);  
    wire clk_primary;
    wire clk_uart;
    
    main_clock main_clock_inst(
        .clk_in(clk),
        .clk_out_primary(clk_primary),
        .clk_out_uart(clk_uart),
        .reset(0)
    );

    wire [7:0] uart_rx_data;
    wire uart_rx_data_valid;

    uart_rx uart_rx_inst(
        .clk(clk_uart),
        .rx(uart_rx),
        .data(uart_rx_data),
        .data_valid(uart_rx_data_valid) 
    );

    wire [7:0] message_byte;
    wire message_byte_valid;

    rx_fifo rx_fifo_inst(
        .wr_clk(clk_uart),
        .rd_clk(clk_primary),
        
        .wr_en(uart_rx_data_valid),
        .din(uart_rx_data),
        
        .valid(message_byte_valid),
        .rd_en(1),
        .dout(message_byte)
    );
    
    wire message_valid;
    wire [255:0] message;
    
    serial_to_parallel serial_to_parallel_inst(
        .clk(clk_primary),
        .data(message_byte),
        .data_valid(message_byte_valid),
        .message(message),
        .message_valid(message_valid)
    );

    wire [255:0] digest;
    wire digest_valid;
    
    sha256 sha256_inst(
        .clk(clk_primary),
        
        .message(message),
        .message_valid(message_valid),
        
        .digest(digest),
        .digest_valid(digest_valid)
    );
    
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
    
    uart_tx uart_tx_inst(
        .clk(clk_uart),
        
        .data(uart_data),
        .data_valid(tx_data_valid),
        
        .ready(uart_ready),
        
        .tx(uart_tx)
    );
endmodule
