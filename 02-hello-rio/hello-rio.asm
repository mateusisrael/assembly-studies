section .data
  msg db "Hello Rio", 0xA
  tam equ $- msg

section .text

global _start

_start:
  mov eax, 0x4 ; Indica o final de operação; corresponde a System.exit
  mov ebx, 0x1 ; Indica uma saída para a padrão do sistema. Corresponde a System.out
  mov ecx, msg
  mov edx, tam
  int 0x80

  mov eax, 0x1
  mov ebx, 0x0
  int 0x80

