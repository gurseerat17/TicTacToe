`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2019 04:45:38 AM
// Design Name: 
// Module Name: System
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
module System(
     input clock, 
     input reset, 
     input myGo, 
     input compGo, 
     input [3:0] MyCoor, 
     
     output wire [1:0] pos1,pos2,pos3,
     pos4,pos5,pos6,pos7,pos8,pos9,
      
     output wire[1:0]who 
    
     );
     
     wire [3:0] CompCoorAuto;
 wire [8:0] CompGO;
 wire [8:0] MyGO; 
 wire invalid; 
 wire result; 
 wire CompTurn; 
 wire MyTurn; 
 wire gridFull;  
  PositionGrid_ PositionGrid(
      clock,  
      reset, 
      invalid, 
      CompGO[8:0],
      MyGO[8:0], 
      who[1:0],
      gridFull,
      pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9
      );
 ResultStatus_ ResultStatus(pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,result,who);
 ComputerTurn_ ComputerTurn(
        pos1,pos2,pos3,
      pos4,pos5,pos6,pos7,pos8,pos9,
      clock,
      CompCoorAuto
      );
  
 Coordinates CoordinatesComp(CompCoorAuto,CompTurn,CompGO);
 
 Coordinates CoordinatesMy   (MyCoor,MyTurn,MyGO); 
 
  InvalidDetector_ InvalidDetector(
   pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
   CompGO[8:0], MyGO[8:0], 
   invalid
   );
 
 GridFull_ GridFull(
   pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9, 
   gridFull
    ); 
 StateMachine_ StateMachine(
     clock,
     reset,
     myGo, 
     compGo,
     invalid, 
     gridFull, 
     result, 
     CompTurn, 
     MyTurn 
     );    
endmodule 