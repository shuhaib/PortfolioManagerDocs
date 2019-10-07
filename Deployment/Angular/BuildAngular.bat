@echo off
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
		IF "%%a"=="ANGULAR_ROOT" (
			set ANGULAR_ROOT=%%b
		)
		IF "%%a"=="ANGULAR_PROJECT_NAME" (
			set ANGULAR_PROJECT_NAME=%%b
		)
		IF "%%a"=="ANGULAR_BASE_HREF" (
			set ANGULAR_BASE_HREF=%%b
		)
	)
)

cd %ANGULAR_ROOT%
cd %ANGULAR_PROJECT_NAME%
echo Now in %cd% directory
ng build --prod --base-href "%ANGULAR_BASE_HREF%"
echo.