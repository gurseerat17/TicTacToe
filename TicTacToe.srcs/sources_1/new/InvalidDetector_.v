module InvalidDetector_(
                          	input [1:0]p0,p1, p2, p3, p4, p5, p6, p7, p8,
                          	input [8:0] compPos, myPos,
                          	output wire invalid                   	 
                    	);
                       	 
    	wire [8:0] a;
    	wire [8:0] b;   	 
    	wire A,B;
   	 
    	assign a[0]  = (	p0[0]    	|	p0[1]    	)	&	myPos[0]	;
    	assign a[1]  = (	p1[0]    	|	p1[1]    	)	&	myPos[1]	;
    	assign a[2]  = (	p2[0]    	|	p2[1]    	)	&   myPos[2]	;
    	assign a[3]  = (	p3[0]    	|	p3[1]    	)	&	myPos[3]	;
    	assign a[4]  = (	p4[0]    	|	p4[1]    	)	&	myPos[4]	;
    	assign a[5]  = (	p5[0]    	|	p5[1]    	)	&	myPos[5]	;
    	assign a[6]  = (	p6[0]    	|	p6[1]    	)	&	myPos[6]	;
    	assign a[7]  = (	p7[0]    	|	p7[1]    	)	&   myPos[7]	;
    	assign a[8]  = (	p8[0]    	|	p8[1]    	)	&	myPos[8]	;
   	 
    	assign b[0]  = (	p0[0]    	|	p0[1]    	)	&	compPos[0]	;
    	assign b[1]  = (	p1[0]    	|	p1[1]    	)	&	compPos[1]	;
    	assign b[2]  = (	p2[0]    	|	p2[1]    	)	&   compPos[2]	;
    	assign b[3]  = (	p3[0]    	|	p3[1]    	)	&	compPos[3]	;
    	assign b[4]  = (	p4[0]    	|	p4[1]    	)	&	compPos[4]	;
    	assign b[5]  = (	p5[0]    	|	p5[1]    	)	&	compPos[5]	;
    	assign b[6]  = (	p6[0]    	|	p6[1]    	)	&	compPos[6]	;
    	assign b[7]  = (	p7[0]    	|	p7[1]    	)	&   compPos[7]	;
    	assign b[8]  = (	p8[0]    	|	p8[1]    	)	&	compPos[8]	;
   	 
    	assign A= (a[0] 	| 	a[1]	|	a[2] 	| 	a[3]	|	a[4] 	| 	a[5]	|   a[6] 	| 	a[7]                         	|	a[8]	);
    	assign B= (b[0] 	| 	b[1]	|	b[2] 	| 	b[3]	|	b[4] 	| 	b[5]	|   b[6] 	| 	b[7]  	|	b[8]	);
   	 
    	assign invalid =A	|	B;
   	 
	endmodule    
   	 
