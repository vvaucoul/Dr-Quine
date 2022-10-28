# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vvaucoul <vvaucoul@student.42.Fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/03/08 20:33:06 by vvaucoul          #+#    #+#              #
#    Updated: 2022/03/10 16:49:02 by vvaucoul         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME                    =       dr_quine

NAME_COLLEEN            +=      Colleen
NAME_GRACE              +=      Grace
NAME_SULLY              +=      Sully

CXX                     =       clang++
CXXFLAGS                =       -Wall -Wextra -Werror

SRC_COLLEEN             =       srcs/Colleen.cpp
SRC_GRACE               =       srcs/Grace.cpp
SRC_SULLY               =       srcs/Sully.cpp

OBJS_COLLEEN            =       $(SRC_COLLEEN:%.cpp=%.o)
OBJS_GRACE              =       $(SRC_GRACE:%.cpp=%.o)
OBJS_SULLY              =       $(SRC_SULLY:%.cpp=%.o)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c -o $@ $<

all: $(NAME)

$(NAME): $(NAME_COLLEEN) $(NAME_GRACE) $(NAME_SULLY)

$(NAME_COLLEEN): $(OBJS_COLLEEN)
	$(CXX) $(CXXFLAGS) -o $@ $^

$(NAME_GRACE): $(OBJS_GRACE)
	$(CXX) $(CXXFLAGS) -o $@ $^
        
$(NAME_SULLY): $(OBJS_SULLY)
	$(CXX) $(CXXFLAGS) -o $@ $^

clean:
	@rm -f $(OBJS_COLLEEN) $(OBJS_GRACE) $(OBJS_SULLY)
	@echo "[C++] Clean \033[33mok\033[0m"

fclean: clean
	@rm -f $(NAME_COLLEEN) $(NAME_GRACE) $(NAME_SULLY)
	@echo "[C++] Fclean \033[33mok\033[0m"

re: fclean all

.PHONY: all clean fclean re
