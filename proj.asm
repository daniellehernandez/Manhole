TITLE MANHOLE (SIMPLIFIED .EXE FORMAT)
.MODEL SMALL
;---------------------------------------------
.STACK 32
;---------------------------------------------
.DATA
	PATH_LOADING	DB 	'res/load.txt', 00H
	PATH_MENU		DB 	'res/mm.txt', 00H
	PATH_HOWPAGE	DB 	'res/howto.txt', 00H  
	PATH_SCORE   	DB 	'res/score.txt', 00H
  	PATH_SCOREZ  	DB  'res/high.txt', 00H

	PATH_DDDD1 		DB 	'res/dddd5.txt', 00H
	PATH_DDDD2 		DB 	'res/dddd4.txt', 00H
	PATH_DDDD3 		DB 	'res/dddd3.txt', 00H
	PATH_DDDD4 		DB 	'res/dddd2.txt', 00H
	PATH_DDDD5 		DB 	'res/dddd1.txt', 00H
	PATH_UDDD1 		DB 	'res/uddd5.txt', 00H
	PATH_UDDD2 		DB 	'res/uddd4.txt', 00H
	PATH_UDDD3 		DB 	'res/uddd3.txt', 00H
	PATH_UDDD4 		DB 	'res/uddd2.txt', 00H
	PATH_UDDD5 		DB 	'res/uddd1.txt', 00H
	PATH_UUDD1 		DB 	'res/uudd5.txt', 00H
	PATH_UUDD2 		DB 	'res/uudd4.txt', 00H
	PATH_UUDD3 		DB 	'res/uudd3.txt', 00H
	PATH_UUDD4 		DB 	'res/uudd2.txt', 00H
	PATH_UUDD5 		DB 	'res/uudd1.txt', 00H
	PATH_DUDD1 		DB 	'res/dudd5.txt', 00H
	PATH_DUDD2 		DB 	'res/dudd4.txt', 00H
	PATH_DUDD3 		DB 	'res/dudd3.txt', 00H
	PATH_DUDD4 		DB 	'res/dudd2.txt', 00H
	PATH_DUDD5 		DB 	'res/dudd1.txt', 00H

	PATH_DDDU1 		DB 	'res/dddu5.txt', 00H
	PATH_DDDU2 		DB 	'res/dddu4.txt', 00H
	PATH_DDDU3 		DB 	'res/dddu3.txt', 00H
	PATH_DDDU4 		DB 	'res/dddu2.txt', 00H
	PATH_DDDU5 		DB 	'res/dddu1.txt', 00H
	PATH_UDDU1 		DB 	'res/uddu5.txt', 00H
	PATH_UDDU2 		DB 	'res/uddu4.txt', 00H
	PATH_UDDU3 		DB 	'res/uddu3.txt', 00H
	PATH_UDDU4 		DB 	'res/uddu2.txt', 00H
	PATH_UDDU5 		DB 	'res/uddu1.txt', 00H
	PATH_UUDU1 		DB 	'res/uudu5.txt', 00H
	PATH_UUDU2 		DB 	'res/uudu4.txt', 00H
	PATH_UUDU3 		DB 	'res/uudu3.txt', 00H
	PATH_UUDU4 		DB 	'res/uudu2.txt', 00H
	PATH_UUDU5 		DB 	'res/uudu1.txt', 00H
	PATH_DUDU1 		DB 	'res/dudu5.txt', 00H
	PATH_DUDU2 		DB 	'res/dudu4.txt', 00H
	PATH_DUDU3 		DB 	'res/dudu3.txt', 00H
	PATH_DUDU4 		DB 	'res/dudu2.txt', 00H
	PATH_DUDU5 		DB 	'res/dudu1.txt', 00H

	PATH_DDUD1 		DB 	'res/ddud5.txt', 00H
	PATH_DDUD2 		DB 	'res/ddud4.txt', 00H
	PATH_DDUD3 		DB 	'res/ddud3.txt', 00H
	PATH_DDUD4 		DB 	'res/ddud2.txt', 00H
	PATH_DDUD5 		DB 	'res/ddud1.txt', 00H
	PATH_UDUD1 		DB 	'res/udud5.txt', 00H
	PATH_UDUD2 		DB 	'res/udud4.txt', 00H
	PATH_UDUD3 		DB 	'res/udud3.txt', 00H
	PATH_UDUD4 		DB 	'res/udud2.txt', 00H
	PATH_UDUD5 		DB 	'res/udud1.txt', 00H
	PATH_UUUD1 		DB 	'res/uuud5.txt', 00H
	PATH_UUUD2 		DB 	'res/uuud4.txt', 00H
	PATH_UUUD3 		DB 	'res/uuud3.txt', 00H
	PATH_UUUD4 		DB 	'res/uuud2.txt', 00H
	PATH_UUUD5 		DB 	'res/uuud1.txt', 00H
	PATH_DUUD1 		DB 	'res/duud5.txt', 00H
	PATH_DUUD2 		DB 	'res/duud4.txt', 00H
	PATH_DUUD3 		DB 	'res/duud3.txt', 00H
	PATH_DUUD4 		DB 	'res/duud2.txt', 00H
	PATH_DUUD5 		DB 	'res/duud1.txt', 00H

	PATH_DDUU1 		DB 	'res/dduu5.txt', 00H
	PATH_DDUU2 		DB 	'res/dduu4.txt', 00H
	PATH_DDUU3 		DB 	'res/dduu3.txt', 00H
	PATH_DDUU4 		DB 	'res/dduu2.txt', 00H
	PATH_DDUU5 		DB 	'res/dduu1.txt', 00H
	PATH_UDUU1 		DB 	'res/uduu5.txt', 00H
	PATH_UDUU2 		DB 	'res/uduu4.txt', 00H
	PATH_UDUU3 		DB 	'res/uduu3.txt', 00H
	PATH_UDUU4 		DB 	'res/uduu2.txt', 00H
	PATH_UDUU5 		DB 	'res/uduu1.txt', 00H
	PATH_UUUU1 		DB 	'res/uuuu5.txt', 00H
	PATH_UUUU2 		DB 	'res/uuuu4.txt', 00H
	PATH_UUUU3 		DB 	'res/uuuu3.txt', 00H
	PATH_UUUU4 		DB 	'res/uuuu2.txt', 00H
	PATH_UUUU5 		DB 	'res/uuuu1.txt', 00H
	PATH_DUUU1 		DB 	'res/duuu5.txt', 00H
	PATH_DUUU2 		DB 	'res/duuu4.txt', 00H
	PATH_DUUU3 		DB 	'res/duuu3.txt', 00H
	PATH_DUUU4 		DB 	'res/duuu2.txt', 00H
	PATH_DUUU5 		DB 	'res/duuu1.txt', 00H

	PATH_BBDD1 		DB 	'res/BBdd5.txt', 00H
	PATH_BBDD2 		DB 	'res/BBdd4.txt', 00H
	PATH_BBDD3 		DB 	'res/BBdd3.txt', 00H
	PATH_BBDD4 		DB 	'res/BBdd2.txt', 00H
	PATH_BBDD5 		DB 	'res/BBdd1.txt', 00H
	PATH_BBUD1 		DB 	'res/BBud5.txt', 00H
	PATH_BBUD2 		DB 	'res/BBud4.txt', 00H
	PATH_BBUD3 		DB 	'res/BBud3.txt', 00H
	PATH_BBUD4 		DB 	'res/BBud2.txt', 00H
	PATH_BBUD5 		DB 	'res/BBud1.txt', 00H
	PATH_BBUU1 		DB 	'res/BBuu5.txt', 00H
	PATH_BBUU2 		DB 	'res/BBuu4.txt', 00H
	PATH_BBUU3 		DB 	'res/BBuu3.txt', 00H
	PATH_BBUU4 		DB 	'res/BBuu2.txt', 00H
	PATH_BBUU5 		DB 	'res/BBuu1.txt', 00H
	PATH_BBDU1 		DB 	'res/BBdu5.txt', 00H
	PATH_BBDU2 		DB 	'res/BBdu4.txt', 00H
	PATH_BBDU3 		DB 	'res/BBdu3.txt', 00H
	PATH_BBDU4 		DB 	'res/BBdu2.txt', 00H
	PATH_BBDU5 		DB 	'res/BBdu1.txt', 00H

	PATH_BDUD1 		DB 	'res/BDud5.txt', 00H
	PATH_BDUD2 		DB 	'res/BDud4.txt', 00H
	PATH_BDUD3 		DB 	'res/BDud3.txt', 00H
	PATH_BDUD4 		DB 	'res/BDud2.txt', 00H
	PATH_BDUD5 		DB 	'res/BDud1.txt', 00H
	PATH_BDUU1 		DB 	'res/BDuu5.txt', 00H
	PATH_BDUU2 		DB 	'res/BDuu4.txt', 00H
	PATH_BDUU3 		DB 	'res/BDuu3.txt', 00H
	PATH_BDUU4 		DB 	'res/BDuu2.txt', 00H
	PATH_BDUU5 		DB 	'res/BDuu1.txt', 00H

	PATH_GAMEOVER 	DB 	'res/over.txt', 00H
	PATH_EASY 		DB 	'res/easy.txt', 00H
	PATH_MEDIUM		DB 	'res/medium.txt', 00h
	PATH_HARD		DB 	'res/hard.txt', 00h
	PATH_ENDLESS	DB 	'res/endls.txt', 00h
	PATH_EASY1 		DB 	15 DUP (00H)
	PATH_EASY2 		DB 	15 DUP (00H)
	PATH_EASY3		DB 	15 DUP (00H)
	PATH_EASY4 		DB 	15 DUP (00H)
	PATH_EASY5 		DB 	15 DUP (00H)
	PATH_CLEAR		DB 	15 DUP (00H), '$'
	LEVEL_STATUS 	DB 	15 DUP ('$')
	HANDLE_LOADING	DW 	?
	HANDLE_HISCORE 	DW 	?
	LOAD_STR 		DB 	7500 DUP('$'), '$'
	MENU_STR 		DB 	7500 DUP('$'), '$'
	PLAY_STR		DB 	7500 DUP('$'), '$'

	PROMPT_ERROR1	DB 	"Error in opening file.", '$'
	PROMPT_ERROR2	DB 	"Error reading from file.", '$'
	PROMPT_ERROR3 	DB	"No record read from file.", '$'

	STATUS			DB	1 				;1 for PLAY, 2 for HOW TO PLAY, 3 for HIGHSCORE, 4 for EXIT
	LEFT_HAND		DB 	0
	RIGHT_HAND		DB	0
	LEFT_LEG		DB 	0
	RIGHT_LEG 		DB 	0
	ENTER 			DB 	0
	LOADING_BAR		DB 	5
	STATUS_GM		DB 	0
	CURR_STATE 		DB 	1
	GAME_STATUS 	DB 	1
	INTERVAL 		DW 	1500
	LOOPS 			DW 	5
	DIVISOR 		DW 	4
	BACKGROUND_G 	DB 	03H
	BACKGROUND_P 	DB 	73H
	HI_SCORE 		DB 	3 DUP (' '), '$'
	SCORE 			DB 	3 DUP (' '), '$'

	PRN 			DW 	1
	PSEUDO 			DW 	1

	LOADING_1 		DB 	"Loading 'res\easy\...'", '$'
	LOADING_2 		DB 	"Loading 'res\medium\...'", '$'
	LOADING_3 		DB 	"Loading 'res\hard\...'", '$'	
	LOADING_4 		DB 	"Loading 'res\highscore\...'", '$'
	LOADING_5 		DB 	"Initializing...", '$'
	NEW_HIGH_SCORE 	DB 	"YOU SET A NEW HIGH SCORE!", '$'
	SCORE_TXT		DB  "SCORE: 000", '$'
	HISCORE_TXT 	DB 	"HI-SCORE: 000", '$'
	LEVEL_EASY 		DB 	"LEVEL: EASY", '$'
	LEVEL_MEDIUM 	DB 	"LEVEL: MEDIUM", '$'
	LEVEL_HARD 		DB 	"LEVEL: HARD", '$'
	LEVEL_ENDLESS 	DB 	"LEVEL: ENDLESS", '$'

