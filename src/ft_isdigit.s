; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_isdigit.s                                       :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/10 23:10:09 by roblabla          #+#    #+#              #
;    Updated: 2015/02/10 23:10:09 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_isdigit

ft_isdigit:
	cmp		rdi, '0'
	jl		fail
	cmp		rdi, '9'
	jg		fail
success:
	mov		rax, 1
	ret
fail:
	mov		rax, 0
	ret
