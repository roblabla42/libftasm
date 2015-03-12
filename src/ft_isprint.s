; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_isprint.s                                       :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/10 23:10:09 by roblabla          #+#    #+#              #
;    Updated: 2015/02/10 23:10:09 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_isprint

ft_isprint:
	cmp		rdi, ' '
	jl		fail
	cmp		rdi, 127
	jge		fail
success:
	mov		rax, 1
	ret
fail:
	mov		rax, 0
	ret
