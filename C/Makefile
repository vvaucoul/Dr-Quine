# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vvaucoul <vvaucoul@student.42.Fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/08 20:33:06 by vvaucoul          #+#    #+#              #
#    Updated: 2022/03/10 16:48:42 by vvaucoul         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME                    =       dr_quine

NAME_COLLEEN            +=      Colleen
NAME_GRACE              +=      Grace
NAME_SULLY              +=      Sully

CC                      =       gcc
CFLAGS                  =       -Wall -Wextra -Werror

SRC_COLLEEN             =       srcs/Colleen.c
SRC_GRACE               =       srcs/Grace.c
SRC_SULLY               =       srcs/Sully.c

OBJS_COLLEEN            =       $(SRC_COLLEEN:%.c=%.o)
OBJS_GRACE              =       $(SRC_GRACE:%.c=%.o)
OBJS_SULLY              =       $(SRC_SULLY:%.c=%.o)

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $<

all: $(NAME)

$(NAME): $(NAME_COLLEEN) $(NAME_GRACE) $(NAME_SULLY)

$(NAME_COLLEEN): $(OBJS_COLLEEN)
	$(CC) $(CFLAGS) -o $@ $^

$(NAME_GRACE): $(OBJS_GRACE)
	$(CC) $(CFLAGS) -o $@ $^
        
$(NAME_SULLY): $(OBJS_SULLY)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	@rm -f $(OBJS_COLLEEN) $(OBJS_GRACE) $(OBJS_SULLY)
	@echo "[C] Clean \033[33mok\033[0m"

fclean: clean
	@rm -f $(NAME_COLLEEN) $(NAME_GRACE) $(NAME_SULLY)
	@echo "[C] Fclean \033[33mok\033[0m"

re: fclean all

.PHONY: all clean fclean re
