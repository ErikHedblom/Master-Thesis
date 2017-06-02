#!/bin/sh
dot -Teps Dot/DotAccess.dot -o EPS-graphs/DotAccess.eps
dot -Teps Dot/Parent.dot -o EPS-graphs/Parent.eps
dot -Teps Dot/Component.dot -o EPS-graphs/Component.eps
dot -Teps Dot/BrokenAccess.dot -o EPS-graphs/BrokenAccess.eps
dot -Teps Dot/GraphExamples.dot -o EPS-graphs/GraphExamples.eps

pdflatex report
bibtex report
pdflatex report
pdflatex report