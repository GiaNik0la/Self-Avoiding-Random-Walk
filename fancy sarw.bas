10 gr
20 let X = INT(RND(-1*(PEEK(78)+256*PEEK(79))) * 39) : let Y = INT(RND(-1*(PEEK(78)+256*PEEK(79))) * 39)
25 DIM AD(1521)
26 goto 30
27 gr
28 X = INT(RND(-1*(PEEK(78)+256*PEEK(79))) * 39) : Y = INT(RND(-1*(PEEK(78)+256*PEEK(79))) * 39)
30 COLOR= 3
40 plot X , Y
45 AD(39 * Y - 39 + X) = 1
50 let R = INT(RND(-1*(PEEK(78)+256*PEEK(79))) * 4)
60 if R = 0 and X > 2 then gosub 1000
70 if R = 1 and X < 37 then gosub 2000
80 if R = 2 and Y > 2 then gosub 3000
90 if R = 3 and Y < 37 then gosub 4000
95 let K = peek(49152)
96 if K = 141 then goto 120
100 goto 30
120 for i = 1 to 1521
130 AD(i) = 0
140 next i
145 poke 49168 , 0
150 goto 27
1000 IF AD(39 * Y - 39 + X - 2) = 1 THEN GOTO 1020
1005 plot X - 1 , Y
1010 X = X - 2
1020 return
2000 IF AD(39 * Y - 39 + X + 2) = 1 THEN GOTO 2020
2005 plot X + 1 , Y
2010 X = X + 2
2020 return
3000 IF AD(39 * Y - 117 + X) = 1 THEN GOTO 3020
3005 plot X , Y - 1
3010 Y = Y - 2
3020 return
4000 IF AD(39 * Y + 39 + X) = 1 THEN GOTO 4020
4005 plot X , Y + 1
4010 Y = Y + 2
4020 return