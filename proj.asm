TITLE MANHOLE (SIMPLIFIED .EXE FORMAT)
.MODEL SMALL
;---------------------------------------------
.STACK 32
;---------------------------------------------
.DATA
	PATH_LOADING	DB 	'res/LOAD.txt', 00H
	PATH_MENU		DB 	'res/mm.txt', 00H
	PATH_WS1 		DB 	'res/ws5.txt', 00H
	PATH_WS2 		DB 	'res/ws4.txt', 00H
	PATH_WS3 		DB 	'res/ws3.txt', 00H
	PATH_WS4 		DB 	'res/ws2.txt', 00H
	PATH_WS5 		DB 	'res/ws1.txt', 00H
	PATH_WL1 		DB 	'res/wl5.txt', 00H
	PATH_WL2 		DB 	'res/wl4.txt', 00H
	PATH_WL3 		DB 	'res/wl3.txt', 00H
	PATH_WL4 		DB 	'res/wl2.txt', 00H
	PATH_WL5 		DB 	'res/wl1.txt', 00H
	PATH_WU1 		DB 	'res/wu5.txt', 00H
	PATH_WU2 		DB 	'res/wu4.txt', 00H
	PATH_WU3 		DB 	'res/wu3.txt', 00H
	PATH_WU4 		DB 	'res/wu2.txt', 00H
	PATH_WU5 		DB 	'res/wu1.txt', 00H
	PATH_SL1 		DB 	'res/sl5.txt', 00H
	PATH_SL2 		DB 	'res/sl4.txt', 00H
	PATH_SL3 		DB 	'res/sl3.txt', 00H
	PATH_SL4 		DB 	'res/sl2.txt', 00H
	PATH_SL5 		DB 	'res/sl1.txt', 00H
	PATH_EASY1 		DB 	12 DUP (00H)
	PATH_EASY2 		DB 	12 DUP (00H)
	PATH_EASY3		DB 	12 DUP (00H)
	PATH_EASY4 		DB 	12 DUP (00H)
	PATH_EASY5 		DB 	12 DUP (00H)
	HANDLE_LOADING	DW 	?
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
	EASY_STATUS		DB 	0
	CURR_STATE 		DB 	1
	GAME_STATUS 	DB 	1
	SCORE 			DB 	0
	INTERVAL 		DW 	4500
	LOOPS 			DB 	15

	PRN 			DW 	1

	LOADING_1 		DB 	"Loading 'res\easy\...'", '$'
	LOADING_2 		DB 	"Loading 'res\medium\...'", '$'
	LOADING_3 		DB 	"Loading 'res\hard\...'", '$'	
	LOADING_4 		DB 	"Loading 'res\highscore\...'", '$'
	LOADING_5 		DB 	"Initializing...", '$'
	SCORE_TXT		DB  "SCORE: 00", '$'

;---------------------------------------------
.CODE
OURMAIN PROC FAR

	MOV		AX, @data				;set DS to address of code segment
	MOV 	DS, AX
	MOV 	ES, AX


	MOV		BH, 0EH 				;background: black, foreground: orange
	MOV 	CX, 0000H  				;from top, leftmost
	MOV		DX, 184FH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen

 	CALL	LOADPAGE				;call loadpage
 	CALL 	MAINMENU				;call mainmenu
	CMP 	STATUS, 4 				;status 4 is quit
	JE 		EXIT
	CMP 	STATUS, 1 				;status 4 is play
	JE 		GOTO_PLAY
	JNE		EXIT 				;TODO should be replaced by actual menu

GOTO_PLAY:
	CALL 	PLAY
EXIT:
	MOV 	AH, 4CH 				;force exit
	INT 	21H
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

	MOV		BH, 0EH 				;background: black, foreground: orange
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

DISPLAY_LOADING4:
	LEA 	DX, LOADING_4
	MOV 	AH, 09H
	INT 	21H
	MOV 	BP, 2 					
	MOV 	SI, 2 					
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

LOADPAGE ENDP
;----------------------------------------------------------------------
MAINMENU PROC NEAR
	MOV		BH, 8EH 				;background: blinking, foreground: yellow
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
	MOV 	DX, 174FH
	CALL 	_CLEAR_SCREEN

	;close file handle of input
	MOV 	AH, 3EH
	MOV 	BX, HANDLE_LOADING
	INT 	21H
	RET

MAINMENU ENDP
;----------------------------------------------------------------------
PLAY PROC NEAR
PLAYING:
	SUB 	INTERVAL, 50
	;random number generator
	MOV     AH, 00h   				; interrupt to get system timer in CX:DX 
	INT     1AH
	MOV     [PRN], DX
    MOV     AX, 25173          		; LCG Multiplier
    MUL     word ptr [PRN]     		; DX:AX = LCG multiplier * seed
    ADD     AX, 13849          		; Add LCG increment value
    MOV     [PRN], AX          		; Update seed = return value
	XOR     DX, DX
	MOV     CX, 4    
	DIV     CX        ; here dx contains the remainder - from 0 to 4

	CMP 	DX, 1
	JB 		INSTANCE_ONE
	JE 		INSTANCE_TWO
	CMP 	DX, 3
	JB		INSTANCE_THREE_BR
	JE 		INSTANCE_FOUR_BR

