section .bss
    buffer: resb 4096
    child_file_name: resb 4096
    current_file_name: resb 4096
    cmd: resb 4096

section .data
    g_str: db "section .bss%1$c    buffer: resb 4096%1$c    child_file_name: resb 4096%1$c    current_file_name: resb 4096%1$c    cmd: resb 4096%1$c%1$csection .data%1$c    g_str: db %3$c%2$s%3$c, 0%1$c    file_checker: db %3$cSully_5%3$c, 0%1$c    compil: db %3$cnasm -f elf64 -o Sully_%%d.o Sully_%%1$d.s && clang -o Sully_%%1$d Sully_%%1$d.o && rm -f Sully_%%1$d.o && ./Sully_%%1$d%3$c, 0%1$c    nbr: dq %4$d%1$c    spt_fn: db %3$cSully_%%d%3$c, 0%1$c    spt_fn_s: db %3$cSully_%%d.s%3$c, 0%1$c%1$csection .text%1$c    global main%1$c    extern dprintf%1$c    extern sprintf%1$c    extern system%1$c%1$cmain:%1$c    push rbp%1$c    mov rbp, rsp%1$c%1$c    mov r12, [nbr]%1$c    cmp r12, 0%1$c    jle end%1$c    cmp r12, 4096%1$c    jg error%1$c    jmp decrement%1$c%1$cdecrement:%1$c    lea rdi, [current_file_name]%1$c    lea rsi, [spt_fn]%1$c    mov rdx, [nbr]%1$c    call sprintf%1$c%1$c    mov rax, 2%1$c    lea rdi, [current_file_name]%1$c    mov rsi, 0%1$c    mov rdx, 0644o%1$c    syscall%1$c    mov r13, rax%1$c%1$c    cmp r13, 0%1$c    jle next%1$c    dec r12%1$c    mov rax, 3%1$c    mov rdi, r13%1$c    syscall%1$c    jmp next%1$c%1$cnext:%1$c    lea rdi, [child_file_name]%1$c    lea rsi, [spt_fn_s]%1$c    mov rdx, r12%1$c    call sprintf%1$c%1$c    mov rax, 2%1$c    lea rdi, [child_file_name]%1$c    mov rsi, 65%1$c    mov rdx, 0644o%1$c    syscall%1$c    cmp rax, 0%1$c    jle error%1$c    mov r13, rax%1$c%1$c    mov rdi, rax%1$c    lea rsi, [g_str]%1$c    mov rdx, 10%1$c    lea rcx, [g_str]%1$c    mov r8, 34%1$c    mov r9, r12%1$c    call dprintf%1$c%1$c    mov rax, 3%1$c    mov rdi, r13%1$c    syscall%1$c    jmp next_cmd%1$c%1$cnext_cmd:%1$c    lea rdi, [cmd]%1$c    lea rsi, [compil]%1$c    mov rdx, r12%1$c    call sprintf%1$c%1$c    lea rdi, [cmd]%1$c    call system%1$c%1$c    cmp r12, 0%1$c    jle end%1$c%1$cerror:%1$c    mov rax, 1%1$c    pop rbp%1$c    ret%1$c%1$cend:%1$c    mov rax, 0%1$c    pop rbp%1$c    ret", 0
    file_checker: db "Sully_5", 0
    compil: db "nasm -f elf64 -o Sully_%d.o Sully_%1$d.s && clang -o Sully_%1$d Sully_%1$d.o && rm -f Sully_%1$d.o && ./Sully_%1$d", 0
    nbr: dq 5
    spt_fn: db "Sully_%d", 0
    spt_fn_s: db "Sully_%d.s", 0

section .text
    global main
    extern dprintf
    extern sprintf
    extern system

main:
    push rbp
    mov rbp, rsp

    mov r12, [nbr]
    cmp r12, 0
    jle end
    cmp r12, 4096
    jg error
    jmp decrement

decrement:
    lea rdi, [current_file_name]
    lea rsi, [spt_fn]
    mov rdx, [nbr]
    call sprintf

    mov rax, 2
    lea rdi, [current_file_name]
    mov rsi, 0
    mov rdx, 0644o
    syscall
    mov r13, rax

    cmp r13, 0
    jle next
    dec r12
    mov rax, 3
    mov rdi, r13
    syscall
    jmp next

next:
    lea rdi, [child_file_name]
    lea rsi, [spt_fn_s]
    mov rdx, r12
    call sprintf

    mov rax, 2
    lea rdi, [child_file_name]
    mov rsi, 65
    mov rdx, 0644o
    syscall
    cmp rax, 0
    jle error
    mov r13, rax

    mov rdi, rax
    lea rsi, [g_str]
    mov rdx, 10
    lea rcx, [g_str]
    mov r8, 34
    mov r9, r12
    call dprintf

    mov rax, 3
    mov rdi, r13
    syscall
    jmp next_cmd

next_cmd:
    lea rdi, [cmd]
    lea rsi, [compil]
    mov rdx, r12
    call sprintf

    lea rdi, [cmd]
    call system

    cmp r12, 0
    jle end

error:
    mov rax, 1
    pop rbp
    ret

end:
    mov rax, 0
    pop rbp
    ret