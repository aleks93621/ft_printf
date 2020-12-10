# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: xxxxxxxx <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/01/17 11:21:32 by xxxxxxxx          #+#    #+#              #
#    Updated: 2017/02/11 16:47:14 by xxxxxxxx         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

.PHONY: all clean fclean re

NAME = libftprintf.a

GCC = gcc

FLAGS = -Wall -Werror -Wextra

VERT=\033[32m
NORMAL=\033[0m
ROUGE=\x1b[31m

SRC_DOSS_PRTF = ./convs/
SRC_DOSS_LBFT = ./libft_fct/

SRCS_PRTF = $(addprefix $(SRC_DOSS_PRTF),$(SRC_NAME_PRTF))
SRCS_LBFT = $(addprefix $(SRC_DOSS_LBFT),$(SRC_NAME_LBFT))

OBJ_NAME_PRTF = $(SRC_NAME_PRTF:.c=.o)
OBJ_NAME_LBFT = $(SRC_NAME_LBFT:.c=.o)

SRC_NAME_PRTF = fct_princ.c ft_checker_nbr.c ft_checker_uint.c \
		   ft_printchar.c ft_printf.c \
		   ft_printhex.c ft_printnbr.c ft_printoct.c \
		   ft_printstr.c ft_printunsint.c ft_printvoid_hex.c \
		   ft_printwchar.c ft_printzero.c \
		   ft_print_space_plus_minus.c ft_print_space_plus_minusnorm.c \
		   ft_print_space_plus_minusv2.c ft_print_space_plus_minusnormv2.c \
		   ft_checker_x.c ft_checker_x_maj.c ft_checker_o.c \
		   affiche_hash_hex.c zero_hex.c zero_unsigned.c ft_print_isnoparam.c \
		   ft_printwstr.c ft_flaginit.c ft_printoctbis.c ft_print_binaire.c \
		   ft_checker_wstr.c ft_bonusn.c ft_checker_wchar.c \
		   ft_test_unic.c \

SRC_NAME_LBFT = ft_atoi.c ft_isalpha.c ft_itoa.c ft_itoa_hhuint.c \
				ft_itoa_hnbr.c ft_itoa_llnbr.c ft_itoa_lluint.c \
				ft_itoa_lnbr.c ft_itoa_luint.c ft_itoabase.c ft_itoabasemaj.c \
				ft_itoaunsigned.c \
				ft_memset.c ft_putchar.c ft_putchar_fd.c ft_putstr.c \
				ft_putstr_fd.c ft_putwstr.c ft_putwstr_fd.c ft_putwtchar.c \
				ft_putwtchar_fd.c ft_strdup.c ft_strlen.c ft_strnew.c \
				ft_strsub.c ft_itoa_hhnbr.c ft_itoa_huint.c ft_putstr_n.c \
				ft_strcmp.c ft_itoabaseh.c ft_itoabasehh.c ft_itoabasel.c \
				ft_itoabasemajh.c ft_itoabasemajhh.c \
				ft_itoabasemajl.c ft_strcpy.c ft_isparam.c ft_itoaoctalhh.c \
				ft_itoaoctalh.c ft_itoaoctalll.c ft_isconv.c ft_putstr_len.c \
				ft_putnwstr.c \

all: $(NAME)

$(NAME): $(OBJ)
	@$(GCC) $(FLAGS) -c $(SRCS_PRTF) $(SRCS_LBFT)
	@ar -rc $(NAME) $(OBJ_NAME_PRTF) $(OBJ_NAME_LBFT)
	@ranlib $(NAME)
	@echo "$(VERT)PRINTF : Compilation terminee.\t\t$(NORMAL)"

clean:
	@rm -rf $(OBJ_NAME_PRTF) $(OBJ_NAME_LBFT)
	@echo "$(ROUGE)PRINTF : Suppression des objets\t\t$(NORMAL)"

fclean: clean
	@rm -f $(NAME)
	@echo "$(ROUGE)PRINTF : Suppression du fichier--> libftprintf.a\t\t$(NORMAL)"

re: fclean all
