NAME = libft.a

SRC =	./ft_atoi.c 		\
 		./ft_bzero.c		\
		./ft_calloc.c		\
 		./ft_isalnum.c 		\
 		./ft_isalpha.c 		\
 		./ft_isascii.c 		\
 		./ft_isdigit.c 		\
		./ft_isprint.c 		\
		./ft_itoa.c 		\
 		./ft_memchr.c 		\
 		./ft_memcmp.c 		\
 		./ft_memcpy.c 		\
 		./ft_memmove.c 		\
 		./ft_memset.c 		\
 		./ft_putchar_fd.c 	\
 		./ft_putendl_fd.c 	\
 		./ft_putnbr_fd.c 	\
 		./ft_putstr_fd.c 	\
		./ft_split.c		\
		./ft_strchr.c		\
		./ft_strdup.c		\
		./ft_striteri.c		\
		./ft_strjoin.c		\
		./ft_strlcat.c		\
		./ft_strlcpy.c		\
		./ft_strlen.c		\
		./ft_strmapi.c		\
		./ft_strncmp.c		\
		./ft_strnstr.c		\
		./ft_strrchr.c		\
		./ft_strtrim.c		\
		./ft_substr.c		\
		./ft_tolower.c		\
		./ft_toupper.c		\

SRC_BONUS =		./ft_lstnew.c			\
				./ft_lstadd_front.c 	\
				./ft_lstsize.c 			\
				./ft_lstlast.c 			\
				./ft_lstadd_back.c 		\
				./ft_lstdelone.c		\
				./ft_lstclear.c			\
				./ft_lstiter.c			\
				./ft_lstmap.c			\

OBJ = $(SRC:.c=.o)                                                                                                                                                                                                 
OBJ_BONUS = $(SRC_BONUS:.c=.o)                                                                                                                                                                                     
                                                                                                                                                                                                                   
HEADER = libft.h                                                                                                                                                                                                   
                                                                                                                                                                                                                   
FLAGS = -Wall -Wextra -Werror                                                                                                                                                                                      
                                                                                                                                                                                                                   
all: $(NAME)                                                                                                                                                                                                       
                                                                                                                                                                                                                   
$(NAME):		$(SRC)                                                                                                                                                                                          
		cc -c $(FLAGS) $(HEADER) $(SRC)                                                                                                                                                                           
		ar rcs $(NAME) $(OBJ)                                                                                                                                                                                      

clean:                                                                                                                                                                                                             
		rm -rf $(OBJ)                                                                                                                                                                                              
                                                                                                                                                                                                                   
fclean: clean                                                                                                                                                                                                      
		rm -rf $(NAME) 

bonus:	$(NAME) $(SRC_BONUS)
		cc -c $(FLAGS) $(HEADER) $(SRC_BONUS)                                                                                                                                                                           
		ar rs $(NAME) $(OBJ_BONUS)   
                                                                                                                                                                                                                   
re: fclean all                                                                                                                                                                                                     
                                                                                                                                                                                                                   
so:                                                                                                                                                                                                                
		$(CC) -nostartfiles -fPIC $(CFLAGS) $(SRC) $(SRC_BONUS)                                                                                                                                                    
		cc -nostartfiles -shared -o libft.so $(OBJ) $(OBJ_BONUS)
