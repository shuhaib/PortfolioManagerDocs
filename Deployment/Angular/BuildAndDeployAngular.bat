@echo off
echo  _-------------------------------_
echo -_ Angular Build and Deploy Tool _-
echo    ------------------------------
echo     -------made by @run---------
echo    ------------------------------
echo.
set PROPERTY_FILE=%cd%\Build.properties
set ROOT_LOCATION=%cd%
echo Reading configurations from property file = "%PROPERTY_FILE%"

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
			set TOMCAT_ROOT=%%b
		)
		IF "%%a"=="ANGULAR_ROOT" (
			set ANGULAR_ROOT=%%b
		)
		IF "%%a"=="ANGULAR_PROJECT_NAME" (
			set ANGULAR_PROJECT_NAME=%%b
		)
		IF "%%a"=="TOM_CAT_PORT" (
			set TOM_CAT_PORT=%%b
		)
		IF "%%a"=="ANGULAR_BASE_HREF" (
			set ANGULAR_BASE_HREF=%%b
		)
	)
)


IF NOT "%TOMCAT_ROOT%" == "" (
	echo Tomcat Location = "%TOMCAT_ROOT%"
) ELSE (
	echo Tomcat loaction not found, cannot proceed!
)
IF NOT "%ANGULAR_ROOT%" == "" (
	echo Angular Location = "%ANGULAR_ROOT%"
)  ELSE (
	echo Angular loaction not found, cannot proceed!
)
IF NOT "%TOM_CAT_PORT%" == "" (
	echo Tomcat Port = "%TOM_CAT_PORT%"
)
echo Finished reading all configurations
echo.

echo Stopping already running Tomcat instances, if any in port : "%TOM_CAT_PORT%"
for /f "skip=1 tokens=5" %%a in ('netstat -aon ^| find "%TOM_CAT_PORT%" ^| find "LISTENING"') do taskkill /F /PID %%a
echo Stopped all Tomcat instances
echo.

echo Removing the currently deployed project from "%TOMCAT_ROOT%\webapps"
cd /d %TOMCAT_ROOT%\webapps
if exist %ANGULAR_PROJECT_NAME% rmdir %ANGULAR_PROJECT_NAME% /q /s
echo Removed already deployed project
echo.

cd /d %ROOT_LOCATION%
echo Initializing Angular build process
echo Starting the build process
call BuildAngular.bat
echo Build process completed
cd /d %ANGULAR_ROOT%\%ANGULAR_PROJECT_NAME%\dist
echo %cd%
xcopy %ANGULAR_PROJECT_NAME% %TOMCAT_ROOT%\webapps\%ANGULAR_PROJECT_NAME%\ /s /e /h
echo Project deployed in Tomcat
echo.

echo Staring Tomcat
cd /d %TOMCAT_ROOT%\bin
call startup.bat
echo Build and Deploy process completed
echo.