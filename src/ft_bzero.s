; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_bzero.s                                         :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/10 22:27:18 by roblabla          #+#    #+#              #
;    Updated: 2015/02/10 22:27:18 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_bzero

ft_bzero:
	jmp		end_loop
	begin_loop:
	mov		[rdi], byte 0
	inc		rdi
	dec		rsi
	end_loop:
	cmp		rsi, 0
	jne		begin_loop
	ret
