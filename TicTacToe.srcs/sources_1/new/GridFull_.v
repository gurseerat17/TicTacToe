module GridFull_(
                	input [1:0]p1, p2, p3, p4, p5, p6, p7, p8, p9, output  wire gridFull                           	 
                  	);
                       	 
                       	 
                  	assign gridFull = (  ( 	p1[1]	|	p1[0]	) &	( 	p2[1]	|	p2[0]    	) &   
                 	(	p3[1]	|	p3[0]	)	& ( 	p4[1]	|	p4[0] )	& ( 	p5[1]	|	p5[0]   )	&
            	( 	p6[1]	|	p6[0]   )  &  ( 	p7[1]	|	p7[0]	) &	( 	p8[1]	|	p8[0]   )   &
                 	(   p9[1]	|	p9[0]   )	);
                       	 
                       	 
	endmodule                   	 