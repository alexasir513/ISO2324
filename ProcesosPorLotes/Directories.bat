@echo off
REM Script que muestra un menú para ejecutar distintas opciones
REM
REM Alejandro Nevado Maldonado
REM 17-11-2023

:menu
echo Menú
echo 1 para crear un fichero nombrado
echo 2 muestra el árbol de los directorios del usuario
echo 3 muestra archivos .txt
echo 4 crea directorios
echo 5 copia contenido en Escritorio

set /p opcion=Selecciona 1, 2, 3, 4 o 5 y pulsa enter

if %option%==1 goto FICHERO
if %option%==2 goto ARBOL
if %option%==3 goto TXT
if %option%==4 goto DIRECTORIOS
if %option%==5 goto ESCRITORIO

:FICHERO 
type nul %USERPROFILE% > pedido.txt
goto menu

:ARBOL
tree %USERPROFILE%
goto menu

:TXT
dir %USERPROFILE%\*.TXTgoto menu

:DIRECTORIOS
mkdir alfredoff
mkdir marinapg
mkdir ramonam
goto menu

:ESCRITORIO
xcopy %USERPROFILE% %USERPROFILE%\Desktop
goto menu
