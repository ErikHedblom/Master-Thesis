#!/bin/sh
dot -Teps Dot/DotAccess.dot -o EPS-graphs/DotAccess.eps
dot -Teps Dot/Parent.dot -o EPS-graphs/Parent.eps
dot -Teps Dot/Component.dot -o EPS-graphs/Component.eps

pdflatex report
bibtex report
pdflatex report
pdflatex report