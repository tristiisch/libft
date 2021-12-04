/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   custom.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tglory <tglory@student.42lyon.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/12/04 22:07:01 by tglory            #+#    #+#             */
/*   Updated: 2021/12/04 22:07:31 by tglory           ###   ########lyon.fr   */
/*                                                                            */
/* ************************************************************************** */

#ifndef CUSTOM_H
# define CUSTOM_H

# include "libft.h"

/*-------------------------------{ CUSTOM }-------------------------------*/
void				*ft_lstget(t_list *lst, char *key,
						char *(*get_key) (void *));
int					ft_lstremove(t_list *lst, char *key,
						char *(*get_key) (void *), void (*f) (void *));

/*--------------------------------{ PERSO }--------------------------------*/
char				**ft_strtrunc(char *str, char c);
int					ft_isblank(char *str);

#endif
