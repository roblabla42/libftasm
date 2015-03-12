; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_memcpy.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/14 22:28:24 by roblabla          #+#    #+#              #
;    Updated: 2015/02/14 22:28:24 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_memcpy
ft_memcpy:
	; rdi, rsi, rdx
	mov		rax, rdi
	mov		rcx, rdx
	rep		movsb
	ret
