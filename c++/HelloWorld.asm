%include "io64.inc"

section .text
global CMAIN
CMAIN:
    ;write your code here
    
    ; 10진수(0 1 2 3 4 5 6 7 8 9)
    ; 10 11 12 13 ... 19 20
    
    ; 2진수(0 1)
    ; 01 10
    ; 0b0 0b1 0b10 0b11 0b100
     
    ; 16진수(0 1 2 3 4 5 6 7 8 9 A B C D E F)
    ; 0 1 2 3 4 5 6 7 8 9 A B C D F 10
    ; 0x00
    
    ; 0b10010101 = 0x95
    PRINT_STRING msg
    xor rax, rax
    ret
    
section .data
    msg db 'Hello world', 0x00 