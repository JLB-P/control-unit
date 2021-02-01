`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 03:01:30
// Design Name: 
// Module Name: mux2x1
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


module mux2x1(
    input dato0,
    input dato1,
    input sel,
    output reg data_out
    );
    always @(sel,dato0,dato1)
    case (sel)
        1'b0: data_out = dato0;
        1'b1: data_out = dato1;
    endcase
endmodule
