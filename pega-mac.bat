getmac > temp.txt

@echo off

SET strLinha=
SET /a iCount = 0

for /F "TOKENS=1 DELIMS= " %%i in (temp.txt) do CALL :linha %%i

echo %strLinha% > mac_pc.txt
goto :END

::++++++++++++++++++++++
:linha
::++++++++++++++++++++++
if %iCount% NEQ 0 (
   SET strLinha=%strLinha% %1
)
SET /a iCount += 1

goto :EOF

::++++++++++++++++++++++
:END
::++++++++++++++++++++++

del -f temp.txt
start notepad "mac_pc.txt"
