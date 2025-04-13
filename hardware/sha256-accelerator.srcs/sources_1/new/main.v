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
    
    //wire [255:0] message;
    //wire message_valid;
    
    reg [255:0] digest;
    reg digest_valid;
    
    //assign message = 'h61626364_65000000_00000000_00000000_00000000_00000000_00000000_00000000;
    //assign message_valid = 1;
    
    // =============== TESTING ========================
    
    //reg [255:0] message = 'h61626364_65000000_00000000_00000000_00000000_00000000_00000000_00000000;
    //reg message_valid = 0;
    
    reg counter = 0;
    
//    always @(posedge clk_primary) begin
//        if (counter == 0) begin
//            digest <= 'h0A0A0A0A_0B0B0B0B_0C0C0C0C_0D0D0D0D_0E0E0E0E_0F0F0F0F_01010101_02020202;
//            digest_valid <= 1;
////        end else if (counter == 100_000_000) begin
////            digest <= 'h0A0A0A0A_0B0B0B0B_0C0C0C0C_0D0D0D0D_0E0E0E0E_0F0F0F0F_01010101_02020202;
////            digest_valid <= 1;
////        end else if (counter == 200_000_000) begin
////            digest <= 'h0A0A0A0A_0B0B0B0B_0C0C0C0C_0D0D0D0D_0E0E0E0E_0F0F0F0F_01010101_02020202;
////            digest_valid <= 1;
////        end else if (counter == 300_000_000) begin
////            digest <= 'h0A0A0A0A_0B0B0B0B_0C0C0C0C_0D0D0D0D_0E0E0E0E_0F0F0F0F_01010101_02020202;
////            digest_valid <= 1;
//        end else begin 
//            digest_valid <= 0;
//        end
        
//        if (counter == 400_000_000) begin
//            counter <= 0;
//        end else begin
//            counter <= counter + 1;
//        end
//    end
    
    // ================================================
    
//    sha256 sha256_inst(
//        .clk(clk_primary),
//        .message(message),
//        .message_valid(message_valid),
//        .digest(digest),
//        .digest_valid(digest_valid)
//    );
    
    wire [7:0] digest_byte = 'h0A;
    wire digest_byte_valid = counter == 0;
    
//    parallel_to_serial parallel_to_serial_inst(
//        .clk(clk_primary),
//        .digest(digest),
//        .digest_valid(digest_valid),
//        .byte(digest_byte),
//        .byte_valid(digest_byte_valid)
//    );
    
    always @(posedge clk_primary) begin        
        if (counter == 2_000_000_000) begin
            counter <= 0;
        end else begin
            counter <= counter + 1;
        end
    end

    
    wire[7:0] uart_data;
    wire uart_ready;

    wire tx_data_valid;
    
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
