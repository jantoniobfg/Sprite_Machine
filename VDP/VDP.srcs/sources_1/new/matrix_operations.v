`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2022 14:13:02
// Design Name: 
// Module Name: matrix_operations
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
module matrix_operations(input [127:0] last_upper, input [127:0] last, input[127:0] upper, input [127:0] new, input[2:0] h_shifta, input[2:0] v_shifta, output reg [127:0] to_save);

    wire[1:0] h_shift,v_shift;
    
    assign h_shift=h_shifta[1:0];
    assign v_shift=v_shifta[1:0];
    
    wire [31:0] last_upper_bytes [3:0];
    wire [31:0] last_bytes [3:0];
    wire [31:0] new_bytes [3:0];
    wire [31:0] upper_bytes [3:0];
    
    
    assign upper_bytes [0] = upper[31:0];
    assign upper_bytes [1] = upper[63:32];
    assign upper_bytes [2] = upper[95:64];
    assign upper_bytes [3] = upper[127:96];
    
    
    
    assign last_upper_bytes [0] = last_upper[31:0];
    assign last_upper_bytes [1] = last_upper[63:32];
    assign last_upper_bytes [2] = last_upper[95:64];
    assign last_upper_bytes [3] = last_upper[127:96];
    
    
    assign last_bytes [0] = last[31:0];
    assign last_bytes [1] = last[63:32];
    assign last_bytes [2] = last[95:64];
    assign last_bytes [3] = last[127:96];

    
    assign new_bytes [0] = new[31:0];
    assign new_bytes [1] = new[63:32];
    assign new_bytes [2] = new[95:64];
    assign new_bytes [3] = new[127:96];

    
    
    wire [127:0] h0_v0;
    assign h0_v0={new_bytes[3],new_bytes[2],new_bytes[1],new_bytes[0]};
    wire [127:0] h0_v1;
    assign h0_v1={new_bytes[2],new_bytes[1],new_bytes[0],upper_bytes [3]};
    wire [127:0] h0_v2;
    assign h0_v2={new_bytes[1],new_bytes[0],upper_bytes[3],upper_bytes [2]};
    wire [127:0] h0_v3;
    assign h0_v3={new_bytes[0],upper_bytes[3],upper_bytes [2],upper_bytes [1]};
    
    
    wire [127:0] h1_v0;
    assign h1_v0={new_bytes[3][31:8],last_bytes[3][31:24],new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24]};
    wire [127:0] h1_v1;
    assign h1_v1={new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[3][31:8],last_upper_bytes[3][31:24]};
    wire [127:0] h1_v2;
    assign h1_v2={new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[3][31:8],last_upper_bytes[3][31:24],upper_bytes[2][31:8],last_upper_bytes[2][31:24]};
    wire [127:0] h1_v3;
    assign h1_v3={new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[3][31:8],last_upper_bytes[3][31:24],upper_bytes[2][31:8],last_upper_bytes[2][31:24],upper_bytes[1][31:8],last_upper_bytes[1][31:24]};
    

    wire [127:0] h2_v0;
    assign h2_v0={new_bytes[3][31:16],last_bytes[3][31:16],new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16]};
    wire [127:0] h2_v1;
    assign h2_v1={new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[3][31:16],last_upper_bytes[3][31:16]};
    wire [127:0] h2_v2;
    assign h2_v2={new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[3][31:16],last_upper_bytes[3][31:16],upper_bytes[2][31:16],last_upper_bytes[2][31:16]};
    wire [127:0] h2_v3;
    assign h2_v3={new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[3][31:16],last_upper_bytes[3][31:16],upper_bytes[2][31:16],last_upper_bytes[2][31:16],upper_bytes[1][31:16],last_upper_bytes[1][31:16]};
    
    wire [127:0] h3_v0;
    assign h3_v0={new_bytes[3][31:24],last_bytes[3][31:8],new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8]};
    wire [127:0] h3_v1;
    assign h3_v1={new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[3][31:24],last_upper_bytes[3][31:8]};
    wire [127:0] h3_v2;
    assign h3_v2={new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[3][31:24],last_upper_bytes[3][31:8],upper_bytes[2][31:24],last_upper_bytes[2][31:8]};
    wire [127:0] h3_v3;
    assign h3_v3={new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[3][31:24],last_upper_bytes[3][31:8],upper_bytes[2][31:24],last_upper_bytes[2][31:8],upper_bytes[1][31:24],last_upper_bytes[1][31:8]};
    
    always @ * begin
        case(h_shift) 
            2'd0:
                    case(v_shift) 
                       2'd0: to_save=h0_v0; 
                       2'd1: to_save=h0_v1; 
                       2'd2: to_save=h0_v2;
                       2'd3: to_save=h0_v3;
                       
                  
                    endcase
                    
            2'd1:
                    case(v_shift) 
                       2'd0: to_save=h1_v0; 
                       2'd1: to_save=h1_v1; 
                       2'd2: to_save=h1_v2;
                       2'd3: to_save=h1_v3;
                       
                  
                    endcase
            2'd2:
                    case(v_shift) 
                       2'd0: to_save=h2_v0; 
                       2'd1: to_save=h2_v1; 
                       2'd2: to_save=h2_v2;
                       2'd3: to_save=h2_v3;

                  
                    endcase
            2'd3:
                    case(v_shift) 
                       2'd0: to_save=h3_v0; 
                       2'd1: to_save=h3_v1; 
                       2'd2: to_save=h3_v2;
                       2'd3: to_save=h3_v3;
                       
                  
                    endcase
       
         endcase
        
    
    end
endmodule

