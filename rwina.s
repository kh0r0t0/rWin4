.section .rodata
msg: .ascii "Hello, World!\n"
.set msglen, (. - msg)

.section .text 
.global main
main:
  mov $1, %rax
  mov $1, %rdi 
  lea msg(%rip), %rsi 
  mov $msglen, %rdx
  syscall

  mov $60, %rax
  mov $0, %rdi 
  syscall

































