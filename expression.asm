TITLE expression
INCLUDE Irvine32.inc
.data
val1 SDWORD 8
val2 SDWORD -15
val3 SDWORD 20
.code
main PROC
   mov ebx, val1
   mov ecx, val2
   mov edx, val3
   sub ebx, ecx
   sub ebx, edx
   add ebx, 7
   mov eax, ebx
   call DumpRegs
	exit
main ENDP
END main