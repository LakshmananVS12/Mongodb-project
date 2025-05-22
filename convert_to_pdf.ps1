# Check if pandoc is installed
if (-not (Get-Command pandoc -ErrorAction SilentlyContinue)) {
    Write-Host "Pandoc is not installed. Please install it from https://github.com/jgm/pandoc/releases/latest"
    exit 1
}

# Check if xelatex is installed
if (-not (Get-Command xelatex -ErrorAction SilentlyContinue)) {
    Write-Host "XeLaTeX is not installed. Please install MiKTeX from https://miktex.org/download"
    exit 1
}

# Convert markdown to PDF
pandoc Fitness-Tracker-Standard-Report.md `
    -o Fitness-Tracker-Report.pdf `
    --pdf-engine=xelatex `
    -V geometry:"margin=1in" `
    -V fontsize=12pt `
    -V colorlinks=true `
    -V linkcolor=blue `
    -V toccolor=blue `
    --toc `
    --toc-depth=2 `
    -V papersize=a4 `
    -V documentclass=report `
    -V classoption=oneside `
    -V mainfont="Times New Roman" `
    --template=template.tex

if ($?) {
    Write-Host "PDF generated successfully: Fitness-Tracker-Report.pdf"
} else {
    Write-Host "Error generating PDF. Please check the error messages above."
} 