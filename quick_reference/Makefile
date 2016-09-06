# The MakeFile for the User Manual. This file is not to be called directly.
# Call the makefile in the parent directory with quick_reference as the argument.

CC=pdflatex
CFLAGS=
FILES=*.aux *.log *.out *.toc

all: quick_reference

quick_reference: quick_reference.tex
	@$(CC) $(CFLAGS) quick_reference.tex
	@$(CC) $(CFLAGS) quick_reference.tex
	@$(CC) $(CFLAGS) quick_reference.tex

clean:
	rm -f $(FILES)
