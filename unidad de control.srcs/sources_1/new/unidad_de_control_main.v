`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 00:50:12
// Design Name: 
// Module Name: unidad_de_control_main
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


module unidad_de_control_main(
    input [3:0] N,
    input OPER,
    input CLK,
    output [9:0] RESULT,
    output FINISH
    );
    //contador
    wire wselM2,wenR5,wcomp2;  
    wire [9:0] wmuxout2,wR5,wresta2;
    
    //fibonacci
    wire wset3,wset4,wenR3,wenR4,wfinish;
    wire [9:0] wfib,wR3,wR4;
    
    //sumatoria
    wire wcomp1,wselM1,wenR1,wenR2,woper;
    wire [9:0] wsum5,wsum,wR1,wR2,wresta1,wmuxout1;
    //salida
    wire wmux2x1;
    wire [9:0] wmuxout3;
    //contador
    multiplexor U1({6'b000000,N},wresta2,wselM2,wmuxout2);
    registro U2(wmuxout2,wenR5,CLK,wR5);
    restador U3(wR5,wresta2);
    comparador2 U4(wresta2,wcomp2);
    
    //fibonacci
    control U5(CLK,wmux2x1,OPER,wselM1,wselM2,wset3,wset4,wenR1,wenR2,wenR3,wenR4,wenR5,wfinish);
    registroa U6(wfib,wenR3,wset3,CLK,wR3);
    registroa U7(wR3,wenR4,wset4,CLK,wR4);
    sumador U8(wR3,wR4,wfib);
    
    //sumatoria
    registro U9(wsum,wenR1,CLK,wR1);
    sumador U10({6'b000000,N},10'h5,wsum5); //N+5
    multiplexor U11(wsum5,wresta1,wselM1,wmuxout1);
    registro U12(wmuxout1,wenR2,CLK,wR2);
    sumador U13(wR1,wR2,wsum);
    restador U14(wR2,wresta1);
    comparador1 U15(wresta1,wcomp1);
    //salida
    multiplexor U16(wsum,wfib,OPER,wmuxout3);
    mux2x1 U17(wcomp1,wcomp2,OPER,wmux2x1);
    
    assign RESULT = wmuxout3;
    assign FINISH = wfinish;
    
endmodule
