@echo off
cd /d "%~dp0"
where py >nul 2>nul
if %errorlevel%==0 (
  start "" http://127.0.0.1:8765
  py app.py
) else (
  where python >nul 2>nul
  if %errorlevel%==0 (
    start "" http://127.0.0.1:8765
    python app.py
  ) else (
    echo No se encontro Python. Instala Python 3 para iniciar CONTROL-WIFI.
    pause
  )
)
