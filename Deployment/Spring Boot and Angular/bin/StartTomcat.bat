@echo off
cd /d ..
set PROPERTY_FILE=%cd%\Build.properties
set File=%PROPERTY_FILE%
set /a count=0
SETLOCAL enabledelayedexpansion
for /F "tokens=* delims=" %%a in ('Type "%File%"') do (
    Set /a count+=1
    Set "output[!count!]=%%a"     
)

For /L %%i in (1,1,%Count%) Do (	
	for /f "tokens=1,2 delims==" %%a in ("!output[%%i]!") do (
		IF "%%a"=="SPRING_BOOT_ROOT" (
			set SPRING_BOOT_ROOT=%%b
		)
	)
)

echo Staring Tomcat
cd /d %TOMCAT_ROOT%\bin
call startup.bat
echo Build and Deploy process completed
echo.