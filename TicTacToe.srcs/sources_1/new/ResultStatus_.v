
module ResultStatus_(input [1:0]  Posn1, Posn2, Posn3, Posn4, Posn5, Posn6, Posn7, Posn8, Posn9,    
   				 output wire result,
   				 output wire [1:0]WhoWon
   				 );
  wire [8:1]win;
  wire [1:0] whowon1,whowon2,whowon3,whowon4,whowon5,whowon6,whowon7,whowon8;
 results r1(Posn1,Posn4,Posn7,win[4],whowon1);// (1,4,7)
 results r2(Posn2,Posn5,Posn8,win[5],whowon2);// (2,5,8)
 results r3(Posn3,Posn6,Posn9,win[6],whowon3);// (3,6,9)
 results r4(Posn3,Posn5,Posn7,win[8],whowon4);// (3,5,7)
 results r5(Posn1,Posn5,Posn9,win[7],whowon5);// (1,5,9)
 results r6(Posn1,Posn2,Posn3,win[1],whowon6);// (1,2,3)
 results r7(Posn4,Posn5,Posn6,win[2],whowon7);// (4,5,6)
 results r8(Posn7,Posn8,Posn9,win[3],whowon8);// (7,8,9)
 
	assign result = (win[1] | win[2]  | win[3]  | win[4]  | win[5]  | win[6]  | win[7] | win[8] );
	assign WhoWon = (whowon1 | whowon2 | whowon3 | whowon4 | whowon5 | whowon6 |	whowon7 | whowon8);

//    if(result ==1)
//    begin
//        Posn1<=WhoWon;
//        Posn2<=WhoWon;
//        Posn3<=WhoWon;
//        Posn4<=WhoWon;  
//        Posn5<=WhoWon;
//        Posn6<=WhoWon;
//            Posn7<=WhoWon;
//        Posn8<=WhoWon;  

//    end




endmodule