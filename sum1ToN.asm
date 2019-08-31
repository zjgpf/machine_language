// Computes RAM[1] = 1+2+ ... +n

//num=1,sum=0
//(loop)jump to end if num > n
//sum = sum+num
//num+=1
//jump to loop

//num=1,sum=0
@num
M=1
@R1
M=0

//(loop)jump to end if num > n
(LOOP)
@num
D=M
@R0
D=M-D
@END
D;JLT

//sum=sum+num
@num
D=M
@R1
M=M+D

//num+=1
@num
M=M+1

//jump to loop
@LOOP
0;JMP

(END)
@END
0;JMP
