call runcrud.bat
if "%ERRORLEVEL%" == "0" goto getTasks
echo.
echo runcrud error
goto fail

:getTasks
start http://localhost:8080/crud/v1/task/getTasks
if "%ERRORLEVEL%" == "0" goto end
echo.
echo browser open error
goto fail

:fail
echo.
echo There were errors

:end
echo.
echo Work is finished.