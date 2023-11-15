@echo off
REM Script que crea archivos usando condicionales y etiquetas
REM
REM Alejandro Nevado Maldonado
REM 15-11-2023

echo Pulsa 1 para crear un archivo.txt
echo Pulsa 2 para crear un archivo.bat

set /p opt=
set /p nombre= "Introduce el nombre del archivo "

if %opt% EQU 1 goto txt
if %opt% EQU 2 goto bat

:txt
type nul > %nombre%.txt
exit

:bat
type nul > %nombre%.bat
exit