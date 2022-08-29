CC = clang++ $(CCFLAGS)

CCFLAGS  = -std=gnu++2b -O2
CCFLAGS += -g -Wall
CCFLAGS += -Wno-unused-parameter
CCFLAGS += $(LDFLAGS)

LDFLAGS  = -lm
LDFLAGS += $(INCFLAGS)

INCFLAGS  = -Iinclude
INCFLAGS += -Iutils/include

APP = bin/debug/main

all: build run

build:
	$(CC) -c src/*.cpp
	$(CC) -c utils/src/*.cpp
	$(CC) -o $(APP) *.o

run:
	$(APP)

clean:
	rm -r -f *.o
	rm -r -f bin/debug/*.exe
	rm -r -f $(APP)