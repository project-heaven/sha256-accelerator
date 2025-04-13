`timescale 1ns / 1ps

module parallel_to_serial(
    input clk,
    
    input [255:0] digest,
    input digest_valid,
    
    output reg [7:0] byte,
    output reg byte_valid
);
    localparam integer step_count = 32;
        
    reg[255:0] digest_reg;

    integer step = step_count;

    always @ (posedge clk) begin 
        if (digest_valid) begin 
            digest_reg <= digest;
            step <= 0;
        end

        if(step != step_count) begin 
            byte <= digest_reg[255 - 8 * (step) -: 8];
            byte_valid <= 1;
            step <= step + 1;
        end else begin
            byte_valid <= 0;
        end
    end
endmodule

module parallel_to_serial_testbench();
    reg clk;
    reg [255:0] digest;
    reg digest_valid;
    
    wire[7:0] output_byte;
    wire output_byte_valid;

    reg is_first_clk;

    always #5 clk=~clk;
    
    parallel_to_serial pts(
        .clk(clk),
        .digest(digest),
        .digest_valid(digest_valid),
        .byte(output_byte),
        .byte_valid(output_byte_valid)
    );
    
    initial begin
        clk = 0;
        digest = 'h0011223344556677_8899001122334455_6677889900112233_4455667788990011;
        digest_valid = 1;
        is_first_clk = 1;
    end
    
    always @(negedge clk) begin
        if(is_first_clk) begin
            is_first_clk = 0;
        end else begin 
            digest_valid = 0;
        end
        
        $display("output byte: %h, is valid: %b", output_byte, output_byte_valid);    
    end
endmodule
