CC = bash ./clang-wrapper.sh
CFLAGS = -Wall -O3
SRC = cjson_write.c
OUT = cjson_write_c

all: $(OUT)

# clang-wrapper.sh compiles $(OUT) and also emits cjson_write.i + cjson_write.ll next
# to the source -- the .i is what the perfassure pipeline ingests.
$(OUT): $(SRC) cjson.h clang-wrapper.sh
	$(CC) $(CFLAGS) -o $(OUT) $(SRC) -lm

clean:
	rm -f $(OUT) cjson_write.i cjson_write.ll

.PHONY: all clean
