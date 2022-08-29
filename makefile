# print arbitrary variables with $ make print-<name>
print-%  : ; @echo $* = $($*)

# retruns the operative system
UNAME_S = $(shell uname -s)

# compiler collection = clang compiler
CC = clang++ $(CCFLAGS)

LD = ld

# feel free to change this
CCFLAGS  = -std=gnu++2b -O2
CCFLAGS += -g -Wall
CCFLAGS += -Wextra -Wpedantic -Wno-c99-extensions
CCFLAGS += -Wno-unused-parameter
CCFLAGS += $(LDFLAGS)

# linker flags
LDFLAGS  = -lm
LDFLAGS += $(INCFLAGS)

INCFLAGS  = -Iinclude
INCFLAGS += -Iutils/include

APP = bin/debug/main

# up to this

all: build run

# builds the project
build:
	$(CC) -c src/*.cpp
	$(CC) -c utils/src/*.cpp
	$(LD) -o $(APP) *.o

# runs the project
run:
	$(APP)

# clean using make -j -i clean
clean:
	rm -r -f *.o
	rm -r -f bin/debug/*.exe
	rm -r -f $(APP)
