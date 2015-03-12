; nasm -felf64
; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strcat.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/10 22:27:54 by roblabla          #+#    #+#              #
;    Updated: 2015/02/10 22:27:54 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_strcat

ft_strcat:
	mov		rax,rdi
	jmp end_loop_end_s1
	begin_loop_end_s1:
		inc		rdi
	end_loop_end_s1:
	cmp		byte [rdi], 0
	jne		begin_loop_end_s1
	jmp		end_concat_loop
	begin_concat_loop:
		mov		rdx, [rsi]
		mov		[rdi], rdx
		inc		rdi
		inc		rsi
	end_concat_loop:
	cmp		byte [rsi], 0
	jne		begin_concat_loop
	mov		byte [rdi], 0
	ret
