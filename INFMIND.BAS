REM                  ***********************************
REM                  *** MASTER PROG. OF MASTER MIND ***
REM                  ***********************************

CLS : CLEAR
COLOR 10
PRINT "MAKE SURE YOUR CAPSLOCK IS "; : COLOR 26: PRINT "OFF"; : COLOR 10: PRINT "."
PRINT
PRINT "AFTER YOU START YOU CAN:"
PRINT "PRESS "; : COLOR 26: PRINT "P "; : COLOR 10: PRINT "TO PLAY MASTER MIND."
PRINT "PRESS "; : COLOR 26: PRINT "M "; : COLOR 10: PRINT "TO PLAY MATH."
PRINT "PRESS "; : COLOR 26: PRINT "O "; : COLOR 10: PRINT "TO GET BACK TO DOS."
PRINT
COLOR 10
WHILE (S$ <> "y") AND (S$ <> "Y") AND (S$ <> "n") AND (S$ <> "N")
INPUT "DO YOU WANT SOUND (Y/N)"; S$
WEND
PRINT
PRINT
COLOR 26
PRINT "PRESS "; : COLOR 26: PRINT "SPACE "; : COLOR 10: PRINT "TO START."
WHILE INKEY$ = ""
WEND


FIRST:
SIRCLE:
REM      ******************
REM      ***   CIRCLE   ***
REM      ******************

CLS
c = 2
SCREEN 9, 1
BLACKNESS:
COLOR , 12
RANDOMIZE TIMER
c = c + 1
FOR t = 0 TO 400 STEP 4
A$ = INKEY$
IF A$ = "p" THEN GOTO MIND
IF A$ = "o" THEN SYSTEM
IF A$ = " " THEN GOTO NEAT
IF A$ = "m" THEN GOTO MATH
IF t = 40 THEN c = c + 1
IF t = 100 THEN c = c + 1
IF t = 200 THEN c = c + 1
IF t = 300 THEN c = c + 1
IF c > 2 THEN c = 1
CIRCLE (320, 200), t, c
NEXT t
c = c + 1
FOR t = 400 TO 1 STEP -4
A$ = INKEY$
IF A$ = "p" THEN GOTO MIND
IF A$ = "o" THEN SYSTEM
IF A$ = " " THEN GOTO NEAT
IF A$ = "m" THEN GOTO MATH
IF t = 40 THEN c = c + 1
IF t = 100 THEN c = c + 1
IF t = 200 THEN c = c + 1
IF t = 300 THEN c = c + 1
IF c > 2 THEN c = 1
CIRCLE (320, 200), t, c
NEXT t
GOTO BLACKNESS

NEAT:
REM     **************
REM     ***  NEAT  ***
REM     **************

CLS
SCREEN 9, 1
CARNESS:
FOR t = 1 TO 300 STEP 5
A$ = INKEY$
IF A$ = "p" THEN GOTO MIND
IF A$ = "o" THEN SYSTEM
IF A$ = " " THEN GOTO SHMAZZLE
IF A$ = "m" THEN GOTO MATH
COLOR 12, 1
CIRCLE (160, 167), t
COLOR 1, 1
CIRCLE (480, 167), (300 + (t - 2 * t)) + 1
NEXT t
FOR t = 300 TO 1 STEP -5
A$ = INKEY$
IF A$ = " " THEN GOTO SHMAZZLE
IF A$ = "p" THEN GOTO MIND
IF A$ = "o" THEN SYSTEM
IF A$ = "m" THEN GOTO MATH
COLOR 1, 1
CIRCLE (160, 167), t + 1
COLOR 14, 1
CIRCLE (480, 167), (300 + (t - 2 * t))
NEXT t
GOTO CARNESS

SHMAZZLE:
REM      ********************
REM      ***   SHMAZZLE   ***
REM      ********************

CLS
COLOR , 18
NOTHING:
SCREEN 9, 1
A$ = INKEY$
IF A$ = " " THEN GOTO LIN
IF A$ = "p" THEN GOTO MIND
IF A$ = "o" THEN SYSTEM
IF A$ = "m" THEN GOTO MATH
RANDOMIZE TIMER
c = INT(RND(1) * 14) + 1
x = INT(RND(1) * 640) + 1
Y = INT(RND(1) * 400) + 1
R = INT(RND(1) * 100) + 1
P = INT(RND(1) * 2) + 1
S = INT(RND(1) * 4) + 1
IF P = 2 THEN GOTO CIR
FILL:
FOR t = R TO 1 STEP -S
CIRCLE (x, Y), t, c
NEXT t
GOTO NOTHING
CIR:
CIRCLE (x, Y), R, c
GOTO NOTHING

