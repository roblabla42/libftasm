; **************************************************************************** #
;                                                                              #
;                                                         :::      ::::::::    #
;    ft_max.s                                           :+:      :+:    :+:    #
;                                                     +:+ +:+         +:+      #
;    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
;                                                 +#+#+#+#+#+   +#+            #
;    Created: 2015/02/16 13:48:41 by roblabla          #+#    #+#              #
;    Updated: 2015/02/16 13:58:05 by roblabla         ###   ########.fr        #
;                                                                              #
; **************************************************************************** #

section .text
global ft_max
ft_max:
	cmp             edi, esi
	jg				edi_bigger
	mov				eax, esi
	ret
	edi_bigger:
	mov				eax, edi
	ret
