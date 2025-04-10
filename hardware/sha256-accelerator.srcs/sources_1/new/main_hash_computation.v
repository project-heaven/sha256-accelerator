`timescale 1ns / 1ps

module main_hash_computation(
    input clk,
    input reset,
    input [(64 * 32) - 1:0] message_schedule,
    output reg [255:0] digest
);
    integer step = 0;
    integer index;

    wire [2047:0] k = 'h428a2f98_71374491_b5c0fbcf_e9b5dba5_3956c25b_59f111f1_923f82a4_ab1c5ed5_d807aa98_12835b01_243185be_550c7dc3_72be5d74_80deb1fe_9bdc06a7_c19bf174_e49b69c1_efbe4786_0fc19dc6_240ca1cc_2de92c6f_4a7484aa_5cb0a9dc_76f988da_983e5152_a831c66d_b00327c8_bf597fc7_c6e00bf3_d5a79147_06ca6351_14292967_27b70a85_2e1b2138_4d2c6dfc_53380d13_650a7354_766a0abb_81c2c92e_92722c85_a2bfe8a1_a81a664b_c24b8b70_c76c51a3_d192e819_d6990624_f40e3585_106aa070_19a4c116_1e376c08_2748774c_34b0bcb5_391c0cb3_4ed8aa4a_5b9cca4f_682e6ff3_748f82ee_78a5636f_84c87814_8cc70208_90befffa_a4506ceb_bef9a3f7_c67178f2;

    reg [31:0] a;
	reg [31:0] b;
	reg [31:0] c;
	reg [31:0] d;
	reg [31:0] e;
	reg [31:0] f;
	reg [31:0] g;
	reg [31:0] h;

    always @ (negedge reset) begin 
        step <= 0;
    end

    always @ (posedge clk) begin
        if (step == 0) begin   
            digest = 'h6a09e667_bb67ae85_3c6ef372_a54ff53a_510e527f_9b05688c_1f83d9ab_5be0cd19;
            
            a = digest[(32 * 8) - 1 -: 32];
		    b = digest[(32 * 7) - 1 -: 32];
		    c = digest[(32 * 6) - 1 -: 32];
		    d = digest[(32 * 5) - 1 -: 32];
		    e = digest[(32 * 4) - 1 -: 32];
		    f = digest[(32 * 3) - 1 -: 32];
		    g = digest[(32 * 2) - 1 -: 32];
		    h = digest[(32 * 1) - 1 -: 32];
        end else if(step <= 64) begin
            index = ((64 - step + 1) * 32) - 1;
            hashing_step(message_schedule[index -: 32], k[index -: 32]);
        end else if(step == 65) begin
            digest = {
			 a + digest[(32 * 8) - 1 -: 32], 
			 b + digest[(32 * 7) - 1 -: 32], 
			 c + digest[(32 * 6) - 1 -: 32], 
			 d + digest[(32 * 5) - 1 -: 32], 
			 e + digest[(32 * 4) - 1 -: 32], 
			 f + digest[(32 * 3) - 1 -: 32], 
			 g + digest[(32 * 2) - 1 -: 32], 
			 h + digest[(32 * 1) - 1 -: 32]
			};
        end
        
        step = step + 1;
	end
	
	reg [31:0] t1;
	reg [31:0] t2;
			
	task hashing_step(
		input [31:0] message_schedule_t,
		input [31:0] k_t
    );	
		begin
		    t1 = h + bsig1(e) + ch(e, f, g) + message_schedule_t + k_t;
		    t2 = bsig0(a) + maj(a, b, c);
		    
		    h = g;
            g = f;
            f = e;
            e = d + t1;
            d = c;
            c = b;
            b = a;
            a = t1 + t2;
		end
	endtask
	
	//==============================================================================================
	// Basic functions.
	//==============================================================================================
	
	function [31:0] ch(
	   input [31:0] x, y, z
	);
	   begin
	       ch = (x & y) ^ ((~x) & z);
	   end
	endfunction
	
	function [31:0] maj(
	   input [31:0] x, y, z
	);
	   begin
	       maj = (x & y) ^ (x & z) ^ (y & z);
	   end
	endfunction
	
	function [31:0] bsig0(
	   input [31:0] x
	);
	   begin
	       bsig0 = {x[1:0], x[31:2]} ^ {x[12:0], x[31:13]} ^ {x[21:0], x[31:22]};
	   end
	endfunction
	
	function [31:0] bsig1(
	   input [31:0] x
	);
	   begin
	       bsig1 = {x[5:0], x[31:6]} ^ {x[10:0], x[31:11]} ^ {x[24:0], x[31:25]};
	   end
	endfunction
endmodule

module main_hash_computation_testbench();
    reg clk;
    reg [2047:0] schedule;
    wire [255:0] digest;
    
    integer i;
    
    main_hash_computation mhc(
        .clk(clk),
        .message_schedule(schedule),
        .digest(digest)
    );
    
    always #5 clk=~clk;
    
    initial begin
        clk = 0;
        schedule = 'h61626364_65800000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000000_00000028_6ddd7cc4_65910000_11e1cc0a_a0195a3a_df8032bf_86720259_1f3ff464_af23ec3b_6a4a4385_9d933698_09c1e536_dd386c75_54b1b7fa_5ac30f84_ec4538e3_2abf68bd_934069a4_2db40369_60a9f646_df7ee272_238bde52_56b8adcf_789fe5fb_1d2ccbe4_958aa36d_0f2d2ffb_da3eec9c_c68738bb_1762d10b_e3470658_e1411019_6551716b_23dcd971_9bba6f71_659d07f9_c8f4a842_e8f78f32_f9b0db89_0d9d338c_18d67976_2cff2f7a_0232c9a8_b70019d0_8de0b035_8d4b9010_ab1021b7_3a7ae512_7778f032;
    end
    
    always @(negedge clk) begin
        $display("t1_t2_a_b_c_d_e_f_g_h: %h_%h_%h_%h_%h_%h_%h_%h_%h_%h", mhc.t1, mhc.t2, mhc.a, mhc.b, mhc.c, mhc.d, mhc.e, mhc.f, mhc.g, mhc.h);
        $display("Message digest: %h", digest);
    end
endmodule
