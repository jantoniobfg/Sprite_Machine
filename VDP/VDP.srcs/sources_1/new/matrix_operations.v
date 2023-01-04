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

/*module matrix_operations(input [513:0] last_upper, input [513:0] last, input[513:0] upper, input [513:0] new, input[2:0] h_shift, input[2:0] v_shift, output reg [513:0] to_save);

    wire [63:0] last_upper_bytes [7:0];
    wire [63:0] last_bytes [7:0];
    wire [63:0] new_bytes [7:0];
    wire [63:0] upper_bytes [7:0];
    
    
    assign upper_bytes [0] = upper[63:0];
    assign upper_bytes [1] = upper[127:64];
    assign upper_bytes [2] = upper[191:128];
    assign upper_bytes [3] = upper[255:192];
    assign upper_bytes [4] = upper[319:256];
    assign upper_bytes [5] = upper[383:320];
    assign upper_bytes [6] = upper[447:384];
    assign upper_bytes [7] = upper[511:448];
    
    
    assign last_upper_bytes [0] = last_upper[63:0];
    assign last_upper_bytes [1] = last_upper[127:64];
    assign last_upper_bytes [2] = last_upper[191:128];
    assign last_upper_bytes [3] = last_upper[255:192];
    assign last_upper_bytes [4] = last_upper[319:256];
    assign last_upper_bytes [5] = last_upper[383:320];
    assign last_upper_bytes [6] = last_upper[447:384];
    assign last_upper_bytes [7] = last_upper[511:448];
    
    assign last_bytes [0] = last[63:0];
    assign last_bytes [1] = last[127:64];
    assign last_bytes [2] = last[191:128];
    assign last_bytes [3] = last[255:192];
    assign last_bytes [4] = last[319:256];
    assign last_bytes [5] = last[383:320];
    assign last_bytes [6] = last[447:384];
    assign last_bytes [7] = last[511:448];
    
    assign new_bytes [0] = new[63:0];
    assign new_bytes [1] = new[127:64];
    assign new_bytes [2] = new[191:128];
    assign new_bytes [3] = new[255:192];
    assign new_bytes [4] = new[319:256];
    assign new_bytes [5] = new[383:320];
    assign new_bytes [6] = new[447:384];
    assign new_bytes [7] = new[511:448];
    
    
    wire [513:0] h0_v0;
    assign h0_v0={new_bytes[7],new_bytes[6],new_bytes[5],new_bytes[4],new_bytes[3],new_bytes[2],new_bytes[1],new_bytes[0]};
    wire [513:0] h0_v1;
    assign h0_v1={new_bytes[6],new_bytes[5],new_bytes[4],new_bytes[3],new_bytes[2],new_bytes[1],new_bytes[0],upper [7]};
    wire [513:0] h0_v2;
    assign h0_v2={new_bytes[5],new_bytes[4],new_bytes[3],new_bytes[2],new_bytes[1],new_bytes[0],upper[7],upper [6]};
    wire [513:0] h0_v3;
    assign h0_v3={new_bytes[4],new_bytes[3],new_bytes[2],new_bytes[1],new_bytes[0],upper[7],upper [6],upper [5]};
    wire [513:0] h0_v4;
    assign h0_v4={new_bytes[3],new_bytes[2],new_bytes[1],new_bytes[0],upper[7],upper [6],upper [5],upper [4]};
    wire [513:0] h0_v5;
    assign h0_v5={new_bytes[2],new_bytes[1],new_bytes[0],upper[7],upper [6],upper [5],upper [4],upper [3]};
    wire [513:0] h0_v6;
    assign h0_v6={new_bytes[1],new_bytes[0],upper[7],upper [6],upper [5],upper [4],upper [3],upper [2]};
    wire [513:0] h0_v7;
    assign h0_v7={new_bytes[0],upper[7],upper [6],upper [5],upper [4],upper [3],upper[2],upper[1]};
    
    wire [513:0] h1_v0;
    assign h1_v0={new_bytes[7][31:8],last_bytes[7][31:24],new_bytes[6][31:8],last_bytes[6][31:24],new_bytes[5][31:8],last_bytes[5][31:24],new_bytes[4][31:8],last_bytes[4][31:24],new_bytes[3][31:8],last_bytes[3][31:24],new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24]};
    wire [513:0] h1_v1;
    assign h1_v1={new_bytes[6][31:8],last_bytes[6][31:24],new_bytes[5][31:8],last_bytes[5][31:24],new_bytes[4][31:8],last_bytes[4][31:24],new_bytes[3][31:8],last_bytes[3][31:24],new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24]};
    wire [513:0] h1_v2;
    assign h1_v2={new_bytes[5][31:8],last_bytes[5][31:24],new_bytes[4][31:8],last_bytes[4][31:24],new_bytes[3][31:8],last_bytes[3][31:24],new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24]};
    wire [513:0] h1_v3;
    assign h1_v3={new_bytes[4][31:8],last_bytes[4][31:24],new_bytes[3][31:8],last_bytes[3][31:24],new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24],upper_bytes[5][31:8],last_upper_bytes[5][31:24]};
    wire [513:0] h1_v4;
    assign h1_v4={new_bytes[3][31:8],last_bytes[3][31:24],new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24],upper_bytes[5][31:8],last_upper_bytes[5][31:24],upper_bytes[4][31:8],last_upper_bytes[4][31:24]};
    wire [513:0] h1_v5;
    assign h1_v5={new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24],upper_bytes[5][31:8],last_upper_bytes[5][31:24],upper_bytes[4][31:8],last_upper_bytes[4][31:24],upper_bytes[3][31:8],last_upper_bytes[3][31:24]};
    wire [513:0] h1_v6;
    assign h1_v6={new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24],upper_bytes[5][31:8],last_upper_bytes[5][31:24],upper_bytes[4][31:8],last_upper_bytes[4][31:24],upper_bytes[3][31:8],last_upper_bytes[3][31:24],upper_bytes[2][31:8],last_upper_bytes[2][31:24]};
    wire [513:0] h1_v7;
    assign h1_v7={new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24],upper_bytes[5][31:8],last_upper_bytes[5][31:24],upper_bytes[4][31:8],last_upper_bytes[4][31:24],upper_bytes[3][31:8],last_upper_bytes[3][31:24],upper_bytes[2][31:8],last_upper_bytes[2][31:24],upper_bytes[1][31:8],last_upper_bytes[1][31:24]};

    wire [513:0] h2_v0;
    assign h2_v0={new_bytes[7][31:16],last_bytes[7][31:16],new_bytes[6][31:16],last_bytes[6][31:16],new_bytes[5][31:16],last_bytes[5][31:16],new_bytes[4][31:16],last_bytes[4][31:16],new_bytes[3][31:16],last_bytes[3][31:16],new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16]};
    wire [513:0] h2_v1;
    assign h2_v1={new_bytes[6][31:16],last_bytes[6][31:16],new_bytes[5][31:16],last_bytes[5][31:16],new_bytes[4][31:16],last_bytes[4][31:16],new_bytes[3][31:16],last_bytes[3][31:16],new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16]};
    wire [513:0] h2_v2;
    assign h2_v2={new_bytes[5][31:16],last_bytes[5][31:16],new_bytes[4][31:16],last_bytes[4][31:16],new_bytes[3][31:16],last_bytes[3][31:16],new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16]};
    wire [513:0] h2_v3;
    assign h2_v3={new_bytes[4][31:16],last_bytes[4][31:16],new_bytes[3][31:16],last_bytes[3][31:16],new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16],upper_bytes[5][31:16],last_upper_bytes[5][31:16]};
    wire [513:0] h2_v4;
    assign h2_v4={new_bytes[3][31:16],last_bytes[3][31:16],new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16],upper_bytes[5][31:16],last_upper_bytes[5][31:16],upper_bytes[4][31:16],last_upper_bytes[4][31:16]};
    wire [513:0] h2_v5;
    assign h2_v5={new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16],upper_bytes[5][31:16],last_upper_bytes[5][31:16],upper_bytes[4][31:16],last_upper_bytes[4][31:16],upper_bytes[3][31:16],last_upper_bytes[3][31:16]};
    wire [513:0] h2_v6;
    assign h2_v6={new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16],upper_bytes[5][31:16],last_upper_bytes[5][31:16],upper_bytes[4][31:16],last_upper_bytes[4][31:16],upper_bytes[3][31:16],last_upper_bytes[3][31:16],upper_bytes[2][31:16],last_upper_bytes[2][31:16]};
    wire [513:0] h2_v7;
    assign h2_v7={new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16],upper_bytes[5][31:16],last_upper_bytes[5][31:16],upper_bytes[4][31:16],last_upper_bytes[4][31:16],upper_bytes[3][31:16],last_upper_bytes[3][31:16],upper_bytes[2][31:16],last_upper_bytes[2][31:16],upper_bytes[1][31:16],last_upper_bytes[1][31:16]};

    wire [513:0] h3_v0;
    assign h3_v0={new_bytes[7][31:24],last_bytes[7][31:8],new_bytes[6][31:24],last_bytes[6][31:8],new_bytes[5][31:24],last_bytes[5][31:8],new_bytes[4][31:24],last_bytes[4][31:8],new_bytes[3][31:24],last_bytes[3][31:8],new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8]};
    wire [513:0] h3_v1;
    assign h3_v1={new_bytes[6][31:24],last_bytes[6][31:8],new_bytes[5][31:24],last_bytes[5][31:8],new_bytes[4][31:24],last_bytes[4][31:8],new_bytes[3][31:24],last_bytes[3][31:8],new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8]};
    wire [513:0] h3_v2;
    assign h3_v2={new_bytes[5][31:24],last_bytes[5][31:8],new_bytes[4][31:24],last_bytes[4][31:8],new_bytes[3][31:24],last_bytes[3][31:8],new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8]};
    wire [513:0] h3_v3;
    assign h3_v3={new_bytes[4][31:24],last_bytes[4][31:8],new_bytes[3][31:24],last_bytes[3][31:8],new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8],upper_bytes[5][31:24],last_upper_bytes[5][31:8]};
    wire [513:0] h3_v4;
    assign h3_v4={new_bytes[3][31:24],last_bytes[3][31:8],new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8],upper_bytes[5][31:24],last_upper_bytes[5][31:8],upper_bytes[4][31:24],last_upper_bytes[4][31:8]};
    wire [513:0] h3_v5;
    assign h3_v5={new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8],upper_bytes[5][31:24],last_upper_bytes[5][31:8],upper_bytes[4][31:24],last_upper_bytes[4][31:8],upper_bytes[3][31:24],last_upper_bytes[3][31:8]};
    wire [513:0] h3_v6;
    assign h3_v6={new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8],upper_bytes[5][31:24],last_upper_bytes[5][31:8],upper_bytes[4][31:24],last_upper_bytes[4][31:8],upper_bytes[3][31:24],last_upper_bytes[3][31:8],upper_bytes[2][31:24],last_upper_bytes[2][31:8]};
    wire [513:0] h3_v7;
    assign h3_v7={new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8],upper_bytes[5][31:24],last_upper_bytes[5][31:8],upper_bytes[4][31:24],last_upper_bytes[4][31:8],upper_bytes[3][31:24],last_upper_bytes[3][31:8],upper_bytes[2][31:24],last_upper_bytes[2][31:8],upper_bytes[1][31:24],last_upper_bytes[1][31:8]};

    wire [513:0] h4_v0;
    assign h4_v0={new_bytes[7][63:32],last_bytes[7][63:32],new_bytes[6][63:32],last_bytes[6][63:32],new_bytes[5][63:32],last_bytes[5][63:32],new_bytes[4][63:32],last_bytes[4][63:32],new_bytes[3][63:32],last_bytes[3][63:32],new_bytes[2][63:32],last_bytes[2][63:32],new_bytes[1][63:32],last_bytes[1][63:32],new_bytes[0][63:32],last_bytes[0][63:32]};
    wire [513:0] h4_v1;
    assign h4_v1={new_bytes[6][63:32],last_bytes[6][63:32],new_bytes[5][63:32],last_bytes[5][63:32],new_bytes[4][63:32],last_bytes[4][63:32],new_bytes[3][63:32],last_bytes[3][63:32],new_bytes[2][63:32],last_bytes[2][63:32],new_bytes[1][63:32],last_bytes[1][63:32],new_bytes[0][63:32],last_bytes[0][63:32],upper_bytes[7][63:32],last_upper_bytes[7][63:32]};
    wire [513:0] h4_v2;
    assign h4_v2={new_bytes[5][63:32],last_bytes[5][63:32],new_bytes[4][63:32],last_bytes[4][63:32],new_bytes[3][63:32],last_bytes[3][63:32],new_bytes[2][63:32],last_bytes[2][63:32],new_bytes[1][63:32],last_bytes[1][63:32],new_bytes[0][63:32],last_bytes[0][63:32],upper_bytes[7][63:32],last_upper_bytes[7][63:32],upper_bytes[6][63:32],last_upper_bytes[6][63:32]};
    wire [513:0] h4_v3;
    assign h4_v3={new_bytes[4][63:32],last_bytes[4][63:32],new_bytes[3][63:32],last_bytes[3][63:32],new_bytes[2][63:32],last_bytes[2][63:32],new_bytes[1][63:32],last_bytes[1][63:32],new_bytes[0][63:32],last_bytes[0][63:32],upper_bytes[7][63:32],last_upper_bytes[7][63:32],upper_bytes[6][63:32],last_upper_bytes[6][63:32],upper_bytes[5][63:32],last_upper_bytes[5][63:32]};
    wire [513:0] h4_v4;
    assign h4_v4={new_bytes[3][63:32],last_bytes[3][63:32],new_bytes[2][63:32],last_bytes[2][63:32],new_bytes[1][63:32],last_bytes[1][63:32],new_bytes[0][63:32],last_bytes[0][63:32],upper_bytes[7][63:32],last_upper_bytes[7][63:32],upper_bytes[6][63:32],last_upper_bytes[6][63:32],upper_bytes[5][63:32],last_upper_bytes[5][63:32],upper_bytes[4][63:32],last_upper_bytes[4][63:32]};
    wire [513:0] h4_v5;
    assign h4_v5={new_bytes[2][63:32],last_bytes[2][63:32],new_bytes[1][63:32],last_bytes[1][63:32],new_bytes[0][63:32],last_bytes[0][63:32],upper_bytes[7][63:32],last_upper_bytes[7][63:32],upper_bytes[6][63:32],last_upper_bytes[6][63:32],upper_bytes[5][63:32],last_upper_bytes[5][63:32],upper_bytes[4][63:32],last_upper_bytes[4][63:32],upper_bytes[3][63:32],last_upper_bytes[3][63:32]};
    wire [513:0] h4_v6;
    assign h4_v6={new_bytes[1][63:32],last_bytes[1][63:32],new_bytes[0][63:32],last_bytes[0][63:32],upper_bytes[7][63:32],last_upper_bytes[7][63:32],upper_bytes[6][63:32],last_upper_bytes[6][63:32],upper_bytes[5][63:32],last_upper_bytes[5][63:32],upper_bytes[4][63:32],last_upper_bytes[4][63:32],upper_bytes[3][63:32],last_upper_bytes[3][63:32],upper_bytes[2][63:32],last_upper_bytes[2][63:32]};
    wire [513:0] h4_v7;
    assign h4_v7={new_bytes[0][63:32],last_bytes[0][63:32],upper_bytes[7][63:32],last_upper_bytes[7][63:32],upper_bytes[6][63:32],last_upper_bytes[6][63:32],upper_bytes[5][63:32],last_upper_bytes[5][63:32],upper_bytes[4][63:32],last_upper_bytes[4][63:32],upper_bytes[3][63:32],last_upper_bytes[3][63:32],upper_bytes[2][63:32],last_upper_bytes[2][63:32],upper_bytes[1][63:32],last_upper_bytes[1][63:32]};

    wire [513:0] h5_v0;
    assign h5_v0={new_bytes[7][31:8],last_bytes[7][31:24],new_bytes[6][31:8],last_bytes[6][31:24],new_bytes[5][31:8],last_bytes[5][31:24],new_bytes[4][31:8],last_bytes[4][31:24],new_bytes[3][31:8],last_bytes[3][31:24],new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24]};
    wire [513:0] h5_v1;
    assign h5_v1={new_bytes[6][31:8],last_bytes[6][31:24],new_bytes[5][31:8],last_bytes[5][31:24],new_bytes[4][31:8],last_bytes[4][31:24],new_bytes[3][31:8],last_bytes[3][31:24],new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24]};
    wire [513:0] h5_v2;
    assign h5_v2={new_bytes[5][31:8],last_bytes[5][31:24],new_bytes[4][31:8],last_bytes[4][31:24],new_bytes[3][31:8],last_bytes[3][31:24],new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24]};
    wire [513:0] h5_v3;
    assign h5_v3={new_bytes[4][31:8],last_bytes[4][31:24],new_bytes[3][31:8],last_bytes[3][31:24],new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24],upper_bytes[5][31:8],last_upper_bytes[5][31:24]};
    wire [513:0] h5_v4;
    assign h5_v4={new_bytes[3][31:8],last_bytes[3][31:24],new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24],upper_bytes[5][31:8],last_upper_bytes[5][31:24],upper_bytes[4][31:8],last_upper_bytes[4][31:24]};
    wire [513:0] h5_v5;
    assign h5_v5={new_bytes[2][31:8],last_bytes[2][31:24],new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24],upper_bytes[5][31:8],last_upper_bytes[5][31:24],upper_bytes[4][31:8],last_upper_bytes[4][31:24],upper_bytes[3][31:8],last_upper_bytes[3][31:24]};
    wire [513:0] h5_v6;
    assign h5_v6={new_bytes[1][31:8],last_bytes[1][31:24],new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24],upper_bytes[5][31:8],last_upper_bytes[5][31:24],upper_bytes[4][31:8],last_upper_bytes[4][31:24],upper_bytes[3][31:8],last_upper_bytes[3][31:24],upper_bytes[2][31:8],last_upper_bytes[2][31:24]};
    wire [513:0] h5_v7;
    assign h5_v7={new_bytes[0][31:8],last_bytes[0][31:24],upper_bytes[7][31:8],last_upper_bytes[7][31:24],upper_bytes[6][31:8],last_upper_bytes[6][31:24],upper_bytes[5][31:8],last_upper_bytes[5][31:24],upper_bytes[4][31:8],last_upper_bytes[4][31:24],upper_bytes[3][31:8],last_upper_bytes[3][31:24],upper_bytes[2][31:8],last_upper_bytes[2][31:24],upper_bytes[1][31:8],last_upper_bytes[1][31:24]};

    wire [513:0] h6_v0;
    assign h6_v0={new_bytes[7][31:16],last_bytes[7][31:16],new_bytes[6][31:16],last_bytes[6][31:16],new_bytes[5][31:16],last_bytes[5][31:16],new_bytes[4][31:16],last_bytes[4][31:16],new_bytes[3][31:16],last_bytes[3][31:16],new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16]};
    wire [513:0] h6_v1;
    assign h6_v1={new_bytes[6][31:16],last_bytes[6][31:16],new_bytes[5][31:16],last_bytes[5][31:16],new_bytes[4][31:16],last_bytes[4][31:16],new_bytes[3][31:16],last_bytes[3][31:16],new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16]};
    wire [513:0] h6_v2;
    assign h6_v2={new_bytes[5][31:16],last_bytes[5][31:16],new_bytes[4][31:16],last_bytes[4][31:16],new_bytes[3][31:16],last_bytes[3][31:16],new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16]};
    wire [513:0] h6_v3;
    assign h6_v3={new_bytes[4][31:16],last_bytes[4][31:16],new_bytes[3][31:16],last_bytes[3][31:16],new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16],upper_bytes[5][31:16],last_upper_bytes[5][31:16]};
    wire [513:0] h6_v4;
    assign h6_v4={new_bytes[3][31:16],last_bytes[3][31:16],new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16],upper_bytes[5][31:16],last_upper_bytes[5][31:16],upper_bytes[4][31:16],last_upper_bytes[4][31:16]};
    wire [513:0] h6_v5;
    assign h6_v5={new_bytes[2][31:16],last_bytes[2][31:16],new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16],upper_bytes[5][31:16],last_upper_bytes[5][31:16],upper_bytes[4][31:16],last_upper_bytes[4][31:16],upper_bytes[3][31:16],last_upper_bytes[3][31:16]};
    wire [513:0] h6_v6;
    assign h6_v6={new_bytes[1][31:16],last_bytes[1][31:16],new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16],upper_bytes[5][31:16],last_upper_bytes[5][31:16],upper_bytes[4][31:16],last_upper_bytes[4][31:16],upper_bytes[3][31:16],last_upper_bytes[3][31:16],upper_bytes[2][31:16],last_upper_bytes[2][31:16]};
    wire [513:0] h6_v7;
    assign h6_v7={new_bytes[0][31:16],last_bytes[0][31:16],upper_bytes[7][31:16],last_upper_bytes[7][31:16],upper_bytes[6][31:16],last_upper_bytes[6][31:16],upper_bytes[5][31:16],last_upper_bytes[5][31:16],upper_bytes[4][31:16],last_upper_bytes[4][31:16],upper_bytes[3][31:16],last_upper_bytes[3][31:16],upper_bytes[2][31:16],last_upper_bytes[2][31:16],upper_bytes[1][31:16],last_upper_bytes[1][31:16]};

    wire [513:0] h7_v0;
    assign h7_v0={new_bytes[7][31:24],last_bytes[7][31:8],new_bytes[6][31:24],last_bytes[6][31:8],new_bytes[5][31:24],last_bytes[5][31:8],new_bytes[4][31:24],last_bytes[4][31:8],new_bytes[3][31:24],last_bytes[3][31:8],new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8]};
    wire [513:0] h7_v1;
    assign h7_v1={new_bytes[6][31:24],last_bytes[6][31:8],new_bytes[5][31:24],last_bytes[5][31:8],new_bytes[4][31:24],last_bytes[4][31:8],new_bytes[3][31:24],last_bytes[3][31:8],new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8]};
    wire [513:0] h7_v2;
    assign h7_v2={new_bytes[5][31:24],last_bytes[5][31:8],new_bytes[4][31:24],last_bytes[4][31:8],new_bytes[3][31:24],last_bytes[3][31:8],new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8]};
    wire [513:0] h7_v3;
    assign h7_v3={new_bytes[4][31:24],last_bytes[4][31:8],new_bytes[3][31:24],last_bytes[3][31:8],new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8],upper_bytes[5][31:24],last_upper_bytes[5][31:8]};
    wire [513:0] h7_v4;
    assign h7_v4={new_bytes[3][31:24],last_bytes[3][31:8],new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8],upper_bytes[5][31:24],last_upper_bytes[5][31:8],upper_bytes[4][31:24],last_upper_bytes[4][31:8]};
    wire [513:0] h7_v5;
    assign h7_v5={new_bytes[2][31:24],last_bytes[2][31:8],new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8],upper_bytes[5][31:24],last_upper_bytes[5][31:8],upper_bytes[4][31:24],last_upper_bytes[4][31:8],upper_bytes[3][31:24],last_upper_bytes[3][31:8]};
    wire [513:0] h7_v6;
    assign h7_v6={new_bytes[1][31:24],last_bytes[1][31:8],new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8],upper_bytes[5][31:24],last_upper_bytes[5][31:8],upper_bytes[4][31:24],last_upper_bytes[4][31:8],upper_bytes[3][31:24],last_upper_bytes[3][31:8],upper_bytes[2][31:24],last_upper_bytes[2][31:8]};
    wire [513:0] h7_v7;
    assign h7_v7={new_bytes[0][31:24],last_bytes[0][31:8],upper_bytes[7][31:24],last_upper_bytes[7][31:8],upper_bytes[6][31:24],last_upper_bytes[6][31:8],upper_bytes[5][31:24],last_upper_bytes[5][31:8],upper_bytes[4][31:24],last_upper_bytes[4][31:8],upper_bytes[3][31:24],last_upper_bytes[3][31:8],upper_bytes[2][31:24],last_upper_bytes[2][31:8],upper_bytes[1][31:24],last_upper_bytes[1][31:8]};

    always @ * begin
        case(h_shift) 
            3'd0:
                    case(v_shift) 
                       3'd0: to_save=h0_v0; 
                       3'd1: to_save=h0_v1; 
                       3'd2: to_save=h0_v2;
                       3'd3: to_save=h0_v3;
                       3'd4: to_save=h0_v4;
                       3'd5: to_save=h0_v5;
                       3'd6: to_save=h0_v6;
                       3'd7: to_save=h0_v7;
                  
                    endcase
                    
            3'd1:
                    case(v_shift) 
                       3'd0: to_save=h1_v0; 
                       3'd1: to_save=h1_v1; 
                       3'd2: to_save=h1_v2;
                       3'd3: to_save=h1_v3;
                       3'd4: to_save=h1_v4;
                       3'd5: to_save=h1_v5;
                       3'd6: to_save=h1_v6;
                       3'd7: to_save=h1_v7;
                  
                    endcase
            3'd2:
                    case(v_shift) 
                       3'd0: to_save=h2_v0; 
                       3'd1: to_save=h2_v1; 
                       3'd2: to_save=h2_v2;
                       3'd3: to_save=h2_v3;
                       3'd4: to_save=h2_v4;
                       3'd5: to_save=h2_v5;
                       3'd6: to_save=h2_v6;
                       3'd7: to_save=h2_v7;
                  
                    endcase
            3'd3:
                    case(v_shift) 
                       3'd0: to_save=h3_v0; 
                       3'd1: to_save=h3_v1; 
                       3'd2: to_save=h3_v2;
                       3'd3: to_save=h3_v3;
                       3'd4: to_save=h3_v4;
                       3'd5: to_save=h3_v5;
                       3'd6: to_save=h3_v6;
                       3'd7: to_save=h3_v7;
                  
                    endcase
            3'd4:
                    case(v_shift) 
                       3'd0: to_save=h4_v0; 
                       3'd1: to_save=h4_v1; 
                       3'd2: to_save=h4_v2;
                       3'd3: to_save=h4_v3;
                       3'd4: to_save=h4_v4;
                       3'd5: to_save=h4_v5;
                       3'd6: to_save=h4_v6;
                       3'd7: to_save=h4_v7;
                  
                    endcase
                    
            3'd5:
                    case(v_shift) 
                       3'd0: to_save=h5_v0; 
                       3'd1: to_save=h5_v1; 
                       3'd2: to_save=h5_v2;
                       3'd3: to_save=h5_v3;
                       3'd4: to_save=h5_v4;
                       3'd5: to_save=h5_v5;
                       3'd6: to_save=h5_v6;
                       3'd7: to_save=h5_v7;
                  
                    endcase
            3'd6:
                    case(v_shift) 
                       3'd0: to_save=h6_v0; 
                       3'd1: to_save=h6_v1; 
                       3'd2: to_save=h6_v2;
                       3'd3: to_save=h6_v3;
                       3'd4: to_save=h6_v4;
                       3'd5: to_save=h6_v5;
                       3'd6: to_save=h6_v6;
                       3'd7: to_save=h6_v7;
                  
                    endcase
            3'd7:
                    case(v_shift) 
                       3'd0: to_save=h7_v0; 
                       3'd1: to_save=h7_v1; 
                       3'd2: to_save=h7_v2;
                       3'd3: to_save=h7_v3;
                       3'd4: to_save=h7_v4;
                       3'd5: to_save=h7_v5;
                       3'd6: to_save=h7_v6;
                       3'd7: to_save=h7_v7;
                  
                    endcase
         endcase
        
    
    end
endmodule
*/