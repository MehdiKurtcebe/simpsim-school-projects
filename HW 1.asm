load	R3,$CB
load	R4,$0B
xor	R0,R3,R4
store R0,[$A0]

load	R3,$AA
load	R4,$A0
xor	R1,R3,R4
store R1,[$A1]

xor	R2,R0,R1
store R2,[$A2]

halt
