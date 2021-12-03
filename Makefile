# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tglory <tglory@student.42lyon.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/10/26 17:55:35 by tglory            #+#    #+#              #
#    Updated: 2021/12/03 20:40:40 by tglory           ###   ########lyon.fr    #
#                                                                              #
# **************************************************************************** #

CC 			=	gcc
NAME		=	libft.a
CFLAGS		=   -Wall -Wextra -Werror
INCLUDES	=	libft.h
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
				ft_putchar.c \
				ft_striteri.c \
				ft_putstr.c

SRC_BONUS	=	ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstadd_front.c \
				ft_lstadd_back.c \
				ft_lstnew.c \
				ft_lstmap.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstiter.c \
				ft_lstdelone.c

SRC_GNL		=	gnl/get_next_line.c \
				gnl/get_next_line_utils.c

SRC_CUSTOM	=	custom/ft_isblank.c \
				custom/ft_lstget.c \
				custom/ft_strtrunc.c \
				custom/ft_lstremove.c

OBJS 		=	$(SRC:.c=.o)
OBJS_BONUS	=	$(SRC_BONUS:.c=.o)
OBJS_GNL2	=	$(SRC_GNL:.c=.o)
OBJS_CUSTOM	=	$(SRC_CUSTOM:.c=.o)

%.o:%.c $(INCLUDES)
			$(CC) $(CFLAGS) -c $< -o $@ $(INCLUDE_DIR)

all		:	$(NAME)

$(NAME) :	$(OBJS)
			ar rcs $(NAME) $(OBJS)
			ranlib $(NAME)

bonus	:	$(OBJS) $(OBJS_BONUS)
			ar rcs $(NAME) $(OBJS) $(OBJS_BONUS)
			ranlib $(NAME)

full		:	$(OBJS) $(OBJS_BONUS) $(OBJS_GNL) $(OBJS_CUSTOM) gnl/get_next_line.h
			ar rcs $(NAME) $(OBJS) $(OBJS_BONUS) $(OBJS_GNL) $(OBJS_CUSTOM)
			ranlib $(NAME)

clean	:
			rm -f $(OBJS) $(OBJS_BONUS) $(OBJS_GNL) $(OBJS_CUSTOM)

fclean	: 	clean
			rm -f $(NAME)

re:
			make fclean
			make all

.PHONY: all clean bonus fclean re
