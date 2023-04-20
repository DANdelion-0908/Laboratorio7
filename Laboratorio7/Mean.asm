; -----------------------------------------------------
; UNIVERSIDAD DEL VALLE DE GUATEMALA
; Organización de computadoras y Assembler Sección 30
; Ciclo 1 - 2023
;
; Nombre: Laboratorio 7
; Descripción: Programa que realiza promedios.
; Autor: Héctor Daniel Penedo Juarez
; Carné: 22217
; ---------------------------------------------------- */

.386

.model flat, stdcall

.stack 4096

ExitProcess proto, dwExitCode : dword

.data

	num1 word 2
	num2 word 3
	num3 word 4
	num4 word 5
	num5 word 4
	num6 word 3
	num7 word 2
	num8 word 1
	num9 word 5
	num10 word 4
	resultado dword 0

.code
main proc

	mov eax, resultado         ; Poner el valor de eax en 0.
	mov ax, num1       ; Guardar el valor de num1 en ax.

	; Sumas
	add ax, num2
	add ax, num3
	add ax, num4
	add ax, num5
	add ax, num6
	add ax, num7
	add ax, num8
	add ax, num9
	add ax, num10

	;Divisor
	mov bx, 10

	xor dx, dx         ; Limpiar dx para evitar una excpeción.

	; División
	div bx

	mov resultado, eax

main endp
end main