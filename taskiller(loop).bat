@echo off
cls
call :banner
call :list
call :engine

:list
echo Avaiable application :
tasklist

:engine
echo.
color 7
set /p filename=Enter the filename to taskkill (with extension): 
tasklist | findstr " %filename% " >nul
if not errorlevel 1 (
taskkill /F /FI "IMAGENAME eq %filename%" /T
color a
) else (
echo [ERR]%filename% not found!
echo %filename% | findstr /C:"info" >nul
    if errorlevel 1 (
        echo [ERR] no extension found.
        color a 
)
color c
)
echo.
pause
cls
color 7
call :banner
call :list
call :engine

:banner
echo =========== //\\      ==========   ll  //   ll  //=========  ++         ++         =========  ll=====
echo     //     //  \\    ((            ll //    ll //     ll     ++         ++         ll         ll    ))
echo    //     //    \\    ==========   ll//     ll//      ll     ++         ++         ll         ll=====
echo   //     //      \\            ))  ll\\     ll\\      ll     ++         ++         ll=======  ll\\
echo  //     //        \\  ==========   ll \\    ll \\     ll     ++         ++         ll         ll \\
echo //     //==========\\              ll  \\   ll  \\=========  +++++++++  +++++++++  ll=======  ll  \\
echo                                  made by hailongcoding
echo.
echo.
