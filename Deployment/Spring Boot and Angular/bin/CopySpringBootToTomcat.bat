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
		IF "%%a"=="TOM_CAT_ROOT" (
			set TOM_CAT_ROOT=%%b
		)
		IF "%%a"=="SPRING_BOOT_ARTIFACT_ID" (
			set SPRING_BOOT_ARTIFACT_ID=%%b
		)
		IF "%%a"=="SPRING_BOOT_PACKAGING" (
			set SPRING_BOOT_PACKAGING=%%b
		)
		IF "%%a"=="SPRING_BOOT_ROOT" (
			set SPRING_BOOT_ROOT=%%b
		)
	)
)

set SPRING_BOOT_PROJECT=%SPRING_BOOT_ARTIFACT_ID%
set SPRING_BOOT_DEPLOYABLE=%SPRING_BOOT_PROJECT%.%SPRING_BOOT_PACKAGING%
echo Removing currently deployed Spring Boot project
cd /d %TOM_CAT_ROOT%\webapps
if exist %SPRING_BOOT_PROJECT% rmdir %SPRING_BOOT_PROJECT% /q /s
if exist %SPRING_BOOT_DEPLOYABLE% del /f %SPRING_BOOT_DEPLOYABLE%
echo Removed already deployed Spring Boot project
echo.

cd /d %SPRING_BOOT_ROOT%/target
xcopy %SPRING_BOOT_DEPLOYABLE% %TOM_CAT_ROOT%\webapps
echo Spring Boot project deployed in Tomcat
echo.