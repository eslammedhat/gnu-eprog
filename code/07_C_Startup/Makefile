ROOT = ..

LDFLAGS= -nostdlib

all:

include ${ROOT}/Makedefs

all: sum_an_array.bin

sum_an_array.elf: sum_an_array.o
sum_an_array.elf: startup.o

.PHONY: all