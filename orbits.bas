1 MODE 2
5 COLOR 0 
10 CLS 
20 E = 0 
30 V = 0 
35 C = 1 
40 E = E + (0.365256 / PI )  
50 V = V + (0.224701 / PI )  
60 IF E > (2 * PI ) E = 0  
70 IF V > (2 * PI ) V = 0  
80 X = 180 + (COS (E) * 179) 
90 Y = 180 + (SIN (E) * 179) 
100 Z = 180 + (COS (V) * 170) 
110 W = 180 + (SIN (V) * 170) 
120 LINE X, Y, Z, W, 1
130 C = C + 1 
140 IF C > 512 GOTO 160 
150 GOTO 40 
160 DRAW 50, 400, 1, 'PRESS ANY KEY'
170 A = KEY () 
175 MODE 0  
180 COLOR 1 
190 CLS 
