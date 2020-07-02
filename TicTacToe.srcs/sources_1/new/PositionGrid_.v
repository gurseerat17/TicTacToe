`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.11.2019 03:10:59
// Design Name: 
// Module Name: PositionGrid_
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

module PositionGrid_(

      	      input clock, 
      input reset, 
      input invalid, 
      input [8:0] CompGO, 
      input [8:0] MyGO, 
      input [1:0] who,
      input gridFull,
      output reg[1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9
      );
      
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos1 <= 2'b00;
  else begin
   if(invalid==1'b1)
    pos1 <= pos1;
   else if(CompGO[0]==1'b1)
    pos1 <= 2'b10; 
   else if (MyGO[0]==1'b1)
    pos1 <= 2'b01;
   else if(who==2'b10)
    pos1 <= 2'b10;
         else if(gridFull==1)
          pos1 <= 2'b11;
   else if(who==2'b01)
    pos1 <= 2'b01;
   else 
    pos1 <= pos1;
  end 
 end 
 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos2 <= 2'b00;
  else begin
   if(invalid==1'b1)
    pos2 <= pos2;
   else if(CompGO[1]==1'b1)
    pos2 <= 2'b10; 
   else if (MyGO[1]==1'b1)
    pos2 <= 2'b01;
     else if(who==2'b10)
      pos2 <= 2'b10;
               else if(gridFull==1)
                pos2 <= 2'b11;
    else if(who==2'b01)
     pos2 <= 2'b01;
   else 
    pos2 <= pos2;
  end 
 end 

 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos3 <= 2'b00;
  else begin
   if(invalid==1'b1)
    pos3 <= pos3;
   else if(CompGO[2]==1'b1)
    pos3 <= 2'b10;  
   else if (MyGO[2]==1'b1)
    pos3 <= 2'b01;
     else if(who==2'b10)
      pos3 <= 2'b10;
           else if(gridFull==1)
             pos3 <= 2'b11; 
        else if(who==2'b01)
         pos3 <= 2'b01;
   else 
    pos3 <= pos3;
  end 
 end  
  
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos4 <= 2'b00;
  else begin
   if(invalid==1'b1)
    pos4 <= pos4;
   else if(CompGO[3]==1'b1)
    pos4 <= 2'b10; 
   else if (MyGO[3]==1'b1)
    pos4 <= 2'b01;
     else if(who==2'b10)
      pos4 <= 2'b10;
           else if(gridFull==1)
            pos4 <= 2'b11;
        else if(who==2'b01)
         pos4 <= 2'b01;
   else 
    pos4 <= pos4;
  end 
 end 
 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos5 <= 2'b00;
  else begin
   if(invalid==1'b1)
    pos5 <= pos5;
   else if(CompGO[4]==1'b1)
    pos5 <= 2'b10;
   else if (MyGO[4]==1'b1)
    pos5 <= 2'b01;
     else if(who==2'b10)
      pos5 <= 2'b10;
           else if(gridFull==1)
            pos5 <= 2'b11;
        else if(who==2'b01)
         pos5 <= 2'b01;
   else 
    pos5 <= pos5;
  end 
 end 
 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos6 <= 2'b00;
  else begin
   if(invalid==1'b1)
    pos6 <= pos6;
   else if(CompGO[5]==1'b1)
    pos6 <= 2'b10;
   else if (MyGO[5]==1'b1)
    pos6 <= 2'b01;
     else if(who==2'b10)
      pos6 <= 2'b10;
           else if(gridFull==1)
            pos6 <= 2'b11; 
        else if(who==2'b01)
         pos6 <= 2'b01;
   else 
    pos6 <= pos6;
  end 
 end 
 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos7 <= 2'b00;
  else begin
   if(invalid==1'b1)
    pos7 <= pos7;
   else if(CompGO[6]==1'b1)
    pos7 <= 2'b10;
   else if (MyGO[6]==1'b1)
    pos7 <= 2'b01;
     else if(who==2'b10)
      pos7 <= 2'b10;
           else if(gridFull==1)
            pos7 <= 2'b11;
        else if(who==2'b01)
         pos7 <= 2'b01;
   else 
    pos7 <= pos7;
  end 
 end 
 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos8 <= 2'b00;
  else begin
   if(invalid==1'b1)
    pos8 <= pos8;
   else if(CompGO[7]==1'b1)
    pos8 <= 2'b10;
   else if (MyGO[7]==1'b1)
    pos8 <= 2'b01;
     else if(who==2'b10)
      pos8 <= 2'b10; 
      else if(gridFull==1)
       pos8 <= 2'b11;
        else if(who==2'b01)
         pos8 <= 2'b01;
   else 
    pos8 <= pos8;
  end 
 end 
 
 always @(posedge clock or posedge reset)
 begin
  if(reset) 
   pos9 <= 2'b00;
  else begin
   if(invalid==1'b1)
    pos9 <= pos9;
   else if(CompGO[8]==1'b1)
    pos9 <= 2'b10;
   else if (MyGO[8]==1'b1)
    pos9 <= 2'b01;
     else if(who==2'b10)
      pos9 <= 2'b10;
      else if(gridFull==1)
       pos9 <= 2'b11;
      else if(who==2'b01)
       pos9 <= 2'b01; 
   else 
    pos9 <= pos9;
  end 
 end  
endmodule 

