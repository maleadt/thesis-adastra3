#!/bin/sh

echo * Building XML
latexml html.tex > html.xml

echo * Rendering HTML
[[ -d html ]] && rm -rf html
mkdir html
latexmlpost --format=html --destination=html/index.html --novalidate html.xml

