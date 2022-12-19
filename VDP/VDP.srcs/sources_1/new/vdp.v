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


module memory_manager(input clk, input start, input[12:0] base_addr_frame_buffer, input[7:0] h_size, input[7:0] v_size, input[11:0] base_addr_sprite_buffer, input[2:0] h_shift, input[2:0] v_shift, output reg busy_in,
                      input[511:0] sprite_in, input[11:0] sprite_address, input sprite_write,
                      input [12:0]BRAM_PORTB_0_addr, wire [511:0]BRAM_PORTB_0_dout);

  
    

  wire [12:0]BRAM_PORTA_0_addr;
  wire BRAM_PORTA_0_clk;
  wire [511:0]BRAM_PORTA_0_din;
  reg BRAM_PORTA_0_en;
  wire [63:0]BRAM_PORTA_0_we;
  
  
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

    
    
    

  
    reg start_d=0;
    reg posedge_start=1'b0;
    always @ (negedge clk) begin
        start_d<=start;
        posedge_start<=start && ~ start_d;
    end
    
    reg[7:0] h_counter,v_counter,h_size_copy,v_size_copy;
    reg[11:0] base_addr_sprite_buffer_copy;
    reg[12:0] base_addr_frame_buffer_copy,base_addr_frame_buffer_copy_to_save;
    reg last=0;
    
    reg [511:0] partial_frame_buffer [162:0];
    reg cleaning_pfb;
    reg [7:0] h_counter_cleaning;
    
    
    reg [511:0] last_upper;
    reg [511:0] lasti;
    reg [511:0] upper;
    reg [511:0] newi;
    wire [511:0] to_save;
    matrix_operations m_op( last_upper, lasti, upper, newi, h_shift, v_shift, to_save);

    wire[63:0] wei;
    wire[63:0] write_activate;
    assign write_activate={(64){busy_in & ~cleaning_pfb}};
    write_enable we1 ( to_save,  wei);
    
    reg upper_block_up;
    integer i=0;
    
    reg[1:0] wait_for_mem;
    reg[1:0] shift_edges;
    
    reg begining_of_copy;
    initial begin
        busy_in=1'b0;
        BRAM_PORTA_0_en=1'b1;
        BRAM_PORTB_0_en=1'b1;
        SPRITE_PORTA_0_en=1'b1;
        SPRITE_PORTB_0_en=1'b1;
        
        
       
        //BRAM_PORTB_0_addr=13'b0;
        
        SPRITE_PORTA_0_addr=12'b0;
        SPRITE_PORTA_0_din=512'b0;
        SPRITE_PORTA_0_we=1'b0;
        SPRITE_PORTB_0_addr=12'b0;
        cleaning_pfb=1'b0;
        upper_block_up=1'b0;
        for(i=0;i<162;i=i+1) begin
            partial_frame_buffer[i]<=512'd0;
        end
        
        h_counter_cleaning=0;
        last_upper=512'd0;
        lasti=512'd0;
        upper=512'd0;
        newi=512'd0;
        
        h_counter=0;
        v_counter=0;
        h_size_copy=0;
        v_size_copy=0;
        base_addr_sprite_buffer_copy=0;
        base_addr_frame_buffer_copy=0;
        base_addr_frame_buffer_copy_to_save=0;
        last=0;
        
        wait_for_mem=2'b0;
        
        begining_of_copy=1'b1;
        
        shift_edges=2'b0;
    end
  
    integer prev_buffer_pos_counter=0;
    
    reg[2:0] sprite_buffer_to_remove=0;
    
    always @(posedge clk) begin
        if(posedge_start==1'b1) begin
            h_counter<=0;
            v_counter<=0;
            h_size_copy<=h_size;
            v_size_copy<=v_size;
            
            if(v_shift>0||h_shift>0) begin
                partial_frame_buffer[0]<=512'b0;
                partial_frame_buffer[80]<=512'b0;
                cleaning_pfb<=1'b1;
                h_counter_cleaning<=1;
                           
            end

            else begin
                begining_of_copy<=1'b1;
            end
            
            base_addr_frame_buffer_copy<=base_addr_frame_buffer;
            base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer;
            base_addr_sprite_buffer_copy<=base_addr_sprite_buffer;
            busy_in<=1'b1;
            last<=1'b0;
            prev_buffer_pos_counter<=0;
            
            shift_edges<=2'b0;
            sprite_buffer_to_remove<=3'd0;  
        end
        
        
        else if(busy_in==1'b1 && last==1'b0) begin
            if(cleaning_pfb==1'b1) begin
                partial_frame_buffer[h_counter_cleaning]<=512'b0;
                partial_frame_buffer[h_counter_cleaning+80]<=512'b0;
                if(h_counter_cleaning+1>=h_size_copy) begin
                    cleaning_pfb<=1'b0;
                    wait_for_mem<=2'd2;
                    begining_of_copy<=1'b1;
                end
                h_counter_cleaning<=h_counter_cleaning+1;
                
            end
            else begin
                if(begining_of_copy==1'b1) begin
                    SPRITE_PORTB_0_addr<=base_addr_sprite_buffer_copy;
                    base_addr_sprite_buffer_copy<=base_addr_sprite_buffer_copy+1;
                    wait_for_mem<=2'd2;
                    begining_of_copy<=1'b0;
                end
                
                else if(wait_for_mem==2'b0) begin
                    
                    if(h_counter+1<h_size_copy) begin
                        h_counter<=h_counter+1;
                        base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy+1;
                    end
                    
                    else begin
                        if(h_shift!=0) begin
                        
                                if(shift_edges==2'd0||shift_edges==2'd2) begin
                                    if(shift_edges==2'd2) begin
                                        last<=1'b1;
                                    end
                                    shift_edges<=2'd1;
                                    base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy+1;
                                   
                                    sprite_buffer_to_remove<=3'd3;
                                    
                                end
                                
                                else begin
                                    if(v_counter+1<v_size_copy) begin
                                        v_counter<=v_counter+1;
                                        h_counter<=0;
                                        base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+80;
                                        base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save+80;
                                        if(shift_edges==2'd1) begin
                                            shift_edges<=2'd0;
                                            wait_for_mem<=2'd3;//////ATENÇÃO VERIFICAR FUNCIONAMENTO
                                            //base_addr_sprite_buffer_copy<=base_addr_sprite_buffer_copy-2;
                                        end
                                    end
                                    else begin
                                        if(v_shift!=0) begin
                                            if(shift_edges==2'd0||shift_edges==2'd1)begin
                                                shift_edges<=2'd2;
                                                h_counter<=0;
                                                base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+80;
                                                base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save+80;
                                            end
                                        end
                                        last<=1'b1;
                                    end
                                end
                                
                        end
                        else begin
                            if(v_counter+1<v_size_copy) begin
                                v_counter<=v_counter+1;
                                base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+80;
                                base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save+80;
                                h_counter<=0;
                            end
                            else begin
                                if(v_shift!=0) begin
                                    if(shift_edges==2'd0||shift_edges==2'd1)begin
                                        shift_edges<=2'd2;
                                        h_counter<=0;
                                        base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+80;
                                        base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save+80;
                                    end
                                    if(shift_edges==2'd2)begin
                                        shift_edges<=2'd0;
                                        last<=1'b1;
                                    end
                                    
                                end
                                else begin
                                    last<=1'b1;
                                end
                            end
                        end
                        
                    end
                    
                    
                end

                else begin
                    wait_for_mem<=wait_for_mem-1; 
                end
                
                if(upper_block_up==1'b1) begin
                    partial_frame_buffer[prev_buffer_pos_counter+81]<=newi;
                end
                else begin
                    partial_frame_buffer[prev_buffer_pos_counter+1]<=newi;
                end
                    
                SPRITE_PORTB_0_addr<=base_addr_sprite_buffer_copy;
                if(shift_edges==2'd0||shift_edges==2'd1) begin
                    if(sprite_buffer_to_remove!=3'd0) begin
                        base_addr_sprite_buffer_copy<=base_addr_sprite_buffer_copy-sprite_buffer_to_remove;
                        sprite_buffer_to_remove<=0;
                    end
                    else begin
                        base_addr_sprite_buffer_copy<=base_addr_sprite_buffer_copy+1;
                    end
                    
                end
                
                if((prev_buffer_pos_counter+(1&&h_shift==0))==h_size_copy)begin
                    prev_buffer_pos_counter<=0;
                    upper_block_up<=~upper_block_up;
                end
                else if(wait_for_mem==2'b0) begin
                    prev_buffer_pos_counter<=prev_buffer_pos_counter+1;
                end

             end
                    
         end
         else if(last==1'b1) begin
            busy_in<=1'b0;
         end
    end
    
    always @(posedge clk) begin
        if(sprite_write==1'b0) begin
            SPRITE_PORTA_0_we<=1'b0;
        end
        else begin
            SPRITE_PORTA_0_we<=1'b1;
            SPRITE_PORTA_0_addr<=sprite_address;
            SPRITE_PORTA_0_din<=sprite_in;
        end
    end
    
    assign BRAM_PORTA_0_we=wei&write_activate&~last;
    assign BRAM_PORTA_0_din=to_save;
    assign BRAM_PORTA_0_addr=base_addr_frame_buffer_copy;
    
    always @ * begin
        if(upper_block_up==1'b0) begin
            newi<=SPRITE_PORTB_0_dout & {(512){shift_edges==2'd0}};
            lasti<=partial_frame_buffer[prev_buffer_pos_counter];
            upper<=partial_frame_buffer[prev_buffer_pos_counter+81];
            last_upper<=partial_frame_buffer[prev_buffer_pos_counter+80];
            
        end
        
        
        
        else begin
            upper<=partial_frame_buffer[prev_buffer_pos_counter+1];
            last_upper<=partial_frame_buffer[prev_buffer_pos_counter];
            newi<=SPRITE_PORTB_0_dout &  {(512){shift_edges==2'd0}};
            lasti<=partial_frame_buffer[prev_buffer_pos_counter+80];
        end
    
    end

endmodule


