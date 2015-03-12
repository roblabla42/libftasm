; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_strdup.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/14 22:40:32 by roblabla          #+#    #+#              #
;    Updated: 2015/02/14 22:40:32 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
extern ft_strlen
extern ft_memcpy
extern malloc
global ft_strdup
ft_strdup:
; TODO : Create a stack, needs 16 bytes to store the 2 pointers. Can't overwrite r12 and rbx.
	mov		rbx, rdi ; backup arg, rbx is callee-saved
	call	ft_strlen
	mov		r12, rax ; backup len, r12 is callee-saved
	inc		r12
	mov		rdi, rax
	call	malloc
	mov		rdi, rax ; dest
	mov		rsi, rbx ; src
	mov		rdx, r12 ; length
	call	ft_memcpy
	ret
