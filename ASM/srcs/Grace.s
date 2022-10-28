%define foo
%define foo2
%define foo3

; Grace Function
%macro _main 0
    push rbp
    mov rbp, rsp
    mov rax, 0

__fopen_w_f_start:
    mov rax, 2
    lea rdi, [file_output]
    mov rsi, 65
    mov rdx, 0644o
    syscall
    cmp rax, 0
    push rax
    jge __fopen_w_f_success
    jmp __fopen_w_f_failure

__fopen_w_f_success:
    mov rdi, rax
    lea rsi, [g_str]
    mov rdx, 10
    mov rcx, 9
    mov r8, 34
    lea r9, [g_str]
    mov al, 0
    call dprintf
    mov rax, 3
    pop rdi
    syscall
    push 0
    leave
    ret

__fopen_w_f_failure:
    mov rax, 5
    pop rdi
    pop rbp
    syscall
    ret
%endmacro

section .data
    g_str: db "%%define foo%1$c%%define foo2%1$c%%define foo3%1$c%1$c; Grace Function%1$c%%macro _main 0%1$c    push rbp%1$c    mov rbp, rsp%1$c    mov rax, 0%1$c%1$c__fopen_w_f_start:%1$c    mov rax, 2%1$c    lea rdi, [file_output]%1$c    mov rsi, 65%1$c    mov rdx, 0644o%1$c    syscall%1$c    cmp rax, 0%1$c    push rax%1$c    jge __fopen_w_f_success%1$c    jmp __fopen_w_f_failure%1$c%1$c__fopen_w_f_success:%1$c    mov rdi, rax%1$c    lea rsi, [g_str]%1$c    mov rdx, 10%1$c    mov rcx, 9%1$c    mov r8, 34%1$c    lea r9, [g_str]%1$c    mov al, 0%1$c    call dprintf%1$c    mov rax, 3%1$c    pop rdi%1$c    syscall%1$c    push 0%1$c    leave%1$c    ret%1$c%1$c__fopen_w_f_failure:%1$c    mov rax, 5%1$c    pop rdi%1$c    pop rbp%1$c    syscall%1$c    ret%1$c%%endmacro%1$c%1$csection .data%1$c    g_str: db %3$c%4$s%3$c, 0%1$c    file_output: db %3$cGrace_kid.s%3$c, 0%1$c%1$csection .text%1$c    global start%1$c    global main%1$c    extern dprintf%1$c%1$cmain: _main", 0
    file_output: db "Grace_kid.s", 0

section .text
    global start
    global main
    extern dprintf

main: _main