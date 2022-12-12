`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2022 14:52:40
// Design Name: 
// Module Name: vdp
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


module memory_manager(input clk, input start, input[12:0] base_addr_frame_buffer, input[7:0] h_size, input[7:0] v_size, input[11:0] base_addr_sprite_buffer,/* input[2:0] h_shift, input[2:0] v_shift,*/ output reg busy_in,
                      input[511:0] sprite_in, input[11:0] sprite_address, input sprite_write,
                      input [12:0]BRAM_PORTB_0_addr, wire [511:0]BRAM_PORTB_0_dout);

  
    

  reg [12:0]BRAM_PORTA_0_addr;
  wire BRAM_PORTA_0_clk;
  reg [511:0]BRAM_PORTA_0_din;
  reg BRAM_PORTA_0_en;
  reg [63:0]BRAM_PORTA_0_we;
  
  wire BRAM_PORTB_0_clk;
 
  reg BRAM_PORTB_0_en;
  
  assign BRAM_PORTA_0_clk=clk;
  assign BRAM_PORTB_0_clk=clk;
  
  
  
frame_buffer_wrapper VRAM
   (.BRAM_PORTA_0_addr(BRAM_PORTA_0_addr),
    .BRAM_PORTA_0_clk(BRAM_PORTA_0_clk),
    .BRAM_PORTA_0_din(BRAM_PORTA_0_din),
    .BRAM_PORTA_0_en(BRAM_PORTA_0_en),
    .BRAM_PORTA_0_we(BRAM_PORTA_0_we),
    .BRAM_PORTB_0_addr(BRAM_PORTB_0_addr),
    .BRAM_PORTB_0_clk(BRAM_PORTB_0_clk),
    .BRAM_PORTB_0_dout(BRAM_PORTB_0_dout),
    .BRAM_PORTB_0_en(BRAM_PORTB_0_en));

    

  reg [11:0]SPRITE_PORTA_0_addr;
  wire SPRITE_PORTA_0_clk;
  reg [511:0]SPRITE_PORTA_0_din;
  reg SPRITE_PORTA_0_en;
  reg [0:0]SPRITE_PORTA_0_we;
  reg [11:0]SPRITE_PORTB_0_addr;
  wire SPRITE_PORTB_0_clk;
  wire [511:0]SPRITE_PORTB_0_dout;
  reg SPRITE_PORTB_0_en;
  
  assign SPRITE_PORTA_0_clk=clk;
  assign SPRITE_PORTB_0_clk=clk;
  
sprite_mem_wrapper SPRAM
   (SPRITE_PORTA_0_addr,
    SPRITE_PORTA_0_clk,
    SPRITE_PORTA_0_din,
    SPRITE_PORTA_0_en,
    SPRITE_PORTA_0_we,
    SPRITE_PORTB_0_addr,
    SPRITE_PORTB_0_clk,
    SPRITE_PORTB_0_dout,
    SPRITE_PORTB_0_en);

    
    

    initial begin
    busy_in=1'b0;
    BRAM_PORTA_0_en=1'b1;
    BRAM_PORTB_0_en=1'b1;
    SPRITE_PORTA_0_en=1'b1;
    SPRITE_PORTB_0_en=1'b1;
    
    BRAM_PORTA_0_addr=13'b0;
    BRAM_PORTA_0_din=512'b0;
    BRAM_PORTA_0_we=64'b0;
    //BRAM_PORTB_0_addr=13'b0;
    
    SPRITE_PORTA_0_addr=12'b0;
    SPRITE_PORTA_0_din=512'b0;
    SPRITE_PORTA_0_we=1'b0;
    SPRITE_PORTB_0_addr=12'b0;
  end
  
    reg start_d=0;
    reg posedge_start=1'b0;
    always @ (negedge clk) begin
        start_d<=start;
        posedge_start<=start && ~ start_d;
    end
    
    reg[7:0] h_counter,v_counter,h_size_copy;
    reg[31:0] base_addr_sprite_buffer_copy,base_addr_frame_buffer_copy,base_addr_frame_buffer_copy_to_save;
    reg last=0;
    
    always @(posedge clk) begin
        if(posedge_start==1'b1) begin
            h_counter<=h_size;
            v_counter<=v_size;
            h_size_copy<=h_size;
            //base_addr_sprite_buffer_copy<=base_addr_sprite_buffer;
            base_addr_frame_buffer_copy<=base_addr_frame_buffer;
            base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer;
            busy_in<=1'b1;
            
            SPRITE_PORTB_0_addr<=base_addr_sprite_buffer; 
            //SPRITE_PORTB_0_en<=1'b1;
            base_addr_sprite_buffer_copy<=base_addr_sprite_buffer+1;
            //SPRITE_PORTB_0_en<=1'b1;
            
        end
        else if(busy_in==1'b1 && last==1'b0) begin
            
            BRAM_PORTA_0_addr<=base_addr_frame_buffer_copy;
            BRAM_PORTA_0_din<=SPRITE_PORTB_0_dout;
            BRAM_PORTA_0_we<=64'hFFFFFFFFFFFFFFFF;
            
            SPRITE_PORTB_0_addr<=base_addr_sprite_buffer_copy;
            base_addr_sprite_buffer_copy<=base_addr_sprite_buffer_copy+1;
            
            if(h_counter!=1) begin
                h_counter=h_counter-1;
                base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy+1;
                
            end
            else begin
                if(v_counter!=1) begin
                    base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+80;
                    base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save +80;
                    h_counter=h_size_copy;
                end
                else begin
                    last=1'b1;
                end
            end
                
         end
         else if(last==1'b1) begin
            BRAM_PORTA_0_we<=64'h0;
            busy_in<=1'b0;
         end
    end
    
    always @(posedge clk) begin
        if(sprite_write==1'b0) begin
            SPRITE_PORTA_0_we<=1'b0;
        end
        else begin
            SPRITE_PORTA_0_we<=1'b0;
            SPRITE_PORTA_0_addr<=sprite_address;
            SPRITE_PORTA_0_din<=sprite_in;
        end
    end
endmodule
