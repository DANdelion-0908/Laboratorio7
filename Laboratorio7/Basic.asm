; -----------------------------------------------------
; UNIVERSIDAD DEL VALLE DE GUATEMALA
; Organizaci�n de computadoras y Assembler Secci�n 30
; Ciclo 1 - 2023
;
; Nombre: Laboratorio 7
; Descripci�n: Programa que realiza operaciones. 
; Autor: H�ctor Daniel Penedo Juarez
; Carn�: 22217
; ---------------------------------------------------- */

.386 ; Indica que el c�digo est� escrito para un procesador de 32 bits.

.model flat,stdcall ; 'flat' coloca el modo de memoria como plano, 'stdcall' es una convenci�n de llamada que limpia los argumentos de la pila.

.stack 4096 ; Reserva 4096 bytes para la pila.

ExitProcess proto,dwExitCode:dword ; Declara un prototipo con un argumento 'double word' que tiene por nombre 'dwExitCode'.

.data ; Secci�n que indica d�nde se declarar�n e inicializar�n las variables del programa que ser�n almacenadas en la memoria.

operando_Sum1 Byte 1
operando_Sum2 Byte 2
resultado_Sum Byte 0

operando_Res1 word 2
operando_Res2 word 1
resultado_Res word 0

operando_Mul1 dword 5
operando_Mul2 dword 2
resultado_Mul dword 0

.code ; Secci�n donde se encontrar�n las instrucciones que se ejecutar�n.

main proc ; Declara el procedimiento principal del programa. 

; Sumas
mov eax, 0
mov al, operando_Sum1
add al, operando_sum2
mov resultado_Sum, al

; Restas
mov eax, 0
mov ax, operando_Res1
sub ax, operando_Res2
mov resultado_Res, ax

; Multiplicaciones
mov eax, 0
mov eax, operando_Mul1
mul operando_Mul2
mov resultado_Mul, eax

main endp ; Final del procedimeinto principal.

end main ; Final del programa.