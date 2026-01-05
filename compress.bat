@echo off
REM PDF Compressing using Ghostscript

set INPUT=input.pdf
set OUTPUT=compressed.pdf

gswin64c -sDEVICE=pdfwrite ^
-dCompatibilityLevel=1.4 ^
-dPDFSETTINGS=/screen ^
-dNOPAUSE -dBATCH ^
-sOutputFile=%OUTPUT% %INPUT%

echo Compression complete!
pause
