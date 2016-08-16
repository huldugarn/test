# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rle-corr <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/16 16:22:45 by rle-corr          #+#    #+#              #
#    Updated: 2016/08/16 16:22:47 by rle-corr         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

EXENAME=fdf
CMPNAME=gcc
CMPFLAG=-Wall -Werror -Wextra
MLXFLAG=-L Libft/ -lft \
		-lmlx -framework OpenGL -framework Appkit
SRCNAME=fdf_1_main.c\
		fdf_2_auxiliary_input_parsing.c\
		fdf_3_auxiliary_mlx_hooks.c\
		fdf_4_auxiliary_interactions.c\
		fdf_5_auxiliary_calculations.c\
		fdf_6_auxiliary_drawing.c
OBJNAME=$(SRCNAME:.c=.o)

all: $(EXENAME)

$(EXENAME): linkage

linkage: objectify
	$(CMPNAME) -o $(EXENAME) $(OBJNAME) $(CMPFLAG) $(MLXFLAG)

objectify:
	$(CMPNAME) -c $(SRCNAME) fdf_0_header.h

clean:
	rm -f $(OBJNAME)

fclean: clean
	rm -f $(EXENAME)

re: fclean all
