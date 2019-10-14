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

echo Initializing Spring Boot build process
echo Starting Spring Boot build process
cd /d %SPRING_BOOT_ROOT%
echo Now in "%cd%" directory
mvn clean install -Dmaven.test.skip=true
echo Spring Boot build process completed