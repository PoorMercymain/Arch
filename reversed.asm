TITLE reversed
INCLUDE Irvine32.inc
.data
source BYTE "This is the source string", 0
target BYTE SIZEOF source DUP(0)
.code
main PROC
    mov esi, 0
	mov ecx, SIZEOF source
L:
    mov al, source[esi]
	sub ecx, 2
	mov ebx, ecx
	add ecx, 2
	mov target[ebx], al
	inc esi
    loop L
	mov esi, OFFSET target
    mov ebx, 1
    mov ecx, SIZEOF target-1
    call DumpMem
	exit
main ENDP
END main