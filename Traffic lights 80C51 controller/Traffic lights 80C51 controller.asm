;Table of states (states of switching the traffic lights):
;_____________________________________________________________________________________________
;| State  |                   Cars                  |                Walkers                  |
;| number |-----------------------------------------------------------------------------------|
;|        |     Direction 1    |     Direction 2    |     Direction 1    |     Direction 2    |
;---------------------------------------------------------------------------------------------
;|   1.   | green              | red + green arrow  | red                | green              |
;|   2.   | yellow             | red + green arrow  | red                | green blinking     |
;|   3.   | red + green arrow  | red + yellow       | green              | red                |
;|   4.   | red + green arrow  | green              | green blinking     | red                |    
;|   5.   | red + yellow       | yellow             | red                | red                |
;---------------------------------------------------------------------------------------------

;MAIN PROGRAM for directin No. 1 "blue arrows on traffic scheme"
;for direction No. 2 "green on scheme" lights are controlled partially by software & partially by hardware
loop_1:
 mov r1,#2;change the time of state No. 1 (states are described in my report for this exercise)
 mov p1,#11010111b; green light ligntning (for cars) & red light (for walkers)
 nop
 nop
 nop
 nop
 nop
 ljmp cz1
loop_2:
 mov r2,#2;change the time of state No. 2
 mov p1,#01110111b; yellow light lightning (for cars) & red light lightning (for walkers)
 nop
 nop
 nop
 nop
 nop
 ljmp cz2
loop_3:
 mov r3,#2;change the time of state No. 3
 mov p1,#10111001b; red light & green right arrow lightning (for cars) & green (for walkers)
 nop
 nop
 nop
 nop
 nop
 ljmp cz3
loop_4:
 mov r4,#2;change the time of state No. 4
 mov p1,#10111001b;
 mov p1,#10111011b;
 mov p1,#10111001b;
 mov p1,#10111011b;
 mov p1,#10111001b;
 mov p1,#10111011b; red light & gren arrow for right turn lightning (for cars) & green light blinking (for walkers) 
 ljmp cz4
loop_5:
 mov r5,#2;change the time of state No. 5
 mov p1,#00110111b; red & yellow light lightning (for cars) & red (for walkers)
 nop
 nop
 nop
 nop
 nop
 ljmp cz5
;END OF THE MAIN PROGRAM
 
;ALGORITHM THAT EXECUTES 5 LOOPS, WHICH INCREASES THE TIME OF LIGHTNING INDIVIDUAL LIGHTS
cz1:
 nop
 dec r1
 djnz r1,cz1
 ljmp loop_2
       
cz2:
 w_2:
 nop
 dec r2
 djnz r2,cz2
 ljmp loop_3
       
cz3:
 nop
 dec r3
 djnz r3,cz3
 ljmp loop_4
       
cz4:
 nop
 dec r4
 djnz r4,cz4
 ljmp loop_5

cz5:
 nop
 dec r5
 djnz r5,cz5
 ljmp loop_1; looping the program

