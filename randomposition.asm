TITLE randomposition
INCLUDE Irvine32.inc
.data
	sym BYTE 0
.code
main PROC
	call Randomize
	mov al, 94
	call RandomRange
	add al, 33
	mov sym, al
	mov eax, 15
	call RandomRange
	add eax, 1
	call SetTextColor
	call ClrScr
	mov ecx, 100
looppos:
	mov	eax, 25
	call RandomRange
	mov dh, al
	mov	eax, 80
	call RandomRange
	mov dl, al
	call GotoXY
	mov al, sym
	call WriteChar
	mov	eax, 291
	call RandomRange
	add eax, 10
	call Delay
	loop looppos
	mov dh, 27
	mov dl, 0
	call GotoXY
	mov eax, 15
	call SetTextColor
	exit
main ENDP
END main