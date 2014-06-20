@echo off

set "PATH=%~dp0\win32;%PATH%"
REM Variables for Visual Studio
if "%INCLUDE%" == "" (
	set "INCLUDE=%~dp0\include"
) else (
	set "INCLUDE=%~dp0\include;%INCLUDE%"
)
if "%LIB%" == "" (
	set "LIB=%~dp0\win32"
) else (
	set "LIB=%~dp0\win32;%LIB%"
)
REM Variables for MinGW
if "%CPATH%" == "" (
	set "CPATH=%~dp0\include"
) else (
	set "CPATH=%~dp0\include;%CPATH%"
)
if "%LIBRARY_PATH%" == "" (
	set "LIBRARY_PATH=%~dp0\win32"
) else (
	set "LIBRARY_PATH=%~dp0\win32;%LIBRARY_PATH%"
)
exit /B 0