;---------------------------------------------
.CODE
OURMAIN PROC FAR
	
	MOV		AX, @data				;set DS to address of code segment
	MOV 	DS, AX
	MOV 	ES, AX

	MOV 	AH, 3DH
	MOV 	AL, 2
	LEA 	DX, PATH_SCORE
	INT 	21H
	MOV 	HANDLE_HISCORE, AX
	MOV 	AH, 3FH
	MOV 	BX, HANDLE_HISCORE
	MOV 	CX, 3
	LEA 	DX, HI_SCORE
	INT 	21H
	MOV 	CX, 3
	LEA 	SI, HISCORE_TXT
	LEA 	DI, HI_SCORE
	ADD 	SI, 10
PARSE_HISCORE:
	MOV 	AH, [DI]
	MOV 	[SI], AH
	INC 	SI
	INC 	DI
	LOOP 	PARSE_HISCORE

	MOV		BH, BACKGROUND_G		;background: black, foreground: orange
	MOV 	CX, 0000H  				;from top, leftmost
	MOV		DX, 184FH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen

	CMP 	GAME_STATUS, 2
	JAE  	CONT_CLEAR
 	CALL	LOADPAGE				;call loadpage

CONT_CLEAR:
	MOV		BH, BACKGROUND_G		;background: black, foreground: orange
	MOV 	CX, 0000H  				;from top, leftmost
	MOV		DX, 184FH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen

 	CALL 	MAINMENU				;call mainmenu
	CMP 	STATUS, 1 				;status 1 is play
	JE 		GOTO_PLAY
	CMP 	STATUS, 2
	JE 		GOTO_HOWTO
	CMP 	STATUS, 3
	JE 		GOTO_HIGHS				;status 4 is quit\
	CALL	_TERMINATE

GOTO_HOWTO:
	CALL 	HOWTO

GOTO_HIGHS:
	CALL 	HIGHS

GOTO_PLAY:
	MOV 	LOOPS, 10
	MOV 	INTERVAL, 1500
	MOV 	GAME_STATUS, 1
	MOV 	STATUS_GM, 1
	MOV 	CURR_STATE, 1
	MOV 	DIVISOR, 4
	MOV 	STATUS, 1
	LEA 	SI, SCORE_TXT
	ADD 	SI, 7
	MOV 	AH, 48
	MOV 	[SI], AH
	INC 	SI
	MOV 	[SI], AH 
	INC 	SI
	MOV 	[SI], AH 
	MOV 	GAME_STATUS, 2
	MOV 	BACKGROUND_G, 0AH
	MOV 	BACKGROUND_P, 7AH
	MOV		BH, BACKGROUND_G		;background: black, foreground: orange
	MOV 	CX, 0000H  				;from top, leftmost
	MOV		DX, 184FH 				;to bottom, rightmost
	CALL 	_CLEAR_SCREEN
	;open file
	MOV 	AH, 3DH
	MOV 	AL, 00
	LEA 	DX, PATH_EASY
	INT 	21H
	MOV 	HANDLE_LOADING, AX
	;read file
	MOV 	AH, 3FH
	MOV 	BX, HANDLE_LOADING
	MOV 	CX, 7500
	LEA 	DX, PLAY_STR
	INT 	21H
	LEA 	SI, PLAY_STR
	CALL 	OUTPUT_EXT
	MOV 	CX, 14
	LEA 	SI, LEVEL_EASY
	LEA 	DI, LEVEL_STATUS
	REP 	MOVSB
	MOV 	BP, 30
	MOV 	SI, 30
	CALL 	_DELAY
	CALL 	PLAY
	
	MOV 	INTERVAL, 1000
	MOV 	LOOPS, 14
	MOV 	DIVISOR, 16
	MOV 	BACKGROUND_G, 0EH
	MOV		BH, BACKGROUND_G		;background: black, foreground: orange
	MOV 	CX, 0000H  				;from top, leftmost
	MOV		DX, 184FH 				;to bottom, rightmost
	CALL 	_CLEAR_SCREEN
	;open file
	MOV 	AH, 3DH
	MOV 	AL, 00
	LEA 	DX, PATH_MEDIUM
	INT 	21H
	MOV 	HANDLE_LOADING, AX
	;read file
	MOV 	AH, 3FH
	MOV 	BX, HANDLE_LOADING
	MOV 	CX, 7500
	LEA 	DX, PLAY_STR
	INT 	21H
	LEA 	SI, PLAY_STR
	CALL 	OUTPUT_EXT
	MOV 	STATUS_GM, 2
	MOV 	CX, 14
	LEA 	SI, LEVEL_MEDIUM
	LEA 	DI, LEVEL_STATUS
	REP 	MOVSB
	MOV 	BP, 30
	MOV 	SI, 30
	CALL 	_DELAY
	CALL 	PLAY

	MOV 	LOOPS, 24
	MOV 	STATUS_GM, 3
	MOV 	INTERVAL, 800
	MOV 	BACKGROUND_G, 06H
	MOV		BH, BACKGROUND_G		;background: black, foreground: orange
	MOV 	CX, 0000H  				;from top, leftmost
	MOV		DX, 184FH 				;to bottom, rightmost
	CALL 	_CLEAR_SCREEN
	;open file
	MOV 	AH, 3DH
	MOV 	AL, 00
	LEA 	DX, PATH_HARD
	INT 	21H
	MOV 	HANDLE_LOADING, AX

	;read file
	MOV 	AH, 3FH
	MOV 	BX, HANDLE_LOADING
	MOV 	CX, 7500
	LEA 	DX, PLAY_STR
	INT 	21H
	LEA 	SI, PLAY_STR
	CALL 	OUTPUT_EXT
	MOV 	CX, 14
	LEA 	SI, LEVEL_HARD
	LEA 	DI, LEVEL_STATUS
	REP 	MOVSB
	MOV 	BP, 30
	MOV 	SI, 30
	CALL 	_DELAY
	CALL 	PLAY

	JMP 	GO_ENDLESS

GOTO_PLAY_BR:
	JMP 	GOTO_PLAY

GO_ENDLESS:
	MOV 	INTERVAL, 800
	MOV 	STATUS_GM, 4
	MOV 	LOOPS, 950
	MOV 	BACKGROUND_G, 05H
	MOV		BH, BACKGROUND_G		;background: black, foreground: orange
	MOV 	CX, 0000H  				;from top, leftmost
	MOV		DX, 184FH 				;to bottom, rightmost
	CALL 	_CLEAR_SCREEN
	;open file
	MOV 	AH, 3DH
	MOV 	AL, 00
	LEA 	DX, PATH_ENDLESS
	INT 	21H
	MOV 	HANDLE_LOADING, AX

	;read file
	MOV 	AH, 3FH
	MOV 	BX, HANDLE_LOADING
	MOV 	CX, 7500
	LEA 	DX, PLAY_STR
	INT 	21H
	LEA 	SI, PLAY_STR
	CALL 	OUTPUT_EXT
	MOV 	CX, 15
	LEA 	SI, LEVEL_ENDLESS
	LEA 	DI, LEVEL_STATUS
	REP 	MOVSB
	MOV 	BP, 30
	MOV 	SI, 30
	CALL 	_DELAY
	CALL 	PLAY
			
OURMAIN ENDP 
;----------------------------------------------------------------------

LOADPAGE PROC NEAR
	;open file
	MOV 	AH, 3DH
	MOV 	AL, 00
	LEA 	DX, PATH_LOADING
	INT 	21H
	MOV 	HANDLE_LOADING, AX

	;read file
	MOV 	AH, 3FH
	MOV 	BX, HANDLE_LOADING
	MOV 	CX, 7500
	LEA 	DX, LOAD_STR
	INT 	21H

	;set cursor to the upperleftmost
	MOV 	DL, 0H
	MOV 	DH, 0
	CALL 	_SET_CURSOR

	;printing the file
	LEA 	SI, LOAD_STR
	CALL 	OUTPUT_EXT

