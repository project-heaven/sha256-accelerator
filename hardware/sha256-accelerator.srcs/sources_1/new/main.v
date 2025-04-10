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
    
    wire [255:0] message;
    wire [255:0] digest;
    
    wire digest_valid;
    
    assign message = 'h61626364_65000000_00000000_00000000_00000000_00000000_00000000_00000000;
    
    sha256 sha256_inst(
        .clk(clk_primary),
        .message(message),
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
    wire fifo_empty;
    wire fifo_not_empty = !fifo_empty;
    wire uart_ready;
    
    tx_fifo tx_fifo_inst(
        .wr_clk(clk_primary),
        .rd_clk(clk_uart),
        
        //.full(),
        .wr_en(digest_byte_valid),
        .din(digest_byte),
        
        .empty(fifo_empty),
        .rd_en(uart_ready),
        .dout(uart_data)
    );
    
    uart uart_inst(
        .clk(clk_uart),
        
        .data(uart_data),
        .data_valid(fifo_not_empty),
        
        .ready(uart_ready),
        
        .tx(uart_tx)
    );
endmodule
