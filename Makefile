# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mchampag <mchampag@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/31 13:16:02 by mchampag          #+#    #+#              #
#    Updated: 2022/10/31 13:53:27 by mchampag         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PROG	= pipex
PROG_B	= pipex_bonus

# FILES AND OBJECTS MANDATORY
SRCS 	= srcs/main.c srcs/utils.c srcs/execute.c
OBJS 	= ${SRCS:.c=.o}
MAIN	= srcs/main.c

CC		=	gcc
CFLAGS	=	-Wall -Wextra -Werror -g 
HEADER	=	-I includes

# COLORS TO MAKE YOUR LIFE PRETTIER
BLUE	=	\033[1;34m
GREEN	=	\033[1;32m
RED		=	\033[1;31m
WHITE	=	\033[1;37m
END		=	\033[0m

.c.o:		%.o : %.c
			@gcc ${CFLAGS} ${HEADER} -c $< -o $(<:.c=.o)

all: 		${PROG}

${PROG}:	${OBJS}
			@echo "\n$(GREEN)---- $(BLUE)LIBFT $(GREEN)is compiled ---- $(END)"
			@make re -C ./libft
			@$(CC) ${OBJS} -Llibft -lft -o ${PROG}
			@echo "$(BLUE)Pipex $(GREEN)is compiled $(BLUE)(☞ﾟ∀ﾟ)☞ $(RED)♥$(END)\n"

clean:
			@make clean -C ./libft
			@rm -rf ${OBJS} 
			@rm -rf ${OBJS}
			@echo "\n(⌐■_■)--︻╦╤─ - - - $(RED)objects are deleted.$(END)"

fclean: 	clean
			@make fclean -C ./libft
			@rm -f $(NAME)
			@rm -f ${PROG}
			@echo "(⌐■_■)--︻╦╤─ - - - $(RED)executive is deleted.$(END)\n"

re:			fclean all

valgrind:	
			valgrind --leak-check=full --trace-children=yes ./pipex in ls cat out

.PHONY: all clean fclean re valgrind
