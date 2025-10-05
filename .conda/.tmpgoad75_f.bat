@ECHO OFF
@SET PYTHONIOENCODING=utf-8
@SET PYTHONUTF8=1
@FOR /F "tokens=2 delims=:." %%A in ('chcp') do for %%B in (%%A) do set "_CONDA_OLD_CHCP=%%B"
@chcp 65001 > NUL
@CALL "C:\Users\sirui\miniforge3\condabin\conda.bat" activate "c:\Users\sirui\Desktop\NASA\2025-nasa-space-app-challenge\.conda"
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@c:\Users\sirui\Desktop\NASA\2025-nasa-space-app-challenge\.conda\python.exe -Wi -m compileall -q -l -i C:\Users\sirui\AppData\Local\Temp\tmpwa6ssuly -j 0
@IF %ERRORLEVEL% NEQ 0 EXIT /b %ERRORLEVEL%
@chcp %_CONDA_OLD_CHCP%>NUL
