# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vvaucoul <vvaucoul@student.42.Fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/08 18:57:49 by vvaucoul          #+#    #+#              #
#    Updated: 2022/03/09 12:58:51 by vvaucoul         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME                    =       dr_quine

NAME_COLLEEN  			+=      Colleen
NAME_GRACE              +=      Grace
NAME_SULLY              +=      Sully

CC                      =       clang
CFLAGS                  =       -Wall -Wextra -Werror

ASM                     =       nasm
ASM_FLAGS               =       -f elf64

SRC_COLLEEN             =       srcs/Colleen.s
SRC_GRACE               =       srcs/Grace.s
SRC_SULLY               =       srcs/Sully.s

OBJS_COLLEEN   			=       $(SRC_COLLEEN:%.s=%.o)
OBJS_GRACE              =       $(SRC_GRACE:%.s=%.o)
OBJS_SULLY              =       $(SRC_SULLY:%.s=%.o)

%.o: %.s
	$(ASM) $(ASM_FLAGS) $< -o $@

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
	@echo "[ASM] Clean \033[33mok\033[0m"

fclean: clean
	@rm -f $(NAME_COLLEEN) $(NAME_GRACE) $(NAME_SULLY)
	@echo "[ASM] Fclean \033[33mok\033[0m"

re: fclean all

.PHONY: all clean fclean re
