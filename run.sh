#!/bin/bash
set -e
cd /app
latexmk -xelatex /app/main.tex
