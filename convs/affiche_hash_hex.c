/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   affiche_hash_hex.c                                 :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: xxxxxxxx <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2017/01/31 15:38:17 by xxxxxxxx          #+#    #+#             */
/*   Updated: 2017/01/31 15:38:57 by xxxxxxxx         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

void	affiche_hash(t_flags flag)
{
	if (flag.conv == 'x')
		ft_putstr("0x");
	else if (flag.conv == 'X')
		ft_putstr("0X");
}
