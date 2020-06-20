TITLE cursor
INCLUDE Irvine32.inc
.data
	mesr BYTE "Type first number: ", 0
	mesl BYTE "Type second number: ", 0
	mes BYTE "Total: ", 0
.code
main PROC
	call ClrScr
	mov dh, 13
	mov dl, 21
	call GotoXY
	mov edx, OFFSET mesr
	call WriteString
	call ReadInt
	mov ebx, eax
	call ClrScr
	mov dh, 13
	mov dl, 20
	call GotoXY
	mov edx, OFFSET mesl
	call WriteString
	call ReadInt
	mov ecx, eax
	call ClrScr
	call GotoXY
	mov eax, ebx
	add eax, ecx
	call ClrScr
	mov dh, 13
	mov dl, 33
	call GotoXY
	mov edx, OFFSET mes
	call WriteString
	call WriteInt
	exit
main ENDP
END main