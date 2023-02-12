10 gr
20 let X = 1 : let Y = 1
25 DIM AD(38, 38)
30 COLOR= 3
40 plot X , Y
45 AD(X, Y) = 1
50 let R = INT(RND(-1*(PEEK(78)+256*PEEK(79))) * 4)
60 if R = 0 and X > 2 then gosub 1000
70 if R = 1 and X < 37 then gosub 2000
80 if R = 2 and Y > 2 then gosub 3000
90 if R = 3 and Y < 37 then gosub 4000
100 goto 30
1000 IF AD(X - 2, Y) = 1 THEN GOTO 1020
1005 plot X - 1 , Y
1010 X = X - 2
1020 return
2000 IF AD(X + 2, Y) = 1 THEN GOTO 2020
2005 plot X + 1 , Y
2010 X = X + 2
2020 return
3000 IF AD(X, Y - 2) = 1 THEN GOTO 3020
3005 plot X , Y - 1
3010 Y = Y - 2
3020 return
4000 IF AD(X, Y + 2) = 1 THEN GOTO 4020
4005 plot X , Y + 1
4010 Y = Y + 2
4020 return
