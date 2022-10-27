CC = gcc
CFLAGS = -c -std=c99 -g
LDFLAGS = -g
SRC = $(wildcard src/*.c)
HDR = $(wildcard include/*.h)
OBJ = $(SRC:.c=.o)
EXE = cshark

all: $(SRC) $(OBJ) $(EXE)

$(EXE): $(OBJ)
	$(CC) $(LDFLAGS) $^ -o $@

%.o : %.c $(HDR)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm src/*.o $(EXE)



