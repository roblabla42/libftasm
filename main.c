/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: roblabla </var/spool/mail/roblabla>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/03/11 16:55:10 by roblabla          #+#    #+#             */
/*   Updated: 2015/03/12 13:19:33 by roblabla         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ctype.h>
#include "libftasm.h"

void	test_bzero()
{
	char	test[12];

	test[6] = '1';
	ft_bzero(test, sizeof(char) * 12);
	if (test[6] != 0)
		ft_puts("FAIL : test[6] != 0\n");
}

void	test_strcat()
{
	char	*test1;
	char	*test2;

	test1 = malloc(sizeof(char) * 16);
	test1[0] = 0;
	ft_strcat(test1, "Ohayo ");
	test2 = "gozaimasu\n";
	ft_puts(ft_strcat(test1, test2));
}
void	ft_putnbr(int n)
{
	char	c;

	if (n < 0)
	{
		n = -n;
		write(1, "-", 1);
	}
	if (n < 10)
	{
		c = n + '0';
		write(1, &c, 1);
	}
	else
	{
		ft_putnbr(n / 10);
		ft_putnbr(n % 10);
	}
	
}
#define TEST_IS(x) \
	void	test_ ## x () {\
		int	i; \
\
		ft_puts("Testing " #x "\n"); \
		i = -256; \
		while (i < 256) \
		{ \
			if (!!ft_ ## x (i) != !!x (i)) \
			{ \
				ft_puts("\ni = "); \
				ft_putnbr(i); \
				ft_puts("\nft_" #x "(i) =");\
				ft_putnbr(ft_ ## x (i)); \
				ft_puts("\n" #x "(i) =");\
				ft_putnbr(x (i)); \
				ft_puts("\n");\
			} \
			i++; \
		} \
	} \

TEST_IS(isalpha)
TEST_IS(isdigit)
TEST_IS(isalnum)
TEST_IS(isascii)
TEST_IS(isprint)
TEST_IS(toupper)
TEST_IS(tolower)

void	test_puts()
{
	ft_puts("Ohayo");
	ft_puts(NULL);
}

void	test_strlen()
{
	ft_puts("\nTesting strlen\n");
	if (ft_strlen("") != 0)
		ft_puts("strlen wrong");
	ft_puts("Testing strlen2\n");
	if (ft_strlen("Ohayou") != 6)
		ft_puts("strlen wrong");
}

void	test_memset()
{
	char	test[12];

	ft_puts("Testing memset\n");
	test[6] = '1';
	ft_memset(test, 0, sizeof(char) * 12);
	if (test[6] != 0)
		ft_puts("FAIL : test[6] != 0");
}

void	test_memcpy()
{
	char	test[12];

	ft_puts("Testing memcpy\n");
	ft_memcpy(test, "test01", sizeof(char) * 7);
	ft_memset(test, 0, sizeof(char) * 12);
	if (test[6] != 0)
		ft_puts("FAIL : test[6] != 0");
}

void	test_strdup()
{
	char	*test;
	char	*test2;

	ft_puts("Testing strdup\n");
	test = "hello";
	test2 = ft_strdup(test);
	if (test == test2 || strcmp(test, test2) != 0)
		ft_puts("FAIL : strdup");
}

void	test_cat()
{
	ft_cat(0);
}

int		main(void)
{
	test_bzero();
	test_strcat();
	test_isalpha();
	test_isdigit();
	test_isalnum();
	test_isascii();
	test_isprint();
	test_toupper();
	test_tolower();
	test_puts();
	test_strlen();
	test_memset();
	test_memcpy();
	test_strdup();
	test_cat();
	return (0);
}
