global _start
_start:
xor eax, eax      ;将eax置0
xor edx, edx      ;将edx置0
push edx
push "//sh"
push "/bin"     ;依次压入'\0','/sh','/bin',出栈顺序相反,即"/bin/sh'\0'"
mov ebx, esp    ;取栈顶指针于ebx
xor eax, eax
mov al, 0bh     ;取函数exevce()系统调用号0bh
int 80h         ;软中断