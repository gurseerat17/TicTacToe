`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.11.2019 23:16:07
// Design Name: 
// Module Name: ComputerTurn_
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

module ComputerTurn_ (
   							 input [1:0] pos1, pos2, pos3, pos4, pos5, pos6, pos7, pos8, pos9,
   							// input [3:0] CompCoor,
   							input clock,
   							 output reg [3:0] counter
   							 
   							 );    
   	 

   		 
 //  		 reg [3:0]counter;
//   		 assign CompCoorAuto=counter;
   		 always@ (posedge clock)
   		 begin
   	    
//   			if(CompGo)
//   				  begin
//   				  if(CompCoor!=4'b0000)
//   					 begin
//   					 counter<=CompCoor;
//   					 end
   					 
//   				  else begin      	 
   							    
   
   				 
   				  if(pos1 == 2'b01 && pos2 == 2'b00 && pos3 == 2'b00 && pos4 == 2'b00 && pos5 == 2'b00 && pos6 == 2'b00 && pos7 == 2'b00 && pos8 == 2'b00 && pos9== 2'b00)
   					  begin
   						  counter<=4'b0101; // pos5
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos2 == 2'b01 && pos3 == 2'b00 && pos4 == 2'b00 && pos5 == 2'b00 && pos6 == 2'b00 && pos7 == 2'b00 && pos8 == 2'b00 && pos9== 2'b00)
   					  begin
   						  counter<=4'b0101; // pos5
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos2 == 2'b00 && pos3 == 2'b01 && pos4 == 2'b00 && pos5 == 2'b00 && pos6 == 2'b00 && pos7 == 2'b00 && pos8 == 2'b00 && pos9== 2'b00)
   					  begin
   						  counter<=4'b0101; // pos5
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos2 == 2'b00 && pos3 == 2'b00 && pos4 == 2'b01 && pos5 == 2'b00 && pos6 == 2'b00 && pos7 == 2'b00 && pos8 == 2'b00 && pos9== 2'b00)
   					  begin
   						  counter<=4'b0101; // pos5
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos2 == 2'b00 && pos3 == 2'b00 && pos4 == 2'b00 && pos5 == 2'b00 && pos6 == 2'b01 && pos7 == 2'b00 && pos8 == 2'b00 && pos9== 2'b00)
   					  begin
   						  counter<=4'b0101; // pos5
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos2 == 2'b00 && pos3 == 2'b00 && pos4 == 2'b00 && pos5 == 2'b00 && pos6 == 2'b00 && pos7 == 2'b01 && pos8 == 2'b00 && pos9== 2'b00)
   					  begin
   						  counter<=4'b0101; // pos5
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos2 == 2'b00 && pos3 == 2'b00 && pos4 == 2'b00 && pos5 == 2'b00 && pos6 == 2'b00 && pos7 == 2'b00 && pos8 == 2'b01 && pos9== 2'b00)
   					  begin
   						  counter<=4'b0101; // pos5
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos2 == 2'b00 && pos3 == 2'b00 && pos4 == 2'b00 && pos5 == 2'b00 && pos6 == 2'b00 && pos7 == 2'b00 && pos8 == 2'b00 && pos9== 2'b01)
   					  begin
   						  counter<=4'b0101; // pos5
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos2 == 2'b00 && pos3 == 2'b00 && pos4 == 2'b00 && pos5 == 2'b01 && pos6 == 2'b00 && pos7 == 2'b00 && pos8 == 2'b00 && pos9== 2'b00)
   					  begin
   						  counter<=4'b0001; // pos1
   					  end
   				 
   				  else if(pos1 == 2'b10 && pos2 == 2'b10 && pos3 == 2'b00)
   					  begin
   						  counter<=4'b0011; // pos3
   					  end
   				 
   				  else if(pos1 == 2'b10 && pos2 == 2'b00 && pos3 == 2'b10)
   					  begin
   						  counter<=4'b0010; //= pos2
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos2 == 2'b10 && pos3 == 2'b10)
   					  begin
   						  counter<=4'b0001; //= pos1
   					  end
   				 
   				  else if(pos4 == 2'b10 && pos5 == 2'b10 && pos6 == 2'b00)
   					  begin
   						  counter<=4'b0110; //= pos6
   					  end
   				 
   				  else if(pos4 == 2'b10 && pos5 == 2'b00 && pos6 == 2'b10)
   					  begin
   						  counter<=4'b0101; //= pos5
   					  end
   				 
   				  else if(pos4 == 2'b00 && pos5 == 2'b10 && pos6 == 2'b10)
   					  begin
   						  counter<=4'b0100; //= pos4
   					  end
   				 
   				  else if(pos7 == 2'b10 && pos8 == 2'b10 && pos9 == 2'b00)
   					  begin
   						  counter<=4'b1001; //= pos9
   					  end
   				 
   				  else if(pos7 == 2'b10 && pos8 == 2'b00 && pos9 == 2'b10)
   					  begin
   						  counter<=4'b1000; //= pos8
   					  end
   				 
   				  else if(pos7 == 2'b00 && pos8 == 2'b10 && pos9 == 2'b10)
   					  begin
   						  counter<=4'b0111; //= pos7
   					  end
   					  
   				  else if(pos1 == 2'b10 && pos4 == 2'b10 && pos7 == 2'b00)
   					  begin
   						  counter<=4'b0111; //= pos7
   					  end
   				 
   				  else if(pos1 == 2'b10 && pos4 == 2'b00 && pos7 == 2'b10)
   					  begin
   						  counter<=4'b0100; //= pos4
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos4 == 2'b10 && pos7 == 2'b10)
   					  begin
   						  counter<=4'b0001; //= pos1
   					  end
   				 
   				  else if(pos2 == 2'b10 && pos5 == 2'b10 && pos8 == 2'b00)
   					  begin
   						  counter<=4'b1000; //= pos8
   					  end
   				 
   				  else if(pos2 == 2'b10 && pos5 == 2'b00 && pos8 == 2'b10)
   					  begin
   						  counter<=4'b0101; //= pos5
   					  end
   				 
   				  else if(pos2 == 2'b00 && pos5 == 2'b10 && pos8 == 2'b10)
   					  begin
   						  counter<=4'b0010; //= pos2
   					  end
   				 
   				  else if(pos3 == 2'b10 && pos6 == 2'b10 && pos9 == 2'b00)
   					  begin
   						  counter<=4'b1001; //= pos9
   					  end
   				 
   				  else if(pos3 == 2'b10 && pos6 == 2'b00 && pos9 == 2'b10)
   					  begin
   						  counter<=4'b0110; //= pos6
   					  end
   				 
   				  else if(pos3 == 2'b00 && pos6 == 2'b10 && pos9 == 2'b10)
   					  begin
   						  counter<=4'b0011; //= pos3
   					  end
   					  
   				  else if(pos1 == 2'b10 && pos5 == 2'b10 && pos9 == 2'b00)
   					  begin
   						  counter<=4'b1001; //= pos9
   					  end
   				 
   				  else if(pos1 == 2'b10 && pos5 == 2'b00 && pos9 == 2'b10)
   					  begin
   						  counter<=4'b0101; //= pos5
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos5 == 2'b10 && pos9 == 2'b10)
   					  begin
   						  counter<=4'b0001; //= pos1
   					  end
   				 
   				  else if(pos3 == 2'b10 && pos5 == 2'b10 && pos7 == 2'b00)
   					  begin
   						  counter<=4'b0111; //= pos7
   					  end
   				 
   				  else if(pos3 == 2'b10 && pos5 == 2'b00 && pos7 == 2'b10)
   					  begin
   						  counter<=4'b0101; //= pos5
   					  end
   				 
   				  else if(pos3 == 2'b00 && pos5 == 2'b10 && pos7 == 2'b10)
   					  begin
   						  counter<=4'b0011; //= pos3
   					  end
   				 
   				  else if(pos1 == 2'b01 && pos2 == 2'b01 && pos3 == 2'b00)
   					  begin
   						  counter<=4'b0011; //= pos3
   					  end
   				 
   				  else if(pos1 == 2'b01 && pos2 == 2'b00 && pos3 == 2'b01)
   					  begin
   						  counter<=4'b0010; //= pos2
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos2 == 2'b01 && pos3 == 2'b01)
   					  begin
   						  counter<=4'b0001; //= pos1
   					  end
   				 
   				  else if(pos4 == 2'b01 && pos5 == 2'b01 && pos6 == 2'b00)
   					  begin
   						  counter<=4'b0110; //= pos6
   					  end
   				 
   				  else if(pos4 == 2'b01 && pos5 == 2'b00 && pos6 == 2'b01)
   					  begin
   						  counter<=4'b0101; //= pos5
   					  end
   				 
   				  else if(pos4 == 2'b00 && pos5 == 2'b01 && pos6 == 2'b01)
   					  begin
   						  counter<=4'b0100; //= pos4
   					  end
   				 
   				  else if(pos7 == 2'b01 && pos8 == 2'b01 && pos9 == 2'b00)
   					  begin
   						  counter<=4'b1001; //= pos9
   					  end
   				 
   				  else if(pos7 == 2'b01 && pos8 == 2'b00 && pos9 == 2'b01)
   					  begin
   						  counter<=4'b1000; //= pos8
   					  end
   				 
   				  else if(pos7 == 2'b00 && pos8 == 2'b01 && pos9 == 2'b01)
   					  begin
   						  counter<=4'b0111; //= pos7
   					  end
   				 
   				  else if(pos1 == 2'b01 && pos4 == 2'b01 && pos7 == 2'b00)
   					  begin
   						  counter<=4'b0111; //= pos7
   					  end
   				 
   				  else if(pos1 == 2'b01 && pos4 == 2'b00 && pos7 == 2'b01)
   					  begin
   						  counter<=4'b0100; //= pos4
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos4 == 2'b01 && pos7 == 2'b01)
   					  begin
   						  counter<=4'b0001; //= pos1
   					  end
   				 
   				  else if(pos2 == 2'b01 && pos5 == 2'b01 && pos8 == 2'b00)
   					  begin
   						  counter<=4'b1000; //= pos8
   					  end
   				 
   				  else if(pos2 == 2'b01 && pos5 == 2'b00 && pos8 == 2'b01)
   					  begin
   						  counter<=4'b0101; //= pos5
   					  end
   				 
   				  else if(pos2 == 2'b00 && pos5 == 2'b01 && pos8 == 2'b01)
   					  begin
   						  counter<=4'b0010; //= pos2
   					  end
   				 
   				  else if(pos3 == 2'b01 && pos6 == 2'b01 && pos9 == 2'b00)
   					  begin
   						  counter<=4'b1001; //= pos9
   					  end
   				 
   				  else if(pos3 == 2'b01 && pos6 == 2'b00 && pos9 == 2'b01)
   					  begin
   						  counter<=4'b0110; //= pos6
   					  end
   				 
   				  else if(pos3 == 2'b00 && pos6 == 2'b01 && pos9 == 2'b01)
   					  begin
   						  counter<=4'b0011; //= pos3
   					  end
   				 
   				 
   				  else if(pos1 == 2'b01 && pos5 == 2'b01 && pos9 == 2'b00)
   					  begin
   						  counter<=4'b1001; //= pos9
   					  end
   				 
   				  else if(pos1 == 2'b01 && pos5 == 2'b00 && pos9 == 2'b01)
   					  begin
   						  counter<=4'b0101; //= pos5
   					  end
   				 
   				  else if(pos1 == 2'b00 && pos5 == 2'b01 && pos9 == 2'b01)
   					  begin
   						  counter<=4'b0001; //= pos1
   					  end
   				 
   				  else if(pos3 == 2'b01 && pos5 == 2'b01 && pos7 == 2'b00)
   					  begin
   						  counter<=4'b0111; //= pos7
   					  end
   				 
   				  else if(pos3 == 2'b01 && pos5 == 2'b00 && pos7 == 2'b01)
   					  begin
   						  counter<=4'b0101; //= pos5
   					  end
   				 
   				  else if(pos3 == 2'b00 && pos5 == 2'b01 && pos7 == 2'b01)
   					  begin
   						  counter<=4'b0011; //= pos3
   					  end
   				 
   				  else if(pos5 == 2'b10 && pos1 == 2'b01 && pos9 == 2'b01)
   					  begin
   						  counter<=4'b0010; //= pos2
   					  end
   				 
   				  else if(pos5 == 2'b10 && pos2 == 2'b01 && pos8 == 2'b01)
   					  begin
   						  counter<=4'b0100; //= pos4
   					  end
   				 
   				  else if(pos5 == 2'b10 && pos3 == 2'b01 && pos7 == 2'b01)
   					  begin
   						  counter<=4'b0010; //= pos2
   					  end
   				 
   				  else if(pos5 == 2'b10 && pos4 == 2'b01 && pos6 == 2'b01)
   					  begin
   						  counter<=4'b0010; //= pos2
   					  end
   				 
   				  else if(pos1 == 2'b10 && pos5 == 2'b01 && pos9 == 2'b01)
   					  begin
   						  counter<=4'b0011; //= pos3
   					  end
   				 
   				  else if(pos1 == 2'b00)
   					  begin
   						  counter<=4'b0001; //= pos1
   					  end
   				 
   				  else if(pos2 == 2'b00)
   					  begin
   						  counter<=4'b0010; //= pos2
   					  end
   				 
   				  else if(pos3 == 2'b00)
   					  begin
   						  counter<=4'b0011; //= pos3
   					  end
   				 
   				  else if(pos4 == 2'b00)
   					  begin
   						  counter<=4'b0100; //= pos4
   					  end
   				 
   				  else if(pos5 == 2'b00)
   					  begin
   						  counter<=4'b0101; //= pos5
   					  end
   				 
   				  else if(pos6 == 2'b00)
   					  begin
   						  counter<=4'b0110; //= pos6
   					  end
   				 
   				  else if(pos7 == 2'b00)
   					  begin
   						  counter<=4'b0111; //= pos7
   					  end
   				 
   				  else if(pos8 == 2'b00)
   					  begin
   						  counter<=4'b1000; //= pos8
   					  end
   				 
   				  else if(pos9 == 2'b00)
   					  begin
   						  counter<=4'b1001; //= pos9
   					  end

  // 		 end
   		 end
//   		 end
   	 

    endmodule

