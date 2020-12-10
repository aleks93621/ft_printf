/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putstr.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: xxxxxxxx <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/11/14 11:28:22 by xxxxxxxx          #+#    #+#             */
/*   Updated: 2017/01/19 11:47:11 by xxxxxxxx         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

void	ft_putstr_n(char const *s, int n)
{
	if (!s)
		return ;
	while (s[n] != '\0')
	{
		ft_putchar(s[n]);
		n++;
	}
}