; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_isalpha.s                                       :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/10 23:10:09 by roblabla          #+#    #+#              #
;    Updated: 2015/02/10 23:10:09 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_isalpha

ft_isalpha:
	cmp		rdi, 'a'
	jl		tryagain
	cmp		rdi, 'z'
	jle		success
tryagain:
	cmp		rdi, 'A'
	jl		fail
	cmp		rdi, 'Z'
	jle		success
fail:
	mov		rax, 0
	ret
success:
	mov		rax, 1
	ret