LIN:
REM    **************
REM    ***  LINE  ***
REM    **************

CLS
COLOR , 9
LINENESS:
SCREEN 9, 1
A$ = INKEY$
IF A$ = "p" THEN GOTO MIND
IF A$ = "o" THEN SYSTEM
IF A$ = " " THEN GOTO WOW
IF A$ = "m" THEN GOTO MATH
c = INT(RND(1) * 13) + 1
Xf = INT(RND(1) * 640) + 1
Yf = INT(RND(1) * 350) + 1
Xs = INT(RND(1) * 640) + 1
Ys = INT(RND(1) * 350) + 1
LINE (Xf, Yf)-(Xs, Ys), c
GOTO LINENESS


WOW:
REM  *********************
REM  ***      WOW      ***
REM  *********************
LET V = V + 1
IF V > 2 THEN V = 1
IF V = 1 THEN Y = 60: NO = 6
IF V = 2 THEN Y = 400: NO = 3
CLS
FOR K = 1 TO NO
SCREEN 9, 1
RANDOMIZE TIMER
SH = INT(RND(1) * 640)
SV = INT(RND(1) * 350)
EH = INT(RND(1) * 640)
EV = INT(RND(1) * 350)
c = INT(RND(1) * 14)
FOR t = 1 TO 90
COLOR c, 0
LINE (SH, SV)-(EH, EV)
FOR W = 1 TO Y
NEXT W
A$ = INKEY$
IF A$ = " " THEN GOTO TRI
IF A$ = "m" THEN GOTO MATH
IF A$ = "p" THEN GOTO MIND
IF A$ = "o" THEN SYSTEM
SH = EH
SV = EV
EH = INT(RND(1) * 640)
EV = INT(RND(1) * 350)
NEXT t
NEXT K
GOTO WOW

REM ****************
REM ***** TRI! *****
REM ****************
TRI:
CLS
c = 1
SCREEN 9, 1
FF = 320: FS = 10: SF = 100: SS = 50: TF = 500: TS = 10
FOR t = 1 TO 220
c = c + 1: IF c = 15 THEN c = 1
COLOR c
A$ = INKEY$
IF A$ = " " THEN GOTO SIRCLE
IF A$ = "m" THEN GOTO MATH
IF A$ = "p" THEN GOTO MIND
IF A$ = "o" THEN SYSTEM
LINE (FF, FS)-(SF, SS)
LINE (SF, SS)-(TF, TS)
LINE (TF, TS)-(FF, FS)
SSS = INT(RND(1) * 4)
RANDOMIZE TIMER
IF SSS = 1 THEN FF = FF + 7 ELSE IF SSS = 2 THEN FS = FS + 7 ELSE IF SSS = 3 THEN FF = FF - 7 ELSE IF SSS = 4 THEN FS = FS - 7
SSS = INT(RND(1) * 4)
IF SSS = 1 THEN SF = SF + 7 ELSE IF SSS = 2 THEN SS = SS + 7 ELSE IF SSS = 3 THEN SF = SF - 7 ELSE IF SSS = 4 THEN SS = SS - 7
SSS = INT(RND(1) * 4)
IF SSS = 1 THEN TF = TF + 7 ELSE IF SSS = 2 THEN TS = TS + 7 ELSE IF SSS = 3 THEN TF = TF - 7 ELSE IF SSS = 4 THEN TS = TS - 7
NEXT t
GOTO TRI

MIND:
789
REM **************************************************
REM *** THIS PROG. BY SAM B. WITH HELP FROM WILL .B***
REM **************************************************