LOADING:
	MOV 	DH, 21 					;21 is the column for the loading pane
	MOV 	DL, LOADING_BAR			;LOADING_BAR is the row
	CALL 	_SET_CURSOR

	MOV 	DX, 219					;the concrete block
	MOV 	AH, 02H 				;printing
	INT 	21H

	MOV 	DH, 19 					;for the string
	MOV 	DL, 15
	CALL 	_SET_CURSOR

	MOV		BH, BACKGROUND_G 				;background: black, foreground: orange
	MOV 	CX, 1301H  				;from top, leftmost
	MOV		DX, 134DH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen

	;the loading systems
	CMP 	LOADING_BAR, 17
	JB 		DISPLAY_LOADING1
	CMP 	LOADING_BAR, 30
	JB 		DISPLAY_LOADING2
	CMP 	LOADING_BAR, 60
	JB 		DISPLAY_LOADING3
	CMP		LOADING_BAR, 66
	JB 		DISPLAY_LOADING4
	CMP 	LOADING_BAR, 73
	JB 		DISPLAY_LOADING5

BACK:
	INC 	LOADING_BAR				;incrementing loading bar
	CMP 	LOADING_BAR, 73
	JNE 	LOADING

	;close file handle of input
	MOV 	AH, 3EH
	MOV 	BX, HANDLE_LOADING
	INT 	21H
	RET

DISPLAY_LOADING1:
	LEA 	DX, LOADING_1
	MOV 	AH, 09H
	INT 	21H
	MOV 	BP, 2 					
	MOV 	SI, 2 					
	CALL 	_DELAY
	JMP 	BACK

DISPLAY_LOADING2:
	LEA 	DX, LOADING_2
	MOV 	AH, 09H
	INT 	21H
	MOV 	BP, 2 					
	MOV 	SI, 3 					
	CALL 	_DELAY
	JMP 	BACK

DISPLAY_LOADING3:
	LEA 	DX, LOADING_3
	MOV 	AH, 09H
	INT 	21H
	MOV 	BP, 3 					
	MOV 	SI, 3					
	CALL 	_DELAY
	JMP 	BACK

DISPLAY_LOADING5:
	LEA 	DX, LOADING_5
	MOV 	AH, 09H
	INT 	21H
	MOV 	BP, 5 					
	MOV 	SI, 5 					
	CALL 	_DELAY
	JMP 	BACK

DISPLAY_LOADING4:
	LEA 	DX, LOADING_4
	MOV 	AH, 09H
	INT 	21H
	MOV 	BP, 2 					
	MOV 	SI, 2 					
	CALL 	_DELAY
	JMP 	BACK

LOADPAGE ENDP
;----------------------------------------------------------------------
HOWTO PROC NEAR
	MOV   	BH, 0EH         
	MOV   	CX, 0000H       
	MOV   	DX, 184FH       
	CALL  	_CLEAR_SCREEN

	;open file
	MOV   	AH, 3DH
	MOV   	AL, 00
	LEA   	DX, PATH_HOWPAGE
	INT  	21H
	MOV   	HANDLE_LOADING, AX

	;read file
	MOV   	AH, 3FH
	MOV   	BX, HANDLE_LOADING
	MOV   	CX, 7500
	LEA   	DX, LOAD_STR
	INT   	21H

	MOV   	DL, 0H
	MOV   	DH, 0
	CALL  	_SET_CURSOR

	MOV 	GAME_STATUS, 5
	;print
	LEA   	SI, LOAD_STR
	CALL  	OUTPUT_EXT
	MOV 	ENTER, 0
ITERATE_HOWTO:
	MOV 	DX, 1747H
 	CALL  	_SET_CURSOR
 	CALL  	_GET_KEY
 	CMP 	ENTER, 1
 	JNE 	ITERATE_HOWTO

;close file handle of input
 	MOV   	AH, 3EH
 	MOV   	BX, HANDLE_LOADING
 	INT   	21H
 	CALL 	OURMAIN
	RET
HOWTO ENDP
;----------------------------------------------------------------------
HIGHS PROC NEAR
  	MOV   	BH, 0EH         
  	MOV   	CX, 0000H       
  	MOV   	DX, 184FH       
  	CALL  	_CLEAR_SCREEN

  ;open file
  	MOV   	AH, 3DH
  	MOV   	AL, 00
  	LEA   	DX, PATH_SCOREZ
  	INT   	21H
  	MOV   	HANDLE_LOADING, AX

  ;read file
  	MOV   	AH, 3FH
  	MOV   	BX, HANDLE_LOADING
  	MOV   	CX, 7500
  	LEA   	DX, LOAD_STR
  	INT   	21H

  	MOV   	DL, 0H
  	MOV   	DH, 0
  	CALL  	_SET_CURSOR

  	MOV 	GAME_STATUS, 6
  	;print
  	LEA   	SI, LOAD_STR
  	CALL  	OUTPUT_EXT
  	;close file handle of input
  	MOV   	AH, 3EH
  	MOV   	BX, HANDLE_LOADING
  	INT   	21H

  	MOV 	BH, 8EH 
  	MOV 	CX, 1025H
  	MOV 	DX, 1027H
  	CALL 	_CLEAR_SCREEN

  	MOV 	DX, 1025H
  	CALL  	_SET_CURSOR

  	LEA 	SI, HI_SCORE
  	CALL 	OUTPUT_EXT

  	MOV 	ENTER, 0
ITERATE_HIGHS:
	MOV 	DX, 1747H
 	CALL  	_SET_CURSOR
	CALL 	_GET_KEY
	CMP 	ENTER, 1
	JNE 	ITERATE_HIGHS
	CALL 	OURMAIN

	RET
HIGHS ENDP
;----------------------------------------------------------------------
MAINMENU PROC NEAR
	MOV 	BACKGROUND_G, 03H
	MOV 	ENTER, 0
	MOV 	STATUS, 1
	MOV 	GAME_STATUS, 0
	MOV 	BH, BACKGROUND_G
	MOV 	CX, 0000H
	MOV 	DX, 184FH
	CALL 	_CLEAR_SCREEN
	MOV		BH, 83H 				;background: blinking, foreground: yellow
	MOV 	CX, 0B15H  				;from a certain point
	MOV		DX, 1224H 
	CALL 	_CLEAR_SCREEN
	;open file
	MOV 	AH, 3DH
	MOV 	AL, 00
	LEA 	DX, PATH_MENU
	INT 	21H
	MOV 	HANDLE_LOADING, AX
	;read file
	MOV 	AH, 3FH
	MOV 	BX, HANDLE_LOADING
	MOV 	CX, 7500
	LEA 	DX, LOAD_STR
	INT 	21H
	;setting cursor to the upperleftmost
	MOV 	DL, 0H
	MOV 	DH, 0
	CALL 	_SET_CURSOR
	;print
	LEA 	SI, LOAD_STR
	CALL 	OUTPUT_EXT
	MOV 	CL, 05H
ITERATE:
	CALL 	_GET_KEY 				;for main menu only
	CMP 	ENTER, 1 				;if entered, meaning chosen and decided
	JNE 	ITERATE 				;well if not chosen, continue
	MOV 	DH, 00H 
	MOV 	DL, 00H
	CALL 	_SET_CURSOR
	MOV 	BH, 0EH
	MOV 	CX, 0000H
	MOV 	DX, 184FH
	CALL 	_CLEAR_SCREEN
	;close file handle of input
	MOV 	AH, 3EH
	MOV 	BX, HANDLE_LOADING
	INT 	21H
	RET
MAINMENU ENDP
;----------------------------------------------------------------------
PLAY PROC NEAR
	MOV 	BH, BACKGROUND_G
	MOV 	CX, 0000H
	MOV 	DX, 207FH
	CALL 	_CLEAR_SCREEN
	MOV 	RIGHT_LEG, 0
	MOV 	RIGHT_HAND, 0
	MOV 	LEFT_LEG, 0
	MOV 	LEFT_HAND, 0

PLAYING:
	CMP 	STATUS_GM, 4
	JNE		RANDOM_GENERATOR
	CMP 	INTERVAL, 350
	JBE 	RANDOM_GENERATOR
	SUB 	INTERVAL, 20

RANDOM_GENERATOR:
	MOV     AH, 00h   				; interrupt to get system timer in CX:DX 
	INT     1AH
	MOV     [PSEUDO], DX
    MOV     AX, 25173          		; LCG Multiplier
    MUL     word ptr [PSEUDO]     		; DX:AX = LCG multiplier * seed
    ADD     AX, 13849          		; Add LCG increment value
    MOV     [PSEUDO], AX          		; Update seed = return value
	XOR     DX, DX
	MOV     CX, DIVISOR    
	DIV     CX        ; here dx contains the remainder - from 0 to 4

	CMP 	PRN, DX
	JE 		RANDOM_GENERATOR
	MOV 	PRN, DX

	CMP 	DX, 1
	JB 		_INSTANCE_1
	JE 		_INSTANCE_2
	CMP 	DX, 3
	JB		_INSTANCE_3
	JE 		_INSTANCE_4
	CMP 	DX, 5
	JB		_INSTANCE_5
	JE 		_INSTANCE_6
	CMP 	DX, 7
	JB		_INSTANCE_7
	JE 		_INSTANCE_8
	CMP 	DX, 9
	JB		_INSTANCE_9
	JE 		_INSTANCE_10
	CMP 	DX, 11
	JB		_INSTANCE_11
	JE 		_INSTANCE_12
	CMP 	DX, 13
	JB		_INSTANCE_13
	JE 		_INSTANCE_14
	CMP 	DX, 15
	JB		_INSTANCE_15
	JE 		_INSTANCE_16
	JA 		RANDOM_GENERATOR

