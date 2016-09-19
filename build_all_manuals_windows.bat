SETLOCAL

cd .\user_manual
CALL :build
cd ..


cd .\quick_reference
CALL :build
cd ..


:build
SET STR="*"

pdflatex "%STR%.tex"
bibtex "%STR%.aux"
pdflatex "%STR%.tex"
pdflatex "%STR%.tex"

EXIT \B 0
