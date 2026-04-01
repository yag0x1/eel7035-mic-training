TOOLCHAIN_PATH = ../xpack-riscv-none-elf-gcc-13.2.0-2/bin/
CC = $(TOOLCHAIN_PATH)riscv-none-elf-gcc

TARGET = main.elf
CFLAGS = -O0 -g -march=rv32im -mabi=ilp32
# LDFLAGS = --specs=nosys.specs -nostdlib -static -e main (to compile without std library and optimizations)
LDFLAGS = -static

SRCS = main.c
OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $(TARGET) $(LDFLAGS)
	@echo "$(TARGET) ready to Ripes."

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

asm: $(SRCS)
	$(CC) $(CFLAGS) -S $(SRCS)
	@echo "Assembly ready"

asm_debug_info: $(SRCS)
	$(CC) -S -O0 -march=rv32imc -mabi=ilp32 -fno-asynchronous-unwind-tables -fno-ident $(SRCS)
	@echo "Assembly with debug ready"

clean:
	rm -f $(OBJS) $(TARGET) *.s
	@echo "Project cleaned"
