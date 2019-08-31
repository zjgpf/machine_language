//for (i=0; i<n; i++) arr[i] = -1

//RAM[arr] = 30, i=0
//(loop)if i>=n jump to end
//RAM[arr] = -1
//arr+=1,i+=1
//jump to loop


//RAM[arr]=30, i=0
@30
D=A
@arr
M=D
@i
M=0

//(loop)if i>=n jump to end
(LOOP)
@i
D=M
@R0
D=D-M
@END
D;JGE

//RAM[arr] = -1
@arr
A=M
M=-1

//arr+=1,i+=1
@arr
M=M+1
@i
M=M+1

//jump to loop
@LOOP
0;JMP

(END)
@END
0;JMP
