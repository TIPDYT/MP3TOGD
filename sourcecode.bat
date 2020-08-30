@echo off
goto a

:a
cls
if NOT EXIST %localappdata%\GeometryDash goto fail1
if NOT EXIST takeme.mp3 goto fail2
cls
set /p songid=Please type the MP3's song ID:
if EXIST %localappdata%\GeometryDash\%songid%.mp3 goto repl
echo Thanks!Working...
ping localhost -n 3 >nul
move "takeme.mp3" "%localappdata%\GeometryDash"
cls
cd %localappdata%\GeometryDash\
cls
ren takeme.mp3 %songid%.mp3
cls
echo DONE!Created by TIPDYT!Subscribe to my
echo youtube channel PLZ!
echo.
echo It should work now!
echo.
echo If you have any bugs visit:
echo.
echo Press any key to exit...
pause>nul
exit

:repl
echo.
echo The song with this ID(%songid%) exists!
echo.
echo The song will be replaced with the current
echo MP3!
echo.
echo Close the program if you don't want
echo.
pause
echo.
echo Thanks!Working...
ping localhost -n 5 >nul
move "takeme.mp3" "%localappdata%\GeometryDash"
cd %localappdata%\GeometryDash
cls
del %songid%.mp3
cls
ren takeme.mp3 %songid%.mp3
cls
echo DONE!Created by TIPDYT!Subscribe to my
echo youtube channel PLZ!
echo.
echo It should work now!
echo.
echo Press any key to exit...
pause>nul
exit

:fail1
cls
cd resources
start error1.vbs
exit

:fail2
cls
cd resources
start error2.vbs
exit
