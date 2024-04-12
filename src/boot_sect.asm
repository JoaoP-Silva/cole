[org 0x7c00]

mov dx, 0x1fb6
call print_hex

    jmp $

print_hex:
    pusha
    mov cx, 4
hex_loop:
    push cx
    mov cx, 0x0f
    and dx, cx
    cmp dx, 0x09
    jl hex_digit
    add dx, 0x37
hex_digit:
    add dx, 0x30
    mov ah, 0x0e
    mov dl, dl
    int 0x10
    pop cx
    shr dx, 4
    loop hex_loop
    popa
    ret




	times 510-($-$$) db 0
	dw 0xaa55
