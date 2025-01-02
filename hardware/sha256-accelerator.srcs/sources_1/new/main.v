`timescale 1ns / 1ps

module main(
    input clk,
    output test,
    output uart_tx
);
    wire [511:0] message;
    wire [255:0] digest;
    
    wire clk_primary;
    wire clk_uart;
    
    main_clock main_clock_inst(
        .clk_in(clk),
        .clk_out_primary(clk_primary),
        .clk_out_uart(clk_uart)
    );
    
    assign message = 'h61626364_65800000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000028;
    
    sha256 sha256_inst(
        .clk(clk_primary),
        .message(message),
        .digest(digest)
    );
    
    uart uart_inst(
        .clk(clk_uart),
        .tx(uart_tx)
    );
    
    assign test = ~^digest;
endmodule
