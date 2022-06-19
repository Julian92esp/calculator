REM ________________________________________________________________________________________INTRODUCCION

@echo off
cls
title CALCULADORA
echo Hola, pulsa cualquier tecla para continuar...
pause >nul
echo.
set /p n=Como te llamas? 
echo.
set /p a=Tu apellido? 
cls
echo -----------------------------------------------------

REM ________________________________________________________________________________________CABECERA

:cabecera
title MENU
echo.
echo Esta es la calculadora de %n% %a%    	        	
echo.
echo -----------------------------------------------------
echo. 
echo [+] Sumar        -   {1}
echo [-] Restar       -   {2}
echo [*] Multiplicar  -   {3}
echo [+] Dividir      -   {4} 
echo [X] Salir        -   {5}
echo.
echo -----------------------------------------------------
echo. 
set /p operador= Introduce el numero de la operacion a realizar: 
if %operador%==1 goto :suma
if %operador%==2 goto :resta
if %operador%==3 goto :multiplicar
if %operador%==4 goto :dividir
if %operador%==5 exit else goto :error

REM ________________________________________________________________________________________ERROR

:error
cls
title ERROR
echo ERROR 37
echo.
echo Los valores introducidos deben ser del 1 al 5
echo.
echo Pulse cualquier tecla para volver al menu...
pause >null
cls
goto :cabecera

REM ________________________________________________________________________________________SUMAR

:suma
cls
title SUMA
set /p numero1=Introduce el primer sumando: 
echo.
set /p numero2=Introduce el segundo sumando: 
set /a resultado=%numero1% + %numero2%
cls
echo --------------------------------------------
echo El resultado de %numero1% + %numero2% = %resultado%
echo --------------------------------------------
echo.
echo Pulsa cualquier tecla para volver al menu...
pause >null
cls
goto cabecera

REM ________________________________________________________________________________________RESTAR

:resta
cls
title RESTA
set /p numero1=Introduce el minuendo a restar: 
echo.
set /p numero2=Introduce el sustraendo a restar: 
set /a resultado=%numero1% - %numero2%
cls
echo --------------------------------------------
echo El resultado de %numero1% - %numero2% = %resultado%
echo --------------------------------------------
echo.
echo Pulsa cualquier tecla para volver al menu...
pause >null
cls
goto cabecera

REM ________________________________________________________________________________________MULTIPLICAR

:multiplicar
cls
title MULTIPLICACION
set /p numero1=Introduce el primer factor a multiplicar: 
echo.
set /p numero2=Introduce el segundo factor a multiplicar: 
set /a resultado=%numero1%*%numero2%
cls
echo --------------------------------------------
echo El resultado de %numero1% x %numero2% = %resultado%
echo --------------------------------------------
echo.
echo Pulsa cualquier tecla para volver al menu...
pause >null
cls
goto cabecera

REM ________________________________________________________________________________________DIVIDIR

:dividir
cls
title DIVISION
set /p numero1=Introduce el dividendo: 
echo.
set /p numero2=Introduce el divisor: 
set /a resultado=%numero1% / %numero2%
cls
echo --------------------------------------------
echo El resultado de %numero1% / %numero2% = %resultado%
echo --------------------------------------------
echo.
echo Pulsa cualquier tecla para volver al menu...
pause >null
cls
goto cabecera

REM ________________________________________________________________________________________FIN
