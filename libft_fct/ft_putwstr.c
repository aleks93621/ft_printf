/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putwstr.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: xxxxxxxx <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/12/20 09:51:59 by xxxxxxxx          #+#    #+#             */
/*   Updated: 2017/01/26 15:59:15 by xxxxxxxx         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "../includes/ft_printf.h"

void	ft_putwstr(wchar_t const *str)
{
	ft_putwstr_fd(str, 1);
}
