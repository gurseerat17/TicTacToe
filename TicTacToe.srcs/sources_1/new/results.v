`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2019 03:14:17
// Design Name: 
// Module Name: winner_detect_3
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

module results(     input [1:0] p0,
                 	input [1:0]p1,
                 	input [1:0] p2,	 
                	output wire winner,
                	output wire [1:0]WhoWon
            	);
  wire [1:0] w1,w2,w3;
  wire w;
  assign w1[1] = !(p0[1]^p1[1]);
  assign w1[0] = !(p0[0]^p1[0]);
  assign w2[1] = !(p2[1]^p1[1]);
  assign w2[0] = !(p2[0]^p1[0]);
  assign w3[1] = w1[1] & w2[1];
  assign w3[0] = w1[0] & w2[0];
  assign w = p0[1] | p0[0];
  
  assign winner = w & w3[1] & w3[0];
  
  assign WhoWon[1] = winner & p0[1];
  assign WhoWon[0] = winner & p0[0];
 
endmodule
