//Flips values of RAM[0] and RAM[1]

//M[tmp] = M[R0]
@R0
D=M
@tmp
M=D

//M[R0] = M[R1]
@R1
D=M
@R0
M=D

//M[R1] = M[tmp]
@tmp
D=M
@R1
M=D

(END)
@END
0;JMP