DIM grid$(4, 10)
DIM ANS$(4)
SCREEN 9, 1
COLOR , 0
GOSUB bob
Y = 5
CLS
LOCATE 5, 1
PRINT "The colors are:"
LOCATE 6, 1
PRINT "---------------"
LOCATE 7, 6
PRINT "blue"
LOCATE 8, 6
PRINT "green"
LOCATE 9, 6
PRINT "black"
LOCATE 10, 6
PRINT "white"
LOCATE 11, 6
PRINT "red"
LOCATE 12, 6
PRINT "yellow"
LOCATE 14, 6
PRINT "quit"
FOR GT = 1 TO 10
LOCATE (5 + GT), 26
PRINT GT
NEXT GT
'GOTO lose
'GOTO win
'LOCATE 20, 1
'FOR t = 1 TO 4
'PRINT ans$(t)
'NEXT t
COLOR 9
LOCATE 5, 30
PRINT "MASTER MIND"
FOR yy = 1 TO 10
Y = Y + 1
x = 32
COLOR 15
LINE (199, 69)-(199, 209)
FOR t = 1 TO 5
LINE (228 + 16 * t, 69)-(228 + 16 * t, 209)
NEXT t
FOR t = 1 TO 11
LINE (199, 55 + 14 * t)-(308, 55 + 14 * t)
NEXT t
FOR xx = 1 TO 4
REM **************************************************************************
1
COLOR 9
LOCATE 1, 1
PRINT "                                      "
LOCATE 1, 1
IF xx = 1 THEN NG$ = "First"
IF xx = 2 THEN NG$ = "Second"
IF xx = 3 THEN NG$ = "Third"
IF xx = 4 THEN NG$ = "Fourth"
PRINT NG$; " Color";
INPUT F$
IF (S$ = "y") OR (S$ = "Y") THEN SOUND 3500, .25
IF (S$ = "y") OR (S$ = "Y") THEN SOUND 1000, .25
REM ********* color placement *********
IF F$ = "blue" THEN COLOR 1: GOTO 55
IF F$ = "red" THEN COLOR 4: GOTO 55
IF F$ = "yellow" THEN COLOR 14: GOTO 55
IF F$ = "black" THEN COLOR 8: GOTO 55
IF F$ = "green" THEN COLOR 2: GOTO 55
IF F$ = "white" THEN COLOR 15: GOTO 55
IF F$ = "quit" THEN GOTO SIRCLE
IF F$ = "you moniv i tell you boder rockem off em biz dead on chain." THEN GOTO WIN
GOTO 1
55
grid$(xx, yy) = F$
LOCATE Y, x
PRINT "#"
COLOR 15
LINE (199, 69)-(199, 209)
FOR t = 1 TO 5
LINE (228 + 16 * t, 69)-(228 + 16 * t, 209)
NEXT t
FOR t = 1 TO 11
LINE (199, 55 + 14 * t)-(308, 55 + 14 * t)
NEXT t
x = x + 2
 NEXT xx
GOSUB check
NEXT yy
GOTO lose


REM ****************************   SUBS   ************************************
check:
IF (S$ = "y") OR (S$ = "Y") THEN SOUND 3000, .5
IF (S$ = "y") OR (S$ = "Y") THEN SOUND 1000, .5
IF (S$ = "y") OR (S$ = "Y") THEN SOUND 2500, .5
IF (S$ = "y") OR (S$ = "Y") THEN SOUND 1500, .5
Cor = 0
CorCol = 0
FOR t = 1 TO 4
IF ANS$(t) = grid$(t, yy) THEN Cor = Cor + 1
NEXT t
FOR t = 1 TO 4
FOR K = 1 TO 4
IF grid$(t, yy) = ANS$(K) THEN flag = 1
NEXT K
IF flag = 1 THEN flag = 0: CorCol = CorCol + 1
NEXT t
CorCol = CorCol - Cor
COLOR 8
LOCATE Y, x + 2
PRINT Cor; "  ";
COLOR 15
PRINT CorCol
IF Cor = 4 THEN GOTO WIN
RETURN

WIN:
LOCATE 1, 1
PRINT "                        "
LOCATE 1, 1
PRINT "YOU WIN!!!!!!!!"
IF (S$ = "y") OR (S$ = "Y") THEN PLAY "t255;l8;ggaabbccggaabbccggaabbcc;o1;l2;c"
LOCATE 2, 1
PRINT "                      "
LOCATE 2, 1
INPUT "Play Again (y/n)"; MN$
IF MN$ = "y" THEN GOTO 789 ELSE GOTO FIRST
END

lose:
LOCATE 1, 1
PRINT "                          "
LOCATE 1, 1
PRINT "YOU LOSE!!!!!!!!"
LOCATE 2, 1
PRINT "                      "
LOCATE 18, 27
FOR t = 1 TO 4
PRINT ANS$(t); "  ";
NEXT t
IF (S$ = "y") OR (S$ = "Y") THEN PLAY "t255;l64;o1;cbdaegfcbdaegfcbdaegfcbdaegfbggbgbcbgcbgbgcdafcbgfbdfdfdfdfcbdaegfcbdaegfcbdaegf"
LOCATE 2, 1
INPUT "Play Again (y/n)"; MN$
IF MN$ = "y" THEN GOTO 789 ELSE GOTO FIRST
END

bob:
RANDOMIZE TIMER
FOR t = 1 TO 4
Num = INT(RND(1) * 6) + 1
IF Num = 1 THEN ANS$(t) = "red"
IF Num = 2 THEN ANS$(t) = "green"
IF Num = 3 THEN ANS$(t) = "black"
IF Num = 4 THEN ANS$(t) = "yellow"
IF Num = 5 THEN ANS$(t) = "white"
IF Num = 6 THEN ANS$(t) = "blue"
NEXT t
RETURN

MATH:   
REM ************
REM *** MATH ***
REM ************





