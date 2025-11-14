@echo off
echo ========================================
echo Smile Hair Clinic Backend Server
echo ========================================
echo.

cd /d "%~dp0"

echo MongoDB baglantisi kontrol ediliyor...
echo.

echo Server baslatiliyor...
echo API: http://localhost:3000/api
echo Health Check: http://localhost:3000/api/health
echo.
echo Durdurmak icin Ctrl+C basin
echo.

npm start

pause

