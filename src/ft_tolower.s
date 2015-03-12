; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_tolower.s                                       :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/14 21:53:05 by roblabla          #+#    #+#              #
;    Updated: 2015/02/14 21:53:05 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_tolower

ft_tolower:
	cmp		rdi, 'A'
	jl		done
	cmp		rdi, 'Z'
	jg		done
	add		rdi, 0x20
	done:
	mov		rax, rdi
	ret
