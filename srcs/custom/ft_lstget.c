/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstget.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tglory <tglory@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/02 19:49:09 by tglory            #+#    #+#             */
/*   Updated: 2021/12/02 23:20:03 by tglory           ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_lstget(t_list *lst, char *key, char *(*get_key) (void *))
{
	char	*str;

	if (lst && get_key)
	{
		while (lst)
		{
			str = (*get_key)(lst->content);
			if (!ft_strncmp(key, str, ft_strlen(str) + 1))
			{
				return (lst->content);
			}
			lst = lst->next;
		}
	}
	return (NULL);
}
