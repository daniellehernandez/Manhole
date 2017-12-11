PATH_HOWPAGE   DB  'howto.txt', 00H

HOWTO PROC NEAR
  MOV   BH, 0EH         
  MOV   CX, 0B15H       
  MOV   DX, 1223H       
  CALL  _CLEAR_SCREEN

  ;open file
  MOV   AH, 3DH
  MOV   AL, 00
  LEA   DX, PATH_HOWPAGE
  INT   21H
  MOV   HANDLE_LOADING, AX

  ;read file
  MOV   AH, 3FH
  MOV   BX, HANDLE_LOADING
  MOV   CX, 7500
  LEA   DX, LOAD_STR
  INT   21H

  MOV   DL, 0H
  MOV   DH, 0
  CALL  _SET_CURSOR

  ;print
  LEA   SI, LOAD_STR
  CALL  OUTPUT_EXT

  MOV   CL, 05H
ITERATE:
  MOV DX, 1747H
  CALL  _SET_CURSOR
  CALL  _GET_KEY
 JMP   ITERATE

;close file handle of input
  MOV   AH, 3EH
  MOV   BX, HANDLE_LOADING
  INT   21H
  JMP   EXIT

RET
HOWTO ENDP