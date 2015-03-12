; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strlen.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/13 20:34:13 by roblabla          #+#    #+#              #
;    Updated: 2015/02/13 20:34:13 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_strlen

ft_strlen:
	mov		rcx, -1	; Initialize counter to -1. This will be decremented.
	mov		al, 0	; Compare with null
	cld				; Increment "internal" string counter
	repne	scasb	; rcx == -strlen - 2 (initialized at -1, repne counts \0)
	neg		rcx		; rcx = strlen - 2
	dec		rcx
	dec		rcx		; rcx = strlen
	mov		rax, rcx
	ret