REM   ************************* MATH *************************

COLOR 7, 1
BACKNESS:
RIGHT = 0
WRONG = 0
CLS
FOR Y = 1 TO 15
RANDOMIZE TIMER
TNO = INT(RND(1) * 5)
N = INT(RND(1) * 4) + 1
S = INT(RND(1) * 4)
O = INT(RND(1) * 100)
t = INT(RND(1) * 100)
Th = INT(RND(1) * 100)
F = INT(RND(1) * 100)
IF N = 2 THEN GOTO TWO
IF N = 3 THEN GOTO THREE
IF N = 4 THEN GOTO FOUR
REM TWO TWO TWO TWO TWO TWO TWO TWO TWO TWO TWO TWO TWO TWO TWO TWO TWO TWO
TWO:
IF S = 1 THEN GOTO T.P
IF S = 2 THEN GOTO T.M
IF S = 3 THEN GOTO T.T
IF S = 4 THEN GOTO T.D
REM **********TWO PLUS
T.P:
PRINT O; "+"; t; "="; : INPUT ; ANS
IF ANS = O + t THEN GOTO RIGHTM
GOTO WRONGM
T.M:
PRINT O; "-"; t; "="; : INPUT ; ANS
IF ANS = O - t THEN GOTO RIGHTM
GOTO WRONGM
T.T:
PRINT TNO; "*"; t; "="; : INPUT ; ANS
IF ANS = TNO * t THEN GOTO RIGHTM
GOTO WRONGM
T.D:
PRINT TNO; "*"; t; "="; : INPUT ; ANS
IF ANS = TNO * t THEN GOTO RIGHTM
GOTO WRONGM
REM THREE THREE THREE THREE THREE THREE THREE THREE THREE THREE THREE THREE
THREE:
IF S = 1 THEN GOTO Th.P
IF S = 2 THEN GOTO Th.M
IF S = 3 THEN GOTO Th.T
IF S = 4 THEN GOTO Th.D
Th.P:
PRINT O; "+"; TNO; "*"; Th; "="; : INPUT ; ANS
IF ANS = O + TNO * Th THEN GOTO RIGHTM
GOTO WRONGM
Th.M:
PRINT O; "-"; t; "-"; Th; "="; : INPUT ; ANS
IF ANS = O - t - Th THEN GOTO RIGHTM
GOTO WRONGM
Th.T:
PRINT O; "+"; TNO; "*"; Th; "="; : INPUT ; ANS
IF ANS = O + TNO * Th THEN GOTO RIGHTM
GOTO WRONGM
Th.D:
PRINT TNO; "*"; t; "+"; Th; "="; : INPUT ; ANS
IF ANS = TNO * t + Th THEN GOTO RIGHTM
GOTO WRONGM
REM FOUR FOUR FOUR FOUR FOUR FOUR FOUR FOUR FOUR FOUR FOUR FOUR FOUR FOUR
FOUR:
IF S = 1 THEN GOTO F.P
IF S = 2 THEN GOTO F.M
IF S = 3 THEN GOTO F.T
IF S = 4 THEN GOTO F.D
F.P:
PRINT O; "+"; TNO; "*"; Th; "-"; F; "="; : INPUT ; ANS
IF ANS = O + TNO * Th - F THEN GOTO RIGHTM
GOTO WRONGM
F.M:
PRINT O; "-"; t; "-"; Th; "+"; F; "="; : INPUT ; ANS
IF ANS = O - t - Th + F THEN GOTO RIGHTM
GOTO WRONGM
F.T:
PRINT O; "+"; TNO; "*"; Th; "+"; F; "="; : INPUT ; ANS
IF ANS = O + TNO * Th + F THEN GOTO RIGHTM
GOTO WRONGM
F.D:
PRINT TNO; "*"; t; "+"; Th; "-"; F; "="; : INPUT ; ANS
IF ANS = TNO * t + Th - F THEN GOTO RIGHTM
GOTO WRONGM
SEARS:
NEXT Y
PRINT "YOU GOT"; RIGHT; "RIGHT AND"; WRONG; "WRONG."
INPUT "DO YOU WANT TO PLAY AGAIN (y/n)"; black$
IF black$ = "y" THEN GOTO BACKNESS ELSE GOTO NEAT
END

RIGHTM:
COLOR 2
PLAY "t255;l8;aabbcc;o1;l2;c"
RIGHT = RIGHT + 1
PRINT "     RIGHT! "
COLOR 7
GOTO SEARS:

WRONGM:
COLOR 2
IF (S$ = "y") OR (S$ = "Y") THEN SOUND 500, 1
PRINT "     WRONG!"
WRONG = WRONG + 1
COLOR 7
GOTO SEARS:







