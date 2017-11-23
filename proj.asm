TITLE MANHOLE (SIMPLIFIED .EXE FORMAT)
.MODEL SMALL
;---------------------------------------------
.STACK 32
;---------------------------------------------
.DATA
  	TEMP			DB		?
	LOAD_STR		DB		'Loading...$'
	COMPLETE_STR	DB		'Complete!$'

;---------------------------------------------
.CODE
OURMAIN PROC FAR

	MOV		AX, @data				;set DS to address of code segment
	MOV 	DS, AX

	CALL	_CLEAR_SCREEN			;clear screen

	MOV		DL, 22H
	MOV		DH, 11
	CALL	_SET_CURSOR

  	CALL LOADPAGE
OURMAIN ENDP 
;----------------------------------------------------------------------
LOADPAGE PROC NEAR
	MOV		TEMP, 00 				;initially at leftmost

__ITERATE:
	MOV		DL, TEMP				;set cursor
	MOV		DH, 12
	CALL	_SET_CURSOR

	MOV		AL, 0DBH				;display char from register
	MOV		AH, 02H
	MOV		DL, AL
	INT		21H

	CALL	_DELAY					;delays movement of loading bar

    INC		TEMP
	CMP		TEMP, 50H
	JE		_TERMINATE				;terminates if reached rightmost

	JMP		__ITERATE				;else, iterate

RET
LOADPAGE ENDP
;----------------------------------------------------------------------
_CLEAR_SCREEN PROC	NEAR
	MOV		AX, 0600H
	MOV		BH, 06H 				;background: black, foreground: orange
	MOV 	CX, 0000H  				;from top, leftmost
	MOV		DX, 184FH 				;to bottom, rightmost
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
	MOV 	BP, 2 					;lower value faster
	MOV 	SI, 2 					;lower value faster
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
END OURMAIN