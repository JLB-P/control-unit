`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 00:42:14
// Design Name: 
// Module Name: comparador1
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


module comparador1(
    input [9:0] data_in,
    output reg comp
    );
    always @(data_in)
        if (data_in == 0)
            comp = 1;
        else
            comp = 0;
endmodule
