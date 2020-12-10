/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_bonusn.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: xxxxxxxx <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/02/10 15:52:29 by xxxxxxxx          #+#    #+#             */
/*   Updated: 2017/02/10 16:33:46 by xxxxxxxx         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

static void		ft_valeur(int *b, int count)
{
	*b = count;
}

int				ft_bonusn(va_list ap, int count)
{
	void *b;

	b = va_arg(ap, int*);
	ft_valeur(b, count);
	return (0);
}
