#!/bin/sh
echo $1 | entr sh -c "latexindent -s -o $1 $1 && aspell --home-dir=. --personal=$1.dict -t -c $1 && pdflatex $1"