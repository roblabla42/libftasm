; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_toupper.s                                       :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/14 21:53:05 by roblabla          #+#    #+#              #
;    Updated: 2015/02/14 21:53:05 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_toupper

ft_toupper:
	cmp		rdi, 'a'
	jl		done
	cmp		rdi, 'z'
	jg		done
	sub		rdi, 0x20
	done:
	mov		rax, rdi
	ret
