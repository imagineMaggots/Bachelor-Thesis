#!/bin/bash
for mdfile in *.md; do
	pandoc $mdfile -s -o ${mdfile/.md/}.tex
	pandoc $mdfile -o ${mdfile/.md/}.pdf
done