1 MODE 1
10 CLS 
20 E = 0 
30 V = 0 
35 C = 1
40 E = E + (0.365256 / PI ) 
50 V = V + (0.224701 / PI ) 
60 IF E > (2 * PI ) E = 0 
70 IF V > (2 * PI ) V = 0 
80 X = 90 + (COS (E) * 89)
90 Y = 90 + (SIN (E) * 89)
100 Z = 90 + (COS (V) * 70)
110 W = 90 + (SIN (V) * 70)
120 LINE X, Y, Z, W, C
130 C = C + 1
140 IF C > 768 GOTO 160
150 GOTO 40 
160 A = KEY()
170 CLS
180 MODE 0

