#!/bin/sh
mkdir -p dotGenerated
cd Dot
for f in *; do
	dot -Teps "$f" -o "../dotGenerated/${f%.dot}.eps"
done
cd ..

pdflatex report
biber report
pdflatex report
pdflatex report