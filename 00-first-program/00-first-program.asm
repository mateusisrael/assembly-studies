; 12 de fevereiro de 2023
; Mateus Israel Fernandes Sarmento
; primeiro programa assembly

section .data

section .text

global _start

_start:
  mov eax, 0x1 ; chamada de sistema de "finalizar o programa"
  mov ebx, 0x0 ; apenas retorna 0
  int 0x80 ; o sistema operacional pega todas as informaçõe e processa


; Como compilar o programa
; 1 - rodar o comando (terminal):
;     nasm -f elf64 [nome do programa]
;
; 2 - linkedição: Pegar as bibliotecas do sistema operacional
;     e juntar com o programa escrito e compilado (feito no comando acima)
;     ld -s -o [nome que será dado ao executável] [nome do código objeto gerado na compilação]