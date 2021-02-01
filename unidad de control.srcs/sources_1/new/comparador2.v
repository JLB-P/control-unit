`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 00:37:45
// Design Name: 
// Module Name: comparador2
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


module comparador2(
    input [9:0] data_in,
    output reg comp
    );
    always @(data_in)
        if (data_in == 2)
            comp = 1;
        else
            comp = 0;
endmodule
