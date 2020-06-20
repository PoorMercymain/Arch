TITLE Flag CF
INCLUDE Irvine32.inc
	MAX EQU 0FFh
    MIN EQU 000h
.data
.code
main PROC
    mov al, MAX ; заносим в al максимальное для него значение
	call DumpRegs
    add al, 1 ; добавляем 1 к текущему значению al, получается переполненный al
    call DumpRegs
    sub al, al ; вычитаем al из самого себя, чтобы сбросить cf
    call DumpRegs
    add al, 1
    call DumpRegs
    mov al, MIN ; заносим минимальное значение в al
    call DumpRegs
    sub al, 1 ; вычитаем 1 из al, получается значение al меньше минимально возможного
    call DumpRegs
    sub al, al
    call DumpRegs
    mov al, 3
    call DumpRegs
    add al, 1
    call DumpRegs
    sub al, 1
    call DumpRegs
	exit
main ENDP
END main