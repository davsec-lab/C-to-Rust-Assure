CC = bash ./clang-wrapper.sh
CFLAGS = -Wall -O3
SRC = skiplist.c
OUT = skiplist_c

all: $(OUT)

# clang-wrapper.sh compiles to $(OUT) and also emits skiplist.i and skiplist.ll
# next to skiplist.c, which is what the perfassure pipeline ingests.
$(OUT): $(SRC) clang-wrapper.sh
	$(CC) $(CFLAGS) -o $(OUT) $(SRC) -lm

clean:
	rm -f $(OUT) skiplist.i skiplist.ll

.PHONY: all clean
