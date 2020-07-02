module StateMachine_(
     input clock,
     input reset, 
     myGo,  
     compGo,
     invalid,
     gridFull, 
     result, 
     output reg CompTurn, 
     MyTurn 
     );

parameter INTERMEDIATE=2'b00;
parameter PLAYER=2'b01;
parameter COMPUTER=2'b10;
parameter END_GAME=2'b11;
reg[1:0] current_state, next_state;

always @(posedge clock or posedge reset) 
begin 
 if(reset)
  current_state <= INTERMEDIATE;
 else 
  current_state <= next_state;
end 

always @(*)
 begin
 case(current_state)
 INTERMEDIATE: begin 
  if(reset==1'b0 && myGo == 1'b1)
   next_state <= PLAYER;  
  else 
   next_state <= INTERMEDIATE;
  MyTurn <= 1'b0;
  CompTurn <= 1'b0;
 end 
 PLAYER:begin 
  MyTurn <= 1'b1;
  CompTurn <= 1'b0;
  if(invalid==1'b0)
   next_state <= COMPUTER; 
  else 
   next_state <= INTERMEDIATE;
 end 
 COMPUTER:begin 
  MyTurn <= 1'b0;
  if(compGo==1'b0) begin 
   next_state <= COMPUTER;
   CompTurn <= 1'b0;
  end
  else if(result==1'b0 && gridFull == 1'b0)
  begin 
   next_state <= INTERMEDIATE;
   CompTurn <= 1'b1;
  end 
  else if(gridFull == 1 || result ==1'b1)
  begin 
   next_state <= END_GAME;
   CompTurn <= 1'b1;
  end  
 end 
 END_GAME:begin 
  MyTurn <= 1'b0;
  CompTurn <= 1'b0; 
  if(reset==1'b1) 
   next_state <= INTERMEDIATE;
  else 
   next_state <= END_GAME;  
 end 
 default: next_state <= INTERMEDIATE; 
 endcase
 end
endmodule 