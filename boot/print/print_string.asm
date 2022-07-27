print_string:


    _loop:
        ;mov al, [bx]
        lodsb
        cmp al, 0
        je _end

        mov ah, 0x0e ;BIOS scrolling teletype function
        int 0x10
        ;inc bx
        jmp _loop
    _end:

    ret