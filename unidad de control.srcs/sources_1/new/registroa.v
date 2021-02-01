`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 00:36:18
// Design Name: 
// Module Name: registroa
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


module registroa(
    input [9:0] data_in,
    input enable,
    input set,
    input clk,
    output reg [9:0] data_out
    );
    initial data_out = 0;
    
    always @(posedge clk)
    if (enable==1)
        begin
          if (set)
            data_out = 1;
          else data_out = data_in;
        end
    else data_out = data_out;
endmodule
