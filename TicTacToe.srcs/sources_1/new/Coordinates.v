`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2019 04:03:42
// Design Name: 
// Module Name: Coordinates
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

module Coordinates(
               	input [3:0] Coor,
               	input GoOn, output wire [8:0] Pos
            	);
     
     	 


                  	reg[8:0] temp1;
                 	assign Pos = (GoOn==1'b1)?temp1:9'b0;
                           	always @(*)
                                  	begin
                                        	case(Coor)
                                          	4'd1: temp1 <= 9'b000000001;
                                          	4'd2: temp1 <= 9'b000000010;
                                          	4'd3: temp1 <= 9'b000000100;
                                          	4'd4: temp1 <= 9'b000001000;
                                          	4'd5: temp1 <= 9'b000010000;
                                          	4'd6: temp1 <= 9'b000100000;
                                          	4'd7: temp1 <= 9'b001000000;
                                          	4'd8: temp1 <= 9'b010000000;
                                          	4'd9: temp1 <= 9'b100000000;
                                          	default: temp1 <= 9'b000000000;
                                        	endcase
                                   	end	 
                                               	 
endmodule