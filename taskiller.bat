@echo off
cls
call :banner
call :list
pause
call :engine

:list
echo Avaiable application :
tasklist

:engine
echo.
color 0
set /p filename=Enter the filename to taskkill (with extension , Capital (if have) and avaiable in the list above): 
tasklist | findstr " %filename% " >nul
if not errorlevel 1 (
taskkill /F /FI "IMAGENAME eq %filename%" /T
color a
echo [ i ] Process complete.
) else (
echo [ ! ]%filename% not found!
echo [ i ] Process aborted
color c
)
echo.
pause

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
