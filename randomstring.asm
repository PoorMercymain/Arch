TITLE randomstring
INCLUDE Irvine32.inc
.data
	mes BYTE "Random string #", 0
	mes1 BYTE " = ", 0
	number DWORD 0
	randomstring BYTE 10 DUP(0)
.code
main PROC
	call Randomize
	mov ecx, 20
strloop:
	add number, 1
	mov edx, OFFSET randomstring
	mov ebx, ecx
	mov ecx, 10
symloop:
	mov	eax, 26
	call RandomRange
	add eax, 65
	mov	[edx], eax
	add edx, 1
	loop symloop
	mov ecx, ebx
	mov edx, OFFSET mes
	call WriteString
	mov eax, number
	call WriteDec
	mov edx, OFFSET mes1
	call WriteString
	mov	edx, OFFSET randomstring
	call WriteString
	call CrLf
	loop strloop
	exit
main ENDP
END main