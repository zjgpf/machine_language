// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//x=R0
//n=R1
//sum=0
//i=0
//(LOOP)if i==n goto (STOP)
//sum=sum+x
//i+=1
//goto LOOP
//(STOP)R2=sum

//x=R0
@R0
D=M
@x
M=D


//n=R1
@R1
D=M
@n
M=D

//sum=0
@0
D=A
@sum
M=D


//i=0
@0
D=A
@i
M=D


//(LOOP)if i==n goto (STOP)
(LOOP)
@i
D=M
@n
D=D-M
@STOP
D;JEQ

//sum=sum+x
@x
D=M
@sum
M=M+D

//i+=1
@i
M=M+1

//goto LOOP
@LOOP
0;JMP

//R2=sum
(STOP)
@sum
D=M
@R2
M=D

(END)
@END
0;JMP
