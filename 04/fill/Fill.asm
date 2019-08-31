// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(LOOP)
//if KBD!=0 go to black else draw white then go to loop
@KBD
D=M
@BLACK
D;JNE

//Draw White
//n=8191
@8191
D=A
@n
M=D

//i=0
@i
M=0

//(loop2)if i = n; go to loop
(LOOP2)
@i
D=M
@n
D=M-D
@LOOP
D;JEQ

//RAM[i+SCREEN] = 0
@SCREEN
D=A
@i
A=D+M
M=0

//i+=1
@i
M=M+1

//goto loop2
@LOOP2
0;JMP

(BLACK)
//Draw BLACK
//n=8191
@8191
D=A
@n
M=D

//i=0
@i
M=0

//(loop3)if i = n; go to loop
(LOOP3)
@i
D=M
@n
D=M-D
@LOOP
D;JEQ

//RAM[i+SCREEN] = -1
@SCREEN
D=A
@i
A=D+M
M=-1

//i+=1
@i
M=M+1

//goto loop3
@LOOP3
0;JMP