_INSTANCE_1:
	CALL 	INSTANCE_1
	JMP 	START

_INSTANCE_2:
	CALL 	INSTANCE_2
	JMP 	START

_INSTANCE_3:
	CALL 	INSTANCE_3
	JMP 	START

_INSTANCE_4:
	CALL 	INSTANCE_4
	JMP 	START

_INSTANCE_5:
	CALL 	INSTANCE_5
	JMP 	START

_INSTANCE_6:
	CALL 	INSTANCE_6
	JMP 	START

_INSTANCE_7:
	CALL 	INSTANCE_7
	JMP 	START

_INSTANCE_8:
	CALL 	INSTANCE_8
	JMP 	START

_INSTANCE_9:
	CALL 	INSTANCE_9
	JMP 	START

_INSTANCE_10:
	CALL 	INSTANCE_10
	JMP 	START

_INSTANCE_11:
	CALL 	INSTANCE_11
	JMP 	START

_INSTANCE_12:
	CALL 	INSTANCE_12
	JMP 	START

_INSTANCE_13:
	CALL 	INSTANCE_13
	JMP 	START

_INSTANCE_14:
	CALL 	INSTANCE_14
	JMP 	START

_INSTANCE_15:
	CALL 	INSTANCE_15
	JMP 	START

_INSTANCE_16:
	CALL 	INSTANCE_16
	JMP 	START

START:
	MOV 	GAME_STATUS, 2
	MOV 	CURR_STATE, 1
	LEA 	DX, PATH_EASY1 			
MOVE_WALL:
	;open file
	MOV 	AH, 3DH
	MOV 	AL, 00
	INT 	21H
	JC 		DISPLAY_ERROR1
	MOV 	HANDLE_LOADING, AX

	;read file
	MOV 	AH, 3FH
	MOV 	BX, HANDLE_LOADING
	MOV 	CX, 7500
	LEA 	DX, PLAY_STR
	INT 	21H
	JC 		DISPLAY_ERROR2
	CMP 	AX, 00
	JE 		DISPLAY_ERROR3
	JNE 	PURSUE


DISPLAY_ERROR1:
	LEA 	DX, PROMPT_ERROR1
	MOV 	AH, 09H
	INT 	21H
	LEA 	DX, PATH_EASY5
	MOV 	AH, 09H
	INT 	21H
	LEA 	DX, PATH_EASY4
	MOV 	AH, 09H
	INT 	21H
	LEA 	DX, PATH_EASY3
	MOV 	AH, 09H
	INT 	21H
	LEA 	DX, PATH_EASY2
	MOV 	AH, 09H
	INT 	21H
	LEA 	DX, PATH_EASY1
	MOV 	AH, 09H
	INT 	21H
	JMP 	RANDOM_GENERATOR
;	CALL 	_TERMINATE

DISPLAY_ERROR2:
	LEA 	DX, PROMPT_ERROR2
	MOV 	AH, 09H
	INT 	21H
	CALL 	_TERMINATE

DISPLAY_ERROR3:
	LEA 	DX, PROMPT_ERROR3
	MOV 	AH, 09H
	INT 	21H
	CALL 	_TERMINATE

PURSUE:
	MOV 	DX, 0000
	CALL 	_SET_CURSOR


	;print
	LEA 	SI, PLAY_STR
	CALL 	OUTPUT_EXT

	MOV 	BP, INTERVAL
	CALL 	_DELAYSEC
	
	;close file handle of input
	MOV 	AH, 3EH
	MOV 	BX, HANDLE_LOADING
	INT 	21H
	
	INC 	CURR_STATE
	CMP 	CURR_STATE, 3
	JB 	 	EASY_ONE
	CMP 	CURR_STATE, 5
	JBE		EASY_TWO
	CMP 	CURR_STATE, 7
	JBE		EASY_THREE
	CMP 	CURR_STATE, 10
	JBE		EASY_FOUR
	CMP 	CURR_STATE, 12
	JBE		EASY_FIVE
	CMP 	PRN, 1
	JB 		_CHK_INS_1
	JE 		_CHK_INS_2
	CMP 	PRN, 3
	JB 		_CHK_INS_3
	JE 		_CHK_INS_4
	CMP 	PRN, 5
	JB 		_CHK_INS_5
	JE 		_CHK_INS_6
	CMP 	PRN, 7
	JB 		_CHK_INS_7
	JE 		_CHK_INS_8
	CMP 	PRN, 9
	JB 		_CHK_INS_9
	JE 		_CHK_INS_10
	CMP 	PRN, 11
	JB 		_CHK_INS_11
	JE 		_CHK_INS_12
	CMP 	PRN, 13
	JB 		_CHK_INS_13
	JE 		_CHK_INS_14
	CMP 	PRN, 15
	JB 		_CHK_INS_15
	JE 		_CHK_INS_16


EASY_ONE:
	LEA 	DX, PATH_EASY1
	JMP 	MOVE_WALL
EASY_TWO:
	LEA 	DX, PATH_EASY2
	JMP 	MOVE_WALL
EASY_THREE:
	LEA 	DX, PATH_EASY3
	JMP 	MOVE_WALL
EASY_FOUR:
	LEA 	DX, PATH_EASY4
	JMP 	MOVE_WALL
EASY_FIVE:
	LEA 	DX, PATH_EASY5
	JMP 	MOVE_WALL

_CHK_INS_1:
	CALL 	CHK_INS_1
	JMP 	INC_SCORE

_CHK_INS_2:
	CALL 	CHK_INS_2
	JMP 	INC_SCORE

_CHK_INS_3:
	CALL 	CHK_INS_3
	JMP 	INC_SCORE

_CHK_INS_4:
	CALL 	CHK_INS_4
	JMP 	INC_SCORE
_CHK_INS_5:
	CALL 	CHK_INS_5
	JMP 	INC_SCORE
_CHK_INS_6:
	CALL 	CHK_INS_6
	JMP 	INC_SCORE
_CHK_INS_7:
	CALL 	CHK_INS_7
	JMP 	INC_SCORE
_CHK_INS_8:
	CALL 	CHK_INS_8
	JMP 	INC_SCORE
_CHK_INS_9:
	CALL 	CHK_INS_9
	JMP 	INC_SCORE
_CHK_INS_10:
	CALL 	CHK_INS_10
	JMP 	INC_SCORE
_CHK_INS_11:
	CALL 	CHK_INS_11
	JMP 	INC_SCORE
_CHK_INS_12:
	CALL 	CHK_INS_12
	JMP 	INC_SCORE
_CHK_INS_13:
	CALL 	CHK_INS_13
	JMP 	INC_SCORE
_CHK_INS_14:
	CALL 	CHK_INS_14
	JMP 	INC_SCORE
_CHK_INS_15:
	CALL 	CHK_INS_15
	JMP 	INC_SCORE
_CHK_INS_16:
	CALL 	CHK_INS_16
	JMP 	INC_SCORE

PLAYING_BR2:
	JMP 	PLAYING

GAME_OVER:
	MOV 	GAME_STATUS, 3
	MOV 	DX, 0000H
	CALL 	_SET_CURSOR
	MOV 	BH, 04H 
	MOV 	CX, 0000H
	MOV 	DX, 184FH 
	CALL 	_CLEAR_SCREEN
	;open file
	MOV 	AH, 3DH
	MOV 	AL, 00
	LEA 	DX, PATH_GAMEOVER
	INT 	21H
	MOV 	HANDLE_LOADING, AX

	;read file
	MOV 	AH, 3FH
	MOV 	BX, HANDLE_LOADING
	MOV 	CX, 7500
	LEA 	DX, PLAY_STR
	INT 	21H
	LEA 	SI, PLAY_STR
	CALL 	OUTPUT_EXT
	MOV 	BP, 50
	MOV 	SI, 50
	CALL 	_DELAY
	RET

INC_SCORE:
	LEA 	SI, SCORE_TXT
	ADD 	SI, 9
	MOV 	AH, [SI]
	INC 	AH
	CMP 	AH, 58
	JE 		TENS_INC
	MOV 	[SI], AH
DEC_LOOPS:
	DEC 	LOOPS
	CMP 	LOOPS, 0
	JGE 	PLAYING_BR2
	RET
TENS_INC:
	MOV 	AH, 48
	MOV 	[SI], AH
	DEC 	SI
	MOV 	AH, [SI]
	INC 	AH
	CMP 	AH, 58
	JE 		HUN_INC
	MOV 	[SI], AH
	JMP 	DEC_LOOPS
HUN_INC:
	MOV 	AH, 48
	MOV 	[SI], AH
	DEC 	SI
	MOV 	AH, [SI]
	INC 	AH 
	MOV 	[SI], AH
	JMP 	DEC_LOOPS

PLAY ENDP
;----------------------------------------------------------------------
_CLEAR_SCREEN PROC	NEAR
	MOV		AX, 0600H
	INT		10H
	RET
_CLEAR_SCREEN ENDP
;----------------------------------------------------------------------
_SET_CURSOR PROC	NEAR
	MOV		AH, 02H
	MOV		BH, 00
	INT		10H
	RET
_SET_CURSOR ENDP
;----------------------------------------------------------------------
_DELAY PROC	NEAR
DELAY2:
	DEC 	BP		
	NOP
	JNZ 	DELAY2
	DEC 	SI
	CMP 	SI, 0
	JNZ 	DELAY2
	RET
_DELAY ENDP
;----------------------------------------------------------------------
_DELAYSEC PROC	NEAR
DELAY3:
	MOV 	DX, 0002H
	CALL 	_SET_CURSOR
	LEA 	DX, SCORE_TXT
	MOV 	AH, 09H
	INT 	21H
	MOV 	DX, 0010H
	CALL 	_SET_CURSOR
	LEA 	DX, HISCORE_TXT
	MOV 	AH, 09H 
	INT 	21H
	MOV 	DX, 0022H
	CALL 	_SET_CURSOR
	XOR 	CX, CX
	CMP 	CURR_STATE, 11
	JA 		DONT_MOVE
	MOV 	CL, CURR_STATE
