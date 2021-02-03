@echo off

set /p input=Search string: 
echo Searching for %input%
echo.
findstr /m /l /s %input% *.js >> results.txt
findstr /m /l /s %input% *.scss >> results.txt
findstr /m /l /s %input% *.txt >> results.txt
findstr /m /l /s %input% *.css >> results.txt

echo Found the input string at the following locations:
for /F "tokens=*" %%A in (results.txt) do echo %%A

del results.txt
pause