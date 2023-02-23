section .data
  msg db "Digite seu nome", 0xA
  len equ $- msg

section .bss
  name resb 1

section .text

global _start

_start:
  ; print msg
  mov eax, 0x4
  mov ebx, 0x1
  mov ecx, msg
  mov edx, len
  int 0x80

  ; read std_in
  mov eax, 0x3
  mov ebx, 0x0
  mov ecx, name
  mov edx, 0xA
  int 0x80

  mov eax, 0x4
  mov ebx, 0x1
  mov ecx, ecx
  mov edx, 0xA
  int 0x80

  mov eax, 0x1
  mov ebx, 0x0
  int 0x80