PROGRESS_BAR:
	MOV 	DX, 219
	MOV 	AH, 02H
	INT 	21H
	LOOP 	PROGRESS_BAR
	JMP 	MOVE_NOW

DONT_MOVE:
	MOV 	CL, 11
	JMP 	PROGRESS_BAR

MOVE_NOW:
	MOV 	CX, 000BH
	SUB 	CL, CURR_STATE
	CMP 	CURR_STATE, 11
	JAE 	SKIP_SPACE
PROGRESS_BAR_SP:
	MOV 	DX, 32
	MOV 	AH, 02H
	INT 	21H
	LOOP 	PROGRESS_BAR_SP
SKIP_SPACE:
	MOV 	DX, 003EH
	CALL 	_SET_CURSOR
	LEA 	DX, LEVEL_STATUS
	MOV 	AH, 09H
	INT 	21H

	MOV 	DX, 0000H
	CALL 	_SET_CURSOR
	CALL 	_GET_KEY_PL
	CMP 	RIGHT_HAND, 1
	JB 		IMPL_UPR_RIGHT_DOWN
	JE  	IMPL_UPR_RIGHT_UP
	JA 		IMPL_UPR_RIGHT_BELOW_BR
CONT_CMP:
	CMP	 	LEFT_HAND, 1
	JB 		IMPL_UPR_LEFT_DOWN_BR
	JE  	IMPL_UPR_LEFT_UP_BR
	JA 		IMPL_UPR_LEFT_BELOW_BR
CONT_CMP2:
	CMP 	LEFT_LEG, 0
	JE 		IMPL_LWR_LEFT_DOWN_BR
	JNE 	IMPL_LWR_LEFT_UP_BR
CONT_CMP3:
	CMP 	RIGHT_LEG, 0
	JE 		IMPL_LWR_RIGHT_DOWN_BR
	JNE		IMPL_LWR_RIGHT_UP_BR

IMPL_UPR_RIGHT_DOWN:
	MOV		BH, BACKGROUND_P		;background: black, foreground: orange
	MOV 	CX, 0827H  				;from top, leftmost
	MOV		DX, 082BH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV 	CX, 0929H  				;from top, leftmost
	MOV		DX, 092BH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen		
	MOV 	CX, 0A28H  				;from top, leftmost
	MOV		DX, 0B2BH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0C28H  				;from top, leftmost
	MOV		DX, 0C28H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0D28H  				;from top, leftmost
	MOV		DX, 0F2BH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0E28H  				;from top, leftmost
	MOV		DX, 0E32H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 1028H
	MOV 	DX, 1129H
	CALL 	_CLEAR_SCREEN
	JMP	 	CONT_CMP

IMPL_UPR_LEFT_DOWN_BR:
	JMP 	IMPL_UPR_LEFT_DOWN
IMPL_UPR_LEFT_UP_BR:
	JMP 	IMPL_UPR_LEFT_UP
IMPL_LWR_LEFT_DOWN_BR:
	JMP 	IMPL_LWR_LEFT_DOWN
IMPL_LWR_RIGHT_DOWN_BR:
	JMP 	IMPL_LWR_RIGHT_DOWN
IMPL_LWR_RIGHT_UP_BR:
	JMP 	IMPL_LWR_RIGHT_UP
IMPL_LWR_LEFT_UP_BR:
	JMP 	IMPL_LWR_LEFT_UP
IMPL_UPR_RIGHT_BELOW_BR:
	JMP 	IMPL_UPR_RIGHT_BELOW
IMPL_UPR_LEFT_BELOW_BR:
	JMP 	IMPL_UPR_LEFT_BELOW

IMPL_UPR_RIGHT_UP:
	MOV 	BH, BACKGROUND_P
	MOV 	CX, 0828H
	MOV 	DX, 082BH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0929H
	MOV 	DX, 092BH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0932H
	MOV 	DX, 0933H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0A30H
	MOV 	DX, 0A31H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0B2EH
	MOV 	DX, 0B2FH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0A28H
	MOV 	DX, 0B2BH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0C28H  
	MOV		DX, 0C28H 	
	CALL	_CLEAR_SCREEN
	MOV 	CX, 0C2CH
	MOV 	DX, 0C2DH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0D2CH
	MOV 	DX, 0D2CH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0D28H 
	MOV		DX, 0F2BH 
	CALL	_CLEAR_SCREEN
	MOV 	CX, 1028H
	MOV 	DX, 1129H
	CALL 	_CLEAR_SCREEN
	JMP 	CONT_CMP

IMPL_UPR_RIGHT_BELOW:
	MOV		BH, BACKGROUND_P		;background: black, foreground: orange
	MOV 	CX, 0827H  				;from top, leftmost
	MOV		DX, 082BH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV 	CX, 0929H  				;from top, leftmost
	MOV		DX, 092BH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen		
	MOV 	CX, 0A28H  				;from top, leftmost
	MOV		DX, 0B2BH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0C28H  				;from top, leftmost
	MOV		DX, 0C28H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0D28H  				;from top, leftmost
	MOV		DX, 0F2BH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen		
	MOV 	CX, 1028H
	MOV 	DX, 1129H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0D2CH
	MOV 	DX, 0D2DH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0E2DH
	MOV 	DX, 0E2EH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0F2EH
	MOV 	DX, 0F2FH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 102FH
	MOV 	DX, 1030H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1130H
	MOV 	DX, 1131H
	CALL 	_CLEAR_SCREEN
	JMP 	CONT_CMP

DELAY3_BR:
	JMP 	DELAY3
IMPL_UPR_LEFT_DOWN:
	MOV		BH, BACKGROUND_P 				;background: black, foreground: orange
	MOV 	CX, 0824H  				;from top, leftmost
	MOV		DX, 0827H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV 	CX, 0924H  				;from top, leftmost
	MOV		DX, 0924H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0926H  				;from top, leftmost
	MOV		DX, 0927H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen			
	MOV 	CX, 0A24H  				;from top, leftmost
	MOV		DX, 0B27H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0C27H  				;from top, leftmost
	MOV		DX, 0C27H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0D24H  				;from top, leftmost
	MOV		DX, 0F27H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0E1EH  				;from top, leftmost
	MOV		DX, 0E27H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV 	CX, 1026H
	MOV  	DX, 1127H
	CALL 	_CLEAR_SCREEN
	JMP	 	CONT_CMP2

CONTI:
	DEC 	BP		
	CMP 	BP, 0
	JNZ 	DELAY3_BR
	RET

IMPL_UPR_LEFT_UP:
	MOV 	BH, BACKGROUND_P
	MOV 	CX, 0824H  				;from top, leftmost
	MOV		DX, 0827H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV 	CX, 091CH
	MOV 	DX, 091DH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0924H  				;from top, leftmost
	MOV		DX, 0924H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0926H  				;from top, leftmost
	MOV		DX, 0927H 				;to bottom, rightmost
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0A1EH
	MOV 	DX, 0A1FH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0A24H  				;from top, leftmost
	MOV		DX, 0B27H 				;to bottom, rightmost
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0B20H
	MOV 	DX, 0B21H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0C22H
	MOV 	DX, 0C23H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0C27H  				;from top, leftmost
	MOV		DX, 0C27H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV 	CX, 0D23H
	MOV 	DX, 0D27H
	CALL 	_CLEAR_SCREEN	
	MOV 	CX, 0E26H
	MOV 	DX, 1127H
	CALL 	_CLEAR_SCREEN	
	JMP 	CONT_CMP2

IMPL_UPR_LEFT_BELOW:
	MOV 	BH, BACKGROUND_P
	MOV 	CX, 0824H  				;from top, leftmost
	MOV		DX, 0827H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV 	CX, 0924H  				;from top, leftmost
	MOV		DX, 0924H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0926H  				;from top, leftmost
	MOV		DX, 0927H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen			
	MOV 	CX, 0A24H  				;from top, leftmost
	MOV		DX, 0B27H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0C27H  				;from top, leftmost
	MOV		DX, 0C27H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 0D24H  				;from top, leftmost
	MOV		DX, 0F27H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV 	CX, 1026H
	MOV 	DX, 1127H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0D22H
	MOV 	DX, 0D23H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0E21H
	MOV 	DX, 0E22H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0F20H
	MOV 	DX, 0F21H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 101FH
	MOV 	DX, 1020H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 111EH
	MOV 	DX, 111FH
	CALL 	_CLEAR_SCREEN
	JMP 	CONT_CMP2

IMPL_LWR_LEFT_DOWN:
	MOV 	BH, BACKGROUND_P
	MOV 	CX, 1226H
	MOV 	DX, 1527H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1623H
	MOV 	DX, 1626H
	CALL 	_CLEAR_SCREEN
	JMP 	CONT_CMP3

IMPL_LWR_LEFT_UP:
	MOV 	BH, BACKGROUND_P
	MOV 	CX, 1225H
	MOV 	DX, 1226H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1324H
	MOV 	DX, 1325H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1423H
	MOV 	DX, 1424H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1522H
	MOV 	DX, 1523H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 161FH
	MOV 	DX, 1622H
	CALL 	_CLEAR_SCREEN
	JMP 	CONT_CMP3

IMPL_LWR_RIGHT_DOWN:
	MOV 	BH, BACKGROUND_P
	MOV 	CX, 1228H
	MOV 	DX, 1529H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1629H
	MOV 	DX, 162CH
	CALL 	_CLEAR_SCREEN
	JMP 	CONTI

IMPL_LWR_RIGHT_UP:
	MOV 	BH, BACKGROUND_P
	MOV 	CX, 1229H
	MOV 	DX, 122AH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 132AH
	MOV 	DX, 132BH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 142BH
	MOV 	DX, 142CH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 152CH
	MOV 	DX, 152DH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 162DH
	MOV 	DX, 1630H
	CALL 	_CLEAR_SCREEN
	JMP 	CONTI

