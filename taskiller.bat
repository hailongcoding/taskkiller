@echo off
call :banner
call :engine

:engine
color 0
set /p filename=Enter the filename to taskkill (with extension): 
tasklist | findstr " %filename% " >nul
if not errorlevel 1 (
taskkill /F /FI "IMAGENAME eq %filename%" /T
color a
) else (
echo [err]%filename% not found!
color c
)
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
