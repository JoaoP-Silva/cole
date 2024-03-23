print_string:
	pusha
	mov ah, 0x0e
LOOP:	mov al, [bx]
	cmp al, 0
	je FIM
	int 0x10
	inc bx
	jmp LOOP
FIM:
	mov al, 13  ; Caractere de retorno de carro
    	int 0x10
	mov al, 10
	int 0x10 
	popa
	ret
