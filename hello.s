global _start

section .text

_start:
    mov r10, 0x48
    push r10
    mov r9, rsp
    call print
    mov r10, 0x65
    push r10
    mov r9, rsp
    call print
    mov r10, 0x6c
    push r10
    mov r9, rsp
    call print
    mov r10, 0x6c
    push r10
    mov r9, rsp
    call print
    mov r10, 0x6f
    push r10
    mov r9, rsp
    call print
    mov r10, 0x0a
    push r10
    mov r9, rsp
    call print
    jmp exit

print:
    mov rax, 1
    mov rdi, 1
    mov rdx, 1
    mov rsi, r9
    syscall
    ret
    
    
exit:
    mov rax, 60
    mov rdi, 0
    syscall

section .data
  a: db 0x48
  msg: db "Hello, world!", 10
  msglen: equ $ - msg
