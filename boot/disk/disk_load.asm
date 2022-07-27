disk_load:

    mov ah, 0x02

    mov al, 1
    mov ch, 0
    mov dh, 0
    mov cl, 2

    mov bx, 0
    mov es, bx
    mov bx, 0x7c00 + 512

    int 0x13

    jc read_error

    ret

read_error:
    mov si, DISK_ERROR
    call print_string
    jmp $ 

DISK_ERROR:
    db 'Error reading disk', 0