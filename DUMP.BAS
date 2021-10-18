1 CLS
10 FOR B = 0 TO 9
15 FOR C = 0 TO 7
20 IF B < 5  CURSOR 1, ((B * 10) + C) : GOTO 30
25 CURSOR 40, (((B - 5) * 10) + C) 
30 I = ((B * 8) + C)
35 A = PEEK(-197632 + I) 
40 IF A < 0 A = 256 + A
45 PRINT I, " : ", A
50 REM A=0 
55 REM IF (((I+1)%24)=0) AND ((I>0) AND (I<75)) A=KEY():IF A=27 END
60 REM IF (((I+1)%8)=0) AND (I>0) PRINT " "
65 NEXT C
70 NEXT B
