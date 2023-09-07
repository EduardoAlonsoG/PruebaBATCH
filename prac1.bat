@echo off

:start
    cls
    echo Select an option:
    echo.
    echo 1.- Sum
    echo 2.- Rest
    echo 3.- Multiplication
    echo 4.- Divide
    echo 5.- Exit

    set /p option= "Elije el numero de la opcion que quieres "

    if "%option%" == "1" goto sum
    if "%option%" == "2" goto rest
    if "%option%" == "3" goto multiply
    if "%option%" == "4" goto divide
    if "%option%" == "5" goto finish


    rem Mensaje de error
    echo. no es valido
    echo.
    pause
    echo.
    goto start
    EXIT /B

:sum
    echo.
    cls
    echo --suma--
    set /p number1="Primer numero: " 
    set /p number2="Segundo numero: " 
    set /a sum= %number1% + %number2%
    echo The result is: %sum%
    pause
    goto start
    EXIT /B

:rest
    echo.
    cls
    echo --resta--
    set /p number11="Primer numero: " 
    set /p number22="Segundo numero: " 
    set /a rest= %number11% - %number22%
    echo The result is: %rest%
    pause
    goto start
    EXIT /B

:multiply
    echo.
    cls
    echo --Multiplicacion--
    set /p number11="Primer numero " 
    set /p number22="Segundo numero " 
    set /a mult= %number11% * %number22%
    echo The result is: %mult%
    pause
    goto start
    EXIT /B

:divide
    echo.
    cls
    echo --division--
    set /p number111="Primer numero " 
    set /p number222="Segundo numero " 
    set /a div= %number111% / %number222%
    echo The result is: %div%
    pause
    goto start
    EXIT /B

:continue
    cls 
    goto start
    EXIT /B

:finish:
    pause
    Exit