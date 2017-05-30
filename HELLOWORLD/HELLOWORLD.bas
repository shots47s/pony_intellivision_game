' =========================================================================
' IntyBASIC SDK Project: HELLOWORLD
' -------------------------------------------------------------------------
'     Programmer: [YOUR NAME]
'     Created:    05/29/2017
'     Updated:    05/29/2017
'
'     Project automatically generated by INTYNEW.
' -------------------------------------------------------------------------
' History:
' 05/29/2017 - HELLOWORLD project created.
' =========================================================================

	' Include useful predefined constants
	INCLUDE "constants.bas"

	' Remove the line below if you want to include your own custom title page.
	'INCLUDE "title.bas"

title:
cls 'clear the screen

PRINT at (20* 4 + 3), "SHAWNS FIRST"
PRINT at (20* 6 + 5), "SPRITE"

WAIT
DEFINE 0,4,gramchars

X = 80
Y = 84
R = 0
#V = 0
T = 0


REM *****************************************************************
REM
REM loop - main gameplay loop
REM
REM *****************************************************************
loop:
	WAIT

	IF cont1.left THEN \
	  IF (X > 8) THEN X=X-1 
	IF cont1.right THEN \
	  IF (X<160) THEN X=X+1 
	IF cont1.up THEN \
	    IF (#V<>VISIBLE) THEN \
			  T=X:\
		    #V=VISIBLE : \
		    R=Y

	IF (#V=VISIBLE) THEN \
	  IF (R > 10) THEN R=R-1 : \
	 	ELSE #V=0

	SPRITE 0,X + VISIBLE, Y + ((X and 1) * FLIPX), SPR00 + SPR_WHITE 
	SPRITE 1,T + #V + HIT, R + ((R/8 AND 3) *FLIPX), SPR01 + SPR_GREEN
	SPRITE 2,20 + VISIBLE + HIT, 20, SPR02 + SPR_BLUE

	goto loop

REM main gameplay loop end *****************************************************************

gramchars:

REM 0

	BITMAP "..####.."
	BITMAP "..####.."
	BITMAP "...##..."
	BITMAP "...##..."

	BITMAP ".######."
	BITMAP "#.#.#.##"
	BITMAP "##.#.#.#"
	BITMAP ".######."


REM 1

BITMAP "........"
BITMAP "........"
BITMAP "...##..."
BITMAP "..##.#.."
BITMAP "..####.."
BITMAP "...##..."
BITMAP "........"
BITMAP "........"

REM 2

BITMAP "........"
BITMAP "........"
BITMAP "..####.."
BITMAP "..####.."
BITMAP "..####.."
BITMAP "..####.."
BITMAP "........"
BITMAP "........"
