SETLOCAL

cd .\user_manual
CALL :build
cd ..


cd .\quick_references

cd .\cat_download
CALL :build
cd ..

cd .\cummins
CALL :build
cd ..

cd .\ddec_download
CALL :build
cd ..

cd ..


:build
SET STR="*"

pdflatex "%STR%.tex"
bibtex "%STR%.aux"
pdflatex "%STR%.tex"
pdflatex "%STR%.tex"

EXIT \B 0
