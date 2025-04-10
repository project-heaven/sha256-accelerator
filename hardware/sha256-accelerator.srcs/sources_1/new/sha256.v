`timescale 1ns / 1ps

module sha256(
    input clk,
    
    input [255:0] message,
    input message_valid,
    
    output [255:0] digest,
    output wire digest_valid
);
    wire [2047:0] message_schedule;
    
    reg pms_clk = 0;
    reg mhc_clk = 0;
    
    wire [511:0] padded_message = {message, 1'b1, 191'b0, 64'h00000000_00000100};
    
    wire reset_inner;
    
    integer step = 49 + 66 + 1;
    
    assign reset_inner = step == 49 + 66 + 1;
    
    prepare_message_schedule pms(
        .clk(pms_clk),
        .reset(reset_inner),
        .padded_message(padded_message),
        .message_schedule(message_schedule)
    );
    
    main_hash_computation mhc(
        .clk(mhc_clk),
        .reset(reset_inner),
        .message_schedule(message_schedule),
        .digest(digest)
    );
    
    assign digest_valid = step == 49 + 66;
    
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
        if (step < 49 + 66 + 1) begin
            step <= step + 1;
        end else begin
            step <= message_valid ? 0 : step;
        end
    end
endmodule

module sha256_testbench();
    reg clk;
    
    reg [255:0] message;
    reg message_valid = 1;
    
    wire [255:0] digest;
    wire digest_valid;

    sha256 sha256_inst(
        .clk(clk),
        .message(message),
        .message_valid(message_valid),
        .digest(digest),
        .digest_valid(digest_valid)
    );

    always #1 clk=~clk;

    initial begin
        clk <= 0;
        message <= 'h61626364_65000000_00000000_00000000_00000000_00000000_00000000_00000000;
    end
    
    always @(posedge clk) begin
        if (digest_valid) begin
            $display("Message digest: %h", digest);
        end
    end
    
    always @ (negedge clk) begin 
        if (digest_valid) begin
            message <= message + 1;
        end
    end
endmodule
