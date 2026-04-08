789
REM ***************************************************
REM *** THIS PROG. BY SAM B. WITH HELP FROM WILL .B ***
REM ***            Spanish Vertion                  ***
REM ***************************************************


DIM grid$(4, 10)
DIM ans$(4)
GOSUB bob
y = 5
CLS
LOCATE 5, 1
PRINT "Los colores son:"
LOCATE 6, 1
PRINT "---------------"
LOCATE 7, 6
PRINT "azul"
LOCATE 8, 6
PRINT "verde"
LOCATE 9, 6
PRINT "negro"
LOCATE 10, 6
PRINT "blanco"
LOCATE 11, 6
PRINT "rojo"
LOCATE 12, 6
PRINT "amarillo"
FOR GT = 1 TO 10
LOCATE (5 + GT), 28
PRINT GT
NEXT GT
'GOTO lose
'GOTO win
'LOCATE 20, 1
'FOR t = 1 TO 4
'PRINT ans$(t)
'NEXT t
COLOR 9
LOCATE 5, 26
PRINT "INTELIGENCIA SUPERIOR"
FOR yy = 1 TO 10
y = y + 1
x = 32
FOR xx = 1 TO 4
REM **************************************************************************
1
COLOR 9
LOCATE 1, 1
PRINT "                                      "
LOCATE 1, 1
IF xx = 1 THEN NG$ = "Primer"
IF xx = 2 THEN NG$ = "Segundo"
IF xx = 3 THEN NG$ = "Tercero"
IF xx = 4 THEN NG$ = "Cuarto"
PRINT NG$; " color";
INPUT F$
REM ********* color placement *********
IF F$ = "azul" THEN COLOR 1: GOTO 55
IF F$ = "rojo" THEN COLOR 4: GOTO 55
IF F$ = "amarillo" THEN COLOR 14: GOTO 55
IF F$ = "negro" THEN COLOR 8: GOTO 55
IF F$ = "verde" THEN COLOR 2: GOTO 55
IF F$ = "blanco" THEN COLOR 15: GOTO 55
GOTO 1
55
grid$(xx, yy) = F$
LOCATE y, x
PRINT "#"
x = x + 2
NEXT xx
GOSUB check
NEXT yy
GOTO lose


REM ****************************   SUBS   ************************************
check:
Cor = 0
CorCol = 0
FOR t = 1 TO 4
IF ans$(t) = grid$(t, yy) THEN Cor = Cor + 1
NEXT t
FOR t = 1 TO 4
FOR k = 1 TO 4
IF grid$(t, yy) = ans$(k) THEN flag = 1
NEXT k
IF flag = 1 THEN flag = 0: CorCol = CorCol + 1
NEXT t
CorCol = CorCol - Cor
COLOR 8
LOCATE y, x + 2
PRINT Cor; "  ";
COLOR 15
PRINT CorCol
IF Cor = 4 THEN GOTO win
RETURN

win:
LOCATE 1, 1
PRINT "                        "
LOCATE 1, 1
PRINT "GANASTE!!!!!!!!"
PLAY "t255;l8;ggaabbccggaabbccggaabbcc;o1;l2;c"
LOCATE 2, 1
PRINT "                      "
LOCATE 2, 1
INPUT "Quieres jugar orta vez (s/n)"; MN$
IF MN$ = "s" THEN GOTO 789
END

lose:
LOCATE 1, 1
PRINT "                          "
LOCATE 1, 1
PRINT "PERDISTE!!!!!!!!"
LOCATE 2, 1
PRINT "                      "
LOCATE 18, 24
FOR t = 1 TO 4
PRINT ans$(t); "  ";
NEXT t
PLAY "t255;l64;o1;cbdaegfcbdaegfcbdaegfcbdaegfbggbgbcbgcbgbgcdafcbgfbdfdfdfdfcbdaegfcbdaegfcbdaegf"
LOCATE 2, 1
INPUT "Quieres jugar orta vez (s/n)"; MN$
IF MN$ = "s" THEN GOTO 789
END

bob:
RANDOMIZE TIMER
FOR t = 1 TO 4
Num = INT(RND(1) * 6) + 1
IF Num = 1 THEN ans$(t) = "rojo"
IF Num = 2 THEN ans$(t) = "verde"
IF Num = 3 THEN ans$(t) = "negro"
IF Num = 4 THEN ans$(t) = "amarillo"
IF Num = 5 THEN ans$(t) = "blanco"
IF Num = 6 THEN ans$(t) = "azul"
NEXT t
RETURN







