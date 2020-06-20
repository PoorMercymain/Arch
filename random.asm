TITLE random
INCLUDE Irvine32.inc
.data
	mes BYTE "Random number #", 0
	mes1 BYTE " = ", 0
	number DWORD 0
.code
main PROC
	call Randomize
	mov ecx, 50
generateandprint:
	add number, 1
	mov edx, OFFSET mes
	call WriteString
	mov eax, number
	call WriteDec
	mov edx, OFFSET mes1
	call WriteString
	mov	eax, 41
	call RandomRange
	sub eax, 20
	call WriteInt
	call CrLf
	loop generateandprint
	exit
main ENDP
END main