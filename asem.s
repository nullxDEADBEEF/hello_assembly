.global _start # tell code start to the linker
.intel_syntax noprefix

_start:
  # sys_write
  mov rax, 1
  mov rdi, 1
  lea rsi, [hello_world] # lea -> load effective address
  mov rdx, 14
  syscall

  # sys_exit
  mov rax, 60
  mov rdi, 69
  # for the syscall to work we have to set up the registers so that the kernel
  # recognizes the command we are trying to do
  syscall # see syscall table to tell the kernel what to do, when we invoke a syscall

hello_world:
  .asciz "Hello, World!\n"
