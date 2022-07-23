@echo off
echo You are about to compile boot_sect.asm into boot_sect.bin
setlocal
:PROMPT
SET /P AREYOUSURE=Are you sure (Y/[N])?
IF /I "%AREYOUSURE%" NEQ "Y" GOTO END
del /p *.txt
echo ... rest of file ...


:END
endlocal