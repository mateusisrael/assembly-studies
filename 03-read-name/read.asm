section .data
  msg db "Digite seu nome", 0xA ; esse valor é armazenado em uma "variável" de 8 bits
  len equ $- msg

section .bss
  name resb 1 ; resb = array de bytes

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
  mov edx, 0xA ; Dizemos que o nome terá 10b 
  int 0x80

  ; fim do programa
  mov eax, 0x1
  mov ebx, 0x0
  int 0x80
