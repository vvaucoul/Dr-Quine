; Comment1
section .data
    g_str: db "; Comment1%1$csection .data%1$c    g_str: db %2$c%3$s%2$c, 0%1$c%1$csection .text%1$c    global start%1$c    global main%1$c    extern printf%1$c%1$cmain:%1$c    push rbp%1$c    mov rbp, rsp%1$c    ; Comment2%1$c    call print%1$c    pop rbp%1$c    ret%1$c%1$cprint:%1$c    push rbp%1$c    mov rbp, rsp%1$c    lea rdi, [g_str]%1$c    mov rsi, 10%1$c    mov rdx, 34%1$c    lea rcx, [g_str]%1$c    mov al, 0%1$c    call printf%1$c    mov rax, 0%1$c    pop rbp%1$c    ret%1$c", 0

section .text
    global start
    global main
    extern printf

main:
    push rbp
    mov rbp, rsp
    ; Comment2
    call print
    pop rbp
    ret

print:
    push rbp
    mov rbp, rsp
    lea rdi, [g_str]
    mov rsi, 10
    mov rdx, 34
    lea rcx, [g_str]
    mov al, 0
    call printf
    mov rax, 0
    pop rbp
    ret