_DELAYSEC ENDP
;----------------------------------------------------------------------
_TERMINATE PROC	

	MOV 	BH, 07H 
	MOV 	CX, 0000H
	MOV 	DX, 184FH
;	CALL 	_CLEAR_SCREEN

	MOV		AH, 4CH
	INT		21H
  
  RET	
_TERMINATE ENDP
;----------------------------------------------------------------------
OUTPUT_EXT PROC NEAR
PRINT:
	MOV 	DX, [SI]
	CMP 	DL, 226
	JE 		PROCEED
	CMP 	DL, 207
	JE 		WEIRD_O
	JNE		CONT
PROCEED:
	INC 	SI
	MOV 	DX, [SI]
	CMP 	DL, 96H
	JE 		SPECIAL
	INC 	SI
	MOV 	DX, [SI]
	CMP 	DL, 94H
	JE 		UP_LEFT
	CMP 	DL, 97H
	JE 		UP_RIGHT
	CMP 	DL, 91H
	JE 		STRA_VERT
	CMP 	DL, 9DH
	JE 		LOW_LEFT
	CMP 	DL, 9AH
	JE 		LOW_RIGHT
	CMP 	DL, 90H
	JE		STRA_HORI
	CMP 	DL, 166
	JE 		TOP_DOWN
	CMP		DL, 169
	JE 		BOTTOM_UP
	CMP 	DL, 172
	JE 		MULTI
	JNE 	CONT

CONT:
	CMP 	DL, 24H
	JE 		RETURN_LOAD
	MOV 	AH, 02H
	INT 	21H
	INC 	SI
	CMP 	DL, 188
	JNE 	PRINT
	CMP 	GAME_STATUS, 2
	JAE		RETURN_LOAD
	JNE 	PRINT

WEIRD_O:
	MOV 	DL, 229
	INC 	SI
	JMP 	CONT
TOP_DOWN:
	MOV 	DL, 203
	JMP 	CONT
BOTTOM_UP:
	MOV 	DL, 202
	JMP 	CONT
UP_LEFT:
	MOV 	DL, 201
	JMP 	CONT
UP_RIGHT:
	MOV 	DL, 187
	JMP 	CONT
STRA_VERT:
	MOV 	DL, 186
	JMP 	CONT
LOW_RIGHT:
	MOV 	DL, 200
	JMP 	CONT
LOW_LEFT:
	MOV 	DL, 188
	JMP 	CONT
MULTI:
 	MOV 	DL, 206
 	JMP 	CONT

SPECIAL:
	INC 	SI 
	MOV 	DX, [SI]
	CMP 	DL, 91H
	JE 		STRIKE
	CMP 	DL, 88H
	JE 		BLACK
	CMP 	DL, 93H
	JE 		BLACK_STRIKE
	CMP 	DL, 186
	JE 		CURSOR_POINT
	JNE 	CONT

STRA_HORI:
	MOV 	DL, 205
	JMP 	CONT
STRIKE:
	MOV 	DL, 176
	JMP 	CONT
BLACK:
	MOV 	DL, 219
	JMP 	CONT
BLACK_STRIKE:
	MOV 	DL, 178
	JMP 	CONT
CURSOR_POINT:
	MOV 	DL, 16
	JMP 	CONT

RETURN_LOAD:
	RET
OUTPUT_EXT ENDP
;-----------------------------------------------------------------
_GET_KEY	PROC	NEAR
	MOV		AH, 01H			;check for input [given]
	INT		16H
	JZ		__LEAVETHIS

	MOV		AH, 00H			;get input	MOV AH, 10H; INT 16H [given]
	INT		16H

	CMP 	GAME_STATUS, 5
	JAE 	ENTER_ONLY
	CMP		AH, 4DH 
	JE		__RIGHT_ASSIGN	;value of RIGHT key is AH = 4DH
	CMP 	AH, 4BH
	JE		__LEFT_ASSIGN	;value of LEFT key is AH = 4BH
ENTER_ONLY:
	CMP 	AL, 0DH
	JE 		_ENTERED
	JNE 	__LEAVETHIS		;TODO implement enter
__RIGHT_ASSIGN:
	ADD 	STATUS, 1
	CMP 	STATUS, 5
	JE 		__DECRE
	JMP 	__MOV_POINTER
__LEFT_ASSIGN:
	SUB		STATUS, 1
	CMP 	STATUS, 0
	JE 		__INCRE
	JMP 	__MOV_POINTER
_ENTERED:
	MOV 	ENTER, 1
	JMP 	__LEAVETHIS
__DECRE:
	MOV 	STATUS, 1
	JMP 	__MOV_POINTER
__INCRE:
	MOV 	STATUS, 4
	JMP 	__MOV_POINTER
__LEAVETHIS:
	MOV 	DH, 99
	MOV 	DL, 99
	CALL 	_SET_CURSOR
	RET
__MOV_POINTER:
	MOV		BH, BACKGROUND_G 				;background: black, foreground: orange
	MOV 	CX, 1507H  				;from top, leftmost
	MOV		DX, 1509H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV 	CX, 1515H  				;from top, leftmost
	MOV		DX, 1518H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV 	CX, 152AH  				;from top, leftmost
	MOV		DX, 152DH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen		
	MOV 	CX, 153EH  				;from top, leftmost
	MOV		DX, 1540H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen		
	CMP 	STATUS, 2
	JB 		__PLAY
	JE 		__HOWTO
	CMP 	STATUS, 4
	JB		__HIGH
	JE 		__EXIT

__PLAY:
	MOV 	DH, 15H
	MOV 	DL, 08H
	CALL 	_SET_CURSOR
	MOV 	DX, 0010H
	MOV 	AH, 02H
	INT 	21H
	JMP 	__LEAVETHIS

__HOWTO:
	MOV 	DH, 15H
	MOV 	DL, 17H
	CALL 	_SET_CURSOR
	MOV 	DX, 0010H
	MOV 	AH, 02H
	INT 	21H
	JMP 	__LEAVETHIS	

__HIGH:
	MOV 	DH, 15H
	MOV 	DL, 2CH
	CALL 	_SET_CURSOR
	MOV 	DX, 0010H
	MOV 	AH, 02H
	INT 	21H
	JMP 	__LEAVETHIS

__EXIT:
	MOV 	DH, 15H
	MOV 	DL, 3FH
	CALL 	_SET_CURSOR
	MOV 	DX, 0010H
	MOV 	AH, 02H
	INT 	21H
	JMP 	__LEAVETHIS
_GET_KEY 	ENDP
;----------------------------------------------------------------------
_GET_KEY_PL	PROC	NEAR
	MOV		AH, 01H			;check for input [given]
	INT		16H

	JZ		__LEAVETHIS2_BR

	MOV		AH, 00H			;get input	MOV AH, 10H; INT 16H [given]
	INT		16H

	CMP		AL, 46H 
	JE		__F				;value of RIGHT key is AH = 4DH
	CMP 	AL, 66H
	JE 		__F
	CMP 	AL, 76H
	JE 		__V_BR
	CMP 	AL, 56H
	JE 		__V_BR
	CMP 	AL, 62H
	JE 		__B_BR
	CMP 	AL, 42H 
	JE 		__B_BR
	CMP 	AL, 68H
	JE 		__H_BR
	CMP 	AL, 48H
	JE		__H_BR				;value of LEFT key is AH = 4BH
	JNE 	__LEAVETHIS2_BR	

__F:
	ADD 	LEFT_HAND, 1
	CMP 	STATUS_GM, 3
	JB 		EMH_LEFT_HAND
	CMP 	LEFT_HAND, 3
	JE 		__DECREMENT
EMH_LEFT_HAND:
	CMP 	LEFT_HAND, 2
	JE 		__MID_L
LEFT_HAND_CONT:
	MOV 	BH, BACKGROUND_G
	MOV 	CX, 0E1DH
	MOV 	DX, 0E23H
	CALL 	_CLEAR_SCREEN
	JMP 	__MOV_POINTERS

__LEAVETHIS2_BR:
	JMP 	__LEAVETHIS2

__DECREMENT:
	MOV 	LEFT_HAND, 0
	;TODO add upr left blw revert
	MOV 	BH, BACKGROUND_G
	MOV 	CX, 0D22H
	MOV 	DX, 0D23H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0E21H
	MOV 	DX, 0E22H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0F20H
	MOV 	DX, 0F21H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 101FH
	MOV 	DX, 1020H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 111EH
	MOV 	DX, 111FH
	CALL 	_CLEAR_SCREEN 
	JMP 	__MOV_POINTERS

__V_BR:
	JMP 	__V
__B_BR:
	JMP 	__B
__H_BR:
	JMP 	__H

__MID_L:
	CMP 	STATUS_GM, 3
	JAE		__MID_L_REV
	MOV 	LEFT_HAND, 0
__MID_L_REV:
	;BACKGROUND REVERT
	MOV 	BH, BACKGROUND_G		
	MOV 	CX, 091CH
	MOV 	DX, 091DH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0A1EH
	MOV 	DX, 0A1FH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0B20H
	MOV 	DX, 0B21H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0C22H
	MOV 	DX, 0C23H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0D23H
	MOV 	DX, 0D23H
	CALL 	_CLEAR_SCREEN
	JMP 	__MOV_POINTERS

__H:
	ADD		RIGHT_HAND, 1
	CMP 	STATUS_GM, 3
	JB 		EMH_RIGHT_HAND
	CMP 	RIGHT_HAND, 3
	JE 		__INCREMENT
EMH_RIGHT_HAND:
	CMP 	RIGHT_HAND, 2
	JE 		__MID_R
RIGHT_HAND_CONT:
	MOV 	BH, BACKGROUND_G
	MOV 	CX, 0E2BH
	MOV 	DX, 0E32H
	CALL 	_CLEAR_SCREEN
	JMP 	__MOV_POINTERS

