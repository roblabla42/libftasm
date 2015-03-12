; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_isalnum.s                                       :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/10 23:10:09 by roblabla          #+#    #+#              #
;    Updated: 2015/02/10 23:10:09 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
extern ft_isalpha
extern ft_isdigit
global ft_isalnum

ft_isalnum:
	call	ft_isalpha
	cmp		rax, 0
	jne		success
	call	ft_isdigit
	cmp		rax, 0
	jne		success
	mov		rax, 0
success:
	ret
