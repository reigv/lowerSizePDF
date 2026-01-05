@echo off
REM PDF Compressing using Ghostscript

set INPUT=input.pdf
set OUTPUT=compressed.pdf

gswin64c -sDEVICE=pdfwrite ^
-dCompatibilityLevel=1.4 ^
-dDownsampleColorImages=true ^
-dDownsampleGrayImages=true ^
-dDownsampleMonoImages=true ^
-dColorImageResolution=120 ^
-dGrayImageResolution=120 ^
-dMonoImageResolution=300 ^
-dColorImageDownsampleType=/Bicubic ^
-dGrayImageDownsampleType=/Bicubic ^
-dNOPAUSE -dBATCH ^
-sOutputFile=%OUTPUT% %INPUT%

echo Compression complete!
pause
