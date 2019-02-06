			load	R1,-1
			load 	R3,1
			load	R2,7
			load 	R0,9
Control:		jmpLE R2<=R0,OtherControl
			load	R0,[R2]
			load	R2,8
			jmpLE R2<=R0,ErrorTxt
	
Decrease:		addi	R2,R2,R1
			jmp	Control

OtherControl:	load	R0,[R2]
			jmpLE R3<=R0,Decrease

Finish:		halt

ErrorTxt:		load R5,Error
			load R6,1
			load R0,0
NextChar:		load RF,[R5]
			addi R5,R5,R6
			jmpEQ RF=R0,Finish
			jmp	NextChar

Error:		db	10
			db	"ERROR",10
			db	0
; Deðer sürekli azalýp 2ye geldiðinde 8 atýp duruyor.
