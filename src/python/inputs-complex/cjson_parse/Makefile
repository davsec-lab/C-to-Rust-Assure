CC = bash ./clang-wrapper.sh
CFLAGS = -Wall -O3
SRC = cjson_parse.c
OUT = cjson_parse_c

all: $(OUT)

# clang-wrapper.sh compiles $(OUT) and also emits cjson_parse.i + cjson_parse.ll next
# to the source -- the .i is what the perfassure pipeline ingests.
$(OUT): $(SRC) cjson.h clang-wrapper.sh
	$(CC) $(CFLAGS) -o $(OUT) $(SRC) -lm

clean:
	rm -f $(OUT) cjson_parse.i cjson_parse.ll

.PHONY: all clean
