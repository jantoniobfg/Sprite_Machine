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


module memory_manager_512(input clk,input reset, output resetin,  input start, input[12:0] base_addr_frame_buffer, input[7:0] h_size, input[7:0] v_size, input[11:0] base_addr_sprite_buffer, input[2:0] h_shift, input[2:0] v_shift, output reg busy_in,
                      input[511:0] sprite_in, input[11:0] sprite_address, input sprite_write,
                      input [12:0]BRAM_PORTB_0_addr, output [511:0]BRAM_PORTB_0_dout);

   
    wire [7:0]UPPER_PORTA_2_addr;
    wire UPPER_PORTA_2_clk;
    wire [511:0]UPPER_PORTA_2_din;
    reg UPPER_PORTA_2_en;
    wire [0:0]UPPER_PORTA_2_we;
    wire [7:0]UPPER_PORTB_2_addr;
    wire UPPER_PORTB_2_clk;
    wire [511:0]UPPER_PORTB_2_dout;
    reg UPPER_PORTB_2_en;
    wire [7:0]UPPER_PREVIOUS_PORTA_0_addr;
    wire UPPER_PREVIOUS_PORTA_0_clk;
    wire [511:0]UPPER_PREVIOUS_PORTA_0_din;
    reg UPPER_PREVIOUS_PORTA_0_en;
    wire [0:0]UPPER_PREVIOUS_PORTA_0_we;
    wire [7:0]UPPER_PREVIOUS_PORTB_0_addr;
    wire UPPER_PREVIOUS_PORTB_0_clk;
    wire [511:0]UPPER_PREVIOUS_PORTB_0_dout;
    reg UPPER_PREVIOUS_PORTB_0_en;
    
  
    

    

    assign UPPER_PORTA_2_clk=clk;
    assign UPPER_PORTB_2_clk=clk;
    assign UPPER_PREVIOUS_PORTA_0_clk=clk;
    assign UPPER_PREVIOUS_PORTB_0_clk=clk;
    
    
   
        
   
   
   
   
   
   
   
   
   
    

  wire [12:0]BRAM_PORTA_0_addr;
  wire BRAM_PORTA_0_clk;
  wire [511:0]BRAM_PORTA_0_din;
  reg BRAM_PORTA_0_en;
  wire [63:0]BRAM_PORTA_0_we;
  
  
  wire BRAM_PORTB_0_clk;
 
  reg BRAM_PORTB_0_en;
  
  assign BRAM_PORTA_0_clk=clk;
  assign BRAM_PORTB_0_clk=clk;
  
  


  reg [11:0]SPRITE_PORTA_0_addr;
  wire SPRITE_PORTA_0_clk;
  reg [511:0]SPRITE_PORTA_0_din;
  reg SPRITE_PORTA_0_en;
  reg [0:0]SPRITE_PORTA_0_we;
  wire [11:0]SPRITE_PORTB_0_addr;
  wire SPRITE_PORTB_0_clk;
  wire [511:0]SPRITE_PORTB_0_dout;
  reg SPRITE_PORTB_0_en;
  
  assign SPRITE_PORTA_0_clk=clk;
  assign SPRITE_PORTB_0_clk=clk;

 Rams_512_wrapper rams
  (BRAM_PORTA_0_addr,
   BRAM_PORTA_0_clk,
   BRAM_PORTA_0_din,
   BRAM_PORTA_0_en,
   BRAM_PORTA_0_we,
   BRAM_PORTB_0_addr,
   BRAM_PORTB_0_clk,
   BRAM_PORTB_0_dout,
   BRAM_PORTB_0_en,
   SPRITE_PORTA_0_addr,
    SPRITE_PORTA_0_clk,
    SPRITE_PORTA_0_din,
    SPRITE_PORTA_0_en,
    SPRITE_PORTA_0_we,
    SPRITE_PORTB_0_addr,
    SPRITE_PORTB_0_clk,
    SPRITE_PORTB_0_dout,
    SPRITE_PORTB_0_en,
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

  
    reg start_d=0;
    reg posedge_start=1'b0;
    always @ (negedge clk) begin
        start_d<=start;
        posedge_start<=start && ~ start_d;
    end
    
    
    reg reset_d;
    reg posedge_reset;

    
    /*always @ (negedge clk) begin
        reset_d<=reset;
        posedge_reset<=reset && ~ reset_d;
    end
    */

    reg[7:0] h_counter,v_counter,h_size_copy,v_size_copy, h_counter_cond;
    reg[11:0] base_addr_sprite_buffer_copy;
    reg[12:0] base_addr_frame_buffer_copy,base_addr_frame_buffer_copy_to_save;
    reg last=0;
    reg cleaning_pfb;
    reg [7:0] h_counter_cleaning;
    
    reg[1:0] shift_edges;
    reg first_line;
    
    
    wire [511:0] last_upper;
    wire [511:0] lasti;
    wire [511:0] upper;
    wire [511:0] newi;
    wire [511:0] to_save;
    reg [511:0] PREVIOUS_REG;
    
    
    assign upper=UPPER_PORTB_2_dout & {(512){!(first_line==1'd1)}};
    assign last_upper=UPPER_PREVIOUS_PORTB_0_dout & {(512){!(first_line==1'd1)}};
    assign newi=SPRITE_PORTB_0_dout &  {(512){shift_edges==2'd0}};
    assign lasti=PREVIOUS_REG;
    
    matrix_operations_512 m_op( last_upper, lasti, upper, newi, h_shift, v_shift, to_save);

    wire[63:0] wei;
    
    write_enable_512 we1 ( to_save,  wei);
    
    reg upper_block_high,read_upper_block_high;
    
    reg[1:0] wait_for_mem;
    
    
    
    
    
    reg reseting;
    
    wire[8:0] jump_addr_cond;
    
    reg[2:0] sprite_buffer_to_remove=0;
    reg [8:0] new_addr_write,upper_previous_addr_read;
    
    assign resetin=reseting;
    
    initial begin
        UPPER_PORTA_2_en<=1'b1;
    
        UPPER_PORTB_2_en<=1'b1;
    
        UPPER_PREVIOUS_PORTA_0_en<=1'b1;
    
    
        UPPER_PREVIOUS_PORTB_0_en<=1'b1;
        
        reset_d<=1'd0;
        posedge_reset<=1'd1;
    
        busy_in<=1'b0;
        BRAM_PORTA_0_en<=1'b1;
        BRAM_PORTB_0_en<=1'b1;
        SPRITE_PORTA_0_en<=1'b1;
        SPRITE_PORTB_0_en<=1'b1;
        
        SPRITE_PORTA_0_addr<=13'b0;
        SPRITE_PORTA_0_din<=512'b0;
        SPRITE_PORTA_0_we<=1'b0;

        cleaning_pfb<=1'b0;
        upper_block_high<=1'b0;
        read_upper_block_high<=1'b1;

        h_counter_cleaning<=0;

        
        h_counter<=0;
        v_counter<=0;
        h_size_copy<=0;
        v_size_copy<=0;
        base_addr_sprite_buffer_copy<=0;
        base_addr_frame_buffer_copy<=0;
        base_addr_frame_buffer_copy_to_save<=0;
        last<=0;
        
        wait_for_mem<=2'b0;
        
        
        
        shift_edges<=2'b0;
        PREVIOUS_REG<=512'd0;
        
        
        
        h_counter_cond<=0;
        reseting<=1'b0;
        
        first_line<=1'b0;
        
        new_addr_write<=9'd1;
        upper_previous_addr_read<=9'd0;
    end
  
    
    
    
    
    
    /////////////////////////////////////////////
    
    //, previous_addr_read;
    
    
    //assign PREVIOUS_PORTB_1_addr=previous_addr_read;
    assign UPPER_PORTB_2_addr=upper_previous_addr_read+9'd1;
    assign UPPER_PREVIOUS_PORTB_0_addr=upper_previous_addr_read;
    
    
    //assign PREVIOUS_PORTA_1_addr=new_addr_write;
    assign UPPER_PORTA_2_din=newi;
    assign UPPER_PORTA_2_addr=new_addr_write;
    assign UPPER_PREVIOUS_PORTA_0_din=newi;
    assign UPPER_PREVIOUS_PORTA_0_addr=new_addr_write;
  
  
    
    assign jump_addr_cond=h_counter_cond+1-(h_shift!=0);
    
    
    /////////////////////////////////////////////
    
 
    
    
    
    always @(posedge clk) begin
        if(posedge_reset==1'd1)begin
                reseting<=1'd1;
                base_addr_frame_buffer_copy<=0;
                base_addr_sprite_buffer_copy<=0;
                new_addr_write<=0;
                posedge_reset<=1'd0;
            end
            
        else if(reseting==1'd1) begin
            if(base_addr_frame_buffer_copy==4800)begin
                reseting<=0;
            end
            else begin
                base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy+1;
                base_addr_sprite_buffer_copy<=base_addr_sprite_buffer_copy+1;
                new_addr_write<=new_addr_write+1;
            end
        
        end
        
        else if(posedge_start==1'b1) begin
            h_counter<=0;
            v_counter<=0;
            h_size_copy<=h_size;
            v_size_copy<=v_size;
            
            
            
            
            base_addr_frame_buffer_copy<=base_addr_frame_buffer;
            base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer;
            //base_addr_sprite_buffer_copy<=base_addr_sprite_buffer;
            busy_in<=1'b1;
            last<=1'b0;
            
            
            shift_edges<=2'b0;
            //sprite_buffer_to_remove<=3'd0;
            
            //SPRITE_PORTB_0_addr<=base_addr_sprite_buffer;
            base_addr_sprite_buffer_copy<=base_addr_sprite_buffer;
            
            
            
            
            first_line<=1'b1;
            
            new_addr_write<=9'd1;
            upper_previous_addr_read<=9'd80;
            //previous_addr_read=9'd0;
            
            wait_for_mem<=2'd2;
            upper_block_high<=1'b1;
            read_upper_block_high<=1'b1;
            
            
            h_counter_cond<=7'd0;
            PREVIOUS_REG<=512'd0;
        end
        
        
        else if(busy_in==1'b1 && last==1'b0) begin
                        
            if(h_shift!=0) begin
                if(jump_addr_cond+1!=h_size_copy)begin
                    base_addr_sprite_buffer_copy<=base_addr_sprite_buffer_copy+1;
                end
            end
            
            else begin
                base_addr_sprite_buffer_copy<=base_addr_sprite_buffer_copy+1;
            end
            
            if(jump_addr_cond==h_size_copy) begin
               
            
                if(read_upper_block_high==1'b1)begin
                    upper_previous_addr_read<=9'd0;
                    read_upper_block_high<=1'b0;
                    
                end
                else begin
                    upper_previous_addr_read<=9'd80;
                    read_upper_block_high<=1'b1;
                    
                    
                end
                h_counter_cond<=0;
            end
            
            else begin
                upper_previous_addr_read<=upper_previous_addr_read+9'd1;
                h_counter_cond<=h_counter_cond+1;
                //base_addr_sprite_buffer_copy<=base_addr_sprite_buffer_copy+1;
                
            end
        
            if(wait_for_mem!=2'b0) begin
            
                PREVIOUS_REG<=0;
                wait_for_mem<=wait_for_mem-1; 
               
                
            end
            else begin
                PREVIOUS_REG<=newi;
                new_addr_write<=new_addr_write+1;
                
                
                
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
                                h_counter<=h_counter+1;
                                //new_addr_write<=new_addr_write+1;
                                base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy+1;
                               
                                
                                
                                
                            end
                            
                            else begin
                                if(v_counter+1<v_size_copy) begin
                                    //new_addr_write<=new_addr_write+1;
                                    v_counter<=v_counter+1;
                                    h_counter<=0;
                                    first_line<=0;
                                    base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+80;
                                    base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save+80;
                                    if(shift_edges==2'd1) begin
                                        shift_edges<=2'd0;
                                        //wait_for_mem<=2'd2;//////ATENÇÃO VERIFICAR FUNCIONAMENTO
                                        
                                        //base_addr_sprite_buffer_copy<=base_addr_sprite_buffer_copy-2;
                                    end
                                    
                                    if(upper_block_high==1'b1) begin
                                        new_addr_write<=9'd81;
                                        upper_block_high<=1'b0;
                                    end
                                    
                                    else begin
                                        new_addr_write<=9'd1;
                                        upper_block_high<=1'b1;
                                    end
                                    
                                end
                                else begin
                                    if(v_shift!=0) begin
                                        if(upper_block_high==1'b1) begin
                                        new_addr_write<=9'd81;
                                        upper_block_high<=~upper_block_high;
                                        end
                                    
                                        else begin
                                            new_addr_write<=9'd1;
                                            upper_block_high<=~upper_block_high;
                                        end
                                        //new_addr_write<=new_addr_write+1;
                                        if(shift_edges==2'd0||shift_edges==2'd1)begin
                                            shift_edges<=2'd2;
                                            h_counter<=0;
                                            base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+80;
                                            base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save+80;
                                        end
                                    end
                                    else begin
                                        last<=1'b1;
                                    end
                                end
                            end
                            
                    end
                    else begin
                        if(v_counter+1<v_size_copy) begin
                            v_counter<=v_counter+1;
                            base_addr_frame_buffer_copy<=base_addr_frame_buffer_copy_to_save+80;
                            base_addr_frame_buffer_copy_to_save<=base_addr_frame_buffer_copy_to_save+80;
                            h_counter<=0;
                            if(upper_block_high==1'b1) begin
                                new_addr_write<=9'd81;
                                upper_block_high<=~upper_block_high;
                            end
                            
                            else begin
                                new_addr_write<=9'd1;
                                upper_block_high<=~upper_block_high;
                            end
                        end
                        else begin
                            if(v_shift!=0) begin
                                if(upper_block_high==1'b1) begin
                                    new_addr_write<=9'd81;
                                    upper_block_high<=~upper_block_high;
                                end
                                
                                else begin
                                    new_addr_write<=9'd1;
                                    upper_block_high<=~upper_block_high;
                                end
                            
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
    
    
    

    
   
    assign UPPER_PORTA_2_we=busy_in | reseting;
    assign UPPER_PREVIOUS_PORTA_0_we=busy_in | reseting;
    
    assign SPRITE_PORTB_0_addr=base_addr_sprite_buffer_copy;
    
    assign BRAM_PORTA_0_we=(wei & {(64){busy_in }} & {(64){~last}}) | {(64){reseting}};
    assign BRAM_PORTA_0_din=to_save&{(512){!reseting}};
    assign BRAM_PORTA_0_addr=base_addr_frame_buffer_copy;
    
    
    
    
    
    

endmodule


