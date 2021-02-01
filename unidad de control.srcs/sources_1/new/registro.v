`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 00:33:13
// Design Name: 
// Module Name: registro
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


module registro(
    input [9:0] data_in,
    input enable,
    input clk,
    output reg[9:0] data_out
    );
    initial data_out = 0;
    
    always @(posedge clk)
    if (enable == 1)
        data_out = data_in;
    else
        data_out = data_out;
endmodule
