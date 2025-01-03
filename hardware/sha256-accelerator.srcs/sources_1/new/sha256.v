`timescale 1ns / 1ps

module sha256(
    input clk,
    input [255:0] message,
    output [255:0] digest
);
    wire [2047:0] message_schedule;
    
    reg pms_clk = 0;
    reg mhc_clk = 0;
    
    wire [511:0] padded_message = {message, 1'b1, 191'b0, 64'h00000000_00000100};
    
    prepare_message_schedule pms(
        .clk(pms_clk),
        .padded_message(padded_message),
        .message_schedule(message_schedule)
    );
    
    main_hash_computation mhc(
        .clk(mhc_clk),
        .message_schedule(message_schedule),
        .digest(digest)
    );
    
    integer step = 0;
    
    always @(clk) begin
        if (step < 49) begin
            pms_clk = clk;
            mhc_clk = 0;
        end else if (step < 49 + 66) begin
            pms_clk = 0;
            mhc_clk = clk;
        end else begin
            pms_clk = 0;
            mhc_clk = 0;
        end
    end
    
    always @(posedge clk) begin
        step <= step + 1;
    end
endmodule

module sha256_testbench();
    reg clk;
    reg [255:0] message;
    wire [255:0] digest;

    sha256 sha256_inst(
        .clk(clk),
        .message(message),
        .digest(digest)
    );

    always #1 clk=~clk;

    initial begin
        clk <= 0;
        message <= 'h61626364_65000000_00000000_00000000_00000000_00000000_00000000_00000000;
    end
    
    always @(posedge clk) begin
        $display("Message digest: %h", digest);
    end
endmodule
