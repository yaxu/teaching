#!/bin/bash
pandoc -t beamer --standalone processing1.md -o processing1.tex -V theme:default -V colortheme:rose -V fonttheme:serif
echo "\pdfminorversion=4" > foo.tex
cat processing1.tex >> foo.tex
pdflatex foo.tex && cp foo.pdf processing1.pdf
