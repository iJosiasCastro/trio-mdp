@echo off
echo ========================================
echo   SERVIDOR LOCAL - TRIO MDP
echo ========================================
echo.
echo Iniciando servidor local...
echo.

REM Intentar con Python 3
python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Usando Python 3...
    echo.
    echo Abre tu navegador en: http://localhost:8000
    echo.
    echo Presiona Ctrl+C para detener el servidor
    echo.
    python -m http.server 8000
    goto :end
)

REM Intentar con Node.js usando servidor simple
where node >nul 2>&1
if %errorlevel% equ 0 (
    echo Usando Node.js con servidor incluido...
    echo.
    node server.js
    goto :end
)

echo.
echo ========================================
echo   ERROR: No se encontro Python ni Node.js
echo ========================================
echo.
echo SOLUCIONES:
echo.
echo 1. Instala Python 3 desde: https://www.python.org/downloads/
echo    (Marca la casilla "Add Python to PATH" durante la instalacion)
echo.
echo 2. O instala Node.js desde: https://nodejs.org/
echo.
echo 3. O usa la extension "Web Server for Chrome":
echo    https://chrome.google.com/webstore/detail/web-server-for-chrome/ofhbbkphhbklhfoeikjpcbhemlocgigb
echo.
pause
goto :end

:end

