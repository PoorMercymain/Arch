TITLE zfandsf
INCLUDE Irvine32.inc
.data
.code
main PROC
    mov al, 5
	call DumpRegs
	add al, 1
	call DumpRegs ;zf=0, sf=0
	add al, -6
	call DumpRegs ;zf=1, sf=0
	add al, 1
	call DumpRegs ;zf=0, sf=0
	sub al, 1
	call DumpRegs ;zf=1, sf=0
	add al, 7
	call DumpRegs ;zf=0, sf=0
	add al, -8
	call DumpRegs ;zf=0, sf=1
	add al, 2
	call DumpRegs ;zf=0, sf=0
	sub al, 2
	call DumpRegs ;zf=0, sf=1
	exit
main ENDP
END main