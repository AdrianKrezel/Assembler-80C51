;7-segment digit numbers mapping
mov 30h,#11000000b   ;0
mov 31h,#11111001b   ;1
mov 32h,#10100100b   ;2
mov 33h,#10110000b   ;3
mov 34h,#10011001b   ;4
mov 35h,#10010010b   ;5
mov 36h,#10000010b   ;6
mov 37h,#11111000b   ;7
mov 38h,#10000000b   ;8
mov 39h,#10010000b   ;9
mov 3ah,#0

start:
mov r0,#30h          ; reads data from memory (30h address) to r0 register
mov r1, #30h

loop:
	ljmp setFirst
	
	back1:
		mov a, @r0
		mov p1, a
	
		mov a, @r1
		mov p1, a

ljmp setSecond
	back2:
	
	ljmp increment1Digit
	
	back3:
		mov a, @r0
		jz increment2Digit

	ljmp loop
	

increment1Digit:
	inc r0
	ljmp back3

increment2Digit:
	mov r0, #30h
	inc r1
	ljmp loop;

setFirst:
	clr p3.3
	clr p3.4
	ljmp back1

setSecond:
	setb p3.3
	clr  p3.4
	ljmp back2




