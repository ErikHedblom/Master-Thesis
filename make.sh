#!/bin/sh
mkdir -p dotGenerated
cd Dot
for f in *; do
	dot -Teps "$f" -o "../dotGenerated/${f%.dot}.eps"
	dot -Tsvg "$f" -o "../dotGenerated/${f%.dot}.svg"
done
cd ..

pdflatex report
biber report
pdflatex report
pdflatex report