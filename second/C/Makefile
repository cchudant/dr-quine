CC=gcc
CFLAGS=-Wall -Wextra -Werror
OBJECTS=Grace.o
NAME=Grace
LD=gcc
LDFLAGS=-Wall -Wextra -Werror

.PHONY: all clean fclean re

%.o: %.c
	$(CC) $(CFLAGS) -o $@ -c $<

all: $(NAME)

$(NAME): $(OBJECTS)
	$(LD) $(LDFLAGS) -o $(NAME) $(OBJECTS)

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all