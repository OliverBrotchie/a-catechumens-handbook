#!/bin/sh

file=$1
filename="${file%.*}"

echo $1 | entr sh -c "latexindent -s -o $file $file &&
  aspell --home-dir=. --personal=$filename.dict -t -c $file && 
  pdflatex -jobname=$filename.step $file &&
  mv $filename.step.pdf $filename.pdf";