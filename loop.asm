TITLE torepeat
INCLUDE Irvine32.inc
.data
	mes BYTE "Type a symbol: ", 0
	mes1 BYTE "The symbol is: ", 0
	inputsymbol BYTE 0
.code
main PROC
	mov ecx, 3
	call ClrScr
torepeat:
	mov edx, OFFSET mes
	call WriteString
	call ReadChar
	mov inputsymbol, al
	mov edx, OFFSET mes1
	call ClrScr
	call WriteString
	call WriteChar
	mov	eax, 3000
	call Delay
	call ClrScr
	loop torepeat
	exit
main ENDP
END main