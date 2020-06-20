TITLE numbers
INCLUDE Irvine32.inc
.data
	enternumber BYTE "Write a number: ", 0
	mes BYTE "Element with ", 0
	mes1 BYTE " index = ", 0
	mas SDWORD 10 DUP(0)
	key DWORD 0
	elementnumber DWORD 0
.code
main PROC
		mov ebx, OFFSET enternumber
		mov ecx, 10

input:
	mov	edx, OFFSET enternumber
	call WriteString
	call ReadInt
	mov ebx, OFFSET mas
	add ebx, key
	mov [ebx], eax
	add key, 4
	loop input
	mov key, 0
	mov ecx, 10
output:
	mov	edx, OFFSET mes
	call WriteString
	mov eax, elementnumber
	call WriteDec
	mov	edx, OFFSET mes1
	call WriteString
	mov ebx, OFFSET mas
	add ebx, key
	mov	eax, [ebx]
	call WriteInt
	call CrLf
	add elementnumber, 1
	add key, 4
	loop output
	exit
main ENDP
END main