# The MakeFile for the User Manual. This file is not to be called directly.
# Call the makefile in the parent directory with user_manual as the argument.

CC=pdflatex
CFLAGS=
FILES=*.aux *.log *.out *.toc

all: user_manual

user_manual: user_manual.tex
	@$(CC) $(CFLAGS) user_manual.tex
	@$(CC) $(CFLAGS) user_manual.tex
	@$(CC) $(CFLAGS) user_manual.tex

clean:
	rm -f $(FILES)
