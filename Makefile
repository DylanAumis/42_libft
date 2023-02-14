# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: daumis <daumis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/11/08 09:14:02 by daumis            #+#    #+#              #
#    Updated: 2022/11/21 20:17:19 by daumis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS			=   ft_isalnum.c ft_isprint.c ft_memcmp.c ft_putchar_fd.c ft_memset.c \
					ft_strlcat.c ft_strncmp.c ft_substr.c ft_atoi.c ft_isalpha.c ft_itoa.c \
					ft_memcpy.c ft_putendl_fd.c ft_strchr.c ft_strlcpy.c ft_memchr.c \
					ft_strnstr.c ft_tolower.c ft_bzero.c ft_isascii.c ft_isdigit.c \
					ft_memmove.c ft_putnbr_fd.c ft_strdup.c ft_strlen.c ft_toupper.c \
					ft_putstr_fd.c ft_strjoin.c ft_strmapi.c ft_calloc.c ft_strrchr.c ft_split.c \
					ft_striteri.c ft_strtrim.c

BONUS			= 	ft_lstadd_front.c ft_lstadd_back.c ft_lstlast.c ft_lstnew.c ft_lstsize.c \
					ft_lstdelone.c ft_lstclear.c ft_lstiter.c ft_lstmap.c

OBJS			= $(SRCS:.c=.o)
BONUS_OBJS		= $(BONUS:.c=.o)

CC			    = gcc
RM				= rm -f
CFLAGS			= -Wall -Werror -Wextra -I.

NAME		    = libft.a

all:			$(NAME)

$(NAME):		$(OBJS)
				ar rcs $(NAME) $(OBJS)

clean:				
				$(RM) $(OBJS) $(BONUS_OBJS)

fclean:			clean
				$(RM) $(NAME)

re:				fclean $(NAME)

bonus:          $(NAME)
				$(CC) $(CFLAGS) -c $(BONUS) -I ./
				ar rcs $(NAME) $(BONUS_OBJS)

.PHONY:			all clean fclean re
