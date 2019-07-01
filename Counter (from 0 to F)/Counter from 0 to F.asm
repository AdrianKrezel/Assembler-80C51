;7-segment digit numbers mapping
mov 0h,#11000000b  ;0
mov 1h,#11111001b  ;1
mov 2h,#10100100b  ;2
mov 3h,#10110000b  ;3
mov 4h,#10011001b  ;4
mov 5h,#10010010b  ;5
mov 6h,#10000010b  ;6
mov 7h,#11111000b  ;7
mov 8h,#10000000b  ;8
mov 9h,#10010000b  ;9
mov 0ah,#10001000b ;A
mov 0bh,#10000011b ;B
mov 0ch,#11000110b ;C
mov 0dh,#10100001b ;D
mov 0eh,#10000110b ;E
mov 0fh,#10001110b ;F
mov 11h,#0      
CLR P3.3
CLR P3.4

;counter
MOV R0,#0H
START:
MOV A,@R0
MOV P1,A
INC R0
JMP START
