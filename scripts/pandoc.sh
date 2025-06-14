#!/bin/bash
cd ..
for f in *\ *; do mv -v "$f" "${f// /_}"; done
files="$(find -type f -name "*.md")"

echo ""
echo ""
echo ""

for file in "$files"; do
	echo "$file"
	echo ""
	#pandoc "$file" -s -o ${file/.md/}.tex
	#pandoc "$file" -s -o ${file/.md/}.pdf
	#echo "pandoc-compiled $file"; echo ""
done