# v0.0.1 
# working on linux using nasm compiler (x86-64) 
# in any linux distribution you can install it for exemple in kali linux / or parrot security -> [root@user]: sudo apt-get install nasm. then the nasm compiler package will be installed in your linux operating system.


.section .rdata
msg: .ascii "Hello, World!\n"
.set msglen, (. - msg)
# ---- 
# 
# ====

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

































