# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tglory <tglory@student.42lyon.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/26 17:55:35 by tglory            #+#    #+#              #
#    Updated: 2021/12/02 20:00:10 by tglory           ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

CC 			=	gcc
NAME		=	libft.a
CFLAGS		=   -Wall -Wextra -Werror
INCLUDE		=	libft.h gnl/get_next_line.h
INCLUDE_DIR	=	-I. -Ignl

SRC			=	ft_isdigit.c \
				ft_memset.c	\
				ft_strlcat.c \
				ft_substr.c \
				ft_isprint.c \
				ft_putchar_fd.c \
				ft_strlcpy.c \
				ft_tolower.c \
				ft_atoi.c \
				ft_itoa.c \
				ft_putendl_fd.c \
				ft_strlen.c \
				ft_toupper.c \
				ft_bzero.c \
				ft_memccpy.c \
				ft_putstr_fd.c \
				ft_strmapi.c \
				ft_calloc.c \
				ft_realloc.c \
				ft_memchr.c \
				ft_split.c \
				ft_strncmp.c \
				ft_isalnum.c \
				ft_memcmp.c \
				ft_strchr.c \
				ft_strnstr.c \
				ft_isalpha.c \
				ft_memcpy.c \
				ft_strdup.c \
				ft_strrchr.c \
				ft_isascii.c \
				ft_memmove.c \
				ft_strjoin.c \
				ft_strtrim.c \
				ft_putnbr_fd.c \
				ft_strmapi.c \
				ft_strcmp.c \
				ft_strichr.c \
				ft_strncmp.c \
				ft_strcat.c \
				ft_strcpy.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstadd_front.c \
				ft_lstadd_back.c \
				ft_lstnew.c \
				ft_lstmap.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstiter.c \
				ft_lstdelone.c \
				ft_putchar.c \
				ft_putstr.c \
				gnl/get_next_line.c \
				gnl/get_next_line_utils.c \
				custom/ft_isblank.c \
				custom/ft_lstget.c

OBJS 		=	$(SRC:.c=.o)


$(NAME) :	$(OBJS) 
			ar rcs $(NAME) $(OBJS)
			ranlib $(NAME)

%.o		:	%.c $(INCLUDE)
			$(CC) $(CFLAGS) -c $< -o $@ $(INCLUDE_DIR)

all		:	$(NAME)

clean	:
			rm -f $(OBJS)

fclean	: 	clean
			rm -f $(NAME)

re		: 	fclean all

.PHONY: all clean fclean re