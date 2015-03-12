; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_memset.s                                        :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/14 18:38:26 by roblabla          #+#    #+#              #
;    Updated: 2015/02/14 18:38:26 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_memset

ft_memset:
; rdi, rsi, rdx
	mov		rcx, rdx	; The memblock is of size %rdx
	mov		rdx, rdi	; backup the original pointer
	mov		rax, rsi		; We want to write %rsi
	cld					; Increment "internal" string counter
	rep		stosb		; loop rdi[rcx] = byte %al
	mov		rax, rdx
	ret

