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

    integer counter = 0;
    wire message_valid = counter == 10;
    
    always @ (posedge clk_primary) begin 
        if (counter == 500_000_000) begin 
            counter <= 0;
        end else begin 
            counter <= counter + 1;
        end
    end 
    
    wire [255:0] message = 'h61626364_65000000_00000000_00000000_00000000_00000000_00000000_00000000;
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
    
    uart uart_inst(
        .clk(clk_uart),
        
        .data(uart_data),
        .data_valid(tx_data_valid),
        
        .ready(uart_ready),
        
        .tx(uart_tx)
    );
endmodule
