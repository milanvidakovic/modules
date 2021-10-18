5 J = 1 
10 MODE 1
15 CLS 
20 FOR I = 1 TO 200
30 PLOT I, 200, J
35 J = J + 1 
40 NEXT I
50 for k = 1 to 10
60 DRAW 200, K * 8, K, "Ovo je tekst."
70 NEXT K
80 I = KEY() 
90 CLS 
100 MODE 0
