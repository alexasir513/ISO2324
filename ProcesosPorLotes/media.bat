@echo off
REM Script que hace la media de 3 parametros de entrada
REM
REM Alejandro Nevado Maldonado
REM 14-11-2023

set /A media=(%1 + %2 + %3)/3
echo %media%