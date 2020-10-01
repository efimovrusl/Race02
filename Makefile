.PHONY: clean all
.SILENT:
 
PROJECT := Race02
SOURCE := src/*.c
BINARY := way_home
FLAGS := -std=c11 -Wall -Wextra -Werror -Wpedantic

all: clean $(PROJECT)
	echo "Done (='.'=)"
	echo "──────▄▀▄─────▄▀▄"
	echo "─────▄█░░▀▀▀▀▀░░█▄"
	echo "─▄▄──█░░░░░░░░░░░█──▄▄"
	echo "█▄▄█─█░░▀░░┬░░▀░░█─█▄▄█"

$(PROJECT):
	clang $(FLAGS) $(SOURCE) -o $(BINARY)
	echo "Compiling $(PROJECT)..."

f:
	clang $(SOURCE) -o $(BINARY)
	echo "Compiling without any flags..."

uninstall: clean

reinstall: clean $(PROJECT)

clean:
	rm -f $(BINARY)
	echo "Cleaning..."
