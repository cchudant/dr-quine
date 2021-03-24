ASM=nasm
ASMFLAGS=-f elf64 -g
OBJECTS=Colleen.o
NAME=Colleen
LD=gcc
LDFLAGS=-no-pie

.PHONY: all clean fclean re

%.o: %.s
	$(ASM) $(ASMFLAGS) -o $@ $<

all: $(NAME)

$(NAME): $(OBJECTS)
	$(LD) $(LDFLAGS) -o $(NAME) $(OBJECTS)

clean:
	rm -f $(OBJECTS)

fclean: clean
	rm -f $(NAME)

re: fclean all