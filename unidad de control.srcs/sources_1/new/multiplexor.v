`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 00:31:05
// Design Name: 
// Module Name: multiplexor
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


module multiplexor(
    input [9:0] dato0,
    input [9:0] dato1,
    input sel,
    output reg [9:0] data_out
    );
    always @(sel,dato0,dato1)
    case (sel)
        1'b0: data_out = dato0;
        1'b1: data_out = dato1;
    endcase
endmodule
