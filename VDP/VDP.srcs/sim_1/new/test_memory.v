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
    reg[14:0] base_addr_frame_buffer;
    reg[7:0] h_size;
    reg[7:0] v_size;
    reg[13:0] base_addr_sprite_buffer;
    wire busy_in;
    
    reg[127:0] sprite_in;
    reg[13:0] sprite_address;
    reg sprite_write;
    reg [14:0]BRAM_PORTB_0_addr;
    wire [127:0] BRAM_PORTB_0_dout;
    reg [2:0] h_shift, v_shift;
    integer state=-3;
    reg reset;
    wire reseting;
    initial begin
        start=0;
        base_addr_frame_buffer=13'd0;
        h_size=0;
        v_size=0;
        base_addr_sprite_buffer=0;
        sprite_in=0;
        sprite_address=0;
        sprite_write=0;
        BRAM_PORTB_0_addr=0;
    
        h_shift=0;
        v_shift=0;
        state=-3;
        reset=0;
    end
    
    memory_manager mem (clk,reset,reseting, start,  base_addr_frame_buffer, h_size,  v_size, base_addr_sprite_buffer,  h_shift,  v_shift, busy_in,
                       sprite_in,  sprite_address, sprite_write,
                      BRAM_PORTB_0_addr, BRAM_PORTB_0_dout);
                      
    always begin #5 clk=~clk; end
    
    
    always@ (posedge clk) begin
        if(state==-3)begin
            reset<=1'd1;
            state<=state+1;
        end
        else if(state==-2)begin
            if(reseting==1) begin
                state<=state+1;
            end
            
        end
        else if(state==-1)begin
            reset<=1'd0;
            if(reseting==0) begin
                state<=state+1;
            end
        end
        else if(state==8'd0) begin
            sprite_in<=128'b0;
            sprite_address<=14'b0;
            sprite_write<=1'b1;
            state<=state+1;
        end
        else if(state==8'd1) begin
            sprite_in<=128'b0;
            sprite_address<=14'b0;
            sprite_write<=1'b1;
            state<=state+1;
        end
        else if(state==8'd2) begin
            sprite_in<=128'hFFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF_FFFFFFFFFFFFFFFF;
            sprite_address<=14'b0;
            sprite_write<=1'b1;
            state<=state+1;
        end
        else if(state==8'd3) begin
            sprite_in<=128'hFFFFFFFFFFFFFFFF_0000000000000000_FFFFFFFFFFFFFFFF_0000000000000000_FFFFFFFFFFFFFFFF_0000000000000000_FFFFFFFFFFFFFFFF_0000000000000000;
            sprite_address<=14'd1;
            sprite_write<=1'b1;
            state<=state+1;
        end
        else if(state==8'd4) begin
            sprite_in<=128'h0000000000000000_FFFFFFFFFFFFFFFF_0000000000000000_FFFFFFFFFFFFFFFF_0000000000000000_FFFFFFFFFFFFFFFF_0000000000000000_FFFFFFFFFFFFFFFF;
            sprite_address<=14'd2;
            sprite_write<=1'b1;
            state<=state+1;
        end
        else if(state==8'd5) begin
            sprite_in<=128'hFFFFFFFFFFFFFFFF_0000000000000000_0000000000000000_0000000000000000_0000000000000000_0000000000000000_FFFFFFFF00000000_00000000FFFFFFFF;
            sprite_address<=14'd3;
            sprite_write<=1'b1;
            state<=state+1;
        end
        else if(state==8'd6) begin
            sprite_write<=1'b0;
            base_addr_frame_buffer<=32'b0;
            h_size=8'd2;
            v_size=8'd2;
            h_shift<=3'd1;
            v_shift<=3'd1;
            base_addr_sprite_buffer<=32'b0;
            start=1'b1;
            state<=state+1;
        end
        else if(state==8'd7) begin
            start=1'b0;
            state<=state+1;
        end
        else if(state==8'd8) begin
            wait (busy_in==1'b0);
            BRAM_PORTB_0_addr<=0;
            state<=state+1;
                        
        end
        else if(state==8'd9) begin
            
            BRAM_PORTB_0_addr<=1;
            state<=state+1;
           
            
        end
        else if(state==8'd10) begin
            
            BRAM_PORTB_0_addr<=2;
            state<=state+1;
            
            
        end
        else if(state==8'd11) begin
            
            BRAM_PORTB_0_addr<=160;
            state<=state+1;
            
            
        end
        else if(state==8'd12) begin
            
            BRAM_PORTB_0_addr<=161;
            state<=state+1;
            
            
        end
        else if(state==8'd13) begin
            BRAM_PORTB_0_addr<=162;
            state<=state+1;
            #100;
            $finish;
            
        end
        
    end
    
endmodule
