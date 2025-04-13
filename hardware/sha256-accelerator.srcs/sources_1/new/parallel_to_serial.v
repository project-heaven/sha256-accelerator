`timescale 1ns / 1ps

module parallel_to_serial(
    input clk,
    
    input [255:0] digest,
    input digest_valid,
    
    output reg [7:0] byte,
    output reg byte_valid
);
    localparam integer step_count = 64;
    
    reg[255:0] digest_reg;

    integer step = step_count;

    always @ (posedge clk) begin 
        if (digest_valid) begin
            digest_reg <= digest;
            step <= 0;
        end

        if(step != step_count) begin 
            byte <= half_byte_to_ascii(digest_reg[255 - 4 * (step) -: 4]);
            byte_valid <= 1;
            step <= step + 1;
        end else begin
            byte_valid <= 0;
        end
    end
    
    function [7:0] half_byte_to_ascii(
	   input [3:0] half_byte
	);
        begin
            case (half_byte)
                'h0: half_byte_to_ascii = 48;
                'h1: half_byte_to_ascii = 49; 
                'h2: half_byte_to_ascii = 50;
                'h3: half_byte_to_ascii = 51;
                'h4: half_byte_to_ascii = 52;
                'h5: half_byte_to_ascii = 53;
                'h6: half_byte_to_ascii = 54;
                'h7: half_byte_to_ascii = 55;
                'h8: half_byte_to_ascii = 56;
                'h9: half_byte_to_ascii = 57;
                'hA: half_byte_to_ascii = 65;
                'hB: half_byte_to_ascii = 66;
                'hC: half_byte_to_ascii = 67;
                'hD: half_byte_to_ascii = 68;
                'hE: half_byte_to_ascii = 69;
                'hF: half_byte_to_ascii = 70;
            endcase
        end
	endfunction
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
