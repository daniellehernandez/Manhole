TITLE MANHOLE (SIMPLIFIED .EXE FORMAT)
.MODEL SMALL
;---------------------------------------------
.STACK 32
;---------------------------------------------
.DATA
	PATH_LOADING	DB 	'res/LOAD.txt', 00H
	PATH_MENU		DB 	'res/mm.txt', 00H
	HANDLE_LOADING	DW 	?
	HANDLE_MENU		DW 	?
	LOAD_STR 		DB 	7500 DUP('$'), '$'
	MENU_STR 		DB 	7500 DUP('$'), '$'

	PROMPT_ERROR1	DB 	"Error in opening file.", '$'
	PROMPT_ERROR2	DB 	"Error reading from file.", '$'
	PROMPT_ERROR3 	DB	"No record read from file.", '$'

	STATUS			DB	1 				;1 for PLAY, 2 for HOW TO PLAY, 3 for HIGHSCORE, 4 for EXIT

;---------------------------------------------
.CODE
OURMAIN PROC FAR

	MOV		AX, @data				;set DS to address of code segment
	MOV 	DS, AX

	MOV		BH, 0EH 				;background: black, foreground: orange
	MOV 	CX, 0000H  				;from top, leftmost
	MOV		DX, 184FH 				;to bottom, rightmost
	CALL	_CLEAR_SCREEN			;clear screen

  	CALL	LOADPAGE
  	CALL 	MAINMENU

EXIT:
	MOV 	AH, 4CH 
	INT 	21H
OURMAIN ENDP 
;----------------------------------------------------------------------
LOADPAGE PROC NEAR
	;open file
	MOV 	AH, 3DH
	MOV 	AL, 00
	LEA 	DX, PATH_LOADING
	INT 	21H
	JC 		DISPLAY_ERROR1
	MOV 	HANDLE_LOADING, AX

	;read file
	MOV 	AH, 3FH
	MOV 	BX, HANDLE_LOADING
	MOV 	CX, 7500
	LEA 	DX, LOAD_STR
	INT 	21H
	JC 		DISPLAY_ERROR2
	CMP 	AX, 00
	JE 		DISPLAY_ERROR3

	MOV 	DL, 0H
	MOV 	DH, 0
	CALL 	_SET_CURSOR

	;print
	LEA 	SI, LOAD_STR
	CALL 	OUTPUT_EXT

	MOV 	CL, 05H

LOADING:
	MOV 	DH, 21
	MOV 	DL, CL
	CALL 	_SET_CURSOR

	MOV 	DX, 219
	MOV 	AH, 02H
	INT 	21H

	MOV 	BP, 2 					;lower value faster
	MOV 	SI, 2 					;lower value faster
	CALL 	_DELAY

	INC 	CL
	CMP 	CL, 73
	JNE 	LOADING

	;close file handle of input
	MOV 	AH, 3EH
	MOV 	BX, HANDLE_LOADING
	INT 	21H
	RET

DISPLAY_ERROR1:
	LEA 	DX, PROMPT_ERROR1
	MOV 	AH, 09H
	INT 	21H
	JMP 	EXIT

DISPLAY_ERROR3:
	LEA 	DX, PROMPT_ERROR3
	MOV 	AH, 09H
	INT 	21H
	JMP 	EXIT

DISPLAY_ERROR2:
	LEA 	DX, PROMPT_ERROR2
	MOV 	AH, 09H
	INT 	21H
	JMP 	EXIT
RET
LOADPAGE ENDP
;----------------------------------------------------------------------
MAINMENU PROC NEAR
	MOV		BH, 8EH 				;background: black, foreground: orange
	MOV 	CX, 0B15H  				;from top, leftmost
	MOV		DX, 1223H 				;to bottom, rightmost
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

	MOV 	DL, 0H
	MOV 	DH, 0
	CALL 	_SET_CURSOR

	;print
	LEA 	SI, LOAD_STR
	CALL 	OUTPUT_EXT

	MOV 	CL, 05H
ITERATE:
	CALL 	_GET_KEY
	JMP 	ITERATE

	;close file handle of input
	MOV 	AH, 3EH
	MOV 	BX, HANDLE_LOADING
	INT 	21H
	JMP 	EXIT

RET
MAINMENU ENDP
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
_TERMINATE PROC	NEAR
;set cursor
	CALL	_CLEAR_SCREEN

	;ADD CALL TO GAME LOGIC HERE OR RETURN TO MAIN
	MOV		AX, 4C00H
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
	JMP 	PRINT

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
			CMP 	AL, 1BH
			JMP 	EXIT
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

	__DECRE:
			MOV 	STATUS, 1
			JMP 	__MOV_POINTER
	__INCRE:
			MOV 	STATUS, 4
			JMP 	__MOV_POINTER


__LEAVETHIS:
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
	MOV 	DL, 16H
	MOV 	AH, 09H
	INT 	21
	JMP 	__LEAVETHIS

__HOWTO:
	MOV 	DH, 15H
	MOV 	DL, 17H
	CALL 	_SET_CURSOR
	MOV 	DL, 16
	MOV 	AH, 02H
	INT 	21
	JMP 	__LEAVETHIS	

__HIGH:
	MOV 	DH, 15H
	MOV 	DL, 2CH
	CALL 	_SET_CURSOR
	MOV 	DL, 16
	MOV 	AH, 02H
	INT 	21
	JMP 	__LEAVETHIS

__EXIT:
	MOV 	DH, 15H
	MOV 	DL, 3FH
	CALL 	_SET_CURSOR
	MOV 	DL, 16
	MOV 	AH, 02H
	INT 	21
	JMP 	__LEAVETHIS
_GET_KEY 	ENDP
;----------------------------------------------------------------------
END OURMAIN