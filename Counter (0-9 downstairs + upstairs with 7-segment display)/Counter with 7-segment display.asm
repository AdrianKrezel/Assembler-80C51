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

;prints 0 digit at the beginning
mov a,#11000000b
setb p3.3
setb p3.4
mov p1,a
mov p1,#11111111b
clr p3.3
setb p3.4
mov p1,a
mov p1,#11111111b
setb p3.3
clr p3.4
mov p1,a
mov p1,#11111111b
clr p3.3
clr p3.4
mov p1,a
mov p1,#11111111b

;counts from 0 to 9            
start:
mov r0,#31h         
loop:
mov a,@r0            
jz start2
setb p3.3
setb p3.4
mov p1,a
mov p1,#11111111b
clr p3.3
setb p3.4
mov p1,a
mov p1,#11111111b
setb p3.3
clr p3.4
mov p1,a
mov p1,#11111111b
clr p3.3
clr p3.4
mov p1,a
mov p1,#11111111b
inc r0
jmp loop

;counts from 9 to 0
start2:
mov r0,#38h
loop2:
mov a,@r0
jz start
setb p3.3
setb p3.4
mov p1,a
mov p1,#11111111b
clr p3.3
setb p3.4
mov p1,a
mov p1,#11111111b
setb p3.3
clr p3.4
mov p1,a
mov p1,#11111111b
clr p3.3
clr p3.4
mov p1,a
mov p1,#11111111b
dec r0
jmp loop2
