# ===== Compilateur =====
COBC := gcobol

# ===== Dossiers =====
SRC_DIR := Src
BIN_DIR := Bin
COPY_DIR := Copy

COBCFLAGS := -I "$(COPY_DIR)"

# ===== Nom du programme (sans .cbl) =====
NAME ?= main

# ===== Recherche du source =====
# Cherche NAME.cbl n'importe où dans Src/
SRC := $(shell find "$(SRC_DIR)" -type f -name "$(NAME).cbl" -print -quit 2>/dev/null)
OUT := $(BIN_DIR)/$(NAME).exe

.PHONY: all run clean list

all:
	@if [ -z "$(SRC)" ]; then \
		echo "❌ Erreur : $(SRC_DIR)/$(NAME).cbl introuvable (même en sous-dossiers)"; \
		exit 1; \
	fi
	mkdir -p $(BIN_DIR)
	$(COBC) $(COBCFLAGS) "$(SRC)" -o "$(OUT)"



run: all
	"./$(OUT)"

clean:
	rm -f $(BIN_DIR)/*.exe

list:
	@echo "📄 Programmes COBOL disponibles :"
	@find "$(SRC_DIR)" -type f -name "*.cbl" -printf "%f\n" 2>/dev/null | sed 's/\.cbl$$//' | sort


