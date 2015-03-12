; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_puts.s                                          :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/13 19:49:24 by roblabla          #+#    #+#              #
;    Updated: 2015/02/13 19:49:24 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

%include "stdio.mac"
%include "syscall.mac"
; TODO : look at error returned, and turn it into EOF
section .data
nullstr		db	"(null)", 0

section .text
global ft_puts

ft_puts:
	mov			rsi, rdi
	cmp			rsi, 0
	jnz			continue
	lea			rsi, [rel nullstr]
	continue:
	mov			rdi, STDOUT
	mov			rdx, 0
	jmp			end_loop
	begin_loop:
	inc			rdx
	end_loop:
	cmp			[rsi + rdx], byte 0
	jne			begin_loop
	mov			rax, SYSCALL_UNIX(WRITE)
	syscall
	ret
