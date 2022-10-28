# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vvaucoul <vvaucoul@student.42.Fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/08 18:56:24 by vvaucoul          #+#    #+#              #
#    Updated: 2022/03/10 16:48:12 by vvaucoul         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = dr_quine

all: $(NAME)

$(NAME):
	@make -C ./C
	@make -C ./ASM
	@make -C ./CPP

clean:
	@make clean -C ./C
	@make clean -C ./ASM
	@make clean -C ./CPP

fclean:
	@make fclean -C ./C
	@make fclean -C ./ASM
	@make fclean -C ./CPP

re:
	@make re -C ./C
	@make re -C ./ASM
	@make re -C ./CPP

.PHONY: all clean fclean re
