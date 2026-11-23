.data
    dato1 dw 25h
    dato2 dw 33h
.code
main:
    mov ax,@data
    mov ds,ax
    mov bx,offset dato1
    mov cx,offset dato2
    call suma
    mov ah,4ch
    int 21h
suma proc
    mov ax,[bx]
    mov bx,cx
    add ax,[bx]
    ret
suma endp
    end main
    