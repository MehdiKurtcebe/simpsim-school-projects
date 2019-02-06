		load		R4,5
		load		R3,-1
		load		R1,1
		load		R2,2
		load		RA,-2

		addi		R0,R4,RA ;counter
		addi		R5,R4,R4 ;multiplying
Multiply:	addi		R5,R5,R4 ;multiplying
		addi		R0,R0,R3 ;counter
		jmpLE		R2<=R0,Multiply ;repeat until counter becomes 1

		addi		R0,R4,RA ;other value to multiply

		addi		R6,R5,R5 ;multiplying
		addi		R0,R0,R3 ;counter
Multiply2:	addi		R6,R6,R5 ;multiplying
		addi		R0,R0,R3 ;counter
		jmpLE		R2<=R0,Multiply2 ;repeat until counter becomes 1

		addi		R0,R0,R3 ;other value to multiply

		addi		R7,R6,R6

		load		R8,4Fh
		xor		RB,R7,R8
		store		RB,[$60]
		load		RF,[$60] ;printing first digit

		load		R9,40h
		xor		RC,R7,R9
		store		RC,[$61]
		load		RF,[$61] ;printing second digit

		halt		;I printed the hexadecimal value of factorial. I took 100/100 from this homework


		
		
