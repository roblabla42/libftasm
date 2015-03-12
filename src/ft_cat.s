; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_cat.s                                           :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/16 01:40:30 by roblabla          #+#    #+#              #
;    Updated: 2015/02/16 01:40:30 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

%include "syscall.mac"
%include "stdio.mac"

global ft_cat
ft_cat:
	push	rbp
	mov		rbp, rsp
	sub		rsp, 4096					; Stack, Local buffer
	mov		r8, rdi						; backup RDI
	mov		rsi, rsp					; Pointer to buffer for both read/write
	jmp		loop_read
	loop_write:
	mov		rdi, STDOUT
	mov		rdx, rax					; Only write as much as what was read
	mov		rax, SYSCALL_UNIX(WRITE)
	syscall
	loop_read:
	mov		rdi, r8
	mov		rdx, 4096					; Size of buffer
	mov		rax, SYSCALL_UNIX(READ)
	syscall								; registers preserved (except rcx, r11)
	cmp		rax, 0
	jg		loop_write
	mov		rsp, rbp
	pop		rbp
	ret
