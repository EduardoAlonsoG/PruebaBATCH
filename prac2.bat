@echo off

set contador=0
set suma=0
set maximo=-100000
set minimo=100000

:ingresarNumero
if %contador% == 10 (
    goto calcularPromedio
)
set /p numero=Ingresa un numero: 
if %numero% lss %minimo% (
    set /a minimo=numero
)
if %numero% gtr %maximo% (
    set /a maximo=numero
)
set /a contador+=1
set /a suma+=numero
goto ingresarNumero

:calcularPromedio
set /a promedio=suma/contador
echo El promedio de los numeros ingresados es: %promedio%
echo El numero minimo es: %minimo%
echo El numero maximo es: %maximo%


exit