__INCREMENT:
	MOV 	RIGHT_HAND, 0
	;TODO revert upr ri blw
	MOV 	BH, BACKGROUND_G
	MOV 	CX, 0D2CH
	MOV 	DX, 0D2DH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0E2DH
	MOV 	DX, 0E2EH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0F2EH
	MOV 	DX, 0F2FH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 102FH
	MOV 	DX, 1030H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1130H
	MOV 	DX, 1131H
	CALL 	_CLEAR_SCREEN
	JMP 	__MOV_POINTERS
__MID_R:
	CMP 	STATUS_GM, 3
	JAE		__MID_R_REV
	MOV 	RIGHT_HAND, 0
__MID_R_REV:
	;BACKGROUND REVERT
	MOV 	BH, BACKGROUND_G
	MOV 	CX, 0932H
	MOV 	DX, 0933H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0A30H
	MOV 	DX, 0A31H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0B2EH
	MOV 	DX, 0B2FH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0C2CH
	MOV 	DX, 0C2DH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 0D2CH
	MOV 	DX, 0D2CH
	CALL 	_CLEAR_SCREEN
	JMP 	__MOV_POINTERS

__V:
	CMP 	STATUS_GM, 1
	JE 		__MOV_POINTERS_BR
	ADD 	LEFT_LEG, 1
	CMP  	LEFT_LEG, 2
	JE 		__LEDECREMENT
	MOV 	BH, BACKGROUND_G
	MOV 	CX, 1026H
	MOV 	DX, 1527H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1623H
	MOV 	DX, 1626H
	CALL 	_CLEAR_SCREEN
	JMP 	__MOV_POINTERS

__B:
	CMP 	STATUS_GM, 1
	JE 		__MOV_POINTERS_BR
	ADD 	RIGHT_LEG, 1
	CMP 	RIGHT_LEG, 2
	JE 		__REINCREMENT
	MOV 	BH, BACKGROUND_G
	MOV 	CX, 1028H
	MOV 	DX, 1529H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1629H
	MOV 	DX, 162CH
	CALL 	_CLEAR_SCREEN
	JMP 	__MOV_POINTERS

__MOV_POINTERS_BR:
	JMP 	__MOV_POINTERS

__LEDECREMENT:
	MOV 	LEFT_LEG, 0

	;BACKGROUND REVERT
	MOV 	BH, BACKGROUND_G
	MOV 	CX, 1026H
	MOV 	DX, 1127H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1225H
	MOV 	DX, 1226H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1324H
	MOV 	DX, 1325H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1423H
	MOV 	DX, 1424H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1522H
	MOV 	DX, 1523H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 161FH
	MOV 	DX, 1622H
	CALL 	_CLEAR_SCREEN
	JMP	 	__MOV_POINTERS


__REINCREMENT:
	MOV 	RIGHT_LEG, 0
	MOV 	BH, BACKGROUND_G
	MOV 	CX, 1028H
	MOV 	DX, 1129H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1229H
	MOV 	DX, 122AH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 132AH
	MOV 	DX, 132BH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 142BH
	MOV 	DX, 142CH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 152CH
	MOV 	DX, 152DH
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 162DH
	MOV 	DX, 1630H
	CALL 	_CLEAR_SCREEN
	JMP 	__MOV_POINTERS

__LEAVETHIS2:
	MOV 	DH, 00
	MOV 	DL, 00
	CALL 	_SET_CURSOR
	RET

__MOV_POINTERS:

	MOV 	DH, 00
	MOV 	DL, 00
	CALL 	_SET_CURSOR
	LEA 	SI, PLAY_STR
	CALL 	OUTPUT_EXT
	JMP 	__LEAVETHIS2

_GET_KEY_PL	ENDP
;----------------------------------------------------------------------
INSTANCE_1 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_DDDD1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDDD2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDDD3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDDD4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDDD5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_1 ENDP
;----------------------------------------------------------------------
INSTANCE_2 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_UUDD1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUDD2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUDD3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUDD4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUDD5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_2 ENDP
;----------------------------------------------------------------------
INSTANCE_3 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_UDDD1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDDD2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDDD3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDDD4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDDD5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_3 ENDP
;----------------------------------------------------------------------
INSTANCE_4 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_DUDD1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUDD2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUDD3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUDD4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUDD5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_4 ENDP
;----------------------------------------------------------------------
CHK_INS_1 PROC NEAR
	CMP 	RIGHT_HAND, 0
	JNE 	_GAME_OVER1
	CMP 	LEFT_HAND, 0
	JNE 	_GAME_OVER1
	CMP 	RIGHT_LEG, 0
	JNE 	_GAME_OVER1
	CMP 	LEFT_LEG, 0
	JNE 	_GAME_OVER1
	RET 

 _GAME_OVER1:
	CALL 	GAME_OVER2
	RET 
CHK_INS_1 ENDP
;----------------------------------------------------------------------
CHK_INS_2 PROC NEAR
	CMP 	RIGHT_HAND, 1
	JNE 	_GAME_OVER2
	CMP 	LEFT_HAND, 1
	JNE 	_GAME_OVER2
	CMP 	RIGHT_LEG, 0
	JNE 	_GAME_OVER2
	CMP 	LEFT_LEG, 0
	JNE 	_GAME_OVER2
	RET 

 _GAME_OVER2:
	CALL 	GAME_OVER2
	RET 
CHK_INS_2 ENDP
;----------------------------------------------------------------------
CHK_INS_3 PROC NEAR
	CMP 	RIGHT_HAND, 0
	JNE 	_GAME_OVER3
	CMP 	LEFT_HAND, 1
	JNE 	_GAME_OVER3
	CMP 	RIGHT_LEG, 0
	JNE 	_GAME_OVER3
	CMP 	LEFT_LEG, 0
	JNE 	_GAME_OVER3
	RET 

 _GAME_OVER3:
	CALL 	GAME_OVER2
	RET 
CHK_INS_3 ENDP
;----------------------------------------------------------------------
CHK_INS_4 PROC NEAR
	CMP 	RIGHT_HAND, 1
	JNE 	_GAME_OVER4
	CMP 	LEFT_HAND, 0
	JNE 	_GAME_OVER4
	CMP 	RIGHT_LEG, 0
	JNE 	_GAME_OVER4
	CMP 	LEFT_LEG, 0
	JNE 	_GAME_OVER4
	RET 

CHK_INS_4 ENDP
;----------------------------------------------------------------------
INSTANCE_5 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_DDDU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDDU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDDU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDDU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDDU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_5 ENDP
;----------------------------------------------------------------------
CHK_INS_5 PROC NEAR 
	CMP 	RIGHT_HAND, 0
	JNE 	_GAME_OVER4
	CMP 	LEFT_HAND, 0
	JNE 	_GAME_OVER4
	CMP 	RIGHT_LEG, 1
	JNE 	_GAME_OVER4
	CMP 	LEFT_LEG, 0
	JNE 	_GAME_OVER4
	RET 

 _GAME_OVER4:
	CALL 	GAME_OVER2
	RET 
CHK_INS_5 ENDP
;----------------------------------------------------------------------
INSTANCE_6 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_DUDU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUDU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUDU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUDU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUDU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_6 ENDP
;----------------------------------------------------------------------
CHK_INS_6 PROC NEAR 
	CMP 	RIGHT_HAND, 1
	JNE 	_GAME_OVER8
	CMP 	LEFT_HAND, 0
	JNE 	_GAME_OVER8
	CMP 	RIGHT_LEG, 1
	JNE 	_GAME_OVER8
	CMP 	LEFT_LEG, 0
	JNE 	_GAME_OVER8
	RET 
CHK_INS_6 ENDP
;----------------------------------------------------------------------
INSTANCE_7 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_UDDU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDDU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDDU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDDU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDDU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_7 ENDP
;----------------------------------------------------------------------
CHK_INS_7 PROC NEAR 
	CMP 	RIGHT_HAND, 0
	JNE 	_GAME_OVER8
	CMP 	LEFT_HAND, 1
	JNE 	_GAME_OVER8
	CMP 	RIGHT_LEG, 1
	JNE 	_GAME_OVER8
	CMP 	LEFT_LEG, 0
	JNE 	_GAME_OVER8
	RET 

 _GAME_OVER8:
	CALL 	GAME_OVER2
	RET 
CHK_INS_7 ENDP
;----------------------------------------------------------------------
INSTANCE_8 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_UUDU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUDU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUDU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUDU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUDU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_8 ENDP
;----------------------------------------------------------------------
CHK_INS_8 PROC NEAR 
	CMP 	RIGHT_HAND, 1
	JNE 	_GAME_OVER8
	CMP 	LEFT_HAND, 1
	JNE 	_GAME_OVER8
	CMP 	RIGHT_LEG, 1
	JNE 	_GAME_OVER8
	CMP 	LEFT_LEG, 0
	JNE 	_GAME_OVER8
	RET 
CHK_INS_8 ENDP
;----------------------------------------------------------------------
INSTANCE_9 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_DDUD1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDUD2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDUD3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDUD4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDUD5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_9 ENDP
;----------------------------------------------------------------------
CHK_INS_9 PROC NEAR 
	CMP 	RIGHT_HAND, 0
	JNE 	_GAME_OVER9
	CMP 	LEFT_HAND, 0
	JNE 	_GAME_OVER9
	CMP 	RIGHT_LEG, 0
	JNE 	_GAME_OVER9
	CMP 	LEFT_LEG, 1
	JNE 	_GAME_OVER9
	RET 

 _GAME_OVER9:
	CALL 	GAME_OVER2
	RET 
