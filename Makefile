# Makefile para compilar boot_sect.asm

# Diretórios
SRC_DIR := src
BIN_DIR := bin

# Arquivos de entrada e saída
SRC := $(SRC_DIR)/boot_sect.asm
OUT := $(BIN_DIR)/boot_sect.bin

# Comando de compilação
NASM := nasm
NASM_FLAGS := -f bin

all: $(OUT)

$(OUT): $(SRC)
	$(NASM) $(NASM_FLAGS) $< -o $@

clean:
	rm -f $(OUT)

.PHONY: all clean

run:
	qemu-system-x86_64 bin/boot_sect.bin
