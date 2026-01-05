@echo off
REM PDF Compressing using Ghostsript

set INPUT=input.pdf
set OUTPUT=compressed.pdf

gswin64 -sDEVICE=pdfwrite ^
-dCompatibilityLevel=1.4 ^
-dPDFSETTINGS=/ebook ^
-dNOPAUSE -dBATCH ^
-sOutputfile=%OUTPUT% %INPUT%

echo Compression complete!
pause
