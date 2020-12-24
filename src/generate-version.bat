@for /f "delims=" %%a in ('git symbolic-ref HEAD') do @set myvar=%%a
@for /f "delims=" %%b in ('git log "--pretty=format:%%h" -1') do @set myvar2=%%b
@REM the 11 is derived from generate-version.sh "cut -b 12" by subtracting 1 
@REM @echo %myvar:~11%-%myvar2%
@echo edge-54d22942
@copy /b  version.cpp+,, >NUL:

