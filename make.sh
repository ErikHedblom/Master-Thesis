#!/bin/sh
mkdir -p dotGenerated
cd Dot
for f in *; do
	dot -Teps "$f" -o "../dotGenerated/${f%.dot}.eps"
done
cd ..

pdflatex report
bibtex report
pdflatex report
pdflatex report