TITLE FILE READ (SIMPLFIED .EXE FORMAT)
.MODEL SMALL
;---------------------------------------------
.STACK 32
;---------------------------------------------
.DATA
  TEMP		DB		?
LOAD_STR	DB		'Loading...$'
COMPLETE_STR	DB	'Complete!$'

;---------------------------------------------
.CODE
OURMAIN PROC FAR

;set DS to address of code segment
	MOV		AX, @CODE
	MOV 	DS, AX
;clear screen
	CALL	_CLEAR_SCREEN
	MOV		DL, 00
	MOV		DH, 11
	CALL	_SET_CURSOR

  CALL LOADPAGE
OURMAIN ENDP 

LOADPAGE PROC NEAR
	MOV		TEMP, 00

__ITERATE:
;set cursor
	MOV		DL, TEMP
	MOV		DH, 12
	CALL	_SET_CURSOR

;display char from register
	MOV		AL, 0DBH
	MOV		AH, 02H
	MOV		DL, AL
	INT		21H

	CALL	_DELAY

    INC		TEMP
	CMP		TEMP, 50H
	JE		_TERMINATE

	JMP		__ITERATE

RET
LOADPAGE ENDP

_TERMINATE PROC	NEAR
;set cursor
	CALL	_CLEAR_SCREEN

	;ADD CALL TO GAME LOGIC HERE OR RETURN TO MAIN
	MOV		AX, 4C00H
	INT		21H
  
  RET	
_TERMINATE ENDP

_CLEAR_SCREEN PROC	NEAR
	MOV		AX, 0600H
	MOV		BH, 86H
	MOV 	CX, 0000H
	MOV		DX, 184FH
	INT		10H
	RET
_CLEAR_SCREEN ENDP

_SET_CURSOR PROC	NEAR
	MOV		AH, 02H
	MOV		BH, 00
	INT		10H
	RET
_SET_CURSOR ENDP

_DELAY PROC	NEAR
	MOV BP, 2 ;lower value faster
	MOV SI, 2 ;lower value faster
	DELAY2:
		DEC BP		
		NOP
		jJNZ DELAY2
		DEC SI
		CMP SI,0
		JNZ DELAY2
	RET
_DELAY ENDP
;-------------------------------------------
END OURMAIN