INSTANCE_ONE:
	MOV 	CX, 12
	LEA 	SI, PATH_WS1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WS2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WS3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WS4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WS5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	JMP 	START

INSTANCE_THREE_BR:
	JMP 	INSTANCE_THREE

INSTANCE_FOUR_BR:
	JMP 	INSTANCE_FOUR

INSTANCE_TWO:
	MOV 	CX, 12
	LEA 	SI, PATH_WU1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WU2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WU3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WU4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WU5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	JMP 	START

INSTANCE_THREE:
	MOV 	CX, 12
	LEA 	SI, PATH_WL1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WL2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WL3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WL4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_WL5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
	JMP 	START

INSTANCE_FOUR:
	MOV 	CX, 12
	LEA 	SI, PATH_SL1
	LEA		DI, PATH_EASY1
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_SL2
	LEA		DI, PATH_EASY2
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_SL3
	LEA		DI, PATH_EASY3
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_SL4
	LEA		DI, PATH_EASY4
	REP 	MOVSB
	MOV 	CX, 12
	LEA 	SI, PATH_SL5
	LEA		DI, PATH_EASY5
	REP 	MOVSB
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
	LEA 	DX, PLAY_STR
	MOV 	AH, 09H
	INT 	21H
	JMP 	EXIT

DISPLAY_ERROR2:
	LEA 	DX, PROMPT_ERROR2
	MOV 	AH, 09H
	INT 	21H
	JMP 	EXIT

DISPLAY_ERROR3:
	LEA 	DX, PROMPT_ERROR3
	MOV 	AH, 09H
	INT 	21H
	JMP 	EXIT

PLAYING_BR:
	JMP 	PLAYING

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
	CMP 	CURR_STATE, 13
	JBE		EASY_FIVE
	LEA 	SI, SCORE_TXT
	ADD 	SI, 8
	MOV 	AH, [SI]
	INC 	AH
	CMP 	AH, 58
	JE 		TENS_INC
	MOV 	[SI], AH
DEC_LOOPS:
	DEC 	LOOPS
	CMP 	LOOPS, 0
	JNE 	PLAYING_BR
	RET

TENS_INC:
	MOV 	AH, 48
	MOV 	[SI], AH
	DEC 	SI
	MOV 	AH, [SI]
	INC 	AH
	MOV 	[SI], AH
	JMP 	DEC_LOOPS

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
	MOV 	DX, 0101H
	CALL 	_SET_CURSOR
	LEA 	DX, SCORE_TXT
	MOV 	AH, 09H
	INT 	21H
	MOV 	DX, 0000H
	CALL 	_SET_CURSOR
	CALL 	_GET_KEY_PL
	CMP 	RIGHT_HAND, 0
	JE 		IMPL_UPR_RIGHT_DOWN
	JNE 	IMPL_UPR_RIGHT_UP
CONT_CMP:
	CMP	 	LEFT_HAND, 0
	JE 		IMPL_UPR_LEFT_DOWN_BR
	JNE 	IMPL_UPR_LEFT_UP_BR
CONT_CMP2:
	CMP 	LEFT_LEG, 0
	JE 		IMPL_LWR_LEFT_DOWN_BR
;	JNE 	IMPL_LWR_LEFT_UP	
CONT_CMP3:
	CMP 	RIGHT_LEG, 0
	JE 		IMPL_LWR_RIGHT_DOWN_BR
;	JE 		IMPL_LWR_RIGHT_UP

IMPL_UPR_RIGHT_DOWN:
	MOV		BH, 7EH 				;background: black, foreground: orange
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
	JMP	 	CONT_CMP

IMPL_UPR_LEFT_DOWN_BR:
	JMP 	IMPL_UPR_LEFT_DOWN
IMPL_UPR_LEFT_UP_BR:
	JMP 	IMPL_UPR_LEFT_UP
IMPL_LWR_LEFT_DOWN_BR:
	JMP 	IMPL_LWR_LEFT_DOWN
IMPL_LWR_RIGHT_DOWN_BR:
	JMP 	IMPL_LWR_RIGHT_DOWN

IMPL_UPR_RIGHT_UP:
	MOV 	BH, 7EH
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
	MOV 	CX, 0D28H  				;from top, leftmost
	MOV		DX, 0F2BH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	JMP 	CONT_CMP
DELAY3_BR:
	JMP 	DELAY3
IMPL_UPR_LEFT_DOWN:
	MOV		BH, 7EH 				;background: black, foreground: orange
	MOV 	CX, 0824H  				;from top, leftmost
	MOV		DX, 0827H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV		BH, 7EH 				;background: black, foreground: orange
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
	JMP	 	CONT_CMP2

CONTI:
	DEC 	BP		
	CMP 	BP, 0
	JNZ 	DELAY3_BR
	RET

