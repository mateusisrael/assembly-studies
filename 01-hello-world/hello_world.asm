section .data
  msg db "Hello World" ; msg não é uma variável. É apenas um ponteiro
  tam equ $- msg 
  ; A expressão acima poderia ser escrita usando um valor estático para o tamanho de msg da seguinte forma:
  ; tam equ 0xb

section .text

global _start

_start:
  mov eax, 0x4 ; 0x4 significa que vamos mandar algo para saída padrão
  mov ebx, 0x1 ; 0x1 aponta para a saída padrão
  mov ecx, msg
  mov edx, tam
  int 0x80

saída: ; essa linha não é necessária para nosso programa, apenas para organização
  mov eax, 0x1 ; termino de programa
  mov ebx, 0x0
  int 0x80


; Como compilar o programa
; 1 - rodar o comando (terminal):
;     nasm -f elf64 [nome do programa]
;
; 2 - linkedição: Pegar as bibliotecas do sistema operacional
;     e juntar com o programa escrito e compilado (feito no comando acima)
;     ld -s -o [nome que será dado ao executável] [nome do código objeto gerado na compilação]