/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstremove.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tglory <tglory@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/02 19:49:09 by tglory            #+#    #+#             */
/*   Updated: 2021/12/03 02:51:18 by tglory           ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_lstremove(t_list *lst, char *key,
	char *(*get_key) (void *), void (*f) (void *))
{
	char	*str;
	t_list	*prev;

	prev = NULL;
	if (lst && get_key)
	{
		while (lst)
		{
			str = (*get_key)(lst->content);
			if (!ft_strncmp(key, str, ft_strlen(str) + 1))
			{
				if (prev)
					prev->next = lst->next;
				f(lst);
				return (0);
			}
			prev = lst;
			lst = lst->next;
		}
	}
	return (1);
}
