TITLE differentcolors
INCLUDE Irvine32.inc
.data
	mes BYTE "Different colors", 13, 10, 0

.code
main PROC
	mov ebx, 5
	mov ecx, 4
while1:
	mov eax, ebx
	call SetTextColor
	mov	edx, OFFSET mes
	call WriteString
	add ebx, 1
	loop while1
	mov eax, 15
	call SetTextColor
	exit
main ENDP
END main