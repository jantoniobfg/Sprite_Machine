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


module memory_manager(input clk, input start, input[14:0] base_addr_frame_buffer, input[7:0] h_size, input[7:0] v_size, input[13:0] base_addr_sprite_buffer, input[2:0] h_shift, input[2:0] v_shift, output reg busy_in,
                      input[127:0] sprite_in, input[13:0] sprite_address, input sprite_write,
                      input [14:0]BRAM_PORTB_0_addr, wire [127:0]BRAM_PORTB_0_dout);

    reg [8:0]PREVIOUS_PORTA_1_addr;
    wire PREVIOUS_PORTA_1_clk;
    reg [127:0]PREVIOUS_PORTA_1_din;
    reg PREVIOUS_PORTA_1_en;
    reg [0:0]PREVIOUS_PORTA_1_we;
    wire [8:0]PREVIOUS_PORTB_1_addr;
    wire PREVIOUS_PORTB_1_clk;
    wire [127:0]PREVIOUS_PORTB_1_dout;
    reg PREVIOUS_PORTB_1_en;
    reg [8:0]UPPER_PORTA_2_addr;
    wire UPPER_PORTA_2_clk;
    reg [127:0]UPPER_PORTA_2_din;
    reg UPPER_PORTA_2_en;
    reg [0:0]UPPER_PORTA_2_we;
    wire [8:0]UPPER_PORTB_2_addr;
    wire UPPER_PORTB_2_clk;
    wire [127:0]UPPER_PORTB_2_dout;
    reg UPPER_PORTB_2_en;
    reg [8:0]UPPER_PREVIOUS_PORTA_0_addr;
    wire UPPER_PREVIOUS_PORTA_0_clk;
    reg [127:0]UPPER_PREVIOUS_PORTA_0_din;
    reg UPPER_PREVIOUS_PORTA_0_en;
    reg [0:0]UPPER_PREVIOUS_PORTA_0_we;
    wire [8:0]UPPER_PREVIOUS_PORTB_0_addr;
    wire UPPER_PREVIOUS_PORTB_0_clk;
    wire [127:0]UPPER_PREVIOUS_PORTB_0_dout;
    reg UPPER_PREVIOUS_PORTB_0_en;
    
   buffer_rams_wrapper buffer_rams
   (PREVIOUS_PORTA_1_addr,
    PREVIOUS_PORTA_1_clk,
    PREVIOUS_PORTA_1_din,
    PREVIOUS_PORTA_1_en,
    PREVIOUS_PORTA_1_we,
    PREVIOUS_PORTB_1_addr,
    PREVIOUS_PORTB_1_clk,
    PREVIOUS_PORTB_1_dout,
    PREVIOUS_PORTB_1_en,
    UPPER_PORTA_2_addr,
    UPPER_PORTA_2_clk,
    UPPER_PORTA_2_din,
    UPPER_PORTA_2_en,
    UPPER_PORTA_2_we,
    UPPER_PORTB_2_addr,
    UPPER_PORTB_2_clk,
    UPPER_PORTB_2_dout,
    UPPER_PORTB_2_en,
    UPPER_PREVIOUS_PORTA_0_addr,
    UPPER_PREVIOUS_PORTA_0_clk,
    UPPER_PREVIOUS_PORTA_0_din,
    UPPER_PREVIOUS_PORTA_0_en,
    UPPER_PREVIOUS_PORTA_0_we,
    UPPER_PREVIOUS_PORTB_0_addr,
    UPPER_PREVIOUS_PORTB_0_clk,
    UPPER_PREVIOUS_PORTB_0_dout,
    UPPER_PREVIOUS_PORTB_0_en);
    

    
    assign PREVIOUS_PORTA_1_clk=clk;
    assign PREVIOUS_PORTB_1_clk=clk;
    assign UPPER_PORTA_2_clk=clk;
    assign UPPER_PORTB_2_clk=clk;
    assign UPPER_PREVIOUS_PORTA_0_clk=clk;
    assign UPPER_PREVIOUS_PORTB_0_clk=clk;
    
    initial begin
    
    PREVIOUS_PORTA_1_addr=9'd0;
    PREVIOUS_PORTA_1_din=128'd0;
    PREVIOUS_PORTA_1_en=1'b1;
    PREVIOUS_PORTA_1_we=1'b0;
    //PREVIOUS_PORTB_1_addr=9'd0;
    PREVIOUS_PORTB_1_en=1'd1;
    UPPER_PORTA_2_addr=9'd0;
    UPPER_PORTA_2_din=128'd0;
    UPPER_PORTA_2_en=1'b1;
    UPPER_PORTA_2_we=1'b0;
    //UPPER_PORTB_2_addr=9'd0;
    UPPER_PORTB_2_en=1'b1;
    UPPER_PREVIOUS_PORTA_0_addr=9'd0;
    UPPER_PREVIOUS_PORTA_0_din=128'd0;
    UPPER_PREVIOUS_PORTA_0_en=1'b1;
    UPPER_PREVIOUS_PORTA_0_we=1'b0;
    //UPPER_PREVIOUS_PORTB_0_addr=9'd0;
    UPPER_PREVIOUS_PORTB_0_en=1'b1;
    
    
    end
   
        
   
   
   
   
   
   
   
   
   
    

  wire [14:0]BRAM_PORTA_0_addr;
  wire BRAM_PORTA_0_clk;
  wire [127:0]BRAM_PORTA_0_din;
  reg BRAM_PORTA_0_en;
  wire [15:0]BRAM_PORTA_0_we;
  
  
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

    

  reg [13:0]SPRITE_PORTA_0_addr;
  wire SPRITE_PORTA_0_clk;
  reg [127:0]SPRITE_PORTA_0_din;
  reg SPRITE_PORTA_0_en;
  reg [0:0]SPRITE_PORTA_0_we;
  wire [13:0]SPRITE_PORTB_0_addr;
  wire SPRITE_PORTB_0_clk;
  wire [127:0]SPRITE_PORTB_0_dout;
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
    reg[13:0] base_addr_sprite_buffer_copy;
    reg[14:0] base_addr_frame_buffer_copy,base_addr_frame_buffer_copy_to_save;
    reg last=0;
    
    //reg [127:0] partial_frame_buffer [322:0];
    reg cleaning_pfb;
    reg [7:0] h_counter_cleaning;
    
    
    wire [127:0] last_upper;
    wire [127:0] lasti;
    wire [127:0] upper;
    wire [127:0] newi;
    wire [127:0] to_save;
    matrix_operations m_op( last_upper, lasti, upper, newi, h_shift, v_shift, to_save);

    wire[15:0] wei;
    wire[15:0] write_activate;
    assign write_activate={(16){busy_in & ~cleaning_pfb}};
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
        
        SPRITE_PORTA_0_addr=14'b0;
        SPRITE_PORTA_0_din=128'b0;
        SPRITE_PORTA_0_we=1'b0;
        //SPRITE_PORTB_0_addr=14'b0;
        cleaning_pfb=1'b0;
        upper_block_up=1'b0;
     /*   for(i=0;i<162;i=i+1) begin
            partial_frame_buffer[i]<=128'd0;
        end*/
        
        h_counter_cleaning=0;
        //last_upper=128'd0;
        //lasti=128'd0;
        //upper=128'd0;
        //newi=128'd0;
        
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
    
    
    /////////////////////////////////////////////
    reg first_line;
    reg [8:0] upper_addr_write, new_addr_write,upper_previous_addr_read, previous_addr_read;
    
    
    assign PREVIOUS_PORTB_1_addr=previous_addr_read;
    assign UPPER_PORTB_2_addr=upper_previous_addr_read+9'd1;
    assign UPPER_PREVIOUS_PORTB_0_addr=upper_previous_addr_read;
  
    initial begin
        first_line=1'b0;
        upper_addr_write=9'd0;
        new_addr_write=9'd0;
        upper_previous_addr_read=9'd0;
        previous_addr_read=9'd0;
    
    end
    
    /////////////////////////////////////////////
    
    always @(posedge clk) begin
        if(posedge_start==1'b1) begin
            h_counter<=0;
            v_counter<=0;
            h_size_copy<=h_size;
            v_size_copy<=v_size;
            
            begining_of_copy<=1'b1;
            
            
            base_addr_frame_buffer_copy<=base_addr_frame_buffer;
            base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer;
            //base_addr_sprite_buffer_copy<=base_addr_sprite_buffer;
            busy_in<=1'b1;
            last<=1'b0;
            prev_buffer_pos_counter<=0;
            
            shift_edges<=2'b0;
            sprite_buffer_to_remove<=3'd0;
            
            //SPRITE_PORTB_0_addr<=base_addr_sprite_buffer;
            base_addr_sprite_buffer_copy<=base_addr_sprite_buffer;
            
            
            
            
            first_line=1'b1;
            upper_addr_write=9'd161;
            new_addr_write=9'd1;
            upper_previous_addr_read=9'd160;
            previous_addr_read=9'd0;
            
            wait_for_mem<=2'd2;
        end
        
        
        else if(busy_in==1'b1 && last==1'b0) begin
        /*
            if(cleaning_pfb==1'b1) begin
                partial_frame_buffer[h_counter_cleaning]<=128'b0;
                partial_frame_buffer[h_counter_cleaning+160]<=128'b0;
                if(h_counter_cleaning+1>=h_size_copy) begin
                    cleaning_pfb<=1'b0;
                    wait_for_mem<=2'd2;
                    begining_of_copy<=1'b1;
                end
                h_counter_cleaning<=h_counter_cleaning+1;
                
            end
            else begin
            if(begining_of_copy==1'b1) begin
                
            end
            
            else*/
            if(wait_for_mem==2'b0) begin
                
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
                                    base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+160;
                                    base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save+160;
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
                                            base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+160;
                                            base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save+160;
                                        end
                                    end
                                    last<=1'b1;
                                end
                            end
                            
                    end
                    else begin
                        if(v_counter+1<v_size_copy) begin
                            v_counter<=v_counter+1;
                            base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+160;
                            base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save+160;
                            h_counter<=0;
                        end
                        else begin
                            if(v_shift!=0) begin
                                if(shift_edges==2'd0||shift_edges==2'd1)begin
                                    shift_edges<=2'd2;
                                    h_counter<=0;
                                    base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+160;
                                    base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save+160;
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
            
            
            upper_previous_addr_read=upper_previous_addr_read+9'd1;
            previous_addr_read=previous_addr_read+9'd1;
            
            
            
            
            
            
            
            
            if(upper_block_up==1'b1) begin
               /* partial_frame_buffer[prev_buffer_pos_counter+81]<=newi;*/
            end
            else begin
               /* partial_frame_buffer[prev_buffer_pos_counter+1]<=newi;*/
            end
                    
            //SPRITE_PORTB_0_addr<=base_addr_sprite_buffer_copy;
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
    
    assign SPRITE_PORTB_0_addr=base_addr_sprite_buffer_copy;
    
    assign BRAM_PORTA_0_we=wei&write_activate&{(16){~last}};
    assign BRAM_PORTA_0_din=to_save;
    assign BRAM_PORTA_0_addr=base_addr_frame_buffer_copy;
    
    assign upper=UPPER_PORTB_2_dout & {(128){first_line==1'd1}};
    assign last_upper=UPPER_PREVIOUS_PORTB_0_dout & {(128){first_line==1'd1}};
    assign newi=SPRITE_PORTB_0_dout &  {(128){shift_edges==2'd0}};
    assign lasti=PREVIOUS_PORTB_1_dout;
    
    
    
    

endmodule


