         	load    R1,Text
         	load    R2,1
		load	  R3,-1

Next:		load    R0,0
		load    R4,[R1]
        	addi    R1,R1,R2
         	jmpEQ   R4=R0,Previous ;loading the last character
         	jmp     Next

Previous:	load	  R0,1Ah
		load	  RF,[R1]
		addi	  R1,R1,R3
		jmpEQ	  R1=R0,Finish ;inverse printing
		jmp	  Previous

Finish:		halt ;I took 100/100 from this homework

Text:		db	10
		db	"Deneme",10
		db	0
