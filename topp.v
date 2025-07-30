`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.07.2025 10:17:59
// Design Name: 
// Module Name: topp
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


module topp(
    input  clk ,
    input  reset,
    input  btnL,btnR,btnU,btnD,
    output h_sync,
    output v_sync,
    output [3:0] vgaRed,
    output [3:0] vgaGreen,
    output [3:0] vgaBlue
  
    );
    
 wire clk_148Mhz ;
 wire buton_apasatL, buton_apasatR, buton_apasatU, buton_apasatD;
 wire signed [11:0] x_pos, y_pos;


  
 design_1_wrapper design_1_wrapper_i(
         .clk_in1_0 (clk),
         .clk_out1_0(clk_148Mhz),
         .reset_0   (reset)
         );
        
        
        
 vga_sync vga_inst (
        .clk_148Mhz (clk_148Mhz),
        .reset     (reset)     ,
        .h_sync    (h_sync)    ,
        .v_sync    (v_sync)    ,
        .red       (vgaRed)    ,
        .green     (vgaGreen)  ,
        .blue      (vgaBlue)   ,
        .x_pos     (x_pos)     ,
        .y_pos     (y_pos)
         
    );
    



detector_front df_left (
    .clk_148Mhz(clk_148Mhz),
    .reset(reset),
    .btn(btnL),       // stanga
    .btn_apasat(btn_apasatL)
);

detector_front df_right (
    .clk_148Mhz(clk_148Mhz),
    .reset(reset),
    .btn(btnR),       // dreapta
    .btn_apasat(btn_apasatR)
);

detector_front df_up (
    .clk_148Mhz(clk_148Mhz),
    .reset(reset),
    .btn(btnU),       // sus
    .btn_apasat(btn_apasatU)
);

detector_front df_down (
    .clk_148Mhz(clk_148Mhz),
    .reset(reset),
    .btn(btnD),       // jos
    .btn_apasat(btn_apasatD)
);

controller_patrat controller_patr (
    .clk_148Mhz(clk_148Mhz),
    .reset(reset),
    .buton_apasatL( btn_apasatL),
    .buton_apasatR(btn_apasatR),
    .buton_apasatU(btn_apasatU),
    .buton_apasatD(btn_apasatD),
    .x_pos(x_pos),
    .y_pos(y_pos)
    
    );
    
endmodule