CHK_INS_9 ENDP
;----------------------------------------------------------------------
INSTANCE_10 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_DUUD1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUUD2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUUD3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUUD4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUUD5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_10 ENDP
;----------------------------------------------------------------------
CHK_INS_10 PROC NEAR 
	CMP 	RIGHT_HAND, 1
	JNE 	_GAME_OVER7
	CMP 	LEFT_HAND, 0
	JNE 	_GAME_OVER7
	CMP 	RIGHT_LEG, 0
	JNE 	_GAME_OVER7
	CMP 	LEFT_LEG, 1
	JNE 	_GAME_OVER7
	RET 
CHK_INS_10 ENDP
;----------------------------------------------------------------------
INSTANCE_11 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_UDUD1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDUD2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDUD3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDUD4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDUD5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_11 ENDP
;----------------------------------------------------------------------
CHK_INS_11 PROC NEAR 
	CMP 	RIGHT_HAND, 0
	JNE 	_GAME_OVER7
	CMP 	LEFT_HAND, 1
	JNE 	_GAME_OVER7
	CMP 	RIGHT_LEG, 0
	JNE 	_GAME_OVER7
	CMP 	LEFT_LEG, 1
	JNE 	_GAME_OVER7
	RET 

 _GAME_OVER7:
	CALL 	GAME_OVER2
	RET 
CHK_INS_11 ENDP
;----------------------------------------------------------------------
INSTANCE_12 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_UUUD1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUUD2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUUD3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUUD4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUUD5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_12 ENDP
;----------------------------------------------------------------------
CHK_INS_12 PROC NEAR 
	CMP 	RIGHT_HAND, 1
	JNE 	_GAME_OVER7
	CMP 	LEFT_HAND, 1
	JNE 	_GAME_OVER7
	CMP 	RIGHT_LEG, 0
	JNE 	_GAME_OVER7
	CMP 	LEFT_LEG, 1
	JNE 	_GAME_OVER7
	RET 
CHK_INS_12 ENDP
;----------------------------------------------------------------------
INSTANCE_13 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_DDUU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDUU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDUU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDUU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DDUU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_13 ENDP
;----------------------------------------------------------------------
CHK_INS_13 PROC NEAR 
	CMP 	RIGHT_HAND, 0
	JNE 	_GAME_OVER5
	CMP 	LEFT_HAND, 0
	JNE 	_GAME_OVER5
	CMP 	RIGHT_LEG, 1
	JNE 	_GAME_OVER5
	CMP 	LEFT_LEG, 1
	JNE 	_GAME_OVER5
	RET 
CHK_INS_13 ENDP
;----------------------------------------------------------------------
INSTANCE_14 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_DUUU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUUU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUUU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUUU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_DUUU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_14 ENDP
;----------------------------------------------------------------------
CHK_INS_14 PROC NEAR 
	CMP 	RIGHT_HAND, 1
	JNE 	_GAME_OVER5
	CMP 	LEFT_HAND, 0
	JNE 	_GAME_OVER5
	CMP 	RIGHT_LEG, 1
	JNE 	_GAME_OVER5
	CMP 	LEFT_LEG, 1
	JNE 	_GAME_OVER5
	RET 

 _GAME_OVER5:
	CALL 	GAME_OVER2
	RET 
CHK_INS_14 ENDP
;----------------------------------------------------------------------
INSTANCE_15 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_UDUU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDUU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDUU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDUU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UDUU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_15 ENDP
;----------------------------------------------------------------------
CHK_INS_15 PROC NEAR 
	CMP 	RIGHT_HAND, 0
	JNE 	_GAME_OVER5
	CMP 	LEFT_HAND, 1
	JNE 	_GAME_OVER5
	CMP 	RIGHT_LEG, 1
	JNE 	_GAME_OVER5
	CMP 	LEFT_LEG, 1
	JNE 	_GAME_OVER5
	RET 
CHK_INS_15 ENDP
;----------------------------------------------------------------------
INSTANCE_16 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_UUUU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUUU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUUU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUUU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_UUUU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_16 ENDP
;----------------------------------------------------------------------
INSTANCE_17 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_BBDD1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBDD2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBDD3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBDD4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBDD5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_17 ENDP
;----------------------------------------------------------------------
INSTANCE_18 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_BBUD1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBUD2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBUD3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBUD4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBUD5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_18 ENDP
;----------------------------------------------------------------------
INSTANCE_19 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_BBUU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBUU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBUU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBUU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBUU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_19 ENDP
;----------------------------------------------------------------------
INSTANCE_20 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_BBDU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBDU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBDU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBDU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BBDU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_20 ENDP
;----------------------------------------------------------------------
INSTANCE_21 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_BDUD1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BDUD2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BDUD3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BDUD4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BDUD5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_21 ENDP
;----------------------------------------------------------------------
INSTANCE_22 PROC NEAR
	MOV 	CX, 14
	LEA 	SI, PATH_BDUU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BDUU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BDUU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BDUU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 14
	LEA 	SI, PATH_BDUU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	RET 
INSTANCE_22 ENDP
;----------------------------------------------------------------------
CHK_INS_16 PROC NEAR 
	CMP 	RIGHT_HAND, 1
	JNE 	_GAME_OVER6
	CMP 	LEFT_HAND, 1
	JNE 	_GAME_OVER6
	CMP 	RIGHT_LEG, 1
	JNE 	_GAME_OVER6
	CMP 	LEFT_LEG, 1
	JNE 	_GAME_OVER6
	RET 

 _GAME_OVER6:
	CALL 	GAME_OVER2
	RET 
CHK_INS_16 ENDP
;----------------------------------------------------------------------
CHK_INS_17 PROC NEAR 
	CMP 	RIGHT_HAND, 2
	JNE 	_GAME_OVER6
	CMP 	LEFT_HAND, 2
	JNE 	_GAME_OVER6
	CMP 	RIGHT_LEG, 0
	JNE 	_GAME_OVER6
	CMP 	LEFT_LEG, 0
	JNE 	_GAME_OVER6
	RET 
CHK_INS_17 ENDP
;----------------------------------------------------------------------
CHK_INS_18 PROC NEAR 
	CMP 	RIGHT_HAND, 2
	JNE 	_GAME_OVER10
	CMP 	LEFT_HAND, 2
	JNE 	_GAME_OVER10
	CMP 	RIGHT_LEG, 1
	JNE 	_GAME_OVER10
	CMP 	LEFT_LEG, 0
	JNE 	_GAME_OVER10
	RET 
CHK_INS_18 ENDP
;----------------------------------------------------------------------
CHK_INS_19 PROC NEAR 
	CMP 	RIGHT_HAND, 2
	JNE 	_GAME_OVER10
	CMP 	LEFT_HAND, 2
	JNE 	_GAME_OVER10
	CMP 	RIGHT_LEG, 1
	JNE 	_GAME_OVER10
	CMP 	LEFT_LEG, 1
	JNE 	_GAME_OVER10
	RET 

 _GAME_OVER10:
	CALL 	GAME_OVER2
	RET 
CHK_INS_19 ENDP
;----------------------------------------------------------------------
CHK_INS_20 PROC NEAR 
	CMP 	RIGHT_HAND, 2
	JNE 	_GAME_OVER10
	CMP 	LEFT_HAND, 2
	JNE 	_GAME_OVER10
	CMP 	RIGHT_LEG, 0
	JNE 	_GAME_OVER10
	CMP 	LEFT_LEG, 1
	JNE 	_GAME_OVER10
	RET 
CHK_INS_20 ENDP
;----------------------------------------------------------------------
GAME_OVER2 PROC NEAR
	MOV 	GAME_STATUS, 3
	MOV 	DX, 0000H
	CALL 	_SET_CURSOR
	MOV 	BH, 04H 
	MOV 	CX, 0000H
	MOV 	DX, 184FH 
	CALL 	_CLEAR_SCREEN
	;open file
	MOV 	AH, 3DH
	MOV 	AL, 00
	LEA 	DX, PATH_GAMEOVER
	INT 	21H
	MOV 	HANDLE_LOADING, AX

	;read file
	MOV 	AH, 3FH
	MOV 	BX, HANDLE_LOADING
	MOV 	CX, 7500
	LEA 	DX, PLAY_STR
	INT 	21H
	LEA 	SI, PLAY_STR
	CALL 	OUTPUT_EXT

	MOV 	DX, 0622H
	CALL 	_SET_CURSOR
	LEA 	DX, SCORE_TXT
	MOV 	AH, 09H
	INT 	21H
	LEA 	SI, SCORE_TXT
	LEA 	DI, HISCORE_TXT
	ADD 	SI, 7
	ADD 	DI, 10
	MOV 	CX, 3
_HIGH_SCORE:
	MOV 	AH, [SI]
	MOV 	AL, [DI]
	CMP 	AH, AL
	JA 		__NEW_HIGH
	JB 		__NOT_NEW
	INC 	SI
	INC 	DI
	LOOP 	_HIGH_SCORE

__NOT_NEW:
	MOV 	DX, 0521H
	CALL 	_SET_CURSOR
	LEA 	DX, HISCORE_TXT
	MOV 	AH, 09H
	INT 	21H
	JMP 	_GAMEOVER_CONT

__NEW_HIGH:
	MOV 	DX, 0521H
	CALL 	_SET_CURSOR
	LEA 	DX, NEW_HIGH_SCORE
	MOV 	AH, 09H
	INT 	21H
	LEA 	SI, SCORE_TXT
	LEA 	DI, SCORE
	ADD 	SI, 7
	MOV 	CX, 3
___SET_NEW_HS:
	MOV 	AH, [SI]
	MOV 	[DI], AH
	INC 	SI
	INC 	DI
	LOOP 	___SET_NEW_HS
	MOV 	AH, 40H
	MOV 	BX, HANDLE_HISCORE
	MOV 	CX, 3
	LEA 	DX, PATH_SCORE
	INT 	21H

_GAMEOVER_CONT:
	MOV 	BP, 50
	MOV 	SI, 50
	CALL 	_DELAY

	CALL 	OURMAIN
	RET
GAME_OVER2 ENDP
;----------------------------------------------------------------------
END OURMAIN