`timescale 1ns / 1ps

module main(
    input clk,
    input uart_rx,
    output uart_tx
);
    //wire [255:0] message;
    //wire [255:0] digest;
    
    wire clk_primary;
    wire clk_uart;
    
    //reg digest_valid = 1;
    
    main_clock main_clock_inst(
        .clk_in(clk),
        .clk_out_primary(clk_primary),
        .clk_out_uart(clk_uart),
        .reset(0)
    );
    
//    assign message = 'h61626364_65000000_00000000_00000000_00000000_00000000_00000000_00000000;
    
//    sha256 sha256_inst(
//        .clk(clk_primary),
//        .message(message),
//        .digest(digest)
//    );
    
    // ======================== TESTING =====================
    
    wire [255:0] digest;
    reg digest_valid = 0;
    integer digest_counter = 0;
    
    assign digest = 'h61626364_65666768_69707172_73747576_77787980_81828384_85868788_89909192;
    
    always @ (posedge clk_primary) begin 
        if (digest_counter == 10_000_000) begin 
            digest_counter <= 0;
        end else begin 
            digest_counter <= digest_counter + 1;
        end
        
        digest_valid <= digest_counter == 0;
    end 
    
    // ======================================================
    
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