IMPL_UPR_LEFT_UP:
	MOV 	BH, 7EH
	MOV 	CX, 0824H  				;from top, leftmost
	MOV		DX, 0827H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV 	CX, 091CH
	MOV 	DX, 091DH
	CALL 	_CLEAR_SCREEN
	MOV		BH, 7EH 				;background: black, foreground: orange
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
	MOV 	DX, 0E27H
	CALL 	_CLEAR_SCREEN	
	JMP 	CONT_CMP2

IMPL_LWR_LEFT_DOWN:
	MOV 	BH, 7EH
	MOV 	CX, 1026H
	MOV 	DX, 1527H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1623H
	MOV 	DX, 1626H
	CALL 	_CLEAR_SCREEN
	JMP 	CONT_CMP3

IMPL_LWR_RIGHT_DOWN:
	MOV 	BH, 7EH
	MOV 	CX, 1028H
	MOV 	DX, 1529H
	CALL 	_CLEAR_SCREEN
	MOV 	CX, 1629H
	MOV 	DX, 162CH
	CALL 	_CLEAR_SCREEN
	JMP 	CONTI

_DELAYSEC ENDP
;----------------------------------------------------------------------
_TERMINATE PROC	NEAR
	MOV		AH, 4CH
	INT		21H
  
  RET	
_TERMINATE ENDP
;----------------------------------------------------------------------
OUTPUT_EXT PROC NEAR
PRINT:
	MOV 	DX, [SI]
	CMP 	DL, 226
	JNE		CONT

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
	JE 		RETURN_LOAD
	JNE 	PRINT

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

	CMP		AH, 4DH 
	JE		__RIGHT_ASSIGN	;value of RIGHT key is AH = 4DH
	CMP 	AH, 4BH
	JE		__LEFT_ASSIGN	;value of LEFT key is AH = 4BH
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
	MOV		BH, 0EH 				;background: black, foreground: orange
	MOV 	CX, 1507H  				;from top, leftmost
	MOV		DX, 1509H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen
	MOV		BH, 0EH 				;background: black, foreground: orange
	MOV 	CX, 1515H  				;from top, leftmost
	MOV		DX, 1518H 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen	
	MOV		BH, 0EH 				;background: black, foreground: orange
	MOV 	CX, 152AH  				;from top, leftmost
	MOV		DX, 152DH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen		
	MOV		BH, 0EH 				;background: black, foreground: orange
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

	JZ		__LEAVETHIS2

	MOV		AH, 00H			;get input	MOV AH, 10H; INT 16H [given]
	INT		16H

	CMP		AL, 46H 
	JE		__F				;value of RIGHT key is AH = 4DH
	CMP 	AL, 48H
	JE		__H				;value of LEFT key is AH = 4BH
	CMP 	AL, 66H
	JE 		__F
	CMP 	AL, 68H
	JE 		__H
	JNE 	__LEAVETHIS2		;TODO implement enter

__F:
	ADD 	LEFT_HAND, 1
	CMP 	LEFT_HAND, 2
	JE 		__DECREMENT
	MOV 	BH, 0EH
	MOV 	CX, 0E1DH
	MOV 	DX, 0E23H
	CALL 	_CLEAR_SCREEN
	JMP 	__MOV_POINTERS

__H:
	ADD		RIGHT_HAND, 1
	CMP 	RIGHT_HAND, 2
	JE 		__INCREMENT
	MOV 	BH, 0EH
	MOV 	CX, 0E2BH
	MOV 	DX, 0E32H
	CALL 	_CLEAR_SCREEN
	JMP 	__MOV_POINTERS


__LEAVETHIS2:
	MOV 	DH, 00
	MOV 	DL, 00
	CALL 	_SET_CURSOR
	RET

__DECREMENT:
	MOV 	LEFT_HAND, 0

	;BACKGROUND REVERT
	MOV 	BH, 0EH			
	MOV 	CH, 09
	MOV 	CL, 28
	MOV 	DH, 09
	MOV 	DL, 29
	CALL 	_CLEAR_SCREEN
	MOV 	CH, 10
	MOV 	CL, 30
	MOV 	DH, 10
	MOV 	DL, 31
	CALL 	_CLEAR_SCREEN
	MOV 	CH, 11
	MOV 	CL, 32
	MOV 	DH, 11
	MOV 	DL, 33
	CALL 	_CLEAR_SCREEN
	MOV 	CH, 12
	MOV 	CL, 34
	MOV 	DH, 12
	MOV 	DL, 35
	CALL 	_CLEAR_SCREEN
	MOV 	CH, 13
	MOV 	CL, 35
	MOV 	DH, 13
	MOV 	DL, 36
	CALL 	_CLEAR_SCREEN

	JMP 	__MOV_POINTERS

__INCREMENT:
	MOV 	RIGHT_HAND, 0

	;BACKGROUND REVERT
	MOV 	BH, 0EH
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


__MOV_POINTERS:

	MOV 	DH, 00
	MOV 	DL, 00
	CALL 	_SET_CURSOR
	LEA 	SI, PLAY_STR
	CALL 	OUTPUT_EXT
	JMP 	__LEAVETHIS2

_GET_KEY_PL	ENDP
;----------------------------------------------------------------------
END OURMAIN