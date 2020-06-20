TITLE probability
INCLUDE Irvine32.inc
.data
	str1 BYTE 10 DUP(0)
	
.code
main PROC
	call Randomize
	call ClrScr
	mov ecx, 20
generateloop:
	mov edx, OFFSET str1
	mov ebx, ecx
	mov ecx, 10
fillloop:
	mov al, 94
	call RandomRange
	add al, 33
	mov	[edx], eax
	add edx, 1
	loop fillloop
	mov ecx, ebx
	mov eax, 10
	call RandomRange
	.IF eax == 3
		mov eax, blue
	.ELSEIF eax < 3
		mov eax, white
	.ELSE 
		mov eax, green
	.ENDIF
	call SetTextColor
	mov	edx, OFFSET str1
	call WriteString
	call CrLf
	loop generateloop
	mov eax, white
	call SetTextColor
	exit
main ENDP
END main