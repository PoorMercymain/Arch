TITLE randomcolorandbackground
INCLUDE Irvine32.inc
.data
	sym BYTE 0
	bcgrnd DWORD 0
	mes BYTE "Possible combinations: ", 0
	mes1 BYTE " "
	mes2 BYTE 23 DUP(" ")
.code
main PROC
	call Randomize
	mov al, 94
	call RandomRange
	add al, 33
	mov sym, al
	call ClrScr
	mov edx, OFFSET mes
	call WriteString
	mov ecx, 16
colorloop:
	mov ebx, ecx
	.IF ecx!=16
	mov eax, 15
	call SetTextColor
	mov edx, OFFSET mes2
	call WriteString
	.ENDIF
	mov ecx, 16
bcgrndloop:
	mov eax, ecx
	sub eax, 1
	add eax, bcgrnd
	call SetTextColor
	mov al, sym
	call WriteChar
	mov al, mes1
	call WriteChar
	loop bcgrndloop
	call CrLf
	mov ecx, ebx
	add bcgrnd, 16
	loop colorloop
	mov eax, 15
	call SetTextColor
	exit
main ENDP
END main