@echo off
echo ========================================
echo Smile Hair Clinic - Terminal'den Calistirma
echo ========================================
echo.

cd /d "%~dp0"

echo Bagli cihazlar kontrol ediliyor...
flutter devices

echo.
echo ========================================
echo Uygulama calistiriliyor...
echo.
echo Komutlar:
echo   r - Hot reload (hizli yenileme)
echo   R - Hot restart (tam yeniden baslatma)
echo   q - Cikis
echo ========================================
echo.

flutter run

pause

