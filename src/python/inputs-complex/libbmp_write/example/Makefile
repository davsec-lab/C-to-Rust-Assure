CC = ./clang-wrapper.sh
CFLAGS = -Wall -Wextra -O2
NAME = checkerboard
SOURCES = ../libbmp.c checkerboard.c
OBJECTS = $(SOURCES:.c=.o)

all: $(NAME)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJECTS)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJECTS) $(LIBS)

clean:
	rm -f $(NAME) $(OBJECTS)
