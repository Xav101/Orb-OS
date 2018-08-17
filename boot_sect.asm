org 0x7C00
bits 16


start:
	cli
	mov si, msg
	mov ah, 0x0E
.loop lodsb
	or al, al
	jz halt
	int 0x10
	jmp .loop

halt: hlt
msg: db "Welcome to OrbOS! WIP, don't expect much.", 0

;; MAGIC NUMBERS, DONT FUCK WITH

times 510 - ($ - $$) db 0
dw 0xAA55
