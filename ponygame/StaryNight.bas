	REM IntyColor v1.1.2 Oct/14/2015
	REM Command: intycolor -b StaryNight.bmp StaryNight.bas
	REM Created: Thu Jun 01 14:50:06 2017

	REM stub for showing image
	INCLUDE "constants.bas"
	MODE 1
	WAIT
	DEFINE 0,1,screen_bitmaps_0
	WAIT
	'SCREEN screen_cards
	'WAIT
	'BORDER BORDER_BLACK, 1
	'WAIT
	'offset_x = 0
	'flag=0
	WAIT

loop:
	GOSUB DRAW_STARS
	WAIT
	GOTO loop

draw_stars: PROCEDURE
	FOR ROW=0 to 11
		FOR COL=0 to 19
			IF (RANDOM(4)) = 0 THEN
				PRINT AT SCREENPOS(COL,ROW),$0806
			ELSE
				PRINT AT SCREENPOS(COL,ROW),$0000
			END IF
		NEXT
	NEXT

	'FOR ROW=0 to 11
	'	FOR COL=0 to 19
	'	 IF PEEK(screenaddr(col,row)) = $0806 THEN
	'	 		PRINT AT SCREENPOS(COL,ROW),$0000
	'	 END IF
	'	NEXT
	'NEXT
	WAIT
	RETURN
	END


graphics:
		BITMAP "00000000"
		BITMAP "00000000"
		BITMAP "00000000"
		BITMAP "00011000"
		BITMAP "00011000"
		BITMAP "00000000"
		BITMAP "00000000"
		BITMAP "00000000"

		BITMAP "00000000"
		BITMAP "00000000"
		BITMAP "00011000"
		BITMAP "00111100"
		BITMAP "00111100"
		BITMAP "00011000"
		BITMAP "00000000"
		BITMAP "00000000"

		BITMAP "00000000"
		BITMAP "00011000"
		BITMAP "00111100"
		BITMAP "01111110"
		BITMAP "01111110"
		BITMAP "00111100"
		BITMAP "00011000"
		BITMAP "00000000"


screen_bitmaps_0:
	DATA $1818,$7EFF,$7E3C,$C366

	REM 20x12 cards
screen_cards:
	DATA $0806,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	DATA $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	DATA $0000,$0000,$0000,$0806,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	DATA $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0806,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0806,$0000,$0000,$0000
	DATA $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	DATA $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	DATA $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0806,$0000,$0000,$0000,$0000,$0000,$0000
	DATA $0000,$0000,$0000,$0000,$0000,$0000,$0806,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	DATA $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0806,$0000,$0000
	DATA $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	DATA $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
	DATA $0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
