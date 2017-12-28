#!/bin/sh

stepID=$1

if [ "$stepID" = "cv" ]; then
   rm cv.out
   rm cv.log
   rm cv.aux
   pdflatex cv.tex
   rm cv.out
   rm cv.log
   rm cv.aux
fi

if [ "$stepID" = "main" ]; then
   rm iu_thesis_main.lo*
   rm iu_thesis_main.b*
   rm iu_thesis_main.toc
   rm iu_thesis_main.aux
   pdflatex iu_thesis_main
   bibtex iu_thesis_main
   pdflatex iu_thesis_main
   pdflatex iu_thesis_main
   rm iu_thesis_main.lo*
   rm iu_thesis_main.b*
   rm iu_thesis_main.toc
   rm iu_thesis_main.aux
fi
