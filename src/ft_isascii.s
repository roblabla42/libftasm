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
global ft_isascii

ft_isascii:
	cmp		rdi, 127
	jg		fail
	mov		rax, 1
	ret
fail:
	mov		rax, 0
	ret
