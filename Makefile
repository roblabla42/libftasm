# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/02/14 19:06:21 by roblabla          #+#    #+#              #
#    Updated: 2015/03/12 13:50:40 by roblabla         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libfts.a

SRCS = src/ft_bzero.s \
	   src/ft_strcat.s \
	   src/ft_isalpha.s \
	   src/ft_isdigit.s \
	   src/ft_isalnum.s \
	   src/ft_isascii.s \
	   src/ft_isprint.s \
	   src/ft_toupper.s \
	   src/ft_tolower.s \
	   src/ft_puts.s \
	   src/ft_strlen.s \
	   src/ft_memset.s \
	   src/ft_memcpy.s \
	   src/ft_strdup.s \
	   src/ft_cat.s \
	   src/ft_max.s

INCLUDES = inc/

OBJS = $(patsubst src/%.s,obj/%.o,$(SRCS))

NASM ?= nasm
MKDIR ?= mkdir

NFLAGS += -i $(realpath inc)/

ifeq ($(shell uname), Linux)
NFLAGS += -felf64 -DLINUX
else
NFLAGS += -fmacho64 -DOSX --prefix _
endif

CFLAGS += -Wall -Wextra -Werror -Iinclude/

obj/%.o: src/%.s
	@$(MKDIR) -p $(dir $@)
	$(NASM) $(NFLAGS) -o $@ $<

all: $(NAME)

test.out: $(NAME) main.o
	$(CC) -Iinclude/ main.o -o $@ -L. -lfts 

$(NAME): $(OBJS)
	$(AR) -rcs $(NAME) $?

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
