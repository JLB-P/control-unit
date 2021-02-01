`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 00:57:04
// Design Name: 
// Module Name: unidad_de_control_main_tb
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


module unidad_de_control_main_tb;
//inputs
reg [3:0] N;
reg OPER;
reg CLK;

//outputs
wire [3:0] N;
wire OPER;
wire [9:0] RESULT;
wire FINISH;

//instantiate the Unit Under Test
unidad_de_control_main uut (
    .N(N),
    .OPER(OPER),
    .CLK(CLK),
    .RESULT(RESULT),
    .FINISH(FINISH)
 );
    
 initial begin
    //Initialize inputs
    N = 15;
    OPER = 1;
    CLK = 0;
    //Wait 100 ns for global reset to finish
    #20;
    //Add stimulus here
    forever
    begin
    CLK = ~CLK;
    #20;
    end
 end    
endmodule
