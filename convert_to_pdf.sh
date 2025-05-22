#!/bin/bash

# Install pandoc if not already installed
if ! command -v pandoc &> /dev/null; then
    echo "Installing pandoc..."
    if [[ "$OSTYPE" == "darwin"* ]]; then
        brew install pandoc
    elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
        sudo apt-get install pandoc
    else
        echo "Please install pandoc manually from https://pandoc.org/installing.html"
        exit 1
    fi
fi

# Convert markdown to PDF
pandoc Fitness-Tracker-Standard-Report.md \
    -o Fitness-Tracker-Report.pdf \
    --pdf-engine=xelatex \
    -V geometry:"margin=1in" \
    -V fontsize=12pt \
    -V colorlinks=true \
    -V linkcolor=blue \
    -V toccolor=blue \
    --toc \
    --toc-depth=2 \
    -V papersize=a4 \
    -V documentclass=report \
    -V classoption=oneside \
    -V mainfont="Times New Roman" \
    --template=template.tex

echo "PDF generated successfully: Fitness-Tracker-Report.pdf" 