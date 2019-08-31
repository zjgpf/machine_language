// Program: Rectangle.asm
// Draws a filled rectangle at the
// screen's top left corner, with
// width of 16 pixels and height of
// RAM[0] pixels.
// Usage: put a non-negative number
// (rectangle's height) in RAM[0].

//addr=Screen
//i=0
//n = RAM[0]
//(loop)if i = n goto end
//RAM[addr] = -1
//addr+=32
//i+=1
//goto loop

//addr=Screen
@SCREEN
D=A
@addr
M=D

//i=0
@i
M=0

//n=RAM[0]
@R0
D=M
@n
M=D

//(loop)if i = n goto end
(LOOP)
@i
D=M
@n
D=D-M
@END
D;JEQ

//RAM[addr] = -1
@addr
A=M
M=-1

//addr+=32
@32
D=A
@addr
M=M+D

//i+=1
@i
M=M+1

//goto loop
@LOOP
0;JMP

(END)
@END
0;JMP
