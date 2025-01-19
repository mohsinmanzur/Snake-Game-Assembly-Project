INCLUDE Irvine32.inc

.data

SPEED_FACTOR WORD 40

main1 BYTE "WELCOME TO OUR SNAKE GAME!!!!", 0
creds BYTE "CREATED BY:", 0
aadil BYTE "- 22K-4339 - Syed Aadil Ahmed", 0
junaid BYTE "- 22K-4300 - Junaid Shaikh", 0
mohsin BYTE "- 22K-4370 - Muhammad Mohsin", 0

diff1 BYTE "IT HAS THREE LEVELS OF DIFFICULTY", 0
diff2 BYTE "1. Hard     2. Medium     3. Easy", 0
diff3 BYTE "ENTER DIFFICULTY (1 - 3): ",0
difficulty	DWORD 0

again BYTE "PLAY AGAIN? (1/0) ",0

line BYTE 84 DUP("#"), 0
border BYTE 52 DUP("_"), 0

snake BYTE ">", 100 DUP("}")

score BYTE "SCORE: ",0
scorecount BYTE 0

game_end BYTE "GAME OVER!!!! THE SNAKE DIED", 0
finalscore BYTE " FINAL SCORE: ",0

foodx BYTE ?
foody BYTE ?

horizAxis BYTE 45,44,43,42,41, 100 DUP(?)
vertAxis BYTE 15,15,15,15,15, 100 DUP(?)

horizAxisFence BYTE 34,34,85,85			
vertAxisFence BYTE 5,24,5,24

inputChar BYTE ?
lastInputChar BYTE ?

.code
main PROC

call MainMenu
call ClrScr
call ShowScore
call Cage

exit
main ENDP

MainMenu PROC

mov dh, 4
mov dl, 20
call GoToXY
mov edx, OFFSET line
call WriteString

mov dh, 7
mov dl, 48
call GoToXY
mov edx, OFFSET main1
call WriteString

mov dh, 17
mov dl, 20
call GoToXY
mov edx, OFFSET line
call WriteString

mov dh, 23
mov dl, 75
call GoToXY
mov edx, OFFSET creds
call WriteString

mov dh, 24
mov dl, 85
call GoToXY
mov edx, OFFSET mohsin
call WriteString

mov dh, 25
mov dl, 85
call GoToXY
mov edx, OFFSET aadil
call WriteString

mov dh, 26
mov dl, 85
call GoToXY
mov edx, OFFSET junaid
call WriteString

mov dh, 10
mov dl, 47
call GoToXY
mov edx, OFFSET diff1
call WriteString

mov dh, 11
mov dl, 47
call GoToXY
mov edx, OFFSET diff2
call WriteString

again1:

mov dh, 14
mov dl, 47
call GoToXY
mov edx, OFFSET diff3
call WriteString

mov eax, 0
call ReadInt

CMP eax, 0
JLE again1

CMP eax, 4
JGE again1

mul SPEED_FACTOR
mov difficulty, eax

ret
MainMenu ENDP

ShowScore PROC

mov dl,34
mov dh,4
call Gotoxy

mov edx,OFFSET score
call WriteString

ret
ShowScore ENDP

Cage PROC

ret
Cage ENDP

END main