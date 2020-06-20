TITLE fibonachi
INCLUDE Irvine32.inc
.data
.code
main PROC
    mov eax, 1
    mov edx, 1
    mov ecx, 6
    call DumpRegs
L:
    call DumpRegs
    mov ebx, eax 
    add eax, edx
    mov edx, ebx
    loop L
	exit
main ENDP
END main