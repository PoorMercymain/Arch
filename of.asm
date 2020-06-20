TITLE Flag OF
INCLUDE Irvine32.inc
.data
.code
main PROC
    mov al, -128;
	call DumpRegs
	sub al, 1;
	call DumpRegs
	sub al, 1;
	call DumpRegs
	mov al, +127
	call DumpRegs
    add al, 1
    call DumpRegs
    add al, 1
    call DumpRegs
	exit
main ENDP
END main