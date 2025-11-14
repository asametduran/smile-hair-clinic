@echo off
echo ========================================
echo Smile Hair Clinic - Uygulama Calistirma
echo ========================================
echo.

cd /d "%~dp0"

echo Bagli cihazlar kontrol ediliyor...
flutter devices

echo.
echo Uygulama calistiriliyor...
echo (Cikmak icin 'q' tusuna basin)
echo.

flutter run

pause

