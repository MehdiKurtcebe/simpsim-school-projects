		load	R1,Text
		load	R0,0
		load	R2,1
NextChar:	load	RF,[R1]
		addi	R1,R1,R2
		jmpEQ	RF=R0,finish
		jmp	NextChar
finish:	halt

Text:		db	10
		db	"Mehdi KURTCEBE" ,10
		db	0