`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2022 16:24:04
// Design Name: 
// Module Name: test_memory
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test_memory(

    );
    
    reg clk=0;
    reg start=0;
    reg[31:0] base_addr_frame_buffer;
    reg[7:0] h_size;
    reg[7:0] v_size;
    reg[31:0] base_addr_sprite_buffer;
    wire busy_in;
    
    reg[511:0] sprite_in;
    reg[11:0] sprite_address;
    reg sprite_write;
    
    memory_manager mem( clk,  start, base_addr_frame_buffer,  h_size,  v_size,  base_addr_sprite_buffer,busy_in,
                      sprite_in,  sprite_address, sprite_write);
                      
    always begin #5 clk=~clk; end
    
    reg [7:0] state=0;
    always@ (posedge clk) begin
        if(state==8'd0) begin
            sprite_in<=512'b0;
            sprite_address=12'b0;
            sprite_write=1'b1;
            state<=state+1;
        end
        else if(state==8'd1) begin
            sprite_in<=512'b0;
            sprite_address<=12'b0;
            sprite_write<=1'b1;
            state<=state+1;
        end
        else if(state==8'd2) begin
            sprite_in<=512'hFFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF;
            sprite_address<=12'b0;
            sprite_write<=1'b1;
            state<=state+1;
        end
        else if(state==8'd3) begin
            sprite_write<=1'b0;
            base_addr_frame_buffer<=32'b0;
            h_size=8'd1;
            v_size=8'd1;
            base_addr_sprite_buffer<=32'b0;
            start=1'b1;
            state<=state+1;
        end
        else if(state==8'd4) begin
            start=1'b0;
            state<=state+1;
        end
        else if(state==8'd5) begin
            wait (busy_in==1'b0);
            #100;
            $finish;
            
        end
        
    end
    
endmodule
