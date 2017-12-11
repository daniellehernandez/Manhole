  PATH_SCORE   DB  'score.txt', 00H
  LOAD_STR2    DB  2 DUP('$'), '$'
  PATH_SCOREZ   DB  'high.txt', 00H

HIGHS PROC NEAR
  MOV   BH, 0EH         
  MOV   CX, 0B15H       
  MOV   DX, 1223H       
  CALL  _CLEAR_SCREEN

  ;open file
  MOV   AH, 3DH
  MOV   AL, 00
  LEA   DX, PATH_SCOREZ
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
  ;close file handle of input
  MOV   AH, 3EH
  MOV   BX, HANDLE_LOADING
  INT   21H

;ITERATE:
;open file
  MOV   AH, 3DH
  MOV   AL, 00
  LEA   DX, PATH_SCORE
  INT   21H
  MOV   HANDLE_LOADING, AX

  ;read file
  MOV   AH, 3FH
  MOV   BX, HANDLE_LOADING
  MOV   CX, 2
  LEA   DX, LOAD_STR2
  INT   21H
  MOV DX, 1024H
  CALL  _SET_CURSOR

  LEA SI, LOAD_STR2
  CALL OUTPUT_EXT


  ;close file handle of input
  MOV   AH, 3EH
  MOV   BX, HANDLE_LOADING
  INT   21H
  JMP   EXIT

RET
HIGHS ENDP