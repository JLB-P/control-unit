`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.11.2020 00:08:32
// Design Name: 
// Module Name: control
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


module control(
    input clk,
    input comp,
    input oper,
    output reg selM1, //sumatoria
    output reg selM2,
    output reg set3,
    output reg set4,
    output reg enR1, //sumatoria
    output reg enR2, //sumatoria
    output reg enR3, 
    output reg enR4, 
    output reg enR5,
    output reg finish
    );
    parameter INICIO = 3'b001, SUMA = 3'b010, FIB = 3'b011, FIN = 3'b100;
    reg [2:0] estado_actual, estado_siguiente;
    
    initial estado_actual = INICIO;
    
    always @(posedge clk)
    estado_actual = estado_siguiente;
    
    always @(estado_actual,comp)
        case (estado_actual)
            INICIO: begin
                        if (oper ==0)
                            estado_siguiente = SUMA;
                        else
                            estado_siguiente = FIB;
                    end
            SUMA: begin
                    if (comp == 0)
                        estado_siguiente = SUMA;
                    else
                        estado_siguiente = FIN;
                  end
            FIB:  begin
                    if (comp == 0)
                        estado_siguiente = FIB;
                    else
                        estado_siguiente = FIN;
                  end
            FIN: estado_siguiente = FIN;
        endcase
        
    always @(estado_actual)
        case (estado_actual)
            INICIO: begin
                        if (oper==0)
                            begin
                                selM1 = 0;
                                enR1 = 0;
                                enR2 = 1;
                            end
                        else begin
                                selM2 = 0;
                                enR5 = 1;
                                set3 = 1;
                                set4 = 0;
                                enR3 = 1;
                                enR4 = 0;
                             end
                        finish = 0;
                    end
            SUMA:   begin
                     selM1 = 1;
                     enR1 = 1;
                     enR2 = 1;
                     finish = 0;
                    end
            FIB:   begin
                    selM2 = 1;
                    enR5 = 1;
                    set3 = 0;
                    set4 = 0;
                    enR3 = 1;
                    enR4 = 1;
                    finish = 0;
                   end                    
            FIN: begin
                  if (oper==0)
                        begin
                        selM1 = 1;
                        enR1 = 0;
                        enR2 = 0;
                        end
                        else begin
                                selM2 = 0;
                                enR5 = 0;
                                set3 = 0;
                                set4 = 0;
                                enR3 = 0;
                                enR4 = 0;
                             end
                        finish = 1;      
                 end
        endcase
endmodule
